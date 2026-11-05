// 由 typst/tools/tex2typ.py 从 math6/5.tex 转换而来，已人工校对的部分以本文件为准。
#import "../common/template.typ": *
#import "figs.typ": fig

= 变率和微商
从本章起，我们开始学习单变量的微积分学的基本概念和基础理论．

微积分学是研究变量的数学，变量之间的关系就是函数，因此，函数是微积分学研究的主要对象．

在函数的基本性质中，有两个最基本、最重要的概念－变率与求和，为了解决求函数的变率与求函数 $f$ 在 $\[a\,b\]$ 上的和的问题就相应地产生微分与积分运算，而这两种运算之间，也存在着一种自然的互逆关系，在本章中，我们由函数的变率问题引出函数的微商（导数）概念，并给出初等函数的一套求导法则，在下一章中，我们揭示微分运算与积分运算的互逆关系，这就是微积分学的基本定理．

总起来说，微分反映了函数的局部性质，或在某个点附近的性质；积分则反映了函数的整体性质，或某个区间的性质；函数的局部性质与整体性质之间的有机联系，恰恰反映了微分运算与积分运算之间的互逆关系．

== 微商（导数）的定义
函数关系 $y = f\(x\)$ 就是确定变量 $y$ 如何随着变量 $x$ 的变动而变动的关系，对于给定的函数 $y = f\(x\)$, 变量 $y$ 在变量 $x$ 的不同点附近的变动情况是不尽相同的，这就是说，在变量 $x$ 的某个值 $x_1$ 处，当 $x_1$ 略加变动时，相应的 $y$ 的变动可能相当剧烈（急增，或急减）；而在变量 $x$ 的另一个值 $x_2$ 处，$y$ 的变动就可能较为迟缓，但是，用这样的语言来表达函数在某一点处的变率是不精确的，我们需要用“数量”来确切地表达这个意思，这就是函数在某点（或某时刻）的变率的问题，简称变率．

=== 直线函数的变率
一次函数 $f\(x\)= k x + b$ 是一种最简单的函数，它的函数图象是一条斜率等于 $k$ 的直线，如图2.1所示．

#figure([#fig("5-01");

  ],
  caption: [
  ]
)

设 $x_1$, $f\(x_1\)$ 和 $x$, $f\(x\)$ 分别是直线上点 $P_1$ 和 $P$ 的坐标，为了反映函数变化快慢的问题，无论 $x < x_1$ 还是 $x > x_1$⁠，自然地考虑在点 $x_1$ 邻近，函数与自变量的相应的改变量的比：$ frac(f\(x\)- f\(x_1\), x - x_1) = frac(\(k x + b\)-\(k x_1 + b\), x - x_1) = k = tan theta $ #noindent;上面的表达式称为函数的#strong[差商]，它表示函数在区间 $\[x_1\,x\]$ 或 $\[x\,x_1\]$ 上对于自变量 $x$ 的#strong[平均变化率]．由于 $k$ 是不随变量 $x$ 变动而变动的常数，因此，一次函数在自变量的任何一个区间内的平均变化率都是常数．

如果让自变量的变化区间的长度无限地缩短，也就是让 $x$ 无限地接近于 $x_1$ 时，平均变化率所趋向的极限 $ lim_(x arrow.r x_1) frac(f\(x\)- f\(x_1\), x - x_1) = k $ #noindent;就表达了函数 $f\(x\)$ 在 $x = x_1$ 处的变率．因此，一次函数 $f\(x\)= k x + b$ 在变量 $x$ 的每个值处的变率都是一样的．我们可以这样说，一次函数就是在其各点的变率恒为常数 $k$ 的函数．

=== 平滑曲线的切线与变率
一般的函数 $y = f\(x\)$ 的图象通常不是直线，由于函数和它的图象的多样性，为了讨论的方便起见，我们先把讨论的范围限制在“平滑”的曲线上，常用的函数 $y = f\(x\)$ 的图象往往是“平滑的”，平滑性的直观内涵是：用愈高倍的显微镜去观察曲线的微段，就愈像直线段，比较明确的几何说法是：一条曲线在 $P$ 点的平滑性就是存在唯一的一条过 $P$ 点的切线，它无限地逼近曲线在 $P$ 点邻近的微段，于是，当 $y = f\(x\)$ 的图象 $C$ 在 $P$ 点存在唯一的一条切线时，我们就说曲线 $C$ 在 $P$ 点平滑，而 $P$ 点叫做曲线的平滑点，一条在每点都平滑的曲线叫做平滑的曲线，一个函数的图象是平滑曲线时，我们就称这种函数为平滑函数．

同学可能会问这样一个问题：在曲线的点 $P$ 存在唯一的一条切线的含义是什么？因为迄今我们对于一般的曲线的切线还未下过定义呢！

我们从图2.2和2.3注意到不能把切线定义为与曲线只有一个交点的直线．这样的定义限制得既太紧同时又太松．因为，照此定义，图2.2所示的直线就不是过曲线上 $P$ 点的切线了，实际上，尽管图2.2的直线与曲线还有一个交点 $Q$, 但它在曲线 $P$ 点邻近却与曲线密合，故仍应该是过曲线 $P$ 点的切线；又图2.3表明过抛物线上任何一点 $P$ 与 $y$ 轴平行的直线虽然与抛物线只有一个交点，但它的其余部分却远离 $P$ 点邻近的弧，故它不应该是抛物线的切线，定义切线的可行途径是从割线开始，并应用极限的概念．

#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("5-02");], caption: []), figure([#fig("5-03");], caption: []))));

如图#ref-num(label("fig:PQ_tangent"));所示，取曲线 $y = f\(x\)$ 上点 $P$ 附近的另一点 $Q$, 通过这两点画一条直线，这直线叫做过曲线上 $P$ 点的割线，让 $Q$ 点沿曲线向点 $P$ 移动，这条割线将达到极限位置，此极限位置与 $Q$ 点从哪一侧趋向于 $P$ 是无关的，我们称这个割线的极限位置为过曲线上 $P$ 点的切线．

#figure([#fig("5-04");

  ],
  caption: [
  ]
)
<fig:PQ_tangent>

割线的这种极限位置的存在性这一假设，与曲线在点 $P$ 具有唯一的一条切线或确定的方向的假设是等价的．

现在我们要对曲线 $y = f\(x\)$ 用解析式子把割线的这种极限位置存在的过程表示出来．设 $alpha$ 是割线 $P Q$ 同正 $x$ 轴构成的夹角，$alpha_1$ 是过点 $P$ 点的切线同正 $x$ 轴构成的夹角，于是 $ lim_(Q arrow.r P) alpha = alpha_1 $ #noindent;设 $x_1\,y_1$ 和 $x\,y$ 分别是点 $P$ 和 $Q$ 的坐标，这时，我们立即得到 $ tan alpha = frac(y - y_1, x - x_1) = frac(f\(x\)- f\(x_1\), x - x_1) $ #noindent;因此，上述求极限的过程（不考虑垂直切线 $alpha_1 = pi / 2$ 的情况）可由下式来表示：$ lim_(x arrow.r x_1) frac(f\(x\)- f\(x_1\), x - x_1) = lim_(alpha arrow.r alpha_1) tan alpha = tan alpha_1 $ #noindent;这就是说过曲线 $y = f\(x\)$ 上 $P\(x_1\,y_1\)$ 点的切线的斜率等于 $y = f\(x\)$ 的差商当 $x arrow.r x_1$ 时的极限．

#example[
求抛物线 $y = a x^2 + b x + c$ 在 $x_0$ 处的切线的斜率．

]
#solution[
依题意 $\(x_0\,f\(x_0\)= a x_0^2 + b x_0 + c\)$ 在抛物线上，并设 $\(x_0 + h\,f\(x_0 + h\)\)$ 是抛物线上点 $\(x_0\,f\(x_0\)\)$ 的附近的一点，我们有 $  & #h(2em) lim_(h arrow.r 0) frac(f\(x_0 + h\)- f\(x_0\), \(x_0 + h\)- x_0)\
 & = lim_(h arrow.r 0) frac(\[a\(x_0 + h\)^2 + b\(x_0 + h\)+ c\]-\[a x_0^2 + b x_0 + c\], h)\
 & = lim_(h arrow.r 0) frac(\(2 a x_0 + b\)h + a h^2, h)\
 & = lim_(h arrow.r 0)\[\(2 a x_0 + b\)+ a h\]= 2 a x_0 + b $ #noindent;所以抛物线 $y = a x^2 + b x + c$ 在 $x_0$ 处的切线的斜率是 $2 a x_0 + b$.

]
#example[
一质点沿一直线在 $t$ 秒内移动的距离是 $s = s\(t\)= t^2 + 4 t$⁠．

求：质点的初速度；在两秒末的速度；前两秒内的平均速度．

]
#analyze[
如果质点从起点开始所走的距离 $s$ 是时间 $t$ 的线性函数，则由2.1知道该质点在每一时刻的速度都是常数，它的大小由平均速度来确定，即等于一次函数的斜率，此时我们说该质点作匀速运动，但是，如果运动不再是匀速的，即质点的速度每时每刻都是变的，那么我们将时刻 $t$ 的速度（也叫做瞬时速度）理解成什么呢？为了回答这个问题，我们考察差商 $ frac(Delta s, Delta t) = frac(s\(t\)- s\(t_0\), t - t_0) $ #noindent;或者写成$ frac(s\(t_0 + Delta t\)- s\(t_0\), Delta t) $ #noindent;这个差商称为在 $t_0$ 和 $t_0 + Delta t$ 之间的这段时间间隔上的质点的平均速度，对照着 $s = s\(t\)= t^2 + 4 t$ 的图象来看，这个平均速度也就是过曲线上的 $P\(t_0\,s\(t_0\)\)$ 点及它邻近一点 $Q\(t_0 + Delta t\,s\(t_0 + Delta t\)\)$ 的割线的斜率（图2.5）．当 $Delta t$ 很小时，可以认为，从时刻 $t_0$ 到 $t_0 + Delta t$ 这段时间内，速度来不及有很大变化，可以近似地看成匀速运动，因而这段时间内的平均速度就可以看成时刻 $t_0$ 的瞬时速度的近似值．

#figure([#fig("5-05");

  ],
  caption: [
  ]
)

显然，从时刻 $t_0$ 到时刻 $t_0 + Delta t$, 质点走过的路程为 $ Delta s & = s\(t_0 + Delta t\)- s\(t_0\)\
 & =\(t_0 + Delta t\)^2 + 4\(t_0 + Delta t\)-\(t_0^2 + 4 t_0\)\
 & =\(2 t_0 + 4\)Delta t +\(Delta t\)^2 $ #noindent;所以这段时间内的平均速度为 $ frac(Delta s, Delta t) & = frac(s\(t_0 + Delta t\)- s\(t_0\), Delta t)\
 & = frac(\(2 t_0 + 4\)Delta t +\(Delta t\)^2, Delta t)\
 & =\(2 t_0 + 4\)+ Delta t $ #noindent;$Delta t$ 越小，这个平均速度就越接近时刻 $t_0$ 的瞬时速度 $v_0$, 我们自然令 $Delta t arrow.r 0$, 求差商的极限值，得到 $ lim_(Delta t arrow.r 0) frac(s\(t_0 + Delta t\)- s\(t_0\), Delta t) & = lim_(Delta t arrow.r 0)\[\(2 t_0 + 4\)+ Delta t\]\
 & = 2 t_0 + 4 $

这样平均速度 $frac(s\(t_0 + Delta t\)- s\(t_0\), Delta t)$⁠，当 $Delta t arrow.r 0$ 时的极限值就表达了质点在时刻 $t_0$ 的瞬时速度，把它记作 $ s'\(t_0\)= lim_(Delta t arrow.r 0) frac(s\(t_0 + Delta t\)- s\(t_0\), Delta t) $

]
#solution[
+ 质点的初速度 $ s'\(0\)= 2 times 0 + 4 = 4\(upright("m")\/upright("s")\) $

+ 质点在两秒末的速度 $ s'\(2\)= 2 times 2 + 4 = 8\(upright("m")\/upright("s")\) $

+ #h(0pt)
  $ upright("质点在前两秒内的平均速度") = upright("在前两秒内所走距离") / upright("时间") = frac(2^2 + 4 times 2, 2) = 6\(upright("m")\/upright("s")\) $

]
从这个问题可以看出质点在 $t_0$ 时刻的瞬时速度 $s'\(t_0\)$ 的几何意义就是曲线 $s = s\(t\)$ 在 $P\(t_0\,s\(t_0\)\)$ 点的切线的斜率，所以函数在某点的变率有确定值与函数的图象在该点有唯一的一条切线是两个密切相关的概念．

=== 微商（导数）的定义
从上面所举的两个例子来看，问题来自不同的领域：

+ 求过曲线上一点的切线，

+ 求函数在某点的变率.

#noindent;但解决的方法却完全一样，就是计算函数的差商的极限，这种极限反映了自然界中很多不同现象在量方面的共性，因此有必要从这些具体问题中把它抽象出来加以研究，再反过来去解决这类具体问题．

#blk[定义][
设 $y = f\(x\)$ 是定义在闭区间 $\[a\,b\]$ 上的一个函数，$x_0 in\(a\,b\)$, 如果极限 $ lim_(Delta x arrow.r 0) frac(f\(x_0 + Delta x\)- f\(x_0\), Delta x) $ #noindent;存在，我们就说 $f\(x\)$ 在点 $x_0$ 处#strong[可微]，并称这极限为函数 $f\(x\)$ 在 $x_0$ 点的#strong[微商]（或导数），记为 $f'\(x_0\)$ 或 $frac(thin upright(d) y, thin upright(d) x) class("normal", stretch(|, size: #1.8em))_(x = x_0)$.

]
显然，$f'\(x_0\)$ 的值与点 $x_0$ 有关，当点 $x_0$ 在开区间 $\(a\,b\)$ 内变化时，$f'\(x_0\)$ 也将跟着变化，因此，如果函数 $f\(x\)$ 在开区间 $\(a\,b\)$ 内每点都可微（即存在有限导数），那么 $f'\(x\)$ 便是一个新的函数，称为 $f\(x\)$ 的#strong[导函数]．

求已知函数的导函数 $f'\(x\)$ 的运算，称为微商运算，计算过程如下：

+ 设 $Delta x$ 为自变量某个值 $x$ 的改变量：

+ 计算 $f\(x\)$ 在点 $x$ 的相应改变量 $ Delta y = f\(x + Delta x\)- f\(x\) $

+ 计算 $f\(x\)$ 在点 $x$ 的差商 $ frac(Delta y, Delta x) = frac(f\(x + Delta x\)- f\(x\), Delta x) $

+ 计算 $ lim_(Delta x arrow.r 0) frac(f\(x + Delta x\)- f\(x\), Delta x) = f'\(x\)= frac(thin upright(d) y, thin upright(d) x) $

应当注意，这里 $frac(thin upright(d) y, thin upright(d) x)$ 是一个独立的记号，它表示函数 $f\(x\)$ 在点 $x$ 的导数，不能把它当成一个分数来看待，必须把它看成一个整体．

从微商的定义可以看出：

+ 曲线在一点的切线的斜率，就是函数在这一点的变率（微商或导数）．

+ 微商所涉及的是函数的“局部”性质，也就是说，函数 $y = f\(x\)$ 在一点 $x_0$ 处是否可微只与函数 $y = f\(x\)$ 在 $x = x_0$ 处及其近旁的性质有关，而与其他地方无关．

+ 如果 $f\(x\)$ 在点 $x$ 可微，按照极限存在的条件，必须且只须 $ lim_(Delta x arrow.r 0^(+)) frac(f\(x + Delta x\)- f\(x\), Delta x)\,#h(2em) lim_(Delta x arrow.r 0^(-)) frac(f\(x + Delta x\)- f\(x\), Delta x) $ #noindent;同时存在而且相等．

  上面两式分别称为 $f\(x\)$ 在点 $x$ 的#strong[右导数]和#strong[左导数]，记为 $f'_(+)\(x\)$ 和 $f'_(-)\(x\)$.

#example[
今有一个正在膨胀的肥皂泡，

+ 求肥皂泡的体积对于半径的增大率，

+ 如果肥皂泡的半径每秒增大0.1寸，问当半径为2寸时，体积的增大率是多少？

]
#solution[
肥皂泡的体积 $V$ 与半径 $r$ 的函数关系是．$ V\(r\)= 4 / 3 pi r^3 $ #noindent;体积 $V\(r\)$ 对于半径 $r$ 的增大率，依导函数定义，就是 $V\(r\)$ 对于 $r$ 的导函数，故 $ V'\(r\) & = lim_(Delta r arrow.r 0) frac(V\(r + Delta r\)- V\(r\), Delta r)\
 & = lim_(Delta r arrow.r 0) frac(frac(4 pi, 3)\[\(r + Delta r\)^3 - r^3\], Delta r)\
 & = frac(4 pi, 3) lim_(Delta r arrow.r 0)\[3 r^2 + 3 r\(Delta r\)+\(Delta r\)^2\]\
 & = 4 pi r^2 $

因此，肥皂泡的体积 $V$ 对于半径 $r$ 的增大率是 $4 pi r^2$. 当 $r = 2$ 时，$ V'\(2\)= 4 pi dot.op 2^2 = 16 pi $ #noindent;上式表示在 $r = 2$ 时，肥皂泡体积对于半径的增大率是 $16 pi$, 它的含义也可以这样理解，体积增大的快慢在 $r = 2$ 时，是 $16 pi$ 倍于半径增大的快慢．

由于半径的增大率是每秒0.1寸，故体积在半径等于2时的增大率是 $ 16 pi times 0.1 = 1.6 pi\(upright("寸")^3\/upright("秒")\) $

]
#exercise[
+ 设 $y = 1 / x\,quad\(x eq.not 0\)$⁠，求

  + 当 $x$ 取改变量 $Delta x$ 后，函数改变量 $Delta y$ 的表达式；

  + 当 $x = 3$, $Delta x = - 1$ 时，$Delta y$ 的值；

  + 当 $x = 3$ 时，$frac(Delta y, Delta x)$ 的表达式和 $frac(thin upright(d) y, thin upright(d) x) class("normal", stretch(|, size: #1.8em))_(x = 3)$ 的值．

+ 设 $phi.alt\(x\)= 2 / x^2\,quad\(x eq.not 0\)$, 求

  + 当 $x = 1$, $Delta x = - 0.5$ 时，$Delta phi.alt\(x\)$ 的值；

  + 对于任何 $x thick\(x eq.not 0\)$, 在 $Delta x$ 的间隔内，$phi.alt\(x\)$ 的平均变率 $frac(Delta phi.alt, Delta x)$ 的表达式；

  + $phi.alt\(x\)$ 在任何点 $x thick\(x eq.not 0\)$ 处的瞬时变率 $phi.alt'\(x\)$.

+ 平均变化率 $frac(Delta y, Delta x) = frac(f\(x + Delta x\)- f\(x\), Delta x)$ 依赖于哪两个变量？在平均变化率取极限求瞬时变化率的过程中，$x$ 是变量还是常量？$Delta x$ 是变量还是常量？

+ 点 $P\(2\,8\)$ 在抛物线 $y = x^2 + 2 x$ 上，点 $Q$ 为抛物线上任何一点．

  + 求割线 $P Q$ 的斜率的表达式；

  + 当 $Q$ 点横坐标为 $2.1\,1.9\,2.002\,1.998\,2 + h$ 时，求割线斜率的值；

  + 求在 $P\(2\,8\)$ 点处，抛物线 $y = x^2 + 2 x$ 的切线方程和法线方程．

+ 求圆面积对于它的半径的变率，对于它的直径的变率．

+ 圆的半径的变率为2cm/s, 求圆面积在半径等于4cm时的变率．

]
=== 函数的可微性与连续性的关系
#blk[定理][
如果函数 $f\(x\)$ 在点 $x_0$ 可微，那么 $f\(x\)$ 在点 $x_0$ 处连续．

]
#proof[
设 $f\(x\)$ 在点 $x_0$ 处是可微的，也就是 $f\(x\)$ 在 $x_0$ 处有导数，则 $ f'\(x_0\)= lim_(x arrow.r x_0) frac(f\(x\)- f\(x_0\), x - x_0) $ #noindent;所以 $ lim_(x arrow.r x_0)\[f\(x\)- f\(x_0\)\] & = lim_(x arrow.r x_0) frac(f\(x\)- f\(x_0\), x - x_0)\(x - x_0\)\
 & = lim_(x arrow.r x_0) frac(f\(x\)- f\(x_0\), x - x_0) dot.op lim_(x arrow.r x_0)\(x - x_0\)\
 & = f'\(x_0\)dot.op 0 = 0 $ #noindent;因此，$f\(x\)$ 在点 $x_0$ 处是连续的．

]
上面的定理说明函数在其有导数的点一定连续，在其不连续的点一定没有导数．但是它的逆命题不一定成立，即连续的函数不一定有导数．前面我们曾指出一个函数可微的充分必要条件是它的左导数和右导数都存在而且相等，下面给出在某些点不可微的函数的例子．

#example[
求函数 $f\(x\)=\|x^2 - 1\|$ 的导函数的定义域．

]
#figure([#fig("5-06");

  ],
  caption: [
  ]
)
<fig:f-28-x-29--3d--7c-x-5e-2-1-7c->

#solution[
函数 $f\(x\)=\|x^2 - 1\|$ 是一个到处连续的函数，它的图象如图#ref-num(label("fig:f-28-x-29--3d--7c-x-5e-2-1-7c-"));所示．

去掉函数式中的绝对值的符号，$f\(x\)$ 便可以写成分段函数式：$ f\(x\)= display(cases(x^2 - 1\, & quad x lt.eq - 1 quad upright("或") quad x gt.eq 1, -\(x^2 - 1\)\, & quad - 1 lt.eq x lt.eq 1)) $ #noindent;所以 $ f'\(x\)= display(cases(2 x\, & quad x < - 1 quad upright("或") quad x > 1, - 2 x\, & quad - 1 < x < 1)) $ #noindent;但是当 $x = - 1$ 和1时，函数 $f\(x\)$ 的左导数和右导数不相等，即此时导数不存在．因为当 $x = - 1$ 时，函数 $f\(x\)$ 在 $- 1$ 点左邻域的表达式是 $ f\(x\)= x^2 - 1 $ #noindent;而在 $- 1$ 点右邻域的表达式是 $ f\(x\)= -\(x^2 - 1\) $ #noindent;所以 $f\(x\)$ 在 $x = - 1$ 点的左导数是 $ f'_(-)\(- 1\) & = lim_(Delta x arrow.r 0^(-)) frac(f\(- 1 + Delta x\)- f\(- 1\), Delta x)\
 & = lim_(Delta x arrow.r 0^(-)) frac(\[\(- 1 + Delta x\)^2 - 1\]- 0, Delta x)\
 & = lim_(Delta x arrow.r 0^(-))\(- 2 + Delta x\)= - 2 $ #noindent;$f\(x\)$ 在 $x = - 1$ 点的右导数是 $ f'_(+)\(- 1\) & = lim_(Delta x arrow.r 0^(+)) frac(f\(- 1 + Delta x\)- f\(- 1\), Delta x)\
 & = lim_(Delta x arrow.r 0^(+)) frac(-\[\(- 1 + Delta x\)^2 - 1\]- 0, Delta x)\
 & = lim_(Delta x arrow.r 0^(+))\(2 - Delta x\)= 2 $ #noindent;由于 $f'_(-)\(- 1\)eq.not f'_(+)\(- 1\)$, 所以我们说 $f\(x\)$ 在 $x = - 1$ 处的导数不存在，同样可得 $ - 2 = f'_(-)\(1\)eq.not f'_(+)\(1\)= 2 $ #noindent;故 $f\(x\)$ 在 $x = 1$ 处也不可微．

因此，$f\(x\)=\|x^2 - 1\|$ 的导函数的定义域是 $x eq.not plus.minus 1$ 的点的集合，它的函数值如下：$ f'\(x\)= display(cases(2 x\, & quad \|x\|> 1, - 2 x\, & quad \|x\|< 1)) $

]
对照图#ref-num(label("fig:f-28-x-29--3d--7c-x-5e-2-1-7c-"));来看，尽管函数 $f\(x\)=\|x^2 - 1\|$ 处处连续，但是在 $x = - 1$ 和1这两点，曲线的特征是当动点由左侧趋于定点1(或 $- 1$) 时，割线的极限位置存在；当动点由右侧趋于定点1(或 $- 1$) 时，割线的极限位置也存在，这两个极限位置分别叫1(或 $- 1$) 点的#strong[左、右切线]，并且它们之间的夹角不为#strong[平角]，点 $- 1$ 和1分别是曲线的一种#strong[角点]．

图#ref-num(label("fig:vertical_tangent"));的情形是曲线 $y = f\(x\)$ 在 $P\(x_0\,y_0\)$ 点连续并且在此点有平行于 $y$ 轴的切线．现在我们来讨论图#ref-num(label("fig:vertical_tangent"));中所示各函数在点 $x_0$ 处的导数：

#figure([#fig("5-07");

  ],
  caption: [
  ]
)
<fig:vertical_tangent>

图 (a) 表示的函数在点 $x_0$ 的邻近递增，因此过曲线上 $P\(x_0\,y_0\)$ 和 $Q\(x_0 + Delta x\,y_0 + Delta y\)$ 两点的割线，无论 $Q$ 点在 $P$ 点的哪一侧，$Delta x$ 与 $Delta y$ 都有相同正、负号，于是 $ frac(Delta y, Delta x) = frac(f\(x_0 + Delta x\)- f\(x_0\), Delta x) > 0 $ #noindent;而且当 $Delta x arrow.r 0$ 时，割线的倾斜角 $phi$（$0 degree lt.eq phi lt.eq 180 degree$⁠）便以 $pi\/2$ 为极限，从而 $ lim_(Delta x arrow.r 0) frac(f\(x_0 + Delta x\)- f\(x_0\), Delta x) = lim_(phi arrow.r tfrac(pi^(-), 2)) tan phi = + oo $ #noindent;可见 $f\(x\)$ 在点 $x_0$ 不可微（不存在有限导数），但是我们常常把这种情况：当 $Delta x arrow.r 0$ 时，$frac(Delta y, Delta x) arrow.r + oo$ 简略地叙述为函数 $f\(x\)$ 在 $x_0$ 的导数为正无穷大，记作 $f'\(x_0\)= + oo$⁠．

图 (b) 表示的函数 $f$ 在点 $x_0$ 的邻近递减，因此过曲线上 $P\(x_0\,y_0\)$ 和 $Q\(x_0 + Delta x\,y_0 + Delta y\)$ 两点的割线，无论 $Q$ 点在 $P$ 点的哪一侧，$Delta x$ 与 $Delta y$ 都有相反的正、负号，于是 $ frac(Delta y, Delta x) = frac(f\(x_0 + Delta x\)- f\(x_0\), Delta x) < 0 $ #noindent;而且当 $Delta x arrow.r 0$ 时，$phi arrow.r pi^(+) / 2$⁠，从而 $ lim_(Delta x arrow.r 0) frac(f\(x_0 + Delta x\)- f\(x_0\), Delta x) = lim_(phi arrow.r tfrac(pi^(+), 2)) tan phi = - oo $ #noindent;因此 $f\(x\)$ 在点 $x_0$ 处不可微，但是我们常常把这种情况叙述为函数 $f\(x\)$ 在 $x_0$ 处的导数为负无穷大，记作 $f'\(x_0\)= - oo$⁠．

图#ref-num(label("fig:vertical_tangent"));\(c) 表示的函数在点 $x_0$ 处连续，让 $x$ 由 $x_0$ 变动到 $x_0 + Delta x$⁠，于是由 $Delta x$ 所引起的相应的函数的改变量 $Delta y$ 的情形是：

- 当 $Delta x < 0$ 时，有 $Delta y < 0$⁠，从而 $frac(Delta y, Delta x) > 0$⁠；

- 当 $Delta x > 0$ 时，有 $Delta y < 0$⁠，从而 $frac(Delta y, Delta x) < 0$⁠．

#noindent;于是：

- 当 $Delta x arrow.r 0^(-)$ 时，$phi arrow.r pi^(-) / 2$⁠，从而 $frac(Delta y, Delta x) = tan phi arrow.r + oo$⁠；

- 当 $Delta x arrow.r 0^(+)$ 时，$phi arrow.r pi^(+) / 2$⁠，从而 $frac(Delta y, Delta x) = tan phi arrow.r - oo$⁠．

#noindent;因此 $f\(x\)$ 在点 $x_0$ 不可微，但是我们常把这种情况叙述为 $f\(x\)$ 在点 $x_0$ 的左导数 $f'_(-)\(x_0\)= + oo$, 而它的右导数为 $f'_(+)\(x_0\)= - oo$, 曲线在 $x_0$ 处由上升转为下降有一个尖点，它的切线垂直于 $x$ 轴．

图 (d) 表示的函数在点 $x_0$ 处连续，但是

- 当 $Delta x arrow.r 0^(-)$ 时，$frac(Delta y, Delta x) = tan phi arrow.r - oo$⁠；

- 当 $Delta x arrow.r 0^(+)$ 时，$frac(Delta y, Delta x) = tan phi arrow.r + oo$⁠．

#noindent;因此，$f\(x\)$ 在点 $x_0$ 不可微，我们常常把这种情况叙述为 $f'_(-)\(x_0\)= - oo$ 和 $f'_(+)\(x_0\)= + oo$, 点 $x_0$ 是曲线的一个尖点，它的切线垂直于 $x$ 轴．

#example[
设 $f\(x\)= display(cases(0\, & quad x = 0, x sin 1 / x\, & quad x eq.not 0))$

讨论它在0点的导数．

]
#solution[
在第一章2.1中，我们已经说明了 $ lim_(x arrow.r 0) x sin 1 / x = 0 = f\(0\) $ #noindent;因此，$f\(x\)$ 在点 $x = 0$ 连续，很明显 $f\(x\)$ 在其他各点处也都连续，所以说 $f\(x\)$ 是一个到处连续的函数，我们将说明它在原点不存在导数．

因为 $ frac(f\(0 + Delta x\)- f\(0\), Delta x) = frac(Delta x sin frac(1, Delta x), Delta x) = sin frac(1, Delta x) $ #noindent;而当 $Delta x arrow.r 0$ 时，$sin frac(1, Delta x)$ 没有极限，故 $f'\(0\)$ 不存在，就其几何意义来说，当动点沿着曲线 $y = x sin 1 / x$ 趋于原点 $O$ 时，割线 $O Q$ 不断地在 $- pi / 4 lt.eq theta lt.eq pi / 4$ 这个幅度之内摆动，而不趋于任何极限位置，即切线不存在（图#ref-num(label("fig:x-2a-sin-28-1-2f-x-29-"));）．

]
#figure([#fig("5-08");

  ],
  caption: [
  ]
)
<fig:x-2a-sin-28-1-2f-x-29->

通过以上的例子，我们知道函数的连续点未必是它的可以微分点．几种常见的不可微分点如例2.4的角点，平行于 $y$ 轴的切线的切点，特别是曲线上的尖点和在例2.5的曲线上的不存在割线的极限位置的点．

假如区间 $\[a\,b\]$ 上的函数 $f\(x\)$, 在开区间 $\(a\,b\)$ 中存在着导数 $f'\(x\)$, 并且 $f'_(+)\(a\)$ 和 $f'_(-)\(b\)$ 都存在，则称 $f\(x\)$ 在闭区间上可以微分（可导）．

#exercise[
+ #block(sticky: true)[说明下面函数在点 $x = 0$ 不可微：]

  #cols(2)[
  + $f\(x\)=\|x\|$

  + $f\(x\)= display(cases(x^2\, & quad x lt.eq 0, x\, & quad x gt.eq 0))$

  + $f\(x\)= root(3, x)$

  + $f\(x\)= sqrt(\|x\|)$

  ]

+ 说明函数 $f\(x\)= display(cases(x^2\, & quad x gt.eq 0, - x^2\, & quad x < 0))$ 处处可微．

