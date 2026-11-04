// 由 typst/tools/tex2typ.py 从 math2/6.tex 转换而来，已人工校对的部分以本文件为准。
#import "../common/template.typ": *
#import "figs.typ": fig

= 三角比与角边关系
人们为了要确定空间各点之间的相互位置，就得做一番测量，测量是几何学的起源，也是几何学最直接的实践．

测量学的最基本原理，就是相似形的性质及三角形的边角关系．例如，我们在第三章末用相似形性质测量两点间的距离，物体的高度、测绘具有多边形形状的地段的平面图等．我们知道，在两个直角三角形中，只要有一个锐角对应相等，它们就相似了，这就是说，一个直角三角形的各边之间的比是被它的一个锐角的大小所决定，例如在图6.1中，一些含有 $30 degree$ 角的直角三角形，$30 degree$ 角所对的直角边与斜边的比都是1:2.

#figure([#fig("6-01");

  ],
  caption: [
  ]
)

这一章，我们首先向同学介绍的就是直角三角形中，边与边的比与它所含锐角之间的关系．这些边与边的比值叫做#strong[锐角三角比]，它们是进行测量计算时的常用数据，也是从数量方面研究几何学的基本工具．

== 锐角三角比
=== 定义
#align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, figure([#fig("6-02");], caption: []), figure([#fig("6-03");], caption: [])));

取任意锐角 $angle X A Y$,在边 $A Y$ 上任取一点 $B$,作 $overline(B C) tack.t A X$ 于 $C$\(图6.2).在直角 $triangle.stroked.t A B C$ 中，设 $angle A$、$angle B$、$angle C$ 的对边分别用 $a$、$b$、$c$ 表示，对锐角 $A$ 来说，$a$ 叫做 $angle A$ 的#strong[对边]，$b$ 叫做 $angle A$ 的相邻的直角边（简称#strong[邻边]）我们定义：

+ $angle A$ 的对边与斜边的比值，叫做 $angle A$ 的正弦，用符号 $sin A$ 来表示，即 $ sin A = frac(angle A upright("的对边"), upright("斜边")) = a / c $

+ $angle A$ 的邻边与斜边的比值，叫做 $angle A$ 的余弦．用符号 $cos A$ 来表示，即 $ cos A = frac(angle A upright("的邻边"), upright("斜边")) = b / c $

+ $angle A$ 的对边与邻边的比值，叫做 $angle A$ 的正切，用符号 $tan A$ 来表示，即 $ tan A = frac(angle A upright("的对边"), angle A upright("的邻边")) = a / b $

+ $angle A$ 的邻边与对边的比值，叫做 $angle A$ 的余切，用符号 $cot A$ 来表示，即 $ cot A = frac(angle A upright("的邻边"), angle A upright("的对边")) = b / a $

我们知道，只要 $angle A$ 的大小定了，不管 $B$ 点在边 $A Y$ 上的位置如何（图6.3），以上的四个比值都是不变的，只有当 $angle A$ 变化时，这些比值才随着变化．这四个比都叫做锐角 $A$ 的三角比．

有了以上定义，我们就在直角三角形的角与边之间建立了联系，知道了角的大小，相应的四个三角比就被唯一地确定了．反过来，如果我们知道了一个角的四个三角比中的任何一个，我们也就能确定这个角的大小．

#example[
在直角 $triangle.stroked.t A B C$ 中，$angle C = 90 degree$, $overline(B C) = 3$cm, $overline(A C) = 4$cm,求 $angle A$ 的4个三角比（图6.4）．

]
#align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, figure([#fig("6-04");], caption: []), figure([#fig("6-05");], caption: [])));

#solution[
根据勾股定理，$ overline(A B) = sqrt(overline(B C)^2 + overline(A C)^2) = sqrt(3^2 + 4^2) = 5 upright(\(c m\)) $ #noindent;根据各三角比的定义有，$ sin A = overline(B C) / overline(A B) = 3 / 5\, & #h(2em) cos A = overline(A C) / overline(A B) = 4 / 5\
tan A = overline(B C) / overline(A C) = 3 / 4\, & #h(2em) cot A = overline(A C) / overline(B C) = 4 / 3 $

]
#example[
求 $40 degree$ 角的四个三角比．

]
#solution[
用量角器画 $angle X A Y = 40 degree$\(图6.5).在边 $A Y$ 上截取 $overline(A B) = 3$cm（为计算方便，我们尽量取整数），作 $overline(B C) tack.t A X$ 于 $C$ 点，量得 $overline(B C) = 1.8$cm, $overline(A C) = 2.1$cm,在直角 $triangle.stroked.t A B C$ 中，根据三角比的定义可得：$ sin 40 degree = 1.8 / 3 approx 0.6\,#h(2em) cos 40 degree = 2.1 / 3 approx 0.7 $ #noindent;$ tan 40 degree = 1.8 / 2.1 approx 0.8\,#h(2em) cot 40 degree = 2.1 / 1.8 approx 1.1 $

]
#example[
已知 $tan A = 1 / 2$,求 $angle A$.

]
#figure([#fig("6-06");

  ],
  caption: [
  ]
)

#solution[
作一个直角 $triangle.stroked.t A B C$,使直角边 $overline(A C) = 2$ 个单位长，$overline(C B) = 1$ 个单位长（图6.6），于是，$ tan A = 1 / 2 $ #noindent;用量角器量 $angle A$,得之 $angle A approx 26 degree$．

]
#exercise[
+ 已知直角 $triangle.stroked.t A B C$, $angle C = 90 degree$, $overline(B C) = 5$ 个单位长，$overline(A C) = 12$ 个单位长，求 $angle A$ 与 $angle B$ 的四个三角比．

+ 用作图法求出表中各角的四个三角比的近似值，填入表中：

  #align(center)[
  #table(
    columns: (auto, auto, auto, auto, auto,),
    align: (center, center, center, center, center,),
    table.vline(x: 1),
    table.hline(),
    [$alpha$],
    [$20 degree$],
    [$40 degree$],
    [$50 degree$],
    [$80 degree$],
    table.hline(),
    [$sin alpha$],
    [],
    [],
    [],
    [],
    [$cos alpha$],
    [],
    [],
    [],
    [],
    [$tan alpha$],
    [],
    [],
    [],
    [],
    [$cot alpha$],
    [],
    [],
    [],
    [],
    table.hline(),
  );

  ]

+ 已知 $sin alpha = 3 / 4$，用作图法求 $angle alpha$.

+ 已知 $cos beta = 2 / 5$，用作图法求 $angle beta$.

+ 已知 $tan A = 3 / 5$,用作图法求 $angle A$.

]
=== $0 degree$ 到 $90 degree$ 角的三角比的变化
半径等于1个单位长的圆叫做#strong[单位圆]．下面我们利用单位圆来研究锐角三角比的变化规律：

#figure([#fig("6-07");

  ],
  caption: [
  ]
)

画单位圆 $dot.o O$\(图6.7),通过单位圆的圆心 $O$ 作互相垂直的两条直线，其中一条是水平的，另一条是铅直的，以 $O$ 为原点，单位圆的半径为长度单位，在两条直线上建立数轴，其中水平轴向右为正，铅直轴向上为正；水平轴用 $x$ 表示，又叫做 $x$ 轴，铅直的轴用 $y$ 表示，又叫做 $y$ 轴．以 $O$ 为顶点，$x$ 轴的正方向为一边，作 $angle A O P$ 等于已知角 $alpha$, $angle A O P$ 的两边分别与单位圆相交于 $A$、$P$ 两点，过 $P$ 点作 $overline(P M) tack.t O A$ 于 $M$ 点，

$because quad overline(O P) = 1$

$therefore quad sin alpha = overline(M P) / overline(O P) = overline(M P) upright("的量数")\,quad cos alpha = overline(O M) / overline(O P) = overline(O M) upright("的量数")$

这样，对于任一锐角 $alpha$,我们可直接用 $overline(M P)$ 和 $overline(O M)$ 的量数来分别表示 $sin alpha$, $cos alpha$ 的值．我们把 $overline(M P)$ 和 $overline(O M)$ 分别叫做角 $alpha$ 的#strong[正弦线]和#strong[余弦线]．下面我们用正弦线和余弦线来研究 $sin alpha$ 与 $cos alpha$ 的变化规律．

- 当 $alpha = 0 degree$ 时，$overline(M P) = 0$, $overline(O M) = 1$

- 当 $alpha = 90 degree$ 时，$overline(M P) = 1$, $overline(O M) = 0$

我们就说，$ sin 0 degree = 0\,#h(2em) cos 0 degree = 1\,#h(2em) sin 90 degree = 1\,#h(2em) cos 90 degree = 0 . $ #noindent;我们使角 $alpha$ 从 $0 degree$ 逐渐增加到 $90 degree$,于是从角 $alpha$ 的正弦线和余弦线的变化规律可以看到，#strong[当 $alpha$ 增大时，$sin alpha$ 随着增大，而 $cos alpha$ 随着减小；反之，当 $alpha$ 减小时，$sin alpha$ 随着减小，而 $cos alpha$ 随着增大．]

在图6.7中，过 $A$ 点作 $A A' tack.t O A$,与角 $alpha$ 的一边 $O P$ 相交于 $Q$ 点，于是，$ tan alpha = overline(A Q) / overline(O A) = overline(A Q) upright("的量数") $ #noindent;$overline(A Q)$ 叫做角 $alpha$ 的#strong[正切线]．

在图6.7中，过单位圆与 $y$ 轴的交点 $B$ 作 $B B' tack.t O B$,角 $alpha$ 的一边 $O P$ 与 $B B'$ 相交于 $T$ 点，于是，$ cot alpha = overline(B T) / overline(O B) = overline(B T) upright("的量数") $ #noindent;$overline(B T)$ 叫做角 $alpha$ 的#strong[余切线]．

下面我们用正切线和余切线来说明角 $alpha$ 的正切和余切随着角 $alpha$ 的变化规律．

- 当 $alpha = 0 degree$ 时，$overline(A Q) = 0$,边 $O P$ 与 $B B'$ 不相交，我们就说 $tan 0 degree = 0$, $cot 0 degree$ 不存在．

- 当 $alpha = 90 degree$ 时，$A Q$ 与 $O P$ 不相交，$overline(B T) = 0$,我们就说，$tan 90 degree$ 不存在，$cot 90 degree = 0$.

我们使角 $alpha$ 从 $0 degree$ 增加到 $90 degree$,于是从角 $alpha$ 的正切线和余切线的变化规律可以看到，#strong[当 $alpha$ 增大时，$tan alpha$ 也随着增大，而 $cot alpha$ 则随着减小．反之当 $alpha$ 减小时，$tan alpha$ 也随着减小，而 $cot alpha$ 则随着增大．]

#exercise[
+ 在横线上填入不等号（$alpha$、$beta$ 都是锐角）．

  + 当 $alpha > beta$ 时，$sin alpha underline(quad) sin beta$，$cos alpha underline(quad) cos beta$，$tan alpha underline(quad) tan beta$，$cot alpha underline(quad) cot beta$.

  + 当 $alpha < beta$ 时，$sin alpha underline(quad) sin beta$，$cos alpha underline(quad) cos beta$，$tan alpha underline(quad) tan beta$，$cot alpha underline(quad) cot beta$.

