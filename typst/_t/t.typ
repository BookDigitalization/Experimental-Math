#set page(width: 14cm, height: auto, margin: 5mm)
#set text(font: ("New Computer Modern", "SimSun"), size: 10.5pt)
#show math.frac: it => math.display(it)
#let demo(te, be, lead) = block(width: 4cm, {
  set text(top-edge: te, bottom-edge: be)
  set par(leading: lead)
  [#te / #be / #lead]
  [
  + $(18 a^12)/(12 a^3 b^2)$
  + $(8 a^2)/(16 a^20)$
  正文一行正文一行正文一行正文一行正文一行正文一行正文一行正文一行正文
  ]
})
#grid(columns: 3, gutter: 1em,
  demo("cap-height", "baseline", 0.9em),
  demo("ascender", "descender", 0.56em),
  demo("bounds", "bounds", 0.56em))
