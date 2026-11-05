// 由 typst/tools/tex2typ.py 从 math3/6.tex 转换而来，已人工校对的部分以本文件为准。
#import "../common/template.typ": *
#import "figs.typ": fig

= 任意角的三角函数
== 弧和角的概念及其度量
=== 任意大小的角
在平面几何里，每一个角可以看作是由一条射线绕着它的端点旋转而形成的．射线的端点叫做角的顶点，射线旋转的开始位置叫做角的始边，终止位置叫做角的终边．如图6.1所示的角 $alpha$ 是射线 $O A$ 绕着端点 $O$, 按着箭头所示的方向旋转到 $O B$ 所形成．$O$ 点是角 $alpha$ 的顶点，射线 $O A$ 和 $O B$ 分别是角 $alpha$ 的始边和终边．

#figure([#fig("6-01");

  ],
  caption: [
  ]
)

#figure([#fig("6-02");

  ],
  caption: [
  ]
)

射线旋转所形成的角可以是任意大小的角，这也就是说，一条射线旋转所成的角可以是锐角，钝角，平角，也可以大于一个平角 (图6.2a), 也可以绕端点若干周后和开始的位置重合 (图6.2b), 也可以旋转若干周又一周的部分 (图6.2c)．

我们还看到射线有两种相反的旋转方向：逆时针方向和顺时针方向．为了加以区别，我们把按逆时针方向旋转所形成的角叫做正角，按顺时针方向旋转所形成的角叫做负角．例如图6.3中以 $O A$ 为始边的角 $alpha = 210 degree$, $beta = - 150 degree$, $gamma = - 660 degree$.

#figure([#fig("6-03");

  ],
  caption: [
  ]
)

如果射线 $O A$ 没有作任何旋转，仍留在开始的位置，那么我们也把它看成一个角，叫做#strong[零角]．

这样，我们把角的概念推广到了任意的角，包括正角、负角和零角．

我们这样引进来的广义角的概念，是由下列三个因素组成：“始边”、“旋转方向”、“旋转量”．旋转量的大小通常是以度数或弧度数来表示．

和角的概念对应的是弧的概念．

我们已经讨论了任意大小的角，现在再来讨论任意大小的弧．

圆弧可以看做是射线上的一点（不与端点重合），随着射线旋转所形成的轨迹．

#figure([#fig("6-04");

  ],
  caption: [
  ]
)

如图6.4所示，弧 $wideparen(M M')$ 是射线 $O A$ 上的 $M$ 点，随着射线 $O A$ 旋转，由起始位置到 $O B$ 时所形成的轨迹．显然，对于任意角 $alpha$ 的终边的每个位置，都有 $M$ 点划出的弧 $wideparen(M M')$ 和它对应．和规定角的正负一样，我们规定：当射线上的一点按逆时针方向旋转时，该点所划出的弧为正的；按顺时针方向旋转时，该点所划出的弧为负的，这样规定就使正、负角和正、负弧对应起来．

再来规定角和它所对应弧的量数．在平面几何里，我们曾规定把圆周分成360等分，每一份叫做一度的弧，一度弧所对的圆心角叫做一度的角．因此，一个圆弧含有多少度、分、秒，它所对圆心角也含有多少度、分、秒，即弧与其所对应的圆心角有完全相同的量数．例如圆心角是 $500 degree$ 的角时，它所对的弧就是 $500 degree$ 的弧；圆心角是 $- 300 degree$ 时，它所对的弧也是 $- 300 degree$.

=== 角的度量
角的度量是取一个确定的角作为度量单位，利用它来量所有的角．用周角的 $1 / 360$ 作为度量单位的叫做“度”．在高等数学和其它基础科学理论系统中也常用弧度作为度量圆弧和角的单位．

在弧度制中，取等于半径长的圆弧作为单位弧长．这样的弧叫做一弧度弧．用一弧度弧度量同一个圆上的圆弧所得到的量数叫做这个圆弧的弧度数，这也就是说给定圆弧的弧度数等于圆弧的弧长和半径的比值：#numbered-eq($ alpha = ell / R $);#noindent;这里 $alpha$ 是圆弧的弧度数，$ell$ 是弧长，$R$ 是圆的半径．

我们指出圆心角所张的圆弧的弧度数由这个角的大小决定，而和圆的半径长短无关．

事实上，从几何里知道，在圆心角相同时，两个圆上的弧长的比等于它们的半径长的比 (图6.5), 即 $ wideparen(A_1 B_1) / wideparen(A_2 B_2) = R_1 / R_2 $ #noindent;或$ wideparen(A_1 B_1) / R_1 = wideparen(A_2 B_2) / R_2 $ #noindent;这就是说，两个圆弧 $wideparen(A_1 B_1)$, $wideparen(A_2 B_2)$ 的弧度数是相同的．

#figure([#fig("6-05");

  ],
  caption: [
  ]
)

因此，一个圆心角所对的弧的弧度数可以表示这个角的大小，我们也把圆心角所对的圆弧的弧度数称为这个角的弧度数．

#blk[定义][
以一个角为圆心角，这个角所对的弧的长和这个弧的半径长之比，叫做这个角的弧度数．

]
当弧长等于半径时，这个比值等于1, 因此，在弧度制里，度量一个角时，我们规定：

长度等于半径的圆弧所对的圆心角叫做1弧度角．换言之，一弧度圆弧所对的圆心角叫做1弧度角．

这样，由 (6.1) 推得#numbered-eq($ ell = alpha R $);#noindent;即圆弧长等于这圆弧的弧度数（或这弧所对圆心角的弧度数）和半径长的乘积．特别地，单位圆上的弧长等于它的弧度数．

利用 (6.1) 还可以直接计算一些特殊角的弧度数．

当弧长等于圆周长 $C = 2 pi R$ 时，这个比值等于 $2 pi$, 因此，$ upright("周角") & = frac(2 pi R, R) = 2 pi upright("弧度")\
upright("平角") & = 1 / 2 upright("周角") = pi upright("弧度")\
upright("直角") & = 1 / 4 upright("周角") = pi / 2 upright("弧度")\
45 degree & = 1 / 2 upright("直角") = pi / 4 upright("弧度")\
30 degree & = 1 / 3 upright("直角") = pi / 6 upright("弧度")\
60 degree & = 1 / 3 upright("平角") = pi / 3 upright("弧度") $

#rmk[
角的量数是以弧度数表示的，通常只写出数值不写出单位，以后我们都将单位“弧度”二字省略不写．例如平角 $= pi$ 弧度就写成平角 $= pi$⁠．但是千万不要误解平角就是圆周率 $3.1415926 dots.h.c$⁠．

]
度与弧度的互化．

因为平角 $= 180 degree = pi$, 所以 $1 degree = pi / 180 approx 0.017453$⁠．$A degree$ 的角相应的弧度数：$ alpha & = frac(A pi, 180)\
1' & = (1 / 60) degree = 1 / 60 (pi / 180) approx 0.00029088\
1 upright("(弧度)") & = (180 degree) / pi = 57.295 degree approx 3438' approx 206265'' = 57 degree 17' 45'' $ #noindent;$alpha$ 弧度的角相应的度数：$ A degree = frac(alpha dot.op 180 degree, pi) $

下表给出一些常见角的弧度和它们的近似值：

#align(center)[
#table(
  columns: (auto, auto, auto, auto, auto, auto, auto, auto,),
  align: (center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon,),
  table.hline(),
  [度],
  [$30 degree$],
  [$45 degree$],
  [$60 degree$],
  [$90 degree$],
  [$180 degree$],
  [$270 degree$],
  [$360 degree$],
  table.hline(),
  [弧度],
  [$pi / 6$],
  [$pi / 4$],
  [$pi / 3$],
  [$pi / 2$],
  [$pi$],
  [$3 / 2 pi$],
  [$2 pi$],
  [近似值],
  [0.5236],
  [0.7854],
  [1.0472],
  [1.5708],
  [3.1416],
  [4.7124],
  [6.2832],
  table.hline(),
);

]
#example[
化 $67 degree 30'$ 为弧度．

]
#solution[
$ 67 degree 30' = 67.5 degree = pi / 180 times 67.5 = 3 / 8 pi thick upright("(弧度)") $

]
#example[
化 $3 / 5 pi$ 弧度为度．

]
#solution[
$ 3 / 5 pi = (180 degree) / pi times 3 / 5 pi = 108 degree $

]
#example[
两皮带轮的半径 $R_1 = 20$, $R_2 = 30$, 求它们的转速之比 (图6.6)．

#figure([#fig("6-06");

  ],
  caption: [
  ]
)

]
#solution[
因为在相同的时间内，两轮周上转过的弧长相等，即 $S_1 = S_2$, 在弧度制下：$ S_1 = alpha_1 R_1\,#h(2em) S_2 = alpha_2 R_2 $ #noindent;$therefore quad alpha_1 R_1 = alpha_2 R_2 quad arrow.r.double quad alpha_1 / alpha_2 = R_2 / R_1 = 30 / 20$

$therefore quad alpha_1 : alpha_2 = 3 : 2$

]
#example[
地球的半径为6400公里，在同一经线上，甲、乙两地的距离为150公里，试求甲、乙两地纬度差．

]
#solution[
设 $theta$ 为甲、乙两地纬度差，则 $ theta & = 150 / 6400 approx 0.0234\
 & = 0.0234 times (180 degree) / pi\
 & approx 0.0234 times 3438'\
 & approx 1 degree 20' $

答: 两地纬度差为 $1 degree 20'$⁠．

]
#exercise[
+ #block(sticky: true)[把下列各角的度数化为弧度数：]

  #cols(3)[
  + $2 degree$

  + $5 degree$

  + $7 degree 30'$

  + $12 degree 30'$

  + $22.5 degree$

  + $200 degree$

  + $320 degree$

  + $14 degree 24'$

  + $86 degree 45'$

  + $157 degree 30'$

  ]

+ #block(sticky: true)[把下列各角的弧度数化为度数：]

  #cols(3)[
  + $0.4800$

  + $0.0099$

  + $2.6400$

  + $3 / 5 pi$

  + $4 / 5 pi$

  + $pi / 15$

  + $pi / 10$

  + $3 pi$

  ]

+ 已知 $200 degree$ 的圆心角所对的弧长等于50cm, 求圆的半径．

+ 轮子每秒旋转 $5 / 18$ 弧度，20秒钟内转了多大角度？

+ 一个大钟的长针长2尺8寸．20秒间针端走了几寸？

+ 扇形弧长为20cm, 半径为15cm, 求扇形面积．

+ 地球半径为6400公里，地面上一弧所对球心角为 $1'$, 问弧长若干公里？

]
=== 始边和终边相同的角
今后我们常在直角坐标系里讨论角，并把角放在下面的标准位置：使角的顶点与坐标原点重合，角的始边与 $x$ 轴的正半轴重合，角的终边在第几象限，就把这个角叫做第几象限角（或说这个角属于第几象限）．如图6.7(1) 中，$pi / 6$, $frac(13 pi, 6)$ 和 $- frac(11 pi, 6)$ 都是第一象限的角．在图6.7(2) 中，$- pi / 3$, $frac(5 pi, 3)$ 都是第四象限的角．

#figure([#fig("6-07");

  ],
  caption: [
  ]
)

在图6.7(1) 中可以看到 $frac(13 pi, 6)$ 与 $- frac(11 pi, 6)$ 都和 $pi / 6$ 的角终边相同．$frac(13 pi, 6)$ 和 $- frac(11 pi, 6)$ 可以写成下列形式：$ 2 pi + pi / 6\,#h(2em) - 2 pi + pi / 6 $ #noindent;显然，除了这两个角以外，与 $pi / 6$ 的角终边相同的角还有：$ 2 times 2 pi + pi / 6\, & #h(2em) - 2 times 2 pi + pi / 6\
3 times 2 pi + pi / 6\, & #h(2em) - 3 times 2 pi + pi / 6\
dots.h.c dots.h.c #h(2em) & #h(2em) #h(2em) dots.h.c dots.h.c $ #noindent;所有和 $pi / 6$ 的角终边相同的角，连同 $pi / 6$ 在内，可以用下式表示：$ 2 k pi + pi / 6\,quad\(k in bb(Z)\) $ #noindent;当 $k = 0$ 时，它表示 $pi / 6$ 的角；$k = 1$ 时，它表示 $frac(13 pi, 6)$ 的角；$k = - 1$ 时，它表示 $- frac(11 pi, 6)$ 的角．

一般地，所有和 $alpha$ 角终边相同的角，连同 $alpha$ 在内，可以用式子 $2 k pi + alpha thick\(k in bb(Z)\)$ 来表示．

由此可见，具有相同始边和终边的角不止一个，而是无穷多个，它们之间彼此相差整数周（正的或负的）即 $2 pi$ 的整数倍．实际上，相同始边和终边的角是由无穷多个角组成的集合．与 $alpha$ 终边相同的角（$alpha$ 角处在标准位置）的集合可记作：$ \{ beta\|beta = 2 k pi + alpha\,thick k in bb(Z) \} quad upright("(若") alpha upright("以弧度制给出）") $ #noindent;或 $ \{ beta\|beta = k dot.op 360 degree + alpha\,thick k in bb(Z) \} quad upright("(若") alpha upright("以度数制给出）") $

#example[
在 $0 degree$ 到 $360 degree$ 的范围内，找出与下列各角终边相同的角，并判定下列各角是哪个象限的角．$ - 120 degree\,#h(2em) 640 degree\,#h(2em) - 950 degree 12' $

]
#solution[
+ $because quad - 120 degree = - 360 degree + 240 degree$

  $therefore quad - 120 degree$ 的角与 $240 degree$ 的角的终边相同，它是第三象限的角．

+ $because quad 640 degree = 360 degree + 280 degree$

  $therefore quad 640 degree$ 的角与 $280 degree$ 的角的终边相同，它是第四象限的角．

