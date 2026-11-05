// 由 typst/tools/tex2typ.py 从 math5/2.tex 转换而来，已人工校对的部分以本文件为准。
#import "../common/template.typ": *
#import "figs.typ": fig
#import "defs.typ": *

= 柱、锥、台、球
== 柱、锥、台、球的定义及性质
本节将研究由点、直线、平面等元素构成的几何体，常见的几何体有柱、锥、台、球．

=== 柱
柱面是经常遇到的物体的表面形状．建筑物的棱柱、圆柱的侧面都是柱面，这些侧面可以看作是由一条直线运动所产生的．

#blk[定义][
一条直线 $ell$ 在空间作平行于固定方向的运动，但总和任一固定的曲线 $C$ 相交，所产生的曲面叫做柱面．移动的直线 $ell$ 所在的每个位置叫做柱面的母线，而在移动中始终和母线相交的曲线 $C$ 叫做柱面的准线．

]
下面，我们考虑几种简单情况

+ 准线是一条直线，这时的柱面是一个平面（见图2.1）．

+ 准线是一个平面多边形，这时的柱面叫做棱柱面（见图2.2）．

+ 准线是一个圆，这时的柱面叫做圆柱面（图2.3）．

#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (30%, 30%, 30%,), column-gutter: 1em, align: center + bottom, figure([#fig("2-01");], caption: []), figure([#fig("2-02");], caption: []), figure([#fig("2-03");], caption: []))));

以后我们只研究母线和该圆所在的平面垂直的圆柱面，这种圆柱面叫#strong[直圆柱面]．

#blk[定理][
若平行平面与柱面的母线相交，则交线所成的图形全等．

]
#proof[
设平行平面 $alpha_1$ 和 $alpha_2$ 与柱面的母线相交，$ell$ 是柱面上任一条母线．令 $P_1 = alpha_1 inter ell$, $P_2 = alpha_2 inter ell$, 我们称 $P_1$ 和 $P_2$ 是对应点．显然 $P_1$ 对应于 $P_2$, $P_2$ 也对应于 $P_1$, 并且不同位置的两点 $P_1$⁠、$P'_1$ 对应于不同位置的两点 $P_2$⁠、$P'_2$\(图2.4).

#figure([#scale(70%, reflow: true, image("/math5/fig/2-4.png"));

  ],
  caption: [
  ]
)

于是在平行平面与柱面所截出的两条截线上的点与点之间建立了一一对应关系．

设在两条截线上有任意三对对应点：$A_1$ 对应于 $A_2$, $B_1$ 对应于 $B_2$, $C_1$ 对应于 $C_2$, 因为 $A_1 A_2\,B_1 B_2\,C_1 C_2$ 都是夹在平行平面 $alpha_1$ 和 $alpha_2$ 之间柱面的母线的一部分，故 $ A_1 A_2 =^(pll) B_1 B_2 =^(pll) C_1 C_2 $ #noindent;从而四边形 $A_1 A_2 B_2 B_1$ 和四边形 $B_1 B_2 C_2 C_1$ 都是平行四边形，它们的对边相等，所以，$A_1 B_1 = A_2 B_2$, $B_1 C_1 = B_2 C_2$. 又因为 $angle A_1 B_1 C_1$ 与 $angle A_2 B_2 C_2$ 的两边平行且同向，所以 $angle A_1 B_1 C_1 = angle A_2 B_2 C_2$⁠．

这样，平行平面和柱面的母线相交，交出的图形总能重合，因此它们全等．

]
#blk[定义][
由封闭的柱面和两个与母线都相交的平行平面所围成的几何体叫做柱体．

柱体的柱面夹在平行平面之间的部分叫做柱体的#strong[侧面]，两个平行平面与柱体的相交部分叫做柱体的#strong[底面]．

]
现在，我们来研究几个特殊的柱体．

#blk[定义][
如果一个柱体的侧面是棱柱面，那么这个柱体叫做棱柱．如果一个柱体的侧面是圆柱面，那么这个柱体叫圆柱体．

]
显然，由这个定义可以得到以下推论：

+ 棱柱的两个底面是对应边互相平行的全等多边形．

  全等多边形的顶点叫做棱柱的顶点．以全等多边形对应顶点为端点的线段称为棱柱的侧棱，相邻两侧棱及其所夹的两底全等多边形的两条对应边所组成的四边形称为棱柱的侧面．显然，

+ 棱柱的各侧面全是平行四边形．

+ 棱柱的各侧棱平行且相等．

#blk[定义][
棱柱按底面是三角形，四边形……分别叫做三棱柱、四棱柱……

如果棱柱的侧棱垂直于底面，那么这个棱柱叫做直棱柱，否则叫做斜棱柱．

如果棱柱是直棱柱，并且其底面是正多边形，那么这棱柱就叫做正棱柱．在正棱柱中，各侧面都是全等的矩形．

]
#blk[定义][
棱柱上不在同一个底面上也不在同一个侧面上的两个顶点所连结的线段叫做棱柱的对角线；过不在同一个侧面的两条侧棱作一个平面，这平面截棱柱所得的截面叫做棱柱的对角面．两底面之间的距离叫做棱柱的高．

]
#figure([#scale(70%, reflow: true, image("/math5/fig/2-5.png"));

  ],
  caption: [
  ]
)

图2.5是五棱柱，五边形 $A B C D E$ 和 $A' B' C' D' E'$ 是它的两个底面，$A B B' A'$⁠、$B C C' B'$ 等是它的侧面，$A A'$⁠、$B B'$ 等是它的侧棱，$H H'$ 的长是它的高．$A' C$ 是它的一条对角线．

棱柱的表示法是写出两个底面各顶点的字母，中间用一条短横线隔开，如图2.5的五棱柱就表示作棱柱 $A B C D E$-$A' B' C' D' E'$. 也有用棱柱一条对角线的两个端点表示棱柱的，如图2.5可表示作五棱柱 $A' C$.

#blk[定义][
底面是平行四边形的四棱柱叫做平行六面体．其中侧棱和底面斜交的叫斜平行六面体，侧棱和底面垂直的叫直平行六面体．底面是矩形的直平行六面体叫做长方体．交于一个顶点的三条棱的长相等的长方体叫做正方体，也叫立方体．（图2.6）

]
#figure([#fig("2-04");

  ],
  caption: [
  ]
)

#blk[定义][
平行六面体中不含公共棱的两个面称为相对的面．

]
#blk[定理][
平行六面体相对的两个面全等，而它们所在的平面互相平行．

]
已知：图2.7平行六面体 $A B C D - A_1 B_1 C_1 D_1$ 中，四边形 $A B B_1 A_1$ 和 $D C C_1 D_1$ 是相对的两个面．

求证：$pgram A B B_1 A_1 tilde.equiv pgram D C C_1 D_1$ 且平面 $A_1 B pll upright("平面") D_1 C$.

#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("2-05");], caption: []), figure([#fig("2-06");], caption: []))));

#proof[
平行六面体的底面是平行四边形．

$therefore quad A B =^(pll) D C$

又 $because quad$ 它的侧棱平行且相等，

$therefore quad A A_1 =^(pll) D_1 D$

$therefore quad upright("平面") A_1 B pll upright("平面") D_1 C\,#h(2em) angle A_1 A B = angle D_1 D C$

$therefore quad pgram A B B_1 A_1 tilde.equiv pgram D C C_1 D_1$

同理，平面 $A_1 D pll upright("平面") B_1 C\,#h(2em) pgram A_1 A D D_1 tilde.equiv pgram B_1 B C C_1$.

]
#blk[推论][
平行六面体的任何一对相对的面都可以作它的底面．

]
#example[
长方体的一条对角线的平方，等于通过同一顶点的三条棱的平方和．

已知：长方体 $D B'$ 中 $D B'$ 是一条对角线．（图2.8）

求证：$D B'^2 = A B^2 + A D^2 + A A'^2$

]
#proof[
连结 $D B$

$because quad A D tack.t A B$

$therefore quad D B^2 = A B^2 + A D^2$

$because B' B tack.t upright("平面") A C\,quad D B subset upright("平面") A C$

$therefore quad B' B tack.t D B$

$therefore quad B' D^2 = B B'^2 + B D^2$

$because quad A A' = B B'$

$therefore quad D B'^2 = A A'^2 + B D^2 = A A'^2 + A B^2 + A D^2$

]
#blk[定理][
正棱柱两底中心的连线垂直于底面（请读者自证）

]
#block[
#set enum(numbering: enum-at(1, none, start: 4))
+ 圆柱体的两个底面是相等的圆面，它们所在的平面平行．
]

#blk[定义][
圆柱体两底面之间的距离叫做圆柱的高．

]
#block[
#set enum(numbering: enum-at(1, none, start: 5))
+ 圆柱体的母线平行且相等，并且垂直于两个底面，母线的长等于圆柱的高．
]

#blk[定义][
空间图形 $F$ 对给定直线 $ell$ 为轴的轴对称是具有如下性质的映射 $R_1 : F mapsto F$, 对于任意点 $P in F$, 有它的像 $R_1\(P\)= P' in F$, 并且线段 $P P'$ 被 $ell$ 垂直平分．这时 $ell$ 称为 $F$ 的对称轴．$P$⁠、$P'$ 叫做关于 $ell$ 的对称点．

]
#block[
#set enum(numbering: enum-at(1, none, start: 6))
+ 圆柱两底圆心连线垂直于底面，并且是圆柱的对称轴（简称圆柱的轴）．
]

已知：如图2.9圆柱 $A D$#footnote[圆柱可用它的两个底面内不在同一条母线上的两个点的字母来表示．]中，$O$⁠、$O'$ 分别是两底上的圆心．

求证：

+ $O O'$ 是圆柱 $A D$ 的对称轴．

+ $O O'$ 垂直两底．

#figure([#fig("2-07");

  ],
  caption: [
  ]
)

#proof[
+ 设点 $P$ 是圆柱 $A D$ 的柱面上的任一点，过 $P$ 作 $P P_0 tack.t O O'$ 于 $P_0$, 并且 $P P_0$ 的延长线交圆柱面于另一点 $P'$⁠．因为 $P P' inter O O' = P_0$, 所以 $P P'$⁠、$O O'$ 确定一个平面 $pi$, $pi$ 与圆柱面的交线为 $A B$ ($P in A B$) 和 $C D$ ($P' in C D$), 与两底面的交线为 $A C$ ($O in A C$) 及 $B D$ ($O' in B D$).

  $because quad$ 圆柱的两个底面平行．

  $therefore quad A C pll B D$ 且 $A C$⁠、$B D$ 分别为两底面圆的直径．

  $because quad$ 圆柱的两底面是全等的圆面．

  $therefore quad A C = B D #h(2em) A B D C$ 是平行四边形．

  又 $because quad A B$ 垂直两底面．

  $therefore quad A B D C$ 为矩形，$angle C A B = angle A C D = 90 degree$

  $therefore quad A O =^(pll) B O'\,O C =^(pll) O' D$

  $therefore quad A B O' O$ 和 $O' O D C$ 是两个全等的矩形

  $because quad P P_0 tack.t O O'$ 于 $P_0$.

  $therefore quad P P_0 = A O = O C = P_0 P'$

  $therefore quad P P'$ 被 $O O'$ 垂直平分．

  如果点 $P$ 取在圆柱的底面上，那么它的像 $P'$ 也在该圆面上，同样可以证明 $P P'$ 被 $O O'$ 垂直平分．

  $therefore quad O O'$ 是圆柱 $A D$ 的对称轴．

+ 由1的证明可知，$O O' pll A B$, 而 $A B$ 垂直于圆柱的两个底面，所以 $O O'$ 垂直于两底面．

]
#blk[定义][
通过圆柱的轴的截面称为圆柱的轴截面．

]
#blk[推论][
+ 圆柱的轴截面是矩形．

+ 过圆柱对称轴的平面是圆柱的对称平面．

+ 平行于圆柱的轴的截面是矩形．

]
#example[
一圆柱用平行于圆柱的轴的平面去截它，截面周界是30cm, 面积为54$upright(c m)^2$, 在底面上截得的一段弧为 $120 degree$, 求底面半径和圆柱的高．

]
#figure([#fig("2-08");

  ],
  caption: [
  ]
)

#solution[
如图2.10. 平行轴 $O O'$ 的截面是矩形 $A A_1 B_1 B$, 其边 $A B$ 是 $dot.o O$ 的弦，所对的圆心角是 $120 degree$, 故在 $triangle.stroked.t A O B$ 中，有 $ frac(A B, sin 120 degree) = frac(R, sin 30 degree) $ #noindent;其中 $R$ 为 $dot.o O$ 的半径．

$therefore quad A B = sqrt(3) R$

$because quad$ 矩形的另一边 $A A_1$ 为圆柱的高，

$therefore quad A A_1 = 30 / 2 - R sqrt(3)$

又 $because quad$ 矩形的面积为 $54 upright(c m^2)$

$therefore quad R sqrt(3) (15 - R sqrt(3)) = 54 quad arrow.r.double quad R^2 - 5 sqrt(3) R + 18 = 0$

解得：$R_1 = 3 sqrt(3)\,quad R_2 = 2 sqrt(3)$⁠，相应地圆柱高 $h_1 = 6\,quad h_2 = 9$

答：圆柱底面半径为 $3 sqrt(3)$⁠cm, 高为6cm, 或者半径为 $2 sqrt(3)$⁠cm, 高为9cm.

]
#exercise[
+ 柱面可视为准线沿母线方向连续平行移动时所占各位置的轨迹．用这句话说明棱柱、圆柱．

+ 确定一个柱面需要几个条件？

+ 从四棱柱、五棱柱和 $n$ 棱柱的某一个顶点出发，各能引几条对角线？四棱柱、五棱柱和 $n$ 棱柱各有几条对角线？

+ #lead-list(none, 2)[
  + 平行六面体是斜四棱柱，斜四棱柱是不是平行六面体？

  + 长方体是直四棱柱，直四棱柱是不是长方体？

  + 正方体是正四棱柱，正四棱柱是不是正方体？
  ]

+ 有一个侧面是矩形的棱柱是不是直棱柱？有两个相对侧面是矩形的 $2 n$ 棱柱呢？有两个相邻侧面是矩形的棱柱呢？

+ 求证：和棱柱各侧棱相交的两个平行截面是两个全等的多边形．

+ 求证：用平行于圆柱的底面的平面去截圆柱所得的截面是和底面相等的圆面．

+ 一个圆柱体有多少个对称轴？有多少个对称平面？

+ 用第一种画法画正六棱柱的直观图，用第二种画法画圆柱的直观图．

]
=== 锥
在前面我们初步地讨论了柱（包括棱柱和圆柱）的定义及其某些性质．这一节将研究锥（包括棱锥和圆锥）的定义及其性质，我们从锥面说起．

==== 锥面
#blk[定义][
给定平面曲线 $C$ 和 $C$ 所在平面外一点 $S$, 设直线 $ell$ 经过 $S$ 点运动并且总和 $C$ 相交，则运动的直线 $ell$ 所产生的曲面叫做锥面．$S$ 点叫做锥面的顶点，运动着的直线 $ell$ 的每一位置叫作锥面的母线，而在运动中始终和母线相交的曲线 $C$ 叫做锥面的准线．

]
通常，我们只讨论通过顶点 $S$ 总和准线 $C$ 相交的射线运动时所产生的锥面．

下面我们来考虑几种简单情况：

+ 准线是一条线段，这时锥面是一个平面区域，其边界是一个角．（图2.11）

+ 准线是一个多边形，这时的锥面叫#strong[多面角]．它是由从顶点出发通过多边形的各个顶点作射线，这些射线以及每两条相邻射线间平面部分所组成的图形．（图2.12）

  通过多边形顶点的母线叫作多面角的#strong[棱]．锥面的顶点叫做多面角的#strong[顶点]．相邻两棱的平面部分叫做多面角的#strong[面]，在每个面内由两条棱组成的角叫作多面角的#strong[面角]．

+ 准线是个圆，如果圆面垂直于连接顶点和圆心的直线，那么锥面叫作直圆锥面，简称圆锥面．（图2.13）通过顶点和准线圆中心的直线是圆锥面的轴．锥面的表示法可以用它的顶点字母 $S$ 表示，记作锥面 $S$. 也可表示成锥面 $S - A B C D E$ 等其中 $A\,B\,C\,D\,E$ 等分别是锥面上不同母线上的点．

#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (30%, 38%, 25%,), column-gutter: 1em, align: center + bottom, figure([#fig("2-09");], caption: []), figure([#fig("2-10");], caption: []), figure([#fig("2-11");], caption: []))));

#blk[定理][
不通过顶点 $S$ 的两个平行平面与锥面相交，所得到的图形相似，其相似比等于顶点到两平行平面的距离之比．

]
已知：锥面 $S - A B C thin dots.h.c$, 平行平面 $alpha_1$ 与 $alpha_2$ 都不通过顶点 $S$ 与锥面相交，得到截面图形 $F_1$（在 $alpha_1$ 上）与 $F_2$（在 $alpha_2$ 上），又 $S O_1 tack.t alpha_1$ 于 $O_1$, $S O_2 tack.t alpha_2$ 于 $O_2$\(图2.14)

求证：截面图形 $F_1 tilde.rev F_2$, 其相似比 $K = frac(S O_1, S O_2)$

#figure([#scale(60%, reflow: true, image("/math5/fig/2-14.png"));

  ],
  caption: [
  ]
)

#proof[
任引锥面 $S - A B C thin dots.h.c$ 的一条母线 $S X$, 由于 $F_1$ 和 $F_2$ 都是锥面的截面，所以 $S X$ 必与 $F_1$ 和 $F_2$ 分别交于 $X_1$ 和 $X_2$ 两点，这时，$X_2$ 可以看成 $F_1$ 上 $X_1$ 的对应点，$X_1$ 也可看成是 $F_2$ 上 $X_2$ 的对应点．

如果另外再取一条不同于 $S X$ 的母线 $S Y$, 同样可以得到 $F_1$ 和 $F_2$ 上的另一对对应点 $Y_1$ 和 $Y_2$, 显然 $X_1 eq.not Y_1$, $X_2 eq.not Y_2$, 否则 $S X$ 与 $S Y$ 重合，这将与它们是不同的母线相矛盾．因此，$F_1$ 和 $F_2$ 的点与点之间建立了一一对应关系．

又设 $S X$ 和 $S Y$ 所确定的平面为 $pi$, 则 $pi inter alpha_1 = X_1 Y_1$, $pi inter alpha_2 = X_2 Y_2$, 因为 $alpha_1 pll alpha_2$, 所以 $X_1 Y_1 pll X_2 Y_2$. 因此：#numbered-eq($ frac(X_1 Y_1, X_2 Y_2) = frac(S X_1, S X_2) $);#noindent;连结 $X_1 O_1$, $X_2 O_2$, 并令 $S X$ 与 $S O_2$ 所确定的平面为 $pi'$, 则 $pi' inter alpha_1 = X_1 O_1$, $pi' inter alpha_2 = X_2 O_2$

$because quad alpha_1 pll alpha_2$

$therefore quad X_1 O_1 pll X_2 O_2$ #numbered-eq($ frac(S X_1, S X_2) = frac(S O_1, S O_2) $);#noindent;由 (2.1), (2.2) 有：$ frac(X_1 Y_1, X_2 Y_2) = frac(S O_1, S O_2) = K quad upright("（常数）") $ #noindent;由相似图形的定义可知：$ F_1 tilde.rev F_2\,quad upright("并且相似比") K = frac(S O_1, S O_2) $

]
==== 棱锥与圆锥
#blk[定义][
如果一个锥面的准线是一条封闭曲线则称这个锥面为封闭锥面．如圆锥面、多面角都是封闭锥面．

如果一个封闭锥面的所有母线被一个平面所截，那么由这个截面和锥面所围成的几何体叫做锥体．锥体平面部分叫作锥体的底面，顶点和底面的距离叫做锥体的高．

]
下面我们讨论几个特殊的锥体．

#blk[定义][
如果一个多面角的所有的棱被一个平面所截，那么截面和多面角各面所围成的几何体叫作棱锥．原多面角的顶点叫做棱锥的顶点，截面和多面角相交的部分显然是多边形，它所围的平面部分叫做棱锥的底面，有公共顶点的各个三角形的面叫做棱锥的侧面，两个相邻侧面的公共边叫做棱锥的侧棱．

如果棱锥的底面是三角形、四边形……$n$ 边形，那么棱锥就分别叫做#strong[三棱锥，四棱锥，五棱锥……]$n$#strong[ 棱锥]（见图2.15的 (1)、(2)、(3)）．棱锥的表示法可以用表示顶点和底面顶点的几个字母来表示，例如棱锥 $S - A C D$.

]
如果棱锥的底面是正多边形，并且由棱锥顶点到它的底面的垂线经过这个多边形的中心，那么这个棱锥就叫作#strong[正棱锥]．

#figure([#fig("2-12");

  ],
  caption: [
  ]
)

图2.16是用第一种画法画出的正六棱锥的直观图．

#figure([#scale(55%, reflow: true, image("/math5/fig/2-16.png"));

  ],
  caption: [
  ]
)

正棱锥显然有如下的性质：

+ 正棱锥所有的侧棱都相等．

+ 正棱锥过顶点的所有面角都相等．

+ 正棱锥各个侧面是全等的等腰三角形．

  因为全等的等腰三角形底边上的高都相等，所以正棱锥侧面的等腰三角形底边上的高都叫作正棱锥的#strong[斜高]．例如图2.16(3) 中 $triangle.stroked.t S B C$ 底边 $B C$ 上的高 $S G$ 就是正棱锥 $S - A D$ 的斜高．

+ 正棱锥所有的斜高都相等．

+ 正棱锥的棱、高、及棱在底上的射影以及斜高、高和斜高在底面上的射影分别组成一个直角三角形．

我们已经看到正棱锥的许多元素，如侧棱、底边（底面正多边形的边）、高、斜高、侧棱和底面的夹角、侧面和底面所成的角、斜高和高所成的角等等．在这些元素中只要给出其中两个元素（至少有一线段），就可以通过解直角三角形和底面正多边形来求出其他元素．

