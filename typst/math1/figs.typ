// 第一册的插图。正文中用 #fig("章-序号") 引用，序号是该图在 LaTeX 源码本章中的出现顺序
// （第几个 tikzpicture）。图用 CeTZ 画在 figs/ch<章>.typ 的 figures 字典中，还没画的图显示为占位框。
#import "../common/template.typ": todo-fig
#import "figs/ch1.typ" as c1

#let figures = c1.figures

#let fig(id) = figures.at(id, default: todo-fig(id))
