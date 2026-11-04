// 由 typst/tools/tex2typ.py 从 math2/5.tex 转换而来，已人工校对的部分以本文件为准。
#import "../common/template.typ": *
#import "figs.typ": fig
#import "defs.typ": *

= 轨迹与作图
在前面的几章中，我们学习了直线形和圆的有关性质．学习的途径主要是根据图形的定义和已知性质去推演图形的其他性质．这一章，我们将把图形看成点的集合（点集），研究如何根据点所具有的某种性质来求出点集在平面上的形状和位置．

== 轨迹
=== 轨迹的概念
我们知道，物体在运动中都要经过一定的路线．例如，人在雪地里行走会留下明显的足迹，飞机飞行有一定的航线，地球运行也有它的轨道等等．一般，我们常把物体按某种规律运动的路线叫做物体运动的#strong[轨迹]．在几何中，我们用点表示物体在空间的位置．这样，一个点在空间按某种规律运动的路线，我们就把它叫做这个点运动的轨迹，这个点就叫做#strong[动点]．例如，我们用圆规画圆时，圆规的一个脚尖固定不动，而另一个脚上装上的铅笔尖端就可看作一个动点．它和固定的脚尖保持一定的距离运动，所画出的图形就是这个动点的轨迹．我们知道，圆是“同一平面上和某定点的距离等于定长的点的集合”．由此可见，按某种规律运动的点的轨迹，也就是具有某种性质的点的集合．

#blk[定义][
具有性质 $alpha$ 的所有点构成的集合，叫做具有性质 $alpha$ 的点的轨迹．

]
设 $X = { upright("具有性质") alpha upright("的点") }$．由上述定义，当我们要证明某图形 $A$ 是具有某种性质 $alpha$ 的点的轨迹时，也就是要证明集合 $A = X$.要证明 $A = X$,就必须从以下两方面进行证明：

+ $P$ 点 $in A arrow.r.double P$ 点具有性质 $alpha$ $\(P in X\)$.

+ $P$ 点具有性质 $alpha$ $\(P in X\)arrow.r.double P$ 点 $in A$.

按上述两个方面证明，这是缺一不可的．如果我们只证了第一条，实际上只是说明 $A$ 是 $X$ 的一个子集，并不能断定 $A = X$\;如果只证了第二条，也只是说 $X$ 是 $A$ 的一个子集，同样不能断定 $A = X$,只有当我们证明了第一条：$A subset.eq X$,又证明了第二条：$X subset.eq A$,我们才能断定 $A = X$.

第一条证明了 $A subset.eq X$,这就是说在图形 $A$ 上的点，都具有性质 $alpha$.没有一点是鱼目混珠的，通常把证这一条叫做证#strong[轨迹的纯粹性]．第二条证明了 $X subset.eq A$,这就是说，具有性质 $alpha$ 的点都在图形 $A$ 上，没有一点被遗漏掉．通常又把证这一条叫做证#strong[轨迹的完备性]．

由于原命题与逆否命题等价，所以也可以分别去证上述两条的逆否命题，即要证轨迹的纯粹性也可证：$ P upright("点不具有性质") alpha arrow.r.double P in.not A $ #noindent;要证轨迹的完备性时，也可证：$ P upright("点") in.not A arrow.r.double P upright("点不具有性质") alpha $

#exercise[
+ 叙述两个集合相等的定义．

+ 在证轨迹命题时，为什么既要证轨迹的纯粹性，又要证轨迹的完备性？

+ 如果我们证明了 $overline(A B)$ 的垂直平分线上的任一点到 $A$、$B$ 两点的距离相等，能否就说与 $A$、$B$ 两点距离相等的点的轨迹是 $overline(A B)$ 的垂直平分线？

]
=== 基本轨迹
这一小节，我们来学习六个平面上的点的基本轨迹，我们只证了1和4,其他四个由同学们自证．

#blk[基本轨迹1][
与两个已知点距离相等的点的轨迹是连结这两点的线段的垂直平分线．

]
已知：两定点 $A$、$B$,直线 $M N$ 是 $overline(A B)$ 的垂直平分线（图5.1）．

求证：与 $A$、$B$ 两点距离相等的点的轨迹是直线 $M N$.

#figure([#fig("5-01");

  ],
  caption: [
  ]
)

#proof[
+ 设 $P$ 是直线 $M N$ 上的任一点，作 $overline(P A)$、$overline(P B)$,在 $triangle.stroked.t A O P$ 与 $triangle.stroked.t B O P$ 中，

  $because quad overline(A O) = overline(B O)\,quad angle A O P = angle B O P\,quad overline(O P) = overline(O P)$

  $therefore quad triangle.stroked.t A O P tilde.equiv triangle.stroked.t B O P$（SAS），$overline(P A) = overline(P B)$.

  这就说明了直线 $M N$ 上的点，都与两点的距离相等．

+ 设 $Q$ 为与 $A$、$B$ 等距的点，即 $overline(Q A) = overline(Q B)$.过 $A B$ 的中点 $O$ 与 $Q$ 作直线 $O Q$,根据等腰三角形的性质，直线 $O Q$ 垂直平分 $overline(A B)$,但 $overline(A B)$ 的垂直平分线只有一条，

  $therefore quad M N$ 与 $O Q$ 重合，$Q in M N$.

