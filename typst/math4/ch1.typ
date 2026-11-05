// 由 typst/tools/tex2typ.py 从 math4/1.tex 转换而来，已人工校对的部分以本文件为准。
#import "../common/template.typ": *
#import "figs.typ": fig

= 两角和与差的三角函数
我们已经学习了任意角的三角函数及其性质、图象，这一章我们将要进一步学习两角和、差以及倍角、半角的三角函数，并将学习三角式的和差化积、积化和差变形和简单的三角方程．

== 两角和与差的三角函数
=== 两角的和与差
设 $alpha$⁠、$beta$ 为两个任意实数，它们分别表示两个角的数量．那么实数 $alpha + beta$ 就表示这两个角的和角的数量．两个角的和角可以做加法得到，即，以角 $alpha$ 的终边为始边，再旋转出一个角 $beta$\(若 $beta > 0$, 按逆时针方向旋转；若 $beta < 0$, 按顺时针方向旋转），这时，以 $alpha$ 角的始边为始边，以 $beta$ 角的终边为终边的角，就是角 $alpha + beta$. 两个角的差角可以由减法得出，角的减法是加法的逆运算，即 $\(alpha - beta\)+ beta = alpha$.

两个角的差角，也可以表示成和角的形式，如 $alpha - beta = alpha +\(- beta\)$.

两个弧的和与差可按它们所对应的圆心角的和与差的法则来完成．

#exercise[
试画图表示出以下的和角、差角：$ alpha = 30 degree\,quad beta = 45 degree\;#h(2em) alpha = pi / 3\,quad beta = - frac(3 pi, 4) $

]
=== 两角和与差的余弦
两角和与差的余弦函数，可以利用每个单角的三角函数来表示．

#blk[定理1][
两个任意角 $alpha$, $beta$ 的和（或差）的余弦，等于这两个角的余弦的乘积减去（或加上）这两个角的正弦的乘积．即

#numbered-align(($cos\(alpha + beta\)$, $eqph = cos alpha cos beta - sin alpha sin beta$, true), ($cos\(alpha - beta\)$, $eqph = cos alpha cos beta + sin alpha sin beta$, true));

]
#proof[
我们先来证公式 (1.2)．

设 $alpha\,beta$ 为任意两个给定的角（不论大小及正负），把它们的始边都放在 $x$ 轴正半轴，而终边与单位圆的交点分别为 $P_1$, $P_2$\(图1.1).

#figure([#fig("1-01");

  ],
  caption: [
  ]
)

把 $O x$ 轴旋转到 $beta$ 的终边位置而成 $O x'$ 轴，$O y$ 轴旋转同样的角而成 $O y'$ 轴，我们用两种方法计算弦长 $\|P_1 P_2\|$⁠．

在 $x' O y'$ 坐标系中，$P_1$, $P_2$ 的坐标是 $ P_1 thick (cos \( alpha - beta \) \, thin sin \( alpha - beta \))\,#h(2em) P_2 thick\(1\,0\) $ #noindent;利用两点间距离公式，得：#numbered-eq($ \|P_1 P_2\|^2 & = [cos \( alpha - beta \) - 1]^2 + [sin \( alpha - beta \) - 0]^2\
 & = cos^2\(alpha - beta\)- 2 cos\(alpha - beta\)+ 1 + sin^2\(alpha - beta\)\
 & = 2 - 2 cos\(alpha - beta\) $);

在 $x O y$ 坐标系中，$P_1$, $P_2$ 的坐标是 $ P_1 thick\(cos alpha\,thin sin alpha\)\,#h(2em) P_2 thick\(cos beta\,thin sin beta\) $ #noindent;利用两点间距离公式，得：#numbered-eq($ \|P_1 P_2\|^2 & =\(cos alpha - cos beta\)^2 +\(sin alpha - sin beta\)^2\
 & = cos^2 alpha - 2 cos alpha cos beta + cos^2 beta + sin^2 alpha - 2 sin alpha sin beta + sin^2 beta\
 & = 2 - 2\(cos alpha cos beta + sin alpha sin beta\) $);

在两个坐标系下，弦长是不变的，比较 (1.3) 式和 (1.4) 式，即得 $ cos\(alpha - beta\)= cos alpha cos beta + sin alpha sin beta $ #noindent;这就是我们所要证明的．

]
既然公式 (1.2) 对任意 $alpha$, $beta$ 都成立，则以 $- beta$ 代替 $beta$, 也必成立 $ cos\[alpha -\(- beta\)\]= cos alpha cos\(- beta\)+ sin alpha sin\(- beta\) $

再注意三角函数的奇偶性，就得到 $ cos\(alpha + beta\)= cos alpha cos beta - sin alpha sin beta $ #noindent;这就是我们所要证明的公式 (1.1)．

#example[
不查表，求 $cos 15 degree$, $cos 75 degree$ 的值．

]
#solution[
由于：$15 degree = 45 degree - 30 degree\,#h(2em) 75 degree = 45 degree + 30 degree$ $ cos 45 degree = sin 45 degree = sqrt(2) / 2\,quad cos 30 degree = sqrt(3) / 2\,quad sin 30 degree = 1 / 2 $ #noindent;所以：$ cos 15 degree & = cos\(45 degree - 30 degree\)= cos 45 degree cos 30 degree + sin 45 degree sin 30 degree\
 & = sqrt(2) / 2 dot.op sqrt(3) / 2 + sqrt(2) / 2 dot.op 1 / 2\
 & = frac(sqrt(6) + sqrt(2), 4) approx 0.9659\
cos 75 degree & = cos\(45 degree + 30 degree\)= cos 45 degree cos 30 degree - sin 45 degree sin 30 degree\
 & = sqrt(2) / 2 dot.op sqrt(3) / 2 - sqrt(2) / 2 dot.op 1 / 2\
 & = frac(sqrt(6) - sqrt(2), 4) approx frac(2.4495 - 1.4142, 4)\
 & approx 0.2588 $

]
#example[
已知 $sin alpha = 2 / 3$, $cos beta = - 3 / 4$, 并且 $alpha$ 是第二象限的角，$beta$ 是第三象限的角，求 $cos\(alpha - beta\)$ 的值（准确到0.01）．

]
#solution[
因为 $alpha$ 是第二象限的角，所以 $ cos alpha = - sqrt(1 - sin^2 alpha) = - sqrt(1 - (2 / 3)^2) = - sqrt(5) / 3 $ #noindent;因为 $beta$ 是第三象限的角，所以 $ sin beta = - sqrt(1 - cos^2 beta) = - sqrt(1 - (3 / 4)^2) = - sqrt(7) / 4 $ #noindent;因此：$ cos\(alpha - beta\) & = cos alpha cos beta + sin alpha sin beta\
 & = (- sqrt(5) / 3) (- 3 / 4) + 2 / 3 (- sqrt(7) / 4)\
 & = frac(3 sqrt(5) - 2 sqrt(7), 12)\
 & approx frac(3 times 2.236 - 2 times 2.646, 12) approx 0.118 approx 0.12 $

]
#example[
证明对于任何角 $alpha$⁠，以下公式成立 $ cos (pi / 2 - alpha) = sin alpha\,#h(2em) sin (pi / 2 - alpha) = cos alpha $

]
#proof[
利用公式 (1.2)，可得：$ cos (pi / 2 - alpha) = cos pi / 2 dot.op cos alpha + sin pi / 2 dot.op sin alpha $ #noindent;但是 $ cos pi / 2 = 0\,#h(2em) sin pi / 2 = 1 $ #noindent;所以 $cos (pi / 2 - alpha) = sin alpha$

又因为上式中的 $alpha$ 为任意角，所以，若把公式中的 $alpha$ 换成 $(pi / 2 - alpha)$⁠，就可得 $ cos alpha = sin (pi / 2 - alpha) $ #noindent;即：$sin (pi / 2 - alpha) = cos alpha$

]
#exercise[
+ 等式 $cos\(alpha + beta\)= cos alpha + cos beta$ 成立吗？为什么？试举例说明

+ #block(sticky: true)[不查表，求下列各式的值：]

  #cols(2)[
  + $cos 135 degree$

  + $cos (frac(- 61 pi, 12))$

  + $cos 1950 degree$

  + $cos frac(4 pi, 9) cos pi / 9 + sin frac(4 pi, 9) sin pi / 9$

  + $cos^2 15 degree - sin^2 15 degree$

  ]

+ 已知 $cos theta = - 5 / 13$, $theta$ 为II象限角，试求 $cos (pi / 3 - theta)$, $cos (theta + pi / 6)$ 的值．

+ 证明：$alpha$ 为任意角时，下式成立．$ cos (frac(3 pi, 2) - alpha) = - sin alpha\,#h(2em) cos\(pi + alpha\)= - cos alpha $

]
=== 两角和与差的正弦
#blk[定理2][
两个任意角 $alpha$ 和 $beta$ 的和（差）的正弦等于第一个角的正弦乘以第二个角的余弦的积加上（减去）第一角的余弦乘以第二个角的正弦的乘积．即

#numbered-align(($sin\(alpha + beta\)$, $eqph = sin alpha cos beta + cos alpha sin beta$, true), ($sin\(alpha - beta\)$, $eqph = sin alpha cos beta - cos alpha sin beta$, true));

]
#proof[
因为已经知道 $ cos (pi / 2 + alpha) = - sin alpha\,#h(2em) sin (pi / 2 + alpha) = cos alpha $ #noindent;所以 $ sin\(alpha + beta\) & = - cos [pi / 2 + \( alpha + beta \)]\
 & = - cos [(pi / 2 + alpha) + beta]\
 & = - [cos (pi / 2 + alpha) cos beta - sin (pi / 2 + alpha) sin beta]\
 & = - (- sin alpha cos beta - cos alpha sin beta)\
 & = sin alpha cos beta + cos alpha sin beta $ #noindent;以 $\(- beta\)$ 替换公式 (1.5) 中的 $beta$⁠，得到 $ sin\(alpha - beta\) & = sin alpha cos\(- beta\)+ cos alpha sin\(- beta\)\
 & = sin alpha cos beta - cos alpha sin beta $

]
#example[
求 $sin 15 degree$ 和 $sin 75 degree$⁠．（不查表）

]
#solution[
$ sin 15 degree & = sin\(45 degree - 30 degree\)\
 & = sin 45 degree cos 30 degree - cos 45 degree sin 30 degree\
 & = sqrt(2) / 2 dot.op sqrt(3) / 2 - sqrt(2) / 2 dot.op 1 / 2\
 & = frac(sqrt(6) - sqrt(2), 4) $#noindent;（这就是 $cos 75 degree$ 的值）．$ sin 75 degree & = sin\(45 degree + 30 degree\)\
 & = sin 45 degree cos 30 degree + cos 45 degree sin 30 degree\
 & = sqrt(2) / 2 dot.op sqrt(3) / 2 + sqrt(2) / 2 dot.op 1 / 2\
 & = frac(sqrt(6) + sqrt(2), 4) $#noindent;（这就是 $cos 15 degree$ 的值）．

]
#example[
已知 $cos phi.alt = 3 / 5$⁠，且 $phi.alt$ 是第四象限角，试求 $sin (phi.alt - pi / 6)$ 的值．

]
#solution[
因为 $phi.alt$ 为第四象限角，所以 $ sin phi.alt = - sqrt(1 - (3 / 5)^2) = - 4 / 5 $ #noindent;于是 $ sin (phi.alt - pi / 6) & = sin phi.alt cos pi / 6 - cos phi.alt sin pi / 6\
 & = - 4 / 5 dot.op sqrt(3) / 2 - 3 / 5 dot.op 1 / 2\
 & = - frac(4 sqrt(3) + 3, 10) $

]
#example[
求证：$frac(sin\(alpha + beta\)dot.op sin\(alpha - beta\), sin^2 alpha dot.op sin^2 beta) = cot^2 beta - cot^2 alpha$

]
#proof[
$ upright("等式左边") & = frac(\(sin alpha cos beta + cos alpha sin beta\)\(sin alpha cos beta - cos alpha sin beta\), sin^2 alpha dot.op sin^2 beta)\
 & = frac(sin^2 alpha dot.op cos^2 beta - cos^2 alpha dot.op sin^2 beta, sin^2 alpha dot.op sin^2 beta)\
 & = cot^2 beta - cot^2 alpha = upright("等式右边") $

]
#example[
求证 $sin theta + cos theta = sqrt(2) sin (theta + pi / 4)$

]
#proof[
可用不同方法证之．

#strong[证法1：]$ upright("左边") & = sqrt(2) (sqrt(2) / 2 sin theta + sqrt(2) / 2 cos theta)\
 & = sqrt(2) (sin theta dot.op cos pi / 4 + cos theta dot.op sin pi / 4)\
 & = sqrt(2) sin (theta + pi / 4) = upright("右边") $

#strong[证法2：]$ upright("右边") & = sqrt(2) (sin theta dot.op cos pi / 4 + cos theta dot.op sin pi / 4)\
 & = sqrt(2) (sqrt(2) / 2 sin theta + sqrt(2) / 2 cos theta)\
 & = sin theta + cos theta = upright("左边") $

]
#exercise[
+ 你能知道当 $alpha\,beta$ 取何值时，等式 $sin\(alpha + beta\)= sin alpha + sin beta$ 能够成立呢？

+ 不查表，求下式的值

  + $sin 105 degree$

  + $sin (- frac(5 pi, 12))$

  + $tan 15 degree$

  + $sin 14 degree dot.op cos 16 degree + cos 14 degree dot.op sin 16 degree$

  + $sin 70 degree dot.op cos 25 degree - sin 20 degree dot.op sin 25 degree$

+ 已知 $sin alpha = 2 / 3$, $cos beta = - 3 / 4$⁠，且 $alpha\,beta$ 都是第二象限角

  试求 $sin\(alpha + beta\)$ 与 $cos\(alpha - beta\)$ 的值．

+ 求证：

  + $sin (frac(5 pi, 6) - phi.alt) + sin (frac(5 pi, 6) + phi.alt) = cos phi.alt$

  + $2 cos\(60 degree - alpha\)- sqrt(3) sin alpha = cos alpha$

]
=== 两角和与差的正切
#blk[定理3][
两个角 $alpha$ 与 $beta$ 的和（或差）的正切，等于一个分式，其分子为这两角正切的和（或差），其分母为1与这两个角的正切乘积的差（或和）．即

