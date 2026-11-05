// 由 typst/tools/tex2typ.py 从 math5/5.tex 转换而来，已人工校对的部分以本文件为准。
#import "../common/template.typ": *
#import "figs.typ": fig
#import "defs.typ": *

= 向量的坐标运算~~直线与圆
== 向量的坐标运算
=== 直角坐标系与向量的坐标
在初中，我们已学习了平面直角坐标系，其要点如下：选定一个长度单位，建立两条具有公共原点且互相垂直的数轴（图5.1），通常一条为水平的数轴，称为横轴或 $X$ 轴，它的正向是由左到右，另一条是和它垂直的轴称为纵轴或 $Y$ 轴，它的正向是从下到上．$X$ 轴、$Y$ 轴总称为坐标轴、坐标轴的交点 $O$ 称为坐标系的原点，这样我们就说在平面上建立了直角坐标系 $O X Y$, 这个平面就叫做坐标平面，在坐标平面上任取一点 $P$, 过 $P$ 引 $X$ 轴、$Y$ 轴的垂线，设垂足分别是 $M$⁠、$N$, 如果 $M$ 在 $X$ 轴上的坐标为 $x$, $N$ 在 $Y$ 轴上的坐标为 $y$, 那么我们就说 $P$ 点的坐标是 $\(x\,y\)$, 记作 $P\(x\,y\)$, $x$ 称为横坐标，$y$ 称为纵坐标．

#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("5-01");], caption: []), figure([#fig("5-02");], caption: []))));

在建立直角坐标系 $O X Y$ 的平面上（图5.2），我们沿 $X$ 轴与 $Y$ 轴的正方向分别取单位向量 $arrow(e)_x$⁠、$arrow(e)_y$, 由共面向量定理可知，对坐标平面上任一向量 $arrow(a)$, 存在唯一的有序实数偶 $\(a_x\,a_y\)$ 使#numbered-eq($ arrow(a) = a_x arrow(e)_x + a_y arrow(e)_y $);#noindent; $\(a_x\,a_y\)$ 就叫做 $arrow(a)$ 在直角坐标系 $O X Y$ 上的坐标，记作#numbered-eq($ arrow(a) =\(a_x\,a_y\) $);#noindent;实质上 (5.2) 式是 (5.1) 式的缩写；其中 $a_x$ 叫做 $arrow(a)$ 在 $X$ 轴上的坐标分量，$a_y$ 叫做 $arrow(a)$ 在 $Y$ 轴上的坐标分量．

#blk[定理][
在坐标平面上，如果 $arrow(a) =\(a_x\,a_y\)$, 则#numbered-eq($ a_x & = arrow(e)_x dot.op arrow(a) =\|arrow(a)\|cos chevron.l arrow(e)_x\,arrow(a) chevron.r\
a_y & = arrow(e)_y dot.op arrow(a) =\|arrow(a)\|cos chevron.l arrow(e)_y\,arrow(a) chevron.r $);

]
#proof[
已知 $arrow(a) = a_x arrow(e)_x + a_y arrow(e)_y$⁠，则 $ arrow(e)_x dot.op arrow(a) & = arrow(e)_x dot.op\(a_x arrow(e)_x + a_y arrow(e)_y\)= a_x arrow(e)_x dot.op arrow(e)_x + a_y arrow(e)_x dot.op arrow(e)_y\
arrow(e)_y dot.op arrow(a) & = arrow(e)_y dot.op\(a_x arrow(e)_x + a_y arrow(e)_y\)= a_x arrow(e)_y dot.op arrow(e)_x + a_y arrow(e)_y dot.op arrow(e)_y $ #noindent;由于 $arrow(e)_x\,arrow(e)_y$ 是单位向量，且 $arrow(e)_x tack.t arrow(e)_y$, 所以，$ arrow(e)_x dot.op arrow(e)_x = arrow(e)_y dot.op arrow(e)_y = 1\,#h(2em) arrow(e)_x dot.op arrow(e)_y = arrow(e)_y dot.op arrow(e)_x = 0 $ #noindent;于是得到 $ a_x & = arrow(e)_x dot.op arrow(a) =\|arrow(a)\|cos chevron.l arrow(e)_x\,arrow(a) chevron.r\
a_y & = arrow(e)_y dot.op arrow(a) =\|arrow(a)\|cos chevron.l arrow(e)_y\,arrow(a) chevron.r $

]
这个定理说的是，#strong[向量 ]$arrow(a)$#strong[ 在 ]$X$#strong[ 轴和 ]$Y$#strong[ 轴上的坐标分量分别是 ]$arrow(a)$#strong[ 在坐标轴上的垂直投影量]．

显然，$arrow(o) =\(0\,0\)$, $arrow(e)_x =\(1\,0\)$, $arrow(e)_y =\(0\,1\)$. 令 $⟨arrow(e)_x \, arrow(a)⟩ = alpha$, $⟨arrow(e)_y \, arrow(a)⟩ = beta$⁠，$alpha\,beta$ 一起决定了 $arrow(a)$ 的方向，$alpha\,beta$ 叫做 $arrow(a)$ 的#strong[方向角]，$cos alpha$, $cos beta$ 叫做 $arrow(a)$ 的#strong[方向余弦]，上述定理表达了向量的长度、方向与它的坐标之间的关系，甚为重要，请同学要把它牢牢记住．

如果在坐标平面上（图5.3），以 $O$ 为起点引 $accent(O A, ⃗) = arrow(a)$, 则 $A$ 点的位置被 $arrow(a)$ 所唯一确定，这时，我们称 $accent(O A, ⃗)$ 为点 $A$ 的#strong[位置向量]．换句话说，$A$ 点的位置向量也就是确定 $A$ 点相对于原点位置的向量．设 $accent(O P, ⃗) = x arrow(e)_x + y arrow(e)_y$⁠，则 $accent(O P, ⃗)$ 的坐标 $\(x\,y\)$ 也就是 $P$ 点的坐标；反之，$P$ 点的坐标 $\(x\,y\)$ 也就是位置向量 $accent(O P, ⃗)$ 的坐标．由此可见，给定了原点 $O$ 和两个互相垂直的单位向量 $arrow(e)_x\,arrow(e)_y$, 坐标系也就完全确定了，因而，坐标系 $O X Y$ 也可用 $\[O : thick arrow(e)_x\,arrow(e)_y\]$ 来表示，$arrow(e)_x\,arrow(e)_y$ 叫做坐标系的#strong[基向量]．

#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("5-03");], caption: []), figure([#fig("5-04");], caption: []))));

为了方便，在本书中我们约定，当点用大写字母标记时，它相对于原点的位置向量用相应的小写字母来标记，例如 $P$ 点的位置向量记为 $arrow(p)$, $A$ 点的位置向量记为 $arrow(a)$ 等等．

#example[
向量 $arrow(a)$⁠、$arrow(b)$⁠、$arrow(c)$ 的方向与绝对值如图5.4所示，求 $arrow(a)$⁠、$arrow(b)$⁠、$arrow(c)$ 的坐标．

]
#solution[
设 $arrow(a) =\(a_x\,a_y\)$, $arrow(b) =\(b_x\,b_y\)$, $arrow(c) =\(c_x\,c_y\)$, 因此：$ a_x & = arrow(e)_x dot.op arrow(a) =\|arrow(a)\|cos ⟨arrow(e)_x \, arrow(a)⟩ = 2 cos 45 degree = sqrt(2)\
a_y & =\|arrow(a)\|cos ⟨arrow(e)_y \, arrow(a)⟩ = 2 cos 45 degree = sqrt(2) $ #noindent;$therefore quad arrow(a) = (sqrt(2) \, sqrt(2))$ $ b_x & =\|arrow(b)\|cos ⟨arrow(e)_x \, arrow(b)⟩ = 3 cos\(180 degree - 60 degree\)= - 3 cos 60 degree = - 3 / 2\
b_y & =\|arrow(b)\|cos ⟨arrow(e)_y \, arrow(b)⟩ = 3 cos\(90 degree - 60 degree\)= 3 cos 30 degree = 3 / 2 sqrt(3) $ #noindent;$therefore quad arrow(b) = (- 3 / 2 \, 3 / 2 sqrt(3))$ $ c_x & =\|arrow(c)\|cos ⟨arrow(e)_x \, arrow(c)⟩ = 4 cos 30 degree = 2 sqrt(3)\
c_y & =\|arrow(c)\|cos ⟨arrow(e)_y \, arrow(c)⟩ = 4 cos\(30 degree + 90 degree\)= - 4 sin 30 degree = - 2 $ #noindent;$therefore quad arrow(c) = (2 sqrt(3) \, - 2)$

]
#exercise[
+ 求图中向量的坐标．

+ 已知 $A\(4\,2\)$, $B\(- 2\,5\)$, $C\(- 4\,- 3\)$, $D\(4\,- 4\)$. 试用基向量 $arrow(e)_x\,arrow(e)_y$ 表示它们相对于原点的位置向量．

+ 已知 $accent(O A, ⃗) =\(3\,- 1\)$, $accent(O B, ⃗) =\(2\,3\)$. 试写出 $A$⁠、$B$ 两点的坐标．

]
#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, [#fig("5-05");

#subcap[
第1题

]], [#fig("5-06");

#subcap[
第2题

]])));

=== 用向量坐标进行向量运算
已知向量 $arrow(a) =\(a_x\,a_y\)$, $arrow(b) =\(b_x\,b_y\)$⁠，则 $ arrow(a) + arrow(b) =\(a_x arrow(e)_x + a_y arrow(e)_y\)+\(b_x arrow(e)_x + b_y arrow(e)_y\)=\(a_x + b_x\)arrow(e)_x +\(a_y + b_y\)arrow(e)_y $ #noindent;即 $ arrow(a) + arrow(b) =\(a_x\,a_y\)+\(b_x\,b_y\)=\(a_x + b_x\,a_y + b_y\) $ #noindent;同样可证：$ arrow(a) - arrow(b) =\(a_x\,a_y\)-\(b_x\,b_y\)=\(a_x - b_x\,a_y - b_y\) $

这就是说#strong[向量的和与差的坐标等于各向量相应坐标的和与差]．

已知 $arrow(a) =\(a_x\,a_y\)$ 和一实数 $lambda$⁠，则 $ lambda arrow(a) = lambda\(a_x arrow(e)_x + a_y arrow(e)_y\)= lambda a_x arrow(e)_x + lambda a_y arrow(e)_y $ #noindent;即：$lambda arrow(a) = lambda\(a_x\,a_y\)=\(lambda a_x\,lambda a_y\)$.

这就是说#strong[向量倍积的坐标等于该向量相应的坐标与倍数的乘积]．

已知 $arrow(a) =\(a_x\,a_y\)$, $arrow(b) =\(b_x\,b_y\)$, 则 $ arrow(a) dot.op arrow(b) & =\(a_x arrow(e)_x + a_y arrow(e)_y\)dot.op\(b_x arrow(e)_x + b_y arrow(e)_y\)\
 & = a_x b_x arrow(e)_x dot.op arrow(e)_x + a_x b_y arrow(e)_y dot.op arrow(e)_x + a_y b_x arrow(e)_y dot.op arrow(e)_x + a_y b_y arrow(e)_y dot.op arrow(e)_y $ #noindent;由于 $arrow(e)_x dot.op arrow(e)_x = arrow(e)_y dot.op arrow(e)_y = 1$, $arrow(e)_x dot.op arrow(e)_y = arrow(e)_y dot.op arrow(e)_x = 0$⁠，所以 $ arrow(a) dot.op arrow(b) =\(a_x\,a_y\)dot.op\(b_x\,b_y\)= a_x b_x + a_y b_y $

这就是说#strong[两个向量内积的坐标等于两向量相应坐标的乘积的和]．

#example[
已知 $arrow(a) =\(5\,- 3\)$, $arrow(b) =\(3\,2\)$.

求 $arrow(a) + arrow(b)$, $arrow(a) - arrow(b)$, $arrow(a) dot.op arrow(b)$, $3 arrow(a) + 2 arrow(b)$.

]
#solution[
$ arrow(a) + arrow(b) & =\(5\,- 3\)+\(3\,2\)=\(8\,- 1\)\
arrow(a) - arrow(b) & =\(5\,- 3\)-\(3\,2\)=\(2\,- 5\)\
arrow(a) dot.op arrow(b) & =\(5\,- 3\)dot.op\(3\,2\)= 5 times 3 +\(- 3\)times 2 = 9\
3 arrow(a) + 2 arrow(b) & = 3\(5\,- 3\)+ 2\(3\,2\)=\(15\,- 9\)+\(6\,4\)=\(21\,- 5\) $

]
#example[
已知 $A\(x_1\,y_1\)$, $B\(x_2\,y_2\)$. 求 $accent(A B, ⃗)$ 的坐标（图5.5）.

]
#figure([#fig("5-07");

  ],
  caption: [
  ]
)

#solution[
$ accent(A B, ⃗) = accent(O B, ⃗) - accent(O A, ⃗) & =\(x_2\,y_2\)-\(x_1\,y_1\)\
 & =\(x_2 - x_1\,y_2 - y_1\) $

]
由例5.3我们可得到如下运算法则：

#blk[][
一个向量的坐标等于表示此向量的有向线段的终点的坐标减去起点的坐标．

]
#example[
已知 $A\(3\,4\)$, $B\(- 2\,7\)$. 求 $accent(A B, ⃗)$, $accent(B A, ⃗)$\; 它们的坐标之间有什么关系？

]
#solution[
$ accent(A B, ⃗) & =\(- 2 - 3\,7 - 4\)=\(- 5\,3\)\
accent(B A, ⃗) & =\(3 -\(- 2\)\,4 - 7\)=\(5\,- 3\). $ #noindent;显然它们的相应的坐标分量是互为相反数．实际上 $ accent(B A, ⃗) =\(- 1\)accent(A B, ⃗) =\(- 1\)\(- 5\,3\)=\(5\,- 3\) $

]
#example[
已知三个向量 $arrow(a)$⁠、$arrow(b)$⁠、$arrow(c)$⁠，且 $\|arrow(a)\|=\|arrow(b)\|=\|arrow(c)\|= r$. $⟨arrow(a) \, arrow(b)⟩ = ⟨arrow(b) \, arrow(c)⟩ = ⟨arrow(c) \, arrow(a)⟩ = 120 degree$ (图5.6)，求证：$arrow(a) + arrow(b) + arrow(c) = arrow(0)$.

]
#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("5-08");], caption: []), figure([#fig("5-09");], caption: []))));

#proof[
设 $accent(O A, ⃗) = arrow(a)$, $accent(O B, ⃗) = arrow(b)$, $accent(O C, ⃗) = arrow(c)$, 以 $accent(O A, ⃗)$ 的方向作为 $X$ 轴的正方向建立坐标系 $\[O : thick arrow(e)_x\,arrow(e)_y\]$ 则 $ accent(O A, ⃗) & =\(r\,0\)\
accent(O B, ⃗) & = (\| arrow(b) \| cos 120 degree \, \| arrow(b) \| cos 30 degree) = (- r / 2 \, sqrt(3) / 2 r)\
accent(O C, ⃗) & = (\| arrow(c) \| cos 120 degree \, \| arrow(c) \| cos 150 degree) = (- r / 2 \, - sqrt(3) / 2 r)\
accent(O A, ⃗) + accent(O B, ⃗) + accent(O C, ⃗) & =\(r\,0\)+ (- r / 2 \, sqrt(3) / 2 r) + (- r / 2 \, - sqrt(3) / 2 r)\
 & = (r - r / 2 - r / 2 \, 0 + sqrt(3) / 2 r - sqrt(3) / 2 r) =\(0\,0\) $ #noindent;$therefore quad arrow(a) + arrow(b) + arrow(c) = arrow(0)$.

]
#example[
已知 $pgram A B C D$, $A\(0\,1\)$⁠、$B\(4\,3\)$⁠、$C\(2\,5\)$

求顶点 $D$ 的坐标（图5.7）.

]
#solution[
$ accent(O D, ⃗) = accent(O A, ⃗) + accent(A D, ⃗) & = accent(O A, ⃗) + accent(B C, ⃗)\
 & = accent(O A, ⃗) + accent(O C, ⃗) - accent(O B, ⃗)\
 & =\(0\,1\)+\(2\,5\)-\(4\,3\)=\(- 2\,3\) $ #noindent;所以 $D$ 的坐标是 $\(- 2\,3\)$.

]
#exercise[
+ 已知 $arrow(a) =\(- 5\,3\)$, $arrow(b) =\(7\,- 2\)$. 求 $arrow(a) + arrow(b)$, $arrow(a) - arrow(b)$, $arrow(a) dot.op arrow(b)$, $4 arrow(a) - 7 arrow(b)$ 的坐标．

+ 已知 $arrow(a) =\(2\,- 1\)$, $arrow(b) =\(- 1\,1\)$. 求 $arrow(a) + arrow(b)$, $arrow(a) - arrow(b)$ 的坐标，并画图验证．

+ 已知 $arrow(a) =\(1\,2\)$, $arrow(b) =\(3\,1\)$. 试以 $O$ 为起点画有向线段，分别表示 $arrow(a) + arrow(b)$, $arrow(a) - arrow(b)$, $2 arrow(a) - 3 arrow(b)$.

+ #block(sticky: true)[已知 $arrow(a) =\(1\,2\)$, $arrow(b) =\(- 2\,3\)$. 求]

  #cols(2)[
  + $arrow(a) dot.op arrow(b)$,

  + $\(arrow(a) + arrow(b)\)dot.op\(arrow(a) + arrow(b)\)$,

  + $\(arrow(a) + arrow(b)\)dot.op\(arrow(a) - arrow(b)\)$,

  + $\(arrow(a) - arrow(b)\)dot.op\(arrow(a) - arrow(b)\)$.

  ]

+ #block(sticky: true)[已知 $arrow(a) =\(sqrt(2)\,- 1\)$, $arrow(b) =\(- sqrt(3)\,3\)$. 求]

  #cols(3)[
  + $arrow(a) dot.op arrow(b)$

  + $\(4 arrow(a) - arrow(b)\)dot.op\(4 arrow(a) + arrow(b)\)$

  + $\(arrow(a) - 2 arrow(b)\)dot.op\(arrow(a) - 2 arrow(b)\)$

  ]

+ 已知 $pgram A B C D$ 的三个顶点 $A\(0\,0\)$, $B\(3\,1\)$, $C\(4\,3\)$. 试求顶点 $D$ 的坐标．

