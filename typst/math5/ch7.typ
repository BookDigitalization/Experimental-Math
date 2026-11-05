// 由 typst/tools/tex2typ.py 从 math5/7.tex 转换而来，已人工校对的部分以本文件为准。
#import "../common/template.typ": *
#import "figs.typ": fig
#import "defs.typ": *

= 极坐标与参数方程
== 极坐标系与曲线的极坐标方程
=== 极坐标的概念
如果知道了一点相对于一定点的距离和方向，那么这个点的位置就被唯一确定了．这就是说，我们可用角度和距离来确定平面上点的位置．这节，我们研究如何利用角度和距离来建立坐标系．

在平面内取一个定点 $O$, 叫做#strong[极点]，引射线 $O A$, 叫做#strong[极轴]，再选定一个长度单位和角度的正向（通常取逆时针方向）．对于平面上任一点 $P$, 但 $P$ 不是极点，用 $r$ 表示 $overline(O P)$ 的长度，$theta$ 表示从 $O A$ 转到 $O P$ 的角度．这时 $r$ 叫做 $P$ 点的#strong[极径]，$theta$ 叫做 $P$ 点的#strong[极角]．有序实数对 $\(r\,theta\)$ 就叫做 $P$ 点的极坐标，并记作 $P\(r\,theta\)$. 这样建立的坐标系叫做极坐标系（图7.1）．

在极坐标系中，$r = 0$, 不论 $theta$ 是什么角，$\(0\,theta\)$ 都表示极点，除去极点，显然，不同的点对应不同的极坐标；反过来任取一对实数 $\(r\,theta\)$, 其中 $0 < r < oo$, $0 lt.eq theta < 2 pi$, 我们能够且只能够在平面上找到一点 $P$, 使它的坐标恰好是 $\(r\,theta\)$. 由此可见，平面上除了极点外的所有点和实数对集合：$ \{\(r\,theta\)\|0 < r < oo\,quad 0 lt.eq theta < 2 pi \} $ #noindent;可建立一一对应关系．

有时为了研究问题的需要，我们往往取消上述对 $r\,theta$ 的限制，规定 $r$ 和 $theta$ 可取任何实数值．如果已知任意有序实数对 $\(r\,theta\)$, 那么，我们可按下面的方法，在极坐标系中作出它的对应点．

#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("7-01");], caption: []), figure([#fig("7-02");], caption: []))));

以极轴 $O A$ 为始边，作有向角 $angle A O M = theta$, 如果 $r > 0$, 在射线 $O M$ 上作 $overline(O P) = r$, 如果 $r < 0$, 在射线 $O M$ 的反向延长线上作 $overline(O P) =\|r\|$. 这样，对任一对有序实数 $\(r\,theta\)$⁠，我们总可以在平面上确定一点 $P$\; 反过来，对平面上任一点 $P$, 都可对应无限多有序实数对组成的极坐标，如果已知 $P\(r\,theta\)$, 那么 $\(r\,theta + 2 k pi\)$, 当 $k$ 为任意整数时，都可表示 $P$ 点的极坐标．

#example[
在极坐标系中，作出下列各点 $ B (4 \, pi / 6)\,#h(2em) C\(2\,0\)\,#h(2em) D (4 \, 5 / 6 pi)\,#h(2em) E (4 \, 3 / 2 pi)\
F (- 4 \, pi / 6)\,#h(2em) G (3 \, - pi / 3)\,#h(2em) H (1 \, pi / 2) $

]
#solution[
如图7.3所示．

#figure([#fig("7-03");

  ],
  caption: [
  ]
)

]
#exercise[
+ 在极坐标系中，描出下列各点．$ L (3 \, pi / 3)\,#h(2em) M\(3\,0\)\,#h(2em) N (1 \, pi / 2)\,#h(2em) P (- 3 \, pi / 4)\
  Q (3 \, - pi / 4)\,#h(2em) R (- 2 \, - 2 / 3 pi)\,#h(2em) S (1 \, 3 / 4 pi) $

+ 在极坐标系中，描出下列各点和它们关于原点和极轴的对称点．$ P_1 (2 \, pi / 3)\,#h(2em) P_2 (- 3 \, pi / 2)\,#h(2em) P_3 (5 / 4 \, pi / 4) $

+ 已知一等边三角形边长为 $a$, 它的中心与极点重合，一个顶点在极轴上，求三个顶点的极坐标．

+ 已知一正方形边长是 $2 a$, 它的中心在极点，它的一边与极轴垂直．求它的四个顶点的极坐标．

]
=== 极坐标和直角坐标的关系
#figure([#fig("7-04");

  ],
  caption: [
  ]
)

