// 由 typst/tools/tex2typ.py 从 math5/8.tex 转换而来，已人工校对的部分以本文件为准。
#import "../common/template.typ": *
#import "figs.typ": fig
#import "defs.typ": *

= 空间解析几何初步
== 空间向量的坐标运算
=== 空间直角坐标系与向量运算
任取一点 $O$\(图8.1), 一个单位长，通过 $O$ 点建立三条互相垂直的数轴，$X$ 轴、$Y$ 轴、$Z$ 轴，并且使这三个数轴的正方向构成右手系．这样我们就说在空间建立了一个空间右手坐标系，并用 $O X Y Z$ 来表示．$O$ 点叫做坐标系的原点．$X$ 轴、$Y$ 轴、$Z$ 轴总称为坐标轴．三个坐标轴每两个决定一平面叫做坐标平面．坐标平面共有三个 $O X Y$⁠、$O Y Z$⁠、$O Z X$⁠，它们互相垂直并且把空间分为八个区域，每个区域叫做一个#strong[卦限]．

#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("8-01");], caption: []), figure([#fig("8-02");], caption: []))));

设 $P$ 是空间中任一点，通过 $P$ 点作平面分别与坐标平面 $O Y Z$⁠、$O Z X$⁠、$O X Y$ 平行（图8.2），并且分别与 $X$ 轴、$Y$ 轴、$Z$ 轴相交于 $A$⁠、$B$⁠、$C$ 三点，如果 $A$⁠、$B$⁠、$C$ 在各坐标轴上的坐标分别为 $x$⁠、$y$⁠、$z$, 则这三个有序实数组 $\(x\,y\,z\)$ 叫 $P$ 点的#strong[空间坐标]．简称坐标．$P$ 点的坐标是 $\(x\,y\,z\)$, 记作 $P\(x\,y\,z\)$. $x$⁠、$y$⁠、$z$ 分别叫做 $P$ 点的 $X$ 坐标，$Y$ 坐标，$Z$ 坐标．

#figure([#fig("8-03");

  ],
  caption: [
  ]
)

如果沿 $X$ 轴、$Y$ 轴、$Z$ 轴的正方向分别引单位向量 $arrow(e)_x$⁠、$arrow(e)_y$⁠、$arrow(e)_z$\(图8.3), 那么对空间任一向量 $arrow(a)$, 存在唯一的有序数组 $\(a_x\,a_y\,a_z\)$ 使 $ arrow(a) = a_x arrow(e)_x + a_y arrow(e)_y + a_z arrow(e)_z $ #noindent;$\(a_x\,a_y\,a_z\)$ 就叫做 $arrow(a)$ 在 $O X Y Z$ 中的坐标．并简记作 $ arrow(a) =\(a_x\,a_y\,a_z\) $ #noindent;其中 $a_x$ 叫做 $arrow(a)$ 在 $X$ 轴上的坐标分量．$a_y$ 叫做 $arrow(a)$ 在 $Y$ 轴上的坐标分量．$a_z$ 叫做 $arrow(a)$ 在 $Z$ 轴上的坐标分量．

如果 $arrow(a) = a_x arrow(e)_x + a_y arrow(e)_y + a_z arrow(e)_z$⁠，那么分别对这个表示式两边对 $arrow(e)_x\,arrow(e)_y\,arrow(e)_z$ 取内积运算，就可得到 $ a_x & = arrow(e)_x dot.op arrow(a) =\|arrow(a)\|cos chevron.l arrow(e)_x\,arrow(a) chevron.r\
a_y & = arrow(e)_y dot.op arrow(a) =\|arrow(a)\|cos chevron.l arrow(e)_y\,arrow(a) chevron.r\
a_z & = arrow(e)_z dot.op arrow(a) =\|arrow(a)\|cos chevron.l arrow(e)_z\,arrow(a) chevron.r $

如果 $chevron.l arrow(e)_x\,arrow(a) chevron.r = alpha$, $chevron.l arrow(e)_y\,arrow(a) chevron.r = beta$, $chevron.l arrow(e)_z\,arrow(a) chevron.r = gamma$, 那么 $alpha$⁠、$beta$⁠、$gamma$ 确定了 $arrow(a)$ 在空间中的方向．$alpha$⁠、$beta$⁠、$gamma$ 叫做 $arrow(a)$ 的方向角，$cos alpha$⁠、$cos beta$⁠、$cos gamma$ 叫做 $arrow(a)$ 的方向余弦，于是 $arrow(a)$ 的单位向量 $ arrow(a)_0 =\(cos alpha\,cos beta\,cos gamma\) $

对空间任一点 $P$, 它被相对于 $O$ 点的位置向量所唯一确定（图8.4）．设 $ accent(O P, ⃗) = x arrow(e)_x + y arrow(e)_y + z arrow(e)_z $ #noindent;由上述点的坐标和向量坐标的定义，$accent(O P, ⃗)$ 的坐标 $\(x\,y\,z\)$ 也就是 $P$ 点的坐标；反之 $P$ 点的坐标也是 $accent(O P, ⃗)$ 的坐标．由此可见，给定了原点 $O$ 和三个互相垂直且构成右手系的单位向量 $arrow(e)_x\,arrow(e)_y\,arrow(e)_z$⁠，坐标系 $O X Y Z$ 也就完全确定了．因此，坐标系 $O X Y Z$ 也可用 $\[O : arrow(e)_x\,arrow(e)_y\,arrow(e)_z\]$ 来表示，$arrow(e)_x\,arrow(e)_y\,arrow(e)_z$ 叫做 $O X Y Z$ 的基向量．

#figure([#fig("8-04");

  ],
  caption: [
  ]
)