#example[
已知棱锥底面是边长为12的三角形，它的各个侧面和底面成 $45 degree$ 角，

+ 求证这个棱锥是正三棱锥；

+ 求这个三棱锥的高．

已知：在棱锥 $S - A B C$ 中，$A B = B C = C A = 12$⁠cm, 面 $S A B$⁠、$S B C$⁠、$S C A$ 都和底面 $A B C$ 成 $45 degree$ 角．

+ 求证：$S - A B C$ 是正三棱锥；

+ 求三棱锥的高 $S O$.

]
#solution[
设 $S O$ 为三棱锥的高，过 $O$ 点在底面内作 $O D$⁠、$O E$⁠、$O F$ 分别垂直于 $triangle.stroked.t A B C$ 的各边 $A B$⁠、$B C$⁠、$C A$, 连接 $S D$⁠、$S E$⁠、$S F$, 则 $S D tack.t B A$, $S E tack.t B C$, $S F tack.t A C$ (三垂线定理）（见图2.17), 即 $angle S D O$, $angle S E O$, $angle S F O$ 分别是棱锥各个侧面和底面所成二面角的平面角．

$therefore quad angle S D O = angle S E O = angle S F O = 45 degree$

从而 $triangle.stroked.t S O D tilde.equiv triangle.stroked.t S O E tilde.equiv triangle.stroked.t S O F$⁠，于是 $O D = O E = O F$⁠．

即：$O$ 点是 $triangle.stroked.t A B C$ 的内心，又因为正三角形的内心、外心、重心、垂心重合，所以三棱锥 $S - A B C$ 是正三棱锥．

又 $O D = 1 / 3 C D = 1 / 3 sqrt(C B^2 - B D^2) = 1 / 3 sqrt(12^2 - 6^2) = 1 / 3 times 6 sqrt(3) = 2 sqrt(3)$

$because quad triangle.stroked.t S O D$ 是等腰直角三角形

$therefore quad S O = O D = 2 sqrt(3)$ (cm)

答：棱锥的高为 $2 sqrt(3)$⁠cm.

]
#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("2-13");], caption: []), figure([#fig("2-14");], caption: []))));

#blk[定义][
如果用不经过圆锥面顶点而垂直于圆锥面的轴的一个平面去截圆锥面，那么截面和圆锥面所围成的几何体叫做直圆锥，简称圆锥（图2.18）．原来圆锥面的顶点和轴分别叫做圆锥的顶点和轴，圆锥面母线夹在顶点和截面之间的部分叫做圆锥的母线．圆锥面夹在顶点和截面之间的部分叫作圆锥的侧面．圆锥可以用它的顶点以及它的底面上三个点的字母来表示，如图2.18的圆锥可以记作圆锥 $S - A B C$, 也可以简记作圆锥 $S$.

]
圆锥也可以看成是以直角三角形的一条直角边所在直线为轴，直角三角形旋转一周而成的几何体．例如以直角三角形 $S O B$ 的一条直角边所在的直线为轴，使 $triangle.stroked.t S O B$ 旋转一周，$O B$⁠、$S B$ 旋转所成的面就围成了一个圆锥（图2.18），直角边 $S O$ 叫做圆锥的高，直角边 $O B$ 旋转而成的圆面叫做圆锥的底面，斜边旋转而成的面叫做圆锥的侧面，在侧面各个位置的斜边叫做圆锥的母线．显然圆锥的任一条母线 $ell$ 和高 $h$, 以及这条母线 $ell$ 在底面上的射影即底面半径 $r$ 组成一个直角三角形，根据勾股定理有：$ ell^2 = h^2 + r^2 $

圆锥有下面的一些性质：

+ 圆锥的母线都经过顶点并且都相等．

+ 各母线和轴的夹角相等．

+ 垂直于圆锥的轴而且不经过圆锥顶点的平面去截圆锥面，所得的截面是圆面．因此截面圆与底面圆相似．

+ 过轴的平面是圆锥的对称平面．

+ 过轴的所有截面是全等的等腰三角形．

#example[
求证：与圆锥底面圆相切的直线，和过切点所作的母线互相垂直．

已知：圆锥 $V - A B C$, 底面圆的切线 $A T$, 母线 $V A$（图2.19）

#figure([#fig("2-15");

  ],
  caption: [
  ]
)

求证：$A T tack.t V A$

]
#proof[
设 $O$ 为圆锥底面的圆心，连接 $V O$⁠、$O A$, 则 $V O tack.t$ 平面 $A B C$.

$therefore quad V A$ 在平面 $A B C$ 上的射影是 $O A$.

$because quad A T$ 是 $dot.o O$ 的切线，

$therefore quad O A tack.t A T$

由三垂线定理，有 $A T tack.t V A$.

]
#exercise[
+ #lead-list(none, 2)[
  + 底面是正多边形的棱锥是正棱锥吗？

  + 侧棱都相等的棱锥是正棱锥吗？

  + 侧面和底面夹角都相等的棱锥是正棱锥吗？
  ]

+ #lead-list(none, 2)[
  + 棱锥的侧棱和底面所成的角都相等，则顶点在底面上的射影是什么？

  + 棱锥的侧面和底面所成的二面角都相等，则顶点在底面上的射影是什么？
  ]

+ 证明：六条棱长相等三棱锥是正三棱锥．

+ 试用两种画法分别画出底面边长为6cm, 高为15cm的正六棱锥的直观图，比例尺为 $1 / 3$⁠．

+ 用第二种画法画出底面半径是2cm, 母线为3cm的圆锥的直观图．

+ 用第一种画法画出底面边长为2cm, 高为4cm的正五棱锥的直观图．

+ 在正六棱锥 $V - A B C D E F$ 中，底面多边形的边长为 $a$, 侧棱长为 $2 a$, 求这棱锥的高 $V O$ 及斜高 $V M$ 的长．

+ 已知圆锥底面圆的半径为3cm, 高为4cm, 设 $V A$ 是圆锥的一条母线，$O$ 点是底面中心，如果 $O M tack.t V A$ 于 $M$, 求 $O M$ 的长．

]
=== 台体
#blk[定义][
平行于棱锥底面的平面与棱锥侧面相截，棱锥在底面和截面之间的部分叫做棱台．原棱锥的底面和截面叫做棱台的下底面和上底面，其他各面叫侧面，两相邻侧面的公共边叫做棱台的侧棱，两个底面之间的距离叫做棱台的高．（图2.20）

]
#figure([#fig("2-16");

  ],
  caption: [
  ]
)

棱台可以用表示上、下底顶点的字母来表示，例如棱台 $A C'$. 也可记作棱台 $A B C D - A' B' C' D'$\(图2.20(1)).

由三棱锥、四棱锥、五棱锥……截得的棱台分别叫做#strong[三棱台、四棱台、五棱台]……

#blk[定义][
由正棱锥截得的棱台叫做正棱台．

]
#figure([#fig("2-17");

  ],
  caption: [
  ]
)

正棱台有下面一些性质：

+ 正棱台的两个底面及平行于底面的截面是相似的正多边形．（图2.21）

+ 两底面中心连线垂直于底面（图2.21(2)）．

+ 正棱台的各侧面是全等的等腰梯形，各等腰梯形的高相等，它叫做正棱台的斜高．（图2.21(2)）

+ 正棱台的各侧棱相等，并且延长后相交于一点．（图2.21(1)）

+ 正棱台两底面中心连线、相应的两底面的边心距和斜高组成直角梯形；两底中心连线、侧棱和两底面相应的半径组成一个直角梯形；同一个侧面上的上底和下底中点的连线将这个侧面分成两个全等的直角梯形．（见图2.21(2)）

解正棱台的问题一般总可化为解5中提到的直角梯形及底面的正多边形的问题．

#example[
设正三棱台的两个底面边长分别是2cm和5cm, 侧棱长为5cm, 求这个棱台的高和斜高（图2.22）．

]
#figure([#fig("2-18");

  ],
  caption: [
  ]
)

#solution[
设两底面的中心分别为 $O_1$ 和 $O$, 连接 $O_1 O$, $O_1 A_1$, $O A$. 取 $A_1 B_1$ 的中点 $D_1$, $A B$ 的中点 $D$, 连接 $O_1 D_1$, $O D$, $D_1 D$. 则 $O_1 O$ 是棱台的高，$D D_1$ 是棱台的斜高；并知 $O_1 A_1 A O$ 和 $O O_1 D_1 D$ 是两个直角梯形．分别引 $A_1 E tack.t A O$ 于 $E$, $D_1 F tack.t D O$ 于 $F$.

由于上、下两底的边长分别为2cm和5cm.

因此：$ O_1 A_1 = sqrt(3) / 3 times 2 = 2 / 3 sqrt(3)\,#h(2em) O A = sqrt(3) / 3 times 5 = 5 / 3 sqrt(3) $ #noindent;因此：$A E = O A - O_1 A_1 = 5 / 3 sqrt(3) - 2 / 3 sqrt(3) = sqrt(3)$

在直角 $triangle.stroked.t A A_1 E$ 中，$ A_1 E = sqrt(A_1 A^2 - A E^2) = sqrt(5^2 -\(sqrt(3)\)^2) = sqrt(22) approx 4.69 $

$therefore quad O O_1 = A_1 E = sqrt(22) approx 4.69$\(cm)

又 $because quad O_1 D_1 = sqrt(3) / 6 times 2 = sqrt(3) / 3\,#h(2em) O D = sqrt(3) / 6 times 5 = 5 / 6 sqrt(3)$

$therefore quad D F = O D - O_1 D_1 = 5 / 6 sqrt(3) - sqrt(3) / 3 = sqrt(3) / 2$

在直角 $triangle.stroked.t D D_1 F$ 中 $ D_1 D & = sqrt(D F^2 + D_1 F^2) = sqrt(D F^2 + O_1 O^2)\
 & = sqrt((sqrt(3) / 2)^2 +\(sqrt(22)\)^2) = 1 / 2 sqrt(91) approx 4.77\(upright(c m)\) $

答：这棱台的高约等于4.69cm, 斜高约等于4.77cm.

]
#blk[定义][
平行于圆锥底面的平面与圆锥相截，圆锥的底面和截面之间的部分叫做圆台．原来圆锥的底面和截面分别叫做圆台的下底面和上底面，原来圆锥的轴叫做圆台的轴，原来圆锥的母线夹在两底面之间的部分叫做圆台的母线，原来圆锥的侧面夹在两底面之间的部分叫做圆台的侧面，两底面之间的距离叫做圆台的高．（图2.23）

]
圆台也可以看作是一个直角梯形绕着垂直于底边的一条腰所在的直线为轴，旋转 $360 degree$ 时，这个直角梯形的两底边及另一腰所形成的面围成的几何体．直角梯形的上、下两底边旋转而成的圆面分别叫做圆台的上底面和下底面．直角梯形垂直于底边的腰的长叫做圆台的高，而另一腰则称为圆台的母线．（图2.24）

#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("2-19");], caption: []), figure([#fig("2-20");], caption: []))));

圆台的表示法是用它两底上而不在同一条母线上的两个点的字母来表示．如图2.23的圆台可以记作圆台 $A B_1$.

圆台有下面一些性质：

+ 圆台的两个底面是圆，它们所在的平面平行．

+ 圆台的轴经过两个底面的圆心，并且和底面垂直，连结两底圆心线段的长等于高．

+ 圆台的母线都相等．

+ 圆台的各母线的延长线交于一点．

+ 经过圆台的轴的截面叫圆台的轴截面，它是一个等腰梯形．

+ 经过圆台的轴的平面是圆台的对称平面．

如果设圆台的上、下两底面的半径分别为 $R_1$ 和 $R_2$, 母线长为 $ell$, 高为 $h$, 那么 $ell^2 =\(R_2 - R_1\)^2 + h^2$ (图2.24)

#example[
已知一个圆台两底面面积分别是 $1 upright(d m^2)$ 和 $49 upright(d m^2)$, 有一个截面和底面平行，它的面积是 $25 upright(d m^2)$, 求这个截面和两个底面距离的比．

]
#figure([#fig("2-21");

  ],
  caption: [
  ]
)

#solution[
设从截得圆台的原来圆锥的顶点到圆台上底的距离是 $a$ $\(a > 0\)$, 从截面到圆台上底面和下底面的距离分别是 $x$ 和 $y$, 那么参看轴截面图2.25, 由圆台的性质及相似形面积的比等于相似比的平方，就得到 $ frac(\(a + x\)^2, a^2) = 25 / 1\,#h(2em) frac(\(a + x + y\)^2, a^2) = 49 / 1 $ #noindent;由此得正数解 $x = 4 a$, $y = 2 a$⁠．因此，$x : y = 4 a : 2 a = 2 : 1$

答：截面和上、下两底面距离的比为2:1.

]
#exercise[
+ 如果两个相似三角形（不在同一平面内）的对应边互相平行，连结它们的对应顶点而形成各面所围成的几何体是不是棱台．

+ 已知正棱台上、下两底面的边长分别是 $a$ 和 $b$ $\(a < b\)$, 侧棱和底面成 $45 degree$ 角，求它的侧棱和斜高的长．

+ 圆台的两底面半径分别是 $r_1$ 和 $r_2$ ($r_1 > r_2$), 母线与底面夹角是 $60 degree$, 求它的高．

+ 圆台的母线长为 $2 a$, 母线与轴的夹角为 $30 degree$, 一个底面半径是另一个底面半径的2倍，求两底面的半径．

+ 下图是正四棱台的二视图，（图中所标尺寸单位是cm）试用两种画法画出它的直观图，比例尺为 $1 / 3$⁠．

]
#fig-center[
#fig("2-22");

#subcap[
第5题

]
]
=== 球
#blk[定义][
在空间与定点距离相等的点的集合称做球面．球面所包围的立体叫做球．定点叫做球心，定点和球面上任一点所连线段叫做球的半径．连结球面上任意两点的线段叫做球的弦，通过球心的弦叫做球的直径．

]
球面也可以看作半圆绕着它的直径旋转一周所成的图形．球可以看作是一半圆面绕着它的直径旋转一周而形成的立体．原半圆面的半径是球的半径，原半圆面的圆心是球心．

一个球可以用表示它球心的字母来表示，例如“球 $O$⁠”．画半径是 $R$ 的直观图时，一般用第二种画法，先分别在 $X O Y$⁠、$X O Z$⁠、$Y O Z$ 三个平面的画出表示半径是 $R$ 的圆的三个椭圆，再在外面画一个圆和这三个椭圆相切（图2.26），通常用简便的画法如图2.27.

#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("2-23");], caption: []), figure([#fig("2-24");], caption: []))));

球有下列一些性质：

+ 同球的半径（或直径）相等．

+ 球被平面所截得截面是一个圆面．

#figure([#fig("2-25");

  ],
  caption: [
  ]
)

#proof[
设平面 $M$ 通过球心 $O$, 并设 $A$⁠、$B$ 为平面 $M$ 和球面交线上任意两点．（图2.28(1)）在平面 $M$ 内连接 $O A$, $O B$, 因 $O A$⁠、$O B$ 都是球 $O$ 的半径，所以 $O A = O B$. 这就是说，交线上任意两点，因为交线上一切点与 $O$ 点等距离，所以交线是平面 $M$ 内以 $O$ 点为圆心的一个圆，它的半径就等于球的半径，因此球 $O$ 与平面 $M$ 的截面是以球心为圆心的圆面．

设平面 $M$ 不通过球心（图2.28(2)），自球心 $O$ 作 $O O_1$ 垂直平面 $M$ 于 $O_1$, 设 $A$⁠、$B$ 为平面 $M$ 与球 $O$ 的交线上任意两点，连结 $O A$, $O B$, 因为 $O A = O B$, 所以它们在平面 $M$ 内的射影相等，即 $A O_1 = B O_1$, 因此平面 $M$ 与球 $O$ 的交线是一个圆，它的圆心就是球心 $O$ 到平面的垂线的垂足 $O_1$. 如果用 $R\,r$ 分别表示球的半径和截面圆的半径，$d$ 表示由球心 $O$ 到平面 $M$ 的距离，那么，$ r = sqrt(R^2 - d^2) $ #noindent;因此，平面 $M$ 和球 $O$ 的截面是以 $O_1$ 为圆心，以 $sqrt(R^2 - d^2)$ 为半径的圆面．

]
#blk[推论][
+ 连结球心与截面圆的圆心的直线和截面垂直．

+ 与球心距离相等的截面的圆大小相等．

+ 与球心距离不等的截面，所截得的圆的大小不等，距离球心较近的截面所截的圆较大．

+ 当 $d = 0$ 时，这时截面过球心，所以 $r = R$, 也就是说，这时截面的圆的半径最大，称这个圆为球的大圆，不过球心截面的圆称为球的小圆．

+ 当 $d = R$ 时，$r = 0$, 这时截面的圆退化为一个点，我们称和球面只有一个公共点的平面叫做球的切面，球的切面和球的公共点叫做切点．和球只有一个公共点的直线叫做球的切线．显然在球的切面上过切点的直线是球的切线．

]
#blk[定义][
连结球面上 $A$⁠、$B$ 两点间大圆的劣弧叫做球面上 $A$⁠、$B$ 两点间的球面距离．

]
#blk[定理][
如果球的半径通过球面的切面的切点，这个半径必垂直于球的切面．

]
#figure([#fig("2-26");

  ],
  caption: [
  ]
)

#proof[
设平面 $alpha$ 是球 $O$ 的切面，$K$ 点是切点，$K O = R$, (图2.29) 如果 $O K$ 不垂直平面 $alpha$, 作 $O K' tack.t$ 平面 $alpha$ 于 $K'$, 则 $O K > O K'$, 即 $R > O K'$, $K'$ 点在球面的内部，这样，平面 $alpha$ 与球 $O$ 必相交，这与 $alpha$ 是球 $O$ 的切面相矛盾，所以 $O K tack.t alpha$.

]
#blk[逆定理][
垂直于球半径且过半径外端的平面必是球的切面．

]
#proof[
在平面 $alpha$ 上另取任一点 $K'$, 连结 $O K'$, 因为 $O K$ 是平面 $alpha$ 的垂线，而 $O K'$ 是平面 $alpha$ 的斜线，所以 $O K' > O K$·因为 $K in alpha$, 所以 $K'$ 点在球面外，也就是说，平面 $alpha$ 上除 $K$ 点外的任何点都不在球面上，即平面 $alpha$ 与球面只有一个公共点 $K$, 所以平面 $alpha$ 是球 $O$ 的切面．

]
把上面正、逆定理合成一个定理，即

#blk[定理][
一个平面是一个球的切面的充要条件是这个平面经过这个球的一条半径的外端而且和这条半径垂直．

]
综上所述，可知，如果球的半径为 $R$, 球心 $O$ 到平面的距离为 $d$, 则平面 $alpha$ 与球 $O$ 有下列位置关系：

+ 如果 $d < R$, 那么平面 $alpha$ 与球 $O$ 相交，截面是个圆，它的半径 $r = sqrt(R^2 - d^2)$

+ 如果 $d = R$, 那么平面 $alpha$ 与球 $O$ 相切．

+ 如果 $d > R$, 那么平面 $alpha$ 与球 $O$ 没有公共点，这时称平面 $alpha$ 与球 $O$ 相离．

#example[
设 $A$ 地位于北纬 $45 degree$, 由于地球自转，在一小时内 $A$ 点转了多少路程？（地球的半径大约为6370公里）

]
#solution[
如图2.30, 设点 $O$ 是地球的球心，$O A$ 是地球的半径，$M$ 是北纬 $45 degree$ 圈的中心，$A M$ 是北纬 $45 degree$ 圈的半径，$O M$ 是地球球心到北纬 $45 degree$ 圈所在平面的距离，那么在直角 $triangle.stroked.t A M O$ 中，$angle O A M = angle A O B = 45 degree$

$therefore quad A M = A O cos 45 degree approx 6370 times 0.7071 approx 4504$

因为地球自转一周的时间为24小时，所以地球自转一小时转过的角度为 $frac(2 pi, 24) = pi / 12$（弧度），于是，$A$ 地在一小时内转过的路程即为北纬 $45 degree$ 圈的 $pi / 12$ 弧度的弧长，即 $ pi / 12 times 4504 approx 3.1416 / 12 times 4504 approx 1179 $

答：$A$ 地在一小时内转过的路程约为1179公里．

]
#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("2-27");], caption: []), figure([#fig("2-28");], caption: []))));

#example[
已知球面上 $A$⁠、$B$ 两点的球面距离为 $5 pi$⁠cm, 过这两点的半径的夹角 $angle A O B$ 是50度，求这个球的半径．

]
#solution[
如图2.31, $O$ 为球心，过半径 $O A$ 和 $O B$ 作平面，则这个平面所截的圆为大圆，在这个圆上已知圆心角 $angle A O B = 50 degree$, $wideparen(A B) = 5 pi$⁠cm. 设球的半径为 $R$, 则 $ 5 pi = (frac(50 pi, 180)) dot.op R quad arrow.r.double quad R = 18 $

答：这个球的半径为18cm.

]
#exercise[
+ 求证：经过球上同一个切点的所有切线的集合是球的切面．

+ 求证：两球相交的交线是一个圆．

+ 求证：一动点与两个定点的距离的平方和为一个常数，则动点的轨迹是一个球．

+ 试证：球面任意三点 $A$⁠、$B$⁠、$C$ 都不可能共线．

+ 首都北京位于北纬 $40 degree$, 已知地球半径约为6370公里，求首都所在的纬度圈半径．（精确到10公里）

]
=== 多面体和旋转体
#blk[定义][
由几个多边形#footnote[注：这里所说的多边形包括它内部的平面部分．]围成的封闭的几何体叫多面体．围成多面体的各个多边形叫做多面体的面，各相邻面的公共边叫多面体的棱，相交于同一顶点的侧面组成一个多面角，各多面角的顶点叫做多面体的顶点．不在同一个面内的两个顶点的连线叫做多面体的对角线．图2.32的各图表示的都是多面体．

]
#figure([#fig("2-29");

  ],
  caption: [
  ]
)

