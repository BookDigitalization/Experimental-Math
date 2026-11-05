// 由 tools/tikz2cetz.py 从 math6/3.tex 自动生成，不要手工修改；
// 需要手工修改的图复制到 ch3.typ 的 figures 中，那里的同名图优先。
#import "../../common/fig.typ": *
#import "../../common/template.typ": todo-fig, tfrac

#let figures = (
  "3-01": canvas({
    line((0, 0), (5, 0), (5, 3.5), (0, 3.5), stroke: (paint: black, thickness: 0.4pt), close: true)
    node((0.5, 3.25), [$e$])
    circle((2, 2), radius: 1, stroke: (paint: black, thickness: 0.4pt))
    node((2, 2), [$A$])
    circle((3.5, 2), radius: 1, stroke: (paint: black, thickness: 0.4pt))
    node((3.5, 2), [$B$])
    line((1.75, 1.75), (1.5, 0.6), stroke: (paint: black, thickness: 0.4pt))
    node((1.5, 0.6), [$m$], pos: "below")
    line((3.75, 1.75), (4, 0.6), stroke: (paint: black, thickness: 0.4pt))
    node((4, 0.6), [$n$], pos: "below")
    line((2.8, 1.75), (2.7, 0.6), stroke: (paint: black, thickness: 0.4pt))
    node((2.7, 0.6), [$r$], pos: "below")
  })
  ,
  "3-02": canvas({
    line((-0.3, 0), (3.9, 0), stroke: (paint: luma(50%), thickness: 0.4pt))
    line((-0.3, 0.4), (3.9, 0.4), stroke: (paint: luma(50%), thickness: 0.4pt))
    line((-0.3, 0.8), (3.9, 0.8), stroke: (paint: luma(50%), thickness: 0.4pt))
    line((-0.3, 1.2), (3.9, 1.2), stroke: (paint: luma(50%), thickness: 0.4pt))
    line((-0.3, 1.6), (3.9, 1.6), stroke: (paint: luma(50%), thickness: 0.4pt))
    line((-0.3, 2), (3.9, 2), stroke: (paint: luma(50%), thickness: 0.4pt))
    line((-0.3, 2.4), (3.9, 2.4), stroke: (paint: luma(50%), thickness: 0.4pt))
    line((-0.3, 2.8), (3.9, 2.8), stroke: (paint: luma(50%), thickness: 0.4pt))
    line((-0.3, 3.2), (3.9, 3.2), stroke: (paint: luma(50%), thickness: 0.4pt))
    line((-0.3, 3.6), (3.9, 3.6), stroke: (paint: luma(50%), thickness: 0.4pt))
    line((0, -0.2), (0, 3.8), stroke: (paint: luma(50%), thickness: 0.4pt))
    line((0.6, -0.2), (0.6, 3.8), stroke: (paint: luma(50%), thickness: 0.4pt))
    line((1.2, -0.2), (1.2, 3.8), stroke: (paint: luma(50%), thickness: 0.4pt))
    line((1.8, -0.2), (1.8, 3.8), stroke: (paint: luma(50%), thickness: 0.4pt))
    line((2.4, -0.2), (2.4, 3.8), stroke: (paint: luma(50%), thickness: 0.4pt))
    line((3, -0.2), (3, 3.8), stroke: (paint: luma(50%), thickness: 0.4pt))
    line((3.6, -0.2), (3.6, 3.8), stroke: (paint: luma(50%), thickness: 0.4pt))
    let A = (0.6, 0.4)
    let H = (1.8, 1.2)
    let G = (1.2, 2.4)
    let J = (2.4, 2.4)
    let B = (3, 3.2)
    circle(A, radius: 1pt, fill: black, stroke: black + 0.4pt)
    circle(H, radius: 1pt, fill: black, stroke: black + 0.4pt)
    circle(G, radius: 1pt, fill: black, stroke: black + 0.4pt)
    circle(J, radius: 1pt, fill: black, stroke: black + 0.4pt)
    circle(B, radius: 1pt, fill: black, stroke: black + 0.4pt)
    node(A, [$A$], pos: "above left")
    node(G, [$G$], pos: "above left")
    node(B, [$B$], pos: "above right")
    node(J, [$J$], pos: "above right")
    node(H, [$H$], pos: "above right")
  })
  ,
  // 转换失败：'NoneType' object has no attribute 'end'
  "3-c1": todo-fig("3-c1")
  ,
  // 转换失败：'NoneType' object has no attribute 'end'
  "3-c2": todo-fig("3-c2")
  ,
  // 转换失败：'NoneType' object has no attribute 'end'
  "3-c3": todo-fig("3-c3")
  ,
)
