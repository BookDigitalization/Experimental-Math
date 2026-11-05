// 由 typst/tools/tex2typ.py 从 math2/4.tex 转换而来，已人工校对的部分以本文件为准。
#import "../common/template.typ": *
#import "figs.typ": fig
#import "defs.typ": *

= 圆
在工农业生产和日常生活中，圆的应用相当广泛．过去我们初步掌握了一些圆的知识，这一章我们将在复习这些知识的基础上，把圆和直线形结合起来，进一步学习有关圆的一些性质．

== 圆的基本性质
=== 圆的概念
在一个平面上和某一定点的距离等于定长的点的集合叫做#strong[圆周]，简称为#strong[圆]；其中定点叫做圆的#strong[圆心]，连结圆心与圆上任一点的线段叫做#strong[半径]．通常以点 $O$ 为圆心的圆记作 $dot.o O$\; 以点 $O$ 为圆心，半径长是 $r$ 的圆记作 $dot.o\(O\,r\)$⁠．

显然，#strong[同圆的半径都相等]（图4.1）．而当一个圆的圆心确定了，半径 $r$ 的大小也确定了，这个圆的位置与大小也就完全确定了．

圆上任意两点间的部分叫做#strong[弧]；连结圆上任意两点间的线段叫做这个圆的弦；通过圆心的弦叫做圆的#strong[直径]（图4.2）．显然，#strong[一个圆的直径等于它的半径的二倍]．

#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("4-01");], caption: []), figure([#fig("4-02");], caption: []))));

从圆的定义，不难直接推知：

- 两个圆能够重合的充要条件是两个圆的半径相等．

- 半径相等的圆叫做#strong[等圆]，#strong[等圆的半径相等直径相等]．

从圆的定义，我们还可以看出，一个圆把它所在的平面分为三部分（图4.3）：

+ 圆本身，即与圆心的距离等于半径的点所构成的集合．其中任何一点都叫做圆上的点．

+ 圆的内部，与圆心的距离小于半径的点所构成的集合．圆的内部又简称#strong[圆内]；其中任何一点都叫做圆内的点．

+ 圆的外部：与圆心的距离大于半径的点所构成的集合；圆的外部又简称#strong[圆外]，其中任何一点都叫做圆外的点．

#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("4-03");], caption: []), figure([#fig("4-04");], caption: []))));

通常我们说的圆面，指的是由圆所围成的平面部分，也就是与圆心的距离小于或等于半径的点所构成的集合．如图4.3中阴影部分．

由上述定义可知，$dot.o\(O\,r\)$ 与平面上任一点 $P$ 的位置关系，有下述的性质（图4.4）．

+ 点 $P$ 在 $dot.o\(O\,r\)$ 上的充要条件是 $overline(O P) = r$⁠；

+ 点 $P$ 在 $dot.o\(O\,r\)$ 内的充要条件是 $overline(O P) < r$⁠；

+ 点 $P$ 在 $dot.o\(O\,r\)$ 外的充要条件是 $overline(O P) > r$⁠．

#exercise[
+ 根据下述条件画圆

  + 已知定点 $O$, 以 $O$ 为圆心画一圆使半径等于2厘米．

  + 已知两个定点 $O$⁠、$P$, 画 $dot.o\(O\,overline(O P)\)$.

  + 先画一条 $overline(A B)$, 再画出以 $overline(A B)$ 为直径的圆．

+ 把以下命题写成“若---则”形式

  + 点 $P$ 在 $dot.o\(O\,r\)$ 上的充分条件是 $overline(O P) = r$⁠；

  + 点 $P$ 在 $dot.o\(O\,r\)$ 内的必要条件是 $overline(O P) < r$⁠；

  + 点 $P$ 在 $dot.o\(O\,r\)$ 外的充分条件是 $overline(O P) > r$⁠．

+ #block(sticky: true)[以点 $O$ 为圆心，$r_1$⁠、$r_2$ 为半径画两个圆．说出满足下列条件的点 $X$ 在平面上的位置范围．]

  #cols(2)[
  + $overline(O X) > r_2$

  + $overline(O X) lt.eq r_1$

  + $r_1 < overline(O X) < r_2$

  + $overline(O X) = r_1$

  + $overline(O X) < r_1$

  ]

+ #block(sticky: true)[已知一个 $dot.o O$ 的直径长是4cm. 说出满足下列条件的 $P$ 点的可能位置：]

  #cols(2)[
  + $overline(O P) > 2$⁠cm

  + $overline(O P) gt.eq 2$⁠cm

  + $overline(O P) < 2$⁠cm

  + $overline(O P) = 0$

  ]

+ 求证一个圆的直径是这个圆中最长的弦．

  （提示：按图中所示证 $overline(A B) > overline(C D)$⁠）．

  #align(center)[
  #fig("4-05");

  ]

]
=== 不共线的三点确定一圆
我们已知，如果知道了圆心的位置和半径长，那么圆的位置和大小也就确定了．现在我们来研究经过一个点；经过两个点；经过三个点可分别作出几个圆？

已知一个点 $A$, 很明显，以 $A$ 点以外的任何点为圆心，以这点到 $A$ 点的距离为半径所作的圆都经过 $A$ 点（图4.5）．因此，#strong[经过一点可以作无数个圆]．

#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("4-06");], caption: []), figure([#fig("4-07");], caption: []))));

经过两个已知点 $A$⁠、$B$⁠，可以作多少个圆呢（图4.6）？由于经过 $A$⁠、$B$ 两点的圆的圆心到 $A$ 点与 $B$ 点的距离应相等，而和 $A$⁠、$B$ 两点距离相等的点仅在 $A B$ 的垂直平分线上，所以，以 $A B$ 的垂直平分线上任一点为圆心，以这点到 $A$ 点（或 $B$ 点）的距离为半径所作的圆都经过 $A$⁠、$B$ 两点．因此，#strong[经过两点也可以作无数个圆，且圆心都在连结这两点的线段的垂直平分线上]．

现在我们来研究，经过 $A$⁠、$B$⁠、$C$ 三点可以作多少个圆的问题？

#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("4-08");], caption: []), figure([#fig("4-09");], caption: []))));

我们知道，经过 $A$⁠、$B$ 两点的圆的圆心必定在 $overline(A B)$ 的垂直平分线上（图4.7中的 $ell_1$⁠），经过 $B$⁠、$C$ 两点的圆的圆心又必定在 $overline(B C)$ 的垂直平分线上（图4.7中的 $ell_2$⁠），因而经过 $A$⁠、$B$⁠、$C$ 三点的圆的圆心必定是直线 $ell_1$ 和 $ell_2$ 的交点 $O$, 由于 $overline(O A) = overline(O B) = overline(O C)$, 所以以 $O$ 为圆心 $overline(O A)$ 为半径的圆经过 $A$⁠、$B$⁠、$C$ 三点．

这样一来，能不能说经过三个点就可作一个圆呢？我们再来看图4.8中所示的三点 $A$⁠、$B$⁠、$C$, 它们是在同一条直线上的，这时 $overline(A B)$ 和 $overline(B C)$ 的垂直平分线 $ell_1$ 和 $ell_2$ 都垂直于同一条直线，于是 $ell_1 pll ell_2$, $ell_1$ 和 $ell_2$ 便没有交点，这就说明了经过 $A$⁠、$B$⁠、$C$ 三点的圆的圆心根本不存在，所以也就没有圆都经过 $A$⁠、$B$⁠、$C$ 三点．因此，我们不能笼统地说经过三个点可作一个圆．如果 $A$⁠、$B$⁠、$C$ 三点在同一条直线上（叫做共线的点），便没有圆经过这三点；如果 $A$⁠、$B$⁠、$C$ 三点不在同一条直线上（叫做不共线的点），那么 $overline(A B)$ 与 $overline(B C)$ 的垂直平分线必相交（为什么？），这时，就可作一个圆经过这三点，又由于 $overline(A B)$ 和 $overline(B C)$ 的垂直平分线都只有一条，所以它们的交点也是唯一的，从而 $overline(O A)$ 的长也是唯一的，所以经过 $A$⁠、$B$⁠、$C$ 三点也只能作一个圆．

于是，我们便得到确切的结论：

#blk[定理][
过不共线的三个点，可以作一个圆且只可以作一个圆．

]
由上述讨论，我们还可看到一个圆的圆心到圆的任一条弦的两个端点的距离相等，因而可得：

#blk[推论1][
圆的任一条弦的垂直平分线都通过圆心．

]
由于任一个 $triangle.stroked.t A B C$ 的三个顶点不共线，因此经过 $A$⁠、$B$⁠、$C$ 三个顶点可以作一个圆，且只可以作一个圆 $dot.o O$（图4.9），这个圆叫做 $triangle.stroked.t A B C$ 的#strong[外接圆]，它的圆心 $O$ 叫做 $triangle.stroked.t A B C$ 的#strong[外心]，而 $triangle.stroked.t A B C$ 叫做 $dot.o O$ 的#strong[内接三角形]．由于 $overline(O A) = overline(O B) = overline(O C)$, $O$ 点一定在三边的垂直平分线上，于是又可得：

#figure([#fig("4-10");

  ],
  caption: [
  ]
)

#blk[推论2][
三角形的三边的垂直平分线相交于一点，这个点就是三角形的外心．

]
由推论2我们又可得到：

#blk[推论3][
三角形的三条高线相交于一点．

]
已知：$A D$⁠、$B E$⁠、$C F$ 是 $triangle.stroked.t A B C$ 的三条高线（图4.10）．求证：$A D$⁠、$B E$⁠、$C F$ 相交于一点．

#figure([#fig("4-11");

  ],
  caption: [
  ]
)

#proof[
经过 $triangle.stroked.t A B C$ 的各顶点 $A$⁠、$B$⁠、$C$ 分别作对边的平行线，设它们分别相交于 $B'$⁠、$C'$⁠、$A'$ 各点，于是 $A D tack.t B' C'$, $B E tack.t C' A'$, $C F tack.t A' B'$（为什么？），又因为四边形 $B C A C'$ 和 $B C B' A$ 都是平行四边形（为什么？）．

$therefore quad overline(C' A) = overline(B C) = overline(A B')$, 于是 $A$ 是 $overline(B' C')$ 的中点．

同理，$B$ 是 $overline(A' C')$ 的中点，$C$ 是 $overline(A' B')$ 的中点，因此，$A D$⁠、$B E$⁠、$C F$ 分别是 $triangle.stroked.t A' B' C'$ 的三边上的垂直平分线，由推论2可知 $A D$⁠、$B E$ 和 $C F$ 相交于一点．

]
图4.10中，画出的是锐角三角形，如 $triangle.stroked.t A B C$ 是钝角三角形，上述证明过程同样适用，同学可自己验证．

三角形的三条高线的交点叫做#strong[三角形的垂心]．

#example[
求作一条已知弧的圆心．

]
已知 $wideparen(E F)$（图4.11）.

求作：$wideparen(E F)$ 所在圆的圆心．

作法

+ 在 $wideparen(E F)$ 上任取三点 $A$⁠、$B$⁠、$C$, 并且作 $overline(A B)$⁠、$overline(B C)$.

+ 分别作 $overline(A B)$⁠、$overline(B C)$ 的垂直平分线 $ell_1$ 和 $ell_2$, 设它们的交点为 $O$, $O$ 点就是所求作的圆心．

#proof[
$because quad A$⁠、$B$⁠、$C$ 三点在 $wideparen(E F)$ 上（作法）

$therefore quad wideparen(E F)$ 是经过 $A$⁠、$B$⁠、$C$ 的圆的一部分．

又 $because quad O$ 是经过 $A$⁠、$B$⁠、$C$ 的圆的圆心，

$therefore quad O$ 是 $wideparen(E F)$ 所在圆的圆心．

]
#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("4-12");], caption: []), figure([#fig("4-13");], caption: []))));

#example[
已知 $O$ 和 $H$ 各是 $triangle.stroked.t A B C$ 的外心和垂心，$O L tack.t overline(B C)$ 于 $L$\(图4.12). 求证：$overline(O L) = 1 / 2 overline(A H)$

]
#proof[
已知 $O L tack.t overline(B C)$ 于 $L$ 点，作 $O M tack.t overline(A B)$ 于 $M$ 点，由于 $O$ 是 $triangle.stroked.t A B C$ 的外心，所以 $L$⁠、$M$ 分别是 $overline(B C)$⁠、$overline(A B)$ 的中点．取 $overline(B H)$ 的中点 $K$, 作 $overline(M K)$, $overline(L K)$,

$because quad M K pll A H\,quad O L pll A H$,

$therefore quad M K pll O L$,

同理可证，$L K pll O M$,

$therefore quad O M K L$ 是平行四边形，

$therefore quad overline(O L) = overline(M K) = 1 / 2 overline(A H)$

]
#exercise[
+ 分别作一个锐角三角形、一个直角三角形和一个钝角三角形的外接圆，并说出它们的外心的位置各有什么特点．

+ 经过任意四点，可不可以作一个圆？试举例说明．

+ 分别作出一个锐角三角形、一个直角三角形和一个钝角三角形的垂心，并说出它们的位置各有什么特点．

+ 已知 $H$ 是 $triangle.stroked.t A B C$ 的垂心，$D$⁠、$E$⁠、$F$ 是三高的垂足．试分别说出 $triangle.stroked.t H B C$⁠、$triangle.stroked.t H A C$⁠、$triangle.stroked.t H A B$ 的垂心各是图中哪一点．

]
#fig-center[
#fig("4-14");

#subcap[
第4题

]
]
=== 圆的对称性
已知 $dot.o O$\(图4.13), 在 $dot.o O$ 上任取一点 $A$, 引直径 $overline(A A')$, 则 $overline(A A')$ 被圆心 $O$ 平分．这就是说 $A'$ 是以点 $O$ 为对称中心的点 $A$ 的对称点，如果在 $dot.o O$ 上再取 $B\,C\,D\,dots.h$, 并引直径 $overline(B B')\,overline(C C')\,overline(D D')\,dots.h$⁠，那么点 $B'\,C'\,D'\,dots.h$ 也都分别是以 $O$ 为对称中心的点 $B\,C\,D\,dots.h$ 的对称点．这就说明了 $dot.o O$ 上以 $O$ 为对称中心的任何点的对称点都在 $dot.o O$ 上．由此可知：#strong[圆是中心对称形；圆心是它的对称中心]．

已知 $overline(A A')$ 是 $dot.o O$ 的任一条直径（图4.14），作直径 $overline(B B') tack.t overline(A A')$, 把 $dot.o O$ 左边部分沿着直线 $A A'$ 翻折过来，由于 $overline(B B') tack.t overline(A A')$, $overline(O B') = overline(O B)$, 那么 $B$ 点就与 $B'$ 点重合，因为经过 $A$⁠、$B'$⁠、$A'$ 三点只可以作一个圆，所以以 $A$⁠、$A'$ 为端点，经过 $B'$ 点的弧只有一条，因此 $wideparen(A B A')$ 与 $wideparen(A B' A')$ 重合．由此可知，圆是轴对称图形，任一条通过圆心的直线都是它的对称轴．

#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("4-15");], caption: []), figure([#fig("4-16");], caption: []))));

由上述圆的对称性，我们可推出许多圆的重要性质．

#blk[推论1][
圆被它的任何一条直径截出的两段弧相等．这两段弧都叫做半圆．

]
小于半圆的弧叫做#strong[劣弧]，大于半圆的弧叫做#strong[优弧]．以后说到弧，如不特别指明，一般都指的是劣弧．

#blk[推论2][
一圆的直径垂直于一条非直径的弦的充分必要条件是这直径平分这条弦或平分这条弦所对的弧．

]
我们来证必要性，充分性留给同学们自证．

已知：$dot.o O$ 中，直径 $overline(C D) tack.t$ 弦 $overline(A B)$ 于 $E$ 点（图4.15）.

求证：$overline(A E) = overline(B E)$, $wideparen(A D) = wideparen(B D)$, $wideparen(A C) = wideparen(B C)$.

#proof[
$because quad overline(C D)$ 是 $dot.o O$ 的直径

$therefore quad$ 直线 $C D$ 是 $dot.o O$ 的对称轴．

又 $because quad C D tack.t A B$ 于 $E$ 点

$therefore quad C D$ 也是等腰 $triangle.stroked.t O A B$ 的对称轴．以 $C D$ 为轴把图形翻折叠合时，半圆 $wideparen(C A D)$ 与半圆 $wideparen(C B D)$ 重合，$overline(A E)$ 与 $overline(B E)$ 重合．$A$ 点与 $B$ 点重合，$wideparen(A D)$ 与 $wideparen(B D)$, $wideparen(A C)$ 与 $wideparen(B C)$ 都重合

$therefore quad overline(A E) = overline(B E)\,quad wideparen(A D) = wideparen(B D)\,quad wideparen(A C) = wideparen(B C)$.

]
#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("4-17");], caption: []), figure([#fig("4-18");], caption: []))));

#example[
平分一条已知弧．

已知：$wideparen(A B)$\(图4.16).

求作：平分 $wideparen(A B)$ 的点．

作法

+ 作 $overline(A B)$