已知 $A\(x_1\,y_1\,z_1\)$, $B\(x_2\,y_2\,z_2\)$, 则：$ accent(A B, ⃗) & = accent(O B, ⃗) - accent(O A, ⃗)\
 & = x_2 arrow(e)_x + y_2 arrow(e)_y + z_2 arrow(e)_z -\(x_1 arrow(e)_x + y_1 arrow(e)_y + z_1 arrow(e)_z\)\
 & =\(x_2 - x_1\)arrow(e)_x +\(y_2 - y_1\)arrow(e)_y +\(z_2 - z_1\)arrow(e)_z\
 & =\(x_2 - x_1\,y_2 - y_1\,z_2 - z_1\) $ #noindent;这就是说#strong[一个向量的坐标，等于表示它的有向线段终点的坐标减去起点的坐标]．例如，已知 $A\(2\,- 1\,5\)$⁠、$B\(3\,2\,- 7\)$, 则 $ accent(A B, ⃗) =\[3 - 2\,thick 2 -\(- 1\)\,thick - 7 - 5\]=\(1\,3\,- 12\) $

#exercise[
+ 问在 $O X Y Z$ 中，哪个坐标平面与 $X$ 轴垂直，哪个坐标平面与 $Y$ 轴垂直，哪个坐标平面与 $Z$ 轴垂直？

+ 写出点 $P\(2\,4\,3\)$ 在 $O X Y Z$ 的三个坐标平面上投影点的坐标．

+ 求点 $P\(3\,5\,4\)$ 关于坐标平面 $O X Y$ 的对称点的坐标．

+ 点 $P$ 在 $O X Y Z$ 中的坐标平面 $O X Y$ 上，若 $P$ 点在平面直角坐标系 $O X Y$ 中的坐标是 $\(2\,3\)$, 求它在 $O X Y Z$ 中的坐标．

+ 写出基向量 $arrow(e)_x\,arrow(e)_y\,arrow(e)_z$ 的坐标．

+ 已知 $\|arrow(a)\|= 12$, $chevron.l arrow(e)_x\,arrow(a) chevron.r = 30 degree$, $chevron.l arrow(e)_y\,arrow(a) chevron.r = 45 degree$, $chevron.l arrow(e)_z\,arrow(a) chevron.r = 60 degree$⁠，求 $arrow(a)$ 的坐标．

+ 已知 $P\(- 3\,2\,4\)$, $Q\(5\,7\,- 2\)$, 求 $accent(P Q, ⃗)$ 与 $accent(Q P, ⃗)$ 的坐标．

+ 已知 $A\(2\,- 1\,5\)$, $B\(3\,2\,- 1\)$ 用基向量 $arrow(e)_x\,arrow(e)_y\,arrow(e)_z$ 表示向量 $accent(A B, ⃗)$.

]
=== 向量的坐标运算
#blk[定理][
如果 $arrow(a) =\(a_x\,a_y\,a_z\)$, $arrow(b) =\(b_x\,b_y\,b_z\)$, $arrow(c) =\(c_x\,c_y\,c_z\)$, 那么 $ arrow(a) plus.minus arrow(b) & =\(a_x\,a_y\,a_z\)plus.minus\(b_x\,b_y\,b_z\)=\(a_x plus.minus b_x\,a_y plus.minus b_y\,a_z plus.minus b_z\)\
lambda arrow(a) & = lambda\(a_x\,a_y\,a_z\)=\(lambda a_x\,lambda a_y\,lambda a_z\)\
arrow(a) dot.op arrow(b) & =\(a_x\,a_y\,a_z\)dot.op\(b_x\,b_y\,b_z\)= a_x b_x + a_y b_y + a_z b_z $ $ arrow(a) times arrow(b) = mat(delim: "|", arrow(e)_x, arrow(e)_y, arrow(e)_z; a_x, a_y, a_z; b_x, b_y, b_z)\,#h(2em) (arrow(a) \, arrow(b) \, arrow(c)) = mat(delim: "|", a_x, a_y, a_z; b_x, b_y, b_z; c_x, c_y, c_z) $

]
证明留给同学作为练习．

下面我们研究如何用向量的坐标来表示向量垂直、平行与共面的条件．

已知 $arrow(a) pll arrow(b) quad\(arrow(b) eq.not 0\)$ 的充要条件是存在一实数 $lambda$⁠，使 $ arrow(a) = lambda arrow(b) $ #noindent;如果 $arrow(a) =\(a_x\,a_y\,a_z\)$, $arrow(b) =\(b_x\,b_y\,b_z\)$, 那么上面条件用坐标表示，即为#numbered-eq($ a_x = lambda b_x\,#h(2em) a_y = lambda b_y\,#h(2em) a_z = lambda b_z $);#noindent;或#numbered-eq($ a_x : b_x = a_y : b_y = a_z : b_z $);#noindent;这就是说#strong[两个向量平行的充要条件是它们的坐标成比例]．

已知 $arrow(a) tack.t arrow(b) quad arrow.l.r.double.long quad arrow(a) dot.op arrow(b) = 0$ 用坐标表示，即为#numbered-eq($ arrow(a) tack.t arrow(b) quad arrow.l.r.double.long quad a_x b_x + a_y b_y + a_z b_z = 0 $);

已知 $arrow(a) =\(a_x\,a_y\,a_z\)$, $arrow(b) =\(b_x\,b_y\,b_z\)$, $arrow(c) =\(c_x\,c_y\,c_z\)$, 则 $ arrow(a)\,arrow(b)\,arrow(c) upright(" 共面") quad arrow.l.r.double.long quad\(arrow(a)\,arrow(b)\,arrow(c)\)= 0 $ #noindent;即 $ arrow(a)\,arrow(b)\,arrow(c) upright(" 共面") quad arrow.l.r.double.long quad mat(delim: "|", a_x, a_y, a_z; b_x, b_y, b_z; c_x, c_y, c_z) = 0 $

