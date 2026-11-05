// 由 typst/tools/tex2typ.py 从 math3/1.tex 转换而来，已人工校对的部分以本文件为准。
#import "../common/template.typ": *
#import "figs.typ": fig

= 指数概念普遍化与对数
== 指数概念普遍化
=== 引言
这一节我们要把指数的概念加以推广，除了第一册学过的整数指数、零指数外，还要引入负整数指数，正、负分数指数，为能够应用对数来简化乘法、除法、乘方、开方的计算建立初步理论基础．

在推广过程中要注意以下几个方面：

+ 各种定义的条件．

+ 探索各种定义产生的逻辑过程．

+ 要熟练运用各种定义去计算．

我们来回忆一下正整数指数幂的定义：

#blk[定义1][
$a^n = overbrace(a dot.op a dots.h.c a, n upright("个"))$（$n$ 是大于1的正整数），其中 $a$ 称为#strong[底数]，$n$ 称为#strong[指数]，$a^n$ 称为以 $a$ 为底数、$n$ 为指数的#strong[幂]．当 $n = 1$ 时，规定 $a^1 = a$⁠．

]
在定义1中，对于底数 $a$⁠，没有任何限制，$a$ 可以是正数，也可以是负数，也可以是零；而指数 $n$⁠，必须是正整数，否则定义1就无意义！这样，我们称按定义1定义的 $a^n$ 为正整数指数幂．

我们可以证明正整数指数幂有下列性质：

#blk[性质][
+ $a^m dot.op a^n = a^(m + n)$ #h(1em);（$m\,n$ 为正整数）；

+ $a^m div a^n = a^(m - n)$#h(1em);\($m\,n$ 为正整数，且 $m > n\,thick a eq.not 0$)；

+ $\(a^m\)^n = a^(m n)$#h(1em);\($m\,n$ 为正整数)；

+ $\(a b\)^n = a^n b^n$ #h(1em);（$n$ 为正整数）；

+ $(a / b)^n = a^n / b^n$#h(1em);（$n$ 为正整数，$b eq.not 0$⁠）．

]
以后将会看到，将指数概念扩充到新的范围以后，这几条性质依然保留，并且可以适当地合并．

=== 零指数与负整数指数
【I】从正整数指数幂的性质可以看到：

- 幂的#strong[乘法]可以转化为指数#strong[加法]，(性质1)

- 幂的#strong[除法]可以转化为指数#strong[减法]，(性质2)

- 幂的#strong[乘方]可以转化为指数#strong[相乘]．(性质3)

要使正整数的加、减、乘、除，尤其是减、除通行无阻，那么指数只限制在正整数范围是不行的，例如：$a^3 div a^2 = a^(3 - 2) = a^1 = a$, 这个转化是没有问题的，但是 $ a^3 div a^3 =^(?) a^(3 - 3) =^(?) a^0 = ?\
a^2 div a^4 =^(?) a^(2 - 4) =^(?) a^(- 2) = ? $

要使指数的减法通行无阻，就会出现零指数和负整数指数，而零指数和负整数指数是什么，过去从未见过，这就有必要将指数的概念加以推广，给零指数和负整数指数下定义．

【II】探索零指数和负整数指数如何定义．

我们知道 $a^m div a^n = a^(m - n)$⁠，这里限制 $a eq.not 0$, 并且 $m > n$, $m$⁠、$n$ 均为正整数，现在把 $m > n$ 的条件取消，这样 $m$ 可以等于 $n$. 在 $m = n$ 的时候，上面的公式就是：$ a^m div a^n = a^n div a^n = a^(n - n) = a^0 quad\(a eq.not 0\) $ #noindent;而 $a^m div a^n$ 的实际内容是 $ a^m div a^n = a^m / a^n = a^n / a^n = 1 $

为了使公式 $a^m div a^n = a^(m - n)$ 也适用于 $m = n$ 的情况，就应该使形式上的运算结果“$a^0$⁠”与实际内容“1”一致起来，我们规定 $a$ 的零次幂等于1, 即 $a^0 = 1 thick thick\(a eq.not 0\)$ 就合理了．用同样的方法，来探索 $m < n$ 时的情况．

当 $m < n$ 时，$a^m div a^n = a^(m - n) = a^(-\(n - m\))$⁠，这里 $-\(n - m\)$ 是个负整数，我们还没有规定 $a^(-\(n - m\))$ 的意义．但另一方面，在 $m < n$ 的条件下，$a^m div a^n$ 的实际意义是：$ a^m div a^n = a^m / a^n = frac(a^m div a^m, a^n div a^m) = 1 / a^(n - m) #h(2em)\(a eq.not 0\) $ #noindent;这样看来，为了使公式 $a^m div a^n = a^(m - n)$ 在 $m < n$ 时也适用，规定：$ a^(-\(n - m\)) = 1 / a^(n - m) quad\(a eq.not 0\) $ #noindent;就可以了，也就是说，$n$ 是正整数的时候，应规定：$ a^(- n) = 1 / a^n = (1 / a)^n\,quad a eq.not 0 $

【III】对零指数和负整数指数下定义

#blk[定义2][
$ a^0 = 1 #h(2em)\(a eq.not 0\) $

]
#blk[定义3][
$ a^(- n) = 1 / a^n #h(2em)\(a eq.not 0\,quad n upright("是正整数")\) $

]
这两个定义中特别要注意“$a eq.not 0$⁠”这个条件，也就是说零的零次幂是没有意义的，零的负整数次幂也是没有意义的．

有了定义2和定义3, 对于同底数的整数指数幂相除的运算法则，就可通行无阻，而不必再局限于 $m > n$ 了，例如 $ \(- 2\)^2 div\(- 2\)^2 =\(- 2\)^0 = 1\
4^5 div 4^7 = 4^(5 - 7) = 4^(- 2) = 1 / 4^2 = 1 / 16 $

定义1、2、3说明现在我们的指数已经扩充到整数范围了．

【IV】性质的证明

一般来说，当一个概念被推广以后，原来具有的性质可能有些仍然保持成立，有些就不再成立了．所以必须对原来的性质逐条加以研究，对那些仍然成立的性质，加以证明肯定，对那些不再成立的性质也应通过举反例加以否定．另外，新的概念是否又带来了新的性质，这是研究推广了的概念应该注意的一个问题，只有通过这样的研究，才能掌握推广了的概念．

把指数概念推广到整数范围以后，上述五条性质，因条件起了变化，就成为：

#blk[][
+ $a^m dot.op a^n = a^(m + n) quad\(m\,n in bb(Z)\,thick thick a eq.not 0\)$

+ $a^m div a^n = a^(m - n) quad\(m\,n in bb(Z)\,thick thick a eq.not 0\)$

+ $\(a^m\)^n = a^(m n) quad\(m\,n in bb(Z)\,thick thick a eq.not 0\)$

+ $\(a dot.op b\)^n = a^n dot.op b^n quad\(a b eq.not 0\,thick thick n in bb(Z)\)$

+ $(a / b)^n = a^n / b^n quad\(a b eq.not 0\,thick thick n in bb(Z)\)$

]
现在我们来证明性质1．

已知：$m\,n$ 是任意两个整数，$a eq.not 0$.

求证：$a^m dot.op a^n = a^(m + n)$

我们要对 $m\,n$ 分各种情况来讨论，由于 $m\,n$ 均可取正整数、负整数和零，即 $ m = display(cases(0, upright("正整数"), upright("负整数")))\,#h(2em) n = display(cases(0, upright("正整数"), upright("负整数"))) $ #noindent;因而从 $m$ 中取出一种情况，从 $n$ 中取出一种情况，组成一种情况，那么一共有 $3 times 3 = 9$ 种，在这九种情况中，因为 $m =$ 正整数，$n =$ 正整数的情况以前已证过，可以略去．又由于实数乘法适合交换律，因而 $m\,n$ 是对称的，这样，我们只就下面五种情况来证明：$ display(cases(m = 0, n = 0)) display(cases(m = upright("正整数"), n = 0)) display(cases(m = upright("负整数"), n = 0)) display(cases(m = upright("正整数"), n = upright("负整数"))) display(cases(m = upright("负整数"), n = upright("负整数"))) $

#strong[情况1:] 当 $m = 0$, $n = 0$ 时，由零指数的定义，$ a^m dot.op a^n = a^0 dot.op a^0 = 1 dot.op 1 = 1 = a^0 = a^(m + n) $ #noindent;$therefore quad a^m dot.op a^n = a^(m + n)$ 成立．

#strong[情况2:] 当 $m$ 是正整数，$n = 0$ 时，$ a^m dot.op a^n = a^m dot.op a^0 = a^m dot.op 1 = a^m = a^(m + 0) = a^(m + n) $ #noindent;$therefore quad a^m dot.op a^n = a^(m + n)$ 成立．

#strong[情况3:] 当 $m$ 是负整数，$n = 0$ 时，$ a^m dot.op a^n = a^m dot.op a^0 = a^m dot.op 1 = a^m = a^(m + 0) = a^(m + n) $ #noindent;$therefore quad a^m dot.op a^n = a^(m + n)$ 成立．

#strong[情况4:] 当 $m$ 是正整数，$n$ 是负整数，那么 $n = -\|n\|$, $\|n\|$ 为正整数．

$because quad a^m dot.op a^n = a^m dot.op a^(-\|n\|) = a^m dot.op 1 / a^(\|n\|) = a^m / a^(\|n\|) = a^(m -\|n\|) = a^(m +\(-\|n\|\)) = a^(m + n)$

$therefore quad a^m dot.op a^n = a^(m + n)$ 成立．

#strong[情况5：]当 $m\,n$ 都是负整数时，那么 $m = -\|m\|$, $n = -\|n\|$⁠．因此：$ a^m dot.op a^n & = a^(-\|m\|) dot.op a^(-\|n\|) = 1 / a^(\|m\|) dot.op 1 / a^(\|n\|)\
 & = frac(1, a^(\|m\|) dot.op a^(\|n\|)) = 1 / a^(\|m\|+\|n\|)\
 & = a^(-\(\|m\|+\|n\|\))\
 & = a^(\(-\|m\|\)+\(-\|n\|\)) = a^(m + n) $ #noindent;$therefore quad a^m dot.op a^n = a^(m + n)$ 成立．

综合五种情况及前面的分析，就证明了当 $m\,n$ 为任意整数时，$a^m dot.op a^n = a^(m + n)$ 成立．

其他几条性质可以类似地证明．应当指出，有了定义2、3以后，对于任何整数 $n$, 都有：$ 1 / a^n = a^(- n) #h(2em)\(a eq.not 0\) $ #noindent;这是因为：当 $n$ 是正整数时，这就是定义3, 当 $n$ 为零时，$ 1 / a^n = 1 / a^0 = 1 / 1 = a^0 = a^(- n) $ #noindent;当 $n$ 为负整数时，$n = -\|n\|$ $ 1 / a^n = 1 / a^(-\|n\|) = a^(\|n\|) = a^(- n) $ #noindent;这样，定义3虽然是对 $n$ 为正整数来说的，有 $a^(- n) = 1 / a^n$⁠，但实际上暗示了 $n$ 为任意整数时，$a^(- n) = 1 / a^n$ 都有了确定的意义．

有了这个公式，上面的性质2就可归结到性质1上．事实上，只要1成立，那么对于任何整数 $m\,n$ 我们有：$ a^m div a^n = a^m dot.op 1 / a^n = a^m dot.op a^(- n) = a^(m +\(- n\)) = a^(m - n) $

有了这个公式，上面的性质5也可归结为性质3和4．事实上，只要3和4成立，那么对于任何整数 $m\,n$, 我们有：$ (a / b)^n & = (a dot.op 1 / b)^n =\(a dot.op b^(- 1)\)^n = a^n dot.op\(b^(- 1)\)^n\
 & = a^n dot.op b^(- n) = a^n dot.op 1 / b^n = a^n / b^n $ #noindent;这样，五条性质可归结为三条性质：

+ $a^m dot.op a^n = a^(m + n) quad\(a eq.not 0\;thick thick m\,n in bb(Z)\)$

+ $\(a^m\)^n = a^(m n) quad\(a eq.not 0\;thick thick m\,n in bb(Z)\)$

+ $\(a dot.op b\)^n = a^n dot.op b^n quad\(a b eq.not 0\;thick thick n in bb(Z)\)$

#example[
#cols(2)[
+ $2^0 = 1$

+ $\(0.75\)^0 = 1$

+ $(- sqrt(3))^0 = 1$

+ $0^0$ 无意义

+ $10^(- 3) = 1 / 10^3 = 0.001$

+ $3\(- 2\)^(- 4) = frac(3, \(- 2\)^4) = 3 / 16$

+ $(1 / 2)^(- 5) = 2^5 = 32$

+ $\(- 0.25\)^(- 1) = (- 1 / 4)^(- 1) = - 4$

]
]
#example[
把下列单项分式化成整式形式：$ frac(a, 3 b c^2) = 1 / 3 a b^(- 1) c^(- 2)\,#h(2em) frac(3, 2 a^(- 3) b^(- 1) c^2) = 3 / 2 a^3 b c^(- 2) $

]
#example[
把下面的数写成 $a dot.op 10^n$ 的形式，这里 $a$ 是含有一位整数的数，$n$ 是任意整数（把一个数写成这种形式叫科学记数法）．

+ 1吨 (t)$= 1000$ 公斤 (kg)$= 10^3$ 公斤 (kg)

+ 1毫米 (mm)$= 0.001$ 米 (m)$= 10^(- 3)$ 米 (m)

+ 1年 $= 31\,556\,925.975$ 秒 (s)=$3.1556925975 times 10^7$\(s)$approx 3.156 times 10^7$\(s)

+ 地球到太阳的距离 $= 149\,640\,000$ 公里 (km) $= 1.4964 times 10^8$\(km)

+ 地球的质量 $= 5\,970\,000\,000\,000\,000\,000\,000$\(t) $= 5.97 times 10^21$\(t)

+ 原子核 $U_235$ 的半径 $= 0.000\,000\,000\,000\,93$\(cm)$= 9.3 times 10^(- 13)$\(cm)

]
#example[
+ $\(b^(- 3)\)^(- 2) = b^(\(- 3\)\(- 2\)) = b^6$

+ #h(0pt)
  $ (3 a^(- 2) b^2 c^(- 3)) (4 / 5 a b^(- 3) c^3) & = 12 / 5 a^(- 2 + 1) b^(2 +\(- 3\)) c^(- 3 + 3)\
   & = 12 / 5 a^(- 1) b^(- 1)\
   & = frac(12, 5 a b) $

+ #h(0pt)
  $ (frac(a + b, a - b))^(- 3) (frac(a - b, a + b))^(- 2) & = [(frac(a + b, a - b))^(- 1)]^3 (frac(a - b, a + b))^(- 2)\
   & = (frac(a - b, a + b))^3 (frac(a - b, a + b))^(- 2)\
   & = (frac(a - b, a + b))^(3 - 2) = (frac(a - b, a + b))^1\
   & = frac(a - b, a + b) $

]
#example[
+ #h(0pt)
  $ frac((a^(- 2) b^(- 3)) (- 4 a^(- 1) b), 12 a^(- 4) b^(- 2)) & = frac(- 4 a^(- 2 - 1) b^(- 3 + 1), 12 a^(- 4) b^(- 2))\
   & = frac(- 4 a^(- 3) b^(- 2), 12 a^(- 4) b^(- 2))\
   & = - 1 / 3 a $

+ #h(0pt)
  $ (x^2 - y^(- 2)) div (x - y^(- 1)) & = [x^2 - (y^(- 1))^2] div (x - y^(- 1))\
   & = (x + y^(- 1)) (x - y^(- 1)) div (x - y^(- 1))\
   & = x + y^(- 1) = x + 1 / y $

]
#heading(level: 2, numbering: none, supplement: [toc-sub])[习题1.1]

+ #block(sticky: true)[换去下列各算式中的负指数：]

  #cols(2)[
  + $4 x^(- 3) y^3$

  + $frac(1, 5 c^(- 3))$

  + $frac(4 a^(- 2), 5 b^(- 3))$

  + $frac(3 a^(- 3) x^2, 5 b^3 y^(- 4))$

  ]

+ 证明下面的运算法则，如果 $m\,n$ 为任意整数，而 $a eq.not 0$, 则 $\(a^m\)^n = a^(m dot.op n)$

+ #block(sticky: true)[把下列的数写成 $a dot.op 10^n$ 的形式，这里 $a$ 是含有一位整数的数，$n$ 是任意整数，]

  #cols(2)[
  + 8900

  + 3,200,000

  + 0.000,015

  + 0.000,000,025

  ]

+ 下面是物理学常用的长度单位，将它化成mm并以10的幂表示出来：

  + $1 upright("微米")\(1 mu upright(m)\)= 1 / 1000 upright(m m)$

  + $1 upright("毫微米")\(1 upright(n m)\)= frac(1, 1\,000\,000) upright(m m)$

  + $1 upright("微微米")\(1 upright(p m)\)= frac(1, 1\,000\,000\,000) upright(m m)$

