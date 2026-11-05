// 由 typst/tools/tex2typ.py 从 math5/1.tex 转换而来，已人工校对的部分以本文件为准。
#import "../common/template.typ": *
#import "figs.typ": fig
#import "defs.typ": *

= 直线和平面
== 空间图形
在初中几何课中，我们讨论的几何图形和几何问题，主要局限在一个平面上．然而，我们生活着的现实世界却是具有长、宽、高的所谓“三维空间”．而平面只是我们生活空间的某个断面．我们日常所见的形体，如桌椅、房屋、球、漏斗等等，它们并不局限在一个平面上，都是立体的．为了精确地认识这些实际存在的形体，以便为我们的生产和生活服务，我们必须学习有关空间图形的知识．

我们知道平面图形是同一平面上的点的集合，而#strong[空间图形却是不全在同一平面上的点的集合]．例如正方体、三棱锥、圆柱、球等都是空间图形．空间图形也叫立体图形．我们将在平面几何知识的基础上，来研究空间图形的性质、画法以及有关的计算和应用．

#figure([#fig("1-01");

  ],
  caption: [
  ]
)

空间图形是在平面上（纸上）画出来的表示立体的图．如在图1.1中，各图都表示出了某种立体．这种图形叫直观图．除了用直观图表示立体以外，还有其他表示立体的方法，如展开图和投影图等等．下面我们作些简要的介绍．

=== 直观图
==== 水平放置的平面图形的画法
当我们把一个正方形和圆放置在水平位置观察时，我们的视觉会产生一些变化，总觉得它们像平行四边形和椭圆．它们会变成怎样的平行四边形和椭圆呢？由于观察的角度不同，会有不同的形状，这就涉及到了水平平面图形的画法问题，下面就是较常用的两种画法．

第一种画法

#example[
画正方形的直观图．

]
#figure([#fig("1-02");

  ],
  caption: [
  ]
)

#strong[画法]

+ 在正方形 $A B C D$ 上，分别取 $A B$⁠、$A D$ 为 $X$ 轴和 $Y$ 轴，它们互相垂直于 $A$ 点．

  画对应的 $X'$ 轴和 $Y'$ 轴，使 $angle X' A' Y' = 45 degree$.

+ 在 $X'$ 轴上截取 $A' B' = A B$, 在 $Y'$ 轴上截取 $A' D' = 1 / 2 A D$

+ 以 $A' B'$⁠、$A' D'$ 为邻边画平行四边形 $A' B' C' D'$ 就是正方形 $A B C D$ 的直观图．（图1.2）．

#example[
画正五边形的直观图．

]
#figure([#fig("1-03");

  ],
  caption: [
  ]
)

#strong[画法]

+ 取正五边形 $A B C D E$ 的 $A B$ 所在直线为 $X$ 轴，取 $A B$ 的中垂线为 $Y$ 轴（$Y$ 轴必过 $D$ 点），两轴交于 $O$ 点．（图1.3(1)）

  画对应的 $X'$ 轴，$Y'$ 轴，使 $angle X' O' Y' = 45 degree$

+ 作 $C C_1 tack.t X$ 轴于 $C_1$, 作 $E E_1 tack.t X$ 轴于 $E_1$, 在 $X'$ 轴上取 $A' B' = A B$, 且使 $O'$ 为 $A' B'$ 中点，并在 $X'$ 轴上分别取 $C'_1$ 点和 $E'_1$ 点，使 $O' C'_1 = O C_1$, $O' E'_1 = O E_1$.

+ 在 $Y'$ 轴上截取 $O' D' = 1 / 2 O D$, 并引 $E'_1 E' pll O' Y'$, 且使 $E'_1 E' = 1 / 2 E_1 E$, 引 $C'_1 C' pll O' Y'$, 且使 $C'_1 C' = 1 / 2 C_1 C$.

+ 连结 $A' E'$⁠、$E' D'$⁠、$D' C'$⁠、$C' B'$, 则五边形 $A' B' C' D' E'$ 就是正五边形 $A B C D E$ 的直观图．（图1.3(2)）

通过上面例题，我们可以得出这种画法的规则如下：

+ 在图形上取互相垂直的 $X$ 轴、$Y$ 轴，并画出与之对应的 $X'$ 轴，$Y'$ 轴，使 $angle X' O' Y' = 45 degree$（或 $135 degree$⁠）, $X'$ 轴和 $Y'$ 轴所确定的平面表示水平平面．

+ 图形中平行于 $X$ 轴或 $Y$ 轴的线段（包括在轴上的线段）分别画成平行于 $X'$ 轴和 $Y'$ 轴的线段．

+ 平行于 $X$ 轴的线段，长度不变；平行于 $Y$ 轴的线段，长度变为原来的一半．

第二种画法

#example[
画圆的直观图

圆的直观图是一个椭圆，常采用如下近似画法：

+ 取 $dot.o O$ 的一对互相垂直的直径 $A B$, $C D$ 分别为 $X$ 轴、$Y$ 轴，并画出对应的 $X'$ 轴、$Y'$ 轴，使 $angle X' O' Y' = 120 degree$.

+ 在 $O' X'$ 上取 $O' A' = O A$, 并取 $A'$ 关于 $O'$ 的对称点 $B'$, 然后在 $O' Y'$ 轴上取 $O' C' = O C$, 并取 $C'$ 关于 $O'$ 的对称点 $D'$.

+ 过 $A'$⁠、$B'$ 作 $O' Y'$ 的平行线，过 $C'$⁠、$D'$ 作 $O' X'$ 的平行线，所作四条直线交出一个菱形，设 $E$⁠、$F$ 是菱形关于 $O'$ 点对称的顶点．

+ 连 $E D'$, $F A'$, 交于 $G$\; 连 $E B'$⁠、$F C'$ 交于 $H$.

+ 以 $E$ 为心，以 $E D'$ 为半径，作 $wideparen(D' B')$, 以 $F$ 为心，以 $F A'$ 为半径作 $wideparen(A' C')$, 以 $G$ 为心，以 $G A'$ 为半径作 $wideparen(D' A')$, 以 $H$ 为心，以 $H C'$ 半径作 $wideparen(B' C')$, 则此四弧连接成一个近似椭圆．（图1.4(2)）

#figure([#fig("1-04");

  ],
  caption: [
  ]
)

从上述画法中，我们看出圆的中心 $O$, 变成了椭圆的中心 $O'$, 圆的一对互相垂直的直径（如 $A B$⁠、$C D$⁠）变成椭圆的一对直径（如 $A' B'$, $C' D'$⁠），它们叫做椭圆的共轭直径，实际上如果知道了一对椭圆的共轭直径，就可以把椭圆近似地画出来了．

更省事的办法是用椭圆模板（图1.5）经过椭圆的一对共轭直径端点来画椭圆．

#figure([#fig("1-05");

  ],
  caption: [
  ]
)

从上例中可以看到：#strong[第二种画法与第一种画法不同的，只是 ]$angle X' O' Y' = 120 degree$#strong[⁠；并且平行于 ]$Y$#strong[ 轴的线段的长度不变]．

注意：直观图画好以后，要擦去辅助线．

]
#exercise[
+ 任意画一个三角形，然后用两种方法画出它们的直观图．

+ 任意画一个长方形，然后用两种方法画出它们的直观图．

+ 已知椭圆的一对共轭直径 $A A'$⁠、$B B'$, 近似地画出这个椭圆．

+ 画一个边长为1.5cm的正六边形，然后用两种方法画出它的直观图．

（注意：以上练习只要求精确而美观地画出图形，不要求写作法．）

]
==== 空间形体的直观图
#example[
画一个长、宽、高分别为3cm, 2cm和1.5cm的长方体的直观图．

]
第一种画法：

画法：

+ 在水平平面上画 $X'$ 轴和 $Y'$ 轴，两轴交于 $O'$ 点，且使 $angle X' O' Y' = 135 degree$.

+ 在 $O' X'$ 上取 $O' P' = 1$⁠cm, 在 $O' Y'$ 上取 $O' S' = 3$⁠cm, 作 $S' R' pll O' X'$, $P' R' pll O' Y'$, 则平行四边形 $O' P' R' S'$ 为已知长方体的底面的直观图．

+ 过 $O'$ 点作 $Z'$ 轴垂直于 $Y'$ 轴，并在 $O' Z'$ 上取 $O O' = 1.5$⁠cm, 过 $P'$⁠、$R'$⁠、$S'$ 分别作 $P P' pll O' Z'$, $R R' pll O' Z'$, $S S' pll O' Z'$, 并且，$P P' = R R' = S S' = 1.5$⁠cm.

+ 连 $O P$⁠、$P R$⁠、$R S$⁠、$S O$, 则 $P R S O - P' R' S' O'$ 为已知长方体的直观图．（图1.6）

#figure([#fig("1-06");

  ],
  caption: [
  ]
)

第二种画法

画法：

+ 作 $angle X' O' Y' = 120 degree$, 并取 $X'$ 轴和 $Y'$ 轴的对称轴 $Z'$ 轴为铅直线．

+ 作已知长方体底面的直观图 $O' P' R' S'$\; 在 $O' Z'$ 上取 $O O' = 1.5$⁠cm.

+ 分别过 $P'$⁠、$R'$⁠、$S'$ 作 $O' Z'$ 的平行线 $P P'$⁠、$R R'$⁠、$S S'$⁠、并使 $P P' = R R' = S S' = O O'$.

+ 连结 $O P$⁠、$P R$⁠、$R S$⁠、$S O$, 则 $O P R S - O' P' R' S'$ 为已知长方体的直观图．（图1.7）

#figure([#fig("1-07");

  ],
  caption: [
  ]
)

通过例1.4我们看到，画空间形体的直观图规则是在平面图形的直观图画法的基础上发展起来的．#strong[它多了一个 ]$Z'$#strong[ 轴，并且平行于 ]$Z'$#strong[ 轴的线段的平行性和长度都不变．在第一种画法中，]$O' X'$#strong[, ]$O' Y'$#strong[, ]$O' Z'$#strong[ 中，]$angle X' O' Y' = 135 degree$#strong[, ]$angle Z' O' Y' = 90 degree$#strong[, 并使 ]$O' Z'$#strong[ 在铅直位置．第二种画法中，使 ]$angle X' O' Y' = angle Y' O' Z' = angle X' O' Z' = 120 degree$#strong[, 且使 ]$O' Z'$#strong[ 轴居铅直位置．在两种画法中，平行于 ]$O' X'$#strong[ 轴和 ]$O' Y'$#strong[ 轴的线段长度的变化与画平面图形的直观图的规定相同]．在图中，$X' O' Y'$ 表示水平平面，$Y' O' Z'$ 平面和 $X' O' Z'$ 平面都表示直立的平面．

#example[
画底面半径为1.5cm, 高为2.5cm的圆锥的直观图．

画法（略）见图1.8.

#figure([#scale(50%, reflow: true, image("/math5/fig/1-8.png"));

  ],
  caption: [
  ]
)

]
#rmk[
+ 如果要画的空间形体中的面上有圆，一般采用第二种画法来画它的直观图．

+ 第二种画法画圆的直观图，所得椭圆，由于较宽，不直观，故有时用较扁的椭圆来代替．

]
#exercise[
+ 用第一种画法画一个棱长为3cm的立方体的直观图．

+ 用第二种画法画一个长、宽、高分别为4cm, 3cm, 2cm的长方体的直观图．

+ 画一个底面半径1cm, 高为2.5cm的圆柱的直观图．

+ 右面是用第一种画法画出来表示某立体的直观图，试根据图上标的尺寸，用第二种画法画出这个立体的直观图来．（单位mm）

+ 左图是用第二种画法画出的某立体的直观图，试根据图上标的尺寸（单位mm），用第一种画法画出该立体的直观图．

+ 画棱长为4cm的正四面体的直观图#footnote[正四面体是由四个正三角形围成的封闭立体．]．

]
#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, [#scale(50%, reflow: true, image("/math5/fig/ch1-4ti.png"));

#subcap[
第4题

]], [#scale(50%, reflow: true, image("/math5/fig/ch1-5ti.png"));

#subcap[
第5题

]])));

=== 投影图
==== 二视图
在上一节我们谈到了画空间形体的直观图的方法，这种方法，立体感觉强，但立体的各个侧面的形状和大小不容易一下看清楚，因此，也需要从不同的方向来观察空间形体，从而画出表示该立体的方法，这种方法通常叫投影图法，是画机械和建筑物设计图的常用方法．

#figure([#fig("1-08");

  ],
  caption: [
  ]
)

在图1.9(1) 中，平面 $alpha$ 是水平平面，平面 $beta$ 是铅直平面这两个平面的交线是 $X Y$. 当圆柱垂直于水平面的时候，从正上方向下看，它是一个圆，也可以这样想，在这种观察下，圆柱被视线投影成一个圆，这个圆在 $alpha$ 平面上，如果我们从平面 $beta$ 的正前方看圆柱，就看到一个矩形，可设想，这时圆柱被从 $beta$ 平面正前方发出的视线投影成一个矩形，这个矩形在 $beta$ 平面上，我们把 $alpha$ 平面叫作#strong[俯视图平面]，$beta$ 平面叫#strong[主视图平面]，$alpha$ 和 $beta$ 的相交的直线 $X Y$ 叫#strong[基线]．画在俯视图平面上的图叫#strong[俯视图]，画在主视图平面上的图叫#strong[主视图]，俯视图和主视图合起来叫#strong[二视图]．

通常把俯视图平面旋转 $90 degree$, 使俯视图和主视图画在同一个平面内，这就成了图1.9(2), 它表示的是圆柱的二视图．

==== 三视图
有些立体图形只用二视图表示还不够，例如像图1.10(1) 那样摆法的圆柱的俯视图和主视图都是矩形，这个二视图也可看成是长方体的二视图了，为了区别起见，我们再设一个与俯视图平面和主视图平面都垂直的第三个平面 $gamma$, 从左侧面看这个圆柱，它在 $gamma$ 平面上的投影是个圆．这第三个平面 $gamma$ 叫#strong[左视图平面]，在它上面画出的图叫#strong[左视图]．

#figure([#box(scale(55%, reflow: true, image("/math5/fig/1-10-1.png"))); #box(scale(55%, reflow: true, image("/math5/fig/1-10-2.png")));

  ],
  caption: [
  ]
)

主视图、俯视图、左视图三个视图统称三视图．图1.10(2) 就是圆柱的三视图．主视图和俯视图或主视图和左视图都叫二视图，二视图和三视图也叫投影图．

在制图中投影图是不画基线的，如图1.11表示的就是由一个大长方体上挖去一个小长方体后的三视图．

从上面的三视图中，可以清楚地看出三个视图的关系是：

```
    主俯两图长对正，
    主左两图高平齐，
    左俯两图宽相等
```

了解上述三视图的基本关系，我们常常可以从二视图画出第三个视图．

#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("1-09");], caption: []), figure([#fig("1-10");], caption: []))));

画出图1.12的左视图，并把这个三视图所表示的立体的直观图画出来．

画法：

+ 画左视图（略解）．

  根据“主左两图高平齐”和“俯左两图宽相等”，先画出左视图轮廓是个矩形，再观察主俯两图细部，看出这个视图所表示的立体是在一个大长方体的顶部正中贯通前后挖去一个小长方体，这样就必须在左视图的轮廓矩形上加一条虚线，这就画出了左视图．

+ 画直观图．

  我们采用第二种画法：（略解）

  首先分析观察视图所表示的组成形体的各部分形状，如1中所述的是一个大长方体挖去一个小长方体．然后，根据视图所给的长、宽、高画出这两个长方体的直观图，但要特别注意在视图上所反映的这两个长方体的相互位置关系，最后擦去不需要的线便得到视图所表示的立体的直观图．（见图1.13）

#figure([#scale(60%, reflow: true, image("/math5/fig/1-13.png"));

  ],
  caption: [
  ]
)

#exercise[
+ 根据下列各二视图想想立体是什么形状，并画出它的直观图．

+ 根据下列各投影图来想象立体的形状，并画出它们的直观图．

]
#fig-center[
#fig("1-11");

#subcap[
第1题

]
]
#fig-center[
#fig("1-12");

#subcap[
第2题

]
]
#heading(level: 2, numbering: none, supplement: [toc-sub])[习题1.1]

+ 画出半径为2cm的球的三视图．

+ 根据二视图，试补画出它的左视图，并画视图所表示的立体的直观图．

  #fig-center[
  #scale(40%, reflow: true, image("/math5/fig/ch1-tu2.png"));

  #subcap[
  第2题

  ]
  ]

+ 试回答下列二视图 (1)---(4) 中每一个是立体直观图 (a)---(d) 中的哪一个的视图．

  #fig-center[
  #scale(50%, reflow: true, image("/math5/fig/ch1-tu3.png"));

  ]
  #fig-center[
  #scale(50%, reflow: true, image("/math5/fig/ch1-tu4.png"));

  #subcap[
  第3题

  ]
  ]
  #noindent;（注：(2) 与 (3) 中的点划线表示的是该视图所表示的立体的轴线及中心线）

+ 补全下列各视图的投影．

  #fig-center[
  #scale(50%, reflow: true, image("/math5/fig/ch1-tu5.png"));

  ]
  #fig-center[
  #scale(50%, reflow: true, image("/math5/fig/ch1-tu6.png"));

  #subcap[
  第4题

  ]
  ]

+ 根据下列三视图，用两种方法画出它们所表示的立体直观图．

  #fig-center[
  #scale(50%, reflow: true, image("/math5/fig/ch1-tu7.png"));

  #subcap[
  第5题

  ]
  ]
  #noindent;（注：图中尺寸单位为mm）

== 集合运算
=== 复习
关于集合的初步知识，我们在初中几何中已经学过了，现在简要地复习一下要点：

==== 集合
通常我们把一些确定的、彼此不同的“事物”作为一个整体考虑时，便说这个整体是一个#strong[集合]，这些事物叫做该集合的#strong[元素]．

#blk[问题1][
下列集合在空间表示什么图形？$ A & = \{ X\|O X = 5 upright(c m)\,thick O upright("点是三维空间的一个定点，") X upright("是三维空间的点") \}\
B & = \{ P\|O P < 5 upright(c m)\,thick O upright("点是三维空间的一个定点，") P upright("是三维空间的点") \}\
C & = \{ P\|O P > 5 upright(c m)\,thick O upright("点是三维空间的一个定点，") P upright("是三维空间的点") \} $

]
==== 集合关系
#v(0.8em);

#noindent;#strong[包含关系]#h(1em);如果集合 $A$ 中的每一个元素也是集合 $B$ 的元素，则称“$A$ 包含于 $B$⁠”或“$B$ 包含 $A$⁠”，也可以说 $A$ 是 $B$ 的子集．记作 $A subset.eq B$, 或 $B supset.eq A$.

若 $x in A$, 则 $x in B$\; 但 $B$ 中至少有一个元素 $y$ 不属于 $A$, 则称 $A$ 为 $B$ #strong[真子集]．记作 $A subset B$ 或 $B supset A$.

#v(0.8em);

#noindent;#strong[相等关系]#h(1em);如果两个集合 $A\,B$ 由共同的元素构成，我们说这两个集合相等，记作 $A = B$.

判定两个集合相等的方法是：若 $A subset.eq B$ 且 $B subset.eq A$, 则 $A = B$.

#blk[问题2][
若 $A subset B$ 且 $B subset A$, 则 $A$ 与 $B$ 是否相等？为什么？

]
#v(0.8em);

#noindent;#strong[空集、全集与补集]#h(1em);不含有任何元素的集合叫做#strong[空集]，用 $nothing$ 表示，空集是任何集合的子集．注意空集与零集合不同，零集合包含一个零元素，记作 $\{ 0 \}$, 而空集不含有任何元素．