+ 指出下列差的符号：

  #cols(2)[
  + $sin 34 degree - sin 33 degree$

  + $sin 27 degree - sin 26 degree$

  + $cos 83 degree - cos 84 degree$

  + $cos 10 degree - cos 9 degree$

  + $tan 5 degree - tan 6 degree$

  + $cot 14 degree - cot 13 degree$

  + $tan 46 degree - tan 44 degree$

  + $cot 44 degree - cot 47 degree$

  ]

]
=== $30 degree$、$45 degree$、$60 degree$ 角的三角比
我们根据锐角三角比的定义和直角三角形中的一些边角特殊关系，可以计算出 $30 degree$、$45 degree$、$60 degree$ 角的三角比的精确值．

作 $triangle.stroked.t A B C$,使 $angle C = 90 degree$, $angle A = 30 degree$ (图6.8),那么 $angle B = 60 degree$,设 $overline(B C) = a$,则 $overline(A B) = 2 a$, $overline(A C) = sqrt(overline(A B)^2 - overline(B C)^2) = sqrt(\(2 a\)^2 - a^2) = sqrt(3) a$.由此得：$ sin 30 degree = frac(a, 2 a) = 1 / 2\, & #h(2em) sin 60 degree = frac(sqrt(3) a, 2 a) = sqrt(3) / 2\
cos 30 degree = frac(sqrt(3) a, 2 a) = sqrt(3) / 2\, & #h(2em) cos 60 degree = frac(a, 2 a) = 1 / 2 $ #noindent;$ tan 30 degree = frac(a, sqrt(3) a) = 1 / sqrt(3) = sqrt(3) / 3\, & #h(2em) tan 60 degree = frac(sqrt(3) a, a) = sqrt(3)\
cot 30 degree = frac(sqrt(3) a, a) = sqrt(3)\, & #h(2em) cot 60 degree = frac(a, sqrt(3) a) = 1 / sqrt(3) = sqrt(3) / 3 $

#align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, figure([#fig("6-08");], caption: []), figure([#fig("6-09");], caption: [])));

作 $triangle.stroked.t A B C$,使 $angle C = 90 degree$, $angle A = 45 degree$ (图6.9),那么，$angle B = 45 degree$,设 $overline(B C) = a$,则 $overline(A C) = a$, $overline(A B) = sqrt(a^2 + a^2) = sqrt(2) a$

由此得：$ sin 45 degree = frac(a, sqrt(2) a) = 1 / sqrt(2) = sqrt(2) / 2\,#h(2em) cos 45 degree = frac(a, sqrt(2) a) = 1 / sqrt(2) = sqrt(2) / 2 $ #noindent;$ tan 45 degree = a / a = 1\,#h(2em) cot 45 degree = a / a = 1 $ #noindent;为了便于记忆，我们把 $30 degree\,45 degree\,60 degree$ 的三角比列成表．

#align(center)[
#table(
  columns: (auto, auto, auto, auto,),
  align: (center, center, center, center,),
  table.vline(x: 1),
  table.hline(),
  [$alpha$],
  [$30 degree$],
  [$45 degree$],
  [$60 degree$],
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
#example[
计算 $4 cot 30 degree - 2 sin 60 degree + 2 cos 60 degree$

]
#solution[
$ 4 cot 30 degree - 2 sin 60 degree + 2 cos 60 degree = 4 times sqrt(3) - 2 times sqrt(3) / 2 + 2 times 1 / 2 = 3 sqrt(3) + 1 $

]
#example[
计算 $cos^2 30 degree + sin^2 45 degree - tan^2 45 degree$ 其中：$sin^2 alpha$、$cos^2 alpha$ $tan^2 alpha$、$cot^2 alpha$ 分别表示 $\(sin alpha\)^2$、$\(cos alpha\)^2$、$\(tan alpha\)^2$、$\(cot alpha\)^2$

]
#solution[
$ cos^2 30 degree + sin^2 45 degree - tan^2 45 degree = (sqrt(3) / 2)^2 + (sqrt(2) / 2)^2 - 1^2 = 3 / 4 + 2 / 4 - 1 = 1 / 4 $

]
#exercise[
求下列各式之值：

+ $sin^2 60 degree + cos^2 30 degree$

+ $sin^2 60 degree + cos^2 60 degree$

+ $sin^2 45 degree + cos^2 45 degree$

+ $2 sin 30 degree + 2 cos 60 degree + 4 tan 45 degree$

+ $5 tan 30 degree + cot 45 degree - 2 tan 45 degree + 2 cos 60 degree$

+ $frac(2 sin 30 degree, 2 cos 30 degree - 1)$

+ $frac(sin 60 degree - sin 30 degree, sin 60 degree + sin 30 degree)$

]
=== 三角比值表
在前面的内容中，我们讲的只是特殊角的三角比，为了应用方便，人们早已制定了任意锐角的三角比值表，下面就来介绍四位三角比值表的用法．

==== 正弦表，余弦表
在正弦、余弦表里左右各有一列排度数，左列上端和右列下端都有 $A$ 字，在左列 $A$ 的下面，由上到下排着度数，在右列 $A$ 的上面，由下到上排着度数，在顶行 $A$ 的右边，由左至右依次排着 $0'\,6'\,dots.h\,60'$,在表的顶上写着正弦表，说明查正弦时用左列 $A$ 下面的度数和顶行的分数，表的底下写着余弦表，说明查余弦时，用右列 $A$ 上的度数和底行的分数．例如要查 $26 degree 18'$ 的正弦，在表中左列 $A$ 的下面先找到 $26 degree$,顺着 $26 degree$ 所在的这一行往右，在顶行 $18'$ 所在的这一列里找到了一个数0.4431,就是 $26 degree 18'$ 的正弦，即 $sin 26 degree 18' = 0.4431$.换句话说左列 $A$ 下面的 $26 degree$ 所在的行和顶行 $18'$ 所在的列的交点处的0.4431,就是 $sin 26 degree 18'$.要查 $cos 27 degree 24'$,在表中右列 $A$ 的上面找到 $27 degree$,底行里找到 $24'$, $27 degree$ 所在的行和 $24'$ 所在的列的交点处的0.8878,就是 $cos 27 degree 24'$,即 $cos 27 degree 24' = 0.8878$.

==== 正切表、余切表
正切的查法和正弦相同，余切的查法和余弦相同，例如我们在正切表、余切表中可以查到：$ tan 54 degree 30' = 1.4019\,#h(2em) cot 4 degree 6' = 13.95 $

#exercise[
查表求下列各三角比：

+ $sin 14 degree\,quad sin 20 degree 24'\,quad sin 65 degree 30'\,quad sin 82 degree 12'$

+ $cos 7 degree\,quad cos 32 degree 6'\,quad cos 60 degree 54'\,quad cos 83 degree 18'$

+ $tan 18 degree\,quad tan 78 degree 36'\,quad tan 80 degree 24'\,quad tan 83 degree$

+ $cot 42 degree 42'\,quad cot 20 degree 48'\,quad cot 9 degree 36'\,quad cot 5 degree 30'$

]
在三角比值表中，最右边的三列是修正值，它是用来求在左边表里找不到的角的三角比，这三列的上端和下端都标有 $1'$、$2'$、$3'$,三列中的数是小数的简写，每一个数都代表一个小数，它的末位数相当于表中间同一行小数的末位数，$1'$、$2'$、$3'$ 各列中的各数，分别是它所在的行的角度分别相差 $1'$、$2'$、$3'$ 时的三角比的修正值，下面举例说明查法：

例如，要求 $sin 20 degree 19'$,先从表中查得 $sin 20 degree 18'$ 的值是0.3469,因为 $20 degree 19'$ 比 $20 degree 18'$ 大 $1'$,查修正值是0.0003.因为角度大，它的正弦值也大，所以 $sin 20 degree 19'$ 就比 $sin 20 degree 18'$ 大0.0003,因此，$sin 20 degree 19' = 0.3469 + 0.0003 = 0.3472$.要求 $sin 20 degree 46'$,先从表中查得 $sin 20 degree 48'$ 的值是0.3551, $20 degree 46'$ 比 $20 degree 48'$ 小 $2'$,查得 $2'$ 的修正值是0.0005,角度小，正弦值也小，所以 $sin 20 degree 46' = 0.3551 - 0.0005 = 0.3546$.要求 $cos 28 degree 26'$,先从表中查得 $cos 28 degree 24' = 0.8796$, $28 degree 26'$ 比 $28 degree 24'$ 大 $2'$,查表得修正值是0.0003,角大余弦值反而小，所以 $cos 28 degree 26' = 0.8796 - 0.0003 = 0.8793$.

正切的查法和正弦相同，余切的查法和余弦相同．

例如，我们可以求得 $ tan 69 degree 25' = 2.662\,#h(2em) cot 70 degree 45' = 0.3492 $

#exercise[
查表求下列各三角函数：

#cols(2)[
+ $sin 18 degree 19'\,quad sin 63 degree 40'$

+ $cos 65 degree 2'\,quad cos 10 degree 34'$

+ $tan 9 degree 19'\,quad tan 64 degree 10'$

+ $cot 25 degree 28'\,quad cot 10 degree 25'$

]
]
从三角比值表里不但可以查得任何锐角的三角比，反过来，也可以根据已知的三角比值查到未知的锐角．

#example[
已知 $sin x = 0.9966$,求锐角 $x$.

]
#solution[
在正弦表里找到0.9966,因为它是正弦的值，要用到左列的度和顶行的分，在0.9966这一行的左端是 $85 degree$,在0.9966的上端是 $18'$.所以 $sin 85 degree 18' = 0.9966$,因此 $x = 85 degree 18'$.

]
#example[
已知 $cos y = 0.9966$,求锐角 $y$.

]
#solution[
在表中找到0.9966,因为它是余弦的值，余弦要用到右列的度数和底行的分，在0.9966这一行的右端是 $4 degree$,在0.9966这一列的下端是 $42'$.

所以 $cos 4 degree 42' = 0.9966$,因此 $y = 4 degree 42'$.

]
#example[
$tan x = 14.30$, $cot y = 1.4715$,求 $x$、$y$.

]
#solution[
倒查正切表（查法和例6.6相同）可得：$x = 86 degree$.

倒查余切表（查法和例6.7相同）可得：$y = 34 degree 12'$.

]
由三角比值求角度，有时要用到修正值，用修正值时，必须注意到，对于正弦、正切的值越大，角度也越大；对于余弦、余切的值越大，角度反而越小，下面举例说明用修正值查法．

#example[
$sin x = 0.2493$,求 $x$.

]
#solution[
在正弦表里，和0.2493最接近的正弦值是0.2487,它是 $14 degree 24'$ 的正弦，$0.2493 - 0.2487 = 0.0006$,在 $14 degree$ 这一行里正弦值相差0.0006时，角度的修正值是 $2'$, $sin x$ 比 $sin 14 degree 24'$ 大0.0006, $x$ 就比 $14 degree 24'$ 大 $2'$,因此 $ x = 14 degree 24' + 2' = 14 degree 26' $

]
#example[
$cos y = 0.9841$,求 $y$.

]
#solution[
在余弦表中和0.9841最接近的余弦值是0.9842,它是 $10 degree 12'$ 的余弦，$0.9842 - 0.9841 = 0.0001$,在 $10 degree$ 这一行里余弦值相差0.0001时，角度的修正值是 $1'$ 或 $2'$, $cos y$ 比 $cos 10 degree 12'$ 小0.0001, $y$ 比 $10 degree 12'$ 大 $1'$ 或 $2'$,因此 $ y = 10 degree 12' + 1' = 10 degree 13' $ #noindent;或$ y = 10 degree 12' + 2' = 10 degree 14' $ #noindent;这里 $y$ 有两个答案，一个是不足近似值，一个过剩近似值．

]
#example[
$tan x = 1.3773$, $cot y = 0.1950$,求 $x$、$y$.

]
#solution[
倒查正切表，得 $x = 54 degree 1'$（查法和例6.9相同）．