#numbered-align(($tan\(alpha + beta\)$, $eqph = frac(tan alpha + tan beta, 1 - tan alpha tan beta)$, true), ($tan\(alpha - beta\)$, $eqph = frac(tan alpha - tan beta, 1 + tan alpha tan beta)$, true));

]
#rmk[
在这两个公式中，必须保证 $tan alpha$, $tan beta$ 及 $tan\(alpha plus.minus beta\)$ 都有意义，因而，当且仅当 $alpha\,beta\,alpha plus.minus beta$, 都不等于 $pi / 2 + k pi thick\(k in bb(Z)\)$ 时，公式才能成立．

]
#proof[
对于公式 (1.7) 利用公式 $tan\(alpha + beta\)= frac(sin\(alpha + beta\), cos\(alpha + beta\))$⁠，和关于正弦函数与余弦函数的加法定理，得：$ tan\(alpha + beta\)= frac(sin alpha cos beta + cos alpha sin beta, cos alpha cos beta - sin alpha sin beta) $

用 $cos alpha cos beta$ 除右端的分子和分母，得：$ tan\(alpha + beta\) & = frac(frac(sin alpha cos beta, cos alpha cos beta) + frac(cos alpha sin beta, cos alpha cos beta), frac(cos alpha cos beta, cos alpha cos beta) - frac(sin alpha sin beta, cos alpha cos beta))\
 & = frac(frac(sin alpha, cos alpha) + frac(sin beta, cos beta), 1 - frac(sin alpha sin beta, cos alpha cos beta))\
 & = frac(tan alpha + tan beta, 1 - tan alpha tan beta) $ #noindent;对于公式 (1.8)，$ tan\(alpha - beta\) & = tan\[alpha +\(- beta\)\]\
 & = frac(tan alpha + tan\(- beta\), 1 - tan alpha tan\(- beta\))\
 & = frac(tan alpha - tan beta, 1 + tan alpha tan beta) $

]
#example[
求 $tan 15 degree$ 和 $tan 75 degree$ 的值．

]
#solution[
$ tan 15 degree & = tan\(60 degree - 45 degree\)\
 & = frac(tan 60 degree - tan 45 degree, 1 + tan 60 degree tan 45 degree)\
 & = frac(sqrt(3) - 1, 1 + sqrt(3)) = frac(\(sqrt(3) - 1\)^2, 2)\
 & = frac(4 - 2 sqrt(3), 2) = 2 - sqrt(3)\
tan 75 degree & = tan\(45 degree + 30 degree\)\
 & = frac(1 + 1 / sqrt(3), 1 - 1 / sqrt(3)) = frac(sqrt(3) + 1, sqrt(3) - 1)\
 & = frac(4 + 2 sqrt(3), 2) = 2 + sqrt(3) $

]
#example[
求两角和及差的余切公式．

]
#solution[
因为余切是正切的倒数，则用 $tan alpha$ 和 $tan beta$ 表示 $cot\(alpha + beta\)$ 和 $cot\(alpha - beta\)$ 的公式，可以从 (1.7) 和 (1.8) 中交换第一个分子和分母的位置而得，我们得出公式：$ cot\(alpha + beta\)= frac(1 - tan alpha dot.op tan beta, tan alpha + tan beta) $

等式右边的分子、分母同除以 $tan alpha dot.op tan beta eq.not 0$ 得到#numbered-eq($ cot\(alpha + beta\)= frac(cot alpha cot beta - 1, cot alpha + cot beta) $);#noindent;以 $\(- beta\)$ 替换上面等式中的 $beta$⁠，得到 $ cot\(alpha - beta\)= frac(cot alpha cot\(- beta\)- 1, cot alpha + cot\(- beta\)) = frac(cot alpha cot beta + 1, cot beta - cot alpha) $ #noindent;所以#numbered-eq($ cot\(alpha - beta\)= frac(cot alpha cot beta + 1, cot beta - cot alpha) $);#noindent;式中 $alpha\,beta\,alpha plus.minus beta$ 都不等于 $k pi$⁠．（$k$ 为任何整数）

]
#example[
已知 $tan alpha = 1 / 3$, $cot beta = - 1 / 2$⁠，试求：

+ $cot\(alpha - beta\)$ 的值．

+ $alpha + beta$ 的值，其中 $0 < alpha < pi / 3\,quad pi / 2 < beta < pi$

]
#solution[
+ 因为 $tan alpha = 1 / 3$, $tan beta = frac(1, cot beta) = - 2$⁠，以及 $ cot\(alpha - beta\)= frac(1, tan\(alpha - beta\)) = frac(1 + tan alpha dot.op tan beta, tan alpha - tan beta) $ #noindent;所以 $ cot\(alpha - beta\)= frac(1 - 2 / 3, 1 / 3 + 2) = 1 / 7 $

+ 由于 $tan\(alpha + beta\)= frac(tan alpha + tan beta, 1 - tan alpha dot.op tan beta) = - 1$⁠，而且 $0 < alpha < pi / 3$, $pi / 2 < beta < pi$⁠，因而可得 $pi / 2 < alpha + beta < frac(3 pi, 2)$

  在 $pi / 2$ 与 $frac(3 pi, 2)$ 之间，只有 $tan frac(3 pi, 4) = - 1$⁠，所以 $ alpha + beta = frac(3 pi, 4) $

]
#example[
求证 $frac(1 + tan 75 degree, 1 - tan 75 degree) = - sqrt(3)$

]
#analyze[
如果利用 $tan 45 degree = 1$ 这个等式，再考虑等式左边可变形为 $ frac(tan 45 degree + tan 75 degree, 1 - tan 45 degree dot.op tan 75 degree) $ #noindent;这样，利用两角和的正切公式经过化简，正好是一个特殊角 $120 degree$ 的正切，它的值可求得．

]
#proof[
注意 $1 = tan 45 degree$⁠，所以 $ upright("左边") = frac(tan 45 degree + tan 75 degree, 1 - tan 45 degree dot.op tan 75 degree) = tan 120 degree = - sqrt(3) = upright("右边") $

]
#example[
已知：$tan (pi / 4 + alpha) = m$⁠，求 $tan alpha$ 的值．

]
#solution[
#strong[解法1：]由已知，$alpha eq.not pi / 4 + k pi thick\(k in bb(Z)\)$⁠．不然的话，$alpha + pi / 4 = pi / 2 + k pi$, $tan (pi / 4 + alpha)$ 就没有意义了．

所以 $tan (pi / 4 + alpha) = frac(1 + tan alpha, 1 - tan alpha) = m$

由于 $1 - tan alpha eq.not 0$⁠，所以由上式可得 $ 1 + tan alpha = m - m tan alpha $ #noindent;即：$\(m + 1\)tan alpha = m - 1$ 所以：$tan alpha = frac(m - 1, m + 1)\,quad\(m eq.not - 1\)$

#strong[解法2：]因为 $alpha = (pi / 4 + alpha) - pi / 4$⁠，所以 $ tan alpha & = tan [(pi / 4 + alpha) - pi / 4]\
 & = frac(tan (pi / 4 + alpha) - tan pi / 4, 1 + tan (pi / 4 + alpha) dot.op tan pi / 4)\
 & = frac(m - 1, m + 1) quad\(m eq.not - 1\) $

]
#example[
设 $cot alpha\,cot beta$ 是一元二次方程 $a x^2 + b x + c = 0 quad\(a eq.not c eq.not 0\)$ 的两个根，试求 $tan\(alpha + beta\)$ 的值．

]
#solution[
由韦达定理知 $ cot alpha + cot beta = - b / a\,#h(2em) cot alpha dot.op cot beta = c / a $ #noindent;即：$ frac(tan alpha + tan beta, tan alpha dot.op tan beta) = - b / a\,#h(2em) frac(1, tan alpha dot.op tan beta) = c / a $ #noindent;由此两式可以求得 $ tan alpha + tan beta = - b / c\,#h(2em) tan alpha dot.op tan beta = a / c $ #noindent;所以：$ tan\(alpha + beta\)= frac(tan alpha + tan beta, 1 - tan alpha dot.op tan beta) = frac(- b / c, 1 - a / c) = frac(b, a - c) $

]
#exercise[
+ #block(sticky: true)[不查表，求值：]

  #cols(2)[
  + $tan 435 degree$

  + $cot 105 degree$

  + $frac(tan 17 degree + tan 28 degree, 1 + tan 17 degree dot.op tan 152 degree)$

  + $frac(1 + tan 15 degree, tan 15 degree - 1)$

  ]

+ 已知 $tan alpha = 2$⁠，且 $alpha in (pi \, frac(3 pi, 2))$⁠，试求 $tan (alpha - pi / 4)$ 的值．

+ 若 $alpha\,beta$ 都是锐角，且 $tan alpha = 2$, $cot beta = 1 / 3$⁠．求证：$alpha + beta = 135 degree$⁠．

]
#heading(level: 2, numbering: none, supplement: [toc-sub])[习题1.1]

+ 已知 $sin alpha = 15 / 17$, $cos beta = - 5 / 13$, 且 $alpha$, $beta$ 都是第二象限角，试求 $cos\(alpha + beta\)$, $cos\(alpha - beta\)$ 的值．

+ 在 $triangle.stroked.t A B C$ 中，$cos A = 4 / 5$, $cos B = 12 / 13$, 试求 $cos C$ 的值．

+ 求证：

  + $cos\(alpha + 60 degree\)+ cos\(alpha - 60 degree\)= cos alpha$

  + $cos\(alpha + beta\)dot.op cos beta + sin beta dot.op sin\(alpha + beta\)= cos alpha$

  + $cos\(alpha + beta\)dot.op cos\(alpha - beta\)= cos^2 alpha + cos^2 beta - 1$

+ 化简下列各式：

  + $cos (pi / 6 + alpha) - cos (pi / 6 - alpha)$

  + $frac(cos alpha dot.op cos beta - cos\(alpha + beta\), cos\(alpha - beta\)- sin alpha dot.op sin beta)$

  + $frac(cos\(alpha + beta\)+ cos\(alpha - beta\), cos\(alpha + beta\)- cos\(alpha - beta\))$

  + $cos 25 degree dot.op cos 29 degree - sin 24 degree dot.op sin 29 degree$

  + $cos\(36 degree + x\)dot.op cos\(54 degree - x\)- sin\(36 degree + x\)dot.op sin\(54 degree - x\)$

+ 已知 $cos alpha = cos beta = m$, $sin alpha = sin beta = n$, 试求 $cos\(alpha + beta\)$ 及 $cos\(alpha - beta\)$ 的值，并求出 $m$ 与 $n$ 的关系式．

+ 求下列各函数的值（不查表）：$ sin 150 degree\,#h(2em) sin 195 degree\,#h(2em) tan 195 degree $

+ 已知 $cos alpha = - 8 / 17$, $cos beta = 4 / 5$, 且 $alpha$ 是第三象限角，$beta$ 是第四象限角，试求 $sin\(alpha + beta\)$

+ 若 $cos alpha = - 3 / 15$, $sin beta = 8 / 17$, 且 $alpha in (pi \, frac(3 pi, 2))$, $beta in (0 \, pi / 2)$, 试求 $sin\(alpha - beta\)$.

+ 若 $cos alpha = 1 / 7$, $cos\(alpha + beta\)= - 11 / 14$, 且 $0 < alpha < pi / 2$, $0 < beta < pi / 2$, 试求角 $beta$ 的值．

+ 化简下列各式：

  + $sin 13 degree dot.op cos 17 degree + cos 13 degree dot.op sin 163 degree$

  + $sin 70 degree dot.op sin 65 degree - cos 70 degree dot.op sin 25 degree$

  + $sin (alpha + pi / 3) + sin (alpha - pi / 3)$

  + $frac(sin\(beta - gamma\)+ sin\(beta + gamma\), sin\(beta + gamma\)- sin\(beta - gamma\))$

  + $frac(sin\(beta - gamma\), cos beta dot.op cos gamma) + frac(sin\(gamma - alpha\), cos gamma dot.op cos alpha) + frac(sin\(alpha - beta\), cos alpha dot.op cos beta)$

+ 已知 $sin alpha = 3 / 4$, 且 $pi / 2 < alpha < pi$⁠，求 $tan (pi / 3 + alpha)$

+ #lead-list(none, 2)[
  + 已知 $tan x = 1 / 4$, $tan y = - 3$, 求 $tan\(x + y\)$ 的值；

  + 已知 $tan alpha = 2 k + 1$, $tan beta = 2 k - 1$, 求 $cot\(alpha - beta\)$ 的值.
  ]

+ 求证：

  + $tan\(x + y\)dot.op tan\(x - y\)= frac(tan^2 x - tan^2 y, 1 - tan^2 x dot.op tan^2 y)$

  + $frac(1 - tan theta, 1 + tan theta) = cot (theta + pi / 4)$

  + $frac(tan x + tan y, tan x - tan y) = frac(sin\(x + y\), sin\(x - y\))$

+ 已知 $theta\,phi.alt$ 都是锐角，且 $tan theta = 1 / 2$, $tan phi.alt = 1 / 3$, 求证：$theta + phi.alt = 45 degree$⁠．

+ 如图1.2，矩形 $A B C D$ 被划分成三个全等的正方形．求证：

  + $angle theta = angle gamma$

  + $alpha + beta + gamma = 90 degree$

  #figure([#fig("1-02");

    ],
    caption: [
    ]
  )

+ 若 $sin alpha = sqrt(10) / 10$, $tan beta = - 1 / 2$. $90 degree < alpha < 180 degree$, $90 degree < beta < 180 degree$⁠，求证：

  + $tan\(alpha + beta\)= - 1$

  + $alpha + beta = 315 degree$

+ 已知 $cot alpha = 3 / 4$, $cot beta = 1 / 7$, 且 $alpha\,beta$ 都是锐角，

  求证：$alpha + beta = 135 degree$⁠．

+ 已知 $tan alpha$ 与 $tan beta$ 是方程 $x^2 + 6 x + 7 = 0$ 的两个根．

  求证：$sin\(alpha + beta\)= cos\(alpha + beta\)$

+ 已知 $a dot.op sin\(theta + x\)= b sin\(theta + y\)$, 求证：$ tan theta = frac(b sin y - a sin x, a cos x - b cos y) $

== 二倍角的正弦、余弦和正切
=== 二倍角的正弦、余弦和正切
在两角和的正弦、余弦和正切的公式中，令 $beta = alpha$⁠，则得到 $ sin\(alpha + alpha\)= sin alpha cos alpha + cos alpha sin alpha $ #noindent;即#numbered-eq($ sin 2 alpha = 2 sin alpha cos alpha $); $ cos\(alpha + alpha\)= cos alpha cos alpha - sin alpha sin alpha $ #noindent;即#numbered-eq($ cos 2 alpha = cos^2 alpha - sin^2 alpha $);#noindent;若在公式 (1.12) 中，用 $1 - sin^2 alpha$ 代换 $cos^2 alpha$, 或用 $1 - cos^2 alpha$ 代换 $sin^2 alpha$, 则对于 $cos 2 alpha$ 又得到两个公式

#numbered-align(($cos 2 alpha$, $eqph = 1 - 2 sin^2 alpha$, true), ($cos 2 alpha$, $eqph = 2 cos^2 alpha - 1$, true));