于是由1、2可知，与 $A$、$B$ 两点距离相等的点的轨迹是直线 $M N$.

]
#blk[基本轨迹2][
与已知角的两边距离相等的点的轨迹是这个已知角的平分线．

]
#blk[基本轨迹3][
与两条平行线等距离的点的轨迹是和这两条平行线平行且平分它们的公垂线段的直线．

]
#blk[基本轨迹4][
与一条直线的距离等于定长的点的轨迹，是平行于这条直线，并和这条直线的距离等于定长的两条直线．

]
已知：直线 $C D pll$ 直线 $A B$\;直线 $E F pll$ 直线 $A B$\; $C D$、$E F$ 和 $A B$ 之间的距离都是 $d$（图5.2）．

求证：与 $A B$ 的距离等于 $d$ 的点的轨迹是 $C D$ 和 $E F$.

#figure([#fig("5-02");

  ],
  caption: [
  ]
)

#proof[
+ 设 $P$ 是 $C D$ 或 $E F$ 上的任一点．作 $P L tack.t A B$ 于 $L$ 点．

  $because quad C D pll A B$ 且和 $A B$ 的距离等于 $d$

  $therefore quad overline(P L)$ 是 $A B$ 和 $C D$ 的公垂线段，且 $overline(P L) = d$.

  这就是说 $C D$ 上的任一点和 $A B$ 的距离都等于 $d$,同理可证 $E F$ 上的任一点和 $A B$ 的距离也都等于 $d$.

+ 设 $P'$ 点是不在 $C D$ 或 $E F$ 上的任一点．经过 $P'$ 点作垂直于 $A B$ 的直线，分别交 $A B$、$C D$、$E F$ 于 $L'$、$M'$、$N'$,则 $overline(M' L') = overline(N' L') = d$.

  $because quad P'$ 不在 $C D$ 或 $E F$ 上

  $therefore quad P'$ 不和 $M'$、$N'$ 重合

  $because quad$ 在直线 $M' N'$ 上和 $L'$ 距离等于 $d$ 的点只有 $M'$、$N'$

  $therefore quad overline(P' L') eq.not d$

  这就是说，不在 $C D$ 和 $E F$ 上的任何一点和 $A B$ 的距离都不等于 $d$.

于是由1、2可知，和 $A B$ 的距离等于 $d$ 的点的轨迹是 $C D$ 和 $E F$．

]
#blk[基本轨迹5][
与一个定点的距离等于定长的点的轨迹，是以定点为圆心，定长为半径的一个圆．

]
#blk[基本轨迹6][
与一条定线段的两端连线所夹的角等于定角的点的轨迹，是以这条定线段为弦，所含的圆周角等于定角的两条弧．

]
以上六个基本轨迹是研究其他轨迹问题的基础，同学们一定要熟记．

#example[
求已知圆内等于定长的弦的中点的轨迹．

已知 $dot.o\(O\,r\)$ 和定长 $a$,且 $a < 2 r$（图5.3）．

求 $dot.o\(O\,r\)$ 内等于定长 $a$ 的弦的中点的轨迹．

]
#figure([#fig("5-03");

  ],
  caption: [
  ]
)

#solution[
如图5.3,设 $overline(A B)$ 是 $dot.o\(O\,r\)$ 内等于定长 $a$ 的弦，$M$ 是它的中点，作 $overline(O M)$,那么，$overline(O M) tack.t overline(A B)$．$ overline(A M) = 1 / 2 overline(A B) = a / 2 $ #noindent;所以 $ overline(O M) = sqrt(overline(O A)^2 - overline(A M)^2) = sqrt(r^2 - (a / 2)^2) $ #noindent;设 $r' = sqrt(r^2 - (a / 2)^2)$，则 $r'$ 为定长，以 $O$ 为圆心，$r'$ 为半径画 $dot.o\(O\,r'\)$,那么，$dot.o\(O\,r\)$ 内等于定长 $a$ 的弦的中点都在 $dot.o\(O\,r'\)$ 上．另外，在 $dot.o\(O\,r'\)$ 上任取一点 $P$,作 $overline(O P)$,再作弦 $overline(C D) tack.t overline(O P)$ 于 $P$ 点，则 $P$ 点是 $overline(C D)$ 弦的中点，且 $ overline(C D) = 2 overline(C P) = 2 sqrt(r^2 - r'^2) = 2 sqrt(r^2 - [r^2 - (a / 2)^2]) = 2 dot.op a / 2 = a $ #noindent;这就是说 $dot.o\(O\,r'\)$ 上的任一点都是 $dot.o\(O\,r\)$ 内等于定长 $a$ 的一条弦的中点，所以我们所求的轨迹就是 $dot.o\(O\,r'\)$．

]
#example[
过定圆外一定点引圆的割线，求割线被圆截下的弦的中点的轨迹．

已知：定 $dot.o\(O\,r\)$ 和 $dot.o O$ 外定点 $P$（图5.4）．

求：过 $P$ 点引 $dot.o O$ 的割线，被 $dot.o O$ 截下的弦的中点的轨迹．

]
#figure([#fig("5-04");

  ],
  caption: [
  ]
)

#solution[
由于轨迹是具有某种性质 $alpha$ 的点的集合，求轨迹时，可先按照“性质”画出一些点，看看这些点可能构成什么样的图形，如图5.4,过 $P$ 点作 $dot.o O$ 的割线，与 $dot.o O$ 相交于 $C$、$C'$,作弦 $overline(C C')$ 的中点 $M$,我们证割线 $P C C'$ 绕 $P$ 点旋转，看这条变动的割线被 $dot.o O$ 截下的弦的中点经过什么路线．大概可以看出，可能是一段圆弧，究竟是不是圆弧，如果是圆弧，又如何把它作出来，还要进一步分析．

