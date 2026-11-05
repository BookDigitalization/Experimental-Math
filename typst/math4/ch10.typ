// 由 typst/tools/tex2typ.py 从 math4/10.tex 转换而来，已人工校对的部分以本文件为准。
#import "../common/template.typ": *
#import "figs.typ": fig

= 指数函数与对数函数
== 有理指数函数
在本教材第三册中，已经把指数幂的定义范围从正整指数逐步推广到“负整数”，“正、负分数”，在逐步推广过程中，我们始终遵守的指导原则是保有指数法则：$ a^m dot.op a^n = a^(m + n)\,#h(2em)\(a^m\)^n = a^(m dot.op n) $ #noindent;指数在有理数系 $bb(Q)$ 内，我们有下面的指数幂的定义：$ a^n = underbrace(a dot.op a dot.op a dots.h.c a, n upright("个") a)\, & #h(2em)\(n in bb(N)\)\
a^0 = 1\, & #h(2em)\(a eq.not 0\)\
a^(- n) = 1 / a^n\, & #h(2em)\(a eq.not 0\)\
a^(tfrac(m, n)) = root(n, a^m) = (root(n, a))^m\, & #h(2em)\(a gt.eq 0\,thick m\,n in bb(N)\)\
a^(- tfrac(m, n)) = 1 / a^(tfrac(m, n))\, & #h(2em)\(a > 0\) $ #noindent;采用上面定义后，我们在第三册中也证明了正实数 $a$ 和 $b$ 的有理指数幂依然满足指数运算法则：$ a^alpha dot.op a^beta = a^(alpha + beta)\,#h(2em)\(a^alpha\)^beta = a^(alpha beta)\,#h(2em)\(a dot.op b\)^alpha = a^alpha dot.op b^alpha $ #noindent;这里 $alpha\,beta in bb(Q)$⁠．

这样一来，函数 $a^x thick\(a > 0\)$ 对于任意有理数 $x$ 都有定义了．我们称它为有理指数函数，这个函数具有上面所说的三个性质．下面将进一步研讨这个函数的其他重要性质：

#blk[性质1][
+ 若 $a > 1$, 当有理数 $x > 0$ 时，则 $a^x > 1$, 当有理数 $x < 0$ 时，则 $a^x < 1$⁠．

+ 若当 $0 < a < 1$, 有理数 $x > 0$ 时，则 $a^x < 1$, 当有理数 $x < 0$ 时，则 $a^x > 1$⁠．

]
#proof[
+ 若 $a > 1$,

  + 设 $x = m / n > 0\,thick\(m\,n in bb(N)\)$, 则 $a^x = a^(tfrac(m, n)) = root(n, a^m)$, 因为 $a > 1$, 所以 $a^m > 1$（幂函数 $f\(x\)= x^m$ 在 $\[0\,+ oo\)$ 上是严格递增的），又 $root(n, a^m) > 1$（幂函数 $f\(x\)= x^(tfrac(1, n))$ 在 $\[0\,+ oo\)$ 上是严格递增的），即 $a^x > 1$.

  + 设 $x < 0$, $x = - x_1\,thick\(x_1 > 0\)$⁠，则 $0 < a^x = a^(- x_1) = 1 / a^(x_1) < 1$⁠，（$because thick a^(x_1) > 1$⁠）．

+ 若 $0 < a < 1$,

  + 设 $a = 1 / a_1\,thick a_1 > 1$, 则当 $x > 0$, $a^x = (1 / a_1)^x = 1 / a_1^x < 1$, ($because thick a_1^x > 1$)．

  + 设 $x < 0$, $x = - x_1\,thick\(x_1 > 0\)$ 则 $a^x = a^(- x_1) = 1 / a^(x_1) > 1$, ($because thick a^(x_1) < 1$)．

]
性质1的几何意义表明：当 $a > 1$ 时，有理指数函数 $y = a^x$ 的图象上的点在有单斜线的区域I和II的部分；当 $0 < a < 1$ 时，$y = a^x$ 的图象上的点在有双斜线的区域III和IV的部分（图10.1）．

#figure([#fig("10-01");

  ],
  caption: [
  ]
)

#blk[性质2][
+ 若 $a > 1$, $x_1 < x_2$⁠，则 $a^(x_1) < a^(x_2)$, 即底数大于1的有理指数函数 $a^x$ 是递增的；

+ 若 $0 < a < 1$, $x_1 < x_2$⁠，则 $a^(x_1) > a^(x_2)$⁠，即底数小于1的正数的有理指数函数 $a^x$ 是递减的．

]
#proof[
若 $a > 1$ 和 $x_1 < x_2$, 那么 $ a^(x_2) - a^(x_1) = a^(x_1) (a^(x_2) / a^(x_1) - 1) = a^(x_1) (a^(x_2 - x_1) - 1) $

因为 $x_2 - x_1 > 0$, $a > 1$, 所以 $a^(x_2 - x_1) > 1$, 又 $a^(x_1) > 0$. 因此，$a^(x_2) - a^(x_1) > 0$, 即 $f\(x\)= a^x\,thick\(a > 1\)$ 是递增的．

若 $0 < a < 1$ 和 $x_1 < x_2$, 那么 $ a^(x_2) - a^(x_1) = a^(x_1) (a^(x_2 - x_1) - 1) $ #noindent;因为 $x_2 - x_1 > 0$, $0 < a < 1$, 所以 $a^(x_2 - x_1) < 1$, 又 $a^(x_1) > 0$, 因此 $a^(x_2) - a^(x_1) < 0$, 即 $f\(x\)= a^x\,thick\(0 < a < 1\)$ 是递减的．

]
我们现在的任务是要把有理指数函数开拓为一个定义在实数集上的连续函数．能否做到这一点的关键是如何对全体无理点补充定义，使得指数函数在整个实数轴 $bb(R)$ 上处处连续．为此，我们先说明有理指数函数的一个极限性质．

#blk[性质3][
设 $a > 0$⁠，则当 $n arrow.r + oo$ 时，数列 $lr(\{ a^(tfrac(1, n)) \})$ 的极限是1，即 $ lim_(n arrow.r + oo) a^(tfrac(1, n)) = 1 $

]
#proof[
+ 当 $a = 1$ 时，结论自然成立．

+ 当 $a > 1$ 时，因为 $1 / n > 0$, 所以 $a^(tfrac(1, n)) > 1$ (性质1), 设 $a^(tfrac(1, n)) = 1 + h$, 其中 $h > 0$, 两边 $n$ 次方，得到 $ a =\(1 + h\)^n $

  由贝努利不等式（第六章例6.4）得 $ a =\(1 + h\)^n > 1 + n h $ #noindent;所以，$0 < h < frac(a - 1, n)\,#h(2em) 1 < 1 + h < 1 + frac(a - 1, n)$⁠，即：$ 1 < a^(tfrac(1, n)) < 1 + frac(a - 1, n) $ #noindent;再令 $n arrow.r + oo$, 由上式就得到 $ 1 lt.eq lim_(n arrow.r + oo) a^(tfrac(1, n)) lt.eq 1 $ #noindent;因此$ lim_(n arrow.r + oo) a^(tfrac(1, n)) = 1 $

+ 当 $0 < a < 1$ 时，令 $a = 1 / b$, 则 $b > 1$, 由上面的证明得到$ lim_(n arrow.r + oo) b^(tfrac(1, n)) = 1 $ #noindent;于是 $ lim_(n arrow.r + oo) a^(tfrac(1, n)) & = lim_(n arrow.r + oo) (1 / b)^(tfrac(1, n)) = lim_(n arrow.r + oo) 1 / b^(tfrac(1, n))\
   & = frac(1, limits(lim)_(n arrow.r + oo) b^(tfrac(1, n))) = 1 / 1 = 1 $

]
性质3可以进一步推广到下面的推论：

#blk[推论][
若 $a > 0$ 且 $a eq.not 1$, 有理数数列 $\{ h_i \}\,thick i = 1\,2\,3\,dots.h$, 以0为极限，即 $limits(lim)_(i arrow.r oo) h_i = 0$, 那么 $ lim_(i arrow.r oo) a^(h_i) = 1 $

]
#proof[
先设 $a > 1$, 因为 $limits(lim)_(i arrow.r oo) h_i = 0$, 必定存在这样的自然数 $N$, 使得当 $i gt.eq N$ 时，$\|h_i\|< 1$, 从而 $frac(1, \|h_i\|) > 1$⁠．用 $m_i$ 表示 $[frac(1, \|h_i\|)]$, 即不大于 $frac(1, \|h_i\|)$ 的最大整数，于是#numbered-eq($ m_i = [frac(1, \|h_i\|)] lt.eq frac(1, \|h_i\|) < m_i + 1 $);#noindent;所以，当 $i gt.eq N$ 时，有 $ frac(1, m_i + 1) <\|h_i\|lt.eq 1 / m_i $ #noindent;由 $h_i arrow.r 0$ 知，$frac(1, \|h_i\|) arrow.r oo$. 从而由 $m_i + 1 > frac(1, \|h_i\|)$ 知，$m_i arrow.r + oo$⁠．根据有理指数幂的单调性，得 $ 1 < a^(\|h_i\|) < a^(tfrac(1, m_i))\,#h(2em)\(a > 1\) $

