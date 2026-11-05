// 由 typst/tools/tex2typ.py 从 math6/7.tex 转换而来，已人工校对的部分以本文件为准。
#import "../common/template.typ": *
#import "figs.typ": fig

= 微积分学基本定理
在前两章中，我们分别引入了函数的变率（导数），函数的和（定积分）的基本概念，本章将研究函数的导函数与函数的求和函数这两者之间的互逆关系，并说明我们可以用求导函数的逆运算方法来计算定积分．

== 微积分学基本定理
=== 导函数与求和函数
函数 $f\(x\)$ 在点 $x_0$ 处的变化率（导数）的定义是 $ f'\(x_0\)= lim_(h arrow.r 0) frac(f\(x_0 + h\)- f\(x_0\), h) $ #noindent;显然，$f'\(x_0\)$ 的值与 $f\(x\)$ 在点 $x_0$ 的值以及在点 $x_0$ 的邻近的函数值有关，当点 $x_0$ 在 $\(a\,b\)$ 内变化时，$f'\(x_0\)$ 也跟着变化，那么 $f'\(x_0\)$ 便是一个新函数称为 $f\(x\)$ 的导函数．计算一个函数的导函数是一件比较简便的事情．

定积分 $integral_a^b f\(x\)thin upright(d) x$ 的定义是把区间 $\[a\,b\]$ 无限细分而得到上下夹逼阶梯函数的和的共同极限，其几何意义是曲线 $y = f\(x\)$ 和直线 $x = a$, $x = b$, 及 $y = 0$ 所围成的区域的有号面积．

假如我们考虑 $f\(x\)$ 在一个变动的区间 $\[a\,x\]$ 上的和，即让区间的左端点固定，右端点变动，则 $ S_f\(x\)= upright("函数") f upright("从") a upright("到") x upright("的和") = integral_a^x f\(x\)thin upright(d) x $ #noindent;可以看作上限变量 $x$ 的函数，在这里，积分符号中的 $x$ 既表示积分变量，又表示积分上限，容易混淆，因此，为了区别起见，我们用字母 $t$ 来代表积分变量，这样上式就写成 $ S_f\(x\)= integral_a^x f\(t\)thin upright(d) t $

和函数 $S_f\(x\)$ 在 $x = x_0$ 处的值 $S_f\(x_0\)$ 的几何意义就是曲线 $y = f\(t\)$, 直线 $t = a$, $t = x_0$, $y = 0$ 所围成的区域的有号面积，它是随区域的变动界线 $t = x_0$ 的变动而变动的（图4.1）．

#figure([#fig("7-01");

  ],
  caption: [
  ]
)

例如，当变动界限（积分上限）在图中的 $P M$ 位置时，则 $ S_f\(x_0\)= integral_a^(x_0) f\(t\)thin upright(d) t = A C B upright("的面积") - C P M upright("的面积") $

当变动界限在图中的 $P' M'$ 位置时，则 $ S_f\(x'_0\) & = integral_a^(x'_0) f\(t\)thin upright(d) t = - integral_(x'_0)^a f\(t\)thin upright(d) t\
 & = - lr(\{ - P' D M' upright("的面积") + D A B upright("的面积") \})\
 & = P' D M' upright("的面积") - D A B upright("的面积") $

我们先用例子来说明导函数与求和函数有密切的互逆关系．

例如，折线函数 $ g\(x\)= display(cases(1 / 2\(x - 1\) & quad x in\[1\,2\], 3 / 2\(x - 2\)+ 1 / 2\(2 - 1\) & quad x in\[2\,3\], \(x - 3\)+ 1 / 2\(2 - 1\)+ 3 / 2\(3 - 2\) & quad x in\[3\,4\])) $ #noindent;的导函数（除去在折线段的那些交接点处不作定义外）是阶梯函数 $ g'\(x\)= display(cases(1 / 2 & quad x in\[1\,2\), 3 / 2 & quad x in\(2\,3\), 1 & quad x in\(3\,4\])) $ #noindent;反过来，该阶梯函数的和函数，是上述折线函数 $g\(x\)$, 我们有如下的图解关系：

#align(center)[
#fig("7-02");

]
上述简明的例子表明“微分”与“积分”（或求函数由 $a$ 到 $b$ 的和）之间的运算关系应该是互逆的．

=== 微积分学基本定理
#blk[定理1][
设 $f\(t\)$ 是在 $\[a\,b\]$ 上的分段单调连续函数，又它的和函数是 $ S_f\(x\)= integral_a^x f\(t\)thin upright(d) t $ #noindent;那么 $ frac(thin upright(d), thin upright(d) x) S_f\(x\)= frac(thin upright(d), thin upright(d) x) integral_a^x f\(t\)thin upright(d) t = f\(x\)\,#h(2em) a lt.eq x lt.eq b $

]
#figure([#fig("7-03");

  ],
  caption: [
  ]
)

#proof[
如图4.2，设 $h > 0$⁠，则 $ frac(S_f\(x + h\)- S_f\(x\), h) & = frac(display(integral)_a^(x + h) f\(t\)thin upright(d) t - display(integral)_a^x f\(t\)thin upright(d) t, h)\
 & = frac(display(integral)_x^(x + h) f\(t\)thin upright(d) t, h) #h(2em) upright("（定积分性质1）")\
 & = frac(h f\(xi\), h) quad\(x < xi < x + h\)\
 & = f\(xi\)#h(2em) upright("（定积分中值定理）") $ #noindent;于是#numbered-eq($ lim_(h arrow.r 0^(+)) frac(S_f\(x + h\)- S_f\(x\), h) = lim_(xi arrow.r x) f\(xi\)= f\(x\) $);

设 $macron(h) < 0$⁠，则 $ frac(S_f\(x\)- S_f\(x + macron(h)\), macron(h)) & = frac(display(integral)_a^x f\(t\)thin upright(d) t - display(integral)_a^(x + macron(h)) f\(t\)thin upright(d) t, macron(h))\
 & = frac(display(integral)_(x + macron(h))^x f\(t\)thin upright(d) t, macron(h)) #h(2em) upright("（定积分性质1）")\
 & = frac(- macron(h) f\(macron(xi)\), macron(h)) = - f\(macron(xi)\)quad\(x + macron(h) < macron(xi) < x\) $ #noindent;即：$ frac(S_f\(x + macron(h)\)- S_f\(x\), macron(h)) = f\(macron(xi)\)\,#h(2em)\(x + macron(h) < macron(xi) < x\) $ #noindent;于是#numbered-eq($ lim_(macron(h) arrow.r 0^(-)) frac(S_f\(x + macron(h)\)- S_f\(x\), macron(h)) = lim_(macron(xi) arrow.r x) f\(macron(xi)\)= f\(x\) $);#noindent;由 (4.1) 和 (4.2)，得 $ frac(thin upright(d), thin upright(d) x) S_f\(x\)= frac(thin upright(d), thin upright(d) x) integral_a^x f\(t\)thin upright(d) t = f\(x\) $

]
#blk[引理][
如果两个函数 $F\(x\)$ 和 $G\(x\)$ 满足条件 $ F'\(x\)= G'\(x\)\,#h(2em) a lt.eq x lt.eq b $ #noindent;那么 $ G\(x\)= F\(x\)+ C\,#h(2em)\(C upright("是常数")\) $

]
#proof[
由 $G'\(x\)- F'\(x\)= 0$, 得 $ \[G\(x\)- F\(x\)\]' = 0 $ #noindent;根据中值定理（参看第二章§3.2定理1）知，对于每一个 $x in\(a\,b\)$, 恒有 $ G\(x\)- F\(x\)= C\,#h(2em)\(C upright("是常数")\) $ #noindent;所以 $ G\(x\)= F\(x\)+ C $

]
#blk[定义][
设 $f\(x\)$ 是在区间 $\[a\,b\]$ 上给定的函数，如果可微函数 $G\(x\)$ 满足条件 $ G'\(x\)= f\(x\)#h(2em)\(upright("或") quad thin upright(d) G\(x\)= f\(x\)thin upright(d) x\) $ #noindent;那么就称 $G\(x\)$ 为 $f\(x\)$ 在 $\[a\,b\]$ 上的一个#strong[原函数]．

]
例如，设 $G'\(x\)= cos x$, 那么 $G\(x\)= sin x$ 就称为 $cos x$ 的一个原函数．

#blk[定理2][
设 $f\(x\)$ 是给定的分段单调连续函数，如果一个可微函数 $G\(x\)$ 满足条件#numbered-eq($ G'\(x\)= f\(x\)#h(2em) upright("（或") thin upright(d) G\(x\)= f\(x\)thin upright(d) x upright("）")\,quad a lt.eq x lt.eq b $);#noindent;那么 $ S_f\(x\)= integral_a^x f\(t\)thin upright(d) t = G\(x\)- G\(a\) $

]
#proof[
由定理1知，$f\(x\)$ 的一个原函数存在，就是它的和函数，即 $ frac(thin upright(d), thin upright(d) x) integral_a^x f\(t\)thin upright(d) t = f\(x\) $ #noindent;题设 $G\(x\)$ 是 $f\(x\)$ 的另一个原函数，故由引理得#numbered-eq($ integral_a^x f\(t\)thin upright(d) t = G\(x\)+ C $);#noindent;这里的常数要由条件 $display(integral)_a^a f\(t\)thin upright(d) t = 0$ 来确定．

在 (4.4) 中，令 $x = a$⁠，得 $ 0 = G\(a\)+ C $ #noindent;所以：$C = - G\(a\)$⁠，代入 (4.4)，得 $ integral_a^x f\(t\)thin upright(d) t = G\(x\)- G\(a\) $

]
在上面等式中，令 $x = b$, 便得到下面著名的莱布尼兹-牛顿公式：$ integral_a^b f\(t\)thin upright(d) t = G\(b\)- G\(a\) $ #noindent;这个公式告诉我们，求分段单调连续函数 $f\(x\)$ 在 $\[a\,b\]$ 上的定积分可以化简为去求 $f\(x\)$ 的一个原函数 $G\(x\)$, 而函数值的差 $G\(b\)- G\(a\)$ 就是定积分的值．

#example[
设 $f\(x\)= k$（常数函数），则 $G\(x\)= k x$ 是一个满足 $G'\(x\)= k = f\(x\)$ 的原函数，所以 $ integral_a^b k thin upright(d) x = k b - k a = k\(b - a\) $ #noindent;以后我们引用一个符号：$ G\(x\)class("normal", stretch(|, size: #3em))_a^b = G\(b\)- G\(a\) $

]
#example[
设 $f\(x\)= k x^n\,thick\(n in bb(N)\)$⁠，则 $ G\(x\)= k frac(x^(n + 1), n + 1) $ #noindent;是满足 $G'\(x\)= k x^n$ 的一个原函数，所以 $ integral_a^b k x^n thin upright(d) x = k frac(x^(n + 1), n + 1) class("normal", stretch(|, size: #3em))_a^b = frac(k, n + 1)\(b^(n + 1) - a^(n + 1)\) $

]
#example[
设 $f\(x\)= x^(- n) = 1 / x^n thick\(x eq.not 0\,thick n in bb(N)\)$⁠，则 $ G\(x\)= frac(x^(- n + 1), - n + 1) $ #noindent;是满足 $G'\(x\)= x^(- n)$ 的一个原函数．要特别注意定理2中 $f\(x\)$ 是连续的条件，在任何包含0的区间上，函数 $f\(x\)= 1 / x^n$ 无界，即有第二类间断点，如果 $a\,b$ 异号，则定积分 $display(integral)_a^b x^(- n) thin upright(d) x$ 无意义，但若 $a\,b$ 同时为正或同时为负，则 $ integral_a^b x^(- n) thin upright(d) x = frac(x^(- n + 1), - n + 1) class("normal", stretch(|, size: #3em))_a^b = frac(b^(- n + 1), - n + 1) - frac(a^(- n + 1), - n + 1) $ #noindent;当然，只有 $n eq.not 1$ 时，上式才能成立．

如果 $n = 1$⁠，依复合函数求导法则，得 $ \(ln thin \|x\|\)' = frac(1, \|x\|) dot.op\|x\|' $ #noindent;若 $x > 0$⁠，则 $ \(ln thin \|x\|\)' = 1 / x dot.op 1 = 1 / x $ #noindent;若 $x < 0$⁠，则 $ \(ln thin \|x\|\)' = frac(1, - x) dot.op\(- 1\)= 1 / x $ #noindent;总之 $ \(ln thin \|x\|\)' = 1 / x\,quad\(x eq.not 0\) $ #noindent;因此 $ integral_a^b 1 / x thin upright(d) x = ln thin \|x\|class("normal", stretch(|, size: #3em))_a^b & = ln thin \|b\|- ln thin \|a\|\
 & = ln lr(|b / a|) = ln b / a quad\(x eq.not 0\,thick a b > 0\) $

]
#example[
求 $display(integral)_1^3\|x - 2\|thin upright(d) x$

]
#solution[
$ display(integral)_1^3\|x - 2\|thin upright(d) x & = display(integral)_1^2 -\(x - 2\)thin upright(d) x + display(integral)_2^3\(x - 2\)thin upright(d) x\
 & = (- x^2 / 2 + 2 x) class("normal", stretch(|, size: #3em))_1^2 + (x^2 / 2 - 2 x) class("normal", stretch(|, size: #3em))_2^3\
 & = 1 / 2 + 1 / 2 = 1 $

]
#example[
求 $limits(lim)_(n arrow.r oo) frac(sum_(i = 1)^n i^p, n^(p + 1)) quad\(p in bb(N)\)$

]
#solution[
$ limits(lim)_(n arrow.r oo) frac(sum_(i = 1)^n i^p, n^(p + 1)) & = limits(lim)_(n arrow.r oo) sum_(i = 1)^n (i / n)^p dot.op 1 / n\
 & = integral_0^1 x^p thin upright(d) x = frac(x^(p + 1), p + 1) class("closing", stretch(|, size: #1.8em))_0^1 = frac(1, p + 1) $

]
#exercise[
+ #block(sticky: true)[用求原函数的方法, 计算下列定积分:]

  #cols(2)[
  + $display(integral)_2^3 (x^3 + 6 x^2 + 4 x + 1) thin upright(d) x$

  + $display(integral)_1^5 frac(v^2 + 2, v^4) thin upright(d) v$

  + $display(integral)_(- 3)^(- 2) (x + 2 / x)^2 thin upright(d) x$

  + $display(integral)_1^10 (x + 1 / x) thin upright(d) x$

  + $display(integral)_a^b\|x - 1\|thin upright(d) x$

  ]

+ 求曲线 $y = 2 x - x^2$ 与 $x$ 轴之间的面积.

+ 设 $y = x\(x - 1\)\(x - 2\)$⁠，求 $display(integral)_0^1 y thin upright(d) x\,thick display(integral)_1^2 y thin upright(d) x\,thick display(integral)_0^2 y thin upright(d) x$, 并说明所得结果的几何意义．

+ 求直线 $y = 2 x$ 和曲线 $y = x^2$ 之间的面积．

+ 求由曲线 $y = 1 / x^2$ 和直线 $x = 1$, $x = 4$ 所围成的曲边梯形的面积．

+ 求抛物线方程使它具有以下的性质：

  + 抛物线通过 $\(0\,0\)$, $\(1\,2\)$ 两点，

  + 它的对称轴平行 $y$ 轴，且向上凸，

  + 它与 $x$ 轴所围的面积最小．

+ 求正数 $a$, 使 $display(integral)_0^1\|x^2 - a^2\|thin upright(d) x$ 最小．

+ #block(sticky: true)[求下列函数的导数：]

  #cols(2)[
  + $F\(x\)= display(integral)_a^x sin^2 t thin upright(d) t$

  + $F\(x\)= display(integral)_a^(x^2) sin^2 t thin upright(d) t$

  ]

]
== 不定积分
由上节的微积分基本定理得知，在 $\[a\,b\]$ 上的两个可微函数 $G_1\(x\)$ 和 $G_2\(x\)$ 均以 $f\(x\)$ 为其导数，则 $G_1\(x\)$ 与 $G_2\(x\)$ 在 $\[a\,b\]$ 上只差一个常数 $C$. 由此可见，如果 $G'\(x\)= f\(x\)$, 且 $C$ 为任意常数，那么 $\[G\(x\)+ C\]' = G'\(x\)= f\(x\)$. 这就是说：如果函数 $f\(x\)$ 有一个原函数 $G\(x\)$, 那么就有无穷多个原函数，并且所有原函数刚好组成函数族 $ \{ G\(x\)+ C thick\|thick C upright("是任意常数") \} $

#blk[定义][
函数 $f\(x\)$ 在区间 $\[a\,b\]$ 上的原函数全体叫做 $f\(x\)$ 的不定积分，记作 $ integral f\(x\)thin upright(d) x $ #noindent;设 $G\(x\)$ 是 $f\(x\)$ 的一个原函数，那么由不定积分的定义得到 $ integral f\(x\)thin upright(d) x = G\(x\)+ C $ #noindent;其中 $C$ 是任意常数．

]
关于不定积分，易见有如下性质：

#blk[性质1][
积分与微分互为逆运算，即：$ display(cases(thin upright(d) display(integral) f\(x\)thin upright(d) x = f\(x\)thin upright(d) x, display(integral) thin upright(d) f\(x\)= f\(x\)+ C)) $

]
事实上，因为 $frac(thin upright(d), thin upright(d) x) display(integral)_a^x f\(t\)thin upright(d) t = f\(x\)$⁠，所以 $ integral f\(x\)thin upright(d) x = integral_a^x f\(t\)thin upright(d) t + C #h(2em) upright("（基本定理1和不定积分定义）") $ #noindent;于是 $ (integral f \( x \) thin upright(d) x)' = (integral_a^x f \( t \) thin upright(d) t + C)' = f\(x\) $ #noindent;从而 $ thin upright(d) integral f\(x\)thin upright(d) x = f\(x\)thin upright(d) x $ #noindent;又 $ integral thin upright(d) f\(x\) & = integral f'\(x\)thin upright(d) x = integral_a^x f'\(t\)thin upright(d) t + C_1\
 & = f\(x\)- f\(a\)+ C_1 quad upright("（基本定理）")\
 & = f\(x\)+ C $ #noindent;这里 $C = - f\(a\)+ C_1$.