+ 以10的幂来表示：

  + 1$upright(m m)^2$ 是多少 $upright(c m)^2$⁠；

  + 1$upright(c m)^3$ 是多少 $upright(m)^3$ (Litre即升)；

  + 1g是多少kg, 是多少吨 (t)．

+ 将下面的数据用小数形式表示出来：

  + 红血球的直径 $= 0.7 times 10^(- 8)$\(cm);

  + 最小的细菌的长度 $approx 10^(- 4)$\(cm);

  + 钠光（黄色）的波长 $= 589 times 10^(- 7)$\(cm);

  + 氢原子的直径 $approx 10^(- 8)$\(cm);

  + 氢原子的质量 $= 1.64 times 10^(- 24)$\(g);

  + 电子的质量 $= 9 times 10^(- 28)$\(g);

  + 铀矿石的含镭量 $= 3.328 times 10^(- 5)$%.

+ #block(sticky: true)[完成下列运算并将所得结果中的负指数变换成正指数：]

  #cols(2)[
  + $\(2 x^2\)div\(3 x^(- 3)\)$

  + $a x^2 div x^(- 1)$

  + $\(a^(- 2) x^2\)div a^4$

  + $\(a x\)^(- 3) div\(b x\)^(- 3)$

  + $\(2^n\)^(n - 1) div\(2^(n - 1)\)^(n + 1) quad\(n > 1\)$

  ]

+ #block(sticky: true)[利用整数指数幂的指数法则，计算]

  #cols(2)[
  + $lr(\{ [5 / 3 - (6 / 5)^(- 1)]^(- 2) - (25 / 11)^(- 1) \})^(- 3)$

  + $[(frac(5 a^(- 2) c^3, 3 x^(- 3) y^4))^(- 2)]^4$

  + $frac((3 x^2 y^(- 3))^4, (- 2 x^(- 3) y^2)^(- 3) (- 27 x^(- 5) y^2))$

  + $(frac(2, a^n + a^(- n)))^(- 2) - (frac(2, a^n - a^(- n)))^(- 2)$

  ]

+ 求证:

  + $(a + a^(- 1))^2 (a - a^(- 1))^2 = a^4 - 2 + 1 / a^4$

  + $frac(a^(- 3) + b^(- 3), a^(- 1) + b^(- 1)) + frac(a^(- 3) - b^(- 3), a^(- 1) - b^(- 1)) = 2 (1 / a^2 + 1 / b^2)$

+ #block(sticky: true)[化简：]

  #cols(2)[
  + $frac(a^2 + a^(- 2) - 2, a^2 - a^(- 2))$

  + $frac(m^3 + n^(- 3), m + n^(- 1)) + (m - n^(- 1))^2$

  ]

+ 求 $32 x^(- 6) + 12 x^(- 4) + 10 x^(- 2) - 12$ 除以 $2 x^(- 2) - 1$ 所得的商式和余数．

=== $n$ 次算术根
为了进一步把指数概念从整数范围扩充到有理数范围，我们先介绍一下 $n$ 次算术根及其运算性质．

#blk[定义][
设 $a$ 是一个实数，$n$ 是正整数，如果存在着实数 $x$, 使得 $ x^n = a $ #noindent;那么，$x$ 就叫做 $a$#strong[ 的 ]$n$#strong[ 次方根]，$a$ 叫做#strong[被开方数]，$n$ 叫做#strong[根指数]．

]
由方根的定义推知：

+ 如果 $x_1$ 是正数 $a$ 的偶次方根，那么 $- x_1$ 也是 $a$ 的偶次方根．

  因为如果存在 $x_1$ 使得 $x_1^n = a thick\(> 0\)$, 那么，$\(- x_1\)^n =\(x_1\)^n = a$ ($n$ 为偶数），即 $x_1$ 和 $- x_1$ 都是正数 $a$ 的偶次方根．比如，$x^4 = 16$, 则 $x = plus.minus 2$ 都是16的四次方根．

+ 负数的偶次方根不存在，这是因为任何数的偶次方都是非负数的缘故．

+ 不等于零的任何数的奇次方根的符号与被开方数的符号相同．

  因为如果被开方数是负数 $- a thick\(a > 0\)$, 那么它的奇次方根，就不能是0或正数，由于0的任何奇次方是0, 正数的任何奇次方是正数，这就说明负数的奇次方根应该是负数；同样说明正数的奇次方根应该是正数．

+ 0的方根是0．

在本教程的第六册中，我们将证明下面的存在定理．

#blk[定理][
如果 $a > 0$, 方程 $x^n = a$ 存在唯一的正实数根．

]
为明确起见，我们把这个正实数方根叫做 $a$ 的算术根，下面给出它的定义和记法．

#blk[定义][
如果 $a$ 是正实数，那么 $a$ 的正的 $n$ 次方根叫做 $a$#strong[ 的 ]$n$#strong[ 次算术根]，而零也叫零的 $n$ 次算术根，记为 $root(n, a)$⁠．$a$ 的算术平方根用不带根指数的符号 $sqrt(a)$ 表示．$root(1, a)$ 这个表示 $a$ 的符号，我们不用．

]
例如：$2^5 = 32$, 2叫做32的5次方根，也是32的5次算术根，因此 $root(5, 32) = 2$\; $\(plus.minus 2\)^4 = 16$⁠，$2$ 和 $\(- 2\)$ 都是16的4次方根，其中2是16的4次算术根，因此 $root(4, 16) = 2$\; $\(- 2\)$ 不是16的4次算术根．因此 $root(4, 16) eq.not - 2$, 但 $- 2$ 可写成 $- root(4, 16)$⁠．$\(- 3\)^3 = - 27$, $- 3$ 叫做 $- 27$ 的3次方根，但不是算术根．有的课本也用符号 $root(n, a)$（$a < 0$, $n$ 是奇数）表示负数的奇次方根，例如 $root(3, - 27) = - 3$⁠．但是负数的奇次方根总可以用对应的算术根表示出来，例如 $root(3, - 27) = - root(3, 27)$, 一般地，$root(2 n + 1, - a) = - root(2 n + 1, a) quad\(a > 0\)$⁠．

请注意以下几点：

+ 算术根的概念含有两个条件：a) 被开方数是非负的；b) 算术根只代表方根中的非负值．以后在实数范围内，符号 $root(n, a)$（$a > 0$⁠）只代表算术根，因此，正数 $a$ 的偶次方根的负值用 $- root(n, a)$ 表示．

+ 在等式 $x^n = a$ 中，已知 $x$ 和 $n$ 求 $a$ 的过程叫做乘方运算．反过来，已知 $a$ 和 $n$ 求 $x$ 的过程叫做开方运算，乘方运算和开方运算互为逆运算，由于当 $a gt.eq 0$ 时，$root(n, a)$ 是非负值，因此对于一切大于1的正整数 $n$ 都有：

  #numbered-align(($(root(n, a))^n$, $eqph = a$, true), ($root(n, a^n)$, $eqph = a$, true));

  事实上，设 $root(n, a) = x$, 按定义，$x^n = a$, 所以 $(root(n, a))^n = a$⁠；又因为，$a^n = a^n$, 所以 $a = root(n, a^n)$, 即 $root(n, a^n) = a$⁠．

  在 $a < 0$ 的场合，可以验知：当 $n$ 是奇数时，等式 (1.1)、\(1.2) 对于负数的奇次方根仍保持；而当 $n$ 是偶数时，等式 (1.1) 无意义，而 (1.2) 的右端是 $\|a\|$, 不是 $a$, 即 $root(n, a^n) =\|a\|$, 这是因为算术根只代表非负数的缘故．

  例如：$sqrt(\(- 2\)^2) + root(3, - 27) + root(5, 243) = sqrt(\(- 2\)^2) + root(3, \(- 3\)^3) + root(5, 3^5) = 2 - 3 + 3 = 2$

+ 符号 $root(n, quad)$ 叫做 $n$ 次根号，如果根号下是一个算式，例如 $sqrt(1 - a)$⁠，$root(3, x / y)$ 等等，我们称它为根式．当根号下的算式的值不为负数时，它的 $n$ 次算术根才有意义．

  例如：$sqrt(\(a - 2\)^2) = display(cases(a - 2 & quad a gt.eq 2, 2 - a & quad a < 2))\,quad sqrt(\(1 - a\)) upright(" 在") a lt.eq 1 upright("的情形下有意义")$

下面我们介绍 $n$ 次算术根的性质．

#blk[性质1：乘积的开方法则][
设 $n$ 为正整数，$a\,b$ 为正实数，那么 $ root(n, a b) = root(n, a) dot.op root(n, b) $

]
#proof[
因为 $(root(n, a) dot.op root(n, b))^n = (root(n, a))^n dot.op (root(n, b))^n = a b$

按方根定义，$root(n, a) dot.op root(n, b)$ 是 $a b$ 的 $n$ 次方根，又因为 $a\,b$ 是正数，当然积 $a b$ 仍是正数，且算术根的积 $root(n, a) dot.op root(n, b)$ 也是正数，这就是说，$root(n, a) dot.op root(n, b)$ 是正数 $a b$ 的 $n$ 次算术根；另一方面，$a b$ 的 $n$ 次算术根是 $root(n, a b)$, 根据 $a b$ 的 $n$ 次算术根的唯一性得到 $ root(n, a b) = root(n, a) dot.op root(n, b) $

]
#blk[推论][
$ root(n, a_1 a_2 dots.h.c a_n) = root(n, a_1) dot.op root(n, a_2) dots.h.c root(n, a_n) $

]
例如：$ root(3, 60 times 18 times 25) & = root(3, \(2^2 times 3 times 5\)\(2 times 3^2\)\(5^2\))\
 & = root(3, 2^3 times 3^3 times 5^3)\
 & = 2 times 3 times 5 = 30 $

#blk[性质2：幂的开方法则][
设 $m\,n$ 是正整数，$a > 0$, 那么，$root(n, a^m) = (root(n, a))^m$⁠．

]
#proof[
由性质1的推论得，$ root(n, a^m) = underbrace(root(n, a dot.op a dots.h.c a), m upright("个")) = underbrace(root(n, a) dots.h.c root(n, a), m upright("个")) = (root(n, a))^m $

]
#blk[性质3：商的开方法则][
设 $n$ 为正整数，$a\,b > 0$, 那么，$ root(n, a / b) = root(n, a) / root(n, b) $

]
#proof[
$because quad (root(n, a) / root(n, b))^n = (root(n, a))^n / (root(n, b))^n = a / b$

又 $because quad a > 0\,quad b > 0\,quad a / b > 0\,quad root(n, a) / root(n, b) > 0$

$therefore quad root(n, a) / root(n, b)$ 是 $a / b$ 的 $n$ 次算术根

$therefore quad root(n, a / b) = root(n, a) / root(n, b)$

]
#blk[性质4：根式的开方法则][
设 $m\,n$ 是正整数，$a > 0$, 那么，$ root(m, root(n, a)) = root(m n, a) $

]
#proof[
$because quad (root(m, root(n, a)))^(m n) = [(root(m, root(n, a)))^m]^n = (root(n, a))^n = a$

又 $because quad a > 0\,quad root(m, root(n, a)) > 0$

$therefore quad root(m, root(n, a))$ 是 $a$ 的 $m n$ 次算术根，

$therefore quad root(m, root(n, a)) = root(m n, a)$

]
#blk[性质5：幂指数与根指数相约法则][
设 $m\,n\,k$ 为正整数，$a > 0$, 那么，$ root(n k, a^(m k)) = root(n, a^m) $

]
#proof[
$because quad (root(n, a^m))^(n k) = [(root(n, a^m))^n]^k = (a^m)^k = a^(m k)$

又 $because quad a > 0\,quad root(n, a^m) > 0\,quad a^(m k) > 0$

$therefore quad root(n, a^m)$ 是 $a^(m k)$ 的 $n k$ 次算术根，

$therefore quad root(n k, a^(m k)) = root(n, a^m)$

]
最后强调，这些性质是在 $a > 0$ 的前提下成立的，对于 $a < 0$, 有些根式也许仍有意义，但法则就不适用了，例如，性质5:

设 $a = - 8$, 那么，$root(6, \(- 8\)^2) = root(6, 64) = 2$, 而 $root(3, - 8) = root(3, \(- 2\)^3) = - 2$⁠，因此，$root(6, \(- 8\)^2) eq.not root(3, - 8)$⁠．

#example[
化简下列各式：

+ $root(4, 25 x^2 y^4) quad\(x\,y gt.eq 0\)$

+ $root(6, 5^4 a^4 b^2) quad\(a\,b gt.eq 0\)$

+ $sqrt(3 x^(2 n + 2)) quad\(x gt.eq 0\)$

+ $root(6, 27\(u + v\)^18) quad\(u\,v gt.eq 0\)$

+ $\(a - b\)sqrt(frac(a^2 + a b, a^2 - 2 a b + b^2)) quad\(a\,b > 0\)$

+ $root(3, 16 sqrt(2))$

+ $root(4, 4 x^6) quad\(x in bb(R)\)$

]
#solution[
+ $root(4, 25 x^2 y^4) = root(4, (5 x y^2)^2) = sqrt(5 x y^2)$

+ $root(6, 5^4 a^4 b^2) = root(6, (5^2 a^2 b)^2) = root(3, 5^2 a^2 b) = root(3, 25 a^2 b)$

+ $sqrt(3 x^(2 n + 2)) = sqrt(3) dot.op sqrt((x^(n + 1))^2) = sqrt(3) x^(n + 1)$

+ #h(0pt)
  $ root(6, 27\(u + v\)^18) & = root(6, 3^3 [\( u + v \)^6]^3)\
   & = root(6, \[3\(u + v\)^6\]^3) = sqrt(3\(u + v\)^6)\
   & = sqrt(3) sqrt(\(u + v\)^6) = sqrt(3)\(u + v\)^3 $

+ #h(0pt)
  $ \(a - b\)sqrt(frac(a^2 + a b, a^2 - 2 a b + b^2)) & =\(a - b\)sqrt(a^2 + a b) / sqrt(\(a - b\)^2)\
   & =\(a - b\)frac(sqrt(a\(a + b\)), \|a - b\|)\
   & = display(cases(sqrt(a\(a + b\))\, & quad a > b > 0, - sqrt(a\(a + b\))\, & quad b > a > 0)) $

+ #h(0pt)
  $ root(3, 16 sqrt(2)) & = root(3, sqrt(16^2) dot.op sqrt(2))\
   & = root(3, sqrt(16^2 dot.op 2)) = root(6, 16^2 dot.op 2)\
   & = root(6, 2^8 dot.op 2) = root(6, 2^9) = sqrt(2^3) = 2 sqrt(2) $

+ #h(0pt)
  $ root(4, 4 x^6) & = root(4, 2^2\|x\|^6) = sqrt(2\|x\|^3)\
   & = sqrt(2 dot.op\|x\|^2 dot.op\|x\|) = sqrt(2)\|x\|sqrt(\|x\|)\
   & = display(cases(sqrt(2) x sqrt(x)\, & quad x gt.eq 0, - sqrt(2) x sqrt(- x)\, & quad x < 0)) $

]
#example[
把 $sqrt(2)$⁠，$root(3, - 3)$⁠，$root(4, 4)$ 化成同次式（指数相同的根式叫做同次根式）

]
#solution[
$because quad root(3, - 3) = - root(3, 3)\,quad root(4, 4) = sqrt(2)$

$therefore quad$ 只需要考虑将 $sqrt(2)$, $root(3, 3)$ 化成同次根式 $ sqrt(2) & = root(6, 2^3) = root(6, 8)\
root(3, - 3) & = - root(3, 3) = - root(6, 3^2) = - root(6, 9)\
root(4, 4) & = sqrt(2) = root(6, 8) $

]
#exercise[
+ #block(sticky: true)[求出下列方根的值：]

  #cols(2)[
  + $root(4, 10000)$

  + $root(4, 1)$

  + $root(4, 256)$

  + $root(4, 1 / 16)$

  + $root(4, 1 / 625)$

  + $root(5, 100000)$

  + $root(5, 0)$

  + $root(5, 0.00001)$

  + $sqrt(4 / 9)$

  + $root(4, 1 / 81)$

  + $root(6, 64)$

  + $root(3, 0.064)$

  + $root(5, 0.00243)$

  + $root(10, 0)$

  + $root(3, - 2 10 / 27)$

  ]

+ 计算下面方根，准确到0.1 $ root(4, 25)\,#h(2em) root(6, 27)\,#h(2em) root(8, 16)\,#h(2em) root(10, 32) $