$because quad M$ 是弦 $overline(C C')$ 的中点，作 $overline(O M)$

则 $overline(O M) tack.t overline(C C')$，即：$angle O M P$ 是直角．

这就是说，过 $P$ 点作 $dot.o O$ 的任一条割线被 $dot.o O$ 截下的弦的中点与 $O$、$P$ 的连线的夹角等于直角，因此，符合题中条件的弦的中点都在以 $overline(O P)$ 为直径的圆上，以 $overline(O P)$ 为直径作 $dot.o O'$,我们所作的 $dot.o O'$ 是不是就是所求的轨迹呢？这还要看 $dot.o O'$ 上有没有不符合条件的点．设 $dot.o O'$ 与 $dot.o O$ 相交于 $A$、$B$ 两点．显然，在 $dot.o O'$ 上 $overparen(A O B)$ 外的点都是不合条件的（包括 $A$、$B$），我们再来看 $overparen(A O B)$ 上的点是不是都是合条件的点．在 $overparen(A O B)$ 上任取一点 $X$,设 $P X$ 与 $dot.o O$ 相交于 $D$、$D'$,作 $overline(O X)$,则 $overline(O X) tack.t overline(D D')$,所以 $X$ 是 $overline(D D')$ 的中点，这就是说 $overparen(A O B)$ 上的点都是过 $P$ 点的某条割线被 $dot.o O$ 截下的弦的中点．

]
综合以上分析我们可得：过定圆外一定点引圆的割线，割线被圆截下的弦的中点的轨迹是以定点与圆心间的线段为直径的圆被夹在定圆内的一段弧．

#exercise[
说出下列的点的轨迹是什么图形？并把它们分别画出来．

+ 到一条5cm长的线段的两端距离相等的点的轨迹．

+ 通过两定点的圆的圆心的轨迹．

+ 到一个等于60$"" degree$ 的已知角的两边距离相等的点的轨迹．

+ 与两条相交直线等距离的点的轨迹．

+ 与 $angle A O B$ 的两边都相切的圆的圆心的轨迹．

+ 与距离是3cm的两条平行直线 $A B$、$C D$ 的距离相等的点的轨迹．

+ 与距离是3cm的两条平行直线都相切的圆的圆心的轨迹．

+ 和已知直线 $A B$ 的距离等于2cm的点的轨迹．

+ 和已知直线 $A B$ 相切，并且半径等于1.5cm的圆的圆心的轨迹．

+ 和一条已知直线切于已知点的圆的圆心的轨迹．

+ 与定点 $A$ 的距离等于2cm的点的轨迹．

+ 和一条长是3cm的 $overline(A B)$ 的两端连线所夹的角是直角的点的轨迹．

+ 和一条长是4cm的已知线段 $overline(A B)$ 的两端连线所夹的角等于60$"" degree$ 的点的轨迹．

]
#heading(level: 2, numbering: none, supplement: [toc-sub])[习题5.1]

+ 求下列轨迹

  + 以已知 $overline(A B)$ 为一边的三角形的外心的轨迹．

  + 以已知 $overline(A B)$ 为一边，并且这边上的中线的长等于定长 $m$ 的三角形的重心的轨迹．

  + 以3cm长的已知 $overline(A B)$ 为一边，并且面积等于6平方厘米的三角形的顶点 $C$ 的轨迹．

  + 和一个半径等于定长 $r$ 的 $dot.o O$ 外切，并且半径等于 $r'$ 的圆的圆心的轨迹．

  + 以已知 $overline(B C)$ 为斜边的直角 $triangle.stroked.t A B C$ 的顶点 $A$ 的轨迹．

+ 叙述符合下列条件的点的轨迹．

  + 平行于三角形的一边而夹在其余两边之间的线段的中点的轨迹．

  + 平行于已知直线而在已知圆内的弦的中点的轨迹．

+ 作出下列各题中给出的两个点集，问它们的交集各含有几个元素．

  + 和距离等于3cm的两条已知平行线 $A B$、$C D$ 的距离相等的点集；和直线 $A B$ 上的一定点 $E$ 的距离是2cm的点集．

  + 和已知 $angle A O B$ 的两边的距离相等的点集；和边 $O A$ 的距离等于 $d$ 的点集．

  + 和一条长3cm的已知 $overline(A B)$ 的两端连线所夹的角是直角的点集；和 $overline(A B)$ 所在直线距离等于2cm的点集．

+ 求通过 $dot.o\(O\,r\)$ 内一定点 $P$ 的弦的中点的轨迹．

+ 求到 $dot.o\(O\,3 upright(c m)\)$ 的圆幂等于4cm的点的轨迹．

== 作图
=== 基本作图
在前几章中，我们曾用直尺、圆规解过不少作图题．在这一节里，我们将进一步学习解作图题的一些重要方法，下面列出我们已经学过的一些作图题（具体作法不再写出，由同学自己复习、研究），这些作图题一般叫做#strong[基本作图题]，它们是进一步解较复杂的作图题的基础．

+ 作一条线段等于已知线段，作一条线段等于 $n$ 条线段的和（$n gt.eq 2$ 且 $n in bb(N)^(+)$）．

+ 作一条线段等于两条已知线段的差．

+ 作一个角等于已知角．

+ 平分一个已知角．

