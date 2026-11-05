"""把某册 LaTeX 源码中的 TikZ 插图逐幅编译成 PNG，作为 CeTZ 重画的对照基准。

    python typst/tools/tikzref.py 2 [输出目录]

图的编号与 tex2typ.py 相同（"章-序号"，序号是本章去掉注释后的第几个 tikzpicture）。
每幅图用 preview 宏包单独成页，排成一个 PDF，再按页转为 PNG（需要 xelatex 和 PyMuPDF）。
输出目录中还有 index.txt：每行是编号、PDF 页的宽和高（单位 cm）。
"""
import re
import subprocess
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).parent))
from tex2typ import strip_comments  # noqa: E402

ROOT = Path(__file__).resolve().parents[2]
DPI = 200


def volume_preamble(volume: int) -> str:
    """主文件中 \\input{../common/preamble.tex} 之后、\\begin{document} 之前的本册专用设置"""
    main = (ROOT / ("math%d" % volume) / "main.tex").read_text(encoding="utf-8")
    m = re.search(r"\\input\{\.\./common/preamble\.tex\}(.*?)\\begin\{document\}", main, re.S)
    return m.group(1) if m else ""


def pictures(volume: int):
    vdir = ROOT / ("math%d" % volume)
    for ch in range(1, 100):
        p = vdir / ("%d.tex" % ch)
        if not p.exists():
            break
        tex = strip_comments(p.read_text(encoding="utf-8"))
        for k, m in enumerate(re.finditer(r"\\begin\{tikzpicture\}.*?\\end\{tikzpicture\}", tex, re.S), 1):
            yield "%d-%02d" % (ch, k), m.group(0)


def main() -> None:
    volume = int(sys.argv[1])
    out = Path(sys.argv[2]) if len(sys.argv) > 2 else ROOT / "typst" / ("math%d" % volume) / "_ref"
    out.mkdir(parents=True, exist_ok=True)
    pics = list(pictures(volume))
    preamble = (ROOT / "common" / "preamble.tex").as_posix()
    doc = [r"\documentclass[b5paper]{ctexbook}",
           r"\input{%s}" % preamble,
           volume_preamble(volume),
           # 每幅图装进盒子，按盒子大小（四周留 2pt）单独输出一页
           r"\newsavebox\picbox",
           r"\newcommand\emitpic{\pdfpagewidth=\dimexpr\wd\picbox+4pt\relax"
           r"\pdfpageheight=\dimexpr\ht\picbox+\dp\picbox+4pt\relax"
           r"\hoffset=-1in\voffset=-1in"
           r"\shipout\vbox{\kern2pt\hbox{\kern2pt\usebox\picbox}}}",
           r"\begin{document}"]
    for _, body in pics:
        doc.append("\\begin{lrbox}{\\picbox}%s\\end{lrbox}\\emitpic" % body)
    doc.append(r"\end{document}")
    (out / "ref.tex").write_text("\n".join(doc), encoding="utf-8")
    subprocess.run(["xelatex", "-interaction=nonstopmode", "ref.tex"], cwd=out,
                   stdout=subprocess.DEVNULL, check=False)
    import pymupdf
    pdf = pymupdf.open(out / "ref.pdf")
    if pdf.page_count != len(pics):
        sys.exit("页数 %d 与图数 %d 不符，查看 %s" % (pdf.page_count, len(pics), out / "ref.log"))
    index = []
    for (fid, _), page in zip(pics, pdf):
        page.get_pixmap(dpi=DPI).save(out / ("%s.png" % fid))
        index.append("%s %.3f %.3f" % (fid, page.rect.width / 72 * 2.54, page.rect.height / 72 * 2.54))
    (out / "index.txt").write_text("\n".join(index) + "\n", encoding="utf-8")
    print("%d 幅图 -> %s" % (len(pics), out))


if __name__ == "__main__":
    main()
