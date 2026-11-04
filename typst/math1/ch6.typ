// 由 typst/tools/tex2typ.py 从 math1/6.tex 转换而来，已人工校对的部分以本文件为准。
#import "../common/template.typ": *
#import "figs.typ": fig

= 分式与根式
== 分式与分式方程
=== 分式与分式的基本性质
我们已经知道，两个整数 $m\,n$ 的比，是一个有理数 $m / n\,quad\(n eq.not 0\)$.同样，两个多项式 $f\(x\)$ 和 $g\(x\)$ 的比 $frac(f\(x\), g\(x\))\,quad\(g\(x\)eq.not 0\)$ 就叫做#strong[有理式]．

在有理式 $frac(f\(x\), g\(x\))\,quad\(g\(x\)eq.not 0\)$ 中，如果 $g\(x\)$ 的次数为0，那么，有理式 $frac(f\(x\), g\(x\))$ 就是#strong[整式]，也就是我们已经学过的多项式；如果 $g\(x\)$ 的次数高于0次，那么，有理式 $frac(f\(x\), g\(x\))$ 就叫做#strong[分式]．

例如：$1 / x$, $frac(x + 5, x^2 - 9)$, $frac(2 x^2 - 3 x + 1, x - 3)$, $frac(x^2 + y^2, 2 x + y)$ 等都是分式．$frac(\(x^2 + 1\)^2, x^2 + 1)$ 虽然恒等于整式 $x^2 + 1$，而从形式上仍然叫做分式．

但是，像 $frac(x^2 - 1, 1)$、$frac(3 x + 1, 2)$ 等都是整式，而这些整式也就是多项式：$x^2 - 1$，$3 / 2 x + 1 / 2$ 等．

对于整式来说，由于其中的未知数决不会出现在分母当中，因而未知数可以取一切实数值；但对于分式来说，由于它的分母中必定含有未知数，因而未知数的取值，就要求限制在“使分母不等于零的实数值”的范围内．例如：

在分式 $frac(2 x + 3, x^2 - 3)$ 中，未知数 $x$ 只允许取“$x^2 - 3 eq.not 0$”的值，即 $x eq.not plus.minus sqrt(3)$ 的一切实数值．也就是说，在这个分式中的未知数可以取除“$plus.minus sqrt(3)$”以外的其他任何实数值．

在分式中，分子的次数如果低于分母的次数，就叫做#strong[真分式]；分子的次数如果不低于分母的次数，就叫做#strong[假分式]．例如，$frac(1, x - 3)$，$frac(x + y, 2 x^2 + y)$ 等都是真分式；$frac(2 x + 4, x - 3)$，$frac(x^2 + 4 x + 6, x + 3)$，$frac(x^2 + y^2, 2 x + y)$ 等都是假分式．

==== 分式的基本性质
+ 分式的分子、分母同乘以一个非零多项式，分式的值不变．用式子表示就是：

  如果 $h\(x\)eq.not 0$，那么 $frac(f\(x\), g\(x\)) = frac(f\(x\)dot.op h\(x\), g\(x\)dot.op h\(x\))$．

  例如：$frac(x, x - 3) = frac(x\(x - 2\), \(x - 3\)\(x - 2\)) quad\(x eq.not 3\,thick x eq.not 2\)$

+ 分式的分子、分母同除以一个非零多项式．分式的值不变．用式子表示就是：

  如果 $h\(x\)eq.not 0$，那么 $frac(f\(x\), g\(x\)) = frac(f\(x\)div h\(x\), g\(x\)div h\(x\))$．

  例如：$frac(x^2\(x^2 + 1\), x^2 + 1) = x^2$

利用以上两个基本性质，可以进行分式的约分和通分．

==== 约分
如果一个分式的分子、分母有公因式时，可以类似于分数的约分，把最高公因式约去，使分式化简．分式的分子与分母没有非零次的公因式时，叫做#strong[不可约分式（既约分式）]．不可约分式是最简分式，约分就是化分式为最简分式．

#example[
约简

+ $frac(18 a^12 x^3 y^2, 12 a^3 b^2 x^5 z)$

+ $frac(8 a^2 - 6 a^5 b, 16 a^20)$

+ $frac(32\(x - 2 y\)^2\(- x + y\), 24\(2 y - x\)^2\(x - y\))$

+ $frac(m^2 - 4 n^2, - m^2 - 4 m n - 4 n^2)$

]
#solution[
+ $frac(18 a^12 x^3 y^2, 12 a^3 b^2 x^5 z) = frac(3 a^9 y^2, 2 b^2 x^2 z)$

+ $frac(8 a^2 - 6 a^5 b, 16 a^20) = frac(2 a^2 (4 - 3 a^3 b), 16 a^20) = frac(4 - 3 a^3 b, 8 a^18)$

+ $frac(32\(x - 2 y\)^2\(- x + y\), 24\(2 y - x\)^2\(x - y\)) = frac(- 4\(x - 2 y\)^2\(x - y\), 3\(x - 2 y\)^2\(x - y\)) = - 4 / 3$

+ $ frac(m^2 - 4 n^2, - m^2 - 4 m n - 4 n^2) & = frac(m^2 - 4 n^2, - (m^2 + 4 m n + 4 n^2))\
   & = - frac(\(m - 2 n\)\(m + 2 n\), \(m + 2 n\)^2)\
   & = - frac(m - 2 n, m + 2 n) $

]
#example[
约简 $frac(x^4 - 2 x^3 + x - 2, x^4 + x^2 + 1)$

]
#solution[
用辗转相除法求得：$ \(x^4 - 2 x^3 + x - 2\,x^4 + x^2 + 1\)= x^2 - x + 1 $ 用除法求得 $ x^4 - 2 x^3 + x - 2 & =\(x^2 - x + 1\)\(x^2 - x - 2\)\
x^4 + x^2 + 1 & =\(x^2 - x + 1\)\(x^2 + x + 1\) $ $therefore quad frac(x^4 - 2 x^3 + x - 2, x^4 + x^2 + 1) = frac(x^2 - x - 2, x^2 + x + 1)$

]
#example[
约简 $frac(x^3 - 6 x^2 + 11 x - 6, x^3 - 8 x^2 + 19 x - 12)$

]
#solution[
用余式定理和综合除法求得：$ x^3 - 6 x^2 + 11 x - 6 & =\(x - 1\)\(x - 3\)\(x - 2\)\
x^3 - 8 x^2 + 19 x - 12 & =\(x - 1\)\(x - 3\)\(x - 4\) $ $therefore quad frac(x^3 - 6 x^2 + 11 x - 6, x^3 - 8 x^2 + 19 x - 12) = frac(x - 2, x - 4)$

]
下面我们和多项式一样，引入一个分式的符号：$F\(x\)$，它表示关于 $x$ 的一个分式；同样，$G\(x\)$、$T\(x\)$ 可以分别表示 $x$ 的另外的分式，例如：$F\(x\)= 1 / x$, $G\(x\)= frac(2 x, x^2 - 3)$ $T\(x\)= frac(7 x, 9 - x)$ 等．很自然，在一个分式 $F\(x\)$ 中，当 $x = a$ 时，分式的值可以表示为 $F\(a\)$．

#example[
先把下面的分式化简，再求它的值．$ F\(x\)= frac(- 1 - x^3, 2 x^2 - 2 x + 2)\,#h(2em) upright("其中 ") x = 5 $

]
#solution[
$ F\(x\) & = frac(-\(x^3 + 1\), 2\(x^2 - x + 1\))\
 & = - frac(\(x + 1\)\(x^2 - x + 1\), 2\(x^2 - x + 1\)) = - frac(x + 1, 2)\
F\(5\) & = - frac(5 + 1, 2) = - 3 $

]
#example[
约简 $F\(x\)= frac(2\(x^2 - 1\)\(x - 1\)^2, \(1 - x\)^3\(x + 1\)^2)$，又 $x$ 取什么整数值时，能使 $F\(x\)$ 的值是正整数．

]
#solution[
$ F\(x\) & = frac(2\(x + 1\)\(x - 1\)\(x - 1\)^2, -\(x - 1\)^3\(x + 1\)^2)\
 & = - frac(2\(x + 1\)\(x - 1\)^3, \(x - 1\)^3\(x + 1\)^2)\
 & = - frac(2, x + 1) $

要使 $F\(x\)$ 的值是正整数，必须使 $x + 1 = - 1$ 或 $x + 1 = - 2$．

解得 $x = - 2$ 或 $x = - 3$．

$therefore quad$ 当 $x = - 2$ 或 $x = - 3$ 时，$F\(x\)$ 的值是正整数．

]
由以上各例，可以得出：

+ 约分应当约去分子与分母的最高公因式及分子与分母的系数的最大公约数；

+ 如果分式的分子、分母是多项式，可以把它们分别分解因式以后，再进行约分；对于高次多项式，应用余式定理或辗转相除法可以求得最高公因式．

==== 通分
对于分母不相同的几个分式，可将每个分式的分子、分母乘以适当的非零多项式，而使各分式的分母都相同，这种运算叫做#strong[通分]．通分时应取原来每个分式的分母的最低公倍式与它们各系数的最小公倍数之积作公分母．

#example[
把 $frac(a, 2 b)\,quad frac(b, 3 a^2)\,quad frac(c, 4 a b)$ 通分．

]
#solution[
$\[2 b\,thick 3 a^2\,thick 4 a b\]= 12 a^2 b$

因此：$ frac(a, 2 b) & = frac(a dot.op 6 a^2, 2 b dot.op 6 a^2) = frac(6 a^3, 12 a^2 b)\
frac(b, 3 a^2) & = frac(b dot.op 4 b, 3 a^2 dot.op 4 b) = frac(4 b^2, 12 a^2 b)\
frac(c, 4 a b) & = frac(c dot.op 3 a, 4 a b dot.op 3 a) = frac(3 a c, 12 a^2 b) $

]
#example[
把 $frac(2 x, x^2 - y^2)$，$frac(3 y, x^3 + y^3)$ 通分．

]
#solution[
由于：$ x^2 - y^2 & =\(x + y\)\(x - y\)\
x^3 + y^3 & =\(x + y\)\(x^2 - x y + y^2\) $

$therefore quad\[x^2 - y^2\,x^3 + y^3\]=\(x - y\)\(x + y\)\(x^2 - x y + y^2\)$

因此：$ frac(2 x, x^2 - y^2) & = frac(2 x\(x^2 - x y + y^2\), \(x - y\)\(x + y\)\(x^2 - x y + y^2\))\
frac(3 y, x^3 + y^3) & = frac(3 y\(x - y\), \(x - y\)\(x + y\)\(x^2 - x y + y^2\)) $

]
#exercise[
+ 不改变分式的值，使分子、分母的最高次幂的系数变为正数．

  #cols(2)[
  + $frac(- 2 a, - 3 b)$

  + $frac(7 x^2, - 9 y^2)$

  + $frac(1 - 3 x^2 + 2 x, 7 + 7 x - x^2)$

  + $- frac(- x^2 - 2 x^4 + 5, x^2 + 2 x^4 - 5)$

  ]

+ + 在什么条件下 $quad frac(3 a - 6 b, a + b) = 0$

  + 在什么条件下 $quad frac(2 a - b, b - a) = 1$

+ 约简下列各分式：

  + $frac(-\(x + y - z\)\(x - y + z\)\(x - y - z\), \(y + z - x\)\(y - z + x\)\(y - z - x\))$

+ 通分

  + $frac(1, \(a - b\)\(a - c\))\,quad frac(1, \(b - c\)\(b - a\))\,quad frac(1, \(c - a\)\(c - b\))$

  + $frac(x, x - y)\,quad frac(y, x + y)\,quad frac(2, y^2 - x^2)$

  + $frac(a - 1, a + 1)\,quad - frac(1 + a, 1 - a)\,quad frac(a^2 + 1, a^2 - 1)$

  + $frac(2 y - 3, 2 y^2 - 3 y - 2)\,quad frac(y - 2, 4 y^2 + 8 y + 3)$

  + $frac(1, x^3 - 3 x^2 + 2 x)\,quad frac(2, x^4 - x^2)\,quad frac(- 1, x^2 + x - 2)$

  + $frac(1, x^3 - 6 x^2 + 11 x - 6)\,quad frac(1, 2 x^3 - 7 x^2 + 7 x - 2)$

+ 约简 $F\(x\)= frac(6 x^2 - 12 x + 6, x^3 - 3 x^2 + 3 x - 1)$ 又 $x$ 取何整数值，能使 $F\(x\)$ 的值得正整数．

]
=== 分式的运算
分式的四则运算法则和分数的四则运算法则是一样的．

==== 分式的加减法
同分母的分式相加（减），只要把分子相加（减）作为分子，分母不变，并把结果化简；异分母的分式相加（减），就要先进行通分，再转化为同分母分式的相加（减）．