+ 作 $overline(A B)$ 的垂直平分线 $C D$ 交 $wideparen(A B)$ 于 $E$ 点．则 $E$ 点就是所求作的点．

]
#proof[
$because quad C D$ 是 $overline(A B)$ 的垂直平分线（作法）．

$therefore quad C D$ 必通过圆心，

$therefore quad wideparen(A E) = wideparen(B E)$ (推论2).

$therefore quad E$ 点平分 $wideparen(A B)$.

]
#example[
已知大小两圆有公共圆心 $O$, 大圆的弦 $overline(A B)$ 交小圆于 $C$⁠、$D$ (图4.17).

求证：$overline(A C) = overline(B D)$.

]
#proof[
作 $overline(O M) tack.t overline(A B)$ 于 $M$ 点，则 $overline(A M) = overline(B M)$, $overline(C M) = overline(D M)$.

$therefore quad overline(A M) - overline(C M) = overline(B M) - overline(D M)$.

$therefore quad overline(A C) = overline(B D)$

]
#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("4-19");], caption: []), figure([#fig("4-20");], caption: []))));

#example[
已知 $dot.o O$ 的两条平行弦 $overline(A B) = 6$⁠cm, $overline(C D) = 8$⁠cm且 $A B$ 和 $C D$ 间的距离是7cm, 求 $dot.o O$ 的半径长（图4.18）.

]
#solution[
作 $O E tack.t overline(A B)$ 于 $E$ 点，延长 $overline(E O)$ 交 $overline(C D)$ 于 $F$ 点．

$because quad A B pll C D$,

$therefore quad O F tack.t C D$,

$therefore quad overline(E F)$ 为 $overline(A B)$ 和 $overline(C D)$ 的公垂线段，且 $overline(E F) = 7$⁠cm，$overline(A E) = 1 / 2 overline(A B) = 3$⁠cm, $overline(C F) = 1 / 2 overline(C D) = 4$⁠cm.

设 $overline(O A) = overline(O C) = x$, $overline(O E) = y$, 则由勾股定理可得方程组：$ display(cases(x^2 = 3^2 + y^2, x^2 =\(7 - y\)^2 + 4^2)) $ #noindent;解这个方程组，舍去不合理的根得：$ display(cases(x = 5, y = 4)) $

答：$dot.o O$ 的半径是5cm.

]
#exercise[
+ 把本节推论2用“若---则”形式写出互逆的定理．

+ 作出图中圆的圆心．

+ 已知 $dot.o\(O\,5 upright(c m)\)$, 它的一条弦 $overline(A B) = 8$⁠cm, 点 $M$ 是 $overline(A B)$ 的中点，求 $overline(O M)$ 的长．

+ 已知一圆的半径是25cm, 一弧所对的弦长是48cm, 求这弧的一半所对的弦长．

+ 求证圆中的非直径的两弦必不能互相平分（提示：用反证法）．

]
#fig-center[
#fig("4-21");

#subcap[
第2题

]
]
=== 弧、弦和弦心距之间的关系
圆的圆心到一条弦的距离，叫做这条弦的弦心距，例如在图4.19中，$overline(A B)$ 是 $dot.o O$ 的一条弦，$overline(O E) tack.t overline(A B)$ 于 $E$ 点，$overline(O E)$ 的长就是弦 $overline(A B)$ 的弦心距．下面我们来学习弧、弦和弦心距之间的关系．

#blk[定理][
在同圆或等圆中，两条弧相等的充要条件是它们所对的弦相等，或它们所对的弦的弦心距相等．

]
#figure([#fig("4-22");

  ],
  caption: [
  ]
)

我们来证条件的必要性，充分性由同学们自证：

已知：在 $dot.o O$ 中，$wideparen(A B) = wideparen(C D)$, $O E tack.t A B$ 于 $E$ 点，$O F tack.t C D$ 于 $F$ 点（图4.19）．

求证：$overline(A B) = overline(C D)$, $overline(O E) = overline(O F)$.

#proof[
作半径 $overline(O A)$⁠、$overline(O B)$⁠、$overline(O C)$⁠、$overline(O D)$. 把 $wideparen(A B)$ 连同经过两端的半径绕着 $O$ 点，依箭头所指的方向旋转，使半径 $overline(O A)$ 和半径 $overline(O C)$ 重合．

$because quad wideparen(A B) = wideparen(C D)$.

$therefore quad wideparen(A B)$ 与 $wideparen(C D)$ 重合，弦 $overline(A B)$ 与弦 $overline(C D)$ 重合．

又 $because quad$ 从一点到一条直线只可以作一条垂线，

$therefore quad overline(O E)$ 与 $overline(O F)$ 也重合

$therefore quad overline(A B) = overline(C D)\,quad overline(O E) = overline(O F)$.

]
对于等圆情况的证明，只要使两圆重合就可以了．

这个定理告诉我们，在同圆或等圆中，“弧相等”、“弦相等”、“弦心距相等”它们当中只要有一个是对的，其他两个也一定是对的．这就是说：

#blk[][
“弧相等”$arrow.l.r.double.long$“弦相等”$arrow.l.r.double.long$“弦心距相等”

]
#example[
已知（图4.20），$overline(O E)$ 是 $dot.o O$ 中的半径，$F$ 是 $overline(O E)$ 上任一点，$overline(A B)$ 和 $overline(C D)$ 为过 $F$ 点的弦且 $angle A F O = angle D F O$.

求证：$overline(A B) = overline(C D)$

]
#figure([#fig("4-23");

  ],
  caption: [
  ]
)

#proof[
作 $overline(O M) tack.t overline(A B)$ 于 $M$ 点，$overline(O N) tack.t overline(C D)$ 于 $N$ 点，在直角 $triangle.stroked.t O M F$ 与直角 $triangle.stroked.t O N F$ 中，

$because quad angle M F O = angle N F O\,quad overline(O F) = overline(O F)$.

$therefore quad triangle.stroked.t O M F tilde.equiv triangle.stroked.t O N F$

$therefore quad overline(O M) = overline(O N)$.

$therefore quad overline(A B) = overline(C D)$.

]
#exercise[
+ 把本节定理用“若---则”形式写出互逆的定理．

+ 以 $angle A$ 的平分线上任一点 $O$ 为圆心，大于 $O$ 点到边的距离之长为半径作一个圆，那么这圆在 $angle A$ 的两边上截出的两条弦相等．

+ 在 $dot.o O$ 中，已知 $overline(A B)$ 是一条直径，$overline(A C)$ 和 $overline(A D)$ 是分属于 $overline(A B)$ 两侧的两条相等的弦，求证：$A B$ 平分 $angle C A D$

+ 如图，$dot.o O$ 内相等的两弦 $overline(A B)$⁠、$overline(C D)$ 相交于 $E$ 点，求证

  + $wideparen(A C) = wideparen(B D)$

  + $overline(A E) = overline(D E)$

  + $overline(B E) = overline(C E)$

]
#fig-center[
#fig("4-24");

#subcap[
第4题

]
]
=== 两圆的位置关系
不重合的两圆，它们的位置关系，有以下五种情况：

+ 一圆在另一圆的外部，这种位置关系叫做#strong[两圆相离]，如图4.21(1). 这时，两圆没有公共点．

+ 两圆只有一个公共点且其中一圆上的其他各点都在另一圆的外部，这种位置关系叫做#strong[两圆外切]，如图4.21(2). 这个公共点叫做两圆的#strong[切点]．

+ 两圆有两个公共点，这种位置关系叫做两圆#strong[相交]．两个公共点叫做两圆的#strong[交点]，如图4.21(3). 连结两个交点的线段叫做两圆的#strong[公共弦]．

+ 两圆只有一个公共点且其中一圆上的其他各点都在另一圆的内部，这种位置关系叫做两圆#strong[内切]，这个公共点叫做两圆的#strong[切点]，如图4.21(4).

+ 一圆在另一圆的内部，这种位置关系叫做两圆内含，如图4.21(5). 这时两圆没有公共点．如果这两圆的圆心重合，这两个圆叫做#strong[同心圆]，如图4.21(6).

#figure([#fig("4-25");

  ],
  caption: [
  ]
)

经过两个圆的圆心的直线，叫做#strong[两圆的连心线]，两个圆心之间的距离叫做圆心距．如图4.21, $overline(O_1 O_2)$ 所在的直线就是 $dot.o O_1$ 和 $dot.o O_2$ 的连心线，$overline(O_1 O_2)$ 的长就是两圆的圆心距．

由圆的轴对称性可知，两圆的连心线是两圆的对称轴，并且#strong[两圆相切]（外切或内切）时，它们的#strong[切点在连心线上]（要不然，两圆就将有两个公共点）．

如果用 $r_1$ 和 $r_2$（$r_1 > r_2$⁠）表示两圆的半径长，用 $d$ 表示圆心距，从图4.21可以看出：

+ 若两圆相离时，则 $d > r_1 + r_2$\;

+ 若两圆外切时，则 $d = r_1 + r_2$\;

+ 若两圆相交时，则 $r_1 - r_2 < d < r_1 + r_2$\;

+ 若两圆内切时，则 $d = r_1 - r_2$\;

+ 若两圆内含时，则 $d < r_1 - r_2$\; 特殊情况，若两圆是同心圆时，则 $d = 0$⁠．

同学们不难用反证法证明上述各命题的逆命题也是正确的，即：

+ 若 $d > r_1 + r_2$⁠，则两圆相离;

+ 若 $d = r_1 + r_2$⁠，则两圆外切;

+ 若 $r_1 - r_2 < d < r_1 + r_2$⁠，则两圆相交;

+ 若 $d = r_1 - r_2$⁠，则两圆内切;

+ 若 $d < r_1 - r_2$⁠，则两圆内含；特殊情况，若 $d = 0$⁠，则两圆是同心圆.

#example[
已知 $dot.o A$⁠、$dot.o B$⁠、$dot.o C$ 两两外切，它们的圆心距分别是5cm、6cm、7cm，求这三个圆的半径．

]
#figure([#fig("4-26");

  ],
  caption: [
  ]
)

#solution[
设 $dot.o A$⁠、$dot.o B$⁠、$dot.o C$ 的半径分别为 $x$⁠、$y$⁠、$z$⁠，因为 $dot.o A$⁠、$dot.o B$⁠、$dot.o C$ 两两外切，于是有方程组 $ display(cases(x + y = 5, y + z = 7, x + z = 6)) $ #noindent;解之得：$ x = 2\,#h(2em) y = 3\,#h(2em) z = 4 $

答：$dot.o A$⁠、$dot.o B$⁠、$dot.o C$ 的半径分别是2cm、3cm、4cm.

]
#example[
如果两圆相交，则连心线垂直平分两圆的公共弦．

已知：$dot.o O_1$⁠、$dot.o O_2$ 相交于 $A$⁠、$B$ 两点（图4.23）．

求证：直线 $O_1 O_2$ 垂直平分 $overline(A B)$⁠．

]
#proof[
$because quad O_1$⁠、$O_2$ 各与 $A$⁠、$B$ 两点的距离相等，

$therefore quad overline(O_1 O_2)$ 是 $overline(A B)$ 的垂直平分线．即 $O_1 O_2$ 垂直平分 $overline(A B)$⁠．

]
#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("4-27");], caption: []), figure([#fig("4-28");], caption: []))));

#example[
已知：$dot.o\(O\,r\)$ 上一点 $P$⁠，和线段 $a$（图4.24）．

求作：一圆使它的半径等于 $a$⁠，且与 $dot.o\(O\,r\)$ 在 $P$ 点外切.

作法

+ 作半径 $overline(O P)$⁠，

+ 在射线 $O P$ 上截 $overline(P O') = a$⁠，

+ 以 $O'$ 为圆心，$a$ 为半径长，画 $dot.o O'$⁠，则 $dot.o O'$ 为所求作的圆.

]
#proof[
根据作法可知：$ overline(O O') = overline(O P) + overline(P O') = r + a $

$therefore quad dot.o O$ 与 $dot.o O'$ 在 $P$ 点外切．

]
#exercise[
+ 把本节互逆的两个正确的命题，用“充要”逻辑语句合写成一个定理．

+ 试说出下列各题中两圆的位置关系：$r$⁠、$r'$ 分别为两圆的半径，$d$ 表示圆心距．

  + $d =$6cm,#h(1em);$r =$4cm,#h(1em);$r' =$2cm;

  + $d =$2cm,#h(1em);$r = 5$⁠cm,#h(1em);$r' =$3cm;

  + $d =$7cm,#h(1em);$r = 3$⁠cm,#h(1em);$r' =$2cm;

  + $d =$1cm,#h(1em);$r = 6$⁠cm,#h(1em);$r' =$3cm.

+ 已知两圆外切时，圆心距为12cm，内切时圆心距是4cm，求两圆的半径的长．

+ 两圆的半径的比是5:3，当两圆外切时，圆心距为24cm，求这两圆内切时的圆心距．

+ 两个等圆外切，并且它们都内切于另一个大圆，已知这三个圆的圆心所构成的三角形周长为20cm，求大圆的半径．

+ 求作一圆，使圆的半径是4cm，并且与已知 $dot.o\(O\,2 upright(c m)\)$ 外切于已知点 $A$⁠．

+ 求作一圆使圆的半径是2cm，并且与已知 $dot.o\(O\,1 upright(c m)\)$ 内切于已知点 $P$.

+ 设 $triangle.stroked.t A B C$ 的三边长分别为7cm，8cm，9cm，试分别以三顶点为圆心作三个圆两两外切（提示：先计算出三个圆的半径）．

]
=== 圆与圆的位似
已知 $dot.o\(O\,r\)$ 和一点 $S$（图4.25），我们来研究怎样求作 $dot.o O$ 的以 $S$ 为位似中心，位似比为常数 $k$ 的位似形．

设 $k > 0$⁠，由位似变换的定义，我们先作出以 $S$ 点为顺位似中心，$k$ 为位似比的点 $O$ 的对应点 $O'$（图4.25，取 $k = 5 / 2$⁠），则 $ overline(S O') / overline(S O) = k $

#figure([#fig("4-29");

  ],
  caption: [
  ]
)

设 $A$ 是 $dot.o\(O\,r\)$ 上任一点，同样可作出 $A$ 的对应点 $A'$, 使 $overline(S A') / overline(S A) = k$, 于是 $ overline(S O') / overline(S O) = overline(S A') / overline(S A)\,#h(2em) O' A' pll O A $

$therefore quad triangle.stroked.t S O' A' tilde.rev triangle.stroked.t S O A$.

$ overline(O' A') / overline(O A) = overline(S O') / overline(S O) = k\,#h(2em) overline(O' A') = k overline(O A) = k dot.op r $

$therefore quad A'$ 在 $dot.o\(O'\,k r\)$ 上．

这样，$dot.o O$ 上的每一点，以 $S$ 为顺位似中心，$k$ 为位似比的位似点都在 $dot.o\(O'\,k r\)$ 上．

反过来，如果 $A'$ 点是 $dot.o\(O'\,k r\)$ 上任一点，我们可求作一点 $A$ 使 $overline(S A') / overline(S A) = k$. 这时 $triangle.stroked.t S O' A' tilde.rev triangle.stroked.t S O A$,

$therefore quad overline(O' A') / overline(O A) = k$

又 $because quad overline(O' A') = k r$

$therefore quad overline(O A) = r$

$A$ 点必在 $dot.o\(O\,r\)$ 上．

这样，$dot.o\(O'\,k r\)$ 上的所有点，又都是以 $S$ 为顺位似中心，$k$ 为位似比 $dot.o\(O\,r\)$ 上的点的位似点．

由上述正反两方面的说明，$dot.o\(O\,r\)$ 的以 $S$ 为位似中心，$k$ 为位似比的位似形是 $dot.o\(O'\,k r\)$.

如给出的常数 $k < 0$, 与 $k > 0$ 的情况类似，我们可作出已知 $dot.o\(O\,r\)$ 的逆位似形（图4.26），这时变换的方向是相反的，即 $O$ 点的逆位似点 $O'$ 在射线 $S O$ 的反向延长线上，$A$ 点的逆位似点在射线 $S A$ 的反向延长线上，$dot.o\(O'\,\|k\|r\)$ 就是 $dot.o\(O\,r\)$ 的逆位似形．

#figure([#fig("4-30");

  ],
  caption: [
  ]
)

综合以上讨论，我们得到：

#blk[][
圆的位似形仍是圆．

]
进一步我们还可证明：

#blk[][
任何两个不等的圆，都是位似形，它们既可看作顺位似形，又可看作逆位似形，它们有两个位似中心．

]
已知 $dot.o\(O\,r\)$ 和 $dot.o\(O'\,r'\)$ 且 $r < r'$\(图4.25)，我们作两圆的半径 $overline(O A)$ 和 $overline(O' A')$, 且使射线 $O A$ 与 $O' A'$ 的方向相同，设直线 $A A'$ 与连心线 $O O'$ 交于一点 $S$, 这时 $S$ 点在 $overline(O' O)$ 的延长线上，于是，$ overline(S O') / overline(S O) = r' / r $

由于圆的位似形仍是圆，我们以 $S$ 为位似中心，$r' / r$ 为位似比作 $dot.o\(O\,r\)$ 的位似圆 $dot.o\(O'\,r''\)$⁠，则 $ r'' / r = r' / r quad arrow.r.double quad r'' = r' $ #noindent;$dot.o\(O'\,r''\)$ 就是 $dot.o\(O'\,r'\)$.

