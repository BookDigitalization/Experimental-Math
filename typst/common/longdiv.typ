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

// ---- 小数竖式除法：#declongdiv("2.00", 3, max-extra: 2)，对应 \longdivision[2]{2.00}{3} ----
// 同 longdivision 宏包：被除数的各位用完后继续补 0（最多 max-extra 位），从这时起余数一重复就停，
// 重复的商（循环节）上加横线。减数跨过小数点时也印出小数点（如 2.0 下的 1.8）
#let declongdiv(dividend, divisor, max-extra: 2) = {
  let chars = dividend.clusters()
  if "." not in chars { chars.push(".") }
  let rem = 0
  let quotient = ()   // 每列的商（小数点列为 "."）
  let qcol = ()       // 每个商对应的列
  let rows = ()
  let started = false
  let seen = (:)      // 补 0 阶段：余数 -> 第几个商
  let repeat-from = none
  let i = 0
  let extra = 0
  while true {
    if i >= chars.len() {
      // 被除数用完：补 0
      if rem == 0 or extra >= max-extra + 1 or repeat-from != none { break }
      chars.push("0")
      extra += 1
    }
    let c = chars.at(i)
    if c == "." { quotient.push("."); i += 1; continue }
    let cur = rem * 10 + int(c)
    let q = calc.quo(cur, divisor)
    quotient.push(q)
    if q > 0 {
      if started { rows.push((cur, i, false)) }
      rows.push((q * divisor, i, true))
      started = true
    }
    rem = cur - q * divisor
    i += 1
    // 被除数的各位用完以后，记录每一步的余数，重复时停止
    if i >= dividend.clusters().len() {
      let key = str(rem)
      if key in seen { repeat-from = seen.at(key); break }
      seen.insert(key, quotient.len())
    }
  }
  rows.push((rem, chars.len() - 1, false))
  let n = chars.len()
  let dot = chars.position(c => c == ".")

  // 一个数按位放进以 last 列为末位的格子，跨过小数点列时在那里印小数点
  let place-number(value, last, underline) = {
    let s = str(value).clusters()
    let cols = ()
    let c = last
    for k in range(s.len()) {
      if c == dot { c -= 1 }
      cols.push(c)
      c -= 1
    }
    let first = cols.last()
    range(n).map(col => {
      let k = cols.position(x => x == col)
      let content = if k != none { s.at(s.len() - 1 - k) } else if col == dot and col > first and col < last { "." } else { [] }
      let stroke = if underline and col >= first and col <= last { (bottom: rule) } else { none }
      grid.cell(content, stroke: stroke)
    })
  }
  // 商：整数部分的前导 0 不印，但个位印 0（如 0.666）
  let qcells = quotient.enumerate().map(((k, q)) => {
    if q == "." { "." }
    else if k < dot - 1 and q == 0 and quotient.slice(0, k).all(x => x == 0) { [] }
    else if repeat-from != none and k >= repeat-from { math.equation(math.overline(str(q))) }
    else { str(q) }
  })
  let make(rows) = grid(
    columns: (auto,) + (auto,) * n,
    column-gutter: 0pt,
    row-gutter: 0.35em,
    align: center + bottom,
    inset: (x: 0.05em, y: 0.15em),
    [], ..qcells,
    grid.cell(align: right)[#divisor#h(0.1em))], ..chars.map(d => grid.cell(stroke: (top: rule), d)),
    ..rows.map(((v, last, ul)) => ([], ..place-number(v, last, ul))).flatten(),
  )
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

// 整个多项式写成一个公式（整体排版，运算符两侧的间距才一致）
#let poly-text(coeffs, var) = {
  let n = coeffs.len() - 1
  let s = ""
  for (k, c) in coeffs.enumerate() {
    if c == 0 { continue }
    let d = n - k
    let a = calc.abs(c)
    let body = if d == 0 { str(a) } else {
      (if a == 1 { "" } else { str(a) }) + var + (if d == 1 { "" } else { "^" + str(d) })
    }
    s += (if c < 0 { " - " } else if s == "" { "" } else { " + " }) + body
  }
  if s == "" { $0$ } else { eval(s, mode: "math") }
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
  let common = (column-gutter: 0pt, row-gutter: 0pt, align: right + bottom, inset: (x: 0.13em, y: 0.35em))
  if style == "D" {
    let body-rows = ()
    for (i, (product, remainder)) in steps.enumerate() {
      body-rows.push(row-cells(product, underline: true))
      body-rows.push(row-cells(remainder))
    }
    let right = (
      grid.cell(align: left, stroke: (left: rule, bottom: rule), inset: (left: 0.3em, y: 0.35em), poly-text(divisor, var)),
      grid.cell(align: left, stroke: (left: rule), inset: (left: 0.3em, y: 0.35em), poly-text(quotient, var)),
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
      grid.cell(align: right, inset: (right: 0.2em, y: 0.35em))[#poly-text(divisor, var)$)$], ..row-cells(dividend-terms, overline: true),
      ..body-rows.flatten(),
    ))
  }
}