从性质1看出，若不要不定积分等式中的任意常数项，则当符号 $display(integral)$ 与 $thin upright(d)$ 紧接着时，无论哪个在前，哪个在后，都可以消掉．

因为微分，积分是两种互逆的运算，所以它们的运算法则是互相对应的，现将它们相对应的法则叙述如下：

#blk[性质2][
$ display(cases(upright(d)\[f\(x\)+ g\(x\)\]= thin upright(d) f\(x\)+ thin upright(d) g\(x\), display(integral)\[f\(x\)+ g\(x\)\]thin upright(d) x = display(integral) f\(x\)thin upright(d) x + display(integral) g\(x\)thin upright(d) x + C)) $

]
上面不定积分公式的正确性不难证明，只要求出两边的微商，由于所得到的微商恒等，就可以知道它们只差一个常数项，因为，由性质1 $ (integral \[ f \( x \) + g \( x \) \] thin upright(d) x)' & = f\(x\)+ g\(x\)\
(integral f \( x \) thin upright(d) x + integral g \( x \) thin upright(d) x)' & = (integral f \( x \) thin upright(d) x)' + (integral g \( x \) thin upright(d) x)' = f\(x\)+ g\(x\) $ #noindent;所以 $f\(x\)+ g\(x\)$ 的两个原函数相差一个常数项，即：$ integral\[f\(x\)+ g\(x\)\]thin upright(d) x = integral f\(x\)thin upright(d) x + integral g\(x\)thin upright(d) x + C $ #noindent;同理可得：

#blk[性质3][
$ display(cases(upright(d)\[a f\(x\)\]= a thin upright(d) f\(x\), display(integral) a f\(x\)thin upright(d) x = a display(integral) f\(x\)thin upright(d) x)) #h(2em)\(a eq.not 0\) $

]
=== 基本积分表
由基本微商公式表，倒转顺序，就可以得到下面这个表：

- $frac(thin upright(d), thin upright(d) x) C = 0\,#h(2em) display(integral) 0 thin upright(d) x = C$

- $frac(thin upright(d), thin upright(d) x) x^mu = mu x^(mu - 1)\,#h(2em) display(integral) x^mu thin upright(d) x = frac(x^(mu + 1), mu + 1) + C quad upright("（") mu upright("是不等于") - 1 upright("的实数）")$

- $frac(thin upright(d), thin upright(d) x) ln thin \|x\|= 1 / x\,#h(2em) display(integral) frac(thin upright(d) x, x) = ln thin \|x\|+ C quad\(x eq.not 0\)$

- $frac(thin upright(d), thin upright(d) x) e^x = e^x\,#h(2em) display(integral) e^x thin upright(d) x = e^x + C$

#noindent;还因为 $a^x = e^(x ln a)$⁠，由复合函数求导法则，得：$ \(a^x\)' = e^(x ln a)\(x ln a\)' = ln a dot.op e^(x ln a) = ln a dot.op a^x $ #noindent;所以：

- $frac(thin upright(d), thin upright(d) x) a^x = ln a dot.op a^x\,#h(2em) display(integral) a^x thin upright(d) x = frac(a^x, ln a) + C$

- $frac(thin upright(d), thin upright(d) x) sin x = cos x\,#h(2em) display(integral) cos x thin upright(d) x = sin x + C$.

- $frac(thin upright(d), thin upright(d) x) cos x = - sin x\,#h(2em) display(integral) sin x thin upright(d) x = - cos x + C$.

- $frac(thin upright(d), thin upright(d) x) tan x = sec^2 x\,#h(2em) display(integral) sec^2 x thin upright(d) x = tan x + C$

- $frac(thin upright(d), thin upright(d) x) cot x = - csc^2 x\,#h(2em) display(integral) csc^2 x thin upright(d) x = - cot x + C$

- $frac(thin upright(d), thin upright(d) x) arcsin x = 1 / sqrt(1 - x^2)\,#h(2em) display(integral) frac(thin upright(d) x, sqrt(1 - x^2)) = arcsin x + C$

  $frac(thin upright(d), thin upright(d) x) arccos x = frac(- 1, sqrt(1 - x^2))\,#h(2em) display(integral) frac(thin upright(d) x, sqrt(1 - x^2)) = - arccos x + C'$

- $frac(thin upright(d), thin upright(d) x) arctan x = frac(1, x^2 + 1)\,#h(2em) display(integral) frac(thin upright(d) x, x^2 + 1) = arctan x + C$

  $frac(thin upright(d), thin upright(d) x) op("arccot") x = frac(- 1, x^2 + 1)\,#h(2em) display(integral) frac(thin upright(d) x, x^2 + 1) = - op("arccot") x + C'$

现在来看不定积分的几何意义．

由不定积分的定义知道，求函数 $f\(x\)= 3 x^2$ 的原函数全体，就是求不定积分 $display(integral) 3 x^2 thin upright(d) x$, 也就是求满足微分方程#numbered-eq($ frac(thin upright(d) y, thin upright(d) x) = 3 x^2 $);#noindent;的所有的原函数．

显然，$y = x^3$ 就是微分方程 (4.5) 的一个原函数，它的图象上各点切线的斜率由 (4.5) 确定．我们称曲线 $y = x^3$ 为微分方程 (4.5) 的积分曲线，把它沿 $y$ 轴上下平移任意一段距离，便得到曲线族#numbered-eq($ y = x^3 + C $);#noindent;并且 (4.6) 中任意一条曲线与曲线 $y = x^3$ 在横坐标相同的点的切线平行，其斜率都等于 $3 x^2$, 因此，曲线族 (4.6) 是满足微分方程 (4.5) 的所有积分曲线，也就是不定积分 $display(integral) 3 x^2 thin upright(d) x = x^3 + C$ 的几何表示（图4.3）．

为要确定 (4.5) 的某条积分曲线的位置，应当给出这条积分曲线必须经过的一点，例如它经过点 $P\(1\,3\)$. 我们说这条件也是微分方程 (4.5) 的一个相应的原函数要满足的初值条件 $y class("normal", stretch(|, size: #1.2em))_(x = 1) = 3$ 把它们代入 (4.6), 得到 $ 3 = 1^3 + C quad arrow.r.double quad C = 2 $ #noindent;因此，满足微分方程 $frac(thin upright(d) y, thin upright(d) x) = 3 x^2$ 和初值条件 $y class("normal", stretch(|, size: #1.2em))_(x = 1) = 3$ 的原函数或相应的积分曲线是 $ y = x^3 + 2 $

通常把满足微分方程#numbered-eq($ frac(thin upright(d) y, thin upright(d) x) = f\(x\) $);#noindent;的所有解叫做给定函数 $f\(x\)$ 的不定积分，即 $ y = integral f\(x\)thin upright(d) x $ #noindent;把函数 $f\(x\)$ 的一个原函数 $y = G\(x\)$ 的图象叫做微分方程 (4.7) 的一条#strong[积分曲线]，这样，不定积分 $ y = integral f\(x\)thin upright(d) x = G\(x\)+ C quad upright("（") C upright("为任意常数）") $ #noindent;的几何意义就表示与 $y = G\(x\)$ 在各点有相同斜率 $frac(thin upright(d) y, thin upright(d) x) = f\(x\)$ 的积分曲线族（图4.3）.

#figure([#fig("7-04");

  ],
  caption: [
  ]
)

由微积分基本定理2知道，如果 $y = G\(x\)$ 满足下面两个条件：$ G'\(x\)= f\(x\)quad upright("且") quad G\(a\)= 0 $ #noindent;那么，$y = G\(x\)$ 就是 $f\(x\)$ 的求和函数 $G\(x\)= display(integral)_a^x f\(x\)thin upright(d) x$.

#example[
求 $display(integral) sin\(k x\)thin upright(d) x\,quad display(integral) cos\(k x\)thin upright(d) x\,quad display(integral) e^(k x) thin upright(d) x\,quad display(integral) frac(thin upright(d) x, x^2 + a^2)$

]
#solution[
因为 $ \(cos k x\)' & = - k sin k x\
\(sin k x\)' & = k cos k x\
\(e^(k x)\)' & = k e^(k x)\
(arctan x / a)' & = frac(1, (x / a)^2 + 1) dot.op (x / a)' = frac(a, x^2 + a^2) $ #noindent;所以 $ integral sin\(k x\)thin upright(d) x & = - 1 / k cos k x + C\
display(integral) cos\(k x\)thin upright(d) x & = 1 / k sin k x + C\
display(integral) e^(k x) thin upright(d) x & = 1 / k e^(k x) + C\
display(integral) frac(thin upright(d) x, x^2 + a^2) & = 1 / a arctan x / a + C $

]
#example[
证明：若 $display(integral) f\(t\)thin upright(d) t = F\(t\)+ C$⁠，则 $ integral f\(k x\)thin upright(d) x = 1 / k F\(k x\)+ C $

]
#proof[
只须证明 $f\(k x\)$ 的一个原函数是 $1 / k F\(k x\)$ 即可．我们求 $1 / k F\(k x\)$ 对 $x$ 的导数，于是 $ frac(thin upright(d), thin upright(d) x) [1 / k F \( k x \)] = 1 / k F'\(k x\)dot.op\(k x\)' = F'\(k x\) $ #noindent;由题设知 $F'\(t\)= f\(t\)$, 所以 $ frac(thin upright(d), thin upright(d) x) [1 / k F \( k x \)] = F'\(k x\)= f\(k x\) $ #noindent;因此 $ integral f\(k x\)thin upright(d) x = 1 / k F\(k x\)+ C $

]
#example[
求 $display(integral) sin k x sin ell x thin upright(d) x$

]
#solution[
$ display(integral) sin k x sin ell x thin upright(d) x & = integral 1 / 2\[cos\(k - ell\)x - cos\(k + ell\)x\]thin upright(d) x\
 & = 1 / 2 integral cos\(k - ell\)x thin upright(d) x - 1 / 2 integral cos\(k + ell\)x thin upright(d) x\
 & = frac(sin\(k - ell\)x, 2\(k - ell\)) - frac(sin\(k + ell\)x, 2\(k + ell\)) + C $ #noindent;这里 $k eq.not plus.minus ell$⁠．（如果 $k = plus.minus ell$⁠，则另当考虑）

]
#example[
求 $display(integral) (frac(2 a, sqrt(x)) - b / x^2 + 3 c x^(tfrac(2, 3))) thin upright(d) x$

]
#solution[
$ display(integral) (frac(2 a, sqrt(x)) - b / x^2 + 3 c x^(tfrac(2, 3))) thin upright(d) x & = 2 a integral x^(- tfrac(1, 2)) thin upright(d) x - b integral x^(- 2) thin upright(d) x + 3 c integral x^(tfrac(2, 3)) thin upright(d) x\
 & = 4 a sqrt(x) + b / x + 9 / 5 c x^(tfrac(5, 3)) + C $

]
#example[
求 $display(integral) frac(3 x^2, 1 + x^2) thin upright(d) x$

]
#solution[
$ display(integral) frac(3 x^2, 1 + x^2) thin upright(d) x & = 3 integral (1 - frac(1, x^2 + 1)) thin upright(d) x\
 & = 3 integral thin upright(d) x - 3 integral frac(thin upright(d) x, x^2 + 1)\
 & = 3 x - 3 arctan x + C $

]
以上各例都是利用不定积分的性质2、3, 同时配合使用三角恒等式或设法将被积函数拆成几项，从而把一个比较复杂的积分化成若干个可以查基本积分表的积分．

#exercise[
+ #block(sticky: true)[计算下列不定积分:]

  #cols(2)[
  + $display(integral) (x^3 + 3 x + 5) thin upright(d) x$

  + $display(integral)\(x + 2\)^4 thin upright(d) x$

  + $display(integral) (x^(- 2) + x^(- 1) + x^(tfrac(1, 3)) + x^(tfrac(1, 2))) thin upright(d) x$

  + $display(integral) (a^(tfrac(2, 3)) - x^(tfrac(2, 3)))^3 thin upright(d) x$

  + $display(integral) (1 / x + e^x) thin upright(d) x$

  + $display(integral) frac(2 dot.op 3^x - 5 dot.op 2^x, 3^x) thin upright(d) x$

  + $display(integral) (frac(3, 1 + x^2) - 2 / sqrt(1 - x^2)) thin upright(d) x$

  + $display(integral) frac(2 + x^2, 1 + x^2) thin upright(d) x$

  + $display(integral) frac(thin upright(d) x, x^2 (1 + x^2))$

  + $display(integral) frac(thin upright(d) x, x^2 (a^2 + x^2))$

  + $display(integral) 3^x e^x thin upright(d) x$

  ]

+ #block(sticky: true)[利用三角恒等式, 计算下列不定积分:]

  #cols(2)[
  + $display(integral) tan^2 x thin upright(d) x$

  + $display(integral) frac(cos 2 x, cos x - sin x) thin upright(d) x$

  + $display(integral) frac(2 + sin^2 x, cos^2 x) thin upright(d) x$

  + $display(integral) sin^2 x thin upright(d) x$

  + $display(integral) cos^2 x thin upright(d) x$

  + $display(integral) cos k x cos ell x thin upright(d) x$

  + $display(integral) sin 2 x cos 5 x thin upright(d) x$

  + $display(integral) frac(thin upright(d) t, sin^2 t cos^2 t)$

  + $display(integral) sin^3 x thin upright(d) x$

  + $display(integral) cos^3 x thin upright(d) x$

  ]

+ 若 $display(integral) f\(t\)thin upright(d) t = F\(t\)+ C$, 求证 $ integral f\(a x + b\)thin upright(d) x = 1 / a F\(a x + b\)+ C $

+ 若 $frac(thin upright(d) y, thin upright(d) x) = 4 x - 6$, 且当 $x = 0$ 时，$y = 9$, 求 $y$ 的极小值．

+ 若 $frac(thin upright(d) y, thin upright(d) x) = a x + b$, 求原函数 $y = f\(x\)$ 使其满足下列条件：

  + 当 $x = 0$ 时，$y = 5$\;

  + 积分曲线向下凸且曲线 $y = f\(x\)$ 在 $x$ 轴上截得的弦长等于4;

  + 曲线 $y = f\(x\)$ 上纵坐标的最小值等于 $- 4$.

+ 试求一个次数最低的多项式，使之当 $x = 1$ 时，有最大值6，而当 $x = 3$ 时，有最小值2.

+ 求下列各式的极限：

  + $limits(lim)_(n arrow.r oo) frac(root(n, e) + root(n, e^2) + dots.h.c + root(n, e^n), n)$

  + $limits(lim)_(n arrow.r oo) frac(root(n, e) + root(n, e^2) + dots.h.c + root(n, e^(2 n)), n)$

]
== 不定积分的计算方法
从上一节看到，虽然利用积分运算法则及基本积分表可以求出不少函数的原函数，但是实际遇到的积分仅凭这一些方法还不能完全解决，本节将介绍几种典型的方法，利用这些方法，我们就可以计算更多的不定积分，此外，我们还制作了较为详细的积分表，可供使用时查阅．

=== 第一换元法
有一些不定积分，将积分变量进行某种变换后就能由基本积分公式求出，例如求 $display(integral) e^(2 x) thin upright(d) x$, 在基本积分公式中只有 $display(integral) e^x thin upright(d) x$, 没有直接求出它的公式，我们看到所求积分的被积函数 $e^(2 x)$ 是 $y = e^u$ 和 $u = 2 x$ 的复合函数，如果在积分表达式 $e^(2 x) thin upright(d) x$ 中，把被积函数看成中间变量 $u$ 的函数，即设 $u = 2 x$ 则 $e^(2 x) = e^u$, 从而 $thin upright(d) u = 2 thin upright(d) x$, 由此可见只要再给微分 $thin upright(d) x$ 凑上一个常数因子2, 就得到中间变量 $u$ 的微分 $thin upright(d) u$, 于是 $ integral e^(2 x) thin upright(d) x = integral e^(2 x) dot.op 1 / 2 thin upright(d)\(2 x\)= 1 / 2 integral e^u thin upright(d) u = 1 / 2 e^u + C $ #noindent;然后再代回原来的积分变量，得 $ integral e^(2 x) thin upright(d) x = 1 / 2 e^(2 x) + C $

#example[
求 $display(integral) frac(thin upright(d) x, sqrt(a^2 - x^2)) quad\(a > 0\)$

]
#solution[
因为被积函数 $1 / sqrt(a^2 - x^2) = frac(1, a sqrt(1 - (x / a)^2))$ 是 $y = frac(1, a sqrt(1 - u^2))$ 和 $u = x / a$ 的复合函数，且 $thin upright(d) u = 1 / a thin upright(d) x$⁠，于是 $ integral frac(thin upright(d) x, sqrt(a^2 - x^2)) = integral frac(thin upright(d) x, a sqrt(1 - (x / a)^2)) & = integral frac(1 / a thin upright(d) x, sqrt(1 - (x / a)^2))\
upright("令") u = x / a arrow.r & = integral frac(thin upright(d) u, sqrt(1 - u^2))\
upright("查表") arrow.r & = arcsin u + C\
u = x / a arrow.r & = arcsin x / a + C $

]
#example[
求 $display(integral) tan x thin upright(d) x$

]
#solution[
$ display(integral) tan x thin upright(d) x = display(integral) frac(sin x, cos x) thin upright(d) x & = - integral frac(thin upright(d) cos x, cos x)\
u = cos x arrow.r & = - integral frac(thin upright(d) u, u)\
 & = - ln thin \|u\|+ C = - ln thin \|cos x\|+ C = ln thin \|sec x\|+ C $

]
从上述两例看到，在求不定积分时，首先要与已知的基本积分公式相对比，并利用简单的变量代换，把要求的积分凑成公式所具有的形式，求出以后，再把原来的变量代回．以上变量代换中关键的一步是把原来的被积函数 $f\(x\)$ 的某部分 $phi\(x\)$ 换成中间变量 $u$, 那么原来的被积表达式 $f\(x\)thin upright(d) x$ 就拆成了 $g\[phi\(x\)\]= g\(u\)$ 和 $phi'\(x\)thin upright(d) x = thin upright(d) u$ 这两部分的乘积，即 $ f\(x\)thin upright(d) x = g\[phi\(x\)\]phi'\(x\)thin upright(d) x = g\(u\)thin upright(d) u $ #noindent;于是：若 $display(integral) g\(x\)thin upright(d) x = F\(x\)+ C$⁠，那么 $ integral g\[phi\(x\)\]phi'\(x\)thin upright(d) x = integral g\(u\)thin upright(d) u = F\(u\)+ C = F\[phi\(x\)\]+ C $ #noindent;上述换元法叫做第一换元法．