我们把讨论对象所涉及的整个范围称作“全集”，用 $I$ 表示．讨论的范围如果是整数，那么 $I$ 就表示整数集．讨论的范围如果是实数，那么 $I$ 就表示实数集．讨论的是三维空间，则 $I$ 就表示三维空间．

设 $A subset I$, 则集合 $\{ x\|x in I\,thick x in.not A \}$, 称为 $A$ 的#strong[补集]，记作 $tilde.op A$. 也可记作 $overline(A)$.

#blk[问题3][
+ 若 $I$ 为整数集，$A$ 是偶数集，则 $tilde.op A$ 为什么数集？

+ 若 $I$ 为实数集，$A$ 为无理数集，则 $tilde.op A$ 为什么数集？

]
#v(0.8em);

#noindent;#strong[集合的“交”与“并”]#h(1em);由集合 $A$ 和集合 $B$ 的共同元素所组成的集合称作集合 $A$ 与 $B$ 的#strong[交集]．记作 $A inter B$⁠，即 $ A inter B = \{ x\|x in A upright(" 且 ") x in B \} $

由集合 $A$ 的元素或集合 $B$ 的元素合并而成的集合叫作 $A$ 和 $B$ 的#strong[并集]，记作 $A union B$⁠，即 $ A union B = \{ x\|x in A thick upright(" 或 ") thick x in B \} $

#blk[问题4][
设 $A = \{ 1\,a\,a^2 \}$, $B = \{ 1\,a\,b \}$, 假定 $a\,b$ 都是实数，并且 $A inter B = \{ 1\,3 \}$, $A union B = \{ 1\,a\,2 a\,3 a \}$, 求 $a$ 和 $b$ 的值分别是多少？

]
=== 集合运算
我们学过的集合的“交”、“并”、“补”都是集合的运算．

我们学过的数的运算是有算律的，那么集合的运算有什么算律呢？

我们很容易看出以下的事实成立：

#blk[][
- $A inter A = A\,#h(2em) A union A = A$

- $A inter I = A\,#h(2em) A union I = I$

- $A inter nothing = nothing\,#h(2em) A union nothing = A$

- $A inter B subset.eq A quad upright("且") quad A inter B subset.eq B$

- $A subset.eq A union B quad upright("且") quad B subset.eq A union B$

- $A union macron(A) = I\,#h(2em) A inter macron(A) = nothing\,#h(2em) overline(macron(A)) = A$

]
我们把 $A inter macron(B)$ 称作 $A$ 与 $B$ 的#strong[差集]，记作 $A - B$, 即 $ A - B = \{ x\|x in A quad upright("且") quad x in.not B \} $

差集的维恩图如图1.14所示：

#figure([#fig("1-13");

  ],
  caption: [
  ]
)

#blk[问题1][
设 $A = \{ upright("等腰三角形") \}$⁠，$B = \{ upright("直角三角形") \}$⁠，则 $A - B$ 是由什么三角形组成的集合？

]
#blk[问题2][
如果 $A$ 为有理数的集合，$B$ 为非负有理数的集合，那么 $A - B$ 是什么集合？

]
#blk[问题3][
设 $I$ 为全集，$A$ 为 $I$ 的一个子集，则 $I - A$ 是个什么集合？（参看下面的维恩图思考）

]
由问题3可知：$ I - A = I inter macron(A) = macron(A) $

由此可见：补集可以看作差集的特殊情况．

#figure([#fig("1-14");

  ],
  caption: [
  ]
)

集合的交集、并集和差集三种运算很类似于数的乘法、加法和减法，例如在数的计算中有 $ 3 times 2 = 2 times 3\,#h(2em) 3 + 2 = 2 + 3 $ #noindent;在集合的运算中相应地有$ A inter B = B inter A\,#h(2em) A union B = B union A $ #noindent;在数的计算中有：$ 3 times\(2 times 4\)=\(3 times 2\)times 4\,#h(2em) 3 +\(2 + 4\)=\(3 + 2\)+ 4 $ #noindent;在集合的运算中相应地有 $ A inter\(B inter C\)=\(A inter B\)inter C\,#h(2em) A union\(B union C\)=\(A union B\)union C $ #noindent;这由维恩图很容易直观地看出来．我们把它们所具有的一些算律归结为如下定理：

#blk[定理][
集合的交与并满足以下算律

+ 结合律：$ \(A inter B\)inter C = A inter\(B inter C\) & #h(2em) upright("（交的结合律）")\
  \(A union B\)union C = A union\(B union C\) & #h(2em) upright("（并的结合律）") $

+ 交换律：$ A inter B = B inter A & #h(2em) upright("（交的交换律）")\
  A union B = B union A & #h(2em) upright("（并的交换律）") $

]
#proof[
我们只证“并的结合律”，其余类似地由同学们自己证明．$ x in\(A union B\)union C & quad arrow.r.double quad x in\(A union B\)thick upright(" 或 ") thick x in C\
 & quad arrow.r.double quad\(x in A thick upright(" 或 ") thick x in B\)thick upright(" 或 ") thick x in C\
 & quad arrow.r.double quad x in A thick upright(" 或 ") thick\(x in B thick upright(" 或 ") thick x in C\)\
 & quad arrow.r.double quad x in A thick upright(" 或 ") thick x in\(B union C\)\
 & quad arrow.r.double quad x in A union\(B union C\) $ #noindent;$therefore quad\(A union B\)union C subset.eq A union\(B union C\)$

同理可证：$A union\(B union C\)subset.eq\(A union B\)union C$

$therefore quad\(A union B\)union C = A union\(B union C\)$

]
#blk[定理][
对于补集有以下法则成立（德·摩根法则）

+ $overline(A inter B) = macron(A) union macron(B)$

+ $overline(A union B) = macron(A) inter macron(B)$

]
#proof[
+ #h(0pt)
  $ x in overline(A inter B) & quad arrow.l.r.double.long quad x in.not A inter B\
   & quad arrow.l.r.double.long quad upright("若") x in A upright("则") x in.not B upright(", 若") x in B upright("则") x in.not A\
   & quad arrow.l.r.double.long quad x in.not A upright(" 或 ") x in.not B\
   & quad arrow.l.r.double.long quad x in macron(A) upright(" 或 ") x in macron(B)\
   & quad arrow.l.r.double.long quad x in (macron(A) union macron(B)) $

  $therefore quad overline(A inter B) = macron(A) union macron(B)$

+ 类似地可以证明2式．

]
#blk[定理][
对于三个集合 $A$⁠、$B$⁠、$C$, 有以下分配律成立

+ 交对并的分配律：$A inter\(B union C\)=\(A inter B\)union\(A inter C\)$

+ 并对交的分配律：$A union\(B inter C\)=\(A union B\)inter\(A union C\)$

]
#proof[
同学们可用定义证明1, 这里我们仅利用1和德·摩根法则证2. $ overline(A union\(B inter C\)) & = macron(A) inter\(overline(B inter C)\)\
 & = macron(A) inter\(macron(B) union macron(C)\)\
 & =\(macron(A) inter macron(B)\)union\(macron(A) inter macron(C)\)\
 & = overline(A union B) union overline(A union C)\
 & = overline(\(A union B\)inter\(A union C\)) $ #noindent;对上式两端取补集，据 $overline(macron(A)) = A$, 则有：$ A union\(B inter C\)=\(A union B\)inter\(A union C\) $

]
#example[
设 $A$⁠、$B$⁠、$C$⁠、$D$ 都是集合，证明：$ A inter\(B union C union D\)=\(A inter B\)union\(A inter C\)union\(A inter D\) $

]
#proof[
#numbered-align(($A inter\(B union C union D\)$, $eqph = A inter class("opening", stretch(\(, size: #1.2em)) B union\(C union D\)class("closing", stretch(\), size: #1.2em))$, [(结合律)]), ($$, $eqph =\(A inter B\)union class("opening", stretch(\(, size: #1.2em)) A inter\(C union D\)class("closing", stretch(\), size: #1.2em))$, [(分配律)]), ($$, $eqph =\(A inter B\)union class("opening", stretch(\(, size: #1.2em))\(A inter C\)union\(A inter D\)class("closing", stretch(\), size: #1.2em))$, [(分配律)]), ($$, $eqph =\(A inter B\)union\(A inter C\)union\(A inter D\)$, [(结合律)]));

]
#example[
试用 $macron(A)$⁠、$macron(B)$⁠、$macron(C)$ 表示 $overline(\(A inter B\)union\(B inter C\))$

]
#solution[
#numbered-align(($overline(\(A inter B\)union\(B inter C\))$, $eqph = overline(\(B inter A\)union\(B inter C\))$, [(交换律)]), ($$, $eqph = overline(B inter\(A union C\))$, [(分配律)]), ($$, $eqph = macron(B) union overline(\(A union C\))$, [(德·摩根法则)]), ($$, $eqph = macron(B) union\(macron(A) inter macron(C)\)$, [(德·摩根法则)]));

]
#exercise[
+ 如果 $A = \{ upright("过") M upright("点的圆") \}$⁠，$B = \{ upright("过") P upright("点的圆") \}$. 那么，求 $A inter B$, $A union B$, $overline(A inter B)$, $overline(A union B)$.

+ #block(sticky: true)[设 $A = \{ - 3\,1\,2 \}$, $B = \{ - 1\,0\,1 \}$, $C = \{ - 2\,0\,2 \}$. 求：]

  #cols(2)[
  + $\(B inter A\)union\(A inter C\)$

  + $\(B union C\)inter A$

  ]

+ 在下表的空格处填上适当的集合．

  #align(center)[
  #box(table(
    columns: (auto, auto, auto, auto,),
    align: (center + horizon, center + horizon, center + horizon, center + horizon,),
    table.vline(x: 1),
    table.hline(),
    [$inter.big$],
    [$nothing$],
    [$A$],
    [$B$],
    table.hline(),
    [$nothing$],
    [],
    [],
    [],
    [$A$],
    [],
    [],
    [],
    [$B$],
    [],
    [],
    [],
    table.hline(),
  ));#h(2em);#box(table(
    columns: (auto, auto, auto, auto,),
    align: (center + horizon, center + horizon, center + horizon, center + horizon,),
    table.vline(x: 1),
    table.hline(),
    [$union.big$],
    [$nothing$],
    [$A$],
    [$B$],
    table.hline(),
    [$nothing$],
    [],
    [],
    [],
    [$A$],
    [],
    [],
    [],
    [$B$],
    [],
    [],
    [],
    table.hline(),
  ));

  ]

+ 证明：$overline(A union B) = macron(A) inter macron(B)$.

+ 证明：$A inter\(B union C\)=\(A inter B\)union\(A inter C\)$.

+ 证明：$A union\(A inter B\)= A\,quad A inter\(A union B\)= A$.

]
#heading(level: 2, numbering: none, supplement: [toc-sub])[习题1.2]

+ 设集合 $I$⁠、$A$⁠、$B$ 如图，在图上标出 $A union B$, $A inter B$, $A - B$.

  #align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, [#fig("1-15");
  
  #subcap[
  第1题
  
  ]], [#fig("1-16");
  
  #subcap[
  第2题
  
  ]])));

+ #block(sticky: true)[设集合 $I$⁠、$A$⁠、$B$⁠、$C$, 如图所示，用阴影表示出下列集合：]

  #cols(2)[
  + $overline(A union B union C)$

  + $macron(A) union macron(C)$

  + $overline(A inter B) inter C$

  + $\(A inter B\)union C$

  + $\(A - B\)union C$

  + $A -\(B union C\)$

  + $A -\(macron(B) union macron(C)\)$

  ]

+ 设 $A$⁠、$B$⁠、$C$⁠、$D$⁠、$E$ 都是集合，试用结合律，分配律证明：$ A inter\(B union C union D union E\)=\(A inter B\)union\(A inter C\)union\(A inter D\)union\(A inter E\) $

+ 若 $A union B = A union C$, 问 $B = C$ 是否成立？又若 $A inter B = A inter C$ 且 $A eq.not nothing$, 问 $B = C$ 是否成立，为什么？

+ #block(sticky: true)[从下面的关系中，可以得到什么结论？为什么？]

  #cols(2)[
  + $A subset.eq B$ 且 $B subset.eq A$

  + $R subset.eq S$ 且 $T subset.eq R$

  + $A subset.eq B$ 且 $B subset.eq C$

  + $X subset.eq G$, $Y subset.eq T$ 且 $T subset X$

  + $A subset.eq Q$, $Q subset.eq R$ 且 $R subset.eq A$

  + $P subset.eq Q$ 且 $R subset.eq Q$

  ]

+ 设 $A = \{ 0\,1\,2\,3\,4 \}$, $B = \{ 1\,2\,3 \}$, $C = \{ 1\,4 \}$, $D = \{ 2\,3\,4 \}$. 求 $\(A inter B\)union\(A inter C\)union\(A inter D\)$.

+ 用德摩根法则证明：$ A inter overline(B inter C) = overline(macron(A) union B) union overline(macron(A) union C) $

== 平面
=== 平面的表示法
面有两种，一种是平的面也就是平面，另一种是不平的面，也就是曲面．像平静的水面，门窗的玻璃面等都给人以平面的形象，而像皮球，人脸部的表面都给人以曲面的形象．

我们画一个平面通常用一个平行四边形来表示，在画水平位置的平面时，通常把平行四边形的一边画成水平，把一个角画成 $45 degree$ (或 $135 degree$), 平面在空间是无限伸展的．（图1.16）

#figure([#fig("1-17");

  ],
  caption: [
  ]
)

我们通常用一个字母如 $M$⁠、$N$⁠、$pi$⁠、$alpha$⁠、$beta$⁠、$gamma$ 来表示一个平面，如平面 $M$, 平面 $alpha$ 等，有时也用平行四边形相对的两个顶点表示平面，如平面 $A C$ (图1.17(3)), 有时也用平面上不共线三点表示一个平面，如平面 $A B C$. 在画平面时，被遮盖的部分常用虚线表示或不画出来．（图1.17）.

#figure([#fig("1-18");

  ],
  caption: [
  ]
)

=== 点、直线、平面的关系的集合表示法
+ 点 $P$ 在直线 $ell$ 上（或直线 $ell$ 过 $P$ 点），记作 $P in ell$.

+ 点 $P$ 在平面 $alpha$ 上（或点 $P$ 在平面 $alpha$ 内，或平面 $alpha$ 过 $P$ 点），记作 $P in alpha$. 若 $P$ 点不在平面 $alpha$ 内则 $P in.not alpha$.

+ 直线 $ell$ 在平面 $alpha$ 内（或平面 $alpha$ 包含直线 $ell$, 或平面 $alpha$ 通过 $ell$⁠），记作 $ell subset alpha$⁠，或 $ell inter alpha = ell$.

+ 直线 $ell$ 和平面 $alpha$ 没有公共点．记作 $ell inter alpha = nothing$.

+ 直线 $ell$ 和平面 $alpha$ 有一个公共点 $P$ (或直线 $ell$ 交平面 $alpha$ 于点 $P$), 记作 $ell inter alpha = P$.

+ 平面 $alpha$ 和平面 $beta$ 相交于 $ell$, 记作 $alpha inter beta = ell$.

+ 平面 $alpha$ 和平面 $beta$ 没有公共线，记作 $alpha inter beta = nothing$.

#figure([#fig("1-19");

  ],
  caption: [
  ]
)

=== 平面的基本性质
木工在检查木板面是不是“很平”时，通常用直尺沿各个方向来靠紧板面，如果不管怎么靠，中间都不出现间隙，这块板面就是平的．也就是说无论连结平面内怎样的两点的直线，都包含在这个平面内，这就是平面的一条基本性质．

#blk[基本性质1][
如果一条直线上的两点在一个平面内，那么这条直线就被包含在这个平面内．

]
如图1.19(1) 所示，若点 $A in$ 平面 $alpha$, 点 $B in$ 平面 $alpha$, 则直线 $A B subset$ 平面 $alpha$.

这时，我们也称直线 $A B$ 在平面 $alpha$ 内或平面 $alpha$ 通过直线 $A B$. 但在图1.19(2) 中，虽然点 $A in$ 面 $beta$, 点 $B in$ 面 $beta$, 而直线 $A B subset.not$ 面 $beta$, 因此面 $beta$ 不是平面．

#figure(kind: image, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, [#fig("1-20");

#subcap[
\(1)

]], [#scale(60%, reflow: true, image("/math5/fig/1-19.png"));

#subcap[
\(2)

]])), caption: []);

#blk[基本性质2][
如果两个不同的平面有一公共点，那么它们相交于过这个点的一条直线．（图1.20）

]
例如一个长方体相邻的两个面，在长方体的顶点处交于一点，且交于过这个顶点的一条直线．

#figure(kind: image, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, [#fig("1-21");

#subcap[
\(1)

]], [#fig("1-22");

#subcap[
\(2)

]])), caption: []);

#blk[基本性质3][
经过不在同一直线上三点，有且只有一个平面．（图1.21(2)）

]
这条基本性质换个说法就是：“经过不在同一条直线上的任意三点，可以作一个平面，且只可以作一个平面”，也可以说：“不共线三点确定一个平面”．

例如，一扇门当在门框安上两个合页（如 $A$⁠、$B$ 两个点）门可以自由转动，但再锁上一把锁之后（如 $C$ 点），门就被固定了，这就是利用了上述平面的基本性质．（图1.21(1)）

#figure(kind: image, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, [#fig("1-23");

#subcap[
\(1)

]], [#fig("1-24");

#subcap[
\(2)

]])), caption: []);

#blk[推论][
+ 一直线与线外一点确定一个平面．

+ 两条相交直线确定一个平面．

+ 两条平行直线确定一个平面．

]
我们只证明推论1，其余两条同学们自己证明．

#figure([#fig("1-25");

  ],
  caption: [
  ]
)

已知：直线 $A B$ 和点 $C in.not A B$.

求证：直线 $A B$ 和点 $C$ 确定一个平面．

#proof[
$because quad$ 经过直线 $A B$ 上的两点 $A$⁠、$B$ 与 $C$ 点可以作一个平面 $alpha$ (基本性质3), 而直线 $A B subset$ 平面 $alpha$ (基本性质1)

又 $because quad$ 过直线 $A B$ 与点 $C$ 不可能再作第二个平面，否则与基本性质3矛盾．

]
#blk[基本性质4][
空间所有的点不全在一个平面上．

]
平面是什么？在直观上是清楚的，知道了平面的基本性质，就对平面的本质有了更深入的了解．在此基础上，我们可以给平面下个定义．

#blk[定义][
具有下列性质的空间的一个点集 $pi$ 叫做平面．

+ $pi$ 是空间 $V$ 的一个真子集，即 $pi subset V$.

+ 至少存在不共线三点 $A$⁠、$B$⁠、$C$ 属于 $pi$.

+ 若点 $M in pi$, 点 $N in pi$, 则有直线 $M N subset pi$.

]
有了平面的定义，我们就可以判定空间的一个点的集合是否是平面了．

#example[
设集合 $A = \{ X\|O X = 4 upright(c m)\,thick O upright("点是空间") V upright("的一个定点") \}$⁠，试问 $A$ 是否是平面？

]
#solution[
如图1.23所示，

+ $A$ 显然是空间 $V$ 的一个真子集，即 $A subset V$ 因为 $O in V$, 而 $O in.not A$.

+ 在 $A$ 上任取不同的三点 $P\,Q\,R$, 它们一定不共线．

+ 若 $M$ 点 $in A$, $N$ 点 $in A$, 但直线 $M N subset.not A$.