+ #lead-list(none, 2)[
  + 假设 $g\(x\)= f\(x + c\)$. 从定义出发证明 $g'\(x\)= f'\(x + c\)$, 并绘图说明．

  + 设 $f$ 可微并有周期 $phi$, 证明 $f'$ 也是有周期的．
  ]

]
== 微商运算的基本法则
=== 几个基本函数的微商（导数）
==== 常数函数的导数恒等于0
#proof[
设 $f\(x\)= c$（$c$ 是常数），则根据常数函数的性质，由自变数 $x$ 的改变量 $Delta x$ 引起的相应的函数的改变量为：$ Delta y = f\(x + Delta x\)- f\(x\)= c - c = 0 $ #noindent;显然差商 $frac(Delta y, Delta x) = frac(0, Delta x) = 0$, 故 $ f'\(x\)= lim_(Delta x arrow.r 0) frac(Delta y, Delta x) = lim_(Delta x arrow.r 0) 0 = 0 $ #noindent;这个事实是明显的，因为当自变数 $x$ 有增、减时，函数值并无增、减，因此，它的变化率为零．

]
==== 一次函数（直线函数）的导数是常数
若 $f\(x\)= k x + b$, 则 $f'\(x\)= k$.（在1.1中已证）

==== 若 $f\(x\)= x^n$（$n$ 是正整数），则 $f'\(x\)= n x^(n - 1)$
#proof[
由自变量的改变量 $Delta x$ 引起的函数改变量为 $ Delta y = f\(x + Delta x\)- f\(x\)=\(x + Delta x\)^n - x^n $ #noindent;按牛顿二项式定理展开，得 $ Delta y & = x^n + n x^(n - 1) Delta x + frac(n\(n - 1\), 1 dot.op 2) x^(n - 2)\(Delta x\)^2 + dots.h.c + n x\(Delta x\)^(n - 1) +\(Delta x\)^n - x^n\
 & = n x^(n - 1) Delta x + frac(n\(n - 1\), 1 dot.op 2) x^(n - 2)\(Delta x\)^2 + dots.h.c + n x\(Delta x\)^(n - 1) +\(Delta x\)^n $ #noindent;其中差商 $ frac(Delta y, Delta x) = n x^(n - 1) + frac(n\(n - 1\), 1 dot.op 2) x^(n - 2) Delta x + dots.h.c + n x\(Delta x\)^(n - 2) +\(Delta x\)^(n - 1) $ #noindent;式中除第一项外，其余各项随 $Delta x arrow.r 0$ 而趋于0，因此：$ f'\(x\)= lim_(Delta x arrow.r 0) frac(Delta y, Delta x) = n x^(n - 1) $

]
==== 若 $f\(x\)= x^mu$ (其中 $mu$ 是任意实数，函数的定义域依赖于 $mu$), 则 $f'\(x\)= mu x^(mu - 1)$
#proof[
$ frac(Delta y, Delta x) = frac(\(x + Delta x\)^mu - x^mu, Delta x) = x^(mu - 1) dot.op frac((1 + frac(Delta x, x))^mu - 1, frac(Delta x, x)) $ #noindent;利用第一章2.2中已经算出的极限 $ lim_(x arrow.r 0) frac(\(1 + x\)^mu - 1, x) = mu $ #noindent;就得到 $ f'\(x\)= lim_(Delta x arrow.r 0) frac(Delta y, Delta x) = mu x^(mu - 1) $

]
特殊情形：

+ 若 $f\(x\)= 1 / x = x^(- 1)\,thick\(x eq.not 0\)$⁠，则 $f'\(x\)=\(- 1\)x^(- 2) = - 1 / x^2$

+ 若 $f\(x\)= sqrt(x) = x^(tfrac(1, 2))\,thick\(x gt.eq 0\)$⁠，则 $f'\(x\)= 1 / 2 x^(- tfrac(1, 2)) = frac(1, 2 sqrt(x))$

==== 若 $f\(x\)= log_a x thick\(0 < a eq.not 1\,thick 0 < x < + oo\)$⁠，则 $f'\(x\)= frac(log_a e, x)$
#proof[
$ frac(Delta y, Delta x) & = frac(log_a\(x + Delta x\)- log_a x, Delta x)\
 & = 1 / x dot.op frac(log_a (1 + frac(Delta x, x)), frac(Delta x, x))\
 & = 1 / x dot.op log_a (1 + frac(Delta x, x))^(tfrac(1, Delta x\/x)) $

利用极限 $limits(lim)_(t arrow.r 0)\(1 + t\)^(1\/t) = e$⁠，以及对数函数是连续函数，得到 $ f'\(x\) & = lim_(Delta x arrow.r 0) frac(Delta y, Delta x) = 1 / x lim_(tfrac(Delta x, x) arrow.r 0) log_a (1 + frac(Delta x, x))^(tfrac(1, Delta x\/x))\
 & = 1 / x log_a [lim_(tfrac(Delta x, x) arrow.r 0) (1 + frac(Delta x, x))^(tfrac(1, Delta x\/x))]\
 & = 1 / x log_a e = frac(log_a e, x) $

特别：当 $f\(x\)= ln x$ 时，$f'\(x\)= 1 / x$⁠．

]
上面的结果表明对数函数（$a > 1$ 时）的增大速度是与自变数的值成反比的，当自变数无限增大时，增大速度就保持正值而趋向于0. 由于自然对数的导数比较简单，所以在理论研究中常常采用自然对数．

==== 若 $f\(x\)= a^x thick\(0 < a eq.not 1\,thick - oo < x < + oo\)$⁠，则 $f'\(x\)= a^x dot.op ln a$
#proof[
$ frac(Delta y, Delta x) = frac(a^(x + Delta x) - a^x, Delta x) = a^x dot.op frac(a^(Delta x) - 1, Delta x) $ #noindent;利用 $limits(lim)_(Delta x arrow.r 0) a^(Delta x) = 1$⁠，则可设 $a^(Delta x) = 1 + alpha$⁠，且当 $Delta x arrow.r 0$ 时，有 $alpha arrow.r 0$. 在此等式的两边取对数，得：$ Delta x = log_a\(1 + alpha\) $ #noindent;于是 $ frac(Delta y, Delta x) = a^x dot.op frac(alpha, log_a\(1 + alpha\)) = a^x dot.op frac(1, log_a\(1 + alpha\)^(1\/alpha)) $ #noindent;因此 $ f'\(x\) & = lim_(Delta x arrow.r 0) frac(Delta y, Delta x) = a^x dot.op frac(1, limits(lim)_(alpha arrow.r 0) log_a\(1 + alpha\)^(1\/alpha))\
 & = a^x dot.op frac(1, log_a [limits(lim)_(alpha arrow.r 0) \( 1 + alpha \)^(1\/alpha)])\
 & = a^x dot.op frac(1, log_a e) $ #noindent;又因为 $ln a = frac(1, log_a e)$⁠，所以 $ f'\(x\)= a^x dot.op ln a $

特别，若 $f\(x\)= e^x$⁠，则 $f'\(x\)= e^x$⁠．

]
这个事实表明指数函数（当 $a > 1$ 时）的增大速度与函数值成正比例，当底数为 $e$ 时，导数的结果特别简单．

==== 若 $f\(x\)= sin x$, 则 $f'\(x\)= cos x$
#proof[
$ frac(Delta y, Delta x) & = frac(sin\(x + Delta x\)- sin x, Delta x)\
 & = frac(2 cos (x + frac(Delta x, 2)) sin frac(Delta x, 2), Delta x)\
 & = cos (x + frac(Delta x, 2)) dot.op frac(sin frac(Delta x, 2), frac(Delta x, 2)) $ #noindent;因此 $ lim_(Delta x arrow.r 0) frac(Delta y, Delta x) & = lim_(Delta x arrow.r 0) [cos (x + frac(Delta x, 2)) dot.op frac(sin frac(Delta x, 2), frac(Delta x, 2))]\
 & = lim_(Delta x arrow.r 0) cos (x + frac(Delta x, 2)) dot.op lim_(Delta x\/2 arrow.r 0) frac(sin frac(Delta x, 2), frac(Delta x, 2)) $ #noindent;根据 $cos x$ 的连续性与极限 $limits(lim)_(t arrow.r 0) frac(sin t, t) = 1$, 得到 $f'\(x\)= cos x$.

]
==== 若 $f\(x\)= cos x$, 则 $f'\(x\)= - sin x$
#proof[
$ frac(Delta y, Delta x) & = frac(cos\(x + Delta x\)- cos x, Delta x)\
 & = frac(- 2 sin (x + frac(Delta x, 2)) dot.op sin frac(Delta x, 2), Delta x)\
 & = - sin (x + frac(Delta x, 2)) dot.op frac(sin frac(Delta x, 2), frac(Delta x, 2)) $ #noindent;因此 $ lim_(Delta x arrow.r 0) frac(Delta y, Delta x) & = - lim_(Delta x arrow.r 0) [sin (x + frac(Delta x, 2)) dot.op frac(sin frac(Delta x, 2), frac(Delta x, 2))]\
 & = - lim_(Delta x arrow.r 0) sin (x + frac(Delta x, 2)) dot.op lim_(Delta x\/2 arrow.r 0) frac(sin frac(Delta x, 2), frac(Delta x, 2))\
 & = - sin x $

]
现在将上面的导数公式列成下表：

+ $frac(thin upright(d) c, thin upright(d) x) = 0$

+ $frac(thin upright(d)\(k x + b\), thin upright(d) x) = k$

+ $frac(thin upright(d) x^n, thin upright(d) x) = n x^(n - 1)$#h(1em);（$n$ 为自然数）

+ $frac(thin upright(d) x^mu, thin upright(d) x) = mu x^(mu - 1)$#h(1em);（$mu$ 为任意实数）

+ $frac(thin upright(d) log_a x, thin upright(d) x) = frac(log_a e, x)\,#h(2em) frac(thin upright(d) ln x, thin upright(d) x) = 1 / x$

+ $frac(thin upright(d) a^x, thin upright(d) x) = a^x dot.op ln a\,#h(2em) frac(thin upright(d) e^x, thin upright(d) x) = e^x$

+ $frac(thin upright(d) sin x, thin upright(d) x) = cos x$

+ $frac(thin upright(d) cos x, thin upright(d) x) = - sin x$

=== 求导的基本法则
现在要建立一些求导数的公式，用这些公式可求每个初等函数的导数．

#blk[定理1][
函数和的导数等于各函数的导数的和，即：$ \[f\(x\)+ g\(x\)\]' = f'\(x\)+ g'\(x\) $

]
#proof[
设 $u\(x\)= f\(x\)+ g\(x\)$, 任意固定 $x$, 任取非零数 $Delta x$⁠，有 $ frac(Delta u\(x\), Delta x) & = frac(\[f\(x + Delta x\)+ g\(x + Delta x\)\]-\[f\(x\)+ g\(x\)\], Delta x)\
 & = frac(f\(x + Delta x\)- f\(x\), Delta x) + frac(g\(x + Delta x\)- g\(x\), Delta x)\
 & = frac(Delta f\(x\), Delta x) + frac(Delta g\(x\), Delta x) $ #noindent;令 $Delta x arrow.r 0$⁠，即得：$ \[f\(x\)+ g\(x\)\]' & = lim_(Delta x arrow.r 0) frac(Delta u\(x\), Delta x)\
 & = lim_(Delta x arrow.r 0) frac(Delta f\(x\), Delta x) + lim_(Delta x arrow.r 0) frac(Delta g\(x\), Delta x)\
 & = f'\(x\)+ g'\(x\) $

]
这个法则可以推广到任意有限个函数．

#blk[定理2][
$\[A phi\(x\)\]' = A phi'\(x\)$, 其中 $A$ 是常数，即常因数不因微分法而改变．

]
#proof[
设 $f\(x\)= A phi\(x\)$⁠，$ \[A phi\(x\)\]' & = f'\(x\)= lim_(Delta x arrow.r 0) [A frac(phi\(x + Delta x\)- phi\(x\), Delta x)]\
 & = A lim_(Delta x arrow.r 0) frac(phi\(x + Delta x\)- phi\(x\), Delta x)\
 & = A phi'\(x\) $

]
#example[
求 $3 x^2 - 7 x - 1$ 的导数．

]
#solution[
$ \(3 x^2 - 7 x - 1\)' =\(3 x^2\)' +\(- 7 x\)' +\(- 1\)' = 6 x - 7 $

]
#blk[推论][
设 $f\(x\)= a_n x^n + a_(n - 1) x^(n - 1) + dots.h.c + a_1 x + a_0 thick\(a_n eq.not 0\)$⁠，则 $ f'\(x\)= n a_n x^(n - 1) +\(n - 1\)a_(n - 1) x^(n - 2) + dots.h.c + a_1 $

]
#example[
求过抛物线 $y = 3 x^2 + 6$ 外一点 $P\(2\,- 9\)$ 所引抛物线的两条切线的方程．

]
#solution[
在点 $x$ 处的抛物线的切线的斜率为 $ k = y'_x = 6 x $ #noindent;故过抛物线上一点 $T\(x_1\,y_1\)$ 的切线方程为 $ y - y_1 = 6 x_1\(x - x_1\) $

$because quad y_1 = 3 x_1^2 + 6$

$therefore quad$ 切线方程可化简为 $ y = 6 x_1 x - 3 x_1^2 + 6 $ #noindent;设切线通过 $P\(2\,- 9\)$ 点，于是 $ - 9 = 12 x_1 - 3 x_1^2 + 6 $ #noindent;即：$x_1^2 - 4 x_1 - 5 = 0$

$therefore quad x_1 = - 1$ 或 $5$⁠，从而 $y_1 = 9$ 或81.

故所求切线方程为：$ y - 9 = - 6\(x + 1\)quad upright("和") quad y - 81 = 30\(x - 5\) $ #noindent;即：$ y + 6 x - 3 = 0 quad upright("和") quad y - 30 x + 69 = 0 $

]
#example[
求三次函数 $f\(x\)= a x^3 + 3 b x^2 + 3 c x + d$ 的图象与 $x$ 轴相切的条件．

]
#solution[
由函数 $f\(x\)= a x^3 + 3 b x^2 + 3 c x + d$ 求得它的图象任意一点 $x = x_0$ 处的切线斜率为 $ f'\(x_0\)= 3 a x_0^2 + 6 b x_0 + 3 c = 3\(a x_0^2 + 2 b x_0 + c\) $

要此曲线与 $x$ 轴相切于 $\(x_0\,0\)$ 点，$x_0$ 必须满足条件

#numcases($$, $a x_0^3 + 3 b x_0^2 + 3 c x_0 + d = 0$, $a x_0^2 + 2 b x_0 + c = 0$);

#noindent;将 (2.1) 改写成#numbered-eq($ x_0\(a x_0^2 + 2 b x_0 + c\)+ b x_0^2 + 2 c x_0 + d = 0 $);#noindent; (2.2) 代入得#numbered-eq($ b x_0^2 + 2 c x_0 + d = 0 $);#noindent;于是解 (2.1) 和 (2.2) 即解 (2.2) 和 (2.4)，要方程 (2.2) 和 (2.4) 有公共解，必须 $ D = mat(delim: "|", a, 2 b; b, 2 c) = 2\(a c - b^2\)eq.not 0 $ #noindent;于是 $ x_0^2 = frac(c^2 - b d, b^2 - a c)\,#h(2em) x_0 = frac(a d - b c, 2\(b^2 - a c\)) thick\(b^2 - a c eq.not 0\) $ #noindent;所以，$a\,b\,c\,d$ 必须适合条件 $ display(cases(b^2 - a c eq.not 0, frac(c^2 - b d, b^2 - a c) = frac(\(a d - b c\)^2, 4\(b^2 - a c\)^2))) $ #noindent;即 $ display(cases(b^2 - a c eq.not 0, \(a d - b c\)^2 = 4\(b^2 - a c\)\(c^2 - b d\))) $

]
#blk[定理3][
二函数之积的导数为两项之和，其中第一项是第一个因子的导数与第二个因子的乘积，而第二项是第二个因子的导数与第一个因子的乘积，即 $ \[f\(x\)dot.op g\(x\)\]' = f'\(x\)dot.op g\(x\)+ f\(x\)dot.op g'\(x\) $

]
#proof[
设 $h\(x\)= f\(x\)dot.op g\(x\)$, 任取非零数 $Delta x$, 则 $ \[f\(x\)dot.op g\(x\)\]' & = lim_(Delta x arrow.r 0) frac(Delta h\(x\), Delta x)\
 & = lim_(Delta x arrow.r 0) frac(f\(x + Delta x\)g\(x + Delta x\)- f\(x\)g\(x\), Delta x)\
 & = lim_(Delta x arrow.r 0) frac(1, Delta x) class("opening", stretch(\[, size: #1.8em)) f\(x + Delta x\)g\(x + Delta x\)- f\(x\)g\(x + Delta x\)\
 & #h(2em) #h(2em) eqph + f\(x\)g\(x + Delta x\)- f\(x\)g\(x\)class("closing", stretch(\], size: #1.8em))\
 & = lim_(Delta x arrow.r 0) frac(f\(x + Delta x\)- f\(x\), Delta x) dot.op g\(x + Delta x\)\
 & #h(2em) eqph + lim_(Delta x arrow.r 0) f\(x\)dot.op frac(g\(x + Delta x\)- g\(x\), Delta x)\
 & = f'\(x\)dot.op g\(x\)+ f\(x\)dot.op g'\(x\) $

]
重复应用这个定理，我们便可以求两个以上的函数之积的导数，例如 $ frac(thin upright(d), thin upright(d) x)\(u v w\)=\(v w\)frac(thin upright(d) u, thin upright(d) x) + u frac(thin upright(d), thin upright(d) x)\(v w\) $ #noindent;但是 $ frac(thin upright(d), thin upright(d) x)\(v w\)= w frac(thin upright(d) v, thin upright(d) x) + v frac(thin upright(d) w, thin upright(d) x) $ #noindent;代入上式便得到 $ frac(thin upright(d), thin upright(d) x)\(u v w\)= v w frac(thin upright(d) u, thin upright(d) x) + u w frac(thin upright(d) v, thin upright(d) x) + u v frac(thin upright(d) w, thin upright(d) x) $

#example[
设 $f\(x\)= sqrt(x)\(x^2 - 3\)$⁠，求 $f'\(x\)$

]
#solution[
$ f'\(x\) & = [sqrt(x) \( x^2 - 3 \)]'\
 & = (sqrt(x))'\(x^2 - 3\)+ sqrt(x)\(x^2 - 3\)'\
 & = frac(1, 2 sqrt(x))\(x^2 - 3\)+ sqrt(x) dot.op 2 x = frac(5 x^2 - 3, 2 sqrt(x)) $

]
#example[
设 $f\(x\)= 1 / 2 sin^2 x + x sin x + 7 / x^2$⁠，求 $f'\(x\)$

]
#solution[
$ f'\(x\) & = (1 / 2 sin^2 x)' +\(x sin x\)' + (7 / x^2)'\
 & = 1 / 2 [\( sin x \)' sin x + sin x \( sin x \)'] +\(sin x + x cos x\)- 14 / x^3\
 & = sin x cos x + sin x + x cos x - 14 / x^3 $

]
#blk[定理4][
两个函数的商的导数，等于分子的导数与分母的积，减去分母的导数与分子的积，再除以分母的平方，即 $ (frac(u\(x\), v\(x\)))' = frac(v\(x\)dot.op u'\(x\)- u\(x\)dot.op v'\(x\), \[v\(x\)\]^2) $

]
#proof[
设 $f\(x\)= frac(u\(x\), v\(x\))$⁠，任取非零数 $Delta x$⁠，则 $ (frac(u\(x\), v\(x\)))' & = lim_(Delta x arrow.r 0) frac(Delta f\(x\), Delta x) = lim_(Delta x arrow.r 0) frac(frac(u\(x + Delta x\), v\(x + Delta x\)) - frac(u\(x\), v\(x\)), Delta x)\
 & = lim_(Delta x arrow.r 0) frac(1, Delta x) lr(\{ frac(u\(x + Delta x\)dot.op v\(x\)- u\(x\)dot.op v\(x + Delta x\), v\(x + Delta x\)dot.op v\(x\)) \})\
 & = lim_(Delta x arrow.r 0) frac(1, Delta x) lr(\{ frac(v\(x\)\[u\(x + Delta x\)- u\(x\)\], v\(x\)v\(x + Delta x\)) - frac(u\(x\)\[v\(x + Delta x\)- v\(x\)\], v\(x\)v\(x + Delta x\)) \})\
 & = frac(v\(x\)limits(lim)_(Delta x arrow.r 0) frac(u\(x + Delta x\)- u\(x\), Delta x), v\(x\)limits(lim)_(Delta x arrow.r 0) v\(x + Delta x\)) - frac(u\(x\)limits(lim)_(Delta x arrow.r 0) frac(v\(x + Delta x\)- v\(x\), Delta x), v\(x\)limits(lim)_(Delta x arrow.r 0) v\(x + Delta x\))\
 & = frac(v\(x\)u'\(x\)- u\(x\)v'\(x\), v^2\(x\)) $

]
#example[
求证：$\(tan x\)' = sec^2 x\,#h(2em)\(cot x\)' = - csc^2 x$

]
#proof[
$ \(tan x\)' & = (frac(sin x, cos x))'\
 & = frac(cos x\(sin x\)' - sin x\(cos x\)', cos^2 x)\
 & = frac(cos^2 x + sin^2 x, cos^2 x)\
 & = frac(1, cos^2 x) = sec^2 x $ $ \(cot x\)' = (frac(cos x, sin x))' = frac(- sin^2 x - cos^2 x, sin^2 x) = - csc^2 x $

]
#example[
求 $(frac(2 x - 1, x^2 + 1))'$

]
#solution[
$ (frac(2 x - 1, x^2 + 1))' & = frac(\(x^2 + 1\)\(2 x - 1\)' -\(2 x - 1\)\(x^2 + 1\)', \(x^2 + 1\)^2)\
 & = frac(\(x^2 + 1\)dot.op 2 -\(2 x - 1\)\(2 x\), \(x^2 + 1\)^2)\
 & = frac(2\(x^2 + 1\)-\(4 x^2 - 2 x\), \(x^2 + 1\)^2)\
 & = frac(- 2\(x^2 - x - 1\), \(x^2 + 1\)^2) $

]
#exercise[
+ #block(sticky: true)[求下面各函数的导函数：]

  #cols(2)[
  + $3 x^3 - 1$

  + $x + 2 x^2 + 3 x^3$

  + $1 - 1 / x^2$

  + $frac(x^2 + 1, x)$

  + $1 + 1 / x - 1 / x^2$

  + $frac(2 x^5 - 7 x^3 - 3 x^2, 6 x^2)$

  + $\(x + 2\)(x^2 + 1)$

  + $x + sqrt(x)$

  + $x - 1 / sqrt(x)$

  + $frac(x + 1, sqrt(x))$

  + $frac(2 x sqrt(x) - x^(tfrac(5, 2)) + 3 x^(tfrac(1, 2)), - sqrt(x))$

  + $e^x - e^(- x)$

  + $frac(x^n - x^(- n), x)$

  + $sin x + cos x$

  + $sin x - cos x$

  ]

+ #block(sticky: true)[求下面各函数的导函数：]

  #cols(2)[
  + $(x^2 + 1)^3 sqrt(x)$

  + $frac(x + 1, sqrt(x))$

  + $x sin x$

  + $x cot x$

  + $frac(tan x, x)$\;

  + $x log_2 x + x^2 tan x$

  + $frac(x^2, x^3 + c^3)$

  + $x^3 e^(- x)$\;

  + $a^(- x) sin x$

  + $a^x \{\(x + 1\)cos x + log_2 x \}$

  + $frac(sqrt(x) + 1, 2 x + 1)$

  + $frac(2 x - 1, x^2 + 1)$

  + $frac(\(x - 3\)\(x - 4\), \(x - 5\))$

  + $frac(x^2 (x^2 - 1) (x^3 - 1), x + 1)$

  + $frac(x, x + 1) - frac(1, x - 1)$

  + $x sin x cos x$

  + $sec x$

  + $csc x$

  + $frac(sin x, 1 + tan x)$

  ]

+ 已知抛物线 $y = x^2 - x$ 上一点的切线平行于直线 $y = x$⁠．求此点的坐标．

+ 求曲线 $y = x^3 - x^2$ 上这样的点，使过该点的切线与 $x$ 轴平行．

+ 若抛物线 $y = a x^2 + b x + c$ 通过原点，且过该点的切线的斜率等于2, 又抛物线过 $\(1\,1\)$ 点，求 $a$⁠、$b$⁠、$c$.

+ 对于函数 $f\(x\)= x^3 + a x^2 + b x + c$, 方程 $f\(x\)+ 1 / 2 x = 0$ 有不相等的三根 $2\,alpha\,beta$, 若 $f'\(alpha\)= f'\(beta\)$, $f'\(1\)= 0$, 求 $a\,b\,c$.

+ 求三次函数 $y = f\(x\)$, 使它同时满足下面的条件：

  + 用 $x + 1$ 去除 $f\(x\)$ 与用 $\(x - 1\)\(x - 2\)$ 去除 $f\(x\)$ 所得余式相同；

  + 过曲线 $y = f\(x\)$ 上的点 $\(1\,f\(1\)\)$ 的切线方程是 $y = - 2 x + 1$

+ 过 $\(2\,0\)$ 点求与曲线 $y = 1 / x$ 相切的直线方程．

+ #lead-list(none, 2)[
  + 在抛物线 $y = x^2$ 上求这样一点，使过该点的切线与过 $\(a\,a^2\)$ 点的切线垂直；

  + 求抛物线两条正交切线交点的轨迹方程．
  ]

+ 设抛物线方程为 $y = x^2 + a x + b$, 试问点 $\(x_0\,y_0\)$ 位于何处时，可以从点 $\(x_0\,y_0\)$ 对此抛物线作出两条切线或一条切线，或作不出切线？

+ 求抛物线 $y = x^2 + a x$, $y = x^2 + b x thick\(a eq.not b\)$ 的公切线的方程．

]
=== 复合函数的求导法则
#blk[定理][
假设函数 $y = g\(x\)$ 在点 $x$ 可导，而函数 $z = f\(y\)$ 在点 $g\(x\)$ 可导，那么复合函数 $z = phi\(x\)= f\(g\(x\)\)$ 在点 $x$ 可导，并且 $ \[f\(g\(x\)\)\]' = f'\(g\(x\)\)dot.op g'\(x\) $ #noindent;简写成 $\[f\(g\(x\)\)\]' = f'_g dot.op g'_x$⁠，或者写成 $ frac(thin upright(d) z, thin upright(d) x) = frac(thin upright(d) z, thin upright(d) y) dot.op frac(thin upright(d) y, thin upright(d) x) $

]
#proof[
设 $D_g$, $D_f$ 分别是函数 $g\(x\)\,f\(y\)$ 的定义域，令 $x in D_g$, $g\(x\)in D_f$, 任取非零数 $Delta x$, 且使 $g\(x + Delta x\)in D_f$⁠，于是 $Delta y = g\(x + Delta x\)- g\(x\)$, 又根据 $g\(x\)$ 在点 $x$ 连续，故当 $Delta x arrow.r 0$ 时，$Delta y arrow.r 0$. 因为 $g\(x\)$ 在点 $x$ 可导，可以设#numbered-eq($ alpha = frac(Delta y, Delta x) - g'\(x\) $);#noindent;而且由上式知道 $ lim_(Delta x arrow.r 0) alpha = lim_(Delta x arrow.r 0) (frac(Delta y, Delta x) - g' \( x \)) = g'\(x\)- g'\(x\)= 0 $ #noindent;把 (2.5) 改写成#numbered-eq($ Delta y = g'\(x\)Delta x + alpha Delta x $);#noindent;其中 $alpha$ 随 $Delta x$ 一同趋向于零，且 $alpha Delta x$ 是比 $Delta x$ 更小的量．

+ 若 $g'\(x\)eq.not 0$⁠，只要 $Delta x$ 够小，由 (2.6) 知 $Delta y eq.not 0$⁠，那么 $ frac(phi\(x + Delta x\)- phi\(x\), Delta x) & = frac(f\(g\(x + Delta x\)\)- f\(g\(x\)\), g\(x + Delta x\)- g\(x\)) dot.op frac(g\(x + Delta x\)- g\(x\), Delta x)\
   & = frac(f\(g\(x\)+ Delta y\)- f\(g\(x\)\), Delta y) dot.op frac(Delta y, Delta x) $ #noindent;令 $Delta x arrow.r 0$⁠，由上式得 $ phi'\(x\)= f'\(g\(x\)\)dot.op g'\(x\) $ #noindent;即 $ \[f\(g\(x\)\)\]' = f'\(g\(x\)\)dot.op g'\(x\) $

+ 如果 $g'\(x\)= 0$⁠，则当 $Delta x arrow.r 0$ 时，有两种情形：

  + 若 $Delta y = g\(x + Delta x\)- g\(x\)= 0$⁠，则 $ frac(phi\(x + Delta x\)- phi\(x\), Delta x) & = frac(f\(g\(x + Delta x\)\)- f\(g\(x\)\), Delta x)\
     & = frac(f\(g\(x\)\)- f\(g\(x\)\), Delta x) = 0 $

  + 若 $Delta y eq.not 0$⁠，则 $ frac(phi\(x + Delta x\)- phi\(x\), Delta x) = frac(f\(g\(x\)+ Delta y\)- f\(g\(x\)\), Delta y) dot.op frac(Delta y, Delta x) $ #noindent;令 $Delta x arrow.r 0$⁠，得到 $ phi'\(x\)= f'\(g\(x\)\)dot.op 0 = 0 $

  #noindent;合并上述两种情形，都有 $ phi'\(x\)=\[f\(g\(x\)\)\]' = 0 $ #noindent;于是定理得证．

]
这个定理是说：复合函数对自变量的导数，等于已知函数对中间变量的导数，乘以中间变量对自变量的导数．

#example[
设 $phi\(x\)= 2^(sin x)$, 求 $phi'\(x\)$⁠．

]
#solution[
把 $phi\(x\)$ 看成 $u = sin x$ 和 $f\(u\)= 2^u$ 的复合函数，于是 $phi\(x\)= 2^(sin x) = f\(sin x\)$.

依上述定理，得 $ phi'\(x\) & =\[f\(u\)\]' dot.op u'_x =\(2^u\)' dot.op\(sin x\)'\
 & = 2^u ln 2 dot.op cos x\
 & = 2^(sin x) dot.op cos x dot.op ln 2 $

]
#example[
设 $y = sin\(x^2 + x + 1\)dot.op cos\(x^3 + 2 x^2\)$, 求 $y'_x$.

]
#solution[
设 $u = x^2 + x + 1$, $v = x^3 + 2 x^2$, 则 $ y' & =\(sin u\)' dot.op u'_x dot.op cos v + sin u dot.op\(cos v\)' dot.op v'_x\
 & = cos u dot.op u'_x dot.op cos v - sin u dot.op sin v dot.op v'_x\
 & =\(2 x + 1\)cos\(x^2 + x + 1\)cos\(x^3 + 2 x^2\)\
 & #h(2em) -\(3 x^2 + 4 x\)sin\(x^2 + x + 1\)sin\(x^3 + 2 x^2\) $

]
#example[
设 $f\(x\)= x / sqrt(9 + x^2)$⁠，求 $f'\(x\)$.

]
#solution[
$ f'\(x\) & = frac(sqrt(9 + x^2)\(x\)' - x (sqrt(9 + x^2))', 9 + x^2)\
 & = frac(sqrt(9 + x^2) - x dot.op 1 / 2\(9 + x^2\)^(- tfrac(1, 2))\(9 + x^2\)', 9 + x^2)\
 & = frac(sqrt(9 + x^2) - x^2 / sqrt(9 + x^2), 9 + x^2) = 9 / (9 + x^2)^(3\/2) $

]
#blk[推论1][
如果函数有两个以上的中间变量，上面的求导法则可以推广使用．

]
例如，设 $y = f\(u\)$, $u = g\(v\)$, $v = h\(x\)$, 那么对于复合函数 $y = phi\(x\)= f \{ g\[h\(x\)\]\}$ 的导数可以这样来求：$ frac(thin upright(d) y, thin upright(d) x) = frac(thin upright(d) y, thin upright(d) u) dot.op frac(thin upright(d) u, thin upright(d) v) dot.op frac(thin upright(d) v, thin upright(d) x) $ #noindent;即：$y'_x = y'_u dot.op u'_v dot.op v'_x$