#example[
求 $display(integral) sin^3 x thin upright(d) x$

]
#solution[
设 $u = cos x$⁠，$thin upright(d) u = - sin x thin upright(d) x$⁠，于是 $ display(integral) sin^3 x thin upright(d) x & = integral\(1 - cos^2 x\)dot.op sin x thin upright(d) x\
u = cos x arrow.r & = - integral\(1 - u^2\)thin upright(d) u\
 & = - u + u^3 / 3 + C = frac(cos^3 x, 3) - cos x + C $

]
对换元积分法较熟练以后，所设换元变量 $u$ 可以不写出．

#example[
求 $display(integral) frac(thin upright(d) x, sqrt(a x + b))$

]
#solution[
$ display(integral) frac(thin upright(d) x, sqrt(a x + b)) = 1 / a integral frac(thin upright(d)\(a x + b\), sqrt(a x + b)) = 2 / a sqrt(a x + b) + C $

]
#example[
求 $display(integral) frac(thin upright(d) x, a^2 - x^2)$

]
#solution[
$ display(integral) frac(thin upright(d) x, a^2 - x^2) & = frac(1, 2 a) integral (frac(1, a - x) + frac(1, a + x)) thin upright(d) x\
 & = frac(1, 2 a) [- integral frac(thin upright(d)\(a - x\), a - x) + integral frac(thin upright(d)\(a + x\), a + x)]\
 & = frac(1, 2 a) [- ln thin \| a - x \| + ln thin \| a + x \|] = frac(1, 2 a) ln lr(|frac(a + x, a - x)|) + C $

]
#example[
求 $display(integral) sec x thin upright(d) x$

]
#solution[
$ display(integral) sec x thin upright(d) x = integral frac(cos x, cos^2 x) thin upright(d) x = integral frac(thin upright(d)\(sin x\), 1 - sin^2 x) $ #noindent;利用上题结果，得：$ integral sec x thin upright(d) x & = 1 / 2 ln lr(|frac(1 + sin x, 1 - sin x)|) + C\
 & = 1 / 2 ln frac(1 + sin x, 1 - sin x) + C\
 & = 1 / 2 ln frac(\(1 + sin x\)^2, cos^2 x) + C\
 & = ln thin \|sec x + tan x\|+ C $

]
#example[
求 $display(integral) frac(1, sin^2 x + 3 cos^2 x) thin upright(d) x$

]
#solution[
$ display(integral) frac(1, sin^2 x + 3 cos^2 x) thin upright(d) x & = display(integral) frac(1, \(tan^2 x + 3\)cos^2 x) thin upright(d) x\
 & = integral frac(thin upright(d)\(tan x\), tan^2 x + (sqrt(3))^2) = 1 / sqrt(3) integral frac(thin upright(d) (frac(tan x, sqrt(3))), (frac(tan x, sqrt(3)))^2 + 1)\
 & = 1 / sqrt(3) arctan (frac(tan x, sqrt(3))) + C $

]
#exercise[
求下列不定积分：

#cols(2)[
+ $display(integral)\(3 x + 5\)^100 thin upright(d) x$

+ $display(integral) pi e^(- tfrac(pi, 4) x) thin upright(d) x$

+ $display(integral) frac(ln x, x) thin upright(d) x$

+ $display(integral) 1 / x^2 dot.op e^(tfrac(1, x)) thin upright(d) x$

+ $display(integral) frac(cos sqrt(x), sqrt(x)) thin upright(d) x$

+ $display(integral) frac(1, \(arcsin x\)^2 sqrt(1 - x^2)) thin upright(d) x$

+ $display(integral) frac(thin upright(d) x, x^2 + a^2)$

+ $display(integral) frac(thin upright(d) x, x^2 - a^2)$

+ $display(integral) 1 / sqrt(x) e^(sqrt(x)) thin upright(d) x$

+ $display(integral) frac(2 a x + b, 2 sqrt(a x^2 + b x + c)) thin upright(d) x$

+ $display(integral) frac(1, 1 + e^x) thin upright(d) x$

]
#block[
]
#cols(2)[
#block[
#set enum(numbering: enum-at(1, none, start: 12))
+ $display(integral) frac(e^x, e^(2 x) + 1) thin upright(d) x$

+ $display(integral) frac(cos x, e^(sin x)) thin upright(d) x$

+ $display(integral) frac(thin upright(d) x, cos^2 x sqrt(tan x))$

+ $display(integral) frac(cos a x, b - sin a x) thin upright(d) x quad\(a eq.not 0\)$

+ $display(integral) x sqrt(a x^2 + c) thick thin upright(d) x$

+ $display(integral) frac(sin^2 x cos x thin upright(d) x, 1 + sin x)$

+ $display(integral) frac(sqrt(arctan x), 1 + x^2) thin upright(d) x$

+ $display(integral) frac(1, 1 + sin x) thin upright(d) x$
]

]
#block[
]
#cols(2)[
#block[
#set enum(numbering: enum-at(1, none, start: 20))
+ $display(integral) frac(sqrt(1 + cos x), sin x) thin upright(d) x$

+ $display(integral) frac(thin upright(d) x, x^2 + x - 6)$

+ $display(integral) frac(x thin upright(d) x, 3 x^2 + x + 2)$

+ $display(integral) frac(thin upright(d) x, 3 x^2 + x + 2)$

+ $display(integral) cot x thin upright(d) x$

+ $display(integral) frac(thin upright(d) x, sin x)$

+ $display(integral) frac(arcsin x, sqrt(1 - x^2)) thin upright(d) x$
]

]
#block[
]
]
=== 第二换元积分法
有些积分不能很容易地凑出微分，而是一开始就要作代换，把要求的积分化简，然后再求积分．

#example[
求 $display(integral) frac(1, 1 + sqrt(x)) thin upright(d) x$.

]
#solution[
这个积分的表达式不容易拆成中间变量 $u = phi\(x\)$ 的函数 $g\(phi\(x\)\)= g\(u\)$ 和中间变量的微分 $phi'\(x\)thin upright(d) x = thin upright(d) u$ 的乘积，因此前面的第一换元法对此题用起来不便．这时我们设法作一个代换，以便把被积函数中的根号去掉，化成新变量的有理式．

令 $x = u^2$, 即作代换 $sqrt(x) = u$, 于是 $ frac(1, 1 + sqrt(x)) & = frac(1, 1 + u)\
thin upright(d) x & = 2 u thin upright(d) u $ #noindent;从而 $ display(integral) frac(1, 1 + sqrt(x)) thin upright(d) x & = integral frac(1, 1 + u) 2 u thin upright(d) u\
 & = 2 integral frac(\(1 + u\)- 1, 1 + u) thin upright(d) u\
 & = 2 [integral thin upright(d) u - integral frac(1, 1 + u) thin upright(d) u]\
 & = 2 [u - ln thin \| 1 + u \|] + C\
 & = 2 [sqrt(x) - ln (1 + sqrt(x))] + C $

]
这里由于把积分变量 $x$ 换成了 $u$ 的函数 $x = u^2$, 因此在最后结果中，用变量 $u$ 表出的函数，还要还原成 $x$ 的函数，这就要求从所作的代换 $x = u^2$ 中解出反函数 $u = sqrt(x)$ 来．

我们把第二换元积分法用定理形式叙述如下：

#blk[定理][
设 $x = phi\(u\)$ 是可微函数，且 $phi'\(u\)eq.not 0$⁠，若#numbered-eq($ integral f\[phi\(u\)\]phi'\(u\)thin upright(d) u = F\(u\)+ C $);#noindent;那么#numbered-eq($ integral f\(x\)thin upright(d) x = F [phi^(- 1) \( x \)] + C $);

]
#proof[
只须证明 $frac(thin upright(d), thin upright(d) x) F\[phi^(- 1)\(x\)\]= f\(x\)$ 即可．

因为 $phi'\(u\)eq.not 0$⁠，故 $x = phi\(u\)$ 的反函数 $u = phi^(- 1)\(x\)$ 存在，于是 $ frac(thin upright(d), thin upright(d) x) F\[phi^(- 1)\(x\)\] & = frac(thin upright(d), thin upright(d) u) F\[phi^(- 1)\(x\)\]dot.op frac(thin upright(d), thin upright(d) x) phi^(- 1)\(x\)\
 & = frac(thin upright(d), thin upright(d) u) F\(u\)dot.op frac(1, frac(thin upright(d), thin upright(d) u) phi\(u\))\
 & = F'\(u\)dot.op frac(1, phi'\(u\))\
upright("由(4.8)") arrow.r & = lr(\{ f \[ phi \( u \) \] phi' \( u \) \}) dot.op frac(1, phi'\(u\))\
 & = f\[phi\(u\)\]\
x = phi\(u\)arrow.r & = f\(x\) $

]
#example[
求 $display(integral) frac(thin upright(d) x, sqrt(x) + root(3, x))$.

]
#solution[
$ display(integral) frac(thin upright(d) x, sqrt(x) + root(3, x)) = integral frac(thin upright(d) x, (root(6, x))^3 + (root(6, x))^2) $ #noindent;设 $x = u^6$⁠，$u > 0$⁠，则可化去被积函数中的根号，于是 $ frac(1, sqrt(x) + root(3, x)) = frac(1, u^3 + u^2)\,#h(2em) thin upright(d) x = 6 u^5 thin upright(d) u $ #noindent;从而 $ display(integral) frac(thin upright(d) x, sqrt(x) + root(3, x)) & = integral frac(6 u^5, u^3 + u^2) thin upright(d) u = integral frac(6 u^3, u + 1) thin upright(d) u\
 & = 6 integral (u^2 - u + 1 - frac(1, u + 1)) thin upright(d) u\
 & = 6 lr(\{ u^3 / 3 - u^2 / 2 + u - ln thin \| u + 1 \| \}) + C\
 & = 2 sqrt(x) - 3 root(3, x) + 6 root(6, x) - 6 ln (root(6, x) + 1) + C $

]
#example[
求 $display(integral) frac(x + 1, root(3, 3 x + 1)) thin upright(d) x$.

]
#solution[
设 $3 x + 1 = t^3$⁠，即 $x = 1 / 3\(t^3 - 1\)$⁠，于是：$thin upright(d) x = t^2 thin upright(d) t$ $ display(integral) frac(x + 1, root(3, 3 x + 1)) thin upright(d) x & = integral frac(1 / 3\(t^3 - 1\)+ 1, t) t^2 thin upright(d) t\
 & = 1 / 3 integral\(t^4 + 2 t\)thin upright(d) t\
 & = 1 / 3 (1 / 5 t^5 + t^2) + C = 1 / 15\(3 x + 1\)^(tfrac(5, 3)) + 1 / 3\(3 x + 1\)^(tfrac(2, 3)) + C\
 & = 1 / 5\(x + 2\)\(3 x + 1\)^(tfrac(2, 3)) + C $

]
上面所介绍的两种变量代换法的基本思想是一致的．第一种是把被积函数中的一个小部分看作一个变量，即“化繁为简”；第二种则把积分变量代以一个新变量的函数，表面上看来是“化简为繁”，但实际上克服了求积分的困难．应当注意，在使用第二种变量代换法时，要保证变换是可微的和一对一的，否则会出现错误（反例见4.1）．

下面介绍当被积函数含有二次根式 $sqrt(a^2 - x^2)$, $sqrt(a^2 + x^2)$, $sqrt(x^2 - a^2)$ 时，怎样作代换．

#example[
求 $display(integral) sqrt(a^2 - x^2) thin upright(d) x quad\(a > 0\)$.

]
#solution[
因为$ sqrt(a^2 - x^2) = sqrt(a^2 (1 - x^2 / a^2)) = a sqrt(1 - (x / a)^2) $ #noindent;所以可作正弦代换 $ x / a = sin t quad (- pi / 2 lt.eq t lt.eq pi / 2) $ #noindent;$sin t$ 在 $[- pi / 2 \, pi / 2]$ 上连续且递增，有反函数 $t = arcsin x / a\,thick - a lt.eq x lt.eq a$. 于是 $ thin upright(d) x & = thin upright(d)\(a sin t\)= a cos t thin upright(d) t\
sqrt(a^2 - x^2) & = a sqrt(1 - (x / a)^2) = a sqrt(1 - sin^2 t) = a cos t $ #noindent;从而：$ display(integral) sqrt(a^2 - x^2) thin upright(d) x & = integral a cos t dot.op a cos t thin upright(d) t = a^2 integral cos^2 t thin upright(d) t\
 & = a^2 integral frac(1 + cos 2 t, 2) thin upright(d) t = a^2 / 2 [integral thin upright(d) t + 1 / 2 integral cos 2 t thin upright(d) \( 2 t \)]\
 & = a^2 / 2 (t + 1 / 2 sin 2 t) + C = a^2 / 2 (t + sin t cos t) + C\
 & = a^2 / 2 [arcsin x / a + x / a sqrt(1 - (x / a)^2) + C]\
 & = a^2 / 2 arcsin x / a + x / 2 sqrt(a^2 - x^2) + C $

]
#example[
求 $display(integral) frac(thin upright(d) x, sqrt(a^2 + x^2)) quad\(a > 0\)$.

]
#solution[
因为 $sqrt(a^2 + x^2) = a sqrt(1 + (x / a)^2)$⁠，设 $x / a = tan t thick (- pi / 2 < t < pi / 2)$⁠，则存在反函数 $ t = arctan x / a\,quad upright("且") quad thin upright(d) x = a sec^2 t thin upright(d) t $ #noindent;又 $sqrt(a^2 + x^2) = a sqrt(1 + tan^2 t) = a sec t$⁠，从而：$ display(integral) frac(thin upright(d) x, sqrt(a^2 + x^2)) & = integral frac(a sec^2 t thin upright(d) t, a sec t) = integral sec t thin upright(d) t\
 & = ln thin \|sec t + tan t\|+ C_1\
 & = ln lr(|1 / a sqrt(a^2 + x^2) + x / a|) + C_1\
 & = ln lr(|x + sqrt(a^2 + x^2)|) - ln a + C_1\
 & = ln lr(|x + sqrt(a^2 + x^2)|) + C #h(2em)\(C = C_1 - ln a\) $

]
#example[
求 $display(integral) frac(thin upright(d) x, sqrt(x^2 - a^2)) quad\(a > 0\)$

]
#solution[
#align(center)[
#fig("7-05");

]
作正割代换．设 $x = a sec t thick (0 < t < pi / 2)$⁠，此函数在 $t = pi / 2$ 点间断，在区间 $lr([0 \, pi / 2))$ 上由 $a$ 递增到 $+ oo$⁠，而在区间 $lr((pi / 2 \, pi])$ 上由 $- oo$ 递增到 $- a$⁠．因此，$x = a sec t$ 在 $lr([0 \, pi / 2))$ 上的反函数是 $ t = op("arcsec") x / a quad (1 < x / a < oo \, thick upright("即") x > a) $ #noindent;于是，当 $x > a$ 时，有 $ sqrt(x^2 - a^2) & = sqrt(a^2 sec^2 t - a^2) = sqrt(a^2\(sec^2 t - 1\))\
 & = a sqrt(tan^2 t) = a\|tan t\|\
 & = a tan t quad (0 lt.eq t < pi / 2) $ $ thin upright(d) x = thin upright(d)\(a sec t\)= a frac(sin t, cos^2 t) thin upright(d) t $ #noindent;从而：$ display(integral) 1 / sqrt(x^2 - a^2) thin upright(d) x & = integral frac(1, a tan t) dot.op frac(a sin t, cos^2 t) thin upright(d) t\
 & = integral frac(1, cos t) thin upright(d) t = ln thin \|sec t + tan t\|+ C_1\
 & = ln lr(|x / a + sqrt(x^2 - a^2) / a|) + C_1\
 & = ln lr(|x + sqrt(x^2 - a^2)|) + C_1 - ln a = ln lr(|x + sqrt(x^2 - a^2)|) + C $ #noindent;其中 $C = C_1 - ln a$.

又函数 $x = a sec t$ 在 $lr((pi / 2 \, pi])$ 上的反函数是 $ t = op("arcsec") x / a quad (- oo < x / a < - 1 \, thick upright("即") x < - a) $ #noindent;于是，当 $x < - a$ 时，有 $ sqrt(x^2 - a^2) = a sqrt(tan^2 t) = a\|tan t\|= - a tan t quad (pi / 2 < t lt.eq pi)\
thin upright(d) x = thin upright(d)\(a sec t\)= a frac(sin t, cos^2 t) dot.op thin upright(d) t $ $ display(integral) 1 / sqrt(x^2 - a^2) thin upright(d) x & = integral - frac(1, a tan t) dot.op frac(a sin t, cos^2 t) thin upright(d) t\
 & = - integral frac(1, cos t) thin upright(d) t = - ln thin \|sec t + tan t\|+ C_2\
 & = - ln lr(|x / a - sqrt(x^2 - a^2) / a|) + C_2\
 & = - ln lr(|x - sqrt(x^2 - a^2)|) + C_2 + ln a\
 & = ln lr(|frac(1, x - sqrt(x^2 - a^2))|) + C' #h(2em)\(C' = C_2 + ln a\)\
 & = ln lr(|frac(x + sqrt(x^2 - a^2), a^2)|) + C' = ln lr(|x + sqrt(x^2 - a^2)|) + C' - ln a^2\
 & = ln lr(|x + sqrt(x^2 - a^2)|) + C'' #h(2em)\(C'' = C' - ln a^2\) $ #noindent;因此，不论 $x > a$ 或 $x < - a$⁠，都有 $ integral frac(thin upright(d) x, sqrt(x^2 - a^2)) = ln lr(|x + sqrt(x^2 - a^2)|) + C $

]
到现在为止，我们又得到四个重要的不定积分公式：

