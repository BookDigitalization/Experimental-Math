// 由 typst/tools/tex2typ.py 从 math3/7.tex 转换而来，已人工校对的部分以本文件为准。
#import "../common/template.typ": *
#import "figs.typ": fig

= 三角函数的图象和性质
我们知道，函数图象能把函数性质形象地表现出来，为了便于研究三角函数的性质，我们现在来做出各三角函数的图象．

== 正弦函数的图象和性质
=== 正弦函数的图象
我们知道正弦函数的定义域是 $\(- oo\,+ oo\)$, 且它是个奇函数，故它的图象可在 $x$ 轴的正、负方向无限延伸，且图象关于原点对称．

我们先用描点法作出它的图象，列出 $x$ 由0到 $2 pi$ 每隔 $pi / 6$ 取值的正弦值表如下：

#align(center)[
#table(
  columns: (auto, auto, auto, auto, auto, auto, auto, auto,),
  align: (center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon,),
  table.vline(x: 1),
  table.hline(),
  [$x$],
  [0],
  [$pi / 6$],
  [$pi / 3$],
  [$pi / 2$],
  [$frac(2 pi, 3)$],
  [$frac(5 pi, 6)$],
  [$pi$],
  [$sin x$],
  [0],
  [$1 / 2 = 0.5$],
  [$sqrt(3) / 2 approx 0.87$],
  [1],
  [$sqrt(3) / 2 approx 0.87$],
  [$1 / 2 = 0.5$],
  [0],
  table.hline(),
  [$x$],
  [],
  [$frac(7 pi, 6)$],
  [$frac(4 pi, 3)$],
  [$frac(3 pi, 2)$],
  [$frac(5 pi, 3)$],
  [$frac(11 pi, 6)$],
  [$2 pi$],
  [$sin x$],
  [],
  [$- 1 / 2 = - 0.5$],
  [$- sqrt(3) / 2 approx - 0.87$],
  [$- 1$],
  [$- sqrt(3) / 2 approx - 0.87$],
  [$- 1 / 2 = - 0.5$],
  [0],
  table.hline(),
);

]
把表内 $x\,y$ 的每一对值作为点的坐标，在直角坐标系内作出对应的点，将它们依次连结成平滑曲线，这条曲线就是 $\[0\,2 pi\]$ 上正弦函数 $y = sin x$ 的图象 (图7.1)．

#figure([#fig("7-01");

  ],
  caption: [
  ]
)

因为终边相同的角的三角函数值相等，所以正弦函数 $y = sin x$ 在区间 $\[2 k pi\,2\(k + 1\)pi\]thick\(k = plus.minus 1\,plus.minus 2\,plus.minus 3\,dots.h\)$ 上的图象，与它在 $\[0\,2 pi\]$ 上的图象完全一样，因此，为了要作出整个定义域上的正弦函数的图象，我们只要把它在 $\[0\,2 pi\]$ 上的图象向左或向右平移 $2 pi\,4 pi\,dots.h$ 就可以得到 $y = sin x\,thick x in bb(R)$ 的图象 (图7.2)．

正弦函数 $y = sin x$ 的图象叫做正弦曲线．

由上面描点法可以看出，要作出整个定义域上正弦函数的图象，关键要作出 $\[0\,2 pi\]$ 上的正弦函数的图象，而要作出 $\[0\,2 pi\]$ 上正弦函数图象，有五个关键点：$\(0\,0\)$, $(pi / 2 \, 1)$, $\(pi\,0\)$, $(frac(3 pi, 2) \, - 1)$, $\(2 pi\,0\)$ 就可以把图象基本确定了．

#figure([#fig("7-02");

  ],
  caption: [
  ]
)

因此，在精确度要求不太高时，我们常用“五点法”作出关于正弦函数在 $\[0\,2 pi\]$ 上的图象．

#example[
用五点法作出 $y = 1 + sin x\,quad x in\[0\,2 pi\]$ 的图象．

]
#solution[
列表

#align(center)[
#table(
  columns: (auto, auto, auto, auto, auto, auto,),
  align: (center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon,),
  table.vline(x: 1),
  table.hline(),
  [$x$],
  [0],
  [$pi / 2$],
  [$pi$],
  [$frac(3 pi, 2)$],
  [$2 pi$],
  table.hline(),
  [$sin x$],
  [0],
  [1],
  [0],
  [$- 1$],
  [0],
  [$1 + sin x$],
  [1],
  [2],
  [1],
  [0],
  [1],
  table.hline(),
);

]
描点作图：（如图7.3）

#figure([#fig("7-03");

  ],
  caption: [
  ]
)

]
我们也可以用几何法作出 $\[0\,2 pi\]$ 上正弦函数的图象．如图7.4所示，在 $O - x$ 轴的负半轴上任意取一点，以这点为圆心，单位长为半径作圆，从这个圆的右半圆和 $O - x$ 轴的交点 $P_0$ 量起，把这个圆分成12等份，并在 $O - x$ 轴上，从原点起向右取长等于 $2 pi$\(即单位圆的周长）的一段，也分成12等份，过圆上的各个分点，分别向 $O x$ 轴作垂线，便得到各分点上的纵坐标，显然，这些点的纵坐标就是对应各角（数）的正弦值，因此过各分点作平行于 $O - x$ 轴的直线，它们分别与由 $O - x$ 轴上各个对应点处所作 $O x$ 轴的垂线相交，这些交点就是 $y = sin x$ 图象上的点．把这些点依次连结成平滑的曲线，就得到正弦函数 $y = sin x$ 在 $\[0\,2 pi\]$ 区间上的图象．

如果把曲线在 $\[0\,2 pi\]$ 间的一段，沿着 $O x$ 轴向左、右连续移动，每次移动 $2 pi$ 个单位，就可以得到如图7.2所示的连续不断的正弦曲线．

#figure([#fig("7-04");

  ],
  caption: [
  ]
)

#exercise[
+ 作 $y =\|sin x\|\,quad x in bb(R)$ 的图象．

+ 用“五点法”作出下列各函数的图象 ($0 lt.eq x lt.eq 2 pi$), 并且和 $y = sin x$ 的图象比较，说明这些图象和 $y = sin x$ 的图象的区别．

  + $y = sin x - 1$

  + $y = 1 - sin x$

  + $y = 2 sin x$

]
=== 正弦函数的主要性质
由上一章的讨论和正弦函数图象，我们可以得到正弦函数 $y = sin x$ 的主要性质如下：

+ 定义域#h(1em);正弦函数的定义域是一切实数，也就是说，当自变量 $x$ 取任何实数值时，正弦函数 $y$ 都有唯一确定的值与之对应，从图象上看曲线随着 $x$ 轴连续不断地无限延伸．

+ 值域#h(1em);由图7.2看出，曲线上点的纵坐标最小是－1, 最大是1, 正弦函数值是在 $- 1$ 与 $+ 1$ 之间，这说明正弦函数的值域是闭区间 $\[- 1\,1\]$, 或 $\|sin x\|lt.eq 1$.

+ 奇偶性#h(1em);正弦函数是奇函数，因此，正弦曲线关于原点对称．

+ 函数的符号#h(1em);终边落在 $x$ 轴的上半平面时，正弦函数为正；落在 $x$ 轴的下半平面时，正弦函数为负．也就是说，在区间 $\(0\,pi\)$ 内，$sin x > 0$⁠．一般地，当 $2 k pi < x <\(2 k + 1\)pi$ 时（$k in bb(Z)$⁠），$sin x > 0$⁠．在区间 $\(pi\,2 pi\)$ 内，$sin x < 0$. 一般地，当 $\(2 k + 1\)pi < x < 2\(k + 1\)pi$ 时，$sin x < 0$⁠．这反映在图象上，在区间 $\(2 k pi\,\(2 k + 1\)pi\)\,thick thick k = 0\,plus.minus 1\,plus.minus 2\,dots.h$ 上，曲线在 $x$ 轴的上方；在区间 $\(\(2 k + 1\)pi\,2\(k + 1\)pi\)\,thick thick k = 0\,plus.minus 1\,plus.minus 2\,dots.h$ 上，曲线在 $x$ 轴下方．

  当横坐标 $x = 0$, $x = pi$ 和 $x = 2 pi$ 时，正弦函数值为零．一般地，当 $x = k pi thick\(k in bb(Z)\)$ 时，$sin x = 0$, 这时曲线与 $x$ 轴相交．

+ 增减性#h(1em);由正弦曲线容易看出，随着 $x$ 增加正弦函数在区间 $(- pi / 2 \, pi / 2)$ 内是递增的；在区间 $(pi / 2 \, frac(3 pi, 2))$ 内是递减的．一般的情况是 $sin x$ 在区间 $(- pi / 2 + 2 k pi \, pi / 2 + 2 k pi)$ 内是递增的，在区间 $(pi / 2 + 2 k pi \, pi / 2 + \( 2 k + 1 \) pi)$ 内是递减的，这里 $k in bb(Z)$⁠．

  由 $sin x$ 的增减性看出，在 $x = pi / 2$ 处，正弦函数由递增变为递减，因此在 $x = pi / 2$ 处，$sin x$ 取得极大值1. 一般地，当 $x = pi / 2 + 2 k pi thick thick\(k in bb(Z)\)$ 时，$sin x = 1$ 是极大值．同时还看出，在 $x = frac(3 pi, 2)$ 处，正弦函数由递减变为递增，因此在 $x = frac(3 pi, 2)$ 处，$sin x$ 取得极小值 $- 1$, 一般地，当 $x = frac(3 pi, 2) + 2 k pi thick thick\(k in bb(Z)\)$ 时，$sin x = - 1$ 是极小值．

+ 周期性#h(1em);当横坐标 $x$ 每隔 $2 pi$ 时，曲线重复出现，也就是说，正弦曲线上任何一点的横坐标加上或减去 $2 pi$ 时，对应的纵坐标相等，即 $ sin\(x plus.minus 2 pi\)= sin x $ #noindent;一般地：$ sin\(x + 2 k pi\)= sin x quad\(k in bb(Z)\) $

  从上面的公式知道正弦函数是周期函数，它的周期有无穷多个，即 $2 pi$ 的整数倍，但是我们所关心的是最小正周期．

  下面我们来研究一般的周期函数的定义，并证明正弦函数的最小正周期是 $2 pi$⁠．