因为 $triangle.stroked.t O M N$ 是等腰三角形，在底边 $M N$ 上取一点 $P$, 连 $O P$, 将有 $angle O P N > angle O M P$⁠，但 $angle O M P = angle O N P$

$therefore quad angle O P N > angle O N P$

$therefore quad O N > O P$

$therefore quad P in.not A$#footnote[如果 $M N$ 过 $O$ 点，则 $O in.not A$.]

因为集合 $A$ 不满足平面定义之第三条特征性质，所以集合 $A$ 不是一个平面．

]
#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("1-26");], caption: []), figure([#fig("1-27");], caption: []))));

#example[
两两相交且不过同一点的三条直线必在同一平面内．（图1.24）

已知：直线 $ell_1\,ell_2\,ell_3$ 且 $ell_1 inter ell_2 = A$, $ell_2 inter ell_3 = B$, $ell_1 inter ell_3 = C$.

求证：直线 $ell_1\,ell_2\,ell_3$ 共面．

]
#proof[
$because quad ell_1 inter ell_2 = A$

$therefore quad ell_1$ 和 $ell_2$ 确定一个平面 $pi$（为什么？）

$because quad B in ell_2\,quad C in ell_1$

$therefore quad ell_3 subset$ 平面 $pi$（为什么？）

$therefore quad ell_1\,ell_2\,ell_3 subset pi$

即 $ell_1\,ell_2\,ell_3$ 共面．

]
#example[
顺次连结不在同一平面上的四个点所成的四边形为空间四边形．设有空间四边形 $A B C D$, $E\,F\,G\,H$ 分别是 $A B$, $B C$, $C D$ 和 $D A$ 上的点，如果 $E H$ 和 $F G$ 的延长线交于 $P$ 点，求证：$P$ 点在空间四边形的对角线 $B D$ 所在的直线上.（图1.25）

]
#figure([#fig("1-28");

  ],
  caption: [
  ]
)

#proof[
$because quad A$⁠、$B$⁠、$D$ 三点不共线，

$therefore quad$ 过 $A$⁠、$B$⁠、$D$ 三点可以确定一个平面 $A B D$\.（为什么？）

同理，过 $C$⁠、$B$⁠、$D$ 三点可以确定一个平面 $C B D$. 并且，平面 $A B D inter$ 平面 $C B D = B D$（为什么？）

又 $because quad E\,H in$ 平面 $A B D$

$therefore quad E H subset$ 平面 $A B D$（为什么？）

同理 $because quad F\,G in$ 平面 $C B D$

$therefore quad F G subset$ 平面 $C B D$

$because quad E H inter F G = P$

$therefore quad P in$ 平面 $A B D$ 且 $P in$ 平面 $C B D$

$therefore quad P in B D$.

即：$P$ 点在空间四边形 $A B C D$ 的对角线 $B D$ 所在的直线上．

]
#fig-center[
#fig("1-29");

#subcap[
第1题

]
]
#exercise[
+ 下图的画法正确吗？

  + 直线 $A B$ 不在平面 $pi$ 内．

  + 平面 $alpha$ 和平面 $beta$ 只有一个公共点 $P$.

+ 画两个平面 $M\,N$, 满足下列条件：$M inter N = nothing$, 并且 $a subset M$, $b subset M$, $a inter b = A$, $c subset N$,$d subset N$, $c inter d = nothing$.

+ #lead-list(none, 2)[
  + 画两个相交平面，并在图上标出表示平面的字母．

  + 画三个平面，使得它们两两相交，但三个平面不共线，并在图上标注表示各个平面的字母．
  ]

+ 一点能不能确定一个平面？二个点呢？三个点呢？怎样的三点才能确定一个平面？

+ 任意一点和一条直线能否确定一个平面？一个点和一条直线在怎样的位置关系时，才能确定一个平面？

+ 怎样用两条细绳来检查桌子的四个脚的下端是不是在同一个平面内．

+ 设直线 $ell subset$ 平面 $alpha$, $A in alpha$, $A in.not ell$, 那么过 $A$ 点画一条直线 $A B$, 则直线 $A B subset$ 平面 $alpha$, 为什么？

+ 一条直线过平面内一点与平面外一点，它和这个平面有几个公共点？为什么？

+ 经过同一点的三条直线最多可以确定几个平面？经过同一点的四条直线最多可以确定几个平面？……经过同一点的 $n$ 条直线最多可以确定多少个平面？

]
#heading(level: 2, numbering: none, supplement: [toc-sub])[习题1.3]

+ 设有直线 $a\,b\,c$, $a inter b = nothing$, $a inter c = A$, $b inter c = B$, 那么直线 $a\,b\,c$ 是否在同一平面内？为什么？

+ 三角形、平行四边形、梯形是否一定是平面图形？为什么？

+ 用语言叙述下列符号所表示的关系，并画出图形．

  + $ell subset pi$

  + $B in.not pi\,thick B in ell$ 且 $ell inter pi = A$

  + $ell_1 inter ell_2 = P$ 且 $ell_1\,ell_2 subset pi$

  + $pi_1 inter pi_2 = ell\,thick ell' subset pi_1$ 且 $ell inter ell' = A$

+ 将下列命题改成语言表述，判断它们是否正确，并说明理由．

  + 当 $A in pi$, $B in.not pi$ 时，线段 $A B subset pi$.

  + $A in pi\,thick B in pi\,thick C in A B quad arrow.r.double quad C in pi$

+ #lead-list(none, 2)[
  + 不共面的四点，可以确定几个平面？

  + 不共点且两两相交的三条直线可以确定几个平面？

  + 不共点且两两相交的四条直线可以确定几个平面？
  ]

+ 两个不重合的平面，如果有两个公共点 $A\,B$, 那么其他的公共点一定在直线 $A B$ 上，为什么？

+ 过直线 $ell$ 外一点 $P$, 与 $ell$ 上三点 $A\,B\,C$ 分别画三条直线，证明：直线 $P A$, $P B$, $P C$ 在同一个平面内．

+ 画出图中过 $A$⁠、$B$⁠、$C$ 三点的平面与其他平面的交线．

  #align(center, stack(block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, [#fig("1-30");
  
  #subcap[
  \(1)
  
  ]], [#fig("1-31");
  
  #subcap[
  \(2)
  
  ]])), subcap[第8题]));

=== 实验与观察：对正方体中线面关系的观察
用铁丝或细木棍作一个正方体框架，然后对下面各组问题进行观察研究，自己发现结论．

+ 直线与直线位置关系的观察．

  + 在正方体 $A B C D - A_1 B_1 C_1 D_1$ 内，若 $A A_1 pll B B_1$, $A A_1 pll D D_1$, 则 $B B_1$ 和 $D D_1$ 有什么关系？

  + 在正方体 $A B C D - A_1 B_1 C_1 D_1$ 内，若平面 $A C inter$ 平面 $A B_1 = A B$, 平面 $A_1 C_1 inter$ 平面 $A B_1 = A_1 B_1$ 并且平面 $A C inter$ 平面 $A_1 C_1 = nothing$, 则 $A B$ 和 $A_1 B_1$ 有什么关系？

  + 在正方体 $A B C D - A_1 B_1 C_1 D_1$ 内，若 $A B tack.t B C$, $A B tack.t B B_1$, $A_1 B_1 tack.t B B_1$, $A_1 B_1 tack.t B_1 C_1$, 则 $A B$ 和 $A_1 B_1$ 有什么关系？

  + 在正方体 $A B C D - A_1 B_1 C_1 D_1$ 内，若 $A D tack.t A A_1$, $A A_1 pll B B_1$, 则 $A D$ 与 $B B_1$ 有什么关系？

  + 在正方体 $A B C D - A_1 B_1 C_1 D_1$ 内，$B B_1 tack.t A_1 B_1$, $B B_1 tack.t B_1 C_1$ 且 $A_1 C_1 tack.t B_1 D_1$, 则 $B D_1$ 与 $A_1 C_1$ 有什么关系？

  #align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, [#fig("1-32");
  
  #subcap[
  第1题
  
  ]], [#fig("1-33");
  
  #subcap[
  第2题
  
  ]])));

+ 直线与平面位置关系的观察．

  + 在正方体 $A B C D - A_1 B_1 C_1 D_1$ 中，若 $A_1 B_1 subset$ 平面 $A_1 C_1$, $A B pll A_1 B_1$, 则 $A B inter$ 平面 $A_1 C_1 = ?$

  + 在正方体 $A B C D - A_1 B_1 C_1 D_1$ 内，若平面 $A C inter$ 平面 $B_1 D_1 = nothing$, 则 $A C inter$ 平面 $B_1 D_1 = ?$ $B D inter$ 平面 $A_1 C_1 = ?$

  + 在正方体 $A B C D - A_1 B_1 C_1 D_1$ 中，若 $D D_1 tack.t A_1 D_1$, $D D_1 tack.t D_1 C_1$, 则 $D D_1$ 和平面 $D_1 B_1$ 有什么关系？

  + 在正方体 $A B C D - A_1 B_1 C_1 D_1$ 中，如果 $D C pll A_1 B_1$, $A_1 B_1 tack.t B B_1$, $A_1 B_1 tack.t B_1 C_1$, 则 $D C$ 和平面 $B C_1$ 有什么关系？

+ 平面与平面位置关系的观察．

  + 在正方体 $A B C D - A_1 B_1 C_1 D_1$ 中，若 $A C pll A_1 C_1$, $B D pll B_1 D_1$ 且 $A C inter B D = O$, $A_1 C_1 inter B_1 D_1 = O'$, 则平面 $A C inter$ 平面 $A_1 C_1 = ?$

  + 在正方体 $A B C D - A_1 B_1 C_1 D_1$ 中，若 $A C inter$ 平面 $A_1 C_1 = nothing$, $B D inter$ 平面 $A_1 C_1 = nothing$ 且 $A C inter B D = O$, 则平面 $A C inter$ 平面 $A_1 C_1 = ?$

  + 在正方体 $A B C D - A_1 B_1 C_1 D_1$ 中，若 $A O tack.t B D$, $A O tack.t O O'$ 且 $A O subset$ 平面 $A O'$, 则平面 $A O'$ 和平面 $D O'$ 有什么关系？

  #fig-center[
  #fig("1-34");

  #subcap[
  第3题

  ]
  ]

通过对正方体的线面位置关系的观察与思考，你能就上述三组问题中的每个小题，得到一个一般性的命题吗？

== 直线与直线的位置关系
=== 空间两条直线的位置关系
在上一节的最后我们对正方体中的线、面关系作了观察．从观察中发现空间直线与直线有各种不同的位置关系．在现实生活中也是一样，例如我们观察教室中的各种“直线”，你会发现，下垂的两条电灯线是互相平行的；黑板相邻两边是相交的；垂直于地板的一条桌腿与黑板的一条水平边缘既不相交，也不平行，它们不在同一个平面内．

我们把不在同一平面内的两条直线叫作#strong[异面直线]．如图1.26的 (1)、(2) 中的直线 $a$⁠、$b$ 表示的都是异面直线．

#figure([#fig("1-35");

  ],
  caption: [
  ]
)

空间的两条直线有如下的位置关系：

==== 在同一个平面内
+ 相交直线------只有一个公共点．

+ 平行直线------没有公共点．

+ 重合直线．

当两条平行直线中的一条，在保持与另一条直线平行的条件下无限接近另一条直线时，结果两条平行直线必然重合．因此，我们把两条直线重合看成是两条直线平行的极限情况．因此，当我们说两条直线平行时，不排除重合这一极限情况；当我们说两条相异直线平行时，这就排除了重合的可能性．

==== 不在同一个平面内
异面直线------没有公共点．如果使用集合语言，上述空间两条直线的位置关系可以定义如下：

#blk[定义][
+ 空间两条直线 $ell_1$ 和 $ell_2$ 相交 $arrow.l.r.double.long ell_1 inter ell_2 = P$（$P$ 是 $ell_1$ 与 $ell_2$ 的唯一公共点）

+ 空间两条直线 $ell_1$ 和 $ell_2$ 平行（$ell_1 pll ell_2$⁠）$arrow.l.r.double.long ell_1$ 和 $ell_2$ 共面且 $ell_1 inter ell_2 = nothing$ 或 $ell_1 = ell_2$（重合）

+ 空间两条直线 $ell_1$ 和 $ell_2$ 异面 $arrow.l.r.double.long ell_1$ 和 $ell_2$ 不共面．

]
#blk[问题1][
下图中，如果 $a pll b$, $a subset M$, $b subset N$, 那么 $a\,b$ 是异面直线吗？

]
#align(center)[
#fig("1-36");

]
#blk[问题2][
长方体 $A B C D - A_1 B_1 C_1 D_1$ 中，$A D$ 棱与哪些棱成异面直线？$A B$ 棱与哪些棱成异面直线？$A A_1$ 棱与哪些棱成异面直线？

]
=== 平行于同一条直线的二条直线
“如果三条直线 $a\,b\,c$ 中，$a pll c$, $b pll c$, 那么 $a pll b$⁠”当 $a$⁠、$b$⁠、$c$ 共面时是成立的，如果 $a\,b\,c$ 不共面时，这个命题是否还成立呢？

#blk[定理][
平行于第三条直线的两条直线互相平行．

]
已知：如图1.27不在同一平面上的三条直线 $a\,b\,c$ 中，$a pll b$, $c pll b$.

求证：$a pll c$.

#figure([#fig("1-37");

  ],
  caption: [
  ]
)

#proof[
$because quad a pll b\,quad c pll b$

$therefore quad a\,b$ 确定一个平面 $pi_1$⁠，

$because quad b\,c$ 确定一个平面 $pi_2$⁠，设 $P in c$, 则 $P\,a$ 确定一个平面 $pi_3$. 设 $pi_2 inter pi_3 = c'$⁠，那么 $ c' inter pi_1 & =\(pi_2 inter pi_3\)inter pi_1\
 & =\(pi_2 inter pi_3 inter pi_1\)inter pi_1\
 & =\(pi_2 inter pi_1\)inter\(pi_3 inter pi_1\)\
 & = b inter a = nothing $

$therefore quad c' inter b = nothing\,quad c' inter a = nothing$

$therefore quad c' pll b\,quad c' pll a$

又 $because quad c pll b$ 且 $c inter c' = P\,quad c\,c'\,b subset pi_2$

$therefore quad c = c'\,quad c' pll a$

$therefore quad a pll c$

]
上述定理可简写作：

#blk[][
若 $a pll b$, $c pll b$, 则 $a pll c$.

]
如果改写一下，把条件中的 $c pll b$ 写成 $b pll c$, 那么有：“若 $a pll b$, $b pll c$ 则 $a pll c$⁠”．这就是直线平行的传递性．因此，上述定理也叫直线平行的传递性定理．

#example[
如图1.28，设有空间四边形 $A B C D$⁠，$E$⁠、$F$⁠、$G$⁠、$H$ 分别是 $A B$⁠、$B C$⁠、$C D$ 和 $D A$ 边中点，求证：四边形 $E F G H$ 是平行四边形.

]
#figure([#fig("1-38");

  ],
  caption: [
  ]
)

#proof[
连结 $B D$⁠，$because E$⁠、$H$ 分别是 $triangle.stroked.t A B D$ 的 $A B$⁠、$A D$ 边的中点，

$therefore quad E H pll B D\,quad E H = 1 / 2 B D$.

同理：$F G pll B D\,quad F G = 1 / 2 B D$⁠．

$therefore quad E H =^(pll) F G$.

$therefore quad$ 四边形 $E F G H$ 是平行四边形．

]
#blk[问题1][
上例中，若 $A C = B D$⁠，则四边形 $E F G H$ 是什么图形？

]
#blk[问题2][
上例中，若 $frac(A E, E B) = frac(A H, H D) = frac(C F, F B) = frac(C G, G D)$⁠，则四边形 $E F G H$ 是什么图形？

]
#blk[问题3][
上例中，若 $frac(A E, E B) = frac(A H, H D) = frac(B F, F C) = frac(D G, G C)$⁠，则四边形 $E F G H$ 是什么图形？

]
#blk[问题4][
上例中，若 $frac(A E, E B) = frac(A H, H D) eq.not frac(C F, F B) = frac(C G, G D)$⁠，则四边形 $E F G H$ 是什么图形？

]
#blk[问题5][
上例中，$E G$⁠、$H F$ 是否是异面直线？为什么？

]
在初中，已经知道，在同一平面上的两个角，如果它们的边分别平行和同向，这两个角就相等．事实上，如果两个角不在同一平面上，这个定理仍然成立．

#blk[定理][
如果一个角的两边分别平行于另一个角的两边，并且方向相同，那么这两个角相等．

]
已知：$angle A O B$ 和 $angle A' O' B'$ 中，$A O pll A' O'$⁠，$B O pll B' O'$ 并且方向相同．（图1.29）

求证：$angle A O B = angle A' O' B'$.

#figure([#fig("1-39");

  ],
  caption: [
  ]
)

#proof[
假定 $O A = O' A'$⁠，$O B = O' B'$⁠，连结 $O O'$⁠，$B B'$⁠，$A A'$⁠，$A B$ 和 $A' B'$

$because quad A O pll A' O'\,quad A O = A' O'$

$therefore quad A A' O' O$ 是平行四边形，

又 $because quad B O pll B' O'\,quad B O = B' O'$

$therefore quad B B' O' O$ 是平行四边形

$therefore quad A A' =^(pll) O O'\,quad B B' =^(pll) O O'$

$therefore quad A A' =^(pll) B B'$（为什么？）

$therefore quad A A' B' B$ 是平行四边形

$therefore quad A B = A' B'$

$therefore quad triangle.stroked.t A O B tilde.equiv triangle.stroked.t A' O' B'$

$therefore quad angle A O B = angle A' O' B'$

]
#blk[问题][
设直线 $a pll$ 直线 $a'$⁠，点 $A in a$⁠，点 $A' in a'$⁠，直线 $b$⁠，$b'$ 分别过 $A$ 和 $A'$ 且 $b pll b'$⁠，那么 $a$ 与 $b$ 所成的角等于 $a'$ 与 $b'$ 所成的角或者两角互补．为什么？

]
=== 两条异面直线所成的角
在平面几何中，两条相交直线的夹角是指这两条直线相交时所成的锐角或直角，并规定两条平行直线的夹角为 $0 degree$⁠．当两条直线的夹角为直角时，则称这两条直线互相垂直．

在空间我们利用同一平面上两条直线的交角来定义两条异面直线所成的角．

#blk[定义][
设 $a$⁠，$b$ 是两条异面直线（图1.30(1)），在空间任取一点 $P$⁠，过 $P$ 分别引直线 $a'$⁠，$b'$⁠，使 $a' pll a$⁠，$b' pll b$⁠，则 $a'$⁠、$b'$ 所成的锐角或直角便称作这两条异面直线 $a$⁠、$b$ 所成的角．（图1.30(2)）

]
#figure([#fig("1-40");

  ],
  caption: [
  ]
)

在上述定义中，两条异面直线 $a$⁠，$b$ 的夹角的大小与 $P$ 点的取法是无关的，它仅由 $a$⁠，$b$ 的位置唯一确定．这是因为，如果在 $a$⁠，$b$ 上确定了方向，$a'$ 和 $b'$ 也取相同的方向，由上一小节的“等角定理”可知，不管 $P$ 点取在什么地方，$a'$⁠，$b'$ 所成角的大小总是相等不变的．这就是说 $a'$⁠，$b'$ 所成锐角或直角的大小完全被直线 $a$⁠，$b$ 唯一确定．因此 $a'$ 和 $b'$ 所成的角反映了 $a$⁠，$b$ 的相互位置关系．

