// 第六册第 3 章的插图（对应 math6/3.tex 中的 tikzpicture，按出现顺序编号）
// 3-c1 … 3-c3 是 circuitikz 电路图（另行编号，见 tools/tikzref.py），tikz2cetz.py 不支持，在这里手工画。
// 元件的尺寸按 LaTeX 版（circuitikz 默认、european 样式）的图量出：所有元件都是水平放置的
#import "../../common/fig.typ": *

#let wire = 0.4pt
// 从 a 到 b 的导线，中间放一个元件：元件占 [中点 - half, 中点 + half]，两侧连导线
#let element(a, b, half, body) = {
  let (x0, y) = a
  let x1 = b.at(0)
  let (lo, hi) = (calc.min(x0, x1), calc.max(x0, x1))
  let m = (lo + hi) / 2
  line((lo, y), (m - half, y), stroke: wire)
  line((m + half, y), (hi, y), stroke: wire)
  body(m, y)
}
// 电阻（european）：1.12 × 0.42 的矩形
#let resistor(a, b) = element(a, b, 0.56, (m, y) => rect((m - 0.56, y - 0.21), (m + 0.56, y + 0.21), stroke: wire))
// 常开开关：刀片从左触点斜向上，右触点处断开；标注在上方
#let switch(a, b, label) = element(a, b, 0.22, (m, y) => {
  line((m - 0.22, y), (m + 0.22, y + 0.23), stroke: wire)
  content((m, y + 0.36), label, anchor: "south")
})
// 灯泡（european）：圆内画 ×
#let lamp(a, b) = element(a, b, 0.42, (m, y) => {
  circle((m, y), radius: 0.42, stroke: wire)
  let d = 0.42 / calc.sqrt(2)
  line((m - d, y - d), (m + d, y + d), stroke: wire)
  line((m - d, y + d), (m + d, y - d), stroke: wire)
})
// 电池：短、长、短、长四片极板
#let battery(a, b) = element(a, b, 0.213, (m, y) => {
  for (dx, h, w) in ((-0.213, 0.19, 1.1pt), (-0.073, 0.41, 1.1pt), (0.073, 0.19, 0.8pt), (0.213, 0.41, 0.8pt)) {
    line((m + dx, y - h), (m + dx, y + h), stroke: w)
  }
})

#let figures = (
  // 附加通路系统：两条 n 个元件串联的通路并联
  "3-c1": canvas({
    line((0, 0), (0.5, 0), (0.5, 0.5), stroke: wire)
    resistor((0.5, 0.5), (2.5, 0.5))
    resistor((2.5, 0.5), (4.5, 0.5))
    line((4.5, 0.5), (5, 0.5), stroke: wire)
    resistor((6, 0.5), (7.5, 0.5))
    line((0.5, 0), (0.5, -0.5), stroke: wire)
    resistor((0.5, -0.5), (2.5, -0.5))
    resistor((2.5, -0.5), (4.5, -0.5))
    line((4.5, -0.5), (5, -0.5), stroke: wire)
    line((4.5, -0.5), (6, -0.5), stroke: (thickness: wire, dash: "dashed"))
    line((4.5, 0.5), (6, 0.5), stroke: (thickness: wire, dash: "dashed"))
    resistor((6, -0.5), (7.5, -0.5))
    line((7.5, -0.5), (7.5, 0.5), stroke: wire)
    line((7.5, 0), (8.25, 0), stroke: wire)
    for (x, t) in ((3, [1]), (7, [2]), (13.5, $n$)) {
      content((x / 2, 0.5), t)
      content((x / 2, -0.5), t)
    }
  }),
  // 附加元件系统：n 对并联元件串联
  "3-c2": canvas({
    for x0 in (0.5, 3, 6.5) {
      line((x0, 0), (x0, 0.5), stroke: wire)
      resistor((x0, 0.5), (x0 + 1.5, 0.5))
      line((x0 + 1.5, 0.5), (x0 + 1.5, -0.5), stroke: wire)
      resistor((x0 + 1.5, -0.5), (x0, -0.5))
      line((x0, -0.5), (x0, 0), stroke: wire)
    }
    line((0, 0), (0.5, 0), stroke: wire)
    line((2, 0), (3, 0), stroke: wire)
    line((4.5, 0), (5, 0), stroke: wire)
    line((8, 0), (8.5, 0), stroke: wire)
    line((6, 0), (5, 0), stroke: (thickness: wire, dash: "dashed"))
    line((6, 0), (6.5, 0), stroke: wire)
    for (x, t) in ((2.5, [1]), (7.5, [2]), (14.5, $n$)) {
      content((x / 2, 0.5), t)
      content((x / 2, -0.5), t)
    }
  }),
  // 开关电路
  "3-c3": canvas({
    switch((0.5, 1.5), (2.5, 1.5), $A$)
    line((2.5, 1.5), (3, 1.5), stroke: wire)
    switch((3, 1.5), (3.5, 1.5), $B$)
    line((3.5, 1.5), (4, 1.5), stroke: wire)
    line((0.5, 1.5), (0.5, 0.5), stroke: wire)
    switch((0.5, 0.5), (4, 0.5), $C$)
    line((4, 0.5), (4, 1.5), stroke: wire)
    line((4, 1), (4.5, 1), (4.5, -0.5), stroke: wire)
    lamp((4.5, -0.5), (1.5, -0.5))
    battery((1.5, -0.5), (0, -0.5))
    line((0, -0.5), (0, 1), (0.5, 1), (0.5, 1.5), stroke: wire)
  }),
)
