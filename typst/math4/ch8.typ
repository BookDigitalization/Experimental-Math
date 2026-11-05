// 由 typst/tools/tex2typ.py 从 math4/8.tex 转换而来，已人工校对的部分以本文件为准。
#import "../common/template.typ": *
#import "figs.typ": fig

= 单变量函数
第六章中我们已经说明了如何由量的度量而产生实数系．在这一章中我们要进一步说明如何用变数符号去表达变量，用变数之间的函数关系去表达变量之间的关联．变数是变量的抽象，函数是变量相互关系的抽象．在这一章里我们还要运用极限来分析和确立连续函数的概念．

== 函数的概念
=== 变数和变域
在研究自然现象时，人们会遇到许多不同的物理量，如时间、长度、体积、速度、质量、力等等．按照给定条件，能取许多不同数值的量叫做#strong[变量]；而只取一个数值的量叫做#strong[常量]，用来表达变量的符号叫做#strong[变数]．习惯上常用 $x\,y\,z$ 等字母表示变数，从纯数学的观点来说，一个变数就是一个“能取许多不同数值”的符号，它所能取的所有数值构成一个集合，叫做它的#strong[变域]．如果变数 $x$ 的变域已经给出，我们就认为变数 $x$ 是已知的．一般说来，任何数集可以当作变数的变域．常会遇到取所有自然数的变数 $n$, 譬如数列中的项数．可是在现实生活中，我们通常研究的是连续变化的变数，如动点所经过的路程及所花的时间等物理量，就是这种变数的原形，数的区间就是这一类变数的变域，最常用的区间是以两个实数 $a$ 与 $b$ $\(a < b\)$------它的两个端点------为界限的有限区间，两个端点本身可以包含在区间内，也可以不包含在内．因此我们可以把区间分为：

- 开区间 $\(a\,b\)$ 就是 $\{ x\|a < x < b \}$⁠；

- 闭区间 $\[a\,b\]$ 就是 $\{ x\|a lt.eq x lt.eq b \}$⁠；

- 半开区间 $\(a\,b\]$ 就是 $\{ x\|a < x lt.eq b \}$⁠；$\[a\,b\)$ 就是 $\{ x\|a lt.eq x < b \}$⁠．

#noindent;在上述各种情形，数 $b - a$ 为#strong[区间的长度]．

常量可以看作变量的特殊情形，它的变域是由一个数组成的集合 $\{ x\|x = a \}$⁠．

数轴上的线段是数的区间的几何表示，图示开区间如图8.1或8.2．

在点 $a\,b$ 处的圆圈或圆括号表示从区间去掉这两个数．在两个圆圈之间的粗线段表示在 $a\,b$ 之间的一切数 $x$⁠．图示闭区间如图8.3．图示半开区间如图8.4、8.5, 每一种情形都只包含出现有方括号的数，以及在 $a\,b$ 之间的一切实数．

#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("8-01");], caption: []), figure([#fig("8-02");], caption: []))));

#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("8-03");], caption: []), figure([#fig("8-04");], caption: []))));

#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("8-05");], caption: []), figure([#fig("8-06");], caption: []))));

有时也要考虑无穷区间，用符号 $- oo\,+ oo$ 作为一端或两端，它们的记号和上面所引进的相类似，例如 $\(- oo\,+ oo\)$ 是全体实数集合 $\{ x\|x in bb(R) \}$, 区间 $\(a\,+ oo\)$ 表示集合 $\{ x\|x > a \}$, 区间 $\(- oo\,b\]$ 表示集合 $\{ x\|x lt.eq b \}$. 无穷区间在几何上可用两端无限伸延的直线或一端无限伸延的射线来表示．

以后我们要常用到一点的邻域的概念．$c$#strong[ 点的邻域]是包含 $c$ 点的任何开区间 $\(a\,b\)$, 而 $c$ 点的#strong[去心邻域]指去掉 $c$ 点的任何 $c$ 点的邻域．它的图象如图8.6．

$c$ 点的去心邻域可写成 $\(a\,c\)union\(c\,b\)$. 我们常把 $c$ 点的邻域写成对称的形式：$\(c - r\,c + r\)$, 对任何 $r > 0$, 并且称它为 $c$#strong[ 点的对称邻域]．

#example[
试写出含于区间 $\(1\,5\)$ 中 $pi$ 的对称邻域．$(pi - 1 / 2 \, pi + 1 / 2)$ 是含于 $\(1\,5\)$ 的 $pi$ 对称邻域．此外 $\(pi - 1\,pi + 1\)$, $(pi - 3 / 2 \, pi + 3 / 2)$, $\(pi - 0.01\,pi + 0.01\)$ 等都是含于 $\(1\,5\)$ 中的对称邻域．

]
=== 函数的定义
我们已经在第三册研究过许多函数，例如多项式函数、三角函数等，由于函数这个概念的重要性，并且它将是我们的主要研究对象，因此需要回忆一般的函数的定义，下面我们从数集之间的多对一（包括一对一）的关系重新给出函数定义．

#blk[定义][
设有数集 $A\,B$, 如果有一对应关系或法则 $f$ 存在，对于 $A$ 的任何一个数 $x$, 有数集 $B$ 中唯一的一个数 $y$ 与之对应，我们就称给出了一个从数集 $A$ 到数集 $B$ 内的函数 $f$, 用 $ f : A mapsto B $ #noindent;表示，并写成 $y = f\(x\)\,thick\(x in A\)$, 此时称 $f\(x\)$ 为函数 $f$ 在 $x$ 的函数值，并称 $A$ 为函数 $f$ 的#strong[定义域]．又当 $x$ 取遍 $A$ 中的数时，函数值 $f\(x\)$ 全体也构成一个数集，称为函数 $f$ 的#strong[值域]，记作 $ f\(A\)= \{ f\(x\)\|x in A \} $ #noindent;要注意的是在构造一个函数 $f : A mapsto B$ 的时候，$f\(A\)$ 不一定等于 $B$, 而是 $B$ 的一个真子集，即 $f\(A\)subset B$⁠．

]
#example[
设 $bb(R)$ 是实数集，函数 $f : bb(R) mapsto bb(R)$ 定义为 $ f\(x\)= frac(2 x, x^2 + 1)\,quad x in\(- oo\,+ oo\) $ #noindent;求它的值域．

]
#solution[
方程 $y = frac(2 x, x^2 + 1)$ 等价于#numbered-eq($ y x^2 - 2 x + y = 0 $);#noindent;根据函数的值域定义，任给 $y in f\(bb(R)\)$, 方程 (8.1) 必有实数解，而方程 (8.1) 有实数解的充要条件是 $ Delta = 1 - y^2 gt.eq 0 $ #noindent;即：$- 1 lt.eq y lt.eq 1$⁠，所以 $ f\(bb(R)\)= \{ f\(x\)\|- 1 lt.eq f\(x\)lt.eq 1 \} subset bb(R) $

]
在函数的定义中包含三个要素，即#strong[定义域]，#strong[多对一的对应法则]和#strong[函数值所在的数集]．应养成一个习惯，当给定一个函数时，必须指明它的定义域．在实际问题中，函数的定义域是根据实际意义来确定的，例如温度计刻有华氏温标度数 $F$ 和摄氏温标度数 $c$⁠，因为不存在低于绝对零度的温度，因此，这两个度数之间的函数 $phi$ 是 $ F = phi\(c\)= 9 / 5 c + 32\,quad c in\(- 273\,+ oo\) $

以后，当我们只在数学上，一般地研究一个具体解析式子规定的函数关系时，如果定义域 $A$ 没有被指明，那么函数的定义域是使解析式子具有数值意义的所有 $x$ 的数值组成的自然定义域，函数 $y$ 的值域通常是不指出的，因为由对应的规律本身就可以确定函数的值域．

#example[
求下列函数定义域：

#cols(2)[
+ $f\(x\)= sqrt(1 - x) / x$

+ $g\(x\)= sqrt(x^2 - 1)$

]
]
#solution[
+ #h(0pt)
  $ upright("函数") f upright("有意义") arrow.l.r.double display(cases(1 - x gt.eq 0, x eq.not 0)) arrow.r.double quad x lt.eq 1\,quad x eq.not 0 $ #noindent;$therefore quad$ 函数 $f$ 的定义域为 $\(- oo\,0\)union\(0\,1\]$⁠．

+ #h(0pt)
  $ upright("函数") g upright("有意义") arrow.l.r.double x^2 - 1 gt.eq 0 arrow.r.double quad x lt.eq - 1\,upright(" 或 ") x gt.eq 1 $ #noindent;因此函数 $g$ 的定义域为 $\(- oo\,- 1\]union\[1\,+ oo\)$⁠．

]
=== 相等的函数
怎样的两个函数是相等的函数？在数学中，有些函数可以用不同的方式来定义，例如，函数 $f : bb(R) mapsto bb(R)^(+) union \{ 0 \}$ 是由 $f\(x\)=\|x\|$ 规定的，而函数 $g : bb(R) mapsto bb(R)^(+) union \{ 0 \}$ 是由 $g\(x\)= sqrt(x^2)$ 规定的，这里表示 $f\(x\)$ 与 $g\(x\)$ 的式子全不同，但是对于它们的相同的定义域中的任一 $x$ 值，经过不同规则的计算，它们的结果是相同的，即 $f\(x\)= g\(x\)$, 所以对于这个例子来说，尽管函数 $f\(x\)\,g\(x\)$ 的表达式不同，我们说 $f\(x\)$ 和 $g\(x\)$ 表示相同的函数．此外，解析式子相同，但定义域不同的函数是不相同的函数．例如：$ f_1\(x\) & = 1 / x\,#h(2em) x in\(- oo\,0\)union\(0\,+ oo\)\
f_2\(x\) & = 1 / x\,#h(2em) x in\(0\,+ oo\)\
f_3\(x\) & = 1 / x\,#h(2em) x in\(0\,1\) $ #noindent;是不相同的函数，因为对于 $x = - 2$, $f_1$ 有意义而 $f_2\,f_3$ 都无意义；对于 $x = 2$, $f_1$ 和 $f_2$ 都有意义而 $f_3$ 无意义．

下面给出相等（同）的两个函数的条件．

#blk[定义][
两个函数 $f : A mapsto B$, $g : C mapsto D$ 称为相等的当且仅当 $A = C$, $B = D$, 且对于每个 $a in A$（或 $C$⁠），有 $f\(a\)= g\(a\)$⁠．

]
读者可能会不同意上面 $B = D$ 这个条件，提出下面这个例子来反驳：

“由 $f\(n\)= g\(n\)= n$ 给出的两个函数 $f : bb(N) mapsto bb(N)$, $g : bb(N) mapsto bb(Q)$ 是相等的函数”我们须指出两个函数不同的地方，就函数值所在数集上看，$g$ 可以除以2, 因此，对于 $g$ 我们可以构造一个新函数，$1 / 2 g : bb(N) mapsto bb(Q)$, 这里 $ (1 / 2 g)\(n\)= 1 / 2 n $ #noindent;但是对于 $f$, 不能做这种构造．

=== 函数的几个类型------满射、单射和双射
现在，我们来讨论函数的三个重要类型，先给出定义，然后再举例说明．

#blk[定义][
如果在函数 $f : A mapsto B$ 的 $B$ 中的每一个数 $b$ 在函数 $f$ 的作用下都是 $A$ 中一个数或某些数的对应数，也就是说：对于任意 $b in B$, 存在一个 $a in A$, 使得 $b = f\(a\)$, 这样我们就说 $f$ 是由 $A$ 到 $B$ 的#strong[满射]．

]
显然，如果 $f : A mapsto B$ 是满射，那么 $f\(A\)= B$⁠．

第二类函数和满射同样地重要，叫做#strong[单射]，定义如下：