#example[
计算: $frac(x + 3 y, x^2 - y^2) - frac(x + 2 y, x^2 - y^2) + frac(2 x - 3 y, x^2 - y^2)$

]
#solution[
$ upright("原式") & = frac(x + 3 y -\(x + 2 y\)+\(2 x - 3 y\), x^2 - y^2)\
 & = frac(2 x - 2 y, x^2 - y^2) = frac(2\(x - y\), \(x + y\)\(x - y\))\
 & = frac(2, x + y) $

]
#example[
计算: $2 / x - frac(x - 3, 2 x^2 + 4 x + 2) + frac(1, 2 x + 2) - frac(4 x + 2, x\(x + 1\)^2)$

]
#solution[
$ upright("原式") & = 2 / x - frac(x - 3, 2\(x + 1\)^2) + frac(1, 2\(x + 1\)) - frac(2\(2 x + 1\), x\(x + 1\)^2)\
 & = frac(2 dot.op 2\(x + 1\)^2, 2 x\(x + 1\)^2) - frac(\(x - 3\)dot.op x, 2 x\(x + 1\)^2) + frac(x\(x + 1\), 2 x\(x + 1\)^2) - frac(2\(2 x + 1\)dot.op 2, 2 x\(x + 1\)^2)\
 & = frac(4\(x + 1\)^2 -\(x - 3\)x + x\(x + 1\)- 4\(2 x + 1\), 2 x\(x + 1\)^2)\
 & = frac(4 x^2 + 4 x, 2 x\(x + 1\)^2) = frac(4 x\(x + 1\), 2 x\(x + 1\)^2) = frac(2, x + 1) $

]
#example[
化简：$frac(1, \(a - b\)\(a - c\)) + frac(1, \(b - c\)\(b - a\)) + frac(1, \(c - a\)\(c - b\))$

]
#analyze[
$because quad a - c = -\(c - a\)\,quad b - a = -\(a - b\)\,quad c - b = -\(b - c\)$,

$therefore quad\(a - c\,b - a\,c - b\)=\(a - b\)\(b - c\)\(c - a\)$.

]
#solution[
$ upright("原式") & = - frac(1, \(a - b\)\(c - a\)) - frac(1, \(b - c\)\(a - b\)) - frac(1, \(c - a\)\(b - c\))\
 & = frac(-\(b - c\)-\(c - a\)-\(a - b\), \(a - b\)\(b - c\)\(c - a\))\
 & = frac(- b + c - c + a - a + b, \(a - b\)\(b - c\)\(c - a\))\
 & = 0 $

]
#example[
计算 $frac(a^3, a - 1) - a^2 - a - 1$

]
#analyze[
$- a^2 - a - 1 = -\(a^2 + a + 1\)$．一个分式和一个整式的代数和，可以把整式 $a^2 + a + 1$ 当作 $frac(a^2 + a + 1, 1)$．

]
#solution[
$ upright("原式") & = frac(a^3, a - 1) - frac(a^2 + a + 1, 1)\
 & = frac(a^3, a - 1) - frac(\(a^2 + a + 1\)\(a - 1\), a - 1)\
 & = frac(a^3 -\(a^3 - 1\), a - 1)\
 & = frac(1, a - 1) $

]
#example[
计算：$frac(x^2 - 1, x^4 + x^2 - 2 x) + frac(2 x^2 + 3 x - 2, 2 x^3 + x^2 + 3 x - 2)$

]
#analyze[
由余式定理得 $x - 1$ 是第一个分式的分子、分母的公因式，将此分式约简：$ frac(x^2 - 1, x^4 + x^2 - 2 x) = frac(\(x + 1\)\(x - 1\), \(x - 1\)\(x^3 + x^2 + 2 x\)) = frac(x + 1, x^3 + x^2 + 2 x) $ 由余式定理得 $2 x - 1$ 是第二个分式的分子、分母的公因式，将此分式约简：$ frac(2 x^2 + 3 x - 2, 2 x^3 + x^2 + 3 x - 2) = frac(\(x + 2\)\(2 x - 1\), \(2 x - 1\)\(x^2 + x + 2\)) = frac(x + 2, x^2 + x + 2) $

]
#solution[
$ upright("原式") & = frac(\(x + 1\)\(x - 1\), \(x - 1\)\(x^3 + x^2 + 2 x\)) + frac(\(x + 2\)\(2 x - 1\), \(2 x - 1\)\(x^2 + x + 2\))\
 & = frac(x + 1, x^3 + x^2 + 2 x) + frac(x + 2, x^2 + x + 2)\
 & = frac(x + 1, x\(x^2 + x + 2\)) + frac(x\(x + 2\), x\(x^2 + x + 2\))\
 & = frac(x^2 + 3 x + 1, x\(x^2 + x + 2\)) $

]
#example[
已知 $a + b + c = 0$，求证：$frac(1, b^2 + c^2 - a^2) + frac(1, c^2 + a^2 - b^2) + frac(1, a^2 + b^2 - c^2) = 0$

]
#analyze[
利用已知条件 $a + b + c = 0$，使各个分母化简．

]
#proof[
#emph[Proof.]由于：$ frac(1, b^2 + c^2 - a^2) & = frac(1, b^2 + c^2 -\(b + c\)^2) = - frac(1, 2 b c)\
frac(1, c^2 + a^2 - b^2) & = frac(1, c^2 + a^2 -\(c + a\)^2) = - frac(1, 2 a c)\
frac(1, a^2 + b^2 - c^2) & = frac(1, a^2 + b^2 -\(a + b\)^2) = - frac(1, 2 a b) $ 因此：$  & quad frac(1, b^2 + c^2 - a^2) + frac(1, c^2 + a^2 - b^2) + frac(1, a^2 + b^2 - c^2)\
 & = - frac(1, 2 b c) - frac(1, 2 a c) - frac(1, 2 a b)\
 & = - frac(a + b + c, 2 a b c) = 0 quad\(because med a + b + c = 0\) $~◻

]
#exercise[
+ 计算下列各式的值：

  + $frac(a^2 - 2 a + 1, a^2 + a + 1) - frac(a^2 + 3 a - 3, a^2 + a + 1) + frac(5 a - 4, a^2 + a + 1)$

+ 计算下列各式：

  + $frac(1, \(x - 3\)\(2 - x\)) + frac(1, \(x - 2\)\(3 - x\))$

  + $frac(1, x^2 - 3 x + 2) + frac(1, x^2 - 5 x + 6) + frac(1, 4 x - x^2 - 3)$

  + $frac(\(a + b\)^2, \(a - b\)\(b - c\)) + frac(6 a b, \(b - a\)\(b - c\)) - frac(a^2 + b^2, \(a - b\)\(c - b\))$

  + $frac(x^2 - 4, x^3 - 3 x^2 - x + 6) - frac(3 x^2 - 14 x - 5, 3 x^3 - 2 x^2 - 10 x - 3)$

]
==== 分式的乘法
两个分式相乘时，分子的乘积作为积的分子，分母的乘积作为积的分母，再把结果化简．即：$ frac(f\(x\), g\(x\)) dot.op frac(h\(x\), q\(x\)) = frac(f\(x\)dot.op h\(x\), g\(x\)dot.op q\(x\)) $

#example[
计算：$frac(a^2 - b^2, a^2 + a b + b^2) times frac(a - b, a^3 + b^3)$

]
#solution[
$ upright("原式") & = frac((a^2 - b^2)\(a - b\), (a^2 + a b + b^2) (a^3 + b^3))\
 & = frac(\(a + b\)\(a - b\)^2, (a^2 + a b + b^2)\(a + b\)(a^2 - a b + b^2))\
 & = frac(\(a - b\)^2, a^4 + a^2 b^2 + b^4) $

]
#example[
计算：$(x y^2 - 2 x y + x) dot.op frac(y^3 + 1, y^3 - y)$

]
#solution[
$ upright("原式") & = frac(x\(y^2 - 2 y + 1\), 1) dot.op frac(y^3 + 1, y\(y^2 - 1\))\
 & = frac(x\(y - 1\)^2\(y + 1\)\(y^2 - y + 1\), y\(y + 1\)\(y - 1\))\
 & = frac(x\(y - 1\)\(y^2 - y + 1\), y) $

]
#example[
计算：$(frac(x^2 + x + 1, x^2 - 2 x + 1) - frac(x^3 + 1, \(x - 1\)^3)) dot.op (x^2 - 2 x + 1)$

]
#solution[
$ upright("原式") & = (frac(x^2 + x + 1, \(x - 1\)^2) - frac(x^3 + 1, \(x - 1\)^3)) dot.op\(x - 1\)^2\
 & = frac(\(x^2 + x + 1\)\(x - 1\)-\(x^3 + 1\), \(x - 1\)^3) dot.op\(x - 1\)^2\
 & = frac(\(x^3 - 1\)-\(x^3 + 1\), x - 1) = - frac(2, x - 1) $

]
==== 分式的除法
两个分式相除时，把除式的分子、分母颠倒后与被除式相乘即可．即：$ frac(f\(x\), g\(x\)) div frac(h\(x\), q\(x\)) = frac(f\(x\), g\(x\)) times frac(q\(x\), h\(x\)) = frac(f\(x\)dot.op q\(x\), g\(x\)dot.op h\(x\)) $

#example[
计算：$frac(x^2 - 1, x^2 + 1) div frac(x^2 - 1, x^4 - 1)$

]
#solution[
$ upright("原式") & = frac(x^2 - 1, x^2 + 1) times frac(x^4 - 1, x^2 - 1)\
 & = frac((x^2 - 1) (x^2 + 1) (x^2 - 1), (x^2 + 1) (x^2 - 1))\
 & = x^2 - 1 $

]
#example[
计算：$frac(x^3 - y^3, x^2 + y^2) div\(x - y\)$

]
#solution[
$ upright("原式") & = frac(x^3 - y^3, x^2 + y^2) times frac(1, x - y)\
 & = frac(\(x - y\)(x^2 + x y + y^2), x^2 + y^2) times frac(1, x - y)\
 & = frac(x^2 + x y + y^2, x^2 + y^2) $

]
#example[
计算 $(1 / a + 1 / b) div (1 / a - 1 / b)$

]
#solution[
$ upright("原式") & = frac(b + a, a b) div frac(b - a, a b)\
 & = frac(b + a, a b) times frac(a b, b - a)\
 & = frac(b + a, b - a) $

]
#example[
化简：$frac(frac(2\(1 - x\), 1 + x) + frac(\(1 - x\)^2, \(1 + x\)^2) + 1, frac(2\(1 + x\), 1 - x) + (frac(1 + x, 1 - x))^2 + 1)$

]
#note[
这是一个分子、分母都是分式的繁分式，实际上就是两个分式相除．可以先把它们分别化简后，再进行除法运算．

]
#solution[
$ upright("原式") & = frac(2\(1 - x\)\(1 + x\)+\(1 - x\)^2 +\(1 + x\)^2, \(1 + x\)^2) / frac(2\(1 + x\)\(1 - x\)+\(1 + x\)^2 +\(1 - x\)^2, \(1 - x\)^2)\
 & = frac(\[\(1 + x\)+\(1 - x\)\]^2, \(1 + x\)^2) div frac(\[\(1 + x\)+\(1 - x\)\]^2, \(1 - x\)^2)\
 & = frac(\[\(1 + x\)+\(1 - x\)\]^2, \(1 + x\)^2) times frac(\(1 - x\)^2, \[\(1 + x\)+\(1 - x\)\]^2)\
 & = frac(\(1 - x\)^2, \(1 + x\)^2) = (frac(1 - x, 1 + x))^2 $

]
#exercise[
+ 计算下列各式

  + $(x^2 - 6 x + 9) div frac(x^2 - 9 x + 18, x + 3)$

  + $frac(a + x, \(m + n\)^2) dot.op frac(x^2 - y^2, 12) dot.op frac(m + n, n - m) dot.op frac(6 (m^2 - n^2), x + y)$

+ 化简：

  #cols(2)[
  + $c / b / a$

  + $c / b / a$

  + $frac(a - 1 / a, a - 1)$

  + $frac(P + 2 - frac(1, P + 2), P + 2 + frac(1, P + 2))$

  ]

+ #staritem;化简：$G\(a\)= frac(1 - frac(4 a + 1, a + 1), a)$,又 $a$ 取何整数值时, $G\(a\)$ 等于正整数．

]
=== 分式方程
如果方程式中含有分式，那么这样的方程，叫做#strong[分式方程]，例如 $2 / x = 1$, $y + 1 + 2 / y = frac(y^2, y - 1)$, $frac(5, x - 1) = frac(1, x + 3)$ 等，都是分式方程．如果 $x$ 是未知数，$a$ 表示一个非零常数，那么 $x / a + x = 1$，就不是分式方程．

解分式方程主要是设法把原方程变形为整式方程，也就是在方程两边乘以同一个含有未知数的整式．这个整式一般是分母的最低公倍式．

#example[
解方程 $frac(5, x - 1) = frac(1, x + 3)$

]
#solution[
两边乘以分母的最低公倍式：$\(x - 1\)\(x + 3\)$,并约简得：$ 5\(x + 3\)= x - 1 $

解整式方程：$4 x = - 16 quad arrow.r.double quad x = - 4$