由于在上述定义中，$P$ 点的位置可任意选取，所以 $P$ 点可以取在 $a$ 上，也可以取在 $b$ 上．图1.31中，我们把 $P$ 点取在 $b$⁠，过 $P$ 引 $a' pll a$⁠，那么 $a'$ 和 $b$ 所成的角就是异面直线 $a$⁠，$b$ 所成的角．

#figure([#fig("1-41");

  ],
  caption: [
  ]
)

如果两条异面直线所成的角是直角，那么就说这两条异面直线互相垂直．

#blk[问题1][
如果说“两条直线 $a$ 和 $b$ 互相垂直”，那么怎样理解才是正确的？

]
#blk[问题2][
在正方体 $A B C D - A_1 B_1 C_1 D_1$ 中（见下图）

+ $A A_1$ 和 $D_1 C_1$ 的交角是多少度？

+ $A C$ 和 $A_1 B_1$ 的交角是多少度？

+ $D A_1$ 和 $A C$ 的交角是多少度？

+ $A C$ 和 $D_1 B_1$ 的交角是多少度？

]
#fig-center[
#fig("1-42");

#subcap[
问题2

]
]
#blk[问题3][
如果空间有三条直线 $a$⁠，$b$⁠，$c$⁠，设 $a pll b$⁠，$a tack.t c$⁠，那么 $b$ 与 $c$ 是什么关系？为什么？

]
#heading(level: 2, numbering: none, supplement: [toc-sub])[习题1.4]

+ 分别在两个平面内的直线是异面直线吗？举出异面直线的几个实例.

+ 直线 $a$ 和异面直线 $b$ 和 $c$ 相交，画出每两条相交直线所确定的平面，并且注上字母.

+ 在长方体 $A B C D - A_1 B_1 C_1 D_1$ 的 $A C$ 面上有一点 $P$⁠，

  + 过 $P$ 点画平行于 $C_1 D_1$ 的直线．

  + 过 $P$ 点画平行于 $A_1 D_1$ 的直线，

  #noindent;怎么画法？

+ 求证：一条直线和两条平行直线中的一条所成的角等于 $theta$⁠，则该直线与另一条所成的角也等于 $theta$⁠．

+ 垂直于同一条直线的两条直线，可能有几种位置关系？

  #align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, [#fig("1-43");
  
  #subcap[
  第3题
  
  ]], [#fig("1-44");
  
  #subcap[
  第6题
  
  ]])));

+ 已知：六点 $A$⁠、$B$⁠、$C$⁠、$D$⁠、$E$⁠、$F$ 不共面，并且 $A B =^(pll) C D$⁠，$A B =^(pll) E F$. 求证：

  + $C$⁠、$D$⁠、$F$⁠、$E$ 四点共面.

  + $C E =^(pll) D F$

  + $angle A C E = angle B D F$

+ 若二直线 $ell_1 inter ell_2 = nothing$⁠，则 $ell_1 pll ell_2$⁠，对吗？

+ 画两个相交平面，在这两个平面内各画一条直线使它们成为：平行线；相交直线；异面直线.

+ 和两条异面直线 $A B$⁠、$C D$ 同时相交的两条直线 $A C$⁠、$B D$ 一定是异面直线，为什么？

+ 已知长方体 $A B C D - A' B' C' D'$ 中，长和宽都是 $sqrt(3)$⁠cm，高是1cm，求：

  + $B' C$ 和 $A C$ 的夹角；

  + $A A'$ 和 $B' C'$ 的夹角各是多少度？

+ 已知：$alpha inter beta = ell$⁠，$A in ell$⁠，$B in ell$⁠，$C in alpha$⁠，$D in beta$⁠，$D in.not ell$⁠，$C in.not ell$⁠．

  求证：$A C$ 和 $B D$ 是异面直线.

  #align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, [#fig("1-45");
  
  #subcap[
  第10题
  
  ]], [#fig("1-46");
  
  #subcap[
  第11题
  
  ]])));

== 直线与平面的位置关系
在现实生活和生产中，除了要考虑直线与直线的位置关系外，还常常要考虑直线与平面的位置关系．例如直立的电线杆和地面是垂直的，铁路桥上的铁轨和水面是平行的等等．

=== 直线和平面的三种位置关系
一条直线和一个平面的位置关系有以下三种情况．

+ 直线在平面内------有二个以上的公共点（即有无数个公共点）．

+ 直线和平面相交------只有一个公共点．

+ 直线和平面平行------没有公共点．

如图1.32的 (1)、(2)、(3) 所示，是当平面 $pi$ 在水平位置时，直线 $ell$ 和 $pi$ 三种位置关系图的一般画法．

#figure([#fig("1-47");

  ],
  caption: [
  ]
)

使用集合符号，直线与平面的三种位置关系可定义如下：

#blk[定义][
+ 直线 $ell$ 在平面 $pi$ 内 $arrow.l.r.double.long ell inter pi = ell$⁠．

+ 直线 $ell$ 与平面 $pi$ 平行 $arrow.l.r.double.long ell inter pi = nothing$⁠．

+ 直线 $ell$ 与平面 $pi$ 相交 $arrow.l.r.double.long ell inter pi = P$⁠．（$P$ 是 $ell$ 与 $pi$ 的唯一公共点）

#noindent;当直线 $ell$ 与平面 $pi$ 平行时，也记作 $ell pll pi$（或 $pi pll ell$⁠）．

]
问：试举出直线和平面三种位置关系的实例来．

=== 直线与平面平行
#blk[定理][
若直线 $a subset.not$ 平面 $alpha$⁠，直线 $a subset$ 平面 $beta$⁠，$alpha inter beta = b$⁠，则 $a pll alpha$ 的充要条件是 $a pll b$.

]
#proof[
（1）先证必要性．设 $a pll alpha$⁠，$a subset beta$⁠，$alpha inter beta = b$（图1.33）由于：$ a inter b = a inter\(alpha inter beta\)=\(a inter alpha\)inter beta = nothing inter beta = nothing $

又 $because quad a\,b subset beta$

$therefore quad a pll b$.

这就告诉了我们：#strong[如果一条直线和一个平面平行，经过这条直线的一个平面和这个平面相交，那么这条直线就和交线平行]（这就是直线和平面平行的性质定理）．

#figure([#fig("1-48");

  ],
  caption: [
  ]
)

（2）再证充分性．借助上图，由于 $ a inter alpha subset beta inter alpha = b $

$therefore quad a$ 若与 $alpha$ 相交，其交点必在 $b$ 上，但因 $a inter b = nothing$.

$therefore quad a inter alpha = nothing\,quad a pll alpha$.

这就告诉我们：#strong[若平面外的一条直线和平面内的一条直线平行，则这条直线就和这个平面平行]（这就是直线和平面平行的判定定理）．

]
#example[
#example-label(label("ex:1-fig34"));如图1.34，已知：$alpha inter beta = c$⁠，$a pll alpha$⁠，$b pll beta$⁠，$a pll b$⁠，求证：$a pll c$⁠，$b pll c$.

]
#proof[
取点 $P in c$⁠，设 $P$ 与 $a$ 所确定的平面交 $alpha$ 于 $a'$⁠，$P$ 与 $b$ 所确定的平面交 $beta$ 于 $b'$⁠，则 $a pll a'$⁠，又

$because quad a pll b #h(2em) therefore quad a' pll b$

$because quad b pll b'$⁠，而 $a' inter b' = P$

$therefore quad a' = b' = c$

$therefore quad a pll c\,quad b pll c$.

]
#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("1-49");], caption: []), figure([#fig("1-50");], caption: []))));

#example[
已知如图1.35，在正方体 $A B C D - A_1 B_1 C_1 D_1$ 中 $O$ 和 $O'$ 分别是 $A C$ 和 $B D$⁠、$A_1 C_1$ 和 $B_1 D_1$ 的交点．

求证：$B_1 O pll$ 平面 $A_1 C_1 D$⁠．

]
#proof[
$because quad A B C D - A_1 B_1 C_1 D_1$ 是正方体

$therefore quad B_1 B D D_1$ 是平行四边形，

$therefore quad B D = B_1 D_1\,quad B D pll B_1 D_1$,

又 $because quad O$⁠、$O'$ 分别是 $A C$ 和 $B D$⁠，$A_1 C_1$ 和 $B_1 D_1$ 的交点，

$therefore quad O$⁠、$O'$ 分别是 $B D$ 和 $B_1 D_1$ 的中点，

$therefore quad D O = B_1 O'$,

$therefore quad D O pll B_1 O'$

$therefore quad D O B_1 O'$ 是平行四边形

$therefore quad B_1 O pll D O'$

$because quad D O' subset$ 平面 $A_1 C_1 D$

$therefore quad B_1 O pll$ 平面 $A_1 C_1 D$⁠．

]
#exercise[
+ 求证：空间四边形两邻边中点的连线平行于另外两边所确定的平面．

+ 设 $a$⁠、$b$ 为两条异面直线，是否可以经过 $a$ 作一个平面 $pi$⁠，使得 $b pll pi$⁠？

+ 如图所示的一块木头，直线 $B_1 C_1 pll$ 平面 $A C$⁠，点 $P in$ 平面 $A C$⁠，要经过 $P$ 点和 $B_1 C_1$ 把木头锯开，怎样锯法？

]
#fig-center[
#fig("1-51");

#subcap[
第3题

]
]
=== 直线与平面垂直
在平面上，$P\,P'$ 两点关于直线 $ell$ 成轴对称的条件是线段 $P P'$ 被 $ell$ 垂直平分．（图1.36(1)）

#figure([#fig("1-52");

  ],
  caption: [
  ]
)

在三维空间，也有相应的基本定理

#blk[定理][
在空间 $V$ 中，和相异两点 $P$⁠、$P'$ 距离相等的点的集合是一个平面 $pi$, 它和线段 $P P'$ 相交于 $P P'$ 的中点 $M$, 而且 $P P'$ 和 $pi$ 的任何直线都垂直（我们称 $pi$ 为线段 $P P'$ 的垂直平分面）．

]
#proof[
如图1.36(2), 设 $pi = \{ X\|X in V\,thick P X = P' X \}$, 即 $pi$ 是空间 $V$ 中，所有和 $P$⁠、$P'$ 距离相等的点所成的集合．

设 $pi'$ 是经过 $P$⁠、$P'$ 的任意一个平面，在 $pi'$ 上，$P P'$ 的垂直平分线在 $pi$ 内，由于 $pi'$ 的任意性，所以 $pi$ 中必有不共线的点存在．又 $pi$ 显然是 $V$ 的一个真子集，以下证明 $pi$ 具有平面的另一重要特征．

设 $M$ 是线段 $P P'$ 的中点，$A$⁠、$B$ 是 $pi$ 中相异两点，$C in$ 直线 $A B$. 连 $P A\,P B\,P C\,P' A\,P' B\,P' C$.

$because quad A\,B in pi$

$therefore quad P A = P' A\,quad P B = P' B$

又 $A B = A B$,

$therefore quad triangle.stroked.t P A B tilde.equiv triangle.stroked.t P' A B$ (SSS)

$therefore quad angle P A C = angle P' A C$

由于 $A C = A C$, $P A = P' A$,

$therefore quad triangle.stroked.t P A C tilde.equiv triangle.stroked.t P' A C$ (SAS)

$therefore quad P C = P' C$

$therefore quad C in pi$.

可见，$pi$ 中任意两点所确定的直线还被包含在 $pi$ 中．这样，由平面的定义可知：$pi$ 是一个平面．

现在我们来证明 $P P'$ 垂直于 $pi$ 内任何一条直线．

设 $pi inter P P' = M$（$because med M in P P'$⁠，$M in pi$⁠，同时 $P in.not pi$⁠）

令 $N M$ 是 $pi$ 上的任一直线，如果 $P P'$, $N M$ 所确定的平面为 $pi'$, 那么连接 $P N$, $P' N$, 则在平面 $pi'$ 上，$triangle.stroked.t P M N tilde.equiv triangle.stroked.t P' M N$

$therefore quad angle P M N = angle P' M N = pi / 2$

$therefore quad P P'$ 垂直于平面 $pi$ 上过 $M$ 点的任何一条直线．

对平面 $pi$ 内任一直线 $ell$, 在 $pi$ 内过点 $M$ 作直线 $ell' pll ell$

$because quad ell'$ 是 $pi$ 内过点 $M$ 的直线

$therefore quad P P' tack.t ell'\,quad P P' tack.t ell$.

]
由这个定理可以看出，平面外一条直线垂直于平面内任何直线是可能的．因此，我们可以对直线与平面的垂直作如下定义．

#blk[定义][
若直线 $ell inter pi = M$, $ell$ 和 $pi$ 内的任何一条直线都垂直，则称 $ell$ 和 $pi$ 垂直．记作 $ell tack.t pi$. 点 $M$ 叫垂足，$ell$ 叫作平面 $pi$ 的垂线．平面 $pi$ 叫作直线 $ell$ 的垂面．如果直线 $ell$ 垂直于平面 $pi$, 记作 $ell tack.t pi$. 这样一来，上述定理就成了直线与平面垂直的存在定理了．但要判断一条直线和平面内所有的直线都垂直，一般比较困难．因此，我们利用直线与平面垂直的存在定理的推论较为方便．

]
#blk[推论1][
设 $ell inter pi = M$, $ell_1$, $ell_2$ 是 $pi$ 中两条相交直线，则 $ell tack.t pi$ 的充要条件是 $ell tack.t ell_1$ 且 $ell tack.t ell_2$.（图1.37）

]
#figure([#fig("1-53");

  ],
  caption: [
  ]
)

#proof[
必要性是显然的．现在证明充分性，即证：若一条直线垂直于平面内两条相交直线，则这条直线和这个平面互相垂直．

在平面 $pi$ 上，过 $M$ 点引直线 $ell'_1 pll ell_1$, $ell'_2 pll ell_2$, 则 $ell tack.t ell'_1$, $ell tack.t ell'_2$, $ell'_1 inter ell'_2 = M$.

在 $ell$ 上取点 $P\,P'$, 使 $P M = P' M$, 在 $ell'_1$ 和 $ell'_2$ 上各取异于 $M$ 的点 $A_1$⁠、$A_2$, 得 $P A_1 = P' A_1$, $P A_2 = P' A_2$.

$therefore quad$ 点 $M$⁠、$A_1$⁠、$A_2$ 在线段 $P P'$ 的垂直平分面上，且 $M$⁠、$A_1$⁠、$A_2$ 不共线，因此平面 $M A_1 A_2$ 是线段 $P P'$ 的垂直平分面，但 $M\,A_1\,A_2 in pi$, 因为过不共线三点只能确定一个平面，所以，平面 $pi$ 就是平面 $M A_1 A_2$.

$therefore quad ell tack.t pi$.

（推论1的充分性也叫二垂线定理和直线与平面垂直的判定定理）

]
#blk[推论2][
设直线 $ell_1 tack.t pi$, 则直线 $ell_2 tack.t pi$ 的充要条件是 $ell_1 pll ell_2$.

]
#proof[
+ 充分性：设 $ell_1 tack.t pi$, $ell_1 pll ell_2$, 不妨设 $ell_1$ 与 $ell_2$ 相异，在平面 $pi$ 内作两条相交直线 $a\,b$ (图1.38)

  $because ell_1 tack.t pi$

  $therefore quad ell_1 tack.t a\,quad ell_1 tack.t b$

  $because ell_1 pll ell_2$

  $therefore quad ell_2 tack.t a\,quad ell_2 tack.t b$

  $therefore quad ell_2 tack.t pi$

  #align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("1-54");], caption: []), figure([#fig("1-55");], caption: []))));

+ 必要性：设 $ell_1 tack.t pi$, $ell_2 tack.t pi$, $ell_2 inter pi = P$ (图1.39) 过 $P$ 作直线 $ell'_2 pll ell_1$⁠，假定 $ell'_2$ 与 $ell_2$ 相异，

  $because ell_1 tack.t pi$

  $therefore quad ell'_2 tack.t pi$

  设 $pi'$ 为 $ell_2$⁠、$ell'_2$ 所确定的平面，$pi inter pi' = ell$,

  $because quad ell_2 tack.t pi$

  $therefore quad ell_2 tack.t ell$,

  同理，$ell'_2 tack.t ell$. 而 $ell\,ell_2\,ell'_2 subset pi'$, 且有一个公共点 $P$, 这与平面几何中“过一点与已知直线垂直的直线只有一条”这一定理相矛盾

  $therefore quad ell'_2 = ell_2$, 即 $ell_2 pll ell_1$#footnote[这里同时证明了过平面上一点只有一条直线和这个平面垂直。]\.

]
推论2也称作直线和平面垂直的性质定理。

#blk[问题][
一条直线如果垂直于平面内的两条直线，这条直线垂直于这个平面吗？

]
#example[
如图1.40(1), $A_1$⁠、$A_2$ 是空间一点 $A$ 在主视图平面 $alpha$ 和俯视图平面 $beta$ 上的主视图和俯视图。求证 $A_1 A_2 tack.t X Y$.

为证明方便起见，我们把 $A$ 点二视图（图1.40(1)）改画成图1.40(2). $alpha$ 在铅直位置，$beta$ 在水平位置，$A$ 点在 $alpha\,beta$ 上的主视图和俯视图 $A_1$⁠、$A_2$ 实际上是由 $A$ 点分别向 $alpha$⁠、$beta$ 平面作垂线所得到的垂足。以前我们讲过的一个物体在某投影平面上的投影图，实际上是这个物体的轮廓线上所有点在该投影平面上的投影所得到的图形。

]
#figure([#fig("1-56");

  ],
  caption: [
  ]
)

#proof[
在图1.40(2) 中，

$because quad A A_1 tack.t alpha\,quad A A_2 tack.t beta$,

又 $because quad alpha inter beta = X Y$,

$therefore quad A A_1 tack.t X Y\,quad A A_2 tack.t X Y$.

设 $gamma$ 是 $A A_1$ 和 $A A_2$ 所确定的平面，则 $X Y tack.t gamma$, 设垂足为 $A_0$

$because quad A_1 A_0\,A_2 A_0 subset gamma$.

$therefore quad X Y tack.t A_1 A_0\,quad X Y tack.t A_2 A_0$

$therefore quad angle A_1 A_0 X = angle A_2 A_0 X = 90 degree$.

$therefore quad$ 当把图1.40(2) 还原成图1.40(1) 之后，$A_1 A_2$ 必与 $X Y$ 垂直.

]
#example[
如图1.41, $triangle.stroked.t A B C$ 在平面 $alpha$ 内，$angle A B C = 90 degree$, $D$ 是 $A C$ 中点，$P in.not alpha$, $P A = P B = P C$.

求证：$P D tack.t alpha$.

]
#figure([#fig("1-57");

  ],
  caption: [
  ]
)

#proof[
$because quad$ 在 $triangle.stroked.t A B C$ 中，$angle A B C = 90 degree$, $D$ 是 $A C$ 中点，

$therefore quad A D = B D = D C$.

又 $because quad P A = P B = P C$⁠，而 $P D$ 为公共边，

$therefore quad triangle.stroked.t P A D tilde.equiv triangle.stroked.t P B D tilde.equiv triangle.stroked.t P C D$

$therefore quad angle P D A = angle P D C = angle P D B$

$because quad angle P D A = angle P D C = 90 degree$

$therefore quad angle P D B = 90 degree$

$therefore quad P D tack.t D C\,quad P D tack.t D B$

$therefore quad P D tack.t alpha$.

]
#exercise[
+ 设直线 $ell tack.t$ 平面 $alpha$, 直线 $m tack.t$ 直线 $ell$, 那么 $m$ 与 $alpha$ 一定平行吗？为什么？

+ 设 $O X$⁠、$O Y$⁠、$O Z$ 三条直线两两互相垂直，点 $A in O X$, 点 $B in O Y$, 点 $C in O Z$, 求证：$O X tack.t B C$, $O Y tack.t A C$, $O Z tack.t A B$.