+ #block(sticky: true)[约简下列根式中被开方数的指数和根指数：]

  #cols(2)[
  + $root(6, 36 x^2)$

  + $root(4, 25 y^2)$

  + $root(8, 2^4 a^4 b^6)$

  + $root(16, 14^(4 m) b^(8 m))$

  ]
  这里，$a > 0\,thick thick b > 0\,quad x\,y in bb(R)$

+ #block(sticky: true)[计算下列各题（题中字母都是正的）：]

  #cols(2)[
  + $root(3, frac(8 x^3 y^6, 27 x^6 y^9))$

  + $root(n, frac(a^n b^(2 n), x^(3 n) y^n))$

  + $sqrt(frac(25\(a + b\)^2, \(c - d\)^4))$

  + $root(3, - frac(\(a - b\)^(3 n), \(x + y\)^(6 n)))$

  + $root(n, frac(\(a + b\)^(2 n), a^(3 n)\(a - b\)^n))$

  ]

+ #block(sticky: true)[化简下列各式:]

  #cols(2)[
  + $sqrt(2 sqrt(3))$

  + $root(3, 2 sqrt(5))$

  + $sqrt(3 root(3, 2))$

  + $root(4, 5 sqrt(2))$

  + $sqrt(root(3, a^4 b^2))$

  + $sqrt(x^3 root(3, x))$

  + $sqrt(x / y sqrt(x / y))$

  ]

]
=== 最简根式和同类根式
根式作运算，计算结果用根式表示时，根式应为最简根式，最简根式指：

+ 被开方数的每一个因式的指数都小于根指数；

+ 根号内的式子不含分母；

+ 根指数与被开方数的指数互质．

把根式化为最简根式的方法是：

+ 移因式到根号外，例如：$ root(n, a^n b) = root(n, a^n) dot.op root(n, b) = a root(n, b) thick thick\(a gt.eq 0\) $

+ 移因式到根号内，例如：$ a root(3, 1 / a^2) = root(3, a^3) dot.op root(3, 1 / a^2) = root(3, a^3 / a^2) = root(3, a) thick thick\(a > 0\) $

+ 化去根号内式子的分母，例如

  + 如果 $a b > 0$, 那么 $sqrt(a / b) = sqrt(frac(a b, b^2)) = sqrt(a b) / sqrt(b^2) = frac(sqrt(a b), \|b\|)$

  + 如果 $a > 0$, $b > 0$, 且 $n > m$, 那么 $ root(n, a / b^m) = root(n, frac(a b^(n - m), b^m b^(n - m))) = root(n, a b^(n - m)) / root(n, b^n) = root(n, a b^(n - m)) / b $

+ 约去根指数与被开方数的指数的公因数，例如，$ root(6, 8 x^3) = root(6, \(2 x\)^3) = sqrt(2 x) quad\(x > 0\) $

#example[
化下面根式为最简根式：

+ #h(0pt)
  $ frac(5 a^2, 7 b) sqrt(frac(49 b^3, 5 a)) & = frac(5 a^2, 7 b) sqrt(frac((7^2 b^2 b)\(5 a\), 5^2 a^2))\
   & = frac(5 a^2, 7 b) dot.op frac(7 b, 5 a) sqrt(5 a b)\
   & = a sqrt(5 a b) #h(2em)\(a > 0\,b > 0\) $

+ #h(0pt)
  $ frac(2 a^2, 3 b) root(3, b^3 / a^4 - b^5 / a^6) & = frac(2 a^2, 3 b) root(3, frac(a^2 b^3 - b^5, a^6))\
   & = frac(2 a^2, 3 b) root(3, frac(b^3 (a^2 - b^2), a^6))\
   & = frac(2 a^2, 3 b) dot.op b / a^2 dot.op root(3, a^2 - b^2)\
   & = 2 / 3 root(3, a^2 - b^2) #h(2em)\(a eq.not 0\,b > 0\) $

]
#example[
作下面根式的乘法和除法：

+ #h(0pt)
  $ 5 root(4, 2 a) dot.op root(4, 8 a^3) = 5 root(4, 16 a^4) = 5 root(4, \(2 a\)^4) = 5 times 2 a = 10 a #h(2em)\(a gt.eq 0\) $

+ #h(0pt)
  $ sqrt(3 / 4) dot.op root(4, 4 / 3) & = root(4, (3 / 4)^2) dot.op root(4, 4 / 3) = root(4, (3 / 4)^2 dot.op 4 / 3)\
   & = root(4, 3 / 4) = root(4, 3 / 2^2) = root(4, frac(3 times 2^2, 2^4)) = root(4, 12) / 2 $

+ $frac(16 sqrt(3), sqrt(2)) = frac(16 sqrt(3) dot.op sqrt(2), sqrt(2) dot.op sqrt(2)) = 8 sqrt(6)$

+ $5 / root(3, 4) = frac(5 root(3, 2), root(3, 2^2) root(3, 2)) = frac(5 root(3, 2), root(3, 2^3)) = 5 / 2 root(3, 2)$

]
几个根式化成最简根式后，如果根指数相同，根号内的式子也相同，这几个根式叫做同类根式．

#example[
$root(3, 8 a x^3)$ 和 $root(6, 64 a^2 y^12)$ 是同类根式吗？

]
#solution[
由于：$ root(3, 8 a x^3) & = 2 x root(3, a)\
root(6, 64 a^2 y^12) & = 2 y^2 root(6, a^2) = 2 y^2 root(3, a) #h(2em)\(x gt.eq 0\,thick thick a gt.eq 0\) $ #noindent;$therefore quad root(3, 8 a x^3)$ 和 $root(6, 64 a^2 y^12)$ 是同类根式．

]
#example[
$sqrt(frac(2 x, 3))$, $sqrt(6 / x)$, $sqrt(6 x)$ 是同类根式吗？

]
#solution[
由于：$ sqrt(frac(2 x, 3)) & = sqrt(frac(2 x dot.op 3, 3 dot.op 3)) = sqrt(frac(6 x, 3^2)) = sqrt(6 x) / 3 = 1 / 3 sqrt(6 x)\
sqrt(6 / x) & = sqrt(frac(6 x, x^2)) = sqrt(6 x) / x = 1 / x sqrt(6 x) $ #noindent;$therefore quad sqrt(frac(2 x, 3))\,thick sqrt(6 / x)\,thick sqrt(6 x)$ 是同类根式．

]
根式相加减，就是把同类根式分别合并．

#example[
$  & quad 2 / 3 x sqrt(9 x) + 6 x sqrt(x / 4) - x^2 sqrt(1 / x)\
 & = 2 x sqrt(x) + 3 x sqrt(x) - x sqrt(x)\
 & = 4 x sqrt(x) $

]
#example[
$  & quad 15 root(3, 4) - 3 root(3, 32) - 16 root(3, 1 / 16) - root(3, 108)\
 & = 15 root(3, 4) - 6 root(3, 4) - 4 root(3, 4) - 3 root(3, 4)\
 & = 2 root(3, 4) $

]
#exercise[
+ #block(sticky: true)[说明下面根式是同类根式：]

  #cols(2)[
  + $root(3, 24)$ 和 $root(3, 81)$

  + $root(3, 54)$ 和 $root(3, 16)$

  + $sqrt(216)$ 和 $sqrt(3 / 8)$

  + $root(3, 72 / 343)$ 和 $root(3, 41 2 / 3)$

  + $root(4, 1 / 27)$ 和 $root(4, 0.1875)$

  ]

+ #block(sticky: true)[将下面根式化为同次根式：]

  #cols(2)[
  + $sqrt(2)\,thick root(3, 5)$

  + $root(3, 2)\,thick root(4, 3)$

  + $root(4, x^3)\,thick root(6, y^5)$

  + $root(3, x y^2)\,thick sqrt(y z)\,thick root(4, x z^3)$

  + $sqrt(1 / a + 1 / x)\,thick root(3, 1 / a - 1 / x)$

  ]

+ 作下面根式的加减法：

  + $root(3, 40) + (3 / 2 root(3, - 5) - 2 root(3, 1 / 5))$

  + $(3 root(3, 32) + root(3, 1 / 9) - root(3, 108)) - (16 root(3, 1 / 16) - 4 root(3, 1 / 72))$

+ #block(sticky: true)[作下面根式的乘除法：]

  #cols(2)[
  + $sqrt(a) dot.op root(4, x / a)$

  + $sqrt(2 / 3) dot.op root(3, 3 / 2) dot.op root(6, 1 / 2)$

  + $(sqrt(2) - root(3, 4) + root(4, 8)) dot.op sqrt(2)$

  + $sqrt(140) div sqrt(20)$

  + $root(4, 8) div sqrt(2)$

  + $root(6, 3) div root(12, 18)$

  + $(root(9, 8))^4$

  + $(root(9, 27))^4$

  ]

]
=== 分数指数幂
我们再把指数幂的概念由整数指数幂推广到分数指数幂，先来探索如何合理地定义 $a^(tfrac(1, 4))$⁠，$a^(tfrac(3, 4))$ 的意义．

假设符号 $a^(tfrac(1, 4))$⁠，$a^(tfrac(3, 4))$ 有意义，并且适合整数指数幂法则 $\(a^m\)^n = a^(m n)$⁠，那么对于 $a^(tfrac(1, 4))$⁠，$a^(tfrac(3, 4))$ 应用这个法则就得到 $(a^(tfrac(1, 4)))^4 = a$ 和 $(a^(tfrac(3, 4)))^4 = a^3$⁠．这就是说，可以把 $a^(tfrac(1, 4))$⁠，$a^(tfrac(3, 4))$ 看作方程 $x^4 = a\,thick x^4 = a^3$ 的根．实际上这两个方程的唯一正实数解分别是 $root(4, a)$ 和 $root(4, a^3)$, 即有等式 $(root(4, a))^4 = a$, $(root(4, a^3))^4 = a^3$ 成立．因此，我们定义 $a^(tfrac(1, 4)) = root(4, a)$⁠，$a^(tfrac(3, 4)) = root(4, a^3)$ 是合理的．

下面给出一般的定义：

#blk[定义4][
若 $a > 0$⁠，$m\,n$ 是正整数，我们规定：$ a^(tfrac(m, n)) = root(n, a^m)\,#h(2em) a^(- tfrac(m, n)) = 1 / a^(tfrac(m, n)) $

]
例如：$ 5^(tfrac(3, 4)) = root(4, 5^3)\,quad 2^(tfrac(3, 2)) = sqrt(2^3)\,quad 4^(tfrac(1, 3)) = root(3, 4)\,quad a^(- tfrac(4, 3)) = 1 / a^(tfrac(4, 3)) = 1 / root(3, a^4) $

有了定义4, 我们的指数就推广到了有理数了．

对于分数指数，还需要讨论它的合理性问题．这个问题的提法是这样的．设有一个正有理数 $r$, 按照有理数的性质，一定有两个正整数 $m\,n$, 使得 $r = m / n$⁠，那么按照定义4，$ a^r = a^(tfrac(m, n)) = root(n, a^m) #h(2em)\(a > 0\) $ #noindent;但另一方面，$r$ 还有其他正分数表示法，例如，$frac(2 m, 2 n)$ 就是另一个不同的表示法，设 $m_1 / n_1$ 是 $r$ 的另一个任意正分数表示法，那么按定义4，$ a^r = a^(tfrac(m_1, n_1)) = root(n_1, a^(m_1)) #h(2em)\(a > 0\) $

于是，对于同一个正有理数 $r$, $a^r$ 就有很多（实际上是无穷多）个形式上不同的表示式，而 $a^r$ 当然被规定为一个确定的数，所以必须证明 $a^r$ 的任何两个不同的表示式是相等的．这就是下面的定理．

#blk[定理][
设 $a$ 是任意给定的正实数，$m\,n\,m_1\,n_1$ 是正整数且 $m / n = m_1 / n_1$⁠，则 $a^(tfrac(m, n)) = a^(tfrac(m_1, n_1))$

]
#proof[
由于 $m / n = m_1 / n_1$⁠，因而 $m n_1 = m_1 n$⁠，故 $ a^(m n_1) = a^(m_1 n) $

$because quad a^(tfrac(m, n)) = root(n, a^m) = root(n n_1, a^(m n_1)) #h(2em) a^(tfrac(m_1, n_1)) = root(n_1, a^(m_1)) = root(n n_1, a^(m_1 n))$

$therefore quad root(n n_1, a^(m n_1)) = root(n n_1, a^(m_1 n))$⁠，即：$ a^(tfrac(m, n)) = a^(tfrac(m_1, n_1)) $

]
这就解决了定义的合理性的问题．不仅如此，它还告诉我们，可以改变有理数的分母以适应各种不同的需要．

例如：$5^(tfrac(1, 2)) = 5^(tfrac(2, 4)) = 5^(tfrac(3, 6)) = dots.h.c$

#rmk[
分指数幂的定义不考虑底是负数的情形，因为这时分指数幂不再具有上述的重要性质．例如，$\(- 1\)^(tfrac(1, 3)) = root(3, - 1) = - 1$, 同时 $\(- 1\)^(tfrac(2, 6)) = root(6, \(- 1\)^2)$=1, 所以 $\(- 1\)^(tfrac(1, 3)) eq.not\(- 1\)^(tfrac(2, 6))$⁠．又 $0^(- tfrac(m, n))$ 没有意义，因此分指数幂的底限制为正数．

]
有了分数指数幂的定义，上面讲过的三条性质在新的范围内就可叙述为：

#blk[性质][
+ $a^r dot.op a^s = a^(r + s)$#h(1em);\($r\,s$ 是有理数，$a > 0$);

+ $\(a^r\)^s = a^(r s)$#h(1em);\($r\,s$ 是有理数，$a > 0$);

+ $\(a b\)^r = a^r dot.op b^r$#h(1em);\($r$ 是有理数，$a\,b > 0$)．

]
我们只对性质1作出证明，其他性质的证明留给同学自己去考虑．

性质1的证明：设 $a > 0$, $r\,s$ 为有理数，我们证明 $a^r a^s = a^(r + s)$

#proof[
#strong[情形1]若 $r\,s$ 都是正有理数时，则 $r = m / n$, $s = ell / k$, 这里 $m\,n\,ell\,k$ 都是正整数．$ a^r a^s & = a^(tfrac(m, n)) dot.op a^(tfrac(ell, k)) = root(n, a^m) dot.op root(k, a^ell)\
 & = root(n k, a^(m k)) dot.op root(n k, a^(ell n))\
 & = root(n k, a^(m k) dot.op a^(n ell)) = root(n k, a^(m k + n ell))\
 & = a^(tfrac(m k + n ell, n k)) = a^(tfrac(m k, n k) + tfrac(n ell, n k))\
 & = a^(tfrac(m, n) + tfrac(ell, k)) = a^(r + s) $ #noindent;$therefore quad a^r a^s = a^(r + s)$

#strong[情形2]若 $r < 0$, $s < 0$, 则 $r = -\|r\|$, $s = -\|s\|$. $ a^r dot.op a^s & = a^(-\|r\|) a^(-\|s\|) = 1 / a^(\|r\|) dot.op 1 / a^(\|s\|)\
 & = frac(1, a^(\|r\|) a^(\|s\|)) = 1 / a^(\|r\|+\|s\|)\
 & = a^(-\(\|r\|+\|s\|\)) = a^(-\|r\|+\(-\|s\|\))\
 & = a^(r + s) $ #noindent;$therefore quad a^r a^s = a^(r + s)$

#strong[情形3]若 $r > 0$, $s < 0$, 则 $\|s\|= ell / k$, $r = m / n$, $m\,n\,ell\,k$ 都是正整数，则 $ a^r a^s & = a^r dot.op a^(-\|s\|) = a^r / a^(\|s\|)\
 & = a^(tfrac(m, n)) / a^(tfrac(ell, k)) = root(n, a^m) / root(k, a^ell)\
 & = root(n k, a^(m k)) / root(n k, a^(n ell)) = root(n k, a^(m k) / a^(n ell))\
 & = root(n k, a^(m k - n ell)) = a^(tfrac(m k - n ell, n k))\
 & = a^(tfrac(m, n) - tfrac(ell, k)) = a^(r -\|s\|)\
 & = a^(r + s) $ #noindent;$therefore quad a^r dot.op a^s = a^(r + s)$

（若 $r < 0$, $s > 0$ 则根据交换律也是成立的）

此外，$r\,s$ 有一个为零的情形，性质1显然成立，故 $a^r a^s = a^(r + s)$ 对任意有理数 $r\,s$ 成立．

]
#example[
求下面各分指数幂的值：

+ $18^(tfrac(1, 2)) = (3^2 dot.op 2)^(tfrac(1, 2)) = 3 dot.op 2^(tfrac(1, 2)) = 3 sqrt(2)$

+ $100^(- tfrac(3, 2)) =\(10^2\)^(- tfrac(3, 2)) = 10^(- 3) = 1 / 10^3 = 0.001$

