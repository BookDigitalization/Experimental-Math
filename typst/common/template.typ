// 六册共用的 Typst 模板，对应 LaTeX 版的 common/preamble.tex。
// 各册 main.typ 用 `#show: book.with(...)` 套用版式，正文中直接调用下面定义的函数。

#import "@preview/cetz:0.5.3"
#import "longdiv.typ": intlongdiv, polylongdiv

// ---- 字体 ----
// 西文与数学用 New Computer Modern（Typst 自带）；中文在 Windows 上用宋体、黑体、楷体，
// 在 Linux（CI）上用 Noto CJK 与文鼎楷体，与 LaTeX 版 ctex 的 windows / ubuntu 字体集一致。
// 用 `--input fontset=ubuntu` 切换，对应 LaTeX 版的环境变量 CTEX_FONTSET。
#let fontset = sys.inputs.at("fontset", default: "windows")
// 西文字体只用于拉丁字母（covers: "latin-in-cjk"），中文引号、省略号等标点用中文字体，与 xeCJK 一致
#let latin = (name: "New Computer Modern", covers: "latin-in-cjk")
#let fonts = if fontset == "ubuntu" {
  (
    serif: (latin, "Noto Serif CJK SC"),
    sans: (latin, "Noto Sans CJK SC"),
    kai: (latin, "AR PL KaitiM GB"),
  )
} else {
  (
    serif: (latin, "SimSun"),
    sans: (latin, "SimHei"),
    kai: (latin, "KaiTi"),
  )
}

// ---- 公式中的几个符号（章节文件 import 本模板后，这些名字覆盖 Typst 的同名符号） ----
// △、⊙ 按普通符号排，同 LaTeX 的 \triangle\,ABC、\odot O：Typst 把它们当作二元运算符，
// 后面多出空隙，还会在它们后面断行
#let triangle = (stroked: (t: math.class("normal", sym.triangle.stroked.t)))
#let dot = (o: math.class("normal", sym.dot.o), op: sym.dot.op, c: sym.dot.c)
// ∵ ∴：New Computer Modern Math 的字形比 LaTeX（amssymb）的小，放大到相近大小
#let because = math.class("relation", scale(125%, origin: bottom, reflow: true, sym.because))
#let therefore = math.class("relation", scale(125%, origin: bottom, reflow: true, sym.therefore))

#let cyan-frame = rgb("#0097b0")   // 约等于 LaTeX 的 cyan!75!black
#let magenta-frame = rgb("#c2186b") // 约等于 magenta!75!black

// ---- 中文数字（章节编号用） ----
#let chinese-number(n) = {
  let digits = ("零", "一", "二", "三", "四", "五", "六", "七", "八", "九")
  if n < 10 { digits.at(n) }
  else if n < 20 { "十" + if calc.rem(n, 10) > 0 { digits.at(calc.rem(n, 10)) } }
  else {
    digits.at(calc.quo(n, 10)) + "十" + if calc.rem(n, 10) > 0 { digits.at(calc.rem(n, 10)) }
  }
}

// 章号：例题、公式编号都带章号，如“例 1.3”“(7.7)”
#let chapter-number() = counter(heading).get().first()

// ---- 例题、解答等 ----
#let example-counter = counter("example")

// 抵消段首缩进（同 LaTeX 的 \noindent）。按当前的首行缩进量抵消：正文中为 2em，
// 列表项和框内本来不缩进，就什么也不做
#let unindent = context {
  let fi = par.first-line-indent
  h(-(if type(fi) == dictionary { fi.amount } else { fi }))
}

// 去掉内容开头的空格（#proof[ 换行 …] 中换行变成的空格）
#let trim-start(body) = {
  if body.has("children") {
    let ch = body.children
    while ch.len() > 0 and (ch.first() == [ ] or ch.first().func() == parbreak) { ch = ch.slice(1) }
    ch.join()
  } else { body }
}

