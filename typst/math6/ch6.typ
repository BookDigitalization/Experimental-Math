// 由 typst/tools/tex2typ.py 从 math6/6.tex 转换而来，已人工校对的部分以本文件为准。
#import "../common/template.typ": *
#import "figs.typ": fig

= 求函数从 $a$ 到 $b$ 的和与积分
函数有两个基本性质------变率与和，在前一章，我们研究了函数的瞬时变率的概念，即 $ f'\(x_0\)= lim_(h arrow.r 0) frac(f\(x_0 + h\)- f\(x_0\), h) $ #noindent;以及它的应用．在本章我们将研究对于一个给定函数 $f\(x\)$“求从 $a$ 到 $b$ 的和”这个概念．在给出定义之前，我们先举几个实例来看一看．

#v(0.8em);

#noindent;#strong[速率与距离]#h(1em);一列行驶中的火车，它的行进速率 $v$ 是时间 $t$ 的函数，即 $v = f\(t\)$, 如图3.1, 我们可以从速率表读得当时的速率，很自然地，我们想知道火车在从 $t = a$ 到 $t = b$ 这一段时间间隔内一共走了多少路程．从函数的观点看，所谓求在时间 $\[a\,b\]$ 内所走过的距离就是求速率函数 $v = f\(t\)$ 由 $t = a$ 到 $t = b$ 的和．

#figure([#fig("6-01");

  ],
  caption: [
  ]
)

让我们用 $D\(f\,\[a\,b\]\)$ 表示所走过的距离，这个记号强调 $D$ 依赖于 $f$ 和区间 $\[a\,b\]$⁠．

#v(0.8em);

#noindent;#strong[变力所作的功]#h(1em);假定某物体在一个平行于 $O X$ 轴的力 $P$ 的作用下沿直线 $O X$ 运动，力 $P$ 的方向与物体运动的方向一致，并且力的大小随离开 $O$ 点的距离而改变，即变力 $P$ 是所在点的横坐标 $x$ 的函数 $P = P\(x\)$, 如图3.2．假定物体在这个变力 $P$ 作用之下，从直线 $O X$ 的一点 $a$ 移到另一点 $b$, 那么力 $P$ 所作的功就是变力函数 $P\(x\)$ 由 $x = a$ 到 $x = b$ 的和，我们用 $W\(P\,\[a\,b\]\)$ 表示力 $P$ 所作的功，它表明 $W$ 依赖于 $P\(x\)$ 和 $\[a\,b\]$⁠．

#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("6-02");], caption: []), figure([#fig("6-03");], caption: []))));

#v(0.8em);

#noindent;#strong[曲边梯形的面积]#h(1em);令 $y = f\(x\)$ 是函数 $f$ 的图象，表示一条曲线，如图3.3. 我们要求曲线上的一段弧 $M_0 M$ 与其两端的纵坐标线及 $x$ 轴上的线段 $\[a\,b\]$ 所围成的图形的面积．这样的图形（它有三条边是直线，其中两条互相平行，第三条与前两条互相垂直，而第四条边是曲线）叫做曲边梯形．显然曲边梯形的面积 $A$ 依赖于 $y = f\(x\)$ 和 $x$ 轴上的线段 $\[a\,b\]$, 记这一面积为 $A\(f\,\[a\,b\]\)$⁠．

在上一章，我们利用函数 $f\(x\)$ 和它的图象之间的对应关系，就可以把函数的变率和它的图象的切线的斜率相对应地一并分析讨论，这样，一方面可以把函数的变率这种“数量”的概念用切线来形象化，便于想象；而另一方面又可以把“切线”这种几何概念数量化，便于计算，在这一章，我们也要利用函数 $f\(x\)$ 和它的图象之间的对应关系，把函数 $f\(x\)$ 由 $x = a$ 到 $x = b$ 的“和”与曲线 $y = f\(x\)$ 的曲边梯形的“面积”相对应地一并分析讨论，并且说明函数的“求从 $a$ 到 $b$ 的和”恰好对应于求曲边梯形的面积．这也就是为什么把函数“求从 $a$ 到 $b$ 的和”这种基本运算叫做积分的道理．

== “和”与“面积”
对于任意曲线围成的图形，我们还没有规定它的“面积”的意义，和它密切相关的“函数从 $a$ 到 $b$ 的和”的概念至今也没有明确的解析的定义．在这一节我们要把这两个概念由“直观的定性理解”推进到“数量化的定量定义”．唯有确立了它们的“解析的定义”，它们才真正地成为能算好用的量．

=== “和”与“面积”的基本性质
现在让我们先从“函数的和”与“曲线形的面积”的直观内涵来分析一下它们分别所应有的基本性质．

==== “曲线形的面积”的基本性质
从面积的直观内涵容易看出下列两点：

+ \(单调性）设区域 $R_1$ 包含在 $R_2$ 之内，即 $R_1 subset.eq R_2$, 则：$R_1$ 的面积 $lt.eq R_2$ 的面积．（图3.4）

+ \(可加性）设区域 $R$ 可以用一条曲线分割成两块区域 $R_1 + R_2$, 则有：$R$ 的面积 $= R_1$ 的面积 $+ R_2$ 的面积．（图3.5）

#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("6-04");], caption: []), figure([#fig("6-05");], caption: []))));

==== “函数的和”的基本性质
同样地，从“函数从 $a$ 到 $b$ 的和”的直观内涵容易看出下列两个基本性质，即

#blk[性质1：单调性][
设函数 $f\(t\)$ 和 $g\(t\)$ 在 $a lt.eq t lt.eq b$ 上，$f\(t\)lt.eq g\(t\)$ 恒成立，那么：

“$f\(t\)$ 由 $t = a$ 到 $t = b$ 的和”$lt.eq$“$g\(t\)$ 由 $t = a$ 到 $t = b$ 的和”．

]
例如，两部车子在 $t = a$ 到 $t = b$ 的时间内，甲车的速率 $f\(t\)lt.eq$ 乙车的速率 $g\(t\)$, 则甲车在上述时间内所经过的里程 $lt.eq$ 乙车在上述时间内所经过的里程．

#blk[性质2：可加性][
设 $a < b < c$⁠，那么，有：

“$f\(t\)$ 由 $t = a$ 到 $t = b$ 的和”$+$“$f\(t\)$ 由 $t = b$ 到 $t = c$ 的和”$=$“$f\(t\)$ 由 $t = a$ 到 $t = c$ 的和”．

]
上述基本性质是一目了然的，让我们先用来说明一些简单的基本事实．

#example[
设函数 $y = f\(t\)= k$（常数），则由和的直观内涵，显然应有：$ upright("常数函数从") a upright("到") b upright("的和") = k\(b - a\) $

例如，以等速率每小时 $k$ 公里行驶的火车从 $t = a$ 小时到 $t = b$ 小时内所走的总里程应该是 $k\(b - a\)$ 公里．

现在让我们利用函数的图象来观察上述数值 $k\(b - a\)$ 的几何意义．

#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("6-06");], caption: []), figure([#fig("6-07");], caption: []))));

+ 当 $k > 0$ 时，函数 $f\(t\)= k$ 的图象在 $t$ 轴上方，$k\(b - a\)$ 对应于一个矩形的面积，如图3.6中阴影部分的面积．

+ 当 $k < 0$ 时，函数 $f\(t\)= k$ 的图象在 $t$ 轴下方，$k\(b - a\)$ 对应于一个矩形的面积的负值，如图3.7中阴影部分的面积的负值．

假如我们把 $t$ 轴之上的面积定义为正的，而把 $t$ 轴之下的面积定义为负的，则当 $y = k$（常数）时，常数函数从 $a$ 到 $b$ 的和 $= k\(b - a\)=$ 上述的有号面积．

]
#example[
设 $y = f\(t\)$ 是一个阶梯函数，即分段地是常数函数：设 $ a = t_0 < t_1 < t_2 < dots.h.c < t_(i - 1) < t_i < dots.h.c < t_n = b $ #noindent;当 $t_(i - 1) lt.eq t < t_i$ 时，$f\(t\)= k_i\,thick i = 1\,2\,dots.h\,n$⁠．由性质2，我们可以分段地用常数函数求和，就可以得到阶梯函数 $f\(t\)$ 从 $a$ 到 $b$ 的和．

阶梯函数 $f\(t\)$ 从 $a$ 到 $b$ 的和 $ = k_1\(t_1 - t_0\)+ k_2\(t_2 - t_1\)+ dots.h.c + k_n\(t_n - t_(n - 1)\) $

作出阶梯函数的图象（图3.8），上述函数和就等于下列逐段由矩形并起来的区域的“有号面积”．

