// 由 typst/tools/tex2typ.py 从 math5/3.tex 转换而来，已人工校对的部分以本文件为准。
#import "../common/template.typ": *
#import "figs.typ": fig
#import "defs.typ": *

= 向量与向量运算
在常用的数量问题中，我们用数去表达各种量，如重量、长度、面积、体积、密度等等；用加、减、乘、除运算的组合去表达各种量之间的关系（通称代数通性）．在代数中，我们已掌握了数系的基本性质（即交换律、结合律和分配律）．并熟知了代数学的基本精神在于有效地运用数系通性，对于各种类型的代数问题谋求通解（即以通性求通解）．现在我们要着手把几何学的讨论也推进到定量的层面，设法把空间结构有系统地代数化，数量化，这也就是本章所要详加讨论的课题------#strong[向量与向量运算]．为了便于同学们逐步地理解向量这个基本概念，本章的前三节先对平面向量详加分析，然后再在第四节讨论空间向量．

== 平面位移向量及其加法运算
=== 位移向量
如图3.1所示，我们在 $overline(A B)$ 的端点 $B$ 处画上一个箭头表示线段 $overline(A B)$ 具有射线 $A B$ 的方向，这种用箭头指明方向的线段叫做#strong[有向线段]，记作 $accent(A B, ⃗)$⁠，读作有向线段 $A B$⁠，并称 $A$ 为 $accent(A B, ⃗)$ 的#strong[始点]，$B$ 为 $accent(A B, ⃗)$ 的#strong[终点]．$overline(A B)$ 的长叫做 $accent(A B, ⃗)$ 的长，并记作 $\|accent(A B, ⃗)\|$⁠．

如果 $accent(A B, ⃗)$ 和 $accent(C D, ⃗)$ 同向且等长，那么我们称 $accent(A B, ⃗)$ 和 $accent(C D, ⃗)$ #strong[相等]，记作 $accent(A B, ⃗) = accent(C D, ⃗)$（图3.2）．

#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("3-01");], caption: []), figure([#fig("3-02");], caption: []))));

已知方向 $O N$\(图3.3), 如果平面上的每一点都沿射线 $O N$ 的方向移动相同的距离，那么我们称这种平面上全体点的移动叫做平面上全体点的一个#strong[平移]．

#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("3-03");], caption: []), figure([#fig("3-04");], caption: []))));

平面上全体点的一个平移通常用字母 $T$ 来表示，不同的平移可分别用 $T_1\,T_2\,dots.h$ 来表示．如果 $P$ 点通过平移 $T$ 移动到 $P_1$ 点，则 $P_1$ 点叫做 $P$ 点的#strong[象点]，记作 $P_1 = T\(P\)$, 这时有向线段 $accent(P P_1, ⃗)$ 可写作 $accent(P T\(P\), ⃗)$⁠．

为了给出一个平移，根据定义，只需给出平面上任一点和它的象点即可．设 $P_1 = T\(P\)$, 则 $P$⁠、$P_1$ 这两点就完全确定了平移 $T$ 的方向和距离；对平面上任一点 $A$, 我们都可作 $accent(A A_1, ⃗) = accent(P P_1, ⃗)$, 这样 $A$ 的象点 $A_1$ 也就被 $accent(P P_1, ⃗)$ 所唯一确定，这也就是说，给定了一个平移 $T$, 如果 $P_1 = T\(P\)$, 那么这个平移 $T$ 完全被 $accent(P T\(P\), ⃗)$ 所唯一确定，通常我们就用 $accent(P T\(P\), ⃗)$ 或 $accent(P P_1, ⃗)$ 表示这个平移．

显然，平面上全体点的一个移动是一个平移的充要条件是：对平面上任意两点 $P_1$⁠、$P_2$⁠，都有 $ accent(P_1 T\(P_1\), ⃗) = accent(P_2 T\(P_2\), ⃗) $

从以上讨论知，一个平移 $T$ 只有两个要素：#strong[方向和距离]，因此平面上的一个平移 $T$, 可用那些同向且等长的任一条有向线段来表示．

几次连续平移的结果，叫做平移的#strong[合成]．设 $T_1$⁠、$T_2$ 是两次连续平移，这两次连续平移的合成通常记作 $T_2 compose T_1$（第一次平移写在右边），类似地 $T_3 compose T_2 compose T_1$, 表示 $T_1$⁠、$T_2$⁠、$T_3$ 三次连续平移的合成．

#blk[定理][
平移的合成还是一个平移且平移的合成满足交换律．

]
#proof[
设 $T_1$⁠、$T_2$ 是两个平移，我们要证明的是 (i), $T_2 compose T_1$ 也是一个平移，(ii) $T_2 compose T_1 = T_1 compose T_2$.

\(i) 设 $P$⁠、$Q$ 是平面上任意两点（图3.5），$P_1 = T_1\(P\)$⁠、$P_2 = T_2\(P_1\)$⁠、$Q_1 = T_1\(Q\)$⁠、$Q_2 = T_2\(Q_1\)$, 则 $P_2 = T_2\(T_1\(P\)\)$, $Q_2 = T_2\(T_1\(Q\)\)$

#figure([#fig("3-05");

  ],
  caption: [
  ]
)

我们要证明 $T_2 compose T_1$ 是一个平移也就是要证明 $overline(P P_2)$ 与 $overline(Q Q_2)$ 平行且等长．即 $ accent(P P_2, ⃗) = accent(Q Q_2, ⃗) $ #noindent;由于 $T_1$⁠、$T_2$ 都是平移，则 $ accent(P P_1, ⃗) = accent(Q Q_1, ⃗)\,#h(2em) accent(P_1 P_2, ⃗) = accent(Q_1 Q_2, ⃗) $ #noindent;连 $P$⁠、$P_2$, $Q$⁠、$Q_2$ 由平行四边形基本定理（即#strong[一个四边形的一组对边平行且等长，则另一组对边也平行且等长]），容易证明：$ accent(P P_2, ⃗) = accent(Q Q_2, ⃗) $ #noindent;这就证明了 $T_2 compose T_1$ 也是一个平移．

\(ii) 设点 $P$ 是平面上任一点，$P_1 = T_1\(P\)$, $P_2 = T_2\(P_1\)$, 则 $P_2 = T_2\(T_1\(P\)\)$, 这就是说 $T_2 compose T_1$ 把 $P$ 点移动到 $P_2$ 点．

设 $Q = T_2\(P\)$, 由平移定义可知 $ accent(P_1 P_2, ⃗) = accent(P Q, ⃗) $ #noindent;又由上述平行四边形基本定理可证 $ accent(P P_1, ⃗) = accent(Q P_2, ⃗) $ #noindent;这就是说 $ P_2 = T_1\(Q\)= T_1\(T_2\(P\)\) $ #noindent;所以 $ T_2 compose T_1 = T_1 compose T_2 $

]
#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("3-06");], caption: []), figure([#fig("3-07");], caption: []))));

#example[
已知 $T_1$ 表示平移“向东5公里”，$T_2$ 表示平移“向北5公里”，求 $T_1 compose T_2$, $T_2 compose T_1$.

]
#solution[
$T_1 compose T_2 = T_2 compose T_1$ 都表示平移：“向东北 $5 sqrt(2)$ 公里”（图3.7）

]
#example[
已知：$T_1 :$“向东5公里”，$T_2 :$“向西10公里”，求 $T_1 compose T_2$ 和 $T_2 compose T_1$.

]
#solution[
$T_1 compose T_2 = T_2 compose T_1$ 都表示平移：“向西5公里”（图3.8）．

]
#example[
已知 $T_1 :$“向东3公里”，$T_2 :$“向西3公里”，求 $T_1 compose T_2$, $T_2 compose T_1$⁠．

]
#solution[
$T_1 compose T_2 = T_2 compose T_1$ 都表示“原地不动”（图3.9）．这种原地不动的“移动”，可看作平移的特例，叫做#strong[零平移]，零平移记作 $arrow(0)$.

]
#blk[定义][
平面上全体点的一个平移，叫做平面上的一个位移向量，简称向量．

]
#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("3-08");], caption: []), figure([#fig("3-09");], caption: []))));

如果我们用 $accent(A B, ⃗)$, $accent(C D, ⃗)$ 表示平面上点的平移，我们就说向量 $accent(A B, ⃗)\,accent(C D, ⃗)\,dots.h$⁠．铅印时经常用粗体字 $upright(bold(a))$⁠、$upright(bold(b))$⁠、$upright(bold(c))$ 等表示一个向量．向量 $upright(bold(a))$⁠、$upright(bold(b))$⁠、$upright(bold(c))$ 在手写时常写作 $arrow(a)$⁠、$arrow(b)$⁠、$arrow(c)$⁠．

如果向量 $arrow(a)$, 把 $A$ 点移动到 $B$ 点，$C$ 点移动到 $D$ 点，$E$ 点移动到 $F$ 点（图3.10），则 $ arrow(a) = accent(A B, ⃗) = accent(C D, ⃗) = accent(E F, ⃗) = dots.h.c $ #noindent;这些同向且等长的有向线段都表示同一个向量，也就是说它们中的任一个都可用来表示向量 $arrow(a)$⁠．

#figure([#fig("3-10");

  ],
  caption: [
  ]
)

若 $arrow(a) = accent(A B, ⃗)$, 则 $accent(A B, ⃗)$ 的长叫做 $arrow(a)$ 的长度，记作 $\|accent(A B, ⃗)\|$ 或 $\|arrow(a)\|$. 射线 $accent(A B, ⃗)$ 的方向叫做向量 $arrow(a)$ 的方向．零平移又叫做#strong[零向量]，它的方向不确定．

如果 $accent(A B, ⃗)$ 与 $accent(C D, ⃗)$ 的方向相同，那么 $accent(A B, ⃗)$, $accent(C D, ⃗)$ 叫做#strong[同向向量]，如果 $accent(A_1 B_1, ⃗)$⁠、$accent(C_1 D_1, ⃗)$ 的方向相反，那么 $accent(A_1 B_1, ⃗)$⁠、$accent(C_1 D_1, ⃗)$ 叫做#strong[反向向量]（图3.11）．方向相同或相反的向量，叫做#strong[平行向量]．

#figure([#fig("3-11");

  ],
  caption: [
  ]
)

长度为1个单位的向量叫做#strong[单位向量]，通常我们用单位向量表示平面上的一个方向．

以后我们用到记号 $accent(A B, ⃗)$ 或 $arrow(a)$, 它们表示的是一个有向线段还是一个向量，一般我们都不另加说明，读者可根据实际问题加以区分．

#exercise[
+ 用有向线段表示以下平移：

  + $T_1$: 向东5cm；

  + $T_2$: 向南偏西 $30 degree$, 3cm;

  + $T_3$: 向北偏西 $60 degree$, 50km.

+ 用有向线段表示以下两个平移的合成：

  + $T_1$: 向西5里，$T_2$: 向南3里．

  + $T_1$: 向北4里，$T_2$: 向西8里．

]
=== 向量的加法与减法
向量 $arrow(a)$ 与 $arrow(b)$ 的合成就叫做 $arrow(a)$ 与 $arrow(b)$ 的和，记作 $arrow(a) + arrow(b)$, 即 $ arrow(a) + arrow(b) = arrow(b) compose arrow(a) $

由上节定理可知，$arrow(a)$ 与 $arrow(b)$ 的和 $arrow(a) + arrow(b)$ 也是一个向量．由于每个向量可由一点和它的象点所唯一确定，所以可按下面方法作 $arrow(a) + arrow(b)$.

在平面上，任取一点 $A$ (图3.12), 作 $accent(A B, ⃗) = arrow(a)$, $accent(B C, ⃗) = arrow(b)$, 即 $arrow(a)$ 与 $arrow(b)$ 的合成把 $A$ 点移动到 $C$ 点，因而 $ accent(A C, ⃗) = arrow(a) + arrow(b) $

#figure([#fig("3-12");

  ],
  caption: [
  ]
)

以上求和作图法叫做#strong[三角形求和法则]．

由于平移的合成满足交换律，所以向量加法也满足交换律，即 $ arrow(a) + arrow(b) = arrow(b) + arrow(a) $

读者不难从图3.13去验证，向量加法还满足结合律，即 $ \(arrow(a) + arrow(b)\)+ arrow(c) = arrow(a) +\(arrow(b) + arrow(c)\) $

#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("3-13");], caption: []), figure([#fig("3-14");], caption: []))));

容易看出，$arrow(a) + arrow(0) = arrow(0) + arrow(a) = arrow(a)$.

如果向量 $arrow(a)$ 与 $arrow(x)$ 反向且等长，那么由求和作图法可知（图3.14）$ arrow(a) + arrow(x) = arrow(0) $

如果用 $- arrow(a)$ 表示 $arrow(x)$, 那么 $- arrow(a)$ 叫做 $arrow(a)$ 的#strong[逆向量]或#strong[负向量]，于是 $ arrow(a) +\(- arrow(a)\)= arrow(0) $

#blk[定义][
已知向量 $arrow(a)$, $arrow(b)$, 我们定义，它们的差 $ arrow(a) - arrow(b) = arrow(a) +\(- arrow(b)\) $ #noindent;如图3.15所示．

]
#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("3-15");], caption: []), figure([#fig("3-16");], caption: []))));

#example[
已知：$pgram A B C D$, $accent(A B, ⃗) = arrow(a)$⁠，$accent(A D, ⃗) = arrow(b)$（图3.16）.

求证：$accent(A C, ⃗) = arrow(a) + arrow(b)\,#h(2em) accent(D B, ⃗) = arrow(a) - arrow(b)$

]
#proof[
因为 $accent(A C, ⃗) = accent(A B, ⃗) + accent(B C, ⃗)\,thick accent(B C, ⃗) = accent(A D, ⃗)$⁠，所以 $ accent(A C, ⃗) = accent(A B, ⃗) + accent(A D, ⃗) = arrow(a) + arrow(b) $ #noindent;又因为 $accent(D B, ⃗) = accent(D C, ⃗) + accent(C B, ⃗)\,quad accent(D C, ⃗) = arrow(a)\,quad accent(C B, ⃗) = - arrow(b)$

所以 $accent(D B, ⃗) = arrow(a) - arrow(b)$

]
由例3.4可知，位于一个平行四边形的一条“对角线向量”等于相邻两个“边向量”之和，而另一条“对角线向量”等于相邻两个“边向量”之差，由此，我们还可得到求两个向量和与差的方法如下：