前面讲过的棱柱、棱锥、棱台都是多面体．

#blk[定义][
使平面内的曲线（也包括直线在内），围绕这个平面里的一条直线旋转一周，回到原来位置这时所成的曲面叫旋转面，由旋转面围成的几何体叫旋转体．前面讲过的圆柱、圆锥、圆台和球分别是由矩形、直角三角形、直角梯形和半圆以一条直角边（或直径）所在直线为轴，旋转一周而形成的旋转体（图2.33）．

]
#figure([#fig("2-30");

  ],
  caption: [
  ]
)

多面体至少有四个面，多面体依照它的面数分别称为#strong[四面体、五面体、……]$n$#strong[ 面体]等等．

多面体中最简单的是凸多面体，所谓凸多面体是指对它的每个面所在的平面来说，该多面体的其余所有各面都在这个平面的同侧．前面讲过的棱柱、棱锥、棱台都是凸多面体．像图2.34所画的多面体就不是凸多面体．

#figure([#scale(60%, reflow: true, image("/math5/fig/2-34.png"));

  ],
  caption: [
  ]
)

#blk[定义][
如果一个凸多面体所有的面都是全等的正多边形，并且在通过每一顶点的棱数相同，那么这样的凸多面体就叫正多面体．

]
#blk[定理][
正多面体只有五种．

]
#proof[
设正多面体的各个面是正 $n$ 边形，而且通过每一个顶点有 $m$ 条棱，那么以正多面体每一个顶点为顶点的多面角中有 $m$ 个面角，由于每个面角是正多边形的一个内角．所以，它等于 $frac(\(n - 2\)times 180 degree, n)$⁠，那么 $m$ 个面角之和为：$ frac(\(n - 2\)times 180 degree, n) times m $ #noindent;因为正多面体是凸多面体，故 $ frac(\(n - 2\)times 180 degree, n) times m < 360 degree $ #noindent;即：#numbered-eq($ \(n - 2\)m < 2 n $);

但因最小凸多面体为4面体，那么它的每个面必为三角形．所以，#numbered-eq($ n gt.eq 3\,#h(2em) m gt.eq 3 $);

为了求出满足 (2.3)、(2.4) 两式的正整数来，我们把 (2.3) 式变形为：$ \(m - 2\)\(n - 2\)< 4 $ #noindent;那么 $\(m - 2\)$ 和 $\(n - 2\)$ 只能取值于3, 2, 1．因此，$m\,n$ 的值只限于下列五种．

#align(center)[
#table(
  columns: (auto, auto, auto, auto, auto, auto,),
  align: (center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon,),
  table.vline(x: 1),
  table.hline(),
  [$m$],
  [3],
  [3],
  [3],
  [4],
  [5],
  table.hline(),
  [$n$],
  [3],
  [4],
  [5],
  [3],
  [3],
  table.hline(),
);

]
#noindent;这五种正多面体分别是正四面体、正六面体、正八面体、正十二面体和正20面体．（图2.35的 (I)---(V)）

#figure([#scale(60%, reflow: true, image("/math5/fig/2-35.png"));

  ],
  caption: [
  ]
)

]
#exercise[
+ 试证：以正六面体各面中心为顶点，可成一个正八面体．

+ 试证：以正八面体各面中心为顶点，可成一个正六面体．

+ #lead-list(none, 2)[
  + 说出正四面体、正六面体、正八面体、正十二面体、正二十面体各有多少个顶点数，棱数和面数．

  + 如果以 $F$ 表示正多面体的面数，$V$ 表示顶点数，以 $E$ 表示棱数，那么你能发现 $F$⁠、$V$ 和 $E$ 的关系式吗？
  ]

+ 正四面体是正三棱锥吗？正三棱锥是正四面体吗？正六面体是立方体吗？正方体是正六面体吗？

]
=== 补充例题
#example[
已知正六棱柱的侧面为正方形，底面边长为 $a$, 求棱柱各对角面的面积（图2.36）．

]
#solution[
连结 $A C$⁠、$A D$⁠、$A_1 C_1$⁠、$A_1 D_1$. 在正六边形 $A B C D E F$ 中，

$because quad A B = B C = a\,quad angle A B C = 120 degree$

$therefore quad A C = sqrt(a^2 + a^2 - 2 a dot.op a cos 120 degree) = sqrt(3) a$

$because quad A C C_1 A_1$ 是正六棱柱的对角面，

$therefore quad A C C_1 A_1$ 是矩形．

$therefore quad S_(upright("矩形") A C C_1 A_1) = A_1 A dot.op A C = a dot.op sqrt(3) a = sqrt(3) a^2$

同理，$A D D_1 A_1$ 是矩形

$because quad A D = 2 a$

$therefore quad S_(upright("矩形") A D D_1 A_1) = A_1 A dot.op A D = a dot.op 2 a = 2 a^2$

]
#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("2-31");], caption: []), figure([#fig("2-32");], caption: []))));

#example[
正三棱锥 $V - A B C$ 中的底面边长为 $a$, 侧棱和底面的夹角为 $alpha$, $D$ 为侧棱 $V A$ 上一点，截面 $D B C$ 与底面 $A B C$ 所成的角等于侧棱和高所成的角，求此截面面积（图2.37）．

]
#solution[
设 $O$ 点为底面中心，则 $V O tack.t$ 底面，取 $B C$ 边的中点 $M$, 由于 $O$ 是正三角形 $A B C$ 的中心，所以 $O$ 点也是正 $triangle.stroked.t A B C$ 的内心、重心和垂心．因此，$A$⁠、$O$⁠、$M$ 三点共线

$because quad V O tack.t$ 底面于 $O$ 点，

$therefore quad A O$ 为棱 $V A$ 在底面上的射影，

$therefore quad angle V A O = alpha$⁠，

$because quad A M tack.t B C$ 于 $M$⁠．

$therefore quad A V tack.t B C$#h(2em);（三垂线定理）

$therefore quad B C tack.t$ 截面 $A V M$

又 $because quad$ 截面 $V A M inter$ 截面 $B D C = D M$,

$therefore quad D M tack.t B C\,#h(2em) angle A M D$ 为二面角 $D - B C - A$ 的平面角．

已知 $angle A M D = angle A V O = 90 degree - alpha$⁠，又在 $triangle.stroked.t A D M$ 中，$angle A D M = 180 degree -\[\(90 degree - alpha\)+ alpha\]= 90 degree$

$therefore quad triangle.stroked.t A D M$ 是直角三角形，

$because quad A M = a cos 30 degree = sqrt(3) / 2 a$

$therefore quad D M = A M sin alpha = sqrt(3) / 2 a sin alpha$

$therefore quad$ 截面 $triangle.stroked.t B D C$ 的面积 $ S_(triangle.stroked.t B D C) = 1 / 2 B C dot.op D M = 1 / 2 a dot.op (sqrt(3) / 2 a sin alpha) = sqrt(3) / 4 a^2 sin alpha $

答：截面 $triangle.stroked.t B D C$ 的面积为 $sqrt(3) / 4 a^2 sin alpha$

]
#example[
正三棱锥 $S - A B C$ 的底边长为 $a$, 侧棱长为 $b$.

+ 作一截面和 $S C$, $A B$ 平行．

+ 求证：此截面为矩形．

+ 如果截面是正方形，求此截面面积．

]
#figure([#fig("2-33");

  ],
  caption: [
  ]
)

#solution[
+ 截面作法分析：如图2.38, 设截面平面为 $alpha$,

  $because quad alpha pll A B$

  $therefore quad alpha inter$ 平面 $A B C = E D pll A B$

  又 $because quad$ 侧棱 $S A$⁠、$S B$ 分别过 $A$⁠、$B$,

  $therefore quad alpha inter$ 平面 $S A B = F G pll A B$,

  又 $because quad alpha pll S C$⁠，点 $E$⁠、$F$ 既在 $alpha$ 上，又在平面 $S A C$ 上，

  $therefore quad alpha inter$ 平面 $S A C = E F pll S C$.

  同理：$alpha inter$ 平面 $B S C = G D pll S C$.

+ 截面的作法．由上面的分析可得如下作法：

  + 在底边 $B C$ 上任取一点 $D$, 过 $D$ 在 $triangle.stroked.t A B C$ 内作 $D E pll A B$ 交 $A C$ 于 $E$, 在 $triangle.stroked.t S A C$ 内，作 $E F pll S C$, 交 $S A$ 于 $F$,

  + 过 $F$ 在 $triangle.stroked.t S A B$ 内作 $F G pll A B$, 交 $S B$ 于 $G$,

  + 连结 $D G$, 则四边形 $D E F G$ 所围平面部分为所求截面．

+ 证明四边形 $D E F G$ 是矩形．

  $because quad$ 由作法可知，$D E pll A B$, $G F pll A B$,

  $therefore quad D E pll G F$.

  又 $because quad E F pll S C$

  $therefore quad S C pll alpha$

  $because quad$ 平面 $alpha$ 和平面 $S B C$ 交线为 $D G$,

  $therefore quad S C pll D G$,

  $therefore quad$ 四边形 $D E F G$ 为平行四边形．

  又 $because quad$ 正棱锥的侧棱 $S C$ 与对边 $A B$ 垂直，（见上例所证 $V A tack.t B C$⁠）而 $E F pll S C$, $E D pll A B$,

  $therefore quad angle F E D$ 为二异面直线 $S C$ 和 $A B$ 所成的角，

  $therefore quad angle F E D = 90 degree$

  $therefore quad$ 四边形 $D E F G$ 为矩形．

+ 如果 $D E F G$ 为正方形，求它的面积．设正方形 $D E F G$ 的边长为 $x$, 则 $D E = D G = x$

  又 $because quad$ 棱锥底面是正三角形，

  $therefore quad triangle.stroked.t C D E$ 也是正三角形，

  $therefore quad C D = D E = D G = x\,quad B D = a - x$,

  在 $triangle.stroked.t B S C$ 中，

  $because quad D G pll S C$,

  $therefore quad frac(B D, B C) = frac(G D, S C)$ 即 $ frac(a - x, a) = x / b quad arrow.r.double quad x = frac(a b, a + b) $ #noindent;所以正方形 $D E F G$ 的面积 $ S_(upright("正方形") D E F G) = (frac(a b, a + b))^2 $

  答：正方形 $D E F G$ 的面积为 $(frac(a b, a + b))^2$

]
#example[
经过棱台（或圆台）高的中点，作平行底面的平面，截棱台（或圆台）所得的截面叫作棱台（或圆台）的中截面，如果棱台（或圆台）的上下底的面积分别为 $S_1$, $S_2$, 中截面的面积为 $S_0$, 那么求证：$sqrt(S_0) = 1 / 2 (sqrt(S_1) + sqrt(S_2))$⁠．（图2.39(1)、(2)）

]
#figure([#fig("2-34");

  ],
  caption: [
  ]
)

#proof[
延长棱台的各侧棱得到棱锥，设棱锥顶点 $S$ 到上底面的距离为 $a$, 棱台的高为 $2 h$, (图2.39(1))．设棱锥的高 $S O_2$, 交棱台上、下两底面于 $O_1$ 和 $O_2$ 交中截面于 $O_0$, 连 $B_1 O_1$⁠、$B_0 O_0$⁠、$B_2 O_2$⁠，易知，$B_1 O_1 pll B_0 O_0 pll B_2 O_2$⁠，故有 $ S_0 / S_1 = frac(\(a + h\)^2, a^2)\,#h(2em) S_2 / S_1 = frac(\(a + 2 h\)^2, a^2) $ #noindent;即：$ sqrt(S_0) / sqrt(S_1) = frac(a + h, a) = 1 + h / a\,#h(2em) sqrt(S_2) / sqrt(S_1) = frac(a + 2 h, a) = 1 + frac(2 h, a) $ #noindent;从两式中消去 $h / a$⁠，得 $ frac(2 sqrt(S_0), sqrt(S_1)) - sqrt(S_2) / sqrt(S_1) = 1 $ #noindent;因此：$sqrt(S_0) = 1 / 2 (sqrt(S_1) + sqrt(S_2))$

同理可以证明圆台的中截面面积也为上式．

]
#example[
如图2.40, 球 $O$ 和二面角 $alpha - A B - beta$ 的两个面 $alpha$⁠、$beta$ 分别相切于 $C$⁠、$D$ 两点，如 $C\,D$ 两点的距离为 $sqrt(3) a$, 并且 $angle D C O = 30 degree$, 求球 $O$ 的半径及二面角的大小．

]
#solution[
因球 $O$ 在平面 $alpha$ 和 $beta$ 上的切点分别是 $C$⁠、$D$, 过 $O C$⁠、$O D$ 作平面交 $A B$ 于 $E$,

$because quad O C tack.t alpha\,quad O D tack.t beta$

$therefore quad O C tack.t A B\,quad O D tack.t A B$

$therefore quad A B tack.t$ 平面 $C E D$.

$therefore quad A B tack.t E C$ 于 $E$, $A B tack.t E D$ 于 $E$,

$therefore quad angle C E D$ 是二面角 $alpha - A B - beta$ 的平面角

又在 $triangle.stroked.t O C D$ 中，

$because quad C D = sqrt(3) a\,quad angle D C O = 30 degree\,quad O C = O D$

因此#numbered-eq($ angle C O D = 120 degree $);

$therefore quad frac(C D, sin 120 degree) = frac(O D, sin 30 degree) quad arrow.r.double quad frac(sqrt(3) a, sqrt(3) / 2) = frac(O D, 1 / 2)$

$therefore quad O D = a$

又：$O\,C\,D\,E$ 四点共面，由 (2.5), 有 $angle C E D = 60 degree$,

$therefore quad$ 二面角 $alpha - A B - beta$ 为 $60 degree$.

答：球 $O$ 的半径为 $a$, 二面角 $alpha - A B - beta$ 为 $60 degree$.

]
#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("2-35");], caption: []), figure([#fig("2-36");], caption: []))));

#example[
球面通过多面体所有顶点的球叫做多面体的外接球．求棱长为 $a$ 的正四面体外接球的半径．（图2.41）

]
#solution[
设球 $O$ 为正四面体 $A B C D$ 的外接球，所以，$O A = O B = O C = O D$, 这样，$A - B C D$ 和 $O - B C D$ 都是正三棱锥．

设这两个正三棱锥的高分别为 $A O_1$ 和 $O O_2$, 因为这两个正三棱锥的底面是同一个正三角形 $B C D$, 所以 $O_1$ 和 $O_2$ 都是 $triangle.stroked.t B C D$ 的中心，所以 $O_1$ 和 $O_2$ 必重合，所以 $A$⁠、$O$⁠、$O_1$ 三点共线，连 $B O_1$, 因为 $B O_1 = sqrt(3) / 3 a$, 所以 $ A O_1 = sqrt(A B^2 - B O_1^2) = sqrt(a^2 - (sqrt(3) / 3 a)^2) = sqrt(6) / 3 a $ #noindent;$therefore quad O O_1 = sqrt(6) / 3 a - O A$

设球 $O$ 的半径为 $R$, 那么在直角三角形 $B O O_1$ 中，有 $ B O^2 - B O_1^2 =\(A O_1 - O A\)^2 $ #noindent;即$ R^2 - (sqrt(3) / 3 a)^2 = (sqrt(6) / 3 a - R)^2 $ #noindent;解得 $R = sqrt(6) / 4 a$

答：棱长为 $a$ 的正四面体的外接球的半径为 $sqrt(6) / 4 a$

]
#heading(level: 2, numbering: none, supplement: [toc-sub])[习题2.1]

+ #lead-list(none, 2)[
  + 图示四棱柱、平行六面体、直平行六面体、长方体、正方体各集合之间的关系．

  + 图示多面体、凸多面体、棱柱、棱锥、棱台、平行六面体各集合之间的关系．
  ]

+ 已知长方体的对角线与其共顶点的三条棱分别成角 $alpha\,beta\,gamma$⁠，求证：$ cos^2 alpha + cos^2 beta + cos^2 gamma = 1 $

+ 已知长方体的一条对角线与各个面所成的角分别是 $alpha\,beta\,gamma$⁠，求证：$ cos^2 alpha + cos^2 beta + cos^2 gamma = 2 $

+ 四棱柱的对角线如果交于一点，求证：此柱是平行六面体．

+ 底面是菱形的直棱柱对角线长分别是9cm和15cm, 侧棱是5cm, 求它的底面边长．

+ 在直平行六面体 $A B C D - A_1 B_1 C_1 D_1$ 中，若 $A D = 1$⁠m, $A B = 2$⁠m, $A A_1 = 3$⁠m, $angle D A B = 60 degree$⁠，求对角线 $B D_1$ 和 $A C_1$ 的长．

+ 圆柱有一个内接直三棱柱，直三棱柱的一个侧面经过连结圆柱两底中心的轴，求证：直三棱柱的其他两侧面互相垂直．

+ 已知正六棱锥的底面边长是4cm, 侧棱长是8cm, 求它的侧面和底面所成的角．

+ 四面体（三棱锥）的各顶点与其对面的重心的连线共有四条，试证这四条直线交于一点．

+ 试证：平行六面体所有对角线交于一点，而且互相平分．

+ 求证：正三棱锥的侧棱与底面的对边垂直．

+ 如果棱锥的侧棱相等且侧面和底面成相等的角，求证：这个棱锥是正棱锥．

+ 如果一个正三棱锥在顶点处的三个面角都是直角，求它的侧棱与底面所成的角．

+ 一个正三棱锥的底面边长为 $a$, 侧棱和底面成 $alpha$ 角，求这棱锥的高和斜高．

+ 正三棱柱的棱长及底面边长都是 $a$, 过底面一边及其相对侧棱的中点作截面，求此截面的面积．

+ 过长方体 $A B C D - A_1 B_1 C_1 D_1$ 的底面一条对角线 $A C$ 作一个平面平行于长方体的一条对角线 $B D_1$, 如果长方体的底面是一个边长为 $a$ 的正方形，对角线 $B D_1$ 和底面所成的角为 $alpha$, 求这个截面的面积．

+ 圆锥的高为20cm, 过圆锥的顶点与底面成 $45 degree$ 角的平面，把圆锥底面圆周截成1:3两部分，求截面的面积．

+ 在一个正棱锥中，求证：

  + 各条侧棱与底面所成的角都相等．

  + 各侧面和底面所成的二面角相等．

+ 已知正四棱锥的侧棱为15, 侧棱与底面所成的角为 $45 degree$⁠，画出正四棱锥的二视图与直观图．

+ 已知圆锥底面半径为4cm, 母线与底面所成的角为 $60 degree$, 求圆锥内接正四棱锥的斜高．

+ 正六棱锥 $S - A B C D E F$ 的侧棱为 $4 a$, 底面正六边形边长为 $a$, 求过 $S A$ 和 $S C$ 的对角面的面积．

+ 正三棱台的上、下两底的边长分别为2cm和6cm, 侧棱和底面成 $60 degree$ 角，求棱台的高和斜高．

+ 正四棱台的上下底的边长是6cm和24cm, 斜高为15cm, 求这棱台的高．

+ 圆台的高为 $h$, 母线和底面成 $30 degree$ 角，求母线的长．

+ 正四棱台上、下两底边长分别为 $a$ 和 $b$ ($a < b$), 侧棱和底面成 $45 degree$ 角，求它的侧棱和斜高．

+ 圆台的高是 $h$⁠，两个底面的面积分别是 $3 pi h^2$ 和 $12 pi h^2$, 求圆台的母线和底面所成的角．

+ 台体上、下两底的面积各是 $Q_1$ 和 $Q_2$, 求证这台体的高和截得这台体的原锥体高的比是 $ frac(Q_2 - sqrt(Q_1 dot.op Q_2), Q_2) $

+ 台体的两底面积分别是 $9 upright(c m^2)$ 和 $25 upright(c m^2)$, 求它的中截面的面积．

+ 求证：球的任意两个大圆互相平分．

+ 在半径是13cm的球面上，有 $A\,B\,C$ 三点，$A B = 6$⁠cm, $B C = 8$⁠cm, $C A = 10$⁠cm, 求经过这三点的截面和球心的距离．

+ 在半径是 $r$ 的球面上有两点 $A$⁠、$B$, 半径 $O A$ 和 $O B$ 的夹角是 $n degree$\($n degree < 180 degree$), 求 $A B$ 两点间的球面距离．

+ 在北纬 $30 degree$ 圈上有甲、乙两地，它们的经度相差 $120 degree$, 求这两地间纬度线的长．

+ 一个球的两个切面所成的二面角（球在二面角内）是 $120 degree$, 这两个切点的球面距离是 $12 pi$⁠cm, 求这个球的半径．

+ 一个圆锥的高为8cm, 母线为10cm, 求它的内切球的半径．

+ 两个底面半径分别为 $r_1$ 和 $r_2$ 圆台中有一个内切球，求这个内切球的半径．

+ 已知两个球的半径分别是3cm和4cm, 球心连线长为5cm, 求这两个球交线圆的面积．

+ 试证：经过不在同一平面内的四个点的球面只有一个，并说明球面的作法．

+ 已知正多面体的棱长为 $a$, 那么

  + 求它的相邻两个面所成的角；

  + 两条不相交棱间的距离．

+ 求证：正八面体相对的两个平面（即没有公共顶点的面）互相平行．

+ 已知正八面体，作一个平面与相对的两个平面平行，并且和其余六个棱相交于各棱中点，求证：此截面是正六边形．

+ 若正四棱台 $A B C D - A_1 B_1 C_1 D_1$ 的对角线 $A C_1$ 和 $A_1 C$ 互相垂直，它们的长都等于2m, 求棱台的高和对角面的面积．

+ 已知圆锥的底面的面积 $Q = 324 pi upright(c m^2)$, 平行于底面截面的面积 $Q' = 182 1 / 4 pi upright(c m^2)$, 截面与底面间的距离 $O O'$ 为30cm, 求圆锥的顶角（母线间最大夹角）．

+ 圆锥底面半径为 $r$, 高为 $h$, 在它里面作各侧面都是正方形的内接正三棱柱，求这棱柱的每条棱的长．

+ 求正四面体内切球的半径．

