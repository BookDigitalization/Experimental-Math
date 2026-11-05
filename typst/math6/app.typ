// 由 typst/tools/tex2typ.py 从 math6/app.tex 转换而来，已人工校对的部分以本文件为准。
#import "../common/template.typ": *
#import "figs.typ": fig

#heading(numbering: none)[附录：统计学简介]
#heading(level: 2, numbering: none, outlined: false)[平均值(均值)]

给了一组数据 $x_1\,x_2\,dots.h\,x_n$, 相应地有一个平均数 (也称为均值), 它是如下的算术平均数 $ 1 / n sum_(i = 1)^n x_i $ #noindent;通常用 $macron(x)$ 来表示它，平均数是日常生活中常见的量。例如，工厂中某一产品的平均日产量，农村中某一作物的平均亩产量，商品的平均销售额，学生考试的平均分数等等。自然会产生这样的问题，为什么要用平均数呢？原因是平均数具有代表性，下面来解释它的意思。

对给定的一组数据 $x_1\,x_2\,dots.h\,x_n$, 如果用一个数 $C$ 来代表这些 $x_1\,x_2\,dots.h\,x_n$, 则 $x_i - C$ 就表达了 $x_i$ 与 $C$ 的偏差，$x_i - C$ 的绝对值小，$C$ 就接近 $x_i$⁠。即用 $C$ 来代表 $x_i$ 就代表得好. 由于 $C$ 要代表所有数 $x_1\,x_2\,dots.h\,x_n$⁠，因此必须考虑几个偏差 $x_1 - C\,x_2 - C\,dots.h\,x_n - C$. 为了消除正负号的影响，用 $\(x_i - C\)^2$ 来衡量 $x_i$ 与 $C$ 的差别，于是总的差异就是 $limits(sum)_(i = 1)^n (x_i - C)^2$, 当 $x_1\,x_2\,dots.h\,x_n$ 确定不变时，应选取 $C$ 使 $limits(sum)_(i = 1)^n (x_i - C)^2$ 达到最小值，这样的 $C$ 才是代表 $x_1\,x_2\,dots.h\,x_n$ 这 $n$ 个数据最合适的数。

下面来证明这个数就是 $macron(x)$ $ sum_(i = 1)^n\(x_i - C\)^2 & = sum_(i = 1)^n\(x_i - macron(x) + macron(x) - C\)^2\
 & = sum_(i = 1)^n [(x_i - macron(x))^2 + 2 (x_i - macron(x)) \( macron(x) - C \) + \( macron(x) - C \)^2]\
 & = sum_(i = 1)^n (x_i - macron(x))^2 + 2 [sum_(i = 1)^n (x_i - macron(x))]\(macron(x) - C\)+ n\(macron(x) - C\)^2 $ #noindent;由于 $ sum_(i = 1)^n\(x_i - macron(x)\)= sum_(i = 1)^n x_i - n macron(x) = n macron(x) - n macron(x) = 0 $ #noindent;因此 $ sum_(i = 1)^n\(x_i - C\)^2 = sum_(i = 1)^n\(x_i - macron(x)\)^2 + n\(macron(x) - C\)^2 gt.eq sum_(i = 1)^n\(x_i - macron(x)\)^2 $ #noindent;显然，等号成立当且仅当 $macron(x) = C$.

这就证明了：如果以 $limits(sum)_(i = 1)^n\(x_i - C\)^2$ 来衡量 $C$ 代表 $x_1\,x_2\,dots.h\,x_n$ 的好坏标准，则 $macron(x)$ 是代表性最好的值.

现在来看几个特例：

#example[
如果 $x_1 = x_2 = dots.h.c = x_n = a$, 则 $macron(x) = a$.

]
#proof[
$ macron(x) = 1 / n sum_(i = 1)^n x_i = 1 / n sum_(i = 1)^n a = a $

]
#example[
如果 $x_i = a + i d$, $i = 0\,1\,2\,dots.h\,n - 1$, 即 $x_0\,x_1\,dots.h\,x_(n - 1)$ 是等差数列，这时 $ macron(x) = 1 / n sum_(i = 0)^(n - 1) x_i & = 1 / n sum_(i = 0)^(n - 1)\(a + i d\)\
 & = 1 / n [n a + frac(\(n - 1\)n, 2) d] = a + frac(\(n - 1\)d, 2) $

]
例如求 $1\,2\,dots.h\,100$ 的平均数，这时 $a = d = 1$, $n = 100$ 于是 $macron(x) = 1 + 99 / 2 = 50.5$\; 又如求 $3\,6\,9\,12\,dots.h\,27$ 这几个数的均值，则 $a = d = 3$, $n = 9$, 于是 $macron(x) = 3 + 8 / 2 times 3 = 15$.