+ 已知 $O$ 是正六边形 $A B C D E F$ 的中心，用向量坐标运算证明：$ accent(O A, ⃗) + accent(O B, ⃗) + accent(O C, ⃗) + accent(O D, ⃗) + accent(O E, ⃗) + accent(O F, ⃗) = arrow(0) $

]
=== 垂直与平行向量的坐标关系
已知 $arrow(a)$⁠、$arrow(b) thick\(arrow(b) eq.not arrow(0)\)$ 平行的充要条件是存在一个实数 $lambda$ 使等式 $ arrow(a) = lambda arrow(b) $ #noindent;成立．如果 $arrow(a) =\(a_x\,a_y\)$, $arrow(b) =\(b_x\,b_y\)$, 那么上面的充要条件用坐标表示，可写为：$ \(a_x\,a_y\)=\(lambda b_x\,lambda b_y\) $ #noindent;即：$ display(cases(a_x = lambda b_x, a_y = lambda b_y)) $

由上式消去 $lambda$, 上述条件又可写为：$ mat(delim: "|", a_x, a_y; b_x, b_y) = 0 $ #noindent;或：$a_x : b_x = a_y : b_y$.

上述结论可叙述为如下定理．

#blk[定理][
两个向量平行的一个充分必要条件是它们相应的坐标分量成比例．

]
#blk[推论][
如果 $A\(x_1\,y_1\)$, $B\(x_2\,y_2\)$, $C\(x_3\,y_3\)$ 是坐标平面上三个不同的点，那么 $A$⁠、$B$⁠、$C$ 三点共线的一个充要条件是 $ frac(x_2 - x_1, x_3 - x_1) = frac(y_2 - y_1, y_3 - y_1) $ #noindent;或者用三阶行列式写为 $ mat(delim: "|", x_1, y_1, 1; x_2, y_2, 1; x_3, y_3, 1) = 0 $

]
#proof[
因为 $ accent(A B, ⃗) =\(x_2 - x_1\,y_2 - y_1\)\,#h(2em) accent(A C, ⃗) =\(x_3 - x_1\,y_3 - y_1\) $ #noindent;由于 $A$⁠、$B$⁠、$C$ 三点共线的充要条件是 $accent(A B, ⃗) pll accent(A C, ⃗)$⁠，所以，由上述定理便得到 $ frac(x_2 - x_1, y_2 - y_1) = frac(x_3 - x_1, y_3 - y_1) $ #noindent;即：$ mat(delim: "|", x_2 - x_1, x_3 - x_1; y_2 - y_1, y_3 - y_1) = 0 $ #noindent;从行列式计算法则容易证明：$ mat(delim: "|", x_2 - x_1, x_3 - x_1; y_2 - y_1, y_3 - y_1) = mat(delim: "|", x_1, y_1, 1; x_2, y_2, 1; x_3, y_3, 1) = 0 $

]
我们已知 $ arrow(a) tack.t arrow(b) quad arrow.l.r.double.long quad arrow(a) dot.op arrow(b) = 0 $ #noindent;如果 $arrow(a) =\(a_x\,a_y\)$⁠、$arrow(b) =\(b_x\,b_y\)$, 那么上述条件用坐标表示可写为 $ arrow(a) tack.t arrow(b) quad arrow.l.r.double.long quad a_x b_x + a_y b_y = 0 $

这也可写为如下定理：

#blk[定理][
两个向量垂直的充要条件是它们相应坐标的乘积的和等于零．

]
#example[
已知 $arrow(a) =\(3\,y\)$, $arrow(b) =\(6\,4\)$ 且 $arrow(a) pll arrow(b)$. 求 $y$ 值．

]
#solution[
因为 $arrow(a) pll arrow(b)$⁠，所以 $ 6 / 3 = 4 / y $ #noindent;解之得 $y = 2$.

]
#example[
已知 $A\(1\,1\)$, $B\(3\,5\)$, $C\(- 2\,- 5\)$. 问：$A$⁠、$B$⁠、$C$ 三点是否共线．

]
#solution[
因为 $accent(A B, ⃗) =\(2\,4\)$, $accent(A C, ⃗) =\(- 3\,- 6\)$, 且 $ mat(delim: "|", 2, 4; - 3, - 6) = - 12 + 12 = 0 $ #noindent;所以 $A$⁠、$B$⁠、$C$ 三点共线．

]
#example[
已知 $arrow(a) =\(3\,2\)$, $arrow(b) =\(- 6\,9\)$. 求证 $arrow(a) tack.t arrow(b)$.

]
#solution[
因为 $ arrow(a) dot.op arrow(b) = 3 times\(- 6\)+ 2 times 9 = - 18 + 18 = 0 $ #noindent;所以 $arrow(a) tack.t arrow(b)$.

]
#example[
已知 $A\(1\,2\)$, $B\(2\,3\)$, $C\(- 2\,5\)$⁠．求证 $triangle.stroked.t A B C$ 是直角三角形．

]
#solution[
因为 $ accent(A B, ⃗) & =\(2\,3\)-\(1\,2\)=\(1\,1\)\
accent(A C, ⃗) & =\(- 2\,5\)-\(1\,2\)=\(- 3\,3\)\
accent(A B, ⃗) dot.op accent(A C, ⃗) & = 1 times\(- 3\)+ 1 times 3 = 0 $ #noindent;所以 $accent(A B, ⃗) tack.t accent(A C, ⃗)$, 即 $triangle.stroked.t A B C$ 是直角三角形．

]
#exercise[
+ 试问下列向量是否平行．

  + $arrow(a) = (1 / 2 \, 3 / 4)\,quad arrow(b) =\(- 2\,- 3\)$

  + $arrow(p) =\(0.5\,4\)\,quad arrow(q) =\(- 8\,64\)$

  + $arrow(c) =\(2\,3\)\,quad arrow(d) =\(3\,4\)$

+ 已知 $arrow(a) = (3 / 5 \, - 5)$, $arrow(b) =\(3\,y\)$, 且 $arrow(a) pll arrow(b)$, 求 $y$.

+ 向量 $arrow(a) =\(5\,7\)$ 与 $arrow(b) =\(10\,14\)$ 是否共线．

+ 已知 $arrow(a) =\(1\,3\)$, $arrow(b) =\(2\,5\)$, 求证 $arrow(a)\,arrow(b)$ 线性无关．

+ 已知 $arrow(a) =\(- 3\,2\)$, $arrow(b) =\(4\,6\)$. 求证 $arrow(a) tack.t arrow(b)$, 并作图验证．

+ 已知 $A\(7\,5\)$, $B\(2\,3\)$, $C\(6\,- 7\)$. 求证 $triangle.stroked.t A B C$ 是直角三角形．

]
=== 有向线段定比分点的坐标
已知点 $P$ 按定比 $mu$ 分割有向线段 $accent(P_1 P_2, ⃗)$\(图5.8). 即 $ accent(P_1 P, ⃗) & = mu accent(P P_2, ⃗)\
accent(O P, ⃗) - accent(O P_1, ⃗) & = mu (accent(O P_2, ⃗) - accent(O P, ⃗)) $ #noindent;所以 $ accent(O P, ⃗) = frac(1, 1 + mu) accent(O P_1, ⃗) + frac(mu, 1 + mu) accent(O P_2, ⃗) $

#figure([#fig("5-10");

  ],
  caption: [
  ]
)

如果 $accent(O P_1, ⃗) =\(x_1\,y_1\)$⁠，$accent(O P_2, ⃗) =\(x_2\,y_2\)$, $accent(O P, ⃗) =\(x\,y\)$⁠，那么上式用坐标表示即可写为 $ \(x\,y\)= (frac(x_1 + mu x_2, 1 + mu) \, thick frac(y_1 + mu y_2, 1 + mu)) $ #noindent;即：$ x = frac(x_1 + mu x_2, 1 + mu)\,#h(2em) y = frac(y_1 + mu y_2, 1 + mu) $ #noindent;这就是求有向线段定比分点的计算公式．

当 $mu = 1$ 时，$P$ 点是线段 $overline(P_1 P_2)$ 的中点．这时 $P$ 点的坐标是 $ x = frac(x_1 + x_2, 2)\,#h(2em) y = frac(y_1 + y_2, 2) $ #noindent;这就是求线段中点的坐标的计算公式，通常叫做#strong[中点公式]．

#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("5-11");], caption: []), figure([#fig("5-12");], caption: []))));

#example[
已知 $A\(1\,3\)$, $B\(4\,- 2\)$. 点 $P$ 按定比 $1 / 2$ 分割 $accent(A B, ⃗)$, 求 $P$ 点的坐标（图5.9）.

]
#solution[
因 $mu = 1 / 2$, 由求定比分点坐标计算公式得：$ x = frac(1 + 1 / 2 times 4, 1 + 1 / 2) = 2\,#h(2em) y = frac(3 + 1 / 2 times\(- 2\), 1 + 1 / 2) = 4 / 3 $ #noindent;所以 $P (2 \, 4 / 3)$.

]
#example[
已知 $A\(1\,1\)$, $B\(2\,2\)$, 点 $P$ 按定比 $- 1 / 2$ 分割 $accent(B A, ⃗)$, 求 $P$ 点的坐标（图5.10）.

]
#solution[
因 $mu = - 1 / 2$, 由求定比分点坐标计算公式得：$ x = frac(2 + (- 1 / 2) times 1, 1 + (- 1 / 2)) = 3\,#h(2em) y = frac(2 + (- 1 / 2) times 1, 1 + (- 1 / 2)) = 3 $ #noindent;所以 $P\(3\,3\)$.

]
在使用定比分点公式时，请同学们注意有向线段的起点和终点，以避免出错．

#exercise[
+ 已知：

  + $A\(3\,5\)\,quad B\(- 3\,7\)$

  + $A\(4\,- 1\)\,quad B\(- 5\,- 6\)$

  + $A\(a + b\,c + d\)\,quad B\(a - b\,c - d\)$

  #noindent;试求 $accent(A B, ⃗)$ 的中点的坐标．

+ 已知 $P\(0\,2\)$, $Q\(2\,- 1\)$, 点 $M$ 按定比 $1 / 2$ 分割 $accent(P Q, ⃗)$, 点 $N$ 按定比3分割 $accent(Q P, ⃗)$, 求 $M$⁠、$N$ 两点的坐标．

+ 已知 $M_1\(- 1\,6\)$, $M_2\(4\,3\)$, 求 $accent(M_1 M_2, ⃗)$ 三等分点的坐标．

+ 已知 $A_1\(x_1\,y_1\)$, $A_2\(x_2\,y_2\)$, $A_3\(x_3\,y_3\)$ 是 $triangle.stroked.t A_1 A_2 A_3$ 的三个顶点，求 $triangle.stroked.t A_1 A_2 A_3$ 的重心的坐标．

+ 已知 $A\(1\,2\)$, $B\(3\,4\)$, $\|accent(A P, ⃗)\|= 2\|accent(A B, ⃗)\|$⁠，求 $P$ 点的坐标．

+ 已知点 $B\(- 4\,1\)$ 到点 $A\(2\,- 2\)$ 的距离是它到点 $C\(x\,y\)$ 的距离的一半，求 $C\(x\,y\)$.

+ 已知 $pgram A B C D$ 的相邻两顶点 $A\(1\,1\)$, $B\(3\,2\)$ 和它的对角线交点 $K\(2\,3\)$, 求其余两个顶点的坐标．

]
=== 向量的长度公式
如果已知 $arrow(a) =\(a_x\,a_y\)$, 则 $ \|arrow(a)\|^2 = arrow(a) dot.op arrow(a) = a_x^2 + a_y^2 $ #noindent;所以#numbered-eq($ \|arrow(a)\|= sqrt(a_x^2 + a_y^2) $);#noindent; (5.4) 式就是求 $arrow(a)$ 的#strong[长度的计算公式]．

如果已知两点 $A\(x_1\,y_1\)$, $B\(x_2\,y_2\)$ (图5.11)，则 $ accent(A B, ⃗) =\(x_2 - x_1\,y_2 - y_1\) $

#figure([#fig("5-13");

  ],
  caption: [
  ]
)

#numbered-eq($ \|accent(A B, ⃗)\|= sqrt(\(x_2 - x_1\)^2 +\(y_2 - y_1\)^2) $);#noindent;显然 $A$⁠、$B$ 两点间的距离就是 $\|accent(A B, ⃗)\|$⁠，所以 (5.5) 式是求两点间的#strong[距离公式]．它可叙述如下：

#strong[两点间的距离等于两点相应坐标差的平方和的算术平方根]．

如果 $arrow(a)_0$ 是 $arrow(a)$ 的单位向量，$arrow(a) =\(a_x\,a_y\)$, 那么，$ arrow(a)_0 = frac(1, \|arrow(a)\|) arrow(a) = 1 / sqrt(a_x^2 + a_y^2)\(a_x\,a_y\) $ #noindent;即#numbered-eq($ arrow(a)_0 = (a_x / sqrt(a_x^2 + a_y^2) \, thick a_y / sqrt(a_x^2 + a_y^2)) $);#noindent;它是由已知向量的坐标，求它的单位向量的坐标的计算公式．

#example[
已知 $A\(3\,6\)$, $B\(- 2\,3\)$. 求 $A$⁠、$B$ 间距离．

]
#solution[
因 $accent(A B, ⃗) =\(- 5\,- 3\)$, 所以 $ \|accent(A B, ⃗)\|= sqrt(\(- 5\)^2 +\(- 3\)^2) = sqrt(34) $

]
#example[
已知 $arrow(a) =\(3\,4\)$, 求 $arrow(a)_0$ 的坐标．

]
#solution[
因为 $\|arrow(a)\|= sqrt(3^2 + 4^2) = 5$, 所以 $ arrow(a)_0 = (3 / 5 \, 4 / 5) $

]
#example[
已知 $A\(1\,2\)$, $B\(3\,4\)$, $C\(5\,0\)$. 求证：$triangle.stroked.t A B C$ 是等腰三角形．

]
#proof[
$ \|accent(A B, ⃗)\| & = sqrt(\(3 - 1\)^2 +\(4 - 2\)^2) = sqrt(8)\
\|accent(A C, ⃗)\| & = sqrt(\(5 - 1\)^2 +\(0 - 2\)^2) = sqrt(20)\
\|accent(B C, ⃗)\| & = sqrt(\(5 - 3\)^2 +\(0 - 4\)^2) = sqrt(20) $ #noindent;由此得 $\|accent(A C, ⃗)\|=\|accent(B C, ⃗)\|$, 所以 $triangle.stroked.t A B C$ 是等腰三角形．

]
#exercise[
+ 已知 $A\(0\,0\)$, $B\(3\,4\)$, $C\(0\,5\)$, 求 $triangle.stroked.t A B C$ 各边的长．

+ 已知 $A\(3\,8\)$, $B\(- 11\,3\)$, $C\(- 8\,- 2\)$. 求证 $triangle.stroked.t A B C$ 是等腰三角形．

+ 已知 $A\(- 1\,2\)$, $B\(3\,5\)$, $C\(1\,7\)$, $D\(- 3\,4\)$, 求证 $A B C D$ 是平行四边形，且求其对角线的长度．

+ 已知 $arrow(a) =\(1\,1\)$, $arrow(b) =\(- 2\,5\)$, 求 $arrow(a)_0$, $arrow(b)_0$.

+ 已知 $\|arrow(a)\|= 5$, 且 $arrow(a)_0 = (2 / sqrt(13) \, 3 / sqrt(13))$⁠，求 $arrow(a)$ 的坐标．

+ 用坐标法证明：如果 $M$ 是 $triangle.stroked.t A B C$ 的 $overline(B C)$ 边上的中点，求证：$overline(A B)^2 + overline(A C)^2 = 2 overline(A M)^2 + 2 overline(B M)^2$.

]
=== 两向量的夹角计算公式
已知 $arrow(a) =\(a_x\,a_y\)$, $arrow(b) =\(b_x\,b_y\)$, 则 $ cos ⟨arrow(a) \, arrow(b)⟩ = frac(arrow(a) dot.op arrow(b), \|arrow(a)\|lr(|arrow(b)|)) $ #noindent;但 $arrow(a) dot.op arrow(b) = a_x b_x + a_y b_y\,quad\|arrow(a)\|= sqrt(a_x^2 + a_y^2)\,quad lr(|arrow(b)|) = sqrt(b_x^2 + b_y^2)$⁠，所以#numbered-eq($ cos ⟨arrow(a) \, arrow(b)⟩ = frac(a_x b_x + a_y b_y, sqrt(a_x^2 + a_y^2) sqrt(b_x^2 + b_y^2)) $);#noindent; (5.7) 式是求两个向量夹角的#strong[余弦的计算公式]．由两个向量夹角的余弦，我们就可求出这两个向量的夹角．

设 $⟨arrow(e)_x \, arrow(a)⟩ = alpha$, $⟨arrow(e)_y \, arrow(a)⟩ = beta$⁠，已知 $ a_x =\|arrow(a)\|cos alpha\,#h(2em) a_y =\|arrow(a)\|cos beta $ #noindent;则#numbered-eq($ display(cases(cos alpha = frac(a_x, \|arrow(a)\|) = a_x / sqrt(a_x^2 + a_y^2), cos beta = frac(a_y, \|arrow(a)\|) = a_y / sqrt(a_x^2 + a_y^2))) $);#noindent;但由 (5.6) 式知 $ arrow(a)_0 = (a_x / sqrt(a_x^2 + a_y^2) \, thick a_y / sqrt(a_x^2 + a_y^2)) $ #noindent;所以：$arrow(a)_0 =\(cos alpha\,cos beta\)$. 这就是说 $\(cos alpha\,cos beta\)$ 就是 $arrow(a)$ 的单位向量的坐标．

容易验证 $cos alpha\,thick cos beta$ 之间满足关系#numbered-eq($ cos^2 alpha + cos^2 beta = 1 $);#noindent; (5.8)、(5.9) 是两个重要的公式，它们把向量的坐标与向量的长度、方向联系起来．

#example[
已知 $A\(sqrt(3)\,1\)$, $B\(0\,1\)$, $C (sqrt(3) / 2 \, 1 / 2)$, 求 $accent(A B, ⃗)$ 与 $accent(A C, ⃗)$ 之间的夹角．

]
#solution[
因为 $accent(A B, ⃗) =\(- sqrt(3)\,0\)$, $accent(A C, ⃗) = (- sqrt(3) / 2 \, - 1 / 2)$, 所以 $ cos ⟨accent(A B, ⃗) \, accent(A C, ⃗)⟩ = frac(- sqrt(3) times (- sqrt(3) / 2) + 0 times (- 1 / 2), sqrt((sqrt(3))^2 + 0^2) sqrt((- sqrt(3) / 2)^2 + (- 1 / 2)^2)) = sqrt(3) / 2 $ #noindent;因此，$ ⟨accent(A B, ⃗) \, accent(A C, ⃗)⟩ = pi / 6 $

]
#example[
求向量 $arrow(a) =\(2\,- 1\)$ 的方向余弦和 $arrow(a)_0$ 的坐标．

]
#solution[
因为 $\|arrow(a)\|= sqrt(2^2 +\(- 1\)^2) = sqrt(5)$⁠，所以 $ cos alpha = 2 / sqrt(5)\,#h(2em) cos beta = frac(- 1, sqrt(5))\
arrow(a)_0 =\(cos alpha\,cos beta\)= (2 / sqrt(5) \, - 1 / sqrt(5)) $

]
#exercise[
+ 求下列 $arrow(a)$ 与 $arrow(b)$ 夹角的余弦．

  + $arrow(a) =\(1\,- 2\)\,quad arrow(b) =\(5\,3\)$

  + $arrow(a) =\(- 3\,4\)\,quad arrow(b) =\(2\,- 1\)$