+ 高和底面直径相等的圆柱叫等边圆柱，若一个等边圆柱的底面半径为 $R$, 上底圆周上的一个点与下底圆周上的某一个点的连线和底面所成的角等于 $alpha$, 求这条连线和连结圆柱两底中心所成之轴间的距离，当 $alpha$ 等于多少度角时，距离最短？

+ 圆锥的高是20cm, 底面半径是25cm, 经过它的顶点作一截面，如果底面的圆心到截面的距离是12cm, 求这截面的面积．

+ 已知正四棱台的上、下底面积分别是 $Q_1$ 和 $Q_2$, 其侧面面积为 $P$, 求对角面的面积．

+ 有四个等球 $A$⁠、$B$⁠、$C$⁠、$D$ 两两相切，其半径为 $r$, 把这四个球放到桌面上，试求最上面的球心到桌面的距离．

+ 在四面体 $A B C D$ 中，如果有两组对棱互相垂直，求证：第三组对棱必互相垂直，而且三组对棱的平方和相等．

+ 有一个相对的棱都互相垂直的四面体，从一个顶点向它的对面作垂线，求证：这条垂线的垂足是对面三角形的垂心．

+ 设正四面体相对的一组棱 $A C$, $B D$ 的中点分别是 $P$⁠、$Q$, 那么

  + 求 $A C$⁠、$P Q$ 所成的角．

  + 在 $P Q$ 的垂直平面内，如果作这个正四面体的正射影，将成怎样的图形？

== 柱、锥、台、球的全面积和部分面积
=== 棱柱和圆柱的侧面积和全面积
#blk[定义][
如果平面和棱柱的所有侧棱都相交且垂直，这样所得的截面叫做棱柱的直截面．（如图2.42的截面 $F G L M N$⁠）

]
#figure([#fig("2-37");

  ],
  caption: [
  ]
)

斜棱柱有时需要延长某些侧棱，以使和截棱柱的平面相交，得到直截面．

#blk[定理][
棱柱的侧面积等于侧棱长和直截面周长的乘积．

]
#proof[
如图2.42, 设棱柱为 $A C_1$, 它的直截面为 $F G L thin dots.h.c thin N$, 因为棱柱的各个侧面都是平行四边形，它的侧棱和截面的各边都垂直，如果设 $ell$ 是棱柱 $A C_1$ 的侧棱长，$S_(upright("棱柱侧"))$ 表示棱柱的侧面积，则 $ S_(upright("棱柱侧")) & = ell dot.op F G + ell dot.op G L + dots.h.c + ell dot.op N F\
 & = ell\(F G + G L + dots.h.c + N F\)= ell dot.op p $#noindent;（其中，$p =$ 直截面周长）

棱柱的侧面积也可以从它的表面展开图得出，图2.43是斜棱柱与直棱柱的侧面展开图．

直棱柱的侧面展开图是矩形，（图2.43(2)）这个矩形的长为直棱柱底面周长 $p$, 宽等于直棱柱的高 $h$.

斜棱柱的侧面展开图如图2.43(1) 所示，将直线 $F G thin dots.h.c thin F$（即直截面周长展开所在的直线）下方的部分图形向上平移，使 $A B$ 与 $A_1 B_1$, $B C$ 与 $B_1 C_1$……$E A$ 与 $E_1 A_1$ 分别重合，便拼得一个矩形．这个矩形的长为棱柱直截面的周长，它的宽等于斜棱柱的侧棱，因此矩形的面积就是斜棱柱的侧面积．

]
#figure([#fig("2-38");

  ],
  caption: [
  ]
)

#blk[推论][
+ 直棱柱的侧面积等于底面周长与高的积．

+ 如果设 $n$ 为正棱柱底边边数，$b$ 为底边长，$h$ 为正棱柱的高，则 $ S_(upright("正棱柱侧")) = n b h $

+ 如果 $A$ 为棱柱底面面积，那么棱柱的全面积为它的侧面积与两底面积的和，即 $ S_(upright("棱柱全")) = S_(upright("棱柱侧")) + 2 A $

+ 如果 $a\,b\,c$ 表长方体的三度，那么 $ S_(upright("长方体全")) = 2\(a b + b c + c a\) $

+ 如果 $a$ 表示正方体的棱长，那么 $ S_(upright("正方体全")) = 6 a^2 $

]
圆柱的侧面积，计算公式同样可由它的表面展开图得出．圆柱的侧面展开图是一个矩形，（图2.44）这个矩形的长是圆柱底面圆的周长，宽是圆柱侧面的母线长（即高）．因此我们可以得到计算圆柱侧面积的下述定理

#figure([#fig("2-39");

  ],
  caption: [
  ]
)

#blk[定理][
如果圆柱底面半径是 $R$, 周长是 $C$, 侧面母线长是 $ell$, 那么它的侧面积计算公式是：$ S_(upright("圆柱侧")) = C dot.op ell = 2 pi R ell $

]
#blk[推论][
圆柱的全面积等于它的侧面积与两底面积的和，即 $ S_(upright("圆柱全")) = S_(upright("圆柱侧")) + 2 S_(upright("底")) $ #noindent;其中，$S_(upright("底"))$ 表示圆柱底面的面积．

]
#example[
一正棱柱的对角线长是9cm, 全面积是 $144 upright(c m^2)$, 求这棱柱底面的边长和侧棱的长．（图2.45）

]
#solution[
设棱柱底面边长是 $x$⁠cm, 侧棱长为 $y$⁠cm, 根据已知条件，有

#numcases($$, $2 x^2 + y^2 = 9^2$, $4 x y + 2 x^2 = 144$);

#noindent; $\(2.6\)+\(2.7\)$, 得 $ 4 x^2 + 4 x y + y^2 = 15^2 $ #noindent;即：$\(2 x + y\)^2 = 15^2$ 两边开方，得 $ 2 x + y = 15 #h(2em)\(because med x > 0\,med y > 0\,med 2 x + y > 0\) $ #noindent;\(2.7) 的两边除以2, 有#numbered-eq($ 2 x y + x^2 = 72 $);#noindent; $\(2.6\)-\(2.8\)$, 有 $ x^2 - 2 x y + y^2 = 9 $ #noindent;即 $\(x - y\)^2 = 9$, 两边开方，得 $x - y = plus.minus 3$

解：$ display(cases(2 x + y = 15, x - y = 3)) quad upright("或") quad display(cases(2 x + y = 15, x - y = - 3)) $ #noindent;得 $ display(cases(x = 6, y = 3)) quad upright("或") quad display(cases(x = 4, y = 7)) $

答：棱柱底面边长为6cm, 侧棱为3cm, 或底面边长为4cm, 侧棱为7cm.

]
#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("2-40");], caption: []), figure([#fig("2-41");], caption: []))));

#example[
斜三棱柱 $A B C - A_1 B_1 C_1$ 的底面是边长为 $a$ 的正三角形，侧棱的长度为 $b$, 一条侧棱 $A A_1$ 和底面相邻两边 $A B$⁠、$A C$ 都成 $45 degree$ 角，求这三棱柱的侧面积（图2.46）

]
#solution[
作 $B D tack.t A_1 A$ 于 $D$（$D$ 点也可能在 $A A_1$ 的延长线上）连结 $D C$.

$because quad triangle.stroked.t A B C$ 是正三角形，

$therefore quad A B = A C = B C = a$,

又 $because quad angle A_1 A B = angle A_1 A C = 45 degree$, $A D = A D$

$therefore quad triangle.stroked.t A D B tilde.equiv triangle.stroked.t A D C$

$therefore quad angle A D C = angle A D B = 90 degree$

$therefore quad A_1 A tack.t$ 平面 $B C D$

$therefore quad triangle.stroked.t B C D$ 为棱柱的直截面．

$because quad B D = D C = sqrt(2) / 2 a$

$therefore quad triangle.stroked.t B C D$ 的周长 $p = 2 times sqrt(2) / 2 a + a =\(sqrt(2) + 1\)a$

$because quad$ 棱柱的侧棱为 $b$,

$therefore quad S_(upright("斜棱柱侧")) = p dot.op b =\(sqrt(2) + 1\)a b$

答：斜棱柱 $A B C - A_1 B_1 C_1$ 的侧面积为 $\(sqrt(2) + 1\)a b$.

问：

+ 当 $a\,b$ 有什么关系时，$D$ 点与 $A_1$ 重合？$D$ 点落在 $A A_1$ 的延长线上？

+ 思考本题是否还有别的解法．

]
#example[
圆柱的轴截面的对角线为 $d$, 它与底面所成的角为 $beta$,

+ 求圆柱的侧面积，

+ $beta$ 为何值时，圆柱的侧面积最大，这个最大值是多少？

]
#figure([#fig("2-42");

  ],
  caption: [
  ]
)

#solution[
如图2.47, 已知圆柱 $A A_1$, $B_1 A$ 是其轴截面的一条对角线．因为 $B_1 A$ 与圆柱底面所成的角为 $beta$, 而 $B_1 B$ 垂直底面，所以 $angle B_1 B A = 90 degree$, $angle B_1 A B = beta$, 由 $A B_1 = d$,

$therefore quad B_1 B = d sin beta$#h(1em);底面半径 $O B = 1 / 2 d cos beta$

$therefore quad$ 底面圆周长 $C = 2 pi dot.op d / 2 cos beta = pi d cos beta$

$ S_(upright("圆柱侧")) = C dot.op B_1 B & = pi d cos beta dot.op d sin beta\
 & = pi d^2 cos beta dot.op sin beta = 1 / 2 pi d^2 sin 2 beta $ #noindent;又 $because quad\|sin 2 beta\|lt.eq 1$

$therefore quad$ 当 $sin 2 beta = 1$ 时，即 $2 beta = pi / 2\,quad beta = pi / 4$ 时，$S_(upright("圆柱侧")) = 1 / 2 pi d^2$ 最大．

答：圆柱的侧面积为 $1 / 2 pi d^2 sin 2 beta$⁠；当 $beta = pi / 4$ 时，圆柱的侧面积最大，这个最大值是 $1 / 2 pi d^2$⁠．

]
#exercise[
+ 一长方体的三度之比为1:2:3, 其全面积为88, 求三度之长．

+ 一直平行六面体的侧棱长为9cm, 底面相邻两边的长分别是7cm和11cm, 夹角是 $45 degree$, 求此平行六面体的全面积．

+ 试证：两个等高圆柱侧面积的比等于它们半径的比．

+ #lead-list(none, 2)[
  + 通过等边圆柱两底中心的轴截面面积为9, 求它的侧面积．

  + 等边圆柱的全面积为 $24 pi$, 求它底面的半径．
  ]

+ 按照如图所示的两个视图，说明它们所表示的物体的形状，并画出它们的直观图，分别求出它们的全面积（视图 (1)、(2) 中所标尺寸单位为mm）．

]
#fig-center[
#fig("2-43");

#subcap[
第5题

]
]
=== 棱锥和圆锥的侧面积和全面积
棱锥的侧面积等于它的各个侧面面积之和，棱锥的全面积等于它的侧面积和底面积的和．

设正棱锥的底面边长为 $a$, 而它的斜高为 $ell$, 那么它的一个侧面的面积就等于 $1 / 2 a ell$⁠，而所有侧面面积的和：$ S_(upright("正棱锥侧")) = 1 / 2 n a ell $

设p是底面周长，则 $p = n a$, 所以，$ S_(upright("正棱锥侧")) = 1 / 2 p ell $ #noindent;由此可得下面定理．

#blk[定理][
如果正棱锥的底面周长是 $p$, 斜高是 $ell$, 那么它的侧面积计算公式是：$ S_(upright("正棱锥侧")) = 1 / 2 p ell $

]
#blk[推论][
正棱锥的全面积等于它的侧面积与底面积之和．

]
如果把圆锥侧面沿着它的一条母线展开在平面上，如图2.48所示，圆锥侧面的展开图是一个扇形，这个扇形的弧长等于圆锥的底面周长 $C$, 如果底面半径为 $R$, 则 $C = 2 pi R$, 扇形的半径等于圆锥的母线 $ell$, 而这个扇形的面积就是圆锥的侧面积．由此可得下面定理．

#figure([#fig("2-44");

  ],
  caption: [
  ]
)

#blk[定理][
如果圆锥底面半径是 $R$, 周长是 $C$, 侧面母线长是 $ell$, 那么它的侧面积计算公式是 $ S_(upright("圆锥侧")) = 1 / 2 C ell = pi R ell $

]
#blk[推论1][
圆锥的全面积等于它的侧面积和底面积之和．即 $ S_(upright("圆锥全")) = pi R ell + pi R^2 = pi R\(ell + R\) $

]
#blk[推论2][
如果设圆锥的展开面扇形的中心角为 $theta$, 圆锥的轴截面的顶角为 $alpha$, 那么 $ theta = frac(2 pi R, ell) = 2 pi R / ell\(upright("弧度")\) $ #noindent;或 $ theta = 360 degree R / ell = 360 degree sin alpha / 2 $

]
#example[
已知三棱锥 $V - A B C$ 中，直角 $triangle.stroked.t A B C$ 的两条直角边 $A B = 6$⁠cm, $B C = 8$⁠cm, 高 $V O = 12$⁠cm, 并且 $O$ 点是 $triangle.stroked.t A B C$ 的内心，求棱锥的全面积．

]
#solution[
如图2.49, 过 $triangle.stroked.t A B C$ 的内心 $O$ 作 $O D tack.t A B$ 于 $D$, $O E tack.t B C$ 于 $E$, $O F tack.t A C$ 于 $F$, 连结 $V D$⁠、$V E$⁠、$V F$.

$because quad V O tack.t$ 底面 $A B C$,

$therefore quad O D$ 是 $V D$ 在底面 $A B C$ 上的射影，由三垂线定理，有 $V D tack.t A B$.

同理，$V E tack.t B C$, $V F tack.t A C$

$because quad O D = O E = O F = frac(S_(triangle.stroked.t A B C), tfrac(1, 2)\(A B + B C + A C\)) = 24 / 12 = 2$

$therefore quad V D = V E = V F = 2 sqrt(37)$

$therefore quad S_(triangle.stroked.t V A B) = 1 / 2 A B dot.op V D = 1 / 2 dot.op 6 dot.op 2 sqrt(37) = 6 sqrt(37)$ $ S_(triangle.stroked.t V B C) & = 1 / 2 B C dot.op V E = 1 / 2 dot.op 8 dot.op 2 sqrt(37) = 8 sqrt(37)\
S_(triangle.stroked.t V A C) & = 1 / 2 A C dot.op V F = 1 / 2 dot.op 10 dot.op 2 sqrt(37) = 10 sqrt(37) $ #noindent;因此：$ S_(upright("三棱锥全")) & = S_(triangle.stroked.t A B C) + S_(triangle.stroked.t V A B) + S_(triangle.stroked.t V B C) + S_(triangle.stroked.t V A C)\
 & = 24 + 6 sqrt(37) + 8 sqrt(37) + 10 sqrt(37)\
 & = 24 + 24 sqrt(37) approx 169.9\(upright(c m^2)\) $

答：这个三棱锥的全面积约为 $169.9 upright(c m^2)$.

]
#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("2-45");], caption: []), figure([#fig("2-46");], caption: []))));

#example[
已知一个圆锥的底面半径为 $R$, 高为 $H$, 在其中有一个高为 $x$ 内接圆柱．

+ 求圆柱的侧面积．

+ $x$ 为何值时，圆柱的侧面积最大？

]
#solution[
+ 画圆锥及其内接圆柱的轴截面图（图2.50）

  设内接圆柱的底面半径为 $r$, 圆锥的底面半径为 $R$. 那么内接圆柱的侧面积 $ S_(upright("圆柱侧")) = 2 pi r x $ #noindent;又 $because quad r / R = frac(H - x, H)$（为什么？）

  $therefore quad r = R - R / H x$

  $therefore quad S_(upright("圆柱侧")) = 2 pi R x - frac(2 pi R, H) x^2$

+ 因为 $S_(upright("圆柱侧"))$ 的表示式中，$x^2$ 的系数小于零，所以这个二次函数有最大值，当这个二次函数达到最大值时，圆柱的侧面积最大．这时圆柱的高是 $ x = - frac(2 pi R, - 2 dot.op frac(2 pi R, H)) = H / 2 $

  答：当圆柱的高是已知高一半时，它的侧面积最大．

]
#example[
若圆锥的侧面积等于和它等高、等底的圆柱的侧面积时，求圆锥轴截面顶角的度数．

]
#figure([#fig("2-47");

  ],
  caption: [
  ]
)

#solution[
如图2.51, 设圆锥、圆柱的高为 $h$, 底面半径为 $r$, 则 $ S_(upright("圆柱侧")) & = 2 pi r h\
S_(upright("圆锥侧")) & = pi r ell = pi r sqrt(h^2 + r^2) $ #noindent;根据已知条件，$ 2 pi r h & = pi r sqrt(h^2 + r^2)\
h / sqrt(h^2 + r^2) & = 1 / 2 $ #noindent;即：$cos alpha / 2 = 1 / 2$⁠，$0 degree < alpha < 180 degree$

$therefore quad alpha / 2 = 60 degree\,#h(2em) alpha = 120 degree$

答：轴截面顶角等于 $120 degree$.

]
#exercise[
+ 正四棱锥的底面边长是 $a$, 高是 $2 a$, 计算它的全面积．

+ 一个正三棱锥的侧面都是直角三角形，底面边长是 $a$, 求它的全面积．

+ 圆锥母线和底面夹角是 $30 degree$, 求它的侧面展开图的圆心角．

+ 将半径为 $r$ 的薄圆铁板沿它的三条半径截成全等的三个扇形，作成三个圆锥筒，求圆锥筒的高（不计接头）．

+ 将一个半圆卷成圆锥的侧面，求这圆锥母线和高的夹角．

+ 求底面边长为 $2 a$, 高为 $2 a$ 的正四棱锥的内切圆锥的侧面积．

+ 已知正三棱锥 $V - A B C$, 底面每边长为 $a$, 侧棱和底面所成的角为 $45 degree$, 求它的全面积．

]
#fig-center[
#scale(60%, reflow: true, image("/math5/fig/6ti.png"));

#subcap[
第6题

]
]
=== 棱台和圆台的侧面积和全面积 
棱台的每个侧面都是梯形，所有这些侧面面积之和就是棱台的侧面积，棱台的全面积等于它的侧面积和两个底面积的和．

如果棱台是正棱台，那么它的每个侧面都是全等的等腰梯形，设它的上、下底边长分别是 $a'$ 和 $a$, 边数是 $n$, 斜高是 $h'$, 那么它的侧面积是 $ n dot.op 1 / 2\(a' + a\)h' = 1 / 2\(n a + n a'\)h' $

由于 $n a'$⁠、$n a$ 分别是上、下底的周长，设 $n a' = p'$, $n a = p$, 我们就得到下面定理．

#blk[定理][
如果正棱台的上、下底的周长分别为 $p'$ 和 $p$, 斜高是 $h'$, 那么它的侧面积的计算公式是 $ S_(upright("正棱台侧")) = 1 / 2\(p + p'\)h' $

]
显然，在正棱台的侧面积计算公式中，如果 $p' = p$, 就得到正棱柱的计算公式：$ S_(upright("正棱柱侧")) = p h' $ #noindent;这里 $h'$ 为高．

如果 $p' = 0$, 就得到正棱锥的侧面积计算公式：$ S_(upright("正棱锥侧")) = 1 / 2 p h' $

#blk[推论][
正棱台的全面积等于它的侧面积和两个底面积的和．

]
圆台的侧面展开图可以看成是两个圆锥侧面展开图的差，通常把这种图形叫做扇环．如图2.52所示．

#figure([#fig("2-48");

  ],
  caption: [
  ]
)

圆台的侧面展开图是一个大扇形去掉一个小扇形．大扇形的弧长是圆台下底的圆周长 $C$, 小扇形弧长是圆台上底圆周长 $C_1$, 设圆台的母线 $A A_1 = ell$, 上、下底半径分别是 $R_1$ 和 $R$, 于是 $ S_(upright("圆台侧")) = S_(upright("扇形") V A A') - S_(upright("扇形") V A_1 A'_1) = 1 / 2 C V A - 1 / 2 C_1 V A_1 $

于是问题归结为求 $V A$ 和 $V A_1$, 因为 $C_1$ 和 $C$ 所张的圆心角是同一个角 $theta$, 则 $ frac(C_1, V A_1) = frac(C, V A) $ #noindent;即 $ frac(V A - ell, V A) = C_1 / C $ #noindent;因此：#numbered-eq($ V A = frac(C ell, C - C_1)\,#h(2em) V A - ell = frac(C_1 ell, C - C_1) $);#noindent;所以：#numbered-eq($ S_(upright("圆台侧")) = 1 / 2 dot.op frac(C^2 ell, C - C_1) - 1 / 2 dot.op frac(C_1^2 ell, C - C_1) & = 1 / 2 dot.op frac(\(C^2 - C_1^2\)ell, C - C_1)\
 & = 1 / 2\(C_1 + C\)ell $);

$because quad C = 2 pi R\,quad C_1 = 2 pi R_1$⁠，代入 (2.10)

$therefore quad S_(upright("圆台侧")) = pi\(R + R_1\)ell$

由此，我们得到下面定理

#blk[定理][
如果圆台的上、下底半径分别是 $R_1$ 和 $R$, 周长分别是 $C_1$ 和 $C$, 那么圆台的侧面积计算公式是 $ S_(upright("圆台侧")) = 1 / 2\(C_1 + C\)ell = pi\(R_1 + R\)ell $

]
#blk[推论][
+ 圆台的全面积等于它的侧面积与上、下两个底面积的和

+ $theta = 2 pi frac(R - R_1, ell)\(upright("弧度")\)quad upright("或") quad theta = 360 degree frac(R - R_1, ell)$