$ tan\(alpha + alpha\)= frac(tan alpha + tan alpha, 1 - tan alpha tan alpha) $ #noindent;即：#numbered-eq($ tan 2 alpha = frac(2 tan alpha, 1 - tan^2 alpha) $);

#rmk[
+ 二倍角的三角函数的公式是把任意角的三角函数与小一半的角的三角函数联系起来，它们可以写成下面的各种形式的等式．例如 $ sin 4 alpha & = sin 2 dot.op\(2 alpha\)= 2 sin 2 alpha cos 2 alpha\
  sin alpha & = sin 2 (alpha / 2) = 2 sin alpha / 2 cos alpha / 2\
  cos alpha / 2 & = cos^2 alpha / 4 - sin^2 alpha / 4\
  tan 3 alpha & = frac(2 tan frac(3 alpha, 2), 1 - tan^2 frac(3 alpha, 2)) $

+ 在二倍角的正切公式 (1.15) 中，除了 $alpha = pi / 2 + k pi$ 和 $alpha = pi / 4 + frac(k pi, 2)\,thick\(k in bb(Z)\)$ 诸值之外，对 $alpha$ 的其余一切值都成立，因为当所指定的那些 $alpha$ 值，$tan alpha$ 和 $tan 2 alpha$ 都不存在．

+ 在使用二倍角三角函数的公式作恒等变形时，不仅要掌握从等式的左端的式子变换到右端的式子，而且也要熟练地掌握从等式的右端的式子变换到左端的式子．

]
#example[
化简下面的式子

#cols(2)[
+ $4 sin 15 degree cos 15 degree$

+ $1 / 2 sin 15 degree sin 255 degree$

+ $cos^2 pi / 8 - sin^2 pi / 8$

+ $cos^2 15 degree - 1 / 2$

+ $frac(tan 75 degree, 1 - tan^2 75 degree)$

]
]
#solution[
+ $4 sin 15 degree cos 15 degree = 2 sin 30 degree = 1$

+ $1 / 2 sin 15 degree sin 255 degree = - 1 / 2 sin 15 degree cos 15 degree = - 1 / 4 sin 30 degree = - 1 / 8$

+ $cos^2 pi / 8 - sin^2 pi / 8 = cos pi / 4 = sqrt(2) / 2$

+ $cos^2 15 degree - 1 / 2 = frac(2 cos^2 15 degree - 1, 2) = frac(cos 30 degree, 2) = sqrt(3) / 4$

+ $frac(tan 75 degree, 1 - tan^2 75 degree) = 1 / 2 frac(2 tan 75 degree, 1 - tan^2 75 degree) = 1 / 2 tan 150 degree = - 1 / 2 tan 30 degree = - sqrt(3) / 6$

]
#example[
已知 $0 degree < alpha < 90 degree$, $0 degree < beta < 90 degree$, $tan alpha = 1 / 7$⁠，$sin beta = 1 / sqrt(10)$⁠．

求证：$alpha + 2 beta = 45 degree$

]
#figure([#fig("1-03");

  ],
  caption: [
  ]
)

#solution[
因为 $beta$ 是锐角，所以 $tan beta = 1 / 3$⁠，由 $tan beta < 1$ 知 $0 degree < beta < 45 degree$⁠，同理 $0 degree < alpha < 45 degree$⁠．

又 $tan 2 beta = frac(2 / 3, 1 - (1 / 3)^2) = 3 / 4 < 1$

所以 $0 degree < 2 beta < 45 degree$⁠，并且 $ tan\(alpha + 2 beta\)= frac(tan alpha + tan 2 beta, 1 - tan alpha tan 2 beta) = frac(1 / 7 + 3 / 4, 1 - 1 / 7 dot.op 3 / 4) = 1 $ #noindent;所以 $alpha + 2 beta = 45 degree + k dot.op 180 degree thick\(k in bb(Z)\)$⁠，但是因为 $0 degree < alpha < 45 degree$⁠，$0 degree < 2 beta < 45 degree$⁠，所以 $0 degree < alpha + 2 beta < 90 degree$⁠，因此，$k$ 只能取0，因而：$ alpha + 2 beta = 45 degree $

]
#example[
用 $alpha$ 角的三角函数表示 $sin 3 alpha$, $cos 3 alpha$ 和 $tan 3 alpha$⁠．

]
#solution[
+ #h(0pt)
  $ sin 3 alpha & = sin\(alpha + 2 alpha\)= sin alpha cos 2 alpha + cos alpha sin 2 alpha\
   & = sin alpha\(1 - 2 sin^2 alpha\)+ 2 sin alpha\(1 - sin^2 alpha\)\
   & = sin alpha - 2 sin^3 alpha + 2 sin alpha - 2 sin^3 alpha\
   & = 3 sin alpha - 4 sin^3 alpha $

+ #h(0pt)
  $ cos 3 alpha & = cos\(alpha + 2 alpha\)= cos alpha cos 2 alpha - sin alpha sin 2 alpha\
   & = cos alpha\(2 cos^2 alpha - 1\)- 2 cos alpha\(1 - cos^2 alpha\)\
   & = 2 cos^3 alpha - cos alpha - 2 cos alpha + 2 cos^3 alpha\
   & = 4 cos^3 alpha - 3 cos alpha $

+ #h(0pt)
  $ tan 3 alpha & = tan\(alpha + 2 alpha\)= frac(tan alpha + tan 2 alpha, 1 - tan alpha tan 2 alpha)\
   & = frac(tan alpha + frac(2 tan alpha, 1 - tan^2 alpha), 1 - tan alpha dot.op frac(2 tan alpha, 1 - tan^2 alpha))\
   & = frac(tan alpha - tan^3 alpha + 2 tan alpha, 1 - tan^2 alpha - 2 tan^2 alpha)\
   & = frac(3 tan alpha - tan^3 alpha, 1 - 3 tan^2 alpha) $

]
#example[
求证：

+ $\[sin alpha\(1 - sin alpha\)+ cos alpha\(1 - cos alpha\)\]times\[sin alpha\(1 + sin alpha\)+ cos alpha\(1 + cos alpha\)\]= sin 2 alpha$

+ $sin 50 degree (1 + sqrt(3) tan 10 degree) = 1$

]
#proof[
+ #h(0pt)
  $ upright("左边") & =\(sin alpha - sin^2 alpha + cos alpha - cos^2 alpha\)times\(sin alpha + sin^2 alpha + cos alpha + cos^2 alpha\)\
   & =\(sin alpha + cos alpha - 1\)\(sin alpha + cos alpha + 1\)\
   & =\(sin alpha + cos alpha\)^2 - 1\
   & = 2 sin alpha cos alpha\
   & = sin 2 alpha = upright("右边") $

+ #h(0pt)
  $ upright("左边") & = sin 50 degree (1 + frac(sqrt(3) sin 10 degree, cos 10 degree))\
   & = sin 50 degree frac(2 (1 / 2 cos 10 degree + sqrt(3) / 2 sin 10 degree), cos 10 degree)\
   & = 2 sin 50 degree dot.op frac(cos 60 degree dot.op cos 10 degree + sin 60 degree dot.op sin 10 degree, cos 10 degree)\
   & = frac(2 sin 50 degree dot.op cos 50 degree, cos 10 degree)\
   & = frac(sin 100 degree, cos 10 degree)\
   & = frac(cos 10 degree, cos 10 degree) = 1 = upright("右边") $

]
#exercise[
+ #block(sticky: true)[不查表，求下列各式的值：]

  #cols(2)[
  + $2 sin 12 degree 30' dot.op cos 12 degree 30'$

  + $cos^2 pi / 12 - sin^2 pi / 12$

  + $2 cos^2 67 degree 30' - 1$

  + $2 sin^2 75 degree - 1$

  + $frac(2 tan 22.5 degree, 1 - tan^2 22.5 degree)$

  + $sin 15 degree dot.op cos 15 degree$

  + $1 - 2 sin^2 750 degree$

  + $frac(2 tan 150 degree, 1 - tan^2 150 degree)$

  ]

+ #block(sticky: true)[化简：]

  #cols(2)[
  + $\(sin x - cos y\)^2$

  + $sin alpha / 2 dot.op cos alpha / 2$

  + $cos^4 theta - sin^4 theta$

  + $frac(1, 1 - tan theta) - frac(1, 1 + tan theta)$

  ]

+ 已知 $cos alpha = - 12 / 13\,thick alpha in (pi / 2 \, pi)$, 试求：$sin 2 alpha$, $cos 2 alpha$, $tan 2 alpha$ 的值．

+ 试推导出 $tan 3 alpha$ 的公式（用 $tan alpha$ 表示）．

+ 证明以下各等式：

  + $sin^2 theta = 1 / 2\(1 - cos 2 theta\)$

  + $cos^2 theta = 1 / 2\(1 + cos 2 theta\)$

  + $2 sin\(pi + alpha\)cos\(pi - alpha\)= sin 2 alpha$

  + $cos^4 x / 2 - sin^4 x / 2 = cos x$

  + $1 + 2 cos^2 alpha = 2 + cos 2 alpha$

  + $frac(1, sin alpha) - frac(cos 2 alpha, sin alpha) = 2 sin alpha$

  + $tan 2 alpha = frac(2 cot alpha, cot^2 alpha - 1)$

  + $frac(sin 2 theta, 1 - cos 2 theta) = cot theta$

  + $cot x - cot 2 x = frac(1, sin 2 x)$

  + $frac(sin beta dot.op cos beta, sin^2 beta - cos^2 beta) = - 1 / 2 tan 2 beta$

]
=== 万能公式------用 $tan alpha / 2$ 分别表示任意角 $alpha$ 的三角函数
#blk[定理][
若 $alpha eq.not\(2 k + 1\)pi quad\(k in bb(Z)\)$⁠，则 $sin alpha$, $cos alpha$ 和 $tan alpha$ 可以表示成 $tan alpha / 2$ 的有理式，即：

#numbered-align(($sin alpha$, $eqph = frac(2 tan alpha / 2, 1 + tan^2 alpha / 2)$, true), ($cos alpha$, $eqph = frac(1 - tan^2 alpha / 2, 1 + tan^2 alpha / 2)$, true), ($tan alpha$, $eqph = frac(2 tan alpha / 2, 1 - tan^2 alpha / 2)$, true));

]
#proof[
根据倍角公式有：$ sin alpha & = 2 sin alpha / 2 cos alpha / 2\
cos alpha & = cos^2 alpha / 2 - sin^2 alpha / 2 $ #noindent;或者 $ sin alpha = frac(2 sin alpha / 2 cos alpha / 2, cos^2 alpha / 2 + sin^2 alpha / 2)\,#h(2em) cos alpha = frac(cos^2 alpha / 2 - sin^2 alpha / 2, cos^2 alpha / 2 + sin^2 alpha / 2) $ #noindent;上面两个等式的分母恒等于1, 因为 $alpha eq.not pi + 2 k pi$⁠，则 $alpha / 2 eq.not pi / 2 + k pi thick\(k in bb(Z)\)$, 因而 $cos alpha / 2 eq.not 0$⁠．

上两式右边的分子、分母同除以 $cos^2 alpha / 2 eq.not 0$, 得 $ sin alpha = frac(2 tan alpha / 2, 1 + tan^2 alpha / 2)\,#h(2em) cos alpha = frac(1 - tan^2 alpha / 2, 1 + tan^2 alpha / 2) $ #noindent;这两个式子相除就得到 $ tan alpha = frac(2 tan alpha / 2, 1 - tan^2 alpha / 2) $

]
上述三个公式通常叫做万能公式，应用它，就可以将 $alpha$ 角的任一种三角函数化为以 $tan alpha / 2$ 为变量的有理函数，这对问题的解决往往是有益的．

#example[
已知 $sin alpha = 0.8$, 且 $90 degree < alpha < 180 degree$, 求 $sin 2 alpha$, $cos 2 alpha$⁠．

]
#solution[
除用倍角公式求解外，我们应用万能公式给出另一种解法如下：

因为 $sin alpha = 0.8\,thick 90 degree < alpha < 180 degree$⁠，所以 $tan alpha = - 4 / 3$ $ sin 2 alpha & = frac(2 tan alpha, 1 + tan^2 alpha) = frac(- 8 / 3, 1 + 16 / 9) = - 24 / 25\
cos 2 alpha & = frac(1 - tan^2 alpha, 1 + tan^2 alpha) = frac(1 - (- 4 / 3)^2, 1 + (4 / 3)^2) = - 7 / 25 $

]
#example[
已知 $cot alpha = - 2\,thick 90 degree < alpha < 180 degree$,

求 $sin 2 alpha$, $cos 2 alpha$⁠．

]
#solution[
因为 $cot alpha = - 2\,thick 90 degree < alpha < 180 degree$⁠，所以 $tan alpha = - 1 / 2$ $ sin 2 alpha & = frac(2 tan alpha, 1 + tan^2 alpha) = frac(2 (- 1 / 2), 1 + (- 1 / 2)^2) = - 4 / 5\
cos 2 alpha & = frac(1 - tan^2 alpha, 1 + tan^2 alpha) = frac(1 - 1 / 4, 1 + 1 / 4) = 3 / 5 $

]
#example[
求证：$frac(cos A, cot A / 2 - tan A / 2) = 1 / 2 sin A$

]
#proof[
$ upright("左边") & = frac(tan A / 2 dot.op cos A, 1 - tan^2 A / 2)\
 & = 1 / 2 tan A dot.op cos A\
 & = 1 / 2 sin A = upright("右边") $

]
#exercise[
+ 已知 $cos A = 4 / 5$⁠，且 $3 / 2 pi < A < 2 pi$⁠，试用万能公式求 $tan A / 2$.

+ 应用万能公式求证：$tan pi / 8 = sqrt(2) - 1$

+ 求证：

  + $1 / 4 sin 2 alpha = frac(cos^2 alpha, cot alpha / 2 - tan alpha / 2)$

  + $frac(sin 2 x, 1 + cos 2 x) dot.op frac(cos x, 1 + cos x) = tan x / 2$

]
=== 半角的正弦、余弦和正切
用 $alpha$ 角的三角函数来表示 $alpha / 2$ 的角的三角函数的公式称为#strong[半角三角函数公式]．在倍角公式：$ cos 2 alpha = 1 - 2 sin^2 alpha\,#h(2em) cos 2 alpha = 2 cos^2 alpha - 1 $ #noindent;里，用 $alpha / 2$ 代替 $alpha$, 就得到 $ cos alpha = 1 - 2 sin^2 alpha / 2\,#h(2em) cos alpha = 2 cos^2 alpha / 2 - 1 $ #noindent;所以 $ sin^2 alpha / 2 = frac(1 - cos alpha, 2)\,#h(2em) cos^2 alpha / 2 = frac(1 + cos alpha, 2) $ #noindent;由于 $0 lt.eq sin^2 alpha / 2 lt.eq 1$⁠，$0 lt.eq cos^2 alpha / 2 lt.eq 1$⁠，故知 $ 0 lt.eq frac(1 plus.minus cos alpha, 2) lt.eq 1 $ #noindent;两边开平方，得 $ sin alpha / 2 = plus.minus sqrt(frac(1 - cos alpha, 2))\,#h(2em) cos alpha / 2 = plus.minus sqrt(frac(1 + cos alpha, 2)) $ #noindent;当 $alpha eq.not\(2 k + 1\)pi$ 时，$cos alpha / 2 eq.not 0$ 且 $cos alpha eq.not - 1$\; 上面两个等式的两边相除，得到 $ tan alpha / 2 = plus.minus sqrt(frac(1 - cos alpha, 1 + cos alpha)) $

