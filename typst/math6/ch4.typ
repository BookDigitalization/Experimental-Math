// 由 typst/tools/tex2typ.py 从 math6/4.tex 转换而来，已人工校对的部分以本文件为准。
#import "../common/template.typ": *
#import "figs.typ": fig

= 函数的极限和连续函数的性质
== 函数的极限
=== 函数极限的概念
在第四册下，我们研究了数列的极限，数列是一种特殊的函数，这里的自变数 $n$ 取自然数列 $1\,2\,3\,dots.h\,n\,dots.h$ 的值，现在我们来研究更一般的情形，即函数 $f\(x\)$ 随 $x$ 连续变化而变化的情形，下面转到一般函数的极限．

#blk[定义1][
如果 $x$ 通过任何一个无限增大的数列 $\{ x_n \}$, 对应的函数值数列 $f\(x_1\)\,f\(x_2\)\,dots.h\,f\(x_n\)\,dots.h$ 都以定数 $ell$ 为它的极限，就说函数 $f\(x\)$, 当 $x arrow.r + oo$ 时，以 $ell$ 为极限，记作#numbered-eq($ lim_(x arrow.r + oo) f\(x\)= ell #h(2em) upright("或") #h(2em) f\(x\)arrow.r ell quad\(x arrow.r + oo\) $);

]
从几何上看，极限式 (1.1) 表示随着 $x$ 无限增大，曲线 $y = f\(x\)$ 以直线 $ell$ 为渐近线（图1.1）．

#figure([#fig("4-01");

  ],
  caption: [
  ]
)

类似地，可以定义函数极限 $limits(lim)_(x arrow.r - oo) f\(x\)= ell$, 这时，变量 $x$ 通过代数值无限地变小，而绝对值无限地增大的任何一个数列 $\{ x_n \}$⁠．

如果函数 $f\(x\)$ 当 $x arrow.r + oo$ 和 $x arrow.r - oo$ 时，都以定值为极限，就说 $f\(x\)$ 当 $x arrow.r oo$ 时，以定值 $ell$ 为极限，记作 $limits(lim)_(x arrow.r oo) f\(x\)= ell$, 或者 $f\(x\)arrow.r ell thick\(x arrow.r oo\)$⁠．

#example[
证明 $limits(lim)_(x arrow.r oo) 1 / x = 0$

]
#proof[
任何数列 $\{ x_n \}$ 的值 $x_1\,x_2\,dots.h\,x_n\,dots.h$ 趋向于 $+ oo$ 或 $- oo$ 时，对应的函数数列 $ 1 / x_1\,1 / x_2\,dots.h\,1 / x_n\,dots.h $ #noindent;的绝对值 $lr(|1 / x_n|)$ 便趋向于零，即 $ lim_(n arrow.r oo) lr(|1 / x_n|) = 0 $ #noindent;从而 $limits(lim)_(x arrow.r oo) 1 / x = 0$

]
#example[
说明函数 $sin x$, 当 $x arrow.r oo$ 时，没有极限．

]
#solution[
令自变量 $x$ 取数列 $x_n = - pi / 2 + 2 n pi quad\(n = 1\,2\,3\,dots.h\)$ 的值趋向 $+ oo$⁠，则对应的函数值数列 $ sin x_n & = sin (- pi / 2 + 2 n pi)\
 & = sin (- pi / 2) = - 1 #h(2em)\(n = 1\,2\,3\,dots.h\). $ #noindent;恒取定值 $- 1$, 于是 $ lim_(n arrow.r oo) sin x_n = lim_(n arrow.r oo) sin (- pi / 2 + 2 n pi) = - 1 $

再令自变量 $x$ 取数列 $ x_n = pi / 2 + 2 n pi #h(2em)\(n = 1\,2\,3\,dots.h\) $ #noindent;的值趋向于 $+ oo$, 则对应的函数值数列 $ sin x_n = sin (pi / 2 + 2 n pi) = 1 #h(2em)\(n = 1\,2\,3\,dots.h\) $ #noindent;恒取定值1, 于是 $ lim_(n arrow.r oo) sin x_n = lim_(n arrow.r oo) sin (pi / 2 + 2 n pi) = 1 $ #noindent;由于 $x$ 取趋向 $+ oo$ 的两个不同数列时，$y = sin x$ 可以有不同的极限，因此 $limits(lim)_(x arrow.r oo) sin x$ 不存在．

]
#blk[定义2][
设函数 $f\(x\)$ 在点 $a$ 附近有定义（但在 $x = a$ 时，可以没有定义），如果当自变量 $x$ 不论通过怎样一个以 $a$ 为极限但始终不等于 $a$ 的数列 $\{ x_n \}$, 对应的函数值数列 $f\(x_1\)\,f\(x_2\)\,dots.h\,f\(x_n\)\,dots.h$ 总有极限 $ell$, 就说：

当 $x$ 趋近于 $a$ 时，$f\(x\)$ 以 $ell$ 为极限，记作#numbered-eq($ lim_(x arrow.r a) f\(x\)= ell\,#h(2em) upright("或") #h(2em) f\(x\)arrow.r ell quad\(x arrow.r a\) $);

]
极限式 (1.2) 的几何意义如图1.2所示：当 $x$ 无限地靠近 $a$⁠，但总不能等于 $a$ 时，曲线 $y = f\(x\)$ 上的点 $\(x\,f\(x\)\)$ 无限地靠近 $\(a\,ell\)$ 点．

#figure([#fig("4-02");

  ],
  caption: [
  ]
)

初学的人常常要问：为什么在定义中谈到 $x$ 趋近于 $a$ 时，要限制 $x$ 始终不等于 $a$ 呢？这是因为我们关心的是函数 $f\(x\)$ 在 $a$ 附近的变化趋势，它和函数 $f\(x\)$ 在 $x = a$ 这一点的值没有什么必然关系，这也就是说，无论 $f\(x\)$ 在点 $a$ 取什么值甚至没有定义，都不影响在这一点的极限的存在和极限值．

#example[
设 $f\(x\)= 3 / 4 dot.op frac(x^2 - 1, x - 1)$⁠，$x in\(- oo\,1\)union\(1\,+ oo\)$⁠，求 $limits(lim)_(x arrow.r 1) f\(x\)$

]
#solution[
$f\(x\)= 3 / 4 dot.op frac(x^2 - 1, x - 1)$ 在 $x = 1$ 时无意义，因为那时分母就变成零，因此，这里没有函数值 $f\(1\)$, 曲线 $y = f\(x\)$ 也没有相应于横坐标为1的那个点，但是让 $x$ 任意地趋近于1是完全可以的，若 $x eq.not 1$, 则有 $ f\(x\)= 3 / 4 dot.op frac(\(x - 1\)\(x + 1\), x - 1) = 3 / 4\(x + 1\) $ #noindent;因此，不论 $x$ 通过怎样一个以1为极限的数列 $\{ x_n \}$, 对于相应的数列 $\{ f\(x_n\)\}$, 我们都有 $ lim_(x_n arrow.r 1) f\(x_n\)= 3 / 4\(1 + 1\)= 3 / 2 $

从几何上看，曲线 $y = f\(x\)$ 除去点 $(1 \, 1 1 / 2)$ 外是与直线 $y = 3 / 4\(x + 1\)$ 一致的，唯独在那一点，曲线有个空隙，而在 $x = 1$ 的邻近的点只要充分接近于点1, 所对应的函数值与 $3 / 2$ 的差的绝对值可以任意小，如图1.3．

]
#figure([#fig("4-03");

  ],
  caption: [
  ]
)

#example[
证明当 $x arrow.r 0$ 时，函数 $f\(x\)= sin 1 / x$ 没有极限．

]
#solution[
函数 $f\(x\)= sin 1 / x$ 对于一切 $x eq.not 0$ 的值有定义，因此这个函数在点 $x = 0$ 的邻域内有定义．

当 $x$ 取数列 $\{ x_n \} = lr(\{ frac(2, \(2 n + 1\)pi) class("normal", stretch(|, size: #1.8em)) n = 1 \, 2 \, 3 \, dots.h \})$ 的值而趋于零时，数列 $lr(\{ 1 / x_n \})$ 相应的值是 $ frac(3 pi, 2)\,frac(5 pi, 2)\,frac(7 pi, 2)\,dots.h\,\(2 n + 1\)pi / 2\,dots.h $ #noindent;此时数列 $lr(\{ sin 1 / x_n \})$ 便交替地取 $- 1$ 和 $+ 1$ 这两个数值，换言之 $ sin 1 / x_n =\(- 1\)^n\,#h(2em) n = 1\,2\,3\,dots.h $ #noindent;因此，当 $n arrow.r oo$ 时，数列 $lr(\{ sin 1 / x_n \})$ 不趋于任何极限值．这就证明了当 $x arrow.r 0$ 时，函数 $f\(x\)= sin 1 / x$ 的极限不存在．

]
函数的图象大致如图1.4所示．曲线关于原点对称，在包含原点的每一个对称邻域 $\(- delta\,delta\)$ 内，曲线 $y = sin 1 / x$ 在原点的邻近作无数次振动，且曲线的振幅恒为1, 虽将原点的邻域的长缩小，也不能减少振动的次数．

#figure([#fig("4-04");

  ],
  caption: [
  ]
)

上面是用数列的极限来说明函数的极限，其实我们也可以直接定义函数极限．

#blk[定义3][
如果函数 $f$ 在点 $a$ 邻域上有定义（可能去掉点 $a$ 本身），并且对于任给的 $epsilon > 0$⁠，总存在 $delta > 0$⁠，使得当 $0 <\|x - a\|< delta$ 时，就有 $\|f\(x\)- ell\|< epsilon$, 那么就说 $ell$ 为当 $x$ 趋近于 $a$ 时，函数 $f$ 在点 $a$ 的极限值．

]
我们对这个定义需要说明以下几点：

+ 用定义3验证某数 $ell$ 是函数 $f$ 在点 $a$ 的极限的办法就是对于任给的 $epsilon > 0$, 要找到这样的正数 $delta$ 使得能够由不等式 $\|x - a\|< delta$ 推出不等式 $\|f\(x\)- ell\|< epsilon$⁠，虽然 $epsilon$ 是任意的正数，但是在找 $delta$ 的过程中，$epsilon$ 是固定不变的，$delta$ 依赖于 $epsilon$⁠．

+ 对于已给的 $epsilon$, 只要证明有一个 $delta > 0$ 存在就行．因为如果有一个 $delta$ 存在，把 $delta$ 再缩小一些，显然仍满足我们的要求．

+ 不等式 $\|x - a\|> 0$ 只是说明 $x eq.not a$, 即把 $x$ 等于 $a$ 的情况去掉，这是因为我们关心的是函数 $f$ 在点 $a$ 附近的变化趋势，而和函数在 $x = a$ 这点的值无关．

+ 我们指出定义2和定义3是等价的．

#example[
用定义3证明 $limits(lim)_(x arrow.r 1) frac(x^3 - 1, x - 1) = 3$

]
#proof[
任给 $epsilon > 0$, 要找 $delta > 0$, 使由 $0 <\|x - 1\|< delta$ 推出 $lr(|frac(x^3 - 1, x - 1) - 3|) < epsilon$ 成立．

当 $x eq.not 1$ 时，$ lr(|frac(x^3 - 1, x - 1) - 3|) & =\|\(x^2 + x + 1\)- 3\|\
 & =\|\(x - 1\)\(x + 2\)\|=\|x - 1\|dot.op\|x + 2\| $