倒查余切表，得 $y = 78 degree 58'$（查法和例6.10相同）．

]
#exercise[
由三角比值表求锐角 $x$:

+ $sin x = 0.9816\,quad sin x = 0.6639\,quad tan x = 9.595\,quad tan x = 0.1890$

+ $cos x = 0.8607\,quad cos x = 0.9893\,quad cot x = 2.106\,quad cot x = 67.40$

+ $sin x = 0.2476\,quad sin x = 0.9709\,quad cos x = 0.3372$

  $cos x = 0.4174\,quad tan x = 0.365\,quad cot x = 0.1614$

]
=== 互为余角的三角比间的关系
#figure([#fig("6-10");

  ],
  caption: [
  ]
)

在直角 $triangle.stroked.t A B C$ 中，如果 $angle C = 90 degree$\(图6.10),则 $ angle A + angle B = 90 degree\,#h(2em) angle B = 90 degree - angle A $ #noindent;由于 $angle A$ 的对边是 $angle B$ 的邻边，$angle B$ 的对边是 $angle A$ 的邻边，那么，根据三角比的定义，我们便得出 $angle A$ 和 $angle B$ 这两个互为余角的三角比之间有下面的关系：$ sin A = a / c = cos B = cos\(90 degree - A\)\, & #h(2em) cos A = b / c = sin B = sin\(90 degree - A\)\
tan A = a / b = cot B = cot\(90 degree - A\)\, & #h(2em) cot A = b / a = tan B = tan\(90 degree - A\) $

这就是说，#strong[互为余角的两个角中，任一角的正弦等于另一角的余弦；任一角的正切等于另一角的余切．]

有了这个关系，我们就可把任意大于 $45 degree$ 的锐角的三角比化为小于 $45 degree$ 的锐角的三角比．

#example[
把下面各角的三角比化为小于 $45 degree$ 的锐角的三角比．

#cols(2)[
+ $sin 75 degree$

+ $cos 62 degree 22'$

+ $tan 80 degree$

+ $cot 56 degree 18'$

]
]
#solution[
+ $sin 75 degree = cos\(90 degree - 75 degree\)= cos 15 degree$

+ $cos 62 degree 22' = sin\(90 degree - 62 degree 22'\)= sin 27 degree 38'$

+ $tan 80 degree = cot\(90 degree - 80 degree\)= cot 10 degree$

+ $cot 56 degree 18' = tan\(90 degree - 56 degree 18'\)= tan 33 degree 42'$

]
#example[
下列等式是否成立：

+ $sin\(60 degree + alpha\)= cos\(30 degree - alpha\)#h(2em)\(0 lt.eq alpha lt.eq 30 degree\)$

+ $sin\(45 degree + alpha\)= cos\(45 degree - alpha\)#h(2em)\(0 lt.eq alpha lt.eq 45 degree\)$

+ $tan\(50 degree + alpha\)= cot\(40 degree - alpha\)#h(2em)\(0 lt.eq alpha < 40 degree\)$

]
#solution[
由于 $ \(60 degree + alpha\)+\(30 degree - alpha\) & = 90 degree\
\(45 degree + alpha\)+\(45 degree - alpha\) & = 90 degree\
\(50 degree + alpha\)+\(40 degree - alpha\) & = 90 degree $

而 $alpha$ 角的取值范围使得各式中的三角比都有意义，所以根据互为余角的三角比之间的关系可知，各等式都成立．

]
#exercise[
+ 为什么三角比值表中，锐角 $alpha$ 的正弦和 $90 degree - alpha$ 角的余弦共用一个表．

+ 把下列各角的三角比化为小于 $45 degree$ 的锐角的三角比．

  #cols(2)[
  + $sin 73 degree\,#h(2em) sin 77 degree 18'$

  + $cos 57 degree\,#h(2em) cos 52 degree 38'$

  + $tan 78 degree\,#h(2em) tan 79 degree 5'$

  + $cot 48 degree\,#h(2em) cot 78 degree 31'$

  ]

+ 下列各式中的 $x$ 应为多少度？

  #cols(2)[
  + $sin 75 degree = cos x$

  + $cos 18 degree = sin x$

  + $tan 5 degree = cot x$

  + $cot 83 degree = tan x$

  ]

+ 下列等式是否成立（$x$、$alpha$ 的取值都使各三角比有意义）．

  #cols(2)[
  + $sin\(75 degree + alpha\)= cos\(15 degree - alpha\)$

  + $sin\(15 degree - alpha\)= sin\(30 degree + alpha\)$

  + $tan\(30 degree + x\)= cot\(60 degree - x\)$

  + $cot\(89 degree + alpha\)= tan\(1 degree - alpha\)$

  ]

]
=== 同一锐角的各三角比间的关系
#blk[定理][
同一锐角 $alpha$ 的四个三角比之间有下列关系：

+ $sin^2 alpha + cos^2 alpha = 1$

+ $tan alpha = frac(sin alpha, cos alpha)\,#h(2em) cot alpha = frac(cos alpha, sin alpha)$

+ $tan alpha dot.op cot alpha = 1$

]
#proof[
作直角 $triangle.stroked.t A B C$,使 $angle C = 90 degree$, $angle A = alpha$ (图6.11).

#figure([#fig("6-11");

  ],
  caption: [
  ]
)

+ $because quad a^2 + b^2 = c^2$

  $therefore quad (a / c)^2 + (b / c)^2 = 1$

  又 $because quad a / c = sin alpha\,quad b / c = cos alpha$，

  $therefore quad sin^2 alpha + cos^2 alpha = 1$，即：#strong[一锐角的正弦和余弦的平方和等于1.]该式也就是勾股定理的三角比的表示式．

+ $because quad tan alpha = a / b\,quad frac(sin alpha, cos alpha) = a / c / b / c = a / b$，

  $therefore quad tan alpha = frac(sin alpha, cos alpha)$

  又 $because quad cot alpha = b / a\,quad frac(cos alpha, sin alpha) = b / c / a / c = b / a$，

  $therefore quad cot alpha = frac(cos alpha, sin alpha)$

+ $because quad tan alpha = a / b\,quad cot alpha = b / a$

  $therefore quad tan alpha dot.op cot alpha = a / b dot.op b / a = 1$

]
上面的定理，表示了同一锐角的三角比之间的关系，我们可利用定理中的三个公式，由已知锐角的一个三角比，去计算这个角的其它的三个三角比；也可以利用它们来化简含有三角比的式子．

#example[
已知：$sin alpha = 3 / 5$,求 $alpha$ 角（$alpha$ 为锐角）的其它的三个三角比．

]
#solution[
从公式 $sin^2 alpha + cos^2 alpha = 1$ 可得 $ cos alpha = plus.minus sqrt(1 - sin^2 alpha) $ #noindent;由于锐角的三角比都是正数，所以根号前应取正号，把 $sin alpha = 3 / 5$ 代入上式，得 $ cos alpha = sqrt(1 - (3 / 5)^2) = sqrt(frac(25 - 9, 5^2)) = 4 / 5 $ #noindent;根据 $tan alpha = frac(sin alpha, cos alpha)$，可得 $ tan alpha = 3 / 5 / 4 / 5 = 3 / 4 $ #noindent;再根据 $tan alpha dot.op cot alpha = 1$，可得 $ cot alpha = 4 / 3 $

]
#example[
化简 $sin^2 54 degree + sin^2 36 degree - tan 45 degree$

]
#solution[
$ sin^2 54 degree + sin^2 36 degree - tan 45 degree & = cos^2\(90 degree - 54 degree\)+ sin^2 36 degree - tan 45 degree\
 & = cos^2 36 degree + sin^2 36 degree - 1\
 & = 1 - 1 = 0 $

]
#example[
化简 $frac(sqrt(1 - sin^2 alpha), sin alpha) dot.op tan alpha$

]
#solution[
$ frac(sqrt(1 - sin^2 alpha), sin alpha) dot.op tan alpha = frac(cos alpha, sin alpha) dot.op tan alpha = cot alpha dot.op tan alpha = 1 $

]
#example[
化简 $\(sin alpha + cos alpha\)^2 +\(sin alpha - cos alpha\)^2$

]
#solution[
$  & \(sin alpha + cos alpha\)^2 +\(sin alpha - cos alpha\)^2\
 & quad = sin^2 alpha + 2 sin alpha dot.op cos alpha + cos^2 alpha + sin^2 alpha - 2 sin alpha dot.op cos alpha + cos^2 alpha\
 & quad = 1 + 1 = 2 $

]
#exercise[
+ 证明 $sin^2 alpha + cos^2 alpha = 1$，$tan alpha = frac(sin alpha, cos alpha)$

+ 已知 $sin alpha = 5 / 13$，求 $cos alpha\,tan alpha\,cot alpha$

+ 已知 $cos alpha = 4 / 5$，求 $sin alpha\,tan alpha\,cot alpha$

+ 已知 $tan alpha = 3 / 4$，求 $sin alpha\,cos alpha$．

  提示：$tan^2 alpha = frac(sin^2 alpha, 1 - sin^2 alpha) = 9 / 16$，令 $sin alpha = x$，解方程．

+ 化简

  #cols(2)[
  + $frac(1 - sin^2 alpha, cos^2 alpha)$

  + $tan alpha dot.op cos alpha$

  + $frac(cos alpha, sqrt(1 - cos^2 alpha))$

  + $frac(sin^2 alpha, 1 + cos alpha)$

  + $frac(cos^2 alpha, 1 - sin alpha)$

  ]
  #block[
  #set enum(numbering: enum-at(2, none, start: 6))
  + $\(tan alpha + cot alpha\)^2 -\(tan alpha - cot alpha\)^2$
  ]

]
#heading(level: 2, numbering: none, supplement: [toc-sub])[习题6.1]

+ 在直角 $triangle.stroked.t A B C$ 中，$angle C = 90 degree$, $a = 3$, $b = 2$,求 $angle A$ 的四个三角比．

+ 在直角 $triangle.stroked.t A B C$ 中，$angle C = 90 degree$,$overline(A B) = 10$, $overline(B C) = 8$,求：$sin A$、$cos A$.

+ 在直角 $triangle.stroked.t A B C$ 中，$angle C = 90 degree$, $overline(C D)$ 为 $overline(A B)$ 边上的高，问图中哪些线段的比可以表示 $angle A$ 的正弦？哪些线段的比可以表示 $angle B$ 的正弦？

  #align(center)[
  #fig("6-12");

  #subcap[
  第3题

  ]
  ]

+ 判断下列等式是否正确：

  + $sin 35 degree 30' = cos 54 degree 30'$

  + $sin\(30 degree - alpha\)= cos\(60 degree + alpha\)$

  + $cos\(2 alpha + 14 degree\)= sin\(76 degree - 2 alpha\)$