#blk[定义][
如果对于 $A$ 中的任何两个不同的数 $a_1$ 和 $a_2$, 就在 $B$ 中有两个不同的函数值 $f\(a_1\)$ 和 $f\(a_2\)$, 即任何 $a_1\,a_2 in A$, $a_1 eq.not a_2 arrow.r.double f\(a_1\)eq.not f\(a_2\)$, 那么我们就说 $f : A mapsto B$ 是#strong[单射]（或一对一）．

]
它的逆否命题“如果在 $B$ 中有 $f\(a_1\)= f\(a_2\)$ 就在 $A$ 中有 $a_1 = a_2$, 那么函数 $f : A mapsto B$ 叫做#strong[单射]（或一对一）．”和上面的定义等价，也常用来说明函数是一对一的．

还有一类很重要的函数叫做#strong[双射]．

#blk[定义][
函数 $f : A mapsto B$, 如果是满射又是单射，就叫做#strong[双射]．

]
#example[
函数 $f : bb(R) mapsto\[- 1\,1\]$, 这里 $f\(x\)= sin x\,x in bb(R)$ 是满射，但不是单射，因为对于 $sin x = 1 / 2 in\[- 1\,1\]$⁠，就有无穷多个 $x = pi / 6 + 2 k pi$ 或 $frac(5 pi, 6) + 2 k pi thick\(k in bb(Z)\)$ 的值和它对应．

]
#example[
函数 $f : bb(N) mapsto bb(N)$, 这里 $f\(n\)= 2 n$ 是单射，但不是满射．

]
#example[
设 $2 bb(N)$ 代表偶数集，函数 $f : bb(N) mapsto 2 bb(N)$, 这里 $f\(n\)= 2 n$ 就是一双射．

]
== 函数的运算与复合函数
=== 函数的四则运算
设 $f\(x\)\,g\(x\)$ 是两个 $x$ 的函数，它们的定义域分别为 $D_f$ 和 $D_g$, 我们可以用通常对于“数”的四则运算得到它们的和函数 $\(f + g\)\(x\)$, 差函数 $\(f - g\)\(x\)$, 积函数 $\(f dot.op g\)\(x\)$ 与商函数 $f / g\(x\)\,thick g\(x\)eq.not 0$⁠．它们的定义域为 $D_f inter D_g$⁠．

由 $f\(x\)\,g\(x\)$ 的四则运算所得出来的新函数的定义如下：

- $\(f + g\)\(x\)= f\(x\)+ g\(x\)$（即 $\(f + g\)$ 在 $x$ 点的值是 $f$, $g$ 的值的和）；

- $\(f - g\)\(x\)= f\(x\)- g\(x\)$（即 $\(f - g\)$ 在 $x$ 点的值是 $f\,g$ 的值的差）；

- $\(f dot.op g\)\(x\)= f\(x\)dot.op g\(x\)$（即 $\(f dot.op g\)$ 在 $x$ 点的值是 $f\,g$ 的值的积）；

- $\(f\/g\)\(x\)= f\(x\)\/g\(x\)$（即 $f\/g$ 在 $x$ 点的值是 $f\,g$ 的值的商，但只有在 $g\(x\)eq.not 0$ 时才有意义）．

$f + g$, $f - g$ 和 $f dot.op g$ 的定义域是 $f$ 的定义域和 $g$ 的定义域的交集．而 $f\/g$ 的定义域要从 $f$ 和 $g$ 的定义域的交集中去掉使 $g\(x\)= 0$ 的值．

#example[
已知 $f\(x\)= sqrt(x)$, $g\(x\)= sqrt(1 - x)$, 求 $f + g$, $f - g$, $f dot.op g$, $f / g$, $g / f$⁠．

]
#solution[
$f$ 和 $g$ 的自然定义域是 $D_f = \{ x\|x gt.eq 0 \}$, $D_g = \{ x\|x lt.eq 1 \}$⁠，$D_f$ 和 $D_g$ 的交集是 $D_f inter D_g =\[0\,1\]$⁠．

- 和：$\(f + g\)\(x\)= sqrt(x) + sqrt(1 - x)$

- 差：$\(f - g\)\(x\)= sqrt(x) - sqrt(1 - x)$

- 积：$\(f dot.op g\)\(x\)= sqrt(x\(1 - x\))$

- 商：$f / g\(x\)= sqrt(frac(x, 1 - x))\,#h(2em) g / f\(x\)= sqrt(frac(1 - x, x))$

$f + g$, $f - g$, $f dot.op g$ 的定义域是 $\[0\,1\]$⁠．因为当 $x = 1$ 时，$g\(x\)= 0$, 所以 $f / g$ 的定义域是 $\[0\,1\)$, 同样得到 $g / f$ 的定义域 $\(0\,1\]$⁠．

]
#example[
设 $f\(x\)= sin x$, $g\(x\)= cos x$⁠，$D_f =\(- oo\,+ oo\)$⁠，$D_g =\(- oo\,+ oo\)$⁠，则：$ \(f + g\)\(x\)= sin x + cos x & = sqrt(2) (1 / sqrt(2) sin x + 1 / sqrt(2) cos x)\
 & = sqrt(2) (sin x cos pi / 4 + cos x sin pi / 4)\
 & = sqrt(2) sin (x + pi / 4)\
\(f - g\)\(x\)= sin x - cos x & = sqrt(2) sin (x - pi / 4)\
\(f dot.op g\)\(x\)= sin x dot.op cos x & = 1 / 2 sin 2 x\
(f / g)\(x\)= frac(sin x, cos x) & = tan x $