下面三个公式称为半角的三角函数公式：

#numbered-align(($sin alpha / 2$, $eqph = plus.minus sqrt(frac(1 - cos alpha, 2))$, true), ($cos alpha / 2$, $eqph = plus.minus sqrt(frac(1 + cos alpha, 2))$, true), ($tan alpha / 2$, $eqph = plus.minus sqrt(frac(1 - cos alpha, 1 + cos alpha))$, true));

#noindent;其中：$alpha eq.not\(2 k + 1\)pi$⁠．至于根号前正号或负号的选取是依半角的终边位于什么象限内而定．

#example[
已知，$cos alpha = 0.6$, $270 degree < alpha < 360 degree$

求 $sin alpha / 2$, $cos alpha / 2$ 和 $tan alpha / 2$⁠．

]
#solution[
因为已知 $270 degree < alpha < 360 degree$⁠，所以 $135 degree < alpha / 2 < 180 degree$ 这时可以肯定 $alpha / 2$ 角是第二象限的角，所以 $sin alpha / 2$ 的值是正的，$cos alpha / 2$ 和 $tan alpha / 2$ 的值是负的，因此得到 $ sin alpha / 2 & = sqrt(frac(1 - cos alpha, 2)) = sqrt(frac(1 - 0.6, 2)) = sqrt(5) / 5\
cos alpha / 2 & = - sqrt(frac(1 + cos alpha, 2)) = - sqrt(frac(1 + 0.6, 2)) = - frac(2 sqrt(5), 5)\
tan alpha / 2 & = - sqrt(frac(1 - cos alpha, 1 + cos alpha)) = - sqrt(frac(1 - 0.6, 1 + 0.6)) = - 1 / 2 $

]
#example[
已知 $cos alpha = - 1 / 3$⁠，求 $sin alpha / 2$⁠．

]
#solution[
因为 $cos alpha = - 1 / 3 < 0$, 所以 $alpha$ 角是第二或第三象限的角，即#numbered-eq($ pi / 2 + 2 k pi < alpha < pi + 2 k pi $);#noindent;或者#numbered-eq($ pi + 2 k pi < alpha < frac(3 pi, 2) + 2 k pi quad\(k in bb(Z)\) $);#noindent;从而由不等式 (1.22) 知道 $ pi / 4 + k pi < alpha / 2 < pi / 2 + k pi quad\(k in bb(Z)\) $ #noindent;当 $k$ 为正、负偶数时，$alpha / 2$ 角是第一象限的角；当 $k$ 为正、负奇数时，$alpha / 2$ 角是第三象限的角，因此，尽管知道 $alpha$ 是第二象限的角，也不能确定 $alpha / 2$ 是第几象限的角，它可能是第一象限的角，也可能是第三象限的角，所以 $sin alpha / 2$ 的值取符号“$+$⁠”号或“$-$⁠”号不能确定．

同理，由不等式 (1.23) 知道 $ pi / 2 + k pi < alpha / 2 < frac(3 pi, 4) + k pi quad\(k in bb(Z)\) $ #noindent;当 $k$ 为正负偶数时，$alpha / 2$ 是第二象限角；当 $k$ 为正负奇数时，$alpha / 2$ 是第四象限角，因此，当 $alpha$ 是第三象限的角时，$alpha / 2$ 可能是第二象限的角或第四象限的角，所以 $sin alpha / 2$ 的值的符号不能确定．

根据上面的讨论知道 $ sin alpha / 2 = plus.minus sqrt(frac(1 - cos alpha, 2)) = plus.minus sqrt(frac(1 + 1 / 3, 2)) = plus.minus sqrt(6) / 3 $

]
从上面的两个例子，可以知道，如果能确定 $alpha$ 角在哪一个固定的区间，就可以确定角 $alpha / 2$ 在哪一个固定的区间，这时公式 (1.19)、(1.20)、(1.21) 就能够选取固定的“$+$⁠”号或“$-$⁠”号；如果只知道角 $alpha$ 所在象限，而不知道它在哪一个固定的区间时，就不能确定角 $alpha / 2$ 在哪一个固定的区间，这时公式 (1.19)、(1.20)、(1.21) 中，就应该保留“$plus.minus$⁠”号．

#example[
利用半角公式求 $cos pi / 8$ 的值（准确到0.001）

]
#solution[
因为 $pi / 8$ 是第一象限的角，把它作为 $pi / 4$ 的半角，使得 $ cos pi / 8 = sqrt(frac(1 + cos pi / 4, 2)) = sqrt(frac(1 + sqrt(2) / 2, 2)) = 1 / 2 sqrt(2 + sqrt(2)) approx 0.924 $

]
#example[
求证：$tan alpha / 2 = frac(sin alpha, 1 + cos alpha) = frac(1 - cos alpha, sin alpha)$

]
#proof[
因为 $sin^2 alpha = 1 - cos^2 alpha =\(1 + cos alpha\)\(1 - cos alpha\)$⁠，所以：$ frac(sin alpha, 1 + cos alpha) = frac(1 - cos alpha, sin alpha) $ #noindent;又 $tan alpha / 2 = frac(sin alpha / 2, cos alpha / 2) = frac(sin alpha / 2 dot.op 2 cos alpha / 2, cos alpha / 2 dot.op 2 cos alpha / 2) = frac(sin alpha, 1 + cos alpha)$⁠，因此：#numbered-eq($ tan alpha / 2 = frac(sin alpha, 1 + cos alpha) = frac(1 - cos alpha, sin alpha) $);

]
我们来说明，当 $alpha$ 是锐角时，这个公式的几何意义，如图1.4所示．

#figure([#fig("1-04");

  ],
  caption: [
  ]
)

在单位圆中，半径 $\|O A\|=\|O P\|=\|O B\|= 1$, $angle P O A = alpha$ (弧度）．

于是，$overline(M P) = sin alpha$, $overline(O M) = cos alpha$, $angle P B A = alpha / 2$ $ tan alpha / 2 = overline(M P) / overline(B M) = frac(overline(M P), overline(B O) + overline(O M)) = frac(sin alpha, 1 + cos alpha) $

#example[
求 $tan 15 degree$ 的值．

]
#solution[
解法1: $tan 15 degree = frac(1 - cos 30 degree, sin 30 degree) = frac(1 - sqrt(3) / 2, 1 / 2) = 2 - sqrt(3)$

解法2: $ tan 15 degree & = sqrt(frac(1 - cos 30 degree, 1 + cos 30 degree)) = sqrt(frac(1 - sqrt(3) / 2, 1 + sqrt(3) / 2))\
 & = sqrt(frac(2 - sqrt(3), 2 + sqrt(3))) = sqrt(\(2 - sqrt(3)\)^2)\
 & = 2 - sqrt(3) $

]
由这两种解法看出，如果已知 $sin alpha$, $cos alpha$ 的值，那么求 $tan alpha / 2$ 时，用公式 (1.24) 要比公式 (1.21) 方便一些，其中尤以 $tan alpha / 2 = frac(1 - cos alpha, sin alpha)$ 更方便．

#example[
求证：

#cols(2)[
+ $tan (45 degree - alpha / 2) = frac(cos alpha, 1 + sin alpha)$

+ $frac(cos alpha, 1 - sin alpha) = cot (45 degree - alpha / 2)$

+ $frac(cos^2 A, cot A / 2 - tan A / 2) = 1 / 4 sin 2 A$

]
]
#proof[
+ #h(0pt)
  $ tan (45 degree - alpha / 2) & = tan frac(90 degree - alpha, 2)\
   & = frac(sin\(90 degree - alpha\), 1 + cos\(90 degree - alpha\))\
   & = frac(cos alpha, 1 + sin alpha) $

+ #h(0pt)
  $ frac(cos alpha, 1 - sin alpha) & = frac(sin\(90 degree - alpha\), 1 - cos\(90 degree - alpha\))\
   & = frac(1, tan frac(90 degree - alpha, 2)) = cot frac(90 degree - alpha, 2)\
   & = cot (45 degree - alpha / 2) $

+ #h(0pt)
  $ frac(cos^2 A, cot A / 2 - tan A / 2) & = frac(cos^2 A, frac(1 + cos A, sin A) - frac(1 - cos A, sin A))\
   & = frac(sin A cos^2 A, 2 cos A)\
   & = 1 / 2 sin A dot.op cos A\
   & = 1 / 4 sin 2 A $

]
#exercise[
+ 已知 $cos alpha = 2 / 3$⁠，求 $sin alpha / 2$, $cos alpha / 2$, $tan alpha / 2$⁠．

+ 已知 $sin x = - 4 / 5$⁠，且 $frac(3 pi, 2) < x < 2 pi$⁠，求 $sin x / 2$, $cos x / 2$, $tan x / 2$⁠．

+ 已知 $cos A = 4 / 5$⁠，且 $A$ 是第四象限角，试求 $tan A / 2$⁠．

+ #block(sticky: true)[求证：]

  #cols(2)[
  + $sin^2 x / 4 = frac(1 - cos x / 2, 2)$

  + $1 + sin alpha = 2 cos^2 (pi / 4 - alpha / 2)$

  + $1 - sin beta = 2 cos^2 (pi / 4 + beta / 2)$

  + $sin 4 alpha = frac(4 sin alpha\(1 - tan^2 alpha\), sec alpha\(1 + tan^2 alpha\))$

  ]

]
#heading(level: 2, numbering: none, supplement: [toc-sub])[习题1.2]

+ #block(sticky: true)[不查表计算下列的值]

  #cols(2)[
  + $sin 15 degree sin 75 degree$

  + $sin pi / 8 sin frac(3 pi, 8)$

  + $frac(tan pi / 8, 1 - tan^2 pi / 8)$

  + $frac(1 - tan^2 15 degree, 1 + tan^2 15 degree)$

  + $cot pi / 8 - tan pi / 8$

  + $sin^4 105 degree + cos^4 75 degree$

  ]

+ #block(sticky: true)[化简下面的式子]

  #cols(2)[
  + $2 - 2 sin^2 alpha + cos 2 alpha$

  + $cos 4 alpha + 2 sin^2 2 alpha$

  + $1 - 4 sin^2 alpha cos^2 alpha$

  + $(cos^2 alpha + 2 sin alpha cos alpha - sin^2 alpha)^2$

  ]

+ 证明：

  + 若 $0 < alpha < pi$, 则 $sin 2 alpha < 2 sin alpha$

  + 若 $0 < alpha < pi / 4$, 则 $tan 2 alpha > 2 tan alpha$

+ 已知 $sin alpha = 7 / 25$, $pi / 2 < alpha < pi$, 求 $sin 2 alpha$, $cos 2 alpha$ 和 $tan 2 alpha$⁠．

+ 已知 $cos alpha / 2 = frac(2 n, 1 + n^2)$⁠，求 $sin alpha$ 和 $tan alpha$⁠．

+ 已知 $sin alpha = 0.8$, $cos beta = - 5 / 13$⁠，并且 $pi / 2 < alpha < pi$, $pi / 2 < beta < pi$⁠，求：

  + $sin\(alpha + 2 beta\)$

  + $cos\(2 alpha - beta\)$

  + $tan\[2\(alpha - beta\)\]$

+ 设方程 $x^2 -\(tan theta + cot theta\)x + 1 = 0$ 的一个根是 $2 + sqrt(3)$⁠，求 $sin 2 theta$⁠．

+ 设 $tan theta$, $tan phi.alt$ 是方程 $7 x^2 + 8 x + 1 = 0$ 的二根，求 $tan frac(theta + phi.alt, 2)$ 的值．

+ 若 $tan^2 alpha - a tan alpha + 1 = 0\,quad\(a > 0\)$⁠，求 $cos 2 alpha$⁠．

  + 当 $0 degree < alpha < 45 degree$

  + 当 $45 degree < alpha < 90 degree$

+ 如图1.5, 半径为 $R$ 的圆木料，要截成横截面为长方形的木料，问怎样截取，才可以使长方形截面的面积最大？

  #figure([#fig("1-05");

    ],
    caption: [
    ]
  )

+ 直角三角形的面积为12, 一锐角为 $beta$, 求它的外接圆面积，又当 $beta$ 是多少度时？外接圆面积最小．

+ 设 $sin alpha + cos alpha = 1 / 5$, 求 $sin 2 alpha$, $sin alpha$, $cos alpha$, $cos alpha / 2$, $sin alpha / 2$⁠．

+ #lead-list(none, 2)[
  + 已知 $cos alpha = 119 / 169$⁠，求 $sin alpha / 2$, $cos alpha / 2$ 和 $tan alpha / 2$⁠．

  + 已知 $cos phi.alt = 1 / 3$⁠，且 $phi.alt in\(270 degree\,360 degree\)$⁠，求 $sin phi.alt / 2$, $cos phi.alt / 2$ 及 $tan phi.alt / 2$⁠．
  ]

+ 已知 $cos alpha = 4 / 5$⁠，且 $frac(3 pi, 2) < alpha < 2 pi$⁠，求 $tan alpha / 2$⁠．

+ 已知，等腰三角形顶角的余弦等于 $7 / 25$, 求底角的正弦、余弦和正切．

+ #lead-list(none, 2)[
  + 已知 $tan alpha = 4 / 5$, $180 degree < alpha < 270 degree$⁠．求 $tan alpha / 2$, $sin 2 alpha$, $cos 2 alpha$, $tan 2 alpha$⁠．

  + 已知 $2 sin x + 3 cos x = 2$, 求 $sin x$ 和 $cos x$ 的值．
  ]

+ 求证：

  + $(sin x / 2 - cos x / 2)^2 = 1 - sin x$

  + $tan alpha - cot alpha = - 2 cot 2 alpha$

  + $tan (alpha + pi / 4) + tan (alpha - pi / 4) = 2 tan 2 alpha$

  + $sin theta + cos theta = frac(1 + sin 2 theta, sin theta + cos theta)$

  + $sin alpha\(1 + cos 2 alpha\)= sin 2 alpha dot.op cos alpha$

  + $2 sin (pi / 4 + x) sin (pi / 4 - x) = cos 2 x$

  + $frac(1 + tan alpha, 1 - tan alpha) = frac(1 + sin 2 alpha, cos^2 alpha - sin^2 alpha)$

  + $frac(1 + sin 2 theta - cos 2 theta, 1 + sin 2 theta + cos 2 theta) = tan theta$

  + $frac(2 sin x - sin 2 x, 2 sin x + sin 2 x) = tan^2 x / 2$

  + $frac(tan alpha / 2, 1 + tan alpha / 2) + frac(tan alpha / 2, 1 - tan alpha / 2) = tan alpha$