#example[
已知 $arrow(a) =\(1\,1\,1\)$, $arrow(b) =\(3\,- 1\,2\)$, $arrow(c) =\(1\,- 3\,0\)$⁠．求证：$arrow(a)\,arrow(b)\,arrow(c)$ 共面．

]
#solution[
$ because quad\(arrow(a)\,arrow(b)\,arrow(c)\)= mat(delim: "|", 1, 1, 1; 3, - 1, 2; 1, - 3, 0) = 0 $

$therefore quad arrow(a)\,arrow(b)\,arrow(c)$ 共面．

]
#exercise[
+ 已知 $arrow(a) =\(- 1\,2\,3\)$, $arrow(b) =\(2\,- 4\,- 6\)$, 求证：$arrow(a) pll arrow(b)$.

+ 试证下面各对向量线性相关．

  + $arrow(a) =\(2\,- 1\,- 2\)\,#h(2em) arrow(b) =\(6\,- 3\,- 6\)$

  + $arrow(a) =\(- 3\,- 5\,4\)\,#h(2em) arrow(b) =\(6\,10\,- 8\)$

+ 已知 $arrow(a) =\(2\,3\,4\)$, $arrow(b) =\(- 3\,- 6\,6\)$, 求证 $arrow(a) tack.t arrow(b)$.

+ 设 $arrow(a) =\(2\,- 1\,4\)$, $arrow(b) =\(- 4\,- 5\,- 1\)$, 求使 $arrow(a) - k arrow(b)$ 垂直于 $arrow(b)$ 的实数 $k$ 的值．

+ 已知 $arrow(a) =\(- 5\,2\,3\)$, $arrow(b) =\(0\,- 3\,2\)$, $arrow(c) =\(5\,- 2\,- 3\)$, 求证：$arrow(a)\,arrow(b)\,arrow(c)$ 三个向量共面．

+ 已知 $P\(x\,y\,z\)$, $P_1\(x_1\,y_1\,z_1\)$, $P_2\(x_2\,y_2\,z_2\)$, $P_3\(x_3\,y_3\,z_3\)$. 求证这四点共面的充要条件是 $ mat(delim: "|", x - x_1, y - y_1, z - z_1; x_2 - x_1, y_2 - y_1, z_2 - z_1; x_3 - x_1, y_3 - y_1, z_3 - z_1) = 0 quad upright("或") quad mat(delim: "|", x, y, z, 1; x_1, y_1, z_1, 1; x_2, y_2, z_2, 1; x_3, y_3, z_3, 1) = 0 $

]
=== 空间解析几何的基本问题
#blk[问题1][
求有向线段定比分点的坐标．

]
已知 $P_1\(x_1\,y_1\,z_1\)$⁠、$P_2\(x_2\,y_2\,z_2\)$, 如果 $P\(x\,y\,z\)$, 按定比 $mu$ 分割 $accent(P_1 P_2, ⃗)$, 那么 $ accent(O P, ⃗) = frac(accent(O P_1, ⃗) + mu accent(O P_2, ⃗), 1 + mu) $ #noindent;换用坐标表示，即为#numbered-eq($ display(cases(x = frac(x_1 + mu x_2, 1 + mu), y = frac(y_1 + mu y_2, 1 + mu), z = frac(z_1 + mu z_2, 1 + mu))) $);#noindent; (8.4) 式就是求 $accent(P_1 P_2, ⃗)$ 的#strong[定比分点坐标的计算公式]．当 $mu = 1$ 时，$P$ 点是 $overline(P_1 P_2)$ 的中点，$P$ 点的坐标是#numbered-eq($ display(cases(x = frac(x_1 + x_2, 2), y = frac(y_1 + y_2, 2), z = frac(z_1 + z_2, 2))) $);#noindent;公式 (8.5) 又叫做中点公式．

#example[
已知 $A\(- 1\,2\,2\)$, $B\(- 4\,2\,5\)$, 点 $P$ 按定比 $mu = 2$ 分割 $accent(A B, ⃗)$, 求 $P\(x\,y\,z\)$.

]
#solution[
由于 $mu = 2$⁠，因此：$ x & = frac(- 1 + 2 times\(- 4\), 1 + 2) = - 3\
y & = frac(2 + 2 times 2, 1 + 2) = 2\
z & = frac(2 + 2 times 5, 1 + 2) = 4 $ #noindent;即：$P\(- 3\,2\,4\)$

]
#blk[问题2][
求向量长度和两点间距离公式．

]
若 $arrow(a) =\(a_x\,a_y\,a_z\)$, 则

#numbered-align(($\|arrow(a)\|^2$, $eqph = arrow(a) dot.op arrow(a) = a_x^2 + a_y^2 + a_z^2$, false), ($\|arrow(a)\|$, $eqph = sqrt(a_x^2 + a_y^2 + a_z^2)$, true));

#noindent; (8.6) 式就是求#strong[向量 ]$arrow(a)$#strong[ 的长度的计算公式]．

若 $A\(x_1\,y_1\,z_1\)$⁠、$B\(x_2\,y_2\,z_2\)$⁠，则：#numbered-eq($ \|accent(A B, ⃗)\|= sqrt(\(x_2 - x_1\)^2 +\(y_2 - y_1\)^2 +\(z_2 - z_1\)^2) $);#noindent; (8.7) 式就是求空间任意#strong[两点间的距离公式]．

#blk[问题3][
求一向量的方向余弦．

]
若 $arrow(a) =\(a_x\,a_y\,a_z\)$, $alpha\,beta\,gamma$ 为 $arrow(a)$ 的方向角，则：$ a_x =\|arrow(a)\|cos alpha\,#h(2em) a_y =\|arrow(a)\|cos beta\,#h(2em) a_z =\|arrow(a)\|cos gamma $ #noindent;于是得：#numbered-eq($ display(cases(cos alpha = frac(a_x, \|arrow(a)\|) = a_x / sqrt(a_x^2 + a_y^2 + a_z^2), cos beta = frac(a_y, \|arrow(a)\|) = a_y / sqrt(a_x^2 + a_y^2 + a_z^2), cos gamma = frac(a_z, \|arrow(a)\|) = a_z / sqrt(a_x^2 + a_y^2 + a_z^2))) $);#noindent; (8.8) 式就是#strong[向量 ]$arrow(a)$#strong[ 的方向余弦的计算公式]．