+ 在下面各个二视图 (1)、(2)、(3)、(4) 中，反映两条线段 $A B$⁠、$C D$ 相交的是哪些？异面的是哪些？（提示：利用例1.14的结论）

+ 求证：过平面外（内）一点只能作一条直线与已知平面垂直。

]
#fig-center[
#fig("1-58");

#subcap[
第3题

]
]
=== 正射影
#blk[定义][
从平面 $alpha$ 外一点 $P$ 向 $alpha$ 作垂线，垂足是 $P'$, 点 $P'$ 叫作点 $P$ 在平面 $alpha$ 内的正射影（简称射影）。前面讲过的点在投影平面上的投影图，就是该点在投影平面上的正射影。

一个图形 $F$ 上所有点在平面 $alpha$ 内的正射影的集合 $F'$ 叫作图形 $F$ 在平面 $alpha$ 内的正射影（简称射影）。

]
直线在平面内的射影，当直线垂直于平面的时候，显然只是一点，在不垂直的时候，就是直线。（图1.42）

#figure([#fig("1-59");

  ],
  caption: [
  ]
)

#blk[定理][
不与平面垂直的直线在该平面内的射影，就是这条直线上的任意两点在平面内射影所确定的直线。

]
已知：直线 $ell$ 与平面 $alpha$ 不垂直，$A in ell$, $B in ell$, $A'$⁠、$B'$ 分别是 $A$⁠、$B$ 在 $alpha$ 上的射影。（图1.43）

求证：$ell$ 在 $alpha$ 上的射影是直线 $A' B'$.

#figure([#fig("1-60");

  ],
  caption: [
  ]
)

#proof[
$because quad A A' tack.t alpha\,quad B B' tack.t alpha$,

$therefore quad A A' pll B B'$

$therefore quad A A'$ 和 $B B'$ 确定一个平面 $beta$, 则 $ell subset beta$.

在 $ell$ 上任取异于 $A$⁠、$B$ 的一点 $C$, 过 $C$ 作 $C C' pll A A'$ 交 $A' B'$ 于 $C'$.

$because quad A A' tack.t alpha$

$therefore quad C C' tack.t alpha$

$therefore quad C'$ 是 $C$ 点在 $alpha$ 上的射影。

$therefore quad ell$ 在 $alpha$ 上的射影是直线 $A' B'$.

]
#blk[问题1][
当直线 $ell$ 和平面 $alpha$ 垂直时，$ell$ 在 $alpha$ 内的射影将怎样？

]
#blk[问题2][
当直线 $ell$ 和平面 $alpha$ 相交而不垂直时，如何求 $ell$ 在 $alpha$ 内的射影？

]
#blk[定义][
一条直线和一个平面相交但不垂直，这条直线叫作这个平面的斜线，斜线和平面的交点叫斜足。斜线上一点与斜足间的线段叫做这点到这个平面的斜线段。

]
#blk[定理][
从平面外一点向这个平面引若干条斜线段，则

+ 斜线段相等 $arrow.l.r.double.long$ 斜线段的射影相等。

+ 斜线段较长 $arrow.l.r.double.long$ 斜线段的射影较长。

]
已知：$A B$⁠、$A C$ 是平面 $alpha$ 的两条斜线段，$A O tack.t alpha$, $O C$⁠、$O B$ 分别是 $A C$⁠、$A B$ 在 $alpha$ 内的射影．（图1.44）

求证：

+ $A B = A C quad arrow.l.r.double.long quad O C = O B$

+ $A B > A C quad arrow.l.r.double.long quad O C < O B$

#figure([#fig("1-61");

  ],
  caption: [
  ]
)

#proof[
$because quad A O tack.t alpha$

$therefore quad angle A O C = angle A O B = 90 degree$⁠，在直角 $triangle.stroked.t A O C$ 和直角 $triangle.stroked.t A O B$ 中，$A O$ 是公共的直角边，由勾股定理可知：

+ $A B = A C quad arrow.l.r.double.long quad O B = O C$

+ $A B > A C quad arrow.l.r.double.long quad O B > O C$

]
#blk[问题1][
$A O$ 经过 $dot.o O$ 的圆心 $O$, 并且和 $dot.o O$ 所在平面垂直，那么

+ $A$ 点到 $dot.o O$ 上各点的距离是否相等？为什么？

+ 若 $A O tack.t$ 平面 $alpha$, $dot.o O$ 所在的平面 $alpha$ 上有 $B$⁠、$C$ 两点分别在 $dot.o O$ 的内部和外部，则 $A B$⁠、$A C$ 有什么关系？为什么？

]
#blk[问题2][
已知：$S$ 是 $triangle.stroked.t A B C$ 所在平面 $P$ 外的一点，并且 $S A = S B = S C$.

求证：$S$ 点在 $P$ 上的射影 $S'$ 是 $triangle.stroked.t A B C$ 的外心。

]
为了给研究直线 $ell$ 和平面 $alpha$ 所成的角作准备，我们来证明下面的定理。

#blk[定理][
直线和平面相交而不垂直，这条直线与平面内经过这个交点的直线所成的角中，以这条直线和它在平面内的正射影所成的角为最小。

]
已知：直线 $ell inter$ 平面 $alpha = A$, 但 $ell$ 不垂直 $alpha$, $P in ell$, $P$ 在 $alpha$ 内的射影为 $P'$, $A Q$ 是 $alpha$ 内过 $A$ 的任一条直线。（图1.45）

求证：$angle P A P' < angle P A Q$.

#figure([#fig("1-62");

  ],
  caption: [
  ]
)

#proof[
设 $P Q tack.t A Q$, 连 $P' Q$.

$because quad P P' tack.t alpha$

$therefore quad triangle.stroked.t P Q P'$ 中 $angle P P' Q = 90 degree$

$therefore quad P Q > P P'$

在 $triangle.stroked.t P P' A$ 和 $triangle.stroked.t P Q A$ 中，

$because quad angle P P' A = 90 degree\,quad angle P Q A = 90 degree$

$therefore quad sin angle P A Q = frac(P Q, P A)\,quad sin angle P A P' = frac(P P', P A)$

$therefore quad sin angle P A Q > sin angle P A P'$

$because quad angle P A Q$ 和 $angle P A P'$ 都是锐角，

$therefore quad angle P A Q > angle P A P'$.

]
有了上述定理，我们就可以给直线和平面的夹角下定义了。

#blk[定义][
平面的一条斜线和它在平面内的射影所成的锐角叫作这条直线和这个平面所成的角（或夹角）。

]
在特殊情况下，直线和平面垂直，我们就说直线和平面所成的角是直角。如果一条直线和一个平面平行或在平面内，我们说这条直线和这个平面所成的角是 $0 degree$ 的角。

#blk[定理][
设直线 $ell$ 和平面 $alpha$ 所成的角是 $theta$, $ell$ 上的线段 $A B$ 的射影是 $A' B'$, 那么，$A' B' = A B cos theta$ (图1.46).

]
#figure([#fig("1-63");

  ],
  caption: [
  ]
)

#proof[
$because quad A A'\,B B' tack.t alpha$

$therefore quad A A' pll B B'$

$therefore quad A A'$ 和 $B B'$ 确定一个平面 $beta$, 过 $A$ 引 $A B'' pll A' B'$ 交 $B B'$ 于 $B''$⁠，则 $angle B A B'' = theta$⁠，且 $A A' B' B''$ 是矩形，

$therefore quad A' B' = A B'' = A B cos theta$.

]
#blk[问题1][
当 $theta = 0 degree$ 时，$A B$ 和 $A' B'$ 有什么关系？

]
#blk[问题2][
当 $theta = 90 degree$ 时，$A' B'$ 将成为怎样的图形？

]
#blk[问题3][
当 $0 degree < theta < 90 degree$ 时，$A B$ 和 $A' B'$ 大小关系怎样？

]
#blk[问题4][
在空间的两条直线 $a$⁠、$b$ 互相平行的时候，它们在平面内的射影是否也是平行线？

]
#blk[问题5][
空间的三角形在平面 $alpha$ 内的射影将是怎样的图形？

]
=== 三垂线定理
我们知道平面的垂线垂直于平面上的一切直线，那么平面的斜线和平面内的哪些直线互相垂直呢？

#blk[定理][
在平面内的一条直线，如果和这个平面的一条斜线的射影垂直，那么它也和这条斜线垂直。

]
已知：如图1.47, $A A'$ 和 $A B$ 分别是平面 $alpha$ 的垂线和斜线，$A' B$ 是 $A B$ 在 $alpha$ 内的射影，$C D subset alpha$, $C D tack.t A' B$.

求证：$C D tack.t A B$.

#proof[
$because quad C D subset alpha\,quad A A' tack.t alpha$

$therefore quad A A' tack.t C D$

又 $because quad A' B tack.t C D$

$therefore quad C D tack.t$ 平面 $A A' B$

$because quad A B subset$ 平面 $A A' B$

$therefore quad C D tack.t A B$.

]
#figure([#fig("1-64");

  ],
  caption: [
  ]
)

这个定理称为三垂线定理，其逆定理也成立，即“#strong[在平面内的一条直线，如果和这个平面的一条斜线垂直，那么它也和这条斜线的射影垂直]”也真。

所以，#strong[平面内的一条直线和这个平面的一条斜线垂直的充要条件是它和斜线在平面内的射影垂直]。

#example[
设 $O$ 点是正三角形 $A B C$ 的中心，线段 $P O$ 垂直于 $triangle.stroked.t A B C$ 所在的平面 $alpha$, $O P = h$⁠，$A B = a$, 求 $P$ 点到 $triangle.stroked.t A B C$ 各边的距离。（图1.48）

]
#figure([#fig("1-65");

  ],
  caption: [
  ]
)

#solution[
设 $O D tack.t B C$

$because quad B C subset alpha$, $O D$ 是 $P D$ 在 $alpha$ 内的射影。

$therefore quad P D tack.t B C$（为什么？）

$therefore quad P D$ 之长就是 $P$ 点到 $B C$ 边的距离。

$because quad$ 正三角形 $A B C$ 的边长为 $a$.

$therefore quad$ 边心距 $O D = sqrt(3) / 6 a$

$therefore quad P D = sqrt(O P^2 + O D^2) = sqrt(h^2 + frac(3 a^2, 6^2)) = 1 / 6 sqrt(36 h^2 + 3 a^2)$

同理，求得 $P$ 点到 $A C$⁠、$A B$ 边的距离都是 $1 / 6 sqrt(36 h^2 + 3 a^2)$

答：$P$ 点到 $triangle.stroked.t A B C$ 各边的距离为 $1 / 6 sqrt(36 h^2 + 3 a^2)$.

]
#exercise[
+ 已知：如图，正方体 $A' B' C' D' - A B C D$ 中，$E in$ 平面 $A' C'$.

  + 求证：$B D' tack.t A C$.

  + 在平面 $A' C'$ 内画一条直线垂直于直线 $C E$.

+ 已知：点 $O$ 是 $triangle.stroked.t A B C$ 的垂心，$O P tack.t$ 平面 $A B C$. 求证：$P A tack.t B C$.

+ 如图，$A B C D$ 是矩形，$P A tack.t$ 平面 $A C$, 连 $P B\,P C\,P D$. 试指出图中有几个直角三角形？并说明道理．

+ 叙述并证明三垂线定理的逆定理．

]
#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, [#fig("1-66");

#subcap[
第1题

]], [#fig("1-67");

#subcap[
第3题

]])));

=== 距离
我们已经知道，两点间距离、点到直线的距离和两条平行直线间的距离，它们是反映点与点、点与直线和两条平行直线相对位置状况的重要几何量．在这一节，我们把距离的概念推广到三维空间中点到平面的距离、一条直线和与它平行的平面间的距离以及两条异面直线间的距离．从平面 $pi$ 外一点 $P$, 可以作一条且只可作一条直线 $P M$ 垂直于平面 $pi$, 设 $M$ 为垂足．（见5.3的练习4题）设 $Q$ 为 $pi$ 中之任意一点，容易证明：$P M lt.eq P Q$. 由于线段 $P M$ 的长是唯一确定的，并且连结 $P$ 与 $pi$ 中任意一点所得的线段中 $P M$ 最短，我们就把 $P M$ 叫作 $P$ 点到平面 $pi$ 的距离．（图1.49）

#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("1-68");], caption: []), figure([#fig("1-69");], caption: []))));

#blk[定义][
从平面外一点向这个平面引垂线，这点和垂足间的距离叫做这个点到这个平面的距离．

]
如果已知一条直线 $ell$ 平行于平面 $alpha$\(图1.50) 容易证明 $ell$ 上各点到 $alpha$ 的距离相等．因为，如果在直线 $ell$ 上任取两点 $A$⁠、$B$, 过 $A$⁠、$B$ 引平面 $alpha$ 的垂线 $A A'$⁠、$B B'$, $A'$⁠、$B'$ 分别为垂足．由于 $A A' tack.t alpha$, $B B' tack.t alpha$

$therefore quad A A' pll B B'$

设 $A A'$, $B B'$ 确定的平面为 $beta$, $beta inter alpha = A' B'$

$because quad ell pll alpha\,#h(2em) therefore quad ell pll A' B'$

又 $because quad A A' pll B B'$

$therefore quad A A' = B B'$.

因此，我们可如下定义一条直线和一个平面平行时，它们之间的距离．

#blk[定义][
一条直线和一个平面平行，这条直线上任一点到平面的距离，叫做这条直线和平面的距离．

]
若 $P$ 点在平面 $pi$ 内，则定义 $P$ 点到 $pi$ 的距离为0, 若直线 $ell$ 与平面 $pi$ 相交或在 $pi$ 内，则定义 $ell$ 到 $pi$ 的距离为0.

#blk[问题1][
正三角形的边长为 $3 a$, 正三角形所在平面外一点到它的三个顶点的距离都是 $2 a$, 求这个点到这个平面的距离．

]
#blk[问题2][
设直线 $ell_1 pll$ 平面 $alpha$, $ell_1$ 在 $alpha$ 上的射影为 $ell$, 平面 $beta$ 过 $ell_1$, $beta inter alpha = ell_2$

+ 求证 $ell_2 pll ell$

+ 如果 $ell_1$ 和 $ell_2$ 的距离为25cm, $ell_2$ 和 $ell$ 的距离为10cm, 那么 $ell$ 和平面 $alpha$ 的距离为多少？

]
#blk[问题3][
$triangle.stroked.t A B C$ 中，$A B = 6$⁠cm，$A C = 8$⁠cm，$angle A = 90 degree$⁠，$triangle.stroked.t A B C$ 所在平面为 $alpha$⁠，$P A tack.t alpha$ 且 $P$ 点到 $alpha$ 的距离为10cm，

+ 求 $P$ 点到 $B$ 点、$C$ 点的距离．

+ 求 $P$ 点到直线 $B C$ 的距离．

]
下面我们讨论两条异面直线的距离．在正方体 $A' B' C' D' - A B C D$ 中，棱 $A A'$ 和 $B' C'$ 所在的直线是异面直线，直线 $A' B'$ 和它们都垂直相交．我们说直线 $A' B'$ 是异面直线 $A A'$ 和 $B' C'$ 的公垂线．（图1.51）

#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("1-70");], caption: []), figure([#fig("1-71");], caption: []))));

#blk[定义][
同时和两条异面直线都垂直相交的直线叫做这两条异面直线的公垂线．

]
#example[
已知：直线 $ell_1$ 和 $ell_2$ 为异面直线．（图1.52）

求证：$ell_1$ 和 $ell_2$ 的公垂线存在并且唯一．

]
#proof[
在直线 $ell_2$ 上任取一点 $P_1$, 过 $P_1$ 引 $ell_3 pll ell_1$ 并设 $ell_3$ 和 $ell_2$ 所确定的平面为 $pi$, 则 $ell_1 pll pi$, 设 $ell_1$ 在 $pi$ 内的射影为 $ell$, 令 $ell_1$ 和 $ell$ 所确定的平面为 $pi'$, 显然 $ell = pi inter pi'$⁠．

$because quad ell_1 pll pi\,#h(2em) therefore quad ell_1 pll ell$

又 $because quad ell_1 pll ell_3\,#h(2em) therefore quad ell_3 pll ell$

$because quad ell_2\,ell_3\,ell subset pi$ 且 $ell_2$ 交 $ell_3$ 于 $P_1$,

$therefore quad ell_2$ 必交 $ell$ 于一点 $P_2$, 在平面 $pi'$ 内过 $P_2$ 作直线垂直于 $ell$, 则必垂直 $ell_1$ 于 $P_3$, 由 $ell$ 是 $ell_1$ 在平面 $pi$ 上的射影，

$therefore quad P_3 P_2 tack.t pi\,quad P_3 P_2 tack.t ell_2$,

又 $P_3 P_2 tack.t ell_1$

$therefore quad P_3 P_2$ 是 $ell_1$ 和 $ell_2$ 的公垂线．

]
下面我们证明 $ell_1$ 和 $ell_2$ 的公垂线是唯一的．（图1.53）

#figure([#fig("1-72");

  ],
  caption: [
  ]
)

若 $P_1 P_2$⁠、$P'_1 P'_2$ 都是 $ell_1$ 和 $ell_2$ 的公垂线，上面已经证明，$P_1 P_2 tack.t pi$⁠，因为 $ell_1 pll ell$⁠，所以 $P'_1 P'_2 tack.t ell$⁠，又由于 $P'_1 P'_2 tack.t ell_2$⁠，所以 $P'_1 P'_2 tack.t pi$⁠，于是 $P_1 P_2 pll P'_1 P'_2$⁠，因此 $ell_1$ 与 $ell_2$ 共面，这和 $ell_1$ 与 $ell_2$ 是异面直线相矛盾，所以 $ell_1$ 与 $ell_2$ 的公垂线只能有唯一的一条 $P_1 P_2$⁠．

两条异面直线 $ell_1$ 和 $ell_2$ 的公垂线的垂足间线段称为异面直线的公垂线段. 不难证明，两条异面直线的公垂线段是连结端点分别在两条异面直线上所得到的线段中最短的线段，事实上在图1.53中，$ell pll ell_1$⁠，设 $ell$ 和 $ell_1$ 所确定的平面为 $pi'$⁠，在 $pi'$ 上过 $P'_1$ 作 $P'_1 P pll P_1 P_2$⁠，则 $P_1 P_2 = P P'_1$⁠，因为 $P_1 P_2 tack.t$ 平面 $P_2 P'_2 P$⁠，所以 $P'_1 P tack.t$ 平面 $P_2 P'_2 P$⁠，于是，$P'_1 P tack.t P P'_2$⁠，显然，$P'_1 P'_2 gt.eq P P'_1$⁠，所以 $P_1 P_2 lt.eq P'_1 P'_2$⁠．

下面我们给异面直线间的距离下定义．

#blk[定义][
两条异面直线间公垂线段的长叫作两条异面直线的距离．

]
由前面关于异面直线公垂线段的作法可知异面直线 $ell_1$ 和 $ell_2$ 的距离，也就是 $ell_1$ 和过 $ell_2$ 且平行于 $ell_1$ 的平面 $pi$ 间的距离．

#example[
已知：在图1.54中，正方体 $A_1 A_2 A_3 A_4 - B_1 B_2 B_3 B_4$ 中，面的对角线 $A_2 B_3$ 和 $B_2 B_4$ 的公垂线段为 $C D$, 求证：线段 $C D$ 等于正方体对角线的三分之一．

]
#figure([#fig("1-73");

  ],
  caption: [
  ]
)