验根：把 $x = - 4$ 分别代入原方程两边．$ upright("左式") & = frac(5, - 4 - 1) = - 1\
upright("右式") & = frac(1, - 4 + 3) = - 1 $

$because quad upright("左") = upright("右")$

$therefore quad$ 原方程的解集是：${ - 4 }$．

]
#example[
解方程：$frac(1, x + 2) + frac(4 x, x^2 - 4) = 1 + frac(2, x - 2)$

]
#solution[
原方程就是：$frac(1, x + 2) + frac(4 x, \(x + 2\)\(x - 2\)) = 1 + frac(2, x - 2)$

两边乘以分母的最低公倍式 $\(x + 2\)\(x - 2\)$,并约简得：$ \(x - 2\)+ 4 x =\(x + 2\)\(x - 2\)+ 2\(x + 2\) $ 解整式方程 $x^2 - 3 x + 2 = 0\,#h(2em) therefore quad x_1 = 1\,thick x_2 = 2$

验根：把 $x = 1$ 代入原方程两边：$ upright("左式") & = frac(1, 1 + 2) + frac(4, 1 - 4) = 1 / 3 - 4 / 3 = - 1\
upright("右式") & = 1 + frac(2, 1 - 2) = 1 - 2 = - 1 $ $therefore quad x = 1$ 是原方程的根．

把 $x = 2$ 代入原方程时，由于分母 $x - 2 = 0$, $x^2 - 4 = 0$，就是说：当 $x = 2$ 时原方程没有意义，所以 $x = 2$ 不是原方程的根，应舍去它．

因此：原方程的解集是 ${ 1 }$．

]
从以上两例可以看出：分式方程的两边乘以同一个含有未知数的整式，并进行约简，就得到一个新的整式方程．这个整式方程的根，可能是原分式方程的根，也可能不是原分式方程的根．而这里不适合原方程的根，就叫做原方程的#strong[增根]，验根后应该舍去（例如，在例6.22中的 $x = 2$ 就是增根）．

我们不禁要问：解分式方程的过程中，为什么可能增根呢？

先观察例6.22,原分式方程未知数 $x$ 的可取值范围是 $x eq.not plus.minus 2$ 的一切实数，整式方程 $x^2 - 3 x + 2 = 0$ 的 $x$ 可取值范围扩大为一切实数，这样解整式方程得到的根 $x_1 = 1$,恰好在原方程 $x$ 的可取值范围内，所以适合原方程，是原方程的根．而另一根 $x_2 = 2$,恰好在原方程 $x$ 可取值范围外，所以不适合原方程，是原方程的增根．

再观察例6.21,原分式方程未知数 $x$ 的可取值范围是 $x eq.not 1$ 且 $x eq.not - 3$ 的一切实数，整式方程 $5\(x + 3\)= x - 1$ 的 $x$ 可取值范围扩大为一切实数，但这个整式方程的根 $x = - 4$,恰好在原分式方程的可取值范围内，所以是原方程的根．

解分式方程过程中，由于原方程两边乘以含有未知数的整式，约简而得到一个整式方程．这样就扩大了未知数的可取值范围，自然就有产生增根的可能．但是，增根并不可怕，只要通过检验，就可以鉴别出来把它舍去．所以，解分式方程是必须进行验根的．

仔细观察、分析，不难发现：分式方程的增根，都正好是“使原方程中的一些分母的值为零”的未知数值．因此，解分式方程时，比较简捷的验根的方法是：把整式方程的根，逐个代入分母的最低公倍式中，如果其值不等于零，则是原方程的根；如果其值等于零，则它是原方程的增根，要舍去．

#example[
试求一个正实数 $x$ 满足下述条件：$x = frac(1, x - 1)$

]
#solution[
方程两边乘以 $x - 1$，并约简得 $x\(x - 1\)= 1$．

解整式方程：$x^2 - x - 1 = 0$，

$therefore quad x_1 = 1 / 2 + sqrt(5) / 2\,#h(2em) x_2 = 1 / 2 - sqrt(5) / 2$．

验根：把 $x_1 = 1 / 2 + sqrt(5) / 2$ 代入 $x - 1$，其值不等于零．把 $x_2 = 1 / 2 - sqrt(5) / 2$ 代入 $x - 1$，其值不等于零．

$therefore quad$ 原方程的解集是：${1 / 2 + sqrt(5) / 2 \, thick 1 / 2 - sqrt(5) / 2}$

但 $because quad 1 / 2 - sqrt(5) / 2 < 0$，不合题意应舍去．

$therefore quad$ 所求正实数是：$1 / 2 + sqrt(5) / 2$．

]
综合以上各例，可以概括出解分式方程的一般步骤是：

+ 方程两边乘以分母的最低公倍式，并约简变形为整式方程．

+ 解整式方程．

+ 验根：把整式方程的根分别代入原方程分母的最低公倍式中去．如果其值不等于零，则是原方程的根；如果其值等于零，则是原方程的增根，要舍去．

#exercise[
解下列方程：

#cols(2)[
+ $5 / y = frac(3, y - 2)$

+ $1 - frac(1, x - 4) = frac(5 - x, x - 4)$

+ $1 + frac(1, x - 4) = frac(5 - x, x - 4)$

+ $frac(2, 1 - x^2) = frac(1, 1 + x) + 1$

]
]
#example[
解方程：$frac(2, 1 + x) - frac(3, 1 - x) = frac(6, x^2 - 1)$

]
#solution[
原方程就是 $frac(2, x + 1) + frac(3, x - 1) = frac(6, \(x + 1\)\(x - 1\))$

方程两边乘以 $\(x + 1\)dot.op\(x - 1\)$，并约简得：$ 2\(x - 1\)+ 3\(x + 1\)= 6 $ 解整式方程 $ 2 x - 2 + 3 x + 3 & = 6\
5 x & = 5\
x & = 1 $

验根：把 $x = 1$ 代入 $\(x + 1\)dot.op\(x - 1\)$ 所得的值等于零．

$therefore quad x = 1$ 是增根（舍去），

$therefore quad$ 原方程的解集是空集 $nothing$．

]
#example[
解方程 $frac(3, x - 2) - frac(4, x - 1) = frac(1, x - 4) - frac(2, x - 3)$

]
#analyze[
如果开始就乘以分母的最低公倍式，这样很复杂，所以先采取方程两边分别通分，这样比较简便．

]
#solution[
方程两边分别通分得：$ frac(3 x - 3 - 4 x + 8, \(x - 1\)\(x - 2\)) & = frac(x - 3 - 2 x + 8, \(x - 3\)\(x - 4\))\
frac(- x + 5, \(x - 1\)\(x - 2\)) & = frac(- x + 5, \(x - 3\)\(x - 4\)) $

方程两边乘以 $\(x - 1\)\(x - 2\)\(x - 3\)\(x - 4\)$，得：#numbered-eq($ \(- x + 5\)\(x - 3\)\(x - 4\)=\(- x + 5\)\(x - 1\)\(x - 2\) $)即：$ \(- x + 5\)\[\(x^2 - 7 x + 12\)-\(x^2 - 3 x + 2\)\]= 0 $

解整式方程 $\(- x + 5\)\(- 4 x + 10\)= 0$

$therefore quad x_1 = 5\,quad x_2 = 5 / 2$

验根：把 $x_1 = 5\,quad x_2 = 5 / 2$ 分别代入分母的最低公倍式中，很明显其值都不等于零．

$therefore quad$ 原方程的解集是 ${5 \, 5 / 2}$．

]
#rmk[
如果在方程(6.1)的两边除以 $- x + 5$,那么就会丢失 $x = 5$ 这一个根，所以在解方程的过程中，如果方程两边除以含有未知数的整式，那么原方程就有丢根的可能，丢根是不易找回来的，因此在解方程的过程中，要尽量避免进行这种变形．

]
#exercise[
解下列方程：

#cols(2)[
+ $x = frac(1, x - 1)$

+ $frac(10 x, 2 x - 1) + frac(5, 1 - 2 x) = 2$

+ $frac(1, 1 - y) + frac(3 y - y^2, y^2 - 1) = 0$

+ $frac(1, t + 2) + frac(1, t + 7) = frac(1, t + 3) + frac(1, t + 6)$

]
]
在解有些分式方程的过程中，如果利用换元法，引进一个辅助未知数，那么，就可以得到一个容易解的方程，使解法简化．

#example[
解方程 $frac(\(x - 1\)^2, x) + frac(x, \(x - 1\)^2) = 2$

]
#solution[
设 $frac(\(x - 1\)^2, x) = y$，则 $frac(x, \(x - 1\)^2) = 1 / y$

代入原方程就是 $y + 1 / y = 2$，两边乘以 $y$，并约简得 $ y^2 + 1 = 2 y quad arrow.r.double quad y^2 - 2 y + 1 = 0 $ 解这个方程，得：$y = 1$．

把 $y = 1$ 代入 $frac(\(x - 1\)^2, x) = y$，得：#numbered-eq($ frac(\(x - 1\)^2, x) = 1 $)两边乘以 $x$，并约简得：#numbered-eq($ \(x - 1\)^2 = x $)即：$x^2 - 3 x + 1 = 0$

$therefore quad x_1 = 3 / 2 + sqrt(5) / 2\,#h(2em) x_2 = 3 / 2 - sqrt(5) / 2$．

把 $x_1\,x_2$ 分别代入方程(6.2)的分母中，其值不等于零．

$therefore quad$ 原方程的解集是 ${3 / 2 + sqrt(5) / 2 \, thick 3 / 2 - sqrt(5) / 2}$

]
#note[
解上例的过程中，由方程(6.2)到方程(6.3)有产生增根的可能，所以只要把 $x_1\,x_2$ 代入方程(6.2)验根就可以．

]
#example[
解方程 $1 / a + a / x = 1 / b + b / x quad\(a eq.not b\)$

]
#solution[
方程两边乘以 $a b x$ 得：$ b x + a^2 b = a x + a b^2 $ 解整式方程 $\(b - a\)x = a b\(b - a\)$

$because quad a eq.not b\,#h(2em) therefore quad b - a eq.not 0$

$therefore quad x = a b$．

验根：把 $x = a b$ 代入 $a b x$ 得 $a^2 b^2$．

$because quad a eq.not 0\,thick b eq.not 0$ (如果 $a = 0$, $b = 0$,那么原方程无意义）．

$therefore quad a^2 b^2 eq.not 0$

$therefore quad$ 原方程的解集是 ${ a b }$．

]
#exercise[
解下列方程：

+ $frac(a + b, x) - a / b = 1 quad\(a + b eq.not 0\)$

+ $1 / x - 1 / a - 1 / b = frac(1, x - a - b) quad\(a + b eq.not 0\)$

+ 在 $1 / R = 1 / r - frac(1, r - r_1)$ 中，已知 $R\,r_1$，求 $r$．（其中各字母表示正数，$r_1 > 4 R$）

]
#example[
某公社原计划要在一定的日期里开垦荒地960亩，如果实际每天比原计划多开垦40亩，可提前4天完成原计划．求原计划一天开垦荒地的亩数和完成的天数．

]
#analyze[
这个应用题中的数量关系，可列表如下：

#align(center)[
#table(
  columns: (auto, auto, auto, auto,),
  align: (center, center, center, center,),
  table.hline(),
  [],
  [工作总量],
  [一天的工作量],
  [所需天数],
  table.hline(),
  [原计划工作情况],
  [960亩],
  [$x$ 亩],
  [$upright(P H M 6)$],
  [实际工作情况],
  [960亩],
  [$\(x + 40\)$ 亩],
  [$upright(P H M 7)$],
  table.hline(),
)

]
$ upright("原计划需要的天数") = upright("实际需要天数") + 4 upright("(天)") $

]
#solution[
设原计划每天开垦荒地 $x$ 亩，则原计划需要 $960 / x$（天）完成，实际每天开垦荒地 $\(x + 40\)$ 亩，实际需要 $frac(960, x + 40)$（天）

按题意得：$960 / x = frac(960, x + 40) + 4$

两边乘以 $x\(x + 40\)$,得：$ 960\(x + 40\)= 960 x + 4 x\(x + 40\) $ 整理得：$x^2 + 40 x - 9600 = 0$

$therefore quad x_1 = 80\,quad x_2 = - 120$

检验：$x_1 = 80$ 是原方程的根．$x_2 = - 120$ 是原方程的根，但不合题意，应舍去．

又 $960 / x = 960 / 80 = 12$\(天)