把 (8.8) 式两边平方加起来，得 $ cos^2 alpha + cos^2 beta + cos^2 gamma = 1 $ #noindent;这就是说，#strong[任何一个向量的方向余弦的平方和恒等于1]\.

若 $arrow(a) =\(a_x\,a_y\,a_z\)$⁠，则 $arrow(a)$ 的单位向量 $ arrow(a)_0 = frac(arrow(a), \|arrow(a)\|) & = (frac(a_x, \|arrow(a)\|) \, frac(a_y, \|arrow(a)\|) \, frac(a_z, \|arrow(a)\|))\
 & =\(cos alpha\,cos beta\,cos gamma\) $ #noindent;这就是说，#strong[空间任一向量的单位向量的坐标分量正好等于它的方向余弦]．

#example[
求 $arrow(a) =\(2\,- 3\,1\)$ 的方向余弦和它的单位向量 $arrow(a)_0$ 的坐标．

]
#solution[
由于：$\|arrow(a)\|= sqrt(2^2 +\(- 3\)^2 + 1^2) = sqrt(14)$

$therefore quad cos alpha = 2 / sqrt(14)\,#h(2em) cos beta = frac(- 3, sqrt(14))\,#h(2em) cos gamma = 1 / sqrt(14)$ $ arrow(a)_0 = (2 / sqrt(14) \, frac(- 3, sqrt(14)) \, 1 / sqrt(14)) $

]
#blk[问题4][
求两个向量的夹角．

]
如果 $arrow(a) =\(a_x\,a_y\,a_z\)$, $arrow(b) =\(b_x\,b_y\,b_z\)$⁠，那么#numbered-eq($ cos chevron.l arrow(a)\,arrow(b) chevron.r & = frac(arrow(a) dot.op arrow(b), \|arrow(a)\|\|arrow(b)\|)\
 & = frac(a_x b_x + a_y b_y + a_z b_z, sqrt(a_x^2 + a_y^2 + a_z^2) dot.op sqrt(b_x^2 + b_y^2 + b_z^2)) $);#noindent;公式 (8.9) 就是求向量夹角的计算公式．

#example[
已知 $arrow(a) =\(1\,1\,0\)$, $arrow(b) =\(1\,0\,1\)$, 求 $chevron.l arrow(a)\,arrow(b) chevron.r$.

]
#solution[
$ cos chevron.l arrow(a)\,arrow(b) chevron.r = frac(1 times 1 + 1 times 0 + 0 times 1, sqrt(1^2 + 1^2 + 0^2) dot.op sqrt(1^2 + 0^2 + 1^2)) = 1 / 2 $ #noindent;$therefore quad chevron.l arrow(a)\,arrow(b) chevron.r = pi / 3$

]
#exercise[
+ 已知 $A\(3\,5\,- 7\)$, $B\(- 2\,4\,3\)$, 点 $P$ 按定比 $mu = - 2$ 分割 $accent(A B, ⃗)$, 求 $P$ 点的坐标．

+ 已知 $P\(3\,- 4\,1\)$, $Q\(0\,2\,- 3\)$, 点 $A$ 按定比 $mu = 2$ 分割 $accent(Q P, ⃗)$, 求 $A$ 点的坐标．

+ 已知 $A\(0\,- 1\,1\)$, $B\(2\,1\,- 3\)$, 求 $overline(A B)$ 中点的坐标．

+ 已知 $triangle.stroked.t A B C$ 的两个顶点 $A\(- 4\,- 1\,2\)$, $B\(3\,5\,- 16\)$, $overline(A C)$ 边的中点在 $Y$ 轴上，$overline(B C)$ 边的中点在 $O Z X$ 平面上，求第三顶点 $C$ 的坐标．

+ 已知 $A\(3\,- 1\,0\)$⁠、$B\(2\,1\,- 3\)$, 求 $A$⁠、$B$ 两点间的距离．

+ 已知 $\|arrow(a)\|= 10$, $chevron.l arrow(e)_x\,arrow(a) chevron.r = 60 degree$, $chevron.l arrow(e)_y\,arrow(a) chevron.r = 60 degree$

  求 $chevron.l arrow(a)\,arrow(e)_z chevron.r$ 和 $arrow(a)$ 的坐标．

+ 已知 $arrow(a) pll arrow(b)$, $\|arrow(a)\|= 10$, $arrow(b) =\(3\,- 3\,3\)$, 求 $arrow(a)$ 的坐标．

+ 已知 $arrow(a) =\(- 1\,2\,3\)$, $arrow(b) =\(2\,5\,4\)$, 求 $chevron.l arrow(a)\,arrow(b) chevron.r$

+ 已知 $arrow(a) =\(2\,- 3\,5\)$, $arrow(b) =\(- 4\,2\,6\)$, 求证 $arrow(a) parallel.not arrow(b)$.

]
#heading(level: 2, numbering: none, supplement: [toc-sub])[习题8.1]

+ 如果向量 $arrow(a)$⁠、$arrow(b)$⁠、$arrow(c)$ 分别平行于 $X$ 轴、$Y$ 轴、$Z$ 轴，问它们的坐标各有什么特点？

+ 如果 $arrow(a)$ 的 $x$ 坐标是0, 那么 $arrow(a)$ 与哪个平面平行．

+ #block(sticky: true)[已知 $arrow(a) =\(2\,- 1\,3\)$⁠、$arrow(b) =\(- 3\,0\,4\)$, 求满足下列关系的向量 $arrow(c)$ 的坐标．]

  #cols(2)[
  + $3 arrow(a) + 2 arrow(c) = arrow(b)$

  + $arrow(a) - 3 arrow(c) = 2 arrow(b)$

  + $arrow(a) - 2 arrow(c) = 3 arrow(b) - arrow(c)$

  + $2\(3 arrow(a) - arrow(c)\)+ arrow(b) = 0$

  ]