在平面上建立一直角坐标系 $O X Y$ 和一极坐标系，使极点和坐标原点 $O$ 重合，极轴 $O A$ 与 $X$ 轴的正半轴重合．设平面上任一点 $P$ 在 $O X Y$ 中的坐标为 $\(x\,y\)$, 在极坐标系中的坐标为 $\(r\,theta\)$. 若 $P$ 点的极坐标为已知，且 $r > 0$, 则由三角学可知，$P$ 点的直角坐标可由变换公式#numbered-eq($ x = r cos theta\,#h(2em) y = r sin theta $);#noindent;求得．若 $r = 0$, 公式 (7.1) 显然成立，若 $r < 0$, 则因 $\(r\,theta\)$ 和 $\(- r\,theta + pi\)$ 表示同一点，故可用 $\(- r\,theta + pi\)$ 代替 $\(r\,theta\)$ 来求 $\(x\,y\)$, 于是 $ x & = - r cos\(theta + pi\)= - r\(- cos theta\)= r cos theta\
y & = - r sin\(theta + pi\)=\(- r\)\(- sin theta\)= r sin theta $ #noindent;因此，当 $r < 0$ 时，点的直角坐标仍可由公式 (7.1) 求得．

反过来，如果 $P$ 点的直角坐标为已知，我们可由公式#numbered-eq($ r^2 = x^2 + y^2\,#h(2em) tan theta = y / x quad\(x eq.not 0\) $);#noindent;求得该点的极坐标，由上一小节可知，点 $P$ 的极坐标可对应无穷多对数值，其中任一对数值都可作为点 $P$ 的极坐标．在一般情况下，我们只求 $r gt.eq 0$, $0 lt.eq theta < 2 pi$ 的一对数值就可以了．

#example[
把点 $P$ 的极坐标 $(3 \, pi / 3)$ 化为直角坐标．

]
#solution[
由于 $ x & = 3 dot.op cos pi / 3 = 3 dot.op 1 / 2 = 3 / 2\
y & = 3 dot.op sin pi / 3 = 3 dot.op sqrt(3) / 2 = frac(3 sqrt(3), 2) $ #noindent;因此：点 $P$ 的直角坐标是 $(3 / 2 \, frac(3 sqrt(3), 2))$

]
#example[
把点 $M\(- 1\,- 1\)$ 化为极坐标．

]
#solution[
$ r & = sqrt(\(- 1\)^2 +\(- 1\)^2) = sqrt(2)\
tan theta & = frac(- 1, - 1) = 1 $ #noindent;由于点 $M$ 在第三象限．因此，取 $theta = frac(5 pi, 4)$

$therefore quad$ 点 $M$ 的极坐标为 $(sqrt(2) \, 5 / 4 pi)$

]
#exercise[
+ 试求下列各点的直角坐标．$ M (- 4 \, - pi / 4)\,#h(2em) N (- 4 \, - 5 / 4 pi)\,#h(2em) P\(- 3\,8 pi\)\
  Q\(7\,0 degree\)\,#h(2em) R (5 \, - pi / 2)\,#h(2em) S (- 2 \, - 2 / 3 pi) $

+ 试求下列各点的极坐标．$ B\(1\,- 1\)\,#h(2em) C (3 \, sqrt(3))\,#h(2em) D\(- 1\,1\) $

]
=== 点的轨迹的极坐标方程
我们已知，可用一对有序实数 $\(r\,theta\)$ 来确定平面上一点的位置，因此，平面上点的轨迹有时可用含有 $r\,theta$ 两个变量的方程来表示，这个方程叫做点的轨迹的#strong[极坐标方程]或简称#strong[极方程]．

#example[
求通过极点 $O$ 且与极轴成定角 $alpha$ 的直线的极坐标方程（图7.5）．

]
#solution[
设点 $P\(r\,theta\)$ 为已知直线上的任一点，则点 $P$ 满足极方程#numbered-eq($ theta = alpha $);#noindent;反之，对任一实数 $r$, 以 $\(r\,alpha\)$ 为极坐标的点也一定满足方程 (7.3). 因此方程 (7.3) 就是所求的直线的极方程．

]
#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("7-05");], caption: []), figure([#fig("7-06");], caption: []))));

#example[
求圆心在极点 $O$, 半径为 $a$ 的圆的极坐标方程（图7.6）．

]
#solution[
因为对任一点 $P\(r\,theta\)$, 当且仅当#numbered-eq($ r = a $);#noindent;时，$P$ 点才在已知圆上，所以 (7.4) 式就是所求圆的极方程．

]
#example[
试求以 $C\(a\,0\)$ 为圆心，以 $a$ 为半径的圆的极坐标方程（图7.7）．

]
#figure([#fig("7-07");

  ],
  caption: [
  ]
)

#solution[
由已知条件，圆心在极轴上，圆经过极点 $O$. 设圆和极轴的另一个交点是 $B$. 得知 $P\(r\,theta\)$ 在已知圆上的充要条件是 $angle O P B = pi\/2$, 即 $ \|accent(O P, ⃗)\|=\|accent(O B, ⃗)\|cos theta $ #numbered-eq($ r = 2 a cos theta $);#noindent;因此 (7.5) 式就是所求圆的极方程．

]
如果某动点的轨迹在直角坐标系中的方程为已知，那么，利用变换公式 $ x = r cos theta\,#h(2em) y = r sin theta $ #noindent;可求得该动点轨迹的极坐标方程；反之，若一动点的轨迹的极方程为已知，我们也可用上节变换公式 (7.2), 把它化为在直角坐标系中的方程．