要由 $\|x - 1\|dot.op\|x + 2\|< epsilon$ 找 $delta$⁠，显然，这里因子 $\|x + 2\|$ 引起了麻烦．为方便起见，先假定 $0 <\|x - 1\|< 1$⁠，即取 $delta_1 = 1$⁠，这样 $ 0 <\|x - 1\|< 1 quad arrow.r quad\|x + 2\|=\|\(x - 1\)+ 3\|lt.eq\|x - 1\|+ 3 < 4 $#noindent;因此，要使 $ display(cases(0 <\|x - 1\|< 1, \|x - 1\|dot.op\|x + 2\|< epsilon)) $ #noindent;只须 $ display(cases(0 <\|x - 1\|< 1, 4\|x - 1\|< epsilon)) arrow.r quad display(cases(0 <\|x - 1\|< 1, \|x - 1\|< epsilon / 4)) $ #noindent;由此可见，只须取 $delta = min (1 \, epsilon / 4)$⁠，即取 $delta$ 为1与 $epsilon / 4$ 中的较小者．

$therefore quad$ 对于任意 $epsilon > 0$⁠，取 $delta = min (1 \, epsilon / 4)$⁠，则当 $0 <\|x - 1\|< delta$ 时，即有 $ lr(|frac(x^3 - 1, x - 1) - 3|) < epsilon $ #noindent;这也就证明了 $ lim_(x arrow.r 1) frac(x^3 - 1, x - 1) = 3 $

]
#example[
证明 $limits(lim)_(x arrow.r a) sqrt(x) = sqrt(a) quad\(a > 0\)$

]
#proof[
对于任意的 $epsilon > 0$, 我们必须找到一个 $delta > 0$, 使得当 $\|x - a\|< delta$ 时，$\|sqrt(x) - sqrt(a)\|< epsilon$ 成立，因为 $ \|sqrt(x) - sqrt(a)\|= frac(\|x - a\|, sqrt(x) + sqrt(a)) < frac(\|x - a\|, sqrt(a)) $ #noindent;所以要使 $frac(\|x - a\|, sqrt(a)) < epsilon$⁠，只须 $\|x - a\|< sqrt(a) epsilon$

如果取 $delta = sqrt(a) epsilon$⁠，则 $frac(\|x - a\|, sqrt(a)) < frac(sqrt(a) epsilon, sqrt(a)) = epsilon$ 因此，对于任意 $epsilon > 0$⁠，取 $delta = sqrt(a) epsilon$⁠，则当 $\|x - a\|< delta$ 时，就有 $\|sqrt(x) - sqrt(a)\|< epsilon$ 成立．这也就证明了 $ lim_(x arrow.r a) sqrt(x) = sqrt(a) quad\(a > 0\) $

]
有时虽然 $f\(x\)$ 在某点的左边（或右边）没有定义，如图1.5中的 $a\,b$ 两点，我们也可以谈论 $f$ 在点 $a$ 或点 $b$ 两点的极限，譬如对于所有小于 $a$ 的数，$f$ 虽然没有定义，但是我们可以考察，当 $x$ 从 $a$ 的右侧趋近于 $a$ 时，函数 $f$ 的变化趋势，也就是考察 $f$ 的单边极限是否存在．

#figure([#fig("4-05");

  ],
  caption: [
  ]
)

#blk[定义][
设 $f\(x\)$ 在区间 $\(a\,b\)$ 上有意义，如果任给 $epsilon > 0$, 总存在某个 $delta > 0$ 使得当 $x in\(a\,a + delta\)$ 时，总有 $\|f\(x\)- ell\|< epsilon$⁠，我们就说函数 $f$ 在点 $a$ 以 $ell$ 为#strong[右极限]，记作：$ lim_(x arrow.r a^(+)) f\(x\)= ell $

]
类似地，可以定义#strong[左极限]，只需把开区间 $\(a\,a + delta\)$ 换成 $\(b - delta\,b\)$ 就行了，并记作 $ lim_(x arrow.r b^(-)) f\(x\)= ell $

#example[
设函数 $f\(x\)= display(cases(x - 1\, & quad x lt.eq 1, x + 1\, & quad x > 1)) quad$（图1.6）

求 $limits(lim)_(x arrow.r 1^(-)) f\(x\)$ 和 $limits(lim)_(x arrow.r 1^(+)) f\(x\)$

]
#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("4-06");], caption: []), figure([#fig("4-07");], caption: []))));

#solution[
$ lim_(x arrow.r 1^(-)) f\(x\) & = lim_(x arrow.r 1^(-))\(x - 1\)= 0\
lim_(x arrow.r 1^(+)) f\(x\) & = lim_(x arrow.r 1^(+))\(x + 1\)= 2 $ #noindent;图1.6显示了上面的结果．

]
#example[
函数 $y =\[x\]$ 代表不超过 $x$ 的最大整数，即若 $n lt.eq x < n + 1$⁠，$n in bb(Z)$⁠，则 $y =\[x\]= n$⁠．（图1.7）

求 $limits(lim)_(x arrow.r 2^(+)) frac(\[x\], x)\,quad limits(lim)_(x arrow.r 2^(-)) frac(\[x\], x)$

]
#solution[
显然，当 $x = 2$ 时，$frac(\[x\], x) = frac(\[2\], 2) = 2 / 2 = 1$, 又 $ frac(\[x\], x) = display(cases(1 / x\, & quad x in\(1\,2\), 2 / x\, & quad x in\(2\,3\))) $ #noindent;所以 $ lim_(x arrow.r 2^(+)) frac(\[x\], x) & = lim_(x arrow.r 2^(+)) 2 / x = 1\
lim_(x arrow.r 2^(-)) frac(\[x\], x) & = lim_(x arrow.r 2^(-)) 1 / x = 1 / 2 $

]
下面的命题说明函数的极限与函数的单边极限的关系：

#blk[定理][
极限 $limits(lim)_(x arrow.r a) f\(x\)$ 存在的必要和充分条件是左极限 $limits(lim)_(x arrow.r a^(-)) f\(x\)$ 和右极限 $limits(lim)_(x arrow.r a^(+)) f\(x\)$ 都存在，并且二者相等．

]
#proof[
必要性

如果 $limits(lim)_(x arrow.r a) f\(x\)= ell$, 就是说任给 $epsilon > 0$, 总存在 $delta > 0$, 使得当 $0 <\|x - a\|< delta$, 即当 $x in\(a - delta\,a\)union\(a\,a + delta\)$ 时，有 $\|f\(x\)- ell\|< epsilon$⁠．换言之，当 $x in\(a - delta\,a\)$ 和 $x in\(a\,a + delta\)$ 时，都有 $\|f\(x\)- ell\|< epsilon$⁠，因此 $ limits(lim)_(x arrow.r a^(-)) f\(x\)= ell\,#h(2em) limits(lim)_(x arrow.r a^(+)) f\(x\)= ell $

充分性

如果 $limits(lim)_(x arrow.r a^(-)) f\(x\)= ell$ 且 $limits(lim)_(x arrow.r a^(+)) f\(x\)= ell$, 那么总存在 $delta_1 > 0$, 使得当 $x in\(a - delta_1\,a\)$ 时，有 $\|f\(x\)- ell\|< epsilon$⁠．

又存在 $delta_2 > 0$, 使得当 $x in\(a\,a + delta_2\)$ 时，有 $\|f\(x\)- ell\|< epsilon$⁠．

取 $delta = min\(delta_1\,delta_2\)$⁠，于是当 $x in\(a - delta\,a + delta\)$ 时，有 $\|f\(x\)- ell\|< epsilon$⁠．这就是说：$ limits(lim)_(x arrow.r a) f\(x\)= ell $

]
#example[
说明 $limits(lim)_(x arrow.r 3) frac(\|x - 3\|, x - 3)$ 是否存在？

]
#solution[
$ \|x - 3\| & = display(cases(x - 3\, & quad x > 3, 3 - x\, & quad x < 3))\
limits(lim)_(x arrow.r 3^(-)) frac(\|x - 3\|, x - 3) & = limits(lim)_(x arrow.r 3^(-)) frac(3 - x, x - 3) = limits(lim)_(x arrow.r 3^(-))\(- 1\)= - 1\
limits(lim)_(x arrow.r 3^(+)) frac(\|x - 3\|, x - 3) & = limits(lim)_(x arrow.r 3^(+)) frac(x - 3, x - 3) = limits(lim)_(x arrow.r 3^(+))\(1\)= 1 $

$because quad limits(lim)_(x arrow.r 3^(-)) frac(\|x - 3\|, x - 3) eq.not limits(lim)_(x arrow.r 3^(+)) frac(\|x - 3\|, x - 3)$

$therefore quad limits(lim)_(x arrow.r 3) frac(\|x - 3\|, x - 3)$ 不存在．

]
=== 函数值趋于无穷大
如果函数 $f$ 在点 $a$ 的邻域上有定义（可能去掉点 $a$ 本身）对于无论多么大的正数 $G$, 总存在一个够小的正数 $delta$, 使得当 $0 <\|x - a\|< delta$ 时，就有 $\|f\(x\)\|> G$, 那么就说当 $x$ 趋于 $a$ 时，函数 $f\(x\)$ 趋于#strong[无穷大]，记作 $ lim_(x arrow.r a) f\(x\)= oo $

#example[
求证 $limits(lim)_(x arrow.r 0) 1 / x = oo$

]
#proof[
设 $G$ 是任意给定的正数，我们要求出一个 $delta > 0$, 使得当 $\|x\|< delta$ 时，$\|f\(x\)\|= lr(|1 / x|) > G$⁠．

事实上，要使 $frac(1, \|x\|) > G$, 只须 $0 <\|x\|< 1 / G$⁠．取 $delta = 1 / G$, 于是当 $\|x\|< delta$ 时，就有 $frac(1, \|x\|) > G$ 因此，$ limits(lim)_(x arrow.r 0) 1 / x = oo $

]
#example[
证明当 $x arrow.r 0$ 时，函数 $f\(x\)= 1 / x sin 1 / x quad\(x eq.not 0\)$ 不趋于无穷大．

]
#proof[
如果自变量 $x$ 取数列 $\{ x_n \} = lr(\{ frac(2, \(2 n + 1\)pi) class("normal", stretch(|, size: #1.8em)) n = 1 \, 2 \, 3 \, dots.h \})$ 的值趋于0时，$sin 1 / x$ 在原点的任意邻域内无限次交替地取 $- 1\,1$ 这两个值，对于这些值，$\|f\(x\)\|= 1 / x = pi / 2\(2 n + 1\)$ 趋于无穷大．

但是当 $x$ 取数列 $\{ x'_n \} = lr(\{ frac(1, n pi) class("normal", stretch(|, size: #1.8em)) n = 1 \, 2 \, 3 \, dots.h \})$ 的值趋于0时，由于 $sin 1 / x = sin\(n pi\)= 0$, 故对于这些值，$limits(lim)_(x'_n arrow.r 0) f\(x\)= 0$.

可见在原点的邻近不存在这样的 $delta > 0$, 使得当 $\|x\|< delta$ 时，$\|f\(x\)\|> G$, 因此，当 $x arrow.r 0$ 时，$f\(x\)= 1 / x sin 1 / x quad\(x eq.not 0\)$ 不趋于无穷大．

$y = f\(x\)$ 的图象位于两条双曲线 $x y = plus.minus 1$ 之间，且在原点的邻近作无限多次振动，越靠近原点，曲线的振幅越大（图1.8）.

#figure([#fig("4-08");

  ],
  caption: [
  ]
)

]
如果对于任何 $G > 0$, 存在 $delta > 0$, 当 $0 <\|x - a\|< delta$ 时，有 $f\(x\)> G$, 就说当 $x arrow.r a$ 时，函数 $f\(x\)$ 趋于正无穷大，记作 $ lim_(x arrow.r a) f\(x\)= + oo $

如果对于任何 $G > 0$, 存在 $delta > 0$, 当 $0 <\|x - a\|< delta$ 时，有 $f\(x\)< - G$, 就说当 $x arrow.r a$ 时，函数 $f\(x\)$ 趋于负无穷大，记作 $ lim_(x arrow.r a) f\(x\)= - oo $

例如，我们有：$ lim_(x arrow.r 0) 1 / x^2 = + oo\,#h(2em) lim_(x arrow.r 0) frac(\(- 1\), x^2) = - oo $

类似地，我们可以定义：$ lim_(x arrow.r a^(-)) f\(x\)= + oo\,quad lim_(x arrow.r a^(+)) f\(x\)= + oo\,quad lim_(x arrow.r a^(-)) f\(x\)= - oo\,quad lim_(x arrow.r a^(+)) f\(x\)= - oo $ #noindent;的含义，这里不再写出．建议读者将这些定义严格地写出来．

例如，我们有：$ lim_(theta arrow.r tfrac(pi, 2)^(-)) tan theta = + oo\,#h(2em) lim_(theta arrow.r tfrac(pi, 2)^(+)) tan theta = - oo\
lim_(x arrow.r 0^(+)) log_a x = - oo quad\(a > 1\)\,#h(2em) lim_(x arrow.r 0^(+)) log_a x = + oo quad\(0 < a < 1\) $

#exercise[
+ #block(sticky: true)[用函数极限定义证明：]

  #cols(2)[
  + $limits(lim)_(x arrow.r oo) frac(1, 2 x + 1) = 0$

  + $limits(lim)_(x arrow.r 2) x^2 = 4$

  + $limits(lim)_(x arrow.r - 1) frac(x - 3, x^2 - 9) = 1 / 2$

  + $limits(lim)_(x arrow.r 1) 1 / x^2 = 1$

  + $limits(lim)_(x arrow.r 1) frac(x^3 - x, x - 1) = 2$

  ]