事实上，依前定理有 $ frac(thin upright(d) y, thin upright(d) x) = frac(thin upright(d) y, thin upright(d) u) dot.op frac(thin upright(d) u, thin upright(d) x) $ #noindent;这里 $u = g\[h\(x\)\]$⁠．再用同一定理 $ frac(thin upright(d) u, thin upright(d) x) = frac(thin upright(d) u, thin upright(d) v) dot.op frac(thin upright(d) v, thin upright(d) x) $ #noindent;所以 $ frac(thin upright(d) y, thin upright(d) x) = frac(thin upright(d) y, thin upright(d) u) dot.op frac(thin upright(d) u, thin upright(d) v) dot.op frac(thin upright(d) v, thin upright(d) x) $

#example[
设 $y = ln sqrt(5 - 2 x + 3 x^4)\,quad\(5 - 2 x + 3 x^4 > 0\)$⁠，求 $y'_x$.

]
#solution[
设 $y = ln u$⁠，$u = sqrt(v)$⁠，$v = 5 - 2 x + 3 x^4$⁠，于是：$ frac(thin upright(d) y, thin upright(d) x) & = frac(thin upright(d) y, thin upright(d) u) dot.op frac(thin upright(d) u, thin upright(d) v) dot.op frac(thin upright(d) v, thin upright(d) x)\
 & = 1 / u dot.op (1 / 2 v^(- tfrac(1, 2))) dot.op\(- 2 + 12 x^3\)\
 & = 1 / sqrt(5 - 2 x + 3 x^4) dot.op 1 / 2 1 / sqrt(5 - 2 x + 3 x^4) dot.op\(- 2 + 12 x^3\)\
 & = frac(6 x^3 - 1, 5 - 2 x + 3 x^4) $

]
求复合函数的导数，关键在于分析清楚函数的复合关系，适当选定中间变量，根据复合函数求导法则由外向里逐层求导，直到最后一个中间变量对自变量求导为止，每次求导时，必须明确是哪个变量对哪个变量求导，所有这些导数的乘积就是复合函数的导数．

#blk[推论2][
$ \(ln\|g\(x\)\|\)' = frac(g'\(x\), g\(x\)) quad\(g\(x\)eq.not 0\) $

]
#proof[
$ ln\|g\(x\)\|upright("有意义") quad arrow.l.r.double.long quad g\(x\)eq.not 0 $ #noindent;又 $ \|g\(x\)\|' upright("存在") quad arrow.l.r.double.long quad g\(x\)eq.not 0 $ #noindent;所以由 $ \|g\(x\)\|' = display(cases(g'\(x\)\, & quad g\(x\)> 0, \[- g\(x\)\]' = - g'\(x\)\, & quad g\(x\)< 0)) $ #noindent;和复合函数求导法则，便得 $ \[ln\|g\(x\)\|\]' = frac(1, \|g\(x\)\|) dot.op\|g\(x\)\|' = frac(g'\(x\), g\(x\)) quad\(g\(x\)eq.not 0\) $

]
#example[
求 $\(ln\|x^2 - 5 x + 4\|\)'$

]
#solution[
$ \(ln\|x^2 - 5 x + 4\|\)' = frac(\(x^2 - 5 x + 4\)', x^2 - 5 x + 4) = frac(2 x - 5, x^2 - 5 x + 4) $ #noindent;其中：$x^2 - 5 x + 4 eq.not 0$⁠，即 $x eq.not 1$ 和 $x eq.not 4$.

]
#example[
求 $[frac(\(x^2 + 1\)^(tfrac(1, 2))\(x - 1\)^2, \(x + 1\)^(tfrac(3, 2)))]'$

]
#solution[
设 $y = frac(\(x^2 + 1\)^(tfrac(1, 2))\(x - 1\)^2, \(x + 1\)^(tfrac(3, 2)))$⁠，则 $ ln\|y\| & = 1 / 2 ln\(x^2 + 1\)+ 2 ln\|x - 1\|- 3 / 2 ln\|x + 1\|\
1 / y dot.op y' & = 1 / 2 frac(2 x, x^2 + 1) + frac(2, x - 1) - frac(3, 2\(x + 1\))\
 & = frac(3 x^3 + 7 x^2 - x + 7, 2\(x^2 + 1\)\(x - 1\)\(x + 1\)) $ $ y' & = frac(3 x^3 + 7 x^2 - x + 7, 2\(x^2 + 1\)\(x - 1\)\(x + 1\)) dot.op frac(\(x^2 + 1\)^(tfrac(1, 2))\(x - 1\)^2, \(x + 1\)^(tfrac(3, 2)))\
 & = frac(\(3 x^3 + 7 x^2 - x + 7\)\(x - 1\), 2\(x^2 + 1\)^(tfrac(1, 2))\(x + 1\)^(tfrac(5, 2))) $

]
#example[
设 $f\(x\)= u\(x\)^(v\(x\)) quad\(u\(x\)> 0\)$⁠，求 $f'\(x\)$.

]
#solution[
先求此函数的对数，有 $ ln f\(x\)= v\(x\)ln u\(x\) $ #noindent;两边对 $x$ 求导，即得 $ frac(1, f\(x\)) dot.op f'\(x\)= v'\(x\)ln u\(x\)+ v\(x\)dot.op frac(1, u\(x\)) dot.op u'\(x\) $ #noindent;所以 $ f'\(x\)= u\(x\)^(v\(x\)) [v' \( x \) ln u \( x \) + frac(v\(x\)u'\(x\), u\(x\))] $

]
#example[
一人在放风筝，且知风筝在80米的高度飘行，放线速度为2米/秒，求当线长为100米时，风筝和此人之间的水平距离的变率．

]
#solution[
设在某时刻 $t$, 线长为 $ell\(t\)$ 米，水平距离为 $x\(t\)$ 米，根据勾股定理得到绳长和水平距离的关系式 $ ell^2\(t\)= x^2\(t\)+ 6400 $ #noindent;两边对时间 $t$ 求导数，得到 $ frac(thin upright(d) ell^2, thin upright(d) ell) dot.op frac(thin upright(d) ell, thin upright(d) t) = frac(thin upright(d)\(x^2 + 6400\), thin upright(d) x) dot.op frac(thin upright(d) x, thin upright(d) t) $ #noindent;即 $ ell dot.op frac(thin upright(d) ell, thin upright(d) t) = x dot.op frac(thin upright(d) x, thin upright(d) t) $ #noindent;但是已知 $frac(thin upright(d) ell, thin upright(d) t) = 2\(upright(m\/s)\)$⁠，又当 $ell = 100$ 时，$ x = sqrt(100^2 - 6400) = sqrt(3600) = 60 $ #noindent;于是 $ 60 frac(thin upright(d) x, thin upright(d) t) = 100 times 2 $

$therefore quad frac(thin upright(d) x, thin upright(d) t) = 10 / 3 = 3 1 / 3\(upright(m\/s)\)$

答：当 $ell = 100$ 米时，风筝和人之间的水平距离的变率为 $3 1 / 3$（米／秒）．

]
#exercise[
+ #block(sticky: true)[求下面函数对于 $x$ 的导数:]

  #cols(2)[
  + $\(x + 1\)^2$

  + $\(1 - 3 x\)^3$

  + $sqrt(x + 1)$

  + $1 / sqrt(x + 1)$

  + $sqrt(x^2 + 1)$

  + $1 / sqrt(x^2 + 1)$

  + $sqrt(2 x^2 + x - 1)$

  + $1 / sqrt(tan x)$

  + $frac(1, sin^3 x)$

  + $cos\(a x + b\)$

  + $cos^3\(a x + b\)$

  + $cot sqrt(x)$

  + $sec (1 / x)$

  + $x sqrt(sin x)$

  + $x^2 sqrt(sec 2 x)$

  + $ln (1 + x^2)$

  + $log_a\(sin x\)$

  + $log_a\(sec x\)$

  + $sqrt(ln x)$

  + $e^(a x^2)$

  + $e^(1 + x - x^2)$

  + $a^(sqrt(2 x + 1))$

  ]

+ #block(sticky: true)[对下面各函数先取对数再求导数:]

  #cols(2)[
  + $frac(x - 1, \(x + 1\)^2)$

  + $frac(sqrt(x - 1)\(x + 1\), x^2 + 1)$

  + $frac(\(x - 3\)\(x - 4\), \(x - 5\))$

  + $sqrt(frac(x - 1, x + 1))$

  + $\(x + 2\)^2\(x + 3\)^3\(x + 4\)^4$

  ]

+ #block(sticky: true)[求下列函数对于 $x$ 的微商:]

  #cols(2)[
  + $e^(2 x)\(2 cos 3 x + 3 sin 3 x\)$

  + $ln (x + sqrt(x^2 plus.minus a^2))$

  + $frac(2 x + 1, sqrt(3 - 4 x - 4 x^2))$

  + $cos\[ln\(x^2 + 9\)\]$

  + $ln\(1 - tan^2 x\)$

  + $x^x +\(ln x\)^x$

  ]
  #block[
  #set enum(numbering: enum-at(2, none, start: 7))
  + $\(1 - x\)^(tfrac(1, 2))\(1 + 3 x\)^(tfrac(3, 20))\(1 - 2 x\)^(- tfrac(2, 5))$
  ]

+ 若 $y = e^(a x) cos\(b x + c\)$⁠，求证：$ 1 / sqrt(a^2 + b^2) frac(thin upright(d) y, thin upright(d) x) = e^(a x) cos\(b x + c + r\) $ #noindent;其中：$tan r = b\/a$.

+ 设 $f\(x\)= display(cases(x^2 sin 1 / x\, & quad x eq.not 0, 0\, & quad x = 0))$⁠，求 $f\(x\)$ 的导函数．

  （提示：对于 $x eq.not 0$⁠，可用本节的方法得出，而 $f'\(0\)$ 需直接由定义得出）．

+ 有一个长度为5米的梯子贴靠在铅直的墙上，假设其下端沿地板以3米/秒的速率离开墙脚而滑动，则

  + 当其下端离开墙脚1.4米时，梯子上端下滑之速率为多少？

  + 何时梯子的上下端能以相同的速率移动？

  + 何时其上端下滑之速度为4米/秒？

+ 求曲线 $y = cos^2 sqrt(x)$ 在点 $x = 0$ 处的切线方程．

+ 在 $triangle.stroked.t A B C$ 中，$a = 7$⁠cm, $b = 5$⁠cm, $c = 8$⁠cm, $P$ 为 $A B$ 边上一动点，从 $A$ 往 $B$ 以每秒2厘米的速度运动．当 $P$ 点在 $A B$ 边中点时，$C P$ 长度的变率是多少？

+ 求曲线 $y = 2 (e^x + 1 / 5 e^(- 3 x))$ 在横坐标 $x_0 = 0$ 的点的切线方程．

+ 试由公式 $1 + x + x^2 + dots.h.c + x^n = frac(x^(n + 1) - 1, x - 1)$ 分别导出 $1 + 2 x + 3 x^2 + dots.h.c + n x^(n - 1)$ 与 $x + 2^2 x^2 + 3^2 x^3 + dots.h.c + n^2 x^n$ 的公式．

]
=== 反函数求导法则
#blk[定理][
若函数 $y = f\(x\)$ 在 $x_0$ 的某一邻域内连续，且严格单调，又函数 $f\(x\)$ 在点 $x_0 = f^(- 1)\(y_0\)$ 的导数 $f'\(x_0\)$ 存在并且异于零，则反函数 $x = f^(- 1)\(y\)$ 在对应点 $y_0 = f\(x_0\)$ 的导数存在，并且等于 $frac(1, f'\(x_0\)) = frac(1, f'\(f^(- 1)\(y_0\)\))$⁠，即 $ \[f^(- 1)\(y_0\)\]' = frac(1, f'\(x_0\)) = frac(1, f'\[f^(- 1)\(y_0\)\]) $

]
#proof[
给数值 $y = y_0$ 以任意增量 $Delta y$, 则反函数 $x = f^(- 1)\(y\)$ 也得到对应增量 $Delta x$, 当 $Delta y eq.not 0$ 时，由于 $y = f\(x\)$ 的严格单调性，从而 $x = f^(- 1)\(y\)$ 也是严格单调的，也有 $Delta x eq.not 0$, 于是有 $ frac(f^(- 1)\(y_0 + Delta y\)- f^(- 1)\(y_0\), Delta y) & = frac(Delta x, f\(x_0 + Delta x\)- f\(x_0\))\
 & = frac(1, frac(f\(x_0 + Delta x\)- f\(x_0\), Delta x)) $ #noindent;现在令 $Delta y arrow.r 0$⁠，则由于反函数 $x = f^(- 1)\(y\)$ 也是连续的，故增量 $Delta x arrow.r 0$⁠，于是 $ lim_(Delta y arrow.r 0) frac(f^(- 1)\(y_0 + Delta y\)- f^(- 1)\(y_0\), Delta y) = frac(1, limits(lim)_(Delta y arrow.r 0) frac(f\(x_0 + Delta x\)- f\(x_0\), Delta x)) $ #noindent;上面等式右边的分母就趋于极限 $f'\(x_0\)eq.not 0$⁠，而左边按定义就是 $\[f^(- 1)\(y_0\)\]'$⁠，因此 $ \[f^(- 1)\(y_0\)\]' = frac(1, f'\(x_0\)) $ #noindent;再将 $x_0 = f^(- 1)\(y_0\)$ 代入上式，得到 $ \[f^(- 1)\(y_0\)\]' = frac(1, f'\[f^(- 1)\(y_0\)\]) $

]
#blk[推论][
$ \(arcsin x\)' & = 1 / sqrt(1 - x^2)\,#h(2em) - 1 < x < 1\
\(arccos x\)' & = frac(- 1, sqrt(1 - x^2))\,#h(2em) - 1 < x < 1\
\(arctan x\)' & = frac(1, 1 + x^2)\,#h(2em) - oo < x < oo\
\("arccot" x\)' & = frac(- 1, 1 + x^2)\,#h(2em) - oo < x < oo $

]
#proof[
如果我们限制正弦函数 $x = sin y$ 的定义域为 $(- pi / 2 \, pi / 2)$⁠，那么 $x = sin y$ 的反函数存在，即 $ y = arcsin x\,#h(2em) x in\(- 1\,1\) $ #noindent;于是 $ \(arcsin x\)' = frac(1, \(sin y\)') = frac(1, cos y) = frac(1, cos\(arcsin x\)) $ #noindent;由于 $arcsin x in (- pi / 2 \, pi / 2)$⁠，所以 $cos y > 0$, 从而 $ cos\(arcsin x\)= sqrt(1 - sin^2\(arcsin x\)) = sqrt(1 - x^2) $ #noindent;最后得到 $ \(arcsin x\)' = 1 / sqrt(1 - x^2)\,#h(2em) x in\(- 1\,1\) $

我们除去了数值 $x = plus.minus 1$, 因为在它的对应值 $y = plus.minus pi / 2$ 处导数 $\(sin y\)' = cos y = 0$.

在第四册（下），我们已经证明 $arcsin x + arccos x = pi / 2$⁠，所以 $ \(arccos x\)' = (pi / 2 - arcsin x)' = - 1 / sqrt(1 - x^2)\,#h(2em) - 1 < x < 1 $ #noindent;其余同理可证．

]
#example[
求 $\("arcsec" x\)'$.

]
#solution[
函数 $x = sec y$ 在区间 $(0 \, pi / 2)$ 上，由1递增到 $+ oo$⁠，而在区间 $(pi / 2 \, pi)$ 上，由 $- oo$ 递增到 $- 1$⁠．因此，$x = sec y$⁠，$y in (0 \, pi / 2) union (pi / 2 \, pi)$ 有反函数存在，即：$ y = "arcsec" x\,#h(2em) x in\(- oo\,- 1\)union\(1\,+ oo\) $

依反函数求导法则，有 $ \("arcsec" x\)' & = frac(1, \(sec y\)') = frac(1, sec y dot.op tan y)\
 & = frac(1, sec\("arcsec" x\)dot.op tan\("arcsec" x\))\
 & = display(cases(frac(1, x sqrt(sec^2\("arcsec" x\)- 1))\, & quad 0 < "arcsec" x < pi / 2, frac(1, x (- sqrt(sec^2\("arcsec" x\)- 1)))\, & quad pi / 2 < "arcsec" x < pi))\
 & = display(cases(frac(1, x sqrt(x^2 - 1))\, & quad x > 1, - frac(1, x sqrt(x^2 - 1))\, & quad x < - 1)) $

]
#example[
若已知 $\(log_a x\)' = frac(log_a e, x)\,quad x in\(0\,+ oo\)$⁠，试利用反函数求导法则求 $\(a^x\)'$

]
#solution[
因为 $y = a^x\,quad\(a > 0\,thick a eq.not 1\,thick - oo < x < + oo\)$ 是 $x = log_a y thick\(y > 0\)$ 的反函数，所以 $ \(a^x\)' & = frac(1, \(log_a y\)') = frac(1, frac(log_a e, y)) = frac(y, log_a e)\
 & = ln a dot.op\(a^x\)= a^x ln a $

]
#example[
求函数 $f\(x\)= 2 x arctan 2 x - ln sqrt(1 + 4 x^2)$ 的导数．

]
#solution[
$ f'\(x\) & = [\( 2 x \)' arctan 2 x + 2 x dot.op frac(1, 1 +\(2 x\)^2) dot.op \( 2 x \)']\
 & #h(2em) eqph - 1 / sqrt(1 + 4 x^2) dot.op frac(1, 2 sqrt(1 + 4 x^2)) dot.op\(1 + 4 x^2\)'\
 & = 2 arctan 2 x + frac(4 x, 1 + 4 x^2) - frac(4 x, 1 + 4 x^2)\
 & = 2 arctan 2 x $

]
#example[
求曲线 $y = arcsin x$ 和 $y = arccos x$ 的交角．

]
#solution[
设这两条曲线交于 $T\(x_0\,y_0\)$ 点，则 $ y_0 = arcsin x_0 = arccos x_0\,#h(2em) 0 < y_0 < pi / 2 $ #noindent;由此得#numbered-eq($ sin\(arcsin x_0\)= sin\(arccos x_0\) $);#noindent;即 $ x_0 = sqrt(1 - x_0^2) $ #noindent;解得 $ x_0 = plus.minus 1 / sqrt(2) $ #noindent;因为 $0 < y_0 < pi / 2$⁠，所以 $x_0 > 0$. 如此应取 $x_0 = 1 / sqrt(2)$. 由于 $ \(arcsin x\)' = 1 / sqrt(1 - x^2)\,#h(2em)\(arccos x\)' = frac(- 1, sqrt(1 - x^2)) $ #noindent;所以在点 $x = 1 / sqrt(2)$ 处，$y = arcsin x$ 的切线的斜率为 $ tan alpha class("normal", stretch(|, size: #1.8em))_(x = tfrac(1, sqrt(2))) = frac(1, sqrt(1 - 1 / 2)) = sqrt(2) $ #noindent;又 $y = arccos x$ 的切线的斜率是 $ tan beta class("normal", stretch(|, size: #1.8em))_(x = tfrac(1, sqrt(2))) = frac(- 1, sqrt(1 - 1 / 2)) = - sqrt(2) $

设 $theta$ 是这两条曲线在交点 $(1 / sqrt(2) \, pi / 4)$ 的夹角，也就是过 $T$ 点的两条切线的交角，于是 $ tan theta = frac(tan beta - tan alpha, 1 + tan beta tan alpha) = frac(- sqrt(2) - sqrt(2), 1 + (- sqrt(2)) sqrt(2)) = frac(- 2 sqrt(2), - 1) = 2 sqrt(2) $ #noindent;因此，这两条曲线的交角 $theta = arctan 2 sqrt(2)$.

]
#example[
一飞机在离地面2公里的高度，以每小时200公里的速度飞临某目标的上空，以便进行航空摄影，试求飞机飞至该目标正上方时摄影机转动的角速度（图2.9）．

]
#solution[
我们把该目标取为坐标原点，设飞机和目标的水平距离为 $x$, 显然它是时间 $t$ 的函数 $x = x\(t\)$. 现在要求出飞机在目标正上方时，$frac(thin upright(d) theta, thin upright(d) t)$ 之值，为此，先找出 $theta$ 和 $x$ 的关系，从图2.9中可以看出 $ tan theta = 2 / x\,quad 0 < theta lt.eq pi / 2 $

$therefore quad theta = arctan 2 / x$ 于是 $ frac(thin upright(d) theta, thin upright(d) t) = frac(- 2, x^2 + 4) frac(thin upright(d) x, thin upright(d) t) $ #noindent;但根据题意知道 $frac(thin upright(d) x, thin upright(d) t) = - 200$, 这里负号表示 $x$ 在减小，故得 $ frac(thin upright(d) theta, thin upright(d) t) = frac(400, x^2 + 4) $ #noindent;当飞机在目标正上方时，即 $x = 0$ 时，$frac(thin upright(d) theta, thin upright(d) t) = 100 upright("弧度/时")$⁠，将弧度化为角度即为 $frac(thin upright(d) theta, thin upright(d) t) = 5 / pi upright("度/秒")$

]
#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("5-09");], caption: []), figure([#fig("5-10");], caption: []))));

#example[
有一底半径为5cm, 高为12cm的正圆锥形容器（图2.10）, 以每秒2$upright(c m)^3$ 的速度往容器中倒水，试求容器水位等于锥高一半时，水面上升速度．

]
#solution[
设在某时刻 $t$, 容器水高为 $y$, 则此时水的体积 $V$ 为 $ V & = frac(pi R^2 h, 3) - frac(pi r^2, 3)\(h - y\)\
 & = pi / 3 dot.op 5^2 dot.op 12 - frac(pi r^2, 3)\(12 - y\)\
 & = 100 pi - frac(pi r^2, 3)\(12 - y\) $ #noindent;而 $ r / R = frac(h - y, h) $ #noindent;即 $ r = R / h\(h - y\)= 5 / 12\(12 - y\) $ #noindent;代入上式，得 $ V & = 100 pi - pi / 3 dot.op 5^2 / 12^2\(12 - y\)^3\
 & = 100 pi - frac(25 pi, 432)\(12 - y\)^3 $ #noindent;又由题设知：$V = 2 t$⁠，所以 $ 2 t = 100 pi - frac(25 pi, 432)\(12 - y\)^3 $ #noindent;即#numbered-eq($ t = 50 pi - frac(25 pi, 864)\(12 - y\)^3 $);#noindent;这就确定了水的高度与时间 $t$ 的关系，水面上升速度就是 $y$ 关于时间 $t$ 的变化率，也就是 $frac(thin upright(d) y, thin upright(d) t)$⁠．根据反函数求导法则，有 $ frac(thin upright(d) y, thin upright(d) t) = frac(1, frac(thin upright(d) t, thin upright(d) y)) $ #noindent;由 (2.8) 得 $ frac(thin upright(d) t, thin upright(d) y) = - frac(25 pi, 864) dot.op 3\(12 - y\)^2\(12 - y\)' = frac(25 pi, 288)\(12 - y\)^2 $

$therefore quad frac(thin upright(d) y, thin upright(d) t) = frac(288, 25 pi\(12 - y\)^2)$

当 $y = 1 / 2 h = 6$ 时，$ frac(thin upright(d) y, thin upright(d) t) class("closing", stretch(|, size: #1.8em))_(y = 6) = frac(288, 25 times 36 pi) approx 0.102\(upright(c m\/s)\) $

答：水面上升速度为每秒0.102厘米．

]
#exercise[
+ #block(sticky: true)[求下列函数的微商：]

  #cols(2)[
  + $arcsin x / 4$

  + $arccos x^2$

  + $arctan 1 / x$

  + $arcsin sqrt(x)$

  + $\(arcsin x\)^2$

  + $arctan\(tan x\)$

  + $arctan frac(2 x, 1 - x^2)$

  + $arctan\(2 tan x\)$

  + $x^2 "arccot" x / a$

  + $ln sqrt(1 + 4 x^2) dot.op "arccot" frac(1 - x, 1 + x)$

  + $frac(1 - arccos 2 x, arctan x)$

  + $upright(a r c c s c) thin x$

  ]

+ 证明 $ frac(thin upright(d), thin upright(d) x) lr(\{ arctan (frac(sin x, cos 2 x)) \}) = frac(3 cos x - cos 3 x, 2\(1 - sin x sin 3 x\)) $

+ 求下列函数的导数：

  + $arcsin frac(6 x^2, sqrt(4 + 81 x^8))$

  + $arctan frac(1, 1 - 3 x^2) - arctan frac(1, 1 + 3 x^2)$

  + $"arccot" frac(4 sqrt(x), 1 - 4 x)$

+ 一圆锥形容器，深10尺，上顶圆半径为4尺；求

  + 灌入水时，水的体积 $V$ 对水面高度 $h$ 的变化率；

  + 体积 $V$ 对容器截面圆半径 $R$ 的变化率．

+ 一圆锥形容器底面朝上放着，它的顶角为 $2 arctan 3 / 4$, 今向里面倒进某种液体，试求

  + 当液面半径 $r$ 为3, 半径增加的速度 $frac(thin upright(d) r, thin upright(d) t)$ 为 $1 / 4$ 时，体积增加的速度 $frac(thin upright(d) V, thin upright(d) t)$⁠；

  + 当液面半径为6, 体积增加的速度为24时，半径增加的速度．

+ 水从高为18厘米，底半径为6厘米的圆锥形漏斗中流入半径为5厘米的圆柱形筒内．已知此漏斗中水深为12厘米时，漏斗中水面的下降速度为1厘米/分，求此时圆筒中水面的上升速度．

+ 底数 $a$ 为什么值时，直线 $y = x$ 才能与对数曲线 $y = log_a x$ 相切？在何处相切？

+ 求曲线 $y = e^(- x)$ 上的一点，使过该点的切线与直线 $y = - e x$ 平行，并写出该点的法线方程．

+ 求曲线 $y = 1 / 2\(1 + 2 x^2 plus.minus sqrt(1 + 4 x^2)\)$ 上横坐标 $x = u$ 的点处的切线方程．这切线还与曲线交于何处？$y$ 的反函数为何？

]
=== 隐函数的导数
到现在为止，我们所讨论的函数都是可以由自变量明显地表示出来的函数，例如，方程 $y = x^3 + 1$ 就定义了一个明显的函数 $f$, 这里 $f\(x\)= x^3 + 1$. 这种函数叫做显函数．但是并不是所有的函数都可以用这种明显的表达式来定义的，例如由下面的 $x\,y$ 的方程 $ x^3 - x = y^3 - y^2 + 24 $ #noindent;就不容易解出用 $x$ 表示 $y$ 的解，或用 $y$ 表示 $x$ 的解．但是，却有可能存在一个函数 $f$, 使得方程 $ x^3 - x = f^3\(x\)- f^2\(x\)+ 24 $ #noindent;对于函数 $f$ 的定义域中的一切 $x$ 值都成立，这样一个函数，如果存在的话，就叫做被这个方程定义的隐函数．最简的情形是二元一次方程：$ A x + B y + C = 0 $ #noindent;当 $B eq.not 0$ 时，就定义一个隐函数 $f : thick bb(R) mapsto bb(R)$, 这里 $f\(x\)= - A / B x - C / B$.

应该注意：

+ 方程 $F\(x\,y\)= 0$ 的解有可能不存在，例如方程 $x^2 + y^2 + 1 = 0$ 没有实数解，因此，由它不能定义一个隐函数．

+ 由方程 $F\(x\,y\)= 0$ 可能定义几个函数．例如，由方程 $x^2 + y^2 = 16$ 就定义了两个函数：$ f_1\(x\)= sqrt(16 - x^2)\,#h(2em) x in\[- 4\,4\] $ #noindent;和 $ f_2\(x\)= - sqrt(16 - x^2)\,#h(2em) x in\[- 4\,4\] $

#blk[定义][
方程#numbered-eq($ F\(x\,y\)= 0 $);#noindent;给出了变元 $x\,y$ 之间的一个关系．如果存在一个函数 $y = f\(x\)$, 或 $x = g\(y\)$ 使得对于函数的定义域中的一切值，等式 $F\(x\,f\(x\)\)= 0$ 或 $F\(g\(y\)\,y\)= 0$ 恒成立，我们就说方程 (2.9) 定义了一个#strong[隐函数]：$ y = f\(x\)#h(2em) upright("或") #h(2em) x = g\(y\) $

]
要对方程 (2.9) 给出的隐函数求导数，通常的办法是直接对这个方程求导数，而不是先解出显函数，再来求导数．

#example[
设 $x y + x^2 - 1 = 0$⁠，求 $y'_x$.

]
#solution[
先把 $y$ 看成 $x$ 的函数，即 $y = f\(x\)$, 然后，在等式 $x f\(x\)+ x^2 - 1 = 0$ 的两边对 $x$ 求导数，得到 $ \(x dot.op f\(x\)\)' +\(x^2\)' & = 0\
x f'\(x\)+ f\(x\)+ 2 x & = 0 $

$therefore quad f'\(x\)= - frac(2 x + f\(x\), x) = - frac(2 x + frac(1 - x^2, x), x) = - frac(1 + x^2, x^2)$

]
#example[
方程 $x^2 + y^2 = 16$ 定义了两个可微函数：$y = sqrt(16 - x^2)$ 和 $y = - sqrt(16 - x^2)\,thick x in\[- 4\,4\]$. 求每一个函数的导数．

]
#solution[
我们用 $f\(x\)$ 代表上面两个函数中的任何一个，则 $ x^2 + f^2\(x\)= 16\,#h(2em) x in\[- 4\,4\] $ #noindent;对上面等式的两边微分，得到 $ 2 x + 2 f\(x\)dot.op f'\(x\) & = 0\
f'\(x\) & = - frac(x, f\(x\)) $ #noindent;即 $ (sqrt(16 - x^2))' & = - x / sqrt(16 - x^2)\
(- sqrt(16 - x^2))' & = x / sqrt(16 - x^2)\,#h(2em) x in\(- 4\,4\) $

]
#rmk[
应用这个方法求隐函数的导数时，我们作了两点假设：

+ 存在一个由方程 $F\(x\,y\)= 0$ 定义的函数；

+ 这样定义的函数是可微的．

#noindent;至于在什么条件下，这种假设是合理的问题，已经超出了本书的范围，故不在此讨论．

]
#example[
求证椭圆 $x^2 / a^2 + y^2 / b^2 = 1$ 在点 $\(x_0\,y_0\)$ 处切线的方程为 $frac(x_0 x, a^2) + frac(y_0 y, b^2) = 1$.

]
#proof[
$ (x^2 / a^2 + y^2 / b^2)'_x & =\(1\)'_x\
frac(2 x, a^2) + frac(2 y, b^2) dot.op y'_x & = 0 $ #noindent;若 $y eq.not 0$⁠，则：$ y'_x = - frac(b^2 x, a^2 y) $ #noindent;于是，在点 $\(x_0\,y_0\)$ 处（这里 $y_0 eq.not 0$⁠）的切线方程为 $ y - y_0 = - frac(b^2 x_0, a^2 y_0)\(x - x_0\) $ #noindent;即：$b^2 x_0 x + a^2 y_0 y = b^2 x_0^2 + a^2 y_0^2$

$because quad$ 点 $\(x_0\,y_0\)$ 在椭圆上，