这就证明了 $dot.o\(O'\,r'\)$ 与 $dot.o\(O\,r\)$ 为顺位似形，且位似比等于它们的半径的比，并且位似中心在它们的连心线上．如果作两圆的半径 $overline(O' A')$ 和 $overline(O A)$, 且使射线 $O' A'$ 与 $O A$ 的方向相反（图4.26）．设 $overline(A A')$ 与 $overline(O O')$ 相交于 $S$, 用同样的方法也可以证明 $dot.o\(O\,r\)$ 与 $dot.o\(O'\,r'\)$ 是以 $S$ 点为逆位似中心的逆位似图形．

从上述证明过程，我们还可看出，如果两圆相等且不同心，它们只能看作逆位似图形．

由于凡位似形都是相似形，这样我们也就证明了#strong[任何两个圆都是相似形]．

#exercise[
+ 在图中 $S$ 为 $dot.o O$ 和 $dot.o O'$ 的顺位似中心，试在 $dot.o O'$ 上找出以 $S$ 为中心的 $A$⁠、$B$⁠、$C$⁠、$D$⁠、$E$⁠、$F$ 各点的顺位似点．

+ 求作相离、相交的两个不等的圆的顺位似中心．

+ 求作相交两圆的逆位似中心．

+ 求证：如果两圆外切，切点是两圆的逆位似中心；如果两圆内切，切点是两圆的顺位似中心．

+ 两个同心圆的顺位似中心是哪一点，逆位似中心呢？

]
#fig-center[
#fig("4-31");

#subcap[
第1题

]
]
#heading(level: 2, numbering: none, supplement: [toc-sub])[习题4.1]

+ 以 $dot.o O$ 的半径 $overline(O A)$ 为一边作正方形 $O A B C$, 求证 $B$ 点在圆外，$C$ 点在圆上，两条对角线的交点 $D$ 在 $dot.o O$ 内．

+ 已知 $O$ 是矩形 $A B C D$ 的对角线的交点，求证 $A$⁠、$B$⁠、$C$⁠、$D$ 四个顶点在以 $O$ 为圆心，以 $O A$ 为半径的圆上．

+ 已知 $A B$⁠、$C D$ 是 $dot.o O$ 中互相垂直的弦，并且 $overline(A B)$ 把 $overline(C D)$ 分成3cm和7cm的两部分，求弦 $overline(A B)$ 的长和它的弦心距．

+ 经过圆内一个已知点作一条弦，使这条弦被这点所平分．

+ 已知 $overline(A B)$ 是 $dot.o O$ 的直径，$overline(C D)$ 是 $dot.o O$ 的弦，$A E tack.t$ 直线 $C D$ 于 $E$ 点，$B F tack.t$ 直线 $C D$ 于 $F$ 点，求证：$overline(E C) = overline(D F)$.

+ 已知 $overline(A B)$ 是 $dot.o O$ 的直径，$wideparen(A C)$ 与 $wideparen(A D)$ 位于 $wideparen(A B)$ 的两侧且 $wideparen(A C) = wideparen(A D)$. 求证：$A B$ 平分 $angle C A D$.

+ 已知 $dot.o O_1$ 和 $dot.o O_2$ 是相离的两个等圆，一条与连心线 $O_1 O_2$ 平行的直线顺次与 $dot.o O_1$⁠、$dot.o O_2$ 相交于 $A$⁠、$B$⁠、$C$⁠、$D$ 各点．求证：$overline(A B) = overline(C D)$, $wideparen(A B) = wideparen(C D)$.

+ 已知 $dot.o O_1$ 和 $dot.o O_2$ 是相离的两个等圆，过 $overline(O_1 O_2)$ 的中点，作直线顺次与 $dot.o O_1$⁠、$dot.o O_2$ 相交于 $C$⁠、$D$⁠、$E$⁠、$F$ 各点，求证：$wideparen(C D) = wideparen(E F)$.

+ 在第7题、第8题中，如果条件是相交的两个等圆，结论是否都还成立．

+ 已知两圆相交，经过它们的一个交点有一条和公共弦垂直的直线，和两圆相交于另外两点，求证这两点间的长等于圆心距的2倍．

== 圆与直线的位置关系
=== 圆与直线的位置关系
在图4.27中，如果直线 $A B$ 和 $dot.o O$ 的圆心 $O$ 的距离 $overline(O D)$ 大于半径 $overline(O C)$, 那么 $D$ 点在圆外；在直线 $A B$ 上再任取一点 $M$, 那么 $overline(O M) > overline(O D) > overline(O C)$, 那么 $M$ 点也一定在圆外，所以直线 $A B$ 上任何一点都在圆外，于是 $dot.o O$ 和直线 $A B$ 便没有公共点．

如果一条直线和一个圆没有公共点，我们就说这条直线和这个圆#strong[相离]．

#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("4-32");], caption: []), figure([#fig("4-33");], caption: []))));

在图4.28中，过 $dot.o\(O\,r\)$ 的任一条半径 $overline(O A)$ 的端点 $A$ 作直线 $A B tack.t overline(O A)$ 于 $A$ 点，$P$ 为直线 $A B$ 上除 $A$ 点外的任一点，则 $overline(O P) > overline(O A)$, 于是 $P$ 就在圆外，这就是说，在直线 $A B$ 上，除 $A$ 点外其他的点都在圆外．这时直线 $A B$ 和 $dot.o O$ 只有一个公共点 $A$.

如果一条直线和一个圆只有一个公共点，我们就说这条直线和这个圆#strong[相切]，这条直线叫做圆的#strong[切线]，这个公共点叫做它们的切点．

#blk[切线判定定理][
经过圆的半径外端，并且垂直这条半径的直线是这圆的切线．

]
这就是说，“一条直线经过半径外端且垂直于半径”为这条直线是圆的切线的充分条件，反过来可证条件也是必要的．

#blk[切线性质定理][
圆的切线垂直于经过切点的半径．

]
已知：直线 $A B$ 与 $dot.o O$ 相切于 $C$ 点（图4.29）.

求证：$A B tack.t overline(O C)$.

#proof[
假设 $A B$ 和 $overline(O C)$ 不垂直，自圆心 $O$ 引 $overline(O D) tack.t A B$ 于 $D$ 点，在 $A B$ 上取 $overline(D C') = overline(D C)$, 且使 $D$ 点在 $C$ 与 $C'$ 之间，于是 $O D$ 垂直平分 $overline(C C')$, $overline(O C') = overline(O C)$.

$because quad C$ 点是切点，$overline(O C)$ 是 $dot.o O$ 的半径．

$therefore quad overline(O C')$ 是 $dot.o O$ 的半径，$C'$ 点也在 $dot.o O$ 上．

这就是说，直线 $A B$ 和 $dot.o O$ 有了两个公共点 $C$ 和 $C'$⁠，但这与 $A B$ 是圆的切线，即 $A B$ 和 $dot.o O$ 只有一个公共点相矛盾，

$therefore quad A B tack.t overline(O C)$.

]
#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("4-34");], caption: []), figure([#fig("4-35");], caption: []))));

在图4.30中，经过半径 $overline(O A)$ 的端点 $A$, 作与 $overline(O A)$ 不垂直的任一条直线 $A B$, 由上面的证明可知：这条直线和圆不能只有一个公共点，还必须有另一个交点 $A'$. 这就是说，直线 $A B$ 和 $dot.o O$ 有了两个公共点．

如果一条直线和一个圆有两个公共点，我们就说，这条直线和这个圆相交，这条直线叫做这个圆的#strong[割线]，这两个公共点叫做它们的#strong[交点]．

一条直线和一个圆如果有公共点，那么，它们的公共点是不能多于两个的（为什么？），因此，#strong[直线和圆的位置关系只能有相离、相切和相交三种关系]．

#example[
求证连结圆的两条平行切线的切点间的弦必是圆的直径．

已知：直线 $ell_1$ 和直线 $ell_2$ 分别与 $dot.o O$ 切于 $A$⁠、$B$ 两点，且 $ell_1 pll ell_2$.

求证：$overline(A B)$ 是 $dot.o O$ 的直径．

]
#figure([#fig("4-36");

  ],
  caption: [
  ]
)

#proof[
作 $overline(O A)$⁠、$overline(O B)$, 过 $O$ 点作直线 $ell_3 pll ell_2$

$because quad ell_1 pll ell_2$

$therefore quad ell_3 pll ell_1$

$because quad ell_1$ 是 $dot.o O$ 的切线，

$therefore quad overline(O A) tack.t ell_1\,quad overline(O A) tack.t ell_3\,quad angle 1 = 90 degree$ 同理可证：$angle 2 = 90 degree$.

$therefore quad angle 1 + angle 2 = 180 degree$.

$therefore quad A$⁠、$O$⁠、$B$ 三点共线．即 $overline(A B)$ 通过圆心 $O$, $overline(A B)$ 是 $dot.o O$ 的直径．

]
利用例4.10所证原理，早在公元九年，我国就已发明出一种可以测量圆形工件直径的卡尺．这种卡尺是青铜制的，由两支丁字形具有刻度的尺子所组成（图4.32），这是世界上最早的卡尺．由于当时是王莽称帝时代（公元9---23年，王莽称帝，国号新）后人多把这种卡尺叫做《王莽卡尺》．

#figure([#scale(70%, reflow: true, image("/math2/fig/4-32.png"));

  ],
  caption: [
  ]
)

#example[
已知：$P$ 点在已知 $dot.o O$ 外（图4.33）.

求作：经过 $P$ 点的 $dot.o O$ 的切线．

作法

+ 作 $overline(O P)$

+ 以 $overline(O P)$ 的中点 $C$ 为圆心，以 $overline(C O)$ 为半径作 $dot.o C$ 交 $dot.o O$ 于 $A$⁠、$B$ 两点；

+ 作直线 $P A$⁠、$P B$, 则 $P A$⁠、$P B$ 就是所求作的切线．

]
#figure([#fig("4-37");

  ],
  caption: [
  ]
)

#proof[
作 $overline(O A)$⁠、$overline(C A)$.

$because quad overline(C A) = overline(C O) = overline(C P)$,

$therefore quad angle 1 = angle 2\,quad angle 3 = angle 4\,quad angle 1 + angle 3 = angle 2 + angle 4$.

$because quad angle 1 + angle 3 + angle 2 + angle 4 = 180 degree$,

$therefore quad angle 1 + angle 3 = 90 degree$, 即 $O A tack.t P A$⁠，$P A$ 是 $dot.o O$ 的切线（切线判定定理）．

同理可证 $P B$ 也是所求作的切线．

另外，在直角 $triangle.stroked.t P O A$ 和直角 $triangle.stroked.t P O B$ 中，

$because quad overline(O A) = overline(O B)\,quad overline(P O) = overline(P O)$.

$therefore quad triangle.stroked.t P O A tilde.equiv triangle.stroked.t P O B\,quad overline(P A) = overline(P B)$.

]
如果 $overline(P A)$, $overline(P B)$ 的长叫做 $P$ 点到圆的切线长，那么我们就可得到下面的定理：

#blk[切线长定理][
从圆外一个已知点到圆的两条切线的长相等．

]
以 $triangle.stroked.t P O A tilde.equiv triangle.stroked.t P O B$, 还可推出 $angle A P O = angle B P O$, 因此又可得出：

#blk[定理][
连结圆外一个已知点和圆心的直线，平分从这点向圆所作的两条切线所夹的角．

]
#exercise[
+ 回答如下问题．

  + 设 $dot.o\(O\,r\)$ 的圆心 $O$ 点和直线 $ell$ 的距离为 $d$, 试分别说出 $d > r$, $d = r$, $d < r$ 时，直线 $ell$ 和 $dot.o\(O\,r\)$ 的位置关系．

  + 凡是和圆的一条半径垂直的直线，都是圆的切线吗？凡是经过半径外端的直线都是圆的切线吗？

+ 过圆上一点作圆的切线．

+ 作一圆与已知直线相切于直线上已知点，这样的圆可作多少？这些圆的圆心组成什么图形？

+ $P A$⁠、$P B$ 都是 $dot.o O$ 的切线，$A$⁠、$B$ 是切点，求证：$angle A O B + angle A P B = 180 degree$.

+ 求证经过圆的直径两端的两条切线互相平行．

+ 在已知圆内画两条互相垂直的直径，经过各直径的端点画圆的切线；问这四条切线相交成什么四边形？为什么？

+ 从圆外一点向圆作两条切线．求证；连结这点和圆心的直线垂直平分连结两切点的线段．

]
=== 三角形的内切圆
如果一个多边形的各边都和一个圆相切（图4.34），这个多边形叫做#strong[圆的外切多边形]，这个圆叫做多边形的#strong[内切圆]，内切圆的圆心又叫做外切多边形的#strong[内心]．如图4.34所示，$A B C D$ 是 $dot.o O$ 的外切四边形，$A B C D E$ 是 $dot.o P$ 的外切五边形等，$O$⁠、$P$ 分别是四边形 $A B C D$ 与五边形 $A B C D E$ 的内心．

#figure([#fig("4-38");

  ],
  caption: [
  ]
)

已知 $dot.o I$, 过这圆上 $D$⁠、$E$⁠、$F$ 三点作它的三条切线交成 $triangle.stroked.t A B C$\(图4.35), 于是 $dot.o I$ 便是 $triangle.stroked.t A B C$ 的内切圆．由于切线垂直于过切点的半径，则内心 $I$ 到三边的距离相等，$I$ 在 $triangle.stroked.t A B C$ 的三个内角的平分线上．

#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("4-39");], caption: []), figure([#fig("4-40");], caption: []))));

如图4.35，设 $triangle.stroked.t A B C$ 中，$angle B$ 与 $angle C$ 的平分线交于一点 $I$⁠，自 $I$ 点作三边的垂线 $I D$⁠、$I E$⁠、$I F$⁠，$D$⁠、$E$⁠、$F$ 是垂足．

$because quad I$ 在 $angle B$ 的平分线上，

$therefore quad overline(I D) = overline(I F)$.

$because quad I$ 又在 $angle C$ 的平分线上，

$therefore quad overline(I D) = overline(I E)$.

$therefore quad overline(I E) = overline(I F)$.

由此可见，$angle A$ 的平分线必通过 $I$ 点．若以 $I$ 为圆心，$overline(I D)$ 为半径作圆，这圆必与 $triangle.stroked.t A B C$ 的三边分别相切于 $D$⁠、$E$⁠、$F$ 三点，即 $dot.o I$ 是 $triangle.stroked.t A B C$ 的内切圆．由于一个角的平分线只有一条，三角形的两内角平分线又必相交于一点（为什么？），且交点是唯一的，所以每个三角形只能作一个内切圆．由此我们得到：

#blk[定理][
三角形的三个内角平分线交于一点，这点是三角形的内心．

]
仿此，我们还可证明：三角形一内角平分线和其余两内角的外角平分线交于一点，这一点叫做三角形的#strong[旁心]（图4.36），以旁心为圆心可作一圆和一边及其他两边的延长线相切、所作的圆叫做三角形的#strong[旁切圆]，一个三角形有三个旁心，三个旁切圆，如图4.36所示，$dot.o I_1$⁠、$dot.o I_2$⁠、$dot.o I_3$ 是 $triangle.stroked.t A B C$ 的三个旁切圆．

#example[
已知 $triangle.stroked.t A B C$⁠，$overline(B C) = a$⁠、$overline(A C) = b$⁠，$overline(A B) = c$⁠，求三个顶点到内切圆的切线长（图4.37）.

]
#solution[
设 $triangle.stroked.t A B C$ 的三边、$overline(B C)$⁠、$overline(C A)$⁠、$overline(A B)$ 分别与内切圆 $I$ 相切于 $D$⁠、$E$⁠、$F$ 三点，由于从圆外一点引圆的两条切线长相等，

$therefore quad overline(A E) = overline(A F)\,quad overline(B F) = overline(B D)\,quad overline(C D) = overline(C E)$.

设 $overline(A E) = x$⁠、$overline(B F) = y$⁠，$overline(C D) = z$⁠，则可得到，$ display(cases(x + y = c, y + z = a, z + x = b)) $ #noindent;解之得：$ x = frac(b + c - a, 2)\,quad y = frac(a + c - b, 2)\,quad z = frac(a + b - c, 2) $

答：三个顶点 $A$⁠、$B$⁠、$C$ 到内切圆的切线长分别为 $ frac(b + c - a, 2)\,#h(2em) frac(a + c - b, 2)\,#h(2em) frac(a + b - c, 2) $

]
#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("4-41");], caption: []), figure([#fig("4-42");], caption: []))));

#example[
在直角 $triangle.stroked.t A B C$ 中，$angle C = 90 degree$, $overline(A B) = 3$⁠cm, $overline(A C) = 2$⁠cm.