+ 已知 $A\(2\,- 1\,7\)$, $B\(4\,5\,- 2\)$, 求每个坐标平面分割 $accent(A B, ⃗)$ 的比值．

+ 已知 $A\(2\,3\,6\)$, $B\(5\,2\,8\)$, 直线 $A B$ 上有 $C$ 点使 $B$ 点为 $overline(A C)$ 的中点，求 $C\(x\,y\,z\)$.

+ 已知 $A =\(x_1\,y_1\,z_1\)$⁠、$B =\(x_2\,y_2\,z_2\)$⁠、$C =\(x_3\,y_3\,z_3\)$, 求 $triangle.stroked.t A B C$ 的重心．

+ 已知 $arrow(a) =\(1\,2\,- 2\)$, $arrow(b) =\(3\,4\,2\)$, $arrow(c) =\(- 2\,- 4\,4\)$, 求证：$arrow(a)$⁠、$arrow(b)$⁠、$arrow(c)$ 线性相关．

+ 已知 $A\(4\,1\,3\)$, $B\(2\,- 5\,1\)$, $C\(3\,7\,- 5\)$. 求向量 $accent(A B, ⃗)\,accent(B A, ⃗)\,accent(A C, ⃗)\,accent(B C, ⃗)$ 的坐标和长度（精确到0.01）．

+ 已知 $A\(1\,1\,sqrt(2)\)$, 求 $accent(O A, ⃗)$ 与三个坐标轴的夹角．

+ 已知 $arrow(a) =\(- 1\,1\,0\)$, $arrow(b) =\(1\,- 2\,2\)$, 求 $chevron.l arrow(a)\,arrow(b) chevron.r$.

== 空间的平面~~直线与球面方程
=== 空间的平面方程
已知非零向量 $arrow(n) =\(a\,b\,c\)$ 和定点 $P_0\(x_0\,y_0\,z_0\)$, 过 $P_0$ 点作平面 $pi$ 与 $arrow(n)$ 垂直，求平面 $pi$ 的方程．

#figure([#fig("8-05");

  ],
  caption: [
  ]
)

设 $P\(x\,y\,z\)$ 为平面 $pi$ 上一动点，因为 $accent(P_0 P, ⃗) tack.t arrow(n)$, 所以 $accent(P_0 P, ⃗) dot.op arrow(n) = 0$⁠，即：#numbered-eq($ (accent(O P, ⃗) - accent(O P_0, ⃗)) dot.op arrow(n) = 0 $);#noindent;反之，如果 $P\(x\,y\,z\)$ 满足 (8.10) 式，那么 $P$ 点一定在平面 $pi$ 上，所以 (8.10) 式就是#strong[平面 ]$pi$#strong[ 的向量方程]．

\(8.10) 式用坐标表示即可写为#numbered-eq($ a\(x - x_0\)+ b\(y - y_0\)+ c\(z - z_0\)= 0 $);#noindent; (8.11) 式就叫做#strong[平面的点法向式方程]．其中 $arrow(n) =\(a\,b\,c\)$, 叫做平面 $pi$ 的一条法线向量．

如果令 $d = -\(a x_0 + b y_0 + c z_0\)$, 那么 (8.11) 式又可写为#numbered-eq($ a x + b y + c z + d = 0 $);#noindent;方程 (8.12) 又叫做#strong[平面的普通方程]，其中 $a\,b\,c$ 至少有一个不为零．

显然，如果 $arrow(n) =\(a\,b\,c\)$ 是平面 $pi$ 的一个法线向量，那么对任何非零常数 $k$, $k arrow(n)$ 也是 $pi$ 的法线向量．这样，若取 $k arrow(n)$ 作为平面的法线向量，则 $pi$ 的方程还可写为 $ k\(a x + b y + c z + d\)= 0 $ #noindent;因此，同一个平面方程，仅仅相差一个常数因子．

由方程 (8.12) 可以看出，平面的方程是 $x\,y\,z$ 的一次方程；反之，如果设 $\(x_0\,y_0\,z_0\)$ 是三元一次方程 $a x + b y + c z + d = 0$ 的一个解，则 $ a x_0 + b y_0 + c z_0 + d = 0 $ #noindent;两式相减，得#numbered-eq($ a\(x - x_0\)+ b\(y - y_0\)+ c\(z - z_0\)= 0 $);#noindent;如果建立空间直角坐标系，作 $accent(O P_0, ⃗) =\(x_0\,y_0\,z_0\)$, $arrow(n) =\(a\,b\,c\)$, 那么 (8.13) 式就是通过 $P_0$ 且垂直于 $arrow(n)$ 的一个平面方程，这就是说，#strong[任何一个三元一次方程都表示一个平面]．这样，在空间解析几何中，一个平面和一个三元一次方程是同一码事．

由以上分析，我们还可得到一个结论，即，#strong[任给一个平面 ]$pi : thick a x + b y + c z + d = 0$#strong[, 其中 ]$x\,y\,z$#strong[ 的系数向量 ]$arrow(n) =\(a\,b\,c\)$#strong[ 是平面 ]$pi$#strong[ 的一个法线向量．]