$therefore quad b^2 x_0^2 + a^2 y_0^2 = a^2 b^2$⁠，因此，所求切线方程是 $ b^2 x_0 x + a^2 y_0 y = a^2 b^2 $ #noindent;也就是 $ frac(x_0 x, a^2) + frac(y_0 y, b^2) = 1 $

若 $y = 0$ 则 $x = plus.minus a$, 显然在点 $\(- a\,0\)$ 和点 $\(a\,0\)$ 处的切线方程分别是 $x = - a$, $x = a$, 它们是方程 $frac(x_0 x, a^2) + frac(y_0 y, b^2) = 1$ 的特殊形式．

]
#example[
如果将抛物线 $y^2 = 2 p x$ 绕它的对称轴旋转成旋转抛物面，那么与对称轴平行的光线射到曲面上，经曲面反射后通过焦点，试证明之．

]
#proof[
从物理学知道，光线经镜面反射后，要服从光的反射定律：

+ 在均匀介质中，光沿直线传播．

+ 当光线碰到平面镜时，光线要反射．入射线与镜面法线夹角（记作 $i$⁠）等于反射线与镜面法线的夹角（记作 $r$⁠），见图2.11, 角 $i$ 称为入射角，角 $r$ 称为反射角．

+ 光从曲面镜的反射也遵守同样的法则：$ upright("入射角") i = upright("反射角") r $ #noindent;此时镜面的法线定义为与镜面在入射点的切线相垂直的直线．

#figure([#fig("5-11");

  ],
  caption: [
  ]
)

假设光线经位于 $x y$ 平面上的抛物线 $y^2 = 2 p x$ 形的镜面反射．当入射线与x轴平行且与抛物线交于 $P_1\(x_1\,y_1\)$ 点时，我们要求反射线的方程，并证明它通过焦点 $F (p / 2 \, 0)$. 如果过 $P_1\(x_1\,y_1\)$ 点的切线与 $x$ 轴成 $theta$ 角，那么平行于 $x$ 轴的入射光线与法线的夹角是 $90 degree - theta$. 由光的反射定律，反射光线与法线的夹角也是 $90 degree - theta$. 于是，从图2.12上看出，反射光线与 $x$ 轴的夹角是 $2 theta$.

现在，在方程 $y^2 = 2 p x$ 的两边对 $x$ 求导数，得到 $ 2 y y' = 2 p quad arrow.r.double quad y' = frac(2 p, 2 y) = p / y $ #noindent;所以，由导数的几何意义得出，在 $P_1\(x_1\,y_1\)$ 点的切线的斜率是 $ tan theta = y'_(x_1) = p / y_1 $ #noindent;于是反射光线的斜率是 $ tan 2 theta = frac(2 tan theta, 1 - tan^2 theta) & = frac(2 dot.op p / y_1, 1 - p^2 / y_1^2)\
 & = frac(2 p y_1, y_1^2 - p^2) = frac(2 p y_1, 2 p x_1 - p^2) = frac(2 y_1, 2 x_1 - p) $ #noindent;从而，得出反射线方程 $ y - y_1 = frac(2 y_1, 2 x_1 - p)\(x - x_1\) $ #noindent;令 $y = 0$, 得到反射光线与 $x$ 轴交点的横坐标，$ 0 - y_1 = frac(2 y_1, 2 x_1 - p)\(x - x_1\)quad arrow.r.double quad x = p / 2 $ #noindent;即反射线通过焦点 $F (p / 2 \, 0)$. 由于 $P_1\(x_1\,y_1\)$ 是抛物线上任意一点，所以只要入射光线与 $x$ 轴平行，反射光线必通过焦点．如果把光源放在焦点 $F (p / 2 \, 0)$ 上，那么从焦点发出的光线经抛物线镜面反射后的反射光线是与对称轴（$x$ 轴）平行的光线．我们常利用这个原理获得平行光．

]
#figure([#fig("5-12");

  ],
  caption: [
  ]
)

#exercise[
+ 求下列隐函数在指定点的导数 $frac(thin upright(d) y, thin upright(d) x)$:

  + $y = cos x + 1 / 2 sin y$, 点 $(pi / 2 \, 0)$

  + $y e^x + ln y = 1$, 点 $(0 \, 1)$

  + $x^2 + x y + y^2 = 1$, 点 $(1 \, - 1)$

  + $x^2 y^2 + x^2 + y^2 = 9$, 点 $(1 \, 2)$

+ #block(sticky: true)[求下列隐函数的导数 $frac(thin upright(d) y, thin upright(d) x)$:]

  #cols(2)[
  + $x^2 / a^2 + y^2 / b^2 = 1$

  + $y^2 = 8 x$

  + $x^2 = 2 y$

  + $sqrt(x) + sqrt(y) = 1$

  + $x^3 + y^3 = a^3$

  + $x^(tfrac(2, 3)) + y^(tfrac(2, 3)) = a^(tfrac(2, 3))$

  + $y - cos\(x + y\)= 0$

  + $y = x + arctan y$

  + $y = 1 - ln\(x + y\)+ e^y$

  + $arctan y / x = ln sqrt(x^2 + y^2)$

  ]

+ 求下列方程在指定点的导数 $frac(thin upright(d) y, thin upright(d) x)$:

  + $x - sqrt(x y) + y = 2$⁠，点 $\(x_1\,y_1\)$

  + $\(a x\)^(tfrac(2, 3)) -\(b y\)^(tfrac(2, 3)) =\(a^2 + b^2\)^(tfrac(2, 3))$⁠，点 $\(x_0\,y_0\)$

  + $\(x + y\)^(tfrac(2, 3)) +\(x - y\)^(tfrac(2, 3)) = 2 a^(tfrac(2, 3))$ 在 $x = 0$ 的点；在 $x = y$ 的点；在 $x = - y$ 的点

  + $x^2 + x y + y^2 = c^2$⁠，在斜率等于 $- 1$ 的点

+ 若 $x sqrt(y) + y sqrt(x) = c$⁠，求 $frac(thin upright(d) y, thin upright(d) x)$ 和 $frac(thin upright(d) x, thin upright(d) y)$.

+ 求椭圆 $x^2 + 4 y^2 = 9$ 的切线方程，使它和直线 $2 x + 3 y = 0$ 平行．

+ 曲线 $y =\(x - 2\)\(x - 3\)\(x - 4\)$ 和 $x$ 轴交于 $P\(2\,0\)$, $Q\(3\,0\)$ 和 $R\(4\,0\)$ 点．

  + 求证在 $P$ 点和 $R$ 点处的切线互相平行；

  + 求曲线在 $Q$ 点处的法线与 $y$ 轴的交点．

+ 求曲线 $2 x^3 - x y + 8 = 0$ 上的 $P$ 点，使在该点的切线通过原点，过 $P$ 点的切线与曲线交于另一点 $Q$ 的坐标．

+ #lead-list(none, 2)[
  + 求证直线 $ell x + m y + n = 0$ 与椭圆 $x^2 / a^2 + y^2 / b^2 = 1$, 双曲线 $x^2 / a^2 - y^2 / b^2 = 1$, 抛物线 $y^2 = 2 p x$ 相切的条件分别是 $a^2 ell^2 + b^2 m^2 = n^2$, $a^2 ell^2 - b^2 m^2 = n^2$, $p m^2 = 2 n ell$.

  + 证明对于任意 $k$, 直线 $y = k x + sqrt(a^2 k^2 + b^2)$ 是椭圆 $x^2 / a^2 + y^2 / b^2 = 1$ 的切线．
  ]

+ #lead-list(none, 2)[
  + 求过 $P\(5\,3\)$ 点与椭圆 $x^2 / 16 + y^2 = 1$ 相切的直线方程.

  + 求过 (a) 中的两切点的直线方程．
  ]

+ 椭圆 $x^2 / 16 + y^2 = 1$ 的切线与 $x$ 轴成 $60 degree$ 角，求该切线的方程．

+ 通过双曲线 $x^2 / a^2 - y^2 / b^2 = 1$ 的焦点而与横轴垂直的弦的两个端点分别记作 $A$ 和 $B$, 求证过 $A$⁠、$B$ 两点的切线交于横轴上的点 $Q$, 且 $Q$ 点离中心的距离等于 $a / e$.

+ 求证过双曲线上一点 $P$ 的切线与过 $P$ 点的焦点半径成等角．

]
=== 高阶导数
对于给定的可微函数 $f\(x\)$, 它的导数 $f'\(x\)$ 仍是 $x$ 的函数．如果 $f'\(x\)$ 是可微的，它的导函数 $\(f'\(x\)\)' = f''\(x\)$ 或 $f^(\(2\))\(x\)$ 称为 $f\(x\)$ 的#strong[二阶导函数]，……如此类推，$f\(x\)$ 的 $n$ 阶导函数 $f^(\(n\))\(x\)$, 可以归纳地定义为：$ f^(\(1\))\(x\) & = f'\(x\)\
f^(\(n\))\(x\) & = (f^(\(n - 1\)) \( x \))'\,#h(2em) n = 2\,3\,dots.h $ #noindent;因此，求高阶导函数，实际上就是连续地求一阶导函数．

高阶导函数有时也记作 $frac(thin upright(d)^n y, thin upright(d) x^n)$ 或 $frac(thin upright(d)^n, thin upright(d) x^n) f\(x\)$. 例如 $ f''\(x\) & = frac(thin upright(d), thin upright(d) x) f'\(x\)= frac(thin upright(d), thin upright(d) x) (frac(thin upright(d) y, thin upright(d) x)) = frac(thin upright(d)^2 y, thin upright(d) x^2)\
f^(\(3\))\(x\) & = frac(thin upright(d), thin upright(d) x) (frac(thin upright(d)^2 y, thin upright(d) x^2)) = frac(thin upright(d)^3 y, thin upright(d) x^3) $

二阶导数有它的实际意义，例如动点的速度 $v$ 等于它所经过的路程 $S$ 对于时间 $t$ 的变率：$v = frac(thin upright(d) S, thin upright(d) t)$⁠；而加速度 $a$ 是速度 $v$ 对于时间 $t$ 的变率：$a = frac(thin upright(d) v, thin upright(d) t)$⁠，这就是说加速度是路程 $S$ 对于时间 $t$ 的二阶导数：$a = frac(thin upright(d)^2 S, thin upright(d) t^2)$⁠．在以后的学习中，我们还会知道二阶导数有它的重要的几何意义．我们已经知道一次函数 $f\(x\)= a x + b thick\(a eq.not 0\)$ 的图象是一条直线，而它的二阶导数 $f''\(x\)=\(f'\(x\)\)' =\(a\)' = 0$. 因此，若一函数的二阶导数 $f''\(x\)eq.not 0$, 那么它的图象就不是直线．

#example[
设 $y = frac(x, 1 - x)$⁠，求 $frac(thin upright(d)^2 y, thin upright(d) x^2)$, $frac(thin upright(d)^3 y, thin upright(d) x^3)$.

]
#solution[
$ y & = frac(x, 1 - x) = - 1 + frac(1, 1 - x)\
frac(thin upright(d) y, thin upright(d) x) & = - frac(\(1 - x\)', \(1 - x\)^2) = frac(1, \(1 - x\)^2) $ $ frac(thin upright(d)^2 y, thin upright(d) x^2) & = frac(-\[\(1 - x\)^2\]', \(1 - x\)^4) = frac(- 2\(1 - x\)\(- 1\), \(1 - x\)^4) = frac(2, \(1 - x\)^3)\
frac(thin upright(d)^3 y, thin upright(d) x^3) & = frac(- 2\[\(1 - x\)^3\]', \(1 - x\)^6) = frac(- 2 dot.op 3\(1 - x\)^2\(- 1\), \(1 - x\)^6) = frac(6, \(1 - x\)^4) $

]
#example[
若 $f\(x\)= sqrt(a^2 + x^2)$⁠，求 $f''\(x\)$

]
#solution[
#strong[解法1:] $ f'\(x\) & = 1 / 2\(a^2 + x^2\)^(- tfrac(1, 2))\(a^2 + x^2\)'\
 & = 1 / 2\(a^2 + x^2\)^(- tfrac(1, 2))\(2 x\)= x / sqrt(a^2 + x^2) $ $ f''\(x\) & = frac(sqrt(a^2 + x^2) dot.op x' - x (sqrt(a^2 + x^2))', a^2 + x^2)\
 & = frac(sqrt(a^2 + x^2) - x^2 / sqrt(a^2 + x^2), a^2 + x^2)\
 & = frac(a^2 + x^2 - x^2, \(a^2 + x^2\)^(tfrac(3, 2))) = frac(a^2, \(a^2 + x^2\)^(tfrac(3, 2))) $

#strong[解法2:] 将原来的函数变形为隐函数，用隐函数微分法求二阶导数．

设 $y = sqrt(a^2 + x^2)$, 则 $y^2 = a^2 + x^2$, 对 $x$ 微分得：$ y dot.op y'_x = x $ #noindent;再对 $x$ 微分得：$ y dot.op y''_x +\(y'_x\)^2 = 1 $ #noindent;将 $y' = x / y$ 代入，得 $ y dot.op y''_x + x^2 / y^2 = 1 $ #noindent;因此：$ y''_x = frac(1 - x^2 / y^2, y) = frac(1 - frac(x^2, x^2 + a^2), sqrt(a^2 + x^2)) = frac(a^2, \(a^2 + x^2\)^(tfrac(3, 2))) $

]
#example[
若 $y = x^2 / sqrt(x^2 + 1)$⁠，求证：$ \(x^2 + 1\)frac(thin upright(d)^2 y, thin upright(d) x^2) + 3 x frac(thin upright(d) y, thin upright(d) x) - y = 2 sqrt(x^2 + 1) $

]
#proof[
将原式去分母 $ y sqrt(x^2 + 1) = x^2 $ #noindent;对 $x$ 微分得 $ sqrt(x^2 + 1) dot.op frac(thin upright(d) y, thin upright(d) x) + y dot.op x / sqrt(x^2 + 1) = 2 x $ #noindent;两边乘以 $sqrt(x^2 + 1)$⁠，得到 $ \(x^2 + 1\)dot.op frac(thin upright(d) y, thin upright(d) x) + y dot.op x = 2 x sqrt(x^2 + 1) $ #noindent;再对 $x$ 微分得：$ \(x^2 + 1\)frac(thin upright(d)^2 y, thin upright(d) x^2) +\(2 x\)dot.op frac(thin upright(d) y, thin upright(d) x) + x frac(thin upright(d) y, thin upright(d) x) + y = 2 sqrt(x^2 + 1) + frac(2 x^2, sqrt(x^2 + 1)) $ #noindent;即：$ \(x^2 + 1\)frac(thin upright(d)^2 y, thin upright(d) x^2) + 3 x frac(thin upright(d) y, thin upright(d) x) + y = 2 sqrt(x^2 + 1) + 2 y $ #noindent;因此：$ \(x^2 + 1\)frac(thin upright(d)^2 y, thin upright(d) x^2) + 3 x frac(thin upright(d) y, thin upright(d) x) - y = 2 sqrt(x^2 + 1) $

]
有时需要求一些函数的 $n$ 阶导数，但是在一般情形下，函数的 $n$ 阶导数是如此的复杂，以致求函数的 $n$ 阶导数的通式是办不到的，然而有一些函数，我们不难写出它的 $n$ 阶导数的通式．

#example[
设 $y =\(a x + b\)^m$, 求 $y^(\(n\)) thick\(m > n\)$

]
#solution[
$ y' & = m a\(a x + b\)^(m - 1)\
y'' & = m\(m - 1\)a^2\(a x + b\)^(m - 2)\
y^(\(3\)) & = m\(m - 1\)\(m - 2\)a^3\(a x + b\)^(m - 3)\
dots.h.c quad & dots.h.c quad dots.h.c $ #noindent;由此推知：$ y^(\(n\)) = m\(m - 1\)dots.h.c\(m - n + 1\)a^n\(a x + b\)^(m - n) = frac(m !, \(m - n\)!) a^n\(a x + b\)^(m - n) $ #noindent;这个结果的正确性可用数学归纳法证明．

]
#example[
设 $y = frac(1, x^2 - 4 x + 3)$⁠，求 $y^(\(n\))$.

]
#solution[
$ y = frac(1, x^2 - 4 x + 3) = 1 / 2 (frac(1, x - 3) - frac(1, x - 1)) $ $ y' & = 1 / 2 [frac(- 1, \(x - 3\)^2) - frac(- 1, \(x - 1\)^2)] = frac(\(- 1\), 2) [frac(1, \(x - 3\)^2) - frac(1, \(x - 1\)^2)]\
y'' & = frac(\(- 1\), 2) [frac(- 2\(x - 3\), \(x - 3\)^4) - frac(- 2\(x - 1\), \(x - 1\)^4)] = frac(\(- 1\)^2 2 !, 2) [frac(1, \(x - 3\)^3) - frac(1, \(x - 1\)^3)]\
dots.h.c quad & dots.h.c quad dots.h.c $ #noindent;假设一般地有：$ y^(\(n\)) = frac(\(- 1\)^n n !, 2) [frac(1, \(x - 3\)^(n + 1)) - frac(1, \(x - 1\)^(n + 1))] $ #noindent;那么：$ y^(\(n + 1\)) & = frac(\(- 1\)^n n !, 2) [frac(-\(n + 1\)\(x - 3\)^n, \(x - 3\)^(2\(n + 1\))) - frac(-\(n + 1\)\(x - 1\)^n, \(x - 1\)^(2\(n + 1\)))]\
 & = frac(\(- 1\)^(n + 1)\(n + 1\)!, 2) [frac(1, \(x - 3\)^(n + 2)) - frac(1, \(x - 1\)^(n + 2))] $ #noindent;即仍有此规律．因此，对于任何自然数 $n$⁠，都有 $ y^(\(n\)) = frac(\(- 1\)^n n !, 2) [frac(1, \(x - 3\)^(n + 1)) - frac(1, \(x - 1\)^(n + 1))] $ #noindent;成立．

]
#example[
设 $y = sin\(a x + b\)$⁠，求 $y^(\(n\))$.

]
#solution[
$ y' = a cos\(a x + b\)= a sin (a x + b + pi / 2) $ #noindent;因此，求 $sin\(a x + b\)$ 的导数是将函数乘以 $a$⁠，同时将幅角加上 $pi / 2$.

不难推知：$ y^(\(n\)) = a^n sin (a x + b + frac(n pi, 2)) $ #noindent;请读者用数学归纳法证明这个猜想正确．

]
#example[
设 $f\(x\)= a_0 + a_1 x + a_2 x^2 + dots.h.c + a_n x^n$⁠，$h$ 为任取非零实数，求证：$ f\(a + h\)= f\(a\)+ f'\(a\)h + frac(f''\(a\), 2 !) h^2 + dots.h.c + frac(f^(\(n\))\(a\), n !) h^n $

]
#proof[
已给 $f\(x\)= a_0 + a_1 x + dots.h.c + a_n x^n$⁠，令 $x = a + h$⁠，并按 $h$ 的升幂展开每一项，得到一个形式如#numbered-eq($ f\(a + h\)= C_0 + C_1 h + C_2 h^2 + dots.h.c + C_n h^n $);#noindent;的表达式．

我们将说明，系数 $C_0\,C_1\,dots.h\,C_n$ 由 $f\(x\)$ 在点 $a$ 的函数值 $f\(a\)$ 以及直到 $n$ 阶为止的各阶导数在 $x = a$ 的值表示，即 $ C_0 = f\(a\)\,quad C_i = frac(1, i !) f^(\(i\))\(a\)\,#h(2em) i = 1\,2\,dots.h\,n $

为了证明这个事实，(2.10) 中把 $h$ 看作自变量，首先令 $h arrow.r 0$, 立刻得到 $ f\(a\)= C_0 $

然后，应用复合函数求导法则，对方程 (2.10), 关于 $h$ 逐次求导，依次得到：$ f'\(a + h\) & = C_1 + 2 C_2 h + 3 C_3 h^2 + dots.h.c + n C_n h^(n - 1)\
f''\(a + h\) & = 2 C_2 + 3 times 2 C_3 h + dots.h.c + n\(n - 1\)C_n h^(n - 2)\
f^(\(3\))\(a + h\) & = 3 ! C_3 + frac(4 !, 1 !) C_4 h + frac(5 !, 2 !) C_5 h^2 + dots.h.c + frac(n !, \(n - 3\)!) C_n h^(n - 3)\
dots.h.c quad & dots.h.c quad dots.h.c\
f^(\(i\))\(a + h\) & = i ! C_i + frac(\(i + 1\)!, 1 !) C_(i + 1) h + dots.h.c + frac(n !, \(n - i\)!) C_n h^(n - i)\
dots.h.c quad & dots.h.c quad dots.h.c\
f^(\(n - 1\))\(a + h\) & =\(n - 1\)! C_(n - 1) + n ! C_n h\
f^(\(n\))\(a + h\) & = n ! C_n $ #noindent;把 $h = 0$ 代入上面一个方程中，便得到 $ C_1 = f^(\(1\))\(a\)\,C_2 = frac(f^(\(2\))\(a\), 2 !)\,C_3 = frac(f^(\(3\))\(a\), 3 !)\,dots.h\,C_i = frac(f^(\(i\))\(a\), i !)\,dots.h\,C_n = frac(f^(\(n\))\(a\), n !) $

把上面 $C_0 = f\(a\)\,thick C_i = frac(f^(\(i\))\(a\), i !)\,quad i = 1\,2\,dots.h\,n$ 代入 (2.10) 中，最后得到：#numbered-eq($ f\(a + h\)= f\(a\)+ f'\(a\)h + frac(f^(\(2\))\(a\), 2 !) h^2 + dots.h.c + frac(f^(\(n\))\(a\), n !) h^n $);#noindent;这个公式叫做多项式的泰勒公式．

在 (2.11) 中，令 $a + h = x$, 则 (2.11) 可以改写成 $ f\(x\)= f\(a\)+ f'\(a\)\(x - a\)+ frac(f^(\(2\))\(a\), 2 !)\(x - a\)^2 + dots.h.c + frac(f^(\(n\))\(a\), n !)\(x - a\)^n $

]
#exercise[
+ #block(sticky: true)[求下列函数的 $n$ 阶导数：]

  #cols(2)[
  + $f\(x\)= frac(1 - x, 1 + x)$

  + $f\(x\)= sin^2 x$

  ]

+ 若 $y = tan\(m dot.op arctan x\)$⁠，验证 $ \(1 + x^2\)frac(thin upright(d)^2 y, thin upright(d) x^2) = 2\(m y - x\)frac(thin upright(d) y, thin upright(d) x) $

+ 若 $y = frac(A cos m x + B sin m x, x^n)$⁠，其中 $A\,B\,m\,n$ 是常数，验证 $ frac(thin upright(d)^2 y, thin upright(d) x^2) + 2 n / x frac(thin upright(d) y, thin upright(d) x) + [frac(n\(n - 1\), x^2) + m^2] y = 0 $

+ 若 $h\(x\)= f\(x\)g\(x\)$⁠，其中 $f\(x\)$, $g\(x\)$ 和 $h\(x\)$ 都是 $n$ 阶可微，求证：$ h^(\(n\))\(x\) & = f\(x\)dot.op g^(\(n\))\(x\)+ C_n^1 f^(\(1\))\(x\)g^(\(n - 1\))\(x\)+ dots.h.c\
   & #h(2em) eqph + C_n^h f^(\(h\))\(x\)g^(\(n - h\))\(x\)+ dots.h.c\
   & #h(2em) eqph + C_n^(n - 1) f^(\(n - 1\))\(x\)g^(\(1\))\(x\)+ C_n^n f^(\(n\))\(x\)g\(x\) $

+ #block(sticky: true)[求下列函数的 $n$ 阶导数：]

  #cols(2)[
  + $f\(x\)= x ln x$

  + $f\(x\)= x e^x$

  + $f\(x\)= e^(a x) sin beta x$

  ]

+ 证明 $x^3 - 7 x^2 + 15 x - 9 = 0$ 有一个二重根．

+ 检验方程 $x^3 - 6 x^2 + 11 x - 6 = 0$ 有无重根？

+ 方程 $x^4 - 6 x^2 - 8 x - 3 = 0$ 有重根，解此方程．

+ 应用泰勒公式将多项式 $\(x + a\)^n$ 按 $x$ 的升幂展开．

+ 若 $f\(x\)= x^3 - 3 k x + 2 k + 8$ 在实数范围内能分解成一个二重因式，试求 $k$ 值和它的因式乘积．

]
=== 参数方程表示的函数的导数
用方程 $y = f\(x\)$ 来表示曲线在几何上受很大的限制：这样表示的曲线与平行于 $y$ 轴的任意直线相交不能多于一点．通常，把曲线分成可以表为 $y = f\(x\)$ 的若干部分来克服这个限制，例如，以原点为中心，$r$ 为半径的圆，可以由定义在闭区间 $\[- r\,r\]$ 上的两个函数 $y = sqrt(r^2 - x^2)$ 和 $y = - sqrt(r^2 - x^2)$ 给出．

曲线最直接和最灵活的描述法是参数表示．我们不把直角坐标 $x$ 或 $y$ 中的一个看成另一个的函数，而把两个坐标 $x$ 和 $y$ 都看成为第三个自变量 $t$ 的函数，$t$ 叫做#strong[参数]或#strong[参变量]．当 $t$ 在 $t$ 轴上或 $t$ 轴上的一个区间 $\[a\,b\]$ 变化时，由 $t$ 轴上的原象点，通过参数方程 $x = phi\(t\)$, $y = psi\(t\)$ 映射到曲线 $C$ 上的一点 $\(x\,y\)=\(phi\(t\)\,psi\(t\)\)$, 使得对应于 $t$ 的某个区间 $\[a\,b\]$ 或 $\(- oo\,oo\)$, 一对函数值 $x = phi\(t\)$, $y = psi\(t\)$ 定义的点集 $ class("opening", stretch(\{, size: #1.8em)) class("opening", stretch(\(, size: #1.2em)) phi\(t\)\,psi\(t\)class("closing", stretch(\), size: #1.2em)) class("normal", stretch(|, size: #1.8em)) t in\[a\,b\]class("closing", stretch(\}, size: #1.8em)) $ #noindent;就是曲线 $C$ 上的全部点，而且没有其他点．

在解析几何中，我们已经知道：

圆的参数方程是 $ x = a cos t\,#h(2em) y = a sin t $ #noindent;这里 $t$ 表示圆心角．

椭圆的参数方程是 $ x = a cos t\,#h(2em) y = b sin t quad\(a > b > 0\) $ #noindent;这里 $t$ 是偏心角．（图2.13）

#figure([#fig("5-13");

  ],
  caption: [
  ]
)

曲线 $C$ 可以有许多参数表示法，就好像同一条路可以有许多不同走法，例如抛物线 $y^2 = 2 p x$ 可以用在其上的点 $\(x\,y\)$ 的切线的斜率作参数，由于 $2 y y' = 2 p$, 所以抛物线 $y^2 = 2 p x$ 的参数方程是 $ x = frac(p, 2\(y'\)^2)\,#h(2em) y = p / y' $ #noindent;其中 $y' in\(- oo\,0\)union\(0\,oo\)$.

如果用 $1 / y' = cot theta$ 作参数，那么它的参数方程是 $ x = p / 2 cot^2 theta\,#h(2em) y = p cot theta $

我们也可以用 $frac(y, 2 p) = x / y = lambda\,quad lambda in\(- oo\,oo\)$ 作参数，于是又得一参数方程 $ x = 2 p lambda^2\,#h(2em) y = 2 p lambda $

#example[
讨论由参数方程 $ x = sin t\,#h(2em) y = cos^2 t\,quad t in\[0\,2 pi\] $ #noindent;所定义的曲线 $C$.

]
#solution[
因为 $sin^2 t + cos^2 t = 1$⁠，所以曲线 $C$ 在抛物线#numbered-eq($ x^2 + y = 1 $);#noindent;上．反过来，抛物线 (2.12) 并不与曲线 $C$ 一致，我们要说明限制在长方形区域 $R = \{ - 1 lt.eq x lt.eq 1\,thick 0 lt.eq y lt.eq 1 \}$ 内的抛物线 (2.12) 上的部分是曲线 $C$（图2.14）．

#figure([#fig("5-14");

  ],
  caption: [
  ]
)

事实上，$x = sin t$ 在闭区间 $\[0\,2 pi\]$ 上处处连续，且在闭区间 $[pi / 2 \, frac(3 pi, 2)]$ 上由1单调递减到 $- 1$⁠，因此根据反函数存在定理，对于每一个 $x in\[- 1\,1\]$⁠，存在唯一的一个 $t$⁠，使得 $sin t = x$ 成立，从而得到 $ y = 1 - x^2 = 1 - sin^2 t = cos^2 t in\[0\,1\] $ #noindent;这就说明了，点 $\(x\,1 - x^2\)thick\(x in\[- 1\,1\]\)$ 在曲线 $C$ 上，而且只有这些点在曲线 $C$ 上，换言之，在 (2.12) 上的除去这些点的其他任何一点不在曲线 $C$ 上．

]
在参数方程 $x = phi\(t\)$, $y = psi\(t\)$ 中，由于 $t$ 轴是有序的，我们可以用明显的方式把曲线 $C$ 的点规定一个次序或“指向”，即如果 $t_1 < t_2$⁠，那么由 $t_1$ 映射的点在由 $t_2$ 映射的点的前面．例如例2.38的曲线上的动点 $P$ 随着 $t$ 增加的方向这样运动：$P$ 点在 $t = 0$ 时，由点 $\(0\,1\)$ 开始移动到在 $t = pi / 2$ 时的 $\(1\,0\)$ 点，然后沿原路线返回移动到 $t = pi$ 时的 $\(0\,1\)$ 点，再继续移动到在 $t = frac(3 pi, 2)$ 时的 $\(- 1\,0\)$ 点，最后又返回到在 $t = 2 pi$ 时的 $\(0\,1\)$ 点．

如果函数 $phi\(t\)$, $psi\(t\)$ 的定义域是 $t$ 轴上的闭区间 $\[a\,b\]$, 而且在这区间上的 $t$ 的不同值对应曲线 $C$ 上不同的点，那么我们称 $C$ 为#strong[简单弧]，例2.38中的抛物线，由上面知道不是简单弧，而抛物线 $x = t$, $y = t^2\,thick t in\[0\,1\]$ 是简单弧的一个例子．

如果曲线 $C$ 上的始点 $P\(phi\(a\)\,psi\(a\)\)$ 与终点 $P\(phi\(b\)\,psi\(b\)\)$ 相同，并且除 $t = a$ 和 $t = b$ 外，在 $\[a\,b\]$ 上没有另外一对不同值对应曲线上同一点，那么曲线 $C$ 叫做#strong[简单闭曲线]．$x = a cos t$, $y = a sin t\,thick t in\[- pi\,pi\]$ 就是简单的闭曲线．

有时我们使用 $y = f\(x\)$ 表示曲线 $C$ 或 $C$ 的一部分是方便的，如果 $C$ 用参数方程 $x = phi\(t\)$, $y = psi\(t\)$ 给出，而对于曲线的一部分 $t_0 lt.eq t lt.eq t_1$, 函数 $phi\(t\)\,psi\(t\)$ 中的一个，譬如说 $x = phi\(t\)$ 是单调的和连续的，那么这样的表示法总是可能的，办法是先由 $x = phi\(t\)$ 解出它的反函数 $t = phi^(- 1)\(x\)$, 再代入 $y = psi\(t\)$ 中，便得到 $ y = psi (phi^(- 1) \( x \)) = f\(x\) $ #noindent;即 $y = f\(x\)$ 是由 $y = psi\(t\)$ 和 $t = phi^(- 1)\(x\)$ 复合而成的复合函数．

要求曲线 $C$ 的斜率，我们不必重新建立 $y$ 对 $x$ 的函数关系 $y = f\(x\)$, 再去求导，只须由方程组#numbered-eq($ display(cases(x = phi\(t\), y = psi\(t\))) $);#noindent;当 $frac(thin upright(d) phi, thin upright(d) t) eq.not 0$ 时，按照复合函数求导法则可以直接得到 $f'\(x\)$.