+ #block(sticky: true)[求下列向量的单位向量的坐标．]

  #cols(2)[
  + $arrow(a) =\(2\,3\)$

  + $arrow(b) =\(5\,13\)$

  + $arrow(c) =\(2\,0\)$

  + $arrow(d) =\(1\,1\)$

  ]

+ 已知 $accent(O A, ⃗) =\(- 1\,3\)$, $accent(O B, ⃗) =\(0\,4\)$, 求 $accent(O A, ⃗)$ 在 $accent(O B, ⃗)$ 上的垂直投影分量，$accent(O B, ⃗)$ 在 $accent(O A, ⃗)$ 上的垂直投影分量．

+ 已知 $A\(2\,- 1\)$, $B\(1\,- 3\)$, $C\(3\,- 4\)$, 计算 $triangle.stroked.t A B C$ 的三内角的余弦．

]
=== 两向量方向差的正弦、正切公式
由于我们规定两个向量的夹角取值范围是 $\[0\,pi\]$⁠，所以在坐标平面上知道 $⟨arrow(e)_x \, arrow(a)⟩$ 和 $⟨arrow(e)_y \, arrow(a)⟩$ 这两个角 $arrow(a)$ 的方向唯一确定了，其实在坐标平面上只需要知道其中一个角就够了．

在坐标系 $\[O : thick arrow(e)_x\,arrow(e)_y\]$ 中（图5.12），已知非零向量 $arrow(a) =\(a_x\,a_y\)$, 作 $accent(O A, ⃗) = arrow(a)$, 这时射线 $O A$ 的方向被以 $O X$ 为始边、$O A$ 为终边的旋转角 $phi$ 所唯一确定，于是 $arrow(a)$ 的方向也被 $phi$ 所唯一确定．$phi$ 角通常叫做向量 $arrow(a)$ 的#strong[方向角]．由三角学可知，$phi$ 有无穷多值，因此平面上同一个方向可以和无穷多个角相对应．如果约定 $phi$ 在 $\[0\,2 pi\)$ 内取值，一个向量的方向角就被唯一确定了．

#figure([#fig("5-14");

  ],
  caption: [
  ]
)

我们曾规定 $⟨arrow(e)_x \, arrow(a)⟩ = alpha$, $⟨arrow(e)_y \, arrow(a)⟩ = beta$ 的取值范围是 $\[0\,pi\]$. 因此上述定义的角 $phi$ 和角 $alpha$ 并不一致．但我们知道 $ cos alpha = frac(a_x, \|arrow(a)\|)\,#h(2em) cos beta = frac(a_y, \|arrow(a)\|) $ #noindent;由三角函数的定义，我们又知 $ cos phi = frac(a_x, \|arrow(a)\|)\,#h(2em) sin phi = frac(a_y, \|arrow(a)\|) $ #noindent;所以不论 $phi$ 取何值，都有关系式 $ cos phi = cos alpha\,#h(2em) sin phi = cos beta $ #noindent;因此一个向量的方向余弦，用它的方向角可表示为 $cos phi$, $sin phi$. 任给一单位向量 $arrow(e)$, 若方向角为 $phi$, 则 $ arrow(e) =\(cos phi\,thick sin phi\) $

在上面 $cos phi = cos alpha$, $sin phi = cos beta$ 两式两边相除可得 $ tan phi = a_y / a_x $

#figure([#fig("5-15");

  ],
  caption: [
  ]
)

已知 $arrow(a) =\(a_x\,a_y\)$, $arrow(b) =\(b_x\,b_y\)$, 作 $accent(O A, ⃗) = arrow(a)$, $accent(O B, ⃗) = arrow(b)$ (图5.13), 设 $arrow(a)$ 的方向角为 $phi_1$, $arrow(b)$ 的方向角为 $phi_2$, 我们把 $arrow(b)$ 与 $arrow(a)$ 的方向差 $phi$ 定义为 $phi = phi_2 - phi_1$⁠，这就是说 $phi$ 是射线 $O A$ 到射线 $O B$ 之间的旋转角，也可说 $phi$ 是 $arrow(a)$ 到 $arrow(b)$ 的旋转角．容易证明，对任意两个向量 $arrow(a)\,arrow(b)$, 有 $ cos phi = cos ⟨arrow(a) \, arrow(b)⟩ $ #noindent;由三角公式有 $ sin phi = sin\(phi_2 - phi_1\)= sin phi_2 cos phi_1 - cos phi_2 sin phi_1 $ #noindent;但 $ sin phi_2 = frac(b_y, \|arrow(b)\|)\,quad cos phi_2 = frac(b_x, \|arrow(b)\|)\,quad sin phi_1 = frac(a_y, \|arrow(a)\|)\,quad cos phi_1 = frac(a_x, \|arrow(a)\|) $ #noindent;所以#numbered-eq($ sin phi = frac(a_x b_y - a_y b_x, \|arrow(a)\|lr(|arrow(b)|)) $);#noindent;又知 $ cos phi = cos ⟨arrow(a) \, arrow(b)⟩ = frac(a_x b_x + a_y b_y, \|arrow(a)\|lr(|arrow(b)|)) $ #noindent;两式相除又可得 $ tan phi = frac(a_x b_y - a_y b_x, a_x b_x + a_y b_y) $ #noindent;为了便于记忆，(5.10) 式及上面的正切公式还可用行列式写出：$ sin phi = frac(mat(delim: "|", a_x, a_y; b_x, b_y), \|arrow(a)\|lr(|arrow(b)|))\,#h(2em) tan phi = frac(mat(delim: "|", a_x, a_y; b_x, b_y), arrow(a) dot.op arrow(b)) $

#example[
已知 $arrow(a) =\(2\,- 2\)$, 求 $arrow(a)$ 的方向角 $phi$.

]
#solution[
因为 $sin phi = frac(- 2, sqrt(2^2 +\(- 2\)^2)) = - 1 / sqrt(2)$⁠，所以，$phi = - 45 degree$ 或 $phi = - 135 degree$, 又因 $cos phi$ 的值为正（$cos phi$ 与 $arrow(a)$ 的横坐标同号），所以 $phi = - 45 degree$.

]
#example[
已知 $arrow(a) =\(sqrt(3)\,0\)$, $arrow(b) = (sqrt(3) / 2 \, - 1 / 2)$, 求 $arrow(a)$ 与 $arrow(b)$ 的方向差 $phi$.

]
#solution[
因为 $\|arrow(a)\|= sqrt(3)$, $\|arrow(b)\|= sqrt((sqrt(3) / 2)^2 + (- 1 / 2)^2) = 1$ 所以 $ cos phi = frac(a_x b_x + a_y b_y, \|arrow(a)\|lr(|arrow(b)|)) = frac(sqrt(3) dot.op sqrt(3) / 2 + 0 dot.op (- 1 / 2), sqrt(3) dot.op 1) = sqrt(3) / 2 $ #noindent;于是 $phi = pi / 6$, 或 $phi = 11 / 6 pi$. 又因为 $ sin phi = frac(a_x b_y - a_y b_x, \|arrow(a)\|lr(|arrow(b)|)) = frac(sqrt(3) times (- 1 / 2) - 0 times sqrt(3) / 2, sqrt(3) dot.op 1) = - 1 / 2 $ #noindent;所以：$phi = 11 / 6 pi$.

]
由例5.19可知，如果我们要求两向量的夹角，只用余弦公式就可以了，如果要计算两向量的方向差，除用余弦公式外，还要用正弦公式或正切公式．

#example[
已知 $arrow(a) =\(a_x\,a_y\)$, 求与 $arrow(a)$ 垂直的单位向量 $arrow(n)_0$ 的坐标．

]
#solution[
设 $arrow(n)_0 =\(cos phi\,sin phi\)$⁠，由于 $arrow(n)_0 tack.t arrow(a)$, 所以 $ a_x cos phi + a_y sin phi = 0 $ #noindent;即：$frac(cos phi, - a_y) = frac(sin phi, a_x)$.

由此可见，向量 $arrow(n)_0$ 与向量 $\(- a_y\,a_x\)$ 平行．于是存在数 $lambda$, 使 $ cos phi = lambda\(- a_y\)\,#h(2em) sin phi = lambda a_x $ #noindent;由于 $sin^2 phi + cos^2 phi = 1$, 因此可求得 $ lambda = plus.minus 1 / sqrt(a_x^2 + a_y^2) = plus.minus frac(1, \|arrow(a)\|) $ #noindent;所以 $ cos phi & = plus.minus frac(1, \|arrow(a)\|) times\(- a_y\)= minus.plus frac(a_y, \|arrow(a)\|)\
sin phi & = plus.minus frac(a_x, \|arrow(a)\|) $ #noindent;于是可得：$ arrow(n)_0 = (- frac(a_y, \|arrow(a)\|) \, thick frac(a_x, \|arrow(a)\|)) quad upright("或") quad arrow(n)_0 = (frac(a_y, \|arrow(a)\|) \, thick - frac(a_x, \|arrow(a)\|)) $

]
求一个向量的垂直向量的坐标，是我们经常要碰到的问题，我们在例5.20的基础上，再作些说明：

由于 $arrow(n)_0 tack.t arrow(a)$, 因此对任意实数 $k$ $ k arrow(n)_0 tack.t arrow(a) $ #noindent;特别当 $k = plus.minus\|arrow(a)\|$ 时，向量 $arrow(n)_1 =\(- a_y\,a_x\)$, $arrow(n)_2 =\(a_y\,- a_x\)$ 都与 $arrow(a)$ 垂直，且与 $arrow(a)$ 的长度相等．例如 $arrow(a) =\(3\,4\)$, 则 $arrow(n)_1 =\(- 4\,3\)$, $arrow(n)_2 =\(4\,- 3\)$ 都垂直于 $arrow(a)$ (图5.14).

令 $phi_1$ 是 $arrow(n)_1$ 与 $arrow(a)$ 的方向差，$phi_2$ 是 $arrow(n)_2$ 与 $arrow(a)$ 的方向差，则 $ sin phi_1 & = frac(mat(delim: "|", a_x, a_y; - a_y, a_x), \|arrow(a)\|thick\|arrow(a)\|) = frac(a_x^2 + a_y^2, \|arrow(a)\|^2) = 1\
sin phi_2 & = frac(mat(delim: "|", a_x, a_y; a_y, - a_x), \|arrow(a)\|thick\|arrow(a)\|) = frac(-\(a_x^2 + a_y^2\), \|arrow(a)\|^2) = - 1 $ #noindent;所以向量 $arrow(n)_1$ 可看作向量 $arrow(a)$ 按逆时针方向旋转 $90 degree$ 所生成的向量，$arrow(n)_2$ 可看作 $arrow(a)$ 按顺时针方向旋转 $90 degree$ 所生成的向量．

#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("5-16");], caption: []), figure([#fig("5-17");], caption: []))));

#example[
已知正方形 $A B C D$, 有 $A\(- 2\,1\)$, $C\(1\,1\)$. 求顶点 $B$ 和 $D$ 的坐标（图5.15）.

]
#solution[
设对角线 $overline(A C)$ 与 $overline(B D)$ 相交于 $E$ 点，则 $E$ 点的坐标 $ x_E & = frac(1 +\(- 2\), 2) = - 1 / 2\
y_E & = frac(1 + 1, 2) = 1\
accent(E A, ⃗) & = (- 2 - (- 1 / 2) \, thick 1 - 1) = (- 1 1 / 2 \, thick 0) $ #noindent;由于 $accent(E B, ⃗) tack.t accent(E A, ⃗)$, $accent(E D, ⃗) tack.t accent(E A, ⃗)$, 且 $\|accent(E D, ⃗)\|=\|accent(E B, ⃗)\|=\|accent(E A, ⃗)\|$, 所以 $ accent(E B, ⃗) = (0 \, - 1 1 / 2)\,#h(2em) accent(E D, ⃗) = (0 \, 1 1 / 2)\
accent(O B, ⃗) = accent(O E, ⃗) + accent(E B, ⃗) = (- 1 / 2 \, 1) + (0 \, - 1 1 / 2) = (- 1 / 2 \, - 1 / 2)\
accent(O D, ⃗) = accent(O E, ⃗) + accent(E D, ⃗) = (- 1 / 2 \, 1) + (0 \, 1 1 / 2) = (- 1 / 2 \, 2 1 / 2) $ #noindent;所以 $B (- 1 / 2 \, - 1 / 2)\,thick D (- 1 / 2 \, 2 1 / 2)$

]
#example[
证明三角公式 $cos\(alpha - beta\)= cos alpha cos beta + sin alpha sin beta$.

]
#figure([#fig("5-18");

  ],
  caption: [
  ]
)

#proof[
在坐标平面上（图5.16）, 设 $accent(O E_1, ⃗) =\(cos alpha\,sin alpha\)$, $accent(O E_2, ⃗) =\(cos beta\,sin beta\)$, 则 $ cos\(alpha - beta\)= cos ⟨accent(O E_1, ⃗) \, accent(O E_2, ⃗)⟩ = cos alpha dot.op cos beta + sin alpha dot.op sin beta $

]
#exercise[
+ 已知 $arrow(a) =\(- 2\,2\)$, 求 $arrow(a)$ 的方向角 $phi$.

+ 已知 $arrow(R) =\(sqrt(3)\,- 1\)$, 求 $arrow(R)$ 的方向角 $phi$.

+ 已知 $arrow(a) =\(- sqrt(3)\,0\)$, $arrow(b) = (sqrt(3) / 2 \, 1)$, 求 $arrow(a)$ 到 $arrow(b)$ 的旋转角．

+ 已知 $arrow(a) =\(2\,3\)$, 求与 $arrow(a)$ 垂直且与 $arrow(a)$ 等长的两个向量．

+ 用向量夹角公式求证 $cos\(90 degree - alpha\)= sin alpha$, $cos\(90 degree + alpha\)= - sin alpha$.

+ 已知 $arrow(a) =\(- 4\,3\)$, 设 $arrow(a)$ 到 $arrow(b)_0$ 的旋转角为 $pi / 2$, 求 $arrow(b)_0$ 的坐标．

]
=== 面积的计算公式
已知 $pgram A B C D$ 的两个邻边向量 $accent(A B, ⃗) = arrow(a)$, $accent(A D, ⃗) = arrow(b)$（图5.17），$arrow(a)$ 到 $arrow(b)$ 的旋转角为 $phi$, 则 $pgram A B C D$ 的面积 $ S =\|arrow(a)\|lr(|arrow(b)|) sin phi $

#figure([#fig("5-19");

  ],
  caption: [
  ]
)

若 $arrow(a) =\(a_x\,a_y\)$, $arrow(b) =\(b_x\,b_y\)$⁠，则 $ S =\|arrow(a)\|lr(|arrow(b)|) sin phi =\|arrow(a)\|lr(|arrow(b)|) frac(a_x b_y - a_y b_x, \|arrow(a)\|lr(|arrow(b)|)) = a_x b_y - a_y b_x $ #noindent;或#numbered-eq($ S = mat(delim: "|", a_x, a_y; b_x, b_y) $);

\(5.11) 式是由平行四边形的两个邻边向量计算它的面积的公式．这个公式不但给出了平行四边形面积的计算方法，而且给出了二阶行列式的一个几何意义．

由 (5.11) 式计算面积时，可得正值，也可得负值，这是因为 $phi$ 取的是旋转角，当 $phi > 0$ 时，$S > 0$⁠；当 $phi < 0$, $S < 0$⁠；$phi = 0$ 时 $S = 0$. 为使得面积只取正值，公式 (5.11) 可改写为#numbered-eq($ S =\|a_x b_y - a_y b_x\| $);

若已知 $A\(x_1\,y_1\)$, $B\(x_2\,y_2\)$, $C\(x_3\,y_3\)$, 则 $ accent(A B, ⃗) =\(x_2 - x_1\,y_2 - y_1\)\,#h(2em) accent(A C, ⃗) =\(x_3 - x_1\,y_3 - y_1\) $ #noindent;由公式 (5.11) 容易求得 $triangle.stroked.t A B C$ 的面积#numbered-eq($ S_triangle.stroked.t = 1 / 2 mat(delim: "|", x_2 - x_1, y_2 - y_1; x_3 - x_1, y_3 - y_1) $);#noindent;或 $ S_triangle.stroked.t = 1 / 2 mat(delim: "|", x_1, y_1, 1; x_2, y_2, 1; x_3, y_3, 1) $ #noindent;若面积只取正号，则 $ S_triangle.stroked.t = 1 / 2 class("normal", stretch(|, size: #1.8em))\(x_2 - x_1\)\(y_3 - y_1\)-\(x_3 - x_1\)\(y_2 - y_1\)class("normal", stretch(|, size: #1.8em)) $

#example[
已知 $triangle.stroked.t A B C$ 的三个顶点的坐标分别为 $A\(3\,2\)$, $B\(- 5\,4\)$, $C\(- 6\,- 3\)$, 求 $triangle.stroked.t A B C$ 的面积.

]
#solution[
因 $accent(A B, ⃗) =\(- 8\,2\)$, $accent(A C, ⃗) =\(- 9\,- 5\)$⁠，由 (5.13) 式得 $ S_(triangle.stroked.t A B C) = 1 / 2 mat(delim: "|", - 8, 2; - 9, - 5) = 1 / 2\(40 + 18\)= 29 $

]
#exercise[
+ 已知

  + $arrow(a) =\(3\,- 4\)\,quad arrow(b) =\(2\,- 7\)$\;

  + $arrow(a) =\(- 5\,- 6\)\,quad arrow(b) =\(4\,- 9\)$.

  #noindent;求由 $arrow(a)\,arrow(b)$ 作邻边向量张成的平行四边形的面积．

+ 已知 $A\(2\,3\)$, $B\(- 7\,5\)$, $C\(3\,- 5\)$, 求 $triangle.stroked.t A B C$ 的面积．

+ 已知 $A\(- 10\,- 8\)$, $B\(9\,- 3\)$, $C\(2\,11\)$, 求 $triangle.stroked.t A B C$ 的面积．

+ 说明$mat(delim: "|", a_x, a_y; b_x, b_y) = - mat(delim: "|", b_x, b_y; a_x, a_y)$的几何意义．

+ 说明$mat(delim: "|", a_x, a_y; a_x + b_x, a_y + b_y) = mat(delim: "|", a_x, a_y; b_x, b_y)$的几何意义．

]
#heading(level: 2, numbering: none, supplement: [toc-sub])[习题5.1]