#blk[定义][
设有 $x$ 的函数 $f\(x\)$, 若存在不等于0的一个常数 $p$, 使对于函数定义域中的任何实数 $x$, 等式#numbered-eq($ f\(x\)= f\(x + p\) $);#noindent;成立，则称 $f\(x\)$ 是周期函数，常数 $p$ 叫做函数 $f\(x\)$ 的一个周期．

]
下面我们来说明，任何周期函数一定有正周期．

在等式 (7.1) 中，以 $x - p$ 替换 $x$, 就得到 $ f\(x - p\)= f\(x\) $ #noindent;因此有 $f\(x\)= f\(x plus.minus p\)$⁠．这也就是说，$plus.minus p$ 都是函数 $f\(x\)$ 的周期，故 $f\(x\)$ 必有正周期．

函数 $f\(x\)$ 的最小正周期应满足：

+ $p > 0$⁠；

+ 对于任意实数 $x$, 正数 $p$ 须使 $f\(x + p\)= f\(x\)$ 成立；

+ $p$ 为满足1、2的最小正数．

下面我们来证明 $sin x$ 的最小正周期等于 $2 pi$⁠．

在恒等式 $sin\(x + p\)= sin x$ 中，令 $x = 0$, 得到 $sin p = 0$, 在单位圆上，弧的始点为 $\(1\,0\)$, 而弧长分别等于0和 $pi$ 的这两个弧的端点 $P_0\,P_pi$ 的纵坐标等于0, 又和这两个点对应的最小正数分别是 $2 pi$ 和 $pi$⁠．在这两个数中，$pi$ 显然不能是周期，因为，$sin pi / 2 = 1$⁠，但 $sin (pi / 2 + pi) = - 1$⁠，因此最小正周期只可能是 $2 pi$, 由于 $sin\(x + 2 pi\)= sin x$, 对于任何数 $x$ 都成立，所以 $sin x$ 的最小正周期等于 $2 pi$⁠．

#example[
求下列函数的最小正周期：

#cols(2)[
+ $y = sin 2 x$

+ $y = 2 sin (4 x - pi / 6)$

]
]
#solution[
+ 因为 $sin 2 x = sin\(2 x + 2 pi\)= sin 2\(x + pi\)\,thick thick\(x in bb(R)\)$, 即当自变量 $x$ 改变成 $x + pi$ 时，函数值不变，所以 $y = sin 2 x$ 的周期 $T = pi$.

  为证明 $pi$ 是 $sin 2 x$ 的最小正周期，我们用反证法．假设 $y = sin 2 x$ 还有一个比 $pi$ 小的正周期 $T'$, 即 $0 < T' < pi$⁠，根据周期 $T'$ 的定义，我们有 $ sin 2\(x + T'\)= sin 2 x $ #noindent;即 $ sin\(2 x + 2 T'\)= sin 2 x $ #noindent;令 $x = 0$, 代入上式得 $sin 2 T' = 0$, 依不等式 $0 < T' < pi$⁠，从而 $0 < 2 T' < 2 pi$⁠，得到 $2 T' = pi$ 即 $ T' = pi / 2 $

  今验知，$sin 2 (x + pi / 2) = sin\(2 x + pi\)= - sin 2 x$. 故 $T'$ 不是 $y = sin 2 x$ 的周期，因此得到矛盾．这就是说 $sin 2 x$ 的最小正周期是 $pi$⁠．

+ 因为 $ 2 sin (4 x - pi / 6) & = 2 sin (4 x - pi / 6 + 2 pi)\
   & = 2 sin [4 (x + pi / 2) - pi / 6] quad\(x in bb(R)\) $ #noindent;即当自变量 $x$ 改变成 $x + pi / 2$ 时，函数值不变，所以 $y = 2 sin (4 x - pi / 6)$ 的周期 $T = pi / 2$. 再证 $T = pi / 2$ 是 $y = 2 sin (4 x - pi / 6)$ 的最小正周期．

  假设 $y = 2 sin (4 x - pi / 6)$ 还有一个比 $pi / 2$ 小的正周期 $T'$⁠，即 $0 < T' < pi / 2$⁠，从而得到#numbered-eq($ 0 < 4 T' < 2 pi $);

  根据周期 $T'$ 的定义，我们有#numbered-eq($ 2 sin [4 \( x + T' \) - pi / 6] = 2 sin (4 x - pi / 6) $);#noindent;即#numbered-eq($ 2 sin [(4 x - pi / 6) + 4 T'] = 2 sin (4 x - pi / 6) $);

  令 $4 x - pi / 6 = 0$, 即 $x = pi / 24$, 代入 (7.4), 得 $ 2 sin 4 T' = 0 $ #noindent;依不等式 (7.2)，$4 T'$ 的值只能是 $pi$⁠，即 $T' = pi / 4$⁠．今验证知 $ 2 sin [4 (x + pi / 4) - pi / 6] = 2 sin (4 x + pi - pi / 6) = - 2 sin (4 x - pi / 6) $ #noindent;故 $T' = pi / 4$ 不是 $2 sin (4 x - pi / 6)$ 的周期，因此得到矛盾．这就证明了 $y = 2 sin (4 x - pi / 6)$ 的最小正周期是 $pi / 2$⁠．

]
一般地，对于函数 $y = A sin\(omega x + phi\)$（$omega\,phi$ 为常数，且 $omega eq.not 0$⁠，$x in bb(R)$⁠），由于 $ A sin\(omega x + phi\) & = A sin\(omega x + phi + 2 pi\)\
 & = A sin [omega (x + frac(2 pi, omega)) + phi] $ #noindent;故 $frac(2 pi, \|omega\|)$ 是 $y = A sin\(omega x + phi\)$ 的一个正周期，它只与自变量的系数有关，而与 $A\,phi$ 无关．用上面同样的方法可以证明 $frac(2 pi, \|omega\|)$ 是 $y = A sin\(omega x + phi\)$ 的最小正周期（证明留给读者去完成）．

#example[
不求值决定下列各差的符号：

+ $sin 20 degree 12' - sin 20 degree 13'$

+ $sin (- pi / 18) - sin (- pi / 10)$

+ $sin 1605 degree - sin 1657 degree$

]
#solution[
+ 正弦函数在第一象限是增函数，

  $therefore quad sin 20 degree 12' < sin 20 degree 13'$ 即 $ sin 20 degree 12' - sin 20 degree 13' < 0 $

+ $because quad - pi / 2 < - pi / 10 < - pi / 18 < pi / 2$

  正弦函数 $y = sin x$ 在 $- pi / 2 < x < pi / 2$ 上是增函数

  $therefore quad sin (- pi / 10) < sin (- pi / 18)$ 即 $ sin (- pi / 18) - sin (- pi / 10) > 0 $

+ $because quad sin 1605 degree = sin 165 degree\,#h(2em) sin 1657 degree = sin 217 degree$

  又 $because quad 90 degree < 165 degree < 217 degree < 270 degree$⁠，正弦函数 $y = sin x$ 在 $90 degree < x < 270 degree$ 上是减函数．

  $therefore quad sin 165 degree > sin 217 degree$⁠，即 $ sin 1605 degree - sin 1657 degree > 0 $

]
#example[
求证定圆的外切菱形中以正方形的面积最小．

]
#solution[
如图7.5, 设定圆 $O$ 的半径为 $r$, 它的外切菱形中的 $angle A = theta$, 由于对边切点连线必过圆心，故外切菱形的高等于 $2 r$, 外切菱形的边长为 $frac(2 r, sin theta)$⁠．

#figure([#fig("7-05");

  ],
  caption: [
  ]
)

于是，菱形面积 $S = 2 r dot.op frac(2 r, sin theta) = frac(4 r^2, sin theta)$⁠，当 $sin theta = 1$ 时，菱形面积 $S$ 最小，这时 $theta = 90 degree thick thick\(0 degree < theta < 180 degree\)$.

因此，定圆的外切菱形中以正方形的面积最小．

]
#example[
求函数 $y = (sin x - 1 / 2)^2 + 2$ 的最大值和最小值，并求取最大值或最小值时的 $x$ 值．

]
#solution[
把 $y$ 看作 $sin x$ 的二次函数，这样问题变成求闭区间 $- 1 lt.eq sin x lt.eq 1$ 上的 $y$ 的最大值和最小值．也就是要把区间 $\(- 1\,1\)$ 内的极值和两端点处的函数值作比较．

+ 当 $sin x = - 1$ 时，$y = (- 1 - 1 / 2)^2 + 2 = 4 1 / 4$

+ 当 $sin x = 1$ 时，$y = (1 - 1 / 2)^2 + 2 = 2 1 / 4$

+ 当 $sin x = 1 / 2$ 时，极小值 $y = 2$, 这是函数在 $\(- 1\,1\)$ 中的唯一极值点．

因此，

+ 当 $sin x = - 1$, 即 $x = - pi / 2 + 2 k pi quad\(k in bb(Z)\)$ 时，最大值 $y = 4 1 / 4$⁠；

+ 当 $sin x = 1 / 2$⁠，即 $x = pi / 6 + 2 k pi$ 或 $frac(5 pi, 6) + 2 k pi quad\(k in bb(Z)\)$ 时，最小值 $y = 2$⁠．

]
#heading(level: 2, numbering: none, supplement: [toc-sub])[习题7.1]

+ 比较下列各组中两个三角函数值的大小（不求值）：

  + $sin 250 degree$ 和 $sin 260 degree$

  + $sin (- 54 / 7 pi)$ 和 $sin (- 63 / 8 pi)$

  + $sin 380 degree$ 和 $sin 480 degree$

+ #block(sticky: true)[说出下列各函数的最小正周期：]

  #cols(2)[
  + $y = sin 3 x$

  + $y = sin x / 2$

  + $y = sin (x + pi / 3)$

  + $y = cos (2 x - pi / 6)$

  + $y = 3 sin (x / 3 + pi / 4)$

  + $y = 3 sin (pi x + pi / 3) + 1$

  ]

+ #block(sticky: true)[求下面函数的最大值和最小值，又在何时有最大值或最小值:]

  #cols(2)[
  + $y =\|sin x\|$

  + $y = 1 + sin x$

  + $y = 1 + 5 sin^2 x$

  + $y = frac(1, 1 - sin x)$

  + $y = (sin x - 3 / 2)^2 - 2$

  + $y = 2 - (sin x - sqrt(3) / 2)^2$

  ]

+ 求证等腰三角形中，若腰长一定则等腰直角三角形的面积最大．

+ $y =\|sin x\|$ 是周期函数吗？如果是，说出它的最小正周期．

+ 作 $y = sin thin \|x\|$ 的图象，试从它的图象说明函数 $y = sin thin \|x\|$ 不是周期函数．

