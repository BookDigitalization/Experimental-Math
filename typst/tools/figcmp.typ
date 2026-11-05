// 每幅插图单独一页、页面大小随图（四周留 2pt，同 tikzref.py 中 LaTeX 版的对照图），供 tikzcmp.py 逐幅比对。
//   typst compile --root . --input vol=2 --input ids=1-01,1-02 typst/tools/figcmp.typ out-{0p}.png
#import "/typst/common/template.typ": fonts
#import "/typst/math" + sys.inputs.at("vol", default: "2") + "/figs.typ": figures

#set page(width: auto, height: auto, margin: 2pt)
#set text(font: fonts.serif, size: 10.5pt, lang: "zh")
#show math.equation: set text(font: ("New Computer Modern Math",) + fonts.serif.slice(1))
// 同 template.typ 的 book()：分式一律按 \dfrac 排，文字上下边界按字形
#show math.frac: it => if it.has("label") and it.label == <tfrac> { it } else { math.display(it) }
#set text(top-edge: "bounds", bottom-edge: "bounds")

#let ids = sys.inputs.at("ids", default: "").split(",").filter(s => s != "")
#for (k, id) in ids.enumerate() {
  if k > 0 { pagebreak() }
  figures.at(id, default: box(width: 1cm, height: 1cm, fill: red))
}