#example[
设一圆的方程为 $ x^2 + y^2 - 8 y = 0 $ #noindent;如果以原直角坐标系的原点为极点，$X$ 轴的正半轴为极轴，求这圆的极方程．

]
#solution[
将 $x = r cos theta$, $y = r sin theta$, 代入已知圆的方程，得 $ r^2 - 8 r sin theta = 0 $ #noindent;即 $r = 8 sin theta$⁠．这就是已知圆的极坐标方程．

]
#example[
已知直线的极方程为 $r sin theta = 2$, 把它化为直角坐标方程．

]
#solution[
将 $r = sqrt(x^2 + y^2)$, $sin theta = y / r$ 代入已知直线的极方程，得 $ sqrt(x^2 + y^2) dot.op y / sqrt(x^2 + y^2) = 2 $ #noindent;即 $y = 2$. 这就是已知直线的直角坐标方程．

]
我们可根据极方程用描点法近似地作出这个极方程的图象，下面举例说明．

#example[
描出方程 $r = a theta thick\(a > 0\)$ 的图象．

]
#solution[
与直角坐标系中的作图步骤一样，先给出 $theta$ 一系列的允许值，算出 $r$ 的对应值，由此得到一对应值表．然后再根据对应值表描点作图（图7.8）．

#align(center)[
#table(
  columns: (auto, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto,),
  align: (center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon,),
  table.vline(x: 1),
  table.hline(),
  [$theta$],
  [0],
  [$pi / 4$],
  [$pi / 2$],
  [$frac(3 pi, 4)$],
  [$pi$],
  [$frac(5 pi, 4)$],
  [$frac(3 pi, 2)$],
  [$frac(7 pi, 4)$],
  [$2 pi$],
  [$dots.h.c$],
  table.hline(),
  [$r$],
  [0],
  [$0.78 a$],
  [$1.57 a$],
  [$2.36 a$],
  [$3.14 a$],
  [$3.93 a$],
  [$4.71 a$],
  [$5.50 a$],
  [$6.28 a$],
  [$dots.h.c$],
  table.hline(),
);

]
#figure([#fig("7-08");

  ],
  caption: [
  ]
)

方程 $r = a theta\,thick\(a > 0\)$ 的图象，叫做#strong[阿基米德螺线]．

]
#exercise[
+ 求通过极点 $O$ 且与极轴 $O A$ 成 $pi\/6$ 角的直线的极方程．

+ 求以 $C\(3\,pi\/3\)$ 为圆心，半径等于2的圆的极方程．

+ 求通过点 $P\(r\,theta\)$ 且与原点距离等于 $d$ 的直线的极方程．

+ 求 $M\(r_1\,theta_1\)$, $N\(r_2\,theta_2\)$ 两点间的距离．

+ #block(sticky: true)[把下列直角坐标方程化为极方程．]

  #cols(2)[
  + $x = 6$

  + $y = 2 x$

  + $x^2 + y^2 - 9 = 0$

  + $x^2 + y^2 - 4 x + 8 = 0$

  + $x y = 4$

  + $x^2 - y^2 = 1$

  + $y^2 = 4 x$

  + $\(x^2 + y^2\)^2 = a^2\(x^2 - y^2\)$

  ]

+ #block(sticky: true)[把下列极坐标方程，化为直角坐标方程．]

  #cols(2)[
  + $r = 3$

  + $theta = pi / 4$

  + $r = 3 cos theta$

  + $r = 5 tan theta$

  + $r^2 cos 2 theta = 16$

  + $r = frac(6, 1 + 2 cos theta)$

  ]

+ 画出心脏线 $r = a\(1 + cos theta\)$ 的图象．

+ 画出双纽线 $r^2 = a^2 cos 2 theta$ 的图象．

]
=== 圆锥曲线的极坐标方程
在第六章1.4节中，我们给圆锥曲线下了一个统一的定义，现在我们根据这个定义来求圆锥曲线统一的极方程．

已知圆锥曲线的焦点 $F$ 和准线 $ell$, 过 $F$ 作 $ell$ 的垂线，设垂足为 $D$. 以 $F$ 为极点，$accent(D F, ⃗)$ 的方向作为极轴的方向建立极坐标系（图7.9）．设 $P\(r\,theta\)$ 是曲线上任一点，作 $overline(P F)$, 再作 $P Q tack.t ell$, $P M$ 垂直极轴，垂足分别为 $Q\,M$. 设 $F$ 到准线 $ell$ 的距离 $overline(F D) = p$, 则由圆锥曲线的定义，得 $ frac(P F, P Q) = e $ #noindent;即：$r = e dot.op P Q$

