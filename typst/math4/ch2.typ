// 由 typst/tools/tex2typ.py 从 math4/2.tex 转换而来，已人工校对的部分以本文件为准。
#import "../common/template.typ": *
#import "figs.typ": fig

= 线性方程组
在初中我们已经学习了二元一次，三元一次及一些四元一次方程组的概念与解法．一次方程也叫做线性方程，一次方程组也叫做线性方程组，它是代数学中最基本、应用最广泛的内容之一．本章将进一步研究线性方程组的消元法解的程序，引进行列式及其性质，并应用行列式理论对线性方程的求解作一般性的讨论，从而对线性方程组的理论有较系统、完整的了解．

== 高斯消元法
我们已经知道，解线性方程组的基本思想是消元，而且已经掌握了代入消元法和加减消元法．但这两种消元法在应用中所采取的具体步骤和顺序，往往因人而异、因题而异，尤其是在解未知数较多的线性方程组时，计算程序很麻烦，消元的顺序又不只一个途径．这就启示我们，对于任一个线性方程组，如果能有比较统一的消元程序，在解的过程中就可以充分运用现代的电子计算机，提高解题效率，也便于人们在应用中掌握．因而就有高斯消元法．

=== 高斯消元法
高斯消元法实质上也是加减消元法，只是具有明确清晰的计算程序、统一的规格，便于掌握，便于使用电子计算机．

我们先从熟悉的例子分析起．

#example[
解方程组

#numcases($$, $3 x + 5 y = 11$, $4 x - 3 y = 5$);

]
#solution[
$\(2.1\)times 1 / 3$ 得

#numcases($$, $x + 5 / 3 y = 11 / 3$, $4 x - 3 y = 5 #h(2em) upright("(2.2)")$);

#noindent; $\(2.2\)-\(2.3\)times 4$ 得

#numcases($$, $x + 5 / 3 y = 11 / 3 #h(2em) upright("(2.3)")$, $- 29 / 3 y = - 29 / 3$);

#noindent; $\(2.4\)times (- 3 / 29)$ 得

#numcases($$, $x + 5 / 3 y = 11 / 3 #h(2em) upright("(2.3)")$, $y = 1$);

#noindent; (2.5) 代入 (2.3) 得：$display(cases(x = 2, y = 1))$ 所以原方程组的解集为 $\{\(x\,y\)\} = \{\(2\,1\)\}$⁠．

]
#example[
解方程组

#numcases($$, $3 x + 7 y - 5 z = 19$, $x - 3 y + 2 z = 3$, $5 x - 11 y - 8 z = - 13$);

]
#solution[
先将 (2.6)、(2.7) 互换，得

#numcases($$, $x - 3 y + 2 z = 3 #h(2em) upright("(2.7)")$, $3 x + 7 y - 5 z = 19 #h(2em) upright("(2.6)")$, $5 x - 11 y - 8 z = - 13 #h(2em) upright("(2.8)")$);

#noindent; $\(2.6\)-\(2.7\)times 3$ 且 $\(2.8\)-\(2.7\)times 5$⁠，得

#numcases($$, $x - 3 y + 2 z = 3 #h(2em) upright("(2.7)")$, $16 y - 11 z = 10$, $4 y - 18 z = - 28$);

#noindent; $\(2.10\)times 1 / 4$ 后，再与 (2.9) 互换，得

#numcases($$, $x - 3 y + 2 z = 3 #h(2em) upright("(2.7)")$, $y - 9 / 2 z = - 7$, $16 y - 11 z = 10 #h(2em) upright("(2.9)")$);

#noindent; $\(2.9\)-\(2.11\)times 16$ 后，再乘以 $1 / 61$⁠，得

#numcases($$, $x - 3 y + 2 z = 3 #h(2em) upright("(2.7)")$, $y - 9 / 2 z = - 7 #h(2em) upright("(2.11)")$, $z = 2$);

#noindent; (2.12) 代入 (2.11)，再代入 (2.7)，整理可得：$ display(cases(x = 5, y = 2, z = 2)) $ #noindent;所以原方程组的解集为 $\{\(x\,y\,z\)\} = \{\(5\,2\,2\)\}$⁠．

]
通过以上两例可以知道，解线性方程组的消元法是可按一定顺序进行的．

第一步：将 $x$ 的系数较小的方程换到第一个，并将 $x$ 的系数化为1, 消去后几个方程中的 $x$\; 再把第二个方程中 $y$ 的系数化为1, 消去它后边几个方程中的 $y$\;……直到最后一个方程中最后一个未知数的系数化为1.

第二步：将最后一个未知数的值，分别回过头代入前边各方程中去，逐步可以得出方程组的解．

以三元线性方程组为例，上面两步消元求解的过程就是：$ display(cases(a_1 x + b_1 y + c_1 z = d_1, a_2 x + b_2 y + c_2 z = d_2, a_3 x + b_3 y + c_3 z = d_3)) limits(arrow.r.double.long)^(upright("第一步")) display(cases(x + b'_1 y + c'_1 z = d'_1, #h(2em) quad y + c'_2 z = d'_2, #h(2em) #h(2em) quad z = d'_3)) limits(arrow.r.double.long)^(upright("第二步")) display(cases(x = d''_1, y = d''_2, z = d'_3)) $

在这一过程中，就是反复将方程组施行了三种基本变换：

+ 互换两个方程的位置；

+ 用一个非零常数乘以一个方程两边；

+ 用一个非零常数乘以一个方程后，加到另一个方程上．

必须指出，变换方程组是为了消元求解，因此，变换前后的方程组应该有相同的解集（这时我们就说这两个方程组是同解的）．那么，上述三种基本变换是否能保证方程组的同解性呢？我们肯定：经过上述三种基本变换，方程组的解集保持不变（同解的）．

对于变换1、2, 结论显然是正确的；以下以三元一次方程组为例来证明对于变换3, 结论是正确的，我们证明方程组#numbered-eq($ display(cases(a_1 x + b_1 y + c_1 z = d_1, a_2 x + b_2 y + c_2 z = d_2, a_3 x + b_3 y + c_3 z = d_3)) $);#noindent;与#numbered-eq($ display(cases(a_1 x + b_1 y + c_1 z = d_1, \(a_2 + k a_1\)x +\(b_2 + k b_1\)y +\(c_2 + k c_1\)z = d_2 + k d_1, a_3 x + b_3 y + c_3 z = d_3)) $);#noindent;是同解的．

#proof[
设 $\(alpha\,beta\,gamma\)$ 是 (2.13) 的任一个解，则应有：$ display(cases(a_1 alpha + b_1 beta + c_1 gamma = d_1, a_2 alpha + b_2 beta + c_2 gamma = d_2, a_3 alpha + b_3 beta + c_3 gamma = d_3)) $ #noindent;把第一个等式的 $k$ 倍加到第二等式上，得 $ display(cases(a_1 alpha + b_1 beta + c_1 gamma = d_1, \(a_2 + k a_1\)alpha +\(b_2 + k b_1\)beta +\(c_2 + k c_1\)gamma = d_2 + k d_1, a_3 alpha + b_3 beta + c_3 gamma = d_3)) $ #noindent;这说明 $\(alpha\,beta\,gamma\)$ 也是 (2.14) 的一个解．用类似的方法可以证明，方程组 (2.14) 的任一个解也是方程组 (2.13) 的解，因此 (2.13) 与 (2.14) 是同解的．

]
注意，我们讨论的只是一般情形的消元过程，还有一些特殊的情形，我们将在以后系统讨论分析．这些特殊的情形在解题中都有可能出现，需要我们灵活处理．

#example[
解方程组 $ display(cases(#h(2em) thick thick 3 y + 2 z = 5, - x + 2 y - 3 z = 2, thick thick x + 4 y + 7 z = 0)) $

]
#solution[
运用例2.1、例2.2相同的高斯消元法，逐步将原方程组施以三种基本变换，可得 $ upright("原方程组") & arrow.r.double display(cases(quad x + 4 y + 7 z = 0, - x + 2 y - 3 z = 2, #h(2em) thick thick 3 y + 2 z = 5)) arrow.r.double display(cases(x + 4 y + 7 z = 0, #h(2em) 6 y + 4 z = 2, #h(2em) 3 y + 2 z = 5))\
 & arrow.r.double display(cases(x + 4 y + 7 z = 0, #h(2em) thick thick y + 2 / 3 z = 1 / 3, #h(2em) thick 3 y + 2 z = 5)) arrow.r.double display(cases(x + 4 y + 7 z = 0, #h(2em) thick thick y + 2 / 3 z = 1 / 3, #h(2em) thick thick #h(2em) 0 z = 4)) $

到此就会发现，方程 $0 dot.op z = 4$ 无解，亦无法回代其余方程，因此，原方程组无解，或说原方程组的解集为空集 $nothing$⁠．

]
#example[
解方程组 $ display(cases(#h(2em) thick thick 3 y + 2 z = 1, - x + 2 y - 3 z = 2, thick thick x + 4 y + 7 z = 0)) $

]
#solution[
$ upright("原方程组") & arrow.r.double display(cases(quad x + 4 y + 7 z = 0, - x + 2 y - 3 z = 2, #h(2em) thick thick 3 y + 2 z = 1)) arrow.r.double display(cases(x + 4 y + 7 z = 0, #h(2em) 6 y + 4 z = 2, #h(2em) 3 y + 2 z = 1))\
 & arrow.r.double display(cases(x + 4 y + 7 z = 0, #h(2em) thick thick y + 2 / 3 z = 1 / 3, #h(2em) thick 3 y + 2 z = 1)) arrow.r.double display(cases(x + 4 y + 7 z = 0, #h(2em) thick thick y + 2 / 3 z = 1 / 3, #h(2em) #h(2em) 0 dot.op z = 0)) $

至此可知，方程 $0 dot.op z = 0$ 有无限多个解（$z$ 可取任意实数），设 $z = t$, 回代各方程中，可以得出 $ display(cases(x = - 4 / 3 - 13 / 3 t, y = 1 / 3 - 2 / 3 t, z = t)) $ #noindent;所以原方程组有无限多个解，其解集为 $ \{\(x\,y\,z\)\} = lr(\{ (- 4 / 3 - 13 / 3 t \, thick 1 / 3 - 2 / 3 t \, thick t) \})\,quad t upright("为任意数") $

]
#exercise[
用高斯消元法解下列线性方程组

#cols(2)[
+ $display(cases(quad 5 x - 2 y = 8, - 7 x + 10 y = 4))$

+ $display(cases(2 x - 3 y + 4 z = 8, 5 x - y - 8 z = - 21, 3 x + 5 y - 7 z = - 8))$

+ $display(cases(#h(2em) y + 2 z = 4, x - 3 y #h(2em) = - 3, 4 x quad thick thick thick - 5 z = 7))$

+ $display(cases(7 x - y + 2 z = 1, #h(2em) 5 y - 3 z = 0, 14 x - 2 y + 4 z = 1))$

+ $display(cases(3 x - 7 y #h(2em) = 2, #h(2em) quad y - z = 1, 12 x - 28 y quad = 8))$

]
]
=== 一般二元一次方程组解的公式讨论
利用高斯消元法，我们对一般的二元一次方程组

#numcases($\(upright(I)\)$, $a_1 x + b_1 y = c_1$, $a_2 x + b_2 y = c_2$);

#noindent;求解，并讨论它的各种情形．

在方程组 (I) 中，我们假定 $a_1$ 与 $b_1$, $a_2$ 与 $b_2$, $a_1$ 与 $a_2$⁠，$b_1$ 与 $b_2$ 分别不同时为零，因为，如若不然，不论上述哪一种情形发生，方程组的解将是容易讨论的，同学们不妨试着自行讨论一下．

在这个假定下，利用高斯消元法（假定 $a_1 eq.not 0$⁠）, 可得

#numcases($$, $x + b_1 / a_1 y = c_1 / a_1$, $frac(a_1 b_2 - a_2 b_1, a_1) y = frac(a_1 c_2 - a_2 c_1, a_1)$);

#noindent;再将 (2.18) 变形后，可得

#numcases($$, $x + b_1 / a_1 y = c_1 / a_1 #h(2em) upright("(2.17)")$, $\(a_1 b_2 - a_2 b_1\)y = a_1 c_2 - a_2 c_1$);

#noindent;由方程出发，可分别讨论如下：

+ 当 $a_1 b_2 - a_2 b_1 eq.not 0$ 时，由 (2.19) 并代入 (2.17) 可以得出方程组 (I) 唯一的一个解 $ display(cases(x = frac(c_1 b_2 - c_2 b_1, a_1 b_2 - a_2 b_1), y = frac(a_1 c_2 - a_2 c_1, a_1 b_2 - a_2 b_1))) $ #noindent;这就是原方程组的解的公式．

+ 当 $a_1 b_2 - a_2 b_1 = 0$ 时，由 (2.19) 又可以分为两种情形讨论：

  + 若 $a_1 c_2 - a_2 c_1 eq.not 0$⁠，方程 (2.19) 变为一个矛盾方程，其解集是空集，因而原方程组也就无解，其解集仍是空集．

  + 若 $a_1 c_2 - a_2 c_1 = 0$, 则方程 (2.19) 变为：$0 y = 0$, $y$ 可取任意实数 $t$, 代入 (2.17) 得：$ x = c_1 / a_1 - b_1 / a_1 t $ #noindent;这时方程组 (I) 有无限多解，解集为 $ \{\(x\,y\)\} = lr(\{ (frac(c_1 - b_1 t, a_1) \, thick t) \, quad t upright(" 为任意实数") \}) $

#blk[定理][
方程组 $display(cases(a_1 x + b_1 y = c_1, a_2 x + b_2 y = c_2))$ 其中 $a_1$ 与 $b_1$, $a_2$ 与 $b_2$, $a_1$ 与 $a_2$, $b_1$ 与 $b_2$ 分别不同时为零．

+ 当 $a_1 b_2 - a_2 b_1 eq.not 0$⁠，它有唯一解；$ x = frac(c_1 b_2 - c_2 b_1, a_1 b_2 - a_2 b_1)\,#h(2em) y = frac(a_1 c_2 - a_2 c_1, a_1 b_2 - a_2 b_1) $

+ 当 $a_1 b_2 - a_2 b_1 = 0$⁠，且 $a_1 c_2 - a_2 c_1 eq.not 0$（或 $c_1 b_2 - c_2 b_1 eq.not 0$⁠），它无解；

+ 当 $a_1 b_2 - a_2 b_1 = 0$⁠，且 $a_1 c_2 - a_2 c_1 = 0$⁠，$c_1 b_2 - c_2 b_1 = 0$⁠，它有无限多个解．

]
#example[
讨论方程组 $ display(cases(\(a - b\)x +\(a + b\)y = 2\(a^2 - b^2\), \(a + b\)x +\(a - b\)y = 2\(a^2 + b^2\))) $ #noindent;的解的情况．

]
#solution[
设$ a_1 = a - b\,quad b_1 = a + b\,quad c_1 = 2\(a^2 - b^2\)\
a_2 = a + b\,quad b_2 = a - b\,quad c_2 = 2\(a^2 + b^2\) $ #noindent;则$ a_1 b_2 - a_2 b_1 = - 4 a b\,thick a_1 c_2 - a_2 c_1 = - 4 a b\(a - b\)\,thick b_2 c_1 - b_1 c_2 = - 4 a b\(a + b\) $#noindent;所以

+ 若 $a eq.not 0$ 且 $b eq.not 0$, 则方程组有唯一解：$ x = a + b\,#h(2em) y = a - b $

+ 若 $a = 0$ 或 $b = 0$, 则方程组有无限多个解．

  + 在 $a = 0$, $b eq.not 0$ 时，方程组的解集为：$ \{\(x\,y\)\} = \{\(2 b + t\,t\)\|t upright("为任意数") \} $

  + 在 $a eq.not 0$, $b = 0$ 时，方程组解集为 $ \{\(x\,y\)\} = \{\(2 a - t\,t\)\|t upright("为任意数") \} $

+ 若 $a = b = 0$, 则原方程组成为：$ display(cases(0 x + 0 y = 0, 0 x + 0 y = 0)) $ #noindent;显然两个方程都是恒等式，$x\,y$ 都可取任何数，因此方程组的解集是：$ \{\(x\,y\)\} = \{\(s\,t\)\|s\,t upright("为任意数") \} $

#noindent;注意：本题不存在无解的情况．

]
#example[
有一个三位数，已知其十位数字等于其个位数字与百位数字之和，其个位数字与十位数字之和为 $a$, 如果把三个数字的顺序倒过来，则所得新的三位数比原三位数大99. 求原三位数，并问参数 $a$ 可取哪些值？

]
#solution[
设原三位数的个位数字为 $x$, 百位数字为 $y$, 由题目可知十位数字就是 $a - x$.（其中 $x\,y$ 都是 $1\,2\,dots.h\,9$ 这几个数字之一；$a - x$ 是 $0\,1\,dots.h\,9$ 这十个数字之一）．显然，$3 lt.eq a lt.eq 18$. 依题意有：$ display(cases(x + y = a - x, 100 x + 10\(a - x\)+ y = 100 y + 10\(a - x\)+ x + 99)) $ #noindent;将上述方程组变换为：$ display(cases(2 x + y = a, x - y = 1)) $ #noindent;由消元法可得出：$display(cases(x = 1 / 3\(a + 1\), y = x - 1))$ 由上面这两个等式，不难断定：$a + 1$ 须是3的倍数．所以，$a$ 只可能取 $5\,8\,11\,14\,17$ 之中的一个值，直接计算可得：

- $a = 5$ 时，则 $x = 2$, $y = 1$, $a - x = 3$, 可得出所求三位数为132;

- $a = 8$ 时，则 $x = 3$, $y = 2$, $a - x = 5$, 可得出所求三位数为253;

- $a = 11$ 时，则 $x = 4$, $y = 3$, $a - x = 7$, 可得出所求三位数为374;

- $a = 14$ 时，则 $x = 5$, $y = 4$, $a - x = 9$, 可得出所求三位数为495,

- $a = 17$ 时，虽可求出 $x = 6$, $y = 5$, 但 $a - x = 11$ 已不符合题意，因此，这种情形不可能出现．

所以，参数 $a$ 分别取值5, 8, 11, 与14, 相应的三位数为：132, 253, 374, 495.

]
#exercise[
试判别和讨论下列线性方程组的解的情形．

#cols(2)[
+ $display(cases(3 x - 5 y = 20, 6 x - 10 y = 15))$

+ $display(cases(3 x - y = 8, 2 x + a y = 7))$

+ $display(cases(m x + y = m + 1, x + m y = 2 m))$

]
]
#heading(level: 2, numbering: none, supplement: [toc-sub])[习题2.1]

+ #block(sticky: true)[用高斯消元法解下列方程组：]

  #cols(2)[
  + $display(cases(2 x + 3 y - 5 z = 3, x - 2 y + z = 0, x + y + 3 z = 7))$

  + $display(cases(x + y + 2 z = 4, 2 x - y + 3 z = 4, x + y + 2 z = 3))$

  + $display(cases(x + 2 y - 3 z = 5, 3 x - 2 y + z = 4, - 3 x - 6 y + 9 z = 15))$

  + $display(cases(x + 2 y - 3 z = 5, - 2 x - 4 y + 6 z = - 10, 1 / 2 x + y - 3 / 2 z = 5 / 2))$

  + $display(cases(x_1 + 3 x_2 + 5 x_3 + 7 x_4 = 12, 3 x_1 + 5 x_2 + 7 x_3 + x_4 = 0, 5 x_1 + 7 x_2 + x_3 + 3 x_4 = 4, 7 x_1 + x_2 + 3 x_3 + 5 x_4 = 16))$

  ]

+ #block(sticky: true)[讨论下列各方程组的解的情况：]

  #cols(2)[
  + $display(cases(x + y = 12, x + a y = 4))$

  + $display(cases(6 x - 5 y = 25, 4 x + a y = b))$

  + $display(cases(x = b y, p x = q y))$

  + $display(cases(a x + b y = a^2 + 2 a + b^2, b x + a y = a^2 + 2 b + b^2))$

  ]

+ 一个两位数的两数字之和为 $a$, 若颠倒这两个数字的顺序，所得新的两位数比原数小36, 问 $a$ 可能取哪些值？原来的两位数是什么？

+ 试判断 $m$ 取何值时，下列方程组有唯一解：

  + $display(cases(\(m - 1\)x -\(m + 1\)y = m + 1, m^2 x -\(m + 1\)y = m - 1))$

  + $display(cases(x -\(m^2 - 5\)y = - 1, \(m + 1\)x -\(m + 1\)^2 y = 1))$

+ 高斯消元法对方程组的三种基本变换中，若把变换改为“用任一个常数乘一个方程．”删去“非零”二字行吗？为什么？举例说明．

== 二阶行列式与二元线性方程组
本节我们将从二元线性方程组的解的公式入手，引进二阶行列式的概念，从而学习二元线性方程组的行列式解法，并应用行列式讨论它的解的各种情形．

=== 二阶行列式
一般的二元线性方程组

#numcases($\(upright("I")\)$, $a_1 x + b_1 y = c_1$, $a_2 x + b_2 y = c_2$);

#noindent;当 $a_1 b_2 - a_2 b_1 eq.not 0$ 时，有唯一解，即#numbered-eq($ display(cases(x = frac(c_1 b_2 - c_2 b_1, a_1 b_2 - a_2 b_1), y = frac(a_1 c_2 - a_2 c_1, a_1 b_2 - a_2 b_1))) $);

分析公式 (2.22) 可以看出，两个分母都是 $a_1 b_2 - a_2 b_1$, 其中只含有未知数的系数．如果把方程组 (I) 中未知数的系数分离出来，按照它们原有的位置排列成一个正方形，即

#align(center)[
#fig("2-01");

]
#noindent;那么可以看到 $a_1 b_2 - a_2 b_1$ 是这样两项的和：一项是正方形中实线所示的对角线（称为主对角线）上两个数的积，取正号；另一项是正方形中虚线所示的对角线（称为副对角线）上两个数的积，取负号．

为了便于记忆，我们将排正方形的四个数的两侧各加一条竖直线，表示成 $ mat(delim: "|", a_1, b_1; a_2, b_2) $ #noindent;并规定这个符号就是 $a_1 b_2 - a_2 b_1$ 即：#numbered-eq($ mat(delim: "|", a_1, b_1; a_2, b_2) = a_1 b_2 - a_2 b_1 $);

这时，(2.23) 式的左边，就叫做二阶行列式；而 (2.23) 式的右边就是二阶行列式的展开式．

二阶行列式中，四个数称为它的元素；四个元素排成两横排（称为行）两竖排（称为列），因而二阶行列式共有二行二列．

所以，二阶行列式是一个值，它可按照 (2.23) 用对角线法则展开并计算出来．

#example[
展开并计算下列行列式：

#cols(2)[
+ $mat(delim: "|", 2, 3; - 5, - 8)$

+ $mat(delim: "|", 0, - 7; - 3, 10)$

+ $mat(delim: "|", m + 1, m + 2; m, m + 1)$

+ $mat(delim: "|", sin x, cos x; cos x, sin x)$

]
]
#solution[
由对角线法则可得，

+ $mat(delim: "|", 2, 3; - 5, - 8) = 2 times\(- 8\)- 3 times\(- 5\)= - 1$

+ $mat(delim: "|", 0, - 7; - 3, 10) = - 21$

+ $mat(delim: "|", m + 1, m + 2; m, m + 1) =\(m + 1\)^2 - m\(m + 2\)= 1$

+ $mat(delim: "|", sin x, cos x; cos x, sin x) = sin^2 x - cos^2 x = - cos 2 x$

]
#exercise[
+ #block(sticky: true)[展开并计算下列行列式的值：]

  #cols(2)[
  + $mat(delim: "|", 8, 4; 3, 9)$

  + $mat(delim: "|", a, a^2; b, b^2)$

  + $mat(delim: "|", - 3, 21; - 1, 7)$

  + $mat(delim: "|", 6 a - b, 2 b; 3 a, b)$

  + $mat(delim: "|", log_a x, log_a x; m, n)$

  + $mat(delim: "|", sin x, tan x; cos x, cot x)$

  + $mat(delim: "|", 1 - sqrt(2), 2 - sqrt(3); 2 + sqrt(3), 1 + sqrt(2))$

  + $mat(delim: "|", x - 1, x^3; 1, x^2 + x + 1)$

  ]

