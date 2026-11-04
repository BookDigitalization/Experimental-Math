// 由 typst/tools/tex2typ.py 从 math2/3.tex 转换而来，已人工校对的部分以本文件为准。
#import "../common/template.typ": *
#import "figs.typ": fig
#import "defs.typ": *

= 直线形
在第一章里，我们从日常生活所熟悉的位置、通路、方向、叠合出发，讨论了空间的几个重要的基本概念：点、直线、平行、全等、相似，并通过观察、实验，分析归纳出了空间的一些性质．在第二章中，我们把其中的某些性质作为基本性质和定理．在本章中，我们将以这些基本性质和定理为基础，运用第二章所介绍的演绎法去推演空间的其他性质．演绎法不但是研究几何学的基本有效方法，在其他任何科学的研究中也都是十分重要的方法．概括地说，对于科学研究，实验归纳和论证推演是互相配合使用的两种基本科学方法，它们是探索科学规律的两条腿．从这一章起，我们对空间性质的探讨，主要用演绎法来进行．

== 三角形
=== 全等三角形
#blk[定义][
平面上顺次首尾端点相接且不在同一条直线上的线段组成的封闭图形叫做#strong[多边形]．这些线段叫做#strong[多边形的边]，它们的端点叫做#strong[多边形的顶点]，每相邻两边的夹角叫做多边形的#strong[内角]．

]
三角形是多边形中最简单的图形．有四条边的多边形叫做四边形，有五条边的多边形叫五边形……等等．表示一个多边形可用顶点的名称，沿周界顺次列出，如图3.1中的 $triangle.stroked.t A B C$，四边形 $A B C D$……等等．

如果多边形都在每边所在直线的同旁，我们称这种多边形为#strong[凸多边形]（图3.1中的三个图形都是凸多边形，图3.2中的图形则不是）．以后我们说多边形时，都指的是凸多边形．

#figure([#fig("3-01");

  ],
  caption: [
  ]
)

#figure([#fig("3-02");

  ],
  caption: [
  ]
)

#blk[定义][
两个能够完全叠合的三角形叫做#strong[全等三角形]．两个全等三角形完全叠合时，互相叠合的顶点叫做#strong[对应点]，互相叠合的边叫做#strong[对应边]，互相叠合的角叫做#strong[对应角]．因此，#strong[全等三角形的对应边相等，对应角相等]．

]
怎样判定两个三角形全等呢？

+ 有两边和它们的夹角对应相等的两个三角形全等．（SAS）

+ 有两角和它们的夹边对应相等的两个三角形全等．（ASA）

+ 有三边对应相等的两个三角形全等．（SSS）

利用三角形的全等，是判断两条线段或两个角相等的一种基本方法．

#example[
在图3.3中，已知 $overline(A B) = overline(A C)$, $angle B = angle C$

求证：$overline(B D) = overline(C E)$.

]
#analyze[
要证 $overline(B D) = overline(C E)$,从图上看 $overline(B D)$, $overline(C E)$ 分别是 $triangle.stroked.t A B D$ 和 $triangle.stroked.t A C E$ 的边，因此只要证明 $triangle.stroked.t A C E tilde.equiv triangle.stroked.t A B D$ 就行了，由已知条件 $overline(A C) = overline(A B)$, $angle B = angle C$ 而 $angle A$ 是公共角，所以 $triangle.stroked.t A B D$ 与 $triangle.stroked.t A C E$ 全等是很显然的．

]
#proof[
在 $triangle.stroked.t A B D$ 与 $triangle.stroked.t A C E$ 中，

$because quad overline(A B) = overline(A C)\,quad angle B = angle C$（已知）．

而 $angle A = angle A$（公共角），

$therefore quad triangle.stroked.t A B D tilde.equiv triangle.stroked.t A C E$ (ASA).

$therefore quad overline(B D) = overline(C E)$（全等三角形的对应边相等）．

]
#align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, figure([#fig("3-03");], caption: []), figure([#fig("3-04");], caption: [])));

#example[
已知：在四边形 $A B C D$ 中，$overline(A D) = overline(B C)$, $overline(A B) = overline(C D)$（图3.4）．

求证：$angle A = angle C$．

]
#analyze[
要证明 $angle A = angle C$,需要把四边形 $A B C D$ 分成两个三角形，为此，连结 $B$、$D$.这叫做添#strong[辅助线]．这样只需证 $triangle.stroked.t A B D tilde.equiv triangle.stroked.t C D B$ 就行了．

]
#proof[
连结 $B$、$D$,在 $triangle.stroked.t A B D$ 与 $triangle.stroked.t C D B$ 中，

$because quad overline(A D) = overline(B C)\,quad overline(A B) = overline(C D)$（已知）

又 $because quad overline(B D) = overline(B D)$（公共边）

$therefore quad triangle.stroked.t A B D tilde.equiv triangle.stroked.t C D B$（SSS）

$therefore quad angle A = angle C$（全等三角形的对应角相等）．

]
#example[
在图3.5中，已知：$overline(A B) = overline(C D)$, $angle B = angle C D F$, $overline(B D) = overline(E F)$.

求证：$overline(A E) = overline(C F)$.

]
#analyze[
要证 $overline(A E) = overline(C F)$,只需证 $triangle.stroked.t A B E tilde.equiv triangle.stroked.t C D F$.由已知，$overline(A B) = overline(C D)$, $angle B = angle C D F$, $overline(B D) = overline(E F)$,虽然不能马上说 $triangle.stroked.t A B E$ 和 $triangle.stroked.t C D F$ 全等，但只要注意到 $overline(B D) + overline(D E) = overline(D E) + overline(E F)$,即 $overline(E B) = overline(D F)$ 就行了．

]
#proof[
在图3.5中，$because quad overline(B D) = overline(E F)$（已知），

$therefore quad overline(B D) + overline(D E) = overline(D E) + overline(E F)$（等量加等量和相等）．即：$ overline(B E) = overline(D F) $ #noindent;又 $because quad overline(A B) = overline(C D)\,thick angle B = angle C D F$（已知），

$therefore quad triangle.stroked.t A B E tilde.equiv triangle.stroked.t C D F$ (SAS).

$therefore quad overline(A E) = overline(C F)$（全等三角形的对应边相等）．

]
#align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, figure([#fig("3-05");], caption: []), figure([#fig("3-06");], caption: [])));

#example[
在图3.6中，已知：$overline(A B) = overline(B C)$, $overline(A D) = overline(C D)$, $E$ 点在 $B D$ 上．

求证：$overline(A E) = overline(C E)$.

]
#analyze[
要证 $overline(A E) = overline(C E)$,只需证明 $triangle.stroked.t A B E tilde.equiv triangle.stroked.t C B E$,或者证明 $triangle.stroked.t A D E tilde.equiv triangle.stroked.t C D E$,假定我们证明 $triangle.stroked.t A B E tilde.equiv triangle.stroked.t C B E$,已知 $overline(A B) = overline(B C)$, $overline(B E) = overline(B E)$,因此只需证明 $angle A B D = angle C B D$\;要证 $angle A B D = angle C B D$,只需证明 $triangle.stroked.t A B D tilde.equiv triangle.stroked.t C B D$.

]
#proof[
在 $triangle.stroked.t A B D$ 与 $triangle.stroked.t C B D$ 中，

$because quad overline(A B) = overline(C B)\,quad overline(A D) = overline(C D)$（已知）$overline(B D) = overline(B D)$（公共边）

$therefore quad triangle.stroked.t A B D tilde.equiv triangle.stroked.t C B D$ (SSS).

$therefore quad angle A B D = angle C B D$（全等三角形的对应角相等）

$because quad overline(A B) = overline(B C)$（已知）$overline(B E) = overline(B E)$（公共边）

$therefore quad triangle.stroked.t A B E tilde.equiv triangle.stroked.t C B E$ (SAS).

$therefore quad overline(A E) = overline(C E)$（全等三角形的对应边相等）．

]
利用三角形全等，来证明两条线段或两个角相等，关键在于找出能够全等的三角形，并且使要证明的线段和角恰好成为它们的对应边和对应角．为了找出全等的三角形，必要时需要添加辅助线．

#exercise[
+ 已知：在四边形 $A B C D$ 中，$A C$ 平分 $angle B A D$, $overline(A B) = overline(A D)$.

  求证：$angle A C B = angle A C D$.

+ 已知：如图，$overline(A C)$、$overline(B D)$ 交于 $O$ 点，且 $overline(A O) = overline(O C)$、$overline(B O) = overline(O D)$.

  求证：$overline(A B) = overline(C D)$.

+ 已知：如图，$angle 1 = angle 4$, $angle 2 = angle 3$.求证：$overline(A B) = overline(C D)$.

+ 已知：如图，$angle 1 = angle 2$, $angle 3 = angle 4$, $overline(A B) = overline(A D)$.

  求证：$overline(A E) = overline(A C)$, $angle E = angle C$.

+ 已知：如图，$angle 1 = angle 2$, $angle 3 = angle 4$,求证：$overline(A C) = overline(B D)$.

+ 已知：如图，在四边形 $A B C D$ 中，$overline(A B) = overline(B C)$, $overline(A D) = overline(C D)$.

  求证：$angle A = angle C$.

+ 已知：如图，$overline(A D) = overline(B E)$, $overline(A E) = overline(B D)$, AC、BC是直线．

  求证：$angle C D B = angle C E A$.

+ 已知：如图，$overline(A B) = overline(C D)$, E、F分别是 $overline(A B)$、$overline(C D)$ 的中点，并且 $overline(B F) = overline(C E)$.

  求证：$angle E B C = angle F C B$, $angle F B C = angle E C B$.

+ 已知：如图，在四边形 $A B C D$ 中，$overline(A B) = overline(C D)$, $overline(A D) = overline(B C)$, $overline(E F)$ 过 $overline(B D)$ 的中点 $O$.

  求证：$overline(O E) = overline(O F)$.

]
#align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, [#fig("3-07");

#subcap[
第1题

]], [#fig("3-08");

#subcap[
第2题

]]));

#align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, [#fig("3-09");

#subcap[
第3题

]], [#fig("3-10");

#subcap[
第4题

]]));

#align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, [#fig("3-11");

#subcap[
第5题

]], [#fig("3-12");

#subcap[
第6题

]]));

#align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, [#fig("3-13");

#subcap[
第7题

]], [#fig("3-14");

#subcap[
第8题

]]));

#align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, [#fig("3-15");

#subcap[
第9题

]], figure([#fig("3-16");], caption: [])));

=== 等腰三角形
#blk[定义][
有两条边相等的三角形叫做#strong[等腰三角形]．相等的两边叫做#strong[腰]，另外的一边叫做#strong[底]，腰和底的夹角叫做#strong[底角]，两腰的夹角叫#strong[顶角]，如图3.7所示．

]
#blk[定义][
三角形的一个角的平分线与对边相交，这个角的顶点和交点之间的线段叫做#strong[三角形的角的平分线]．在图3.8(1)中，$overline(A F)$ 平分 $angle A$,交对边于 $F$ 点，$overline(A F)$ 就是 $triangle.stroked.t A B C$ 的 $angle A$ 的平分线．

连结三角形一个顶点和它的对边中点的线段叫做#strong[三角形的中线]．在图3.8(2)中，$E$ 点是 $overline(B C)$ 的中点，$overline(A E)$ 就是 $triangle.stroked.t A B C$ 的 $overline(B C)$ 边上的中线．

从三角形一个顶点到它的对边所在直线作垂线，顶点和垂足之间的线段叫做#strong[三角形的高线]（简称#strong[高]）．在图3.8(3)中，$overline(A D) tack.t$ 直线 $B C$, $D$ 是垂足，$overline(A D)$ 就是 $triangle.stroked.t A B C$ 的 $overline(B C)$ 边上的高线．

]
#figure([#fig("3-17");

  ],
  caption: [
  ]
)

三角形的高线、中线、角平分线，一般是指一条线段，但有时当我们不考虑其长度时，也把它们分别所在的直线叫做三角形的高线、中线、角的平分线．

#blk[等腰三角形性质定理][
等腰三角形底角相等．

]
已知：在 $triangle.stroked.t A B C$ 中；$overline(A B) = overline(A C)$.求证：$angle B = angle C$.

#figure([#fig("3-18");

  ],
  caption: [
  ]
)

#proof[
作 $angle B A C$ 的平分线 $overline(A D)$（图3.9），在 $triangle.stroked.t A B D$ 和 $triangle.stroked.t A C D$ 中

$because quad overline(A B) = overline(A C)$（已知），$overline(A D) = overline(A D)$（公共边），$angle B A D = angle C A D$（角平分线定义）

$therefore quad triangle.stroked.t A B D tilde.equiv triangle.stroked.t A C D$（SAS）

$therefore quad angle B = angle C$（全等三角形的对应角相等）．

]
由于 $overline(B D) = overline(D C)\,thick angle B D A = angle C D A = 90 degree$

因此 $A D$ 平分 $overline(B C)$,且 $A D tack.t B C$.

#blk[推论][
等腰三角形顶角的平分线垂直、平分底边．

]
也就是说，等腰三角形的顶角平分线也是底边上的高线和中线．（#strong[三线合一]）

#blk[等腰三角形的判定定理][
有两个角相等的三角形是等腰三角形．

]
已知：在 $triangle.stroked.t A B C$ 中，$angle B = angle C$（图3.10）．求证：$overline(A B) = overline(A C)$.

#figure([#fig("3-19");

  ],
  caption: [
  ]
)

#proof[
根据翻转公理，我们可以把 $triangle.stroked.t A B C$ 翻转过来，设顶点 $A$、$B$、$C$ 成为 $A'$、$B'$、$C'$.

$because quad angle B = angle C = angle C'\,quad angle C = angle B = angle B'$

又：$because quad overline(B C) = overline(C' B')$

$therefore quad triangle.stroked.t A B C tilde.equiv triangle.stroked.t A' C' B'$（ASA）

$therefore quad overline(A B) = overline(A' C')$（全等三角形的对应边相等）．

由于 $overline(A C) = overline(A' C')$，$therefore quad overline(A B) = overline(A C)$（等量代换）

]
用逻辑语句说：等腰三角形的判定定理是其性质定理的逆定理．这两个定理我们用“充要”条件可合写成一个定理：

#blk[][
一个三角形是等腰三角形的充要条件是这个三角形有两个角相等．

]
#blk[定义][
三条边都相等的三角形叫做#strong[等边三角形]，也叫做#strong[正三角形]．

]
同学们自己证明下面等边三角形的性质定理和判定定理．

#blk[][
- 等边三角形的三内角相等．

- 三内角相等的三角形是等边三角形．

]
由等腰三角形及等边三角形的性质定理和判定定理可知，在一个三角形中，由边的相等可以推知角的相等，反过来由角的相等也可推知边的相等．下面举例说明它们在证题中的应用．

#example[
已知：在图3.11中，$overline(A B) = overline(E B)$, $overline(A C) = overline(D C)$, ADB、AEC是直线．

求证：$angle A D C = angle A E B$.

]
#analyze[
要证 $angle A D C = angle A E B$,只需证明 $angle A D C = angle A$, $angle A E B = angle A$\;要证明 $angle A D C = angle A$, $angle A E B = angle A$,只要知道 $overline(A C) = overline(D C)$, $overline(A B) = overline(B E)$ 就行了．

]
#proof[
在 $triangle.stroked.t B A E$ 中，$because quad overline(A B) = overline(E B)$（已知），

$therefore quad angle A E B = angle A$（等腰三角形的底角相等）．

在 $triangle.stroked.t C A D$ 中，$because quad overline(A C) = overline(D C)$（已知），

$therefore quad angle A D C = angle A$（等腰三角形的底角相等）．

$therefore quad angle A D C = angle A E B$（等量代换）．

]
#align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, figure([#fig("3-20");], caption: []), figure([#fig("3-21");], caption: [])));

#example[
如图3.12,已知：$overline(A C) = overline(B C)$, $overline(A E) = overline(D B)$.

求证：$overline(C D) = overline(C E)$.

]
#analyze[
在 $triangle.stroked.t C D E$ 中，若要证 $overline(C D) = overline(C E)$，只要证 $angle 1 = angle 2$ 即可，$angle 1$ 和 $angle 2$ 分别在 $triangle.stroked.t B C D$ 与 $triangle.stroked.t A C E$ 中，如能证明 $triangle.stroked.t B C D tilde.equiv triangle.stroked.t A C E$,即可证明 $angle 1 = angle 2$.

]
#proof[
在 $triangle.stroked.t A C E$ 与 $triangle.stroked.t B C D$ 中，

$because quad overline(A C) = overline(B C)\,quad overline(A E) = overline(B D)$（已知）

$therefore quad angle A = angle B$（等腰三角形两底角相等），

$therefore quad triangle.stroked.t A C E tilde.equiv triangle.stroked.t B C D$（SAS）

$therefore quad angle 2 = angle 1$（全等三角形的对应角相等），

$therefore quad triangle.stroked.t C D E$ 是等腰三角形（有两角相等的三角形是等腰三角形）．

$therefore quad overline(C D) = overline(C E)$

]
#exercise[
+ 画出 $triangle.stroked.t A B C$ 和 $triangle.stroked.t D E F$ 的三条边上的高线．

+ 画一个三角形 $A B C$,然后画出 $triangle.stroked.t A B C$ 三个内角的平分线．

+ 画一个三角形 $D E F$,然后画出 $triangle.stroked.t D E F$ 三边上的中线．

+ 证明：全等三角形的对应角的平分线相等．

+ 证明：全等三角形对应边上的中线相等．

+ 已知：$A = { upright("等腰三角形") }$，$B = { upright("两内角相等的三角形") }$，指出集合 $A$ 与集合 $B$ 的关系．

+ 若 $overline(A C) = overline(B C)\,quad angle D C A = angle E C B$,则 $overline(C D) = overline(C E)$.

+ 若 $overline(A C) = overline(B C)\,quad angle 1 = angle 2$,则 $overline(A E) = overline(B D)$.

+ 若 $overline(A C) = overline(B C)$, $overline(A D)$、$overline(B E)$ 分别是 $angle A$ 和 $angle B$ 的平分线，则 $overline(A D) = overline(B E)$.

+ 若 $overline(A C) = overline(B C)\,quad overline(A D) = overline(B E)$, $D E$ 是直线，则 $triangle.stroked.t D E C$ 是等腰三角形．

+ 若 $overline(A C) = overline(B C)\,quad angle A C D = angle B C E$, $D E$ 是直线，则 $triangle.stroked.t D E C$ 是等腰三角形．

+ 在等边 $triangle.stroked.t A B C$ 的三边上，分别取 $D$、$E$、$F$（如图），使 $overline(A D) = overline(B E) = overline(C F)$,则 $triangle.stroked.t D E F$ 是等边三角形．

+ 设 $overline(D E) = overline(E F) = overline(F D)$, $angle A F D = angle B D E = angle C E F$,则 $triangle.stroked.t A B C$ 是等边三角形．

]
#align(center)[
#fig("3-22");

#subcap[
第1题

]
]
#align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, [#fig("3-23");

#subcap[
第7题

]], [#fig("3-24");

#subcap[
第8--9题

]]));

#align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, [#fig("3-25");

#subcap[
第10--11题

]], [#fig("3-26");

#subcap[
第12--13题

]]));

=== 轴对称图形
#blk[定义][
在平面上有两个图形 $F$ 和 $F'$,如果平面沿着某条直线 $ell$ 折叠起来，$F$ 和 $F'$ 叠合，就称 $F$ 和 $F'$ 关于 $ell$ 成#strong[轴对称]．（也称 $F$ 和 $F'$ 是以 $ell$ 为轴的#strong[对称形]）．$F$ 和 $F'$ 上互相叠合的点叫做#strong[对称点]，$ell$ 叫做#strong[对称轴]．

]
在图3.13(1)中，平面上的 $triangle.stroked.t A B C$ 和 $triangle.stroked.t A' B' C'$ 关于直线 $ell$ 成轴对称；$A$ 与 $A'$、$B$ 与 $B'$、$C$ 与 $C'$ 都是对称点．

#figure([#fig("3-27");

  ],
  caption: [
  ]
)

#blk[推论][
两个图形如果关于某直线成轴对称，那么这两个图形是全等形．

]
#blk[定义][
如果一个图形可以分成两部分，这两部分关于某一直线成轴对称，就把这个图形称为#strong[轴对称形]．

]
显然，等腰三角形关于它的顶角平分线成轴对称图形（图3.13(2)）．轴对称形在实际中应用非常广泛，图3.14中的图形，都是轴对称形．

#figure([#scale(60%, reflow: true, image("/math2/fig/3-14.png"));

  ],
  caption: [
  ]
)

轴对称图形有什么性质呢？这就要研究一下对称轴和对称点的关系．

在图3.15中，设 $A$ 与 $A'$ 是关于直线 $ell$ 的轴对称点，因为 $A$、$A'$ 和 $ell$ 在同一平面内，并且 $A$ 和 $A'$ 在 $ell$ 的两侧，所以线段 $overline(A A')$ 与 $ell$ 必相交，设交点为 $O$,在 $ell$ 上取异于 $O$ 的另一点 $P$,连结 $overline(A P)$，$overline(A' P)$.

由于 $A$ 点所在的半平面沿直线 $ell$ 折叠过来，$A$ 和 $A'$ 重合，而 $ell$ 上的 $P$ 和 $O$ 重合于自身，所以 $overline(A P) = overline(A' P)$, $angle A P O = angle A' P O$, $triangle.stroked.t P A A'$ 是等腰三角形，直线 $ell$ 是顶角的平分线，所以 $ell$ 垂直平分底边 $overline(A A')$.

由此得出轴对称图形的重要性质：

+ 对称轴上的任一点，与每一双对称点的距离相等．

+ 对称轴是每一双对称点所连线段的垂直平分线．

在上述性质的证明中，我们所取 $P$ 点异于 $O$,如果 $P$ 点就是 $O$ 点，结论仍然一样．

由于一条线段的垂直平分线是唯一的，由性质2可知，如果 $overline(A A')$ 的垂直平分线是 $ell$,那么 $A$ 与 $A'$ 是以 $ell$ 为轴的对称点．

由此，我们就可以作出已知图形以某直线为轴的对称形．

#align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, figure([#fig("3-28");], caption: []), figure([#fig("3-29");], caption: [])));

#example[
已知：四边形 $A B C D$ 及直线 $ell$. (图3.16)

求作：四边形 $A B C D$ 以 $ell$ 为轴的轴对称形．

作法：

+ 由 $A$ 点引 $ell$ 的垂线交 $ell$ 于 $O$ 点，在射线 $A O$ 上取 $overline(O A') = overline(A O)$,则 $A'$ 是 $A$ 点关于轴 $ell$ 的对称点．

+ 用同样的方法作点 $B$、$C$、$D$ 关于 $ell$ 的对称点 $B'$、$C'$、$D'$.

+ 连结 $overline(A' B')$, $overline(B' C')$, $overline(C' D')$, $overline(D' A')$,则四边形 $A' B' C' D'$ 就是四边形 $A B C D$ 以 $ell$ 为轴的轴对称图形．

为什么呢？因为根据作法，如果把四边形 $A B C D$ 和四边形 $A' B' C' D'$ 所在平面，沿直线 $ell$ 折叠起来，则 $A$ 与 $A'$、$B$ 与 $B'$、$C$ 与 $C'$、$D$ 与 $D'$ 分别重合，所以四边形 $A B C D$ 与四边形 $A' B' C' D'$ 完全重合，所以这两个四边形是以 $ell$ 为轴的对称图形．

]
#example[
有公共底的两个等腰三角形，通过底所对的两个顶点的直线是它们所组成图形的对称轴．

已知：在图3.17中，$B C$ 是等腰 $triangle.stroked.t A B C$ 与等腰 $triangle.stroked.t A' B C$ 的公共底边．

求证：直线 $A A'$ 是这个图形的对称轴．

]
#figure([#fig("3-30");

  ],
  caption: [
  ]
)

#proof[
$because quad overline(A B) = overline(A C)\,quad overline(A' B) = overline(A' C)$（已知）

$therefore quad angle A B C = angle A C B\,quad angle A' B C = angle A' C B$（等腰三角形的两底角相等）．

两式相加（或相减）得：$angle A B A' = angle A C A'$（等量加（或减）等量其和（或差）相等）．

$therefore quad triangle.stroked.t A B A' tilde.equiv triangle.stroked.t A C A'$（SAS）