仿照性质3的证明，令 $b_i = a^(tfrac(1, m_i)) - 1 > 0$, 于是，$ a^(tfrac(1, m_i)) & =\(1 + b_i\)\
a & =\(1 + b_i\)^(m_i) > 1 + m_i b_i\
 & 0 < b_i < frac(a - 1, m_i) $ #noindent;当 $i arrow.r oo$ 时，$m_i arrow.r oo$,

$therefore quad b_i arrow.r 0$, 即 $a^(tfrac(1, m_i)) arrow.r 1$⁠，从而当 $i arrow.r oo$ 时，$\|h_i\|arrow.r 0$, $a^(\|h_i\|) arrow.r 1$, 即 $a^(h_i) arrow.r 1$⁠．

若 $0 < a < 1$, 令 $b = 1 / a > 1$, 于是 $ lim_(i arrow.r oo) a^(h_i) = lim_(i arrow.r oo) (1 / b)^(h_i) = frac(1, limits(lim)_(i arrow.r oo) b^(h_i)) = 1 / 1 = 1 $

]
应用这个推论，我们可以说明当有理数 $x$ 的变化够小时，有理指数函数 $f\(x\)= a^x$ 的变化可以任意小．

#blk[性质4][
当指数x的变化够小时，有理指数函数 $f\(x\)= a^x$ 的变化可以任意小．

]
#proof[
设指数 $x$ 从有理数 $x_1$ 变化到有理数 $x_2 = x_1 + h_i$⁠，（$h_i$ 是有理数），且当 $\(x_2 - x_1\)arrow.r 0$ 时，数列 $\{ h_i \}$ 以0为极限，于是 $ lim_(x_2 arrow.r x_1) (a^(x_2) - a^(x_1)) & = lim_(i arrow.r oo) (a^(x_1 + h_i) - a^(x_1))\
 & = a^(x_1) dot.op lim_(i arrow.r oo) (a^(h_i) - 1) = 0 $ #noindent;这就是说，只要 $\|h_i\|$ 够小，那么 $\|a^(x_2) - a^(x_1)\|$ 就小于任意给定的正数 $epsilon$.

]
综合有理指数函数的性质，我们可以想象出 $y = a^x thick\(a > 1\)$ 的图象如图10.2所示，但是我们不能用一条连续不断的曲线把它画出来，因为指数 $x$ 取无理数时，$a^x$ 还没有意义，因而在有理指数函数的图象上，处处有空隙．下一节将由有理指数函数的单调性和性质4, 适当给无理指数幂补充定义使得指数函数在 $bb(R)$ 上处处连续．

#figure([#fig("10-02");

  ],
  caption: [
  ]
)

#heading(level: 2, numbering: none, supplement: [toc-sub])[习题10.1]

+ 计算下列各式的值：

  + $25^(3\/2) dot.op 8^(4\/3)$

  + $\(0.09\)^(1\/2) + 64^(2\/3) + 0.125^(2\/3) - 1 / 16^(- 3\/2)$

  + $64^1.5 dot.op\(32\)^0.4 div (9 / 25)^(- 3\/2)$

  + $(81 / 16)^(- 0.25) (5^2 - 0.1^2 dot.op (1 / 4)^(- 3))^2$

  + $[3 / 9 - (2 / 3)^(- 1)]^(- 1)$

  + $\(sqrt(2)\)^1.5 + (11 + root(5, 5) / 5^(- 0.8))^(- 1\/4)$

  + $[(3 / 4)^0]^(- 0.5) - 7.5\(sqrt(4)\)^2 -\(- 2\)^(- 4) + 81^0.25$

  + $[1 / 4 (0.027^(2\/3) + 15 times 0.0016^(3\/4) + 1)]^(- 1\/2)$

  + $6 [sqrt(3) (sqrt(3) + 2 sqrt(2) + 2 / 3^(1\/2))] times (3^(1\/2) + 2^(1\/2))^(- 2) times (3^(- 1) + 2^(- 1))$

  + 若 $a =\(2 + sqrt(3)\)^(- 1)\,quad b =\(2 - sqrt(3)\)^(- 1)$, 计算 $\(a + 1\)^(- 1) +\(b + 1\)^(- 1)$

+ #block(sticky: true)[化简下列各式:]

  #cols(2)[
  + $b^(1\/2) b^(1\/3)$

  + $b^(1\/2) b^(- 1\/3)$

  + $b^(- 2\/3) b^(3\/5)\;$

  + $b^(- 2\/3) b^(3\/5)\;$

  + $sqrt(a) dot.op root(3, a) dot.op root(5, a)$

  + $[1 - (a^(- 1) b^(- 1))^(- 1)]^(- 2)$

  ]
  #block[
  #set enum(numbering: enum-at(2, none, start: 7))
  + $[a^(- 1\/2) b^(- 1\/2) + a^(- 1\/6) (b^(- 5\/6) - a^(- 1\/3) b^(- 1\/2))]^(- 3\/2)$

  + $frac((a^(- 1) + b^(- 1))\(a + b\)^(- 1), root(6, a^4 root(5, a^(- 2))))$

  + $frac(a^2 + a^(- 2) - 2, a^2 - a^(- 2))$

  + $(a^(3\/4) + b^(3\/4)) (a^(3\/4) - b^(3\/4))\/(a^(1\/2) - b^(1\/2))$

  + $(e^(3\/2) + 2 + e^(- 3\/2)) (e^(3\/2) - 2 + e^(- 3\/2))$

  + $(a^(1\/3) + a^(- 1\/3)) (a^(2\/3) - 1 + a^(- 2\/3))$

  + $frac(m - n, m^(1\/2) - n^(1\/2)) + frac(m^(3\/2) + n^(3\/2), m^(1\/2) + n^(1\/2))$

  + $frac(x^(2 p\(q + 1\)) - y^(2 q\(p - 1\)), x^(p\(q + 1\)) - y^(q\(p - 1\)))$

  + $(a^(4\/3) - 2 + a^(- 4\/3)) (a^(2\/3) - a^(- 2\/3))$

  + $frac(m - n, m^(1\/2) - n^(1\/2)) + frac(m^(3\/2) + n^(3\/2), m^(1\/2) + n^(1\/2))$

  + $[frac(4 a - 9 a^(- 1), 2 a^(1\/2) - 3 a^(- 1\/2)) + frac(a - 4 + 3 a^(- 1), a^(1\/2) - a^(- 1\/2))]^2$
  ]

+ #block(sticky: true)[解下列各方程：]

  #cols(2)[
  + $sqrt(2 x - 3) = 4 - x$

  + $sqrt(2 x + 8) + sqrt(x + 5) = 7$

  + $x^(- 1\/4) + x^(- 1\/2) - 6 = 0$

  + $x^(1\/2) + x^(- 1\/2) - 10 / 3 = 0$

  ]
  #block[
  #set enum(numbering: enum-at(2, none, start: 5))
  + $root(n, \(x + 1\)^2) + root(n, \(x - 1\)^2) = 4 root(n, x^2 - 1)$
  ]

+ 设 $h_i = frac(100, 2 i + 1)\,quad m_i = [1 / h_i] = [frac(2 i + 1, 100)]$

  + 求证数列 $\{ h_i \} = lr(\{ frac(100, 2 i + 1) \})$ 递减，并求使 $h_i = frac(100, 2 i + 1) < 1$ 的 $i$ 的范围；

  + 当 $i = 10\,49\,50\,100\,1000$ 时，求 $m_i$ 的值；

  + 求证当 $i gt.eq 50$ 时，不等式 $1 < 100^(tfrac(100, 2 i + 1)) < 100^(tfrac(1, m_i))$ 成立；

  + 求证：$limits(lim)_(i arrow.r oo) (100^(tfrac(1, m_i)) - 1) = 0\,quad limits(lim)_(i arrow.r oo) 100^(h_i) = 1$⁠．

== 无理指数幂的定义
要把指数幂的定义由有理数推广到实数，自然又得用逼近法．

设 $beta$ 是一个无理数，我们可以用两个有理数列 $\{ r_n \}$, $\{ s_n \}$ 去左、右夹逼，即 $r_n arrow.r beta arrow.l s_n$, 从而 $limits(lim)_(n arrow.r oo) r_n = limits(lim)_(n arrow.r oo) s_n = beta$. 现在的问题是数列 $\{ a^(r_n) \}$⁠，$\{ a^(s_n) \}$⁠，（这里 $a > 0$⁠）的极限是否存在？如果存在的话，我们就可以定义 $ a^beta = limits(lim)_(n arrow.r oo) a^(r_n) = limits(lim)_(n arrow.r oo) a^(s_n) $

从而就可以把有理指数函数 $a^x$ 开拓为在 $beta$ 点连续的函数：$ a^x thick\(a > 0\,thick x in bb(Q) union \{ beta \}\)= display(cases(a^x thick\(x in bb(Q)\), a^beta = limits(lim)_(n arrow.r oo) a^(r_n) = limits(lim)_(n arrow.r oo) a^(s_n))) $