+ 利用 $45 degree$, $30 degree$ 的三角函数值，求 $cos 22 degree 30'$\; $sin 22 degree 30'$\; $cos 15 degree$, $sin 15 degree$ 的值．

+ #lead-list(none, 2)[
  + 求 $sin 18 degree$ 的值；

  + 求证 $cos 36 degree - cos 72 degree = 1 / 2$⁠．
  ]

+ 求证：

  + $sin pi / 8 = 1 / 2 sqrt(2 - sqrt(2))$

  + $tan 67.5 degree = sqrt(2) + 1$

  + $tan 7 degree 30' = sqrt(6) - sqrt(3) + sqrt(2) - 2$

+ 证明下列恒等式

  + $2 sin theta + sin 2 theta = 4 sin theta dot.op cos^2 theta / 2$

  + $tan 15 degree + cot 15 degree = 4$

  + $csc^2 alpha - 2 = cos 2 alpha dot.op csc^2 alpha$

  + $sin\(n pi + x\)cos\(n pi - x\)= 1 / 2 sin 2 x\,quad\(n in bb(Z)\)$

  + $cos alpha\(cos alpha - cos beta\)+ sin alpha\(sin alpha - sin beta\)= 2 sin^2 frac(alpha - beta, 2)$

  + $frac(cos alpha, sec alpha / 2 + csc alpha / 2) = 1 / 2 sin alpha (cos alpha / 2 - sin alpha / 2)$

  + $cos^4 theta = 1 / 4 + 1 / 2 cos 2 theta + 1 / 4 cos^2 2 theta$

  + $sin^4 theta = 3 / 8 - 1 / 2 cos 2 theta + 1 / 8 cos 4 theta$

+ 求证下列条件等式：

  + 若 $tan x = b / a$⁠，则 $a cos 2 x + b sin 2 x = a$

  + 若 $tan alpha / 2 = m / n$⁠，则 $sin alpha + m / n cos alpha = 1$

  + 若 $1 + 2 tan^2 x = tan^2 y$⁠，则 $sin^2 x + cos 2 y = 0$

  + 若 $x + y = 3 - cos 4 alpha$, $x - y = 4 sin 2 alpha$⁠，则 $x^(tfrac(1, 2)) + y^(tfrac(1, 2)) = 2$

  + 若 $2 alpha + beta = pi / 2$⁠，则 $ sin alpha = sqrt(frac(1 - sin beta, 2))\,#h(2em) cos alpha = sqrt(frac(1 + sin beta, 2)) $

== 三角函数的和差化积与积化和差
=== 三角函数的和差化积
根据两角和差的正弦函数的定理有：$ sin\(x + y\) & = sin x cos y + cos x sin y\
sin\(x - y\) & = sin x cos y - cos x sin y $

由这两个等式左、右两端相加和相减得：

#numbered-align(($sin\(x + y\)+ sin\(x - y\)$, $eqph = 2 sin x cos y$, true), ($sin\(x + y\)- sin\(x - y\)$, $eqph = 2 cos x sin y$, true));

#noindent;设 $x + y = alpha$, $x - y = beta$, 那么#numbered-eq($ x = frac(alpha + beta, 2)\,#h(2em) y = frac(alpha - beta, 2) $);

因此，上面两个等式 (1.25) 和 (1.26) 就变成

#numbered-align(($sin alpha + sin beta$, $eqph = 2 sin frac(alpha + beta, 2) cos frac(alpha - beta, 2)$, [(I)]), ($sin alpha - sin beta$, $eqph = 2 cos frac(alpha + beta, 2) sin frac(alpha - beta, 2)$, [(II)]));

#noindent;根据两角和差的余弦函数的定理有：$ cos\(x + y\) & = cos x cos y - sin x sin y\
cos\(x - y\) & = cos x cos y + sin x sin y $ #noindent;由这两个等式左、右两端相加和相减得：

#numbered-align(($cos\(x + y\)+ cos\(x - y\)$, $eqph = 2 cos x cos y$, true), ($cos\(x + y\)- cos\(x - y\)$, $eqph = - 2 sin x sin y$, true));

#noindent;以等式 (1.27) 代入上式得：

#numbered-align(($cos alpha + cos beta$, $eqph = 2 cos frac(alpha + beta, 2) cos frac(alpha - beta, 2)$, [(III)]), ($cos alpha - cos beta$, $eqph = - 2 sin frac(alpha + beta, 2) sin frac(alpha - beta, 2)$, [(IV)]));

利用上面得到的四个公式；即

#blk[和差化积公式][
#numbered-align(($sin alpha + sin beta$, $eqph = 2 sin frac(alpha + beta, 2) cos frac(alpha - beta, 2)$, [(I)]), ($sin alpha - sin beta$, $eqph = 2 cos frac(alpha + beta, 2) sin frac(alpha - beta, 2)$, [(II)]), ($cos alpha + cos beta$, $eqph = 2 cos frac(alpha + beta, 2) cos frac(alpha - beta, 2)$, [(III)]), ($cos alpha - cos beta$, $eqph = - 2 sin frac(alpha + beta, 2) sin frac(alpha - beta, 2)$, [(IV)]));

]
可以把某些三角函数的和或差化成积的形式．

#example[
把下列各式化成积的形式

#cols(2)[
+ $1 + sin alpha$

+ $1 - 2 sin alpha$

+ $sin pi / 5 + cos pi / 5$

+ $cos 22 degree - sin 66 degree$

]
]
#solution[
+ 方法1: $ 1 + sin alpha & = sin 90 degree + sin alpha\
   & = 2 sin frac(90 degree + alpha, 2) cos frac(90 degree - alpha, 2)\
   & = 2 sin (45 degree + alpha / 2) cos (45 degree - alpha / 2)\
   & = 2 sin^2 (45 degree + alpha / 2) = 2 cos^2 (45 degree - alpha / 2) $

  方法2: $ 1 + sin alpha & = 1 + cos\(90 degree - alpha\)\
   & = 2 cos^2 (45 degree - alpha / 2) $

+ #h(0pt)
  $ 1 - 2 sin alpha & = 2 (1 / 2 - sin alpha)\
   & = 2\(sin 30 degree - sin alpha\)\
   & = 2 times 2 cos frac(30 degree + alpha, 2) sin frac(30 degree - alpha, 2)\
   & = 4 cos (15 degree + alpha / 2) sin (15 degree - alpha / 2) $

+ #h(0pt)
  $ sin pi / 5 + cos pi / 5 & = cos (pi / 2 - pi / 5) + cos pi / 5\
   & = cos frac(3 pi, 10) + cos pi / 5\
   & = 2 cos frac(frac(3 pi, 10) + frac(2 pi, 10), 2) cos frac(frac(3 pi, 10) - frac(2 pi, 10), 2)\
   & = 2 cos pi / 4 cos pi / 20\
   & = sqrt(2) cos pi / 20 $

+ #h(0pt)
  $ cos 22 degree - sin 66 degree & = cos 22 degree - cos\(90 degree - 66 degree\)\
   & = cos 22 degree - cos 24 degree\
   & = - 2 sin (46 degree) / 2 sin (- (2 degree) / 2)\
   & = 2 sin 23 degree sin 1 degree $

]
#example[
把 $sin^2 alpha - sin^2 beta$ 化为乘积形式．

]
#solution[
方法1: $ sin^2 alpha - sin^2 beta & =\(sin alpha + sin beta\)\(sin alpha - sin beta\)\
 & = (2 sin frac(alpha + beta, 2) cos frac(alpha - beta, 2)) (2 cos frac(alpha + beta, 2) sin frac(alpha - beta, 2))\
 & = (2 sin frac(alpha + beta, 2) cos frac(alpha + beta, 2)) (2 sin frac(alpha - beta, 2) cos frac(alpha - beta, 2))\
 & = sin\(alpha + beta\)sin\(alpha - beta\) $

方法2: 利用公式 $sin^2 alpha = frac(1 - cos 2 alpha, 2)$ 进行替换，得到 $ sin^2 alpha - sin^2 beta & = frac(1 - cos 2 alpha, 2) - frac(1 - cos 2 beta, 2)\
 & = 1 / 2\(cos 2 beta - cos 2 alpha\)\
 & = 1 / 2 times\(- 2\)sin\(beta + alpha\)sin\(beta - alpha\)\
 & = sin\(alpha + beta\)sin\(alpha - beta\) $

]
#example[
引入辅助角把下面各式化为两角和的正弦函数．

+ $3 cos alpha + sqrt(3) sin alpha$

+ $3 cos alpha - sqrt(3) sin alpha$

+ $cos 2 x - 4 sin 2 x$

]
#solution[
+ #h(0pt)
  $ 3 cos alpha + sqrt(3) sin alpha & = sqrt(3) (sqrt(3) cos alpha + sin alpha)\
   & = 2 sqrt(3) (sqrt(3) / 2 cos alpha + 1 / 2 sin alpha)\
   & = 2 sqrt(3) (sin 60 degree cos alpha + cos 60 degree sin alpha)\
   & = 2 sqrt(3) sin\(60 degree + alpha\)= 2 sqrt(3) sin\(alpha + 60 degree\) $

  #figure([#fig("1-06");

    ],
    caption: [
    ]
  )

+ #h(0pt)
  $ 3 cos alpha - sqrt(3) sin alpha & = 2 sqrt(3) (sqrt(3) / 2 cos alpha - 1 / 2 sin alpha)\
   & = 2 sqrt(3) (sin 120 degree cos alpha + cos 120 degree sin alpha)\
   & = 2 sqrt(3) sin\(120 degree + alpha\)= 2 sqrt(3) sin\(alpha + 120 degree\) $

+ 配一个正系数 $k$⁠，使得 $ cos 2 x - 4 sin 2 x = k (1 / k cos 2 x - 4 / k sin 2 x) $ #noindent;并且引入一个辅助角 $theta$⁠，满足下面两个等式：$ sin theta = 1 / k\,#h(2em) cos theta = - 4 / k $ #noindent;$k$ 的值可由等式 $sin^2 theta + cos^2 theta = frac(1 +\(- 4\)^2, k^2) = 1$ 确定，于是有：$ k = sqrt(1 + 16) = sqrt(17) $ #noindent;于是 $sin theta = 1 / sqrt(17)$, $cos theta = - 4 / sqrt(17)$⁠．$theta$ 是第二象限角，它的值可由 $tan theta = - 1 / 4 = - 0.25$ 求出，得到 $ theta = 180 degree - 14 degree 2' = 165 degree 58' $ #noindent;因此：$ cos 2 x - 4 sin 2 x & = sqrt(17) (sin 165 degree 58' cos 2 x + cos 165 degree 58' sin 2 x)\
   & = sqrt(17) sin\(2 x + 165 degree 58'\) $

]
#example[
化 $a sin x + b cos x$ 为积的形式．

]
#analyze[
仿照例1.29可以引入一个辅助角 $theta$, 并配上一个正系数 $k$, 我们来分析如何确定 $k\,theta$:

假设 $a = k dot.op cos theta$, $b = k dot.op sin theta$, 原式就变为 $ a sin x + b cos x & = k\(sin x dot.op cos theta + cos x dot.op sin theta\)\
 & = k dot.op sin\(x + theta\) $

由于 $sin^2 theta + cos^2 theta = 1$, 因而 $(a / k)^2 + (b / k)^2 = 1$ $ therefore quad k = sqrt(a^2 + b^2) $ #noindent;于是就得出 $ cos theta = a / sqrt(a^2 + b^2)\,#h(2em) sin theta = b / sqrt(a^2 + b^2) $ #noindent;从而得 $ tan theta = b / a $ #noindent;这样，由 $a\,b$ 就可以确定 $k\,theta$ 的值了．

]
#solution[
$ a sin x + b cos x = sqrt(a^2 + b^2) (a / sqrt(a^2 + b^2) sin x + b / sqrt(a^2 + b^2) cos x) $ #noindent;令 $cos theta = a / sqrt(a^2 + b^2)\,quad sin theta = b / sqrt(a^2 + b^2)$⁠，则 $ upright("原式") & = sqrt(a^2 + b^2)\(cos theta dot.op sin x + sin theta dot.op cos x\)\
 & = sqrt(a^2 + b^2) sin\(x + theta\) $ #noindent;其中，$theta$ 角所在的象限由 $a\,b$ 的符号确定，$theta$ 角的值由 $tan theta = b / a$ 确定．

]
#example[
若 $A + B + C = 180 degree$, 求证 $sin 2 A + sin 2 B + sin 2 C = 4 sin A sin B sin C$

]
#proof[
#numbered-align(($$, $quad sin 2 A + sin 2 B + sin 2 C$, false), ($$, $eqph = 2 sin\(A + B\)cos\(A - B\)+ 2 sin C cos C$, false), ($$, $eqph = 2 sin C cos\(A - B\)+ 2 sin C cos C$, [($sin\(A + B\)= sin C$)]), ($$, $eqph = 2 sin C\[cos\(A - B\)+ cos C\]$, false), ($$, $eqph = 2 sin C\[cos\(A - B\)- cos\(A + B\)\]$, [($cos C = - cos\(A + B\)$)]), ($$, $eqph = 2 sin C\[- 2 sin A sin\(- B\)\]$, false), ($$, $eqph = 4 sin A sin B sin C$, false));

]
#rmk[
在证明满足条件 $A + B + C = 180 degree$ 的三个角 $A$⁠、$B$⁠、$C$ 的三角函数恒等式时，要特别注意互为余角与互为补角的三角函数的性质，例如：从任何两个角的和是第三个角的补角这一类关系，得到 $ sin\(B + C\)= sin A\,#h(2em) cos\(A + B\)= - cos C\,#h(2em) tan\(C + A\)= - tan B\
cos B = - cos\(C + A\)\,#h(2em) sin C = sin\(A + B\)\,#h(2em) cot A = - cot\(B + C\) $