以 $A A'$ 为轴折叠起来，$triangle.stroked.t A B A'$ 与 $triangle.stroked.t A C A'$ 能够重合，所以 $A A'$ 是这个图形的对称轴．

]
#example[
证明四条边相等的四边形的两条对角线互相垂直平分，并且平分一双对角．

已知：在四边形 $A B C D$ 中，$overline(A B) = overline(B C) = overline(C D) = overline(D A)$.（图3.18）

#figure([#fig("3-31");

  ],
  caption: [
  ]
)

求证：$A C$、$B D$ 互相垂直平分，且 $A C$ 平分 $angle A$ 和 $angle C$, $B D$ 平分 $angle B$ 和 $angle D$.

]
#proof[
在四边形 $A B C D$ 中，因为 $overline(A B) = overline(B C) = overline(C D) = overline(D A)$,所以四边形 $A B C D$ 可看成由两个等腰三角形所拼成：等腰 $triangle.stroked.t A B D$ 与等腰 $triangle.stroked.t C B D$,或等腰 $triangle.stroked.t A B C$ 与等腰 $triangle.stroked.t A D C$.由例3.8可知，对角线 $overline(A C)$、$overline(B D)$ 所在的直线都是四边形 $A B C D$ 的对称轴．所以，$overline(A C)$、$overline(B D)$ 互相垂直平分，并且 $overline(A C)$ 平分 $angle A$ 和 $angle C$, $overline(B D)$ 平分 $angle B$ 和 $angle D$.

]
#exercise[
+ 下列各图形有多少个对称轴？对称轴是什么？

  #cols(3)[
  + 线段；

  + 射线；

  + 直线．

  ]

+ 已知直线 $ell$ 和 $ell$ 外面一点 $A$,只用圆规和直尺求作点 $A$ 以直线 $ell$ 为对称轴的对称点 $A'$.

+ 求作两个已知点的对称轴．

+ 已知 $triangle.stroked.t A B C$ 和直线 $ell$,作 $triangle.stroked.t A B C$ 以 $ell$ 为对称轴的对称形．

+ 求作与已知等边三角形 $A B C$ 分别以 $A B$、$A C$、$B C$ 为对称轴的对称图形．

+ 作图．（只要求作出图形）

  + 画已知线段 $overline(A B)$ 的对称轴．

  + 画已知 $angle A$ 的对称轴．

+ 等腰三角形有几个对称轴？等边三角形有几个对称轴？任画一个等边三角形把它的对称轴都画出来．

]
=== 三角形中的不等关系
#blk[定义][
和三角形的内角相邻并且和它互补的角叫做三角形的#strong[外角]．

]
如图3.19中的 $angle A C D$ 就是 $triangle.stroked.t A B C$ 的一个外角．这时 $angle A C B$ 称为 $angle A C D$ 相邻的内角，$angle A$ 和 $angle B$ 分别称为 $angle A C D$ 不相邻的内角．

#blk[定理][
三角形的外角大于和它不相邻的任一内角．

]
#align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, figure([#fig("3-32");], caption: []), figure([#fig("3-33");], caption: [])));

已知：$triangle.stroked.t A B C$ 和外角 $angle C B D$（图3.20）．

求证：$angle C B D > angle C$ 或 $angle A$.

#proof[
假定 $E$ 是 $overline(B C)$ 中点，引 $A E$ 并延长到 $F$,使 $overline(E F) = overline(A E)$,作 $overline(B F)$.

在 $triangle.stroked.t A C E$ 和 $triangle.stroked.t F B E$ 中，

$because quad overline(A E) = overline(E F)$（作图），

$because quad E$ 是 $overline(B C)$ 中点（假定），

$therefore quad overline(C E) = overline(E B)$（线段中点定义），

$because quad angle C E A = angle B E F$（对顶角相等），

$therefore quad triangle.stroked.t A C E tilde.equiv triangle.stroked.t F B E$（SAS),

$therefore quad angle E B F = angle C$（全等三角形的对应角相等）．

由于 $angle C B D > angle E B F$（全量大于它的任何一部分）．

$therefore quad angle C B D > angle C$（等量代换）．

同理可证 $angle C B D > angle A$.

]
#blk[定理][
在一个三角形中，如果两条边不等，那么它们所对的角也不等，大边所对的角较大；反之，如果在一个三角形中两个角不等，那么它们所对的边也不等．大角所对的边较大．

]
已知：$triangle.stroked.t A B C$（图3.21)

#align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, figure([#fig("3-34");], caption: []), figure([#fig("3-35");], caption: [])));

求证：

+ $overline(A B) > overline(A C) quad arrow.r.double quad angle C > angle B$

+ $angle C > angle B quad arrow.r.double quad overline(A B) > overline(A C)$

#proof[
先证 $overline(A B) > overline(A C) quad arrow.r.double quad angle C > angle B$.

在 $A B$ 上截 $overline(A D) = overline(A C)$,则 $triangle.stroked.t A D C$ 为等腰三角形．

$therefore quad angle 1 = angle 2$.

由于 $angle A C B > angle 1$（不等量基本性质6）

$therefore quad angle A C B > angle 2$（等量代换）．

但 $angle 2 > angle B$（三角形的外角大于和它不相邻的任一内角），

$therefore quad angle A C B > angle B$（不等量基本性质5）

即：$angle C > angle B$.

我们再证 $angle C > angle B quad arrow.r.double quad overline(A B) > overline(A C)$

如果 $overline(A B)$ 不大于 $overline(A C)$,那么 $overline(A B) = overline(A C)$ 或 $overline(A B) < overline(A C)$.若 $overline(A B) = overline(A C)$,则 $angle B = angle C$,若 $overline(A B) < overline(A C)$,则 $angle C < angle B$,这两种结果都和 $angle C > angle B$ 矛盾．

$therefore quad angle C > angle B quad arrow.r.double quad overline(A B) > overline(A C)$

]
#blk[定理][
三角形任意两边之和大于第三边．

]
已知：$triangle.stroked.t A B C$（图3.22）．

求证：$overline(A B) + overline(A C) > overline(B C)$.

#proof[
在 $B A$ 的延长线上取一点 $D$,使 $A D = A C$.则 $triangle.stroked.t A C D$ 为等腰三角形．

$therefore quad angle 1 = angle 2$

$because quad angle B C D > angle 1$（不等量基本性质6）

$therefore quad angle B C D > angle 2$（等量代换）．

在 $triangle.stroked.t B C D$ 中，由前面的定理可知：$overline(B D) > overline(B C)$,但 $overline(B D) = overline(A B) + overline(A D) = overline(A B) + overline(A C)$,

$therefore quad overline(A B) + overline(A C) > overline(B C)$

]
#blk[推论][
三角形任一边大于其他两边之差．

]
下面我们举例说明上述定理的一些应用．

#example[
已知：$triangle.stroked.t A B C$ 中 $overline(A B) = overline(A C)$, $D$ 点在 $overline(B C)$ 上，$E$ 点在 $overline(B C)$ 的延长线上（图3.23）．

求证：$overline(A D) < overline(A B) < overline(A E)$

]
#align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, figure([#fig("3-36");], caption: []), figure([#fig("3-37");], caption: [])));

#proof[
$because quad overline(A B) = overline(A C)$

$therefore quad angle 1 = angle 2$

又 $because quad angle 3 > angle 2$（为什么？），

$therefore quad angle 3 > angle 1$（为什么？）．

$therefore quad overline(A B) > overline(A D)$#h(1em);①（在一个三角形中，大角对大边．）

又：$because quad angle 2 > angle E$（为什么？），

$therefore quad angle 1 > angle E$（为什么？）．

$therefore quad overline(A E) > overline(A B)$#h(1em);②（在一个三角形中，大角对大边．）

由①、②有：$overline(A D) < overline(A B) < overline(A E)$

]
#example[
已知：$E$ 点在 $triangle.stroked.t A B C$ 内（图3.24）．

求证：

+ $angle B E C > angle A$

+ $overline(B E) + overline(E C) < overline(A B) + overline(A C)$

]
#proof[
延长 $overline(B E)$ 交 $overline(A C)$ 于 $D$ 点，则 $angle B E C > angle 1$（为什么？），$angle 1 > angle A$（为什么？），

$therefore quad angle B E C > angle A$（不等量基本性质5）．

又 $because quad overline(B E) + overline(E D) < overline(A D) + overline(A B)$，$overline(E C) < overline(E D) + overline(D C)$（三角形两边之和大于第三边）．

$therefore quad overline(B E) + overline(E D) + overline(E C) < overline(A D) + overline(A B) + overline(E D) + overline(D C)$（不等量基本性质3）．

$therefore quad overline(B E) + overline(E C) < overline(A B) + overline(A C)$（不等量基本性质1）．

]
#example[
如图3.25所示，$A$、$B$ 是平面上直线 $ell$ 同侧的两点，试在直线 $ell$ 上求一点 $P$,使 $overline(A P) + overline(P B)$ 最短．

在没有作这题前，让我们想一想该怎样着手，我们要求 $overline(A P) + overline(P B)$ 最短，但怎样才能最短呢？

我们知道两点间的直线段最短，但是我们却要在 $ell$ 上求一点，使 $overline(A P) + overline(P B)$ 最短．如果 $A\,B$ 两点在 $ell$ 的两侧，那么问题要简单得多（作 $overline(A B)$ 与 $ell$ 交于 $P$, $P$ 点就是所求的点）．但我们曾学过，如果两点是轴对称点，那么它们的对称轴就是两点间线段的垂直平分线，并且对称轴上的点到两对称点的距离相等．我们只要作出 $A$ 点关于轴 $ell$ 的对称点 $A'$,我们求 $overline(A P) + overline(P B)$ 的最小值，就可转化为求 $overline(A' P) + overline(P B)$ 的最小值了．而 $A'$、$B$ 两点在 $ell$ 的异侧，这是很容易的．

#figure([#fig("3-38");

  ],
  caption: [
  ]
)

]
#solution[
作 $A$ 点关于轴 $ell$ 的对称点 $A'$,作 $overline(A' B)$ 与 $ell$ 相交于 $P$,则 $P$ 点使 $overline(A P) + overline(P B)$ 最短．因为，如果在 $ell$ 上任找另外一点 $C$,在 $triangle.stroked.t A' B C$ 中，$overline(A' B) < overline(A' C) + overline(C B)$（三角形两边之和大于第三边），但 $overline(A' B) = overline(A' P) + overline(P B)$

将 $overline(A' P) = overline(A P)\,quad overline(A' C) = overline(A C)$ 代入上式，则得：$overline(A P) + overline(P B) < overline(A C) + overline(C B)$.

这就证明了 $P$ 点使 $overline(A P) + overline(P B)$ 最短．

]
#rmk[
如果 $ell$ 是镜子的话，那么从 $A$ 点发出的光线，若反射到 $B$ 点，那么 $overline(A P)$、$overline(P B)$ 就是光所走的路线．因为光线总是走最近的路，在光学中就有：“入射角等于反射角”这条定律．即 $angle A P D = angle B P C$.在光学中由观测得到的结果和我们用数学定理得出的结果一致．在自然界中我们有能力观测到的结论是有限的，如何由这些有限的可观测的结论，得到更进一步的结论，甚至有些是观测不到的结论，我们需要数学这样有力的工具．

]
#exercise[
+ 已知：如图，$triangle.stroked.t A B C$ 内有一点 $P$,求证：$angle B P C > angle B A C$.

+ 已知：如图，$triangle.stroked.t A B C$ 内有一点P,求证：$overline(A B) + overline(A C) > overline(P B) + overline(P C)$.

+ 将金属丝弯成三角形，如果要求一边长是25cm,那么金属丝至少大于多少cm才能作成三角形？

+ 证明四边形两条对角线之和小于周长而大于半周长．

+ 证明三角形的一边小于它的周长的一半．

+ 用整数表示三角形的各边，一边是3米，另一边是2米，第三边可以是多少米？

+ 在平面上 $overline(A B)$ 的垂直平分线的 $A$ 点的一侧取一点 $P$,那么 $overline(P A)$ 和 $overline(P B)$ 哪一条线段长？

+ 已知：如图，$triangle.stroked.t A B C$ 中，$angle A > angle C$, $D$、$E$ 分别在 $overline(A B)$、$overline(A C)$ 上并且 $overline(A D) > overline(A E)$.求证：

  + $angle B D E > angle C E D$

  + $overline(B C) > overline(B E)$

]
#align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, [#fig("3-39");

#subcap[
第1--2题

]], [#fig("3-40");

#subcap[
第8题

]]));

#heading(level: 2, numbering: none, supplement: [toc-sub])[习题3.1]

+ 已知：如图，$overline(A D) = overline(A E)$, $overline(B D) = overline(E C)$,求证：$overline(D O) = overline(E O)$.

+ 已知：如图，$overline(A B) = overline(A D)$, $A C$ 平分 $angle B A D$, $E$ 是 $overline(A C)$ 上一点．求证：$angle E B C = angle E D C$.

+ 求证：等腰三角形两腰上的中线相等．

+ 已知：如图，$angle B = angle C$, $overline(B D) = overline(E C)$.求证：$angle 1 = angle 2$.

  #align(center, grid(columns: (31%, 31%, 31%,), column-gutter: 0.35em, align: center + bottom, [#fig("3-41");
  
  #subcap[
  第1题
  
  ]], [#fig("3-42");
  
  #subcap[
  第2题
  
  ]], [#fig("3-43");
  
  #subcap[
  第4题
  
  ]]));

+ 已知：如图，在四边形 $A B C D$ 中，$overline(A D) = overline(A B)$, $overline(C D) = overline(B C)$

  求证：$angle 1 = angle 2$；$angle 3 = angle 4$；$A C tack.t D B$

+ 如图，已知：$angle 1 = angle 2$, $angle 3 = angle 4$,求证：$overline(A B) = overline(A C)$.

+ 如图，已知：$overline(B E) = overline(E D)$, $angle 1 = angle 2$.求证：$overline(A B) = overline(C D)$.

  #align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, [#fig("3-44");
  
  #subcap[
  第5题
  
  ]], [#fig("3-45");
  
  #subcap[
  第6题
  
  ]]));

+ 在 $triangle.stroked.t A B C$ 中，$overline(A B) = overline(A C)$, $D$、$E$ 两点分别在 $overline(A B)$ 和 $overline(A C)$ 上，且 $overline(B E)$ 和 $overline(C D)$ 交于 $O$ 点，$overline(B D) = overline(C E)$.求证：$A O$ 平分 $angle B A C$.

+ 在 $triangle.stroked.t A B C$ 中，$D$ 为 $overline(B C)$ 延长线上一点，且 $overline(C D) = overline(A C)$, $F$ 是 $overline(A D)$ 中点，$overline(C E)$ 是 $angle A C B$ 的平分线．求证 $C E tack.t C F$.

+ 在 $triangle.stroked.t A B C$ 中，$angle B = 2 angle C$, $A D$ 平分 $angle A$,交 $overline(B C)$ 于 $D$ 点，求证：$overline(A B) + overline(B D) = overline(A C)$.

  #align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, [#fig("3-46");
  
  #subcap[
  第7题
  
  ]], [#fig("3-47");
  
  #subcap[
  第11题
  
  ]]));

+ 如图，已知四边形 $A B C D$ 中，$overline(A B) = overline(B C)$, $overline(A D) > overline(C D)$.

  求证：$angle B C D > angle B A D$.

+ 已知：$triangle.stroked.t A B C$ 中，$D$ 是 $overline(A C)$ 上一点，且 $overline(B D) > overline(B C)$.

  求证：$overline(A B) > overline(A C)$.

+ 三角形的一边等于2米，另一边等于8米，如果已知第三边能用被3整除的整数表示，求第三边．

+ 已知：$triangle.stroked.t A B C$ 在平面 $alpha$ 上，点 $P in alpha$,并且 $P$ 在 $triangle.stroked.t A B C$ 的外部

  求证：$overline(P A) + overline(P B) + overline(P C) > 1 / 2\(overline(A B) + overline(B C) + overline(A C)\)$

+ 已知：$triangle.stroked.t A B C$ 在平面 $alpha$ 上，点 $P in alpha$,并且 $P$ 在 $triangle.stroked.t A B C$ 的内部

  求证：$overline(P A) + overline(P B) + overline(P C) < overline(A B) + overline(B C) + overline(A C)$.

+ 求证：三角形一边上的中线小于其他两边和的一半．

+ 在两条公路 $O X$ 和 $O Y$ 上，分别设邮筒 $A$ 和 $B$,邮递员每天由邮局 $P$ 到邮筒 $A$、$B$ 取信，然后返回邮局．问 $A$、$B$ 的位置确定在哪儿，才能使邮递员走的路程最短？

  #align(center)[
  #fig("3-48");

  #subcap[
  第17题

  ]
  ]

== 平行线与内角和定理
=== 平行线
#blk[定义][
平面上两条直线被第三条直线所截，截得八个角，如图3.26,其中的 $angle 1$ 和 $angle 5$, $angle 4$ 和 $angle 8$, $angle 2$ 和 $angle 6$, $angle 3$ 和 $angle 7$,都叫做#strong[同位角]，$angle 4$ 和 $angle 6$, $angle 3$ 和 $angle 5$ 都叫#strong[内错角]，$angle 4$ 和 $angle 5$, $angle 3$ 和 $angle 6$ 都叫做#strong[同旁内角]．

]
#align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, figure([#fig("3-49");], caption: []), figure([#fig("3-50");], caption: [])));

由平行线定义可知，两条直线平行的充要条件是这两条直线被第三条直线所截出的同位角相等．这就是说：

+ 如果同位角相等，则两条直线平行；

+ 如果已知两条直线平行，则同位角相等．

这就是平行线的判定方法和平行线的性质．以此为根据又可推知以下定理：

#blk[定理][
两条直线被第三条直线所截，如果内错角相等，或同旁内角互补，那么这两条直线平行．

]
#proof[
在图3.27中，设直线 $A B$、$C D$ 被直线 $P Q$ 所截．$angle 2$、$angle 3$ 是内错角，$angle 1$、$angle 2$ 是同旁内角．

+ 如果已知 $angle 2 = angle 3$.

  $because quad angle 3 = angle 4$（对顶角相等），

  $therefore quad angle 2 = angle 4$（等量代换）．

  $therefore quad A B pll C D$（同位角相等，则两条直线平行）．

+ 如果已知 $angle 1 + angle 2 = 180 degree$,则 $angle 2 = 180 degree - angle 1$（等量减等量差相等）．

  $because quad P Q$ 是直线（已知）

  $therefore quad angle 4 + angle 1 = 180 degree$.

  $therefore quad angle 4 = 180 degree - angle 1$.

  $therefore quad angle 2 = angle 4$（等量代换）．

  $therefore quad A B pll C D$（同位角相等，则两条直线平行）．

]
#blk[定理][
平面上两条不相交的直线是这两条直线互相平行的充要条件．

]
但是这个定理的证明比较麻烦，我们在这里就不证了，有兴趣的同学可以自己去证明它．

#blk[推论1][
平行于同一直线的两条直线平行．

]
已知：直线 $a pll$ 直线 $c$,直线 $b pll$ 直线 $c$ (图3.28).求证：$a pll b$.

#proof[
若 $a$ 不平行 $b$, $a$ 与 $b$ 一定相交，设交点为 $P$,那么过 $P$ 点就有两条直线 $a$、$b$ 平行于直线 $c$,但根据平行公理，这是不可能的，所以 $a pll b$.

]
#figure([#fig("3-51");

  ],
  caption: [
  ]
)

上面这种证明方法，叫做反证法．我们先否定要证明的结论，然后引出不合理的结果，从而说明结论非成立不可．请同学们回想一下，我们在第二章讲基本逻辑语句的命题时，若原命题是“若 $alpha$,则 $beta$”，那么它的逆否命题是“若非 $beta$,则非 $alpha$\.”我们知道这两个互为逆否的命题是同义的，上面的反证法就是当我们证明原命题有困难时，我们可去证它的逆否命题．

#blk[推论2][
过已知直线外一点，只可以引一条直线和已知直线垂直．

]
请同学们用反证法证明这个推论．

#example[
已知：在图3.29中，$angle B E D = angle B + angle D$.

求证：$A B pll C D$.

]
#analyze[
若能证明 $A B$、$C D$ 都与第三条直线平行，则 $A B pll C D$.

]
#proof[
引直线 $E F$,使得 $angle 1 = angle B$,则 $A B pll E F$（内错角相等，则两条直线平行）．

又：$because quad angle B E D = angle B + angle D$（已知），

$therefore quad angle B E D - angle 1 = angle D$（等量减等量差相等）．即：$angle F E D = angle D$.

$therefore quad C D pll E F$（内错角相等，则两条直线平行）．

$therefore quad A B pll C D$（平行于第三条直线的两条直线平行）．

]
#align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, figure([#fig("3-52");], caption: []), figure([#fig("3-53");], caption: [])));

#example[
在图3.30中，已知 $overline(C D) = overline(A B)$, $A D$ 是直线．$angle A = angle D$,并且 $overline(A E) = overline(D F)$.

求证：$E C pll B F$.

]
#analyze[
要证 $E C pll B F$,只需证明 $angle 1 = angle 2$ 即可，要证明 $angle 1 = angle 2$,只需证明 $triangle.stroked.t A E C tilde.equiv triangle.stroked.t D F B$ 即可．

]
#proof[
$because quad overline(A B) = overline(C D)$（已知）$therefore quad overline(A B) + overline(B C) = overline(B C) + overline(C D)$（等量加等量和相等）．即：$overline(A C) = overline(B D)$.

又：$because quad angle A = angle D\,quad overline(A E) = overline(D F)$（已知），

$therefore quad triangle.stroked.t A E C tilde.equiv triangle.stroked.t D F B$ (SAS).

$therefore quad angle 1 = angle 2$（全等三角形的对应角相等）．

$therefore quad C E pll B F$（内错角相等，则两条直线平行）．

]
#blk[定理][
如果两条平行直线被一条直线所截，那么截出的内错角相等；同旁内角互补．

]
这个定理同学们可以根据“两条直线平行则同位角相等”这一性质推出．

#example[
在图3.31中，已知：$O A pll O' A'$, $O B pll O' B'$.

求证：$angle A O B = angle A' O' B'$.

]
#proof[
反向延长 $O' A'$ 交 $O B$ 于 $C$ 点，

$because quad O B pll O' B'$（已知），

$therefore quad angle A' O' B' = angle A' C B$（两条直线平行，同位角相等）．

又 $because quad O A pll O' A'$（已知），

$therefore quad angle A' C B = angle A O B$（两条直线平行，同位角相等）．

$therefore quad angle A O B = angle A' O' B'$（等量代换）．

]
#align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, figure([#fig("3-54");], caption: []), figure([#fig("3-55");], caption: [])));

上面的例子我们可以写成下面的定理：

#blk[定理][
如果一个角的两条边和另一个角的两条边分别同向平行，那么这两个角相等．

]
#example[
图3.32中，已知：$A D pll B C$, $overline(A D) = overline(B C)$.

求证：$A B pll C D$.

]
#analyze[
要证明 $A B pll C D$,只要证明 $angle 3 = angle 4$ 就行了，为此需要证明 $triangle.stroked.t A B C tilde.equiv triangle.stroked.t C D A$.

]
#proof[
$because quad A D pll B C$（已知），

$therefore quad angle 1 = angle 2$（两条直线平行，则内错角相等）．

又：$because quad overline(A D) = overline(B C)$（已知）$overline(A C) = overline(A C)$（公共边）

$therefore quad triangle.stroked.t A B C tilde.equiv triangle.stroked.t C D A$ (SAS)

$therefore quad angle 3 = angle 4$（全等三角形的对应角相等）．

$therefore quad A B pll C D$（内错角相等，则两条直线平行）．

]
#exercise[
+ 指出图中用数字标出的角中哪些是同位角？

+ 如图，说出下列各对角的名称．$angle 1$ 与 $angle 2$, $angle 2$ 与 $angle 3$, $angle 3$ 与 $angle 4$, $angle 4$ 与 $angle 5$, $angle 3$ 与 $angle 5$，$angle 1$ 与 $angle 6$

+ 试指出判定两条直线平行有哪些方法？并指出平行线有什么性质？

+ 如图，已知：$angle 1 = 60 degree$, $angle 2 = 60 degree$.求证：$A B pll C D$.

+ 如图，已知：$angle 1 = angle 2$,求证：$A B pll C D$.

+ 如图，已知 $angle 1 = 69 degree$, $angle 2 = 69 degree$.求证：$A B pll C D$.