$because quad P Q = D F + r cos theta = p + r cos theta$

$therefore quad r = e\(p + r cos theta\)$

解出 $r$⁠，得：#numbered-eq($ #box(stroke: 0.5pt, inset: 3pt, $r = frac(e p, 1 - e cos theta)$) $);

这就是圆锥曲线的极方程．当 $0 < e < 1$ 时，方程 (7.6) 表示椭圆，定点 $F$ 是它的左焦点，定直线 $ell$ 是它的左准线；当 $e = 1$ 时，方程 (7.6) 表示开口向右的抛物线；当 $e > 1$ 时，方程 (7.6) 表示双曲线，定点 $F$ 是它的右焦点，定直线 $ell$ 是它的右准线（图7.10）．

#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("7-09");], caption: []), figure([#fig("7-10");], caption: []))));

#exercise[
+ 求证圆锥曲线 $r = frac(e p, 1 - e cos theta)$⁠，当 $0 < e lt.eq 1$ 时的直角坐标方程是 $ \(1 - e^2\)x^2 + y^2 - 2 e^2 p x - e^2 p^2 = 0 $ #noindent;当 $e > 1$ 时，直角坐标方程是 $sqrt(x^2 + y^2) = e\(x + p\)$.

+ 一颗彗星的轨道是抛物线，太阳位于这条抛物线的焦点上，已知这颗彗星在距太阳为 $1.6 times 10^8$ 公里时，它的极径和轨道轴成 $60 degree$ 角．求这颗彗星的轨道的极方程，并且求出它的近日点与太阳的距离．

+ #block(sticky: true)[说明下列方程的图形是什么，并且画出草图．]

  #cols(2)[
  + $r = frac(5, 1 - cos theta)$

  + $r = frac(5, 3 - 4 cos theta)$

  + $r = frac(1, 2 - cos theta)$

  + $r = frac(4, 1 + cos theta)$

  ]

]
#heading(level: 2, numbering: none, supplement: [toc-sub])[习题7.1]

+ #block(sticky: true)[作出下列极方程的图象，并说明它们各是什么曲线．]

  #cols(2)[
  + $r = 1$

  + $theta = pi / 3$

  + $r cos theta = 2$

  + $r sin theta = 1$

  + $r = 6 cos theta$

  + $r = 10 sin theta$

  ]

+ 求满足下列条件的各图形的极方程．

  + 经过点 $P (2 \, pi / 4)$, 垂直于极轴的直线；

  + 经过点 $Q (3 \, pi / 3)$, 平行于极轴的直线；

  + 圆心在极点，半径等于 $a$ 的圆；

  + 圆心在点 $B (a \, pi / 2)$ 半径等于3的圆；

  + 圆心在 $C\(a\,pi\)$, 半径等于 $a$ 的圆；

  + 经过点 $P\(a\,0\)$ 和极轴相交成 $alpha$ 角的直线．

+ 从极点作圆 $r = 2 a cos theta$ 的各弦，求各弦中点的轨迹的极坐标方程．

+ 从极点 $O$ 作直线和直线 $r cos theta = 4$ 相交于 $M$ 点，在 $overline(O M)$ 上取一点 $P$, 使 $overline(O M) dot.op overline(O P) = 12$, 求 $P$ 点轨迹的极坐标方程．

+ 求适合于下列条件的轨迹的极坐标方程，并且画出轨迹的草图．

  + 点的极径和极角成正比例；

  + 点的极径和极角成反比例．

+ #block(sticky: true)[把下列各直角坐标方程化为极方程．]

  #cols(2)[
  + $y^2 = 12 x$

  + $x^2 + y^2 = 4 y$

  + $x^2 - 2 x y + y^2 = x - 4$

  + $y^2 = 4\(1 - x\)$

  + $y^2 = 2 p x$

  + $x^2 / a^2 + y^2 / b^2 = 1$

  + $x^2 / a^2 - y^2 / b^2 = 1$

  ]

+ #block(sticky: true)[判别下列各极方程表示什么曲线．]

  #cols(2)[
  + $r^2 = frac(400, 25 sin^2 theta + 16 cos^2 theta)$

  + $r^2 = frac(4, cos^2 theta - sin^2 theta)$

  + $r^2 = frac(6, 2 cos^2 theta + 3 sin^2 theta)$

  + $r^2 = frac(1, cos^2 theta - 2 sin^2 theta)$

  + $r = frac(4 cos theta, sin^2 theta)$

  + $r = frac(4 sin theta, cos^2 theta)$

  ]

+ #block(sticky: true)[把下列极坐标方程化成直角坐标方程．]

  #cols(2)[
  + $r = 64 sin 2 theta$

  + $r + 6 cot theta dot.op cos theta = 0$

  ]