#blk[求和的平行四边形法则][
已知 $arrow(a)$⁠、$arrow(b)$, 任取一点 $A$, 作 $accent(A B, ⃗) = arrow(a)$, $accent(A D, ⃗) = arrow(b)$, 再以 $accent(A B, ⃗)$⁠、$accent(A D, ⃗)$ 为边作 $pgram A B C D$, 则对角线上的向量 $accent(A C, ⃗)$ 就是 $arrow(a)$ 与 $arrow(b)$ 之和，即 $ arrow(a) + arrow(b) = accent(A B, ⃗) + accent(A D, ⃗) = accent(A C, ⃗) $

]
#blk[求 $arrow(a) - arrow(b)$ 的三角形法则][
已知 $arrow(a)$⁠、$arrow(b)$, 在平面上任取一点 $A$, 作 $accent(A B, ⃗) = arrow(a)$, $accent(A D, ⃗) = arrow(b)$, #strong[以减量 ]$arrow(b)$#strong[ 的终点（]$D$#strong[⁠）为始点，被减量 ]$arrow(a)$#strong[ 的终点（]$B$#strong[⁠）为终点的向量 ]$accent(D B, ⃗)$#strong[ 就是 ]$arrow(a) - arrow(b)$, 即 $ arrow(a) - arrow(b) = accent(A B, ⃗) - accent(A D, ⃗) = accent(D B, ⃗) $

]
对于多个向量 $arrow(a)_1\,arrow(a)_2\,dots.h\,arrow(a)_n$ 的求和法则，可由三角形求和法则推广如下：

已知 $arrow(a)_1\,arrow(a)_2\,dots.h\,arrow(a)_n$⁠，在平面上任取一点 $O$, 作 $accent(O A_1, ⃗) = arrow(a)_1$, 然后在 $A_1$ 上引 $accent(A_1 A_2, ⃗) = arrow(a)_2$, 再在 $A_2$ 上引 $accent(A_2 A_3, ⃗) = arrow(a)_3$, 如此下去，我们由这 $n$ 条向量构成一条折线，由两个向量的求和法则，我们可推知，以第一条有向线段的始点为始点，最后一条有向线段的终点为终点的有向线段所表示的向量就是这 $n$ 个向量之和，在图3.17中，$ arrow(a)_1 + arrow(a)_2 + arrow(a)_3 + arrow(a)_4 = accent(O A_1, ⃗) + accent(A_1 A_2, ⃗) + accent(A_2 A_3, ⃗) + accent(A_3 A_4, ⃗) = accent(O A_4, ⃗) $

#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("3-17");], caption: []), figure([#fig("3-18");], caption: []))));

#example[
已知：$arrow(a) =$“向东10km”，$arrow(b) =$“向西5km”，$arrow(c) =$“向北10km”，$arrow(d) =$“向南20km”，求：$arrow(a) + arrow(a)$, $arrow(a) + arrow(b)$, $arrow(a) + arrow(c)$, $arrow(c) + arrow(d)$.

]
#solution[
如图3.18所示，作 $accent(O A, ⃗) = arrow(a)$, $accent(O B, ⃗) = arrow(b)$, $accent(O C, ⃗) = arrow(c)$, $accent(O D, ⃗) = arrow(d)$⁠，则：$ accent(O E, ⃗) & = arrow(a) + arrow(a) = upright("“向东20km”")\
accent(O F, ⃗) & = arrow(a) + arrow(b) = upright("“向东5km”")\
accent(O G, ⃗) & = arrow(a) + arrow(c) = upright("“向东北") 10 sqrt(2) upright("km”")\
accent(O H, ⃗) & = arrow(c) + arrow(d) = upright("“向南10km”") $

]
由例3.5, 我们可以看出，两个方向相同的向量相加时，它们的和向量的方向与已知两个向量的方向相同，其长度等于它们的长度之和，两个方向相反的向量相加时，它们的和向量的方向与长度较长的那个向量方向相同，其长度等于两个向量长度差的绝对值．

#heading(level: 4, numbering: none, outlined: false)[练习]
+ 作出下列各组向量的和：

  #fig-center[
  #fig("3-19");

  ]

+ 求 $arrow(a) - arrow(b)$

  #align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, [#fig("3-20");
  
  #subcap[
  \(1)
  
  ]], [#fig("3-21");
  
  #subcap[
  \(2)
  
  ]])));

  #align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, [#fig("3-22");
  
  #subcap[
  \(3)
  
  ]], [#fig("3-23");
  
  #subcap[
  \(4)
  
  ]])));

+ 任给两个向量 $arrow(a)$⁠、$arrow(b)$⁠，用平行四边形法则求 $arrow(a) + arrow(b)$.

+ 已知 $triangle.stroked.t A B C$, 求证：$accent(A B, ⃗) + accent(B C, ⃗) + accent(C A, ⃗) = arrow(0)$.

+ 如果三个向量 $arrow(a)$⁠、$arrow(b)$⁠、$arrow(c)$, 满足 $arrow(a) + arrow(b) + arrow(c) = arrow(0)$, 问表示这三个向量的有向线段能否构成三角形．

=== $n$ 个 $arrow(a)$ 连加之和
#blk[定义][
如果 $n$ 是正整数，定义 $ underbrace(arrow(a) + arrow(a) + arrow(a) + dots.h.c + arrow(a), n upright("个")) = n arrow(a) $

]
例如，$arrow(a) + arrow(a) + arrow(a) + arrow(a) = 4 arrow(a)$.

#example[
如 $n\,m$ 为正整数，试证：

+ $n (m arrow(a)) =\(m n\)arrow(a)$

+ $n (arrow(a) + arrow(b)) = n arrow(a) + n arrow(b)$（分配律）

]
#proof[
+ #h(0pt)
  $ n (m arrow(a)) & = overbrace(m arrow(a) + m arrow(a) + dots.h.c + m arrow(a), n upright("个"))\
   & = underbrace(underbrace(arrow(a) + arrow(a) + dots.h.c + arrow(a), m upright("个")) + underbrace(arrow(a) + arrow(a) + dots.h.c + arrow(a), m upright("个")) + dots.h.c + underbrace(arrow(a) + arrow(a) + dots.h.c + arrow(a), m upright("个")), n upright("个"))\
   & =\(n m\)arrow(a) $

+ #h(0pt)
  $ n (arrow(a) + arrow(b)) & = overbrace((arrow(a) + arrow(b)) + (arrow(a) + arrow(b)) + dots.h.c + (arrow(a) + arrow(b)), n upright("个"))\
   & = underbrace(arrow(a) + arrow(a) + dots.h.c + arrow(a), n upright("个")) + underbrace(arrow(b) + arrow(b) + dots.h.c + arrow(b), n upright("个"))\
   & = n arrow(a) + n arrow(b) $

]
下面让我们来分析一下 $n (arrow(a) + arrow(b)) = n arrow(a) + n arrow(b)$ 的几何意义：取 $accent(A B, ⃗) = arrow(a)$, $accent(B C, ⃗) = arrow(b)$ (图3.19), 则 $arrow(a) + arrow(b) = accent(A C, ⃗)$, 再取 $accent(A B', ⃗) = n arrow(a)$, 过 $B'$ 点作 $B C$ 的平行线，取 $accent(B' C', ⃗)$ 和 $accent(B C, ⃗)$ 同向且其长是 $\|accent(B C, ⃗)\|$ 的 $n$ 倍，即 $accent(B' C', ⃗) = n arrow(b)$, 由上述分配律有：$ accent(A C', ⃗) = accent(A B', ⃗) + accent(B' C', ⃗) = n arrow(a) + n arrow(b) = n (arrow(a) + arrow(b)) = n accent(A C, ⃗) $ #noindent;由此可知，$A$⁠、$C$⁠、$C'$ 三点共线并且 $accent(A C', ⃗)$ 的长度是 $accent(A C, ⃗)$ 长度的 $n$ 倍．这就证明了相似三角形基本定理（即#strong[两个三角形中，如果有三个角对应相等，那么它们的三边就对应成比例]）．

反之，如果 $triangle.stroked.t A B C tilde.rev triangle.stroked.t A B' C'$ 且 $overline(A B') / overline(A B) = n$⁠，则由相似三角形定理有 $ accent(A B', ⃗) = n accent(A B, ⃗)\,#h(2em) accent(B' C', ⃗) = n accent(B C, ⃗)\,#h(2em) accent(A C', ⃗) = n accent(A C, ⃗) $ $ accent(A C', ⃗) & = n accent(A C, ⃗) = n (accent(A B, ⃗) + accent(B C, ⃗))\
accent(A C', ⃗) & = accent(A B', ⃗) + accent(B' C', ⃗) = n accent(A B, ⃗) + n accent(B C, ⃗) $ #noindent;故得 $ n (accent(A B, ⃗) + accent(B C, ⃗)) = n accent(A B, ⃗) + n accent(B C, ⃗) $ #noindent;这就证明了上述分配律成立．

总结上面的分析，我们可以看到，运算律 $n\(arrow(a) + arrow(b)\)= n arrow(a) + n arrow(b)$ 和相似比为整数的相似三角形定理是同一几何事实的两种表达形式，它们在逻辑上具有等价关系．我们还可以把 $n\(arrow(a) + arrow(b)\)= n arrow(a) + n arrow(b)$ 的代数证明和边长之比为 $n$ 的相似三角形定理的几何证明再加以分析比较．为清楚起见，我们取 $n = 3$ (图3.19).

#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (58%, 38%,), column-gutter: 1em, align: center + bottom, figure([#fig("3-24");], caption: []), figure([#fig("3-25");], caption: []))));

#proof[
#strong[代数证明]

#numbered-align(($3 (arrow(a) + arrow(b))$, $eqph = (arrow(a) + arrow(b)) + (arrow(a) + arrow(b)) + (arrow(a) + arrow(b))$, [(用一次交换律)]), ($$, $eqph = arrow(a) + arrow(a) + arrow(b) + arrow(b) + arrow(a) + arrow(b)$, [(用两次交换律)]), ($$, $eqph = arrow(a) + arrow(a) + arrow(a) + arrow(b) + arrow(b) + arrow(b) = 3 arrow(a) + 3 arrow(b)$, false));

#strong[几何证明：]主要是用平行分割把 $triangle.stroked.t A B' C'$ 分割成 $3^2 = 9$ 个和 $triangle.stroked.t A B C$ 全等的小三角形来证明相似三角形定理（参看第二册第三章§4）．

]
比较上述代数证明和几何证明，可以看出，代数证明不需要作辅助线，比较简单明了．有意思的是几何证明中出现了三个平行四边形，应用了三次平行四边形定理，这正好与代数证明中应用了三次交换律相对应．

设 $accent(A B, ⃗) = arrow(a)$（图3.20），将 $overline(A B)$ 等分为 $n$ 段：$overline(A A_1)\,overline(A_1 A_2)\,overline(A_2 A_3)\,dots.h\,overline(A_(n - 1) B)$⁠，则有 $ accent(A A_1, ⃗) = accent(A_1 A_2, ⃗) = accent(A_2 A_3, ⃗) = dots.h.c = accent(A_(n - 1) B, ⃗) $ #noindent;所以 $ n accent(A A_1, ⃗) = accent(A A_1, ⃗) + accent(A_1 A_2, ⃗) + accent(A_2 A_3, ⃗) + dots.h.c + accent(A_(n - 1) B, ⃗) = accent(A B, ⃗) = arrow(a) $ #noindent;我们把上述 $accent(A A_1, ⃗)$ 定义为 $1 / n arrow(a)$⁠，再者，我们把 $m / n arrow(a)$ 定义为 $1 / n (m arrow(a))$⁠，其性质为 $ n (m / n arrow(a)) = m arrow(a) $

#example[
试证

+ $m / n (p / q arrow(a)) = (m / n p / q) arrow(a)$

+ $n / m (arrow(a) + arrow(b)) = n / m arrow(a) + n / m arrow(b)$

]
#proof[
+ 等式左边乘以 $q n$⁠，由例3.6得 $ q n [m / n (p / q arrow(a))] = q [n m / n (p / q arrow(a))] & = q [m (p / q arrow(a))]\
   & =\(q m\)(p / q arrow(a))\
   & = m [q (p / q arrow(a))]\
   & = (m p arrow(a)) =\(m p\)arrow(a) $ #noindent;再由上述有理数乘向量的定义即可得 $ m / n (p / q arrow(a)) = frac(m p, n q) arrow(a) = (m / n dot.op p / q) arrow(a) $

+ 令 $arrow(a)' = 1 / m arrow(a)$, $arrow(b)' = 1 / m arrow(b)$⁠，则由例3.6可得 $ n / m (arrow(a) + arrow(b)) = n / m (m arrow(a)' + m arrow(b)') & = n / m m (arrow(a)' + arrow(b)')\
   & = n (arrow(a)' + arrow(b)')\
   & = n (1 / m arrow(a) + 1 / m arrow(b)) = n / m arrow(a) + n / m arrow(b) $

]
#exercise[
+ 如何定义 $\(- 1\)arrow(a)$, $\(- 2\)arrow(a)$ 和 $\(- n\)arrow(a)$⁠，才能使得例3.6中的两式对任何正负整数都能成立.

+ 如何定义 $(- 1 / 2) arrow(a)$, $(- 2 / 3) arrow(a)$ 和 $(- m / n) arrow(a)$ 才能使例3.7中的两式对任何正负分数都成立．

+ 比较本节例3.6、例3.7, 及上面练习1、2和初中第一册对于指数法则的逐步推广．

]
#heading(level: 2, numbering: none, supplement: [toc-sub])[习题3.1]

+ 已知 $pgram A B C D$. $accent(A B, ⃗) = arrow(a)$, $accent(A D, ⃗) = arrow(b)$, $\|arrow(a)\|= 3$⁠，$\|arrow(b)\|= 5$, $angle B A D = 120 degree$⁠，求 $arrow(a) + arrow(b)$ 与 $arrow(a) - arrow(b)$ 之长.

+ 已知 $accent(O A, ⃗)$, $accent(O B, ⃗)$ 且 $\|accent(O A, ⃗)\|= 4$⁠cm, $\|accent(O B, ⃗)\|= 5$⁠cm, $angle A O B = 60 degree$, 求 $accent(O A, ⃗) + accent(O B, ⃗)$.

+ 在第2题中，让 $accent(O A, ⃗)$, $accent(O B, ⃗)$ 的长不变，只有 $angle A O B$ 在变化，求 $accent(O A, ⃗) + accent(O B, ⃗)$ 之长的最大值与最小值．

+ 如果不附加条件，任给一个向量 $arrow(a)$, 你能把它分解为多少对向量之和？如果分解 $arrow(a)$ 为两个向量之和且使这两个向量分别与已知两个向量 $arrow(b)$⁠、$arrow(c)$ 平行，这种分解是唯一的吗？

== 相似与向量的倍积
=== 向量的倍积与运算律
在初中，我们学习了相似这个基本概念，直观地说，相似就是放大或缩小，把相似和位移向量相结合，就可引出下述向量倍积的定义．

#blk[定义][
已知 $arrow(a)$ 和实数 $lambda$, $arrow(a)$ 与实数 $lambda$ 的乘积 $lambda arrow(a)$ (或 $arrow(a) lambda$) 是一个向量，它的长是 $\|lambda\|lr(|arrow(a)|)$, 它的方向，当 $lambda > 0$ 时与 $arrow(a)$ 同向，当 $lambda < 0$ 时与 $arrow(a)$ 反向（图3.21）; 对于0乘 $arrow(a)$, 规定 $0 arrow(a) = arrow(0)$, $lambda arrow(a)$ 中的数量 $lambda$ 叫做 $arrow(a)$ 的系数，$lambda arrow(a)$ 叫做 $arrow(a)$ 的倍积．

]
#figure([#fig("3-26");

  ],
  caption: [
  ]
)