答：原计划每天开垦荒地80亩，需要12天．

]
#example[
$A$、$B$ 两地相距87公里，甲骑自行车从 $A$ 出发向 $B$ 驶去，经过30分钟后，乙骑自行车由 $B$ 出发，用每小时比甲快4公里的速度向 $A$ 驶来，两人在距离 $B$45公里的 $C$ 处相遇，求各人的速度．

]
#analyze[
#align(center)[
#fig("6-01")

]
#align(center)[
#table(
  columns: (auto, auto, auto, auto,),
  align: (center, center, center, center,),
  table.hline(),
  [],
  [所行距离],
  [速度],
  [时间],
  table.hline(),
  [甲],
  [$\(87 - 45\)$ 公里],
  [$x$ 公里/小时],
  [$upright(P H M 8)$],
  [乙],
  [45公里],
  [$\(x + 4\)$ 公里/小时],
  [$upright(P H M 9)$],
  table.hline(),
)

]
$ upright("甲自") A upright("到") C upright("所需要时间") = upright("乙由") B upright("到") C upright("所需
要时间") + 30 / 60 upright("小时") $

]
#solution[
设甲每小时行 $x$ 公里，则乙每小时行 $\(x + 4\)$ 公里，按题意：$ frac(87 - 45, x) = frac(45, x + 4) + 30 / 60 $ 两边乘以 $2 x\(x + 4\)$ 得：$ 2 times 42\(x + 4\) & = 2 times 45 x + x\(x + 4\)\
x^2 + 10 x - 336 & = 0 $ $therefore quad x_1 = 14\,#h(2em) x_2 = - 24$

检验：$x = 14$ 是原方程根，$x = - 24$ 是原方程根，但不合题意，舍去．$ x + 4 = 14 + 4 = 18 $

答：甲每小时行14公里，乙每小时行18公里．

]
#example[
甲乙两个工程队合做一项工程，两队合做两天后，由乙队单独做1天就完成了全部工程．已知乙队单独做所需的天数是甲队单独做所需天数的 $1 1 / 2$ 倍．求甲、乙两队单独做各需多少天？

]
#solution[
设甲队独做 $x$ 天完成，乙队独做 $3 / 2 x$ 天完成，则甲每天工作量是 $1 / x$，乙每天工作量是 $frac(1, upright(P H M 10) x)$，甲、乙两队合做一天的工作量是 $1 / x + frac(1, upright(P H M 11) x)$；合做两天的工作量是 $2 (1 / x + frac(1, upright(P H M 12) x))$．

按题意得：$ 2 (1 / x + frac(1, upright(P H M 13) x)) + frac(1, upright(P H M 14) x) = 1 $ 就是 $2 / x + frac(4, 3 x) + frac(2, 3 x) = 1$

方程两边乘以 $3 x$ 得：$ 6 + 4 + 2 & = 3 x\
3 x & = 12\
x & = 4 $

经检验，$x = 4$ 是原方程的根．又 $3 / 2 x = 6$．

答：甲独做4天完成任务，乙独做6天完成任务．

]
#exercise[
+ 甲、乙两个车工，各车1500个螺丝．乙改进了操作方法，生产效率提高到甲的3倍，因此比甲少用20个工时完成任务．他们每小时各车多少个螺丝？

+ 甲、乙两个车站相距96公里，快车和慢车同时从甲站开出，1小时后，快车在慢车前12公里，快车比慢车早40分钟到达乙站．快车和慢车的速度各是多少？

+ 甲、乙、丙三人合做一件工作12天完成，已知甲1天完成的工作，乙须要2天，丙须要3天，问三人单独完成这件工作，各需要多少天？

]
#heading(level: 2, numbering: none)[习题6.1]
+ 下列各分式在什么条件下无意义：

  #cols(2)[
  + $frac(1, 2 x - 3)$

  + $frac(x - y, x + y)$

  + $frac(x, x^4 + 1)$

  + $frac(2 x - 1, x^2 - 2)$

  ]

+ 当 $x$ 取何值时，分式 $frac(x - 2, \(1 - x\)\(x + 3\))$

  + 没有意义；

  + 分式值等于0;

  + 分式值等于1.

+ 分式 $frac(a + 3, a - 4)$ 和 $frac(\(a + 3\)\(a - 3\), \(a - 4\)\(a - 3\))$ 的值是不是永远相等？

+ 先化简下列各式，再求它的值．

  + $frac(3 a^2 - a b, 8 a^2 - 6 a b + b^2)$,其中 $a = - 2 / 3\,quad b = 1 / 2$

  + $frac(75\(x - 2 y\)^3\(2 x - y\)^2, 15\(y - 2 x\)^2\(2 y - x\))$,其中 $x = 4.5\,quad y = 1.7$

+ 计算下列各式：

  + $frac(a, a^2 - 1) + frac(a^2 + a - 1, a^3 - a^2 + a - 1) + frac(a^2 - a - 1, a^3 + a^2 + a + 1) - frac(2 a^3, a^4 - 1)$

  + $a - frac(a^2 - b^2, a) + frac(a^2 + b^2, a) - b$

  + $frac(1, x - 2) + frac(2, x + 1) - frac(2, x - 1) - frac(1, x + 2)$

  + $frac(1, 1 - x) + frac(1, 1 + x) + frac(2, 1 + x^2) + frac(4, 1 + x^4)$

  + $frac(x^2 + 7 x + 12, x^2 - 8 x + 15) div frac(x^2 + 3 x - 4, x^2 - 5 x + 6) div frac(x^2 + x - 6, x^2 - 4 x - 5)$

  + $frac(\(a - b\)^2, a^2 - a b + b^2) dot.op frac(a^3 + b^3, \(a - b\)x^2) div frac(b^2 - a^2, x^2)$

  + $frac(x, x - 1) + frac(x, x + 1) - frac(x + 1, x^3 - 1) div frac(1, x^2 + x + 1)$

  + $(x - 1 + 1 / x) div frac(x^2 - x + 1, x)$

  + $(1 + a / x + a^2 / x^2) (1 - a / x) - frac(2 x^3 - a^3, x^3)$

  + $(x / y - y / x) div (x / y + y / x - 2) div frac(x, x - y)$

+ 化简 $F\(x\)= frac(1, 1 - frac(1 + x, x - 1 / x))$，又 $x$ 取何值能使 $F\(x\)$ 的值等于2？$F\(x\)$ 的值能等于1吗？为什么？

+ 解下列各方程：

  + $frac(1 - 3 x, 1 + 3 x) + frac(3 x + 1, 3 x - 1) = frac(12, 1 - 9 x^2)$

  + $frac(7, x^2 + x) - frac(1, x - x^2) = frac(6, x^2 - 1)$

  + $5 + frac(96, x^2 - 16) = frac(2 x - 1, x + 4) - frac(3 x - 1, 4 - x)$

  + $frac(1, x + 2) - frac(1, x + 4) = frac(1, x + 3) - frac(1, x + 1)$

  + $(x + 1 / x)^2 - 9 / 2 (x + 1 / x) + 5 = 0$

  + $frac(x^2 + 3 x + 1, 4 x^2 + 6 x - 1) - frac(3 (4 x^2 + 6 x - 1), x^2 + 3 x + 1) - 2 = 0$

+ 解下列关于 $x$ 的方程：

  + $x + 1 / x = a + 1 / a$

  + $frac(1, b + x) = frac(3 b, 2 x^2) - 1 / x$

  + $frac(x + m, x - n) + frac(x + n, x - m) = 2 quad\(n + m eq.not 0\)$

  + $frac(2 x, x + b) + frac(x, x - b) = frac(b^2, 4 x^2 - 4 b^2)$

+ 解下列应用题：

  + 甲组人数比乙组人数多10人，甲、乙两组人数的比是 $5 / 4$，求两组人数．

  + 甲做90个机器零件所用的时间和乙做120个机器零件所用的时间相同，已知两人每小时一共做35个机器零件，两人每小时各做多少个？

  + 马车后轮周长比前轮周长大20厘米，行了2500米时，前轮比后轮多转了60转．求前后轮的周长各等于多少米？（精确至0.01米）

  + 一辆汽车原定在若干小时内以某一定的速度到达相距300里的目的地，如果每小时加快10里，那末可以早到 $1 1 / 2$ 小时．求原定的速度．

  + 甲组的工作效率比乙组高25%,因此甲组加工2000个零件所用的时间比乙组加工1800个零件所用的时间还少30分钟．甲，乙两组每小时各能加工多少个零件？

  + 某工厂有一个水池，上面装有甲、乙两个水管，如果把两个水管都打开，1小时20分就可以把水池注满，若打开甲管10分钟和打开乙管12分钟，就可以注满水池的 $2 / 15$，求单独一个水管注满水池各需多少时间？

  + 汽船顺流、逆流各走48公里，共经5小时．如果水流速度每小时4公里，求汽船在静水中的速度．

  + 一架飞机顺风飞行1380公里和逆风飞行1020公里所需的时间相等，已知这架飞机的速度是每小时300公里．求风的速度．

== 二次根式与根式方程
我们已经学习过平方根，也就是如果 $x^2 = a$,那么 $x$ 叫做 $a$ 的二次方根，简称平方根．正数的平方根是两个相反的数，记作 $plus.minus sqrt(a)$\; 0的平方根是0;负数在实数范围内没有平方根．

正数的正平方根叫做算术平方根；零的算术平方根是零，记作 $sqrt(0) = 0$．

=== 二次根式和二次根式的变形
表示平方根的式子，叫做#strong[二次根式]．

例如：$sqrt(3)\,quad - 2 sqrt(7)\,quad - sqrt(x) thick\(x gt.eq 0\)\,quad sqrt(b^2 + 1)$ 等都是二次根式．

由第三章学过的平方根与算术平方根的意义，可以得到二次根式的基本性质：

#blk[][
+ $(sqrt(a))^2 = a quad\(a gt.eq 0\)$

+ $sqrt(a^2) =\|a\|= cases(delim: "{", a\, & a gt.eq 0, - a\, & a < 0)$

+ $sqrt(a dot.op b) = sqrt(a) dot.op sqrt(b) quad\(a gt.eq 0\,thick b gt.eq 0\)$

+ $sqrt(a / b) = sqrt(a) / sqrt(b) quad\(a gt.eq 0\,thick b > 0\)$

]
利用二次根式的基本性质，可以进行化简．

#example[
化简 $sqrt(\(x - 2\)^2)$

]
#solution[
$ sqrt(\(x - 2\)^2) =\|x - 2\|= cases(delim: "{", x - 2\, & x gt.eq 2, 2 - x\, & x < 2) $

]
#example[
化简 $sqrt(x^2 - 2 x y + y^2)$

]
#solution[
$ sqrt(x^2 - 2 x y + y^2) & = sqrt(\(x - y\)^2) =\|x - y\|\
 & = cases(delim: "{", x - y\, & x gt.eq y, y - x\, & x < y) $

]
#example[
化简 $sqrt(\(x^2 + 1\)^2)$

]
#solution[
$sqrt(\(x^2 + 1\)^2) = x^2 + 1$

]
#example[
如果 $a$、$b$ 为非负实数，试化简下列各式：$ sqrt(a^4)\,#h(2em) sqrt(0.01 a^2 b^6)\,#h(2em) sqrt(a^(2 n)) $（n是自然数）．

]
#solution[
+ $sqrt(a^4) = sqrt(\(a^2\)^2) = a^2$

+ $sqrt(0.01 a^2 b^6) = sqrt(\(0.1 a b^3\)^2) = 0.1 a b^3$

+ $sqrt(a^(2 n)) = sqrt(\(a^n\)^2) = a^n$

]
从例6.34可见，如果被开方数中的字母与数字因数都为非负实数，那么当被开方数的指数是偶数的时候可以化去根号．

#exercise[
+ 回答下列各题：

  + 289的平方根等于什么？

  + 0的平方根等于什么？

  + 361的算术平方根等于什么？

  + $sqrt(144 / 169)$ 等于什么？

  + $- sqrt(0.0064)$ 等于什么？

  + $- 0.01$ 有没有平方根？

+ 化简下列各式：

  #cols(2)[
  + $sqrt(\(- 3\)^2)$

  + $sqrt(x^2)$

  + $sqrt(\(a - 1\)^2)$

  + $sqrt(x^2 - 6 x + 9)$

  ]

+ + 如果 $sqrt(a^2) = - a$, $a$ 是怎样的数？

  + 式子 $sqrt(- a)$ 在什么条件下有意义（在实数范围内）？

+ $x$ 取何值下列各式有意义？

  #cols(2)[
  + $sqrt(x - 3)$

  + $sqrt(x + 4)$

  + $sqrt(a^2 + 1)$

  + $sqrt(- x^2)$

  ]

+ 如果 $x\,y$ 是非负实数，化去下列各式的根号．

  + $sqrt(0.04 x^2 y^4)$

  + $sqrt(121 x^4 y^6)$

  + $sqrt(1 / 16 x^6 y^8)$

  + $sqrt(x^(2 n) y^(4 m))$\($n\,m$ 为自然数)

]
应当指出，如果没有特殊说明，根号内的字母取值，都要使二次根式有意义．

利用二次根式的基本性质，还可以进行二次根式的变形．

==== 因式的外移和内移
如果在二次根式的根号内，有的因式能够开得尽，那么，就可以用它的算术根代替而移到根号外面；反过来，也可以将根号外面的正因式，平方以后移到根号里面去．

如果被开方数是代数和的形式，那么先分解因式，变形为积的形式，再移因式到根号外面来．

#example[
把下列各根号内的因式移到根号外面来．

#cols(2)[
+ $sqrt(x^5)$

+ $sqrt(8 a^3 b^2) quad\(b gt.eq 0\)$

+ $sqrt(a^3 + 3 a^2 b + 3 a b^2 + b^3)$

