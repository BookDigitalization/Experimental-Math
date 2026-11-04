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
        tex = self.replace_tikz(tex)
        # 没有 \caption 的 figure 在 LaTeX 中不编号；pandoc 会给它图号，所以改成居中的普通内容
        tex = re.sub(r"\\begin\{figure\}(?:\[[^\]]*\])?((?:(?!\\end\{figure\}).)*?)\\end\{figure\}",
                     lambda m: m.group(0) if r"\caption" in m.group(1) else r"\begin{center}%s\end{center}" % m.group(1).replace(r"\centering", ""),
                     tex, flags=re.S)
        tex = self.replace_figure_pairs(tex)
        # pandoc 把显式的 [1.] 当作默认格式丢掉（嵌套时 LaTeX 仍印 1.），借本书未用的 [i)] 传过去，enum_at 中再换回
        tex = re.sub(r"\\begin\{enumerate\}\[1\.\]", r"\\begin{enumerate}[i)]", tex)
        tex = split_item_multicols(tex)
        tex = re.sub(r"\\staritem\b\s*", lambda m: r"\item " + self.slot("#staritem;"), tex)
        tex = re.sub(r"``(.*?)''", "“\\1”", tex, flags=re.S)  # TeX 的 ``…'' 引号
        # \x 是本书定义的 ×；但 \\x 是换行后接字母 x，不能替换
        tex = re.sub(r"(?<!\\)\\x(?![a-zA-Z])", r"\\times ", tex)
        tex = re.sub(r"\\oc(?![a-zA-Z])", "°C", tex)
        tex = re.sub(r"\\vskip\s*[\d.]+\s*(ex|em|pt|mm|cm)", "", tex)
        # \section*：后面跟 \addcontentsline{toc}{subsection} 的（习题）以小节的缩进列入目录，否则不列入目录
        tex = re.sub(r"\\section\*\{([^}]*)\}\s*\\addcontentsline\{toc\}\{subsection\}\{[^}]*\}",
                     lambda m: "\n\n" + self.slot("#heading(level: 2, numbering: none, supplement: [toc-sub])[%s]" % m.group(1)) + "\n\n", tex)
        tex = re.sub(r"\\section\*\{([^}]*)\}(?!\s*\\addcontentsline)",
                     lambda m: "\n\n" + self.slot("#heading(level: 2, numbering: none, outlined: false)[%s]" % m.group(1)) + "\n\n", tex)
        tex = re.sub(r"\\addcontentsline\{[^}]*\}\{[^}]*\}\{[^}]*\}", "", tex)
        # proof 是本书自定义的环境（只印“证明：”），换个名字，免得 pandoc 按 amsthm 加上 Proof. 和 ◻
        tex = re.sub(r"\\(begin|end)\{proof\}", r"\\\1{bookproof}", tex)
        # 单独的 \includegraphics[scale=s]{f}：pandoc 会套上带图号的 figure，LaTeX 版没有图号
        tex = re.sub(r"\\includegraphics\[scale=([\d.]+)\]\{([^}]*)\}",
                     lambda m: self.slot('#scale(%g%%, reflow: true, image("%s"))' % (float(m.group(1)) * 100, m.group(2))), tex)
        # 多行环境末尾多余的 \\ 会让 pandoc 转错（LaTeX 中只是多一个空行）
        tex = re.sub(r"\\\\\s*(\\end\{(cases|array|aligned|align\*?|split|gathered|matrix|pmatrix)\})", r"\1", tex)
        tex = re.sub(r"\{\\rm\s+([^{}]*)\}", r"\\mathrm{\1}", tex)
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
        tex = re.sub(r"\\polylongdiv\[style=(\w)\]", r"\\polylongdivstyle\1", tex)
        for style in "ABCD":
            tex = replace_command(tex, "polylongdivstyle" + style, 2,
                                  lambda a, s=style: self.slot(polylongdiv(a[0], a[1], s)))
        tex = replace_command(tex, "polylongdiv", 2, lambda a: self.slot(polylongdiv(a[0], a[1], "A")))
        tex = re.sub(r"\\left\\\{\s*\\begin\{array\}\{[^}]*\}(.*?)\\end\{array\}\s*\\right\.",
                     r"\\begin{cases}\1\\end{cases}", tex, flags=re.S)
        tex = self.replace_nested_cases(tex)
        tex = self.replace_arrays(tex)
        tex = self.replace_tags(tex)
        tex = self.replace_numcases(tex)
        tex = re.sub(r"\\begin\{align\}(.*?)\\end\{align\}", lambda m: "\n\n" + self.slot(aligned_rows(m.group(1), numbered=True)) + "\n\n",
                     tex, flags=re.S)
        tex = re.sub(r"\\begin\{equation\}(.*?)\\end\{equation\}",
                     lambda m: self.slot("#numbered-eq($ %s $)" % tex_math_to_typst(m.group(1))), tex, flags=re.S)
        tex = self.replace_inline_envs(tex)
        tex = self.replace_text_spaces(tex)
        tex = self.replace_tabular(tex)
        # table 环境中的表格：pandoc 不认得已换成占位符的表格，图注会丢掉。改为 #figure(kind: table)
        def table_env(m: re.Match) -> str:
            cap = re.search(r"\\caption\{([^}]*)\}", m.group(1))
            body = re.sub(r"\\caption\{[^}]*\}|\\centering|\\label\{[^}]*\}", "", m.group(1)).strip()
            body = re.sub(r"\\textsc\{(PH\d+)\}", r"#smallcaps[\1]", body)
            caption = convert_fragments([cap.group(1)])[0] if cap and cap.group(1).strip() else ""
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
            out.append(tex[i])
            i += 1
        return "".join(out)

    def replace_tabular(self, tex: str) -> str:
        """tabular 自行转换：pandoc 会丢掉大部分 \\hline 和竖线"""
        out, pos = [], 0
        pat = re.compile(r"\\begin\{tabular\}")
        while True:
            m = pat.search(tex, pos)
            if not m:
                out.append(tex[pos:])
                return "".join(out)
            out.append(tex[pos : m.start()])
            spec, j = read_group(tex, m.end())
            end = tex.index(r"\end{tabular}", j)
            out.append(self.slot(self.tabular(spec, tex[j:end])))
            pos = end + len(r"\end{tabular}")

    def tabular(self, spec: str, body: str) -> str:
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
                mc = re.match(r"\\multicolumn\{(\d+)\}\{([^}]*)\}", c)
                if mc:
                    content, _ = read_group(c, mc.end())
                    al = parse_colspec(mc.group(2))[0]
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
        widths = ", ".join(w if w == "auto" else w + " + 12pt" for _, w in cols)
        aligns = ", ".join(a for a, _ in cols)
        return "#table(\n  columns: (%s,),\n  align: (%s,),\n  %s\n)" % (widths, aligns, "\n  ".join(items))

    def replace_figure_pairs(self, tex: str) -> str:
        """figure 中用两个 minipage 并排、各带 \\caption 的两幅图：pandoc 会合成一幅图、一个图号。
        改为并排的两个 #figure，各占一个图号"""
        def repl(m: re.Match) -> str:
            parts = re.findall(r"\\begin\{minipage\}(?:\[[^\]]*\])?\{[^}]*\}(.*?)\\end\{minipage\}", m.group(0), flags=re.S)
            figs = []
            for p in parts:
                cap = re.search(r"\\caption\{([^}]*)\}", p)
                body = re.sub(r"\\caption\{[^}]*\}|\\centering", "", p).strip()
                body = re.sub(r"\\textsc\{(PH\d+)\}", r"#smallcaps[\1]", body)
                caption = convert_fragments([cap.group(1)])[0] if cap and cap.group(1).strip() else ""
                figs.append("figure([%s], caption: [%s])" % (body, caption) if cap else "[%s]" % body)
            return "\n\n" + self.slot("#grid(columns: (1fr,) * %d, align: center + bottom, %s)" % (len(figs), ", ".join(figs))) + "\n\n"
        return re.sub(r"\\begin\{figure\}(?:\[[^\]]*\])?(?:(?!\\end\{figure\}).)*?\\begin\{minipage\}.*?\\end\{figure\}",
                      repl, tex, flags=re.S)

    def replace_tikz(self, tex: str) -> str:
        def repl(m: re.Match) -> str:
            self.fig_count += 1
            return self.slot('#fig("%d-%02d")' % (self.chapter, self.fig_count))
        return re.sub(r"\\begin\{tikzpicture\}.*?\\end\{tikzpicture\}", repl, tex, flags=re.S)

    def wideparen(self, args: list[str]) -> str:
        body = args[0].strip()
        if re.fullmatch(r"[A-Za-z]+", body):
            return self.math_slot("overparen(%s)" % " ".join(body))
        return r"\overline{%s}" % body

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
            aligns = set(re.sub(r"[^lcr]", "", m.group(1)))
            align = {"l": "left", "r": "right"}.get(aligns.pop(), "center") if len(aligns) == 1 else "center"
            rows = [r for r in split_top(m.group(2), "\\\\") if r.strip() and r.strip() != r"\hline"]
            conv = ["; ".join([", ".join(tex_math_to_typst(c) if c.strip() else "" for c in split_top(r, "&"))]) for r in rows]
            typ = "mat(delim: #none, align: #%s, column-gap: #1.5em, %s)" % (align, "; ".join(conv))
            tex = tex[: m.start()] + self.math_slot(typ) + tex[m.end():]

    def replace_tags(self, tex: str) -> str:
        """带 \\tag{X} 的独立公式（align*、\\[…\\]、$$…$$、equation*）改为 #numbered-align，
        说明“(X)”靠右排，与 LaTeX 一致。其余位置的 \\tag 改为隔开一段的说明"""
        def repl(m: re.Match) -> str:
            body = m.group(2) if m.group(2) is not None else (m.group(3) if m.group(3) is not None else m.group(4))
            if r"\tag" not in body:
                return m.group(0)
            return "\n\n" + self.slot(aligned_rows(body, numbered=False)) + "\n\n"
        tex = re.sub(r"\\begin\{(align\*|equation\*)\}(.*?)\\end\{\1\}|\\\[(.*?)\\\]|\$\$(.*?)\$\$", repl, tex, flags=re.S)
        return replace_command(tex, "tag", 1, lambda a: r"\qquad\text{(%s)}" % a[0])

    def replace_numcases(self, tex: str) -> str:
        def repl(m: re.Match) -> str:
            lhs = tex_math_to_typst(m.group(1)) if m.group(1).strip() else ""
            rows = [r.replace("&", " ") for r in re.split(r"\\\\", m.group(2)) if r.strip()]
            parts = ["$%s$" % lhs] + ["$%s$" % tex_math_to_typst(r) for r in rows]
            return "\n\n" + self.slot("#numcases(%s)" % ", ".join(parts)) + "\n\n"
        return re.sub(r"\\begin\{numcases\}\{(.*?)\}(.*?)\\end\{numcases\}", repl, tex, flags=re.S)

    def replace_inline_envs(self, tex: str) -> str:
        """行内公式里的 cases、array 等多行结构，pandoc 的 Typst 输出有误，改为单独转换"""
        def repl(m: re.Match) -> str:
            body = m.group(1)
            if r"\begin{" not in body:
                return m.group(0)
            return self.slot("$%s$" % tex_math_to_typst(body))
        return re.sub(r"(?<![\\$])\$([^$]+?)\$", repl, tex, flags=re.S)

    # ---- 后处理 ----
    def postprocess(self, typ: str) -> str:
        # 占位符里可能还套着占位符，反复替换到没有为止
        while True:
            new = re.sub(r'upright\(\s*"?P\s*H\s*M\s*(\d+)"?\s*\)', lambda m: self.slots[int(m.group(1))], typ)
            new = re.sub(r"#smallcaps\[PH(\d+)\]", lambda m: code_slot(self.slots[int(m.group(1))]), new)
            if new == typ:
                break
            typ = new
        left = re.findall(r"PHM?\s*\d+|P H M", typ)
        if left:
            raise RuntimeError("占位符没有替换干净：%s" % left[:5])
        typ = fix_math(typ)
        typ = fix_strings(typ)
        # 列表项以独立公式开头时，LaTeX 的题号单独占一行、公式排在下一行
        typ = re.sub(r"^( *)\+ \$ ", lambda m: "%s+ #h(0pt)\n%s  $ " % (m.group(1), m.group(1)), typ, flags=re.M)
        typ = re.sub(r'^( *)#set enum\(numbering: "([^"]*)", start: (\d+)\)', enum_at, typ, flags=re.M)
        typ = escape_after_calls(typ)
        typ = re.sub(r"\n{3,}", "\n\n", typ)
        return typ


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
            else:  # 如 \tfrac12
                arg, j = tex[j], j + 1
            args.append(arg)
        out.append(fn(args))
        pos = j


