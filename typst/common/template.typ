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

#let example(body) = {
  example-counter.step()
  block(width: 100%, above: 1em, below: 1em, {
    // 同 LaTeX 版的 \noindent：抵消段首缩进
    unindent
    context strong[例 #chapter-number().#example-counter.display()]
    h(0.3em)
    trim-start(body)
  })
}

#let labeled(label) = body => block(width: 100%, above: 0.8em, below: 0.8em)[
  #unindent#strong(label)#trim-start(body)
]

#let solution = labeled[解：]
#let analyze = labeled[分析：]
#let rmk = labeled[注意：]
#let note = labeled[说明：]
#let proof = labeled[证明：]

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

// 抵消段首缩进（独立公式之后接着写的文字，同 LaTeX 不缩进）
#let noindent = unindent

// 分栏（对应 multicols）。Typst 的 columns 不会像 multicols 那样把各栏排得一样高，
// 所以先量出排成一栏时的高度，再放进高度约为其 1/n 的盒子里分栏。
// 太高（超过半页）时改用普通分栏，以便跨页。
#let cols(n, body, gutter: 1.5em) = layout(size => {
  let w = (size.width - gutter * (n - 1)) / n
  let h = measure(block(width: w, body)).height
  if h / n > 12cm {
    columns(n, gutter: gutter, body)
  } else {
    block(width: 100%, height: h / n + 1.2em, breakable: false, columns(n, gutter: gutter, body))
  }
})

// 插图占位：CeTZ 图尚未画好时显示原 TikZ 图的编号
#let todo-fig(id) = align(center, block(
  stroke: (dash: "dashed", paint: red),
  inset: 1em,
  text(fill: red)[待绘制的插图 #id],
))

// 不编号的图（LaTeX 中没有 \caption 的 figure）：居中，图与图注“第 n 题”不分在两页
#let fig-center(body) = block(width: 100%, breakable: false, align(center, body))

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

// 宽于版心时缩小到版心宽度（对应 \resizebox{\textwidth}{!}{…}，但不放大）
#let fit-width(body) = layout(size => {
  let w = measure(body).width
  if w > size.width { scale(size.width / w * 100%, reflow: true, body) } else { body }
})

// 尚未转换的 LaTeX 结构（如竖式除法），原样显示源码以便查找
#let todo-raw(s) = text(fill: red, raw(s))

// 带编号的独立公式（对应 equation 环境；\[…\] 不编号），编号带章号，如 (7.7)
#let eq-numbering = n => "(" + str(chapter-number()) + "." + str(n) + ")"
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
  block(width: 100%, above: 1em, below: 1em, layout(size => {
    // 公式块居中后右侧剩下的宽度；说明放不下时同 LaTeX，移到下一行靠右排
    let lw = calc.max(..rows.map(((l, r, n)) => measure(l).width))
    let rw = calc.max(..rows.map(((l, r, n)) => measure(r).width))
    let side = (size.width - lw - rw) / 2
    let cells = ()
    for (l, r, n) in rows {
      let mark = if n == true { number } else if n == false { none } else { box(n) }
      let fits = mark == none or n == true or measure(mark).width + 1em.to-absolute() <= side
      cells += ([], l, r, if fits and mark != none { mark } else { [] })
      if not fits { cells.push(grid.cell(colspan: 4, align: right, mark)) }
    }
    // 整块宽于版心时缩小（LaTeX 版中这些公式排得下）
    fit-width(grid(
      columns: (1fr, auto, auto, 1fr),
      row-gutter: 0.8em,
      align: (right, right, left, right),
      ..cells,
    ))
  }))
}

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
  block(width: 100%, above: 1em, below: 1em, breakable: false, context {
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
      let sec-name = if sec == none { [] } else {
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
  // 表格的图注（“表 4.1”）在上方，同 LaTeX 版
  show figure.where(kind: table): set figure.caption(position: top)
  // 方程组各行的间距（LaTeX 的 cases 比 Typst 默认宽松）
  set math.cases(gap: 0.6em)
  // 宽于版心的独立公式缩小到版心宽度（LaTeX 版中这些公式排得下）
  show math.equation.where(block: true): it => fit-width(it)
  show table: set block(breakable: false)

  set enum(indent: 1em, body-indent: 0.6em, spacing: 0.86em, full: true, numbering: latex-enum)
  set list(indent: 1em, body-indent: 0.6em)
  set footnote(numbering: "①")
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
  show outline.entry.where(level: 2): it => if it.element.supplement == [toc-sub] { pad(left: 2em, it) } else { it }

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