事实上，当 $phi'\(t\)eq.not 0$ 时，$t = phi^(- 1)\(x\)$ 的导数存在，并且是 $frac(thin upright(d) t, thin upright(d) x) = frac(1, phi'\(t\))$.

按照复合函数求导法则，得到 $ f'\(x\)= frac(thin upright(d) y, thin upright(d) t) dot.op frac(thin upright(d) t, thin upright(d) x) = frac(psi'\(t\), phi'\(t\)) $ #noindent;于是，当 $frac(thin upright(d) phi, thin upright(d) t) eq.not 0$ 时，就得到曲线 $C$ 的斜率：#numbered-eq($ frac(thin upright(d) y, thin upright(d) x) = frac(psi'\(t\), phi'\(t\)) $);#noindent;当 $frac(thin upright(d) psi, thin upright(d) t) eq.not 0$ 时，就得到#numbered-eq($ frac(thin upright(d) x, thin upright(d) y) = frac(phi'\(t\), psi'\(t\)) $);#noindent;因此，只要 $\[phi'\(t\)\]^2 +\[psi'\(t\)\]^2 eq.not 0$, 切线总是存在的：如果 $psi'\(t\)= 0$, 切线是水平的；如果 $phi'\(t\)= 0$, 切线是垂直的．

当曲线由参数方程组 (2.13) 给出，那么曲线上点 $\(x_0\,y_0\)$ 处的切线方程为#numbered-eq($ \(y - y_0\)frac(thin upright(d) x, thin upright(d) t) -\(x - x_0\)frac(thin upright(d) y, thin upright(d) t) = 0 $);

法线的斜率是 $- 1 / y'_x$⁠，因此法线方程为#numbered-eq($ \(x - x_0\)frac(thin upright(d) x, thin upright(d) t) +\(y - y_0\)frac(thin upright(d) y, thin upright(d) t) = 0 $);

#example[
求椭圆 $display(cases(x = a cos t, y = b sin t))$ 在点 $t$ 的切线方程和法线方程．

]
#solution[
椭圆在点t的切线方程，按照 (2.16) 得到 $ \(y - b sin t\)\(- a sin t\)-\(x - a cos t\)\(b cos t\)= 0 $ #noindent;化简得 $ y\(- a sin t\)- x\(b cos t\)+ a b = 0 $ #noindent;两边除以 $- a b$, 得到在点 $t$ 的切线方程 $ x / a cos t + y / b sin t = 1 $

在点 $t$ 的法线方程，按照 (2.17) 得到 $ \(x - a cos t\)\(- a sin t\)+\(y - b sin t\)\(b cos t\)= 0 $ #noindent;化简得 $ - a x sin t + b y cos t +\(a^2 - b^2\)sin t dot.op cos t = 0 $ #noindent;或 $ x a sin t - y b cos t - c^2 / 2 sin 2 t = 0 $

]
#example[
求曲线 $display(cases(x = t^2, y = t^3))$ 在点 $t$ 的切线方程，并求此切线与曲线的另一交点的坐标.

]
#solution[
在点 $t$ 的切线方程是 $ \(y - t^3\)\(2 t\)-\(x - t^2\)\(3 t^2\)= 0 $

若 $t eq.not 0$, 则得切线方程 $ 2 y - 3 t x + t^3 = 0 $ #noindent;设此切线与曲线交于 $\(T^2\,T^3\)$ 点，于是数 $T$ 满足等式 $ 2 T^3 - 3 t T^2 + t^3 = 0 $ #noindent;这是 $T$ 的三次方程，它表示切线与曲线相交于三个点，由于切点的 $t$ 值是它的二重根，根据根和系数的关系，得 $ 2 t + T = - frac(- 3 t, 2) quad arrow.r.double quad T = - 1 / 2 t $ #noindent;故切线与曲线的另一交点的坐标是 $(1 / 4 t^2 \, - 1 / 8 t^3)$

]
如果再假定 $phi''\(t\)$⁠，$psi''\(t\)$ 存在，则 $y$ 对 $x$ 的二阶导数可按照复合函数求导法及商的导数法来求：$ y'' = frac(thin upright(d) y', thin upright(d) x) & = frac(thin upright(d) y', thin upright(d) t) dot.op frac(thin upright(d) t, thin upright(d) x)\
 & = frac(thin upright(d), thin upright(d) t) (frac(psi'\(t\), phi'\(t\))) dot.op frac(1, phi'\(t\))\
 & = frac(phi'\(t\)psi''\(t\)- psi'\(t\)phi''\(t\), class("opening", stretch(\{, size: #1.2em)) phi'\(t\)class("closing", stretch(\}, size: #1.2em))^3) $

#exercise[
+ 设 $x = 1 / 2 p lambda^2$, $y = p lambda$ 是抛物线以 $lambda$ 为参数的方程，求在点 $lambda$ 的切线方程和法线方程．

+ 过点 $\(x_0\,y_0\)$ 作抛物线 $y^2 = 2 p x$ 的两条切线，设切点的参数为 $lambda_1$ 和 $lambda_2$, 求证 $ display(cases(p\(lambda_1 + lambda_2\)= 2 y_0, p lambda_1 lambda_2 = 2 x_0)) $

+ 过抛物线 $y^2 = 2 p x$ 的定长为 $c$ 的弦的两端作切线，求切线交点的轨迹方程．

+ 求曲线 $display(cases(x = t\(1 - t^2\), y = 1 + t^2))$ 在点 $t$ 的切线方程．

+ 曲线 $y^2 = x^3$ 上点 $P\(t^2\,t^3\)$ 的切线交 $x$ 轴于 $T$ 点，过 $T$ 点与 $P T$ 垂直的直线交 $y$ 轴于 $N$ 点，求证 $frac(O N^2, O T)$ 是一个与 $t$ 无关的常数，这里 $O$ 是原点．

+ 如果曲线 $a y^2 = x^3$ 上 $P\(a t^2\,a t^3\)$ 点的切线交曲线于另一点 $Q$, 交 $y$ 轴于 $R$ 点，

  + 求 $Q$ 点坐标；

  + 如果由点 $P$ 引 $x$ 轴的垂线的垂足为 $N$ 点，求证：$O Q$ 和 $R N$ 的斜率的绝对值相等．

+ #lead-list(none, 2)[
  + 求以 $a$ 为参数的抛物线系 $ y + 35 / 16 a = a^3 / 3 (x + frac(3, 4 a))^2 $ #noindent;的顶点的轨迹方程．

  + 证明对应于参数 $a$ 的抛物线与双曲线 $x y = - 7 / 6$ 相切于点 $(1 / a \, - frac(7 a, 6))$⁠，又与双曲线 $x y = 10 / 3$, 相切于点 $(- 2 / a \, - 5 / 3 a)$.
  ]

+ 试证曲线 $x = a\(cos t + t sin t\)$, $y = a\(sin t - t cos t\)$ 的每条法线都与圆 $x^2 + y^2 = a^2$ 相切

+ 若 $x = sec theta$ 和 $y = 2 tan theta$,

  + 求 $frac(thin upright(d) y, thin upright(d) x)$ 和 $frac(thin upright(d)^2 y, thin upright(d) x^2)$ 以 $theta$ 表示之；

  + 求证：$y^3 frac(thin upright(d)^2 y, thin upright(d) x^2) + 16 = 0$

+ 求证过椭圆 $x = a cos phi$, $y = b sin phi$ 上两点 $phi_1$⁠、$phi_2$ 的切线的交点的坐标为 $(a frac(cos frac(phi_1 + phi_2, 2), cos frac(phi_1 - phi_2, 2)) \, b frac(sin frac(phi_1 + phi_2, 2), cos frac(phi_1 - phi_2, 2)))$

]
=== 微分与变率（微商）
==== 微分的概念
当函数 $y = f\(x\)$ 的自变量 $x$ 在点 $x_0$ 处得到一个微小的改变量 $Delta x = x - x_0$ 时，函数 $y$ 的值得到相应的改变量，即#numbered-eq($ Delta y = f\(x_0 + Delta x\)- f\(x_0\) $);#noindent;函数的改变量 $Delta y$ 最能表现函数的特征，无论函数变化的大小，或者是函数在某一点的递增或递减的变化趋势，都是由它来刻画的．

从数的观点来看，一个变量就是一个可以取很多不同的值的符号，所以我们也可以把 $Delta x$ 看成一个新变量，这样 $Delta y$ 就是 $x_0$ 和 $Delta x$ 这两个变量的函数．如

#example[
设 $y = x^3$⁠，那么 $ Delta y =\(x_0 + Delta x\)^3 - x_0^3 = 3 x_0^2 Delta x + 3 x_0\(Delta x\)^2 +\(Delta x\)^3 $

]
#example[
设 $f\(x\)= x^2 - 1 / x$⁠，那么 $ Delta y & = [\( x + Delta x \)^2 - frac(1, x + Delta x)] - [x^2 - 1 / x]\
 & = 2 x Delta x +\(Delta x\)^2 + frac(Delta x, x\(x + Delta x\)) $

]
从上面的例子看出，通常 $Delta y = f\(x_0 + Delta x\)- f\(x_0\)$ 是一个很复杂的关系，但是如果函数 $f\(x\)$ 在点 $x_0$ 存在变率 $f'\(x_0\)$, 我们可以把 $Delta y$ 分解成一个线性部分和一个比 $Delta x$ 变小得更快的微量部分．事实上#numbered-eq($ f'\(x_0\)= lim_(Delta x arrow.r 0) frac(f\(x_0 + Delta x\)- f\(x_0\), Delta x) $);#noindent;我们用 $epsilon\(x_0\,Delta x\)$ 表示 $frac(Delta y, Delta x)$ 与 $f'\(x_0\)$ 的差，那么，我们可以写出#numbered-eq($ frac(f\(x_0 + Delta x\)- f\(x_0\), Delta x) = f'\(x_0\)+ epsilon\(x_0\,Delta x\) $);#noindent;这里因为 (2.19)，而有 $limits(lim)_(Delta x arrow.r 0) epsilon\(x_0\,Delta x\)= 0$.

将 (2.20) 的两边乘以 $Delta x$⁠，我们得到#numbered-eq($ f\(x_0 + Delta x\)- f\(x_0\)= f'\(x_0\)Delta x + Delta x dot.op epsilon\(x_0\,Delta x\) $);#noindent;这个等式右边的第一项是与 $Delta x$ 成比例的量，其比例常数是 $f\(x\)$ 在点 $x_0$ 的变率 $f'\(x_0\)$, 而第二项 $epsilon\(x_0\,Delta x\)Delta x$ 和 $Delta x$ 比较起来，当 $\|Delta x\|$ 很小时，$\|epsilon\(x_0\,Delta x\)dot.op Delta x\|$ 就更小，从极限的观点来看，就是 $ lim_(Delta x arrow.r 0) frac(epsilon\(x_0\,Delta x\)dot.op Delta x, Delta x) = lim_(Delta x arrow.r 0) epsilon\(x_0\,Delta x\)= 0 $ #noindent;这也就是说，$epsilon\(x_0\,Delta x\)dot.op Delta x$ 比 $Delta x$ 变小得更快．因此，若 $f'\(x_0\)eq.not 0$, (2.21) 中的线性部分 $f'\(x_0\)Delta x$, 当 $\|Delta x\|$ 很小时就是函数改变量 $f\(x_0 + Delta x\)- f\(x_0\)$ 的很好的近似值，它的误差等于 $epsilon\(x_0\,Delta x\)dot.op Delta x$, 由于这个与 $Delta x$ 成比例的部分是 $Delta y$ 的#strong[主要部分]，我们把 $f'\(x_0\)Delta x$ 叫做函数 $f\(x\)$ 在 $x = x_0$ 处#strong[微分]．

#blk[定义][
设函数 $y = f\(x\)$ 是可微的，我们称 $f'\(x\)Delta x$ 为函数 $y = f\(x\)$ 在点 $x$ 处与自变量的改变量 $Delta x$ 相对应的微分，记作 $thin upright(d) y$, 于是#numbered-eq($ thin upright(d) y = f'\(x\)Delta x $);

]
因为函数 $f\(x\)= x$ 的导数等于1, 所以对于任何 $x$ 来说，微分 $thin upright(d) f\(x\)$ 便等于 $thin upright(d) x =\(x'\)Delta x = Delta x$. 因此，习惯上，常以 $thin upright(d) x$ 代替 $Delta x$, 于是 (2.22) 就可以写成#numbered-eq($ thin upright(d) y = f'\(x\)thin upright(d) x $);#noindent;从而 $ f'\(x\)= frac(thin upright(d) y, thin upright(d) x) $ #noindent;即变率等于微分的商，这也就是称变率（导数）为微商的根据．

下面我们用前面的例2.41和例2.42将 $thin upright(d) y$ 和 $Delta y$ 的值作个比较．

#example[
$ y = x^3\,#h(2em) thin upright(d) y = 3 x^2 thin upright(d) x\,#h(2em) Delta y = 3 x^2 thin upright(d) x +\(3 x + thin upright(d) x\)\(thin upright(d) x\)^2 $

当 $x = 1$ 时，$thin upright(d) y = 3 thin upright(d) x$, $Delta y = 3 thin upright(d) x +\(3 + thin upright(d) x\)\(thin upright(d) x\)^2$.

#align(center)[
#table(
  columns: (auto, auto, auto, auto, auto, auto,),
  align: (center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon,),
  table.hline(),
  [$thin upright(d) x$],
  [10],
  [1],
  [0.1],
  [0.01],
  [$dots.h.c$],
  table.hline(),
  [$thin upright(d) y$],
  [30],
  [3],
  [0.3],
  [0.03],
  [$dots.h.c$],
  table.hline(),
  [$Delta y$],
  [1330],
  [7],
  [0.331],
  [0.030301],
  [$dots.h.c$],
  table.hline(),
);

]
#noindent;我们注意到 $\|thin upright(d) x\|$ 愈小，$thin upright(d) y$ 与 $Delta y$ 的值愈靠近，而且 $Delta y$ 与 $thin upright(d) y$ 的差的绝对值比 $thin upright(d) x$ 的绝对值变小得更快．

]
#example[
$ f\(x\)= x^2 - 1 / x\,#h(2em) thin upright(d) f\(x\)= f'\(x\)thin upright(d) x = (2 x + 1 / x^2) thin upright(d) x\
Delta y = 2 x thin upright(d) x +\(thin upright(d) x\)^2 + frac(thin upright(d) x, x\(x + thin upright(d) x\)) $ #noindent;令 $x = 2$⁠，则 $thin upright(d) y = 4.25 thin upright(d) x$, $Delta y = [4 + thin upright(d) x + frac(1, 2\(2 + thin upright(d) x\))] thin upright(d) x$

#align(center)[
#table(
  columns: (auto, auto, auto, auto, auto, auto,),
  align: (center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon,),
  table.hline(),
  [$thin upright(d) x$],
  [1],
  [0.5],
  [0.1],
  [0.01],
  [$dots.h.c$],
  table.hline(),
  [$thin upright(d) y$],
  [4.25],
  [2.13],
  [0.425],
  [0.0425],
  [$dots.h.c$],
  table.hline(),
  [$Delta y$],
  [5.17],
  [2.35],
  [0.434],
  [0.0426],
  [$dots.h.c$],
  table.hline(),
);

]
#noindent;上面的例子验证了我们在前面讨论的结论：当自变量的改变量 $Delta x$ 很小时，可以用微分 $thin upright(d) y$ 来近似地代替函数改变量 $Delta y$.

]
#example[
半径为 $r$ 的金属圆片加热膨胀，求当半径从 $r$ 变到 $r + Delta r$ 时，圆面积 $S$ 变化大小和此时圆面积 $S$ 与 $Delta r$ 相应的微分 $thin upright(d) S$, 并试用几何图形解释所得的结果．

]
#solution[
已知圆面积 $S = pi r^2$, 设 $Delta S$ 是半径从 $r$ 变到 $r + Delta r$ 时圆面积改变量，即圆环的面积（图2.15），则 $ Delta S = pi\(r + Delta r\)^2 - pi r^2 & = pi [2 r Delta r + \( Delta r \)^2]\
 & = 1 / 2 [2 pi r + 2 pi \( r + Delta r \)] Delta r $ #noindent;此时，$thin upright(d) S = 2 pi r Delta r$.

#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("5-15");], caption: []), figure([#fig("5-16");], caption: []))));

把圆沿半径剖开，把圆周拉直，圆环就“变成”一个梯形，它的两个底边长分别是 $2 pi r$, $2 pi\(r + Delta r\)$, 高为 $Delta r$（图2.16），其中的矩形面积就是微分 $thin upright(d) S = 2 pi r dot.op Delta r$, 它表示圆面积 $S$ 在从 $r$ 到 $r + Delta r$ 的整段变化过程中都以同一瞬时变率 $\(pi r^2\)' = 2 pi r$ 作匀速变化所产生的面积增量．图2.16中的两个小直角三角形的面积表示 $Delta S$ 与 $thin upright(d) S$ 的误差，即 $ Delta S - thin upright(d) S = pi\(Delta r\)^2 $ #noindent;它比 $\|Delta r\|$ 更快地变小，即 $ lim_(Delta r arrow.r 0) frac(Delta S - thin upright(d) S, Delta r) = lim_(Delta r arrow.r 0) pi\(Delta r\)= 0 $

]
==== 微分的几何意义
从几何的观点来说，变率的根本想法就是以直代曲，即以在点 $x_0$ 处的切线 $y = f\(x_0\)+ f'\(x_0\)\(x - x_0\)$ 来逼近曲线 $y = f\(x\)$ 的微段．因此，$f'\(x_0\)Delta x$ 的几何意义可以从图2.17看出．

#figure([#fig("5-17");

  ],
  caption: [
  ]
)

在直角三角形 $T P N$ 中，$P N = Delta x$, $tan alpha = f'\(x_0\)$, 故 $ N T = P N dot.op tan alpha = Delta x dot.op f'\(x_0\)= f'\(x_0\)Delta x $ #noindent;也就是切线函数 $y = f\(x_0\)+ f'\(x_0\)\(x - x_0\)$ 的相应改变量．至于函数的改变量则是曲线 $y = f\(x\)$ 本身的纵坐标在这一段的改变量，在图2.17中用线段 $N P'$ 来代表．所以 $f\(x\)$ 相应于这一段的微分就是以曲线的切线改变量代替函数的改变量．从图2.17可以看出，当 $\|Delta x\|$ 减小时，$T P'$ 跟着减小，但 $T P'$ 比 $\|Delta x\|$ 要变小得更快．

回顾上面的讨论，微分的意义是，当 $\|Delta x\|$ 充分小时，曲线 $y = f\(x\)$ 在点 $x_0$ 的切线 $ y = f\(x_0\)+ f'\(x_0\)\(x - x_0\) $ #noindent;的改变量 $thin upright(d) y = f'\(x_0\)Delta x = f'\(x_0\)\(x - x_0\)$, 就是相应于函数改变量 $Delta y = f\(x_0 + Delta x\)- f\(x_0\)$ 的微分，它可以近似地表达函数改变量，而差是一个比 $\|Delta x\|=\|x - x_0\|$ 变小得更快的微量．因此我们得到 $ Delta y approx thin upright(d) y #h(2em) upright("或") #h(2em) f\(x_0 + Delta x\)- f\(x_0\)approx f'\(x_0\)Delta x $ #noindent;上式可改写为 $ f\(x_0 + Delta x\)approx f\(x_0\)+ f'\(x_0\)Delta x $ #noindent;可见 $f\(x\)$ 在 $x_0 + Delta x$ 点的函数值，可以通过它在 $x_0$ 的函数值 $f\(x_0\)$ 加上一个与 $Delta x$ 成正比例的量 $f'\(x_0\)Delta x$ 来表达，比例系数就是 $f$ 在点 $x_0$ 的微商．上面的公式常用来作近似计算．

#example[
计算 $sqrt(101)$

]
#solution[
设 $y = sqrt(x)$⁠，令 $x_0 = 100$, $Delta x = 1$⁠，则 $ thin upright(d) y = frac(Delta x, 2 sqrt(x_0)) = frac(1, 2 sqrt(100)) = 1 / 20 = 0.05 $ #noindent;因此：$ sqrt(101) approx sqrt(100) + thin upright(d) y = 10 + 0.05 = 10.05 $

]
#example[
一个立方体形状的盒子，它的设计边长等于4(dm), 但允许误差为0.05(dm), 求盒子体积的可能误差．

]
#solution[
设盒子的边长由 $x$ 改为 $x + thin upright(d) x$, 那么盒子体积的改变量是 $ Delta V =\(x + thin upright(d) x\)^3 - x^3 $ #noindent;但是 $ Delta V approx thin upright(d) V = 3 x^2 thin upright(d) x $ #noindent;令 $x = 4$, $thin upright(d) x = plus.minus 0.05$, 那么 $ thin upright(d) V = 3 times 16 times\(plus.minus 0 . 05\)= plus.minus 2.4 $ #noindent;因此，体积的可能误差近似地等于 $plus.minus 2.4\(upright(d m)\)^3$.

]
#example[
证明当 $\|x\|$ 很小时，$ln\(1 + x\)approx x$.

]
#solution[
设 $f\(x\)= ln\(1 + x\)$, 令 $x_0 = 0$, $Delta x = x$⁠，则 $ thin upright(d) f\(x\)= f'\(x_0\)Delta x = frac(1, 1 + x_0) Delta x = x $ #noindent;因此：$ f\(x_0 + Delta x\)= ln\(1 + x\)approx ln 1 + x = x $ #noindent;即：$ln\(1 + x\)approx x$

]
#example[
当 $\|x\|$ 很小时，导出近似公式：$tan x approx x$.

]
#solution[
设 $f\(x\)= tan x$, 令 $x_0 = 0$, $Delta x = x$, 则 $ thin upright(d) f\(x\)= sec^2 x_0 thin upright(d) x = sec^2 0 dot.op x = 1 dot.op x = x $ #noindent;因此：$ f\(x_0 + Delta x\)= tan x approx tan 0 + x = x $ #noindent;即：$tan x approx x$.

]
#example[
如图2.18, 加工锥形工件时，已知工件两头直径分别为 $d_1\,d_2$, 长度为 $ell$, 当斜角 $alpha$ 很小时，导出近似公式：$ alpha = 28.6 degree times frac(d_1 - d_2, ell) $

]
#figure([#fig("5-18");

  ],
  caption: [
  ]
)

#solution[
由图：$tan alpha = frac(d_1 - d_2, 2 ell)$. 当 $alpha$ 很小时，根据 $tan alpha approx alpha$⁠，得到：$ alpha approx frac(d_1 - d_2, 2 ell) $ #noindent;又：$1 upright("弧度") = (180 / pi) degree approx 57.3 degree$⁠，因此：$ alpha approx 57.3 degree times frac(d_1 - d_2, 2 ell) approx 28.6 degree times frac(d_1 - d_2, ell) $

]
==== 微分的运算
如果函数 $f\(x\)$ 可微，即导数 $f'\(x\)$ 存在，求函数的微分只要求出导数再乘以自变量的改变量 $Delta x$ 就行了，求已知函数的微分或求导数的方法都叫做微分法．

我们已经知道当 $x$ 是自变量时，$thin upright(d) x = Delta x$, 原来的微分表达式 $thin upright(d) y = f'\(x\)Delta x$ 就可以改写为 $thin upright(d) y = f'\(x\)thin upright(d) x$, 例如 $thin upright(d)\(sin x\)= cos x thin upright(d) x$. 所以我们可以根据函数的和、积、商的求导数法则得到函数的和、积、商的求微分法则，即

+ $thin upright(d)\(c u\)= c thin upright(d) u$

+ $thin upright(d)\(u plus.minus v\)= thin upright(d) u plus.minus thin upright(d) v$

+ $thin upright(d)\(u v\)= v thin upright(d) u + u thin upright(d) v$

+ $thin upright(d) (u / v) = frac(v thin upright(d) u - u thin upright(d) v, v^2)$

#noindent;这里只证明最后一个法则，其余请读者自证．

#proof[
$ thin upright(d) (u / v) = (u / v)' thin upright(d) x & = frac(u' v - u v', v^2) thin upright(d) x\
 & = frac(v\(u' thin upright(d) x\)- u\(v' thin upright(d) x\), v^2)\
 & = frac(v thin upright(d) u - u thin upright(d) v, v^2) $

]
现在我们来研究求复合函数的微分法则．

如果 $y = f\(x\)$, $x = phi\(t\)$, 那么 $y$ 是 $t$ 的复合函数 $y = f\(phi\(t\)\)$, 这时 $x$ 和 $y$ 的微分根据定义都要以 $t$ 为自变量来确定．在这情况下，须注意 $thin upright(d) x eq.not Delta x$, 比如若 $x = t^2$, 则 $thin upright(d) x = 2 t thin upright(d) t$, 而 $Delta x =\(t + Delta t\)^2 - t^2 = 2 t Delta t +\(Delta t\)^2$, 显然 $thin upright(d) x eq.not Delta x$, 对于复合函数 $y = f\(phi\(t\)\)$ 的微分，我们有下面重要定理．

#blk[定理][
设 $y = f\(x\)$, $x = phi\(t\)$ 都是可微函数，$x$ 是中间变量，那么关系式 $thin upright(d) y = f'\(x\)thin upright(d) x$ 仍成立．

]
#proof[
$ thin upright(d) y =\[f\(phi\(t\)\)\]' thin upright(d) t $ #noindent;根据复合函数求导数法则有 $ \[f\(phi\(t\)\)\]' = f'\(phi\(t\)\)dot.op phi'\(t\) $ #noindent;因此 $ thin upright(d) y = f'\(phi\(t\)\)dot.op phi'\(t\)thin upright(d) t $

因为 $x = phi\(t\)$, $thin upright(d) x = phi'\(t\)thin upright(d) t$⁠，最后得到 $ thin upright(d) y = f'\(x\)thin upright(d) x $

]
这个定理是说不论 $x$ 是自变量或是中间变量，函数 $f\(x\)$ 的微分形式不变，只须注意，若 $x$ 是中间变量，$thin upright(d) x$ 不是任意增量 $Delta x$, 而是 $x$ 的微分，$thin upright(d) y$ 不能写成 $f'\(x\)Delta x$ 即 $thin upright(d) y eq.not f'\(x\)Delta x$, 这个性质叫做#strong[微分不变性]．有了微分不变性，我们在作微分运算时，就无需指明对哪一个变量的微分，而在求函数的变率时，总要指明对中间变量求导数还是对自变量求导数．另外，求复合函数的导数法则用微分符号写出，就是 $ frac(thin upright(d) y, thin upright(d) t) = frac(thin upright(d) y, thin upright(d) x) dot.op frac(thin upright(d) x, thin upright(d) t) $ #noindent;它就成为简单的代数恒等式了．

#example[
求由方程 $y^3 = x^2 + x y + y^2$ 确定的隐函数的导数 $frac(thin upright(d) y, thin upright(d) x)$.

]
#solution[
对等式两边求微分得到 $ 3 y^2 thin upright(d) y = 2 x thin upright(d) x +\(x thin upright(d) y + y thin upright(d) x\)+ 2 y thin upright(d) y $ #noindent;移项 $ \(3 y^2 - x - 2 y\)thin upright(d) y =\(2 x + y\)thin upright(d) x $ #noindent;最后得到 $ frac(thin upright(d) y, thin upright(d) x) = frac(2 x + y, 3 y^2 - x - 2 y) $

]
#example[
求 $thin upright(d) sin\[tan\(x^2 - x + 1\)\]$.

]
#solution[
$ thin upright(d) sin [tan \( x^2 - x + 1 \)] & = cos [tan \( x^2 - x + 1 \)] thin upright(d) tan\(x^2 - x + 1\)\
 & = cos [tan \( x^2 - x + 1 \)] dot.op sec^2\(x^2 - x + 1\)dot.op thin upright(d)\(x^2 - x + 1\)\
 & = cos [tan \( x^2 - x + 1 \)] sec^2\(x^2 - x + 1\)dot.op\(2 x - 1\)thin upright(d) x $

]
（例2.52的计算中，将微分符号“$thin upright(d)$⁠”逐步顺着复合函数的层次从 $sin$ 到 $tan$ 到 $x^2 - x + 1$, 由外到里，犹如剥笋．）

#exercise[
+ 边长4cm的正方形铁皮，在加热中边长增加了0.001cm, 求此时刻面积的可能误差 $Delta S$, 和可能误差的近似值 $thin upright(d) S$, 又正方形的面积近似值是多少？

+ 半径为10cm的球，在冷却中 $R$ 缩短了0.001cm, 求此时刻体积的微分 $thin upright(d) V$ 和体积的近似值．

+ #block(sticky: true)[当 $\|x\|$ 很小时，导出下列近似公式：]

  #cols(2)[
  + $sqrt(1 + x) approx 1 + x / 2$

  + $e^x approx 1 + x$

  + $\(1 + x\)^n approx 1 + n x$

  + $root(n, 1 + x) approx 1 + 1 / n x$

  + $sin x approx x$

  + $arcsin x approx x$

  + $ln\(1 + sin x\)approx x$

  ]

+ #block(sticky: true)[计算下列各式的值：]

  #cols(2)[
  + $root(3, 1.02)$

  + $root(3, 0.998)$

  + $e^(- 0.1)$

  + $tan 0.01$

  + $sin 0.1 degree$

  + $ln 1.0021$

  ]

+ #block(sticky: true)[求下列函数的微分:]

  #cols(2)[
  + $y = frac(x + 5, x^2 - 2)$

  + $y = (sqrt(1 + x^2))^n$

  + $y = ln\(sin sqrt(x)\)$

  + $y = sin^3\(sqrt(x)\)$

  + $y = arcsin sqrt(2 x)$

  + $y = arctan\(cos x\)$

  + $y = sin\(ln x\)$

  + $y = x^n ln\(n x\)$

  + $y = e^x ln x$

  + $y = (e^x + e^(- x))^2$

  ]

+ 一直圆锥内接于半径等于 $R$ 的球中，球心在直圆锥的内部且到圆锥底面的距离等于 $p$, 若 $p$ 增加一个微量 $x$ 而球半径 $R$ 不变，求证圆锥体积的增量约等于 $pi / 3\(R + p\)\(R - 3 p\)x$.

+ 直圆锥的底面半径为 $r$ cm, 高为 $h$ cm, 若半径 $r$ 和高 $h$ 分别有一个增量 $rho$ cm和 $lambda$ cm, 求证圆锥体积的增量近似地等于 $(frac(2 rho, r) + lambda / h)$.

]
#heading(level: 3, numbering: none, outlined: false)[习题2.2]
+ #block(sticky: true)[求下列函数的导函数：]

  #cols(2)[
  + $f\(x\)= 2 x^3 - 3 x^2 + 4 x - 5$

  + $f\(x\)= x^5 - 6 x^2 + 13$

  + $f\(x\)= frac(x^3 - 4 x, x^2 + 1)$

  + $f\(x\)= cos m x sin n x$

  ]
  #block[
  #set enum(numbering: enum-at(2, none, start: 5))
  + $f\(x\)= [sin x + cos x + (x^2 + x + 1)]^2$

  + $f\(x\)= tan [sin x + cos x + (x^2 + x + 1)]$
  ]

  #cols(2)[
  #block[
  #set enum(numbering: enum-at(2, none, start: 7))
  + $f\(x\)= cot (x^2 + 1)$

  + $f\(x\)= sqrt(a^2 + b^2 x^2)$

  + $f\(x\)= root(3, x^4 + x^2 + 1)$

  + $f\(x\)= cos (root(3, 3 x^4 + 5 x^2 + 6))$

  + $f\(x\)=\(sqrt(x) + 1\)(1 / sqrt(x) - 1)$

  + $f\(x\)= x sin x + cos x$

  + $f\(x\)= 2^(sin^2 tfrac(1, x))$

  + $f\(x\)= x^(sin x)$
  ]

  ]
  #block[
  ]
  #cols(2)[
  #block[
  #set enum(numbering: enum-at(2, none, start: 15))
  + $f\(x\)= e^(- x^2) cos (e^(- x^2))$

  + $f\(x\)= arctan sqrt(x^2 - 2 x)$

  + $f\(x\)= x e^(1 - cos x)$

  + $f\(x\)= x arccos x - sqrt(1 - x^2)$

  + $f\(x\)=\(sin x\)^(cos x)$

  + $f\(x\)= root(5, frac(x - 5, root(5, x^2 + 2)))$
  ]

  ]
  #block[
  #set enum(numbering: enum-at(2, none, start: 21))
  + $f\(x\)= x - ln (2 e^x + 1 + sqrt(e^(2 x) + 4 e^x + 1))$
  ]

  #cols(2)[
  #block[
  #set enum(numbering: enum-at(2, none, start: 22))
  + $f\(x\)= sqrt(x sqrt(x sqrt(x)))$

  + $f\(x\)= log_a e^(sin^2 x + 1)$
  ]

  ]
  #block[
  #set enum(numbering: enum-at(2, none, start: 24))
  + $f\(x\)= ln tan x / 2 - cot x dot.op ln\(1 + sin x\)- x$
  ]