+ 化简下列各式：

  + $sin^4 alpha + 2 sin^2 alpha cos^2 alpha + cos^4 alpha$

  + $sin^4 alpha - cos^4 alpha + cos^2 alpha$

  + $sin\(45 degree + alpha\)- cos\(45 degree - alpha\)$

  + $frac(1 - sin^2 alpha, 1 - cos^2 alpha)$

  + $frac(tan alpha + tan beta, cot alpha + cot beta)$

  + $sin\(90 degree - alpha\)dot.op cot\(90 degree - alpha\)$

+ 已知 $tan alpha = 2$,求 $tan\(90 degree - alpha\)$.

+ 已知 $sin A = 1 / 3$ 求 $cos A$, $tan A$.

+ 已知互为余角的两角的正切的和等于3,求两角正切的平方和．

+ 求下列各题中的未知锐角 $x$:

  #cols(2)[
  + $sin x = 1 / 2$

  + $cos x = sqrt(2) / 2$

  + $tan x = sqrt(3)$

  + $sin x = sqrt(3) / 2$

  + $cos x = 1 / 2$

  + $tan x = 1 / sqrt(3)$

  ]

+ 已知 $cos^2 x = 1 / 4$，求 $x$.

+ 已知 $cos^2 x - sin^2 x = 1 / 2$,求 $x$.

+ 回答下列问题：

  + 当 $0 degree lt.eq alpha lt.eq 90 degree$ 时，$sin alpha$ 的最大值是多少？最小值是多少？

  + 当 $0 degree lt.eq alpha lt.eq 90 degree$ 时，$cos alpha$ 的最大值是多少？最小值是多少？

+ 当 $0 degree lt.eq alpha lt.eq 45 degree$, $alpha = 45 degree$, $45 degree < alpha lt.eq 90 degree$ 时，分别比较 $sin alpha$ 与 $cos alpha$ 的大小．

== 解直角三角形
=== 直角三角形中的边角关系
我们把学过的直角三角形中的边角基本关系总结如下：

#figure([#fig("6-13");

  ],
  caption: [
  ]
)

已知 $triangle.stroked.t A B C$, $angle C = 90 degree$ (图6.12).

+ 勾股定理：$a^2 + b^2 = c^2$

+ 两锐角互余：$angle A + angle B = 90 degree$

+ 四个三角比：$ sin A = frac(angle A upright("的对边"), angle A upright("斜边"))\,#h(2em) cos A = frac(angle A upright("的邻边"), angle A upright("斜边")) $ #noindent;$ tan A = frac(angle A upright("的对边"), angle A upright("的邻边"))\,#h(2em) cot A = frac(angle A upright("的邻边"), angle A upright("的对边")) $

为了应用方便，我们把3中的四个公式写成下面的形式：$ angle A upright("的对边") = upright("斜边") times sin A\,#h(2em) angle A upright("的邻边") = upright("斜边") times cos A $ #noindent;$ angle A upright("的对边") = upright("邻边") times tan A\,#h(2em) angle A upright("的邻边") = upright("对边") times cot A $

改用语言叙述，就是：

#blk[][
在直角三角形中：

+ 一条直角边等于斜边乘上这条直角边所对锐角的正弦．

+ 一条直角边等于斜边乘上这条直角边相邻锐角的余弦．

+ 一条直角边等于另一条直角边乘上这条直角边所对锐角的正切．

+ 一条直角边等于另一条直角边乘上这条直角边相邻锐角的余切．

]
#exercise[
+ 在直角 $triangle.stroked.t A B C$ 中，$angle C = 90 degree$,求证：$ overline(A B) = frac(overline(B C), sin A)\,#h(2em) overline(A B) = frac(overline(A C), cos A) $ #noindent;并把这两个式子用语言叙述出来．

+ 在直角 $triangle.stroked.t A B C$ 中，$angle C = 90 degree$,求证：

  + $sin A = cos B\,#h(2em) sin B = cos A$

  + $tan A = cot B\,#h(2em) cot A = tan B$

]
=== 解直角三角形
根据三角形的某些已知元素求出它的未知元素，这种过程叫做#strong[解三角形]．在直角三角形中，直角总是已知的．除直角外，只要再知道两个元素，其中至少有一边，就可以求出直角三角形的其它各元素．因此，解直角三角形，只有下面四种情况：

+ 已知斜边与一锐角，

+ 已知一条直角边与一锐角；

+ 已知斜边与一条直角边；

+ 已知两条直角边．

上述四种情况，都可用前面中所列出的关系式，并利用三角比值表来求解．

#example[
已知 $c = 18$, $angle A = 62 degree 20'$ (图6.13),求：$angle B\,a\,b$

]
#solution[
$ angle B & = 90 degree - angle A = 90 degree - 62 degree 20' = 27 degree 40'\
a & = c sin A = 18 times sin 62 degree 20' = 18 times 0.8857 approx 15.9\
b & = c cos A = 18 times cos 62 degree 20' = 18 times 0.4643 approx 8.36 $

]
#align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, figure([#fig("6-14");], caption: []), figure([#fig("6-15");], caption: [])));

#example[
已知 $c = 27.5$, $a = 22.6$,求 $b$、$angle A$、$angle B$ (图6.14).

]
#solution[
$ b = sqrt(c^2 - a^2) = sqrt(27.5^2 - 22.6^2) approx 15.7 $ #noindent;由于 $sin A = a / c = 22.6 / 27.5 approx 0.8218$，因此：$ angle A & approx 55 degree 16'\
angle B & = 90 degree - angle A = 90 degree - 55 degree 16' = 34 degree 44' $

]
#example[
已知 $a = 3.8$, $angle A = 42 degree$,求 $angle B$, $c$, $b$ (图6.15).

]
#solution[
$ B & = 90 degree - angle A = 48 degree\
b & = a cot A = 3.8 times cot 42 degree approx 4.22\
c & = frac(a, sin A) = frac(3.8, sin 42 degree) approx 5.68 $

]
#align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, figure([#fig("6-16");], caption: []), figure([#fig("6-17");], caption: [])));

#example[
已知 $a = 3$、$b = 4$,求 $c$、$angle A$、$angle B$ (图6.16)

]
#solution[
$ c = sqrt(a^2 + b^2) = sqrt(3^2 + 4^2) = 5 $ #noindent;由于 $tan A = 3 / 4 = 0.75$，因此：$ angle A approx 36 degree 52'\,#h(2em) angle B approx 90 degree - 36 degree 52' = 53 degree 8' $

]
#exercise[
+ 解下列直角三角形：

  + 已知 $c = 58.5\,quad angle A = 45 degree 13'$

  + 已知 $c = 14\,quad angle B = 62 degree$

  + 已知 $c = 28\,quad angle A = 34 degree$

  + 已知 $c = 195\,quad angle B = 78 degree 47'$

  + 已知 $a = 87\,quad angle A = 55 degree$

  + 已知 $b = 99\,quad angle B = 83 degree$

  + 已知 $c = 32\,quad a = 18$

  + 已知 $a = 14\,quad angle B = 78 degree$

  + 已知 $c = 79\,quad b = 56$

  + 已知 $a = 12.8\,quad b = 15.6$

  + 已知 $c = 73\,quad angle B = 66.2 degree$

  + 已知 $c = 350\,quad angle A = 3.8 degree$

+ 已知直角 $triangle.stroked.t A B C$, $angle C = 90 degree$, $angle A = alpha$ 和 $angle A$ 对的直角边是 $a$

  求证：直角 $triangle.stroked.t A B C$ 的面积 $S = a^2 / 2 tan alpha$

+ 已知直角三角形的一个锐角为 $alpha$,面积等于 $S$,求它的外接圆的面积．

]
=== 解直角三角形的应用
下面我们举例说明解直角三角形在实际中的应用．

#example[
如图6.17,已知在测点 $C$ 处，测得一铁塔顶端 $A$ 的仰角 $angle A C E = alpha$, $overline(B D) = a$,仪器的高度 $overline(C D) = b$,求铁塔的高 $overline(A B)$.

]
#solution[
$ overline(A B) = overline(A E) + overline(E B) $ #noindent;已知 $overline(E B) = overline(C D) = b$,在 $triangle.stroked.t A C E$ 中，$ overline(A E) = overline(C E) times tan alpha $ #noindent;又 $overline(C E) = overline(B D) = a$.

$therefore quad overline(A B) = a dot.op tan alpha + b$

]
#align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, figure([#image("/math2/fig/6-17.png", width: 100%);], caption: []), figure([#fig("6-18");], caption: [])));

#rmk[
如图6.18(1)连结测点 $A$ 和目的物 $B$,并且经过 $A$ 点画和 $A B$ 在同一铅直平面内的水平线 $A C$,如 $A B$ 在 $A C$ 的上方，那么 $angle B A C$ 叫做仰角；如图6.18(2),如果 $A B$ 在 $A C$ 的下方，那么 $angle C A B$ 叫做俯角．

]
#example[
如图6.19,已知 $C$、$D$ 两点与物体“$overline(A B)$”的底端 $B$ 点共线，且 $overline(C D) = a$,仪器 $overline(C C')$、$overline(D D')$ 的高都等于 $b$,在 $C'$、$D'$ 两点测得物体的顶端 $A$ 的仰角分别是 $alpha$、$beta$,求物体的高 $overline(A B)$

]
#align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, figure([#image("/math2/fig/6-19.png", width: 100%);], caption: []), figure([#fig("6-19");], caption: [])));

#solution[
在直角 $triangle.stroked.t A E C'$ 与直角 $triangle.stroked.t A E D'$ 中，

#numbered-align(($overline(C' E)$, $zws = overline(A E) times cot alpha$, true), ($overline(D' E)$, $zws = overline(A E) times cot beta$, true));

$\(6.2\)-\(6.1\)$ 得：$ overline(D' E) - overline(C' E) = overline(A E) times\(cot beta - cot alpha\) $ #noindent;即：$overline(C' D') = overline(A E) times\(cot beta - cot alpha\)$

已知 $overline(C' D') = overline(C D) = a$

$therefore quad overline(A E) = frac(a, cot beta - cot alpha)$

但 $overline(A B) = overline(A E) + overline(E B) = overline(A E) + b$,

$therefore quad overline(A B) = b + frac(a, cot beta - cot alpha)$

]
如果要测底部可以到达的物体的高度，可用例6.22所介绍的方法，如要测底部不能到达的物体的高度，可用例6.23所介绍的方法．

#example[
一条公路的路面升高 $h$ 与水平距离 $ell$ 的比值 $i$ 叫做路面的坡度．即 $i = h : ell$ (图6.20).已知某段公路，每前进100米就升高4米，求路面的坡度及路面对水平面的倾角 $alpha$.

]
#solution[
路面的坡度 $i = h / ell$，已知 $h = 4$ 米，$ell = 100$ 米，

$therefore quad i = 4 / 100 = 0.04$

从图6.20中的直角三角形可见，$h : ell$ 正好是角 $alpha$ 的正切，即：$i = tan alpha$,

$therefore quad tan alpha = 0.04$.倒查正切表得：$alpha = 2 degree 17'$.

答：路面的坡度是0.04,路面对水平面的倾角是 $2 degree 17'$.

]
#example[
已知一门式起重机（图6.21），机身高21米，吊杆长 $overline(A B) = 36$ 米，吊杆的倾角 $A$（即吊杆与水平线的夹角）可以从 $30 degree$ 转到 $80 degree$,求这门起重机工作时的最大高度和最大水平距离．

]
#figure([#scale(60%, reflow: true, image("/math2/fig/6-21.png"));

  ],
  caption: [
  ]
)

