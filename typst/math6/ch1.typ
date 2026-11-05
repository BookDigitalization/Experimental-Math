// 由 typst/tools/tex2typ.py 从 math6/1.tex 转换而来，已人工校对的部分以本文件为准。
#import "../common/template.typ": *
#import "figs.typ": fig

= 复数系
在数学中，数是最基础、应用最广泛的工具之一，我们已经在自然数的基础上，逐步学习了整数、有理数、实数等概念和它们的运算及性质. 这一章，我们将进一步学习复数的概念及其运算、性质.

== 复数的概念
=== 数的概念的发展
数的概念是中学数学的主要内容之一，是从实践中逐步形成和发展起来的. 早在有文字记载的历史以前，由于计数和排序的需要，人类就建立起自然数（正整数）的概念，处理着各种常见的、有天然单元的可数量. 自然数的全体构成了自然数集 $bb(N)$.

随着社会生产和科学技术的发展，数的概念相应地得到了不断发展.

为了处理实践中遇到的测量、分割、分配等可以细分的量，人们引进了正分数；为了解决生产实践中的各种具有相反意义的量的表示和运算问题，人们又引进了零及负数，并把自然数看作正整数. 这样一来，把正整数、零、负整数合并在一起，称为整数集 $bb(Z)$⁠；并把整数与分数（正分数、负分数）合称为有理数集 $bb(Q)$.

任一有理数，可以表示成分数形式 $m / n$⁠，其中 $m\,n in bb(N)$\; 还可以表示成循环小数（包括循环节为0的小数）.

有理数系的形成，使得许多人曾认为这就足以解决可度量的量，特别是在古希腊，他们曾认为：任意两条线段都是可公度的（即：任意两条线段长度的比都是有理数）. 但实际上这种认识是不正确的. 例如，正方形的边长和对角线长，正五边形的边长和对角线长都是不可公度的. 为了解决这些量与量之比值不能用有理数表示的矛盾，于是又引进了无理数的概念，无理数就是无限不循环小数. 无理数与有理数统称为实数，构成了实数集 $bb(R)$.

实数集 $bb(R)$ 对加、减、乘、除（零不作除数）四则运算是封闭的，且满足运算通性，即满足加、乘法的交换律、结合律和分配律，数零与1保持在运算中的特性．

实数集 $bb(R)$ 与数轴上的点集之间，可以建立起一一对应的关系. 因此，从度量的角度来说，实数系是一个完整无缺的数系，它足以满足度量的实际需要.

但是，从代数运算和解方程的角度来看，实数集并不完整无缺，因为，在实数范围内，开方运算并不封闭，实系数方程（如 $a x^2 + b x + c = 0$⁠）在实数系内未必有解.

事实上，数的概念的逐步扩充，与代数运算和解方程的需要也是相适应的，例如：

由于自然数集 $bb(N)$ 对于减法、除法运算不封闭，因而方程 $x + 7 = 2$, $7 x = 5$ 等在自然数集中无解，但在有理数集 $bb(Q)$ 中就有解 $x = - 5$, $x = 5 / 7$.

由于有理数集 $bb(Q)$ 对于开方运算不封闭，因而方程 $x^2 - 3 = 0$ 在 $bb(Q)$ 中无解，但在实数集 $bb(R)$ 中就有两个解 $x = plus.minus sqrt(3)$.

同样，实数集 $bb(R)$ 对开方运算仍不封闭，因而像方程 $x^2 + 1 = 0$ 在 $bb(R)$ 中还是无解，因为，没有一个实数的平方等于 $- 1$⁠．要解决这一类矛盾，数的概念需要进一步发展，这就需要引进新数，并讨论它的运算.

#exercise[
+ 试叙述实数集 $bb(R)$ 中有哪些数系运算通性？

+ 试分别在自然数集 $bb(N)$⁠、整数集 $bb(Z)$⁠、有理数集 $bb(Q)$ 和实数集 $bb(R)$ 中，解方程 $\(x - 2\)\(3 x + 1\)\(x + 7\)\(x^2 + 5\)= 0$.

]
=== 复数及其几何表示
如上所述，由于解方程的需要，早在十六世纪，人们就引进了一个新数 $i$⁠，使得方程 $x^2 + 1 = 0$ 有解，并把它叫做#strong[虚数单位]，并规定：

#block[
#set enum(numbering: enum-at(1, "(1)"))
+ $i^2 = - 1$\;

+ 它与实数进行四则运算时，运算通性及数0与1的运算特性仍然保持. 即，满足加、乘法的交换律、结合律、分配律；满足 $ 0 + i & = i + 0 = i\,\
  0 dot.op i & = i dot.op 0 = 0\,\
  1 dot.op i & = i dot.op 1 = i . $
]

在这样的规定下，$i$ 可以与实数 $b$ 相乘，再与实数 $a$ 相加，从而得到 $a + b i$.

这样，数的概念扩大了，我们就把形如 $a + b i thick\(a\,b in bb(R)\)$ 的数，叫做复数. 全体复数构成的集合，称为#strong[复数集]，一般记作 $bb(C)$.

对于复数 $a + b i thick\(a\,b in bb(R)\)$⁠，当 $b = 0$ 时，就是实数 $a$⁠；当 $b eq.not 0$ 时，这一复数叫做虚数，特别地，当 $a = 0$ 且 $b eq.not 0$ 时，叫做纯虚数.

$a$⁠，$b$ 分别叫做复数 $z = a + b i$ 的#strong[实部]与#strong[虚部]，并且记作：$upright(R e)\(z\)= a$, $upright(I m)\(z\)= b$.

显然，实数集 $bb(R)$ 是复数集 $bb(C)$ 的真子集，即 $bb(R) subset bb(C)$.

例如，$3 + 2 i$, $- 1 / 2 - sqrt(3) i$, $- 0.25 i$ 都是虚数. 其中 $- 0.25 i$ 是纯虚数．它们的实部和虚部分别为：$  & upright(R e)\(3 + 2 i\)= 3\,#h(2em) upright(I m)\(3 + 2 i\)= 2\;\
 & upright(R e) (- 1 / 2 - sqrt(3) i) = - 1 / 2\,#h(2em) upright(I m) (- 1 / 2 - sqrt(3) i) = - sqrt(3)\;\
 & upright(R e)\(- 0.25 i\)= 0\,#h(2em) upright(I m)\(- 0.25 i\)= - 0.25 . $

我们还规定，当且仅当两个复数的实部和虚部分别相等时，这两个复数相等，即 $ a + b i = c + d i arrow.l.r.double.long a = c upright("且") b = d $ #noindent;或 $ z_1 = z_2 arrow.l.r.double.long upright(R e)\(z_1\)= upright(R e)\(z_2\)quad upright("且") quad upright(I m)\(z_1\)= upright(I m)\(z_2\) $ #noindent;特别地，我们可以得出 $ a + b i = 0 arrow.l.r.double.long a = b = 0 $

#example[
若 $3 x + 2 y i - 1 =\(x - 1\)i + y$⁠，其中 $x\,y in bb(R)$. 求 $x$ 与 $y$ 的值.

]
#solution[
将已知等式整理得 $ \(3 x - 1\)+ 2 y i = y +\(x - 1\)i $ #noindent;根据复数相等的定义，可得方程组 $display(cases(3 x - 1 = y, 2 y = x - 1))$⁠，解得 $ x = 1 / 5\,#h(2em) y = - 2 / 5 $

]
当两个复数的实部相等、虚部互为相反数时，这两个复数叫做#strong[互为共轭复数]，即：复数 $a + b i$ 与 $a - b i$ 叫做互为共轭复数. 一般地，复数 $z = a + b i$ 的共轭复数表示为：$ overline(z) = a - b i $

显然，实数 $a$（即虚部为零的复数）的共轭复数仍是它自身 $a$.

我们已经知道，实数集与数轴上的点之间可建立一一对应关系. 引进虚数，构成复数集之后，是否有相应的对应关系呢？

首先，虚数单位 $i$ 在实数轴上没有立足之地，它不属于实数集；其次，当 $b eq.not 0$ 时，复数 $a + b i$ 也不可能在实数轴上找出对应之点，它仍不属于实数集，因此，我们必须另找途径来建立对应关系.

从复数及其相等的定义中，我们知道，任何一个复数 $z = a + b i$⁠，都由一个有序实数对 $\(a\,b\)$ 唯一确定，而每一个有序实数对，又借助平面的坐标化可以唯一确定平面上一个点，因此，只要在平面上建立起直角坐标系，就可以用平面上的点 $Z\(a\,b\)$ 表示出复数 $z = a + b i$⁠，如图1.1所示.

#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (45%, 45%,), column-gutter: 1em, align: center + bottom, figure([#fig("1-01");], caption: []), figure([#fig("1-02");], caption: []))));

这个建立了坐标系来表示复数的平面，叫做#strong[复平面]，其中 $X$ 轴叫做#strong[实轴]，$Y$ 轴（不含原点）叫做#strong[虚轴]\.

这样一来，每一个复数，在复平面内都有唯一一点和它对应，反之，复平面内的每一个点，都有唯一的一个复数和它对应，因此，复数集 $bb(C)$ 和复平面上的点集是一一对应的. 特别地，实数集和复平面实轴上的点集一一对应；纯虚数集合和复平面虚轴（不含原点）上的点集一一对应.

显然，互为共轭的两个复数 $z = a + b i$ 与 $macron(z) = a - b i$ 在复平面上对应的两点 $Z\(a\,b\)$ 与 $overline(Z)\(a\,- b\)$ 关于实轴对称（图1.2）．

#exercise[
+ 将下列给出的各数，分类填入表中：$ 1 - sqrt(2)\,quad 0.618\,quad - 1 + i\,quad 1 / 4 i\,quad 0\,quad i\,quad i^2\,quad 3 + 7 sqrt(2) i\
  i - 1\,quad\(sqrt(2) + sqrt(3)\)i\,quad sqrt(2) i - sqrt(2)\,quad - sqrt(3) / 2 i $ #noindent;#table(
    columns: (auto, 70% + 12pt,),
    align: (center + horizon, left + top,),
    table.vline(x: 0),
    table.vline(x: 1),
    table.vline(x: 2),
    table.hline(),
    [实数],
    [],
    table.hline(),
    [虚数],
    [],
    table.hline(),
    [纯虚数],
    [],
    table.hline(),
  );

+ 填写下列表格：

  #align(center)[
  #table(
    columns: (auto, 10% + 12pt, 10% + 12pt, 10% + 12pt, 10% + 12pt, 10% + 12pt,),
    align: (center + horizon, left + top, left + top, left + top, left + top, left + top,),
    table.vline(x: 0),
    table.vline(x: 1),
    table.vline(x: 2),
    table.vline(x: 3),
    table.vline(x: 4),
    table.vline(x: 5),
    table.vline(x: 6),
    table.hline(),
    [复数 $z$],
    [$upright(R e)\(z\)$],
    [$upright(I m)\(z\)$],
    [$macron(z)$],
    [$upright(R e)\(macron(z)\)$],
    [$upright(I m)\(macron(z)\)$],
    table.hline(),
    [$- sqrt(3) + i$],
    [],
    [],
    [],
    [],
    [],
    [$-\(1 + sqrt(2)\)$],
    [],
    [],
    [],
    [],
    [],
    [$frac(i - sqrt(2), 4)$],
    [],
    [],
    [],
    [],
    [],
    [$0$],
    [],
    [],
    [],
    [],
    [],
    [$i$],
    [],
    [],
    [],
    [],
    [],
    [$a - b i$],
    [],
    [],
    [],
    [],
    [],
    table.hline(),
  );

  ]

+ 试求出满足下列等式的实数 $x$⁠，$y$⁠：

  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + $\(3 x + 2 y\)+\(5 x - y\)i = 17 - 2 i$\;

  + $3 x + 2 y - 7 =\(2 x + 3 y - 8\)i$\;

  + $7 x +\(4 y - 1\)i - 1 = 0$.
  ]

+ 试说明对任意复数 $z$⁠，都有 $overline(macron(z)) = z$.

+ 在复平面上，画出下列复数及它们的共轭复数所对应的点：$ 2 - 2 i\;quad - 2 + 2 i\;quad - 2 i\;quad sqrt(2)\;quad 0 . $

]
=== 复数的模与幅角
我们已经知道，复数集与复平面上的点集之间是一一对应的，即每一复数 $z = a + b i thick\(a\,b in bb(R)\)$ 都对应着复平面上唯一一点 $Z\(a\,b\)$⁠，反之亦然。

如果我们在复平面上连结原点 $O$ 与表示复数 $z = a + b i$ 的点 $Z\(a\,b\)$⁠，就得到一个向量（从 $O$ 点指向 $Z$ 点），记作 $accent(O Z, ⃗)$⁠，这样就可以在复数同向量（从原点出发的向量）之间建立起联系. 不难看出，任一复数 $z$ 可唯一确定复平面上一点 $Z$⁠，进而唯一确定一个向量 $accent(O Z, ⃗)$⁠；反之，复平面上任一向量 $accent(O Z, ⃗)$⁠，可唯一确定一点 $Z$⁠，进而唯一确定一个复数 $z$⁠，因此，复数集 $bb(C)$ 与复平面内所有以原点 $O$ 为起点的向量（位置向量）集合也是一一对应的。

这样一来，我们就可以很方便地把复数 $z = a + b i thick\(a\,b in bb(R)\)$ 说成点 $Z\(a\,b\)$⁠，或说成向量 $accent(O Z, ⃗)$. 研究复数的运算、性质就可以和研究向量的运算、性质互通了.

如图1.3所示，我们把向量 $accent(O Z, ⃗)$ 的模（$O Z$ 的长度）$r$ 叫做复数 $z = a + b i$ 的模（或绝对值），记作 $ r =\|z\|quad upright("或") quad r =\|a + b i\| $

#figure([#fig("1-03");

  ],
  caption: [
  ]
)

显然 $ r =\|z\|=\|a + b i\|= sqrt(a^2 + b^2) gt.eq 0 $

特别地，当 $b = 0$ 时，$z$ 是一个实数，这时 $ r =\|z\|=\|a\|#h(2em) upright("（与实数的绝对值概念一致）") $

又以实轴 $O X$ 的正半轴为始边，向量 $accent(O Z, ⃗)$ 所在的射线为终边的角 $theta$⁠，叫做复数 $z = a + b i$ 的#strong[幅角]\.

由于任一不等于零的复数，按以上规定可有无限多个幅角（终边相同的角）的值，因而，我们进一步约定：

满足 $0 lt.eq theta < 2 pi$ 的幅角 $theta$ 的值，叫做幅角的#strong[主值]，并记作 $arg z$⁠，即 $0 lt.eq arg z < 2 pi$. 因此，任一非零复数 $z$ 的幅角 $theta = arg z + 2 k pi thick\(k in bb(Z)\)$

这样一来，每一个不等于零的复数，就只有唯一的模与唯一的幅角主值，并可被它的模与幅角主值所唯一确定。

应该指出，由于复数 $z = 0$ 对应于复平面上的零向量（一个点），而且零向量的方向是任意的，因此，复数 $z = 0$ 的模 $\|z\|= 0$⁠，它的幅角却是任意的。

#example[
试比较复数 $z_1 = 1 + sqrt(2) i$⁠，$z_2 = - 1 / 2 - i$ 的模的大小.

]
#solution[
$because quad\|z_1\|= sqrt(1 + 2) = sqrt(3)\,quad\|z_2\|= sqrt(1 / 4 + 1) = 1 / 2 sqrt(5)\,#h(2em) sqrt(3) > 1 / 2 sqrt(5)$

