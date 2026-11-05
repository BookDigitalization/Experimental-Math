// 第四册第 1 章的插图（对应 math4/1.tex 中的 tikzpicture，按出现顺序编号）
#import "../../common/fig.typ": *
#import "../../common/template.typ": tfrac, eqph

// 1-07：附三角函数公式表。各框是 tabular（标题行、\hline、aligned），框之间用箭头相连。
// 框的相对位置照 TikZ 源码：[xshift=16mm]D.north east 等
#let formula-table = {
  set text(size: 9pt)   // \small
  // 一个框：粗线（thick）外框，上下内边距 2pt，左右为 tabular 的列间距 6pt
  // lead：行间空白。LaTeX 中 aligned 的行距是固定的 \baselineskip 加 \jot，Typst 是固定的行间空白，按各框分别取值
  // CeTZ 的 content 里文字的上下边界不按字形算，含分式的行会叠在一起；框和标注里都设回 bounds（同正文）
  let bounds(body) = { set text(top-edge: "bounds", bottom-edge: "bounds"); body }
  let tbox(head, body, lead: 1em) = box(stroke: 0.8pt, inset: (y: 2pt), bounds(table(
    columns: 1, align: center, stroke: none, inset: (x: 6pt, y: 3pt),
    ..if head != none { (head, table.hline(stroke: 0.4pt)) },
    // 陈列公式（$ … $）改为 display 样式的行内公式：正文中陈列公式会被包进 width: 100% 的块并按版心宽度缩放，
    // 在自动宽度的单元格里就被缩得很小
    // 多行的行内公式第一行的高度少算了约 5pt，上内边距相应加大
    table.cell(inset: (x: 6pt, top: if head != none { 9pt } else { 7pt }, bottom: 3pt), { set par(leading: lead)
      // cetz.draw 的 content 遮住了类型 content，要写 std.content
      if type(body) == std.content and body.func() == math.equation { math.equation(block: false, math.display(body.body)) }
      else { body } }),
  )))
  let sp(..xs) = xs.pos().join(h(1em))
  let lab(p, body, pos) = node(p, bounds(body), pos: pos)
  canvas({
    content((0, 0), anchor: "north-west", name: "D", tbox(sp[两][角][差], $
      & sin(alpha - beta) \ & = sin alpha cos beta \ & quad eqph - cos alpha sin beta \
      & cos(alpha - beta) \ & = cos alpha cos beta \ & quad eqph + sin alpha sin beta $))
    content((rel: (1.6, 0), to: "D.north-east"), anchor: "north-west", name: "S", tbox(sp[两][角][和], $
      & sin(alpha + beta) \ & = sin alpha cos beta \ & quad eqph + cos alpha sin beta \
      & cos(alpha + beta) \ & = cos alpha cos beta \ & quad eqph - sin alpha sin beta $))
    content((rel: (1.2, 0), to: "S.north-east"), anchor: "north-west", name: "B", tbox([倍#h(2em)角], $
      & sin 2 alpha \ & = 2 sin alpha cos alpha \ & cos 2 alpha \
      & = cos^2 alpha - sin^2 alpha \ & = 2 cos^2 alpha - 1 \ & = 1 - 2 sin^2 alpha $, lead: 1.18em))

    let tanbox(a, b) = tbox(none, [#a\ #b], lead: 0.8em)
    content((rel: (0, 1), to: "D.north"), anchor: "south", name: "TD", tanbox($tan(alpha - beta)$,
      $= (tan alpha - tan beta) / (1 + tan alpha tan beta)$))
    content((rel: (0, 1), to: "S.north"), anchor: "south", name: "TS", tanbox($tan(alpha + beta)$,
      $= (tan alpha + tan beta) / (1 - tan alpha tan beta)$))
    content((rel: (0, 1), to: "B.north"), anchor: "south", name: "TB", tanbox($tan 2 alpha$,
      $= (2 tan alpha) / (1 - tan^2 alpha)$))
    for (a, b) in (("D", "TD"), ("S", "TS"), ("B", "TB")) {
      line(a + ".north", b + ".south", mark: arrow)
      lab((a + ".north", 50%, b + ".south"), [两式], "left")
      lab((a + ".north", 50%, b + ".south"), [相除], "right")
    }
    for (a, b, top, bottom) in (("D", "S", $"用" -beta$, $"代" beta$), ("S", "B", $beta = alpha$, none),
        ("TD", "TS", $"用" -beta$, $"代" beta$), ("TS", "TB", $beta = alpha$, none)) {
      let p = a + ".east"
      let q = (a + ".east", "-|", b + ".west")
      line(p, q, mark: arrows)
      lab((p, 50%, q), top, "above")
      if bottom != none { lab((p, 50%, q), bottom, "below") }
    }

    content((rel: (0, -1.3), to: ("D.south-west", 50%, "S.south-east")), anchor: "north", name: "P",
      tbox(sp[积][化][和][差], $
        sin alpha cos beta & = tfrac(1, 2) [sin(alpha + beta) + sin(alpha - beta)] \
        cos alpha sin beta & = tfrac(1, 2) [sin(alpha + beta) - sin(alpha - beta)] \
        cos alpha cos beta & = tfrac(1, 2) [cos(alpha + beta) + cos(alpha - beta)] \
        sin alpha sin beta & = -tfrac(1, 2) [cos(alpha + beta) - cos(alpha - beta)] $, lead: 0.85em))
    line("D.south", ("D.south", "|-", "P.north"), mark: arrow)
    line("S.south", ("S.south", "|-", "P.north"), mark: arrow)
    content((rel: (0.1, -0.65), to: "D.south"), anchor: "west", padding: inner-sep,
      align(left)[同名函数相加\ 与相减])

    content((rel: (0, -1.3), to: "B.south"), anchor: "north", name: "H", tbox([半#h(2em)角], $
      & sin alpha / 2 = plus.minus sqrt((1 - cos alpha) / 2) \
      & cos alpha / 2 = plus.minus sqrt((1 + cos alpha) / 2) $, lead: 0.3em))
    line("B.south", "H.north", mark: arrow)
    lab(("B.south", 50%, "H.north"), [变], "left")
    lab(("B.south", 50%, "H.north"), [形], "right")

    content((rel: (0, -1.8), to: "P.south"), anchor: "north", name: "Q", tbox(sp[和][差][化][积], $
      sin x + sin y & = 2 sin (x + y) / 2 cos (x - y) / 2 \
      sin x - sin y & = 2 cos (x + y) / 2 sin (x - y) / 2 \
      cos x + cos y & = 2 cos (x + y) / 2 cos (x - y) / 2 \
      cos x - cos y & = -2 sin (x + y) / 2 sin (x - y) / 2 $, lead: 0.45em))
    line("P.south", "Q.north", mark: arrow)
    lab(("P.south", 50%, "Q.north"), std.stack(spacing: 4pt, align(right)[以 $x$ 代 $alpha + beta$], align(right)[$y$ 代 $alpha - beta$]), "left")
    lab(("P.south", 50%, "Q.north"), std.stack(spacing: 4pt, [以 $(x + y) / 2$ 代 $alpha$], [以 $(x - y) / 2$ 代 $beta$]), "right")

    content((rel: (0, -1.8), to: "H.south"), anchor: "north", name: "T", tbox(none, $
      tan alpha / 2 & = plus.minus sqrt((1 - cos alpha) / (1 + cos alpha)) \
      & = (sin alpha) / (1 + cos alpha) \
      & = (1 - cos alpha) / (sin alpha) $, lead: 0.4em))
    line("H.south", "T.north", mark: arrow)
    lab(("H.south", 50%, "T.north"), [变], "left")
    lab(("H.south", 50%, "T.north"), [形], "right")
  })
}

#let figures = (
  "1-07": formula-table,
)