#blk[引理][
设 $r_n arrow.r beta arrow.l s_n$, 则

+ 当 $a > 1$ 时，$a^(r_1) lt.eq a^(r_2) lt.eq dots.h.c lt.eq a^(r_n) lt.eq dots.h.c lt.eq a^(s_n) lt.eq dots.h.c lt.eq a^(s_2) lt.eq a^(s_1)$⁠，且 $(a^(r_n) - a^(s_n)) arrow.r 0$

  当 $0 < a < 1$ 时，$a^(r_1) gt.eq a^(r_2) gt.eq dots.h.c gt.eq a^(r_n) gt.eq dots.h.c gt.eq a^(s_n) gt.eq dots.h.c gt.eq a^(s_2) gt.eq a^(s_1)$⁠，且 $(a^(r_n) - a^(s_n)) arrow.r 0$

+ $lim a^(r_n) = lim a^(s_n) = A$ (即极限存在)

]
#proof[
$a > 1$ 和 $0 < a < 1$ 这两种情形是完全相似的，只是不等式方向反过来罢了，所以下面只讨论 $a > 1$ 的情形，（$a = 1$ 时它的任何方幂都是1, 所以 $1^beta = 1$⁠）．我们只需证明下述两点：

+ $a > 1$, $s > r$ 时，则 $a^s > a^r$⁠，（性质2）．

+ $because quad$ 当 $n arrow.r oo$ 时，$s_n - r_n = h_n arrow.r 0$,

  $therefore quad$ 由性质4得 $ a^(s_n) - a^(r_n) arrow.r 0 $ #noindent;由实数完备性，存在一个唯一实数 $ A = lim a^(s_n) = lim a^(r_n) $

]
#blk[定义][
设 $beta$ 是一任意无理数，$r_n arrow.r beta arrow.l s_n$ 是 $beta$ 的左、右夹逼数列，并且 $a > 0$, 则定义 $ a^beta = lim a^(r_n) = lim a^(s_n) $

]
我们要说明这个定义的合理性，即上述定义和 $beta$ 的夹逼有理数列的选取无关．

设 $r'_n arrow.r beta arrow.l s'_n$ 是另外一对夹逼数列，则 $ r'_n arrow.r beta arrow.l s_n\,#h(2em) r_n arrow.r beta arrow.l s'_n $

由上述引理就有 $ lim a^(r'_n) = lim a^(s_n) = lim a^(r_n) = lim a^(s'_n) $

在实数轴 $bb(R)$ 上，对每一个无理点，都补充这样的定义，于是我们就把有理指数函数开拓为一个在实数轴上处处有定义的指数函数 $a^x\,thick\(a > 0\,thick x in bb(R)\)$⁠．

下面我们将证明这样定义的无理指数幂仍满足指数法则．

#blk[定理][
指数法则 $a^beta dot.op a^gamma = a^(beta + gamma)$, $(a^beta)^gamma = a^(beta dot.op gamma)$, $\(a b\)^beta = a^beta dot.op b^beta$ 对于任何实数 $beta$, $gamma$ 都成立．

]
#proof[
当 $beta$, $gamma$ 是有理数时，上述等式已在本教材第三册第一章给出证明，所以我们只要说明 $beta$, $gamma$ 是无理数的情形．

设 $r_n arrow.r beta arrow.l s_n$, $c_n arrow.r gamma arrow.l d_n$ 分别是 $beta$, $gamma$ 的左、右夹逼数列，于是 $ \(r_n + c_n\)arrow.r beta + gamma arrow.l\(s_n + d_n\) $ $ a^(beta + gamma) & = lim a^(r_n + c_n) = lim a^(r_n) dot.op a^(c_n)\
 & = lim a^(r_n) dot.op lim a^(c_n) = a^beta a^gamma $

现在让我们来证明 $\(a^beta\)^gamma = a^(beta dot.op gamma)$（为了讨论的方便，我们只讨论 $a > 1\,thick beta\,gamma > 0$ 的情形），

设 $r_n arrow.r beta arrow.l s_n\,quad c_n arrow.r gamma arrow.l d_n$⁠，$r_n\,s_n\,c_n\,d_n > 0$, 则有 $ r_n dot.op c_n arrow.r beta gamma arrow.l s_n dot.op d_n $ #noindent;根据正分指数的幂函数与有理指数函数的单调性有 $ \(a^(r_n)\)^(c_n) <\(a^beta\)^(c_n) <\(a^beta\)^gamma <\(a^beta\)^(d_n) <\(a^(s_n)\)^(d_n) $ #noindent;所以由有理指数法则，得到 $ a^(r_n dot.op c_n) =\(a^(r_n)\)^(c_n) <\(a^beta\)^gamma <\(a^(s_n)\)^(d_n) = a^(s_n dot.op d_n)\
(a^(s_n dot.op d_n) - a^(r_n dot.op c_n)) arrow.r 0 $ #noindent;$therefore quad$ 由引理知，存在唯一的极限 $ \(a^beta\)^gamma = lim a^(r_n dot.op c_n) = lim a^(s_n dot.op d_n) = a^(beta dot.op gamma) $

最后证明：$\(a b\)^beta = a^beta dot.op b^beta$, 只讨论 $a > 1$, $b > 1$ 的情形．

$because quad a > 1\,b > 1$

$therefore quad a b > 1$, 于是 $ a^(r_n) b^(r_n) =\(a b\)^(r_n) <\(a b\)^beta <\(a b\)^(s_n) = a^(s_n) b^(s_n)\
\(a b\)^(s_n) -\(a b\)^(r_n) arrow.r 0 $ #noindent;因此，$\(a b\)^beta = lim a^(r_n) b^(r_n) = lim a^(r_n) dot.op lim b^(r_n) = a^beta dot.op b^beta$

]
#example[
+ $10^(sqrt(2)) dot.op 10^(sqrt(3)) = 10^(sqrt(2) + sqrt(3))$

+ $[(root(3, 2))^(sqrt(8))]^(tfrac(sqrt(2), 2)) = 2^(tfrac(1, 3) times 2 sqrt(2) times tfrac(sqrt(2), 2)) = 2^(tfrac(2, 3)) = root(3, 4)$

+ $(5^(- sqrt(2)) a^(sqrt(8)) b^(tfrac(sqrt(2), 2)))^(tfrac(sqrt(2), 2)) = 5^(- 1) a^2 b^(tfrac(1, 2)) = frac(a^2 sqrt(b), 5)$

]
== 实指数函数
总结上节推广的结果，就得到一个对任意实数 $x$ 都有定义的#strong[实指数函数]：$ f : bb(R) mapsto bb(R)^(+)\,#h(2em) upright("这里") f\(x\)= a^x\,thick\(a > 0\,thick upright("且") a eq.not 1\) $

这个函数就叫做#strong[以 ]$a$#strong[ 为底的指数函数]．上节还说明了指数函数是一个满足下面两个性质的连续函数：

+ $f\(x_1 + x_2\)= a^(x_1 + x_2) = a^(x_1) dot.op a^(x_2) = f\(x_1\)dot.op f\(x_2\)$

+ $f\(k x\)= a^(k x) =\(a^x\)^k =\[f\(x\)\]^k$

现在，我们还须验证实指数幂保有有理指数幂的一切性质，并且实指数函数是连续的．

#blk[性质1][
+ 若 $a > 1$, 当 $x > 0$ 时，则 $a^x > 1$⁠；当 $x < 0$ 时，则 $a^x < 1$.

+ 若 $0 < a < 1$, 当 $x > 0$ 时，则 $a^x < 1$⁠；当 $x < 0$ 时，则 $a^x > 1$.

]
#proof[
如果 $x$ 是有理数，我们在第一节中给过证明，这里不再重述，所以我们只要证明 $x$ 是无理数的情形，设 $x > 0$, 且 $c_n arrow.r x arrow.l d_n$ 是 $x$ 的有理数夹逼数列．在数列 $\{ c_n \}$ 中一定存在某一项 $c_N$ 和它后面的一切项都是正数，不然的话，如果对于所有的 $n$, 有 $c_n lt.eq 0$, 于是 $lim c_n lt.eq 0$ 即 $x lt.eq 0$, 这和已知的 $x > 0$ 矛盾．

令 $c_N > 0$, 则 $a^(c_N) > a^0 = 1$, 而 $a^x > a^(c_N) > 1$, 这就证明了 $a^x > 1$.

设 $x < 0$, $x = - y$, 则 $y > 0$, $a^x = a^(- y) = 1 / a^y$

$because quad a^y > 1\,#h(2em) therefore quad a^x = 1 / a^y < 1$

$0 < a < 1$ 的情形，留给同学证明．

]
#blk[性质2][
+ 若 $a > 1$ 且 $x_2 > x_1$, 则 $a^(x_2) > a^(x_1)$

+ 若 $0 < a < 1$ 且 $x_2 > x_1$, 则 $a^(x_2) < a^(x_1)$

]
#proof[
设 $a > 1$ 且 $x_2 > x_1$, $ a^(x_2) - a^(x_1) = a^(x_1) (a^(x_2 - x_1) - 1) $ #noindent;因为 $x_2 - x_1 > 0$, 于是 $a^(x_2 - x_1) > 1$, 因此 $a^(x_2) - a^(x_1) > 0$.