#heading(level: 2, numbering: none, outlined: false)[均方差（方差）]

从上面的讨论可以看出，平均数 $macron(x)$ 代表 $x_1\,dots.h\,x_n$ 的好坏程度是由 $limits(sum)_(i = 1)^n\(x_i - macron(x)\)^2$ 来反映的，它是 $n$ 个数据 $x_i$ 对 $macron(x)$ 的偏差平方的总和. 如果用 $n$ 除一下，就得到平均的偏差平方和，它反映了每个数据 $x_i$ 偏离 $macron(x)$ 的“平均”状况，因此称它为均方差，简称为方差，通常用 $S^2$ 来表示，即有 $ S^2 = 1 / n sum_(i = 1)^n\(x_i - macron(x)\)^2 $ #noindent;方差表明了一组数据 $x_1\,x_2\,dots.h\,x_n$ 的分散程度. $S^2$ 越小，表示 $x_i$ 之间的差异小，$macron(x)$ 的代表性就好；$S^2$ 越大，表示 $x_i$ 之间的差异也大，数据便很分散，此时 $macron(x)$ 代表性就不强.

有时，我们要比较的就是两组数据的分散程度. 这用方差就很方便. 例如有两班学生，甲班有 $n$ 个学生，乙班有 $m$ 个学生，进行教学测验后，甲班的成绩为 $x_1\,x_2\,dots.h\,x_n$⁠，乙班的成绩为 $y_1\,y_2\,dots.h\,y_m$⁠，平均数 $macron(x)$ 与 $macron(y)$ 反映了两个班的平均成绩，各自方差 $S_x^2$ 和 $S_y^2$ 反映了两班成绩不齐的程度，方差小的班，学生之间的差异就小.

如果 $x_1 = x_2 = dots.h.c = x_n = a$⁠，则 $macron(x) = a$⁠，这时方差 $S^2 = 0$. 如果 $x_i = i\,thick i = 1\,2\,dots.h\,n$⁠，则 $macron(x) = frac(n + 1, 2)$⁠，而方差 $ S^2 = 1 / n sum_(i = 1)^n\(x_i - macron(x)\)^2 & = 1 / n sum_(i = 1)^n (i - frac(n + 1, 2))^2\
 & = 1 / n sum_(i = 1)^n i^2 - (frac(n + 1, 2))^2\
 & = frac(\(n + 1\)\(2 n + 1\), 6) - frac(\(n + 1\)^2, 4)\
 & = frac(\(n + 1\)\(4 n + 2 - 3 n - 3\), 12) = frac(n^2 - 1, 12) $

平均数 $macron(x)$ 与平均方差 $S^2$ 是一组数据 $x_1\,x_2\,dots.h\,x_n$ 的两个重要指标，给了一组数 $x_1\,x_2\,dots.h\,x_n$ 后，如何具体地算出这两个值，我们在下一小节中来详细讨论这一问题.

#heading(level: 2, numbering: none, outlined: false)[计算公式]

设 $x_1\,x_2\,dots.h\,x_n$ 相应的均值和方差为 $macron(x)$ 和 $S_x^2$⁠，设 $y_1\,y_2\,dots.h\,y_n$ 相应的均值和方差为 $macron(y)$ 和 $S_y^2$⁠，下面先导出几个公式，然后利用它们来具体计算。

+ 如果 $y_i = x_i + a\,thick i = 1\,2\,dots.h.c\,n$⁠。则 $macron(y) = macron(x) + a$.

  #proof[
  $macron(y) = 1 / n limits(sum)_(i = 1)^n y_i = 1 / n limits(sum)_(i = 1)^n\(x_i + a\)= 1 / n limits(sum)_(i = 1)^n x_i + a = macron(x) + a$

  ]