#figure([#fig("6-08");

  ],
  caption: [
  ]
)

]
=== 逼近法求和
对于一个比较一般的函数，例如 $y = k t + c$, $y = t^2$, $y = sin t$ 等等，我们必须给函数的和下一个适当的定义，同时要提供计算这个和的方法，这里我们将要再一次地用逼近法的观点去解答上述问题．回顾上一章讨论变率时，我们的基本想法是用折线函数去逼近一般的平滑函数，所以折线函数是讨论函数变率的简单好用的基本函数，因为它们的变率十分简单，分段地是个常数而且无限逼近函数在某一点的变率．由上一段的讨论；我们知道阶梯函数的“从 $a$ 到 $b$ 的和”是十分简明的，它们在“函数求从 $a$ 到 $b$ 的和”这方面是不是也扮演着这种既简单又基本的角色呢？这就得看一看能否用阶梯函数的从 $a$ 到 $b$ 的和去无限逼近一般性的“函数从 $a$ 到 $b$ 的和”了！

现在让我们使用几个简单的实例来试试看．

#example[
假设物体以初速度 $u$, 加速度 $a > 0$ 在直线上运动，于是物体在任何时刻 $t$ 的速度是 $v = f\(t\)= u + a t$, 求物体从 $t = 0$ 到 $t = T$ 时所经过的距离，即求速度函数 $f\(t\)$ 在时间间隔 $\[0\,T\]$ 上的和．

]
#analyze[
一个自然的作法是用两个阶梯函数 $g_n\(t\)$ 和 $G_n\(t\)$ 把上述函数 $f\(t\)= u + a t$ 夹逼在中间，即 $ g_n\(t\)lt.eq f\(t\)lt.eq G_n\(t\) $ #noindent;对于任何 $0 lt.eq t lt.eq T$ 都成立，那么由性质1，$g_n\(t\)$ 从0到 $T$ 的和 $lt.eq f\(t\)$ 从 $0$ 到 $T$ 的和 $lt.eq G_n\(t\)$ 从0到 $T$ 的和．

如果能使 $g_n\(t\)$ 从0到 $T$ 的和与 $G_n\(t\)$ 从0到 $T$ 的和，当 $n arrow.r oo$ 时的极限相同，则由上述夹逼关系就可以看出 $f\(t\)$ 从0到 $T$ 的和必须等于这个共同极限．

]
#figure([#fig("6-09");

  ],
  caption: [
  ]
)
<fig:chapter3_sec1_line_segmentation>

下面就是把上述想法付诸实践的具体做法之一．

#solution[
+ 把时间间隔 $n$ 等分，取分点 $t_i = i / n T\,thick i = 0\,1\,2\,dots.h\,n$, 于是在每个分点 $t_i = i / n T$ 处的速度分别是 $ f\(t_0\)= f\(0\)= u\,thick f\(t_1\)= u + a t_1\,thick f\(t_2\)= u + a t_2\,dots.h\,f\(t_n\)= f\(T\)= u + a T $

+ 用阶梯函数近似代替 $v = f\(t\)= u + a t$.

  假设物体在时间的每个小区间 $\[t_i\,t_(i + 1)\]\,thick i = 0\,1\,2\,dots.h\,\(n - 1\)$ 内，以小区间起点处的速度作匀速运动，我们得到一个速度的阶梯函数 $ g_n\(t\)= f\(t_i\)= u + a t_i\,quad t_i lt.eq t < t_(i + 1)\,quad i = 0\,1\,2\,dots.h\,\(n - 1\) $ #noindent;因为 $f\(t\)= u + a t$ 是严格递增的，所以 $g_n\(t\)$ 有以下性质：$ g_n\(t\)= f\(t_i\)lt.eq f\(t\)\,quad t_i lt.eq t < t_(i + 1)\,quad i = 0\,1\,2\,dots.h\,\(n - 1\) $ #noindent;从而，对于任何 $0 lt.eq t lt.eq T$⁠，有 $g_n\(t\)lt.eq f\(t\)$.

  假设物体在时间的每个小区间 $\[t_i\,t_(i + 1)\]\,thick i = 0\,1\,2\,dots.h\,\(n - 1\)$ 内，以小区间终点处的速度作匀速运动，我们得到另一个速度的阶梯函数 $ G_n\(t\)= f\(t_(i + 1)\)= u + a t_(i + 1)\,quad t_i < t lt.eq t_(i + 1)\,quad i = 0\,1\,2\,dots.h\,\(n - 1\) $

  由于 $f\(t\)= u + a t$ 是递增的，所以 $G_n\(t\)$ 有以下性质 $ G_n\(t\)= f\(t_(i + 1)\)gt.eq f\(t\)\,quad t_i < t lt.eq t_(i + 1)\,quad i = 0\,1\,2\,dots.h\,\(n - 1\) $ #noindent;从而对于任何 $0 lt.eq t lt.eq T$⁠，有 $ G_n\(t\)gt.eq f\(t\) $ #noindent;这样，我们就得到了 $v = f\(t\)$ 的夹逼阶梯函数：$ g_n\(t\)lt.eq f\(t\)lt.eq G_n\(t\)\,quad 0 lt.eq t lt.eq T $

  （在图#ref-num(label("fig:chapter3_sec1_line_segmentation"));中，绘出了 $f\(t\)= u + a t$ 的图象和当 $n = 7$ 时阶梯函数 $g_7\(t\)$ 和 $G_7\(t\)$ 的图象.）

+ 求阶梯函数的总和

  应用基本性质2, 我们得到 $g_n\(t\)$ 从0到 $T$ 的和 $ f\(t_0\)\(t_1 - t_0\)+ f\(t_1\)\(t_2 - t_1\)+ dots.h.c + f\(t_(n - 1)\)\(t_n - t_(n - 1)\) $

  $because quad t_1 - t_0 = t_2 - t_1 = dots.h.c = t_n - t_(n - 1) = T / n$

  因此：$ g_n\(t\) upright("从0到") T upright("的和") & = [f \( t_0 \) + f \( t_1 \) + dots.h.c + f \( t_(n - 1) \)] dot.op T / n\
   & = [u + \( u + a t_1 \) + \( u + a t_2 \) + dots.h.c + \( u + a t_(n - 1) \)] dot.op T / n\
   & = [n u + a \( t_1 + t_2 + dots.h.c + t_(n - 1) \)] dot.op T / n\
   & = [n u + a (T / n + frac(2 T, n) + dots.h.c + frac(\(n - 1\)T, n))] dot.op T / n\
   & = u T + a dot.op\[1 + 2 + dots.h.c +\(n - 1\)\](T / n)^2\
   & = u T + a dot.op frac(n\(n - 1\), 2) dot.op T^2 / n^2\
   & = u T + 1 / 2 a T^2 (1 - 1 / n) $

  $ G_n\(t\) upright("从0到") T upright("的和") & = f\(t_1\)\(t_1 - t_0\)+ f\(t_2\)\(t_2 - t_1\)+ dots.h.c + f\(t_n\)\(t_n - t_(n - 1)\)\
   & = [f \( t_1 \) + f \( t_2 \) + dots.h.c + f \( t_n \)] dot.op T / n\
   & = [\( u + a t_1 \) + \( u + a t_2 \) + dots.h.c + \( u + a t_n \)] dot.op T / n\
   & = [n u + a (T / n + frac(2 T, n) + dots.h.c + frac(n T, n))] dot.op T / n\
   & = u T + a dot.op\(1 + 2 + dots.h.c + n\)dot.op (T / n)^2\
   & = u T + 1 / 2 a T^2 (1 + 1 / n) $ #noindent;综合上述计算和基本性质1, 即得：$g_n\(t\)$ 从0到 $T$ 的和 $lt.eq f\(t\)$ 从0到 $T$ 的和 $lt.eq G_n\(t\)$ 从0到 $T$ 的和，即 $ u T + 1 / 2 a T^2 (1 - 1 / n) lt.eq f\(t\)upright("从0到") T upright("的和") lt.eq u T + 1 / 2 a T^2 (1 + 1 / n) $

+ 求阶梯函数和式的极限．

  因为 $ lim_(n arrow.r oo) lr(\{ u T + 1 / 2 a T^2 (1 - 1 / n) \}) & = lim_(n arrow.r oo) lr(\{ u T + 1 / 2 a T^2 (1 + 1 / n) \})\
   & = u T + 1 / 2 a T^2 $ #noindent;所以，这个共同的极限值 $u T + 1 / 2 a T^2$ 就是物体在变速 $v = f\(t\)= u + a t$ 运动下，从 $t = 0$ 到 $t = T$ 所走的距离，也就是函数 $v = f\(t\)= u + a t$ 从 $t = 0$ 到 $t = T$ 的和．