def split_top(s: str, sep: str = ",") -> list[str]:
    """按 sep 切分，不切花括号内的部分"""
    parts, depth, cur, i = [], 0, "", 0
    while i < len(s):
        if s.startswith(sep, i) and depth == 0 and not (sep != "\\\\" and i > 0 and s[i - 1] == "\\"):
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


def pandoc(tex: str) -> str:
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
        if tags:
            mark = "[(%s)]" % convert_fragments([tags[0]])[0]
        elif numbered and not re.search(r"\\(nonumber|notag)\b", r):
            mark = "true"
        else:
            mark = "false"
        r = re.sub(r"\\(nonumber|notag)\b", "", r)
        left, _, right = r.partition("&")
        rows.append("($%s$, $%s$, %s)" % (tex_math_to_typst(left) if left.strip() else "",
                                         # 右半以 = 开头时前面补 zws，否则 Typst 会去掉 = 左侧的间距
                                         ("zws " if left.strip() else "") + tex_math_to_typst(right) if right.strip() else "",
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


def convert(volume: int, chapter: int, src: Path) -> str:
    conv = Converter(chapter)
    tex = conv.preprocess(src.read_text(encoding="utf-8"))
    typ = conv.postprocess(pandoc(MACROS + tex))
    # 插图沿用 LaTeX 版目录中的图片文件（编译时 --root 为仓库根目录）
    typ = re.sub(r'image\("(?!/)', 'image("/math%d/' % volume, typ)
    header = (
        f"// 由 typst/tools/tex2typ.py 从 math{volume}/{src.name} 转换而来，已人工校对的部分以本文件为准。\n"
        '#import "../common/template.typ": *\n'
        '#import "figs.typ": fig\n\n'
    )
    if chapter == 0:
        typ = re.sub(r"^= (.*)$", lambda m: "#heading(numbering: none)[%s]" % m.group(1).replace("\u00a0", "#h(1em)").replace("  ", "#h(1em)"),
                     typ, count=1, flags=re.M)
    return header + typ


def main() -> None:
    ap = argparse.ArgumentParser()
    ap.add_argument("volume", type=int)
    ap.add_argument("chapters", type=int, nargs="*")
    ap.add_argument("--force", action="store_true", help="覆盖已有的 .typ 文件")
    a = ap.parse_args()

    src_dir = ROOT / f"math{a.volume}"
    out_dir = ROOT / "typst" / f"math{a.volume}"
    out_dir.mkdir(parents=True, exist_ok=True)

    chapters = a.chapters or [0] + sorted(int(p.stem) for p in src_dir.glob("[0-9]*.tex"))
    for ch in chapters:
        src = src_dir / ("preface.tex" if ch == 0 else f"{ch}.tex")
        dst = out_dir / ("preface.typ" if ch == 0 else f"ch{ch}.typ")
        if dst.exists() and not a.force:
            print(f"跳过 {dst.relative_to(ROOT)}（已存在，加 --force 覆盖）")
            continue
        dst.write_text(convert(a.volume, ch, src), encoding="utf-8", newline="\n")
        print(f"{src.relative_to(ROOT)} -> {dst.relative_to(ROOT)}")


if __name__ == "__main__":
    main()
