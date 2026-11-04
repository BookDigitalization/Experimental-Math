// 竖式除法，对应 LaTeX 版的 longdivision 宏包（\intlongdivision）和 polynom 宏包（\polylongdiv）。
// 与宏包一样由函数自己计算每一步，正文只需写被除式和除式。

#let rule = 0.4pt + black

// ---- 整数竖式除法：#intlongdiv(520, 3) ----
#let intlongdiv(dividend, divisor) = {
  let digits = str(dividend).clusters().map(int)
  let n = digits.len()
  let quotient = ()
  let rows = ()   // (数, 末位所在列, 是否加下划线)
  let rem = 0
  let started = false
  for (i, d) in digits.enumerate() {
    let cur = rem * 10 + d
    let q = calc.quo(cur, divisor)
    quotient.push(if q == 0 and not started { none } else { q })
    if q > 0 {
      if started { rows.push((cur, i, false)) }
      rows.push((q * divisor, i, true))
      started = true
    }
    rem = cur - q * divisor
  }
  rows.push((rem, n - 1, false))
  if not started { rows = ((rem, n - 1, false),) }

  // 把一个数按位放进第 last 列为末位的若干格
  let place-number(value, last, underline) = {
    let s = str(value).clusters()
    let first = last - s.len() + 1
    range(n).map(c => {
      let content = if c >= first and c <= last { s.at(c - first) } else { [] }
      let stroke = if underline and c >= first and c <= last { (bottom: rule) } else { none }
      grid.cell(content, stroke: stroke)
    })
  }

  let make(rows) = grid(
    columns: (auto,) + (auto,) * n,
    column-gutter: 0pt,
    row-gutter: 0.35em,
    align: center + bottom,
    inset: (x: 0.05em, y: 0.15em),
    [], ..quotient.map(q => if q == none { [] } else { str(q) }),
    grid.cell(align: right)[#divisor#h(0.1em))], ..digits.map(d => grid.cell(stroke: (top: rule), str(d))),
    ..rows.map(((v, last, ul)) => ([], ..place-number(v, last, ul))).flatten(),
  )
  // 与 longdivision 宏包一样，让被除数那一行落在正文的基线上
  context {
    let full = measure(make(rows)).height
    let head = measure(make(())).height
    box(baseline: full - head + 0.15em, make(rows))
  }
}

// ---- 多项式长除法：#polylongdiv((4, 5, -2, -3), (1, 2, 1)) ----
// 系数按降幂排列；除式首项系数须为 ±1（书中各例都是），商的系数才是整数。
// style: "A" 为常见的“商在上、除式在左”的格式；"D" 为“除式在右上、商在除式下方”的格式。

// 一项：(符号, 不带符号的项)
#let poly-term(c, d, var, first) = {
  let a = calc.abs(c)
  let body = if d == 0 { str(a) } else {
    (if a == 1 { "" } else { str(a) }) + var + (if d == 1 { "" } else { "^" + str(d) })
  }
  let b = eval(body, mode: "math")
  // 符号按二元运算符留空（首项的负号除外），与 polynom 宏包一致
  if c < 0 and first { $-#b$ } else if first { b } else if c < 0 { [$-$#h(.22em)#b] } else { [$+$#h(.22em)#b] }
}

// 整个多项式写成一个公式
#let poly-text(coeffs, var) = {
  let n = coeffs.len() - 1
  let first = true
  let parts = ()
  for (k, c) in coeffs.enumerate() {
    if c != 0 {
      parts.push(poly-term(c, n - k, var, first))
      first = false
    }
  }
  if parts.len() == 0 { $0$ } else { parts.join() }
}

#let polylongdiv(dividend, divisor, var: "x", style: "A") = {
  let N = dividend.len() - 1
  let M = divisor.len() - 1
  let lead = divisor.at(0)
  assert(calc.abs(lead) == 1, message: "polylongdiv：除式首项系数须为 ±1")
  let cur = dividend
  let quotient = range(N - M + 1).map(_ => 0)
  // 每一步：(被减的项, 余下的项)，都是 (次数: 系数) 字典
  let steps = ()
  for k in range(N - M + 1) {
    let q = calc.quo(cur.at(k), lead)
    quotient.at(k) = q
    let product = (:)
    for j in range(M + 1) {
      let d = N - k - j
      product.insert(str(d), -q * divisor.at(j))
      cur.at(k + j) = cur.at(k + j) - q * divisor.at(j)
    }
    let low = calc.max(0, N - k - M - 1)
    let remainder = (:)
    for d in range(N - k - 1, low - 1, step: -1) {
      remainder.insert(str(d), cur.at(N - d))
    }
    steps.push((product, remainder))
  }

  // 把一行（次数→系数）排进各列；空项留空。首个非零项不带“+”号
  let row-cells(terms, underline: false, overline: false) = {
    let first = true
    let degs = terms.keys().map(int)
    let (hi, lo) = if degs.len() == 0 { (-1, -1) } else { (calc.max(..degs), calc.min(..degs)) }
    let all-zero = terms.values().all(c => c == 0)
    let cells = ()
    for d in range(N, -1, step: -1) {
      let c = terms.at(str(d), default: none)
      let content = if c == none or c == 0 {
        if all-zero and d == lo and not underline { $0$ } else { [] }
      } else {
        let t = poly-term(c, d, var, first)
        first = false
        t
      }
      let inside = d <= hi and d >= lo
      let stroke = (
        bottom: if underline and inside { rule } else { none },
        top: if overline and inside { rule } else { none },
      )
      cells.push(grid.cell(content, stroke: stroke))
    }
    cells
  }

  let dividend-terms = (:)
  for (k, c) in dividend.enumerate() { dividend-terms.insert(str(N - k), c) }
  let quotient-terms = (:)
  for (k, c) in quotient.enumerate() { quotient-terms.insert(str(N - M - k), c) }

  // 列间不留空隙，靠单元格内边距隔开，这样上、下划线才连续
  let common = (column-gutter: 0pt, row-gutter: 0.3em, align: right + bottom, inset: (x: 0.13em, y: 0.2em))
  if style == "D" {
    let body-rows = ()
    for (i, (product, remainder)) in steps.enumerate() {
      body-rows.push(row-cells(product, underline: true))
      body-rows.push(row-cells(remainder))
    }
    let right = (
      grid.cell(align: left, stroke: (left: rule, bottom: rule), inset: (left: 0.3em, y: 0.2em), poly-text(divisor, var)),
      grid.cell(align: left, stroke: (left: rule), inset: (left: 0.3em, y: 0.2em), poly-text(quotient, var)),
    )
    box(grid(
      columns: (auto,) * (N + 1) + (1em, auto),
      ..common,
      ..row-cells(dividend-terms), [], right.at(0),
      ..body-rows.at(0), [], right.at(1),
      ..body-rows.slice(1).map(r => r + ([], [])).flatten(),
    ))
  } else {
    let body-rows = ()
    for (product, remainder) in steps {
      body-rows.push(([],) + row-cells(product, underline: true))
      body-rows.push(([],) + row-cells(remainder))
    }
    box(grid(
      columns: (auto,) * (N + 2),
      ..common,
      [], ..row-cells(quotient-terms),
      grid.cell(align: right, inset: (right: 0.2em, y: 0.2em))[#poly-text(divisor, var)$)$], ..row-cells(dividend-terms, overline: true),
      ..body-rows.flatten(),
    ))
  }
}