#blk[][
#numbered-align(($display(integral) frac(thin upright(d) x, a^2 + x^2)$, $eqph = 1 / a arctan x / a + C$, true), ($display(integral) frac(thin upright(d) x, a^2 - x^2)$, $eqph = frac(1, 2 a) ln lr(|frac(a + x, a - x)|) + C$, true), ($display(integral) frac(thin upright(d) x, sqrt(a^2 - x^2))$, $eqph = arcsin x / a + C$, true), ($display(integral) frac(thin upright(d) x, sqrt(x^2 plus.minus a^2))$, $eqph = ln lr(|x + sqrt(x^2 plus.minus a^2)|) + C$, true));

]
利用这些公式可以进一步求出许多不定积分．

#blk[类型A][
$ integral frac(thin upright(d) x, a x^2 + b x + c) $

]
如果被积函数的分母可以分解因式，则把被积函数分解成部分分式，就很容易分项求出不定积分．

如分母不能分解因式，那么将它配方得 $ a x^2 + b x + c = a (x + frac(b, 2 a))^2 + frac(4 a c - b^2, 4 a) $ #noindent;于是

- 当 $4 a c > b^2$ 时，上面不定积分归结到 (4.10);

- 当 $4 a c < b^2$ 时，上面不定积分归结到 (4.11).

#example[
求 $display(integral) frac(thin upright(d) x, 3 x^2 + x - 1)$.

]
#solution[
$ display(integral) frac(thin upright(d) x, 3 x^2 + x - 1) & = 1 / 3 integral frac(thin upright(d) x, (x + 1 / 6)^2 - 13 / 36)\
 & = 1 / 3 frac(1, 2 sqrt(13 / 36)) ln lr(|frac(x + 1 / 6 - sqrt(13) / 6, x + 1 / 6 + sqrt(13) / 6)|) + C\
 & = 1 / sqrt(13) ln lr(|frac(6 x + 1 - sqrt(13), 6 x + 1 + sqrt(13))|) + C $

]
#blk[类型B][
$ integral frac(p x + q, a x^2 + b x + c) thin upright(d) x $

]
注意到 $frac(thin upright(d), thin upright(d) x)\(a x^2 + b x + c\)= 2 a x + b$⁠，被积函数的分子可以写成 $ p x + q = frac(p, 2 a)\(2 a x + b\)+ q - frac(p b, 2 a) $ #noindent;于是 $ integral frac(p x + q, a x^2 + b x + c) thin upright(d) x = frac(p, 2 a) integral frac(2 a x + b, a x^2 + b x + c) thin upright(d) x + (q - frac(b p, 2 a)) integral frac(thin upright(d) x, a x^2 + b x + c) $ #noindent;等式右端第一项是 $frac(p, 2 a) ln\(a x^2 + b x + c\)$⁠，第二项可归结到类型A.

#example[
求 $display(integral) frac(5 x - 1, 3 x^2 + x + 2) thin upright(d) x$.

]
#solution[
$ display(integral) frac(5 x - 1, 3 x^2 + x + 2) thin upright(d) x & = 5 / 6 integral frac(6 x + 1, 3 x^2 + x + 2) thin upright(d) x - 11 / 6 integral frac(thin upright(d) x, 3 x^2 + x + 2)\
 & = 5 / 6 ln\(3 x^2 + x + 2\)- 11 / 6 dot.op 1 / 3 dot.op integral frac(thin upright(d) x, (x + 1 / 6)^2 + 23 / 36)\
 & = 5 / 6 ln\(3 x^2 + x + 2\)- 11 / 6 dot.op 1 / 3 dot.op 6 / sqrt(23) arctan frac(6 x + 1, sqrt(23)) + C\
 & = 5 / 6 ln\(3 x^2 + x + 2\)- frac(11, 3 sqrt(23)) arctan frac(6 x + 1, sqrt(23)) + C $

]
#blk[类型C][
$ integral frac(thin upright(d) x, sqrt(a x^2 + b x + c)) $

]
- 若 $a > 0$, 则被积函数的根底式经配方后，所求积分可归结到积分公式 (4.13);

- 若 $a < 0$, 则此积分可归结到积分公式 (4.12).

#example[
求 $display(integral) frac(thin upright(d) x, sqrt(2 + x - 3 x^2))$

]
#solution[
$ display(integral) frac(thin upright(d) x, sqrt(2 + x - 3 x^2)) & = 1 / sqrt(3) integral frac(thin upright(d) x, sqrt(2 / 3 + 1 / 3 x - x^2))\
 & = 1 / sqrt(3) integral frac(thin upright(d) x, sqrt(25 / 36 - (x - 1 / 6)^2))\
 & = 1 / sqrt(3) arcsin frac(x - 1 / 6, 5 / 6) + C\
 & = 1 / sqrt(3) arcsin frac(6 x - 1, 5) + C $

]
#blk[类型D][
$ integral frac(p x + q, sqrt(a x^2 + b x + c)) thin upright(d) x $

]
被积函数的分子可写成 $ p x + q = frac(p, 2 a)\(2 a x + b\)+ q - frac(p b, 2 a) $ #noindent;所以 $ integral frac(p x + q, sqrt(a x^2 + b x + c)) thin upright(d) x = frac(p, 2 a) integral frac(2 a x + b, sqrt(a x^2 + b x + c)) thin upright(d) x + (q - frac(p b, 2 a)) integral frac(thin upright(d) x, sqrt(a x^2 + b x + c)) $ #noindent;等式右端第一个积分等于被积函数的分母的2倍，即 $2 sqrt(a x^2 + b x + c)$, 第二个是类型C的积分．

#example[
求 $display(integral) frac(5 x - 1, sqrt(3 x^2 + x + 2)) thin upright(d) x$.

]
#solution[
$ display(integral) frac(5 x - 1, sqrt(3 x^2 + x + 2)) thin upright(d) x & = 5 / 6 integral frac(6 x + 1, sqrt(3 x^2 + x + 2)) thin upright(d) x - 11 / 6 integral frac(thin upright(d) x, sqrt(3 x^2 + x + 2))\
 & = 5 / 6 dot.op 2 sqrt(3 x^2 + x + 2)\
 & #h(2em) eqph - 11 / 6 dot.op 1 / sqrt(3) ln [x + 1 / 6 + sqrt((x + 1 / 6)^2 + 23 / 36)] + C\
 & = 5 / 3 sqrt(3 x^2 + x + 2) - frac(11, 6 sqrt(3)) ln [x + 1 / 6 + sqrt((x + 1 / 6)^2 + 23 / 36)] + C $

]
#blk[类型E][
$ integral frac(thin upright(d) x, x sqrt(a x^2 + b x + c)) $

]
作变量代换 $x = 1 / y$⁠，所求积分可化为类型C．因为 $thin upright(d) x = - 1 / y^2 thin upright(d) y$⁠，并且 $ integral frac(thin upright(d) x, x sqrt(a x^2 + b x + c)) = integral frac(- 1 / y^2 thin upright(d) y, 1 / y sqrt(a / y^2 + b / y + c)) = - integral frac(thin upright(d) y, sqrt(a + b y + c y^2)) $

#example[
求 $display(integral) frac(thin upright(d) x, x sqrt(x^2 + x + 1))$

]
#solution[
$ display(integral) frac(thin upright(d) x, x sqrt(x^2 + x + 1)) & = integral frac(- 1 / y^2 thin upright(d) y, 1 / y sqrt(1 / y^2 + 1 / y + 1)) = - integral frac(thin upright(d) y, sqrt(y^2 + y + 1))\
 & = - integral frac(thin upright(d) y, sqrt((y + 1 / 2)^2 + 3 / 4))\
 & = - ln [y + 1 / 2 + sqrt((y + 1 / 2)^2 + 3 / 4)] + C\
 & = - ln [y + 1 / 2 + sqrt(y^2 + y + 1)] + C\
 & = - ln [1 / x + 1 / 2 + sqrt(1 / x^2 + 1 / x + 1)] + C\
 & = - ln frac(2 + x + 2 sqrt(x^2 + x + 1), 2 x) + C $

]
#exercise[
+ #block(sticky: true)[求下列不定积分：]

  #cols(2)[
  + $display(integral) frac(1, 1 + root(3, x)) thin upright(d) x$

  + $display(integral) frac(1, \(x + 2\)sqrt(x + 1)) thin upright(d) x$

  + $display(integral) x / root(3, 1 - x) thin upright(d) x$

  + $display(integral) frac(sqrt(x), root(3, x^2) - root(4, x)) thin upright(d) x$

  + $display(integral) sqrt(x^2 - a^2) / x thin upright(d) x$

  + $display(integral) sqrt(x^2 - a^2) / x^2 thin upright(d) x$

  + $display(integral) sqrt(a^2 - x^2) / x thin upright(d) x$

  + $display(integral) sqrt(a^2 - x^2) / x^2 thin upright(d) x$

  + $display(integral) x^2 / sqrt(1 - x^2) thin upright(d) x$

  + $display(integral) frac(1, x^4 sqrt(1 + x^2)) thin upright(d) x$

  ]

+ #block(sticky: true)[求下列不定积分：]

  #cols(2)[
  + $display(integral) 1 / sqrt(4 x^2 + 6 x) thin upright(d) x$

  + $display(integral) x / sqrt(4 x^2 + 6 x) thin upright(d) x$

  + $display(integral) 1 / sqrt(1 - x - 4 x^2) thin upright(d) x$

  + $display(integral) frac(x + 1, sqrt(1 - x - 4 x^2)) thin upright(d) x$

  + $display(integral) frac(1, x sqrt(x^2 + 1)) thin upright(d) x$

  + $display(integral) frac(1, x sqrt(1 - x^2)) thin upright(d) x$

  + $display(integral) frac(1, x sqrt(x^2 - 4 x)) thin upright(d) x$

  + $display(integral) sqrt(frac(x - 1, x + 1)) thin upright(d) x$

  ]

]
=== 有理函数的积分
如果 $P\(x\)$, $Q\(x\)$ 是两个多项式，则 $display(integral) frac(P\(x\), Q\(x\)) thin upright(d) x$ 可以化归为下列类型的积分：

#align(center)[
#table(
  columns: (30% + 12pt, 30% + 12pt,),
  align: (left + top, left + top,),
  [$display(integral) frac(A thin upright(d) x, x - a)$],
  [$display(integral) frac(A thin upright(d) x, \(x - a\)^n)$],
  [$display(integral) frac(p x + q, x^2 + b x + c) thin upright(d) x$],
  [$display(integral) frac(p x + q, (x^2 + b x + c)^n) thin upright(d) x$],
);

]
对这些积分，我们是有办法的．下面我们通过举例来说明求这些积分的大概的方法．

如果有理分式的分子次数高于分母的次数时，则只要作一次除法就可以把它写成一个多项式与一个真分式的和，而前者是容易求积的．所以我们只须注意真分式的积分如何求．

#example[
求 $display(integral) frac(x^3 + x + 1, x^2 + 1) thin upright(d) x$

]
#solution[
$ display(integral) frac(x^3 + x + 1, x^2 + 1) thin upright(d) x & = integral (x + frac(1, x^2 + 1)) thin upright(d) x\
 & = integral x thin upright(d) x + integral frac(thin upright(d) x, 1 + x^2)\
 & = x^2 / 2 + arctan x + C $

]
#example[
求 $display(integral) frac(thin upright(d) x, x^4 - 1)$

]
#solution[
$because quad x^4 - 1 =\(x - 1\)\(x + 1\)\(x^2 + 1\)$

$therefore quad frac(1, x^4 - 1) = frac(A, x - 1) + frac(B, x + 1) + frac(C x + D, x^2 + 1)$

把等式右端通分，再比较两端系数，于是等式 $ A\(x^2 + 1\)\(x + 1\)+ B\(x^2 + 1\)\(x - 1\)+\(C x + D\)\(x^2 - 1\)= 1 $ #noindent;的左边多项式的 $x^3\,x^2\,x$ 的系数应为零，常数项应为1, 从而得到

#numcases($$, $A + B + C = 0$, $A - B + D = 0$, $A + B - C = 0$, $A - B - D = 1$);

#noindent;由 $\(4.14\)+\(4.16\)$ 和 $\(4.15\)+\(4.17\)$ 得到：$ A + B = 0\,#h(2em) A - B = 1 / 2 $ #noindent;解得：$ A = 1 / 4\,quad B = - 1 / 4\,quad C = 0\,quad D = - 1 / 2 $ #noindent;即：$ frac(1, x^4 - 1) = frac(1, 4\(x - 1\)) - frac(1, 4\(x + 1\)) - frac(1, 2\(x^2 + 1\)) $ #noindent;从而 $ integral frac(thin upright(d) x, x^4 - 1) & = 1 / 4 integral frac(thin upright(d) x, x - 1) - 1 / 4 integral frac(thin upright(d) x, x + 1) - 1 / 2 integral frac(thin upright(d) x, 1 + x^2)\
 & = 1 / 4 ln lr(|frac(x - 1, x + 1)|) - 1 / 2 arctan x + C $

]
#example[
求 $display(integral) frac(3 x^2 + x - 2, \(x - 2\)^2\(1 - 2 x\)) thin upright(d) x$

]
#solution[
设 $frac(3 x^2 + x - 2, \(x - 2\)^2\(1 - 2 x\)) = frac(A, 1 - 2 x) + frac(B, x - 2) + frac(C, \(x - 2\)^2)$⁠，则 $ 3 x^2 + x - 2 = A\(x - 2\)^2 + B\(1 - 2 x\)\(x - 2\)+ C\(1 - 2 x\) $

令 $1 - 2 x = 0$⁠，则 $A = - 1 / 3$⁠；令 $x - 2 = 0$⁠，则 $C = - 4$. 比较等式两端 $x^2$ 的系数，得 $ 3 = A - 2 B quad arrow.r.double quad B = - 5 / 3 $ #noindent;所以 $ frac(3 x^2 + x - 2, \(x - 2\)^2\(1 - 2 x\)) = - frac(1, 3\(1 - 2 x\)) - frac(5, 3\(x - 2\)) - frac(4, \(x - 2\)^2) $ #noindent;从而 $ integral frac(3 x^2 + x - 2, \(x - 2\)^2\(1 - 2 x\)) thin upright(d) x & = 1 / 6 integral frac(thin upright(d) x, x - 1 / 2) - 5 / 3 integral frac(thin upright(d) x, x - 2) - 4 integral frac(thin upright(d) x, \(x - 2\)^2)\
 & = 1 / 6 ln lr(|x - 1 / 2|) - 5 / 3 ln thin \|x - 2\|+ frac(4, x - 2) + C $

]
三角函数有理式的积分 $ integral R\(sin x\,cos x\)thin upright(d) x $ #noindent;恒可用“半角变换”法，即设 $t = tan x / 2$ 或 $x = 2 arctan t$ 化为 $t$ 的有理函数的积分．

事实上，由 $t = tan x / 2$, 知 $ sin x & = frac(2 sin x / 2 cos x / 2, sin^2 x / 2 + cos^2 x / 2) = frac(2 tan x / 2, 1 + tan^2 x / 2) = frac(2 t, 1 + t^2)\
cos x & = frac(cos^2 x / 2 - sin^2 x / 2, sin^2 x / 2 + cos^2 x / 2) = frac(1 - tan^2 x / 2, 1 + tan^2 x / 2) = frac(1 - t^2, 1 + t^2) $ #noindent;又由 $x = 2 arctan t$, 知 $ thin upright(d) x = frac(2 thin upright(d) t, 1 + t^2) $ #noindent;于是 $ integral R\(sin x\,cos x\)thin upright(d) x = integral R (frac(2 t, 1 + t^2) \, frac(1 - t^2, 1 + t^2)) dot.op frac(2, 1 + t^2) thin upright(d) t $ #noindent;上式右端是 $t$ 的有理函数.

#example[
求 $display(integral) frac(thin upright(d) theta, sin theta)$.

]
#solution[
令 $t = tan theta / 2$⁠，则：$theta = 2 arctan t\,quad thin upright(d) theta = frac(2 thin upright(d) t, 1 + t^2)$⁠，从而：$ integral frac(thin upright(d) theta, sin theta) = integral frac(1 + t^2, 2 t) dot.op frac(2 thin upright(d) t, 1 + t^2) & = integral frac(thin upright(d) t, t)\
 & = ln thin \|t\|+ C = ln lr(|tan theta / 2|) + C $ #noindent;又 $tan theta / 2 = frac(sin theta / 2, cos theta / 2) = frac(2 sin^2 theta / 2, 2 sin theta / 2 cos theta / 2) = frac(1 - cos theta, sin theta) = csc theta - cot theta$⁠，所以 $ integral frac(thin upright(d) theta, sin theta) = ln lr(|tan theta / 2|) + C = ln thin \|csc theta - cot theta\|+ C $

]
#example[
求 $display(integral) frac(thin upright(d) theta, 3 + 2 cos theta)$

]
#solution[
令 $t = tan theta / 2$⁠，则：$thin upright(d) theta = frac(2 thin upright(d) t, 1 + t^2)$⁠，于是 $ display(integral) frac(thin upright(d) theta, 3 + 2 cos theta) = integral frac(frac(2 thin upright(d) t, 1 + t^2), 3 + 2 frac(1 - t^2, 1 + t^2)) & = integral frac(2 thin upright(d) t, 5 + t^2)\
 & = 2 / sqrt(5) arctan t / sqrt(5) + C\
 & = 2 / sqrt(5) arctan (1 / sqrt(5) tan theta / 2) + C $

]
#exercise[
+ #block(sticky: true)[求下列不定积分:]

  #cols(2)[
  + $display(integral) frac(1, x^2 - 3 x + 2) thin upright(d) x$

  + $display(integral) frac(x, x^2 - 3 x + 2) thin upright(d) x$

  + $display(integral) frac(x^2, x^2 - 3 x + 2) thin upright(d) x$

  + $display(integral) frac(x^2 + 1, x + 3) thin upright(d) x$

  + $display(integral) frac(1, x^2 - 3 x + 1) thin upright(d) x$

  + $display(integral) frac(x, x^2 - 3 x + 1) thin upright(d) x$

  + $display(integral) frac(x^2, x^2 - 3 x + 1) thin upright(d) x$

  ]