又从任何两个角的和的一半是第三个角的一半的余角这一关系得到 $ cos frac(A + B, 2) = sin C / 2\,#h(2em) sin frac(C + A, 2) = cos B / 2\,#h(2em) tan frac(B + C, 2) = cot A / 2\
cos C / 2 = sin frac(A + B, 2)\,#h(2em) sin A / 2 = cos frac(B + C, 2)\,#h(2em) tan B / 2 = cot frac(C + A, 2) $

]
#example[
把 $1 + sin theta + cos theta$ 化成积的形式．

]
#solution[
$ 1 + sin theta + cos theta & =\(1 + cos theta\)+ sin theta\
 & = 2 cos^2 theta / 2 + 2 sin theta / 2 dot.op cos theta / 2\
 & = 2 cos theta / 2 (cos theta / 2 + sin theta / 2)\
 & = 2 cos theta / 2 [sin (90 degree - theta / 2) + sin theta / 2]\
 & = 2 cos theta / 2 dot.op 2 sin 45 degree dot.op cos (45 degree - theta / 2)\
 & = 2 sqrt(2) cos theta / 2 dot.op cos (45 degree - theta / 2) $

]
#exercise[
+ #block(sticky: true)[把下列各式化为积的形式（口答）]

  #cols(2)[
  + $sin 24 degree + sin 20 degree$

  + $sin 75 degree - sin 15 degree$

  + $cos 3 x + cos 2 x$

  + $cos frac(alpha + beta, 2) - cos frac(alpha - beta, 2)$

  ]

+ 求值：

  + $frac(sin 20 degree - sin 40 degree, cos 20 degree - sin 40 degree)$

  + $sin 20 degree + sin 40 degree - sin 80 degree$

+ 求证：

  + $frac(sin alpha + sin beta, sin alpha - sin beta) = tan frac(alpha + beta, 2) dot.op cot frac(alpha - beta, 2)$

  + $frac(sin x + sin y, cos x - cos y) = cot frac(y - x, 2)$

  + $cos 2 A + cos 2 B + cos 2 C = - 1 - 4 cos A dot.op cos B dot.op cos C$⁠，其中 $A + B + C = pi$

+ #block(sticky: true)[将下列各式化为两角和（差）的三角函数：]

  #cols(2)[
  + $sqrt(3) / 2 sin x + 1 / 2 cos x$

  + $sqrt(2) / 2 cos x - sqrt(2) / 2 sin x$

  + $sqrt(2) cos x + sqrt(2) sin x$

  + $cos theta - sqrt(3) sin theta$

  + $4 sin alpha + 3 cos alpha$

  + $3 cos beta - sqrt(7) sin beta$

  ]

]
=== 三角函数的积化和差
将公式 (1.25)、(1.26)、(1.28)、(1.29) 的两边同除以2，便得到如下公式：

#blk[积化和差公式][
#numbered-align(($sin x dot.op cos y$, $eqph = 1 / 2\[sin\(x + y\)+ sin\(x - y\)\]$, [(V)]), ($cos x dot.op sin y$, $eqph = 1 / 2\[sin\(x + y\)- sin\(x - y\)\]$, [(VI)]));

#numbered-align(($cos x dot.op cos y$, $eqph = 1 / 2\[cos\(x + y\)+ cos\(x - y\)\]$, [(VII)]), ($sin x dot.op sin y$, $eqph = - 1 / 2\[cos\(x + y\)- cos\(x - y\)\]$, false), ($$, $eqph = 1 / 2\[cos\(x - y\)- cos\(x + y\)\]$, [(VIII)]));

]
若 $x = y$⁠，由此可推出倍角公式，即有 $ sin x cos x = 1 / 2 sin 2 x\,#h(2em) cos^2 x = 1 / 2\(1 + cos 2 x\)\,#h(2em) sin^2 x = 1 / 2\(1 - cos 2 x\) $

#example[
化乘积 $sin 35 degree cos 55 degree$ 为和的形式．

]
#solution[
解法1: $ sin 35 degree cos 55 degree = 1 / 2\[sin 90 degree + sin\(- 20 degree\)\]= 1 / 2\[1 - sin 20 degree\] $

解法2: $ sin 35 degree cos 55 degree = sin^2 35 degree = frac(1 - cos 70 degree, 2) = frac(1 - sin 20 degree, 2) $

]
#example[
不查表，求下列各式的值：

+ $sin frac(5 pi, 12) dot.op cos pi / 12$

+ $cos^2 73 degree + cos^2 47 degree + cos 73 degree cos 47 degree$

]
#solution[
+ 解法1: $ sin frac(5 pi, 12) dot.op cos pi / 12 & = 1 / 2 [sin pi / 2 + sin pi / 3]\
   & = 1 / 2 + sqrt(3) / 4 = 1 / 4\(2 + sqrt(3)\) $

  解法2: $ sin frac(5 pi, 12) dot.op cos pi / 12 & = cos pi / 12 dot.op cos pi / 12\
   & = cos^2 pi / 12 = 1 / 2 (1 + cos pi / 6)\
   & = 1 / 2 (1 + sqrt(3) / 2) = 1 / 4 (2 + sqrt(3)) $

+ #h(0pt)
  $ upright("原式") & = frac(1 + cos 146 degree, 2) + frac(1 + cos 94 degree, 2) + frac(cos 120 degree + cos 26 degree, 2)\
   & = 1 + frac(cos 146 degree + cos 94 degree, 2) - 1 / 4 + frac(cos 26 degree, 2)\
   & = 3 / 4 + frac(2 cos 120 degree cos 26 degree, 2) + frac(cos 26 degree, 2)\
   & = 3 / 4 - frac(cos 26 degree, 2) + frac(cos 26 degree, 2)\
   & = 3 / 4 $

]
#example[
化简 $cos alpha dot.op cos 2 alpha dot.op cos 4 alpha$ 并求 $cos pi / 7 cos frac(2 pi, 7) cos frac(4 pi, 7)$ 的值．

]
#solution[
$ cos alpha dot.op cos 2 alpha dot.op cos 4 alpha & = frac(2 sin alpha dot.op cos alpha dot.op cos 2 alpha dot.op cos 4 alpha, 2 sin alpha)\
 & = frac(sin 2 alpha dot.op cos 2 alpha dot.op cos 4 alpha, 2 sin alpha)\
 & = frac(sin 4 alpha dot.op cos 4 alpha, 2^2 sin alpha)\
 & = frac(sin 8 alpha, 2^3 sin alpha) = frac(sin 8 alpha, 8 sin alpha) $ #noindent;$ cos pi / 7 cos frac(2 pi, 7) cos frac(4 pi, 7) = frac(sin frac(8 pi, 7), 8 sin pi / 7) = frac(- sin pi / 7, 8 sin pi / 7) = - 1 / 8 $

]
#example[
求证：

+ $sin 15 degree dot.op sin 30 degree dot.op sin 75 degree = 1 / 8$

+ $cos 10 degree dot.op cos 30 degree dot.op cos 50 degree dot.op cos 70 degree = 3 / 16$

]
#proof[
+ 证法1: $ upright("左边") & = 1 / 2 sin 15 degree dot.op sin 75 degree\
   & = - 1 / 4\[cos 90 degree - cos\(- 60 degree\)\]\
   & = - 1 / 4\(0 - cos 60 degree\)\
   & = - 1 / 4 (- 1 / 2) = 1 / 8 = upright("右边") $

  证法2: $ upright("左边") & = 1 / 2 sin 15 degree dot.op sin 75 degree\
   & = 1 / 2 sin 15 degree dot.op cos 15 degree\
   & = 1 / 4 sin 30 degree = 1 / 8 = upright("右边") $

+ #h(0pt)
  $ upright("左边") & = cos 10 degree dot.op sqrt(3) / 2 dot.op 1 / 2\[cos 120 degree + cos\(- 20 degree\)\]\
   & = sqrt(3) / 4 cos 10 degree (- 1 / 2 + cos 20 degree)\
   & = - sqrt(3) / 8 cos 10 degree + sqrt(3) / 4 cos 10 degree dot.op cos 20 degree\
   & = - sqrt(3) / 8 cos 10 degree + sqrt(3) / 8\[cos 30 degree + cos 10 degree\]\
   & = - sqrt(3) / 8 cos 10 degree + sqrt(3) / 8 dot.op sqrt(3) / 2 + sqrt(3) / 8 cos 10 degree\
   & = 3 / 16 = upright("右边") $

]
#example[
求证：$cos^3 2 alpha = sin 3 alpha dot.op sin^3 alpha + cos 3 alpha dot.op cos^3 alpha$

]
#proof[
$ upright("右边") & = sin^2 alpha\(sin 3 alpha dot.op sin alpha\)+ cos^2 alpha\(cos 3 alpha dot.op cos alpha\)\
 & = 1 / 2 #scale(x: 120%, y: 120%)[$\[$] sin^2 alpha\(cos 2 alpha - cos 4 alpha\)+ cos^2 alpha\(cos 4 alpha + cos 2 alpha\)#scale(x: 120%, y: 120%)[$\]$]\
 & = 1 / 2 #scale(x: 120%, y: 120%)[$\[$] cos 2 alpha\(sin^2 alpha + cos^2 alpha\)+ cos 4 alpha\(cos^2 alpha - sin^2 alpha\)#scale(x: 120%, y: 120%)[$\]$]\
 & = 1 / 2 #scale(x: 120%, y: 120%)[$\[$] cos 2 alpha + cos 4 alpha dot.op cos 2 alpha #scale(x: 120%, y: 120%)[$\]$]\
 & = 1 / 2 cos 2 alpha\(1 + cos 4 alpha\)\
 & = 1 / 2 cos 2 alpha dot.op 2 cos^2 2 alpha\
 & = cos^3 2 alpha = upright("左边") $

]
#example[
已知在 $triangle.stroked.t A B C$ 中，$sin B dot.op sin C = cos^2 A / 2$⁠．求证这个三角形是等腰三角形．

]
#proof[
由于 $sin B dot.op sin C = cos^2 A / 2 = frac(1 + cos A, 2)$ 且 $A = pi -\(B + C\)$, $cos A = - cos\(B + C\)$, 因而就有 $ sin B dot.op sin C = 1 / 2\[1 - cos\(B + C\)\] $ #noindent;所以 $ - 1 / 2\[cos\(B + C\)- cos\(B - C\)\]= 1 / 2\[1 - cos\(B + C\)\] $ #noindent;化简上式，得 $cos\(B - C\)= 1$⁠．

又由 $- 180 degree < B - C < 180 degree$⁠，所以 $B - C = 0 degree$⁠，即 $B = C$⁠，这证明了 $triangle.stroked.t A B C$ 是等腰三角形．

]
#example[
若 $A + B + C = pi$, 求证：$ cos A / 2 + cos B / 2 + cos C / 2 = 4 cos frac(pi - A, 4) cos frac(pi - B, 4) cos frac(pi - C, 4) $

]
#proof[
$  & quad 4 cos frac(pi - A, 4) cos frac(pi - B, 4) cos frac(pi - C, 4)\
 & = 2 cos frac(pi - A, 4) [cos frac(2 pi -\(B + C\), 4) + cos frac(B - C, 4)]\
 & = 2 cos frac(pi - A, 4) cos frac(pi + A, 4) + 2 cos frac(pi - A, 4) cos frac(B - C, 4)\
 & = (cos pi / 2 + cos A / 2) + 2 cos frac(B + C, 4) cos frac(B - C, 4)\
 & = cos A / 2 + cos B / 2 + cos C / 2 $

]
#exercise[
+ #block(sticky: true)[先将各式化为和差形式，再查表求值：]

  #cols(2)[
  + $2 sin 70 degree dot.op cos 20 degree$

  + $cos 80 degree dot.op sin 120 degree$

  + $cos 68 degree dot.op cos 52 degree$

  + $sin 121 degree dot.op sin 50 degree$

  ]

+ 不查表求值：

  + $sin 105 degree dot.op cos 75 degree$

  + $2 cos 37.5 degree dot.op cos 22.5 degree$

  + $2 cos frac(9 pi, 13) dot.op cos pi / 13 + cos frac(5 pi, 13) + cos frac(3 pi, 13)$

  + $sin^2 10 degree + cos^2 40 degree + sin 10 degree dot.op cos 40 degree$

+ 求证：

  + $2 sin (pi / 3 + x) dot.op cos (pi / 3 - x) = sqrt(3) / 2 + sin 2 x$

  + $sin 20 degree dot.op cos 70 degree + sin 10 degree dot.op sin 50 degree = 1 / 4$

  + $cos 2 alpha dot.op cos alpha - sin 5 alpha dot.op sin 2 alpha = cos 4 alpha dot.op cos 3 alpha$

  + $cos 4 x dot.op cos 2 x - cos^2 3 x = - sin^2 x$

  + $tan (x + pi / 4) + tan (x - pi / 4) = 2 tan 2 x$

]
#heading(level: 2, numbering: none, supplement: [toc-sub])[习题1.3]

+ #block(sticky: true)[将函数的和化为乘积形式]

  #cols(2)[
  + $sin 12 degree + sin 20 degree$

  + $sin 40 degree - sin 16 degree$

  + $cos 50 degree + cos 30 degree$

  + $cos 17 degree - cos 13 degree$

  + $sin 24 degree + cos 55 degree$

  + $sin pi / 5 - cos frac(2 pi, 5)$

  + $tan 10 degree + tan 20 degree$

  + $tan 12 degree - cot 40 degree$

  + $tan alpha + cot alpha$

  + $cos alpha - sin alpha$

  ]

+ #block(sticky: true)[化函数的和式为乘积]

  #cols(2)[
  + $cos^2 alpha - cos^2 beta$

  + $tan^2 alpha - tan^2 beta$

  + $1 + sin alpha + cos alpha$

  + $sin 16 degree + sin 24 degree + sin 40 degree$

  + $sin alpha + sin 2 alpha + sin 3 alpha$

  + $sin^2 x - sin^2 y$

  ]

+ 化简下面式子

  + $I sin omega t + I sin (omega t + frac(2 pi, 3)) + I sin (omega t - frac(2 pi, 3))$

  + $cos^2 3 + cos^2 1 - cos 4 dot.op cos 2$

  + $sec (pi / 4 + alpha) dot.op sec (pi / 4 - alpha)$

  + $frac(tan (45 degree + x) - tan (45 degree - x), tan (45 degree + x) + tan (45 degree - x))$

  + $frac(sin alpha + sin 3 alpha + sin 5 alpha, cos alpha + cos 3 alpha + cos 5 alpha)$

+ #block(sticky: true)[引入辅助角将下面式子化为乘积形式：]

  #cols(2)[
  + $1 + sin alpha$

  + $sqrt(3) / 2 - sin alpha$

  + $sqrt(2) / 2 + cos alpha$

  + $3 / 4 - sin^2 alpha$

  + $1 / 4 - cos^2 alpha$

  + $3 - tan^2 alpha$

  + $sqrt(3) + 2 cos alpha$

  + $sqrt(3) / 2 sin x - 1 / 2 cos x$

  + $4 sin x - 3 cos x$

  + $7 sin 2 t - 6 cos 2 t$

  ]