+ 利用单位圆，容易看出 $sin x < 1 / 2$ 的解的范围，如下图所示．$ frac(5 pi, 6) + 2 k pi < x < pi / 6 + 2\(k + 1\)pi $

  #align(center)[
  #fig("7-06");

  ]
  用同样的方法解下面不等式：$ sin 2 x > 1 / 2\,#h(2em) sin 3 x gt.eq - sqrt(2) / 2 $

== 余弦函数的图象和性质
=== 余弦函数的图象
我们知道余弦函数的定义域是 $\(- oo\,+ oo\)$, 它是个偶函数，故它的图象向 $x$ 轴的正负方向无限延伸，图象关于 $y$ 轴对称．

我们从第五章中知道，函数 $f\(x + ell\)$ 的图象是由函数 $f\(x\)$ 的图象向左、右平移 $\|ell\|$ 个单位得到，当 $ell > 0$ 时，向左平移 $ell$ 个单位，当 $ell < 0$ 时，向右平移 $\|ell\|$ 个单位．

在上一章我们又知道，$cos x = sin (pi / 2 + x)$, 故 $y = cos x$ 的图象就是 $y = sin (x + pi / 2)$ 的图象，而正弦型函数 $y = sin (x + pi / 2)$ 的图象恰是正弦函数 $y = sin x$ 的图象向左平移 $pi / 2$ 个单位得到，这就是说，我们只须把正弦曲线 $y = sin x$ 沿着 $x$ 轴向左平移 $pi / 2$ 个单位就得到余弦函数 $y = cos x$ 的图象．如图7.6所示．

#figure([#fig("7-07");

  ],
  caption: [
  ]
)

当然，也可以用描点法来作余弦函数的图象．根据上面所说的我们可以借助第一节中的正弦函数值表，将自变数 $x$ 的取值分别减去 $pi / 2$ 而对应的 $y$ 值仍不变就能够得到余弦函数值表．

把表内 $x$⁠、$y$ 的每一对值作为点的坐标，在直角坐标系内作出对应的点，将它们依次连结成平滑曲线，这样就得到余弦函数在 $[- pi / 2 \, frac(3 pi, 2)]$ 上的图象．如果把曲线 $[- pi / 2 \, frac(3 pi, 2)]$ 上的一段，沿着 $x$ 轴向左、右推移，每次移动 $2 pi$ 个单位，就可以得到连续不断的余弦函数的图象 (图7.7)．

#align(center)[
#table(
  columns: (auto, auto, auto, auto, auto, auto, auto, auto,),
  align: (center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon,),
  table.vline(x: 1),
  table.hline(),
  [$x$],
  [$- pi / 2$],
  [$- pi / 3$],
  [$- pi / 6$],
  [0],
  [$pi / 6$],
  [$pi / 3$],
  [$pi / 2$],
  [$y = cos x$],
  [0],
  [$1 / 2 = 0.5$],
  [$sqrt(3) / 2 approx 0.87$],
  [1],
  [$sqrt(3) / 2 approx 0.87$],
  [$1 / 2 = 0.5$],
  [0],
  table.hline(),
  [$x$],
  [],
  [$frac(2 pi, 3)$],
  [$frac(5 pi, 6)$],
  [$pi$],
  [$frac(7 pi, 6)$],
  [$frac(4 pi, 3)$],
  [$frac(3 pi, 2)$],
  [$y = cos x$],
  [],
  [$- 1 / 2 = - 0.5$],
  [$- sqrt(3) / 2 approx - 0.87$],
  [$- 1$],
  [$- sqrt(3) / 2 approx - 0.87$],
  [$- 1 / 2 = - 0.5$],
  [0],
  table.hline(),
);

]
#figure([#fig("7-08");

  ],
  caption: [
  ]
)

余弦函数 $y = cos x$ 的图象叫做余弦曲线．

如作正弦函数的图象那样，只要把 $(- pi / 2 \, 0)$⁠、$\(0\,1\)$⁠、$(pi / 2 \, 0)$⁠、$\(pi\,- 1\)$⁠、$(frac(3 pi, 2) \, 0)$ 这五个点作出后，余弦函数 $y = cos x\,thick thick x in [- pi / 2 \, frac(3 pi, 2)]$ 的图象就基本确定了．因此，在精确度要求不太高的情况下，也可用“五点法”作出关于余弦函数的图象．

#example[
用“五点法”作出 $y = - cos x\,thick thick x in\[0\,2 pi\]$ 的图象．

]
#solution[
列表并作图（如图7.8所示）

#align(center)[
#table(
  columns: (auto, auto, auto, auto, auto, auto,),
  align: (center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon,),
  table.hline(),
  [$x$],
  [0],
  [$pi / 2$],
  [$pi$],
  [$frac(3 pi, 2)$],
  [$2 pi$],
  table.hline(),
  [$cos x$],
  [1],
  [0],
  [$- 1$],
  [0],
  [1],
  [$- cos x$],
  [$- 1$],
  [0],
  [1],
  [0],
  [$- 1$],
  table.hline(),
);

]
#figure([#fig("7-09");

  ],
  caption: [
  ]
)

]
=== 余弦函数的主要性质
由上一章的讨论和余弦函数图象，我们可以得到余弦函数 $y = cos x$ 的主要性质如下：

+ 定义域#h(1em);余弦函数 $y = cos x$ 的定义域是一切实数，即 $- oo < x < + oo$ 或 $\(- oo\,+ oo\)$⁠；

+ 值域#h(1em);余弦函数 $y = cos x$ 的值域是 $\[- 1\,1\]$, 或 $\|cos x\|lt.eq 1$⁠；

+ 奇偶性#h(1em);余弦函数是偶函数；

+ 函数的符号

  - 当 $- pi / 2 + 2 k pi < x < pi / 2 + 2 k pi$ 时，$cos x > 0$⁠；

  - 当 $pi / 2 + 2 k pi < x < pi / 2 +\(2 k + 1\)pi$ 时，$cos x < 0$⁠；

  - 当 $x = pi / 2 + k pi$ 时，$cos x = 0$⁠，这里 $k in bb(Z)$⁠．

+ 增减性

  - $y = cos x$ 在区间 $\[2 k pi\,\(2 k + 1\)pi\]$ 内是递减的；

  - $y = cos x$ 在区间 $\[\(2 k + 1\)pi\,2\(k + 1\)pi\]$ 内是递增的．

  #noindent;因此，

  - 当 $x = 2 k pi$ 时，$cos x = 1$ 是极大值．

  - 当 $x =\(2 k + 1\)pi$ 时，$cos x = - 1$ 是极小值，这里 $k in bb(Z)$⁠．

+ 周期性#h(1em);余弦函数 $y = cos x$ 的最小正周期（以后简称周期）是 $2 pi$⁠．

  函数 $y = cos omega x$ 的周期是 $frac(2 pi, \|omega\|) quad\(omega eq.not 0\,thick thick x in bb(R)\)$ 一般地，函数 $y = A cos\(omega x + phi\)$ 的周期是 $frac(2 pi, \|omega\|)$（$omega\,phi$ 为常数，且 $omega eq.not 0\,thick thick x in bb(R)$⁠）．

  因为 $cos\(omega x + phi\)= sin [omega x + (phi + pi / 2)]$, 这里 $omega$ 是不等于0的常数，$phi + pi / 2$ 仍是常数，根据函数 $y = A sin [omega x + (phi + pi / 2)]$ 的最小正周期是 $frac(2 pi, \|omega\|)$⁠，因此 $cos\(omega x + phi\)$ 的最小正周期也是 $frac(2 pi, \|omega\|)$⁠．

#example[
求函数 $y = 4 cos\(2 x + 3\)$ 的周期，极值和极值点．

]
#solution[
函数 $y = 4 cos\(2 x + 3\)$ 的周期是 $frac(2 pi, 2) = pi$

把 $2 x + 3$ 看作一个变数，并根据余弦函数的增减性知：

+ 当 $2 x + 3 = 2 k pi$ 时，$y$ 达到极大值，这时 $x = k pi - 3 / 2$, 极大值 $y = 4$\;

+ 当 $2 x + 3 =\(2 k + 1\)pi$ 时，$y$ 达到极小值，这时 $x = k pi + pi / 2 - 3 / 2$ 极小值 $y = - 4$⁠．

]
#example[
求 $4 - 2 cos alpha - sin^2 alpha$ 的最大值和最小值．

]
#solution[
$ 4 - 2 cos alpha - sin^2 alpha = 3 - 2 cos alpha + cos^2 alpha = 2 +\(1 - cos alpha\)^2 $

$1 - cos alpha$ 的最小值为0, 最大值为2, 故知 $4 - 2 cos alpha - sin^2 alpha$ 的最小值为2, 最大值为6, 且当 $alpha = 2 k pi quad\(k in bb(Z)\)$ 时，$4 - 2 cos alpha - sin^2 alpha$ 有最小值；当 $alpha =\(2 k + 1\)pi quad\(k in bb(Z)\)$ 时，$4 - 2 cos alpha - sin^2 alpha$ 有最大值．

]
#example[
已知函数

+ $sin (omega x + pi / 4)$ 的周期是 $frac(2 pi, 3)$

+ $cos (omega x + pi / 3)$ 的周期是 $pi$

#noindent;试确定函数．

]
#solution[
+ $because quad frac(2 pi, \|omega\|) = frac(2 pi, 3)$

  $therefore quad\|omega\|= 3\,quad omega = plus.minus 3$

  故所求函数为：$sin (plus.minus 3 x + pi / 4)$

+ $because quad frac(2 pi, \|omega\|) = pi$

  $therefore quad\|omega\|= 2\,quad omega = plus.minus 2$

  故所求函数为：$cos (plus.minus 2 x + pi / 3) = cos (2 x plus.minus pi / 3)$

]
#heading(level: 2, numbering: none, supplement: [toc-sub])[习题7.2]

+ #block(sticky: true)[确定差的符号（不查表）：]

  #cols(2)[
  + $sin 72 degree - sin 80 degree$

  + $cos 15 degree - cos 16 degree$

  + $sin 200 degree - sin 250 degree$

  + $cos 300 degree - cos 340 degree$

  ]

+ 用“五点法”作出下列函数的图象 $\(x in\[0\,2 pi\]\)$⁠：$ y = - sin x\,#h(2em) y = 1 + cos x\,#h(2em) y = 1 +\|cos x\| $