+ 试试看，你能把下列各式分别用几个二阶行列式表示出来吗？$ a m - b n\,#h(2em) a m + b n\,#h(2em) a_1 b_2 - a_2 b_1 $

+ 求证：$mat(delim: "|", a_1 + k a_2, b_1 + k b_2; a_2, b_2) = mat(delim: "|", a_1, b_1; a_2, b_2)$

]
=== 二元线性方程组解的行列式表示及讨论
在二元线性方程组的解的公式中，仔细观察可以发现，两分母，分子都可以很有规律地用行列式表示出来，即 $ a_1 b_2 - a_2 b_1 & = mat(delim: "|", a_1, b_1; a_2, b_2)\
c_1 b_2 - c_2 b_1 & = mat(delim: "|", c_1, b_1; c_2, b_2)\
a_1 c_2 - a_2 c_1 & = mat(delim: "|", a_1, c_1; a_2, c_2) $ #noindent;这样，二元线性方程组解的公式就可以表示为：

当$mat(delim: "|", a_1, b_1; a_2, b_2) eq.not 0$时，$ x = mat(delim: "|", c_1, b_1; c_2, b_2) / mat(delim: "|", a_1, b_1; a_2, b_2)\,#h(2em) y = mat(delim: "|", a_1, c_1; a_2, c_2) / mat(delim: "|", a_1, b_1; a_2, b_2) $ #noindent;为简便起见，通常把上述三个二阶行列式分别记为 $ D = mat(delim: "|", a_1, b_1; a_2, b_2)\,#h(2em) D_x = mat(delim: "|", c_1, b_1; c_2, b_2)\,#h(2em) D_y = mat(delim: "|", a_1, c_1; a_2, c_2) $ #noindent;其中 $D$ 的元素由方程组的未知数系数按顺序组成，就叫做这个方程组的系数行列式；$D_x$ 的元素由 $D$ 将第一列元素（$x$ 的系数）分别换成相应的常数项组成；$D_y$ 的元素由 $D$ 将第二列元素（$y$ 的系数）分别换成相应的常数项组成．

这样二元线性方程组 (I) 的解的公式，就可简化为：当 $D eq.not 0$ 时，$ display(cases(x = D_x / D, y = D_y / D)) $ #noindent;即：二元线性方程组 (I) 的解集为 $ \{\(x\,y\)\} = lr(\{ (D_x / D \, thick D_y / D) \}) $

#example[
用行列式法解方程组 $display(cases(11 x - 2 y + 5 = 0, 3 x + 7 y + 24 = 0))$

]
#solution[
先将所给方程组写为一般形式 $ display(cases(11 x - 2 y = - 5, 3 x + 7 y = - 24)) $ #noindent;再计算行列式 $D$, $D_x$, $D_y$: $ D = mat(delim: "|", 11, - 2; 3, 7) = 83 eq.not 0\,quad D_x = mat(delim: "|", - 5, - 2; - 24, 7) = - 83\,quad D_y = mat(delim: "|", 11, - 5; 3, - 24) = - 249 $ #noindent;根据解的公式，得 $ x = D_x / D = - 1\,#h(2em) y = D_y / D = - 3 $ #noindent;所以，原方程组的解集为 $\{\(x\,y\)\} = \{\(- 1\,- 3\)\}$⁠．

]
在使用行列式方法解二元线性方程组时，如果出现 $D = 0$ 时，解的公式不适用，这时可以仿照前文中对方程组解的讨论，得到以下结论：

- 当 $D = 0$, 且 $D_x eq.not 0$\(或 $D_y eq.not 0$) 时，方程组的解集是空集 $nothing$⁠；

- 当 $D = 0$, 且 $D_x = D_y = 0$ 时，方程组有无限多个解，它的解集可引进一个参数表示．

注意，我们这里所指的二元线性方程组，限定其中的 $a_1$ 与 $a_2$⁠，$a_1$ 与 $b_1$⁠，$a_2$ 与 $b_2$⁠，$b_1$ 与 $b_2$ 不同时为0．

#example[
用行列式法解下列方程组，并讨论：$ display(cases(m x + y - m - 1 = 0, x + m y - 2 m = 0)) $

]
#solution[
先将原方程化为一般形式：$ display(cases(m x + y = m + 1, x + m y = 2 m)) $ #noindent;再计算各行列式：$ D & = mat(delim: "|", m, 1; 1, m) = m^2 - 1 =\(m + 1\)\(m - 1\)\
D_x & = mat(delim: "|", m + 1, 1; 2 m, m) = m\(m + 1\)- 2 m = m\(m - 1\)\
D_y & = mat(delim: "|", m, m + 1; 1, 2 m) = 2 m^2 -\(m + 1\)=\(2 m + 1\)\(m - 1\) $ #noindent;所以

- 当 $m eq.not - 1$, $m eq.not 1$ 时，$D eq.not 0$ 方程组有唯一解，它的解集为 $ \{\(x\,y\)\} = lr(\{ (frac(m, m + 1) \, frac(2 m + 1, m + 1)) \}) $

- 当 $m = - 1$ 时，$D = 0$, $D_x eq.not 0$, 方程组无解，它的解集为 $nothing$⁠．

- 当 $m = 1$ 时，$D = D_x = D_y = 0$ 方程组有无限多个解，这时由于原方程组变为 $display(cases(x + y = 2, x + y = 2))$ 实际上就是 $x + y = 2$, 若令 $x = t$, 则 $y = 2 - t$, 因此，方程组的解集可表示为：$ \{\(x\,y\)\} = \{\(t\,2 - t\)\|t upright("为任意数") \} $

注意，在上述参数表示法中，可以有不同的表示法，如若令 $y = a$, 则 $x = 2 - a$, 解集就应表示为 $\{\(x\,y\)\} = \{\(2 - a\,a\)\|a upright("为任意数") \}$⁠．

]
#exercise[
+ 用行列式法解下列方程组

  + $display(cases(x - 8 y = 10, 6 x - 7 y - 11 = 0))$

  + $display(cases(14 x - 6 y = - 1, 3 x + 7 y - 6 = 0))$

  + $display(cases(m x + n y = 1, n x + m y = - 1\,quad\(m eq.not n\)))$

  + $display(cases(x cos A - y sin A = cos B, x sin A + y cos A = sin B))$

+ 解下列方程组，并讨论

  + $display(cases(x +\(m - 1\)y = 1, \(m - 1\)x + y = 2))$

  + $display(cases(m x + y = 1, 4 x + m y - m = 0))$

  + $display(cases(k x +\(2 a - 1\)y = a^2 + 2 a - 1, x + a y = 2 a))$

]
#heading(level: 2, numbering: none, supplement: [toc-sub])[习题2.2]

+ 计算下列行列式的值 $ mat(delim: "|", sqrt(6), sqrt(4); sqrt(2), sqrt(3))\,#h(2em) mat(delim: "|", log_a b, 4; 3, log_b a)\,#h(2em) mat(delim: "|", e^(x + y), e^x - 1; e^x + 1, e^(x - y))\,#h(2em) mat(delim: "|", 1, 1; - tan^2 alpha, 1) $

+ #block(sticky: true)[求证：]

  #cols(2)[
  + $mat(delim: "|", a_1, b_1; a_2, b_2) = mat(delim: "|", a_1, a_2; b_1, b_2)$

  + $mat(delim: "|", b_1, b_2; a_1, a_2) = - mat(delim: "|", a_1, b_1; a_2, b_2)$

  + $mat(delim: "|", k a_1, k b_1; a_2, b_2) = k mat(delim: "|", a_1, b_1; a_2, b_2)$

  + $mat(delim: "|", k a_1, ell a_1; k a_2, ell a_2) = 0$

  ]
  #block[
  #set enum(numbering: enum-at(2, none, start: 5))
  + $mat(delim: "|", a_1 + a', b_1 + b'; a_2, b_2) = mat(delim: "|", a_1, b_1; a_2, b_2) + mat(delim: "|", a', b'; a_2, b_2)$
  ]

+ #block(sticky: true)[用行列式解下列方程组：]

  #cols(2)[
  + $display(cases(13 x - 7 y - 10 = 0, 19 x + 15 y - 2 = 0))$

  + $display(cases(7 / m + 9 / n = 3, 17 / m + 7 / n = 5))$

  ]

+ #block(sticky: true)[解下列关于 $x\,y$ 的方程组，并讨论．]

  #cols(2)[
  + $display(cases(m x + y = 2 m + 1, x - m y = 2 - m))$

  + $display(cases(m x + y = - 1, 3 m x - m y = 2 m + 3))$

  + $display(cases(\(a - 1\)x -\(a^2 - 1\)y = 1, \(a^2 - 1\)x +\(a - 1\)y = 2))$

  + $display(cases(k x + y = k + 1, x + k y = 2 k))$

  ]

+ 当 $k$ 为何值时，方程组 $display(cases(4 x + 3 y = 1, k x +\(k - 2\)y = 3))$ 的解中，$x$ 与 $y$ 的值取异号？

== 三阶行列式与三元线性方程组
=== 三阶行列式
仿照二阶行列式，我们可以把九个数排成三行三列的正方形，并在两侧各加一竖直线．如#numbered-eq($ mat(delim: "|", a_1, b_1, c_1; a_2, b_2, c_2; a_3, b_3, c_3; #none) $);#noindent;并规定它表示一个数#numbered-eq($ a_1 b_2 c_3 + a_2 b_3 c_1 + a_3 b_1 c_2 - a_3 b_2 c_1 - a_2 b_1 c_3 - a_1 b_3 c_2 $);

这时我们就把 (2.24) 叫做一个三阶行列式，(2.25) 式就叫做这个三阶行列式的展开式（或这三阶行列式的值．）

三阶行列式共有九个元素，它的值也可以按下图所示的对角线法则计算出来：

#align(center)[
#fig("2-02");

]
实线所连三元素的乘积都取正号，共三项；虚线所连三元素乘积，都取负号，共三项．

#example[
用对角线法则计算下列三阶行列式：

#cols(3)[
+ $mat(delim: "|", 1, 3, 5; 2, 4, 8; 3, 0, - 1)$

+ $mat(delim: "|", 2, - 3, 1; 4, - 1, 7; - 1, 5, 2)$

+ $mat(delim: "|", x, y, z; z, x, y; y, z, x)$

]
]
#solution[
由对角线法则可得：$ mat(delim: "|", 1, 3, 5; 2, 4, 8; 3, 0, - 1) & = 1 dot.op 4 dot.op\(- 1\)+ 2 dot.op 0 dot.op 5 + 3 dot.op 3 dot.op 8 - 3 dot.op 4 dot.op 5 - 2 dot.op 3 dot.op\(- 1\)- 1 dot.op 0 dot.op 8\
 & = - 4 + 0 + 72 - 60 + 6 - 0 = 14\
mat(delim: "|", 2, - 3, 1; 4, - 1, 7; - 1, 5, 2) & = 2 dot.op\(- 1\)dot.op 2 + 4 dot.op 5 dot.op 1 +\(- 1\)dot.op\(- 3\)dot.op 7 -\(- 1\)dot.op\(- 1\)dot.op 1 - 4 dot.op\(- 3\)dot.op 2 - 2 dot.op 5 dot.op 7\
 & = - 4 + 20 + 21 - 1 + 24 - 70 = - 10\
mat(delim: "|", x, y, z; z, x, y; y, z, x) = x^3 + y^3 + z^3 - 3 x y z $

]
#exercise[
+ 计算下列三阶行列式 $ mat(delim: "|", 3, 1, 2; 1, 0, 0; - 1, 0, 0)\,quad mat(delim: "|", 1, a, a^2; 1, b, b^2; 1, c, c^2)\,quad mat(delim: "|", 0, a, b; a, 0, c; b, c, 0)\,quad mat(delim: "|", 1, a, b; - a, 1, c; - b, - c, 1)\,quad mat(delim: "|", a, d, e; 0, b, d; 0, 0, c) $