+ 如图，已知：$angle 1 + angle 2 = 180 degree$,求证：$A B pll C D$.

+ 如图，已知：$overline(A B)$、$overline(C D)$ 相交于 $E$ 点，且 $overline(E A) = overline(E B)$, $overline(E C) = overline(E D)$

  求证：$A C pll D B$.

+ 如图，已知：$overline(A B) = overline(D C)$, $overline(A D) = overline(B C)$.求证：$A B pll C D$.

+ 已知：$overline(A E) = overline(D F)$, $overline(A B) = overline(C D)$, $overline(E C) = overline(B F)$.求证：$E C pll B F$.

+ 已知：$D E pll B C$, $angle 1 = angle 2$.求证：$angle 3 = angle 4$.

+ 已知：$A B pll C D$,求证：$angle 1 = angle 2$.

+ 如图，已知：$angle 1 = angle 2$.求证：$angle 3 = angle 4$.

+ 如图，已知：$A B pll C D$,求证：$angle B + angle D + angle E = 360 degree$.

+ 在四边形 $A B C D$ 中，$A D pll B C$, $A B pll C D$ 且 $overline(B E) = overline(D F)$,则 $overline(A E) pll overline(F C)$.

]
#align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, [#fig("3-56");

#subcap[
第1题

]], [#fig("3-57");

#subcap[
第2题

]]));

#align(center, grid(columns: (32%, 32%, 32%,), column-gutter: 0.35em, align: center + bottom, [#fig("3-58");

#subcap[
第4题

]], [#fig("3-59");

#subcap[
第5、6、12题

]], [#fig("3-60");

#subcap[
第7题

]]));

#align(center, grid(columns: (32%, 32%, 32%,), column-gutter: 0.35em, align: center + bottom, [#fig("3-61");

#subcap[
第8题

]], [#fig("3-62");

#subcap[
第9题

]], [#fig("3-63");

#subcap[
第10题

]]));

#align(center, grid(columns: (46%, 46%,), column-gutter: 0.35em, align: center + bottom, [#fig("3-64");

#subcap[
第11题

]], [#fig("3-65");

#subcap[
第13题

]]));

#align(center, grid(columns: (46%, 46%,), column-gutter: 0.35em, align: center + bottom, [#fig("3-66");

#subcap[
第14题

]], [#fig("3-67");

#subcap[
第15题

]]));

=== 内角和定理
#blk[三角形内角和定理][
三角形三内角和等于 $180 degree$.

]
这个定理在第一章用实验的办法验证过，现在我们应用平行线的性质来证明它．

已知：任一 $triangle.stroked.t A B C$\(图3.33).求证：$angle A + angle B + angle C = 180 degree$.

#figure([#fig("3-68");

  ],
  caption: [
  ]
)

#proof[
过 $A$ 点引直线 $D E pll B C$（平行公理）则 $angle D A B = angle B$, $angle E A C = angle C$（两条直线平行，则内错角相等）．

$because quad D E$ 是过 $A$ 点的直线（作图），

$therefore quad angle D A B + angle B A C + angle C A E = 180 degree$（平角定义）．

$therefore quad angle A + angle B + angle C = 180 degree$（等量代换）．

]
由三角形内角和定理可以得到下列推论．

#blk[推论1][
一个三角形的两角若分别等于另一个三角形的两角，则第三个角也相等．

]
#blk[推论2][
两个三角形如果有两个角和其中一个角所对的边分别相等，那么它们就全等．（AAS）

]
#blk[推论3][
三角形的一个外角等于和它不相邻的两个内角的和．

]
#blk[推论4][
正三角形的各内角是 $60 degree$.

]
#blk[推论5][
三角形中，至多有一个直角或一个钝角．

]
#blk[定义][
每个内角都是锐角的三角形，叫做#strong[锐角三角形]；有一个内角是直角的三角形叫做#strong[直角三角形]，夹直角的两边叫做#strong[直角边]，直角的对边叫做#strong[斜边]；有一个内角是钝角的三角形叫做#strong[钝角三角形]（图3.34）．

]
#figure([#fig("3-69");

  ],
  caption: [
  ]
)

这样，三角形可以根据它的内角的大小分为三类：锐角三角形、直角三角形和钝角三角形．

#blk[推论6][
直角三角形中，非直角的两个角都是锐角，并且这两个锐角互余．

]
#blk[定义][
三边都不相等的三角形叫做#strong[不等边三角形]．

]
这样三角形又可以按边长分成三类：等边三角形，底边和腰不等的等腰三角形和不等边三角形．

#example[
已知：$O$ 是 $triangle.stroked.t A B C$ 内任一点（图3.35）．

求证：$angle B O C = angle A + angle A B O + angle A C O$.

]
#proof[
引 $A O$ 交 $overline(B C)$ 于 $D$ 点，则 $angle D O B = angle A B O + angle B A O$, $angle D O C = angle A C O + angle C A O$（三角形外角等于不相邻内角和）

$therefore quad angle D O B + angle D O C = angle A B O + angle A C O + angle B A O + angle C A O$（等量加等量和相等）．

$therefore quad angle B O C = angle A + angle A B O + angle A C O$

]
#align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, figure([#fig("3-70");], caption: []), figure([#fig("3-71");], caption: [])));

#example[
在图3.36中．已知：$overline(C D) tack.t overline(A B)$ 于 $D$, $overline(B E) tack.t overline(A C)$ 于 $E$,且 $overline(B E) = overline(C D)$.

求证：$angle A B C = angle A C B$

]
#proof[
在 $triangle.stroked.t A B E$ 与 $triangle.stroked.t A C D$ 中，

$because quad overline(B E) tack.t overline(A C)$ 于 $E$. $overline(C D) tack.t overline(A B)$ 于 $D$（已知）

$therefore quad angle A D C = 90 degree\,quad angle A E B = 90 degree$（垂直定义）．

$therefore quad angle A D C = angle A E B$（等量代换）．

又 $because quad angle A = angle A$（公共角），$overline(B E) = overline(C D)$（已知）

$therefore quad triangle.stroked.t A B E tilde.equiv triangle.stroked.t A C D$ (AAS).

$therefore quad overline(A B) = overline(A C)$（全等三角形的对应边相等）．

$therefore quad angle A B C = angle A C B$.（等腰三角形的两底角相等）．

]
#example[
试证明定理：角平分线上的点与角的两边距离相等．

已知：$B D$ 是 $angle A B C$ 的平分线，$P in B D$, $overline(P E) tack.t B A$ 于 $E$, $overline(P F) tack.t B C$ 于 $F$ (图3.37).求证：$overline(P E) = overline(P F)$.

]
#figure([#fig("3-72");

  ],
  caption: [
  ]
)

#proof[
在 $triangle.stroked.t P E B$ 和 $triangle.stroked.t P F B$ 中，

$because quad B D$ 平分 $angle A B C$（已知），

$therefore quad angle E B P = angle F B P$（角平分线定义）．

又 $because quad overline(P E) tack.t B A$ 于 $E$, $overline(P F) tack.t B C$ 于 $F$（已知），

$therefore quad angle P E B = 90 degree$, $angle P F B = 90 degree$（垂直定义），

$therefore quad angle P E B = angle P F B$（等量代换）．

又 $because quad overline(B P) = overline(B P)$（公共边），

$therefore quad triangle.stroked.t P E B tilde.equiv triangle.stroked.t P F B$ (AAS)

$therefore quad overline(P E) = overline(P F)$（全等三角形的对应边相等）．

]
#blk[定义][
连结多边形的不相邻两个顶点的线段叫做这个多边形的#strong[对角线]．如图3.38中的四边形 $A B C D$ 中就有两条对角线 $overline(A C)$、$overline(B D)$.

]
#align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, figure([#fig("3-73");], caption: []), figure([#fig("3-74");], caption: [])));

#blk[推论][
从 $n$ 边形的一个顶点引对角线，可把这个 $n$ 边形分成 $n - 2$ 个三角形，如图3.39中的五边形 $A B C D E$，从 $A$ 点引对角线 $overline(A C)$、$overline(A D)$，则分成了三个三角形．

]
由此推论不难得出多边形内角和定理：

#blk[多边形内角和定理][
任意 $n$ 边形的内角和等于 $\(n - 2\)times 180 degree$.

]
这个定理请同学们参看图3.40或图3.41自己证明．

#align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, figure([#fig("3-75");], caption: []), figure([#fig("3-76");], caption: [])));

#blk[定义][
多边形内角的一边和另一边的反向延长线所组成的角叫做多边形的#strong[外角]．

]
对于任一个 $n$ 边形每一内角取一个相应的外角，如图3.42中的 $alpha'_1\,alpha'_2\,dots.h\,alpha'_n$,很显然，一个内角与它相应的一个外角和为一个平角，因此：$ \(n - 2\)upright("个平角") + upright("外角和") & = upright("内角和") + upright("外角和")\
 & =\(alpha_1 + alpha_2 + dots.h.c + alpha_n\)+\(alpha'_1 + alpha'_2 + dots.h.c + alpha'_n\)\
 & = n upright("个平角") $ #noindent;$therefore quad upright("外角和") = upright("2个平角") = 360 degree$

因而有多边形外角和定理：

#blk[多边形外角和定理][
任意多边形外角和都等于 $360 degree$

]
#blk[定义][
各边都相等，各角都相等的多边形叫做#strong[正多边形]．

]
#align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, figure([#fig("3-77");], caption: []), figure([#fig("3-78");], caption: [])));

#example[
在图3.43中，已知：$A B C D E$ 是正五边形，对角线 $overline(A D)$、$overline(C E)$ 相交于 $F$.

求证：$triangle.stroked.t A E F$、$triangle.stroked.t D E F$、$triangle.stroked.t C D F$ 都是等腰三角形．

]
#proof[
由多边形内角和公式可知：正五边形的各内角和 $ \(5 - 2\)times 180 degree = 540 degree $ #noindent;由于正五边形各内角相等，

$therefore quad angle A E D = 540 degree times 1 / 5 = 108 degree$

$because quad triangle.stroked.t E A D$ 是等腰三角形，

$therefore quad angle E A D = angle E D A =\(180 degree - 108 degree\)times 1 / 2 = 36 degree$

$because quad triangle.stroked.t D C E$ 也是等腰三角形，$angle D = 108 degree$,

$therefore quad angle D E F = 36 degree$.

$therefore quad angle A E F = 108 degree - 36 degree = 72 degree$

$angle A F E = 180 degree - 36 degree - 72 degree = 72 degree$, $overline(A E) = overline(A F)$.

$therefore quad triangle.stroked.t A E F$ 是等腰三角形．

同理可证 $triangle.stroked.t C D F$ 也是等腰三角形，腰长等于正五边形的边长；$triangle.stroked.t D E F$ 也是等腰三角形．

请同学们用量角器和直尺，划一个正五边形．

]
#example[
已知：正六边形 $A B C D E F$ (图3.44)．

求证：对角线 $overline(A D)$、$overline(B E)$ $overline(C F)$ 相交于一点，且把正六边形 $A B C D E F$ 分割成六个正三角形．

]
#figure([#fig("3-79");

  ],
  caption: [
  ]
)

#proof[
已知 $A B C D E F$ 是正六边形，所以它的每一个内角 $ \(6 - 2\)times 180 degree times 1 / 6 = 120 degree $

以 $overline(A B)$ 为边作正三角形 $A B O$,顶点 $O$ 在正六边形 $A B C D E F$ 内，连结 $overline(O C)$、$overline(O D)$、$overline(O E)$、$overline(O F)$.

$because quad angle B = 120 degree\,quad angle A B O = 60 degree$,

$therefore quad angle O B C = 60 degree$.

又 $because quad overline(O B) = overline(B C)$,

$therefore quad angle B C O = angle B O C = 60 degree$.

$therefore quad triangle.stroked.t O B C$ 也是正三角形．

同理可证：$triangle.stroked.t O C D$、$triangle.stroked.t O D E$、$triangle.stroked.t O E F$、$triangle.stroked.t O F A$ 都是正三角形．由于 $angle A O B + angle B O C + angle C O D = 180 degree$,所以 $A$、$O$、$D$ 在同一条直线上，同理，$B$、$O$、$E$，$C$、$O$、$F$ 也都分别在同一条直线上，所以对角线 $overline(A D)$、$overline(B E)$、$overline(C F)$ 相交于一点 $O$,且把正六边形分隔成六个全等的正三角形．

]
根据例3.21得出的正六边形的性质，请同学们想想，若已知正六边形的边长，如何用圆规和直尺画一个正六边形．

#example[
测量斜面的倾斜角，常用测倾仪（图3.45(1)）．测倾仪悬垂的指针所指的度数，就是倾角的度数，为什么？

#figure([#scale(60%, reflow: true, image("/math2/fig/3-45.png"));

  ],
  caption: [
  ]
)

]
#solution[
为了便于说明，我们将测倾仪指针所指倾角和斜面的斜角位置关系用图3.45(2)来表示，问题便转化为：

已知：$A C tack.t B C$, $A D tack.t B D$.求证：$angle A = angle B$.

]
#proof[
设 $B C$、$A D$ 相交于 $E$ 点．

$because quad A C tack.t B C$（已知），

$therefore quad angle E C A = 90 degree$（垂直定义）．

$therefore quad$ 在 $triangle.stroked.t A C E$ 中，$angle A + angle A E C = 90 degree$（直角三角形两锐角互余）．

同理：$angle B + angle B E D = 90 degree$

又 $because quad angle A E C = angle B E D$（对顶角相等），

$therefore quad angle A = angle B$（等角的余角相等）．

]
这个例题可以写成下面的定理：

#blk[定理][
如果一个锐角的两边分别垂直于另一个锐角的两边，那么这两个锐角相等．

]
根据这个定理很容易证明下面的例题．

#example[
已知：在图3.46中，$angle B A C = 90 degree$, $A D tack.t B C$ 于 $D$ 点．

求证：$angle B = angle C A D$, $angle C = angle B A D$.

]
#proof[
$because quad$ 在 $triangle.stroked.t A B C$ 中，$angle B A C = 90 degree$（已知），

$therefore quad angle B$、$angle C$ 都是锐角（直角三角形中，非直角的两个角都是锐角）．

又 $because quad A D$ 在 $angle B A C$ 的内部，

$therefore quad angle C A D$ 也是锐角（全量大于它的任何一部分）．

由于，$A B tack.t A C$, $A D tack.t B C$,

$therefore quad angle B = angle C A D$.

同理：$angle C = angle B A D$\.（两边分别互相垂直的两个锐角相等）

]
#align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, figure([#fig("3-80");], caption: []), figure([#fig("3-81");], caption: [])));

#example[
已知：$triangle.stroked.t A B C$ 和 $triangle.stroked.t A' B' C'$ 中，$angle A C B = angle A' C' B' = 90 degree$, $overline(A B) = overline(A' B')$, $overline(A C) = overline(A' C')$ (图3.47).

求证：$triangle.stroked.t A B C tilde.equiv triangle.stroked.t A' B' C'$

]
#proof[
根据移形公理，移动 $triangle.stroked.t A' B' C'$,因 $overline(A C) = overline(A' C')$,所以可使 $overline(A' C')$ 与 $overline(A C)$ 重合，并使 $B$、$B'$ 落于 $overline(A C)$ 的两侧．

由于 $angle A C B = angle A C B' = 90 degree$.

$therefore quad angle B C B' = 180 degree$.

$therefore quad B$、$C$、$B'$ 在一条直线上．

在 $triangle.stroked.t A B B'$ 中，

$because quad overline(A B) = overline(A' B') = overline(A B')$,

$therefore quad angle B = angle B'$（等腰三角形的两底角相等）．

在 $triangle.stroked.t A B C$ 和 $triangle.stroked.t A' B' C'$ 中，

$because quad angle A C B = angle A' C' B'$, $angle B = angle B'$, $overline(A B) = overline(A' B')$.

$therefore quad triangle.stroked.t A B C tilde.equiv triangle.stroked.t A' B' C'$ (AAS)

]
由上例可得如下定理：

#blk[定理][
斜边和一直角边对应相等的两个直角三角形全等．

]
#exercise[
+ 求下列各图中的 $angle x$、$angle y$ 的度数．

+ 如果等腰 $triangle.stroked.t A B C$ 的顶角是 $angle C$,

  + 当 $angle C = 40 degree$ 时，求 $angle A$\;

  + 当 $angle C = m degree$ 时，求 $angle B$\;

  + 当 $angle A = 40 degree$ 时，求 $angle C$\;

  + 当 $angle B = n degree$ 时，求 $angle C$.

+ 已知 $triangle.stroked.t A B C$ 中，$overline(A B) = overline(A C)$, $A D$ 是 $angle B A C$ 的外角平分线，求证 $A D pll B C$.

+ 求证：三角形的两个外角的和减去第三个内角等于二个直角．

+ 试证：若三角形的二外角和等于三个直角，此三角形必是直角三角形．

+ 如果等腰三角形的顶角是 $60 degree$,则此三角形为正三角形．

+ 在 $triangle.stroked.t A B C$ 中，$angle A = 25 degree$, $angle B = 68 degree$,经过这个三角形的顶点，作对边的平行线，求这些直线组成的三角形的三内角的度数．

+ 三角形的两个角分别等于 $62 degree$ 和 $72 degree$,从这两个角的顶点作对边的高线，求这两条高线的夹角．

+ 如果一个三角形的任意两个角的和大于 $90 degree$,这个三角形是怎样的三角形？

+ 已知六边形 $A B C D E F$ 中，$angle A = a degree$, $angle B = b degree$, $A F pll C D$, $A B pll D E$,试求图中 $x$、$y$ 的度数．

+ 求七边形与十边形的内角和．

+ 如果多边形的所有内角和等于：$ 1080 degree\,quad 1620 degree\,quad 3960 degree\,quad 1840 degree $#noindent;那么这些多边形各有几条边？

+ 如果多边形的每一个内角都等于：$ 144 degree\,quad 150 degree\,quad 170 degree\,quad 111 degree\,quad 190 degree $ #noindent;那么这些多边形各有几条边？

+ 试证：两条平行线被一条直线所截时，两同旁内角的平分线互相垂直．

+ 设 $overline(C D)$ 和 $overline(A E)$ 是 $triangle.stroked.t A B C$ 的高，求证 $angle B C D = angle B A E$.

+ 试证：等腰三角形两腰上的高线相等．

+ 试证：等腰三角形中，从底的中点到两腰的距离相等．

+ 试证：与角的两边距离相等的点在该角的平分线上．

+ 试证：与线段两端点距离相等的点在该线段的垂直平分线上．

]
#align(center)[
#fig("3-82");

#subcap[
第1题

]
]
#align(center)[
#fig("3-83");

#subcap[
第10题

]
]
#heading(level: 2, numbering: none, supplement: [toc-sub])[习题3.2]

+ 在钝角三角形中，哪一条边最大？为什么？

+ 试证明：三角形最小边总对着锐角．

+ 在 $triangle.stroked.t A B C$ 中，$overline(A B)$ 是最大的边，这个三角形的哪些角可能是锐角，可能是 $angle C$ 吗？

+ 在等腰三角形中，如果它的腰长小于底边的长，它的顶角的大小应当在什么范围内？

+ 证明：在三角形中最小的锐角不大于 $60 degree$.

+ 如图，已知：$angle B = 90 degree$, $D$ 点在 $overline(B C)$ 延长线上

  求证：$overline(A D) > overline(A C)$.

  #align(center)[
  #fig("3-84");

  #subcap[
  第6题

  ]
  ]

+ 证明：直角三角形中斜边比直角边长．

+ 证明：从直线外一点和直线上各点所连线段中，和直线垂直的线段最短．

+ 设 $triangle.stroked.t A B C$ 中的两角 $angle B$ 和 $angle C$ 的平分线相交于 $O$,过 $O$ 作 $overline(B C)$ 的平行线，与 $overline(A B)$、$overline(A C)$ 分别交于 $D$、$E$,则 $overline(D E) = overline(B D) + overline(C E)$.

+ 在直角三角形 $A B C$ 的斜边 $overline(A C)$ 上取两点 $D$、$E$,使 $overline(A D) = overline(A B)$, $overline(C E) = overline(C B)$,求 $angle D B E$ 的度数．

+ 证明：在任一多边形中，锐角不能超过四个．

+ 已知：$triangle.stroked.t A B C$ 中，$A E$ 是 $angle A$ 外角的平分线，且 $A E pll B C$.求证：$overline(A B) = overline(A C)$.

+ 已知：$triangle.stroked.t A B C$ 中，$overline(A B) = overline(A C)$, $angle A = 36 degree$, $overline(B D)$ 是 $angle B$ 的平分线，求证：$overline(A D) = overline(B D) = overline(B C)$, $angle B D C = 2 angle A$

+ 过等腰三角形底边 $overline(B C)$ 上或 $overline(B C)$ 的延长线上任一点 $D$（$overline(B C)$ 的中点除外），作底边 $overline(B C)$ 的垂线，分别交两腰 $overline(A B)$、$overline(A C)$（或延长线）于 $E$、$F$.

  求证：$triangle.stroked.t A E F$ 为等腰三角形．

  #align(center)[
  #fig("3-85");

  #subcap[
  第14题

  ]
  ]

+ 已知：$triangle.stroked.t A B C$ 中，$D in overline(A B)$, $overline(D E) pll overline(A C)$ 交 $overline(B C)$ 于 $E$,并且 $overline(D E)$ 平分 $angle B D C$,求证：$overline(D A) = overline(D C)$.

+ 求图中五角星形的五个角之和．

  #align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, [#fig("3-86");
  
  #subcap[
  第16题
  
  ]], [#fig("3-87");
  
  #subcap[
  第19题
  
  ]]));

+ 已知 $triangle.stroked.t A B C$ 中，$angle B$ 和 $angle C$ 的平分线交于 $P$,引 $P H pll A B$, $P G pll A C$,设 $P H$ 和 $P G$ 交 $overline(B C)$ 于 $H$、$G$,则 $triangle.stroked.t P H G$ 的周长等于 $overline(B C)$.

+ 试证：全等三角形的对应边上的高线相等．

+ 以 $triangle.stroked.t A B C$ 的 $overline(A B)$、$overline(A C)$ 为一边在形外分别作正三角形 $A B D$ 和正三角形 $A C E$,设 $overline(D C)$ 与 $overline(B E)$ 交于 $O$.

  求证：$overline(D C) = overline(B E)$, $angle B O C = 120 degree$.

+ 在线段 $overline(A B)$ 上，取一点 $C$,在 $overline(A B)$ 的同旁作正 $triangle.stroked.t D A C$ 和正 $triangle.stroked.t E C B$, $overline(D B)$、$overline(E A)$ 分别交 $overline(E C)$、$overline(D C)$ 于 $G$、$F$.试证：

  + $angle B D C = angle E A C$

  + $overline(G C) = overline(F C)$

  + $triangle.stroked.t C F G$ 为正三角形

  + $F G pll A B$

#align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, [#fig("3-88");

#subcap[
第20题

]], figure([#fig("3-89");], caption: [])));

== 特殊四边形
=== 平行四边形
#blk[定义][
两组对边分别平行的四边形叫做平行四边形．平行四边形用符号“$pgram$”表示，图3.48中的平行四边形记作“$pgram A B C D$”．

]
我们分析多边形的性质时，基本方法是把它分解为一些三角形，然后利用三角形的性质来研究多边形的性质．

$pgram A B C D$ 的每条对角线都把平行四边形分成一对全等的三角形，并且 $ triangle.stroked.t A O B tilde.equiv triangle.stroked.t C O D\,#h(2em) triangle.stroked.t B O C tilde.equiv triangle.stroked.t D O A $

请同学们利用全等三角形来证明下面平行四边形性质定理：

#blk[平行四边形的性质定理][
平行四边形具有下列性质：

+ 对边相等；

+ 对角相等；

+ 相邻两角互补；

+ 对角线互相平分．

]
#blk[定义][
同时垂直于两条平行线的直线，叫做这两条平行线的#strong[公垂线]．公垂线夹在平行线间的线段叫做#strong[公垂线段]．

]
两条平行线间的公垂线段有无数条，但根据平行四边形的性质可以证明：夹在平行线间的公垂线段处处相等．

#blk[定义][
两条平行线间的公垂线段的长叫做#strong[这两条平行线间的距离]（图3.49）．

]
#figure([#fig("3-90");

  ],
  caption: [
  ]
)

上面讨论了平行四边形的性质，这些性质都是平行四边形的一些必要条件．我们怎样判断一个四边形是平行四边形呢？也就是说一个四边形是平行四边形的充分条件有哪些呢？