+ $because quad - 950 degree 12' = - 3 times 360 degree + 129 degree 48'$

  $therefore quad - 950 degree 12'$ 的角与 $129 degree 48'$ 的角的终边相同，它是第二象限的角．

]
#example[
写出与下列各角终边相同的角的集合 $S$, 并把 $S$ 中 $- 2 pi$ 到 $4 pi$ 间的角写出来：$ pi / 3\,#h(2em) - pi / 4\,#h(2em) frac(15 pi, 7) $

]
#solution[
+ $S = lr(\{ beta #scale(x: 180%, y: 180%)[$\|$] beta = 2 k pi + pi / 3 \, thick k in bb(Z) \})$

  $S$ 中在 $- 2 pi$ 到 $4 pi$ 间的角：

  - 当 $k = - 1$ 时，$beta = - 2 pi + pi / 3 = - frac(5 pi, 3)$

  - 当 $k = 0$ 时，$beta = pi / 3$

  - 当 $k = 1$ 时，$beta = 2 pi + pi / 3 = frac(7 pi, 3)$

+ $S = lr(\{ beta #scale(x: 180%, y: 180%)[$\|$] beta = 2 k pi - pi / 4 \, thick k in bb(Z) \})$

  $S$ 中在 $- 2 pi$ 到 $4 pi$ 间的角：

  - 当 $k = 0$ 时，$beta = - pi / 4$

  - 当 $k = 1$ 时，$beta = 2 pi - pi / 4 = frac(7 pi, 4)$

  - 当 $k = 2$ 时，$beta = 4 pi - pi / 4 = frac(15 pi, 4)$

+ $S = lr(\{ beta #scale(x: 180%, y: 180%)[$\|$] beta = 2 k pi + frac(15 pi, 7) \, thick k in bb(Z) \})$

  $S$ 中在 $- 2 pi$ 到 $4 pi$ 间的角：

  - 当 $k = - 2$ 时，$beta = - 4 pi + frac(15 pi, 7) = - frac(13 pi, 7)$

  - 当 $k = - 1$ 时，$beta = - 2 pi + frac(15 pi, 7) = pi / 7$

  - 当 $k = 0$ 时，$beta = frac(15 pi, 7)$

]
如果处在标准位置的角的终边落在坐标轴上，那么如何写出终边相同的角呢？下面我们来研究这个问题．

+ 终边落在 $x$ 轴的正向上，这些角的量数为 $ 2 n pi quad\(n in bb(Z)\) $

+ 终边落在x轴的负向上，这些角的量数 $ 2 n pi + pi =\(2 n + 1\)pi quad\(n in bb(Z)\) $ #noindent;把1、2结合起来，量数为 $k pi thick\(k in bb(Z)\)$ 的角的终边落在 $x$ 轴上，在 $k$ 为偶数时，终边落在 $x$ 轴的正向上；在 $k$ 为奇数时，终边落在 $x$ 轴的负向上．

+ 终边落在 $y$ 轴的正向上，这些角的量数为 $ 2 n pi + pi / 2 quad\(n in bb(Z)\) $

+ 终边落在 $y$ 轴的负向上，这些角的量数为 $ - pi / 2 + 2 n pi =\(2 n - 1\)pi + pi / 2 quad\(n in bb(Z)\) $ #noindent;把3、4结合起来，量数为 $k pi + pi / 2 thick\(k in bb(Z)\)$ 的角的终边落在 $y$ 轴上，在 $k$ 为偶数时，终边落在 $y$ 轴的正向上，在 $k$ 为奇数时，终边落在 $y$ 轴的负向上．

量数为 $k dot.op pi / 2 thick\(k in bb(Z)\)$ 的角的终边，或落在 $x$ 轴上，或落在 $y$ 轴上．在 $k = 0\,1\,2\,3\,4\,5\,dots.h$ 时，终边依次落在 $x$ 轴正向、$y$ 轴正向、$x$ 轴负向、$y$ 轴负向、$x$ 轴正向、$y$ 轴正向……在 $k = - 1\,- 2\,- 3\,- 4\,- 5\,dots.h$ 时，终边依次落在 $y$ 轴负向、$x$ 轴负向、$y$ 轴正向、$x$ 轴正向、$y$ 轴负向……

此外，若 $alpha$ 的终边落在右半平面（一、四象限），则满足 $ - pi / 2 + 2 k pi < alpha < pi / 2 + 2 k pi quad\(k in bb(Z)\) $ #noindent;若 $alpha$ 的终边落在上半平面（一、二象限），则满足 $ 2 k pi < alpha <\(2 k + 1\)pi $

以上这些表示法希望大家熟悉，因为以后经常要用到．

#exercise[
+ #block(sticky: true)[在度数制下，写出下面处在标准位置的终边相同的角．]

  #cols(2)[
  + $30 degree$

  + 终边落在 $x$ 轴正向上；

  + 终边落在 $x$ 轴负向上；

  + 终边落在 $x$ 轴上；

  + 终边落在 $y$ 轴正向上；

  + 终边落在 $y$ 轴负向上；

  + 终边落在 $y$ 轴上；

  ]
  #block[
  #set enum(numbering: enum-at(2, none, start: 8))
  + 角 $alpha$ 的终边落在左半平面上；

  + 角 $alpha$ 的终边落在下半平面上．
  ]

+ 把下列角放在标准位置上，用量角器作出下列各角，并指出它们是哪个象限的角．$ - 55 degree\,#h(2em) - 265 degree\,#h(2em) 400 degree\,#h(2em) 1000 degree\,#h(2em) - 512 degree $

+ 当时钟上指出3点，6点和8点的时候，写出分针与时针所成角的一般形式．

+ 试求出下列处在标准位置的各角的最小正同边角及最大负同边角，并说明各角为何象限角：$ 1140 degree\,#h(2em) 1680 degree\,#h(2em) - 1290 degree\,#h(2em) - 1510 degree $

+ 写出与下列各角终边相同的角的集合，并把集合中在 $- 4 pi$ 到 $2 pi$ 间的角写出来：$ pi / 4\,#h(2em) - pi / 6\,#h(2em) frac(36 pi, 5)\,#h(2em) - frac(8 pi, 7) $

]
=== 单位圆
#blk[定义][
以坐标原点为圆心，半径长为1的圆叫做单位圆．它上面任一弧的长度恰好等于弧度数．

]
如图6.8, 单位圆交坐标轴于四个点 $A\(1\,0\)$⁠、$B\(0\,1\)$⁠、$A_1\(- 1\,0\)$⁠、$B_1\(0\,- 1\)$⁠．过 $A$ 作单位圆的切线 $ell$, 在 $ell$ 上这样来建立坐标系：取 $A$ 为原点，取向上的方向为正向，单位等于半径长，这样 $ell$ 就是一条实数轴．我们已经知道实数轴上的点和全体实数是一一对应的．

#figure([#scale(60%, reflow: true, image("/math3/fig/6-8.PNG"));

  ],
  caption: [
  ]
)

现在把数轴 $ell$ 设想为一条无限长而没有伸缩性的丝线，把数轴 $ell$ 正的那一半按反时针方向来包卷单位圆，而用这条数轴负的那一半按顺时针方向包卷于单位圆上．设 $S_1$ 是数轴 $ell$ 正的那一半上的一点（图6.8），当 $ell$ 包卷到圆上后，此点就落到单位圆上的 $P_1$ 点，此时 $S_1$ 点的坐标是单位圆上弧 $wideparen(A P_1)$ 的长或 $wideparen(A P_1)$ 的弧度数，也是 $wideparen(A P_1)$ 所对圆心角 $theta$ 的弧度数．如果数轴 $ell$ 上的一点坐标是负的，那么它就是 $ell$ 的负半轴按顺时针方向包卷在单位圆上的负弧或它所对负圆心角的弧度数，通过数轴在单位圆上的包卷，我们建立了数轴上一切点的坐标和处在标准位置的圆心角 $theta$ 的弧度数之间的一一对应，并且由于它们的基本单位相等，于是 $theta$ 角的弧度数就可以从包卷在单位圆上的数轴 $ell$ 上的点的坐标直接读出来．

我们必须注意，在数轴 $ell$ 上，坐标相差 $2 pi$ 的或相差 $2 pi$ 整数倍的那些点，当把 $ell$ 包卷在单位圆上时，都位于同一点，例如 $P_1$ 点是弧长 $S_1$ 达到的一点，那么弧长等于 $S_1 plus.minus 2 pi\,S_1 plus.minus 4 pi\,dots.h$ 的弧，当 $ell$ 包卷在单位圆上时也达到同一个点 $P_1$, 这就说明了数轴上的点和单位圆上的点是多一对应．于是数轴 $ell$ 上的任意两个实数 $S_1\,S_2$ 和单位圆上同一个点对应的充要条件是：$ S_1 - S_2 = 2 n pi #h(2em)\(n in bb(Z)\) $ #noindent;我们把上述两种对应复合在一起得到：

#numbered-align(($upright("实数") bb(R)$, $eqph arrow.l.r.long \{ theta\|upright("标准位置有向角的弧度数") \}$, [(一一对应)]), ($$, $arrow.r.long \{\(x\,y\)\|x^2 + y^2 = 1 \}$, [(多一对应)]));

这里 $\(x\,y\)$ 是单位圆上点的坐标．我们在下面将应用这种对应关系来研究三角函数的许多性质．并且把角的三角函数与实变数的三角函数统一起来．

#example[
在单位圆上作出对应于下列各数的点：$ 0\,quad pi / 6\,quad pi / 3\,quad pi / 2\,quad frac(2 pi, 3)\,quad frac(5 pi, 6)\,quad pi\,quad frac(7 pi, 6)\,quad frac(4 pi, 3)\,quad frac(3 pi, 2)\,quad frac(5 pi, 3)\,quad frac(11 pi, 6)\,quad 2 pi $

]
#solution[
这些数中每相邻两数的差是 $pi / 6$⁠，即在单位圆上以相邻两数为端点的弧都相等，因此我们将单位圆12等分后，就得到对应于上列各数的点（图6.9）．

#figure([#fig("6-08");

  ],
  caption: [
  ]
)

]
#example[
在数轴 $ell$ 上找到和单位圆上 $\(0\,1\)$ 点对应的一切实数．

]
#solution[
在单位圆上 $B$ 点的坐标是 $\(0\,1\)$, $wideparen(A B)$ 的弧长是 $pi / 2$⁠，因此在数轴 $ell$ 上和 $\(0\,1\)$ 点对应的一切实数是：$pi / 2 + 2 k pi thick\(k in bb(Z)\)$⁠．

]
#exercise[
+ 在单位圆上找出与实数0, $pi / 2$, $- pi / 2$⁠，$pi$ 对应的点 $P_1$⁠、$P_2$⁠、$P_3$⁠、$P_4$. 并写出与 $angle A O P_1$⁠、$angle A O P_2$⁠、$angle A O P_3$⁠、$angle A O P_4$ 对应的一切实数的一般形式．

+ #lead-list(none, 2)[
  + 在单位圆上找出分别与下面各实数0、$pi / 6$⁠、$pi / 4$⁠、$pi / 3$⁠、$pi / 2$ 对应的点 $P_0$⁠、$P_1$⁠、$P_2$⁠、$P_3$⁠、$P_4$⁠．

  + 分别写出 $P_0$⁠、$P_1$⁠、$P_2$⁠、$P_3$⁠、$P_4$ 各点的直角坐标．

  + 与下面各实数对应的点，哪些和 $P_0$⁠、$P_1$⁠、$P_2$⁠、$P_3$⁠、$P_4$ 关于坐标轴对称？哪些关于原点对称？并写出它们的直角坐标．
  ]

$ frac(2 pi, 3)\,quad frac(3 pi, 4)\,quad frac(5 pi, 6)\,quad pi\,quad frac(7 pi, 6)\,quad frac(5 pi, 4)\,quad frac(4 pi, 3)\,quad frac(3 pi, 2)\,quad frac(5 pi, 3)\,quad - pi / 4\,quad frac(11 pi, 6) $

]
== 任意角的三角函数
在描述和研究有关转动和振动的实际问题的时候，我们就要研究任意角的三角函数，下面我们来研究任意角的三角函数．

=== 任意角三角函数的定义
如图6.10, 在角 $alpha$ 的终边上任意取一点 $P$（不是坐标系的原点）．

以坐标系的原点为起点，$P$ 为终点的有向线段 $accent(O P, ⃗)$ 叫做 $P$ 点的向量半径或旋转半径．

设 $P$ 点的坐标是 $\(x\,y\)$, 它和原点的距离为 $r > 0$（即旋转半径 $accent(O P, ⃗)$ 的长），横坐标 $x$ 与纵坐标 $y$ 的正负是由 $P$ 点所在的象限来确定的．距离 $r$ 总是正的，并且 $ r = sqrt(x^2 + y^2) $

#figure([#fig("6-09");

  ],
  caption: [
  ]
)

#blk[定义][
+ $y / r$ 叫做角 $alpha$ 的正弦，记作 $sin alpha$, 即 $sin alpha = y / r$⁠；

+ $x / r$ 叫做角 $alpha$ 的余弦，记作 $cos alpha$, 即 $cos alpha = x / r$⁠；

+ $y / x$ 叫做角 $alpha$ 的正切，记作 $tan alpha$, 即 $tan alpha = y / x$⁠；

+ $x / y$ 叫做角 $alpha$ 的余切，记作 $cot alpha$, 即 $cot alpha = x / y$⁠；

+ $r / x$ 叫做角 $alpha$ 的正割，记作 $sec alpha$, 即 $sec alpha = r / x$⁠；

