// 第四册第 2 章的插图（对应 math4/2.tex 中的 tikzpicture，按出现顺序编号）
#import "../../common/fig.typ": *

// 2-02：三阶行列式的对角线法则。TikZ 源码用了 ([turn]0:0.3) 坐标（沿上一段的方向再走 0.3），
// tikz2cetz.py 不支持，这里按 TikZ 的几何手工算：线段在圆形节点的边界处截断，
// turn 从上一个节点的中心沿同一方向前进，接着画圆弧，最后连到第三个节点的边界
#let sarrus = context {
  // 圆形节点的半径：文字框对角线的一半加 inner sep（1pt）；坐标按 scale=1.3 折算
  let m = measure($a_1$)
  let r = (calc.sqrt(m.width.cm() * m.width.cm() + m.height.cm() * m.height.cm()) / 2 + 1pt.cm()) / 1.3
  let pts = (a1: (-1, 1), b1: (0, 1), c1: (1, 1), a2: (-1, 0), b2: (0, 0), c2: (1, 0),
    a3: (-1, -1), b3: (0, -1), c3: (1, -1))
  let unit(p, q) = {
    let (dx, dy) = (q.at(0) - p.at(0), q.at(1) - p.at(1))
    let l = calc.sqrt(dx * dx + dy * dy)
    (dx / l, dy / l)
  }
  let toward(p, u, d) = (p.at(0) + d * u.at(0), p.at(1) + d * u.at(1))
  canvas(length: 1.3cm, {
    for (k, p) in pts {
      circle(p, radius: r, stroke: 0.4pt)
      content(p, $#math.attach(math.italic(k.at(0)), b: k.at(1))$)
    }
    content((-1.5, -1.8), $-$)
    content((1.5, -1.8), $+$)
    let st(dashed) = if dashed { (paint: black, thickness: 0.4pt, dash: (3pt, 2pt)) } else { 0.4pt }
    // 节点 n1、n2、n3 依次相连
    let chain(n1, n2, n3, dashed: false) = {
      let (p, q, s) = (pts.at(n1), pts.at(n2), pts.at(n3))
      line(toward(p, unit(p, q), r), toward(q, unit(q, p), r), toward(q, unit(q, s), r), toward(s, unit(s, q), r), stroke: st(dashed))
    }
    // n1 → n2，沿同一方向再走 t，画圆弧（a0 → a1，半径 R），再连到 n3
    let hook(n1, n2, t, a0, a1, n3, dashed: false) = {
      let R = 1.06
      let (p, q, s) = (pts.at(n1), pts.at(n2), pts.at(n3))
      let u = unit(p, q)
      let pq = toward(q, u, -r)
      let qq = toward(q, u, t)
      let c = (qq.at(0) - R * calc.cos(a0 * 1deg), qq.at(1) - R * calc.sin(a0 * 1deg))
      let e = (c.at(0) + R * calc.cos(a1 * 1deg), c.at(1) + R * calc.sin(a1 * 1deg))
      line(toward(p, u, r), pq, qq, stroke: st(dashed))
      arc(qq, start: a0 * 1deg, stop: a1 * 1deg, radius: R, stroke: st(dashed))
      line(e, toward(s, unit(s, e), r), stroke: st(dashed))
    }
    chain("a1", "b2", "c3")
    hook("b1", "c2", 0.3, 45, -135, "a3")
    hook("a2", "b3", 0.35, -135, 45, "c1")
    chain("a3", "b2", "c1", dashed: true)
    hook("c2", "b3", 0.4, -45, -225, "a1", dashed: true)
    hook("b1", "a2", 0.35, -225, -45, "c3", dashed: true)
  })
}

#let figures = (
  "2-02": sarrus,
)