#noindent;显然，在圆台的侧面积公式中，如果 $C_1 = C$, 就得到圆柱侧面积公式：$S_(upright("圆柱侧")) = C ell$\; 如果 $C_1 = 0$, 就得到圆锥的侧面积公式：$S_(upright("圆锥侧")) = 1 / 2 C ell$.

]
#example[
粉碎机的下料斗是正四棱台（图2.53）. 它的两底边长分别是80mm和440mm, 高是200mm, 计算制造这样一个下料斗所需铁板面积．（保留两位有效数字）

]
#solution[
由于：$ upright("上底周长") p' & = 4 times 80 = 320 upright(\(m m\))\
upright("下底周长") p & = 4 times 440 = 1760 upright(\(m m\))\
upright("斜高") h' & = sqrt(200^2 + (frac(440 - 80, 2))^2) approx 269 upright(\(m m\)) $ #noindent;所以：$ S_(upright("正棱台侧")) = 1 / 2\(p + p'\)h' approx 1 / 2\(320 + 1760\)times 269 approx 2.8 times 10^5\(upright(m m^2)\) $ #noindent;答：制造这样一个下料斗需要的铁板约为 $2.8 times 10^5 upright(m m^2)$.

]
#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("2-49");], caption: []), figure([#fig("2-50");], caption: []))));

#example[
一个圆台的两个底的半径是1和3, 侧面展开图是圆环的一部分，已知全圆环的面积和这个圆台的全面积相等，求这圆台母线长，侧面积和全面积．

]
#solution[
设图2.54(1) 是圆台的轴截面，设 $x$ 是截去的小圆锥的母线长，$ell$ 为圆台的母线，根据已知条件，有 $ frac(x + ell, x) = 3 / 1 $

$therefore quad x = 1 / 2 ell$

又 $because quad pi dot.op 1^2 + pi dot.op 3^2 + pi ell\(1 + 3\)= pi [(frac(3 ell, 2))^2 - (1 / 2 ell)^2]$

即：$ell^2 - 2 ell - 5 = 0$

$therefore quad ell = frac(2 plus.minus sqrt(4 + 20), 2) = 1 + sqrt(6)$（由于 $ell > 0$, 故舍去负根）

因此：$ S_(upright("圆台侧")) & = pi ell\(R + R_1\)= pi\(1 + sqrt(6)\)\(1 + 3\)= 4 pi\(1 + sqrt(6)\)\
S_(upright("圆台全")) & = 4 pi\(1 + sqrt(6)\)+ pi dot.op 1^2 + pi dot.op 3^2 = 14 pi + 4 pi sqrt(6) = 2 pi\(7 + 2 sqrt(6)\) $

答：圆台的母线长为 $\(1 + sqrt(6)\)$, 侧面积为 $4 pi\(1 + sqrt(6)\)$, 全面积为 $2 pi\(7 + 2 sqrt(6)\)$.

]
#exercise[
+ 正四棱台两底面边长分别为8m和2m, 高是4m, 求它的全面积．

+ 正三棱台的两底的边长分别为6dm和12dm, 高为1dm, 求它的侧面积．

+ 一个正三棱台的上、下底面的边长分别是 $a\,b$, 侧面与底面成 $60 degree$ 的二面角，求它的全面积．

+ 正四棱台的上、下两底面边长分别为 $a\,b$, 其侧面面积等于两底面积之和，求此棱台的高．

+ 一个圆台的高为3cm, 一个底面半径是另一个底面半径的2倍，母线和下底的夹角为 $45 degree$, 求它的侧面积．

+ 一个圆台的全面积等于 $572 pi upright(c m^2)$, 两底半径分别是6cm和14cm, 求这圆台的高．

]
=== 球面积和它的部分面积
前面我们求圆柱、圆锥，圆台的侧面积公式都是利用它们的展开图求出的，由于球面不能展成平面图形，所以球的表面积计算公式无法用展开图求出，我们得另想计算方法．古希腊的几何学家欧都克斯为我们提供了一个在数学上非常有应用价值的逼近法来解决这个问题．

#blk[逼近原理][
设 $alpha$⁠、$alpha'$ 是两个实数，假如它们同时被一个递增数列 $\{ a_n \}$ 和一个递减数列 $\{ b_n \}$ 所左右夹逼，而且 $\(b_n - a_n\)$ 在 $n$ 增大时，可以任意小，即 $ a_1 lt.eq a_2 lt.eq dots.h.c lt.eq a_n < dots.h.c < alpha\,#h(2em) alpha' < dots.h.c lt.eq b_n lt.eq dots.h.c lt.eq b_2 lt.eq b_1 $ #noindent;且当 $n$ 无限增大时，$\(b_n - a_n\)arrow.r 0$, 则 $alpha$ 必须等于 $alpha'$.

]
换句话说，上述左右夹逼数列唯一地确定了界于其间的那个实数 $alpha$.

为了求得球面积的部分面积计算公式，我们还需要下面的预备知识．

#blk[定义][
如果平面内的一条折线，它所有的边都相等，并且相邻两边的夹角也都相等，那么这个平面折线叫做正折线．

]
#blk[推论][
正折线都有一个中心，它是到正折线各顶点距离都相等，并且到各边距离相等的一个点．

]
#blk[引理1][
一条线段绕着和它在同一平面内并且至多有和它的一个端点相交的轴旋转所生成的旋转面的面积（即圆柱、圆锥、圆台的侧面积）等于一个圆柱的侧面积，这个圆柱的高等于这线段在轴上的射影，而它的底面半径等于以母线为底边，两顶点在轴上的等腰三角形的高．

]
已知：如图2.55所示，线段 $A B$ 与轴 $X Y$ 在同一平面内，$M R$ 垂直平分线段 $A B$ 于 $M$, 且与 $X Y$ 轴交于 $R$, $C D$ 是 $A B$ 在 $X Y$ 上的射影，$M O tack.t X Y$ 于 $O$, $S_(A B)$ 是线段 $A B$ 旋转面的面积

求证：$S_(A B) = 2 pi M R dot.op C D$

#figure([#fig("2-51");

  ],
  caption: [
  ]
)

#proof[
+ 若线段 $A B pll X Y$, 则 $C D = A B$, $M O$ 与 $M R$ 重合，

  $because quad M R = B D\,quad A B = C D$

  $therefore quad S_(upright("圆柱侧")) = 2 pi B D dot.op A B = 2 pi M R dot.op C D$

+ 若线段 $A B$ 的端点 $A$ 在 $X Y$ 上，

  $because quad angle B A D = angle R M O\,quad angle M O R = angle B D A = 90 degree$

  $therefore quad triangle.stroked.t O M R tilde.rev triangle.stroked.t D A B$

  $therefore quad frac(M R, A B) = frac(M O, A D) = frac(B D, 2 A D)\,quad 2 M R dot.op A D = A B dot.op B D$

  $therefore quad S_(upright("圆锥侧")) = pi B D dot.op A B = 2 pi M R dot.op C D$（$A$ 点与 $C$ 点重合）

+ 若线段 $A B$ 不平行 $X Y$ 又不与 $X Y$ 相交，作 $A E pll X Y$ 设与 $B D$ 交于 $E$.

  $because quad angle B A E = angle R M O\,quad angle M O R = angle A E B = 90 degree$

  $therefore quad triangle.stroked.t A E B tilde.rev triangle.stroked.t M O R$

  $therefore quad A B dot.op M O = A E dot.op M R$

  $because quad A E = C D$

  $therefore quad A B dot.op M O = C D dot.op M R$

  $therefore quad S_(upright("圆台侧")) = 2 pi M R dot.op C D$

]
本引理的结论可以看成是求圆柱、圆锥、圆台侧面积的一般公式．

#blk[引理2][
一条正折线，绕着轴（这个轴是一条在折线所在平面内的直线，它过折线的中心并且不穿过折线）旋转所得的旋转体的侧面积等于一个圆柱的侧面积，这个圆柱的底面半径等于折线的边心距，而高等于折线在旋转轴上的射影．

]
已知：一条正折线 $A B C D E$ (图2.56) 绕着过折线中心 $O$ 的轴 $X Y$ 旋转，所得的旋转面面积如图2.57所示，设它为 $S$\; 令 $h = O M = O N = O P = O Q$ 表示折线的边心距；用 $a b$, $b c$, $c d$, $d e$ 分别表示线段 $A B$⁠、$B C$⁠、$dots.h D E$ 在轴 $X Y$ 上的射影．

求证：$S = 2 pi h\(a e\)$

#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("2-52");], caption: []), figure([#fig("2-53");], caption: []))));

#proof[
当正折线 $A B C D E$ 旋转时，它的每一条边，便分别画出一个圆锥、圆台或者圆柱的侧面，根据圆柱、圆锥、圆台的求侧面积的一般公式，正折线的边 $A B$⁠、$B C$⁠、$C D$ 和 $D E$ 旋转所得的旋转面的面积分别等于 $2 pi h\(a b\)$⁠、$2 pi h\(b c\)$⁠、$2 pi h\(c d\)$ 和 $2 pi h\(d e\)$. 因此：$ S = 2 pi h\(a b + b c + c d + d e\)= 2 pi h dot.op\(a e\) $

我们可以把球面积看作半圆弧绕着它的直径旋转所得的面积，因为这半圆弧的内接正折线与外切正折线绕着直径旋转所得的面积是可求的（如前段所述），故我们先用半圆弧的内接正折线和外切正折线来夹逼这圆弧，当边数 $n$ 增多时，相应的内接正折线增大，愈来愈贴近半圆弧，而相应的外切正折线减小，也愈来愈贴近半圆弧，这就是说，内接正折线绕直径旋转所得面积数列与外切正折线绕直径旋转所得的面积数列，从左、右两方面愈来愈逼近球面积的值，从而我们就可以得到球面积公式．

为了以后讨论方便起见，我们先考虑半圆弧的一部分绕着该半圆弧的直径旋转所得的球的部分面积公式．

#figure([#fig("2-54");

  ],
  caption: [
  ]
)

如图2.58, 圆弧 $A E$ 绕着和它不相交的直径旋转所得部分球面，如图2.59所示．这部分球面可以用两个平行平面截球面得到．我们把夹在平行平面之间的球面部分叫做球带，两个平行截面间的距离叫做球带的高，记作 $h$.

#figure([#fig("2-55");

  ],
  caption: [
  ]
)

作圆弧 $A E$ 的内接正 $n$ 边折线和外切正 $n$ 边折线，$a$⁠、$e$ 两点是圆弧 $A E$ 的两端在直径 $K L$ 上的正射影．于是圆弧 $A E$ 的内接正 $n$ 边折线在直径 $K L$ 上的射影是线段 $a e$, 它是一个与边数 $n$ 无关的定值，即 $a e = h$.

设 $h_n$ 为 $wideparen(A E)$ 的内接正 $n$ 边折线的边心距．$sigma_n$ 为内接正 $n$ 边折线绕直径 $K L$ 旋转所得的面积．半径 $R$ 是 $wideparen(A E)$ 的外切正 $n$ 边折线的边心距．线段 $a' e'$ 是外切正 $n$ 边折线在直径 $K L$ 上的正射影．$S_n$ 为外切正 $n$ 边折线绕直径 $K L$ 旋转得到的面积．$S_(upright("球带"))$ 为圆弧 $A E$ 绕直径 $K L$ 旋转得到的球带面积．根据几何直观，我们得到

+ 当边数 $n$ 增加时，$sigma_n$ 递增，$S_n$ 递减．

+ $sigma_n < S_(upright("球带")) < S_n$⁠，且由引理2可知：$ sigma_n = 2 pi h_n\(a e\)= 2 pi h_n h\,#h(2em) S_n = 2 pi R\(a' e'\) $

显然，$h_n$ 随着 $n$ 增大而增大，而且趋近于 $R$, 换句话说，$\(R - h_n\)$ 可以任意小，即 $\(R - h_n\)arrow.r 0$.

现在我们要进一步说明 $a' e'$ 随 $n$ 增大而减小，并且趋近于 $a e = h$（球带高）．

换言之，$a' e' - h$ 可以任意小，即 $\(a' e' - h\)arrow.r 0$. 因为，内接正折线与外切正折线对于圆心是位似形，其相似比是 $R / h_n$⁠，由此得 $ frac(a' e', a e) = R / h_n > 1\,#h(2em) a' e' = R / h_n dot.op h $

当 $n$ 增大时，$h_n$ 增大并且趋近于 $R$, 于是 $a' e'$ 减小，并且愈来愈趋近 $a e = h$. 这样我们就得到：$ sigma_n = 2 pi h_n dot.op h < S_(upright("球带")) < 2 pi R\(a' e'\)= S_n $ #noindent;且当 $n$ 增大时，$h_n arrow.r R$, $a' e' arrow.r h$.

（3）最后，我们要说明，当 $n$ 增大时，$S_n - sigma_n$ 可以小到任意小．

$because quad S_n / sigma_n = frac(R\(a' e'\), h_n dot.op h) = R / h_n dot.op frac(a' e', h) = R^2 / h_n^2\,quad frac(S_n - sigma_n, S_n) = frac(R^2 - h_n^2, R^2)$

$therefore quad S_n - sigma_n = S_n frac(\(R + h_n\)\(R - h_n\), R^2)$

又 $because quad S_n < S_1\,quad R + h_n < 2 R$

$therefore quad S_n - sigma_n < frac(2 S_1, R)\(R - h_n\)$

故：当 $n$ 增大时，$R - h_n$ 可任意小，从而，$S_n - sigma_n$ 可以任意小．这就是说 $S_(upright("球带"))$ 应定义为夹逼数列 $\{ sigma_n \}$ 和 $\{ S_n \}$ 所确定的那个数．

另一方面，由 $h_n arrow.r R$, $a' e' arrow.r h$, 我们看出，恒有 $ sigma_n = 2 pi h_n dot.op h < 2 pi R dot.op h < 2 pi R\(a' e'\)= S_n $ #noindent;根据逼近原理知 $ S_(upright("球带")) = 2 pi R dot.op h $

]
于是我们得到下面的定理．

#blk[定理][
球带的面积等于截成它的球面上大圆周长与球带的高的积．即 $ S_(upright("球带")) = 2 pi R dot.op h $

]
如果截球的两个平行平面都成为球的切面，那么 $a e =$ 直径 $= 2 R$. 那么球带就变成了整个球面，所以球面积 $S_(upright("球")) = 2 pi R dot.op 2 R = 4 pi R^2$.

由此，我们得到下面定理．

#blk[定理][
球面面积等于它的大圆面积的四倍，即 $ S_(upright("球面")) = 4 pi R^2 $

]
如果截球的两个平行平面的一个成为切面，那么这时的球带所变成的球面部分叫做#strong[球冠]．截平面得到的圆叫做球冠的#strong[底面]，垂直于截面的直径被截得的一段叫做球冠的#strong[高]，记作 $h$. 如图2.60所示．

球冠也可以看作是一段圆弧绕经过它的一个端点的直径旋转得到的球面部分，这时，$a e = h$, 于是得到下面定理．

#blk[定理][
球冠的面积等于截它的球面上大圆周长与球冠的高的积，即 $ S_(upright("球冠")) = 2 pi R dot.op h $

]
我们注意到球冠的面积公式与球带的面积公式相同．

#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("2-56");], caption: []), figure([#fig("2-57");], caption: []))));

#example[
一扇形的中心角为 $90 degree$, 它的面积为 $Q$, 绕过圆弧中点的半径旋转，求所得旋转面的面积.

已知：扇形 $A D B O$ 面积 $= Q$, $D$ 为 $wideparen(A B)$ 的中点，$angle A O B = 90 degree$

求：扇形 $A D B O$ 绕半径 $O D$ 旋转所得面积 $S$.

]
#solution[
如图2.61, 扇形的 $B D$ 弧绕 $O D$ 旋转得到球冠的面积，$O B$ 边绕 $O D$ 旋转得到圆锥侧面积，故所求旋转面的面积 $ S = 2 pi R h + pi r R $

$because quad upright("扇形面积") Q = frac(pi R^2, 4)$

$therefore quad R = sqrt(frac(4 Q, pi))$

$because quad h = C D = O D - O C = R - frac(R sqrt(2), 2) = R / 2\(2 - sqrt(2)\)\,quad r = frac(R sqrt(2), 2)$

因此：$ S & = 2 pi R dot.op R / 2 (2 - sqrt(2)) + pi frac(R sqrt(2), 2) R = pi R^2 (2 - sqrt(2) + sqrt(2) / 2)\
S & = 4 Q (2 - sqrt(2) / 2) = 2 Q (4 - sqrt(2)) approx 5.2 Q $

答：所求得旋转面的面积约为 $5.2 Q$.

]
#example[
如将地球近似地当作一个球，求宇宙飞船距地面4000公里高度时，能看到球面部分的面积．

]
#figure([#fig("2-58");

  ],
  caption: [
  ]
)

#solution[
人在宇宙飞船中离地面4000公里高度时，能看到地球表面的图形是球冠．过宇宙飞船 $P$ 和球心 $O$ 的连线作出地球的大圆（图2.62）, 其中、$P A$⁠、$P B$ 是大圆的切线，$P D$ 是飞船到地球面的距离，$C D$ 为球冠的高．

在直角三角形 $O A P$ 中，已知 $ O A = 6.37 times 10^3\,quad O P = 6370 + 4000 = 10370 approx 1.04 times 10^4 $

在直角 $triangle.stroked.t O A P$ 中，

$because quad O A^2 = O C dot.op O P$

因此：$ \(6.37 times 10^3\)^2 & = O C dot.op 1.04 times 10^4\
O C & = frac(40.6 times 10^6, 1.04 times 10^4) = 39 times 10^2 = 3.9 times 10^3\
C D & = O D - O C = 6370 - 3900 = 2.47 times 10^3 $ #noindent;所以 $ upright("球冠") A D B upright("的面积") = 2 pi R dot.op C D & = 2 pi times 6 . 37 times 10^3 times 2 . 47 times 10^3\
 & = 315 pi times 10^5\
 & approx 9.9 times 10^7 upright("（平方公里）") $

答：能看到地球部分的面积为 $9 . 9 times 10^7$ 平方公里．

]
#exercise[
+ 一个球的半径如果扩大10倍，它的面积是否也扩大10倍？

+ 半径为 $R$ 的半球，它的全面积是否等于 $2 pi R^2$?

+ 如果球的大圆面积扩大 $n$ 倍，球面积变化怎样？

+ 求证：如果圆锥的母线长等于底面的直径，那么它的全面积等于以它的高为直径的球面的面积．

+ 一个球冠是球面积的三分之一，求球冠的高．

+ 球带的两个底面半径分别是20cm和24cm, 球的半径是25cm, 求球带的面积（注意：分两种情况考虑）．

+ 已知：圆柱底面直径与高都等于球的直径，求证：

  + 球的表面积等于圆柱的侧面积；

  + 球的表面积等于圆柱全面积的 $2 / 3$.

+ 要使从一点发出的光，能照到半径是 $R$ 的球面的 $1 / 3$, 光源应离球心多远？

+ 计算地球表面积约是多少平方公里？

]
#heading(level: 2, numbering: none, supplement: [toc-sub])[习题2.2]

+ 已知一个立方体的圆盖铁箱，它的对角线长是 $4 sqrt(3)$⁠m, 制造这个铁箱需要多少铁皮？

+ 正四棱柱的侧面积是32$upright(c m^2)$, 全面积40$upright(c m^2)$, 求它的高．

+ 求证：直三棱柱两个侧面面积的和，大于第三个侧面的面积．

+ 一个长方体的三度成等差级数，高与底之比为8:5, 求棱柱的高和底边．

+ 有一个圆柱形锅炉，它的直径是1.0米，高为2.5米，假如用钢板制造这个锅炉，焊接地方需要等于圆柱全面积的10%的钢板，那么制造这个锅炉需要多少钢板？

+ 正四面体的全面积为 $36\(sqrt(3) + 1\)upright(c m^2)$, 求正四面体的高．

+ 圆柱的侧面积展开图是一个正方形，求这个圆柱侧面积和底面积的比．

+ 正三棱锥底面边长是 $a$, 侧面与底面所成的角是 $60 degree$, 求它的全面积．

+ 一座仓库屋顶呈正四棱锥形，底面边长为2.7m, 侧棱长2.3m, 如果要在屋顶上铺一层油毡，接缝处需要的油毡占屋顶面积的5%, 问共需要多少油毡？

+ 证明：一个棱锥所有的侧面与底面所成的二面角都等于 $alpha$, 那么 $ S_(upright("侧")) = frac(S_(upright("底")), cos alpha) $

+ 圆锥的高是10cm, 侧面展开图是半圆，求圆锥的侧面积．

+ 圆锥的轴截面是正三角形，求证：它的侧面积是底面积的2倍．

+ 经过高为20cm的圆锥的顶点与底面成 $45 degree$ 角的二面角的平面把圆锥底面周长截去 $1 / 4$⁠，求圆锥的全面积．

+ 已知一个正三棱台的侧棱 $ell = 10.2$⁠cm, 底面边长分别是 $a = 6.25$⁠cm, $b = 11.2$⁠cm, 求它的侧面积．

+ 一圆台全面积为 $572 pi upright(m^2)$⁠，两底的半径分别是6m和14m, 求高．

+ 已知一圆台的轴截面面积为 $F$, 母线和底面夹角为 $30 degree$, 求圆台侧面积．

+ 正四棱台高为12cm, 两底面边长的差为10cm, 全面积为 $512 upright(c m^2)$, 求两底面的边长．

+ 一直角梯形的上、下底与高的比为 $1 : 2 : sqrt(3)$, 绕直角边旋转成一个圆台，求这个圆台的上、下底面积和侧面积的比．

+ 在一个正四棱台内，有一个以它的上底为底面，下底的中心为顶点的棱锥，如果棱台上、下底面边长分别为3cm和4cm，棱锥与棱台的侧面积相等，求棱台的高．

+ 若圆台的上、下底面半径分别是 $r_1$⁠、$r_2$, 它的侧面积等于两底面积之和，试求圆台的母线长．

+ 圆台的上、下底半径分别是 $r_1$⁠、$r_2$, 母线长为 $m$, 若 $r_1 : r_2 : m = 2 : 1 : 3$, 圆台的侧面积为 $144 pi upright(c m^2)$, 求 $r_1$, $r_2$ 和 $m$.

