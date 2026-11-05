"""把某一册的 LaTeX 源码初步转换为 Typst，用于起步搭建 Typst 版。

用法（在仓库根目录执行）：

    python typst/tools/tex2typ.py 1            # 转换第 1 册全部章节
    python typst/tools/tex2typ.py 1 3 4        # 只转换第 1 册的第 3、4 章（preface 记作 0）

输出到 typst/math<n>/：preface.typ、ch1.typ……。转换结果还需要人工校对；
校对过的章节以 .typ 文件为准，不要再用本脚本覆盖（脚本默认拒绝覆盖已有文件，加 --force 才覆盖）。

流程：先用正则把 pandoc 不认识或转得不好的结构换成占位符，再调用
pandoc（加 filter.lua）把 LaTeX 转为 Typst，最后把占位符替换回 Typst 代码。
TikZ 插图不转换，只按章内出现顺序编号为 "章-序号"（如 "1-03"），
正文中写成 #fig("1-03")，图本身用 CeTZ 另画在 typst/math<n>/figs/ch<章>.typ 中。
"""

from __future__ import annotations

import argparse
import json
import re
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
FILTER = Path(__file__).with_name("filter.lua")

# pandoc 认得 \newcommand，先把导言区中正文用到的命令告诉它
MACROS = r"""
\newcommand{\E}{\mathbb{E}}
\newcommand{\EP}{\mathbb{E}^{\mathbb{P}}}
\newcommand{\EQ}{\mathbb{E}^{\mathbb{Q}}}
\newcommand{\dif}{\,\mathrm{d}}
\newcommand{\Var}{\mathrm{Var}}
\newcommand{\Cov}{\mathrm{Cov}}
\newcommand{\uwave}[1]{\underline{#1}}
"""