+ #block(sticky: true)[不查表，计算下面各式的值]

  #cols(2)[
  + $sin 52 degree 30' cos 7 degree 30'$

  + $cos 97 degree 30' sin 37 degree 30'$

  + $2 cos 165 degree cos 135 degree$

  + $tan 10 degree dot.op tan 50 degree dot.op tan 70 degree$

  + $cos 20 degree cos 40 degree cos 60 degree cos 90 degree$

  + $cos 20 degree + cos 100 degree + cos 140 degree$

  + $sin 20 degree sin 40 degree sin 60 degree sin 80 degree$

  ]
  #block[
  #set enum(numbering: enum-at(2, none, start: 8))
  + $cos 40 degree dot.op cos 80 degree dot.op cos 160 degree + cos 160 degree dot.op cos 40 degree$
  ]

+ 化简下列各式

  + $2 sin 2 alpha sin alpha + cos 3 alpha$

  + $2 cos frac(9 pi, 13) cos pi / 13 + cos frac(5 pi, 13) + cos frac(3 pi, 13)$

+ 证明下列各等式：

  + $frac(sin A + sin 3 A + sin 5 A, sin 3 A + sin 5 A + sin 7 A) = frac(sin 3 A, sin 5 A)$

  + $frac(sin x - sin y, sin\(x + y\)) = frac(sin 1 / 2\(x - y\), sin 1 / 2\(x + y\))$

  + $frac(cos\(alpha - beta\), cos\(alpha + beta\)) = frac(cos 2 alpha + cos 2 beta, 1 + cos 2\(alpha + beta\))$

  + $sin alpha / 2 dot.op sin frac(7 alpha, 2) + sin frac(3 alpha, 2) dot.op sin frac(11 alpha, 2) = sin 2 alpha dot.op sin 5 alpha$

  + $\(sin x + cos x\)\(sin 2 x + cos 2 x\)= sin 3 x + cos x$

+ 若 $A + B + C = pi$⁠，求证：

  + $cos A + cos B + cos C = 1 + 4 sin A / 2 sin B / 2 sin C / 2$

  + $sin^2 A / 2 + sin^2 B / 2 + sin^2 C / 2 = 1 - 2 sin A / 2 sin B / 2 sin C / 2$

  + $tan A + tan B + tan C = tan A tan B tan C$

  + $tan A / 2 tan B / 2 + tan B / 2 tan C / 2 + tan C / 2 tan A / 2 = 1$

+ 若一三角形的边和角适合条件：$ \(a^2 + b^2\)sin\(A - B\)=\(a^2 - b^2\)sin\(A + B\) $ #noindent;试证：此三角形为直角三角形或等腰三角形．

  提示：用正弦定理 $frac(a, sin A) = frac(b, sin B) = frac(c, sin C) = 2 R$

+ 若 $A$⁠、$B$⁠、$C$⁠、$D$ 均在0与 $pi$ 之间，求证：

  + $sin frac(A + B, 2) gt.eq 1 / 2\(sin A + sin B\)$

  + $sin frac(A + B + C + D, 4) gt.eq 1 / 4\(sin A + sin B + sin C + sin D\)$

  + $sin frac(A + B + C, 3) gt.eq 1 / 3\(sin A + sin B + sin C\)$

  #noindent;提示：在 (b) 中令 $D = frac(A + B + C, 3)$ 推导出 (c)．

+ #block(sticky: true)[求下列各式的最大值与最小值：]

  #cols(2)[
  + $sin x dot.op cos x$

  + $sin (alpha + pi / 4) + sin (alpha - pi / 4)$

  + $cos (pi / 3 + 2 theta) sin (pi / 3 - 2 theta)$

  + $6 cos x + 8 sin x$

  ]

#fig-center[
附三角函数公式表：

#fig("1-07");

]
== 简单三角方程
在初中我们曾经学习过这样的问题：已知三角函数值求角．如，已知 $sin x = 1 / 2$, 求 $x$ 的值，像这样条件等式 $sin x = 1 / 2$ 的样子，我们把#strong[含有未知数的三角函数的等式，叫做三角方程]．例如：$sin x - 1 = - 1 / 2$, $2 sin^2 x + 3 cos x = 0$, $sin 5 x = cos 4 x$, 等等都是三角方程．

解三角方程就是求出未知数的一切能适合于方程的值，或证明方程无解．

三角方程的一般理论和解法，留待以后学习，本节仅就几种特殊类型的简单三角方程的具体解法加以讨论．

=== 最简单的三角方程
三角方程中，$sin x = a$, $cos x = a$, $tan x = a$, $cot x = a$ 就叫做最简单的三角方程．它们的求解是其他三角方程求解的基础．

最简单的三角方程求解的方法是相同的，正像在初中已经学过的那样：首先求出，已知方程在 $0 lt.eq x < 2 pi$ 区间内的解，如果这个区间内有两个解：$x = alpha_1$ 和 $x = alpha_2$, 那么原方程的所有解就是 $x = alpha_1 + 2 k pi$ 和 $x = alpha_2 + 2 k pi quad\(k in bb(Z)\)$\; 如果在这个区间内只有一个解：$x = alpha$, 那么原方程的解就是 $x = alpha + 2 k pi$\; 如果在这个区间没有解，那么原方程也没有解．可见，最简单的三角方程或有无限多解，或没有解．

#example[
解方程 $sin x = 1 / 2$⁠．

]
#solution[
已知在 $\(0\,2 pi\)$ 内解为 $x = pi / 6$ 和 $x = frac(5 pi, 6)$, 所以方程的解集为 $ lr(\{ x #scale(x: 180%, y: 180%)[$\|$] x = pi / 6 + 2 k pi \}) union.big lr(\{ x #scale(x: 180%, y: 180%)[$\|$] x = frac(5 pi, 6) + 2 k pi \}) $

]
#example[
解方程 $cos x = 0$

]
#solution[
已知在 $\(0\,2 pi\)$ 内，$x = pi / 2$ 和 $x = frac(3 pi, 2)$⁠，所以方程的解为 $  & quad lr(\{ x #scale(x: 180%, y: 180%)[$\|$] x = pi / 2 + 2 k pi \}) union.big lr(\{ x #scale(x: 180%, y: 180%)[$\|$] x = frac(3 pi, 2) + 2 k pi = pi / 2 + \( 2 k + 1 \) pi \})\
 & = lr(\{ x #scale(x: 180%, y: 180%)[$\|$] x = pi / 2 + k pi \, quad k in bb(Z) \}) $

]
#example[
解方程 $sin x = - 1$

]
#solution[
解集为 $lr(\{ x #scale(x: 180%, y: 180%)[$\|$] x = frac(3 pi, 2) + 2 k pi \, quad k in bb(Z) \})$

]
#example[
解方程 $cos x = 2$

]
#solution[
由于任意角 $alpha$ 的余弦具有性质 $\|cos alpha\|lt.eq 1$, 因此，方程 $cos x = 2$ 无解，即解集为 $nothing$.

]
#example[
解方程 $tan x = sqrt(3) / 2$

]
#solution[
由查表可知在 $\[0\,2 pi\)$ 内，$x = 40 degree 54'$ 和 $x = 220 degree 54'$⁠．所以方程的解为 $  & quad lr(\{ x #scale(x: 180%, y: 180%)[$\|$] x = 40 degree 54' + k dot.op 360 degree \}) union lr(\{ x #scale(x: 180%, y: 180%)[$\|$] x = 220 degree 54' + k dot.op 360 degree \})\
 & = lr(\{ x #scale(x: 180%, y: 180%)[$\|$] x = 40 degree 54' + k dot.op 180 degree \, thick k in bb(Z) \}) $

]
一般地，可以概括出：

- 方程 $sin x = a$ 与 $cos x = a$, 当 $\|a\|lt.eq 1$ 时有解；当 $\|a\|> 1$ 时无解；

- 方程 $tan x = a$ 与 $cot x = a$⁠，当 $a$ 为任意实数时，都有解．

#exercise[
解下列最简单三角方程

#cols(2)[
+ $sin x = - sqrt(3) / 2$

+ $sin x = 0$

+ $cos x = - 1$

+ $cos x = sqrt(2) / 2$

+ $tan x = 0.5$

+ $cot x = - 2.3016$

+ $sqrt(2) sin x + 1 = 0$

+ $tan x = 2 sqrt(2) - 1$

]
]
=== 简单的三角方程
有几类特殊而简单的三角方程，可以通过三角恒等变形或利用代数中解方程的方法，将它们化成一个或几个最简单的三角方程，从而求出它们的解集．

#example[
解方程

#cols(2)[
+ $2 cos 2 x = 1$

+ $tan\(x + 15 degree\)+ 1 = 0$

+ $sqrt(2) sin\(3 x - 9 degree\)= sqrt(2) / 2$

+ $cos^2 x - 4 cos x + 2 = 0$

]
]
#analyze[
这几个三角方程的共同特点是：只含有同一个未知数的同名三角函数．因此可以将这个含有未知数的三角函数视为一元，用代数方法先求出它的值，从而归结为最简单的三角方程求解．

]
#solution[
+ 原方程化为 $cos 2 x = 1 / 2$ $ 2 x = plus.minus pi / 3 + 2 k pi\,quad\(k in bb(Z)\) $ #noindent;所以解集是 $lr(\{ x #scale(x: 180%, y: 180%)[$\|$] x = plus.minus pi / 6 + k pi \, quad k in bb(Z) \})$

+ 原方程化为 $tan\(x + 15 degree\)= - 1$ $ x + 15 degree = - 45 degree + k dot.op 180 degree\,quad\(k in bb(Z)\) $ #noindent;所以解集是 $lr(\{ x #scale(x: 180%, y: 180%)[$\|$] x = - 60 degree + k dot.op 180 degree \, quad k in bb(Z) \})$

+ 原方程化为 $sin\(3 x - 9 degree\)= 1 / 2$ $ 3 x - 9 degree = 30 degree + k dot.op 360 degree\,quad 3 x - 9 degree = 150 degree + k dot.op 360 degree\,#h(2em)\(k in bb(Z)\) $ #noindent;所以解集为$ lr(\{ x #scale(x: 180%, y: 180%)[$\|$] x = 13 degree + k dot.op 120 degree \, quad k in bb(Z) \}) union lr(\{ x #scale(x: 180%, y: 180%)[$\|$] x = 53 degree + k dot.op 120 degree \, quad k in bb(Z) \}) $

+ 原方程是关于 $cos x$ 的二次方程，解这个方程，得 $ cos x = 2 + sqrt(2)\,#h(2em) cos x = 2 - sqrt(2) $ #noindent;因为 $2 + sqrt(2) > 1$, 所以 $cos x = 2 + sqrt(2)$ 无解；从 $cos x = 2 - sqrt(2)$, 可以解得：$x = plus.minus 54 degree 9' + k dot.op 360 degree$, $\(k in bb(Z)\)$⁠．

  所以原方程的解集是 $lr(\{ x #scale(x: 180%, y: 180%)[$\|$] x = plus.minus 54 degree 9' + k dot.op 360 degree \, quad k in bb(Z) \})$

]
#example[
解方程 $2 sin^2 x + 3 cos x = 0$⁠．

]
#analyze[
利用三角公式，可以化为只含同一个未知数的同名函数的三角方程求解．

]
#solution[
原方程化为 $2\(1 - cos^2 x\)+ 3 cos x = 0$⁠，即 $ 2 cos^2 x - 3 cos x - 2 = 0 $

解这个关于 $cos x$ 的二次方程，得

- $cos x = 2$⁠，它的解集为 $nothing$⁠；

- $cos x = - 1 / 2\,quad x = plus.minus frac(2 pi, 3) + 2 k pi\,quad\(k in bb(Z)\)$

#noindent;所以原方程的解集是 $lr(\{ x #scale(x: 180%, y: 180%)[$\|$] x = plus.minus frac(2 pi, 3) + 2 k pi \, quad k in bb(Z) \})$⁠．

]
#example[
解方程 $sin^2 x - frac(2 sqrt(3), 3) sin x dot.op cos x - cos^2 x = 0$⁠．

]
#analyze[
方程的每一项中，关于 $sin x$ 与 $cos x$ 的次数都相同（这里都是二次），我们叫做关于 $sin x$ 与 $cos x$ 的齐次方程，这种特点的方程可直接观察知道 $cos x = 0$ 的 $x$ 值，不会是方程的解、因此，这类方程可以两边同除以 $cos x$ 的某次幂而不会使方程增根或丢根的，这样就可以归结为含有未知数正切函数的方程求解了．

]
#solution[
原方程两边同除以 $cos^2 x$ 得：$tan^2 x - frac(2 sqrt(3), 3) tan x - 1 = 0$

解这个关于 $tan x$ 的二次方程，得

- $tan x = sqrt(3)\,#h(2em) x = pi / 3 + k pi\,quad\(k in bb(Z)\)$

- $tan x = - sqrt(3) / 3\,#h(2em) x = - pi / 6 + k pi\,quad\(k in bb(Z)\)$

#noindent;所以原方程的解集是 $ lr(\{ x #scale(x: 180%, y: 180%)[$\|$] x = pi / 3 + k pi \, quad k in bb(Z) \}) union.big lr(\{ x #scale(x: 180%, y: 180%)[$\|$] x = - pi / 6 + k pi \, quad k in bb(Z) \}) $

]
#example[
解方程 $sin x = 2 sin (pi / 3 - x)$

]
#solution[
由和角公式$ sin x = 2 (sin pi / 3 dot.op cos x - cos pi / 3 dot.op sin x) = sqrt(3) cos x - sin x $ #noindent;所以 $2 sin x = sqrt(3) cos x$⁠，两边同除以 $2 cos x$⁠，得 $ tan x = sqrt(3) / 2 approx 0.8660 $ #noindent;查表可得：$x = 40 degree 54' + k dot.op 180 degree quad\(k in bb(Z)\)$

所以原方程的解集是 $lr(\{ x #scale(x: 180%, y: 180%)[$\|$] x = 40 degree 54' + k dot.op 180 degree \, quad k in bb(Z) \})$

]
#example[
解方程 $sqrt(3) sin x = 6 / sqrt(3) cos^2 x / 2$

]
#solution[
利用倍角公式变形 $ 2 sqrt(3) sin x / 2 dot.op cos x / 2 - 6 / sqrt(3) cos^2 x / 2 = 0 $ #noindent;即：$cos x / 2 (sin x / 2 - cos x / 2) = 0$

所以，原方程可分解为下面两个方程解 $ cos x / 2 = 0\,#h(2em) sin x / 2 - cos x / 2 = 0 $

- 若 $cos x / 2 = 0$⁠，则 $x / 2 = plus.minus pi / 2 + 2 k pi$⁠，所以 $x = plus.minus pi + 4 k pi\,quad\(k in bb(Z)\)$

- 若 $sin x / 2 - cos x / 2 = 0$⁠，可变形为 $tan x / 2 = 1$⁠，则 $x / 2 = pi / 4 + k pi$⁠，所以 $x = pi / 2 + 2 k pi\,quad\(k in bb(Z)\)$