这里 $f + g$, $f - g$, $f dot.op g$ 的定义域是 $\(- oo\,+ oo\)$, $f / g$ 的定义域是$ lr(\{ x class("normal", stretch(|, size: #1.2em)) x in bb(R) \, thick x eq.not pi / 2 + k pi \, thick k in bb(Z) \}) $

]
=== 复合函数
上面我们是用四则运算来组合已知函数为一个新函数的，但是构成新的函数的方法，还有一个更重要的运算叫做组成函数的函数或复合函数法．

我们先从一个简单的例子说起，火箭从地面上的 $L$ 点垂直向上发射，火箭 $R$ 在 $t$ 秒后离开发射点的距离是 $h\(t\)$, 这个函数是已知的．在离发射座1公里远的地方有一个观测站 $O$⁠，我们要求把火箭与观测站的距离 $d$ 确定为时间 $t$ 的函数（图8.7）．

#figure([#fig("8-07");

  ],
  caption: [
  ]
)

我们已经知道火箭的垂直高度 $h$ 是 $t$ 的函数 $h\(t\)$, 又火箭到观测站的距离 $d$ 又是火箭的高度 $h$ 的函数 $ d = sqrt(1 + h^2) $ #noindent;因此在时刻 $t$, $R$ 到 $O$ 的距离是 $ d\(t\)= sqrt(1 + h^2\(t\)) $

上面函数 $d\(t\)$ 是由 $h = h\(t\)$ 和 $d = f\(h\)= sqrt(1 + h^2)$ 两个函数构成的，把其中一个函数 $h\(t\)$ 代入另一个函数 $f\(h\)$ 的运算叫做复合运算，得到的函数 $d\(t\)= f class("opening", stretch(\(, size: #1.2em)) h\(t\)class("closing", stretch(\), size: #1.2em))$ 叫做 $t$ 的复合函数．

一般说来，若 $z = f\(y\)$, $y = g\(x\)$, 且 $g\(x\)$ 的值域含于 $f\(y\)$ 的定义域中，那么对于 $g\(x\)$ 定义域内的每一个 $x$ 值经过中间变数 $y$, 相应地得到唯一确定的一个值 $z$, 变数 $z$ 经过中间变数 $y$ 而成为变数 $x$ 的函数，记为 $z = f class("opening", stretch(\(, size: #1.2em)) g\(x\)class("closing", stretch(\), size: #1.2em))$, 这个函数称为前两个函数的#strong[复合函数]．应该指出，函数 $y = g\(x\)$ 的值域不能超出函数 $f\(y\)$ 的定义域，这是极重要的．

#example[
设 $z = sqrt(1 + y)$, 它的定义域 $D_y =\[- 1\,+ oo\)$, 再设 $y = x^2 - 5$, 它的定义域 $D_x =\(- oo\,+ oo\)$, 值域 $R =\[- 5\,+ oo\)$.

作为复合函数 $z = sqrt(1 +\(x^2 - 5\)) = sqrt(x^2 - 4)$, 其定义域只能是 $\(- oo\,- 2\]$ 和 $\[2\,+ oo\)$, 这时，$y = x^2 - 5$ 的值域是 $\[- 1\,+ oo\)$, 它没有超过 $D_y =\[- 1\,+ oo\)$ 的范围，这就是说复合函数 $z = f class("opening", stretch(\(, size: #1.2em)) g\(x\)class("closing", stretch(\), size: #1.2em))$ 的定义域只能由 $y = g\(x\)$ 的定义域中那些使 $g\(x\)$ 属于 $z = f\(y\)$ 的定义域的 $x$ 组成．

]
#example[
已知 $f\(g\)= frac(1, g + 1)$⁠，$g = g\(x\)= x^2$⁠．

求 $f class("opening", stretch(\(, size: #1.2em)) g\(x\)class("closing", stretch(\), size: #1.2em))$ 和 $g class("opening", stretch(\(, size: #1.2em)) f\(x\)class("closing", stretch(\), size: #1.2em))$⁠．

]
#solution[
$ f class("opening", stretch(\(, size: #1.2em)) g\(x\)class("closing", stretch(\), size: #1.2em)) & = frac(1, x^2 + 1)\
g class("opening", stretch(\(, size: #1.2em)) f\(x\)class("closing", stretch(\), size: #1.2em)) & = (frac(1, x + 1))^2 = frac(1, x^2 + 2 x + 1) $ #noindent;显然，$f class("opening", stretch(\(, size: #1.2em)) g\(x\)class("closing", stretch(\), size: #1.2em)) eq.not g class("opening", stretch(\(, size: #1.2em)) f\(x\)class("closing", stretch(\), size: #1.2em))$, 这表明函数的复合运算是不满足交换律的．

]
#example[
已知 $f (sin x / 2) = cos x + 1$⁠，求 $f (cos x / 2)$⁠．

]
#solution[
复合函数 $f (sin x / 2) = cos x + 1 = 2 - 2 sin^2 x / 2$ 是把函数 $y = sin x / 2$ 代入 $f\(y\)= 2 - 2 y^2$ 中复合而成．现在令 $y = cos x / 2$ 代入 $f\(y\)$⁠，得到 $ f (cos x / 2) = 2 - 2 cos^2 x / 2 = 2 -\(1 + cos x\)= 1 - cos x $

]
在函数的运算中，我们介绍了函数的加、减、乘、除和函数的复合五种运算，从定义来看，我们可以用上述五种运算，由某一简单而基本的函数去造出多种多样的新函数来，譬如从常数函数 $y = c$ 和恒等函数 $y = x$, 用加、减、乘运算就可以得出多项式函数．其实我们常常要用到的，并不是把所给的函数组合成更复杂的函数；而是要把所给的函数分解成更简单的函数的组合，把要解的问题归于比较简单的问题去解决．

#example[
将函数 $y = x sin 1 / x$ 分解成比较简单的函数的组合（引进新的中间变数符号）．

]
#solution[
$y = x sin 1 / x$ 可分解为 $f\(x\)= x$ 与 $g\(x\)= sin 1 / x$ 之积，又 $g\(x\)= sin 1 / x$ 可以看作是 $g\(h\)= sin h$ 和 $h = h\(x\)= 1 / x$ 的复合函数，于是原来的函数可以看作下面简单函数的组合 $ F\(x\)= f\(x\)dot.op g class("opening", stretch(\(, size: #1.2em)) h\(x\)class("closing", stretch(\), size: #1.2em)) $ #noindent;这里 $f\(x\)= x$, $g\(h\)= sin h$, $h = h\(x\)= 1 / x$⁠．

]
#example[
求函数 $sqrt(x - sqrt(x + 1) - 2)$ 的定义域．

]
#solution[
设 $F\(x\)= sqrt(x - sqrt(x + 1) - 2) = sqrt(\(x + 1\)- sqrt(x + 1) - 3)$⁠，则 $F\(x\)$ 可以看作 $f\(y\)= sqrt(y^2 - y - 3)$ 与 $y = g\(x\)= sqrt(x + 1)$ 的复合函数，即 $F\(x\)= f class("opening", stretch(\(, size: #1.2em)) g\(x\)class("closing", stretch(\), size: #1.2em))$ 且知：

$f\(y\)$ 的定义域 $D_f = lr((- oo \, frac(1 - sqrt(13), 2)]) union.big lr([frac(1 + sqrt(13), 2) \, + oo))$

$g\(x\)$ 的定义域 $D_g =\[- 1\,+ oo\)$, 它的值域 $R_g =\[0\,+ oo\)$

$  & upright("复合函数") F\(x\)= f class("opening", stretch(\(, size: #1.2em)) g\(x\)class("closing", stretch(\), size: #1.2em)) upright("有意义") arrow.l.r.double.long display(cases(g\(x\)upright("有意义"), g\(x\)in lr([frac(1 + sqrt(13), 2) \, + oo))))\
 & arrow.l.r.double.long display(cases(x + 1 gt.eq 0, sqrt(x + 1) gt.eq frac(1 + sqrt(13), 2))) arrow.l.r.double.long display(cases(x gt.eq - 1, x + 1 gt.eq (frac(1 + sqrt(13), 2))^2 = frac(7 + sqrt(13), 2)))\
 & arrow.l.r.double.long x gt.eq frac(5 + sqrt(13), 2) $ #noindent;$therefore quad$ 函数 $sqrt(x - sqrt(x + 1) - 2)$ 的定义域是 $lr([frac(5 + sqrt(13), 2) \, + oo))$⁠．

如果直接求 $F\(x\)= sqrt(x - sqrt(x + 1) - 2)$ 的定义域，那么只须：$ x - sqrt(x + 1) - 2 gt.eq 0 & arrow.l.r.double.long x - 2 gt.eq sqrt(x + 1) arrow.l.r.double.long display(cases(x - 2 gt.eq 0, x + 1 gt.eq 0, \(x - 2\)^2 gt.eq\(x + 1\)))\
 & arrow.l.r.double.long display(cases(x gt.eq 2, x gt.eq - 1, x gt.eq frac(5 + sqrt(13), 2))) arrow.l.r.double.long x gt.eq frac(5 + sqrt(13), 2) $ #noindent;$therefore quad$ 函数 $sqrt(x - sqrt(x + 1) - 2)$ 的定义域是 $lr([frac(5 + sqrt(13), 2) \, + oo))$⁠．

]
#heading(level: 2, numbering: none, supplement: [toc-sub])[习题8.1]

试确定下面1---5里每一对函数 $f$ 和 $g$ 的自然定义域，并求 $f + g$, $f - g$, $f dot.op g$, $f\/g$ 和 $g\/f$ 的相应的定义域．

+ $f\(x\)= x\,#h(2em) g\(x\)= sqrt(x - 1)$

+ $f\(x\)= frac(1, x - 2)\,#h(2em) g\(x\)= 1 / sqrt(x - 1)$

+ $f\(x\)= sqrt(x)\,#h(2em) g\(x\)= root(4, x + 1)$

+ $f\(x\)= sin x\,#h(2em) g\(x\)= cos x$

+ $f\(x\)= tan x\,#h(2em) g\(x\)= tan x$

+ #block(sticky: true)[证明函数 $f\(x\)= frac(1, 1 + x)$ 在它的定义域上是单射的．又 $x$ 为何值时，下列各式才有意义？]

  #cols(2)[
  + $f class("opening", stretch(\(, size: #1.2em)) f\(x\)class("closing", stretch(\), size: #1.2em))$

  + $f (1 / x)$

  + $f\(c x\)$

  + 对于哪些数 $c$, 有一数 $x$ 能使 $f\(c x\)= f\(x\)$

  ]

+ 下列函数能否构成复合函数 $y = f class("opening", stretch(\(, size: #1.2em)) phi\(x\)class("closing", stretch(\), size: #1.2em))$, 如果能够构成，则指出复合函数的定义域和值域：

  + $y = f\(u\)= 2 u + 1\,#h(2em) u = phi\(x\)= x^2$

  + $y = f\(u\)= sqrt(u)\,#h(2em) u = phi\(x\)= 1 - x^2$

  + $y = f\(u\)= u^2 + u^3\,#h(2em) u = phi\(x\)= display(cases(1\, & quad upright("当") x upright("为有理数"), - 1\, & quad upright("当") x upright("为无理数")))$

  + $y = f\(u\)= 2$, 定义域为 $U_1$,#h(2em);$u = phi\(x\)$, 定义域为 $X$, 值域为 $U_2$⁠．

+ 设 $f\(x\)= a x^2 + b x + c$, 证明 $f\(x + 3\)- 3 f\(x + 2\)+ 3 f\(x + 1\)- f\(x\)= 0$⁠．

+ #lead-list(none, 2)[
  + 设 $y = f\(x\)= a + b x + c / x$, 求 $f (2 / x)$⁠．

  + 设 $y = f\(x\)= sqrt(1 + x + x^2)$, 求 $f\(x^2\)$, $f\(- x^2\)$⁠．
  ]

+ 若 $phi\(x\)= x^3 + 1$, 求 $phi\(x^2\)$, $class("opening", stretch(\(, size: #1.2em)) phi\(x\)class("closing", stretch(\), size: #1.2em))^2$, $phi class("opening", stretch(\(, size: #1.2em)) phi\(x\)class("closing", stretch(\), size: #1.2em))$⁠．

+ #block(sticky: true)[求下列函数定义域：]

  #cols(2)[
  + $y = sqrt(x) + sqrt(- x)$

  + $y = root(4, frac(\(x - 2\)\(x - 3\), x^2))$

  ]

+ $a\,b\,c\,d$ 取什么值，才能使函数$ f\(x\)= frac(a x + b, c x + d) $#noindent;对所有 $x$ 满足 $f class("opening", stretch(\(, size: #1.2em)) f\(x\)class("closing", stretch(\), size: #1.2em)) = x$⁠？

== 函数的图象
从平面上一条曲线（对这条曲线应该要求：与纵轴平行的直线与它的交点不能多于一个）可以引出一个函数，反过来，给了一个函数 $y = f\(x\)$, 那么通常采用直角坐标系，就可以用图形来表示 $y$ 是 $x$ 的函数．

定义在某一变域 $D$ 上的函数的图象就是让 $x$ 取遍 $D$ 中所有值，所有点 $\(x\,f\(x\)\)$ 的集合便形成平面上的一个#strong[图形]，这个图形称为函数 $y = f\(x\)$ 的#strong[图象]，而这个方程 $y = f\(x\)$ 称为#strong[图象的方程]．

利用函数图象的几何直观可以更清楚地看出函数的一些性质，下面我们把函数的解析性质和它的图象上相应的几何性质对照着列出来：

#align(center)[
#table(
  columns: (auto, 45% + 12pt, 45% + 12pt,),
  align: (center + horizon, left + top, left + top,),
  table.hline(),
  [],
  [解析性质],
  [几何性质],
  table.hline(),
  [1],
  [$f$ 是 $x$ 的增函数，即对于任意的 $a in D$, $b in D$, 当 $a < b$ 时，恒有 $f\(a\)< f\(b\)$],
  [$f$ 的图象随着 $x$ 向右移动而上升],
  [2],
  [$f$ 是 $x$ 的减函数，即对于任意的 $a in D$, $b in D$, 当 $a < b$ 时，恒有 $f\(a\)> f\(b\)$],
  [$f$ 的图象随着 $x$ 向右移动而下降],
  [3],
  [$f$ 是偶函数，即对于任意的 $x in D$, 恒有 $f\(- x\)= f\(x\)$],
  [函数 $f$ 的图象关于 $y$ 轴对称],
  [4],
  [$f$ 是奇函数，即对于任意的 $x in D$, 恒有 $f\(- x\)= - f\(x\)$],
  [函数 $f$ 的图象关于原点对称],
  [5],
  [$f$ 是周期函数，即对于任意的 $x in bb(R)$, 恒有 $f\(x + p\)= f\(x\)$, 这里 $p$ 是一个正的常数],
  [函数 $f$ 在区间 $\[0\,p\]$ 或 $[- p / 2 \, p / 2]$ 上的图象可以沿 $x$ 轴左、右连续推移，重复出现],
  table.hline(),
);

]
下面我们给出几个常见的函数的图象．

==== 常值函数
常值函数 $f\(x\)= c$ 的图象是一条平行 $x$ 轴的直线，它至 $x$ 轴的距离为 $\|c\|$, 如图8.8．

==== 取整函数
函数 $f\(x\)=\[x\]$ 代表不超过 $x$ 的最大整数，即：若 $n lt.eq x < n + 1\,thick n in bb(Z)$, 则 $f\(x\)=\[x\]= n$. 它的图象如图8.9．

#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("8-08");], caption: []), figure([#fig("8-09");], caption: []))));

==== 一次函数
我们已经在第三册中知道，一次函数 $f\(x\)= k x + b thick\(k eq.not 0\)$ 的图象是不平行于 $x$ 轴和 $y$ 轴的直线．$k$ 称为直线的斜率，$b$ 称为直线的 $y$ 截距．若知一次函数图象上的两个点，我们用直线方程的两点式：$ y - y_1 = frac(y_2 - y_1, x_2 - x_1)\(x - x_1\) $ #noindent;就可以写出一次函数的关系式．

下面给出的函数的图象是有间断点的直线：

函数 $f\(x\)= 3 / 4 dot.op frac(x^2 - 1, x - 1)$, $x in\(- oo\,1\)union\(1\,+ oo\)$ 的图象是一条有间断点 $(1 \, 1 1 / 2)$ 的直线，除去点 $(1 \, 1 1 / 2)$ 外，它与直线 $y = 3 / 4\(x + 1\)$ 一致．（见图8.10）

#figure([#fig("8-10");

  ],
  caption: [
  ]
)

==== 阶梯函数
设点列 $\{ x_i \}\,thick i = 0\,1\,dots.h\,n$ 是闭区间 $\[a\,b\]$ 中的递增点列，使得 $x_0 = a$, $x_n = b$, 即 $a = x_0 < x_1 < x_2 < dots.h.c < x_(n - 1) < x_n = b$⁠，且当 $x_(i - 1) < x < x_i$ 时，$f\(x\)= k_i\,thick i = 1\,2\,dots.h\,n$⁠．而 $x$ 在分点，$x_i\,thick i = 0\,1\,dots.h\,n$ 的值 $f\(x_i\)$ 可以任意给定，这样一个在 $\[a\,b\]$ 上有定义的，而在每个子区间 $\(x_(i - 1)\,x_i\)\,thick i = 1\,2\,dots.h\,n$ 都是常数的函数叫做阶梯函数．

例如，定义在 $\[0\,6\]$ 上的阶梯函数 $f$: $ display(cases(f\(0\)= 2.5\,, f\(x\)= 2\, & quad 0 < x lt.eq 1\,, f\(x\)= 0\, & quad 1 < x lt.eq 2\,, f\(x\)= - 1\, & quad 2 < x lt.eq 4\,, f\(x\)= 2\, & quad 4 < x lt.eq 6 .)) $ #noindent;的图象如图8.11所示．

#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("8-11");], caption: []), figure([#fig("8-12");], caption: []))));

==== 折线函数
我们定义 $g$⁠：$ g\(x\)= display(cases(1 / 2\(x - 1\)\, & quad x in\[1\,2\], - 3 / 2\(x - 2\)+ 1 / 2\(2 - 1\)\, & quad x in\[2\,3\], \(x - 3\)- 3 / 2\(3 - 2\)+ 1 / 2\(2 - 1\)\, & quad x in\[3\,4\], - 2\(x - 4\)+\(4 - 3\)- 3 / 2\(3 - 2\)+ 1 / 2\(2 - 1\)\, & quad x in\[4\,6\])) $ #noindent;它的图象是一条折线 $A B C D E$, 如图8.12．

==== 幂函数
函数 $f\(x\)= x^n$⁠，其中 $n$ 为任意自然数，称为正整指数幂函数．

为了了解正整指数幂函数的一般性质，我们在同一个坐标系内，绘出几个这样的函数，如图8.13．

显然，当 $n$ 为奇数时，因为 $f\(- x\)=\(- x\)^n = - x^n = - f\(x\)$, 所以函数是奇函数．又所有正整指数幂函数，当 $x = 0$ 时，$f\(0\)= 0$⁠．故每个奇次幂函数的图象通过原点，位于第一和第三象限内且关于原点对称．所有这样的函数都是增函数．

当 $n$ 为偶数时，因为 $f\(- x\)=\(- x\)^n = x^n = f\(x\)$⁠，所以函数是偶函数，每个图象通过原点，位于第一和第二象限内且关于 $y$ 轴对称．

由于当 $x = 1$ 时，$f\(1\)= 1^n = 1$, 每个正整指数幂函数的图象都通过点 $\(1\,1\)$⁠．

#figure([#fig("8-13");

  ],
  caption: [
  ]
)

现在让指数 $n$ 逐次增大，看看图象的变化，从图8.14, 8.15可以清楚地看出每个图象的平坦部分和陡峭部分，曲线最终以图8.14和8.15中的粗黑线为极限位置．

函数 $f\(x\)= x^(- n)$（$x eq.not 0$, $n$ 为自然数）称为负整指数幂函数．在同一坐标系内，绘出 $y = x^(- 1)$, $y = x^(- 2)$, $y = x^(- 3)$, $y = x^(- 4)$ 的图象如图8.16所示．当 $x = 0$ 时，这些函数都无意义，函数的图象在此点断开，它的二支以 $y$ 轴为渐近线．

当指数为负奇数时，这些函数是奇函数．图象的二支分别位于第一和第三象限内，随 $x$ 向右移动下降，且关于原点对称．因此，函数在 $\(- oo\,0\)$ 或 $\(0\,+ oo\)$ 内是减函数．

当指数是负偶数时，这些函数是偶函数，每个函数的图象在原点处断开，分为二支，位于第一和第二象限内，都以 $y$ 轴为渐近线，且关于 $y$ 轴对称．从图象明显地看出，当 $x < 0$ 时，函数是增函数，当 $x > 0$ 时，函数是减函数．

下面我们来说明一些函数的图象如何由另一些函数的已知图象经过某些几何变换得到．

若对于任意的 $x in D$, 函数 $f$ 和 $g$ 满足 $g\(x\)= f\(x - c\)$, 这里 $c$ 是常数，则若 $c > 0 thick\(c < 0\)$⁠，$y = g\(x\)$ 的图象可以由 $y = f\(x\)$ 的图象，平行 $x$ 轴右移（或左移）$\|c\|$ 个单位得到．

若函数 $f$ 和 $g$ 满足等式 $g\(x\)= f\(k x\)$, 这里 $k$ 是常数，则若 $k > 1 thick\(0 < k < 1\)$, $y = g\(x\)$ 的图象可以由 $y = f\(x\)$ 的图象经过把它上面的所有点的横坐标垂直于 $y$ 轴压缩（或拉长）$k$ 倍而纵坐标不变的几何变换得到．

若函数 $f$ 和 $g$ 满足等式，$g\(x\)= k f\(x\)$, 这里 $k$ 是常数，则若 $k > 1 thick\(0 < k < 1\)$, $y = g\(x\)$ 的图象可以由 $y = f\(x\)$ 的图象经过把它上面的所有点的纵坐标垂直 $x$ 轴拉长（或压缩）$k$ 倍而使横坐标不变的几何变换得到．

下面我们用例子说明图象的几何变换．

#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("8-14");], caption: []), figure([#fig("8-15");], caption: []))));

#figure([#fig("8-16");

  ],
  caption: [
  ]
)

#example[
说明 $y = f\(x\)= sin x$ 和 $y = g\(x\)= cos x$ 的图象的关系．

]
#solution[
这两个函数的定义域都是 $\(- oo\,+ oo\)$⁠，根据 $f\(x\)= sin x$ 和 $g\(x\)= cos x$ 是周期等于 $2 pi$ 的函数，因此我们可以先在长度等于 $2 pi$ 的区间上来讨论这两个函数．

设 $f\(x\)= sin x$ 的定义域 $D_f =\[0\,2 pi\]$, 因为余弦函数 $g\(x\)= cos x$ 可以看作正弦函数 $sin x'$ 与 $x' = x + pi / 2$ 的复合函数，即 $g\(x\)= cos x = sin (x + pi / 2)$, 所以复合函数 $sin (x + pi / 2)$ 有意义，必须且只须 $0 lt.eq x + pi / 2 lt.eq 2 pi$⁠，由此得到 $- pi / 2 lt.eq x lt.eq frac(3 pi, 2)$⁠．

这就是说 $y = g\(x\)= cos x$ 的定义域是 $D_g = [- pi / 2 \, frac(3 pi, 2)]$⁠．因为区间 $D_g$ 是把区间 $D_f$ 左移了 $pi / 2$ 个单位的结果，并且对于 $D_g = [- pi / 2 \, frac(3 pi, 2)]$ 中的每一个 $x$ 都可以在 $D_f =\[0\,2 pi\]$ 中找到相应的 $x + pi / 2$ 使得 $cos x = sin (x + pi / 2)$, 所以 $y = sin x$ 在区间 $D_f =\[0\,2 pi\]$ 上的一段图象左移 $pi / 2$ 个单位就得到 $y = cos x$ 在区间 $D_g = [- pi / 2 \, frac(3 pi, 2)]$ 上的一段，因此，将 $y = sin x$ 的整个图象左移 $pi / 2$ 个单位就得到整个 $y = cos x$ 的图象了，如图8.17所示．

#figure([#fig("8-17");

  ],
  caption: [
  ]
)

$because quad sin\(- x\)= - sin x\,#h(2em) therefore quad y = sin x$ 的图象关于原点对称．

$because quad cos\(- x\)= cos x\,#h(2em) therefore quad y = cos x$ 的图象关于 $y$ 轴对称．

]
#example[
说明函数 $y = f\(x\)= sqrt(1 - x^2)$, $D_f =\[- 1\,1\]$ 和 $y = g\(x\)= sqrt(1 - 4 x^2)$ 的图象的关系．

]
#solution[
我们已经知道 $f$ 的定义域是 $D_f =\[- 1\,1\]$ 且 $g\(x\)$ 可以看作 $f\(x'\)$ 与 $x' = 2 x$ 的复合函数，即 $ g\(x\)= f\(2 x\)= sqrt(1 -\(2 x\)^2) $

复合函数 $f\(2 x\)$ 有意义必须且只须 $- 1 lt.eq 2 x lt.eq 1$, 即：$ - 1 / 2 lt.eq x lt.eq 1 / 2 $ #noindent;因此，$g\(x\)$ 的定义域是 $D_g = [- 1 / 2 \, 1 / 2]$⁠．因为对于 $D_g = [- 1 / 2 \, 1 / 2]$ 中的每一个 $x$, 在 $D_f$ 中一定有一个相应的 $2 x$ 使得 $g\(x\)= f\(2 x\)$ 成立，这就说明了将 $y = f\(x\)$ 的图象上所有点的横坐标垂直 $y$ 轴压缩一半而使点的纵坐标不变便得 $g\(x\)= sqrt(1 - 4 x^2)$ 的图象，如图8.18所示．

#figure([#fig("8-18");

  ],
  caption: [
  ]
)

]
#heading(level: 2, numbering: none, supplement: [toc-sub])[习题8.2]

+ #block(sticky: true)[试由函数增减性的定义，说明下面函数的增减性：]

  #cols(2)[
  + $y = x^3$

  + $y = x^(- 2)$

  + $f\(x\)= sqrt(x)$

  + $g\(x\)= root(3, x)$

  + $h\(x\)= 1 / sqrt(x)$

  ]

+ #block(sticky: true)[作下列函数的图象：]

  #cols(2)[
  + $y = sqrt(x)$

  + $y = x -\[x\]$

  + $y = sqrt(x -\[x\])$

  + $y =\[x\]+ sqrt(x -\[x\])$

  ]

+ 若一折线函数的图象 $A B C D E$ 的顶点坐标是 $ A (- 1 \, - 1 1 / 2)\,quad B\(1\,1\)\,quad C\(3\,- 1\)\,quad D\(6\,2.5\)\,quad E\(7\,2.5\) $ #noindent;写出这个函数的解析式．

+ #block(sticky: true)[作下列函数的图象：]

  #cols(2)[
  + $f\(x\)=\|2 x\|$

  + $f\(x\)= frac(\|x\|, x)$

  + $y =\|4 - x^2\|\,quad - 3 lt.eq x lt.eq 3$

  + $y =\|x^2 - 2 x - 3\|$

  ]

+ 已知点 $P\(alpha\,beta\)$ 和一水平线 $L$ 即 $g\(x\)= gamma$ 的图象．证明至 $P$ 与 $L$ 等距离的所有点 $\(x\,y\)$ 的集合，是具有 $f\(x\)= a x^2 + b x + c$ 形式的函数的图象．

== 函数的连续性
在初中一年级讨论平方根时，我们曾用下面的想法初步地肯定 $sqrt(2)$ 的“存在性”：边长是1米的正方形面积是1平方米；边长是2米的正方形面积是4平方米，所以，当一个正方形的边长逐渐增加时，它的面积逐渐由1平方米增加到4平方米，中间应该会有那么一个2平方米的正方形．

上面这段话只是一个粗略的想法，用数学语言来表达如下：

$y = f\(x\)= x^2$, 这个幂函数的函数值，在 $x = 1$ 时，$f\(1\)= 1^2 = 1$⁠；$x = 2$ 时，$f\(2\)= 2^2 = 4$\; 当 $x$ 由1变到2时，$x^2$ 的值应该由1“连续地”变到4, 所以 $x$ 应该能取一个值 $x_0$ 使 $f\(x_0\)= x_0^2 = 2$⁠．

上面说的“连续地”这个术语究竟是什么意思呢？在这一节中，我们就是要把“连续性”的涵意加以分析、确立．并且，把上面这个粗略的想法体现成一个明确有用的定理------中间值定理．

=== 连续函数的概念
从几何的直观来看，连续与间断的意思是一目了然的，一条曲线是连续的，指这条曲线没有间断点，在上一节考察的函数，展示了函数图象有间断点的情形，函数 $f$ 在点 $x_0$ 是否连续只依赖于它在 $x_0$ 的一个（任意小的）邻域内的变化情况．直观地看来，如果

+ $f$ 在其定义域的点 $x_0$ 的邻域 $\(x_0 - delta\,x_0 + delta\)$ 内有定义；

+ 当 $x$ 充分接近 $x_0$ 时，函数值 $f\(x\)$ 同 $f\(x_0\)$ 相差任意小，即自变量 $x$ 的微小变化只能引起函数值的微小变化，从而排除了函数值的跳跃，就函数的图象来看，在这一点 $x_0$ 的邻近，函数图象是由一条曲线组成的，而没有在这一点断开成为两个分支，那么称函数 $f$ 在点 $x_0$ 连续．

“充分接近”和“相差任意小”这两句话是不够明确的，而必须用定量的术语给以严格的表述．现在我们可以用数列极限的概念把“当 $x$ 充分接近 $x_0$ 时，$f\(x\)$ 与 $f\(x_0\)$ 相差任意小”这句话定量地描述如下：

如果在函数定义域 $I$ 中，自变量 $x$ 取任何一个收敛于 $x_0 in I$（即 $limits(lim)_(i arrow.r oo) x_i = x_0$⁠）的数列 $\{ x_i \}$ 的项 $x_i thick\(i = 1\,2\,dots.h\)$, 那么对应的函数数列：$ f\(x_1\)\,thick f\(x_2\)\,thick dots.h\,thick f\(x_i\)\,dots.h $ #noindent;总有极限值 $f\(x_0\)$, 即 $ lim_(i arrow.r oo) f\(x_i\)= f\(x_0\) $

于是我们得到下述连续性的严格定义：

#blk[定义][
定义在区间 $I$ 上的一个函数 $f$ 在点 $a in I$ 称做连续，如果

+ $f\(a\)$ 有一个确定值，

+ 对于 $I$ 中每一个收敛于 $a$ 的数列 $\{ x_i \}$, 对应的函数数列 $\{ f\(x_i\)\}$ 总以 $f\(a\)$ 为极限，即有关系式：$limits(lim)_(i arrow.r oo) f\(x_i\)= f\(a\)= f (limits(lim)_(i arrow.r oo) x_i)$ 成立．

]
这个定义表明对于一个连续函数 $f$, 记号lim可以和记号 $f$ 互换．

我们举几个例子说明如何用这个定义来验证函数 $f$ 在点 $a$ 处连续或间断．

#example[
函数 $f\(x\)= 3 / 4 dot.op frac(x^2 - 1, x - 1)$ 在点 $x = 1$ 处不连续，因为 $f\(1\)$ 没有意义．

]
#example[
函数 $f\(x\)=\[x\]$ 在整数点 $n$ 处不连续，因为当 $x = n\,thick\(n in bb(Z)\)$ 时，函数 $f\(x\)=\[x\]$ 有确定值 $f\(n\)=\[n\]= n$⁠．虽然当 $x$ 取的数列 $\{ x_i \}$ 的值，从 $x = n$ 的右边趋于 $n$ 时，有 $limits(lim)_(i arrow.r oo) f\(x_i\)= limits(lim)_(i arrow.r oo)\[x_i\]= n = f\(n\)$, 但是当 $x$ 取的数列 $\{ x'_i \}$ 从 $x = n$ 的左边趋于 $n$ 时，即当 $x'_i$ 满足条件：（1）$n - 1 lt.eq x'_i < n$,（2）$limits(lim)_(i arrow.r oo) x'_i = n$ 时，那么 $ limits(lim)_(i arrow.r oo) f\(x'_i\)= limits(lim)_(i arrow.r oo)\[x'_i\]= n - 1 eq.not f\(n\)= n $ #noindent;这就是说 $f\(x\)=\[x\]$ 的图象是在整数点具有跳跃性间断的曲线．

]
现在我们来考虑另一种间断性的曲线．

#example[
函数 $f\(x\)= 1 / x$ 在点 $x = 0$ 处不连续，因为 $f\(0\)$ 不存在，并且任何数列 $\{ x_i \}$ 收敛于0时，例如：

当 $x_i > 0$, $x_i arrow.r 0$ 时，即 $x_i$ 从右边趋近于原点时，有 $limits(lim)_(i arrow.r oo) 1 / x_i = + oo$⁠；

当 $x_i < 0$, $x_i arrow.r 0$ 时，即 $x_i$ 从左边趋近于原点时，有 $limits(lim)_(i arrow.r oo) 1 / x_i = - oo$⁠；

当 $\{ x_i \}$ 是任意一个趋于0的数列时，则 $limits(lim)_(i arrow.r oo) lr(|1 / x_i|) = oo$⁠．

无论哪种情形，数列 $lr(\{ 1 / x_i \})$ 趋向无穷大．

]
#rmk[
例8.16和例8.18的分母的零点都是函数的不连续点，但是例8.16中的分式：$f\(x\)= 3 / 4 dot.op frac(x^2 - 1, x - 1)$⁠，当 $x eq.not 1$ 时，代数恒等式 $ 3 / 4 dot.op frac(x^2 - 1, x - 1) = 3 / 4\(x + 1\) $ #noindent;是成立的．因此任何数列 $x_i thick\(eq.not 1\)$ 趋于1时，由于 $x_i eq.not 1$⁠，$ limits(lim)_(i arrow.r oo) f\(x_i\) & = limits(lim)_(i arrow.r oo) 3 / 4 dot.op frac(x_i^2 - 1, x_i - 1) = limits(lim)_(i arrow.r oo) 3 / 4\(x_i + 1\)\
 & = 3 / 4\(1 + 1\)= 3 / 2 $

这就是说，对于任何收敛于1的数列 $\{ x_i \}$, 对应的函数数列 $\{ f\(x_i\)\}$ 都以 $3 / 2$ 为极限．

如果我们定义一个新函数 $F$⁠：$ F\(x\)= display(cases(3 / 4 dot.op frac(x^2 - 1, x - 1)\, & quad x eq.not 1, 3 / 2\, & quad x = 1)) $ #noindent;那么 $F\(x\)$ 在点 $x = 1$ 处就连续了．

]
#blk[定义][
如果对于任何收敛于 $a$ 的数列 $\{ x_i \}$, $limits(lim)_(i arrow.r oo) f\(x_i\)$ 存在，并且彼此相等，但不等于 $f\(a\)$, 或者 $f\(a\)$ 没有定义，则称 $f$ 在 $a$ 处有可去间断点．

]
例8.16中的 $x = 1$ 就是 $f$ 的可去间断点．

#blk[定义][
如果函数 $f$ 在定义域 $I$ 中每一点都连续，就说 $f$ 是 $I$ 上的一个连续函数，或简称为连续函数．

]
=== 连续函数的运算
由连续函数定义知道，函数 $f$ 在 $a in I$ 连续当且仅当：若 $I$ 里的每个数列 $\{ x_i \}$ 收敛于 $a$ 时，数列 $\{ f\(x_i\)\}$ 也收敛于 $f\(a\)$⁠．

我们可以把上述条件：$ lim_(i arrow.r oo) x_i = a quad arrow.r.double.long quad lim_(i arrow.r oo) f\(x_i\)= f\(a\) $ #noindent;简写成：$ lim_(x arrow.r a) f\(x\)= f\(a\)= f (lim_(x arrow.r a) x) $

由数列极限运算定理直接得出下面定理．

#blk[定理1][
设 $f$ 和 $g$ 在 $a$ 处连续，即 $ lim_(x arrow.r a) f\(x\)= f\(a\)\,#h(2em) lim_(x arrow.r a) g\(x\)= g\(a\) $ #noindent;则

+ $limits(lim)_(x arrow.r a)\[f\(x\)plus.minus g\(x\)\]= f\(a\)plus.minus g\(a\)$⁠，（即 $f plus.minus g$ 在 $a$ 处连续）．

+ $limits(lim)_(x arrow.r a) f\(x\)dot.op g\(x\)= f\(a\)dot.op g\(a\)$⁠，（即 $f dot.op g$ 在 $a$ 处连续）．

+ 若 $g\(a\)eq.not 0$⁠，$limits(lim)_(x arrow.r a) frac(1, g\(x\)) = frac(1, g\(a\))$⁠，（即 $1\/g$ 在 $a$ 处连续）．

]
#example[
函数 $f\(x\)= x^k$ ($k$ 是一个正整数，$x in bb(R)$) 到处连续，即 $limits(lim)_(x arrow.r a) x^k = a^k\,thick\(a in bb(R)\)$⁠．

]
#proof[
对 $k$ 用数学归纳法来证明，设 $a$ 是 $f$ 的定义域 $bb(R)$ 中任何一点．