设 $0 < a < 1$ 且 $x_2 > x_1$, $ a^(x_2) - a^(x_1) = a^(x_1) (a^(x_2 - x_1) - 1) $ #noindent;因为 $x_2 - x_1 > 0$, 则 $a^(x_2 - x_1) < 1$, 因此 $a^(x_2) - a^(x_1) < 0$.

]
#blk[性质3][
$ lim_(x arrow.r 0) a^x = 1 $

]
对这个极限的证明可以仿照第一节中性质3的推论的证法去证．利用性质3, 容易证明实指数函数处处连续．

#blk[性质4][
当 $x$ 无限增大时，$a^x\,thick\(a > 1\)$ 也无限增大，可以写成 $limits(lim)_(x arrow.r + oo) a^x = + oo$（注意这个表达式并不表示此极限存在，而是说 $a^x$ 可以超过任何一个指定的正数），若 $0 < a < 1$, 则 $limits(lim)_(x arrow.r + oo) a^x = 0$

]
#proof[
为确定起见，设 $a > 1$, 令 $a = 1 + h thick\(h > 0\)$, 因为 $ \(1 + h\)^n > 1 + n h\,#h(2em)\(n in bb(N)\) $ #noindent;可得：$a^n > 1 + n\(a - 1\)$⁠．

对于任意给定的一个正数 $M$, 当 $n > frac(M - 1, a - 1)$ 时，则 $ a^n > 1 + n\(a - 1\)> 1 + frac(M - 1, a - 1)\(a - 1\)= M $ #noindent;所以，当 $x > n$ 时，便有 $a^x > a^n > M$⁠．

这就是说，当 $x arrow.r + oo$ 时，$lim a^x = + oo$.

设 $0 < a < 1$, $a = 1 / b$, 则 $b > 1$, $a^x = (1 / b)^x = 1 / b^x$⁠，任给 $epsilon = 1 / M > 0$, 则 $M = 1 / epsilon$, 依前段，当 $x > n > frac(M - 1, b - 1)$ 时，有 $b^x > M$. 于是 $a^x = 1 / b^x < 1 / M = epsilon$. 这就证明了当 $x arrow.r + oo$ 时，$lim a^x = 0\,thick\(0 < a < 1\)$.

]
#blk[性质5][
+ 若 $a > 1$, $limits(lim)_(x arrow.r - oo) a^x = 0$.

+ 若 $0 < a < 1$,$limits(lim)_(x arrow.r - oo) a^x = + oo$.

]
#proof[
为确定起见，设 $a > 1$, 令 $x = - y\,thick\(y > 0\)$, 则当 $x arrow.r - oo$ 时，$y arrow.r + oo$, 所以 $ limits(lim)_(x arrow.r - oo) a^x = limits(lim)_(y arrow.r + oo) a^(- y) = limits(lim)_(y arrow.r + oo) 1 / a^y = frac(1, limits(lim)_(y arrow.r + oo) a^y) = 0 $

$0 < a < 1$ 的情形，证明留给读者．

]
总结上面的讨论，指数函数有下面的主要性质：

#blk[定理][
指数函数 $f :\(- oo\,+ oo\)mapsto\(0\,+ oo\)$, 这里 $f\(x\)= a^x\,thick\(a > 0 thick upright(" 且") thick upright(" ") a eq.not 1\)$, 满足下列三个性质：

+ $f\(x_1 + x_2\)= f\(x_1\)f\(x_2\)$

+ $f\(x\)$ 是严格单调的，$a > 1$ 时，递增；$0 < a < 1$ 时，递减

+ $f\(x\)$ 是连续的

]
指数函数的图象如图10.3所示：

#figure([#fig("10-03");

  ],
  caption: [
  ]
)

#blk[逆定理][
任何一个满足上述性质1和2的函数 $f\(x\)$ 必定是一个指数函数，其底为 $a = f\(1\)$⁠．

]
#proof[
由性质1, 对于任何实数 $x$, 有 $ f\(0\)f\(x\)= f\(0 + x\)= f\(x\) $ #noindent;即得，$f\(0\)= 1$. 当 $f\(x\)$ 递增时，$f\(1\)= a > f\(0\)= 1$, 而当 $f\(x\)$ 递减时，$f\(1\)= a < f\(0\)= 1$.

由性质1：$ f\(m\) & = f class("opening", stretch(\(, size: #1.2em))\(m - 1\)+ 1 class("closing", stretch(\), size: #1.2em)) = f\(m - 1\)dot.op f\(1\)\
 & = f\(m - 2\)dot.op class("opening", stretch(\(, size: #1.2em)) f\(1\)class("closing", stretch(\), size: #1.2em))^2 = f\(m - 3\)dot.op class("opening", stretch(\(, size: #1.2em)) f\(1\)class("closing", stretch(\), size: #1.2em))^3\
dots.h.c & dots.h.c dots.h.c dots.h.c dots.h.c\
 & = class("opening", stretch(\(, size: #1.2em)) f\(1\)class("closing", stretch(\), size: #1.2em))^m = a^m $ #noindent;又因为 $ [f (m / n)]^n & = f overbrace((m / n + m / n + dots.h.c + m / n), n upright("个"))\
 & = f\(m\)= a^m $ #noindent;所以：$f (m / n) = root(n, a^m) = a^(tfrac(m, n))$

因为 $f (m / n) f (- m / n) = f (m / n - m / n) = f\(0\)= 1$

所以 $f (- m / n) = frac(1, f (m / n)) = 1 / a^(tfrac(m, n)) = a^(- tfrac(m, n))$

所以，$f\(r\)= a^r$, 对于正、负分数 $r$ 都成立．

再由单调性，和实指数幂的定义，就可以说明 $f\(x\)= a^x$ 对于任何实数都成立．

设 $x in bb(R)$ 为一任意实数，$r_n arrow.r x arrow.l s_n$ 是 $x$ 的左、右夹逼有理数列，即#numbered-eq($ r_1 lt.eq r_2 lt.eq dots.h.c lt.eq r_n lt.eq dots.h.c lt.eq x lt.eq dots.h.c lt.eq s_n lt.eq dots.h.c lt.eq s_2 lt.eq s_1 $);#noindent;并且 $lim\(s_n - r_n\)= 0$.

由不等式 (10.2) 和 $f\(x\)$ 的递增性（递减性），得到#numbered-eq($ f\(r_1\)lt.eq f\(r_2\)lt.eq dots.h.c lt.eq f\(r_n\)lt.eq dots.h.c lt.eq f\(x\)lt.eq dots.h.c lt.eq f\(s_n\)lt.eq dots.h.c lt.eq f\(s_2\)lt.eq f\(s_1\) $);#noindent; $r_n\,s_n$ 都是有理数．（若 $f\(x\)$ 递减，我们得到不等式 (10.3) 的反向不等式）．

不等式 (10.3) 可改写成#numbered-eq($ a^(r_1) lt.eq a^(r_2) lt.eq dots.h.c lt.eq a^(r_n) lt.eq dots.h.c lt.eq a^x lt.eq dots.h.c lt.eq a^(s_n) lt.eq dots.h.c lt.eq a^(s_2) lt.eq a^(s_1) $);#noindent;而上节实数指数定义中，$a^x$ 是唯一能满足 (10.4) 的实数，所以 $f\(x\)= a^x$⁠．

在上面的讨论中，$x$ 是一个任意的实数，因此，$f\(x\)= a^x$, 对于任何实数 $x$ 恒成立．

]
#example[
设 $a\,b$ 是不等的正实数，试证 $ a^a b^b >\(a b\)^(tfrac(a + b, 2)) > a^b b^a $

]
#proof[
不妨设 $a > b$, 则 $a / b > 1$, $a - b > 0$. 于是，根据实指数幂性质1，可得：$ frac(a^a b^b, \(a b\)^(tfrac(a + b, 2))) = a^(tfrac(a - b, 2)) dot.op b^(tfrac(b - a, 2)) = (a / b)^(tfrac(a - b, 2)) > 1 $

由于 $a > 0\,thick b > 0 arrow.r.double a b > 0$, 因此，$\(a b\)^(tfrac(a + b, 2)) > 0$, 所以，有 $ a^a b^b >\(a b\)^(tfrac(a + b, 2)) $ #noindent;另外，根据同样的道理，有 $ frac(\(a b\)^(tfrac(a + b, 2)), a^b b^a) = a^(tfrac(a - b, 2)) dot.op b^(tfrac(b - a, 2)) = (a / b)^(tfrac(a - b, 2)) > 1 $ #noindent;又 $a^b > 0$, $b^a > 0$. 所以 $\(a b\)^(tfrac(a + b, 2)) > a^b b^a$, 这就证明了 $ a^a b^b >\(a b\)^(tfrac(a + b, 2)) > a^b b^a $

]
#heading(level: 2, numbering: none, supplement: [toc-sub])[习题10.2]

+ #block(sticky: true)[利用实指数幂的性质，指出下列不等式中，$a$ 是大于1, 还是大于0而小于1？]

  #cols(2)[
  + $a^(sqrt(2)) < a^(tfrac(sqrt(2), 2))$

  + $a^(- sqrt(3)) > a^2$

  + $a^(- sqrt(5) - sqrt(7)) > a^(- 5)$

  + $a^(1 + sqrt(6)) < a^(2 + sqrt(2))$

  + $a^(sqrt(7) + sqrt(2)) < a^(sqrt(6) + sqrt(3))$

  ]

+ #block(sticky: true)[作下列各函数的图象：]

  #cols(2)[
  + $y = 3^x$

  + $y = 3^(- x)$

  ]

+ #lead-list(none, 2)[
  + 证明 $f\(x\)= frac(2^x + 2^(- x), 2)$ 是偶函数，并作出它的图象；

  + 当 $x$ 为何值时，$f\(x\)$ 有最小值，并求最小值．
  ]

+ 设 $a\,b\,c$ 是不等的正数，证明：

  + $a^(2 a) b^(2 b) c^(2 c) > a^(b + c) b^(c + a) c^(a + b)$

  + $a^a b^b c^c >\(a b c\)^(tfrac(a + b + c, 3))$

  #noindent;（提示：利用例10.2的结果）

+ 证明：

  + 当 $n$ 是1或不小于5的自然数时，总有 $2^n > n^2$⁠；

  + $limits(lim)_(n arrow.r oo) 2^n / n = oo$⁠．

== 对数函数
由实数幂的定义，我们得知指数函数 $ a^x\,quad\(a > 0\,thick a eq.not 1\)\,#h(2em) x in bb(R) $ #noindent;的值都是正的，现在还要进一步说明指数函数的值域是正实数集，也就是必须证明下面的命题．

#blk[命题][
给定不等于1的正实数 $a$, 对于任意正数 $b$, 一定存在唯一的一个实数 $c$, 满足下列方程 $ a^c = b $

]
#proof[
为确定起见，设 $a > 1$, 依实指数函数的性质5, $limits(lim)_(x arrow.r - oo) a^x = 0$, 可以找出这样一数 $c_1$ 以使 $a^(c_1) < b$, 依 $a^x\,thick\(a > 1\)$ 是增函数且 $limits(lim)_(x arrow.r + oo) a^x = + oo$, 可以找出这样的数 $c_2 > c_1$, 以使 $a^(c_2) > b$, 现在由连续函数中间值定理知道，在 $c_1$ 与 $c_2$ 之间有实数 $c$ 以使 $a^c = b$, 再由单调性知道这个数是唯一的．类似地可以证明 $0 < a < 1$ 的场合，这个证明留给同学补全．

]
现在我们根据第八章第五节反函数定理可以说由指数函数得到一个定义在正实数变域上的反函数，称为对数函数，记作 $f : bb(R)^(+) mapsto bb(R)$, 这里 $f\(x\)= log_a x$, 它是连续的单调函数．正式定义如下：

#blk[定义][
若 $a > 0$ 且 $a eq.not 1$, 那么 $y = log_a x$, 当且仅当 $x = a^y$. 我们称 $y$ 是以 $a$ 为底的对数，函数 $f : bb(R)^(+) mapsto bb(R)$, 这里 $f\(x\)= log_a x$ 称为#strong[对数函数]．

]
这个定义导致下面有用的结果：