// ---- “练习”框与带标题的框（对应 tcolorbox 的 ex、blk） ----
#let titled-box(title, color, title-align, body) = {
  let has-title = title != [] and title != [ ]
  block(
    width: 100%,
    above: if has-title { 1.4em } else { 1em },
    below: 1em,
    breakable: true,
    stroke: 0.8pt + color,
    radius: 4pt,
    inset: (x: 10pt, top: if has-title { 12pt } else { 8pt }, bottom: 8pt),
    {
    if has-title { place(
      top + title-align,
      dx: if title-align == left { 5mm } else { 0pt },
      dy: -12pt - 0.6em,
      box(fill: color, radius: 3pt, inset: (x: 8pt, y: 3pt), text(fill: white, font: fonts.sans, weight: "bold", title)),
    ) }
    // tcolorbox 内的段落不缩进
    set par(first-line-indent: 0pt)
    // 框内以独立公式开头时，公式的上方间距在框顶被吃掉，公式紧顶着标题条；补上一些
    let first = if body.has("children") { body.children.find(c => c != [ ] and c.func() != parbreak) } else { body }
    if has-title and first != none and first.func() == math.equation and first.block { v(0.4em) }
    body
  })
}

#let exercise(title: [练习], body) = titled-box(title, cyan-frame, center, body)
#let blk(title, body) = titled-box(title, magenta-frame, left, body)

// 选做题：在 enum 项目开头调用，题号左侧加“*”（同原书）
// LaTeX 各层列表的默认编号格式：1.  (a)  i.  A.
#let latex-pattern(level) = ("1.", "(a)", "i.", "A.").at(calc.clamp(level, 1, 4) - 1)

// 选做题：#staritem(n) 放在第 n 题的开头，“*”紧贴在题号“n.”左侧（零宽盒子里向左伸出，与题号同一基线）。
// 0.6em 是 enum 的 body-indent；题号靠右对齐，所以“*”的位置要按本题题号的宽度算
#let staritem(n, depth: 1) = context {
  let label = numbering(latex-pattern(depth), n)
  let w = measure(label).width + measure[\*].width + 0.6em.to-absolute()
  box(width: 0pt)[#h(-w)\*]
}

// 弧（\wideparen）：math.overparen 是可伸缩的括号，比字母宽出一截、位置也偏高；
// 用 ⏜ 作重音，紧贴字母，与 LaTeX 的 \wideparen 相近
#let wideparen(body) = math.accent(body, "\u{23DC}")

// 抵消段首缩进（独立公式之后接着写的文字，同 LaTeX 不缩进）
#let noindent = unindent

// 分栏（对应 multicols）。Typst 的 columns 不会像 multicols 那样把各栏排得一样高，
// 所以先量出排成一栏时的高度，再放进高度约为其 1/n 的盒子里分栏。
// 太高（超过半页）时改用普通分栏，以便跨页。
#let cols-by-height(n, body, gutter: 10pt) = layout(size => {
  let w = (size.width - gutter * (n - 1)) / n
  let h = measure(block(width: w, body)).height
  if h / n > 12cm {
    columns(n, gutter: gutter, body)
  } else {
    block(width: 100%, height: h / n + 1.2em, breakable: false, columns(n, gutter: gutter, body))
  }
})