+ $(81 / 625)^(- tfrac(3, 4)) = [(3 / 5)^4]^(- tfrac(3, 4)) = (3 / 5)^(- 3) = (5 / 3)^3 = 125 / 27$

]
#example[
用分指数幂作下面根式运算：

+ $root(4, a^3) div root(3, a) = a^(tfrac(3, 4)) dot.op a^(- tfrac(1, 3)) = a^(tfrac(3, 4) - tfrac(1, 3)) = a^(tfrac(5, 12)) = root(12, a^5)$

+ $sqrt(a^3 dot.op a sqrt(a) dot.op a^6 root(3, a)) = (a^3 dot.op a^(1 tfrac(1, 2)) dot.op a^(6 tfrac(1, 3)))^(tfrac(1, 2)) = (a^(10 tfrac(5, 6)))^(tfrac(1, 2)) = a^(5 tfrac(5, 12)) = a^5 dot.op root(12, a^5)$

]
#example[
化简下面算式：

+ #h(0pt)
  $  & frac(5 x^(- tfrac(2, 3)) y^(tfrac(1, 2)), (- 1 / 4 x^(- 1) y^(- tfrac(1, 3))) (- 5 / 6 x^(- tfrac(1, 3)) y^(- tfrac(1, 6))))\
   & = 24 x^(- tfrac(2, 3) + 1 + tfrac(1, 3)) y^(tfrac(1, 2) + tfrac(1, 3) + tfrac(1, 6)) = 24 x^(tfrac(2, 3)) y\
   & = 24 y root(3, x^2) $

+ #h(0pt)
  $  & quad (a^2 x + a x^1.5) (a^1.5 x^0.5 + a^0.5 x)^(- 1)\
   & =\(a x\)(a + x^0.5) [a^0.5 x^0.5 (a + x^0.5)]^(- 1)\
   & =\(a x\)\(a x\)^(- 0.5) (a + x^0.5) (a + x^0.5)^(- 1)\
   & =\(a x\)^0.5 (a + x^0.5)^0\
   & =\(a x\)^0.5 = sqrt(a x) $

+ #h(0pt)
  $  & quad frac(m - n, m^(tfrac(1, 2)) - n^(tfrac(1, 2))) - frac(m^(tfrac(3, 4)) + n^(tfrac(3, 4)), m^(tfrac(1, 4)) + n^(tfrac(1, 4)))\
   & = frac((m^(tfrac(1, 2)))^2 - (n^(tfrac(1, 2)))^2, m^(tfrac(1, 2)) - n^(tfrac(1, 2))) - frac((m^(tfrac(1, 4)))^3 + (n^(tfrac(1, 4)))^3, m^(tfrac(1, 4)) + n^(tfrac(1, 4)))\
   & = m^(tfrac(1, 2)) + n^(tfrac(1, 2)) - [(m^(tfrac(1, 4)))^2 - m^(tfrac(1, 4)) n^(tfrac(1, 4)) + (n^(tfrac(1, 4)))^2]\
   & = m^(tfrac(1, 4)) n^(tfrac(1, 4)) = root(4, m n) $

]
由例1.15看出，有了分数指数，根式就可转化为幂，根式的运算转化为幂的运算，这就有可能简化计算工作，为以后的对数计算在理论上作了准备．

#heading(level: 2, numbering: none, supplement: [toc-sub])[习题1.2]

+ #block(sticky: true)[求下面分指数幂的值：]

  #cols(3)[
  + $8^(tfrac(4, 3))$

  + $16^(- tfrac(3, 2))$

  + $9^(- tfrac(5, 2))$

  + $(27 / 8)^(- tfrac(1, 3))$

  + $25^(- tfrac(1, 2))$

  + $(2 1 / 4)^(- tfrac(3, 2))$

  + $(3 3 / 8)^(- tfrac(1, 3))$

  + $\(0.008\)^(- tfrac(2, 3))$

  + $54^(tfrac(1, 3))$

  + $\(500\)^(tfrac(1, 3))$

  ]
  \(i)，(j) 化为最简根式．

+ #block(sticky: true)[按照 $(2 / 5)^(tfrac(1, 3)) = (frac(2 dot.op 25, 5 dot.op 25))^(tfrac(1, 3)) = 50^(tfrac(1, 3)) / 5$ 的样子将分母变成有理数：]

  #cols(3)[
  + $(2 / 3)^(tfrac(1, 2))$

  + $(5 / 12)^(tfrac(1, 2))$

  + $(1 / 2)^(tfrac(1, 3))$

  + $(4 / 3)^(tfrac(1, 3))$

  + $(2 / 5)^(tfrac(1, 4))$

  + $(frac(4, 3 y^2))^(tfrac(1, 4))$

  + $(frac(1, 10 x^3))^(tfrac(1, 4))$

  + $(frac(2 x, 3 y^2))^(tfrac(1, 3))$

  ]

+ 通过扩分（应用分式的基本性质）将下列分式的分母变成有理数：

  例：$1 / a^(tfrac(2, 3)) = frac(1 dot.op a^(tfrac(1, 3)), a^(tfrac(2, 3)) dot.op a^(tfrac(1, 3))) = a^(tfrac(1, 3)) / a = root(3, a) / a$

  #cols(3)[
  + $4 / 8^(tfrac(1, 2))$

  + $10 / 5^(tfrac(1, 3))$

  + $1 / x^(tfrac(1, 4))$

  + $1 / a^(tfrac(2, 3))$

  + $frac(10 a, \(2 a^3\)^(tfrac(1, 5)))$

  ]

+ #block(sticky: true)[按照 $2 dot.op (1 / 4)^(tfrac(1, 3)) = (8 / 4)^(tfrac(1, 3)) = 2^(tfrac(1, 3))$ 的方法做]

  #cols(2)[
  + $2 dot.op (1 / 2)^(tfrac(1, 3))$

  + $3 dot.op (1 / 3)^(tfrac(1, 3))$

  + $1 / 2 (64)^(tfrac(1, 5))$

  + $a (1 / a)^(tfrac(3, 2))$

  ]

+ #block(sticky: true)[用根式表示指数幂：]

  #cols(3)[
  + $a^(tfrac(4, 5))$

  + $b^(- tfrac(1, 2))$

  + $c^(- tfrac(3, 5))$

  + $(a^(tfrac(4, 7)))^(- 3)$

  + $a^(tfrac(1, 3)) b^(tfrac(2, 3)) c^(- tfrac(1, 3))$

  ]

+ #block(sticky: true)[用正指数幂表示下列根式：]

  #cols(2)[
  + $root(4, b^(- 3))$

  + $(sqrt(2))^(- tfrac(3, 5))$

  + $(1 / root(4, x^(- 5)))^(- 2)$

  + $root(3, a^2) / root(3, b)$

  ]

+ #block(sticky: true)[用有理指数幂表示下列各式：]

  #cols(2)[
  + $root(3, a^4)$

  + $root(5, b^11)$

  + $frac(1, c root(5, c^4))$

  + $sqrt(1 / x^5)$

  + $3 / root(5, y^3)$

  + $a^(tfrac(1, 2)) / sqrt(5 x^3)$

  + $frac(2 sqrt(a^(- 3)), 3 root(3, 5^5))$

  ]

+ #block(sticky: true)[用分指数幂计算：]

  #cols(2)[
  + $2 sqrt(2) dot.op root(4, 2) dot.op root(8, 2)$

  + $frac(sqrt(x) dot.op root(3, x^2), x root(6, x))$

  + $frac(a^5 root(3, a), sqrt(a^3) root(6, a^3))$

  + $sqrt(root(3, 4))$

  + $root(3, a root(4, a^3))$

  + $(root(3, 5) - sqrt(125)) div root(4, 5)$

  + $root(3, a^(- 2)) dot.op sqrt(a^(- 3))$

  ]

+ #block(sticky: true)[化简下列各式：]

  #cols(2)[
  + $a^(tfrac(1, 4)) a^(tfrac(1, 8))$

  + $(1 / 2 x^(tfrac(1, 2)) y^(- tfrac(1, 2)) z) (- 2 / 3 x^(- 1) y^(- tfrac(1, 3)) z^(tfrac(1, 2)))$

  + $(x^(tfrac(1, 2)) y^(- tfrac(1, 3)))^6$

  + $frac(15 a^(tfrac(1, 2)) b^(tfrac(1, 3)) c^(tfrac(3, 4)), 25 a^(- tfrac(1, 2)) b^(tfrac(1, 3)) c^(tfrac(5, 4)))$

  + $a^(tfrac(1, 3)) b^(tfrac(2, 3)) div a^(- tfrac(2, 3)) b^(tfrac(4, 3))$

  + $(a^(tfrac(1, 2)) root(3, b^2))^(- 3) div sqrt(b^(- 4) sqrt(a^(- 2)))$

  + $frac(a^(- tfrac(1, 2)) b^(- tfrac(3, 4)), a^(tfrac(1, 3)) b^(tfrac(1, 2))) div a^(tfrac(5, 6)) / b^(- tfrac(1, 6))$

  + $(8 b^(- tfrac(1, 3)) x^(- tfrac(4, 3)) b root(4, x^(tfrac(4, 3))))^(tfrac(1, 3))$

  + $[(x^(tfrac(1, m - n)))^(m - tfrac(n^2, m))]^(tfrac(m, m + n))$

  + $x sqrt(x sqrt(x sqrt(x)))$

  ]

+ 分解下列各式为因式的积：$ a^(tfrac(2, 3)) - b^(tfrac(2, 3))\,#h(2em) x^(tfrac(3, 2)) - y^(tfrac(3, 2))\,#h(2em) x^(- 3) - 27 y^(- 3) $

+ #block(sticky: true)[计算：]

  #cols(2)[
  + $(a^(tfrac(1, 2)) b^(tfrac(1, 2)))^2$

  + $(a^(tfrac(1, 3)) - b^(- tfrac(2, 3))) (a^(tfrac(2, 3)) + b^(- tfrac(2, 3)) + b^(- tfrac(4, 3)))$

  + $(a^m + a^(tfrac(m, 2)) + 1) (a^(- m) + a^(tfrac(m, 2)) + 1)$

  + $(m^(tfrac(3, 2)) + n^(tfrac(3, 2))) div (m^(tfrac(1, 2)) + n^(tfrac(1, 2)))$

  + $frac(a - b, a^(tfrac(1, 3)) - b^(tfrac(1, 3))) - frac(a + b, a^(tfrac(1, 3)) + b^(tfrac(1, 3)))$

  ]

=== 无理指数幂
由于无理指数幂的概念要用到实数完备性或极限存在定理，我们这里不作详细介绍，只指出 $a^alpha$（$a > 0$, $alpha$ 是无理数），例如 $2^(sqrt(2))$, $10^(sqrt(3))$, $3^pi$ 等等，仍有确定意义，即它仍代表一个确定的实数，并且也满足指数运算的三个法则：$ a^alpha dot.op a^beta & = a^(alpha + beta)\
(a^alpha)^beta & = a^(alpha beta)\
\(a b\)^alpha & = a^alpha dot.op b^alpha $ #noindent;这里 $a$, $b$ 大于零；$alpha$, $beta$ 是无理数．

于是指数法则可以进一步推广，得到下面的普遍定理．

#blk[定理][
指数运算法则 $a^alpha dot.op a^beta = a^(alpha + beta)$, $(a^alpha)^beta = a^(alpha beta)$, $\(a b\)^alpha = a^alpha dot.op b^alpha$ ($a\,b > 0$) 对于任何实数 $alpha\,beta$ 成立．

]
在实际应用中，我们常用有理指数幂去近似地代替无理指数幂，例如 $sqrt(2) approx 1.414$, $10^(sqrt(2)) approx 10^1.414$⁠．因此，在这里我们只要求同学知道上述结论就可以了．

== 对数和常用对数
=== 对数的定义
在前面我们引入了有理指数的概念，并指出对于正实数 $a$ 与任意实数 $alpha$, $a^alpha$ 都有明确的意义；在学习指数时，我们回顾一下，同底指数幂有一些运算公式：$ a^m dot.op a^n & = a^(m + n)\
a^m div a^n & = a^(m - n)\
\(a^m\)^n & = a^(m n)\
root(n, a^m) & = a^(tfrac(m, n)) $ #noindent;这里幂指数 $m\,n$ 为任意实数，根指数 $n$ 是大于1的自然数，$a$ 为正实数．

这就是说，同底的幂相乘转化为指数相加；同底的幂相除转化为指数相减；幂的乘方转化为指数相乘；幂的开方转化为指数相除，对于数值的计算，加法和减法显然比乘法和除法容易得多，譬如我们用2的 $n$ 次幂可以简捷地算出式子：$M = frac(512^2 times 64, 32^3 times 256)$ 的值．$ M = frac(\(2^9\)^2 times 2^6, \(2^5\)^3 times 2^8) = 2^(18 + 6 - 15 - 8) = 2^1 = 2 $ #noindent;因此，我们自然就希望把这一性质用到实际计算工作中去，使计算简化．

现在的问题是，任意两个正数相乘，能否应用上述简化的思想来计算？即，如果 $M$ 和 $N$ 均为任意正实数，能否实现下述过程：

#align(center)[
#fig("1-01");

]
#rmk[
因为1以外的正数不可能等于1的任何次幂，所以这里必须限定 $a eq.not 1$⁠．

]
要把任意正数的乘法转化为同底的幂的乘法，从而用指数相加来完成，关键在于任意一个正数 $N$ 能否写成一个已知数 $a$ ($a > 0$ 且 $a eq.not 1$) 的幂 $a^b$ 的形式，换句话说，就是给了一个不等于1的正实数 $a$ 作为底数，那么对于任意给定的正实数 $N$, 是否有唯一的实数 $b$ 存在，使得 $N = a^b$, 只要这个问题解决了，上述的想法就可实现，回答是肯定的，这就是：

#blk[定理][
设 $a > 0$ 且 $a eq.not 1$, 那么对于任意给定的正实数 $N$ 存在唯一的实数 $b$, 使得 $ a^b = N $

]
定理的严格证明需要较多的理论，我们将在第六册给出它的证明．

现在我们利用这个定理再介绍一个新的概念和一个新的符号如下：

#blk[定义][
设 $a$ 是一个不等于1的正实数，$N$ 是任意给定的正实数，如果实数 $b$ 使得等式 $ a^b = N $ #noindent;成立，那么 $b$ 就叫做#strong[以 ]$a$#strong[ 为底 ]$N$#strong[ 的对数]，记为 $log_a N = b$, $N$ 叫做#strong[真数]．

]
从定义里可以看出，下面两个式子是等价的：$ a^b = N arrow.l.r.double.long log_a N = b $ #noindent;前者叫做#strong[指数式]，后者叫做#strong[对数式]．

由定义知道，求对数是求方幂的一种逆运算．若给出底数 $a$ 和指数 $b$ 就是求方幂 $N$, 反过来，若给出底数 $a$ 和方幂 $N$, 求指数 $b$, 就是求对数 $b = log_a N$\; 若给出指数 $b$ 和方幂 $N$, 求底数 $a$, 这就是求方根 $a = N^(tfrac(1, b))$, 这三个等式，$log_a N = b$, $a^b = N$ 和 $a = N^(tfrac(1, b))$ 是等价的，即如果 $a$⁠、$b$⁠、$N$ 三个数满足其中一个等式，那么它们也满足另外两个等式．

#example[
将下列指数式换成对数式：

+ $10^2 = 100 quad arrow.l.r.double.long quad log_10 100 = 2$

+ $3^5 = 243 quad arrow.l.r.double.long quad log_3 243 = 5$

+ $4^(tfrac(1, 4)) = sqrt(2) quad arrow.l.r.double.long quad log_4 sqrt(2) = 1 / 4$

+ $2^10 = 1024 quad arrow.l.r.double.long quad log_2 1024 = 10$

+ $3^(- 1) = 1 / 3 quad arrow.l.r.double.long quad log_3 1 / 3 = - 1$

]
#example[
求下面等式中的 $x$ 值：

+ $log_64 x = - 2 / 3 quad arrow.l.r.double.long quad x =\(64\)^(- tfrac(2, 3)) = (4^3)^(- tfrac(2, 3)) = 4^(- 2) = 1 / 16$

+ $log_x 8 = 6 quad arrow.l.r.double.long quad x^6 = 8\,quad x =\(2^3\)^(tfrac(1, 6)) = sqrt(2)$

+ $log_9 27 = x quad arrow.l.r.double.long quad 9^x = 27\,quad 3^(2 x) = 3^3$

  $therefore quad 2 x = 3\,quad x = 3 / 2$

]
#strong[练习]#h(1em);同学们想一想怎样证明下面两个对数的重要性质：$ log_a a = 1 #h(2em)\(a > 0\,thick a eq.not 1\) $ #noindent;即底的对数恒等于1; $ log_a 1 = 0 #h(2em)\(a > 0\,thick a eq.not 1\) $ #noindent;即1的对数，对于任何底恒等于0．