+ 如果 $y_i = b x_i\,i = 1\,2\,. . . n$, 则 $macron(y) = b macron(x)$

  #proof[
  $macron(y) = 1 / n limits(sum)_(i = 1)^n y_i = 1 / n limits(sum)_(i = 1)^n b x_i = b macron(x)$

  ]

+ 如果 $y_i = b x_i + a\,thick i = 1\,2\,dots.h\,n$, 则 $macron(y) = b macron(x) + a$

  #proof[
  由1，2立即可得.

  ]

+ $limits(sum)_(i = 1)^n (x_i - macron(x))^2 = limits(sum)_(i = 1)^n x_i^2 - n macron(x)^2$

+ 如果 $y_i = b x_i + a\,thick i = 1\,2\,dots.h\,n$, 则 $S_y^2 = b^2 S_x^2$

  #proof[
  $ S_y^2 = 1 / n limits(sum)_(i = 1)^n\(y_i - macron(y)\)^2 & = 1 / n limits(sum)_(i = 1)^n (b x_i + a - b macron(x) - a)^2\
   & = b^2 / n limits(sum)_(i = 1)^n\(x_i - macron(x)\)^2 = b^2 S_x^2 $

  ]

公式5告诉我们，当 $b = plus.minus 1$ 时，$S_x^2 = S_y^2$. 即一组数据同加一个常数，或同时改变符号时，它的方差是不变的.

#example[
设某地历年夏季的雨量为：（单位mm）$ 248.7 quad 249.4 quad 133.2 quad 153.5 quad 211.7 $ #noindent;求它的平均值 $macron(x)$ 及方差 $S^2$

]
取 $y_i = x_i - 200$⁠，所以 $x_i = y_i + 200$⁠，于是 $macron(x) = macron(y) + 200$⁠，$S_x^2 = S_y^2$

列表演算如下：

#align(center)[
#table(
  columns: (auto, auto, auto,),
  align: (center + horizon, center + horizon, center + horizon,),
  table.hline(),
  [$x_i$],
  [$y_i = x_i - 200$],
  [$y_i^2$],
  table.hline(),
  [248.7],
  [48.7],
  [2371.69],
  [249.4],
  [49.4],
  [2440.36],
  [133.2],
  [$- 66.8$],
  [4462.24],
  [153.5],
  [$- 46.5$],
  [2162.25],
  [211.7],
  [11.7],
  [136.89],
  table.hline(),
  [$Sigma$],
  [$- 3.5$],
  [$11573.43$],
  table.hline(),
);

]
所以 $ macron(x) & = macron(y) + 200 = - 3.5 / 5 + 200 = 199.3\
S_x^2 & = S_y^2 = 1 / n (sum_(i = 1)^n y_i^2 - n macron(y)^2) = 1 / 5\(11573.43 - 2.45\)= 2314.196 $

从演算过程可以看出，$y_i$ 的平方、求和的计算量比 $x_i$ 的平方、求和的计算量小．这里选200是为了使 $x_i - 200$ 数字变小而且减法本身也较易.

#example[
设 $x_i = a + i d\,thick i = 1\,2\,dots.h\,n$⁠，即 $x_1\,x_2\,dots.h\,x_n$ 为等差数列，试求方差 $S_x^2$.

]
为了便于比较，下面用两种方法求解.

#strong[解一：]已知 $macron(x) = a + frac(n + 1, 2) d$⁠，所以 $x_i - macron(x) = (i - frac(n + 1, 2)) d$. $ sum_(i = 1)^n\(x_i - macron(x)\)^2 = sum_(i = 1)^n (i - frac(n + 1, 2))^2 d^2 = frac(d^2 n\(n^2 - 1\), 12) $ #noindent;所以 $ S_x^2 = frac(d^2\(n^2 - 1\), 12) $

#strong[解二：]取 $y_i = frac(x_i - a, d) = i$, $i = 1\,2\,dots.h\,n$⁠，于是 $S_y^2 = 1 / d^2 S_x^2$⁠，即 $S_x^2 = d^2 S_y^2$. 前面已算过，这时 $S_y^2 = frac(n^2 - 1, 12)$ 所以 $S_x^2 = frac(d^2\(n^2 - 1\), 12)$.