当 $k = 1$ 时，显然，$limits(lim)_(x arrow.r a) x = a$, 命题成立．

假设当 $k = i thick\(i in bb(N)\)$ 时，有 $ limits(lim)_(x arrow.r a) x^i = a^i #h(2em)\(i in bb(N)\) $ #noindent;那么，当 $k = i + 1$ 时，有 $ limits(lim)_(x arrow.r a) x^(i + 1) = limits(lim)_(x arrow.r a) x^i dot.op x = limits(lim)_(x arrow.r a) x^i dot.op limits(lim)_(x arrow.r a) x = a^i dot.op a = a^(i + 1) $ #noindent;于是，对于所有正整数 $k$, $f\(x\)= x^k$ 在任何一点 $a$ 连续，也即 $f\(x\)= x^k$ 到处连续．

]
由定理1和 $f\(x\)= x^k thick\(k in bb(N)\)$, 及常数函数 $g\(x\)= c$ ($c$ 是常数）的到处连续性，我们可以证明下面的命题成立．

#blk[命题1][
任何多项式函数到处连续．

]
进一步推得下面命题：

#blk[命题2][
若 $f$ 和 $g$ 是两个多项式，$g eq.not 0$, 那么有理函数 $r = f\/g$⁠，除去 $g$ 的零点集合，函数 $r$ 是有定义的而且是连续的．

]
#blk[命题3][
$f\(x\)= root(n, x)$ 在区间 $\[0\,+ oo\)$ 上连续，即 $ lim_(x arrow.r x_0) root(n, x) = root(n, x_0) #h(2em)\(x_0 in\[0\,+ oo\)\) $

]
#proof[
设 $x_0$ 是一个任给正数，数列 $\{ x_i \}$ 是在 $\[0\,+ oo\)$ 内任何一个收敛到 $x_0$ 的数列，即 $limits(lim)_(i arrow.r oo) x_i = x_0$⁠．我们要证明，当 $limits(lim)_(i arrow.r oo) x_i = x_0$ 时，$limits(lim)_(i arrow.r oo)\(root(n, x_i) - root(n, x_0)\)= 0$⁠．