+ 在 $X$ 轴上的点，它的纵坐标都等于什么？在 $Y$ 轴上的点，它的横坐标都等于什么？

+ 在坐标平面上，已知边长为 $a$ 的正方形 $A B C D$, $A$ 与原点重合，$accent(A B, ⃗)$, $accent(A D, ⃗)$ 的方向分别与 $X$ 轴和 $Y$ 轴的正方向一致，求四个顶点的坐标．

+ 分别求点 $\(a\,b\)$ 关于 $X$ 轴、$Y$ 轴的对称点的坐标．

+ 已知 $\|accent(O A, ⃗)\|= 7$⁠、$\|accent(O B, ⃗)\|= 6$, 点 $A$ 在第四象限，点 $B$ 在第二象限，且 $⟨accent(O A, ⃗) \, arrow(e)_x⟩ = 45 degree$, $⟨accent(O B, ⃗) \, arrow(e)_y⟩ = 30 degree$. 求 $A$ 点、$B$ 点的坐标．

+ $pgram A B C D$ 中的 $overline(A B) = 8$, $overline(A D) = 5$, $angle A = 60 degree$⁠，如果取 $A$ 作原点，$X$ 轴正方向与 $accent(A B, ⃗)$ 同向，$C$ 点所在的象限为第一象限，求它各顶点的坐标．

+ #block(sticky: true)[已知]

  #cols(2)[
  + $A\(- 3\,4\)\,quad B\(2\,- 5\)$\;

  + $A\(2\,- 1\)\,quad B\(- 4\,3\)$

  ]
  求 $accent(A B, ⃗)$ 的坐标．

+ 已知 $\|arrow(a)\|= 12$, $⟨arrow(e)_x \, arrow(a)⟩ = 30 degree$, $⟨arrow(e)_y \, arrow(a)⟩ = 120 degree$, 求 $arrow(a)$ 的坐标．

+ #block(sticky: true)[建立坐标系 $\[O : thick arrow(e)_x\,arrow(e)_y\]$, 画出下列各向量．]

  #cols(3)[
  + $arrow(e)_x =\(1\,0\)$

  + $arrow(e)_y =\(0\,1\)$

  + $arrow(a) =\(- 1\,1\)$

  + $arrow(b) =\(0\,2\)$

  + $arrow(c) =\(- 2\,0\)$

  + $arrow(d) =\(0\,- 2\)$

  + $arrow(f) =\(- 1\,- 3\)$

  ]

+ 问平行于 $X$ 轴的向量与平行于 $Y$ 轴的向量的坐标各有什么特点．

+ 证明 $A\,B\,C$ 三点共线．

  + $A\(2\,1\)\,quad B\(0\,5\)\,quad C\(4\,- 3\)$

  + $A\(- 1\,0\)\,quad B\(1\,- 2\)\,quad C\(3\,- 4\)$

+ 已知 $pgram A B C D$, $overline(A C)$, $overline(B D)$ 相交于 $P$, 且 $A\(- 1\,2\)$, $B\(3\,0\)$, $P\(0\,2\)$, 求 $C\,D$ 两顶点的坐标．

+ 求证 $arrow(m) =\(- 2\,3\)$, $arrow(n) =\(2\,- 3\)$ 与 $arrow(a) =\(3\,2\)$ 垂直并作图验证．

+ 已知 $arrow(a) =\(2\,- 1\)$, $arrow(b) =\(- 1\,1\)$, 求 $arrow(a) + arrow(b)$, $arrow(a) - arrow(b)$, $arrow(a) dot.op arrow(b)$, $(3 arrow(a) - 2 arrow(b)) dot.op (arrow(a) + 4 arrow(b))$.

+ 已知 $arrow(a) =\(1\,2\)$, $arrow(b) =\(3\,1\)$. 在坐标平面上画出 $arrow(a) + arrow(b)$, $arrow(a) + 2 arrow(b)$, $arrow(a) + 3 arrow(b)$, $arrow(a) - 2 arrow(b)$, $arrow(a) - 3 arrow(b)$.

+ 已知 $A\(1\,3\)$, $B\(2\,- 1\)$, $C\(4\,k\)$, 问 $k$ 为何值时，$triangle.stroked.t A B C$ 是等腰三角形．

+ 已知 $A\(1\,1\)$, $B\(2\,- 1\)$. 如果 $triangle.stroked.t A B C$ 是等边三角形，且 $A\,B\,C$ 按逆时针顺序排列，求顶点 $C$ 的坐标．

+ 已知 $\|arrow(a)\|= 2$, $arrow(b) =\(sqrt(3)\,1\)$, $arrow(a)$ 到 $arrow(b)$ 的旋转角为 $60 degree$, 求 $arrow(a)$ 的坐标．

+ 已知 $A\(2\,3\)$, $B\(- 1\,0\)$, $C$ 点在 $overline(A B)$ 的垂直平分线上，且和 $overline(A B)$ 的距离是 $overline(A B)$ 长的一半，求 $C$ 点的坐标．

+ #block(sticky: true)[已知正方形 $A B C D$, $A\(0\,- 1\)$, $B\(- 2\,1\)$, $A$⁠、$B$⁠、$C$⁠、$D$ 四点]

  #cols(2)[
  + 按顺时针顺序排列；

  + 按逆时针顺序排列．

  ]
  求 $C$ 点的坐标．

+ 已知正六边形 $A B C D E F$, $A$⁠、$B$⁠、$C$⁠、$D$⁠、$E$⁠、$F$ 成逆时针方向排列，$A\(1\,1\)$, $B\(- 2\,3\)$, 求顶点 $C$⁠、$D$⁠、$E$⁠、$F$ 的坐标．

+ 计算由下列各对向量张成的平行四边形的面积．

  + $arrow(a) =\(3\,- 2\)\,#h(2em) arrow(b) =\(5\,1\)$

  + $arrow(a) =\(1\,2\)\,#h(2em) arrow(b) =\(- 1\,2\)$

  + $arrow(a) =\(- 2\,3\)\,#h(2em) arrow(b) =\(- 3\,4\)$

== 直线方程
一个关于 $x$⁠、$y$ 的二元方程总可写为#numbered-eq($ F\(x\,y\)= 0 $, label: label("lin_eq"));#noindent;的形式．例如 $x + y - 3 = 0$, $y - x^2 = 0$, $x^2 + 2 x y - y^2 - 3 = 0$ 等．设满足方程 (#ref-num(label("lin_eq"));) 的所有实数偶 $\(x\,y\)$ 的集合用 $A$ 表示，则 $A$ 可描述为 $ A = \{\(x\,y\)\|F\(x\,y\)= 0 \} $ #noindent;对 $A$ 中的每一个有序实数偶 $\(x\,y\)$, 在坐标平面上，唯一确定了一个点 $P\(x\,y\)$. 这样，$A$ 中的所有元素就对应着平面上的一个点集 $B$. $B$ 可描述为 $ B = \{ P\(x\,y\)\|F\(x\,y\)= 0 \} $

点集 $B$ 叫做方程 $F\(x\,y\)= 0$ 的图象或轨迹，而 $F\(x\,y\)= 0$ 又叫做轨迹方程．例如：方程 $y - x = 0$ 的所有解集 $ \{\(x\,y\)\|y - x = 0 \} $ #noindent;对应着坐标平面上点的轨迹 $ \{ P\(x\,y\)\|y - x = 0 \} $ #noindent;是第1、第3象限的角平分线．方程 $y - x^2 = 0$ 的解集 $ \{\(x\,y\)\|y - x^2 = 0 \} $ #noindent;所对应的点轨迹 $ \{ P\(x\,y\)\|y - x^2 = 0 \} $ #noindent;是坐标平面上一条抛物线．

如果我们要确定某个点集是某个二元方程 $F\(x\,y\)= 0$ 的轨迹，或方程 $F\(x\,y\)= 0$ 是某个点集的方程，显然必须证明以下两条．

+ $\(x\,y\)in A quad arrow.r.double quad P\(x\,y\)in B$

+ $P\(x\,y\)in B quad arrow.r.double quad\(x\,y\)in A$

#noindent;第一条保证满足方程 $F\(x\,y\)= 0$ 的实数偶所对应的点一定在轨迹 $B$ 上，第二条保证在轨迹 $B$ 上的点的坐标一定满足方程 $F\(x\,y\)= 0$.

设 $A = \{ P\(x\,y\)\|F\(x\,y\)= 0 \}$, $B = \{ P\(x\,y\)\|G\(x\,y\)= 0 \}$. $A\,B$ 是两个轨迹．由定义可知，求 $A inter B$, 即求 $A$ 与 $B$ 的交集，与求联立方程 $ display(cases(F\(x\,y\)= 0, G\(x\,y\)= 0)) $ #noindent;的解集，在解析几何中是同一件事．

这一节我们首先研究直线方程．

=== 直线的各种方程
==== 点法向式
已知 $P_0\(x_0\,y_0\)$, $arrow(n) =\(a\,b\)$⁠，且 $arrow(n) eq.not arrow(0)$ 过 $P_0$ 作直线 $ell tack.t arrow(n)$. 求 $ell$ 的方程（图5.18）.

#figure([#fig("5-20");

  ],
  caption: [
  ]
)

设 $P\(x\,y\)$ 是一个动点，则 $P in ell$ 的充要条件是 $ arrow(n) dot.op accent(P_0 P, ⃗) = 0 $ #noindent;也可写为 $ arrow(n) dot.op\(accent(O P, ⃗) - accent(O P_0, ⃗)\)= 0 $ #noindent;用坐标表示，上述向量方程变为#numbered-eq($ a\(x - x_0\)+ b\(y - y_0\)= 0 $);#noindent;或 $ a x + b y + c = 0 $ #noindent;其中 $c = -\(a x_0 + b y_0\)$. (5.15) 式是通过点 $P_0\(x_0\,y_0\)$ 且与已知向量 $arrow(n)$ 垂直的直线方程，$arrow(n)$ 叫做直线 $ell$ 的#strong[法向量]．通常 (5.15) 式称为直线的#strong[点法向式方程]．

特殊情况：当 $arrow(n) pll arrow(e)_x$ 时，$a eq.not 0$, $b = 0$, 直线 $ell$ 垂直于 $X$ 轴（图5.19）, 方程 (5.15) 变为 $ x - x_0 = 0 $ #noindent;即：$x = x_0$

#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("5-21");], caption: []), figure([#fig("5-22");], caption: []))));

当 $arrow(n) pll arrow(e)_y$ 时，$a = 0$, $b eq.not 0$, 直线 $ell$ 垂直于 $Y$ 轴（图5.20），方程 (5.15) 变为 $ y = y_0 $

例如，通过 $\(2\,1\)$ 且垂直于 $X$ 轴的方程是 $x = 2$, 通过 $\(3\,4\)$ 且垂直于 $Y$ 轴的方程是 $y = 4$. 显然 $X$ 轴的方程是 $y = 0$, $Y$ 轴的方程是 $x = 0$.

#example[
求通过点 $P_0\(3\,2\)$, 且垂直于 $arrow(n)\(3\,- 4\)$ 的直线方程式．

]
#solution[
由点法向式方程有 $ 3\(x - 3\)+\(- 4\)\(y - 2\)= 0 $ #noindent;整理得 $ 3 x - 4 y - 1 = 0 $

]
#example[
已知 $P_1\(- 1\,2\)$, $P_2\(3\,4\)$, $P_3\(- 2\,5\)$. 求通过点 $P_1$ 且垂直于直线 $P_2 P_3$ 的直线方程．

]
#solution[
因为 $accent(P_2 P_3, ⃗) =\(- 5\,1\)$, 所以通过点 $P_1\(- 1\,2\)$ 且垂直于 $accent(P_2 P_3, ⃗)$ 的直线方程为 $ - 5 dot.op\(x + 1\)+ 1 dot.op\(y - 2\)= 0 $ #noindent;整理得 $ 5 x - y + 7 = 0 $

]
==== 点方向式
已知点 $P_0\(x_0\,y_0\)$ 和 $arrow(mu) =\(a\,b\)$, 且 $a eq.not 0$, $b eq.not 0$（即 $arrow(mu)$ 和两条坐标轴都不平行），过 $P_0$ 作直线 $ell pll arrow(mu)$, 求直线 $ell$ 的方程（图5.21）.

#figure([#fig("5-23");

  ],
  caption: [
  ]
)

设 $P\(x\,y\)$ 是一动点，则 $P in ell$ 的充要条件是 $accent(P_0 P, ⃗) pll arrow(mu)$.

我们知道 $accent(P_0 P, ⃗)$ 与 $arrow(mu)$ 平行的充要条件是它们的坐标成比例，即#numbered-eq($ frac(x - x_0, a) = frac(y - y_0, b) $);#noindent;因此 (5.16) 式也是动点 $P\(x\,y\)$ 在直线 $ell$ 上的充要条件．所以 (5.16) 式是直线 $ell$ 的方程．通常我们把 (5.16) 叫做直线 $ell$ 的#strong[点方向式方程]，$arrow(mu)$ 叫做直线 $ell$ 的#strong[方向向量]．

#example[
求通过点 $P_0\(- 2\,3\)$ 且平行于 $arrow(mu) =\(2\,3\)$ 的直线 $ell$ 的方程．

]
#solution[
由点方向式方程可得 $ell$ 的方程为 $ frac(x -\(- 2\), 2) = frac(y - 3, 3) $ #noindent;整理得 $ 3 x - 2 y + 12 = 0 $

]
#example[
已知点 $A\(4\,6\)$, $B\(- 3\,2\)$, $C\(4\,- 5\)$, 求通过点 $A$ 且平行于直线 $B C$ 的直线方程．

]
#solution[
因 $accent(B C, ⃗) =\(4 -\(- 3\)\,- 5 - 2\)=\(7\,- 7\)$, 所以所求直线方程为 $ frac(x - 4, 7) = frac(y - 6, - 7) $ #noindent;整理得 $ x + y - 10 = 0 $

]
==== 两点式
已知两个不同的点 $P_1\(x_1\,y_1\)$, $P_2\(x_2\,y_2\)$, 求直线 $P_1 P_2$ 的方程（图5.22）.

因为$ accent(P_1 P_2, ⃗) =\(x_2 - x_1\,y_2 - y_1\) $ #noindent;$accent(P_1 P_2, ⃗)$ 取作所求直线的方向向量，据点方向式方程可得直线 $P_1 P_2$ 的方程为#numbered-eq($ frac(x - x_1, x_2 - x_1) = frac(y - y_1, y_2 - y_1) $);#noindent; (5.17) 式通常叫做#strong[直线方程的两点式]．

#example[
求通过 $P_1\(- 4\,2\)$, $P_2\(1\,- 3\)$ 的直线方程.

]
#solution[
由于 $accent(P_1 P_2, ⃗) =\(1 -\(- 4\)\,- 3 - 2\)=\(5\,- 5\)$, 所以直线 $P_1 P_2$ 的方程为 $ frac(x -\(- 4\), 5) = frac(y - 2, - 5) $ #noindent;整理得 $ x + y + 2 = 0 $

]
#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("5-24");], caption: []), figure([#fig("5-25");], caption: []))));

#example[
已知直线 $ell$ 与 $X$ 轴、$Y$ 轴分别相交于点 $A\(a\,0\)$⁠、点 $B\(0\,b\)$, 且假定 $a eq.not 0$, $b eq.not 0$, 求直线 $ell$ 的方程（图5.23）.

]
#solution[
因 $accent(A B, ⃗) =\(- a\,b\)$, 由两点式可得 $ frac(x - a, - a) = frac(y - 0, b) $ #noindent;整理得#numbered-eq($ x / a + y / b = 1 $);

]
由例5.29求得的方程 (5.18) 通常叫做直线的#strong[截距式]，$a$ 叫做 $ell$ 在 $X$ 轴上的截距，$b$ 叫做 $ell$ 在 $Y$ 轴上的截距．

#exercise[
+ 求通过 $P_0\(3\,- 2\)$ 且垂直于 $arrow(mu) =\(- 4\,5\)$ 的直线方程．

+ 已知 $A\(- 5\,6\)$, $B\(- 1\,- 4\)$, $C\(3\,2\)$, 求 $triangle.stroked.t A B C$ 的三条高线方程．

+ 已知 $A\(- 3\,2\)$, $B\(1\,- 4\)$. 求 $overline(A B)$ 的垂直平分线的方程．

+ 已知 $\|accent(O M, ⃗)\|= 3$, $accent(O M, ⃗)$ 的方向角是 $30 degree$, 直线 $ell$ 垂直 $accent(O M, ⃗)$ 于 $M$ 点，试求 $ell$ 的方程．

+ 求通过 $P_0\(3\,- 5\)$ 且平行于 $arrow(mu) =\(1\,2\)$ 的直线的方程．

+ 已知 $triangle.stroked.t A B C$, 且 $A\(3\,- 4\)$, $B\(- 6\,- 7\)$, $C\(- 4\,8\)$. 分别过 $A$⁠、$B$⁠、$C$ 三点作对边的平行线 $a$⁠、$b$⁠、$c$. 求这三条直线的方程．

+ 求通过 $A\(- 3\,2\)$, $B\(4\,- 7\)$ 的直线方程.

+ 已知 $P_1\(- 1\,3\)$, $P_2\(3\,- 4\)$, $P_3\(- 1\,- 2\)$⁠，某点 $A$ 满足 $accent(P_2 A, ⃗) = 3 / 2 accent(P_2 P_3, ⃗)$. 求直线 $P_1 A$ 的方程．

+ 直线 $ell$ 与 $X$ 轴相交于 $\(- 1\,0\)$, 与 $Y$ 轴相交于 $\(0\,3\)$. 求直线 $ell$ 的方程．

]
=== 直线与二元一次方程
在上一小节中，我们看到直线方程都是二元一次方程．但反过来要问是否每一个二元一次方程的图象都是直线呢？答案是肯定的．

#blk[定理][
每个二元一次方程所确定的图象都是一条直线．

]
#proof[
任给一个二元一次方程 $a x + b y + c = 0$, 其中 $a$⁠、$b$ 不同时为零，设 $\(x_0\,y_0\)$ 是方程的一个解，于是 $ a x_0 + b y_0 + c = 0 $ #noindent;两式相减可得 $ a\(x - x_0\)+ b\(y - y_0\)= 0 $ #noindent;建立一个直角坐标系 $\[O : thick arrow(e)_x\,arrow(e)_y\]$, 取 $P_0\(x_0\,y_0\)$ 和 $arrow(n) =\(a\,b\)$, 显然上述方程就是通过 $P_0$ 且垂直于 $arrow(n)$ 的直线方程．这就证明了每个二元一次方程都可确定一条直线．

]
#blk[推论1][
已知直线 $ell : thick a x + b y + c = 0$, 以 $x$⁠、$y$ 系数为坐标的向量 $\(a\,b\)$ 是直线 $ell$ 的法向量．

]
#blk[推论2][
方程