+ $sqrt(frac(c, a^2 b^2)) quad\(a > 0\,thick b > 0\)$

]
]
#solution[
+ $sqrt(x^5) = sqrt(x^4 dot.op x) = sqrt(x^4) dot.op sqrt(x) = x^2 sqrt(x)$

+ $sqrt(8 a^3 b^2) = sqrt(4 a^2 b^2 dot.op 2 a) = sqrt(4 a^2 b^2) dot.op sqrt(2 a) = 2 a b sqrt(2 a)$

+ $sqrt(a^3 + 3 a^2 b + 3 a b^2 + b^3) = sqrt(\(a + b\)^3) =\(a + b\)sqrt(a + b)$

+ $sqrt(frac(c, a^2 b^2)) = sqrt(c) / sqrt(a^2 b^2) = frac(sqrt(c), a b) = frac(1, a b) sqrt(c)$

]
#example[
把下列各根号外面的因式移到根号里面去．$ 2 a sqrt(a) thick thick\(a gt.eq 0\)\,#h(2em)\(m - n\)sqrt(m) thick thick\(m - n gt.eq 0\)\,#h(2em) - x sqrt(a) thick thick\(x > 0\) $

]
#solution[
+ $2 a sqrt(a) = sqrt(\(2 a\)^2 dot.op a) = sqrt(4 a^3)$

+ $\(m - n\)sqrt(m) = sqrt(\(m - n\)^2 dot.op m)$

+ $- x sqrt(a) = - sqrt(a x^2)$

]
这里要注意，$- x sqrt(a) = sqrt(a\(- x\)^2) = sqrt(a x^2)$ 是不正确的，因为 $- x < 0$,不能进行内移．

==== 化去根号内的分母
在根号内的分母中，如果有开得尽的因式，就可以用它的算术根代替而移到根号外面；如果有开不尽的因式，就可以利用分式的基本性质，将分子、分母乘以同一个适当的非零代数式，使分母的各因式都能开得尽，从而用其算术根代替，并移到根号外面，使根号里面不含有分母．

#example[
化去根号里面的分母 $ sqrt(3 / 50)\,#h(2em) sqrt(frac(c, a^2 b)) quad\(a > 0\,thick b > 0\)\,#h(2em) sqrt(frac(\(a + b\)^2, a^2 - b^2)) quad\(a > b\) $

]
#solution[
+ $sqrt(3 / 50) = sqrt(frac(3 times 2, 50 times 2)) = sqrt(6) / sqrt(100) = 1 / 10 sqrt(6)$

+ $sqrt(frac(c, a^2 b)) = 1 / a sqrt(frac(b c, b^2)) = frac(1, a b) sqrt(b c)$

+ $ sqrt(frac(\(a + b\)^2, a^2 - b^2)) & = sqrt(frac(\(a + b\)^2, \(a + b\)\(a - b\)))\
   & = sqrt(frac(a + b, a - b))\
   & = sqrt(frac(\(a + b\)\(a - b\), \(a - b\)^2))\
   & = sqrt(a^2 - b^2) / sqrt(\(a - b\)^2)\
   & = frac(1, a - b) sqrt(a^2 - b^2) $

]
#exercise[
+ 把下列根号内的因式移到根号外面来：

  #cols(2)[
  + $sqrt(27)$

  + $sqrt(98)$

  + $sqrt(0.32)$

  + $sqrt(0.0003)$

  + $sqrt(x^3)$

  + $sqrt(16 a)$

  + $sqrt(121 a^4)$

  + $sqrt(frac(x^2 y, 16)) quad\(x gt.eq 0\)$

  + $sqrt(x^2 + 6 x + 9) quad\(x gt.eq - 3\)$

  + $sqrt(x^3 + 6 x^2 + 12 x + 8)$

  ]

+ 把下列各根号外面的因式移到根号里面去：

  #cols(2)[
  + $5 sqrt(2)$

  + $2 sqrt(7)$

  + $x sqrt(y) quad\(x gt.eq 0\)$

  + $2 / 5 sqrt(a)$

  + $2 m sqrt(m n) quad\(m gt.eq 0\)$

  + $3 x sqrt(frac(y, 3 x)) quad\(x > 0\)$

  ]

+ 化去根号里面的分母．

  + $sqrt(1 1 / 2)$

  + $a sqrt(a / b) quad\(b > 0\)$

  + $sqrt(frac(a^3 y, b^4 z^3)) quad\(a gt.eq 0\,thick b > 0\)$

  + $\(x + y\)sqrt(frac(1, x + y)) quad\(x + y > 0\)$

  + $frac(4 a, 3 m) sqrt(frac(3 m, 2 a)) quad\(a > 0\)$

  + $\(m - n\)sqrt(frac(m + n, m - n)) quad\(m - n > 0\)$

]
=== 最简二次根式与同类根式
如果一个二次根式具备下列两个条件称为最简二次根式．

+ 被开方数每一个因数的指数都小于开方次数2；

+ 根号内不含分母．

如根式 $sqrt(2 a)\,thick 3 sqrt(a^2 + b^2)\,thick sqrt(4 x^2 + 1)$ 等都是最简二次根式；如 $sqrt(a^3 b)\,thick sqrt(frac(b, 3 a))$ 等就不是最简二次根式．

#example[
把下列根式化成最简根式．

+ $sqrt(4 x^3 y^5) quad\(x gt.eq 0\)$

+ $sqrt(8 x^3 y^4) quad\(x gt.eq 0\)$

+ $x y sqrt((1 / x + 1 / y)\(x + y\)) quad\(x > 0\,thick y > 0\)$.

]
#solution[
+ $sqrt(4 x^3 y^5) = 2 x y^2 sqrt(x y)$

+ $sqrt(8 x^3 y^4) = 2 x y^2 sqrt(2 x)$

+ $ x y sqrt((1 / x + 1 / y)\(x + y\)) & = x y sqrt(frac(\(x + y\)^2, x y))\
   & = x y sqrt(frac(\(x + y\)^2 x y, x^2 y^2))\
   & =\(x + y\)sqrt(x y) $

]
如果几个二次根式化成最简根式以后，被开方数相同，那么这几个二次根式叫做#strong[同类根式]．

例如：$2 sqrt(5)$、$1 / 3 sqrt(5)$、$a sqrt(5)$ 等都是同类根式；而 $sqrt(2)$ 与 $sqrt(3)$、$sqrt(x)$ 与 $sqrt(y)$、$sqrt(a)$ 与 $sqrt(7 a)$ 等都不是同类根式．

#example[
把下列各根式化为最简根式，并指出哪些是同类根式？$ sqrt(2)\,#h(2em) sqrt(75)\,#h(2em) sqrt(1 / 50)\,#h(2em) sqrt(1 / 27)\,#h(2em) sqrt(3) $ $ 2 / 3 sqrt(8 a b^3) quad\(b > 0\)\,#h(2em) 6 b sqrt(frac(a, 2 b)) quad\(b > 0\) $

]
#solution[
由于：$ sqrt(75) & = sqrt(25 times 3) = 5 sqrt(3)\
sqrt(1 / 50) & = 1 / 50 sqrt(25 times 2) = 1 / 10 sqrt(2)\
sqrt(1 / 27) & = 1 / 27 sqrt(9 times 3) = 1 / 9 sqrt(3)\
2 / 3 sqrt(8 a b^3) & = 2 / 3 times 2 b sqrt(2 a b) = frac(4 b, 3) sqrt(2 a b)\
6 b sqrt(frac(a, 2 b)) & = frac(6 b, 2 b) sqrt(2 a b) = 3 sqrt(2 a b) $ 因此：$sqrt(2)$ 与 $sqrt(1 / 50)$、$sqrt(75)$ 与 $sqrt(1 / 27)$ 与 $sqrt(3)$、$2 / 3 sqrt(8 a b^3)$ 与 $6 b sqrt(frac(a, 2 b))$ 分别是同类根式．

]
同类根式与同类项一样，可以进行合并，通常称为#strong[合并同类根式]．其方法也与合并同类项类似，只要先化为最简根式，再运用分配律把同类根式各根号前的因式相加即可．

#example[
合并下列各式中的同类根式：

+ $sqrt(5) + 1 / 2 sqrt(5) + 1 / 3 sqrt(5) + 1 / 6 sqrt(5)$

+ $sqrt(12) - sqrt(3 / 4) - sqrt(1 / 3) + sqrt(18)$

+ $5 sqrt(a b) - x sqrt(a b) + y sqrt(a b)$

]
#solution[
+ $ upright("原式") & = (1 + 1 / 2 + 1 / 3 + 1 / 6) sqrt(5)\
   & = 2 sqrt(5) $

+ $ upright("原式") & = 2 sqrt(3) - 1 / 2 sqrt(3) - 1 / 3 sqrt(3) + 3 sqrt(2)\
   & = (2 - 1 / 2 - 1 / 3) sqrt(3) + 3 sqrt(2)\
   & = 7 / 6 sqrt(3) + 3 sqrt(2) $

+ $ upright("原式") =\(5 - x + y\)sqrt(a b) $

]
#exercise[
+ 把下列各根式化成最简根式：

  + $sqrt(72)$

  + $sqrt(17^2 - 8^2)$

  + $sqrt(9 a^3 b c^3) quad\(a gt.eq 0\,c gt.eq 0\)$

  + $sqrt(1 / 3 + 1 / 4)$

  + $sqrt(y^2 / x)\(y gt.eq 0\)$,

  + $sqrt(frac(\(a + b\)^4, \(a - b\)^5))$

  + $sqrt(x^3 - 2 x^2 + x) quad\(x > 1\)$\;

  + $a b sqrt(1 / a + 1 / b)$

+ 下列各组根式是不是同类根式？

  + $5 sqrt(125)$ 和 $3 sqrt(45)$

  + $2 sqrt(a^3 b^3 c)\,quad 1 / 2 sqrt(4 a b^5 c)$ 和 $3 sqrt(frac(c, a b))$

  + $sqrt(2 x)\,quad sqrt(2 a^2 x^3) thick thick\(a > 0\)$ 和 $sqrt(50 x y^2) thick thick\(y > 0\)$.

+ 合并下列各式中的同类根式：

  + $6 sqrt(3) + sqrt(0.12) + sqrt(48)$

  + $1 / 2 sqrt(a) - 2 sqrt(b) + 4 sqrt(a) + 3 sqrt(b) - 3 / 2 sqrt(a)$

  + $sqrt(125) + sqrt(2 / 3) - 4 sqrt(216) + 3 sqrt(1 / 5)$

  + $2 a sqrt(3 a b^2) - (b / 5 sqrt(27 a^3) - 2 a b sqrt(frac(3 a, 4))) quad\(b > 0\)$

]
=== 二次根式的运算
二次根式的运算与整式的运算类似．

==== 加法和减法法则
先把根式化成最简根式，再合并同类根式．

#example[
计算 $(sqrt(24) - sqrt(0.5) - 2 sqrt(2 / 3)) - (sqrt(1 / 2) - sqrt(6))$

]
#solution[
$ upright("原式") & = 2 sqrt(6) - 1 / 2 sqrt(2) - 2 / 3 sqrt(6) - 1 / 2 sqrt(2) + sqrt(6)\
 & = (2 - 2 / 3 + 1) sqrt(6) - (1 / 2 + 1 / 2) sqrt(2)\
 & = 7 / 3 sqrt(6) - sqrt(2) $

]
#example[
计算 $frac(2 x, 3) sqrt(18 x) + 12 x dot.op sqrt(x / 8) - x^2 sqrt(2 / x^3)$

]
#solution[
$ upright("原式") & = 2 x sqrt(2 x) + 3 x sqrt(2 x) - sqrt(2 x)\
 & =\(2 x + 3 x - 1\)sqrt(2 x)\
 & =\(5 x - 1\)sqrt(2 x) $

]
#exercise[
+ 计算下列各式

  + $sqrt(0.2) + sqrt(125)$

  + $2 sqrt(1 / 27) - 2 / 3 sqrt(1 / 3) + sqrt(1 1 / 3)$

  + $sqrt(3 a x^2) - sqrt(3 a^3 x^2)$

  + $sqrt(frac(y, 3 x^2)) - 1 / 3 sqrt(y / 3)$

  + $sqrt(2 a b) - 2 b sqrt(frac(a, 2 b))$

  + $2 sqrt(25 a) - 3 sqrt(a^2 b) + 5 sqrt(36 a) - 2 sqrt(a^2 b)$

  + $(sqrt(32) + sqrt(0.5) - 2 sqrt(1 / 3)) - (sqrt(1 / 18) - sqrt(48))$

  + $\(5 sqrt(a) - 3 sqrt(25 a)\)+\(2 sqrt(35 a) + 2 sqrt(9 a)\)$.

+ 下列计算是否正确?为什么?

  + $sqrt(3) + sqrt(97) = 10$

  + $5 + sqrt(3) = 5 sqrt(3)$

  + $sqrt(2 x) + sqrt(14 x) = sqrt(16 x) = 4 sqrt(x)$

  + $frac(sqrt(50) + sqrt(8), 2) = sqrt(25) + sqrt(4) = 5 + 2 = 7$

]
由二次根式的基本性质3、4，反过来运用，就可以得到二次根式的乘、除法法则．