对某数连续地完成两个互逆的运算得到的数就是原来这个数，例如 $ \(2 + 3\)- 3 = 2\,#h(2em)\(2 times 3\)div 3 = 2 $ #noindent;因此如果给出数 $N$, 求出以 $a$ 为底 $N$ 的对数以后，接着再求以 $a$ 为底该对数为指数的幂，结果仍等于 $N$. 这一点可将对数式 $log_a N = b$ 代入指数式 $a^b = N$ 中的 $b$ 得到下面的恒等式：#numbered-eq($ a^(log_a N) = N $);

这个恒等式也说明 $log_a N$ 就是方程 $a^x = N$ 的唯一解．

如果给出数 $b$, 我们求出 $a$ 的 $b$ 次幂后，接着再求这个幂以 $a$ 为底的对数，这相当于把方幂 $a^b = N$ 代入等式 $log_a N = b$ 中的真数 $N$ 得到恒等式：#numbered-eq($ b = log_a a^b $);

#example[
计算

#cols(3)[
+ $3^(log_3 243)$

+ $log_3 27$

+ $4^(1 + log_4 sqrt(2))$

+ $log_10 0.1$

+ $5^(log_5 2 - 1)$

]
]
#solution[
+ $3^(log_3 243) = 243$

+ $log_3 27 = log_3 3^3 = 3$

+ $4^(1 + log_4 sqrt(2)) = 4 dot.op 4^(log_4 sqrt(2)) = 4 sqrt(2)$

+ $log_10 0.1 = log_10 10^(- 1) = - 1$

+ $5^(log_5 2 - 1) = 5^(log_5 2) / 5 = 2 / 5$

]
#example[
试将以下四式写成2的方幂：$ sqrt(2)\,#h(2em) sqrt(8)\,#h(2em) 3\,#h(2em) root(3, 3) $

]
#solution[
+ $sqrt(2) = 2^(tfrac(1, 2))$

+ $sqrt(8) = 2^(tfrac(3, 2))$

+ $3 = 2^(log_2 3)$（$because med log_2 3$ 是方程 $2^x = 3$ 的唯一解）

+ $root(3, 3) = 2^(log_2 root(3, 3))$

]
#exercise[
+ #block(sticky: true)[计算下列各式的值：]

  #cols(3)[
  + $2^0.5 dot.op 8^0.5$

  + $10^(- 2.5) / 10^0.5$

  + $(5^(tfrac(1, 3)))^3$

  + $(49 / 225)^(- tfrac(1, 2))$

  + $\(16 times 81\)^(- 0.25)$

  ]

+ #block(sticky: true)[求下列各式中的 $x$, 指出哪个是幂的运算？哪个是求对数？哪个是开方运算？]

  #cols(3)[
  + $3^4 = x$

  + $x^3 = 1000$

  + $10^x = 0.001$

  ]

+ #block(sticky: true)[求真数：]

  #cols(3)[
  + $log_2 x = 3$

  + $log_4 x = - 2$

  + $log_3 N = 0$

  + $log_3 N = 1$

  + $log_(sqrt(2)) x = 4$

  + $log_0.1 x = - 1$

  ]

+ #block(sticky: true)[求底数：]

  #cols(2)[
  + $log_x 216 = 3$

  + $log_x 1 / 81 = 4$

  + $log_x 1 / 64 = - 3$

  + $log_x sqrt(8) = 3 / 4$

  ]

+ #block(sticky: true)[求对数：]

  #cols(3)[
  + $log_10 10000 = x$

  + $log_10 0.001 = x$

  + $log_4 256 = x$

  + $log_(tfrac(1, 3)) 9 = x$

  + $log_3 1 / 27 = x$

  + $log_9 1 / 9 = x$

  + $log_5 1 = x$

  + $log_0.04 5 = x$

  + $log_(3 sqrt(3)) 1 / 27 = x$

  ]

+ #block(sticky: true)[利用恒等式 $log_a a^b = b\,quad\(a > 0\,thick a eq.not 1\)$ 计算：]

  #cols(3)[
  + $log_3 root(4, 3)$

  + $log_2 sqrt(2)$

  + $log_5 1 / root(3, 5)$

  + $log_3 sqrt(27)$

  + $log_a 1 / a^n$

  + $log_a 1 / root(n, a)$

  ]

+ #block(sticky: true)[求对数 $x$⁠：]

  #cols(3)[
  + $2^x = 8$

  + $2^x = 0.125$

  + $3^x = 1$

  + $4^x = 2$

  + $4^x = 0.5$

  + $10^x = 10 sqrt(10)$

  + $2^x = root(5, 2) / 2$

  + $5^x = root(3, 5^2)$

  + $10^x = 1 / root(4, 1000)$

  + $2^x = 3$

  + $(sqrt(2))^x = 10$

  ]

+ #block(sticky: true)[根据恒等式 $a^(log_a N) = N$, 求：]

  #cols(3)[
  + $2^(log_2 8)$

  + $3^(log_3 7)$

  + $36^(log_6 2)$

  + $25^(log_5 3)$

  + $81^(0.5 log_9 7)$

  + $81^(tfrac(1, 2) log_3 7)$

  + $5^(log_5 10 - 1)$

  + $2^(log_2 5 + 1)$

  ]

]
=== 对数的性质
在前面我们说明了对于每个正实数 $x$ 都有唯一的以 $a$ 为底的对数 $log_a x$ 和它对应，于是，$ M\(M > 0\) & arrow.r.long log_a M\,quad upright("使得 ") a^(log_a M) = M\
N\(N > 0\) & arrow.r.long log_a N\,quad upright("使得 ") a^(log_a N) = N\
M dot.op N\(M > 0\,thick N > 0\) & arrow.r.long log_a\(M dot.op N\)\,quad upright("使得 ") a^(log_a\(M N\)) = M N\
M / N\(M > 0\,thick N > 0\) & arrow.r.long log_a M / N\,quad upright("使得 ") a^(log_a tfrac(M, N)) = M / N\
M^u\(M > 0\,thick u in bb(R)\) & arrow.r.long log_a M^u\,quad upright("使得 ") a^(log_a M^u) = M^u\
root(n, M)\(n > 1\,thick n in bb(Z)\) & arrow.r.long log_a root(n, M)\,quad upright("使得 ") a^(log_a root(n, M)) = root(n, M) $

现在我们来研究怎样求：

+ 积的对数；

+ 商的对数；

+ $u$ 次方幂的对数；

+ $n$ 次方根的对数．

显然对数的性质与指数法则有密切关系，譬如，对应于指数法则 $a^u dot.op a^v = a^(u + v)$⁠，就有下面的对数法则：

#blk[性质1][
两个正数乘积的对数，等于这个积的因数的对数的和，即 $ log_a\(M N\)= log_a M + log_a N $

]
#proof[
根据恒等式，有#numbered-eq($ M = a^(log_a M)\,#h(2em) N = a^(log_a N) $);#noindent;那么将指数法则：$a^u dot.op a^v = a^(u + v)$ 应用到 (1.5), 得到 $ M N = a^(log_a M) dot.op a^(log_a N) = a^(log_a M + log_a N) $ #noindent;根据对数定义得到 $ log_a M N = log_a M + log_a N $

]
对应于指数法则 $a^u / a^v = a^(u - v)$⁠，就有对数法则：

#blk[性质2][
一个商的对数等于分子与分母的对数的差，即 $ log_a M / N = log_a M - log_a N $

]
#proof[
将指数法则 $a^u / a^v = a^(u - v)$ 应用到 (1.5), 得到：$ M / N = a^(log_a M) / a^(log_a N) = a^(log_a M - log_a N) $ #noindent;根据对数定义得到：$ log_a M / N = log_a M - log_a N $

]
对应于指数法则 $\(a^m\)^n = a^(m n)$ 就有对数法则：

#blk[性质3][
一个幂的对数，等于幂底数的对数与指数的积，即 $ log_a M^u = u log_a M $

]
#proof[
将指数法则 $\(a^m\)^n = a^(m n)$ 应用到 (1.5) 得到 $ M^u = (a^(log_a M))^u = a^(u log_a M) $ #noindent;根据对数定义得到 $ log_a M^u = u log_a M $

]
性质3的特殊情况是：

#blk[性质4][
$M\(M > 0\)$ 的 $n$ 次算术根的对数等于根指数的倒数乘以被开方数的对数，即 $ log_a root(n, M) = 1 / n log_a M $

]
#rmk[
+ 由性质2可得 $log_a 1 / M = - log_a M thick\(M > 0\)$⁠；

+ 一般来说，$log_a\(M plus.minus N\)eq.not log_a M plus.minus log_a N$⁠；

+ 上述四个性质说明，如果先对算式取对数，即把算式过渡到对数，然后根据对数运算法则，两个数相乘与相除可以化为它们的对数相加与相减，一个数的乘方与开方可以化为把它的对数乘以或除以指数，这样计算简捷得多，以后我们还要进一步说明，如何把计算对数的结果再还原到算式的结果．

]
#example[
已知 $log_10 2 = 0.3010$, 求 $log_10 5\,log_10 40$, $log_10 5000$

]
#solution[
$ log_10 5 & = log_10 10 / 2 = log_10 10 - log_10 2 = 1 - 0.3010 = 0.6990\
log_10 40 & = log_10\(4 times 10\)\
 & = log_10 2^2 + log_10 10 = 2 log_10 2 + 1\
 & = 2 times\(0.3010\)+ 1 = 1.6020\
log_10 5000 & = log_10\(5 times 1000\)= log_10 5 + log_10 10^3\
 & = (log_10 10 - log_10 2) + 3 log_10 10\
 & = 4 - 0.3010 = 3.6990 $

]
#example[
已知 $log_10 2 = 0.3010$⁠，$log_10 3 = 0.4771$⁠，求 $log_10 0.2$, $log_10 sqrt(1.5)$, $log_10 450$

]
#solution[
$ log_10 0.2 & = log_10 2 / 10 = log_10 2 - log_10 10\
 & = 0.3010 - 1 = - 0.6990\
log_10 sqrt(1.5) & = 1 / 2 log_10 3 / 2 = 1 / 2 (log_10 3 - log_10 2)\
 & = 1 / 2\(0.4771 - 0.3010\)= 1 / 2 times 0.1761\
 & = 0.08805\
log_10 450 & = log_10 frac(3^2 times 10^2, 2) = log_10\(3 times 10\)^2 - log_10 2\
 & = 2 (log_10 3 + log_10 10) - log_10 2\
 & = 2\(0.4771 + 1\)- 0.3010 = 2.6532 $ #noindent;注意：在解题时常用到 $log_a a = 1$, $log_a 1 = 0$⁠．

]
求任何单项式的对数就是求该式中各因式的对数的代数和．

#example[
已知 $y = frac(\(a - b\)^3 root(3, c), root(5, \(a + b\)^2 d^3))$⁠，求 $log_c y$

]
#solution[
$ log_c y & = log_c frac(\(a - b\)^3 root(3, c), root(5, \(a + b\)^2 d^3))\
 & = log_c\(a - b\)^3 dot.op root(3, c) - log_c root(5, \(a + b\)^2 d^3)\
 & = log_c\(a - b\)^3 + log_c root(3, c) - 1 / 5 log_c\(a + b\)^2 d^3\
 & = 3 log_c\(a - b\)+ 1 / 3 log_c c - 1 / 5\[2 log_c\(a + b\)+ 3 log_c d\]\
 & = 3 log_c\(a - b\)+ 1 / 3 - 2 / 5 log_c\(a + b\)- 3 / 5 log_c d $

]
所谓代数式的还原法就是由一个单项式的对数式反求这个单项式．

#example[
已知 $log_2 x = log_2 a + 2 log_2 b - 1 / 3 log_2 c$⁠，求 $x$⁠．

]
#solution[
$ log_2 x = log_2 a + log_2 b^2 - log_2 root(3, c) = log_2 a b^2 - log_2 root(3, c) = log_2 frac(a b^2, root(3, c)) $ #noindent;根据同底的两个对数相等，则它的真数相等，得出 $ x = frac(a b^2, root(3, c)) $

]
#example[
已知 $log_a N = log_a c + b$, 求 $N$⁠．

]
#solution[
$ log_a N = log_a c + log_a a^b = log_a c dot.op a^b $ #noindent;根据同底的两个对数相等则其真数相等，得出 $ N = c dot.op a^b $

]
#blk[性质5][
以 $b$ 为底 $N$ 的对数，除以以 $b$ 为底 $a$ 的对数的商，可以换作以 $a$ 为底 $N$ 的对数 $ log_a N = frac(log_b N, log_b a) $ #noindent;这个公式叫做换底公式．

]
#proof[
因为 $N = a^(log_a N)$⁠，两边取以 $b$ 为底的对数，得到 $ log_b N = log_b (a^(log_a N)) $ #noindent;应用对数法则 (性质3), 得到 $ log_b N =\(log_a N\)log_b a $ #noindent;即 $ log_a N = frac(log_b N, log_b a) $

]
#blk[推论][
$ log_a b = frac(1, log_b a) $

]
#example[
已知 $log_10 2 = 0.3010$⁠，求 $log_2 5$⁠．

]
#solution[
$ log_2 5 = log_2 10 / 2 = log_2 10 - log_2 2 = frac(1, log_10 2) - 1 = 1 / 0.3010 - 1 = 699 / 301 $

]
#example[
已知 $log_10 2 = a$, $log_10 7 = b$⁠，求 $log_8 9.8$⁠．

]
#solution[
$ log_8 9.8 & = frac(log_10 9.8, log_10 8) = frac(log_10 frac(2 times 7^2, 10), log_10 2^3)\
 & = frac(log_10 2 + 2 log_10 7 - log_10 10, 3 log_10 2)\
 & = frac(a + 2 b - 1, 3 a) $

]
#heading(level: 2, numbering: none, supplement: [toc-sub])[习题1.3]

+ #block(sticky: true)[利用对数性质将下面的式子变形：]

  #cols(2)[
  + $log_a a^2 b^3$

  + $log_a x sqrt(y)$

  + $log_a root(3, x) / y^2$

  + $log_a b^3 / sqrt(a)$

  + $log_a\(a b\)^3$

  + $log_a (x / y)^4$

  + $log_a root(4, x^3 / y)$

  + $log_a frac(u v^3, w^2)$

  ]

+ 求下列各式中 $log_10 x$ 的展开式：

  + $x = 6 a frac(sqrt(2\(a - b\)c), 5\(a - b\)^2)$

  + $x = 5 m^(tfrac(3, 4)) n^(tfrac(1, 3)) root(3, frac(2 cos alpha, 3))\,quad\(0 degree lt.eq alpha lt.eq 90 degree\)$

  + $x = root(5, (frac(1, a^2 b^2 root(4, c^3)))^3)$

  + $x = sqrt(sqrt(a b) / a^(- 1) dot.op root(3, a^(- 1) b^(- 2)))$

+ 求证：

  + $log_a\(e^x + 2 + e^(- x)\)+ log_a\(e^x - 2 + e^(- x)\)= 2 log_a\(e^x - e^(- x)\)$

  + $log_a\(m^3 + 3 m^2 + 3 m + 1\)- log_a\(n^3 + 3 n^2 + 3 n + 1\)= 3 log_a frac(m + 1, n + 1)$

+ 已知 $log_10 x = log_10 a + log_10 b - 3 log_10 c$, 求 $x$⁠．

+ #block(sticky: true)[求下列各式的值：]

  #cols(2)[
  + $1 / 2 log_3 9$

  + $log_4 2 + log_4 8$

  + $3 log_10 2 - log_10 80$

  + $log_5 10 - log_5 2 / sqrt(5)$

  ]

+ 若 $log_10 2 = 0.3010$, 计算 $log_2 13 + 1 / 2 log_2 25 + log_2 4 / 7 - log_2 13 / 35$

+ 已知 $log_10 2 = 0.3010$, $log_10 3 = 0.4771$, 求 $log_4 3$ 和 $log_8 2$

+ 试证：(1) $log_(a^k) b = frac(log_a b, k)$⁠；#h(1em);\(2) $log_(a^n) b^n = log_a b$

+ 计算：$\(log_2 3 + log_4 9\)\(log_3 4 + log_9 2\)$

+ 计算：$log_a b dot.op log_b c dot.op log_c a$ ($a\,b\,c$ 是不等于1的正数)．

=== 常用对数
==== 近似数计算常识
本节要介绍常用对数表，对数表所列对数几乎全是近似数，我们不仅在数学用表中遇到近似数，其实在日常生活中，有关度量和计算大量物件或计算无理数的结果，都得用近似数来表示．因此，在介绍常用对数之前，我们特别介绍下面几点关于近似数的常识．