#blk[定理][
向量的倍积满足如下的运算律，对 $lambda\,mu in bb(R)$,

+ （分配律）$\(lambda + mu\)arrow(a) = lambda arrow(a) + mu arrow(a)$

+ （结合律）$lambda (mu arrow(a)) =\(lambda mu\)arrow(a)$

+ （分配律）$lambda (arrow(a) + arrow(b)) = lambda arrow(a) + lambda arrow(b)$

]
#figure([#fig("3-27");

  ],
  caption: [
  ]
)

#proof[
1、2两式读者可依倍积定义自己证明，现让我们应用相似形定理来证明3.

设 $accent(A B, ⃗) = arrow(a)$, $accent(B C, ⃗) = arrow(b)$, 则 $accent(A C, ⃗) = arrow(a) + arrow(b)$, 在直线 $A B$ 上取 $B'$ 使 $accent(A B', ⃗) = lambda accent(A B, ⃗)$, 过 $B'$ 点作 $B C$ 的平行线交直线 $A C$ 于 $C'$ 点（$lambda > 0$, $lambda < 0$ 这两种情形如图3.22所示），不难由相似三角形定理得知：$ overline(A C') / overline(A C) = overline(B' C') / overline(B C) = overline(A B') / overline(A B) =\|lambda\| $ #noindent;容易看出，当

+ $lambda > 0$ 时，$accent(A C', ⃗)$ 与 $accent(A C, ⃗)$ 同向，$accent(B' C', ⃗)$ 与 $accent(B C, ⃗)$ 同向；

+ $lambda < 0$ 时，$accent(A C', ⃗)$ 与 $accent(A C, ⃗)$ 反向，$accent(B' C', ⃗)$ 与 $accent(B C, ⃗)$ 反向.

#noindent;所以 $ accent(B' C', ⃗) = lambda arrow(b)\,#h(2em) accent(A C', ⃗) = lambda accent(A C, ⃗) = lambda (arrow(a) + arrow(b)) $ #noindent;又：$accent(A C', ⃗) = accent(A B', ⃗) + accent(B' C', ⃗) = lambda arrow(a) + lambda arrow(b)$⁠，故得：$ lambda (arrow(a) + arrow(b)) = lambda arrow(a) + lambda arrow(b) $

]
#example[
计算下列各式

+ $\(- 2\)times 1 / 2 arrow(a)$

+ $2 (arrow(a) + arrow(b)) - 3 (arrow(a) - arrow(b))$

+ $\(lambda + mu\)(arrow(a) + arrow(b)) -\(lambda - mu\)(arrow(a) - arrow(b))$

]
#solution[
+ $\(- 2\)times 1 / 2 arrow(a) = [\( - 2 \) times 1 / 2] arrow(a) = - arrow(a)$

+ #h(0pt)
  $ 2 (arrow(a) + arrow(b)) - 3 (arrow(a) - arrow(b)) = 2 arrow(a) + 2 arrow(b) - 3 arrow(a) + 3 arrow(b) & = (2 arrow(a) - 3 arrow(a)) + (2 arrow(b) + 3 arrow(b))\
   & = - arrow(a) + 5 arrow(b) $

+ #h(0pt)
  $  & #h(2em)\(lambda + mu\)(arrow(a) + arrow(b)) -\(lambda - mu\)(arrow(a) - arrow(b))\
   & = lambda (arrow(a) + arrow(b)) + mu (arrow(a) + arrow(b)) -\(lambda - mu\)arrow(a) +\(lambda - mu\)arrow(b)\
   & = lambda arrow(a) + lambda arrow(b) + mu arrow(a) + mu arrow(b) - lambda arrow(a) + mu arrow(a) + lambda arrow(b) - mu arrow(b)\
   & = 2 mu arrow(a) + 2 lambda arrow(b) $

]
#example[
$arrow(a)$⁠、$arrow(b)$ 为已知向量，且 $2 / 3 (4 arrow(a) - 3 arrow(c)) + 3 (5 arrow(c) - 4 arrow(b)) = arrow(0)$⁠，求 $arrow(c)$.

]
#solution[
原式可变形为：$ 8 / 3 arrow(a) - 2 arrow(c) + 15 arrow(c) - 12 arrow(b) & = arrow(0)\
13 arrow(c) & = 12 arrow(b) - 8 / 3 arrow(a)\
arrow(c) & = 12 / 13 arrow(b) - 8 / 39 arrow(a) $

]
#example[
已知 $overline(A M)$ 是 $triangle.stroked.t A B C$ 的 $overline(B C)$ 边上的中线，若 $accent(A B, ⃗) = arrow(a)$, $accent(A C, ⃗) = arrow(b)$⁠，试用 $arrow(a)$, $arrow(b)$ 表示 $accent(A M, ⃗)$.（图3.23）

]
#figure([#fig("3-28");

  ],
  caption: [
  ]
)

#solution[
$ accent(A M, ⃗) = accent(A B, ⃗) + accent(B M, ⃗) & = accent(A B, ⃗) + 1 / 2 accent(B C, ⃗)\
 & = accent(A B, ⃗) + 1 / 2 (accent(A C, ⃗) - accent(A B, ⃗))\
 & = arrow(a) + 1 / 2 (arrow(b) - arrow(a)) = 1 / 2 (arrow(a) + arrow(b)) $

]
#exercise[
+ 化简下列各式：

  + $4 (2 arrow(a) - 3 arrow(b)) + 5 (3 arrow(a) - 2 arrow(b))$

  + $1 / 4 (arrow(a) + 2 arrow(b)) - 1 / 6 (5 arrow(a) - 2 arrow(b)) + 1 / 4 arrow(a)$

  + $2 (3 arrow(a) - 4 arrow(b) + arrow(c)) - 3 (2 arrow(a) + arrow(b) - 3 arrow(c))$

+ 用几何作图方法证明 $frac(arrow(a) + arrow(b), 2) + frac(arrow(a) - arrow(b), 2) = arrow(a)$.

+ 求未知向量 $arrow(x)$

  + $arrow(x) + 2 (arrow(a) + arrow(x)) = arrow(0)$

  + $3 arrow(a) + 4 (arrow(b) - arrow(x)) = arrow(0)$

  + $2 (arrow(x) - 1 / 3 arrow(a)) - 1 / 2 (arrow(b) - 3 arrow(x) + arrow(c)) + arrow(b) = arrow(0)$

+ 如图，已知梯形 $A B C D$, $A B pll C D$ 且 $overline(A B) = 2 overline(D C)$, $M$⁠、$N$ 分别是 $overline(D C)$⁠、$overline(A B)$ 的中点，设 $accent(A B, ⃗) = arrow(a)$, $accent(A D, ⃗) = arrow(b)$, 试用 $arrow(a)$, $arrow(b)$ 表示 $accent(D C, ⃗)$, $accent(B C, ⃗)$, $accent(M N, ⃗)$.

+ 如图，已知 $pgram O A D B$ 是以向量 $accent(O A, ⃗) = arrow(a)$, $accent(O B, ⃗) = arrow(b)$ 为邻边的平行四边形，又知 $accent(B M, ⃗) = 1 / 3 accent(B C, ⃗)$, $accent(C N, ⃗) = 1 / 3 accent(C D, ⃗)$, 试用 $arrow(a)$, $arrow(b)$ 表示 $accent(O M, ⃗)$, $accent(O N, ⃗)$, $accent(M N, ⃗)$.

+ 已知 $triangle.stroked.t A B C$ 的 $accent(B C, ⃗) = arrow(a)$, $accent(C A, ⃗) = arrow(b)$, $accent(A B, ⃗) = arrow(c)$, 三边 $overline(B C)$⁠、$overline(C A)$⁠、$overline(A B)$ 的中点依次为 $D$⁠、$E$⁠、$F$, 试用 $arrow(a)\,arrow(b)\,arrow(c)$ 表示 $accent(A D, ⃗) + accent(B E, ⃗) + accent(C F, ⃗)$.

]
#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, [#fig("3-29");

#subcap[
第4题

]], [#fig("3-30");

#subcap[
第5题

]])));

=== 平行向量与两个向量的线性关系
#blk[平行向量基本定理][
如果向量 $arrow(a) eq.not arrow(0)$, 则 $arrow(b) pll arrow(a)$ 的一个充要条件是存在一个唯一的实数 $x$, 使 $arrow(b) = x arrow(a)$.

]
#proof[
+ 必要性：如果 $arrow(a) pll arrow(b)$⁠，$arrow(a) eq.not arrow(0)$⁠，可设 $frac(\|arrow(b)\|, \|arrow(a)\|) = mu$⁠，

  - 若 $arrow(b)$ 与 $arrow(a)$ 同向，则令 $x = mu$⁠，可得：$ arrow(b) = frac(\|arrow(b)\|, \|arrow(a)\|) arrow(a) = x arrow(a) $

  - 若 $arrow(b)$ 与 $arrow(a)$ 反向，则令 $x = - mu$⁠，可得：$ arrow(b) = - frac(\|arrow(b)\|, \|arrow(a)\|) arrow(a) = x arrow(a) $

  唯一性，如果存在两个实数 $x\,x'$ 使 $arrow(b) = x arrow(a) = x' arrow(a)$⁠，则 $ \(x - x'\)arrow(a) = arrow(0) $ #noindent;但 $arrow(a) eq.not arrow(0)$⁠，所以 $x - x' = 0 quad arrow.r.double quad x = x'$

+ 充分性，如果存在一实数 $x$⁠，使 $arrow(b) = x arrow(a)$⁠，根据向量倍积定义，则 $arrow(a)$ 与 $arrow(b)$ 方向相同或方向相反，因此：$ arrow(b) pll arrow(a) $

]
#blk[推论][
两个向量 $arrow(a)$, $arrow(b)$ 平行的充要条件是存在着两个不全为零的实数 $x_1\,x_2$ 使 $ x_1 arrow(a) + x_2 arrow(b) = arrow(0) $

]
#proof[
+ 必要性：如果 $arrow(b) pll arrow(a)$, 对于 $arrow(a) = arrow(b) = arrow(0)$, 结论当然成立，假定 $arrow(a)\,arrow(b)$ 中有一个不是零向量，不妨设 $arrow(a) eq.not arrow(0)$, 由平行向量基本定理可知存在唯一的实数 $x_1$, 使 $arrow(b) = x_1 arrow(a)$, 取 $x_2 = - 1$, 则可写成 $ x_1 arrow(a) + x_2 arrow(b) = arrow(0) $ #noindent;其中至少 $x_2 eq.not 0$

+ 充分性：如果 $x_1 arrow(a) + x_2 arrow(b) = arrow(0)$ 且 $x_1\,x_2$ 不全为零，不妨设 $x_2 eq.not 0$, 于是可解出 $ arrow(b) = - x_1 / x_2 arrow(a) $ #noindent;所以：$arrow(a) pll arrow(b)$⁠．

]
#blk[定义][
已知两个向量 $arrow(a)_1$, $arrow(a)_2$, 如果存在着不全为零的两个实数 $x_1\,x_2$, 使 $ x_1 arrow(a)_1 + x_2 arrow(a)_2 = arrow(0) $ #noindent;那么我们称 $arrow(a)_1\,arrow(a)_2$ 线性相关．

]
由上面的推论可推知：#strong[两个向量线性相关的充要条件是它们互相平行]．

#blk[定义][
如果 $arrow(a)_1\,arrow(a)_2$ 都是非零向量，且方程 $ x_1 arrow(a)_1 + x_2 arrow(a)_2 = arrow(0) $ #noindent;仅当 $x_1 = x_2 = 0$ 时才成立，我们称向量 $arrow(a)_1$ 与 $arrow(a)_2$ 线性无关．

]
由上面的推论可推知：#strong[两个向量 ]$arrow(a)_1\,arrow(a)_2$#strong[ 线性无关的充要条件是它们不平行]．

#exercise[
+ 用单位向量 $arrow(e)$（即 $\|arrow(e)\|= 1$ 个单位）表示如下向量

  + $arrow(a)$ 与 $arrow(e)$ 的方向相同且它的长度是7个单位；

  + $arrow(b)$ 与 $arrow(e)$ 的方向相反且它的长度是5个单位；

  + $arrow(c)$ 与 $arrow(e)$ 的方向相反且它的长度是1/2个单位．

+ #block(sticky: true)[问下列向量 $arrow(a)$ 与 $arrow(b)$ 的长度间和方向间有什么关系．]

  #cols(2)[
  + $arrow(a) = - 3 arrow(b)$

  + $arrow(a) = 1 / 2 arrow(b)$

  + $2 arrow(a) + 3 arrow(b) = arrow(0)$

  + $3 arrow(a) - 5 arrow(b) = arrow(0)$

  + $arrow(a) = 2 arrow(e)\,quad arrow(b) = 4 arrow(e)$

  + $arrow(a) = 1 / 2 arrow(e)\,quad arrow(b) = - 4 arrow(e)$

  ]

+ 已知 $arrow(a) + arrow(b) = 3 arrow(e)$, $arrow(a) - arrow(b) = 5 arrow(e)$, 问 $arrow(a)$ 与 $arrow(b)$ 是否平行？

+ 已知 $arrow(a)_1 = 3 arrow(e)$, $arrow(a)_2 = - 2 arrow(e)$, 把 $arrow(a)_1$⁠、$arrow(a)_2$ 写成 $x_1 arrow(a)_1 + x_2 arrow(a)_2 = arrow(0)$ 的形式．问 $arrow(a)_1$ 与 $arrow(a)_2$ 是否线性相关？

+ 在什么条件下 $arrow(a) + arrow(b)$ 与 $arrow(a) - arrow(b)$ 线性相关？

+ 若 $arrow(a) eq.not arrow(0)$, 试证明 $x arrow(a) = arrow(0) quad arrow.l.r.double quad x = 0$

]
#heading(level: 2, numbering: none, supplement: [toc-sub])[习题3.2]

+ #block(sticky: true)[把下列两个线性相关的向量写成 $x arrow(a) + y arrow(b) = arrow(0)$ 的形式．]

  #cols(3)[
  + $arrow(a) = 1 / 4 arrow(b)$

  + $arrow(a) = 2 arrow(e)\,quad arrow(b) = - 3 arrow(e)$

  + $arrow(a) = - 5 arrow(e)\,quad arrow(b) = 3 arrow(e)$

  ]

+ 如果 $arrow(a) = - 2 arrow(b)$, $arrow(c) = 3 / 5 arrow(a) - arrow(b)$, 问 $arrow(a)$⁠、$arrow(b)$⁠、$arrow(c)$ 是否平行．

+ 解方程组中的 $arrow(x)$, $arrow(y)$ $ display(cases(5 arrow(x) + 2 arrow(y) = arrow(a), 3 arrow(x) - arrow(y) = arrow(b))) $

