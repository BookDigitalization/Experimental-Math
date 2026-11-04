// 第四章 多项式的四则运算 的插图（对应 math1/4.tex 中的 tikzpicture，按出现顺序编号）
#import "../../common/fig.typ": *

// 不按 display 样式排的分数（对应 \tfrac；正文模板把 \frac 一律排成 \dfrac）
// 不能用 math.frac：外层的 show math.frac 规则仍会把它改成 display 样式，所以手工叠放
#let tfrac(a, b) = context {
  let n = text(size: .7em, $#a$)
  let d = text(size: .7em, $#b$)
  let w = calc.max(measure(n).width, measure(d).width) + 2pt
  let gap = 1.2pt
  box(
    baseline: measure(d).height + gap + 0.2pt - 0.25em,
    stack(
      spacing: gap,
      box(width: w, align(center, n)),
      std.line(length: w, stroke: 0.4pt),
      box(width: w, align(center, d)),
    ),
  )
}

// 波浪下划线（对应 ulem 的 \uwave）
#let uwave(body) = context {
  let w = measure(body).width
  let period = 3pt
  let n = calc.max(1, int(calc.round(w / period)))
  let step = w / n
  let segs = range(n).map(i => curve.quad(
    (i * step + step / 2, if calc.even(i) { 1pt } else { -1pt }),
    ((i + 1) * step, 0pt),
  ))
  box(body + place(bottom + left, dy: 2.5pt, curve(stroke: 0.4pt, curve.move((0pt, 0pt)), ..segs)))
}

// 分离系数法的竖式：nodes 为 (y, 内容) 列表，都从 x = 0 向右排；
// rules 为横线所在的 y，横线从 x = -1 画到 right；每条横线上方 0.25 处标“−)”
#let long-division(rows, rules, right: 3) = {
  for (y, t) in rows { node((0, y), t, pos: "right") }
  for y in rules {
    line((-1, y), (right, y))
    node((-.5, y + .25), $-)$)
  }
}

// 除式与商式写在右上角：竖线 x = right，横线到 right + 2
#let divisor-box(divisor, quotient, right: 3) = {
  line((right, .75), (right, -.25))
  line((right, .25), (right + 2, .25))
  node((right, .5), divisor, pos: "right")
  node((right, 0), quotient, pos: "right")
}