$therefore quad\|z_1\|>\|z_2\|$.

]
一般来说，两个复数中，至少有一个不是实数，就不能比较它们的大小，但任意两个复数的模，总是可以比较大小的.

#example[
如果 $a$⁠，$b$ 都是正实数，试求：

#cols(4)[
#block[
#set enum(numbering: enum-at(1, "(1)"))
+ $arg a$

+ $arg\(- a\)$

+ $arg\(b i\)$

+ $arg\(- b i\)$
]

]
]
#solution[
由于 $a$⁠，$b$ 是正实数，因此：复数 $a$⁠，$- a$ 分别对应着复平面中正、负半实轴上的点（不包含原点）. 所以

#cols(2)[
#block[
#set enum(numbering: enum-at(1, "(1)"))
+ $arg\(a\)= 0$

+ $arg\(- a\)= pi$
]

]
复数 $b i$⁠，$- b i$ 分别对应着复平面中正、负半虚轴上的点（不包含原点）. 所以

#cols(2)[
#block[
#set enum(numbering: enum-at(1, "(1)", start: 3))
+ $arg\(b i\)= pi / 2$

+ $arg\(- b i\)= frac(3 pi, 2)$
]

]
]
#example[
设 $z in bb(C)$⁠，试说明满足下列条件的点Z的集合组成什么样的图形？

#cols(2)[
#block[
#set enum(numbering: enum-at(1, "(1)"))
+ $\|z\|= a$

+ $2 <\|z\|lt.eq 4$
]

]
]
#solution[
#block[
#set enum(numbering: enum-at(1, "(1)"))
+ 复数 $z$ 的模等于 $a gt.eq 0$⁠，就是说它对应于复平面上的向量 $accent(O Z, ⃗)$ 的长度为 $a$⁠，也就是说它对应于复平面上的点 $Z$ 到原点的距离为 $a$. 所以，满足条件 $\|z\|= a$ 的点的集合，当 $a > 0$ 时组成一个以 $O$ 为圆心、以 $a$ 为半径的圆；当 $a = 0$ 时，就是一个点（原点）。

+ 先将条件 $2 <\|z\|lt.eq 4$ 化为 $display(cases(\|z\|> 2, \|z\|lt.eq 4))$

  #align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (45%, 45%,), column-gutter: 1em, align: center + bottom, [再分别考虑：满足 $\|z\|> 2$ 的点集组成圆 $\|z\|= 2$ 的外部；满足 $\|z\|lt.eq 4$ 的点集组成圆 $\|z\|= 4$ 的内部（包含边界）。同时满足以上两条件的点集，就是已求两集合的交集，也就是所要求的集合.
  
  因此，满足 $2 <\|z\|lt.eq 4$ 的点的集合是以 $O$ 为圆心，以2及4为半径的两圆所夹的圆环，其中包含外边界，但不包括内边界（图1.4）.], figure([#fig("1-04");], caption: []))));
]

]
#exercise[
+ 求出下列复数的模，并按其大小用不等号连起来：$ sqrt(2) - i\,quad - 2 + i\,quad 7\,quad 2 i\,quad - 1 - i $

+ 设 $\|z\|= r$, $arg z = alpha$⁠，试求出 $\|macron(z)\|$, $arg macron(z)$.

+ 求证：复数 $z_1 = - 3 i$, $z_2 = sqrt(2) + sqrt(7) i$, $z_3 = sqrt(7) - sqrt(2) i$, $z_4 = - 2 + sqrt(5) i$ 所对应的四个点共圆，并写出这个圆周上的所有点应满足的条件.

+ #block(sticky: true)[你能指出满足下列条件的复数所对应的点集组成什么图形吗？]

  #cols(2)[
  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + $arg z = pi / 4$

  + $pi / 4 lt.eq arg z lt.eq pi / 2$
  ]

  ]

]
#heading(level: 3, numbering: none, outlined: false)[习题1.1]
+ #block(sticky: true)[设复数 $z =\(a^2 - 2 a - 3\)+\(a^2 + 2 a - 3\)i$, $a in bb(R)$, 试问在什么条件下，这一复数是]

  #cols(4)[
  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + 实数？

  + 零？

  + 虚数？

  + 纯虚数？
  ]

  ]

+ 实数 $a\,b$ 取何值时，才能使复数 $z_1 = z_2$:

  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + $z_1 = (1 / 2 a + b) + (5 a + 2 / 3 b) i\,quad z_2 = - 4 + 16 i$ \;

  + $z_1 =\(a + b\)+ 24 i\,quad z_2 = -\(5 + a b i\)$\;

  + $z_1 = 8 + 2 a b i\,quad z_2 = 6 i + a^2 - b^2$\;

  + $z_1 = 2 a^2 - 5 a + 2\,quad z_2 =\(b^2 + b - 2\)i$\;

  + $z_1 = 0\,quad z_2 =\(a - 1\)^2 +\(b^2 + 2 b\)i$.
  ]

+ 求出下列各复数的共轭复数，并在复平面上描出表示这些互为共轭复数的点。$ 1 - i\,quad - 2 + sqrt(2) i\,quad - sqrt(3) i\,quad 2\,quad i\,quad sqrt(3) + i $

+ 求出上题中各复数的模及幅角的主值（可用反三角函数表示）.

+ 实数 $x\,y$ 取何值时，才能使 $z_1 = macron(z)_2$:

  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + $z_1 =\(x - y\)+ 5 i\,quad z_2 = 1 -\(2 x + y\)i$\;

  + $z_1 = x y -\(x + y\)i\,quad z_2 = 5 + 24 i$\;

  + $z_1 =\(x^2 - 3 x - 2\)+\(y^2 - 5 y - 6\)i\,quad z_2 = 2$\;

  + $z_1 = 0\,quad z_2 =\(2 x^2 - 5 x + 2\)+ i\(y^2 + y - 2\)$.
  ]

+ 求证：两个复数互为共轭的必要条件是这两个复数的模相等。

+ 在下列各题中，要使等式 $\|z_1\|= 2\|z_2\|$ 成立，试求实数 $x\,y$ 的值：

  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + $z_1 = x - 1 - 2 i\,quad z_2 = 1 +\(x + 1\)i$\;

  + $z_1 =\(x - y + 1\)+ 2\(x + y - 3\)i\,quad z_2 = frac(x - y + 1, 2 sqrt(2)) i$
  ]

+ 设 $a\,b in bb(R)$, 它们取何值时，表示复数 $z =\(a - b - 1\)+\(2 a - b - 5\)i$ 在复平面上的点，才能在 $y = x$ 直线上？

+ #block(sticky: true)[试求满足下列条件的复数 $x + y i$ 在复平面上对应的点的轨迹：]

  #cols(3)[
  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + $\|x + y i\|= 3$

  + $\|x + y i\|< 3$

  + $\|x + y i\|gt.eq 3$

  + $2 lt.eq\|x + y i\|lt.eq 3$

  + $0 <\|x + y i\|< 3$
  ]

  ]

+ #block(sticky: true)[设 $z = a + b i\,thick a\,b in bb(R)$. 问：满足下列条件的点 $Z\(a\,b\)$ 的集合组成什么图形？]

  #cols(2)[
  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + $0 lt.eq\|a\|< 1$

  + $a > 0\,thick b > 0\,quad a^2 + b^2 > 4$
  ]

  ]

+ 想想看：若已知一个非零复数 $z = a + b i$, 你能求出它的幅角来吗？它的主值又如何求出？举例说明。

+ 满足条件 $pi / 6 lt.eq arg z lt.eq pi / 2$ 的复数，在复平面上对应着什么样的点集？

== 复数的四则运算
本节讨论复数的四则运算，我们将根据引进的新数------虚数单位 $i$ 的特征 $i^2 = - 1$ 和希望它遵从“数系运算通性”的要求，合理地提出运算法则，并进一步应用这些法则，有效地进行运算，同时，根据复数的几何意义，我们将相应地给出复数运算的几何意义.

=== 复数的加、减法
==== 加法
复数的加法运算按照以下规定的法则进行：设 $z_1 = a + b i$, $z_2 = c + d i$ 是任意两个复数，则 $ z_1 + z_2 =\(a + b i\)+\(c + d i\)=\(a + c\)+\(b + d\)i $

可见，任意两个复数的和仍然是一个复数.

特别地，根据这一规定我们可求出任一个实数 $a$ 和任一纯虚数 $b i$ 的和：$ \(a + 0 i\)+\(0 + b i\)=\(a + 0\)+\(0 + b\)i = a + b i $

由此可知，复数 $a + b i$⁠，既可认定为一个数，又可认定它为实数 $a$ 与纯虚数 $b i$ 的和，今后，对于表达复数 $a + b i$ 中的“$+$⁠”号与表达加法运算的“$+$⁠”号，我们将认为是一样的。

不难验证，复数加法法则的规定满足“运算通性”。即: 设 $z_1\,z_2\,z_3 in bb(C)$, 则

#numbered-align(($z_1 + z_2$, $eqph = z_2 + z_1$, [(交换律成立)]), ($z_1 + (z_2 + z_3)$, $eqph = (z_1 + z_2) + z_3 = z_1 + z_2 + z_3$, [(结合律成立)]), ($z_1 + 0$, $eqph = 0 + z_1 = z_1$, [(零的运算特性保持)]));

#example[
试求下列复数的和：

#block[
#set enum(numbering: enum-at(1, "(1)"))
+ $\(5 - 3 i\)+\(- sqrt(2) + i\)$

+ $\(9 + 6 i\)+\(9 - 6 i\)$

+ $\(1 - i\)+\(- 1 + 2 i\)+ 7 + sqrt(2) i$
]

]
#solution[
#block[
#set enum(numbering: enum-at(1, "(1)"))
+ $\(5 - 3 i\)+\(- sqrt(2) + i\)=\(5 - sqrt(2)\)- 2 i$

+ $\(9 + 6 i\)+\(9 - 6 i\)= 18 + 0 i = 18$

+ $\(1 - i\)+\(- 1 + 2 i\)+ 7 + sqrt(2) i =\(1 - 1 + 7\)+\(- 1 + 2 + sqrt(2)\)i = 7 +\(1 + sqrt(2)\)i$
]

]
由于复数可以用复平面上的“位置”向量来表示，因此，复数加法的几何意义就是：复数的加法可以按照向量的“平行四边形”法则来进行，即，先将求和的两个复数所对应的向量 $accent(O Z_1, ⃗)$, $accent(O Z_2, ⃗)$ 画出，若这两个向量不共线，再以这两个向量为邻边作平行四边形 $O Z_1 Z Z_2$, 则这个平行四边形的对角线 $O Z$ 所示的向量 $accent(O Z, ⃗)$, 就对应着已知两个复数的和 (如图1.5).

#figure([#fig("1-05");

  ],
  caption: [
  ]
)

若 $accent(O Z_1, ⃗)$ 与 $accent(O Z_2, ⃗)$ 共线，只要在 $accent(O Z_1, ⃗)$ 的方向上紧接着延长一个 $accent(Z_1 Z, ⃗)$⁠，使 $accent(Z_1 Z, ⃗) = accent(O Z_2, ⃗)$. 这时同样得到向量 $accent(O Z, ⃗)$, 它对应着已知两复数的和（相当于作一个退缩成一条线段的平行四边形）.

显然，两个共轭复数的和是一个实数，它对应着实轴上的一个向量.

==== 减法
复数的减法仍定义为加法的逆运算，即：满足 $\(c + d i\)+\(x + y i\)= a + b i$ 的复数 $x + y i$⁠，就叫做复数 $a + b i$ 减去 $c + d i$ 的差，记作 $ x + y i =\(a + b i\)-\(c + d i\) $

根据复数加法法则和复数相等的定义，可以得出复数的减法法则 $ \(a + b i\)-\(c + d i\)=\(a - c\)+\(b - d\)i $

可见，两复数的差，仍是一个确定的复数，就是说，复数集对于减法也是封闭的.

同样，复数的减法的几何意义就是用向量减法的“三角形法则”来表示，即：两个复数的差 $z_1 - z_2$（向量 $accent(O Z_1, ⃗) - accent(O Z_2, ⃗)$⁠）与连结两个向量终点并指向被减向量终点的向量对应（图1.6），即 $ accent(O Z_1, ⃗) - accent(O Z_2, ⃗) = accent(Z_2 Z_1, ⃗) $

#figure([#fig("1-06");

  ],
  caption: [
  ]
)

综上所述，复数的加、减法与我们熟悉的多项式加、减法是类似的，就是把复数的实部、虚部分别相加、减，即 $ \(a + b i\)plus.minus\(c + d i\)=\(a plus.minus c\)+\(b plus.minus d\)i $

#example[
计算 $\(3 - 4 i\)+\(- 2 + i\)-\(5 + 2 i\)$

]
#solution[
$ \(3 - 4 i\)+\(- 2 + i\)-\(5 + 2 i\)=\(3 - 2 - 5\)+\(- 4 + 1 - 2\)i = - 4 - 5 i . $

]
#example[
设复数 $z_1 = a + b i$, $z_2 = c + d i$, 试求这两复数在复平面上所描述的两点之间的距离.

]
#solution[
由于 $z_1$ 与 $z_2$ 在复平面上所描述的两点 $Z_1$, $Z_2$ 之间的距离 $d$⁠，就是向量 $accent(Z_1 Z_2, ⃗)$ 的模，因而，只要求出向量 $accent(Z_1 Z_2, ⃗)$ 所对应的复数，并求出它的模即可。

$because quad accent(Z_1 Z_2, ⃗) = accent(O Z_2, ⃗) - accent(O Z_1, ⃗)$

$therefore quad accent(Z_1 Z_2, ⃗)$ 对应于复数 $z_2 - z_1$⁠，于是 $ d & =\|accent(Z_1 Z_2, ⃗)\|=\|z_2 - z_1\|\
 & =\|\(c + d i\)-\(a + b i\)\|=\|\(c - a\)+\(d - b\)i\|\
 & = sqrt(\(c - a\)^2 +\(d - b\)^2) $

]
#example[
根据复数的几何意义及向量表示，试求复平面内以 $P\(a\,b\)$ 点为圆心，$r$ 为半径的圆的方程.

]
#figure([#fig("1-07");

  ],
  caption: [
  ]
)

#solution[
设圆心 $P\(a\,b\)$ 与复数 $p = a + b i$ 对应，圆上任一点 $Z\(x\,y\)$ 与复数 $z = x + y i$ 对应，由于已知圆的半径为 $r$⁠，因此，向量 $accent(P Z, ⃗)$ 的模就是定长 $r$. 即 $\|accent(P Z, ⃗)\|= r$.

又由于 $accent(P Z, ⃗) = accent(O Z, ⃗) - accent(O P, ⃗)$⁠，因而向量 $accent(P Z, ⃗)$ 就对应着复数 $z - p =\(x + y i\)-\(a + b i\)=\(x - a\)+\(y - b\)i$.

所以，圆上任一点 $Z$ 应满足 $\|accent(P Z, ⃗)\|=\|accent(O Z, ⃗) - accent(O P, ⃗)\|= r$⁠，即 $ \|z - p\|= r $ #noindent;这就是复平面上以 $P$ 为圆心，$r$ 为半径的圆的方程.

若进一步求出 $\|z - p\|=\|\(x - a\)+\(y - b\)i\|= sqrt(\(x - a\)^2 +\(y - b\)^2)$ 代入圆方程，并化简。就得出用实数表示的圆的一般方程：$ \(x - a\)^2 +\(y - b\)^2 = r^2 $ #noindent;特别地，当 $P$ 点在原点时，圆的方程就变成为 $ \|z\|= r $ #noindent;或 $ x^2 + y^2 = r^2 $

]
#exercise[
+ 利用复数加法法则和实数、虚数单位运算通性，验证：复数加法的交换律和结合律都成立.