#solution[
当吊杆 $overline(A B)$ 的倾角 $A$ 达到最大限度 $80 degree$ 时，这时起重机吊的最高位置如图6. 21中 $overline(A B)$ 的位置．在直角 $triangle.stroked.t A B C$ 中，$angle A = 80 degree$, $overline(A B) = 36$ 米，因此：$ overline(B C) = overline(A B) times sin 80 degree = 36 times sin 80 degree = 36 times 0.9848 approx 35.45 upright(m) $ #noindent;$ upright("起重机的最大高度") = upright("机身高") + overline(B C) = 21 + 35.45 = 56.45 upright(m) $

当倾角 $A$ 达到最小角时，起吊的水平距离最远，这时，如图6.21中 $overline(A B')$ 的位置．在直角 $triangle.stroked.t A B' C'$ 中，$angle A = 30 degree$, $overline(A B') = 36$ 米．

因此：起重机起吊的最远水平距离 $ overline(A C') = overline(A B') times cos 30 degree = 36 times 0.8660 approx 31.18 upright(m) $

答：起重机工作的最大高度是56.45米，最远水平距离是31.18米．

]
#exercise[
+ 测量学校旗杆的高度．

+ 选择底部不能到达的建筑物或树木，测量它的高度．

+ 如图，要求河两岸 $B$、$C$ 两点间的距离，在 $B$ 点这一岸垂直于 $B C$ 方向上找一点 $A$,测出 $angle B A C = 58 degree 12'$, $overline(A B) = 25$ 米，求 $B$、$C$ 两点间的距离．

+ 如图，从山顶 $D$ 测得地平面上同一方向的两点 $A$ 和 $B$ 的俯角分别是 $18 degree$ 和 $23 degree$,已知 $overline(A B) = 140$ 米，求山高 $overline(C D)$（得数保留整数米）．

+ 已知传送带和地面的夹角是 $25 degree$,它把物件从地面运到离地面9米高的地方，求物件所走的路程．

+ 工件上有V形槽，测出上口宽200mm,深19.2mm,求V形角 $alpha$ 多大．

+ 如图，在离地面高5米处引拉线固定电线杆，拉线和地面成 $60 degree$ 角，求每根拉线多长，拉线底端离杆底多远．

]
#align(center, grid(columns: (38%, 58%,), column-gutter: 0.35em, align: center + bottom, [#image("/math2/fig/6-3ti.PNG", width: 100%);

#subcap[
第3题

]], [#image("/math2/fig/6-4ti.PNG", width: 100%);

#subcap[
第4题

]]));

#align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, [#fig("6-20");

#subcap[
第6题

]], [#fig("6-21");

#subcap[
第7题

]]));

#heading(level: 2, numbering: none, supplement: [toc-sub])[习题6.2]

+ 已知等腰 $triangle.stroked.t A B C$,腰长为5cm,底边长为8cm,求 $angle A$、$angle B$、$angle C$.

+ 把2米的竹杆，垂直于地面的时候，影长1.6米，这时太阳的仰角大约是多少度？

+ 已知等腰 $triangle.stroked.t A B C$,腰长 $overline(A B) = overline(A C) = 10$cm,底角为 $40 degree$,求高 $overline(A D)$,底边 $overline(B C)$ 和面积 $S$.

+ 在 $triangle.stroked.t A B C$ 中，$angle B$、$angle C$ 是锐角，$overline(A B) = c$, $overline(A C) = b$, $overline(A D)$ 是 $overline(B C)$ 边上的高，求证：

  + $overline(A D) = b sin C = c sin B$

  + $frac(b, sin B) = frac(c, sin C)$

+ 已知正 $n$ 边形的半径是 $r$，周长是 $ell$，求证：$ ell = 2 n r sin 180 degree / n $

+ 一架战斗机从3300米高空以每秒150米的速度向轰炸目标俯冲，俯冲角为 $42 degree$,在离地面1300米时投弹，击中目标，问飞机开始俯冲到投弹共用几秒钟？

  #align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, [#fig("6-22");
  
  #subcap[
  第6题
  
  ]], [#fig("6-23");
  
  #subcap[
  第7题
  
  ]]));

+ 东西两炮台 $A$、$B$ 相距2km,同时发现入侵敌舰 $C$,炮台 $A$ 测得敌舰 $C$ 在它的南偏东 $40 degree$ 的方向，炮台 $B$ 测得敌舰 $C$ 在它的正南方，试求敌舰与两炮台的距离．

+ 从圆外一点向圆引两条切线，已知切线长等于21.8cm,圆的半径等于10.6cm,求这两条切线间的夹角．

== 任意三角形中的边角关系
=== 正弦定理
为了解任意的三角形，下面我们用三角比来研究任意三角形中的边角关系．

我们约定在 $triangle.stroked.t A B C$ 中，$angle A$、$angle B$、$angle C$ 分别用 $alpha$、$beta$、$gamma$ 来表示；$angle A$、$angle B$、$angle C$ 的对边分别用 $a$、$b$、$c$ 来表示；外接圆的半径用 $r$ 来表示．

假定 $alpha$ 是锐角（图6.22），作 $triangle.stroked.t A B C$ 的外接圆 $O$,再作 $dot.o O$ 的直径 $overline(C A')$,弦 $overline(B A')$,在 $triangle.stroked.t A' B C$ 中，$angle A' B C$ 是直角，因此 $a = 2 r sin A'$

$because quad angle A' = angle A = alpha$

$therefore quad a = 2 r sin alpha$，因此：#numbered-eq($ frac(a, sin alpha) = 2 r $);

#align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, figure([#fig("6-24");], caption: []), figure([#fig("6-25");], caption: [])));

假定 $angle A$ 是钝角（图6.23），作 $triangle.stroked.t A B C$ 的外接圆 $dot.o O$,再作直径 $overline(C A')$,弦 $overline(B A')$

$because quad angle A + angle A' = 180 degree$

$therefore quad angle A' = 180 degree - angle A$, $angle A'$ 是一个锐角，

在直角 $triangle.stroked.t A' B C$ 中，$angle A' B C$ 是直角．

$therefore quad a = 2 r sin A' = 2 r sin\(180 degree - A\)= 2 r sin\(180 degree - alpha\)$，因此：#numbered-eq($ frac(a, sin\(180 degree - alpha\)) = 2 r $);

我们比较(6.3)、(6.4)两式，可以看出，如果我们定义一个钝角的正弦等于它的补角的正弦，即 $ sin alpha = sin\(180 degree - alpha\) $ #noindent;其中：$alpha$ 是钝角．那么(6.4)式在形式上就与(6.3)式相同了，这就是说，$alpha$ 不论是锐角还是钝角都有：$ frac(a, sin alpha) = 2 r $

#figure([#fig("6-26");

  ],
  caption: [
  ]
)

当 $alpha$ 是直角时（图6.24），作直角 $triangle.stroked.t A B C$ 的外接圆 $dot.o O$ 这时斜边 $a$ 正好是 $dot.o O$ 的直径．

$because quad sin 90 degree = 1$

$therefore quad frac(a, sin alpha) = 2 r$ 仍然成立．

同理，我们还可得出，$ frac(b, sin beta) = 2 r\,#h(2em) frac(c, sin gamma) = 2 r $

总结上面的讨论，我们得到：

#blk[正弦定理][
在任意 $triangle.stroked.t A B C$ 中，边角关系满足：$ frac(a, sin alpha) = frac(b, sin beta) = frac(c, sin gamma) = 2 r $

]
#example[
已知等边 $triangle.stroked.t A B C$ 的边长是 $a$,求 $r$．

]
#solution[
$because quad frac(a, sin alpha) = 2 r\,quad alpha = 60 degree$

$therefore quad frac(a, sin 60 degree) = 2 r$ $ r = frac(a, 2 sin 60 degree) = frac(a, 2 dot.op sqrt(3) / 2) = sqrt(3) / 3 a $

]
#example[
在 $triangle.stroked.t A B C$ 中，已知 $b sin beta = c sin gamma$,求证 $triangle.stroked.t A B C$ 是等腰三角形．

]
#proof[
$because quad b sin beta = c sin gamma$

$therefore quad b / c = frac(sin gamma, sin beta)$

又 $because quad frac(b, sin beta) = frac(c, sin gamma)$

$therefore quad c / b = frac(sin gamma, sin beta)\,quad b / c = c / b\,quad b^2 = c^2$

$because quad b > 0\,quad c > 0$

$therefore quad b = c$，$triangle.stroked.t A B C$ 是等腰三角形．

]
#example[
已知 $P$ 点是 $triangle.stroked.t A B C$ 的 $overline(B C)$ 边上的任一点，求证：$ overline(B P) / overline(P C) = frac(c sin angle P A B, b sin angle P A C) $

]
#proof[
如图6.25所示，在 $triangle.stroked.t A B P$ 与 $triangle.stroked.t A P C$ 中，根据正弦定理有：$ frac(overline(B P), sin angle P A B) = frac(c, sin angle A P B)\,#h(2em) frac(overline(P C), sin angle P A C) = frac(b, sin angle A P C) $ #noindent;即：$ overline(B P) = frac(c sin angle P A B, sin angle A P B)\,#h(2em) overline(P C) = frac(b sin angle P A C, sin angle A P C) $

$because quad angle A P B + angle A P C = pi$

$therefore quad sin angle A P B = sin angle A P C\,#h(2em) overline(B P) / overline(P C) = frac(c sin angle P A B, b sin angle P A C)$

]
#figure([#fig("6-27");

  ],
  caption: [
  ]
)

#exercise[
+ 求证在 $triangle.stroked.t A B C$ 中，

  + $sin alpha = a / b sin beta = a / c sin gamma$

  + $a + b + c = 2 r\(sin alpha + sin beta + sin gamma\)$

  + $sin alpha + sin beta > sin gamma$

+ 在 $dot.o O$ 中，量得一个 $30 degree$ 的圆周角所对的弦长是4cm,求 $dot.o O$ 的半径 $r$.

+ 求下列各角的正弦：$ 90 degree\,quad 120 degree\,quad 150 degree\,quad 135 degree\,quad 132 degree $

+ 在半径是5cm的圆中，$120 degree$ 的圆心角所对的弦长是多少？

+ 在半径是15cm的圆中，一条长18cm的弦所对的圆心角是多少度（精确到度）．

+ 应用正弦定理证明三角形内角平分线定理（提示：模仿例6.28的证法）．

]
=== 余弦定理
在 $triangle.stroked.t A B C$ 中，如果 $beta$、$gamma$ 都是锐角（图6.26），作 $overline(B C)$ 边上的高 $overline(A D)$,则 $a = overline(B D) + overline(D C)$.

但 $overline(B D) = c cos beta$, $overline(D C) = b cos gamma$，因此：#numbered-eq($ a = c cos beta + b cos gamma $);

如果 $beta$、$gamma$ 中有一个是钝角，设 $gamma$ 是钝角（图6.27）作 $overline(B C)$ 边上的高 $overline(A D)$,这时垂足 $D$ 落在 $overline(B C)$ 的延长线上，则 $a = overline(B D) - overline(C D)$．但 $overline(B D) = c cos beta$, $overline(C D) = b cos\(180 degree - gamma\)$，因此：#numbered-eq($ a = c cos beta - b cos\(180 degree - gamma\) $);