从几何上看，上述极限值 $u T + 1 / 2 a T^2 = frac(\[u +\(u + a T\)\]T, 2)$ 就是在图#ref-num(label("fig:chapter3_sec1_line_segmentation"));中的梯形 $O A B C$ 的面积．

]
#example[
设函数 $f\(x\)= x^2$, $a = 0$, $b > 0$, 求 $f\(x\)$ 由0到 $b$ 的和，相应地，求抛物线 $y = x^2$ 在线段 $\[0\,b\]$ 上所盖的曲边三角形 $O B C$ 的面积（图#ref-num(label("fig:chapter3_sec1_y-3d-x-5e-2"));）.

]
#figure([#fig("6-10");

  ],
  caption: [
  ]
)
<fig:chapter3_sec1_y-3d-x-5e-2>

#solution[
+ 把线段 $\[0\,b\]$ $n$ 等分，等分点的坐标是 $x_i = b / n i thick\(i = 0\,1\,2\,dots.h\,n\)$

+ 作阶梯函数 $g_n\(x\)$ 和 $G_n\(x\)$.

  根据 $f\(x\)= x^2$ 在 $x > 0$ 时递增，定义 $ g_n\(x\) & = f\(x_i\)= x_i^2 = (b / n)^2 i^2\,quad x_i lt.eq x < x_(i + 1)\
  G_n\(x\) & = f\(x_(i + 1)\)= x_(i + 1)^2 = (b / n)^2\(i + 1\)^2\,quad x_i < x lt.eq x_(i + 1) $ #noindent;其中，$i = 0\,1\,2\,dots.h\,\(n - 1\)$⁠．于是，$g_n\(x\)lt.eq f\(x\)lt.eq G_n\(x\)\,quad 0 lt.eq x lt.eq b$

+ 求阶梯函数的和 $ s_n & = g_n\(x\)upright("从0到") b upright("的和")\
   & = f (x_0) dot.op b / n + f (x_1) dot.op b / n + dots.h.c + f (x_(n - 1)) dot.op b / n\
   & = lr(\{ f (x_0) + f (x_1) + dots.h.c + f (x_(n - 1)) \}) dot.op b / n\
   & = lr(\{ 0^2 + 1^2 + 2^2 + dots.h.c + \( n - 1 \)^2 \}) dot.op (b / n)^3\
   & = 1 / 6 n\(n - 1\)\(2 n - 1\)dot.op (b / n)^3 = b^3 / 6 (1 - 1 / n) (2 - 1 / n) $ $ S_n = G_n\(x\)upright(" 从0到") b upright("的和") & = lr(\{ f (x_1) + f (x_2) + dots.h.c + f (x_n) \}) dot.op b / n\
   & = lr(\{ 1^2 + 2^2 + dots.h.c + n^2 \}) dot.op (b / n)^3\
   & = 1 / 6 n\(n + 1\)\(2 n + 1\)dot.op (b / n)^3\
   & = b^3 / 6 (1 + 1 / n) (2 + 1 / n) $

  综合上述计算和性质1，有：$ b^3 / 6 (1 - 1 / n) (2 - 1 / n) & = s_n lt.eq mat(delim: "[", upright("函数") f\(x\)= x^2 upright("从0到") b upright("的和，"); upright("相应的曲边三角形") O B C upright("的面积"))\
   & lt.eq S_n = b^3 / 6 (1 + 1 / n) (2 + 1 / n) $

+ 令 $n arrow.r oo$⁠，求阶梯函数和式的极限．因为 $ b^3 / 6 (1 - 1 / n) (2 - 1 / n) arrow.r b^3 / 3 #h(2em)\(n arrow.r oo\)\
  b^3 / 6 (1 + 1 / n) (2 + 1 / n) arrow.r b^3 / 3 #h(2em)\(n arrow.r oo\) $ #noindent;所以 $1 / 3 b^3$ 是能被 $s_n$⁠、$S_n$ 左、右夹逼的唯一实数，而所求的“$f\(x\)= x^2$ 从0到 $b$ 的和”以及“曲边三角形 $O B C$ 的面积，”这两个值都是夹逼在 $s_n$ 和 $S_n$ 中间的实数，故它们都等于 $1 / 3 b^3$.

]
#blk[推论][
$f\(x\)= x^2$ 从 $a$ 到 $b$ 的和 $= 1 / 3 b^3 - 1 / 3 a^3 quad\(b > a > 0\)$.

]
#example[
设 $y = f\(x\)$ 是一个定义在 $\[a\,b\]$ 上的递增连续函数，试说明它从 $a$ 到 $b$ 的和是可以确定的．

]
#figure([#fig("6-11");

  ],
  caption: [
  ]
)
<fig:chapter3_sec1_monotone-20-f>

#solution[
+ 取 $\[a\,b\]$ 之间的 $n$ 等分点，将它分成 $n$ 段，即有 $ x_0 = a < x_1 < x_2 < dots.h.c < x_n = b $ #noindent;它的第 $i$ 段是 $\[x_(i - 1)\,x_i\]$⁠，且 $x_i - x_(i - 1) = frac(b - a, n)$⁠，$x_i = a + i / n\(b - a\)$

+ 定义 $f\(x\)$ 的上、下夹逼阶梯函数如下：$ g_n\(x\) & = f\(x_(i - 1)\)\,#h(2em) x_(i - 1) lt.eq x lt.eq x_i\
  G_n\(x\) & = f\(x_i\)\,#h(2em) x_(i - 1) lt.eq x lt.eq x_i quad\(i = 1\,2\,3\,dots.h\,n\) $ #noindent;由 $f\(x\)$ 的递增性，对于任何一个 $x in\[a\,b\]$⁠，有 $ g_1\(x\)lt.eq g_2\(x\)lt.eq dots.h.c lt.eq g_n\(x\)lt.eq dots.h.c lt.eq f\(x\)lt.eq dots.h.c lt.eq G_n\(x\)lt.eq dots.h.c lt.eq G_2\(x\)lt.eq G_1\(x\) $ #noindent;简写成 $ g_n\(x\)lt.eq f\(x\)lt.eq G_n\(x\)\,#h(2em) a lt.eq x lt.eq b $

+ 求相应的阶梯函数从 $a$ 到 $b$ 的和#numbered-eq($ s_n = g_n\(x\)upright("从") a upright("到") b upright("的和") & = frac(b - a, n) [f \( x_0 \) + f \( x_1 \) + dots.h.c + f \( x_(n - 1) \)]\
 & = frac(b - a, n) sum_(i = 1)^n f\(x_(i - 1)\) $); #numbered-eq($ S_n = G_n\(x\)upright("从") a upright("到") b upright("的和") & = frac(b - a, n) [f \( x_1 \) + f \( x_2 \) + dots.h.c + f \( x_n \)]\
 & = frac(b - a, n) sum_(i = 1)^n f\(x_i\) $);

#noindent;由性质1, 有：$ s_1 < s_2 < dots.h.c < s_n < dots.h.c < f\(x\)upright("从") a upright("到") b upright("的和") < dots.h.c < S_n < dots.h.c < S_2 < S_1 $ #noindent;简写成#numbered-eq($ s_n < f\(x\)upright("从") a upright("到") b upright("的和") < S_n $);#noindent;在例3.3, 例3.4中，$f\(x\)$ 有明确的解析式，我们可以用求和公式直接求出 $s_n$ 和 $S_n$ 的表达式，从而可以得出它们的共同极限值，在这里，我们只知道 $f\(x\)$ 的递增性，当然无法将和式 $s_n$ 和 $S_n$ 进一步化简，但是我们可以说明，当 $n arrow.r oo$ 时，$S_n - s_n arrow.r 0$.

事实上，$ S_n - s_n & = frac(b - a, n) sum_(i = 1)^n f\(x_i\)- frac(b - a, n) sum_(i = 1)^n f\(x_(i - 1)\)\
 & = frac(b - a, n) sum_(i = 1)^n [f \( x_i \) - f \( x_(i - 1) \)]\
 & = frac(b - a, n) [f \( x_n \) - f \( x_0 \)] = frac(b - a, n) [f \( b \) - f \( a \)] $ #noindent;因此，当 $n arrow.r oo$ 时，$S_n - s_n arrow.r 0$.

又 $f\(x\)$ 从 $a$ 到 $b$ 的和是介于 $s_n$ 和 $S_n$ 中间的唯一实数，因此 $ lim_(n arrow.r oo) s_n = lim_(n arrow.r oo) S_n = f\(x\)upright(" 从") a upright("到") b upright("的和") $