+ #block(sticky: true)[计算（分别求和，再求差）：]

  #cols(2)[
  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + $\(2 + 3 i\)plus.minus\(1 + i\)$

  + $\(2 + 4 i\)plus.minus\(1 - i\)$

  + $\(- 3 i - 2\)plus.minus\(- 1 - i\)$

  + $- 2 i plus.minus\(- 4 + i\)$

  + $\(2 - 3 i\)plus.minus\(- 5 i\)plus.minus\(- 1 + 7 i\)$
  ]

  ]

+ 将上题中的各小题，用向量法求和.

+ 求证：两个互为共轭的复数之和为实数；两互为共轭的复数之差为纯虚数或零.

+ 想想看：在复平面上，以 $P\(a\,b\)$ 为圆心、以r为半径的圆内所有点的集合，可用什么样的条件给定？

]
=== 复数的乘、除法
==== 乘法
复数的乘法运算按照以下规定的法则进行：设 $z_1 = a + b i$, $z_2 = c + d i$ 是任意两复数，则 $ z_1 dot.op z_2 =\(a + b i\)dot.op\(c + d i\)=\(a c - b d\)+\(a d + b c\)i $ #noindent;其中，由于我们要求乘法运算仍应保持“运算通性”，因而，这一规定说明复数的乘法与多项式乘法是类似的，只要将结果中的 $i^2$ 换成 $- 1$⁠，分别合并实部与虚部即可．

可见，任意两个复数的乘积仍然是一个复数，也就是说，复数集对于乘法也是封闭的.

特别地，根据这一规定，对两个互为共轭复数 $z$ 与 $macron(z)$⁠，我们有 $ z dot.op macron(z) =\(x + y i\)dot.op\(x - y i\)= x^2 + y^2 $

因此，互为共轭的两复数之积是一个实数，它等于每一复数的模的平方，即 $ z dot.op macron(z) =\|z\|^2 =\|macron(z)\|^2 $

容易验证，复数乘法运算也具有“数系运算通性”，即对于任意 $z_1\,z_2\,z_3 in bb(C)$⁠，都有

#numbered-align(($z_1 dot.op z_2$, $eqph = z_2 dot.op z_1$, [(乘法交换律成立)]), ($z_1 dot.op\(z_2 dot.op z_3\)$, $eqph =\(z_1 dot.op z_2\)dot.op z_3 = z_1 dot.op z_2 dot.op z_3$, [(乘法结合律成立)]), ($z_1 dot.op\(z_2 + z_3\)$, $eqph = z_1 dot.op z_2 + z_1 dot.op z_3$, [(乘法对加法的分配律成立)]), ($z_1 dot.op 0$, $eqph = 0 dot.op z_1 = 0$, [(零的运算特性保持)]), ($z_1 dot.op 1$, $eqph = 1 dot.op z_1 = z_1$, [(1的运算特性保持)]));

还应该指出，复数乘方运算、幂的概念与实数完全相同，而且由于复数的乘法满足交换律、结合律，所以在实数集 $bb(R)$ 中的指数运算律，在复数集 $bb(C)$ 中仍然成立，即

对任意 $z_1\,z_2\,z in bb(C)$ 及 $m\,n in bb(N)$, 都有 $ z^m dot.op z^n & = z^(m + n)\
\(z^m\)^n & = z^(m dot.op n)\
\(z_1 dot.op z_2\)^n & = z_1^n dot.op z_2^n $

这样，我们由定义 $i^2 = - 1$⁠，运用指数运算律可以得出：$ i^3 & = i dot.op i^2 = - i\
i^4 & = i^2 dot.op i^2 =\(- 1\)dot.op\(- 1\)= 1\
i^5 & = i^4 dot.op i = i\
dots.h.c & dots.h.c $

一般地，对任意 $n in bb(N)$⁠，我们可归纳出：$ i^(4 n) & =\(i^4\)^n = 1^n = 1\
i^(4 n + 1) & = i^(4 n) dot.op i = i\
i^(4 n + 2) & = i^(4 n) dot.op i^2 = - 1\
i^(4 n + 3) & = i^(4 n) dot.op i^3 = - i $ #noindent;即，对于数 $n in bb(N)$⁠，则 $ i^(4 n) = 1\,#h(2em) i^(4 n + 1) = i\,#h(2em) i^(4 n + 2) = - 1\,#h(2em) i^(4 n + 3) = - i $

#example[
计算 $\(5 - 4 i\)\(1 - i\)\(- 2 + 3 i\)$.

]
#solution[
$ \(5 - 4 i\)\(1 - i\)\(- 2 + 3 i\)=\(1 - 9 i\)\(- 2 + 3 i\)= 25 + 21 i $

]
#example[
计算 $(- 1 / 2 + sqrt(3) / 2 i)^6$

]
#solution[
$ (- 1 / 2 + sqrt(3) / 2 i)^6 & = [(- 1 / 2 + sqrt(3) / 2 i)^2]^3\
 & = (1 / 4 - sqrt(3) / 2 i + frac(3 i^2, 4))^3 = (- 1 / 2 - sqrt(3) / 2 i)^3\
 & = (- 1 / 2)^3 - 3 (frac(- 1, 2))^2 dot.op sqrt(3) / 2 i + 3 (- 1 / 2) (sqrt(3) / 2 i)^2 - (sqrt(3) / 2 i)^3\
 & = - 1 / 8 - frac(3 sqrt(3), 8) i + 9 / 8 + frac(3 sqrt(3), 8) i = 1 $

]
==== 除法
复数的除法同样定义为乘法的逆运算，即：满足 $\(c + d i\)\(x + y i\)= a + b i thick\(c + d i eq.not 0\)$ 的复数 $x + y i$ 叫做复数 $a + b i$ 除以 $c + d i$ 的商，记作 $ x + y i = frac(a + b i, c + d i) quad upright("或") quad\(a + b i\)div\(c + d i\) $

根据两个共轭复数的乘积是一个实数以及乘法运算法则，可以得出复数的除法法则：

当 $c + d i eq.not 0$ 时，$ frac(a + b i, c + d i) = frac(\(a + b i\)\(c - d i\), \(c + d i\)\(c - d i\)) = frac(a c + b d, c^2 + d^2) + frac(b c - a d, c^2 + d^2) i $ #noindent;其中由于 $c + d i eq.not 0$⁠，因而 $c$⁠、$d$ 不同时为零，所以，$c^2 + d^2 eq.not 0$⁠．可见这样求得的商是唯一确定的一个复数，也就是说，复数集 $bb(C)$ 对于除法（除数不为零）也是封闭的.

#example[
计算 $\(2 - 3 i\)div\(- 3 + 4 i\)$

]
#solution[
$ \(2 - 3 i\)div\(- 3 + 4 i\) & = frac(2 - 3 i, - 3 + 4 i) = frac(\(2 - 3 i\)\(- 3 - 4 i\), \(- 3 + 4 i\)\(- 3 - 4 i\))\
 & = frac(- 18 + i, 25) = - 18 / 25 + 1 / 25 i $

]
可以看出，复数乘、除法法则的公式并不需要硬记，乘法类似于多项式乘法，除法可视为分式的分子、分母同乘以除数的共轭数，并注意正确应用运算通性及 $i^2 = - 1$⁠，就可得出结果.

#exercise[
+ 验证复数乘法对于加法满足分配律.

+ #block(sticky: true)[计算下列各式：]

  #cols(2)[
  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + $\(4 - 3 i\)\(- sqrt(3) i\)$

  + $(1 / 2 - sqrt(3) / 2 i)\(1 + i\)$

  + $(1 / 2 - sqrt(3) / 2 i)^3 dot.op (1 / 2 + sqrt(3) / 2 i)^3$

  + $\(- sqrt(77) + sqrt(112) i\)dot.op 0$
  ]

  ]

+ （口答）计算：$ i^13\,quad i^22\,quad i^36\,quad i^43\,quad i^70\,quad i^101\,quad i^355\,quad i^404\
  1 / i\,quad 1 / i^2\,quad 1 / i^3\,quad 1 / i^4\,quad 1 / i^11 $

+ #block(sticky: true)[计算：]

  #cols(3)[
  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + $frac(1, 1 + i)$

  + $frac(1, sqrt(2) i)$

  + $frac(2 i, 1 - i)$

  + $frac(2 + i, 7 + 4 i)$

  + $frac(1, \(9 + 2 i\)^2)$

  + $frac(\(1 - i\)^2, \(1 + i\)^3)$
  ]

  ]

]
=== 复数集内的多项式与方程
我们已经学习过实数范围内的多项式，而且明确多项式的元（未知数）只要求它满足“运算通性”，因此，对于复系数的多项式运算或未知数（元）取复数值的多项式求值，都可以与实系数多项式同样处理.

+ 复系数多项式的四则运算举例

  例如 $f\(x\)= x + i$, $g\(x\)= 2 x + 1 - i$⁠，则 $ f\(x\)+ g\(x\) & = 3 x + 1\
  f\(x\)- g\(x\) & = - x - 1 + 2 i\
  f\(x\)dot.op g\(x\) & = 2 x^2 +\(1 + i\)x +\(1 + i\)\
  g\(x\) & = 2 dot.op f\(x\)+ 1 - 3 i $ #noindent;这就是说，$g\(x\)$ 除以 $f\(x\)$ 可得商2，余 $1 - 3 i$（由综合除法得）.

+ 多项式求值举例

  例如 $f\(x\)= x^2 + x + 1$⁠，则 $ f\(i\) & = i^2 + i + 1 = i\
  f\(1 + i\) & =\(1 + i\)^2 +\(1 + i\)+ 1 = 2 + 3 i . $

+ 复系数多项式的因式分解举例

  例如：在复数范围内，$f\(x\)= x^2 + 1$ 可以进一步分解 $ x^2 + 1 = x^2 -\(- 1\)= x^2 - i^2 =\(x + i\)\(x - i\) $

+ 复数范围内的方程与方程组，均可按实数范围时的方法求解

+ 由带余除法导出的多项式的余式定理，对于复系数的多项式仍然适用. 例如 $f\(x\)= x^4 + 2 x^3 - 3 x^2 + 5$ 除以 $x - 2 i$ 所得的余式为：$ R = f\(2 i\)=\(2 i\)^4 + 2\(2 i\)^3 - 3\(2 i\)^2 + 5 = 33 - 16 i $

#example[
在复数范围内分解因式 $x^4 - 16$

]
#solution[
$ x^4 - 16 =\(x^2 - 4\)\(x^2 + 4\)=\(x - 2\)\(x + 2\)\(x - 2 i\)\(x + 2 i\) $

]
#example[
解方程 $x^2 - 6 x + 10 = 0$

]
#solution[
利用求根公式，得 $ x = frac(6 plus.minus sqrt(36 - 40), 2) = frac(6 plus.minus sqrt(- 4), 2) = 3 plus.minus i $ #noindent;$therefore quad x_1 = 3 + i\,quad x_2 = 3 - i$

]
#example[
解方程 $display(cases(2 x +\(1 + i\)y = 6 - 2 i, \(3 - i\)x + 2 i y = 13 - i))$

]
#solution[
用行列式法解，由于 $ Delta & = mat(delim: "|", 2, 1 + i; 3 - i, 2 i) = 4 i -\(1 + i\)\(3 - i\)= - 4 + 2 i\
Delta_1 & = mat(delim: "|", 6 - 2 i, 1 + i; 13 - i, 2 i) = - 10\
Delta_2 & = mat(delim: "|", 2, 6 - 2 i; 3 - i, 13 - i) = 10 + 10 i $ #noindent;$therefore quad x = Delta_1 / Delta = frac(- 10, - 4 + 2 i) = 2 + i\,quad y = Delta_2 / Delta = frac(10 + 10 i, - 4 + 2 i) = - 1 - 3 i$

因此，方程组的解集为 $\{\(x\,thick y\)\} = \{\(2 + i\,thick - 1 - 3 i\)\}$.

]
#exercise[
+ 已知 $f\(x\)= 2 x^2 +\(1 + i\)x +\(1 - i\)$⁠，试求 $f\(i\)$, $f\(- i\)$, $f\(1 + i\)$ 和 $f\(0\)$ 的值.

+ 在复数范围内分解因式 $2 x^4 - 5 x^2 - 3$.

+ 解方程组 $display(cases(i x - y = 2\(i - 1\), x - i y = 0))$

]
#heading(level: 3, numbering: none, outlined: false)[习题1.2]
+ 计算：

  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + $(2 / 3 + i) + (1 - 2 / 3 i) - (1 / 2 + 3 / 4 i)$

  + $\[\(a + b\)+\(a - b\)i\]-\[\(a - b\)-\(a + b\)i\]$
  ]

+ 设复数 $z_1 = 3 + 2 i$, $z_2 = - 2 + 5 i$ 在复平面上分别对应着点 $Z_1\,Z_2$. 试求向量 $accent(Z_1 Z_2, ⃗)$ 与 $accent(Z_2 Z_1, ⃗)$ 所表示的复数．

+ 试求复平面上点 $P\(2\,1\)$ 与点 $Q\(3\,- 1\)$ 之间的距离.

+ 求证：两个复数和的共轭复数，等于这两个复数的共轭复数之和.

+ 设 $z_1\,z_2$ 是非零复数，用几何方法证明：

  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + $class("normal", stretch(|, size: #1.2em))\|z_1\|-\|z_2\|class("normal", stretch(|, size: #1.2em)) lt.eq\|z_1 plus.minus z_2\|lt.eq\|z_1\|+\|z_2\|$

  + $\|z_1 + z_2\|^2 +\|z_1 - z_2\|^2 = 2\|z_1\|^2 + 2\|z_2\|^2$
  ]

+ 写出复平面内任意两点连线段的垂直平分线的方程。

+ 设复平面内有两定点 $F_1\(- sqrt(5)\,0\)$, $F_2\(sqrt(5)\,0\)$⁠，试求到这两定点的距离之和等于6的点的轨迹方程（椭圆方程）.

+ 计算：

  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + $\(sqrt(a) + sqrt(b) i\)\(sqrt(a) - sqrt(b) i\)quad\(a\,b in bb(R)\)$

  + $\(1 - 2 i\)\(- 0.2 + 0.3 i\)\(0.5 - 0.4 i\)$

  + $\(1 + i\)+\(2 - i^3\)+\(3 - i^5\)+\(4 - i^7\)$

  + $\(sqrt(2) - sqrt(2) i\)^2 dot.op (1 / 4 + 1 / 4 i)$

  + $\(a + b i\)^3 +\(a - b i\)^3$

  + $mat(delim: "|", 1 - i, i; 1 + i, - i) + mat(delim: "|", i, 1, 0; 1, 2 i, 1; 0, 1, 3 i)$
  ]

+ #block(sticky: true)[利用公式 $\(a + b i\)\(a - b i\)= a^2 + b^2$, 把下列各式分解因式：]

  #cols(2)[
  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + $a^4 - b^4$

  + $x^2 + 2 x + 3$

  + $a^2 + 2 a b + b^2 + c^2$

  + $x^3 - 2 x + 4$
  ]

  ]

+ 设 $omega = - 1 / 2 + sqrt(3) / 2 i$, 求证：

  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + $1 + omega + omega^2 = 0$

  + $omega^3 = 1$

  + $a^3 + b^3 + c^3 - 3 a b c =\(a + b + c\)\(a + omega b + omega^2 c\)\(a + omega^2 b + omega c\)$
  ]