==== 乘法和除法法则
$ sqrt(a) dot.op sqrt(b) = sqrt(a b) quad\(a gt.eq 0\,thick b gt.eq 0\)\,#h(2em) sqrt(a) / sqrt(b) = sqrt(a / b) quad\(a gt.eq 0\,thick b > 0\) $ 并化为最简根式．一般地，还可以写成以下公式：$ m sqrt(a) dot.op n sqrt(b) & = m n sqrt(a b)\
m sqrt(a) div n sqrt(b) & = frac(m sqrt(a), n sqrt(b)) = m / n sqrt(a / b) $ 并将结果化为最简二次根式．

#example[
计算下列各式：

+ $sqrt(4 x^3) dot.op sqrt(frac(3 x, 2))$

+ $3 sqrt(5 a) dot.op 4 sqrt(10 b)$

+ $(sqrt(x y) + 2 sqrt(y / x) - sqrt(x / y) + sqrt(frac(1, x y))) dot.op sqrt(x y)$

]
#solution[
+ $sqrt(4 x^3) dot.op sqrt(frac(3 x, 2)) = sqrt(4 x^3 dot.op frac(3 x, 2)) = sqrt(6 x^4) = x^2 sqrt(6)$

+ $3 sqrt(5 a) dot.op 4 sqrt(10 b) = 3 times 4 sqrt(50 a b) = 12 times 5 sqrt(2 a b) = 60 sqrt(2 a b)$

+ $(sqrt(x y) + 2 sqrt(y / x) - sqrt(x / y) + sqrt(frac(1, x y))) dot.op sqrt(x y) = x y + 2 y - x + 1$

]
#example[
计算下列各式：

+ $(3 sqrt(2) - 2 sqrt(3)) (7 sqrt(2) + 5 sqrt(3))$

+ $(6 sqrt(3) + 3 sqrt(6))^2$

+ $(x sqrt(a) - y sqrt(b))^2$

]
#solution[
+ $upright("原式") = 42 - 14 sqrt(6) + 15 sqrt(6) - 30 = 12 + sqrt(6)$

+ $upright("原式") = (6 sqrt(3))^2 + 2 dot.op 6 sqrt(3) dot.op 3 sqrt(6) + (3 sqrt(6))^2 = 108 + 108 sqrt(2) + 54 = 162 + 108 sqrt(2)$

+ $upright("原式") = a x^2 + b y^2 - 2 x y sqrt(a b)$

]
#example[
计算下列各式：

#cols(2)[
+ $(sqrt(7) + sqrt(3)) dot.op (sqrt(7) - sqrt(3))$

+ $(sqrt(x y) - sqrt(a b)) dot.op (sqrt(x y) + sqrt(a b))$

+ $(4 sqrt(a / 2) + 6 sqrt(b / 4)) dot.op (sqrt(8 a) - 3 sqrt(b))$

]
]
#solution[
+ $upright("原式") = (sqrt(7))^2 - (sqrt(3))^2 = 7 - 3 = 4$

+ $upright("原式") = (sqrt(x y))^2 - (sqrt(a b))^2 = x y - a b$

+ $upright("原式") = (2 sqrt(2 a) + 3 sqrt(b)) dot.op (2 sqrt(2 a) - 3 sqrt(b)) = (2 sqrt(2 a))^2 - (3 sqrt(b))^2 = 8 a - 9 b$

]
由例6.45中，我们发现：计算结果都不再含有根式．

两个含有根式的式子相乘，如果它们的乘积中不再含有根式，那么，这两个式子就叫做#strong[互为有理化因式]．

例如，$sqrt(7) + sqrt(3)$ 与 $sqrt(7) - sqrt(3)$；$sqrt(x + y)$ 与 $sqrt(x + y)$；$a + 2 sqrt(b)$ 与 $a - 2 sqrt(b)$；$sqrt(x y) + sqrt(a b)$ 与 $sqrt(x y) - sqrt(a b)$；$2 sqrt(2 a) + 3 sqrt(b)$ 与 $2 sqrt(2 a) - 3 sqrt(b)$ 等等，都是互为有理化因式．

#exercise[
计算下列各题：

+ #cols(2)[
  + $sqrt(6 x) dot.op sqrt(2 x)$

  + $2 sqrt(2 a) dot.op sqrt(24 a b)$

  + $3 / 4 sqrt(frac(5 a, 2)) dot.op sqrt(0.4 / a)$

  + $(sqrt(10) - 2 sqrt(15)) dot.op sqrt(5)$

  + $(x sqrt(y) - y sqrt(x)) dot.op sqrt(x y)$

  ]

+ + $(4 sqrt(3) + 5 sqrt(2)) dot.op (sqrt(3) - sqrt(2))$

  + $\(a + sqrt(a b)\)dot.op\(b + sqrt(a b)\)$

  + $(sqrt(m n) + sqrt(m / n) - m) dot.op (sqrt(m / n) - n)$

+ + $(7 + 3 sqrt(2)) dot.op (sqrt(18) - 7)$

  + $(2 sqrt(a x) + 5 sqrt(b y)) dot.op (2 sqrt(a x) - 5 sqrt(b y))$

  + $(sqrt(x + 3) - sqrt(2 x)) dot.op (sqrt(x + 3) + sqrt(2 x))$

  + $(frac(- 1 + sqrt(3), 2))^2$

  + $(sqrt(a / b) + sqrt(b / a))^2$

  + $(sqrt(a) + sqrt(b))^2 + (sqrt(a) - sqrt(b))^2$

  + $(1 + sqrt(x) - sqrt(y)) dot.op (1 - sqrt(x) + sqrt(y))$

+ 写出以下各根式的有理化因式：$ 3 sqrt(7)\,quad 7 - sqrt(11)\,quad 5 sqrt(3) + sqrt(10)\,quad sqrt(2 x^2 - 1)\,quad x + x sqrt(y) $ $ a^2 - b sqrt(a + 1)\,#h(2em) sqrt(x + 2) - sqrt(x) $

]
#example[
计算下列各式：

#cols(2)[
+ $sqrt(104) div sqrt(13)$

+ $9 sqrt(45) div 3 / 2 sqrt(1 1 / 2)$

+ $18 sqrt(2 x^3) div 3 sqrt(3 y)$

+ $- 6 sqrt(frac(2 a - 2 b, x^2)) div 4 / 5 sqrt(frac(a - b, 2 b x^2))$

]
]
#solution[
+ $upright("原式") = sqrt(104) / sqrt(13) = sqrt(104 / 13) = sqrt(8) = 2 sqrt(2)$

+ $upright("原式") = 9 times 2 / 3 sqrt(45 times 2 / 3) = 6 sqrt(30)$

+ $upright("原式") = frac(18 sqrt(2 x^3), 3 sqrt(3 y)) = 6 sqrt(frac(2 x^3, 3 y)) = frac(2 x, y) sqrt(6 x y)$

+ $upright("原式") = - 6 times 5 / 4 sqrt(frac(2 a - 2 b, x^2) dot.op frac(2 b x^2, a - b)) = - 15 / 2 sqrt(4 b) = - 15 sqrt(b)$

]
在二次根式的除法运算中，总是先用法则将分子、分母并入一个根号内，再将根号里边的分母化去，使结果成为最简根式．

在实际的运算中，有时先把分母中的根号化去再进行计算，较为简便，例如，计算 $sqrt(3) / sqrt(2)$ 的近似值（精确到0.01）时，就可以先把分母中的根号化去再计算：$ sqrt(3) / sqrt(2) = frac(sqrt(3) dot.op sqrt(2), sqrt(2) dot.op sqrt(2)) = sqrt(6) / 2 approx 2.449 / 2 approx 1.22 $

同样，在计算 $frac(1, sqrt(3) - sqrt(2))$（精确到0.01）的近似值时，也可以先将分母中的根号化去再计算，较为简便．$ frac(1, sqrt(3) - sqrt(2)) & = frac(sqrt(3) + sqrt(2), (sqrt(3) - sqrt(2)) (sqrt(3) + sqrt(2)))\
 & = frac(sqrt(3) + sqrt(2), 3 - 2) = sqrt(3) + sqrt(2)\
 & approx 1.732 + 1.414 = 3.146 approx 3.15 $

把分母中的根号化去，叫做#strong[分母有理化]．分母有理化的方法是：根据分式的基本性质，只要将分子、分母同乘以分母的有理化因式，就可以达到目的．

在根式的除法中，先进行有理化分母，往往是较简便的．

#example[
计算：

#cols(2)[
+ $(sqrt(a^3 b) + sqrt(a b^3) - a b) div sqrt(a b)$

+ $frac(a^2 - b^2, sqrt(a + b))$

+ $(4 sqrt(3) + 5 sqrt(2)) div (sqrt(3) - sqrt(2))$

+ $frac(2, 3 + 2 sqrt(2))$

+ $frac(sqrt(a + b) + sqrt(a - b), sqrt(a + b) - sqrt(a - b)) quad\(a > b\)$

]
]
#solution[
+ $ upright("原式 ") & = frac((sqrt(a^3 b) + sqrt(a b^3) - a b) dot.op sqrt(a b), sqrt(a b) dot.op sqrt(a b))\
   & = frac(1, a b) (a^2 b + a b^2 - a b sqrt(a b))\
   & = a + b - sqrt(a b) $

+ $ upright("原式 ") & = frac(\(a^2 - b^2\)sqrt(a + b), sqrt(a + b) dot.op sqrt(a + b))\
   & = frac(a^2 - b^2, a + b) dot.op sqrt(a + b)\
   & =\(a - b\)sqrt(a + b) $

+ $ upright("原式 ") & = frac(4 sqrt(3) + 5 sqrt(2), sqrt(3) - sqrt(2))\
   & = frac((4 sqrt(3) + 5 sqrt(2)) (sqrt(3) + sqrt(2)), (sqrt(3) - sqrt(2)) (sqrt(3) + sqrt(2)))\
   & = frac(12 + 4 sqrt(6) + 5 sqrt(6) + 10, \(sqrt(3)\)^2 -\(sqrt(2)\)^2)\
   & = 22 + 9 sqrt(6) $

+ $ upright("原式 ") & = frac(2 dot.op\(3 - 2 sqrt(2)\), \(3 + 2 sqrt(2)\)\(3 - 2 sqrt(2)\))\
   & = frac(6 - 4 sqrt(2), 3^2 -\(2 sqrt(2)\)^2)\
   & = frac(6 - 4 sqrt(2), 9 - 8) = 6 - 4 sqrt(2) $

+ $ upright("原式 ") & = frac(\(sqrt(a + b) + sqrt(a - b)\)^2, \(sqrt(a + b) - sqrt(a - b)\)\(sqrt(a + b) + sqrt(a - b)\))\
   & = frac(a + b + 2 sqrt(a + b) dot.op sqrt(a - b) + a - b, \(sqrt(a + b)\)^2 -\(sqrt(a - b)\)^2)\
   & = frac(2 a + 2 sqrt(a + b) dot.op sqrt(a - b), 2 b)\
   & = frac(a + sqrt(a^2 - b^2), b) $

]
#example[
计算（精确到0.01):

#cols(2)[
+ $frac(sqrt(3), sqrt(2) + sqrt(3) + sqrt(5))$

+ $2 div (1 - sqrt(2) + sqrt(3))$

]
]
#solution[
+ $ upright("原式 ") & = frac(sqrt(3)\(sqrt(2) + sqrt(3) - sqrt(5)\), [\( sqrt(2) + sqrt(3) \) + sqrt(5)] [\( sqrt(2) + sqrt(3) \) - sqrt(5)])\
   & = frac(sqrt(3)\(sqrt(2) + sqrt(3) - sqrt(5)\), \(sqrt(2) + sqrt(3)\)^2 -\(sqrt(5)\)^2)\
   & = frac(sqrt(6) + 3 - sqrt(15), 2 sqrt(6))\
   & = frac(\(3 + sqrt(6) - sqrt(15)\)dot.op sqrt(6), 2 sqrt(6) dot.op sqrt(6))\
   & = frac(3 sqrt(6) + 6 - sqrt(90), 12) = 1 / 4 (2 + sqrt(6) - sqrt(10))\
   & approx 1 / 4\(2 + 2.449 - 3.162\)approx 0.32 $