#noindent;因此原方程的解集是 $ lr(\{ x #scale(x: 180%, y: 180%)[$\|$] x = \( 4 k plus.minus 1 \) pi \, quad k in bb(Z) \}) union.big lr(\{ x #scale(x: 180%, y: 180%)[$\|$] x = pi / 2 + 2 k pi \, quad k in bb(Z) \}) $

]
#exercise[
解下列三角方程：

+ #lead-list(none, 2)[
  + $2 sin frac(2 x, 3) = 1$

  + $3 tan frac(x + 20 degree, 3) = sqrt(3)$
  ]

+ $sin^2 x - 2 sin x - 3 = 0$

+ $4 cos^2 x - 4 sin x = 1$

+ #lead-list(none, 2)[
  + $2 sin x - 5 cos x = 0$

  + $3 sin^2 x + 2 sin x cos x - 5 cos^2 x = 0$
  ]

+ #lead-list(none, 2)[
  + $sin x / 2 - sqrt(3) cos x / 4 = 0$

  + $4 cos x / 2 - 5 cos x = 5$
  ]

+ #lead-list(none, 2)[
  + $cos 3 x + cos 2 x = 0$

  + $6 sin x + 8 cos x = 5$
  ]

]
#heading(level: 2, numbering: none, supplement: [toc-sub])[习题1.4]

解下列三角方程：

#cols(2)[
+ $2 cos 2 x = 1$

+ $sin (x / 2 + pi / 6) = - sqrt(3) / 2$

+ $2 cos (x / 3 + 45 degree) = 1$

+ $tan 2 x - sqrt(3) = 0$

+ $1 / 2 cot 2\(x + 25 degree\)- 2 = 0$

+ $2 cos^2 x - 3 cos x + 1 = 0$

+ $sin^2 2 x = sin 2 x$

+ $3 sin x - 2 cos^2 x = 0$

+ $2 sin^2 x = 1$

+ $sin^2 x - 7 sin x dot.op cos x + 6 cos^2 x = 0$

+ $sin x dot.op cos x = 1 / 4$

+ $sin 3 x = sin x$

+ $3 sin^2 x - sin 2 x - cos^2 x = 0$

+ $sin 2 x = cos 3 x$

+ $sin (2 x + pi / 3) + sin (x - pi / 6) = 0$

+ $sin (x + pi / 6) + cos (x + pi / 6) = 0$

+ $5 cos 2 x + 2 sin 2 x = 0$

+ $cos^2 x - 3 sin^2 2 x = 0$

+ $sin x / 2 - cos x / 2 = 1$

+ $4 sin x + 3 cos x = 3$

]
#heading(level: 2, numbering: none, outlined: false)[本章内容要点]

一、本章内容主要包括两角和、差、倍、半的三角函数公式，以及三角函数的和差化积、积化和差的公式．这些公式的推导和变化，在数学和其他工程技术中都有广泛应用，要熟练地掌握．

二、掌握这些公式，主要应以两角和（差）的余弦公式为基础，掌握和理解这些公式之间的内在联系和推导线索（见附表所列），这样可以帮助记忆．

三、除附表中所列主要公式外，还有

+ 万能公式------用 $tan alpha / 2$ 的有理式表示 $alpha$ 角的任何三角函数．即 $ sin alpha = frac(2 tan alpha / 2, 1 + tan^2 alpha / 2)\,quad cos alpha = frac(1 - tan^2 alpha / 2, 1 + tan^2 alpha / 2)\,quad tan alpha = frac(2 tan alpha / 2, 1 - tan^2 alpha / 2) $

+ $a sin x + b cos x = sqrt(a^2 + b^2) dot.op sin\(x + theta\)$

  其中，辅助角 $theta$ 由 $a$⁠、$b$ 的符号确定象限，由 $tan theta = b / a$ 确定数值．

四、应用这些公式时，必须注意：凡使公式中某式子没有意义的角，都不适合公式；必须另加讨论．在使用半角公式时，必须考察半角所在的象限，从而确定公式中根号前的符号．

五、本章还包括了简单三角方程及其解法的内容，主要是应用三角公式和代数方法解一些特殊类型的三角方程．其中有

+ 最简单的三角方程

  - $sin x = a$, $cos x = a$, 当 $\|a\|lt.eq 1$ 时有解；

  - $tan x = a$, $cot x = a$, $a$ 为任意实数都有解．

+ 简单三角方程，其中包括只含有一个未知数的同名三角函数，关于 $sin x$ 及 $cos x$ 是齐次式、可变形为因式乘积的等特殊类型，一般都用解代数方程的方法，归结为解最简单的三角方程来求解．

#heading(level: 2, numbering: none, outlined: true)[复习题一]

+ 求值：

  + 已知 $cos 2 alpha = 3 / 5$⁠，求 $sin^4 alpha - cos^4 alpha$ 的值．

  + 已知 $tan x = 7 / 24$⁠，求 $cos 2 x$, $cot (2 x - pi / 4)$ 的值．

  + 已知 $sin theta + cos theta = 2 / 3$⁠，求 $sin 2 theta$ 的值．

  + 已知 $sin phi.alt dot.op cos phi.alt = 60 / 169$⁠，且 $pi / 4 < phi.alt < pi / 2$⁠，求 $sin phi.alt$⁠．

  + 已知 $sin alpha - cos alpha = m$⁠，求 $sin 2 alpha$ 的值．

+ 在 $triangle.stroked.t A B C$ 中

  + 如果 $cos A = 15 / 17$, $cos B = 9 / 41$⁠，求 $cos C$⁠；

  + 如果 $tan A = 2$, $tan B = 3$⁠，求 $tan C$⁠；

  + 如果 $sin A = 3 / 5$, $cos B = 5 / 13$⁠，求 $cos C$⁠；

  + 如果 $sin A = 4 / 5$, $cos B = 12 / 13$⁠，求 $sin C$⁠．

+ #lead-list(none, 2)[
  + 等腰三角形底角的正弦为 $5 / 13$⁠，求顶角的正弦、余弦和正切；

  + 等腰三角形顶角的余弦为 $7 / 25$⁠，求底角的正弦；

  + 等腰三角形中，腰为底的2倍，求顶角的正弦、余弦．
  ]

+ 证明下列各恒等式

  + $cos^4 A - sin^4 A + 1 = 2 cos^2 A$

  + $\(sin A + cos A\)dot.op\(1 - sin A cos A\)= sin^3 A + cos^3 A$

  + $frac(1 - tan A, 1 + tan A) = frac(cot A - 1, cot A + 1)$

  + $frac(cos A, 1 - tan A) + frac(sin A, 1 - cot A) = sin A + cos A$

  + $frac(cot A cos A, cot A + cos A) = frac(cot A - cos A, cot A cos A)$

  + $frac(1 + 2 sin A cos A, sin^2 A - cos^2 A) = frac(tan A + 1, tan A - 1)$

  + $frac(cos A + cos B, sin A - sin B) + frac(sin A + sin B, cos A - cos B) = 0$

  + $cot^2 A - cot^2 B = frac(sin^2 B - sin^2 A, sin^2 A sin^2 B)$

+ 求证:

  + $2 sin (pi / 2 - alpha) sin\(pi - alpha\)= sin 2 alpha$

  + $(sin A / 2 - cos A / 2)^2 = 1 - sin A$

  + $cot alpha - tan alpha = 2 cot 2 alpha$

  + $tan (x + pi / 4) + tan (x - pi / 4) = 2 tan 2 x$

  + $1 + sin alpha = 2 cos^2 (pi / 4 - alpha / 2)$

+ #block(sticky: true)[把下列各式化为乘积的形式：]

  #cols(2)[
  + $1 + sin 2 A$

  + $1 / 2 - cos x$

  + $1 / 2 cos alpha + sqrt(3) / 2 sin alpha$

  + $sin alpha - cos beta$

  + $sin^2 alpha - sin 2 beta$

  + $cos^2 alpha - cos^2 beta$

  + $sin alpha - sin beta + sin\(alpha + beta\)$

  + $1 + cos theta + cos theta / 2$

  + $sin theta + sin 2 theta + sin 3 theta$

  + $1 - 1 / 4 sin^2 2 alpha - sin^2 beta - cos^4 alpha$

  ]

+ #lead-list(none, 2)[
  + 当 $alpha$ 是多少度时，方程 $2 x^2 + 2 sqrt(2) x + tan alpha = 0$ 有两个相等的实数根．（$0 degree lt.eq alpha lt.eq 360 degree$⁠）

  + $x^2 - cos alpha x + 1 / 4 sin^2 alpha = 0$, $(0 < alpha < pi / 2)$ 为关于 $x$ 的二次方程，当 $alpha$ 为何值时，方程有两个相等的实数根，它的根是什么？
  ]

+ 若方程 $5 x^2 - 10 x cos alpha + 7 cos alpha + 6 = 0$ 的两根相等，试求两邻边之和为6, 且夹角为 $alpha$ 的平行四边形的最大面积．

+ 已知 $A$⁠、$B$ 是一个直角三角形的两个锐角，而且 $sin A$ 和 $sin B$ 是方程 $4 x^2 + k x + sqrt(3) = 0$ 的两个根，求 $A$⁠、$B$ 和 $k$ 的值．

+ $triangle.stroked.t A B C$ 的三个内角分别是 $alpha$⁠、$beta$⁠、$gamma$, 而 $tan alpha$⁠、$tan beta$ 是方程 $x^2 - 5 x + 6 = 0$ 的两个根，求 $gamma$⁠．

+ 确定 $x$ 为何值时下列等式有意义 $ sin x = sqrt(1 - cos^2 x)\,#h(2em) cot x / 2 = frac(sin x, 1 - cos x) $

+ 已知 $0 < alpha < pi / 2$⁠，求证 $sin alpha + cos alpha > 1$⁠．

+ 已知 $0 < alpha < pi / 2$⁠，$0 < beta < pi / 2$⁠，

  问 $sin\(alpha + beta\)$ 和 $sin alpha + sin beta$ 哪个大？

+ 证明下列恒等式：

  + $tan 20 degree + tan 40 degree + sqrt(3) tan 20 degree dot.op tan 40 degree = sqrt(3)$

  + $frac(sin\(2 x + y\), sin x) - 2 cos\(x + y\)= frac(sin y, sin x)$

  + $sec theta = sqrt(frac(sec^4 theta - tan^4 theta, 2 sin^2 theta + cos^2 theta))\,quad (0 < theta < pi / 2)$

  + $frac(3 - 4 cos 2 A + cos 4 A, 3 + 4 cos 2 A + cos 4 A) = tan^4 A$

  + $frac(1 + cos A + cos 2 A + cos 3 A, 2 cos^2 A + cos A - 1) = 2 cos A$

  + $tan 3 theta - tan 2 theta - tan theta = tan 3 theta dot.op tan 2 theta dot.op tan theta$

  + #staritem(7, depth: 2);$sin x + sin y + sin z - sin\(x + y + z\)= 4 sin frac(x + y, 2) dot.op sin frac(y + z, 2) dot.op sin frac(z + x, 2)$

  + #staritem(8, depth: 2);$cos x + cos y + cos z + cos\(x + y + z\)= 4 cos frac(x + y, 2) dot.op cos frac(y + z, 2) dot.op cos frac(z + x, 2)$

+ 在 $triangle.stroked.t A B C$ 中, 求证:

  + $tan A + tan B + tan C = tan A dot.op tan B dot.op tan C$

  + $frac(cos A, sin B dot.op sin C) + frac(cos B, sin A dot.op sin C) + frac(cos C, sin A dot.op sin B) = 2$

  + $frac(cos 2 A, a^2) - frac(cos 2 B, b^2) = 1 / a^2 - 1 / b^2$

  + $(a^2 - b^2 - c^2) tan A + (a^2 - b^2 + c^2) tan B = 0$

+ 在 $triangle.stroked.t A B C$ 中, 证明:

  + 若 $sin A = 2 cos B dot.op sin C$⁠，则 $triangle.stroked.t A B C$ 为等腰三角形；

  + 若 $a^2 = b\(b + c\)$⁠，则 $A = 2 B$⁠；

  + #staritem(3, depth: 2);若 $lg sin A - lg cos B - lg sin C = lg 2$⁠，则 $triangle.stroked.t A B C$ 是等腰三角形；

  + #staritem(4, depth: 2);若 $sin C = frac(sin A + sin B, cos A + cos B)$⁠，则 $triangle.stroked.t A B C$ 是直角三角形．

+ #block(sticky: true)[求下列函数的周期：]

  #cols(2)[
  + $y = frac(sin x, 1 + cos x)$

  + $y = 2 cos^2 alpha - 1$

  + $y = 4 cos 2 theta sin^2 theta$

  + $y = sqrt(3) sin 2 theta - cos 2 theta$

  ]

+ 求函数 $z = tan theta + cot theta$ 的极值，并求 $theta$ 为何值时达到这个极值．

+ #block(sticky: true)[求下列函数的最大值与最小值]

  #cols(2)[
  + $y = sin 3 x dot.op cos 3 x$

  + $y = sin (x - 30 degree) cos x$

  + $y = sin x - sqrt(3) cos x$

  + $y = sin x + cos x$

  + $y = a sin x + b$

  + $y = cos^4 x - sin^4 x$

  ]

+ 求函数 $y = 3 cos 2 x + 3 sqrt(3) sin 2 x - 1$ 的振幅、周期、极大值和极小值．

+ 解下列三角方程：

  + $4 sin^2 x +\(2 sqrt(3) - 2\)cos x -\(4 - sqrt(3)\)= 0$

  #cols(2)[
  #block[
  #set enum(numbering: enum-at(2, none, start: 2))
  + $sec^2 x = 1 + tan x$

  + $cos 2 x + sin 3 x = 0$

  + $cos 3 x + 2 cos x = 0$

  + $tan 3 x = tan 4 x$

  + $frac(sin 2 x, cos x) = frac(cos 2 x, sin x)$

  + $5 cos x + 12 sin x = 13$

  + #staritem(8, depth: 2);$sin 6 x dot.op cos x = sin 4 x dot.op cos 3 x$

  + #staritem(9, depth: 2);$sin x dot.op sin 7 x = sin 3 x dot.op sin 5 x$

  + #staritem(10, depth: 2);$sin 5 x - sin 3 x = sqrt(2) cos 4 x$
  ]

  ]
  #block[
  ]

+ #staritem(22);求证：

  + 方程 $sin^2 x = sin^2 alpha$ 的解集是 $\{ x\|x = plus.minus alpha + k pi\,thick k in bb(Z) \}$⁠；

  + 方程 $tan^2 x = tan^2 alpha$ 的解集是 $\{ x\|x = plus.minus alpha + k pi\,thick k in bb(Z) \}$⁠．