求：直角三角形内切圆半径长（图4.38）.

]
#solution[
设 $dot.o I$ 为 $triangle.stroked.t A B C$ 的内切圆，半径为 $r$.

$because quad triangle.stroked.t A I B$ 的面积 $+ triangle.stroked.t B I C$ 的面积 $+ triangle.stroked.t A I C$ 的面积 $= triangle.stroked.t A B C$ 的面积

$therefore quad r times overline(A B) + r times overline(B C) + r times overline(A C) = overline(A C) times overline(B C)$

又知：$overline(A B) = 3\,quad overline(A C) = 2\,quad overline(B C) = sqrt(3^2 - 2^2) = sqrt(5)$

$therefore quad r times 3 + r times sqrt(5) + r times 2 = 2 times sqrt(5)$

$r\(3 + sqrt(5) + 2\)= 2 sqrt(5)$

$ r = frac(2 sqrt(5), 5 + sqrt(5)) = frac(10 sqrt(5) - 10, 20) = frac(sqrt(5) - 1, 2) $

答：内切圆半径等于 $frac(sqrt(5) - 1, 2)$⁠cm.

]
#exercise[
+ 求作一个三角形的内切圆．

+ 求作一个三角形的三个旁切圆．

+ 在 $triangle.stroked.t A B C$ 中，$overline(B C) = 28$⁠cm, $overline(A C) = 18$⁠cm, $overline(A B) = 26$⁠cm, 它的内切圆分别和 $overline(B C)$, $overline(A C)$, $overline(A B)$ 相切于 $D$⁠、$E$⁠、$F$, 求 $overline(A F)$⁠、$overline(B D)$ 和 $overline(C E)$ 的长．

+ 已知 $triangle.stroked.t A B C$, $overline(B C) = a$, $overline(A C) = b$, $overline(A B) = c$, 面积是 $s$, 求它的内切圆半径．

+ 已知直角三角形的两直角边分别是 $a$⁠、$b$, 求这个直角三角形的内切圆半径 $r$.

]
=== 圆的外切四边形
我们已经知道，每一个三角形都有一个内切圆，现在要问，是不是每个四边形也都有一个内切圆呢？如果四边形有一个内切圆，那么，这个四边形的四个角的平分线应相交于一点，显然，这个性质并不是每个四边形都能具备的．下面先让我们来寻求四边形有内切圆的必要条件．

#figure([#fig("4-43");

  ],
  caption: [
  ]
)

已知 $dot.o I$, 过圆上四点 $P$⁠、$Q$⁠、$R$⁠、$S$ 分别作 $dot.o I$ 的切线交成四边形 $A B C D$\(图4.39). 于是有，

#numbered-align(($overline(A P) = overline(A Q)\,quad overline(B R) = overline(B Q)\,quad overline(C R) = overline(C S)\,quad overline(D P) = overline(D S)$, $$, [(切线长定理)]));

#noindent;将四个等式左右各相加得：$ overline(A P) + overline(B R) + overline(C R) + overline(D P) = overline(A Q) + overline(B Q) + overline(C S) + overline(D S) $ #noindent;即：$overline(A D) + overline(B C) = overline(A B) + overline(C D)$.

这就是说“对边的和相等”是圆外切四边形的一个必要条件．于是我们得到：

#blk[定理][
圆的外切四边形的每双对边的和相等．

]
现在要问，“对边的和相等”是不是一个四边形有内切圆的充分条件呢？答案也是肯定的．

#blk[定理][
如果四边形的每双对边的和彼此相等，则它必有内切圆．

]
已知：在四边形 $A B C D$ 中（图4.40）, $overline(A B) + overline(C D) = overline(A D) + overline(B C)$.

求证：四边形 $A B C D$ 有内切圆．

#figure([#fig("4-44");

  ],
  caption: [
  ]
)

#proof[
假定 $overline(A B) > overline(B C)$, 则根据已知条件 $overline(A B) + overline(C D) = overline(A D) + overline(B C)$, 可知 $overline(A D) > overline(C D)$. 故在 $overline(A B)$ 及 $overline(A D)$ 上，可以截取线段 $overline(B M) = overline(B C)$, $overline(D N) = overline(D C)$, 从而，$ overline(A M) = overline(A B) - overline(B C)\,quad overline(A N) = overline(A D) - overline(C D) $

但根据已知条件 $overline(A B) - overline(B C) = overline(A D) - overline(C D)$,

$therefore quad overline(A M) = overline(A N)$.

连结 $overline(M N)$⁠、$overline(C M)$⁠、$overline(C N)$, 于是 $triangle.stroked.t A M N$⁠、$triangle.stroked.t B C M$⁠、$triangle.stroked.t D C N$ 都是等腰三角形，因此它们的顶角 $angle A$⁠、$angle B$⁠、$angle D$ 的平分线，必然是底边 $overline(M N)$⁠、$overline(C M)$⁠、$overline(C N)$ 的垂直平分线，这样一来，这三条角平分线也是 $triangle.stroked.t C M N$ 的边 $overline(M N)$⁠、$overline(C M)$⁠、$overline(C N)$ 的垂直平分线．所以这三条角平分线一定相交于一点 $I$. 自 $I$ 点分别作 $overline(A B)$⁠、$overline(B C)$⁠、$overline(C D)$⁠、$overline(D A)$ 的垂线，垂足分别是 $E$⁠、$F$⁠、$G$⁠、$H$. 于是得 $ overline(I E) = overline(I F) = overline(I G) = overline(I H) $

因此，以 $I$ 为圆心，$overline(I E)$ 为半径的圆与四边形 $A B C D$ 的各边分别相切于 $E$⁠、$F$⁠、$G$⁠、$H$ 四点、即四边形有内切圆 $dot.o I$.

]
#rmk[
在证明本定理时，假定了 $overline(A B) > overline(B C)$, 如果 $overline(A B) < overline(B C)$, 证明方法完全一样，如果 $overline(A B) = overline(B C)$, 那么，证法就更简单了，请同学们想一想为什么？

]
#exercise[
+ 一个菱形有内切圆吗？一个正方形呢？如果有，就分别作出一个菱形和一个正方形的内切圆．

+ 作一等边三角形的内切圆和外接圆，内心和外心重合吗？

+ 如果一个四边形的每双对边和不相等，你能否判定这个四边形有没有内切圆？为什么？

+ #block(sticky: true)[如果四边形的各边的比顺次地如下列各数的比]

  #cols(3)[
  + $2 : 2 : 3 : 3$

  + $2 : 5 : 3 : 4$

  + $3 : 5 : 3 : 1$

  ]
  这些四边形是否有内切圆？

]
=== 两圆的公切线
如图4.41所示，一条直线与两圆都相切，这条直线就叫做两圆的公切线．如果两圆的圆心都在公切线的同侧，这条公切线就叫做两圆的#strong[外公切线]；如果两圆的圆心分别在公切线的两侧，这条公切线就叫做两圆的#strong[内公切线]．显然，如果两圆相交，两圆只有外公切线而无内公切线（图4.41(2)）.

#figure([#fig("4-45");

  ],
  caption: [
  ]
)

一条公切线上两切点间线段的长，叫做两圆的公切线的长．

在实践中，要画两圆的公切线时，可将直尺渐渐移动使靠近两圆直至和两圆各只有一个接触点时，然后沿着直尺的边缘，就可画出两圆的公切线．

下面我们来研究只用圆规和直尺作两圆外公切线的方法．

==== 作两个圆的外公切线
已知：$dot.o\(O\,r\)$ 和 $dot.o\(O'\,r'\)$ 且 $r > r'$.

求作：$dot.o O$ 和 $dot.o O'$ 的外公切线．

#figure([#fig("4-46");

  ],
  caption: [
  ]
)

#analyze[
假设 $A B$ 是所求作的 $dot.o O$ 和 $dot.o O'$ 的外公切线（图4.42），$A$ 和 $B$ 是切点，分别作半径 $overline(O A)$⁠，$overline(O' B)$⁠，由于 $overline(O A)$⁠，$overline(O' B)$ 都垂直于 $A B$⁠，所以 $O A pll O' B$⁠，作 $O' E pll A B$ 交 $overline(O A)$ 于 $E$ 点，则 $O' E tack.t O A$⁠，且 $overline(O E) = r - r'$⁠，这时 $O' E$ 与 $dot.o\(O\,r - r'\)$ 相切于 $E$ 点．$dot.o\(O\,r - r'\)$ 可作，过 $O'$ 也可作 $dot.o\(O\,r - r'\)$ 的切线．故切点 $E$ 可定，于是 $A B$ 可作．

]
作法（图4.43）．

+ 作 $dot.o\(O\,r - r'\)$⁠；

+ 从 $O'$ 点作 $dot.o\(O\,r - r'\)$ 的切线 $O' E$⁠，$E$ 为切点；

+ 作 $overline(O E)$⁠，并延长交 $dot.o O$ 于 $A$ 点；

+ 过 $O'$ 点作 $O' B pll O A$ 交 $dot.o O'$ 于 $B$ 点；

+ 过 $A$⁠、$B$ 作直线 $A B$⁠，则直线 $A B$ 为所求的公切线．

#proof[
（略）

]
讨论：

+ 如果两圆相离、外切、或相交，那么 $overline(O O') > r - r'$⁠，从 $O'$ 向 $dot.o\(O\,r - r'\)$ 作切线可作两条切线，这时所求作的外公切线有两条，如图4.43中的 $A B$ 和 $C D$⁠．

  #align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("4-47");], caption: []), figure([#fig("4-48");], caption: []))));

+ 如果两圆内切于 $A$ 点（图4.44），那么 $O'$ 正好在 $dot.o\(O\,r - r'\)$ 上，过 $O'$ 点作 $dot.o\(O\,r - r'\)$ 的切线只能作一条，这时两圆的公切线只能作出一条，它就是过两圆的切点 $A$⁠，并垂直于连心线的直线．

+ 如果两圆内含时，那么 $O'$ 点在 $dot.o\(O\,r - r'\)$ 内，这时，过 $O'$ 点作不出 $dot.o\(O\,r - r'\)$ 的切线则作图题无解．

==== 作两圆的内公切线
已知：$dot.o\(O\,r\)$⁠，$dot.o\(O'\,r'\)$.

求作：$dot.o\(O\,r\)$ 和 $dot.o\(O'\,r'\)$ 的内公切线．

#analyze[
如图4.45，设 $A B$ 为所求的内公切线，$A$ 和 $B$ 为切点，作 $overline(O A)$⁠，$overline(O' B)$⁠，因为这两条半径都垂直于公切线 $A B$⁠，所以互相平行，再从 $O'$ 点引 $O' C pll B A$ 交 $overline(O A)$ 的延长线于 $C$⁠，所以 $O' C$ 和以 $O$ 为圆心，$overline(O C)$ 为半径的圆相切，但这圆的半径 $overline(O C)$ 等于 $overline(O A) + overline(A C)$⁠，也等于 $overline(O A) + overline(O' B)$⁠，就是等于 $r + r'$⁠，而它的圆心就是已知圆的圆心 $O$⁠，所以这个圆可作．

]
#figure([#fig("4-49");

  ],
  caption: [
  ]
)

作法（图4.45）．

+ 以 $O$ 为圆心，$r + r'$ 为半径画圆；

+ 从 $O'$ 作该圆的切线 $O' C$⁠，切点为 $C$⁠；

+ 作 $overline(O C)$ 交 $dot.o O$ 于 $A$ 点；

+ 过 $A$ 作 $A B pll C O'$⁠，切 $dot.o O'$ 于 $B$ 点，$A B$ 即为所求作的内公切线.

#figure([#fig("4-50");

  ],
  caption: [
  ]
)

#proof[
略.

]
讨论：

+ 如果两圆相离，可作出两条内公切线．

+ 如果两圆外切，只能作一条内公切线，这条内公切线就是过切点并且垂直于连心线的直线（图4.46）.

+ 如果两圆相交或内含作图题无解．

#blk[定理][
两圆的两条外公切线的长相等；两圆的两条内公切线的长也相等．

]
（由同学们自证）

#exercise[
+ #block(sticky: true)[已知 $dot.o\(A\,4 upright(c m)\)$, $dot.o\(B\,3 upright(c m)\)$, 圆心距分别如下，求作公切线（要求只作出图形）．]

  #cols(2)[
  + 7cm;

  + 1cm.

  ]

+ 已知两圆的半径分别是7cm和1cm, 连心线的长是10cm, 求这两圆的外公切线和内公切线长．

+ $dot.o O$ 和 $dot.o O'$ 相外切，直线 $B C$ 是它们的一条外公切线，切点是 $B$ 和 $C$, 已知切线 $B C$ 和连心线的交角是 $30 degree$, 连心线长是2cm, 求这两圆的半径和外公切线的长．

+ 如果两圆外切，那么内公切线平分两圆的外公切线（两切点间的线段）．

]
#heading(level: 2, numbering: none, supplement: [toc-sub])[习题4.2]

+ #block(sticky: true)[已知 $dot.o\(O\,r\)$⁠，圆心 $O$ 到直线 $ell$ 的距离是 $d$, 说出下列情况 $ell$ 和 $dot.o O$ 的位置关系．]

  #cols(3)[
  + $r < d$,

  + $r = d$,

  + $r > d$.

  ]

+ 已知直线 $ell$ 和 $dot.o O$ 相切于 $P$ 点，$overline(A B)$ 是 $dot.o O$ 的一条直径，并且 $A$⁠、$B$ 两点到 $ell$ 的距离各为2.3cm和1.5cm, 求 $dot.o O$ 的直径长.

+ 从 $dot.o O$ 外一点 $P$ 作圆的两条切线，和 $dot.o O$ 分别相切于 $A$⁠、$B$. 作半径 $overline(O B)$, 延长到 $C$, 使 $overline(B C) = overline(O B)$, 求证：$angle A P C = 3 angle B P C$.

+ 在第3题中，能否通过作出 $triangle.stroked.t P O C$ 的方法，过 $P$ 点作出 $dot.o O$ 的切线．

+ 以直角三角形 $A B C$ 的直角边 $overline(A C)$ 为直径作圆，交斜边 $overline(A B)$ 于 $D$ 点，由 $D$ 点作这圆的切线，求证这条切线平分另一条直角边 $overline(B C)$.

+ 已知 $A B$ 和 $C D$ 是 $dot.o O$ 的两条平行的切线，$A$⁠、$C$ 是切点，$dot.o O$ 的另一切线与 $A B$⁠、$C D$ 分别相交于 $B$⁠、$D$ 两点．求证：$B O tack.t O D$.

+ #block(sticky: true)[两圆外切于 $A$, 它们的一条外公切线切一个圆于 $B$ 点，切另一个圆于 $C$ 点，它们的内公切线交 $overline(B C)$ 于 $D$, 求证：]

  #cols(2)[
  + $overline(B D) = overline(D C)$

  + $angle B A C$ 是直角

  ]

+ 求证：直角三角形的内切圆的直径的长等于两条直角边的长的和减去斜边的长．

+ 求证：两圆的两条外公切线的交点是两圆的顺位似中心，两圆的两条内公切线的交点是两圆的逆位似中心，

+ 已知 $dot.o\(O\,r\)$ 与 $dot.o\(O'\,r'\)$ 外切，从 $O$ 点引 $dot.o O'$ 的切线 $O A$, $A$ 是切点，再从 $A$ 引 $dot.o O$ 的切线 $A B$, 切点是 $B$, 求 $overline(A B)$ 长．

== 与圆有关的角
=== 圆心角、圆周角
顶点在圆心的角叫做圆心角．如图4.47中的 $angle A O B$, 就是一个圆心角，它的两边与 $dot.o O$ 的交点为 $A$⁠、$B$. $wideparen(A B)$ 叫做 $angle A O B$ 所对的弧，$angle A O B$ 叫做 $wideparen(A B)$ 所对的圆心角．

圆心角与它所对的弧之间有如下关系．

#blk[定理][
在同圆或等圆中，弧相等的充要条件是它们所对的圆心角相等．

]
我们来证充分性，必要性由同学们自证．

已知：$angle A O B$ 和 $angle A' O B'$ 都是 $dot.o O$ 的圆心角（图4.47），它们所对的弧分别是 $wideparen(A B)$ 和 $wideparen(A' B')$, 且 $angle A O B = angle A' O B'$.

求证：$wideparen(A B) = wideparen(A' B')$.

#proof[
把圆心角 $angle A O B$, 连同它所对的弧依图中箭头所示的方向旋转，使 $overline(O A)$ 与 $overline(O A')$ 重合，因 $angle A O B = angle A' O B'$, $overline(O B) = overline(O B')$, 所以 $overline(O B)$ 可与 $overline(O B')$ 重合，$B$ 与 $B'$ 重合，因此 $wideparen(A B)$ 与 $wideparen(A' B')$ 重合，所以 $wideparen(A B) = wideparen(A' B')$.

]
#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("4-51");], caption: []), figure([#fig("4-52");], caption: []))));