+ #block(sticky: true)[计算：]

  #cols(2)[
  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + $frac(1, 2 - 4 i)$

  + $frac(3 - 2 i, 1 + i)$

  + $frac(1 + i, \(1 - i\)^2)$

  + $frac(1 + 2 i, 2 - i^3)$

  + $frac(\(1 - 2 i\)^2, 3 - 4 i) - frac(\(2 + i\)^2, 4 - 3 i)$

  + $frac(sqrt(3) - sqrt(2) i, sqrt(3) + sqrt(2) i) - frac(sqrt(2) + sqrt(3) i, sqrt(2) - sqrt(3) i)$
  ]

  ]

+ 若 $z_1\,z_2 in bb(C)$, 且 $z_1 dot.op z_2 = 0$, 则 $z_1\,z_2$ 中至少有一个等于0.

+ 已知 $1 / z = 1 / z_1 + 1 / z_2$, 且 $z_1 = 2 + 3 i$, $z_2 = 1 - i$, 求 $z$.

+ 已知 $z^2 = 5 - 12 i$, 求 $z$.

+ 证明下列各命题：

  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + 任两个复数的和、差、积、商 (除数不为零) 的共轭复数，分别等于这两个复数的共轭复数的和、差、积、商.

  + 若 $f\(x\)$ 是一个一元多项式，则对于任意复数 $z$, 有 $overline(f\(z\)) = f\(macron(z)\)$.
  ]

+ 已知 $f\(z\)= frac(z^2 - z + 1, z^2 + z + 1)$, 求 $f\(2 + 3 i\)$, $f\(1 - i\)$ 的值.

+ #staritem(17);如果规定 $i^0 = 1$, $i^(- m) = 1 / i^m thick\(m in bb(N)\)$, 证明：对一切整数 $n$⁠，以下等式成立：$ i^(4 n) = 1\,quad i^(4 n + 1) = i\,quad i^(4 n + 2) = - 1\,quad i^(4 n + 3) = - i . $

+ #staritem(18);根据 $i^2 = - 1$ 及要求复数运算满足“通性”, 试说明复数加法、乘法法则规定是合理的。

+ #block(sticky: true)[怎样的复数 $z$, 才能满足条件：]

  #cols(2)[
  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + $overline(z) = z$

  + $overline(z) = - z$

  + $z dot.op macron(z) =\[upright(R e)\(z\)\]^2$

  + $z - macron(z) = 2\[upright(I m)\(z\)\]$
  ]

  ]

+ 应用余式定理，求下列各余式；

  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + $f\(x\)= x^4 - 3 x^3 + 2 x^2 - x + i$ 除以 $g\(x\)= x + i$

  + $f\(x\)= x^4 - 3 x^3 + 2 x^2 - x + i$ 除以 $h\(x\)=\(1 + i\)x - 1 + i$
  ]

+ 应用综合除法，将多项式 $f (x) = x^3 + 3 (1 + i) x^2 - 2\(5 - 3 i\)x - 4 (1 + 2 i)$ 展开成 $\(x + i\)$ 的幂的代数和形式.

+ 解方程组 $display(cases(x_1 + 2 x_2 = 1 + i, i x_2 + x_3 = 2 i, i x_1 - i x_3 = 1 - i))$

== 复数的三角形式
我们已经建立了复数集 $ bb(C) = \{ x + y i divides x\,y in bb(R)\,thick i^2 = - 1 \} $ #noindent;与复平面上的点集以及复平面上的全体向量（由原点出发）集合间的一一对应关系，并且明确了复数的模与幅角、幅角的主值等概念，这一节我们将学习复数的另一种表达形式. 就是由它的模与幅角所确定的三角形式，这将有助于复数乘法、除法、乘方、开方运算的进一步简便。

=== 复数的三角形式
设 $z = a + b i\,thick\(a\,b in bb(R)\)$⁠，对应着复平面上的向量 $accent(O Z, ⃗)$（图1.8），并设它的模 $\|accent(O Z, ⃗)\|= r$⁠，幅角为 $theta$. 若 $z = a + b i eq.not 0$⁠，则可得 $ a = r dot.op cos theta\,#h(2em) b = r dot.op sin theta $

#figure([#fig("1-08");

  ],
  caption: [
  ]
)

$therefore quad z = a + b i = r (cos theta + i sin theta)$

因此，对于任何一个复数 $z = a + b i$⁠，都可以表示成 $r\(cos theta + i sin theta\)$ 的形式（其中 $r = sqrt(a^2 + b^2)$⁠），并叫做这个复数的三角形式（也叫做复数的极坐标形式）；为了方便，我们将 $a + b i$ 叫做复数的代数形式.

复数的代数形式 $z = a + b i$ 与三角形式 $z = r\(cos theta + i sin theta\)$ 之间，由图1.8可知有下列互化的关系：$ display(cases(a = r cos theta, b = r sin theta))\,#h(2em) display(cases(r = sqrt(a^2 + b^2), tan theta = b\/a)) $#noindent;（$theta$ 只要取主值，且要考虑 $a$⁠，$b$ 的正负）.

#example[
将下列复数的代数形式化为三角形式：

#cols(2)[
#block[
#set enum(numbering: enum-at(1, "(1)"))
+ $sqrt(3) + i$

+ $- 1 / 2 + sqrt(3) / 2 i$

+ $- 1$

+ $cos theta - i sin theta$
]

]
]
#solution[
#block[
#set enum(numbering: enum-at(1, "(1)"))
+ $r = sqrt(3 + 1) = 2$, $tan theta = 1 / sqrt(3) = sqrt(3) / 3$⁠，且 $a\,b$ 均为正值，$theta$ 在I象限，因而 $arg\(sqrt(3) + i\)= pi / 6$

  $therefore quad sqrt(3) + i = 2 (cos pi / 6 + i sin pi / 6)$

+ $r = sqrt(1 / 4 + 3 / 4) = 1$, $tan theta = - sqrt(3)$⁠，且 $a < 0\,b > 0$⁠，$theta$ 在II象限，因而 $theta = frac(2 pi, 3)$（主值）

  $therefore quad - 1 / 2 + sqrt(3) / 2 i = cos frac(2 pi, 3) + i sin frac(2 pi, 3)$

+ $r = 1$, $tan theta = 0$⁠，且 $a < 0$⁠，因此 $arg\(- 1\)= pi$

  $therefore quad - 1 = cos pi + i sin pi$

+ $r = sqrt(cos^2 theta + sin^2 theta) = 1$

  $therefore quad cos theta - i sin theta = cos (- theta) + i sin (- theta) = cos (2 pi - theta) + i sin (2 pi - theta)$
]

]
#example[
将下列复数的三角形式化为代数形式：

#cols(2)[
#block[
#set enum(numbering: enum-at(1, "(1)"))
+ $2 (cos pi / 4 + i sin pi / 4)$

+ $sqrt(2) (cos frac(5 pi, 6) + i sin frac(5 pi, 6))$

+ $cos 101 pi + i sin 101 pi$

+ $5 (cos pi / 2 + i sin pi / 2)$
]

]
]
#solution[
#block[
#set enum(numbering: enum-at(1, "(1)"))
+ $2 (cos pi / 4 + i sin pi / 4) = sqrt(2) + sqrt(2) i$

+ $sqrt(2) (cos frac(5 pi, 6) + i sin frac(5 pi, 6)) = - sqrt(6) / 2 + sqrt(2) / 2 i$

+ $cos 101 pi + i sin 101 pi = cos pi + i sin pi = - 1$

+ $5 (cos pi / 2 + i sin pi / 2) = 5 i$
]

]
#rmk[
复数的三角形式 $r\(cos theta + i sin theta\)$ 中，必须满足 $r > 0$⁠、式中保持“$+$⁠”号两特征，至于幅角 $theta$ 则不一定非要取主值，除常用主值表示外，也可以在幅角中任取一个。例如，$ sqrt(2) - sqrt(2) i = 2 [cos (- pi / 4) + i sin (- pi / 4)] $ #noindent;也是复数 $sqrt(2) - sqrt(2) i$ 的三角形式.

此外，若 $z = a + b i = 0$⁠，即 $z = 0 + 0 i$⁠，这时 $r = 0$⁠，其幅角是任意实数，则 $0 = 0\(cos theta + i sin theta\)$.

]
#exercise[
+ #block(sticky: true)[判断下列给出的是不是复数的三角形式？若不是，请把它们化为三角形式：]

  #cols(2)[
  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + $2 (cos pi / 4 - i sin pi / 4)$

  + $- 2 (cos pi / 3 + i sin pi / 3)$

  + $1 / 2 (cos frac(3 pi, 4) + i sin frac(3 pi, 4))$

  + $cos frac(7 pi, 5) + i sin (- frac(3 pi, 5))$
  ]

  ]

+ #block(sticky: true)[将复数表示成三角形式：]

  #cols(3)[
  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + $2$

  + $- 3$

  + $4 i$

  + $- 2 i$

  + $1 + i$

  + $- 4 + 3 i$

  + $- 1 - sqrt(3) i$

  + $sqrt(3) / 2 - 1 / 2 i$
  ]

  ]

+ #block(sticky: true)[写出下列复数的代数形式：]

  #cols(2)[
  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + $3 (cos pi / 3 + i sin pi / 3)$

  + $sqrt(2) (cos frac(3 pi, 4) + i sin frac(3 pi, 4))$

  + $1 / sqrt(3) [cos (- pi / 6) + i sin (- pi / 6)]$

  + $5 (cos frac(7 pi, 2) + i sin frac(7 pi, 2))$
  ]

  ]

+ 想一想：“两个复数若相等，则它们的模与幅角必定相等”对吗？为什么？

]
=== 再谈复数的乘、除法和乘方运算
通过第二节对复数四则运算的学习，我们会感到：复数的代数形式在进行加、减法运算时，步骤十分简明易学，但进行乘、除法和乘方运算时，却显得繁杂.

我们将会看到，复数的三角形式在进行乘、除、乘方甚至开方运算时，比代数形式要简捷得多.

#blk[定理1][
两个复数的乘积是一个复数，它的模等于两乘数的模的乘积；它的幅角等于两乘数的幅角的和，即

设 $z_1 = r_1\(cos theta_1 + i sin theta_1\)$, $z_2 = r_2\(cos theta_2 + i sin theta_2\)$⁠，则 $ z_1 dot.op z_2 & = r_1\(cos theta_1 + i sin theta_1\)dot.op r_2\(cos theta_2 + i sin theta_2\)\
 & = r_1 dot.op r_2 [cos (theta_1 + theta_2) + i sin (theta_1 + theta_2)] $

]
#proof[
$ because quad z_1 dot.op z_2 & = r_1 dot.op r_2\(cos theta_1 + i sin theta_1\)\(cos theta_2 + i sin theta_2\)\
 & = r_1 dot.op r_2 class("opening", stretch(\[, size: #1.2em)) (cos theta_1 dot.op cos theta_2 - sin theta_1 dot.op sin theta_2)\
 & #h(2em) #h(2em) eqph + i (cos theta_1 dot.op sin theta_2 + sin theta_1 dot.op cos theta_2) class("closing", stretch(\], size: #1.2em))\
 & = r_1 dot.op r_2 [cos (theta_1 + theta_2) + i sin (theta_1 + theta_2)] $

$therefore quad$ 定理成立.

]
根据这一定理，联系复数的向量表示，我们可以给出两复数相乘的几何意义：

两复数 $z_1 = r_1\(cos theta_1 + i sin theta_1\)$ 与 $z_2 = r_2\(cos theta_2 + i sin theta_2\)$ 相乘时，可以先在复平面上画出它们对应的向量 $accent(O Z_1, ⃗)$, $accent(O Z_2, ⃗)$⁠，然后将 $accent(O Z_1, ⃗)$ 旋转一个角 $\|theta_2\|$（若 $theta_2 > 0$ 时，就按逆时针方向旋转 $accent(O Z_1, ⃗)$⁠；若 $theta_2 < 0$ 时，就按顺时针方向旋转 $accent(O Z_1, ⃗)$⁠），再把它的模变为原来的 $r_2$ 倍，就可得到向量 $accent(O Z, ⃗)$（图1.9所示），这一向量就对应着所求两复数的积.

#figure([#fig("1-09");

  ],
  caption: [
  ]
)

#blk[推论][
$n$ 个复数的积仍是一个复数，它的模等于 $n$ 个乘数的模的积，它的幅角等于 $n$ 个乘数的幅角的和。（可用数学归纳法证明）即：$ z_1 dot.op z_2 thin dots.h.c thin z_n & = r_1 (cos theta_1 + i sin theta_1) dot.op r_2 (cos theta_2 + i sin theta_2)\
 & #h(2em) #h(2em) thin dots.h.c thin r_n\(cos theta_n + i sin theta_n\)\
 & = r_1 dot.op r_2 thin dots.h.c thin r_n\[cos\(theta_1 + theta_2 + dots.h.c + theta_n\)\
 & #h(2em) #h(2em) #h(2em) eqph + i sin\(theta_1 + theta_2 + dots.h.c + theta_n\)\] $

]
这样，在计算复数的乘积时，只要先化为三角形式。再求出模之积与幅角之和，就可写出所求乘积的三角形式。

在上边的推论中，如果 $z_1 = z_2 = dots.h.c = z_n = z$, 即 $r_1 = r_2 = dots.h.c = r_n = r$ 且 $theta_1 = theta_2 = dots.h.c = theta_n = theta$. 也就是说有 $n$ 个相同的复数相乘时，那么就得到：$ [r \( cos theta + i sin theta \)]^n = r^n\(cos n theta + i sin n theta\)quad\(n in bb(N)\) $ #noindent;这就是著名的棣美佛定理.

#blk[定理2（棣美佛定理）][
复数的 $n$（$n in bb(N)$⁠）次方幂仍是一个复数，它的模等于这个复数的模的 $n$ 次幂，它的幅角等于这个复数的幅角的 $n$ 倍.

]
#example[
计算：$(cos pi / 6 + i sin pi / 6) dot.op sqrt(2) (cos pi / 12 + i sin pi / 12)$

]
#solution[
由乘法定理可知：$ upright("原式") & = sqrt(2) [cos (pi / 6 + pi / 12) + i sin (pi / 6 + pi / 12)]\
 & = sqrt(2) (cos pi / 4 + i sin pi / 4)\
 & = sqrt(2) (sqrt(2) / 2 + sqrt(2) / 2 i) = 1 + i $

]
#example[
计算 $\(1 - i\)^10$

]
#solution[
先将 $1 - i$ 化为三角形式：$ 1 - i = sqrt(2) [cos (- pi / 4) + i sin (- pi / 4)] $ #noindent;由棣美佛定理，得 $ \(1 - i\)^10 & = [sqrt(2) (cos frac(- pi, 4) + i sin frac(- pi, 4))]^10\
 & = (sqrt(2))^10 dot.op [cos (- frac(5 pi, 2)) + i sin (- frac(5 pi, 2))]\
 & = 2^5 (cos pi / 2 - i sin pi / 2) = - 32 i $

]
#example[
如果将复数 $z = 2 + 3 i$ 在复平面上所对应的向量 $accent(O Z, ⃗)$ 旋转 $150 degree$⁠，那么，在复平面上所得新向量 $accent(O Z_1, ⃗)$ 将对应哪一个复数（用代数形式表示）.

]
#solution[
由复数乘法的几何意义知道，一个向量（对应一个复数）旋转一个角度 $theta < 0$⁠，就相当于这个复数与模长为1，幅角主值为 $theta$ 的另一复数（对应于幅角为 $theta$ 的单位向量）作乘积.