+ 先计算行列式的值，再比较结果找出各组中两行列式之间的关系：

  + $mat(delim: "|", 1, 4, 7; 2, 5, 8; 3, 6, 9)\,#h(2em) mat(delim: "|", 1, 2, 3; 4, 5, 6; 7, 8, 9)$

  + $mat(delim: "|", a, 1, 2; 1, a, 1; 2, 1, a)\,#h(2em) mat(delim: "|", a k, k, 2 k; 1, a, 1; 2, 1, a)$

]
=== 三阶行列式的性质
为了简化行列式的计算，更好地掌握这一工具，我们进一步学习行列式的性质．

#blk[定理1][
如果把一个行列式的每一行（列），同时改为同号数的列（行），那么，所得的行列式与原行列式的值相等．$ Delta = mat(delim: "|", a_1, b_1, c_1; a_2, b_2, c_2; a_3, b_3, c_3) = mat(delim: "|", a_1, a_2, a_3; b_1, b_2, b_3; c_1, c_2, c_3) = Delta' $

]
#proof[
由对角线法则知 $ Delta & = a_1 b_2 c_3 + a_2 b_3 c_1 + a_3 b_1 c_2 - a_3 b_2 c_1 - a_2 b_1 c_3 - a_1 b_3 c_2\
Delta' & = a_1 b_2 c_3 + a_2 b_3 c_1 + a_3 b_1 c_2 - a_3 b_2 c_1 - a_2 b_1 c_3 - a_1 b_3 c_2 $ #noindent;所以 $Delta = Delta'$

]
由定理1可知：对于行列式的行成立的性质对于列也一定成立；反过来，对于列成立的性质对于行也一定成立，所以今后关于行列式的性质，只需对行证明就行了．

#blk[定理2][
如果把一个行列式的任意两行（列）对调，那么，所得的行列式与原行列式的绝对值相等，符号相反．$ Delta = mat(delim: "|", a_1, b_1, c_1; a_2, b_2, c_2; a_3, b_3, c_3) = - mat(delim: "|", a_2, b_2, c_2; a_1, b_1, c_1; a_3, b_3, c_3) = - Delta' $

]
#proof[
只要以对调第一、二行为例证明结论，其他行（列）对调的证明是类似的．仍由三阶行列式的对角线法则可得 $ Delta & = a_1 b_2 c_3 + a_2 b_3 c_1 + a_3 b_1 c_2 - a_3 b_2 c_1 - a_2 b_1 c_3 - a_1 b_3 c_2\
 & = -\(a_2 b_1 c_3 + a_1 b_3 c_2 + a_3 b_2 c_1 - a_3 b_1 c_2 - a_1 b_2 c_3 - a_2 b_3 c_1\)\
 & = - Delta' $ #noindent;所以 $Delta = - Delta'$

]
#blk[定理3][
如果一个行列式中，有两行（列）元素完全对应相同，那么，这个行列式的值必须等于零．$ Delta = mat(delim: "|", a_1, a_2, a_3; b_1, b_2, b_3; a_1, a_2, a_3) = 0 $

]
#proof[
只要将行列式中相同的两行（列）对调，则所得行列式仍为 $Delta$, 但根据定理2又可知，对调后应得 $- Delta$⁠．于是就有，$ Delta = - Delta $ #noindent;所以可得：$Delta = 0$⁠．

]
#blk[定理4][
如果把一个行列式的某一行（列）的所有元素同乘以任一数 $k$, 那么，所得行列式的值就等于原行列式值的 $k$ 倍．$ Delta' = mat(delim: "|", a_1, b_1, c_1; k a_2, k b_2, k c_2; a_3, b_3, c_3) = k dot.op mat(delim: "|", a_1, b_1, c_1; a_2, b_2, c_2; a_3, b_3, c_3) = k Delta $

]
#proof[
由对角线法则将它们展开、比较，就可直接证明结论 $Delta' = k Delta$ 是正确的．

]
#blk[定理5][
如果在行列式中，某一行（列）各元素有公因子时，则可以把公因子提到行列式的外边．$ mat(delim: "|", k a_1, k b_1, k c_1; a_2, b_2, c_2; a_3, b_3, c_3) = k dot.op mat(delim: "|", a_1, b_1, c_1; a_2, b_2, c_2; a_3, b_3, c_3) $

]
这定理的证明可由定理4直接得出，这里不再重述，但要指出，这个定理可以使行列式计算简化，在应用中很重要．例如，运用它可这样计算行列式：$ mat(delim: "|", - tfrac(1, 2), - tfrac(2, 3), - 1; tfrac(5, 2), tfrac(4, 3), 0; tfrac(9, 2), tfrac(7, 3), 1) & =\(- 1\)times 1 / 2 times 1 / 3 times mat(delim: "|", 1, 2, 1; 5, 4, 0; 9, 7, 1)\
 & = (- 1 / 6) times\(- 7\)= 1 1 / 6 $

#blk[定理6][
如果一个行列式中有一行（列）的元素全为零，则这个行列式的值等于零．$ mat(delim: "|", 0, 0, 0; a_2, b_2, c_2; a_3, b_3, c_3) = 0 $

]
#proof[
由定理5与零的运算特性可得 $ mat(delim: "|", 0, 0, 0; a_2, b_2, c_2; a_3, b_3, c_3) = mat(delim: "|", 0 dot.op a_1, 0 dot.op b_1, 0 dot.op c_1; a_2, b_2, c_2; a_3, b_3, c_3) = 0 dot.op mat(delim: "|", a_1, b_1, c_1; a_2, b_2, c_2; a_3, b_3, c_3) = 0 $

]
#blk[定理7][
如果一个行列式中有两行（或两列）的对应元素成比例，则这个行列式等于零．$ mat(delim: "|", k a_2, k b_2, k c_2; a_2, b_2, c_2; a_3, b_3, c_3) = 0 $

]
#proof[
由定理5及定理3可以知道：$ mat(delim: "|", k a_2, k b_2, k c_2; a_2, b_2, c_2; a_3, b_3, c_3) = k dot.op mat(delim: "|", a_2, b_2, c_2; a_2, b_2, c_2; a_3, b_3, c_3) = k dot.op 0 = 0 $

]
#blk[定理8][
如果行列式某一行（或一列）的元素都是二项式之和的形式，则这个行列式等于两个行列式之和．$ mat(delim: "|", a_1 + a'_1, b_1 + b'_1, c_1 + c'_1; a_2, b_2, c_2; a_3, b_3, c_3) = mat(delim: "|", a_1, b_1, c_1; a_2, b_2, c_2; a_3, b_3, c_3) + mat(delim: "|", a'_1, b'_1, c'_1; a_2, b_2, c_2; a_3, b_3, c_3) $

]
证明要点：用三阶行列式的对角线法则，将左边的行列式展开，再由乘法对加法的分配律、交换律即可证明其结果与右边两个行列式的和展开后的结果是一样的．同学们可以自证．

#blk[定理9][
如果把行列式的某一行（列）所有的元素同乘以同一个数k后，加到另一行（列）的对应元素上，则所得行列式与原行列式是相等的．$ mat(delim: "|", a_1, b_1, c_1; a_2 + a_1 k, b_2 + b_1 k, c_2 + c_1 k; a_3, b_3, c_3) = mat(delim: "|", a_1, b_1, c_1; a_2, b_2, c_2; a_3, b_3, c_3) $

]
#proof[
由定理8可得：$ mat(delim: "|", a_1, b_1, c_1; a_2 + a_1 k, b_2 + b_1 k, c_2 + c_1 k; a_3, b_3, c_3) = mat(delim: "|", a_1, b_1, c_1; a_2, b_2, c_2; a_3, b_3, c_3) + mat(delim: "|", a_1, b_1, c_1; a_1 k, b_1 k, c_1 k; a_3, b_3, c_3) $ #noindent;又由定理7可知：$ mat(delim: "|", a_1, b_1, c_1; a_1 k, b_1 k, c_1 k; a_3, b_3, c_3) = 0 $ #noindent;所以 $ mat(delim: "|", a_1, b_1, c_1; a_2 + a_1 k, b_2 + b_1 k, c_2 + c_1 k; a_3, b_3, c_3) = mat(delim: "|", a_1, b_1, c_1; a_2, b_2, c_2; a_3, b_3, c_3) $

]
有了行列式的这些性质，只要在计算中充分灵活地使用，就会很简捷地得到结果．

#example[
计算行列式$Delta = mat(delim: "|", 234, 3, 4; 125, 2, 5; 476, 7, 6)$的值．

]
#solution[
由定理8可知 $ Delta = mat(delim: "|", 200, 3, 4; 100, 2, 5; 400, 7, 6) + mat(delim: "|", 30, 3, 4; 20, 2, 5; 70, 7, 6) + mat(delim: "|", 4, 3, 4; 5, 2, 5; 6, 7, 6) $ #noindent;又由定理7与定理3可知，第二个行列式与第三个行列式的值均为零，而由定理5可知，第一个行列式的第一列各数的公因数100可提到行列式外边，所以，$ Delta = 100 dot.op mat(delim: "|", 2, 3, 4; 1, 2, 5; 4, 7, 6) = 100 dot.op\(- 8\)= - 800 $

]
#example[
计算行列式$Delta = mat(delim: "|", a, a + 1, a + 2; b, b + 1, b + 2; c, c + 1, c + 2; #none)$的值．

]
#solution[
由定理8可知 $ Delta = mat(delim: "|", a, a, a; b, b, b; c, c, c; #none) + mat(delim: "|", a, a, 2; b, b, 2; c, c, 2; #none) + mat(delim: "|", a, 1, a; b, 1, b; c, 1, c; #none) + mat(delim: "|", a, 1, 2; b, 1, 2; c, 1, 2; #none) $ #noindent;又由定理3可知，前三个行列式的值均为零，而由定理7可知，第四个行列式的值也为零．所以，$Delta = 0$⁠．

]
#example[
利用行列式性质计算：$ mat(delim: "|", 3, 2, 6; 8, 10, 9; 6, - 2, 21)\,#h(2em) mat(delim: "|", 10, - 2, 7; - 15, 3, 2; - 5, 4, 9) $

]
#analyze[
计算三阶行列式的值，除按对角线法则展开进行计算外，一般地可以先利用性质定理5提取某行（列）的公因子将行列式化简；再利用性质定理9将行列式化简为包含较多0作为元素的行列式．这样计算方便、简捷．

]
#solution[
#numbered-align(($mat(delim: "|", 3, 2, 6; 8, 10, 9; 6, - 2, 21)$, $eqph = 2 times 3 times mat(delim: "|", 3, 1, 2; 8, 5, 3; 6, - 1, 7)$, [(定理5)]), ($$, $eqph = 2 times 3 times mat(delim: "|", 3, 1 + 2, 2; 8, 5 + 3, 3; 6, - 1 + 7, 7)$, [(定理9)]), ($$, $eqph = 2 times 3 times mat(delim: "|", 3, 3, 2; 8, 8, 3; 6, 6, 7)$, false), ($$, $eqph = 6 times 0$, [(定理3)]), ($$, $eqph = 0$, false));

#numbered-align(($mat(delim: "|", 10, - 2, 7; - 15, 3, 2; - 5, 4, 9)$, $eqph = - 5 times mat(delim: "|", - 2, - 2, 7; 3, 3, 2; 1, 4, 9)$, [(定理5)]), ($$, $eqph = - 5 times mat(delim: "|", - 2 +\(- 1\)times\(- 2\), - 2, 7; 3 +\(- 1\)times 3, 3, 2; 1 +\(- 1\)times 4, 4, 9)$, [(定理9)]), ($$, $eqph = - 5 times mat(delim: "|", 0, - 2, 7; 0, 3, 2; - 3, 4, 9) = - 5 times\(12 + 63\)= - 375$, false));

]
#example[
利用行列式性质，求证：$ mat(delim: "|", a + b, c, - a; a + c, b, - c; b + c, a, - b) = mat(delim: "|", b, a, c; a, c, b; c, b, a) $

]
#proof[
#numbered-align(($mat(delim: "|", a + b, c, - a; a + c, b, - c; b + c, a, - b)$, $eqph = mat(delim: "|", b, c, - a; a, b, - c; c, a, - b)$, [(定理9)]), ($$, $eqph = - mat(delim: "|", b, c, a; a, b, c; c, a, b)$, [(定理5)]), ($$, $eqph = mat(delim: "|", b, a, c; a, c, b; c, b, a)$, [(定理2)]));

#noindent;所以原等式成立．

]
#exercise[
+ #block(sticky: true)[利用行列式性质，计算：]

  #cols(2)[
  + $mat(delim: "|", 1, 3, 4; 10, 1, 11; 7, 1, 8)$

  + $mat(delim: "|", 3, 49, 4; 2, 28, 4; 4, 35, 8)$

  + $mat(delim: "|", 10, 8, 2; 15, 12, 3; 20, 32, 12)$

  + $mat(delim: "|", 1, 2, 3; 4, 5, 6; 7, 8, 9)$

  + $mat(delim: "|", 2 / 3, 2 / 3, 3; 7, 5, 4; 1 / 3, 1 / 5, 4 / 15)$

  + $mat(delim: "|", - a c, a b, a d; b d, - c d, d e; b f, c f, - e f)$

  + $mat(delim: "|", a, a, a; - a, a, x; - a, - a, x)$

  + $mat(delim: "|", 1, a, b + c; 1, b, c + a; 1, c, a + b)$

  + $mat(delim: "|", 1, 1, 1; 1, 1 + b, 1; 1, 1, 1 + c)$

  + $mat(delim: "|", a - b, b - c, c - a; b - c, c - a, a - b; c - a, a - b, b - c)$

  ]

+ 利用性质，求证下列行列式等式：

  + $mat(delim: "|", 1, 1, 1; p, q, p + q; q, p, 0) = 0$

  + $mat(delim: "|", - x + y + z, x - y + z, x + y - z; x, y, z; - y, - z, - x) = mat(delim: "|", y, z, x; x, y, z; z, x, y)$

]
=== 余子式与代数余子式
我们已经学习了二、三阶行列式及其性质，这些行列式实质上都是由一些数作为它的元素而排列成的正方形，它们都代表着这些元素进行规定的运算后所得的值，而这些运算又是我们很熟悉的四则运算．为了进一步讨论行列式的一般性质和它们之间的关系，我们今后对行列式的各个元素都采用双足码表示，如元素 $a_13$ 表示行列式中第一行、第三列的元素，其中第一足码表示元素所在的行数，第二足码表示元素所在的列数．这样一来，二、三阶行列式可以一般地表示为 $ mat(delim: "|", a_11, a_12; a_21, a_22) quad upright("与") quad mat(delim: "|", a_11, a_12, a_13; a_21, a_22, a_23; a_31, a_32, a_33) $ #noindent;还可以简记为 $ \|a_(i j)\|quad\(i = 1\,2\;thick j = 1\,2\) $ #noindent;与 $ \|a_(i j)\|quad\(i = 1\,2\,3\;thick j = 1\,2\,3\) $

到底二阶行列式与三阶行列式之间有什么联系呢？我们先引进余子式、代数余子式的概念，然后再作讨论．

#blk[定义1][
把一个行列式中某一个元素所在的行和列的所有元素划去以后，将其余元素按它们在原行列式中的顺序排成的低一阶行列式，就叫做原行列式中对应于这一元素的余子式．

]
例如，在行列式$Delta = mat(delim: "|", a_11, a_12, a_13; a_21, a_22, a_23; a_31, a_32, a_33)$中，

对应于元素 $a_21$ 的余子式是二阶行列式$mat(delim: "|", a_12, a_13; a_32, a_33)$

#blk[定义2][
行列式中，元素 $a_(i j)$ 的余子式乘以 $\(- 1\)^(i + j)$ 所得的式子，叫做元素 $a_(i j)$ 的代数余子式，并记作 $A_(i j)$

]
例如，在行列式 $Delta$ 中，元素 $a_21$ 的代数余子式是 $ A_21 =\(- 1\)^(2 + 1) mat(delim: "|", a_12, a_13; a_32, a_33) = - mat(delim: "|", a_12, a_13; a_32, a_33) $

比较定义1与2可以发现，某一元素的代数余子式与余子式就差一个符号，这个符号由这一元素所在的行和列数而定：若所在行与列数之和为偶数，取正号；若所在行与列数之和为奇数，取负号．以三阶行列式为例，它的各个元素所对应的代数余子式的符号可由下图表示：$ mat(delim: "|", +, -, +; -, +, -; +, -, +) $

#example[
试写出行列式$Delta = mat(delim: "|", 1, 2, 5; 8, 9, 0; - 2, 3, 7)$中，各元素的代数余子式，并求出值来．

]
#solution[
由代数余子式的定义，可知：

#cols(2)[
$ A_11 & =\(- 1\)^(1 + 1) mat(delim: "|", 9, 0; 3, 7) = 63\
A_12 & =\(- 1\)^(1 + 2) mat(delim: "|", 8, 0; - 2, 7) = - 56\
A_13 & =\(- 1\)^(1 + 3) mat(delim: "|", 8, 9; - 2, 3) = 42\
A_21 & =\(- 1\)^(2 + 1) mat(delim: "|", 2, 5; 3, 7) = 1\
A_22 & =\(- 1\)^(2 + 2) mat(delim: "|", 1, 5; - 2, 7) = 17\
A_23 & =\(- 1\)^(2 + 3) mat(delim: "|", 1, 2; - 2, 3) = - 7\
A_31 & =\(- 1\)^(3 + 1) mat(delim: "|", 2, 5; 9, 0) = - 45\
A_32 & =\(- 1\)^(3 + 2) mat(delim: "|", 1, 5; 8, 0) = 40\
A_33 & =\(- 1\)^(3 + 3) mat(delim: "|", 1, 2; 8, 9) = - 7 $

]
]
有了代数余子式的概念，就可以通过下面两个性质定理进一步了解三阶行列式与二阶行列式的联系．