如果把顶点在圆心的周角分成360等份，这时，整个圆周也被分成360等份．我们把每一份叫做 $1 degree$ 弧．由此可知 $1 degree$ 的圆心角所对的弧是 $1 degree$ 弧，$1 degree$ 的弧所对的圆心角是 $1 degree$ 的角，于是 $n degree$ 的圆心角所对的弧也是 $n degree$. 因此有：

#blk[][
圆心角的度数等于它所对的弧的度数．

]
顶点在圆周上，并且两边都与圆相交的角，叫做#strong[圆周角]．

如图4.48, $angle B A C$ 就是 $dot.o O$ 的一个圆周角，它的顶点 $A$ 在 $dot.o O$ 上，它的两边分别交 $dot.o O$ 于 $B$⁠、$C$, 这时，$wideparen(B C)$ 叫做 $angle B A C$ 所对的弧，$angle B A C$ 叫做 $wideparen(B C)$ 所对的圆周角，圆周角与它所对弧之间有如下关系：

#blk[圆周角定理][
圆周角的度数等于它所对弧的度数的一半．

]
已知：$angle B A C$ 是 $dot.o O$ 的圆周角，$wideparen(B C)$ 是它所对的弧（图4.49）.

求证：$angle B A C$ 的度数=$1 / 2 wideparen(B C)$ 的度数．

#figure([#fig("4-53");

  ],
  caption: [
  ]
)

#proof[
分三种情况来证明

+ 圆心 $O$ 在 $angle B A C$ 的一边上，如图4.49(1), $O$ 在 $A B$ 边上，作半径 $overline(O C)$, 在 $triangle.stroked.t A O C$ 中，

  $because quad overline(O A) = overline(O C)$,

  $therefore quad angle C = angle B A C$.

  又 $because quad angle B O C$ 是 $triangle.stroked.t O A C$ 的外角，

  $therefore quad angle B O C = angle B A C + angle C = 2 angle B A C\,quad angle B A C = 1 / 2 angle B O C$.

  又 $because quad angle B O C$ 的度数 $= wideparen(B C)$ 的度数．

  $therefore quad angle B A C$ 的度数 $= 1 / 2 wideparen(B C)$ 的度数．

+ 圆心 $O$ 在 $angle B A C$ 内，如图4.49(2), 作直径 $A D$, 从1可以知道：$ angle B A D upright("的度数") = 1 / 2 wideparen(B D) upright("的度数")\,quad angle D A C upright("的度数") = 1 / 2 wideparen(D C) upright("的度数") $

  $because quad angle B A C = angle B A D + angle D A C$

  $therefore quad angle B A C upright("的度数") = 1 / 2 wideparen(B D) upright("的度数") + 1 / 2 wideparen(D C) upright("的度数") = 1 / 2 wideparen(B C) upright("的度数")$

+ 圆心 $O$ 在 $angle B A C$ 的外部，如图4.49(3), 作直径 $A D$, 从1可以知道，$ angle B A D upright("的度数") = 1 / 2 wideparen(B D) upright("的度数")\,quad angle C A D upright("的度数") = 1 / 2 wideparen(D C) upright("的度数") $

  $because quad angle B A C = angle B A D - angle C A D$,

  $therefore quad angle B A C upright("的度数") = 1 / 2 wideparen(B D) upright("的度数") - 1 / 2 wideparen(C D) upright("的度数") = 1 / 2 wideparen(B C) upright("的度数")$

]
根据圆周角定理，请同学们自证下列的推论．

#blk[推论1][
同弧（或等弧）所对的圆周角相等（图4.50）．

]
#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("4-54");], caption: []), figure([#fig("4-55");], caption: []))));

#blk[推论2][
半圆上的圆周角都是直角（图4.51）．

]
#blk[推论3][
等于直角的圆周角所对的弦是圆的直径（图4.51）．

]
#example[
已知：$dot.o O$ 的两弦 $overline(A B)$⁠、$overline(C D)$ 相交于圆内一点 $P$.

求证：$angle A P C$ 的度数 $= 1 / 2 (wideparen(A C) + wideparen(B D))$ 的度数（图4.52）.

]
#proof[
作弦 $overline(A D)$, 则 $angle A P C = angle A + angle D$

$therefore quad angle A P C$ 的度数=$\(angle A + angle D\)$ 的度数 $= 1 / 2 (wideparen(B D) + wideparen(A C))$ 的度数（圆周角定理）．

]
#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("4-56");], caption: []), figure([#fig("4-57");], caption: []))));

#example[
已知：如图4.53, $wideparen(A B)$, $P$⁠、$Q$⁠、$R$ 三点都在弦 $overline(A B)$ 的同侧，且 $P$ 在 $wideparen(A B)$ 上，$Q$ 在 $wideparen(A B)$ 所在的圆内，$R$ 在 $wideparen(A B)$ 所在的圆外．

求证：$angle A Q B > angle A P B > angle A R B$.

]
#proof[
延长 $overline(A Q)$ 交 $wideparen(A B)$ 于 $C$ 点，设 $overline(A R)$ 与 $wideparen(A B)$ 交于 $D$ 点，作 $overline(B C)$⁠、$overline(B D)$ 则有：$ angle A Q B > angle A C B\,#h(2em) angle A D B > angle A R B $

$because quad angle A C B = angle A P B = angle A D B$ (推论1).

$therefore quad angle A Q B > angle A P B > angle A R B$.

]
#example[
已知：$triangle.stroked.t A B C$ 内接于 $dot.o O$\(图4.54), $overline(C E)$ 是 $dot.o O$ 的直径，$overline(C D)$ 是 $overline(A B)$ 边上的高，$overline(B C)$⁠、$overline(A C)$⁠、$overline(C E)$⁠、$overline(C D)$ 分别用 $a$⁠、$b$⁠、$d$⁠、$h$ 表示．

求证：$a b = h d$

]
#figure([#fig("4-58");

  ],
  caption: [
  ]
)

#proof[
在 $triangle.stroked.t A C D$ 与 $triangle.stroked.t E C B$ 中，

$because quad C D tack.t A B$,

$therefore quad angle A D C$ 是直角．

$because quad overline(C E)$ 是 $dot.o O$ 的直径，

$therefore quad angle E B C$ 也是直角（推论2）.

又 $because quad angle A = angle E$\(推论1),

$therefore quad triangle.stroked.t A C D tilde.rev triangle.stroked.t E C B$.

$therefore quad b / d = h / a\,quad a b = h d$.

]
#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, [#fig("4-59");

#subcap[
第2题

]], [#fig("4-60");

#subcap[
第3题

]])));

#exercise[
+ 已知 $dot.o O$ 的圆周角 $angle A B C = 40 degree$, 求 $angle A O C$ 的度数．

+ 已知图中 $wideparen(A E)$ 的度数 $= 40 degree$, 求 $angle B + angle D$.

+ 已知图中，$wideparen(C D)$ 的度数 $= 20 degree$, $wideparen(A F)$ 的度数 $= 40 degree$, 求 $angle B + angle E$.

+ 已知图中，$wideparen(S P)$ 的度数 $= 50 degree$, 求 $angle R + angle Q$.

+ 求证两条平行的弦所夹的弧相等．

+ 已知圆内接四边形的四个顶点分圆成四条弧的度数的比是 $3 : 4 : 5 : 6$, 求四边形四个内角的度数．

+ 已知四边形 $A B C D$ 内接于 $dot.o O$, 且 $wideparen(A B) = wideparen(B C) = wideparen(C D) = wideparen(D A)$. 求证 $A B C D$ 是正方形．

+ 由 $dot.o O$ 外一点引 $dot.o O$ 的两条割线，一条与 $dot.o O$ 相交于 $A$⁠、$B$ 两点，另一条与 $dot.o O$ 相交于 $C$⁠、$D$ 两点，求证：$angle P$ 的度数 $= 1 / 2 (wideparen(B D) - wideparen(A C))$ 的度数．

+ 假设 $triangle.stroked.t A B C$ 内接于 $dot.o O$, 过 $wideparen(A C)$ 的中点 $M$ 作弦 $overline(M N) pll A B$ 交 $overline(B C)$ 于 $D$ 点，求证：$wideparen(M C N) = wideparen(B N C)$, $overline(D M) = overline(D B)$.

+ 两等圆 $dot.o O_1$ 和 $dot.o O_2$ 相交于 $A$⁠、$B$ 两点，过 $A$ 点作直线且与 $dot.o O_1$ 和 $dot.o O_2$ 分别相交于 $C$⁠、$D$ 两点，求证 $triangle.stroked.t B C D$ 是等腰三角形．

+ 已知 $triangle.stroked.t A B C$ 中，$angle A$ 的平分线 $A D$ 交 $triangle.stroked.t A B C$ 的外接圆于 $E$ 点，求证：$overline(B E)^2 = overline(A E) dot.op overline(D E)$.

+ 设 $triangle.stroked.t A B C$ 的内心是 $I$, $overline(A I)$ 的延长线与这个三角形的外接圆的交点是 $D$, 求证：$overline(D I) = overline(D B) = overline(D C)$.

]
#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, [#fig("4-61");

#subcap[
第4题

]], [#fig("4-62");

#subcap[
第8题

]])));

=== 弦切角
顶点在圆上，一边和圆相交，另一边和圆相切的角叫做#strong[弦切角]．

如图4.55, $angle A B C$ 就是弦切角，顶点 $B$ 在圆上，一边 $B C$ 与圆相切于 $B$ 点，另一边还与圆相交于 $A$ 点，$wideparen(A m B)$ 叫做弦切角 $angle A B C$ 所夹的弧．

#blk[弦切角定理][
弦切角的度数等于它所夹的弧的度数的一半．

]
已知：$angle A B C$ 是 $dot.o O$ 的弦切角（图4.55）. 边 $overline(B C)$ 与 $dot.o O$ 相切，边 $overline(B A)$ 与 $dot.o O$ 相交于 $A$ 点．

求证：$angle A B C$ 的度数 $= 1 / 2 wideparen(A m B)$ 的度数．

#figure([#fig("4-63");

  ],
  caption: [
  ]
)

#proof[
过 $B$ 点作 $dot.o O$ 的直径 $overline(B D)$⁠，作弦 $overline(A D)$⁠．由于直径上的圆周角是直角，

$therefore quad angle B A D = 90 degree\,quad angle A D B = 90 degree - angle A B D$

$because quad B C$ 是 $dot.o O$ 的切线，

$therefore quad overline(O B) tack.t B C\,quad angle A B C = 90 degree - angle A B D\,quad angle A B C = angle A D B$

$because quad angle A D B$ 的度数 $= 1 / 2 wideparen(A m B)$ 的度数（圆周角定理）

$therefore quad angle A B C$ 的度数 $= 1 / 2 wideparen(A m B)$ 的度数．

]
由弦切角定理与圆周角定理又可得到：

#blk[推论][
弦切角等于它所夹弧上的圆周角．

]
#example[
已知：如图4.56，$overline(A B)$ 是 $dot.o O$ 的一条弦，$A C$ 是一条射线，且 $angle B A C = 1 / 2 wideparen(A B)$ 的度数．

求证：$A C$ 切 $dot.o O$ 于 $A$⁠．

]
#proof[
作直径 $overline(A D)$. 由于：

#numbered-align(($angle B A C = 1 / 2 wideparen(A B) upright("的度数")$, $$, [(已知)]), ($angle A D B = 1 / 2 wideparen(A B) upright("的度数")$, $$, [(圆周角定理)]));

$therefore quad angle B A C = angle A D B$.

$because quad angle A B D = 90 degree$（圆周角定理推论2）

$therefore quad angle A D B + angle B A D = 90 degree\,quad angle B A C + angle B A D = 90 degree$

于是，$A C tack.t A D$ 于 $A$ 点，

$therefore quad A C$ 切 $dot.o O$ 于 $A$ 点（切线判定定理）．

]
#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("4-64");], caption: []), figure([#fig("4-65");], caption: []))));

例4.17所证结论说明了：弦切角定理的逆定理是成立的．这就是说，一个角的顶点在圆周上且等于它所夹弧的度数的一半，不仅是这个角为弦切角的必要条件，同时也是这个角为弦切角的充分条件．

#example[
在已知线段上，作含有已知圆周角的弧：

已知：$overline(A B)$ 和 $angle alpha$（图4.57）.

求作：以 $A$⁠、$B$ 两点为端点的弧，使它所含的圆周角等于 $angle alpha$.

]
#analyze[
假定 $wideparen(A m B)$ 是所求作的弧（图4.57），作切线 $A C$⁠，就有 $angle B A C = angle alpha$⁠，因为圆心 $O$ 在 $overline(A B)$ 的垂直平分线 $D E$ 上，又在 $A C$ 的垂线 $A F$ 上，所以圆心 $O$ 是 $D E$ 和 $A F$ 的交点．于是得作法如下：

]
作法

+ 作 $angle B A C = angle alpha$⁠，

+ 作 $overline(A B)$ 的垂直平分线 $D E$⁠，

+ 作 $A F tack.t A C$ 交 $D E$ 于 $O$⁠，

+ 以 $O$ 为圆心，$O A$ 为半径画 $wideparen(A m B)$⁠，使 $wideparen(A m B)$ 和 $A C$ 在 $overline(A B)$ 的两旁，$wideparen(A m B)$ 就是所求作的弧．

#proof[
$because quad A C tack.t O A$ 于 $A$ 点，

$therefore quad A C$ 是 $dot.o O$ 的切线，$angle B A C$ 是弦切角．

$wideparen(A m B)$ 所含的圆周角 $= angle B A C = angle alpha$（弦切角定理的推论）．

因此，$wideparen(A m B)$ 就是所求作的弧.

讨论：图4.57中所作的 $wideparen(A m B)$ 在 $overline(A B)$ 的上方，我们还可以在 $overline(A B)$ 的下方作出另一条 $wideparen(A m' B)$（图4.58），使 $wideparen(A m' B)$ 所含的圆周角也等于 $angle alpha$. 因此，所求作的弧有两条．

]
#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("4-66");], caption: []), figure([#fig("4-67");], caption: []))));

#example[
已知：两圆外切于 $A$ 点，过 $A$ 作二条直线，一条与两圆相交于 $C$⁠、$D$ 两点，另一条与两圆相交于 $E$⁠、$F$ 两点（图4.59）.

求证：$C E pll F D$.

]
#proof[
过 $A$ 引两圆的公切线 $M N$⁠，

$because quad angle A C E = angle E A N\,quad angle F D A = angle F A M$（弦切角定理的推论），

又 $because quad angle E A N = angle F A M$⁠，

$therefore quad angle A C E = angle F D A\,quad C E pll F D$

]
#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, [#fig("4-68");

#subcap[
第1题

]], [#fig("4-69");

#subcap[
第2题

]])));

#exercise[
+ 如图，$angle B A C$ 是 $dot.o O$ 的弦切角，已知 $angle B A C = 37 degree 30'$⁠，求 $angle A O C$ 的度数．

+ 已知 $overline(A B)$ 是 $dot.o O$ 的弦，$A C$ 是 $dot.o O$ 的切线，$A$ 是切点，$M$ 是 $wideparen(A B)$ 的中点，求证 $M$ 到 $A B$ 和 $A C$ 的距离相等．

+ 如图，直线 $D E$ 切 $dot.o O$ 于 $B$ 点，$angle C B E = 67 degree$⁠，$angle C = 50 degree$⁠，求 $angle A B C$ 的度数．

+ 以3cm长的线段为弦求作一条弧，使它所含的圆周角是 $52 degree$（只要求画出图形）．

+ 两圆内切于 $A$⁠，从 $A$ 作二条直线，一条与两圆分别交于 $C$⁠、$D$⁠，另一条与两圆分别交于 $E$⁠、$F$⁠，求证：$C E pll D F$.

+ 两圆外切于 $A$ 点，过 $A$ 点作一条直线分别交两圆于 $C$⁠、$D$⁠，过 $C$⁠、$D$ 分别作两圆的切线 $C P$ 和 $D Q$⁠，求证 $C P pll D Q$.

]
#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, [#fig("4-70");

#subcap[
第3题

]], [#fig("4-71");

#subcap[
第5题

]])));

=== 圆幂定理
#blk[切割线定理][
过圆外一点作圆的切线和割线，这点到割线两交点间的距离的乘积等于这点到切点的距离的平方.

]
已知：$P$ 为 $dot.o O$ 外一点，直线 $P T$ 与 $dot.o O$ 相切于 $T$ 点，割线 $P A B$ 与 $dot.o O$ 相交于 $A$⁠、$B$ 两点（图4.60）．

求证：$overline(P A) dot.op overline(P B) = overline(P T)^2$⁠．

#proof[
作弦 $overline(A T)$⁠、$overline(B T)$⁠，在 $triangle.stroked.t P A T$ 和 $triangle.stroked.t P T B$ 中，

$because quad angle P$ 是公共角，$angle A T P = angle T B P$（弦切角定理的推论），

$therefore quad triangle.stroked.t P A T tilde.rev triangle.stroked.t P T B\,quad overline(P A) / overline(P T) = overline(P T) / overline(P B)$

$therefore quad overline(P A) dot.op overline(P B) = overline(P T)^2$.

]
#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("4-72");], caption: []), figure([#fig("4-73");], caption: []))));