因此，所求的复数就等于复数 $2 + 3 i$ 与复数 $1 dot.op\(cos 150 degree + i sin 150 degree\)$ 的乘积，即 $ \(2 + 3 i\)dot.op\(cos 150 degree + i sin 150 degree\) & =\(2 + 3 i\)(- sqrt(3) / 2 + 1 / 2 i)\
 & = - frac(2 sqrt(3) + 3, 2) + frac(2 - 3 sqrt(3), 2) i $

]
#blk[定理3][
两个复数的商，在除数不为零的条件下仍是一个复数，它的模等于两个复数的模的商，它的幅角等于两复数的幅角的差（被除数的幅角减去除数的幅角）. 即：当 $z_2 eq.not 0$ 时，有 $ z_1 / z_2 & = frac(r_1\(cos theta_1 + i sin theta_1\), r_2\(cos theta_2 + i sin theta_2\))\
 & = r_1 / r_2 [cos (theta_1 - theta_2) + i sin (theta_1 - theta_2)] $

]
#proof[
不妨设 $z = r_1 / r_2 [cos (theta_1 - theta_2) + i sin (theta_1 - theta_2)]$⁠，则由乘法，$ z dot.op z_2 & = r_1 / r_2 dot.op r_2 [cos (theta_1 - theta_2 + theta_2) + i sin (theta_1 - theta_2 + theta_2)]\
 & = r_1\(cos theta_1 + i sin theta_1\)= z_1 $

又由除法的定义，可得 $ z_1 / z_2 = z quad\(z_2 eq.not 0\) $

]
#example[
计算 $(sqrt(3) - i) div (sqrt(3) + i)$

]
#solution[
$because quad sqrt(3) - i = 2 (sqrt(3) / 2 - 1 / 2 i) = 2 [cos (- pi / 6) + i sin (- pi / 6)]$

$sqrt(3) + i = 2 (cos pi / 6 + i sin pi / 6)$

$ therefore quad (sqrt(3) - i) div (sqrt(3) + i) & =\(2 div 2\)[cos (- pi / 6 - pi / 6) + i sin (- pi / 6 - pi / 6)]\
 & = 1 dot.op [cos (- pi / 3) + i sin (- pi / 3)]\
 & = 1 / 2 - sqrt(3) / 2 i $

]
#example[
已知平面内并列的三个边长为1的正方形（如图1.10所示），利用复数证明：$angle 1 + angle 2 - angle 3 = 0$.

]
#figure([#fig("1-10");

  ],
  caption: [
  ]
)

#solution[
如图建立坐标系以确定复平面，不在轴上的三个正方形顶点设为 $Z_1\,Z_2\,Z_3$⁠．显然，它们分别对应着复数 $3 + i$, $2 + i$, $1 + i$\; 由于平行线的内错角相等，因而 $angle 1$⁠、$angle 2$⁠、$angle 3$ 分别等于复数 $3 + i$, $2 + i$⁠，$1 + i$ 的幅角的主值。

又由复数的乘、除法可知，$angle 1 + angle 2 - angle 3$ 就是复数 $frac(\(3 + i\)\(2 + i\), 1 + i)$ 的幅角，而 $ frac(\(3 + i\)\(2 + i\), 1 + i) = frac(5 + 5 i, 1 + i) = 5 $ #noindent;它的幅角的主值是0，所以 $angle 1 + angle 2 - angle 3 = 0$.

]
#exercise[
+ 计算

  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + $sqrt(2) (cos pi / 6 + i sin pi / 6) dot.op sqrt(2) / 2 (cos pi / 4 + i sin pi / 4)$

  + $2 (cos frac(4 pi, 3) + i sin frac(4 pi, 3)) dot.op 3 (cos frac(5 pi, 6) + i sin frac(5 pi, 6))$

  + $sqrt(3)\(cos 240 degree + i sin 240 degree\)dot.op sqrt(3) / 3\(cos 150 degree + i sin 150 degree\)$

  + $4\(cos 18 degree + i sin 18 degree\)dot.op\[cos (- 306 degree) + i sin (- 306 degree)\]dot.op 5\(cos 108 degree + i sin 108 degree\)$
  ]

+ 用棣美佛定理计算：

  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + $[2 sqrt(2) \( cos 18 degree + i sin 18 degree \)]^5$

  + $\(- 1 - i\)^6$

  + $[sqrt(3) (cos frac(3 pi, 4) + i sin frac(3 pi, 4))]^4$

  + $\(2 - i\)dot.op (- 1 / 2 + sqrt(3) / 2 i)^7$
  ]

+ 计算：

  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + $12 (cos frac(7 pi, 4) + i sin frac(7 pi, 4)) div 6 (cos frac(2 pi, 3) + i sin frac(2 pi, 3))$

  + $2 div\(cos 45 degree + i sin 45 degree\)$

  + $- i div 2 (cos frac(4 pi, 3) + i sin frac(4 pi, 3))$

  + $\(- 1 + i\)dot.op sqrt(2)\(cos 120 degree + i sin 120 degree\)div 3\(cos 55 degree + i sin 55 degree\)$
  ]

+ 你能说明复数除法的几何意义吗？

+ 利用复数证明：在 $upright(R t) triangle.stroked.t A B C$ 中，$angle C = 90 degree$, $A C = 3 B C$⁠，$E$ 为 $A C$ 上一点，且 $C E = 2 E A$⁠，则：$ angle C B E + angle C B A - pi / 4 = pi / 2 $

]
=== 复数的开方运算
开方是乘方的逆运算，求一个复数 $a + b i$ 的 $n$ 次方根，就是求一个数 $z$⁠，使得 $z^n = a + b i$. 凡满足这一等式的数 $z$⁠，就叫做复数 $a + b i$ 的 $n$ 次方根.

设 $a + b i = r\(cos theta + i sin theta\)$, $z = rho\(cos phi + i sin phi\)$⁠，则对于任意自然数 $n$⁠，都有 $ r\(cos theta + i sin theta\)=\[rho\(cos phi + i sin phi\)\]^n = rho^n\(cos n phi + i sin n phi\) $

由于两复数相等，它们的模相等，而它们的幅角可以相差 $2 pi$ 的整数倍，所以 $ display(cases(rho^n = r, n phi = theta + 2 k pi quad\(k in bb(Z)\))) $

因而可得 $ rho = root(n, r)\,#h(2em) phi = frac(theta + 2 k pi, n) $

因此，复数 $r\(cos theta + i sin theta\)$ 的 $n$ 次方根是 $ root(n, r) (cos frac(2 k pi + theta, n) + i sin frac(2 k pi + theta, n)) $ #noindent;其中，当 $k = 0\,1\,dots.h\,n - 1$ 各值时，可以得到上式的 $n$ 个不同值；当 $k$ 继续取 $n\,n + 1\,dots.h$ 以及其他的值时，由于正弦、余弦函数都是以 $2 pi$ 为周期，上式的值又重复出现 $k$ 取 $0\,1\,dots.h\,n - 1$ 时的同样结果．所以，复数的 $n$ 次（$n in bb(N)$⁠）方根是 $n$ 个复数，它们的模都等于这个复数的模的 $n$ 次算术根，它们的幅角分别等于这个复数的幅角与 $2 pi$ 的 $0\,1\,dots.h\,n - 1$ 倍的和的 $n$ 分之一. 即 $ root(n, r\(cos theta + i sin theta\)) = root(n, r) (cos frac(theta + 2 k pi, n) + i sin frac(theta + 2 k pi, n)) quad\(k = 0\,1\,dots.h\,n - 1\) $

#rmk[
在复数范围内，$root(n, z)$ 应表示 $n$ 个复数，这 $n$ 个复数都是 $z$ 的 $n$ 次方根，为了区别于在实数范围内，$root(n, a)$ 仅表示算术根，我们约定：被开方数是实数时，$root(n, a) thick\(a in bb(R)\)$ 仍表示算术根（单值），$root(n, a + 0 i)$ 或 $root(n, a\(cos 0 + i sin 0\)) thick\(a > 0\)$ 或 $root(n, \|a\|\(cos pi + i sin pi\))$ 都表示 $n$ 个 $n$ 次方根（多值）. 至于被开方数是虚数时，$root(n, a + b i) thick\(b eq.not 0\)$ 或 $root(n, r\(cos theta + i sin theta\))$ 都表示 $n$ 个方根.

]
#example[
求 $i$ 的平方根.

]
#solution[
$because quad i = cos pi / 2 + i sin pi / 2$

$therefore quad sqrt(i) = cos frac(pi / 2 + 2 k pi, 2) + i sin frac(pi / 2 + 2 k pi, 2) = cos (pi / 4 + k pi) + i sin (pi / 4 + k pi) quad\(k = 0\,1\)$

因此，$i$ 的平方根是 $ z_1 = cos pi / 4 + i sin pi / 4 = sqrt(2) / 2 + sqrt(2) / 2 i #h(2em) & upright("（") k = 0 upright("时）")\
z_2 = cos frac(5 pi, 4) + i sin frac(5 pi, 4) = - sqrt(2) / 2 - sqrt(2) / 2 i #h(2em) & upright("（") k = 1 upright("时）") $

]
#example[
求 $- 1 + i$ 的四次方根.

]
#solution[
$because quad - 1 + i = sqrt(2) (cos frac(3 pi, 4) + i sin frac(3 pi, 4))$

$therefore quad root(4, - 1 + i) = root(8, 2) (cos frac(frac(3 pi, 4) + 2 k pi, 4) + i sin frac(frac(3 pi, 4) + 2 k pi, 4)) quad\(k = 0\,1\,2\,3\)$

因此，$- 1 + i$ 的四次方根是：$ z_1 = root(8, 2) (cos frac(3 pi, 16) + i sin frac(3 pi, 16)) #h(2em) & \(k = 0\)\
z_2 = root(8, 2) (cos frac(11 pi, 16) + i sin frac(11 pi, 16)) #h(2em) & \(k = 1\)\
z_3 = root(8, 2) (cos frac(19 pi, 16) + i sin frac(19 pi, 16)) #h(2em) & \(k = 2\)\
z_4 = root(8, 2) (cos frac(27 pi, 16) + i sin frac(27 pi, 16)) #h(2em) & \(k = 3\) $

]
#example[
求 $- 3$ 的平方根.

]
#solution[
$because quad - 3 = 3\(cos pi + i sin pi\)$

$therefore quad sqrt(- 3 + 0 i) = sqrt(3) (cos frac(pi + 2 k pi, 2) + i sin frac(pi + 2 k pi, 2)) quad\(k = 0\,1\)$

因此，$- 3$ 的平方根有两个复数：$ z_1 & = sqrt(3) (cos pi / 2 + i sin pi / 2) = sqrt(3) i\
z_2 & = sqrt(3) (cos frac(3 pi, 2) + i sin frac(3 pi, 2)) = - sqrt(3) i $

]
一般来说，在复数范围内，任一个负实数 $- a$ 有两个平方根：$plus.minus sqrt(a) i$.

这样一来，以前在解实系数一元二次方程 $a x^2 + b x + c = 0$（$a eq.not 0$⁠）时，如果 $b^2 - 4 a c < 0$⁠，在实数范围内无解. 现在，在复数范围内，方程就有两个解：$ x = frac(- b plus.minus sqrt(-\(b^2 - 4 a c\)) i, 2 a) #h(2em)\(b^2 - 4 a c < 0\) $ #noindent;显然，这两个解是一对共轭复数.

#example[
解方程 $x^2 - 2 x + 6 = 0$.

]
#solution[
$because quad Delta = b^2 - 4 a c = 4 - 24 = - 20 < 0$

$therefore quad x = frac(2 plus.minus sqrt(20) i, 2) = 1 plus.minus sqrt(5) i$

]
由以上可知，复数集 $bb(C)$ 对于开方运算是封闭的，这是复数系不同于实数系的一个重要性质.

利用复数开方的方法，我们可以解一些特殊的高次方程，例如，

形如 $a_n x^n + a_0 = 0 thick\(a_n eq.not 0\)$ 的方程，我们叫做二项方程，就可以完整地解出，即，首先化成 $x^n = b quad (b = - a_0 / a_n)$ 的形式，从而解出 $x$ 的 $n$ 个值.

#example[
解方程 $x^5 + 243 = 0$.

]
#solution[
$because quad x^5 = - 243 = 243\(- 1 + 0 i\)= 243\(cos pi + i sin pi\)$

$therefore quad x = root(5, 243) (cos frac(pi + 2 k pi, 5) + i sin frac(pi + 2 k pi, 5)) quad\(k = 0\,1\,2\,3\,4\)$

即 $ x_1 & = 3 (cos pi / 5 + i sin pi / 5) #h(2em) quad\(k = 0\)\
x_2 & = 3 (cos frac(3 pi, 5) + i sin frac(3 pi, 5)) #h(2em)\(k = 1\)\
x_3 & = 3 (cos pi + i sin pi) #h(2em) #h(2em)\(k = 2\)\
x_4 & = 3 (cos frac(7 pi, 5) + i sin frac(7 pi, 5)) #h(2em)\(k = 3\)\
x_5 & = 3 (cos frac(9 pi, 5) + i sin frac(9 pi, 5)) #h(2em)\(k = 4\) $

]
仔细观察这五个解可以发现：它们的模都相同，它们的幅角依次相差 $frac(2 pi, 5)$⁠：因此，这个方程的五个解所对应的复平面内的五个点是均匀地分布在以原点为圆心，以3为半径的圆周上（图1.11）．这就是此方程的解的几何意义。

#figure([#fig("1-11");

  ],
  caption: [
  ]
)

一般地，二项方程 $x^n = b thick\(b in bb(C)\)$ 有 $n$ 个复数根，这些根的几何意义是复平面内的 $n$ 个点（或向量），这些点（或向量的终点）均匀地分布在以原点为圆心，以 $root(n, \|b\|)$ 为半径的圆上.

还要进一步指出：对一般的实系数 $n$ 次方程在复数集内也是恰有 $n$ 个根，但未必都是实数根，可能会有虚根（如例1.25).

可以证明，实系数方程的虚根总是成对地出现的，即

#blk[定理4（虚根成对定理）][
如果 $z = a + b i$ 是实系数方程 $f\(x\)= a_n x^n + a_(n - 1) x^(n - 1) + dots.h.c + a_1 x + a_0 = 0$ 的一个根，那么 $macron(z) = a - b i$ 也是方程 $f\(x\)= 0$ 的一个根.

]
#proof[
由于 $z = a + b i$ 是方程的根，所以 $ f\(z\)= f\(a + b i\)= 0 $ #noindent;但根据习题1.2第15题（2）已证明的结论，应有 $ f\(macron(z)\)= f\(a - b i\)= f\(overline(a + b i)\)= macron(0) = 0 $ #noindent;因此，$macron(z) = a - b i$ 也是方程 $f\(x\)= 0$ 的根.

]
#example[
已知方程 $2 x^4 - x^3 + 5 x^2 + 13 x + 5 = 0$ 的一个根为 $1 - 2 i$⁠，求这个方程的其余根.

]
#solution[
这是一个实系数一元四次方程，由定理4及已知一根 $1 - 2 i$ 可知，这一方程必有根 $1 + 2 i$.

又由因式定理知：$\(x - 1 + 2 i\)\(x - 1 - 2 i\)= x^2 - 2 x + 5$ 是方程左边的因式，利用长除法可得 $ 2 x^4 - x^3 + 5 x^2 + 13 x + 5 =\(2 x^2 + 3 x + 1\)\(x^2 - 2 x + 5\) $

所以只要解方程 $2 x^2 + 3 x + 1 = 0$ 的根：$x_1 = - 1$, $x_2 = - 1 / 2$⁠，就可知：