+ 旋转轴在正方形所在平面内且通过它的一个顶点，并和以此点为端点的对角线垂直，求旋转面的面积．

+ 设圆台的上、下底面半径分别是 $r'$⁠、$r$, 母线长是 $ell$, 圆台侧面积展开后所得扇环的圆心角是 $theta$, 求证：$ theta = frac(r - r', ell) dot.op 360 degree $

+ 已知球的大圆周长是80cm, 求这个球的表面积．

+ 试证：一个球与它的外切圆柱的比等于2:3.

+ 半径是2cm的球，被一平面截得的截面半径是1cm, 求所截得的两个球冠的面积．

+ 如果把半圆分成相等的三条弧并以它的直径为轴旋转一周，试证中间球带面积等于两旁球冠面之和．

+ 在球心的同一侧，有相距9cm的平行截面，它们的面积分别为 $49 pi upright(c m^2)$ 和 $400 pi upright(c m^2)$, 求球的表面积．

+ $A$ 是直径为25cm的球面上的一点，已知这球的一个截面圆上的所有点到 $A$ 点的距离都是15cm, 求 $A$ 点到这截面的距离．

+ 一个球的半径是18cm, 经过球面上一点作一个平面，使它和经过这点的半径成 $45 degree$ 角，求这个平面截球所得截面的面积．

+ 我国第一颗人造地球卫星的远地点距地面2384km, 在这时，约有多少平方公里地面上的人能看到这颗卫星．

+ 有直径为10cm的球，以它的一条直径为轴，钻一个直径为6cm的圆孔，求这个球的球面剩余部分的面积．

+ 在一个半径为R的球内作一个内接等边圆柱，求球面被这圆柱的两底面截得的球冠和球带的面积．

+ 正四棱台外切于半径为 $R$ 的球，侧面和大底面所成的二面角为 $alpha$, 求证：这棱台的侧面积是 $frac(16 R^2, sin^2 alpha)$.

+ 一个正三棱柱外切一个球，并且内接于另一个球，试求这两个球的面积之比．

+ 半径为1的球内切于圆锥，已知圆锥母线与底面的夹角是 $2 theta$,

  + 求证：圆锥的母线与底面半径之和是 $frac(2, tan theta\(1 - tan^2 theta\))$

  + 求证：圆锥的全面积是 $frac(2 pi, tan^2 theta\(1 - tan^2 theta\))$

  + 当 $theta$ 是什么值时，圆锥全面积最小．

== 柱、锥、台、球的体积和祖暅原理
=== 体积的概念和长方体体积
#blk[定义][
表示空间几何体的内部大小的量叫做空间几何体的体积．

]
同度量长度、面积一样，要度量一个几何体的体积，先要选取一个体积单位作为度量的标准，我们约定取长、宽、高均为一个单位长度的正方体作为体积单位．度量几何体体积的大小，实际上就是求出这个几何体包含多少个体积单位，也就是这个几何体所含单位体积的量数，这个量数是个正实数．它具有下列基本性质：

#blk[性质1][
全等的几何体的体积是相等的．

]
#blk[性质2][
如果把几何体分成几个部分，它们都是较小的几何体，那么整个几何体的体积等于各部分体积的和．

]
#blk[推论][
若几何体 $A$ 含于几何体 $B$ 的内部，则 $A$ 的体积 $V\(A\)$ 小于 $B$ 的体积 $V\(B\)$, 即 $V\(A\)< V\(B\)$.

]
#proof[
把 $B$ 分成 $A$ 和 $C$ 两部分，根据基本性质2, 有 $ V\(B\)= V\(A\)+ V\(C\) $

$because quad V\(C\)> 0$

$therefore quad V\(B\)> V\(A\)$

]
#blk[性质3][
夹在两个平行平面间的几何体，被平行于这两个平行平面的任何平面所截，如果截得的两个截面面积总相等，那么这两个几何体的体积必相等．

]
例如像图2.63那样把一些薄全等圆片或长方形纸片叠积起来，如果挪动它们的位置，可以推测出上述性质3的正确性．

#figure([#scale(60%, reflow: true, image("/math5/fig/2-63.png"));

  ],
  caption: [
  ]
)

我国古代数学家祖暅早在公元五世纪，便提出了性质3, 他说：“缘幂势既同，则积不容异”．并首先应用这个原理推得球体积的计算公式．因而我们把性质3叫做祖暅原理．在欧洲直到十七世纪才有意大利的卡发雷利提出这个事实．

#blk[定理][
长方体的体积等于它的长、宽、高的积．即 $ V_(upright("长方体")) = a b c $

]
#proof[
+ 当 $a$⁠、$b$⁠、$c$ 都是整数时，每个棱被分成整数个单位线段 $u$, 过各分点作平行于长方体侧面与底面的平面，我们恰好得到 $a b c$ 个棱长为 $1 u$ 的正方体，它们恰好把长方体的内部充满，根据体积的基本性质1和2, 长方体的体积 $ V_(upright("长方体")) = a b c\(u\)^3 $

+ 当 $a$⁠、$b$⁠、$c$ 都是分数时，将 $a$⁠、$b$⁠、$c$ 通分，得到 $ a = A / n\(u\)\,#h(2em) b = B / n\(u\)\,#h(2em) c = C / n\(u\) $ #noindent;选取新的长度单位 $u'$ 等于原来长度单位的 $1 / n$⁠，即：$1 u' = 1 / n u$. 在这种情况下，取棱长为新的单位长度 $1 u'$ 的正方体为新的体积单位．于是，根据情形1, 原来的体积单位 $1\(u\)^3 = n^3\(u'\)^3$ 或 $1\(u'\)^3 = 1 / n^3\(u\)^3$.

  在取新的长度单位 $u'$ 的情况下，长方体的长、宽、高分别等于 $A\(u'\)$⁠、$B\(u'\)$⁠、$C\(u'\)$, 这里 $A$⁠、$B$⁠、$C$ 都是整数，根据情形1, 所求长方体的体积等于 $A dot.op B dot.op C\(u'\)^3$.

  又 $because quad 1\(u'\)^3 = 1 / n^3\(u\)^3$.

  $therefore quad V_(upright("长方体")) = A dot.op B dot.op C\(u'\)^3 = A dot.op B dot.op C 1 / n^3\(u\)^3 = A / n dot.op B / n dot.op C / n\(u\)^3 = a b c\(u\)^3$

+ 当 $a$⁠、$b$⁠、$c$ 为无理数时，（其中某个也可以是有理数）

  要证明这个定理仍成立，我们要用逼近原理，每个无理数都能被有理数逼近．例如 $sqrt(2)$ 用普通开方法可以求到它的任何一位小数，比如，$sqrt(2) = 1.414213 dots.h.c$

  我们可设：$ a'_1 = 1.4\,quad a'_2 = 1.41\,quad a'_3 = 1.414 dots.h.c\,quad a'_n dots.h\
  a''_1 = 1.5\,quad a''_2 = 1.42\,quad a''_3 = 1.415 dots.h.c\,quad a''_n dots.h $ #noindent;使得 $a'_n < sqrt(2) < a''_n$⁠，且 $a''_n - a'_n = 1 / 10^n arrow.r 0$

  这就是说 $sqrt(2)$ 被数列 $\{ a'_n \}$ 和 $\{ a''_n \}$ 左、右夹逼唯一确定．

  一般地说，任何一个无理数也都可以用有限小数的无穷数列左、右夹逼．即 $ a'_1 lt.eq a'_2 lt.eq dots.h.c lt.eq a'_n lt.eq dots.h.c < a < dots.h.c lt.eq a''_n lt.eq dots.h.c lt.eq a''_2 lt.eq a''_1 $ #noindent;当 $a''_n - a'_n = 1 / 10^n arrow.r 0$ 唯一确定．

  于是，若 $a$⁠、$b$⁠、$c$ 都是无理数，我们有 $ a'_n < a < a''_n\, & quad a''_n - a'_n = 1 / 10^n arrow.r 0\
  b'_n < b < b''_n\, & quad b''_n - b'_n = 1 / 10^n arrow.r 0\
  c'_n < c < c''_n\, & quad c''_n - c'_n = 1 / 10^n arrow.r 0 $ #noindent;这里的 $a'_n\,b'_n\,c'_n$\; $a''_n\,b''_n\,c''_n$ 都是有理数．

  作辅助长方体如图2.64所示，使 $O A' = a'_n\(u\)$, $O B' = b'_n\(u\)$, $O C' = c'_n\(u\)$ 和另一长方体，使 $O A'' = a''_n\(u\)$, $O B'' = b''_n\(u\)$, $O C'' = c''_n\(u\)$.

  #figure([#fig("2-59");

    ],
    caption: [
    ]
  )

  $because quad a'_n\,b'_n\,c'_n\;thick a''_n\,b''_n\,c''_n$ 都是有理数，对于辅助长方体体积，根据情形2, 得到 $ V'_n = a'_n b'_n c'_n\,#h(2em) V''_n = a''_n b''_n c''_n $ #noindent;再由体积的基本性质2的推论，得到 $ a'_n b'_n c'_n = V'_n < V < V''_n = a''_n b''_n c''_n $ #noindent;根据 $ a''_n - a'_n = 1 / 10^n arrow.r 0\,quad b''_n - b'_n = 1 / 10^n arrow.r 0\,quad c''_n - c'_n = 1 / 10^n arrow.r 0 $ #noindent;不难证明：$a''_n b''_n c''_n - a'_n b'_n c'_n$ 可以小到任意小．事实上，$ a''_n b''_n c''_n - a'_n b'_n c'_n & = a''_n b''_n c''_n - a'_n b''_n c''_n + a'_n b''_n c''_n - a'_n b''_n c'_n + a'_n b''_n c'_n - a'_n b'_n c'_n\
   & = b''_n c''_n\(a''_n - a'_n\)+ a'_n b''_n\(c''_n - c'_n\)+ a'_n c'_n\(b''_n - b'_n\)\
   & < b''_1 c''_1 1 / 10^n + a''_1 b''_1 1 / 10^n + a''_1 c''_1 1 / 10^n $ #noindent;设 $b''_1 c''_1$⁠、$a''_1 b''_1$⁠、$a''_1 c''_1$ 这三个数中最大者为 $M$, 于是 $ a''_n b''_n c''_n - a'_n b'_n c'_n < 3 M (1 / 10^n) arrow.r 0 $ #noindent;这就是说，当 $a$⁠、$b$⁠、$c$ 是无理数时，长方体的体积 $V$ 是数列 $V'_n = a'_n b'_n c'_n$ 和 $V''_n = a''_n b''_n c''_n\,thick n = 1\,2\,3\,dots.h$ 所夹逼得到的数．

  但是另一方面由不等式 $ a'_n < a < a''_n\,quad b'_n < b < b''_n\,quad c'_n < c < c''_n $ #noindent;得到 $a'_n b'_n c'_n < a b c < a''_n b''_n c''_n$⁠，根据逼近原理知 $ V_(upright("长方体")) = a b c\(u\)^3 $

由1、2、3有 $ V_(upright("长方体")) = a b c $

]
=== 棱柱、圆柱的体积
有了祖暅原理和长方体体积公式．我们就可以求出柱体的体积，如图2.65. 我们将棱柱、圆柱、长方体夹在两个平行平面之间，并假设它们的底面积都等于 $S$, 因为它们的高就是两平行平面之间的距离 $h$, 如果用一个平行于原来的两个平行平面的平面任意去截这三个柱体，所得的截面分别与各个柱体的底面全等，因而这些截面面积都等于 $S$, 根据祖暅原理，棱柱、圆柱、长方体的体积都相等．由于长方体的体积等于它的底面积乘高，因此，棱柱、圆柱的体积也都等于其底面积与高的积，这就得到下面的定理．

#blk[定理][
柱体（棱柱、圆柱）的体积等于它的底面积 $S$ 和高 $h$ 的积．

]
#figure([#fig("2-60");

  ],
  caption: [
  ]
)

#example[
已知：如图2.66, 斜棱柱 $A D'$ 的直截面 $F I$, 直棱柱 $F I'$ 的底面为直截面 $F I$, 它的侧棱 $I I'$ 等于斜棱柱的侧棱 $D D'$.

求证：$V_(upright("斜棱柱") A D') = V_(upright("直棱柱") F I')$

]
#proof[
因为这两个棱柱的侧棱相等，所以从它们的侧棱各减去它们的重合部分，剩下的侧棱长相等，即 $A F = A' F'$, $B G = B' G'$.

$because quad$ 棱柱的平行截面是全等形，

$therefore quad$ 底面 $F I$ 和底面 $F' I'$ 全等．

平移截头棱柱 $A I$, 使底面 $A D$ 和底面 $A' D'$ 重合，这时的侧棱 $F A$⁠、$G B$⁠、……等分别与 $F' A'$⁠、$G' B'$……等重合，于是，侧面 $A G$⁠、$B H$……等分别与侧面 $A' G'$⁠、$B' H'$……等重合，所以，截头棱柱 $A I$ 与截头棱柱 $A' I'$ 重合．

$therefore quad V_(upright("截头棱柱") A I) + V_(upright("截头棱柱") F D') = V_(upright("截头棱柱") F D') + V_(upright("截头棱柱") A' I')$

$therefore quad V_(upright("斜棱柱") A D') = V_(upright("直棱柱") F I')$

]
#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("2-61");], caption: []), figure([#fig("2-62");], caption: []))));

#example[
已知：如图2.67, 斜三棱柱中一个侧面的面积为 $S$, 并且这侧面到它相对侧棱间的距离为 $a$, 求这棱柱的体积．

]
#solution[
设 $A B D - A_1 B_1 D_1$ 为斜三棱柱，其中一个侧面 $A D_1$ 的面积等于 $S$, 并且与它相对的侧棱 $B B_1$ 的距离为 $P Q = a$. 过侧棱 $B B_1$ 及 $D D_1$ 分别作侧面 $A D_1$ 和侧面 $A B_1$ 的平行平面，这两个平面的交线为 $C C_1$. 再延展斜三棱柱的两个底面，那么 $A B C D - A_1 B_1 C_1 D_1$ 是一个平行六面体．（图2.67）

设以侧面 $A D_1$ 为底面，$P Q$ 即为这个平行六面体的高，所以 $V_(A C_1) = a S$. 而三棱柱 $A B D - A_1 B_1 D_1$ 的体积为这个平行六面体的体积的一半，则 $ V_(upright("三棱柱")) = frac(a S, 2) $

答：这个三棱柱的体积等于 $1 / 2 a S$.

]
#example[
已知：如图2.68, 圆柱的高为 $h$, 它的侧面展开图的母线与对角线成 $60 degree$ 角，求圆柱的体积．

]
#figure([#fig("2-63");

  ],
  caption: [
  ]
)

#solution[
设圆柱侧面展开图矩形 $A B C D$ 中 $A D = h$, $angle A D B = 60 degree$. 由直角三角形 $A B D$ 得到 $D B = 2 A D = 2 h$, $A B = sqrt(4 h^2 - h^2) = sqrt(3) h$, 而 $A B = 2 pi R$

$therefore quad 2 pi R = sqrt(3) h quad arrow.r.double quad R = frac(sqrt(3) h, 2 pi)$

因此：$V_(upright("圆柱")) = pi R^2 dot.op A D = pi frac(3 h^2, 4 pi^2) dot.op h = frac(3 h^3, 4 pi)$

答：圆柱体积是 $frac(3 h^3, 4 pi)$.

]
#exercise[
+ 长方体相交于一个顶点的三个面的面积为6$upright(c m^2)$⁠、12$upright(c m^2)$ 和8$upright(c m^2)$, 求它的体积．

+ 一个圆柱的侧面积为 $S$, 底面周长为 $C$, 求它的体积．

+ 一个正方体和一个圆柱等高，并且侧面积相等，试比较它们的体积哪个大？大多少？

+ 正八棱柱的高是 $h$, 底面边长是 $a$,　求它的体积．

+ 长方体三度的比为3:7:8, 全面积为808$upright(c m^2)$, 求它的体积．

+ 圆柱侧面展开图是长为 $20 pi$, 宽为10的矩形，求此圆柱体的体积．

+ 长方体的对角线长为10cm, 这条对角线与一个面的交角为 $30 degree$, 与另一个面的交角为 $45 degree$, 求这长方体的体积．

+ #lead-list(none, 2)[
  + 圆柱侧面展开图是边长为a的正方形，求它的体积．

  + 圆柱侧面展开图的对角线长为 $ell$, 它和母线所成的角为 $alpha$, 求这圆柱的体积．
  ]

+ 画出下列视图所表示的几何体的直观图，并求出它的全面积与体积．（视图中所标尺寸单位为mm）

]
#align(center, stack(block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, [#scale(50%, reflow: true, image("/math5/fig/2-9ti-1.png"));

#subcap[
\(1)

]], [#scale(50%, reflow: true, image("/math5/fig/2-9ti-2.png"));

#subcap[
\(2)

]])), subcap[第9题]));

=== 棱锥与圆锥的体积
如图2.69所示，设棱锥的高为 $h$, 我们用和底面平行的 $\(n - 1\)$ 个平面把高 $n$ 等分，则锥体就被切成 $n$ 片高为 $h / n$ 的薄片，这些薄片的底面都是和侧棱相交的相似三角形．以这些三角形为底面作 $n$ 个各有一部分在棱锥 $S - A B C$ 外部的三棱柱，设这些三棱柱的体积由顶点方向顺次为 $V_1\,V_2\,V_3\,dots.h\,V_n$. 另外仍以平行于底面 $triangle.stroked.t A B C$ 的相似三角形为底在棱锥的内部作 $\(n - 1\)$ 个三棱柱，设这些棱柱的体积由顶点的方向顺次为 $V'_1\,V'_2\,dots.h\,V'_(n - 1)$.

#figure([#scale(60%, reflow: true, image("/math5/fig/2-69.png"));

  ],
  caption: [
  ]
)

因为等底等高的棱柱是等积的．所以 $ V_1 = V'_1\,V_2 = V'_2\,dots.h\,V_(n - 1) = V'_(n - 1) $ #noindent;因为 $V < V_1 + V_2 + V_3 + dots.h.c + V_n\,quad V > V'_1 + V'_2 + dots.h.c + V'_(n - 1)$⁠，所以$ V'_1 + V'_2 + dots.h.c + V'_(n - 1) < V < V_1 + V_2 + dots.h.c + V_n $

设 $V'_1 + V'_2 + dots.h.c + V'_(n - 1) =\(V_(n - 1)\)'\,thick V_1 + V_2 + dots.h.c + V_n =\(V_n\)$⁠，则有 $ \(V_(n - 1)\)' < V <\(V_n\) $ #noindent;设 $V_i$ 的下底面积为 $b_i$, $triangle.stroked.t A B C$ 的面积为 $b$, 则 $ b_1 / b & = frac((1 / n h)^2, h^2) = 1 / n^2\
b_2 / b & = frac((2 / n h)^2, h^2) = 2^2 / n^2\
dots.h.c & dots.h.c $ #noindent;依此类推得到 $ b_(n - 1) / b = frac(\(n - 1\)^2, n^2) $ #noindent;因此有：$ b_1 = b / n^2\,thick b_2 = frac(2^2 b, n^2)\,dots.h\,thick b_(n - 1) = frac(\(n - 1\)^2 b, n^2) $ #noindent;所以 $ \(V_(n - 1)\)' & = frac(b h, n^3) [0^2 + 1^2 + 2^2 + dots.h.c + \( n - 1 \)^2]\
 & = frac(b h, n^3) dot.op 1 / 6 n\(n - 1\)\(2 n - 1\)\
 & = frac(b h, 3) (1 - 1 / n) (1 - frac(1, 2 n)) $ $ \(V_n\) & = frac(b h, n^3) [1^2 + 2^2 + dots.h.c + n^2]\
 & = frac(b h, n^3) dot.op 1 / 6 n\(n + 1\)\(2 n + 1\)\
 & = frac(b h, 3) (1 + 1 / n) (1 + frac(1, 2 n)) $ #noindent;所以：$ \(V_(n - 1)\)' = frac(b h, 3) (1 - 1 / n) (1 - frac(1, 2 n)) < V < frac(b h, 3) (1 + 1 / n) (1 + frac(1, 2 n)) =\(V_n\) $

因为 $V$ 和 $frac(b h, 3)$ 都是介于 $\(V_(n - 1)\)'$ 和 $\(V_n\)$ 之间的两个常数，又由于当 $n$ 无限增大时，$ \[\(V_n\)-\(V_(n - 1)\)'\]arrow.r 0 $ #noindent;所以由逼近原理，得知两者必相等．

所以 $V = 1 / 3 b h$. 由此得到下面定理．

#blk[定理][
三棱锥的体积等于它的底面积和高的乘积的三分之一．即如果 $S_(upright("底"))$ 表示三棱锥的底面积，$h$ 表示高，则有 $ V_(upright("三棱锥")) = 1 / 3 S_(upright("底")) h $

]
#blk[推论][
任何棱锥的体积都等于 $1 / 3$ 底面积乘以高．即：$ V_(upright("棱锥")) = 1 / 3 S h $ #noindent;这里，$S$ 表示棱锥底面积，$h$ 是棱锥的高．

]
#blk[定理][
等底等高的两个锥体的体积相等．

]
#figure([#fig("2-64");

  ],
  caption: [
  ]
)

#proof[
如图2.70, 取任意两个锥体，设它们的底面都是 $S$, 高都是 $h$.

把这两个锥体放在同一平面 $alpha$ 上，这时它们的顶点都在与平面 $alpha$ 平行的同一个平面内．用平行于 $alpha$ 的任意截面去截它们，截面分别与底面相似，设截面和顶点的距离分别是 $h_1$ 和 $h_2$, 截面积分别是 $S_1$ 和 $S_2$, 那么

$because quad S_1 / S = h_1^2 / h^2\,quad S_2 / S = h_2^2 / h^2\,quad h_1 = h_2$

$therefore quad S_1 / S = S_2 / S$

$therefore quad S_1 = S_2$