#example[
求通过点 $P\(2\,- 1\,3\)$ 且垂直于 $arrow(n) =\(2\,- 1\,5\)$ 的平面方程．

]
#solution[
由平面的点法式方程，得所求平面方程为 $ 2\(x - 2\)+\(- 1\)\[y -\(- 1\)\]+ 5\(z - 3\)= 0 $ #noindent;整理得 $ 2 x - y + 5 z - 20 = 0 $

]
#example[
已知 $A\(x_1\,y_1\,z_1\)$, $B\(x_2\,y_2\,z_2\)$, $C\(x_3\,y_3\,z_3\)$ 三点不共线．求通过 $A$⁠、$B$⁠、$C$ 的平面方程．

]
#solution[
设 $P\(x\,y\,z\)$ 为所求平面的一个动点，则 $P$ 点与 $A$⁠、$B$⁠、$C$ 三点共面的充要条件是 $ mat(delim: "|", x - x_1, y - y_1, z - z_1; x_2 - x_1, y_2 - y_1, z_2 - z_1; x_3 - x_1, y_3 - y_1, z_3 - z_1) = 0 $ #noindent;这就是#strong[通过 ]$A$#strong[⁠、]$B$#strong[⁠、]$C$#strong[ 三点的平面方程]，叫做平面方程的三点式．

]
#example[
求通过原点和两点 $\(2\,0\,1\)$, $\(0\,1\,3\)$ 的平面方程．

]
#solution[
#strong[方法1：]由平面方程的三点式，得 $ mat(delim: "|", x - 0, y - 0, z - 0; 2 - 0, 0 - 0, 1 - 0; 0 - 0, 1 - 0, 3 - 0) = 0 $ #noindent;展开化简，得 $ x + 6 y - 2 z = 0 $ #noindent;#strong[方法2：]设所求的平面方程为 $a x + b y + c z + d = 0$, 把已知三点的坐标，代入上面方程，得 $ display(cases(d = 0, 2 a + c = 0, b + 3 c = 0)) $ #noindent;解此方程组，得 $ a = - 1 / 2 c\,#h(2em) b = - 3 c\,#h(2em) d = 0 $ #noindent;所以，所求的平面方程为 $ - 1 / 2 c x - 3 c y + c z = 0 $ #noindent;即：$x + 6 y - 2 z = 0$.

]
#example[
求通过点 $\(1\,2\,3\)$ 且平行于平面 $2 x + y - z + 3 = 0$ 的平面方程．

]
#solution[
已知平面的一个法线向量是 $arrow(n) =\(2\,1\,- 1\)$, 它与所求平面垂直，由平面的点法向式方程，得所求方程为 $ 2\(x - 1\)+ 1\(y - 2\)+\(- 1\)\(z - 3\)= 0 $ #noindent;整理，得 $ 2 x + y - z - 1 = 0 $

]
#example[
求点 $P_1\(x_1\,y_1\,z_1\)$ 到平面 $pi : thick a x + b y + c z + d = 0$ 的距离 $d$\(图8.6).

]
#figure([#fig("8-06");

  ],
  caption: [
  ]
)

#solution[
过 $P_1$ 作 $P_1 P_0$ 垂直平面 $pi$ 于 $P_0$ 点，则 $ d =\|accent(P_0 P_1, ⃗)\| $ #noindent;设 $P_0$ 的坐标为 $\(x_0\,y_0\,z_0\)$. 则 $ \|accent(P_0 P_1, ⃗)\|=\|accent(P_0 P_1, ⃗) dot.op arrow(n)_0\| $ #noindent;其中 $arrow(n)_0$ 是 $pi$ 的单位法向量．换用坐标表示，即为 $ \|accent(P_0 P_1, ⃗)\|= lr(|frac(a\(x_1 - x_0\)+ b\(y_1 - y_0\)+ c\(z_1 - z_0\), sqrt(a^2 + b^2 + c^2))|) $ #noindent;因为 $P_0 in pi$, 所以 $ a x_0 + b y_0 + c z_0 + d = 0 $ #noindent;其中: $d = -\(a x_0 + b y_0 + c z_0\)$, 代入上式，得 $ \|accent(P_0 P_1, ⃗)\|= lr(|frac(a x_1 + b y_1 + c z_1 + d, sqrt(a^2 + b^2 + c^2))|)\
d = frac(\|a x_1 + b y_1 + c z_1 + d\|, sqrt(a^2 + b^2 + c^2)) $

]
例8.9说明，如果要求一点到一平面的距离，只要把这一点的坐标代入平面方程．取绝对值，再除以系数向量的长度就可求出．

#exercise[
+ 求三个坐标平面的方程．

+ 求过点 $A\(1\,2\,- 3\)$, 以 $arrow(n) =\(1\,- 3\,2\)$ 为法线向量的方程．

+ 求过点 $P_0\(x_0\,y_0\,z_0\)$ 且垂直于 $X$ 轴的平面方程．

+ 已知两点 $A\(2\,3\,4\)$, $B\(- 2\,4\,3\)$, 求 $overline(A B)$ 的垂直平分面的方程．

+ 求通过点 $P_0\(x_0\,y_0\,z_0\)$ 且平行于 $O X Y$ 平面的方程．

+ 证明方程 $a x + b y + c z = 0$, 是通过原点的平面，其中 $a$⁠、$b$⁠、$c$ 至少有一个不为零

+ 求过原点和两点 $\(1\,0\,- 1\)$, $\(0\,2\,3\)$ 的平面方程．

+ 求过点 $\(3\,5\,- 2\)$ 且平行于平面 $2 x - y + 3 z = 0$ 的平面方程．

+ 求点 $\(3\,- 2\,5\)$ 到平面 $3 x - 4 y - z + 3 = 0$ 的距离．

]
=== 空间的直线方程
已知，一定点 $P_0\(x_0\,y_0\,z_0\)$ 和一向量 $arrow(a) =\(a_1\,a_2\,a_3\)$, 求过 $P_0$ 且平行于向量 $arrow(a)$ 的直线方程．

#figure([#fig("8-07");

  ],
  caption: [
  ]
)

设 $P\(x\,y\,z\)$ 是所求直线 $ell$ 上一动点，则存在一实数 $t$ 使 $ accent(P_0 P, ⃗) = t arrow(a)\,#h(2em) accent(O P, ⃗) = accent(O P_0, ⃗) + t arrow(a) $ #noindent;换用坐标表示，即为#numbered-eq($ display(cases(x = x_0 + a_1 t, y = y_0 + a_2 t, z = z_0 + a_3 t)) $);#noindent; (8.14) 式叫做直线 $ell$ 的#strong[参数方程]．$t$ 叫做#strong[参数]．