原方程的其余三根为 $1 + 2 i\,thick - 1\,thick - 1 / 2$.

]
#exercise[
+ 直接说出以下各数的平方根：$ - 4\,quad - 2.25\,quad - 3\,quad - t thick\(t in bb(R)^(+)\)\,quad - m^2 thick\(m in bb(R)\)\
  a thick\(a in bb(R)\)\,quad a - b thick\(a\,b in bb(R)\) $

+ 求下列各数的方根：

  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + $- i\,thick sqrt(2) - sqrt(2) i\,thick - 1 / 2 + sqrt(3) / 2 i$ 的平方根；

  + $27\,thick 1 + i$ 的立方根；

  + $- i$ 的五次方根．
  ]

+ #block(sticky: true)[解方程（在复数范围内）：]

  #cols(2)[
  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + $x^2 + x + 16 = 0$

  + $x^3 - 1 = 0$

  + $x^4 + 16 = 0$

  + $x^5 - i = 0$
  ]

  ]

+ 已知方程 $4 x^4 - 2 x^3 - x - 1 = 0$ 有一个根为 $- i / sqrt(2)$⁠，试求这个方程的其余三个根.

]
=== 单位根
我们把方程 $x^n = 1$ 在复数范围内的 $n$ 个根，叫做 $n$ 次单位根．也就是在复数范围内，1的 $n$ 个不同的 $n$ 次方根，都叫 $n$ 次单位根. 即

$because quad x^n = 1 = cos 0 + i sin 0$

$therefore quad x = 1 dot.op (cos frac(2 k pi, n) + i sin frac(2 k pi, n)) quad\(k = 0\,1\,dots.h\,n - 1\)$

这样可得出 $n$ 个单位根：$ x_1 & = cos 0 + i sin 0 = 1 #h(2em) #h(2em) upright("（当") k = 0 upright("时）")\
x_2 & = cos frac(2 pi, n) + i sin frac(2 pi, n) #h(2em) #h(2em) upright("（当") k = 1 upright("时）")\
x_3 & = cos frac(4 pi, n) + i sin frac(4 pi, n) #h(2em) #h(2em) upright("（当") k = 2 upright("时）")\
dots.h.c & dots.h.c thin dots.h.c\
x_n & = cos frac(2\(n - 1\)pi, n) + i sin frac(2\(n - 1\)pi, n) #h(2em) upright("（当") k = n - 1 upright("时）") $

由二项方程解的几何意义可以知道：$n$ 个不同的单位根可用复平面内以原点为圆心的单位圆的一个内接正 $n$ 边形顶点来表示.

#example[
求三次单位根．

]
#solution[
$because quad x^3 = 1 = cos 0 + i sin 0$

$therefore quad x = cos frac(2 k pi, 3) + i sin frac(2 k pi, 3) quad\(k = 0\,1\,2\)$

因此，三个三次单位根为 (如图1.12)：$ x_1 & = cos 0 + i sin 0 = 1\
x_2 & = cos frac(2 pi, 3) + i sin frac(2 pi, 3) = - 1 / 2 + sqrt(3) / 2 i\
x_3 & = cos frac(4 pi, 3) + i sin frac(4 pi, 3) = - 1 / 2 - sqrt(3) / 2 i $

]
#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (45%, 45%,), column-gutter: 1em, align: center + bottom, figure([#fig("1-12");], caption: []), figure([#fig("1-13");], caption: []))));

#example[
求四次单位根

]
#solution[
$because quad x^4 = 1$

$therefore quad x = cos frac(2 k pi, 4) + i sin frac(2 k pi, 4) quad\(k = 0\,1\,2\,3\)$

因此，四个四次单位根为 (如图1.13)：

#align(center)[
#table(
  columns: (20% + 12pt, 15% + 12pt, 20% + 12pt, 15% + 12pt,),
  align: (left + top, left + top, left + top, left + top,),
  [$x_1 = 1$],
  [$\(k = 0\)$],
  [$x_2 = i$],
  [$\(k = 1\)$],
  [$x_3 = - 1$],
  [$\(k = 2\)$],
  [$x_4 = - i$],
  [$\(k = 3\)$],
);

]
]
如果用复数的向量表示法来看这 $n$ 个不同的 $n$ 次单位根的话，我们会发现单位根之间还有一定的关系.

#figure([#fig("1-14");

  ],
  caption: [
  ]
)

+ 如图1.14所示，在复平面上 $n$ 个 $n$ 次单位根正好将单位圆 $n$ 等分，其中：$x_1 = 1$⁠，单位向量 $accent(O x_1, ⃗)$ 旋转 $frac(2 pi, n)$ 得：$x_2 = cos frac(2 pi, n) + i sin frac(2 pi, n)$ 记为 $omega$⁠；再旋转 $frac(2 pi, n)$ 得：$x_3 = cos frac(4 pi, n) + i sin frac(4 pi, n) = omega^2$⁠；再旋转 $frac(2 pi, n)$ 可一样地得：$x_4 = cos frac(6 pi, n) + i sin frac(6 pi, n) = omega^3$⁠，……

  同理可得：$ x_n = cos frac(2\(n - 1\)pi, n) + i sin frac(2\(n - 1\)pi, n) = omega^(n - 1) $

  因此，设 $omega = cos frac(2 pi, n) + i sin frac(2 pi, n)$⁠，则 $n$ 个 $n$ 次单位根又可写成：$ 1\,thick omega\,thick omega^2\,thick dots.h\,omega^(n - 1) $

+ 进一步考虑这 $n$ 个单位根的关系，可以发现：

  $ because quad omega^(n - 1) = cos frac(2\(n - 1\)pi, n) + i sin frac(2\(n - 1\)pi, n) & = cos (frac(- 2 pi, n)) + i sin (frac(- 2 pi, n))\
   & = cos frac(2 pi, n) - i sin frac(2 pi, n) = overline(omega) $

  $therefore quad omega^(n - 1) = overline(omega) = 1 / omega = omega^(- 1)$

  同理可得：$ omega^(n - 2) = overline(omega^2) = omega^(- 2)\,dots.h $

  $ display(cases(upright("当") n upright("为偶数时") & quad omega^(tfrac(n, 2) + 1) = overline(omega^(tfrac(n, 2) - 1)) = omega^(- (tfrac(n, 2) - 1)) = omega^(- tfrac(n, 2) + 1)\,quad omega^(tfrac(n, 2)) = - 1, upright("当") n upright("为奇数时") & quad omega^(tfrac(n + 1, 2)) = overline(omega^(tfrac(n - 1, 2))) = omega^(- tfrac(n - 1, 2)))) $ #noindent;所以，这 $n$ 个 $n$ 次单位根还可以写成：

  - 当 $n$ 为偶数时（如例1.29）：$ 1\,thick omega\,thick omega^2\,thick dots.h\,thick omega^(tfrac(n, 2) - 1)\,thick - 1\,thick omega^(- (tfrac(n, 2) - 1))\,thick dots.h\,thick omega^(- 2)\,thick omega^(- 1) $ #noindent;或 $ 1\,thick omega\,thick omega^2\,thick dots.h\,thick omega^(tfrac(n, 2) - 1)\,thick - 1\,thick overline(omega^(tfrac(n, 2) - 1))\,thick dots.h\,thick overline(omega^2)\,thick overline(omega) $

  - 当 $n$ 为奇数时（如例1.28）：$ 1\,thick omega\,thick omega^2\,thick dots.h\,thick omega^(tfrac(n - 1, 2))\,thick omega^(- tfrac(n - 1, 2))\,thick dots.h\,thick omega^(- 2)\,thick omega^(- 1) $ #noindent;或 $ 1\,thick omega\,thick omega^2\,thick dots.h\,thick omega^(tfrac(n - 1, 2))\,thick overline(omega^(tfrac(n - 1, 2)))\,thick dots.h\,thick overline(omega^2)\,thick overline(omega) $ #noindent;其中，$omega = cos frac(2 pi, n) + i sin frac(2 pi, n)$.

  例如，三次单位根为 $1\,thick omega\,thick omega^(- 1)$（或 $macron(omega)$⁠），其中 $ omega = cos frac(2 pi, 3) + i sin frac(2 pi, 3) = - 1 / 2 + sqrt(3) / 2 i $

  又如，四次单位根为 $1\,thick omega\,thick - 1\,thick omega^(- 1)$（或 $macron(omega)$⁠），其中 $ omega = cos frac(2 pi, 4) + i sin frac(2 pi, 4) = i $

+ 利用单位根，可以方便地求出任一个正实数 $a$（$a > 0$ 且 $a eq.not 1$⁠）的 $n$ 个 $n$ 次方根．

  这就是：若 $a > 0$ 且 $a eq.not 1$⁠，则 $a$ 的 $n$ 个 $n$ 次方根即方程 $x^n = a$ 的解为：$ display(cases(x_1 = root(n, a), x_2 = root(n, a) dot.op omega, x_3 = root(n, a) dot.op omega^2, dots.h.c thin dots.h.c thin dots.h.c, x_n = root(n, a) dot.op omega^(n - 1))) #h(2em) upright("这里") omega = cos frac(2 pi, n) + i sin frac(2 pi, n) upright("是单位根之一") $

#exercise[
试求出六次和七次单位根，并分别检验它们之间的关系.

]
#heading(level: 3, numbering: none, outlined: false)[习题1.3]
+ #block(sticky: true)[把下列复数化成三角形式表示：]

  #cols(3)[
  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + 6

  + $6 i$

  + $1 + i$

  + $1 / 2 - sqrt(3) / 2 i$

  + $- sqrt(2) - sqrt(2) i$
  ]

  ]

+ #block(sticky: true)[把下列复数化为代数形式表示，并画出复平面上相应的向量来：]

  #cols(2)[
  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + $3 sqrt(2) (cos pi / 4 + i sin pi / 4)$

  + $2 (cos frac(11 pi, 6) + i sin frac(11 pi, 6))$

  + $cos pi + i sin pi$

  + $sqrt(3) [cos (- frac(2 pi, 3)) + i sin (- frac(2 pi, 3))]$

  + $cos (k dot.op pi / 4) + i sin (k dot.op pi / 4)$

    $\(k = 0\,1\,2\,dots.h\,6\,7\)$
  ]

  ]

+ 计算

  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + $sqrt(3) (cos pi / 3 + i sin pi / 3) dot.op 2 sqrt(3) (cos pi / 6 + i sin pi / 6)$

  + $sqrt(10) (cos pi / 2 + i sin pi / 2) dot.op sqrt(2) (cos pi / 4 + i sin pi / 4)$
  ]

+ #block(sticky: true)[下列复数是不是三角形式？如果不是，请化成三角形式表示：]

  #cols(2)[
  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + $cos pi / 6 - i sin pi / 6$

  + $sqrt(2) (cos frac(4 pi, 3) + i sin frac(2 pi, 3))$

  + $7 (sin frac(3 pi, 4) + i cos frac(3 pi, 4))$

  + $3 (cos frac(5 pi, 6) + i sin frac(- 7 pi, 6))$
  ]

  ]

+ 求证：

  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + $sqrt(2)\(cos 75 degree + i sin 75 degree\)dot.op sqrt(2) (cos 15 degree + i sin 15 degree) = 2 i$

  + $\(cos 3 theta - i sin 3 theta\)\(cos 2 theta - i sin 2 theta\)= cos 5 theta - i sin 5 theta$
  ]

+ 如图1.15所示，菱形 $O A B C$ 的一个内角 $angle A O C = pi / 4$⁠，且 $A$ 点所对应的复数为 $2 + i$, 试求，$B$⁠、$C$ 两点各对应的复数.

  #figure([#fig("1-15");

    ],
    caption: [
    ]
  )

+ #block(sticky: true)[已知下列各复数 $z$⁠，求 $lr(|1 / z|)$ 及 $arg (1 / z)$]

  #cols(2)[
  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + $z = 2 (cos pi / 12 + i sin pi / 12)$

  + $z = cos pi / 6 - i sin pi / 6$

  + $z = frac(1 - i, sqrt(2))$
  ]

  ]

+ 把复数 $3 - sqrt(3) i$ 对应的向量旋转 $pi / 3$⁠，所得向量相对应的复数是什么？

+ #block(sticky: true)[用棣美佛定理计算：]

  #cols(2)[
  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + $\[2\(cos 15 degree + i sin 15 degree\)\]^6$

  + $[1 / sqrt(2) \( cos 225 degree + i sin 225 degree \)]^4$

  + $\(1 + sqrt(3) i\)^4$

  + $\(2 - 2 sqrt(3) i\)^4$

  + $frac(\(sqrt(3) + i\)^5, - 1 + sqrt(3) i)$

  + $(frac(2 + 2 i, 1 - sqrt(3) i))^8$
  ]

  ]

+ 用棣美佛定理证明：

  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + $cos 2 theta = cos^2 theta - sin^2 theta\,#h(2em) sin 2 theta = 2 sin theta dot.op cos theta$

  + $cos 3 theta = 4 cos^3 theta - 3 cos theta\,#h(2em) sin 3 theta = 3 sin theta - 4 sin^3 theta$
  ]

+ 设 $n in bb(N)$⁠，$n$ 取何值时，$\(1 + sqrt(3) i\)^n$ 是一个实数？

+ 计算：

  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + $10 (cos frac(2 pi, 3) + i sin frac(2 pi, 3)) div 2 (cos pi / 6 + i sin pi / 6)$

  + $- 10 i div 6 (cos pi / 6 + i sin pi / 6)$
  ]

+ 求证：

  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + $frac(1, cos theta + i sin theta) = cos theta - i sin theta$

  + $\(cos theta + i sin theta\)^(- n) = cos (- n theta) + i sin (- n theta) quad\(n in bb(N)\)$

  + $\(cos theta - i sin theta\)^n = cos n theta - i sin n theta quad\(n in bb(N)\)$
  ]

+ 利用复数证明余弦定理.

+ 化简：

  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + $frac(\(cos 7 theta + i sin 7 theta\)\(cos 2 theta + i sin 2 theta\), \(cos 5 theta + i sin 5 theta\)\(cos 3 theta + i sin 3 theta\))$

  + $frac(cos phi - i sin phi, cos phi + i sin phi)$

  + $frac(cos alpha + i sin alpha, sin alpha + i cos alpha)$
  ]

+ #block(sticky: true)[在复数范围内解下列方程：]

  #cols(2)[
  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + $4 x^2 + 9 = 0$

  + $2\(x^2 + 4\)= 5 x$

  + $\(x - 3\)\(x - 5\)= - 2$

  + $frac(1, x + 3) - 1 / x = 1$

  + $x^4 + 3 x^2 + 1 = 0$

  + $frac(x, x^2 + 1) + frac(x^2 + 1, x) - 5 / 2 = 0$
  ]

  ]

+ #block(sticky: true)[解下列方程组：]

  #cols(2)[
  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + $display(cases(a + b = 2, a b = 2))$

  + $display(cases(x^2 + y^2 = 0, x y = 1))$
  ]

  ]

+ 求：

  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + $8 (cos pi / 3 + i sin pi / 3)$ 的六次方根;

  + $- 2 i$ 的五次方根.
  ]

+ 求：六次单位根、七次单位根，并在复平面上用向量表示出来.

+ #block(sticky: true)[解下列方程：]

  #cols(2)[
  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + $x^3 + 1 = i$

  + $x^4 + 16 = 0$

  + $x^10 - 32 x^5 + 1024 = 0$

  + $x^12 + 63 x^6 - 64 = 0$
  ]

  ]