根据祖暅原理，这两个锥体体积相等．

]
#blk[推论][
如果圆锥底面半径是 $r$, 高是 $h$, 那么它的体积计算公式是 $ V_(upright("圆锥")) = 1 / 3 pi r^2 h $ #noindent;或 $ V_(upright("圆锥")) = 1 / 3 S h $ #noindent;其中 $S = pi r^2$.

]
#example[
已知：棱锥底面是面积为 $Q$ 的矩形，矩形对角线交角为 $60 degree$, 棱锥侧棱与底面交角为 $45 degree$, 求这棱锥的体积．（图2.71）

]
#figure([#fig("2-65");

  ],
  caption: [
  ]
)

#solution[
设棱锥 $S - A B C D$ 满足已知条件，并设棱锥底面矩形 $A B C D$ 的对边 $B C = A D = x$. 依题意则有棱锥的高 $S O = x$, 底面对角线长为 $2 x$, 那么底面面积 $ Q = 2 times 1 / 2 x^2 sin 60 degree + 2 times 1 / 2 x^2 sin 120 degree $ #noindent;解得：$x = sqrt(Q / sqrt(3))$⁠，所以棱锥的体积 $ V_(upright("棱锥")) = 1 / 3 Q dot.op sqrt(Q / sqrt(3)) = 3^(- tfrac(5, 4)) dot.op Q^(tfrac(3, 2)) $

答：这个棱锥的体积是 $3^(- tfrac(5, 4)) dot.op Q^(tfrac(3, 2))$.

]
#example[
一圆锥的侧面展开图的半径 $ell = 18$⁠dm, 圆心角 $theta = 210 degree$, 求这圆锥的体积．

]
#solution[
$because quad 210 degree = 360 degree dot.op R / ell$⁠，其中 $R$ 为圆锥底面的半径．

$therefore quad R / ell = 7 / 12\,quad R = 7 / 12 times 18 = 10.5$

$therefore quad h = sqrt(18^2 - 10.5^2) approx 14.6$

$ V_(upright("圆锥")) approx 1 / 3 times 3.14 times\(10.5\)^2 times 14.6 approx 1686\(upright(d m^3)\)approx 1.69\(upright(m^3)\) $

答：这个圆锥的体积约等于1.69$\(upright(m^3)\)$.

]
#exercise[
+ 在下列情况下，正棱锥的体积有什么变化？

  + 高和底面的边长都增加为原来的 $n$ 倍．

  + 高增加原来的 $n$ 倍，底面边长缩为原来的 $1 / n$.

+ 正三棱锥底边长为 $a$, 侧棱互相垂直，求它的体积．

+ 圆锥的底面半径为 $r$, 母线与底面成 $alpha$ 角，求圆锥的体积．

+ 圆锥的高和母线的比为4:5, 体积为 $96 pi upright(c m^3)$, 求圆锥的全面积．

+ 将半径为50cm, $theta = 90 degree$ 的扇形，卷起来围成圆锥形的容器，可以盛水多少公斤？（水的比重 $d = 1$ 克/$upright(c m^3)$, 精确到1公斤）

+ 圆锥的轴截面是顶角为 $alpha$ 的等腰三角形，这个三角形的外接圆半径为 $R$, 求圆锥的体积．

+ 证明：任何棱锥的体积都等于 $1 / 3$ 的底面积乘以高．

]
=== 棱台和圆台的体积
我们已知，棱台、圆台分别是棱锥和圆锥用平行于底面的平面截去一个锥体得到的，因此，台体的体积可以用两个锥体的体积之差来计算．

设任意台体（棱台或圆台）的上、下底面的面积分别是 $S_1$ 和 $S_2$, 高是 $h$ (图2.72).

#figure([#fig("2-66");

  ],
  caption: [
  ]
)

设截得台体时去掉锥体的高是 $x$, 去掉的锥体和原来的锥体的体积分别是 $V_1$ 和 $V_2$, 这时，$ V_1 = 1 / 3 S_1 x\,#h(2em) V_2 = 1 / 3 S_2\(x + h\) $

所以台体的体积#numbered-eq($ V_(upright("台体")) = V_2 - V_1 = 1 / 3 S_2\(x + h\)- 1 / 3 S_1 x $, label: label("2-eq2"));

现在的问题是要求出 $x$. 因为台体的上、下底面相似，并且易知，它们的面积之比等于顶点到平行底面的距离平方之比，所以 $ frac(x^2, \(x + h\)^2) = S_1 / S_2\,quad frac(x, x + h) = sqrt(S_1) / sqrt(S_2)\,quad x sqrt(S_2) =\(x + h\)sqrt(S_1) $

由此解得 $ x = frac(h sqrt(S_1), sqrt(S_2) - sqrt(S_1))\,#h(2em) x + h = frac(h sqrt(S_2), sqrt(S_2) - sqrt(S_1)) $ #noindent;代入 (#ref-num(label("2-eq2"));) 式得 $ V_(upright("台体")) & = 1 / 3 [frac(h S_2 sqrt(S_2), sqrt(S_2) - sqrt(S_1)) - frac(h S_1 sqrt(S_1), sqrt(S_2) - sqrt(S_1))]\
 & = h / 3 [frac(S_2^(tfrac(3, 2)) - S_1^(tfrac(3, 2)), sqrt(S_2) - sqrt(S_1))]\
 & = 1 / 3 h (S_2 + sqrt(S_2 S_1) + S_1) $

由此，我们得到下面定理．

#blk[定理][
如果台体（棱台、圆台）的上，下底面面积分别是 $S_1$ 和 $S_2$, 高是 $h$, 那么台体的计算公式是 $ V_(upright("台体")) = 1 / 3 h (S_1 + sqrt(S_1 S_2) + S_2) $

]
#blk[推论][
如果圆台的上、下底面半径分别是 $r_1$ 和 $r_2$, 那么它的体积 $ V_(upright("圆台")) = 1 / 3 pi h\(r_1^2 + r_1 r_2 + r_2^2\) $

]
#example[
棱台的高为20cm, 体积为 $1720 upright(c m^3)$, 两个底面对应边的比为5:8, 求两底面面积．

]
#solution[
设两底面面积为 $S_1$ 和 $S_2$, 根据已知条件，则有 $ S_1 / S_2 = 5^2 / 8^2 = 25 / 64 $ #noindent;设 $S_1 = 25 x\(upright(c m^2)\)\,quad S_2 = 64 x\(upright(c m^2)\)$⁠，由棱台的体积公式知 $ 1720 = 1 / 3 times 20 times [25 x + 64 x + sqrt(25 x dot.op 64 x)] = 860 x $

$therefore quad x = 2$

$therefore quad S_1 = 50\(upright(c m^2)\)\,quad S_2 = 128\(upright(c m^2)\)$

答：棱台的上底面积为 $50 upright(c m^2)$, 下底面积为 $128 upright(c m^2)$.

]
#example[
一个圆环铁片，它的内半径为45cm, 外半径是75cm, 用它的 $1 / 3$ 作圆台形水桶的侧面，这个水桶容积是多少 $upright(c m^3)$⁠？

]
#figure([#fig("2-67");

  ],
  caption: [
  ]
)

#solution[
如图2.73, $ell = 45$\(cm), $L = 75$\(cm)，圆环部分 $A B C D$ 等于 $1 / 3$ 圆环．以它为侧面的水桶（圆台）的体积设为 $V_(upright("圆台"))$⁠，根据已知条件列出下列方程．

#numcases($$, $1 / 3\(2 pi ell\)= 2 pi r$, $1 / 3\(2 pi L\)= 2 pi R$, $h = sqrt(\(L - ell\)^2 -\(R - r\)^2)$);

由 (2.12)，得：$1 / 3\(2 pi dot.op 45\)= 2 pi r quad arrow.r.double quad r = 15$

由 (2.13)，得：$1 / 3\(2 pi dot.op 75\)= 2 pi R quad arrow.r.double quad R = 25$

由 (2.14)，得：$ h = sqrt(\(75 - 45\)^2 -\(25 - 15\)^2) = sqrt(30^2 - 10^2) = sqrt(800) $ $ V_(upright("圆台")) & = 1 / 3 pi h\(R^2 + R r + r^2\)\
 & = 1 / 3 pi sqrt(800)\(25^2 + 25 times 15 + 15^2\)\
 & approx 8167 sqrt(2) pi\(upright(c m^3)\) $

答：水桶容积是 $8167 sqrt(2) pi upright(c m^3)$.

]
#example[
已知：正六边形 $A B C D E F$, 直线 $M N$ 在正六边形所在的平面内，通过 $F$ 点而与 $C F$ 垂直，正六边形 $A B C D E F$ 绕着 $M N$ 轴旋转，所得旋转体的体积为 $V_(upright("旋转"))$⁠，求：$V_(upright("旋转"))$⁠．

]
#figure([#fig("2-68");

  ],
  caption: [
  ]
)

#solution[
如图2.74, 延长 $B A$, $D E$ 分别与 $M N$ 交于 $O$ 和 $O'$, 易知#numbered-eq($ V_(upright("旋转")) & = 2 V_(upright("圆台")) - 2 V_(upright("圆锥")) = 2 (V_(upright("圆台")) - V_(upright("圆锥")))\
 & = 2 (1 / 3 pi dot.op F O dot.op \( F C^2 + F C dot.op O B + O B^2 \) - 1 / 3 pi dot.op O A^2 dot.op O F)\
 & = 2 / 3 pi dot.op O F\(F C^2 + O B^2 + F C dot.op O B - O A^2\) $, label: label("2-eq3"));

设正六边形 $A B C D E F$ 的一边长为 $a$, 则 $ F C = 2 a\,#h(2em) O A = 1 / 2 a\,#h(2em) O B = 3 / 2 a\,#h(2em) O F = sqrt(3) / 2 a $ #noindent;代入 (#ref-num(label("2-eq3"));) 式，因此：$ V_(upright("旋转")) = 2 / 3 pi sqrt(3) / 2 a (4 a^2 + 9 / 4 a^2 + 3 a^2 - a^2 / 4) = 3 pi sqrt(3) a^3 $

]
#rmk[
一个多边形绕着在它面内且不通过多边形内部任何一点的轴旋转，所得旋转体的体积等于由矩形、直角三角形、直角梯形绕着它们的一条直角边旋转所形成的圆柱、圆锥、圆台的体积经过加法或减法某种确定的组合而算得的体积．

]
#exercise[
+ 如果用 $S_1$ 表示上底面积，$S_2$ 表示下底面积，试说明柱、锥、台体的体积都可以用公式 $V = 1 / 3 h (S_1 + S_2 + sqrt(S_1 S_2))$ 表示．

+ #block(sticky: true)[已知上、下底面边长分别是 $a$⁠、$b$, 高是 $h$, 求下列正棱台的全面积和体积．]

  #cols(2)[
  + 正四棱台

  + 正六棱台

  ]

+ 圆台的高为3, 一个底面半径是另一个底面半径的2倍，母线和下底的夹角为 $45 degree$, 求它的体积．

+ 圆台一个底面半径是另一个底面半径的4倍，把它的高三等分，过各分点作两个平行于底的平面，求这圆台被分成三部分体积的比．

+ 一个正四棱台，斜高和两底面边长的比为5:8:2, 体积为 $1 3 / 4 upright(m^3)$, 求它的全面积．

+ 圆台的体积是 $234 sqrt(3) upright(c m^3)$, 侧面展开图是半圆环，它的大半径等于小半径的3倍，求这个圆台的上底面半径．

+ 正六边形的边长为 $a$, 以它的一边所在的直线为轴旋转一周，求所得旋转体的体积和表面积．

]
=== 球和球缺的体积
为了求出球体积计算公式，我们把半径为 $R$ 的半球装在底面半径和高都等于 $R$ 的圆柱内，使半球的大圆截面和圆柱的底面重合，圆柱的上底必与半球相切．图2.75是圆柱和半球的轴截面，半圆与圆柱轴截面矩形 $A B C D$ 相切于 $C D$ 边上一点 $E$.

#figure([#fig("2-69");

  ],
  caption: [
  ]
)

连结 $O E$⁠、$O C$ 和 $O D$, 则 $triangle.stroked.t C O D$ 是等腰直角三角形，$angle C O D = 90 degree$, 又 $O E tack.t C D$, $O E$ 也平分 $angle C O D$. 这样，我们又得到一个顶点在半球心 $O$, 底面半径为 $C E = R$ 的圆锥的截面 $triangle.stroked.t C O D$.

用和半球底面大圆截面平行的任意一个平面去截半球，此截面与轴截面上的圆柱、圆锥母线 $A D$⁠、$O D$⁠、$O E$⁠、$O C$⁠、$B C$ 分别交于 $F$⁠、$G$⁠、$H$⁠、$I$⁠、$J$ 各点，而与球的大圆上的半圆弧交于 $K$⁠、$L$ 两点．

显然，$O H = H G =$ 和圆锥底面平行的截面半径 $r$.

又，$H K$ 为和半球底面平行的截面小圆的半径 $r'$, 连结 $O K$, 则 $O K = H F = R$.

在直角三角形 $O K H$ 中有 $ O K^2 = O H^2 + H K^2 $ #noindent;即 $ H F^2 = H G^2 + H K^2\,#h(2em) R^2 = r^2 + r'^2 $

$therefore quad pi R^2 = pi r^2 + pi r'^2$

这就是说，用任何一个平行于半球底面的平面去截圆柱和半球，总会截得下面的关系：$ upright("圆柱的截面面积") = upright("圆锥的截面面积") + upright("半球的截面面积") $ #noindent;因此，根据祖暅原理得到 $ V_(upright("圆柱")) = V_(upright("圆锥")) + V_(upright("半球")) $ #noindent;即：$ pi R^2 dot.op R = 1 / 3 pi R^2 dot.op R + V_(upright("半球")) quad arrow.r.double quad V_(upright("半球")) = 2 / 3 pi R^3 $

$therefore quad V_(upright("球")) = 4 / 3 pi R^3$

由此，我们得到下面的定理．

#blk[定理][
如果球的半径是 $R$, 那么它的体积计算公式是 $ V_(upright("球")) = 4 / 3 pi R^3 $

]
#blk[定义][
球冠和截得它的截面所围成的几何体叫做球缺，球冠的高叫做球缺的高，截面叫做球缺的底面．球带和截得它的两个截面所围成的几何体叫做球台，球带的高叫做球台的高，两个截面叫做球台的底面．

]
球缺体积公式可仿球的体积公式的求法推出．设球的半径是 $R$, 球缺的高是 $h$, 图2.76所示，弓形 $P E Q$ 为球缺的轴截面，$S E$ 为球缺的高，故 $S E = h$.

#figure([#fig("2-70");

  ],
  caption: [
  ]
)

梯形 $M N C D$ 为圆台的轴截面，$N S$ 为圆台上底面半径，$C E$ 为圆台下底面半径．

矩形 $A B C D$ 为底面半径等于 $R$, 高等于 $h$ 的圆柱的轴截面．

平行于球缺底面的任意平面截圆柱轴截面上的母线 $A D$ 于 $F$ 点，截球缺轴截面上的母线 $wideparen(P E)$ 于 $K$ 点，截圆台的轴截面上的母线 $M D$ 于 $G$ 点．

在等腰直角 $triangle.stroked.t O H G$ 中，$ O H = H G & = upright("平行圆台底面的截面圆半径") r\
H K & = upright("平行球缺底面的截面圆半径") r' $

连结 $O K$, 则 $H F = O K =$ 平行圆柱底面的截面圆半径 $R$.

在直角三角形 $O K H$ 中，有 $ O K^2 = O H^2 + H K^2 $ #noindent;即：$ H F^2 = H G^2 + H K^2\,#h(2em) R^2 = r^2 + r'^2 $

$therefore quad pi R^2 = pi r^2 + pi r'^2$

这就是说，用任何一个平行于球缺底面的平面去截圆柱和球缺，总会截得下面的关系：$ upright("圆柱截面面积") = upright("圆台截面面积") + upright("球缺截面面积") $ #noindent;因此，根据祖暅原理得到 $ V_(upright("圆柱")) & = V_(upright("圆台")) + V_(upright("球缺"))\
V_(upright("球缺")) & = V_(upright("圆柱")) - V_(upright("圆台"))\
 & = pi R^2 h - 1 / 3 pi h\[R^2 + R\(R - h\)+\(R - h\)^2\]\
 & = pi R h^2 - 1 / 3 pi h^3 = 1 / 3 pi h^2\(3 R - h\) $

由此我们得到下面的定理：

#blk[定理][
如果球的半径是 $R$, 球缺的高是 $h$, 那么球缺体积计算公式是：$ V_(upright("球缺")) = 1 / 3 pi h^2\(3 R - h\) $

]
#blk[推论][
若球缺底面半径是 $r$, 高是 $h$, 则球缺的体积是 $ V_(upright("球缺")) = 1 / 6 pi h\(3 r^2 + h^2\) $

]
#figure([#fig("2-71");

  ],
  caption: [
  ]
)

#proof[
如图2.77, 设截得球缺的球的半径是 $R$, 由直角三角形 $O A H$, 得到 $ r^2 = R^2 -\(R - h\)^2 = 2 h R - h^2 $

$therefore quad R = frac(r^2, 2 h) + h / 2$

将 $R$ 代入球缺体积公式，则有 $ V_(upright("球缺")) = pi h^2 (frac(r^2, 2 h) + h / 2 - h / 3) = 1 / 6 pi h\(3 r^2 + h^2\) $

]
球台的体积可以由计算两个球缺的差得到．

#example[
正三棱柱里有一个内切球（即球面和正棱柱的所有各面都相切）已知正三棱柱的体积为 $48 sqrt(3) upright(c m^3)$, 求内切球的体积，（图2.78(1)）

]
#figure([#fig("2-72");

  ],
  caption: [
  ]
)

#solution[
设内切球的半径为 $r$, 则 $2 r$ 为正三棱柱的高．如果正三棱柱的底面正三角形的一边长为 $a$, 那么正三棱柱的底面积：$ S_(upright("底")) = 1 / 2 a^2 sin 60 degree = sqrt(3) / 4 a^2 $ #noindent;又，根据已知条件有 $ sqrt(3) / 4 a^2 dot.op 2 r = 48 sqrt(3) $ #noindent;因此：#numbered-eq($ r = 96 / a^2 $, label: label("2-eq1"));

因为球内切于正三棱柱，所以它们在正三棱柱一个底面上的正射影为图2.78(2), 正 $triangle.stroked.t A B C$ 是正三棱柱底面正三角形，其内切圆 $O$ 为内切球之大圆，设 $dot.o O$ 切 $A C$ 于 $D$, 连 $O D$, $O A$, 在直角 $triangle.stroked.t O A D$ 中，

$because quad angle O A D = 30 degree$

$therefore quad r = O D = 1 / 2 O A = sqrt(3) / 6 a$

$therefore quad a = 6 / sqrt(3) r = 2 sqrt(3) r$

$therefore quad a^2 = 12 r^2$ 代入 (#ref-num(label("2-eq1"));) 式

$therefore quad r = 2 upright(\(c m\))$

$therefore quad$ 内切球体积 $ V_(upright("球")) = 4 / 3 pi times 2^3 = 32 / 3 pi upright(\(c m^3\)) $

答：内切球的体积是 $32 / 3 pi upright(\(c m^3\))$.

]
#example[
钢铆钉钉头呈球缺形，钉身呈圆柱形，尺寸如图2.79(单位mm), 已知钢的比重是7.8$upright(g\/c m^3)$, 求铆钉的重量（精确到0.1g）

]
#solution[
钉头的体积是 $ V_(upright("球缺")) & = 1 / 3 pi h^2\(3 R - h\)\
 & approx 1 / 3 times 3.14 times 6^2 times\(3 times 10 - 6\)approx 904\(upright(m m^3)\) $ #noindent;钉身的体积是 $ V_(upright("圆柱")) = pi R_1^2 h_1 approx 3.14 times 5^2 times 20 approx 1570\(upright(m m^3)\) $ #noindent;所以铆钉的重量是：$ 7.8 times frac(904 + 1570, 1000) approx 19.3 upright(\(g\)) $

答：铆钉的重量约为19.3克．

]
#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("2-73");], caption: []), figure([#fig("2-74");], caption: []))));

#example[
一扇形的半径为 $R$, 中心角是 $60 degree$, 绕着它的一条边即扇形的半径旋转，求旋转体的体积．

]
#solution[
这个旋转体的图形如图2.80所示，它是由球冠和圆锥侧面所围成的几何体．我们把它叫做球扇形，并把它看成是无数个顶点在球心，底面在球冠面上的小锥体的组合，设每个小锥体的底面面积是 $S_1\,S_2\,S_3\,dots.h$.

球扇形的底面面积是球冠面积 $S_(upright("球冠"))$⁠，那么 $ S_(upright("球冠")) = S_1 + S_2 + S_3 + dots.h.c $ #noindent;球扇形的体积 $ V & = 1 / 3 S_1 R + 1 / 3 S_2 R + 1 / 3 S_3 R + dots.h.c\
 & = 1 / 3 R\(S_1 + S_2 + S_3 + dots.h.c\)= 1 / 3 R S_(upright("球冠")) $

$because quad S_(upright("球冠")) = 2 pi R h$

$therefore quad V = 1 / 3 R\(2 pi R h\)= 2 / 3 pi R^2 h$

$because quad h = R - O D\,quad O D = 1 / 2 R$

$therefore quad h = 1 / 2 R$

$therefore quad V = 2 / 3 pi R^2 dot.op 1 / 2 R = 1 / 3 pi R^3$

答：这个球扇形的体积是 $1 / 3 pi R^3$.

]
#exercise[
+ 如果球的大圆面积增为原来的10倍，球的体积有什么变化？

+ 一种钢滚珠的半径是10mm, 造50个这样的滚珠需要多少钢？（精确到100g, 设钢的比重为7$upright(g\/c m^3)$⁠）

+ 球缺的高是球的直径的 $1\/10$⁠，求它们体积的比．

+ 球缺的底面半径是球的半径的1/2，体积是球的几分之几？

+ 球半径是5cm的球台，它的两个底面半径分别是3cm和4cm, 求这个球台的体积（有两种情形）．