+ $r / y$ 叫做角 $alpha$ 的余割，记作 $csc alpha$, 即 $csc alpha = r / y$⁠．

]
对于确定的角 $alpha$⁠，$y / r\,thick x / r\,thick y / x\,thick x / y\,thick r / x\,thick r / y$ 这六个比值的大小，和我们在 $alpha$ 角的终边上所取 $P$ 点的位置没有关系，如图6.11中，$P_1\(x_1\,y_1\)$ 点为角 $alpha$ 终边上另一点，$P_1$ 到原点 $O$ 的距离为 $r_1$⁠，$x$ 和 $x_1$⁠、$y$ 和 $y_1$ 的符号相同，因为 $triangle.stroked.t P O M tilde.op triangle.stroked.t P_1 O M_1$⁠，所以 $  & y_1 / r_1 = y / r\,#h(2em) x_1 / r_1 = x / r\,#h(2em) y_1 / x_1 = y / x\
 & x_1 / y_1 = x / y\,#h(2em) r_1 / x_1 = r / x\,#h(2em) r_1 / y_1 = r / y $

#figure([#fig("6-10");

  ],
  caption: [
  ]
)

这就是说，对于确定的角 $alpha$, $sin alpha$⁠、$cos alpha$⁠、$tan alpha$⁠、$cot alpha$⁠、$sec alpha$⁠、$csc alpha$ 都有确定的值，因为它们的值是随着 $alpha$ 变化而变化的，当 $alpha$ 角取确定值的时候，它们的值也相应地唯一确定，所以，角 $alpha$ 的正弦、余弦、正切、余切、正割和余割都是角 $alpha$ 的函数，这些函数都叫做三角函数．

很明显，当角 $alpha$ 是锐角或钝角时，上面三角函数的定义和锐角、钝角三角函数的定义完全一样，所以锐角、钝角三角函数定义是任意角三角函数定义的特例．

根据任意角三角函数定义，可以看出 $ sec alpha = frac(1, cos alpha)\,#h(2em) csc alpha = frac(1, sin alpha)\,#h(2em) cot alpha = frac(1, tan alpha) $

今后我们主要研究 $sin alpha$⁠、$cos alpha$⁠、$tan alpha$⁠、$cot alpha$ 四个函数．

#example[
已知单位圆中旋转半径 $O P$ 和 $O X$ 轴正方向成 $300 degree$ 角，求 $sin 300 degree$, $cos 300 degree$, $tan 300 degree$, $cot 300 degree$⁠．

]
#solution[
设 $O P$ 的端点 $P$ 的坐标是 $\(x\,y\)$. 作直线 $P M tack.t O X$ 轴于 $M$ 点，$A$ 点是单位圆与 $O X$ 轴的交点 $\(1\,0\)$, 联结 $P\,A$\(图6.12). 在 $triangle.stroked.t O P A$ 中，

$because quad O P = O A = 1\,quad angle P O A = 360 degree - 300 degree = 60 degree$

$therefore quad triangle.stroked.t O P A$ 是等边三角形，因此，$P M$ 垂直平分 $O A$, $\|x\|=\|O M\|= 1 / 2$ $ \|y\| & =\|P M\|= sqrt(\|O P\|^2 -\|O M\|^2)\
 & = sqrt(1 - (1 / 2)^2) = sqrt(3) / 2 $

#figure([#fig("6-11");

  ],
  caption: [
  ]
)

又 $because quad P$ 点在第四象限，$therefore quad P$ 点坐标是 $ x = 1 / 2\,#h(2em) y = - sqrt(3) / 2 $ #noindent;由此求得 $ sin 300 degree = - sqrt(3) / 2\,#h(2em) cos 300 degree = 1 / 2\
tan 300 degree = - sqrt(3)\,#h(2em) cot 300 degree = - 1 / sqrt(3) = - sqrt(3) / 3 $

]
#example[
$ cos 0 = 1\,#h(2em) sin 0 = 0\,#h(2em) cos pi / 2 = 0\,#h(2em) sin pi / 2 = 1\
cos pi = - 1\,#h(2em) sin pi = 0\,#h(2em) cos frac(3 pi, 2) = 0\,#h(2em) sin frac(3 pi, 2) = - 1 $

]
=== 数值变数的三角函数与三角函数的定义域
在数学中两个变数之间的函数可以表示不同物理量或几何量之间的函数关系，例如，数学中的二次函数 $y = a x^2$, 如果 $a = 1$, $x$ 表示正方形的边长的数值，$y$ 就表示正方形的面积数值；但是当 $a = 1 / 2 g$ 时，$x$ 表示自由落体下降的时间，则 $y$ 表示下降的距离．同样，有许多物理或技术问题，常常要用到的三角函数，其中的自变量就不一定是角或弧而是时间或长度等，所以为了满足科学技术上的需要，就必需把角的三角函数扩充为变数 $x$ 的三角函数．

假设 $x$ 是在函数定义域内的任意实数，根据前节讨论知，对应此实数有一个量数是 $x$ 的角或弧（用弧度作单位），而对应于该角又有它的各三角函数值，由于这种关系，对于任意实数 $x$ 就有完全确定的三角函数值 $y$ 与之对应，于是得到了一个数值变数的三角函数．

#blk[定义][
变数 $x$ 的三角函数就是具有弧度数 $x$ 的角（或弧）的三角函数．

]
#example[
若 $x = 1.54$, 求 $sin x$ 的值．

]
#solution[
因为 $sin 1.54 = sin 1.54 upright("弧度")$⁠，又 $1.54 upright("弧度") approx 88 degree 14'$⁠，

所以 $sin 1.54 approx sin 88 degree 14' approx 0.9995$

]
在任意大小的角、弧及数之间所能建立的对应，使得我们可以认为三角函数是角的函数，或是弧的函数，或是数的函数，其中变数由我们处理，可以解释为角或解释为弧，或解释为数．

现在给每个三角函数确定它的定义域：

设数值 $alpha$, 有单位圆上的点 $P$ 与之对应（如图6.13），那么 $P$ 点的坐标是 $ x = cos alpha\,#h(2em) y = sin alpha $

#figure([#fig("6-12");

  ],
  caption: [
  ]
)

因此：$ tan alpha = y / x = frac(sin alpha, cos alpha)\,#h(2em) cot alpha = x / y = frac(cos alpha, sin alpha)\
sec alpha = 1 / x = frac(1, cos alpha)\,#h(2em) csc alpha = 1 / y = frac(1, sin alpha) $

+ 函数 $cos alpha$ 和 $sin alpha$ 的定义域是开区间 $- oo < alpha < + oo$, 即 $\(- oo\,+ oo\)$, 这是因为 $cos alpha$ 和 $sin alpha$ 是单位圆上对应于数 $alpha$ 的点 $P$ 的横坐标和纵坐标，它们对于任何实数 $alpha$ 都有明确的值．

+ 函数 $tan alpha$ 的定义域是除去形如 $pi / 2 + k pi thick\(k in bb(Z)\)$ 的数的实数集：$ lr(\{ alpha #scale(x: 180%, y: 180%)[$\|$] alpha in bb(R) \, thick alpha eq.not pi / 2 + k pi \, thick k in bb(Z) \}) $ #noindent;即正切的定义域是无限个开区间组成的一个集：$ dots.h.c\,(- frac(3 pi, 2) \, - pi / 2)\,(- pi / 2 \, pi / 2)\,(pi / 2 \, frac(3 pi, 2))\,(frac(3 pi, 2) \, frac(5 pi, 2))\,dots.h.c $ #noindent;这是因为 $tan alpha = y / x$ 是单位圆上 $P$ 点的纵坐标对横坐标之比，唯有当 $x = 0$ 时它失去意义，单位圆上与 $x = 0$ 对应的点只有 $\(0\,1\)$ 和 $\(0\,- 1\)$, 与 $\(0\,1\)$ 点对应的一切实数是 $alpha = pi / 2 + 2 k pi thick\(k in bb(Z)\)$, 与 $\(0\,- 1\)$ 点对应的一切实数是 $alpha = - pi / 2 + 2 k pi thick\(k in bb(Z)\)$, 和 $\(0\,1\)$ 点、$\(0\,- 1\)$ 点这两点对应的一切实数可以合并写成：$ alpha = pi / 2 + k pi #h(2em)\(k in bb(Z)\) $

+ 函数 $cot alpha$ 的定义域是除去形如 $k pi thick\(k in bb(Z)\)$ 的数的实数集：$\{ alpha\|alpha in bb(R)\,thick alpha eq.not k pi\,k in bb(Z) \}$, 即余切的定义域是无限个开区间组成的一个集：$ dots.h.c\,\(- pi\,0\)\,\(0\,pi\)\,\(pi\,2 pi\)\,dots.h.c $

+ 函数 $sec alpha$ 的定义域与正切函数 $tan alpha$ 的定义域 $lr(\{ alpha #scale(x: 180%, y: 180%)[$\|$] alpha in bb(R) \, thick alpha eq.not pi / 2 + k pi \, k in bb(Z) \})$ 相同．

+ 函数 $csc alpha$ 的定义域与余切函数 $cot alpha$ 的定义域 $\{ alpha\|alpha in bb(R)\,thick alpha eq.not k pi\,k in bb(Z) \}$ 相同．

=== 三角函数的正负
设单位圆上点 $P$ 与数 $alpha$ 对应，以后我们把与 $alpha$ 对应，处在标准位置，以 $alpha$（弧度）为量数的角 $angle A O P$ 简称为角 $alpha$⁠．

+ 若 $P$ 点在第一象限（或者角 $alpha$ 终边在第一象限），则 $P$ 点的横坐标 $x > 0$, 纵坐标 $y > 0$, 因此，$ cos alpha > 0\,#h(2em) sin alpha > 0\,#h(2em) tan alpha = frac(sin alpha, cos alpha) > 0\,#h(2em) cot alpha = frac(cos alpha, sin alpha) > 0 $

+ 若 $P$ 点在第二象限（或者角 $alpha$ 终边在第二象限），则 $P$ 点的横坐标 $x < 0$, 纵坐标 $y > 0$, 因此，$ cos alpha < 0\,#h(2em) sin alpha > 0\,#h(2em) tan alpha = frac(sin alpha, cos alpha) < 0\,#h(2em) cot alpha = frac(cos alpha, sin alpha) < 0 $

+ 若 $P$ 点在第三象限（或者角 $alpha$ 终边在第三象限），则 $P$ 点的横坐标 $x < 0$, 纵坐标 $y < 0$, 因此，$ cos alpha < 0\,#h(2em) sin alpha < 0\,#h(2em) tan alpha = frac(sin alpha, cos alpha) > 0\,#h(2em) cot alpha = frac(cos alpha, sin alpha) > 0 $

+ 若 $P$ 点在第四象限（或者角 $alpha$ 终边在第四象限），则 $P$ 点的横坐标 $x > 0$, 纵坐标 $y < 0$, 因此，$ cos alpha > 0\,#h(2em) sin alpha < 0\,#h(2em) tan alpha = frac(sin alpha, cos alpha) < 0\,#h(2em) cot alpha = frac(cos alpha, sin alpha) < 0 $

总之，三角函数的符号可以由单位圆上 $P$ 点在哪一象限，或者由角 $alpha$ 的终边在哪一象限决定，如图6.14所示．

#figure([#fig("6-13");

  ],
  caption: [
  ]
)

#example[
决定下列三角函数的符号：$ cos 120 degree\,#h(2em) sin\(- 465 degree\)\,#h(2em) csc (- frac(4 pi, 3)) $

]
#solution[
+ $120 degree$ 的角是第二象限的角，而第二象限的角的余弦为负，所以$ cos 120 degree < 0 $

+ $- 465 degree$ 的角是第三象限的角，而第三象限的角的正弦为负，所以$ sin\(- 465 degree\)< 0 $

+ $- frac(4 pi, 3)$ 的角是第二象限的角，而第二象限的角的余割为正，所以$ csc (- frac(4 pi, 3)) > 0 $

]
#example[
如果 $alpha$ 是第四象限的角，那么 $sin alpha tan alpha$ 和 $frac(c o s alpha, cot alpha)$ 各取什么符号？

]
#solution[
因为 $alpha$ 是第四象限的角，根据第四象限角的三角函数的符号得：$ sin alpha < 0\,#h(2em) cos alpha > 0\,#h(2em) tan alpha < 0\,#h(2em) cot alpha < 0 $ #noindent;所以 $ sin alpha tan alpha > 0\,#h(2em) frac(cos alpha, cot alpha) < 0 $

]
#example[
若 $alpha$ 是第三象限的角，求证：$tan alpha + cot alpha gt.eq 2$

]
#solution[
$because quad alpha$ 是第三象限的角，$tan alpha > 0$, $cot alpha > 0$. 根据两个正数的算术平均值不小于它的几何平均值，因此有：$ frac(tan alpha + cot alpha, 2) gt.eq sqrt(tan alpha cot alpha) $ #noindent;即：$frac(tan alpha + cot alpha, 2) gt.eq 1$

$therefore quad tan alpha + cot alpha gt.eq 2$

]
#exercise[
+ 图示下列各点位置，并求出与原点的距离．写出角的终边通过这些点的三角函数值：$P_1\(- 3\,4\)$, $P_2\(4\,- 5\)$, $P_3\(- 5\,- 3\)$⁠．

+ 若 $P$ 点的坐标为 $\(- 4\,y\)$⁠、$O P$ 长为5, 试求 $y$ 值，并写出角的终边通过 $P$ 点的三角函数值．

+ $sec alpha$ 能否小于 $tan alpha$? $csc alpha$ 能否小于 $cot alpha$?

+ 就绝对值而言能否 $cos alpha$ 大于 $cot alpha$? $sin alpha$ 大于 $tan alpha$?

+ $x$ 为何值，不等式 $\|sin x\|+\|cos x\|< 1$ 成立？

+ 决定下列各角正弦、余弦、正切的符号：$ 885 degree\,#h(2em) - 395 degree\,#h(2em) frac(19 pi, 6) $

+ 若 $cos A < 0$ 且 $tan A < 0$, 试决定 $A$ 为何象限角？

+ 设 $frac(sin alpha, tan alpha) < 0$, $frac(cot alpha, cos alpha) < 0$, $sin alpha cos alpha < 0$, 角 $alpha$ 的终边应当在哪些象限？