#blk[平行四边形判定定理][
四边形满足下列任一条件时，就是平行四边形．

+ 两组对边分别相等；

+ 两组对角分别相等；

+ 一组对边平行且相等；

+ 对角线互相平分．

]
证明时，只要证明两组对边平行即可，我们证明1、2,请同学们自己证明3、4.

已知：四边形 $A B C D$ 中，$overline(A D) = overline(B C)$, $overline(A B) = overline(C D)$ (图3.50).

求证：四边形 $A B C D$ 为平行四边形．

#proof[
连 $overline(B D)$,在 $triangle.stroked.t B A D$ 与 $triangle.stroked.t D C B$ 中，

$because quad overline(A B) = overline(C D)$、$overline(A D) = overline(B C)$（已知），$overline(B D) = overline(B D)$（公共边），

$therefore quad triangle.stroked.t B A D tilde.equiv triangle.stroked.t D C B$ (SSS).

$therefore quad angle 1 = angle 2\,quad angle 3 = angle 4$（全等三角形的对应角相等）．

$therefore quad A D pll B C\,quad A B pll C D$（内错角相等，则两条直线平行）．

$therefore quad$ 四边形 $A B C D$ 为平行四边形（平行四边形定义）．

]
#align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, figure([#fig("3-91");], caption: []), figure([#fig("3-92");], caption: [])));

已知：四边形 $A B C D$ 中，$angle A = angle C$, $angle B = angle D$（图3.51）．

求证：四边形 $A B C D$ 为平行四边形．

#proof[
$because quad angle A + angle B + angle C + angle D = 360 degree$（多边形内角和定理），

又 $because quad angle A = angle C\,quad angle B = angle D$（已知），

$therefore quad 2 angle A + 2 angle B = 360 degree$.

$therefore quad angle A + angle B = 180 degree$.

$therefore quad A D pll B C$（同旁内角互补则两条直线平行）．

同理可证，$A B pll C D$,所以四边形 $A B C D$ 为平行四边形．

]
由平行四边形的性质定理和判定定理可知，在四边形中：

+ 两组对边分别平行；

+ 两组对边分别相等；

+ 两组对角分别相等；

+ 一组对边平行且相等；

+ 对角线互相平分．

这些都分别是平行四边形的充分必要条件．

#example[
已知：$pgram A B C D$,且 $angle A$、$angle B$ 的平分线相交于 $O$,直线 $B O$ 和直线 $A D$ 相交于 $E$\(图3.52).

求证：$triangle.stroked.t A O B$ 是直角三角形；$overline(O B) = overline(O E)$.

]
#proof[
四边形 $A B C D$ 是平行四边形，$therefore quad A D pll B C$,即 $A E pll B C$.

$therefore quad angle 2 = angle A E B$（两条直线平行，内错角相等）．

又 $because quad B E$ 是 $angle A B C$ 的平分线（已知），

$therefore quad angle 1 = angle 2$（角平分线定义）．

$therefore quad angle 1 = angle A E B$（等量代换）．

$therefore quad triangle.stroked.t A B E$ 是等腰三角形（两个角相等的三角形是等腰三角形）．

又 $because quad A O$ 是 $angle D A B$ 的平分线（已知），

$therefore quad A O$ 是 $overline(B E)$ 的垂直平分线（为什么？）．

$therefore quad triangle.stroked.t A O B$ 是直角三角形；$overline(B O) = overline(O E)$.

]
#align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, figure([#fig("3-93");], caption: []), figure([#fig("3-94");], caption: [])));

#example[
从 $pgram A B C D$ 的各顶点作对角线的垂线 $A F$、$B E$、$C G$、$D H$, $E$、$F$、$G$、$H$ 是垂足（图3.53）．

求证：$overline(E F) = overline(G H)$.

]
#proof[
设 $overline(A C)$、$overline(B D)$ 交于 $O$ 点，连 $overline(F H)$, $overline(E G)$.

$because quad$ 四边形 $A B C D$ 是平行四边形（已知），

$therefore quad overline(A D) = overline(B C)$（平行四边形的对边相等），$A D pll B C$（平行四边形定义）．

$therefore quad angle A D F = angle C B G$（两条直线平行，内错角相等），

又 $because quad A F tack.t B D\,quad C G tack.t B D$（已知），

$therefore quad triangle.stroked.t A F D tilde.equiv triangle.stroked.t C G B$ (AAS),

$therefore quad overline(D F) = overline(B G)$

又 $because quad overline(B O) = overline(O D)$（平行四边形的对角线互相平分），

$therefore quad overline(F O) = overline(G O)$（等量减等量差相等）．

同理，$overline(H O) = overline(O E)$.

$therefore quad$ 四边形 $F H G E$ 为平行四边形（对角线互相平分的四边形是平行四边形）．

$therefore quad overline(F E) = overline(G H)$（平行四边形的对边相等）．

]
#blk[定理][
连结三角形任意两边中点的线段平行于第三边，且等于第三边的一半．

]
已知：$D$、$E$ 分别为 $triangle.stroked.t A B C$ 的 $overline(A B)$ 和 $overline(A C)$ 边上的中点（图3.54）

求证：$overline(D E) pll overline(B C)$, $overline(D E) = 1 / 2 overline(B C)$.

#figure([#fig("3-95");

  ],
  caption: [
  ]
)

#proof[
在 $overline(D E)$ 的延长线上，截取 $overline(E F) = overline(D E)$,由于 $overline(A E) = overline(E C)$,

$therefore quad$ 四边形 $A D C F$ 是平行四边形（对角线互相平分的四边形是平行四边形）．

$therefore quad C F pll A D$,即 $C F pll B D$.

但，$overline(C F) = overline(A D)\,quad overline(A D) = overline(B D)$,

$therefore quad overline(C F) = overline(B D)$（等量代换），

$therefore quad$ 四边形 $B C F D$ 是平行四边形（一组对边平行且相等的四边形是平行四边形）．

$therefore quad overline(D F) pll overline(B C)$,即 $overline(D E) pll overline(B C)$.

由于 $overline(D E) = 1 / 2 overline(D F)$, $overline(D F) = overline(B C)$（平行四边形的对边相等），

$therefore quad overline(D E) = 1 / 2 overline(B C)$.

]
#blk[定义][
连结三角形两边中点的线段，叫做#strong[三角形的中位线]．

]
上面的定理又叫做三角形#strong[中位线定理]．

#blk[定义][
如果四边形只有一组对边平行，另一组对边不平行，这个四边形叫做#strong[梯形]．平行的两边叫做梯形的#strong[底]，不平行的两边叫做梯形的#strong[腰]，两腰中点的连线，叫做梯形的#strong[中位线]．两腰相等的梯形叫做#strong[等腰梯形]．

]
#example[
梯形中位线平行于两底且等于两底和的一半．

]
已知：$overline(E F)$ 是梯形 $A B C D$ 的中位线（图3.55）．

求证：$E F pll A D pll B C$，且 $overline(E F) = 1 / 2\(overline(A D) + overline(B C)\)$.

#proof[
由同学自己完成（提示：射线 $A F$ 交 $overline(B C)$ 的延长线于 $G$,则 $overline(E F)$ 转化为 $triangle.stroked.t A B G$ 的中位线）．

]
#align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, figure([#fig("3-96");], caption: []), figure([#fig("3-97");], caption: [])));

#example[
三角形的三条中线相交于一点，这点和各边中点的距离等于这边上中线的三分之一．

]
已知：$overline(A M)$、$overline(B N)$、$overline(C P)$ 为 $triangle.stroked.t A B C$ 的三条中线（图3.56）

求证：$overline(A M)$、$overline(B N)$、$overline(C P)$ 相交于一点 $G$,且 $overline(G M) = 1 / 3 overline(A M)$, $overline(G N) = 1 / 3 overline(B N)$, $overline(G P) = 1 / 3 overline(C P)$.

#proof[
设 $overline(B N)$ 与 $overline(C P)$ 相交于 $G$ 点，作 $overline(P N)$,则 $overline(P N) = 1 / 2 overline(B C)$, $overline(P N) pll overline(B C)$（三角形中位线定理）．

设 $H$、$Q$ 分别为 $overline(B G)$、$overline(C G)$ 的中点，则 $overline(H Q) = 1 / 2 overline(B C)$, $overline(H Q) pll overline(B C)$（三角形中位线定理）．

$therefore quad overline(P N) = overline(H Q)$（等量代换），$overline(P N) pll overline(H Q)$（平行于第三条直线的两条直线平行）．

$therefore quad$ 四边形 $P H Q N$ 为平行四边形（一组对边平行且相等的四边形是平行四边形）．

$therefore quad overline(G H) = overline(G N)\,quad overline(G P) = overline(G Q)$（平行四边形的对角线互相平分）

但 $overline(G H) = overline(H B)$, $overline(G Q) = overline(C Q)$

$therefore quad overline(G N) = overline(G H) = overline(H B) = 1 / 3 overline(B N)$，$overline(G P) = overline(G Q) = overline(Q C) = 1 / 3 overline(C P)$.

这样，中线 $overline(C P)$ 和中线 $overline(B N)$ 相交在这两条中线的三分之一处．用同样的推理又可证明中线 $overline(A M)$ 和中线 $overline(B N)$ 也相交在它们的三分之一处．即点 $G$.

因此，$overline(A M)$、$overline(B N)$、$overline(C P)$ 相交于 $G$,且 $overline(G M) = 1 / 3 overline(A M)$, $overline(G N) = 1 / 3 overline(B N)$, $overline(G P) = 1 / 3 overline(C P)$.

]
#blk[定义][
三角形三条中线的交点叫做三角形的#strong[重心]．

]
#example[
直角三角形的斜边的中点，与三个顶点的距离相等．

]
已知：$triangle.stroked.t A B C$ 中，$angle A C B = 90 degree$, $D$ 是 $overline(A B)$ 的中点（图3.57）．

求证：$overline(C D) = overline(D A) = overline(D B)$.

#proof[
取 $overline(B C)$ 的中点 $E$,连结 $overline(D E)$,

$because quad D$ 是 $overline(A B)$ 的中点，（已知）

$therefore quad overline(D E)$ 是 $triangle.stroked.t A B C$ 的一条中位线．

$therefore quad D E pll A C$（三角形中位线定理）．

$because quad angle A C B = 90 degree$（已知），

$therefore quad angle D E B = 90 degree$.（两条直线平行，则同位角相等），

$therefore quad angle D E B = angle D E C$

又 $because quad overline(D E) = overline(D E)\,quad overline(B E) = overline(E C)$

$therefore quad triangle.stroked.t B D E tilde.equiv triangle.stroked.t C D E$ (SAS)

$therefore quad overline(C D) = overline(D B)$.但 $overline(D B) = overline(D A)$,

$therefore quad overline(C D) = overline(D B) = overline(D A)$.

]
#align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, figure([#fig("3-98");], caption: []), figure([#fig("3-99");], caption: [])));

#example[
在直角三角形中，$30 degree$ 角的对边等于斜边的一半．

]
已知：$triangle.stroked.t A B C$ 中，$angle A C B = 90 degree$, $angle A = 30 degree$（图3.58）

求证：$overline(B C) = 1 / 2 overline(A B)$.

#proof[
取 $overline(A B)$ 的中点 $D$.连结 $overline(C D)$,则 $overline(C D) = overline(D A)$\(例3.29)

$because quad angle A = 30 degree$,

$therefore quad angle A C D = 30 degree$（等腰三角形两底角相等）．

又 $because quad angle B = 90 degree - 30 degree = 60 degree$（直角三角形两锐角互余），

$angle B D C = 60 degree$（三角形的外角等于不相邻的两个内角的和）．

$therefore quad triangle.stroked.t B C D$ 是正三角形（三内角相等的三角形是正三角形）．

$therefore quad overline(B C) = overline(B D) = 1 / 2 overline(A B)$.

]
以上两例的逆命题也是正确的，同学们可自己证明．

#blk[定义][
取两个已知点 $A$、$O$,连结 $overline(A O)$,并延长 $overline(A O)$ 使 $overline(O A') = overline(A O)$,这时我们说 $A'$ 是 $A$ 点关于 $O$ 点的#strong[中心对称点]；$A$、$A'$ 关于 $O$ 点成#strong[中心对称]；$O$ 点叫做两已知点 $A$、$A'$ 的#strong[对称中心]（图3.59）．

]
#figure([#fig("3-100");

  ],
  caption: [
  ]
)

对于任何一个已知图形上的一点，作出它关于某一点 $O$ 的中心对称点，这些对称点的集合，构成了一个新的图形，这个新的图形叫做已知图形的关于 $O$ 点的#strong[中心对称形]，$O$ 点叫做这两个图形的#strong[对称中心]．

例如，已知 $triangle.stroked.t A B C$,我们作顶点 $A$、$B$、$C$ 关于 $O$ 点的中心对称点 $A'\,B'\,C'$,容易证明 $triangle.stroked.t A' B' C'$ 就是 $triangle.stroked.t A B C$ 的关于对称中心 $O$ 的中心对称形（图3.60）．

#align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, figure([#fig("3-101");], caption: []), figure([#fig("3-102");], caption: [])));

从任意两个中心对称形的定义，我们很容易看出：

#blk[][
任意两个中心对称形是全等形．

]
#blk[定义][
如果一个图形上的每一点，关于某一点 $O$ 的中心对称点都还在这个图形上，我们说这个图形是#strong[中心对称形]，$O$ 点叫做图形的#strong[对称中心]．

]
#blk[定理][
平行四边形是中心对称形，它的对称中心是两条对角线的交点．

]
已知：$pgram A B C D$ 的对角线 $overline(A C)$、$overline(B D)$ 相交于 $O$ 点（图3.61）．

求证：$pgram A B C D$ 是中心对称形；$O$ 是对称中心．

#proof[
在 $pgram A B C D$ 上任取一点 $P$,设 $P in overline(A D)$,连结 $overline(P O)$,延长交 $overline(B C)$ 于 $P'$,在 $triangle.stroked.t A O P$ 和 $triangle.stroked.t C O P'$ 中，

$because quad overline(A O) = overline(O C)$（平行四边形对角线互相平分），

$angle 1 = angle 2$（对顶角相等），$angle 3 = angle 4$（两条直线平行，则内错角相等），

$therefore quad triangle.stroked.t A O P tilde.equiv triangle.stroked.t C O P'$ (AAS).

$therefore quad overline(P O) = overline(O P')$（全等三角形的对应边相等），

$therefore quad P'$ 是 $P$ 关于 $O$ 点的中心对称点．

由于上述 $P$ 点是任意选取的，$P$ 点关于 $O$ 的对称点 $P'$ 也在 $pgram A B C D$ 上，所以 $pgram A B C D$ 是中心对称形．$O$ 点是对称中心．

]
由中心对称形的定义，我们还可看出：

平面上的中心对称形，绕着它的对称中心，在平面上旋转 $180 degree$ 后，它的新位置与原来位置重合．例如，我们把上例中的 $pgram A B C D$ 绕 $O$ 点旋转 $180 degree$ 后，则 $A$ 与 $C$ 对换位置，$B$ 与 $D$ 对换位置，这时 $pgram A B C D$ 与原来位置重合．

#blk[定义][
有一个角是直角的平行四边形叫做#strong[矩形]或#strong[长方形]．

有一组邻边相等的平行四边形叫做#strong[菱形]．

有一组邻边相等并且有一个角是直角的平行四边形叫做#strong[正方形]（图3.62）．

]
#figure([#fig("3-103");

  ],
  caption: [
  ]
)

根据定义可知；矩形、菱形、正方形都是平行四边形，所以它们都具有平行四边形的所有性质，另外它们还分别具有下列特殊性质：

#blk[推论1][
矩形的四个角都是直角，并且两条对角线相等．

]
#blk[推论2][
菱形的四条边都相等，且对角线互相垂直并平分每双对角．

]
这个推论的后半部分，就是我们在例3.9中所证的结论．

#blk[推论3][
正方形是矩形又是菱形．即 $ { upright("矩形") } inter { upright("菱形") } = { upright("正方形") } $

]
以上三个推论，同学们作为练习，自己证明．并思考上述三个推论的逆命题是否正确，并证明你的结论．

由上面的三个推论，我们还可推知：

矩形、菱形和正方形是中心对称形又是轴对称形．经过矩形对边中点的两条直线是它的两条对称轴；菱形两条对角线所在的直线是它的对称轴；正方形两条对角线和经过对边中点的两条直线是它的对称轴（图3.63）．

#figure([#fig("3-104");

  ],
  caption: [
  ]
)

#example[
已知：$A B C D$ 是矩形，设各外角的平分线相交于 $E$、$F$、$G$、$H$\(图3.64).

求证：$E F G H$ 是正方形．

]
#figure([#fig("3-105");

  ],
  caption: [
  ]
)

#proof[
延长 $overline(A E)$、$overline(C B)$ 交于 $P$ 点，

$because quad A B C D$ 是矩形，

$therefore quad A D pll B C$,

$therefore quad angle P = angle 3$（两条直线平行同位角相等）．

又 $because quad angle 3 = angle 4 = 45 degree$（矩形外角的一半是 $45 degree$），

$therefore quad angle P = angle 4$,

$therefore quad E H pll F G$（内错角相等两条直线平行）．

同理：$E F pll H G$

$therefore quad$ 四边形 $E F G H$ 是平行四边形#h(1em);①

$because quad angle 1 = angle 2 = 45 degree$,（矩形外角的一半是 $45 degree$），

$therefore quad angle A E B = 90 degree$#h(1em);②，并且 $overline(A E) = overline(B E)$（两个角相等的三角形是等腰三角形），

又 $because quad angle 3 = angle 5 = angle 4 = angle 6$, $overline(A D) = overline(B C)$（矩形的对边相等），

$therefore quad triangle.stroked.t A H D tilde.equiv triangle.stroked.t B F C$（ASA）.

$therefore quad overline(A H) = overline(B F)$（全等三角形的对应边相等）．

$therefore quad overline(A E) + overline(A H) = overline(B E) + overline(B F)$（等量加等量和相等）．

即：$overline(E H) = overline(E F)$#h(1em);③

由①、②、③可知：四边形 $E F G H$ 是正方形（正方形定义）

]
#exercise[
+ $E$、$F$ 是 $pgram A B C D$ 对角线 $overline(B D)$ 上的两点，且 $overline(B E) = overline(D F)$,求证：$overline(A E) = overline(C F)$.

+ 已知 $pgram A B C D$ 中，$E$、$F$ 是 $overline(B D)$ 上的两点，且 $angle B A E = angle D C F$.求证：$overline(B E) = overline(D F)$.

+ 已知：在 $pgram A B C D$ 中，$E$、$F$ 分别是 $overline(A B)$、$overline(C D)$ 上的点，且 $overline(B E) = overline(D F)$.求证：$overline(B F) pll overline(D E)$

+ 已知：$E$、$F$ 是 $pgram A B C D$ 的对边 $overline(A B)$、$overline(C D)$ 的中点，$overline(E F)$ 与 $overline(A C)$ 相交于 $O$.求证：$overline(A O) = overline(C O)$.

+ 已知：$pgram A B C D$ 中 $E$、$F$ 是 $overline(B D)$ 上的两点，且 $overline(B E) = overline(D F)$.求证：四边形 $A E C F$ 是平行四边形.

+ 求证：对角线相等的平行四边形是矩形．

+ 求证：对角线互相垂直的平行四边形是菱形．

+ 已知：$E$、$F$、$G$ 分别是 $triangle.stroked.t A B C$ 三边上的中点．求证：四边形 $A E F G$ 是平行四边形．

+ 已知：等腰 $triangle.stroked.t A B C$, $overline(A B) = overline(A C)$, $E$、$F$、$G$ 是三边上的中点．求证：四边形 $A E F G$ 是菱形．

+ 证明：顺次连结任意四边形四边的中点所成的四边形是平行四边形．

+ 顺次连结平行四边形四边中点所成的四边形是什么图形？证明你的结论．

+ 顺次连结矩形四边中点所成的四边形是什么图形？证明你的结论．

+ 顺次连结菱形四边中点所成的四边形是什么图形？证明你的结论．

+ 顺次连结正方形各边中点所成的四边形是什么图形？证明你的结论．

+ 证明：三角形的三边中点间的线段把三角形分为四个全等形．

+ 证明：等腰梯形的两底角相等．

+ 证明：等腰梯形的两条对角线相等．

+ 等腰梯形的腰等于中位线，周长为24cm.求腰长．

+ 已知梯形 $A B C D$ 中，$overline(A D) pll overline(B C)$, $overline(B C) = 2 overline(A D)$，$A F pll C D$ 交 $overline(B D)$ 于 $O$ 点，$overline(C D) = 6$cm,求 $overline(O F)$ 的长度．

+ 已知：正方形 $A B C D$, $E$、$F$、$G$、$H$ 分别在 $overline(A B)$、$overline(B C)$、$overline(C D)$、$overline(D A)$ 上，并且 $overline(A E) = overline(B F) = overline(C G) = overline(D H)$,求证：四边形 $E F G H$ 是正方形．

]
#align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, [#fig("3-106");

#subcap[
第1、2题

]], [#fig("3-107");

#subcap[
第3题

]]));

#align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, [#fig("3-108");

#subcap[
第5题

]], [#fig("3-109");

#subcap[
第4题

]]));

#align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, [#fig("3-110");

#subcap[
第8题

]], [#fig("3-111");

#subcap[
第9题

]]));

#align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, [#fig("3-112");

#subcap[
第16题

]], [#fig("3-113");

#subcap[
第19题

]]));

=== 等分线段
#blk[平行线等分线段定理][
如果一组平行线在一条直线上截出一组等长的线段，那么在任一条与这组平行线相交的直线上也被截为一组等长的线段．

]
已知：$ell_1 pll ell_2 pll ell_3$,直线 $m$ 与 $ell_1$、$ell_2$、$ell_3$ 分别相交于 $A_1\,A_2\,A_3$ 且 $overline(A_1 A_2) = overline(A_2 A_3)$；任一条直线 $n$ 分别与 $ell_1$、$ell_2$、$ell_3$ 相交于 $B_1\,B_2\,B_3$（图3.65）．

求证：$overline(B_1 B_2) = overline(B_2 B_3)$.

#figure([#fig("3-114");

  ],
  caption: [
  ]
)

#proof[
过 $A_1$、$A_2$ 分别作直线 $n$ 的平行线 $A_1 C_1$、$A_2 C_2$,与 $ell_2$、$ell_3$ 分别交于 $C_1\,C_2$ 两点．在 $triangle.stroked.t A_1 A_2 C_1$ 和 $triangle.stroked.t A_2 A_3 C_2$ 中，

$because quad overline(A_1 A_2) = overline(A_2 A_3)$（已知），$ell_1 pll ell_2 pll ell_3$（已知）．$A_1 C_1 pll n$, $A_2 C_2 pll n$,

$therefore quad A_1 C_1 pll A_2 C_2$（平行于第三条直线的两条直线平行）．

$therefore quad angle 1 = angle 2\,quad angle 3 = angle 4$（两条直线平行同位角相等）．

$therefore quad triangle.stroked.t A_1 A_2 C_1 tilde.equiv triangle.stroked.t A_2 A_3 C_2$ (ASA).

$therefore quad overline(A_1 C_1) = overline(A_2 C_2)$（全等三角形的对应边相等）．但四边形 $A_1 C_1 B_2 B_1$ 和 $A_2 C_2 B_3 B_2$ 都是平行四边形，由于平行四边形对边相等，

$therefore quad overline(A_1 C_1) = overline(B_1 B_2)$, $overline(A_2 C_2) = overline(B_2 B_3)$.

$therefore quad overline(B_1 B_2) = overline(B_2 B_3)$（等量代换）．

]
#blk[推论][
经过三角形一边中点并和另一边平行的直线，平分第三边（图3.66）．

]
应用平行线等分线段定理可以用直尺和圆规任意等分一条线段．

#align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, figure([#fig("3-115");], caption: []), figure([#fig("3-116");], caption: [])));

#example[
已知：$overline(A B)$（图3.67）．

求作：$overline(A B)$ 上的点 $D_1$、$E_1$、$F_1$、$G_1$，使 $overline(A D_1) = overline(D_1 E_1) = overline(E_1 F_1) = overline(F_1 G_1) = overline(G_1 B)$（将 $overline(A B)$ 五等分）．

作法：

+ 作射线 $A C$,

+ 在射线 $A C$ 上截取 $overline(A D) = overline(D E) = overline(E F) = overline(F G) = overline(G H)$,