#blk[定理10][
行列式等于它的任意一行（列）的所有各元素与它们各自的代数余子式的乘积的和．这就是说，行列式可以按其中一行（列）的元素展开．

如三阶行列式$Delta = mat(delim: "|", a_11, a_12, a_13; a_21, a_22, a_23; a_31, a_32, a_33)$可以展开成：$ Delta & = a_11 dot.op A_11 + a_12 dot.op A_12 + a_13 dot.op A_13\
 & = a_21 dot.op A_21 + a_22 dot.op A_22 + a_23 dot.op A_23\
 & = a_31 dot.op A_31 + a_32 dot.op A_32 + a_33 dot.op A_33 $

]
#proof[
我们只证明，$Delta = a_11 A_11 + a_12 A_12 + a_13 A_13$⁠，其余证明类同，由对角线法则可知 $ Delta & = a_11 a_22 a_33 + a_21 a_32 a_13 + a_31 a_12 a_23 - a_11 a_32 a_23 - a_21 a_12 a_33 - a_31 a_22 a_13\
 & = a_11\(a_22 a_33 - a_32 a_23\)- a_12\(a_21 a_33 - a_31 a_23\)+ a_13\(a_21 a_32 - a_31 a_22\) $ #noindent;但是 $ A_11 = a_22 a_33 - a_32 a_23\,quad A_12 = -\(a_21 a_33 - a_31 a_23\)\,quad A_13 = a_21 a_32 - a_31 a_22 $ #noindent;所以 $Delta = a_11 A_11 + a_12 A_12 + a_13 A_13$

]
这就启示我们，三阶行列式可以转化为二阶行列式来计算，如果结合前边所学定理9的性质，在实际应用中，将显得更具优越性．

#example[
计算行列式 $ mat(delim: "|", 1, 3, 5; 2, 4, 8; 3, 0, - 1)\,#h(2em) mat(delim: "|", 3, 1, - 2; 5, - 2, 7; 3, 4, 2) $

]
#solution[
#numbered-align(($mat(delim: "|", 1, 3, 5; 2, 4, 8; 3, 0, - 1)$, $eqph = mat(delim: "|", 1, 3, 5; 2 +\(- 2\)dot.op 1, 4 +\(- 2\)dot.op 3, 8 +\(- 2\)dot.op 5; 3 +\(- 3\)dot.op 1, 0 +\(- 3\)dot.op 3, - 1 +\(- 3\)dot.op 5)$, [(定理9)]), ($$, $eqph = mat(delim: "|", 1, 3, 5; 0, - 2, - 2; 0, - 9, - 16)$, false), ($$, $eqph = 1 dot.op mat(delim: "|", - 2, - 2; - 9, - 16) - 0 dot.op mat(delim: "|", 3, 5; - 9, - 16) + 0 dot.op mat(delim: "|", 3, 5; - 2, - 2)$, [(定理10)]), ($$, $eqph = 32 - 18 = 14$, false));

#numbered-align(($mat(delim: "|", 3, 1, - 2; 5, - 2, 7; 3, 4, 2)$, $eqph = mat(delim: "|", 3 +\(- 3\)dot.op 1, 1, - 2 + 2 times 1; 5 +\(- 3\)dot.op\(- 2\), - 2, 7 + 2 times\(- 2\); 3 +\(- 3\)dot.op 4, 4, 2 + 2 times 4)$, [(定理9)]), ($$, $eqph = mat(delim: "|", 0, 1, 0; 11, - 2, 3; - 9, 4, 10)$, false), ($$, $eqph = 0 mat(delim: "|", - 2, 3; 4, 10) - 1 dot.op mat(delim: "|", 11, 3; - 9, 10) + 0 dot.op mat(delim: "|", 11, - 2; - 9, 4)$, [(定理10)]), ($$, $eqph = -\(110 + 27\)= - 137$, false));

]
#blk[定理11][
行列式某一行（列）的所有各元素与另一行（列）对应元素的代数余子式的乘积的和恒等于零．

]
#proof[
我们只证明在三阶行列式中，第一行的各元素与第二行各对应元素的代数余子式的乘积和恒等于零，即 $ a_11 A_21 + a_12 A_22 + a_13 A_23 = 0 $ #noindent;由定理10可知，$ a_11 A_21 + a_12 A_22 + a_13 A_23 & = - a_11 mat(delim: "|", a_12, a_13; a_32, a_33) + a_12 mat(delim: "|", a_11, a_13; a_31, a_33) - a_13 mat(delim: "|", a_11, a_12; a_31, a_32)\
 & = mat(delim: "|", a_11, a_12, a_13; a_11, a_12, a_13; a_31, a_32, a_33) $ #noindent;又由定理3可知，$mat(delim: "|", a_11, a_12, a_13; a_11, a_12, a_13; a_31, a_32, a_33) = 0$

所以 $a_11 A_21 + a_12 A_22 + a_13 A_23 = 0$

]
综合定理10、定理11的内容，我们可以得到三阶行列式的一个重要等式，这就是 $ a_(i 1) A_(k 1) + a_(i 2) A_(k 2) + a_(i 3) A_(k 3) = display(cases(Delta & quad i = k, 0 & quad i eq.not k)) $ #noindent;以及 $ a_(1 j) A_(1 k) + a_(2 j) A_(2 k) + a_(3 j) A_(3 k) = display(cases(Delta & quad j = k, 0 & quad j eq.not k)) $ #noindent;这些重要等式，将在三元线性方程组的求解公式中起重要作用．

#exercise[
+ 试应用定理9、10，计算下列行列式 $ mat(delim: "|", 2, 1, 3; 5, 0, 7; 4, - 3, - 2) #h(2em) mat(delim: "|", 5, 0, - 5; 3, 2, 7; - 4, 3, 9)\
  mat(delim: "|", - 6, 5, 2; 2, 1, - 2; 2, 7, 4) #h(2em) mat(delim: "|", 2, 6, 7; - 3, 8, 8; - 5, 2, 3) #h(2em) mat(delim: "|", 1, x, y; x, y, 1; y, 1, x) $

+ 解下列方程 $ mat(delim: "|", 2, x + 2, 6; 1, x, 3; 1, 3, x) = 0\,#h(2em) mat(delim: "|", a, a, x; 1, 1, 1; b, x, b) = 0 $

+ 求证下列等式

  + $mat(delim: "|", 1, 1, 1; a, b, c; b c, c a, a b) =\(a - b\)\(b - c\)\(c - a\)$

  + $mat(delim: "|", a, b, b; b, a, b; b, b, a) =\(a + 2 b\)\(a - b\)^2$

  + $mat(delim: "|", 1, p, p^3; 1, q, q^3; 1, r, r^3) =\(p - q\)\(q - r\)\(r - p\)\(p + q + r\)$

]
=== 三元线性方程组的公式解及讨论
三元线性方程组的一般形式可以写成

#numcases($\(upright("II")\)$, $a_11 x_1 + a_12 x_2 + a_13 x_3 = b_1$, $a_21 x_1 + a_22 x_2 + a_23 x_3 = b_2$, $a_31 x_1 + a_32 x_2 + a_33 x_3 = b_3$);

#noindent;这时，我们仍称三阶行列式 $ Delta = mat(delim: "|", a_11, a_12, a_13; a_21, a_22, a_23; a_31, a_32, a_33; #none) $ #noindent;为方程组 (II) 的系数行列式，并把这个行列式中各个元素 $a_(i j)$ 的代数余子式表为 $A_(i j)$⁠．

利用关于行列式性质的定理10、定理11，可以导出方程组 (II) 的解：

分别以 $A_11$⁠、$A_21$⁠、$A_31$⁠、乘以方程 (2.26), (2.27), (2.28), 得 $ display(cases(a_11 A_11 x_1 + a_12 A_11 x_2 + a_13 A_11 x_3 = b_1 A_11, a_21 A_21 x_1 + a_22 A_21 x_2 + a_23 A_21 x_3 = b_2 A_21, a_31 A_31 x_1 + a_32 A_31 x_2 + a_33 A_31 x_3 = b_3 A_31)) $ #noindent;再将三式相加，得 $  & \(a_11 A_11 + a_21 A_21 + a_31 A_31\)x_1 +\(a_12 A_11 + a_22 A_21 + a_32 A_31\)x_2\
 & #h(2em) +\(a_13 A_11 + a_23 A_21 + a_33 A_31\)x_3\
 & = b_1 A_11 + b_2 A_21 + b_3 A_31 $ #noindent;显然，这个等式的右边，正好是一个三阶行列式 $ Delta_1 = mat(delim: "|", b_1, a_12, a_13; b_2, a_22, a_23; b_3, a_32, a_33; #none) $ #noindent;的展开式，而这个行列式就是在 $Delta$ 中以方程组右端的常数代替同一方程中 $x_1$ 的系数而得出的．在这个等式的左边，由定理10及11可知：$ a_11 A_11 + a_21 A_21 + a_31 A_31 & = Delta\
a_12 A_11 + a_22 A_21 + a_32 A_31 & = 0\
a_13 A_11 + a_23 A_21 + a_33 A_31 & = 0 $ #noindent;从而，上面的等式就可写成：$Delta dot.op x_1 = Delta_1$

同理，用 $A_12$, $A_22$, $A_32$ 分别乘以第一、二、三个方程，然后相加，并设 $ Delta_2 = mat(delim: "|", a_11, b_1, a_13; a_21, b_2, a_23; a_31, b_3, a_33; #none) $ #noindent;可得：$Delta dot.op x_2 = Delta_2$

用 $A_13$, $A_23$, $A_33$ 分别乘以第一、二、三个方程，然后相加，并设 $ Delta_3 = mat(delim: "|", a_11, a_12, b_1; a_21, a_22, b_2; a_31, a_32, b_3; #none) $ #noindent;可得：$Delta dot.op x_3 = Delta_3$

因此，便得到一个新的方程组 $ upright("(III)") display(cases(Delta dot.op x_1 = Delta_1, Delta dot.op x_2 = Delta_2, Delta dot.op x_3 = Delta_3)) $

方程组 (III) 是由方程组 (II) 的各方程乘以常数后相加而得到的，所以，(II) 的解必能满足 (III)．

但方程组 (III) 的解，是否存在？如果存在是否也能是 (II) 的解？我们可对 (III) 分三种情形分别讨论于后：

一、若 $Delta eq.not 0$⁠，则方程组 (III) 有唯一解#numbered-eq($ display(cases(x_1 = Delta_1\/Delta, x_2 = Delta_2\/Delta, x_3 = Delta_3\/Delta)) $);#noindent;可以证明，(2.29) 也是方程组 (II) 的解；将 (2.29) 代入方程组 (II) 的方程 (2.26), 得

#numbered-align(($upright("左边")$, $eqph = a_11 Delta_1 / Delta + a_12 Delta_2 / Delta + a_13 Delta_3 / Delta$, false), ($$, $eqph = 1 / Delta (a_11 Delta_1 + a_12 Delta_2 + a_13 Delta_3)$, false), ($$, $eqph = 1 / Delta #scale(x: 120%, y: 120%)[$\[$] a_11\(b_1 A_11 + b_2 A_21 + b_3 A_31\)+ a_12\(b_1 A_12 + b_2 A_22 + b_3 A_32\)$, false), ($$, $#h(2em) #h(2em) + a_13\(b_1 A_13 + b_2 A_23 + b_3 A_33\)#scale(x: 120%, y: 120%)[$\]$]$, false), ($$, $eqph = 1 / Delta #scale(x: 120%, y: 120%)[$\[$] b_1\(a_11 A_11 + a_12 A_12 + a_13 A_13\)+ b_2\(a_11 A_21 + a_12 A_22 + a_13 A_23\)$, false), ($$, $#h(2em) #h(2em) + b_3\(a_11 A_31 + a_12 A_32 + a_13 A_33\)#scale(x: 120%, y: 120%)[$\]$]$, false), ($$, $eqph = 1 / Delta #scale(x: 120%, y: 120%)[$\[$] b_1 Delta + b_2 0 + b_3 0 #scale(x: 120%, y: 120%)[$\]$]$, [(定理10, 11)]), ($$, $eqph = b_1 = upright("右边")$, false));

这就是说，满足方程组 (II) 的方程 (2.26); 同理可以证明 (2.29) 也是满足方程组 (II) 的方程 (2.27) 与 (2.28). 因此，(2.29) 是方程组 (II) 的一个解．

综合上述，我们可以得到一个重要结论：如果线性方程组 (II) 的系数行列式 $Delta eq.not 0$, 那么，这个线性方程组有且只有一个解 $ x_1 = Delta_1 / Delta\,#h(2em) x_2 = Delta_2 / Delta\,#h(2em) x_3 = Delta_3 / Delta $

其中 $Delta_1$, $Delta_2$, $Delta_3$, 是 $Delta$ 中把未知数 $x_1\,x_2\,x_3$ 的系数列分别换成方程组 (II) 的常数项列所成的行列式．这一结论，对二元线性方程组 (I) 显然也是成立的，实际上，这一结论对 $n$ 元线性方程组都是成立的．一般把这一结论称为#strong[克莱姆法则]．利用这一法则，可以由系数行列式判定方程组是否有唯一解．若有，还可以求出解来．

#example[
解方程组 $ display(cases(3 x + 7 y - 5 z = 19, x - 3 y + 2 z = 3, 5 x - 11 y - 8 z = - 13)) $

]
#solution[
因为 $ Delta = mat(delim: "|", 3, 7, - 5; 1, - 3, 2; 5, - 11, - 8) = 244 eq.not 0 $ #noindent;所以方程组有唯一解．由于 $ Delta_1 & = mat(delim: "|", 19, 7, - 5; 3, - 3, 2; - 13, - 11, - 8) = 1220\
Delta_2 & = mat(delim: "|", 3, 19, - 5; 1, 3, 2; 5, - 13, - 8) = 488\
Delta_3 & = mat(delim: "|", 3, 7, 19; 1, - 3, 3; 5, - 11, - 13) = 488 $ #noindent;所以方程组的唯一解是 $ x = Delta_1 / Delta = 5\,#h(2em) y = Delta_2 / Delta = 2\,#h(2em) z = Delta_3 / Delta = 2 $ #noindent;即原方程组的解集为 $\{\(x\,y\,z\)\} = \{\(5\,2\,2\)\}$

]
二、若 $Delta = 0$⁠，且 $Delta_1\,Delta_2\,Delta_3$ 中至少有一个不为零，则方程组 (III) 无解，从而方程组 (II) 也无解．

#example[
解方程组 $ display(cases(3 x - y + 5 z = 16, x + 2 y + 3 z = 14, 5 x + 3 y + 11 z = 40)) $

]
#solution[
因为$Delta = mat(delim: "|", 3, - 1, 5; 1, 2, 3; 5, 3, 11) = 0$⁠，且$Delta_1 = mat(delim: "|", 16, - 1, 5; 14, 2, 3; 40, 3, 11) = 52 eq.not 0$

所以原方程组无解，其解集为 $nothing$⁠．

]
三、若 $Delta = 0$, 且 $Delta_1 = Delta_2 = Delta_3 = 0$, 这时方程组 (III) 有无限多个解，但方程组 (II) 的解的情况却还不能确定，它可能无解，也可能有无限多个解．

我们通过以下三个例题来说明：

#example[
解方程组 $ display(cases(x + y + z = 1, x + y + z = 2, x + y + z = 3)) $

]
#solution[
在这一方程组中，显然有 $Delta = Delta_1 = Delta_2 = Delta_3 = 0$（因为这四个行列式中都至少有两列元素相同）；可是，这又是一个矛盾方程组，因而无解．

事实上，由于这个方程组的系数行列式的各个元素的代数余子式 $A_(i j)$ 全等于零，因而，不论原方程组是否有解，用代数余子式相乘各方程后再相加的办法消元，得到方程组 $ display(cases(Delta x = Delta_1, Delta y = Delta_2, Delta z = Delta_3)) arrow.r.double quad display(cases(0 x = 0, 0 y = 0, 0 z = 0)) $ #noindent;总是有无限多个解的．但对原方程组的解的情况，却无法判定．

]
#example[
解方程组 $ display(cases(3 x - y + 5 z = 16, x + 2 y + 3 z = 14, 5 x + 3 y + 11 z = 44)) $

]
#solution[
可以算出 $Delta = Delta_1 = Delta_2 = Delta_3 = 0$⁠，同时还可看出，方程组中第二个方程两边乘以2后与第一个方程相加正好是第三个方程．这说明原方程组的三个方程只有两个是独立的．事实上，凡满足第一、二两个方程的解，一定也满足第三个方程．因而，原方程组可以改写成 $ display(cases(3 x - y + 5 z = 16, x + 2 y + 3 z = 14)) arrow.r.double quad display(cases(3 x - y = 16 - 5 z, x + 2 y = 14 - 3 z)) $ #noindent;把未知数 $z$ 看作参数（可任意取值），令 $z = t$, 进一步解二元线性方程组 $ display(cases(3 x - y = 16 - 5 t, x + 2 y = 14 - 3 t)) $ #noindent;得出：$ x = 1 / 7\(46 - 13 t\)\,#h(2em) y = 1 / 7\(26 - 4 t\)\,#h(2em) z = t $

由于 $t$ 的任意性，因而原方程组有无限多个解，其解集可以表为 $ lr(\{ \( x \, y \, z \) \}) = lr(\{ (frac(46 - 13 t, 7) \, frac(26 - 4 t, 7) \, t) #scale(x: 180%, y: 180%)[$\|$] t upright("为任意值") \}) $

]
应该指出，这个方程组的解的形式不是唯一的，同样可以将 $y$ 或 $x$ 看作参数，得出另外两种解的表达形式，但实际效果是相同的，即解集是相等的．

#example[
解方程组 $ display(cases(x + y + z = 2, 2 x + 2 y + 2 z = 4, 3 x + 3 y + 3 z = 6)) $

]
#solution[
因为行列式 $Delta$ 的各元素的代数余子式都等于零，显然有 $Delta = Delta_1 = Delta_2 = Delta_3 = 0$, 由于后两个方程都可直接由第一个方程推出，所以，这个方程组只有一个方程是独立的，事实上，凡是满足第一个方程的任一个解，也满足后两个方程．第一方程可写成 $x = 2 - y - z$⁠．