+ $ upright("原式 ") & = frac(2 [\( 1 - sqrt(2) \) - sqrt(3)], [\( 1 - sqrt(2) \) + sqrt(3)] dot.op [\( 1 - sqrt(2) \) - sqrt(3)])\
   & = frac(2 - 2 sqrt(2) - 2 sqrt(3), \(1 - sqrt(2)\)^2 -\(sqrt(3)\)^2)\
   & = frac(2 - 2 sqrt(2) - 2 sqrt(3), - 2 sqrt(2))\
   & = frac(1 - sqrt(2) - sqrt(3), - sqrt(2)) = frac(\(1 - sqrt(2) - sqrt(3)\)dot.op sqrt(2), - sqrt(2) dot.op sqrt(2))\
   & = frac(sqrt(2) - 2 - sqrt(6), - 2)\
   & approx - 1 / 2\(1.414 - 2 - 2.449\)approx 1.52 $

]
#exercise[
+ 计算下列各式：

  #cols(2)[
  + $sqrt(a b) div sqrt(3 a)$

  + $5 n div 3 sqrt(m n)$

  + $sqrt(9 a^3) div sqrt(a / 9)$

  + $25 a^2 x div 5 a sqrt(x)$

  + $(x sqrt(y) - y sqrt(x)) div sqrt(x y)$

  + $(sqrt(x) - sqrt(x / 2)) div sqrt(x)$

  + $(sqrt(m n) + sqrt(m / n) - m) div sqrt(m / n)$

  + $frac(sqrt(5), sqrt(5) + 1)$

  + $\(sqrt(5) + sqrt(2)\)div\(sqrt(5) - sqrt(2)\)$

  + $\(a + sqrt(a b)\)div\(b + sqrt(a b)\)$

  ]

+ 将下列各式分母有理化：

  #cols(2)[
  + $frac(5 y^2, sqrt(75 y))$

  + $frac(1 - sqrt(3), 2 + sqrt(3))$

  + $frac(5, 2 sqrt(3) - sqrt(2))$

  + $frac(a - b, sqrt(a) - sqrt(b))$

  + $frac(1, x - sqrt(1 + x^2))$

  + $frac(sqrt(2 x^2 + 1), sqrt(2 x^2 + 1) + sqrt(2 x^2 - 1))$

  ]

+ 试一试：你能把下列各式的分子有理化吗？

  #cols(2)[
  + $frac(sqrt(10) - sqrt(6), 4)$

  + $frac(b\(sqrt(x^2 - a^2) - x\), a)$

  ]

]
=== 根式方程
已经学过的整式方程和分式方程统称为有理方程．在实际中我们还会遇到像 $sqrt(x^2 - 1) = 2$, $sqrt(1 - x) + sqrt(12 + x) = 5$, $1 / sqrt(x) = 7$ 等方程，这些#strong[根号里含有未知数的方程叫做根式方程]．方程 $sqrt(2) x^2 + 3 x - sqrt(5) = 0$, $frac(x, sqrt(2) - 1) = 3$,虽然带有根号，但根号内不含有未知数，所以它们不是根式方程．

在根式方程中，由于未知数包含在根号内，因而，未知数只允许取使二次根式有意义的值．例如，根式方程 $sqrt(x - 1) + sqrt(3 - x) = 2$ 中，未知数 $x$ 只允许在“能使 $x - 1 gt.eq 0$,且 $3 - x gt.eq 0$”的范围内取值．

解根式方程主要是设法把原方程变形为有理方程．我们通常采用的方法是方程两边平方，逐步使含有未知数的根式有理化．

#example[
解方程 $sqrt(x + 7) = x - 5$

]
#solution[
两边平方得：$ \(sqrt(x + 7)\)^2 =\(x - 5\)^2 $ 整理后，得方程：$x^2 - 11 x + 18 = 0$ 解出：$x_1 = 9\,#h(2em) x_2 = 2$

验根：把 $x = 9$ 代入原方程两边．$ upright("左式") & = sqrt(9 + 7) = 4\
upright("右式") & = 9 - 5 = 4 $ $therefore quad x = 9$ 是原方程的根．

把 $x = 2$ 代入原方程两边．$ upright("左式") & = sqrt(2 + 7) = 3\
upright("右式") & = 2 - 5 = - 3 $ 两边的值不等．

$therefore quad x = 2$ 是原方程的增根（舍去）．

$therefore quad$ 原方程的解集是：${ 9 }$．

通过上例可以看出：根式方程两边平方后，就得到一个新的整式方程，这个新方程的根可能是原根式方程的根；也可能是原方程的增根．但为什么会产生增根呢？

观察原方程 $sqrt(x + 7) = x - 5$,不难知道：未知数 $x$ 的取值范围，既要使 $x + 7 gt.eq 0$,又要使 $x - 5 gt.eq 0$,这样才能使原方程中的根式有意义．

但是，在原方程两边平方后所得的新方程 $\(sqrt(x + 7)\)^2 =\(x - 5\)^2$ 中，未知数 $x$ 的取值范围，只要求使 $x + 7 gt.eq 0$ 就能使新方程有意义．这就是说，新方程中未知数的取值范围扩大了．

事实上，方程两边平方 $\(sqrt(x + 7)\)^2 =\(x - 5\)^2$ 可以变形为：$ \(sqrt(x + 7)\)^2 -\(x - 5\)^2 = 0 $ 即：$ [sqrt(x + 7) - \( x - 5 \)] [sqrt(x + 7) + \( x - 5 \)] = 0 $ 这就相当于得到以下两个方程：$ sqrt(x + 7) -\(x - 5\)= 0\,#h(2em) sqrt(x + 7) +\(x - 5\)= 0 $ 这样一来，解整式方程：$x + 7 =\(x - 5\)^2$,就相当于解以上两个根式方程，但原题所给出的根式方程只是其中的一个．因此，解的过程中就可能产生增根．

]
很明显，在例6.49中，原方程的增根 $x = 2$ 就是方程 $sqrt(x + 7) = -\(x - 5\)$ 的根．

由以上分析，可以得出以下结论：

#blk[][
方程两边平方，实际上就是方程两边乘以同一个含有未知数的因式，这样，未知数的取值范围就可能扩大，就可能产生原方程的增根．这时，就必须进行验根，把增根舍去．

]
#example[
解方程 $sqrt(x + 10) + sqrt(x - 11) = 7$

]
#analyze[
解根式方程时，利用“#strong[移项规则]”可以把所含根式比较均匀地分列于等号两边，然后再逐步平方．这样比较简便．

]
#solution[
$ sqrt(x + 10) & = 7 - sqrt(x - 11) &  & upright("(移项)")\
x + 10 & = 49 - 14 sqrt(x - 11) + x - 11 &  & upright("(两边平方)")\
sqrt(x - 11) & = 2\
x - 11 & = 4 &  & upright("(两边平方)")\
x & = 15 $ 验根：把 $x = 15$ 代入原方程：$ upright("左式") & = sqrt(15 + 10) + sqrt(15 - 11) = 5 + 2 = 7\
upright("右式") & = 7 $ $therefore quad$ 原方程的解集是 ${ 15 }$．

]
#example[
解方程 $sqrt(2 x - 3) + sqrt(3 x - 5) - sqrt(5 x - 6) = 0$

]
#solution[
$ sqrt(2 x - 3) + sqrt(3 x - 5) & = sqrt(5 x - 6) &  & upright("(移项)")\
2 x - 3 + 2 sqrt(2 x - 3) dot.op sqrt(3 x - 5) + 3 x - 5 & = 5 x - 6 &  & upright("(两边平方)")\
sqrt(2 x - 3) dot.op sqrt(3 x - 5) & = 1\
\(2 x - 3\)\(3 x - 5\) & = 1 &  & upright("(两边平方)")\
6 x^2 - 19 x + 14 & = 0 $ $therefore quad x_1 = 2\,quad x_2 = 7 / 6$

把 $x = 2$ 代入原方程：$ upright("左式") & = 1 + 1 - 2 = 0\
upright("右式") & = 0 $ $therefore quad x = 2$ 是原方程的根．

把 $x = 7 / 6$ 代入原方程，因为 $sqrt(2 x - 3) = sqrt(- 2 / 3)$，被开方数是负数，使原方程无意义，所以 $x = 7 / 6$ 是增根（舍去）．

$therefore quad$ 原方程的解集是 ${ 2 }$．

]
由以上例题，告诉我们：

解根式方程进行验根时，可以把有理方程的每一个根分别代入原根式方程的每一个根号内，如果代入后，至少有一个根号内得负数，就说明这个根使原方程无意义，肯定是增根，应该舍去（如例6.51）；如果代入后，使原方程中的每一个根号内都为非负数，就说明这个根能使原方程中的根式有意义，但还不能保证能使原方程两边相等，仍然有可能是增根（如例6.49），所以还应该继续代入原方程两边，进行检验．

总之，解根式方程的一般步骤是：

+ 移项，使方程中含未知数的根式比较均匀的分列于等号的两边；

+ 方程两边同时平方，逐次化去根号，得到有理方程；

+ 解有理方程；

+ 验根．

#exercise[
+ 解下列方程：

  #cols(2)[
  + $sqrt(x^2 - 1) = sqrt(3)$

  + $sqrt(x^2 - 3 x + 4) + 5 = x$

  + $sqrt(2 x - 4) - sqrt(x + 5) = 1$

  + $sqrt(x - 1) dot.op sqrt(2 x + 6) - x = 3$

  ]

+ 不解方程判别下列各方程是否有解

  + $sqrt(3 x - 2) = - 4$

  + $sqrt(2 x + 1) = -\(x^2 + 1\)$

  + $sqrt(2 x - 1) + sqrt(x + 1) = 0$

  + $sqrt(x - 1) + sqrt(x - 2) + sqrt(x - 3) = - 3$

]
#example[
解方程 $x^2 - 2 x + 6 sqrt(x^2 - 2 x + 6) = 21$

]
#solution[
设 $sqrt(x^2 - 2 x + 6) = y$,则 $x^2 - 2 x + 6 = y^2$．原方程可变形为 $y^2 + 6 y - 27 = 0$ $therefore quad y_1 = 3\,#h(2em) y_2 = - 9$

这就是 $sqrt(x^2 - 2 x + 6) = 3$ 或 $sqrt(x^2 - 2 x + 6) = - 9$，其中 $sqrt(x^2 - 2 x + 6)$ 是算术根，所以不能等于 $- 9$．

$therefore quad sqrt(x^2 - 2 x + 6) = - 9$ 无解．

解方程#numbered-eq($ sqrt(x^2 - 2 x + 6) = 3 $)两边平方：#numbered-eq($ x^2 - 2 x + 6 = 9 quad arrow.r.double quad x^2 - 2 x - 3 = 0 $) $therefore quad x_1 = 3\,#h(2em) x_2 = - 1$

验根：把 $x_1 = 3\,thick x_2 = - 1$,分别代入方程检验，可知这两个根都是原方程的根．

$therefore quad$ 原方程的解集是：${ 3\,thick - 1 }$．

]
在上题求解过程中，由方程(6.4)变形为方程(6.5)有产生增根的可能，所以，验根时只须代入方程(6.4)检验就可以．

#exercise[
解下列方程

+ $x^2 + 8 x + sqrt(x^2 + 8 x) = 12$

+ $x^2 - x + sqrt(x^2 - x + 2) - 4 = 0$

]
#example[
解方程：$sqrt(3 x - 1) + 2 / sqrt(3 x - 1) = sqrt(5 x + 3)$

]
#solution[
方程两边乘以 $sqrt(3 x - 1)$ 得：$ 3 x - 1 + 2 = sqrt(5 x + 3) dot.op sqrt(3 x - 1) $ 即：$ 3 x + 1 = sqrt(\(5 x + 3\)dot.op\(3 x - 1\)) $ 两边平方：$\(3 x + 1\)^2 =\(5 x + 3\)\(3 x - 1\)$，整理得：$ 3 x^2 - x - 2 = 0 $ $therefore quad x_1 = 1\,quad x_2 = - 2 / 3$

经检验，当 $x = - 2 / 3$ 时，原方程所含的根号内都是负数，因而 $x = - 2 / 3$ 是增根，应舍去．

$x = 1$ 是原方程的根．

$therefore quad$ 原方程的解集是：${ 1 }$．

]
#example[
解方程 $frac(1, 1 - sqrt(1 - x^2)) - frac(1, 1 + sqrt(1 - x^2)) = sqrt(3) / x^2$

]
#solution[
分母有理化得：$ frac(1 + sqrt(1 - x^2), 1 -\(1 - x^2\)) - frac(1 - sqrt(1 - x^2), 1 -\(1 - x^2\)) = sqrt(3) / x^2 $ 就是 $ frac(1 + sqrt(1 - x^2), x^2) - frac(1 - sqrt(1 - x^2), x^2) = sqrt(3) / x^2 $ 去分母：$ 2 sqrt(1 - x^2) & = sqrt(3)\
4\(1 - x^2\) & = 3\
4 x^2 & = 1 $ $therefore quad x_1 = 1 / 2\,quad x_2 = - 1 / 2$

经检验知，$x_1 = 1 / 2$ 和 $x_2 = - 1 / 2$ 都是原方程的根．

$therefore quad$ 原方程的解集是 ${1 / 2 \, thick - 1 / 2}$

]
#exercise[
解下列方程：

+ $sqrt(x) + 1 / sqrt(x) = 2$

+ $frac(1, x + sqrt(1 + x^2)) + frac(1, x - sqrt(1 + x^2)) + 2 = 0$

]
#heading(level: 2, numbering: none)[习题6.2]
+ 求下列各式的值:

  + $sqrt(\(a - b\)^2)$,当 $a = 15\,thick b = 9$

  + $sqrt(\(2 m - 3 n\)^2)$,当 $m = 4\,thick n = 5$

  + $sqrt(b^2 - 6 b + 9)$,当 $0 < b < 3$.