+ 连结 $B$、$H$,

+ 过各分点 $D$、$E$、$F$、$G$ 分别作 $B H$ 的平行线交 $overline(A B)$ 于 $D_1$、$E_1$、$F_1$、$G_1$,则 $D_1$、$E_1$、$F_1$、$G_1$ 把 $overline(A B)$ 五等分．

证明：略．

]
#exercise[
+ 任划一条 $overline(A B)$,把它三等分．

+ 任划一条 $overline(C D)$,把它五等分．

]
#heading(level: 2, numbering: none, supplement: [toc-sub])[习题3.3]

+ 已知：梯形 $A B C D$ 中，$angle B = 90 degree$, $A D pll B C$, $overline(C D) = 12$cm, $angle B C D = 30 degree$,求一腰 $overline(A B)$ 之长．

+ 已知：矩形 $A B C D$ 中，$overline(A B) = 2 overline(A D)$, $E in overline(C D)$, $angle D A E = 60 degree$.

  求证：$angle C B E = 15 degree$

+ 已知：四边形 $A B C D$ 中，$E$、$F$、$G$、$H$ 分别是 $overline(A B)$、$overline(A C)$、$overline(C D)$、$overline(B D)$ 的中点．

  求证：四边形 $E F G H$ 是平行四边形．

  #align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, [#fig("3-117");
  
  #subcap[
  第3题
  
  ]], [#fig("3-118");
  
  #subcap[
  第4题
  
  ]]));

+ 已知：$E$ 是正方形 $A B C D$ 的边 $overline(B C)$ 的延长线上的一点，且 $overline(C E) = overline(C F)$ 求证：$overline(D E) = overline(B F)$；$D E tack.t B F$.

  #align(center)[
  #fig("3-119");

  #subcap[
  第5题

  ]
  ]

+ 已知：$overline(A M)$ 是 $triangle.stroked.t A B C$ 的中线，四边形 $A B E D$, $A C F G$ 都是正方形．

  求证：$overline(A M) = 1 / 2 overline(D G)$.

  （提示：延长 $overline(A M)$ 到 $N$,使 $overline(M N) = overline(A M)$,考虑 $triangle.stroked.t A D G$ 与 $triangle.stroked.t A B N$ 的关系）

+ 试证：对角线相等且互相平分的四边形是矩形．

+ 已知：$A B C D$ 为平行四边形，且 $overline(A E) = overline(E B)$, $overline(A F) = overline(F D)$,

  求证：$overline(B K) = overline(K L) = overline(L D)$（提示：连 $overline(A C)$,在 $triangle.stroked.t A B C$ 中应用重心定理）

  #align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, [#fig("3-120");
  
  #subcap[
  第7题
  
  ]], [#fig("3-121");
  
  #subcap[
  第8题
  
  ]]));

+ 在 $triangle.stroked.t A B C$ 的外侧，以 $overline(A B)$、$overline(A C)$ 为边分别作正三角形 $A B D$ 和 $A C E$,在内侧以 $B C$ 为边作正 $triangle.stroked.t B C F$.

  求证：四边形 $A E F D$ 为平行四边形．

+ 过平行四边形 $A B C D$ 的对角线 $overline(A C)$ 和 $overline(B D)$ 的交点 $O$ 作一直线，交 $overline(B C)$、$overline(A D)$ 于 $E$、$F$,已知 $overline(B E) = 2$ 米，$overline(A F) = 2.8$ 米，求 $overline(B C)$ 的长．

+ 已知：$E$ 是正方形 $A B C D$ 的对角线 $overline(A C)$ 上的一点，$overline(C E) = overline(B C)$,过 $E$ 作 $E F tack.t overline(A C)$ 交 $overline(A B)$ 于 $F$.

  求证：$overline(A E) = overline(E F) = overline(F B)$.

+ 设 $P$ 点是正方形 $A B C D$ 的 $overline(C D)$ 上的一点，$angle B A P$ 的平分线与 $overline(B C)$ 的交点为 $Q$,那么 $overline(A P) = overline(D P) + overline(B Q)$.

  #align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, [#fig("3-122");
  
  #subcap[
  第11题
  
  ]], [#fig("3-123");
  
  #subcap[
  第12题
  
  ]]));

+ 已知：梯形 $A B C D$ 中，$A B pll C D$, $E$、$F$ 分别是 $overline(A C)$、$overline(B D)$ 的中点，

  求证：$E F pll A B pll D C$；$overline(E F) = 1 / 2\(overline(A B) - overline(D C)\)$

  （提示：引 $overline(C F)$ 交 $overline(A B)$ 于 $M$,先证明 $triangle.stroked.t C F D tilde.equiv triangle.stroked.t M F B$）

+ 有一个角是直角的梯形叫#strong[直角梯形]，在直角梯形 $A B C D$ 中，$A D pll B C$, $angle A = 90 degree$, $angle D = 45 degree$, $overline(C D)$ 的垂直平分线交 $overline(C D)$ 于 $E$,交 $overline(B A)$ 的延长线于 $F$,若 $overline(A D) = a$,求 $overline(B F)$ 的长．

+ 在 $triangle.stroked.t A B C$ 中，$overline(A B) = overline(A C)$, $E$ 是 $overline(A B)$ 中点，$D$ 在 $overline(A B)$ 的延长线上，且 $overline(B D) = overline(A B)$,求证：$overline(C E) = 1 / 2 overline(C D)$.

+ 在四边形 $A B C D$ 中，对角线 $overline(A C)$、$overline(B D)$ 相交于 $E$,且 $overline(A C) = overline(B D)$, $M$、$N$ 分别是 $overline(B C)$、$overline(A D)$ 中点，$overline(M N)$ 分别交 $overline(A C)$、$overline(B D)$ 于 $F$、$G$,求证 $overline(E F) = overline(E G)$.

+ 已知：$overline(B D)$ 是直角三角形 $A B C$ 的斜边 $overline(A C)$ 上的中线，过 $A$ 点作 $A Q pll D B$ 交 $overline(C B)$ 延长线于 $Q$.

  求证：$overline(A Q) = overline(A C)$.

== 面积与勾股定理
=== 面积的基本性质和面积单位
在第一章里我们已经谈到长度，角度的概念，现在让我们再来分析一下“面积”这个基本的几何量．度量面积通常取边长为一个长度单位的正方形做面积单位．例如，我们把每边长为一厘米的正方形的面积叫做一平方厘米．

#figure([#fig("3-124");

  ],
  caption: [
  ]
)

度量图形面积的大小，实际上就是求出这个图形包含多少个面积单位．也就是求这个图形所含单位面积的量数，这个量数是个正实数．

由面积单位的直观含义，我们可看到面积这个几何量应该具有下列基本性质：

+ 设 $R$ 和 $R'$ 是两个可以完全叠合的“平面区域”（图3.69），即 $R$ 和 $R'$ 的形状大小完全一致，则 $R$ 和 $R'$ 的面积显然相等．

  #figure([#scale(80%, reflow: true, image("/math2/fig/3-69.png"));

    ],
    caption: [
    ]
  )

  #figure([#scale(80%, reflow: true, image("/math2/fig/3-70.png"));

    ],
    caption: [
    ]
  )

+ 面积的可加性：设区域 $R_1$, $R_2$ 是由区域 $R$ 分割而成（图3.70），或者说区域 $R_1$、$R_2$ 拼成区域 $R$,则 $R$ 的面积为 $R_1$, $R_2$ 的面积之和．

+ 设区域 $T$ 是区域 $R$ 的一部分，也就是区域 $R$ 包含区域 $T$,则有：$T$ 的面积 $< R$ 的面积（图3.71）．例如在图3.72中，正方形 $A B C D$ 的面积 $<$ 圆的面积 $<$ 正方形 $A' B' C' D'$ 的面积．

#align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, figure([#scale(80%, reflow: true, image("/math2/fig/3-71.png"));], caption: []), figure([#fig("3-125");], caption: [])));

#blk[定义][
如果两个平面图形的面积相等，我们说它们是等积图形．

]
以后我们说两条线段的积或比，都是指它们的长度的积或比；我们说两个图形面积的比是这两个图形面积所对应的实数比．

#exercise[
+ 请同学自己填写下面常用的面积单位：

  + 一平方公里($upright(k m)^2$)$= underline(#h(2em) #h(2em))$ 平方米($upright(m)^2$)

  + 一平方米($upright(m)^2$)$= underline(#h(2em) #h(2em))$ 平方分米($upright(d m)^2$)

  + 一平方分米($upright(d m)^2$)$= underline(#h(2em) #h(2em))$ 平方厘米($upright(c m)^2$)

  + 一平方厘米($upright(c m)^2$)$= underline(#h(2em) #h(2em))$ 平方毫米($upright(m m)^2$)

  + 一平方丈 $= underline(#h(2em) #h(2em))$ 平方尺

  + 一平方尺 $= underline(#h(2em) #h(2em))$ 平方寸

  + 一平方寸 $= underline(#h(2em) #h(2em))$ 平方分

  + 一平方米 $= underline(#h(2em) #h(2em))$ 平方尺

  + 一分 $= underline(#h(2em) #h(2em))$ 平方尺 $= underline(#h(2em) #h(2em))$ 厘

  + 一平方米 $= underline(#h(2em) #h(2em))$ 亩

+ 工程技术人员通常用“加半移三”的办法把平方米数换算成亩数，即把平方米数加上它的一半，小数点再向左移三位即得亩数，请同学把上面这段话用代数式表达出来，并给出证明．

+ 把下列各平方米数用口算化成亩．$ 4500 upright(m^2)\;quad 6000 upright(m^2)\;quad 380 upright(m^2)\;quad 28000 upright(m^2) $

]
=== 长方形面积
长方形的一组邻边分别叫做长和宽．

设长方形 $A B C D$\(图3.73),长 $overline(A B) = a$,宽 $overline(B C) = b$,则长方形面积 $=$ 长 $times$ 宽 $= a b$.

#figure([#fig("3-126");

  ],
  caption: [
  ]
)

上面这个公式，同学们在小学就已经学过了．虽然如此，我们不妨问问同学：你们知道这个公式成立的理由吗？可能会有许多同学觉得这个问题太简单了，其实要严格证明这个公式并不那么简单．当 $a\,b$ 是正整数时，的确是对的．例如，$a = 4$, $b = 3$,那么 $overline(A B)$ 的长正好是4个单位长，$overline(B C)$ 长正好是3个单位长，$A B C D$ 正好被12个单位正方形填满．可是，$overline(A B)$、$overline(B C)$ 的长不见得都能用整数表示，甚至有的线段长不能用有理数来表示，那么上述公式当 $a$、$b$ 不是正整数时是否还成立呢？所以长方形面积的讨论并不是同学想像的那么简单，以至我们现在还不能严格证明它．下面我们仅对 $a$、$b$ 都是整数或都是分数时加以证明．

+ $a = n$, $b = m$, $n$、$m$ 为正整数，长方形 $A B C D$ 可分成 $n times m$ 个单位正方形，所以面积为 $n dot.op m = a dot.op b$

+ $a$、$b$ 都是分数，不妨设它们的分母相同，设 $a = m / n$, $b = ell / n$，这时两个分数单位都是 $1 / n$ 单位长，$a = m$ 个 $1 / n$，$b = ell$ 个 $1 / n$．

  我们把长度单位等分为 $n$ 段（图3.74），单位正方形被分割为 $n^2$ 个边长为 $1 / n$ 长度单位的小正方形．所以边长为 $1 / n$ 的小单位正方形面积是原单位正方形面积的 $1 / n^2$，长方形的长 $a$ 为 $m$ 个 $1 / n$ 长，宽为 $ell$ 个 $1 / n$ 长，我们把长方形 $A B C D$ 分割成 $m times ell$ 个边长为 $1 / n$ 的小正方形（图3.75），所以该长方形面积为 $m times ell$ 个（$1 / n^2$ 单位面积），即 $m / n dot.op ell / n$ 个单位面积．所以长方形面积 $= a dot.op b = m / n dot.op ell / n$

+ $a$、$b$ 都是实数时，长方形的面积仍等于长 $times$ 宽．这到高中我们才能证明它．

#align(center, grid(columns: (40%, 55%,), column-gutter: 0.35em, align: center + bottom, figure([#fig("3-127");], caption: []), figure([#fig("3-128");], caption: [])));

有了长方形面积公式后，一些其他与长方形有关连的图形的面积就很容易求得．

平行四边形的一边叫底，这条边与其对边之间的公垂线段叫做高．

#blk[定理][
平行四边形的面积等于底 $times$ 高.

]
已知：平行四边形 $A B C D$ 中，设底 $overline(A B) = a$,高 $overline(B E) = h$（图3.76）

求证：$pgram A B C D$ 的面积 $= a dot.op h$.

#figure([#fig("3-129");

  ],
  caption: [
  ]
)

#proof[
引 $A F tack.t A B$ 交 $C D$ 的延长线于 $F$,则 $A F pll B E$,四边形 $A B E F$ 是矩形（为什么？）．

在直角三角形 $A D F$ 与 $B C E$ 中，

$because quad overline(A F) = overline(B E)\,quad overline(A D) = overline(B C)$,

$therefore quad triangle.stroked.t A D F tilde.equiv triangle.stroked.t B C E$（为什么？）

$therefore quad triangle.stroked.t A D F$ 的面积 $= triangle.stroked.t B C E$ 的面积（性质1）

$therefore quad pgram A B C D$ 的面积 $= triangle.stroked.t C B E$ 的面积 $+$ 四边形 $A B E D$ 的面积，（性质2）

$therefore quad pgram A B C D$ 的面积 $= triangle.stroked.t A D F$ 的面积 $+$ 四边形 $A B E D$ 的面积 $=$ 矩形 $A B E F$ 的面积 $= a dot.op h$.

]
#blk[推论1][
等底等高的平行四边形等积

]
#blk[推论2][
任何两个平行四边形面积的比等于其底与高的积的比．

]
#blk[推论3][
等底平行四边形的面积的比等于其高的比．

]
#blk[推论4][
等高的平行四边形面积的比，等于其底的比．

]
从三角形某顶点向对边作高，则对边就叫做底．

#blk[定理][
三角形的面积等于底 $times$ 高的一半.

]
已知：$triangle.stroked.t A B C$ 中底 $overline(A B) = a$, $overline(A B)$ 边上的高 $overline(C E) = h$（图3.77）．

求证：$triangle.stroked.t A B C$ 的面积 $= 1 / 2 a h$.

#figure([#fig("3-130");

  ],
  caption: [
  ]
)

#proof[
引 $B D pll A C$, $C D pll A B$, $C D$、$B D$ 交于 $D$,（图3.77）则 $A B D C$ 为平行四边形．

但 $pgram A B D C$ 的面积 $= a dot.op h$,

$pgram A B D C$ 的面积 $= 2 times triangle.stroked.t A B C$ 的面积，

$therefore quad triangle.stroked.t A B C$ 的面积 $= 1 / 2 a h$.

]
#blk[推论1][
等底等高的三角形等积．

]
#blk[推论2][
任何两个三角形面积的比等于底与高的积的比．

]
#blk[推论3][
等底的三角形的面积的比等于其高的比；等高的三角形的面积的比等于其底的比．

]
梯形两底之间的任一条公垂线段都叫做#strong[梯形的高]．

#blk[定理][
梯形的面积等于两底和与高的积的一半．

]
请同学给出证明．

#blk[推论][
梯形的面积等于高与它的中位线的积．

]
#align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, figure([#fig("3-131");], caption: []), figure([#fig("3-132");], caption: [])));

#example[
已知：五边形 $A B C D E$\(图3.79).

求作：一个三角形和五边形 $A B C D E$ 等积．

]
作法：作 $overline(D B)$、$overline(D A)$,过顶点 $C$、$E$,引 $C G$ 和 $E F$,分别平行于 $D B$ 和 $D A$,直线 $A B$ 分别交 $C G$ 和 $E F$ 于 $G$、$F$ 两点，则 $triangle.stroked.t D F G$ 为所求的三角形．

#proof[
$because quad triangle.stroked.t D B C$ 的面积 $= triangle.stroked.t D B G$ 的面积，$triangle.stroked.t D A E$ 的面积 $= triangle.stroked.t D F A$ 的面积（等底等高）．

因此：$ upright("五边形") A B C D E upright("的面积") & =\(triangle.stroked.t D A B + triangle.stroked.t D A E + triangle.stroked.t D B C\)upright("的面积")\
 & =\(triangle.stroked.t D A B + triangle.stroked.t D F A + triangle.stroked.t D B G\)upright("的面积")\
 & = triangle.stroked.t D F G upright("的面积") $

]
#rmk[
本题解法不是唯一的（想想为什么？）

]
#exercise[
+ 求证：如果两个三角形有公共底边，它们的另一对顶点同在底边的一条平行线上，那么这两个三角形等积．

+ 求证：平行四边形的两条对角线将它分成四个等积三角形．

+ 求证：如果两个三角形有两边对应相等，并且它们的夹角互补，那么这两个三角形等积.

+ 证明一梯形两底的中点间的线段分梯形为两个等积形．

+ 已知一等腰直角三角形的斜边是18米，求它的面积．

+ 经过 $pgram A B C D$ 的对角线 $overline(A C)$ 上的一点 $P$ 作两条边的平行线 $overline(E F)$, $overline(G H)$（如图），则 $pgram G B E P$ 和 $pgram F P H D$ 等积．

+ 经过 $pgram A B C D$ 的顶点 $D$ 的任一直线设与 $overline(B C)$、$overline(A B)$ 或者它们的延长线分别交于 $Q$、$P$,则 $triangle.stroked.t A B Q$ 和 $triangle.stroked.t P Q C$ 等积．

+ 求作一直角三角形和已知正方形等积．

+ 求作一个三角形和已知矩形等积．

+ 求作一个三角形和已知四边形等积．

+ 求作一等腰三角形和已知不等边三角形等积．

]
#align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, [#fig("3-133");

#subcap[
第6题

]], [#fig("3-134");

#subcap[
第7题

]]));

=== 勾股定理
我国古代约二千年前就掌握了直角三角形三边之间的关系．中国古算书记载有“勾三股四弦五”的规律．我国通常把直角三角形中较短的直角边叫做勾，较长的直角边叫做股，斜边叫做弦（图3.80）．那么“勾三股四弦五”的意思是：如果一个直角三角形的两条直角边长是3和4个长度单位，那么斜边长一定是5个长度单位，3、4、5三个数之间满足关系：$ 3^2 + 4^2 = 5^2 $ #noindent;这就是说以3、4为边长的两个正方形的面积的和正好等于以5为边长的正方形的面积（图3.81）

#align(center, grid(columns: (35%, 58%,), column-gutter: 0.35em, align: center + bottom, figure([#fig("3-135");], caption: []), figure([#fig("3-136");], caption: [])));

由“勾三股四弦五”可以归纳出一般规律：

#blk[勾股定理][
直角三角形中，两条直角边的平方和等于斜边的平方．

]
已知：直角三角形中，勾长是 $a$,股长是 $b$,斜边长是 $c$（图3.82）．

求证：$a^2 + b^2 = c^2$.

#proof[
以 $a + b$ 为边长作正方形 $A B C D$,在 $overline(A B)$、$overline(B C)$、$overline(C D)$、$overline(D A)$ 各边上分别截取 $overline(A E) = overline(B F) = overline(C G) = overline(D H) = a$,于是，$overline(E B) = overline(F C) = overline(G D) = overline(H A) = b$.因为 $angle A = angle B = angle C = angle D = 90 degree$ 所以，$triangle.stroked.t A E H tilde.equiv triangle.stroked.t B F E tilde.equiv triangle.stroked.t C G F tilde.equiv triangle.stroked.t D H G$（图3.82）.

并且，这四个全等的直角三角形的斜边全是 $c$.又因为直角三角形中的两锐角互余，所以：$ alpha + beta = 90 degree $ #noindent;但 $alpha + beta + gamma = 180 degree$

$therefore quad gamma = 90 degree$.

由正方形的定义可知四边形 $E F G H$ 是正方形．正方形 $A B C D$ 的面积是 $\(a + b\)^2$ 或 $4 times 1 / 2 a b + c^2$.

所以 $ \(a + b\)^2 = 4 times 1 / 2 a b + c^2 $ #noindent;展开得：$ a^2 + 2 a b + b^2 = 2 a b + c^2 $ #noindent;即 $ a^2 + b^2 = c^2 $

]
#align(center, grid(columns: (38%, 58%,), column-gutter: 0.35em, align: center + bottom, figure([#fig("3-137");], caption: []), figure([#fig("3-138");], caption: [])));

我国古代算学家对这个定理作了各种证明，上面的证法只是其中的一种．作为例子，我们再介绍一种勾股定理的欧几里得的证法．

如图3.83所示，在 $triangle.stroked.t A B C$ 中，$angle A B C = 90 degree$.以 $triangle.stroked.t A B C$ 的各边为一边，分别在 $triangle.stroked.t A B C$ 的外侧作正方形 $A E D C$, $B C F G$, $A B H K$.引 $B L tack.t E D$,分别交 $overline(E D)$、$overline(A C)$ 于 $L$、$I$,则 $B L pll A E$.

作 $overline(K C)$、$overline(B E)$.

$because quad overline(A B) = overline(A K)\,quad overline(A C) = overline(A E)\,quad angle K A C = angle E A B$,

$therefore quad triangle.stroked.t A B E tilde.equiv triangle.stroked.t A K C$（SAS）

$because quad triangle.stroked.t A B E$ 与矩形 $A E L I$ 等底等高，$triangle.stroked.t A K C$ 与正方形 $A B H K$ 等底等高，

$therefore quad triangle.stroked.t A B E$ 的面积 $= 1 / 2$ 矩形 $A E L I$ 的面积

$triangle.stroked.t A K C$ 的面积 $= 1 / 2$ 正方形 $A B H K$ 的面积．

$therefore quad$ 矩形 $A E L I$ 的面积 $=$ 正方形 $A B H K$ 的面积．

同理可证：矩形 $C I L D$ 的面积 $=$ 正方形 $B C F G$ 的面积．

但：正方形 $A E D C$ 的面积 $=$ 矩形 $A E L I$ 的面积 $+$ 矩形 $C I L D$ 的面积．

$therefore quad$ 正方形 $A E D C$ 的面积 $=$ 正方形 $A B H K$ 的面积 $+$ 正方形 $B C F G$ 的面积．即 $ overline(A C)^2 = overline(A B)^2 + overline(B C)^2 $ #noindent;这就证明了勾股定理．

比较这两种证法，我们看到我国古代的证明法用了代数知识：$\(a + b\)^2 = a^2 + 2 a b + b^2$,比较简捷明了，而古希腊的证法，要用到等积变形，比较复杂．

勾股定理揭示了直角三角形三边之间的关系，如果知道了直角三角形任意两边的长度，应用勾股定理便可计算出第三边的长．

#example[
已知：直角 $triangle.stroked.t A B C$, $angle B = 90 degree$, $overline(A B) = 12$cm, $overline(B C) = 5$cm (图3.84).

求：$overline(A C)$ 之长．

]
#solution[
设 $overline(A C)$ 的长为 $x$cm,根据勾股定理：$ x^2 = 5^2 + 12^2 quad arrow.r.double quad x^2 = 169 $ #noindent;$because quad x > 0\,#h(2em) therefore quad x = 13\(upright(c m)\)$

]
#align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, figure([#fig("3-139");], caption: []), figure([#fig("3-140");], caption: [])));

#example[
将长为5米的梯子 $overline(A C)$ 斜靠在墙上，$overline(B C)$ 长为2米，求地面到梯子上端高 $overline(A B)$ 之长（精确到0.01米）（图3.85）.

]
#solution[
设 $overline(A B)$ 的长为 $x$（米），由于 $triangle.stroked.t A B C$ 是直角三角形，且以 $overline(A C)$ 为斜边；根据勾股定理有，$ x^2 + 2^2 = 5^2 quad arrow.r.double quad x^2 = 25 - 4 = 21 $

$because quad x > 0$

$therefore quad x = sqrt(21) approx 4.58$（米）．

答：地面到梯子上端高 $overline(A B)$ 之长约等于4.58米．

]
#blk[勾股定理逆定理][
如果三角形的三边 $a$、$b$、$c$ 满足条件 $a^2 + b^2 = c^2$,那么 $c$ 边所对的角是直角．

]
#proof[
设 $triangle.stroked.t A B C$ 的三边满足 $a^2 + b^2 = c^2$\(图3.86).另作一个直角三角形 $A' B' C'$，使 $angle C' = 90 degree$, $overline(B' C') = a$, $overline(A' C') = b$.根据勾股定理，$ overline(A' B')^2 = a^2 + b^2 $ #noindent;但 $ overline(A' B')^2 = c^2 $