在代数恒等式：$ \(A - B\)(A^(n - 1) + A^(n - 2) B + dots.h.c + A B^(n - 2) + B^(n - 1)) = A^n - B^n $ #noindent;中，以 $A = x_i^(tfrac(1, n))$, $B = x_0^(tfrac(1, n))$ 代入，即得：#numbered-eq($ root(n, x_i) - root(n, x_0) = frac(x_i - x_0, x_i^(tfrac(n - 1, n)) + x_i^(tfrac(n - 2, n)) dot.op x_0^(tfrac(1, n)) + dots.h.c + x_i^(tfrac(1, n)) dot.op x_0^(tfrac(n - 2, n)) + x_0^(tfrac(n - 1, n))) $);#noindent;由于 $limits(lim)_(i arrow.r oo) x_i = x_0$, 根据数列极限定义，取 $epsilon = x_0 / 2$⁠，则存在正整数 $N$, 使得当 $i > N$ 时，有 $ x_i > x_0 - x_0 / 2 = x_0 / 2 $ #noindent;从而，当 $i > N$ 时，有#numbered-eq($ \(x_i\)^(tfrac(1, n)) > (x_0 / 2)^(tfrac(1, n)) $);#noindent;此外，显然有#numbered-eq($ \(x_0\)^(tfrac(1, n)) > (x_0 / 2)^(tfrac(1, n)) $);

由 (8.2)---(8.4) 立即得 $ lr(|root(n, x_i) - root(n, x_0)|) < frac(\|x_i - x_0\|, n (root(n, x_0 / 2))^(n - 1)) $ #noindent;当 $i arrow.r oo$ 时，$\|x_i - x_0\|arrow.r 0$, 又因为 $n (root(n, x_0 / 2))^(n - 1)$ 是一个和 $i$ 无关的常数，所以 $ lr(|root(n, x_i) - root(n, x_0)|) arrow.r 0 $ #noindent;即 $ lim_(x arrow.r x_0) root(n, x) = root(n, x_0) $ #noindent;这也就证明了 $f\(x\)= root(n, x)$ 在区间 $\[0\,+ oo\)$ 上到处连续．

]
我们在这里介绍了函数连续性的严格定义，对于初学者只要能够正确理解这一分析定义的涵义就可以了，以后在第六册微积分中，我们还要对它进行研究．

=== 连续函数的中间值定理
平面上一个一目了然的性质是：一条直线把平面分割成两半，例如，在 $\(x\,y\)$ 坐标平面上，直线 $y = c$ 就把平面分成 $y < c$ 和 $y > c$ 这两半，从上半平面走到下半平面的连续通路，必须和分界线 $y = c$ 相交，下述中间值定理也就是上述直观现象的代数化：

==== 中间值定理
设 $y = f\(x\)$ 是一个在闭区间 $\[a\,b\]$ 上到处连续的函数，设 $c$ 是一个介于 $f\(a\)$ 和 $f\(b\)$ 之间的常数，则必存在一个介于 $a\,b$ 之间的实数 $x_0$, 使得 $f\(x_0\)= c$⁠．用几何术语来说：$y = f\(x\)$, $a lt.eq x lt.eq b$ 的图象是一条连结 $P\(a\,f\(a\)\)$ 点和 $Q\(b\,f\(b\)\)$ 点的连续曲线，而 $P\,Q$ 分居于直线 $y = c$ 的两侧，则曲线 $y = f\(x\)\,thick a lt.eq x lt.eq b$ 至少和直线 $y = c$ 有一个交点 $\(x_0\,f\(x_0\)= c\)$⁠，（图8.19）．