+ 在一个直径为50mm的球的中央，以直径为轴钻一个底面圆的直径为30mm的圆柱孔，计算球被钻孔后剩余下的部分体积．

]
#heading(level: 2, numbering: none, supplement: [toc-sub])[习题2.3]

+ 一长方体的三度的比为1:2:3, 对角线长是 $2 sqrt(14)$⁠cm, 求它的体积．

+ 将正四棱柱的底面的边三等分，过三等分点用平行于侧棱的平面截去四个三棱柱，得到一个八棱柱，这个八棱柱的体积是原四棱柱的体积的几分之几？

+ 求证：底面是梯形直棱柱的体积等于两个平行侧面积的和与这两个侧面间距离的积的一半．

+ 已知正六棱柱较长的一条对角线长是13cm, 侧面积是180$upright(c m^2)$, 求这棱柱的体积．

+ 一根圆木料，长3.0m, 直径0.8m, 距离圆木的轴0.2m且平行轴锯去一片，求剩余木料有多少立方米？

+ 每条棱都是 $a$ 的正六棱柱，求它的内切圆锥的体积．

+ 从一个正方体中如图那样截去四个三棱锥后，得到一个正三棱锥 $A - B C D$, 求它的体积和正方体的体积之比是多少？

  #fig-center[
  #fig("2-75");

  #subcap[
  第7题

  ]
  ]

+ 三棱锥的三个侧面互相垂直，它们的面积分别是 $6 upright(m^2)$ $4 upright(m^2)$ 和 $3 upright(m^2)$, 求它的体积．

+ 在正三棱柱中有一个内切球，已知球的半径是 $r$, 求这个三棱柱的体积．

+ 在体积为 $V$ 的棱柱内取一点 $O$, 以 $O$ 为顶点作与棱柱同底的两个棱锥，试求它们的体积的和．

+ 从一块薄铁片上，裁下一个半径为24cm, 圆心角为 $120 degree$ 的扇形，再围成一个圆锥筒，求这个圆锥筒的容积（保留两位有效数字）．

+ 在一个大圆锥内，以它的底面为底面作一个小圆锥，大、小圆锥的高和母线所夹的角分别为 $alpha$⁠、$beta$, 这两个圆锥的高之差为 $h$, 求大小圆锥的侧面所夹部分的体积．

+ 若圆锥的侧面积是内接圆柱侧面积的四倍，圆锥的高 $h = 2$, 母线长 $ell = 3$, 求圆柱的高和体积．

+ 有甲、乙两个容器，甲容器是圆柱形，高是2dm, 底面半径是1dm, 乙容器是圆锥形（锥顶向下），高是2dm. 底面半径是 $2 sqrt(3)$⁠dm, 如果把甲容器灌满水，然后将甲容器内水的一部分倒入乙容器，使得两个容器的水面同样高，这时水面高是多少dm（分米）？

+ 三棱锥的每条侧棱长都是 $ell$, 底面三边的长分别是 $a$⁠、$b$⁠、$c$, 求证：它的体积 $ V = 1 / 12 sqrt(16 ell^2 s\(s - a\)\(s - b\)\(s - c\)- a^2 b^2 c^2) $ #noindent;其中 $s = 1 / 2\(a + b + c\)$

+ 三棱锥 $S - A B C$ 中，侧面 $S C B tack.t$ 侧面 $A B C$, 又 $S C = S B = 1$, 在顶点处的各面角等于 $60 degree$, 求这个三棱锥的体积．

+ 已知棱台两底面面积分别为 $245 upright(c m^2)$, $80 upright(c m^2)$, 截得棱台的棱锥高是35cm, 求这个棱台的体积．

+ 两底面边长分别为15cm, 10cm的正三棱台，它的侧面积等于两底面面积的和，求这个三棱台的体积．

+ 圆台的高为3, 一个底面半径是另一个底面半径的2倍，母线与下底面所成的角为 $45 degree$, 求它的体积．

+ 圆台的母线与底面夹角为 $alpha$, 又它的内切球半径为 $R$, 求证：圆台的体积为 $2 / 3 pi R^3 frac(4 - sin^2 alpha, sin^2 alpha)$⁠，侧面积为 $frac(4 pi R^2, sin^2 alpha)$.

+ 已知棱台的体积为 $76 upright(c m^3)$, 高是6cm, 一个底面面积为18$upright(c m^2)$, 求这个棱台的另一个底面面积．

+ 棱台的上、下底面的面积分别是 $S_1$ 和 $S$, 求证：这棱台的高和截得这棱台的原棱锥高的比是 $ frac(S - sqrt(S S_1), S) $

+ 体积 $52 upright(c m^3)$ 的圆台，一个底面面积9倍于另一个底面面积，求截成这圆台的原来圆锥的体积．

+ 如果一个圆柱和一个圆锥的底面直径和高都与球的直径相等，求证：圆柱、球、圆锥体积的比是3:2:1.

+ 一个多面体的各面都与球相切，求证：多面体的体积等于它的表面积与球的半径的积的1/3.

+ 求高为 $h$⁠、母线为 $ell$ 的圆锥的外接球的体积．

+ 球缺的体积是 $pi^2 / 3 upright(c m^3)$, 它的高是 $1 / 2$⁠cm, 求截得球缺的球的表面积和体积．

+ 一个木球浮于水中，在水面上球缺的高为2cm, 底面半径为8cm, 求这个木球的重量．

+ 若某球的球冠面积恰等于另一个半球的球冠面积，求证：半球的体积大于球缺的体积．

+ 已知扇形的圆心角为 $30 degree$, 半径为 $r$, 以扇形的一边为轴旋转一周，求所得旋转体的体积．

+ 已知圆台的母线和下底面成 $60 degree$ 角，半径为3cm的球内切于圆台，求圆台的侧面积和球积．

+ 一个球台的两个底面的半径分别是6cm和4cm, 高是2cm, 求这个球台的体积．

+ 两个球的半径分别是3cm和4cm, 另一个球的球面面积等于它们两个球面面积的和，求这个球的半径．

+ 有半径都是 $R$ 的四个球，每一个都和其他三个相切，求和这四个球同时相切的球的体积和表面积（有两种情形）．

+ 一个倒圆锥容器（圆锥顶点向下）它的轴截面是正三角形，在这容器内注入水，并且放入一个半径为 $R$ 的球，水平面恰好和球面相切，试问将球取出后，水平面的高是多少？

#heading(level: 2, numbering: none, outlined: true)[复习题二]

+ 证明：正三棱锥的对棱互相垂直．

+ 证明：正 $n$ 棱柱每相邻两个侧面所成二面角等于 $ frac(\(n - 2\)times 180 degree, n) $

+ 直平行六面体 $A B C D - A_1 B_1 C_1 D_1$ 中已知下底 $A B C D$ 的边 $A B$ 及 $A D$ 上的高 $B E$ 分别等于26cm和24cm, 又 $B E$ 分 $A D$ 成2:3, 六面体的高 $A A_1$ 等于45cm, 求这个六面体的截面 $A D C_1 B_1$ 的面积．

+ 证明：平行六面体的所有对角线交于一点并且互相平分．

+ 已知长方体 $A B C D - A_1 B_1 C_1 D_1$, $A A_1 C_1 C$ 是它的对角面，它的面积 $S_(A A_1 C_1 C) = M$, 底面面积 $S_(A B C D) = Q$, 侧棱 $A A_1 = h$, 求长方体的侧面积．

+ 有一个圆柱，它的高是12cm, 底面半径为5cm, 设有一条线段长13cm, 它的两端分别在上、下底面的圆周上，求这线段和轴的距离以及它们所成的角．

+ 棱锥的底面是正方形，有相邻两个侧面垂直于底面．另外两个侧面与底面成 $45 degree$ 角，最长的侧棱长为15cm, 求这棱锥的高．

+ 过棱锥的各侧棱分别作垂直于底面的平面，求证这些平面相交于一直线．

+ 圆锥的母线长为 $L$, 它和底面所成的角为 $theta$, 求这个圆锥的内接正方体的棱长．

+ 有一个圆锥如图，它的底面半径为 $r$, 母线长为 $L$, 在母线 $S A$ 上有一点 $B$, $A B = a$, 求由 $A$ 绕圆锥一周到 $B$ 的最短距离是多少？

  #fig-center[
  #scale(70%, reflow: true, image("/math5/fig/10ti.png"));

  #subcap[
  第10题

  ]
  ]

+ 已知一个四棱锥的底的顺次三个角的比等于2:3:4; 又棱锥侧面与底面构成的角皆相等，求底面各角的大小．

+ 如果四棱台的底面是平行四边形，那么四条对角线必交于一点．

+ 三条等线段两两垂直交于一点，并且被这点所平分．求证：这三条线段的六个端点是一个正八面体的六个顶点．

+ 斜三棱柱的一个侧面的面积等于 $S$, 这个侧面与它所对的棱的距离等于 $a$, 求证：这个棱柱的体积是 $1 / 2 S a$.

+ 棱锥的底面是边长分别为20cm和36cm, 夹角为 $30 degree$ 的平行四边形，棱锥的高等于12cm, 并且顶点在底面内的射影为底面对角线的交点，求这棱锥的侧面积．

+ 圆台的母线长是 $L$, 母线和下底面所成的角是 $theta$, 轴截面的对角线垂直于母线，求证：这个圆台的侧面积是 $pi L^2 sin theta tan theta$

+ 圆锥的顶角为 $120 degree$, 有一过两母线且与轴截面等积的截面，求这截面和圆锥的轴所成的角．

+ 底面为直角三角形的直棱柱里有一个内切球，底面三角形斜边上的高为 $h$, 且这高和直角边之一成 $alpha$ 角，求这棱柱的体积．

+ 正四棱台的上、下底面积分别是 $Q_1$ 和 $Q_2$, 其侧面积为 $P$, 求对角面的面积．

+ 圆锥的高是20cm, 底面半径是25cm, 经过它的顶点，作一截面，如果底面的圆心到截面的距离是12cm, 求这截面的面积．

+ 两个圆锥有公共高，且它们的顶点为公共高的两端，若第一个圆锥的母线为 $ell$, 顶角为 $2 alpha$, 第二个圆锥的顶角为 $2 beta$, 求这两个圆锥公共部分的体积．（提示，两个圆锥的交线是一个圆，圆的半径 $r$ 满足 $r\(cot alpha + cot beta\)= ell cos alpha$⁠）

+ 若球冠的顶点和底面圆上一点间的距离是 $a$, 求球冠的面积．

+ 在北纬 $60 degree$ 圈上有甲、乙两地，它们的纬度圈上的弧长为 $pi / 2 R$（$R$ 为地球半径），求这两地间的球面距离．

+ 求地球热带的面积．（注：地球上从南纬23度半到北纬23度半之间的部分球面为热带）

+ 在一个平行六面体中，一个顶点上的三条棱长分别是 $a$⁠、$b$⁠、$c$, 这三条棱中每两条所成的角是 $60 degree$. 求平行六面体的体积．

+ 一个棱锥的体积是 $V$, 把棱锥的高三等分，过两个分点的平行于底面的截面将这个三棱锥分成三部分，求中间一部分的体积．

+ 三棱锥 $S - A B C$ 中，侧棱 $S A$⁠、$S B$⁠、$S C$ 的长分别是 $a$⁠、$b$⁠、$c$, 又 $angle A S B = 60 degree$, $angle A S C = angle B S C = 90 degree$, 求这个棱锥的体积．

+ 一个直角三角形的两条直角边为15cm和20cm, 以斜边为轴旋转，求这个旋转体的体积．

+ 一个扇形的半径是10cm, 用一个半径5cm的同心弧在这扇形上截去一个小扇形，若用剩下的一块做一个圆台的侧面，并且它的下底面的面积是 $36 pi upright(c m^2)$. 求原扇形的圆心角和所成圆台的体积．

+ 一个球冠的面积是 $40 pi upright(m^2)$, 高是2m, 求含这面的球缺的体积．

+ 一个球的半径为7cm, 用两个平行平面截去两个高为3cm的球缺，求剩余部分（球台）的体积．

+ 经过正四棱柱 $A C'$ 的底面的一条对角线 $A C$ 引一个平面平行于对角线 $B D'$, 交棱 $D D'$ 于 $P$, 如果这个正四棱柱底面的边长为 $a$, 对角线 $B D'$ 与底面所成的角是 $theta$, 求截面 $A P C$ 的面积．

+ 侧棱都相等底面为矩形的棱锥，已知底面边长为6cm和8cm, 棱锥的高为2cm, 求通过它的底的一条对角线，且平行于不与此对角线相交的一条侧棱的截面的面积．

+ 圆柱的底面半径是10cm, 高是15cm, 平行于轴的截面在底面上截得的弦等于底面半径，求圆柱被截去部分的体积．

+ 圆台母线长17cm, 轴截面面积为 $420 upright(c m^2)$, 中截面面积为 $196 pi upright(c m^2)$, 求这圆台的体积．

+ 分别以直角三角形的斜边、两直角边所在直线为轴，旋转这个直角三角形所得的三个旋转体的体积为 $V$⁠、$V_1$⁠、$V_2$. 求证：$ 1 / V^2 = 1 / V_1^2 + 1 / V_2^2 $

+ 求图中阴影部分绕轴 $ell$ 旋转一周所成旋转体的全面积和体积．

  #align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, [#fig("2-76");
  
  #subcap[
  第37题
  
  ]], [#scale(70%, reflow: true, image("/math5/fig/41ti.png"));
  
  #subcap[
  第41题
  
  ]])));

+ 正方体的棱长为 $a$, 过顶点将正方体截去四个三棱锥得到一个正四面体，求这个正四面体的体积．

+ #lead-list(none, 2)[
  + 体积相等的正四面体、正六面体、正八面体的全面积哪一个最小？哪一个最大？

  + 正方体、等边圆柱、球这三个体积相同时，哪一个全面积最小？
  ]

+ 在母线长为 $ell$, 高在 $ell$ 与 $ell\/2$ 之间的圆锥中，求侧面积最大的那个圆锥．

+ 如图，将正方体的棱分为4等分，在1/4处，截去各棱角得到一个多面体，正方体的体积减少了几分之几？

+ 已知一个四面体，它的四个面都是各边长为 $a$⁠、$b$⁠、$c$ 所组成的四个全等三角形，求此四面体的体积．

+ 若 $M$⁠、$N$ 分别为立方体 $A B C D - A_1 B_1 C_1 D_1$ 的面 $A_1 C_1$ 和 $B_1 C$ 的中心，求 $D M$ 和 $A N$ 的距离．

+ 正四棱锥 $S - A B C D$ 中，底面的边长为 $a$, 侧棱长为 $b$,

  + 求这棱锥的体积；

  + 求这棱锥的侧面积；

  + 画出过 $A C$ 且平行于 $S B$ 的截面，并求出这截面的周长及面积．

+ 已知正四棱锥的侧面与底面所夹的二面角为 $alpha$, 相邻两个侧面所夹的二面角为 $beta$, 求证：$cos beta = - cos^2 alpha$.

== 附录~~圆锥曲线
古希腊的几何学家不但对于圆、球、柱、锥进行研究，而且还对于其他的多种曲线如椭圆、抛物线、双曲线等等的性质进行研究并且获得了杰出的成果，这里只介绍他们所得结果的简要部分．关于椭圆、抛物线和双曲线的研究工作，首推公元前四世纪的孟奈奇姆和前三世纪的阿波罗尼．

=== 圆柱与椭圆
将一条直线绕着另一条和它平行的轴旋转一周就产生一个圆柱面，若用一个垂直于轴的平面去截这个圆柱面，则所得的截痕是一个圆；如果截平面与轴不垂直，则截痕是一个椭圆，那么如何描述它们的几何特性呢？

若从圆柱的上方放入一个和圆柱等半径的球，它总是与柱面相切，当小球下降到斜截面相切于一点后，就受阻而不再下降了，同样也可把一个与圆柱等半径的球由下方向上顶到和斜截面相切于一点的位置．如图2.81所示．设上球和斜截面相切于 $F_1$ 点，和柱面相切于圆 $C_1$, 下球和斜截面相切于一点 $F_2$, 和柱面相切于圆 $C_2$⁠．

#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#scale(60%, reflow: true, image("/math5/fig/2-81.png"));], caption: []), figure([#image("/math5/fig/2-82.png", width: 100%);], caption: []))));

设 $P$ 是椭圆截痕上任一点，则过 $P$ 点与轴线平行的直线全在柱面上，设它交圆 $C_1$ 和圆 $C_2$ 于 $Q_1$ 和 $Q_2$ 两点，则

- $P Q_1$ 和 $P F_1$ 是 $P$ 点到上球的两条切线，所以等长．

- $P Q_2$ 和 $P F_2$ 是 $P$ 点到下球的两条切线，所以等长．

所以，$P F_1 + P F_2 = P Q_1 + P Q_2 = Q_1 Q_2$

我们让 $P$ 点在椭圆上变动，则 $Q_1 Q_2$ 的变化只是绕轴旋转，而其长度保持不变的．这就是说，$P F_1 + P F_2 = Q_1 Q_2 =$ 常数．

$F_1$⁠、$F_2$ 椭圆焦点，这就发现了椭圆的特性：椭圆是平面上一个动点到两个定点 $F_1$ 和 $F_2$ 的距离之和等于定长的轨迹，$F_1$ 和 $F_2$ 叫做椭圆的焦点．

=== 圆锥与圆锥曲线
设 $ell_1$⁠、$ell_2$ 是相交于 $O$ 点的两条直线，让 $ell_2$ 以 $ell_1$ 为轴旋转所得的曲面就是一个圆锥面．再用不过 $O$ 点的平面去截割圆锥面，所得的曲线叫圆锥曲线，如图2.82所示．设 $ell_1$⁠、$ell_2$ 的夹角为 $alpha$, 截平面和轴的交角为 $beta$, 则不难发现 $beta > alpha$ 时，截痕为椭圆；$beta = alpha$ 时，截痕为抛物线；$beta < alpha$ 时，截痕分为上、下两支，是双曲线．这三类曲线统称圆锥曲线（或圆锥截线）．这样就对上述这三种曲线有了一种统一的产生办法和处理方式．

=== 圆锥曲线的性质
在一中我们用平面斜截圆柱面而得椭圆这一类型的曲线，并且利用上、下切球和定点到球面的切线长相等来推导它的性质：$P F_1 + P F_2 =$ 定长．

在二中我们改用平面来截割圆锥面来构造三种曲线，其中 $beta > alpha$ 时，我们说所得曲线还是椭圆，这一点还得加以证明．现在我们把一中的证明略作修改，证明如下：

#set-heading-counter(4, 1);（一）我们依然可以作一个上切球，它和圆锥面相切于圆 $C_1$, 和截割平面相切于 $F_1$ 点，也可以作一个下切球，它和圆锥面相切于圆 $C_2$, 和截割平面相切于 $F_2$ 点（唯一不同之点是：在柱面的情形，上下切球大小相同，这里的上、下切球一小，一大．如图2.83）．

设 $P$ 为截痕上任意一点，连结直线 $O P$, 交 $C_1$⁠、$C_2$ 于 $Q_1$ 和 $Q_2$ 两点，则同样有 $ P Q_1 = P F_1\,#h(2em) P Q_2 = P F_2 $ #noindent;所以 $P F_1 + P F_2 = Q_1 Q_2$.

再者，当 $P$ 点在截痕上变动时，$Q_1 Q_2$ 的变化只在锥面上旋转，而长度不变．这就证明了圆锥的这种截痕（$beta > alpha$⁠）满足一中所证的椭圆的性质，因此它也是椭圆．

#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#scale(60%, reflow: true, image("/math5/fig/2-83.png"));], caption: []), figure([#scale(70%, reflow: true, image("/math5/fig/2-84.png"));], caption: []))));

==== 双曲线的性质
设 $beta < alpha$, 则截割平面交圆锥于上、下两支，如图2.84所示，我们也可以作上、下两个切球（这次它们分居于圆锥的上、下两部），它们和圆锥分别切于圆 $C_1$ 和圆 $C_2$, 和截平面相切于 $F_1$ 和 $F_2$ 点．

设 $P$ 为截痕上的任一点，连结直线 $O P$, 分别交 $C_1$⁠、$C_2$ 于 $Q_1$ 和 $Q_2$ 点，则同样地可以得出：$ P F_1 = P Q_1\,#h(2em) P F_2 = P Q_2 $ #noindent;而 $Q_1 Q_2$ 的长度是与 $P$ 点位置无关的一个常数，所以，$Q_1 Q_2 = P Q_1 - P Q_2 = P F_1 - P F_2 =$ 常数．

这就证明了双曲线的性质：双曲线上的任一点和双曲线所在平面上两个定点的距离之差等于一个常数．即 $ P F_1 - P F_2 = upright("常数") #h(2em) upright("或") #h(2em) P F_2 - P F_1 = upright("常数") $

==== 抛物线的性质
设 $beta = alpha$, 则截割平面和圆锥交于开口的一支，这时我们只能作一个球，它和圆锥相切于圆 $C$, 和截平面相切于 $F$ 点．

再者，圆 $C$ 所在的平面和截平面相交于一条直线叫作准线，如图2.85所示．

#figure([#scale(60%, reflow: true, image("/math5/fig/2-85.png"));

  ],
  caption: [
  ]
)

设 $P$ 是截痕上任一点，连结 $P O$ 交圆 $C$ 于 $Q$ 点，再由 $P$ 点向准线 $p$ 作垂线 $P R$. 由假设，我们可以将 $P Q$ 旋转到和 $P R$ 平行的位置 $P' Q'$, 这样，就不难看出：

- $P F = P Q$（切线长相等）

- $P Q = P' Q'$（移形公理）

- $P R = P' Q'$（平行平面间的平行线段相等）

所以 $P F = P R = P$ 点到准线的距离．

总结上面的讨论得到抛物线的性质：抛物线上任意一点和抛物线所在平面上的一定点和一定直线的距离相等．即：$P F = P R$⁠．

定点叫作抛物线的焦点，定直线叫做它的准线．