#example[
对两组数据 $x_1\,x_2\,dots.h\,x_n$ 及 $y_1\,y_2\,dots.h\,y_m$, 设它们的均值及均方差分别为 $macron(x)\,thick S_x^2\;thick macron(y)\,thick S_y^2$⁠，将这两组数据合并为一组数据，求合并后的数据的均值 $macron(z)$ 及均方差 $S_z^2$⁠．

]
#solution[
令 $macron(z) = frac(1, n + m) (limits(sum)_(i = 1)^n x_i + limits(sum)_(i = 1)^m y_i) = frac(1, n + m)\(n macron(x) + m macron(y)\)$

又 $ S_z^2 & = frac(1, n + m) [limits(sum)_(i = 1)^n \( x_i - macron(z) \)^2 + limits(sum)_(i = 1)^m \( y_i - macron(z) \)^2]\
 & = frac(1, n + m) [limits(sum)_(i = 1)^n \( x_i - macron(x) \)^2 + n \( macron(x) - macron(z) \)^2 + limits(sum)_(i = 1)^m \( y_i - macron(y) \)^2 + m \( macron(y) - macron(z) \)^2]\
 & = frac(1, n + m) [n S_x^2 + n \( macron(x) - macron(z) \)^2 + m S_y^2 + m \( macron(y) - macron(z) \)^2] $ #noindent;但是 $macron(z) = frac(n, n + m) macron(x) + frac(m, n + m) macron(y)$⁠，代入有 $ macron(x) - macron(z) = frac(m, n + m)\(macron(x) - macron(y)\)\,#h(2em) macron(y) - macron(z) = frac(n, n + m)\(macron(y) - macron(x)\)\
S_z^2 = frac(n, n + m) S_x^2 + frac(m, n + m) S_y^2 + frac(n, n + m) (frac(m, n + m))^2\(macron(x) - macron(y)\)^2 + frac(m, n + m) (frac(n, m + n))^2\(macron(y) - macron(x)\)^2 $ #noindent;所以 $ S_z^2 = frac(1, n + m) (n S_x^2 + m S_y^2) + frac(n m, \(n + m\)^2)\(macron(x) - macron(y)\)^2 $ #noindent;总之有 $ macron(z) = frac(1, n + m)\(n macron(x) + m macron(y)\)\
S_z^2 = frac(1, n + m) (n S_x^2 + m S_y^2) + frac(n m, \(n + m\)^2)\(macron(x) - macron(y)\)^2 $

]
特别，当 $m = 1$ 时，$S_y^2 = 0$⁠，记 $y_1 = x_(n + 1)$⁠，这就得到增加一个新数据的递推公式 $ macron(z) & = frac(1, n + 1)\(n macron(x) + x_(n + 1)\)\
S_z^2 & = frac(n, n + 1) S_x^2 + frac(n, \(n + 1\)^2)\(macron(x) - x_(n + 1)\)^2 $

不难看出，如果从 $x_1\,x_2\,dots.h\,x_n$ 中减少一个数据，例如删去 $x_n$⁠，那么 $x_1\,x_2\,dots.h\,x_(n - 1)$ 的均值 $macron(x)_(*)$ 与均方差 $S_(*)^2$ 可以用 $macron(x)$ 与 $S_x^2$ 及 $x_n$ 表示，即有递推公式 $ macron(x)_(*) & = frac(1, n - 1)\(n macron(x) - x_n\)\
S_(*)^2 & = frac(n, n - 1) S_x^2 - frac(n, \(n - 1\)^2)\(macron(x) - x_n\)^2 $

#heading(level: 2, numbering: none, outlined: false)[最小二乘法]

在实际工作中经常需要从实测的数据求出变量之间的关系式. 例如年龄和血压是有关系的，随着年龄的增长，血压是会增高的，调查了几百人的年龄与血压的情况，将资料按年龄分组. 用各组的均值（年龄的均值和血压的均值），得到如下的数据：