以上简单明了的分析，说明了下面两点互相关联的事实：

+ 当函数 $f\(x\)$ 在 $a lt.eq x lt.eq b$ 上递增时，则它从 $a$ 到 $b$ 的和可以用上述两个夹逼阶梯函数从 $a$ 到 $b$ 的和去无限逼近.

+ 由于 $limits(lim)_(n arrow.r oo) s_n$ 与 $limits(lim)_(n arrow.r oo) S_n$ 存在，且 $limits(lim)_(n arrow.r oo) s_n = limits(lim)_(n arrow.r oo) S_n$, 我们可以用 $f\(x\)$ 的上、下夹逼阶梯函数序列，即：$g_1\(x\)lt.eq g_2\(x\)lt.eq dots.h.c lt.eq g_n\(x\)lt.eq dots.h.c lt.eq f\(x\)lt.eq dots.h.c lt.eq G_n\(x\)lt.eq dots.h.c lt.eq G_2\(x\)lt.eq G_1\(x\)\,thick\(a lt.eq x lt.eq b\)$ 的从 $a$ 到 $b$ 的和的极限 $limits(lim)_(n arrow.r oo) s_n = limits(lim)_(n arrow.r oo) S_n$ 作为上述 $f\(x\)$ 从 $a$ 到 $b$ 的和的数量化定义．

]
#blk[定义1][
若 $f\(x\)$ 是 $\[a\,b\]$ 上的递增连续函数，将 $\[a\,b\]$ 等分成 $n$ 段，分点坐标 $x_i = a + i / n\(b - a\)\,thick i = 0\,1\,2\,dots.h\,n$⁠，则存在两个阶梯函数：$ g_n\(x\)= f\(x_(i - 1)\)\,quad x_(i - 1) lt.eq x < x_i $ #noindent;和 $ G_n\(x\)= f\(x_i\)\,quad x_(i - 1) < x lt.eq x_i\,quad\(i = 1\,2\,dots.h\,n\) $ #noindent;满足下面的性质：

+ 对于任何 $x in\[a\,b\]$⁠，$g_n\(x\)lt.eq f\(x\)lt.eq G_n\(x\)$

+ 相应的阶梯函数从 $a$ 到 $b$ 的和 $ s_n = frac(b - a, n) sum_(i = 1)^n f\(x_(i - 1)\)\,#h(2em) S_n = frac(b - a, n) sum_(i = 1)^n f\(x_i\) $

#noindent;当 $n arrow.r oo$ 时，$S_n - s_n arrow.r 0$⁠，那么 $f\(x\)$ 从 $a$ 到 $b$ 的和是 $s_n$ 与 $S_n$ 的共同极限，即：$ f\(x\)upright("从") a upright("到") b upright("的和") & = lim_(n arrow.r oo) frac(b - a, n) sum_(i = 1)^n f\(x_(i - 1)\)\
 & = lim_(n arrow.r oo) frac(b - a, n) sum_(i = 1)^n f\(x_i\) $

同样地，如果 $f\(x\)$ 是 $\[a\,b\]$ 上的递减连续函数．那么将 $\[a\,b\]$ $n$ 等分，分点坐标 $x_i = a + i / n\(b - a\)$, 这时有两个阶梯函数 $ g_n\(x\)= f\(x_i\)\,quad x_(i - 1) < x lt.eq x_i $ #noindent;和 $ G_n\(x\)= f\(x_(i - 1)\)\,quad x_(i - 1) lt.eq x < x_i\,quad\(i = 1\,2\,dots.h\,n\) $ #noindent;满足下面的性质：

+ 对于任何 $x in\[a\,b\]$⁠，$g_n\(x\)lt.eq f\(x\)lt.eq G_n\(x\)$

+ 相应的阶梯函数 $g_n\(x\)$ 与 $G_n\(x\)$ 相应的和 $ s_n & = g_n upright("从") a upright("到") b upright("的和") = frac(b - a, n) sum_(i = 1)^n f\(x_i\)\
  S_n & = G_n upright("从") a upright("到") b upright("的和") = frac(b - a, n) sum_(i = 1)^n f\(x_(i - 1)\) $

#noindent;当 $n arrow.r oo$ 时，$S_n - s_n = frac(b - a, n) [f \( a \) - f \( b \)] arrow.r 0$⁠，即：$ limits(lim)_(n arrow.r oo) s_n = limits(lim)_(n arrow.r oo) S_n $

]
#blk[定义2][
递减连续函数从 $a$ 到 $b$ 的和为上述夹逼阶梯函数 $g_n\(x\)$ 和 $G_n\(x\)$ 从 $a$ 到 $b$ 的和的共同极限，即 $ f\(x\)upright("从") a upright("到") b upright("的和") & = lim_(n arrow.r oo) frac(b - a, n) sum_(i = 1)^n f\(x_i\)\
 & = lim_(n arrow.r oo) frac(b - a, n) sum_(i = 1)^n f\(x_(i - 1)\) $

]
通常我们把递增或递减的函数合称为单调函数，常见的函数 $f\(x\)$ 都是分段单调连续的，例如，$y = sin x$ 本身虽然不是单调的，但是它在 $[- pi / 2 + 2 k pi \, pi / 2 + 2 k pi] thick\(k in bb(Z)\)$ 这些区间的每一段是递增的；而在 $[pi / 2 + 2 k pi \, frac(3 pi, 2) + 2 k pi] thick\(k in bb(Z)\)$ 这些区间的每一段是递减的．因此，对于一般在 $\[a\,b\]$ 上连续的函数，如果存在有限个分点使得 $f\(x\)$ 在每个分段上都是单调的，我们可以逐段取上、下夹逼阶梯函数，合起来作为定义在 $\[a\,b\]$ 上的函数 $f\(x\)$ 的阶梯函数，于是得出 $ g_n\(x\)lt.eq f\(x\)lt.eq G_n\(x\)\,#h(2em) x in\[a\,b\] $ #noindent;又因为有限个在分段上趋于0的量的和仍趋于0, 所以 $ upright("“") G_n\(x\) upright("从") a upright("到") b upright("的和”") - upright("“") g_n\(x\) upright("从") a upright("到") b upright("的和”") arrow.r 0 $

总结以上讨论，我们叙述为存在定理和定义如下：

#blk[定理][
设 $y = f\(x\)$ 是一个定义在 $\[a\,b\]$ 上分段单调函数，则存在满足下列性质的两系列阶梯函数：$ g_n\(x\)lt.eq f\(x\)lt.eq G_n\(x\)\,#h(2em) x in\[a\,b\] $ #noindent;而且当 $n arrow.r oo$ 时，“$G_n\(x\)$ 从 $a$ 到 $b$ 的和，”与“$g_n\(x\)$ 从 $a$ 到 $b$ 的和”趋于共同极限．

]
#blk[定义3][
设 $f\(x\)$ 是 $\[a\,b\]$ 上的连续函数，如果存在有限个分点：$ a = a_0 < a_1 < dots.h.c < a_k < dots.h.c < a_ell = b $ #noindent;使得 $f\(x\)$ 在每个分段 $\[a_(k - 1)\,a_k\]$ 都是单调的，再将每个分段 $\[a_(k - 1)\,a_k\]$ 都 $n$ 等分，则当 $n arrow.r oo$ 时，有 $ f\(x\)upright("从") a upright("到") b upright("的和") & = lim_(n arrow.r oo) frac(a_1 - a_0, n) sum_(i = 1)^n f\(x_i\)+ lim_(n arrow.r oo) frac(a_2 - a_1, n) sum_(i = n + 1)^(2 n) f\(x_i\)+\
 & dots.h.c + lim_(n arrow.r oo) frac(a_ell - a_(ell - 1), n) sum_(i =\(ell - 1\)n + 1)^(ell n) f\(x_i\) $

]
为了说明上述定义是合理的，我们就得证明上述 $f\(x\)$ 从 $a$ 到 $b$ 的和与夹逼的阶梯函数列 $\{ G_n\(x\)\}$ 和 $\{ g_n\(x\)\}$ 的选取无关，其证明如下：