#figure([#fig("8-19");

  ],
  caption: [
  ]
)

在给出这个定理的证明之前，我们先讨论一个特例，让 $f\(x\)= x^3 + x - 3$, $a = 1$, $b = 2$. 由于 $f\(1\)= - 1$ 与 $f\(2\)= 7$ 异号，我们将说明在1, 2之间一定存在 $f\(x\)= x^3 + x - 3$ 的根 $k$, 使 $f\(k\)= 0$⁠．

从 $y = x^3 + x - 3$ 的图象（图8.20）上看，这个命题是一目了然的，现在我们要把二分逼近法与实数完备性，函数连续性配合一起来说明它的根的存在和根的求法．

#figure([#fig("8-20");

  ],
  caption: [
  ]
)

首先，我们容易验证这个方程没有整数根 $plus.minus 1$ 和 $plus.minus 3$, 因此所求的根一定是一个无理数，由于闭区间 $\[a\,b\]=\[1\,2\]$ 具有性质 $P : f\(a\)dot.op f\(b\)< 0$, 即 $f\(a\)$ 与 $f\(b\)$ 异号．当我们把它二等分时，至少会有一个分段保有这个性质 $P$, 照这样，不断地二等分保有性质 $P$ 的分段，我们就可以得到保有性质 $P$ 的两串左、右夹逼数列如下：

令 $x = frac(1 + 2, 2) = 3 / 2$, 显然 $f (3 / 2) eq.not 0$, 否则 $f\(x\)$ 就会有有理数根 $3 / 2$⁠，无论 $f (3 / 2)$ 是正还是负，在 $[1 \, 3 / 2]$ 和 $[3 / 2 \, 2]$ 这两个分段中一定有一段具有性质 $P$, 算出 $ f (3 / 2) = 15 / 8 > 0 $

取 $a_1 = 1$, $b_1 = 3 / 2$, 闭区间 $\[a_1\,b_1\]= [1 \, 3 / 2]$ 保有性质 $P$, 照这样进行有限次后，由于 $f\(x\)$ 没有有理根，所以 $f (frac(a_m + b_m, 2)) eq.not 0$, 这就使我们每次由 $\[a_m\,b_m\]$ 选取保有性质 $P$ 的一个分段 $\[a_(m + 1)\,b_(m + 1)\]$ 之后，还可以细分下去，因此，这个过程是无终止的．

- 令 $x = frac(a_1 + b_1, 2) = frac(1 + 3 / 2, 2) = 5 / 4$, 算出 $f (5 / 4) = 13 / 64 > 0$⁠，取 $\[a_2\,b_2\]= [1 \, 5 / 4]$⁠；

- 令 $x = frac(a_2 + b_2, 2) = frac(1 + 1.25, 2) = 1.125$, 算出 $f (1.125) = - 0.4512 < 0$⁠，取 $\[a_3\,b_3\]= [1.125 \, 1.25]$⁠；

- 令 $x = frac(a_3 + b_3, 2) = frac(1.125 + 1.25, 2) = 1.1875$, 算出 $f (1.1875) = - 0.1379 < 0$⁠，取 $\[a_4\,b_4\]= [1.1875 \, 1.25]$⁠；

- 令 $x = frac(1.1875 + 1.25, 2) = 1.2188$, 算出 $f (1.2188) = 0.029 > 0$⁠，取 $\[a_5\,b_5\]= [1.1875 \, 1.2188]$⁠；

- 令 $x = frac(1.1875 + 1.2188, 2) = 1.203$, 算出 $f (1.203) = - 0.0560 < 0$⁠，取 $\[a_6\,b_6\]= [1.203 \, 1.2188]$⁠；

- 令 $x = frac(1.203 + 1.2188, 2) = 1.211$, 算出 $f (1.211) = - 0.0130 < 0$⁠，取 $\[a_7\,b_7\]= [1.211 \, 1.2188]$⁠；

- 令 $x = frac(1.211 + 1.2188, 2) = 1.215$, 算出 $f (1.215) = 0.008 > 0$⁠，取 $\[a_8\,b_8\]= [1.211 \, 1.215]$⁠；

- 令 $x = frac(1.211 + 1.215, 2) = 1.213$, 算出 $f (1.213) = - 0.0022 < 0$⁠，取 $\[a_9\,b_9\]= [1.213 \, 1.215]$⁠；

这样继续下去，我们得到无穷个闭区间满足下面的条件：

+ $\[a\,b\]=\[1\,2\]supset.eq\[a_1\,b_1\]= [1 \, 3 / 2] supset.eq\[a_2\,b_2\]= [1 \, 5 / 4] supset.eq\[a_3\,b_3\]= [1.125 \, 1.25] supset.eq\[a_4\,b_4\]= [1.1875 \, 1.25] supset.eq\[a_5\,b_5\]= [1.1875 \, 1.2188] supset.eq\[a_6\,b_6\]= [1.203 \, 1.2188] supset.eq\[a_7\,b_7\]= [1.211 \, 1.2188] supset.eq\[a_8\,b_8\]= [1.211 \, 1.215] supset.eq\[a_9\,b_9\]= [1.213 \, 1.215] supset.eq dots.h.c thin supset.eq\[a_n\,b_n\]supset.eq dots.h.c$

+ $\[a_n\,b_n\]= 1 / 2\[a_(n - 1)\,b_(n - 1)\]= 1 / 2^2\[a_(n - 2)\,b_(n - 2)\]= dots.h.c = 1 / 2^n\[a\,b\]$

  因此，闭区间 $\[a_n\,b_n\]$ 的长 $= 1 / 2^n arrow.r 0$⁠．

+ $f\(a_n\)< 0$, $f\(b_n\)> 0$ 恒成立．

换言之，得到满足下面性质的夹逼数列 $\{ a_n \}$, $\{ b_n \}$:

+ $a = 1 lt.eq a_1 = 1 lt.eq a_2 = 1 lt.eq a_3 = 1.125 lt.eq a_4 = 1.1875 lt.eq a_5 = 1.1875 lt.eq a_6 = 1.203 lt.eq a_7 = 1.211 lt.eq a_8 = 1.211 lt.eq a_9 = 1.213 lt.eq dots.h.c lt.eq a_n lt.eq dots.h.c lt.eq b_n lt.eq dots.h.c lt.eq b_9 = 1.215 lt.eq b_8 = 1.215 lt.eq b_7 = 1.2188 lt.eq b_6 = 1.2188 lt.eq b_5 = 1.2188 lt.eq b_4 = 1.25 lt.eq b_3 = 1.25 lt.eq b_2 = 1.25 lt.eq b_1 = 1.5 lt.eq b = 2$

  并且 $\(b_n - a_n\)= 1 / 2^n arrow.r 0$⁠．

+ $f\(a_n\)< 0$, $f\(b_n\)> 0$ 恒成立．

由1和实数完备性，就得到唯一实数 $k$ 满足 $ a_n arrow.r k arrow.l b_n\,#h(2em) upright("即") quad lim_(n arrow.r oo) a_n = lim_(n arrow.r oo) b_n = k $ #noindent;再由函数 $f\(x\)= x^3 + x - 3$ 的到处连续性，即有 $ lim_(n arrow.r oo) f\(a_n\)= f\(k\)#h(2em) lim_(n arrow.r oo) f\(b_n\)= f\(k\) $

- 由 $f\(a_n\)< 0$ 得知 $f\(k\)lt.eq 0$（第七章第二节定理2）,

- 由 $f\(b_n\)> 0$ 得知 $f\(k\)gt.eq 0$⁠．

#noindent;所以只有 $f\(k\)= 0$ 才能同时满足上述两种条件．

仿照上面的推理，我们得到了连续函数中间值定理的证明如下：

为了叙述方便，我们不妨设 $f\(a\)< f\(b\)$⁠．\[当 $f\(a\)> f\(b\)$ 时，我们可以对 $- f\(x\)$ 和 $- c$ 来作同样的讨论\]．由图8.19所示，交点可能有好几个，但是我们所要证的是至少有一个交点，我们将用二分法去逼近其中一个交点的坐标 $x_0$⁠．

取 $a_1 = a$, $b_1 = b$, 把闭区间 $\[a\,b\]$ 二等分．

- 若 $f (frac(a_1 + b_1, 2)) = c$, 则 $frac(a_1 + b_1, 2)$ 就是一个所求的 $x_0$, 自然不必再费任何手脚了；

- 若 $f (frac(a_1 + b_1, 2)) < c$, 则取后半段为 $\[a_2\,b_2\]$⁠；

- 若 $f (frac(a_1 + b_1, 2)) > c$, 则取前半段为 $\[a_2\,b_2\]$⁠．

#noindent;照这样逐次地由 $\[a_m\,b_m\]$ 去求出它的半段为 $\[a_(m + 1)\,b_(m + 1)\]$. 因为 $f\(a_m\)< c$, $f\(b_m\)> c$, 取 $x_0 = frac(a_m + b_m, 2)$

- 若 $f (frac(a_m + b_m, 2)) < c$ 则取后半段为 $\[a_(m + 1)\,b_(m + 1)\]$⁠；

- 若 $f (frac(a_m + b_m, 2)) > c$ 则取前半段为 $\[a_(m + 1)\,b_(m + 1)\]$⁠；

- 若 $f (frac(a_m + b_m, 2)) = c$ 则 $frac(a_m + b_m, 2)$ 也就是所求的 $x_0$, 而定理得证．

总结上述逐步二等分过程，就只有两种可能：一种可能是经过有限次二等分后，有这样的分点 $frac(a_m + b_m, 2)$ 使 $f (frac(a_m + b_m, 2)) = c$, 于是定理得证，另一种可能是没有这样的分点 $frac(a_m + b_m, 2)$ 使 $f (frac(a_m + b_m, 2)) = c$ 成立，在这种情形下，继续不断二等分，我们得到无限多个退缩闭区间套 $\[a_n\,b_n\]$ 满足下列条件：

+ 闭区间的端点形成夹逼数列 $\{ a_n \}$, $\{ b_n \}$, 适合 $ a_1 lt.eq a_2 lt.eq dots.h.c lt.eq a_n lt.eq dots.h.c lt.eq b_n lt.eq dots.h.c lt.eq b_2 lt.eq b_1 $ #noindent;并且 $\(b_n - a_n\)arrow.r 0$⁠．

+ $f\(a_n\)< c$, $f\(b_n\)> c$ 恒成立．

由条件1和实数完备性就得到唯一实数 $x_0$ $ lim_(n arrow.r oo) a_n = lim_(n arrow.r oo) b_n = x_0 quad upright("即") quad a_n arrow.r x_0 arrow.l b_n $ #noindent;再由函数 $f\(x\)$ 在 $x_0$ 连续性即有 $ lim_(n arrow.r oo) f\(a_n\)= f\(x_0\)\,#h(2em) lim_(n arrow.r oo) f\(b_n\)= f\(x_0\) $

由 $f\(a_n\)< c$, 得知它的极限值 $f\(x_0\)lt.eq c$, 同样地，由 $f\(b_n\)> c$, 得知它的极限值 $f\(x_0\)gt.eq c$⁠．

所以，只有 $f\(x_0\)= c$ 才能同时满足上述两个条件，定理得证．

#blk[命题1][
当 $a > 0$ 时，$f\(x\)= x^n - a = 0$ 存在唯一的正实数根，叫做 $a$ 的 $n$ 次算术方根，用符号 $root(n, a)$ 表示．

]
#proof[
先证存在性．$f\(0\)= - a < 0$, 而 $ f\(1 + a\)=\(1 + a\)^n - a > 0 $ #noindent;所以，由中间值定理 $f\(x\)= x^n - a$ 在0和 $\(1 + a\)$ 之间至少有一个根 $x_0$, 使得 $f\(x_0\)= x_0^n - a = 0$ 成立．