#let cols(n, body, gutter: 10pt) = {
  // 内容全是编号列表的题目时，同 multicols 各栏高度相当：每栏 ⌈k/n⌉ 题，按列排
  let items = if body.has("children") { body.children.filter(c => c.func() == enum.item) } else { () }
  let others = if body.has("children") {
    body.children.filter(c => c.func() != enum.item and c != [ ] and c.func() != parbreak)
  } else { (body,) }
  // 若干个短段落（如证明中并排的几行）：同样每栏 ⌈k/n⌉ 段，按列排
  let paras = if body.has("children") and items.len() == 0 {
    // 去掉每段首尾的空格（段内的空格要保留）
    let trim(p) = {
      while p.len() > 0 and p.first() == [ ] { p = p.slice(1) }
      while p.len() > 0 and p.last() == [ ] { p = p.slice(0, -1) }
      p
    }
    body.children.split(parbreak()).map(trim).filter(p => p.len() > 0)
  } else { () }
  if paras.len() >= n and paras.len() <= 4 * n {
    let per = calc.ceil(paras.len() / n)
    let groups = range(n).map(i => paras.slice(calc.min(i * per, paras.len()), calc.min((i + 1) * per, paras.len())))
    block(breakable: false, grid(
      columns: (1fr,) * n,
      column-gutter: gutter,
      ..groups.map(g => g.map(p => p.join()).join(parbreak())),
    ))
  } else if items.len() > 0 and others.len() == 0 {
    context layout(size => {
      let total = items.len()
      let per = calc.ceil(total / n)
      let fmt = enum.numbering
      // 标号统一宽度（各格是单独的列表，否则 (i) 与 (d) 的正文起点不同）
      let label(p, k) = if type(fmt) == function { numbering(fmt, ..p.slice(0, -1), k) } else { numbering(fmt, k) }
      let lab = (..n) => context {
        let p = n.pos()
        let w = calc.max(..range(1, total + 1).map(k => measure([#label(p, k)]).width))
        box(width: w, align(right, label(p, p.last())))
      }
      // 栏内的列表与普通列表缩进相同（LaTeX 中 multicols 内的各项与栏外接续的各项标号对齐）；
      // 但有的小题按这个缩进在栏里排不下（Typst 的公式间距不能像 LaTeX 那样压缩）时，整组不缩进
      let cw = (size.width - gutter * (n - 1)) / n
      let lw = calc.max(..range(1, total + 1).map(k => measure([#numbering(if type(fmt) == function { latex-pattern(2) } else { fmt }, k)]).width))
      let widest = calc.max(..items.map(it => measure(it.body).width))
      let fits = enum.indent.to-absolute() + lw + enum.body-indent.to-absolute() + widest <= cw
      set enum(numbering: lab)
      set enum(indent: 0pt) if not fits
      // 逐行排：同一行的格子等高，左右两栏的小题对齐（编号仍按列：第 1 栏 1…per，第 2 栏 per+1…）
      let cells = ()
      for r in range(per) {
        for c in range(n) {
          let k = c * per + r
          cells.push(if k < total { enum(start: k + 1, items.at(k)) } else { [] })
        }
      }
      // 整组不跨页（同 multicols 的短内容）
      block(breakable: false, grid(
        columns: (1fr,) * n,
        column-gutter: gutter,
        row-gutter: enum.spacing,
        ..cells,
      ))
    })
  } else { cols-by-height(n, body, gutter: gutter) }
}

// 插图占位：CeTZ 图尚未画好时显示原 TikZ 图的编号
#let todo-fig(id) = align(center, block(
  stroke: (dash: "dashed", paint: red),
  inset: 1em,
  text(fill: red)[待绘制的插图 #id],
))

// 不编号的图（LaTeX 中没有 \caption 的 figure）：居中，图与图注“第 n 题”不分在两页
#let fig-center(body) = block(width: 100%, breakable: false, above: 1.1em, below: 1.1em, align(center, body))

// 不编号的图注（LaTeX 的 \caption*），字体同编号图注
#let subcap(body) = block(above: 0.6em, below: 0.6em, text(font: fonts.sans, weight: "bold", body))

// ---- 编号列表 ----
// 列表的层数（与 LaTeX 一样，练习框等 tcolorbox 内的列表接着框外的层数算）
#let latex-level(n) = n.len()

// LaTeX 各层的默认编号：1.  (a)  i.  A.（latex-pattern 定义在前面 staritem 之前）
#let latex-enum(..n) = context numbering(latex-pattern(latex-level(n.pos())), n.pos().last())

// 第 depth 层列表改用指定格式（对应 \begin{enumerate}[(1)]），pattern 为 none 时用默认格式；
// start 为本层的起始编号（不用 enum 的 start 参数，因为它会传给嵌套的各层）
#let enum-at(depth, pattern, start: 1) = (..n) => context {
  let n = n.pos()
  if latex-level(n) == depth {
    numbering(if pattern == none { latex-pattern(depth) } else { pattern }, n.last() + start - 1)
  } else {
    numbering(latex-pattern(latex-level(n)), n.last())
  }
}

// 是否为块级元素（列表项、独立公式、表格、图、框等），用于判断内容是否以块开头
#let inline-funcs = (text, strong, emph, box, h, smartquote, link, super, sub, underline, footnote, highlight, ref)
#let is-block(c) = {
  if c.func() == math.equation or c.func() == raw { c.block }
  else if c.has("children") { false }   // 行内的一串内容
  else { not inline-funcs.contains(c.func()) and c != [ ] }
}
#let first-content(body) = {
  let ch = if body.has("children") { body.children.filter(c => c != [ ] and c.func() != parbreak) } else { (body,) }
  if ch.len() == 0 { none } else { ch.first() }
}

// 列表的第一项与前面的标签排在同一行（同 LaTeX）：例题“例 1.4 1. …”、题号直接接小题“5. (a) …”。
// Typst 中列表项以嵌套列表开头时，外层题号按嵌套列表的顶端对齐（第一行有高分式时明显偏高）；
// 例题后直接是列表时“例 1.4”独占一行。这里把第一项排成段落：标号在行内，续行悬挂缩进到列表正文处，
// 外层题号就按这一行的基线对齐；其余各项照常排成列表。level 为这层列表的层数
#let lead-list(label, level, body) = context {
  let ch = if body.has("children") { body.children } else { (body,) }
  let items = ()
  let k = 0
  while k < ch.len() {
    let c = ch.at(k)
    if c.func() == enum.item { items.push(c) } else if not (c == [ ] or c.func() == parbreak) { break }
    k += 1
  }
  if items.len() == 0 { return { label; body } }
  let rest = ch.slice(k)
  let first-no = if items.first().has("number") and items.first().number != none { items.first().number } else { 1 }
  // 标号用当前的编号格式（可能被 enum-at 改过）；enum-at、latex-enum 只看层数和最后一个数
  let fmt = enum.numbering
  let num(n) = if type(fmt) == function { numbering(fmt, ..((1,) * (level - 1)), n) } else { numbering(fmt, n) }
  let nums = range(items.len()).map(i => num(first-no + i))
  let lw = calc.max(..nums.map(n => measure([#n]).width))
  let indent = enum.indent.to-absolute()
  let bi = enum.body-indent.to-absolute()
  let hang = indent + lw + bi
  // 第一项到第一个换段或块级元素为止排进这一段，其余部分整体缩进到列表正文处
  let fb = items.first().body
  let fch = if fb.has("children") { fb.children } else { (fb,) }
  let j = 0
  while j < fch.len() and fch.at(j).func() != parbreak and not is-block(fch.at(j)) { j += 1 }
  {
    set par(hanging-indent: hang, first-line-indent: 0pt)
    if label != none { label; h(1em, weak: true) } else { h(indent + lw - measure([#nums.first()]).width) }
    box(nums.first())
    h(bi)
    fch.slice(0, j).join()
  }
  if j < fch.len() { pad(left: hang, fch.slice(j).join()) }
  if items.len() > 1 { enum(start: first-no + 1, ..items.slice(1)) }
  rest.join()
}

#let example(body, star: false) = {
  example-counter.step()
  // star：选学的例题，“例”字左侧加“*”（伸进左边距，同 LaTeX 版的 \llap{*}）
  let mark = if star { context box(width: 0pt, move(dx: -measure(strong[\*]).width, strong[\*])) }
  let label = context { mark; box(strong[例 #chapter-number().#example-counter.display()]) }
  block(width: 100%, above: 1em, below: 1em, {
    let b = trim-start(body)
    let f = first-content(b)
    if f != none and f.func() == enum.item {
      // 例题以列表开头：第一项与“例 x.y”同一行
      lead-list(label, 1, b)
    } else {
      // 同 LaTeX 版的 \noindent：抵消段首缩进
      unindent
      // 标签放进盒子，两端对齐时空隙不会被拉进“例”与编号之间；其后空一字（同 LaTeX 版）
      label
      h(1em, weak: true)
      b
    }
  })
}

// 选学的例题（LaTeX 的 starexample）。不能写成 #example.with(star: true)[…]：后面的 […] 会被当作 with 的参数
#let starexample(body) = example(body, star: true)

// “解：”“证明：”等：内容以列表、独立公式等块开头时，标签单独成行，并与后面的块排在同一页（不孤零零留在页底）
#let labeled(label) = body => block(width: 100%, above: 0.8em, below: 0.8em, {
  let b = trim-start(body)
  let f = first-content(b)
  if f != none and is-block(f) {
    block(sticky: true, below: 0.56em, { unindent; strong(label) })
    b
  } else { unindent; strong(label); b }
})

#let solution = labeled[解：]
#let analyze = labeled[分析：]
#let rmk = labeled[注意：]
#let note = labeled[说明：]
#let proof = labeled[证明：]

// 宽于版心时缩小到版心宽度（对应 \resizebox{\textwidth}{!}{…}，但不放大）
#let fit-width(body) = layout(size => {
  let w = measure(body).width
  if w > size.width { scale(size.width / w * 100%, reflow: true, body) } else { body }
})

// 尚未转换的 LaTeX 结构（如竖式除法），原样显示源码以便查找
#let todo-raw(s) = text(fill: red, raw(s))

// 带编号的独立公式（对应 equation 环境；\[…\] 不编号），编号带章号，如 (7.7)
#let eq-numbering = n => "(" + str(chapter-number()) + "." + str(n) + ")"
// 独立公式上下的间距：LaTeX 版公式前后比行距多出约 10pt
#let disp-above = 1.4em
#let disp-below = 1.5em

#let numbered-eq(body) = math.equation(block: true, numbering: eq-numbering, body)

// 带编号或带 \tag 说明的多行对齐公式（对应 align 环境，以及带 \tag 的 align*、\[…\]）。
// 每行为 (左半, 右半, 编号)，左半右对齐、右半左对齐，相当于 LaTeX 中 & 两侧；
// 编号为 true（自动编号）、false（不编号）或内容（\tag 的说明，靠右排）
#let numbered-align(..rows) = {
  let number = {
    counter(math.equation).step()
    context "(" + str(chapter-number()) + "." + str(counter(math.equation).get().first()) + ")"
  }
  let eq(x) = math.equation(block: false, numbering: none, math.display(x))
  let rows = rows.pos().map(((l, r, n)) => (eq(l), eq(r), n))
  block(width: 100%, above: disp-above, below: disp-below, layout(size => {
    let lw = calc.max(..rows.map(((l, r, n)) => measure(l).width))
    let rw = calc.max(..rows.map(((l, r, n)) => measure(r).width))
    // 公式块居中后右侧剩下的宽度。说明放不下时同 amsmath：先把公式块左移，还放不下才移到下一行靠右排
    let side = (size.width - lw - rw) / 2
    let gap = 1em.to-absolute()
    let marks = rows.map(((l, r, n)) => if n == true { number } else if n == false { none } else { box(n) })
    let mw = calc.max(0pt, ..rows.zip(marks).filter(((row, m)) => m != none and row.at(2) != true).map(((row, m)) => measure(m).width))
    let shift = if mw + gap > side { calc.min(mw + gap - side, side) } else { 0pt }
    let indent = calc.max(0pt, side - shift)
    let cells = ()
    for ((l, r, n), mark) in rows.zip(marks) {
      let fits = mark == none or n == true or measure(mark).width + gap <= side + shift
      // 左右两半放在同一格的同一行里，基线对齐（分开放在两格时按顶端对齐，有分式时基线错开）
      cells.push(pad(left: indent, box(width: lw, align(right, l)) + r))
      cells.push(if fits and mark != none { mark } else { [] })
      if not fits { cells.push(grid.cell(colspan: 2, align: right, mark)) }
    }
    // 整块宽于版心时缩小（LaTeX 版中这些公式排得下）
    fit-width(grid(
      columns: (1fr, auto),
      row-gutter: 0.8em,
      align: (left + horizon, right + horizon),
      ..cells,
    ))
  }))
}

// numbered-align 右半以关系符开头时放在最前面的空占位：属普通符号类，使 = 两侧都有间距
#let eqph = math.class("normal", none)

// 不按 display 样式排的分数（对应 \tfrac）
// 用标签 <tfrac> 让下面 book() 中“分数一律 display”的 show 规则跳过它
#let tfrac(a, b) = math.inline([#math.frac(a, b)<tfrac>])

// 带编号的方程组（对应 cases 宏包的 numcases）：左侧一个大括号，每行各占一个公式编号
#let numcases(lhs, ..rows) = {
  let rows = rows.pos()
  let n = rows.len()
  let number = {
    counter(math.equation).step()
    context "(" + str(chapter-number()) + "." + str(counter(math.equation).get().first()) + ")"
  }
  let gutter = 0.7em
  let cells = rows.map(r => math.equation(block: false, numbering: none, math.display(r)))
  // 大括号的高度取各行实际高度之和，整组不跨页
  block(width: 100%, above: disp-above, below: disp-below, breakable: false, context {
    let height = cells.map(c => measure(c).height).sum() + gutter * (n - 1)
    grid(
      columns: (1fr, auto, auto, 1fr),
      row-gutter: gutter,
      align: (x, y) => (right, right + horizon, left + horizon, right + horizon).at(x),
      grid.cell(rowspan: n, []),
      grid.cell(rowspan: n, $lhs lr(\{ #block(height: height) #h(0pt))$),
      ..cells.map(c => (c, number)).flatten(),
    )
  })
}

// ---- 书的整体版式 ----
#let book(
  title: "",
  volume: "",
  author: "",
  date: "",
  paper: "iso-b5",
  body,
) = {
  set document(title: title + volume, author: author)
  set page(
    paper: paper,
    margin: 2.5cm,
    header: context {
      // 脚注每页从①编号（同 LaTeX 版的 footmisc perpage）
      counter(footnote).update(0)
      let page-no = counter(page).get().first()
      // 章首页不印页眉
      let starts = query(heading.where(level: 1)).filter(h => h.location().page() == here().page())
      if starts.len() > 0 { return }
      let prev = query(heading.where(level: 1).before(here()))
      let name = if prev.len() == 0 { [] } else {
        let hd = prev.last()
        if hd.numbering == none { hd.body } else {
          [第#chinese-number(counter(heading).at(hd.location()).first())章#h(1em)#hd.body]
        }
      }
      // 奇数页印节名（同 LaTeX 的 \rightmark：本页的第一节，本页没有节标题时取前面最近的一节）；
      // 本章还没有节时为空。不编号的 \section*（习题等）不算
      let chap = counter(heading).get().first()
      let in-chap(h) = h.numbering != none and counter(heading).at(h.location()).first() == chap
      let here-secs = query(heading.where(level: 2)).filter(h => h.location().page() == here().page() and in-chap(h))
      let prev-secs = query(heading.where(level: 2).before(here())).filter(in-chap)
      let sec = if here-secs.len() > 0 { here-secs.first() } else if prev-secs.len() > 0 { prev-secs.last() }
      // 前言、目录等不编号的章没有节，奇数页也印章名（同 LaTeX 的 \@mkboth{目录}{目录}）
      let front = prev.len() > 0 and prev.last().numbering == none
      let sec-name = if sec == none { if front { name } else { [] } } else {
        [第#chinese-number(counter(heading).at(sec.location()).at(1))节#h(1em)#sec.body]
      }
      set text(size: 9pt)
      set par(first-line-indent: 0pt)
      // 奇偶按印出的页码判断（前置部分与正文分别编号）
      if calc.even(page-no) [#counter(page).display()#h(1fr)#name]
      else [#sec-name#h(1fr)#counter(page).display()]
    },
    footer: context {
      let starts = query(heading.where(level: 1)).filter(h => h.location().page() == here().page())
      if starts.len() > 0 { align(center, text(size: 9pt, counter(page).display())) }
    },
  )

  // 行的上下边界按实际字形（bounds）计算：默认的 cap-height/baseline 不计入分母等伸到基线以下的部分，
  // 行内的高分式会与上下行重叠。LaTeX 遇到这种情况会自动加大行距。
  set text(font: fonts.serif, size: 10.5pt, lang: "zh", region: "cn", top-edge: "bounds", bottom-edge: "bounds")
  // 与 LaTeX 版一致：段落之间不额外加距离（spacing 与行距相同）
  set par(justify: true, first-line-indent: (amount: 2em, all: true), leading: 0.56em, spacing: 0.56em)
  // 两端对齐时允许字距略有伸缩（xeCJK 的汉字间距也可伸缩）。否则行内有长公式断不开时，
  // 多出的空隙只能全加在一行的汉字之间，字距被拉得很大
  set par(justification-limits: (tracking: (min: -0.02em, max: 0.03em)))
  // 列表项中的后续段落不缩进（同 LaTeX 的 \listparindent = 0）
  show enum: set par(first-line-indent: 0pt)
  show list: set par(first-line-indent: 0pt)
  show strong: set text(font: fonts.sans, weight: "regular")
  // 加粗文字中的公式不加粗（同 LaTeX 的 \textbf 不影响数学）
  show strong: it => { show math.equation: set text(weight: "regular"); it }
  show emph: set text(font: fonts.kai, style: "normal")
  // “latin-in-cjk”把带圈数字划给了西文字体（New Computer Modern 中 ① 的字形比步进宽，与相邻的字重叠），
  // 又把 en dash 划给了中文字体（“8–9”印得很宽）。各自改回来
  show regex("[\u{2460}-\u{2473}]"): set text(font: fonts.serif.slice(1))
  show "–": set text(font: "New Computer Modern")

  // 原书的 \frac 一律按 \dfrac 排
  show math.frac: it => if it.has("label") and it.label == <tfrac> { it } else { math.display(it) }
  // 公式中的中文（如 \text{个}）回落到正文的中文字体
  show math.equation: set text(font: ("New Computer Modern Math",) + fonts.serif.slice(1))
  set table(stroke: none)
  // 表格线同 LaTeX（\arrayrulewidth 0.4pt）；单元格上下的内边距小一些（LaTeX 的表格行只有支柱高度，没有额外留白）
  set table.hline(stroke: 0.4pt)
  set table.vline(stroke: 0.4pt)
  set table(inset: (x: 6pt, y: 0.3em))
  // 单元格中的文字按字体的上伸、下伸部定高（而非字形的实际边界），垂直居中时同一行各格的基线才对齐
  show table: set text(top-edge: "ascender", bottom-edge: "descender")
  // 表格的图注（“表 4.1”）在上方，同 LaTeX 版
  show figure.where(kind: table): set figure.caption(position: top)
  // 方程组各行的间距（LaTeX 的 cases 比 Typst 默认宽松）
  set math.cases(gap: 0.6em)
  // 宽于版心的独立公式缩小到版心宽度（LaTeX 版中这些公式排得下）
  // 独立公式上下的间距（LaTeX 的 \abovedisplayskip、\belowdisplayskip）。套在 fit-width 外面，
  // 否则公式在 fit-width 的 layout 里，自身的间距在容器边上被吞掉
  show math.equation.where(block: true): it => block(width: 100%, above: disp-above, below: disp-below, fit-width(it))
  // \verb：Typst 的 raw 默认缩小到 0.8em，LaTeX 的 \verb 与正文同大
  show raw: set text(size: 1.25em)
  // 短的行内公式不在中间断行。Typst 在关系符、运算符后都可以断行，LaTeX 则因 \relpenalty、\binoppenalty
  // 很少这样断，Typst 版常出现“AD >”在行末、“CD”在下一行的情况
  show math.equation.where(block: false): it => context {
    let w = measure(it).width
    // 盒子要给定宽度，否则公式在盒子里照样折行
    if w < 9em.to-absolute() { box(width: w + 0.01pt, it) } else { it }
  }
  show table: set block(breakable: false)

  set enum(indent: 1em, body-indent: 0.6em, spacing: 0.86em, full: true, numbering: latex-enum)
  set list(indent: 1em, body-indent: 0.6em)
  // 列表（含嵌套的小题）与前后文字的距离同项间距（LaTeX 的 \topsep 与 \itemsep 相当），否则比项间距还小
  show enum: set block(above: 0.86em, below: 0.86em)
  show list: set block(above: 0.86em, below: 0.86em)
  // 图与前后文字之间留出空白（同 LaTeX 的 \intextsep）
  show figure: set block(above: 1.1em, below: 1.1em)
  set footnote(numbering: "①")
  show footnote.entry: set text(size: 9pt)
  // 图注：“图 1.1”加粗，编号带章号；LaTeX 版多为空的 \caption{}，此时只印编号
  set figure(gap: 0.6em, numbering: n => str(chapter-number()) + "." + str(n))
  show figure.caption: it => context {
    set text(font: fonts.sans, weight: "bold")
    it.supplement + " " + it.counter.display(it.numbering)
    if it.body != [] and it.body != [ ] { h(1em) + it.body }
  }

  // 章节编号：第一章 / 第一节 / 一、/（一）
  set heading(numbering: (..n) => {
    let n = n.pos()
    if n.len() == 1 { "第" + chinese-number(n.at(0)) + "章" }
    else if n.len() == 2 { "第" + chinese-number(n.at(1)) + "节" }
    else if n.len() == 3 { chinese-number(n.at(2)) + "、" }
    else if n.len() == 4 { "（" + chinese-number(n.at(3)) + "）" }
  })
  // 标题中的汉字用黑体，西文字母和数字用粗体（同 LaTeX 的 \bfseries）
  show heading: set text(font: fonts.sans, weight: "bold")
  show heading.where(level: 1): it => {
    pagebreak(weak: true)
    counter(math.equation).update(0)
    example-counter.update(0)
    counter(footnote).update(0)
    counter(figure.where(kind: image)).update(0)
    counter(figure.where(kind: table)).update(0)
    v(2.5em)
    align(center, text(size: 22pt, {
      if it.numbering != none { counter(heading).display(it.numbering); h(1em) }
      it.body
    }))
    v(2em)
  }
  // sticky：标题与下文排在同一页，不单独留在页底
  show heading.where(level: 2): it => block(width: 100%, sticky: true, above: 1.6em, below: 1.2em,
    align(center, text(size: 15pt, {
      if it.numbering != none { counter(heading).display(it.numbering); h(1em) }
      it.body
    })))
  show heading.where(level: 3): it => block(sticky: true, above: 1.2em, below: 0.8em, text(size: 12pt, {
    if it.numbering != none { counter(heading).display(it.numbering) }
    it.body
  }))
  show heading.where(level: 4): it => block(sticky: true, above: 1em, below: 0.7em, text(size: 10.5pt, {
    if it.numbering != none { counter(heading).display(it.numbering) }
    it.body
  }))

  // 目录
  show outline.entry.where(level: 1): set block(above: 1.2em)
  show outline.entry.where(level: 1): set text(font: fonts.sans)
  // “习题 1.1”等不编号的节，LaTeX 版用 \addcontentsline{toc}{subsection} 列入目录，与小节同级缩进
  // （缩进到与“一、”等第三级条目对齐：Typst 按上一级编号“第一节”的宽度缩进第三级，约 3.6em）
  show outline.entry.where(level: 2): it => if it.element.supplement == [toc-sub] { pad(left: 3.6em, it) } else { it }
  // 章一级的条目同 LaTeX 版：不加点线，页码加粗
  show outline.entry.where(level: 1): it => link(it.element.location(), it.indented(it.prefix(),
    it.body() + h(1fr) + text(font: fonts.serif, weight: "bold", it.page())))

  // 封面
  page(header: none, footer: none, {
    v(25%)
    align(center, {
      text(size: 26pt, font: fonts.sans)[#title]
      v(0.6em)
      text(size: 26pt, font: fonts.sans)[#volume]
      v(3em)
      text(size: 14pt, author)
      v(1em)
      text(size: 14pt, date)
    })
  })
  counter(page).update(1)
  set page(numbering: "i")

  body
}

#let toc() = {
  heading(numbering: none, outlined: false)[目#h(1em)录]
  outline(title: none, depth: 3)
}