+ 若 $x arrow(a) + y arrow(b) = arrow(0)$ 且 $x + y = 0$, 问 $arrow(a)$ 及 $arrow(b)$ 是否线性相关？

+ 已知 $\|arrow(a)\|= 3$, $arrow(b)$ 与 $arrow(a)$ 反向且 $\|arrow(b)\|= 5$, 求 $arrow(a)$ 与 $arrow(b)$ 满足的向量关系式．

+ 设 $A$⁠、$B$⁠、$C$⁠、$D$ 是平面上任意四点，$M$⁠、$N$ 分别为 $overline(A D)$ 与 $overline(B C)$ 的中点，求证：$2 accent(M N, ⃗) = accent(A B, ⃗) + accent(D C, ⃗)$.

== 长度、角度与内积运算
=== 向量的内积
已知两个非零向量 $arrow(a)$⁠、$arrow(b)$ (图3.24), 作 $accent(O A, ⃗) = arrow(a)$, $accent(O B, ⃗) = arrow(b)$, $angle A O B$ 就叫做 $arrow(a)$ 与 $arrow(b)$ 之间的夹角，记作 $chevron.l arrow(a)\,arrow(b) chevron.r$, $chevron.l arrow(a)\,arrow(b) chevron.r$ 也就是向量 $arrow(a)$ 与 $arrow(b)$ 之间的方向差.

我们规定 $0 lt.eq chevron.l arrow(a)\,arrow(b) chevron.r lt.eq pi$, 在这个规定下，两个向量的夹角就被唯一确定了，并且 $chevron.l arrow(a)\,arrow(b) chevron.r = chevron.l arrow(b)\,arrow(a) chevron.r$.

#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("3-31");], caption: []), figure([#fig("3-32");], caption: []))));

如果 $chevron.l arrow(a)\,arrow(b) chevron.r = pi / 2$, 那么称 $arrow(a)$ 与 $arrow(b)$ 互相#strong[垂直]，并记作 $arrow(a) tack.t arrow(b)$⁠．由于零向量的方向是不确定的，所以零向量与任一向量的夹角也是不确定的，为了以后讨论问题方便，我们规定零向量与任一向量平行或垂直．

在平面几何中，一个重要的课题就是讨论三角形中的边角关系，其中最要紧的是余弦定理，如在 $triangle.stroked.t A B C$ 中，$angle A$⁠、$angle B$⁠、$angle C$ 的对边长分别用 $a$⁠、$b$⁠、$c$ 表示，则 $ c^2 = a^2 + b^2 - 2 a b cos angle C $

若设 $accent(B C, ⃗) = arrow(a)$⁠，$accent(C A, ⃗) = arrow(b)$⁠，则 $ accent(B A, ⃗) = arrow(a) + arrow(b)\,quad\|arrow(a)\|= a\,quad\|arrow(b)\|= b\,quad\|arrow(a) + arrow(b)\|= c\,quad chevron.l arrow(a)\,arrow(b) chevron.r = pi - angle C $

上式换用向量的写法即可写为 $ \|arrow(a) + arrow(b)\|^2 =\|arrow(a)\|^2 +\|arrow(b)\|^2 + 2\|arrow(a)\|dot.op\|arrow(b)\|cos chevron.l arrow(a)\,arrow(b) chevron.r $ #noindent;或 $ \|arrow(a)\|dot.op\|arrow(b)\|cos chevron.l arrow(a)\,arrow(b) chevron.r = 1 / 2 lr(\{ \| arrow(a) + arrow(b) \|^2 - \|arrow(a)\|^2 - \|arrow(b)\|^2 \}) $ #noindent;$\|arrow(a)\|dot.op\|arrow(b)\|cos chevron.l arrow(a)\,arrow(b) chevron.r$ 是一个极为重要的量，这节我们要对它进行详细的讨论．下面，我们先给它一个名称．

#blk[定义][
$\|arrow(a)\|dot.op\|arrow(b)\|cos chevron.l arrow(a)\,arrow(b) chevron.r$ 叫做 $arrow(a)$ 与 $arrow(b)$ 的内积．

$arrow(a)$ 与 $arrow(b)$ 的内积通常记为 $arrow(a) dot.op arrow(b)$⁠，于是 $ arrow(a) dot.op arrow(b) =\|arrow(a)\|dot.op\|arrow(b)\|cos chevron.l arrow(a)\,arrow(b) chevron.r $

]
设 $accent(O A, ⃗) = arrow(a)$⁠，$accent(O B, ⃗) = arrow(b)$（图3.26），过 $B$ 点作 $B B_1$ 垂直于直线 $O A$ 于 $B_1$ 点，容易推知 $ O B_1 =\|arrow(b)\|cos chevron.l arrow(a)\,arrow(b) chevron.r $

#figure([#fig("3-33");

  ],
  caption: [
  ]
)

$\|arrow(b)\|cos chevron.l arrow(a)\,arrow(b) chevron.r$⁠，叫做 $arrow(b)$ 在 $arrow(a)$ 方向上的#strong[正投影分量]．当 $chevron.l arrow(a)\,arrow(b) chevron.r$ 是个锐角时，它是个正值，当 $chevron.l arrow(a)\,arrow(b) chevron.r = pi / 2$ 时，它等于0, 当 $chevron.l arrow(a)\,arrow(b) chevron.r$ 是个钝角时，它是个负值．由此我们可知内积的几何意义是：$arrow(a)$#strong[ 与 ]$arrow(b)$#strong[ 的内积等于 ]$arrow(a)$#strong[ 的长度与 ]$arrow(b)$#strong[ 在 ]$arrow(a)$#strong[ 方向上的正投影分量的乘积]．

由向量内积的定义和它的几何意义，同学可自己推知内积有如下一些重要性质

+ 如果 $arrow(e)$ 是单位向量，则 $ arrow(e) dot.op arrow(a) = arrow(a) dot.op arrow(e) & =\|arrow(a)\|cos chevron.l arrow(a)\,arrow(e) chevron.r\
   & = arrow(a) upright("在") arrow(e) upright("方向上的正投影分量") $

+ $arrow(a) tack.t arrow(b) quad arrow.l.r.double quad arrow(a) dot.op arrow(b) = 0$

+ $arrow(a) dot.op arrow(a) =\|arrow(a)\|^2 quad upright("或") quad\|arrow(a)\|= sqrt(arrow(a) dot.op arrow(a))$

+ $cos chevron.l arrow(a)\,arrow(b) chevron.r = frac(arrow(a) dot.op arrow(b), \|arrow(a)\|thick\|arrow(b)\|) = frac(arrow(a) dot.op arrow(b), sqrt(arrow(a) dot.op arrow(a)) sqrt(arrow(b) dot.op arrow(b)))$

+ 对任意两个向量 $arrow(a)$, $arrow(b)$⁠，有：$ \|arrow(a) dot.op arrow(b)\|lt.eq\|arrow(a)\|thick\|arrow(b)\| $

#exercise[
+ 证明内积性质1--5.

+ 已知 $\|arrow(a)\|= 5$, $arrow(b)$ 在 $arrow(a)$ 方向上的正投影分量是3, 求 $arrow(a) dot.op arrow(b)$.

+ 已知 $\|arrow(a)\|= 5$, $arrow(b)$ 在 $arrow(a)$ 方向上的正投影分量是 $- 3$, 求 $arrow(a) dot.op arrow(b)$.

+ 在 $triangle.stroked.t A B C$ 中，$\|accent(A B, ⃗)\|= 5$, $\|accent(A C, ⃗)\|= 4$, $angle B A C = 120 degree$, 求 $accent(A B, ⃗) dot.op accent(A C, ⃗)$.

+ 已知 $arrow(a) dot.op arrow(b) = 0$, 能否推知 $arrow(a) = arrow(0)$ 或 $arrow(b) = arrow(0)$, 为什么？$arrow(a) = arrow(0)$ 或 $arrow(b) = arrow(0)$ 是 $arrow(a) dot.op arrow(b) = 0$ 的什么条件？

+ 已知 $arrow(a)$⁠、$arrow(b)$ 的长都等于 $sqrt(2)$, 它们的内积是 $- 1$, 求 $chevron.l arrow(a)\,arrow(b) chevron.r$

+ 已知：$\|arrow(a)\|=\|arrow(b)\|$, $chevron.l arrow(a)\,arrow(b) chevron.r = 30 degree$, $arrow(a) dot.op arrow(b) = 3$, 求它们的长度．

+ 已知 $accent(O A, ⃗) = arrow(a)$, $accent(O B, ⃗) = arrow(b)$, $arrow(a)$ 在 $arrow(b)$ 方向上的正投影向量 $accent(O A_1, ⃗) = mu arrow(b)$⁠，求证：$arrow(a) dot.op arrow(b) = mu\|arrow(b)\|^2$.

]
=== 内积运算律
内积运算满足下列运算律．

#blk[定理][
设 $arrow(a)$⁠、$arrow(b)$⁠、$arrow(c)$ 为向量、$lambda$ 为实数，则

+ （交换律）$arrow(a) dot.op arrow(b) = arrow(b) dot.op arrow(a)$

+ （与数的结合律）$arrow(a) dot.op (lambda arrow(b)) = lambda (arrow(a) dot.op arrow(b))$

+ （分配律）$arrow(a) dot.op (arrow(b) + arrow(c)) = arrow(a) dot.op arrow(b) + arrow(a) dot.op arrow(c)$

]
#proof[
+ 因为 $arrow(a) dot.op arrow(b) =\|arrow(a)\|lr(|arrow(b)|) cos chevron.l arrow(a)\,arrow(b) chevron.r$⁠，$arrow(b) dot.op arrow(a) = lr(|arrow(b)|)\|arrow(a)\|cos chevron.l arrow(b)\,arrow(a) chevron.r$

  而 $\|arrow(a)\|lr(|arrow(b)|) cos chevron.l arrow(a)\,arrow(b) chevron.r = lr(|arrow(b)|)\|arrow(a)\|cos chevron.l arrow(b)\,arrow(a) chevron.r$⁠，所以 $ arrow(a) dot.op arrow(b) = arrow(b) dot.op arrow(a) $

+ #lead-list(none, 2)[
  + 当 $lambda = 0$ 时，显然有 $arrow(a) dot.op\(lambda arrow(b)\)= lambda\(arrow(a) dot.op arrow(b)\)$

  + 当 $lambda > 0$ 时，$arrow(a) dot.op\(lambda arrow(b)\)=\|arrow(a)\|lr(|lambda arrow(b)|) cos chevron.l arrow(a)\,lambda arrow(b) chevron.r$（图3.27），但 $lr(|lambda arrow(b)|) = lambda lr(|arrow(b)|)$⁠，$lambda arrow(b)$ 与 $arrow(b)$ 同方向，$chevron.l arrow(a)\,lambda arrow(b) chevron.r = chevron.l arrow(a)\,arrow(b) chevron.r$⁠，所以 $ arrow(a) dot.op\(lambda arrow(b)\)= lambda\|arrow(a)\|\|arrow(b)\|cos chevron.l arrow(a)\,arrow(b) chevron.r = lambda\(arrow(a) dot.op arrow(b)\) $

  + 当 $lambda < 0$ 时，$arrow(a) dot.op\(lambda arrow(b)\)=\|arrow(a)\|lr(|lambda arrow(b)|) cos chevron.l arrow(a)\,lambda arrow(b) chevron.r$（图3.28），但 $lr(|lambda arrow(b)|) = - lambda lr(|arrow(b)|)$, $chevron.l arrow(a)\,lambda arrow(b) chevron.r = pi - chevron.l arrow(a)\,arrow(b) chevron.r$ 所以 $ arrow(a) dot.op\(lambda arrow(b)\)=\(- lambda\)\|arrow(a)\|lr(|arrow(b)|) cos (pi - chevron.l arrow(a) \, arrow(b) chevron.r) = lambda\|arrow(a)\|lr(|arrow(b)|) cos chevron.l arrow(a)\,arrow(b) chevron.r = lambda (arrow(a) dot.op arrow(b)) $

  #align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("3-34");], caption: []), figure([#fig("3-35");], caption: []))));
  ]

+ 任取一点 $O$⁠，作 $accent(O A, ⃗) = arrow(a)$, $accent(O B, ⃗) = arrow(b)$, $accent(B C, ⃗) = arrow(c)$（图3.29），则 $ accent(O C, ⃗) = accent(O B, ⃗) + accent(B C, ⃗) = arrow(b) + arrow(c) $

  #figure([#fig("3-36");

    ],
    caption: [
    ]
  )

  设 $B_1\,C_1$ 分别是 $B$⁠、$C$ 两点在直线 $O A$ 上的正射影，$arrow(a)_0$ 为 $arrow(a)$ 方向上的单位向量，则 $ overline(O B_1) = arrow(a)_0 dot.op arrow(b)\,quad overline(B_1 C_1) = arrow(a)_0 dot.op arrow(c)\,quad overline(O C_1) = arrow(a)_0 dot.op (arrow(b) + arrow(c)) $ #noindent;但 $overline(O C_1) = overline(O B_1) + overline(B_1 C_1)$⁠，所以 $ arrow(a)_0 dot.op (arrow(b) + arrow(c)) = arrow(a)_0 dot.op arrow(b) + arrow(a)_0 dot.op arrow(c) $ #noindent;两边同乘以 $\|arrow(a)\|$⁠，则有 $ \|arrow(a)\|arrow(a)_0 dot.op (arrow(b) + arrow(c)) =\|arrow(a)\|(arrow(a)_0 dot.op arrow(b)) +\|arrow(a)\|(arrow(a)_0 dot.op arrow(c)) $ #noindent;即 $ arrow(a) dot.op (arrow(b) + arrow(c)) = arrow(a) dot.op arrow(b) + arrow(a) dot.op arrow(c) $

]
#example[
去括号 $(2 arrow(a) - 3 arrow(b)) dot.op (arrow(c) + 5 arrow(d))$.

]
#solution[
$ (2 arrow(a) - 3 arrow(b)) dot.op (arrow(c) + 5 arrow(d)) = 2 arrow(a) dot.op arrow(c) + 10 arrow(a) dot.op arrow(d) - 3 arrow(b) dot.op arrow(c) - 15 arrow(b) dot.op arrow(d) $

]
#example[
提取公因子向量 $6 arrow(a) dot.op arrow(b) + 9 arrow(b) dot.op arrow(c)$.

]
#solution[
$ 6 arrow(a) dot.op arrow(b) + 9 arrow(b) dot.op arrow(c) = 3 arrow(b) dot.op (2 arrow(a) + 3 arrow(c)) $

]
#example[
展开以下各式

#cols(3)[
+ $(arrow(a) + arrow(b)) dot.op (arrow(a) + arrow(b))$

+ $(arrow(a) - arrow(b)) dot.op (arrow(a) - arrow(b))$