#let figures = (
  // 单项式的分类
  "4-01": canvas({
    node((-2, 0), [单项式], name: "A")
    node((1, 1), [非零单项式], name: "B")
    node((1, -1), [零单项式：$0$], name: "C")
    node((3, 2), [零次单项式：如$-7, med sqrt(2), med 1/2, med dots.c$], pos: "right", name: "D")
    node((3, 0), [非零次单项式：如$5x^2, med 1/4 x y^2, med dots.c$], pos: "right", name: "E")
    line("A", "B")
    line("A", "C")
    line("D", "B")
    line("E", "B")
  }),

  // 分离系数法：(3x^5 - 4x^4 - …) ÷ (x^3 - 2x^2 + x - 13)
  "4-02": canvas({
    node((0, 0.5), $3 + 2 - 1$, pos: "right")
    node((0.15, 0), $1 - 2 + 1 - 13)$, pos: "left")
    for y in (-0.5, -1.5, -2.5) { node((-.5, y), $-)$, pos: "left") }
    line((0, .25), (4.5, .25))
    node((0, 0), $3 - 4 - 2 - 35 - 28 + 18$, pos: "right")
    node((0, -.5), $3 - 6 + 3 - 39$, pos: "right")
    line((-1, -.75), (4.5, -.75))
    node((0, -1), $quad + 2 - 5 + 4 - 28$, pos: "right")
    node((0, -1.5), $quad + 2 - 4 + 2 - 26$, pos: "right")
    line((-1, -1.75), (4.5, -1.75))
    node((0, -2), $wide quad - 1 + 2 - 2 + 18$, pos: "right")
    node((0, -2.5), $wide quad - 1 + 2 - 1 + 13$, pos: "right")
    line((-1, -2.75), (4.5, -2.75))
    node((0, -3), $wide wide wide 0 - 1 + 5$, pos: "right")
  }),

  // 分离系数法的各部分名称
  "4-03": canvas({
    long-division(
      (
        (.5, $5 - 7 + 10 - 2 - 3$),
        (0, $5 + thick 0 thick - 5$),
        (-.5, [#h(1em)$-7 + 15 - 2$]),
        (-1, [#h(1em)$-7 + thick 0 thick + 7$]),
        (-1.5, [#h(1em)#h(2em)$15 - 9 - 3$]),
        (-2, [#h(1em)#h(2em)$15 + thick 0 thick - 15$]),
        (-2.5, [#h(1em)#h(2em)#h(2em)$-9 + 12$]),
      ),
      (-.25, -1.25, -2.25),
      right: 4,
    )
    node((-1, .5), [被除式：])
    node((7, .5), [除式])
    node((7, 0), [商式])
    node((4.5, -2.5), [余式])
    line((4, .75), (4, -.25))
    line((4, .25), (6, .25))
    node((4, .5), $1 + thick 0 thick - 1$, pos: "right")
    node((4, 0), $5 - 7 + 15$, pos: "right")
  }),

  // 例 4.37：(2x^3 - 4x^2 + x - 3) ÷ (x - 3)
  "4-04": canvas({
    long-division(
      (
        (.5, $2 - 4 + 1 - 3$),
        (0, $2 - 6$),
        (-.5, [#h(2em)$2 + 1$]),
        (-1, [#h(2em)$2 - 6$]),
        (-1.5, [#h(2em)#h(2em)$7 - 3$]),
        (-2, [#h(2em)#h(2em)$7 - 21$]),
        (-2.5, [#h(1em)#h(2em)#h(2em)$+18$]),
      ),
      (-.25, -1.25, -2.25),
    )
    divisor-box($1 - 3$, $2 + 2 + 7$)
  }),

  // 例 4.37：(2x^3 - 4x^2 + x - 3) ÷ 2(x - 3)
  "4-05": canvas({
    long-division(
      (
        (.5, $2 - 4 + 1 - 3$),
        (0, $2 - 6$),
        (-.5, [#h(2em)$2 + 1$]),
        (-1, [#h(2em)$2 - 6$]),
        (-1.5, [#h(2em)#h(2em)$7 - 3$]),
        (-2, [#h(2em)#h(2em)$7 - 21$]),
        (-2.5, [#h(1em)#h(2em)#h(2em)$+18$]),
      ),
      (-.25, -1.25, -2.25),
    )
    divisor-box($2 - 6$, $1 + 1 + tfrac(7, 2)$)
  }),

  // 例 4.38：(2x^3 + 3x - 1) ÷ (x - 4)
  "4-06": canvas({
    long-division(
      (
        (.5, $2 + 0 + 3 - 1$),
        (0, $2 - 8$),
        (-.5, [#h(2em)$8 + 3$]),
        (-1, [#h(2em)$8 - 32$]),
        (-1.5, [#h(2em)#h(2em)$35 - 1$]),
        (-2, [#h(2em)#h(2em)$35 - 140$]),
        (-2.5, [#h(1em)#h(2em)#h(2em)$+139$]),
      ),
      (-.25, -1.25, -2.25),
    )
    divisor-box($1 - 4$, $2 + 8 + 35$)
  }),

  // 同上，把商的各项系数框出
  "4-07": canvas({
    let boxed(body) = box(stroke: 0.4pt, inset: 3pt, body)
    long-division(
      (
        (.5, $2 + 0 + 3 - 1$),
        (0, $#boxed($2$) - 8$),
        (-.5, [#h(2em)$+8 + 3$]),
        (-1, [#h(2em)$#boxed($+8$) - 32$]),
        (-1.5, [#h(2em)#h(1em)$+35 - 1$]),
        (-2, [#h(2em)#h(1em)$#boxed($+35$) - 140$]),
        (-2.5, [#h(1em)#h(2em)#h(2em)$+139$]),
      ),
      (-.25, -1.25, -2.25),
    )
    divisor-box($1 - 4$, $2 + 8 + 35$)
  }),

  // 压缩成三行的算式（减法）
  "4-08": canvas({
    node((0, 0), [#h(1em)$-8 - 32 - 140$], pos: "right")
    node((0, .5), $2 + 0 + 3 thick thick - 1$, pos: "right")
    node((0, -.75), $2 + 8 + 35 + 139$, pos: "right")
    node((-.5, 0), $-)$)
    line((0.2, .25), (0.2, -.5), mark: arrow, stroke: (dash: "dashed"))
    line((-.5, -.25), (3, -.25))
    line((3, -.25), (3, .75))
    line((3, .25), (4, .25))
    node((3, .5), $-4$, pos: "right")
  }),

  // 改为加法
  "4-09": canvas({
    node((0, 0), [#h(1em)$+8 + 32 + 140$], pos: "right")
    node((0, .5), $2 + 0 + 3 thick thick - 1$, pos: "right")
    node((0, -.75), $2 + 8 + 35 + 139$, pos: "right")
    node((-.5, 0), $+)$)
    line((-.5, -.25), (3, -.25))
    line((3, -.25), (3, .75))
    line((3, .25), (4, .25))
    node((3, .5), $+4$, pos: "right")
  }),

  // 例 4.39：综合除法，除以 x + 3
  "4-10": canvas({
    node((0, .5), $7 + thick 0 thick + 5 + quad 0 thick + quad 4 + quad thick 3 + quad 1$, pos: "right")
    node((7, .5), $-3$)
    node((0, 0), $quad - 21 + 63 - 204 + 612 - 1848 + 5535$, pos: "right")
    node((-.5, 0), $+)$, pos: "left")
    line((-1, -.25), (6.5, -.25))
    node((0, -.75), $7 - 21 + 68 - 204 + 616 - 1845 + 5536$, pos: "right")
    line((6.5, -.25), (6.5, 1))
    line((6.5, .25), (7.5, .25))
  }),

  // 例 4.40：一般的综合除法
  "4-11": canvas({
    node((0, .5), $a_2 + a_1 wide wide + a_0$, pos: "right")
    node((6.5, .5), $b$)
    node((0, 0), $quad + a_2 b wide wide + (a_2 b + a_1) b$, pos: "right")
    node((-.5, 0), $+)$, pos: "left")
    line((-1, -.25), (6, -.25))
    // 正文版心较窄时 CeTZ 会让节点里的公式折行，所以给这一行定为它的自然宽度
    let last = [$a_2 + (a_2 b + a_1)$#h(1em)#uwave($+(a_2 b^2 + a_1 b + a_0)$)]
    node((0, -.75), context box(width: measure(last).width + 1pt, last), pos: "right")
    line((6, -.25), (6, 1))
    line((6, .25), (7, .25))
  }),

  // 例 4.41(1)：除以 x + 2/3
  "4-12": canvas({
    node((0, .5), $6 + 13 + 27 + 15$, pos: "right")
    node((4.5, .5), $-tfrac(2, 3)$)
    node((0, 0), [#h(1em)$-4 thick thick - 6 thick thick - 14$], pos: "right")
    node((-.5, 0), $+)$, pos: "left")
    line((-1, -.25), (4, -.25))
    node((0, -.75), $6 thick + 9 thick + 21 quad #uwave($+1$)$, pos: "right")
    line((4, -.25), (4, 1))
    line((4, .25), (5, .25))
  }),

  // 例 4.41(2)：除以 x - 1/4
  "4-13": canvas({
    node((0, .75), $8 + 0 + 0 + thick 7 quad - 1$, pos: "right")
    node((4.5, .75), $1/4$)
    node((0, 0), [#h(1em)$+2 + 1/2 + thick 1/8 thick + 57/32$], pos: "right")
    node((-.5, 0), $+)$, pos: "left")
    line((-1, -.5), (4, -.5))
    node((0, -1.2), $8 + 2 + 1/2 + 7 1/8 + #uwave($25/32$)$, pos: "right")
    line((4, -.5), (4, 1))
    line((4, .25), (5, .25))
  }),
)