+ #block(sticky: true)[设 $alpha$ 的终边在第三象限内，决定下列各式的符号：]

  #cols(2)[
  + $sin alpha + cos alpha$

  + $tan alpha - sin alpha$

  + $cos alpha + cot alpha$

  + $sec alpha + tan alpha + cot alpha$

  ]

+ #block(sticky: true)[$alpha$ 为何值时，下面式子失去意义：]

  #cols(2)[
  + $cos alpha + frac(1, cos alpha)$

  + $tan alpha + sin alpha$

  + $tan alpha + cot alpha$

  + $frac(1, cos alpha) + tan alpha$

  + $frac(1, sin alpha cos alpha)$

  ]

]
=== 一些特殊角的三角函数值
我们常常要考虑在 $\[0\,2 pi\]$ 范围的一些特殊角的三角函数值，仍利用单位圆来讨论，设向量半径 $accent(O P, ⃗)$ 的端点为 $P\(x\,y\)$, 于是

- 当 $alpha = 0$ 时，则 $P$ 的坐标是 $\(1\,0\)$, 那么，$cos 0 = 1$, $sin 0 = 0$, $tan 0 = 0$, $cot 0$ 不存在，$sec 0 = 1$, $csc 0$ 不存在．

- 当 $alpha = pi / 2$ 时，则 $P$ 的坐标是 $\(0\,1\)$, 那么，$cos pi / 2 = 0$, $sin pi / 2 = 1$, $tan pi / 2$ 不存在, $cot pi / 2 = 0$⁠，$sec pi / 2$ 不存在, $csc pi / 2 = 1$⁠．

- 当 $alpha = pi$ 时，则 $P$ 的坐标是 $\(- 1\,0\)$, 那么，$cos pi = - 1$, $sin pi = 0$, $tan pi = 0$, $cot pi$ 不存在，$sec pi = - 1$, $csc pi$ 不存在．

- 当 $alpha = frac(3 pi, 2)$ 时，则P的坐标是 $\(0\,- 1\)$, 那么，$cos frac(3 pi, 2) = 0$, $sin frac(3 pi, 2) = - 1$, $tan frac(3 pi, 2)$ 不存在, $cot frac(3 pi, 2) = 0$⁠，$sec frac(3 pi, 2)$ 不存在, $csc frac(3 pi, 2) = - 1$⁠．

把上面结果列成表．要记着表上结果并不难，只要记着特殊点 $P$ 的相应位置，根据三角函数的定义就很快得到函数值．

#align(center)[
#table(
  columns: (auto, auto, auto, auto, auto, auto, auto, auto,),
  align: (center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon,),
  table.vline(x: 1),
  table.vline(x: 2),
  table.hline(),
  [$P\(x\,y\)$],
  [$alpha$],
  [$cos alpha$],
  [$sin alpha$],
  [$tan alpha$],
  [$cot alpha$],
  [$sec alpha$],
  [$csc alpha$],
  table.hline(),
  [$P\(1\,0\)$],
  [0],
  [1],
  [0],
  [0],
  [不存在],
  [1],
  [不存在],
  [$P\(0\,1\)$],
  [$pi / 2$],
  [0],
  [1],
  [不存在],
  [0],
  [不存在],
  [1],
  [$P\(- 1\,0\)$],
  [$pi$],
  [$- 1$],
  [0],
  [0],
  [不存在],
  [$- 1$],
  [不存在],
  [$P\(0\,- 1\)$],
  [$frac(3 pi, 2)$],
  [0],
  [$- 1$],
  [不存在],
  [0],
  [不存在],
  [$- 1$],
  table.hline(),
);

]
在 $(0 \, pi / 2)$ 之间的几个特殊角的函数值，以前见过了，现在再复习一下（见图6.15）：

#figure([#fig("6-14");

  ],
  caption: [
  ]
)

- 设 $alpha = pi / 6\(= 30 degree\)$, 根据直角三角形性质（$30 degree$ 角的对边等于斜边的一半），得 $P$ 点坐标 $P (sqrt(3) / 2 \, 1 / 2)$⁠，那么 $ cos pi / 6 = sqrt(3) / 2\,#h(2em) sin pi / 6 = 1 / 2\,#h(2em) tan pi / 6 = 1 / sqrt(3) = sqrt(3) / 3\,#h(2em) cot pi / 6 = sqrt(3) $

- 设 $alpha = pi / 4\(= 45 degree\)$, 这时得 $P (sqrt(2) / 2 \, sqrt(2) / 2)$⁠，那么 $ cos pi / 4 = sqrt(2) / 2\,#h(2em) sin pi / 4 = sqrt(2) / 2\,#h(2em) tan pi / 4 = 1\,#h(2em) cot pi / 4 = 1 $

- 设 $alpha = pi / 3\(= 60 degree\)$, 这时得 $P (1 / 2 \, sqrt(3) / 2)$⁠，那么 $ cos pi / 3 = 1 / 2\,#h(2em) sin pi / 3 = sqrt(3) / 2\,#h(2em) tan pi / 3 = sqrt(3)\,#h(2em) cot pi / 3 = 1 / sqrt(3) = sqrt(3) / 3 $

把上述结果列表如下：

#align(center)[
#table(
  columns: (auto, auto, auto, auto,),
  align: (center + horizon, center + horizon, center + horizon, center + horizon,),
  table.vline(x: 1),
  table.hline(),
  [$alpha$],
  [$pi / 6\(30 degree\)$],
  [$pi / 4\(45 degree\)$],
  [$pi / 3\(60 degree\)$],
  table.hline(),
  [$sin alpha$],
  [$1 / 2$],
  [$sqrt(2) / 2$],
  [$sqrt(3) / 2$],
  [$cos alpha$],
  [$sqrt(3) / 2$],
  [$sqrt(2) / 2$],
  [$1 / 2$],
  [$tan alpha$],
  [$sqrt(3) / 3$],
  [1],
  [$sqrt(3)$],
  [$cot alpha$],
  [$sqrt(3)$],
  [1],
  [$sqrt(3) / 3$],
  table.hline(),
);

]
#exercise[
+ 求下列各式的值：

  + $5 sin 90 degree + 2 cos 0 degree - 3 sin 270 degree + 10 cos 180 degree$

  + $a^2 cos 270 degree + b^2 sin 0 degree + 2 a b cot 270 degree$

  + $m sin 270 degree - frac(n sin 90 degree, cos 180 degree) + k tan 180 degree$

  + $a^2 cos 0 degree - b^2 sin 270 degree + a b cos 180 degree - a b cos 0 degree$

  + $a^2 sin 90 degree + 2 a b cos 180 degree + frac(b^2, cos^2 0 degree)$

+ 求下列各式的值：

  + $p^2 sin 90 degree - 2 p q cos 0 degree - q^2 sec 180 degree$

    其中：$p = 1 / 3$, $q = 1 / 2$

  + $cos pi / 3 - tan pi / 4 + 3 / 4 tan^2 pi / 6 - sin pi / 6 + cos^2 pi / 6 + sin frac(3 pi, 2)$

  + $cos pi / 3 - sin^2 pi / 4 cos pi - 1 / 3 tan^2 pi / 3 sin frac(3 pi, 2) + cos 0$

]
== 三角函数的诱导公式
=== 三角函数的奇偶性
关于函数的奇偶性的概念我们在以前已经学习过了，现在我们来研究三角函数的奇偶性，以便在计算函数值时得到一些简便的法则．

我们有下面的定理．

#blk[定理][
余弦函数是偶函数，正弦函数、正切函数和余切函数都是奇函数，这就是说，对于一切容许的 $alpha$ 值，都有#numbered-eq($ sin\(- alpha\)= - sin alpha\, & #h(2em) cos\(- alpha\)= cos alpha\
tan\(- alpha\)= - tan alpha\, & #h(2em) cot\(- alpha\)= - cot alpha $);

]
#proof[
设 $alpha$ 和 $- alpha$ 是处在标准位置（即如图6.16所示）的，按相反的旋转方向且有相同绝对值的角，于是这两个角的终边关于 $O x$ 轴对称．

#figure([#fig("6-15");

  ],
  caption: [
  ]
)

设它们的终边与单位圆交于 $P_alpha$ 和 $P_(- alpha)$ 两点，此两点也必定关于 $O x$ 轴对称．

根据三角函数的定义，

- $P_alpha$ 点的坐标是 $\(cos alpha\,sin alpha\)$⁠；

- $P_(- alpha)$ 点的坐标是 $\(cos\(- alpha\)\,sin\(- alpha\)\)$⁠．

因此，由它们关于 $O x$ 轴的对称性便知道它们的横坐标相等，纵坐标是相反数，也就是说 $ cos\(- alpha\)= cos alpha\,#h(2em) sin\(- alpha\)= - sin alpha $

由此，$ tan\(- alpha\) & = frac(sin\(- alpha\), cos\(- alpha\)) = frac(- sin alpha, cos alpha) = - tan alpha\
cot\(- alpha\) & = frac(cos\(- alpha\), sin\(- alpha\)) = frac(cos alpha, - sin alpha) = - cot alpha $

]
#example[
求 $cos (- pi / 6)$⁠，$sin (- pi / 6)$⁠，$tan (- pi / 6)$⁠，$cot (- pi / 6)$ 的值．

]
#solution[
$ cos (- pi / 6) & = cos pi / 6 = sqrt(3) / 2\
sin (- pi / 6) & = - sin pi / 6 = - 1 / 2\
tan (- pi / 6) & = - tan pi / 6 = - sqrt(3) / 3\
cot (- pi / 6) & = - cot pi / 6 = - sqrt(3) $

]
#example[
下面函数哪些是偶函数，哪些是奇函数，哪些都不是？

#cols(2)[
+ $g\(x\)= 1 - cos x$

+ $F\(x\)= x - sin x$

+ $h\(x\)= x^2 cos x$

+ $y\(x\)= frac(x + sin x, x - sin x)$

]
]
#solution[
+ $because quad g\(- x\)= 1 - cos\(- x\)= 1 - cos x = g\(x\)$

  $therefore quad g\(x\)$ 是偶函数．

+ $because quad F\(- x\)=\(- x\)- sin\(- x\)= - x -\(- sin x\)= -\(x - sin x\)= - F\(x\)$

  $therefore quad F\(x\)$ 是奇函数．

+ $because quad h\(- x\)=\(- x\)^2 cos\(- x\)= x^2 cos x = h\(x\)$

  $therefore quad h\(x\)$ 是偶函数．

+ $because quad y\(- x\)= frac(\(- x\)+ sin\(- x\), \(- x\)- sin\(- x\)) = frac(-\(x + sin x\), -\(x - sin x\)) = frac(x + sin x, x - sin x) = y\(x\)$

  $therefore quad y\(x\)$ 是偶函数．

]
#exercise[
下面函数哪些是偶函数，哪些是奇函数，哪些都不是？

#cols(2)[
+ $f\(x\)=\|sin x\|$

+ $H\(x\)= x^2 + sin x$

+ $phi.alt\(x\)= cos x sin x$

+ $G\(x\)= frac(1 - cos x, 1 + cos x)$

+ $f\(t\)= frac(t^2 + sin t^2, 1 + sin^2 t)$

+ $y = tan\(x + 2\)$

+ $y = - tan 2 x + 2$

+ $y = tan\(3 - x\)$

]
]
=== $2 pi plus.minus alpha$ 与 $alpha$ 的三角函数间的关系
根据三角函数的定义可以知道，终边相同的角的同一三角函数的值相等，即#numbered-eq($ sin\(alpha + 2 k pi\)= sin alpha\, & #h(2em) cos\(alpha + 2 k pi\)= cos alpha\
tan\(alpha + 2 k pi\)= tan alpha\, & #h(2em) cot\(alpha + 2 k pi\)= cot alpha $);#noindent;其中 $k in bb(Z)$⁠．

利用上面的公式可以把求任意角的三角函数值的问题，转化为求0到 $2 pi$ 间角的三角函数值的问题．

#example[
求下列三角函数值：

#cols(3)[
+ $sin\(- 1480 degree 10'\)$

+ $cos (frac(9 pi, 4))$

+ $tan (- frac(11 pi, 3))$

]
]
#solution[
+ $sin\(- 1480 degree 10'\)= - sin\(1480 degree 10'\)= - sin\(4 times 360 degree + 40 degree 10'\)= - sin 40 degree 10' = - 0.6451$

+ $cos (frac(9 pi, 4)) = cos (2 pi + pi / 4) = cos pi / 4 = sqrt(2) / 2$

+ $tan (- frac(11 pi, 3)) = tan (- 4 pi + pi / 3) = tan pi / 3 = sqrt(3)$

]
在上面公式中，若令 $k = 1$, 则有#numbered-eq($ sin\(2 pi + alpha\)= sin alpha\, & #h(2em) cos\(2 pi + alpha\)= cos alpha\
tan\(2 pi + alpha\)= tan alpha\, & #h(2em) cot\(2 pi + alpha\)= cot alpha $);

现在来看 $2 pi - alpha$ 的各三角函数值：$ sin\(2 pi - alpha\) & = sin\[2 pi +\(- alpha\)\]= sin\(- alpha\)= - sin alpha\
cos\(2 pi - alpha\) & = cos\[2 pi +\(- alpha\)\]= cos\(- alpha\)= cos alpha\
tan\(2 pi - alpha\) & = tan\[2 pi +\(- alpha\)\]= tan\(- alpha\)= - tan alpha\
cot\(2 pi - alpha\) & = cot\[2 pi +\(- alpha\)\]= cot\(- alpha\)= - cot alpha $

于是有#numbered-eq($ sin\(2 pi - alpha\)= - sin alpha\, & #h(2em) cos\(2 pi - alpha\)= cos alpha\
tan\(2 pi - alpha\)= - tan alpha\, & #h(2em) cot\(2 pi - alpha\)= - cot alpha $);

#example[
求下列各三角函数值：

#cols(3)[
+ $sin frac(11 pi, 6)$

+ $cos frac(13 pi, 8)$