== 参数方程
=== 参数方程的概念
在直角坐标系 $O X Y$ 中，已知直线 $ell$ 过点 $P_0\(x_0\,y_0\)$ 且平行于已知向量 $arrow(a) =\(a_1\,a_2\)$ (图7.11). 如果 $P\(x\,y\)$ 是 $ell$ 上一动点，那么 $ell$ 的向量方程为 $ accent(O P, ⃗) = accent(O P_0, ⃗) + t arrow(a) $ #noindent;换成坐标形式，即为#numbered-eq($ display(cases(x = x_0 + a_1 t, y = y_0 + a_2 t)) $);

#figure([#fig("7-11");

  ],
  caption: [
  ]
)

这就是说，直线 $ell$ 上的点可以和实数 $t$ 建立一一对应关系．

一般来说，在取定的坐标系中，如果曲线上任一点的坐标 $x\,y$ 都是某个变数 $t$ 的函数时，#numbered-eq($ x = f\(t\)\,#h(2em) y = phi\(t\) $);#noindent;并且对于 $t$ 的每一允许值，由方程 (7.8) 所确定的点 $P\(x\,y\)$ 都在这条曲线上．那么方程 (7.8) 就叫做这条#strong[曲线的参数方程]．例如，方程 (7.7) 就是通过 $P_0\(x_0\,y_0\)$ 且平行于已知向量 $arrow(a)$ 的直线的参数方程．

上面我们用参数来表示直角坐标系中点的坐标 $x\,y$, 同样我们也可用参数来表示在极坐标系中，点的极坐标 $r\,theta$. 即 $ r = f\(t\)\,#h(2em) theta = phi\(t\) $

相对于参数方程来说，直接给出点的坐标间的关系的曲线方程，叫做曲线的#strong[普通方程]．如我们学过的直角坐标方程和极方程．

=== 曲线的参数方程
除上节建立的直线参数方程外，现在我们来建立几种常见的曲线的参数方程．

==== 圆的参数方程
以原点为圆心，$R$ 为半径的圆，可以看作是一个质点作等速圆周运动的轨迹（图7.12）．设质点的运动的角速度为 $omega$, 从圆周与 $X$ 轴的正半轴的交点 $A$ 的位置开始按逆时针方向运动，经过时间 $t$ 后，质点到达圆周上一点 $P\(x\,y\)$ 的位置．由于 $angle A O P = omega t$⁠，所以#numbered-eq($ display(cases(x = R cos omega t, y = R sin omega t)) $);#noindent;在方程 (7.9) 中，对应 $t$ 的每一个值，圆周上就有一点 $P\(x\,y\)$ 与它对应．当 $t$ 的值从0逐渐增加到 $2 pi\/omega$ 时，$P$ 点就从 $A$ 点开始按逆时针方向描出一个圆，所以 (7.9) 式就是表示以原点为中心，$R$ 为半径的圆的参数方程．如果直接取 $angle A O P = theta$ 作为参数，那么圆的参数方程是 $ display(cases(x = R cos theta, y = R sin theta)) $

#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("7-12");], caption: []), figure([#fig("7-13");], caption: []))));

==== 椭圆的参数方程
设 $P\(x\,y\)$ 是椭圆 $x^2 / a^2 + y^2 / b^2 = 1$ 上任一点，以 $O$ 为圆心，分别以 $a\,b$ 为半径作两个辅助圆（图7.13）．过 $P$ 点作直线 $P Q$ 垂直于 $X$ 轴，垂足为 $Q$ 点，并交大辅助圆于 $M$ 点，作 $overline(O M)$⁠．

设 $angle M O X = phi$⁠，则 $x = overline(O Q) = a cos phi$⁠．把上式代入椭圆方程，得 $y = b sin phi$⁠，因此：#numbered-eq($ display(cases(x = a cos phi, y = b sin phi)) $);#noindent;就是椭圆的一个参数方程，其中 $phi$ 叫做#strong[离心角]．

==== 双曲线的参数方程
由三角公式 $ sec^2 phi - tan^2 phi = 1 $ #noindent;我们可得双曲线 $x^2 / a^2 - y^2 / b^2 = 1$ 的一个参数方程为#numbered-eq($ display(cases(x = a sec phi, y = b tan phi)) $);

==== 抛物线 $y^2 = 2 p x$ 的参数方程
如果令 $y = 2 p t$⁠，则 $x = 2 p t^2$⁠，所以#numbered-eq($ display(cases(x = 2 p t^2, y = 2 p t)) $);#noindent;可作为抛物线 $y^2 = 2 p x$ 的一个参数方程．

==== 旋轮线的参数方程
一个半径是 $a$ 的车轮，沿一条直线轨道滚动，轮周上一点 $P$ 的轨迹叫做#strong[旋轮线]（图7.14）．

#figure([#scale(70%, reflow: true, image("/math5/fig/7-14.png"));

  ],
  caption: [
  ]
)

下面我们来建立旋轮线的参数方程．