#numbered-align(($a_1 x + b_1 y + c_1 = 0$, $$, true), ($a_2 x + b_2 y + c_2 = 0$, $$, true));

#noindent;表示同一条直线的充要条件是存在一实数 $lambda$⁠，使 $ a_2 = lambda a_1\,#h(2em) b_2 = lambda b_1\,#h(2em) c_2 = lambda c_1 $

]
#proof[
#strong[必要性：]如果 (5.19)、(5.20) 两式表示同一条直线，则对直线上任一点 $\(x_0\,y_0\)$ 有

#numbered-align(($a_1 x_0 + b_1 y_0 + c_1 = 0$, $$, true), ($a_2 x_0 + b_2 y_0 + c_2 = 0$, $$, true));

#noindent; $\(5.19\)-\(5.21\)$, $\(5.20\)-\(5.22\)$ 得 $ a_1\(x - x_0\)+ b_1\(y - y_0\)= 0\
a_2\(x - x_0\)+ b_2\(y - y_0\)= 0 $ #noindent;由于 $\(a_1\,b_1\)$, $\(a_2\,b_2\)$ 都是同一条直线的法向量，所以它们平行，即存在一实数 $lambda$ 使#numbered-eq($ a_2 = lambda a_1\,#h(2em) b_2 = lambda b_1 $);#noindent;由 (5.21)、(5.22)、(5.23) 就可得到 $ c_2 = lambda c_1 $

#strong[充分性：]设存在一实数 $lambda$, 使 $a_2 = lambda a_1$, $b_2 = lambda b_1$, $c_2 = lambda c_1$, 则 $ a_2 x + b_2 y + c_2 = lambda\(a_1 x + b_1 y + c_1\)= 0 $ #noindent;显然，(5.19)、(5.20) 两式表示的是同一条直线．

]
显然，当 $t eq.not 0$ 时，方程 $a x + b y + c = 0$ 与 $t\(a x + b y + c\)= 0$ 是同一条直线的方程．这也就是说，同一直线的方程之间可以相差一个非零的常数因子．

在解析几何中，有时我们要讨论一条有向直线 $ell : thick a x + b y + c = 0$. 通常我们根据直线 $ell$ 的法向量 $\(a\,b\)$ 来规定直线 $ell$ 的方向．方法是这样：#strong[把法向量按顺时针旋转 ]$90 degree$#strong[ 后的方向作为直线 ]$ell$#strong[ 的方向]（图5.24）.

#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("5-26");], caption: []), figure([#fig("5-27");], caption: []))));

#example[
已知直线 $ell : thick 2 x + 3 y - 4 = 0$ 在坐标平面上，画出直线 $ell$ 和它的法向量，并标出直线的方向．

]
#solution[
如图5.25所示，$arrow(n)$ 是 $ell$ 的法向量，箭头指出了直线 $ell$ 的方向．

]
#example[
求通过点 $P_0\(- 2\,5\)$ 且平行于 $ell : thick 4 x - 3 y + 9 = 0$ 的直线方程．

]
#solution[
由题意，可取 $ell$ 的法向量 $arrow(n) =\(4\,- 3\)$ 作为所求直线的法向量，由点法向式，可得所求的直线方程为 $ 4\(x + 2\)+\(- 3\)\(y - 5\)= 0 $ #noindent;整理得 $ 4 x - 3 y + 23 = 0 $

]
#example[
求通过点 $P_0\(3\,- 4\)$ 且垂直于 $ell : thick 3 x + 7 y - 6 = 0$ 的直线方程．

]
#solution[
由题意，可取 $ell$ 的法向量 $arrow(n) =\(3\,7\)$ 作为所求直线的方向向量，由点方向式可得所求直线方程为 $ frac(x - 3, 3) = frac(y + 4, 7) $ #noindent;整理得 $ 7 x - 3 y - 33 = 0 $

]
#example[
已知点 $P\(2\,1\)$ 和直线 $ell : thick 2 x - 3 y + 6 = 0$⁠，且 $P M tack.t ell$ 于 $M$ 点，求 $M$ 点的坐标（图5.26）.

]
#figure([#fig("5-28");

  ],
  caption: [
  ]
)

#solution[
由于 $arrow(n) =\(2\,- 3\)$ 是直线 $ell$ 的一个法向量，所以 $arrow(n) pll accent(P M, ⃗)$⁠，于是存在一实数 $t$, 使 $ accent(P M, ⃗) = t arrow(n) $ #noindent;此即 $ accent(O M, ⃗) = accent(O P, ⃗) + t arrow(n) $ #noindent;设 $accent(O M, ⃗) =\(x_0\,y_0\)$, 又知 $accent(O P, ⃗) =\(2\,1\)$, $arrow(n) =\(2\,- 3\)$, 于是有 $ \(x_0\,y_0\)=\(2\,1\)+ t\(2\,- 3\)=\(2 + 2 t\,1 - 3 t\) $ #noindent;即 $ x_0 = 2 + 2 t\,#h(2em) y_0 = 1 - 3 t $ #noindent;由于 $M in ell$, 所以代入 $ell$ 的方程可得 $ 2\(2 + 2 t\)- 3\(1 - 3 t\)+ 6 = 0 $ #noindent;解之得 $t = - 7 / 13$. 所以可求得 $M$ 的坐标是 $ x_0 = 2 + 2 (- 7 / 13) = 12 / 13\,#h(2em) y_0 = 1 - 3 (- 7 / 13) = 34 / 13 $ #noindent;即：$M (12 / 13 \, thick 34 / 13)$

]
#exercise[
+ 求通过 $P_0\(5\,- 2\)$ 且平行于直线 $3 x - y + 1 = 0$ 的直线方程．

+ 求通过 $P_0\(- 2\,1\)$ 且垂直于直线 $3 x - y + 1 = 0$ 的直线方程．

+ 求通过点 $A\(0\,2\)$ 且平行于 $ell : thick 4 x - 3 y + 12 = 0$ 的直线方程．

+ 在坐标平面上作出如下各直线，画出它们的法向量，并标出直线的方向．

  + $ell_1 : thick 2 x + y - 3 = 0$

  + $ell_2 : thick 3 x - 4 y + 5 = 0$

  + $ell_3 : thick - x + y + 2 = 0$

+ 求出直线 $ell : thick 5 x - 3 y + 14 = 0$ 的所有单位法向量．

+ 已知 $ell : thick 3 x - 4 y + 2 = 0$. 求 $ell$ 的法向量，使它的系数向量为单位法向量且常数项为负数．

+ 已知点 $P\(3\,1\)$, $M$ 和直线 $ell : thick x + y - 2 = 0$, 且 $overline(P M) tack.t ell$ 于 $M$ 点，求 $M$ 点的坐标，并求 $P$ 点到 $ell$ 的距离．

+ 在练习7中，求 $P$ 点关于 $ell$ 的轴对称点 $P'$ 的坐标．

]
=== 直线的斜率
已知两个不同的点 $P_1\(x_1\,y_1\)$, $P_2\(x_2\,y_2\)$, 则直线 $P_1 P_2$ 的方程可写为：$ frac(x - x_1, x_2 - x_1) = frac(y - y_1, y_2 - y_1) $ #noindent;这个方程又可改写为如下形式 $ y - y_1 = frac(y_2 - y_1, x_2 - x_1)\(x - x_1\) $

#figure([#fig("5-29");

  ],
  caption: [
  ]
)

由相似形定理，我们容易证明，不论 $P_1$⁠、$P_2$ 在直线上的位置如何（图5.27），上面方程中 $frac(y_2 - y_1, x_2 - x_1)$ 始终是个定值．容易看出，如果我们设 $ell$ 向上的方向与 $X$ 轴正向的夹角为 $alpha$（$0 lt.eq alpha < pi$⁠），则 $ frac(y_2 - y_1, x_2 - x_1) = tan alpha $ #noindent;定值 $tan alpha$ 叫做直线 $ell$ 的#strong[斜率]，$alpha$ 叫做直线的#strong[倾角]．令 $tan alpha = k$⁠，则两点式方程就可写为 $ y - y_1 = k\(x - x_1\) $ #noindent;上述方程叫做直线 $ell$ 的#strong[点斜式]．这个方程还可变形为 $ y = k x + m $ #noindent;其中 $m = y_1 - k x_1$. 令 $x = 0$, 则 $y = m$, 这就是说直线：$y = k x + m$ 与 $Y$ 轴相交于点 $\(0\,m\)$. 因此，$m$ 为直线在 $Y$ 轴上的截距，上式通常称做直线的#strong[斜截式]．

已知直线 $ell : thick a x + b y + c = 0$, 令 $\(x_1\,y_1\)$, $\(x_2\,y_2\)$ 是 $ell$ 上任意两个不同的点，则

#numbered-align(($a x_1 + b y_1 + c = 0$, $$, true), ($a x_2 + b y_2 + c = 0$, $$, true));

#noindent; $\(5.25\)-\(5.24\)$ 得：$ a\(x_2 - x_1\)+ b\(y_2 - y_1\)= 0 $ #noindent;当 $b eq.not 0$ 可得 $ frac(y_2 - y_1, x_2 - x_1) = - a / b $

上式说明，#strong[由方程 ]$a x + b y + c = 0$#strong[ 解出 ]$y$#strong[, 则 ]$x$#strong[ 的系数就是直线 ]$ell$#strong[ 的斜率 ]$k$#strong[, 常数项即为 ]$ell$#strong[ 在 ]$Y$#strong[ 轴上的截距]．

#example[
求直线 $ell : thick 4 x - 3 y + 7 = 0$ 的斜率及在 $Y$ 轴上的截距．

]
#solution[
由已知方程解出 $y$, 得 $ y = 4 / 3 x + 7 / 3 $ #noindent;所以 $ell$ 的斜率是 $4 / 3$⁠，在 $Y$ 轴上的截距是 $7 / 3$.

]
#example[
已知直线上的一点 $P_1\(2\,3\)$, 且倾角 $alpha = pi / 3$, 求此直线的方程.

]
#solution[
由于 $k = tan alpha = tan pi / 3 = sqrt(3)$, 因此所求的直线方程为：$ y - 3 = sqrt(3)\(x - 2\) $

]
#exercise[
+ #block(sticky: true)[求出下列方程所表示直线的斜率．]

  #cols(2)[
  + $3 x + 4 y - 12 = 0$

  + $x + y - 2 = 0$

  + $4 x - 5 y + 12 = 0$

  + $x - y + 3 = 0$

  ]

+ 求满足下列条件的方程．

  + 通过点 $A\(1\,2\)$ 且 $k = 5$

  + 通过点 $P\(- 1\,2\)$ 且 $k = 2$

  + 通过原点 $O$ 且斜率为 $h$

  + $k = 3$⁠、$Y$ 轴上的截距是5

  + $k = 4$⁠、$X$ 轴上的截距是 $- 3$

  + 已知 $ell : thick x - sqrt(3) y = 0$, 过原点且 $k$ 是直线 $ell$ 的斜率的2倍．

+ 求下列各直线的方程．

  + 通过点 $P\(3\,2\)$, 且 $alpha = 45 degree$

  + 通过点 $P\(- 1\,2\)$, 且 $alpha = 120 degree$

  + 通过点 $P\(1\,- 1\)$, 且 $alpha = 0 degree$

]
=== 直线的法线式及其应用
已知直线 $ell$\(图5.28), 从原点 $O$ 作 $ell$ 的垂线，其垂足为 $M$, 设 $arrow(e) =\(cos alpha\,sin alpha\)$ 为 $accent(O M, ⃗)$ 的单位向量，再设原点 $O$ 到 $ell$ 的距离为 $p$, 则 $ accent(O M, ⃗) = p arrow(e) =\(p cos alpha\,p sin alpha\) $

#figure([#fig("5-30");

  ],
  caption: [
  ]
)

$M$ 点的坐标为 $\(p cos alpha\,p sin alpha\)$. 因此，由直线方程的点法向式可得 $ell$ 的方程为 $ \(x - p cos alpha\)cos alpha +\(y - p sin alpha\)sin alpha = 0 $ #noindent;即 $ x cos alpha + y sin alpha - p = 0 $ #noindent;这就是与原点距离为 $p$ 且垂直于向量 $arrow(e) =\(cos alpha\,sin alpha\)$ 的直线方程．通常我们把这种形式的方程叫做 $ell$ 的#strong[法线式]．一条直线的法线式是唯一确定的．这种方程的主要特点是 $x$⁠、$y$ 的系数向量是单位法向量，且常数项的值为负数．

如果给定方程 $a x + b y + c = 0$, 我们可把它化为法线式 $ x cos alpha + y sin alpha - p = 0 $ #noindent;由于它们之间仅相差一个常数因子 $lambda$, 即 $ cos alpha = lambda a\,#h(2em) sin alpha = lambda b\,#h(2em) - p = lambda c $ #noindent;所以 $ \(lambda a\)^2 +\(lambda b\)^2 = 1 quad arrow.r.double quad lambda = frac(1, plus.minus sqrt(a^2 + b^2)) $ #noindent;这时方程可化为 $ frac(a, plus.minus sqrt(a^2 + b^2)) x + frac(b, plus.minus sqrt(a^2 + b^2)) y + frac(c, plus.minus sqrt(a^2 + b^2)) = 0 $

由于法线式方程要求常数项一定是个负数，所以只要取根号前的符号使 $frac(c, plus.minus sqrt(a^2 + b^2)) < 0$ 即可．因此，当 $c > 0$ 时根号前取负号；当 $c < 0$ 时根号前取正号．

在法线式方程中，当 $p = 0$ 时，直线通过原点，这时一般式方程中 $c = 0$, 于是方程变为 $ a x + b y = 0 $ #noindent;在这情形下，我们如何选取因子 $frac(1, plus.minus sqrt(a^2 + b^2))$ 的符号呢？我们约定符号按如下规则选取：

选取符号使直线的单位法向量 $(frac(a, plus.minus sqrt(a^2 + b^2)) \, thick frac(b, plus.minus sqrt(a^2 + b^2)))$ 的方向总是指向第1、第2象限，其中 $Y$ 轴的单位法向量取 $arrow(e)_x =\(1\,0\)$.

#example[
化以下直线方程为法线式．

#cols(2)[
+ $3 x + 4 y - 7 = 0$

+ $4 x - 3 y = 0$

]
]
#solution[
+ 取 $lambda = 1 / sqrt(3^2 + 4^2) = 1 / 5$, 则已知方程的法线式为 $ 3 / 5 x + 4 / 5 y - 7 / 5 = 0 $

+ 取直线的单位法向量 $(frac(4, plus.minus sqrt(3^2 + 4^2)) \, thick frac(- 3, plus.minus sqrt(3^2 + 4^2)))$⁠，使它的方向指向第1、第2象限，于是根号前需取负号．直线的法线式为 $ - 4 / 5 x + 3 / 5 y = 0 $

]
下面我们来研究法线式左边二元一次多项式的几何意义．

已知直线 $ell$ 的法线式为 $ x cos alpha + y sin alpha - p = 0 $

当点 $P\(x\,y\)$ 在直线上，显然它的坐标满足 $ell$ 的法线式方程．

当点 $P\(x\,y\)$ 不在直线 $ell$ 上，我们来看多项式 $x cos alpha + y sin alpha - p$ 的几何意义是什么．

作 $ell$ 的法线 $O M$, $M$ 为垂足（图5.29），再过点 $P$ 作 $O M$ 的垂线，垂足为点 $N$. 因为 $accent(O M, ⃗)$ 的单位向量 $arrow(e) =\(cos alpha\,sin alpha\)$, $accent(O P, ⃗) =\(x\,y\)$, 所以 $ x cos alpha + y sin alpha - p & = accent(O P, ⃗) dot.op arrow(e) - p\
 & = accent(O P, ⃗) dot.op arrow(e) - accent(O M, ⃗) dot.op arrow(e) = accent(M P, ⃗) dot.op arrow(e) = M N $ #noindent;$M N$ 可能取负值，但不论取正值还是取负值，它的绝对值是 $P$ 点到直线 $ell$ 的距离．如果用 $d$ 表示 $P$ 到 $ell$ 的距离，则 $ d =\|x cos alpha + y sin alpha - p\| $ #noindent;这就是说，平面上任一点 $P\(x\,y\)$ 的坐标代入已知直线的法线式的左边的多项式的绝对值就是 $P$ 点到已知直线的距离．

#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("5-31");], caption: []), figure([#fig("5-32");], caption: []))));

如果 $x cos alpha + y sin alpha - p$ 不取绝对值，则求出的值是个带符号的数 $ delta = x cos alpha + y sin alpha - p $

由图5.29容易看出，当 $P$ 点与原点位于直线的异侧，则 $delta > 0$, 当 $P$ 点与原点位于 $ell$ 的同侧，则 $delta < 0$. 若 $ell$ 通过原点（图5.30），则 $p = 0$⁠．这时 $delta = accent(O P, ⃗) dot.op arrow(n)_0$⁠，$arrow(n)_0$ 为直线法线式的系数向量，于是 $P$ 点在法线式方程的系数向量所指向的那一侧 $delta$ 为正；反之 $delta$ 为负．

如果已知直线 $ell : thick a x + b y + c = 0$. 那么它的法线式为 $ frac(a x + b y + c, plus.minus sqrt(a^2 + b^2)) = 0 $ #noindent;根号前符号的选取按上述规定．所以 $P$ 点到 $ell$ 的距离 $ d = lr(|frac(a x + b y + c, plus.minus sqrt(a^2 + b^2))|) = frac(\|a x + b y + c\|, sqrt(a^2 + b^2)) $

#example[
求点 $P\(4\,3\)$ 到直线 $ell : thick 4 x + 3 y + 10 = 0$ 的距离．

]
#solution[
直线 $ell$ 的法线式为 $ frac(4 x + 3 y + 10, - sqrt(3^2 + 4^2)) = 0 $ #noindent;即为 $ - 4 / 5 x - 3 / 5 y - 2 = 0 $ #noindent;所以 $ d = lr(|- 4 / 5 times 4 + (- 3 / 5) times 3 - 2|) = 7 $

]
#example[
求点 $P\(3\,1\)$ 到直线 $ell : thick x - y + 3 = 0$ 的距离．

]
#solution[
$ d = frac(\|a x + b y + c\|, sqrt(a^2 + b^2)) = frac(\|3 - 1 + 3\|, sqrt(1^2 +\(- 1\)^2)) = frac(5 sqrt(2), 2) $

]
#exercise[
+ 求下列各点到给出的直线的距离 $d$.

  + $P\(- 2\,3\)\,#h(2em) ell : thick 8 x + 15 y - 24 = 0$

  + $P\(- 1\,7\)\,#h(2em) ell : thick 6 x - 8 y + 5 = 0$

  + $P\(2\,3\)\,#h(2em) ell : thick - 3 x + 7 y - 1 = 0$