+ 验证函数 $f\(x\)= e^x sin x$ 满足方程 $ f''\(x\)- 2 f'\(x\)+ 2 f\(x\)= 0 . $

+ 验证函数 $f\(x\)= frac(x - 3, x + 4)$ 满足方程 $ 2\[f'\(x\)\]^2 =\[f\(x\)- 1\]f''\(x\). $

+ $P$ 点在直线上运动，在时刻 $t$, 点 $P$ 与直线上的定点 $O$ 的距离由方程 $s^2 = a^2 + V^2 t^2$ 给出，其中 $a$ 和 $V$ 是常量，试用 $s$ 表示 $P$ 点在时刻 $t$ 的速度和加速度．

+ 在 $x y$ 平面上，求通过点 $P\(- 3\,6\)$ 且与曲线 $y = x^3 - 5 x^2 + x + 5$ 相切，并且切点的横坐标满足 $x gt.eq 0$ 的切线方程．

+ 求证方程 $16 x^4 - 24 x^2 + 16 x - 3 = 0$ 在 $\(0\,1\)$ 内有一个三重根，又在 $\(- 2\,- 1\)$ 内有一个单根．

+ 设三次函数 $y = x^3 - 3 a x^2 + b x + c$（其中 $a\,b\,c$ 是常数）．

  + 该曲线与直线 $y = 2 x - 1$ 切于点 $\(2\,3\)$, 试用 $a$ 的式子表示 $b\,c$\;

  + 另外，该曲线还与 $y = 2 x + 3$ 相切，试确定 $a\,b\,c$ 的值．

+ 在中午十二点整，甲船以6公里/小时的速率向东行，乙船在甲船之北16公里，以8公里/小时的速率向南行，在下午一点整两船相近之速率为多少？在下午两点整两船相离之速率是多少？

+ 已知圆心为 $O$, 半径为1的圆与直线 $ell$ 相切于点 $A$, 一动点 $P$ 自切点 $A$ 沿直线 $ell$ 向右移动时，取弧 $wideparen(A C)$ 的长为 $2 / 3 A P$⁠，直线 $P C$ 与直线 $A O$ 交于点 $M$\(图2.19), 又知当 $A P = frac(3 pi, 4)$ 时，点 $P$ 的速率为 $v$, 求这时 $M$ 点的速率．

  #figure([#fig("5-19");

    ],
    caption: [
    ]
  )

+ 溶液自深18cm, 顶直径12cm的正圆锥形漏斗中漏入一直径为10cm的圆柱形筒中，开始时漏斗中盛满了水，已知当溶液在漏斗中深为12cm时，其水平面下落速率为1cm/s, 问此时圆柱形筒中水平面上升之速率为多少？

+ 求曲线 $y = arctan ln x$ 与 $x$ 轴的交角．

+ 设质点 $P$ 在时刻 $t$ 的位移方程是 $ x = 58 / 240 + A cos (sqrt(24) g t + alpha) $ #noindent;其中 $A\,alpha$ 是待定常数，$g approx 9.8 upright(m\/s)$⁠，且知当 $t = 0$ 时，$x = 0$, $frac(thin upright(d) x, thin upright(d) t) = 0$⁠，求 $A$ 和 $alpha$.

  #figure([#fig("5-20");

    ],
    caption: [
    ]
  )

+ 图2.20表示曲柄机构装置的图样，连接杆 $M K$ 的长 $ell = 125$⁠cm, 曲柄 $O K$ 的长 $r = 25$⁠cm, 连杆与汽缸的轴 $O M$ 成 $alpha$ 角，曲柄与同一轴成 $phi$ 角．

  + 求用 $phi$ 的式子表示活塞 $M$ 的位移 $x$ 的公式；

  + 如果 $frac(thin upright(d) phi, thin upright(d) t) = omega$（$omega$ 是常量），求活塞 $M$ 的速率．

+ 在抛物线 $y = a x^2 + b x + c thick\(a eq.not 0\)$ 上两点作切线，它们在何处相交？

+ 求抛物线 $y^2 = 4 a x$ 在点 $\(a lambda^2\,2 a lambda\)$ 的切线方程，并求它的两条互相垂直的切线的交点的轨迹方程．

+ #lead-list(none, 2)[
  + 求曲线 $4 y^3 = 27 x^2$ 在点 $\(2 t^3\,3 t^2\)$ 的切线方程；

  + 求互相垂直的两条切线的交点的轨迹方程．
  ]

+ 计算 $sqrt(frac(2.037^2 - 1, 2.037^2 + 1))$ 的近似值．

+ 计算 $cos 151 degree$ 的近似值．

+ 设 $f\(x\)= e^(0.1 x\(1 - x\))$, 试计算 $f\(1.05\)$ 的近似值．

+ 若球体积的相对误差 $frac(Delta V, V) = 0.01$, 试计算球半径的相对误差 $frac(Delta R, R)$ 约等于多少？

== 微商运算的初步应用---函数的增减与极值
=== 局部极值和中值定理
我们在第一章2.3中曾说明在闭区间 $\[a\,b\]$ 上连续的函数必有最大值和最小值．函数 $f$ 在闭区间 $M =\[a\,b\]$ 上的最大值的大小涉及到两个因素，既依赖于 $f$⁠，也依赖于 $M$.

如图2.21，若 $N =\[c\,d\]subset M =\[a\,b\]$⁠，则 $ max_N f lt.eq max_M f . $ #noindent;相应地，$ min_N f gt.eq min_M f . $ #noindent;在这两种情形里都可能出现严格不等式（即不带等号的不等式）．

#figure([#fig("5-21");

  ],
  caption: [
  ]
)

现在我们将阐明一种只决定于 $f$ 的性质的局部极大与极小的概念．

#blk[定义][
设函数 $f$ 在点 $x$ 的某个 $delta > 0$ 的邻域，即 $\(x - delta\,x + delta\)$ 内有定义，如果对于充分小的 $\|Delta x\|< delta$, 能使 $x + Delta x in\(x - delta\,x + delta\)$, 而且对于一切 $x' = x + Delta x in\(x - delta\,x + delta\)$, 都有 $ f\(x + Delta x\)lt.eq f\(x\)quad upright("或") quad f\(x + Delta x\)gt.eq f\(x\) $ #noindent;那么函数 $f$ 在点 $x$ 达到局部极大值（或局部极小值）．

]
#blk[费马定理][
如果函数 $f$ 在区间 $\(a\,b\)$ 上有定义，并且在这个区间内的一点 $c$ 取局部极大值（或极小值），又若 $f$ 在 $c$ 点可微，那么 $ f'\(c\)= 0 $

]
#proof[
为确定起见，设 $f\(x\)$ 在点 $c in\(a\,b\)$ 取最大值、于是对于一切点 $x in\(a\,b\)$, 就有 $ f\(x\)lt.eq f\(c\). $ #noindent;由导数定义：$ lim_(x arrow.r c) frac(f\(x\)- f\(c\), x - c) = f'\(c\) $ #noindent;并且极限 $f'\(c\)$ 的存在与 $x$ 是从右边还是从左边趋向 $c$ 无关．

+ 如果 $x > c$⁠，我们有 $frac(f\(x\)- f\(c\), x - c) lt.eq 0$⁠，从而 $ lim_(x arrow.r c^(+)) frac(f\(x\)- f\(c\), x - c) lt.eq 0 $

+ 如果 $x < c$⁠，我们有 $frac(f\(x\)- f\(c\), x - c) gt.eq 0$⁠，从而 $ lim_(x arrow.r c^(-)) frac(f\(x\)- f\(c\), x - c) gt.eq 0 $

#noindent;根据假设 $f$ 在 $c$ 点可微，因此这两个极限必相等，且应等于 $f'\(c\)$, 这表示 $f'\(c\)gt.eq 0$ 和 $f'\(c\)lt.eq 0$, 由此得：$f'\(c\)= 0$.

$f$ 在 $c$ 点有局部极小值的情形留给读者自证．

]
#blk[罗尔定理][
如果函数 $f$ 在闭区间 $\[a\,b\]$ 上连续，在开区间 $\(a\,b\)$ 内可微，且在两端点的函数值相等，即 $f\(a\)= f\(b\)$, 那么至少存在一个点 $c$, $c in\(a\,b\)$, 使 $f'\(c\)= 0$.

]
#proof[
如果 $f$ 在 $\[a\,b\]$ 上恒为常数，无疑对于任何 $c in\(a\,b\)$ 有 $f'\(c\)= 0$. 因此，可设 $f$ 在 $\[a\,b\]$ 中不为常数，此时 $f$ 在 $\[a\,b\]$ 上的最大值 $M$ 和最小值 $m$ 至少有一个不等于 $f\(a\)= f\(b\)$, 为确定起见，不妨设 $M eq.not f\(a\)= f\(b\)$⁠．故 $f$ 在 $\[a\,b\]$ 上的最大值 $M$ 不会在 $a$ 点或 $b$ 点达到，这时根据闭区间上连续函数的性质，在 $\(a\,b\)$ 内至少有一点 $c$, 使 $f\(c\)= M$, 于是，由费马定理，即得 $f'\(c\)= 0$.

本定理的几何意义如图2.22, 曲线 $y = f\(x\)$ 在 $a\,b$ 处有相同高度，如果在点 $c$ 处、曲线达到最高度，并有切线存在，那么，曲线在该处的切线与 $x$ 轴平行．同样，在曲线的最低点处的切线也与 $x$ 轴平行．

]
#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("5-22");], caption: []), figure([#fig("5-23");], caption: []))));

#rmk[
注意如果罗尔定理中的条件不被满足，结论就不成立．例如 $g\(x\)= 1 -\|x\|$ 在 $\[- 1\,1\]$ 上连续，且 $g\(- 1\)= g\(1\)= 0$, 但在 $x = 0$ 处，$g'\(x\)$ 不存在，对于这个 $g$, 在 $\(- 1\,1\)$ 中就没有 $c$ 能使 $g'\(c\)= 0$. 它的图象如图2.23所示，

]
#blk[拉格朗日中值定理][
如果函数 $f$ 在闭区间 $\[a\,b\]$ 上连续，在开区间 $\(a\,b\)$ 内可导，那么在 $\(a\,b\)$ 内至少有一点 $c$, 使得 $ f'\(c\)= frac(f\(b\)- f\(a\), b - a) $

]
罗尔定理是拉格朗日定理的特殊情形，我们借助于罗尔定理来证明这个重要的定理．

#proof[
我们作一个辅助函数 $Phi$ 使它具有函数 $f$ 的性质：即它在 $\[a\,b\]$ 上连续且在 $\(a\,b\)$ 内可微，同时满足 $Phi\(a\)= Phi\(b\)$. 为此，设 $Phi\(x\)= f\(x\)+ k\(x - a\)$, 并由条件 $Phi\(a\)= Phi\(b\)$ 来决定参数 $k$.

因为当 $x = a$ 时，有 $Phi\(a\)= f\(a\)$\; 当 $x = b$ 时，有 $Phi\(b\)= f\(b\)+ k\(b - a\)$, 所以 $ k = - frac(f\(b\)- f\(a\), b - a) $ #noindent;这样得到的函数 $ Phi\(x\)= f\(x\)- frac(f\(b\)- f\(a\), b - a)\(x - a\) $ #noindent;就满足罗尔定理中的所有的条件，由罗尔定理，至少存在一点 $c in\(a\,b\)$ 使得 $Phi'\(c\)= 0$, 但 $ Phi'\(x\)= f'\(x\)- frac(f\(b\)- f\(a\), b - a) $ #noindent;所以 $ Phi'\(c\)= f'\(c\)- frac(f\(b\)- f\(a\), b - a) = 0 $ #noindent;即 $ f'\(c\)= frac(f\(b\)- f\(a\), b - a) $

]
为了便于应用，拉格朗日定理的结论，通常写成如下形式：#numbered-eq($ f\(b\)- f\(a\)= f'\(c\)\(b - a\)\,#h(2em) a < c < b $, label: label("eq:mvt1"));#noindent;在上式中，令 $b = a + h$⁠，$c = a + theta h$⁠，$0 < theta < 1$⁠，得到中值定理的另一形式：#numbered-eq($ f\(a + h\)- f\(a\)= h f'\(a + theta h\)\,#h(2em) 0 < theta < 1 $);

中值定理的几何意义如图2.24所示．在闭区间 $\[a\,b\]$ 上有一条连续的曲线，且过曲线 $y = f\(x\)$ 上每一点（端点除外），都可以作出一条切线，那么在曲线上至少有一点 $M\(c\,f\(c\)\)\,thick c in\(a\,b\)$, 使得过点 $M$ 的切线与弦 $A B$ 平行．

#figure([#fig("5-24");

  ],
  caption: [
  ]
)

#example[
求 $f\(x\)= 1 + 4 / x$ 在 $\(1\,4\)$ 内满足中值定理 $f\(b\)- f\(a\)= f'\(c\)dot.op\(b - a\)$ 的点 $c$ 的值．

]
#solution[
显然 $f$ 在 $\[1\,4\]$ 上连续，又 $f'\(x\)= - 4 / x^2$, 故 $f$ 在 $\(1\,4\)$ 内可微，根据中值定理，存在点 $c in\(1\,4\)$, 使得 $ f\(4\)- f\(1\)=\(4 - 1\)f'\(c\) $ #noindent;成立．

$because quad f\(4\)= 2\,quad f\(1\)= 5$,

$therefore quad 2 - 5 = 3 (- 4 / c^2)\,$ 即：$c^2 = 4$⁠，得 $c = plus.minus 2$.

又 $because quad 2 in\(1\,4\)\,quad - 2 in.not\(1\,4\)$,

$therefore quad c = 2$. 于是 $ f\(4\)- f\(1\)=\(4 - 1\)f'\(2\) $

]
#example[
设 $f\(x\)= a_0 + a_1 x + a_2 x^2 + dots.h.c + a_n x^n$, 求证在 $f'\(x\)= 0$ 的相邻二根之间，至多有 $f\(x\)= 0$ 的一个根．

]
#proof[
因为多项式函数处处连续和可微，所以若在 $f'\(x\)= 0$ 的两相邻实根 $x_1\,x_2$ 之间有 $f\(x\)= 0$ 的二实根 $alpha\,beta thick\(alpha < beta\)$, 那么根据罗尔定理，至少存在 $f'\(x\)= 0$ 的一个根 $c$, 使得 $alpha < c < beta$⁠．但是 $\(alpha\,beta\)subset\(x_1\,x_2\)$⁠，于是 $x_1 < c < x_2$⁠，由此得出矛盾，所以在 $f'\(x\)= 0$ 的相邻两根之间，至多有 $f\(x\)= 0$ 的一个根．

]
#example[
求证不等式 $frac(h, 1 + h) < ln\(1 + h\)< h$⁠，对于 $h in\(- 1\,0\)union\(0\,+ oo\)$ 成立．

]
#proof[
设 $f\(x\)= ln x$, 于是 $\(ln x\)' = 1 / x$. 由于 $ln x$ 在区间 $\[a\,b\]\,thick\(0 < a < b\)$ 上连续且在 $\(a\,b\)$ 内可微，根据中值定理 $\(a\,b\)$ 内存在 $c$⁠，使得：#numbered-eq($ ln b - ln a = 1 / c\(b - a\)\,quad a < c < b $, label: label("eq:lnmvt"));

若 $h > 0$, 令 $a = 1$, $b = 1 + h$, 于是 $c = 1 + theta h$, 这样 (#ref-num(label("eq:lnmvt"));) 可写成 $ ln\(1 + h\)= frac(h, 1 + theta h)\,quad 0 < theta < 1 $ #noindent;若把上式中的 $theta$ 看作变数，由0变到1, 那么 $ln\(1 + h\)= frac(h, 1 + theta h) = frac(1, 1 / h + theta)$ 便由 $h$ 递减到 $frac(h, 1 + h)$⁠，所以 $ h > ln\(1 + h\)> frac(h, 1 + h)\,quad h > 0 $

若 $- 1 < h < 0$⁠，令 $a = 1 + h$⁠，$b = 1$⁠，于是 $c = 1 + theta h$⁠，这样 (#ref-num(label("eq:lnmvt"));) 可以写成 $ ln 1 - ln\(1 + h\)= frac(- h, 1 + theta h) $ #noindent;仍得 $ ln\(1 + h\)= frac(h, 1 + theta h) $ #noindent;同样可证 $ h > ln\(1 + h\)> frac(h, 1 + h) $ #noindent;因此，当 $h > - 1$ 且 $h eq.not 0$ 时，不等式 $ frac(h, 1 + h) < ln\(1 + h\)< h $ #noindent;成立．

]
#exercise[
+ 曲线 $y = x^2$ 上的某点的切线平行于连接横坐标为 $a\,b$ 两点的弦，求出此点．

+ 曲线 $y = 1 / x$ 上的某点的切线平行于连接横坐标为 $a\,b thick\(0 < a < b\)$ 两点的弦，求出此点．

+ 若 $phi\(x\)=\(x - a\)^m\(x - b\)^n$⁠，验证罗尔定理成立．

+ 用罗尔定理证明，无论 $m$ 为何值，多项式函数 $f_m\(x\)= x^3 - 3 x + m$ 在 $\[0\,1\]$ 之间至多有一个根．

+ 证明下列不等式：

  + $\|sin x - sin y\|lt.eq\|x - y\|$

  + $frac(a - b, a) < ln a / b < frac(a - b, b)\,quad 0 < b < a$

  + $frac(h, 1 + h^2) < arctan h < h\,quad h > 0$

  + 若 $0 < m < 1$⁠，且 $x > 1$⁠，则：$frac(m\(x - 1\), x^(1 - m)) < x^m - 1 < m\(x - 1\)$

    （提示：利用中值定理形式 (#ref-num(label("eq:mvt1"));)，取 $b = x\,thick a = 1$⁠）

  + 若 $h > - 1$⁠，$h eq.not 0$⁠，$n > 1$⁠，则：$\(1 + h\)^(tfrac(1, n)) < 1 + h / n$

  + 若 $h > - 1$⁠，$h eq.not 0$⁠，则：$1 - h / 2 < 1 / sqrt(1 + h) < 1 - frac(h, 2 sqrt(\(1 + h\)^3))$

+ 说明方程 $3 x^5 - 25 x^3 + 60 x - 20 = 0$ 有三个正实根，给出根所在的区间，使每个区间只含一个根．

]
=== 函数的增减与极值------中值定理的应用
==== 函数的增减性
我们已经学过增函数与减函数的概念，现在要阐明导数的正负与函数的增减的关系．

读者已经知道常量的导数等于零，现在反过来问：如果函数 $f$ 在给定区间上的导数永远是零，那么这个函数在这个区间上就是一个常量？由拉格朗日定理可得到肯定的回答．

#blk[定理1][
如果函数 $f$ 在开区间 $\(a\,b\)$ 上的每一点的导数等于零，即 $f'\(x\)= 0$, 那么函数 $f$ 在 $\(a\,b\)$ 上是一个常数．

]
#proof[
我们从区间 $\(a\,b\)$ 中固定某一点 $x_0$, 再取其他的任何一点 $x in\(a\,b\)$. 对于区间 $\[x_0\,x\]$ 或 $\[x\,x_0\]$, 函数 $f$ 满足拉格朗日定理条件，因此，我们可以写出 $ f\(x\)- f\(x_0\)= f'\(c\)\(x - x_0\)\,#h(2em) c in\(x_0\,x\)upright(" 或 ")\(x\,x_0\) $ #noindent;也就是 $c in\(a\,b\)$, 依已知条件 $f'\(c\)= 0$, 因而对任何一点 $x in\(a\,b\)$, $f\(x\)= f\(x_0\)=$ 常数．

]
#example[
求证：如果 $x > 1$⁠，那么 $2 arctan x + arcsin frac(2 x, 1 + x^2) = pi$ 成立．

]
#proof[
设 $f\(x\)= 2 arctan x + arcsin frac(2 x, 1 + x^2)$⁠，因为当 $x > 1$ 时，$lr(|frac(2 x, 1 + x^2)|) < 1$⁠，故对于所指定的 $x$ 值的范围，$f\(x\)$ 有定义，又因为：$ f'\(x\) & = 2\(arctan x\)' + (arcsin frac(2 x, 1 + x^2))'\
 & = frac(2, 1 + x^2) + frac(1, sqrt(1 - (frac(2 x, 1 + x^2))^2)) dot.op (frac(2 x, 1 + x^2))'\
 & = frac(2, 1 + x^2) + frac(1, sqrt(1 - (frac(2 x, 1 + x^2))^2)) dot.op frac(\(1 + x^2\)dot.op 2 - 2 x\(2 x\), \(1 + x^2\)^2)\
 & = frac(2, 1 + x^2) + frac(2\(1 - x^2\), \(x^2 - 1\)\(1 + x^2\))\
 & = 2 (frac(1, 1 + x^2) - frac(1, 1 + x^2)) = 0 $ #noindent;所以：$ 2 arctan x + arcsin frac(2 x, 1 + x^2) = c thick upright("（常数）") $ #noindent;另一方面，因为 $ f (sqrt(3)) = 2 arctan sqrt(3) + arcsin sqrt(3) / 2 = frac(2 pi, 3) + pi / 3 = pi $ #noindent;因此：$ 2 arctan x + arcsin frac(2 x, 1 + x^2) = pi\,quad\(x > 1\) $

]
#blk[定理2][
若 $f\(x\)$ 在 $\[a\,b\]$ 连续，在 $\(a\,b\)$ 内 $f'\(x\)> 0$ (或 $f'\(x\)< 0$)，那么 $f\(x\)$ 在 $\[a\,b\]$ 上严格递增（或严格递减）．

]
#proof[
设 $a lt.eq x_1 < x_2 lt.eq b$⁠，由于在闭区间 $\[x_1\,x_2\]$ 上满足拉格朗日定理的条件，因此，在开区间 $\(x_1\,x_2\)$ 上可以找到点 $c$⁠，使得 $ f\(x_2\)- f\(x_1\)=\(x_2 - x_1\)f'\(c\)quad\(x_1 < c < x_2\) $ #noindent;根据条件，如果在 $\(a\,b\)$ 内，$f'\(x\)> 0$ (或 $f'\(x\)< 0$), 那么 $f'\(c\)> 0$ (或 $f'\(c\)< 0$), 从而 $ f\(x_2\)- f\(x_1\)> 0 quad\(upright("或") < 0\) $ #noindent;因为对于任意 $x_1$ 和 $x_2$ (其中 $a lt.eq x_1 < x_2 lt.eq b$)，上面不等式成立，所以 $f\(x\)$ 在 $\[a\,b\]$ 上严格递增（或严格递减）．

]
定理2的几何意义是明显的，$f'\(x\)$ 是函数图象上点 $x$ 处的切线的斜率 $tan theta$, 这里 $0 lt.eq theta lt.eq pi$. 这斜率的符号指出切线是向上或向下倾斜的，而曲线本身也就随着它向上升或向下降．

如果 $f'\(x\)$ 在个别的 $x$ 值等于零，其他条件不变，则定理2仍然成立，这一点很容易证实，就是把区间 $\[a\,b\]$ 用使 $f'\(x\)= 0$ 的点来分成若干个小区间，再在每个小区间上分别应用定理2. 图2.25和2.26表示定理2的几何意义．

#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("5-25");], caption: []), figure([#fig("5-26");], caption: []))));

#example[
证明 $tan x > x\,quad 0 < x < pi / 2$

]
#proof[
我们只须证明 $tan x - x > 0\,thick 0 < x < pi / 2$⁠．为此，设 $f\(x\)= tan x - x\,thick x in (0 \, pi / 2)$⁠，因为 $f\(x\)$ 在 $lr([0 \, pi / 2))$ 上连续，且在 $(0 \, pi / 2)$ 内 $f'\(x\)= sec^2 x - 1 = tan^2 x > 0$⁠，依定理2, $f\(x\)$ 在 $lr([0 \, pi / 2))$ 上递增，所以有 $ f\(x\)> f\(0\)= tan 0 - 0 = 0\,quad x in (0 \, pi / 2) $ #noindent;即：$tan x - x > 0$⁠，也就是 $tan x > x\,quad 0 < x < pi / 2$.

]
#example[
求证当 $x > 0$ 时，有 $e^x > 1 + ln\(1 + x\)$.

]
#proof[
设 $f\(x\)= e^x - 1 - ln\(1 + x\)thick\(x > 0\)$, 则 $ f'\(x\)= e^x - frac(1, 1 + x)\,#h(2em) f''\(x\)= e^x + frac(1, \(1 + x\)^2) $ #noindent;显然，当 $x > 0$ 时，$f''\(x\)> 0$, 又 $f'\(x\)$ 在 $\[0\,oo\)$ 上连续，由定理2, $f'\(x\)$ 在 $\[0\,oo\)$ 上递增，所以 $ f'\(x\)> f'\(0\)= e^0 - frac(1, 1 + 0) = 0 quad\(x > 0\) $ #noindent;又 $f\(x\)$ 在 $\[0\,oo\)$ 连续，同理 $f\(x\)$ 在 $\[0\,oo\)$ 上递增，所以当 $x > 0$ 时，有 $ f\(x\)> f\(0\)= e^0 - 1 - ln\(1 + 0\)= 0 $ #noindent;即：$ e^x - 1 - ln\(1 + x\)> 0 quad upright("或") quad e^x > 1 + ln\(1 + x\) $

]
#example[
确定 $f\(x\)= 2 x^3 - 9 x^2 + 12 x + 5$ 的递增区间和递减区间，并画出这个函数图象的草图．

]
#solution[
$ f'\(x\)= 6 x^2 - 18 x + 12 = 6\(x - 1\)\(x - 2\) $

当 $x < 1$ 或 $x > 2$ 时，$f'\(x\)> 0$, 所以 $f\(x\)$ 在区间 $\(- oo\,1\)$ 和 $\(2\,+ oo\)$ 内递增；

当 $1 < x < 2$ 时，$f'\(x\)< 0$⁠，所以 $f\(x\)$ 在区间 $\(1\,2\)$ 内递减．

图象的 $y$ 截距 $f\(0\)= 5$⁠，为确定图象的 $x$ 截距，根据例2.54和连续函数中间值定理，由计算的结果 $ f\(- 1\)= - 18\,quad f\(1\)= 10\,quad f\(2\)= 9\,quad f\(+ oo\)> 0 $ #noindent;得知 $f\(x\)$ 在 $\(1\,2\)$ 和 $\(2\,+ oo\)$ 内没有零点，即图象在 $x > 1$ 的范围内与 $x$ 轴不相交：由于 $f\(x\)$ 在 $x < 1$ 的区间内递增，并且 $f\(- 1\)dot.op f\(0\)< 0$, 故 $f\(x\)$ 的图象在 $x < 1$ 的范围内与 $x$ 轴只有一个交点，它的横坐标在区间 $\(- 1\,0\)$ 内．

把 $f\(x\)$ 的递增、递减情况列成下表，就更加醒目．

#align(center)[
#table(
  columns: (auto, auto, auto, auto, auto, auto,),
  align: (center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon,),
  table.vline(x: 1),
  table.hline(),
  [$x$],
  [$\(- oo\,1\)$],
  [1],
  [$\(1\,2\)$],
  [2],
  [$\(2\,+ oo\)$],
  table.hline(),
  [$f'\(x\)$],
  [$+$],
  [0],
  [$-$],
  [0],
  [$+$],
  [$f\(x\)$],
  [$arrow.tr$],
  [10],
  [$arrow.br$],
  [9],
  [$arrow.tr$],
  table.hline(),
);

]
#noindent;图象的草图如图2.27.

#figure([#fig("5-27");

  ],
  caption: [
  ]
)

]
#exercise[
+ 若 $\|f\(x\)- f\(y\)\|lt.eq\(x - y\)^n\,thick n > 1$⁠，求证 $f$ 是一常数．

+ 若 $f'\(x\)= g'\(x\)$, $x in\(- oo\,+ oo\)$, 求证 $f\(x\)= g\(x\)+ c$.

+ 证明在任何区间内，函数 $x - sin x$ 是增函数，又 $alpha$ 为何值，函数 $alpha x - sin x$ 是增函数，$alpha x - sin x$ 为减函数？

+ 证明 $frac(x, sin x)$ 在 $lr((0 \, pi / 2])$ 内是增函数．

+ #block(sticky: true)[若 $x > 0$, 求证]

  #cols(2)[
  + $cos x - 1 + 1 / 2 x^2 > 0$

  + $sin x - x + 1 / 6 x^3 > 0$

  + $x - x^2 / 2 < ln\(1 + x\)< x$

  ]

+ #block(sticky: true)[证明下列不等式当 $0 < x < pi / 2$ 时成立：]

  #cols(2)[
  + $tan x > x + x^3 / 3$

  + $frac(sin x, x) > 2 / pi$

  ]

+ 已知 $x + e^x = y + e^y$, 问 $sin x = sin y$ 是否为真？

+ 若 $a > b$, 求证 $a^3 - 3 a^2 + 3 a > b^3 - 3 b^2 + 3 b$.

+ 设 $f\(0\)= 0$, 且 $f'$ 在 $\[0\,+ oo\)$ 内递增，证明 $g\(x\)= frac(f\(x\), x)$ 在 $\(0\,+ oo\)$ 内递增．

+ #lead-list(none, 2)[
  + 已知 $a\,b$ 为实数，并且 $e < a < b$⁠，其中 $e$ 是自然对数的底，证明：$a^b > b^a$.

  + 如果正实数 $a\,b$ 满足 $a^b = b^a$, 且 $a < 1$, 则 $a = b$.
  ]

+ #staritem(11);证明：对于所有 $x in lr((0 \, pi / 2])$, 有不等式 $\(sin x\)^(- 2) lt.eq x^(- 2) + 1 - 4 / pi^2$ 成立．

]
==== 函数的极大值与极小值
从例2.59我们看到 $x = 1$ 和 $x = 2$ 分别是函数 $f\(x\)= 2 x^3 - 9 x^2 + 12 x + 5$ 取到极大值 $f\(1\)= 10$ 和极小值 $f\(2\)= 9$ 的点，我们称 $x = 1$ 为极大点，$x = 2$ 为极小点，以后，极大值与极小值统称为#strong[极值]，极大点与极小点统称为#strong[极值点]．

下面我们来讨论如何确定一个函数的极值．

+ 若 $x_0$ 是 $f\(x\)$ 的极值点，且 $f\(x\)$ 在点 $x_0$ 可微，那么总存在 $x_0$ 的一个邻域，使 $f\(x\)$ 在点 $x_0$ 的邻域中满足费马条件，因而必有 $f'\(x_0\)= 0$. 例如例2.59, $f'\(1\)= f'\(2\)= 0$.