取 $P$ 点落在轨道上的一个位置作为原点．轨道所在直线作为 $X$ 轴，当车轮从开始起转过了 $phi$ 角，设这时 $P$ 点的坐标是 $\(x\,y\)$, 车轮的圆心在 $B$ 点，与轨道相切于 $A$ 点，于是 $wideparen(A P)$ 的长等于 $overline(O A)$ 的长，我们引入参数 $phi$（弧度）．（叫做滚动角）来表示 $x$ 和 $y$.

作 $P D tack.t O X$ 于 $D$ 点，$P C tack.t B A$ 于 $C$ 点，则 $ x & = overline(O D) = overline(O A) - overline(D A) = wideparen(A P) - overline(P C) = a phi - a sin phi = a\(phi - sin phi\)\
y & = overline(D P) = overline(A C) = overline(A B) - overline(B C) = a - a cos phi = a\(1 - cos phi\) $ #noindent;因此，$P$ 点的轨迹的参数方程是#numbered-eq($ display(cases(x = a\(phi - sin phi\), y = a\(1 - cos phi\))) $);#noindent; (7.13) 式就是旋轮线的一个参数方程．

==== 圆的渐开线参数方程
把一条没有伸缩性的绳子绕在一个固定的圆盘的侧面上，拉开绳子的一端并拉直，使绳子和圆周始终相切，然后逐渐展开．绳子端点的轨迹叫做圆的#strong[渐开线]（图7.15）．这个圆叫做渐开线的#strong[基圆]．

#figure([#scale(70%, reflow: true, image("/math5/fig/7-15.png"));

  ],
  caption: [
  ]
)

下面我们来建立渐开线的参数方程．

设定圆的圆心为 $O$, 半径为 $a$, 开始时绳子的外端在 $A$ 点，$O$ 为极点，以射线 $O A$ 为极轴建立极坐标系，设 $B$ 是渐开线上任一点，$\(r\,theta\)$ 是它的极坐标，其中 $theta$ 的单位是弧度．$overline(O A) = a$, $angle B O C = alpha$, 则 $r = frac(a, cos alpha)$⁠，$overline(B C) = a tan alpha$. 根据题设应有 $ overline(B C) = wideparen(A C) = a\(alpha + theta\) $ #noindent;解出 $theta$, 得 $ theta = overline(B C) / a - alpha = tan alpha - alpha $ #noindent;因此，渐开线的极坐标的参数方程为#numbered-eq($ display(cases(r = frac(a, cos alpha), theta = tan alpha - alpha)) $);

以 $O A$ 为 $X$ 轴的正半轴，建立直角坐标系．取 $angle A O C = phi$ 作为参数，由于 $phi = alpha + theta$, 应用公式 (7.14) 式的第二式可得 $ phi = tan alpha $ #noindent;设 $B$ 点在 $O X Y$ 中的坐标为 $\(x\,y\)$, 则#numbered-eq($ x & = r cos theta = a\(cos phi + phi sin phi\)\
y & = r sin theta = a\(sin phi - phi cos phi\) $);#noindent;这是渐开线在直角坐标系中的参数方程．

由以上几种常见曲线的参数方程的推导可知，通常建立曲线的参数方程有两种方法：一种是像 (一) 那样，把曲线看作动点的轨迹，选取时间参数 $t$, 使得曲线上的点的动坐标 $x\,y$ 分别用 $t$ 的函数来表示，另一种是像 (二)、(三) 那样，从已知曲线的直角坐标方程引入适当的参数，从而求得曲线的参数方程．最后，我们指出，一条曲线的参数方程不是唯一的．

以后我们将会看到，利用参数方程研究曲线的形状和性质比普通方程更加方便．

#example[
画出参数方程 $display(cases(x = t^2, y = t^3))$ 所表示的曲线．

]
#solution[
\(1) 列表

#align(center)[
#table(
  columns: (auto, auto, auto, auto, auto, auto, auto, auto, auto,),
  align: (center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon,),
  table.hline(),
  [$t$],
  [$dots.h.c$],
  [$- 3$],
  [$- 2$],
  [0],
  [1],
  [2],
  [3],
  [$dots.h.c$],
  table.hline(),
  [$x$],
  [$dots.h.c$],
  [9],
  [4],
  [0],
  [1],
  [4],
  [9],
  [$dots.h.c$],
  [$y$],
  [$dots.h.c$],
  [$- 27$],
  [$- 8$],
  [0],
  [1],
  [8],
  [27],
  [$dots.h.c$],
  table.hline(),
);

]
\(2) 用表中的数对 $\(x\,y\)$ 描点作图，就可得到方程的曲线（图7.16）．这条曲线叫做#strong[半立方抛物线]．

#figure([#fig("7-14");

  ],
  caption: [
  ]
)

]
#exercise[
+ 写出下列直线的参数方程．

  + 过 $P\(2\,3\)$ 且平行于已知向量 $arrow(a) =\(1\,4\)$ 的直线

  + 过 $P_1\(3\,4\)$, $P_2\(4\,- 3\)$ 两点的直线

  + $y = k x$

  + $y = k x + b$