#blk[相交弦定理][
圆内两条相交弦中，每条弦被交点分成的两条线段的乘积相等．

]
如图4.61，$dot.o O$ 的两条弦 $overline(A B)$⁠、$overline(C D)$ 相交于 $P$⁠，则 $overline(P A) dot.op overline(P B) = overline(P C) dot.op overline(P D)$（请同学自己完成证明）．

#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("4-74");], caption: []), figure([#fig("4-75");], caption: []))));

让我们观察图4.62与图4.63，由切割线定理和相交弦定理，不难看出不论 $P$ 点在圆内或圆外，通过它的任一条圆的割线交圆于 $A$⁠、$B$ 两点，只要 $P$ 点的位置定了，则乘积 $overline(P A) dot.op overline(P B)$ 都是定值．

设定值为 $k$⁠，当 $P$ 点在圆外时（图4.62），由切割线定理知. $ k = overline(P A) dot.op overline(P B) = overline(P T)^2 = overline(P O)^2 - r^2 quad upright("（") r upright("是") dot.o O upright("的半径）") $

当 $P$ 点在圆内时（图4.63），过 $P$ 点作弦 $overline(E F) tack.t O P$⁠，则：$ k = overline(P E) dot.op overline(P F) = overline(P E)^2 = r^2 - overline(O P)^2 $ #noindent;$k$ 叫做点 $P$ 对于圆的#strong[幂]，$P$ 点若在圆上，显然 $k = 0$⁠，总结以上讨论，我们可以得到：

#blk[圆幂定理][
已知 $dot.o\(O\,r\)$⁠，通过一定点 $P$⁠，作任一条圆的割线交圆于 $A$⁠、$B$ 两点，则 $ overline(P A) dot.op overline(P B) = k $ #noindent;其中：$k$ 为定值．

+ 当 $P$ 点在圆外时，$k = overline(P O)^2 - r^2$⁠，

+ 当 $P$ 点在圆内时，$k = r^2 - overline(P O)^2$⁠，

+ 当 $P$ 点在圆上时，$k = 0$.

]
#example[
求证：相交两圆的公共弦的延长线上一点，到两圆的切线长相等．

已知：如图4.64，$dot.o O$ 与 $dot.o O'$ 相交于 $A$⁠、$B$⁠，$P$ 是 $overline(B A)$ 延长线上任一点，$P C$⁠，$P C'$ 分别和 $dot.o O$ 和 $dot.o O'$ 相切于 $C$⁠、$C'$.

求证：$overline(P C) = overline(P C')$

]
#proof[
$because quad P C$ 和 $dot.o O$ 相切于 $C$ 点，$P A B$ 是 $dot.o O$ 的割线

$therefore quad overline(P C)^2 = overline(P A) dot.op overline(P B)$（切割线定理）．

同理，$overline(P C'^2) = overline(P A) dot.op overline(P B)$

$therefore quad overline(P C)^2 = overline(P C')^2\,quad overline(P C) = overline(P C')$.

]
#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("4-76");], caption: []), figure([#fig("4-77");], caption: []))));

#example[
如图4.65．$overline(A B)$ 是 $dot.o O$ 的弦，$D$ 是 $overline(A B)$ 的中点，$C D tack.t overline(A B)$ 和 $dot.o O$ 相交于 $C$⁠，已知 $overline(A B) = 12$⁠cm，$overline(C D) = 3$⁠cm，求 $dot.o O$ 的半径 $r$⁠．

]
#solution[
延长 $C D$ 交 $dot.o O$ 于 $E$⁠，则 $overline(C E)$ 为 $dot.o O$ 的直径，由相交弦定理有：$ overline(D A) dot.op overline(D B) = overline(D C) dot.op overline(D E) $

$because quad overline(D C) = 3 upright(c m)\,quad overline(D E) =\(2 r - 3\)upright(c m)\,quad overline(D A) = overline(D B) = 6 upright(c m)$,

$therefore quad 6 times 6 = 3\(2 r - 3\)$.

解方程，得 $r = 7 1 / 2$⁠．

答：$dot.o O$ 的半径等于7.5cm．

]
#example[
已知两条线段 $a$⁠、$b$, 求作一条线段 $x$, 使 $x$ 为 $a$⁠、$b$ 的比例中项，即 $x^2 = a dot.op b$.

]
作法（图4.66）

+ 作 $overline(A P) = a$,

+ 延长 $overline(A P)$ 到 $B$, 使 $overline(P B) = b$.

+ 以 $overline(A B)$ 为直径作半圆．

+ 过 $P$ 点作 $overline(A B)$ 的垂线 $P C$ 交半圆于 $C$ 点，则 $overline(P C)$ 就是所求作的线段 $x$.

#figure([#fig("4-78");

  ],
  caption: [
  ]
)

#proof[
由圆幂定理有：$ overline(P A) dot.op overline(P B) = overline(O C)^2 - overline(O P)^2 = overline(P C)^2 $

$because quad overline(P A) = a\,quad overline(P B) = b$（作图）

$therefore quad overline(P C)^2 = a dot.op b$⁠，$overline(P C)$ 就是所求作的线段 $x$.

]
#exercise[
+ 如图，$P A B$, $P C D$ 都是 $dot.o O$ 的割线，已知，$overline(P C) = 6$⁠cm, $overline(P D) = 12$⁠cm, $overline(P A) = 4$⁠cm, 求 $dot.o O$ 的切线 $overline(P T)$ 的长，和弦 $overline(A B)$ 的长．

+ 已知，$dot.o O_1$ 与 $dot.o O_2$ 外切于一点 $A$, $P$ 点是两圆内公切线上任一点，过 $P$ 点分别引两圆的割线与 $dot.o O_1$ 相交于 $A$⁠、$B$ 两点，与 $dot.o O_2$ 相交于 $C$⁠、$D$ 两点，求证：$overline(P A) dot.op overline(P B) = overline(P C) dot.op overline(P D)$.

+ 如果两圆相交，则公弦的延长线等分外公切线两切点间的线段．

+ 求作线段 $x = sqrt(15)$ 单位长（提示 $15 = 3 times 5$⁠）．

+ 已知 $dot.o\(O\,3 upright(c m)\)$, $overline(O P_1) = 2$⁠cm, $overline(O P_2) = 3$⁠cm, $overline(O P_3) = 4$⁠cm, 分别求 $P_1$⁠、$P_2$⁠、$P_3$ 三点对 $dot.o O$ 的幂．

+ $P T$⁠、$P U$ 是 $P$ 点分别到两个同心圆的切线．$U$ 点是大圆的切点，$T$ 是小圆上的切点，如果 $overline(P T)$ 的延长线交大圆于 $Q$ 点，求证 $overline(P T)^2 - overline(P U)^2 = overline(T Q)^2$.

]
#fig-center[
#fig("4-79");

#subcap[
第1题

]
]
=== 圆的内接四边形
我们知道，每一个三角形都有一个外接圆，现在我们要问是否每一个四边形都有一个外接圆呢？答案是很明显的，并不是每个四边形都有一个外接圆，这个事实，同学们可自己举例说明．下面我们来学习四边形内接于圆的条件，几个点在同一圆上，我们常说这几点共圆．

#blk[定理][
四边形的四个顶点共圆的充分必要条件是四边形的内对角互补．

]
==== 必要性
已知：四边形 $A B C D$ 的四个顶点共圆．

求证：$angle A + angle C = 180 degree$, $angle B + angle D = 180 degree$

#proof[
由圆周角定理，$ \(angle A + angle C\)upright("的度数") & = angle A upright("的度数") + angle C upright("的度数")\
 & = 1 / 2 (wideparen(B C D) upright("的度数") + wideparen(B A D) upright("的度数"))\
 & = 1 / 2 (upright("周角的度数"))\
 & = 1 / 2 times 360 degree = 180 degree $ #noindent;同理可证：$angle B + angle D = 180 degree$.

]
#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("4-80");], caption: []), figure([#fig("4-81");], caption: []))));

==== 充分性
已知：四边形 $A B C D$, 且 $angle B + angle D = 180 degree$.

求证：$A$⁠、$B$⁠、$C$⁠、$D$ 共圆

#proof[
由于 $angle B + angle D = 180 degree$,

$therefore quad angle B < 180 degree$

$A$⁠、$B$⁠、$C$ 三点不在同一条直线上，于是有 $dot.o O$ 通过 $A$⁠、$B$⁠、$C$ 三点（图4.68），如果 $D$ 点不在 $dot.o O$ 上，那么只有下面两种可能：

+ $D$ 点在 $dot.o O$ 内，延长对角线 $overline(B D)$ 与 $dot.o O$ 相交于 $D_1$ 点，于是，$angle A D C > angle A D_1 C$（例4.15）．但 $angle A D_1 C + angle B = 180 degree$

  $therefore quad angle A D C + angle B > 180 degree$.

  这与已知 $angle B + angle D = 180 degree$ 相矛盾，所以 $D$ 点不能在 $dot.o O$ 内．

+ $D$ 点在 $dot.o O$ 外，这时 $D_1$ 点在对角线 $overline(B D)$ 上，于是，$angle A D C < angle A D_1 C$. 但 $angle A D_1 C + angle B = 180 degree$

  $therefore quad angle A D C + angle B < 180 degree$.

  这又与 $angle B + angle D = 180 degree$ 矛盾，所以 $D$ 点不能在 $dot.o O$ 外．

由1、2可知假设“$D$ 不在 $dot.o O$ 上”是错误的，因而 $D$ 必在 $dot.o O$ 上，充分性得证．

]
#blk[推论1][
四边形的四个顶点共圆的充分必要条件是一个外角等于其内对角．

]
已知四边形 $A B C D$, $angle E A D$ 是它的一个外角（图4.69），推论1要求证明：$ A\,B\,C\,D upright("四点共圆") arrow.l.r.double.long angle E A D = angle C $ #noindent;请同学自证这个推论．

#blk[推论2][
如果两个点在另外两个点所在直线的同旁，并且和另外两点的连线所夹的角相等，那么这四点共圆．

]
#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("4-82");], caption: []), figure([#fig("4-83");], caption: []))));

已知：$C$⁠、$D$ 两点在 $A$⁠、$B$ 两点所在直线的同旁，且 $angle A C B = angle A D B$\(图4.70).

求证：$A$⁠、$B$⁠、$C$⁠、$D$ 四点共圆．

#proof[
因为 $A$⁠、$B$⁠、$C$ 三点不在同一条直线上，经过 $A$⁠、$B$⁠、$C$ 三点作一圆，在此圆上取一点 $E$, 且使 $E$ 点居于 $A B$ 的另一旁，作 $overline(A E)$⁠、$overline(B E)$, 则 $A E B C$ 是圆内接四边形．

$therefore quad angle A C B + angle E = 180 degree$（圆内接四边形内对角互补）

但 $angle A D B + angle E = 180 degree$

$therefore quad D$ 点在 $A$⁠、$E$⁠、$B$⁠、$C$ 四点所在的圆上．$A$⁠、$B$⁠、$C$⁠、$D$ 四点共圆．

]
#example[
已知 $D$⁠、$E$⁠、$F$ 分别是 $triangle.stroked.t A B C$ 三边上的任意一点，通过 $A$⁠、$E$⁠、$F$ 与通过 $C$⁠、$D$⁠、$E$ 的圆如果还相交于另一点 $G$（图4.71(1)）.

求证：$B$⁠、$D$⁠、$G$⁠、$F$ 四点共圆．

]
#figure([#fig("4-84");

  ],
  caption: [
  ]
)

#proof[
由于 $A$⁠、$E$⁠、$G$⁠、$F$ 与 $C$⁠、$D$⁠、$G$⁠、$E$ 都共圆，

$therefore quad angle A F G = angle G E C\,quad angle G E C = angle G D B$ (推论1)

$therefore quad angle A F G = angle G D B$, $B$⁠、$D$⁠、$G$⁠、$F$ 四点共圆（推论1）.

在图4.71(2) 中，通过 $A$⁠、$E$⁠、$F$ 与通过 $C$⁠、$D$⁠、$E$ 的圆的另一个交点在 $triangle.stroked.t A B C$ 外，结论仍然成立，请同学自证．

]
#example[
已知锐角 $triangle.stroked.t A B C$ 的高 $A D$⁠、$B E$⁠、$C F$ 交于 $H$ 点，作 $triangle.stroked.t D E F$. 求证

+ $overline(H A) dot.op overline(H D) = overline(H B) dot.op overline(H E) = overline(H C) dot.op overline(H F)$.

+ $A D$⁠、$B E$⁠、$C F$ 分别是 $triangle.stroked.t D E F$ 的三内角平分线．

]
#figure([#fig("4-85");

  ],
  caption: [
  ]
)

#proof[
+ $because quad angle A F C = 90 degree\,quad angle A D C = 90 degree$

  $therefore quad angle A F C = angle A D C$⁠，$A$⁠、$F$⁠、$D$⁠、$C$ 四点共圆（推论2）.

  同理可证：$B$⁠、$C$⁠、$E$⁠、$F$ 四点也共圆．

  $therefore quad overline(H A) dot.op overline(H D) = overline(H C) dot.op overline(H F)\,quad overline(H C) dot.op overline(H F) = overline(H B) dot.op overline(H E)$（圆幂定理）

  $therefore quad overline(H A) dot.op overline(H D) = overline(H B) dot.op overline(H E) = overline(H C) dot.op overline(H F)$

+ 在四边形 $B D H F$ 中，$angle B D H + angle B F H = 180 degree$,

  $therefore quad B$⁠、$D$⁠、$H$⁠、$F$ 四点共圆．

  同理：$C$⁠、$E$⁠、$H$⁠、$D$ 四点也共圆．

  $therefore quad angle 1 = angle 3\,quad angle 2 = angle 4$（圆周角定理推论）．

  又 $because quad B$⁠、$C$⁠、$E$⁠、$F$ 四点共圆，

  $therefore quad angle 3 = angle 4\,quad angle 1 = angle 2$, 即 $A D$ 平分 $angle F D E$.

  同理可证：$C F$ 平分 $angle D F E$\; $B E$ 平分 $angle F E D$.

]
请同学们想想，如果 $triangle.stroked.t A B C$ 是钝角三角形或直角三角形，这结论是否还成立？

由例4.24我们可看到，当我们要论证线段与线段之间，角与角之间的某些关系时，利用四点共圆的充要条件会带来方便．

#exercise[
+ 如图，$O$ 是 $triangle.stroked.t A B C$ 的外心，$M$⁠、$N$⁠、$P$ 是三边上的中点，试找出 $A$⁠、$B$⁠、$C$⁠、$M$⁠、$N$⁠、$P$⁠、$O$ 中，哪四点是共圆的．

+ 如图，$triangle.stroked.t A B C$ 各边上的高 $A D$⁠、$B E$⁠、$C F$ 相交于 $H$, 试找出 $A$⁠、$B$⁠、$C$⁠、$D$⁠、$E$⁠、$F$⁠、$H$ 中，哪四点是共圆的？

+ #block(sticky: true)[下列四边形中，哪一类四边形的四个顶点一定共圆？哪一类的四边形四个顶点一定不共圆？]

  #cols(2)[
  + 矩形

  + 平行四边形

  + 菱形

  + 等腰梯形

  + 有一个角是直角的梯形

  ]

+ 已知 $triangle.stroked.t A B C$⁠，$B E tack.t A C$ 于 $E$ 点，$C F tack.t A B$ 于 $F$ 点，求证：$triangle.stroked.t A E F tilde.rev triangle.stroked.t A B C$.

+ 已知直线 $B' C'$ 平行于一圆内接四边形 $A B C D$ 的一边 $overline(B C)$, 且分别与 $overline(A B)\,overline(D C)$ 或它们的延长线相交于 $B'$⁠、$C'$ 两点，求证：$A$⁠、$D$⁠、$B'$⁠、$C'$ 四点共圆．

]
#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, [#fig("4-86");

#subcap[
第1题

]], [#fig("4-87");

#subcap[
第2题

]])));

#heading(level: 2, numbering: none, supplement: [toc-sub])[习题4.3]

+ 一条弦与圆的半径相等，求它所对的圆心角和圆周角的度数．

+ 求证：以等腰三角形的一腰为直径所作的圆平分底边．

+ 圆内接四边形 $A B C D$, 设 $wideparen(A B)\,wideparen(B C)\,wideparen(C D)\,wideparen(D A)$ 的中点分别是 $M$⁠、$N$⁠、$P$⁠、$Q$, 求证：$M P tack.t N Q$.

+ 两圆相交于 $A$⁠、$B$ 两点，过 $A$ 点任画一条割线分别与两圆相交于 $C$⁠、$D$. 求证：$angle C B D$ 的大小与割线的位置无关．

  #align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, [#fig("4-88");
  
  #subcap[
  第5题
  
  ]], [#fig("4-89");
  
  #subcap[
  第6题
  
  ]])));

+ 已知 $overline(A B)$ 是 $dot.o O$ 的直径，半径 $overline(O C) tack.t overline(A B)$, 过 $overline(O C)$ 的中点 $D$ 作弦 $overline(E F) pll overline(A B)$, 求证：$angle C B E = 2 angle A B E$.