+ $cot 310 degree 18'$

+ $sin (- 17 / 3 pi)$

+ $tan\(- 324 degree 18'\)$

]
]
#solution[
+ $sin frac(11 pi, 6) = sin (2 pi - pi / 6) = - sin pi / 6 = - 1 / 2$

+ $cos frac(13 pi, 8) = cos (2 pi - frac(3 pi, 8)) = cos frac(3 pi, 8) = cos 67 degree 30' = 0.3827$

+ $cot 310 degree 18' = cot\(360 degree - 49 degree 42'\)= - cot 49 degree 42' = - 0.8481$

+ $sin (- 17 / 3 pi) = sin (- 6 pi + pi / 3) = sin pi / 3 = sqrt(3) / 2$

  或者 $ sin (- 17 / 3 pi) = - sin frac(17 pi, 3) = - sin (6 pi - pi / 3) = - sin (- pi / 3) = sin pi / 3 = sqrt(3) / 2 $

+ $tan\(- 324 degree 18'\)= - tan 324 degree 18' = - tan\(360 degree - 35 degree 42'\)= -\(- tan 35 degree 42'\)= tan 35 degree 42' = 0.7186$

]
=== $pi / 2 plus.minus alpha$ 与 $alpha$ 的三角函数间的关系
$pi / 2 plus.minus alpha$ 与 $alpha$ 的三角函数间有下述关系：#numbered-eq($ sin (pi / 2 + alpha) = cos alpha\, & #h(2em) cos (pi / 2 + alpha) = - sin alpha\
tan (pi / 2 + alpha) = - cot alpha\, & #h(2em) cot (pi / 2 + alpha) = - tan alpha $);

#proof[
设 $P$ 和 $P'$ 是单位圆上的点，且 $angle P O P' = pi / 2$⁠．若 $P$ 点分别在第一、二、三、四象限，那么 $P'$ 点就依次在第二、三、四、一象限，如图6.17所示．

#figure([#fig("6-16");

  ],
  caption: [
  ]
)

从 $P$ 点和 $P'$ 点分别向 $O x$ 轴和 $O y$ 轴引垂线 $P M$, $P' M'$⁠．从直角三角形 $O M P$ 和 $O M' P'$ 全等得 $ \|O M\|=\|O M'\|\,#h(2em)\|M P\|=\|M' P'\| $

由上面等式和对于任意角 $alpha$ 的 $P\,P'$ 两点所在象限知道：$P$ 点的横坐标 $x_P = O M$⁠，恒与 $P'$ 点的纵坐标 $y_(P') = O M'$ 相等，即它们的绝对值和符号都相同，也就是 $x_P = y_(P')$⁠，因此 $cos alpha = sin (alpha + pi / 2)$⁠．

又 $P$ 点的纵坐标 $y_P = M P$ 是 $P'$ 点的横坐标 $x_(P') = M' P'$ 的相反数，即 $y_P = M P = - M' P' = - x_(P')$⁠，因此，$sin alpha = - cos (alpha + pi / 2)$⁠．这样就得到：$ sin (pi / 2 + alpha) & = cos alpha\
cos (pi / 2 + alpha) & = - sin alpha\
tan (pi / 2 + alpha) & = frac(sin (pi / 2 + alpha), cos (pi / 2 + alpha)) = frac(cos alpha, - sin alpha) = - cot alpha\
cot (pi / 2 + alpha) & = frac(cos (pi / 2 + alpha), sin (pi / 2 + alpha)) = frac(- sin alpha, cos alpha) = - tan alpha $

]
由公式 (6.7) 我们可以得到，对于任意角 $alpha$⁠，$ sin (pi / 2 - alpha) & = sin [pi / 2 + \( - alpha \)] = cos\(- alpha\)= cos alpha\
cos (pi / 2 - alpha) & = cos [pi / 2 + \( - alpha \)] = - sin\(- alpha\)= sin alpha\
tan (pi / 2 - alpha) & = tan [pi / 2 + \( - alpha \)] = - cot\(- alpha\)= cot alpha\
cot (pi / 2 - alpha) & = cot [pi / 2 + \( - alpha \)] = - tan\(- alpha\)= tan alpha $ #noindent;于是有#numbered-eq($ sin (pi / 2 - alpha) = cos alpha\, & #h(2em) cos (pi / 2 - alpha) = sin alpha\
tan (pi / 2 - alpha) = cot alpha\, & #h(2em) cot (pi / 2 - alpha) = tan alpha $);

=== $pi plus.minus alpha$⁠、$frac(3 pi, 2) plus.minus alpha$ 与 $alpha$ 的三角函数间的关系
由于 $ sin\(pi + alpha\) & = sin [pi / 2 + (pi / 2 + alpha)] = cos (pi / 2 + alpha) = - sin alpha\
cos\(pi + alpha\) & = cos [pi / 2 + (pi / 2 + alpha)] = - sin (pi / 2 + alpha) = - cos alpha\
tan\(pi + alpha\) & = tan [pi / 2 + (pi / 2 + alpha)] = - cot (pi / 2 + alpha) = -\(- tan alpha\)= tan alpha\
cot\(pi + alpha\) & = cot [pi / 2 + (pi / 2 + alpha)] = - tan (pi / 2 + alpha) = -\(- cot alpha\)= cot alpha $ #noindent;因此有：#numbered-eq($ sin (pi + alpha) = - sin alpha\, & #h(2em) cos (pi + alpha) = - cos alpha\
tan (pi + alpha) = tan alpha\, & #h(2em) cot (pi + alpha) = cot alpha $);

由于 $ sin\(pi - alpha\) & = sin\[pi +\(- alpha\)\]= - sin\(- alpha\)= sin alpha\
cos\(pi - alpha\) & = cos\[pi +\(- alpha\)\]= - cos\(- alpha\)= - cos alpha\
tan\(pi - alpha\) & = tan\[pi +\(- alpha\)\]= tan\(- alpha\)= - tan alpha\
cot\(pi - alpha\) & = cot\[pi +\(- alpha\)\]= cot\(- alpha\)= - cot alpha $ #noindent;因此有：#numbered-eq($ sin (pi - alpha) = sin alpha\, & #h(2em) cos (pi - alpha) = - cos alpha\
tan (pi - alpha) = - tan alpha\, & #h(2em) cot (pi - alpha) = - cot alpha $);

由于 $ sin (frac(3 pi, 2) + alpha) & = sin [pi + (pi / 2 + alpha)] = - sin (pi / 2 + alpha) = - cos alpha\
cos (frac(3 pi, 2) + alpha) & = cos [pi + (pi / 2 + alpha)] = - cos (pi / 2 + alpha) = -\(- sin alpha\)= sin alpha\
tan (frac(3 pi, 2) + alpha) & = tan [pi + (pi / 2 + alpha)] = tan (pi / 2 + alpha) = - cot alpha\
cot (frac(3 pi, 2) + alpha) & = cot [pi + (pi / 2 + alpha)] = cot (pi / 2 + alpha) = - tan alpha $ #noindent;因此有：#numbered-eq($ sin (frac(3 pi, 2) + alpha) = - cos alpha\, & #h(2em) cos (frac(3 pi, 2) + alpha) = sin alpha\
tan (frac(3 pi, 2) + alpha) = - cot alpha\, & #h(2em) cot (frac(3 pi, 2) + alpha) = - tan alpha $);

由于 $ sin (frac(3 pi, 2) - alpha) & = sin [frac(3 pi, 2) + \( - alpha \)] = - cos\(- alpha\)= - cos alpha\
cos (frac(3 pi, 2) - alpha) & = cos [frac(3 pi, 2) + \( - alpha \)] = sin\(- alpha\)= - sin alpha\
tan (frac(3 pi, 2) - alpha) & = tan [frac(3 pi, 2) + \( - alpha \)] = - cot\(- alpha\)= cot alpha\
cot (frac(3 pi, 2) - alpha) & = cot [frac(3 pi, 2) + \( - alpha \)] = - tan\(- alpha\)= tan alpha $

因此有：#numbered-eq($ sin (frac(3 pi, 2) - alpha) = - cos alpha\, & #h(2em) cos (frac(3 pi, 2) - alpha) = - sin alpha\
tan (frac(3 pi, 2) - alpha) = cot alpha\, & #h(2em) cot (frac(3 pi, 2) - alpha) = tan alpha $);

#example[
求 $sin\(- 1650 degree\)$⁠，$cos (- frac(19 pi, 6))$ 的值．

]
#solution[
$ sin\(- 1650 degree\) & = - sin\(1650 degree\)= - sin\(4 times 360 degree + 210 degree\)\
 & = - sin 210 degree = - sin\(180 degree + 30 degree\)\
 & = sin 30 degree = 1 / 2\
cos (- frac(19 pi, 6)) & = cos frac(19 pi, 6) = cos (2 pi + frac(7 pi, 6))\
 & = cos frac(7 pi, 6) = cos (pi + pi / 6)\
 & = - cos pi / 6 = - sqrt(3) / 2 $

]
=== 三角函数的诱导公式
把上面的自变数是 $- alpha$⁠、$pi / 2 plus.minus alpha$⁠、$pi plus.minus alpha$⁠、$frac(3 pi, 2) plus.minus alpha$⁠、$2 pi plus.minus alpha$ 的三角函数表示为自变数就是 $alpha$ 的三角函数的公式，叫做三角函数的诱导公式．为便于查阅和比较，我们把三角函数的诱导公式全部都列于下表中．

#align(center)[
#table(
  columns: (auto, auto, auto, auto, auto,),
  align: (center + horizon, center + horizon, center + horizon, center + horizon, center + horizon,),
  table.hline(),
  [],
  [$cos$],
  [$sin$],
  [$tan$],
  [$cot$],
  table.hline(),
  [$- alpha$],
  [$cos alpha$],
  [$- sin alpha$],
  [$- tan alpha$],
  [$- cot alpha$],
  [$pi / 2 + alpha$],
  [$- sin alpha$],
  [$cos alpha$],
  [$- cot alpha$],
  [$- tan alpha$],
  [$pi / 2 - alpha$],
  [$sin alpha$],
  [$cos alpha$],
  [$cot alpha$],
  [$tan alpha$],
  [$pi + alpha$],
  [$- cos alpha$],
  [$- sin alpha$],
  [$tan alpha$],
  [$cot alpha$],
  [$pi - alpha$],
  [$- cos alpha$],
  [$sin alpha$],
  [$- tan alpha$],
  [$- cot alpha$],
  [$frac(3 pi, 2) + alpha$],
  [$sin alpha$],
  [$- cos alpha$],
  [$- cot alpha$],
  [$- tan alpha$],
  [$frac(3 pi, 2) - alpha$],
  [$- sin alpha$],
  [$- cos alpha$],
  [$cot alpha$],
  [$tan alpha$],
  [$2 pi + alpha$],
  [$cos alpha$],
  [$sin alpha$],
  [$tan alpha$],
  [$cot alpha$],
  [$2 pi - alpha$],
  [$cos alpha$],
  [$- sin alpha$],
  [$- tan alpha$],
  [$- cot alpha$],
  table.hline(),
);

]
比如要计算 $tan (pi / 2 + alpha)$ 的值，在表中找到标记 $pi / 2 + alpha$ 的第二行与标记 $tan$ 的第三列，它们相交之处，标记着 $- cot alpha$, 于是，相应的诱导公式可以写成 $tan (pi / 2 + alpha) = - cot alpha$⁠．

表中最后一列，给出对于锐角 $alpha$（带斜条的全等直角三角形的顶点在圆心的锐角）的三角函数诱导公式的几何解释．

我们称正弦与余弦，正切与余切互为余函数．

从表中，可知 $- alpha$⁠、$pi / 2 plus.minus alpha$⁠、$pi plus.minus alpha$⁠、$frac(3 pi, 2) plus.minus alpha$ 和 $2 pi plus.minus alpha$ 都可以化成 $k pi / 2 plus.minus alpha$ $\(k = 0\,1\,2\,3\,4\)$ 的形式，并且这些角的三角函数和角 $alpha$ 的三角函数之间的关系，可以总结出下面的法则．

+ 符号

  要确定结果的符号，只要假定 $alpha$ 为锐角（实际上，在所有公式中的 $alpha$ 都是任意角），看角 $k dot.op pi / 2 plus.minus alpha$ 在哪一象限，然后用原来函数在这个象限内应取的符号，作为结果的符号．

+ 函数名称

  + 若 $k$ 为偶数（包括 $k = 0$ 在内）则等式两边函数名称相同．

  + 若 $k$ 为奇数，则等式两边函数名称不同，可由原来函数名称中的“正”变“余”，或“余”变“正”（就是正弦变余弦，正切变余切；或余弦变正弦，余切变正切等等）而得到．

为了便于记忆，上述法则还可以概括成下面的口诀：

#align(center)[
`正负看象限，奇变偶不变． `

]
利用上面的法则，便可以迅速地写出三角函数的诱导公式，下面举例来说明．

#example[
写出 $cos (frac(3 pi, 2) + alpha)$ 的诱导公式．

]
#solution[
+ 假定 $alpha$ 是锐角，则 $frac(3 pi, 2) + alpha$ 是第四象限的角，而第四象限的角的余弦是正的，所以结果应取正号．

+ 因为 $frac(3 pi, 2) = 3 dot.op pi / 2$⁠，3是奇数，所以，结果中函数名称应由余弦变为正弦，因此，有 $ cos (frac(3 pi, 2) + alpha) = cos (3 dot.op pi / 2 + alpha) = sin alpha $

]
#example[
写出 $tan\(pi - alpha\)$ 的诱导公式．

]
#solution[
+ 假定 $alpha$ 是锐角，则 $pi - alpha$ 是第二象限的角，而第二象限的角的正切是负的，所以结果应取负号．

+ 因为 $pi = 2 dot.op pi / 2$⁠，2是偶数，所以，结果中函数名称与原来的相同，仍为正切，因此，有 $ tan\(pi - alpha\)= - tan alpha $

]
利用三角函数的诱导公式，我们可以把求任意角的三角函数值的问题化为求锐角三角函数值的问题．下面分三种情形举例说明．