+ #staritem(21);求证：

  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + 不经计算证明 $lr(|frac(a + b i, a - b i)|) equiv 1$

  + 有相同幅角的两个复数之比必为实数；

  + 复平面上四个点 $Z_1$, $Z_2$, $Z_3$, $Z_4$ 共圆或共直线的充分必要条件是：$ frac(Z_3 - Z_1, Z_3 - Z_2) class("closing", stretch(slash, size: #1.8em)) frac(Z_4 - Z_1, Z_4 - Z_2) upright(" 为实数") $
  ]

#heading(level: 2, numbering: star-numbering)[复数的指数形式]

我们已经学习了复数的代数形式、三角形式以及它们的运算. 在科学技术，特别是在电工和无线电计算中，常要涉及复数或三角函数的变换和计算，为方便还采用复数的另一种形式------复数的指数形式，在这一节将学习复数的指数形式及其运算、应用.

=== 复数的指数形式及其运算
我们首先引进一个著名的公式------欧拉公式：$ e^(i theta) = cos theta + i sin theta $ #noindent;其中 $e = 2.71828 dots.h.c$ 是一个重要的常数，也就是自然对数的底数.

欧拉公式在以后的“复变函数论”中可以证明。这个公式表明了：模为1、幅角为 $theta$ 的复数 $cos theta + i sin theta$ 与以 $e$ 为底的复指数函数的关系，从这个公式出发，对任一个复数 $ z = a + b i = r\(cos theta + i sin theta\) $ #noindent;就可以表示成 $z = r dot.op e^(i theta)$ 的形式，我们就把这一表达式叫做复数的指数形式.

例如：

- 复数 $cos pi / 2 + i sin pi / 2$ 的指数形式为 $e^(i tfrac(pi, 2))$

- 复数 $3 (cos pi / 4 + i sin pi / 4)$ 的指数形式为 $3 e^(i tfrac(pi, 4))$

这样，同一个复数，就有三种不同形式的表达方法------代数形式、三角形式、指数形式. 如：$ 1 / 2 + sqrt(3) / 2 i & = cos pi / 3 + i sin pi / 3 = e^(i tfrac(pi, 3))\
- 2 sqrt(3) + 2 i & = 4 (cos frac(5 pi, 6) + i sin frac(5 pi, 6)) = 4 e^(i tfrac(5 pi, 6)) $

复数的指数形式便利于乘、除、乘方及开方运算. 因为可以证明原有在实数范围内的指数运算律它都仍然满足. 这就是：

设 $z_1 = r_1 e^(i theta_1)$⁠，$z_2 = r_2 e^(i theta_2)$⁠，则有 $ z_1 dot.op z_2 & = (r_1 e^(i theta_1)) dot.op (r_2 e^(i theta_2))\
 & = r_1\(cos theta_1 + i sin theta_1\)dot.op r_2\(cos theta_2 + i sin theta_2\)\
 & = r_1 r_2\[cos (theta_1 + theta_2) + i sin (theta_1 + theta_2)\]= r_1 r_2 dot.op e^(i\(theta_1 + theta_2\)) $ #noindent;即 $ r_1 e^(i theta_1) dot.op r_2 e^(i theta_2) = r_1 r_2 e^(i\(theta_1 + theta_2\)) $

同理可证：$ z_1 / z_2 & = frac(r_1 e^(i theta_1), r_2 e^(i theta_2)) = r_1 / r_2 dot.op e^(i\(theta_1 - theta_2\)) quad\(z_2 eq.not 0\)\
z_1^n & =\(r_1 e^(i theta_1)\)^n = r_1^n dot.op e^(i n theta_1) quad\(n in bb(N)\) $ #noindent;$z_1$ 的 $n$ 次方根：$root(n, z_1) = root(n, r_1 e^(i theta_1)) = root(n, r_1) e^(i tfrac(theta_1 + 2 k pi, n)) quad\(k = 0\,1\,dots.h\,n - 1\)$

#example[
把复数 $z = 2 i$ 化成指数形式.

]
#solution[
$because quad z = 2 i = 2 (cos pi / 2 + i sin pi / 2)$

$therefore quad z = 2 dot.op e^(i tfrac(pi, 2))$

]
#example[
已知 $z_1 = sqrt(2) dot.op e^(i (- tfrac(pi, 4)))$⁠，$z_2 = sqrt(5) dot.op e^(i tfrac(2 pi, 3))$. 试求：

#cols(2)[
#block[
#set enum(numbering: enum-at(1, "(1)"))
+ $z_1 dot.op z_2$

+ $z_1$ 的平方根
]

]
要把结果表示成复数的三角形式.

]
#solution[
#block[
#set enum(numbering: enum-at(1, "(1)"))
+ #h(0pt)
  $ z_1 dot.op z_2 & = (sqrt(2) e^(i (- tfrac(pi, 4)))) dot.op (sqrt(5) e^(i tfrac(2 pi, 3)))\
   & = sqrt(10) e^(i tfrac(5 pi, 12)) = sqrt(10) (cos frac(5 pi, 12) + i sin frac(5 pi, 12)) $

+ $sqrt(sqrt(2) dot.op e^(i (- tfrac(pi, 4)))) = root(4, 2) dot.op e^(i tfrac(- pi / 4 + 2 k pi, 2)) quad\(k = 0\,1\)$

  $therefore quad z_1$ 的两个平方根为 $ x_1 & = root(4, 2) dot.op e^(i (- tfrac(pi, 8))) = root(4, 2) (cos frac(15 pi, 8) + i sin frac(15 pi, 8))\
  x_2 & = root(4, 2) dot.op e^(i tfrac(7 pi, 8)) = root(4, 2) (cos frac(7 pi, 8) + i sin frac(7 pi, 8)) $
]

]
#example[
试用 $e^(i theta)$ 与 $e^(- i theta)$ 表示 $cos theta$ 与 $sin theta$.

]
#solution[
由于

#numbered-align(($e^(i theta)$, $eqph = cos theta + i sin theta$, [(1)]), ($e^(- i theta)$, $eqph = cos (- theta) + i sin (- theta) = cos theta - i sin theta$, [(2)]));

#noindent; (1)(2) 联立，可解出 $ cos theta & = 1 / 2 (e^(i theta) + e^(- i theta))\
sin theta & = frac(1, 2 i) (e^(i theta) - e^(- i theta)) $

]
#exercise[
+ 将复数 $- 1$⁠，$2 + 2 i$⁠，$cos 15 degree + i sin 15 degree$⁠，$4 i$ 分别表示成指数形式.

+ 将复数 $e^(- i tfrac(pi, 2))$⁠，$3 e^(2 i)$⁠，$sqrt(2) e^(i tfrac(3 pi, 2))$ 分别化为三角形式和代数形式.

+ 用指数形式计算：

  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + $8 (cos frac(7 pi, 6) + i sin frac(7 pi, 6)) dot.op 2 (cos pi / 4 + i sin pi / 4)$

  + $2 div e^(i tfrac(pi, 4))$

  + $\(1 + sqrt(3) i\)^10$

  + 求81的四次方根
  ]

]
=== 证明三角恒等式
在我们学习过的三角公式和三角恒等式当中，除了公式 $sin\(alpha + beta\)$ 与 $cos\(alpha + beta\)$ 是证明棣美佛定理的依据外，其余公式都可以应用复数的指数形式来加以证明. 其要点是：首先将公式中的正切、余切、正割、余割诸函数都化为正弦、余弦函数表达；其次再用由复数的指数形式而导出来的公式：（例1.32）$ sin theta & = frac(1, 2 i) (e^(i theta) - e^(- i theta))\
cos theta & = 1 / 2 (e^(i theta) + e^(- i theta)) $ #noindent;将三角函数转化为指数形式的代数运算；从而达到证明的目的.

#example[
求证：$- 2 sin alpha dot.op sin beta = cos\(alpha + beta\)- cos\(alpha - beta\)$

]
#proof[
$because quad sin alpha = frac(1, 2 i) (e^(i alpha) - e^(- i alpha))\,quad sin beta = frac(1, 2 i) (e^(i beta) - e^(- i beta))$

$ therefore quad upright("左") & = - 2 dot.op frac(1, 4 i^2) [e^(i\(alpha + beta\)) + e^(- i\(alpha + beta\)) - e^(i\(alpha - beta\)) - e^(i\(beta - alpha\))]\
 & = 1 / 2 [e^(i\(alpha + beta\)) + e^(- i\(alpha + beta\))] - 1 / 2 [e^(i\(alpha - beta\)) + e^(- i\(alpha - beta\))]\
 & = cos\(alpha + beta\)- cos\(alpha - beta\)= upright("右") $

$therefore quad$ 原等式成立.

]
#example[
求证：$sin\(alpha + beta\)dot.op cos\(alpha - beta\)= sin alpha dot.op cos alpha + sin beta dot.op cos beta$

]
#proof[
$ upright("左式") & = frac(1, 2 i) [e^(i\(alpha + beta\)) - e^(- i\(alpha + beta\))] dot.op 1 / 2 [e^(i\(alpha - beta\)) + e^(- i\(alpha - beta\))]\
 & = frac(1, 4 i) [e^(2 alpha i) + e^(2 beta i) - e^(- 2 beta i) - e^(- 2 alpha i)] $ $ upright("右式") & = frac(1, 2 i) (e^(i alpha) - e^(- i alpha)) dot.op 1 / 2 (e^(i alpha) + e^(- i alpha)) + frac(1, 2 i) (e^(i beta) - e^(- i beta)) dot.op 1 / 2 (e^(i beta) + e^(- i beta))\
 & = frac(1, 4 i) [e^(2 alpha i) - e^(- 2 alpha i) + e^(2 beta i) - e^(- 2 beta i)] $

$because quad$ 左式 $=$ 右式

$therefore quad$ 原等式成立.

]
对于具有条件 $alpha + beta + gamma = pi$ 的三角恒等式，应用复数的指数形式加以证明更为有利.

#example[
在 $triangle.stroked.t A B C$ 中，求证：$ 1 + cos 2 A + cos 2 B + cos 2 C + 4 cos A dot.op cos B dot.op cos C = 0 $

]
#proof[
$ because quad 4 cos A dot.op cos B dot.op cos C & = 4 dot.op frac(e^(i A) + e^(- i A), 2) dot.op frac(e^(i B) + e^(- i B), 2) dot.op frac(e^(i C) + e^(- i C), 2)\
 & = 1 / 2 class("opening", stretch(\[, size: #1.2em)) e^(i\(A + B + C\)) + e^(i\(B + C - A\)) + e^(i\(A + C - B\))\
 & #h(2em) eqph + e^(i\(A + B - C\)) + e^(- i\(B + C - A\)) + e^(- i\(A + C - B\))\
 & #h(2em) eqph + e^(- i\(A + B - C\)) + e^(- i\(A + B + C\)) class("closing", stretch(\], size: #1.2em)) #h(2em) #h(2em)\(*\) $

但由于 $A + B + C = pi$⁠，进而有 $B + C - A = pi - 2 A$, $A + C - B = pi - 2 B$, $A + B - C = pi - 2 C$\; 因此可得：$ e^(i\(A + B + C\)) & = e^(i pi) = - 1\
e^(i\(B + C - A\)) & = e^(i\(pi - 2 A\)) = e^(i pi) dot.op e^(- 2 A i) = - e^(- 2 A i) $ #noindent;同理：$e^(i\(A + C - B\)) = - e^(- 2 B i)\,#h(2em) e^(i\(A + B - C\)) = - e^(- 2 C i)$ $ e^(- i\(A + B + C\)) = e^(- i pi) = - 1\,#h(2em) e^(- i\(B + C - A\)) = - e^(2 A i)\
e^(- i\(A + C - B\)) = - e^(2 B i)\,#h(2em) e^(- i\(A + B - C\)) = - e^(2 C i) $

将以上结果代入 (\*) 式，得 $ 4 cos A dot.op cos B dot.op cos C & = 1 / 2 [- 2 - e^(- 2 A i) - e^(2 A i) - e^(- 2 B i) - e^(2 B i) - e^(- 2 C i) - e^(2 C i)]\
 & = - 1 - cos 2 A - cos 2 B - cos 2 C $

$therefore quad 1 + cos 2 A + cos 2 B + cos 2 C + 4 cos A cos B cos C = 0$

]
#exercise[
利用复数的指数形式，证明以下等式：

+ $sin 2 alpha = 2 sin alpha dot.op cos alpha$

+ $cos^2 beta - sin^2 alpha = cos\(alpha + beta\)dot.op cos\(alpha - beta\)$

]
#heading(level: 3, numbering: none, outlined: false)[习题1.4]
+ #block(sticky: true)[把下列复数化为指数形式：]

  #cols(3)[
  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + $5$

  + $2 + 2 i$

  + $- 2 i$

  + $1 - sqrt(3) i$

  + $cos pi / 4 + i sin pi / 4$

  + $cos 3 + i sin 3$

  + $1 + cos pi / 3 + i sin pi / 3$
  ]

  ]

+ 设复数 $a + b i = r dot.op e^(i theta)$⁠，写出复数 $a - b i$, $- a + b i$, $- a - b i$ 的指数形式.

+ #block(sticky: true)[把下列复数化为三角形式及代数形式：]

  #cols(3)[
  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + $4 e^(i tfrac(pi, 6))$

  + $sqrt(3) e^(i tfrac(2 pi, 3))$

  + $e^(- i tfrac(3 pi, 2))$
  ]

  ]

+ 试求：复数 $e^(i tfrac(4 pi, 5))$, $e^(i tfrac(2 pi, 3))$ 所对应的向量间的夹角 $alpha thick\(0 lt.eq alpha lt.eq pi\)$.

+ 用复数的指数形式计算：

  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + $sqrt(2) (cos frac(4 pi, 3) + i sin frac(4 pi, 3)) dot.op sqrt(2) / 4 (cos frac(5 pi, 6) + i sin frac(5 pi, 6))$

  + $sqrt(3)\(cos 150 degree + i sin 150 degree\)div sqrt(2)\(cos 225 degree + i sin 225 degree\)$
  ]

+ 根据欧拉公式求证：$e^(- i theta) =\(cos theta + i sin theta\)^(- 1)$.

+ #block(sticky: true)[用复数的指数形式计算：]

  #cols(3)[
  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + $\(1 + sqrt(3) i\)^10$

  + $\(sqrt(3) - i\)^8$

  + $root(4, 64 + 0 i)$
  ]

  ]

+ 用复数的指数形式证明恒等式：

  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + $sin alpha - sin beta = 2 cos frac(alpha + beta, 2) dot.op sin frac(alpha - beta, 2)$

  + $\(sin alpha + sin beta\)^2 +\(cos alpha + cos beta\)^2 = 4 cos^2 frac(alpha - beta, 2)$
  ]

#heading(level: 2, numbering: none, outlined: false)[本章内容要点]

一、本章里，我们引进了虚数单位 ($i^2 = - 1$)，把数的概念扩展到了复数集. 复数的分类如下：

#align(center)[
#fig("1-16");

]
且复数集 $supset$ 实数集 $supset$ 有理数集 $supset$ 整数集 $supset$ 自然数集，即：$ bb(C) supset bb(R) supset bb(Q) supset bb(Z) supset bb(N) $

