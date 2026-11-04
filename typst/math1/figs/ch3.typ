// 第三章 一元二次方程 的插图（对应 math1/3.tex 中的 tikzpicture，按出现顺序编号）
#import "../../common/fig.typ": *
#import "../../common/template.typ": tfrac

// 对应 [|<->|] 的尺寸线
#let dim-marks = (start: ("|", "stealth"), end: ("|", "stealth"), fill: black)

// 对应 pattern=crosshatch（横竖网格）
#let crosshatch = tiling(size: (4pt, 4pt), {
  place(std.line(start: (0pt, 0pt), end: (4pt, 0pt), stroke: 0.4pt))
  place(std.line(start: (0pt, 0pt), end: (0pt, 4pt), stroke: 0.4pt))
})

// 开平方竖式中的根号
#let radical = llarge($sqrt(#h(0pt))$)

// 查表后移动小数点的示意（3-10、3-11）
#let shift-figure(body, solid, dashed) = canvas({
  scale(y: .6)
  node((0, 0), large(body))
  let (pts, label) = solid
  line(..pts, mark: arrow, stroke: 1.2pt)
  node(((pts.at(1).at(0) + pts.at(2).at(0)) / 2, pts.at(1).at(1)), label, pos: "above")
  let (pts, label) = dashed
  line(..pts, mark: arrow, stroke: (thickness: 0.8pt, dash: "dashed"))
  node(((pts.at(1).at(0) + pts.at(2).at(0)) / 2, pts.at(1).at(1)), label, pos: "above")
})