+ #block(sticky: true)[求下列各函数周期：]

  #cols(2)[
  + $y = sin 3 x$

  + $y = cos x / 6$

  + $y = 3 sin x / 4$

  + $y = sin (x + pi / 10)$

  + $y = cos (2 x + pi / 3)$

  + $y = sqrt(3) sin (1 / 2 x - pi / 4)$

  ]

+ 求下面函数的极大值和极小值以及取极值时的 $x$ 值：$ y = 2 + cos x\,#h(2em) y = 2 - cos x\,#h(2em) y = frac(1, 1 + cos^2 x) $

+ 求函数 $y = - cos^2 alpha - 0.1 sin alpha + 1.15$ 的最大值和最小值．又当 $alpha thick thick\(0 < alpha < 2 pi\)$ 为何值时，函数有最大值和最小值．

+ 求 $y = sqrt(2 cos 2 x - sqrt(3))$ 的定义域．

== 正切函数的图象和性质
=== 正切函数的图象
我们知道正切函数的定义域是除去 $pi / 2 + k pi quad\(k in bb(Z)\)$ 的实数集．也就是由下面无数个开区间 $ dots.h\,(- frac(3 pi, 2) \, - pi / 2)\,(- pi / 2 \, pi / 2)\,(pi / 2 \, frac(3 pi, 2))\,(frac(3 pi, 2) \, frac(5 pi, 2))\,dots.h $ #noindent;组成的一个集，图象在这些点：$pi / 2 + k pi quad\(k in bb(Z)\)$ 处断开．

我们又知道正切函数是奇函数，故它的图象关于原点对称．

现在，我们用描点法作出正切函数的图象．

列表：

#align(center)[
#table(
  columns: (auto, auto, auto, auto, auto, auto, auto, auto,),
  align: (center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon,),
  table.vline(x: 1),
  table.hline(),
  [$x$],
  [$- pi / 2$],
  [$- frac(5 pi, 12)$],
  [$- pi / 3$],
  [$- pi / 4$],
  [$- pi / 6$],
  [$- pi / 12$],
  [],
  table.hline(),
  [$y = tan x$],
  [不存在],
  [$- 3.73$],
  [$- 1.73$],
  [$- 1$],
  [$- 0.58$],
  [$- 0.27$],
  [],
  table.hline(),
  [$x$],
  [$0$],
  [$pi / 12$],
  [$pi / 6$],
  [$pi / 4$],
  [$pi / 3$],
  [$frac(5 pi, 12)$],
  [$pi / 2$],
  table.hline(),
  [$y = tan x$],
  [0],
  [$0.27$],
  [$0.58$],
  [$1$],
  [$1.73$],
  [3.73],
  [不存在],
  table.hline(),
);

]
把表内 $x$⁠、$y$ 的每一对值作为点的坐标，在直角坐标系内作出对应的点，将它们依次连结成平滑曲线，这样就得到正切函数在 $(- pi / 2 \, pi / 2)$ 上的图象，如果把图象向左、右扩展出去，就得出 $y = tan x\,quad x in (- pi / 2 + k pi \, pi / 2 + k pi)\,thick thick k in bb(Z)$ 的图象 (图7.9)．

#figure([#fig("7-10");

  ],
  caption: [
  ]
)

正切函数 $y = tan x$ 的图象叫做#strong[正切曲线]，由图7.9可以看出，正切曲线是由互相平行的直线 $x = pi / 2 + k pi thick thick\(k in bb(Z)\)$ 隔开的无穷多支曲线所组成．

下面我们说明 $y = tan x$ 图象的几何画法．

应用单位圆上的正切线，我们在开区间 $(- pi / 2 \, thick pi / 2)$ 和 $(pi / 2 \, thick frac(3 pi, 2))$ 内作出正切函数 $y = tan x$ 的图象．画图象时让横坐标每隔 $pi / 12$ 取点，作法如图7.10．

#figure([#fig("7-11");

  ],
  caption: [
  ]
)

=== 正切函数的主要性质
由上一章的讨论和正切函数图象，我们可以得到正切函数 $y = tan x$ 的主要性质如下：

+ 定义域#h(1em);正切函数 $y = tan x$ 的定义域是 $x eq.not pi / 2 + k pi\,\(k in bb(Z)\)$ 的一切实数，也就是由下面无数个开区间：$ (- pi / 2 + k pi \, thick pi / 2 + k pi)\,quad k = 0\,plus.minus 1\,plus.minus 2\,plus.minus 3\,dots.h $ #noindent;组成的一个集．

+ 值域#h(1em);正切函数 $y = tan x$ 的值域为一切实数．

+ 奇偶性#h(1em);正切函数是奇函数．

+ 函数的符号#h(1em);当 $x$ 在一、三象限时，$tan x > 0$\; 在二、四象限时，$tan x < 0$. 一般地，

  - 若 $x in (2 k pi \, pi / 2 + 2 k pi)$ 或 $(\( 2 k + 1 \) pi \, pi / 2 + \( 2 k + 1 \) pi)$ 时，$tan x > 0$⁠；

  - 若 $x in (pi / 2 + 2 k pi \, \( 2 k + 1 \) pi)$ 或 $(pi / 2 + \( 2 k + 1 \) pi \, \( 2 k + 2 \) pi)$ 时，$tan x < 0$⁠．（这里 $k in bb(Z)$⁠）

+ 增减性#h(1em);正切函数 $y = tan x$ 在 $x in (- pi / 2 + k pi \, pi / 2 + k pi) thick thick\(k in bb(Z)\)$ 的每一个开区间内，都是递增的．

  但是要注意，正切函数在整个定义域内并不是增函数．事实上，设 $x_1 = pi / 4$, $x_2 = frac(3 pi, 4)$⁠，那么 $ tan x_1 & = tan pi / 4 = 1\
  tan x_2 & = tan frac(3 pi, 4) = tan (pi - pi / 4) = - tan pi / 4 = - 1 $ #noindent;这样，$x_1 < x_2$ 时，有 $tan x_1 > tan x_2$⁠．当 $x = k pi$ 时 ($k in bb(Z)$), $tan x = 0$.

+ 周期性#h(1em);由诱导公式 $tan\(x + pi\)= tan x$（这里 $x$ 为定义域内任意数），知正切函数的周期是 $pi$, 现在我们证明 $pi$ 是正切函数的最小正周期．

  #proof[
  设 $p$ 是 $tan x$ 的正周期且 $0 < p < pi$⁠，根据周期 $p$ 的定义，我们有 $tan\(x + p\)= tan x$ (这里 $x$ 是定义域内任意数）．

  令 $x = 0$, 则 $tan p = tan 0 = 0$, 由此得到 $p = k pi thick thick\(k in bb(Z)\,upright("且 ") k eq.not 0\)$, 这就是说，如果 $p$ 是 $tan x$ 的周期，$p$ 只能是 $pi$ 的整数倍，这就与存在比 $pi$ 小的正周期 $p$ 的假设矛盾．

  因此，$pi$ 就是 $tan x$ 的最小正周期．

  ]
  - 函数 $y = tan omega x$ 的最小正周期是 $frac(pi, \|omega\|)$（$omega eq.not 0$, $omega x$ 为定义域内的数）．

  - 函数 $y = tan\(omega x + phi\)$ 的最小正周期是 $frac(pi, \|omega\|)$（$omega\,phi$ 为常数，且 $omega eq.not 0$, $omega x$ 为定义域内的数）．

+ 渐近线#h(1em);由图7.9可以看到，当 $0 < x < pi / 2$ 时，$tan x > 0$, 又当 $x < pi / 2$ 而 $x$ 又无限地趋近 $pi / 2$ 时，（记作 $x arrow.r pi^(-) / 2$⁠），正切曲线无限地上升但与直线 $x = pi / 2$ 永远不相交，我们把这个性质说成当 $x$ 由小于 $pi / 2$ 的方面无限趋近 $pi / 2$ 时，$tan x$ 的值增大并超出任何指定的正数，并且写成 $ lim_(x arrow.r tfrac(pi^(-), 2)) tan x = + oo $

  当 $pi / 2 < x < pi$ 时，$tan x < 0$⁠，又当 $x > pi / 2$⁠，而且 $x$ 无限地趋近 $pi / 2$ 时（记作 $x arrow.r pi^(+) / 2$⁠）, 正切曲线无限地下降，但与直线 $x = pi / 2$ 永远不相交，我们把这个性质说成当 $x$ 由大于 $pi / 2$ 的方面无限趋近 $pi / 2$ 时，$tan x$ 取负值减小但其绝对值增大并超出任何指定的正数，并且写成 $ lim_(x arrow.r tfrac(pi^(+), 2)) tan x = - oo $ #noindent;同样地，还有 $ lim_(x arrow.r - tfrac(pi^(-), 2)) tan x = + oo\,#h(2em) lim_(x arrow.r - tfrac(pi^(+), 2)) tan x = - oo $

  我们把直线 $x = - pi / 2$ 和 $x = pi / 2$ 叫做正切曲线的渐近线．一般地，直线 $x =\(2 k + 1\)pi / 2\,thick thick k in bb(Z)$ 都是正切曲线的渐近线．

#rmk[
这里对渐近线的叙述，同学们只要从图象上了解其意义就可以了，这个问题到高中还要详细地介绍．

]
#exercise[
+ 证明 $y = tan (x - pi / 2)$ 是奇函数，作出它的图象．

+ 作 $y = -\|tan x\|$ 的图象，并说出它的周期．

+ 求下列函数的周期：$ tan (2 x - pi / 4)\,#h(2em) tan x / 2 $

]
== 余切函数的图象和性质
=== 余切函数的图象
我们知道余切函数的定义域是除去 $x = k pi thick thick\(k in bb(Z)\)$ 的实数集．也就是由下面无数个开区间 $dots.h\,\(- 2 pi\,- pi\)\,thick\(- pi\,0\)\,thick\(0\,pi\)\,thick\(pi\,2 pi\)\,dots.h$ 组成的一个集，图象都在 $k pi thick thick\(k in bb(Z)\)$ 处断开．

我们又知道余切函数是奇函数，故它的图象关于原点对称．

由关系式 $cot x = - tan (x + pi / 2)$, 知道余切函数 $cot x$ 的图象就是正切函数型 $y = - tan (x + pi / 2)$ 的图象，又 $y = - tan (x + pi / 2)$ 的图象，可以通过将正切曲线 $y = tan x$ 沿 $x$ 轴向左平移 $pi / 2$ 个单位，再把所得曲线作关于 $O x$ 轴反射，这个最后得到的曲线就是余切函数 $y = cot x$ 的图象（如图7.11）．