+ 求下列各点到给出直线 $ell$ 的距离，并判断 $P$ 点与原点 $O$ 是在 $ell$ 的同侧还是不同侧．

  + $P\(3\,2\)\,#h(2em) ell : thick x - y + 2 = 0$

  + $P\(- 1\,4\)\,#h(2em) ell : thick x - y + 2 = 0$

+ 已知动点 $P\(x\,y\)$ 到直线 $5 x + 2 y + 17 = 0$ 的距离是3, 求动点 $P$ 的轨迹方程．

+ 求证两条平行线 $a x + b y + c_1 = 0$, $a x + b y + c_2 = 0$ 的距离是 $ d = frac(\|c_1 - c_2\|, sqrt(a^2 + b^2)) $ #noindent;并求 $4 x - 3 y - 1 = 0$ 到 $4 x - 3 y + 5 = 0$ 的距离．

]
=== 两条直线的位置关系
如果已知两条直线 $ ell_1 : & thick a_1 x + b_1 y + c_1 = 0\
ell_2 : & thick a_2 x + b_2 y + c_2 = 0 $ #noindent;那么 $arrow(n)_1 =\(a_1\,b_1\)$, $arrow(n)_2 =\(a_2\,b_2\)$ 分别是 $ell_1$, $ell_2$ 的法向量．

我们由 $ ell_1 pll ell_2 quad & arrow.l.r.double.long quad arrow(n)_1 pll arrow(n)_2\
ell_1 tack.t ell_2 quad & arrow.l.r.double.long quad arrow(n)_1 tack.t arrow(n)_2 $ #noindent;就可得 $ ell_1 pll ell_2 quad & arrow.l.r.double.long quad a_1 / a_2 = b_1 / b_2\
ell_1 tack.t ell_2 quad & arrow.l.r.double.long quad a_1 a_2 + b_1 b_2 = 0 $

如果两条直线的方程给出的是斜截式，即 $ ell_1 : & thick y = k_1 x + b_1\
ell_2 : & thick y = k_2 x + b_2 $ #noindent;那么我们由上面垂直与平行的充要条件就可得到：$ ell_1 pll ell_2 quad & arrow.l.r.double.long quad k_1 = k_2\
ell_1 tack.t ell_2 quad & arrow.l.r.double.long quad k_1 dot.op k_2 = - 1 $

下面我们来讨论如何求两条直线的#strong[交点]和#strong[交角]．

求 $ell_1$⁠、$ell_2$ 的交点问题就是求二元一次方程组 $ display(cases(a_1 x + b_1 y + c_1 = 0, a_2 x + b_2 y + c_2 = 0)) $ #noindent;的解的问题．

给定两条直线（图5.31）：$ ell_1 : & thick a_1 x + b_1 y + c_1 = 0\
ell_2 : & thick a_2 x + b_2 y + c_2 = 0 $ #noindent;从 $ell_1$ 旋转到 $ell_2$ 所经过的绝对值不超过 $pi$ 的角有两个，如图5.31所示的 $theta_1$⁠、$theta_2$. 故 $ theta_1 - theta_2 = plus.minus pi\,#h(2em) tan theta_1 = tan\(theta_2 plus.minus pi\)= tan theta_2 $

#figure([#fig("5-33");

  ],
  caption: [
  ]
)

如果取 $ell_1$ 的法向量 $arrow(n)_1 =\(a_1\,b_1\)$, $ell_2$ 的法向量 $arrow(n)_2 =\(a_2\,b_2\)$, 则从 $arrow(n)_1$ 方向转到 $arrow(n)_2$ 方向的绝对值小于 $pi$ 的角 $theta$ 等于 $theta_1$ 或 $theta_2$, 因此有 $ tan theta_1 = tan theta_2 = tan theta $ #noindent;但 $ tan theta = frac(a_1 b_2 - a_2 b_1, a_1 a_2 + b_1 b_2) $ #noindent;所以 $ tan theta_1 = tan theta_2 = frac(a_1 b_2 - a_2 b_1, a_1 a_2 + b_1 b_2) $

上式就是从 $ell_1$ 到 $ell_2$ 的旋转角的正切的计算公式．从旋转角的正切我们就可算出两条直线旋转角，通常我们把两条直线的旋转角中绝对值较小的那个角叫做这#strong[两条直线的夹角]．

如果给出的两条直线为斜截式．即 $ ell_1 : & thick y = k_1 x + b_1\
ell_2 : & thick y = k_2 x + b_2 $ #noindent;我们取 $ell_1$ 的法向量为 $arrow(n)_1 =\(k_1\,- 1\)$, $ell_2$ 的法向量 $arrow(n)_2 =\(k_2\,- 1\)$, 那么由上述求旋转角的正切的计算公式就变为 $ tan theta = frac(k_2 - k_1, 1 + k_1 dot.op k_2)\,quad\(1 + k_1 k_2 eq.not 0\) $

#example[
求 $ell_1 : thick 2 x - y - 3 = 0$ 到 $ell_2 : thick 3 x + y - 2 = 0$ 的旋转角．

]
#solution[
由于 $ tan theta = frac(mat(delim: "|", 2, - 1; 3, 1), 2 times 3 +\(- 1\)times 1) = 5 / 5 = 1 $ #noindent;所以：$theta = pi / 4$ 或 $- 3 / 4 pi$.

]
#example[
已知直线 $ell_1 : thick y = - 3 x + 2$, $ell_2 : thick y = 2 x - 3$, 求 $ell_1$ 到 $ell_2$ 的旋转角 $theta$.

]
#solution[
由于 $ tan theta = frac(k_2 - k_1, 1 + k_1 k_2) = frac(2 -\(- 3\), 1 + 2 times\(- 3\)) = frac(5, - 5) = - 1 $ #noindent;所以：$theta = 3 / 4 pi$ 或 $- pi / 4$.

]
#exercise[
+ 求证 $ell_1 : thick x - y + 2 = 0$ 与 $ell_2 : thick 3 x - 3 y + 7 = 0$ 平行，并作图验证．

+ 方程 $2 x + y + k = 0$, 当 $k$ 取各种不同的数值时，它们所表示的直线有什么关系，并作出 $k = 0\,1\,2$ 的三条直线．

+ 求证方程 $y = 3 x + b$, 当 $b$ 取各种不同的值时，它们所表示的直线互相平行，作出 $b = 0\,1\,2$ 的直线．

+ 求证直线 $ell_1 : thick x - 5 y + 1 = 0$ 与直线 $ell_2 : thick 5 x + y - 8 = 0$ 互相垂直．

+ 求出直线 $a_1 x + b_1 y + c_1 = 0$ 与 $frac(x - x_0, a_2) = frac(y - y_0, b_2)$ 垂直的条件．

+ 下面直线中，哪两条互相垂直？$ 2 x - 3 y = 0\,#h(2em) 2 x + 3 y = 0\,#h(2em) 3 x + 2 y = 0\,#h(2em) 3 x - 2 y = 0 $

+ 求直线 $ell_1 : thick x - y + 2 = 0$ 与 $ell_2 : thick x + y - 4 = 0$ 的交点坐标，并绘图验证．

+ 求直线 $ell_1 : thick y = 2 x + 6$ 与直线 $ell_2 : thick y = 1 / 3 x - 4$ 的旋转角．

+ 求直线 $ell_1 : thick 2 x - 3 y + 1 = 0$ 与直线 $ell_2 : thick 6 x - 4 y - 7 = 0$ 之间的夹角．

+ 求通过原点且与直线 $y = 1 / 2 x$ 夹角为 $45 degree$ 的直线方程．

+ 求两条直线 $ell_1 : thick x + y - 2 = 0$ 与 $ell_2 : thick 7 x - y + 4 = 0$ 的夹角．

]
=== 直线束
#blk[定理][
一条直线通过两条相交直线 $a_1 x + b_1 y + c_1 = 0$, $a_2 x + b_2 y + c_2 = 0$ 的交点的充要条件是存在两个不全为零的常数 $lambda_1$⁠、$lambda_2$ 使这条直线方程为#numbered-eq($ lambda_1\(a_1 x + b_1 y + c_1\)+ lambda_2\(a_2 x + b_2 y + c_2\)= 0 $);

]
#proof[
#strong[充分性：]设 $\(x_0\,y_0\)$ 是已知两条直线的交点．则 $ a_1 x_0 + b_1 y_0 + c_1 = 0\,#h(2em) a_2 x_0 + b_2 y_0 + c_2 = 0 $ #noindent;显然 $\(x_0\,y_0\)$ 满足方程 (5.26), 这就是说，方程 (5.26) 表示的直线通过点 $\(x_0\,y_0\)$.

#strong[必要性：]如果一条直线通过点 $\(x_0\,y_0\)$, 又通过另一点 $\(x_1\,y_1\)$ 只要取 $ lambda_1 = -\(a_2 x_1 + b_2 y_1 + c_2\)\,#h(2em) lambda_2 = a_1 x_1 + b_1 y_1 + c_1 $ #noindent;这条直线方程就可写为 $ -\(a_2 x_1 + b_2 y_1 + c_2\)\(a_1 x + b_1 y + c_1\)+\(a_1 x_1 + b_1 y_1 + c_1\)\(a_2 x + b_2 y + c_2\)= 0 $ #noindent;因 $\(x_0\,y_0\)$, $\(x_1\,y_1\)$ 两点不可能同时是两条已知直线的交点．所以 $lambda_1$ 和 $lambda_2$ 不能同时为零．

]
平面内通过一定点的所有直线的集合，叫做#strong[直线束]，那个定点叫做#strong[束心]．方程 (5.26) 叫做通过两直线交点的#strong[直线束方程]．

#figure([#fig("5-34");

  ],
  caption: [
  ]
)

#example[
求通过直线 $3 x - 2 y - 6 = 0$ 与 $x + y - 5 = 0$ 的交点与点 $\(1\,2\)$ 的直线方程．

]
#solution[
通过已知两条直线的交点的直线束方程可写为 $ lambda_1\(3 x - 2 y - 6\)+ lambda_2\(x + y - 5\)= 0 $ #noindent;这条直线又通过点 $\(1\,2\)$, 所以 $ lambda_1\(3 times 1 - 2 times 2 - 6\)+ lambda_2\(1 + 2 - 5\)= 0 $ #noindent;由此得 $ lambda_1 = - 2 / 7 lambda_2 $ #noindent;所以，所求的直线方程为 $ - 2 / 7 lambda_2\(3 x - 2 y - 6\)+ lambda_2\(x + y - 5\)= 0 $ #noindent;化简，得 $ x + 11 y - 23 = 0 $

]
#example[
求经过 $3 x + 2 y - 3 = 0$ 与 $2 x - y + 5 = 0$ 的交点且与直线 $x + y - 3 = 0$ 垂直的直线方程．

]
#solution[
经过已知两条直线交点的直线束方程可写为 $ lambda_1\(3 x + 2 y - 3\)+ lambda_2\(2 x - y + 5\)= 0 $ #noindent;即 $ \(3 lambda_1 + 2 lambda_2\)x +\(2 lambda_1 - lambda_2\)y - 3 lambda_1 + 5 lambda_2 = 0 $ #noindent;由于所求直线与直线 $x + y - 3 = 0$ 垂直，所以 $ 1 dot.op\(3 lambda_1 + 2 lambda_2\)+ 1 dot.op\(2 lambda_1 - lambda_2\)= 0 $ #noindent;由此得 $ lambda_2 = - 5 lambda_1 $ #noindent;因此所求直线方程为 $ lambda_1\(3 x + 2 y - 3\)- 5 lambda_1\(2 x - y + 5\)= 0 $ #noindent;整理得 $ x - y + 4 = 0 $

]
#exercise[
+ 求经过 $x + y - 7 = 0$, $x - y - 5 = 0$ 的交点和点 $P\(5\,3\)$ 的直线方程．

+ 求经过 $2 x - 3 y + 2 = 0$, $3 x - 4 y - 2 = 0$ 的交点，且平行于 $5 x - 2 y + 3 = 0$ 的直线方程．

+ 求经过 $5 x - 3 y + 7 = 0$, $3 x - 2 y - 5 = 0$ 的交点，且与 $4 x - 3 y + 2 = 0$ 垂直的直线方程．

+ 三条直线 $ell_1 : thick a_1 x + b_1 y + c_1 = 0$, $ell_2 : thick a_2 x + b_2 y + c_2 = 0$, $ell_3 : thick a_3 x + b_3 y + c_3 = 0$ 共点的充分必要条件是 $ mat(delim: "|", a_1, b_1, c_1; a_2, b_2, c_2; a_3, b_3, c_3) = 0 $

]
=== 二元一次不等式表示的区域
我们知道，含有两个未知数，并且未知数的次数都是一次的不等式叫做#strong[二元一次不等式]．它的一般形式为#numbered-eq($ a x + b y + c > 0 quad upright("或") quad a x + b y + c < 0 $);

例如 $3 x + y - 1 > 0$, $y > 2 x - 3$ 等都是二元一次不等式．

使不等式 (5.27) 成立的未知数的值，叫做不等式的解．以不等式的解为坐标的所有点构成的集合叫做#strong[不等式表示的区域]．

下面我们来研究，如何根据二元一次不等式画出它所表示的区域．

直线 $a x + b y + c = 0$ 把坐标平面分为两个半平面（不包括这条直线本身），我们把法向量 $arrow(n) =\(a\,b\)$ 的方向所指向的那一侧叫做#strong[正半平面]，简称正侧；另一侧叫做#strong[负半平面]，简称负侧（图5.33）.

#figure([#fig("5-35");

  ],
  caption: [
  ]
)

如果 $P_0\(x_0\,y_0\)$ 是直线 $a x + b y + c = 0$ 上一点，则 $a x_0 + b y_0 + c = 0$, $c = -\(a x_0 + b y_0\)$, 于是 $ a x + b y + c = a x + b y -\(a x_0 + b y_0\)= a\(x - x_0\)+ b\(y - y_0\)= arrow(n) dot.op accent(P_0 P, ⃗) $ #noindent;若 $P\(x\,y\)$ 位于正半平面，则 $arrow(n)$ 与 $accent(P_0 P, ⃗)$ 的夹角为锐角，即 $arrow(n) dot.op accent(P_0 P, ⃗) > 0$. 这时 $a x + b y + c > 0$\; 若 $P\(x\,y\)$ 位于负半平面，则 $arrow(n)$ 与 $accent(P_0 P, ⃗)$ 的夹角为钝角，即 $arrow(n) dot.op accent(P_0 P, ⃗) < 0$. 这时 $a x + b y + c < 0$（图5.33）.

根据上面分析，我们要画出 $a x + b y + c < 0$ 或 $a x + b y + c > 0$ 所表示的区域，只要先画出直线 $ell : thick a x + b y + c = 0$, 然后就可确定 $a x + b y + c > 0$ 表示的区域是哪个半平面，$a x + b y + c < 0$ 表示的区域便是另一个半平面．

#example[
画出不等式 $2 x - y + 1 > 0$ 表示的区域．

]
#solution[
在坐标平面上，画直线 $2 x - y + 1 = 0$（图5.34），这时直线的法向量 $arrow(n) =\(2\,- 1\)$, 由于 $arrow(n)$ 指向的那一侧为正半平面，不等式 $2 x - y + 1 > 0$ 表示的区域是正半平面，如图5.34阴影所示．

由于二元一次式 $a x + b y + c$ 在直线 $a x + b y + c = 0$ 同一侧的半平面内完全同号，所以在决定二元一次不等式所表示的区域时，只需取直线 $a x + b y + c = 0$ 一侧的某一个点，将它的坐标代入已知的不等式，如果不等式成立，那么这一点所在的半平面就是不等式表示的区域，如果不等式不成立，那么直线的另一侧就是不等式表示的区域，显然，对不等式 $a x + b y + c > 0$ 或 $a x + b y + c < 0$, 当 $c eq.not 0$ 时，取原点 $O\(0\,0\)$ 去确定它们所表示的区域最为方便．

]
#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (38%, 58%,), column-gutter: 1em, align: center + bottom, figure([#fig("5-36");], caption: []), figure([#fig("5-37");], caption: []))));

#example[
画出不等式 $x - 3 y + 8 < 0$ 表示的区域．

]
#solution[
将 $\(0\,0\)$ 代入已知不等式，得 $8 > 0$, 原不等式不成立，所以不等式 $x - 3 y + 8 < 0$ 表示的区域是直线 $x - 3 y + 8 = 0$ 不包含原点的那个半平面，如图5.35阴影所示．

]
#example[
画出二元一次不等式组 $display(cases(3 x + 4 y - 2 < 0, 2 x + y + 2 > 0))$ 表示的区域．

]
#solution[
作直线 $ell_1 : thick 3 x + 4 y - 2 = 0$, $ell_2 : thick 2 x + y + 2 = 0$. 分别用阴影线画出不等式 $3 x + 4 y - 2 < 0$ 和 $2 x + y + 2 > 0$ 所表示的区域，则已知不等式组所表示的区域是上面两个区域的交集，如图5.36所示双阴影区域（不包括这两条直线）．

]
#figure([#fig("5-38");

  ],
  caption: [
  ]
)

#exercise[
+ #block(sticky: true)[画出下列二元一次不等式表示的区域．]

  #cols(2)[
  + $8 x + 4 y + 1 > 0$

  + $3 x - 2 y + 5 < 0$

  + $2 x - 6 y + 1 gt.eq 0$

  + $4 x + y - 4 lt.eq 0$

  + $y - x > 0$

  + $2 y - x < 0$

  ]

+ #block(sticky: true)[画出下列二元一次不等式组表示的区域．]

  #cols(2)[
  + $display(cases(x - y > 0, 2 x - y < 0))$

  + $display(cases(x + y - 1 < 0, x - y + 2 > 0))$

  + $display(cases(2 x + 3 y > 12, x - 2 y < 4))$

  + $display(cases(2 x - 6 y - 4 > 0, y < x / 3 + 2 / 3))$

  ]

+ #block(sticky: true)[画出下列二元一次不等式组表示的区域．]

  #cols(2)[
  + $display(cases(x + y + 5 > 0, 2 x - y + 4 > 0, 2 x + y + 4 > 0))$

  + $display(cases(x + y + 5 < 0, 2 x - y + 4 < 0, 2 x + y + 4 > 0))$

  ]

]
#heading(level: 2, numbering: none, supplement: [toc-sub])[习题5.2]

+ 已知 $A\(5\,3\)$, $B\(7\,- 1\)$, $C\(- 1\,5\)$, 求 $triangle.stroked.t A B C$ 各边所在直线的方程及三条中线所在直线的方程．

+ 求经过 $\(- 3\,4\)$ 点，并且在两轴上的截距和等于12的直线方程．

+ 已知直线的倾角是 $60 degree$, 并且到原点的距离等于3, 求直线的方程．

+ 已知直线的斜率是 $- 3$, 且到原点的距离等于10, 求直线的方程．

