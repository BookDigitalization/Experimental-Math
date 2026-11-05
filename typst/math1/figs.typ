// 第一册的插图。正文中用 #fig("章-序号") 引用，序号是该图在 LaTeX 源码本章中的出现顺序
// （第几个 tikzpicture）。图用 CeTZ 画在 figs/ch<章>.typ 的 figures 字典中，还没画的图显示为占位框。
#import "../common/template.typ": todo-fig
#import "figs/ch1.typ" as c1
#import "figs/ch2.typ" as c2
#import "figs/ch3.typ" as c3
#import "figs/ch4.typ" as c4
#import "figs/ch5.typ" as c5
#import "figs/ch6.typ" as c6
#import "figs/ch7.typ" as c7

#let figures = c1.figures + c2.figures + c3.figures + c4.figures + c5.figures + c6.figures + c7.figures

#let fig(id) = figures.at(id, default: todo-fig(id))