第一种情形：0到 $2 pi$ (或 $0 degree$ 到 $360 degree$) 之间的角的三角函数．先选用适当的诱导公式化为锐角函数，然后求值．

#example[
$ sin 150 degree = sin\(180 degree - 30 degree\)= sin 30 degree = 1 / 2 $ #noindent;或 $ sin 150 degree = sin\(90 degree + 60 degree\)= cos 60 degree = 1 / 2 $

]
#example[
$ cos frac(2 pi, 3) = cos (pi - pi / 3) = - cos pi / 3 = - 1 / 2 $ #noindent;或 $ cos frac(2 pi, 3) = cos (pi / 2 + pi / 6) = - sin pi / 6 = - 1 / 2 $

]
#example[
$tan frac(4 pi, 3) = tan (pi + pi / 3) = tan pi / 3 = sqrt(3)$

]
#example[
$cot 313 degree 25' = cot\(360 degree - 46 degree 35'\)= - cot 46 degree 35' = - 0.9463$

]
第二种情形：大于 $2 pi$ (或大于 $360 degree$) 的角的三角函数，可利用公式 (6.4), 化为上述第一种情形，然后求值．

#example[
$sin 510 degree = sin\(360 degree + 150 degree\)= sin 150 degree = sin 30 degree = 1 / 2$

]
#example[
$cos frac(8 pi, 3) = cos (2 pi + frac(2 pi, 3)) = cos frac(2 pi, 3) = cos (pi - pi / 3) = - cos pi / 3 = - 1 / 2$

]
#example[
$ tan 500 degree = tan\(360 degree + 140 degree\) & = tan 140 degree\
 & = tan\(180 degree - 40 degree\)\
 & = - tan 40 degree = - 0.8391 $

]
第三种情形：负角的三角函数，可先化为正角的三角函数，然后再分别按上述两种情形求值．

#example[
$ sin\(- 680 degree\) & = - sin 680 degree = - sin\(360 degree + 320 degree\)\
 & = - sin 320 degree = - sin\(360 degree - 40 degree\)\
 & = -\(- sin 40 degree\)= sin 40 degree = 0.6428 $ #noindent;或$ sin\(- 680 degree\)= sin\(- 680 degree + 2 times 360 degree\)= sin 40 degree = 0.6428 $

]
#example[
$ cos (- frac(22 pi, 5)) = cos frac(22 pi, 5) & = cos (4 pi + frac(2 pi, 5))\
 & = cos frac(2 pi, 5) = cos 72 degree = 0.3090 $

]
#example[
化 $tan\(alpha - 270 degree\)$ 为角 $alpha$ 的三角函数．

]
#solution[
$ tan\(alpha - 270 degree\)= tan\[-\(270 degree - alpha\)\]= - tan\(270 degree - alpha\)= - cot alpha $ #noindent;或 $ tan\(alpha - 270 degree\)= tan\[\(alpha - 270 degree\)+ 360 degree\]= tan\(90 degree + alpha\)= - cot alpha $

]
#heading(level: 2, numbering: none, supplement: [toc-sub])[习题6.1]

+ #block(sticky: true)[用余角的三角函数来替换下面的三角函数．]

  #cols(2)[
  + $sin 75 degree 30'$

  + $sin\(30 degree - alpha\)$

  + $cos\(2 alpha + 14 degree\)$

  + $cos (alpha / 2 + 55 degree)$

  + $tan (66 degree - alpha / 3)$

  + $cot\(45 degree + alpha\)$

  ]

+ #block(sticky: true)[查表求下列三角函数值：]

  #cols(2)[
  + $sin 105 degree 45'$

  + $cos 165 degree 24'$

  + $tan 200 degree$

  + $cot 290 degree$

  ]

+ #block(sticky: true)[查表求下列三角函数值：]

  #cols(2)[
  + $sin frac(5 pi, 8)$

  + $cos frac(9 pi, 8)$

  + $tan 1.4 pi$

  + $cot 1.8 pi$

  + $- tan 0.3 pi$

  ]

+ #block(sticky: true)[查表求下列三角函数值：]

  #cols(2)[
  + $sin\(- 1640 degree\)$

  + $cos\(- 900 degree\)$

  + $tan\(- 700 degree\)$

  + $cot (- 13 3 / 4 pi)$

  ]

+ #block(sticky: true)[查表求下列三角函数值：]

  #cols(2)[
  + $sin 2$

  + $cos 1$

  + $tan\(- 3\)$

  + $cot\(sin 2\)$

  ]

+ #block(sticky: true)[查表求下列三角函数值：]

  #cols(2)[
  + $sin 1160 degree$

  + $tan\(- 1596 degree\)$

  + $cot 864 degree$

  + $cos\(- 320 degree\)$

  + $tan 1190 degree$

  + $cos\(- 847 degree 32'\)$

  + $- sin 570 degree$

  + $- cot 390 degree$

  ]

+ #block(sticky: true)[已知 $sin\(180 degree + alpha\)= - 1 / 2$⁠，计算：]

  #cols(2)[
  + $sin\(270 degree + alpha\)$

  + $cos\(90 degree + alpha\)$

  + $tan\(alpha - 270 degree\)$

  + $tan\(alpha - 180 degree\)$

  ]

+ 计算下列各式的值：

  + $2 sin^2 frac(17 pi, 4) + tan^2 frac(33 pi, 4) cot frac(3 pi, 4)$

  + $tan 10 degree dot.op tan 20 degree dot.op tan 30 degree dot.op tan 40 degree dot.op tan 50 degree dot.op tan 60 degree dot.op tan 70 degree dot.op tan 80 degree$

  + $sin 110 degree + sin 130 degree + sin 150 degree + sin 170 degree + sin 190 degree + sin 210 degree + sin 230 degree + sin 250 degree + sin 270 degree$

+ #block(sticky: true)[确定下列各式的符号：]

  #cols(2)[
  + $sin 100 degree + cos 100 degree$

  + $frac(1, cos 230 degree) - frac(1, cos 220 degree)$

  ]

+ 查表求角，若

  + $sin alpha = - 0.515\,#h(2em) 180 degree < alpha < 270 degree$

  + $sin alpha = 0.669\,#h(2em) 90 degree < alpha < 180 degree$

  + $tan alpha = - 1.376\,#h(2em) 90 degree < alpha < 180 degree$

  + $cos alpha = 0.407\,#h(2em) 270 degree < alpha < 360 degree$

  + $tan alpha = 0.577\,#h(2em) 180 degree < alpha < 270 degree$

  + $cot alpha = - 2.747\,#h(2em) 90 degree < alpha < 180 degree$

=== 正切函数线与余切函数线
#blk[定义][
过单位圆与坐标系的横轴 $O x$ 的交点 $A\(1\,0\)$ 的切线叫做正切函数线，简称正切线；而过单位圆与坐标系纵轴 $O y$ 的交点 $B\(0\,1\)$ 的切线叫做余切函数线，简称余切线（图6.18）．

]
#figure([#fig("6-17");

  ],
  caption: [
  ]
)

正切线与 $O y$ 轴平行，在正切线上，规定它的正方向与 $O y$ 轴的正方向一致，它上面的单位长等于单位圆的半径．

令 $P$ 是角 $alpha$ 的终边与单位圆的交点，延长旋转半径 $O P$ 或反向延长旋转半径 $O P$ 与正切线交于 $L$ 点（当 $P$ 点位于 $O y$ 轴上时，过 $O$⁠、$P$ 两点的直线就不与正切线相交），如图6.19所示．

#blk[定理][
角 $alpha$ 的正切等于它的终边所在直线与正切线的交点的纵坐标．

]
#proof[
如果角 $alpha$ 的终边 $O P$ 在 $O y$ 轴的右侧，射线 $O P$ 与正切线交于 $L$ 点．设 $P$ 点坐标为 $\(x\,y\)$, $L$ 点坐标为 $\(1\,y_1\)$⁠，这时 $ tan alpha = y / x = frac(A L, 1) = y_1 $ #noindent;这里 $A L$ 是有向线段 $accent(A L, ⃗)$ 的数量（图6.19(a)）．

#figure([#fig("6-18");

  ],
  caption: [
  ]
)

如果角 $alpha$ 的终边 $O P$ 在 $O y$ 轴的左侧，反向延长 $O P$ 与正切线交于 $L$ 点．设 $P$ 点、$L$ 点的坐标分别是 $\(x\,y\)$⁠、$\(x_1\,y_1\)$⁠，这时 $P$ 点和 $L$ 点的同名称坐标的符号相反，但由于 $triangle.stroked.t O P M tilde.op triangle.stroked.t O L A$, 所以它们的坐标的比相同（图6.19(b)），即 $ tan alpha = y / x = frac(M P, O M) = frac(A L, O A) = y_1 / 1 = y_1 $

如果 $P$ 点在 $O y$ 轴上则 $L$ 点不存在，$tan alpha$ 不存在．

余切线与 $O x$ 轴平行，在余切线上，规定它的正方向与 $O x$ 轴的正方向一致，它上面的单位长等于单位圆的半径．

]
我们可以用同样的方法证明下面的定理．

#blk[定理][
角 $alpha$ 的余切等于角 $alpha$ 终边所在直线与余切线交点的横坐标（图6.20）．

]
#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("6-19");], caption: []), figure([#fig("6-20");], caption: []))));

（证明留给读者去完成）

#example[
求适合下列各式的角 $alpha$ 的值（用弧度表示）．

#cols(2)[
+ $sin alpha = sqrt(3) / 2$

+ $sin 2 alpha = - sqrt(3) / 2$

+ $cos alpha / 2 = - 1 / 2$

+ $3 tan alpha + sqrt(3) = 0$

]
]
#solution[
+ 在单位圆上，纵坐标等于 $sqrt(3) / 2$ 的点，分别是在第一象限的点 $P_1$ 和第二象限的点 $P_2$（如图6.21）．

  $because quad sin pi / 3 = sqrt(3) / 2$⁠，故通过 $P_1$ 点的一切角 $ alpha_1 = pi / 3 + 2 k pi\,#h(2em) k in bb(Z) $ #noindent;通过 $P_2$ 点的一切角 $ alpha_2 = (pi - pi / 3) + 2 k pi = frac(2 pi, 3) + 2 k pi\,#h(2em) k in bb(Z) $

  #strong[另解：]$because quad sin alpha = sqrt(3) / 2 > 0$

  $therefore quad alpha$ 角终边在第一或第二象限．但知 $sin pi / 3 = sqrt(3) / 2$⁠，根据诱导公式得到 $ sin (pi / 3 + 2 k pi) = sin [(pi - pi / 3) + 2 k pi] = sin pi / 3 = sqrt(3) / 2 $ #noindent;所以 $sin alpha = sqrt(3) / 2$ 的解集是 $ lr(\{ alpha #scale(x: 180%, y: 180%)[$\|$] alpha = pi / 3 + 2 k pi \, thick k in bb(Z) \}) union.big lr(\{ alpha #scale(x: 180%, y: 180%)[$\|$] alpha = frac(2 pi, 3) + 2 k pi \, thick k in bb(Z) \}) $