如果 $a_1\,a_2\,a_3$ 都不为零，从 (8.14) 式消去参数 $t$, 得#numbered-eq($ frac(x - x_0, a_1) = frac(y - y_0, a_2) = frac(z - z_0, a_3) $);#noindent; (8.15) 式叫做 $ell$ 的#strong[点、方向式方程]又叫#strong[对称式方程]．其中 $arrow(a) =\(a_1\,a_2\,a_3\)$ 叫做 $ell$ 的方向向量．如果取 $arrow(a)$ 的单位向量 $ arrow(a)_0 =\(cos alpha\,cos beta\,cos gamma\) $ #noindent;作为方向向量，则 $ell$ 的方程为 $ frac(x - x_0, cos alpha) = frac(y - y_0, cos beta) = frac(z - z_0, cos gamma) $ #noindent;$cos alpha\,cos beta\,cos gamma$ 又叫做有向#strong[直线 ]$ell$#strong[ 的方向余弦]．

如果直线 $ell$ 通过两点 $P_1\(x_1\,y_1\,z_1\)$, $P_2\(x_2\,y_2\,z_2\)$, 则直线 $ell$ 的方向向量可取 $ accent(P_1 P_2, ⃗) =\(x_2 - x_1\,y_2 - y_1\,z_2 - z_1\) $ #noindent;这时直线 $ell$ 的方程可写为#numbered-eq($ frac(x - x_1, x_2 - x_1) = frac(y - y_1, y_2 - y_1) = frac(z - z_1, z_2 - z_1) $);#noindent;方程 (8.16) 一般叫做直线的#strong[两点式方程]．

#example[
求通过 $P_0\(1\,- 1\,2\)$, 且和向量 $arrow(a) =\(2\,3\,1\)$ 平行的直线 $ell$ 的方程．

]
#solution[
由直线的对称式方程可得直线 $ell$ 的方程为 $ frac(x - 1, 2) = frac(y + 1, 3) = z - 2 $

]
#example[
求通过两个不同点 $P_1\(x_1\,y_1\,z_1\)$, $P_2\(x_2\,y_2\,z_2\)$ 的直线的参数方程．

]
#solution[
取直线 $P_1 P_2$ 的方向向量 $ accent(P_1 P_2, ⃗) =\(x_2 - x_1\,y_2 - y_1\,z_2 - z_1\) $ #noindent;由直线的参数方程．可得直线 $P_1 P_2$ 的参数方程为 $ display(cases(x = x_1 +\(x_2 - x_1\)t, y = y_1 +\(y_2 - y_1\)t, z = z_1 +\(z_2 - z_1\)t)) $

]
#example[
已知 $P_1\(5\,0\,1\)$, $P_2\(5\,6\,4\)$, 求直线 $P_1 P_2$ 的参数方程．

]
#solution[
由例8.11, 可知直线 $P_1 P_2$ 的参数方程为 $ display(cases(x = 5, y = 6 t, z = 1 + 3 t)) $

]
在例8.12中，由于 $accent(P_1 P_2, ⃗) =\(0\,6\,3\)$, 其中 $x$ 坐标为零，因此直线 $P_1 P_2$ 不能写为对称式方程，但确能用参数方程来表达．由此可看到，直线的参数方程比较优越．

#exercise[
+ 求通过点 $P_0\(- 1\,2\,- 3\)$ 且平行于向量 $arrow(s) =\(2\,3\,- 5\)$ 的直线方程．

+ 求通过 $P_0\(2\,3\,1\)$, $P_1\(- 1\,- 2\,3\)$ 的直线方程．

+ 求通过点 $\(2\,3\,1\)$ 且和 $X$ 轴平行的直线方程．

+ 求过点 $\(2\,- 3\,7\)$, 其方向向量为 $\(2\,0\,3\)$ 的直线方程．

+ 求直线 $2 x - 6 = 4 - y = z - 5$ 的方向向量．

+ 求平行于两平面 $x - 2 y + 5 z + 2 = 0$ 和 $3 x + y - z + 5 = 0$ 的交线，且通过原点的直线方程．

]
=== 球面方程
空间一动点 $P\(x\,y\,z\)$ 在以 $A\(a\,b\,c\)$ 为球心，$R$ 为半径的球面上的充要条件是 $ \|accent(O P, ⃗) - accent(O A, ⃗)\|= R $ #noindent;或 $ \(accent(O P, ⃗) - accent(O A, ⃗)\)dot.op\(accent(O P, ⃗) - accent(O A, ⃗)\)= R^2 $ #noindent;换用坐标表示，条件可写为#numbered-eq($ \(x - a\)^2 +\(y - b\)^2 +\(z - c\)^2 = R^2 $);

#figure([#fig("8-08");

  ],
  caption: [
  ]
)

方程 (8.17) 就是以 $A\(a\,b\,c\)$ 为球心，以 $R$ 为半径的#strong[球面方程]．当 $A$ 点在原点，球面方程变为 $ x^2 + y^2 + z^2 = R^2 $

#exercise[
+ 求以 $A\(1\,2\,- 2\)$ 为球心，3为半径的球面方程．

+ 求球心在原点，半径等于5的球面方程．

+ 设一动点 $Q$ 在以 $A\(0\,4\,0\)$ 为球心，2为半径的球面上变动，求 $overline(O Q)$ 中点的轨迹．

]
#heading(level: 2, numbering: none, supplement: [toc-sub])[习题8.2]