+ 若 $f\(x\)$ 在 $x_0$ 不可微，这时 $x_0$ 也可能是极值点，例如，$f\(x\)=\|x\|$, 它在 $x_0 = 0$ 这一点不可微，但从图2.28即可看出 $x_0 = 0$ 是它的极小点．

#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("5-28");], caption: []), figure([#fig("5-29");], caption: []))));

这就告诉我们连续函数的极值点应该从它的导函数 $f'\(x\)$ 的零点和 $f\(x\)$ 的不可微点中去找，但是，$f'\(x\)$ 的零点和 $f\(x\)$ 的不可微点只是 $f\(x\)$ 可能达到极值的点，并不一定是极值点，例如 $f\(x\)= x^3$, $x = 0$ 是 $f'\(x\)= 3 x^2$ 的零点，然而在整个区间 $\(- oo\,+ oo\)$ 上，$f'\(x\)gt.eq 0$, 而且只在 $x = 0$ 时，$f'\(x\)= 0$, 即函数 $f\(x\)= x^3$ 在 $\(- oo\,+ oo\)$ 上严格递增，因而 $x = 0$ 不是极值点，它的图象如图2.29, 在 $y$ 轴的左侧，图象位于切线 $y = 0$ 的下方；而在 $y$ 轴的右侧，图象位于切线 $y = 0$ 的上方，我们把方程 $f'\(x\)= 0$ 的根称为函数 $f\(x\)$ 的#strong[驻点]．

又如函数 $ g\(x\)= display(cases(1 / 2\(x - 1\)\, & quad x in\[1\,2\], 3 / 2\(x - 2\)+ 1 / 2\(2 - 1\)\, & quad x in\[2\,3\], \(x - 3\)+ 1 / 2\(2 - 1\)+ 3 / 2\(3 - 2\)\, & quad x in\[3\,4\])) $ #noindent;的图象是折线，如图2.30, 易知 $ g'\(x\)> 0\,quad x in\(1\,2\)union\(2\,3\)union\(3\,4\) $ #noindent;但 $g'\(2\)$ 和 $g'\(3\)$ 不存在，由于 $g\(x\)$ 在 $\[1\,4\]$ 上严格递增，所以 $x = 2$, $x = 3$ 都不是极值点．

#figure([#fig("5-30");

  ],
  caption: [
  ]
)

综上讨论，我们得到函数 $f$ 取极值的必要条件：

#blk[定理1（极值的必要条件）][
若 $f\(x\)$ 在 $\[a\,b\]$ 上连续，$x_0$ 是 $f\(x\)$ 的极值点，那么 $x_0$ 只可能是 $f'\(x\)$ 的零点或 $f\(x\)$ 的不可微点．

]
下面给出极值点的两个充分性判别法．

#blk[定理2][
如果函数 $f$ 在 $x_0$ 的邻域内连续，并且在 $\(x_0 - delta\,x_0\)$ 和 $\(x_0\,x_0 + delta\)thick\(delta > 0\)$ 可微：

- 在 $\(x_0 - delta\,x_0\)$ 内，$f'\(x\)< 0 thick\(> 0\)$\;

- 在 $\(x_0\,x_0 + delta\)$ 内，$f'\(x\)> 0 thick\(< 0\)$\;

#noindent;那么，$x_0$ 是 $f$ 的局部极小点（极大点）．

]
#proof[
按照前一节中定理2, $f$ 在 $\(x_0 - delta\,x_0\)$ 内严格递减（递增），而在 $\(x_0\,x_0 + delta\)$ 内严格递增（递减），故 $f\(x_0\)$ 必为极小值（极大值）．

]
#rmk[
这个定理并不要求函数 $f$ 在点 $x_0$ 处存在导数，如果导数存在，那么根据费马定理，它等于零．

]
#example[
讨论 $y = root(3, \(x - 1\)\(x + 2\)^2)$ 的极值，并绘出图象的草图．

]
#solution[
将 $y = root(3, \(x - 1\)\(x + 2\)^2)$ 的两边立方，得 $ y^3 & =\(x - 1\)\(x + 2\)^2\
3 y^2 dot.op y' & =\(x + 2\)^2 +\(x - 1\)dot.op 2 dot.op\(x + 2\)\
 & =\(x + 2\)\[x + 2 + 2\(x - 1\)\]\
 & = 3 x\(x + 2\) $

$therefore quad y' = frac(x\(x + 2\), y^2) = frac(x\(x + 2\), root(3, \(x - 1\)^2\(x + 2\)^4))$ 即 $ y' = x / root(3, \(x - 1\)^2\(x + 2\)) quad\(x eq.not 1\,thick x eq.not - 2\) $

- 当 $x = 0$ 时，$y' = 0$, 函数图象在点 $x = 0$ 处有水平切线；

- 当 $x = - 2$ 和1时，$y'$ 不存在，但是由 $limits(lim)_(x arrow.r 1) y' = + oo$ 和 $limits(lim)_(x arrow.r - 2^(+)) y' = - oo$, 而 $limits(lim)_(x arrow.r - 2^(-)) y' = + oo$ 得知函数图象在点 $x = 1$ 和 $x = - 2$ 处有平行 $y$ 轴的切线，所以函数的可能的极值点是 $x = - 2\,0\,1$ 这三个点．

为确定曲线的 $y$ 截距，令 $x = 0$, 得 $y = - root(3, 4) approx - 1.59$\; 为确定它的 $x$ 截距，令 $y = 0$, 得 $x = - 2$ 和 $x = 1$, 现列表讨论它的增减性与极值如下：

#align(center)[
#table(
  columns: (auto, auto, auto, auto, auto, auto, auto, auto,),
  align: (center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon,),
  table.vline(x: 1),
  table.hline(),
  [$x$],
  [$\(- oo\,- 2\)$],
  [$- 2$],
  [$\(- 2\,0\)$],
  [0],
  [$\(0\,1\)$],
  [1],
  [$\(1\,+ oo\)$],
  table.hline(),
  [$y'$],
  [$+$],
  [不存在],
  [$-$],
  [0],
  [$+$],
  [不存在],
  [$+$],
  [$y$],
  [$arrow.tr$],
  [极大值],
  [$arrow.br$],
  [极小值],
  [$arrow.tr$],
  [0],
  [$arrow.tr$],
  [],
  [],
  [0],
  [],
  [$- root(3, 4) approx - 1.59$],
  [],
  [],
  [],
  table.hline(),
);

]
函数 $y = root(3, \(x - 1\)\(x + 2\)^2)$ 的图象如图2.31.

#figure([#fig("5-31");

  ],
  caption: [
  ]
)

]
#blk[定理3][
设函数 $f\(x\)$ 在区间 $\(a\,b\)$ 中有二阶连续的导函数，又 $c in\(a\,b\)$, 使得 $f'\(c\)= 0$,

+ 如果 $f''\(c\)< 0$, 则 $c$ 是 $f\(x\)$ 的一个极大点．

+ 如果 $f''\(c\)> 0$, 则 $c$ 是 $f\(x\)$ 的一个极小点．

]
#proof[
设 $f''\(c\)< 0$, 由于 $f''\(x\)$ 的连续性，故存在点 $c$ 的一个 $delta > 0$ 的邻域 $\(c - delta\,c + delta\)subset\(a\,b\)$, 使得 $f''\(x\)< 0$, $x in\(c - delta\,c + delta\)$. 按前节定理2, $f'\(x\)$ 在 $\(c - delta\,c + delta\)$ 中是递减的，又由于 $f'\(c\)= 0$, 因此，$f'\(x\)$ 在点 $c$ 处由正变为负，由前面的定理2, $c$ 是 $f\(x\)$ 的极大点．

当 $f''\(c\)> 0$ 时，同理可证 $c$ 是 $f\(x\)$ 的一个极小点．

]
为说明定理3的应用，我们求例2.60的二阶导函数：$ y'' & = frac(y^2\(2 x + 2\)- x\(x + 2\)dot.op 2 y dot.op y', y^4)\
 & = frac(2\[\(x + 1\)y - x\(x + 2\)y'\], y^3) $

从例2.60知，当 $x = 0$ 时，$y' = 0$. 又 $f\(0\)= - root(3, 4)$. 故在 $x = 0$ 处 $ y''_(x = 0) = frac(2 [\( 0 + 1 \) (- root(3, 4)) - 0], - 4) = root(3, 4) / 2 > 0 $ #noindent;由定理3, $x = 0$ 是函数 $y = root(3, \(x - 1\)\(x + 2\)^2)$ 的极小点．

#example[
讨论 $y = x^3 + a x^2 + b x + c$ 的极值．

]
#solution[
$ y = x^3 + a x^2 + b x + c\,#h(2em) y' = 3 x^2 + 2 a x + b $

$Delta = a^2 - 3 b$ 是导函数的判别式．我们可以分 $Delta > 0$, $Delta = 0$ 和 $Delta < 0$ 的三种情形讨论 $y'$ 的正负区间．

+ 若 $Delta > 0$, 则 $ y' = 3 x^2 + 2 a x + b = 3\(x - x_1\)\(x - x_2\) $ #noindent;这里 $x_1 = 1 / 3 (- a - sqrt(a^2 - 3 b))$ 和 $x_2 = 1 / 3 (- a + sqrt(a^2 - 3 b))$ 是导函数 $y'$ 的二个实根．

  + 当 $x in\(- oo\,x_1\)union\(x_2\,+ oo\)$ 时，$y' > 0$\;

  + 当 $x in\(x_1\,x_2\)$ 时，$y' < 0$

  #noindent;所以，$x_1$ 是 $y$ 的一个极大点，$x_2$ 是 $y$ 的一个极小点．

+ 若 $Delta = 0$, 则 $ y' = 3 x^2 + 2 a x + a^2 / 3 = 3 (x + a / 3)^2 $ #noindent;这里，$y'$ 虽然在 $- a / 3$ 处等于0, 但 $y'$ 在 $- a / 3$ 的左、右两侧都取正值，即 $y = x^3 + a x^2 + b x + c$ 是一个递增函数．因此，$- a / 3$ 不是 $y$ 的极值点．

+ 若 $Delta < 0$, 则对于任意 $x in bb(R)$, 恒有$ y' = 3 x^2 + 2 a x + b = 3 (x + a / 3)^2 + frac(3 b - a^2, 3) > 0 $ #noindent;因此，$y = x^3 + a x^2 + b x + c$ 是一个增函数，也是没有极值点．

]
#exercise[
+ #block(sticky: true)[先求出 $f'\(x\)$, 然后由 $f'\(x\)$ 的正负去讨论 $f\(x\)$ 的增减与极值，并画出函数图象的草图：]

  #cols(2)[
  + $f\(x\)= 2 x^3 + 9 x^2 - 24 x + 5$

  + $f\(x\)= x^4 - 6 x^2 - 8 x + 15$

  + $f\(x\)= - x^5 - 5 x^4$

  + $f\(x\)=\(x - 1\)^3$

  + $f\(x\)=\|x^2 - 1\|$

  + $f\(x\)=\(x^2 - 1\)^3 + 1$

  ]

+ 讨论 $f\(x\)= frac(x^2 - 2 x - 3, x^2 + 1)$ 的增减和极值，并画函数图象的草图．

+ 求 $f\(theta\)= sin theta - 1 / 2 sin 2 theta$ 在 $\(- pi\,pi\)$ 内的极大值和极小值．

+ #lead-list(none, 2)[
  + 求两条曲线 $y = frac(4 e^x + 2 e^(- x), 3)$ 和 $y = e^(- x)$ 的交点的坐标；

  + 求函数 $y = frac(4 e^x + 2 e^(- x), 3)$ 的极值点，又它在此点取极大值，还是极小值？
  ]

+ 讨论函数 $y = x^2 e^(- x^2)$ 的增减与极值．

+ 求 $f\(x\)= x^x thick\(x > 0\)$ 的极值，并说明此极值是极大值还是极小值．

+ 求函数 $frac(ln x, x)$ 的极大值．

+ 函数 $f\(x\)= frac(a x + b, \(x - 1\)\(x - 4\))$ 在点 $\(2\,- 1\)$ 有一极值，求 $a\,b$ 并证明此极值是极大值．

+ 证明 $f_alpha\(x\)= (alpha - 1 / alpha - x)\(4 - 3 x^2\)$ 仅有一个极大值和一个极小值，且它们的差是 $4 / 9 (alpha + 1 / alpha)^3$, 又此差值的绝对值的最小值是多少？

+ 函数 $f\(x\)= x\(x - 1\)\(x - a\)$ 有绝对值相等，符号相反的极大值与极小值，试确定常数 $a$ 的值．

+ 求曲线 $y = e^(- x) sin x$ 上的极值点，并证明极值点上的纵坐标成等比数列，又该等比数列的公比是多少？

]
==== 函数的最大值和最小值
在实践中有一类“最大”、“最小”、“最省”的问题，例如生产搪瓷杯时，就要考虑在一定容积下，杯子的高和直径取多大时，用料最省．又如把一根圆木锯成矩形截面横梁时，怎样选取矩形的长和宽才能使横梁强度最大？这类“最大”、“最小”、“最省”等问题，在数学上叫做最大值、最小值问题．

我们曾在第一章2.3中指出过“在闭区间 $\[a\,b\]$ 上连续的函数 $f\(x\)$ 总是具有最大值和最小值”，但是，微积分并未提供确定函数 $f\(x\)$ 的最大值、最小值的直接方法．如果我们讨论的函数 $f\(x\)$ 在 $\(a\,b\)$ 上有连续的一阶导数，那么由上面的讨论知道，只要求出 $f\(x\)$ 在 $\(a\,b\)$ 内的驻点，即 $f'\(x\)= 0$ 的根，就可以求出 $f\(x\)$ 的局部极值．显然，$f\(x\)$ 在 $\[a\,b\]$ 上的最大值和最小值一定出现在局部极大值、局部极小值和端点值之中，从几何上来说，最大值、最小值如果不是位于定义区间的端点上，则分别是曲线的波峰和波谷．从图2.33可以看到局部极大值可能小于局部极小值．

#figure([#fig("5-32"); #counter(figure.where(kind: image)).update(n => n + 1);

  ],
  caption: [
  ]
)

下面给出求函数 $f\(x\)$ 在 $\[a\,b\]$ 上最大值和最小值的法则，这个法则适用于在 $\[a\,b\]$ 上连续，在 $\(a\,b\)$ 内可微的函数 $f\(x\)$, 并且 $f'\(x\)$ 最多在有限个点上等于零．

+ 求 $f\(x\)$ 在 $\(a\,b\)$ 内的驻点，即解 $f'\(x\)= 0$\;

+ 计算 $f\(x\)$ 在驻点和端点的函数值，并把这些值加以比较，其中最大的一个为最大值，最小的一个为最小值．

假如 $f'\(x\)$ 在 $\(a\,b\)$ 内有一个驻点 $c$, 且在整个 $\(a\,b\)$ 上，$f''\(x\)< 0 thick\(> 0\)$, 那么点 $c$ 是最大值（最小值）点．

事实上，如果 $f''\(x\)< 0\,thick x in\(a\,b\)$, 那么函数 $f'\(x\)$ 在 $\[a\,b\]$ 上递减，因而 $c$ 是其唯一的驻点，由中值定理知：

当 $a lt.eq x < c$ 时，$f'\(x\)- f'\(c\)=\(x - c\)dot.op f''\(xi\)$⁠，这里 $x < xi < c$⁠．

$because quad f'\(c\)= 0\,quad f''\(xi\)< 0\,quad x - c < 0$,

$therefore quad f'\(x\)> 0$

同理说明当 $c < x lt.eq b$ 时，$f'\(x\)< 0$⁠．再根据 $f\(x\)$ 在 $\[a\,c\]$ 上递增而在 $\[c\,b\]$ 上递减．故当 $x eq.not c$ 时有 $f\(x\)< f\(c\)$⁠．由此可知 $c$ 是最大值点．当 $f''\(x\)> 0$ 时，也可以进行同样的论证．

如果 $f\(x\)$ 在 $\[a\,b\]$ 内有不可微的点，而且这种点只有有限个，那么求最大值和最小值的法则改为求出三种点的对应函数值再加以比较，即 $f\(x\)$ 的驻点的函数值，$f\(x\)$ 的不可微点的函数值，最后还有端点的函数值 $f\(a\)$ 和 $f\(b\)$, 这些值中最大的就是最大值，最小的就是最小值．

在实际问题中，如果在 $\(a\,b\)$ 内部，$f\(x\)$ 只有一个驻点 $c$, 而且从实际问题本身又可以知道在 $\(a\,b\)$ 内必定有最大值或最小值，那么 $f\(c\)$ 就是所要求的最大值或最小值，不需要算出 $f\(a\)$, $f\(b\)$ 了．

#example[
求函数 $f\(x\)= x^(tfrac(2, 3)) -\(x^2 - 1\)^(tfrac(1, 3))$ 在区间 $\[- 2\,2\]$ 上的最大值和最小值．

]
#solution[
$ f'\(x\) & = 2 / 3 x^(- tfrac(1, 3)) - 1 / 3\(x^2 - 1\)^(- tfrac(2, 3)) dot.op 2 x\
 & = 2 / 3 frac(\(x^2 - 1\)^(tfrac(2, 3)) - x^(tfrac(4, 3)), x^(tfrac(1, 3))\(x^2 - 1\)^(tfrac(2, 3))) $ #noindent;故 $f\(x\)$ 的驻点是 $plus.minus 1 / sqrt(2)$, 不可微点是 $x = 0$, $x = plus.minus 1$, 且这些点都在 $\[- 2\,2\]$ 内，因此 $f\(x\)$ 的极值点可能是 $ - 1\,quad frac(- 1, sqrt(2))\,quad 0\,quad 1 / sqrt(2)\,quad 1 $ #noindent;由于 $f\(x\)$ 是偶函数，故仅需计算 $ f\(0\)= 1\,#h(2em) f (1 / sqrt(2)) = root(3, 4)\,#h(2em) f\(1\)= 1 $ #noindent;又在端点 $x = 2$ 处的函数值 $f\(2\)= root(3, 4) - root(3, 3)$, 把上面这些函数值相互比较，可见 $f\(x\)$ 在 $\[- 2\,2\]$ 中的最大值为 $root(3, 4) approx 1.59$, 最小值为 $root(3, 4) - root(3, 3) approx 1.59 - 1 . 44 approx 0.15$.

]
#example[
设 $a > 0$, 证明 $f\(x\)= frac(1, 1 +\|x\|) + frac(1, 1 +\|x - a\|)$ 的最大值是 $frac(2 + a, 1 + a)$.

]
#proof[
把 $f\(x\)$ 写成分段函数 $ f\(x\)= display(cases(frac(1, 1 - x) + frac(1, 1 + a - x)\, & quad x < 0, frac(1, 1 + x) + frac(1, 1 + a - x)\, & quad 0 lt.eq x lt.eq a, frac(1, 1 + x) + frac(1, 1 + x - a)\, & quad x > a)) $ #noindent;于是 $ f'\(x\)= display(cases(frac(1, \(1 - x\)^2) + frac(1, \(1 + a - x\)^2)\, & quad x < 0, frac(- 1, \(1 + x\)^2) + frac(1, \(1 + a - x\)^2)\, & quad 0 lt.eq x lt.eq a, frac(- 1, \(1 + x\)^2) - frac(1, \(1 + x - a\)^2)\, & quad x > a)) $ #noindent;因而 $f\(x\)$ 在 $\(- oo\,0\]$ 上递增，而在 $\[a\,+ oo\)$ 上递减，由此得知 $f\(x\)$ 在 $\[0\,a\]$ 上的最大值也就是在 $bb(R)$ 上的最大值．

设对于 $\(0\,a\)$ 内的 $x$ 有 $f'\(x\)= 0$, 则 $ \(1 + x\)^2 -\(1 + a - x\)^2 = 0 $ #noindent;上式唯一解是 $x = a / 2$. 因为 $f (a / 2) = frac(4, 2 + a)$, $f\(0\)= f\(a\)= frac(2 + a, 1 + a)$⁠，并且 $ frac(2 + a, 1 + a) - frac(4, 2 + a) = frac(a^2, \(1 + a\)\(2 + a\)) > 0 quad\(a > 0\) $ #noindent;所以 $f\(x\)$ 的最大值是 $frac(2 + a, 1 + a)$.

]
#example[
用铁皮做体积为 $V$ 的圆柱形封闭容器，如何使材料最省？

]
#solution[
#strong[解法1:] 设圆柱形底面半径为 $r$, 高为 $h$, 于是需用材料即圆柱表面积 $ S = 2 pi r h + 2 pi r^2 $ #noindent;但 $V = pi r^2 h$ 为已知，因此，$h = frac(V, pi r^2)$⁠，从而问题变为求函数 $S\(r\)= frac(2 V, r) + 2 pi r^2 thick\(0 < r < + oo\)$ 的最小值．

根据经验，当 $r$ 很小时，$S$ 很大，又当 $r$ 很大时，$S$ 也很大，因此在 $\(0\,+ oo\)$ 内必有 $r$ 的一个值使 $S$ 最小，即它是 $S'\(r\)= 0$ 的一个根，由 $ S'\(r\)= - frac(2 V, r^2) + 4 pi r = 0 $ #noindent;得唯一正根 $r = root(3, frac(V, 2 pi))$⁠．从这个实际问题知道，当 $r = root(3, frac(V, 2 pi))$ 时，$S$ 为最小，这时相应的高为 $ h = frac(V, pi r^2) = frac(2 pi r^3, pi r^2) = 2 r = 2 root(3, frac(V, 2 pi)) $ #noindent;这说明圆柱的高和直径相等时，用料最省．

#strong[解法2:] 我们可以不先将下面两个式子中的 $h$ 消去，再求 $frac(thin upright(d) S, thin upright(d) r) = 0$ 的根

#numbered-align(($S$, $eqph = 2 pi r h + 2 pi r^2$, label("eq:cylS")), ($pi r^2 h$, $eqph = V$, label("eq:cylV")));

#noindent;而是保留辅助变量 $h$⁠，将 (#ref-num(label("eq:cylS"));), (#ref-num(label("eq:cylV"));) 对 $r$ 求导数，只须记着 $V$ 是常量，$h$ 是 $r$ 的函数，于是由 $frac(thin upright(d) S, thin upright(d) r) = 0$⁠，得#numbered-eq($ frac(thin upright(d) S, thin upright(d) r) = 2 pi (h + r frac(thin upright(d) h, thin upright(d) r) + 2 r) = 0 $, label: label("eq:cyldS"));#noindent;由 (#ref-num(label("eq:cylV"));) 得#numbered-eq($ pi (2 r h + r^2 frac(thin upright(d) h, thin upright(d) r)) = 0 $);#noindent;由此得：$ frac(thin upright(d) h, thin upright(d) r) = - frac(2 h, r) quad\(because med r eq.not 0\) $ #noindent;将它代入 (#ref-num(label("eq:cyldS"));)，得 $ 2 pi [h + r (- frac(2 h, r)) + 2 r] = 0 $ #noindent;所以：$2 r = h$.

同样地说明了圆柱的高和直径相等时，用料最省．

]
#example[
由半径为 $ell$ 的圆铁皮，剪去一个扇形，把剩下的部分围成一个圆锥形容器，为了使所得圆锥容器有最大的容积，问剪去扇形的中心角应该多大？

]
#figure([#fig("5-33");

  ],
  caption: [
  ]
)

#solution[
设剪去扇形后，所剩材料的圆心角为 $x$（弧度），扇形的弧长为 $x ell$, 由它围成一个圆锥，其底面半径为 $r$, 母线长为 $ell$, 高为 $h$, 如图2.34. 于是 $ r = frac(ell x, 2 pi) $ #noindent;圆锥高为 $ h = sqrt(ell^2 - r^2) = sqrt(ell^2 - (frac(ell x, 2 pi))^2) = frac(ell, 2 pi) sqrt(4 pi^2 - x^2) $ #noindent;因此圆锥的体积为 $ V & = 1 / 3 pi r^2 h\
 & = 1 / 3 pi (frac(ell x, 2 pi))^2 dot.op frac(ell, 2 pi) sqrt(4 pi^2 - x^2)\
 & = frac(ell^3 x^2, 24 pi^2) sqrt(4 pi^2 - x^2) quad\(0 lt.eq x lt.eq 2 pi\) $ #noindent;由于 $V\(0\)= 0$, $V\(2 pi\)= 0$, 故在 $\(0\,2 pi\)$ 内必有一个值 $x_0$ 使 $V$ 的值最大，因而使 $V'\(x_0\)= 0$. 由于 $ V'\(x\) & = frac(ell^3, 24 pi^2) [2 x sqrt(4 pi^2 - x^2) + 1 / 2 x^2 \( 4 pi^2 - x^2 \)^(- tfrac(1, 2)) dot.op \( - 2 x \)]\
 & = frac(ell^3, 24 pi^2) (frac(8 pi^2 x - 3 x^3, sqrt(4 pi^2 - x^2))) $ #noindent;令 $V'\(x\)= 0$, 即 $8 pi^2 x - 3 x^3 = 0$, 解得 $ x_1 = 0\,quad x_2 = - 2 pi sqrt(2 / 3)\,quad x_3 = 2 pi sqrt(2 / 3) $ #noindent;这里只有 $x_3 = 2 pi sqrt(2 / 3) in\(0\,2 pi\)$, 故知 $x = 2 pi sqrt(2 / 3)$ 是 $V\(x\)$ 在 $\[0\,2 pi\]$ 内的唯一的极大点，因而也是最大点．于是最后得到结论，剪去扇形的圆心角为 $ 2 pi - 2 pi sqrt(2 / 3) = 2 / 3 pi (3 - sqrt(6)) thick upright("（弧度）") $ #noindent;时，才能使所围成的容器有最大的容积．

]
#example[
求证：若 $p > q > 1$⁠，又 $x gt.eq 0$ 且 $x eq.not 1$⁠，则 $frac(x^p - 1, p) > frac(x^q - 1, q)$.

]
#proof[
设 $f\(x\)= frac(x^p - 1, p) - frac(x^q - 1, q) thick\(x gt.eq 0\)$⁠，则：$ f'\(x\)= x^(p - 1) - x^(q - 1) = x^(q - 1) (x^(p - q) - 1) quad\(p > q > 1\) $ #noindent;函数的增、减如下表所示：

#align(center)[
#table(
  columns: (auto, auto, auto, auto, auto,),
  align: (center + horizon, center + horizon, center + horizon, center + horizon, center + horizon,),
  table.vline(x: 1),
  table.hline(),
  [$x$],
  [0],
  [$\(0\,1\)$],
  [1],
  [$\(1\,+ oo\)$],
  table.hline(),
  [$f'\(x\)$],
  [0],
  [$-$],
  [0],
  [$+$],
  [$f\(x\)$],
  [$1 / q - 1 / p$],
  [$arrow.br$],
  [极小值0],
  [$arrow.tr$],
  table.hline(),
);

]
$because quad f\(0\)= 1 / q - 1 / p > 0 = f\(1\)$

$therefore quad f\(1\)= 0$ 不仅是极小值也是最小值．于是：$ f\(x\)= frac(x^p - 1, p) - frac(x^q - 1, q) gt.eq 0 quad\(x gt.eq 0\) $ #noindent;因为 $x eq.not 1$⁠，所以 $ frac(x^p - 1, p) > frac(x^q - 1, q) quad\(x gt.eq 0\,thick x eq.not 1\) $

]
#example[
（光的折射定律）设有两种介质，$X' X$ 是它们的交界线，光由一种介质中的某点 $A$ 走向另一种介质中的某点 $B$. 又设当光走过交界线 $X' X$ 时，它的速度由 $v_1$ 变成 $v_2$. 依据物理学中的一个基本原理“光由 $A$ 到达 $B$ 时，所采取的途径要使用的时间为最小”，如果两种介质是均匀的（例如一为空气，一为水），那么 $v_1\,v_2$ 都是常数，从而光在这两种介质中所走的路径是两段直线 $A P$, $P B$, $P$ 表示光达到交界线时与这条线的交点，如果 $A B$ 不与 $X' X$ 垂直，一般 $A P B$ 不是直线，我们来定出 $A P$, $B P$ 与 $X' X$ 的法线的夹角 $theta_1$ 和 $theta_2$ 的关系．

]
#figure([#fig("5-34");

  ],
  caption: [
  ]
)

#solution[
如图2.35建立坐标系，$A$ 点坐标是 $\(0\,a\)$, $B$ 点的坐标是 $\(c\,b\)$, 设 $P$ 点的坐标是 $\(x\,0\)$, 光由 $A$ 到 $P$ 所需时间是 $sqrt(a^2 + x^2) / v_1$⁠，从 $P$ 到 $B$ 所需时间是 $sqrt(b^2 +\(c - x\)^2) / v_2$, 则整个时间 $t\(x\)$ 是 $ t\(x\)= sqrt(a^2 + x^2) / v_1 + sqrt(b^2 +\(c - x\)^2) / v_2 $

为了使 $t\(x\)$ 极小，应使 $t'\(x\)= 0\,thick x in\(0\,c\)$. 由 $t\(x\)$ 得 $ t'\(x\) & = frac(x, v_1 sqrt(a^2 + x^2)) - frac(c - x, v_2 sqrt(b^2 +\(c - x\)^2))\
t''\(x\) & = frac(- x^2, v_1\(a^2 + x^2\)^(tfrac(3, 2))) + frac(1, v_1 sqrt(a^2 + x^2)) + frac(1, v_2 sqrt(b^2 +\(c - x\)^2)) - frac(\(c - x\)^2, v_2 [b^2 + \( c - x \)^2]^(tfrac(3, 2)))\
 & = frac(a^2, v_1\(a^2 + x^2\)^(tfrac(3, 2))) + frac(b^2, v_2 [b^2 + \( c - x \)^2]^(tfrac(3, 2))) > 0 . $ #noindent;既然 $t'\(0\)< 0$, $t'\(c\)> 0$, 及 $t'$ 是严格递增的，故在 $\(0\,c\)$ 内有唯一的 $x_0$, 使得 $ t'\(x_0\)= 0 $ #noindent;从而当 $x = x_0$ 时，$t\(x_0\)$ 是极小值也是最小值，于是由 $t'\(x_0\)= 0$ 得到 $ frac(x_0, v_1 sqrt(a^2 + x_0^2)) = frac(c - x_0, v_2 sqrt(b^2 +\(c - x_0\)^2)) $ #noindent;即 $ frac(sin theta_1, v_1) = frac(sin theta_2, v_2) $ #noindent;这就是光的折射定律．

]
#exercise[
+ 由 $y = 0$, $x = 8$, $y = x^2$ 围成一曲边三角形 $O A B$, 在曲边 $wideparen(O B)$ 上，求一点使得过此点所作 $y = x^2$ 的切线与 $O A$⁠、$A B$ 所围成的三角形面积最大．

+ 椭圆 $x^2 / a^2 + y^2 / b^2 = 1$ 的内接矩形中怎样的矩形面积最大？又此最大的矩形面积比椭圆的内接正方形的面积大多少？

+ 设 $triangle.stroked.t A B C$ 是定圆的内接三角形，其中 $A$⁠、$B$ 两点固定，$C$ 点在圆周上变动，试求其面积最大时的位置．

+ 要做一个底面为长方形的带盖箱子，其体积为72立方厘米，其底边成 $1 : 2$ 的关系，问各边的长怎样，才能使表面积最小？

+ 设有底为等边三角形的直棱柱，体积为 $V$, 要使其总面积为最小，问底边长应为多少？

+ 设正三棱锥的侧面积为 $S$, 问当侧面与底面所成角 $alpha$ 为何值时，其体积最大？

+ 平面上通过一个已知点 $P\(1\,4\)$ 引一条直线，要使它在两个坐标轴上的截距都为正，且它们的和为最小，求这条直线的方程．

+ 直圆柱内接于半径为 $R$ 的球中，当圆柱的高为何值时，其体积最大．