#proof[
自 $C$ 和 $D$ 分别向 $B_2 B_3$ 引垂线 $C E$⁠、$D F$, 由于 $A_2 B_2 pll C E$⁠、$A_2 B_2 tack.t B_1 B_2$

$therefore quad C E tack.t B_1 B_2$

$therefore quad C E tack.t$ 平面 $B_1 B_2 B_3$

同理 $D F tack.t$ 平面 $B_2 B_3 A_3$.

连 $D E$, $C F$, 根据三垂线定理的逆定理，则 $B_2 B_4 tack.t D E$, $A_2 B_3 tack.t C F$, 于是 $triangle.stroked.t B_2 D E$ 和 $triangle.stroked.t B_3 C F$ 都是等腰直角三角形．

在 $triangle.stroked.t B_2 D E$ 中，$B_2 F = F E$⁠；在 $triangle.stroked.t B_3 C F$ 中，$F E = E B_3$⁠．

$therefore quad C E\,D F$ 都等于正方体棱长的三分之一．

设棱长为 $a$, 则 $C E = D F = 1 / 3 a$, 在 $triangle.stroked.t B_2 D E$ 中，算出 $D E = sqrt(2) / 3 a$, 再在直角 $triangle.stroked.t C E D$ 中，算出 $C D = sqrt(3) / 3 a$, 但正方体对角线 $A_2 B_4 = sqrt(a^2 + a^2 + a^2) = sqrt(3) a$

$therefore quad C D$ 等于对角线的三分之一．

]
#exercise[
+ 设正方体 $A' B' C' D' - A B C D$ 的棱长为 $a$,

  + 求 $A A'$ 和 $B C$ 间的距离；

  + 求 $A A'$ 与 $B D'$ 间的距离．

+ 设正方体 $A B C D - A' B' C' D'$ 的棱长为 $a$, $M in C D$.

  + 求 $A' B$ 与 $C C'$ 的距离；

  + 求 $A' B$ 与 $C M$ 的距离．

]
#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, [#fig("1-74");

#subcap[
第1题

]], [#fig("1-75");

#subcap[
第2题

]])));

#heading(level: 2, numbering: none, supplement: [toc-sub])[习题1.5]

+ 矩形 $A B C D$ 的一边 $A B$ 在平面 $pi$ 内转动时，$A B$ 的对边 $C D$ 是否总和平面 $pi$ 平行？为什么？

+ “一条直线与一个平面平行时，这条直线就平行于平面内的任何直线”的说法正确吗？

+ 求证：和三角形两边同时垂直的直线，也和第三边垂直．

+ 求证：如果一条直线平行于一个平面，那么这个平面的任何垂线都和这条直线垂直．

+ 求证：如果一条直线垂直于一个平面，那么垂直于这条直线的任何直线或者平行于平面，或者在平面内．

+ 设直线 $a pll$ 直线 $b$, $a subset$ 平面 $alpha$, $b subset$ 平面 $beta$, $alpha inter beta = ell$, 求证：$ell pll a$, $ell pll b$.

+ 如果一条直线和一个平面平行，那么过这个平面内的一点与这条直线平行的直线必在这个平面内．

+ 已知空间四边形 $A B C D$, $E$⁠、$F$⁠、$G$⁠、$H$ 分别是边 $A B$⁠、$B C$⁠、$C D$⁠、$A D$ 的中点，求证：

  + $B D pll$ 平面 $E F G$

  + $A C pll$ 平面 $E F G$

+ 已知：平面 $alpha$⁠、$beta$, $alpha inter beta = C D$⁠，$P A tack.t alpha$ 于 $A$, $P B tack.t beta$ 于 $B$. 求证：$C D tack.t A B$.

+ 求证：过直线上一点和这条直线相垂直的所有直线的集合是一个平面．

+ 证明：过一点和一个平面垂直的直线只有一条．

  #align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, [#fig("1-76");
  
  #subcap[
  第9题
  
  ]], [#fig("1-77");
  
  #subcap[
  第12题
  
  ]])));

+ 已知如图，$A B = 5$⁠cm, $A B tack.t B C$, $A B tack.t B D$, $B C\,B D subset$ 平面 $pi$, $E in pi$, $B E = 7$⁠cm. 试求：

  + $E B$ 和 $A B$ 成多少度角？

  + $C D$ 和 $A B$ 成多少度角？

  + 线段 $A E$ 有多长？

+ 从平面外一点 $D$ 向平面 $pi$ 引垂线 $D A$ 及斜线 $D B$⁠、$D C$, $A$ 为垂足，$B$⁠、$C$ 均为斜足，已知 $D A = a$, $angle B D A = angle C D A = 60 degree$⁠，$angle B D C = 90 degree$⁠，求 $B C$ 的长.

+ 求证：两条平行线和同一个平面所成的角相等．其逆命题成立吗？

+ 求证：如果平面 $pi'$ 和直线 $a$ 都垂直于平面 $pi$, 并且 $a subset.not pi'$⁠，那么 $a pll pi'$.

+ 高空中有一气球，它和地面的距离是 $h$, 在气球的东南 $A$ 处看气球的仰角是 $theta_1$, 同时在气球的西南 $B$ 处看气球的仰角是 $theta_2$, $A\,B$ 两地距离为 $a$. 求证：$ h = a / sqrt(cot^2 theta_1 + cot^2 theta_2) $

+ 证明：两条异面直线不能同时和一个平面垂直．

+ 如果 $triangle.stroked.t A B C$ 的各边所在直线与平面 $pi$ 都平行，那么 $triangle.stroked.t A B C$ 在 $pi$ 上的射影与 $triangle.stroked.t A B C$ 全等．

+ 证明不与平面垂直的两条平行直线在该平面上的射影是平行线．

+ 已知斜线长是它在平面上射影的两倍，求斜线和该平面所成的角．

+ 从平面外一点引平面的两条斜线段，求证：较长的斜线段和平面所成的角较小．

+ $D$ 点是平面外一点，$D A tack.t$ 平面 $M$, 垂足是 $A$\; $D B$⁠、$D C$ 和平面 $M$ 斜交，斜足分别是 $B$⁠、$C$, 已知 $D A = a$, $angle B D A = angle C D A = 60 degree$⁠，$angle B D C = 90 degree$⁠，求 $B C$ 的长.

+ 如果一点和正多边形的各顶点距离相等，那么这点在正多边形所在平面内的射影是这个正多边形的中心．

+ 求证：如果一个角所在的平面外一点到角的两边的距离相等，那么这一点在这个平面内的射影在这个角的平分线上．

+ 平面 $alpha$ 内有一个正六边形，它的中心是 $O$, 边长为2cm, $O H tack.t alpha$, $O H = 4$⁠cm, 求 $H$ 点到这个正六边形的顶点和边的距离．

+ 一个直角所在的平面外有一点，这点和直角顶的距离是23cm, 和两条直角边的距离都是17cm, 求这点到直角所在平面的距离．

+ 从平面外一点 $P$ 到这个平面引垂线 $P O$, 以及斜线 $P A$⁠、$P B$, $O$⁠、$A$⁠、$B$ 分别为垂足和斜足，已知 $P A = 8$⁠cm, $P B = 5$⁠cm, 它们在 $pi$ 上的射影 $O A$ 和 $O B$ 的比为 $4 : sqrt(3)$, 求 $P$ 点到 $pi$ 的距离．

+ $A B$ 和 $C D$ 是平面 $pi$ 内相离28cm的两条平行线，$E F$ 是平面 $pi$ 外和 $A B$ 平行且相距17cm, 和 $pi$ 相距15cm的一条直线，求 $E F$ 和 $C D$ 的距离．

+ 如图长方体 $A' B' C' D' - A B C D$ 的长和宽都是4cm, 高是2cm, 求：

  + $B C$ 和 $A' C'$ 所成的角是多少度？

  + $A A'$ 和 $D D'$⁠、$B' C'$ 和 $C D$ 的距离各是多少？

  + $A A'$ 和 $B D'$⁠、$A' B'$ 和 $B D'$ 的距离各是多少？

  #fig-center[
  #fig("1-78");

  #subcap[
  第29题

  ]
  ]

+ 求证：如果直角的一边和一个平面平行，另一边不和这个平面垂直，那么这个直角在这个平面内的射影也是直角．

== 平面与平面的位置关系
=== 两个平面的相关位置
空间的一条直线和一个平面的位置关系，我们已经知道了，现画图如下：

#figure([#fig("1-79");

  ],
  caption: [
  ]
)

如果，我们把直线 $ell$ 换成平面 $beta$, 那么 $alpha$ 和 $beta$ 的位置关系将怎样呢？不难发现也有直线与平面类似的位置关系：

#figure([#fig("1-80");

  ],
  caption: [
  ]
)

一般两个平面有三种位置关系

+ 两个平面重合．

+ 两个平面相交------两个平面的交集是一条直线（即只有一条公共直线）．

+ 两个平面平行------两个平面的交集是空集（即两个平面没有公共点）．

如果使用集合符号，平面与平面的三种位置关系定义如下：

#blk[定义][
+ 平面 $alpha$ 和平面 $beta$ 重合 $arrow.l.r.double.long alpha = beta$.

+ 平面 $alpha$ 和平面 $beta$ 平行 $arrow.l.r.double.long alpha inter beta = nothing$.

+ 平面 $alpha$ 和平面 $beta$ 相交于直线 $ell arrow.l.r.double.long alpha inter beta = ell$.

]
当平面 $alpha$ 平行于平面 $beta$ 时，记作 $alpha pll beta$\(或 $beta pll alpha$).

有时我们也把两个平面重合看作两个平面平行的极限情况，这时我们也可以说：两个平面 $pi_1$ 和 $pi_2$ 平行 $arrow.l.r.double.long pi_1 inter pi_2 = nothing$ 或 $pi_1 = pi_2$. 不过通常说两个平面平行是指两个相异平面的平行．

#exercise[
+ 如果平面 $alpha pll$ 平面 $beta$, $ell subset alpha$, 求证 $ell pll beta$.

+ 平面上相异三条直线可有如下各种位置关系．如果把上述三条直线换成空间的三个平面，那么这三个平面可有哪几种位置关系？试画图说明之．

+ 空间两个平面在各种位置关系的情况下，把空间分成哪几部分？试画出图形，并说明差集 $V -\(pi_1 union pi_2\)$ 是哪几块空间区域？

+ 如果 $pi_1$⁠、$pi_2$⁠、$pi_3$ 是空间 $V$ 中三个平面，那么差集 $V -\(pi_1 union pi_2 union pi_3\)$ 是哪几块空间区域？

]
#fig-center[
#fig("1-81");

#subcap[
第2题

]
]
=== 两个平面平行的判定定理和性质定理
#blk[两个平面平行的判定定理][
如果在一个平面内有两条相交直线平行于另一个平面，那么这两个平面平行．

]
已知：如图1.57, 平面 $alpha$ 内有直线 $a$⁠、$b$, 并且 $a inter b = P$⁠，$a inter$ 平面 $beta = nothing$, $b inter$ 平面 $beta = nothing$.

求证：$alpha pll beta$.

#proof[
假定 $alpha parallel.not beta$, 不妨设 $alpha inter beta = ell eq.not nothing$

$because quad a pll beta\,quad b pll beta$ 且 $ell subset alpha$,

$therefore quad ell pll a$ 且 $ell pll b$（为什么？）

$therefore quad a pll b$⁠，这和题设 $a inter b = P$ 矛盾，

$therefore quad alpha parallel.not beta$ 是不可能的，

$therefore quad alpha pll beta$.

]
#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("1-82");], caption: []), figure([#fig("1-83");], caption: []))));

#blk[推论][
垂直于同一条直线的两个平面互相平行。

]
已知：如图1.58, 平面 $alpha\,beta$ 都垂直于直线 $A A'$.

求证：$alpha pll beta$.

#proof[
经过直线 $A A'$ 分别作平面 $pi_1$ 和 $pi_2$, 它们分别和 $alpha\,beta$ 相交于直线 $a$⁠、$a'$ 和 $b$⁠、$b'$.

$because quad A A' tack.t alpha\,quad A A' tack.t beta$,

$therefore quad A A' tack.t a\,quad A A' tack.t a'$,

$therefore quad a pll a'\,quad a' pll alpha$.

同理，$b' pll alpha$.

又 $because quad a' inter b' = A' eq.not nothing$

$therefore quad alpha pll beta$.

]
#blk[两个平行平面的性质定理][
如果两个平行平面和第三个平面同时相交，那么它们的交线平行。

]
已知：如图1.59, 平面 $alpha\,beta\,gamma$ 中，$alpha inter beta = nothing$, $alpha inter gamma = ell_1$, $beta inter gamma = ell_2$.

求证：$ell_1 pll ell_2$.

#figure([#fig("1-84");

  ],
  caption: [
  ]
)

#proof[
由于：$ ell_1 inter ell_2 =\(alpha inter gamma\)inter\(beta inter gamma\) & =\(alpha inter beta\)inter\(gamma inter gamma\)\
 & =\(alpha inter beta\)inter gamma\
 & = nothing inter gamma = nothing $

又 $because quad ell_1\,ell_2 subset gamma$

$therefore quad ell_1 pll ell_2$.

]
#blk[推论1][
如果一条直线与二平行平面之一相交，那么它必与另一平面相交。

]
#blk[推论2][
如果一条直线垂直于两个平行平面中的一个平面，那么也垂直于另一个平面。

]
如图1.58, 设平面 $alpha pll$ 平面 $beta$, 直线 $A A' tack.t alpha$ 于 $A$, 则 $A A'$ 必交平面 $beta$ 于一点 $A'$ (推论1), 经过 $A A'$ 的平面 $pi_1$ 和 $pi_2$ 分别与 $alpha$ 和 $beta$ 的交线设为 $a$⁠、$a'$ 和 $b$⁠、$b'$,

$because quad a pll beta #h(2em) therefore quad a pll a'$

$because quad A A' tack.t alpha$

$therefore quad A A' tack.t a\,quad quad A A' tack.t a'$

同理，$A A' tack.t b' #h(2em) therefore quad A A' tack.t beta$.

#blk[定义][
和两个平行平面同时垂直的直线叫做这两个平行平面的公垂线。

]
#blk[推论][
夹在两个平行平面间的公垂线段的长都相等。

]
#blk[定义][
夹在两个平行平面间的公垂线段的长叫做这两个平行平面间的距离。

]
#example[
已知：如图1.60中，不共面三线段 $A A'$⁠、$B B'$⁠、$C C'$ 互相平分于一点 $O$.

求证：平面 $A B C pll$ 平面 $A' B' C'$.

]
#proof[
连接 $A B'$⁠、$B A'$,

$because quad A A'$ 和 $B B'$ 互相平分于 $O$ 点，

$therefore quad$ 四边形 $A B' A' B$ 是平行四边形，

$therefore quad A B pll A' B'$.

同理，$B C pll B' C'$,

$therefore quad$ 平面 $A B C pll$ 平面 $A' B' C'$（为什么？）.

]
#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("1-85");], caption: []), figure([#fig("1-86");], caption: []))));

#example[
#example-label(label("ex:1-fig61"));已知如图1.61, 平面 $alpha pll$ 平面 $beta pll$ 平面 $gamma$⁠，直线 $ell_1$ 和 $ell_2$ 分别交 $alpha$⁠、$beta$⁠、$gamma$ 于 $A_1$⁠、$A_2$⁠、$A_3$ 和 $A'_1$⁠、$A'_2$⁠、$A'_3$.

求证：$frac(A_1 A_2, A_2 A_3) = frac(A'_1 A'_2, A'_2 A'_3)$

]
#proof[
如 $ell_1$ 和 $ell_2$ 共面，结论是显然的。现在假设 $ell_1$ 和 $ell_2$ 不共面，那么过 $A'_1$ 引直线 $ell_3 pll ell_1$, 交 $beta$ 于 $A''_2$⁠，交 $gamma$ 于 $A''_3$⁠．令 $ell_1$ 和 $ell_3$ 确定的平面为 $pi_1$, $ell_3$ 和 $ell_2$ 确定的平面为 $pi_2$, 由平行平面的性质定理容易看出：$ A_1 A'_1 pll A_2 A''_2 pll A_3 A''_3\,#h(2em) A''_2 A'_2 pll A''_3 A'_3 $

$therefore quad frac(A_1 A_2, A_2 A_3) = frac(A'_1 A''_2, A''_2 A''_3) = frac(A'_1 A'_2, A'_2 A'_3)$

]
#exercise[
+ 下列说法是否正确。

  + 分别在两个平行平面内的两条直线都平行。

  + 如果一个平面内的两条直线平行于另一个平面，那么这两个平面平行。

  + 如果一个平面内的任何一条直线都平行于另一个平面那么这两个平面平行。

+ 夹在两个平行平面间的线段相等。

+ 求证：夹在两个平面间的三条不共面线段如果平行相等，那么这两个平面平行。

+ 空间任意两条不相交直线能否有公共的平行平面？如果有，画图表示它们。

+ 画两个平行平面，分别在两个平面内画两条平行直线。

+ 如果一条直线和两个平行平面相交，求证：它和两个平面交成等角。

]
=== 平面平行的传递性
#blk[定理][
经过平面外一点，存在唯一一个平面和已知平面平行。

]
已知：如图1.62, $P$ 点在平面 $pi$ 外，

求证：过 $P$ 平行于 $pi$ 的平面存在且唯一。

#proof[
存在性是很容易证明的，因为 $P in.not pi$, 所以过 $P$ 可以任作两条相异直线都平行于 $pi$, 则由平行平面的判定定理可知，过P的两条相交直线所确定的平面便平行于 $pi$.

下面来证定理结论的唯一性（图1.62）.

设过 $P$ 点有两个平面 $alpha$ 和 $beta$ 都和平面 $pi$ 平行。那么 $alpha$ 和 $beta$ 必相交于过 $P$ 点的一条直线 $ell$. 在平面 $pi$ 上画一条直线 $m$ 与 $ell$ 异面。设 $P$ 和 $m$ 所确定的平面为 $pi'$, 显然 $pi' inter pi = m$. 由于 $pi'$ 和 $alpha$⁠、$beta$ 有公共点 $P$, 所以 $pi'$ 必分别交 $alpha$⁠、$beta$ 于一条直线，设交 $alpha$ 于直线 $b$, 交 $beta$ 于直线 $a$. 因为 $alpha pll pi$, $beta pll pi$. 所以 $a pll m$, $b pll m$, 但 $a inter b = P$, 与平行公理矛盾，因此，过 $P$ 只能有一个平面与 $pi$ 平行。

]
#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("1-87");], caption: []), figure([#fig("1-88");], caption: []))));

#blk[定理][
平行于同一平面的两个平面平行。

]
已知：如图1.63, 平面 $alpha\,beta\,pi$ 中，$alpha pll pi$, $beta pll pi$.

求证：$alpha pll beta$.

#proof[
假定 $alpha parallel.not beta$, 那么 $alpha$ 与 $beta$ 必相交，设 $alpha inter beta = ell$, 由于 $alpha\,beta$ 都和 $pi$ 平行，那么过 $ell$ 上任一点 $P$ 便有两个平面和 $pi$ 平行了，此与上一定理矛盾。

所以 $alpha pll beta$.

]
#rmk[
如果把本定理的条件稍加改写，因为 $beta pll pi$, 即 $pi pll beta$. 那么定理可改述如下：“若平面 $alpha pll$ 平面 $pi$, 平面 $pi pll$ 平面 $beta$, 则平面 $alpha pll$ 平面 $beta$\.”这就看出平面平行具有传递性了。

]
#exercise[
+ 一个平面若与两平行平面之一相交，也必与另一平面相交.