令 $y = R$, $z = t$, 就有 $ display(cases(x = 2 - R - t, y = R, z = t)) $ #noindent;$t\,R$ 可取任意值，由于 $R\,t$ 的任意性，方程组有无限多个解．

这里的“无限多个解”与例2.20的“无限多个解”是有差别的，例2.20的解的表达式只含一个参数 $t$, 这里则含有两个参数 $R$ 和 $t$⁠．

]
#exercise[
判断下列方程组解的情况，若有唯一解，应用克莱姆法则求出来；若有无限多个解，用参数形式表示出来：

#cols(2)[
+ $display(cases(x - 2 y + z = 0, 3 x + y - 2 z = 0, 7 x + 6 y + 7 z = 100))$

+ $display(cases(3 x - 2 y + 3 z = 11, 4 x - 3 y + 2 z = 9, 5 x - 4 y + z = 7))$

+ $display(cases(2 x + 3 y + 4 z = 2, 3 x + 5 y + 7 z = - 3, x + 2 y + 3 z = 4))$

+ $display(cases(x - 3 y + z = 6, 2 x + y + 2 z = - 2, 4 x - 5 y + 6 z = 10))$

+ $display(cases(x - y + z = 1, 2 x - 2 y + 2 z = 2, 1 / 4 x - 1 / 4 y + 1 / 4 z = 1 / 4))$

+ $display(cases(5 x + 2 y + 3 z - 2 = 0, 3 x - 4 y + 2 z - 1 = 0, 19 x - 7 y + 11 z = 7))$

]
]
#heading(level: 2, numbering: none, supplement: [toc-sub])[习题2.3]

+ #block(sticky: true)[用对角线法则计算下列行列式：]

  #cols(2)[
  + $mat(delim: "|", 3, - 5, 1; 2, 3, - 6; - 7, 2, 4)$

  + $mat(delim: "|", 1, 2, 3; 2, 1, 3; 3, 1, 2)$

  + $mat(delim: "|", a, b, c; 0, d, e; 0, 0, f)$

  + $mat(delim: "|", 0, cos alpha, cos beta; - cos alpha, 0, cos gamma; - cos beta, - cos gamma, 0)$

  + $mat(delim: "|", a, h, g; h, b, f; g, f, c)$

  + $mat(delim: "|", x, y, x + y; y, x + y, x; x + y, x, y)$

  ]

+ #block(sticky: true)[解方程：]

  #cols(2)[
  + $mat(delim: "|", 0, x - 1, 1; x - 1, 0, x - 2; 1, x - 2, 0) = 0$

  + $mat(delim: "|", x - 1, 1, 1; 1, x - 1, 1; 1, 1, x - 1) = 0$

  + $mat(delim: "|", 2, x + 4, 5; 1, x, 0; - 7 x, 3, 10) = 0$

  + $mat(delim: "|", 1, 1, 1; x, a, b; x^2, a^2, b^2) = 0$

  ]
  #block[
  #set enum(numbering: enum-at(2, none, start: 5))
  + $mat(delim: "|", x, a, b + c; x, a + b, c; a + b, b - c, a + c) = 0\,#h(2em) b\(a + b\)eq.not 0$
  ]

+ 求证:

  + $mat(delim: "|", 1, sin 3 theta, cos 3 theta; 1, sin 2 theta, cos 2 theta; 1, sin theta, cos theta) = 2 sin theta\(1 - cos theta\)$

  + $mat(delim: "|", 2 cos theta, 1, 0; 1, 2 cos theta, 1; 0, 1, 2 cos theta) = frac(sin 4 theta, sin theta)\,#h(2em) theta eq.not k pi\,k in bb(Z)$

  + $mat(delim: "|", \(q + r\)^2, p q, p r; p q, \(r + p\)^2, q r; p r, q r, \(p + q\)^2) = 2 p q r (p + q + r)^3$

+ #block(sticky: true)[利用行列式的性质，计算：]

  #cols(2)[
  + $mat(delim: "|", 10, 8, - 2; 15, 12, - 3; 25, 32, 7)$

  + $mat(delim: "|", 1 / 2, 1 / 2, 1 / 4; 12, 24, 36; - 5, - 4, - 3)$

  + $mat(delim: "|", 554, 427, 327; 586, 443, 343; 711, 504, 404)$

  + $mat(delim: "|", - a b, b d, b f; a c, - c d, c f; a e, d e, - e f)$

  + $mat(delim: "|", a, b, c; 2 a, 3 a + 2 b, 4 a + 3 b + 2 c; 3 a, 6 a + 3 b, 10 a + 9 b + 3 c)$

  ]

+ 利用行列式性质, 求证:

  + $mat(delim: "|", a, a + 3 x, a + 6 x; a + x, a + 4 x, a + 7 x; a + 2 x, a + 5 x, a + 8 x) = 0$

  + $mat(delim: "|", a_1, b_1, c_1; a_2, b_2, c_2; a_3, b_3, c_3) = mat(delim: "|", c_3, b_3, a_3; c_2, b_2, a_2; c_1, b_1, a_1)$

  + $mat(delim: "|", 0, a m, - a b n; - e, 0, b n; e, - m, 0) = 0$

  + $mat(delim: "|", a_1, b_1, a_1 x + b_1 y + c_1; a_2, b_2, a_2 x + b_2 y + c_2; a_3, b_3, a_3 x + b_3 y + c_3) = mat(delim: "|", a_1, b_1, c_1; a_2, b_2, c_2; a_3, b_3, c_3)$

  + $mat(delim: "|", 0, \(a - b\)^3, \(a - c\)^3; \(b - a\)^3, 0, \(b - c\)^3; \(c - a\)^3, \(c - b\)^3, 0) = 0$

+ 求证: $ mat(delim: "|", cos theta, cos 3 theta, sin 3 theta; cos theta, cos theta, sin theta; sin theta, sin theta, cos theta) = sin theta sin 4 theta $

+ 试指出下列行列式变形中的错误, 并改正过来:

  + $mat(delim: "|", a_1, b_1; a_2, b_2) = mat(delim: "|", a_1 + k a_2, b_1 + k b_2; a_2 - ell a_1, b_2 - ell b_1)$

  + $mat(delim: "|", a_1, b_1, c_1; a_2, b_2, c_2; a_3, b_3, c_3) = mat(delim: "|", a_1, b_1, k a_1 + ell c_1; a_2, b_2, k a_2 + ell c_2; a_3, b_3, k a_3 + ell c_3)$

+ 证明行列式 $Delta$ 中，第二列元素与第一列对应元素的代数余子式的乘积的和为零．

+ 证明三阶行列式的值与按某一行（列）展开时所选择的行（列）无关．

+ #block(sticky: true)[解下列方程组：]

  #cols(2)[
  + $display(cases(2 x + y + 3 z - 4 = 0, 3 x - 2 y - 5 z = 11, 1 - 5 x + 4 y + z = 0))$

  + $display(cases(4 x - y - 2 z = 4, 2 x + y - 4 z = 8, x + 2 y + z - 1 = 0))$

  + $display(cases(x - y + z = a, x + y - z = b, - x + y + z = c))$

  + $display(cases(b x - a y = - 2 a b, - 2 c y + 3 b z = b c, c x + a z = 0))$

    $\(a b c eq.not 0\)$

  ]

+ #block(sticky: true)[当参数 $a\,b\,c$ 取何值时，下列方程组有唯一解]

  #cols(2)[
  + $display(cases(x + y + t z = 1, x + t y + z = t, t x + y + z = t^2))$

  + $display(cases(a y + b z = c, c x + a z = b, b x + c z = a))$

  ]

+ 当 (1) $lambda = 1$, (2) $lambda = - 2$, (3) $lambda eq.not 1$ 且 $lambda eq.not - 2$ 时, 分别解方程组 $ display(cases(x + y + lambda z = lambda - 3, x + lambda y + z = - 2, lambda x + y + z = - 2)) $

+ 当a取何值时，下列方程组有唯一解；无解；有无限多个解？$ display(cases(3 a x +\(2 a + 1\)y +\(a + 1\)z = a, \(2 a - 1\)x +\(2 a - 1\)y +\(a - 2\)z = a + 1, \(4 a - 1\)x + 3 a y + 2 a z = 1 .)) $

+ #lead-list(none, 2)[
  + 试试看，请你自行设计一个数字系数的三元线性方程组，使它有无限多个解，并且解的表达式含有两个参数．

  + 改动你设计的方程组的一个数字，使这个方程组无解；

  + 改动你设计的方程组的另一个数字，使方程组仍有无限多个解，但解的表达式中只含有一个参数．
  ]

== 四阶行列式与四元线性方程组
我们已经学了二阶、三阶行列式的概念、性质和应用．

从形式上看，行列式只是由一些数排成正方形，两边画上一条竖线而组成，从其实际意义上看，都有明确的定义：

二阶行列式：$mat(delim: "|", a_1, b_1; a_2, b_2) = a_1 b_2 - a_2 b_1$

三阶行列式：$mat(delim: "|", a_1, b_1, c_1; a_2, b_2, c_2; a_3, b_3, c_3; #none) = a_1 b_2 c_3 + a_2 b_3 c_1 + a_3 b_1 c_2 - a_3 b_2 c_1 - a_2 b_1 c_3 - a_1 b_3 c_2$

这样看来，对于四阶行列式，甚至更高阶的行列式的定义就会越来越繁，需要另辟新的途径．

=== 四阶行列式及其性质
回顾上一节所学行列式的性质定理10, 可以知道，一个三阶行列式可以用三个二阶行列式来表示，如 $ mat(delim: "|", a_11, a_12, a_13; a_21, a_22, a_23; a_31, a_32, a_33) & =\(- 1\)^(1 + 1) dot.op a_11 mat(delim: "|", a_22, a_23; a_32, a_33)\
 & #h(2em) +\(- 1\)^(2 + 1) a_21 mat(delim: "|", a_12, a_13; a_32, a_33) +\(- 1\)^(3 + 1) dot.op a_31 mat(delim: "|", a_12, a_13; a_22, a_23) $

由于二阶行列式已有确定定义，因而三阶行列式也就完全可用上述等式右边的式子来定义，这样定义的结果和曾经有的对角线法则定义是一致的．而这种用低一阶的行列式来定义高一阶行列式的方法更有普遍性．

仿照这样，我们可以用三阶行列式来给出四阶行列式的定义：用四个三阶行列式分别与四个数相乘积的代数和，就叫做一个四阶行列式．即 $ mat(delim: "|", a_11, a_12, a_13, a_14; a_21, a_22, a_23, a_24; a_31, a_32, a_33, a_34; a_41, a_42, a_43, a_44; #none) & =\(- 1\)^(1 + 1) dot.op a_11 mat(delim: "|", a_22, a_23, a_24; a_32, a_33, a_34; a_42, a_43, a_44; #none) +\(- 1\)^(2 + 1) dot.op a_21 mat(delim: "|", a_12, a_13, a_14; a_32, a_33, a_34; a_42, a_43, a_44; #none)\
 & +\(- 1\)^(3 + 1) a_31 mat(delim: "|", a_12, a_13, a_14; a_22, a_23, a_24; a_42, a_43, a_44; #none) +\(- 1\)^(4 + 1) dot.op a_41 mat(delim: "|", a_12, a_13, a_14; a_22, a_23, a_24; a_32, a_33, a_34; #none) $

由每个三阶行列式有6项，每一项是三个元素的乘积，可知四阶行列式有24项，每一项是四个元素的乘积．在每一项的四个元素中，各行都有一个元素且只有一个元素出现，各列也都有一个元素且仅有一个元素出现．

类似地，还可以用四阶行列式来定义五阶行列式，……．一般地说，可以用 $n$ 阶行列式来定义 $n + 1$ 阶行列式．

必须注意，如果把对二阶行列式与三阶行列式用到的对角线法则用到四阶行列式来，就只能得到8项而不是24项．可见对角线法则不能推广到四阶行列式以及高阶行列式．

#example[
计算行列式$Delta = mat(delim: "|", 1, 2, 0, 0; 2, - 1, 3, 4; 0, 5, 1, 7; - 1, 0, 0, 3)$

]
#solution[
按照四阶行列式的定义 $ Delta & = 1 mat(delim: "|", - 1, 3, 4; 5, 1, 7; 0, 0, 3) - 2 mat(delim: "|", 2, 0, 0; 5, 1, 7; 0, 0, 3) + 0 -\(- 1\)mat(delim: "|", 2, 0, 0; - 1, 3, 4; 5, 1, 7; #none)\
 & = - 48 - 12 + 34 = - 26 $

]
对于这样定义的四阶行列式中的各个元素，可以和三阶行列式中的各个元素一样的定义各个元素的余子式及代数余子式，并仍把元素的代数余子式记作 $ A_(i j) #h(2em)\(i = 1\,2\,3\,4 quad j = 1\,2\,3\,4\) $

可以证明，第三节中关于三阶行列式的性质定理1---11, 对于四阶行列式（高阶行列式）都是成立的．

这些定理是：

#blk[定理1][
把（四阶）行列式的行改为同号数的列，列改为同号数的行，行列式的值不变．

]
#blk[定理2][
把（四阶）行列式的两行元素（或两列）对调，行列式的绝对值不变，但符号改变．

]
#blk[定理3][
有两行（或两列）元素相同的（四阶）行列式等于零．

]
#blk[定理4][
把一个（四阶）行列式的某一行（某一列）的所有元素同乘以某一个数 $k$ 的结果，等于以数 $k$ 乘这个行列式．

]
#blk[定理5][
一个（四阶）行列式某一行（或某一列）各元素的公因子可以提到行列式外边．

]
#blk[定理6][
如果一个（四阶）行列式中有一行（或一列）各元素全为零，则这个行列式等于零．

]
#blk[定理7][
如果一个（四阶）行列式中有两行（或两列）的对应元素成比例，则这个行列式等于零．

]
#blk[定理8][
如果（四阶）行列式中某一行（或某一列）都是两个数的和，则这个行列式就等于两个行列式的和，这两个行列式分别以这两个数中的前一个数与后一个数为这一行（这一列）的元素，而除去这一行（这一列）以外，这两个行列式的其他各行（其他各列）与原来行列式的对应各行（对应各列）都是相同的．

]
#blk[定理9][
把（四阶）行列式的某一行（或某一列）所有的元素，乘以同一个数后，再加到另一行（另一列）的对应元素上，行列式的值不变．

]
#blk[定理10][
（四阶）行列式等于它的任意一行（或列）的各个元素与它们的对应代数余子式的乘积的和．

]
#blk[定理11][
（四阶）行列式某一列（或某一行）的各元素与另一列（或另一行）的对应元素的代数余子式的乘积的和恒等于零．

]
定理10与11同样可以结合起来表示为 $ a_(1 i) A_(1 k) + a_(2 i) A_(2 k) + a_(3 i) A_(3 k) + a_(4 i) A_(4 k) = display(cases(Delta & quad i = k, 0 & quad i eq.not k)) $ #noindent;或者 $ a_(j 1) A_(k 1) + a_(j 2) A_(k 2) + a_(j 3) A_(k 3) + a_(j 4) A_(k 4) = display(cases(Delta & quad j = k, 0 & quad j eq.not k)) $

以上这些定理的证明完全与第三节中相应的定理证明类似，只要注意：由四阶行列式的定义可首先导出定理10, 验证行列式可以按任一行（或列）的元素展开．再据此来证明其余定理．这里仅举一例，其余同学们可自行练习．

#example[
试证明定理4．

]
#proof[
设四阶行列式 $Delta =\|a_(i j)\|$ $\(i = 1\,2\,3\,4\;thick j = 1\,2\,3\,4\)$⁠，并设 $Delta$ 的第 $i$ 行的所有元素都乘以 $k$ 就得到行列式 $Delta'$⁠，我们要证明 $ Delta' = k dot.op Delta $ #noindent;由于 $ Delta = mat(delim: "|", \|, \|, \|, \|; a_(i 1), a_(i 2), a_(i 3), a_(i 4); \|, \|, \|, \|; #none)\,#h(2em) Delta' = mat(delim: "|", \|, \|, \|, \|; k a_(i 1), k a_(i 2), k a_(i 3), k a_(i 4); \|, \|, \|, \|; #none) $ #noindent;并且将这两个行列式都按第 $i$ 行展开，根据定理10可得 $ Delta & = a_(i 1) A_(i 1) + a_(i 2) A_(i 2) + a_(i 3) A_(i 3) + a_(i 4) A_(i 4)\
Delta' & = k a_(i 1) A_(i 1) + k a_(i 2) A_(i 2) + k a_(i 3) A_(i 3) + k a_(i 4) A_(i 4)\
 & = k\(a_(i 1) A_(i 1) + a_(i 2) A_(i 2) + a_(i 3) A_(i 3) + a_(i 4) A_(i 4)\)\
 & = k Delta $ #noindent;利用行列式的性质，可以有效的简化计算．

]
#example[
计算行列式$mat(delim: "|", 2, 3, 1, - 1; 2, 0, 0, 3; 4, 1, 0, 1; - 1, 2, - 2, 1)$

]
#analyze[
由于第三列的元素中出现的零较多，且非零元素中有1, 所以选择按第三列展开较为简便．

]
#solution[
将第一行各元素乘以2, 分别加到第四行对应各元素之上，再按第三列展开可得 $ Delta = mat(delim: "|", 2, 3, 1, - 1; 2, 0, 0, 3; 4, 1, 0, 1; 3, 8, 0, - 1) =\(- 1\)^(1 + 3) dot.op 1 dot.op mat(delim: "|", 2, 0, 3; 4, 1, 1; 3, 8, - 1) = 69 $

]
#example[
计算行列式$mat(delim: "|", 1, 1, 1, 1; a, b, c, d; a^2, b^2, c^2, d^2; a^3, b^3, c^3, d^3)$

]
#solution[
利用四阶行列式的性质定理1---定理11，所以 $ Delta = mat(delim: "|", 1, 1, 1, 1; a, b, c, d; a^2, b^2, c^2, d^2; a^3, b^3, c^3, d^3) = mat(delim: "|", 1, 0, 0, 0; a, b - a, c - a, d - a; a^2, b^2 - a^2, c^2 - a^2, d^2 - a^2; a^3, b^3 - a^3, c^3 - a^3, d^3 - a^3) $ #noindent;由四阶行列式定义，按第一行展开，有 $ Delta & = mat(delim: "|", b - a, c - a, d - a; b^2 - a^2, c^2 - a^2, d^2 - a^2; b^3 - a^3, c^3 - a^3, d^3 - a^3)\
 & =\(b - a\)\(c - a\)\(d - a\)dot.op mat(delim: "|", 1, 1, 1; b + a, c + a, d + a; b^2 + b a + a^2, c^2 + c a + a^2, d^2 + d a + a^2)\
 & =\(b - a\)\(c - a\)\(d - a\)dot.op mat(delim: "|", 1, b + a, b^2 + b a + a^2; 0, c - b, c^2 + c a - b^2 - b a; 0, d - b, d^2 + d a - b^2 - b a)\
 & =\(b - a\)\(c - a\)\(d - a\)dot.op mat(delim: "|", c - b, d - b; \(c - b\)\(c + b + a\), \(d - b\)\(d + b + a\))\
 & =\(b - a\)\(c - a\)\(d - a\)\(c - b\)\(d - b\)\(d - c\)\
 & =\(a - b\)\(a - c\)\(a - d\)\(b - c\)\(b - d\)\(c - d\) $

]
#exercise[
+ #block(sticky: true)[计算下列行列式]

  #cols(2)[
  + $mat(delim: "|", 0, 4, 5, 8; 1, 2, - 1, - 1; 3, 0, 0, 7; 0, - 2, 0, 0)$

  + $mat(delim: "|", a, b, 0, 0; c, d, 0, 0; 0, 0, a, b; 0, 0, c, d)$

  + $mat(delim: "|", 1, 1, 1, 1; 1, 1, - 1, - 1; 1, - 1, 1, - 1; 1, - 1, - 1, 1)$

  + $mat(delim: "|", 1, 1, 1, 1; x, 1, 2, 3; x^2, 1, 4, 9; x^3, 1, 8, 27)$

  ]