+ #block(sticky: true)[求下列直线与点的距离]

  #cols(2)[
  + $6 x - 8 y - 5 = 0\,quad\(2\,- 10\)$

  + $y = sqrt(3) x + 7\,quad\(0\,5\)$

  + $7 x = 0\,quad\(- 2\,- 1\)$

  + $y = 0\,quad\(- 1\,3\)$

  ]

+ 用解析法证明等边三角形经一边上的一点到其他两边的距离和等于这个边上的高．

+ 正方形的一个顶点在原点，它的一边倾角为 $alpha$, 边长等于 $a$, 求这个正方形的各边的直线方程．

  #fig-center[
  #fig("5-39");

  #subcap[
  第7题

  ]
  ]

+ 一动点 $P$ 到已知三角形三边的距离分别是 $P_1$⁠、$P_2$⁠、$P_3$, 如果对常数 $a$⁠、$b$⁠、$c$, 使 $a P_1 + b P_2 + c P_3 = 0$

  证明：$P$ 点的轨迹是直线．

+ 证明由直线 $x = 0$, $y = m_1 x + b_1$ 和 $y = m_2 x + b_2$ 所围成的三角形面积是 $frac(\(b_2 - b_1\)^2, 2\|m_2 - m_1\|) thick\(m_2 eq.not m_1\)$

+ 已知 $A\(1\,3\)$, $B\(4\,10\)$, $C\(- 4\,8\)$, $D\(- 2\,0\)$. 若一动点 $P\(x\,y\)$ 使 $triangle.stroked.t P A B$ 的面积等于 $triangle.stroked.t P C D$ 的面积．求证 $P$ 点的轨迹是直线 $15 x - y + 18 = 0$ 或 $x + 5 y + 14 = 0$.

+ 已知 $A\(a\,0\)$, $B\(0\,b\)$, 通过 $A B$ 的中点且垂直于 $A B$ 的直线在 $X$ 轴、$Y$ 轴上的截距分别是 $p$⁠、$q$. 求证 $a p + b q = 0$.

== 圆
=== 圆的方程
已知定点 $C\(a\,b\)$, 定长 $r$, 我们来求以 $C$ 为圆心，$r$ 为半径的圆的方程（图5.37）.

设 $P\(x\,y\)$ 是一动点，由圆的定义可知，点 $P$ 在圆上当且仅当 $\|accent(C P, ⃗)\|= r$ 或 $accent(C P, ⃗) dot.op accent(C P, ⃗) = r^2$⁠．用坐标表示，可写为#numbered-eq($ \(x - a\)^2 +\(y - b\)^2 = r^2 $, label: label("circle1"));#noindent;这就是说，以 $C$ 为圆心，$r$ 为半径的圆上的任一点 $P$, 它的坐标都满足方程 (#ref-num(label("circle1"));); 反过来，一个点的坐标如果满足方程 (#ref-num(label("circle1"));), 那么它必在以 $C$ 为圆心 $r$ 为半径的圆上，方程 (#ref-num(label("circle1"));) 叫做以 $C$ 为圆心，$r$ 为半径的#strong[圆的方程]，如果圆心在原点（图5.38），那么圆的方程为#numbered-eq($ x^2 + y^2 = r^2 $);

#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("5-40");], caption: []), figure([#fig("5-41");], caption: []))));

把 (#ref-num(label("circle1"));) 展开得 $ x^2 + y^2 - 2 a x - 2 b y + a^2 + b^2 - r^2 = 0 $ #noindent;由此可见，任一圆的方程都可写为下面的形式#numbered-eq($ x^2 + y^2 + 2 D x + 2 E y + F = 0 . $, label: label("circle2"));#noindent;由于 $lambda\(x^2 + y^2 + 2 D x + 2 E y + F\)= 0$ 和 (#ref-num(label("circle2"));) 表示了同一个圆，于是圆的方程是一般二次方程 $ A x^2 + 2 B x y + C y^2 + 2 D x + 2 E y + F = 0 $ #noindent;的一种特殊形式，它具有两个特点：

+ $x^2$ 与 $y^2$ 项的系数相同且不等于0;

+ 不含 $x y$ 项．

#noindent;现在要问，是否任一个形如方程 (#ref-num(label("circle2"));) 的图象都是一个圆呢？

将 (#ref-num(label("circle2"));) 左边配方，得#numbered-eq($ \(x + D\)^2 +\(y + E\)^2 = D^2 + E^2 - F $, label: label("circle3"));

+ 当 $D^2 + E^2 - F > 0$ 时，方程 (#ref-num(label("circle3"));) 表示以 $\(- D\,- E\)$ 为圆心，以 $sqrt(D^2 + E^2 - F)$ 为半径的圆；

+ 当 $D^2 + E^2 - F = 0$ 时，方程 (#ref-num(label("circle3"));) 的图象只有一个点 $\(- D\,- E\)$\;

+ 当 $D^2 + E^2 - F < 0$ 时，没有实数偶 $\(x\,y\)$ 满足方程 (#ref-num(label("circle3"));), 因此方程 (#ref-num(label("circle3"));) 没有图象．

为统一叙述，我们常把情况2的轨迹叫做#strong[点圆]，情况3的轨迹叫做#strong[虚圆]．

归纳以上讨论，我们有

#blk[定理][
二元二次方程 $A x^2 + 2 B x y + C y^2 + 2 D x + 2 E y + F = 0$ 表示圆（包括点圆虚圆）的充要条件是 $ A = C eq.not 0\,#h(2em) B = 0 $

]
#example[
已知 $C\(3\,4\)$, 求以 $C$ 为圆心，半径等于5的圆的方程．

]
#solution[
设 $P\(x\,y\)$ 在以 $C$ 为圆心，半径等于5的圆上，则以 $C$ 为圆心，半径等于5的圆的方程为 $ \(x - 3\)^2 +\(y - 4\)^2 = 5^2 $ #noindent;即 $ x^2 + y^2 - 6 x - 8 y = 0 $

]
#example[
求圆 $x^2 + y^2 - 6 x + 2 y + 6 = 0$ 的圆心和半径．

]
#solution[
将原方程配方得 $ \(x - 3\)^2 +\(y + 1\)^2 = 4 $ #noindent;所以所求圆的圆心的坐标是 $\(3\,- 1\)$, 半径是2.

]
#example[
已知 $A\(9\,- 3\)$, $B\(3\,- 1\)$, 求以 $overline(A B)$ 为直径圆的方程（图5.39）.

]
#figure([#fig("5-42");

  ],
  caption: [
  ]
)

#solution[
#strong[方法一：]设 $overline(A B)$ 的中点为 $C$, 则 $C$ 点的坐标 $ x = frac(9 + 3, 2) = 6\,#h(2em) y = frac(- 3 - 1, 2) = - 2 $ #noindent;依题意 $C\(6\,- 2\)$ 为所求圆的圆心，由距离公式得 $ r^2 =\(9 - 6\)^2 +\(- 3 + 2\)^2 = 10 $ #noindent;因此，所求圆的方程为 $ \(x - 6\)^2 +\(y + 2\)^2 = 10 $ #noindent;或 $ x^2 + y^2 - 12 x + 4 y + 30 = 0 $

#strong[方法二：]设 $P\(x\,y\)$ 为所求圆上任一点，依平面几何定理可知，$P$ 点在以 $overline(A B)$ 为直径的圆上的充要条件是 $angle A P B = pi / 2$, 或 $accent(A P, ⃗) dot.op accent(B P, ⃗) = 0$. 用坐标表达，则为 $ \(x - 9\)\(x - 3\)+\(y + 3\)\(y + 1\)= 0 $ #noindent;展开整理得 $ x^2 + y^2 - 12 x + 4 y + 30 = 0 $ #noindent;这就是所求圆的方程，

]
#example[
已知 $A\(2\,2\)$, $B\(5\,3\)$, $C\(3\,- 1\)$, 求通过 $A$⁠、$B$⁠、$C$ 三点圆的方程．

]
#solution[
#strong[方法一：]设所求圆的方程为 $ x^2 + y^2 + 2 D x + 2 E y + F = 0 $ #noindent;因为 $A$⁠、$B$⁠、$C$ 三点都在圆上，所以它们的坐标都满足方程，故得 $ display(cases(4 D + 4 E + F + 8 = 0, 10 D + 6 E + F + 34 = 0, 6 D - 2 E + F + 10 = 0)) $ #noindent;解这个方程组，得 $ D = - 4\,#h(2em) E = - 1\,#h(2em) F = 12 $ #noindent;于是所求圆的方程为 $ x^2 + y^2 - 8 x - 2 y + 12 = 0 $

#strong[方法二：]分别求 $overline(A B)$, $overline(A C)$ 垂直平分线方程，得 $ display(cases(3 x + y = 13, x - 3 y = 1)) $ #noindent;联立求解，得 $x = 4$, $y = 1$. 于是 $C\(4\,1\)$ 就是所求圆的圆心，半径的平方为 $ r^2 =\(5 - 4\)^2 +\(3 - 1\)^2 = 5 $ #noindent;因此，所求圆的方程为 $ \(x - 4\)^2 +\(y - 1\)^2 = 5 $ #noindent;或 $ x^2 + y^2 - 8 x - 2 y + 12 = 0 $

]
#example[
求与 $X$ 轴相交于 $A\(1\,0\)$, $B\(5\,0\)$ 两点且半径为 $sqrt(5)$ 的圆的方程．

]
#solution[
设所求圆的方程为 $ x^2 + y^2 + 2 D x + 2 E y + F = 0 $ #noindent;因 $A$⁠、$B$ 两点在圆上，所以 $A$⁠、$B$ 的坐标满足所设方程．即 $ display(cases(1 + 2 D + F = 0, 25 + 10 D + F = 0)) $ #noindent;解之得：$D = - 3\,quad F = 5$. 但因为 $ r^2 = D^2 + E^2 - F $ #noindent;所以：$ 5 =\(- 3\)^2 + E^2 - 5 $ #noindent;即：$E = plus.minus 1$⁠，因此所求圆的方程有两个 $ x^2 + y^2 - 6 x + 2 y + 5 = 0 $ #noindent;或 $ x^2 + y^2 - 6 x - 2 y + 5 = 0 $

]
#example[
求到两定点 $A$ 和 $B$ 的距离之比等于常数 $k thick\(k eq.not 1\)$ 的点的轨迹．

]
#figure([#fig("5-43");

  ],
  caption: [
  ]
)

#solution[
建立坐标系，取 $A$ 为坐标原点，取射线 $A B$ 为 $X$ 轴的正半轴，设点 $B$ 的坐标是 $\(a\,0\)$, 点 $P\(x\,y\)$ 是一动点，依题意可知点 $P\(x\,y\)$ 是轨迹上的点的充分必要条件是 $ sqrt(x^2 + y^2) / sqrt(\(x - a\)^2 + y^2) = k $ #noindent;或 $ frac(x^2 + y^2, \(x - a\)^2 + y^2) = k^2 $

经过变形、配方，这方程可化为 $ (x - frac(a k^2, k^2 - 1))^2 + y^2 = (frac(a k, k^2 - 1))^2 $ #noindent;因此，所求轨迹是一个圆心在 $(frac(a k^2, k^2 - 1) \, 0)$, 半径为 $frac(a k, \|k^2 - 1\|)$ 的圆．

]
#example[
求通过圆 $C_1 : thick x^2 + y^2 - 4 x - 1 = 0$ 和圆 $C_2 : thick x^2 + y^2 - 8 x + 11 = 0$ 的交点和点 $\(- 2\,2\)$ 的圆的方程．

]
#solution[
类似于用直线束的解题方法，我们考虑圆族#numbered-eq($ lambda_1\(x^2 + y^2 - 4 x - 1\)+ lambda_2\(x^2 + y^2 - 8 x + 11\)= 0 $, label: label("circles1"));#noindent;当 $lambda_1\,lambda_2$ 不同时为零，方程 (#ref-num(label("circles1"));) 表示的圆都通过两圆 $C_1$, $C_2$ 的两个交点，如果方程 (#ref-num(label("circles1"));) 是所求圆的方程，那么点 $\(- 2\,2\)$ 的坐标应满足方程 (#ref-num(label("circles1"));), 由此，我们可定 $lambda_1 : lambda_2$, 把 $x = - 2$, $y = 2$ 代入 (#ref-num(label("circles1"));) 得 $ lambda_1\[\(- 2\)^2 + 2^2 - 4\(- 2\)- 1\]+ lambda_2\[\(- 2\)^2 + 2^2 - 8\(- 2\)+ 11\]= 0 $ #noindent;由此，得 $ lambda_1 = - 7 / 3 lambda_2 $ #noindent;所以，所求圆的方程为 $ - 7 lambda_2\(x^2 + y^2 - 4 x - 1\)+ 3 lambda_2\(x^2 + y^2 - 8 x + 11\)= 0 $ #noindent;消去 $lambda_2$, 整理最后得所求圆的方程为 $ x^2 + y^2 - x - 10 = 0 $

]
#exercise[
+ #block(sticky: true)[由下列给定的圆心 $C$ 和半径 $r$, 求圆的方程．]

  #cols(2)[
  + $C\(0\,1\)\,quad r = 1$

  + $C\(2\,7\)\,quad r = 5$

  + $C\(- 6\,4\)\,quad r = 10$

  + $C\(- 3\,- 5\)\,quad r = 7$

  ]

+ #block(sticky: true)[已知下面一些圆的圆心在原点，且通过给定的点，求这些圆的方程．]

  #cols(3)[
  + $\(4\,1\)$

  + $\(- 4\,3\)$

  + $\(- 3\,5\)$

  + $\(a - b\,a + b\)$

  + $\(sqrt(2)\,2 sqrt(3)\)$

  ]

+ 已知 $A\(- 2\,4\)$, $B\(8\,- 2\)$. 求以 $overline(A B)$ 为直径的圆的方程．

+ 已知 $A\(x_1\,y_1\)$, $B\(x_2\,y_2\)$. 求证以 $overline(A B)$ 为直径的圆的方程可写为 $ \(x - x_1\)\(x - x_2\)+\(y - y_1\)\(y - y_2\)= 0 $

+ 求以 $C\(3\,5\)$ 为圆心，且通过点 $A\(1\,- 3\)$ 的圆的方程．

+ 已知 $A\(4\,- 5\)$, $B\(- 1\,2\)$, $C\(11\,0\)$. 求证 $A$⁠、$B$⁠、$C$ 三点决定一圆，并写出这圆的方程．

+ 求过 $A\(5\,2\)$⁠、$B\(- 3\,0\)$ 两点，圆心在 $Y$ 轴上的圆的方程，并画出图形．

+ 求通过点 $\(0\,1\)$ 和点 $\(0\,3\)$, 且半径等于2的圆的方程．

+ 试判定下列方程表示圆、还是点圆、虚圆，若是圆，则求出圆心坐标和半径．

  + $x^2 + y^2 = 0$

  + $x^2 + y^2 - 100 = 0$

  + $\(x - a\)^2 +\(y - b\)^2 = 0$

  + $x^2 + y^2 - 8 x - 9 = 0$

  + $x^2 + y^2 - 2 x + 4 y + 50 = 0$

+ 证明通过两定点 $A\(- 2\,4\)$, $B\(6\,8\)$ 的圆的圆心都位于直线 $2 x + y = 10$ 上．

+ 求原点到圆 $x^2 + y^2 + 6 x - 8 y - 11 = 0$ 的最大和最小距离．

+ 求与两定点 $O\(0\,0\)$⁠、$A\(3\,0\)$ 的距离比为 $1 / 2$ 的点的轨迹的方程，并画出方程的图象．

+ 求通过两圆 $x^2 + y^2 - 8 x - 2 y + 7 = 0$⁠、$x^2 + y^2 - 6 x - 4 y + 9 = 0$ 的两个交点和原点的圆的方程．

]
=== 圆的切线方程
已知直线 $ell$ 与圆：$\(x - a\)^2 +\(y - b\)^2 = r^2$ 相切于点 $P_0\(x_0\,y_0\)$, 我们来求切线 $ell$ 的方程（图5.41）.

#figure([#fig("5-44");

  ],
  caption: [
  ]
)

设 $P\(x\,y\)$ 是一动点，则 $P\(x\,y\)$ 在切线 $ell$ 上的充要条件是 $ accent(C P_0, ⃗) dot.op accent(P_0 P, ⃗) = 0 $ #noindent;用坐标表示，即为#numbered-eq($ \(x_0 - a\)\(x - x_0\)+\(y_0 - b\)\(y - y_0\)= 0 $, label: label("circ-1"));#noindent;方程 (#ref-num(label("circ-1"));) 就是所求切线 $ell$ 的方程．特别当圆心在坐标原点，切线方程变为 $ x_0\(x - x_0\)+ y_0\(y - y_0\)= 0 $ #numbered-eq($ x_0 x + y_0 y = r^2 $, label: label("circ-2"));

#example[
已知圆：$x^2 + y^2 = 10$, 求与该圆相切于点 $A\(1\,3\)$ 的切线方程．

]
#solution[
由圆的切线 (#ref-num(label("circ-2"));), 得所求切线方程为 $ x + 3 y = 10 $

]
#example[
已知圆：$x^2 + y^2 + 6 x - 4 y - 13 = 0$, 求与该圆相切于点 $A\(2\,3\)$ 的切线方程．

]
#solution[
已知圆的方程可化为 $ \(x + 3\)^2 +\(y - 2\)^2 = 26 $ #noindent;所以圆心 $C\(- 3\,2\)$, $accent(C A, ⃗) =\(5\,1\)$. 由圆的切线方程，可得所求切线为 $ 5 dot.op\(x - 2\)+ 1 dot.op\(y - 3\)= 0 $ #noindent;整理得 $ 5 x + y = 13 $

]
#example[
求证直线 $ell : thick y = k x + b$, 与已知圆 $x^2 + y^2 = r^2$ 相切的充要条件是 $r = plus.minus b / sqrt(1 + k^2)$

]
#proof[
把 $y = k x + b$ 代入 $x^2 + y^2 = r^2$, 得 $ \(k x + b\)^2 + x^2 = r^2 $ #noindent;展开整理得 $ \(1 + k^2\)x^2 + 2 k b x + b^2 - r^2 = 0 $ #noindent;由圆的切线定义可知：已知直线与圆相切的充要条件是上面方程有重根，即它的判别式 $ Delta =\(2 k b\)^2 - 4\(1 + k^2\)\(b^2 - r^2\)= 0 $ #noindent;化简就可得到直线 $ell$ 与已知圆相切的条件是 $ b^2 = r^2\(1 + k^2\)quad arrow.r.double quad r = plus.minus b / sqrt(1 + k^2) $

]
在例5.55的条件中，右边正好是圆心到直线 $ell$ 的距离，所以上述条件的几何意义是：直线和圆相切的充要条件是圆心到直线的距离等于半径，这是我们在平面几何中已熟知的结论，这里用解析方法再次得到证明，当然我们也可由这个几何定理直接证明例5.55.