+ $a^(log_a x) = x\,#h(2em) log_a a^x = x$

+ $log_a\(x y\)= log_a x + log_a y$

+ $log_a x / y = log_a x - log_a y$

+ $log_a x^r = r log_a x$

+ $log_a b = frac(log_c b, log_c a)$（换底公式）．

#noindent;证明过程请看第三册第一章2.2．

从函数的图象来说：$y = log_a x\,thick\(x in bb(R)^(+)\)$ 的图象能由 $y = a^x\,thick\(x in bb(R)\)$ 的图象经 $y = x$ 的反射而得到，如图10.4．

#figure([#fig("10-04");

  ],
  caption: [
  ]
)

由于 $x$ 轴是指数函数图象的渐近线，故 $y$ 轴是对数函数图象的渐近线．相应于指数函数的极限值：$ lim_(x arrow.r - oo) a^x = 0 & \,#h(2em) a > 1\
lim_(x arrow.r + oo) a^x = 0 & \,#h(2em) 0 < a < 1 $ #noindent;有对数函数的极限值：$ lim_(x arrow.r 0^(+)) log_a x = display(cases(- oo\, & quad a > 1, + oo\, & quad 0 < a < 1)) $

相应于指数函数的特征性质，也就有对数函数的特征性质：

+ $log_a\(x_1 dot.op x_2\)= log_a x_1 + log_a x_2$

+ 单调性．当 $a > 1$ 递增；当 $0 < a < 1$ 递减．

+ 连续性．即在 $\(0\,+ oo\)$ 内处处连续．同样地，对应于第三节中的定理，总结成下面的定理．

#blk[定理][
对数函数 $f\(x\)= log_a x$ 满足下列性质：

+ $f\(x_1 dot.op x_2\)= f\(x_1\)+ f\(x_2\)$

+ 单调性．$a > 1$ 时，递增；$0 < a < 1$ 时，递减．

+ 在 $x > 0$ 半直线上，处处连续．

]
#blk[逆定理][
任何一个满足性质1、2的函数 $f\(x\)$ 一定是一个对数函数，即存在适当的 $a$, 使得 $f\(x\)= log_a x$.

]
#proof[
由性质1，$f\(x_1\)= f\(x_1 dot.op 1\)= f\(x_1\)+ f\(1\)$⁠．因此 $f\(1\)= f\(x_1\)- f\(x_1\)= 0$.

我们先任取一常数 $A > 1$, 则由性质2知 $ f\(A\)eq.not f\(1\)= 0 $ #noindent;再由性质1 $ f\(A^m\)= underbrace(f\(A\)+ f\(A\)+ dots.h.c + f\(A\), m upright("项")) = m f\(A\)\,#h(2em) m in bb(N) $

又 $ m f\(A\) & = f\(A^m\)= f ((\( A \)^(tfrac(m, n)))^n)\
 & = underbrace(f (A^(tfrac(m, n))) + dots.h.c + f (A^(tfrac(m, n))), n upright("项")) = n f (A^(tfrac(m, n))) $ #noindent;$therefore quad f (A^(tfrac(m, n))) = m / n f\(A\)\,#h(2em) m\,n in bb(N)$

又 $because quad f (A^(tfrac(m, n))) + f (A^(- tfrac(m, n))) = f (A^(tfrac(m, n)) dot.op A^(- tfrac(m, n))) = f\(A^0\)= f\(1\)= 0$

$therefore quad f (A^(- tfrac(m, n))) = - f (A^(tfrac(m, n))) = - m / n f\(A\)$

综合上面所证，所以对于所有有理数 $r in bb(Q)$, 都有 $ f\(A^r\)= r f\(A\) $ #noindent;从此不难用单调性和极限过程，导出#numbered-eq($ f\(A^beta\)= beta f\(A\)\,#h(2em) beta in bb(R) $);

令 $A^beta = x$, 则 $beta = log_A x$, 于是 (10.5) 可写成#numbered-eq($ f\(x\)= f\(A\)dot.op log_A x $);#noindent;这样我们得到一个连续的单调的对数型函数 (10.6). 为了化去常数因子 $f\(A\)$, 我们要用一些技巧如下：令 $a = A^(tfrac(1, f\(A\)))$ , 于是 $ 1 = log_a a = log_a A^(tfrac(1, f\(A\))) = frac(1, f\(A\)) dot.op log_a A $ #noindent;即：$f\(A\)= log_a A$, 代入 (10.6), 得到：$ f\(x\)= log_A x dot.op log_a A = log_a x $

]
#heading(level: 2, numbering: none, supplement: [toc-sub])[习题10.3]

+ #block(sticky: true)[求下列各函数的定义域与值域，如果它们是可逆的，写出以 $x$ 为自变数的反函数．]

  #cols(2)[
  + $y = log_2\(x - 2\)$

  + $y = log_2 1 / x$

  + $y = e^(- x)$

  + $y = sqrt(lg cos 2 pi x)$

  ]

+ #block(sticky: true)[计算下列各式的值：]

  #cols(2)[
  + $2^(log_4 9)$

  + $5^(log_0.2 7)$

  + $3^(log_(sqrt(3)) 6)$

  + $6^(1 + log_6 5)$

  + $25^(tfrac(1, 3) log_5 27 - log_5 4)$

  + $10^(lg sqrt(100))$

  + $log_(sqrt(4 - sqrt(15))) sqrt(4 + sqrt(15))$

  + $4 - lg 8 - 3 lg 5$

  + $lg^2 5 + lg 2 lg 50$

  + $frac(3 lg 1728, 1 + 1 / 2 lg 0.36 + 1 / 3 lg 8)$

  + $log_a b dot.op log_b c dot.op log_c d$

  + $(log_2 3 + log_4 9) (log_3 4 + log_9 2)$

  ]