比较(6.5)、(6.6)两式，为了使它们在形式上得到一致，我们定义钝角 $gamma$ 的余弦为：$ cos gamma = - cos\(180 degree - gamma\)#h(2em) upright("(") gamma upright("为钝角)") $ #noindent;这样，不论 $gamma$ 是锐角还是钝角都有关系式 $ a = c cos beta + b cos gamma $ #noindent;如果 $beta$ 是钝角，由 $cos beta = - cos\(180 degree - beta\)$ 同样可以得到：$ a = c cos beta + b cos gamma $

#align(center, grid(columns: (32%, 32%, 32%,), column-gutter: 0.35em, align: center + bottom, figure([#fig("6-28");], caption: []), figure([#fig("6-29");], caption: []), figure([#fig("6-30");], caption: [])));

如果 $beta$、$gamma$ 中有一个是直角，设 $gamma = 90 degree$ (图6.28),

$because quad cos gamma = cos 90 degree = 0$

$therefore quad a = c cos beta + b cos gamma$ 仍然成立．

若分别作 $overline(A B)$、$overline(A C)$ 边上的高，同样还可证明 $ b & = a cos gamma + c cos alpha\
c & = b cos alpha + a cos beta $

总结上面的讨论，我们得到：

#blk[定理][
在任意 $triangle.stroked.t A B C$ 中，边角关系满足：

#numbered-align(($a$, $zws = c cos beta + b cos gamma$, true), ($b$, $zws = a cos gamma + c cos alpha$, true), ($c$, $zws = b cos alpha + a cos beta$, true));

]
由上面的定理，我们就可推出余弦定理

#blk[余弦定理][
在任意的 $triangle.stroked.t A B C$ 中，边角关系满足 $ a^2 & = b^2 + c^2 - 2 b c cos alpha\
b^2 & = c^2 + a^2 - 2 c a cos beta\
c^2 & = a^2 + b^2 - 2 a b cos gamma $

]
#proof[
由上面的定理的(6.7)式得，$ cos beta = frac(a - b cos gamma, c) $ #noindent;由(6.8)式得 $ cos alpha = frac(b - a cos gamma, c) $ #noindent;把 $cos beta$、$cos alpha$ 代入(6.9)得 $ c = a frac(a - b cos gamma, c) + b frac(b - a cos gamma, c) = frac(a^2 + b^2 - 2 a b cos gamma, c) $ #noindent;$therefore quad c^2 = a^2 + b^2 - 2 a b cos gamma$

用同样的办法我们可证：$ b^2 & = c^2 + a^2 - 2 c a cos beta\
a^2 & = b^2 + c^2 - 2 b c cos alpha $

]
请同学们自证如下两个推论：

#blk[推论1][
在 $triangle.stroked.t A B C$ 中，$ cos alpha & = frac(b^2 + c^2 - a^2, 2 b c)\
cos beta & = frac(a^2 + c^2 - b^2, 2 a c)\
cos gamma & = frac(a^2 + b^2 - c^2, 2 a b) $

]
#blk[推论2][
一个三角形两边平方的和如果等于第三边的平方，那么第三边所对的角是直角；如果小于第三边的平方，那么第三边所对的角是钝角；如果大于第三边的平方，那么第三边所对的角是锐角．

]
#example[
分别求出 $120 degree$、$135 degree$、$150 degree$、$140 degree$ 的余弦．

]
#solution[
由定义知，一个钝角的余弦等于它的补角的余弦的相反数，所以有：$ cos 120 degree & = - cos\(180 degree - 120 degree\)= - cos 60 degree = - 1 / 2\
cos 135 degree & = - cos\(180 degree - 135 degree\)= - cos 45 degree = - sqrt(2) / 2\
cos 150 degree & = - cos\(180 degree - 150 degree\)= - cos 30 degree = - sqrt(3) / 2\
cos 140 degree & = - cos\(180 degree - 140 degree\)= - cos 40 degree approx - 0.7660 $

]
#example[
用余弦定理证明广义勾股定理．

已知：$parallelogram.stroked A B C D$ (图6.29)

求证：$overline(A C)^2 + overline(B D)^2 = 2\(overline(A B)^2 + overline(A D)^2\)$

]
#figure([#fig("6-31");

  ],
  caption: [
  ]
)

#proof[
在 $triangle.stroked.t A B C$ 与 $triangle.stroked.t A B D$ 中，

#numbered-align(($overline(A C)^2$, $zws = overline(A B)^2 + overline(B C)^2 - 2 overline(A B) dot.op overline(B C) cos angle A B C$, true), ($overline(B D)^2$, $zws = overline(A B)^2 + overline(A D)^2 - 2 overline(A B) dot.op overline(A D) cos angle B A D$, true));

$because quad angle B A D + angle A B C = 180 degree$

$therefore quad cos angle A B C = - cos angle B A D$

又 $because quad overline(B C) = overline(A D)$

$\(6.10\)+\(6.11\)$ 则得：$ overline(A C)^2 + overline(B D)^2 = overline(A B)^2 + overline(B C)^2 + overline(A B)^2 + overline(A D)^2 = 2 (overline(A B)^2 + overline(A D)^2) $

]
#exercise[
+ 在 $triangle.stroked.t A B C$ 中，已知 $a = 4$, $b = 7$, $gamma = 40 degree$,求 $c$.

+ 在 $triangle.stroked.t A B C$ 中，已知 $a = 2$, $b = 3$, $c = 4$,求 $cos alpha$、$cos beta$、$cos gamma$.

+ 已知 $triangle.stroked.t A B C$ 的三边：

  + 56, 65, 33,求最大角；

  + 7、$4 sqrt(3)$、$sqrt(13)$,求最小角．

+ 在 $triangle.stroked.t A B C$ 中，$angle A = 120 degree$,求证：

  + $a^2 - b^2 = c\(b + c\)$

  + $b\(a^2 - b^2\)= c\(a^2 - c^2\)$

+ 在 $triangle.stroked.t A B C$ 中，已知 $cos beta = frac(sin alpha, 2 sin gamma)$,求证 $triangle.stroked.t A B C$ 是等腰三角形．

+ 在 $triangle.stroked.t A B C$ 中，求证：$ frac(cos A, a) + frac(cos B, b) + frac(cos C, c) = frac(a^2 + b^2 + c^2, 2 a b c) $

]
=== 解斜三角形
在一个三角形中，如果没有一个角是直角，那么，这个三角形叫做斜三角形．斜三角形的解法可以分成下面的四种情形：

+ 已知一边和两角；

+ 已知两边和它们的夹角；

+ 已知三边；

+ 已知两边和其中一边的对角．

下面我们分别举例说明每种情形的解法．

#example[
已知：$c = 100$、$alpha = 40 degree$, $beta = 60 degree$ (图6.30),求 $gamma$、$a$、$b$.

]
#figure([#fig("6-32");

  ],
  caption: [
  ]
)

#solution[
$ gamma & = 180 degree -\(40 degree + 60 degree\)= 80 degree\
a & = frac(c sin alpha, sin gamma) approx frac(100 times sin 40 degree, sin 80 degree) = frac(100 times 0.6428, 0.9848) = 65.27\
b & = frac(c sin beta, sin gamma) = frac(100 times sin 60 degree, sin 80 degree) = frac(100 times 0.8660, 0.9848) = 87.94 $

]
例6.31告诉我们，如果已知两角和一边，先用内角和定理求出未知的第三个角，然后再用正弦定理便可求出未知的两边了．

#exercise[
+ 已知下列条件，解三角形，并求其外接圆的半径．

  + $b = 4\,#h(2em) alpha = 30 degree\,#h(2em) beta = 120 degree$

  + $c = 13\,#h(2em) alpha = 45 degree\,#h(2em) beta = 60 degree$

+ 解三角形：

  + $alpha = 62 degree\,#h(2em) beta = 48 degree\,#h(2em) c = 24$

  + $alpha = 55 degree 12'\,#h(2em) beta = 29 degree 18'\,#h(2em) c = 18$

]
#example[
已知 $b = 60$、$c = 34$、$alpha = 41 degree$ (图6.31)．求 $a$, $beta$，$gamma$.

]
#figure([#fig("6-33");

  ],
  caption: [
  ]
)

#solution[
$ a^2 & = b^2 + c^2 - 2 b c cos alpha\
 & = 60^2 + 34^2 - 2 times 60 times 34 cos 41 degree\
 & = 3600 + 1156 - 4080 times 0.755 approx 1676 $ #noindent;查平方根表，得：$a approx 41$．$ sin gamma = frac(c sin alpha, a) = frac(34 times sin 41 degree, 41) = frac(34 times 0.6561, 41) approx 0.5441 $

$therefore quad gamma approx 32 degree 58'$

$ beta = 180 degree -\(alpha + gamma\)= 180 degree -\(41 degree + 32 degree 58'\)= 106 degree 2' $

]
例6.32告诉我们，如果已知两边及夹角，可由余弦定理先求出未知的一边，然后由正弦定理就可算出未知的一个角了，再由内角和定理，就可求出未知的另一个角了．再求出未知边后，最好先求较短边所对的角，因为较短边所对的角一定是锐角，这样就可避免求钝角的情况．

#exercise[
已知下列条件，解三角形

+ $a = 22\,#h(2em) b = 26\,#h(2em) gamma = 78 degree$

+ $b = 10\,#h(2em) c = 10\,#h(2em) alpha = 102 degree$

+ $a = 0.8\,#h(2em) c = 0.6\,#h(2em) beta = 50 degree$

+ $a = 4\,#h(2em) b = 5\,#h(2em) gamma = 60 degree$

]
#example[
已知 $a = 134.6$, $b = 87.8$, $c = 161.7$\(图6.32)，求 $alpha$、$beta$、$gamma$.

]
#figure([#fig("6-34");

  ],
  caption: [
  ]
)

#solution[
#strong[解法一：]先用余弦定理求两个较短的边所对的角．$ cos alpha = frac(87.8^2 + 161.7^2 - 134.6^2, 2 times 87.8 times 161.7) approx 0.5549 $ #noindent;$therefore quad alpha = 56 degree 18'$

$ cos beta = frac(134.6^2 + 161.7^2 - 87.8^2, 2 times 134.6 times 161.7) approx 0.8400 $ #noindent;$therefore quad beta = 32 degree 51'\,quad gamma = 180 degree -\(56 degree 18' + 32 degree 51'\)= 90 degree 51'$

#strong[解法二：]$ cos alpha = frac(87.8^2 + 161.7^2 - 134.6^2, 2 times 87.8 times 161.7) approx 0.5549 $ #noindent;$therefore quad alpha = 56 degree 18'$

$ sin beta = b / a sin alpha = frac(87.8 times sin 56 degree 18', 134.6) approx 0.5427 $ #noindent;$therefore quad beta = 32 degree 51'\,quad gamma = 180 degree -\(56 degree 18' + 32 degree 51'\)= 90 degree 51'$

]
由例6.33可知，如果已知三边 $a$、$b$、$c$,可用余弦定理求出两个较短的边所对的角的余弦；或由余弦定理求出一角后，再改用正弦定理求另一角的正弦．一般地说后一种方法比较方便．我们所以要先求较短边所对的角，主要还是避免在计算中出现求钝角的情况．

#exercise[
已知下列条件，解三角形

+ $a = 40\,#h(2em) b = 19\,#h(2em) c = 41$

+ $a = 1.5\,#h(2em) b = 2.5\,#h(2em) c = 1.8$