在度量和计算中所遇到的数有两种情况：一种是能够用一个数准确地表示某一个量．例如，在一堂课内出席学生50人，一星期有7天，这些数都与实际完全符合，叫做该量的准确量．但是在中午一小时内，经过北京天安门广场的人数，就未必能用一个数准确地表示，又比如说约2000人出席全校大会，“约”这个字说明2000这数是近似的．在计算大量数目的物件时，常常要用近似数来表示．

度量一个量，都不能做到绝对准确，所得结果总会含有一些误差的，这误差的大小，要看度量仪器的质量以及作度量的人是否有经验而定．例如，若用最小分度为1毫米的尺子量一金属杆的长度时，所得结果为1.234米，这表示真实长度在1.2335米和1.2345米之间．

#blk[定义1][
一个量的准确数（有时说准确值）与近似数（或近似值）的差，叫做这个#strong[近似数（值）的误差]．

]
设 $x$ 是某量的准确数（值），并且 $x = 3.283$, 则称 $a = 3.2$ 是 $x$ 的一个不足近似数（值），$b = 3.3$ 是 $x$ 的一个过剩近似数（值）．把 $x$ 用它的不足近似数 $a$ 来代替，所产生的误差是：$ x - a = 3.283 - 3.2 = 0.083 $ #noindent;如果取 $x$ 的过剩近似数（值），那么这个近似值的误差是：$ x - b = 3.283 - 3.3 = - 0.017 $

显然，不足近似值的误差总是正的，而过剩近似值的误差总是负的．

#blk[定义2][
一个量的准确数与近似数的差的绝对值，叫做这个#strong[近似数的绝对误差]．

]
在我们所举的例子中，不足近似值 $a$ 的绝对误差：$ \|x - a\|=\|0.083\|= 0.083 $ #noindent;而过剩近似值 $b$ 的绝对误差：$ \|x - b\|=\|- 0.017\|= 0.017 $

近似数（值）的绝对误差，表示近似数和该准确数相差多少，绝对误差越小说明这个近似数越精确．

在度量长度时，一个量的准确长度是不知道的，但可以估计它在哪个范围内．因此近似数的绝对误差的准确值也是不知道的，但可以估计出近似数的绝对误差不超过什么数．

#blk[定义3][
设 $x$ 是某量的准确数，$a$ 是它的近似的数（值），如果这个近似数（值）的绝对误差不超过数 $h$, 也就是说满足条件 $\|x - a\|lt.eq h$, 那么 $a$ 叫做 $x$ 的#strong[精确到 ]$h$#strong[ 的近似数（值）]．

]
例如：$\|x - a\|= 0.083 < 0.1\,quad\|x - b\|= 0.017 < 0.1$⁠，因此：3.2和3.3分别叫做3.283的精确到0.1的不足近似值和过剩近似值．

前面用最小分度为1毫米的尺子度量金属杆所得到的近似值1.234的绝对误差不超过0.0005（米），因此它是精确到万分之五（米）的近似值．

==== 数的四舍五入法和近似数的有效数字
准确数据四舍五入时，也会出现近似数，如果某校有2003人，当参观者问校长说“学校有多少人？”时，他大概会说四舍五入得约数2000人．

把分数 $2 / 13$ 化为小数时，得到无穷循环小数 $2 / 13 approx 0 . std.math.dot(1) 5384 std.math.dot(6)$

在实际计算上，我们常把这种小数取到小数点后某一位为止，比方说取到千分之一位，而按四舍五入法舍去其后各位数字，于是得：$2 / 13 approx 0.154$⁠．

四舍五入法就是略去几位数字时，如果略去的第一位数字小于5, 那么把留下的最末一位数字保留不动；如果略去的第一位数字大于或等于5, 那就把留下的最末一位数字加上1, 用四舍五入法写出来的数，比单单略去最后几位数后写出的数准确些．

例如，0.154就比0.153更接近 $2 / 13$⁠．

$because quad lr(|2 / 13 - 0.154|) < 0.0002\,quad lr(|2 / 13 - 0.153|) < 0.0009$

$therefore quad$0.154比0.153更接近 $2 / 13$⁠．

估计近似数的准确度的最简便的方法之一，是算出它的有效数字的个数．

#blk[定义4][
若近似数的误差不超过其末一位数字的一个单位，那么该数的一切数字，除了左起第一个非零数字之前的零以外，都叫有效数字．

]
例如，0.154和0.153都是 $2 / 13$ 的取3位有效数字的数，即 $2 / 13$ 的近似值0.154或0.153具有三位有效数字．把准确数1.9996四舍五入到千分之一位，得2.000, 这时所有四个数字，连三个零在内，都是有效数字，即它是有四个有效数字的数．

#blk[定义5][
若近似数的误差大于最末一位数字的一个单位，那么它的最末一个数字叫不可靠的．

]
把0.1535作为 $2 / 13$ 的近似数时，那么它的最末一个数字5就是不可靠的，因为 $lr(|2 / 13 - 0.1535|) > 0.0003$

把学校人数2135四舍五入到百位数得2100, 这里最末两个零是不可靠的数字，2100是有两个有效数字的数．

如果近似数末后的零不是有效数字，我们规定把它写得小一些，这样21#text(size: 0.9em)[00]表示具有两个有效数字的近似数．

用科学记数法表示的数在10的方幂前面的数字代表有效数字．

例如，0.0000437有三位有效数字，它的标准写法是 $4.37 times 10^(- 5)$, 前面2100的标准写法是 $2.1 times 10^3$.

在计算近似数时，我们必须指明精确到几位有效数字．例如0.09235716, 若取三位有效数字的精确度，我们就写成：$9.24 times 10^(- 2)$. 若是 $70\,454\,620\,000$ 取四位有效数字的精确度就写成 $7.045 times 10^10$.

#rmk[
前面例子有效数字中，最后一位数字都已经过四舍五入的处理了，如果最后一例中，取二位有效数字的精确度，就要写作 $7.0 times 10^10$, 不可以写作 $7 times 10^10$⁠．

不要把“小数点后的数字”跟“有效数字”等同起来，数0.000175有三个有效数字，但总共有六个小数点后的数字．

]
关于近似数的计算规则如下：

#blk[法则1][
近似数相加（减）时，其中小数位数最少的近似数有几个数位，它们的和（差）就保留几个小数数位．

]
#example[
已知 $pi approx 3.1416$, $a = 2.4$, $b = 0.047$⁠．求 $pi + a + b$⁠．

]
#solution[
+ 找出小数位数最少的近似数，这样的近似数是2.4．

+ 把其他的近似数四舍五入，比所找出的近似数多保留一位：$ pi approx 3.1416 approx 3.14\,#h(2em) 0.047 approx 0.05 $

+ 作近似数的加法：$3.14 + 2.4 + 0.05 = 5.59$

+ 把所得结果四舍五入，保留的位数与所找出的近似数的位数相同，即四舍五入到十分位：$ 5.59 approx 5.6 $ #noindent;于是 $ pi + a + b approx 5.6 $ #noindent;当近似数相减时，可以同样处理．

]
#example[
已知 $x approx 6.3 times 10^3$, $y = 3.26 times 10^5$⁠，求 $x - y$⁠．

]
#solution[
$ x - y & = 6.3 times 10^3 - 3.26 times 10^5\
 & = 10^5\(6.3 times 10^(- 2) - 3.26\)=\(0.063 - 3.26\)times 10^5\
 & =\(- 3.197\)times 10^5\
 & approx - 3.20 times 10^5\
 & = - 320000 $

]
#blk[法则2][
近似数相乘（除）时，有效数字位数最少的因数有几位有效数字，它们的积（商）就保留几位数字（不算前边的零）．

]
#example[
已知 $u = 95.64$, $v = 0.28$⁠，求积 $u dot.op v$⁠．

]
#solution[
+ 找出有效数字位数最少的因数，这样的因数是0.28（两位有效数字）．

+ 把因数95.64四舍五入，使它比有效数字位数最少的因数多一位有效数字：$95.64 approx 95.6$（四舍五入取到三位有效数字；最后一个数字是备用数字）．

+ 相乘后得到积：$ 95.6 times 0.280 = 26.768 $

+ 把这个结果四舍五入，使其数字个数与有效数字位数最少的因数含有的有效数字位数相同：$26.768 approx 27$⁠．

  于是 $u dot.op v = 27$⁠．

]
在计算近似数的商时，应用上面同样的法则．

#example[
设 $x approx 0.823$, $y = 1.34$, 计算：$frac(x y, x + y)$ 的近似值．

]
#solution[
+ 求出积 $x y$ 的近似值：$x y approx 0.823 times 1.34 = 1.10282 approx 1.103$

  （在 $x$ 和 $y$ 的近似值中，都有三位有效数字，所得结果保留四个数字；有一个数字是备用数字）．

+ 求出 $x + y$ 的近似值：$x + y approx 0.823 + 1.34 = 2.163$

  （$y$ 的近似数中，小数点后有两位；$x$ 的近似数中，小数点后有三位，所得结果保留到小数点后三位，有一个数字是备用数字）．

+ 求出商 $frac(x y, x + y)$ 的近似值：$ frac(x y, x + y) approx 1.103 / 2.163 approx 0.5099 $#noindent;（不算备用数字，在分子与分母的近似值中，都含有三位有效数字，计算结果，不算整数位上的零，共有四个数字，有一个数字是备用数字．）

+ 把上述结果四舍五入到三个数字（不算个位数上的零）：$ frac(x y, x + y) approx 0.510 $

]
#exercise[
+ #block(sticky: true)[下列由四舍五入得到的近似数，各精确到哪一位，各有几个有效数字？]

  #cols(3)[
  + 306万

  + 25.7

  + 0.004

  + 0.01063

  + 830000

  + $2.60 times 10^5$

  ]

+ 用四舍五入法，按要求对下列各数取近似数：

  + 0.33428（精确到0.001）

  + 64.8（精确到1）

  + 0.05069（保留三个有效数字）

  + 1.4963（精确到0.01）

  + 83230（保留1个有效数字）

  + 80230（保留2个有效数字）

+ 已知 $x$ 和 $y$, 求 $x$ 与 $y$ 的积的近似值：

  + $x approx 15.94\,#h(2em) y approx 0.85$

  + $x approx 1.754 times 10^8\,#h(2em) y approx 6.9 times 10^(- 5)$

  + $x approx 8.42 times 10^(- 4)\,#h(2em) y approx 9.81 times 10^5$

+ 已知 $x$ 和 $y$ 的近似值，求商 $x / y$ 的近似值：

  + $x approx 18.28\,#h(2em) y approx 0.54$

  + $x approx 0.36\,#h(2em) y approx 0.0238$

  + $x approx 4.5 times 10^7\,#h(2em) y approx 2.79 times 10^5$

+ 求下列各式的近似值：

  + $3 x - 5 y$, 其中 $x approx 46.24\,#h(2em) y approx 25.2$

  + $frac(x + y, x - y)$⁠，其中 $x approx 2.08\,#h(2em) y approx 10.2$

  + $x^2 - 2 x + 7$, 其中 $x approx 1.44$

]
==== 常用对数
以10为底的对数叫做常用对数．在数值的计算上常要用到以10为底的对数一些特性．为了书写的方便，我们约定把 $log_10 N$ 的底10略去不写，用专门的记号“$lg$⁠”代替“$log_10$⁠”，例如 $ log_10 100 = 2 #h(2em) upright("简写成") #h(2em) lg 100 = 2 $ #noindent;以后，如果没有指明对数的底，就认为所说的对数是常用对数，例如说“2的对数是0.3010”就是指2的常用对数是0.3010．也就是 $ lg 2 = 0.3010 $

下面我们要看看，常用对数对于数值计算究竟有哪些便利的性质．

为了说明常用对数的特性，我们首先把真数用科学记数法写出来，也就是把它表示为一个1和10之间的数与10的幂的积，即 $u times 10^k$, 这里 $1 lt.eq u < 10$, $k in bb(Z)$, 例如光的速度是每秒186,000公里表示为 $1.86 times 10^5$ 每秒公里，一个电子的质量是0.000,000,000,000,000,000,000,000,000,910,83克表示为 $9.1083 times 10^(- 28)$ 克，把一个数用科学记数法写出的规则是：

+ 把整数部分有 $p + 1$ 位的数 $N$ 的小数点，向左移动 $p$ 位得到只有一位整数的数 $u$, 这样就有 $N = u times 10^p thick\(p gt.eq 0\)$⁠．

+ 把左起第一个非零数字前面有 $p$ 个零（包括个位数上的一个零）的纯小数N的小数点，向右移动 $p$ 位得到只有一位整数的数 $u$, 这样就有 $N = u times 10^(- p) thick\(p gt.eq 1\)$⁠．

如果已知 $lg 2.23 = 0.3483$, 我们只须通过观察10的方幂的对数，就可以求得和 $2.23$ 的有效数字相同，而只有小数点位置不同的数（即这种形式：$2.23 times 10^p$, 或 $2.23 times 10^(- p)$, $p in bb(N)$ 的数）的常用对数，这也就是常用对数的好处．例如：$ lg 22.3 & = lg\(2.23 times 10\)= lg 2.23 + lg 10 = 0.3483 + 1\
lg 223 & = lg\(2.23 times 10^2\)= lg 2.23 + lg 10^2 = 0.3483 + 2\
lg 2230 & = lg\(2.23 times 10^3\)= lg 2.23 + lg 10^3 = 0.3483 + 3\
lg 22300 & = lg\(2.23 times 10^4\)= lg 2.23 + lg 10^4 = 0.3483 + 4\
lg 0.223 & = lg\(2.23 times 10^(- 1)\)= lg 2.23 + lg 10^(- 1) = 0.3483 - 1\
lg 0.0223 & = lg\(2.23 times 10^(- 2)\)= lg 2.23 + lg 10^(- 2) = 0.3483 - 2 $

我们定义常用对数中的正的纯小数部分叫做对数的尾数，而把它的整数部分叫做对数的首数，注意常用对数的尾数一定是正的，首数可以是任何整数，它的数值等于真数在科学记数形式下的10的幂指数，在上面的对数中，0.3483是尾数，整数 $+ 1\,+ 2\,+ 3\,+ 4\,- 1\,- 2$ 是相应对数的首数，$lg 2.23$ 的首数是0．

现在我们把常用对数的一些特性总结如下：

+ 10的方幂的常用对数是整数．因为 $ lg 10^n = n lg 10 = n\,#h(2em) n in bb(Z) $

  看下表：

  #align(center)[
  #table(
    columns: (auto, auto, auto, auto, auto, auto, auto, auto, auto, auto,),
    align: (center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon,),
    table.vline(x: 1),
    table.hline(),
    [$u$],
    [$dots.h.c$],
    [0.001],
    [0.01],
    [0.1],
    [1],
    [10],
    [100],
    [1000],
    [$dots.h.c$],
    table.hline(),
    [$lg u$],
    [$dots.h.c$],
    [$- 3$],
    [$- 2$],
    [$- 1$],
    [0],
    [1],
    [2],
    [3],
    [$dots.h.c$],
    table.hline(),
  );

  ]
  从表中看出 $lg 10^n$ 的值随幂指数增大而增大．由此进一步推知：

  + 如果 $u > 1$, $lg u$ 便是正的；

  + 如果 $0 < u < 1$, $lg u$ 便是负的；

  + 如果 $u < 0$ 或 $u = 0$, $lg u$ 无意义．

+ 当 $u$ 是10的整数指数幂以外的有理数时，$lg u$ 是无理数（证明略去）．

  这也就是说，常用对数表中所列的对数值几乎全是有理近似值．

+ 如果 $u$ 是一位整数的数，那么它的对数是一个正的纯小数，它的首数等于零．

  因为由上表可以看出，当 $1 < u < 10$ 时，便有 $0 < lg u < 1$⁠．

+ 10的整数次幂以外的任何正数的常用对数，可以写成首数加尾数的形式，这种形式的数是常用对数的人为形式．

因为 $ lg\(u times 10^p\) & = lg u + p #h(2em)\(0 < lg u < 1\,thick p in bb(N)\)\
 & = upright("正整数") p + upright("正的纯小数") $ #noindent;或者 $ lg\(u times 10^(- p)\)= upright("负整数")\(- p\) + upright("正的纯小数") $

利用这个性质，我们可以按下面的规则写对数的首数和尾数：

+ 大于1的真数的对数的首数，等于这个真数的整数位数减1；

  小于1的真数的对数的首数是一个负整数，它的绝对值等于这个真数第一个非零数字前面零的个数（包括个位上的零在内）．

  根据上面把一个数用科学记数法写出的规则和对数的性质，这个结论是自明的．

+ 真数的对数尾数只决定于它的各个数字的排列顺序而与小数点的位置无关，因此，只是小数点位置不同的那些数，它们的对数尾数都相同．

