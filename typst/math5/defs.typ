// 第五册专用的符号（与第二册相同），对应 math5/main.tex 中的“本册专用”定义。tex2typ.py 把 \parallel、\parallelogram 转为 pll、pgram。

// \renewcommand\parallel{\mathrel{/\mskip-2.5mu/}}：平行号印成“//”
#let pll = math.class("relation", $slash #h(-2.5em / 18) slash$)

// \parallelogram：TikZ 画的小平行四边形 (0,.1ex)--(.9em,0)--(.2em,1.2ex)--(-.9em,0)--cycle（1ex 约合 0.43em）
#let pgram = box(width: 1.1em, height: 0.56em, place(curve(
  stroke: 0.4pt,
  curve.move((0em, 0.517em)),
  curve.line((0.9em, 0.517em)),
  curve.line((1.1em, 0em)),
  curve.line((0.2em, 0em)),
  curve.close(),
)))