+ $a = 6\,#h(2em) b = 3\,#h(2em) c = 3 sqrt(3)$

+ $a = sqrt(10)\,#h(2em) b = 4\,#h(2em) c = sqrt(2)$

]
#example[
在锐角 $triangle.stroked.t A B C$ 中，已知 $a = 12$, $b = 20$, $alpha = 34 degree$,求：$beta$、$gamma$ 和 $c$ (图6.33).

]
#figure([#fig("6-35");

  ],
  caption: [
  ]
)

#solution[
$because quad frac(a, sin alpha) = frac(b, sin beta)$

$therefore quad sin beta = frac(b sin alpha, a) = frac(20 times sin 34 degree, 12) = frac(20 times 0.5592, 12) = 0.9320$

由于 $beta$ 是锐角，反查正弦表得：$beta = 68 degree 45'$

$therefore quad gamma = 180 degree -\(alpha + beta\)= 180 degree -\(34 degree + 68 degree 45'\)= 77 degree 15'$

又 $because quad frac(c, sin gamma) = frac(a, sin alpha)$

$therefore quad c = frac(a sin gamma, sin alpha) = frac(12 times sin 77 degree 15', sin 34 degree) = frac(12 times 0.9753, 0.5592) = 20.93$

]
如果在例6.34中，不限 $triangle.stroked.t A B C$ 是锐角三角形，那么 $beta$ 角就可能是钝角（图6.33中的 $angle A B' C$），这样 $beta$ 角就有两个解．对于已知 $a$、$b$、$alpha$ 解三角形这种情形，我们详细讨论如下：

+ 如果已知 $alpha$ 角是钝角或直角，那么必须 $a > b$ 才能有解（为什么？），这时从 $sin beta = frac(b sin alpha, a)$ 求 $beta$ 角的时候，只能取锐角的值，因此只有一个解．

+ 如果已知的 $alpha$ 角是锐角，并且 $a > b$ 或者 $a = b$.这时从 $sin beta = frac(b sin alpha, a)$ 求 $beta$ 角的时候，也只能取锐角的值，因此都只有一个解（图6.34和图6.35）．

  #align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, figure([#fig("6-36");], caption: []), figure([#fig("6-37");], caption: [])));

+ 如果已知的 $alpha$ 角是锐角，并且 $a < b$，我们再分下面三种情况来讨论：

  + $a > b sin alpha$,这时从 $sin beta = frac(b sin alpha, a)$ 求得 $sin beta < 1$, $beta$ 可以取一个锐角的值和一个钝角的值，因此可以有两个解（图6.36）．

    #figure([#fig("6-38");

      ],
      caption: [
      ]
    )

  + $a = b sin alpha$,这时从 $sin beta = frac(b sin alpha, a)$ 求得 $sin beta = 1$,所以 $beta$ 只能是直角，因此，只有一个解（图6.37）．

  + $a < b sin alpha$,这时从 $sin beta = frac(b sin alpha, a)$ 求得 $sin beta > 1$,但是一角的正弦值不能大于1,因此没有解（图6.38）．

#align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, figure([#fig("6-39");], caption: []), figure([#fig("6-40");], caption: [])));

上面所得的结果可以列成下表：

#align(center)[
#table(
  columns: (auto, auto, auto,),
  align: (center, center, center,),
  table.vline(x: 1),
  table.vline(x: 2),
  table.hline(),
  [],
  [$alpha gt.eq 90 degree$],
  [$alpha < 90 degree$],
  table.hline(),
  [$a > b$],
  [一解],
  [一解],
  table.hline(),
  [$a = b$],
  [无解],
  [一解],
  table.hline(),
  [],
  [],
  [$a > b sin alpha$ 时，两解],
  [$a < b$],
  [无解],
  [$a = b sin alpha$ 时，一解],
  [],
  [],
  [$a < b sin alpha$ 时，无解],
  table.hline(),
);

]
#exercise[
+ 已知 $a = 2\,quad b = 3\,quad alpha = 30 degree$,解三角形．

+ 已知 $a = 2\,quad b = 3\,quad beta = 120 degree$,解三角形．

+ 已知 $b = 3\,quad c = 4\,quad beta = 45 degree$,解三角形．

]
=== 三角形的面积公式
在解题中，有时需要根据三角形的已知元素来计算它的面积，下面导出几个常用的求三角形面积的公式．

==== 已知三角形的两边及其夹角，求面积
当已知三角形的两边及其夹角时，它的面积 $S_triangle.stroked.t$ 可表示成下面的公式：$ S_triangle.stroked.t & = 1 / 2 b c sin alpha\
S_triangle.stroked.t & = 1 / 2 a c sin beta\
S_triangle.stroked.t & = 1 / 2 a b sin gamma $

#proof[
+ 当 $alpha$、$beta$ 都为锐角时图（6.39），设 $overline(A B)$ 上的高 $overline(C D) = h$.那么，$ S_triangle.stroked.t = 1 / 2 c h $ #noindent;在直角 $triangle.stroked.t A C D$ 中，$h = b sin alpha$.代入上式得 $ S_triangle.stroked.t = 1 / 2 b c sin alpha $

  #align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, figure([#fig("6-41");], caption: []), figure([#fig("6-42");], caption: [])));

+ 当 $alpha$ 为钝角时（图6.40），仍设 $overline(A B)$ 边上的高 $overline(C D) = h$,那么：$ S_triangle.stroked.t = 1 / 2 c h $ #noindent;在直角 $triangle.stroked.t A C D$ 中，$h = b sin\(180 degree - alpha\)= b sin alpha$

  $therefore quad S_triangle.stroked.t = 1 / 2 b c sin alpha$

  当 $beta$ 为钝角时，同理也可证明：$ S_triangle.stroked.t = 1 / 2 b c sin alpha $

+ 当 $alpha$ 为直角时，那么，$ S_triangle.stroked.t = 1 / 2 b c $ #noindent;但 $sin alpha = sin 90 degree = 1$

  $therefore quad S_triangle.stroked.t = 1 / 2 b c sin alpha$ 仍然成立．

  同理可证：$ S_triangle.stroked.t = 1 / 2 a c sin beta\,#h(2em) S_triangle.stroked.t = 1 / 2 a b sin gamma $

]
==== 已知三角形的三边求面积
如果已知三角形的三边，则 $ S_triangle.stroked.t = sqrt(p\(p - a\)\(p - b\)\(p - c\)) $ #noindent;其中：$p = 1 / 2\(a + b + c\)$

#proof[
由余弦定理得：$ cos alpha = frac(b^2 + c^2 - a^2, 2 b c) $ #noindent;因此：$ sin alpha & = sqrt(1 - cos^2 alpha) = sqrt(1 - (frac(b^2 + c^2 - a^2, 2 b c))^2)\
 & = sqrt((1 + frac(b^2 + c^2 - a^2, 2 b c)) (1 - frac(b^2 + c^2 - a^2, 2 b c)))\
 & = sqrt(frac(\(b + c\)^2 - a^2, 2 b c) dot.op frac(a^2 -\(b - c\)^2, 2 b c))\
 & = frac(1, 2 b c) dot.op sqrt(\(b + c + a\)\(b + c - a\)\(a + b - c\)\(a - b + c\)) $

令 $p = 1 / 2\(a + b + c\)$，则 $2 p = a + b + c$ $ b + c - a =\(a + b + c\)- 2 a = 2 p - 2 a = 2\(p - a\) $ #noindent;同理：$ a + c - b = 2\(p - b\)\,#h(2em) a + b - c = 2\(p - c\) $ #noindent;因此：$ sin alpha & = frac(1, 2 b c) sqrt(16 p\(p - a\)\(p - b\)\(p - c\))\
 & = frac(2, b c) sqrt(p\(p - a\)\(p - b\)\(p - c\)) $

由于 $S_triangle.stroked.t = 1 / 2 b c sin alpha$，因此：$ S_triangle.stroked.t & = 1 / 2 b c times frac(2, b c) sqrt(p\(p - a\)\(p - b\)\(p - c\))\
 & = sqrt(p\(p - a\)\(p - b\)\(p - c\)) $

这个公式，我国叫做#strong[三斜求积公式]，国外又叫做#strong[海伦公式]．

]
==== 已知三角形二角一夹边，求三角形的面积
如果已知三角形的二角一夹边，则 $ S_triangle.stroked.t & = frac(a^2 sin beta dot.op sin gamma, 2 sin\(beta + gamma\))\
S_triangle.stroked.t & = frac(b^2 sin alpha dot.op sin gamma, 2 sin\(alpha + gamma\))\
S_triangle.stroked.t & = frac(c^2 sin alpha dot.op sin beta, 2 sin\(alpha + beta\)) $

#proof[
已知 $S_triangle.stroked.t = 1 / 2 b c sin alpha$，由正弦定理，$ b = frac(a sin beta, sin alpha)\,#h(2em) c = frac(a sin gamma, sin alpha) $

因此：$ S_triangle.stroked.t = 1 / 2 (frac(a sin beta, sin alpha)) dot.op (frac(a sin gamma, sin alpha)) dot.op sin alpha = frac(a^2 sin beta dot.op sin gamma, 2 sin alpha) $ #noindent;但 $sin alpha = sin\[180 degree -\(beta + gamma\)\]= sin\(beta + gamma\)$

$therefore quad S_triangle.stroked.t = frac(a^2 sin beta dot.op sin gamma, 2 sin\(beta + gamma\))$

同理可证明其它两个公式．

]
#exercise[
+ 在三角形中，已知

  + 两边长分别为4、7,夹角是 $40 degree$,

  + 三边长各为2、4、4.

  + $alpha = 60 degree$、$beta = 80 degree$、$c = 12$,

  求它们的面积各等于多少？

+ 求边长等于 $a$ 的等边三角形的面积．

+ $r$ 为 $triangle.stroked.t A B C$ 的外接圆的半径，求证：$ S_triangle.stroked.t = 2 r^2 sin alpha dot.op sin beta dot.op sin gamma $

+ 已知三角形的三边 $a$、$b$、$c$,且 $p = 1 / 2\(a + b + c\)$,求证：内切圆半径 $ r = sqrt(frac(\(p - a\)\(p - b\)\(p - c\), p)) $

+ 设 $h_a$、$h_b$、$h_c$ 分别表示 $triangle.stroked.t A B C$ 的三边 $overline(B C)$、$overline(C A)$、$overline(A B)$ 上的高，求证：$ h_a & = 2 / a sqrt(p\(p - a\)\(p - b\)\(p - c\))\
  h_b & = 2 / b sqrt(p\(p - a\)\(p - b\)\(p - c\))\
  h_c & = 2 / c sqrt(p\(p - a\)\(p - b\)\(p - c\)) $

]
=== 解三角形在测量中的应用
利用解三角形的原理，可以解许多实际测量问题．下面我们来研究如何计算不便测量的两点间的距离．

测量工作者，为了测量远方某个目标 $C$ 的距离（图6.41），总先选定适当长的基线 $overline(A B)$,然后从基线两端 $A$、$B$,分别测得目标 $C$ 的方向与 $A B$ 的夹角为 $alpha$、$beta$.那么，根据基线 $overline(A B)$ 的长度和 $alpha$、$beta$ 的值就可算出 $C$ 点与 $A$ 点、$B$ 点的距离．以及 $C$ 点与基线 $overline(A B)$ 的距离，计算方法如下：