为了书写上的简便，我们把首数和尾数中间的“$+$⁠”号略去不写，当首数是负数的时候，把“$-$⁠”号放在这个整数的上面，例如：$ lg 12.3 & = 1 + 0.0899 = 1.0899\
lg 0.123 & = - 1 + 0.0899 = macron(1) .0899\
lg 0.0123 & = - 2 + 0.0899 = macron(2) .0899 $

#rmk[
整数部分上的“$-$⁠”号只管整数部分，而不管小数部分，即：$macron(1) .0899 eq.not - 1.0899$⁠．

]
#example[
已知 $lg 4 = 0.6021$, 试举出5个数，它们的对数尾数都是0.6021.

]
#solution[
因为同一个对数的尾数所对应的真数仅仅是小数点的位置不同，所以0.04, 0.4, 40, 400, 4000等数的对数尾数都是0.6021．

]
#example[
已知 $lg x = 4.028$, $lg y = 0.1234$, $lg z = - 4.653$, 分别判断 $x\,y\,z$ 是大于1还是小于1的数．大于1时，有几位整数？小于1时，第一个不等于零的数字前面有几个零（包括个位上的零）？

]
#solution[
$x$ 是大于1的数，有5位整数；$y$ 是大于1的数，有1位整数；因为 $ lg z = - 4.653 = - 4 +\(- 0.653\)= - 5 +\(1 - 0.653\)= macron(5) .347 < 0\, $ #noindent;所以 $z$ 是小于1的数，第一个不是零的有效数字前面有5个零（包括个位数上的零）．

]
#example[
若 $lg 4.86 = 0.6866$, 求 $lg root(3, 0.0486)$⁠．

]
#solution[
$ lg root(3, 0.0486) & = 1 / 3 lg 0.0486 = 1 / 3\(- 2 + 0.6866\)\
 & = 1 / 3\(- 3 + 1.6866\)\
 & = - 1 + 0.5622 = macron(1) .5622 $

]
#rmk[
例1.34解释了对于一个有负首数的对数的计算常用的技巧，假如我们求四次根，那么我们必须把 $0.6822 - 2$ 写成 $- 4 + 2.6822$, 并且它们被四除．

]
下面再给出几个有负首数的对数作四则运算的例子：

- 加法$ macron(2) .3758 + macron(3) .7189 & =\(- 2 + 0.3758\)+\(- 3 + 0.7189\)\
   & = - 5 + 1.0947 = macron(4) .0947 $

- 减法$ macron(3) .7239 - macron(4) .8241 & =\(- 4 + 1.7239\)-\(- 4 + 0.8241\)\
   & = 0.8998 $

- 乘法$ macron(3) .2373 times 5 & =\(- 3 + 0.2373\)times 5\
   & = - 15 + 1.1865 = overline(14) .1865 $

- 除法$ macron(2) .6866 div 4 & =\(- 4 + 2.6866\)div 4\
   & = - 1 + 0.6717 = macron(1) .6717 $

#exercise[
+ 求下列各数的常用对数：$ 10^(- 5)\,#h(2em) 10^5\,#h(2em) 0.0000001\,#h(2em) 1000000 $

+ 已知 $lg 3 = 0.4771$, 求：$ lg 0.003\,#h(2em) lg 0.03\,#h(2em) lg 0.3\,#h(2em) lg 30\,#h(2em) lg 300\,#h(2em) lg 3000 $

+ #lead-list(none, 2)[
  + 把下列各数用负数来表示：$ macron(1) .3235\,quad macron(2) .5638\,quad macron(1) .8436\,quad macron(2) .4957\,quad macron(4) .9879 $

  + 把下列各数改成负首数与正尾数的和：$ - 0.3678\,quad - 1.8394\,quad - 0.2310\,quad - 0.0840\,quad - 3.0251 $
  ]

+ #block(sticky: true)[完成下列运算，用首数 $+$ 尾数表示结果．]

  #cols(2)[
  + $macron(1) .5436 + 2.3892$

  + $macron(1) .1546 + macron(2) .9835$

  + $0.7658 - 1.3456$

  + $macron(1) .2396 - 0.7459$

  + $0.1518 - macron(1) .2836$

  + $0.3215 - macron(2) .9217$

  + $1 - macron(1) .2812$

  + $2 - macron(2) .1534$

  + $macron(1) .2432 dot.op 3$

  + $0.1546 dot.op\(- 2\)$

  + $macron(1) .7638 dot.op\(- 3\)$

  + $2.5146 dot.op\(- 1.2\)$

  + $macron(2) .2817 div 2$

  + $macron(2) .1536 div 3$

  + $macron(2) .7235 div 4$

  + $macron(1) .6274 div\(- 3\)$

  + $macron(1) .8236 div\(- 0.2\)$

  + $macron(2) .6548 div\(- 0.3\)$

  ]

+ 若 $lg 6444$ 的尾数是0.8092, 求：$ lg 0.6444\,#h(2em) lg 6444000\,#h(2em) lg 0.0006444 $

+ 已知 $lg 32.5 = 1.5119$, 求下面对数式中的真数 $x$: $ lg x = 0.5119\,#h(2em) lg x = 2.5119\,#h(2em) lg x = macron(4) .5119 $

+ #lead-list(none, 2)[
  + $3^50$ 是几位整数？

  + $3^100$ 是几位整数？

  + $\(0.03\)^10$ 在小数点和第一个有效数字之间一共有多少个零？（提示：$lg 3 = 0.4771$⁠）
  ]

]
==== 对数表
在上一节里，我们知道任意一个正数的对数都可以分成两个部分，其中第一部分首数可以从观察中直接求出，第二部分尾数，只要知道了1到10以内的数的对数，也就可以求出．但是，怎样来求1到10以内的数的对数呢？

因为10的整数指数幂以外的所有有理数，它们的对数都是无理数，所以要求一个正数的对数，一般只能得到某一精度的近似值，为了应用上的方便，人们把1到10以内的数的对数（也就是对数的尾数）制成了各种精确的对数尾数表，例如在《四位数学用表》里，就载有具有四位有效数字的对数尾数表．

下表是《四位数学用表》中对数尾数表的一个部分：

这个表分成两部分，标有N的第一直行和第一横行是真数，其余是对数的尾数，右边最后一栏是修正值．

#align(center)[
#fit-width[#table(
  columns: (auto, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto,),
  align: (center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon,),
  table.vline(x: 0),
  table.vline(x: 1),
  table.vline(x: 2),
  table.vline(x: 3),
  table.vline(x: 4),
  table.vline(x: 5),
  table.vline(x: 6),
  table.vline(x: 7),
  table.vline(x: 8),
  table.vline(x: 9),
  table.vline(x: 10),
  table.vline(x: 11),
  table.vline(x: 12),
  table.vline(x: 13),
  table.vline(x: 14),
  table.vline(x: 15),
  table.vline(x: 16),
  table.vline(x: 17),
  table.vline(x: 18),
  table.vline(x: 19),
  table.vline(x: 20),
  table.hline(),
  [N],
  [0],
  [1],
  [2],
  [3],
  [4],
  [5],
  [6],
  [7],
  [8],
  [9],
  [1],
  [2],
  [3],
  [4],
  [5],
  [6],
  [7],
  [8],
  [9],
  table.hline(),
  [---],
  [---],
  [---],
  [---],
  [---],
  [---],
  [],
  [],
  [],
  [],
  [],
  [],
  [],
  [],
  [],
  [],
  [],
  [],
  [],
  [],
  table.hline(),
  [50],
  [6990],
  [6998],
  [7007],
  [7016],
  [7024],
  [7033],
  [7042],
  [7050],
  [7059],
  [7067],
  [1],
  [2],
  [3],
  [3],
  [4],
  [5],
  [6],
  [7],
  [8],
  table.hline(),
  [51],
  [7076],
  [7084],
  [7093],
  [7101],
  [7110],
  [7118],
  [7126],
  [7135],
  [7143],
  [7152],
  [1],
  [2],
  [3],
  [3],
  [4],
  [5],
  [6],
  [7],
  [8],
  table.hline(),
  [52],
  [7160],
  [7168],
  [7177],
  [7185],
  [7193],
  [7202],
  [7210],
  [7218],
  [7226],
  [7235],
  [1],
  [2],
  [2],
  [3],
  [4],
  [5],
  [6],
  [7],
  [7],
  table.hline(),
  [53],
  [7243],
  [7251],
  [7259],
  [7267],
  [7275],
  [7284],
  [7292],
  [7300],
  [7308],
  [7316],
  [1],
  [2],
  [2],
  [3],
  [4],
  [5],
  [6],
  [6],
  [7],
  table.hline(),
  [54],
  [7324],
  [7332],
  [7340],
  [7348],
  [7356],
  [7364],
  [7372],
  [7380],
  [7388],
  [7396],
  [1],
  [2],
  [2],
  [3],
  [4],
  [5],
  [6],
  [6],
  [7],
  table.hline(),
  [55],
  [---],
  [---],
  [---],
  [---],
  [],
  [],
  [],
  [],
  [],
  [],
  [],
  [],
  [],
  [],
  [],
  [],
  [],
  [],
  [],
  table.hline(),
);]

]
这个表里所载的对数尾数，都是用四舍五入的法则求到小数第四位的，因此，这里的对数尾数是精确到0.0001的近似值．

现在，我们举例来说明利用这个表找一个数的对数尾数的方法．

因为仅仅是小数点位置不同的数，它们的对数的尾数都相同，所以我们从一个数查它的对数的尾数时，可以不管真数的小数点，只把它看成是若干位的整数，例如，要查0.005036, 50.36, 0.5036, 503600的对数的尾数，都只要查5036的对数的尾数就可以了．

求一个数的对数时，要先由真数的小数点的位置确定对数的首数，然后由真数查出对数的尾数，最后把首数和尾数合写在一起．

#example[
求下列各数的对数：$ 523\,#h(2em) 51\,#h(2em) 0.5\,#h(2em) 50.36\,#h(2em) 5.448\,#h(2em) 53842 $

]
#solution[
+ 因为523的整数位数是3, 所以它的对数的首数是2, 从对数表可以查得对数尾数是0.7185，

  $therefore quad lg 523 = 2.7185$

+ 因为51的整数位数是2, 所以它的对数的首数是1, 而51的对数尾数和510的对数尾数相同，查表得0.7076,

  $therefore quad lg 51 = 1.7076$

+ 因为0.5的第一个不为零的数5前面有一个零（包括个位数上的零），所以它的对数的首数是 $macron(1)$, 而0.5的对数尾数和500的对数尾数相同，查表得0.6990，

  $therefore quad lg 0.5 = macron(1) .6990$

+ 因为50.36的整数位数是2, 所以它的对数的首数是1, 而50.36对数尾数和5036的对数尾数相同，我们先查前三位数的对数尾数得0.7016, 再加上第四位数字的修正值0.0005, 得0.7021,

  $therefore quad lg 50.36 = 1.7021$

+ 因为5.448的整数位数是1, 所以它的对数的首数是0, 查表得5448的对数尾数是0.7362,

  $therefore quad lg 5.448 = 0.7362$

+ 因为53842的整数位数是5, 所以它的对数的首数是4, 要求出它的对数尾数，首先把它四舍五入，变成只有四位有效数字的数 $5.384 times 10^4$, 查表得5384的对数尾数是0.7311,

  $therefore quad lg 53842 approx lg 53840 = 4.7311$

]
#example[
求下列各数的对数：$ 36.5\,#h(2em) 804.7\,#h(2em) 0.26\,#h(2em) 0.00453\,#h(2em) 945686 $

]
#solution[
$ lg 36.5 & = 1.5623\
lg 804.7 & = 2.9057\
lg 0.26 & = macron(1) .4150\
lg 0.00453 & = macron(3) .6561\
lg 945686 & approx lg 945700 = 5.9757 $

]
==== 反对数表
已知对数求真数，要用《反对数表》（或者叫做“真数表”）．下面列出的是《反对数表》的一部分，表中标有 $m$ 的一直列和上、下两横行是对数尾数，其余的是真数，右边一栏是修正值，反对数表的查法和对数表的查法相类似．

#align(center)[
#fit-width[#table(
  columns: (auto, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto,),
  align: (center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon,),
  table.vline(x: 0),
  table.vline(x: 1),
  table.vline(x: 2),
  table.vline(x: 3),
  table.vline(x: 4),
  table.vline(x: 5),
  table.vline(x: 6),
  table.vline(x: 7),
  table.vline(x: 8),
  table.vline(x: 9),
  table.vline(x: 10),
  table.vline(x: 11),
  table.vline(x: 12),
  table.vline(x: 13),
  table.vline(x: 14),
  table.vline(x: 15),
  table.vline(x: 16),
  table.vline(x: 17),
  table.vline(x: 18),
  table.vline(x: 19),
  table.vline(x: 20),
  table.hline(),
  [$m$],
  [0],
  [1],
  [2],
  [3],
  [4],
  [5],
  [6],
  [7],
  [8],
  [9],
  [1],
  [2],
  [3],
  [4],
  [5],
  [6],
  [7],
  [8],
  [9],
  table.hline(),
  [---],
  [---],
  [---],
  [---],
  [],
  [],
  [],
  [],
  [],
  [],
  [],
  [],
  [],
  [],
  [],
  [],
  [],
  [],
  [],
  [],
  table.hline(),
  [0.25],
  [1778],
  [1782],
  [1786],
  [1791],
  [1795],
  [1799],
  [1803],
  [1807],
  [1811],
  [1816],
  [0],
  [1],
  [1],
  [2],
  [2],
  [2],
  [3],
  [3],
  [4],
  table.hline(),
  [0.26],
  [1820],
  [1824],
  [1828],
  [1832],
  [1837],
  [1841],
  [1845],
  [1849],
  [1854],
  [1858],
  [0],
  [1],
  [1],
  [2],
  [2],
  [3],
  [3],
  [3],
  [4],
  table.hline(),
  [0.27],
  [1862],
  [1866],
  [1871],
  [1875],
  [1879],
  [1884],
  [1888],
  [1892],
  [1897],
  [1901],
  [0],
  [1],
  [1],
  [2],
  [2],
  [3],
  [3],
  [3],
  [4],
  table.hline(),
  [0.28],
  [1905],
  [1910],
  [1914],
  [1919],
  [1923],
  [1928],
  [1932],
  [1936],
  [1941],
  [1945],
  [0],
  [1],
  [1],
  [2],
  [2],
  [3],
  [3],
  [4],
  [4],
  table.hline(),
  [0.29],
  [1950],
  [1954],
  [1959],
  [1963],
  [1968],
  [1972],
  [1977],
  [1982],
  [1986],
  [1991],
  [0],
  [1],
  [1],
  [2],
  [2],
  [3],
  [3],
  [4],
  [4],
  table.hline(),
  [---],
  [---],
  [---],
  [---],
  [---],
  [---],
  [---],
  [],
  [],
  [],
  [],
  [],
  [],
  [],
  [],
  [],
  [],
  [],
  [],
  [],
  table.hline(),
);]

]
#example[
已知 $lg A = 2.2715$, 求 $A$.

]
#solution[
由于对数的首数只与真数的小数点位置有关，而对数的尾数只与组成真数的数字（第一个不是零的数字前面的零不计算在内）有关，所以

+ 先由对数尾数0.2715查反对数表，查得1868, 这就是与所求的真数只有小数点位置不同的整数；

+ 再由首数确定小数点的位置，因为首数是2, 所以真数的整数位数是 $2 + 1 = 3$, 于是得 $ A = 186.8 $

]
#rmk[
对数的首数是用来定位，查反对数表时，不要把它计入．

]
#example[
已知 $lg B = macron(3) .261$, 求 $B$.

]
#solution[
由对数尾数0.261, 查反对数表得1824; 又因首数是 $- 3$, 所以 $B$ 的第一个有效数字前面有3个0（包括个位上的零），于是得 $ B = 0.001824 $

]
#example[
已知 $lg x = - 0.73248$, 求 $x$.

]
#solution[
$because quad - 0.73248 = macron(1) .26752 approx macron(1) .2675$

$therefore quad x = 0.1851$

]
#exercise[
+ #block(sticky: true)[查表求下面各数的对数：]

  #cols(4)[
  + 0.7

  + 0.015

  + 2.4

  + 25.6

  + 0.146

  + 0.0084

  + 1.02

  + 0.208

  + 0.0000809

  + 5436

  + 342.3

  + 0.9032

  + 0.063815

  + 236743

  + 0.547936

  ]

+ #block(sticky: true)[求下面对数各相应的真数：]

  #cols(4)[
  + 1.7482

  + 0.4362

  + $macron(1) .6415$

  + 2.6149

  + 3.2648

  + $macron(2) .18176$

  + $macron(3) .9340$

  + $macron(4) .7267$

  + 0.9236

  + $macron(1) .1015$

  ]