+ 已知直线 $a$ 和平面 $alpha$⁠、$beta$, 如果 $a pll alpha$, $a pll beta$, 那么 $alpha pll beta$ 正确吗？如果正确，作出证明；如果不正确，画图举出反例。

+ 已知直线 $a\,b$, 平面 $pi$, 如果 $a pll pi$, $b pll pi$, 那么 $a pll b$ 正确吗？如果正确，作出证明，如果不正确，画图举出反例.

]
=== 二面角
#blk[定义][
一个平面内的一条直线把这个平面分成两部分，每一部分叫作半平面（或射面）。

]
一条直线和过这条直线引两个半平面所组成的图形叫作二面角（如图1.64），这条直线叫做二面角的棱，这两个半平面叫做二面角的面。棱为 $ell$, 面为 $pi_1$ 和 $pi_2$ 的二面角表示作 $pi_1 - ell - pi_2$, 也可简记作 $pi_1 ell pi_2$.

在二面角 $alpha - ell - beta$ 中（如图1.65）.

在棱 $ell$ 上任取两点 $O$ 和 $O'$, 过 $O$ 和 $O'$ 在平面 $alpha$ 和平面 $beta$ 内分别引射线 $O A$⁠、$O' A'$⁠、$O B$⁠、$O' B'$ 都与 $ell$ 垂直，则 $O A pll O' A'$, $O B pll O' B'$, 则 $angle A O B = angle A' O' B'$. 因此，过二面角的棱上任一点，在每一面内引棱的垂线，这样两条垂线的夹角都相等，与顶点在棱上的位置无关。

#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("1-89");], caption: []), figure([#fig("1-90");], caption: []))));

#blk[定义][
以二面角棱上任意一点为端点，在它的两个面内分别作垂直于棱的两条射线，这两条射线所成的角叫做二面角的平面角。在图1.65中 $angle A O B$ 就是二面角 $alpha - ell - beta$ 的平面角。

]
二面角的平面角是用来度量二面角的大小的，我们说二面角的大小是多少度。就是指它的平面角的大小是多少度。

#example[
有一山坡的倾斜角是 $30 degree$（就是山坡和地面所成的二面角是 $30 degree$⁠）。山坡上有一直路和斜坡底线成 $60 degree$ 角，沿这条直线小路上升100米，问升高了多少？

]
#solution[
如图1.66, 设 $A B C D$ 是坡面，$E F$ 是小路，$E F = 100$ 米。设 $F H$ 是 $F$ 到地平面的距离，那么 $F H$ 就是上升的高度。

经过 $H$ 作 $H G tack.t A B$ 于 $G$, 由三垂线定理，$F G tack.t A B$, 则 $angle F G H$ 就是坡面和地面所成二面角的平面角，所以 $angle F G H = 30 degree$.

$therefore quad F H = F G sin 30 degree = F E sin 60 degree sin 30 degree = 100 times sqrt(3) / 2 times 1 / 2 = 25 sqrt(3)\(upright("米")\)$

答：沿这条小路向上走100米，升高 $25 sqrt(3)$ 米。

]
#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("1-91");], caption: []), figure([#fig("1-92");], caption: []))));

#example[
已知：如图1.67, 自二面角 $P - A C - Q$ 的棱上一点 $A$ 在面 $P$ 内引一条射线 $A B$, 和棱 $A C$ 成 $45 degree$ 角，和另一个面 $Q$ 成 $30 degree$ 角，求二面角 $P - A C - Q$ 的度数。

]
#solution[
自射线 $A B$ 上一点 $B$ 向平面 $Q$ 作垂线 $B O$, 设其为长 $a$, $O$ 为垂足，连结 $O A$. 则 $angle B A O$ 为 $A B$ 与平面 $Q$ 所成之角，等于 $30 degree$.

在直角 $triangle.stroked.t A O B$ 中，$B O = a$, 所以 $A B = 2 a$, $A O = sqrt(3) a$.

自 $O$ 点向棱作垂线 $O C$, 设 $C$ 为垂足，根据三垂线定理，$B C tack.t A C$, 所以 $angle B C O$ 为二面角 $P - A C - Q$ 的平面角。

在直角 $triangle.stroked.t A B C$ 中，$angle B A C = 45 degree$, $A B = 2 a$,

$therefore quad A C = sqrt(2) a$.

在直角 $triangle.stroked.t A O C$ 中，$A O = sqrt(3) a\,quad A C = sqrt(2) a$,

$therefore quad O C = a$.

在直角 $triangle.stroked.t B O C$ 中，$O C = a$, $B O = a$, $angle B O C = 90 degree$

$therefore quad angle B C O = 45 degree$

$therefore quad$ 二面角 $P - A C - Q$ 为 $45 degree$ 的二面角。

答：二面角 $P - A C - Q$ 的度数为 $45 degree$.

]
#exercise[
+ 拿一张正三角形的纸片 $A B C$, 以它的高 $A D$ 为折痕，折成一个二面角，试指出这个二面角的棱、面和平面角。

+ 在 $30 degree$ 的二面角的一个面内有一个点，它到另一个面的距离是10cm, 求它到棱的距离。

+ 已知在 $120 degree$ 的二面角内，有一点到棱的距离为20cm, 并且这一点到两个面的距离都相等，试求出这个距离来。

+ 已知二面角 $M a N$ 中 $P in M$, $P Q tack.t$ 平面 $N$ 于 $Q$, $Q C tack.t a$ 于 $C$, 并且 $P Q = 5 sqrt(3)$, $Q C = 5$, 求二面角 $M a N$ 的度数。

]
=== 两个平面垂直的判定定理和性质定理
#blk[定义][
平面角是直角的二面角叫直二面角。

]
两个平面相交，如果所成的二面角是直二面角，我们就说这两个平面互相垂直。

图1.68中的 (1)、(2)、(3) 画的就是平面 $alpha tack.t$ 平面 $beta$.

#figure([#fig("1-93");

  ],
  caption: [
  ]
)

#blk[两个平面垂直的判定定理][
如果一个平面经过另一个平面的一条垂线，那么这两个平面垂直。

]
已知：如图1.69, 直线 $C D tack.t$ 平面 $alpha$ 于 $D$, 直线 $C D$ 在平面 $beta$ 内。

求证：$alpha tack.t beta$.

#proof[
设 $alpha\,beta$ 的交线是过 $D$ 的一条直线 $A B$. 在平面 $alpha$ 内作直线 $E D tack.t A B$.

$because quad C D tack.t alpha\,quad C D subset beta$

$therefore quad C D tack.t A B$.

$because quad$ 平面 $alpha\,beta$ 相交于 $A B\,quad C D tack.t A B\,quad E D tack.t A B$,

$therefore quad angle C D E$ 是二面角 $alpha - A B - beta$ 的平面角。

又 $because quad E D subset alpha\,quad C D tack.t alpha$,

$therefore quad C D tack.t E D\,quad angle C D E = 90 degree$

$therefore quad$ 二面角 $alpha - A B - beta$ 是直二面角。

$therefore quad alpha tack.t beta$.

]
#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("1-94");], caption: []), figure([#fig("1-95");], caption: []))));

#blk[两个平面垂直的性质定理][
如果两个平面互相垂直，那么在其中一个平面内垂直于它们交线的直线垂直于另一个平面。

]
已知：如图1.70, 平面 $alpha tack.t$ 平面 $beta$, $alpha inter beta = ell$, 直线 $A B tack.t ell$, $A B subset alpha$.

求证：$A B tack.t beta$.

#proof[
设 $A B tack.t ell$ 于 $B$ 点，过 $B$ 点在 $beta$ 平面内作 $C B tack.t ell$.

$because quad C B tack.t ell$ 于 $B$, $C B subset beta$\; $A B tack.t ell$ 于 $B$, $A B subset alpha$

$therefore quad angle A B C$ 是二面角 $alpha - ell - beta$ 的平面角．

$because quad$ 平面 $alpha tack.t$ 平面 $beta$,

$therefore quad angle A B C = 90 degree\,#h(2em) A B tack.t B C$

又 $because quad A B tack.t ell$, 而 $ell inter C B = B\,quad ell subset beta\,quad B C subset beta$

$therefore quad A B tack.t$ 平面 $beta$.

]
#example[
已知：如图1.71, 平面 $pi_1 tack.t$ 平面 $pi_2$, $pi_1 inter pi_2 = ell$, 点 $A\,B in ell$, $A B = 10$⁠cm, 在平面 $pi_1$ 内引 $A C tack.t ell$, $A C = 3$⁠cm, 在平面 $pi_2$ 内引 $B D tack.t ell$, $B D = 5$⁠cm. 求线段 $C D$ 的长。

]
#figure([#fig("1-96");

  ],
  caption: [
  ]
)

#solution[
在平面 $pi_2$ 内引 $A E =^(pll) B D$, 连结 $E D\,C E$.

$because quad A E\,B D subset pi_2\,quad A E =^(pll) B D\,quad B D tack.t ell$.

$therefore quad A B D E$ 是矩形。

$therefore quad E D = A B = 10 upright(c m)\,quad A E = 5 upright(c m)$.

$because quad A E tack.t ell$ 于 $A$, $A E subset pi_2$, $C A tack.t ell$ 于 $A$, $C A subset pi_1$

$therefore quad angle C A E$ 是二面角 $pi_1 - ell - pi_2$ 的平面角。

$because quad$ 平面 $pi_1 tack.t$ 平面 $pi_2$,

$therefore quad angle C A E = 90 degree$.

$therefore quad A C = 3 upright(c m)$.

$therefore quad C E = sqrt(3^2 + 5^2) = sqrt(34) upright(\(c m\))$

$because quad C A tack.t ell\,quad pi_1 tack.t pi_2$,

$therefore quad C A tack.t pi_2$

$therefore quad A E$ 是 $C E$ 在 $pi_2$ 内的射影，

$because quad D E tack.t A E\,quad D E subset pi_2$

$therefore quad D E tack.t C E\,quad angle C E D = 90 degree$

$therefore quad$ 在直角三角形 $C E D$ 中，$ C D = sqrt(10^2 +\(sqrt(34)\)^2) = sqrt(134) upright(\(c m\)) $

答：线段 $C D$ 的长为 $sqrt(134) upright(c m)$.

]
#exercise[
+ 如果 $angle A B C$ 是二面角 $alpha - ell - beta$ 的平面角，求证：

  + 平面 $A B C tack.t$ 平面 $alpha$

  + 平面 $A B C tack.t$ 平面 $beta$.

+ 已知：直角等腰三角形 $A B C$ 中，$A B = A C$, $A D$ 是斜边 $B C$ 上的高，如果以 $A D$ 为折痕使 $triangle.stroked.t A B D$ 和 $triangle.stroked.t A C D$ 折成互相垂直的两个平面，求证：$B D tack.t C D$\; $angle B A C = 60 degree$.

+ 已知：如图，如果 $alpha tack.t beta$, $A in alpha$, $A B tack.t beta$.

  求证：$A B subset alpha$.

+ 试画出：

  + 互相垂直的两个平面的图形。

  + 两两垂直的三个平面的图形。

+ 在 $60 degree$ 的二面角的棱上有两个点 $A$⁠、$B$\; $A C$⁠、$B D$ 分别是在二面角的两个面内垂直于 $A B$ 的线段，已知：$A B = 4$⁠cm、$A C = 6$⁠cm、$B D = 8$⁠cm, 求 $C$⁠、$D$ 两点间距离。

]
#fig-center[
#fig("1-97");

#subcap[
第3题

]
]
#heading(level: 2, numbering: none, supplement: [toc-sub])[习题1.6]

+ 画两个相交平面，在这两个相交平面内，各画一条直线，使它们成为 (1) 平行直线；(2) 相交直线；(3) 异面直线。

+ 画两个相交平面，在一个平面内画一条直线和另一个平面平行。

+ 在共点 $O$ 的三条不共面直线 $a$⁠、$b$⁠、$c$ 上，在 $O$ 点的两侧分别取 $A$⁠、$A'$, $B$⁠、$B'$ 和 $C$⁠、$C'$ 使 $A O = 2 A' O$, $B O = 2 B' O$, $C O = 2 C' O$, 求证：平面 $A B C pll$ 平面 $A' B' C'$.

+ 求证：如果一条直线与两个相交平面都平行，那么这条直线与这两个平面的交线平行。

+ 求证：过已知平面外一点且平行于这个平面的直线，都在过已知点且平行于这个平面的平面内。

+ 设平面 $pi_1 pll pi_2$, 平面 $pi_1$ 上有四边形 $A B C D$, 平面 $pi_2$ 上有四边形 $A' B' C' D'$, 如果直线 $A A'$⁠、$B B'$⁠、$C C'$⁠、$D D'$ 交于一点 $P$, 则这两个四边形相似。试证明这一命题，然后把它推广到任意多边形的情况。

+ 求证：如果一个平面与另一个平面的平行线垂直，那么这两个平面互相垂直。

+ 求证：如果三条共点的直线，两两互相垂直，那么它们之中每两条直线所确定的平面也两两互相垂直。

+ 求证：如果两个相交平面都和第三个平面垂直，那么它们的交线也和第三个平面垂直。

+ 已知二面角 $alpha a beta$ 的度数为 $theta$ ($0 < theta lt.eq pi / 2$), 在 $alpha$ 面上有 $triangle.stroked.t A B C$, 它在 $beta$ 面上的射影为 $triangle.stroked.t A' B' C'$.

  求证：$S_(triangle.stroked.t A' B' C') = S_(triangle.stroked.t A B C) dot.op cos theta$.

+ 一条长为 $2 a$ 的线段，夹在互相垂直的两个平面之间，它和这两个平面所成的角分别是 $45 degree$ 和 $30 degree$, 求这条线段的两个端点在这两个平面的交线上的射影间的距离。

+ 已知二面角 $pi_1 - A B - pi_2$ 为 $120 degree$, $A C subset pi_1$, $B D subset pi_2$, 且 $A C tack.t A B$, $B D tack.t A B$, $A B = A C = B D = a$, 求 $C D$ 的长。

  #fig-center[
  #fig("1-98");

  #subcap[
  第12题

  ]
  ]

+ 一条直线和两个平行平面相交成 $60 degree$ 角，这直线被这两个平面截得的线段长18cm, 求这两个平面间的距离。

+ 在二面角（小于 $90 degree$) 的一个面内有已知点 $A$, 从 $A$ 向另一个面作垂线 $A C$, 又从 $A$ 向棱作垂线 $A E$, 并且连结 $C E$, 如果 $A C = 11.8$⁠cm, $A E = 12.4$⁠cm, 求这个二面角的度数。

+ 一个直二面角内一点到两个面的距离分别是12cm和16cm, 求这点到二面角棱的距离。

+ 求证：如果一个二面角是 $alpha$ 度，空间一点到这个二面角的两个面所引垂线的夹角是 $beta$ 度，那么 $alpha = beta$ 或 $alpha + beta = 180 degree$.

+ 三个平面，如果两两互相垂直，求证：每两个平面相交而得的三条直线也两两垂直。

+ 从二面角内一点到二面角的两个面作垂线，经过这两条垂线作一个平面，求证：这个平面垂直于二面角的棱。

+ 证明：两个平行平面 $alpha$⁠、$beta$ 与另外两个平行平面 $pi_1$ 和 $pi_2$ 相交，所成的四条直线互相平行。

+ 求证：垂直于同一条直线的两个平面互相平行。

+ 求证：经过圆 $O$ 的直径 $A B$ 的一个端点 $A$, 作圆所在平面的垂线，设垂线上任一点是 $P$, 圆周上任一点是 $C$, 那么平面 $P A C tack.t$ 平面 $P B C$.

+ 一条直线与直二面角的两个面所成的角分别是 $alpha$ 和 $beta$, 求证：$alpha + beta lt.eq 90 degree$.

== 空间的对称性
在平面几何中，平面有一个基本性质，就是平面对任一直线的对称性。同样地在立体几何中，空间也有一相应的性质，就是空间 $V$ 对于任一平面 $pi$ 的对称性，平面 $pi$ 把空间分成两部分（平面 $pi$ 除外），有居于 $pi$ 的一侧的点 $P\,Q\,dots.h$, 就有居于 $pi$ 的另一侧的对应点 $P'\,Q'\,dots.h$, 使得 $P P'\,Q Q'\,dots.h$, 被 $pi$ 垂直平分。

为了深入了解空间 $V$ 对于任一平面 $pi$ 的对称性，我们先来介绍两个集合间映射的概念。

#blk[定义][
设有两个集合 $A$⁠、$B$, 如果按某种对应关系使集合 $A$ 的任一元素 $a$ 都有集合 $B$ 中的唯一的一个元素 $b$ 和它相对应，那么我们就说这种对应关系为集合 $A$ 到集合 $B$ 的映射，并说 $b$ 是 $a$ 的像，$a$ 是 $b$ 的原像。

]
例如，设有两个集合 $A$⁠、$B$, $ A & = \{ x\|1 lt.eq x lt.eq 2\,thick x in bb(R) \}\
B & = \{ y\|2 lt.eq y lt.eq 4\,thick y in bb(R) \} $

那么不难看出对给定的对应关系 $y = 2 x$ 是 $A$ 到 $B$ 的一个映射。因为任取 $A$ 中的一个元素如 $3 / 2$⁠，那么由关系式 $y = 2 x$ 可知，$y = 2 times 3 / 2 = 3$, $3 in B$, 这样 $B$ 中就有唯一的一个元素3和 $A$ 中的元素 $3 / 2$ 相对应。

#figure([#fig("1-99");

  ],
  caption: [
  ]
)

如果画出图象（图1.72），那么对应关系 $y = 2 x$ 从几何的角度便可看成是 $x$ 轴上的线段 $A B$ 到 $y$ 轴上的线段 $A' B'$ 的映射。

有了集合间映射的概念，便可以给空间 $V$ 对平面 $pi$ 的对称下定义了。

#blk[定义][
空间 $V$ 对给定平面 $pi$ 的对称是一具有下列性质的映射 $R_pi : V arrow.r V$, 对任何点 $P in V$, 它的像是 $R_pi\(P\)= P'$, 线段 $P P'$ 被平面 $pi$ 垂直平分。

]
#blk[定理][
上述定义的映射 $R_pi$ 是一个保距映射，即对 $V$ 中任给两点 $P\,Q$, 总有 $d\(R_pi\(P\)\,R_pi\(Q\)\)= d\(P\,Q\)$#footnote[$d\(P\,Q\)$ 表示 $P$⁠、$Q$ 两点间距离。]\.

]
#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("1-100");], caption: []), figure([#fig("1-101");], caption: []))));

#proof[
设 $R_pi\(P\)= P'$, $R_pi\(Q\)= Q'$, 以下分几种情况来证明．

+ 若 $P\,Q in pi$, 则 $P' = P$, $Q' = Q$, 显然有：$d\(P'\,Q'\)= d\(P\,Q\)$. (图1.73)

+ 若 $P in pi$, $Q in.not pi$, 由定义可知线段 $Q Q' tack.t pi$ 且 $Q Q'$ 被 $pi$ 平分于 $Q_0$, 由图1.74容易看出 $triangle.stroked.t P Q Q_0 tilde.equiv triangle.stroked.t P Q' Q_0$. 所以 $ d\(P'\,Q'\)= d\(P\,Q'\)= d\(P\,Q\) $

+ 若 $P\,Q in.not pi$, $P P'$ 与 $Q Q'$ 共线，由图1.75, 容易看出：$d\(P'\,Q'\)= d\(P\,Q\)$.