#figure([#fig("7-12");

  ],
  caption: [
  ]
)

在具体画图时，我们也可以将正切函数 $y = tan x$ 的数值表作相应的改变得到余切函数 $y = cot x$ 的数值表，然后用描点法作图．为此，只须将 $tan x$ 的自变数 $x$ 的取值各减去 $pi / 2$ 而使原来的对应函数值都变为相应的相反数就可以了．今由正切函数 $y = tan x$, 在区间 $(pi / 2 \, frac(3 pi, 2))$ 上的数值表：

#align(center)[
#table(
  columns: (auto, auto, auto, auto, auto, auto, auto, auto,),
  align: (center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon,),
  table.vline(x: 1),
  table.hline(),
  [$x$],
  [$pi / 2 = frac(6 pi, 12)$],
  [$frac(7 pi, 12)$],
  [$frac(8 pi, 12)$],
  [$frac(9 pi, 12)$],
  [$frac(10 pi, 12)$],
  [$frac(11 pi, 12)$],
  [],
  table.hline(),
  [$y = tan x$],
  [不存在],
  [$- 3.73$],
  [$- 1.73$],
  [$- 1$],
  [$- 0.58$],
  [$- 0.27$],
  [],
  table.hline(),
  [$x$],
  [$pi$],
  [$frac(13 pi, 12)$],
  [$frac(14 pi, 12)$],
  [$frac(15 pi, 12)$],
  [$frac(16 pi, 12)$],
  [$frac(17 pi, 12)$],
  [$frac(3 pi, 2)$],
  table.hline(),
  [$y = tan x$],
  [0],
  [$0.27$],
  [$0.58$],
  [$1$],
  [$1.73$],
  [3.73],
  [不存在],
  table.hline(),
);

]
作相应的改变后得到余切函数 $y = cot x$ 的数值表：

#align(center)[
#table(
  columns: (auto, auto, auto, auto, auto, auto, auto, auto,),
  align: (center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon,),
  table.vline(x: 1),
  table.hline(),
  [$x$],
  [$0$],
  [$pi / 12$],
  [$frac(2 pi, 12)$],
  [$frac(3 pi, 12)$],
  [$frac(4 pi, 12)$],
  [$frac(5 pi, 12)$],
  [],
  table.hline(),
  [$y = cot x$],
  [不存在],
  [$3.73$],
  [$1.73$],
  [$1$],
  [$0.58$],
  [$0.27$],
  [],
  table.hline(),
  [$x$],
  [$frac(6 pi, 12) = pi / 2$],
  [$frac(7 pi, 12)$],
  [$frac(8 pi, 12)$],
  [$frac(9 pi, 12)$],
  [$frac(10 pi, 12)$],
  [$frac(11 pi, 12)$],
  [$frac(12 pi, 12) = pi$],
  table.hline(),
  [$y = cot x$],
  [0],
  [$- 0.27$],
  [$- 0.58$],
  [$- 1$],
  [$- 1.73$],
  [\-3.73],
  [不存在],
  table.hline(),
);

]
根据此表，我们可以画出在区间 $\(0\,pi\)$ 上的余切函数 $y = cot x$ 的图象．

余切函数 $y = cot x$ 的图象叫做#strong[余切曲线]．整个余切曲线在点 $x = k pi thick thick\(k in bb(Z)\)$ 处间断开，分成无数多个分支（图7.12）．

#figure([#fig("7-13");

  ],
  caption: [
  ]
)

=== 余切函数的主要性质
由上一章的讨论和余切函数图象，我们可以得到余切函数 $y = cot x$ 的主要性质如下：

+ 定义域#h(1em);余切函数 $y = cot x$ 的定义域是 $x eq.not k pi thick thick\(k in bb(Z)\)$ 的实数集，也就是由下面无数个开区间：$ class("opening", stretch(\(, size: #1.8em)) k pi\,thick\(k + 1\)pi class("closing", stretch(\), size: #1.8em))\,#h(2em) k = 0\,plus.minus 1\,plus.minus 2\,plus.minus 3\,dots.h $ #noindent;组成的一个集．

+ 值域#h(1em);余切函数 $y = cot x$ 的值域为一切实数．

+ 奇偶性#h(1em);余切函数是奇函数．

+ 函数的符号#h(1em);当 $x$ 在第一、三象限时，$cot x > 0$⁠；在第二、四象限时，$cot x < 0$⁠，一般地：

  - 若 $x in (2 k pi \, thick pi / 2 + 2 k pi)$ 或 $(\( 2 k + 1 \) pi \, thick pi / 2 + \( 2 k + 1 \) pi)$ 时，$cot x > 0$⁠；

  - 若 $x in (pi / 2 + 2 k pi \, thick \( 2 k + 1 \) pi)$ 或 $(pi / 2 + \( 2 k + 1 \) pi \, thick \( 2 k + 2 \) pi)$ 时，$cot x < 0$⁠，这里 $k in bb(Z)$

+ 增减性#h(1em);余切函数 $y = cot x$ 在区间 $\(k pi\,thick\(k + 1\)pi\)thick thick\(k in bb(Z)\)$ 都是减函数．

  当 $x = pi / 2 + k pi thick thick\(k in bb(Z)\)$ 时，$cot x = 0$⁠．

+ 周期性#h(1em);余切函数的周期是 $pi$⁠．

  事实上，假设 $p > 0$ 是 $cot x$ 的一个周期，根据周期 $p$ 的定义，有 $cot\(x + p\)= cot x$, 这里 $x$ 是 $cot x$ 的定义域中任何一个数．

  令 $x = pi / 2$⁠，则 $ cot (pi / 2 + p) = cot pi / 2 $ #noindent;即$ tan p = 0 $ #noindent;$therefore quad p = k pi quad\(k in bb(Z)\,thick k eq.not 0\)$

  由于 $cot\(x + k pi\)= cot x$ 对于 $x$ 的任何容许值都成立，所以能使上面等式成立的最小正数 $p = pi$. 即 $cot x$ 的最小正周期等于 $pi$⁠．

  - 函数 $y = cot omega x$ 的最小正周期是 $frac(pi, \|omega\|)$⁠，（$omega eq.not 0\,omega x$ 为定义域内的数）．

  - 函数 $y = A cot\(omega x + phi\)$ 的最小正周期是 $frac(pi, \|omega\|)$⁠，（$omega\,phi$ 为常数，且 $omega eq.not 0\,omega x$ 为定义域内的数）．

+ 渐近线#h(1em);因为 $ lim_(x arrow.r 0^(+)) cot x = + oo\, & #h(2em) lim_(x arrow.r 0^(-)) cot x = - oo\
  lim_(x arrow.r pi^(-)) cot x = - oo\, & #h(2em) lim_(x arrow.r pi^(+)) cot x = + oo $ #noindent;故 $x = 0$, $x = pi$ 的直线就是余切曲线的渐近线．

  一般地，直线 $x = k pi\,thick\(k in bb(Z)\)$⁠，都是余切曲线的渐近线．

#heading(level: 2, numbering: none, supplement: [toc-sub])[习题7.3]

+ #block(sticky: true)[确定差的符号：]

  #cols(2)[
  + $tan 72 degree - tan 80 degree$

  + $cot 15 degree - cot 16 degree$

  + $tan 70 degree - cot 70 degree$

  + $cot 100 degree - cot 90 degree$

  ]

+ #block(sticky: true)[求下列各式子的符号：]

  #cols(2)[
  + $sin 3 dot.op tan 5$

  + $cos 8 dot.op cos 5 dot.op tan 1$

  + $tan 5 dot.op cot 3 dot.op tan 1$

  + $sin\(- 5\)cos\(- 3\)tan\(- 2\)cot 2$

  ]

+ 在怎样的区间内随着不超过 $360 degree$ 的正角 $alpha$ 的增大：

  + $sin alpha$ 和 $cot alpha$ 同时增大？同时减小？

  + $cos alpha$ 和 $tan alpha$ 同时增大？同时减小？

  + $sin alpha$ 和 $cos alpha$ 同时增大？同时减小？

+ 作下面函数的图象：$ y = cot (x - pi / 2)\,#h(2em) y = cot (x + pi / 3) $

+ 利用单位圆和余切函数线，解下面不等式 $ cot x > 1\,#h(2em) 3 cot x + sqrt(3) < 0 $

+ 作下面函数的图象：$ y = sec x\,#h(2em) y = csc x $

为了便于比较和查阅，我们把正弦函数，余弦函数，正切函数，余切函数的主要性质列表如下：