+ 在单位圆上，纵坐标等于 $- sqrt(3) / 2$ 的点，分别是在第三象限的点 $P_1$ 和第四象限的点 $P_2$ (如图6.22)

  #figure([#fig("6-21");

    ],
    caption: [
    ]
  )

  $because quad sin pi / 3 = sqrt(3) / 2$⁠，故通过 $P_1$ 点的一切 $2 alpha_1$ 角：$ 2 alpha_1 = (pi + pi / 3) + 2 k pi = frac(4 pi, 3) + 2 k pi $ #noindent;由此得 $alpha_1 = frac(2 pi, 3) + k pi\,quad k in bb(Z)$⁠．

  通过 $P_2$ 点的一切 $2 alpha_2$ 角：$ 2 alpha_2 = (2 pi - pi / 3) + 2 k pi = frac(5 pi, 3) + 2 k pi $ #noindent;由此得 $alpha_2 = frac(5 pi, 6) + k pi\,quad k in bb(Z)$

  所以 $sin 2 alpha = - sqrt(3) / 2$ 的解集是 $ lr(\{ alpha #scale(x: 180%, y: 180%)[$\|$] alpha = frac(2 pi, 3) + k pi \, thick k in bb(Z) \}) union.big lr(\{ alpha #scale(x: 180%, y: 180%)[$\|$] alpha = frac(5 pi, 6) + k pi \, thick k in bb(Z) \}) $

  #strong[另解：]$because quad sin 2 alpha = - sqrt(3) / 2 < 0$

  $therefore quad$ 角 $2 alpha$ 终边在第三或第四象限．

  $because quad sin pi / 3 = sqrt(3) / 2$⁠，根据诱导公式 $ sin [(pi + pi / 3) + 2 k pi] = sin [(2 pi - pi / 3) + 2 k pi] = - sin pi / 3 = - sqrt(3) / 2 $ #noindent;得知 $ 2 alpha = frac(4 pi, 3) + 2 k pi #h(2em) upright("或") #h(2em) 2 alpha = frac(5 pi, 3) + 2 k pi quad\(k in bb(Z)\) $ #noindent;$therefore quad alpha = frac(2 pi, 3) + k pi #h(2em) upright("或") #h(2em) alpha = frac(5 pi, 6) + k pi quad\(k in bb(Z)\)$

+ 在单位圆上，横坐标等于 $- 1 / 2$ 的点分别是在第二象限的 $P_1$ 点和第三象限的 $P_2$ 点（如图6.23）．

  #figure([#fig("6-22");

    ],
    caption: [
    ]
  )

  $because quad cos pi / 3 = 1 / 2$⁠，故通过 $P_1$ 点的一切 $alpha_1 / 2$ 角：$ alpha_1 / 2 = (pi - pi / 3) + 2 k pi = frac(2 pi, 3) + 2 k pi $ #noindent;由此得：$alpha_1 = frac(4 pi, 3) + 4 k pi quad\(k in bb(Z)\)$⁠．

  通过 $P_2$ 点的一切 $alpha_2 / 2$ 角：$ alpha_2 / 2 = (pi + pi / 3) + 2 k pi = frac(4 pi, 3) + 2 k pi $ #noindent;由此得：$alpha_2 = frac(8 pi, 3) + 4 k pi quad\(k in bb(Z)\)$⁠．

  所以解集是：$ lr(\{ alpha #scale(x: 180%, y: 180%)[$\|$] alpha = frac(4 pi, 3) + 4 k pi \, thick k in bb(Z) \}) union.big lr(\{ alpha #scale(x: 180%, y: 180%)[$\|$] alpha = frac(8 pi, 3) + 4 k pi \, thick k in bb(Z) \}) $

  #strong[另解：]$because quad cos alpha / 2 = - 1 / 2 < 0$⁠，

  $therefore quad$ 角 $alpha / 2$ 的终边在第二象限或第三象限．

  $because quad cos pi / 3 = 1 / 2$⁠，根据诱导公式 $ cos [(pi - pi / 3) + 2 k pi] = cos [(pi + pi / 3) + 2 k pi] = - cos pi / 3 = - 1 / 2 $ #noindent;得知：$alpha / 2 = frac(2 pi, 3) + 2 k pi quad upright("或") quad alpha / 2 = frac(4 pi, 3) + 2 k pi$

  $ therefore quad alpha = frac(4 pi, 3) + 4 k pi #h(2em) upright("或") #h(2em) alpha = frac(8 pi, 3) + 4 k pi quad\(k in bb(Z)\) $

+ $3 tan alpha + sqrt(3) = 0 quad arrow.r.double quad tan alpha = - sqrt(3) / 3$

  在正切线上纵坐标等于 $- sqrt(3) / 3$ 的点 $L$ 对应着单位圆上第二象限的 $P_1$ 点和第四象限的 $P_2$ 点（如图6.24）．

  #figure([#fig("6-23");

    ],
    caption: [
    ]
  )

  因为 $tan pi / 6 = sqrt(3) / 3$⁠，所以通过 $P_2$ 点和 $P_1$ 点的一切角 $alpha = - pi / 6 + k pi\,thick\(k in bb(Z)\)$

  所以解集是：$lr(\{ alpha #scale(x: 180%, y: 180%)[$\|$] alpha = - pi / 6 + k pi \, quad k in bb(Z) \})$

  #strong[另解：]$because quad tan alpha = - sqrt(3) / 3 < 0$

  $therefore quad$ 角 $alpha$ 终边在第二象限或第四象限．

  $because quad tan pi / 6 = sqrt(3) / 3$⁠，根据诱导公式 $ tan [(pi - pi / 6) + 2 k pi] = tan [(2 pi - pi / 6) + 2 k pi] = - tan pi / 6 = - sqrt(3) / 3 $ #noindent;得知：$ alpha = frac(5 pi, 6) + 2 k pi #h(2em) upright("或") #h(2em) alpha = frac(5 pi, 6) +\(2 k + 1\)pi quad\(k in bb(Z)\) $

]
#exercise[
查表求适合下面等式的所有角，并图示所求角的终边．

#cols(2)[
+ $sin alpha = - 1 / 3$

+ $cos alpha = 2 / 5$

+ $tan alpha = - 2 / 3$

+ $cot alpha = - 2$

]
]
== 三角函数的基本关系
=== 相同角的三角函数的关系
根据任意角三角函数的定义，我们得到

#blk[倒数关系][
+ $sin alpha dot.op csc alpha = 1\,quad alpha eq.not k pi #h(2em)\(k in bb(Z)\)$

+ $cos alpha dot.op sec alpha = 1\,quad alpha eq.not pi / 2 + k pi #h(2em)\(k in bb(Z)\)$

+ $tan alpha dot.op cot alpha = 1\,quad alpha eq.not k dot.op pi / 2 #h(2em)\(k in bb(Z)\)$

]
#proof[
根据任意角三角函数定义得 $ sin alpha dot.op csc alpha & = y / r dot.op r / y = 1\,quad alpha eq.not k pi #h(2em)\(k in bb(Z)\)\
cos alpha dot.op sec alpha & = x / r dot.op r / x = 1\,quad alpha eq.not pi / 2 + k pi #h(2em)\(k in bb(Z)\)\
tan alpha dot.op cot alpha & = y / x dot.op x / y = 1\,quad alpha eq.not k dot.op pi / 2 #h(2em)\(k in bb(Z)\) $

]
#blk[商数关系][
+ $tan alpha = frac(sin alpha, cos alpha)\,quad alpha eq.not pi / 2 + k pi #h(2em)\(k in bb(Z)\)$

+ $cot alpha = frac(cos alpha, sin alpha)\,quad alpha eq.not k pi #h(2em)\(k in bb(Z)\)$

]
#proof[
$ frac(sin alpha, cos alpha) & = frac(y / r, x / r) = y / x = tan alpha\,quad alpha eq.not pi / 2 + k pi #h(2em)\(k in bb(Z)\)\
frac(cos alpha, sin alpha) & = frac(x / r, y / r) = x / y = cot alpha\,quad alpha eq.not k pi #h(2em)\(k in bb(Z)\) $

]
#blk[平方关系][
+ $sin^2 alpha + cos^2 alpha = 1$

+ $1 + tan^2 alpha = sec^2 alpha\,quad alpha eq.not pi / 2 + k pi #h(2em)\(k in bb(Z)\)$

+ $1 + cot^2 alpha = csc^2 alpha\,quad alpha eq.not k pi #h(2em)\(k in bb(Z)\)$

]
#proof[
根据任意角三角函数定义，得 $ sin^2 alpha + cos^2 alpha = (y / r)^2 + (x / r)^2 = frac(x^2 + y^2, r^2) $ #noindent;因为 $y^2 + x^2 = r^2$⁠，所以 $sin^2 alpha + cos^2 alpha = 1$⁠．

把 $sin^2 alpha + cos^2 alpha = 1$ 的两边同除以 $cos^2 alpha\,thick alpha eq.not pi / 2 + k pi quad\(k in bb(Z)\)$, 便得到 $ tan^2 alpha + 1 = sec^2 alpha $ #noindent;或 $ 1 + tan^2 alpha = s e c^2 alpha $ #noindent;把 $sin^2 alpha + cos^2 alpha = 1$ 的两边同除以 $sin^2 alpha$,$alpha eq.not k pi quad\(k in bb(Z)\)$⁠，便得到 $ 1 + cot^2 alpha = csc^2 alpha $

]
上面八个公式，除去使公式中的函数不存在的那些 $alpha$ 的值以外，对于 $alpha$ 其它的值都成立，因此，把它们叫做三角函数的基本恒等式．

利用这些恒等式，可以进行同角的三角函数式的恒等变换，使较繁的式子化为简单的形式；或利用它们，根据给出的一个角的某一个三角函数值，推导出该角的其余三角函数值．

#example[
化简 $sin^3 alpha\(1 + cot alpha\)+ cos^3 alpha\(1 + tan alpha\)$

]
#solution[
$ upright("原式") & = sin^3 alpha (1 + frac(cos alpha, sin alpha)) + cos^3 alpha (1 + frac(sin alpha, cos alpha))\
 & = sin^3 alpha frac(sin alpha + cos alpha, sin alpha) + cos^3 alpha frac(cos alpha + sin alpha, cos alpha)\
 & = sin^2 alpha\(sin alpha + cos alpha\)+ cos^2 alpha\(cos alpha + sin alpha\)\
 & =\(sin alpha + cos alpha\)(sin^2 alpha + cos^2 alpha)\
 & = sin alpha + cos alpha $

]
#example[
当 $alpha = 24 degree 30'$ 时, 计算 $frac(2 sin alpha cos alpha - cos alpha, 1 + sin^2 alpha - cos^2 alpha - sin alpha)$ 的值．

]
#solution[
如果直接把 $alpha$ 的值代入，查表计算将很烦琐，因此最好先把式子进行化简．$ upright("原式") & = frac(cos alpha\(2 sin alpha - 1\), 1 + sin^2 alpha -\(1 - sin^2 alpha\)- sin alpha)\
 & = frac(cos alpha\(2 sin alpha - 1\), 2 sin^2 alpha - sin alpha)\
 & = frac(cos alpha\(2 sin alpha - 1\), sin alpha\(2 sin alpha - 1\))\
 & = frac(cos alpha, sin alpha) = cot alpha $ #noindent;最后把 $alpha$ 值代入，查表可得：$ cot 24 degree 30' = 2.194 $

]
#example[
化简 $sqrt(1 - sin^2 alpha) dot.op tan alpha$

]
#solution[
$ upright("原式") & = sqrt(cos^2 alpha) dot.op tan alpha\
 & =\|cos alpha\|dot.op tan alpha\
 & = display(cases(cos alpha dot.op tan alpha = sin alpha\, & quad - pi / 2 + 2 k pi < alpha < pi / 2 + 2 k pi, - cos alpha dot.op tan alpha = - sin alpha\, & quad pi / 2 + 2 k pi < alpha < frac(3 pi, 2) + 2 k pi)) $

]
#exercise[
证明恒等式：

+ #lead-list(none, 2)[
  + $\(tan^2 alpha - sin^2 alpha\)cot^2 alpha = sin^2 alpha$

  + $frac(1, 1 - cos alpha) dot.op frac(1, csc alpha + 1) + frac(1, 1 + cos alpha) dot.op frac(1, csc alpha - 1) = sec^2 alpha$
  ]

+ #lead-list(none, 2)[
  + $frac(tan alpha - sin alpha, tan alpha) = 1 - cos alpha$

  + $frac(tan alpha + cot alpha - 2, tan alpha + cot alpha + 2) = (frac(tan alpha - 1, tan alpha + 1))^2$
  ]

+ #lead-list(none, 2)[
  + $frac(tan alpha + tan beta, cot alpha + cot beta) = tan alpha tan beta$

  + $frac(cos alpha + cot alpha, cot alpha) - 1 = tan alpha cos alpha$
  ]

+ #lead-list(none, 2)[
  + $frac(1 + tan^4 alpha, tan^2 alpha + cot^2 alpha) = tan^2 alpha$

  + $frac(1, sin^2 alpha - cos^2 alpha) = frac(1 + cot^2 alpha, 1 - cot^2 alpha)$
  ]

+ #lead-list(none, 2)[
  + $frac(\(cos alpha + sin alpha\)^2 - 1, cot alpha - sin alpha cos alpha) = 2 tan^2 alpha$

  + $sqrt(2 tan alpha + sec^2 alpha) = 1 + tan alpha$,（$alpha$ 是正锐角）
  ]

化简下列各式：

+ #lead-list(none, 2)[
  + $sqrt(1 - cos^2 alpha) dot.op cot alpha$

  + $sqrt(frac(1 - cos alpha, 1 + cos alpha))$

  + $sqrt(sin^2 alpha\(1 + cot alpha\)+ cos^2 alpha\(1 + tan alpha\))$
  ]

+ 已知 $sin alpha + cos alpha = sqrt(2)$⁠，求：$ sin alpha cos alpha\,#h(2em) sin^3 alpha + cos^3 alpha\,#h(2em) sin^4 alpha + cos^4 alpha $

+ 把 $sin^4 alpha - sin^2 alpha + cos^2 alpha$ 化为只含 $cos alpha$ 的式子．

]
=== 根据一个三角函数计算其余各三角函数
根据前面中所推导出的三角函数间的基本公式，可以从一个已知的三角函数值，计算其余的三角函数值．

#example[
已知 $cos alpha = 12 / 13$⁠，求 $alpha$ 角的其余的三角函数．

]
#solution[
因为 $cos alpha = 12 / 13 > 0$⁠，所以 $alpha$ 角的终边在第一象限或在第四象限．

从公式 $sec alpha = frac(1, cos alpha)$⁠，有 $sec alpha = frac(1, 12 / 13) = 13 / 12$⁠．

其次，从公式 $sin^2 alpha + cos^2 alpha = 1$ 得 $ sin alpha = plus.minus sqrt(1 - (12 / 13)^2) = plus.minus 5 / 13 $ #noindent;因为 $csc alpha = frac(1, sin alpha)$⁠，所以 $ csc alpha = frac(1, plus.minus 5 / 13) = plus.minus 13 / 5 $ #noindent;从公式 $tan alpha = frac(sin alpha, cos alpha)$ 求得 $ tan alpha = frac(plus.minus 5 / 13, 12 / 13) = plus.minus 5 / 12 $ #noindent;最后 $ cot alpha = frac(1, tan alpha) = plus.minus 12 / 5 $

]
#example[
已知 $sin alpha = 3 / 5$⁠，求 $alpha$ 角的其余各三角函数值．

]
#solution[
因为 $sin alpha = 3 / 5 > 0$⁠，所以 $alpha$ 角是第一象限角或第二象限角．$ csc alpha & = frac(1, sin alpha) = 5 / 3\
cos alpha & = plus.minus sqrt(1 - sin^2 alpha) = plus.minus sqrt(1 - (3 / 5)^2) = plus.minus 4 / 5\
sec alpha & = frac(1, cos alpha) = plus.minus 5 / 4\
tan alpha & = frac(sin alpha, cos alpha) = frac(3 / 5, plus.minus 4 / 5) = plus.minus 3 / 4\
cot alpha & = frac(1, tan alpha) = plus.minus 4 / 3 $

]
#example[
已知 $tan phi.alt = 7 / 8$, $pi < phi.alt < frac(3 pi, 2)$⁠，求 $phi.alt$ 角的其余三角函数值，准确到0.01．

]
#solution[
$cot phi.alt = frac(1, tan phi.alt) = 8 / 7 approx 1.14$

$because quad phi.alt$ 是第三象限角，$therefore quad sec phi.alt < 0$