+ 化简并讨论下列各式:

  #cols(2)[
  + $sqrt(x^2) + x$

  + $x + sqrt(1 - 2 x + x^2)$

  + $\(m - n\)sqrt(frac(m + n, \(m - n\)^2))$

  + $frac(1, x - 1) sqrt(\(x - 1\)(x^2 - 1))$

  ]

+ 化简下列各式:

  #cols(2)[
  + $2 sqrt(9 a^2 b c^3)$

  + $sqrt(12\(x + y\)^3)$

  + $sqrt(frac(32 c^3, 9 a^5 b))$

  + $sqrt(25 m^3 + 50 m^2)$

  + $sqrt(frac(a c^2 + b c^2, a - b))$

  + $sqrt(27 x^2 - 9 x^3) quad\(x < 0\)$

  ]

+ 计算下列各式:

  + $sqrt(a b) + 2 sqrt(b / a) + sqrt(frac(1, a b)) - 6 sqrt(a / b)$

  + $0.1 sqrt(200) - 2 sqrt(0.12) + 4 sqrt(0.5) + 0.4 sqrt(108)$

  + $a sqrt(frac(a + b, a - b)) - b sqrt(frac(a - b, a + b)) - frac(2 b^2, sqrt(a^2 - b^2)) quad\(a > b > 0\)$

  + $(sqrt(a b) - sqrt(a / b)) - (sqrt(b / a) - sqrt(a / b) + b / a + 2)$

+ 计算下列各式:

  + $(sqrt(24) - 3 sqrt(1.5) + 2 sqrt(2 2 / 3)) dot.op sqrt(2)$

  + $(a / b sqrt(n / m) - frac(a b, n) sqrt(m n) + a^2 / b^2 sqrt(m / n)) dot.op a^2 b^2 sqrt(n / m)$

  + $10 a^2 sqrt(a b) dot.op 5 sqrt(b / a) dot.op 15 sqrt(a / b)$

  + $\(sqrt(27) + sqrt(28)\)\(sqrt(12) - sqrt(63)\)$

  + $(1 / 4 sqrt(a - b) + 2 sqrt(a)) (1 / 4 sqrt(a - b) - 2 sqrt(a))$

  + $(sqrt(4 + 2 sqrt(3)) - sqrt(4 - 2 sqrt(3)))^2$

+ 计算下列各式:

  + $(frac(3 x, 2) sqrt(x / y) - 0.4 sqrt(frac(3, x y)) + 1 / 3 sqrt(frac(x y, 2))) div 4 / 15 sqrt(frac(3 y, 2 x))$

+ 计算下列各式:

  #cols(2)[
  + $frac(sqrt(2) + sqrt(3), 3 + sqrt(3)) + frac(2 - sqrt(3), sqrt(3) + 1)$

  + $frac(1, sqrt(3) + sqrt(2)) + frac(1, sqrt(2) - 1) - frac(2, sqrt(3) + 1)$,

  + $frac(sqrt(y + 1) - sqrt(y), sqrt(y + 1) + sqrt(y)) - frac(sqrt(y - 1) + sqrt(y), sqrt(y - 1) - sqrt(y))$

  + $frac(1, x + sqrt(1 + x^2)) (1 + x / sqrt(1 + x^2))$.

  ]

+ 解下列方程:

  #cols(2)[
  + $sqrt(x - 1) dot.op sqrt(x + 1) = sqrt(x + 5)$

  + $sqrt(x^2 - 3 x + 1) + 7 = 2 x$

  + $sqrt(1 - x) + sqrt(12 + x) = 5$

  + $sqrt(x + 8) - sqrt(5 x + 20) + 2 = 0$

  + $sqrt(y - 1) - sqrt(y + 2) = sqrt(5 y - 1)$

  + $sqrt(3 + sqrt(x)) = sqrt(9 - 5 sqrt(x))$

  ]

+ 解下列方程：

  + $frac(sqrt(y) + sqrt(y - 3), sqrt(y) - sqrt(y - 3)) = 2 y - 5$

  + $frac(sqrt(2 x + 1) + sqrt(2 x - 1), sqrt(2 x + 1) - sqrt(2 x - 1)) = 2 x + 3$

  + $frac(x + sqrt(x^2 - a^2), x - sqrt(x^2 - a^2)) - frac(x - sqrt(x^2 - a^2), x + sqrt(x^2 - a^2)) - 4 sqrt(x^2 - a^2) = 0 quad\(a eq.not 0\)$

+ 解下列方程：

  + $7 x^2 - 4 sqrt(7 x^2 + 1) - 31 = 0$

  + $x^2 - 3 x + sqrt(2 x^2 - 7 x + 6) = x / 2 - 3$

  + $3 x^2 - 6 x - 2 sqrt(x^2 - 2 x + 4) + 4 = 0$

  + $sqrt(frac(x - 1, x + 1)) + sqrt(frac(x + 1, x - 1)) = 3 1 / 3$

#heading(level: 2, numbering: none)[本章内容要点]
本章是在学习多项式（整式）的基础上，进一步学习了分式及其运算、根式及其运算和分式方程、根式方程．

一、多项式，分式，根式等，都是含有数字和字母并涉及加、减、乘、除、乘方、开平方六种代数运算的式子，这些式子统称为代数式．其中，凡只涉及字母的加、减、乘、乘方运算的式子，叫做多项式（整式）；凡涉及字母的除法运算且字母含在除式中的式子，叫做分式；分式与整式，又统称为有理式．

凡涉及字母或数字的开方运算的式子叫做根式，根号内含有字母的根式，又称为关于这个字母的无理式．如 $sqrt(2)$ 是根式，但不是无理式，$sqrt(x)$，$sqrt(x - 1)$，$x / sqrt(x - 2)$ 等都是无理式．

关于代数式的概念，可以列表如下：$ upright("代数式") cases(delim: "{", upright("有理式") & upright(P H M 15), upright("无理式")) $

二、如果有多项式 $f\(x\)\,g\(x\)$ 且 $g\(x\)$ 的次数大于零次，那么分式 $frac(f\(x\), g\(x\))$ 有以下基本性质：$ frac(f\(x\)dot.op h\(x\), g\(x\)dot.op h\(x\)) = frac(f\(x\), g\(x\)) = frac(f\(x\)div h\(x\), g\(x\)div h\(x\)) $ 其中，$h\(x\)$ 是非零多项式．

利用基本性质，可以进行分式的通分和约分．分式的四则运算和分数的四则运算是一样的．

三、表示平方根的式子，叫做二次根式．

二次根式有以下基本性质：

- $(sqrt(a))^2 = a quad\(a gt.eq 0\)$

- $sqrt(a^2) =\|a\|$

- $sqrt(a b) = sqrt(a) dot.op sqrt(b) quad\(a gt.eq 0\,thick b gt.eq 0\)$

- $sqrt(a div b) = sqrt(a) div sqrt(b) quad\(a gt.eq 0\,thick b > 0\)$

利用基本性质，二次根式可以进行以下变形：

+ 因式的内移与外移，即 $ m sqrt(a) & = sqrt(a m^2) quad\(m > 0\)\
  sqrt(a^2 m) & = a sqrt(m) quad\(a > 0\) $

+ 化去根号内的分母或化去分母中的根号------都是有理化分母的内容，即 $ sqrt(a / b) = sqrt(frac(a times b, b times b)) = sqrt(a b) / b #h(2em)\(b > 0\) $ 或 $ sqrt(a / b) = sqrt(a) / sqrt(b) = frac(sqrt(a) dot.op sqrt(b), sqrt(b) dot.op sqrt(b)) = sqrt(a b) / b #h(2em)\(b > 0\) $

如果一个二次根式符合条件：

+ 被开方各因数的指数小于2；

+ 根号内不含分母（即分母已经有理化）．

那么这个二次根式就叫做最简二次根式．

如果几个二次根式化为最简根式以后，根号内的式子相同，那么，这几个二次根式就叫做同类根式．同类根式和同类项一样可以合并．

二次根式的四则运算和多项式的运算很类似．只要注意化为最简根式和合并同类根式就行了．

四、分式方程与根式方程的解法要点是：设法转化为整式方程求解．由于它们的特点不同，转化方法也就不同．

分式方程的特点是：分母中含有未知数．因而，要利用分式的基本性质或等式的基本性质，两边乘以同一个整式（一般是取各分母的最低公倍式），约简后转化为一个整式方程．

根式方程的特点是：根号内含有未知数，因而，就要方程两边同次乘方（如：同平方）后，利用根式的基本性质转化为有理方程，并进而转化为整式方程．

但是，一定要注意，在解分式方程与根式方程的过程中，由于各自的转化方式都能引起未知数允许取值范围的扩大，所以都可能产生增根．因此，无论是解分式方程，还是解根式方程，最后的验根都是不可缺少的，验根，将起到“识别真假”“去伪存真”的作用．

五、已学过的方程有：整式方程、分式方程、根式方程，统称为代数方程．其系统可列表如下：

#align(center)[
#fig("6-02")

]
#heading(level: 2, numbering: none)[复习题六]
+ 约简下列各分式：

  #cols(2)[
  + $frac(x^4 + x^3 - x - 1, x^4 - x^3 + x - 1)$

  + $frac(x^4 - 2 x^3 - 2 x - 1, x^5 - 2 x^3 - 2 x^2 - 3 x - 2)$

  ]

+ 判别 $frac(x^3 + x^2 + x + 1, x^3 - x^2 - x - 1)$ 是不是最简分式，为什么？

+ 计算下列各式：

  + $(x / y - y / x) div\(x + y\)+ x (1 / y - 1 / x)$

  + $frac(m^2 + n^2, m^2 + 2 m n + n^2) + frac(2, m n) div (1 / m + 1 / n)^2$

+ + 已知 $a = - 2\,b = - 1$.求 $(a - frac(a^2, a + b)) (frac(a, a - b) - 1) div frac(b^2, a + b)$ 的值．

  + 已知 $x = - 2$, $y = 1 / 3$,求 $frac(4 x^2 + 12 x y + 9 y^2 - 16, 4 x^2 - 9 y^2 - 4\(2 x - 3 y\))$ 的值．

+ 解下列方程：

  + $frac(3, 1 + 3 x) (x - frac(x, 1 + x)) + frac(x, 1 + x) (1 + frac(1, 1 + 3 x)) = 1$

  + $frac(1, x\(x + 1\)) + frac(1, \(x + 1\)\(x + 2\)) + 1 = 0$

  + $x^2 + 5 x - 5 = frac(6, x^2 + 5 x)$

+ 解下列关于 $x$ 的方程：

  + $frac(5 a^2, 4 x^2 - a^2) = frac(2 x, 2 x - a) - frac(x, 2 x + a)$

  + $frac(x, 3 a + x) - frac(x, x - 3 a) = frac(a^2, 9 a^2 - x^2)$

+ 当 $a$ 取何值时，下列各式的值最小？$ sqrt(8 + a)\,#h(2em) sqrt(4 - a^2)\,#h(2em) sqrt(16 - a) $

+ + 已知 $x = 25$, $y = 15$，计算：$ sqrt(x^3 + x^2 y + 1 / 4 x y^2) + sqrt(1 / 4 x^3 + x^2 y + x y^2) $

  + 已知 $x = frac(2 a b, b^2 + 1)$，其中 $a\,b$ 都是正数，

    求 $frac(sqrt(a + x) + sqrt(a - x), sqrt(a + x) - sqrt(a - x))$ 的值．

+ 已知 $sqrt(3) approx 1.732$,求 $frac(3 + sqrt(6), sqrt(3) + sqrt(2))$ 的值.

+ 化简下列各式:

  + $y = sqrt(x + 2 sqrt(x - 1)) + sqrt(x - 2 sqrt(x - 1)) #h(2em)\(x gt.eq 1\)$

  + $sqrt(3 + 2 sqrt(5 + 12 sqrt(3 + 2 sqrt(2))))$

+ 设 $x = sqrt(3 + sqrt(5))\,quad y = sqrt(3 - sqrt(5))$,

  求 $frac(x + y, x - y) - frac(x - y, x + y)$ 的值.

+ 关于 $x$ 的二次方程 $\(a + 1\)(x^2 - x) =\(a - 1\)\(x - 2\)$ 的两个根互为相反数,取其正根求 $sqrt(4 x^2 - 12 x + 9)$ 的值．

+ #staritem;

  + 若 $a + 1 / b = 1\,quad b + 1 / c = 1$.求证 $a b c + 1 = 0$.

  + 若 $y / x + x / z = a\,quad z / y + y / x = b\,quad x / z + z / y = c$

    求证 $\(a + b - c\)\(a - b + c\)\(- a + b + c\)= 8$．

+ #staritem;解方程 $frac(x^3 + 2, x^2 - x + 1) + frac(x^3 - 2, x^2 + x + 1) = 2 x$

+ #staritem;试证明：

  + 两个真分式的和仍是真分式；

  + 两个真分式的差也是真分式．