#proof[
设 $\{ macron(G)_m\(x\)\}$ 和 $\{ macron(g)_m\(x\)\}$ 是另外一组满足存在定理的上、下夹逼函数列，则由下述不等式 $ g_n\(x\)lt.eq f\(x\)lt.eq G_n\(x\)\,quad macron(g)_m\(x\)lt.eq f\(x\)lt.eq macron(G)_m\(x\)\,#h(2em) a lt.eq x lt.eq b $ #noindent;即有 $ g_n\(x\)lt.eq macron(G)_m\(x\)\,#h(2em) macron(g)_m\(x\)lt.eq G_n\(x\) $ #noindent;所以由基本性质1，有 $ s_n & = g_n\(x\)upright("从") a upright("到") b upright("的和") lt.eq macron(G)_m\(x\)upright("从") a upright("到") b upright("的和") = macron(S)_m\
macron(s)_m & = macron(g)_m\(x\)upright("从") a upright("到") b upright("的和") lt.eq G_n\(x\)upright("从") a upright("到") b upright("的和") = S_n $ #noindent;所以 $ lim_(n arrow.r oo) s_n lt.eq lim_(m arrow.r oo) macron(S)_m\,#h(2em) lim_(m arrow.r oo) macron(s)_m lt.eq lim_(n arrow.r oo) S_n $ #noindent;但是 $ lim_(n arrow.r oo) s_n lt.eq lim_(m arrow.r oo) macron(S)_m = lim_(m arrow.r oo) macron(s)_m lt.eq lim_(n arrow.r oo) S_n = lim_(n arrow.r oo) s_n $ #noindent;所以上述极限必须相等，即：$ lim_(n arrow.r oo) s_n = lim_(m arrow.r oo) macron(S)_m = lim_(m arrow.r oo) macron(s)_m = lim_(n arrow.r oo) S_n $

]
#example[
求 $f\(x\)= 2 x - x^2$ 从0到2的和．

]
#solution[
由 $f'\(x\)= 2 - 2 x$, $f''\(x\)= - 2$ 知 $f\(1\)= 2 - 1 = 1$ 是 $f\(x\)$ 的极大值，并且 $y = 2 x - x^2$ 在 $\[0\,1\]$ 上递增，在 $\[1\,2\]$ 上递减，于是，我们把区间 $\[0\,1\]$ 和 $\[1\,2\]$ 都 $n$ 等分，设分点坐标 $x_i = i / n\,thick i = 0\,1\,2\,dots.h\,2 n$, 即有 $ 0 = x_0 < x_1 < x_2 < dots.h.c < x_n = 1 < x_(n + 1) < x_(n + 2) < dots.h.c < x_(2 n) = 2 $ #noindent;且 $Delta x_i = x_i - x_(i - 1) = 1 / n$⁠，由定义3得到：$ f\(x\) & = 2 x - x^2 upright("从0到2的和")\
 & = lim_(n arrow.r oo) 1 / n sum_(i = 1)^n [2 (i / n) - (i / n)^2] + lim_(n arrow.r oo) 1 / n sum_(i = n + 1)^(2 n) [2 (i / n) - (i / n)^2]\
 & = lim_(n arrow.r oo) 1 / n sum_(i = 1)^(2 n) 2 (i / n) - lim_(n arrow.r oo) 1 / n sum_(i = 1)^(2 n) (i / n)^2\
 & = 2 lim_(n arrow.r oo) 1 / n^2 sum_(i = 1)^(2 n) i - lim_(n arrow.r oo) 1 / n^3 sum_(i = 1)^(2 n) i^2\
 & = 2 lim_(n arrow.r oo) 1 / n^2 dot.op frac(\(2 n + 1\)2 n, 2) - lim_(n arrow.r oo) 1 / n^3 dot.op frac(2 n\(2 n + 1\)\(4 n + 1\), 6)\
 & = 2 lim_(n arrow.r oo) (2 + 1 / n) - lim_(n arrow.r oo) 1 / 3 (2 + 1 / n) (4 + 1 / n)\
 & = 4 - 8 / 3 = 4 / 3 $

]
#exercise[
+ 已知质点的运动速度 $v = t + 4$, 试求质点在前10秒内所走的路程．

+ 求 $f\(x\)= x^3$ 在 $1 lt.eq x lt.eq 2$ 上的和．

]
== 定积分的定义和基本性质
=== 定积分定义
设函数 $f\(x\)$ 在 $\[a\,b\]$ 上连续，如果存在有限个分点 $ a = a_0 < a_1 < a_2 < dots.h.c < a_(ell - 1) < a_ell = b $ #noindent;使得 $f\(x\)$ 在每个分段 $\[a_(k - 1)\,a_k\]thick\(k = 1\,2\,dots.h\,ell\)$ 上都是单调的，我们把 $f\(x\)$ 从 $a$ 到 $b$ 的和叫做 $f\(x\)$ 从 $a$ 到 $b$ 的#strong[定积分]，并记作 $ integral_a^b f\(x\)thin upright(d) x $

这里，积分符号所使用的是长 $S$ 形的求和号的变形，而从部分区间长 $Delta x_i = frac(a_k - a_(k - 1), n)$ 过渡到极限，则通过字母 $thin upright(d)$ 来表示．

我们把数 $a$ 与 $b$ 称为#strong[积分限]（$a$ 称为#strong[下限]，$b$ 称为#strong[上限]）．区间 $\[a\,b\]$ 称为#strong[积分区间]，函数 $f\(x\)$ 称为#strong[被积函数]，乘积 $f\(x\)thin upright(d) x$ 称为#strong[被积表达式]，定积分符号下出现的字母 $x$ 叫做#strong[积分变量]．

上述定积分定义用定积分符号表示就是：$ integral_a^b f\(x\)thin upright(d) x = sum_(k = 1)^ell integral_(a_(k - 1))^(a_k) f\(x\)thin upright(d) x $ #noindent;其中 $display(integral)_(a_(k - 1))^(a_k) f\(x\)thin upright(d) x$ 是 $f\(x\)$ 为单调的第 $k$ 个分段 $\[a_(k - 1)\,a_k\]$ 上的夹逼阶梯函数 $g_n\(x\)$ 和 $G_n\(x\)$ 从 $a_(k - 1)$ 到 $a_k$ 的和的共同极限，即：$ integral_(a_(k - 1))^(a_k) f\(x\)thin upright(d) x & = lim_(n arrow.r oo) frac(a_k - a_(k - 1), n) sum_(i = 1)^n f\(x_(i - 1)\)\
 & = lim_(n arrow.r oo) frac(a_k - a_(k - 1), n) sum_(i = 1)^n f\(x_i\) $

定积分定义的另一种表述形式是：设函数 $f\(x\)$ 在 $a lt.eq x lt.eq b$ 上分段单调连续，如果存在两系列上、下夹逼阶梯函数 $\{ g_n\(x\)\}$, $\{ G_n\(x\)\}$, 使得 $ g_n\(x\)lt.eq f\(x\)lt.eq G_n\(x\)\,#h(2em) a lt.eq x lt.eq b $ #noindent;并且 $g_n\(x\)$ 从 $a$ 到 $b$ 的和 $s_n$ 与 $G_n\(x\)$ 从 $a$ 到 $b$ 的和 $S_n$ 具有相同的极限，这个极限叫做 $f\(x\)$ 从 $a$ 到 $b$ 的定积分 $display(integral)_a^b f\(x\)thin upright(d) x$.

综上所述，在积分符号中，我们只对 $a < b$, 即积分下限小于积分上限的情形给出了定义，若 $a > b$⁠，我们定义 $ integral_b^a f\(x\)thin upright(d) x = - integral_a^b f\(x\)thin upright(d) x $ #noindent;此外，由于定积分可以解释为曲边梯形的面积，自然可以规定 $ integral_a^a f\(x\)thin upright(d) x = 0 $ #noindent;作了这样的规定之后，不论 $a < b$, $a > b$ 或 $a = b$, 定积分都有意义了．

#exercise[
+ 求证 $display(integral)_a^b k x thin upright(d) x = frac(k b^2, 2) - frac(k a^2, 2) quad\(a < b\)$

+ 求 $display(integral)_8^0 (x^2 - 4 x) thin upright(d) x$

+ 求 $display(integral)_(- 1)^2 (x^3 - 3 x) thin upright(d) x$

]
=== 逼近法求曲线形的面积
任意一条曲线围成的图形（图#ref-num(label("fig:chapter3_sec2_arbitrary_shape"));）常常可以用两组互相垂直的直线把它分成若干部分，每一部分都是一个曲边梯形（图#ref-num(label("fig:chapter3_sec2_good_piece"));）, 在这里并不排除下述情形（图#ref-num(label("fig:chapter3_sec2_degenerated_piece"));）：两条平行的边中有一条缩成了一点，因而曲边梯形变成了曲边三角形，这样一来，我们的问题就化成了求曲边梯形面积的问题．