#text(size: 0.9em)[#block(breakable: true)[#show table: set block(breakable: true)
#table(
  columns: (9% + 12pt, 19% + 12pt, 19% + 12pt, 19% + 12pt, 19% + 12pt,),
  align: (left + top, left + top, left + top, left + top, left + top,),
  table.vline(x: 1),
  table.hline(),
  [函数],
  [$y = sin x$],
  [$y = cos x$],
  [$y = tan x$],
  [$y = cot x$],
  table.hline(),
  [定义域],
  [$bb(R)$],
  [$bb(R)$],
  [$\{ x\|x in bb(R)\,thick thick x eq.not pi / 2 + k pi \}$],
  [$\{ x\|x in bb(R)\,thick thick x eq.not k pi \}$],
  table.hline(),
  [值域],
  [$\[- 1\,1\]$],
  [$\[- 1\,1\]$],
  [$bb(R)$],
  [$bb(R)$],
  table.hline(),
  [奇偶性],
  [奇函数],
  [偶函数],
  [奇函数],
  [奇函数],
  table.hline(),
  [函数的符号],
  [在一、二象限，即 $x in class("opening", stretch(\(, size: #1.2em)) 2 k pi$, $\(2 k + 1\)pi class("closing", stretch(\), size: #1.2em))$ 时，$sin x > 0$⁠；在三、四象限，即 $x in class("opening", stretch(\(, size: #1.2em))\(2 k + 1\)pi$, $2\(k + 1\)pi class("closing", stretch(\), size: #1.2em))$ 时，$sin x < 0$],
  [在一、四象限，即 $x in class("opening", stretch(\(, size: #1.2em)) - pi / 2 + 2 k pi$, $pi / 2 + 2 k pi class("closing", stretch(\), size: #1.2em))$ 时，$cos x > 0$⁠；在二、三象限，即 $x in class("opening", stretch(\(, size: #1.2em)) pi / 2 + 2 k pi$, $pi / 2 +\(2 k + 1\)pi class("closing", stretch(\), size: #1.2em))$ 时，$cos x < 0$],
  [在一、三象限，即 $x in class("opening", stretch(\(, size: #1.2em)) 2 k pi$, $pi / 2 + 2 k pi class("closing", stretch(\), size: #1.2em))$ 或 $class("opening", stretch(\(, size: #1.2em))\(2 k + 1\)pi$, $pi / 2 +\(2 k + 1\)pi class("closing", stretch(\), size: #1.2em))$ 时，$tan x > 0$⁠；在二、四象限，即 $x in class("opening", stretch(\(, size: #1.2em)) pi / 2 + 2 k pi$, $\(2 k + 1\)pi class("closing", stretch(\), size: #1.2em))$ 或 $class("opening", stretch(\(, size: #1.2em)) pi / 2 +\(2 k + 1\)pi$, $\(2 k + 2\)pi class("closing", stretch(\), size: #1.2em))$ 时，$tan x < 0$],
  [在一、三象限，即 $x in class("opening", stretch(\(, size: #1.2em)) 2 k pi$, $pi / 2 + 2 k pi class("closing", stretch(\), size: #1.2em))$ 或 $class("opening", stretch(\(, size: #1.2em))\(2 k + 1\)pi$, $pi / 2 +\(2 k + 1\)pi class("closing", stretch(\), size: #1.2em))$ 时，$cot x > 0$⁠；在二、四象限，即 $x in class("opening", stretch(\(, size: #1.2em)) pi / 2 + 2 k pi$, $\(2 k + 1\)pi class("closing", stretch(\), size: #1.2em))$ 或 $class("opening", stretch(\(, size: #1.2em)) pi / 2 +\(2 k + 1\)pi$, $\(2 k + 2\)pi class("closing", stretch(\), size: #1.2em))$ 时，$cot x < 0$],
  table.hline(),
  [增减性],
  [在一、四象限，即 $x in class("opening", stretch(\(, size: #1.2em)) - pi / 2 + 2 k pi$, $pi / 2 + 2 k pi class("closing", stretch(\), size: #1.2em))$ 时，$sin x$ 是增函数；在二、三象限，即 $x in class("opening", stretch(\(, size: #1.2em)) pi / 2 + 2 k pi$, $pi / 2 +\(2 k + 1\)pi class("closing", stretch(\), size: #1.2em))$ 时，$sin x$ 是减函数],
  [在一、二象限，即 $x in class("opening", stretch(\(, size: #1.2em)) 2 k pi$, $\(2 k + 1\)pi class("closing", stretch(\), size: #1.2em))$ 时，$cos x$ 是减函数；在三、四象限，即 $x in class("opening", stretch(\(, size: #1.2em))\(2 k + 1\)pi$, $2\(k + 1\)pi class("closing", stretch(\), size: #1.2em))$ 时，$cos x$ 是增函数],
  [在各象限都为增函数，即 $x in class("opening", stretch(\(, size: #1.2em)) - pi / 2 + k pi$, $pi / 2 + k pi class("closing", stretch(\), size: #1.2em))$ 时，$tan x$ 是增函数],
  [在各象限都为减函数，即 $x in class("opening", stretch(\(, size: #1.2em)) k pi$, $\(k + 1\)pi class("closing", stretch(\), size: #1.2em))$ 时，$cot x$ 是减函数],
  table.hline(),
  [函数的极值],
  [当 $x = pi / 2 + 2 k pi$ 时，$sin x = 1$ 是极大值；当 $x = frac(3 pi, 2) + 2 k pi$ 时，$sin x = - 1$ 是极小值],
  [当 $x = 2 k pi$ 时，$cos x = 1$ 是极大值；当 $x =\(2 k + 1\)pi$ 时，$cos x = - 1$ 是极小值],
  [无],
  [无],
  table.hline(),
  [周期性],
  [$because med sin\(x + 2 pi\)= sin x$⁠，$therefore med T = 2 pi$（$2 pi$ 是最小正值）],
  [$because med cos\(x + 2 pi\)= cos x$⁠，$therefore med T = 2 pi$（$2 pi$ 是最小正值）],
  [$because med tan\(x + pi\)= tan x$⁠，$therefore med T = pi$（$pi$ 是最小正值）],
  [$because med cot\(x + pi\)= cot x$⁠，$therefore med T = pi$（$pi$ 是最小正值）],
  table.hline(),
  [渐近线],
  [无],
  [无],
  [直线 $x =\(2 k + 1\)pi / 2$],
  [直线 $x = k pi$],
  table.hline(),
)]]

#align(right)[
（表内 $k in bb(Z)$⁠）

]
== 正弦型曲线
在这一节，我们来研究正弦型曲线，即函数 $y = A sin\(m x + a\)$ 的图象，这个图象在学习物理、电工和力学时将会遇到，下面我们先研究几种特殊正弦型曲线的作法，然后再归结到一般情形．

=== 函数 $y = A sin x$ 的图象
我们取 $A = 1 / 2$, $A = 1$, $A = 2$ 三种情形来讨论，即讨论 $ y = 1 / 2 sin x\,#h(2em) y = sin x\,#h(2em) y = 2 sin x $ #noindent;考虑到函数 $sin x$ 的周期是 $2 pi$, 我们只须画出闭区间 $\[0\,2 pi\]$ 上的图象，先列出 $x$ 由0到 $pi / 2$⁠，每隔 $pi / 6$ 取值的正弦值表，然后，应用诱导公式 $sin\(pi - x\)= sin x$, 列出 $pi / 2$ 到 $pi$ 之间的正弦值；最后应用诱导公式 $sin\(pi + x\)= - sin x$ 列出 $pi$ 到 $2 pi$ 之间的正弦值．对于同一个 $x$ 值，函数 $1 / 2 sin x$ 的值为函数 $sin x$ 的值的 $1 / 2$⁠，而函数 $2 sin x$ 的值为函数 $sin x$ 的值的2倍．

把它们的自变量及对应函数值列表于下：

#align(center)[
#table(
  columns: (auto, auto, auto, auto,),
  align: (center + horizon, center + horizon, center + horizon, center + horizon,),
  table.hline(),
  [$x$],
  [$y = sin x$],
  [$y = tfrac(1, 2) sin x$],
  [$y = 2 sin x$],
  table.hline(),
  [$dots.h.c$],
  [$dots.h.c$],
  [$dots.h.c$],
  [$dots.h.c$],
  [$0$],
  [0],
  [0],
  [0],
  [$tfrac(pi, 6)$],
  [0.5],
  [0.25],
  [1],
  [$tfrac(pi, 3)$],
  [0.87],
  [0.44],
  [1.74],
  [$tfrac(pi, 2)$],
  [1],
  [0.5],
  [2],
  [$tfrac(2 pi, 3)$],
  [0.87],
  [0.44],
  [1.74],
  [$tfrac(5 pi, 6)$],
  [0.5],
  [0.25],
  [1],
  [$pi$],
  [0],
  [0],
  [0],
  [$tfrac(7 pi, 6)$],
  [$- 0.5$],
  [$- 0.25$],
  [$- 1$],
  [$tfrac(4 pi, 3)$],
  [$- 0.87$],
  [$- 0.44$],
  [$- 1.74$],
  [$tfrac(3 pi, 2)$],
  [$- 1$],
  [$- 0.5$],
  [$- 2$],
  [$tfrac(5 pi, 3)$],
  [$- 0.87$],
  [$- 0.44$],
  [$- 1.74$],
  [$tfrac(11 pi, 6)$],
  [$- 0.5$],
  [$- 0.25$],
  [$- 1$],
  [$2 pi$],
  [0],
  [0],
  [0],
  [$dots.h.c$],
  [$dots.h.c$],
  [$dots.h.c$],
  [$dots.h.c$],
  table.hline(),
);

]
对于每一个函数，把表内 $x$⁠、$y$ 的每一对值作为点的坐标，在直角坐标系内作出对应点，将它们依次连结成平滑曲线，这三条曲线就是正弦函数 $y = sin x$, 及正弦型函数 $y = 1 / 2 sin x$ 和 $y = 2 sin x$ 的图象 (如图7.13).

#figure([#fig("7-14");

  ],
  caption: [
  ]
)

由图象显然看出：

+ 对于同一横坐标 $x$, $y = 1 / 2 sin x$ 的纵坐标为 $y = sin x$ 的纵坐标的 $1 / 2$⁠，$y = 2 sin x$ 的纵坐标为 $y = sin x$ 的纵坐标的2倍，因此，可以说，把曲线 $y = sin x$ 沿纵轴方向压缩到 $1 / 2$⁠，就得到曲线 $y = 1 / 2 sin x$\; 沿纵轴方向拉长2倍，就得到曲线 $y = 2 sin x$⁠．

+ $y = sin x$ 的最大纵坐标是1; $y = 2 sin x$ 的最大纵坐标是2; $y = 1 / 2 sin x$ 的最大纵坐标是 $1 / 2$. 我们把这个最大的纵坐标叫做该曲线的振幅．

+ 它们的周期相同，都是 $2 pi$⁠．

推广到一般情形，就得出下面的结论：

#blk[][
函数 $y = A sin x$ 的图象是把 $y = sin x$ 的图象沿着纵轴方向压缩到 $A thick\(0 < A < 1\)$ 倍或拉长到 $A thick\(A > 1\)$ 倍而得到，曲线 $y = A sin x$ 的振幅为 $A$, 周期为 $2 pi$⁠．

]
=== 函数 $y = sin m x$ 的图象
我们取 $m = 1 / 2$, $m = 1$, $m = 2$ 三种情形来讨论，即讨论 $y = sin x / 2$, $y = sin x$, $y = sin 2 x$⁠．

函数 (1) $y = sin x / 2$\; (2) $y = sin x$\; (3) $y = sin 2 x$ 的周期分别是 $frac(2 pi, 1 / 2) = 4 pi$, $2 pi$ 和 $frac(2 pi, 2) = pi$, 它们有相同的振幅 $A = 1$. 所有这些函数在自变量 $m x$ 取相同值的变化过程中对应的函数值也相同，但现在 $m$ 值不同，因此，只有当 $x$ 取不同的值时，才能使这些函数 $y = sin x / 2$, $y = sin x$ 和 $y = sin 2 x$ 的对应值相同．比如，

- 当 $x = pi / 6$ 时，$sin x$ 的值为0.5；

- 当 $x = pi / 3$ 时，$sin 1 / 2 x$ 的值为0.5；

- 当 $x = pi / 12$ 时，$sin 2 x$ 的值为0.5．

这就是说，只要我们有一个函数 $y = sin x$ 在闭区间 $\[0\,2 pi\]$ 上的函数值表，我们就可以通过把这个数值表中自变量 $x$ 的取值乘以2, 就得到函数 $y = sin 1 / 2 x$ 在闭区间 $\[0\,4 pi\]$ 上的函数值表；如果把 $y = sin x$ 的数值表中自变量 $x$ 的取值除以2, 就可以得到 $y = sin 2 x$ 在闭区间 $\[0\,pi\]$ 上的函数值表．

列表作图于下：

将 $y = sin x$ 的函数值表

#align(center)[
#table(
  columns: (auto, auto, auto, auto, auto, auto, auto, auto, auto,),
  align: (center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon,),
  table.vline(x: 1),
  table.hline(),
  [$x$],
  [$dots.h.c$],
  [0],
  [$pi / 6$],
  [$pi / 3$],
  [$pi / 2$],
  [$frac(2 pi, 3)$],
  [$frac(5 pi, 6)$],
  [$pi$],
  table.hline(),
  [$y = sin x$],
  [$dots.h.c$],
  [0],
  [0.5],
  [0.87],
  [1],
  [0.87],
  [0.5],
  [0],
  table.hline(),
  [$x$],
  [],
  [$frac(7 pi, 6)$],
  [$frac(4 pi, 3)$],
  [$frac(3 pi, 2)$],
  [$frac(5 pi, 3)$],
  [$frac(11 pi, 6)$],
  [$2 pi$],
  [$dots.h.c$],
  table.hline(),
  [$y = sin x$],
  [],
  [$- 0.5$],
  [$- 0.87$],
  [$- 1$],
  [$- 0.87$],
  [$- 0.5$],
  [0],
  [$dots.h.c$],
  table.hline(),
);

]
#noindent;里的 $x$ 的取值分别乘以2得到 $y = sin 1 / 2 x$ 的函数值表如下：

#align(center)[
#table(
  columns: (auto, auto, auto, auto, auto, auto, auto, auto, auto,),
  align: (center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon,),
  table.vline(x: 1),
  table.hline(),
  [$x$],
  [$dots.h.c$],
  [0],
  [$pi / 3$],
  [$frac(2 pi, 3)$],
  [$pi$],
  [$frac(4 pi, 3)$],
  [$frac(5 pi, 3)$],
  [$2 pi$],
  table.hline(),
  [$y = sin 1 / 2 x$],
  [$dots.h.c$],
  [0],
  [0.5],
  [0.87],
  [1],
  [0.87],
  [0.5],
  [0],
  table.hline(),
  [$x$],
  [],
  [$frac(7 pi, 3)$],
  [$frac(8 pi, 3)$],
  [$3 pi$],
  [$frac(10 pi, 3)$],
  [$frac(11 pi, 3)$],
  [$4 pi$],
  [$dots.h.c$],
  table.hline(),
  [$y = sin 1 / 2 x$],
  [],
  [$- 0.5$],
  [$- 0.87$],
  [$- 1$],
  [$- 0.87$],
  [$- 0.5$],
  [0],
  [$dots.h.c$],
  table.hline(),
);

]
作图：

#figure([#fig("7-15");

  ],
  caption: [
  ]
)

由上面的表和图7.14可以看出：

+ 当 $y = sin 1 / 2 x$ 的横坐标为 $y = sin x$ 的横坐标的2倍时，它们的纵坐标相等．

+ 它们的振幅相同，都是1.

+ $y = sin x / 2$ 的周期是 $4 pi (= frac(2 pi, 1 / 2))$⁠，二倍于 $y = sin x$ 的周期．

因此，$y = sin 1 / 2 x$ 的图象是把 $y = sin x$ 的图象沿横轴方向拉长 $frac(1, 1 / 2) = 2$ 倍而得到．

将 $y = sin x$ 的函数值表里的 $x$ 取值分别除以2, 得到 $y = sin 2 x$ 的函数值如下：

#align(center)[
#table(
  columns: (auto, auto, auto, auto, auto, auto, auto, auto, auto,),
  align: (center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon,),
  table.vline(x: 1),
  table.hline(),
  [$x$],
  [$dots.h.c$],
  [0],
  [$pi / 12$],
  [$pi / 6$],
  [$pi / 4$],
  [$pi / 3$],
  [$frac(5 pi, 12)$],
  [$pi / 2$],
  table.hline(),
  [$y = sin 2 x$],
  [$dots.h.c$],
  [0],
  [0.5],
  [0.87],
  [1],
  [0.87],
  [0.5],
  [0],
  table.hline(),
  [$x$],
  [],
  [$frac(7 pi, 12)$],
  [$frac(2 pi, 3)$],
  [$frac(3 pi, 4)$],
  [$frac(5 pi, 6)$],
  [$frac(11 pi, 12)$],
  [$pi$],
  [$dots.h.c$],
  table.hline(),
  [$y = sin 2 x$],
  [],
  [$- 0.5$],
  [$- 0.87$],
  [$- 1$],
  [$- 0.87$],
  [$- 0.5$],
  [0],
  [$dots.h.c$],
  table.hline(),
);

]
作图象：

#figure([#fig("7-16");

  ],
  caption: [
  ]
)

由上面的表和图7.15可以看出：

+ 当 $y = sin 2 x$ 的横坐标为 $y = sin x$ 的横坐标的一半时，它们的纵坐标相等．

+ 它们的振幅相同，都是1.

+ $y = sin 2 x$ 的周期是 $pi (= frac(2 pi, 2))$

因此，$y = sin 2 x$ 的图象是把曲线 $y = sin x$ 沿横轴方向压缩 $1 / 2$ 倍，就得到曲线 $y = sin 2 x$.

根据上述情况，可得一般结论如下：

#blk[][
函数 $y = sin m x$ 的图象是把 $y = sin x$ 的图象沿横轴方向拉长 $1 / m$ 倍 $\(0 < m < 1\)$⁠，或压缩到 $1 / m\,thick\(m > 1\)$ 而得到．曲线 $y = sin m x$ 的振幅为1, 周期为 $frac(2 pi, m)$⁠．

]
=== 函数 $y = A sin\(m x + alpha\)$ 的图象
现在我们来说明如何画一般的正弦型曲线 $y = A sin\(m x + alpha\)$. 这里 $A$ 和 $m$ 为已给的正实数，$alpha$ 为已给的实数．

把函数#numbered-eq($ y = A sin\(m x + alpha\) $);#noindent;改写成#numbered-eq($ y = A sin m (x + alpha / m) $);#noindent;函数 (7.5), (7.6) 和函数 $y = A sin m x$ 的振幅相同，都等于 $A$. 而且它们的周期也相同，都等于 $frac(2 pi, m)$.

显然，$y = A sin m (x + alpha / m)$ 的图象上一点的横坐标 $x_1$ 所对应的纵坐标是 $y = A sin m (x_1 + alpha / m)$, 并且恒等于 $y = A sin m x$ 的图象上横坐标是 $x_1 + alpha / m$ 的一点的纵坐标．由于在 $O x$ 轴上点 $x_1$ 是在点 $x_1 + alpha / m\,thick\(alpha > 0\)$ 的左方 $lr(|alpha / m|)$ 个单位处，或者点 $x_1$ 是在点 $x_1 + alpha / m\,thick\(alpha < 0\)$ 的右方的 $lr(|alpha / m|)$ 个单位处，所以我们只须把 $y = A sin m x$ 的图象沿横轴方向左移 $lr(|alpha / m|) thick\(alpha > 0\)$ 个单位，或者右移 $lr(|alpha / m|) thick\(alpha < 0\)$ 个单位，就得到 $y = A sin m (x + alpha / m)$ 的图象．

#example[
作函数 $y = 1.5 sin (2 t + pi / 4)$ 的图象．

]
#solution[
所求函数 $y = 1.5 sin (2 t + pi / 4)$ 的图象，可以由函数 $y = 1.5 sin 2 t$ 的图象沿横轴方向左移 $pi / 8$ 个单位得到．这时，曲线 $y = 1.5 sin 2 t$ 上的 $\(0\,0\)$ 点就平移到 $(- pi / 8 \, 0)$ 点，我们把它作为曲线 $y = 1.5 sin 2 (t + pi / 8)$ 的起点．

列出函数 $y = sin t$ 在闭区间 $\[0\,2 pi\]$ 上自变量 $t$ 每隔 $pi / 4$ 的函数值表：

#align(center)[
#table(
  columns: (auto, auto, auto, auto, auto, auto, auto, auto, auto, auto,),
  align: (center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon,),
  table.vline(x: 1),
  table.hline(),
  [$t$],
  [0],
  [$pi / 4$],
  [$pi / 2$],
  [$frac(3 pi, 4)$],
  [$pi$],
  [$frac(5 pi, 4)$],
  [$frac(3 pi, 2)$],
  [$frac(7 pi, 4)$],
  [$2 pi$],
  table.hline(),
  [$y = sin t$],
  [0],
  [0.71],
  [1],
  [0.71],
  [0],
  [$-$0.71],
  [$-$1],
  [$-$0.71],
  [0],
  table.hline(),
);

]
按照给出的曲线方程作相应的变更，分别得到函数 $y = sin 2 t$, $y = 1.5 sin 2 t$ 和 $y = 1.5 sin 2 (t + pi / 8)$ 在一个周期内的函数值表如下：

#align(center)[
#table(
  columns: (auto, auto, auto, auto, auto, auto, auto, auto, auto, auto,),
  align: (center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon,),
  table.vline(x: 1),
  table.hline(),
  [$t$],
  [0],
  [$pi / 8$],
  [$pi / 4$],
  [$frac(3 pi, 8)$],
  [$pi / 2$],
  [$frac(5 pi, 8)$],
  [$frac(3 pi, 4)$],
  [$frac(7 pi, 8)$],
  [$pi$],
  table.hline(),
  [$y = sin 2 t$],
  [0],
  [0.71],
  [1],
  [0.71],
  [0],
  [$-$0.71],
  [$-$1],
  [$-$0.71],
  [0],
  [$y = 1.5 sin 2 t$],
  [0],
  [1.07],
  [1.5],
  [1.07],
  [0],
  [$-$1.07],
  [$-$1.5],
  [$-$1.07],
  [0],
  table.hline(),
);

]
#align(center)[
#table(
  columns: (auto, auto, auto, auto, auto, auto,),
  align: (center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon,),
  table.vline(x: 1),
  table.hline(),
  [$t$],
  [$- pi / 8$],
  [0],
  [$pi / 8$],
  [$pi / 4$],
  [$frac(3 pi, 8)$],
  table.hline(),
  [$y = 1.5 sin (2 t + pi / 4)$ \ $#hide[$⁠y$] = 1.5 sin 2 (t + pi / 8)$],
  [0],
  [1.07],
  [1.5],
  [1.07],
  [0],
  table.hline(),
  [$t$],
  [],
  [$pi / 2$],
  [$frac(5 pi, 8)$],
  [$frac(3 pi, 4)$],
  [$frac(7 pi, 8)$],
  table.hline(),
  [$y = 1.5 sin (2 t + pi / 4)$ \ $#hide[$⁠y$] = 1.5 sin 2 (t + pi / 8)$],
  [],
  [$-$1.07],
  [$-$1.5],
  [$-$1.07],
  [0],
  table.hline(),
);

]
作图：

#figure([#fig("7-17");

  ],
  caption: [
  ]
)

]
上面这种作图方法，把几种曲线之间的关系明确的揭露出来，使我们能够了解到它们之间的内在联系，但是，这样作图比较费事，在实际问题中往往只须知道函数 $y = A sin\(m x + alpha\)$ 的草图，只要这个图能够表示出它的三个特征量：\(1) 振幅 $A$, (2) 周期 $frac(2 pi, m)$⁠，(3) 起点 $(- alpha / m \, 0)$ 就可以了．

$y = A sin\(m x + alpha\)$ 的图象的简便作法如下：

+ 化函数 $y = A sin\(m x + alpha\)$ 为下面的形式 $ y = A sin m (x + alpha / m) $

+ 确定：振幅为 $A$\; 周期为 $frac(2 pi, m)$⁠；起点为 $(- alpha / m \, 0)$⁠．

+ 选取比例尺：1个单位为几厘米．

+ 在 $O x$ 轴上以 $(- alpha / m \, 0)$ 为起点，并把 $x = - alpha / m$ 到 $x = - alpha / m + frac(2 pi, m)$ 的一段分成4等份，每等份长为 $frac(2 pi, m) div 4 = frac(pi, 2 m)$, 各分点的横坐标是 $ - alpha / m\,quad - alpha / m + frac(pi, 2 m)\,quad - alpha / m + pi / m\,quad - alpha / m + frac(3 pi, 2 m)\,quad - alpha / m + frac(2 pi, m) $ #noindent;它们对应的纵坐标分别是 $0\,A\,0\,- A\,0$⁠．

根据上述结果，便可作出函数 $y = A sin\(m x + alpha\)$ 在区间 $[- alpha / m \, thick - alpha / m + frac(2 pi, m)]$ 上的图象．

#example[
求作函数 $y = 3 / 2 sin\(3 t - pi\)$ 的图象．

]
#solution[
+ 化函数 $y = 3 / 2 sin\(3 t - pi\)$ 为下面的形式：$ y = 3 / 2 sin 3 (t - pi / 3) $

+ 确定：振幅为 $3 / 2$⁠，周期为 $frac(2 pi, 3)$⁠，起点为 $(pi / 3 \, thick 0)$

+ 选取比例尺：1个单位长 $= 0.8$ 厘米．

+ 列表：

  #align(center)[
  #table(
    columns: (auto, auto, auto, auto, auto, auto, auto, auto,),
    align: (center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon,),
    table.vline(x: 1),
    table.hline(),
    [$t$],
    [$dots.h.c$],
    [$pi / 3$],
    [$pi / 2$],
    [$frac(2 pi, 3)$],
    [$frac(5 pi, 6)$],
    [$pi$],
    [$dots.h.c$],
    table.hline(),
    [$y = 3 / 2 sin\(3 t - pi\)$],
    [$dots.h.c$],
    [0],
    [$3 / 2$],
    [0],
    [$- 3 / 2$],
    [0],
    [$dots.h.c$],
    table.hline(),
  );

  ]

#figure([#fig("7-18");

  ],
  caption: [
  ]
)

]
图中虚线表示曲线 $y = 3 / 2 sin\(3 t - pi\)$ 上未画出的部分，我们把图象变换总结如下：