+ #block(sticky: true)[证明下面的恒等式：]

  #cols(2)[
  + $log_a b = frac(log_c b, log_c a)$

  + $log_a b dot.op log_b a = 1$

  + $frac(log_a x, log_(a b) x) = 1 + log_a b$

  ]
  #block[
  #set enum(numbering: enum-at(2, none, start: 4))
  + #h(0pt)
    $  & quad frac(1, \(log_x 2\)\(log_x 4\)) + frac(1, \(log_x 4\)\(log_x 8\)) + frac(1, \(log_x 8\)\(log_x 16\)) + dots.h.c\
     & eqph + frac(1, \(log_x 2^(n - 1)\)\(log_x 2^n\)) = (1 - 1 / n) (frac(1, log_x 2))^2 $
  ]

+ #lead-list(none, 2)[
  + 已知 $lg 2 = a$, $lg 7 = b$, 求 $log_8 9.8$⁠；

  + 已知 $log_18 9 = a$, $log_18 5 = b$, 求 $log_36 45$\;

  + 已知 $lg 198 = 2.2966$, $lg 2 = 0.3010$, $lg 3 = 0.4771$, 求 $lg 11$\;

  + 已知 $log_12 7 = m$, $log_12 3 = n$, 求 $log_18 63$.
  ]

+ 已知 $lg 3 = 0.4771$, 问 $(1 / 3)^20$ 表成小数时，不等于0的第一个有效数字出现在哪里？

+ 证明下面不等式：

  + $lr(|log_a b|) + lr(|log_b a|) gt.eq.slant 2$

  + $frac(1, log_2 pi) + frac(1, log_pi 2) > 2$

  + 若 $a > b > 0$ 且 $c > 1$, 则 $log_c b / a < log_c frac(1 + b, 1 + a)$.

  + 若 $t > - 1$, $phi\(t\)= - lg\(1 + t\)$, 则 $phi (frac(t_1 + t_2, 2)) < frac(phi (t_1) + phi (t_2), 2)$

+ 当 $2 x + 5 y = 20$ 时, 求 $log_2 x + log_2 y$ 的最大值.

+ 设 $x > 1$, $y > 1$ 且 $2 log_x y - 2 log_y x + 3 = 0$, 那么 $x^2 -$ $4 y^2$ 的最小值是多少？

+ 设 $x > 2$, $y > 2$, 比较下列各式的大小：$ log_2 frac(x + y, 2)\;#h(2em) 1 / 2 log_2\(x + y\)\;#h(2em) 1 / 2 (log_2 x + log_2 y) $

+ 求证等比数列的各项的对数组成等差数列.

+ 有等比数列, 它的公比为2, 项数为10, 如果各项取以2为底的对数, 它们的和是25, 求这等比数列的和．

+ 试问数列 $ lg 100\,thick lg (100 sin pi / 4)\,thick lg (100 sin^2 pi / 4)\,thick dots.h\,thick lg (100 sin^(n - 1) pi / 4)\,thick dots.h $ #noindent;的前多少项的和的值最大？并求出最大值（这里取 $lg 2 = 0.3010$⁠）．

== 指数方程与对数方程
指数中含有未知数的方程叫做#strong[指数方程]．下面我们介绍几种常见的指数方程及其解法．

=== 可化为 $a^(f\(x\)) = a^(g\(x\)) thick\(a > 0 thick upright("且") thick a eq.not 1\)$ 的指数方程
对于这类方程，我们根据指数函数的单调性得到 $a^(f\(x\)) = a^(g\(x\))$ 成立的必要充分条件是 $f\(x\)= g\(x\)$. 因此，指数方程 $a^(f\(x\)) = a^(g\(x\))$ 在 $a > 0$ 且 $a eq.not 1$ 的条件下就可以转化为代数方程 $f\(x\)= g\(x\)$ 来解．

#example[
解方程 $5^(- x) dot.op 50^x = frac(1, 1000\(10^(2 x - 1)\)^(- 3))$

]
#solution[
原方程化简为 $\(5^(- 1) dot.op 50\)^x = 10^(6 x - 3) / 10^3$⁠，即：$ 10^x = 10^(6 x - 6) $

由于底数 $a = 10 > 0$ 且 $eq.not 1$, 得到 $ x = 6 x - 6 quad arrow.r.double quad x = 6 / 5 $ #noindent;所以原方程的解集是 $lr(\{ 6 / 5 \})$⁠．

]
#example[
解方程 $17^(3 x^2 + x - 2) = 1$

]
#solution[
$because quad 1 = 17^0$⁠，原方程可写成 $ 17^(3 x^2 + x - 2) = 17^0 $ #noindent;于是根据指数函数的单调性，得到 $ 3 x^2 + x - 2 = 0 $ #noindent;由此 $ x_1 = 2 / 3\,#h(2em) x_2 = - 1 $ #noindent;所以原方程的解集是 $lr(\{ - 1 \, 2 / 3 \})$⁠．

]
=== 可化为形如 $a^(f\(x\)) = b^(g\(x\))$ 的指数方程
这里（$a > 0$, $b > 0$, $a eq.not 1$, $b eq.not 1$⁠），一般用两边取对数的方法来解．

#example[
解方程 $17^x = 300$

]
#solution[
两边取常用对数，得到 $ x lg 17 & = lg 300\
x & = frac(lg 300, lg 17) approx 2.4771 / 1.2304 approx 2.0132 $

]
#example[
解方程 $5^(2 x) - 7^x - 35 dot.op 5^(2 x) + 35 dot.op 7^x = 0$

]
#solution[
原方程化简为 $7^x\(35 - 1\)= 5^(2 x)\(35 - 1\)$

两边除以34, 得到：$5^(2 x) = 7^x$

两边取常用对数 $ 2 x lg 5 & = x lg 7\
x\(2 lg 5 - lg 7\) & = 0 $ #noindent;$because quad 2 lg 5 - lg 7 = lg 25 - lg 7 eq.not 0\,#h(2em) therefore quad x = 0$

因此，原方程的解集是 $\{ 0 \}$⁠．

]
=== 可化为一元二次方程的指数方程
#example[
解方程 $(sqrt(2 - sqrt(3)))^x + (sqrt(2 + sqrt(3)))^x = 4$

]
#solution[
注意到 $sqrt(2 - sqrt(3)) dot.op sqrt(2 + sqrt(3)) = sqrt(4 - 3) = 1$⁠，原方程的两边乘以 $(sqrt(2 - sqrt(3)))^x$, 得到 $ (sqrt(2 - sqrt(3)))^(2 x) + 1 = 4 (sqrt(2 - sqrt(3)))^x $ #noindent;即 $(sqrt(2 - sqrt(3)))^(2 x) - 4 (sqrt(2 - sqrt(3)))^x + 1 = 0$

$therefore quad (sqrt(2 - sqrt(3)))^x = 2 + sqrt(3) quad upright("或") quad (sqrt(2 - sqrt(3)))^x = 2 - sqrt(3)$

即：$ (2 - sqrt(3))^(tfrac(x, 2)) = (2 - sqrt(3))^(- 1) quad upright("或") quad (2 - sqrt(3))^(tfrac(x, 2)) = 2 - sqrt(3) $ #noindent;$therefore quad x / 2 = - 1 quad upright("或") quad x / 2 = 1$

$therefore quad x = - 2 quad upright("或") quad x = 2$

$therefore quad$ 原方程的解集是 $\{ - 2\,2 \}$⁠．

]
未知数前面有对数符号的方程称为对数方程．解对数方程一般常用的方法是根据对数定义直接把对数式的等式写成指数形式的等式．也有时根据对数函数的单调性把对数方程化为代数方程来解．但是必须注意在解对数方程之前，应该先确定使方程中的对数都有意义的定义域，由此便确定了方程的根的上、下界．在求得对数方程之解后，应该舍去在根的上、下界之外的增根，换言之，把那些使真数或底数为非正数或使底数等于1的根舍去，下面介绍几种常见的对数方程．

=== 形如 $log_(f\(x\)) g\(x\)= c$（其中 $c$ 是常数）的对数方程
可以根据对数定义将它化为指数形式的等式去解．

#example[
解方程 $log_(x - 5)\(3 x^2 - 16 x + 29\)= 2$

]
#solution[
方程中的对数有意义必须 $ display(cases(x > 5 quad upright("且") quad x - 5 eq.not 1\,quad upright("即") quad x eq.not 6, 3 x^2 - 16 x + 29 > 0)) $ #noindent;根据对数定义得到 $ 3 x^2 - 16 x + 29 =\(x - 5\)^2 $ #noindent;解得：$x_1 = 1\,#h(2em) x_2 = 2$⁠．

由于1和2都小于5, 所以原方程没有解，即原方程的解集是空集．

]
#example[
解方程 $log_3\[3 + 2 lg\(1 + x\)\]= 0$

]
#solution[
根据对数定义得到 $3 + 2 lg\(1 + x\)= 1$, 即：$ lg\(1 + x\)= - 1 $ #noindent;再由对数定义有 $ 1 + x & = 10^(- 1)\
x & = - 0.9 $ #noindent;经验算可知原方程的解集是 $\{ - 0.9 \}$.

]
=== 可以化成形如 $log_a f\(x\)= log_a g\(x\)$ 的对数方程
由对数函数的单调性知道，上面方程成立的充分必要条件是 $ display(cases(f\(x\)> 0, g\(x\)> 0, f\(x\)= g\(x\))) $ #noindent;因此对数方程可化为代数方程和不等式来解．