#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (45%, 25%, 25%,), column-gutter: 1em, align: center + bottom, [#figure([#fig("6-12");], caption: [])#label("fig:chapter3_sec2_arbitrary_shape")], [#figure([#fig("6-13");], caption: [])#label("fig:chapter3_sec2_good_piece")], [#figure([#fig("6-14");], caption: [])#label("fig:chapter3_sec2_degenerated_piece")])));

#blk[命题][
设 $y = f\(x\)$ 是定义在 $a lt.eq x lt.eq b$ 的分段单调连续函数，而且 $f\(x\)gt.eq 0$, 则区域 $R = \{ a lt.eq x lt.eq b\,thick 0 lt.eq y lt.eq f\(x\)\}$ 的面积等于 $ integral_a^b f\(x\)thin upright(d) x $

]
#figure([#fig("6-15");

  ],
  caption: [
  ]
)
<fig:chapter3_sec2_riemann_sum>

#proof[
由 $display(integral)_a^b f\(x\)thin upright(d) x$ 的定义得知，存在两系列阶梯函数 $\{ g_n\(x\)\}$ 和 $\{ G_n\(x\)\}$, 满足下面的性质：$ g_n\(x\)lt.eq f\(x\)lt.eq G_n\(x\) $ #noindent;而且 $G_n\(x\)$ 从 $a$ 到 $b$ 的和与 $g_n\(x\)$ 从 $a$ 到 $b$ 的和趋于共同的极限 $display(integral)_a^b f\(x\)thin upright(d) x$. 令 $ R_n & = \{ a lt.eq x lt.eq b\,thick 0 lt.eq y lt.eq g_n\(x\)\}\
R'_n & = \{ a lt.eq x lt.eq b\,thick 0 lt.eq y lt.eq G_n\(x\)\} $ #noindent;它们都是由高高低低的狭长方形所组成的区域（图#ref-num(label("fig:chapter3_sec2_riemann_sum"));），则：$ R_n subset upright("曲边梯形区域 ") R subset R'_n $ #noindent;而且 $ R_n upright("的面积") = g_n\(x\)upright("从") a upright("到") b upright("的和") s_n\,#h(2em) R'_n upright("的面积") = G_n\(x\)upright("从") a upright("到") b upright("的和") S_n $ #noindent;即有 $ s_n < upright("曲边梯形区域") R upright("的面积") A < S_n $ #noindent;由定积分定义有：$ lim_(n arrow.r oo) s_n = lim_(n arrow.r oo) S_n = display(integral)_a^b f\(x\)thin upright(d) x $ #noindent;又曲边梯形面积 $A\(f\,thick\[a\,b\]\)$ 也是夹逼在 $s_n$ 和 $S_n$ 中间的实数，所以 $ A\(f\,thick\[a\,b\]\)= display(integral)_a^b f\(x\)thin upright(d) x $

]
#exercise[
+ 求 $display(integral)_(- 2)^1 e^x thin upright(d) x$.

  提示：$limits(lim)_(Delta x arrow.r 0) frac(e^(Delta x) - 1, Delta x) = 1$.

+ 求在 $x = 0$ 与 $x = pi$ 间正弦曲线 $y = sin x$ 与 $O x$ 轴所包的面积．

]
=== 定积分的基本性质
为简单起见，我们约定以下被积函数在积分区间上连续并且可以分段单调，即 $f\(x\)$ 是在 $\[a\,b\]$ 上连续并且只有有限个极大值和极小值的函数．

#blk[性质1][
若 $a < b < c$⁠，那么，$ integral_a^b f\(x\)thin upright(d) x + integral_b^c f\(x\)thin upright(d) x = integral_a^c f\(x\)thin upright(d) x $

]
#proof[
因为 $display(integral)_a^b f\(x\)thin upright(d) x$ 存在，故对于在 $\[a\,b\]$ 上的 $f\(x\)$, 存在一组上、下夹逼函数列 $\{ g_n\(x\)\}$ 和 $\{ G_n\(x\)\}$, 使得 $ g_n\(x\)lt.eq f\(x\)lt.eq G_n\(x\)\,#h(2em) x in\[a\,b\] $ #noindent;且相应的阶梯函数在 $\[a\,b\]$ 上的和 $s_n$ 与 $S_n$ 适合#numbered-eq($ s_n < integral_a^b f\(x\)thin upright(d) x < S_n\,#h(2em) S_n - s_n arrow.r 0 $);#noindent;对于在 $\[b\,c\]$ 上的 $f\(x\)$, 同样得到 $ macron(g)_n\(x\)lt.eq f\(x\)lt.eq macron(G)_n\(x\)\,#h(2em) x in\[b\,c\] $ #noindent;且#numbered-eq($ macron(s)_n < integral_b^c f\(x\)thin upright(d) x < macron(S)_n\,#h(2em) macron(S)_n - macron(s)_n arrow.r 0 $);#noindent; $\(3.4\)+\(3.5\)$ 得到#numbered-eq($ s_n + macron(s)_n < integral_a^b f\(x\)thin upright(d) x + integral_b^c f\(x\)thin upright(d) x < S_n + macron(S)_n $);

另一方面，对于函数 $f\(x\)thick\(a lt.eq x lt.eq c\)$ 存在下面一组阶梯函数列：$ tilde(g)_n\(x\)= display(cases(g_n\(x\)\, & quad a lt.eq x < b, max (g_n \( b \) \, macron(g)_n \( b \))\, & quad x = b, macron(g)_n\(x\)\, & quad b < x lt.eq c))\
tilde(G)_n\(x\)= display(cases(G_n\(x\)\, & quad a lt.eq x < b, min (G_n \( b \) \, macron(G)_n \( b \))\, & quad x = b, macron(G)_n\(x\)\, & quad b < x lt.eq c)) $

由性质2，阶梯函数列 $tilde(g)_n\(x\)$ 与 $tilde(G)_n\(x\)$ 的从 $a$ 到 $c$ 的和分别是 $s_n + macron(s)_n$ 和 $S_n + macron(S)_n$⁠．因为 $tilde(g)_n\(x\)$ 与 $tilde(G)_n\(x\)$ 满足条件：

+ $tilde(g)_n\(x\)lt.eq f\(x\)lt.eq tilde(G)_n\(x\)\,quad a lt.eq x lt.eq c$

+ #h(0pt)
  $ lim_(n arrow.r oo) [\( S_n + macron(S)_n \) - \( s_n + macron(s)_n \)] & = lim_(n arrow.r oo) [\( S_n - s_n \) + \( macron(S)_n - macron(s)_n \)]\
   & = lim_(n arrow.r oo)\(S_n - s_n\)+ lim_(n arrow.r oo)\(macron(S)_n - macron(s)_n\)= 0 $

#noindent;所以根据定积分定义得到 $ lim_(n arrow.r oo)\(S_n + macron(S)_n\)= lim_(n arrow.r oo)\(s_n + macron(s)_n\)= integral_a^c f\(x\)thin upright(d) x $

因为 $display(integral)_a^c f\(x\)thin upright(d) x$ 与 $display(integral)_a^b f\(x\)thin upright(d) x + display(integral)_b^c f\(x\)thin upright(d) x$ 都是被 $s_n + macron(s)_n$ 与 $S_n + macron(S)_n$ 所夹逼的唯一实数，所以 $ display(integral)_a^c f\(x\)thin upright(d) x = display(integral)_a^b f\(x\)thin upright(d) x + display(integral)_b^c f\(x\)thin upright(d) x $

]
#blk[性质2][
若 $f\(x\)= f_1\(x\)+ f_2\(x\)$⁠，则：$ display(integral)_a^b f\(x\)thin upright(d) x = display(integral)_a^b f_1\(x\)thin upright(d) x + display(integral)_a^b f_2\(x\)thin upright(d) x $

]
#proof[
设 $\{ g_n\(x\)\}$ 与 $\{ G_n\(x\)\}$ 是 $f_1\(x\)$ 在 $\[a\,b\]$ 上的上、下夹逼阶梯函数列，又 $\{ macron(g)_n\(x\)\}$ 与 $\{ macron(G)_n\(x\)\}$ 是 $f_2\(x\)$ 在 $\[a\,b\]$ 上的上、下夹逼阶梯函数列．$s_n\,S_n\,macron(s)_n\,macron(S)_n$ 是相应的阶梯函数从 $a$ 到 $b$ 的和．于是由 $display(integral)_a^b f_1\(x\)thin upright(d) x$ 和 $display(integral)_a^b f_2\(x\)thin upright(d) x$ 的存在，得：