+ 求证：$ mat(delim: "|", a_3, - 1, 0, 0; a_2, x, - 1, 0; a_1, 0, x, - 1; a_0, 0, 0, x) = a_3 x^3 + a_2 x^2 + a_1 x + a_0 $

]
=== 四元线性方程组
四阶行列式可以用来解四元线性方程组．

对于四元线性方程组 $ \(upright("IV")\)display(cases(a_11 x_1 + a_12 x_2 + a_13 x_3 + a_14 x_4 = b_1, a_21 x_1 + a_22 x_2 + a_23 x_3 + a_24 x_4 = b_2, a_31 x_1 + a_32 x_2 + a_33 x_3 + a_34 x_4 = b_3, a_41 x_1 + a_42 x_2 + a_43 x_3 + a_44 x_4 = b_4)) $ #noindent;采用与三元线性方程组一样的办法，同样可以得到克莱姆法则．即当系数行列式 $Delta eq.not 0$ 时，方程组 (IV) 有且仅有一个解：$ x_1 = Delta_1 / Delta\,#h(2em) x_2 = Delta_2 / Delta #h(2em) x_3 = Delta_3 / Delta\,#h(2em) x_4 = Delta_4 / Delta $ #noindent;其中，$Delta_j thick\(j = 1\,2\,3\,4\)$ 表示在行列式 $Delta$ 中用方程组的常数项列取代 $x_j$ 的系数列所成的行列式．

#example[
用克莱姆法则，解四元线性方程组 $ display(cases(2 x_1 + x_2 - 5 x_3 + x_4 = 8, x_1 - 3 x_2 - 6 x_4 = 9, 2 x_2 - x_3 + 2 x_4 = - 5, x_1 + 4 x_2 - 7 x_3 + 6 x_4 = 0)) $

]
#solution[
首先计算系数行列式 $Delta$ 及 $Delta_j$⁠，得：$ Delta = 27\,#h(2em) Delta_1 = 81\,#h(2em) Delta_2 = - 108\,#h(2em) Delta_3 = - 27\,#h(2em) Delta_4 = 27 $ #noindent;再根据克莱姆法则，可以得出 $ x_1 = 3\,#h(2em) x_2 = - 4\,#h(2em) x_3 = - 1\,#h(2em) x_4 = 1 $ #noindent;所以原方程组的解集为 $ \{\(x_1\,x_2\,x_3\,x_4\)\} = \{\(3\,- 4\,- 1\,1\)\} $

]
在解四元线性方程组时，若系数行列式 $Delta = 0$, 同样可以断定方程组无解或有无限多个解，但是情形复杂，我们不去详细论述了．

一般地，对于 $n$ 个方程组成的 $n$ 元线性方程组，同样有以下克莱姆法则：

当系数行列式 $Delta eq.not 0$ 时，方程组有且仅有唯一的解：$ x_j = Delta_j / Delta #h(2em)\(j = 1\,2\,dots.h\,n\) $ #noindent;其中，$Delta_j$ 是在 $Delta$ 中用方程组右边的常数项列取代 $x_j$ 的系数列所成的 $n$ 阶行列式．

#example[
解方程组 $ display(cases(x_1 + x_2 + x_3 + x_4 + x_5 = 3, x_2 + 2 x_3 + x_5 = 3, x_1 + x_3 + x_5 = 3, x_1 + 2 x_5 = 3, 2 x_1 + x_2 + x_5 = 3)) $

]
#solution[
先计算系数行列式 $Delta$ 及 $Delta_j$⁠：$ Delta & = mat(delim: "|", 1, 1, 1, 1, 1; 0, 1, 2, 0, 1; 1, 0, 1, 0, 1; 1, 0, 0, 0, 2; 2, 1, 0, 0, 1) = - mat(delim: "|", 0, 1, 2, 1; 1, 0, 1, 1; 1, 0, 0, 2; 2, 1, 0, 1) = - mat(delim: "|", 0, 1, 2, 1; 1, 0, 1, 1; 1, 0, 0, 2; 2, 0, - 2, 0)\
 & = mat(delim: "|", 1, 1, 1; 1, 0, 2; 2, - 2, 0) = mat(delim: "|", 1, 1, 1; - 1, - 2, 0; 2, - 2, 0) = mat(delim: "|", - 1, - 2; 2, - 2) = 6 $ #noindent;$ Delta_1 = 6\,#h(2em) Delta_2 = 0\,#h(2em) Delta_3 = 6\,#h(2em) Delta_4 = 0\,#h(2em) Delta_5 = 6 $ #noindent;所以原方程组的解集为 $ \{\(x_1\,x_2\,x_3\,x_4\,x_5\)\} = \{\(1\,0\,1\,0\,1\)\} $

]
#exercise[
用克莱姆法则解下列方程组：$ display(cases(2 x_1 - x_2 + 3 x_3 + 2 x_4 = 6, 3 x_1 - 3 x_2 + 3 x_3 + 2 x_4 = 5, 3 x_1 - x_2 - x_3 + 2 x_4 = 3, 3 x_1 - x_2 + 3 x_3 - x_4 = 4)) $

]
#heading(level: 2, numbering: none, supplement: [toc-sub])[习题2.4]

+ 已知行列式 $ mat(delim: "|", 2, - 1, 3, 6; 0, 1, - 6, 5; 4, 0, 3, 1; 2, 0, 1, 5) $

  + 把它按第三行展开；

  + 把它按第二列展开，并算出结果．

+ #block(sticky: true)[利用行列式性质，计算：]

  #cols(2)[
  + $mat(delim: "|", 1, 2, 3, 4; 2, 3, 4, 1; 3, 4, 1, 2; 4, 1, 2, 3)$

  + $mat(delim: "|", 2, 1, 0, 2; - 1, 0, 6, 3; 2, 0, 2, 3; - 2, - 2, 0, 1)$

  + $mat(delim: "|", a, 1, 0, 0; 0, b, 1, 0; 0, 0, c, 1; 0, 0, 0, d)$

  + $mat(delim: "|", 1, a_1, 0, 0; - 1, 1 - a_1, a_2, 0; 0, - 1, 1 - a_2, a_3; 0, 0, - 1, 1 - a_3)$

  + $mat(delim: "|", a, a + 1, a + 2, a + 3; a + 1, a + 2, a + 3, a + 4; b, b + 1, b + 2, b + 3; b + 1, b + 2, b + 3, b + 4)$

  + $mat(delim: "|", 1, a, b, d + c; 1, b, c, a + d; 1, c, d, a + b; 1, d, a, b + c)$

  ]

+ 求证：$ mat(delim: "|", cos theta, 1, 0, 0; 1, 2 cos theta, 1, 0; 0, 1, 2 cos theta, 1; 0, 0, 1, 2 cos theta) = cos 4 theta $

+ #block(sticky: true)[解下列线性方程组]

  #cols(2)[
  + $display(cases(x_1 + 2 x_2 + 3 x_3 - 2 x_4 = 6, 2 x_1 - x_2 - 2 x_3 - 3 x_4 = 8, 3 x_1 + 2 x_2 - x_3 + 2 x_4 = 4, 2 x_1 - 3 x_2 + 2 x_3 + x_4 = - 8))$

  + $display(cases(2 x_1 + x_2 - x_3 + x_4 = 1, 3 x_1 - 2 x_2 + 2 x_3 - 4 x_4 = 2, 5 x_1 + x_2 - x_3 + 2 x_4 = - 1, 2 x_1 - x_2 + x_3 - 3 x_4 = 4))$

  + $display(cases(x_1 - 2 x_2 + 3 x_3 - x_4 = 4, x_2 - 2 x_3 + x_4 = - 3, x_1 + 3 x_2 + x_4 = 1, - 7 x_2 + 3 x_3 + x_4 = - 3))$

  + $display(cases(x_1 + 2 x_2 = 2, x_2 + 2 x_3 = 5, x_3 + 2 x_4 = 8, x_4 + 2 x_5 = 11, 2 x_1 + x_5 = 4))$

  ]

== 特殊的线性方程组
除以上学习的一般线性方程组外，在实际应用中常常还会遇到一些特殊的线性方程组，进一步学习这些特殊情形，无论在理论上和应用上都有重要的作用．

本节研究三种类型的特殊线性方程组，即：方程的个数多于未知数个数的线性方程组；方程的个数少于未知数个数的线性方程组；方程组中，各个方程的常数项都是零的线性方程组------齐次线性方程组．

=== 方程个数多于未知数个数的线性方程组
这种方程组，我们早已在初中学习过了，要求这种方程组的解，其关键是：从中任选取和未知数个数一样多的方程组成部分方程组，求出部分方程组的解以后，再代入其余方程中检验，从而确定原方程组的解集．

#example[
解方程组

#numcases($$, $x + y = 5$, $x - y = 1$, $3 x + 2 y = 13$);

]
#solution[
先解由 (2.30)、(2.31) 组成的方程组，得：$ x = 3\,#h(2em) y = 2 $ #noindent;再将 $x\,y$ 值代入 (2.32), 能满足．

所以方程组的解集是 $\{\(x\,y\)\} = \{\(3\,2\)\}$⁠．

]
#example[
解方程组

#numcases($$, $x + y = 5$, $x - y = 1$, $3 x + 2 y = 14$);

]
#solution[
由 (2.33), (2.34) 仍得$ x = 3\,y = 2 $ #noindent;代入 (2.35) 却不能满足．因此，方程组无解，或者说解集为空集．

]
#example[
解方程组

#numcases($$, $2 x + 3 y - 5 z = 3$, $x - 2 y + z = 0$, $7 x - 7 z = 6$, $3 x + y + 3 z = 7$);

]
#solution[
先解由 (2.36)，(2.37)，(2.38) 组成的方程组．由于 $ Delta = mat(delim: "|", 2, 3, - 5; 1, - 2, 1; 7, 0, - 7) = 0 $ #noindent;再由计算得：$Delta_1 = Delta_2 = Delta_3 = 0$⁠．

所以由 (2.36)，(2.37)，(2.38) 组成的方程组应有无限多个解．我们可以把它的解写出来，就是 $ \(x\,y\,z\)= (t \, t - 3 / 7 \, t - 6 / 7) $ #noindent;这里 $t$ 为参数，可以取任意数．

再将这个解代入 (2.39), 可得 $ 3 t + t - 3 / 7 + 3 t - 18 / 7 = 7 quad arrow.r.double quad t = 10 / 7 $ #noindent;因此，方程组的解集为：$ \{\(x\,y\,z\)\} = lr(\{ (10 / 7 \, 1 \, 4 / 7) \}) $

]
#example[
解方程组

#numcases($$, $2 x + 3 y - 5 z = 3$, $x - 2 y + z = 0$, $7 x - 7 z = 6$, $4 x - y - 3 z = 3$);

]
#solution[
先解由 (2.40)，(2.41)，(2.42) 组成的方程组，得 $ \(x\,y\,z\)= (t \, t - 3 / 7 \, t - 6 / 7) $ #noindent;其中 $t$ 为参数．

再将 $\(x\,y\,z\)= (t \, t - 3 / 7 \, t - 6 / 7)$ 代入 (2.43), 得 $ 4 t - t + 3 / 7 - 3 t + 18 / 7 = 3 quad arrow.r.double quad 0 t = 0 $ #noindent;这就是说，$t$ 为任意数时，$\(x\,y\,z\)$ 满足 (2.43), 因此，原方程组的解集为 $ \{\(x\,y\,z\)\} = lr(\{ (t \, t - 3 / 7 \, t - 6 / 7) #scale(x: 120%, y: 120%)[$\|$] t upright("为任意数") \}) $

]
综上所述，对于方程的个数多于未知数个数的线性方程组求解，一般地可以先取与未知数个数相等的几个方程组成“部分方程组”求解，再作以下几种情形的解决：

+ 当“部分方程组”无解时，原方程组也就无解，即解集为空集 $nothing$⁠；

+ 当“部分方程组”有唯一解时，就将这一解代入其余各个方程中去检验．

  + 若每个方程都能被满足，则这唯一解也就是原方程组的唯一解（如例2.28）；

  + 若至少有一个方程不能被满足，则原方程组就无解（如例2.29）．

+ 当“部分方程组”有无限多个解时，就将它的解用参数形式表示，并代入其他各方程中去，得到几个关于参数的方程．

  + 若参数无论取什么值，都无法同时满足其他各方程，则原方程组无解；

  + 若参数无论取什么值，都能同时满足其他各方程，则原方程组有无限多个解，“部分方程组”的解就是原方程组的解（如例2.31）；

  + 若参数只有取某个特定值，才能同时满足其他各方程，则由参数的这个特定值所确定的“部分方程组”解集中的特定解，才能是原方程组的解（如例2.30）．

#exercise[
解下列方程组：

#cols(2)[
+ $display(cases(3 x + 2 y = 13, x - 3 y = - 3, - 7 x + 10 y = - 1))$

+ $display(cases(x + y = 2 a, x - y = 2 b, 2 x + 3 y = 5 a - b))$

+ $display(cases(3 x + y + 5 z = 4, 4 x - y + z = 4, x - 2 y - 3 z = - 1, 2 x - y + 2 z = 0))$

+ $display(cases(2 x + y - z = 5, x - 3 y + z = 7, 4 x - 3 y - 7 z = 1, 5 x - 5 y - 10 z = - 1))$

+ $display(cases(3 x - 4 y = 7, - x + 3 y = 1, 2 x - 5 y = 0, x + 2 y = 7))$

]
]
=== 方程的个数少于未知数个数的线性方程组
这种类型的方程组，我们在前面的讨论中也已经见到，以三元线性方程组为例，这种特殊方程组的一般形式可写成 $ display(cases(a_1 x + b_1 y + c_1 z = d_1, a_2 x + b_2 y + c_2 z = d_2)) $

这种特殊方程组的求解，关键是选取和方程个数一样多的未知数后，将其余未知数作为参数都移到方程右边，组成一个新方程组求解，进而得到原方程组的解．

#example[
解方程组 $ display(cases(x + 2 y + 3 z = 6, x + 7 y + 4 z = 7)) $

]
#solution[
注意到由未知数 $x\,y$ 的系数作成的二阶行列式 $ mat(delim: "|", 1, 2; 1, 7) eq.not 0 $

我们就把含 $z$ 的项移到等号右边，把方程组看成是两个未知数 $x\,y$ 的二元一次方程组 $ display(cases(x + 2 y = 6 - 3 z, x + 7 y = 7 - 4 z)) $ #noindent;解得 $ x = 1 / 5\(28 - 13 z\)\,#h(2em) y = 1 / 5\(1 - z\) $ #noindent;令 $z = t$⁠，（$t$ 为参数）则方程组的解集是 $ \{\(x\,y\,z\)\} = lr(\{ (frac(28 - 13 t, 5) \, frac(1 - t, 5) \, t) #scale(x: 120%, y: 120%)[$\|$] t upright("为任意数") \}) $ #noindent;由于 $t$ 的任意性，因此方程组有无限多个解．

]
#example[
解方程组

#numcases($$, $x + 2 y + 5 z = 8$, $2 x + 4 y + 10 z = 16$);

]
#solution[
注意到由 $x\,y$ 的系数或由 $x\,z$ 的系数或由 $y\,z$ 的系数所组成的二阶行列式都等于零，因而，原方程组就无法应用克莱姆法则求解．

事实上，直接可以看出，方程 (2.44) 乘以2就得到方程 (2.45), 原方程组实质上就是一个独立的三元方程 (2.44). 由于方程 (2.44) 的解可以引进两个参数 $R\,t$, 表示为 $\(x\,y\,z\)=\(8 - 2 R - 5 t\,R\,t\)$, 因此，原方程组的解集为 $ \{\(x\,y\,z\)\} = \{\(8 - 2 R - 5 t\,R\,t\)\|t\,R upright("均为任意数") \} $

]
#example[
解方程组

#numcases($$, $x + 2 y + 5 z = 8$, $2 x + 4 y + 10 z = 10$);

]
#solution[
与例2.33一样，由于未知数组成的二阶行列式都为零，因而，无法应用克莱姆法则求解．