再证唯一性．因在 $x > 0$ 时，$x$ 愈大则它的 $n$ 次方幂 $x^n$ 也愈大，所以 $f\(x\)$ 在 $x > 0$ 时是严格递增的，当然不可能有两个不同的正实数满足 $f\(x\)= 0$⁠．

]
上面的命题给常用的“$n$ 次方根函数 $y = root(n, x)\,thick x gt.eq 0$⁠”提供了理论基础．为了进一步把中间值定理应用到一般的多项式函数上，我们给出下面的命题．

#blk[命题2][
对于实系数的多项式 $f\(x\)= a_0 x^n + a_1 x^(n - 1) + dots.h.c + a_n\,quad\(a_0 eq.not 0\)$, 总可以求出一个正数 $P$, 使得当 $x > P$ 时，$f\(x\)$ 的值与 $a_0 x^n$ 的值有相同的符号．

]
#proof[
$f\(x\)= x^n\[a_0 + phi\(x\)\]$, 这里 $phi\(x\)= a_1 / x + a_2 / x^2 + dots.h.c + a_n / x^n\,thick\(x eq.not 0\)$ 是一个 $1 / x$ 的实系数多项式．显然，$ lim_(x arrow.r oo) phi\(x\)= 0 $ #noindent;这也就是说，对于给定的 $epsilon =\|a_0\|$, 存在一个正数 $P$, 使得当 $x > P$ 时，从而 $0 < 1 / x < 1 / P$ 时，有 $ \|phi\(x\)\|<\|a_0\| $ #noindent;于是 $a_0 + phi\(x\)$, $\(x > P\)$ 与 $a_0$ 同号，因此 $f\(x\)$ 与 $a_0 x^n$ 同号．

]
但是要具体地求出 $P$ 的值，还得用一些技巧．令 $g = max\(\|a_1\|\,\|a_2\|\,dots.h\,\|a_n\|\)$, 并且先设 $x > P > 1$, 于是 $0 < 1 / x < 1 / P < 1$, 从而 $ \|phi\(x\)\| & = lr(|a_1 / x + a_2 / x^2 + dots.h.c + a_n / x^n|)\
 & lt.eq g (1 / x + 1 / x^2 + dots.h.c + 1 / x^n) < g dot.op frac(1 / x, 1 - 1 / x) $ #noindent;要使 $ \|phi\(x\)\|< g dot.op frac(1 / x, 1 - 1 / x) <\|a_0\| $ #noindent;只须 $1 / x < frac(\|a_0\|, g +\|a_0\|)$⁠，即 $x > 1 + frac(g, \|a_0\|)$⁠．

取 $P = 1 + frac(g, \|a_0\|)$⁠，因此，当 $x > 1 + frac(g, \|a_0\|)$ 时，就可以使 $f\(x\)$ 与 $a_0 x^n$ 有相同符号．

如果令 $x = - X thick\(X > 0\)$, 前面的情形说明当 $X$ 是一个充分大的正数时，$f\(- X\)$ 的值的符号就与 $\(- 1\)^n a_0 X^n$ 的值有相同符号．因此我们得到下面的推论：

#blk[推论][
对于实系数多项式 $f\(x\)= a_0 x^n + a_1 x^(n - 1) + dots.h.c + a_n thick\(a_0 eq.not 0\)$

- 当 $x$ 充分大时，$f\(x\)$ 与 $a_0$ 同号；

- 当 $x$ 取负值而 $\|x\|$ 充分大时，若 $n$ 是偶数，则 $f\(x\)$ 与 $a_0$ 同号；若 $n$ 是奇数，则 $f\(x\)$ 与 $a_0$ 异号．

]
由上面的推论直接得到下面的命题：

#blk[命题3][
若 $n$ 为奇数，则实系数方程 $x^n + a_1 x^(n - 1) + dots.h.c + a_n = 0$ 有一个根．

]
#heading(level: 2, numbering: none, supplement: [toc-sub])[习题8.3]

+ #block(sticky: true)[证明下列各函数是到处连续的函数：]

  #cols(2)[
  + $f\(x\)=\|x\|$

  + $g\(x\)= frac(x^2, 1 + x^2)$

  + $h\(x\)= x\|x\|- 1 / 2$

  + $phi\(x\)= sqrt(x)$

  ]

+ 设函数 $f\(x\)= frac(x^2 + 1, 2 x - 1)$, 则 $f\(0\)= - 1$, $f\(1\)= 2$ 符号相反，讨论方程式 $f\(x\)= 0$ 在 $0 lt.eq x lt.eq 1$ 中是否有解？

+ #block(sticky: true)[下列函数各在哪些点不连续：]

  #cols(2)[
  + $f\(x\)= frac(x + 2, x^2 - 1)$

  + $f\(x\)= frac(x - 1, \(x^2 + 1\)\(2 x + 3\))$

  + $g\(x\)= sqrt(frac(x - 2, x^2 - 4))$

  + $h\(x\)= frac(2, \|x\|- 1)$

  + $phi\(x\)= frac(\|x\|- 1, \|x - 1\|- 4)$

  + $F\(x\)= frac(1, x -\[x\])$

  ]

+ #block(sticky: true)[试证下列多项式有唯一的正实根．]

  #cols(2)[
  + $x^3 + x^2 - 1 = 0$\;

  + $x^3 - 3 x^2 + 3 x - 4 = 0$.

  ]

+ 证明 $8 x^3 - 4 x^2 - 18 x + 9 = 0$ 的一根在0和1之间，一根在1和2之间，一根在 $- 2$ 和 $- 1$ 之间．

+ #block(sticky: true)[对于下列各多项式函数 $f$, 求一整数 $n$ 使在 $n$ 和 $n + 1$ 之间的某一 $x$ 满足 $f\(x\)= 0$:]

  #cols(2)[
  + $f\(x\)= x^3 - x + 3$\;

  + $f\(x\)= x^5 + x + 1$.

  ]

+ 设 $f\(x\)\,g\(x\)$ 是两个连续函数而且 $f\(a\)> g\(a\)$, $f\(b\)< g\(b\)$, 求证在 $a\,b$ 之间存在一个适当 $x_0$, 使得 $f\(x_0\)= g\(x_0\)$⁠．

+ 设 $a < b < c$, 证明方程 $frac(1, x - a) + frac(1, x - b) + frac(1, x - c) = 2$ 有三个实根，且一个根在 $a\,b$ 之间，另一个根在 $b\,c$ 之间．

+ 用二分逼近法求 $x^3 + 2 x - 7 = 0$ 的正根，使得误差小于0.01．

== 反函数和它的图象
在研究一个问题的时候，不只是把两个变量之间的函数关系表示成 $y$ 是 $x$ 的函数，有时也需要把 $x$ 表示为 $y$ 的函数，例如，在自由落体运动中，如果想从已知的时间 $t$ 来确定路程 $s$, 则 $s$ 是 $t$ 的函数#numbered-eq($ s = 1 / 2 g t^2 $);#noindent;如果反过来，想从已知的路程 $s$ 来确定下落的时间 $t$, 则应从 (8.5) 式将 $t$ 解出：#numbered-eq($ t = sqrt(frac(2 s, g)) $);#noindent;这时，$t$ 是 $s$ 的函数．

从这里看出，这两个函数 $s = f\(t\)= 1 / 2 g t^2$ 和 $t = g\(s\)= sqrt(frac(2 s, g))$⁠，其实是同一种关系的两种表示法，我们把这样的两个函数 $f$ 和 $g$ 叫做互为反函数．

#example[
若 $x in bb(R)$, $y in bb(R)$, 那么，函数 $ f : thick y = f\(x\)= 2 x + 3\,#h(2em) g : thick x = g\(y\)= frac(y - 3, 2) $ #noindent;互为反函数．

]
#example[
若 $x in X = \{ x\|0 lt.eq x lt.eq 1 \}$, $y in Y = \{ y\|0 lt.eq y lt.eq 1 \}$⁠，而 $x\,y$ 之间的关系是 $x^2 + y^2 = 1$, 则函数 $ f : thick y & = f\(x\)= sqrt(1 - x^2)\
g : thick x & = g\(y\)= sqrt(1 - y^2) $ #noindent;互为反函数，因为在上述关系 $x^2 + y^2 = 1$ 中，$x\,y$ 是对称的，所以 $f$ 和 $g$ 是同一形式的函数．在一般情况下 $f$ 和 $g$ 是不同形式的函数．

]
必须注意，不能认为从每一个函数 $y = f\(x\)$ 都能解得一个反函数 $x = g\(y\)$. 例如，如果两个变数 $x\,y$ 之间的关系是 $y = x^2$, 定义域 $X = \{ x\|x in bb(R) \}$, 值域 $Y = \{ y\|y gt.eq 0 \}$, 那么：$f : thick y = x^2\,thick x in\(- oo\,+ oo\)$ 是 $X mapsto Y$ 的函数．但是，如果不对自变数 $x$ 加以限制，这个函数 $f$ 是不可逆的，也就是由它不能得到一个新函数 $g : thick Y mapsto X$. 因为，对于每个 $y\(eq.not 0\)in Y$, 将有 $X$ 中两个数值 $x = sqrt(y)$ 和 $x = - sqrt(y)$ 和 $y$ 对应，如下图所示：

#figure([#fig("8-21");

  ],
  caption: [
  ]
)

下面我们来说明具有怎样性质的函数才有反函数．

假如函数 $y = f\(x\)$ 具有这样的性质：“若 $x_1 eq.not x_2 thick arrow.r.double thick f\(x_1\)eq.not f\(x_2\)$, 也就是说对于定义域 $X$ 中任意不同的 $x_1$, $x_2$, 它们在值域 $Y = f\(X\)$ 中的对应值 $f\(x_1\)$, $f\(x_2\)$ 也不相同”．那么对于 $Y = f\(X\)$ 内任何一个 $y$, 通过函数 $f$, 可以逆对应出一个且只有一个 $x$, 使得 $y$ 和这个 $x$ 对应，这样一个函数叫做由 $X$ 到 $Y = f\(X\)$ 的一一对应函数，或双射（满射且单射），简称这个函数是#strong[可逆]的．对于一个可逆函数 $f : thick x mapsto f\(x\)$, 我们可以交换自变数与因变数的地位，于是对于 $Y = f\(X\)$ 的每一个 $y$ 就有 $X$ 内唯一一个逆象 $x$, 这就是说我们得到了一个新函数：$ g : thick Y = f\(X\)mapsto X\,#h(2em) upright("使得") thick y mapsto x = g\(y\) $ #noindent;假如 $y = f\(x\)$⁠．

新函数和原来函数的这种关系可以用下图来说明：

#align(center)[
#fig("8-22");

]
根据上面的分析，我们得到反函数的一般定义如下：