+ 过已知直线上或已知直线外一点，作已知直线的垂线．

+ 作已知线段的垂直平分线．

+ 等分已知线段．

+ 按已知条件作三角形．

  + 已知三边．

  + 已知两边及其夹角．

  + 已知两角及其中一角的对边．

  + 已知两角及其夹边．

+ 作三角形的外接圆和内切圆．

+ 已知斜边和一直角边，作直角三角形．

+ 已知线段 $a$,作一线段 $x = m / n a$. (其中 $m / n$ 是正有理数）．

+ 作已知三条线段 $a$、$b$、$c$ 的比例第四项．

+ 已知线段 $a$、$b$,作 $a$、$b$ 的比例中项．

+ 已知线段 $a$、$b$ $\(a > b\)$,作线段 $x = sqrt(a^2 + b^2)$ 或 $x = sqrt(a^2 - b^2)$．

+ 已知线段 $a$,作线段 $x = sqrt(m / n) a$（$m / n$ 为正有理数）．

+ 过已知圆上一点作圆的切线．

+ 过已知圆外一点作圆的切线．

+ 作两个已知圆的公切线．

+ 过已知直线外的一个已知点，作这条直线的平行线．

#exercise[
+ 作一直角三角形 $A B C$,使 $angle C = 90 degree$, $overline(A B) = 3$cm, $overline(B C) = 2$cm.你能想出几种作法？

+ 已知线段 $a$、$b$，你能用几种方法作线段 $x = sqrt(a b)$．

+ 已知线段 $a$,作线段 $x = sqrt(2 / 3) a$

+ 过圆外一点，你能用几种方法作这个圆的切线．

]
=== 轨迹法作图
我们在解作图题时，常常归结为要确定某些点的位置，而这些点所要满足的条件又往往不是一个，我们只要根据点所满足的各个条件，分别作出相应的轨迹，那么，这些轨迹交集中的点，就是我们所要求作的点．

例如，已知两个定点 $B$、$C$,且 $overline(B C) = 3$cm（图5.5），以 $B$、$C$ 为两个顶点，求作一三角形，使第三个顶点与 $B$ 的距离是2cm,与 $C$ 的距离是4cm,这个作图题，实际上就是确定三角形的第三个顶点的位置．第三个顶点要满足两个条件：

+ 和 $B$ 点的距离是2cm

+ 和 $C$ 点的距离是4cm

满足第一个条件的点的轨迹是 $dot.o\(B\,2 upright(c m)\)$，满足第二个条件的点的轨迹是 $dot.o\(C\,4 upright(c m)\)$，所以第三个顶点就应该是 $dot.o\(B\,2 upright(c m)\)$ 与 $dot.o\(C\,4 upright(c m)\)$ 的交集中的点．由作图可知：$ dot.o\(B\,2 upright(c m)\)inter dot.o\(C\,4 upright(c m)\)= { A\,A' } $ #noindent;于是，$A$ 点和 $A'$ 点都是我们所要求作的点，$triangle.stroked.t A B C$ 与 $triangle.stroked.t A' B C$ 都是我们所要求作的三角形．像这样应用轨迹的交集来确定点的位置，从而来解作图题的方法，就叫做#strong[轨迹法]．

#align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, figure([#fig("5-05");], caption: []), figure([#fig("5-06");], caption: [])));

#example[
已知一条定直线和直线外两个定点，求作一个圆，使圆心在这条直线上，并且经过这两个定点．

]
已知：定直线 $ell$ 和两定点 $A$、$B$,且 $A in.not ell$, $B in.not ell$（图5.6）．

求作：一圆使圆心在 $ell$ 上，且经过 $A$、$B$ 两点．

分析：假定 $dot.o O$ 为所求作的圆；那么，圆心 $O$ 应满足两个条件：

+ $O in ell$；

+ $O$ 点到 $A$、$B$ 两点等距离．

因为 $ell$ 是已知的直线，而到 $A$、$B$ 两点等距离的点的轨迹是 $overline(A B)$ 的垂直平分线，所以，圆心 $O$ 应是 $ell inter overline(A B)$ 的垂直平分线中的点，于是得作法如下：

作法：

+ 作 $overline(A B)$\;

+ 作 $overline(A B)$ 的垂直平分线 $m$ 与 $ell$ 相交于 $O$ 点，

+ 以 $O$ 为圆心，$overline(O A)$ 为半径作 $dot.o O$,则 $dot.o O$ 即为所求作的圆．

#proof[
作 $overline(O A)$、$overline(O B)$,

$because quad m$ 是 $overline(A B)$ 的垂直平分线，且 $O in m$.

$therefore quad overline(O A) = overline(O B)$

#cols(2)[
$because quad A$ 点 $in dot.o O$，

$therefore quad B$ 点 $in dot.o O$，

又知 $O$ 点 $in ell$，

$therefore dot.o O$ 为所求作的圆．

]
]
讨论：

+ 当直线 $ell$ 与AB所在的直线不垂直时，$overline(A B)$ 的垂直平分线 $m$ 与 $ell$ 一定有一个交点，且只有一个交点．这时，问题有一解．

+ 当 $ell$ 与直线 $overline(A B)$ 垂直时，如果 $ell$ 与 $m$ 重合时，问题有无穷多解；如果 $ell pll m$ 时问题无解．

#example[
已知三角形的一边和这条边上的中线及高，求作三角形．

]
已知：线段 $a$、$m$、$h$（图5.7）．

#figure([#fig("5-07");

  ],
  caption: [
  ]
)