+ 说明：$limits(lim)_(x arrow.r 3) frac(x, x^2 - 9) = oo$

+ #block(sticky: true)[下面极限是否存在？]

  #cols(2)[
  + $limits(lim)_(x arrow.r 1) frac(2 x\|x - 1\|, x - 1)$

  + $limits(lim)_(x arrow.r 3) frac(\[x\]^2 - 9, x^2 - 9)$

  ]

]
=== 函数极限算法定理
函数的极限算法定理与数列的极限算法定理类似，因为所谓 $limits(lim)_(x arrow.r a) u\(x\)= A$, $limits(lim)_(x arrow.r a) v\(x\)= B$ 的意思就是对于任何一个各项都不同于 $a$ 并且以 $a$ 为极限的数列 $x_n arrow.r a$, 便有函数值数列 $\{ u\(x_n\)\}$, $\{ v\(x_n\)\}$, 并且 $limits(lim)_(n arrow.r oo) u\(x_n\)= A$, $limits(lim)_(n arrow.r oo) v\(x_n\)= B$, 因此，根据第四册下第三章的定理就可以直接得到相应的结果．现在给出函数的极限运算定理如下：

#blk[定理][
设 $limits(lim)_(x arrow.r a) u\(x\)= A$, $limits(lim)_(x arrow.r a) v\(x\)= B$⁠，那么

+ $limits(lim)_(x arrow.r a)\[u\(x\)+ v\(x\)\]= limits(lim)_(x arrow.r a) u\(x\)+ limits(lim)_(x arrow.r a) v\(x\)$

+ $limits(lim)_(x arrow.r a)\[u\(x\)dot.op v\(x\)\]= limits(lim)_(x arrow.r a) u\(x\)dot.op limits(lim)_(x arrow.r a) v\(x\)$

+ $limits(lim)_(x arrow.r a)\[c dot.op u\(x\)\]= c dot.op limits(lim)_(x arrow.r a) u\(x\)$

+ $limits(lim)_(x arrow.r a) frac(u\(x\), v\(x\)) = frac(limits(lim)_(x arrow.r a) u\(x\), limits(lim)_(x arrow.r a) v\(x\))$

  只要 $v\(x\)$ 恒不为0，而且 $limits(lim)_(x arrow.r a) v\(x\)eq.not 0$

+ $limits(lim)_(x arrow.r a) root(n, u\(x\)) = root(n, limits(lim)_(x arrow.r a) u\(x\))$

+ 如 $limits(lim)_(x arrow.r a) u\(x\)= A = limits(lim)_(x arrow.r a) v\(x\)$⁠，而 $\|x - a\|< delta$ 时，$u\(x\)< f\(x\)< v\(x\)$⁠，则：$ limits(lim)_(x arrow.r a) f\(x\)= A $ #noindent;即：如果 $u\(x\)$ 与 $v\(x\)$ 趋向同一极限 $A$⁠，且 $f\(x\)$ 在 $u\(x\)$ 与 $v\(x\)$ 之间，那么，$f\(x\)$ 便也趋向那个极限 $A$⁠．

]
现在只有5需要补证．

设 $limits(lim)_(x arrow.r a) u\(x\)= A > 0$, 则根据函数极限定义：对于 $epsilon = A / 2 > 0$, 存在 $delta > 0$⁠，使得 $0 <\|x - a\|< delta$ 时，有#numbered-eq($ u\(x\)> A / 2 > 0 $);

于是，$ root(n, u\(x\)) - root(n, A) = frac(u\(x\)- A, sum_(k = 1)^n\[u\(x\)\]^(tfrac(n - k, n)) A^(tfrac(k - 1, n))) $ #noindent;由 (1.3) 式 $ \[u\(x\)\]^(tfrac(n - k, n)) > (A / 2)^(tfrac(n - k, n)) $ #noindent;故 $ sum_(k = 1)^n\[u\(x\)\]^(tfrac(n - k, n)) A^(tfrac(k - 1, n)) & > sum_(k = 1)^n (A / 2)^(tfrac(n - k, n)) A^(tfrac(k - 1, n))\
 & = A^(tfrac(n - 1, n)) sum_(k = 1)^n (1 / 2)^(tfrac(n - k, n))\
 & = A^(tfrac(n - 1, n)) lr(\{ (1 / 2)^(tfrac(n - 1, n)) + (1 / 2)^(tfrac(n - 2, n)) + dots.h.c + (1 / 2)^(tfrac(1, n)) + 1 \})\
 & = A^(tfrac(n - 1, n)) lr(\{ frac(1 - (1 / 2)^(tfrac(n - 1, n)) dot.op (1 / 2)^(tfrac(1, n)), 1 - (1 / 2)^(tfrac(1, n))) \})\
 & = A^(tfrac(n - 1, n)) dot.op frac(1 / 2, 1 - (1 / 2)^(tfrac(1, n))) = frac(A^(tfrac(n - 1, n)), 2 - 2^(tfrac(n - 1, n))) $ #noindent;$therefore quad lr(|root(n, u\(x\)) - root(n, A)|) <\|u\(x\)- A\|dot.op frac(2 - 2^(tfrac(n - 1, n)), A^(tfrac(n - 1, n)))$

由题设 $limits(lim)_(x arrow.r a) u\(x\)= A$⁠，而 $frac(2 - 2^(tfrac(n - 1, n)), A^(tfrac(n - 1, n)))$ 是一个与 $x$ 无关的常数，所以 $ lim_(x arrow.r a) root(n, u\(x\)) = root(n, A) = root(n, lim_(x arrow.r a) u\(x\)) $

下面我们来证明两个重要极限公式，为此先介绍一个引理．

#blk[引理][
对于任意实数 $theta$, 都有 $\|sin theta\|lt.eq\|theta\|$

]
#proof[
由于对于任意实数．有 $\|sin theta\|lt.eq 1$, 那么仅考虑 $theta in\(0\,pi\/2\)$ 即可．

在单位圆 $O$ 上（图1.9），截取弧 $wideparen(P_0 M)$ 使弧长 $\|wideparen(P_0 M)\|$ 等于 $theta$, 其中 $P_0$ 和 $M$ 分别有坐标 $\(1\,0\)$ 和 $\(x\,y\)$, 于是 $ sin theta = y < sqrt(y^2 +\(1 - x\)^2) =\|P_0 M\|<\|wideparen(P_0 M)\|= theta $

显然，当 $theta = 0$ 时，有 $sin theta = theta$. 因此 $ \|sin theta\|lt.eq\|theta\|\,#h(2em) theta in\(0\,pi\/2\) $

如果 $- pi\/2 < theta < 0$, 则仍有 $\|M N\|< wideparen(P_0 M)$⁠，于是 $ \|sin theta\|<\|theta\|\,#h(2em) theta in\(- pi\/2\,0\) $

如果 $\|theta\|gt.eq pi\/2$, 则因为 $pi\/2 > 1$ 与 $\|sin theta\|lt.eq 1$, 而同样地也得到 $\|sin theta\|<\|theta\|$.

因此，对于一切 $theta eq.not 0$ 的值，有 $\|sin theta\|<\|theta\|$\; 当 $theta = 0$ 时，有 $\|sin theta\|=\|theta\|$⁠．

]
#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("4-09");], caption: []), figure([#fig("4-10");], caption: []))));

#blk[定理][
$ lim_(theta arrow.r 0) frac(sin theta, theta) = 1\,#h(2em) lim_(theta arrow.r 0) frac(cos theta - 1, theta) = 0 $

]
#proof[
让我们先证明 $limits(lim)_(theta arrow.r 0) frac(sin theta, theta) = 1$⁠．由图1.10容易看出：

假定 $theta$ 的单位是弧度，于是：$ triangle.stroked.t O B D upright("的面积") & = 1 / 2 O B dot.op B D = 1 / 2 cos theta dot.op sin theta\
triangle.stroked.t O A C upright("的面积") & = 1 / 2 O A dot.op A C = 1 / 2 dot.op 1 dot.op tan theta\
upright("扇形") O A D upright("的面积") & = 1 / 2 O A dot.op wideparen(A D) = 1 / 2 dot.op 1^2 dot.op theta $

假如角是用180等分平角的“度”作为单位，则扇形面积就是 $1 / 2 dot.op 1 dot.op pi / 180 theta$⁠．

因为上述扇形是夹在 $triangle.stroked.t O B D$ 和 $triangle.stroked.t O A C$ 之间，所以#numbered-eq($ 1 / 2 cos theta sin theta < 1 / 2 theta < 1 / 2 tan theta = 1 / 2 frac(sin theta, cos theta) $);#noindent;即有，若 $0 < theta < pi / 2$⁠，则#numbered-eq($ cos theta < frac(sin theta, theta) < frac(1, cos theta) $);#noindent;注意到：$sin\(- theta\)= - sin theta$ 和 $cos\(- theta\)= cos theta$, 不等式 (1.5) 也蕴含，若 $- pi / 2 < theta < 0$, 则#numbered-eq($ cos\(- theta\)< frac(sin\(- theta\), - theta) < frac(1, cos\(- theta\)) $);#noindent;将不等式 (1.5) 和 (1.6) 合并为，若 $0 <\|theta\|< pi / 2$⁠，则#numbered-eq($ cos theta < frac(sin theta, theta) < frac(1, cos theta) $);#noindent;又因为 $ 0 lt.eq\|1 - cos theta\|= lr(|2 sin^2 theta / 2|) lt.eq 2 lr(|sin theta / 2|) <\|theta\| $ #noindent;从而 $ 0 lt.eq lim_(theta arrow.r 0)\|1 - cos theta\|lt.eq lim_(theta arrow.r 0)\|theta\|= 0 $ #noindent;所以 $ lim_(theta arrow.r 0)\|1 - cos theta\|= 0 $ #noindent;即：$limits(lim)_(theta arrow.r 0) cos theta = 1$ 由 (1.7) 知被夹逼在两者之间的 $frac(sin theta, theta)$ 极限值也就一定是1了！