+ 求满足以下条件的平面方程．

  + 通过点 $P_0\(5\,3\,4\)$ 且垂直于向量 $arrow(n) =\(1\,1\,1\)$\;

  + 通过坐标原点且垂直于 $arrow(n) = (- 1 / 3 \, 2 / 3 \, - 2 / 3)$⁠；

  + 垂直于 $arrow(n) = (1 / 2 \, sqrt(3) / 2 \, 0)$ 且与原点的距离等于5.

+ #block(sticky: true)[说出如下方程表示的平面的几何特征．]

  #cols(3)[
  + $x = 2$

  + $x = y$

  + $x + y + z = 1$

  ]

+ 求证通过三点 $A\(a\,0\,0\)$, $B\(0\,b\,0\)$, $C\(0\,0\,c\)$ 的平面方程为 $ x / a + y / b + z / c = 1 $

+ 如图，试写出长方体 $A B C D - A' B' C' D'$ 的各侧面，底面的平面方程以及各棱所在的直线方程．已知 $overline(A B) = a$, $overline(A D) = b$, $overline(A A') = c$.

  #fig-center[
  #fig("8-09");

  #subcap[
  第4题

  ]
  ]

+ 分别求两点 $P_1\(3\,9\,1\)$, $P_2\(4\,1\,5\)$ 到平面 $S : thick x - 2 y + 2 z - 3 = 0$ 的距离．

+ 求两条直线 $ ell_1 : & quad frac(x - 1, 3) = frac(y + 2, 6) = frac(z - 5, 2)\
  ell_2 : & quad x / 2 = frac(y - 3, 9) = frac(z + 1, 6) $ #noindent;的夹角．

+ 求通过点 $\(1\,- 1\,2\)$ 并与已知平面：$x + y + z = 1$ 垂直的直线方程．并求这条直线与平面交点的坐标．

+ 在直线 $ell : thick x = 1 + 2 t\,thick y = 8 + t\,thick z = 8 + 3 t$ 上求一点使它和原点的距离等于35.

+ #block(sticky: true)[求满足下列条件的球面方程．]

  #cols(2)[
  + 球心在 $\(- 2\,3\,- 6\)$, 半径是7

  + 球心在 $\(4\,0\,0\)$, 半径是2

  + 球心在 $\(0\,- 4\,3\)$, 半径是5

  + 球心在 $\(0\,- 5\,0\)$, 半径是2

  + 球心在 $(2 / 3 \, - 1 / 3 \, 0)$⁠，半径是1

  ]

+ 求球面：$x^2 + y^2 + z^2 + 4 x - 6 y - 2 z + 5 = 0$ 的球心和半径．

#heading(level: 2, numbering: none, outlined: true)[复习题八]

+ 已知点 $P\(3\,- 1\,2\)$ 和 $M\(a\,b\,c\)$, 求 $P$⁠、$M$ 两点分别关于坐标平面、坐标轴以及原点的对称点的坐标．

+ 求点 $P\(2\,5\,6\)$ 到坐标原点以及三条坐标轴的距离．

+ 已知 $accent(O A, ⃗) =\(6\,2\,9\)$⁠，求 $accent(O A, ⃗)$ 与三个坐标平面的夹角．

+ 已知 $A\(- 2\,1\,3\)$, $B\(0\,- 1\,2\)$⁠，求与 $A$⁠、$B$ 两点距离相等点的轨迹方程．

+ 已知 $A\(a\,0\,0\)$, $B\(0\,b\,0\)$, $C\(0\,0\,c\)$, 原点到平面 $\(A\,B\,C\)$ 的距离为 $d$, 求证 $ 1 / a^2 + 1 / b^2 + 1 / c^2 = 1 / d^2 $

+ 在 $Z$ 轴上求一点，使得到 $A\(- 4\,1\,7\)$, $B\(3\,5\,- 2\)$ 两点的距离相等．

+ 已知四面体 $A B C D$⁠，且 $A\(x_1\,y_1\,z_1\)$, $B\(x_2\,y_2\,z_2\)$, $C\(x_3\,y_3\,z_3\)$, $D\(x_4\,y_4\,z_4\)$, 求它的重心的坐标．

+ 已知 $arrow(a) =\(a_1\,a_2\,a_3\)$, $arrow(b) =\(b_1\,b_2\,b_3\)$, 求证：以 $arrow(a)$, $arrow(b)$ 为邻边的平行四边形面积 $ S = sqrt(mat(delim: "|", a_2, a_3; b_2, b_3)^2 + mat(delim: "|", a_3, a_1; b_3, b_1)^2 + mat(delim: "|", a_1, a_2; b_1, b_2)^2) $

+ 已知点 $P\(1\,3\,5\)$ 和 $arrow(a)\(- 2\,1\,1\)$. 求通过 $P$ 点具有方向 $arrow(a)$ 的直线与平面 $2 x + 3 y - z = 1$ 的交点．

+ 求通过如下三点的平面方程．

  + $\(2\,1\,1\)\,#h(2em)\(3\,- 1\,1\)\,#h(2em)\(4\,1\,- 1\)$

  + $\(- 2\,3\,- 1\)\,#h(2em)\(2\,2\,3\)\,#h(2em)\(- 4\,- 1\,1\)$

  + $\(- 5\,- 1\,- 2\)\,#h(2em)\(1\,2\,- 1\)\,#h(2em)\(3\,- 1\,2\)$

+ #block(sticky: true)[求下列通过已知点 $P$ 且以 $arrow(a)$ 为方向向量的直线方程．]

  #cols(2)[
  + $P\(2\,1\,3\)\,quad arrow(a) =\(1\,1\,- 2\)$

  + $P\(- 5\,3\,4\)\,quad arrow(a) =\(- 2\,2\,1\)$

  + $P\(4\,- 3\,2\)\,quad arrow(a) =\(5\,0\,3\)$

  + $P\(0\,0\,0\)\,quad arrow(a) =\(2\,- 3\,5\)$

  + $P\(a\,b\,c\)\,quad arrow(a) =\(ell\,m\,n\)$

  ]