$because quad frac(overline(A C), sin beta) = frac(overline(A B), sin\(alpha + beta\))\,#h(2em) frac(overline(B C), sin alpha) = frac(overline(A B), sin\(alpha + beta\))$

$therefore quad overline(A C) = frac(overline(A B) sin beta, sin\(alpha + beta\))\,#h(2em) overline(B C) = frac(overline(A B) sin alpha, sin\(alpha + beta\))$

设 $overline(C D)$ 是 $overline(A B)$ 边上的高且 $overline(C D) = x$,则 $overline(A D) = x cot alpha$, $overline(B D) = x cot beta$ $ overline(A B) = overline(A D) + overline(B D) = x\(cot alpha + cot beta\) $

$therefore quad x = frac(overline(A B), cot alpha + cot beta)$

#align(center, grid(columns: (40%, 55%,), column-gutter: 0.35em, align: center + bottom, figure([#fig("6-43");], caption: []), figure([#fig("6-44");], caption: [])));

在测量中，基线越长，量得越准确，测的精确度就越高．

天文学家曾用了这个方法测出了地球和月亮间的距离．1671年两个法国天文学家拉让德和拉卡伊，一个在柏林，一个在好望角（这两个城市差不多位于同一子午线上），测出了 $alpha$、$beta$ 的大小和 $A B$ 的长度（图6.42）．从而确切地算出了地月平均距离为385400公里．

在地球上，我们可使用的最长基线是地球的直径，由于地球绕太阳按椭圆形轨道运行，当我们要测量其它星球到地球的距离时，可使用的最长基线是地球椭圆轨道的长轴（图6.43）．

#figure([#scale(60%, reflow: true, image("/math2/fig/6-43.png"));

  ],
  caption: [
  ]
)

从以上的分析我们知道，当我们应用解三角形原理在地球上测量地球与其它星球的距离时，可使用的基线是有限的，所以星球离地球越远、视角也越小，相对基线就越短，测的结果也就越不精确了．

#exercise[
+ 要测量一条河两岸的两点 $A$、$B$ 之间的距离，在 $A$ 点所在的岸边选择一条基线 $overline(A C) = 380$ 米，测出 $angle B A C = 75 degree 32'$, $angle B C A = 45 degree 35'$,求 $A$、$B$ 间的距离．

+ 如图，$A$、$B$ 两地不能直接测量，选同时能看到 $A$、$B$ 的一点 $C$,测得 $overline(A C) = 280$ 米，$overline(B C) = 470$ 米，$angle A C B = 80 degree 21'$,求 $A$、$B$ 两地的距离．

+ 河对岸有两个目标 $A$、$B$,若不准过河，如何测量才能算出 $A$、$B$ 两点间的距离？

]
#align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, [#image("/math2/fig/6-ti1.PNG", width: 100%);

#subcap[
第1题

]], [#image("/math2/fig/6-ti2.PNG", width: 100%);

#subcap[
第2题

]]));

#align(center)[
#scale(70%, reflow: true, image("/math2/fig/6-ti3.PNG"));

#subcap[
第3题

]
]
#heading(level: 2, numbering: none, supplement: [toc-sub])[习题6.3]

+ 在 $triangle.stroked.t A B C$ 中，

  + 已知 $a = 8$、$beta = 40 degree$、$gamma = 90 degree$,求 $b$.

  + 已知 $a = 25$、$b = 31$、$gamma = 90 degree$,求 $alpha$、$c$.

  + 已知 $a = 6$、$beta = 40 degree$、$gamma = 80 degree$,求b.

  + 已知 $a = 8$、$b = 6$、$alpha = 75 degree$,求 $beta$、$c$.

  + 已知 $a = 3$、$b = 4$、$c = 5$,求 $gamma$.

+ 已知下列条件，求 $S_triangle.stroked.t$.

  + $a = 6\,#h(2em) c = 12\,#h(2em) beta = 135 degree$

  + $a = 10\,#h(2em) beta = 45 degree\,#h(2em) gamma = 60 degree$

  + $a = 3\,#h(2em) b = 5\,#h(2em) c = 10$

+ 在 $triangle.stroked.t A B C$ 中，$a = 10$cm, $beta = 54 degree 16'$, $alpha = 63 degree 6'$,求 $triangle.stroked.t A B C$ 的面积和 $angle C$ 的平分线长．

+ 设 $D$ 把 $triangle.stroked.t A B C$ 的边 $overline(B C)$ 分成 $m : n$,求证：$ n overline(A B)^2 + m overline(A C)^2 =\(m + n\)overline(A D)^2 + n overline(B D)^2 + m overline(C D)^2 $

+ 已知 $triangle.stroked.t A B C$,且 $frac(a + b, 6) = frac(b + c, 4) = frac(c + a, 5)$，求证：

  + $frac(sin alpha, 7) = frac(sin beta, 5) = frac(sin gamma, 3)$

  + $frac(cos alpha, - 7) = frac(cos beta, 11) = frac(cos gamma, 13)$

  + $alpha = 120 degree$

+ 已知在 $triangle.stroked.t A B C$ 中，$gamma = 60 degree$,求证：$a^2 + b^2 = c^2 + a b$.

+ 求证在 $triangle.stroked.t A B C$ 中，$a^2 - b^2 = a c cos beta - b c cos alpha$

+ 已知三角形三边的比是 $3 : 5 : 7$,求最大角．

+ 如果 $triangle.stroked.t A B C$ 的边角之间满足下列关系，那么这个三角形是什么三角形，

  + $sin^2 alpha = sin^2 beta + sin^2 gamma$

  + $a cos A = b cos B$

+ 等腰梯形 $A B C D$ 的上底 $overline(A D) = 18$cm,下底 $overline(B C) = 22$cm, $angle A B C = 60 degree$,求它的面积．

+ 已知梯形 $A B C D$, $A D parallel B C$. $overline(A B) = 13$, $overline(B C) = 18$, $overline(C D) = 15$, $overline(D A) = 4$,求它的面积．

+ 如果已知四边形 $A B C D$ 的 $angle A = 90 degree$, $overline(A B) = 32$, $overline(B C) = 27$, $overline(C D) = 35$, $overline(D A) = 24$,那么它的面积是多少？

+ 已知一四边形的两条对角线的长分别为 $x$、$y$,夹角为 $theta$,面积为 $S$,求证：$ S = 1 / 2 x y sin theta $

#heading(level: 2, numbering: none)[复习题六]
+ 用作图法求锐角 $x$.

  #cols(2)[
  + $sin x = 4 / 5$

  + $cos x = 1 / 3$

  + $tan x = sqrt(3) + sqrt(2)$

  + $sin x = 2 cos x$

  ]

+ 已知：$tan alpha = m\,thick m gt.eq 0$,求 $cos alpha$、$sin alpha$.

+ 已知 $sin alpha + cos alpha = 1.2$,求 $sin alpha$、$cos alpha$ 的值．

+ 计算：

  + $3 sin 90 degree + 2 cos 0 degree - 3 sin 45 degree$

  + $sin^2 30 degree - 1 / 2 cos 90 degree + cos^2 30 degree$

  + $sin^2 45 degree + tan^2 30 degree$

+ 已知 $triangle.stroked.t A B C$, $angle C = 90 degree$,求证 $ tan A + tan B = frac(c^2, a b) $

+ 已知在 $triangle.stroked.t A B C$ 中，$angle C = 90 degree$, $overline(C E) overline(C B)$,延长 $C A$ 到 $D$ 使 $overline(A D) = overline(A B)$,作 $overline(D B)$,求 $angle D$ 的度数，并根据图形求 $angle D$ 的正弦、余弦、正切和余切的值．

+ 在正方形 $A B C D$ 中，已知 $E$ 是 $overline(B C)$ 的中点，求 $angle A E C$ 的正弦和余弦．

+ 在四边形 $A B C D$ 中，$overline(A B) = 2 a$, $B C =\(sqrt(3) + 1\)a$, $overline(C D) = sqrt(2) a$, $angle B = 60 degree$, $angle C = 75 degree$,求 $overline(A C)$ 的长和四边形 $A B C D$ 的面积．

+ 已知在 $triangle.stroked.t A B C$ 中，$a = 4$、$b = 5$、$c = 6$,求 $cos alpha$、$sin gamma$、$sin beta$、$sin alpha$,问 $alpha$、$beta$、$gamma$ 是锐角还是钝角？

+ 一个三角形的三边的长分别为3尺，4尺及 $sqrt(37)$ 尺，求此三角形的最大角的度数．

+ 在 $triangle.stroked.t A B C$ 中，求证：$ frac(a, sin alpha) = frac(b + c, sin beta + sin gamma) = frac(b - c, sin beta - sin gamma) $

+ 设 $P$ 是等边三角形 $A B C$ 外接圆的 $overparen(B C)$ 上的一点，求证 $ overline(P A)^2 = overline(A B)^2 + overline(P B) dot.op overline(P C) $#noindent;（提示：求 $cos angle A B P$, $cos angle A C P$，利用 $cos angle A B P = - cos angle A C P$ 化简即得）．

+ 在 $triangle.stroked.t A B C$ 中，已知 $gamma = 60 degree$, $overline(A C) = 4$,面积为 $sqrt(3)$,求 $overline(A B)$ 及 $overline(B C)$ 的长．

+ 如图，为求得河对岸某建筑物的高 $overline(A B)$,在地面上引一条基线 $overline(C D) = a$,测得 $angle A C B = alpha$, $angle B C D = beta$, $angle B D C = gamma$,求 $overline(A B)$.

+ 已知 $dot.o\(A\,sqrt(3)\)$、$dot.o\(B\,2 - sqrt(3)\)$、$dot.o\(C\,1\)$．$dot.o A$ 分别与 $dot.o B$ 和 $dot.o C$ 相外切．$angle B A C = 60 degree$,求 $overline(B C)$ 的长和 $angle A C B$ 的度数．

  #align(center)[
  #scale(70%, reflow: true, image("/math2/fig/6-14ti.png"));

  #subcap[
  第14题

  ]
  ]

+ 外国船只除特许者外，不得进入离我海岸 $d$ 海里以内的区域，设 $A$ 和 $B$ 是我们的两个观测站，$A$ 与 $B$ 之间的距离为 $S$ 海里，海岸线是过 $A$ 点及 $B$ 点的直线，一外国船在 $P$ 点，在 $A$ 站测得 $angle B A P = alpha$,同时在 $B$ 站测得 $angle A B P = beta$,问 $alpha$ 及 $beta$ 满足什么简单的三角比的不等式，就应当向此未经特许的外国船发出警告，命令退出我海域．

+ 已知 $I$ 是 $triangle.stroked.t A B C$ 的内心，$I_a$、$I_b$、$I_c$ 为 $triangle.stroked.t A B C$ 的三个旁心，$r\,r'\,r_a\,r_b\,r_c$ 分别为 $triangle.stroked.t A B C$ 的外接圆、内切圆和三个旁切圆的半径；设 $p = 1 / 2\(a + b + c\)$, $S_triangle.stroked.t$ 为 $triangle.stroked.t A B C$ 的面积；求证：

  + $S_triangle.stroked.t = r' p = r_a\(p - a\)= r_b\(p - b\)= r_c\(p - c\)$

  + $4 r S_triangle.stroked.t = a b c$

  + $4 r = r_a + r_b + r_c - r'$

  #align(center)[
  #fig("6-45");

  #subcap[
  第17题

  ]
  ]
