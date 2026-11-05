// 第七章 代数运算的初步应用 的插图（对应 math1/7.tex 中的 tikzpicture，按出现顺序编号）
#import "../../common/fig.typ": *

// 数列各项及其名称：上排是项，下排是名称，指定的几列之间画竖线
#let sequence(terms, names, ruled) = {
  for (x, t) in terms.enumerate() { node((x, 0), [#t，]) }
  node((terms.len(), 0), [$dots.c$.])
  for (x, t) in names.enumerate() { node((x, -1), t) }
  for x in ruled { line((x, -.25), (x, -.75)) }
}

#let figures = (
  // 等差数列
  "7-01": canvas({
    scale(x: 1.6)
    sequence(
      ($a_1$, $a_1 + d$, $a_1 + 2d$, $dots.c$, $a_1 + 99d$),
      ([首项，], [第二项，], [第三项，], […，], [第100项，], [….]),
      (0, 1, 2, 4),
    )
  }),

  // 等比数列
  "7-02": canvas({
    scale(x: 1.5)
    sequence(
      ($a_1$, $a_1 q$, $a_1 q^2$, $dots.c$, $a_1 q^9$, $dots.c$, $a_1 q^100$),
      ([第一项，], [第二项，], [第三项，], […，], [第10项，], […，], [第101项，], [….]),
      (0, 1, 2, 4, 6),
    )
  }),

  // 综合除法的算式
  "7-03": canvas({
    scale(y: 1.2)
    for (x, t) in ((0, $2$), (1, $-1$), (2, $+1$)) { node((x, 2), t, pos: "left") }
    for (x, t) in ((1, $+2$), (2, $+1$)) { node((x, 1.5), t, pos: "left") }
    for (x, t) in ((0, $2$), (1, $+1$), (2, $+2$)) { node((x, 1), t, pos: "left") }
    for (x, t) in ((0, $2$), (1, $+3$)) { node((x, 0), t, pos: "left") }
    node((1, .5), $+2$, pos: "left")
    node((2.5, 2), [1])
    line((-1, .25), (1.25, .25), (1.25, 1.25))
    line((.2, .25), (.2, -.25), (1.5, -.25))
    line((-1, 1.25), (2.25, 1.25), (2.25, 2.5))
    line((1.25, .75), (2, .75))
    line((3, 1), (2, 1), mark: arrow)
    node((3, 1), $c$, pos: "right")
    line((2, 0), (1, 0), mark: arrow)
    node((2, 0), $b$, pos: "right")
    line((-1.5, 0), (-.5, 0), mark: arrow)
    node((-1.5, 0), $a$, pos: "left")
  }),
)