二、复数有四个基本概念：模，幅角，共轭复数，复数的相等；任一个复数有三种表示形式：代数形式 $a + b i thick\(a\,b in bb(R)\)$⁠，三角形式 $r\(cos theta + i sin theta\)$⁠，其中 $r = sqrt(a^2 + b^2)$, $tan theta = b / a$⁠，指数形式 $r e^(i theta)$⁠；复数 $z = a + b i$ 与复平面内的点 $Z\(a\,b\)$ 对应，并且和从原点出发的向量 $accent(O Z, ⃗)$ 相对应，因此，复数集 $bb(C)$ 与复平面内的点集，与从原点出发的向量集合之间成一一对应关系，即 $ bb(C) : thick \{ a + b i divides a\,b in bb(R)\,thick i^2 = - 1 \} arrow.l.r.long \{ Z\(a\,b\)\} arrow.l.r.long \{ accent(O Z, ⃗) \} $

据此，一些平面几何，平面解析几何以及平面向量的问题，也可以通过复数来解决.

三、复数集对于四则运算及乘方，开方运算都是封闭的；复数集保持了数系运算的“通性”，即加法、乘法的交换律、结合律以及乘法对于加法的分配律、数0与1的运算特性等；但复数集不再具有顺序性，对任意两个不全为实数的复数，就不能比较大小.

四、复数的运算法则及其几何意义：

+ 加、减法运算用复数的代数形式表达比较方便，即 $ \(a + b i\)plus.minus\(c + d i\)=\(a plus.minus c\)+\(b plus.minus d\)i $ #noindent;其几何意义是对应的向量相加、减，即“平行四边形”法则和“三角形”法则，特别是两复数的差的模表示复平面内两点间的距离.

+ 乘、除法，乘方、开方的运算用复数的三角形式或指数形式表达比较方便，即 $ r_1\(cos theta_1 + i sin theta_1\)dot.op r_2\(cos theta_2 + i sin theta_2\) & = r_1 dot.op r_2 [cos (theta_1 + theta_2) + i sin (theta_1 + theta_2)]\
  frac(r_1\(cos theta_1 + i sin theta_1\), r_2\(cos theta_2 + i sin theta_2\)) & = r_1 / r_2 [cos (theta_1 - theta_2) + i sin (theta_1 - theta_2)] $ #noindent;棣美佛定理：$ \[r\(cos theta + i sin theta\)\]^n = r^n\(cos n theta + i sin n theta\) $ #noindent;$n$ 个 $n$ 次方根：$ root(n, r\(cos theta + i sin theta\)) & = root(n, r) (cos frac(theta + 2 k pi, n) + i sin frac(theta + 2 k pi, n))\
   & #h(2em)\(k = 0\,1\,2\,dots.h\,n - 1\)quad\(n in bb(N)\) $

复数的这些运算，都有其几何意义. 特别是：复数的相乘对应着平面向量的旋转；$n$ 个 $n$ 次方根对应着圆内接正 $n$ 边形的顶点，即圆周的 $n$ 等分点，这些结论在应用上很重要.

五、在复数集中，本章学习了在实数集中所不能解的有关问题：

+ 当 $b^2 - 4 a c < 0$ 时，一元二次方程 $a x^2 + b x + c = 0 thick\(a eq.not 0\)$ 有两个共轭的虚根，即 $ x = frac(- b plus.minus i sqrt(4 a c - b^2), 2 a) $

+ 二项方程 $x^n = b thick\(b in bb(C)\)$ 有 $n$ 个不同的复数根，即设 $x^n = b = r\(cos theta + i sin theta\)$⁠，则 $ x = root(n, r) (cos frac(theta + 2 k pi, n) + i sin frac(theta + 2 k pi, n)) $ #noindent;当 $k = 0\,1\,2\,dots.h\,n - 1$ 时，可得出 $n$ 个不同的解.

+ 特别地，方程 $x^n = 1$ 的 $n$ 个复数解，叫做 $n$ 次单位根，若设 $omega = cos frac(2 pi, n) + i sin frac(2 pi, n)$⁠，则当 $n$ 为偶数时，$n$ 个单位根为 $ 1\,thick omega\,thick omega^2\,thick dots.h\,thick omega^(tfrac(n, 2) - 1)\,thick - 1\,thick overline(omega^(tfrac(n, 2) - 1))\,thick dots.h\,thick overline(omega^2)\,thick overline(omega) $ #noindent;当 $n$ 为奇数时，$n$ 个单位根为 $ 1\,thick omega\,thick omega^2\,thick dots.h\,thick omega^(tfrac(n - 1, 2))\,thick overline(omega^(tfrac(n - 1, 2)))\,thick dots.h\,thick overline(omega^2)\,thick overline(omega) $

+ 实系数一元方程，若有虚根存在，则一定是成对出现，即实系数方程若有根 $a + b i thick\(b eq.not 0\)$ 则必有根 $a - b i$.

#heading(level: 2, numbering: none, outlined: false)[复习题一]

+ #block(sticky: true)[在复平面上任选一点 $Z$（不在原点）表示复数 $z$⁠，然后用几何法在平面找出下列各复数的点：]

  #cols(4)[
  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + $- z$

  + $macron(z)$

  + $- macron(z)$

  + $z + macron(z)$

  + $z - macron(z)$

  + $z +\|z\|$

  + $z -\|z\|$

  + $i z$

  + $- i z$

  + $i macron(z)$

  + $- i macron(z)$
  ]

  ]

+ #block(sticky: true)[已知 $z = a + b i thick\(a\,b in bb(R)\)$⁠，求下列各复数的实部与虚部：]

  #cols(2)[
  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + $z^2$

  + $z^3$

  + $1 / z$

  + $v_0 z + frac(M, 2 pi) dot.op 1 / z quad\(v_0\,M in bb(R)\)$
  ]

  ]

+ 求复数 $z = frac(a^2 - b^2 + 2 a b i, a b sqrt(2) + sqrt(a^4 + b^4) i)$ 的模.

+ 求证：表示复数 $z_0$ 的点关于直线 $upright(R e)\(z\)= upright(I m)\(z\)$ 的对称点表示的是复数 $i macron(z)_0$.

+ #block(sticky: true)[下列方程（$t$ 为实参数）给出了怎样的曲线？]

  #cols(2)[
  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + $z = t\(1 + i\)$

  + $z = a cos t + i b sin t$

  + $z = t + i / t$

  + $z = t^2 + i / t$
  ]

  ]

+ 已知 $\(x + y i\)^3 = a + b i$⁠，$a\,b\,x\,y in bb(R)$⁠，求证：$a / x + b / y = 4\(x^2 - y^2\)$

+ 若 $a$⁠，$b$ 是共轭复数，且 $\(a + b\)^2 - 3 a b i = 4 - 6 i$, 试求 $a$ 及 $b$.

+ 若 $x\,y in bb(R)$, $z = x + y - 30 - x y i$ 且 $macron(z) = 60 i -\|x + y i\|$⁠，试求 $x$ 和 $y$ 的值.

+ 若 $z = x + y i$⁠，求证：$\|z\|lt.eq\|x\|+\|y\|lt.eq sqrt(2)\|z\|$

+ #block(sticky: true)[试判断以下复数，哪些是实数？哪些是纯虚数？($z\,z_1\,z_2 in bb(C)$)]

  #cols(2)[
  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + $z + macron(z)$

  + $z - macron(z)$

  + $z dot.op macron(z)$

  + $z^2 - macron(z)^2$

  + $frac((1 / z + 1 / macron(z))\(z + macron(z)\), z - macron(z))$

  + $z_1 dot.op macron(z)_2 - macron(z)_1 dot.op z_2$

  + $z_1 dot.op macron(z)_2 + macron(z)_1 dot.op z_2$

  + $frac(z_1 dot.op macron(z)_2 + macron(z)_1 dot.op z_2, z_1 dot.op macron(z)_1 - 1)$

  + $frac(z_1 dot.op macron(z)_2 - macron(z)_1 dot.op z_2, i\(z_1 dot.op macron(z)_1 + z_2 dot.op macron(z)_2\))$

  + $frac(i\(z_1 dot.op macron(z)_2 + z_2 dot.op macron(z)_1\), z_1 dot.op macron(z)_2 - macron(z)_1 dot.op z_2)$
  ]

  ]

+ 设复数 $z_1\,z_2$ 分别对应于点 $Z_1\,Z_2$⁠，求证：

  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + $O Z_1 tack.t O Z_2$ 的充要条件是 $z_1 dot.op macron(z)_2 + macron(z)_1 dot.op z_2 = 0$

  + $O Z_1$ 与 $O Z_2$ 共线的充要条件是 $z_1 dot.op macron(z)_2 - macron(z)_1 dot.op z_2 = 0$
  ]

+ #block(sticky: true)[设 $alpha$ 是复常数，$k$ 是实常数，$z in bb(C)$⁠，试说明下述方程在复平面上的图形是什么？]

  #cols(2)[
  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + $alpha macron(z) + macron(alpha) dot.op z = k$\;

  + $z macron(z) + z macron(alpha) + alpha macron(z) + k = 0$.
  ]

  ]

+ 求证：如果 $1 / z + z in bb(R)$⁠，那么 $upright(I m)\(z\)= 0$ 或 $\|z\|= 1$.

+ 化简：$(frac(1 - i, 1 + i))^(4 alpha)$⁠，其中 $alpha = csc 10 degree - sqrt(3) sec 10 degree$.

+ #block(sticky: true)[解方程组]

  #cols(2)[
  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + $display(cases(x + i y = 2 + 4 i, i x + y = 0))$

  + $display(cases(z_1 + 2 z_2 = 1 + i, 3 z_1 + i z_2 = 2 - 3 i))$

  + $display(cases(x^2 + y^2 = 6, y^2 + z^2 = 0, x^2 + z^2 = 8 i))$
  ]

  ]

+ 化简 $ frac(\(cos 2 theta - i sin 2 theta\)\(cos phi + i sin phi\)^2, cos (theta + phi) + i sin (theta + phi)) dot.op frac(\(cos 2 theta + i sin 2 theta\)^2\(cos 2 phi - i sin 2 phi\), cos (theta - phi) + i sin (theta - phi)) $

+ #block(sticky: true)[将下列复数化为三角形式：]

  #cols(2)[
  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + $frac(\(cos 5 phi + i sin 5 phi\)^2, \(cos 3 phi - i sin 3 phi\)^3)$

  + $1 - cos theta + i sin theta\,quad\(0 lt.eq theta lt.eq pi\)$
  ]

  ]

+ 设 $x = e^(i alpha)$, $y = e^(i beta)$, $z = e^(i gamma)$⁠，求证：$ \(x + y\)\(y + z\)\(z + x\)= 8 x y z cos frac(beta - gamma, 2) dot.op cos frac(gamma - alpha, 2) dot.op cos frac(alpha - beta, 2) $

+ 设 $sin A + sin B + sin C = cos A + cos B + cos C = 0$⁠，求证：

  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + $sin 3 A + sin 3 B + sin 3 C = 3 sin\(A + B + C\)$

  + $cos 3 A + cos 3 B + cos 3 C = 3 cos\(A + B + C\)$
  ]

+ 在复平面上，$z_1 = 1$, $z_2 = 2 + i$ 与 $z_3$ 组成一个正三角形，求 $z_3$.

+ 若 $z_1\,z_2\,z_3\,z_4$ 是一个正方形的四个顶点，且 $z_1 = 1 + 2 i$, $z_2 = 3 - 5 i$, 求 $z_3\,z_4$.

+ 求证：$triangle.stroked.t z_1 z_2 z_3$ 是等边三角形的充要条件是：$ z_1^2 + z_2^2 + z_3^2 = z_1 dot.op z_2 + z_2 dot.op z_3 + z_3 dot.op z_1 $

+ 下列条件表示什么样图形？

  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + $upright(I m)\(z^2\)= 2$

  + $\|z\|= 1$ 且 $arg z in\(0\,pi\)$

  + $0 < a lt.eq upright(I m)\(z\)lt.eq b$ 且 $pi / 4 lt.eq arg z lt.eq frac(3 pi, 4)$
  ]

+ 你能用复数表示出图中的半圆来吗？（包括边界）

  #align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (45%, 45%,), column-gutter: 1em, align: center + bottom, figure([#fig("1-17");], caption: []), figure([#fig("1-18");], caption: []))));

+ #block(sticky: true)[设 $z in bb(C)$⁠，解方程：]

  #cols(2)[
  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + $1 / 2\(z - 1\)= sqrt(3) / 2\(1 + z\)i$

  + $\(z + 1\)^8 =\(1 + i\)^8$
  ]

  ]

+ #block(sticky: true)[设 $z$ 是虚数，解方程：]

  #cols(2)[
  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + $z +\|macron(z)\|= 2 + i$

  + $z^2 = macron(z)$
  ]

  ]

+ 求证：

  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + $\|z\|= 1 thick\(z in bb(C)\)$ 的充要条件是 $z^(- 1) = macron(z)$\;

  + 共轭虚数的 $n thick\(n in bb(N)\)$ 次幂仍是共轭虚数；

  + 虚数的平方根仍是虚数．
  ]

+ 在复数集中解下列方程组：

  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + $display(cases(x^2 + y^2 - 2 x y + 3\(x + y\)- 2 = 0, 2\(x^2 + y^2\)- 2 x y - 2\(x + y\)+ 15 = 0))$

  + $display(cases(frac(x - y, 1 + x y) = 1 / 3, frac(x + y, 1 - x y) = 3))$
  ]

+ 设三次单位根为 $1\,omega\,omega^2$⁠，其中 $omega = - 1 / 2 + sqrt(3) / 2 i$⁠，求证：

  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + $1 + omega + omega^2 = 0$

  + $1 dot.op omega dot.op omega^2 = 1$

  + $\(1 + omega^2\)^4 = omega$

  + $mat(delim: "|", 1, 1, omega; 1, 1, omega^2; omega^2, omega, 1) = - 3$

  + $1^n + omega^n +\(omega^2\)^n = display(cases(3\, & quad n = 3 k, 0\, & quad n eq.not 3 k))\(k in bb(Z)\)$

  + $a^3 + b^3 =\(a + b\)\(a omega + b omega^2\)\(a omega^2 + b omega\)\;$

  + $a^3 + b^3 + c^3 - 3 a b c =\(a + b + c\)\(a + b omega + c omega^2\)\(a + b omega^2 + c omega\)$
  ]

+ #block(sticky: true)[利用上题中 $omega$ 的性质，计算：]

  #cols(2)[
  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + $\(- 1 + sqrt(3) i\)^6 -\(- 1 - sqrt(3) i\)^6$\;

  + $(frac(sqrt(3) + i, 2))^6 - (frac(sqrt(3) - i, 2))^6$\;

  + $(- 1 / 2 i - sqrt(3) / 2)^12$.
  ]

  ]

+ 已知 $f\(x\)= x^4 + 3 x^3 - 30 x^2 + 366 x - 340$ 的一个根为 $3 + 5 i$⁠，求其余的三个根。

+ 若实系数方程 $x^4 + p x^3 + q x^2 + r x + s = 0$ 有两个根为 $2 + i$, $- 2 + i$. 求 $p$⁠、$q$⁠、$r$⁠、$s$ 的值。

+ 若实系数多项式 $x^4 + p x^3 + q x^2 + r x + s$ 有一个根是纯虚数，求证：$r^2 + p^2 s = p q r$.

+ 已知实系数方程 $x^2 + m x + n = 0$ 的一个根是另一个根的 $i$ 倍，试求 $m$⁠、$n$ 的关系.

+ 已知 $f\(x\)= x^4 +\(2 + i\)x^3 +\(3 + 2 i\)x^2 -\(4 - 3 i\)x - 4 i$,

  $g\(x\)= x^4 -\(1 - i\)x^3 -\(1 + i\)x^2 +\(4 + i\)x - 4 i$⁠，求 $f\(x\)$ 与 $g\(x\)$ 的公根.