求作：三角形使它的一边等于 $a$,且这边上的中线等于 $m$,高等于 $h$.

分析：画一草图（图5.7），假设 $triangle.stroked.t A B C$ 为所求作的三角形，且 $overline(B C) = a$, $overline(B C)$ 上的中线 $overline(A M) = m$,高 $overline(A D) = h$, $B$、$C$ 两个顶点由条件 $overline(B C) = a$,很容易确定；$A$ 点的位置应该满足条件：

+ 与 $overline(B C)$ 的中点 $M$ 的距离等于 $m$ 的长；

+ 与 $overline(B C)$ 所在直线的距离等于 $h$.

分别满足条件1和2的轨迹都可作，故 $A$ 的位置可作出，于是所要求作的三角形可作．

作法：（图5.8）

#figure([#fig("5-08");

  ],
  caption: [
  ]
)

+ 任取一点 $B$,作 $overline(B C) = a$,

+ 作直线 $ell pll$ 直线 $B C$,且与直线 $B C$ 的距离等于 $h$.

+ 作 $overline(B C)$ 的中点 $M$,作 $dot.o\(M\,m\)$ 交 $ell$ 于 $A$ 点

+ 作 $overline(A B)$、$overline(A C)$,则 $triangle.stroked.t A B C$ 为所求作的三角形．

#proof[
（略）

]
讨论

+ 当 $m gt.eq h$ 时，由于 $dot.o\(M\,m\)$ 与直线 $ell$ 能够相交，所以问题有一解．

+ 当 $m < h$ 时，$dot.o\(M\,m\)$ 与直线 $ell$ 不相交，所以这时问题无解．

#rmk[
上题中所求作的三角形，并没有指定它在平面上的确切位置（叫做#strong[不定位]），我们可在不同的位置分别作出很多满足已知条件的三角形，而且这些三角形都是全等形，遇到这种情况，我们任作一个满足条件的图形就可以了，并说问题只有一解；如果作出的满足已知条件的三角形不是全等形，那么要把这些图形都作出来，作出几个，我们就说问题有几解．如果在问题里是要求在固定位置作图（叫做#strong[定位]），那么不管作出的是不是全等形，都要把它们作出来，作出几个我们就说问题有几解．

]
#example[
求作和定角 $angle A B C$ 的两边都相切，并且半径等于 $r$ 的圆．

]
已知：$angle A B C$,线段 $r$（图5.9）．

求作：和 $angle A B C$ 的两边都相切，并且半径等于 $r$ 的圆．

分析：画一草图（图5.10），假设 $dot.o O$ 为所求作的圆，且 $dot.o O$ 的半径等于 $r$,那么圆心 $O$ 应满足条件：

+ 与 $angle A B C$ 的两边等距离；

+ 与边 $B A$ 或 $B C$ 的距离等于 $r$．

但满足1或2的轨迹都可作，故所求的圆的圆心可以作出．

作法：（图5.9）

+ 作 $angle A B C$ 的平分线 $B F$\;

+ 作直线 $ell pll B C$,且与 $B C$ 的距离等于 $r$,设 $ell$ 与 $B F$ 相交于 $O$ 点；

+ 以 $O$ 为圆心，$r$ 为半径作 $dot.o\(O\,r\)$, $dot.o\(O\,r\)$ 即为所求作的圆．

#align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, figure([#fig("5-09");], caption: []), figure([#fig("5-10");], caption: [])));

#proof[
作 $overline(O D) tack.t B A$ 于 $D$ 点，$overline(O E) tack.t B C$ 于 $E$ 点．

$because quad B F$ 平分 $angle A B C$,且 $O in B F$,

$therefore quad overline(O D) = overline(O E)$

又 $because quad O in ell$,而 $ell$ 与 $B C$ 的距离是 $r$ 的长．

$therefore quad overline(O D) = overline(O E) = r\,quad D in dot.o O\,quad E in dot.o O$

$dot.o O$ 与 $B A$ 和 $B C$ 都相切，$dot.o O$ 为所求作的圆．

]
讨论：由于 $angle A B C$ 的平分线 $B F$ 与直线 $ell$ 不会平行，所以它们总有一个唯一的交点，所以此题只有一解．

从例5.5中可以看到，$overparen(D E)$ 把 $angle A B C$ 的两边在切点 $D$、$E$ 处连接起来了，这种连结叫做#strong[直线与圆弧的平滑连接]．

#example[
已知：$dot.o\(O_1\,r_1\)$ 和 $dot.o\(O_2\,r_2\)$ 外离，且 $r_1 = 10$mm, $r_2 = 8$mm（图5.11）．

求作：一圆与 $dot.o\(O_1\,r_1\)$ 外切，与 $dot.o\(O_2\,r_2\)$ 内切，并且半径是20mm.

]
#align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, figure([#fig("5-11");], caption: []), figure([#fig("5-12");], caption: [])));

#analyze[
画一草图（图5.12），设 $dot.o\(O\,20 upright(m m)\)$ 为要求作的圆．由于 $dot.o\(O\,20 upright(m m)\)$ 与 $dot.o\(O_1\,r_1\)$ 外切，并与 $dot.o\(O_2\,r_2\)$ 内切，所以 $ overline(O O_1) & = r_1 + 20 upright(m m) = 30 upright(m m)\
overline(O O_2) & = 20 upright(m m) - r_2 = 12 upright(m m) $