+ $(arrow(a) + arrow(b)) dot.op (arrow(a) - arrow(b))$

]
]
#solution[
+ #h(0pt)
  $ (arrow(a) + arrow(b)) dot.op (arrow(a) + arrow(b)) & = arrow(a) dot.op arrow(a) + arrow(a) dot.op arrow(b) + arrow(b) dot.op arrow(a) + arrow(b) dot.op arrow(b)\
   & = arrow(a) dot.op arrow(a) + 2 arrow(a) dot.op arrow(b) + arrow(b) dot.op arrow(b)\
   & = lr(|arrow(a)|)^2 + 2 arrow(a) dot.op arrow(b) + lr(|arrow(b)|)^2 $

+ $(arrow(a) - arrow(b)) dot.op (arrow(a) - arrow(b)) = lr(|arrow(a)|)^2 - 2 arrow(a) dot.op arrow(b) + lr(|arrow(b)|)^2$

+ $(arrow(a) + arrow(b)) dot.op (arrow(a) - arrow(b)) = lr(|arrow(a)|)^2 - lr(|arrow(b)|)^2$

]
#example[
已知 $arrow(a)$⁠、$arrow(b)$, 求证：$ arrow(a) dot.op arrow(b) = 1 / 2 lr(\{ lr(|arrow(a) + arrow(b)|)^2 - lr(|arrow(a)|)^2 - lr(|arrow(b)|)^2 \}) $

]
#proof[
因为 $lr(|arrow(a) + arrow(b)|)^2 = (arrow(a) + arrow(b)) dot.op (arrow(a) + arrow(b)) = lr(|arrow(a)|)^2 + 2 arrow(a) dot.op arrow(b) + lr(|arrow(b)|)^2$ 所以：$ arrow(a) dot.op arrow(b) = 1 / 2 lr(\{ lr(|arrow(a) + arrow(b)|)^2 - lr(|arrow(a)|)^2 - lr(|arrow(b)|)^2 \}) $

]
#example[
已知 $arrow(a)$⁠、$arrow(b)$, 求证：$ lr(|arrow(a) + arrow(b)|)^2 + lr(|arrow(a) - arrow(b)|)^2 = 2 (\|arrow(a)\|^2 + lr(|arrow(b)|)^2) $

]
#proof[
#numbered-align(($lr(|arrow(a) + arrow(b)|)^2$, $eqph = lr(|arrow(a)|)^2 + 2 arrow(a) dot.op arrow(b) + lr(|arrow(b)|)^2$, true), ($lr(|arrow(a) - arrow(b)|)^2$, $eqph = lr(|arrow(a)|)^2 - 2 arrow(a) dot.op arrow(b) + lr(|arrow(b)|)^2$, true));

#noindent; $\(3.1\)+\(3.2\)$, 则得 $ lr(|arrow(a) + arrow(b)|)^2 + lr(|arrow(a) - arrow(b)|)^2 = lr(|arrow(a)|)^2 + lr(|arrow(a)|)^2 + lr(|arrow(b)|)^2 + lr(|arrow(b)|)^2 = 2 (\|arrow(a)\|^2 + lr(|arrow(b)|)^2) $

]
#example[
用余弦定理和广义勾股定理证明内积分配律，即对任给的 $arrow(a)\,arrow(b)\,arrow(c)$⁠，有 $ arrow(a) dot.op (arrow(b) + arrow(c)) = arrow(a) dot.op arrow(b) + arrow(a) dot.op arrow(c) $

]
#proof[
由余弦定理有 $ arrow(a) dot.op (arrow(b) + arrow(c)) & = 1 / 2 lr(\{ lr(|arrow(a) + (arrow(b) + arrow(c))|)^2 - lr(|arrow(a)|)^2 - lr(|arrow(b) + arrow(c)|)^2 \})\
arrow(a) dot.op arrow(b) & = 1 / 2 lr(\{ lr(|arrow(a) + arrow(b)|)^2 - lr(|arrow(a)|)^2 - lr(|arrow(b)|)^2 \})\
arrow(a) dot.op arrow(c) & = 1 / 2 lr(\{ lr(|arrow(a) + arrow(c)|)^2 - lr(|arrow(a)|)^2 - lr(|arrow(c)|)^2 \}) $ #noindent;要证明 $arrow(a) dot.op (arrow(b) + arrow(c)) - arrow(a) dot.op arrow(b) - arrow(a) dot.op arrow(c) = 0$⁠，也就等价于要证明 $ 1 / 2 lr(\{ lr(|arrow(a) + arrow(b) + arrow(c)|)^2 - lr(|arrow(a) + arrow(b)|)^2 - lr(|arrow(a) + arrow(c)|)^2 - lr(|arrow(b) + arrow(c)|)^2 + lr(|arrow(a)|)^2 + lr(|arrow(b)|)^2 + lr(|arrow(c)|)^2 \}) = 0 $ #noindent;根据广义勾股定理，设一平行四边形由 $arrow(x)\,arrow(y)$ 张成，则有 $ lr(|arrow(x) + arrow(y)|)^2 + lr(|arrow(x) - arrow(y)|)^2 - 2\|arrow(x)\|^2 - 2\|arrow(y)\|^2 = 0 $ #noindent;将上面式中的 $arrow(x)\,arrow(y)$ 代以适当的向量，即得下列各式

#numbered-align(($lr(|(arrow(a) + arrow(b)) + arrow(c)|)^2 + lr(|(arrow(a) + arrow(b)) - arrow(c)|)^2 - 2 lr(|arrow(a) + arrow(b)|)^2 - 2 lr(|arrow(c)|)^2$, $eqph = 0$, true), ($lr(|arrow(a) + (arrow(b) - arrow(c))|)^2 + lr(|arrow(a) - (arrow(b) - arrow(c))|)^2 - 2 lr(|arrow(a)|)^2 - 2 lr(|arrow(b) - arrow(c)|)^2$, $eqph = 0$, true), ($lr(|(arrow(a) + arrow(c)) + arrow(b)|)^2 + lr(|(arrow(a) + arrow(c)) - arrow(b)|)^2 - 2 lr(|arrow(a) + arrow(c)|)^2 - 2 lr(|arrow(b)|)^2$, $eqph = 0$, true), ($lr(|arrow(b) + arrow(c)|)^2 + lr(|arrow(b) - arrow(c)|)^2 - 2 lr(|arrow(b)|)^2 - 2 lr(|arrow(c)|)^2$, $eqph = 0$, true));

#noindent; $\(3.3\)-\(3.4\)+\(3.5\)- 2 times\(3.6\)$, 即得 $ 2 lr(\{ lr(|arrow(a) + arrow(b) + arrow(c)|)^2 - lr(|arrow(a) + arrow(b)|)^2 - lr(|arrow(a) + arrow(c)|)^2 - lr(|arrow(b) + arrow(c)|)^2 + lr(|arrow(a)|)^2 + lr(|arrow(b)|)^2 + lr(|arrow(c)|)^2 \}) = 0 $

]
本节我们用向量的投影性质证明了向量内积分配律，在例3.14中，我们证明了两向量内积的又一表达式（即余弦定理），例3.15中所证的向量恒等式，它的几何意义正是广义勾股定理即，平行四边形两条对角线的平方和等于它的四边的平方和，而在例3.16中，我们又用余弦定理和广义勾股定理证明了内积分配律．这就是说，向量的投影性质，余弦定理，广义勾股定理与向量内积分配律之间在逻辑上都是等价的，因此，可以说，内积分配律是余弦定理、广义勾股定理的代数形式．

#exercise[
+ 已知 $arrow(a) = 3 arrow(b) - 7 arrow(b)$, 求 $arrow(a) dot.op arrow(a)$

+ 已知 $arrow(e)_1\,arrow(e)_2$ 是互相垂直的单位向量且 $arrow(a) = 2 arrow(e)_1 + arrow(e)_2\,quad arrow(b) = 12 arrow(e)_1 - 4 arrow(e)_2$

  求：$arrow(a) dot.op arrow(a)$, $arrow(b) dot.op arrow(b)$, $arrow(a) dot.op arrow(b)$.

+ 如果 $arrow(a) dot.op arrow(b) = arrow(c) dot.op arrow(b)$, 那么能否推出 $arrow(a) = arrow(c)$, 为什么？

+ 给出 $\(arrow(a) + arrow(b)\)dot.op\(arrow(a) - arrow(b)\)$ 的一个几何解释，当 $\|arrow(a)\|=\|arrow(b)\|$ 时，求此内积的值并解释这个结果的几何意义．

]
#heading(level: 2, numbering: none, supplement: [toc-sub])[习题3.3]

+ 已知 $\|arrow(a)\|= 5$, $arrow(e)$ 为单位向量，当 $chevron.l arrow(a)\,arrow(e) chevron.r = 30 degree\,thick 45 degree\,thick 120 degree$ 时，分别求出 $arrow(a)$ 在 $arrow(e)$ 方向上的正投影分量，并绘图说明．

+ 当 $arrow(a) dot.op arrow(b) = plus.minus 1$ 时，$arrow(a)$ 与 $arrow(b)$ 各有什么关系？

+ 已知 $triangle.stroked.t A B C$, $overline(B C) = 3$, $overline(C A) = 5$, $overline(A B) = 6$, 求 $accent(A B, ⃗) dot.op accent(A C, ⃗)$（提示：使用例3.14得到的公式）．

+ 已知 $\|arrow(a)\|= 3$, $arrow(a)$ 在 $arrow(b)$ 方向上的正投影向量 $arrow(a)_1 = 1 / 2 arrow(b)$, 求 $arrow(a) dot.op arrow(b)$.

+ 已知 $triangle.stroked.t A B C$, $accent(A B, ⃗) = arrow(a)$, $accent(A C, ⃗) = arrow(b)$, 问当 $arrow(a) dot.op arrow(b) > 0$, $arrow(a) dot.op arrow(b) < 0$, $arrow(a) dot.op arrow(b) = 0$ 时，$triangle.stroked.t A B C$ 各是什么三角形？

+ 问向量 $arrow(a)$ 与 $arrow(b)$ 的和与差互相垂直，应该满足什么条件？

+ 设 $\|arrow(e)\|= 1$

  + 如果 $\(arrow(a) + arrow(e)\)dot.op\(arrow(a) - arrow(e)\)= 8$, 求 $\|arrow(a)\|$

  + 如果 $arrow(a) dot.op arrow(e) = 2$, 求 $\|arrow(a) - arrow(e)\|$, $\|arrow(a) + arrow(e)\|$

  + 求向量 $arrow(a) + arrow(e)$ 与 $arrow(a) - arrow(e)$ 夹角的余弦

+ 已知 $arrow(a)$⁠、$arrow(b)$⁠，满足 $\|arrow(a)\|= 2\|arrow(b)\|= 4$ 且它们的夹角是 $60 degree$, 求 $arrow(a) dot.op arrow(b)$, $\(arrow(a) + arrow(b)\)dot.op\(arrow(a) + arrow(b)\)$, $\|arrow(a) + arrow(b)\|$.

+ 已知 $\|arrow(a)\|= 2$, $\|arrow(b)\|= 3$ 和 $arrow(a) dot.op arrow(b) = 4$, 求 $\|arrow(a) - arrow(b)\|$.

+ 已知 $pgram A B C D$, 设 $accent(A B, ⃗) = arrow(a)$,$accent(A D, ⃗) = arrow(b)$, 求证此平行四边形的面积 $S^2 =\(arrow(a) dot.op arrow(a)\)\(arrow(b) dot.op arrow(b)\)-\(arrow(a) dot.op arrow(b)\)^2$.

  （提示：$S^2 =\|arrow(a)\|^2\|arrow(b)\|^2 sin^2 chevron.l arrow(a)\,arrow(b) chevron.r$⁠）

== 空间向量及其运算
=== 空间向量的加法，倍积与内积运算
如果空间点的全体都作同向等距的移动，那么这种移动叫做空间全体点的一个平移．我们把空间全体点的一个平移叫做一个#strong[空间位移向量]，简称#strong[向量]．如同平面情形一样，一个空间位移向量，可用空间中一条有向线段来表示．例如“空间全体点都向东北方向移动3cm”，我们可用图3.30中的相等的有向线段 $accent(A B, ⃗)$ 或 $accent(C D, ⃗)$ 来表示．相等的有向线段都表示同一个向量或相等的向量．

关于平面向量的长度，平行，夹角的定义，对空间向量也同样适用，空间中的零向量表示空间中全体点到自身的一个移动．

已知向量 $arrow(a)$, 在空间任选一点 $O$, 作 $accent(O A, ⃗) = arrow(a)$, 如果直线 $O A$ 平行于一个已知平面 $pi$, 我们就说这个#strong[向量 ]$arrow(a)$#strong[ 平行于 ]$pi$, 记作 $arrow(a) pll pi$（图3.31）．

#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("3-37");], caption: []), figure([#fig("3-38");], caption: []))));

所有平行于同一平面的向量都可以用这个平面上的有向线段来表示．通常，我们把所有平行于同一平面的向量叫做#strong[共面向量]．同样平行于同一直线的向量我们叫做#strong[共线向量]．

对空间的任意两个向量，我们总可以用具有公共始点的有向线段来分别表示，因此空间中任意两个向量都是共面的．这样，平面上两个向量的和、倍积与内积运算的定义，对空间向量也完全适用．其运算律也完全适用．但对空间向量，由于要涉及到三个不共面向量，因此，需要重新加以证明．从例3.16可知，内积分配律可由广义勾股定理来证明；证明只涉及到向量的长度，当然对空间向量也同样成立，同学不难从图3.32验证，加法结合律，对空间任意三个向量也同样成立．

#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("3-39");], caption: []), figure([#fig("3-40");], caption: []))));

#example[
已知平行六面体 $A B C D - E F G H$\(图3.33), 如果 $accent(A B, ⃗) = arrow(a)$, $accent(A D, ⃗) = arrow(b)$, $accent(A E, ⃗) = arrow(c)$, 试用 $arrow(a)$⁠、$arrow(b)$⁠、$arrow(c)$ 表示对角线向量 $accent(A G, ⃗)$.

]
#solution[
$ accent(A G, ⃗) = accent(A B, ⃗) + accent(B F, ⃗) + accent(F G, ⃗) = accent(A B, ⃗) + accent(A E, ⃗) + accent(A D, ⃗) = arrow(a) + arrow(b) + arrow(c) $

]
#example[
已知 $triangle.stroked.t A B C$ 的三个顶点相对于空间任一点 $O$, 向量 $accent(O A, ⃗) = arrow(a)$, $accent(O B, ⃗) = arrow(b)$, $accent(O C, ⃗) = arrow(c)$⁠，设 $G$ 为 $triangle.stroked.t A B C$ 的重心（图3.34），求证：$accent(O G, ⃗) = 1 / 3 (arrow(a) + arrow(b) + arrow(c))$

]
#figure([#fig("3-41");

  ],
  caption: [
  ]
)