+ 如图，$triangle.stroked.t A B C$ 内接于一圆，$angle A = 57 degree$, $angle B = 66 degree$, 过 $A$⁠、$B$⁠、$C$ 作圆外切三角形 $A' B' C'$, 求 $triangle.stroked.t A' B' C'$ 的三内角的大小.

+ 在直角 $triangle.stroked.t A B C$ 中，$angle C = 90 degree$, 以 $overline(B C)$ 为直径作 $dot.o O$ 交斜边于 $D$ 点，再取 $A C$ 的中点 $E$, 求证 $dot.o O$ 与 $D E$ 相切．

+ 如图，$overline(A B)$ 是 $dot.o O$ 的直径，$A D$ 是 $dot.o O$ 的切线，$F B$ 与 $D B$ 是 $dot.o O$ 的割线，求证 $overline(B E) dot.op overline(B F) = overline(B C) dot.op overline(B D)$（提示：先证 $D$⁠、$C$⁠、$E$⁠、$F$ 共圆）．

+ 已知等腰梯形 $A B C D$ 外切于 $dot.o O$, $overline(A D) pll overline(B C)$, $angle B = 30 degree$. 中线 $overline(E F) = 1$⁠cm, 求 $dot.o O$ 的半径（提示：外切梯形的高等于 $dot.o O$ 的直径）．

  #align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, [#fig("4-90");
  
  #subcap[
  第8题
  
  ]], [#fig("4-91");
  
  #subcap[
  第10题
  
  ]])));

+ 如图：四圆轮中，每相邻两个外切，求证

  + 顺次连结四圆心所成的四边形必有内切圆．

  + 四个切点共圆．

+ 两圆相交于 $P$⁠、$Q$ 两点，一条外公切线分别切它们于 $A$⁠、$B$ 两点，求证：$angle A P B + angle A Q B = 180 degree$.

+ 如果 $triangle.stroked.t A B C$ 内接于 $dot.o O$, $H$ 是它的垂心，求证：$H$ 点分别以 $B C$⁠、$A C$⁠、$A B$ 为轴的对称点是相应边上高的延长线与 $dot.o O$ 的交点．

+ 已知 $H$ 是 $triangle.stroked.t A B C$ 的垂心，$overline(B C)$ 边上高的延长线与 $triangle.stroked.t A B C$ 的外接圆相交于 $H_1$ 点，求证：$B C$ 平分 $angle H B H_1$ 和 $angle H C H_1$.

+ 如果 $triangle.stroked.t A B C$, $angle A$ 的平分线与 $overline(B C)$ 相交于 $D$ 点，与 $triangle.stroked.t A B C$ 的外接圆相交于 $E$ 点，那么 $overline(A B) dot.op overline(A C) = overline(A D) dot.op overline(A E)$

+ 已知：四边形 $A B C D$ 是圆内接四边形，$E$ 是它的对角线 $overline(B D)$ 上一点，并且 $angle B A E = angle C A D$, 求证

  + $overline(A B) dot.op overline(C D) = overline(A C) dot.op overline(B E)$,

  + $overline(A D) dot.op overline(B C) = overline(A C) dot.op overline(E D)$,

  + $overline(A B) dot.op overline(C D) + overline(A D) dot.op overline(B C) = overline(A C) dot.op overline(B D)$

  #noindent;把 (c) 中结论用普通语言叙述为一条定理．

+ 已知圆内接四边形 $A B C D$, $P$⁠、$Q$ 分别是 $wideparen(A B)$⁠、$wideparen(C D)$ 的中点，求证：$overline(P Q)$ 与 $overline(A B)$⁠、$overline(C D)$ 交成等角．

== 圆与正多边形
=== 圆的内接正多边形与外切正多边形
各条边相等，各个角也相等的凸多边形，叫做正多边形．正多边形按它的边数（或角数）分为正三角形（即等边三角形），正四边形（即正方形），正五边形、正六边形……

#blk[定理][
如果把圆分成 $n$ 等分，那么，顺次连结各分点所得的多边形是圆的内接正 $n$ 边形；经过各分点作圆的切线，所组成的多边形是圆的外切正 $n$ 边形．

]
已知：$A_1\,A_2\,A_3\,dots.h\,A_n$ 为 $n$ 等分某圆周的分点，过 $A_1\,A_2\,A_3\,dots.h\,A_n$, 作圆的切线交成 $n$ 边形 $A'_1 A'_2 A'_3 dots.h.c A'_n$ (图4.73).

求证：$n$ 边形 $A_1 A_2 A_3 dots.h.c A_n$ 和 $A'_1 A'_2 A'_3 dots.h.c A'_n$ 都是正多边形．

#figure([#fig("4-92");

  ],
  caption: [
  ]
)

#proof[
由于 $A_1\,A_2\,A_3\,dots.h\,A_n$ 是圆的 $n$ 个等分点，

$therefore quad wideparen(A_1 A_2) = wideparen(A_2 A_3) = dots.h.c = wideparen(A_n A_1)\,quad overline(A_1 A_2) = overline(A_2 A_3) = dots.h.c = overline(A_n A_1)$

又 $because quad angle A_1\,angle A_2\,angle A_3\,dots.h\,angle A_n$ 的度数都等于 $wideparen(A_1 A_2)$ 的度数的 $\(n - 2\)$ 倍的一半．

$therefore quad angle A_1 = angle A_2 = angle A_3 = dots.h.c = angle A_n$, $A_1 A_2 A_3 dots.h.c A_n$ 是正 $n$ 边形．

由于在 $triangle.stroked.t A'_1 A_1 A_2\,triangle.stroked.t A'_2 A_2 A_3\,dots.h\,triangle.stroked.t A'_n A_n A_1$ 中，$overline(A_1 A_2) = overline(A_2 A_3) = dots.h.c = overline(A_n A_1)$⁠，且

#numbered-align(($angle A'_1 A_1 A_2$, $eqph = angle A'_1 A_2 A_1$, false), ($$, $eqph = angle A'_2 A_2 A_3 = angle A'_2 A_3 A_2$, [(弦切角定理及其推论)]), ($$, $eqph = dots.h.c = angle A'_n A_n A_1 = angle A'_n A_1 A_n$, false));

$therefore quad triangle.stroked.t A'_1 A_1 A_2 tilde.equiv triangle.stroked.t A'_2 A_2 A_3 tilde.equiv dots.h.c tilde.equiv triangle.stroked.t A'_n A_n A_1$

因此：$ angle A'_1 & = angle A'_2 = angle A'_3 = dots.h.c = angle A'_n\
overline(A'_1 A'_2) & = overline(A'_2 A'_3) = dots.h.c = overline(A'_n A'_1) $

$therefore quad A'_1 A'_2 A'_3 dots.h.c A'_n$ 是正多边形．

]
根据上述定理，我们只要把圆 $n$ 等分就可作出圆的内接正 $n$ 边形了，但能否只用直尺圆规将一个圆 $n$ 等分呢？这个问题并不简单，事实上有的是不可能的．下面我们举例给出圆内接正六边形、正三角形、正方形的作法．

#example[
求作圆内接正六边形．

已知：$dot.o O$\(图4.74).

求作：$dot.o O$ 的内接正六边形．

作法

+ 作直径 $overline(A D)$.

+ 分别以 $A$⁠、$D$ 为圆心，以 $dot.o O$ 的半径为半径画弧，分别交 $dot.o O$ 于 $B$⁠、$F$⁠、$C$⁠、$E$ 四点

+ 作 $overline(A B)$⁠、$overline(B C)$⁠、$overline(C D)$⁠、$overline(D E)$⁠、$overline(E F)$⁠、$overline(F A)$, 则 $A B C D E F$ 就是 $dot.o O$ 的内接正六边形．

]
#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("4-93");], caption: []), figure([#fig("4-94");], caption: []))));

#proof[
由作法可知，$overline(A B) = overline(O A) = overline(O B)$,

$therefore quad triangle.stroked.t O A B$ 是等边三角形．$angle A O B = 60 degree$.

同理：$angle C O D = 60 degree$,

$therefore quad angle B O C = 180 degree - angle A O B - angle C O D = 60 degree$.

同理：$angle E O F = angle D O E = angle A O F = 60 degree$,

$therefore quad wideparen(A B) = wideparen(B C) = wideparen(C D) = wideparen(D E) = wideparen(E F) = wideparen(F A)$, $A B C D E F$ 是 $dot.o O$ 的内接正六边形（本节定理）．

]
#example[
求作圆内接正三角形．

已知：$dot.o O$ (图4.75).

求作：$dot.o O$ 的内接正三角形．

作法

+ 作直径 $overline(A D)$.

+ 以 $D$ 为圆心，以 $dot.o O$ 的半径为半径作弧交 $dot.o O$ 于 $B$⁠、$C$ 两点．

+ 作 $overline(A B)$⁠、$overline(B C)$⁠、$overline(C A)$, 则 $triangle.stroked.t A B C$ 就是 $dot.o O$ 的正三角形．

]
#proof[
由作法可知，$overline(B D) = overline(O B) = overline(O D)$,

$therefore quad triangle.stroked.t O B D$ 是等边三角形．$angle B O D = 60 degree$.

同理：$angle C O D = 60 degree$.

$therefore quad angle A O B = angle A O C = 180 degree - 60 degree = 120 degree$.

$therefore quad angle A O B = angle B O C = angle A O C\,quad wideparen(A B) = wideparen(B C) = wideparen(A C)$

$therefore quad triangle.stroked.t A B C$ 为 $dot.o O$ 的内接正三角形（本节定理）．

]
#example[
求作 $dot.o O$ 的内接正方形．

已知：$dot.o O$\(图4.76).

求作：$dot.o O$ 的内接正方形．

作法

+ 作直径 $overline(A C)$⁠、$overline(B D)$, 使 $overline(A C) tack.t overline(B D)$.

+ 作 $overline(A B)$⁠、$overline(B C)$⁠、$overline(C D)$⁠、$overline(D A)$, 则 $A B C D$ 就是 $dot.o O$ 的内接正方形．

]
#proof[
$because quad A C$ 和 $B D$ 垂直于 $O$ 点，

$therefore quad angle A O B = angle B O C = angle C O D = angle D O A\,quad wideparen(A B) = wideparen(B C) = wideparen(C D) = wideparen(D A)$

$therefore quad A B C D$ 为 $dot.o O$ 的内接正方形（本节定理）．

]
#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("4-95");], caption: []), figure([#fig("4-96");], caption: []))));

作出了圆的内接正方形 $A C E G$ 以后（图4.77），再分别作直径垂直于每一边，就可以作出圆内接正八边形，一般只要我们作出了圆内接正 $n$ 边形，再分别作直径垂直各边，就很容易作出圆内接正 $2 n$ 边形．

如果一个正 $n$ 边形不容易或者不可能用圆规和直尺作出．我们可用量角器近似地作出一个圆心角等于 $(360 degree) / n$⁠，这个圆心角所对的弧就约是整个圆周的 $1 / n$, 所对的弦就约是圆内接正 $n$ 边形的一边，以这条弦为半径，从圆上一点起在圆上依次截取，就可以近似地把圆分成 $n$ 个等分，依次连结各分点就可以得到所求的圆内接正 $n$ 边形．实用上，用这种方法作图也就可以了．

#exercise[
以下作图只要求作出图形．

+ 作半径是1.5cm的圆内接正六边形．

+ 作半径是2cm的圆内接正三边形．

+ 作半径是2.5cm的圆内接正方形．

+ 作半径是3cm的圆内接正十二边形．

+ 用量角器近似地作半径是2cm的圆内接正五边形．

]
=== 正多边形的外接圆和内切圆
我们已经知道，一个多边形并不一定有外接圆和内切圆．现在要问，是否每一个正多边形都有外接圆和内切圆呢？

#blk[定理][
任何正多边形都有一个外接圆和一个内切圆，这两个圆是同心圆．

]
已知：$A_1 A_2 A_3 dots.h.c A_n$ 是正多边形（图4.78）.

求证：它有外接圆和内切圆，且二圆同心．

#figure([#fig("4-97");

  ],
  caption: [
  ]
)

#proof[
首先，过 $A_n\,A_1\,A_2$ 三点作一圆 $dot.o O$, 再分别作 $overline(O A_n)\,overline(O A_1)\,overline(O A_2)\,overline(O A_3)\,dots.h$. 显然，$triangle.stroked.t O A_n A_1$ 和 $triangle.stroked.t O A_1 A_2$ 都是全等的等腰三角形（SSS）.

$therefore quad A_1 O$ 是 $angle A_n A_1 A_2$ 的平分线．

又 $because quad angle A_n A_1 A_2 = angle A_1 A_2 A_3$,

$therefore quad angle O A_2 A_1 = angle O A_1 A_2 = 1 / 2 angle A_n A_1 A_2 = 1 / 2 angle A_1 A_2 A_3$,

因此：$A_2 O$ 是 $angle A_1 A_2 A_3$ 的平分线，$angle O A_2 A_1 = angle O A_2 A_3$,

又 $because quad overline(A_1 A_2) = overline(A_2 A_3)\,quad overline(O A_2) = overline(O A_2)$,

$therefore quad triangle.stroked.t O A_1 A_2 tilde.equiv triangle.stroked.t O A_2 A_3$ (SAS), $overline(O A_2) = overline(O A_3)$

这就是说 $A_3$ 在所作的 $dot.o O$ 上．循此下去，同样可证明正多边形 $A_1 A_2 A_3 dots.h.c A_n$ 的其他各顶点也在 $dot.o O$ 上．

其次，有了外接圆 $dot.o O$⁠，圆心 $O$ 到各边的距离便彼此相等，这就是说，以 $O$ 为圆心，$O$ 到一边的距离为半径必可作一圆和各边都相切，此圆即是正多边形 $A_1 A_2 A_3 dots.h.c A_n$ 的内切圆（图4.78）.

]
正多边形的外接圆和内切圆的公共圆心，叫做#strong[正多边形的中心]；外接圆的半径，叫做#strong[正多边形的半径]；内切圆的半径，叫做正多边形的#strong[边心距]；正多边形每一边所对的外接圆的圆心角，叫做#strong[正多边形的中心角]．

#figure([#fig("4-98");

  ],
  caption: [
  ]
)

如图4.79, $A_1 A_2 A_3 dots.h.c A_n$ 是正 $n$ 边形，$dot.o\(O\,r\)$ 是它的外接圆，$dot.o\(O\,d_n\)$ 是它的内切圆，$O$ 为它的中心，$r$ 是它的半径，$d_n$ 是它的边心距．设正 $n$ 边形的边长为 $a_n$, 半径长为 $r$, 边心距为 $d_n$, 这三者有下面的勾股关系．$ r^2 = d_n^2 + (a_n / 2)^2 $

由于边数相同的正多边形的对应角都相等；正多边形的各边相等，所以边数相同的正多边形的对应边成比例．因此，我们可得下面的定理．

#blk[定理][
边数相同的正多边形都是相似形．

]
#example[
正多边形的面积，等于它的周长和边心距乘积的一半．

已知：正多边形的面积 $S$, 周长是 $p$, 边心距是 $d$.

求证：$S = 1 / 2 p d$

]
#proof[
如图4.80, 设 $overline(A B)$ 是正 $n$ 边形的一边，$O$ 是这个正多边形外接圆圆心，那么 $ triangle.stroked.t O A B upright("的面积") = 1 / 2 d times overline(A B) $

$therefore quad S = triangle.stroked.t O A B upright("的面积") times n = 1 / 2 d times overline(A B) times n$

$because quad overline(A B) times n = p$

$therefore quad S = 1 / 2 p d$.

]
#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("4-99");], caption: []), figure([#fig("4-100");], caption: []))));

#example[
已知正三角形的边长为 $a$. 求它的外接圆半径 $r$ 和它的内切圆半径 $d$.

]
#solution[
如图4.81, 设 $O$ 是正 $triangle.stroked.t A B C$ 的中心，$O M tack.t overline(A B)$ 于 $M$, 则 $overline(O A) = r$, $overline(O M) = d$, $angle O A M = 1 / 2 angle C A B = 30 degree$

在直角三角形 $O A M$ 中，$r = 2 d$, $overline(A M) = a / 2$

$therefore quad\(2 d\)^2 = d^2 + (a / 2)^2$

解之得：$d = sqrt(3) / 6 a$.

于是，$r = 2 d = sqrt(3) / 3 a$

答：内切圆半径是 $sqrt(3) / 6 a$⁠，外接圆半径是 $sqrt(3) / 3 a$.

]
#exercise[
+ #block(sticky: true)[求下列正多边形的中心角的度数：]

  #cols(3)[
  + 正三角形；

  + 正方形；

  + 正五边形．

  + 正六边形；

  + 正十边形；

  + 正 $n$ 边形．

  ]

+ 已知 $dot.o\(O\,r\)$, 求它的内接正六边形，内接正方形，内接正三角形的边长．