#blk[位置变换][
+ $y = sin\(x + b\)$ 的图象可由 $y = sin x$ 的图象沿 $x$ 轴的方向左、右平移而得到（当 $b > 0$ 时向左，$b < 0$ 时向右）．

+ $y = sin x + ell$ 的图象可由 $y = sin x$ 的图象沿 $y$ 轴的方向上、下平移而得到（当 $ell > 0$ 时向上，$ell < 0$ 时向下）．

+ $y = - sin x$ 的图象可由 $y = sin x$ 的图象作关于 $O x$ 轴的反射得到．

]
#blk[形状变换][
+ $y = A sin x thick\(A > 0\)$ 的图象可由 $y = sin x$ 的图象的振幅扩大 $A$ 倍而得到．

+ $y = sin m x thick\(m > 0\)$ 的图象可由 $y = sin x$ 的图象沿 $x$ 轴方向拉长 ($0 < m < 1$) 或压缩 ($m > 1$) 到 $1 / m$ 倍而得到（周期 $T$ 为 $frac(2 pi, m)$⁠）．

]
#blk[位置形状全变换][
$ y = A sin\(m x + alpha\)+ ell = A sin m (x + alpha / m) + ell quad\(A > 0\,thick m > 0\) $ #noindent;可由 $y = sin x$ 的图象沿 $x$ 轴方向拉长或压缩到原来的 $1 / m$ 倍，（周期变为 $frac(2 pi, m)$⁠）, 沿 $x$ 轴向左或向右平移 $lr(|alpha / m|)$ 个单位，然后把振幅扩大到原来的 $A$ 倍；最后沿 $y$ 轴向上或向下平移 $\|ell\|$ 个单位．

]
#exercise[
+ #block(sticky: true)[作下面三角函数的图象：]

  #cols(2)[
  + $y = 1 + sin 2 x$

  + $y = sin (x + pi / 4)$

  + $y = 2 sin (3 t - pi / 3)$

  + $y = 2 / 3 cos (1 / 2 x + pi / 4)$

  ]

