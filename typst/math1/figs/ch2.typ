// 第二章 一次方程 的插图（对应 math1/2.tex 中的 tikzpicture，按出现顺序编号）
#import "../../common/fig.typ": *

#let figures = (
  // 两个方程的解集及其交集
  "2-01": canvas({
    scale(1.5)
    circle((0, 0), radius: 1.2)
    circle((2, 0), radius: 1.8)
    // 两圆相交的部分：x = 0.55 处相交，左圆最右点 (1.2, 0)，右圆最左点 (0.2, 0)
    merge-path(fill: hatch-nw, stroke: none, {
      arc-through((0.55, 1.067), (1.2, 0), (0.55, -1.067))
      arc-through((0.55, -1.067), (0.2, 0), (0.55, 1.067))
    })
    node((0, .8), $A$)
    node((.7, .25), $A inter B$, fill: white)
    node((.7, -.25), $(4, 2)$, fill: white)
    node((2.2, 1.5), $B$)
    node((-.4, .5), $(5, 0)$)
    node((-.4, 0), $(3, 4) thick (2, 6)$)
    node((-.4, -.5), $(1, 8) thick (0, 10)$)
    node((2.5, .6), $(6, 0) quad (5, 1)$)
    node((2.5, 0), $(3, 3) quad (2, 4)$)
    node((2.5, -.6), $(1, 5) quad (0, 6)$)
  }),

  // 消元
  "2-02": canvas({
    scale(1.3)
    let names = ([多元], [……], [三元], [二元], [一元])
    for (i, t) in names.enumerate() {
      node((2 * i, 0), text(size: 1.44em, t), name: "n" + str(i))
    }
    for i in range(4) {
      line("n" + str(i) + ".east", "n" + str(i + 1) + ".west", mark: arrow, name: "e" + str(i))
      node("e" + str(i) + ".mid", [消元], pos: "above")
    }
  }),

  // 阴影部分的面积（四幅小图）
  "2-03": canvas({
    scale(.7)
    // 圆内接长方形
    group({
      circle((2, 1.5), radius: 2.5, fill: hatch-ne)
      rect((0, 0), (4, 3), fill: white)
      line((0, 0), (4, 3), mark: arrows, name: "d")
      node("d.mid", $2R$, pos: "above")
      node((2, 0), $a$, pos: "above")
      node((0, 1.5), $b$, pos: "right")
    })
    // 长方形内挖去半圆
    group({
      translate((6, 0))
      rect((0, 0), (5, 3), fill: hatch-ne)
      arc((.5, 0), start: 180deg, stop: 0deg, radius: 2, fill: white, mode: "CLOSE")
      line((2.5, 0), polar(40deg, 2, from: (2.5, 0)), mark: arrow, name: "r")
      node("r.mid", $R$, pos: "above")
      node((2.5, 3), $a$, pos: "above")
      node((5, 1.5), $b$, pos: "right")
    })
    // 半圆内挖去圆
    group({
      translate((0, -6))
      arc((0, 0), start: 180deg, stop: 0deg, radius: 2.6, fill: hatch-ne, mode: "CLOSE")
      circle((2.6, 1.3), radius: 1.3, fill: white)
      line((0, 0), (5.2, 0))
      line((0, -.2), (5.2, -.2), mark: arrows, name: "D")
      line((0, -.1), (0, -.3))
      line((5.2, -.1), (5.2, -.3))
      node("D.mid", $D$, pos: "below")
    })
    // 长方形四角各剪去一个正方形
    group({
      translate((6, -6))
      rect((0, 0), (6, 4), fill: hatch-ne, stroke: none)
      for (x, y) in ((0, 0), (0, 3), (5, 0), (5, 3)) {
        rect((x, y), (x + 1, y + 1), fill: white, stroke: none)
      }
      for x in (0, 4) {
        line((1, x), (5, x))
        line((x * 1.5, 1), (x * 1.5, 3))
      }
      line((0, 1), (1, 1), (1, 0))
      node((1, .5), $x$, pos: "left")
      line((0, 3), (1, 3), (1, 4))
      node((1, 3.5), $x$, pos: "left")
      line((5, 0), (5, 1), (6, 1))
      line((5, 4), (5, 3), (6, 3))
      node((5.5, 3), $x$, pos: "above")
      node((3, 4), $4x$, pos: "above")
      node((6, 2), $2x$, pos: "right")
    })
  }),

  // 正方形内挖去正方形
  "2-04": canvas({
    scale(.7)
    rect((0, 0), (4.5, 4.5), fill: hatch-ne)
    rect((1.2, 1.2), (3.3, 3.3), fill: white)
    line((3.3, 1.5), (4.5, 1.5), mark: arrows, name: "w")
    node("w.mid", [2], pos: "above", fill: white)
  }),
)