+ 求证正五边形的所有对角线都相等．

]
=== 圆的周长和面积
由于圆被 $n$ 等分后，顺次连结各分点，便得到一个 $n$ 边形，如果再把这 $n$ 段弧的中点取出来，圆上便出现了 $2 n$ 个分点，而顺次连结这个 $2 n$ 分点所得到的正 $2 n$ 边形，便包围着原来的正 $n$ 边形（图4.82），那么，这个正 $2 n$ 边形的周长和面积都比原来的正 $n$ 边形的周长和面积大，如此下去，我们还可继续得出圆内接正 $4 n$ 边形、正 $8 n$ 边形……我们可以看到这样的圆的内接正 $n$⁠、$2 n$⁠、$4 n$⁠、$8 n$⁠、……边形的边数越增，它们的周长和面积就越逼近圆的周长和面积．这样一来，当已知圆的半径时，我们便可计算它的内接正 $n$⁠、$2 n$⁠、$4 n$⁠、$8 n$⁠、……边形的周长和面积，作为精确度不同的圆周长和圆面积的近似值．

现在我们来举例说明，半径是一个单位长的圆内接正4、8、16、32、64边形的周长的计算方法．

#figure([#fig("4-101");

  ],
  caption: [
  ]
)

如图4.82, 设 $overline(A_1 A_2)$ 是半径为1个单位长的圆内接正 $n$ 边形的一边，其长度记为 $a_n$, 又设 $B$ 是 $wideparen(A_1 A_2)$ 的中点，那么，$overline(A_1 B)$ 就是圆内接正 $2 n$ 边形的一边，其边长记为 $a_(2 n)$, 于是，$ a_(2 n) = overline(A_1 B) & = sqrt(overline(A_1 D)^2 + overline(D B)^2)\
 & = sqrt(overline(A_1 D)^2 + (overline(O B) - overline(O D))^2)\
 & = sqrt(overline(A_1 D)^2 + (overline(O B) - sqrt(overline(O A_1)^2 - overline(A_1 D)^2))^2)\
 & = sqrt(overline(A_1 D)^2 + (1 - sqrt(1 - overline(A_1 D)^2))^2)\
 & = sqrt(2 - 2 sqrt(1 - overline(A_1 D)^2)) = sqrt(2 - 2 sqrt(1 - (a_n / 2)^2))\
 & = sqrt(2) sqrt(1 - sqrt(1 - (a_n / 2)^2)) $ #noindent;$a_4 = sqrt(2)$, 代入上面公式可得：$ a_8 = 0.7653668\,quad a_16 = 0.3901804\,quad a_32 = 0.1960339\,quad a_64 = 0.098135 $

设 $ell_n$ 是半径为1个单位长的圆内接正 $n$ 边形的周长，则可算出：$ ell_4 = 5.6568542\,quad ell_8 = 6.1229344\,quad ell_16 = 6.2428864\,\
ell_32 = 6.2730848\,#h(2em) ell_64 = 6.2806426 . $

现在我们再来计算 $ell_n$ 与直径长的比值．$ ell_4 / 2 = 2.8284271\,#h(2em) ell_8 / 2 = 3.0614672\,\
ell_16 / 2 = 3.121443\,#h(2em) ell_32 / 2 = 3.1365424\,\
ell_64 / 2 = 3.1403213 . $

我们看到这些比值，随着 $n$ 的增加，就会愈来愈逼近圆周长与直径的比值．对任何圆来说，圆周长与直径长的比是一个常数，这个常数就是圆周率 $pi$. 我们用上述方法就能任意精确地算出 $pi$ 的近似值．圆周率 $pi$ 的精确值是一个永远写不完的无限不循环小数．$ pi = 3.14159265358979323846 dots.h.c $ #noindent;应用时常根据实际需要取 $pi$ 的近似值．

我国古代的数学家对于圆周率的研究有很大的贡献．三国魏时刘徽就用我们上面的计算方法，从圆内接正六边形开始一直算到圆内接正192边形，得出 $pi = 3.14$. 刘徽是世界上计算 $pi$ 的值精确到0.01的第一人．继他以后，南北朝时的祖冲之算出 $pi$ 值，在3.1415926和3.1415927之间并且用分数 $22\/7$ 和 $355\/113$ 来表示 $pi$ 的近似值．这两个分数分别叫做约率和密率．祖冲之的密率直到一千多年后，才为欧洲人鄂图和安托尼兹所知．

如果圆周长用 $C$ 表示，半径用 $r$ 表示，那么，从 $frac(C, 2 r) = pi$ , 就可推出下面的#strong[圆周长公式] $ C = 2 pi r $

在半径为 $r$ 的圆上（图4.83）, $ 1 degree upright("弧的长") = upright("周长") / 360 = frac(2 pi r, 360) = frac(pi r, 180) $ #noindent;由此，我们可得到计算 $n degree$ 弧的弧长公式 $ ell = frac(n pi r, 180) $ #noindent;这里 $ell$ 表示弧长，$n$ 是弧所含的度数．

我们已经知道#strong[圆的面积公式] $ S = pi r^2 $ #noindent;这里 $S$ 表示圆的面积，$r$ 仍表示圆的半径．

这个公式的来源，我们可作如下说明．

如图4.83, $overline(A_1 A_2)$ 是圆内接正 $n$ 边形的一边，如果它的周长是 $ell_n$, 边心距是 $d_n$, 那么，这个正多边形的面积 $ S_n = 1 / 2 ell_n d_n $

当这个圆的内接正多边形的边数 $n$ 无限增加时，它的面积 $S_n$ 逼近于圆的面积 $S$\; 它的周长 $ell_n$ 逼近于圆周长 $C$, 它的边心距 $d_n$ 逼近于圆的半径 $r$. 因此，有 $ S = 1 / 2 C r = 1 / 2 times 2 pi r times r = pi r^2 $

一条弧和经过这条弧的端点的两条半径组成的图形，叫做#strong[扇形]（图4.84的阴影部分）．

#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("4-102");], caption: []), figure([#fig("4-103");], caption: []))));

由圆的面积公式，我们可得到扇形面积公式，因为，$ upright("含有") 1 degree upright("弧的扇形面积") = upright("圆面积") / 360 $ #noindent;所以圆心角是 $n degree$ 的扇形面积计算公式是：$ S = frac(n pi r^2, 360) $ #noindent;这里 $S$ 是扇形面积，$n$ 是扇形的圆心角的度数，$r$ 是圆的半径．

由于 $ frac(n pi r^2, 360) = 1 / 2 (frac(n pi r, 180)) dot.op r $ #noindent;而 $frac(n pi r, 180)$ 是扇形的弧长 $ell$⁠，所以，当知道扇形弧长 $ell$ 时，扇形面积公式又可写成：$ S = 1 / 2 ell r $

这就是说，#strong[扇形的面积等于它的弧长和半径乘积的一半]．

#example[
第一次测定地球半径的是公元前三世纪的希腊天文学家爱拉托斯芬．他在夏至这一天，当太阳在塞伊城的天顶（$S$⁠）时（图4.85），而在亚历山大城（$A$⁠），测得太阳与天顶的方向差是 $7.2 degree$. 他由塞伊城和亚历山大城的实际距离 $wideparen(A S)$ 算出了地球的半径，问爱拉托斯芬怎样算出地球半径 $r$ 的？

]
#figure([#fig("4-104");

  ],
  caption: [
  ]
)

#solution[
塞伊城和亚历山大城是在同一条子午线 $wideparen(A S)$ 上，若地球的截面是圆形地心是 $O$, 太阳的光线是平行的，则 $angle A O S = 7.2 degree$.

$because quad wideparen(A S) upright("的弧长") = frac(7.2 times pi times r, 180)$

$therefore quad r = frac(180, 7.2 times pi) times wideparen(A S)$

把 $wideparen(A S)$ 的长度代入上式，就可算出地球的半径．

]
#example[
已知扇形的半径 $r approx 4.8$⁠cm, 所含的圆心角是 $42 degree$, 求它的周长和面积（$pi approx 3.14$⁠）.

]
#solution[
设扇形的弧长为 $ell$, 则：$ ell = frac(42 times 3.14 times 4.8, 180) approx 3.5\(upright(c m)\) $ #noindent;$therefore quad$ 扇形的周长 $= 2 r + ell = 2 times 4.8 + 3.5 = 13.1$\(cm).

扇形的面积 $= 1 / 2 ell r = 1 / 2 times 3.5 times 4.8 approx 8.4\(upright(c m^2)\)$

答：扇形周长约是13.1cm, 面积约为8.4$upright(c m^2)$.

]
#exercise[
+ 已知圆的周长 $C approx 48.5$⁠cm, 求圆的半径 $r$.

+ 一列火车，火车头上的主动轮的直径约是1.2米，如果主动轮每秒钟转250次，那么，火车的速度是每小时约多少公里？

+ 圆的半径约是8.2cm, 圆心角是 $32 degree 30'$, 求圆心角所对的弧长．

+ 已知扇形的半径是4.2cm, 所含的弧是 $35 degree$, 求它的周长和面积．

]
#heading(level: 2, numbering: none, supplement: [toc-sub])[习题4.4]

+ 求作已知圆的外切正六边形．

+ 已知一边，求作正八边形．

+ 我国民间相传有正五边形的近似画法：“九五顶五九，八、五两边分”它的意义如图所示

  + 按照图中注明的尺寸，计算这五边形各边的长．

  + 用这种方法作边长是30mm的正五边形．

  #fig-center[
  #fig("4-105");

  #subcap[
  第3题

  ]
  ]

+ 用全等的正多边形的砖铺地面，要砖与砖之间不留空隙，有哪几种正多边形的砖合用？

+ 已知圆的半径为 $r$. 求外切正三角形、外切正方形、外切正六边形的周长和面积．

+ 求证：正三角形的边心距、半径和高的比是 $1 : 2 : 3$.

+ 已知圆的半径是 $r$, 求证圆的内接正八边形的周长是 $8 sqrt(2 - sqrt(2)) r$, 面积是 $2 sqrt(2) r^2$.

+ 已知正三角形外接圆面积是100平方厘米，求它的内切圆面积．

+ 有一圆管的外直径是150mm, 内直径是100mm, 求这圆管的横断面的面积和它的厚度．

+ 已知一圆的半径是200mm, $wideparen(A B)$ 所对的圆心角是 $45 degree$, 求 $wideparen(A B)$ 长和扇形 $O A B$ 的面积．

+ 如图：$triangle.stroked.t A B C$ 中，$angle C = 90 degree$, $wideparen(A C B)$ 是以 $overline(A B)$ 为直径的半圆，$wideparen(A D C)$ 是以 $overline(A C)$ 为直径的半圆，$wideparen(C E B)$ 是以 $overline(C B)$ 为直径的半圆．

  求证：I的面积 $+$⁠II的面积 $=$⁠III的面积．

  #align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, [#fig("4-106");
  
  #subcap[
  第11题
  
  ]], [#fig("4-107");
  
  #subcap[
  第12题
  
  ]])));

+ 为了把半径是3cm和1cm的两根圆柱紧紧地捆扎在一起，绕一圈需要多少铅丝？

#heading(level: 2, numbering: none, outlined: true)[复习题四]

+ 已知两定点 $A$⁠、$B$, 分别以 $A$⁠、$B$ 为圆心，以同一的半径 $r thick (r gt.eq 1 / 2 overline(A B))$ 作圆，求证这些等圆的交点都在 $overline(A B)$ 的垂直平分线上．

+ 两圆的半径都是4cm, 并且一圆过另一圆的圆心，求这两圆的公共弦长．

+ 已知 $overline(A B)$ 是 $dot.o O$ 的直径，以 $overline(O B)$ 为直径作 $dot.o O'$, 过 $B$ 点作直线与 $dot.o O$ 相交于 $M$ 点，与 $dot.o O'$ 相交于 $N$ 点．求证：$overline(B N) = overline(M N)$.

+ 已知 $overline(C D)$ 是 $dot.o O$ 的直径，$A$ 为 $dot.o O$ 外一点，$A T$ 切圆于 $T$ 点，如果切点 $T$ 与 $C$ 的连线平行于 $A O$, 求证 $A D$ 与 $dot.o O$ 相切．

+ 以 $O$ 为圆心作两个同心圆，已知 $overline(A B)$ 为小圆的直径，过 $A$⁠、$B$ 两点分别作小圆的切线交大圆于 $C$⁠、$D$ 两点（使 $C$⁠、$D$ 分别在 $overline(A B)$ 的两侧），证明 $C$⁠、$O$⁠、$D$ 三点共线．

+ 若一圆的两条切线交成 $60 degree$ 角，圆的半径为 $r$, 求交点到圆心的距离．若交角为 $120 degree$, 交点到圆心的距离又是多少？

+ 有一桥拱是圆弧 $wideparen(A C B)$, 桥的跨度 $overline(A B) = 37.4$ 米，拱高 $overline(C D) = 7.2$ 米，求拱圈的半径．

  #align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, [#fig("4-108");
  
  #subcap[
  第7题
  
  ]], [#fig("4-109");
  
  #subcap[
  第8题
  
  ]])));

+ 如图，一工件的断面，$a$⁠、$b$⁠、$r$ 为已知，求 $x$.

+ 已知 $overline(A B)$ 为一半圆的直径，直线 $ell$ 与半圆相切于 $C$ 点，$overline(C D) tack.t overline(A B)$ 于 $D$ 点，$overline(A M) tack.t ell$ 于 $M$ 点，$overline(B N) tack.t ell$ 于 $N$ 点．

  求证：$overline(M C) = overline(N C)$⁠；$overline(C D)^2 = overline(A M) dot.op overline(B N)$.

+ 已知 $dot.o O_1$ 与 $dot.o O_2$ 外切于 $A$ 点，一直线与 $dot.o O_1$ 和 $dot.o O_2$ 分别相切于 $T_1$⁠、$T_2$ 两点，并与连心线 $O_1 O_2$ 相交于 $S$ 点，

  求证：$overline(S A)^2 = overline(S T_1) dot.op overline(S T_2)$.

+ 已知 $overline(M N)$ 为一圆的直径，过圆外一点 $D$ 作 $overline(D A) tack.t overline(M N)$ 于 $A$ 点交圆于 $C$ 点，$overline(D N)$ 交圆于 $P$, $overline(M P)$ 交 $overline(A D)$ 于 $B$, 求证：$overline(A C)^2 = overline(A B) dot.op overline(A D)$（提示：先证 $overline(A B) dot.op overline(A D) = overline(A M) dot.op overline(A N)$⁠）．

+ 过两相交圆的公弦上的一点 $P$, 作一条直线交一圆于 $A$⁠、$B$ 两点与另一圆相交于 $C$⁠、$D$ 两点，求证：$overline(A C) : overline(C P) = overline(B D) : overline(B P)$.

+ 设 $overline(A B)$ 是一圆的直径，由 $A$⁠、$B$ 两点作弦 $overline(A C)$ 及 $overline(B D)$ 相交于 $E$ 点，求证：$overline(A E) dot.op overline(A C) + overline(B E) dot.op overline(B D) = overline(A B)^2$.

  （提示，过 $E$ 作 $E P tack.t A B$ 于 $P$, 寻找共圆点，利用圆幂定理）

+ 在 $triangle.stroked.t A B C$ 中，$angle A$ 的外角平分线与此三角形的外接圆相交于 $D$, 求证 $overline(B D) = overline(C D)$.

+ 假设两圆互相外切，求证以两圆心之间线段作直径的圆必与前两圆的外公切线相切．

+ 已知直角 $triangle.stroked.t A B C$, $angle C = 90 degree$, 过 $overline(A C)$ 边上一点 $D$, 作斜边 $overline(A B)$ 的垂线交斜边于 $E$ 点，交它的外接圆于 $G$ 点，交 $overline(B C)$ 的延长线于 $F$ 点，求证：$overline(E G)^2 = overline(E A) dot.op overline(E B)$⁠；$overline(E G)^2 = overline(E D) dot.op overline(E F)$.

+ 求证正三角形内的任一点到三边的距离和等于一边上的高．

+ 求证：圆内接正 $n$ 边形内任一点到各边的距离和等于 $n$ 倍边心距．

+ 已知等边 $triangle.stroked.t A B C$ 内接于 $dot.o O$, $P$ 为 $wideparen(B C)$ 上任一点. 求证：$overline(P A) = overline(P B) + overline(P C)$.

+ 从圆外一点 $P$, 作这个圆的切线 $P A$, $A$ 是切点，再从 $P$ 点引圆的割线与圆相交于 $B$⁠、$C$, 设 $angle P$ 的平分线与 $overline(A B)$⁠、$overline(A C)$ 的交点分别是 $D$⁠、$E$.

  求证：$overline(D B) / overline(A B) + overline(E C) / overline(A C) = 1$

+ 已知 $dot.o O$ 与 $dot.o O'$ 相离，连心线与 $dot.o O$ 和 $dot.o O'$ 的交点顺次是 $A$⁠、$B$⁠、$C$⁠、$D$, 直线 $P P'$ 分别与 $dot.o O$ 和 $dot.o O'$ 相切于 $P$⁠、$P'$ 点，求证：$overline(P P')^2 = overline(A C) dot.op overline(B D)$.