#let figures = (
  // (a+b)^2 = a^2 + 2ab + b^2
  "3-01": canvas({
    scale(.7)
    rect((0, 0), (6, 6))
    line((0, 2), (6, 2))
    line((2, 0), (2, 6))
    rect((2, 0), (6, 2), fill: hatch-nw, stroke: none)
    rect((0, 2), (2, 6), fill: hatch-ne, stroke: none)
    node((1, 4), $a b$, fill: white)
    node((4, 1), $a b$, fill: white)
    node((1, 1), $b^2$, fill: white)
    node((4, 4), $a^2$, fill: white)
    for (x, l) in ((0, $C$), (2, $F$), (6, $B$)) { node((x, 0), l, pos: "below") }
    for (x, l) in ((0, $D$), (2, $H$), (6, $A$)) { node((x, 6), l, pos: "above") }
    node((0, 2), $G$, pos: "left")
    node((6, 2), $E$, pos: "right")
    for (x, l) in ((1, $b$), (4, $a$)) {
      node((x, 6), l, pos: "above")
      node((6, x), l, pos: "right")
    }
    node((2.4, 2.4), $M$)
  }),

  // (a-b)^2 = a^2 - 2ab + b^2
  "3-02": canvas({
    scale(.6)
    rect((0, 0), (6, 6))
    line((0, 2), (6, 2))
    line((4, 0), (4, 6))
    rect((0, 0), (6, 2), fill: hatch-nw, stroke: none)
    rect((4, 0), (6, 6), fill: hatch-ne, stroke: none)
    node((2, 1), $a b$, fill: white)
    node((5, 4), $a b$, fill: white)
    node((5, 1), $b^2$, fill: white)
    node((2, 4), $(a - b)^2$, fill: white)
    for (x, l) in ((0, $E$), (4, $F$), (6, $G$)) { node((x, 0), l, pos: "below") }
    for (x, l) in ((0, $A$), (4, $D$), (6, $M$)) { node((x, 6), l, pos: "above") }
    node((0, 2), $B$, pos: "left")
    node((6, 2), $H$, pos: "right")
    node((3.3, 2.4), $C$, pos: "right")
    for (a, b, l) in (((-1, 0), (-1, 6), $a$), ((0, 7), (6, 7), $a$), ((4, -1), (6, -1), $b$), ((7, 0), (7, 2), $b$)) {
      line(a, b, mark: dim-marks, name: "d")
      node("d.mid", l, fill: white)
    }
  }),

  // 面积为 2 的正方形
  "3-03": canvas({
    scale(.5)
    rect((0, 0), (8, 8), fill: hatch-ne)
    line((4, 0), (8, 4), (4, 8), (0, 4), close: true, fill: white)
    for (x, l) in ((0, $B$), (4, $F$), (8, $C$)) { node((x, 0), l, pos: "below") }
    for (x, l) in ((0, $A$), (4, $H$), (8, $D$)) { node((x, 8), l, pos: "above") }
    node((0, 4), $E$, pos: "left")
    node((8, 4), $G$, pos: "right")
    for x in (2, 6) {
      node((x, 0), [1], pos: "below")
      node((x, 8), [1], pos: "above")
      node((0, x), [1], pos: "left")
      node((8, x), [1], pos: "right")
    }
    for x in (1, 7) {
      node((x, x), $tfrac(1, 2)$, fill: white)
      node((x, 8 - x), $tfrac(1, 2)$, fill: white)
    }
    node((4, 4), large[2])
    node((2, 2), $sqrt(2)$, pos: "right")
    node((6, 2), $sqrt(2)$, pos: "left")
    node((2, 6), $sqrt(2)$, pos: "right")
    node((6, 6), $sqrt(2)$, pos: "left")
  }),

  // 面积为 3 的正方形
  "3-04": canvas({
    scale(1.5)
    let s = 1 + 1.414
    rect((0, 0), (s, s))
    line((1, 0), (2.414, 1), (1.414, 2.414), (0, 1.414), close: true, fill: hatch-ne)
    node((1, 0), $F$, pos: "below")
    node((2.414, 1), $G$, pos: "right")
    node((1.414, 2.414), $H$, pos: "above")
    node((0, 1.414), $E$, pos: "left")
    node((0, 0), $B$, pos: "below")
    node((2.414, 0), $C$, pos: "below")
    node((0, 2.414), $A$, pos: "above")
    node((2.414, 2.414), $D$, pos: "above")
    node((2.414 / 2, 2.414 / 2), large[3], fill: white)
    node((.5, 0), [1], pos: "below")
    node((3.414 / 2, 0), $sqrt(2)$, pos: "below")
    node((0, 1.414 + 0.5), [1], pos: "left")
    node((0, 1.414 / 2), $sqrt(2)$, pos: "left")
    node((1.414 + 0.5, 2.414), [1], pos: "above")
    node((1.414 / 2, 2.414), $sqrt(2)$, pos: "above")
    node((2.414, .5), [1], pos: "right")
    node((2.414, 3.414 / 2), $sqrt(2)$, pos: "right")
  }),

  // 面积为 7 的正方形
  "3-05": canvas({
    rect((0, 0), (3.732, 3.732))
    line((1.732, 0), (3.732, 1.732), (2, 3.732), (0, 2), close: true, fill: hatch-nw)
    node((1.732, 0), $F$, pos: "below")
    node((3.732, 1.732), $G$, pos: "right")
    node((2, 3.732), $H$, pos: "above")
    node((0, 2), $E$, pos: "left")
    node((0, 0), $B$, pos: "below")
    node((3.732, 0), $C$, pos: "below")
    node((0, 3.732), $A$, pos: "above")
    node((3.732, 3.732), $D$, pos: "above")
    node((3.732 / 2, 3.732 / 2), large[7], fill: white)
    node((2.732, 0), [2], pos: "below")
    node((1.732 / 2, 0), $sqrt(3)$, pos: "below")
    node((0, 1), [2], pos: "left")
    node((0, 2.732), $sqrt(3)$, pos: "left")
    node((1, 3.732), [2], pos: "above")
    node((2.732, 3.732), $sqrt(3)$, pos: "above")
    node((3.732, 2.732), [2], pos: "right")
    node((3.732, 1.732 / 2), $sqrt(3)$, pos: "right")
  }),

  // 面积为 5/2 的正方形
  "3-06": canvas({
    scale(2)
    rect((0, 0), (2, 2))
    line((.5, 0), (2, .5), (1.5, 2), (0, 1.5), close: true, fill: hatch-nw)
    node((1, 1), large($5/2$), fill: white)
    node((.25, 0), [0.5], pos: "below")
    node((2.5 / 2, 0), [1.5], pos: "below")
    node((0, 3.5 / 2), [0.5], pos: "left")
    node((0, 1.5 / 2), [1.5], pos: "left")
    node((3.5 / 2, 2), [0.5], pos: "above")
    node((1.5 / 2, 2), [1.5], pos: "above")
    node((2, .25), [0.5], pos: "right")
    node((2, 2.5 / 2), [1.5], pos: "right")
  }),

  // 开平方：√2809 = 53
  "3-07": canvas({
    scale(y: .6)
    node((0, 2), [#ts#ts;5#ts;3], pos: "right")
    node((0, 1), "28'09", pos: "right")
    node((2, 1), $(50 + b)^2$, pos: "right")
    node((0, 0), [25], pos: "right")
    node((2, 0), $50^2$, pos: "right")
    node((0, -1), [#ts#ts;309], pos: "right")
    node((2, -1), $(50 + b)^2 - 50^2$, pos: "right")
    node((2, -2), $= 2 times 50 times b + b^2$, pos: "right")
    node((-.5, -1), [103], pos: "left")
    node((-2, -1), $2 times 50 + b$, pos: "left")
    node((.1, 1), radical, pos: "left")
    node((0, -3), [#ts#ts;309], pos: "right")
    node((2, -3), $(2 times 50 + b) #sym.dot.op b$, pos: "right")
    node((-.5, -3), [3], pos: "left")
    node((-2, -3), $b$, pos: "left")
    node((0, -4), [#q#ts; 0], pos: "right")
    line((0, 1.5), (1.5, 1.5))
    line((0, -3.5), (0, -.5), (1.5, -.5))
    line((-2, -3.5), (1.5, -3.5))
    for y in (1, 0, -1, -3) { node((1.5, y), [……]) }
    for y in (-1, -3) { node((-1.6, y), [……]) }
  }),

  // 开平方：√2 = 1.414…
  "3-08": canvas({
    scale(y: .6)
    node((0, 2), [1\. 4 #ts; 1#ts; 4……], pos: "right")
    node((0, 1), "2.00'00'00", pos: "right")
    node((0, 0), [1], pos: "right")
    node((0, -1), [1#ts;00], pos: "right", name: "A")
    node((.1, 1), radical, pos: "left")
    node((0, -2), [#ts#ts 96], pos: "right")
    node((0, -3), [#q#ts 4#ts;00], pos: "right", name: "B")
    node((0, -4), [#q#ts 2#ts;81], pos: "right")
    node((0, -5), [#q#ts 1#ts;19#ts;00], pos: "right", name: "C")
    node((0, -6), [#q#ts 1#ts;12#ts;96], pos: "right")
    node((0, -7), [#qq#q;6#ts;04], pos: "right")
    node((0, -7.6), [#qq#qq;$dots.v$], pos: "right")
    line((0, 1.5), (3, 1.5))
    for y in (-2.5, -4.5, -6.5) {
      let x = -0.5 - y * .15
      line((x, y), (3, y))
      line((x, y), (x, y + 2))
    }
    node((-.5, 0), $-)$)
    line((-.5, -.5), (3, -.5))
    for (y, t) in ((-1, $2 times 10 + 4 = 24$), (-3, $2 times 140 + 1 = 281$), (-4, $1$),
      (-5, $2 times 1410 + 4 = 2824$), (-6, $4$), (-2, $4$)) {
      node((-.5 - y * 0.15, y), t, pos: "left")
    }
    node((5, -2), [每次增补两位0], name: "D")
    node((5, -3), [但平方根只增一位], name: "D1")
    line("D.west", "A.east", mark: arrow)
    line("D.west", "B.east", mark: arrow)
    line("D1.west", "C.east", mark: arrow)
  }),

  // 开平方：√1650.7969 = 40.63
  "3-09": canvas({
    scale(y: .6)
    node((0, 2), [4#q;0. #ts;6#ts; 3], pos: "right")
    node((0, 1), "16'50.79' 69", pos: "right")
    node((0, 0), [16], pos: "right")
    node((0, -1), [#q;50#ts; 79], pos: "right")
    node((.1, 1), radical, pos: "left")
    node((0, -2), [#q;48#ts; 36], pos: "right")
    node((0, -3), [#q#ts; 2#ts; 43#ts; 69], pos: "right")
    node((0, -4), [#q#ts; 2#ts; 43#ts; 69], pos: "right")
    node((0, -5), [#qq#qq#ts#ts; 0], pos: "right")
    line((0, 1.5), (3, 1.5))
    for y in (-2.5, -4.5) {
      line((-1.5, y), (3, y))
      let x = -0.5 - y * .15
      line((x, y), (x, y + 2))
    }
    node((-.5, 0), $-)$)
    line((-1.5, -.5), (3, -.5))
    for (y, t) in ((-1, $806$), (-2, $times) thick 6$), (-3, $8123$), (-4, $times) thick 3$)) {
      node((-.2, y), t, pos: "left")
    }
  }),

  "3-10": shift-figure(
    [$because$ 查$sqrt(3.662) = 1.914$,#qq$therefore thick sqrt(366.2) = 19.14$],
    (((2.8, -.4), (2.8, -1.5), (-3, -1.5), (-3, -.4)), [左移2位]),
    (((-1.2, -.4), (-1.2, -2.5), (4.5, -2.5), (4.5, -.4)), [右移1位]),
  ),

  "3-11": shift-figure(
    [$because$ 查$sqrt(14.78) = 3.845$,#qq$therefore thick sqrt(0.1478) = 0.3845$],
    (((2, -.4), (2, -1.5), (-3, -1.5), (-3, -.4)), [右移2位]),
    (((-1.4, -.4), (-1.4, -2.5), (4.2, -2.5), (4.2, -.4)), [左移1位]),
  ),

  // 实数的分类
  "3-12": canvas({
    node((0, 0), [实数], pos: "right")
    node((1, 1), [有理数], pos: "right")
    node((1, -1), [无理数], pos: "right")
    node((2.5, 1.5), [正有理数], pos: "right")
    node((2.5, 1), [零], pos: "right")
    node((2.5, .5), [负有理数], pos: "right")
    node((2.5, -.5), [正无理数], pos: "right")
    node((2.5, -1.5), [负无理数], pos: "right")
    node((4.25, 1.75), [正整数（自然数）], pos: "right")
    node((4.25, 1.25), [正分数（小数）], pos: "right")
    node((4.25, .75), [负整数], pos: "right")
    node((4.25, .25), [负分数（负小数）], pos: "right")
    brace((1, -1), (1, 1))
    brace((2.5, .5), (2.5, 1.5))
    brace((2.5, -1.5), (2.5, -.5))
    brace((4.3, 1.1), (4.3, 1.9))
    brace((4.3, .1), (4.3, .9))
  }),

  // 长方形面积 32 m²
  "3-13": canvas({
    rect((0, 0), (4, 2), fill: hatch-ne)
    node((2, 0), $x + 4$, pos: "below")
    node((0, 1), $x$, pos: "left")
    node((2, 1), $32 upright(m)^2$, fill: white)
  }),

  "3-14": canvas({
    rect((0, 0), (5, 3))
    line((3, 0), (3, 3), stroke: (dash: "dashed"))
    node((0, 1.5), $x$, pos: "left")
    node((2.5, 3), $x + 4$, pos: "above")
    node((1.5, 1.5), large($x^2$))
    node((4, 1.5), large($4x$))
    node((3, .5), [32$upright(m)^2$])
  }),

  "3-15": canvas({
    rect((0, 0), (5, 3))
    line((3, 0), (3, 3))
    rect((0, 0), (3, -1), fill: hatch-ne, stroke: (dash: "dashed"))
    rect((4, 0), (5, 3), fill: hatch-ne, stroke: none)
    node((1.5, 1.5), large($x^2$), fill: white)
    node((3.5, 1.5), large($2x$), fill: white)
    node((4.5, 1.5), large($2x$), fill: white)
    node((1.5, -.5), large($2x$), fill: white)
    line((4, 0), (4, 3), stroke: (dash: "dashed"))
    line((0, 0), (0, -1), (3, -1), (3, 0), stroke: (dash: "dashed"))
  }),

  "3-16": canvas({
    rect((0, 0), (4, 4))
    line((0, 1), (4, 1))
    line((3, 0), (3, 4))
    rect((3, 0), (4, 1), fill: crosshatch, stroke: none)
    node((1.5, .5), large($2x$), fill: white)
    node((1.5, 2.5), large($x^2$), fill: white)
    node((3.5, 2.5), large($2x$), fill: white)
    node((3.5, .5), $2^2$, fill: white)
  }),

  "3-17": canvas({
    rect((0, 0), (4, 2))
    node((2, 0), $x$, pos: "below")
    node((2, 2), $x$, pos: "above")
  }),

  // 直角三角形上的动点
  "3-18": canvas({
    line((0, 0), (3, 0), (3, 4), close: true, stroke: 0.8pt)
    node((0, 0), $A$, pos: "below")
    node((3, 0), $C$, pos: "below")
    node((3, 4), $B$, pos: "above")
    line((1, 0), (3, 1), stroke: 1.2pt)
    node((1, 0), $P$, pos: "below")
    node((3, 1), $Q$, pos: "right")
    line((1.5, -.25), (2, -.25), mark: arrow)
    line((3.25, 1.3), (3.25, 2.3), mark: arrow)
  }),

  // 长方形铁皮四角剪去正方形
  "3-19": canvas({
    scale(.8)
    rect((0, 0), (8, 4))
    for (x, y) in ((0, 0), (7, 0), (0, 3), (7, 3)) {
      rect((x, y), (x + 1, y + 1), fill: hatch-ne)
    }
    rect((1, 1), (7, 3), stroke: (dash: "dashed"))
  }),
)