以 $limits(lim)_(theta arrow.r 0) frac(sin theta, theta) = 1$ 为基础，则：$ lim_(theta arrow.r 0) frac(cos theta - 1, theta) & = lim_(theta arrow.r 0) lr(\{ frac(- 2 (sin theta / 2)^2, theta) \})\
 & = lim_(theta arrow.r 0) (- sin theta / 2) frac(sin theta / 2, theta / 2)\
 & = lim_(theta arrow.r 0) (- sin theta / 2) dot.op lim_(theta arrow.r 0) frac(sin theta / 2, theta / 2)\
 & = 0 dot.op 1 = 0 $

]
#example[
求：(1) $limits(lim)_(x arrow.r 2) frac(x^2 + 3 x - 10, 3 x^2 - 5 x - 2)$⁠；#h(2em);\(2) $limits(lim)_(x arrow.r 0) frac(root(3, 1 + x^2) - 1, x^2)$

]
#solution[
如果应用1.3中的定理去分别求 (1)、(2) 中的分子、分母的极限时，其分子、分母的极限值均为零，即我们得到 $0 / 0$ 的不定形式．我们通常要对原代数式变形，找出分子、分母中具有 $x - a$ 的因子，消去 $x - a$ 的公共因子，一般问题就可解决．

\(1) $ limits(lim)_(x arrow.r 2) frac(x^2 + 3 x - 10, 3 x^2 - 5 x - 2) & = limits(lim)_(x arrow.r 2) frac(\(x + 5\)\(x - 2\), \(3 x + 1\)\(x - 2\))\
 & = limits(lim)_(x arrow.r 2) frac(x + 5, 3 x + 1)\
 & = frac(2 + 5, 3 times 2 + 1) = 1 $

\(2) $ limits(lim)_(x arrow.r 0) frac(root(3, 1 + x^2) - 1, x^2) & = limits(lim)_(x arrow.r 0) frac(\(1 + x^2\) - 1, x^2 (root(3, \(1 + x^2\)^2) + root(3, 1 + x^2) + 1))\
 & = limits(lim)_(x arrow.r 0) frac(1, root(3, \(1 + x^2\)^2) + root(3, 1 + x^2) + 1) = 1 / 3 $

]
#example[
求：(1) $limits(lim)_(x arrow.r 0) frac(cos x - 1, x^2)$⁠；#h(2em);\(2) $limits(lim)_(x arrow.r pi) frac(sin m x, sin n x) thick\(m\,n in bb(N)\)$

]
#solution[
\(1) $ limits(lim)_(x arrow.r 0) frac(cos x - 1, x^2) & = limits(lim)_(x arrow.r 0) frac(- 2 (sin x / 2)^2, x^2)\
 & = frac(- 2, 2^2) limits(lim)_(x arrow.r 0) frac(sin x / 2, x / 2) dot.op limits(lim)_(x arrow.r 0) frac(sin x / 2, x / 2)\
 & = (- 1 / 2) dot.op 1 dot.op 1 = - 1 / 2 $

\(2) 由三角函数诱导公式易知 $ sin m\(pi - x\)= sin\(m pi - m x\)=\(- 1\)^(m - 1) sin m x $ #noindent;同样得到 $ sin n\(pi - x\)=\(- 1\)^(n - 1) sin n x $ #noindent;因此：$ \(- 1\)^(m - n) frac(sin m x, sin n x) = frac(sin m\(pi - x\), sin n\(pi - x\)) $ #noindent;两边乘以 $\(- 1\)^(m - n)$⁠，得 $ frac(sin m x, sin n x) =\(- 1\)^(m - n) frac(sin m\(pi - x\), sin n\(pi - x\)) $ #noindent;设 $y = pi - x$, 则当 $x arrow.r pi$, 有 $y arrow.r 0$, $m y arrow.r 0$, $n y arrow.r 0$. 因此：$ limits(lim)_(x arrow.r pi) frac(sin m x, sin n x) & = lim_(y arrow.r 0)\(- 1\)^(m - n) frac(sin m y, sin n y)\
 & =\(- 1\)^(m - n) lim_(y arrow.r 0) (m / n dot.op frac(sin m y, m y) dot.op frac(n y, sin n y))\
 & =\(- 1\)^(m - n) dot.op m / n dot.op 1 dot.op 1 =\(- 1\)^(m - n) m / n $

]
#example[
由条件 $limits(lim)_(x arrow.r - oo) (root(, x^2 - x + 1) - a x - b) = 0$⁠，求出 $a\,b$ 的值．

]
#solution[
$because quad limits(lim)_(x arrow.r - oo) (sqrt(x^2 - x + 1) - a x - b) = 0\,quad limits(lim)_(x arrow.r - oo) 1 / x = 0$

$therefore quad limits(lim)_(x arrow.r - oo) (sqrt(x^2 - x + 1) - a x - b) dot.op 1 / x = 0$

即：$ limits(lim)_(x arrow.r - oo) (sqrt(x^2 - x + 1) / x - a - b / x) = 0 $ #noindent;又因为：当 $x < 0$ 时，$ sqrt(x^2 - x + 1) = sqrt(x^2 (1 - 1 / x + 1 / x^2)) = - x sqrt(1 - 1 / x + 1 / x^2) $ #noindent;所以上式可写成 $ lim_(x arrow.r - oo) (- sqrt(1 - 1 / x + 1 / x^2) - a - b / x) = 0 $ #noindent;即：$- 1 - a - 0 = 0 quad arrow.r quad a = - 1$

代入原条件，得 $ lim_(x arrow.r - oo) (sqrt(x^2 - x + 1) + x - b) = 0 $ #noindent;即：$ b & = lim_(x arrow.r - oo) (sqrt(x^2 - x + 1) + x)\
 & = lim_(x arrow.r - oo) frac(x^2 - x + 1 - x^2, sqrt(x^2 - x + 1) - x)\
 & = lim_(x arrow.r - oo) frac(- x (1 - 1 / x), - x (sqrt(1 - 1 / x + 1 / x^2) + 1))\
 & = lim_(x arrow.r - oo) frac(1 - 1 / x, sqrt(1 - 1 / x + 1 / x^2) + 1) = 1 / 2 $

$therefore quad a = - 1\,quad b = 1 / 2$ 为所求．

]
#exercise[
+ 说明当 $x arrow.r oo$ 时，函数 $frac(x^5 - 4, x^3 + x)$ 的变化趋势．

+ #block(sticky: true)[求极限]

  #cols(2)[
  + $limits(lim)_(x arrow.r 0) frac(\(x + 2\)^2, x^2 + 4)$

  + $limits(lim)_(x arrow.r 2) frac(x^2 - 4, x - 2)$

  + $limits(lim)_(x arrow.r 2) frac(5 x^2 + x - 8, x^2 - 4)$

  + $limits(lim)_(x arrow.r 0) frac((4 x^3 - 3)\(1 - 2 x\), 7 x^3 - 6 x + 4)$

  + $limits(lim)_(x arrow.r oo) frac(3 x^5, x^5 - x^2 + 1)$

  + $limits(lim)_(x arrow.r oo) frac((x^2 - 5) (x^2 + 7), x^4 + 35)$

  + $limits(lim)_(x arrow.r 3) frac(x^2 - 8 x + 15, x^2 - 7 x + 12)$

  + $limits(lim)_(x arrow.r - 3) frac(x^2 - 9, x^2 + 9 x + 18)$

  + $limits(lim)_(x arrow.r - 1) frac(x (x^2 + 4 x + 3), x^3 + 3 x^2 + 5 x + 3)$

  + $limits(lim)_(x arrow.r 1) frac(x^3 + x^2 - 2, x^4 + 2 x^2 - 2 x - 1)$

  + $limits(lim)_(x arrow.r oo) frac(x + sin x, 2 x + 5)$

  + $limits(lim)_(x arrow.r 0) frac(\(1 + x\)^5 -\(1 + 5 x\), x^2 + x^5)$

  ]
  #block[
  #set enum(numbering: enum-at(2, none, start: 13))
  + $limits(lim)_(x arrow.r 0) frac(\(1 + m x\)^n -\(1 + n x\)^m, x^2) #h(2em)\(m\,n in bb(N)\)$

  + $limits(lim)_(x arrow.r 1) frac(x^2 + x^4 + dots.h.c + x^(2 n) - n, x - 1)$
  ]

+ #block(sticky: true)[求极限]

  #cols(2)[
  + $limits(lim)_(x arrow.r 0^(+)) sqrt(3 x)$

  + $limits(lim)_(x arrow.r 1^(-)) sqrt(1 - x)$

  + $limits(lim)_(x arrow.r 3^(-)) 3\[x\]$

  + $limits(lim)_(x arrow.r 1^(+))\[x + 3\]$

  + $limits(lim)_(x arrow.r - 3^(+)) (1 + sqrt(x + 3))$

  + $limits(lim)_(x arrow.r 4^(-)) (sqrt(4 - x) + \[ x - 1 \])$

  + $limits(lim)_(x arrow.r 1^(+)) frac(2 x\|x - 1\|, x - 1)$

  + $limits(lim)_(x arrow.r 4^(-))\(\[x\]- x\)$

  ]
  #block[
  #set enum(numbering: enum-at(2, none, start: 9))
  + $limits(lim)_(x arrow.r 0^(+)) b / x [x / a] #h(2em)\(a > 0\,thick b > 0\)$

  + $limits(lim)_(x arrow.r 0^(+)) x / a [b / x] #h(2em)\(a > 0\,thick b > 0\)$
  ]

+ #block(sticky: true)[求极限]

  #cols(2)[
  + $limits(lim)_(x arrow.r 1) frac(1 - x, sqrt(1 - x^2))$\;

  + $limits(lim)_(x arrow.r 1) frac(1 - sqrt(x), 1 - x)$\;

  + $limits(lim)_(x arrow.r 1) frac(\(2 x - 3\)\(sqrt(x) - 1\), 2 x^2 + x - 3)$

  + $limits(lim)_(x arrow.r 2) frac(x - 2, sqrt(x^2 - 2) - sqrt(2))$

  + $limits(lim)_(t arrow.r + oo)\(sqrt(1 + t) - sqrt(t)\)$\;

  + $limits(lim)_(x arrow.r + oo) sqrt(x)\(sqrt(x + a) - sqrt(x)\)$

  + $limits(lim)_(x arrow.r 5) frac(sqrt(x - 1) - 2, x - 5)$\;

  + $limits(lim)_(x arrow.r 0) frac(root(3, 1 + x) - root(3, 1 - x), x)$

  + $limits(lim)_(x arrow.r 1) frac(4 x + sqrt(x - 1), 2 x - sqrt(x + 1))$

  + $limits(lim)_(x arrow.r 1) frac(x - 1, sqrt(x^2 - 1) + sqrt(x - 1))$

  + $limits(lim)_(x arrow.r a) frac(sqrt(x - a) + sqrt(x) - sqrt(a), sqrt(x^2 - a^2))$

  + $limits(lim)_(x arrow.r - oo) frac(x - 2, sqrt(x^2 - 4 x + 3))$

  + $limits(lim)_(x arrow.r - oo) [frac(2\(x - 1\)^2, sqrt(4 x^2 + 2 x + 1)) + x]$

  ]
  #block[
  #set enum(numbering: enum-at(2, none, start: 14))
  + $limits(lim)_(x arrow.r + oo) (sqrt(x + sqrt(x + sqrt(x))) - sqrt(x))$

  + $limits(lim)_(x arrow.r + oo) x (sqrt(x^2 + 2 x) - 2 sqrt(x^2 + x) + x)$
  ]

+ #lead-list(none, 2)[
  + $f\(x\)= display(cases(0\, & quad x > 1, 1\, & quad x = 1, x^2 + 2\, & quad x < 1))$

    求 $f\(x\)$ 在 $x = 1$ 的左右极限．

  + $f\(x\)= display(cases(x sin 1 / x\, & quad x > 0, 1 + x^2\, & quad x < 0))$

    求 $f\(x\)$ 在 $x = 0$ 的左右极限．

  + $limits(lim)_(x arrow.r 3) frac(\[x\]^2 - 9, x^2 - 9)$ 是否存在？

  + $limits(lim)_(x arrow.r 0) frac(x, \|x\|)$ 是否存在？
  ]