$therefore quad overline(A' B') = c$.

$therefore quad triangle.stroked.t A B C tilde.equiv triangle.stroked.t A' B' C'$ (SSS)

$therefore quad angle C = angle C' = 90 degree$

]
#figure([#fig("3-141");

  ],
  caption: [
  ]
)

#blk[广义勾股定理][
平行四边形两条对角线的平方和等于它的四边的平方和，或等于相邻两边平方和的二倍．

]
已知：平行四边形 $A B C D$ (图3.87).

求证：$overline(A C)^2 + overline(B D)^2 = overline(A B)^2 + overline(B C)^2 + overline(C D)^2 + overline(D A)^2 = 2 (overline(A B)^2 + overline(B C)^2)$

#proof[
设 $angle B$ 为锐角，分别由 $A$、$D$ 向边 $overline(B C)$ 及其延长线作垂线 $A E$、$D F$.

$because quad overline(A B) = overline(C D)\,quad angle B = angle D C F\,quad angle A E B = angle D F C = 90 degree$,

$therefore quad triangle.stroked.t A B E tilde.equiv triangle.stroked.t D C F$ (AAS)

在直角三角形 $A B E$、$A C E$、$D B F$ 中，由勾股定理可以得到：

#numbered-align(($overline(A B)^2$, $zws = overline(A E)^2 + overline(B E)^2$, true), ($overline(A C)^2$, $zws = overline(A E)^2 + overline(E C)^2 = overline(A E)^2 + (overline(B C) - overline(B E))^2$, true), ($overline(B D)^2$, $zws = overline(B F)^2 + overline(D F)^2 = (overline(B C) + overline(C F))^2 + overline(D F)^2$, true));

$\(3.2\)+\(3.3\)$ 得：$ overline(A C)^2 + overline(B D)^2 & = (overline(B C) - overline(B E))^2 + (overline(B C) + overline(C F))^2 + 2 overline(A E)^2\
 & = 2 (overline(B C)^2 + overline(B E)^2 + overline(A E)^2)\
 & = 2 (overline(B C)^2 + overline(A B)^2)\
 & = overline(A B)^2 + overline(B C)^2 + overline(C D)^2 + overline(D A)^2 $

]
#align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, figure([#fig("3-142");], caption: []), figure([#fig("3-143");], caption: [])));

当平行四边形为矩形时（图3.88），由于矩形两条对角线相等，上面的关系式转化为：$ 2 overline(A C)^2 = 2 (overline(A B)^2 + overline(B C)^2) $ #noindent;即 $ overline(A C)^2 = overline(A B)^2 + overline(B C)^2 $ #noindent;这恰好符合勾股定理．因此，一般平行四边形对角线与边的关系可看成广义勾股定理．

#example[
已知：$triangle.stroked.t A B C$ 的三边长 $overline(B C) = a$, $overline(A C) = b$, $overline(A B) = c$（图3.89）．

求：三角形三边上中线长 $m_a$、$m_b$、$m_c$.

]
#solution[
以 $triangle.stroked.t A B C$ 的边 $overline(A B)$, $overline(A C)$ 为邻边作平行四边形 $A B D C$,对角线 $overline(A D)$、$overline(B C)$ 相交于 $M$,则 $overline(A M)$ 为 $triangle.stroked.t A B C$ 中 $overline(B C)$ 边上的中线，它为 $overline(A D)$ 长的一半，由广义勾股定理知：$ overline(A D)^2 + overline(B C)^2 = 2 (overline(A B)^2 + overline(A C)^2) $ #noindent;即 $ 4 overline(A M)^2 + a^2 = 2\(b^2 + c^2\) $ #noindent;$therefore quad overline(A M)^2 = 1 / 4 times\[2\(b^2 + c^2\)- a^2\]$ $ A M = 1 / 2 sqrt(2\(b^2 + c^2\)- a^2) $ #noindent;即：$m_a = 1 / 2 sqrt(2\(b^2 + c^2\)- a^2)$

同理可得：$ m_b = 1 / 2 sqrt(2\(a^2 + c^2\)- b^2)\,#h(2em) m_c = 1 / 2 sqrt(2\(a^2 + b^2\)- c^2) $

]
#align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, figure([#fig("3-144");], caption: []), [#fig("3-145");

#subcap[
第1题

]]));

#exercise[
+ 在 $triangle.stroked.t A B C$ 中，$angle C$ 是直角．

  + 已知 $overline(B C) = 6$, $overline(A C) = 8$,求 $overline(A B)$ 之长．

  + 已知 $overline(A B) = 25$, $overline(B C) = 14$,求 $overline(A C)$ 之长．

  + 已知 $overline(A C) = 13$, $overline(A B) = 19$,求 $overline(B C)$ 之长．

+ 已知等腰直角三角形的直角边长是 $a$,求底边．

+ 正方形一边长为10寸，求对角线长．

+ 矩形相邻两边为 $a$、$b$ 时，求对角线长．

+ 已知等边三角形的边长为 $a$,求等边三角形一边上的高和这等边三角形的面积．

+ 求出对角线为 $d$ 的正方形的边长．

+ 作一个三角形，使三边长为3cm, 4cm, 5cm,边长为5cm的边所对的角是不是直角？为什么？

+ 设三角形的三边等于下列各组数，判断各三角形是否是直角三角形：

  #cols(2)[
  + 7、8、10;

  + 3、5、4;

  + 5、12、13;

  + 4、8、10.

  ]

+ 用勾股定理证明：斜边和一直角边对应相等的两直角三角形全等．

+ 已知一等边三角形的高是 $4 sqrt(3)$,求面积．

+ 等腰三角形的腰长是20厘米，底长是32厘米，求它的面积．

+ 在 $triangle.stroked.t A B C$ 中关系式 $overline(A C)^2 + overline(B C)^2 = overline(A B)^2$ 是 $angle C = 90 degree$ 的什么条件？

]
#heading(level: 2, numbering: none, supplement: [toc-sub])[习题3.4]

+ 把梯形分割成直角三角形，矩形．由直角三角形、矩形的面积公式推导出梯形的面积公式．

+ 如果过一个四边形的各顶点分别引直线平行于它的对角线，则由这些直线所组成的平行四边形的面积是已知四边形面积的2倍．

+ 在直角三角形的各边上，分别向外侧作一个正方形，连结每相邻的两个正方形的最近的两个顶点，得三个三角形等积．

+ 已知：$a$、$b$、$c$ 分别为直角三角形勾、股、弦长，

  + $a = 3$, $b = 4$,求 $c$.

  + $c = 25$, $b = 14$,求 $a$.

  + $a = 13$, $c = 19$,求 $b$.

  #align(center)[
  #fig("3-146");

  #subcap[
  第5题

  ]
  ]

+ 像图中那样作出一系列的直角三角形，$overline(A B_2)$、$overline(A B_3)$、$overline(A B_4)$、$overline(A B_5)$ 分别是 $overline(A B_1)$ 的多少倍？

+ 设 $P$ 是矩形 $A B C D$ 内的一点，则 $overline(P A)^2 + overline(P C)^2 = overline(P B)^2 + overline(P D)^2$.

+ 设 $P$ 是等腰直角三角形 $A B C$ 的斜边 $overline(B C)$ 上的任意一点，求证 $overline(B P)^2 + overline(C P)^2 = 2 overline(A P)^2$

+ 三角形的三边长分别是2cm、3cm、4cm,求三条中线的长．

+ 一矩形的两边分别是16米和12米，在它的对角线上作一个三角形与这个矩形等积．并求出所作三角形的高（按1:400画图）．

+ 一菱形两条对角线之和是24尺，它们的比是3:5,求菱形的面积．

+ 菱形的周长为16cm,其中一个内角为 $150 degree$,求它的面积．

+ 菱形的周长为20cm,面积是24cm$""^2$,求它的对角线的长．

+ 在等腰梯形 $A B C D$ 中，$A B pll C D$, $angle A = 60 degree$, $B D$ 平分 $angle B$,且梯形周长为20cm,求梯形的面积．

== 相似形
=== 成比例的线段
#blk[定义][
用同样的长度单位去量两条已知线段，所得量数的比叫做两条线段的比．它是一个正实数．

]
例如，$overline(A B) = 4$ 厘米，$overline(C D) = 2$ 厘米，则 $overline(A B) : overline(C D) = 4 : 2 = 2 : 1$.

上式也可写成：$ overline(A B) / overline(C D) = 4 / 2 = 2 / 1 $ #noindent;$overline(A B)$ 叫做比的#strong[前项]，$overline(C D)$ 叫做比的#strong[后项]．

根据分数的基本性质可知，两条线段的比和选择的长度单位无关．

#blk[定义][
四条线段 $a$、$b$、$c$、$d$,如果满足等式 $a : b = c : d$（或 $a / b = c / d$），就说这#strong[四条线段成比例]．$a$、$b$、$c$、$d$ 分别叫做比例第一、二、三、四项．第一和第四两项叫做#strong[比例外项]，第二第三两项叫做#strong[比例内项]．

]
#blk[定义][
三条线段 $a$、$b$、$c$,如果满足等式 $a : b = b : c$（或 $a / b = b / c$），$b$ 就叫做 $a$、$c$ 的#strong[比例中项]，$c$ 叫做 $a$、$b$ 的#strong[比例第三项]．

]
成比例的量有下面几条重要性质（下面所有字母都代表不等于0的数）．

#blk[性质1：比例的基本性质][
$ a / b = c / d quad arrow.l.r.double quad a d = b c $

]
#blk[性质2：反比定理][
$ a / b = c / d quad arrow.r.double quad b / a = d / c $

]
#blk[性质3：更比定理][
$ a / b = c / d quad arrow.r.double quad a / c = b / d $

]
#blk[性质4：合比定理][
$ a / b = c / d quad arrow.r.double quad frac(a + b, b) = frac(c + d, d) $

]
#blk[性质5：分比定理][
$ a / b = c / d quad arrow.r.double quad frac(a - b, b) = frac(c - d, d) $

]
#blk[性质6：等比定理][
$ a / b = c / d = e / f = dots.h.c = r / s quad arrow.r.double quad frac(a + c + e + dots.h.c + r, b + d + f + dots.h.c + s) = a / b = c / d = dots.h.c = r / s $ #noindent;其中：$b + d + f + dots.h.c + s eq.not 0$

]
我们只证明1和6，其余定理作为练习，同学们自己证明．

#proof[
证明性质1：

#block[
#set enum(numbering: enum-at(1, "(i)"))
+ 先证 $a / b = c / d$ 是 $a d = b c$ 的充分条件．

  因为已知 $a / b = c / d$，所以两边同乘以 $b d$,即得 $a d = b c$.

+ 再证 $a / b = c / d$ 是 $a d = b c$ 的必要条件．

  因为已知 $a d = b c$,所以两边同除以 $b d$,即得 $a / b = c / d$．
]

由(i)、(ii)所以有：$ a / b = c / d quad arrow.l.r.double quad a d = b c $

证明性质6：

设 $a / b = c / d = e / f = dots.h.c = r / s = k$，则 $ a = b k\,c = d k\,e = f k\,dots.h\,r = s k $ #noindent;将上面诸式相加得：$ a + c + e + dots.h.c + r = k\(b + d + f + dots.h.c + s\) $ #noindent;因为 $b + d + f + dots.h.c + s eq.not 0$，所以 $ frac(a + c + e + dots.h.c + r, b + d + f + dots.h.c + s) & = k\
 & = a / b = c / d = e / f\
 & = dots.h.c = r / s $

]
#example[
已知：在图3.90中，$overline(A E) / overline(A D) = overline(B E) / overline(B C)$

求证：$overline(A D) / overline(A E) = overline(B C) / overline(B E)$\; $overline(A E) / overline(E D) = overline(B E) / overline(E C)$\; $overline(A E) / overline(B E) = overline(E D) / overline(E C)$

]
#figure([#fig("3-147");

  ],
  caption: [
  ]
)

#proof[
+ $because quad overline(A E) / overline(A D) = overline(B E) / overline(B C)$

  $therefore quad overline(A D) / overline(A E) = overline(B C) / overline(B E)$（反比定理）

+ $because quad overline(A D) / overline(A E) = overline(B C) / overline(B E)$

  $therefore quad frac(overline(A D) - overline(A E), overline(A E)) = frac(overline(B C) - overline(B E), overline(B E))$（分比定理）

  即：$overline(E D) / overline(A E) = overline(E C) / overline(B E)$

  $therefore quad overline(A E) / overline(E D) = overline(B E) / overline(E C)$（反比定理）

+ $because quad overline(A E) / overline(E D) = overline(B E) / overline(E C)$

  $therefore quad overline(A E) / overline(B E) = overline(E D) / overline(E C)$（更比定理）

]
#exercise[
+ 证明反比、更比、合比、分比定理．

+ 求下列各数的比例中项．

  #cols(3)[
  + 3、27;

  + 5、5;

  + 2、32.

  ]

+ 已知 $a b = c d$,试写出以 $b$ 为首项的比例式，这样的比例式能有几个？

+ 已知：$overline(A B) / overline(A D) = overline(A C) / overline(A E)$

  求证：$overline(A D) / overline(A B) = overline(A E) / overline(A C)$\; $overline(A D) / overline(D B) = overline(A E) / overline(E C)$\; $overline(A D) / overline(A E) = overline(D B) / overline(E C)$

]
#align(center)[
#fig("3-148");

#subcap[
第4题

]
]
=== 相似和相似比
在前面，我们对比例线段有了明确的理解，现在我们进一步研究相似图形的性质．

例如，图3.91所示的用不同比例尺绘成的同一机械零件图就是相似的图形．

#blk[定义][
如果两个多边形的角对应相等，对应边成比例．这两个多边形叫做#strong[相似多边形]．

]
#figure([#scale(60%, reflow: true, image("/math2/fig/3-91.png"));

  ],
  caption: [
  ]
)

#figure([#fig("3-149");

  ],
  caption: [
  ]
)

例如，图3.92中，四边形 $A B C D$ 与四边形 $A' B' C' D'$ 中，$angle A = angle A'$、$angle B = angle B'$、$angle C = angle C'$、$angle D = angle D'$,并且 $overline(A B) : overline(A' B') = overline(B C) : overline(B' C') = overline(C D) : overline(C' D') = overline(D A) : overline(D' A')$,则这两个四边形相似．记作“四边形 $A B C D tilde.rev$ 四边形 $A' B' C' D'$”.

#blk[定义][
相似多边形（包括相似三角形）对应边的比叫做它们的#strong[相似比]（也叫放大率或缩小率）．相似比等于1的多边形显然是全等形．在图3.92中四边形 $A B C D$ 对四边形 $A' B' C' D'$ 的相似比等于5:4.

]
#exercise[
+ 所有等边三角形相似吗？为什么？

+ 所有菱形相似吗？为什么？

+ 所有矩形相似吗？为什么？

+ 所有正方形相似吗？为什么？

+ 把一个矩形纸片的四周剪去一个等宽的边，得到一个小矩形纸片，那么这大、小两个矩形相似吗？

]
#align(center)[
#fig("3-150");

#subcap[
第5题

]
]
=== 相似三角形
研究相似形是以三角形为基础的．因此，我们主要研究相似三角形．

在第一章中，我们已经用实验方法得出了：“#strong[如果一个三角形的两个角和另一个三角形的两个角对应相等，那么这两个三角形相似]”．这实际上是判定两个三角形相似的一个判定定理．但是现在我们还不能用演绎法严格地证明它，严格的证明到了高中才能进行．下面我们只在某些特殊情况下对这个定理作些证明．

#figure([#fig("3-151");

  ],
  caption: [
  ]
)

已知：$triangle.stroked.t A B C$ 和 $triangle.stroked.t A' B' C'$ 中，$angle A = angle A'$, $angle B = angle B'$（图3.93）

求证：$triangle.stroked.t A B C tilde.rev triangle.stroked.t A' B' C'$.

#proof[
#numbered-eq($ angle A = angle A'\,quad angle B = angle B' quad arrow.r.double quad angle C = angle C' $);

又根据移形公理，我们移动 $triangle.stroked.t A' B' C'$,使 $A'$ 与 $A$ 重合，$A' B'$ 落在 $A B$ 上，因为 $angle A = angle A'$ 所以 $overline(A' C')$,落在 $overline(A C)$ 上．由于 $angle B = angle B'$,所以 $B C pll B' C'$（为什么？），又由三角形的全等条件（SAS）可知 $triangle.stroked.t A' B' C' tilde.equiv triangle.stroked.t A B' C'$.这时，如果

+ $overline(A B)$ 恰好是 $overline(A' B')$ 的整数倍，即 $ overline(A B) = n overline(A' B') $ #noindent;我们把 $overline(A B)$ 等分成 $n$ 段（图3.93中 $n = 3$）和 $overline(A B')$ 等长的线段．然后过各分点分别作 $B C$ 的平行线和 $A C$ 的平行线，由平行线等分线段定理可知这两组平行线也分别把 $overline(B C)$ 和 $overline(A C)$ 分成了 $n$ 段相等的线段．

  由平行四边形对边相等这一性质可知；$overline(B C)$ 上被 $n$ 等分的每一线段和 $overline(B' C')$ 相等，$overline(A C)$ 上被 $n$ 等分的每一线段也和 $overline(A' C')$ 相等．因此有：$ overline(B C) = n overline(B' C')\,#h(2em) overline(A C) = n overline(A' C') $ #noindent;这时：#numbered-eq($ overline(A B) / overline(A' B') = overline(B C) / overline(B' C') = overline(C A) / overline(C' A') = n $);由(3.4)、(3.5)可知：当 $overline(A B)$ 是 $overline(A' B')$ 的整数倍时，我们证明了 $triangle.stroked.t A B C tilde.rev triangle.stroked.t A' B' C'$.

+ $overline(A B)$ 是 $overline(A' B')$ 的有理数倍，即 $overline(A B) = m / ell overline(A B')$（图3.94中 $ell = 2\,thick m = 7$）

  #figure([#fig("3-152");

    ],
    caption: [
    ]
  )

  那么一定存在 $overline(A B'')$ 使 $overline(A' B') = ell overline(A B'')$, $overline(A B) = m dot.op overline(A B'')$．这时，我们可把 $overline(A B)$ 等分为 $m$ 段，过各分点分别引 $A C$ 和 $B C$ 的平行线，由平行线等分线段定理，这两组平行线分别把 $overline(B C)$ 和 $overline(A C)$ 等分为 $m$ 段，这时我们可以证明：$ overline(A C) & = m overline(A C'') = m / ell overline(A C')\
  overline(B C) & = m overline(B'' C'') = m / ell overline(B' C') $ #noindent;因此：#numbered-eq($ overline(A B) / overline(A' B') = overline(B C) / overline(B' C') = overline(A C) / overline(A' C') = m / ell $);由(3.4)、(3.6)可知：当 $overline(A B)$ 是 $overline(A' B')$ 的有理数倍时，我们也证明了 $triangle.stroked.t A B C tilde.rev triangle.stroked.t A' B' C'$.

]
#blk[推论][
平行于三角形一边的直线，截三角形其他两边所得的三角形与原三角形相似．

]
利用上述定理和推论又可推出以下两个相似三角形的判定定理：

#blk[定理1][
如果一个三角形的三边和另一个三角形的三边成比例，那么这两个三角形相似．

]
#blk[定理2][
如果一个三角形的两边和另一个三角形的两边成比例，并且夹角相等，那么这两个三角形相似．

]
先证定理1.

已知：$triangle.stroked.t A B C$ 和 $triangle.stroked.t A' B' C'$ 中，$overline(A B) / overline(A' B') = overline(B C) / overline(B' C') = overline(A C) / overline(A' C')$（图3.95）.

求证：$triangle.stroked.t A B C tilde.rev triangle.stroked.t A' B' C'$

#figure([#fig("3-153");

  ],
  caption: [
  ]
)

#proof[
设 $overline(A B) > overline(A' B')$,在 $overline(A B)$ 上取一点 $D$,使 $overline(A D) = overline(A' B')$,过 $D$ 作 $D E pll B C$ 交 $overline(A C)$ 于 $E$,则 $triangle.stroked.t A D E tilde.rev triangle.stroked.t A B C$（为什么？）

已知 $overline(A B) / overline(A' B') = overline(B C) / overline(B' C') = overline(A C) / overline(A' C')$，但 $overline(A' B') = overline(A D)$，因此：$ overline(A B) / overline(A D) = overline(B C) / overline(B' C') = overline(A C) / overline(A' C') $

又 $because quad overline(A B) / overline(A D) = overline(A C) / overline(A E) = overline(B C) / overline(D E)$（相似三角形的对应边成比例）

$therefore quad overline(B C) / overline(B' C') = overline(B C) / overline(D E)\,quad overline(A C) / overline(A' C') = overline(A C) / overline(A E)$

$therefore quad overline(B' C') = overline(D E)\,quad overline(A' C') = overline(A E)$

又 $because quad overline(A' B') = overline(A D)$

$therefore quad triangle.stroked.t A D E tilde.equiv triangle.stroked.t A' B' C'$

$therefore quad triangle.stroked.t A B C tilde.rev triangle.stroked.t A' B' C'$

]
现在证明定理2.

已知：在 $triangle.stroked.t A B C$ 和 $triangle.stroked.t A' B' C'$ 中，$angle A = angle A'$,并且 $overline(A B) / overline(A' B') = overline(A C) / overline(A' C')$（图3.96）.

求证：$triangle.stroked.t A B C tilde.rev triangle.stroked.t A' B' C'$.

#figure([#fig("3-154");

  ],
  caption: [
  ]
)

#proof[
设 $overline(A B) > overline(A' B')$,在 $overline(A B)$ 上取一点 $D$,使 $overline(A D) = overline(A' B')$,过 $D$ 作 $D E pll B C$ 交 $overline(A C)$ 于 $E$,则 $triangle.stroked.t A B C tilde.rev triangle.stroked.t A D E$（为什么？）

已知 $overline(A B) / overline(A' B') = overline(A C) / overline(A' C')$，但 $overline(A D) = overline(A' B')$,因此：$ overline(A B) / overline(A D) = overline(A C) / overline(A' C') $

又 $because quad overline(A B) / overline(A D) = overline(A C) / overline(A E)$（为什么？）

$therefore quad overline(A C) / overline(A' C') = overline(A C) / overline(A E)$

$therefore quad overline(A' C') = overline(A E)$

由于 $angle A = angle A'\,quad overline(A' B') = overline(A D)$,

$therefore quad triangle.stroked.t A D E tilde.equiv triangle.stroked.t A' B' C'$.

$therefore quad triangle.stroked.t A B C tilde.rev triangle.stroked.t A' B' C'$.

]
#example[
已知：$triangle.stroked.t A B C$ 中，$angle C = 90 degree$, $D$ 是 $overline(A C)$ 上一点. $D E tack.t A B$ 交 $overline(A B)$ 于 $E$ 点（图3.97）.

求证：$overline(A D) dot.op overline(A C) = overline(A E) dot.op overline(A B)$.

]
#analyze[
要证明 $overline(A D) dot.op overline(A C) = overline(A E) dot.op overline(A B)$ 成立，只须证明 $overline(A D) / overline(A B) = overline(A E) / overline(A C)$ 即可，为此，只要证明 $triangle.stroked.t A E D tilde.rev triangle.stroked.t A C B$ 就行了．

]
#proof[
$because quad D E tack.t A B$

$therefore quad angle A E D = 90 degree$.

又：$because quad angle C = 90 degree$,

$therefore quad angle A E D = angle C$.

又：$because quad angle A = angle A$

$therefore quad triangle.stroked.t A E D tilde.rev triangle.stroked.t A C B$（为什么？）

$therefore quad overline(A D) / overline(A B) = overline(A E) / overline(A C)$（为什么？）

$therefore quad overline(A D) dot.op overline(A C) = overline(A E) dot.op overline(A B)$（为什么？）

]
#align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, figure([#fig("3-155");], caption: []), figure([#fig("3-156");], caption: [])));

#example[
已知：$pgram A B C D$ 中，$G$ 是 $overline(D C)$ 边延长线上的一点，$A G$ 分别交 $overline(B D)$、$overline(B C)$ 于 $E$、$F$\(图3.98).