因此，$O$ 点是 $dot.o\(O_1\,30 upright(m m)\)$ 和 $dot.o\(O_2\,12 upright(m m)\)$ 的交点，故 $O$ 点可作出．

]
作法：（图5.11）．

+ 作 $dot.o\(O_1\,30 upright(m m)\)$ 和 $dot.o\(O_2\,12 upright(m m)\)$,设两圆有交点 $O$\;

+ 以 $O$ 为圆心，以20mm为半径作 $dot.o O$,即 $dot.o O$ 为所求作的圆．

#proof[
（略）

]
讨论：

+ 当 $\(r_1 + 20 upright(m m)\)+\(20 upright(m m) - r_2\)gt.eq overline(O_1 O_2)$ 时，即当 $overline(O_1 O_2) lt.eq 42 upright(m m)$ 时，问题有一解．

+ 当 $overline(O_1 O_2) > 42 upright(m m)$ 时，问题无解．

从例5.6中的图5.11,我们可看出 $dot.o O_1$ 的 $overparen(A B)$ 与 $dot.o O$ 的 $overparen(B C)$ 在切点 $B$ 处连接起来了，这种连结叫做#strong[圆弧与圆弧的平滑连接]．

#exercise[
+ 已知两定点 $A$、$B$,且直线 $A B$ 与定直线 $ell$ 平行，在 $ell$ 上求作与 $A$、$B$ 两点距离相等的点．

+ 求作和两条相交直线 $ell$ 和 $m$ 的距离相等，且和它们的交点的距离等于定长 $d$ 的点．

+ 求作和已知直线 $ell$ 的距离等于定长 $d$，并且和 $ell$ 上的一个定点的距离等于 $2 d$ 的点．

+ 求作和 $overline(A B)$ 的两端的距离相等，且和 $overline(A B)$ 的两端的连线所夹的角等于定角 $alpha$ 的点．

+ 求作等腰三角形，使它的底边等于定长 $a$,顶角等于定角 $alpha$.

+ 求作一圆，使它的半径等于定长 $a$,且经过一定点并和一条定直线相切．

+ 已知三角形的二边和其中一边上的高，求作三角形．

+ 已知 $dot.o\(O\,15 upright(m m)\)$ 和直线 $ell$,并且 $ell$ 与 $dot.o O$ 相离，画半径为10mm的圆，使其与 $dot.o O$ 外切并和 $ell$ 相切．

]
=== 代数法作图
解作图题时，有时也常常归结为要求作一条线段的长度问题．这时我们可根据给出的条件，求出这条线段的代数表达式，根据线段的代数表达式，把线段作出，使问题得到解决．这种解作图题的方法，就叫做#strong[代数分析法]．

#example[
已知：正方形 $A B C D$\(图5.13).

求作：一点 $P$ 使 $P in overline(C D)$,且 $overline(A P) = overline(B C) + overline(C P)$.

]
#align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, figure([#fig("5-13");], caption: []), figure([#fig("5-14");], caption: [])));

#analyze[
画一草图（图5.14），已知正方形 $A B C D$,假设 $P$ 点是所求作的点，即 $P in overline(C D)$,且 $overline(A P) = overline(B C) + overline(C P)$,设 $overline(C P) = x$, $overline(B C) = a$,故 $overline(A P) = a + x$, $overline(D P) = overline(D C) - overline(C P) = overline(B C) - overline(C P) = a - x$,又因 $triangle.stroked.t A D P$ 是直角三角形，所以根据勾股定理有：$overline(A P)^2 = overline(A D)^2 + overline(D P)^2$,即：$\(a + x\)^2 = a^2 +\(a - x\)^2$.解此方程得 $x = a / 4$；$a$ 为已知，$a / 4$ 可作出，故 $P$ 点也可作出．

]
作法：（图5.13）．

+ 作 $overline(C D)$ 的中点 $E$.

+ 作 $overline(C E)$ 的中点 $P$, $P$ 点即为所求作的点．

#proof[
由作图知 $overline(C P) = a / 4$,

$therefore quad overline(D P) = overline(C D) - overline(C P) = 3 / 4 a$ $ overline(A P) = sqrt(overline(A D)^2 + overline(D P)^2) = sqrt(a^2 + (3 / 4 a)^2) = 5 / 4 a = a + a / 4 $ #noindent;$ overline(A P) = overline(B C) + overline(C P) $

]
讨论：由分析知，$overline(D P) : overline(P C) = 3 : 1$,因为分点 $P$ 是唯一的，所以此题只有一解．

#example[
在已知线段上求作一点，分已知线段为两部分，使其中一部分是全线段和另一部分的比例中项．

已知：$overline(A B)$\(图5.15).

求作：$overline(A B)$ 的内分点 $G$,使 $overline(A G)^2 = overline(A B) dot.op overline(G B)$.

]
#align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, figure([#fig("5-15");], caption: []), figure([#fig("5-16");], caption: [])));

#analyze[
画一草图（图5.16），已知 $overline(A B)$,假定 $G$ 为所求之点，设 $overline(A G) = x$,则 $overline(B G) = a - x$, $x$ 满足方程 $ x^2 = a\(a - x\) $ #noindent;即：$x^2 + a x - a^2 = 0$.解此方程得：$ x_1 = frac(- a + sqrt(4 a^2 + a^2), 2)\,#h(2em) x_2 = frac(- a - sqrt(4 a^2 + a^2), 2) quad upright("舍去") $ #noindent;$therefore quad x = frac(- a + sqrt(4 a^2 + a^2), 2) = sqrt(4 a^2 + a^2) / 2 - a / 2 = sqrt(a^2 + (a / 2)^2) - a / 2$