+ #block(sticky: true)[若 $0 < x < pi / 2$⁠，求证：]

  #cols(2)[
  + $tan x > x$

  + $x - x^2 / 4 < sin x < x$

  ]

+ #block(sticky: true)[求极限]

  #cols(2)[
  + $limits(lim)_(x arrow.r 0) frac(sin a x, x)$

  + $limits(lim)_(x arrow.r 0) frac(sin 7 x, 4 x)$

  + $limits(lim)_(theta arrow.r 0) frac(sec 2 theta sin theta, theta)$

  + $limits(lim)_(theta arrow.r 0) frac(tan theta, theta)$

  + $limits(lim)_(t arrow.r 0) frac(15 t, tan 6 t)$

  + $limits(lim)_(x arrow.r 0) frac(tan 2 x, sin 7 x)$

  + $limits(lim)_(theta arrow.r 0) frac(tan theta - sin theta, theta^3)$

  + $limits(lim)_(x arrow.r 0) frac(csc x - cot x, x)$

  + $limits(lim)_(x arrow.r 0) frac(sin^2 x / 2, x^2)$

  + $limits(lim)_(x arrow.r pi) frac(sin x, pi - x)$

  + $limits(lim)_(x arrow.r 1) frac(1 + cos pi x, tan^2 pi x)$

  + $limits(lim)_(x arrow.r tfrac(pi, 4)) tan 2 x tan (pi / 4 - x)$

  + $limits(lim)_(x arrow.r 1)\(1 - x\)tan frac(pi x, 2)$

  + $limits(lim)_(x arrow.r 0) frac(sin m x, sin n x)$

  + $limits(lim)_(x arrow.r 0) frac(x + sin x, x + 2 sin x)$

  + $limits(lim)_(x arrow.r 0) frac(sqrt(cos x) - 1, x^2)$

  ]
  #block[
  ]

]
=== 数 $e$
我们在这里要利用数列的极限来定义一个新的数，这一个数不论对于分析本身或者对于它的应用来说都是非常重要的．

考虑数列 $a_n = (1 + 1 / n)^n\,thick n = 1\,2\,3\,dots.h$ 的极限．

首先我们计算一下数列 $\{ a_n \}$ 的数值：

#align(center)[
#table(
  columns: (auto, auto, auto, auto,),
  align: (left + horizon, left + horizon, left + horizon, left + horizon,),
  [$a_1 = 2.0$],
  [$a_2 = 2.250$],
  [$a_3 = 2.370$],
  [$a_4 = 2.441$],
  [$a_5 = 2.488$],
  [$a_6 = 2.522$],
  [$a_7 = 2.546$],
  [$a_8 = 2.565$],
  [$dots.h.c$],
  [$a_256 = 2.712$],
  [$dots.h.c$],
  [$a_1024 = 2.717$],
);

]
观察这一串数，我们会猜测这个数列是递增的，可能收敛于一个极限值，现在我们来证明这个猜想成立．

依牛顿二项式定理，即有 $ (1 + 1 / n)^n & = 1 + n dot.op 1 / n + frac(n\(n - 1\), 1 dot.op 2) dot.op 1 / n^2 + frac(n\(n - 1\)\(n - 2\), 1 dot.op 2 dot.op 3) dot.op 1 / n^3\
 & quad eqph + dots.h.c + frac(n\(n - 1\)\(n - 2\) thin dots.h.c\[n -\(n - 1\)\], 1 dot.op 2 dot.op 3 thin dots.h.c thin n) dot.op 1 / n^n $ #noindent;这个等式的右边的第二项等于1，其他各项可以变换如下：$ frac(n\(n - 1\), 1 dot.op 2) dot.op 1 / n^2 & = frac(n\(n - 1\), n^2) dot.op frac(1, 2 !)\
 & = (1 - 1 / n) dot.op frac(1, 2 !)\
frac(n\(n - 1\)\(n - 2\), 1 dot.op 2 dot.op 3) dot.op 1 / n^3 & = frac(n\(n - 1\)\(n - 2\), n^3) dot.op frac(1, 3 !)\
 & = (1 - 1 / n) dot.op (1 - 2 / n) dot.op frac(1, 3 !)\
dots.h.c & dots.h.c thin dots.h.c\
frac(n\(n - 1\)\(n - 2\) thin dots.h.c\[n -\(n - 1\)\], 1 dot.op 2 dot.op 3 thin dots.h.c thin n) dot.op 1 / n^n & = frac(n\(n - 1\)\(n - 2\) thin dots.h.c\[n -\(n - 1\)\], n^n) dot.op frac(1, n !)\
 & = (1 - 1 / n) (1 - 2 / n) thin dots.h.c thin (1 - frac(n - 1, n)) dot.op frac(1, n !) $ #noindent;其中 $n ! = 1 dot.op 2 dot.op 3 thin dots.h.c thin n$⁠．因此：#numbered-eq($ (1 + 1 / n)^n & = 1 + 1 + (1 - 1 / n) frac(1, 2 !) + (1 - 1 / n) (1 - 2 / n) dot.op frac(1, 3 !)\
  & eqph + dots.h.c + (1 - 1 / n) (1 - 2 / n) thin dots.h.c thin (1 - frac(n - 1, n)) dot.op frac(1, n !) $);

用 $n + 1$ 代替 $n$ 代入此公式，求出：#numbered-eq($ (1 + frac(1, n + 1))^(n + 1) & = 1 + 1 + (1 - frac(1, n + 1)) frac(1, 2 !) + (1 - frac(1, n + 1)) (1 - frac(2, n + 1)) dot.op frac(1, 3 !)\
 & eqph + dots.h.c + (1 - frac(1, n + 1)) (1 - frac(2, n + 1)) thin dots.h.c thin (1 - frac(n, n + 1)) dot.op frac(1, \(n + 1\)!) $);#noindent; (1.9) 的展开式项数比 (1.8) 的展开式的项数多一项，此外 (1.9) 的展开式各项由第三项起大于 (1.8) 的展开式对应项，这是因为 $ 1 - frac(1, n + 1) > 1 - 1 / n\,1 - frac(2, n + 1) > 1 - 2 / n\,dots.h\,1 - frac(n - 1, n + 1) > 1 - frac(n - 1, n) $ #noindent;所以 $ (1 + frac(1, n + 1))^(n + 1) > (1 + 1 / n)^n $ #noindent;这就是说数列 $a_n = (1 + 1 / n)^n\,thick n = 1\,2\,3\,dots.h$ 是递增的．

但是由等式 (1.8) 可知 $ (1 + 1 / n)^n < 1 + 1 + frac(1, 2 !) + frac(1, 3 !) + dots.h.c + frac(1, n !) $ #noindent;又因为 $ frac(1, 1 dot.op 2 dot.op 3) < 1 / 2^2\,frac(1, 1 dot.op 2 dot.op 3 dot.op 4) < 1 / 2^3\,dots.h\,frac(1, 1 dot.op 2 dot.op 3 thin dots.h.c thin n) < 1 / 2^(n - 1) $ #noindent;所以：$ (1 + 1 / n)^n < 2 + 1 / 2 + 1 / 2^2 + dots.h.c + 1 / 2^(n - 1) $ #noindent;但是由第二项起的级数总和小于 $frac(tfrac(1, 2), 1 - tfrac(1, 2)) = 1$⁠，所以：$ (1 + 1 / n)^n < 2 + frac(1 / 2, 1 - 1 / 2) = 3 $ #noindent;这就是说数列 $lr(\{ (1 + 1 / n)^n \})$ 是递增有上界的，所以它有极限，设它的极限用 $e$ 表示，因而我们有数 $ e = limits(lim)_(n arrow.r oo) (1 + 1 / n)^n $ #noindent;这个数 $e$ 是无理数，取它的十进小数到十五位，其值是 $ e = 2.718281828459045 dots.h.c $

现在要把变数 $n$ 推广到实数 $x$, 这是一个以后常要用到的重要极限．

#blk[定理][
$ limits(lim)_(x arrow.r oo) (1 + 1 / x)^x = e #h(2em)\(x in bb(R)\) $

]
#proof[
先证 $limits(lim)_(x arrow.r + oo) (1 + 1 / x)^x = e$

令 $\[x\]= n$⁠，于是 $n lt.eq x < n + 1$⁠，所以，当 $x arrow.r + oo$ 时，$n arrow.r + oo$⁠，而且 $ 1 + frac(1, n + 1) < 1 + 1 / x lt.eq 1 + 1 / n $ #noindent;根据指数函数的单调性和幂函数在 $x > 0$ 半直线上的单调性，有：$ (1 + frac(1, n + 1))^n lt.eq (1 + frac(1, n + 1))^x < (1 + 1 / x)^x lt.eq (1 + 1 / n)^x < (1 + 1 / n)^(n + 1) $ #noindent;因为：$ limits(lim)_(n arrow.r + oo) (1 + 1 / n)^(n + 1) & = limits(lim)_(n arrow.r + oo) (1 + 1 / n)^n (1 + 1 / n)\
 & = limits(lim)_(n arrow.r + oo) (1 + 1 / n)^n dot.op limits(lim)_(n arrow.r + oo) (1 + 1 / n) = e $ $ limits(lim)_(n arrow.r + oo) (1 + frac(1, n + 1))^n & = limits(lim)_(n arrow.r + oo) frac((1 + frac(1, n + 1))^(n + 1), 1 + frac(1, n + 1))\
 & = frac(limits(lim)_(n arrow.r + oo) (1 + frac(1, n + 1))^(n + 1), limits(lim)_(n arrow.r + oo) (1 + frac(1, n + 1))) = e $ #noindent;所以 $ e lt.eq limits(lim)_(x arrow.r + oo) (1 + 1 / x)^x lt.eq e $ #noindent;即：$limits(lim)_(x arrow.r + oo) (1 + 1 / x)^x = e$

当 $x arrow.r - oo$ 时，令 $x = - y$⁠，那么 $y arrow.r + oo$⁠，这时 $ (1 + 1 / x)^x & = (1 - 1 / y)^(- y) = (frac(y - 1, y))^(- y) = (frac(y, y - 1))^y\
 & = (1 + frac(1, y - 1))^y = (1 + frac(1, y - 1))^(y - 1) (1 + frac(1, y - 1)) $ #noindent;所以 $ limits(lim)_(x arrow.r - oo) (1 + 1 / x)^x & = limits(lim)_(y arrow.r + oo) (1 + frac(1, y - 1))^(y - 1) (1 + frac(1, y - 1))\
 & = limits(lim)_(y arrow.r + oo) (1 + frac(1, y - 1))^(y - 1) dot.op limits(lim)_(y arrow.r + oo) (1 + frac(1, y - 1)) = e $ #noindent;综合上面两个结果，即得 $ limits(lim)_(x arrow.r oo) (1 + 1 / x)^x = e $

]
#blk[推论][
$ limits(lim)_(y arrow.r 0) (1 + y)^(tfrac(1, y)) = e $

]
事实上，令 $x = 1 / y$⁠，当 $y arrow.r 0$ 时，$x arrow.r oo$⁠，于是：$ limits(lim)_(y arrow.r 0) (1 + y)^(tfrac(1, y)) = limits(lim)_(x arrow.r oo) (1 + 1 / x)^x = e $