+ #block(sticky: true)[求下面各对数的值：]

  #cols(2)[
  + $lg cos 60 degree$

  + $lg sin^3 60 degree$

  + $lg root(3, cos 45 degree)$

  + $lg root(5, 0.00162)$

  ]

]
==== 利用对数计算
#example[
利用对数计算：$frac(341 times 0.06794 times 8.7, 0.9832 times 4780)$

]
#solution[
设 $A = frac(341 times 0.06794 times 8.7, 0.9832 times 4780)$ 那么两边取对数 $ lg A & =\(lg 341 + lg 0.06794 + lg 8.7\)-\(lg 0.9832 + lg 4780\)\
 & =\(2.5328 + macron(2) .8322 + 0.9395\)-\(macron(1) .9927 + 3.6794\)\
 & = 2.3045 - 3.6721 = macron(2) .6324 $ #noindent;查反对数表，得到 $ A = 0.04289 $

]
#example[
已知三角形的面积公式 $ Delta = sqrt(s\(s - a\)\(s - b\)\(s - c\)) $ #noindent;这里 $a\,b\,c$ 是三角形三条边的长，其中 $s = frac(a + b + c, 2)$⁠．

如果 $a approx 15.37$⁠cm, $b approx 21.42$⁠cm, $c approx 13.83$⁠cm, 求三角形 $A B C$ 的面积．

]
#solution[
由题意可得：$ s = 1 / 2\(15.37 + 21.42 + 13.83\)= 25.31\
s - a = 9.94\,#h(2em) s - b = 3.89\,#h(2em) s - c = 11.48 $ #noindent;因此：$ lg Delta & = 1 / 2 class("opening", stretch(\[, size: #1.2em)) lg s + lg\(s - a\)+ lg\(s - b\)+ lg\(s - c\)class("closing", stretch(\], size: #1.2em))\
 & = 1 / 2 class("opening", stretch(\[, size: #1.2em)) 1.4033 + 0.9974 + 0.5899 + 1.0599 class("closing", stretch(\], size: #1.2em))\
 & = 2.0253 $ #noindent;$therefore quad Delta = 106.0\(upright(c m)^2\)$.

]
#example[
利用对数计算 $\(- 2.31\)^3 times root(5, 0.072)$

]
#solution[
设 $A =\(- 2.31\)^3 times root(5, 0.072) = - 2.31^3 times root(5, 0.072)$⁠，那么 $ \|A\| & = 2.31^3 times root(5, 0.072)\
lg\|A\| & = 3 lg 2.31 + 1 / 5 lg 0.072\
 & = 3 times 0.3636 + 1 / 5 times macron(2) .8573\
 & = 1.0908 + 1 / 5\(- 5 + 3.8573\)\
 & = 1.0908 + macron(1) .7715\
 & = 0.8623 $ #noindent;因此 $\|A\|= 7.283 quad arrow.r.double quad A = - 7.283$

]
#example[
在 $triangle.stroked.t A B C$ 中，已知 $a = 62.24$, $b = 74.83$, $A = 27 degree 18'$, 解这个三角形．

]
#solution[
这里 $A$ 是锐角，并且 $a < b$, 我们先计算 $lg sin B$⁠．$ sin B = frac(b sin A, a) = frac(74.83 sin 27 degree 18', 62.24) $ $ lg sin B & = lg 74.83 + lg sin 27 degree 18' - lg 62.24\
 & = 1.8741 + macron(1) .6615 - 1.7941\
 & = macron(1) .7415 $ #noindent;因为 $lg sin B < 0$⁠，即 $0 < sin B < 1$, 且 $b > a$, 所以这题有两解，查表得：$ B_1 = 33 degree 28'\,#h(2em) B_2 = 180 degree - B_1 = 146 degree 32' $ $ C_1 & = 180 degree -\(A + B_1\)= 180 degree - 60 degree 46' = 119 degree 14'\
C_2 & = 180 degree -\(A + B_2\)= 180 degree - 173 degree 50' = 6 degree 10' $

$ c_1 = frac(a sin C_1, sin A) = frac(62.24 sin 119 degree 14', sin 27 degree 18') $

$ lg c_1 & = lg 62.24 + lg sin 119 degree 14' - lg sin 27 degree 18'\
 & = 1.7941 + macron(1) .9408 - macron(1) .6615\
 & = 2.0734 $ #noindent;$therefore quad c_1 = 118.4$

$ c_2 = frac(a sin C_2, sin A) = frac(62.24 sin 6 degree 10', sin 27 degree 18') $

$ lg c_2 & = lg 62.24 + lg sin 6 degree 10' - lg sin 27 degree 18'\
 & = 1.7941 + macron(1) .0311 - macron(1) .6615\
 & = 1.1637 $ #noindent;$therefore quad c_2 = 14.57$⁠．

]
指数中含有未知数的方程叫做#strong[指数方程]．一般地，借助于在指数方程两边取对数，可以求得它的解．

#example[
若某城市现有人口10万，按照每年1.1%的比率增长，在 $t$ 年后有人口多少？约经过多少年，这个城市的人口数就将比现在增加一倍？

]
#solution[
设 $y$ 代表 $t$ 年后的人口数，于是 $ t = 0\, & quad y_0 = 10\
t = 1\, & quad y_1 = 10 + 10 times 1.1 % = 10\(1 + 1.1 %\)\
t = 2\, & quad y_2 = y_1 + y_1 times 1.1 % = y_1\(1 + 1.1 %\)= 10\(1 + 1.1 %\)^2\
t = 3\, & quad y_3 = y_2 + y_2 times 1.1 % = y_2\(1 + 1.1 %\)= 10\(1 + 1.1 %\)^3\
dots.h.c & #h(2em) dots.h.c dots.h.c dots.h.c\
t = t\, & quad y_t = 10\(1 + 1.1 %\)^t $

设 $t$ 年后的人口数比现在增加一倍，依题意，$t$ 满足下面的指数方程：$ 10 times\(1.011\)^t = 20 $ #noindent;即：$1.011^t = 2$⁠．

在上式两边取对数得：$t lg 1.011 = lg 2$ $ t = frac(lg 2, lg 1.011) approx 0.3010 / 0.0047 approx 64 $ #noindent;答：约经过64年人口增加一倍．

]
#heading(level: 2, numbering: none, supplement: [toc-sub])[习题1.4]

+ #block(sticky: true)[利用对数进行计算：]

  #cols(2)[
  + $frac(154.8 times 5.436, 12.72)$

  + $frac(54.83 times 1.367, 2.832)$

  + $frac(103.8 times 20.97, 5.174 times 13.62)$

  + $frac(9.738 times 21.09, 48.72 times 0.8478)$

  + $frac(92.17^2 times 5.14^3, 2.184^4 times 0.5386^2)$

  + $frac(1.894^4 times 23.40^3, 44.15^2 times 0.9647)$

  + $frac(8.150^2 times root(3, 14.36), 24.38 times sqrt(8.734))$

  + $frac(12.48^3 times root(4, 5.760), 1.842 times root(3, 673.8))$

  + $\(- 5.32\)^3 + root(4, 0.0294)$

  + $frac(root(3, - 0.536), 3.89^2 times 0.924^2)$

  ]

+ 三角形的三条边的长分别是 $a approx 8.975$⁠cm，$b approx 7.863$⁠cm, $c approx 6.456$⁠cm, 求它的面积．

+ #block(sticky: true)[计算：]

  #cols(2)[
  + $frac(sin 47 degree 13', tan 22 degree 27')$

  + $frac(sin 34 degree 17' times tan 82 degree 6', cos 12 degree 37')$

  ]

+ 已知 $triangle.stroked.t A B C$ 中，$a approx 30$⁠m, $B = 22.5 degree$, $C = 112.5 degree$, 求 $triangle.stroked.t A B C$ 的面积．

+ 在 $triangle.stroked.t A B C$ 中，$a = 23.64$⁠dm, $A = 97 degree 15'$, $C = 15 degree 31'$, 求 $b\,c$⁠．

+ 平行四边形的对角线 $d approx 15.67$⁠dm, 它和两个邻边的夹角 $alpha = 47 degree 15'$, $beta = 26 degree 7'$, 求平行四边形的边长和各角的大小．

+ 已知 $triangle.stroked.t A B C$ 中，$a = 324.1$⁠m, $b = 417.2$⁠m, $C = 113 degree 14'$, 求 $c$ 和它的面积．

+ 已知 $triangle.stroked.t A B C$ 中，$b = 63$, $c = 36$, $C = 29 degree 23'$, 求 $B$⁠．

+ 某工厂在五年内总产值每年平均增长19.2%, 求第五年的总产值对第一年增长的百分数．

+ 如果劳动生产率平均每年比上一年提高10.4%, 那么大约要经过几年可以提高到原来的2倍．

+ #block(sticky: true)[解下面的方程：]

  #cols(2)[
  + $4^x = 2^(tfrac(x + 1, x))$

  + $3^(x + 3) - 3^(x - 1) = 80$

  + $5^(2 x) - 23 dot.op 5^x - 50 = 0$

  + $8^(5 - 3 x) = 12^(4 - 2 x)$

  + $5^(1 - x) = 6^(x - 3)$

  + $display(cases(2^x dot.op 5^y = 1, 5^(x + 1) dot.op 2^y = 2))$

  ]

+ 海中有一小岛 $B$, 它的周围3海里内都有暗礁，今有一艘海轮从西向东航行，若它在 $A$ 点测得 $angle B A D = 24 degree$, 再行5.2海里到 $D$, 测得 $angle B D C = 67 degree$, 问海轮航向不变直向东行有无触礁危险．

+ 为在河的两岸 $A\,B$ 间架一桥，需要精确测算 $A$⁠、$B$ 两点间的距离，测量人员在岸边 $A$ 点附近另取一点 $C$, 并量出 $A C = 30.5$ 米，分别测出 $angle A = 75 degree 12'$, $angle C = 58 degree 51'$, 求 $A B$ 的长．

+ 一人观测 $A\,B$ 两物体，发现它们分别位于正北和北 $36 degree$ 西的方向，若此人向西北方向前进1.2公里，看到 $A\,B$ 二物分别位于东北和正东方向，求 $A\,B$ 二物距离．

+ 如图，货轮在海上以35海里/时的速度沿着方位角（从指北方向顺时针转到目标方向线的水平角）为 $148 degree$ 的方向航行，为了确定船位，在 $B$ 点观测灯塔 $A$ 的方位角是 $126 degree$, 航行半小时后到达 $C$ 点，观测灯塔 $A$ 的方位角是 $78 degree$⁠．求货轮到达 $C$ 点时与灯塔 $A$ 的距离（精确到1海里）．

  #align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("1-02");], caption: [第13题]), figure([#fig("1-03");], caption: [第15题]))));

+ 某气象站每天定时施放气球进行高空观测，为了知道气球离地面的高度，两观测员在 $A\,B$ 两点同时、同向测得气球仰角 $alpha = 45 degree$, $beta = 34 degree 36'$, 且知道 $A\,B$ 两点相距118米，求气球离地面的高度，已知测量仪器的高度为1米（精确到1米）．

+ 在山顶铁塔上 $B$ 处测得地面上一点的俯角 $alpha = 54 degree 40'$⁠，在塔底 $C$ 处测得点 $A$ 的俯角 $beta = 50 degree 1'$⁠，已知铁塔 $B C$ 部分高27.3米，求山高 $C D$（精确到1米）．

  #figure([#fig("1-04");

    ],
    caption: [
      第16题
    ]
  )

#heading(level: 2, numbering: none, outlined: true)[复习题一]

+ 计算：

  + $3^0 + 3^(- 1) - (1 7 / 9)^0.5$

  + $[1 - \( 0.5 \)^(- 2)] div (- 27 / 8)^(tfrac(1, 3))$

  + $(2 3 / 5)^0 + 4^(- 2) times (2 1 / 4)^(tfrac(1, 2)) -\(0.01\)^0.5$

  + $(2 10 / 27)^(- tfrac(2, 3)) - [\( 0.01 \)^(sin tfrac(pi, 6)) + (6 1 / 4)^(- 0.5)]$

+ 计算：

  + $3^(log_3 9)$

  + $3^(1 - log_3 7)$

  + $5^(2 log_5 3) - 15 log_5 1 + log_3 1 / 9$

  + $4 lg 2 + 3 lg 5 - 1 / 5 lg 5$

  + $\(lg 5\)^2 + lg 2 dot.op lg 50$

  + $lg 5 dot.op lg 20 +\(lg 2\)^2$

  + $lg 12.5 - lg 5 / 8 + lg sin 30 degree$

  + $log_2 cos pi / 4 - log_2 sin pi / 6$

  + $log_3 1 / 27 + log_(tfrac(1, 2)) 8 + log_2 8 + log_4 64$

  + $frac(5 lg 6 - lg 3, 1 + 1 / 2 lg 0.36 + 1 / 3 lg 8)$

  + $(log_9 5) dot.op (log_25 27)$

  + $2^(tfrac(1, 5 log_5 4))$

+ #block(sticky: true)[化简：]

  #cols(2)[
  + $frac((a^(tfrac(3, 5)) b^(- tfrac(6, 5)))^(- tfrac(1, 2)) root(5, a^4), root(5, b^3))$

  + $(frac(8 x^(- 3), sqrt(y^3 z^(- 6))))^(- tfrac(1, 3))$

  + $root(3, frac(8 a^3 b^6, 27 c^3 d^9))$

  + $8 x^(- tfrac(1, 3)) sqrt(y^(- tfrac(1, 3)) x root(4, y^(tfrac(4, 3))))$

  + $(2 x^(tfrac(1, 2)) + 3 y^(- tfrac(1, 4))) (2 x^(tfrac(1, 2)) - 3 y^(- tfrac(1, 4)))$

  + $(m^(tfrac(3, 2)) + n^(tfrac(3, 2))) div (m^(tfrac(1, 2)) + n^(tfrac(1, 2)))$

  + $frac(a - b, a^(tfrac(1, 3)) - b^(tfrac(1, 3))) - frac(a + b, a^(tfrac(1, 3)) + b^(tfrac(1, 3)))$

  ]
  #block[
  #set enum(numbering: enum-at(2, none, start: 8))
  + $\(1 - x^2\)^(- tfrac(1, 2)) -\[\(1 + x\)\(1 - x\)\]^(tfrac(1, 2)) - x^2\[\(1 + x\)\(1 - x\)\]^(- tfrac(1, 2))$
  ]

+ #block(sticky: true)[利用对数进行计算：]

  #cols(2)[
  + $frac(8.15^2 times root(3, 14.36), 24.38 times sqrt(8.734))$

  + $root(5, frac(2.591^4 times root(3, 0.0836), 1.147^2))$

  + $\(- 5.32\)^3 + root(4, 0.0294)$

  + $root(3, 79.836 + sqrt(156.374))$

  ]

+ #lead-list(none, 2)[
  + 已知 $log_12 27 = a$, 求证 $log_6 16 = frac(4\(3 - a\), 3 + a)$.

  + 已知 $a^2 + b^2 = 6 a b thick\(a > 0\,b > 0\)$, 求证 $lg frac(a - b, 2) = 1 / 2\(lg a + lg b\)$.
  ]

+ #block(sticky: true)[解下面方程：]

  #cols(2)[
  + $display(cases(5^x = 2^(- y), 5^(2 + y) = 2^(2 - x)))$

  + $display(cases(2^x = 3^y, 2^(y + 1) = 3^(x - 1)))$

  + $x^(lg x + 2) = 1000$

  + $log_2 log_3 log_5 x = 0$

  + $display(cases(x^5 y^3 = 5, x^2 y^7 = 11))$

  ]

+ 下图表示曲柄机构装置的图样，连接杆 $M K$ 的长 $ell = 125$ cm, 曲柄 $O K$ 的长 $r = 25$⁠cm, 连杆与汽缸的轴 $O M$ 成 $alpha$ 角，曲柄与同一轴成角 $phi.alt$\(例如 $phi.alt = 50 degree$), 求活塞 $M$ 的位移 $x$（这里 $x$ 为活塞由左端位置所走的距离）．

  #figure([#fig("1-05");

    ],
    caption: [
      第7题
    ]
  )

+ 如图，两个建筑物水平距离为32.6米，从 $A$ 点观测 $B$ 点的俯角是 $35 degree 12'$, 观测 $C$ 点的俯角为 $43 degree 24'$, 求此二建筑物的高．

  #figure([#fig("1-06");

    ],
    caption: [
      第8题
    ]
  )

+ 一只渔船在航行中不幸遇险，发出警报，在遇险南西10海里处有一只货轮，收到警报后立即侦察，发现这只渔船的航向是东 $15 degree$ 南，正在用每小时9海里的速度向某小岛靠近，如果要在40分钟内把这只渔船营救出来，求货轮航行方向和速度（精确到分）．

+ 在塔的正西处 $A$ 点测得塔顶的仰角是 $45 degree$, 在它的东南处 $B$ 点测得仰角是 $60 degree$, $A B$ 相距为266尺．求塔高．