+ 一质点沿方向 $arrow(S) = (cos pi / 6 \, sin pi / 6)$, 从点 $P_0\(1\,2\)$, 以3米/秒的速率运动，写出运动轨迹的参数方程．

+ 已知一条直线上两点 $M_1\(x_1\,y_1\)$, $M_2\(x_2\,y_2\)$, 以分点 $M\(x\,y\)$ 分 $overline(M_1 M_2)$ 所成的比 $lambda$ 为参数．写出这条直线的参数方程．

+ 已知抛物线 $x = 2 p t^2$, $y = 2 p t$, 写出通过对应于参数 $t_1\,t_2$ 两点的弦的方程．

+ 作下列参数方程的图形．

  + $x = t$, $y = 3 t$

  + $x = 3 sin theta$, $y = 4 cos theta$

  + $x = 4 t^2$, $y = 2 t$

]
=== 参数方程和普通方程的互化
设曲线的参数方程是 $ display(cases(x = f\(t\), y = phi\(t\))) $ #noindent;如果我们能从这个方程消去参数 $t$, 那么我们就可求出曲线的普通方程．

#example[
把参数方程 $display(cases(x = 5 cos t + 2, y = 2 sin t - 3))$ 化为普通方程．

]
#solution[
由已知参数方程可得 $ frac(x - 2, 5) = cos t\,#h(2em) frac(y + 3, 2) = sin t $ #noindent;两式两边平方后相加，得 $ frac(\(x - 2\)^2, 25) + frac(\(y + 3\)^2, 4) = 1 $ #noindent;这就是已知曲线的普通方程．

]
#example[
把参数方程

#numcases($$, $x = a t^2$, $y = a^2 t^3$);

#noindent;化为普通方程．

]
#solution[
\(7.16) 式两边立方，(7.17) 式两边平方，得

#numbered-align(($x^3 = a^3 t^6$, $$, true), ($y^2 = a^4 t^6$, $$, true));

#noindent;由 (7.18), (7.19) 两式可得 $ y^2 = a x^3 $

]
#example[
化直线的点斜式方程 $y - y_0 = k\(x - x_0\)$ 为参数方程．

]
#solution[
直线的点斜式方程可变为 $ k x - y + y_0 - k x_0 = 0 $ #noindent;因此直线具有方向向量为 $arrow(S) =\(1\,k\)$, 所以，直线方程的参数方程可写为 $ display(cases(x = x_0 + t, y = y_0 + k t)) $

]
#exercise[
+ #block(sticky: true)[把下列曲线的参数方程化为普通方程．]

  #cols(2)[
  + $display(cases(x = 3 + 2 t, y = 2 - 3 t))$

  + $display(cases(x = 2 + 3 cos theta, y = 4 - 3 sin theta))$

  + $display(cases(x = t, y = 4 t^2))$

  + $display(cases(x = cos^2 t, y = sin t))$

  ]

+ #block(sticky: true)[把下列普通方程化为参数方程．]

  #cols(2)[
  + $frac(x - 2, 4) = frac(y + 5, 3)$

  + $y = 4 x$

  + $frac(\(x - h\)^2, a^2) + frac(\(y - k\)^2, b^2) = 1$

  + $frac(\(x - h\)^2, a^2) - frac(\(y - k\)^2, b^2) = 1$

  + $y = 6 x^2$

  + $y^2 = 8 x$

  ]

]
#heading(level: 2, numbering: none, supplement: [toc-sub])[习题7.2]

+ 已知直线 $ell$ 通过点 $P_0\(x_0\,y_0\)$ 并且与已知单位向量 $arrow(e) =\(cos alpha\,sin alpha\)$ 平行，求直线 $ell$ 的参数方程．

+ 求经过点 $P\(1\,3\)$, 倾角是 $pi\/4$ 的参数方程．

+ 已知 $M\(x\,y\)$ 从原点以常速度向量 $arrow(v)\(v_x\,v_y\)$ 运动．求 $M$ 点的轨迹的参数方程．并且把它化为普通方程．如果 $M$ 点从 $A\(a\,b\)$ 点开始运动，$M$ 点的轨迹的参数方程怎样？

+ #block(sticky: true)[把下列参数方程化成普通方程．]

  #cols(2)[
  + $display(cases(x = t^2 - 2 t, y = t^2 + 2))$

  + $display(cases(x = frac(a\(1 - t^2\), 1 + t^2), y = frac(2 b t, 1 + t^2)))$

  + $display(cases(x = a sec phi, y = b tan phi))$

  + $display(cases(x = 5 t^2 - 1, y = 10 t^2 + 4))$

  + $display(cases(x = a / 2 (t + 1 / t), y = b / 2 (t - 1 / t)))$

  ]