+ #block(sticky: true)[求下列不定积分:]

  #cols(2)[
  + $display(integral) frac(cos theta thin upright(d) theta, 1 + sin^2 theta)$

  + $display(integral) frac(sin x + cos x, cos^2 x) thin upright(d) x$

  + $display(integral) frac(thin upright(d) x, 4 cos x + 3 sin x + 5)$

  + $display(integral) frac(sin x, cos x + sin x) thin upright(d) x$

  ]

]
=== 分部积分法
分部积分法是从两个函数乘积的微分公式得到的求积分方法．

设 $u = u\(x\)$, $v = v\(x\)$ 是两个可微函数，乘积 $u dot.op v$ 的微分法则是$ thin upright(d)\(u dot.op v\)= u thin upright(d) v + v thin upright(d) u $ #noindent;移项，得 $u thin upright(d) v = thin upright(d)\(u dot.op v\)- v thin upright(d) u$⁠，两边积分得#numbered-eq($ integral u thin upright(d) v = u dot.op v - integral v thin upright(d) u $);#noindent;公式 (4.18) 表示如果积分 $display(integral) u thin upright(d) v = display(integral) u\(x\)v'\(x\)thin upright(d) x$ 不可能直接求出，就改为求积分 $display(integral) v thin upright(d) u = display(integral) v\(x\)u'\(x\)thin upright(d) x$, 设 $F\(x\)$ 是 $v\(x\)dot.op u'\(x\)$ 的一个原函数，那么 $u\(x\)dot.op v\(x\)- F\(x\)$ 是 $u\(x\)v'\(x\)$ 的一个原函数，用公式 (4.18) 求不定积分的方法叫做#strong[分部积分法]，公式 (4.18) 叫做#strong[分部积分公式]．

#example[
求 $display(integral) x sin 3 x thin upright(d) x$.

]
#solution[
被积函数 $x sin 3 x$ 不能由前面的基本积分表求出它的原函数，我们把 $x sin 3 x$ 分成两部分，设 $u\(x\)= x$, $v'\(x\)= sin 3 x$, 于是 $ integral v'\(x\)thin upright(d) x = integral sin 3 x thin upright(d) x = - frac(cos 3 x, 3) + C $ #noindent;即 $v\(x\)= - frac(cos 3 x, 3)$ 是 $v'\(x\)= sin 3 x$ 的一个原函数，根据公式 (4.18)，有 $ integral x sin 3 x thin upright(d) x & = integral x thin upright(d) (- frac(cos 3 x, 3))\
 & = x (- frac(cos 3 x, 3)) - integral (- frac(cos 3 x, 3)) thin upright(d) x\
 & = - frac(x cos 3 x, 3) + 1 / 3 integral cos 3 x thin upright(d) x\
 & = - frac(x cos 3 x, 3) + frac(sin 3 x, 9) + C $

]
运用公式 (4.18) 时，应首先将被积表达式分成函数 $u\(x\)$ 和微分 $thin upright(d) v = v'\(x\)thin upright(d) x$ 两部分，选取 $u\(x\)$ 和 $v'\(x\)thin upright(d) x$ 的原则是：

- 充当微分部分的 $v'\(x\)thin upright(d) x$, 其 $v'\(x\)$ 的原函数能够比较容易地求出；

- 充当 $u\(x\)$ 的部分经求微商后要化简，以便使积分 $display(integral) v thin upright(d) u$ 较 $display(integral) u thin upright(d) v$ 简单，容易求出结果．

在应用分部积分法求不定积分时，往往要连续使用这个方法多次才能求出最后结果．

我们把能够应用分部积分法求积分的例题分为以下几类：

#blk[类型A][
被积函数是 $x^n e^(a x)$, $x^n sin a x$, $x^n cos a x$, 其中 $x$ 的方幂因子经求微商后降次，而非 $x$ 的方幂因子的原函数是容易求得的．

]
#example[
求 $display(integral) x^2 e^(2 x) thin upright(d) x$.

]
#solution[
$ display(integral) x^2 e^(2 x) thin upright(d) x = display(integral) x^2 thin upright(d) (e^(2 x) / 2) & = frac(x^2 e^(2 x), 2) - display(integral) e^(2 x) / 2 thin upright(d)\(x^2\)\
 & = frac(x^2 e^(2 x), 2) - display(integral) x e^(2 x) thin upright(d) x = frac(x^2 e^(2 x), 2) - (frac(x e^(2 x), 2) - display(integral) e^(2 x) / 2 thin upright(d) x)\
 & = x^2 / 2 e^(2 x) - x / 2 e^(2 x) + e^(2 x) / 4 + C\
 & = e^(2 x) (x^2 / 2 - x / 2 + 1 / 4) + C $

]
#blk[类型B][
被积函数是 $x^n sin^(- 1) x$, $x^n tan^(- 1) x$, $x^n ln x$, 其中乘积中的因子 $tan^(- 1) x$, $ln x$ 的导数是 $x$ 的有理函数，$sin^(- 1) x$ 的导数是 $1 / sqrt(1 - x^2)$⁠，它们的积分可求，而 $x^n$ 的原函数是 $frac(x^(n + 1), n + 1)$.

]
#example[
求 $display(integral) x arctan x thin upright(d) x$.

]
#solution[
$ display(integral) x arctan x thin upright(d) x = display(integral) arctan x thin upright(d) (x^2 / 2) & = frac(x^2 arctan x, 2) - display(integral) x^2 / 2 thin upright(d)\(arctan x\)\
 & = frac(x^2 arctan x, 2) - 1 / 2 display(integral) frac(x^2, 1 + x^2) thin upright(d) x\
 & = frac(x^2 arctan x, 2) - 1 / 2 display(integral) (1 - frac(1, 1 + x^2)) thin upright(d) x\
 & = frac(x^2 arctan x, 2) - 1 / 2 x + 1 / 2 arctan x + C $

]
#example[
求 $display(integral) x^3 ln x thin upright(d) x$.

]
#solution[
$ display(integral) x^3 ln x thin upright(d) x = display(integral) ln x thin upright(d) (x^4 / 4) & = x^4 / 4 ln x - display(integral) x^4 / 4 thin upright(d)\(ln x\)\
 & = x^4 / 4 ln x - display(integral) x^4 / 4 dot.op 1 / x thin upright(d) x\
 & = x^4 / 4 ln x - x^4 / 16 + C $

]
#blk[类型C][
被积函数是 $sin^(- 1) x$, $tan^(- 1) x$, $ln x$, 这里没有乘积的形式，不妨设 $v'\(x\)= 1$.

]
#example[
求 $display(integral) arcsin x thin upright(d) x$.

]
#solution[
$ display(integral) arcsin x thin upright(d) x = x arcsin x - display(integral) x thin upright(d)\(arcsin x\) & = x arcsin x - display(integral) x / sqrt(1 - x^2) thin upright(d) x\
 & = x arcsin x + 1 / 2 display(integral) frac(thin upright(d)\(1 - x^2\), sqrt(1 - x^2))\
 & = x arcsin x + 1 / 2 dot.op 2 sqrt(1 - x^2) + C\
 & = x arcsin x + sqrt(1 - x^2) + C $

另解：设 $y = arcsin x\,thick - 1 lt.eq x lt.eq 1$⁠，则 $sin y = x\,thick - pi / 2 lt.eq y lt.eq pi / 2$ $ display(integral) arcsin x thin upright(d) x = x arcsin x - display(integral) x thin upright(d)\(arcsin x\) & = y sin y - display(integral) sin y thin upright(d) y\
 & = y sin y + cos y + C\
 & = x arcsin x + sqrt(1 - sin^2 y) + C\
 & = x arcsin x + sqrt(1 - x^2) + C $

]
#example[
求 $display(integral) ln^2 x thin upright(d) x$.

]
#solution[
$ display(integral) ln^2 x thin upright(d) x = x\(ln x\)^2 - display(integral) x thin upright(d)\(ln^2 x\) & = x\(ln x\)^2 - display(integral) x dot.op 2 ln x dot.op 1 / x thin upright(d) x\
 & = x\(ln x\)^2 - 2 display(integral) ln x thin upright(d) x\
 & = x\(ln x\)^2 - 2 [x ln x - display(integral) x thin upright(d) \( ln x \)]\
 & = x\(ln x\)^2 - 2 x ln x + 2 display(integral) thin upright(d) x\
 & = x\(ln x\)^2 - 2 x ln x + 2 x + C $

]
#blk[类型D][
被积函数是 $e^(a x) sin b x$, $sec^3 x$, $sqrt(a^2 + x^2)$. 对于这类例题，两次使用这个方法可以得到含有这个积分作未知元的一次方程．

]
#example[
求 $display(integral) e^(a x) sin b x thin upright(d) x$

]
#solution[
$ I = display(integral) e^(a x) sin b x thin upright(d) x & = display(integral) sin b x thin upright(d) (e^(a x) / a)\
 & = sin b x dot.op e^(a x) / a - display(integral) e^(a x) / a thin upright(d)\(sin b x\)\
 & = sin b x dot.op e^(a x) / a - display(integral) e^(a x) / a b cos b x thin upright(d) x\
 & = sin b x dot.op e^(a x) / a - b / a display(integral) cos b x thin upright(d) (e^(a x) / a)\
 & = sin b x dot.op e^(a x) / a - b / a [cos b x dot.op e^(a x) / a - display(integral) e^(a x) / a thin upright(d) (cos b x)]\
 & = sin b x dot.op e^(a x) / a - b / a^2 cos b x dot.op e^(a x) - b^2 / a^2 display(integral) e^(a x) sin b x thin upright(d) x\
 & = sin b x dot.op e^(a x) / a - b / a^2 cos b x dot.op e^(a x) - b^2 / a^2 I $ #noindent;所以：$ I (1 + b^2 / a^2) & = 1 / a sin b x dot.op e^(a x) - b / a^2 cos b x dot.op e^(a x)\
I & = frac(e^(a x)\(a sin b x - b cos b x\), a^2 + b^2) + C $

]
#example[
求 $display(integral) sqrt(a^2 + x^2) thin upright(d) x$.

]
#solution[
$ I = integral sqrt(a^2 + x^2) thin upright(d) x & = x sqrt(a^2 + x^2) - integral x thin upright(d) (sqrt(a^2 + x^2))\
 & = x sqrt(a^2 + x^2) - integral x^2 / sqrt(a^2 + x^2) thin upright(d) x\
 & = x sqrt(a^2 + x^2) - integral frac(x^2 + a^2, sqrt(a^2 + x^2)) thin upright(d) x + integral a^2 / sqrt(a^2 + x^2) thin upright(d) x\
 & = x sqrt(a^2 + x^2) - I + a^2 ln (x + sqrt(a^2 + x^2)) $ #noindent;所以 $ I = 1 / 2 x sqrt(a^2 + x^2) + 1 / 2 a^2 ln (x + sqrt(a^2 + x^2)) $

]
应用分部积分公式 (4.18) 还能导出一些求积分的递归公式．所谓求积分的递归公式就是建立一个被积函数含有正整数 $n$ 的积分与被积函数含有非负整数 $n - 1$ 或 $n - 2$ 的积分的关系式．每次要求 $n = k$ 时的积分，重复利用这个关系式总能回到当 $n = 0\,1\,2$ 时的起始积分，于是所求积分总能用 $n$ 的起始值 $n = 0\,1\,2$ 中的一个已知积分表示出来．这也就是递归的意思．

#example[
求 $display(integral) sin^n x thin upright(d) x$.

]
#solution[
当 $n = 0$ 时，$I_0 = display(integral)\(sin x\)^0 thin upright(d) x = display(integral) thin upright(d) x = x + C$

又：$ I_n = integral sin^n x thin upright(d) x & = integral sin^(n - 1) x thin upright(d)\(- cos x\)\
 & = - cos x sin^(n - 1) x + integral cos x thin upright(d) (sin^(n - 1) x)\
 & = - cos x sin^(n - 1) x +\(n - 1\)integral cos x sin^(n - 2) x dot.op cos x thin upright(d) x\
 & = - cos x sin^(n - 1) x +\(n - 1\)integral sin^(n - 2) x (1 - sin^2 x) thin upright(d) x $ #noindent;所以 $ I_n = - cos x sin^(n - 1) x +\(n - 1\)I_(n - 2) -\(n - 1\)I_n $ #noindent;即#numbered-eq($ n I_n = - cos x sin^(n - 1) x +\(n - 1\)I_(n - 2) $);

现在我们用递归关系 (4.19) 来求 $display(integral) sin^4 x thin upright(d) x$. 设 $I_4 = display(integral) sin^4 x thin upright(d) x$, 于是

#numbered-align(($4 I_4$, $eqph = - cos x sin^3 x + 3 I_2$, true), ($2 I_2$, $eqph = - cos x sin x + I_0$, true));

#noindent;将 (4.21) 代入 (4.20) 得：$ 4 I_4 & = - cos x sin^3 x + 3 (- frac(sin x cos x, 2) + 1 / 2 I_0)\
 & = - cos x sin^3 x - 3 / 2 cos x sin x + 3 / 2 x + C $ #noindent;所以 $ I_4 = integral sin^4 x thin upright(d) x = - 1 / 4 cos x sin^3 x - 3 / 8 cos x sin x + 3 / 8 x + C $

]
#exercise[
+ #block(sticky: true)[求下列不定积分：]

  #cols(2)[
  + $display(integral) x sin x thin upright(d) x$

  + $display(integral) x cos 3 x thin upright(d) x$

  + $display(integral) x sin^2 x / 2 thin upright(d) x$

  + $display(integral) x e^(- x) thin upright(d) x$

  + $display(integral)\(x - 1\)e^x thin upright(d) x$

  + $display(integral) (x^2 + x) e^(- x) thin upright(d) x$

  + $display(integral) x sec^2 x thin upright(d) x$

  + $display(integral) x arcsin x thin upright(d) x$

  + $display(integral) frac(arcsin x, x^2) thin upright(d) x$

  + $display(integral) frac(arctan x, x^2) thin upright(d) x$

  + $display(integral) x^2 e^(3 x) thin upright(d) x$

  + $display(integral) e^(a x) sin^2 b x thin upright(d) x$

  + $display(integral) sin x dot.op ln\(tan x\)thin upright(d) x$

  + $display(integral) x^2 arctan x thin upright(d) x$

  + $display(integral) frac(x^2 e^x thin upright(d) x, \(x + 2\)^2)$

  + $display(integral) frac(x e^x, \(x + 1\)^2) thin upright(d) x$

  ]

+ #block(sticky: true)[求下列不定积分:]

  #cols(2)[
  + $display(integral) arctan sqrt(x) thin upright(d) x$

  + $display(integral) ln^2 x thin upright(d) x$

  + $display(integral) ln (x + sqrt(1 + x^2)) thin upright(d) x$

  + $display(integral)\(arcsin x\)^2 thin upright(d) x$

  + $display(integral) sin\(ln x\)thin upright(d) x$

  + $display(integral) sqrt(4 + x^2) thin upright(d) x$

  ]

]
== 定积分的计算与应用
=== 定积分的计算
由微积分的基本定理得知，定积分 $display(integral)_a^b f\(x\)thin upright(d) x$ 的计算归结为不定积分 $display(integral) f\(x\)thin upright(d) x$ 的计算，由后者计算得到 $f\(x\)$ 的原函数 $F\(x\)$, 则 $ display(integral)_a^b f\(x\)thin upright(d) x = F\(x\)class("normal", stretch(|, size: #3em))_a^b = F\(b\)- F\(a\) $ #noindent;于是计算不定积分的各种方法也可移植过来求定积分．

==== 定积分的换元积分法
第一换元法：设 $display(integral) f\(u\)thin upright(d) u = F\(u\)$, $u = phi\(x\)$ 可微，那么 $ integral_a^b f\(phi\(x\)\)phi'\(x\)thin upright(d) x & = integral_(phi\(a\))^(phi\(b\)) f\(u\)thin upright(d) u\
 & = F\(u\)class("normal", stretch(|, size: #1.8em))_(phi\(a\))^(phi\(b\)) = F\[phi\(b\)\]- F\[phi\(a\)\] $

#example[
求 $display(integral)_0^(tfrac(pi, 2)) sin^3 x cos x thin upright(d) x$.

]
#solution[
因为 $ integral sin^3 x cos x thin upright(d) x = integral sin^3 x thin upright(d)\(sin x\)= 1 / 4 sin^4 x + C $ #noindent;所以 $ display(integral)_0^(tfrac(pi, 2)) sin^3 x cos x thin upright(d) x & = 1 / 4 sin^4 x class("normal", stretch(|, size: #1.8em))_0^(tfrac(pi, 2))\
 & = 1 / 4 [sin^4 pi / 2 - 0] = 1 / 4 $

]
#blk[定理1（第二种变量代换法）][
设 $f\(x\)$ 在 $\[a\,b\]$ 上连续，作代换 $x = phi\(t\)$, 其中 $phi\(t\)$ 在某一闭区间 $\[alpha\,beta\]$ 上有连续导数 $phi'\(t\)$, 当 $alpha lt.eq t lt.eq beta$ 时，$a lt.eq phi\(t\)lt.eq b$, 且 $phi\(alpha\)= a$, $phi\(beta\)= b$, 那么 $ integral_a^b f\(x\)thin upright(d) x = integral_alpha^beta f\[phi\(t\)\]phi'\(t\)thin upright(d) t $

]
#proof[
设 $f\(x\)$ 的一个原函数是 $G\(x\)$, 即有 $ frac(thin upright(d), thin upright(d) x) G\(x\)= f\(x\) $ #noindent;于是由微积分基本定理得#numbered-eq($ integral_a^b f\(x\)thin upright(d) x = G\(x\)class("normal", stretch(|, size: #1.8em))_a^b = G\(b\)- G\(a\) $);#noindent;根据复合函数求导法则，知 $ frac(thin upright(d), thin upright(d) t) G\[phi\(t\)\] & = frac(thin upright(d), thin upright(d) x) G\(x\)dot.op frac(thin upright(d), thin upright(d) t) phi\(t\)\
 & = f\(x\)dot.op phi'\(t\)= f\[phi\(t\)\]phi'\(t\) $ #noindent;所以 $G\[phi\(t\)\]$ 是 $f\[phi\(t\)\]phi'\(t\)$ 的一个原函数，从而#numbered-eq($ integral_alpha^beta f\[phi\(t\)\]phi'\(t\)thin upright(d) t & = G\[phi\(t\)\]class("normal", stretch(|, size: #1.8em))_alpha^beta\
  & = G\[phi\(beta\)\]- G\[phi\(alpha\)\]= G\(b\)- G\(a\) $);#noindent;因为 (4.22)(4.23) 两个积分相等，所以 $ integral_a^b f\(x\)thin upright(d) x = integral_alpha^beta f\[phi\(t\)\]phi'\(t\)thin upright(d) t $

]
这个公式与不定积分的换元公式很类似，所不同的是，后者最后需要将变量还原，而现在只须把积分限作相应的改变．

