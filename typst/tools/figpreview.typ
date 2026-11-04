// 插图预览：只排某一章的全部插图，便于和 LaTeX 版逐幅对照。在仓库根目录执行：
//   typst compile --root . --input ch=3 typst/tools/figpreview.typ fig3-{p}.png
// 目前对应第一册；其他册改下面 import 的路径。
#import "/typst/common/template.typ": fonts
#import "/typst/math1/figs.typ": figures

#set page(width: 16cm, height: auto, margin: 1cm)
#set text(font: fonts.serif, size: 10.5pt, lang: "zh")
#show math.equation: set text(font: ("New Computer Modern Math",) + fonts.serif.slice(1))

#let ch = sys.inputs.at("ch", default: "1")
#for (id, f) in figures.pairs().filter(((k, v)) => k.starts-with(ch + "-")) {
  block(stroke: 0.3pt + gray, inset: 6pt, width: 100%)[#text(fill: gray, id) #align(center, f)]
}