+ 已知抛物线 $x = 2 p t^2$, $y = 2 p t$, 求证：通过对应 $t_1$, $t_2$ 两点的直线方程是 $ x -\(t_1 + t_2\)y + 2 p t_1 t_2 = 0 $

+ 已知抛物线 $x = 2 p t^2$, $y = 2 p t$, 求证：抛物线在点 $t_1$ 处的切线方程为 $ x - 2 t_1 y + 2 p t_1^2 = 0 $

+ 求证：抛物线 $x = 2 p t^2$, $y = 2 p t$, 在点 $t_1$⁠、$t_2$ 处的切线交点的坐标是 $ class("opening", stretch(\(, size: #1.2em)) 2 p t_1 t_2\,thick p\(t_1 + t_2\)class("closing", stretch(\), size: #1.2em)) $

+ 利用第7题的结论，证明：抛物线通过焦点的弦的两个端点处的切线相交在准线上．

#heading(level: 2, numbering: none, outlined: true)[复习题七]

+ #block(sticky: true)[画出下列各极坐标方程的图形．]

  #cols(2)[
  + $r theta = a$

  + $r = 2 theta$

  + $r = 5\(1 - cos theta\)$

  + $r = a sin 3 theta$

  + $r = a cos theta + b$

  + $r^2 = 16 sin 2 theta$

  ]

+ #block(sticky: true)[把下列各曲线的极坐标方程化为直角坐标方程．]

  #cols(2)[
  + $r sin theta = 10$

  + $r = 4 sin theta$

  + $r\(5 + 3 cos theta\)= 16$

  + $r\(4 + 5 cos theta\)= 9$

  + $r^2 cos 2 theta = - 1$

  + $r\(sin theta + 2 cos theta\)= 6$

  + $r = 2 cos theta + 3 sin theta$

  + $theta = 45 degree$

  + $r = frac(3, 2 + 3 sin theta)$

  + $r^2 = 9 cos 2 theta$

  ]

+ #block(sticky: true)[把下列各直角坐标方程化为极坐标方程．]

  #cols(2)[
  + $x^2 / a^2 - y^2 / b^2 = 1$

  + $frac(x^2, a + x) = frac(y^2, a - x)$

  + $x^2 + y^2 = 3 x y$

  + $y^2 = frac(x^3, 2 a - x)$

  + $x^2 + y^2 + 2 D x + 2 E y + F = 0$

  + $\(x^2 + y^2\)^3 = 4 x^2 y^2$

  + $x^4 + x^2 y^2 -\(x + y\)^2 = 0$

  + $\(x^2 + y^2\)^3 = 16 x^2 y^2\(x^2 - y^2\)^2$

  ]

+ 说明下列两条直线的位置关系．

  + $theta = alpha$ 和 $r cos\(theta - alpha\)= a$ ($a > 0$ 且为定值）；

  + $theta = alpha$ 和 $r sin\(theta - alpha\)= a$.

+ 求证：经 $P\(r_1\,theta_1\)$ 点和极轴交成 $alpha$ 角的直线方程是 $ r sin\(theta - alpha\)= r_1 sin\(theta_1 - alpha\) $

+ $O$ 点是原点，$P$ 点是椭圆 $x = 3 cos phi$, $y = 2 sin phi$ 上相当于 $phi = pi\/6$ 的一点，求直线 $O P$ 的倾角．

+ 已知椭圆 $x = a cos phi$, $y = b sin phi$, 求证：通过对应 $phi = alpha$ 和 $phi = beta$ 椭圆上两点的直线方程是 $ x / a cos 1 / 2\(alpha + beta\)+ y / b sin 1 / 2\(alpha + beta\)= cos 1 / 2\(alpha - beta\) $

+ 已知椭圆 $x = a cos phi$, $y = b sin phi$. 求证：椭圆上对应 $phi_1$ 点的切线方程是 $ x / a cos phi_1 + y / b sin phi_1 = 1 $

+ 一个圆的圆心在 $C\(a\,b\)$, 半径为 $R$. 求这个圆以圆心角 $theta$（从 $X$ 轴的正方向算起）为参数的参数方程．

+ 已知 $P$⁠、$Q$ 是椭圆 $x = a cos phi$, $y = b sin phi$ 上分别对应 $phi_1$ 和 $phi_2$ 的两点．求证：直线 $O P$ 和 $O Q$ 为椭圆共轭直径的条件是 $\|phi_1 - phi_2\|= 90 degree$.

+ 已知椭圆 $x = a cos phi$, $y = b sin phi$, $P$⁠、$Q$ 是椭圆上对应 $phi$ 和 $phi + 90 degree$ 的两点，求证：$ \|accent(O P, ⃗)\|^2 +\|accent(O Q, ⃗)\|^2 = a^2 + b^2 $

+ #block(sticky: true)[画出下列参数方程表示的图形．]

  #cols(2)[
  + $display(cases(x = 3 t - 5, y = t^3 - t))$

  + $display(cases(x = t - sin t, y = 1 - cos t))$

  ]