#example[
求 $display(integral)_0^a sqrt(a^2 - x^2) thin upright(d) x$

]
#solution[
作代换 $x = a sin t$⁠，当 $x$ 从0变到 $a$ 时，相应地 $t$ 自0变到 $pi / 2$⁠，于是 $ display(integral)_0^a sqrt(a^2 - x^2) thin upright(d) x = a^2 display(integral)_0^(tfrac(pi, 2)) cos^2 t thin upright(d) t & = a^2 display(integral)_0^(tfrac(pi, 2)) frac(1 + cos 2 t, 2) thin upright(d) t\
 & = a^2 / 2 (t + 1 / 2 sin 2 t) class("normal", stretch(|, size: #3em))_0^(tfrac(pi, 2)) = frac(pi a^2, 4) $

]
#example[
求 $display(integral)_0^4 frac(1, 1 + sqrt(x)) thin upright(d) x$

]
#solution[
设 $x = u^2$⁠，于是 $ frac(1, 1 + sqrt(x)) = frac(1, 1 + u)\,#h(2em) thin upright(d) x = 2 u thin upright(d) u $ #noindent;定限：当 $x = 0$ 时，从变换 $sqrt(x) = u$ 中解出 $u = 0$⁠；当 $x = 4$ 时，解出 $u = 2$. 于是 $ display(integral)_0^4 frac(1, 1 + sqrt(x)) thin upright(d) x = display(integral)_0^2 frac(1, 1 + u) dot.op 2 u thin upright(d) u & = 2 display(integral)_0^2 (1 - frac(1, 1 + u)) thin upright(d) u\
 & = 2 [u - ln \( 1 + u \)] class("normal", stretch(|, size: #1.8em))_0^2 = 2\(2 - ln 3\) $

]
#example[
求证：$display(integral)_0^a f\(x\)thin upright(d) x = display(integral)_0^a f\(a - x\)thin upright(d) x$

]
#proof[
设 $x = a - t$⁠，则 $thin upright(d) x = - thin upright(d) t$⁠，且当 $x = 0$ 时，$t = a$⁠；当 $x = a$ 时，$t = 0$. 于是：$ display(integral)_0^a f\(x\)thin upright(d) x = display(integral)_a^0 f\(a - t\)\(- thin upright(d) t\) & = - display(integral)_a^0 f\(a - t\)thin upright(d) t\
 & = display(integral)_0^a f\(a - t\)thin upright(d) t = display(integral)_0^a f\(a - x\)thin upright(d) x $

]
我们在第三节曾指出，使用第二种变量代换时，要注意条件是否满足，否则会出现矛盾，这里举一反例．

求 $display(integral)_(- 1)^1 frac(thin upright(d) x, 1 + x^2)$ 时，如作变换 $x = 1 / t$⁠，则 $ display(integral)_(- 1)^1 frac(thin upright(d) x, 1 + x^2) = - display(integral)_(- 1)^1 frac(thin upright(d) t, 1 + t^2) $ #noindent;于是 $display(integral)_(- 1)^1 frac(thin upright(d) x, 1 + x^2) = 0$⁠，这当然不对，问题在于，代换 $x = 1 / t$ 在 $\[- 1\,1\]$ 上并不是连续变化的．

==== 定积分的分部积分法
#blk[定理2][
设 $u = u\(x\)$, $v = v\(x\)$ 在 $\[a\,b\]$ 上有连续的导数 $u'\(x\)$, $v'\(x\)$, 则有分部积分公式 $ integral_a^b u thin upright(d) v = u dot.op v class("normal", stretch(|, size: #1.8em))_a^b - integral_a^b v thin upright(d) u $

]
#proof[
由牛顿-莱布尼兹公式，显然有 $ u\(x\)v\(x\)class("normal", stretch(|, size: #1.8em))_a^b & = integral_a^b\(u\(x\)v\(x\)\)' thin upright(d) x\
 & = integral_a^b u'\(x\)v\(x\)thin upright(d) x + integral_a^b u\(x\)v'\(x\)thin upright(d) x $ #noindent;移项，得 $ integral_a^b u\(x\)thin upright(d)\[v\(x\)\]= u\(b\)v\(b\)- u\(a\)v\(a\)- integral_a^b v\(x\)thin upright(d)\[u\(x\)\] $

]
这个公式与不定积分的分部积分公式很相似，但是，这里每一项都带着积分限．

#example[
求 $display(integral)_(- sqrt(3))^(sqrt(3))\|arctan x\|thin upright(d) x$

]
#solution[
因为 $\|arctan x\|$ 是偶函数，所以 $ I = display(integral)_(- sqrt(3))^(sqrt(3))\|arctan x\|thin upright(d) x = 2 display(integral)_0^(sqrt(3))\|arctan x\|thin upright(d) x = 2 display(integral)_0^(sqrt(3)) arctan x thin upright(d) x $ #noindent;设 $u\(x\)= arctan x$, $v'\(x\)= 1$, 则 $v\(x\)= x$⁠，利用分部积分公式，得到：$ I = 2 display(integral)_0^(sqrt(3)) arctan x thin upright(d) x & = 2 [x arctan x class("normal", stretch(|, size: #1.8em))_0^(sqrt(3)) - display(integral)_0^(sqrt(3)) x thin upright(d) \( arctan x \)]\
 & = 2 [sqrt(3) arctan sqrt(3) - display(integral)_0^(sqrt(3)) x dot.op frac(1, 1 + x^2) thin upright(d) x]\
 & = 2 sqrt(3) dot.op pi / 3 - display(integral)_0^(sqrt(3)) frac(thin upright(d)\(1 + x^2\), 1 + x^2)\
 & = frac(2 sqrt(3), 3) pi - ln\(1 + x^2\)class("normal", stretch(|, size: #1.8em))_0^(sqrt(3)) = frac(2 sqrt(3), 3) pi - ln 4 $

]
#example[
求 $display(integral)_0^(tfrac(pi, 2)) sin^n theta thin upright(d) theta$.

]
#solution[
设 $I_n = display(integral)_0^(tfrac(pi, 2)) sin^n theta thin upright(d) theta$⁠，利用例4.42的结果，得到：$ n I_n = [- cos theta sin^(n - 1) theta] class("normal", stretch(|, size: #1.8em))_0^(tfrac(pi, 2)) +\(n - 1\)I_(n - 2) $ #noindent;因为方括号的式子对于积分上，下限的值等于零，所以上面等式化简为 $ I_n = frac(n - 1, n) I_(n - 2) $ #noindent;分别考虑 $n$ 是偶数和奇数两种情况：

+ 若 $n$ 是偶数，那么 $ I_n = frac(n - 1, n) I_(n - 2) & = frac(n - 1, n) dot.op frac(n - 3, n - 2) I_(n - 4)\
   & = dots.h.c = frac(n - 1, n) dot.op frac(n - 3, n - 2) dot.op frac(n - 5, n - 4) thin dots.h.c thin 1 / 2 I_0 $ #noindent;此处 $I_0 = display(integral)_0^(tfrac(pi, 2)) 1 dot.op thin upright(d) theta = pi / 2$⁠，所以 $ I_n = frac(\(n - 1\)\(n - 3\) thin dots.h.c thin 3 dot.op 1, n\(n - 2\) thin dots.h.c thin 4 dot.op 2) dot.op pi / 2 $

+ 若 $n$ 是奇数，由于 $ I_1 = display(integral)_0^(tfrac(pi, 2)) sin theta thin upright(d) theta =\(- cos theta\)class("normal", stretch(|, size: #1.8em))_0^(tfrac(pi, 2)) = 1 $ #noindent;所以 $ I_n = frac(\(n - 1\)\(n - 3\) thin dots.h.c thin 4 dot.op 2, n\(n - 2\) thin dots.h.c thin 5 dot.op 3) $

]
#exercise[
+ #block(sticky: true)[求下列定积分：]

  #cols(2)[
  + $display(integral)_0^(tfrac(pi, 4))\(1 + sin theta\)^2 thin upright(d) theta$

  + $display(integral)_0^(tfrac(pi, 4)) frac(cos theta thin upright(d) theta, 1 + sin^2 theta)$

  + $display(integral)_0^1 x^2 / (1 + x^2)^2 thin upright(d) x$

  + $display(integral)_0^(tfrac(1, sqrt(2))) x^2 / sqrt(1 - x^2) thin upright(d) x$

  + $display(integral)_(tfrac(1, sqrt(2)))^1 sqrt(1 - x^2) thin upright(d) x$

  + $display(integral)_0^pi frac(cos^2 x thin upright(d) x, a^2 cos^2 x + b^2 sin^2 x)$

  + $display(integral)_0^(2 pi)\[sin omega t - sin\(omega t + phi\)\]^2 thin upright(d) t$

  + $display(integral)_2^4 sqrt(\(4 - x\)\(x - 2\)) thin upright(d) x$

  + $display(integral)_1^5 1 / sqrt(2 x - 1) thin upright(d) x$

  + $display(integral)_0^1 frac(x + 1, sqrt(1 - x^2)) thin upright(d) x$

  + $display(integral)_(tfrac(pi, 6))^(tfrac(pi, 2)) cot theta thin upright(d) theta$

  + $display(integral)_1^0 frac(x^2, 1 + x^3) thin upright(d) x$

  + $display(integral)_0^(tfrac(pi, 2)) frac(sin x, cos^2 x) thin upright(d) x$

  + $display(integral)_0^(2 a) x^2 sqrt(2 a x - x^2) thin upright(d) x$

  ]

+ 证明：$display(integral)_0^(tfrac(pi, 2)) frac(cos x, cos x + sin x) thin upright(d) x = display(integral)_0^(tfrac(pi, 2)) frac(sin x, cos x + sin x) thin upright(d) x$

  （提示：用变量代换 $x = pi / 2 - y$\.）

+ #lead-list(none, 2)[
  + 求常数 $A\,B\,C\,D$ 使等式$ frac(1 + 2 x^3, \(1 - x\)\(1 + x\)^2) = A + frac(B, 1 - x) + frac(C, \(1 + x\)^2) + frac(D, 1 + x) $#noindent;成立，并计算 $ display(integral)_0^(tfrac(1, 2)) frac(1 + 2 x^3, \(1 - x\)\(1 + x\)^2) thin upright(d) x . $

  + 求常数 $a$⁠，使 $display(integral)_0^1 frac(x - a, \(x + 1\)\(3 x + 1\)) thin upright(d) x = 0$.
  ]

+ 求极限：$limits(lim)_(n arrow.r oo) (frac(1, n + 1) + frac(1, n + 2) + dots.h.c + frac(1, n + n))$

+ 求一三次多项式 $f\(x\)= a x^3 + b x^2 + c x + d$, 使它满足下列条件：

  + $f\(- 1\)= f\(1\)= 0$\;

  + $display(integral)_(- 1)^1 f\(x\)thin upright(d) x = 6$.

+ #lead-list(none, 2)[
  + 在同一个坐标系内，作 $y =\(x - 1\)\(x - 2\)$ 和 $y = display(integral)_0^x\(t - 1\)\(t - 2\)thin upright(d) t$ 的函数图象．

  + 求函数 $display(integral)_0^x\(t - 1\)\(t - 2\)thin upright(d) t$ 在闭区间 $\[0\,3\]$ 上的最大值和最小值；

  + 求在曲线 $y =\(x - 1\)\(x - 2\)$, $x$ 轴和纵坐标 $x = 0$, $x = 3$ 之间的区域的面积．
  ]

+ #lead-list(none, 2)[
  + 若 $f\(2 a - x\)= - f\(x\)$, 求证 $display(integral)_0^(2 a) f\(x\)thin upright(d) x = 0$⁠；

  + 若 $f\(2 a - x\)= f\(x\)$, 求证 $display(integral)_0^(2 a) f\(x\)thin upright(d) x = 2 integral_0^a f\(x\)thin upright(d) x$.

  + 试计算 $integral_0^pi sin^6 x cos^3 x thin upright(d) x$ 和 $display(integral)_0^pi sin^3 x cos^2 x thin upright(d) x$.
  ]

+ 求 $display(integral)_0^(tfrac(pi, 2)) cos^n theta thin upright(d) theta$.

+ 求 $display(integral)_0^(tfrac(pi, 4)) x^3 cos 2 x thin upright(d) x$.

+ 求 $display(integral)_0^(tfrac(3 pi, 2)) sin^3 theta cos^2 theta thin upright(d) theta$.

]
=== 平面图形的面积
我们已经证明过在曲线 $y = f\(x\)$ 与 $x$ 轴，$x = a$, $x = b$ 之间的曲边梯形的有号面积等于 $ integral_a^b y thin upright(d) x = integral_a^b f\(x\)thin upright(d) x $ #noindent;对于任意的平面图形．我们总可以取适当的直角坐标系，使得它的边界为两条曲线 $ y = f\(x\)\,#h(2em) y = g\(x\)\,quad x in\[a\,b\] $ #noindent;所描述，现在我们来求这样的区域 $R$ 的面积（图4.4）．

#blk[定理][
若 $f$ 和 $g$ 是在区间 $\[a\,b\]$ 上的连续函数，而且 $f\(x\)gt.eq g\(x\)$, 那么在曲线 $y = f\(x\)$, $y = g\(x\)$ 和 $x = a$, $x = b$ 之间的区域 $R$ 的面积等于 $ A = integral_a^b\[f\(x\)- g\(x\)\]thin upright(d) x $

]
#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("7-06");], caption: []), figure([#fig("7-07");], caption: []))));

#proof[
让我们选择一个常数 $k$ 使其小于函数 $g$ 在区间 $\[a\,b\]$ 上的最小值，则对于每一个 $x in\[a\,b\]$, $g\(x\)- k gt.eq 0$.

又因为 $f\(x\)gt.eq g\(x\)$, 因此对于每一个 $x in\[a\,b\]$, 也有 $f\(x\)- k gt.eq 0$. 将坐标系 $x\,y$ 平行于 $y$ 轴平移到新坐标系 $x'\,y'$, 使新原点在原来坐标系中的坐标为 $\(0\,k\)$ (图4.5), 这个坐标系的平移由变换 $ display(cases(x = x', y = y' + k)) $ #noindent;实现，于是原来的函数图象在新坐标的方程是 $ f_1\(x\)= f\(x\)- k\,#h(2em) g_1\(x\)= g\(x\)- k $ #noindent;函数 $f_1$ 和 $g_1$ 在区间 $\[a\,b\]$ 上仍连续且取非负值，显然在函数 $f_1$ 和 $g_1$ 之间的区域 $R' = \{ a lt.eq x lt.eq b\,thick g_1\(x\)lt.eq y lt.eq f_1\(x\)\}$ 就是原来的区域 $R = \{ a lt.eq x lt.eq b\,thick g\(x\)lt.eq y lt.eq f\(x\)\}$, 但是，$R'$ 的区域的面积等于 $ A = integral_a^b f_1\(x\)thin upright(d) x - integral_a^b g_1\(x\)thin upright(d) x $ #noindent;根据定积分的性质进一步得到 $ A & = integral_a^b\[f_1\(x\)- g_1\(x\)\]thin upright(d) x\
 & = integral_a^b class("opening", stretch(\{, size: #1.8em)) class("opening", stretch(\[, size: #1.2em)) f\(x\)- k class("closing", stretch(\], size: #1.2em)) - class("opening", stretch(\[, size: #1.2em)) g\(x\)- k class("closing", stretch(\], size: #1.2em)) class("closing", stretch(\}, size: #1.8em)) thin upright(d) x\
 & = integral_a^b\[f\(x\)- g\(x\)\]thin upright(d) x $

]
#example[
求直线 $y = x - 2$ 和抛物线 $y = 2 x - x^2$ 所围成的图形的面积 $A$.

]
#solution[
直线与抛物线交于 $\(2\,0\)$, $\(- 1\,- 3\)$ 两点，作出它的草图（图4.6）. 依本节定理，得到 $ A = integral_(- 1)^2\[\(2 x - x^2\)-\(x - 2\)\]thin upright(d) x & = integral_(- 1)^2\(- x^2 + x + 2\)thin upright(d) x\
 & = [- 1 / 3 x^3 + 1 / 2 x^2 + 2 x] class("normal", stretch(|, size: #3em))_(- 1)^2 = 9 / 2 $

]
#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("7-08");], caption: []), figure([#fig("7-09");], caption: []))));

#example[
求抛物线 $y^2 = - 4\(x - 1\)$, $y^2 = - 2\(x - 2\)$ 所围成的图形的面积．

]
#solution[
先作出它们的草图（图4.7）, 且解得它的两个交点 $\(0\,2\)$ 和 $\(0\,- 2\)$. 于是 $ A = integral_(- 2)^2 [(2 - 1 / 2 y^2) - (1 - 1 / 4 y^2)] thin upright(d) y & = 1 / 4 integral_(- 2)^2\(4 - y^2\)thin upright(d) y\
 & = 1 / 4 [4 y - 1 / 3 y^3] class("normal", stretch(|, size: #3em))_(- 2)^2 = 8 / 3 . $

]
#example[
求半径等于 $r$, 中心角等于 $alpha thick (0 < alpha lt.eq pi / 2)$ 的扇形的面积．

]
#figure([#fig("7-10");

  ],
  caption: [
  ]
)

