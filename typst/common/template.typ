// 六册共用的 Typst 模板，对应 LaTeX 版的 common/preamble.tex。
// 各册 main.typ 用 `#show: book.with(...)` 套用版式，正文中直接调用下面定义的函数。

#import "@preview/cetz:0.5.3"
#import "longdiv.typ": intlongdiv, polylongdiv

// ---- 字体 ----
// 西文与数学用 New Computer Modern（Typst 自带）；中文在 Windows 上用宋体、黑体、楷体，
// 在 Linux（CI）上用 Noto CJK 与文鼎楷体，与 LaTeX 版 ctex 的 windows / ubuntu 字体集一致。
// 用 `--input fontset=ubuntu` 切换，对应 LaTeX 版的环境变量 CTEX_FONTSET。
#let fontset = sys.inputs.at("fontset", default: "windows")
#let fonts = if fontset == "ubuntu" {
  (
    serif: ("New Computer Modern", "Noto Serif CJK SC"),
    sans: ("New Computer Modern", "Noto Sans CJK SC"),
    kai: ("New Computer Modern", "AR PL KaitiM GB"),
  )
} else {
  (
    serif: ("New Computer Modern", "SimSun"),
    sans: ("New Computer Modern", "SimHei"),
    kai: ("New Computer Modern", "KaiTi"),
  )
}

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

#let example(body) = {
  example-counter.step()
  block(width: 100%, above: 1em, below: 1em, {
    // 同 LaTeX 版的 \noindent：抵消段首缩进
    h(-2em)
    context strong[例 #chapter-number().#example-counter.display()]
    h(0.3em)
    body
  })
}

#let labeled(label) = body => block(width: 100%, above: 0.8em, below: 0.8em)[
  #h(-2em)#strong(label)#body
]

#let solution = labeled[解：]
#let analyze = labeled[分析：]
#let rmk = labeled[注意：]
#let note = labeled[说明：]
#let proof = labeled[证明：]

// ---- “练习”框与带标题的框（对应 tcolorbox 的 ex、blk） ----
#let titled-box(title, color, title-align, body) = block(
  width: 100%,
  above: 1.4em,
  below: 1em,
  breakable: true,
  stroke: 0.8pt + color,
  radius: 4pt,
  inset: (x: 10pt, top: 12pt, bottom: 8pt),
  {
    if title != [] and title != [ ] { place(
      top + title-align,
      dx: if title-align == left { 5mm } else { 0pt },
      dy: -12pt - 0.6em,
      box(
        fill: color,
        radius: 3pt,
        inset: (x: 8pt, y: 3pt),
        text(fill: white, font: fonts.sans, title),
      ),
    ) }
    body
  },
)

#let exercise(title: [练习], body) = titled-box(title, cyan-frame, center, body)
#let blk(title, body) = titled-box(title, magenta-frame, left, body)

// 选做题：在 enum 项目开头调用，题号左侧加“*”（同原书）
#let staritem = place(left, dx: -2.6em, [\*])

// 分栏（对应 multicols）
#let cols(n, body) = columns(n, gutter: 1.5em, body)

// 插图占位：CeTZ 图尚未画好时显示原 TikZ 图的编号
#let todo-fig(id) = align(center, block(
  stroke: (dash: "dashed", paint: red),
  inset: 1em,
  text(fill: red)[待绘制的插图 #id],
))

// ---- 编号列表 ----
// LaTeX 各层的默认编号：1.  (a)  i.  A.
#let latex-enum(..n) = {
  let n = n.pos()
  numbering(("1.", "(a)", "i.", "A.").at(calc.min(n.len(), 4) - 1), n.last())
}
// 第 depth 层列表改用指定格式（对应 enumerate 宏包的 \begin{enumerate}[(1)]），其余各层不变
#let enum-at(depth, pattern) = (..n) => {
  if n.pos().len() == depth { numbering(pattern, n.pos().last()) } else { latex-enum(..n) }
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
  block(width: 100%, above: 1em, below: 1em, grid(
    columns: (1fr, auto, auto, 1fr),
    row-gutter: 0.7em,
    align: (x, y) => (right, right + horizon, left + horizon, right + horizon).at(x),
    grid.cell(rowspan: n, []),
    grid.cell(rowspan: n, $lhs lr(\{ #block(height: n * 1.9em) #h(0pt))$),
    ..rows.map(r => (math.equation(block: false, numbering: none, math.display(r)), number)).flatten(),
  ))
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
      set text(size: 9pt)
      if calc.even(here().page()) [#counter(page).display()#h(1fr)#name]
      else [#name#h(1fr)#counter(page).display()]
      v(-0.6em)
      line(length: 100%, stroke: 0.4pt)
    },
    footer: context {
      let starts = query(heading.where(level: 1)).filter(h => h.location().page() == here().page())
      if starts.len() > 0 { align(center, text(size: 9pt, counter(page).display())) }
    },
  )

  set text(font: fonts.serif, size: 10.5pt, lang: "zh", region: "cn")
  set par(justify: true, first-line-indent: (amount: 2em, all: true), leading: 0.9em, spacing: 0.9em)
  // 与 LaTeX 版一致：段落之间不额外加距离（spacing 与行距相同）
  show strong: set text(font: fonts.sans, weight: "regular")
  show emph: set text(font: fonts.kai, style: "normal")

  // 原书的 \frac 一律按 \dfrac 排
  show math.frac: it => if it.has("label") and it.label == <tfrac> { it } else { math.display(it) }
  // 公式中的中文（如 \text{个}）回落到正文的中文字体
  show math.equation: set text(font: ("New Computer Modern Math",) + fonts.serif.slice(1))
  set table(stroke: none)

  set enum(indent: 1em, body-indent: 0.6em, spacing: 1.2em, full: true, numbering: latex-enum)
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
  show heading: set text(font: fonts.sans, weight: "regular")
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
  show heading.where(level: 2): it => {
    v(1em)
    align(center, text(size: 15pt, {
      if it.numbering != none { counter(heading).display(it.numbering); h(1em) }
      it.body
    }))
    v(0.6em)
  }
  show heading.where(level: 3): it => block(above: 1.2em, below: 0.8em, text(size: 12pt, {
    if it.numbering != none { counter(heading).display(it.numbering) }
    it.body
  }))
  show heading.where(level: 4): it => block(above: 1em, below: 0.7em, text(size: 10.5pt, {
    if it.numbering != none { counter(heading).display(it.numbering) }
    it.body
  }))

  // 目录
  show outline.entry.where(level: 1): set block(above: 1.2em)
  show outline.entry.where(level: 1): set text(font: fonts.sans)

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