#numbered-align(($g_n\(x\)lt.eq f_1\(x\)lt.eq G_n\(x\)\,#h(2em) a lt.eq x lt.eq b$, $$, true), ($macron(g)_n\(x\)lt.eq f_2\(x\)lt.eq macron(G)_n\(x\)\,#h(2em) a lt.eq x lt.eq b$, $$, true));

#noindent;并且

#numbered-align(($s_n < display(integral)_a^b f_1\(x\)thin upright(d) x < S_n\,quad upright("且 ") S_n - s_n arrow.r 0$, $$, true), ($macron(s)_n < display(integral)_a^b f_2\(x\)thin upright(d) x < macron(S)_n\,quad upright("且 ") macron(S)_n - macron(s)_n arrow.r 0$, $$, true));

#noindent;由 $\(3.9\)+\(3.10\)$⁠，得到#numbered-eq($ s_n + macron(s)_n < display(integral)_a^b f_1\(x\)thin upright(d) x + display(integral)_a^b f_2\(x\)thin upright(d) x < S_n + macron(S)_n $);#noindent;另一方面，由 $\(3.7\)+\(3.8\)$⁠，得到 $ g_n\(x\)+ macron(g)_n\(x\)lt.eq f_1\(x\)+ f_2\(x\)lt.eq G_n\(x\)+ macron(G)_n\(x\)\,#h(2em) a lt.eq x lt.eq b $ #noindent;而且，$g_n\(x\)+ macron(g)_n\(x\)$ 与 $G_n\(x\)+ macron(G)_n\(x\)$ 也是在 $\[a\,b\]$ 上的阶梯函数，我们要说明它们是 $f_1\(x\)+ f_2\(x\)$ 在 $\[a\,b\]$ 上的一组夹逼阶梯函数列．

因为：$ g_n\(x\)+ macron(g)_n\(x\)upright("从") a upright("到") b upright("的和") & = [g_n \( x \) upright("从") a upright("到") b upright("的和")] + [macron(g)_n \( x \) upright("从") a upright("到") b upright("的和")]\
 & = s_n + macron(s)_n\
G_n\(x\)+ macron(G)_n\(x\)upright("从") a upright("到") b upright("的和") & = [G_n \( x \) upright("从") a upright("到") b upright("的和")] + [macron(G)_n \( x \) upright("从") a upright("到") b upright("的和")]\
 & = S_n + macron(S)_n $ #noindent;而且#numbered-eq($ (S_n + macron(S)_n) - (s_n + macron(s)_n) = (S_n - s_n) + (macron(S)_n - macron(s)_n) arrow.r 0 $);#noindent;所以，由 $display(integral)_a^b class("opening", stretch(\(, size: #1.2em)) f_1\(x\)+ f_2\(x\)class("closing", stretch(\), size: #1.2em)) thin upright(d) x$ 的定义，得到#numbered-eq($ lim_(n arrow.r oo) (S_n + macron(S)_n) = lim_(n arrow.r oo) (s_n + macron(s)_n) = display(integral)_a^b class("opening", stretch(\(, size: #1.2em)) f_1\(x\)+ f_2\(x\)class("closing", stretch(\), size: #1.2em)) thin upright(d) x $);#noindent;由 (3.11) 和 (3.13)，$display(integral)_a^b class("opening", stretch(\(, size: #1.2em)) f_1\(x\)+ f_2\(x\)class("closing", stretch(\), size: #1.2em)) thin upright(d) x$ 与 $display(integral)_a^b f_1\(x\)thin upright(d) x + display(integral)_a^b f_2\(x\)thin upright(d) x$ 是被 $s_n + macron(s)_n$ 与 $S_n + macron(S)_n$ 所夹逼的唯一实数，所以 $ display(integral)_a^b class("opening", stretch(\(, size: #1.2em)) f_1\(x\)+ f_2\(x\)class("closing", stretch(\), size: #1.2em)) thin upright(d) x = display(integral)_a^b f_1\(x\)thin upright(d) x + display(integral)_a^b f_2\(x\)thin upright(d) x $

]
#blk[性质3][
$ display(integral)_a^b k f\(x\)thin upright(d) x = k display(integral)_a^b f\(x\)thin upright(d) x $

]
此法则的证明大致和性质2的证明相同，即当 $\{ g_n\(x\)\}$ 和 $\{ G_n\(x\)\}$ 上、下夹逼 $f\(x\)$ 时，那么在 $k > 0$ 的情形，$\{ k g_n\(x\)\}$ 和 $\{ k G_n\(x\)\}$ 上、下夹逼 $k f\(x\)$\; 在 $k < 0$ 的情形，$\{ k G_n\(x\)\}$ 和 $\{ k g_n\(x\)\}$ 上、下夹逼 $k f\(x\)$. 我们把证明的过程留给读者去写．

#blk[性质4][
若 $m lt.eq f\(x\)lt.eq M$, $a lt.eq x lt.eq b$⁠，那么 $ m\(b - a\)lt.eq display(integral)_a^b f\(x\)thin upright(d) x lt.eq M\(b - a\) $

]
#proof[
设 $\{ g_n\(x\)\}$ 与 $\{ G_n\(x\)\}$ 是 $f\(x\)$ 在 $\[a\,b\]$ 上的夹逼阶梯函数列，$s_n$ 与 $S_n$ 是相应的阶梯函数在 $\[a\,b\]$ 上的和，根据积分的定义，有 $ lim_(n arrow.r oo) s_n = lim_(n arrow.r oo) S_n = integral_a^b f\(x\)thin upright(d) x $ #noindent;换言之，任给一个正数 $epsilon$⁠，存在自然数 $N$⁠，使得当 $n > N$ 时，有#numbered-eq($ S_n < integral_a^b f\(x\)thin upright(d) x + epsilon $);#noindent;成立．

又由于 $G_n\(x\)gt.eq f\(x\)gt.eq m\,quad x in\[a\,b\]$⁠，根据性质1，得到：#numbered-eq($ S_n gt.eq m\(b - a\) $);#noindent;所以，当 $n > N$ 时，由 (3.14) 和 (3.15)，有 $ m\(b - a\)lt.eq S_n < integral_a^b f\(x\)thin upright(d) x + epsilon $ #noindent;即#numbered-eq($ m\(b - a\)< integral_a^b f\(x\)thin upright(d) x + epsilon $);#noindent;成立．

因为这个不等式 (3.16) 对于每个正数 $epsilon$ 都成立，所以 $ m\(b - a\)lt.eq integral_a^b f\(x\)thin upright(d) x $ #noindent;同样证明，得到 $ M\(b - a\)gt.eq integral_a^b f\(x\)thin upright(d) x $ #noindent;因此 $ m\(b - a\)lt.eq integral_a^b f\(x\)thin upright(d) x lt.eq M\(b - a\) $

]
#figure([#fig("6-16");

  ],
  caption: [
  ]
)
<fig:chapter3_sec2_y-3d-f-28-x-29-_bounded>

从几何图形来看，以曲线 $y = f\(x\)$ 为一边而以线段 $\[a\,b\]$ 为底边的曲边梯形界于以 $\[a\,b\]$ 为底边，高分别等于 $m$ 和 $M$ 的两个矩形之内，故曲边梯形的面积 $display(integral)_a^b f\(x\)thin upright(d) x$ 在两个矩形面积 $m\(b - a\)$ 和 $M\(b - a\)$ 之间（图#ref-num(label("fig:chapter3_sec2_y-3d-f-28-x-29-_bounded"));）．

这个性质是说分段单调的连续函数 $f\(x\)$ 在区间 $\[a\,b\]$ 上的定积分是有界的．

#blk[性质5][
如果 $f\(x\)lt.eq phi\(x\)\,thick a lt.eq x lt.eq b$⁠，那么：$ integral_a^b f\(x\)thin upright(d) x lt.eq integral_a^b phi\(x\)thin upright(d) x $

]
#proof[
设 $\{ g_n\(x\)\}$ 与 $\{ G_n\(x\)\}$ 是 $f\(x\)$ 在 $\[a\,b\]$ 上的夹逼阶梯函数列，又 $\{ macron(g)_n\(x\)\}$ 与 $\{ macron(G)_n\(x\)\}$ 是 $phi\(x\)$ 在 $\[a\,b\]$ 上的夹逼阶梯函数列，又 $s_n\,S_n\,macron(s)_n\,macron(S)_n$ 是相应的阶梯函数从 $a$ 到 $b$ 的和．于是根据定积分的定义，有：$ s_n < integral_a^b f\(x\)thin upright(d) x < S_n\,#h(2em) macron(s)_n < integral_a^b phi\(x\)thin upright(d) x < macron(S)_n $ #noindent;当 $n arrow.r oo$ 时，得到：$ lim_(n arrow.r oo) S_n = lim_(n arrow.r oo) s_n = integral_a^b f\(x\)thin upright(d) x\
lim_(n arrow.r oo) macron(S)_n = lim_(n arrow.r oo) macron(s)_n = integral_a^b phi\(x\)thin upright(d) x $ #noindent;换言之，任给正数 $epsilon$⁠，存在 $N_1$⁠，使得当 $n > N_1$ 时，有 $ s_n > integral_a^b f\(x\)thin upright(d) x - epsilon / 2 $