#solution[
如图4.8, 扇形 $O B P$ 的区域划分为 $triangle.stroked.t O C P$ 的区域与曲边三角形 $C B P$ 的区域的和，因此 $ A\(O B P\)= A\(O C P\)+ A\(C B P\) $ #noindent;因为 $P$ 点坐标是 $\(r cos alpha\,r sin alpha\)$⁠，所以 $ A\(O C P\)= 1 / 2\(r cos alpha\)dot.op\(r sin alpha\)= r^2 / 4 sin 2 alpha $ #noindent;又扇形的圆方程是 $x^2 + y^2 = r^2$⁠，所以 $ A\(C B P\)= integral_(r cos alpha)^r sqrt(r^2 - x^2) thin upright(d) x $ #noindent;从而 $ A\(O B P\)= r^2 / 4 sin 2 alpha + integral_(r cos alpha)^r sqrt(r^2 - x^2) thin upright(d) x $

令 $x = r sin theta\,thick theta in [- pi / 2 \, pi / 2]$⁠，则 $ theta = arcsin x / r\,#h(2em) thin upright(d) x = r cos theta thin upright(d) theta $ #noindent;且当 $x = r cos alpha$ 时，$ theta = arcsin\(cos alpha\)= arcsin [sin (pi / 2 - alpha)] = pi / 2 - alpha $ #noindent;当 $x = r$ 时，$theta = arcsin 1 = pi / 2$

所以 $ A\(O B P\) & = r^2 / 4 sin 2 alpha + integral_(tfrac(pi, 2) - alpha)^(tfrac(pi, 2))\(r cos theta\)\(r cos theta\)thin upright(d) theta\
 & = r^2 / 4 sin 2 alpha + r^2 integral_(tfrac(pi, 2) - alpha)^(tfrac(pi, 2)) cos^2 theta thin upright(d) theta\
 & = r^2 / 4 sin 2 alpha + r^2 [theta / 2 + frac(sin 2 theta, 4)] class("closing", stretch(|, size: #1.8em))_(tfrac(pi, 2) - alpha)^(tfrac(pi, 2))\
 & = r^2 / 2 alpha $

当 $alpha = 2 pi$ 时，由上面公式就得到圆面积 $pi r^2$.

]
#example[
$P$ 点是位于曲线 $y = x^2$ 上的动点，从原点 $O$ 向点 $A\(1\,1\)$ 移动，过二点 $O\,P$ 引直线，它与曲线 $y = x^2$ 及直线 $x = 1$ 所围图形的面积为图4.9中阴影部分所示，求使这部分面积最小时 $P$ 点的坐标．

]
#figure([#fig("7-11");

  ],
  caption: [
  ]
)

#solution[
设 $P$ 点的坐标是 $\(t\,t^2\)\,thick\(0 lt.eq t lt.eq 1\)$. 直线 $O P$ 的方程是 $y = t x$⁠，设阴影部分的面积为 $S$⁠，则 $ S & = integral_0^t\(t x - x^2\)thin upright(d) x + integral_t^1\(x^2 - t x\)thin upright(d) x\
 & = [t / 2 x^2 - x^3 / 3] class("normal", stretch(|, size: #3em))_0^t + [x^3 / 3 - t / 2 x^2] class("normal", stretch(|, size: #3em))_t^1\
 & = t^3 / 3 - t / 2 + 1 / 3 $ $ S' = t^2 - 1 / 2 = (t + sqrt(2) / 2) (t - sqrt(2) / 2) $ #noindent;由 $S'$ 符号的变化，当 $t = sqrt(2) / 2$ 时，$S$ 极小也就是最小，故所求点的坐标是 $(sqrt(2) / 2 \, 1 / 2)$.

]
#example[
求椭圆 $x^2 / a^2 + y^2 / b^2 = 1 thick\(a > b > 0\)$ 的面积 $A$（图4.10）.

]
#figure([#fig("7-12");

  ],
  caption: [
  ]
)

#solution[
由于图形的对称性，只要求出椭圆在第一象限内的面积，再乘以4就是该椭圆的面积，所以 $ A / 4 = integral_0^a y thin upright(d) x $ #noindent;这里将椭圆用参数方程 $display(cases(x = a cos t, y = b sin t))$ 表出，当 $x = a$ 时，$t = arccos 1 = 0$\; 当 $x = 0$ 时，$t = arccos 0 = pi / 2$, 于是 $ A / 4 = integral_(tfrac(pi, 2))^0 b sin t thin upright(d)\(a cos t\) & = integral_(tfrac(pi, 2))^0\(b sin t\)\(- a sin t\)thin upright(d) t\
 & = a b integral_0^(tfrac(pi, 2)) sin^2 t thin upright(d) t = 1 / 4 a b pi $ #noindent;所以：$A = pi a b$.

]
#exercise[
+ 求在曲线 $y = sin 2 x$, $y = 0$, $x in\[0\,2 pi\]$ 之间的面积．

+ 求下列曲线所围图形的面积：

  + $y = 8 - 1 / 2 x^2$ 和 $y = 3.2$

  + $y = x^2 - 5 x + 7$ 和 $y = - 2 x^2 + 10 x - 5$

  + $y = sin x$ 和 $y = 2 / pi x\,thick x gt.eq 0$

+ 求以曲线 $y = sin x thick (0 lt.eq x lt.eq pi / 4)$⁠；$y = cos x thick (pi / 4 lt.eq x lt.eq pi / 2)$ 和 $y = 0$ 为边界的区域的面积．

+ #lead-list(none, 2)[
  + 证明点 $x = t^2 - 1$, $y = t\(t^2 - 1\)$ 在曲线 $y^2 = x^2\(x + 1\)$ 上；

  + 当 $t$ 由 $t = - 2$ 变化到 $t = 2$ 时，作出曲线 $display(cases(x = t^2 - 1, y = t\(t^2 - 1\)))$ 的图象；

  + 求由曲线的环路所围区域的面积．
  ]

+ 在曲线 $y = x^2 - 2 x + 2$ 与过点 $\(2\,3\)$ 的直线所围的图形中，求图形面积最小时的直线方程．

+ 求抛物线 $y = x^2$ 及过此抛物线上点 $\(2\,4\)$ 的切线和 $x$ 轴所围图形的面积．

+ 已知曲线 $C : thick y = x^2 - 7 x + 10 thick\(x > 0\)$ 与点 $A\(0\,1\)$, 回答下列问题：

  + 求过点 $A$ 所引曲线 $C$ 的切线方程以及切点 $T$ 的坐标．

  + 设 $S$ 是直线 $x = 1$ 与曲线 $C$ 的交点．若曲线 $C$ 上的动点 $P$ 从 $S$ 点运动到 $T$ 点时，将线段 $A P$ 所在的区域用阴影表示出来，并求出这个区域的面积．

+ 求通过 $\(0\,0\)$, $\(1\,2\)$ 两点的抛物线，要求它具有以下的性质：

  + 它的对称轴平行于 $y$ 轴，且凸向上，

  + 它与 $x$ 轴所围区域的面积最小．

+ 对称轴平行 $y$ 轴的抛物线与圆 $x^2 + y^2 = 4$ 切于 $A\(0\,2\)$ 点并通过 $B\(- 2\,0\)$ 点，计算抛物线与圆所围区域的面积．

]
=== 利用横断面算体积法
对于空间的一个立体，我们取一条直线作为坐标轴，取直线上一点作为原点（图4.11），假定这立体紧夹于在 $x = a$ 与 $x = b$ 两点所作的 $x$ 轴的垂直平面之间，又如果在离原点 $x$ 处作这轴的一个垂直平面，并且该垂直平面截得立体的截面的面积是 $x$ 的连续函数 $A\(x\)\,thick a lt.eq x lt.eq b$, 那么立体的体积可由定积分来计算：

#figure([#fig("7-13");

  ],
  caption: [
  ]
)

+ 分 $\[a\,b\]$ 为 $n$ 份，其分点 $ a = x_0 < x_1 < x_2 < dots.h.c < x_n = b $ #noindent;记 $"‖" P_n "‖" = max\(x_i - x_(i - 1)\)quad i = 1\,2\,dots.h\,n$.

  以平面 $x = x_i\,thick i = 0\,1\,2\,dots.h\,n$ 截此立体为 $n$ 个小单元，于是整个体积被看作这 $n$ 个小单元的和．

+ 求阶梯函数的总和作为所求立体体积的近似和．考虑这样一个单元，它介于两个截面 $x = x_(i - 1)\,x = x_i$ 之间，于是以 $\(x_i - x_(i - 1)\)$ 为高，以 $A\(x_(i - 1)\)$ 作为底面积的直棱柱的体积是 $ A\(x_(i - 1)\)\(x_i - x_(i - 1)\) $ #noindent;于是，我们得到所求的体积 $V$ 的近似表达式 $ sum_(i = 1)^n A\(x_(i - 1)\)\(x_i - x_(i - 1)\) $

+ 对和取极限：当断面无限增加，$"‖" P_n "‖" arrow.r 0$ 时，有 $ V = lim_(n arrow.r oo) sum_(i = 1)^n A\(x_(i - 1)\)\(x_i - x_(i - 1)\)= integral_a^b A\(x\)thin upright(d) x $

现在将上面的讨论总结为下面的定理．

#blk[定理][
如果已知一个给定的立体的垂直于一定方向所有的横断面的面积，取这些横断面的垂直方向作为 $x$ 轴的方向，则这立体的体积由公式 $ V = integral_a^b A\(x\)thin upright(d) x $ #noindent;表达．其中 $A\(x\)$ 是横坐标为 $x$ 的横断面的面积，$a$⁠、$b$ 为这立体的两端断面的横坐标．

]
#example[
求底边长为 $a$, 高为 $h$ 的正四棱锥的体积．

]
#figure([#fig("7-14");

  ],
  caption: [
  ]
)

#solution[
设 $x$ 为从底面到截面的距离，$y$ 为截面正方形的边长（图4.12），于是 $ frac(h - x, h) = y / a $ #noindent;即：$y = a / h\(h - x\)$.

截面面积 $ A\(x\)= a^2 / h^2\(h - x\)^2 $ #noindent;所以 $ V & = integral_0^h (a / h)^2\(h - x\)^2 thin upright(d) x\
 & = - (a / h)^2 frac(\(h - x\)^3, 3) class("normal", stretch(|, size: #3em))_0^h = 1 / 3 a^2 h $

]
如果立体是一个旋转体，即先给出一条平面曲线 $y = f\(x\)$, 绕 $x$ 轴旋转所得出的立体，我们的横断面就是以 $y$ 为半径的圆，所以这立体的体积就等于 $ V = pi integral_a^b y^2 thin upright(d) x $ #noindent;如果 $c lt.eq y lt.eq d$⁠，$x = g\(y\)$ 绕 $y$ 轴旋转，则 $ V = pi integral_c^d x^2 thin upright(d) y $

#example[
若球的半径是 $a$, 球缺的高是 $h$, 求球缺的体积．

]
#figure([#fig("7-15");

  ],
  caption: [
  ]
)

#solution[
球是由圆 $x^2 + y^2 = a^2$ 绕 $x$ 轴旋转所得到的立体，且球心到球缺底面的距离为 $a - h$, 设球心到截面的距离为 $x$, 则截面圆的面积 $A\(x\)= pi y^2 = pi\(a^2 - x^2\)$\.（图4.13）

所以 $ V = pi integral_(a - h)^a\(a^2 - x^2\)thin upright(d) x & = pi [a^2 x - 1 / 3 x^3] class("normal", stretch(|, size: #3em))_(a - h)^a\
 & = frac(pi h^2, 3)\(3 a - h\) $

]
#example[
计算底面半径分别为 $r$ 和 $R$, 高为 $h$ 的圆台体积 $V$.

]
#solution[
此圆台可看作 $x y$ 平面上的直线段 $ y = frac(R - r, h) x + r\,thick\(0 lt.eq x lt.eq h\)\,quad x = 0\,quad x = h\,quad y = 0 $ #noindent;所围成的直角梯形绕 $x$ 轴旋转所得到的立体，从而 $ V & = pi integral_0^h (frac(R - r, h) x + r)^2 thin upright(d) x\
 & = pi [(frac(R - r, h))^2 x^3 / 3 + 2 r dot.op frac(R - r, h) dot.op x^2 / 2 + r^2 x] class("normal", stretch(|, size: #3em))_0^h\
 & = frac(pi h, 3)\(R^2 + R r + r^2\) $

]
#example[
在第一象限中，由 $y = frac(x, 1 - x) thick\(x eq.not 1\)$, $y = 1$, $y = 0$ 和 $x = 1$ 所围成的图形绕着直线 $x = 1$ 旋转，求所生成的旋转体的体积（图4.14）．

]
#figure([#fig("7-16");

  ],
  caption: [
  ]
)

#solution[
$y$ 轴垂直于旋转体的横断面，设原点到横断面的距离为 $y$, 则该横断面的面积 $ A\(y\)= pi\(1 - x\)^2 $ #noindent;由于函数 $y = frac(x, 1 - x)$ 是单射的，故反函数存在，由它解出 $ x = frac(y, 1 + y)\,#h(2em) 1 - x = frac(1, 1 + y) $ #noindent;于是 $ A\(y\)= frac(pi, \(1 + y\)^2) $ $ V = integral_0^1 A\(y\)thin upright(d) y & = pi integral_0^1 frac(thin upright(d) y, \(1 + y\)^2)\
 & = - pi (frac(1, 1 + y)) class("normal", stretch(|, size: #3em))_0^1 = - pi (1 / 2 - 1) = pi / 2 $

]
#figure([#fig("7-17");

  ],
  caption: [
  ]
)

#exercise[
+ 底面半径为 $a$ 的直圆柱，用通过底面一条直径并与底面成 $60 degree$ 角的平面去截，得到图4.15的立体，求其体积．

+ 由抛物线 $y^2 = 4 a x$ 和直线 $x = h$ 所围成的区域绕 $x$ 轴旋转一周，求所生成旋转体的体积．

+ 求底面半径为 $r$, 高为 $h$ 的圆锥体的体积．

+ 设由椭圆 $x^2 / a^2 + y^2 / b^2 = 1$ 所围成的区域绕 $x$ 轴旋转，求此旋转椭圆体的体积．

+ 由曲线 $y = frac(ln x, x)$, $x$ 轴和通过曲线的最高点的纵坐标所围成的区域绕 $x$ 轴旋转，求该旋转体的体积．

+ 两条抛物线有公共的顶点和公共的对称轴，但位于两个互相垂直的平面内，一个运动着的椭圆，其中心在两抛物线的公共轴上，它的平面与公共轴垂直，它的顶点位于两条抛物线上，如果椭圆从公共顶点开始，移动一段距离 $h$, 求由此椭圆所生成的体积．

+ 求 $y = 4 - x^2$ 与 $x$ 轴之间的区域绕直线 $y = - 1$ 一周所生成的体积．

+ 求圆 $x^2 +\(y - b\)^2 = a^2 thick\(0 < a < b\)$ 绕 $x$ 轴旋转所生成的旋转体的体积．

]
== 简单初值问题---不定积分的简单应用
在本章第2节，我们曾说过，一个函数的原函数有无穷多个，它们彼此之间相差一个常数．但是，在许多问题中，我们感兴趣的往往并不是这无穷多个原函数的全体（不定积分），而是某一个特定的原函数，在几何上，就是一条特定的积分曲线．为了求得这条积分曲线，必须知道它所经过的一个点，也就是说，要知道初始条件，在实际问题中，求满足一定初始条件的原函数问题是很多的，下面举一些简单的实例．

#example[
已知一质点 $m$ 作具有匀加速度 $a$ 的直线运动，设它的初速度为 $u$, 求质点在 $t$ 秒后所经过的距离．

]
#solution[
由于 $frac(thin upright(d) v, thin upright(d) t) = a$⁠，所以#numbered-eq($ v = a t + C $);#noindent;因为，当 $t = 0$ 时，$v = u$⁠，代入 (4.24) 得：$C = u$⁠，所以#numbered-eq($ v = a t + u $);#noindent;由于 $frac(thin upright(d) s, thin upright(d) t) = u + a t$⁠，分离变量，把它写成 $ thin upright(d) s =\(u + a t\)thin upright(d) t $ #noindent;两边求不定积分，得 $ integral thin upright(d) s = integral\(u + a t\)thin upright(d) t $ #numbered-eq($ s = u t + 1 / 2 a t^2 + C' $);#noindent;由初始条件：当 $t = 0$ 时，$s = 0$⁠，代入 (4.26)，得：$C' = 0$⁠，所以#numbered-eq($ s = u t + 1 / 2 a t^2 $);#noindent;为所求．(4.25) 和 (4.27) 就是我们常见的运动学公式.

]
#example[
假设在原点处斜抛一质点 $m$, 它的初速度 $v_0$ 与水平 $x$ 轴成 $alpha$ 角，又作用在质点 $m$ 上的力只有向下的重力，求质点 $m$ 的轨迹方程．

]
#solution[
设质点 $m$ 的坐标是 $\(x\,y\)$⁠，它的质量为 $M$ 克，于是沿着 $x$ 轴和 $y$ 轴的速度分量分别是 $ v_x = frac(thin upright(d) x, thin upright(d) t)\,#h(2em) v_y = frac(thin upright(d) y, thin upright(d) t) . $ #noindent;而沿着 $x$ 轴和 $y$ 轴的加速度分量分别是 $ frac(thin upright(d) v_x, thin upright(d) t) = frac(thin upright(d)^2 x, thin upright(d) t^2)\,#h(2em) frac(thin upright(d) v_y, thin upright(d) t) = frac(thin upright(d)^2 y, thin upright(d) t^2) . $ #noindent;根据牛顿第二定律，得到 $ display(cases(M frac(thin upright(d) v_x, thin upright(d) t) = 0, M frac(thin upright(d) v_y, thin upright(d) t) = - M g)) $ #noindent;即：$ display(cases(thin upright(d) v_x = 0, thin upright(d) v_y = - g thin upright(d) t)) $ #noindent;所以

