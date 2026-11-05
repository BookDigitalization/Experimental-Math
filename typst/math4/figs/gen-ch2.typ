// 由 tools/tikz2cetz.py 从 math4/2.tex 自动生成，不要手工修改；
// 需要手工修改的图复制到 ch2.typ 的 figures 中，那里的同名图优先。
#import "../../common/fig.typ": *
#import "../../common/template.typ": todo-fig, tfrac

#let figures = (
  "2-01": canvas({
    let A1 = (-1, 1)
    node(A1, [$a_1$], name: "A1")
    let A2 = (-1, -1)
    node(A2, [$a_2$], name: "A2")
    let B1 = (1, 1)
    node(B1, [$b_1$], name: "B1")
    let B2 = (1, -1)
    node(B2, [$b_2$], name: "B2")
    line((name: "A1", anchor: -45deg), (name: "B2", anchor: 135deg), stroke: (paint: black, thickness: 1.2pt))
    line((name: "A2", anchor: 45deg), (name: "B1", anchor: -135deg), stroke: (paint: black, thickness: 1.2pt, dash: (3pt, 3pt,)))
  })
  ,
  // 转换失败：无法计算的表达式：[turn]0
  "2-02": todo-fig("2-02")
  ,
)