+ 三个点 $A$, $B$ 和 $C$ 不在同一直线上，$angle A B C = 60 degree$, 汽车以80公里/小时的速度由 $A$ 向 $B$ 行驶，同时火车以50公里/小时的速度由 $B$ 向 $C$ 行驶．若 $A B = 200$ 公里，问运动开始几小时后汽车与火车的距离最小？

+ 船航行一昼夜的耗费由两部分组成：一为固定部分，设为 $a$ 元；另一为变动部分，设它与速度立方成比例，试问船应以怎样的速度 $v$ 行驶为最经济？

+ 在某种产品的制造过程中，次品率 $y$ 依赖于日产量 $x$, 即 $y = y\(x\)$, 已知 $ y\(x\)= display(cases(frac(1, 101 - x)\, & quad 0 lt.eq x lt.eq 100\,, 1\, & quad x > 100)) $ #noindent;其中 $x$ 为正整数．又该厂每生产一件产品可盈利 $A$ 元，但每生产出一件次品就要损失 $A / 3$ 元．问为了获得最大盈利，该厂的日产量应定为多少？

+ 抛物线 $y = x^2$ 上的哪一点到直线 $x - y - 2 = 0$ 的距离最短？

+ 一弹在空中飞行（不计空气阻力），其弹道方程为 $ y = m x - frac(\(m^2 + 1\)x^2, 800) $ #noindent;这里原点取在此弹发射之点，其中 $m$ 为曲线在原点处的切线斜率．

  + 若要此弹击中同一水平面上最远距离的目标；

  + 若要此弹击中300米远处一直立墙壁上的最大高度，问 $m$ 之值各为多少？

+ 若直角三角形的周长 $2 p$ 一定，求它的面积的最大值．

]
=== 函数的凸性与拐点
上面已经讨论了函数的增减性与极值，这对于我们了解函数的性质与图象形状有很大的帮助．现在我们还要进一步考察函数在什么区间是向上凸的，什么区间是向下凸的，以及上凸函数和下凸函数的一些性质．

#blk[定义1][
函数 $f$ 在区间 $\(a\,b\)$ 内，称为向下（上）凸的，指对于任意 $c in\(a\,b\)$, 曲线位于在点 $\(c\,f\(c\)\)$ 处的切线上（下）面（见图2.37和2.38）.

]
#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("5-35"); #counter(figure.where(kind: image)).update(n => n + 1);], caption: []), figure([#fig("5-36");], caption: []))));

#blk[定义2][
函数 $f$ 的图象若经过某点 $x = c$ 时，它的图象 $y = f\(x\)$ 由向上凸变为向下凸，或者由向下凸变为向上凸，则点 $x = c$ 称为函数 $f$ 的#strong[拐点]，如图2.39和2.40.

]
#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("5-37");], caption: []), figure([#fig("5-38");], caption: []))));

这时过 $x = c$ 的点的切线，把曲线分成两部分，换言之，存在充分小的邻域 $delta > 0$, 使得对于一切 $x in\(c - delta\,c\)$, 曲线位于在点 $c$ 处的切线的一方，而对于 $x in\(c\,c + delta\)$, 曲线在该切线的另一方．

#blk[凸性判定定理][
设函数 $f$ 在区间 $\(a\,b\)$ 内有二阶导数，则

+ 函数 $f$ 在区间 $\(a\,b\)$ 内为向下凸的充分必要条件是，对于每个 $x in\(a\,b\)$, 有 $f''\(x\)gt.eq 0$\;

+ 函数 $f$ 在区间 $\(a\,b\)$ 内为向上凸的充分必要条件是，对于每个 $x in\(a\,b\)$, 有 $f''\(x\)lt.eq 0$.

]
#proof[
假设曲线 $y = f\(x\)$ 在 $\(a\,b\)$ 内是向下凸的，因为函数 $f$ 在 $\(a\,b\)$ 内有二阶导数，则对于任意一点 $c in\(a\,b\)$, $f'\(c\)$ 存在，曲线 $y = f\(x\)$ 在点 $x = c$ 处的切线方程是#numbered-eq($ y = f\(c\)+ f'\(c\)\(x - c\) $, label: label("eq:convtan"));#noindent;对于每个点 $x in\(a\,b\)$, 曲线 $y = f\(x\)$ 的对应点的纵坐标与切线上的对应点的纵坐标之差用 $g\(x\)$ 表示，如图2.41, 于是#numbered-eq($ g\(x\)= f\(x\)-\[f\(c\)+ f'\(c\)\(x - c\)\]=\[f\(x\)- f\(c\)\]-\(x - c\)f'\(c\) $);#noindent;根据中值定理，得到 $ g\(x\)=\(x - c\)f'\(d\)-\(x - c\)f'\(c\) $ #noindent;这里 $d in\(x\,c\)$ 或 $\(c\,x\)$. 又 $g\(x\)=\(x - c\)dot.op\[f'\(d\)- f'\(c\)\]$, 再根据中值定理，得到#numbered-eq($ g\(x\)=\(x - c\)\(d - c\)f''\(e\) $, label: label("eq:convg"));#noindent;这里 $e in\(d\,c\)$ 或 $\(c\,d\)$.

于是对于一切 $x in\(a\,b\)$, 点 $\(x\,f\(x\)\)$ 不在切线 (#ref-num(label("eq:convtan"));) 的下方的充要条件是 $g\(x\)gt.eq 0$, 显然只有点 $c$ 使 $g\(c\)= 0$. 根据等式 (#ref-num(label("eq:convg"));), 并且注意到 $ \(x - c\)\(d - c\)> 0 $ #noindent;便知道 $g\(x\)gt.eq 0$ 的充分必要条件是 $f''\(e\)gt.eq 0$. 这里 $e in\(a\,b\)$ 且随着 $c$ 和 $x$ 的不同值而改变．因此，依曲线向下凸的定义，曲线向下凸的充分必要条件是对于任意 $x in\(a\,b\)$ 有 $f''\(x\)gt.eq 0$.

用同样的方法便可说明曲线 $y = f\(x\)$ 向上凸的充分必要条件是 $f''\(x\)lt.eq 0$.

]
#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("5-39");], caption: []), figure([#fig("5-40");], caption: []))));

向下凸或向上凸的函数的重要性质如下面的定理所述：

#blk[定理][
设 $f$ 是 $\[a\,b\]$ 上二次可微函数，并且 $f''\(x\)> 0$, $x in\(a\,b\)$, 那么对于每一个满足 $a < x < b$ 的 $x$⁠，有 $ f\(x\)< f\(b\)dot.op frac(x - a, b - a) + f\(a\)dot.op frac(b - x, b - a) $

]
这一定理有一个明显的几何意义（图2.42），用 $ell\(x\)$ 表示右端的一次函数：$ ell\(x\)= f\(b\)dot.op frac(x - a, b - a) + f\(a\)dot.op frac(b - x, b - a) $ #noindent;它在 $x = a$ 和 $x = b$ 的值是 $ell\(a\)= f\(a\)$ 和 $ell\(b\)= f\(b\)$, 即与 $f\(x\)$ 在这些点的值一致．因为 $y = ell\(x\)$ 的图象是 $y = f\(x\)$ 在 $\[a\,b\]$ 上的割线，因此 $\[a\,b\]$ 上的向下凸函数 $f$ 的图象 $y = f\(x\)$ 位于该区间的割线的下面．

#proof[
设 $F\(x\)= f\(x\)- f\(b\)frac(x - a, b - a) - f\(a\)frac(b - x, b - a)$⁠，这里 $x in\[a\,b\]$. 我们需要证明在 $\[a\,b\]$ 上，$F\(x\)lt.eq 0$. 因为 $F\(x\)$ 在 $\[a\,b\]$ 上连续，所以 $F\(x\)$ 在 $\[a\,b\]$ 的某点达到它的最大值，用 $c$ 表示最大值点，我们证明 $c$ 是两端点之一．

假设 $a < c < b$⁠，那么 $c$ 也是 $F\(x\)$ 的极大值点．因此 $F'\(c\)= 0$. 又 $ F'\(x\) & = f'\(x\)- frac(f\(b\), b - a) + frac(f\(a\), b - a)\
F''\(x\) & = f''\(x\)> 0\,#h(2em) x in\(a\,b\) $ #noindent;因此我们得出结论，$F\(c\)$ 是 $\[a\,b\]$ 上的最小值，即对于任意 $x in\[a\,b\]$ 且 $x eq.not c$, 有 $ F\(x\)> F\(c\)= f\(c\)- ell\(c\) $ #noindent;这与 $c$ 是极大值点矛盾，因此，唯一的可能是 $c$ 是一个端点 $a$ 或 $b$, 但是 $f\(a\)= ell\(a\)$, $f\(b\)= ell\(b\)$, 这表明 $F\(x\)= f\(x\)- ell\(x\)$ 的最大值是0, 因此在 $\[a\,b\]$ 上除端点以外的所有其他点 $x$, 有 $ F\(x\)= f\(x\)- f\(b\)frac(x - a, b - a) - f\(a\)frac(b - x, b - a) < 0 $ #noindent;即 $ f\(x\)< f\(b\)frac(x - a, b - a) + f\(a\)frac(b - x, b - a) $ #noindent;这就完成了向下凸函数定理的证明．

]
对于向上凸函数有类似的定理，即：区间 $\[a\,b\]$ 上向上凸的函数的图象位于 $\[a\,b\]$ 的割线上面，用式子表示就是 $ f\(x\)> f\(b\)frac(x - a, b - a) + f\(a\)frac(b - x, b - a)\,quad x in\(a\,b\) $

#example[
求证 $cos pi x > 1 - 2 x\,quad x in (0 \, 1 / 2)$.

]
#proof[
设 $f\(x\)= cos pi x$, $ell\(x\)= 1 - 2 x$, 因为 $ f\(0\)= 1 = ell\(0\)\,#h(2em) f (1 / 2) = 0 = ell (1 / 2) $ #noindent;所以：$y = 1 - 2 x$ 是曲线 $y = cos pi x$ 在 $[0 \, 1 / 2]$ 上的割线．

又 $f'\(x\)= - pi sin pi x$, $f''\(x\)= - pi^2 cos pi x$, 且当 $x in (0 \, 1 / 2)$ 时，有 $f''\(x\)< 0$, 即 $f\(x\)$ 在 $(0 \, 1 / 2)$ 内是向上凸的．因此，$y = cos pi x$ 在 $[0 \, 1 / 2]$ 上的图象是在该区间的割线 $y = 1 - 2 x$ 的上面，从而 $ cos pi x > 1 - 2 x\,#h(2em) x in (0 \, 1 / 2) $

]
下面给出拐点满足的必要条件．

#blk[定理][
如果 $x = c$ 是曲线 $y = f\(x\)$ 的拐点，并且 $f''\(c\)$ 存在，则 $f''\(c\)= 0$.

]
#proof[
因为 $x = c$ 是曲线的拐点，即它是曲线 $y = f\(x\)$ 向上凸和向下凸的分界点，依凸性判定定理，我们可以取 $a < c < b$, 使得 $f''\(x\)$ 在 $\(a\,c\)$ 内的函数值的符号与在 $\(c\,b\)$ 内的函数值的符号相反．

设 $g\(x\)= f'\(x\)\,thick x in\(a\,b\)$, 于是 $g'\(x\)= f''\(x\)$ 经过 $c$ 点由负变正或由正变负，因此点 $c$ 是 $g\(x\)$ 在 $\(a\,b\)$ 内的唯一的极值点，又 $g'\(c\)= f''\(c\)$ 存在，根据费马定理 $ g'\(c\)= f''\(c\)= 0 $

]
#example[
讨论函数 $f\(x\)= x^3$ 和 $f\(x\)= x^4$ 有无拐点．

]
#solution[
$f\(x\)= x^3$ 有导数 $f'\(x\)= 3 x^2$, $f''\(x\)= 6 x$, 显然 $f'\(0\)= f''\(0\)= 0$, 而且：当 $x > 0$ 时，$f''\(x\)> 0$\; 当 $x < 0$ 时，$f''\(x\)< 0$, 即曲线 $y = x^3$ 在 $\(- oo\,0\)$ 内是向上凸的，而在 $\(0\,+ oo\)$ 区间内是向下凸的．因此，$x = 0$ 是曲线的拐点而不是极值点．

又 $f\(x\)= x^4$ 有导数 $f'\(x\)= 4 x^3$, $f''\(x\)= 12 x^2$, 显然 $f'\(0\)= f''\(0\)= 0$, 并且对于每一个 $x eq.not 0$ 都有 $f''\(x\)> 0$, 因此这个曲线 $y = x^4$ 是处处向下凸的，$x = 0$ 不是曲线 $y = x^4$ 的拐点而是一个极小点．

]
下面给出判定拐点的充分条件．

#blk[定理（拐点的充分条件）][
设 $f$ 在点 $c$ 处连续，在点 $c$ 附近（可以不包括 $c$ 点）具有二阶导数，如果自变量 $x$ 通过 $c$ 时，二阶导数变号，则 $x = c$ 是曲线 $y = f\(x\)$ 的拐点．

]
#proof[
我们可以取 $c$ 点的一个邻域 $\(a\,b\)$ 使 $f''\(x\)$ 在 $\(a\,c\)$ 上的函数值的符号和在 $\(c\,b\)$ 上的相反，依凸性判定定理，$f$ 经过 $c$ 时将由向上凸变为向下凸或者由向下凸变为向上凸，即 $x = c$ 是曲线 $y = f\(x\)$ 的拐点．

]
#example[
说明 $x = 0$ 是曲线 $y = x^(tfrac(1, 3))$ 的拐点．

]
#proof[
设 $f\(x\)= x^(tfrac(1, 3))$⁠，则 $ f'\(x\)= frac(1, 3 x^(tfrac(2, 3)))\,#h(2em) f''\(x\)= frac(- 2, 9 x^(tfrac(5, 3))) $ #noindent;显然 $f'\(0\)$ 和 $f''\(0\)$ 都不存在，但是当 $x < 0$ 时，$f''\(x\)> 0$, 即曲线 $y = x^(tfrac(1, 3))$ 向下凸；当 $x > 0$ 时，$f''\(x\)< 0$, 即曲线 $y = x^(tfrac(1, 3))$ 向上凸，因此点 $x = 0$ 是曲线的拐点．

由 $limits(lim)_(x arrow.r 0) f'\(x\)= limits(lim)_(x arrow.r 0) frac(1, 3 x^(tfrac(2, 3))) = + oo$ 知，曲线在点 $x = 0$ 处的切线就是 $y$ 轴本身（见图2.43）．

]
#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("5-41");], caption: []), figure([#fig("5-42");], caption: []))));

在图2.44中，函数 $y = f\(x\)$ 的图象上的极值点 $m_1$, $m_2$ 和 $m_3$, 对应于函数 $y = f'\(x\)$ 图象上的零点；$y = f\(x\)$ 的图象上的拐点对应于 $y = f'\(x\)$ 的图象上的极值点．

#exercise[
+ #block(sticky: true)[讨论下列函数的极值、凸性及拐点，并给出函数图象的草图；]

  #cols(2)[
  + $f\(x\)= frac(1, 1 + x^2)$

  + $y =\(x - 1\)root(3, x^2)$

  ]

+ 如果函数 $f\(x\)$ 在区间 $\(a\,b\)$ 内有二阶导数，并且向上凸，求证：对于满足条件 $a lt.eq x_1 < x_2 lt.eq b$ 的任意两点 $x_1\,x_2$⁠，恒有 $ f\(lambda x_1 +\(1 - lambda\)x_2\)gt.eq lambda f\(x_1\)+\(1 - lambda\)f\(x_2\)\,quad 0 lt.eq lambda lt.eq 1 $ #noindent;如果上面的函数在区间 $\(a\,b\)$ 内向下凸，则应有怎样的结论？

+ 求证函数

  + $y = log_a x thick\(a > 1\)$ 在区间 $\(0\,+ oo\)$ 内是向上凸的；

  + $f\(x\)= sin x$ 在 $\[0\,pi\]$ 内是向上凸的；

  + $log_a frac(x_1 + x_2, 2) gt.eq frac(log_a x_1 + log_a x_2, 2) quad\(x_1 > 0\,thick x_2 > 0\)$

  + $sin frac(x_1 + x_2, 2) gt.eq frac(sin x_1 + sin x_2, 2) quad\(0 lt.eq x_1\,x_2 lt.eq pi\)$

+ 如果函数 $f\(x\)$ 在 $\(a\,b\)$ 内是向上凸的，求证：对于任意 $a lt.eq x_1 < x_2 < x_3 lt.eq b$⁠，$sum_(i = 1)^3 lambda_i = 1$⁠，有 $ f\(lambda_1 x_1 + lambda_2 x_2 + lambda_3 x_3\)gt.eq lambda_1 f\(x_1\)+ lambda_2 f\(x_2\)+ lambda_3 f\(x_3\) $

+ 求证对于任意正数 $x_1\,x_2\,x_3$ 有 $ ln (1 / 6 x_1 + 1 / 3 x_2 + 1 / 2 x_3) gt.eq ln (x_1^(tfrac(1, 6)) x_2^(tfrac(1, 3)) x_3^(tfrac(1, 2))) $

+ 若 $A\,B\,C$ 是任意三角形的三个内角，求证 $ sin A + sin B + sin C lt.eq frac(3 sqrt(3), 2) $ #noindent;又当 $A\,B\,C$ 为何值时，上面等式成立？

+ 对于 $a > 0$, $b > 0$, $0 < alpha < 1$, $0 < beta < 1$⁠，$alpha + beta = 1$⁠，求证：$a^alpha b^beta lt.eq alpha a + beta b$ 成立．（提示：利用对数函数是上凸函数）

+ $f\(x\)= a_4 x^4 + a_3 x^3 + a_2 x^2 + a_1 x + a_0$ 为具有正系数的非零多项式，若为偶函数，求证 $f\(x\)$ 在 $\(- oo\,+ oo\)$ 内向下凸，且仅有一个极值．

]
=== 作函数的图象
给出函数 $y = f\(x\)$, 常常希望画出它的图象来，这对于许多问题是有用的，在初中我们所介绍的用列表法来描绘函数的图象，有很大的不精确性和盲目性，由于所取的点是有穷多个，很可能在所要画出的某两点之间的曲线有比较剧烈的变化，如果我们用比较平滑的曲线弧去连结，于是所得曲线与实际相差很大．以前各节所介绍的函数性态可以帮助我们断定函数图象的主要特征，因此在取点之前，应先对函数的性态作一番讨论，兹将描绘曲线的一般步骤列出如下：

+ 确定函数的定义域;

+ 确定曲线关于坐标轴的对称性；

+ 确定曲线与坐标轴的交点（如果不易确定，不必强求）；

+ 确定函数的增减性，极大值与极小值；

+ 确定函数的凸性与拐点；

+ 确定曲线的渐近线；

+ 需要时，还得由曲线方程计算出一些适当的点的坐标；

+ 把上面所得的结果，按自变量大小顺序列入一个表格内，以观察图形的大概形态，然后描绘成图．

在用例子说明如何绘图之前，我们需要补充说明如何求曲线的渐近线．

#blk[定义][
假设曲线 $y = f\(x\)$ 不限制在有限平面内，即其上的点 $P$ 可以趋于无穷远，如果曲线的点 $P$ 到直线 $ell : thick a x + b y + c = 0$ 的距离 $d$, 当 $P$ 沿曲线趋于无穷远时，$d arrow.r 0$⁠，那么我们称直线 $ell$ 为所给曲线的#strong[渐近线]．

]
==== 水平渐近线及其求法
设 $ell_1 : thick y = alpha$ 是曲线 $y = f\(x\)$ 的一条渐近线，曲线上的 $P\(x\,f\(x\)\)$ 点到 $ell_1$ 的距离为 $ d =\|alpha - f\(x\)\| $ #noindent;因 $ell_1$ 为渐近线，所以，当 $x arrow.r + oo$ 或 $x arrow.r - oo$ 时，应有 $d arrow.r 0$, 即 $ lim_(x arrow.r + oo) f\(x\)= alpha\,#h(2em) upright("或") #h(2em) lim_(x arrow.r - oo) f\(x\)= alpha $ #noindent;反之，若上式成立，则 $y = alpha$ 必为 $y = f\(x\)$ 的一条渐近线．

==== 铅直渐近线及其求法
设 $ell_2 : thick x = beta$ 是曲线 $y = f\(x\)$ 的一条渐近线，又 $P\(x\,f\(x\)\)$ 为曲线上的任意一点，它到 $x = beta$ 的距离是 $ d =\|beta - x\| $ #noindent;因为 $ell_2$ 是 $y = f\(x\)$ 的渐近线，那么 $ lim_(x arrow.r beta) f\(x\)= oo $ #noindent;反之，若上式成立，则 $ell_2$ 为 $y = f\(x\)$ 的一条渐近线．

例如，对于 $y = 1 / x$, 当 $x arrow.r 0$, $y arrow.r plus.minus oo$⁠，故 $x = 0$ 是 $y = 1 / x$ 的一条渐近线．

==== 任意渐近线及其求法
设直线 $ell_3 : thick y = k x + b$ 是曲线 $y = f\(x\)$ 的一条渐近线，曲线上任意一点 $P\(x\,f\(x\)\)$ 到直线 $ell_3$ 的距离是 $ d = lr(|frac(k x + b - f\(x\), sqrt(1 + k^2))|) $ #noindent;因为 $ell_3$ 是渐近线，所以当 $x arrow.r plus.minus oo$ 时，$d arrow.r 0$, 即 $ k x + b - f\(x\)arrow.r 0 $ #noindent;我们必须用上式求出 $k\,b$, 才能确定 $ell_3$. 由于当 $x arrow.r plus.minus oo$ 时，$1 / x arrow.r 0$, 所以 $ lim_(x arrow.r plus.minus oo) [k + b / x - frac(f\(x\), x)] & = lim_(x arrow.r plus.minus oo) 1 / x\[k x + b - f\(x\)\]\
 & = lim_(x arrow.r plus.minus oo) 1 / x dot.op lim_(x arrow.r plus.minus oo)\[k x + b - f\(x\)\]= 0 $ #noindent;由于 $b$ 是常数，故有

#numbered-align(($k$, $eqph = lim_(x arrow.r plus.minus oo) frac(f\(x\), x) #h(2em) upright("(渐近线方向)")$, true), ($b$, $eqph = lim_(x arrow.r plus.minus oo)\[f\(x\)- k x\]$, true));

#example[
求函数 $f\(x\)= - 3 x^5 + 5 x^3$ 的极值、拐点，并画出它的图象的草图．

]
#solution[
+ 曲线的范围与截距：这函数 $f$ 的定义域与值域都是无限的，它的曲线伸展在整个平面内，与 $y$ 轴的交点是原点，而与 $x$ 轴有三个交点，其零点是 $0\,plus.minus sqrt(5 / 3)$.

+ 对称性：因为 $f\(- x\)= - f\(x\)$, 所以曲线关于原点对称．

+ 函数的增、减与极值：$ f'\(x\)= - 15 x^4 + 15 x^2 = - 15 x^2\(x - 1\)\(x + 1\) $ #noindent;由此知 $f\(x\)$ 的驻点是 $- 1\,0\,1$. $f'\(x\)$ 的符号变化的情况是：

  - 当 $x < - 1$ 时，$f'\(x\)< 0$, 这时 $f\(x\)$ 递减；

  - 当 $- 1 < x < 1$ 时, $f'\(x\)> 0$⁠，这时 $f\(x\)$ 递增；

  - 当 $x > 1$ 时，$f'\(x\)< 0$, 这时 $f\(x\)$ 递减．

  #noindent;因此，$x = - 1$ 是极小点，极小值 $f\(- 1\)= - 2$\; $x = 1$ 是极大点，极大值 $f\(1\)= 2$.

+ 函数的凸性与拐点：$ f''\(x\)= - 60 x^3 + 30 x = - 60 x (x + sqrt(2) / 2) (x - sqrt(2) / 2) $ #noindent;拐点的可能值是 $- sqrt(2) / 2\,0\,sqrt(2) / 2$. 又 $f''\(x\)$ 的符号变化情况是

  - 当 $x < - sqrt(2) / 2$ 时，$f''\(x\)> 0$, 此时曲线向下凸；

  - 当 $- sqrt(2) / 2 < x < 0$ 时，$f''\(x\)< 0$, 此时曲线向上凸；

  - 当 $0 < x < sqrt(2) / 2$ 时，$f''\(x\)> 0$, 此时曲线向下凸；

  - 当 $x > sqrt(2) / 2$ 时，$f''\(x\)< 0$, 此时曲线向上凸；

  #noindent;因此：$x = - sqrt(2) / 2\,0\,sqrt(2) / 2$ 的点都是拐点．

+ 列表：今将讨论情况列成下表，并作图（如图2.45）

#align(center)[
#text(size: 0.9em)[#table(
  columns: (auto, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto,),
  align: (center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon,),
  table.hline(),
  [$x$],
  [],
  [$- 1$],
  [],
  [$- sqrt(2) / 2$],
  [],
  [0],
  [],
  [$sqrt(2) / 2$],
  [],
  [1],
  [],
  table.hline(),
  [$f'\(x\)$],
  [$-$],
  [0],
  [$+$],
  [$+$],
  [$+$],
  [0],
  [$+$],
  [$+$],
  [$+$],
  [0],
  [$-$],
  [$f''\(x\)$],
  [$+$],
  [$+$],
  [$+$],
  [0],
  [$-$],
  [0],
  [$+$],
  [0],
  [$-$],
  [$-$],
  [$-$],
  [$f\(x\)$],
  [下凸],
  [极小值],
  [$arrow.tr$],
  [$- 1.24$],
  [上凸],
  [0],
  [下凸],
  [1.24],
  [上凸],
  [极大值],
  [$arrow.br$],
  [],
  [$arrow.br$],
  [$- 2$],
  [],
  [],
  [$arrow.tr$],
  [],
  [$arrow.tr$],
  [],
  [$arrow.tr$],
  [2],
  [],
  table.hline(),
)]

]
#figure([#fig("5-43");

  ],
  caption: [
  ]
)

]
#example[
描绘函数 $y = frac(\(x - 3\)^2, 4\(x - 1\))$ 的图象．

]
#solution[
这个函数在 $x = 1$ 这点没有定义，并且，当 $x arrow.r 1^(-)$ 时，$y arrow.r - oo$\; 当 $x arrow.r 1^(+)$ 时，$y arrow.r + oo$, 所以 $x = 1$ 是曲线的铅直渐近线，曲线在 $x = 1$ 这点断开．

求导数，得 $ y' = frac(\(x + 1\)\(x - 3\), 4\(x - 1\)^2) $

当 $x < - 1$ 时，$y' > 0$⁠；当 $- 1 < x < 3$（$x eq.not 1$⁠）时，$y' < 0$⁠；当 $x > 3$ 时，$y' > 0$⁠．因此，$x = - 1$ 是极大点；$x = 3$ 是极小点．又极大值 $f\(- 1\)= - 2$\; 极小值 $f\(3\)= 0$

求二阶导数，得 $ y'' = frac(2, \(x - 1\)^3) $

- 当 $x < 1$ 时，$y'' < 0$, 曲线向上凸；

- 当 $x > 1$ 时，$y'' > 0$, 曲线向下凸，但是曲线在 $x = 1$ 这一点断开，因此 $x = 1$ 不是曲线的拐点．

又因为 $ y = frac(\(x - 3\)^2, 4\(x - 1\)) = 1 / 4\(x - 5\)+ frac(1, x - 1)\
lim_(x arrow.r oo) [frac(\(x - 3\)^2, 4\(x - 1\)) - 1 / 4 \( x - 5 \)] = lim_(x arrow.r oo) frac(1, x - 1) = 0 $ #noindent;这就是说曲线以 $y = 1 / 4 x - 5 / 4$ 为渐近线．

综合起来得到下面结果：

#align(center)[
#table(
  columns: (auto, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto,),
  align: (center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon,),
  table.hline(),
  [$x$],
  [],
  [$- 1$],
  [],
  [0],
  [],
  [1],
  [],
  [3],
  [],
  [],
  [],
  table.hline(),
  [$y'$],
  [$+$],
  [0],
  [$-$],
  [$-$],
  [$-$],
  [$times$],
  [$-$],
  [0],
  [$+$],
  [],
  [],
  [$y''$],
  [$-$],
  [$-$],
  [$-$],
  [$-$],
  [$-$],
  [$times$],
  [$+$],
  [$+$],
  [$+$],
  [],
  [],
  [$y$],
  [$arrow.tr$],
  [极大值],
  [$arrow.br$],
  [$arrow.br$],
  [$arrow.br$],
  [$times$],
  [$arrow.br$],
  [极小值],
  [$arrow.tr$],
  [],
  [],
  [],
  [],
  [$- 2$],
  [],
  [$- 9 / 4$],
  [$- oo$],
  [],
  [$+ oo$],
  [0],
  [],
  [],
  [],
  table.hline(),
);

]
画出具体图形如图2.46.

#figure([#fig("5-44");

  ],
  caption: [
  ]
)

]
#exercise[
+ #block(sticky: true)[讨论下列函数的极值、凸性和拐点, 并画出函数图象.]

  #cols(2)[
  + $y = frac(6\(x - 1\), x^2 + 3)$

  + $y =\(x - 1\)^3 - 3\(x - 1\)$

  + $y = x^4 / 2 - x^2$

  + $y = 1 + 4 x^3 - 3 x^4$

  + $y = sqrt(\(x + 2\)^2 (16 - x^2))$

  + $y = x^x quad\(x > 0.1\)$

  + $y = x e^(- x)$

  ]

+ #block(sticky: true)[作下列函数的图象, 并画出渐近线及在拐点处的切线:]

  #cols(2)[
  + $y = x + 1 / x$

  + $y = frac(x^2, 1 + x)$

  + $y = frac(2 x, 1 - x^2)$

  + $y = frac(x^3, x^2 - 4)$

  + $y = frac(\(x - 5\)\(x + 3\), \(x + 2\)^2)$

  ]

]
#heading(level: 3, numbering: none, outlined: false)[习题2.3]
+ 求函数 $f\(x\)= x^3 + a x^2 - 3 b x + c$ 的图象关于原点对称时，$f\(x\)$ 在区间 $- 2 lt.eq x lt.eq 2$ 上的最小值，其中 $b > 0$.

+ 函数 $f\(x\)= 3 x^2 - a x^3$ 在区间 $0 lt.eq x lt.eq 2$ 上的最小值是 $- 4$, 求

  + $a$ 的值

  + $f\(x\)$ 在区间 $0 lt.eq x lt.eq 2$ 的最大值 $M$

+ 设 $a\,b$ 为实数，求函数 $y = x^3 - 3 a x^2 + b x + 1$ 在区间 $0 lt.eq x lt.eq 1$ 上单调增加时，点 $\(a\,b\)$ 存在范围，并用图表示出来．

+ 设 $f\(x\)= x^3 - 5 x^2 + 3 x + a$, 在怎样的情况下对于 $x$ 的正值，总有 $f\(x\)> 0$ 成立？

+ 设 $a$ 是常数，对于函数 $f\(x\)= 4 x^3 - 3 x + a$

  + 求 $y = f\(x\)$ 的极大值和极小值；

  + 确定当方程 $f\(x\)= 0$ 有三个不相等的实根时，$a$ 值的范围．

+ 讨论函数 $y = frac(x^3, 2\(x + 2\))$ 的极值，凸向，拐点，渐近线，并作出它的图象．

+ 求证 $pi < frac(sin pi x, x\(1 - x\)) lt.eq 4 quad\(0 < x < 1\)$.

+ 对于已知半径为 $R$ 的球，求具有最小体积的外切圆锥的体积．

+ 一长方体的对角线长 $sqrt(11)$⁠cm，全面积为 $14 upright(c m)^2$, 求它的体积的最大值，并求体积为最大时三边的长．

+ 一浮标由三部分组成，一个圆筒与两个相等的圆锥，其中每一个圆锥的高等于圆筒的高，问当表面积一定时，什么样的形状会有最大的体积．
