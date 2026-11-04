// 画插图用的 CeTZ 辅助函数，尽量贴近 LaTeX 版 TikZ 的写法和默认样式。
// 坐标单位与 TikZ 相同（1 = 1cm）。
#import "@preview/cetz:0.5.3"
#import cetz.draw: *

// TikZ 节点默认的内边距 inner sep = .3333em
#let inner-sep = .3333em

// 对应 [>=latex] 的实心箭头
#let arrow = (end: "stealth", fill: black, scale: .8)
#let arrows = (start: "stealth", end: "stealth", fill: black, scale: .8)
// 对应 [|-|]
#let bars = (start: "|", end: "|")

// 实心小圆点：\draw[fill=black] (p) circle(1.5pt)
#let dot(p, r: 1.5pt) = circle(p, radius: r, fill: black, stroke: none)

// 节点。pos 为 TikZ 的位置选项：none（居中）、"above"、"below"、"left"、"right"，
// 以及 "above left" 等组合；dist 对应 above=3pt 中的 3pt。
// fill: white 对应 TikZ 的 [fill=white]（遮住底下的线）。
#let node(p, body, pos: none, dist: 0pt, name: none, frame: none, fill: none) = {
  let anchor = if pos == none { "center" } else {
    let m = (above: "south", below: "north", left: "east", right: "west",
      "above left": "south-east", "above right": "south-west",
      "below left": "north-east", "below right": "north-west")
    m.at(pos)
  }
  if fill != none and frame == none {
    content(p, body, anchor: anchor, padding: inner-sep + dist, name: name, frame: "rect", fill: fill, stroke: none)
  } else {
    content(p, body, anchor: anchor, padding: inner-sep + dist, name: name, frame: frame)
  }
}

// 斜线阴影，对应 pattern=north east lines（"/"）和 north west lines（"\"）
#let hatch-ne = tiling(size: (4pt, 4pt), {
  place(curve(curve.move((-1pt, 5pt)), curve.line((5pt, -1pt)), stroke: 0.4pt))
  place(curve(curve.move((-1pt, 1pt)), curve.line((1pt, -1pt)), stroke: 0.4pt))
  place(curve(curve.move((3pt, 5pt)), curve.line((5pt, 3pt)), stroke: 0.4pt))
})
#let hatch-nw = tiling(size: (4pt, 4pt), {
  place(curve(curve.move((-1pt, -1pt)), curve.line((5pt, 5pt)), stroke: 0.4pt))
  place(curve(curve.move((3pt, -1pt)), curve.line((5pt, 1pt)), stroke: 0.4pt))
  place(curve(curve.move((-1pt, 3pt)), curve.line((1pt, 5pt)), stroke: 0.4pt))
})

// 节点文字中的空白：\quad、\qquad、\;（5/18 em）、\,（3/18 em）
#let q = h(1em)
#let qq = h(2em)
#let ts = h(5em / 18)
#let ths = h(3em / 18)

// TikZ 的 \Large、\LARGE（相对正文 10.5pt）
#let large(body) = text(size: 1.44em, body)
#let llarge(body) = text(size: 1.728em, body)

// 极坐标点 (角度:半径)，对应 TikZ 的 (40:2)
#let polar(angle, r, from: (0, 0)) = (from.at(0) + r * calc.cos(angle), from.at(1) + r * calc.sin(angle))

// 大括号：对应 decorate, decoration=brace，从 a 到 b，尖角在路径前进方向的左侧
#let brace(a, b, ..args) = cetz.decorations.brace(a, b, ..args)

// 数轴：从 a 到 b 画带箭头的横轴，末端标 label
#let axis(a, b, y: 0, label: $X$, stroke: 0.4pt) = {
  line((a, y), (b, y), mark: arrow, stroke: stroke)
  node((b, y), label, pos: "right")
}

// TikZ 默认线宽 0.4pt（CeTZ 默认 1pt）；thick、very thick 分别对应 0.8pt、1.2pt
#let canvas(body, ..args) = cetz.canvas({
  set-style(stroke: 0.4pt + black, mark: (scale: .8))
  body
}, ..args)