事实上，可以将 (2.47) 变形为#numbered-eq($ x + 2 y + 5 z = 5 $);#noindent;比较 (2.46)、(2.48) 就可知，原方程组是矛盾方程组，其解集为空集．

]
一般地，对于方程组 $ display(cases(a_1 x + b_1 y + c_1 z = d_1, a_2 x + b_2 y + c_2 z = d_2)) $ #noindent;我们讨论如下：

+ 若三个二阶行列式$mat(delim: "|", a_1, b_1; a_2, b_2)\,quad mat(delim: "|", a_1, c_1; a_2, c_2)\,quad mat(delim: "|", b_1, c_1; b_2, c_2)$中至少有一个不为零时，由于未知数的顺序可以改变，所以不失一般性，可假定$mat(delim: "|", a_1, b_1; a_2, b_2) eq.not 0$把含有 $z$ 的项移到等号右侧，方程组可看成由 $x\,y$ 为未知数组成的二元一次方程组，应用克莱姆法则，就可解出 $x\,y$ 的关于 $z$ 的表达式 $ x = x\(z\)\,#h(2em) y = y\(z\) $ #noindent;若引进参数令 $z = t$, 则方程组的解集为 $ \{\(x\,y\,z\)\} = \{\(x\(t\)\,y\(t\)\,t\)\|t upright("为任意数") \} $ #noindent;由于 $t$ 的任意性，原方程组就有无穷个解．

+ 若上述三个二阶行列式都是零时，由于 $a_1\,b_1\,c_1$ 不能同时为零，不妨假定 $a_1 eq.not 0$⁠．则因为 $ mat(delim: "|", a_1, b_1; a_2, b_2) = 0\,quad upright("且") quad mat(delim: "|", a_1, c_1; a_2, c_2) = 0 $ #noindent;所以，就有 $ b_2 = a_2 / a_1 b_1\,#h(2em) c_2 = a_2 / a_1 c_1 $

  令 $a_2 = k a_1$⁠，就有 $b_2 = k b_1\,quad c_2 = k c_1$⁠．由第一个方程解得 $ x = 1 / a_1\(d_1 - b_1 y - c_1 z\) $ #noindent;代入第二个方程 $ a_2 x + b_2 y + c_2 z & = k a_1 x + k b_1 y + k c_1 z\
   & = k\(d_1 - b_1 y - c_1 z\)+ k b_1 y + k c_1 z\
   & = k d_1 $ #noindent;所以，当 $d_2 = k d_1$ 时，方程组有无穷多个解，解集为：$ \{\(x\,y\,z\)\} = lr(\{ (frac(d_1 - b_1 L - c_1 t, a_1) \, thick L \, thick t) #scale(x: 120%, y: 120%)[$\|$] L\,t upright("为任意数") \}) $ #noindent;当 $d_2 eq.not k d_1$ 时，方程组无解，解集为空集．

综合前两节所述，方程个数与未知数个数不等的线性方程组求解，总是以方程个数等于未知数个数的方程组作为基础来考虑的：方程多了，先舍去一些方程，解一个部分方程组，解出后，再对其他各方程逐步验证；未知数多了，移一些未知数到等号右边，解出后引进参数，写出解集．由此可见，主要关键仍在求解方程个数等于未知数个数的线性方程组．

#exercise[
解方程组：

#cols(2)[
+ $display(cases(x + 2 y + 5 z = 10, 3 x - 4 y + 7 z = 2))$

+ $display(cases(a\(a - 1\)x + 2 y + 3 z = a, 4 x + 4 y + 6 z = 4))$

]
]
=== 齐次线性方程组
常数项都是零的线性方程组，叫做齐次线性方程组．反之，若常数项至少有一个不等于零的线性方程组，就叫做非齐次线性方程组．

以下我们主要研究三个方程、三个未知数的齐次线性方程组．即#numbered-eq($ display(cases(a_11 x_1 + a_12 x_2 + a_13 x_3 = 0, a_21 x_1 + a_22 x_2 + a_23 x_3 = 0, a_31 x_1 + a_32 x_2 + a_33 x_3 = 0)) $);

容易看到，$\(x_1\,x_2\,x_3\)=\(0\,0\,0\)$ 满足方程组 (2.49), 因而是 (2.49) 的一个解．这个解称为齐次线性方程组的零解．反之，在一个解中若至少有一个未知数的值不等于零，则这个解叫做齐次线性方程组的非零解．我们主要研究的是一个齐次线性方程组有没有非零解．

令 $Delta$ 是方程组 (2.49) 的系数行列式．

==== $Delta eq.not 0$ 的情形
在 $Delta eq.not 0$ 的情况下，由克莱姆法则可知：方程组 (2.49) 有且仅有唯一解．但已知 $\(0\,0\,0\)$ 是它的解，因而方程 (2.49) 没有非零解．

#example[
解方程组 $ display(cases(x_1 + 2 x_2 + x_3 = 0, 3 x_1 - x_2 + 2 x_3 = 0, 2 x_1 - 3 x_2 - x_3 = 0)) $

]
#solution[
由于系数行列式 $ Delta = mat(delim: "|", 1, 2, 1; 3, - 1, 2; 2, - 3, - 1) = 14 eq.not 0 $ #noindent;所以方程组只有零解，没有非零解．

]
==== $Delta = 0$ 的情形
在 $Delta = 0$ 的情况下，问题比较复杂．我们再分两种情形来进行讨论．

令 $A_11\,A_12\,dots.h\,A_33$ 分别表示系数行列式 $Delta$ 的各个元素 $a_11\,a_12\,dots.h\,a_33$ 的代数余子式．

+ 若 $Delta = 0$ 而 $A_11\,A_12\,dots.h\,A_33$ 中至少有一个不为零．由于方程的编号可以改变，未知数的编号也可以改变，因此，不失一般性，可以假定 $A_33 eq.not 0$⁠．

  把 (2.49) 的前两个方程改写成 $ display(cases(a_11 x_1 + a_12 x_2 = - a_13 x_3, a_21 x_1 + a_22 x_2 = - a_23 x_3)) $ #noindent;解得：$x_1 = A_31 / A_33 x_3\,quad x_2 = A_32 / A_33 x_3$

  代入第三个方程，得：$ a_31 x_1 + a_32 x_2 + a_33 x_3 & = x_3 / A_33\(a_31 A_31 + a_32 A_32 + a_33 A_33\)\
   & = x_3 / A_33 dot.op Delta = 0 $ #noindent;可见这个解满足第三个方程，因而是方程组 (2.49) 的解．由于 $x_3$ 取值的任意性，可知方程组有无限多个非零解．

+ 若 $Delta = 0$⁠，且 $Delta$ 的所有元素的代数余子式都是零，但 $Delta$ 的元素中至少有一个不为零．不失一般性，可假定 $a_11 eq.not 0$⁠．

  由 (2.49) 的第一个方程，可得 $ x_1 = - a_12 / a_11 x_2 - a_13 / a_11 x_3 $ #noindent;代入第二、第三个方程，得 $  & quad a_21 x_1 + a_22 x_2 + a_23 x_3\
   & = - 1 / a_11\(a_12 a_21 - a_11 a_22\)x_2 - 1 / a_11\(a_13 a_21 - a_11 a_23\)x_3\
   & = A_33 / a_11 x_2 - A_32 / a_11 x_3 $ #noindent;由于所给条件为所有 $A_(i j) = 0 thick\(1 lt.eq i lt.eq 3\,thick 1 lt.eq j lt.eq 3\)$, 所以，$ a_21 x_1 + a_22 x_2 + a_23 x_3 = 0 $ #noindent;$  & quad a_31 x_1 + a_32 x_2 + a_33 x_3\
   & = - 1 / a_11\(a_12 a_31 - a_11 a_32\)x_2 - 1 / a_11\(a_13 a_31 - a_11 a_33\)x_3\
   & = - A_23 / a_11 x_2 + A_22 / a_11 x_3 = 0 $ #noindent;可见这个解同时满足三个方程，即不论 $x_2\,x_3$ 取什么值，$ (- a_12 / a_11 x_2 - a_13 / a_11 x_3 \, thick x_2 \, thick x_3) $ #noindent;都是方程组 (2.49) 的解．所以方程组 (2.49) 有无限多个非零解：$ \{\(x_1\,x_2\,x_3\)\} = lr(\{ (- a_12 / a_11 L - a_13 / a_11 t \, thick L \, thick t) #scale(x: 120%, y: 120%)[$\|$] L\,t upright("为任意数") \}) $

#example[
下列方程组有没有非零解，如果有，求出它的全部非零解．$ display(cases(x_1 + x_2 + x_3 = 0, 3 x_1 - x_2 + 2 x_3 = 0, x_1 - 3 x_2 = 0)) $

]
#solution[
由于系数行列式$Delta = mat(delim: "|", 1, 1, 1; 3, - 1, 2; 1, - 3, 0) = 0$⁠，且$A_33 = mat(delim: "|", 1, 1; 3, - 1) = - 4 eq.not 0$

所以可将第一、第二两方程化成 $ display(cases(x_1 + x_2 = - x_3, 3 x_1 - x_2 = - 2 x_3)) $ #noindent;解得 $x_1 = - 3 / 4 x_3\,quad x_2 = - 1 / 4 x_3$⁠．

令 $x_3 = - 4 k$⁠，则方程组的解集为 $ \{\(x_1\,x_2\,x_3\)\} = \{\(3 k\,k\,- 4 k\)\|k upright("为任意数") \} $ #noindent;因此方程组有无限多个非零解．

]
#example[
解方程组$ display(cases(x_1 + x_2 + x_3 = 0, 2 x_1 + 2 x_2 + 2 x_3 = 0, 3 x_1 + 3 x_2 + 3 x_3 = 0)) $

]
#solution[
显然有 $ Delta = 0\,quad A_11 = A_12 = dots.h.c = A_33 = 0 $ #noindent;由第一个方程可得：$x_1 = - x_2 - x_3$

令 $x_2 = L\,thick x_3 = t$⁠，则可得方程组的解集为 $ \{\(x_1\,x_2\,x_3\)\} = \{\(- L - t\,L\,t\)\|L\,t upright("为任意数") \} $ #noindent;如果方程组 (2.49) 中 $Delta = 0$, 且所有 $A_(i j) = 0$, 而且所有元素也为零，则方程组为 $ 0 x_1 + 0 x_2 + 0 x_3 = 0\
0 x_1 + 0 x_2 + 0 x_3 = 0\
0 x_1 + 0 x_2 + 0 x_3 = 0 $

显然，这些都是恒等式，无论 $x_1\,x_2\,x_3$ 取什么值，等式都成立．这样，方程组当然有无限多个非零解．

]
综合上述各种情况，可以得出如下的结论：

#blk[定理][
齐次线性方程组 $ display(cases(a_11 x_1 + a_12 x_2 + a_13 x_3 = 0, a_21 x_1 + a_22 x_2 + a_23 x_3 = 0, a_31 x_1 + a_32 x_2 + a_33 x_3 = 0)) $ #noindent;有非零解的必要充分条件是这个方程组的系数行列式 $Delta$ 为零．

]
#example[
试讨论下列齐次线性方程组有没有非零解？$ display(cases(a x_1 + x_2 + x_3 = 0, x_1 + a x_2 + x_3 = 0, x_1 + x_2 + a x_3 = 0)) $

]
#solution[
计算系数行列式 $ Delta = mat(delim: "|", a, 1, 1; 1, a, 1; 1, 1, a) = a^3 - 3 a + 2 =\(a - 1\)^2\(a + 2\) $

- 若 $a eq.not 1$, $a eq.not - 2$, 则方程组没有非零解，

- 若 $a = 1$ 或 $a = - 2$, 则方程组有无限多个非零解．

]
#rmk[
$a = 1$ 或 $a = - 2$ 尽管方程组有无限多个非零解，但程度有所不同．

- 当 $a = - 2$ 时，代数余子式$mat(delim: "|", - 2, 1; 1, - 2) eq.not 0$⁠．所以，解的表达式只有一个参数，方程组的解集为$ \{\(x_1\,x_2\,x_3\)\} = \{\(t\,t\,t\)\|t upright("为任意数") \} $

- 当 $a = 1$ 时，所有的代数余子式全为零．所以，解的表达式中应有两个参数，方程组的解集为 $ \{\(x_1\,x_2\,x_3\)\} = \{\(- L - t\,L\,t\)\|L\,t upright("为任意数") \} $

]
#example[
求非齐次线性方程组 $ display(cases(a_1 x + b_1 y + c_1 = 0, a_2 x + b_2 y + c_2 = 0, a_3 x + b_3 y + c_3 = 0)) $ #noindent;有解的必要条件．

]
#solution[
如果这个方程组有解，那么至少存在一个有序数组 $\(x_0\,y_0\)$, 能够使方程组中每一个方程都被满足，即 $ display(cases(a_1 x_0 + b_1 y_0 + c_1 = 0, a_2 x_0 + b_2 y_0 + c_2 = 0, a_3 x_0 + b_3 y_0 + c_3 = 0)) $

再加以改写，得 $ display(cases(a_1 x_0 + b_1 y_0 + c_1 dot.op 1 = 0, a_2 x_0 + b_2 y_0 + c_2 dot.op 1 = 0, a_3 x_0 + b_3 y_0 + c_3 dot.op 1 = 0)) $ #noindent;这就告诉我们，三元齐次线性方程组 $ display(cases(a_1 x + b_1 y + c_1 z = 0, a_2 x + b_2 y + c_2 z = 0, a_3 x + b_3 y + c_3 z = 0)) $ #noindent;有一个非零解 $\(x_0\,y_0\,1\)$⁠．

但由于齐次线性方程组有非零解的必要条件是它的系数行列式等于零，因而可以推出 $ mat(delim: "|", a_1, b_1, c_1; a_2, b_2, c_2; a_3, b_3, c_3; #none) = 0 $ #noindent;所以原方程组有解的必要条件是$mat(delim: "|", a_1, b_1, c_1; a_2, b_2, c_2; a_3, b_3, c_3; #none) = 0$

]
#exercise[
+ 想想看，能不能把例2.39中的必要条件改为充分条件？为什么？

+ #block(sticky: true)[判定下列齐次线性方程组是否有非零解？如果有，求出它们各自的解集来．]

  #cols(2)[
  + $display(cases(x + y + z = 0, 2 x - y + 3 z = 0, x - 2 y + z = 0))$

  + $display(cases(5 x - 6 y - 4 z = 0, x + 2 y + 4 z = 0, 3 x + 2 y + 6 z = 0))$

  ]

]
#heading(level: 2, numbering: none, supplement: [toc-sub])[习题2.5]

+ #block(sticky: true)[解下列方程组：]

  #cols(2)[
  + $display(cases(2 x + 4 y - z = 7, x - y + 2 z = - 1, 3 x - 7 y + 3 z = 10, - 4 x + 3 y - 5 z = - 4))$

  + $display(cases(- x + 3 y - 2 z = - 8, 7 x + y - z = 4, 5 x - 5 y + 3 z = 16, - x - 2 y + z = 0))$

  + $display(cases(x_1 + 2 x_2 + 3 x_3 - x_4 = 1, 3 x_1 + 2 x_2 + x_3 - x_4 = 1, 2 x_1 + 3 x_2 + x_3 + x_4 = 1, 2 x_1 + 2 x_2 + 2 x_3 - x_4 = 1, 5 x_1 + 5 x_2 + 2 x_3 = 2))$

  + $display(cases(x + y + z = 6, 2 x - y + z = 3, 3 x + 2 y - 2 z = 1, 5 x - y - z = 0, x - 2 y + 3 z = 6))$

  ]

+ #block(sticky: true)[解下列方程组：]

  #cols(2)[
  + $display(cases(2 x + y - z = 8, x - 3 y - 2 z = 1))$

  + $display(cases(2 x + 3 y + z = 10, x - 4 y + 2 z = 8))$

  + $display(cases(x_1 + x_2 + x_3 + x_4 = 10, 2 x_1 + 3 x_2 - x_3 = 5, 2 x_2 + x_3 - 2 x_4 = - 1))$

  + $display(cases(x_1 + 2 x_2 - x_3 - 3 x_4 = 5, 2 x_1 + 3 x_2 + 3 x_3 + x_4 = 2, x_1 + x_2 + x_3 - 7 x_4 = 6))$

  ]

+ #block(sticky: true)[解下列方程组：]

  #cols(2)[
  + $display(cases(2 x + 3 y + z = 0, x + 2 y - 3 z = 0))$

  + $display(cases(4 x - 5 y - z = 0, 3 x + 7 y - 6 z = 0))$

  ]

+ #block(sticky: true)[判断下列齐次线性方程组有没有非零解？]

  #cols(2)[
  + $display(cases(2 x_1 - x_2 + 3 x_3 = 0, 4 x_1 - 2 x_2 + 5 x_3 = 0, 2 x_1 - x_2 + 4 x_3 = 0))$

  + $display(cases(3 x_1 + 2 x_2 + 6 x_3 = 0, x_1 + 2 x_2 + 4 x_3 = 0, 5 x_1 - 6 x_2 - 4 x_3 = 0))$

  ]

+ #block(sticky: true)[求出下列齐次线性方程组的非零解：]

  #cols(2)[
  + $display(cases(5 x = 8 y, 10 x - 16 y = 0))$

  + $display(cases(2 x_1 + 5 x_2 + 3 x_3 = 0, 3 x_1 - x_2 - 4 x_3 = 0, - x_1 + 6 x_2 + 7 x_3 = 0))$

  + $display(cases(x_1 - 3 x_2 + x_3 = 0, 2 x_1 + x_2 + 2 x_3 = 0, - 5 x_1 + 2 x_2 - 5 x_3 = 0))$

  + $display(cases(2 x_1 + x_2 + x_3 + 7 x_4 = 0, 3 x_1 - 4 x_2 - x_3 - 8 x_4 = 0, x_1 + x_2 - x_3 = 0, x_1 - x_2 - x_4 = 0))$

  ]