#proof[
$ accent(O G, ⃗) = accent(O A, ⃗) + accent(A G, ⃗) = arrow(a) + accent(A G, ⃗) $ #noindent;设 $M$ 为 $overline(B C)$ 的中点，则 $ accent(A G, ⃗) = 2 / 3 accent(A M, ⃗) = 2 / 3 (accent(A B, ⃗) + accent(B M, ⃗)) & = 2 / 3 (accent(A B, ⃗) + 1 / 2 accent(B C, ⃗))\
 & = 2 / 3 [accent(O B, ⃗) - accent(O A, ⃗) + 1 / 2 (accent(O C, ⃗) - accent(O B, ⃗))]\
 & = 1 / 3 (accent(O B, ⃗) + accent(O C, ⃗) - 2 accent(O A, ⃗))\
 & = 1 / 3 arrow(b) + 1 / 3 arrow(c) - 2 / 3 arrow(a) $ #noindent;所以 $ accent(O G, ⃗) = arrow(a) + 1 / 3 arrow(b) + 1 / 3 arrow(c) - 2 / 3 arrow(a) = 1 / 3 (arrow(a) + arrow(b) + arrow(c)) $

]
#exercise[
+ 如果把空间的一切单位向量用具有同一始点的有向线段来表示．那么这些有向线段的终点构成什么图形．

+ 已知 $arrow(a)$⁠、$arrow(b)$⁠、$arrow(c)$ 且都不等于零，它们可能有6个顺序求和，设一平行六面体 $A B C D - E F G H$ 的三个棱向量 $accent(A B, ⃗) = arrow(a)$, $accent(A D, ⃗) = arrow(b)$, $accent(A E, ⃗) = arrow(c)$, 验证它们的和都等于 $accent(A G, ⃗)$.

+ 已知四面体 $A - B C D$, 设 $accent(A B, ⃗) = arrow(a)$, $accent(B C, ⃗) = arrow(b)$, $accent(C D, ⃗) = arrow(c)$, $accent(D A, ⃗) = arrow(d)$, $E$⁠、$F$ 分别为 $overline(A C)$, $overline(B D)$ 的中点，试用 $arrow(a)$⁠、$arrow(b)$⁠、$arrow(c)$⁠、$arrow(d)$ 表示 $accent(E F, ⃗)$.

]
#fig-center[
#fig("3-42");

#subcap[
第2题

]
]
=== 空间向量之间的线性关系
#blk[共面向量定理][
如果 $arrow(a)\,arrow(b)$ 线性无关，则 $arrow(c)$ 与 $arrow(a)$⁠、$arrow(b)$ 共面的充要条件是存在唯一的一对实数 $x$⁠、$y$ 使 $ arrow(c) = x arrow(a) + y arrow(b) $

]
#figure([#fig("3-43");

  ],
  caption: [
  ]
)

#proof[
+ 必要性：任取一点 $O$\(图3.35), 作 $accent(O A, ⃗) = arrow(a)$, $accent(O B, ⃗) = arrow(b)$, $accent(O C, ⃗) = arrow(c)$, 则 $O$⁠、$A$⁠、$B$ 三点不共线且点 $C in$ 平面 ($O$⁠、$A$⁠、$B$), 在平面 ($O$⁠、$A$⁠、$B$) 上，我们过 $C$ 点作 $O B$ 的平行线交直线 $O A$ 于 $M$ 点，过 $C$ 作 $O A$ 的平行线交直线 $O B$ 于 $N$ 点，于是存在两个实数 $x$⁠、$y$ 使 $ accent(O M, ⃗) & = x accent(O A, ⃗) = x arrow(a)\
  accent(O N, ⃗) & = y accent(O B, ⃗) = y arrow(b)\
  accent(O C, ⃗) & = accent(O M, ⃗) + accent(O N, ⃗) = x accent(O A, ⃗) + y accent(O B, ⃗) $ #noindent;即：$arrow(c) = x arrow(a) + y arrow(b)$

  下面证唯一性．设 $arrow(c) = x arrow(a) + y arrow(b) = x' arrow(a) + y' arrow(b)$⁠，则~$ \(x - x'\)arrow(a) +\(y - y'\)arrow(b) = arrow(0) $ #noindent;那么，由 $arrow(a)$⁠、$arrow(b)$ 线性无关可推知 $ x - x' = 0\,#h(2em) y - y' = 0 $ #noindent;即：$x = x'\,quad y = y'$

+ 充分性：若 $arrow(c) = x arrow(a) + y arrow(b)$, 则由求和法则可知 $arrow(c)$ 与 $x arrow(a)$, $y arrow(b)$ 共面，因而也和 $arrow(a)$⁠、$arrow(b)$ 共面．

]
上述三个向量共面的充要条件还可写成较为对称的形式．

#blk[推论][
三个向量 $arrow(a)$⁠、$arrow(b)$⁠、$arrow(c)$ 共面的充要条件是存在三个不完全为零的实数 $x$⁠、$y$⁠、$z$, 使 $ x arrow(a) + y arrow(b) + z arrow(c) = arrow(0) $

]
#proof[
+ 充分性，如果有三个不全为零的实数使 $x arrow(a) + y arrow(b) + z arrow(c) = arrow(0)$⁠，不妨假定 $z eq.not 0$, 则有 $ arrow(c) = - x / z arrow(a) - y / z arrow(b) $ #noindent;由共面向量定理与平行向量基本定理可证 $arrow(c)$ 与 $arrow(a)$⁠、$arrow(b)$ 共面．

+ 必要性，如果 $arrow(a)$⁠、$arrow(b)$⁠、$arrow(c)$ 共面，且 $arrow(a) parallel.not arrow(b)$, 那么由共面向量定理可知，一定存在唯一的一对实数 $x$⁠、$y$, 使 $ arrow(c) = x arrow(a) + y arrow(b) $ #noindent;取 $z = - 1$⁠，则上式可写为 $ x arrow(a) + y arrow(b) + z arrow(c) = arrow(0) $ #noindent;$x$⁠、$y$⁠、$z$ 中至少 $z eq.not 0$.

  如果 $arrow(a) pll arrow(b)$, 由平行向量基本定理的推论可知，一定存在两个不全为零的有序实数 $\(x\,y\)$ 使 $ x arrow(a) + y arrow(b) = arrow(0) $ #noindent;取 $z = 0$⁠，上式就可写为 $ x arrow(a) + y arrow(b) + z arrow(c) = arrow(0) $

]
#blk[定义][
已知三个向量 $arrow(a)_1$⁠、$arrow(a)_2$⁠、$arrow(a)_3$, 如果存在不全为零的三个实数 $x_1$⁠、$x_2$⁠、$x_3$ 使方程 $ x_1 arrow(a)_1 + x_2 arrow(a)_2 + x_3 arrow(a)_3 = arrow(0) $ #noindent;成立，那么，我们说这三个向量是线性相关的．

]
由共面向量定理及其推论可知，#strong[三个向量线性相关的充要条件是它们共面]，即 $ arrow(a) upright("、") arrow(b) upright("、") arrow(c) upright("线性相关") quad arrow.l.r.double.long quad arrow(a) upright("、") arrow(b) upright("、") arrow(c) upright("共面") $

#blk[定义][
设三个向量都不是零向量，如果方程 $ x_1 arrow(a)_1 + x_2 arrow(a)_2 + x_3 arrow(a)_3 = arrow(0) $ #noindent;仅当 $x_1 = x_2 = x_3 = 0$ 时才成立，那么我们称 $arrow(a)_1$⁠、$arrow(a)_2$⁠、$arrow(a)_3$ 这三个向量线性无关．

]
由共面向量定理的推论可证，三个向量线性无关的充要条件是它们不共面．

对于三个向量，要么它们线性相关，要么线性无关，二者必具其一．

#blk[空间向量定理][
如果向量 $arrow(a)$⁠、$arrow(b)$⁠、$arrow(c)$ 不共面．那么对空间任一向量 $arrow(p)$ 都存在着一个唯一的有序数组 $\(x\,y\,z\)$ 使 $ arrow(p) = x arrow(a) + y arrow(b) + z arrow(c) $

]
#figure([#fig("3-44");

  ],
  caption: [
  ]
)

#proof[
如图3.36所示，已知 $arrow(a)$⁠、$arrow(b)$⁠、$arrow(c)$ 不共面，则有 $ arrow(a) eq.not arrow(0)\,quad arrow(b) eq.not arrow(0)\,quad arrow(c) eq.not arrow(0) quad upright("（为什么？）") $ #noindent;且它们彼此互不平行．以空间中任一点 $O$ 为起点作 $accent(O A, ⃗) = arrow(a)$, $accent(O B, ⃗) = arrow(b)$, $accent(O C, ⃗) = arrow(c)$, $accent(O P, ⃗) = arrow(p)$⁠，过 $P$ 点作三个平面依次平行于平面 ($O$⁠、$B$⁠、$C$)、($O$⁠、$A$⁠、$C$)、($O$⁠、$A$⁠、$B$), 设与直线 $O A$, $O B$, $O C$ 依次相交于 $A'$⁠、$B'$⁠、$C'$ 三点，根据平行向量定理，存在唯一的三个实数 $x$⁠、$y$⁠、$z$, 使 $ accent(O A', ⃗) = x accent(O A, ⃗)\,quad accent(O B', ⃗) = y accent(O B, ⃗)\,quad accent(O C', ⃗) = z accent(O C, ⃗) $ #noindent;由于 $accent(O P, ⃗) = accent(O A', ⃗) + accent(O B', ⃗) + accent(O C', ⃗)$⁠，所以 $ accent(O P, ⃗) = x accent(O A, ⃗) + y accent(O B, ⃗) + z accent(O C, ⃗) $ #noindent;即：$arrow(p) = x arrow(a) + y arrow(b) + z arrow(c)$

下面证唯一性：设 $arrow(p) = x arrow(a) + y arrow(b) + z arrow(c) = x' arrow(a) + y' arrow(b) + z' arrow(c)$ 则：$ \(x - x'\)arrow(a) +\(y - y'\)arrow(b) +\(z - z'\)arrow(c) = arrow(0) $ #noindent;由 $arrow(a)$⁠、$arrow(b)$⁠、$arrow(c)$ 线性无关可推知 $ x = x'\,quad y = y'\,quad z = z' $

]
#blk[定义][
已知向量 $arrow(a)_1$⁠、$arrow(a)_2$⁠、$arrow(a)_3$⁠、$arrow(a)_4$, 如果存在不全为零的实数 $x_1$⁠、$x_2$⁠、$x_3$⁠、$x_4$ 使方程 $ x_1 arrow(a)_1 + x_2 arrow(a)_2 + x_3 arrow(a)_3 + x_4 arrow(a)_4 = arrow(0) $ #noindent;那么我们说这四个向量线性相关．

]
#blk[定理][
空间任意四个向量总是线性相关的．

]
#proof[
已知 $arrow(a)_1$⁠、$arrow(a)_2$⁠、$arrow(a)_3$⁠、$arrow(a)_4$ 是空间任意四个向量，如果

+ $arrow(a)_1$⁠、$arrow(a)_2$⁠、$arrow(a)_3$⁠、$arrow(a)_4$ 中有三个不共面，假设 $arrow(a)_1$⁠、$arrow(a)_2$⁠、$arrow(a)_3$ 不共面，由上述空间向量定理可知，一定存在三个实数 $x_1\,x_2\,x_3$ 使 $ arrow(a)_4 = x_1 arrow(a)_1 + x_2 arrow(a)_2 + x_3 arrow(a)_3 $ #noindent;取 $x_4 = - 1$, 则上式可写为 $ x_1 arrow(a)_1 + x_2 arrow(a)_2 + x_3 arrow(a)_3 + x_4 arrow(a)_4 = arrow(0) $ #noindent;其中至少 $x_4$ 不为零，所以这四个向量线性相关．

+ $arrow(a)_1$⁠、$arrow(a)_2$⁠、$arrow(a)_3$⁠、$arrow(a)_4$ 中有三个共面，设 $arrow(a)_1$⁠、$arrow(a)_2$⁠、$arrow(a)_3$ 共面，由共面向量定理的推论可推知，存在三个不全为零的实数 $x_1\,x_2\,x_3$ 使 $ x_1 arrow(a)_1 + x_2 arrow(a)_2 + x_3 arrow(a)_3 = arrow(0) $ #noindent;取 $x_4 = 0$, 上式就可写为 $ x_1 arrow(a)_1 + x_2 arrow(a)_2 + x_3 arrow(a)_3 + x_4 arrow(a)_4 = arrow(0) $ #noindent;由于 $x_1\,x_2\,x_3\,x_4$ 中至少有一个不为零，所以 $arrow(a)_1$⁠、$arrow(a)_2$⁠、$arrow(a)_3$⁠、$arrow(a)_4$ 这四个向量线性相关．

]
#blk[定义][
已知 $n$ 个向量 $arrow(a)_1\,arrow(a)_2\,arrow(a)_3\,dots.h\,arrow(a)_n$ 和 $n$ 个实数 $x_1\,x_2\,x_3\,dots.h\,x_n$, 向量 $ arrow(p) = x_1 arrow(a)_1 + x_2 arrow(a)_2 + dots.h.c + x_n arrow(a)_n $ #noindent;叫做向量 $arrow(a)_1\,arrow(a)_2\,arrow(a)_3\,dots.h\,arrow(a)_n$ 的线性组合或向量 $arrow(p)$ 的线性表示．

]
例如：$2 arrow(a)\,thick - 3 arrow(a)\,thick - 1 / 2 arrow(a)$ 都是 $arrow(a)$ 的线性组合；$2 arrow(a)_1 + 3 arrow(a)_2\,thick - 2 arrow(a)_1 + 7 arrow(a)_2$ 等都是 $arrow(a)_1$ 与 $arrow(a)_2$ 的线性组合；$5 arrow(a)_1 + 4 arrow(a)_2 - 3 arrow(a)_3\,thick 2 arrow(a)_1 - 1 / 2 arrow(a)_2 + sqrt(2) arrow(a)_3$ 等都是 $arrow(a)_1$⁠、$arrow(a)_2$⁠、$arrow(a)_3$ 的线性组合．

由平行向量定理可知，如果 $arrow(e)$ 是空间中的一个非零向量，那么 $arrow(e)$ 的所有线性组合 $\{ x arrow(e) \}$ 能生成与 $arrow(e)$ 平行的全体向量．

由共面向量定理可知，如果 $arrow(e)_1$⁠、$arrow(e)_2$ 是平面上两个线性无关的向量，那么 $arrow(e)_1$⁠、$arrow(e)_2$ 的所有线性组合 $\{ x_1 arrow(e)_1 + x_2 arrow(e)_2 \}$ 能生成这平面上的全体向量；这时 $\{ arrow(e)_1\,arrow(e)_2 \}$ 叫做此平面全体向量的一个#strong[基底]，$arrow(e)_1$⁠、$arrow(e)_2$ 分别叫做#strong[基底向量]．