+ 若 $P\,Q in.not pi$, $P P'$ 与 $Q Q'$ 不共线，则线段 $P P'$ 和 $Q Q'$ 都被 $pi$ 垂直平分，所以 $P P' pll Q Q'$, 因此 $P$⁠、$Q$⁠、$P'$⁠、$Q'$ 共面。

  过 $P$ 作 $P Q_1$ 垂直 $Q Q'$ 于 $Q_1$, 过 $P'$ 作 $P' Q'_1$ 垂直 $Q Q'$ 于 $Q'_1$, 则 $Q_1$ 的像便是 $Q'_1$, 由3知：$d\(Q\,Q_1\)= d\(Q'\,Q'_1\)$, 由勾股定理得 $d\(P\,Q\)= d\(P'\,Q'\)$. (图1.76)

]
#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("1-102");], caption: []), figure([#fig("1-103");], caption: []))));

#example[
设 $pi_1 tack.t pi$, 若 $P in pi_1$, 求证：$R_pi\(P\)in pi_1$.

]
#proof[
设 $R_pi\(P\)= P'$,

$because quad pi_1 tack.t pi\,quad P in pi_1\,quad P P' tack.t pi$,

$therefore quad P P' subset pi_1\,quad P' = R_pi\(P\)in pi_1$. (图1.77)

]
由上例可以看出，$pi_1$ 上的点被 $R_pi$ 映射到 $pi_1$, 也就是映射 $R_pi$ 在 $pi_1$ 上的作用相当于以 $pi$ 和 $pi_1$ 的交线 $ell$ 为轴的对称。

#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("1-104");], caption: []), figure([#fig("1-105");], caption: []))));

#blk[定义][
空间图形 $F$ 对于给定平面 $pi$ 的对称是一个具有下列性质的映射 $R_pi : thick F arrow.r F$, 对于任何点 $P in F$, 其像为 $R_pi\(P\)= P'$, 线段 $P P'$ 被 $pi$ 垂直平分。$pi$ 称为 $F$ 的对称面，$P$ 和 $P'$ 互称关于 $pi$ 的对称点。

]
#example[
已知：立方体 $A B C D - A' B' C' D'$.

求证：对角面 $B D D' B'$ 所在平面是立方体的对称面（图1.78）。

]
#proof[
在正方体 $A B C D - A' B' C' D'$ 上任取一点 $P$\(不妨取点 $P in$ 面 $B A A' B'$)

设对角面 $B D D' B'$ 所在平面为 $pi$⁠，作 $P P_0 tack.t pi$ 于 $P_0$⁠，引 $P_0 Q tack.t B B'$ 于 $Q$, 由三垂线定理可知，$P Q tack.t B B'$,

$therefore quad B B' tack.t$ 平面 $P P_0 Q$.

设平面 $P P_0 Q$ 与平面 $B B' C'$ 的交线为 $Q Q'$, 在 $Q Q'$ 上截取 $Q P' = P Q$, 连 $P' P_0$, 则 $P' P_0 subset$ 平面 $P P_0 Q$.

由于 $D B pll P_0 Q\,quad P Q pll A B$,

$therefore quad angle P Q P_0 = angle A B D = 45 degree$,

同理，$angle P' Q P_0 = angle C B D = 45 degree$,

容易看出 $triangle.stroked.t P P_0 Q tilde.equiv triangle.stroked.t P' P_0 Q$. (SAS)

$therefore quad angle P' P_0 Q = angle P P_0 Q = 90 degree$,

$therefore quad P\,P_0\,P'$ 三点共线，$P P_0 = P_0 P'$

$therefore quad P P'$ 被平面 $pi$ 垂直平分。

$therefore quad P' = R_pi\(P\)$.

因此，平面 $pi$ 是正方体 $A B C D - A' B' C' D'$ 的对称面。

]
#heading(level: 2, numbering: none, supplement: [toc-sub])[习题1.7]

+ 在平面 $pi$ 的同侧有 $A\,B$ 两点，在 $pi$ 上求一点 $P$, 使 $A P + B P$ 达到极小．

+ 在平面 $pi$ 外有两点 $A\,B$, 且直线 $A B parallel.not pi$, 在 $pi$ 上求一点 $P$, 使 $\|A P - B P\|$ 达到极大．

+ 试问一个正方体有几个对称面？一个长方体有几个对称面？

+ 证明：任何过球心的平面都是球的对称面．

== 章末提示
本章主要内容是研究了空间直线和平面的关系，这包括直线与直线，直线与平面，平面与平面之间的相互关系，在概括本章内容时，请注意以下几点：

=== 要抓住平行、垂直、夹角和距离的概念
这些概念都可看成是由平面几何推广而来的．

+ 平行：在平面几何中只有两条直线互相平行的概念，但在立体几何中已把这种概念推广到直线与平面的平行和平面与平面的平行，要注意它们的区别和联系．

+ 夹角：在平面几何中只有平面上两条直线交角的概念，但在空间却推广到了异面直线的夹角，以及直线与平面的夹角和二面角．然而这些推广了的概念，却都依赖于平面上的角．

+ 垂直：在平面几何中只定义了同一平面内的两条直线互相垂直．但在空间，却推广到了两条异面直线的垂直，直线与平面的垂直，以及平面和平面的垂直．垂直的概念虽然作了种种推广，但其基础却仍是同一平面上两条直线的垂直．

+ 距离：在平面几何中已经有了两点间距离，点到直线的距离以及两条平行线间的距离，到了空间，距离的概念就更复杂了，不仅有了异面直线的距离，还有点到平面的距离，以及两个平行平面间的距离．距离的概念虽然逐步推广，但最原始的依据仍是“两点间距离”．

=== 要抓住几个最主要的定理
#blk[定理1（关于平行的定理）][
+ 如果两个平行平面同时和第三个平面相交，那么它们的交线平行．

+ 如果一条直线平行于平面内的一条直线，那么这条直线和这个平面平行．

+ 如果相交的两条直线都平行于一个平面，那么这两条相交直线所确定的平面也平行于这个平面．

+ 过平面外一点唯一存在一个平面和已知平面平行．

+ 平行于同一平面的两个平面平行．

+ 平行于同一直线的两条直线互相平行．

]
#blk[定理2（关于垂直的定理）][
在空间 $V$ 中和相异两点 $P$⁠、$P'$ 距离相等的点的集合是一个平面 $pi$, 它和 $P P'$ 相交于 $P P'$ 的中点 $M$, 而且 $P P'$ 和 $pi$ 上的任何一条直线都垂直．

]
#blk[推论1][
设 $ell inter pi = M$, $ell_1$⁠、$ell_2$ 是 $pi$ 中两条相交直线，则 $ell tack.t pi$ 的充要条件是 $ell tack.t ell_1$ 且 $ell tack.t ell_2$.

]
#blk[推论2][
设 $ell_1 tack.t pi$, 则 $ell_2 tack.t pi$ 的充要条件是 $ell_1 pll ell_2$.

]
#blk[推论3][
设 $ell tack.t pi_1$, 则 $ell tack.t pi_2$ 的充要条件是 $pi_1 pll pi_2$.

]
#blk[推论4][
$pi tack.t pi'$ 的充要条件是 $pi'$ 含有 $pi$ 的一条垂线．

]
#blk[推论5（三垂线定理）][
设 $P M tack.t pi$ 于 $M$, $M Q$, $ell subset pi$, $ell tack.t M Q$, 则 $P Q tack.t ell$.

]
#blk[推论6（三垂线定理的逆定理）][
设 $P M tack.t pi$ 于 $M$, $M Q$, $ell subset pi$, $ell tack.t P Q$, 则 $ell tack.t M Q$.

]
#blk[定义][
空间 $V$ 对给定平面 $pi$ 的对称是一个具有下列性质的映射 $R_pi : thick V arrow.r V$\; 对于任何点 $P in V$, 它的像是 $R_pi\(P\)= P'$, 线段 $P P'$ 被平面 $pi$ 垂直平分．

]
#blk[定理3][
上述定义的映射 $R_pi$ 是一个保距映射，即对 $V$ 中任给两点 $P\,Q$, 总有 $d\(R_pi\(P\)\,R_pi\(Q\)\)= d\(P\,Q\)$.

]
=== 要注意立体几何解题思考方法的特点
解立体几何题主要思考方法是和平面几何取得联系，从而利用平面几何的知识解决立体几何的问题．有的问题可归为一平面上的问题来解决，如定理：经平面外一点唯一存在一个平面和已知平面平行的证明中，就把直线 $a\,b\,m$ 集中到一个平面 $pi'$ 上，从而用平面几何的知识加以解决．有的问题则需要一个以上的辅助平面，如图1.61之例#ref-num(label("ex:1-fig61"));, 就利用了两个相交的辅助平面来解决的．作辅助平面的方法取决于平面的确定条件：

+ 经过不共线三点确定一个平面．

+ 一条直线和直线外一点确定一个平面．

+ 两条相交直线确定一个平面．

+ 两条平行直线确定一个平面．

此外还可利用：

#block[
#set enum(numbering: enum-at(1, none, start: 5))
+ 过平面外一点作已知平面的平行平面．

+ 过平面上一条直线作已知平面的相交平面等．
]

在论证和解决立体几何的问题中如果是平行、相交问题，利用集合运算方法有时也比较方便，但要注意正确运用集合运算的算律，有时还需要引入辅助集合，如平行线传递性定理的证明，就利用了辅助集合 $pi_1$.

另外在论证问题过程，如果直接证法不易解决就利用间接证法，如反证法和同一法等，如图1.34的例#ref-num(label("ex:1-fig34"));, 就是利用同一法使直线 $c = a' = b'$ 解决的．而在平行平面的传递性中又用反证法．反证法和同一法常常是解数学问题的有利工具．

=== 要注意正确理解空间元素的关系和基本概念会正确地画出立体图形
要正确地掌握画一个立体的投影图及直观图的方法，并在画图中灵活运用．在画直线及平面关系的图形时，常常把直线与直线的关系，直线与平面的关系，通过平面与平面的关系画出来．例如，“两条异面直线间的距离是2m, 它们所成的角是 $60 degree$, 在这两条异面直线上各有一点，距它们所在直线的公垂线的垂足都是10m, 求这两点间距离．”在解这个题画图时，可有不同画法，有的比较直观，有立体感，有的则没有立体感．见图1.79的 (1)、(2)、(3)，图 (1) 显然没有立体感；图 (2) 由于有平面 $pi_1$, 立体感较强了，但如何利用条件求解启发性不强，图 (3) 由于有了两个平面 $pi_1$ 和 $pi_2$, 并使 $pi_1$ 和 $pi_2$ 交线上两点 $P$⁠、$Q$ 间的距离为异面直线 $ell_1$ 和 $ell_2$ 的距离，这样 $ell_1$ 和 $ell_2$ 的夹角恰是二面角 $pi_1 - P Q - pi_2$ 的平面角，这样不仅图形直观而且方便利用条件求解．

#figure([#fig("1-106");

  ],
  caption: [
  ]
)

#heading(level: 2, numbering: none, outlined: true)[复习题一]

+ 下面各命题是否正确？正确的给以证明，错误的举出反例：

  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + 两条直线不平行则相交．

  + 两个平面有三个公共点，则这两个平面重合．

  + 直线 $a pll$ 直线 $b$, $b subset$ 平面 $M$, 则 $a pll M$.

  + 直线 $a pll$ 平面 $M$, 则 $a$ 平行于平面 $M$ 内的任意直线．

  + 平面 $M pll$ 平面 $N$, 若直线 $a subset M$, 则 $a pll N$.

  + 平面 $M pll$ 平面 $N$, 若直线 $a subset M$ 且直线 $b subset N$, 则 $a pll b$.

  + 平行于同一直线的两条直线平行．

  + 垂直于同一直线的两条直线平行．

  + 垂直于同一平面的两条直线平行．

  + 垂直于同一平面的两个平面平行．

  + 垂直于同一直线的两个平面平行．

  + 平行于同一平面的两条直线平行．

  + 平行于同一平面的两个平面平行．

  + 直线 $a tack.t$ 直线 $b$, 直线 $b tack.t$ 直线 $c$, 则 $a tack.t c$.

  + 直线 $a pll$ 直线 $b$, 直线 $c tack.t$ 直线 $a$, 则 $b tack.t c$.

  + 直线 $a pll$ 平面 $M$, 直线 $b tack.t$ 直线 $a$, 则 $b tack.t M$.

  + 直线 $a pll$ 平面 $Q$, 直线 $b pll$ 平面 $Q$, 若 $a\,b subset M$, 则 $M pll Q$.

  + 平面 $Q inter$ 平面 $N = a$, 直线 $b subset Q$, $b tack.t a$, 则 $b subset N$.

  + 过 $A$ 点垂直于直线 $a$ 的直线必在过 $A$ 点垂直于 $a$ 的平面内．

  + 过点 $A$ 平行于平面 $a$ 的直线必在过点 $A$ 平行平面 $a$ 的平面内．

  + 平面 $pi_1 tack.t$ 平面 $pi_2$, $pi_1 inter pi_2 = a$, 直线 $b tack.t a$, 则 $b subset pi_1$.

  + 两个角的边分别平行，则这两个角相等．

  + 直线 $a tack.t$ 直线 $b$, 直线 $a tack.t$ 直线 $c$, 若 $b\,c subset$ 平面 $pi$, 则 $a tack.t pi$.

  + 过平面的一条斜线的斜线足，并且与这斜线的射影垂直的直线，则它垂直于这斜线．

  + 两条直线确定一个平面．

  + 如果四个点不共面，那么它们中的任何三点都不共线．

  + 两条平行直线在同一平面上的射影互相平行．

  + 如果直线 $a pll$ 直线 $b$, 直线 $b$ 和直线 $c$ 是异面直线，那么 $a$ 和 $c$ 是异面直线．
  ]

+ 求证：两两相交但不过同一点的四条直线在同一平面内．

+ 三平面两两相交出三条直线，求证：这三条直线交于一点或互相平行．

+ 证明：分别过两异面直线中的一条直线，而与另一条平行的两个平面互相平行．

+ 夹在两个平行平面间的两条线段 $A B$⁠、$C D$ 交于 $P$, 已知：$A P = 18.9$⁠cm, $B P = 29.4$⁠cm, $C D = 57.5$⁠cm, 求 $C P$ 和 $D P$ 的长．

+ 直角三角形 $A B C$ 所在的平面 $pi$ 外一点 $P$ 到直角顶 $C$ 的距离为24cm, 到两直角边距离都是 $6 sqrt(10)$⁠cm, 求 $P$ 点到平面 $pi$ 的距离．

+ 在直二面角的棱上有两点 $A\,B$, $A C$, $B D$ 各在这个二面角的一个面内，并且都垂直于棱，设 $A B = 8$⁠cm, $A C = 6$⁠cm, $B D = 24$⁠cm, 求 $C D$ 的长．

+ 已知：共点的三条线段 $O A$, $O B$, $O C$ 两两互相垂直，且 $O A = a$, $O B = b$, $O C = c$, 求 $O$ 点到平面 $A B C$ 的距离．

+ 一条长 $2 a$ 的线段夹在互相垂直的两个平面之间，它和两个平面所成的角都是 $30 degree$, 求这条线段与这两个平面的交线所成的角．

+ 已知：$A B$ 和平面 $pi$ 所成的角是 $theta_1$, $A C$ 在 $pi$ 内，$A C$ 和 $A B$ 在 $pi$ 内的射影 $A B'$ 成角 $theta_2$, 设 $angle B A C = theta$, 求证：$cos theta = cos theta_1 dot.op cos theta_2$.

+ 二面角 $pi_1 - ell - pi_2$ 是 $theta_1$, $A in ell$, $A C subset pi_1$, 且 $A C$ 与 $ell$ 的交角为 $theta_2$, 设 $A C$ 与 $pi_2$ 所成的角为 $theta$.

  求证：$sin theta = sin theta_1 dot.op sin theta_2$.

  （分 $0 < theta_1 < pi / 2\,thick theta_1 = pi / 2\,thick pi / 2 < theta_1 < pi$ 画图证明）

+ 已知：一个直角三角形的两直角边为 $a\,b$, 把这个三角形沿斜边上的高折成直二面角，求两直角边夹角的余弦．

+ 把长和宽各为4和3的长方形 $A B C D$ 沿对角线 $A C$ 折成直二面角，求顶点 $B$ 和 $D$ 的距离．

+ 在 $120 degree$ 的二面角内有一点，它与两个面的距离分别为2和3, 求这个点到这个二面角棱的距离．

  #fig-center[
  #fig("1-107");

  #subcap[
  第10题

  ]
  ]

+ 图为正方体

  + 求作：平面 $A' B D$ 和平面 $D A B'$ 的交线．

  + 求证：平面 $A' B D tack.t$ 平面 $D A B'$.

  + 求证：$A C' tack.t$ 平面 $A' B D$.

  + 求证：平面 $A' B D$ 与平面 $C D' B'$ 平行．

  + 求证：$A C'$ 与平面 $A' B D$⁠、平面 $C B' D'$ 的交点是 $A C'$ 的三等分点．

  + 求证：$A' B$ 与 $A C'$ 是异面直线．

  + 求 $A' B$ 与 $A C'$ 所成的角及它们之间的距离．

  #align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, [#fig("1-108");
  
  #subcap[
  第15题
  
  ]], [#fig("1-109");
  
  #subcap[
  第18题
  
  ]])));

+ 如果直线 $a$ 和直线 $b$ 不平行，平面 $pi_1 tack.t a$, 平面 $pi_2 tack.t b$, 求证：$pi_1$ 和 $pi_2$ 必相交，且交线垂直于直线 $a\,b$.

+ 设 $P$ 为 $triangle.stroked.t A B C$ 所在平面 $pi$ 外一点，

  + 如果 $P$ 点到 $triangle.stroked.t A B C$ 各顶点距离相等，$O$ 是 $triangle.stroked.t A B C$ 的外心，求证：$O P tack.t pi$.

  + 如果 $P$ 点到 $triangle.stroked.t A B C$ 各边的距离相等，$H$ 是 $triangle.stroked.t A B C$ 的内心，求证：$P H tack.t pi$.

+ 如图，已知：$A B tack.t C D$, $A C tack.t B D$. 求证：$A D tack.t B C$.

+ 平面 $pi$ 过 $triangle.stroked.t A B C$ 的重心 $G$, 求证：在平面 $pi$ 的同侧的两个顶点到平面 $pi$ 的距离的和等于另一个顶点到平面 $pi$ 的距离．

+ 已知线段 $A B$ 在平面 $pi$ 内，线段 $A C tack.t pi$, 线段 $B D tack.t A B$ 且 $B D$ 与 $pi$ 所成的角为 $30 degree$, 若 $A B = a$, $A C = B D = b$, 求：$C$ 和 $D$ 间的距离．

+ 直角三角形 $A B C$ 的斜边 $A B$ 在平面 $alpha$ 内，两条直角边与 $alpha$ 的夹角分别是 $theta_1$ 和 $theta_2$, $triangle.stroked.t A B C$ 所在平面与 $alpha$ 所成的二面角是 $theta$, 求证：$sin^2 theta = sin^2 theta_1 + sin^2 theta_2$.

+ 平行四边形 $A B C D$ 和它的对角线的交点 $O$, 在平面 $pi$ 内的射影是 $A' B' C' D'$ 及 $O'$, 求证：$ O O' = 1 / 2\(A A' + C C'\)= 1 / 2\(B B' + D D'\) $

+ 如果两个平面分别垂直于两条异面直线中的一条，求证：这两个平面的交线就平行于这两条异面直线的公垂线．

+ 已知：二面角 $alpha - A B - beta$ 是直二面角，$P in A B$, $P X subset beta$, $P Y subset alpha$, 并且 $angle X P B = angle Y P B = 45 degree$. 求：$angle X P Y$ 的大小．

  #fig-center[
  #fig("1-110");

  #subcap[
  第24题

  ]
  ]