+ 求下面函数的图象在 $\(0\,2 pi\)$ 区间的交点坐标：

  + $y = sin 2 x$ 和 $y = 2 cos x$

  + $y = sin 3 x$ 和 $y = 2 sin x$

]
#heading(level: 2, numbering: none, outlined: true)[复习题七]

+ #block(sticky: true)[求 $theta$ 所在的象限，已知：]

  #cols(2)[
  + $sin theta$ 和 $cot theta$ 同号

  + $cos theta$ 和 $tan theta$ 异号

  + $frac(tan theta, cot theta)$ 是正值

  + $sin theta < 0$⁠，而 $cos theta > 0$

  ]

+ #block(sticky: true)[根据三角函数性质，比较两函数值的大小：]

  #cols(2)[
  + $sin 20 degree\,#h(2em) sin 21 degree$

  + $cos 20 degree\,#h(2em) cos 120 degree$

  + $tan 120 degree\,#h(2em) tan 121 degree$

  + $cot 175 degree\,#h(2em) cot 185 degree$

  + $cos 1 degree\,#h(2em) cos 1$

  + $sin 1\,#h(2em) cos 1$

  + $sin\(- 310 degree\)\,#h(2em) cos\(- 310 degree\)$

  + $sin frac(4 pi, 5)\,#h(2em) cos frac(4 pi, 5)$

  ]

+ #block(sticky: true)[说出下列各函数的周期：]

  #cols(2)[
  + $y = sin 4 x$

  + $y = cos x / 2$

  + $y = tan a x quad\(a > 0\)$

  + $y = sin (x + pi / 3)$

  + $y = cos (2 x - pi / 6)$

  + $y = 3 tan (x / 2 + pi / 4)$

  ]

+ #lead-list(none, 2)[
  + 等式 $sin (frac(7 pi, 6) + frac(2 pi, 3)) = sin frac(7 pi, 6)$⁠，能不能成立？

  + 如果上面的等式成立，能不能说 $frac(2 pi, 3)$ 是 $sin x$ 的周期？为什么？
  ]

+ #lead-list(none, 2)[
  + 等式 $sin\(x + 4 pi\)= sin x$ 是不是对于 $x$ 的一切值都能成立？

  + 如果上面的等式对于 $x$ 的一切值都能成立，能不能说 $4 pi$ 是 $sin x$ 的周期？为什么？
  ]

+ 用下面给出的周期，各举出一个周期函数来：$ 3 pi\,#h(2em) pi / 6\,#h(2em) frac(2 pi, 3) $

+ #block(sticky: true)[说明正弦曲线 $y = sin x$ 经过怎样的变化能得到下列的函数曲线：]

  #cols(2)[
  + $y = 1 / 2 sin 3 x$

  + $y = 2 sin (x + pi / 4)$

  + $y = sin (2 x + pi / 2)$

  + $y = 2 sin (3 x - pi / 3)$

  ]

+ 电流强度 $I$ 随时间 $t$ 变化的函数关系是 $I = A sin omega t$⁠．设 $omega = 100 pi$\(弧度／秒)，$A = 5$\(安培)：

  + 求电流强度变化的周期和频率（往复振动一次所需的时间 $T = frac(2 pi, omega)$, 叫做振动的周期，单位时间内往复振动的次数 $f = 1 / T = frac(omega, 2 pi)$⁠，叫做振动的频率）；

  + 当 $t = 0$⁠、$1 / 200$⁠、$1 / 100$⁠、$3 / 200$⁠、$1 / 50$（秒）时，求电流强度；

  + 画出图象表示电流强度 $I$ 随时间 $t$ 的变化情况（以 $I$ 为纵坐标，0.5cm表示1安培；以 $t$ 为横坐标，1cm表示 $1 / 200$ 秒）．

+ 如图，一质点 $P$ 在线段 $C C'$ 上作往复运动，取原点 $O$ 为 $C C'$ 中点，又 $C C' = 16$⁠cm, 设 $P$ 点离开原点 $O$ 的坐标 $x$ 是时间 $t$ 的函数 $x = 8 sin (pi / 4 t + pi / 6)$

  #align(center)[
  #fig("7-19");

  ]
  #noindent;问：

  + 当 $t = 0\,2\,4$ 秒时，$P$ 点在何位置？

  + 从0秒算起，经过多少秒，$P$ 点第一次到达 $C$ 点．

  + 经过多少秒后 $P$ 点开始重复运动．