#exercise[
+ #block(sticky: true)[求下面变量的极限：]

  #cols(2)[
  + $limits(lim)_(x arrow.r oo) (1 + 8 / x)^x$

  + $limits(lim)_(y arrow.r 0)\(1 + y\)^(tfrac(1, 3 y))$

  + $limits(lim)_(t arrow.r oo) (1 - 1 / t)^t$

  + $limits(lim)_(t arrow.r oo) (frac(t, 1 + t))^t$

  + $limits(lim)_(n arrow.r + oo) (1 + x / n)^n$

  + $limits(lim)_(n arrow.r + oo) (1 + 1 / n^2)^n$

  + $limits(lim)_(x arrow.r + oo) (frac(2 x + 3, 2 x + 1))^(x + 1)$

  ]

+ #block(sticky: true)[证明：]

  #cols(2)[
  + $limits(lim)_(x arrow.r oo) a^x / x = oo$

  + $limits(lim)_(x arrow.r oo) a^x / x^a = oo$

  ]
  其中 $a$ 为任意正常数．

]
== 函数的连续性
=== 连续函数的概念
在第四册下，我们用数列的语言规定了函数 $f$ 在点 $a$ 连续的意义．现在用 $epsilon - delta$ 语言来描述函数 $f$ 在其定义域中的点 $a$ 是连续的含义：

#blk[定义1][
函数 $f$ 在其定义域M中的点 $a$ 是连续的，如果对于每一个正数 $epsilon$, 有 $a$ 的一个 $delta$ 邻域 $\(a - delta\,a + delta\)$, 使得对于定义域中满足 $\|x - a\|< delta$ 的一切 $x$ 值，不等式 $ \|f\(x\)- f\(a\)\|< epsilon $ #noindent;成立．

]
#rmk[
在函数极限定义那里不要求 $f\(a\)$ 存在，所以特别注意要 $x eq.not a$, 现在，在函数于某点 $a$ 连续的定义中，只盼 $limits(lim)_(x arrow.r a) f\(x\)= f\(a\)$, 因此，保证 $\|f\(x\)- f\(a\)\|< epsilon$ 成立的充分条件 $\|x - a\|< delta$ 不再要求 $x eq.not a$ 了．

]
对于一个在点 $a$ 处连续的函数，有 $ lim_(x arrow.r a) f\(x\)= f (lim_(x arrow.r a) x) = f\(a\) $ #noindent;极限符号同函数符号可以改变次序或者说可以互换．

#blk[定义2][
如果函数 $f\(x\)$ 在一个区间 $\(a\,b\)$ 的每一点都连续，我们就说，它在这个区间 $\(a\,b\)$ 上连续．

]
函数也可以只在一点的一侧连续，当 $ lim_(x arrow.r x_0^(+)) f\(x\)= f\(x_0\) $ #noindent;时，便说 $f\(x\)$ 在 $x_0$ 的右侧连续；当 $ lim_(x arrow.r x_0^(-)) f\(x\)= f\(x_0\) $ #noindent;时，便说 $f\(x\)$ 在 $x_0$ 的左侧连续．显然，在一点的两侧都连续时，必在这点上连续．

所谓函数 $f\(x\)$ 在闭区间 $\[a\,b\]$ 上连续，除了它在 $\(a\,b\)$ 内每一点都连续外，在 $a$ 点右侧连续，在 $b$ 点左侧连续．

在一般自然现象中连续是常态，不连续则是在特殊情形的突变．例如，在火箭的发射过程中，随着火箭的燃烧，质量逐渐变化，当每一级火箭烧尽时，该级火箭的壳自行脱落，于是质量突然减小，质量变化如图1.11所示．所以，常用的函数一般只有几个特别的点是不连续的：如果 $f\(x\)$ 在 $x = a$ 处不是连续的，则称 $a$ 为函数的间断点．对于左右极限存在的间断点叫#strong[第一类间断点]，不属于第一类间断点的叫#strong[第二类间断点]．

例如 $y =\[x\]$ 在所有的整数点 $n$ 有第一类间断点；$y = tan x$ 在 $x = pi\/2$ 有第二类间断点．

#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("4-11");], caption: []), figure([#fig("4-12");], caption: []))));

#example[
设函数 $f\(x\)= display(cases(x\, & quad 0 lt.eq x lt.eq 1, 2 - x\, & quad 1 lt.eq x lt.eq 2))$

问在 $x = 1$ 处是否连续？

]
#solution[
在 $x = 1$ 处的两侧，函数的对应规则由不同的式子表示，所以研究在 $x = 1$ 处函数是否连续，就需要从左右极限入手（图1.12）．$ lim_(x arrow.r 1^(-)) f\(x\)= lim_(x arrow.r 1^(-)) x = 1\,#h(2em) lim_(x arrow.r 1^(+)) f\(x\)= lim_(x arrow.r 1^(+))\(2 - x\)= 1 $ #noindent;$therefore quad limits(lim)_(x arrow.r 1) f\(x\)= 1$

又 $f\(1\)= 1$, 故有 $limits(lim)_(x arrow.r 1) f\(x\)= f\(1\)$, 即 $f\(x\)$ 在 $x = 1$ 处是连续的．

]
#example[
函数 $f\(x\)= x sin 1 / x$ 在 $x = 0$ 处是否连续？如不连续，是第几类间断点？

]
#solution[
函数 $f$ 只在 $x = 0$ 没有定义，故 $f$ 在 $x = 0$ 处间断，它的定义域是 $bb(R) - \{ 0 \}$.

因为 $lr(|sin 1 / x|) lt.eq 1$⁠，从而：$  & 0 lt.eq lr(|x sin 1 / x|) lt.eq\|x\|\
 & 0 lt.eq lim_(x arrow.r 0) lr(|x sin 1 / x|) lt.eq lim_(x arrow.r 0)\|x\|= 0\
 & lim_(x arrow.r 0) x sin 1 / x = 0 $ #noindent;所以，$f$ 在 $x = 0$ 处左、右极限存在，这就是说 $x = 0$ 是第一类间断点，它的图象大致如图1.13所示．

#figure([#fig("4-13");

  ],
  caption: [
  ]
)

如果把上面的函数 $f$ 加以扩充，即我们定义一个新函数 $g$: $ g\(x\)= display(cases(x sin 1 / x\, & quad x eq.not 0, 0\, & quad x = 0)) $ #noindent;那么我们便得到一个在 $x = 0$ 处的连续函数．

]
#blk[定义3][
$limits(lim)_(x arrow.r a) f\(x\)$ 存在，但不等于 $f\(a\)$, 或者 $f\(a\)$ 没有定义，则称 $f$ 在 $a$ 处有#strong[可去间断点]．

]
例1.16中的 $x = 0$ 就是 $f$ 的可去间断点．

由函数在某一点连续的概念可以直接导出连续函数的一个重要性质如下：

#blk[定理][
若函数 $f\(x\)$ 在 $x = a$ 连续，且 $f\(a\)> 0$, 则存在一个 $a$ 的 $delta$ 邻域 $\(a - delta\,a + delta\)$, 使得对于每一个 $x in\(a - delta\,a + delta\)$, $f\(x\)$ 都是正的．

]
#proof[
因为 $limits(lim)_(x arrow.r a) f\(x\)= f\(a\)> 0$, 所以对于 $epsilon = 1 / 2 f\(a\)$, 必定存在一个 $delta$ 使得 $\|x - a\|< delta$ 时，有 $ f\(x\)> f\(a\)- 1 / 2 f\(a\)= 1 / 2 f\(a\)> 0 $

]
=== 连续函数的运算
连续函数的概念是函数概念和极限概念一个自然结合，由本章1.3函数极限算法定理直接得出下面定理．

#blk[定理1][
设 $f$ 和 $g$ 在 $a$ 处连续，则

+ $f plus.minus g$ 在 $a$ 处连续；

+ $f dot.op g$ 在 $a$ 处连续；

+ $1 / g$ 在 $a$ 处连续（若 $g\(a\)eq.not 0$⁠）；

+ $root(n, f)$ 在 $a$ 处连续（若 $f\(a\)> 0$⁠）．

]
#proof[
+ 因为 $f$ 和 $g$ 在 $a$ 处连续，所以 $ limits(lim)_(x arrow.r a) f\(x\)= f\(a\)\,#h(2em) lim_(x arrow.r a) g\(x\)= g\(a\) $ #noindent;根据1.3中的函数极限算法定理，得 $ limits(lim)_(x arrow.r a)\(f plus.minus g\)\(x\)= limits(lim)_(x arrow.r a)\[f\(x\)plus.minus g\(x\)\] & = limits(lim)_(x arrow.r a) f\(x\)plus.minus limits(lim)_(x arrow.r a) g\(x\)\
   & = f\(a\)plus.minus g\(a\)=\(f plus.minus g\)\(a\) $ #noindent;这正好就是断言 $f + g$ 在 $a$ 处连续．

+ #h(0pt)
  $ limits(lim)_(x arrow.r a)\(f dot.op g\)\(x\)= limits(lim)_(x arrow.r a) f\(x\)dot.op g\(x\) & = limits(lim)_(x arrow.r a) f\(x\)dot.op limits(lim)_(x arrow.r a) g\(x\)\
   & = f\(a\)dot.op g\(a\)=\(f dot.op g\)\(a\) $ #noindent;即 $f dot.op g$ 在 $a$ 处连续．

+ 由于 $g\(a\)eq.not 0$, 又 $g$ 在 $a$ 处连续，根据2.1中的定理，知道存在点 $a$ 的 $delta$ 邻域，使得对于每一个 $x in\(a - delta\,a + delta\)$⁠，有 $g\(x\)dot.op g\(a\)> 0$⁠，因此 $ limits(lim)_(x arrow.r a) 1 / g\(x\)= frac(1, limits(lim)_(x arrow.r a) g\(x\)) = frac(1, g\(a\)) = 1 / g\(a\) $

+ 证明留给读者．

]
在第四册下，我们根据定理1证明了一些基本初等函数在其定义域上到处连续的命题，现在总结如下：

#blk[命题1][
任何多项式函数到处连续．

]
#blk[命题2][
若 $f$ 和 $g$ 是两个多项式，$g eq.not 0$, 那么有理函数 $r = f\/g$, 除去 $g$ 的零点集合，函数 $r$ 是有定义的，而且在其定义域上到处连续．

]
#blk[命题3][
$n$ 次算术方根函数 $root(n, x)$ 在 $\[0\,+ oo\)$ 上到处连续．

]
因为每一个无理数可以用两串有理数数列从左、右两方面去逼近它，同样无理指数幂也可以用相应的有理指数幂去逼近它，我们用逼近法定义了无理指数幂，从而把有理指数函数开拓为在实数域上到处连续的实指数函数，于是得到下面的命题．

#blk[命题4][
指数函数 $a^x thick\(a > 0\,thick a eq.not 1\)$ 到处连续．

]
由反函数连续定理，直接得到

#blk[命题5][
对数函数 $log_a x$ 在 $\(0\,+ oo\)$ 上到处连续．

]
现在将继续证明另外一些基本初等函数连续性的命题．

#blk[命题6][
三角函数 $sin x$ 和 $cos x$ 到处连续．

]
#proof[
设 $x_0$ 是任意给定的实数，由三角函数的和差化积公式，得到 $ \|sin x - sin x_0\|= 2 lr(|sin frac(x - x_0, 2)|) dot.op lr(|cos frac(x + x_0, 2)|) $ #noindent;因为 $lr(|cos frac(x + x_0, 2)|) lt.eq 1$, 并根据1.3中的引理得到 $ \|sin x - sin x_0\|lt.eq 2 lr(|frac(x - x_0, 2)|) $ #noindent;即 $ \|sin x - sin x_0\|lt.eq lr(|x - x_0|) $ #noindent;当 $x arrow.r x_0$ 时，$\|x - x_0\|arrow.r 0$, 从而 $\|sin x - sin x_0\|arrow.r 0$, 即 $ lim_(x arrow.r x_0) sin x = sin x_0 $ #noindent;因为 $x_0$ 是任意一点，所以 $sin x$ 到处连续．