#example[
解方程 $lg x + lg\(x^2 - 4\)= lg 3 + lg\(x + 2\)$

]
#solution[
方程中的对数有意义，必须 $ display(cases(x > 0, x^2 - 4 > 0 quad arrow.r.double quad x > 2, x + 2 > 0)) $ #noindent;原方程化为 $lg x\(x^2 - 4\)= lg 3\(x + 2\)$⁠，由此得到 $ x\(x^2 - 4\)= 3\(x + 2\) $ #noindent;即：$\(x + 2\)\(x^2 - 2 x - 3\)= 0$⁠，解得：$ x_1 = - 2\,#h(2em) x_2 = - 1\,#h(2em) x_3 = 3 $ #noindent;其中只有 $x_3 = 3 > 2$, 所以原方程的解集是 $\{ 3 \}$⁠．

]
根据指数函数与对数函数的单调性也可以解相应的一些不等式．由于作对数变形时，也有可能把原来函数的定义域缩小了，这时就会丢掉解，因此，作对数变形时，应该避免这种情形发生．例如，解 $lg x^2 = 1$, 如果利用等式：$lg x^2 = 2 lg x$⁠，把原方程变形为 $2 lg x = 1$, 这时由这个方程只能解出 $x = sqrt(10)$, 丢失了原方程的一个根 $- sqrt(10)$⁠．

#example[
解不等式 $log_(tfrac(1, 3))\[log_4\(x^2 - 5\)\]> 0$

]
#solution[
原不等式等价于 $0 < log_4\(x^2 - 5\)< 1$⁠，由此 $1 < x^2 - 5 < 4$⁠，即：$ 6 < x^2 < 9 $ #noindent;$therefore quad sqrt(6) <\|x\|< 3$ 从而：$ sqrt(6) < x < 3 quad upright("或") quad - 3 < x < - sqrt(6) $

]
#example[
解 $log_a x > 6 log_x a - 1\,#h(2em)\(0 < a < 1\)$

]
#solution[
原不等式可写成#numbered-eq($ log_a x > frac(6, log_a x) - 1 $);#noindent;分两种情形来解：

+ 设 $0 < x < 1$, 则 $log_a x > 0\,quad\(0 < a < 1\)$.

  由 (10.7) 得 $log_a^2 x + log_a x - 6 > 0$⁠，由此得：#numbered-eq($ log_a x < - 3 $);#noindent;或#numbered-eq($ log_a x > 2 $);#noindent;由 (10.8) 得 $x > 1 / a^3 > 1$, 这与前设 $0 < x < 1$ 矛盾．所以 (10.8) 无解．

  由 (10.9) 得 $0 < x < a^2 < 1$, 因此由 (10.7) 得：$0 < x < a^2$

+ 设 $x > 1$, 则 $log_a x < 0\,quad\(0 < a < 1\)$.

  由 (10.7) 得 $log_a^2 x + log_a x - 6 < 0$, 由此得：$ - 3 < log_a x < 2 $ #noindent;$because quad 0 < a < 1\,#h(2em) therefore quad a^2 < 1 < x < a^(- 3)$

  因此，由 (10.7) 可得，$1 < x < 1 / a^3$⁠．

  $therefore quad$ 原不等式的解集是 $lr(\{ x \| 0 < x < a^2 \}) union lr(\{ x class("normal", stretch(|, size: #1.8em)) 1 < x < 1 / a^3 \})$

]
#example[
解不等式 $frac(1, log_2 x) - frac(1, log_2 x - 1) < 1$

]
#solution[
原不等式可化简为 $frac(1 + log_2 x\(log_2 x - 1\), log_2 x\(log_2 x - 1\)) > 0$⁠，即：$ frac((log_2 x - 1 / 2)^2 + 3 / 4, log_2 x\(log_2 x - 1\)) > 0 $ #noindent;由此得：$log_2 x\(log_2 x - 1\)> 0$⁠，因此：$ log_2 x < 0 quad upright("或") quad log_2 x > 1 $ #noindent;即：$0 < x < 1 quad upright("或") quad x > 2$⁠．

由此原不等式的解集是 $\{ x\|0 < x < 1 \} union \{ x\|x > 2 \}$⁠．

]
#example[
求函数 $f\(x\)= sqrt(log_(tfrac(1, 2)) frac(x, x^2 - 1))$ 的定义域．

]
#solution[
$ upright("函数") f upright("有意义") & arrow.l.r.double.long display(cases(log_(tfrac(1, 2)) frac(x, x^2 - 1) upright("有意义"), log_(tfrac(1, 2)) frac(x, x^2 - 1) gt.eq 0))\
 & arrow.l.r.double.long 0 < frac(x, x^2 - 1) lt.eq 1 arrow.l.r.double.long display(cases(frac(x, x^2 - 1) > 0, frac(x^2 - x - 1, x^2 - 1) gt.eq 0))\
 & arrow.l.r.double.long display(cases(- 1 < x < 0 quad upright("或") quad x > 1, x < - 1 quad upright("或") quad frac(1 - sqrt(5), 2) lt.eq x < 1 quad upright("或") quad x gt.eq frac(1 + sqrt(5), 2)))\
 & arrow.l.r.double.long display(cases(- 1 < x < 0, frac(1 - sqrt(5), 2) lt.eq x < 1)) upright("或") quad display(cases(x > 1, x gt.eq frac(1 + sqrt(5), 2)))\
 & arrow.l.r.double.long frac(1 - sqrt(5), 2) lt.eq x < 0 quad upright("或") quad x gt.eq frac(1 + sqrt(5), 2) $ #noindent;故函数 $f$ 的定义域为 $ lr(\{ x class("normal", stretch(|, size: #1.8em)) frac(1 - sqrt(5), 2) lt.eq x < 0 \}) union.big lr(\{ x class("normal", stretch(|, size: #1.8em)) x gt.eq frac(1 + sqrt(5), 2) \}) $

]
#example[
解方程 $log_(sin 3 x)\(cos x - cos 2 x\)= 1$

]
#solution[
要使方程中的对数有意义，$x$ 必须满足条件：#numbered-eq($ display(cases(sin 3 x > 0 quad upright("且") quad sin 3 x eq.not 1, cos x - cos 2 x > 0)) $);#noindent;由原方程得 $cos x - cos 2 x = sin 3 x$⁠，即：$ sin frac(3 x, 2) (sin x / 2 - cos frac(3 x, 2)) = 0 $ #noindent;由此得：$ sin frac(3 x, 2) = 0 quad upright("或") quad sin x / 2 - cos frac(3 x, 2) = 0 $ #noindent;因为 $sin frac(3 x, 2) = 0$ 的解，根据 $sin 3 x = 2 sin frac(3 x, 2) cos frac(3 x, 2)$⁠，知道一定也使 $sin 3 x = 0$ 成立，而这与 $x$ 满足的条件：$sin 3 x > 0$ 不合，因此，方程 $sin frac(3 x, 2) = 0$ 的解应该舍去．

由 $sin x / 2 - cos frac(3 x, 2) = 0$⁠，得：$ sin x / 2 = sin (pi / 2 - frac(3 x, 2)) $ #noindent;根据两角正弦相等条件，有 $ x / 2 = pi / 2 - frac(3 x, 2) + 2 k pi quad upright("或") quad x / 2 = pi / 2 + frac(3 x, 2) + 2 k pi $ #noindent;即：#numbered-eq($ x = pi / 4 + k pi $);#noindent;或#numbered-eq($ x = - pi / 2 - 2 k pi $);#noindent;在单位圆上，分别作出 (10.11) 中和 (10.12) 中的诸角的终边，如图10.5．

#figure([#fig("10-05");

  ],
  caption: [
  ]
)

显然 (10.11) 又可写成#numbered-eq($ x = pi / 4 + 2 k pi $);#noindent;和#numbered-eq($ x = frac(5 pi, 4) + 2 k pi $);#noindent;再由 (10.12), (10.13), (10.14) 容易看出角 $3 x$ 与角 $- frac(3 pi, 2)$, $frac(3 pi, 4)$ 和 $- pi / 4$ 有相同的终边，所以若将解 (10.12) $x = - pi / 2 + 2 k pi$ 和解 (10.14) $x = frac(5 pi, 4) + 2 k pi$ 代入 $sin 3 x$ 中，便得到 $ sin 3 (- pi / 2 - 2 k pi) & = sin (- frac(3 pi, 2)) = - sin frac(3 pi, 2) = 1\
sin 3 (frac(5 pi, 4) + 2 k pi) & = sin frac(15 pi, 4) = sin (4 pi - pi / 4) = sin (- pi / 4) = - sqrt(2) / 2 < 0 $ #noindent;因此这两组解是增解，应该舍去，经检验知 $x = pi / 4 + 2 k pi$ 满足不等式组 (10.10), 所以方程的解集是 $lr(\{ x class("normal", stretch(|, size: #1.8em)) x = pi / 4 + 2 k pi \, quad k in bb(Z) \})$

]
#heading(level: 2, numbering: none, supplement: [toc-sub])[习题10.4]