class Converter:
    def __init__(self, chapter: int):
        self.chapter = chapter
        self.slots: list[str] = []
        self.fig_count = 0

    # ---- 占位符 ----
    def slot(self, typst: str) -> str:
        """正文中的占位符，pandoc 会把它转成 #smallcaps[PHn]"""
        self.slots.append(typst)
        return r"\textsc{PH%d}" % (len(self.slots) - 1)

    def math_slot(self, typst: str) -> str:
        """公式中的占位符，pandoc 会把它转成 upright("PHMn")"""
        self.slots.append(typst)
        return r"\mathrm{PHM%d}" % (len(self.slots) - 1)

    # ---- 预处理 ----
    def preprocess(self, tex: str) -> str:
        tex = strip_comments(tex)
        # 换行 \\ 后紧跟公式（\\$F=$）：后面各步的正则会把 \$ 当成转义的美元符号，$ 的配对就乱了
        tex = re.sub(r"(?<!\\)\\\\\$", r"\\\\ $", tex)
        # 标签名中可能有 ( ) = | 空格等字符（如第六册的 fig:f(x)=|x^2-1|），Typst 的标签不能用，统一改写
        tex = re.sub(r"\\(label|ref)\{([^{}]*)\}", lambda m: "\\%s{%s}" % (m.group(1), safe_label(m.group(2))), tex)
        # \addtocounter{figure}{1}：跳过一个图号（第六册第五章，原书缺一幅图）
        tex = re.sub(r"\\addtocounter\{figure\}\{(-?\d+)\}",
                     lambda m: self.slot("#counter(figure.where(kind: image)).update(n => n + %s)" % m.group(1)), tex)
        tex = mark_lr_braces(tex)
        tex = self.replace_tikz(tex)
        # 单独的 \includegraphics[scale=s]{f}：pandoc 会套上带图号的 figure，LaTeX 版没有图号
        tex = re.sub(r"\\includegraphics\[scale=([\d.]+)\]\{([^}]*)\}",
                     lambda m: self.slot('#scale(%g%%, reflow: true, image("%s"))' % (float(m.group(1)) * 100, m.group(2))), tex)
        tex = re.sub(r"\\includegraphics\[width=([\d.]*)\\(?:line|text)width\]\{([^}]*)\}",
                     lambda m: self.slot('#image("%s", width: %g%%)' % (m.group(2), float(m.group(1) or 1) * 100)), tex)
        # \caption* 是不编号的图注，换成 subcap 环境（filter.lua 转为 #subcap）
        tex = replace_command(tex, "caption*", 1, lambda a: r"\begin{subcap}%s\end{subcap}" % a[0])
        tex = self.replace_figure_pairs(tex)
        # 没有 \caption 的 figure 在 LaTeX 中不编号；pandoc 会给它图号，所以改成居中的普通内容
        tex = re.sub(r"\\begin\{figure\}(?:\[[^\]]*\])?((?:(?!\\end\{figure\}).)*?)\\end\{figure\}",
                     lambda m: m.group(0) if r"\caption{" in m.group(1) else r"\begin{figcenter}%s\end{figcenter}" % m.group(1).replace(r"\centering", ""),
                     tex, flags=re.S)
        # pandoc 把显式的 [1.] 当作默认格式丢掉（嵌套时 LaTeX 仍印 1.），借本书未用的 [i)] 传过去，enum_at 中再换回
        tex = re.sub(r"\\begin\{enumerate\}\[1\.\]", r"\\begin{enumerate}[i)]", tex)
        tex = split_item_multicols(tex)
        tex = re.sub(r"\\staritem\b\s*", lambda m: r"\item " + self.slot("#staritem;"), tex)
        tex = re.sub(r"``(.*?)''", "“\\1”", tex, flags=re.S)  # TeX 的 ``…'' 引号
        # \x 是本书定义的 ×；但 \\x 是换行后接字母 x，不能替换
        tex = re.sub(r"(?<!\\)\\x(?![a-zA-Z])", r"\\times ", tex)
        tex = re.sub(r"\\oc(?![a-zA-Z])", "°C", tex)
        # pandoc 把长箭头转成了短箭头
        for name, sym in (("Longleftrightarrow", "arrow.l.r.double.long"), ("longleftrightarrow", "arrow.l.r.long"),
                          ("Longrightarrow", "arrow.r.double.long"), ("longrightarrow", "arrow.r.long"),
                          ("Longleftarrow", "arrow.l.double.long"), ("longleftarrow", "arrow.l.long")):
            tex = re.sub(r"\\%s(?![a-zA-Z])" % name, lambda m, s=sym: " " + self.math_slot(s) + " ", tex)
        tex = self.replace_big_delims(self.one_sided_lr(tex))
        # \displaystyle\lim（如分母中）：pandoc 丢掉 \displaystyle，下标就排到了右下角
        # \displaystyle\sum 等同理：求和号用大号，上下限在正上、正下方；积分号只放大
        big_ops = {"lim": "limits(lim)", "sum": "limits(display(sum))", "prod": "limits(display(product))",
                   "int": "display(integral)"}
        tex = re.sub(r"\\displaystyle\s*\\(lim|sum|prod|int)(?![a-zA-Z])\s*",
                     lambda m: self.math_slot(big_ops[m.group(1)]) + " ", tex)
        # pandoc 把 \geqslant、\leqslant 转成了普通的 ≥、≤
        for name, sym in (("geqslant", "gt.eq.slant"), ("leqslant", "lt.eq.slant")):
            tex = re.sub(r"\\%s(?![a-zA-Z])" % name, lambda m, s=sym: " " + self.math_slot(s) + " ", tex)
        # pifont 的带圈数字：\ding{172}–{181}、\ding{192}–{201} 都是 ①–⑩
        tex = re.sub(r"\\ding\{(\d+)\}", lambda m: chr(0x2460 + (int(m.group(1)) - 172) % 20)
                     if 172 <= int(m.group(1)) <= 181 or 192 <= int(m.group(1)) <= 201 else m.group(0), tex)
        # 第四册 (4.13) 的 \text{\textcircled{\scriptsize 1}} 等：换成 ①…⑳
        tex = re.sub(r"\\text\{\\textcircled\{(?:\\scriptsize\s*)?(\d+)\}\}|\\textcircled\{(?:\\scriptsize\s*)?(\d+)\}",
                     lambda m: chr(0x245F + int(m.group(1) or m.group(2))), tex)
        # 紧接着 array 的 \setlength{\arraycolsep}{X}：记在列格式前面（见 replace_arrays），其余的去掉
        tex = re.sub(r"\\setlength\{\\arraycolsep\}\{([\d.]+(?:pt|em))\}\s*\\begin\{array\}\{",
                     r"\\begin{array}{!\1!", tex)
        tex = re.sub(r"\\setlength\{\\arraycolsep\}\{[^}]*\}", "", tex)
        # array 列格式中的 *{n}{c}：pandoc 不认得，展开
        tex = re.sub(r"(\\begin\{array\}\{)((?:[^{}]|\{[^{}]*\})*)\}",
                     lambda m: m.group(1) + re.sub(r"\*\{(\d+)\}\{([^{}]*)\}", lambda k: k.group(2) * int(k.group(1)), m.group(2)) + "}", tex)
        tex = re.sub(r"\\vskip\s*[\d.]+\s*(ex|em|pt|mm|cm)", "", tex)
        # 行内改字号的 {\small 00}、{\Large ?}（pandoc 会丢掉字号）。如第三册“21{\small00} 表示两个有效数字”
        sizes = {"tiny": 0.5, "scriptsize": 0.7, "footnotesize": 0.8, "small": 0.9,
                 "large": 1.2, "Large": 1.44, "LARGE": 1.73}
        tex = re.sub(r"\{\\(%s)(?![a-zA-Z])\s*([^{}\n]*)\}" % "|".join(sizes),
                     lambda m: self.slot("#text(size: %gem)[%s]" % (sizes[m.group(1)], convert_fragments([m.group(2)])[0]))
                     if m.group(2).strip() and "\\begin" not in m.group(2) else m.group(0), tex)
        # \setcounter{subsubsection}{1} 等（正文中手写了“（一）”，后面的小节从（二）编起）
        levels = {"section": 2, "subsection": 3, "subsubsection": 4}
        tex = re.sub(r"\\setcounter\{(section|subsection|subsubsection)\}\{(\d+)\}%?",
                     lambda m: self.slot("#set-heading-counter(%d, %s)" % (levels[m.group(1)], m.group(2))), tex)
        # 选学的节、小节（编号左侧加“*”，见 template.typ 的 star-numbering）
        tex = re.sub(r"\\star(sub)?section\{((?:[^{}]|\{[^{}]*\})*)\}",
                     lambda m: "\n\n" + self.slot("#heading(level: %d, numbering: star-numbering)[%s]" % (
                         3 if m.group(1) else 2, convert_fragments([m.group(2)])[0])) + "\n\n", tex)
        # \section*：后面跟 \addcontentsline{toc}{subsection} 的（习题）以小节的缩进列入目录，否则不列入目录
        # 后面跟 \addcontentsline{toc}{section} 的（复习题）与“第X节”同级列入目录
        tex = re.sub(r"\\section\*\{([^}]*)\}\s*\\addcontentsline\{toc\}\{(sub)?section\}\{[^}]*\}",
                     lambda m: "\n\n" + self.slot("#heading(level: 2, numbering: none%s)[%s]" % (
                         ", supplement: [toc-sub]" if m.group(2) else ", outlined: true", m.group(1))) + "\n\n", tex)
        tex = re.sub(r"\\section\*\{([^}]*)\}(?!\s*\\addcontentsline)",
                     lambda m: "\n\n" + self.slot("#heading(level: 2, numbering: none, outlined: false)[%s]" % m.group(1)) + "\n\n", tex)
        tex = re.sub(r"\\addcontentsline\{[^}]*\}\{[^}]*\}\{[^}]*\}", "", tex)
        # 列表、居中环境之后不空行接着写的文字，LaTeX 不缩进（\@endpetrue）
        tex = re.sub(r"(\\end\{(?:enumerate|itemize|center|figcenter|flushright)\}[ \t]*\n)"
                     r"(?=[ \t]*([^\s\\%]|\\(?!begin|end|item|section|subsection|par\b|noindent|\[)))",
                     lambda m: m.group(1) + self.slot("#noindent;"), tex)
        # \paragraph{X}：LaTeX 中是接排在段首的粗体小标题，不编号、不进目录
        # （\@startsection 的缩进为 0，段前空约 3.25ex）
        tex = re.sub(r"\\paragraph\{([^}]*)\}\s*",
                     lambda m: "\n\n" + self.slot("#v(0.8em)") + "\n\n" + self.slot("#noindent;#strong[%s]#h(1em)" % m.group(1)), tex)
        # proof 是本书自定义的环境（只印“证明：”），换个名字，免得 pandoc 按 amsthm 加上 Proof. 和 ◻
        tex = re.sub(r"\\(begin|end)\{proof\}", r"\\\1{bookproof}", tex)
        # 多行环境末尾多余的 \\ 会让 pandoc 转错（LaTeX 中只是多一个空行）
        tex = re.sub(r"\\\\\s*(\\end\{(cases|array|aligned|align\*?|split|gathered|[pbvBV]?matrix)\})", r"\1", tex)
        tex = re.sub(r"\{\\rm\s+([^{}]*)\}", r"\\mathrm{\1}", tex)
        # 整个公式都是 \rm 的：$\rm II'$、$\rm cm^2$
        tex = re.sub(r"\$\\rm\s+([^$]*?)(['^][^$]*)?\$", lambda m: "$\\mathrm{%s}%s$" % (m.group(1), m.group(2) or ""), tex)
        tex = re.sub(r"\\polynomial\[reciprocal,\s*var=(\w)\]", r"\\poly[\1]", tex)
        tex = re.sub(r"\\polynomial\[reciprocal\]", r"\\poly", tex)
        tex = re.sub(r"\\poly\[(\w)\]", r"\\polyvar\1", tex)
        for var in "yz":
            tex = replace_command(tex, "polyvar" + var, 1, lambda a, v=var: expand_poly(a[0], v))
        tex = replace_command(tex, "poly", 1, lambda a: expand_poly(a[0]))
        tex = replace_command(tex, "wideparen", 1, self.wideparen)
        tex = replace_command(tex, "tfrac", 2, self.tfrac)
        tex = replace_command(tex, "intlongdivision", 2,
                              lambda a: self.slot("#intlongdiv(%s, %s)" % (a[0].strip(), a[1].strip())))
        # \longdivision[n]{2.00}{3}：小数竖式除法（第四册第七章）
        tex = re.sub(r"\\longdivision(?:\[(\d+)\])?\{([\d.]+)\}\{(\d+)\}",
                     lambda m: self.slot('#declongdiv("%s", %s, max-extra: %s)' % (m.group(2), m.group(3), m.group(1) or "2")), tex)
        tex = re.sub(r"\\polylongdiv\[style=(\w)\]", r"\\polylongdivstyle\1", tex)
        for style in "ABCD":
            tex = replace_command(tex, "polylongdivstyle" + style, 2,
                                  lambda a, s=style: self.slot(polylongdiv(a[0], a[1], s)))
        tex = replace_command(tex, "polylongdiv", 2, lambda a: self.slot(polylongdiv(a[0], a[1], "A")))
        tex = re.sub(r"\\left\\\{\s*\\begin\{array\}\{[^}]*\}(.*?)\\end\{array\}\s*\\right\.",
                     r"\\begin{cases}\1\\end{cases}", tex, flags=re.S)
        tex = self.replace_nested_cases(tex)
        tex = self.replace_arrays(tex)
        # equation 中 split 加 \tag：整组公式只有这一个标签（不编号），排在中间一行的右侧
        def split_tag(m: re.Match) -> str:
            body, tag = m.group(1), m.group(2)
            rows = [r for r in split_top(body, "\\\\") if r.strip()]
            rows[len(rows) // 2] += r"\tag{%s}" % tag
            return self.display(m, aligned_rows("\\\\".join(rows), numbered=False))
        tex = re.sub(r"\\begin\{equation\}\s*\\begin\{split\}(.*?)\\end\{split\}\s*\\tag\{([^}]*)\}\s*\\end\{equation\}",
                     split_tag, tex, flags=re.S)
        # numcases 要在 replace_tags 之前：其中的 \tag 代替该行的编号
        tex = self.replace_numcases(tex)
        tex = self.replace_tags(tex)
        tex = re.sub(r"\\begin\{align\}(.*?)\\end\{align\}",
                     lambda m: self.display(m, aligned_rows(m.group(1), numbered=True)), tex, flags=re.S)
        def equation(m: re.Match) -> str:
            body, lbl = take_label(m.group(1))
            arg = ", label: %s" % typst_label(lbl) if lbl else ""
            return self.slot("#numbered-eq($ %s $%s)" % (tex_math_to_typst(body), arg)) + self.noindent_after(m)
        tex = re.sub(r"\\begin\{equation\}(.*?)\\end\{equation\}", equation, tex, flags=re.S)
        # 例题开头的 \label：#example-label 记下例题编号
        tex = re.sub(r"(\\begin\{(?:star)?example\})\s*\\label\{([^}]*)\}",
                     lambda m: m.group(1) + self.slot("#example-label(%s)" % typst_label(m.group(2))), tex)
        # \ref{…}：所引对象的编号（公式的 \label 已在上面各环境中取出）
        tex = re.sub(r"\\ref\{([^}]*)\}", lambda m: self.slot("#ref-num(%s)" % typst_label(m.group(1))), tex)
        tex = self.replace_inline_envs(tex)
        tex = self.replace_text_spaces(tex)
        # 表格的行距（Typst 版的表格另有内边距，不需要）
        tex = re.sub(r"\\renewcommand\{\\arraystretch\}\{[\d.]+\}", "", tex)
        tex = self.replace_tabular(tex)
        # table 环境中的表格：pandoc 不认得已换成占位符的表格，图注会丢掉。改为 #figure(kind: table)
        def table_env(m: re.Match) -> str:
            cap = re.search(r"\\caption\{([^}]*)\}", m.group(1))
            body = re.sub(r"\\caption\{[^}]*\}|\\centering|\\label\{[^}]*\}", "", m.group(1)).strip()
            # 浮动体里的 \small：整个表格用小字号
            size = re.match(r"\\(small|footnotesize)(?![a-zA-Z])\s*", body)
            if size:
                body = body[size.end():]
            body = re.sub(r"\\textsc\{(PH\d+)\}", r"#smallcaps[\1]", body)
            if size:
                body = "#text(size: %s)[%s]" % ("0.9em" if size.group(1) == "small" else "0.8em", body)
            if not cap:
                # 没有 \caption 的 table：LaTeX 版不编号，只是居中
                return "\n\n" + self.slot("#align(center)[%s]" % body) + "\n\n"
            caption = convert_fragments([cap.group(1)])[0] if cap.group(1).strip() else ""
            return "\n\n" + self.slot("#figure(kind: table, caption: [%s], [%s])" % (caption, body)) + "\n\n"
        tex = re.sub(r"\\begin\{table\}(?:\[[^\]]*\])?(.*?)\\end\{table\}", table_env, tex, flags=re.S)
        # \resizebox{\textwidth}{!}{表格}：pandoc 会连内容一起丢掉。表格此时已是占位符，套上 fit-width
        tex = replace_command(tex, "resizebox", 3, lambda a: self.slot(
            "#fit-width[%s]" % re.sub(r"\\textsc\{(PH\d+)\}", r"#smallcaps[\1]", a[2].strip())))
        return tex

    def replace_text_spaces(self, tex: str) -> str:
        """正文（非公式）中的 \\quad、\\qquad、\\hspace 会被 pandoc 丢掉，改为 #h(…)"""
        math_envs = r"(equation|align|gather|multline|eqnarray|displaymath|math)\*?"
        out, i, depth_math = [], 0, 0
        n = len(tex)
        while i < n:
            # 公式不能跨段落：遇到空行就回到正文状态，免得前面某处计数出错一直错下去
            m = re.match(r"\n[ \t]*\n", tex[i:])
            if m:
                depth_math = 0
                out.append(m.group(0))
                i += m.end()
                continue
            if tex.startswith("\\$", i):
                out.append("\\$")
                i += 2
                continue
            m = re.match(r"\\begin\{%s\}" % math_envs, tex[i:])
            if m:
                depth_math += 1
                out.append(m.group(0))
                i += m.end()
                continue
            m = re.match(r"\\end\{%s\}" % math_envs, tex[i:])
            if m:
                depth_math -= 1
                out.append(m.group(0))
                i += m.end()
                continue
            if tex.startswith("\\[", i) or tex.startswith("\\(", i):
                depth_math += 1
                out.append(tex[i : i + 2])
                i += 2
                continue
            if tex.startswith("\\]", i) or tex.startswith("\\)", i):
                depth_math -= 1
                out.append(tex[i : i + 2])
                i += 2
                continue
            if tex[i] == "$":
                k = 2 if tex.startswith("$$", i) else 1  # $$…$$ 是一个整体
                depth_math = 1 - depth_math if depth_math in (0, 1) else depth_math
                out.append(tex[i : i + k])
                i += k
                continue
            if depth_math == 0:
                m = re.match(r"\\(qquad|quad)(?![a-zA-Z])\s*|\\hspace\*?\{([^}]*)\}", tex[i:])
                if m:
                    width = {"quad": "1em", "qquad": "2em"}.get(m.group(1) or "", None)
                    if width is None:
                        width = m.group(2).strip()
                    out.append(self.slot("#h(%s)" % width))
                    i += m.end()
                    continue
                # 正文中的 \text{…}（LaTeX 中照常排出）会被 pandoc 丢掉
                if re.match(r"\\text\{", tex[i:]):
                    arg, j = read_group(tex, i + 5)
                    out.append(arg)
                    i = j
                    continue
            out.append(tex[i])
            i += 1
        return "".join(out)

    def replace_tabular(self, tex: str) -> str:
        """tabular、longtable 自行转换：pandoc 会丢掉大部分 \\hline 和竖线（longtable 的 p{} 列宽也丢）"""
        # 单元格里用 \begin{tabular}{@{}l@{}}…\\…\end{tabular} 排成几行的：直接换成用 \newline 分行
        tex = re.sub(r"\\begin\{tabular\}\{@\{\}[lcr]@\{\}\}(.*?)\\end\{tabular\}",
                     lambda m: m.group(1).replace("\\\\", "\\newline "), tex, flags=re.S)
        # 其余的嵌套表格：从最后一个表格往前处理，内层的先换成占位符，外层按单元格拆分时就不会被拆坏
        # 并排的两个表格（\end{tabular}\qquad\begin{tabular}）：表格是块元素，要包进 box 才能排在同一行
        side_seps = set()
        def side_sep(m: re.Match) -> str:
            sep = m.group(1).strip()
            if sep.startswith("\\textsc"):   # \qquad 等已被 replace_text_spaces 换成了占位符
                s = sep
            else:
                sp = {"\\qquad": "2em", "\\quad": "1em"}.get(sep) or re.search(r"\{([^}]*)\}", sep).group(1)
                s = self.slot("#h(%s)" % sp)
            side_seps.add(s)
            return "\\end{tabular}" + s
        tex = re.sub(r"\\end\{tabular\}\s*(\\qquad|\\quad|\\hspace\*?\{[^}]*\}|\\textsc\{PH\d+\})\s*(?=\\begin\{tabular\})", side_sep, tex)
        # 也认 center 环境里不带花括号的 \small，以及 \setlength{\tabcolsep}{3pt}（第四册例 7.12 的表）
        pat = re.compile(r"(\{\\(small|footnotesize)\s*)?(?:\\(small|footnotesize)\s*)?"
                         r"(?:\\setlength\{\\tabcolsep\}\{([\d.]+)pt\}\s*)?\\begin\{(tabular|longtable)\}")
        while True:
            ms = list(pat.finditer(tex))
            if not ms:
                return tex
            m = ms[-1]
            out = [tex[: m.start()]]
            env = m.group(5)
            spec, j = read_group(tex, m.end())
            end = tex.index(r"\end{%s}" % env, j)
            body = tex[j:end]
            if env == "longtable":
                # 表头的重复部分（\endfirsthead 与 \endhead 之间）只要一份
                body = re.sub(r"\\endfirsthead.*?\\endhead", "", body, flags=re.S)
                body = re.sub(r"\\end(firsthead|head|foot|lastfoot)\b", "", body)
            typ = self.tabular(spec, body, colsep=float(m.group(4)) if m.group(4) else None)
            if m.group(3):
                typ = "#text(size: %s)[%s]" % ("0.9em" if m.group(3) == "small" else "0.8em", typ)
            # 与相邻的表格并排的
            after = end + len(r"\end{%s}" % env)
            if any(tex[after:].startswith(s) or tex[: m.start()].endswith(s) for s in side_seps):
                typ = "#box(%s)" % typ[1:]
            if env == "longtable":
                # 长表可以跨页（模板中表格默认不跨页）
                typ = "#block(breakable: true)[#show table: set block(breakable: true)\n%s]" % typ
            pos = end + len(r"\end{%s}" % env)
            if m.group(1):
                k = re.match(r"\s*\}", tex[pos:])
                if k:
                    # {\small \begin{longtable}…\end{longtable}}：整表用小字号
                    typ = "#text(size: %s)[%s]" % ("0.9em" if m.group(2) == "small" else "0.8em", typ)
                    pos += k.end()
                else:   # 花括号里还有别的内容：照原样留下 {\small
                    out.append(m.group(1))
            out.append(self.slot(typ))
            tex = "".join(out) + tex[pos:]

    def tabular(self, spec: str, body: str, colsep: float | None = None) -> str:
        cols, vlines = parse_colspec(spec)
        rows = split_top(body, "\\\\")
        items: list[str] = []
        cells: list[str] = []
        layout: list[tuple] = []  # ("hline", 参数) 或 ("cell", 序号, colspan, align)
        for r in rows:
            r = r.strip()
            while True:
                m = re.match(r"\\hline\s*|\\cline\{(\d+)-(\d+)\}\s*", r)
                if not m:
                    break
                if m.group(1):
                    layout.append(("hline", "start: %d, end: %d" % (int(m.group(1)) - 1, int(m.group(2)))))
                else:
                    layout.append(("hline", ""))
                r = r[m.end():].strip()
            if not r:
                continue
            width = 0
            for c in split_top(r, "&"):
                mc = re.match(r"\s*\\multicolumn\{(\d+)\}\s*", c)
                if mc:
                    # 列格式可能带嵌套的花括号，如 {p{0.62\textwidth}|}
                    spec, j = read_group(c, mc.end())
                    while j < len(c) and c[j].isspace():
                        j += 1
                    content, _ = read_group(c, j)
                    al = parse_colspec(spec)[0]
                    layout.append(("cell", len(cells), int(mc.group(1)), al[0][0] if al else "center"))
                    cells.append(content)
                    width += int(mc.group(1))
                else:
                    layout.append(("cell", len(cells), 1, None))
                    cells.append(c)
                    width += 1
            # 只填了前几格的行补上空格，否则 Typst 会把下一行的内容接着排进来
            for _ in range(len(cols) - width):
                layout.append(("cell", len(cells), 1, None))
                cells.append("")
        converted = convert_fragments(cells)
        for v in vlines:
            items.append("table.vline(x: %d)," % v)
        for item in layout:
            if item[0] == "hline":
                items.append("table.hline(%s)," % item[1])
            else:
                _, k, span, al = item
                content = "[%s]" % converted[k]
                if span > 1 or al:
                    items.append("table.cell(colspan: %d%s)%s," % (span, ", align: " + al if al else "", content))
                else:
                    items.append(content + ",")
        # p{宽度} 是内容宽度，LaTeX 另在两侧各加 \tabcolsep（6pt）；Typst 的列宽含内边距
        sep = 6 if colsep is None else colsep
        widths = ", ".join(w if w == "auto" else "%s + %gpt" % (w, 2 * sep) for _, w in cols)
        # p{} 列在 LaTeX 中顶端对齐，其余列垂直居中
        aligns = ", ".join(a + (" + horizon" if w == "auto" else " + top") for a, w in cols)
        inset = "" if colsep is None else "\n  inset: (x: %gpt, y: 5pt)," % colsep
        return "#table(\n  columns: (%s,),\n  align: (%s,),%s\n  %s\n)" % (widths, aligns, inset, "\n  ".join(items))

    def replace_figure_pairs(self, tex: str) -> str:
        """figure 中用两个 minipage 并排、各带 \\caption 的两幅图：pandoc 会合成一幅图、一个图号。
        改为并排的两个 #figure，各占一个图号"""
        def repl(m: re.Match) -> str:
            parts = re.findall(r"\\begin\{minipage\}(?:\[[^\]]*\])?\{([\d.]*)\\(?:text|line)width\}(.*?)\\end\{minipage\}", m.group(0), flags=re.S)
            caps = [re.search(r"\\caption\{([^}]*)\}", p) for _, p in parts]
            bodies = [re.sub(r"\\caption\{[^}]*\}|\\centering|\\label\{[^}]*\}|\\(?:h|v)space\*?\{[^}]*\}", "", p).strip() for _, p in parts]
            conv = convert_fragments(bodies + [c.group(1) if c else "" for c in caps])
            labels = [re.search(r"\\label\{([^}]*)\}", p) for _, p in parts]
            figs = []
            for k, cap in enumerate(caps):
                body, caption = conv[k], conv[len(caps) + k]
                f = "figure([%s], caption: [%s])" % (body, caption) if cap else "[%s]" % body
                if cap and labels[k]:   # 分图的 \label：给这个 figure 加标签，供 ref-num 引用
                    f = "[#%s#%s]" % (f, typst_label(labels[k].group(1)))
                figs.append(f)
            widths = ", ".join("%g%%" % (float(w or 1) * 100) for w, _ in parts)
            # 整组不跨页（否则图与下面的“第 n 题”可能分在两页）
            grid = "block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (%s,), column-gutter: 1em, align: center + bottom, %s))" % (
                widths, ", ".join(figs))
            # minipage 之外还有 \caption：整组图共用一个编号图注
            outer = re.sub(r"\\begin\{minipage\}.*?\\end\{minipage\}", "", m.group(0), flags=re.S)
            oc = re.search(r"\\caption\{([^}]*)\}", outer)
            # minipage 之外的 \caption*{第8题}（已换成 subcap 环境）：整组图下面不编号的图注
            osub = re.search(r"\\begin\{subcap\}(.*?)\\end\{subcap\}", outer, flags=re.S)
            if osub:
                grid = "stack(%s, subcap[%s])" % (grid, convert_fragments([osub.group(1).strip()])[0])
            if oc:
                cap = convert_fragments([oc.group(1)])[0] if oc.group(1).strip() else ""
                return "\n\n" + self.slot("#figure(kind: image, %s, caption: [%s])" % (grid, cap)) + "\n\n"
            return "\n\n" + self.slot("#align(center, %s)" % grid) + "\n\n"
        return re.sub(r"\\begin\{figure\}(?:\[[^\]]*\])?(?:(?!\\end\{figure\}).)*?\\begin\{minipage\}.*?\\end\{figure\}",
                      repl, tex, flags=re.S)

    def replace_tikz(self, tex: str) -> str:
        sizes = {"small": 9 / 10.5, "large": 12 / 10.5, "Large": 14.4 / 10.5, "LARGE": 17.28 / 10.5}
        def repl(m: re.Match) -> str:
            self.fig_count += 1
            ref = '#fig("%s-%02d")' % (self.chapter, self.fig_count)
            if m.group(1):   # \begin{center}\Large 中的图：节点文字随之放大
                return "\\begin{center}" + self.slot("#text(size: %.4gem, %s)" % (sizes[m.group(1)], ref[1:]))
            return self.slot(ref)
        tex = re.sub(r"(?:\\begin\{center\}\s*\\(small|large|Large|LARGE)\s*)?\\begin\{tikzpicture\}.*?\\end\{tikzpicture\}",
                     repl, tex, flags=re.S)
        # circuitikz 电路图：另行编号（同 tikzref.py），手工画在 figs/ch<章>.typ 中
        circuits = iter(range(1, 1000))
        return re.sub(r"\\begin\{circuitikz\}.*?\\end\{circuitikz\}",
                      lambda m: self.slot('#fig("%s-c%d")' % (self.chapter, next(circuits))), tex, flags=re.S)

    def wideparen(self, args: list[str]) -> str:
        body = args[0].strip()
        if re.fullmatch(r"[A-Za-z]+", body):
            return self.math_slot("wideparen(%s)" % " ".join(body))
        # 带下标、撇号的弧（如 A_1A_2）
        return self.math_slot("wideparen(%s)" % tex_math_to_typst(body))

    def tfrac(self, args: list[str]) -> str:
        a, b = (tex_math_to_typst(x) for x in args)
        return self.math_slot("tfrac(%s, %s)" % (a, b))

    def replace_nested_cases(self, tex: str) -> str:
        """cases 与其他内容同在一个公式中、或 cases 里套 cases 时，pandoc 会转错。
        所以每个 cases 都单独转换（先内层后外层），在公式中留下占位符"""
        pat = re.compile(r"\\begin\{cases\}((?:(?!\\begin\{cases\}).)*?)\\end\{cases\}", re.S)
        while True:
            m = pat.search(tex)
            if not m:
                return tex
            tex = tex[: m.start()] + self.math_slot(cases_to_typst(m.group(1))) + tex[m.end():]

    def replace_arrays(self, tex: str) -> str:
        """array 环境：pandoc 把各列变成 Typst 的对齐点，列与列之间没有间隔。改为无括号的 mat"""
        pat = re.compile(r"\\begin\{array\}\{([^}]*)\}((?:(?!\\begin\{array\}).)*?)\\end\{array\}", re.S)
        while True:
            m = pat.search(tex)
            if not m:
                return tex
            spec = m.group(1)
            # 前面有 \setlength{\arraycolsep}{X} 的（预处理时记在列格式前面，写作 !X!）：列距为 2X
            gap = "1.5em"
            g = re.match(r"!([\d.]+)(pt|em)!", spec)
            if g:
                gap = "%g%s" % (2 * float(g.group(1)), g.group(2))
                spec = spec[g.end():]
            aligns = set(re.sub(r"[^lcr]", "", spec))
            align = {"l": "left", "r": "right"}.get(aligns.pop(), "center") if len(aligns) == 1 else "center"
            rows = [r for r in split_top(m.group(2), "\\\\") if r.strip() and r.strip() != r"\hline"]
            conv = ["; ".join([", ".join(tex_math_to_typst(c) if c.strip() else "" for c in split_top(r, "&"))]) for r in rows]
            typ = "mat(delim: #none, align: #%s, column-gap: #%s, %s)" % (align, gap, "; ".join(conv))
            tex = tex[: m.start()] + self.math_slot(typ) + tex[m.end():]

    def replace_tags(self, tex: str) -> str:
        """带 \\tag{X} 的独立公式（align*、\\[…\\]、$$…$$、equation*）改为 #numbered-align，
        说明“(X)”靠右排，与 LaTeX 一致。其余位置的 \\tag 改为隔开一段的说明"""
        def repl(m: re.Match) -> str:
            body = m.group(2) if m.group(2) is not None else (m.group(3) if m.group(3) is not None else m.group(4))
            if r"\tag" not in body:
                return m.group(0)
            return self.display(m, aligned_rows(body, numbered=False))
        tex = re.sub(r"\\begin\{(align\*|equation\*)\}(.*?)\\end\{\1\}|\\\[(.*?)\\\]|\$\$(.*?)\$\$", repl, tex, flags=re.S)
        return replace_command(tex, "tag", 1, lambda a: r"\qquad\text{(%s)}" % a[0])

    def noindent_after(self, m: re.Match) -> str:
        """独立公式环境之后不空行、直接接着写文字时，LaTeX 中这些文字不缩进；Typst 中块级的公式把段落断开，
        后面的文字成了新段落，需要 #noindent"""
        rest = m.string[m.end():]
        if re.match(r"[ \t]*(\n[ \t]*)?([^\s\\%]|\\(?!begin|end|item|section|subsection|par\b|noindent|\[))", rest) \
                and not re.match(r"[ \t]*\n[ \t]*\n", rest):
            return self.slot("#noindent;")
        return ""

    def display(self, m: re.Match, typst: str) -> str:
        """块级的公式占位：前后空行，必要时下一段开头加 #noindent"""
        return "\n\n" + self.slot(typst) + "\n\n" + self.noindent_after(m)

    @staticmethod
    def one_sided_lr(tex: str) -> str:
        """\\left[ … \\right. 与 \\left. … \\right]（多行公式中跨行的一对括号，各行只放大一侧）：pandoc 转成普通括号。
        Typst 的 lr 要成对，这里按这一段里有没有分式换成 \\Big 或 \\big"""
        toks = list(re.finditer(r"\\(left|right)\s*(\\\{|\\\}|\\[a-zA-Z]+|.)", tex))
        stack, reps = [], []
        for t in toks:
            if t.group(1) == "left":
                stack.append(t)
            elif stack:
                o = stack.pop()
                # 里面有 array、aligned 等环境的（\left\{\begin{array}…\right. 是方程组）不动
                if (o.group(2) == ".") != (t.group(2) == ".") and "\\begin{" not in tex[o.end():t.start()]:
                    size = "Big" if re.search(r"\\[dt]?frac", tex[o.end():t.start()]) else "big"
                    for tok, side in ((o, "l"), (t, "r")):
                        reps.append((tok.start(), tok.end(), "" if tok.group(2) == "." else "\\%s%s%s " % (size, side, tok.group(2))))
        for s, e, r in sorted(reps, reverse=True):
            tex = tex[:s] + r + tex[e:]
        return tex

    def replace_big_delims(self, tex: str) -> str:
        """\\big( \\Big| \\Bigg\\{ 等固定大小的定界符 → stretch(…, size: …)。
        pandoc 写成 #scale(…)[$\\($]：缩放不改变占位，两侧还多出空格，竖线、括号的大小也不配"""
        sizes = {"big": 1.2, "Big": 1.8, "bigg": 2.4, "Bigg": 3.0}
        delims = {"(": r"\(", ")": r"\)", "[": r"\[", "]": r"\]", r"\{": r"\{", r"\}": r"\}",
                  "|": "|", r"\vert": "|", r"\|": "‖", r"\Vert": "‖", "/": "slash",
                  r"\langle": "angle.l", r"\rangle": "angle.r", ".": None}
        def repl(m: re.Match) -> str:
            size, side, d = sizes[m.group(1)], m.group(2), m.group(3)
            sym = delims[d]
            if sym is None:
                return ""
            if side == "m":
                cls = "relation"
            elif side == "l" or d in ("(", "[", r"\{", r"\langle"):
                cls = "opening"
            elif side == "r" or d in (")", "]", r"\}", r"\rangle"):
                cls = "closing"
            else:
                cls = "normal"
            return " " + self.math_slot('class("%s", stretch(%s, size: #%gem))' % (cls, sym, size)) + " "
        return re.sub(r"\\(big|Big|bigg|Bigg)([lrm]?)(?![a-zA-Z])\s*"
                      r"(\\[{}|]|\\[vV]ert(?![a-zA-Z])|\\[lr]angle(?![a-zA-Z])|[()\[\]|/.])", repl, tex)

    def replace_numcases(self, tex: str) -> str:
        def repl(m: re.Match) -> str:
            # 方程组的名称，如 {(\rm I)}、{(\text{II})}
            name = re.sub(r"\\rm\s+([^{}()\s]+)", r"\\mathrm{\1}", m.group(1))
            lhs = tex_math_to_typst(name) if name.strip() else ""
            rows, tags = [], []
            for r in re.split(r"\\\\", m.group(2)):
                if not r.strip():
                    continue
                t = []
                r = replace_command(r, "tag", 1, lambda a: t.append(a[0]) or "")
                rows.append(take_label(r.replace("&", " ")))
                tags.append(t[0] if t else None)
            parts = ["$%s$" % lhs] + ["$%s$" % tex_math_to_typst(r) for r, _ in rows]
            if any(lb for _, lb in rows):
                parts.append("labels: (%s,)" % ", ".join(typst_label(lb) if lb else "none" for _, lb in rows))
            if any(tags):
                parts.append("tags: (%s,)" % ", ".join("[%s]" % convert_fragments([t])[0] if t else "none" for t in tags))
            return self.display(m, "#numcases(%s)" % ", ".join(parts))
        return re.sub(r"\\begin\{numcases\}\{((?:[^{}]|\{[^{}]*\})*)\}(.*?)\\end\{numcases\}", repl, tex, flags=re.S)

    def replace_inline_envs(self, tex: str) -> str:
        """行内公式里的 cases、array 等多行结构，pandoc 的 Typst 输出有误，改为单独转换"""
        def repl(m: re.Match) -> str:
            body = m.group(1)
            if r"\begin{" not in body:
                return m.group(0)
            # 公式占位符（而不是正文占位符）：pandoc 仍把它当作公式，filter.lua 才会在它与汉字之间加间距
            return "$%s$" % self.math_slot(tex_math_to_typst(body))
        return re.sub(r"(?<![\\$])\$([^$]+?)\$", repl, tex, flags=re.S)

    # ---- 后处理 ----
    def postprocess(self, typ: str) -> str:
        # 占位符里可能还套着占位符，反复替换到没有为止
        while True:
            new = re.sub(r'upright\(\s*"?P\s*H\s*M\s*(\d+)"?\s*\)', lambda m: self.slots[int(m.group(1))], typ)
            # \mathop{\mathrm{PHMn}}^{…}：pandoc 写成 "PHMn"^(…)，上标在 LaTeX 中排在正上方
            new = re.sub(r'"PHM(\d+)"', lambda m: "limits(%s)" % self.slots[int(m.group(1))], new)
            new = re.sub(r"#smallcaps\[PH(\d+)\]", lambda m: indent_like(new, m.start(), code_slot(self.slots[int(m.group(1))])), new)
            if new == typ:
                break
            typ = new
        left = re.findall(r"PHM?\s*\d+|P H M", typ)
        if left:
            raise RuntimeError("占位符没有替换干净：%s" % left[:5])
        # 同一行里并排的几张图（\includegraphics[scale=…] 之间只有空白）：reflow 的 scale 是块元素，包进 box 才能并排
        img = r'#scale\([\d.]+%, reflow: true, image\("[^"]*"\)\);?'
        typ = re.sub(r"%s(?:\s*(?:#h\([^()]*\);?)?\s*%s)+" % (img, img),
                     lambda m: re.sub(r'#scale\(([\d.]+%, reflow: true, image\("[^"]*"\))\);?', r"#box(scale(\1));", m.group(0)), typ)
        # 独立公式后紧跟带编号的公式（占位符，filter.lua 不知道它也是独立公式）：中间的 #noindent 会成为一个空段落
        typ = re.sub(r"(\$\s*)#noindent;\s*(?=#(?:numbered-eq|numbered-align|numcases)\()", r"\1", typ)
        typ = fix_math(typ)
        typ = fix_inline_math(typ)
        # \textbf 中的公式 LaTeX 不加粗；Typst 的 strong 给字重加一个增量，公式里也抵消不掉。
        # 所以把 #strong[…] 中的行内公式拆到 strong 外面
        def split_strong(m: re.Match) -> str:
            parts = re.split(r"(\$[^$]*\$)", m.group(1))
            out = "".join(p if p.startswith("$") else ("#strong[%s]" % p if p.strip() else p) for p in parts if p)
            # 拆出来的公式在最前面、前面紧挨着汉字时补一个空格（filter.lua 只给同一层的汉字与公式之间加空格）
            if out.startswith("$") and m.start() > 0 and re.match(r"[一-鿿）]", m.string[m.start() - 1]):
                out = " " + out
            return out
        typ = re.sub(r"#strong\[([^\[\]]*\$[^\[\]]*)\]", split_strong, typ)
        # 填空的横线：#underline 不给纯空白画线
        typ = re.sub(r"#underline\[#h\(([\d.]+em)\);?\]", r"#box(width: \1, stroke: (bottom: 0.4pt), outset: (bottom: 2pt))", typ)
        # pandoc 把 \square 转成很小的 □，\bigcirc 转成普通大小的 ○
        typ = typ.replace("square.stroked.tiny", "square.stroked")
        # \hfill：pandoc 写成无效的 #h(\fill)
        typ = typ.replace("#h(\\fill)", "#h(1fr)")
        # \bigstar：数学字体中的 star.filled 很小，改用正文的实心大星
        typ = typ.replace("$star.filled$", "★")
        typ = re.sub(r"(?<![\w.])circle\.stroked(?![\w.])", "circle.stroked.big", typ)
        # pandoc 把 \frac{360^\circ}{n} 写成 360 degree / n，Typst 会解析成 360 (degree / n)
        typ = re.sub(r"(?<![\w.)])(\d+(?:\.\d+)?) degree / ", r"(\1 degree) / ", typ)
        typ = fix_strings(typ)
        # \subsection* 等带星号的标题 LaTeX 不列入目录（\section* 加 \addcontentsline 的已在预处理中单独处理）
        typ = re.sub(r"#heading\(level: ([2-9]), numbering: none\)", r"#heading(level: \1, numbering: none, outlined: false)", typ)
        # 列表项以独立公式开头时，LaTeX 的题号单独占一行、公式排在下一行
        typ = re.sub(r"^( *)\+ \$ ", lambda m: "%s+ #h(0pt)\n%s  $ " % (m.group(1), m.group(1)), typ, flags=re.M)
        typ = re.sub(r'^( *)#set enum\(numbering: "([^"]*)", start: (\d+)\)', enum_at, typ, flags=re.M)
        typ = number_staritems(typ)
        typ = lead_nested_items(typ)
        typ = stick_stems(typ)
        typ = escape_after_calls(typ)
        typ = re.sub(r"\n{3,}", "\n\n", typ)
        return typ


LR_OPEN, LR_CLOSE = r"\mathrm{LBM}", r"\mathrm{RBM}"


def mark_lr_braces(tex: str) -> str:
    """成对的 \\left\\{ … \\right\\} 两端插入标记。pandoc 把它和普通的 \\{ \\} 都转成 { }，
    fix_inline_math 为了让 \\{ \\} 不随内容放大会把花括号都转义，靠这对标记认出要放大的"""
    toks = list(re.finditer(r"\\(left|right)\s*(\\\{|\\\}|\\[a-zA-Z]+|.)", tex))
    stack, marks = [], []
    for t in toks:
        if t.group(1) == "left":
            stack.append(t)
        elif stack:
            o = stack.pop()
            if o.group(2) == r"\{" and t.group(2) == r"\}":
                marks.append((o.end(), LR_OPEN))
                marks.append((t.start(), LR_CLOSE))
    for pos, s in sorted(marks, reverse=True):
        tex = tex[:pos] + s + tex[pos:]
    return tex


def fix_inline_math(typ: str) -> str:
    """逐个处理公式：
    - 花括号转义：Typst 会把成对的 { } 按内容自动放大，LaTeX 的 \\{ \\} 大小不变
    - 行内公式后紧接字母（如 $12$cm）时加 word joiner，免得在公式和单位之间断行（LaTeX 不会在这里断）"""
    out, pos = [], 0
    for m in re.finditer(r"(?<!\\)\$(?:[^$\\]|\\.)*?(?<!\\)\$", typ, flags=re.S):
        out.append(typ[pos : m.start()])
        # \left\{ … \right\}（见 mark_lr_braces）随内容放大，其余的花括号转义
        seg = re.sub(r"\{\s*upright\(L B M\)\s*", "\x01", m.group(0))
        seg = re.sub(r"\s*upright\(R B M\)\s*\}", "\x02", seg)
        seg = re.sub(r"(?<![\\#])([{}])", r"\\\1", seg)
        seg = seg.replace("\x01", "lr(\\{ ").replace("\x02", " \\})")
        out.append(seg)
        pos = m.end()
        if seg[1:2] != " " and re.match(r"[A-Za-z]", typ[pos : pos + 1]):
            out.append("⁠")
        # 公式后紧跟的中文标点（；，。等）不能挪到下一行行首（公式套了 box 后，Typst 允许在这里断行）
        elif re.match(r"[，。；：、）！？”．』」]", typ[pos : pos + 1]):
            out.append("⁠")
    out.append(typ[pos:])
    return "".join(out)


def escape_after_calls(typ: str) -> str:
    """#strong[…] 后紧跟 . ( [ 时，Typst 会当作取字段或继续传参，需要转义"""
    out = []
    in_math = False
    i = 0
    while i < len(typ):
        ch = typ[i]
        if ch == "\\":
            out.append(typ[i : i + 2])
            i += 2
            continue
        if ch == "$":
            in_math = not in_math
        out.append(ch)
        nxt = typ[i + 1 : i + 3]
        # “#blk[标题][”这种行尾的 ][ 是 filter.lua 有意生成的第二个参数，不转义
        if ch == "]" and not in_math and nxt[:1] in (".", "(", "[") and nxt not in ("[\n", "["):
            out.append("\\")
        i += 1
    return "".join(out)


def split_item_multicols(tex: str) -> str:
    """列表中用 multicols 把其中几项排成多栏时（\\begin{multicols}{2}\\item …），pandoc 会丢掉这几项。
    改写为：结束原列表 → 在 multicols 中另起一个列表（编号接续）→ multicols 之后再接续原列表"""
    tok = re.compile(r"\\begin\{(enumerate|itemize)\}(\[[^\]]*\])?|\\end\{(enumerate|itemize)\}"
                     r"|\\begin\{multicols\}\{(\d+)\}(?=\s*\\item)|\\begin\{multicols\}|\\end\{multicols\}|\\item(?![a-zA-Z])")
    out, pos = [], 0
    lists = []      # [类型, 可选参数, 已有项数]
    cols = []       # 每个 multicols 是否为“包住若干项”的那种
    for m in tok.finditer(tex):
        out.append(tex[pos : m.start()])
        pos = m.end()
        s = m.group(0)
        if m.group(1):
            lists.append([m.group(1), m.group(2) or "", 0])
            out.append(s)
        elif m.group(3):
            if lists:
                lists.pop()
            out.append(s)
        elif s == r"\item":
            if lists:
                lists[-1][2] += 1
            out.append(s)
        elif s.startswith(r"\begin{multicols}"):
            item_level = bool(m.group(4)) and bool(lists)
            cols.append(item_level)
            if item_level:
                kind, opt, n = lists[-1]
                depth = sum(1 for l in lists if l[0] == "enumerate")
                restart = r"\setcounter{enum%s}{%d}" % ("i" * depth, n) if kind == "enumerate" else ""
                out.append(r"\end{%s}%s\begin{%s}%s%s" % (kind, s, kind, opt, restart))
            else:
                out.append(s)
        else:  # \end{multicols}
            if cols and cols.pop() and lists:
                kind, opt, n = lists[-1]
                depth = sum(1 for l in lists if l[0] == "enumerate")
                restart = r"\setcounter{enum%s}{%d}" % ("i" * depth, n) if kind == "enumerate" else ""
                out.append(r"\end{%s}%s\begin{%s}%s%s" % (kind, s, kind, opt, restart))
            else:
                out.append(s)
    out.append(tex[pos:])
    return "".join(out)


def stick_stems(typ: str) -> str:
    """题干后面紧跟分栏的小题（#cols 整组不跨页）时，题干放进 sticky 的块里，免得题干孤零零留在页底"""
    lines = typ.split("\n")
    for i, line in enumerate(lines):
        m = re.match(r"^( *)\+ (?!#lead-list)(\S.*)$", line)
        if not m:
            continue
        j = i + 1
        while j < len(lines) and not lines[j].strip():
            j += 1
        if j < len(lines) and lines[j].startswith(m.group(1) + "  #cols(") and j > i + 1:
            lines[i] = "%s+ #block(sticky: true)[%s]" % (m.group(1), m.group(2))
    return "\n".join(lines)


def lead_nested_items(typ: str) -> str:
    """题号后直接是小题（pandoc 输出“+ + …”）：改为 + #lead-list(none, 层数)[ 小题… ]，
    让第一个小题与题号同一行、按基线对齐（见 template.typ 的 lead-list）"""
    lines = typ.split("\n")
    out = []
    i = 0
    while i < len(lines):
        m = re.match(r"^( *)\+ \+ (.*)$", lines[i])
        if not m:
            out.append(lines[i])
            i += 1
            continue
        ind = m.group(1)
        level = len(ind) // 2 + 2
        out.append("%s+ #lead-list(none, %d)[" % (ind, level))
        out.append("%s  + %s" % (ind, m.group(2)))
        i += 1
        # 外层这一项的其余内容：比外层题号缩进更深的行（及其间的空行）
        while i < len(lines) and (not lines[i].strip() or lines[i].startswith(ind + "  ")):
            j = i
            while j < len(lines) and not lines[j].strip():
                j += 1
            if j >= len(lines) or not lines[j].startswith(ind + "  "):
                break
            out.extend(lines[i : j + 1])
            i = j + 1
        out.append("%s  ]" % ind)
    return "\n".join(out)


def number_staritems(typ: str) -> str:
    """给每个 #staritem; 填上它的题号：#staritem(13);，模板据此把“*”紧贴在题号左侧。
    按 pandoc 输出的缩进追踪各层列表：同一缩进的“+ ”是同一列表的各项；
    出现缩进更浅的非空行时，更深的列表结束。起始编号取自紧挨列表前的 #set enum(…, start: n)"""
    counts: dict[int, int] = {}       # 缩进 → 当前项号
    pending_start: dict[int, int] = {}
    out = []
    for line in typ.split("\n"):
        if line.strip():
            indent = len(line) - len(line.lstrip(" "))
            for k in [k for k in counts if k > indent or (k == indent and not line.lstrip().startswith("+ "))]:
                del counts[k]
            m = re.match(r" *#set enum\(.*start: (\d+)", line)
            if m:
                pending_start[indent] = int(m.group(1))
            if line.lstrip().startswith("+ "):
                counts[indent] = counts.get(indent, pending_start.pop(indent, 1) - 1) + 1
                depth = indent // 2 + 1
                arg = "%d" % counts[indent] + (", depth: %d" % depth if depth > 1 else "")
                line = line.replace("#staritem;", "#staritem(%s);" % arg, 1)
        out.append(line)
    return "\n".join(out)


def enum_at(m: re.Match) -> str:
    """pandoc 的 #set enum(numbering: "(1)", start: n) 会作用到嵌套的各层，改为只作用于本层。
    pandoc 每嵌套一层列表缩进 2 格，由此得出层数。pandoc 对默认格式也写出 "1."（如 \\setcounter 之后），
    这时保留各层的默认格式"""
    indent, pattern, start = m.group(1), m.group(2), int(m.group(3))
    if pattern == "i)":
        pattern = "1."
    depth = len(indent) // 2 + 1
    # 显式的 [1.] 从 1 开始；pandoc 对 \setcounter 接续编号的默认格式列表也写 "1."，但起始编号大于 1
    pat = "none" if pattern == "1." and start > 1 else '"%s"' % pattern
    opt = ", start: %d" % start if start != 1 else ""
    return "%s#set enum(numbering: enum-at(%d, %s%s))" % (indent, depth, pat, opt)


def indent_like(text: str, pos: int, s: str) -> str:
    """多行的占位内容换回时，续行按占位符所在行的缩进对齐（否则列表项中的表格等会顶格，
    number_staritems 按缩进追踪列表时会误以为列表结束）"""
    line_start = text.rfind("\n", 0, pos) + 1
    indent = re.match(r" *", text[line_start:]).group(0)
    return s.replace("\n", "\n" + indent) if indent else s


def code_slot(s: str) -> str:
    """正文中的 #f(…) 后面紧跟 ( [ . 时会被当成继续调用，统一加分号结束表达式"""
    return s + ";" if s.startswith("#") and s.endswith(")") else s


def fix_strings(typ: str) -> str:
    """公式中的文字 upright("…")：去掉换行，去掉汉字之间的空格（xeCJK 会忽略它们），去掉紧接 & 之前的尾随空格"""
    def clean(m: re.Match) -> str:
        s = re.sub(r"\s*\n\s*", "", m.group(1))
        s = re.sub(r"(?<=[\u3400-\u9fff\uff00-\uffef\u3000-\u303f]) +(?=[\u3400-\u9fff\uff00-\uffef\u3000-\u303f])", "", s)
        return 'upright("%s")' % s
    typ = re.sub(r'upright\("((?:[^"\\]|\\.)*)"\)', clean, typ, flags=re.S)
    typ = re.sub(r'upright\("((?:[^"\\]|\\.)*?) +"\)(\s*&)', r'upright("\1")\2', typ)
    return typ


def fix_math(typ: str) -> str:
    # \dot{x}（循环小数的点）：模板中 dot 被定义成了 dot.o 等符号的字典（见 template.typ），重音要写 std.math.dot
    typ = re.sub(r"(?<![\w.#])dot\(", "std.math.dot(", typ)
    # 向量的模 |\vec{b}|：pandoc 有时写成 \| arrow(b) \|，函数调用两侧的空格在 Typst 中会排出空隙
    typ = re.sub(r"\\\|\s*((?:arrow|accent)\([^()]*\))\s*\\\|", r"\\|\1\\|", typ)
    # vmatrix / Vmatrix：pandoc 写成 delim: "||"、"‖‖"，Typst 只要一个字符
    typ = typ.replace('delim: "||"', 'delim: "|"').replace('delim: "‖‖"', 'delim: "‖"')
    # 多行对齐公式的续行以 & + 或 & - 开头：LaTeX（amsmath 在右栏开头补 {}）按二元运算排，
    # Typst 当作正负号紧贴后面的项；前面补一个空的普通符号 eqph（见 template.typ）
    # 续行开头先空一段（& \quad + …、& \hspace{2em} - …）的也一样
    typ = re.sub(r"(\\\n\s*&\s*(?:(?:#h\([^()]*\)|quad|qquad|wide)\s*)*)([+-])(?=\s)", r"\1eqph \2", typ)
    typ = re.sub(r"\^compose\b", " degree", typ)
    typ = re.sub(r"\^\(compose\)", " degree", typ)
    # \boxed：pandoc 在框内又套了一层独立公式
    typ = re.sub(r"#box\(stroke: black, inset: 3pt, \[\$ (.*?) \$\]\)", r"#box(stroke: 0.5pt, inset: 3pt, $\1$)", typ)
    return typ


def strip_comments(tex: str) -> str:
    return re.sub(r"(?<!\\)%.*", "", tex)


def read_group(s: str, i: int) -> tuple[str, int]:
    """s[i] 应为 '{'，返回配对花括号内的内容及其后的位置"""
    assert s[i] == "{"
    depth = 0
    for j in range(i, len(s)):
        if s[j] == "\\":
            continue
        if s[j] == "{" and (j == 0 or s[j - 1] != "\\"):
            depth += 1
        elif s[j] == "}" and s[j - 1] != "\\":
            depth -= 1
            if depth == 0:
                return s[i + 1 : j], j + 1
    raise ValueError("花括号不配对：" + s[i : i + 80])


def replace_command(tex: str, name: str, nargs: int, fn) -> str:
    """把 \\name{a}{b}… 替换为 fn([a, b, …])，参数支持嵌套花括号"""
    out = []
    pos = 0
    pat = re.compile(r"\\%s(?![a-zA-Z])\s*" % re.escape(name))
    while True:
        m = pat.search(tex, pos)
        if not m:
            out.append(tex[pos:])
            return "".join(out)
        out.append(tex[pos : m.start()])
        j = m.end()
        args = []
        for _ in range(nargs):
            while j < len(tex) and tex[j].isspace():
                j += 1
            if j < len(tex) and tex[j] == "{":
                arg, j = read_group(tex, j)
            else:  # 如 \tfrac12、\frac\pi2
                mc = re.match(r"\\[a-zA-Z]+|\\.|.", tex[j:], flags=re.S)
                arg, j = mc.group(0), j + mc.end()
            args.append(arg)
        out.append(fn(args))
        pos = j


def take_label(s: str) -> tuple[str, str | None]:
    """去掉公式中的 \\label{…}，返回 (去掉后的公式, 标签名或 None)"""
    labels = []
    s = re.sub(r"\\label\{([^}]*)\}", lambda m: labels.append(m.group(1)) or "", s)
    return s, (labels[0] if labels else None)


def safe_label(name: str) -> str:
    """标签名中字母、数字和 _ - : . 以外的字符写成 -xx-（十六进制码），保证 Typst 能用、且各章一致"""
    return re.sub(r"[^A-Za-z0-9_:.-]", lambda c: "-%x-" % ord(c.group(0)), name)


def typst_label(name: str) -> str:
    """LaTeX 的标签名 → Typst 的 label(…)（标签名中可能有 : ( = | 等字符，不能写成 <…>）"""
    return "label(%s)" % json.dumps(name, ensure_ascii=False)


def split_top(s: str, sep: str = ",") -> list[str]:
    """按 sep 切分，不切花括号内、\\begin…\\end 环境内（如 align 中的 vmatrix）的部分"""
    parts, depth, env, cur, i = [], 0, 0, "", 0
    while i < len(s):
        if s.startswith("\\begin{", i):
            env += 1
        elif s.startswith("\\end{", i):
            env -= 1
        if s.startswith(sep, i) and depth == 0 and env == 0 and not (sep != "\\\\" and i > 0 and s[i - 1] == "\\"):
            parts.append(cur)
            cur = ""
            i += len(sep)
            continue
        ch = s[i]
        if ch == "\\" and sep != "\\\\":
            cur += s[i : i + 2]
            i += 2
            continue
        if ch == "{":
            depth += 1
        elif ch == "}":
            depth -= 1
        cur += ch
        i += 1
    parts.append(cur)
    return [p.strip() for p in parts]


def parse_colspec(spec: str) -> tuple[list[tuple[str, str]], list[int]]:
    """tabular 的列格式 → [(对齐, 宽度)]、竖线所在位置"""
    while True:  # 展开 *{n}{…}
        m = re.search(r"\*\{(\d+)\}\{", spec)
        if not m:
            break
        inner, j = read_group(spec, m.end() - 1)
        spec = spec[: m.start()] + inner * int(m.group(1)) + spec[j:]
    cols, vlines, i = [], [], 0
    while i < len(spec):
        ch = spec[i]
        if ch in "lcr":
            cols.append(({"l": "left", "c": "center", "r": "right"}[ch], "auto"))
        elif ch in "pmb" and i + 1 < len(spec) and spec[i + 1] == "{":
            w, i = read_group(spec, i + 1)
            m = re.fullmatch(r"\s*([\d.]*)\\(textwidth|linewidth)\s*", w)
            width = "%g%%" % (float(m.group(1) or 1) * 100) if m else w.strip()
            cols.append(("left", width))
            continue
        elif ch == "|":
            vlines.append(len(cols))
        elif ch in "@>" and i + 1 < len(spec) and spec[i + 1] == "{":
            _, i = read_group(spec, i + 1)
            continue
        i += 1
    return cols, vlines


CELL_SEP = "TYPSTCELLSEP"


def convert_fragments(fragments: list[str]) -> list[str]:
    """一次调用 pandoc 转换多段 LaTeX 行内内容"""
    if not fragments:
        return []
    # 空公式 $$（如 TikZ 的 node{$$}）会被 pandoc 当作陈列公式的开头，按空内容处理
    fragments = ["" if re.fullmatch(r"\s*\$\s*\$\s*", f) else f for f in fragments]
    joined = ("\n\n%s\n\n" % CELL_SEP).join(f if f.strip() else "~" for f in fragments)
    out = pandoc(MACROS + joined)
    parts = [p.strip() for p in out.split(CELL_SEP)]
    assert len(parts) == len(fragments), "表格单元格转换后数目不符"
    return ["" if not f.strip() else p for f, p in zip(fragments, parts)]


def expand_poly(arg: str, var: str = "x") -> str:
    """\\polynomial[reciprocal]{a,b,c} = a x^2 + b x + c"""
    coeffs = split_top(arg)
    n = len(coeffs) - 1
    terms = []
    for k, c in enumerate(coeffs):
        deg = n - k
        if c in ("0", "+0", "-0", ""):
            continue
        neg = c.startswith("-")
        c = c.lstrip("+-").strip()
        power = "" if deg == 0 else var if deg == 1 else "%s^{%d}" % (var, deg)
        if c == "1" and deg > 0:
            c = ""
        if re.search(r"\\[a-zA-Z]+$", c):  # 如 \ell，后面要隔开
            c += " "
        sign = "-" if neg else ("+" if terms else "")
        terms.append(sign + c + power)
    return "".join(terms) or "0"


def poly_coeffs(tex: str) -> tuple[list[int], str]:
    """把 4x^3+5x^2-2x-3 这样的多项式解析为降幂系数表和变量名（polynom 宏包的写法，可含 +0 占位）"""
    var = (re.findall(r"[a-z]", tex) or ["x"])[0]
    terms: dict[int, int] = {}
    for sign, coef, v, power in re.findall(r"([+-]?)\s*(\d*)\s*([a-z]?)(?:\^\{?(\d+)\}?)?", tex.replace(" ", "")):
        if not (coef or v):
            continue
        c = int(coef) if coef else 1
        deg = (int(power) if power else 1) if v else 0
        terms[deg] = terms.get(deg, 0) + (-c if sign == "-" else c)
    n = max(terms)
    return [terms.get(d, 0) for d in range(n, -1, -1)], var


def polylongdiv(dividend: str, divisor: str, style: str) -> str:
    a, var = poly_coeffs(dividend)
    b, _ = poly_coeffs(divisor)
    fmt = lambda xs: "(%s)" % ", ".join(map(str, xs))
    opts = (', var: "%s"' % var if var != "x" else "") + (', style: "%s"' % style if style != "A" else "")
    return "#polylongdiv(%s, %s%s)" % (fmt(a), fmt(b), opts)


def fix_nested_frac(tex: str) -> str:
    """\\frac{\\frac{a}{b}}{\\frac{c}{d}}：pandoc 写成 a / b / c / d（成了 ((a/b)/c)/d，数学上就错了）。
    作分子、分母的分式包上 \\mathord{…}，pandoc 就改写为 frac(a / b, c / d)"""
    def fn(name):
        def f(args):
            args = [fix_nested_frac(a) for a in args]
            args = [r"\mathord{%s}" % a if re.search(r"\\[dt]?frac(?![a-zA-Z])", a) else a for a in args]
            return "\\%s{%s}{%s}" % (name, args[0], args[1])
        return f
    for name in ("frac", "dfrac"):
        tex = replace_command(tex, name, 2, fn(name))
    return tex


def pandoc(tex: str) -> str:
    # TeX 的 _23 是下标 2 后接 3，pandoc 却写成 Typst 的 _23（整串下标）；先写成 _{2}3
    tex = re.sub(r"(?<!\\)([_^])\s*(\d)(?=\d)", r"\1{\2}", tex)
    if re.search(r"\\d?frac\s*\{[^{}]*\\[dt]?frac", tex) or re.search(r"\\d?frac\s*\{(?:[^{}]|\{[^{}]*\})*\}\s*\{[^{}]*\\[dt]?frac", tex):
        tex = fix_nested_frac(tex)
    r = subprocess.run(
        ["pandoc", "-f", "latex-smart", "-t", "typst", "--wrap=none", "--lua-filter", str(FILTER)],
        input=tex, capture_output=True, text=True, encoding="utf-8",
    )
    if r.returncode != 0:
        raise RuntimeError(r.stderr)
    if r.stderr.strip():
        print(r.stderr.strip(), file=sys.stderr)
    return r.stdout


def aligned_rows(body: str, numbered: bool) -> str:
    """多行对齐公式 → #numbered-align：在第一个 & 处左右对齐。
    numbered 为真时（align 环境）每行编号，\\nonumber 的行除外；有 \\tag 的行以说明代替编号"""
    rows = []
    for r in split_top(body, "\\\\"):
        if not r.strip():
            continue
        tags = []
        r = replace_command(r, "tag", 1, lambda a: tags.append(a[0]) or "")
        r, lbl = take_label(r)
        if tags:
            mark = "[(%s)]" % convert_fragments([tags[0]])[0]
        elif numbered and not re.search(r"\\(nonumber|notag)\b", r):
            mark = typst_label(lbl) if lbl else "true"
        else:
            mark = "false"
        r = re.sub(r"\\(nonumber|notag)\b", "", r)
        left, *rest = split_top(r, "&")
        right = " & ".join(rest)
        rows.append("($%s$, $%s$, %s)" % (tex_math_to_typst(left) if left.strip() else "",
                                         # 右半以 = 开头时前面补一个普通符号类的空占位 eqph（见 template.typ），否则 Typst 会去掉 = 左侧的间距
                                         # 左半为空的续行也要补，否则这些行的 = 比首行偏左
                                         ("eqph " if left.strip() or re.match(r"\s*[=<>+-]|\s*\\(?:ne|le|ge|approx|equiv|sim)", right) else "")
                                         + tex_math_to_typst(right) if right.strip() else "",
                                         mark))
    return "#numbered-align(%s)" % ", ".join(rows)


def cases_to_typst(body: str) -> str:
    """cases 环境的内容 → Typst 的 cases(…)。pandoc 只能正确转换带 & 的 cases，所以自己拆行、拆列"""
    rows = [r for r in split_top(body, "\\\\") if r.strip()]
    cells = [split_top(r, "&") for r in rows]
    flat = [c for row in cells for c in row]
    conv = iter(tex_math_to_typst(c) if c.strip() else "" for c in flat)
    # LaTeX 的 cases 两栏之间隔 1em
    out_rows = [" & quad ".join(next(conv) for _ in row) for row in cells]
    return "display(cases(%s))" % ", ".join(out_rows)


def tex_math_to_typst(math: str) -> str:
    """把一段 LaTeX 公式转为 Typst 公式（不含两侧的 $）"""
    out = pandoc(MACROS + "\n\\[" + math + "\\]").strip()
    out = fix_math(out)
    m = re.fullmatch(r"\$\s*(.*?)\s*\$", out, flags=re.S)
    return m.group(1) if m else out


# 各册主文件中“本册专用”的公式命令 -> typst/math<册>/defs.typ 中的定义
VOLUME_MACROS = {
    2: {"parallelogram": "pgram", "parallel": "pll"},
    5: {"parallelogram": "pgram", "parallel": "pll"},
}
# 各册主文件中“本册专用”的、可以直接换成标准 LaTeX 命令的定义（在交给 pandoc 之前替换）
VOLUME_TEX = {
    3: [(r"\\Vec(?![a-zA-Z])", r"\\overrightarrow")],   # \renewcommand{\Vec}{\overrightarrow}
    # \newcommand{\arccot}{{\rm arccot\; }}
    4: [(r"\\arccot(?![a-zA-Z])", r"\\operatorname{arccot}")],
    # \renewcommand{\Vec}{\overrightarrow}、\eX = \vec{e}_x 等、\va = \vec{a}、\expval{x} = \left\langle x \right\rangle
    5: [(r"\\Vec(?![a-zA-Z])", r"\\overrightarrow"),
        (r"\\e([XYZ])(?![a-zA-Z])", lambda m: r"\vec{e}_%s" % m.group(1).lower()),
        (r"\\va(?![a-zA-Z])", r"\\vec{a}"),
        # \expval 定义成 \left\langle…\right\rangle，但 LaTeX 中这些尖括号都是正常大小；Typst 的 lr 会随箭头放大
        (r"\\expval\{((?:[^{}]|\{[^{}]*\})*)\}", r"\\langle \1 \\rangle"),
        (r"\$\\bf\{([^{}]*)\}\$", r"$\\mathbf{\1}$")],   # 3.tex 的 $\bf{a}$
    6: [(r"\\dd(?![a-zA-Z])", r"\\,\\mathrm{d}"),
        (r"\\(arccot|arcsec)(?![a-zA-Z])", r"\\operatorname{\1}"),
        (r"\\NC(?![a-zA-Z])", r"\\text{N}/\\text{C}"),
        (r"\\msq(?![a-zA-Z])", r"\\text{m}/\\text{s}^2"), (r"\\cmsq(?![a-zA-Z])", r"\\text{cm}/\\text{s}^2"),
        (r"\\ms(?![a-zA-Z])", r"\\text{m}/\\text{s}"), (r"\\cms(?![a-zA-Z])", r"\\text{cm}/\\text{s}"),
        (r"\\kmh(?![a-zA-Z])", r"\\text{km}/\\text{h}"),
        (r"\\([RNZ])(?![a-zA-Z])", r"\\mathbb{\1}"),
        (r"\\VEC(?![a-zA-Z])", r"\\overrightarrow"),
        lambda tex: expand_volume6(tex)],
}


def expand_volume6(tex: str) -> str:
    """第六册带参数的宏（参数中花括号可能多层嵌套，用 replace_command 按花括号配对）"""
    # \comb{m}{n} = {\rm C}^{m}_{n}，\perm、\rep 同（P、H）
    for name, letter in (("comb", "C"), ("perm", "P"), ("rep", "H")):
        tex = replace_command(tex, name, 2, lambda a, l=letter: r"{\rm %s}^{%s}_{%s}" % (l, a[0], a[1]))
    # \pcx{x} = \cos\left(x\right)+i\sin\left(x\right)，\pc{x} = \cos{x}+i\sin{x}
    tex = replace_command(tex, "pcx", 1, lambda a: r"\cos\left(%s\right)+i\sin\left(%s\right)" % (a[0], a[0]))
    tex = replace_command(tex, "pc", 1, lambda a: r"\cos{%s}+i\sin{%s}" % (a[0], a[0]))
    return tex
# 各册专用、要直接写成 Typst 公式的命令（pandoc 会丢掉 \displaystyle、\limits）
VOLUME_SLOTS = {
    4: {"Lim": "limits(lim)"},   # \newcommand{\Lim}{\displaystyle\lim}：行内也把下标排在正下方
    # 第六册：\Lim 同上；\newcommand{\Int}{\displaystyle\int}
    6: {"Lim": "limits(lim)", "Int": "display(integral)"},
}


def convert(volume: int, chapter: int | str, src: Path) -> str:
    conv = Converter(chapter)
    tex = src.read_text(encoding="utf-8")
    for name, ident in VOLUME_MACROS.get(volume, {}).items():
        tex = re.sub(r"\\%s(?![a-zA-Z])\s*" % name, lambda m, i=ident: conv.math_slot(i) + " ", tex)
    for name, typ_ in VOLUME_SLOTS.get(volume, {}).items():
        tex = re.sub(r"\\%s(?![a-zA-Z])\s*" % name, lambda m, t=typ_: conv.math_slot(t) + " ", tex)
    for item in VOLUME_TEX.get(volume, []):
        tex = item(tex) if callable(item) else re.sub(item[0], item[1], tex)
    tex = conv.preprocess(tex)
    typ = conv.postprocess(pandoc(MACROS + tex))
    # 插图沿用 LaTeX 版目录中的图片文件（编译时 --root 为仓库根目录）
    typ = re.sub(r'image\("(?!/)', 'image("/math%d/' % volume, typ)
    header = (
        f"// 由 typst/tools/tex2typ.py 从 math{volume}/{src.name} 转换而来，已人工校对的部分以本文件为准。\n"
        '#import "../common/template.typ": *\n'
        '#import "figs.typ": fig\n'
        + ('#import "defs.typ": *\n' if volume in VOLUME_MACROS else "")
        + "\n"
    )
    # 前言（0）、附录（app，第六册上册末尾 \appendixchapters 之后的章）不编号
    if chapter in (0, "app"):
        typ = re.sub(r"^= (.*)$", lambda m: "#heading(numbering: none)[%s]" % m.group(1).replace("\u00a0", "#h(1em)").replace("  ", "#h(1em)"),
                     typ, count=1, flags=re.M)
    return header + typ


def main() -> None:
    ap = argparse.ArgumentParser()
    ap.add_argument("volume", type=int)
    ap.add_argument("chapters", nargs="*", help="章号；0 为前言，app 为附录")
    ap.add_argument("--force", action="store_true", help="覆盖已有的 .typ 文件")
    a = ap.parse_args()

    src_dir = ROOT / f"math{a.volume}"
    out_dir = ROOT / "typst" / f"math{a.volume}"
    out_dir.mkdir(parents=True, exist_ok=True)

    chapters = [c if c == "app" else int(c) for c in a.chapters] or (
        [0] + sorted(int(p.stem) for p in src_dir.glob("[0-9]*.tex")) + (["app"] if (src_dir / "app.tex").exists() else []))
    for ch in chapters:
        src = src_dir / ("preface.tex" if ch == 0 else f"{ch}.tex")
        dst = out_dir / ("preface.typ" if ch == 0 else "app.typ" if ch == "app" else f"ch{ch}.typ")
        if dst.exists() and not a.force:
            print(f"跳过 {dst.relative_to(ROOT)}（已存在，加 --force 覆盖）")
            continue
        dst.write_text(convert(a.volume, ch, src), encoding="utf-8", newline="\n")
        print(f"{src.relative_to(ROOT)} -> {dst.relative_to(ROOT)}")


if __name__ == "__main__":
    main()