#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (35%, 60%,), column-gutter: 1em, align: center + bottom, [#align(center)[
#figure(
  align(center)[#table(
    columns: 2,
    align: (center,center,),
    table.header([年龄 $x_i$], [心脏收缩压 $y_i$],),
    table.hline(),
    [35], [114],
    [45], [124],
    [55], [143],
    [65], [158],
    [75], [166],
  )]
  , kind: table
  )

]], [#fig("app-01");])));

从表上的数据或图上的点来看，血压值 $y$ 与年龄数 $x$ 似乎有直线的关系，但是这五个点又不正好在一条直线上，于是发生了一个问题：如何求一个直线方程，使得这条线与五个点最接近.

用 $P_i$ 表示点 $\(x_i\,y_i\)thick i = 1\,2\,3\,4\,5$⁠．对给定的直线 $ell : thick y = a + b x$. 在直线 $ell$ 上取五个点，使其横坐标与 $P_i$ 的横坐标 $x_i$ 相同，这五个点应是 $ Q_i\(x_i\,a + b x_i\)#h(2em) i = 1\,2\,3\,4\,5 $ #noindent;很明显，这五个点的纵坐标之差为 $y_i - a - b x_i$. 用数值 $limits(sum)_(i = 1)^5\(y_i - a - b x_i\)^2$ 来衡量直线 $ell$ 上五个点 $Q_1\,dots.h\,Q_5$ 和已给的五个点 $P_1\,dots.h\,P_5$ 的总差距，这个差距愈小，就认为这条直线愈接近这些点. 因此，最接近的直线应使这个差距达到最小值，下面用和以前类似的方法来求出 $a$ 和 $b$.

已知 $n$ 个点有坐标 $\(x_i\,y_i\)thick i = 1\,2\,dots.h\,n$⁠．求直线 $ell : thick y = a + b x$⁠，使和这 $n$ 个点在上述意义下最接近，也就是求数值 $a$ 和 $b$⁠，使 $ Q = sum_(i = 1)^n\(y_i - a - b x_i\)^2 $ #noindent;达到最小值.

#blk[定理（最小二乘法）][
使 $Q$ 达最小值的 $a\,b$ 为 $ hat(a) = macron(y) - hat(b) macron(x)\,#h(2em) hat(b) = frac(limits(sum)_(i = 1)^n\(x_i - macron(x)\)\(y_i - macron(y)\), limits(sum)_(i = 1)^n\(x_i - macron(x)\)^2) $

]
#proof[
对任意数 $a\,b\,hat(a)\,hat(b)$⁠，有 $ Q & = sum_(i = 1)^n\(y_i - a - b x_i\)^2 = sum_(i = 1)^n [y_i - hat(a) - hat(b) x_i + hat(a) - a + \( hat(b) - b \) x_i]^2\
 & = sum_(i = 1)^n (y_i - hat(a) - hat(b) x_i)^2 + 2 sum_(i = 1)^n (y_i - hat(a) - hat(b) x_i) dot.op [hat(a) - a + \( hat(b) - b \) x_i]\
 & #h(2em) eqph + sum_(i = 1)^n [hat(a) - a + \( hat(b) - b \) x_i]^2 $ #noindent;取 $hat(a)\,hat(b)$ 使得 $ sum_(i = 1)^n (y_i - hat(a) - hat(b) x_i) = 0\,#h(2em) sum_(i = 1)^n x_i (y_i - hat(a) - hat(b) x_i) = 0 $ #noindent;那么上面 $ Q & = sum_(i = 1)^n (y_i - hat(a) - hat(b) x_i)^2 + sum_(i = 1)^n [hat(a) - a + \( hat(b) - b \) x_i]^2 gt.eq sum_(i = 1)^n (y_i - hat(a) - hat(b) x_i)^2 $ #noindent;因此若能由 $hat(a)$⁠，$hat(b)$ 之条件唯一引出 $hat(a)$⁠，$hat(b)$⁠，那么它就是所求的使 $Q$ 达极小值的 $a$⁠，$b$ 了。

将条件改变为 $ hat(a) + hat(b) macron(x) = macron(y)\,quad n hat(a) macron(x) + hat(b) sum_(i = 1)^n x_i^2 = sum_(i = 1)^n x_i y_i $ #noindent;由 $hat(a) = macron(y) - hat(b) macron(x)$⁠，代入后式，有 $ n (macron(y) - hat(b) macron(x)) macron(x) + hat(b) sum_(i = 1)^n x_i^2 = sum_(i = 1)^n x_i y_i $ #noindent;即有 $ hat(b) [sum_(i = 1)^n \( x_i - macron(x) \)^2] = sum_(i = 1)^n x_i y_i - n macron(x) macron(y) = sum_(i = 1)^n\(x_i - macron(x)\)dot.op\(y_i - macron(y)\) $ #noindent;所以$ hat(b) = frac(limits(sum)_(i = 1)^n\(x_i - macron(x)\)\(y_i - macron(y)\), limits(sum)_(i = 1)^n\(x_i - macron(x)\)^2) $ #noindent;于是 $hat(a) = macron(y) - hat(b) macron(x)$, 这证明了定理.

]
回到原来的例子，下面列表进行计算.

