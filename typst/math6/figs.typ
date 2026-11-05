// 第六册的插图。正文中用 #fig("章-序号") 引用，序号是该图在 LaTeX 源码本章中的出现顺序
// （第几个 tikzpicture；附录 app.tex 的图记作 app-01 等）。gen-ch<章>.typ 由 tools/tikz2cetz.py 从 TikZ 源码自动生成；
// 需要手工修改的图写在 ch<章>.typ 的 figures 中，同名的图以手工的为准。
#import "../common/template.typ": todo-fig
#import "figs/gen-ch1.typ" as g1
#import "figs/gen-ch2.typ" as g2
#import "figs/gen-ch3.typ" as g3
#import "figs/gen-ch4.typ" as g4
#import "figs/gen-ch5.typ" as g5
#import "figs/gen-ch6.typ" as g6
#import "figs/gen-ch7.typ" as g7
#import "figs/gen-chapp.typ" as gapp
#import "figs/ch1.typ" as c1
#import "figs/ch2.typ" as c2
#import "figs/ch3.typ" as c3
#import "figs/ch4.typ" as c4
#import "figs/ch5.typ" as c5
#import "figs/ch6.typ" as c6
#import "figs/ch7.typ" as c7
#import "figs/chapp.typ" as capp

#let figures = (g1.figures + g2.figures + g3.figures + g4.figures + g5.figures + g6.figures + g7.figures + gapp.figures
  + c1.figures + c2.figures + c3.figures + c4.figures + c5.figures + c6.figures + c7.figures + capp.figures)

#let fig(id) = figures.at(id, default: todo-fig(id))