由空间向量定理可知，如果 $arrow(e)_1$⁠、$arrow(e)_2$⁠、$arrow(e)_3$ 是空间三个线性无关的向量，那么 $arrow(e)_1$⁠、$arrow(e)_2$⁠、$arrow(e)_3$ 的所有线性组合 $\{ x_1 arrow(e)_1 + x_2 arrow(e)_2 + x_3 arrow(e)_3 \}$ 能生成所有的空间向量；这时 $\{ arrow(e)_1\,arrow(e)_2\,arrow(e)_3 \}$ 叫做空间中的一个#strong[基底]，$arrow(e)_1$⁠、$arrow(e)_2$⁠、$arrow(e)_3$ 都被叫做#strong[基底向量]．

#example[
如果 $arrow(e)_1$⁠、$arrow(e)_2$⁠、$arrow(e)_3$ 不共面且 $arrow(a) = 2 arrow(e)_1 - arrow(e)_2$, $arrow(b) = arrow(e)_2 + arrow(e)_3$, $arrow(c) = 4 arrow(e)_1 - 5 arrow(e)_2 - 3 arrow(e)_3$, 问 $arrow(a)$⁠、$arrow(b)$⁠、$arrow(c)$ 是否共面？

]
#solution[
方程 $x arrow(a) + y arrow(b) + z arrow(c) = arrow(0)$⁠，等价于方程 $ x\(2 arrow(e)_1 - arrow(e)_2\)+ y\(arrow(e)_2 + arrow(e)_3\)+ z\(4 arrow(e)_1 - 5 arrow(e)_2 - 3 arrow(e)_3\)= arrow(0) $ #noindent;即：$ \(2 x + 4 z\)arrow(e)_1 +\(- x + y - 5 z\)arrow(e)_2 +\(y - 3 z\)arrow(e)_3 = arrow(0) $ #noindent;由于 $arrow(e)_1$⁠、$arrow(e)_2$⁠、$arrow(e)_3$ 不共面，即线性无关，所以，$ display(cases(2 x + 4 z = 0, - x + y - 5 z = 0, y - 3 z = 0)) $ #noindent;上面方程组的 $Delta = mat(delim: "|", 2, 0, 4; - 1, 1, - 5; 0, 1, - 3) = 0$⁠，因此方程组有一组非零解，所以 $arrow(a)$⁠、$arrow(b)$⁠、$arrow(c)$ 线性相关，即共面．

]
#example[
给定一个基底 $\{ arrow(e)_1\,arrow(e)_2\,arrow(e)_3 \}$ 且 $arrow(a) = 4 arrow(e)_1 - arrow(e)_2 + 3 arrow(e)_3\,thick arrow(b) = - 12 arrow(e)_1 + 3 arrow(e)_2 - 9 arrow(e)_3$, 问 $arrow(a)$ 与 $arrow(b)$ 是否平行．

]
#solution[
因为 $frac(- 12, 4) = frac(3, - 1) = frac(- 9, 3) = - 3$⁠，所以：$ arrow(b) = - 3 arrow(a)\,#h(2em) arrow(a) pll arrow(b) $

]
#exercise[
+ 已知 $arrow(a) = arrow(e)_1 + arrow(e)_2 - arrow(e)_3$, $arrow(b) = arrow(e)_1 - arrow(e)_2 + arrow(e)_3$, $arrow(c) = 3 arrow(e)_1 + arrow(e)_2 - arrow(e)_3$, 其中 $arrow(e)_1$⁠、$arrow(e)_2$⁠、$arrow(e)_3$ 不共面，问 $arrow(a)$⁠、$arrow(b)$⁠、$arrow(c)$ 是否共面？

+ 已知向量 $arrow(a)\,arrow(b)$ 不共线，以及 $pgram A B C D$, $accent(A B, ⃗) = 3 arrow(a)$, $accent(A D, ⃗) = 2 arrow(b)$, 求 $pgram A B C D$ 两对角线上的向量．

+ 已知 $arrow(e)_1\,arrow(e)_2\,arrow(e)_3$ 线性无关且 $arrow(a) = arrow(e)_1 + 2 arrow(e)_2$, $arrow(b) = 2 arrow(e)_1 + arrow(e)_2$, $arrow(c) = arrow(e)_1 - 3 arrow(e)_2$, 求证：$arrow(a)\,arrow(b)\,arrow(c)$ 线性无关．

+ 已知 $arrow(e)_1\,arrow(e)_2$ 线性无关且 $arrow(a) = 3 arrow(e)_1 + 4 arrow(e)_2$, $arrow(b) = alpha arrow(e)_1 + beta arrow(e)_2$, 若 $arrow(a)\,arrow(b)$ 线性相关，问 $alpha\,beta$ 间有什么关系？

+ 已知 $arrow(e)_1\,arrow(e)_2$ 线性无关，若 $arrow(a) = a_1 arrow(e)_1 + a_2 arrow(e)_2$, $arrow(b) = b_1 arrow(e)_1 + b_2 arrow(e)_2$, 如果 $arrow(a)\,arrow(b)$ 线性相关．证明：$ a_1 b_2 - a_2 b_1 = 0 quad upright("即") quad mat(delim: "|", a_1, a_2; b_1, b_2) = 0 $

+ 给定一个基底 $\{ arrow(e)_1\,arrow(e)_2\,arrow(e)_3 \}$, 问向量 $arrow(a)$⁠、$arrow(b)$ 是否线性相关？

  + $arrow(a) = arrow(e)_1 + 2 arrow(e)_2 - arrow(e)_3\,quad arrow(b) = - 4 arrow(e)_1 - 8 arrow(e)_2 + 4 arrow(e)_3$

  + $arrow(a) = 1 / 2 arrow(e)_1 - 2 / 3 arrow(e)_2 + 2 arrow(e)_3\,quad arrow(b) = - 3 / 4 arrow(e)_1 + arrow(e)_2 - 3 arrow(e)_3$

  + $arrow(a) = arrow(e)_1 + arrow(e)_2\,quad arrow(b) = arrow(e)_2 - arrow(e)_3$

+ 设由基本向量 $accent(A B, ⃗) = arrow(e)_1$ 及 $accent(A D, ⃗) = arrow(e)_2$ 张成一个平行四边形 $A B C D$. 点 $B_1$ 由向量 $accent(A B, ⃗)_1 = 3 / 5 arrow(e)_1$ 所确定，以顶点 $D$ 为始点的向量 $arrow(d) = 5 / 4 arrow(e)_1 - 1 / 3 arrow(e)_2$. 设此向量与 $B_1 C$ 交于 $S$. 求

  + $overline(B_1 S) : overline(S C)$

  + 试用基向量 $arrow(e)_1\,arrow(e)_2$ 表示向量 $accent(D S, ⃗)$ 及 $accent(A S, ⃗)$.

+ 已知 $accent(O A, ⃗) = arrow(a)$, $accent(O B, ⃗) = arrow(b)$, $accent(O C, ⃗) = arrow(c)$ 且 $arrow(a)\,arrow(b)\,arrow(c)$ 线性无关，由 $accent(O A, ⃗)\,accent(O B, ⃗)\,accent(O C, ⃗)$ 张成一四面体 $O - A B C$, 试证：

  + 从点 $C$ 到三角形 $O A B$ 的重心 $M$ 的向量 $ accent(C M, ⃗) = 1 / 3 (arrow(a) + arrow(b) - 3 arrow(c)) $

  + 设 $N$ 是 $triangle.stroked.t A B C$ 的重心，$overline(O N)$ 与 $overline(C M)$ 相交于四面体的中心 $S$, 其比例为3:1.

  + 试证：$accent(O S, ⃗) = 1 / 4 (arrow(a) + arrow(b) + arrow(c))$

+ 给定一个基底：$\{ arrow(e)_1\,arrow(e)_2\,arrow(e)_3 \}$ 且 $ arrow(a) = 4 arrow(e)_1 + arrow(e)_2\,quad arrow(b) = 3 arrow(e)_2\,quad arrow(c) = arrow(e)_1 + arrow(e)_2 + 5 arrow(e)_3\,quad arrow(d) = 8 arrow(e)_1 + 5 arrow(e)_2 + 10 arrow(e)_3 $ #noindent;若 $arrow(d) = x arrow(a) + y arrow(b) + z arrow(c)$⁠，求 $x\,y\,z$.

]
#heading(level: 3, numbering: star-numbering)[两个向量的外积]

如图3.37所示，已知三个不共面的向量 $arrow(a)\,arrow(b)\,arrow(c)$⁠，如果，我们右手的拇指顺着 $arrow(a)$ 的方向，食指顺着 $arrow(b)$ 的方向，若 $arrow(c)$ 能顺着中指的指向，则把有这样顺序的三个有序的向量组 $arrow(a)\,arrow(b)\,arrow(c)$ 称为构成#strong[右手系]．如图3.38所示，如果我们左手的拇指顺着 $arrow(a)$ 的方向、食指顺着 $arrow(b)$ 的方向，若 $arrow(c)$ 能顺着中指的指向，则把有这样顺序的三个有序的向量组 $arrow(a)\,arrow(b)\,arrow(c)$ 称为构成#strong[左手系]．显然，如果 $arrow(a)\,arrow(b)\,arrow(c)$ 构成右手系，那么把 $arrow(a)\,arrow(b)\,arrow(c)$ 循环轮换所得到的向量组 $(arrow(b) \, arrow(c) \, arrow(a))$, $(arrow(c) \, arrow(a) \, arrow(b))$ 也是右手系．如果 $arrow(a)\,arrow(b)\,arrow(c)$ 构成右手系，任意换两个向量的顺序，如 $arrow(b)$ 和 $arrow(a)$, 则 $(arrow(b) \, arrow(a) \, arrow(c))$ 构成左手系．

#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("3-45");], caption: []), figure([#fig("3-46");], caption: []))));

已知向量 $arrow(a)\,arrow(b)$⁠，如果一个向量满足下面三个条件（图3.39）

#figure([#fig("3-47");

  ],
  caption: [
  ]
)

+ $\|arrow(c)\|=\|arrow(a)\|lr(|arrow(b)|) sin chevron.l arrow(a)\,arrow(b) chevron.r$⁠，这就是说 $arrow(c)$ 的长度在数量上等于以 $arrow(a)\,arrow(b)$ 为两相邻边向量的平行四边形的面积；

+ 向量 $arrow(c)$ 同时垂直于 $arrow(a)$ 和 $arrow(b)$⁠；

+ $arrow(a)\,arrow(b)\,arrow(c)$ 构成右手系．

那么，向量 $arrow(c)$ 就叫做 $arrow(a)$ 与 $arrow(b)$ 的外积，并且用记号 $arrow(a) times arrow(b)$ 来表示，于是 $ arrow(c) = arrow(a) times arrow(b) $

如果把 $arrow(a) times arrow(b)$ 的单位向量记为 $arrow(e)$, 则 $ arrow(a) times arrow(b) = (\|arrow(a)\| lr(|arrow(b)|) sin chevron.l arrow(a) \, arrow(b) chevron.r) dot.op arrow(e) $ #noindent;其中：$arrow(e) dot.op arrow(a) = 0$, $arrow(e) dot.op arrow(b) = 0$, $arrow(a)\,arrow(b)\,arrow(e)$ 构成右手系．

由上述定义，我们容易推知 $ arrow(a) times arrow(b) = arrow(0) quad arrow.l.r.double.long quad arrow(a) pll arrow(b) $

向量的外积运算最显著的特点之一是它不满足交换律，即 $ arrow(a) times arrow(b) eq.not arrow(b) times arrow(a) $ #noindent;由外积的定义，$arrow(a) times arrow(b)$ 与 $arrow(b) times arrow(a)$ 它们的长度相等而方向相反，这就是说#numbered-eq($ arrow(a) times arrow(b) = - arrow(b) times arrow(a) $);#noindent;这种性质通常叫做外积的#strong[斜对称性]．

向量的外积对数乘满足结合律，对向量加法满足分配律，即#numbered-eq($ (lambda arrow(a)) times arrow(b) = arrow(a) times (lambda arrow(b)) = lambda (arrow(a) times arrow(b)) $); #numbered-eq($ (arrow(a) + arrow(b)) times arrow(c) = arrow(a) times arrow(c) + arrow(b) times arrow(c) $);

式 (3.8) 由外积的定义可直接证明，把它留给同学作为练习．现在我们来证明 (3.9).

#figure([#fig("3-48");

  ],
  caption: [
  ]
)

#proof[
设 $arrow(c)_0$ 是 $arrow(c)$ 的单位向量（即与 $arrow(c)$ 方向相同的单位向量），我们先证明 $ (arrow(a) + arrow(b)) times arrow(c)_0 = arrow(a) times arrow(c)_0 + arrow(b) times arrow(c)_0 $ #noindent;如图3.40所示，作 $accent(O A, ⃗) = arrow(a)$, $accent(O B, ⃗) = arrow(b)$, $accent(O C_0, ⃗) = arrow(c)_0$, 把 $accent(O A, ⃗)$ 垂直投影到与 $accent(O C_0, ⃗)$ 垂直平面 $pi$ 上，得到向量 $accent(O A_1, ⃗)$, 再把 $accent(O A_1, ⃗)$ 在平面 $pi$ 上沿顺时针方向旋转 $pi / 2$ 的角得到另一向量 $accent(O A_2, ⃗)$, 由于 $ \|accent(O A_2, ⃗)\|=\|accent(O A_1, ⃗)\|=\|arrow(a)\|sin chevron.l arrow(a)\,arrow(c)_0 chevron.r $ #noindent;又 $arrow(a)\,arrow(c)_0$ 与 $accent(O A_2, ⃗)$ 构成右手系，所以 $accent(O A_2, ⃗) = arrow(a) times arrow(c)_0$⁠，依同样的方法可以作 $arrow(b) times arrow(c)_0$, $(arrow(a) + arrow(b)) times arrow(c)_0$⁠，由于 $arrow(a)\,arrow(b)\,arrow(a) + arrow(b)$ 是首尾相接的向量，那么它们在平面 $pi$ 上的垂直投影也同样是首尾相接的向量，再把这三个向量同时旋转 $pi / 2$ 的角，所得到的三个向量也必首尾相接，依向量和的定义就有 $ (arrow(a) + arrow(b)) times arrow(c)_0 = arrow(a) times arrow(c)_0 + arrow(b) times arrow(c)_0 $ #noindent;上式两边分别乘上 $\|arrow(c)\|$, 就可得到 $ (arrow(a) + arrow(b)) times arrow(c) = arrow(a) times arrow(c) + arrow(b) times arrow(c) $ #noindent;这就证明了向量的外积运算满足分配律．

]
#example[
求证：$(arrow(a) - arrow(b)) times (arrow(a) + arrow(b)) = 2 (arrow(a) times arrow(b))$

]
#proof[
$ (arrow(a) - arrow(b)) times (arrow(a) + arrow(b)) & = arrow(a) times arrow(a) + arrow(a) times arrow(b) - arrow(b) times arrow(a) - arrow(b) times arrow(b)\
 & = - arrow(b) times arrow(a) + arrow(a) times arrow(b)\
 & = arrow(a) times arrow(b) + arrow(a) times arrow(b) = 2 (arrow(a) times arrow(b)) $

]
#example[
已知 $O A D B - C E F G$ 是由向量 $arrow(a)\,arrow(b)\,arrow(c)$ 张成的平行六面体（图3.41），求证这平行六面体的体积 $ V = lr(|arrow(a) times arrow(b) dot.op arrow(c)|) $

]
#figure([#fig("3-49");

  ],
  caption: [
  ]
)