#align(center)[
#table(
  columns: (auto, auto, auto, auto, auto, auto,),
  align: (center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon,),
  table.hline(),
  [$x_i$],
  [$y_i$],
  [$x_i - macron(x)$],
  [$y_i - macron(y)$],
  [$\(x_i - macron(x)\)^2$],
  [$\(x_i - macron(x)\)\(y_i - macron(y)\)$],
  table.hline(),
  [35],
  [114],
  [$- 20$],
  [$- 27$],
  [400],
  [540],
  [45],
  [124],
  [$- 10$],
  [$- 17$],
  [100],
  [170],
  [55],
  [143],
  [0],
  [2],
  [0],
  [0],
  [65],
  [158],
  [10],
  [17],
  [100],
  [170],
  [75],
  [166],
  [20],
  [25],
  [400],
  [500],
  table.hline(),
  [$Sigma 275$],
  [705],
  [],
  [],
  [1000],
  [1380],
  [平均55],
  [141],
  [],
  [],
  [],
  [],
  table.hline(),
);

]
$ hat(b) = 1380 / 1000 = 1.38\,#h(2em) hat(a) = 141 - 1.38 times 55 = 65.1 $ #noindent;于是求得最接近这五点的直线为 $ y = 65.1 + 1.38 x $

现在，进一步来考查一下，由上述方程算得的 $x = 35$, 45, 55, 65, 75时 $y$ 值是多少呢？它们与实际的观测值 $y_i$ 的差又是多少呢？为了以示区别，由方程算出的 $65.1 + 1.38 x_i$ 记为 $hat(y)_i$ 有

#align(center)[
#table(
  columns: (auto, auto, auto, auto,),
  align: (center + horizon, center + horizon, center + horizon, center + horizon,),
  table.hline(),
  [实测值],
  [方程算得的值],
  [偏差],
  [偏差平方],
  [$y_i$],
  [$hat(y)_i$],
  [$y_i - hat(y)_i$],
  [$(y_i - hat(y)_i)^2$],
  table.hline(),
  [114],
  [113.4],
  [0.6],
  [0.36],
  [124],
  [127.2],
  [$- 3.2$],
  [10.24],
  [143],
  [141.0],
  [2.0],
  [4.00],
  [158],
  [154.8],
  [3.2],
  [10.24],
  [166],
  [168.6],
  [$- 2.6$],
  [6.76],
  table.hline(),
  [$Sigma$],
  [],
  [0],
  [31.60],
  table.hline(),
);

]
从上表可以看出 $ sum_(i = 1)^n (y_i - hat(y)_i) = 0 $ #noindent;这不是偶然的，可以证明，在一般情况下，总有 $limits(sum)_(i = 1)^n (y_i - hat(y)_i) = 0$. 事实上，$ sum_(i = 1)^n (y_i - hat(y)_i) & = sum_(i = 1)^n y_i - sum_(i = 1)^n (hat(a) + hat(b) x_i)\
 & = n macron(y) - n hat(a) - n hat(b) macron(x) = n (macron(y) - hat(a) - hat(b) macron(x)) $ #noindent;由于已知 $hat(a) = macron(y) - hat(b) macron(x)$⁠，所以有 $limits(sum)_(i = 1)^n (y_i - hat(y)_i) = 0$

因此，这一结果常常可以作为验算所计算的结果是否正确，但是，在实际使用时，在对大量数据进行计算时，由于舍入误差的累积会使 $limits(sum)_(i = 1)^n (y_i - hat(y)_i) eq.not 0$⁠，不过这个 $limits(sum)_(i = 1)^n (y_i - hat(y)_i)$ 不会大，而在 $limits(sum)_(i = 1)^n (y_i - hat(y)_i)$ 的绝对值很大时，这往往是由于计算上的错误所造成的.