求证：$overline(E F) / overline(A E) = overline(A E) / overline(E G)$

]
#analyze[
要证明 $overline(E F) / overline(A E) = overline(A E) / overline(E G)$ 成立，但显然找不到含有这四条线段的两个相似三角形，因此，我们必须寻求第三个比，使它和上述比例式中的两个比相等，这个比就是 $overline(E B) / overline(E D)$，因此如果证明了以下两个比例式：

#cols(2)[
+ $overline(E F) / overline(E A) = overline(E B) / overline(E D)$

+ $overline(E A) / overline(E G) = overline(E B) / overline(E D)$

]
那么本题也就得证了．

]
#proof[
$because quad$ 四边形 $A B C D$ 是平行四边形，

$therefore quad A D pll B C$,

$therefore quad angle A D B = angle F B D$.

又 $because quad angle D E A = angle B E F$,

$therefore quad triangle.stroked.t A D E tilde.rev triangle.stroked.t F B E$（为什么？），因此：#numbered-eq($ overline(E F) / overline(E A) = overline(B E) / overline(E D) $);同理，#numbered-eq($ overline(E A) / overline(E G) = overline(E B) / overline(E D) $);由(3.7)、(3.8)就有：$overline(E F) / overline(E A) = overline(E A) / overline(E G)$

]
#example[
比例规原理：比例规是根据相似三角形原理制作的，利用比例规可以很快地把一条不太长的线段分成若干等分，或者按一定比例来放大或缩小已知的线段．

比例规是由两条等长的腿 $overline(A D)$ 和 $overline(B C)$\(图3.99)构成的，两腿的两端是尖的，两腿中间有一条纵沟，沟内装有可以滑动并且可以固定在沟内任何地方的螺丝钉（$O$），按槽边刻度选择点，可以使 $overline(A O) / overline(O D) = overline(B O) / overline(O C)$ 等于不同的比值，如果我们要把一条线段三等分，把螺丝固定在刻度3的地方，那么 $overline(A O) / overline(O D) = overline(B O) / overline(O C) = 3$，由于 $angle A O B = angle C O D$，

$therefore quad triangle.stroked.t A O B tilde.rev triangle.stroked.t C O D$（为什么？）

$therefore quad overline(C D) = 1 / 3 overline(A B)$

用 $overline(C D)$ 去截要分的线段 $overline(A B)$,就可以把它三等分．

]
#align(center, grid(columns: (38%, 58%,), column-gutter: 0.35em, align: center + bottom, figure([#scale(60%, reflow: true, image("/math2/fig/3-99.png"));], caption: []), figure([#fig("3-157");], caption: [])));

#example[
如果一个直角三角形的斜边和一条直角边与另一个直角三角形的斜边和一条直角边成比例，那么这两个直角三角形相似．

已知：$triangle.stroked.t A B C$ 和 $triangle.stroked.t A' B' C'$ 中，$angle C = angle C' = 90 degree$, $overline(A B) / overline(A' B') = overline(A C) / overline(A' C')$（图3.100）.

求证：$triangle.stroked.t A B C tilde.rev triangle.stroked.t A' B' C'$

]
#proof[
设 $overline(A B) / overline(A' B') = overline(A C) / overline(A' C') = k$，那么：$ overline(A B) = k overline(A' B')\,#h(2em) overline(A C) = k overline(A' C') $ #noindent;$ overline(B C) = sqrt(overline(A B)^2 - overline(A C)^2) = sqrt(k^2 (overline(A' B')^2 - overline(A' C')^2)) = k overline(B' C') $ #noindent;则：$overline(B C) / overline(B' C') = k$

$therefore quad overline(A B) / overline(A' B') = overline(A C) / overline(A' C') = overline(B C) / overline(B' C')$

$therefore quad triangle.stroked.t A B C tilde.rev triangle.stroked.t A' B' C'$

]
#exercise[
+ 根据下面条件，判断 $triangle.stroked.t A B C$ 和 $triangle.stroked.t D E F$ 是否相似？如果相似，指出对应边和对应角．

  + $angle A = 70 degree\,quad angle B = 50 degree\;quad angle D = 60 degree\,quad angle E = 50 degree$

  + $overline(A B) = 2 upright(c m)\,quad overline(B C) = 3 upright(c m)\,quad angle B = 50 degree$\;

    $overline(D E) = 4 upright(c m)\,quad overline(E F) = 6 upright(c m)\,quad angle E = 50 degree$.

  + $overline(A B) = 0.8 upright(c m)\,quad overline(B C) = 2 upright(c m)\,quad overline(A C) = 4.5 upright(c m)$\;

    $overline(D E) = 2.4 upright(c m)\,quad overline(E F) = 6 upright(c m)\,quad overline(F D) = 1.5 upright(c m)$.

+ 求证：顶角相等的两个等腰三角形相似．

+ 求证：顺次连结三角形各边中点所得的三角形与原三角形相似，并求出相似比．

+ 已知：$overline(B D)$、$overline(C E)$ 是 $triangle.stroked.t A B C$ 的两条高线，求证：$overline(A B) dot.op overline(C E) = overline(B D) dot.op overline(A C)$.

+ 在 $pgram A B C D$ 中，$P$ 是对角线 $overline(A C)$ 上的一点，过 $P$ 引直线交 $overline(A D)$ 于 $G$,交 $overline(B C)$ 于 $H$,又分别与 $overline(B A)$ 和 $overline(D C)$ 的延长线交于 $E$、$F$.

  求证：$overline(P E) / overline(P F) = overline(P G) / overline(P H)$.

+ 已知：$triangle.stroked.t A B C$ 中，$angle A = 90 degree$, $overline(A D)$ 是 $overline(B C)$ 上的高，求证：

  #cols(2)[
  + $overline(A B)^2 = overline(B D) dot.op overline(B C)$,

  + $overline(A C)^2 = overline(C D) dot.op overline(B C)$,

  + $overline(A D)^2 = overline(B D) dot.op overline(D C)$,

  + $overline(A B)^2 + overline(A C)^2 = overline(B C)^2$.

  ]
  （注意：本题的(a)(b)(c)给我们提供了求两条已知线段的比例中项的依据．而(d)是应用相似三角形再次证明了勾股定理．）

]
#align(center)[
#fig("3-158");

#subcap[
第4题

]
]
=== 平行截割定理
要划一个多边形的相似形，往往要利用平行线，这一小节我们就来学习平行截割定理．

#blk[定理][
平行于三角形的一边并且和其他两边相交的直线，将其他两边分成比例线段．

]
已知：$triangle.stroked.t A B C$ 中，$overline(D E) pll overline(B C)$ 交 $overline(A B)$ 于 $D$\;交 $overline(A C)$ 于 $E$ (图3.101).

求证：$overline(A D) / overline(D B) = overline(A E) / overline(E C)$

#proof[
$because quad overline(D E) pll overline(B C)$

$therefore quad triangle.stroked.t A D E tilde.rev triangle.stroked.t A B C$（为什么？）

$therefore quad overline(A B) / overline(A D) = overline(A C) / overline(A E)$（为什么？），#h(1em);$frac(overline(A B) - overline(A D), overline(A D)) = frac(overline(A C) - overline(A E), overline(A E))$（为什么？）

即：$overline(B D) / overline(A D) = overline(E C) / overline(A E)$

$therefore quad overline(A D) / overline(D B) = overline(A E) / overline(E C)$（为什么？）

]
#align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, figure([#fig("3-159");], caption: []), figure([#fig("3-160");], caption: [])));

把上述定理推广就得到平行截割定理．

#blk[平行截割定理][
三条或三条以上的平行线，截任意两条直线，所截出的对应线段成比例．

]
已知：$A D$、$B E$、$C F$ 三条直线互相平行，并且与任意二直线 $ell$、$m$ 分别交于 $A$、$B$、$C$ 和 $D$、$E$、$F$ 各点（图3.102）.

求证：$overline(A B) / overline(B C) = overline(D E) / overline(E F)$

#proof[
过 $D$ 点引 $ell$ 的平行线与直线 $B E$、$C F$ 分别交于 $G$、$H$ 两点．则$ overline(D G) / overline(G H) = overline(D E) / overline(E F) quad upright("（为什么？）") $

又 $because quad$ 四边形 $A B G D$ 和四边形 $B C H G$ 都是平行四边形．

$therefore quad overline(D G) = overline(A B)\,quad overline(G H) = overline(B C)$

$therefore quad overline(A B) / overline(B C) = overline(D E) / overline(E F)$

]
平行截割定理的逆定理也成立．下面的定理是平行截割定理的逆定理的特殊情况，一般情况请同学们自己推证．

#blk[定理][
一直线若将三角形的两边分成比例线段，则这条直线平行于三角形的第三边．

]
#example[
已知：直线 $D E$ 截 $triangle.stroked.t A B C$ 的 $overline(A B)$ 边于 $D$ 点，截 $overline(A C)$ 于 $E$ 点，并且 $overline(A D) / overline(D B) = overline(A E) / overline(E C)$（图3.103）.

求证：$D E pll B C$.

]
#proof[
过 $D$ 点引 $D E' pll B C$,交 $overline(A C)$ 于 $E'$ 点，则 $ overline(A D) / overline(D B) = overline(A E') / overline(E' C) $ #noindent;但已知 $overline(A D) / overline(D B) = overline(A E) / overline(E C)$

$therefore quad overline(A E') / overline(E' C) = overline(A E) / overline(E C)$，由合比定理得 $ overline(A C) / overline(E' C) = overline(A C) / overline(E C) $

$therefore quad overline(E' C) = overline(E C)$

因为 $E'$ 和 $E$ 都在 $overline(A C)$ 上，所以 $E$ 和 $E'$ 重合，$overline(D E')$ 和 $overline(D E)$ 重合，因此 $D E pll B C$.

]
#align(center, grid(columns: (38%, 58%,), column-gutter: 0.35em, align: center + bottom, figure([#fig("3-161");], caption: []), figure([#fig("3-162");], caption: [])));

#example[
已知：线段 $a$、$b$、$c$.

求作：$a$、$b$、$c$ 的比例第四项．

作法：如图3.104所示

+ 取一点 $A$,作 $angle B A C$,

+ 在边 $A B$ 上依次截取 $overline(A D) = a$, $overline(D E) = b$,在边 $A C$ 上截取 $overline(A F) = c$,

+ 作 $overline(D F)$,作 $E G pll D F$ 交 $A C$ 于 $G$ 点，$overline(F G)$ 就是所求的 $a$、$b$、$c$ 的比例第四项．

]
#proof[
$because quad D F pll E G$,

$therefore quad overline(A D) / overline(D E) = overline(A F) / overline(F G)$（为什么？）

即：$ a / b = c / overline(F G) $

$therefore quad overline(F G)$ 就是所求的 $a$、$b$、$c$ 的比例第四项．

]
#example[
把已知线段分为两部分，使它们的比等于3:2.

已知：$overline(A B)$\(图3.105).

求作：$overline(A B)$ 上一点 $X$,使 $overline(A X) : overline(X B) = 3 : 2$

作法：

+ 以 $A$ 点为端点作射线 $A C$ 和射线 $A B$ 成 $angle B A C$,在 $A C$ 上截取 $overline(A D) = 3$ 个单位长，$overline(D F) = 2$ 个单位长（单位长可任取）．

+ 连结 $F$、$B$,过 $D$ 作 $D X pll F B$,交 $overline(A B)$ 于 $X$, $X$ 就是所求的点．

]
#proof[
$because quad D X pll F B$，（作图）

$therefore quad overline(A X) / overline(X B) = overline(A D) / overline(D F) = 3 / 2$.

]
#align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, figure([#fig("3-163");], caption: []), figure([#fig("3-164");], caption: [])));

#example[
三角形内角平分线定理：三角形一个内角的平分线分它的对边成两条线段，这两条线段和它们相邻的两边成比例．

已知：$overline(A D)$ 是 $triangle.stroked.t A B C$ 的 $angle B A C$ 的平分线（图3.106）.

求证：$overline(B D) / overline(D C) = overline(A B) / overline(A C)$.

]
#proof[
作 $C E pll D A$ 交 $B A$ 的延长线于 $E$.

$because quad A D$ 平分 $angle B A C$,

$therefore quad angle 1 = angle 2$.

又 $because quad angle 1 = angle A E C$, $angle 2 = angle A C E$,

$therefore quad angle A C E = angle A E C$.

$therefore quad overline(A E) = overline(A C)$.

$because quad A D pll E C$,

$therefore quad overline(B D) / overline(D C) = overline(B A) / overline(A E) quad arrow.r.double quad overline(B D) / overline(D C) = overline(A B) / overline(A C)$

]
#align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, [#fig("3-165");

#subcap[
第1题

]], [#fig("3-166");

#subcap[
第2题

]]));

#align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, [#fig("3-167");

#subcap[
第3题

]], [#fig("3-168");

#subcap[
第4题

]]));

#align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, [#fig("3-169");

#subcap[
第5题

]], [#fig("3-170");

#subcap[
第6题

]]));

#exercise[
+ 如图，已知 $ell_1 pll ell_2 pll ell_3$, $ell_1\,ell_2\,ell_3$ 分别截直线 $m$、$n$ 于 $A$、$B$、$C$ 和 $D$、$E$、$F$ 点，并且 $overline(A B) = 3$cm, $overline(B C) = 4$cm, $overline(D E) = 2$cm,求 $overline(E F)$ 和 $overline(D F)$ 的长．

+ 已知：$triangle.stroked.t A B C$ 中，$overline(D E) pll overline(B C)$, $overline(E F) pll overline(C D)$.求证：$overline(A D)^2 = overline(A F) dot.op overline(A B)$.

+ 如图：$A B pll A' B'$,

  + 设 $overline(B O) : overline(O B') = 1 : 2$, $overline(A' B') = 5$cm,求 $overline(A B)$ 的长．

  + 设 $overline(B O) = 2$cm, $overline(B B') = 5.3$cm, $overline(A B) = 2.3$cm,求 $overline(A' B')$ 的长．

  + 设 $overline(A B) = 1.2$cm, $overline(A' B') = 3$cm, $overline(B B') = 3.5$cm,求 $overline(O B)$、$overline(O B')$ 的长．

+ 已知：$overline(D E) pll overline(B C)$, $overline(D E) = 2$cm, $overline(B C) = 3$cm, $overline(B D) = 1.5$cm.求 $overline(A B)$ 的长．

+ 如图，已知：$D F pll B E$, $E F pll B C$,求证：$overline(A D) / overline(D E) = overline(A E) / overline(E C)$.

+ 如图，已知：$A C pll A' C'$, $B C pll B' C'$

  求证：$overline(O A) / overline(A A') = overline(O B) / overline(B B')$；$A B pll A' B'$.

+ 如图，已知：$D$ 点是 $overline(B C)$ 中点，$angle A D B$ 和 $angle A D C$ 的平分线分别交 $overline(A B)$, $overline(A C)$ 于 $E$、$F$.求证：$E F pll B C$.

+ 三角形 $A B C$ 中，$angle B$、$angle C$ 的平分线分别交 $overline(A C)$、$overline(A B)$ 于 $D$、$E$,如果 $E D pll B C$,则 $triangle.stroked.t A B C$ 为等腰三角形．

+ 已知：$overline(A D)$ 是 $triangle.stroked.t A B C$ 中 $angle B A C$ 的外角平分线，交 $overline(B C)$ 的延长线于 $D$ 点，求证：$overline(B D) / overline(C D) = overline(A B) / overline(A C)$.

]
#align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, [#fig("3-171");

#subcap[
第7题

]], [#fig("3-172");

#subcap[
第9题

]]));

=== 相似三角形的性质
相似三角形除对应角相等，对应边成比例外，还有下列一些性质：

#blk[定理][
+ 相似三角形周长的比等于它们的相似比．

+ 相似三角形对应高的比等于它们的相似比．

+ 相似三角形面积的比等于它们的相似比的平方．

]
已知：$triangle.stroked.t A B C tilde.rev triangle.stroked.t A' B' C'$, $overline(B C)$ 的对应边是 $overline(B' C')$, $overline(A D) tack.t overline(B C)$, $overline(A' D') tack.t overline(B' C')$ (图3.107).

#figure([#fig("3-173");

  ],
  caption: [
  ]
)

求证：

+ $frac(overline(A B) + overline(B C) + overline(C A), overline(A' B') + overline(B' C') + overline(C' A')) = overline(B C) / overline(B' C')$

+ $overline(A D) / overline(A' D') = overline(B C) / overline(B' C')$

+ $frac(triangle.stroked.t A B C upright("面积"), triangle.stroked.t A' B' C' upright("面积")) = (overline(B C) / overline(B' C'))^2$

#proof[
+ $because quad triangle.stroked.t A B C tilde.rev triangle.stroked.t A' B' C'$, $overline(B C)$ 和 $overline(B' C')$ 为对应边，设相似比为 $k$，则 $ overline(A B) / overline(A' B') = overline(B C) / overline(B' C') = overline(C A) / overline(C' A') = k $

  $therefore quad overline(A B) = k overline(A' B')\,quad overline(B C) = k overline(B' C')\,quad overline(C A) = k overline(C' A')$

  $therefore quad overline(A B) + overline(B C) + overline(C A) = k (overline(A' B') + overline(B' C') + overline(C' A'))$

  $therefore quad frac(overline(A B) + overline(B C) + overline(C A), overline(A' B') + overline(B' C') + overline(C' A')) = k = overline(B C) / overline(B' C')$

+ $because quad triangle.stroked.t A B C tilde.rev triangle.stroked.t A' B' C'$, $B$ 与 $B'$ 是对应顶点，

  $therefore quad angle B = angle B'$

  又 $because quad overline(A D) tack.t overline(B C)\,quad overline(A' D') tack.t overline(B' C')$

  $therefore quad angle A D B = angle A' D' B' = 90 degree$.

  $therefore quad triangle.stroked.t A B D tilde.rev triangle.stroked.t A' B' D'$.

  $therefore quad overline(A D) / overline(A' D') = overline(A B) / overline(A' B')$，而 $overline(A B) / overline(A' B') = overline(B C) / overline(B' C')$

  $therefore quad overline(A D) / overline(A' D') = overline(B C) / overline(B' C')$

+ $because quad triangle.stroked.t A B C tilde.rev triangle.stroked.t A' B' C'$

  $therefore quad overline(A D) / overline(A' D') = overline(B C) / overline(B' C')$

  $ frac(triangle.stroked.t A B C upright("面积"), triangle.stroked.t A' B' C' upright("面积")) = frac(1 / 2 overline(B C) dot.op overline(A D), 1 / 2 overline(B' C') dot.op overline(A' D')) & = overline(B C) / overline(B' C') dot.op overline(A D) / overline(A' D')\
   & = overline(B C) / overline(B' C') dot.op overline(B C) / overline(B' C') = (overline(B C) / overline(B' C'))^2 $

]
同样可以证明相似三角形的对应中线、对应角平分线的比等于它们的相似比．

#example[
我们应用相似三角形面积比的性质，可再次证明勾股定理．

已知：$triangle.stroked.t A B C$ 中，$angle C = 90 degree$\(图3.108).

求证：$overline(A C)^2 + overline(B C)^2 = overline(A B)^2$

]
#proof[
作斜边 $overline(A B)$ 上的高 $overline(C D)$，易证 $triangle.stroked.t A C D tilde.rev triangle.stroked.t C B D tilde.rev triangle.stroked.t A B C$.

$therefore quad frac(triangle.stroked.t A C D upright("面积"), triangle.stroked.t A B C upright("面积")) = overline(A C)^2 / overline(A B)^2\,quad frac(triangle.stroked.t C B D upright("面积"), triangle.stroked.t A B C upright("面积")) = overline(B C)^2 / overline(A B)^2$

等式两边相加得：$ frac(triangle.stroked.t A C D upright("面积") + triangle.stroked.t C B D upright("面积"), triangle.stroked.t A B C upright("面积")) = frac(overline(A C)^2 + overline(B C)^2, overline(A B)^2) $

$because quad triangle.stroked.t A C D upright("面积") + triangle.stroked.t C B D upright("面积") = triangle.stroked.t A B C upright("面积")$

$therefore quad frac(overline(A C)^2 + overline(B C)^2, overline(A B)^2) = 1$

$therefore quad overline(A C)^2 + overline(B C)^2 = overline(A B)^2$

]
#align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, figure([#fig("3-174");], caption: []), figure([#fig("3-175");], caption: [])));

#example[
在图3.109中，已知正方形 $P L M N$ 顶点 $L$ 和 $M$ 在 $triangle.stroked.t A B C$ 的 $overline(B C)$ 边上，顶点 $N$ 和 $P$ 分别在边 $overline(A C)$ 和边 $overline(A B)$ 上，$overline(B C) = 12$cm, $overline(B C)$ 上的高 $overline(A D) = 8$cm,求这个正方形的边长，并正确地作出这个正方形．

]
#solution[
+ 设 $overline(A D)$ 和 $overline(P N)$ 相交于 $E$,

  $because quad P N pll B C$

  $therefore quad triangle.stroked.t A P N tilde.rev triangle.stroked.t A B C$.

  $because quad overline(A D)$ 是 $triangle.stroked.t A B C$ 的 $overline(B C)$ 边上的高，$overline(A E)$ 是 $triangle.stroked.t A P N$ 的 $overline(P N)$ 边上的高，

  $therefore quad overline(A E) / overline(A D) = overline(P N) / overline(B C)$（相似三角形对应高的比等于相似比）．

  设正方形的边长为 $X$ 厘米，那么，$overline(P N) = X$ 厘米，$overline(A E) = overline(A D) - overline(E D) =\(8 - X\)$ 厘米，

  $therefore quad frac(8 - X, 8) = X / 12$.

  解这个方程得 $X = 4.8$.即正方形 $P L M N$ 的边长为4.8厘米．

+ 在 $triangle.stroked.t A B C$ 的 $overline(B C)$ 边上的高 $overline(A D)$ 上截 $overline(D E) = 4.8$cm,过 $E$ 作 $P N pll B C$ 和 $overline(A B)$、$overline(A C)$ 分别交于 $P$、$N$ 两点，过 $P$、$N$ 分别作 $overline(B C)$ 的垂线 $overline(P L)$、$overline(N M)$\; $L$、$M$ 是垂足，则四边形 $P L M N$ 即为所求的正方形．

]
#exercise[
+ 已知 $triangle.stroked.t A B C tilde.rev triangle.stroked.t A' B' C'$, $overline(A B)$ 与 $overline(A' B')$ 是对应边，$triangle.stroked.t A B C$ 的周长是125cm, $overline(A' B') = 12$cm, $overline(B' C') = 17$cm, $overline(C' A') = 21$cm,求三角形 $A B C$ 各边的长．

+ 两个相似三角形最长边各是35cm和14cm,它们周长的差是60cm,求它们的周长．

+ 求证：

  + 相似三角形对应中线的比等于它们的相似比．

  + 相似三角形对应角平分线的比等于它们的相似比．

]
=== 相似多边形
如何判断两个多边形相似呢？我们的办法是把多边形分成三角形来讨论．

#blk[多边形相似的判定定理][
由同数个排列顺序相同的相似三角形所拼成的两个多边形相似．

]
我们以五边形为例进行证明．

已知：$triangle.stroked.t A B C tilde.rev triangle.stroked.t A' B' C'$, $triangle.stroked.t A C D tilde.rev triangle.stroked.t A' C' D'$, $triangle.stroked.t A D E tilde.rev triangle.stroked.t A' D' E'$ (图3.110),并且 $A$、$B$、$C$、$D$、$E$ 的对应顶点分别为 $A'$、$B'$、$C'$、$D'$、$E'$.

求证：多边形 $A B C D E tilde.rev$ 多边形 $A' B' C' D' E'$.

#figure([#fig("3-176");

  ],
  caption: [
  ]
)

#proof[
$because quad triangle.stroked.t A B C tilde.rev triangle.stroked.t A' B' C'$, $A$、$B$、$C$ 的对应顶点是 $A'$、$B'$、$C'$,

$therefore quad angle B = angle B'\,quad angle B C A = angle B' C' A'\,quad overline(A B) / overline(A' B') = overline(B C) / overline(B' C') = overline(A C) / overline(A' C')$

又 $because quad triangle.stroked.t A C D tilde.rev triangle.stroked.t A' C' D'$

$therefore quad angle A C D = angle A' C' D'\,quad overline(A C) / overline(A' C') = overline(C D) / overline(C' D')$

$therefore quad angle B C A + angle A C D = angle B' C' A' + angle A' C' D'$