此线段 $x$ 可作，故 $G$ 点也可作出来．

]
作法：（图5.15）．

+ 作 $overline(B D) tack.t overline(A B)$,使 $overline(B D) = 1 / 2 overline(A B)$

+ 在 $overline(D A)$ 上截取 $overline(D E) = overline(D B)$,

+ 在 $overline(A B)$ 上截取 $overline(A G) = overline(A E)$, $G$ 点即为所求作的点．

#proof[
设 $overline(A B) = a$,由作法有，$ overline(A G) & = overline(A E) = overline(A D) - overline(E D)\
 & = sqrt(overline(A B)^2 + overline(B D)^2) - overline(B D) = sqrt(a^2 + (a / 2)^2) - a / 2\
overline(G B) & = overline(A B) - overline(A G) = a - (sqrt(a^2 + (a / 2)^2) - a / 2)\
 & = 3 / 2 a - sqrt(a^2 + (a / 2)^2) $ #noindent;$therefore quad overline(A B) dot.op overline(G B) = a (3 / 2 a - sqrt(a^2 + (a / 2)^2))$

由于：$ overline(A G)^2 & = (sqrt(a^2 + (a / 2)^2) - a / 2)^2\
 & = a^2 + (a / 2)^2 - 2 times a / 2 times sqrt(a^2 + (a / 2)^2) + (a / 2)^2\
 & = 3 / 2 a^2 - a sqrt(a^2 + (a / 2)^2)\
 & = a (3 / 2 a - sqrt(a^2 + (a / 2)^2)) $ #noindent;$therefore quad overline(A G)^2 = overline(A B) dot.op overline(B G)$

故 $G$ 点为所求之点．

]
讨论：由分析可知，满足条件的 $overline(A G)$ 总有一个，所以 $G$ 点总能作出一个，故此题有一解也只有一解．

由于 $ overline(A G) = sqrt(a^2 + (a / 2)^2) - a / 2 = sqrt(5) / 2 a - 1 / 2 a = frac(sqrt(5) - 1, 2) a approx 0.618 a $ #noindent;所以 $overline(A G)$ 是 $overline(A B)$ 被 $G$ 点分成的两段中，较长的一段，这种作图通常叫做分已知线段成“#strong[中外比]”，又叫做#strong[黄金分割]．

#example[
在已知圆中，作内接正十边形．

已知：$dot.o\(O\,r\)$\(图5.17).

求作：$dot.o O$ 的内接正十边形．

]
#align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, figure([#fig("5-17");], caption: []), figure([#fig("5-18");], caption: [])));

#analyze[
画一草图（图5.18），设 $overline(A B)$ 是 $dot.o O$ 的内接正十边形的一边，则 $ angle A O B = 36 degree\,#h(2em) angle O A B = angle O B A = 72 degree $ #noindent;作 $angle O B A$ 的平分线交 $overline(O A)$ 于 $C'$ 点，则 $ angle O B C' = angle A B C' = 1 / 2 angle O B A = 36 degree $ #noindent;又知 $angle B C' A = 180 degree - angle A B C' - angle O A B$,

$therefore quad angle B C' A = 72 degree\,quad overline(O C') = overline(B C') = overline(A B)$,且 $ triangle.stroked.t O A B tilde.rev triangle.stroked.t B A C'\,quad overline(O A) : overline(A B) = overline(A B) : overline(A C') $

即：$overline(A B)^2 = overline(O A) dot.op overline(A C')$

$therefore quad overline(O C')^2 = overline(O A) dot.op overline(A C')$

]
这个结果告诉我们，$C'$ 点恰好把半径 $overline(O A)$ 分成中外比且 $overline(O C')$ 是较长的一段．故应用黄金分割法由已知圆的半径作出正十边形的边长，从而圆内接正十边形可以作出来．

作法\(图5.17).

+ 作半径 $overline(O A)$.

+ 作 $C'$ 点分 $overline(O A)$ 成中外比，使 $overline(O C')$ 为较长的一段，

+ 以 $A$ 为起点，顺次作 $dot.o O$ 的弦 $overline(A B)$、$overline(B C)$、$overline(C D)$、$overline(D E)$、$overline(E F)$、$overline(F G)$、$overline(G H)$、$overline(H I)$、$overline(I J)$、$overline(J A)$,且使它们都等于 $overline(O C')$,则 $A B C D E F G H I J$ 为所求作的圆内接正十边形．

#proof[
（略）

]
讨论：由分析可知一个圆内接正十边形的边长等于一个定值，所以此问题有一解．

我们把圆十等分后，把相间的五个分点用弦顺次连结，就可作出圆内接正五边形，把正五边形的五条对角线都作出来，然后去掉各边剩下的图形就是正五角星了（图5.19）．

#figure([#fig("5-19");

  ],
  caption: [
  ]
)

通过以上三例，我们看出，用代数法解作图题的一般步骤：

- 首先要分析解决这个问题需要作出哪条线段，并用 $x$ 表示；

- 其次依照题中所给的条件和图形的性质，列出关于 $x$ 的方程；

- 第三步，解这个方程（不合题意的根舍去）；

- 第四步，依照方程的根的表示式，作出未知线段 $x$\;

- 第五步，完成作图．即得所求作的图形．