#example[
已知 $P_0\(x_0\,y_0\)$ 是已知圆 $x^2 + y^2 = r^2$ 外任一点，$P_0 T$, $P_0 V$ 与此已知圆相切于 $T\(x_1\,y_1\)$, $V\(x_2\,y_2\)$ 两点，求直线 $T V$ 的方程．

]
#solution[
在点 $T\(x_1\,y_1\)$, $V\(x_2\,y_2\)$ 处的切线方程分别为

#numbered-align(($x_1 x + y_1 y = r^2$, $$, true), ($x_2 x + y_2 y = r^2$, $$, true));

#noindent;因为切线 (5.35), (5.36) 都通过 $P_0$ 点，所以

#numbered-align(($x_1 x_0 + y_1 y_0 = r^2$, $$, true), ($x_2 x_0 + y_2 y_0 = r^2$, $$, true));

#noindent;由 (5.37), (5.38) 可看出，点 $T\(x_1\,y_1\)$, $V\(x_2\,y_2\)$ 都满足方程#numbered-eq($ x_0 x + y_0 y = r^2 $);#noindent;由于两点定一直线，所以方程 (5.39) 就是直线 $T V$ 的方程．

]
在例5.56中，方程 (5.39) 和圆的切线方程形状相同，当已知 $P_0\(x_0\,y_0\)$ 在圆上，(5.39) 式就是圆的切线方程．

#exercise[
+ 写出过下列圆上已知点的切线方程．

  + $A\(1\,2\)\,quad x^2 + y^2 = 5$

  + $B\(12\,- 5\)\,quad x^2 + y^2 = 169$

  + $C\(10\,10\)\,quad\(x - 2\)^2 +\(y - 4\)^2 = 100$

  + $D\(2\,- 2\)\,quad x^2 + y^2 + 8 x - 16 y - 56 = 0$

  + $E\(- 4\,- 3\)\,quad x^2 + y^2 + 12 x - 8 y - 1 = 0$

  + $O\(0\,0\)\,quad x^2 + y^2 - 9 x + 11 y = 0$

+ 已知定点 $C\(a\,b\)$, 动点 $P\(x\,y\)$. 证明圆 $accent(C P, ⃗) dot.op accent(C P, ⃗) = r^2$, 在 $P_0\(x_0\,y_0\)$ 处的切线方程为 $accent(C P, ⃗) dot.op accent(C P_0, ⃗) = r^2$ 或 $\(x - a\)\(x_0 - a\)+\(y - b\)\(y_0 - b\)= r^2$.

+ 求证圆 $x^2 + y^2 + 2 D x + 2 E y + F = 0$ 在其上 $\(x_0\,y_0\)$ 点处的切线方程是 $ x_0 x + y_0 y + D\(x + x_0\)+ E\(y + y_0\)+ F = 0 $

+ 求证下列已知直线与已知圆相切，并求出切点的坐标．

  + $x - y = 4\,quad x^2 + y^2 = 8$

  + $5 x + 12 y = 13\,quad x^2 + y^2 = 1$

  + $8 x - 15 y = 289\,quad x^2 + y^2 = 289$

  + $a x + b y = a^2 + b^2\,quad x^2 + y^2 = a^2 + b^2$

+ 求证圆 $x^2 + y^2 + 2 D x + 2 E y = 0$ 在原点的切线方程是 $D x + E y = 0$.

+ 从点 $A\(5\,- 4\)$ 到圆：$x^2 + y^2 + 10 x + 7 = 0$ 引切线 $A P$, $P$ 为切点，求 $overline(A P)$ 的长和点 $P$ 的坐标．

+ 求证圆 $x^2 + y^2 + 2 D x + 2 E y + F = 0$ 与 $X$ 轴相切的充要条件是 $D^2 = F$, 并求与 $Y$ 轴相切的一个充要条件．

+ 已知圆 $\(x - 2\)^2 +\(y - 2\)^2 = r^2$ 与 $Y$ 轴相交在 $A$⁠、$B$ 两点，如果圆在 $A$⁠、$B$ 两点处的切线互相垂直，那么 $r = 2 sqrt(2)$.

]
#heading(level: 2, numbering: none, supplement: [toc-sub])[习题5.3]

+ 求通过点 $\(0\,0\)$⁠、$\(a\,0\)$⁠、$\(0\,a\)$ 的圆的方程．

+ 求下列每个圆的圆心和半径．

  + $\(x - a\)\(x - b\)+\(y - c\)\(y - d\)= 0$

  + $\(x + y + a\)^2 +\(x - y - a\)^2 = 8 a^2$

+ 已知 $A\(2\,- 1\)$, $B\(2\,3\)$, $C\(4\,- 1\)$, 求 $triangle.stroked.t A B C$ 的外接圆的圆心和半径．

+ 证明通过 $A\(a\,c\)$, $B\(b\,c\)$ 和 $C\(b\,d\)$ 的圆的方程是 $\(x - a\)\(x - b\)+\(y - c\)\(y - d\)= 0$.

+ $P$ 是圆心在 $A\(a\,b\)$ 且通过原点的圆上的一动点，求证 $triangle.stroked.t O A P$ 重心的轨迹方程是 $ 3\(x^2 + y^2\)- 4 a x - 4 b y + a^2 + b^2 = 0 $

+ 证明 $A\(6\,3\)$⁠、$B\(5\,4\)$⁠、$C\(1\,- 2\)$ 和 $D\(6\,- 1\)$ 四点共圆．

+ 一动点到原点的距离的平方是它到定直线 $x = 1$ 距离的4倍，求证这动点的轨迹是点圆 $\(2\,0\)$ 或圆 $\(x + 2\)^2 + y^2 = 8$.

+ 已知三角形由直线 $x = 2$, $y = 4$ 和 $4 x + 3 y = 32$ 围成，求这三角形内切圆的方程．

+ 已知 $A\(x_1\,y_1\)$, $B\(x_2\,y_2\)$, $C\(x_3\,y_3\)$, 一动点 $P\(x\,y\)$ 使 $overline(A P)^2 + overline(B P)^2 + overline(C P)^2 =$ 常数，证明 $P$ 点的轨迹是一个圆且它的圆心是 $triangle.stroked.t A B C$ 的重心．

+ 已知 $A\(2 a\,0\)$, $C\(0\,2 a\)$, $overline(A C)$ 是正方形 $O A B C$ 的对角线，一动点 $P\(x\,y\)$ 到这正方形四边距离的平方和等于 $12 a^2$, 证明 $P$ 点的轨迹是圆心在 $\(a\,a\)$, 半径是 $2 a$ 的圆．

+ 已知 $A\(3\,7\)$, $B\(- 1\,5\)$, 动点 $P\(x\,y\)$ 使 $overline(A P)^2 + overline(B P)^2 = 82$, 证明 $P$ 点的轨迹是半径等于6的圆．

+ 已知 $A\(3\,7\)$, $B\(1\,- 1\)$, 动点 $P$ 使 $overline(A P) = 3 overline(B P)$. 证明 $P$ 点的轨迹是一个圆且这圆在Y轴上截出的弦长等于6.

+ 已知 $O C$ 是圆 $x^2 + y^2 - 2 a x = 0$ 的一条弦，直线 $O C$ 的斜率是 $m$, 求证以 $O C$ 作直径圆的方程是 $ \(1 + m^2\)\(x^2 + y^2\)- 2 a\(x + m y\)= 0 $

+ 如果 $a\,b$ 是常数，$theta$ 是一动角，求证两直线 $x cos theta + y sin theta = a$ 与 $x sin theta - y cos theta = b$ 的交点的轨迹是一个圆且圆心在原点，半径等于 $sqrt(a^2 + b^2)$.

+ 已知一圆与 $Y$ 轴相切于 $A\(0\,- 3\)$ 且半径 $r = 2$, 求此圆的方程．

+ 已知一圆与两坐标轴相切且通过 $A\(2\,9\)$, 求它的方程．

+ 已知一圆与 $X$ 轴相切于 $\(5\,0\)$ 且在 $Y$ 轴上截出的弦长是10, 求此圆的方程．

+ 求圆：$x^2 + y^2 = 25$ 与平行线系 $x + 5 y + lambda = 0\,quad\(lambda in bb(R)\)$ 相交所截弦中点的轨迹．

+ 求二圆 $x^2 - 12 x + y^2 - 10 y + 52 = 0$, $x^2 + 18 x + y^2 + 20 y + 60 = 0$ 的圆心距及原点到连心线的距离．

+ 在直线系 $y - 7 + lambda\(x + 1\)= 0$ 中，求与圆 $x^2 + y^2 = 2$ 相切之直线．

+ 求通过点 $\(5\,- 2\)$ 且与已知直线 $3 x - y - 1 = 0$ 相切于点 $\(1\,2\)$ 的圆的方程．

#heading(level: 2, numbering: none, outlined: true)[复习题五]

+ 一个正六边形边长是 $a$, 中心在坐标原点，两个顶点在 $X$ 轴上，求各顶点的坐标．

+ 以原点为起点的三个力 $arrow(F)_1 =\(9\,7\)$, $arrow(F)_2 =\(- 6\,4\)$, $arrow(F)_3 =\(1\,2\)$\; 求它们的合力坐标和方向．

+ 已知一个三角形三边中点的坐标分别是 $\(x_1\,y_1\)$, $\(x_2\,y_2\)$, $\(x_3\,y_3\)$, 求三个顶点的坐标．

+ 已知 $A\(- 1\,3\)$, $B\(4\,1\)$, 直线 $A B$ 与 $X$ 轴，$Y$ 轴分别相交于 $C$⁠、$D$ 两点，求 $C$⁠、$D$ 两点分割 $accent(A B, ⃗)$ 的比值．

+ 已知 $P\(x\,y\)$, $A\(x_1\,y_1\)$, $B\(x_2\,y_2\)$ 且 $ x = x_1 + t\(x_2 - x_1\)\,#h(2em) y = y_1 + t\(y_2 - y_1\) $ #noindent;求证：$P$ 点按定比 $mu = frac(t, 1 - t)$ 分割 $accent(A B, ⃗)$.

+ 已知直线 $ell : thick a x + b y + c = 0$ 及 $P_1\(x_1\,y_1\)$, $P_2\(x_2\,y_2\)$ 两点，求证直线 $ell$ 与直线 $P_1 P_2$ 的交点把 $accent(P_1 P_2, ⃗)$ 按定比 $- frac(a x_1 + b y_1 + c, a x_2 + b y_2 + c)$ 分割．

+ 用坐标法证明：直角三角形斜边的中点到三顶点的距离相等．

+ 用坐标法证明勾股定理的逆定理．

+ 已知：四边形一组对边的平方和等于另一组对边的平方和，用坐标法证明：两条对角线互相垂直．

+ 已知 $G$ 是 $triangle.stroked.t P_1 P_2 P_3$ 的重心，用坐标法证明：$ S_(G P_2 P_3) = 1 / 3 S_(P_1 P_2 P_3) $

+ 已知 $A\(1\,2\)$⁠、$B\(8\,4\)$⁠、$C\(4\,10\)$, 求一点 $P$ 使 $triangle.stroked.t P A B$⁠、$triangle.stroked.t P B C$⁠、$triangle.stroked.t P C A$ 的面积相等，并解释这个结果的几何意义．

+ 一条直线经过点 $P\(1\,- 1\)$, 它的倾角等于直线 $y = x$ 倾角的3倍，求这条直线的方程．

+ 已知 $A\(- 3\,2\)$, $B\(- 2\,- 2\)$, $C\(4\,0\)$\. 求：

  + $triangle.stroked.t A B C$ $overline(B C)$ 边上的中线方程；

  + $overline(A C)$ 边上的高线方程，并求出这条高的长．

+ 一条直线经过 $\(2\,4\)$ 并且和直线 $x + y - 4 = 0$ 的夹角是 $pi\/4$⁠，求这条直线的方程．

+ 一条光线从 $P_0\(6\,4\)$ 射出和 $X$ 轴正向交成锐角 $alpha$, 遇到 $X$ 轴反射，已知 $tan alpha = 2$, 求入射光线和反射光线所在的直线方程．

+ 从原点向直线 $3 x - 2 y + 7 = 0$ 作垂线，求垂线段的长和垂足的坐标．

+ 在直线 $2 x - 3 y = 0$ 上求一点，使这点和原点之间的距离等于这点到直线 $2 x + 3 y - 2 = 0$ 之间的距离．

+ 已知点 $P\(3\,2\)$, 直线 $ell : thick y = 4 x + 3$, 求 $P$ 点到直线 $ell$ 的距离，垂线足的坐标，点 $P$ 关于 $ell$ 的轴对称点的坐标．

+ 已知直线 $a x + b y + c = 0$ 和点 $P_0\(x_0\,y_0\)$, 求 $P_0$ 点关于直线 $a x + b y + c = 0$ 的轴对称点的坐标．

+ 已知 $ell_1 : thick 3 x - 4 y - 17 = 0$, $ell_2 : thick y = 4$, $ell_3 : thick 12 x + 5 y - 12 = 0$, 求证点 $\(- 4\,- 1\)$ 是 $ell_1\,ell_2\,ell_3$ 两两相交所构成三角形的内心．

+ 求直线 $3 x - 4 y + 6 = 0$ 与 $12 x - 5 y - 9 = 0$ 交角平分线的方程．

+ 证明通过点 $\(a\,b\)$ 的直线方程可写为 $ lambda_1\(x - a\)+ lambda_2\(y - b\)= 0 $

+ 设 $P_1\(x_1\,y_1\)$ 及 $P_2\(x_2\,y_2\)$ 为两定点，过 $P_1$ 作直线交 $Y$ 轴于 $B$ 点，过 $P_2$ 作直线与过 $P_1$ 之直线垂直，交 $X$ 轴于点 $A$, 求 $A B$ 中点的轨迹．

+ 求下列各圆的方程．

  + 过 $O\(0\,0\)$, $A\(- 5\,0\)$, $B\(0\,3\)$\;

  + 中心在 $C\(- 3\,4\)$ 与 $3 x + 8 y - 6 = 0$ 相切；

  + 过 $A\(4\,3\)$, $\(- 2\,5\)$, 圆心在 $2 x - 3 y = 0$ 上；

  + 过 $A\(5\,- 2\)$ 与直线 $3 x - y - 1 = 0$ 相切于点 $\(1\,2\)$\;

  + 通过 $O\(0\,0\)$, 圆心在 $x = 2$ 上且与直线 $x + y - 8 = 0$ 相切．

+ 求两圆 $x^2 + y^2 - x + 2 y = 0$, $x^2 + y^2 + 2 x - y = 9$ 的交点的坐标．

+ 求两圆 $x^2 + y^2 + a x + b y = 0$, $x^2 + y^2 + b x - a y = 0$ 的交点的坐标．

+ 求两圆 $x^2 + y^2 = 10$, $x^2 + y^2 - 10 x - 10 y + 30 = 0$ 公共弦所在直线的方程．

+ 已知圆 $x^2 + y^2 - 4 x - 5 = 0$ 和点 $A\(5\,4\)$, 求圆心在 $A$ 点且与已知圆外切的圆的方程．

+ 已知二圆 $x^2 + y^2 - 6 x + 8 y = 0$, $x^2 + y^2 + 2 x - 12 y + 1 = 0$, 求通过二圆圆心的直线方程．

+ 求两圆 $\(x - a_1\)^2 +\(y - b_1\)^2 = r_1^2$, $\(x - a_2\)^2 +\(y - b_2\)^2 = r_2^2$ 正交（即在两圆公共点处的切线互相垂直）的条件是 $ \(a_1 - a_2\)^2 +\(b_1 - b_2\)^2 = r_1^2 + r_2^2 $

+ 一条线段 $A B = 2 a$ 的两个端点 $A$ 和 $B$ 分别在 $X$ 轴和 $Y$ 轴上滑动，求 $overline(A B)$ 中点 $M$ 的轨迹．

+ 已知 $A\(2\,2\)$, $triangle.stroked.t O A C$ 是等边三角形，且 $O$⁠、$A$⁠、$C$ 构成反时针排列，求点 $C$ 的坐标．

+ 已知 $A\(x_1\,y_1\)$, $B\(x_2\,y_2\)$, $C\(x_3\,y_3\)$, 求证 $triangle.stroked.t A B C$ 的重心到三顶点的距离平方和为最小．

+ 已知 $A\(- 5\,4\)$, 过点 $A$ 作一条直线使它与两坐标轴相交所成的三角形的面积等于5个平方单位，求证这条直线的方程是 $8 x + 5 y + 20 = 0$ 或 $2 x + 5 y - 10 = 0$.

+ 已知点 $A\(a\,b\)$ 在第1象限，过点 $A$ 求一条直线使与坐标轴交成的三角形面积最小，并求出最小面积的值．

+ #block(sticky: true)[如果]

  #cols(2)[
  + $D = 0$

  + $E = 0$

  + $F = 0$

  + $D = 0$, $E = 0$

  + $D = 0$, $F = 0$

  + $E = 0$, $F = 0$

  ]
  那么圆 $x^2 + y^2 + 2 D x + 2 E y + F = 0$ 对坐标系的位置有什么特征．

+ 已知 $P_0\(x_0\,y_0\)$ 是圆：$x^2 + y^2 + 2 D x + 2 E y + F = 0$ 外任意一点，若自 $P_0$ 向圆引切线 $P_0 T$, $T$ 为切点，求证：$overline(P_0 T)^2 = x_0^2 + y_0^2 + 2 D x_0 + 2 E y_0 + F$.

+ 为了使圆 $x^2 + y^2 + 2 D x + 2 E y + F = 0$

  + 不与 $X$ 轴相交；

  + 和 $X$ 轴交于两点；

  + 和 $X$ 轴相切，

  #noindent;问它的方程中的系数分别应该满足怎样的条件？

+ 求圆心在点 $\(4\,0\)$ 并与直线 $3 x - 4 y + 1 = 0$ 相切的圆的方程．

+ 已知 $dot.o C$ 的圆心 $C$ 在直线 $x - y - 4 = 0$ 上，并经过两圆 $C_1 : thick x^2 + y^2 - 4 x - 3 = 0$ 和 $C_2 : thick x^2 + y^2 - 4 y - 3 = 0$ 的交点，求 $dot.o C$ 的方程．

+ 一动点到已知正方形的各顶点的距离平方和是一个常数，求这动点的轨迹方程，并说明轨迹是什么图形．

+ 已知点 $Q\(4\,0\)$, 点 $P\(x\,y\)$ 是圆：$x^2 + y^2 = 4$ 上一动点，求 $overline(P Q)$ 中点的轨迹方程．

+ 当 $lambda$ 为何值时，直线 $lambda x - y - lambda - 1 = 0$ 与圆 $x^2 + y^2 - 4 x - 2 y + 1 = 0$ 相交，相切或相离．