即：$angle C = angle C'\,quad overline(A B) / overline(A' B') = overline(B C) / overline(B' C') = overline(C D) / overline(C' D')$

同理可证：$angle D = angle D'$, $angle E = angle E'$, $angle A = angle A'$ $ overline(C D) / overline(C' D') = overline(D E) / overline(D' E') = overline(E A) / overline(E' A') $ #noindent;则多边形 $A B C D E$ 与多边形 $A' B' C' D' E'$ 的对应角相等，对应边成比例．

$therefore quad$ 多边形 $A B C D E tilde.rev$ 多边形 $A' B' C' D' E'$.

]
作为练习，同学们自己证明相似多边形的几条性质．

#blk[定理][
经过两个相似多边形的一对对应顶点的全部对角线，把两个多边形分成同数个并且顺序相同（或相反）的相似三角形．

]
#blk[定理][
相似多边形周长的比等于它们的相似比，相似多边形面积的比等于它们相似比的平方．

]
#example[
求作一个四边形和已知四边形相似，且相似比等于2.

已知：四边形 $A B C D$ (图3.111).

求作：四边形 $A' B' C' D' tilde.rev$ 四边形 $A B C D$ 并且相似比等于2.

作法：

+ 在四边形 $A B C D$ 内任取一点 $O$ 作射线 $O A$、$O B$、$O C$、$O D$.

+ 在射线 $O A$ 上截取、$overline(O A') = 2 overline(O A)$,在射线 $O B$ 上截取 $overline(O B') = 2 overline(O B)$,在射线 $O C$ 上截取 $overline(O C') = 2 overline(O C)$,在射线 $O D$ 上截取 $overline(O D') = 2 overline(O D)$.顺次作 $overline(A' B')$、$overline(B' C')$、$overline(C' D')$、$overline(D' A')$,则四边形 $A' B' C' D'$ 即为所求作的四边形．

]
#figure([#fig("3-177");

  ],
  caption: [
  ]
)

#proof[
由于 $overline(O A') / overline(O A) = overline(O B') / overline(O B) = overline(O C') / overline(O C) = overline(O D') / overline(O D) = 2 / 1$

$therefore quad A B pll A' B'\,quad B C pll B' C'\,quad C D pll C' D'\,quad D A pll D' A'$

$therefore quad triangle.stroked.t O A B tilde.rev triangle.stroked.t O A' B'$，$triangle.stroked.t O B C tilde.rev triangle.stroked.t O B' C'$，$triangle.stroked.t O C D tilde.rev triangle.stroked.t O C' D'$，$triangle.stroked.t O D A tilde.rev triangle.stroked.t O D' A'$

$therefore quad$ 四边形 $A' B' C' D' tilde.rev$ 四边形 $A B C D$\(由同数个排列顺序相同的相似三角形拼成的两个多边形相似）．并且：$ overline(A' B') / overline(A B) = overline(B' C') / overline(B C) = overline(C' D') / overline(C D) = overline(D' A') / overline(D A) = overline(O A') / overline(O A) = 2 / 1 $ #noindent;$therefore quad$ 四边形 $A' B' C' D'$ 为所求作的四边形．

]
由上面的作图题可以看出，用这样方法所作的多边形不仅和原多边形相似，并且对应边平行，对应顶点联线相交于一点，我们把具有这样位置关系的两个多边形叫做#strong[位似形]，把 $O$ 点叫做#strong[位似中心]．

下面我们给位似图形下个一般的定义．

#blk[定义][
如果两个图形 $F$ 和 $F'$ 上的点一一对应，并且符合下列两个条件：

+ 连结每对对应点的直线都经过同一点 $O$；

+ 对任意一对对应点 $A$ 和 $A'$ 都有 $overline(O A') / overline(O A) = k\,thick\(k eq.not 0\)$

那么这两个图形 $F$ 和 $F'$ 叫做#strong[位似形]，$O$ 点叫做这两个图形的#strong[位似中心]，$k$ 叫做#strong[位似比]．这时图形 $F$ 变换到图形 $F'$ 叫做#strong[位似变换]．

]
在图3.112所示的两个位似图形上的对应点，（如 $A$ 与 $A'$）在位似中心（$O$）的同侧，我们称这种位似形为#strong[顺位似形]，位似中心为#strong[顺位似中心]．

#figure([#fig("3-178");

  ],
  caption: [
  ]
)

#figure([#fig("3-179");

  ],
  caption: [
  ]
)

在图3.113所示的两个位似图形上的对应点（如 $A$ 与 $A'$）在位似中心（$O$）的两侧，我们称这种位似形为#strong[逆位似形]，位似中心为#strong[逆位似中心]．

为清楚地区别这两种位似形，在位似形的定义中我们规定：位似比 $overline(O A') / overline(O A) = k$ 中的线段 $overline(O A')$ 和 $overline(O A)$ 的第一个端点字母必须先写表示位似中心的字母 $O$,这样一来，实际上线段 $overline(O A')$、$overline(O A)$ 就是有方向的了．如果把 $overline(O A)$ 所在的半直线的方向定为正向，那么 $overline(O A)$ 反向延长线的方向就是负向了．因此，顺位似时，$overline(O A')$、$overline(O A)$ 同向，我们就说 $overline(O A') / overline(O A) = k > 0$\;逆位似时，$overline(O A')$、$overline(O A)$ 反向，我们就说 $overline(O A') / overline(O A) = k < 0$.于是位似比既可是正数也可是负数了．

作一个图形的位似形，位似中心可以任意选择，例如可以选在多边形的内部（图3.111），可以选在多边形的外部（图3.112或图3.113），也可以选在多边形的边上或顶点处（图3.114和图3.115）等等．

#align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, figure([#fig("3-180");], caption: []), figure([#fig("3-181");], caption: [])));

把一个图形放大或缩小，常常使用放缩尺，放缩尺是根据位似形原理做成的．

放缩尺如图3.116所示，是由两两平行的四条直尺所组成的，在 $A$、$B$、$C$、$D$ 处用螺丝钉连接起来，组成平行四边形 $A B C D$,它的各边可以分别绕着顶点转动．

#figure([#image("/math2/fig/3-116.png", width: 100%);

  ],
  caption: [
  ]
)

先把 $S$ 固定在图板上的某一处，在 $A$ 处装上尖针，在 $E$ 处安上铅笔，直尺上 $overline(C S) = overline(C E)$, $overline(D S) = overline(D A)$.

因为等腰三角形 $S D A$ 的 $angle D S A = angle C S E$，又因为 $S$、$D$、$C$ 共线，所以 $overline(S A)$ 重合在 $overline(S E)$ 上，因此 $S$、$A$、$E$ 在同一条直线上．

因为 $D A pll C E$,所以 $overline(S E) / overline(S A) = overline(S C) / overline(S D)$.

当放缩尺绕着固定点 $S$ 转动时，四边形 $A B C D$ 的形状和位置虽然随时改变，但各边的长不变，因此它始终是一个平行四边形．根据上面所说的可以知道，不管 $A$ 点移动到什么地方，$S$、$A$、$E$ 总在同一条直线上，$A$、$E$ 在 $S C$ 的同旁，并且 $overline(S E) / overline(S A) = overline(S C) / overline(S D)$

我们可以预先把螺丝钉固定在适当的小孔 $B$ 和 $D$ 处，使 $overline(S C) / overline(S D)$ 等于我们所需要的比 $k$,于是把装在 $A$ 处的尖针依照已有的图形描绘，在 $E$ 处的铅笔就画出一个和原图形相似并且放大了 $k$ 倍的图形．如果在 $E$ 处装上一针，依照已有的图形描画，而在 $A$ 处装上铅笔，那么 $A$ 处铅笔画出的图形也和原图形相似，但是把它缩小了 $k$ 倍．

前面我们研究了相似多边形和位似形，下面我们给出任意两个相似图形的一般定义．

#blk[定义][
如果两个图形 $T$ 和 $T'$ 上的点一一对应，并且图形 $T'$ 上任意一个线段 $overline(A' B')$ 和 $T$ 上与之对应的线段 $overline(A B)$ 的长度的比等于一个常数 $k$,则称#strong[图形 $T$ 和 $T'$ 相似]，表示作“$T tilde.rev T'$”，$k$ 叫作#strong[$T'$ 对 $T$ 的相似比]（也叫放大率或缩小率）．

]
实际生活中，相似形的例子是很多的，它们都符合上述相似形的定义．例如某地方的地图上任意两点间的线段和这个地方实际相对应的两点之间线段长度的比等于同一常数------比例尺．

还可以证明，#strong[任意两个位似图形都是相似形，且位似比的绝对值等于相似比]．

#exercise[
+ 以五边形为例，证明相似多边形的对角线的比等于相似比．

+ 已知相似多边形的相似比，周长的比，面积比中的一个，填写其他两个：

  #align(center)[
  #table(
    columns: (auto, auto, auto, auto, auto, auto, auto, auto, auto,),
    align: (center, center, center, center, center, center, center, center, center,),
    table.vline(x: 1),
    table.hline(),
    [相似比],
    [2],
    [5],
    [0.01],
    [0.005],
    [],
    [],
    [],
    [],
    table.hline(),
    [周长比],
    [],
    [],
    [],
    [],
    [10],
    [$tfrac(1, 30)$],
    [],
    [],
    table.hline(),
    [面积比],
    [],
    [],
    [],
    [],
    [],
    [],
    [10000],
    [0.000001],
    table.hline(),
  );

  ]

+ 任何两个相似形都是位似形吗？任何两个位似形都相似吗？

+ 要作一多边形和已知多边形相似，并且使周长扩大三倍，对应边应当怎样？要使周长缩小5倍呢？要使面积扩大4倍呢？要使面积缩小9倍呢？

+ 如图：$O$ 是平行四边形对角线上一点，$H F$、$E G$ 经过 $O$ 点，并且分别和 $overline(A B)$、$overline(B C)$ 平行．求证：

  + $pgram A E O H tilde.rev pgram O F C G tilde.rev pgram A B C D$\;

  + $pgram O F C G upright("的面积") : pgram A E O H upright("的面积") : pgram A B C D upright("的面积") = overline(O C)^2 : overline(O A)^2 : overline(A C)^2$

+ 求作一个五边形和已知五边形相似，并且相似比等于2.5

+ 求作一个五边形和已知五边形位似，并且位似比等于 $- 3 / 2$.

]
#align(center)[
#fig("3-182");

#subcap[
第5题

]
]
=== 相似测量
==== 测量地面上中间有障碍物的两点间距离
要测量地面上中间有障碍物的 $A$、$B$ 两点间的距离（图3.117），可以按照下面的步骤进行．

+ 在地面上选择适当的一点 $C$ 作为测站（要使从 $C$ 到 $A$,从 $C$ 到 $B$ 的距离可以直接量得），在 $A$、$B$ 两点各插一根标杆，把平板仪放在 $C$ 点，使平板成水平，把地面上的 $C$ 点用移点器移到固定在平板上的图纸上，得到 $C$ 点的对应点 $C'$,在 $C'$ 点插一根小针．

+ 在平板上，把照准器的尺的边靠紧插在 $C'$ 点的小针，照准地面上 $C A$ 和 $C B$ 的方向，在图纸上描出对应的方向线．

+ 量出 $overline(C A)$ 和 $overline(C B)$ 的实距长度，按照预定的比例尺缩小，在图纸上按照缩小后的长度，分别在对应的方向线上截取线段 $overline(C' A')$ 和 $overline(C' B')$,定出 $A'$、$B'$ 两点．

+ 量出图纸上 $overline(A' B')$ 的长度，再按照原来预定的比例尺把 $overline(A' B')$ 的长度放大，若放大率（即比例尺）等于 $k$,则 $overline(A B) = 1 / k overline(A' B')$.

#figure([#scale(60%, reflow: true, image("/math2/fig/3-117.png"));

  ],
  caption: [
  ]
)

==== 测绘具有多边形形状地段的平面图
要测绘多边形 $A B C D E$ 形状地块的平面图（图3.118），可以按照下面的步骤进行．

#figure([#fig("3-183");

  ],
  caption: [
  ]
)

+ 把平板仪放在地面上的适当一点 $S$,要从 $S$ 能直接看到插在多边形各顶点的标杆，并且在 $S$ 点能直接量得从 $S$ 到各顶点的距离，使平板成水平，平板上放图纸，把地面上的 $S$ 点用移点器移到图纸上，得到 $S$ 点的对应点 $S'$（图上 $S$ 和 $S'$ 重合），在 $S'$ 点插一根小针．

+ 在图纸上，划出和地面上 $S A\,S B\,S C\,S D$ 和 $S E$ 方向相同的射线．

+ 在地面上测量出 $overline(S A)$、$overline(S B)$、$overline(S C)$、$overline(S D)$ 和 $overline(S E)$ 各线段的实际长度，并且按照预定的比例尺缩小成线段 $overline(S' A')$、$overline(S' B')$、$overline(S' C')$、$overline(S' D')$ 和 $overline(S' E')$,然后在图纸上各条对应的方向射线上分别截得 $overline(S' A')$、$overline(S' B')$、$overline(S' C')$、$overline(S' D')$ 和 $overline(S' E')$,再作 $overline(A' B')$、$overline(B' C')$、$overline(C' D')$、$overline(D' E')$、$overline(E' A')$,所得多边形 $A' B' C' D' E'$ 就是地面上多边形 $A B C D E$ 按照预定比例尺缩小的平面图．

要计算多边形 $A B C D E$ 的面积，可先计算出平面图形 $A' B' C' D' E'$ 的面积，然后乘以原比例尺的平方的倒数，算出实际地块的面积．

#heading(level: 3, numbering: none)[实习作业]
+ 在田野里选择有障碍物的两点（如两棵树），用这节介绍的方法测量它们之间的距离．

+ 选择一块多边形空地，测绘它的平面图并求出它的面积．

#heading(level: 2, numbering: none, supplement: [toc-sub])[习题3.5]

+ 在 $triangle.stroked.t A B C$ 中，已知 $overline(B C) = 36$cm,高 $overline(A D) = 30$cm,在距离 $overline(B C)$ 边10cm的地方作一条平行于 $B C$ 的直线，交 $overline(A B)$ 于 $E$,交 $overline(A C)$ 于 $F$,求 $overline(E F)$ 的长．

+ 已知梯形两底的长为36cm和60cm,高为32cm,求这个梯形两腰延长线的交点到两底的距离各是多少？

+ 两个相似三角形对应边的比是 $7 : 5$,第一个三角形的周长是14cm,求另一个三角形的周长．

+ 已知 $triangle.stroked.t A B C tilde.rev triangle.stroked.t A' B' C'$, $triangle.stroked.t A' B' C'$ 的面积是 $triangle.stroked.t A B C$ 面积的4倍，并且 $overline(A B) = 4$cm, $overline(B C) = 7$cm, $overline(A C) = 8$cm,求 $triangle.stroked.t A' B' C'$ 各边的长．

+ 已知梯形 $A B C D$ 的面积为90平方厘米，两底 $overline(A B)$、$overline(C D)$ 的长各为12厘米和8厘米，延长梯形两腰相交于 $M$ 点，求 $triangle.stroked.t M D C$ 的面积．

+ 设 $A D$ 是 $triangle.stroked.t A B C$ 的中线，一条与 $overline(B C)$ 边平行的直线与 $overline(A B)$、$overline(A D)$、$overline(A C)$ 的交点分别为 $P$、$Q$、$R$,那么 $overline(P Q) = overline(Q R)$

+ 过梯形 $A B C D$ 的对角线 $A C$、$B D$ 的交点 $E$,作两底的平行线，与两腰 $overline(A B)$、$overline(C D)$ 分别相交于 $M$、$N$,求证：$overline(M E) = overline(E N)$.

+ 在梯形 $A B C D$ 中，作与两底互相平行的直线，交两腰 $overline(A B)$、$overline(C D)$ 于 $P$、$Q$ 两点，与对角线的交点是 $R$、$S$,那么 $overline(P R) = overline(S Q)$

#align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, [#fig("3-184");

#subcap[
第7题

]], [#fig("3-185");

#subcap[
第8题

]]));

#heading(level: 2, numbering: none)[复习题三]
+ 已知不共线三点，能不能作一个等边三角形，使这三个点分别在三边上？

+ 求证：三角形的三条角平分线相交于一点．

+ 求证：等腰三角形底边上任意一点到两腰的距离的和一定．它等于什么？如果在底边的延长线上取点，你能得出什么结论？

+ $O$ 点是等边三角形内任一点，试证明：$O$ 点到三边距离的和与 $O$ 点的位置无关，这个和等于什么？

+ 已知四边形，求这样一点，使这点到各顶点的距离的和为最小．

+ 已知梯形 $A B C D$ 中，$overline(A D) pll overline(B C)$, $angle B = 90 degree$, $angle C = 60 degree$,腰 $overline(C D) = 42$cm,求另一腰 $overline(A B)$ 等于多少厘米？

+ 从平行四边形 $A B C D$ 的各顶点到形外一条直线作垂线 $A E$、$B F$, $C G$、$D H$,设 $E$、$F$、$G$、$H$ 为垂足．求证：$overline(A E) + overline(C G) = overline(B F) + overline(D H)$.

+ 如果两正方形对角线相等，那么这两个正方形全等．

+ 已知一边和一条对角线，求作矩形．

+ 已知高，求作等边三角形．

+ 如图，$D E pll B C$, $B E$、$C D$ 相交于 $F$,射线 $A F$ 和 $overline(B C)$ 相交于 $G$.求证：$overline(B G) = overline(C G)$.

+ 如图，已知：$triangle.stroked.t A B C$ 中 $D E pll C A$, $D F pll B A$.

  求证：$overline(D E) / overline(A C) + overline(D F) / overline(A B) = 1$

  #align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, [#fig("3-186");
  
  #subcap[
  第11题
  
  ]], [#fig("3-187");
  
  #subcap[
  第12题
  
  ]]));

+ 已知：$D$、$D'$ 是 $triangle.stroked.t A B C$ 的 $overline(B C)$ 边上两点，$overline(B D) = overline(D' C)$, $overline(D E)$, $overline(D' E')$ 和 $overline(A C)$ 平行，并交 $overline(A B)$ 于 $E\,E'$, $overline(D F)$, $overline(D' F')$ 和 $A B$ 平行交 $overline(A C)$ 于 $F$、$F'$,求证：$E' F pll E F'$.

+ 已知：$E$ 是正方形 $A B C D$ 的 $overline(A B)$ 边上的一点，$overline(A E) = 1 / n overline(A B)$, $overline(D E)$ 和 $overline(A C)$ 相交于 $F$.求证；$overline(A F) = frac(1, n + 1) overline(A C)$.

+ 如图，已知 $overline(E F) pll overline(B C)$, $overline(F D) pll overline(A B)$, $overline(A E) = 6.4$ 厘米，$overline(B E) = 7.2$ 厘米，$overline(C D) = 9$ 厘米，求四边形 $B D F E$ 的周长．

+ 已知 $triangle.stroked.t A B C$ 的三边是 $overline(A B) = 11$cm, $overline(B C) = 6$cm, $overline(A C) = 7$cm, $overline(A D)$, $overline(A D')$ 分别是 $angle A$ 和它的外角平分线，求 $overline(D D')$ 的长．

+ 已知 $P$ 是 $angle A$ 内的一个定点，求经过 $P$ 作一条直线，分别交 $angle A$ 的两边于 $B$、$C$,使 $overline(A B) : overline(A C) = 3 : 2$.

+ $O C$ 是 $angle A O B$ 内的一条射线，求证从 $O C$ 上任意两点到 $angle A O B$ 的两边的距离的比一定．

  #align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, [#fig("3-188");
  
  #subcap[
  第15题
  
  ]], [#fig("3-189");
  
  #subcap[
  第19题
  
  ]]));

+ 如图，$D$、$E$、$F$ 分别是 $triangle.stroked.t A B C$ 的边 $overline(A B)$、$overline(B C)$、$overline(C A)$ 上的点，$A D E F$ 是菱形，$overline(A B) = 14$cm, $overline(B C) = 12$cm, $overline(A C) = 10$cm,求 $overline(B E)$ 和 $overline(E C)$ 的长．

+ 已知：$E$ 是平行四边形 $A B C D$ 的边 $overline(D A)$ 延长线上的一点，$overline(E C)$ 交 $overline(A B)$ 于 $G$,交对角线 $overline(D B)$ 于 $F$.

  求证：$overline(F C)^2 = overline(F G) dot.op overline(F E)$

+ 设 $overline(A B)$ 的中点为 $M$,从 $overline(A B)$ 上另一点 $C$ 向直线 $A B$ 的一侧引线段 $overline(C D)$.令 $overline(C D)$ 的中点为 $N$, $overline(B D)$ 的中点为 $P$, $overline(M N)$ 的中点为 $Q$,求证：直线 $P Q$ 平分 $overline(A C)$.

+ 已知梯形的面积是 $Q$,上下底的比是 $m / n$，求两腰的延长线和上底所组成的三角形的面积．

+ 在直角三角形 $A B C$ 中，$overline(A D)$ 是斜边 $overline(B C)$ 上的高，作 $D E tack.t A B$, $D F tack.t A C$, $E\,F$ 是垂足.

  求证：$overline(B E) / overline(C F) = overline(A B)^3 / overline(A C)^3$

+ 如图，已知 $overline(O M) : overline(M P) = overline(O N) : overline(N R)$,求证：$triangle.stroked.t P Q R$ 是等腰三角形．

  #align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, [#fig("3-190");
  
  #subcap[
  第24题
  
  ]], [#fig("3-191");
  
  #subcap[
  第25题
  
  ]]));

+ $triangle.stroked.t A B C$ 被一条直线所截，设与三边的交点为 $X$、$Y$、$Z$,

  试证：$overline(B X) / overline(X C) dot.op overline(C Y) / overline(Y A) dot.op overline(A Z) / overline(Z B) = 1$

+ 设 $O$ 是 $triangle.stroked.t A B C$ 内任一点，射线 $A O$、$B O$、$C O$ 与对边的交点分别是 $X$、$Y$、$Z$,那么 $overline(B X) / overline(X C) dot.op overline(C Y) / overline(Y A) dot.op overline(A Z) / overline(Z B) = 1$

  #align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, [#fig("3-192");
  
  #subcap[
  第26题
  
  ]], [#fig("3-193");
  
  #subcap[
  第27题
  
  ]]));

+ 从 $triangle.stroked.t A B C$ 的一边 $overline(B C)$ 的延长线上的一点 $D$,引直线与其他二边 $overline(A C)$、$overline(A B)$ 相交于 $E$、$F$,若 $angle A E F = angle A F E$,则 $overline(B D) : overline(C D) = overline(B F) : overline(C E)$.

+ 在 $triangle.stroked.t A B C$ 之边 $overline(A B)$、$overline(A C)$ 上取 $E$、$F$ 两点，使 $overline(E B) = 2 overline(E A)$, $overline(A F) = 2 overline(F C)$,延长 $overline(E F)$、$overline(B C)$ 交于 $H$,求 $overline(B H) : overline(C H)$.

  #align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, [#fig("3-194");
  
  #subcap[
  第28题
  
  ]], [#fig("3-195");
  
  #subcap[
  第29题
  
  ]]));

+ 在 $triangle.stroked.t A B C$ 中，$overline(A B) < overline(A C)$,延长 $overline(A B)$ 至 $D$,使 $overline(B D) = overline(A B)$,在 $overline(A C)$ 上取 $E$ 点，使 $overline(C E) = overline(B D)$,连接 $overline(D E)$ 与 $overline(B C)$ 交于 $F$,则 $overline(A B) : overline(A C) = overline(E F) : overline(F D)$.

+ 延长 $triangle.stroked.t A B C$ 的 $overline(B C)$ 边至 $D$,使 $overline(C D) = overline(B C)$,从 $D$ 点引直线通过 $overline(A C)$ 的中点 $E$,与 $overline(A B)$ 边相交于 $F$,求 $overline(F E) : overline(E D)$.

+ 从 $triangle.stroked.t A B C$ 的底边 $overline(B C)$ 中点 $D$ 引直线，与过顶点 $A$ 平行 $B C$ 的直线相交于 $G$,与 $overline(B A)$ 的延长线相交于 $E$,又与 $A C$ 相交于 $F$,求证：$overline(D F) : overline(F G) = overline(D E) : overline(E G)$.

  #align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, [#fig("3-196");
  
  #subcap[
  第30题
  
  ]], [#fig("3-197");
  
  #subcap[
  第31题
  
  ]]));