#exercise[
+ 已知线段 $a$、$b$ ($a > b$),求作下列线段 $x$

  #cols(2)[
  + $x = frac(a b, a + b)$

  + $x = sqrt(4 a^2 + b^2)$

  + $x = sqrt(a^2 - b^2 / 4)$

  + $x = sqrt(a^2 + 3 b^2) - b / 2$

  ]

+ 求作已知三角形的相似形，使它的面积等于已知三角形面积的三分之二．

+ 从圆外一定点求作圆的一条割线，使它的圆外部分同圆内部分相等．

+ 求作一正方形，使它同已知长方形等积．

+ 在已知梯形中，求作底的平行线，平分已知梯形的面积．

+ 作一圆的内接正五边形（只用尺、规）．

+ 经过圆内一点作一条弦，使这个点是这条弦的一个三等分点．

]
#heading(level: 2, numbering: none, supplement: [toc-sub])[习题5.2]

+ 已知线段 $a$、$b$、$c$ 且 $a > b$,求作线段 $x = sqrt(a^2 - b^2) + c$.

+ 已知五条线段 $a$、$b$、$c$、$d$、$e$,求作线段 $x = frac(a b c, d e)$．

+ 已知线段 $a$,求作一条线段 $x = frac(sqrt(5) - 1, 2) a$

+ 已知线段 $a$、$b$,且 $a > b$,求作 $a + b$ 和 $a - b$ 的比例中项．

+ 求作与一个已知圆相切于已知点，且经过已知圆外的一个定点的圆．

+ 已知三角形的一边长是3cm,这边上的中线长4cm,这边的对角是 $65 degree$,求作这个三角形．

+ 已知一边和这边上的中线及另一边上的高线，求作这个三角形．

+ 求作一个三角形，使它同已知三角形等积，又同另一个已知的三角形相似．

+ 求作直径是 $d$ 的圆内接矩形，使它的面积等于每边是 $a$ 的已知正方形面积（提示：设矩形的长、宽各为 $x$、$y$,列出含有 $x$、$y$ 的方程组解之）．

+ 从已知圆外的一个已知点，作圆的割线，使它在圆外的部分与圆内的部分的比是 $1 : 2$.

+ 求作过两定点，且在一条定直线上截取定长弦的圆（提示：利用切割线定理）．

#heading(level: 2, numbering: none)[复习题五]
+ 连结一定直线上的点和线外一定点的线段，求这线段中点的轨迹．

+ 求具有公共底边，且这边上的高相等的三角形顶点的轨迹．

+ 三定点 $A$、$B$、$C$ 在一直线上，且 $overline(A B) = overline(B C)$,求与 $A$、$B$ 两点和与 $B$、$C$ 两点连线夹角相等点的轨迹．

+ 从一定点 $A$ 向通过另一定点 $B$ 的动直线引垂线，求垂足 $P$ 的轨迹．

+ 求到两定点 $A$、$B$ 的距离的平方和等于 $overline(A B)^2$ 的点的轨迹．

+ 求到一定圆引切线，切线长等于定长的点的轨迹．

+ 求对相交的两定圆有等幂的点的轨迹．

+ 求到两定点 $A$、$B$ 的距离的平方差等于 $overline(A B)^2$ 的点的轨迹．

+ 已知三点 $A$、$B$、$C$ 在一条直线上，求与 $A$、$B$ 两点和 $B$、$C$ 两点连线夹角相等的点的轨迹．

+ 求作一个圆使和两条已知平行线都相切，并且经过两平行线间一个已知点．

+ 已知 $dot.o\(O_1\,1.5 upright(c m)\)$, $dot.o\(O_2\,1 upright(c m)\)$,圆心间的距离 $overline(O_1 O_2) = 4 upright(c m)$,求作一圆，使它的半径等于1.3cm,并且和 $dot.o O_1$ 与 $dot.o O_2$ 都外切．

+ 已知 $dot.o\(O_1\,1.4 upright(c m)\)$, $dot.o\(O_2\,1 upright(c m)\)$, $overline(O_1 O_2) = 3 upright(c m)$,求作一个圆，使它的半径为3.2cm,并且和 $dot.o O_1$ 与 $dot.o O_2$ 都相内切．

+ 已知线段 $a$,求作线段 $x = sqrt(3) a$, $y = sqrt(12) a$.

+ 已知线段 $x$ 与 $y$ 满足方程组：$ display(cases(frac(x + y, 2) = a, sqrt(x y) = b)) #h(2em)\(a > b\) $ #noindent;求作线段 $x$ 和 $y$.

+ 作一个三角形具有已知的周长，并和一个已知三角形相似．

+ 求作 $triangle.stroked.t A B C$ 的内接正方形，使正方形的一边位于 $overline(A B)$ 边上，另外两个顶点各在 $overline(A C)$ 边和 $overline(B C)$ 边上．

+ 在已知正方形 $A B C D$ 内作内接正方形，使内接正方形的四个顶点分别在正方形的各边上，且使它的边长等于定长 $b$.

+ 把任一个三角形改为等边三角形，使它的面积不变．

+ 求作三个两两外切的圆，使它们的半径分别等于1cm, 2cm, 3cm.

+ 作一个正五角星（只画出图形）．

+ 已知 $A$、$B$、$C$ 为定直线 $ell$ 上的三个定点，求作 $dot.o A$、$dot.o B$、$dot.o C$ 使它们两两均相切，但不切于同一点．

+ 在已知矩形内作两个互相外切的等圆，使各切于这矩形一组对角的两边．
