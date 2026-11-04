// 第六章 分式与根式 的插图（对应 math1/6.tex 中的 tikzpicture，按出现顺序编号）
#import "../../common/fig.typ": *

#let figures = (
  // 行程问题：A、C、B 三地
  "6-01": canvas({
    line((0, 0), (8.2, 0))
    for (x, l) in ((0, $A$), (4, $C$), (8.2, $B$)) {
      node((x, 0), l, pos: "below")
      line((x, 0), (x, .75))
    }
    line((0, .35), (4, .35), mark: arrows, name: "ac")
    node("ac.mid", [$(87 - 45)$公里], fill: white)
    line((4, .35), (8.2, .35), mark: arrows, name: "cb")
    node("cb.mid", [45公里], fill: white)
  }),

  // 代数方程的分类
  "6-02": canvas({
    scale(y: .6)
    node((6, 3), [一次方程], pos: "right")
    node((6, 2), [二次方程], pos: "right")
    node((6, 1), [高次方程], pos: "right")
    node((4, 2), [整式方程], pos: "right")
    node((4, 0), [分式方程], pos: "right")
    node((2, 1), [有理方程], pos: "right")
    node((2, -1), [根式方程], pos: "right")
    node((0, 0), [代数方程], pos: "right")
    for (x, y) in ((6, 1), (4, 0), (2, -1)) {
      brace((x, y), (x, y + 2), stroke: 0.8pt)
    }
  }),
)