$ display(cases(v_x = C_1, v_y = - g t + C_2)) $ #noindent;常数 $C_1$ 和 $C_2$ 由初始条件“当 $t = 0$ 时，$v_x = v_0 cos alpha$, $v_y = v_0 sin alpha$⁠”决定，所以 $ display(cases(v_x = frac(thin upright(d) x, thin upright(d) t) = v_0 cos alpha, v_y = frac(thin upright(d) y, thin upright(d) t) = - g t + v_0 sin alpha)) $ #noindent;即：$ display(cases(thin upright(d) x = v_0 cos alpha thin upright(d) t, thin upright(d) y =\(- g t + v_0 sin alpha\)thin upright(d) t)) $ #noindent;再求不定积分得 $ display(cases(x =\(v_0 cos alpha\)t + C_3, y = - frac(g t^2, 2) +\(v_0 sin alpha\)t + C_4)) $ #noindent;由于，当 $t = 0$ 时，$x = y = 0$⁠，因此：$ C_3 = C_4 = 0 $ #noindent;于是得到质点 $m$ 以时间 $t$ 为参变数的轨迹方程

#numbered-align(($display(cases(x =\(v_0 cos alpha\)t, y = - frac(g t^2, 2) +\(v_0 sin alpha\)t))$, $$, true));

#noindent;消去 $t$⁠，得：$ y = frac(- g x^2, 2 v_0^2 cos^2 alpha) + x tan alpha $ #noindent;化为标准式，得 $ (x - frac(v_0^2 sin 2 alpha, 2 g))^2 = - frac(2 v_0^2 cos^2 alpha, g) (y - frac(v_0^2 sin^2 alpha, 2 g)) $ #noindent;这是顶点在 $(frac(v_0^2 sin 2 alpha, 2 g) \, frac(v_0^2 sin^2 alpha, 2 g))$ 处的抛物线方程（如图4.16），且从顶点到焦点的方向是 $y$ 轴的负方向，又焦点到准线的距离是 $frac(v_0^2 cos^2 alpha, g)$⁠，因此，从顶点到它的上方的准线距离等于 $frac(v_0^2 cos^2 alpha, 2 g)$⁠，而准线到 $x$ 轴的距离就等于 $ frac(v_0^2 cos^2 alpha, 2 g) + frac(v_0^2 sin^2 alpha, 2 g) = frac(v_0^2, 2 g) $ #noindent;故准线的位置仅依赖于初速度的大小，而与抛射角的大小无关．

#figure([#fig("7-18");

  ],
  caption: [
  ]
)

]
下面我们来讨论人口的增长与放射性元素蜕变的问题．

在很多单纯的自然现象中，一个随着时间而变化的量 $y\(t\)$ 的变化率常常和 $y\(t\)$ 当时的值成正比例，用数学式表达，即存在一个随该现象而定的常数 $k$（与 $t$ 无关），使得 $ y'\(t\)= k y\(t\) $ #noindent;或#numbered-eq($ frac(thin upright(d), thin upright(d) t) y\(t\)= k y\(t\) $);#noindent;人口的增长与放射性元素的蜕变就是这样的两个例子．

假如人口按某一固定的“增长率”$k$ 增长，譬如时间单位是“年”，增长率2%, 则 $k = 2 %$. 设人口随时间变化的函数是 $y\(t\)$, 本来 $y\(t\)$ 是整数，但由于数量很大，我们可以把它看作一个平滑函数，$y\(t\)$ 满足下面的条件：$ y\(t + Delta t\)- y\(t\)= k y\(t\)dot.op Delta t $ #noindent;换言之，人口增加数量与这段时间开始的人口数，以及这段时间间隔成比例，也即 $ frac(y\(t + Delta t\)- y\(t\), Delta t) = k y\(t\) $ #noindent;令 $Delta t arrow.r 0$, 由上式得到 $ frac(thin upright(d), thin upright(d) t) y\(t\)= k y\(t\) $ #noindent;也就是说，人口在时刻 $t$ 的瞬时变率与当时的值 $y\(t\)$ 成正比例．为求出函数 $y\(t\)$, 我们来解具有初始条件的微分方程

#numcases($$, $frac(thin upright(d), thin upright(d) t) y\(t\)= k y\(t\)$, $y\(0\)= A$);

#noindent;将 (4.30) 改写成 $ frac(thin upright(d) y\(t\), y\(t\)) = k thin upright(d) t $ #noindent;两边求积分，得 $ integral frac(thin upright(d) y\(t\), y\(t\)) = integral k thin upright(d) t $ #noindent;即：$ln\[y\(t\)\]= k t + C$⁠，由初始条件确定常数 $C$ 的值，得：$ ln A = C $ #noindent;所以：$ln\[y\(t\)\]= k t + ln A$⁠，移项，得：$ ln frac(y\(t\), A) = k t $ #noindent;由此得：$ frac(y\(t\), A) = e^(k t) $ #noindent;所以：$y\(t\)= A e^(k t)$ 为所求．

总结上面的讨论，得到以下命题：

#blk[命题][
设 $y'\(t\)= k y\(t\)$⁠，$y\(0\)= A$⁠，则：$ y\(t\)= A e^(k t) $

]
#example[
若某城市现有人口10万，按照每年3%的比率增长，问几年后人口是现有人口的2倍？

]
#solution[
设 $t_1$ 年后人口加倍，于是依题意有 $ 10 e^(3 % t_1) = 2 times 10 $ #noindent;即：$e^(0.03 t_1) = 2$, 两边取常用对数，得 $ 0.03 t_1 lg e & = lg 2\
t_1 & = frac(100 lg 2, 3 lg e) approx 100 / 3 dot.op frac(0.3010, 0 . 4343)\
 & approx 100 / 3 dot.op 0.6931 approx 23 . $ #noindent;答：约23年后，人口会加倍．

]
从问题的解法看出，人口的加倍期仅与增长率有关，即 $t_1 = frac(ln 2, k)$, 下面是二者之间的对照表．

#align(center)[
#table(
  columns: (auto, auto, auto, auto, auto, auto,),
  align: (center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon,),
  table.vline(x: 1),
  table.hline(),
  [增长率 $k$],
  [0.05],
  [0.04],
  [0.03],
  [0.02],
  [0.01],
  table.hline(),
  [加倍期 $t_1$],
  [约14年],
  [约17年],
  [约23年],
  [约34.5年],
  [约69年],
  table.hline(),
);

]
同样地可把上述命题应用于放射性元素蜕变问题．

#example[
放射性元素的数量随时间 $t$ 变化的函数是 $N\(t\)$, $A = N\(0\)$ 是起算时的数量，$k$ 是蜕变率，且知放射性元素经过 $Delta t$ 这段时间的蜕变，它减少的数量 $Delta N\(t\)= N\(t + Delta t\)- N\(t\)$ 与在时刻 $t$ 的数量 $N\(t\)$ 及这段蜕变时间 $Delta t$ 成比例，即 $ Delta N\(t\)= - k N\(t\)dot.op Delta t $ #noindent;因为放射性元素不断减少，所以 $Delta N$ 是负数，问经过多少年放射性元素剩下了一半？

]
#solution[
依题意，有 $ frac(thin upright(d) N, thin upright(d) t) = - k N\(t\) $ #noindent;根据本节命题，得到 $ N\(t\)= A e^(- k t) $

设经过 $t_1$ 年，放射性元素减少了一半，通常称 $t_1$ 为放射性元素的半衰期，于是 $ t_1 = frac(ln 2, k) approx frac(0 . 6931, k) $

]
下面是一些放射性元素的半衰期的简表．

#align(center)[
#table(
  columns: (auto, auto, auto, auto,),
  align: (center + horizon, center + horizon, center + horizon, center + horizon,),
  table.vline(x: 1),
  table.hline(),
  [元素],
  [氩Ar$""^39$],
  [碳C$""^14$],
  [氢H$""^3$],
  [半衰期],
  [269年],
  [5730年],
  [12.3年],
  table.hline(),
  [元素],
  [碘I$""^129$],
  [铀U$""^238$],
  [铀U$""^235$],
  [半衰期],
  [$16 times 10^6$ 年],
  [$4.5 times 10^9$ 年],
  [$0.71 times 10^9$ 年],
  table.hline(),
);

]
我们可以把岩石或化石中所含的各种微量的放射性元素，当作天然的计时仪表，因为各种放射性元素的微量都可以测量十分准确，所以我们可以通过对残留微量的测定，用半衰期去推算岩石或化石的“年龄”，甚至于我们所居住的地球的“年龄”．

#exercise[
+ #block(sticky: true)[求下列积分曲线：]

  #cols(2)[
  + $display(cases(y' = 2 x, y\|_(x = x_0) = y_0))$

  + $display(cases(y' = 2 sqrt(y), y\|_(x = 0) = 0))$

  + $display(cases(y' = frac(2, 3 root(3, x)), y\|_(x = 0) = 4))$

  ]

+ 在 $20.2 degree upright(C)$, 细菌受到5%的消毒溶液消毒，每小时细菌死亡的比率为11%, 假如开始时有1000个细菌，那么在24小时后还剩下多少？

+ 化学反应速度 $v$ 和温度 $t$ 的增加是按照有机体生长的规律进行的，当 $t = 0$ 时，$v = 30$\; 当 $t = 9.90$ 时，$v = 60$, 求反应率以及当 $t = 20$ 时，$v$ 的值．

+ 若函数 $y = f\(x\)$ 的变率 $frac(thin upright(d) y, thin upright(d) x)$ 与当时的函数值的平方成正比例，且当 $x = 0$ 时，$y = f\(0\)= 2$\; 当 $x = 1$ 时，$y = f\(1\)= 4$, 求函数 $y = f\(x\)$.

]
#heading(level: 3, numbering: none, outlined: false)[习题4.5]
+ #block(sticky: true)[计算下列不定积分：]

  #cols(2)[
  + $display(integral) frac(thin upright(d) x, 1 - 3 x^2)$

  + $display(integral) frac(1 - sin^(- 3) x, 1 - cos^2 x) thin upright(d) x$

  + $display(integral) frac(thin upright(d) x, sin x cos x)$

  + $display(integral) x sec^2 x thin upright(d) x$

  + $display(integral) x e^(2 x + 1) thin upright(d) x$

  + $display(integral) frac(x^2 + 2, x\(x - 1\)) thin upright(d) x$

  ]

+ #block(sticky: true)[求下列定积分：]

  #cols(2)[
  + $display(integral)_(- 1)^3 frac(thin upright(d) x, x^2 + 7 x + 10)$

  + $display(integral)_(sqrt(3))^0 frac(thin upright(d) x, 2 + x^2)$

  + $display(integral)_0^1 x sqrt((2 - x^2)^3) thin upright(d) x$

  + $display(integral)_0^(ln 3) frac(thin upright(d) x, e^x + 5 + 6 e^(- x))$

  + $display(integral)_1^(tfrac(7, 5)) frac(x^(tfrac(3, 4)) + x^(tfrac(1, 4)), x^(tfrac(9, 4)) - x^(tfrac(5, 4)) + x^(tfrac(1, 4))) thin upright(d) x$

  + $display(integral)_1^2 frac(2 - x + x^2, \(1 + x\)\(1 - x\)^2) thin upright(d) x$

  + $display(integral)_1^2 x ln x thin upright(d) x$

  + $display(integral)_(- pi)^pi sin m x sin n x thin upright(d) x$ (此处 $m\,n$ 是整数且 $m plus.minus n eq.not 0$)

  + $display(integral)_(tfrac(a, sqrt(3)))^a frac(thin upright(d) x, (a^2 + x^2)^(3\/2))$

  ]

+ 求下列极限：

  + $limits(lim)_(n arrow.r oo) 1 / n lr(\{ (1 + 1 / n)^2 + (1 + 2 / n)^2 + dots.h.c + (1 + n / n)^2 \})$

  + $limits(lim)_(n arrow.r oo) frac(1^4 + 2^4 + dots.h.c + n^4, n^5)$

  + $limits(lim)_(n arrow.r oo) 1 / n (sin pi / n + sin frac(2 pi, n) + dots.h.c + sin frac(n pi, n))$

  + $limits(lim)_(n arrow.r oo) (1 / sqrt(n + 1) + 1 / sqrt(n + 2) + dots.h.c + 1 / sqrt(n + n)) dot.op 1 / sqrt(n)$

+ 利用求 $y = 1 / x$ 的定积分，证明 $ ln\(n + 1\)< 1 + 1 / 2 + 1 / 3 + dots.h.c + 1 / n < 1 + ln n . $

+ 设 $0 < a lt.eq 1$⁠，求证：$ integral_0^a frac(thin upright(d) x, x^3 + 1) < integral_0^a frac(thin upright(d) x, x^4 + 1) . $

+ 设 $0 lt.eq x lt.eq pi / 4$⁠，利用不等式 $0 lt.eq sin x lt.eq x$ 证明：$ pi / 4 < integral_0^(pi\/4) frac(thin upright(d) x, sqrt(1 - sin x)) < 2 - sqrt(4 - pi) . $

+ 若 $m\,n$ 是正整数，求证：$ integral_0^1 x^m\(1 - x\)^n thin upright(d) x = frac(n, m + 1) integral_0^1 x^(m + 1)\(1 - x\)^(n - 1) thin upright(d) x . $

+ 求证：$display(integral)_0^pi x f\(sin x\)thin upright(d) x = pi / 2 integral_0^pi f\(sin x\)thin upright(d) x$.

+ 若 $I_n = display(integral)_0^(pi\/4) tan^n theta thin upright(d) theta quad\(n gt.eq 2\)$. 试求 $I_n$ 和 $I_(n - 2)$ 的关系式．

+ 若 $I_n = display(integral) frac(thin upright(d) x, \(x^2 + a^2\)^n)$⁠，求证：$ 2 n a^2 I_(n + 1) = frac(x, \(x^2 + a^2\)^n) +\(2 n - 1\)I_n $

+ #block(sticky: true)[设 $S_n = 1 / sqrt(1) + 1 / sqrt(2) + dots.h.c + 1 / sqrt(n)$⁠，$n$ 为正整数．$ T_n = frac(1, sqrt(1 + 1 / 2)) + frac(1, sqrt(2 + 1 / 2)) + dots.h.c + frac(1, sqrt(n + 1 / 2)) . $ #noindent;求证：]

  #cols(2)[
  + $S_n gt.eq display(integral)_1^(n + 1) frac(thin upright(d) x, sqrt(x))$

  + $limits(lim)_(n arrow.r oo) 1 / S_n = 0$

  + $S_(n + 1) - 1 lt.eq T_n lt.eq S_n$

  + $limits(lim)_(n arrow.r oo) T_n / S_n = 1$

  ]

+ 设 $f\(x\)=\(a x + b\)e^(x\/2)$, 求 $a\,b$ 的值，使得等式 $ f\(x\)= e^(x\/2) - 1 + 1 / 2 integral_0^x f\(t\)thin upright(d) t $ #noindent;对于任何 $x$ 的值都成立．

+ 求由曲线 $y = 4 / x^2$, $y = x - 1$, $x = 1$ 所围区域的面积．

+ 求在曲线 $x^2 + y^2 = 9$ 和 $y = 1 / 3\(- x^2 + 1\)$ 之间位于第二象限那部分的面积．

+ 求积分 $I\(a\)= display(integral)_(- 1)^1\|x - a\|e^x thin upright(d) x$ 在 $\|a\|lt.eq 1$ 时的最大值．

+ 设 $0 < t < pi$⁠，考察 $x$ 的函数 $f\(x\)= 2 sin x sin\(t - x\)$

  + 画出 $f\(x\)$ 在区间 $0 lt.eq x lt.eq pi$ 上的图象，再设 $ F\(t\)= integral_0^pi\|f\(x\)\|thin upright(d) x . $ #noindent;根据所作的图象说明 $F\(t\)$ 所表示的是什么？

  + 用关于 $t$ 的式子写出 $F\(t\)$, 并求出使 $F\(t\)$ 取最小值时 $t$ 的值．

+ 设 $T_1$ 是由抛物线 $y = 4 x^2$ 和直线 $x = a$, $x = 1$, $y = 0$ 所围成的区域，$T_2$ 是抛物线 $y = 4 x^2$ 和二直线 $x = a$, $y = 0$ 围成的区域，但是 $0 < a < 1$⁠，试求：

  + $T_1$ 绕 $x$ 轴旋转而成的旋转体体积 $V_1$\;

  + $T_2$ 绕 $y$ 轴旋转而成的旋转体体积 $V_2$\;

  + 使 $V_1 + V_2$ 为最大时 $a$ 的值．

+ 设 $0 lt.eq t lt.eq pi / 2$⁠，曲线 $y = sin x$ 与三条直线 $x = t$, $x = 2 t$, $y = 0$ 围成部分绕 $x$ 轴旋转所成的旋转体的体积为 $V\(t\)$⁠．当 $t = alpha$ 时 $V\(t\)$ 最大，试求 $cos alpha$ 的值．

+ 设曲线 $y = f\(x\)$ 通过点 $P\(3\,4\)$, 并满足微分方程 $frac(thin upright(d) y, thin upright(d) x) = y / x$⁠，求此积分曲线．

+ 若 $frac(thin upright(d) y, thin upright(d) x) = cos\(x + y\)$⁠，求不定积分．（提示：设 $z = x + y$⁠）