因此：$ sec phi.alt & = - sqrt(1 + (7 / 8)^2) approx - 1.33\
cos phi.alt & = - frac(1, sqrt(1 + (7 / 8)^2)) approx - 1 / 1.33 approx - 0.75\
sin phi.alt & = tan phi.alt dot.op cos phi.alt approx 7 / 8\(- 0.753\)approx - 0.66\
csc phi.alt & = - 1 / 0.658 approx - 1.52 $

]
#example[
已知 $cot alpha = m$⁠，$- pi / 2 < alpha < 0$⁠，求 $alpha$ 角的其余各三角函数值．

]
#solution[
因为 $- pi / 2 < alpha < 0$⁠，所以 $cot alpha = m eq.not 0$⁠，$csc alpha < 0$⁠，于是 $ tan alpha & = 1 / m\
csc alpha & = - sqrt(1 + cot^2 alpha) = - sqrt(1 + m^2)\
sin alpha & = - 1 / sqrt(1 + m^2)\
cos alpha & = cot alpha dot.op sin alpha = m (- 1 / sqrt(1 + m^2)) = - m / sqrt(1 + m^2)\
sec alpha & = frac(1, cos alpha) = - sqrt(1 + m^2) / m $

]
#example[
已知 $tan alpha = - 3$⁠，求：

+ $frac(sin alpha - cos alpha, cos alpha + sin alpha)$ 的值；

+ $frac(1, sin^2 alpha - cos^2 alpha)$ 的值．

]
#solution[
+ 因为 $tan alpha = - 3$⁠，所以 $alpha eq.not pi / 2 + k pi$⁠，即 $cos alpha eq.not 0$⁠．分子、分母分别除以 $cos alpha eq.not 0$⁠，则 $ frac(sin alpha - cos alpha, cos alpha + sin alpha) = frac(tan alpha - 1, 1 + tan alpha) = frac(- 3 - 1, 1 +\(- 3\)) = 2 $

+ $frac(1, sin^2 alpha - cos^2 alpha) = frac(sin^2 alpha + cos^2 alpha, sin^2 alpha - cos^2 alpha)$

  分子、分母分别除以 $cos^2 alpha eq.not 0$⁠，则 $ frac(1, sin^2 alpha - cos^2 alpha) = frac(tan^2 alpha + 1, tan^2 alpha - 1) = frac(\(- 3\)^2 + 1, \(- 3\)^2 - 1) = 5 / 4 $

]
#rmk[
+ 在包含有函数 $tan alpha$ 或 $sec alpha$ 的一切公式里，要除去 $alpha = pi / 2 + k pi$ 的诸值，其中 $k in bb(Z)$⁠；在包含有 $cot alpha$ 或 $csc alpha$ 的一切公式里，要除去 $alpha = k pi$, 其中 $k in bb(Z)$⁠．

+ 在包含有根号的那些公式里，一般的情形在根号之前应置双号“$plus.minus$⁠”，若已给出 $alpha$ 角终边所在象限，则可选择确定的符号，根号前面符号的选择，依赖于 $alpha$ 角终边所在的象限所求三角函数的符号．

+ 含有 $sin alpha$ 和 $cos alpha$ 的有理式，当分子和分母都是关于 $sin alpha$ 和 $cos alpha$ 的同次的齐次多项式时，可以化为只含有 $tan alpha$ 的有理式．

]
#heading(level: 2, numbering: none, supplement: [toc-sub])[习题6.2]

+ 已知 $sin alpha = - 24 / 25$⁠，计算 $cos alpha\,tan alpha\,cot alpha$⁠．

+ 已知 $cos alpha = - 9 / 41$⁠，$90 degree < alpha < 180 degree$⁠，计算 $sin alpha\,tan alpha\,cot alpha\,sec alpha\,csc alpha$⁠．

+ 已知 $cot alpha = 3 41 / 60$, $pi < alpha < frac(3 pi, 2)$⁠，计算 $cos alpha$⁠．

+ 已知 $tan alpha = 1.4$, $pi < alpha < frac(3 pi, 2)$⁠，计算 $alpha$ 角的其它三角函数值（准确到0.01）．

+ 已知 $cot alpha = - 52 / 173$ 和 $0 degree < alpha < 180 degree$⁠，计算 $tan alpha - sec alpha$ 的值．

+ 已知 $tan alpha = - 1.5$⁠，$100 degree < alpha < 200 degree$⁠，计算 $cos alpha$⁠．

+ 已知 $sin alpha = a / sqrt(a^2 + b^2)$⁠，计算 $tan alpha - cot alpha$ 的值．

+ 已知 $cot alpha = 3$, $pi < alpha < frac(3 pi, 2)$⁠，求积 $sin alpha cos alpha$⁠．

+ #lead-list(none, 2)[
  + 设 $tan alpha = 2$⁠，计算 $frac(sin alpha + cos alpha, sin alpha - cos alpha)$⁠；

  + 设 $cot alpha = - 2$⁠，计算 $frac(1, sin^2 alpha - sin alpha cos alpha + cos^2 alpha)$⁠．
  ]

+ #lead-list(none, 2)[
  + 若 $0 < alpha < pi$⁠，化简 $sqrt(frac(1 + sin alpha, 1 - sin alpha)) - sqrt(frac(1 - sin alpha, 1 + sin alpha))$⁠；

  + 若 $frac(3 pi, 2) < alpha < 2 pi$⁠，化简 $sqrt(frac(1 - cos alpha, 1 + cos alpha)) + sqrt(frac(1 + cos alpha, 1 - cos alpha))$⁠．
  ]

#heading(level: 2, numbering: none, outlined: true)[复习题六]

+ $cos 1 degree$ 和 $cos 1$ 哪个大？又 $tan 1 degree$ 和 $tan 1$ 哪个大？

+ 圆的半径等于240mm, 求这个圆上长500mm的弧所对圆心角的度数．

+ 直径是20cm的滑轮，每秒旋转45弧度，求轮周上一点在5秒钟内所转过的弧长．

+ 已知一扇形的弧含有 $45 degree$, 半径等于20cm, 求扇形的周长和面积（精确到1cm）．

+ 在 $0 degree$ 到 $360 degree$ 的范围内，找出与下列各角终边相同的角，并判定它们是哪个象限的角：$ - 54 degree 18'\,#h(2em) 395 degree 8'\,#h(2em) - 1190 degree 30'\,#h(2em) 1563 degree $

+ 试说明 $k dot.op 360 degree + 130 degree$ 与 $k dot.op 360 degree - 230 degree$, ($k in bb(Z)$) 为同边角．

+ 若一四边形内角的比为 $5 : 9 : 10 : 12$, 求各角的度数及弧度数．

+ 已知角 $alpha$ 的终边上一点 $P\(- 2\,2\)$, 求角 $alpha$ 的各三角函数值，如果已知终边上一点 $Q\(- 1\,1\)$ 时，$alpha$ 的各三角函数值有变化吗？

+ 设 $A$ 为三角形的一个内角，下列函数中哪些可以是负值，哪些只能是正值．$ sin A\,#h(2em) cos A\,#h(2em) tan A\,#h(2em) cot A / 2 $

+ #block(sticky: true)[确定下列各函数的符号：]

  #cols(2)[
  + $sin 1000 degree$

  + $cos\(- 2200 degree\)$

  + $tan (- 3 / 11 pi)$

  + $cot 10$

  ]

+ #block(sticky: true)[求下列各函数的定义域：]

  #cols(2)[
  + $y = sqrt(- frac(sin x, cos x))$

  + $y = sqrt(- sin x) + sqrt(cos x)$

  + $y = sqrt(tan x dot.op cos x)$

  ]

+ 求下列各式的值：

  + $csc 180 degree + sin 60 degree + tan 45 degree - cos 230 degree + sin 30 degree + cot 90 degree$

  + $4 sin pi - 2 cos frac(3 pi, 2) + 3 sin 2 pi - tan pi$

+ #block(sticky: true)[下面函数哪些是偶函数，哪些是奇函数，哪些都不是？]

  #cols(2)[
  + $y = tan 2 x$

  + $y =\|tan x\|$

  + $y = sin\(tan x\)$

  + $y = cos\(tan x\)$

  + $y = x tan x$

  + $f\(x\)= frac(tan x + 1, tan x - 1)$

  + $g\(x\)= tan x dot.op sin x$

  + $h\(alpha\)= sin alpha dot.op cot alpha$

  + $F\(y\)= tan y dot.op cot^2 y$

  ]

+ 求下列各式的值：

  + $5 sin 90 degree + 2 cos 0 degree - 2 sin 270 degree + 10 cos 180 degree$

  + $cos pi / 8 - sin^2 pi / 4 cos pi - 1 / 8 tan^2 pi / 3 sin frac(3 pi, 2) + cos 0$

  + $8 sin 510 degree dot.op cos (- 300 degree) dot.op tan 240 degree$

  + $10 cot 315 degree dot.op sin (- 150 degree) dot.op cos 225 degree$,

  + $frac(cos (- 120 degree), cos 30 degree) + frac(tan 210 degree sin 315 degree, cos 180 degree)$

  + $sin (450 degree - alpha) - sin (180 degree - alpha) + cos (450 degree - alpha) + cos (alpha - 180 degree)$

  + $\[tan^2\(pi + alpha\)- cot^2\(pi - alpha\)\]sin\(2 pi - alpha\)dot.op cos\(alpha - 2 pi\)$

  + $sqrt(sin^2 30 degree + sin^2 35 degree - 2 sin 30 degree + cos^2 35 degree)$

+ 证明对于任何角 $alpha$⁠，下面各等式都成立：

  + $frac(sin\(2 pi - alpha\)tan (pi / 2 + alpha) cot (frac(3 pi, 2) - alpha), cos\(2 pi + alpha\)tan\(pi + alpha\)) = 1$

  + $frac(sin^2\(pi + alpha\), sin^2 (frac(3 pi, 2) + alpha)) + frac(tan^2 (frac(3 pi, 2) + alpha), cot^2\(pi + alpha\)) = frac(1, cos^2\(alpha - 2 pi\))$

+ 已知三角函数值求角：

  + $sin x = 1 / 2\,#h(2em) (0 < x < pi / 2)$

  + $cos x = - 1 / 2\,#h(2em) (pi / 2 < x < pi)$

  + $tan x = - 1\,#h(2em) (pi / 2 < x < pi)$

  + $cot x + sqrt(3) = 0\,#h(2em) (frac(3 pi, 2) < x < 2 pi)$

  + $2 sin x - sqrt(2) = 0\,#h(2em)\(0 < x < 2 pi\)$

  + $3 tan x + sqrt(3) = 0\,#h(2em)\(0 < x < 2 pi\)$

  + $2 cos x - sqrt(3) = 0\,#h(2em)\(0 < x < 2 pi\)$

  + $sqrt(3) cot x - 1 = 0\,#h(2em)\(0 < x < 2 pi\)$

+ 证明下列各恒等式：

  + $sin^4 alpha + cos^2 alpha + sin^2 alpha cos^2 alpha = 1$

  + $sin^6 alpha + cos^6 alpha = 1 - 3 sin^2 alpha cos^2 alpha$

  + $\(csc alpha - sin alpha\)\(sec alpha - cos alpha\)\(tan alpha + cot alpha\)= 1$

  + $\(1 - cot alpha + csc alpha\)\(1 - tan alpha + sec alpha\)= 2$

  + $frac(cos alpha csc alpha - sin alpha sec alpha, cos alpha + sin alpha) = csc alpha - sec alpha$

  + $sin^2 alpha + sin^2 beta - sin^2 alpha sin^2 beta + cos^2 alpha cos^2 beta = 1$

  + $frac(sin\(pi - alpha\)sin (frac(3 pi, 2) - alpha) tan (pi / 2 - alpha), sin (pi / 2 + alpha) tan (frac(3 pi, 2) + alpha) tan\(2 pi - alpha\)) = - cos alpha$

  + $frac(sin^2\(pi + alpha\), sin^2 (frac(3 pi, 2) + alpha)) + frac(tan^2 (frac(3 pi, 2) + alpha), cot^2\(pi + alpha\)) = sec^2\(alpha - 2 pi\)$

  + $\(a sin alpha + b cos alpha\)^2 +\(a cos alpha - b sin alpha\)^2 = a^2 + b^2$

  + $tan alpha (1 - cot^2 alpha) + cot alpha (1 - tan^2 alpha) = 0$

  + $frac(\(1 - sin alpha - cos alpha\)\(1 - sin alpha + cos alpha\), sin^2 alpha - sin alpha) = 2$

  + $frac(1 - 2 sin alpha cos alpha, cos^2 alpha - sin^2 alpha) = frac(cos^2 alpha - sin^2 alpha, 1 + 2 sin alpha cos alpha)$

+ #lead-list(none, 2)[
  + 已知 $sin theta = 15 / 17\,90 degree < theta < 180 degree$, 求 $cos theta\,tan theta$ 和 $cot theta$⁠．

  + 已知 $cot theta = - sqrt(3) / 3$, $theta$ 在第四象限, 求 $sin theta$ 和 $cos theta$⁠．
  ]

+ $x$ 取 $0 degree$ 到 $720 degree$ 之间的哪些值时，下面等式成立：$ sqrt(1 - sin^2 x / 2) = cos x / 2 $

+ 已知 $sin alpha cos alpha = 60 / 169$⁠，并且 $pi / 4 < alpha < pi / 2$⁠，求 $sin alpha$ 和 $cos alpha$ 的值．

+ 已知 $sin\(180 degree + alpha\)= - 1 / 3$⁠，且 $0 degree < alpha < 90 degree$⁠，计算 $cot\(alpha - 180 degree\)$ 的值．

+ 已知 $tan x = - 2$⁠，求 $cot\(3 pi - x\)$, $cos\(x - 4 pi\)$ 的值．

+ 已知 $tan A = frac(2 m n, m^2 - n^2) thick\(0 degree < A < 180 degree\)$⁠，求 $sin A$⁠．