当 $n > N_2$ 时，有 $ macron(S)_n < integral_a^b phi\(x\)thin upright(d) x + epsilon / 2 $

因为 $macron(G)_n\(x\)> phi\(x\)> f\(x\)> g_n\(x\)\,quad x in\[a\,b\]$⁠，根据性质1，得到：$macron(S)_n gt.eq s_n$.

所以，当 $n > max\(N_1\,N_2\)$ 时，有 $ integral_a^b f\(x\)thin upright(d) x < s_n + epsilon / 2 < macron(S)_n + epsilon / 2 < integral_a^b phi\(x\)thin upright(d) x + epsilon $ #noindent;因为这个不等式对于每个正数 $epsilon$ 都成立，所以必然有 $ integral_a^b f\(x\)thin upright(d) x lt.eq integral_a^b phi\(x\)thin upright(d) x $

]
#blk[性质6：定积分中值定理][
设函数 $f\(x\)$ 在闭区间 $\[a\,b\]$ 上分段单调连续，又 $m = f\(c\)$, $M = f\(d\)$ 分别是 $f\(x\)$ 在 $\[a\,b\]$ 上的最小值和最大值，则在 $\[a\,b\]$ 上至少存在一点 $xi$, 使得下面的等式成立：$ integral_a^b f\(x\)thin upright(d) x = f\(xi\)\(b - a\) $

]
#proof[
因为 $m lt.eq f\(x\)lt.eq M\,quad x in\[a\,b\]$, 由性质4, 即得 $ m\(b - a\)lt.eq integral_a^b f\(x\)thin upright(d) x lt.eq M\(b - a\) $ #noindent;上面不等式的两端各除以 $\(b - a\)$, 得 $ f\(c\)= m lt.eq frac(integral_a^b f\(x\)thin upright(d) x, b - a) lt.eq M = f\(d\) $ #noindent;因为 $f\(x\)$ 在 $\[a\,b\]$ 上连续，再由连续函数的中间值定理，必存在一个 $xi in\(c\,d\)$, 使得 $ f\(xi\)= frac(1, b - a) integral_a^b f\(x\)thin upright(d) x $ #noindent;两边再乘以 $\(b - a\)$⁠，得 $ integral_a^b f\(x\)thin upright(d) x = f\(xi\)\(b - a\) $ #noindent;这就是我们所要证明的．

]
这个公式的几何意义是：以线段 $\[a\,b\]$ 为底边，以曲线 $y = f\(x\)$ 为曲边的曲边梯形，它的面积等于同一底边而高为 $f\(xi\)$ 的一个矩形的面积（图#ref-num(label("fig:chapter3_sec2_integral_mean_value"));）．因此，$f\(xi\)$ 称为曲边梯形的平均高度．

我们也称 $ f\(xi\)= frac(1, b - a) integral_a^b f\(x\)thin upright(d) x $ #noindent;为 $f\(x\)$ 在 $\[a\,b\]$ 上的平均值．

#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, [#figure([#fig("6-17");], caption: [])#label("fig:chapter3_sec2_integral_mean_value")], [#figure([#fig("6-18");], caption: [])#label("fig:chapter3_sec2_example3.7")])));

#example[
求 $display(integral)_2^4\(2 x - x^2\)thin upright(d) x$.

]
#solution[
根据本节的定积分计算法则得：$ display(integral)_2^4\(2 x - x^2\)thin upright(d) x & = display(integral)_2^4 2 x thin upright(d) x + display(integral)_2^4\(- x^2\)thin upright(d) x\
 & = 2 display(integral)_2^4 x thin upright(d) x - display(integral)_2^4 x^2 thin upright(d) x $ #noindent;利用例3.4的计算结果，得 $ display(integral)_2^4 x thin upright(d) x = frac(4^2 - 2^2, 2) = 6\,#h(2em) display(integral)_2^4 x^2 thin upright(d) x = frac(4^3 - 2^3, 3) = 18 2 / 3 $ #noindent;因此 $ display(integral)_2^4\(2 x - x^2\)thin upright(d) x = 2 times 6 - 18 2 / 3 = - 6 2 / 3 $ #noindent;它的几何意义是图#ref-num(label("fig:chapter3_sec2_example3.7"));中阴影区域的有号面积．

]
#example[
设 $f\(x\)= display(cases(x^2\, & quad 0 lt.eq x lt.eq 1, 1\, & quad 1 < x lt.eq 2))$, 求 $f\(x\)$ 在 $\[0\,2\]$ 上的平均值.

]
#solution[
由平均值定义，再利用性质1，有 $ f\(xi\) & = frac(1, b - a) integral_a^b f\(x\)thin upright(d) x = 1 / 2 integral_0^2 f\(x\)thin upright(d) x\
 & = 1 / 2 [integral_0^1 f \( x \) thin upright(d) x + integral_1^2 f \( x \) thin upright(d) x]\
 & = 1 / 2 [integral_0^1 x^2 thin upright(d) x + integral_1^2 1 thin upright(d) x]\
 & = 1 / 2 [1 / 3 + 1] = 2 / 3 $

]
#exercise[
+ 利用以前定积分的结果和定积分的性质，计算下列定积分：

  + $display(integral)_(- 1)^3\(2 x^2 - 4 x\)thin upright(d) x$

  + 若 $f\(x\)= display(cases(x\, & quad 0 lt.eq x < 1, x - 2\, & quad 1 lt.eq x lt.eq 2))$⁠，则 $display(integral)_0^2 f\(x\)thin upright(d) x = ?$

  + 若 $f\(x\)= display(cases(x\, & quad 0 lt.eq x lt.eq 1, x - 2\, & quad 1 < x lt.eq 2))$⁠，则 $display(integral)_0^2 f\(x\)thin upright(d) x = ?$

  + 若 $g\(t\)= 2 t^2 +\|t\|- 1\,thick - 1 lt.eq t lt.eq 1$⁠，则 $display(integral)_(- 1)^1 g\(t\)thin upright(d) t = ?$

+ 将图中阴影部分的面积用定积分表示．

+ 设 $ell\(t\)= m t + b$,（$m\,b$ 是常数），$t in\[c\,d\]$⁠，

  求证：$display(integral)_c^d\(m t + b\)thin upright(d) t = frac(ell\(c\)+ ell\(d\), 2)\(d - c\)$

+ 证明：

  + 若 $0 < x < 10$⁠，则 $1 / 1016 lt.eq frac(1, x^3 + 16) lt.eq 1 / 16$

  + $5 / 508 lt.eq display(integral)_0^10 frac(1, x^3 + 16) thin upright(d) x lt.eq 5 / 8$

]
#fig-center[
#fig("6-19");

#subcap[
第2题

]
]
#heading(level: 3, numbering: none, outlined: false)[习题3.2]
+ #block(sticky: true)[计算下列定积分：]

  #cols(3)[
  + $display(integral)_4^1\|x\|thin upright(d) x$

  + $display(integral)_4^2\|x\|thin upright(d) x$

  + $display(integral)_1^4\|x\|thin upright(d) x$

  ]

+ 求 $display(integral)_a^b\|x\|thin upright(d) x$.

  提示：分 $a < b < 0$, $a < 0 < b$, $0 < a < b$ 三种情况讨论．

+ 证明：

  + 若 $pi / 4 lt.eq x lt.eq pi / 2$⁠，则 $2 / pi lt.eq frac(sin x, x) lt.eq frac(2 sqrt(2), pi)$

  + $1 / 2 lt.eq display(integral)_(tfrac(pi, 4))^(tfrac(pi, 2)) frac(sin x, x) thin upright(d) x lt.eq sqrt(2) / 2$

+ 已知作用在作直线运动的质点上的力是 $F = s^2 + 1$, 试求从距离1到10之间所作的功．

+ 求 $y = display(cases(A sin frac(2 pi t, T)\, & quad 0 lt.eq t lt.eq T / 2, 0\, & quad T / 2 lt.eq t lt.eq T))$ 在 $\[0\,T\]$ 上的平均值．
