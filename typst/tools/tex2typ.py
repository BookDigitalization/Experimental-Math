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
        tex = re.sub(r"\\staritem\b\s*", lambda m: r"\item " + self.slot("#staritem;"), tex)
        tex = re.sub(r"\\x(?![a-zA-Z])", r"\\times ", tex)
        tex = re.sub(r"\\oc(?![a-zA-Z])", "°C", tex)
        tex = re.sub(r"\\vskip\s*[\d.]+\s*(ex|em|pt|mm|cm)", "", tex)
        tex = re.sub(r"\\addcontentsline\{[^}]*\}\{[^}]*\}\{[^}]*\}", "", tex)
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
                              lambda a: self.slot('#todo-raw("\\\\intlongdivision{%s}{%s}")' % (a[0], a[1])))
        tex = re.sub(r"\\polylongdiv\[[^\]]*\]", r"\\polylongdiv", tex)
        tex = replace_command(tex, "polylongdiv", 2,
                              lambda a: self.slot('#todo-raw("\\\\polylongdiv{%s}{%s}")' % (a[0], a[1])))
        tex = re.sub(r"\\left\\\{\s*\\begin\{array\}\{[^}]*\}(.*?)\\end\{array\}\s*\\right\.",
                     r"\\begin{cases}\1\\end{cases}", tex, flags=re.S)
        tex = self.replace_nested_cases(tex)
        tex = self.replace_tags(tex)
        tex = self.replace_numcases(tex)
        tex = re.sub(r"\\begin\{equation\}(.*?)\\end\{equation\}",
                     lambda m: self.slot("#numbered-eq($ %s $)" % tex_math_to_typst(m.group(1))), tex, flags=re.S)
        tex = self.replace_inline_envs(tex)
        tex = self.replace_tabular(tex)
        return tex

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
            for c in split_top(r, "&"):
                mc = re.match(r"\\multicolumn\{(\d+)\}\{([^}]*)\}", c)
                if mc:
                    content, _ = read_group(c, mc.end())
                    al = parse_colspec(mc.group(2))[0]
                    layout.append(("cell", len(cells), int(mc.group(1)), al[0][0] if al else "center"))
                    cells.append(content)
                else:
                    layout.append(("cell", len(cells), 1, None))
                    cells.append(c)
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
        widths = ", ".join(w for _, w in cols)
        aligns = ", ".join(a for a, _ in cols)
        return "#table(\n  columns: (%s,),\n  align: (%s,),\n  %s\n)" % (widths, aligns, "\n  ".join(items))

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
        """cases 里套 cases 时 pandoc 会转错，先把内层单独转换"""
        pat = re.compile(r"\\(begin|end)\{cases\}")
        while True:
            depth, start, target = 0, None, None
            for m in pat.finditer(tex):
                if m.group(1) == "begin":
                    depth += 1
                    start = m
                else:
                    if depth >= 2 and start is not None:
                        target = (start.start(), m.end())
                        break
                    depth -= 1
                    start = None
            if target is None:
                return tex
            a, b = target
            tex = tex[:a] + self.math_slot(tex_math_to_typst(tex[a:b])) + tex[b:]

    def replace_tags(self, tex: str) -> str:
        """\\tag{X}：对齐环境中改为右侧一栏的说明，其他公式中改为隔开一段的说明"""
        def in_align(m: re.Match) -> str:
            return replace_command(m.group(0), "tag", 1, lambda a: r"&&\text{(%s)}" % a[0])
        tex = re.sub(r"\\begin\{(align\*?|aligned|split|eqnarray\*?)\}.*?\\end\{\1\}", in_align, tex, flags=re.S)
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
            new = re.sub(r'upright\("PHM(\d+)"\)', lambda m: self.slots[int(m.group(1))], typ)
            new = re.sub(r"#smallcaps\[PH(\d+)\]", lambda m: self.slots[int(m.group(1))], new)
            if new == typ:
                break
            typ = new
        typ = fix_math(typ)
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