同样证明，得到：当 $x arrow.r x_0$ 时，$ \|cos x - cos x_0\|lt.eq\|x - x_0\|arrow.r 0 $ #noindent;即 $ lim_(x arrow.r x_0) cos x = cos x_0 $ #noindent;因此，$cos x$ 到处连续．

]
由反函数连续性定理直接得出下面命题．

#blk[命题7][
反三角函数 $y = arcsin x thick (- pi / 2 lt.eq y lt.eq pi / 2)$,#h(1em);$y = arccos x thick (0 lt.eq y lt.eq pi)$,#h(1em);$y = arctan x thick (- pi / 2 < y < pi / 2)$,#h(1em);$y = op("arccot") x thick (0 < y < pi)$ 在它们各自的定义域上到处连续．

]
#blk[命题8][
幂函数 $x^alpha$（$alpha$ 是任何一个实数）在开区间 $\(0\,+ oo\)$ 上到处连续．

]
#proof[
为确定起见，假设 $alpha > 0$, $n$ 是任何一个大于 $alpha$ 的整数 $ \(x + h\)^alpha - x^alpha = x^alpha [(1 + h / x)^alpha - 1] $

若 $h > 0$, 则 $(1 + h / x)^alpha > 1$⁠，（实指数幂性质），并且#numbered-eq($ 1 < (1 + h / x)^alpha < (1 + h / x)^n quad upright("(指数函数单调性)") $);

若 $h < 0$, 将上面不等式方向反向，得到#numbered-eq($ (1 + h / x)^n < (1 + h / x)^alpha < 1 $);#noindent;因为 $(1 + h / x)^n$ 是关于 $h$ 的 $n$ 次多项式，并且显然当 $h arrow.r 0$ 时，$ (1 + h / x)^n arrow.r 1 $

于是，由不等式 (1.10) 和 (1.11), 得到当 $h arrow.r 0$ 时，$(1 + h / x)^alpha arrow.r 1$. 因此 $ lim_(h arrow.r 0) [\( x + h \)^alpha - x^alpha] = 0 $ #noindent;即：$ lim_(h arrow.r 0)\(x + h\)^alpha = x^alpha $ #noindent;这就是说 $x^alpha$ 在 $\(0\,+ oo\)$ 上处处连续．

]
下面介绍常用的复合函数连续性定理．

#blk[定理2][
设 $X$⁠、$Y$⁠、$Z$ 是实数集，函数 $g : thin X mapsto Y$, $f : thin g\(X\)\(subset Y\)mapsto Z$, 又 $h : thin X mapsto Z$ 定义为 $f$ 和 $g$ 的复合函数，即 $h\(x\)= f\(g\(x\)\)thick\(x in X\)$.

若 $y = g\(x\)$ 在 $x = a$ 处连续；$z = f\(y\)$ 在 $y = g\(a\)= b$ 处连续，那么复合函数 $z = h\(x\)= f\(g\(x\)\)$ 在点 $a$ 处也连续．

]
#proof[
由于#numbered-eq($ lim_(x arrow.r a) g\(x\)= g\(a\)= b\,#h(2em) x in X $);#noindent;又因为：#numbered-eq($ lim_(y arrow.r b) f\(y\)= f\(b\)\,#h(2em) y in g\(X\)subset Y $);

$therefore quad limits(lim)_(x arrow.r a) h\(x\)= limits(lim)_(x arrow.r a) f\(g\(x\)\)= limits(lim)_(y arrow.r b) f\(y\)= f\(b\)= f\(g\(a\)\)= h\(a\)$

这就说明复合函数在点 $a$ 的连续性．

]
把上面的等式写成 $ lim_(x arrow.r a) f\(g\(x\)\)= f\(g\(a\)\)= f (lim_(x arrow.r a) g \( x \)) $ #noindent;这个等式表示可以这样求复合函数的极限 $limits(lim)_(x arrow.r a) f\(g\(x\)\)$, 如果内层函数 $g\(x\)$ 在点 $a$ 的极限存在，即 $limits(lim)_(x arrow.r a) g\(x\)= b$, 而且 $f$ 在点 $b$ 连续，就可以把极限符号 $limits(lim)_(x arrow.r a)$ 与函数符号 $f$ 互换，也就是把极限运算移到内层函数上去施行．

#example[
说明 $h\(x\)= root(4, frac(1, 1 + x^2))$ 到处连续，并求 $limits(lim)_(x arrow.r a) h\(x\)$

]
#solution[
$h\(x\)= root(4, frac(1, 1 + x^2))$ 可以看作 $y = g\(x\)= frac(1, 1 + x^2)\,thick x in bb(R)$ 和 $z = f\(y\)= root(4, y)\,thick y in\[0\,+ oo\)$ 的复合函数．

由于 $g\(x\)= frac(1, 1 + x^2)$ 在 $bb(R)$ 上到处连续并且它的值域 $ g\(bb(R)\)=\(0\,1\]subset\[0\,+ oo\)= Y $ #noindent;又幂函数 $f\(y\)= root(4, y)$ 在 $Y =\[0\,+ oo\)$ 上到处连续，因此 $f\(y\)= root(4, y)$ 在 $g\(bb(R)\)=\(0\,1\]$ 上也到处连续，于是 $ lim_(x arrow.r a) h\(x\)= f (lim_(x arrow.r a) g \( x \)) = root(4, frac(1, 1 + a^2)) $

]
#example[
求 $limits(lim)_(x arrow.r 2) sqrt(frac(1 - cos pi x, 4 - x^2))$

]
#solution[
设 $y = g\(x\)= frac(1 - cos pi x, 4 - x^2) thick\(x eq.not plus.minus 2\)$⁠，$z = f\(y\)= sqrt(y) thick\(y gt.eq 0\)$⁠，且知 $f$ 在 $\[0\,+ oo\)$ 上到处连续，于是 $ f\(g\(x\)\)= sqrt(frac(1 - cos pi x, 4 - x^2)) $ #noindent;因此：$ lim_(x arrow.r 2) g\(x\) & = lim_(x arrow.r 2) frac(1 - cos pi x, 4 - x^2)\
 & = lim_(x arrow.r 2) frac(2 sin^2 pi / 2 x, 4 - x^2) = lim_(x arrow.r 2) frac(pi sin^2 pi / 2\(2 - x\), pi / 2\(2 - x\)\(2 + x\))\
 & = lim_(x arrow.r 2) pi [frac(sin pi / 2\(2 - x\), pi / 2\(2 - x\)) dot.op frac(1, 2 + x) dot.op sin pi / 2 \( 2 - x \)]\
 & = pi dot.op 1 dot.op 1 / 4 dot.op 0 = 0 in\[0\,+ oo\) $

$therefore quad limits(lim)_(x arrow.r 2) sqrt(frac(1 - cos pi x, 4 - x^2)) = sqrt(limits(lim)_(x arrow.r 2) (frac(1 - cos pi x, 4 - x^2))) = sqrt(0) = 0$

]
#example[
求 $limits(lim)_(x arrow.r 0) frac(arcsin x, x)$

]
#solution[
设 $alpha = arcsin x$⁠，这里 $- 1 lt.eq x lt.eq 1$⁠，$- pi / 2 lt.eq alpha lt.eq pi / 2$⁠，于是，$sin alpha = x$⁠．

根据反正弦函数的连续性，有 $ lim_(x arrow.r 0) alpha = lim_(x arrow.r 0) arcsin x = arcsin 0 = 0 $ #noindent;进行变量替换，得到 $ lim_(x arrow.r 0) frac(arcsin x, x) = lim_(x arrow.r 0) frac(alpha, sin alpha) = 1 $

]
下面根据指数函数与对数函数的连续性，我们要建立几个重要的极限：

+ $limits(lim)_(x arrow.r 0) frac(ln\(1 + x\), x) = 1$,#h(1em);这里 $ln$ 表示 $log_e$

+ $limits(lim)_(x arrow.r 0) frac(e^x - 1, x) = 1$

+ $limits(lim)_(x arrow.r 0) frac(\(1 + x\)^alpha - 1, x) = alpha$

#proof[
+ $limits(lim)_(x arrow.r 0) frac(ln\(1 + x\), x) = limits(lim)_(x arrow.r 0) ln\(1 + x\)^(1\/x)$ 因为右端在对数号下的式子当 $x arrow.r 0$ 趋向于 $e$, 所以根据对数函数的连续性，得到 $ limits(lim)_(x arrow.r 0) frac(ln\(1 + x\), x) = limits(lim)_(x arrow.r 0) ln\(1 + x\)^(1\/x) = ln e = 1 $

+ 令 $e^x - 1 = y$, 于是当 $x arrow.r 0$ 时，由指数函数连续性有 $y arrow.r 0$, 其次，我们有 $x = ln\(1 + y\)$, 因此，有 $ limits(lim)_(x arrow.r 0) frac(e^x - 1, x) = limits(lim)_(y arrow.r 0) frac(y, ln\(1 + y\)) = limits(lim)_(y arrow.r 0) frac(1, ln\(1 + y\)^(1\/y)) = 1 $

+ 我们令 $\(1 + x\)^alpha - 1 = y$, 当 $x arrow.r 0$ 时，由幂函数的连续性，也有 $y arrow.r 0$, 在等式 $\(1 + x\)^alpha = 1 + y$ 的两边取对数得到 $ alpha ln\(1 + x\)= ln\(1 + y\) $ #noindent;利用这一关系式，我们把所给的表达式变形为 $ frac(\(1 + x\)^alpha - 1, x) = y / x = frac(y, ln\(1 + y\)) dot.op alpha dot.op frac(ln\(1 + x\), x) $ #noindent;因此：$ limits(lim)_(x arrow.r 0) frac(\(1 + x\)^alpha - 1, x) = limits(lim)_(x arrow.r 0) frac(y, ln\(1 + y\)) dot.op alpha dot.op limits(lim)_(x arrow.r 0) frac(ln\(1 + x\), x) = alpha $

]
我们讨论了下面的函数：

+ $f\(x\)= c$#h(1em);（$c$ 为常数）

+ $x^n$#h(1em);（$n$ 是整数）

+ $root(n, x) quad\(x gt.eq 0\)$

+ $a^x quad\(a > 0\,thick a eq.not 1\)$

+ $log_a x$

+ $x^alpha$#h(1em);（$alpha$ 是任意实常数）

+ $sin x\,thick cos x\,thick tan x\,thick cot x$

+ $arcsin x\,thick arccos x\,thick arctan x\,thick op("arccot") x$

#noindent;上面这些函数统称为#strong[基本初等函数]．

凡是由基本初等函数及常数，经过有限次四则运算（加、减、乘、除）及有限次函数复合的步骤而得到的且由一个式子表示的函数，及可以化为这种形式的函数，统称为#strong[初等函数]．

例如，下列函数都是初等函数：

+ $f\(x\)= x sin 1 / x + 2^x log_2 x$

+ $phi\(x\)= arctan 1 / x + sin\(x^2 + 1\)$

连续函数的四则运算定理，复合函数连续性定理及反函数连续性定理，在研究初等函数的连续性时具有重要作用．现在根据这些定理，立即得到一个重要结论：

#blk[定理][
一切初等函数在它有定义的任何区间内到处连续．

]
#exercise[
+ 试证 $y =\|x\|$ 是一个到处连续的函数．

+ #block(sticky: true)[说明下列函数到处连续：]

  #cols(2)[
  + $f\(x\)= frac(x^2, 1 + x^2)$

  + $f\(x\)= sin thin \|x\|$

  + $phi\(x\)=\|sin x\|$

  + $k\(x\)= lr(\{ cos x - sin thin \| x \| \})^3$

  ]

