// 第二册第 2 章中需要手工绘制的插图。其余插图由 tools/tikz2cetz.py 自动生成在 gen-ch2.typ 中，
// 这里的同名图优先。
#import "../../common/fig.typ": *

#let figures = (
  // A∩B：LaTeX 版用 \clip 把圆 B 的阴影限制在圆 A 内；CeTZ 没有裁剪，直接画出两段圆弧围成的公共部分
  "2-05": canvas({
    // 两圆 (0,0) r=.75 与 (1.3,0) r=1 的交点
    let x = (0.75 * 0.75 - 1 + 1.3 * 1.3) / (2 * 1.3)
    let y = calc.sqrt(0.75 * 0.75 - x * x)
    let a = calc.atan2(x, y)           // 交点在圆 A 上的角度
    let b = calc.atan2(x - 1.3, y)     // 交点在圆 B 上的角度
    merge-path({
      arc((x, y), start: b, stop: 360deg - b, radius: 1)
      arc((x, -y), start: -a, stop: a, radius: 0.75)
    }, fill: hatch-ne, stroke: none)
    circle((0, 0), radius: 0.75)
    node((0, 0), [$A$])
    circle((1.3, 0), radius: 1)
    node((1.3, 0), [$B$])
    line((0.5, -1.3), (0.5, -0.7), mark: arrow)
    node((0.5, -1.3), [$A inter B$], pos: "below")
  }),
)