#proof[
设 $arrow(e)$ 为 $arrow(a) times arrow(b)$ 的单位向量，则 $ arrow(a) times arrow(b) & = (\|arrow(a)\| lr(|arrow(b)|) sin chevron.l arrow(a) \, arrow(b) chevron.r) arrow(e) = pgram O A D B upright("的面积") times arrow(e)\
arrow(a) times arrow(b) dot.op arrow(c) & = pgram O A D B upright("的面积") times\(arrow(e) dot.op arrow(c)\) $ #noindent;容易看出，

- 当 $chevron.l arrow(e)\,arrow(c) chevron.r lt.eq pi / 2$ 时（$arrow(a)\,arrow(b)\,arrow(c)$ 构成右手系或共面），$arrow(e) dot.op arrow(c)$ 是个非负数且 $arrow(e) dot.op arrow(c)$ 等于这个平行六面体的底面 $O A D B$ 上的高 $h$⁠；

- 当 $chevron.l arrow(e)\,arrow(c) chevron.r > pi / 2$ 时，$arrow(e) dot.op arrow(c) < 0$, $h = - arrow(e) dot.op arrow(c)$.

#noindent;综合上面两种情况我们有 $h =\|arrow(e) dot.op arrow(c)\|$, 所以，$ V = pgram O A D B upright("的面积") times h & = lr(|\|arrow(a)\| lr(|arrow(b)|) sin chevron.l arrow(a) \, arrow(b) chevron.r (arrow(e) dot.op arrow(c))|)\
 & = lr(|arrow(a) times arrow(b) dot.op arrow(c)|) $

]
在例3.22中 $arrow(a) times arrow(b) dot.op arrow(c)$ 是一个数量，它的绝对值表示由 $arrow(a)\,arrow(b)\,arrow(c)$ 所张成的平行六面体的体积，通常我们把 $arrow(a) times arrow(b) dot.op arrow(c)$ 叫做 $arrow(a)\,arrow(b)\,arrow(c)$ 的#strong[混合积]并记作 $(arrow(a) \, arrow(b) \, arrow(c))$, 即 $ (arrow(a) \, arrow(b) \, arrow(c)) = arrow(a) times arrow(b) dot.op arrow(c) $ #noindent;由例3.22我们还可看到如果 $arrow(a)\,arrow(b)\,arrow(c)$ 构成右手系，则 $(arrow(a) \, arrow(b) \, arrow(c)) > 0$, 如果 $arrow(a)\,arrow(b)\,arrow(c)$ 构成左手系则 $(arrow(a) \, arrow(b) \, arrow(c)) < 0$, 当 $arrow(a)\,arrow(b)\,arrow(c)$ 共面时，$(arrow(a) \, arrow(b) \, arrow(c)) = 0$, 反之，当 $(arrow(a) \, arrow(b) \, arrow(c)) > 0$ 时，$arrow(a)\,arrow(b)\,arrow(c)$ 一定构成右手系，$(arrow(a) \, arrow(b) \, arrow(c)) < 0$ 时一定构成左手系，当 $(arrow(a) \, arrow(b) \, arrow(c)) = 0$ 时，$arrow(a)\,arrow(b)\,arrow(c)$ 一定共面．

最后，我们要指出，两个向量的外积不满足结合律，例如，设 $arrow(e)_1$⁠、$arrow(e)_2$⁠、$arrow(e)_3$ 是单位向量且它们互相垂直，并构成右手系，则 $ (arrow(e)_1 times arrow(e)_1) times arrow(e)_2 & = arrow(0)\
arrow(e)_1 times (arrow(e)_1 times arrow(e)_2) & = arrow(e)_1 times arrow(e)_3 = - arrow(e)_2 $ #noindent;所以：$(arrow(e)_1 times arrow(e)_1) times arrow(e)_2 eq.not arrow(e)_1 times (arrow(e)_1 times arrow(e)_2)$

#exercise[
以下各题中 $lr(\{ arrow(e)_1 \, arrow(e)_2 \, arrow(e)_3 \})$ 是一个基底且 $arrow(e)_1\,arrow(e)_2\,arrow(e)_3$ 是互相垂直的单位向量，$arrow(e)_1\,arrow(e)_2\,arrow(e)_3$ 构成右手系．

+ #block(sticky: true)[已知：$arrow(a) = 2 arrow(e)_1 + 3 arrow(e)_3$, $arrow(b) = arrow(e)_1 - arrow(e)_2$ 求：]

  #cols(2)[
  + $arrow(a) times arrow(b)$

  + $2 arrow(a) times 3 arrow(b)$

  ]

+ #block(sticky: true)[已知：$arrow(a) = 2 arrow(e)_1 - 3 arrow(e)_2 + arrow(e)_3$, $arrow(b) = arrow(e)_1 - arrow(e)_2 + 3 arrow(e)_3$, $arrow(c) = arrow(e)_1 - 2 arrow(e)_2$, 计算下列各式：]

  #cols(2)[
  + $arrow(a) times arrow(b)$

  + $arrow(a) times arrow(b) dot.op arrow(c)$

  + $(arrow(a) + arrow(b)) times (arrow(b) + arrow(c))$

  + $(arrow(a) times arrow(b)) times arrow(c)$

  ]

+ 如果 $arrow(a)$ 和 $arrow(b)$ 都与 $arrow(c)$ 垂直，那么 $ (arrow(a) times arrow(b)) times arrow(c) = arrow(0) $ #noindent;试证明之．

+ 如果向量 $arrow(b)$ 垂直于向量 $arrow(c)$, 而向量 $arrow(a)$ 平行于向量 $arrow(c)$, 那么 $ (arrow(a) times arrow(b)) times arrow(c) = (arrow(a) dot.op arrow(c)) arrow(b) $ #noindent;试证明之.（提示：说明等式两边的向量长度相等，方向相同）

+ 对任意的向量 $arrow(a)$ 和垂直于 $arrow(c)$ 的向量 $arrow(b)$, 有 $ (arrow(a) times arrow(b)) times arrow(c) = (arrow(a) dot.op arrow(c)) arrow(b) $ #noindent;试证明之．（提示：把向量 $arrow(a)$ 分解为与 $arrow(c)$ 平行和垂直的向量和）

+ 证明：对于任意三个向量 $arrow(a)$⁠、$arrow(b)$⁠、$arrow(c)$ 有 $ (arrow(a) times arrow(b)) times arrow(c) = (arrow(a) dot.op arrow(c)) arrow(b) - (arrow(b) dot.op arrow(c)) arrow(a) $#noindent;（提示：利用上面三题的结果）

+ 证明：对空间任意三个向量 $arrow(a)$⁠、$arrow(b)$⁠、$arrow(c)$⁠，下面恒等式成立．$ (arrow(a) times arrow(b)) times arrow(c) - arrow(a) times (arrow(b) times arrow(c)) = (arrow(a) dot.op arrow(b)) arrow(c) - (arrow(b) dot.op arrow(c)) arrow(a) $

]
#heading(level: 2, numbering: none, supplement: [toc-sub])[习题3.4]

+ #block(sticky: true)[说明下列各组空间向量，哪些组里的向量线性相关，哪些组里的向量线性无关．]

  #cols(2)[
  + $arrow(0)\,thick arrow(a)$

  + $arrow(a)\,thick arrow(b) quad\(arrow(a) parallel.not arrow(b)\)$

  + $arrow(a)\,thick arrow(b) quad\(arrow(a) pll arrow(b)\)$

  + $arrow(a)\,thick arrow(b)\,thick arrow(c)$ 共面

  + $arrow(a)\,thick arrow(b)\,thick arrow(c) quad\(arrow(a) pll arrow(b)\)$

  + $arrow(a)\,thick arrow(b)\,thick arrow(c)$ 中每两个向量都不平行

  + $arrow(a)\,thick arrow(b)\,thick arrow(c)\,thick arrow(d)$ 中，每三个都不共面

  + $arrow(a)\,thick arrow(b)\,thick arrow(c)\,thick arrow(d)$ 中，$arrow(a)\,thick arrow(b)\,thick arrow(c)$ 共面

  + $arrow(a)\,thick arrow(b)\,thick arrow(c)\,thick arrow(d)\,thick arrow(e)$ 不共面

  ]

+ #block(sticky: true)[已知 $lr(\{ arrow(e)_1 \, arrow(e)_2 \, arrow(e)_3 \})$ 构成右手系单位正交基底．计算：]

  #cols(2)[
  + $arrow(e)_3 dot.op (arrow(e)_1 + arrow(e)_2)$

  + $(arrow(e)_1 - 2 arrow(e)_2) dot.op (arrow(e)_2 + 3 arrow(e)_3)$

  + $(4 arrow(e)_1 - arrow(e)_2 + 3 arrow(e)_3) dot.op (3 arrow(e)_1 + 2 arrow(e)_2 - arrow(e)_3)$

  + $2 arrow(e)_2 times (3 arrow(e)_1 - 4 arrow(e)_3)$

  + $(2 arrow(e)_1 - 4 arrow(e)_3) times (arrow(e)_1 + 2 arrow(e)_2)$

  ]

+ 求证：$(arrow(a) + arrow(b)) times (arrow(b) + arrow(c)) dot.op (arrow(c) + arrow(a)) = 2 arrow(a) times arrow(b) dot.op arrow(c)$

+ 已知：三个向量 $arrow(a)\,arrow(b)\,arrow(c)$ 满足条件 $arrow(a) + arrow(b) + arrow(c) = arrow(0)$⁠．求证：$arrow(a) times arrow(b) = arrow(b) times arrow(c) = arrow(c) times arrow(a)$.

+ 用向量外积运算证明三角形中的正弦定理，即 $ frac(a, sin A) = frac(b, sin B) = frac(c, sin C) $#noindent;（提示：利用 (5) 的结论）

+ 求证：$lr(|arrow(a) times arrow(b)|)^2 = (arrow(a) dot.op arrow(a)) (arrow(b) dot.op arrow(b)) - (arrow(a) dot.op arrow(b))^2$⁠，说明这个恒等式的几何意义．

+ 已知 $\|arrow(a)\|= 3$, $\|arrow(b)\|= 2$⁠，求：$(arrow(a) times arrow(b)) dot.op (arrow(a) times arrow(b)) + (arrow(a) dot.op arrow(b))^2$

#heading(level: 2, numbering: none, outlined: true)[复习题三]

+ #block(sticky: true)[如果 $arrow(a)$⁠、$arrow(b)$ 满足下列各式，试问 $arrow(a)$ 和 $arrow(b)$ 之间有什么关系．]

  #cols(2)[
  + $lr(|arrow(a) + arrow(b)|) = lr(|arrow(a) - arrow(b)|)$

  + $arrow(a) + arrow(b) = lambda (arrow(a) - arrow(b))$

  + $arrow(a) / lr(|arrow(a)|) = arrow(b) / lr(|arrow(b)|)$

  + $lr(|arrow(a) + arrow(b)|) = lr(|arrow(a)|) + lr(|arrow(b)|)$

  + $lr(|arrow(a) + arrow(b)|) = lr(|arrow(a)|) - lr(|arrow(b)|)$

  + $lr(|arrow(a) - arrow(b)|) = lr(|arrow(a)|) + lr(|arrow(b)|)$

  ]

+ 已知 $accent(O A, ⃗) = arrow(a)$, $accent(O B, ⃗) = arrow(b)$ 且 $arrow(a)$⁠、$arrow(b)$ 不共线，求 $accent(O A, ⃗)$ 与 $accent(O B, ⃗)$ 夹角平分线上的一个单位向量．

+ 已知 $arrow(a) eq.not arrow(0)$, $arrow(b) eq.not arrow(0)$, 两个实数 $alpha$⁠、$beta$ 满足方程；$ alpha frac(arrow(a), \|arrow(a)\|) + beta frac(arrow(b), \|arrow(b)\|) = arrow(0) $ #noindent;问 $alpha$⁠、$beta$ 之间应具有什么关系．

+ 如果 $arrow(a)\,arrow(b)\,arrow(c)$ 是三个单位向量且 $arrow(a) + arrow(b) + arrow(c) = arrow(0)$. 试求 $arrow(a) dot.op arrow(b) + arrow(b) dot.op arrow(c) + arrow(c) dot.op arrow(a)$ 的值．

+ 已知 $O$ 是正 $n$ 边形 $A_1 A_2 A_3 dots.h.c A_n$ 的中心，求证 $ accent(O A_1, ⃗) + accent(O A_2, ⃗) + accent(O A_3, ⃗) + dots.h.c + accent(O A_n, ⃗) = arrow(0) $

+ 已知 $triangle.stroked.t A B C$, $O$ 是空间一点，试证 $ accent(O A, ⃗) + accent(O B, ⃗) + accent(O C, ⃗) = arrow(0) $ #noindent;的充要条件是：$O$ 点是三角形的重心．

+ 在坐标系 $o x y$ 平面上，已知图形 $F$ 以坐标原点 $O$ 为对称中心，证明：始点是公共的且终点是图形 $F$ 的整数点的向量的和等于零的充要条件是：坐标原点是向量的公共始点．

+ 如果 $arrow(a) = 4 arrow(e)_1 - arrow(e)_2$, $arrow(b) = arrow(e)_1 + 2 arrow(e)_2$, $arrow(c) = 2 arrow(e)_1 - 3 arrow(e)_2$ 且 $\{ arrow(e)_1\,arrow(e)_2 \}$ 为标准正交基底，化简表示式 $ arrow(a) dot.op arrow(a) + 3\(arrow(a) dot.op arrow(b)\)- 2\(arrow(b) dot.op arrow(c)\)+ 1 $

+ 如果 $\|arrow(e)_1\|= 2 sqrt(2)$, $\|arrow(e)_2\|= 3$, $chevron.l arrow(e)_1\,arrow(e)_2 chevron.r = pi / 4$ 且 $arrow(a) = 5 arrow(e)_1 + 2 arrow(e)_2$, $arrow(b) = arrow(e)_1 - 3 arrow(e)_2$, 试计算以 $arrow(a)\,arrow(b)$ 为边向量的平行四边形的两条对角线的长和面积．

+ 已知 $arrow(a) = alpha arrow(e)_1 + 17 arrow(e)_2$, $arrow(b) = 3 arrow(e)_1 - arrow(e)_2$, 问 $alpha$ 为何值时 $arrow(a) tack.t arrow(b)$.

+ 已知 $pgram O A C B$ 且 $accent(O A, ⃗) = arrow(a)$, $accent(O B, ⃗) = arrow(b)$, 试用 $arrow(a)\,arrow(b)$ 表示 $accent(O A, ⃗)$ 边上的高向量 $accent(B D, ⃗)$.

  #fig-center[
  #fig("3-50");

  #subcap[
  第11题

  ]
  ]