+ #block(sticky: true)[求出下列函数的间断点，并指出其类型．]

  #cols(2)[
  + $f\(x\)= frac(1, x - 2)$

  + $f\(x\)= frac(x - 1, x^2 - 1)$

  + $h\(x\)= x cos^2 1 / x$

  + $y = frac(1, sin pi x)$

  + $y = tan\(x - 1\)$

  + $y = frac(sin x, \|x\|)$

  + $f\(x\)= display(cases(frac(sin x, \|x\|)\, & quad x eq.not 0, 1\, & quad x = 0))$

  + $f\(x\)= cot 1 / x$

  + $f\(x\)= display(cases(cos frac(pi x, 2)\, & quad \|x\|lt.eq 1, \|x - 1\|\, & quad \|x\|> 1))$

  ]

+ 试证明下列函数在其定义域内是连续的：

  + $f\(x\)= display(cases(x^2 sin 1 / x\, & quad x eq.not 0, 0\, & quad x = 0))$

  + $phi\(x\)= display(cases(1 - x\, & quad x < 0, 2 x^2 + 1\, & quad x = 0, 2 +\(x - 1\)^3\, & quad x > 0))$

+ #block(sticky: true)[求下列变量的极限：]

  #cols(2)[
  + $limits(lim)_(x arrow.r + oo) (sin sqrt(x + 1) - sin sqrt(x))$

  + $limits(lim)_(x arrow.r 1) frac(1 + cos pi x, tan^2 pi x)$

  + $limits(lim)_(x arrow.r 0) frac(x sin x, 1 - cos x)$

  + $limits(lim)_(x arrow.r 0) x / sqrt(1 - cos x)$

  + $limits(lim)_(x arrow.r 0) frac(cos x - cos 3 x, x^2)$

  + $limits(lim)_(x arrow.r tfrac(pi, 4)) tan 2 x tan (pi / 4 - x)$

  + $limits(lim)_(h arrow.r 0) frac(arctan\(x + h\)- arctan x, h)$

  + $limits(lim)_(x arrow.r oo) arcsin frac(1 - x, 1 + x)$

  + $limits(lim)_(x arrow.r 0) frac(1 + sin x - cos x, 1 + sin p x - cos p x)$

  + $limits(lim)_(x arrow.r 0) frac(log_p\(1 + x\), x)$

  + $limits(lim)_(x arrow.r 0) frac(a^x - 1, x)$

  + $limits(lim)_(n arrow.r oo) n (root(n, x) - 1)$

  ]

]
=== 闭区间上的连续函数的性质
我们在2.1中已经定义了闭区间上连续函数的意义．对于这类函数，我们要介绍它的几个重要性质．

#blk[中间值定理][
设 $y = f\(x\)$ 是一个在闭区间 $\[a\,b\]$ 上到处连续的函数，设 $c$ 是一个介于 $f\(a\)$ 和 $f\(b\)$ 之间的常数，则必须存在一个介于 $a$⁠、$b$ 之间的实数 $x_0$, 使得 $f\(x_0\)= c$.

]
用几何术语来说，$y = f\(x\)\,thick a lt.eq x lt.eq b$ 的图象是一条连结 $P\(a\,f\(a\)\)$ 点和 $Q\(b\,f\(b\)\)$ 点的连续曲线，而 $P$⁠、$Q$ 分居于直线 $y = c$ 的两侧，则曲线 $y = f\(x\)\,thick a lt.eq x lt.eq b$ 至少和直线 $y = c$ 有一个交点（$x_0\,thick f\(x_0\)= c$⁠）．(图1.14).

#figure([#fig("4-14");

  ],
  caption: [
  ]
)

对这个定理，我们在第四册（下）4.3中利用二分逼近法及连续函数的性质给出了它的证明，这里不再重述．

#blk[最大值、最小值][
在闭区间 $\[a\,b\]$ 上连续的函数 $f$ 一定在该区间上取到一个最大值和最小值．

]
我们先利用连续函数的图象来直观地说明这个性质，然后用证明中间值定理的同样方法来证明这个定理．初学者可略过定理的证明，这不影响对本书后面内容的学习．

从图1.15可以看出，在 $\[a\,b\]$ 中，能够找到两点 $x_1\,x_2$ 使 $f\(x_1\)= M$, $f\(x_2\)= m$, 而对于 $\[a\,b\]$ 中所有的 $x$, 都有 $ m = f\(x_2\)lt.eq f\(x\)lt.eq f\(x_1\)= M $

#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("4-15");], caption: []), figure([#fig("4-16");], caption: []))));

#rmk[
这个定理是假定 $f$ 在整个闭区间上连续，如果在一点不连续，则定理的结论就可能不成立．

]
例如，函数 $f\(x\)= x -\[x\]$, $x in\[0\,1\]$ 在 $x = 1$ 这一点不连续，它的图象如图1.16, 我们要说明它有最小值0, 而无最大值．

事实上，$f$ 是分段函数：$ f\(x\)= display(cases(x\, & quad 0 lt.eq x < 1, 0\, & quad x = 1)) $ #noindent;$f$ 在 $\[0\,1\)$ 上递增，故 $f\(0\)= f\(1\)= 0$ 最小．又在 $\[0\,1\]$ 上没有一点的函数值为1, 但是对于任何一个小于1的正数 $k$, 恒有 $ f\(k\)= k -\[k\]= k < 1 $ #noindent;这就说明了 $f$ 在 $\[0\,1\]$ 上有上界1, 但始终达不到1, 现在我们进一步说明1是它的最小上界，假设定数 $k' < 1$ 是 $f$ 在 $\[0\,1\]$ 上的上界，我们在 $\(k'\,1\)$ 内任意取一个数 $x$, 于是 $ f\(x\)= x -\[x\]= x > k' $ #noindent;这与假设 $k'$ 是 $f$ 在 $\[0\,1\]$ 上的上界矛盾，因此1是 $f$ 在 $\[0\,1\]$ 上的最小上界，但是它不属于 $f$ 的值域，这就说明了 $f$ 无最大值．

从这个例中还可以看出，定理中的闭区间不能用开区间来代替．

现在给出定理的证明如下：

#proof[
令 $A_1 = a$, $B_1 = b$, $S_1 = \{ f\(x\)\|x in\[a\,b\]\}$⁠，设 $K$ 是 $S_1$ 的最小上界，记 $K = l . u . b \{ S_1 \}$. 再令 $ S'_1 = lr(\{ f \( x \) \; thick x in [a \, frac(a + b, 2)] \})\,quad S''_1 = lr(\{ f \( x \) \; thick x in [frac(a + b, 2) \, b] \}) $ #noindent;显然有：$ S_1 = S'_1 union S''_1 $ #noindent;由此不难看到：$ K = l . u . b \{ S_1 \} = max (l . u . b \{ S'_1 \} \, l . u . b \{ S''_1 \}) $ #noindent;所以 $l . u . b \{ S'_1 \}$ 和 $l . u . b \{ S''_1 \}$ 两者之中，至少有一个等于 $K$, 换句话说，我们总可以在 $\[A_1\,B_1\]$ 的两个半段之中，选取其一为 $\[A_2\,B_2\]$, 使得 $ l . u . b \{ S_2 \} = K\,#h(2em) S_2 = \{ f\(x\)\,thick x in\[A_2\,B_2\]\} $ #noindent;如此逐步二分，每次由 $\[A_n\,B_n\]$ 归纳地选取其半段作为 $\[A_(n + 1)\,B_(n + 1)\]$⁠，使得 $ l . u . b \{ f\(x\)\;thick x in\[A_(n + 1)\,B_(n + 1)\]\} & = l . u . b \{ f\(x\)\;thick x in\[A_n\,B_n\]\}\
 & = dots.h.c\
 & = l . u . b \{ f\(x\)\;thick x in\[a\,b\]\} = K . $ #noindent;对 $\{ A_n \}\,\{ B_n \}$, 根据实数的连续性，知存在 $c$ 使得 $c in\[A_n\,B_n\]$, $n = 1\,2\,3\,dots.h$, 且 $B_n - A_n arrow.r 0$.

现在我们要再利用 $f\(x\)$ 到处连续这一性质，说明 $f\(c\)= K$. 假若不然，即 $f\(c\)< K$⁠，则可以取 $epsilon = 1 / 2\(K - f\(c\)\)> 0$⁠，然后利用 $f\(x\)$ 在 $c$ 点的连续性，知存在点 $c$ 的 $delta$ 邻域，使得当 $\|x - c\|< delta$ 时，有 $ \|f\(x\)- f\(c\)\|< epsilon $ #noindent;即：$ f\(x\)< f\(c\)+ epsilon & = f\(c\)+ 1 / 2 K - 1 / 2 f\(c\)\
 & = 1 / 2\[K + f\(c\)\]\
 & = 1 / 2\[K + K - 2 epsilon\]= K - epsilon $ #noindent;所以 $ l . u . b \{ f\(x\)\;thick x in\(c - delta\,c + delta\)\} lt.eq K - epsilon $ #noindent;但是，由 $limits(lim)_(n arrow.r oo) A_n = limits(lim)_(n arrow.r oo) B_n = c$, 知当 $n$ 足够大时，有 $ \[A_n\,B_n\]subset\(c - delta\,c + delta\) $ #noindent;这显然和 $\[A_n\,B_n\]$ 的选取法，亦即保持 $ l . u . b \{ f\(x\)\;thick x in\[A_n\,B_n\]\} = K $ #noindent;相矛盾，因此，$f\(c\)$ 必须等于 $K$.

类似地，可以证明存在使函数 $f$ 达到它的最小值的一个点．

]
#heading(level: 3, numbering: none, outlined: false)[习题1.2]
+ #block(sticky: true)[求下列函数的极限：]

  #cols(2)[
  + $limits(lim)_(x arrow.r 0)\(cos x\)^(sin x)$

  + $limits(lim)_(x arrow.r 0) frac(x^2 / e^(2 x), ln (1 + x^2 / e^(2 x)))$

  + $limits(lim)_(x arrow.r 0) frac(x^2 / e^(2 x), sin^2 x / e^x)$

  + $limits(lim)_(n arrow.r oo) n^2 (x^(tfrac(1, n)) - x^(tfrac(1, n + 1)))$

  + $limits(lim)_(x arrow.r 0) frac((e^x + e^(- x)) (e^x - e^(- x)), 2 x)$

  + $limits(lim)_(x arrow.r 0)\(1 - 2 x\)^(tfrac(1, x))$

  + $limits(lim)_(n arrow.r oo) 10 (1 + 0.03 / n)^n$

  + $limits(lim)_(x arrow.r + oo) arccos (sqrt(x^2 + x) - x)$

  + $limits(lim)_(x arrow.r - oo) arctan frac(x - 4, \(x - 2\)^2)$

  + $limits(lim)_(x arrow.r - oo) arctan x / sqrt(1 + x^2)$

  + $limits(lim)_(x arrow.r - oo) x / sqrt(1 + x^2)$

  ]
  #block[
  #set enum(numbering: enum-at(2, none, start: 12))
  + $limits(lim)_(x arrow.r 0) frac(ln frac(1 + x, 1 - x), arctan\(1 + x\)- arctan\(1 - x\))$
  ]

+ 在一个以弦 $A B$ 为界的弓形中，把点 $A$ 与 $B$ 与弧 $wideparen(A B)$ 的中点 $C$ 用直线连结起来，于是得到一个等腰三角形 $triangle.stroked.t A B C$, 再在 $A$ 与 $B$ 作切线，它们交于 $D$, 试计算 $limits(lim)_(x arrow.r 0) frac(triangle.stroked.t A B C, triangle.stroked.t A B D)$⁠，其中 $x$ 是弦 $A B$ 所对应的中心角．

+ $f\(x\)= frac(a x^3 + b x^2 + c x + d, x^2 - x - 2)$ 满足条件 $ lim_(x arrow.r oo) f\(x\)= 2\,#h(2em) lim_(x arrow.r 2) f\(x\)= 3 $ #noindent;求 $f\(x\)$.