#blk[定义][
设给了一个函数 $y = f\(x\)$, 其定义域为 $X$, 值域为 $Y = f\(X\)$, 如果对于 $Y = f\(X\)$ 中每一个 $y$ 值，都可以从关系式 $y = f\(x\)$ 确定唯一的一个 $x$ 值，则得到一个定义在 $Y = f\(X\)$ 上而且把 $f\(X\)= Y$ 映射到 $X$ 上的以 $y$ 为自变数的新函数 $x = g\(y\)$, 这个函数称为函数 $y = f\(x\)$ 的反函数．

]
不难理解 $f$ 也是 $g$ 的反函数，并且函数 $y = f\(x\)$ 与它的反函数 $x = g\(y\)$ 组成的复合函数一定是一个恒等函数，即 $ g class("opening", stretch(\(, size: #1.2em)) f\(x\)class("closing", stretch(\), size: #1.2em)) = x\,#h(2em) f class("opening", stretch(\(, size: #1.2em)) g\(y\)class("closing", stretch(\), size: #1.2em)) = y $ #noindent;有时用符号 $f^(- 1)$ 表示反函数比较方便，如 $ f^(- 1) class("opening", stretch(\(, size: #1.2em)) f\(x\)class("closing", stretch(\), size: #1.2em)) = x\,#h(2em) f class("opening", stretch(\(, size: #1.2em)) f^(- 1)\(y\)class("closing", stretch(\), size: #1.2em)) = y $

按照函数 $y = f\(x\)$ 的图象容易判断函数 $y = f\(x\)$ 是否有反函数存在，就是在值域 $Y = f\(X\)$ 内，任意给一个值 $y_0$, 作和 $x$ 轴平行的直线 $y = y_0$⁠．如果函数 $y = f\(x\)\,thick x in X$ 的图象和直线 $y = y_0$ 的交点多于一个，那么这个函数的反函数就不存在．如果只有一个交点，那么这个函数就有反函数．如图8.22所示．

#figure([#fig("8-23");

  ],
  caption: [
  ]
)

现在我们来研究互为反函数的图象的关系，因为互为反函数的两个函数 $y = f\(x\)$ 和 $x = g\(y\)$ 事实上就是同一个关系，在几何上就是同一条曲线．例如函数 $y = 2 x + 3$ 的图象和它的反函数 $x = 1 / 2\(y - 3\)$ 的图象就是通过两个点 $(- 3 / 2 \, 0)$, $\(0\,3\)$ 的同一条直线 $2 x - y + 3 = 0$, 只是就函数 $y = f\(x\)= 2 x + 3$ 的图象去看，横轴是自变量轴，而就反函数 $x = g\(y\)= 1 / 2\(y - 3\)$ 的图象来看，纵轴是自变量轴，但是在同一个坐标系内，一般我们总规定用横坐标 $x$ 表示自变数，纵坐标 $y$ 表示因变数，所以我们还需要把反函数关系式 $x = g\(y\)$ 的 $x\,y$ 对调一下，得到习惯上的反函数 $y = g\(x\)$⁠．我们也称 $y = g\(x\)$ 是 $y = f\(x\)$ 的反函数，当然反过来 $y = f\(x\)$ 也是 $y = g\(x\)$ 的反函数，例如函数 $y = 2 x + 3$ 和 $y = 1 / 2\(x - 3\)$ 互为反函数．

函数 $y = f\(x\)$ 和它的反函数 $y = f^(- 1)\(x\)$ 的图象之间有如下关系：

若点 $\(a\,b\)$ 在曲线 $y = f\(x\)$ 上，那么点 $\(b\,a\)$ 就在曲线 $y = f^(- 1)\(x\)$ 上．

事实上，因为点 $\(a\,b\)$ 在曲线 $y = f\(x\)$ 上，所以 $b = f\(a\)$ 成立，此等式也可以写成 $a = f^(- 1)\(b\)$, 这表示点 $\(b\,a\)$ 在曲线 $y = f^(- 1)\(x\)$ 上，于是当点 $\(a\,b\)$ 走遍曲线 $y = f\(x\)$ 时，点 $\(b\,a\)$ 就走遍曲线 $y = f^(- 1)\(x\)$. 通过初等几何的方法可以证明点 $\(a\,b\)$ 和 $\(b\,a\)$ 关于第一象限角和第三象限角的平分线 $y = x$ 对称．因此，为了得到反函数 $y = f^(- 1)\(x\)$ 的图象，我们只要把 $y = f\(x\)$ 的图象关于直线 $y = x$ 反射过来就可以．如图8.23所示．

#figure([#fig("8-24");

  ],
  caption: [
  ]
)

最后，我们给出一个反函数定理：

#blk[定理][
设 $y = f\(x\)$ 在闭区间 $\[a\,b\]$ 上严格递增（递减）且连续，又 $f\(a\)= alpha$, $f\(b\)= beta$, 则在闭区间 $\[alpha\,beta\]$ 上存在着 $y = f\(x\)$ 的反函数 $x = f^(- 1)\(y\)$, 又 $x = f^(- 1)\(y\)$ 在 $\[alpha\,beta\]$（或 $\[beta\,alpha\]$⁠）上也是严格递增（或递减）且连续的．

]
#proof[
+ 先证 $y = f\(x\)$ 的值域是闭区间 $\[alpha\,beta\]$, 设 $y$ 是 $\[alpha\,beta\]$ 中任意一点，如果 $y = alpha$ 或 $beta$, 那么相应的 $x = a$ 或 $b$, 即有 $f\(a\)= alpha$ 或 $f\(b\)= beta$, 换言之，$alpha\,beta$ 在 $f\(x\)$ 的值域中．又如果 $alpha = f\(a\)< y_0 < f\(b\)= beta$, 由连续函数中间值定理，在 $\[a\,b\]$ 之间必存在一点 $x_0$ 满足 $f\(x_0\)= y_0$, 即 $\[alpha\,beta\]$ 内任一点都属于值域 $f\(\[a\,b\]\)$, 又如果 $y_0 in.not\[alpha\,beta\]$, 那么由严格递增性得出，它不可能是任一点 $x in\[a\,b\]$ 的象，这就证明了 $f\(x\)$ 的值域是 $\[alpha\,beta\]$, 因此，连续递增函数 $f :\[a\,b\]mapsto\[alpha\,beta\]$ 是满射的．

+ 再证 $f$ 是单射的，因为一个严格递增函数 $f$ 满足条件：$ x_1 < x_2 quad arrow.r.double quad f\(x_1\)< f\(x_2\) $ #noindent;即自变数的值与函数值是一对一的，所以 $f$ 是单射的．

  由1、2知函数 $f$ 是可逆的，因此存在一个反函数 $f^(- 1) :\[alpha\,beta\]mapsto\[a\,b\]$, 其中 $x = f^(- 1)\(y\)$.

+ 证明 $f^(- 1)$ 的递增性．

  假设 $y_1\,y_2$ 是 $\[alpha\,beta\]$ 内的两个数，并且 $y_1 < y_2$, 又设 $x_1 = f^(- 1)\(y_1\)$, $x_2 = f^(- 1)\(y_2\)$, 对于这两数 $x_1$ 和 $x_2$ 只有三种可能：$x_1 < x_2$, $x_1 = x_2$, $x_1 > x_2$⁠．

  如果 $x_1 gt.eq x_2$, 由于 $f$ 的递增性质，知道 $ y_1 = f\(x_1\)gt.eq f\(x_2\)= y_2 $ #noindent;这与 $y_1 < y_2$ 的假设矛盾，因此，$x_1 < x_2$, 即 $ y_1 < y_2 quad arrow.r.double quad f^(- 1)\(y_1\)= x_1 < x_2 = f^(- 1)\(y_2\) $ #noindent;这就证明了 $x = f^(- 1)\(y\)$ 是 $\[alpha\,beta\]$ 上的递增函数．

+ 最后还应证明 $x = f^(- 1)\(y\)$ 在 $\[alpha\,beta\]$ 上连续，但是在高中阶段，我们不深究，同学只要知道结论就可以了．

]
一般来说，一个函数可以分成分段单调的几支，对于每一支得一反函数．

例如，函数 $y = f\(x\)= x^2\,thick x in bb(R)$ 在区间 $\[0\,+ oo\)$ 或 $\(- oo\,0\]$ 上连续和严格单调．因为 $\[0\,b\]subset\[0\,+ oo\)$ 和 $\[- b\,0\]subset\(- oo\,0\]$⁠，这个 $b$ 是任意大的正数，因此 $y = x^2\,thick x in bb(R)$ 的两个分段 $y = f_1\(x\)= x^2\,thick x in\[0\,b\]$ 和 $y = f_2\(x\)= x^2\,thick x in\[- b\,0\]$ 根据反函数存在定理，分别有反函数：$ x & = f_1^(- 1)\(y\)= sqrt(y)\,#h(2em) y in\[0\,b^2\]\
x & = f_2^(- 1)\(y\)= - sqrt(y)\,#h(2em) y in\[0\,b^2\] $ #noindent;但是当 $b arrow.r + oo$ 时，$b^2 arrow.r + oo$, 所以，

- 连续和递增的一段 $y = f_1\(x\)= x^2\,thick x in\[0\,+ oo\)$ 的反函数是 $x = f_1^(- 1)\(y\)= sqrt(y)\,thick y in\[0\,+ oo\)$, 它是连续的和严格递增的；

- 连续和递减的一段 $y = f_2\(x\)= x^2\,thick x in\(- oo\,0\]$ 的反函数是 $x = f_2^(- 1)\(y\)= - sqrt(y)\,thick y in\[0\,+ oo\)$, 它是连续的和严格递减的．

将 $f_1^(- 1)$ 和 $f_2^(- 1)$ 中的 $x$ 和 $y$ 对调后，便得到 $f_1$ 和 $f_2$ 的矫形的反函数，（见图8.24）．$ y & = f_1^(- 1)\(x\)= sqrt(x)\,#h(2em) x in\[0\,+ oo\)\
y & = f_2^(- 1)\(x\)= - sqrt(x)\,#h(2em) x in\[0\,+ oo\) $

#figure([#fig("8-25");

  ],
  caption: [
  ]
)

一般地，函数 $y = f\(x\)= x^n\,thick\(n in bb(N)\)$ 在半开区间 $\[0\,+ oo\)$ 上连续和严格递增，函数 $f$ 有反函数 $ x = f^(- 1)\(y\)= root(n, y) = y^(tfrac(1, n))\,#h(2em) y in\[0\,+ oo\) $ #noindent;它是连续的和严格递增的．

在图8.25中，我们画出几个幂函数和它们的反函数的图象：

#figure([#fig("8-26");

  ],
  caption: [
  ]
)

#heading(level: 2, numbering: none, supplement: [toc-sub])[习题8.4]

+ #block(sticky: true)[下列函数在哪些范围内是严格单调的？]

  #cols(2)[
  + $f\(x\)= x^3$

  + $phi\(x\)= x^4$

  + $y = sqrt(x)$

  + $y = root(3, x)$

  + $f\(x\)=\|x + 1\|$

  ]

+ #block(sticky: true)[对于下列各函数分别找出它们的最大定义域和值域使得它们有反函数，并分别写出它们的用变数 $x$ 表出的反函数．]

  #cols(2)[
  + $y = sqrt(2 x + 1)$

  + $y = x^(tfrac(2, 3))$

  + $y = x^2 - 1$

  + $y = sqrt(1 - x^2)$

  + $f\(x\)= frac(x, 1 - x^2)\,quad - 1 < x < 1$

  ]

+ #block(sticky: true)[作出下列各函数和它的反函数的图象：]

  #cols(2)[
  + $y = x^(tfrac(3, 2)) quad\(x gt.eq 0\)$

  + $y = frac(x + 1, x) quad\(x eq.not 0\)$

  + $y = frac(x, x + 1) quad\(x eq.not - 1\)$

  ]

+ 证明，当且仅当 $a d - b c eq.not 0$ 时，$f\(x\)= frac(a x + b, c x + d)\,thick (x eq.not - d / c)$ 是单射的，并求它的反函数．又在什么条件下，$f\(x\)$ 的反函数等于原来函数．

+ #lead-list(none, 2)[
  + 求 $f\(x\)= frac(2 x - 5, x - 3)$ 的反函数 $f^(- 1)\(x\)$⁠．

  + 已知函数 $f\(x\)= frac(2 x - 5, x - 3)$ 的值域是 $\{ f\(x\)\|f\(x\)lt.eq 0\,thick f\(x\)gt.eq 4 \}$, 求 $f\(x\)$ 的定义域．

  + 设函数 $g\(x\)= frac(a x - 4, x + b)$ 的反函数是 $g^(- 1)\(x\)= frac(3 x + c, - x + 2)$⁠，求实数 $a\,b\,c$ 的值．
  ]

+ $f\(x\)= display(cases(- x\, & quad x gt.eq 0, x^2 & quad x < 0))$ 给出由实数集 $bb(R)$ 到 $bb(R)$ 的一个函数 $f$⁠．

  + 设 $q\(x\)$ 是 $f$ 和 $f$ 的复合函数，用 $x$ 的式子表示 $q\(x\)$.

  + 设 $q\(x\)$ 的反函数是 $q^(- 1)\(x\)$, 用 $x$ 的式子表示 $q^(- 1)\(x\)$.