+ #block(sticky: true)[参数 $a$ 为何值时，下列齐次线性方程组有非零解？]

  #cols(2)[
  + $display(cases(x_1 + x_2 + a x_3 = 0, - 3 x_1 + 5 x_2 + x_3 = 0, x_2 + 2 x_3 = 0))$

  + $display(cases(- 5 x_1 - 9 x_2 + 7 x_3 = 0, a x_1 - 4 x_2 + 3 x_3 = 0, - 8 x_1 - 5 x_2 + 4 x_3 = 0))$

  + $display(cases(a x + 3 y + z = 0, x + 4 y - 3 z = 0, a x + y + 3 z = 0))$

  + $display(cases(4 x - 2 y + a z = 0, a x - y + z = 0, 6 x - 3 y +\(a + 1\)z = 0))$

  ]

+ #block(sticky: true)[解下列方程组，并求出 $x : y : z$]

  #cols(2)[
  + $display(cases(x + 2 y + z = 0, x - y - 2 z = 0, - 2 x - y + z = 0))$

  + $display(cases(x - 5 y = 0, 4 y + z = 0, 4 x + 5 z = 0))$

  ]

+ 已知方程组 $ display(cases(a x_1 + b x_2 + c x_3 = 0, c x_1 + b x_2 + a x_3 = 0, b x_1 + a x_2 + c x_3 = 0)) $ #noindent;有非零解，求证：$a = b$, 或 $a = c$, 或 $a + b + c = 0$

+ 求证：齐次线性方程组 $ display(cases(x_1 + p x_2 + q x_3 +\(r + s\)x_4 = 0, x_1 + q x_2 + r x_3 +\(s + p\)x_4 = 0, x_1 + r x_2 + s x_3 +\(p + q\)x_4 = 0, x_1 + s x_2 + p x_3 +\(q + r\)x_4 = 0)) $ #noindent;必有非零解．

#heading(level: 2, numbering: none, outlined: false)[本章内容要点]

一、本章主要内容是线性方程组的高斯消元法，行列式（重点是二，三阶行列式）及其重要性质；二、三元线性方程组的解的讨论；用克莱姆法则求线性方程组的唯一解；齐次线性方程组有非零解的充要条件等．同时，还学习了四元线性方程组以及方程个数与未知数个数不等的线性方程组．

二、高斯消元法实质上就是加减消元法，只是运用三种基本变换进行有一定程序的消元，便于计算，便于运用电子计算机．

三、行列式是解线性方程组的一种新的工具．二、三阶行列式的定义是：$ mat(delim: "|", a_1, b_1; a_2, b_2) & = a_1 b_2 - a_2 b_1\
mat(delim: "|", a_1, b_1, c_1; a_2, b_2, c_2; a_3, b_3, c_3) & = a_1 b_2 c_3 + a_2 b_3 c_1 + a_3 b_1 c_2 - a_3 b_2 c_1 - a_2 b_1 c_3 - a_1 b_3 c_2 $

这就是二、三阶行列式展开的对角线法则，对高阶行列式不适用．

四、行列式中的元素可采用双足码表示，两个足码分别表示这个元素所在的行数与列数，如三阶行列式可表为 $ Delta = mat(delim: "|", a_11, a_12, a_13; a_21, a_22, a_23; a_31, a_32, a_33) $ #noindent;也可以简化表示为 $ Delta =\|a_(i j)\|#h(2em) i = 1\,2\,3\;thick j = 1\,2\,3 . $ #noindent;余子式与代数余子式是两个重要的概念，尤其是代数余子式，在进行行列式的恒等变形和计算中有广泛的应用．

某个元素 $a_(i j)$ 的代数余子式是一个低一阶的行列式，用 $A_(i j)$ 表示，如，在三阶行列式中，元素 $a_23$ 的代数余子式为 $ A_23 =\(- 1\)^(2 + 3) mat(delim: "|", a_11, a_12; a_31, a_32) $

三阶行列式可以用二阶行列式定义：$ Delta & =\(- 1\)^(1 + 1) a_11 mat(delim: "|", a_22, a_23; a_32, a_33) +\(- 1\)^(1 + 2) a_12 mat(delim: "|", a_21, a_23; a_31, a_33) +\(- 1\)^(1 + 3) a_13 mat(delim: "|", a_21, a_22; a_31, a_32)\
 & = a_11 A_11 + a_12 A_12 + a_13 A_13 $

四阶行列式就是借助于三阶行列式定义的；一般地，$n$ 阶行列式可以借助于 $n$ 个 $n - 1$ 阶行列式定义．这种定义，我们称为行列式的归纳定义．

行列式的性质定理1---11也是简化计算、进行变形的主要依据，在本章中都是以三阶行列式为例来证明的，但它们对任意阶行列式都适用．

五、二元线性方程组 $ display(cases(a_1 x + b_1 y = c_1, a_2 x + b_2 y = c_2)) #h(2em)\(a_1\,a_2\;b_1\,b_2 upright("不同时为零")\) $ #noindent;的解可以分如下几种情形讨论：

+ 当系数行列式 $D eq.not 0$ 时，方程组有唯一解 $ \(x\,y\)= (D_x / D \, D_y / D) $

+ 当 $D = 0$, 且 $D_x\,D_y$ 不全为零时，方程组无解；

+ 当 $D = 0$, 且 $D_x = D_y = 0$ 时，方程组有无穷多个解，这时可引入参数 $t$, 方程组的解就表示为 $ \(x\,y\)=\(t\,phi\(t\)\)\,#h(2em) upright("或") #h(2em)\(x\,y\)=\(f\(t\)\,t\)quad upright("(") t upright("为任意数)") $

六、三元线性方程组 $ display(cases(a_11 x_1 + a_12 x_2 + a_13 x_3 = b_1, a_21 x_1 + a_22 x_2 + a_23 x_3 = b_2, a_31 x_1 + a_32 x_2 + a_33 x_3 = b_3)) quad upright("(") a_(i j) upright("不全为零)") $ #noindent;的解可以按以下几种情形讨论：

+ 当系数行列式 $Delta eq.not 0$ 时，方程组有唯一解 $ \(x_1\,x_2\,x_3\)= (Delta_1 / Delta \, Delta_2 / Delta \, Delta_3 / Delta) $

+ 当 $Delta = 0$, 且 $Delta_1\,Delta_2\,Delta_3$ 不全为零时，方程组无解；

+ 当 $Delta = Delta_1 = Delta_2 = Delta_3 = 0$ 时，方程组有无限多个解，这时可引入一个或两个参数，方程组的解可表为含有一个或2个参数的形式．

七、$n$ 个方程 $n$ 个未知数的线性方程组求解的克莱姆法则：

当系数行列式 $Delta eq.not 0$ 时，方程组有唯一解 $ \(x_1\,x_2\,dots.h\,x_n\)= (Delta_1 / Delta \, Delta_2 / Delta \, dots.h \, Delta_n / Delta) $ #noindent;其中 $Delta_i\,quad\(i = 1\,2\,dots.h\,n\)$ 是将 $Delta$ 中第 $i$ 列换成方程组的常数项列而组成的 $n$ 阶行列式．

八、齐次线性方程组（以三元为例）$ display(cases(a_11 x_1 + a_12 x_2 + a_13 x_3 = 0, a_21 x_1 + a_22 x_2 + a_23 x_3 = 0, a_31 x_1 + a_32 x_2 + a_33 x_3 = 0)) $ #noindent;的解可分以下情形讨论：

+ 当系数行列式 $Delta eq.not 0$ 时，方程组有唯一的零解 $\(x_1\,x_2\,x_3\)=\(0\,0\,0\)$\;

+ 当 $Delta = 0$ 时，方程组除有零解外，还有无限多个非零解．

若引进参数（一或两个），其解可表为含参数形式．一般地，齐次线性方程组有非零解的充要条件是系数行列式 $Delta = 0$⁠．

九、未知数个数与方程个数不等的线性方程组的求解，一般都是转化为方程个数与未知数个数相等的方程组求解．因而，线性方程组的求解与理论，关键还在于后者．

#heading(level: 2, numbering: none, outlined: true)[复习题二]

+ #block(sticky: true)[用高斯消元法解下列方程组]

  #cols(2)[
  + $display(cases(x + 2 y - 3 z = 3, 3 x - 5 y + 7 z = 19, 5 x - 8 y - 11 z = - 13))$

  + $display(cases(5 x_2 + x_3 - 4 x_4 = 17, 3 x_2 + x_4 = 12, 4 x_1 - 3 x_3 + x_4 = 9, x_1 + 2 x_2 + 3 x_4 = 8))$

  + $frac(x + 1, 20) = frac(y + 1, 21) = frac(x + y, 17)$

  ]

+ #block(sticky: true)[解下列方程组，并画出图象说明．]

  #cols(2)[
  + $display(cases(x + y = 2, 4 x - y = 3))$

  + $display(cases(x - y = 5, 2 x - 2 y = 7))$

  + $display(cases(x + 2 y = 5, 2 x + 4 y = 10))$

  + $display(cases(y = 3 x + 2, y = 3 x))$

  ]

+ 解下列关于 $x\,y$ 的方程组，并讨论．

  + $display(cases(\(a + 1\)x -\(2 a - 1\)y = 3 a, \(3 a + 1\)x -\(4 a - 1\)y = 5 a + 4))$

  + $display(cases(\(a - 1\)x +\(a + 1\)y = 2\(a^2 - 1\), \(a^2 - 1\)x +\(a^2 + 1\)y = 2\(a^3 - 1\)))$

  + $display(cases(\(a + 5\)x +\(2 a + 3\)y -\(3 a + 2\)= 0, \(3 a + 10\)x +\(5 a + 6\)y -\(2 a + 4\)= 0))$

+ 已知方程组 $display(cases(2 x + a y = 4, x + 4 y = 8))$ 只有一个正数解，试求参数 $a$ 的取值范围．

+ 试用三种不同的方法，计算以下行列式的值：$ mat(delim: "|", 13, 22, 17; 14, - 11, 16; 10, 0, 18) $

+ 已知276, 345, 391都能被23整除，不计算行列式的值求证：以下行列式也能被23整除．$ mat(delim: "|", 2, 7, 6; 3, 4, 5; 3, 9, 1) $

+ #block(sticky: true)[计算下列行列式：]

  #cols(2)[
  + $mat(delim: "|", a, b, c; c, a, b; b, c, a)$

  + $mat(delim: "|", 1, sin alpha, cos alpha; sin\(alpha + beta\), cos beta, sin beta; sin\(alpha - beta\), sin beta, cos beta)$

  + $mat(delim: "|", x, y, x + y; y, x + y, x; x + y, x, y)$

  + $mat(delim: "|", a, b, 0, 0; 0, a, b, 0; 0, 0, a, b; 0, 0, 0, a)$

  ]

+ 不求行列式的值，只利用行列式的定义与性质求 $f\(x\)$ 中 $x^4$ 及 $x^3$ 的系数：$ f\(x\)= mat(delim: "|", 2 x, x, 1, 2; 1, x, 1, - 1; 3, 2, x, 1; 1, 1, 1, x) $

+ 求证：

  + $mat(delim: "|", a - b - c, 2 a, 2 a; 2 b, b - c - a, 2 b; 2 c, 2 c, c - a - b) =\(a + b + c\)^3$

  + $mat(delim: "|", b_1 + c_1, c_1 + a_1, a_1 + b_1; b_2 + c_2, c_2 + a_2, a_2 + b_2; b_3 + c_3, c_3 + a_3, a_3 + b_3; #none) = 2 mat(delim: "|", a_1, b_1, c_1; a_2, b_2, c_2; a_3, b_3, c_3; #none)$

+ #block(sticky: true)[解下列方程：]

  #cols(2)[
  + $mat(delim: "|", 1 + x, 2, 3; 1, 2 + x, 3; 1, 2, 3 + x) = 0$

  + $mat(delim: "|", sin x, 1, sin x; cos x, 0, sin x; cos x, 1, cos x) = 0$

  ]

+ 解不等式 $ mat(delim: "|", x - a, b, - c; a, x - b, c; - a, b, x - c) > 0 $

+ 求证：

  + $mat(delim: "|", a, b, c; c, a, b; b, c, a) = a^3 + b^3 + c^3 - 3 a b c$

  + $mat(delim: "|", a, b, c; c, a, b; b, c, a) =\(a + b + c\)\(a^2 + b^2 + c^2 - a b - b c - c a\)$

  + 若 $triangle.stroked.t A B C$ 三边 $a\,b\,c$ 满足条件 $a^3 + b^3 + c^3 = 3 a b c$⁠，则 $triangle.stroked.t A B C$ 必为一个等边三角形．

+ #block(sticky: true)[解下列方程组：]

  #cols(2)[
  + $display(cases(7 x - 4 1 / 2 y = 9 1 / 2, 2 x + 3 y + 7 1 / 2 z = 22, - 2 / 3 x + 2 1 / 2 z = 3 2 / 3))$

  + $display(cases(2 / x - 3 / y + 4 / z = 11, 3 / x - 2 / y - 5 / z = - 20, 3 / x + 4 / y - 8 / z = 6))$

  + $display(cases(a x - a b y + b z = b, x + a y - z = - 1, b y + z = 1))$

  + $display(cases(ell x = m y = n z, a x + b y + c z = d, \(a m n + b n ell + c m ell eq.not 0\)))$

  ]

+ 确定参数 $lambda$ 的值，使下列方程组解出 $x$ 的值与 $y$ 的值相等．$ display(cases(2 lambda x + 8 y = 3 lambda + 1, 3 x -\(lambda - 8\)y = lambda - 3)) $

+ #block(sticky: true)[解下列齐次线性方程组]

  #cols(2)[
  + $display(cases(3 x_1 - 2 x_2 + 3 x_4 = 0, x_1 - x_2 + x_3 = 0, 3 x_2 + 3 x_3 - 2 x_4 = 0, x_1 + 2 x_2 + 4 x_3 - 2 x_4 = 0))$

  + $display(cases(2 x_1 - x_2 + 3 x_3 - 2 x_4 = 0, x_1 + 7 x_2 + x_3 - x_4 = 0, 3 x_1 + 5 x_2 - 5 x_3 + 3 x_4 = 0, x_1 - x_2 - 2 x_3 + x_4 = 0))$

  ]

+ $a\,b\,c$ 都是非零数，判断下列齐次线性方程组有没有非零解？$ display(cases(\(b - c\)x + b y - c z = 0, - a x +\(c - a\)y + c z = 0, a x - b y +\(a - b\)z = 0)) $

+ #block(sticky: true)[参数 $lambda$ 取什么值时，下列齐次线性方程组有非零解？若有非零解，求出其全部非零解：]

  #cols(2)[
  + $display(cases(x + y = lambda x, 6 x + 2 y = lambda y))$

  + $display(cases(11 x - 6 y + 2 z = lambda x, - 6 x + 10 y - 4 z = lambda y, 2 x - 4 y + 6 z = lambda z))$

  ]

+ 已知 $\(alpha_1\,beta_1\,gamma_1\)$ 与 $\(alpha_2\,beta_2\,gamma_2\)$ 都是以下齐次线性方程组 $ display(cases(a_1 x + b_1 y + c_1 z = 0, a_2 x + b_2 y + c_2 z = 0, a_3 x + b_3 y + c_3 z = 0)) $ #noindent;的解．求证：

  + $k$ 是任意数，$\(k alpha_1\,k beta_1\,k gamma_1\)$ 也是方程组的解．

  + $\(alpha_1 + alpha_2\,beta_1 + beta_2\,gamma_1 + gamma_2\)$ 也是方程组的解．

+ 下列方程组中，$x\,y$ 是未知数，$a\,b$ 是已知常数，$m\,p$ 是参数．若已知方程组有无限多个解求参数 $m\,p$⁠．$ display(cases(\(3 m - 5 p + b\)x +\(8 m - 3 p - a\)y = 1, \(2 m - 3 p + b\)x +\(4 m - p\)y = 2)) $

+ 已知下列方程组有解，求参数 $lambda$⁠．$ display(cases(3 x - 4 y = lambda\(lambda^2 + 12\), 5 x - 6 y = 2 lambda\(lambda + 3\), 7 x - 8 y = 12\(4 - lambda\))) $

+ $x\,y\,z$ 是未知数，$a\,b$ 是参数，下列方程组在什么条件下有唯一解；无解；有无限多个解．$ display(cases(a x + y + z = 4, x + b y + z = 3, x + 2 b y + z = 4)) $

+ 已知 $a^2 + b^2 + c^2 = 1$, 下列关于 $x\,y$ 的方程组是否有解？$ display(cases(\(b^2 + c^2\)x + a b y = a c, a b x +\(c^2 + a^2\)y = b c, c a x + b c y = a^2 + b^2)) $

+ 求下列关于 $x\,y\,z$ 的三元线性方程组有唯一解的条件，并求出在这一条件下的解

  + $display(cases(\(lambda + 3\)x + y + 2 z = lambda, lambda x +\(lambda - 1\)y + z = 2 lambda, 3\(lambda + 1\)x + lambda y +\(lambda + 3\)z = 3))$

  + $display(cases(x + y + z = 0, a x + b y + c z = 0, b c x + c a y + a b z =\(b - c\)\(c - a\)\(a - b\).))$

+ 论证：若行列式主对角线左下方（或右上方）的元素全为零，则行列式的值就等于主对角线上各元素的连乘积．

+ 求证 $triangle.stroked.t A B C$ 为等腰三角形的充要条件是 $ mat(delim: "|", cos^2 A, sin A, 1; cos^2 B, sin B, 1; cos^2 C, sin C, 1) = 0 $

+ #staritem(26);已知 $2 x + 5 y + 4 z = 0$, $3 x + y - 7 z = 0$, 求证：$x + y - z = 0$⁠．

+ #staritem(27);已知 $a\,b\,c$ 是互不相同的数，且设 $ p\(x\)= mat(delim: "|", 1, x, x^2, x^3; 1, a, a^2, a^3; 1, b, b^2, b^3; 1, c, c^2, c^3; #none) $

  + 证明 $p\(x\)$ 是关于 $x$ 的三次多项式；

  + 利用行列式性质，求出 $p\(x\)$ 的根．