+ #block(sticky: true)[解下列各指数方程：]

  #cols(2)[
  + $3^(2 x - 1) = 81$

  + $sqrt(5^x) = root(3, 25)$

  + $root(4, 7^x) = root(5, 343)$

  + $root(4, a^(x + 1)) = root(3, a^(x - 2))$

    $\(a > 0\,thick a eq.not 1\)$

  + $sqrt(2^x) sqrt(3^x) = 36$

  + $(3 / 4)^x = (4 / 3)^5$

  + $(4 / 9)^x = (3 / 2)^8$

  + $(2 / 3)^x (9 / 8)^x = 27 / 64$

  + $4^(sqrt(x + 1)) = 64 dot.op 2^(sqrt(x + 1))$

  + $\(0.25\)^(2 - x) = 256 / 2^(x + 3)$

  + $(4 / 9)^x (27 / 8)^(x - 1) = 2 / 3$

  + $2^x dot.op 5^x = 0.1 (10^(x - 1))^5$

  ]

+ #block(sticky: true)[解下列各指数方程：]

  #cols(2)[
  + $3^(x + 2) + 3^(x - 1) = 28$

  + $5^(x + 1) - 5^(x - 1) = 24$

  + $3^(2 x - 1) + 3^(2 x - 2) - 3^(2 x - 4) = 315$

  + $3^x + 3^(x + 1) + 3^(x + 2) = 5^(x + 1) + 5^(x + 2)$

  + $4^x + 2^(x + 1) = 80$

  + $3^(x + 2) + 9^(x + 1) - 810 = 0$

  + $3^(2 x + 5) = 3^(x + 2) + 2$

  + $3^(4 sqrt(x)) - 4 dot.op 3^(2 sqrt(x)) + 3 = 0$

  + $4 dot.op 9^(sqrt(x) - 2) - 3 dot.op 15^(sqrt(x) - 2) = 25^(sqrt(x) - 2)$

  + $4^(2 x) - 2 dot.op 18^(2 x) = 3 dot.op 81^(2 x)$

  ]
  #block[
  #set enum(numbering: enum-at(2, none, start: 11))
  + $(sqrt(5 + 2 sqrt(6)))^x + (sqrt(5 - 2 sqrt(6)))^x = 10 / 3$
  ]

+ #block(sticky: true)[求最小整数指数 $x$, 使]

  #cols(2)[
  + $(4 / 5)^x < 0.000001$

  + $(3 / 5)^x < 0.0001$

  + $(10 / 9)^x > 1000000$

  + $(9 / 8)^x > 10000000$

  ]

+ #block(sticky: true)[解下列各不等式]

  #cols(2)[
  + $3^(3 - 5 x) - 1 / 81 > 0$

  + $\(0.3\)^(2 x^2 + 5 x + 2) < 1$

  + $8^x + 16^(tfrac(3, 4) x + 1) < 34$

  + $frac(\(0.5\)^(3 x^2 + 10 x + 6), 100) < 0.00125$

  + $2^(x + 1) dot.op 5^(2 x - 3) < 24 / 25$

  + $5^(2 x) - 30 dot.op 5^x + 125 < 0$

  + $2^(2 x) - 2^(x + 1) < 2^3$

  + $frac(1, (1 / 10)^y - 1) lt.eq.slant frac(2, (1 / 100)^y - 10)$

  + $frac(1, 2^x - 1) gt.eq.slant frac(1, 4^x - 3)$

  + $(3 / 4)^(x - 1) (4 / 3)^(tfrac(1, x)) > 9 / 16$

  ]

+ 解下列各对数方程:

  + $lg x = 2 - lg 5$

  + $lg\(x + 6\)- 1 / 2 lg\(2 x - 3\)= 2 - lg 25$

  #cols(2)[
  #block[
  #set enum(numbering: enum-at(2, none, start: 3))
  + $frac(2 lg x, lg\(5 x - 4\)) = 1$

  + $frac(lg x, 1 - lg x) = 2$

  + $log_(x - 1)\(x^2 - 5 x + 10\)= 2$

  + $2 lg x = - lg (6 - x^2)$

  + $frac(1, 5 - lg x) + frac(1, 1 + lg x) = 1$

  + $0.5 lg\(2 x - 1\)+ lg sqrt(x - 9) = 1$

  + $log_2 log_3 log_4 x = 0$

  + $lg 9^(- 1) + x lg root(3, 3^(5 x - 7)) = 0$

  + $lg 10^(lg (x^2 + 21)) - 1 = lg x$
  ]

  ]
  #block[
  ]

+ 解下列各对数方程：

  + $2 log_4 x + 2 log_x 4 = 5$

  + $log_2\(x - 1\)^2 - log_0.5\(x - 1\)= 9$

  + $log_8 x + log_4 x + log_2 x = 7$

  + $log_x (5 x^2) dot.op (log_5 x)^2 = 1$

  + $sqrt(log_x 5 sqrt(5) + log_(sqrt(5)) 5 sqrt(5)) dot.op log_(sqrt(5)) x = - sqrt(6)$

  + $sqrt(log_x sqrt(3 x)) dot.op log_3 x = - 1$

  + $log_(3 x) (3 / x) + log_3^2 x = 1$

  + $frac(lg (sqrt(x + 1) + 1), lg root(3, x - 40)) = 3$

+ 解下列各方程：

  + $\(0.4\)^(lg^2 x + 1) =\(6.25\)^(2 - lg x^3)$

  + $x^(lg x + 2) = 1000$

  + $sqrt(x^(lg sqrt(x))) = 10$

  + $x^(log_(x^2)\(x^2 - 1\)) = 5$

  + $lg 2 + lg (4^(x - 2) + 9) = 1 + lg (2^(x - 2) + 1)$

  + $log_2 (9^(x - 1) + 7) = 2 + log_2 (3^(x - 1) + 1)$

  + $lg x + lg root(3, x) + lg root(9, x) + dots.h.c = 3$

  + $log_9 x + (log_9 x)^2 + (log_9 x)^3 + dots.h.c = 1$,

  + $1 + log_x frac(4 - x, x) =\(lg lg n - 1\)log_x 10$

+ #block(sticky: true)[解下列各方程组：]

  #cols(2)[
  + $display(cases(2^(sqrt(x) + sqrt(y)) = 512, lg sqrt(x y) = 1 + lg 2))$

  + $display(cases(log_x log_2 log_x y = 0, log_y 9 = 1))$

  + $display(cases(2^(tfrac(x - y, 2)) - 2^(tfrac(x - y, 4)) = 2, 3^(lg\(2 y - x\)) = 1))$

  + $display(cases(x y = 40, x^(lg y) = 4\,))$

  + $display(cases(3 dot.op 2^x - log_2 y = 2, 2^x dot.op log_2 y = 1))$

  + $display(cases(7^y dot.op log_5 x = 2, 4 dot.op 7^y + log_5 x = 2))$

  + $display(cases(lg^2 x + lg^2 y = 5, lg x - lg y = 1))$

  + 求 $display(cases(x^(x + y) = y^12, y^(x + y) = x^3))$ 的整数解

  ]

+ #block(sticky: true)[解下列各不等式：]

  #cols(2)[
  + $lg x > 3$

  + $lg\(- x\)> 3$

  + $lg x^2 > 3$

  + $lg^2 x > 3$

  + $lg x < 2 lg x$

  + $lg x > 2 lg x$

  + $log_(tfrac(1, 2))\(3 x - 5\)< 3$

  + $lg x + lg\(x - 3\)> 1$

  + $lg\(4 x^2 - 9\)> lg\(2 x - 3\)+ 2$

  + $lg\(3 - x\)- 1 > lg\(2 - x\)$

  ]
  #block[
  #set enum(numbering: enum-at(2, none, start: 11))
  + $log_(sqrt(0.5))\(26 x\)> log_(sqrt(0.5))\(5 x^2 + 5\)$

  + $log_(sqrt(2))\(x^2 - 2 x + 8\)+ 2 sqrt(log_2\(x^2 - 2 x + 8\)) gt.eq 12$

  + $x^(log_a x + 1) > a x^2\,#h(2em)\(a > 1\)$
  ]

+ 求解

  + 试求满足不等式 $2\(log_0.5 x\)^2 + 9 log_0.5 x + 9 lt.eq 0$ 的 $x$ 的范围；

  + $x$ 在1中求得的范围内变动时，试求 $f\(x\)= (log_2 x / 3) (log_2 x / 4)$ 的最大值 $M$ 和最小值 $L$.

+ #block(sticky: true)[解下列方程：]

  #cols(2)[
  + $log_(sqrt(2) sin x)\(1 + cos x\)= 2$

  + $log_(tfrac(1, 8 cos^2 x)) sin x = 1 / 2$

  + $frac(2, lg (1 / 2 + cos^2 x)) = log_(sin 2 x) 10$

  + $arcsin\(lg x\)= 0$

  + $lg\(arcsin x\)= 0$

  + $arccos\(pi log_3 tan x\)= 0$

  ]
