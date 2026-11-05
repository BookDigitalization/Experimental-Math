// 第一章 有理数系 的插图（对应 math1/1.tex 中的 tikzpicture，按出现顺序编号）
#import "../../common/fig.typ": *

#let figures = (
  // 底数、指数与幂
  "1-01": canvas({
    node((0, 0), [底数$a^(n "指数")$], name: "A", frame: "rect")
    node((3, 0), [幂], name: "B")
    line("A.east", "B.west")
  }),

  // 有理数的分类
  "1-02": canvas({
    node((0, 0), [有理数], name: "A")
    node((2, 1.5), [整数], name: "B1")
    node((2, -1.5), [分数], name: "B2")
    node((4, 2.5), [正整数（自然数）], pos: "right", name: "B11")
    node((4, 1.5), [零], pos: "right", name: "B12")
    node((4, .5), [负整数], pos: "right", name: "B13")
    node((4, -.5), [正分数], pos: "right", name: "B21")
    node((4, -2.5), [负分数], pos: "right", name: "B22")
    line("A.north-east", "B1.south-west", mark: arrow)
    line("A.south-east", "B2.north-west", mark: arrow)
    for (from, to) in (("B1", "B11"), ("B1", "B12"), ("B1", "B13"), ("B2", "B21"), ("B2", "B22")) {
      line(from + ".east", to + ".west", mark: arrow)
    }
  }),

  // 数轴的三要素：原点、单位长、正方向
  "1-03": canvas({
    dot((0, 0))
    node((0, -.25), $O$)
    line((0, 1), (1, 1), mark: bars, name: "unit")
    node("unit.mid", [1], pos: "above")
    axis(-3, 4)
    line((-1, -1), (1, -1), mark: arrow)
    node((1, -1), [正方向], pos: "right")
  }),

  // 数轴上的点 A～F
  "1-04": canvas({
    dot((0, 0))
    for (x, l) in ((3, $A$), (-1.5, $B$), (-.5, $C$), (1.25, $D$), (-2, $E$), (-3, $F$)) {
      dot((x, 0))
      node((x, 0), l, pos: "below", dist: 3pt)
    }
    axis(-4, 4)
    node((0, .3), $0$)
    node((1, .3), $1$)
    line((0, 0), (1, 0), mark: bars, stroke: 0.8pt)
  }),

  // 在数轴上表示有理数
  "1-05": canvas({
    let pts = (
      (0, $O$, "below"), (0, $0$, "above"), (1, $+1$, "below"), (-1, $-1$, "below"),
      (-.5, $-0.5$, "above"), (.5, $0.5$, "above"),
      (1.5, $-(-1 1/2)$, "above"), (-1.5, $-1 1/2$, "above"),
      (-3.5, $-3.5$, "above"), (3.5, $3.5$, "above"),
      (2.5, $+2 1/2$, "below"), (-2.5, $-2 1/2$, "below"),
    )
    for (x, l, pos) in pts {
      dot((x, 0))
      node((x, 0), l, pos: pos, dist: 3pt)
    }
    axis(-4, 4)
  }),

  // 减法化为加法
  "1-06": canvas({
    node((0, 0), text(size: 1.728em, $x - y = x + (-y)$))
    line((-1.5, .3), (-1.5, 1), (.7, 1), (.7, .3), mark: arrows, stroke: (dash: "dashed"))
    node((-.4, 1), [减法化加法], pos: "above")
    line((-1, -.3), (-1, -1), (2, -1), (2, -.3), mark: arrows, stroke: (dash: "dashed"))
    node((.5, -1), [换成相反数], pos: "below")
  }),

  // 数轴上的点 A～F 及其坐标
  "1-07": canvas({
    scale(x: .8)
    line((-10, 0), (4, 0), mark: arrow, stroke: 1.2pt)
    node((4, 0), $X$, pos: "right")
    for (x, l) in ((-9, $A$), (-7, $B$), (-1.4, $C$), (0, $O$), (0.5, $D$), (1.4, $E$), (3, $F$)) {
      line((x, -.1), (x, .1))
      node((x, -.1), eval(str(x), mode: "math"), pos: "above", dist: 4pt)
      node((x, .1), l, pos: "below", dist: 4pt)
    }
  }),
)
