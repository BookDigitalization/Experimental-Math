// 由 typst/tools/tex2typ.py 从 math2/2.tex 转换而来，已人工校对的部分以本文件为准。
#import "../common/template.typ": *
#import "figs.typ": fig
#import "defs.typ": *

= 集合与简易逻辑
== 集合
=== 集合的概念
我们在第一册中曾用到过集合的概念，如自然数所构成的集合 $\{ 1\,2\,3\,dots.h \}$, 方程 $x^2 = 4$ 的解所构成的集合 $\{ - 2\,2 \}$ 等等．那么，什么是集合呢？集合是数学中一个很根本的也是很原始的概念，通常我们把一些确定的、彼此不同的“事物”作为一个整体来考虑时，这个整体便说是一个#strong[集合]．这些事物叫做该集合的#strong[元素]．例如：某中学初二（一）班全体学生；小于100的全体质数；一个生产队的全体社员；一个工厂的全部机器等等，都可分别构成一个集合．可见集合的概念是很简单的．

对于集合这个概念，我们要注意以下几点：

第一，一个集合完全被它所含的元素所确定．至于集合的元素之间是否具有某种相互关系，怎样排列，以及这些元素所构成的集合是否具有某种功效，单从集合的观点来看，是一样的．例如，“一堆还没有组装的手表另件”和用“这些另件组装好了的手表”是同一个集合．因为两者包含同样的元素．因此，集合这个概念的要素是：#strong[一个集合完全被它所含的元素所确定]．

第二，集合是指构成集合的全体元素，而不是个别元素．作为整体的集合和集合中的每个元素都是不同的．

例如，集合 $A = \{ a\,b\,c\,d \}$, $A$ 代表的是字母 $a$、$b$、$c$、$d$ 的全体，而不是代表其中的个别字母，因此，作为字母 $a$、$b$、$c$、$d$ 的整体的集合 $A$ 与 $A$ 中的个别元素如 $a\,b\,c\,d$ 不能混为一谈．

第三，集合中所含的元素必须是“确定”的，是可以判断的．例如，由“比较小的实数”的全体就不能构成一个集合，因为到底什么叫做比较小的实数，没有判断的标准．但是“比80小的实数”是完全可以确定的，这就有了检验一个实数是否是这个集合的元素的标准．

任一几何图形，我们可以看作由点构成的，也就是可看作点的集合．例如：

#strong[圆]是同一平面上与一定点的距离等于定长的所有点的集合（图2.1(1)）．

#strong[圆面]是同一平面上与一定点距离小于或等于定长的所有点的集合．（图2.1(2)）．

#figure([#fig("2-01");

  ],
  caption: [
  ]
)

我们通常用大写字母 $A\,B\,C\,dots.h$ 等表示某一个集合，用小写字母 $a\,b\,c\,dots.h$ 表示集合的元素．如果 $a$ 是集合 $A$ 的一个元素，我们就记为 $a in A$，读作 $a$ 属于 $A$, 或说 $a$ 是 $A$ 中的一个元素．例如，$2 in \{ 2\,3 \}$, 表示 $2$ 是集合 $\{ 2\,3 \}$ 中的一个元素．

如果 $a$ 不是集合 $A$ 的元素，记作 $a in.not A$ 读作 $a$ 不属于 $A$．

应该注意的是：几何图形中的元素“点”我们仍用大写字母 $A\,B\,C\,dots.h$ 表示，这一点请同学们务必注意，不要混淆．如 $X$ 点在直线 $A B$ 上，也可以说 $X$ 点属于直线 $A B$, 可写成 $X in upright("直线") A B$. $Y$ 点不在直线 $A B$ 上，也可以说 $Y$ 点不属于直线 $A B$, 可写成 $Y in.not upright("直线") A B$（图2.2）．

#figure([#fig("2-02");

  ],
  caption: [
  ]
)

#exercise[
+ 若 $S$ 是所有平方数的集合，试判定100至200之间哪些数属于 $S$.

+ 若 $B$ 是所有英语元音字母所构成的集合，$A$ 是所有英语辅音字母所构成的集合，试判定 $a\,b\,c\,d\,e$ 这五个字母分别属于哪一集合，又不属于哪一集合．

]
=== 集合的描述法
决定一个集合的要素，就是它所含的元素，所以要描述一个集合，也就是要描述它所含的是哪些元素．下面介绍两种常用的集合描述法．

==== 列举法
如果一个集合 $A$ 只含有很少几个元素，那么可以直截了当地把这个集合含有的所有元素逐一列举出来，并用大括号 $\{ quad \}$ 把它们括起来，这种描述法叫做#strong[列举法]．

例如 $\{ 0\,1 \}$ 是由0,1这两个元素所构成的集合；$\{ +\,-\,times\,div \}$ 表示由 $+$、$-$、$times$、$div$ 四个运算符号所构成的集合．用列举法描述集合时，描述方法与元素在括号内的排列顺序无关，即 $\{ 3\,7\,10 \}$、$\{ 10\,3\,7 \}$ 与 $\{ 7\,3\,10 \}$ 都表示同一个集合．

==== 特征性质描述法
当集合的元素稍多一些时，如小于100的质数所构成的集合：$ \{ 2\,3\,5\,7\,11\,13\,17\,19\,23\,29\,31\,37\,41\,43\,47\,53\,59\,61\,67\,71\,73\,79\,83\,89\,97 \} $ #noindent;逐一列举已是很麻烦的了，而对于含有无穷多个元素的集合，例如全体整数所构成的集合，逐一列举它的元素更是不可能的，这时我们可用某集合所含的元素的“特征性质”去描述这个集合，这种方法叫做#strong[特征性质描述法]．如：

+ 集合元素为 $plus.minus 2\,plus.minus 4\,plus.minus 6\,plus.minus 8\,dots.h\,plus.minus 2 n dots.h$ 的集合，可描述为{偶数}或{能被2整除的数}．

+ 集合元素为 $plus.minus 1\,plus.minus 3\,plus.minus 5\,plus.minus 7\,dots.h\,plus.minus\(2 n + 1\)dots.h$ 的集合，可描述为{奇数}或{被2除余1的数}．

+ $\{ - sqrt(2)\,sqrt(2) \}$, 可描述为 $\{ upright("平方为2的数") \}$．

+ 圆面上不在圆上的点叫做圆内的点．在平面 $P$ 上以 $O$ 为圆心，5厘米长为半径的圆内的点所成的集合，可描述为{在平面 $P$ 上和点 $O$ 的距离小于5厘米的点}．

集合的特征性质描述法，常常采用下面更一般的形式：$ A = \{ x\|alpha \} $ #noindent;其中 $x$ 表示集合 $A$ 的任一元素，$x\|alpha$ 表示元素 $x$ 具有特征性质 $alpha$, 而 $A = \{ x\|alpha \}$ 则表示由所有具有性质 $alpha$ 的元素所构成的集合 $A$. 这样一来，上述各例又可表示如下：

+ $A = \{ x\|x upright("能被2整除") \}$

+ $B = \{ x\|x upright("被2除余1") \}$

+ $C = \{ x\|x^2 = 2 \}$

+ $D = \{ X\|overline(O X) < 5 upright(c m)\,thick upright("且") O upright("是平面") P upright("上定点，") X in upright("平面") P \}$

有时候“任一元素 $x$”也可用某种形式写出来，例如上面的集合 $A$、$B$ 可写为：$ A & = { 2 n\|n upright("为任意整数") } = { 2 n\|n in bb(Z) }\
B & = { 2 n + 1\|n upright("为任意整数") } = { 2 n + 1\|n in bb(Z) } $

#exercise[
+ 用列举法表示下列集合：

  + 头五个质数的全体构成的集合．

  + 12的所有因数构成的集合．

  + 自然数里头五个平方数的全体构成的集合．

  + 20与30间的奇数的全体构成的集合．

  + 小于20的全体偶数构成的集合 $⁠P$．

+ 用符号“$⁠in$”，“$⁠in.not$”表示 $⁠b$, $⁠c$, $⁠d$ 与集合的关系．

  + $A = { x\|x upright("是15的因数") }$，$⁠b = 5$, $⁠c = 15$, $⁠d = 12$；

  + $⁠O = { x\|x upright("是小于16的质数") }$，$⁠b = 2$, $⁠c = 3$, $⁠d = 7$．

+ $⁠C$ 是平面 $P$ 上以 $O$ 为圆心，半径为3cm的圆周上的所有点组成的集合，$X$、$⁠Y$、$⁠Z$ 是平面 $P$ 上的三个点，且 $overline(O X) = 5 upright(c m)$, $⁠overline(O Y) = 2 upright(c m)$, $⁠overline(O Z) = 3 upright(c m)$, 试用符号“$⁠in$”和“$⁠in.not$”表示 $⁠X$, $⁠Y$, $⁠Z$ 与集合 $C$ 的关系．

+ 试用特征性质描述法描述下列集合．

  + 一元二次方程 $x^2 + 2 x - 3 = 0$ 的两个根所构成的集合．

  + 所有加7就大于15的实数所构成的集合．

  + 所有大于或等于3而小于5的实数的集合．

+ 试用特征性质描述第1题中的五个集合．

+ 把下列集合用列举法描述出来：

  + $A = { x\|x upright("是整数且")\|x\|< 5 }$

  + $⁠B = { x\|x upright("是英语中的元音字母") }$

  + $⁠C = { x\|x upright("是整数且") 1 < x < 10 }$

  + $⁠D = { x\|x upright("是") a upright("或是") b upright("，或是") c }$

]
=== 集合与集合的关系和集合的运算
==== 集合与集合的关系
如果集合 $⁠A$ 的每一个元素，也是集合 $B$ 的元素，那么我们说 $A$ 是 $B$ 的#strong[子集]．也可以说“$A$ #strong[含于] $B$”，或“$⁠B$ #strong[包含] $A$”，我们用符号 $⁠A subset.eq B$, 或 $⁠B supset.eq A$ 来表示，请同学们注意：因为集合 $A$ 的每个元素肯定是集合 $A$ 的一个元素，所以每个集合 $A$ 都是它本身的子集．

为了能够形象化地帮助我们理解集合，我们常用图来表示集合．最常用的方法是对给定的集合用圆形表示，圆形上的点表示该集合的元素，圆形外的点表示不是该集合的元素．不同的圆形表示不同的集合．这种圆形通常叫做维恩（Venn）图．

这样，集合 $A$ 是集合 $B$ 的子集，可形象地用图2.3所示的两圆形来表示．

如果集合 $A$ 中的每一个元素都是集合 $B$ 中的元素，而 $B$ 中的元素却有不属于 $A$ 的，这时我们说 $A$ 是 $B$ 的#strong[真子集]，记作 $A subset B$．

#align(center, block(breakable: false, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("2-03");], caption: []), figure([#fig("2-04");], caption: []))));

在图2.4中，$⁠overline(A B)$ 上的点都是直线 $A B$ 上的点，但是直线 $A B$ 上的点却还有很多不属于 $overline(A B)$, 所以 $⁠overline(A B)$ 是直线 $A B$ 的真子集，记作：$ overline(A B) subset upright("直线") A B $

这里我们要提醒同学们注意区分“属于”关系和“含于”关系．“属于”关系是集合的元素与集合本身的关系，但“含于”关系却是集合与集合之间的关系．

例如集合 $⁠A = { 3\,4\,5 }\,thick B = { 3\,4\,5\,6\,7 }$, 对于元素4来说，它和 $⁠A$ 或 $B$ 的关系是“属于”关系，即 $4 in A$, $4 in B$\; 对于集合 $⁠A$ 与 $B$ 来说，它们的关系却是“含于”关系，即 $A subset B$．

如果两个集合 $⁠A$、$⁠B$ 是由共同的元素所构成的，我们称它们为相等的集合，记作 $A = B$. 例如，${ x\,y\,z } = { y\,x\,z }$, ${ +\,-\,times\,div } = { times\,-\,+\,div }$ 等．

如果两个集合 $A$、$⁠B$, $⁠A subset.eq B$ 且 $B subset.eq A$, 这就是说 $⁠A$ 的每个元素都是 $B$ 的元素，而 $B$ 的每个元素也都是 $A$ 的元素，显然这两个集合含有相同的元素，则 $A = B$. 例如，$⁠A = { upright("偶数") }$，$⁠B = { 2 n\|n in bb(Z) }$, 则 $⁠A = B$. 事实上 $⁠A$, $⁠B$ 两个集合就是同一个集合的两种不同描述法．

如果有三个集合 $A$、$⁠B$、$⁠C$, $⁠A subset.eq B$ 且 $B subset.eq C$, 那么显然有 $⁠A subset.eq C$. 这就是说集合的含于关系具有传递性．

==== 集合的运算
#strong[交集]#h(1em);由集合 $⁠A$ 与集合 $B$ 的公共元素所成的集合叫做集合 $A$ 与集合 $B$ 的交集（或交）．记为：$A inter B$，读为 $⁠A$ 交 $B$.

#align(center, block(breakable: false, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("2-05");], caption: []), figure([#fig("2-06");], caption: []))));

两个集合 $⁠A$、$⁠B$ 的交集用维恩图来示意，如图2.5中的阴影部分就表示 $A inter B$.

若 $⁠A = { a\,b\,c\,d }$, $⁠B = { c\,d\,e }$, 则 $⁠A inter B = { c\,d }$．

在图2.6中，直线 $⁠ell$ 与直线 $m$ 的交集是 $A$ 点，即 $ell inter m = { A upright("点") }$．

#align(center, block(breakable: false, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("2-07");], caption: []), figure([#fig("2-08");], caption: []))));

在图2.7中，$⁠overline(A B)$ 是射线 $A B$ 和射线 $B A$ 的交集，即：$ overline(A B) = upright("射线") A B inter upright("射线") B A $

一条直线把一个平面分成两部分，其中每一部分都叫做半平面，这条直线叫作半平面的界．图2.8中，$⁠angle A O B$ 的内部是以直线 $O A$ 为界含有射线 $O B$ 的半平面与以直线 $O B$ 为界含有射线 $O A$ 的半平面的交集（即图中的阴影部分）．

#align(center, block(breakable: false, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("2-09");], caption: []), figure([#fig("2-10");], caption: []))));

显然，若 $A subset.eq B$, 则 $⁠A inter B = A$, 反之，若 $⁠A inter B = A$, 则 $⁠A subset.eq B$.

#strong[并集]#h(1em);由集合 $⁠A$ 的元素或集合 $B$ 的元素合并而成的集合叫做集合 $A$ 与集合 $B$ 的并集（或并）记为：$A union B$，读为A并B．

集合 $⁠A$ 与集合 $B$ 的并集用维恩图示意，如图2.9所示，图中的阴影部分就表示 $A union B$.

如果 $⁠A = { 1\,2\,3 }$, $⁠B = { 3\,4\,5 }$, 那么 $⁠A union B = { 1\,2\,3\,4\,5 }$.

#rmk[
在求上述 $⁠A$、$⁠B$ 的并集时，虽然 $A$ 与 $B$ 含有共同的元素3, 但在 $A union B$ 中3只取一次．

]
如果 $A_(+) = { x\|x upright("是实数，且") x gt.eq 5 }$，$⁠A_(-) = { x\|x upright("是实数，且") x lt.eq - 5 }$，$⁠A = { x\|x^2 gt.eq 25 }$，那么 $⁠A_(+) union A_(-) = A$．

在图2.10中，直线 $⁠A B$ 是射线 $A B$ 和射线 $B A$ 的并集，即 $ upright("直线") A B = upright("射线") A B union upright("射线") B A $

#strong[空集]#h(1em);为了使集合 $⁠A$ 和集合 $B$ 的交集 $A inter B$ 在集合 $A$ 与集合 $B$ 不含有任何公共元素时仍有意义，我们自然想到：这时的 $A inter B$ 应是一个不含有任何元素的集合．因此，我们把这种不含任何元素的集合叫做#strong[空集]，并用符号 $nothing$ 表示．

由空集的意义可知，对任何一个集合 $P$, 都有 $⁠P inter nothing = nothing$, $⁠P union nothing = P$ 成立，并且空集是任何一个集合 $P$ 的子集．即：$P supset.eq nothing$

如果 $⁠A = { upright("奇数") }$，$⁠B = { upright("偶数") }$，那么 $⁠A inter B = nothing$．

在图2.11中，若 $⁠dot.o O_1$ 和 $dot.o O_2$ 相离，则 $dot.o O_1 inter dot.o O_2 = nothing$

#figure([#fig("2-11");

  ],
  caption: [
  ]
)

如果直线 $⁠a pll$ 直线 $b$, 那么 $⁠a inter b = nothing$.

#strong[基集与补集]#h(1em);如果我们所讨论的集合都是一个给定集合的子集，我们就称这个给定集合为#strong[基集]，通常用符号 $⁠I$ 表示基集．

例如，我们所讨论的集合是 $nothing$、${ 1 }$、${ 2 }$、${ 3 }$、${ 1\,2 }$、${ 2\,3 }$、${ 1\,3 }$ 和 ${ 1\,2\,3 }$ 时，因为上述集合都是集合 ${ 1\,2\,3 }$ 的子集，所以我们称 ${ 1\,2\,3 }$ 为基集．

又因为平面和平面上的几何图形都是点的集合，那么平面几何所讨论的图形都可以看作是某平面上所有点的集合的子集，这时，我们把平面叫做基集．

在代数中，当我们讨论有理数运算时，全体有理数就是基集．

如果 $A subset.eq I$, 在基集 $⁠I$ 中所有不属于 $A$ 的元素所构成的集合叫做 $A$ 的#strong[补集]，以符号“$A^c$”表示，读为 $⁠A$ 补．因此，$ A inter A^c = nothing\,#h(2em) A union A^c = I $

基集在图示时，常常用一矩形所包围的点表示．图2.12中的阴影部分示意 $⁠A^c$．

#align(center, block(breakable: false, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("2-12");], caption: []), figure([#fig("2-13");], caption: []))));

如果以实数全体为基集 $⁠I$，$⁠A = { upright("有理数") }$，$⁠B = { upright("无理数") }$，那么 $⁠A^c = B$, $⁠B^c = A$, $⁠A union B = I$, $⁠A$ 和 $B$ 互为补集．

如果以实数的全体为基集 $I$, $⁠A = { x\|x gt.eq 5 }$, $⁠B = { x\|x < 5 }$, 那么 $⁠A^c = B$, $⁠B^c = A$, $⁠A$ 和 $B$ 互为补集．

如果以平面 $P$ 上的所有点的集合为基集 $I$, $⁠O$ 是 $P$ 上一个定点，$A = { X\|O X lt.eq 3 upright(c m)\,thick upright("且") X in P }$, $⁠B = { X\|O X > 3 upright(c m)\,thick upright("且") X in P }$, 那么 $⁠A^c = B$, $⁠B^c = A$, $⁠A$ 和 $B$ 互为补集（图2.13）．

对于基集 $I$ 的任何子集合 $A$, 都有 $⁠I supset.eq A supset.eq nothing$.

$⁠A inter B = A$ 和 $A inter B^c = nothing$ 是同一件事的两种说法（图2.14）．$A subset.eq B$ 和 $B^c subset.eq A^c$ 也是同一事件的两种说法（图2.15）．

#align(center, block(breakable: false, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("2-14");], caption: []), figure([#fig("2-15");], caption: []))));

#heading(level: 2, numbering: none, supplement: [toc-sub])[习题2.1]

+ 设 $A = { 1\,2\,3 }$

  + 写出一个对象，它是 $⁠A$ 的元素；

  + 写出一个对象，它不是 $A$ 的元素；

  + 写出一个对象，它是 $A$ 的子集；

  + 写出一个对象，它不是 $A$ 的子集；

  + 存在一个既是 $A$ 的元素又是 $A$ 的子集的对象吗？

+ 设 $A = { x\|x upright("是一位的奇数") }$，指出在下列集合中，哪个是空集？哪个是只有一个元素的集合？$ B = { x\|x in A upright("且") x > 2 }\;#h(2em) C = { x\|x in A upright("且") x > 9 } $ #noindent;$ D = { x\|x in A upright("且") x upright("除以3余2") } $

+ 指出下列各题中集合 $⁠A$ 与集合 $B$ 的关系．

  + $A = { 1\,3\,5\,7\,9 }\,#h(2em) B = { 3\,5\,7 }$

  + $⁠A = { 2\,4\,6\,8 }\,#h(2em) B = { x\|x upright("是偶数且") 1 < x < 9 }$

  + $⁠A = { 2\,3 }\,#h(2em) B = { x\|x^2 - 5 x + 6 = 0 }$

  + $⁠A = { upright("周一")\,upright("周二") }\,#h(2em) B = { x\|x upright("是一周的名称") }$

+ 写出 ${ 0\,1 }$ 的所有子集．

+ 写出 ${ upright("黄")\,upright("红")\,upright("蓝") }$ 的所有真子集．

+ 用列举法表示 $A inter B$.

  + $⁠A = { 1\,2\,3\,4 }\,#h(2em) B = { 3\,5\,7\,9 }$

  + $⁠A = { x\|x upright("是18的约数") }\,#h(2em) B = { x\|x upright("是小于或等于10的整数") }$

+ 已知 $⁠A = { 2\,3\,5\,6\,7 }$, $⁠B = { x\|x upright("为一位奇数") }$，分别把 $⁠A inter B$, $⁠A union B$ 的元素用列举法表示出来．

+ 若基集选定为实数集，$A = { x\|x < 5 }$，求 $⁠A^c$．

+ 若基集定为平面 $⁠P$, $⁠O$ 是 $P$ 上一定点，设平面 $P$ 上的一个子集 $A = { X\|overline(O X) < 2 upright("且") X in upright("平面") P }$, 求 $⁠A^c$．

+ 某小组共有学生18人，其中有12人喜欢排球，有15人喜欢篮球，这两种运动都喜欢的有10人，试问：

  + 喜欢排球不喜欢篮球的有几人？

  + 喜欢篮球不喜欢排球的有几人？

  + 喜欢排球或者喜欢篮球的有几人？

  + 这两种运动都不喜欢的有几人？

== 简易逻辑
=== 推出关系
在上一节中，我们学过了可用某集合的元素的特征性质来描述这个集合．例如：$ A & = { x\|x upright("被2整除") }\
B & = { x\|x^2 = 4 }\
C & = { X\|overline(O X) = 3 upright(c m)\,thick upright("且") O upright("是平面") P upright("上定点，") X in upright("平面") P } $

由此可见，一个集合完全被它所含元素的特征性质所确定．

在本书中，我们用小写字母如 $⁠alpha\,beta\,gamma\,dots.h$ 等去表示“性质”；用相对的大写英文字母 $A\,B\,C\,D\,dots.h$ 等去表示由具有该性质的元素所构成的集合．

例如：集合 $A = { upright("偶数") }$，$⁠alpha$ 表示性质：被2整除，那么集合 $A$ 完全由具有性质 $alpha$ 的元素确定．这样，偶数集合 $A$ 与构成这个集合的元素所具有的性质 $alpha$（被2整除）互相对应．因此，如果 $⁠A$ 是由具有性质 $alpha$ 的元素所构成的集合，那么 $A$ 与 $alpha$ 之间的这种对应关系，可以表示为：$ alpha arrow.l.r.long A\,#h(2em) upright("或") #h(2em) A arrow.l.r.long alpha $

下面我们将利用集合与性质之间的对应关系简单地把今后要用到的简易逻辑作些说明．

如果 $⁠A = { x\|x upright("是4的倍数") }$，$⁠B = { x\|x upright("是2的倍数") }$，则 $⁠A$ 中的元素都具有性质 $alpha$：“4的倍数”；$⁠B$ 中的元素都具有性质 $beta$：“2的倍数”．我们知道如果某元素 $⁠x$ 是“4的倍数”，则 $x$ 一定是“2的倍数”（即 $A$ 是 $B$ 的子集），这时我们说可由“$x$ 是4的倍数”推出“$x$ 是2的倍数”．

一般地，#strong[如果具有性质 $alpha$ 的元素也具有性质 $beta$, 我们说可由 $⁠alpha$ 推出 $beta$, 用符号 $⁠alpha arrow.r.double beta$ 表示．]

推出关系是简易逻辑中最基本的关系．如果令：$A arrow.l.r.long alpha$, $⁠B arrow.l.r.long beta$，则 $⁠alpha arrow.r.double beta$ 和 $A subset.eq B$ 是同一件事的两种说法，从集合的观点看 $A$ 是 $B$ 的子集（即 $A subset.eq B$）；从性质的观点看 $⁠alpha$ 推出 $beta$（即 $⁠alpha arrow.r.double beta$）．

在日常用语中，我们常说“如果某事物具有性质 $⁠alpha$, 则必具有性质 $⁠beta$\.”也就是上面讲的 $⁠alpha arrow.r.double beta$．

如果 $⁠alpha : x > 2$, $⁠beta : x > 3$, 因为一个大于3的数也一定大于2, 所以 $⁠beta arrow.r.double alpha$, 若 $⁠A = { x\|x > 2 }$, $⁠B = { x\|x > 3 }$, 则有 $⁠B subset.eq A$．

如果 $⁠alpha :\|x\|> 2$, $⁠beta : x > 1$. 设 $⁠A = { x\|thick\|x\|> 2 }$, $⁠B = { x\|x > 1 }$, 因为 $⁠A = { x\|thick\|x\|> 2 } = { x\|x > 2 } union { x\|x < - 2 }$, 由此，我们可以看到一个绝对值大于2的数，并不一定大于1, 所以 $⁠A$ 不含于 $B$, 即 $⁠alpha arrow.r.double beta$ 不成立，反之，$beta arrow.r.double alpha$ 也不成立．

如果 $alpha arrow.r.double beta$, 且 $⁠beta arrow.r.double alpha$, 我们便表示为：$⁠alpha arrow.l.r.double.long beta$.

设 $⁠alpha arrow.l.r.long A$, $⁠beta arrow.l.r.long B$, 若 $⁠alpha arrow.l.r.double.long beta$, 从集合的观点看就是 $⁠A subset.eq B$ 且 $B subset.eq A$, 即 $⁠A = B$.

设 $⁠alpha arrow.l.r.long A$, $⁠beta arrow.l.r.long B$, $⁠gamma arrow.l.r.long C$, 如果 $⁠alpha arrow.r.double beta$, 且 $⁠beta arrow.r.double gamma$, 由集合与性质之间的对应关系可知 $⁠A subset.eq B$, $⁠B subset.eq C$. 再由包含关系的传递性我们就得到 $⁠A subset.eq C$. 所以 $⁠alpha arrow.r.double gamma$. 这就说明了推出关系的一个基本特性：

当 $⁠alpha arrow.r.double beta$, 且 $⁠beta arrow.r.double gamma$ 成立时，$alpha arrow.r.double gamma$ 也一定成立．这个特性叫做推出关系的#strong[传递性]．

现在我们从性质的观点看一下集合的交集，并集，补集的意义．

设 $alpha arrow.l.r.long A$、$⁠beta arrow.l.r.long B$, 不难看出：

- $⁠A inter B$ 就是具有性质 $alpha$ 且具有性质 $beta$ 的元素所构成的集合．“具有性质 $alpha$ 且具有性质 $beta$”，记作 $⁠alpha and beta$，读作 $⁠alpha$ 且 $beta$；

- $⁠A union B$ 就是具有性质 $alpha$ 或具有性质 $beta$ 的元素所构成的集合．“具有性质 $alpha$ 或具有性质 $beta$”，记作 $⁠alpha or beta$. 读作 $⁠alpha$ 或 $beta$．

- $⁠A^c$ 就是那些不具有性质 $alpha$ 的元素所构成的集合．我们用 $macron(alpha)$ 表示“不具有性质 $alpha$”，读作非 $⁠alpha$, 也叫 $⁠alpha$ 的反性质．

#figure([#fig("2-16");

  ],
  caption: [
  ]
)

设 $A = { X\|X upright("为") dot.o O_1 upright("内的点") }$，$⁠B = { X\|X upright("为") dot.o O_2 upright("内的点") }$，$⁠alpha$ 表示 $dot.o O_1$ 内的点，$beta$ 表示 $dot.o O_2$ 内的点．则 $A\,B$ 与 $alpha\,beta$ 的关系如下（图2.16）：

- $A inter B arrow.l.r.long alpha and beta$#h(1em);在 $⁠dot.o O_1$ 且在 $dot.o O_2$ 内的点的集合．

- $A union B arrow.l.r.long alpha or beta$#h(1em);在 $⁠dot.o O_1$ 或在 $dot.o O_2$ 内的点的集合．

- $A^c arrow.l.r.long macron(alpha)$#h(1em);不在 $⁠dot.o O_1$ 内的点的集合．

- $B^c arrow.l.r.long macron(beta)$#h(1em);不在 $⁠dot.o O_2$ 内的点的集合．

- $A^c inter B^c arrow.l.r.long macron(alpha) and macron(beta)$#h(1em);不在 $⁠dot.o O_1$ 内且不在 $dot.o O_2$ 内的点的集合．

- $A^c union B^c arrow.l.r.long macron(alpha) or macron(beta)$#h(1em);不在 $⁠dot.o O_1$ 内或不在 $dot.o O_2$ 内的点的集合．

总结以上讨论，我们把性质与集合之间的关系列成下表：

#align(center)[
#table(
  columns: (auto, auto, auto, auto,),
  align: (center, center, center, center,),
  table.vline(x: 2),
  table.hline(),
  [集合],
  [性质],
  [集合],
  [性质],
  table.hline(),
  [$A$],
  [$⁠alpha$],
  [$⁠B$],
  [$⁠beta$],
  [$⁠A^c$],
  [$⁠macron(alpha)$],
  [$⁠B^c$],
  [$⁠macron(beta)$],
  [$⁠A inter B$],
  [$⁠alpha and beta$],
  [$⁠A union B$],
  [$⁠alpha or beta$],
  [$⁠A subset.eq B$],
  [$⁠alpha arrow.r.double beta$],
  [$⁠A = B$],
  [$⁠alpha arrow.l.r.double beta$],
  table.cell(colspan: 2, align: center)[$⁠A subset.eq B$ 与 $B^c subset.eq A^c$ 同义],
  table.cell(colspan: 2, align: center)[$alpha arrow.r.double beta$ 与 $macron(beta) arrow.r.double macron(alpha)$ 同义],
  table.hline(),
);

]
=== 基本逻辑语句
==== 命题
凡可决定其真假的语句就叫做#strong[命题]．例如：

+ 雪是白的．（真）

+ 对顶角相等．（真）

+ $2 + 2 = 5$．（假）

+ 若 $⁠x > y$, 则 $⁠frac(x + 2 y, 3) > frac(x + y, 2)$．（假）

这些语句都是命题．从上面这些命题中我们可以看到，命题不一定为数学所独有，如1就不是数学命题，另外我们还看到一个命题是可以判断真假的，有的容易判断如1、2、3．有的就较难判断一些，如4是个假命题，但一眼不容易看出来，实际上如果设 $⁠x = 1$, $⁠y = 0\,thick\(x > y\)$ 那么 $frac(1 + 2 times 0, 3) gt.not frac(1 + 0, 2)$．这就说明4是个假命题了．所谓“判断真假”是对事物的本质说的，并不要求现在就要“决定”，也不要求最近的将来便可决定．例如：

- 别的星球上有生物．

- 凡大于4的偶数都是两个奇质数之和（这就是著名的哥德巴赫猜想）．

这些语句的真假不但现在不能决定，在最近的将来也未必“可决定”，但是我们认为从事物的本质来说，它们本身是有真假可言的，所以应该承认它们都是命题．

数学命题，经常使用“如果……，那么……”，“若……，则……．”的叙述形式，如前面提到的4便是这一类形式的命题．这类命题写成一般形式就是：

#blk[][
若 $⁠alpha$, 则 $⁠beta$#h(2em);或#h(2em);如果 $⁠alpha$, 那么 $⁠beta$.

]
下面我们仔细的分析它的结构和逻辑关系．

命题“若 $⁠alpha$, 则 $⁠beta$”是否正确，就要看 $⁠alpha$、$⁠beta$ 之间是否具有推出关系 $alpha arrow.r.double beta$ 了．也就是说，如果 $alpha$、$⁠beta$ 之间具有 $alpha arrow.r.double beta$ 的关系，则“若 $alpha$, 则 $⁠beta$”是真命题（即正确的命题），由此可见“$⁠alpha arrow.r.double beta$”与“若 $⁠alpha$, 则 $⁠beta$”是真命题是同一关系的两种不同说法．

在命题“若 $⁠alpha$, 则 $⁠beta$”中，我们把 $⁠alpha$ 叫做命题的#strong[条件]，$beta$ 叫做命题的#strong[结论]．

把“若 $alpha$, 则 $⁠beta$”中的 $⁠beta$ 作为条件，$alpha$ 作为结论，就得到另一个命题：若 $beta$, 则 $⁠alpha$. 这个命题叫做“若 $⁠alpha$, 则 $⁠beta$”的#strong[逆命题]．

把“若 $⁠alpha$, 则 $⁠beta$”中的 $⁠alpha$ 的反性质：非 $alpha$, $⁠beta$ 的反性质：非 $beta$, 分别作为条件和结论，又得到一个新命题：若 $⁠macron(alpha)$, 则 $⁠macron(beta)$, 这个命题叫做“若 $⁠alpha$, 则 $⁠beta$”的#strong[否命题]．

把“若 $⁠alpha$, 则 $⁠beta$”中的 $⁠beta$ 的反性质：非 $beta$, $⁠alpha$ 的反性质：非 $alpha$, 分别作为条件和结论，又可得到一个新命题：若 $⁠macron(beta)$, 则 $⁠macron(alpha)$. 这个命题叫做“若 $⁠alpha$, 则 $⁠beta$”的#strong[逆否命题]．

“若 $⁠alpha$, 则 $⁠beta$”则叫做上述逆命题，否命题、逆否命题的#strong[原命题]．这就是说，逆命题，否命题，逆否命题都是对原命题而说的，在四种命题中任何一个命题都可作为原命题．如：

- 原命题#h(1em);若 $⁠macron(alpha)$，则 $⁠macron(beta)$

- 逆命题#h(1em);若 $⁠macron(beta)$，则 $⁠macron(alpha)$

- 否命题#h(1em);若 $⁠alpha$，则 $⁠beta$（$⁠macron(alpha)$ 的非是 $alpha$，$⁠macron(beta)$ 的非是 $beta$）

- 逆否命题#h(1em);若 $⁠beta$，则 $⁠alpha$

我们把上述四种命题之间的关系，列成下表：

#align(center)[
#fig("2-17");

]
#example[
写出“对顶角相等”这个命题的逆命题，否命题和逆否命题．

]
#solution[
“对顶角相等”这个命题是由两部分组成的：(1) 两个角是对顶角，(2) 这两个角相等．(1) 是命题的条件，(2) 是命题的结论．这个命题若用“若---则”连结(1)、(2) 两部分，就可写成．

若两个角是对顶角，则这两个角相等．所以，

- 逆命题#h(1em);若两个角相等，则这两个角是对顶角．

- 否命题#h(1em);若两个角不是对顶角，则这两个角就不相等．

- 逆否命题#h(1em);若两个角不相等，则这两个角就不是对顶角．

]
从这个例子，我们会发现，在这四个命题中有的正确，有的不正确，那么，这四种命题的真假之间是否存在某种关系呢？下面我们再举两个例子．

#example[
写出“如果一个数末位数字是0, 那么它一定能被5整除．”这个命题的逆命题，否命题、逆否命题．

- 原命题#h(1em);如果一个数末位数字是0, 那么它一定能被5整除（真）．

- 逆命题#h(1em);如果一个数能被5整除，那么它的末位数字一定是0（假）．

- 否命题#h(1em);如果一个数末位数字不是0, 那么它一定不能被5整除（假）．

- 逆否命题#h(1em);如果一个数不能被5整除，那么它的末位数字一定不是0（真）．

]
#example[
写出“若某人是中国人，则他是北京人．”这个命题的逆命题、否命题、逆否命题．

- 原命题#h(1em);若某人是中国人，则他是北京人（假）．

- 逆命题#h(1em);若某人是北京人，则他是中国人（真）．

- 否命题#h(1em);若某人不是中国人，则他不是北京人（真）．

- 逆否命题#h(1em);若某人不是北京人，则他不是中国人（假）．

]
从以上的例子，我们看到原命题和逆否命题同真假，逆命题和否命题同真假．

前面我们已经知道，$⁠alpha arrow.r.double beta$ ($A subset.eq B$) 与 $⁠macron(beta) arrow.r.double macron(alpha)$ ($B^c subset.eq A^c$) 同义．这就是说，两个互为逆否的命题是同真假的，而 $⁠alpha arrow.r.double beta$ ($A subset.eq B$) 成立并不能保证 $⁠beta arrow.r.double alpha$ ($B subset.eq A$) 也成立．这就是说，两个互逆命题不一定同真假．

#exercise[
+ 试从日常生活中举出两个命题的例子，并判断它们是否正确．

+ 举出两个代数内容的命题，并分别指出它们的条件和结论．

+ 举出三个几何内容的命题（写成若一则形式）．

+ 把下列命题写成“若一则”形式，并标出条件和结论．

  + 等角的补角相等．

  + 同圆或等圆的半径相等．

  + 同位角相等则两直线平行．

  + 三角形内角和等于180$"" degree$．

  + 自然数必为有理数．

+ 在以下各题中，用符号“$⁠arrow.r.double$”把 $⁠alpha$、$⁠beta$ 联系起来：

  + $alpha$ 表示自然数 $a$ 被4整除，$beta$ 表示自然数 $a$ 被2整除．

  + $alpha$ 表示两角相等，$beta$ 表示两个角是对顶角．

+ 举出反例说明下列命题是假命题．

  + 若 $\|a\|=\|b\|$, 则 $⁠a = b$

  + 若 $⁠a^2 = b^2$, 则 $⁠a = b$

  + 若在 $⁠triangle.stroked.t A B C$ 与 $triangle.stroked.t A' B' C'$ 中，$angle A = angle A'$, $⁠angle B = angle B'$, $⁠angle C = angle C'$，则 $⁠triangle.stroked.t A B C tilde.equiv triangle.stroked.t A' B' C'$

  + 如果 $\(x - a\)\(x - b\)= 0$，则 $⁠x - a = 0$

  + 如果 $⁠a + c = b + d$，则 $⁠a = b$, $⁠c = d$

+ 分别写出下列命题的逆命题、否命题，逆否命题，并判断它们的真假．

  + 若 $⁠a = 0$, 则 $⁠a b = 0$.

  + 如果 $⁠a = b$, 则 $⁠a^2 = b^2$.

  + 如果 $\|a\|=\|b\|$, 则 $⁠a = b$.

  + 如果 $⁠triangle.stroked.t A B C tilde.equiv triangle.stroked.t A' B' C'$, 则 $⁠overline(A B) = overline(A' B')$.

  + 等角的余角相等．

  + 若 $⁠a eq.not b$, 则 $⁠a^2 eq.not b^2$.

  + 若 $\(x - a\)\(x - b\)= 0$, 则 $⁠x = a$.

  + 如果 $⁠x_1$、$⁠x_2$ 是方程 $a x^2 + b x + c = 0$ 的两个根，那么 $x_1 + x_2 = - b / a$, $⁠x_1 x_2 = c / a$.

  + 多项式 $⁠f\(x\)$ 除以 $\(x - a\)$ 所得的余式等于 $f\(a\)$.

]
==== 充分、必要条件
如果“若 $⁠alpha$, 则 $⁠beta$\.”是正确的命题，这个命题与 $⁠alpha arrow.r.double beta$ 的意义就完全一致，也就是说这两种表达形式是同一逻辑关系的两种说法．

#blk[][
如果 $alpha arrow.r.double beta$, 我们就说 $⁠alpha$ 是 $beta$ 的充分条件，$beta$ 是 $alpha$ 的必要条件．

]
例如，如果李华是北京人，那么他是中国人．这个命题显然是个真命题．这时，我们也说，“李华是北京人”是“李华是中国人”的充分条件，而“李华是中国人”是“李华是北京人”的必要条件，这就是说由“李华是北京人”就能充分说明“李华是中国人”，但“李华是中国人”只是“李华是北京人”必定有的条件．如果李华不是中国人，更谈不上他是北京人了．

又如若 $triangle.stroked.t upright(I) tilde.equiv triangle.stroked.t upright(I I)$, 则 $⁠triangle.stroked.t upright(I)$ 与 $triangle.stroked.t upright(I I)$ 的三个角分别相等．我们知道这也是个真命题，即可由 $triangle.stroked.t upright(I) tilde.equiv triangle.stroked.t upright(I I) arrow.r.double triangle.stroked.t upright(I)$ 与 $triangle.stroked.t upright(I I)$ 的三个角分别相等．这时我们说 $triangle.stroked.t upright(I) tilde.equiv triangle.stroked.t upright(I I)$ 是 $triangle.stroked.t upright(I)$ 与 $triangle.stroked.t upright(I I)$ 的三个角分别相等的充分条件．这就是说，若有 $triangle.stroked.t upright(I) tilde.equiv triangle.stroked.t upright(I I)$, 就能充分保证 $⁠triangle.stroked.t upright(I)$ 与 $triangle.stroked.t upright(I I)$ 的三个角分别相等．但 $triangle.stroked.t upright(I)$ 与 $triangle.stroked.t upright(I I)$ 的三个角分别相等是 $triangle.stroked.t upright(I) tilde.equiv triangle.stroked.t upright(I I)$ 的必要条件，如果 $triangle.stroked.t upright(I)$ 与 $triangle.stroked.t upright(I I)$ 的三个角不分别相等，则 $triangle.stroked.t upright(I)$ 和 $triangle.stroked.t upright(I I)$ 绝不会全等．

“若 $alpha$, 则 $⁠beta$”与它的逆命题“若 $⁠beta$, 则 $⁠alpha$”都是真命题，即 $⁠alpha arrow.r.double beta$, $⁠beta arrow.r.double alpha$ 或 $alpha arrow.l.r.double beta$. 这时我们说 $⁠alpha$ 是 $beta$ 的充分、必要条件，同时 $beta$ 也是 $alpha$ 的充分、必要条件，充分、必要条件简称#strong[充要条件]．

例如，$triangle.stroked.t A B C tilde.equiv triangle.stroked.t A' B' C'$ 且 $overline(B C)$ 与 $overline(B' C')$ 是对应边，则 $triangle.stroked.t A B C tilde.equiv triangle.stroked.t A' B' C'$ 是 $angle B = angle B'$，$⁠angle C = angle C'$，$⁠overline(B C) = overline(B' C')$ 的充分必要条件；$x - 2 = 0$ 是 $x = 2$ 的充要条件；两圆能够重合是两个圆半径相等的充要条件．

#exercise[
+ 下面四句话是否都是表达的同一逻辑关系？

  + $alpha arrow.r.double beta$；

  + 若 $⁠alpha$, 则 $⁠beta$ 是真命题；

  + $alpha$ 是 $beta$ 的充分条件；

  + $beta$ 是 $alpha$ 的必要条件．

+ 说明 $alpha$ 是 $beta$ 的什么条件：

  #table(
    columns: (auto, auto, auto,),
    align: (center, left, left,),
    [],
    [$alpha$],
    [$⁠beta$],
    [\(a)],
    [$⁠a = - b$],
    [$⁠a^2 = b^2$],
    [\(b)],
    [$⁠a + b = c + d$],
    [$⁠a = c\,thick b = d$],
    [\(c)],
    [$⁠a = b$],
    [$⁠a^2 - 2 a b + b^2 = 0$],
    [\(d)],
    [$⁠triangle.stroked.t A B C tilde.equiv triangle.stroked.t A' B' C'$],
    [$⁠angle B = angle B'$，$⁠overline(A B) = overline(A' B')$],
    [\(e)],
    [$⁠overline(A B)$ 能够重合 $overline(C D)$],
    [$⁠overline(A B)$ 与 $overline(C D)$ 等长],
  );

]
==== 定义和基本性质
#strong[定义]#h(1em);在数学中，我们使用的“概念”和“符号”，如果它们的意义不明确，人们可以自由理解，那就无法研究问题了．所以必须对“概念”和“符号”的意义作确切的规定．这种对“概念”和“符号”的意义作规定的工作就叫做给“概念”和“符号”下定义．

例如，“两个形状和大小完全相同的图形叫做全等形．”这就是全等形的定义．

学习每一个概念必须清楚地理解它的含义，那么“全等形”这个概念的含义是什么呢？

第一，如果两个图形的形状和大小#strong[完全相同]，那么这两个图形就是#strong[全等形]．

第二，如果两个图形是#strong[全等形]，那么它们的形状和大小#strong[完全相同]．

从第一、第二两个含义可以看出：“两个图形的形状和大小完全相同”这个条件是全等形的充分、必要条件．因此，一个概念的定义是这个概念的充要条件．通常我们给一个概念下定义，也就是寻求这个概念的充要条件．这个充要条件，也就是这个概念的特征性质．

在数学中，有些概念是很原始也是很根本的，很难再用别的词来说明它，也就是说，这些概念很难再给它们下定义．例如：点、直线、平面、集合等，我们仅对这些概念加以描述，以帮助大家理解．

在前面我们已经给很多概念和使用的符号下了定义，请复习和记忆下列各概念和符号的意义，以作为今后学习的依据．

#strong[概念]#h(1em);点、线段、直线、射线、平面、两点间距离、线段中点、角、角的平分线、锐角、直角、钝角、平角、周角、对顶角、两条直线互相垂直、线段的垂直平分线、点到直线的距离、两角的和与差、两角互余、两角互补、同位角、两条直线互相平行、全等形、相似形、相似比、圆．

#strong[集合]#h(1em);子集、交集、并集、补集、基集、空集、命题、原命题、逆命题、否命题、逆否命题、充分条件、必要条件、充要条件．

#strong[符号]#h(1em);$angle$, $⁠triangle.stroked.t$, $⁠dot.o$, $⁠tack.t$, $⁠pll$, $⁠tilde.equiv$, $⁠tilde.rev$, $⁠in$, $⁠in.not$, $⁠subset.eq$, $=$, $⁠union$, $⁠inter$, $⁠upright(I)$, $⁠nothing$, $⁠and$, $⁠or$, $⁠arrow.r.double$, $⁠arrow.l.r.double$.

#strong[基本性质]#h(1em);我们要论证一个命题的正确性，必须先由实践确立一系列命题的正确性，再以它们为根据作为出发点，才能设法论证其他命题的正确性，作为论证的原始依据的正确命题，我们称它为#strong[基本性质（或公理）]．基本性质的正确性不是通过推理论证而得出来的，而是通过实践检验确定无疑地归纳出来的．

以下几个命题今后作为#strong[基本性质]使用．

+ 两点确定一条直线．

+ 过已知直线外一点有且只有一条直线和已知直线平行（平行公理）．

+ 一个图形可以移动到任何其他位置而不改变它的形状和大小（移形公理）．

+ 任何一个图形都可以翻转而不改变它的形状和大小（翻转公理）．

+ 能够重合的两个图形具有相等的量．

+ 三条边对应相等的两个三角形全等（SSS).

在代数中学过的等式和不等式的基本性质也可以作为今后的推理依据．

#blk[等量的基本性质][
+ 等量加等量它们的和相等．

+ 等量减等量它们的差相等．

+ 等量的同倍量相等．

+ 等量的同分量相等．

+ 在一个等式或不等式中，一个量也可用它的等量代换（简称等量代换）．

]
#blk[不等量的基本性质][
设 $⁠a$、$⁠b$、$⁠c$、$⁠d$ 是任意实数．

+ 如果 $a > b$, 那么 $⁠a + c > b + c$.

+ 如果 $⁠a > b\,c > 0$, 那么 $⁠a c > b c$, $⁠a / c > b / c$.

+ 如果 $⁠a > b$, 并且 $⁠c > d$, 那么 $⁠a + c > b + d$.

+ 如果 $⁠a > b$, 并且 $⁠c < d$, 那么 $⁠a - c > b - d$.

+ 如果 $⁠a > b$, 并且 $⁠b > c$, 那么 $⁠a > c$.

+ 全量大于它的任意一部分．

]
==== 定理和证明
我们要说明“若 $⁠alpha$ 则 $beta$”是真命题时，以什么方式来推证呢？最常用的基本推理格式就是推出关系的传递性．即：

#numbered-align(($⁠upright("如果")$, $⁠zws quad alpha arrow.r.double beta$, [(1)]), ($$, $⁠quad beta arrow.r.double gamma upright("成立")$, [(2)]), ($⁠upright("那么")$, $⁠zws quad alpha arrow.r.double gamma upright("成立")$, [(3)]));

例如，

#numbered-align(($⁠upright("若")$, $⁠zws quad angle 1 upright("和") angle 2 upright("是对顶角")$, [(1)]), ($$, $⁠quad upright("对顶角相等")$, [(2)]), ($⁠upright("则")$, $⁠zws quad angle 1 = angle 2$, [(3)]));

在几何论证中，使用上述推理格式，在书写上常常由(1) 直接得到(3), 而把(2) 作为由(1) 推出(3) 的理由写在(3) 后边的括号里．因此，上例又可以写为：$ because & quad angle 1 upright("与") angle 2 upright("是对顶角")\
therefore & quad angle 1 = angle 2 #h(2em) upright("（对顶角相等）") $

在数学中要证明一个命题的正确性，往往要连续使用若干次上述基本推理格式．为此，我们重新回忆一下“对顶角相等”的证明过程．

已知：$⁠angle 1$ 是 $angle 2$ 的对顶角（如图2.17）．

求证：$angle 1 = angle 2$

#figure([#fig("2-18");

  ],
  caption: [
  ]
)

#proof[
#align(center)[
#fig("2-19");

]
]
从上述推演过程可知，要证明 $⁠alpha arrow.r.double beta$, 我们先设法找出了一连串适当的并且已知是正确的命题，如 $⁠alpha arrow.r.double alpha_1$, $⁠alpha_1 arrow.r.double alpha_2$, $⁠alpha_2 arrow.r.double alpha_3$, $⁠alpha_3 arrow.r.double alpha_4$, $⁠alpha_4 arrow.r.double beta$, 再由推出关系的传递性，就可断定 $⁠alpha arrow.r.double beta$ 了．这种推演过程就叫做#strong[证明]．经过证明正确的命题叫做#strong[定理]．如果一个定理的逆命题经过证明也正确时，这个逆命题也叫做这个定理的#strong[逆定理]．

应用已经被认为正确的命题为依据，经过推理，导出某一命题成立，这种方法叫做#strong[演绎推理法]（简称#strong[演绎法]）．从下一章开始，我们就要用这种方法来研究几何学了．所以学习几何学，不但可对图形性质有精确的了解，也可以初步体会演绎法这个基本有力的科学方法的实际应用．

以下几个命题今后作为定理来使用．

+ 对顶角相等，

+ 两个三角形如果有两边一夹角对应相等，它们就全等（SAS）．

+ 两个三角形如果有两角一夹边对应相等，它们就全等（ASA）．

==== 证明举例
在几何学中，要证明一个命题的正确性，一定要经过以下过程．首先要分清待证命题的条件和结论，并根据条件画出图形，然后按图上标记的符号写出已知，求证．接着分析思考证明的途径，最后有根据的写出证明的全过程．

但是证明一个定理，从逻辑上说只要求写出三项：

#cols(3)[
+ 已知（带图）;

+ 求证;

+ 证明．

]
在下例中为了使同学们体会一下证明一个定理的全过程，我们把分析命题的条件和结论以及思考证明的途径等也都写出来了，以供同学们参考．

#example[
证明：同角的余角相等．

待证命题的条件是“如果两个角是同一个角的余角”，结论是“这两个角相等．”根据条件画出图形，标上必要的字母，如图2.18, 再根据图形写出已知、求证．

]
#figure([#fig("2-20");

  ],
  caption: [
  ]
)

已知：$angle A O B$ 和 $angle C O D$ 都是 $angle B O C$ 的余角．

求证：$angle A O B = angle C O D$.

分析思考证明途径：要证明 $⁠angle A O B = angle C O D$, 由于已知 $⁠angle A O B$ 和 $angle C O D$ 都是 $angle B O C$ 的余角，回忆互为余角的定义可知：$angle A O B + angle B O C = 90 degree$, $⁠angle C O D + angle B O C = 90 degree$, 比较这两个等式，自然有 $⁠angle A O B = angle C O D$ 了．

#proof[
$because quad angle A O B$ 和 $angle C O D$ 都是 $angle B O C$ 的余角（已知）

$therefore quad angle A O B + angle B O C = 90 degree$, $⁠angle C O D + angle B O C = 90 degree$（余角定义）

$⁠therefore quad angle A O B + angle B O C = angle C O D + angle B O C$（等量代换）

$⁠because quad angle B O C = angle B O C$

$⁠therefore quad angle A O B = angle C O D$（等量减等量差相等）

]
#example[
证明定理：线段垂直平分线上的点到线段两端点的距离相等．

已知：直线 $⁠C D tack.t overline(A B)$ 且过 $overline(A B)$ 的中点 $O$, $⁠P$ 是 $C D$ 上任一点（图2.19）．

求证：$overline(P A) = overline(P B)$.

]
#figure([#fig("2-21");

  ],
  caption: [
  ]
)

#proof[
在 $⁠triangle.stroked.t P A O$ 与 $triangle.stroked.t P B O$ 中

$because quad overline(P O) = overline(P O)$（公共边），

又 $⁠because quad$ 直线 $C D tack.t overline(A B)$ 于 $O$, $⁠O$ 是 $A B$ 的中点（已知）

$therefore quad overline(A O) = overline(B O)$（线段中点定义）$⁠angle P O A = angle P O B$（垂直定义）．

$⁠therefore quad triangle.stroked.t P O A tilde.equiv triangle.stroked.t P O B$（SAS）

$⁠therefore quad overline(P A) = overline(P B)$（全等三角形的对应边相等）．

]
#example[
已知：直线 $⁠E F$ 与直线 $A B$、$⁠C D$ 分别相交于 $P$、$⁠Q$ 两点，并且 $angle 1 = angle 2$（图2.20）．

求证：$⁠A B pll C D$

]
#figure([#fig("2-22");

  ],
  caption: [
  ]
)

#proof[
$⁠because quad$ 已知 $A B$ 与 $E F$ 是两条相交于 $P$ 点的直线

$therefore quad angle 1$ 与 $angle E P B$ 是对顶角

又 $because quad$ 对顶角相等

$therefore quad angle 1 = angle E P B$

已知 $⁠angle 1 = angle 2$, 由等量代换，就有 $⁠angle 2 = angle E P B$．由平行线定义，可知 $⁠A B pll C D$.

]
通过以上三例，我们初步体会了一下证明定理的步骤．值得注意的是在推理时，每推一步都要有可靠的根据，都要有充分的理由．定义、基本性质、已经证明过的定理和已知条件都可作为推理的根据．推理的根据可以像例2.4、例2.5那样写在结论后面的（#h(2em);）之中，也可以像例2.6那样写在结论的前面．总之，不管怎样叙述，都要“出言有本”，“推理有据”把论证的理由说清楚．

#heading(level: 2, numbering: none, outlined: false)[练习]

+ 写出下列各命题的已知和求证．

  + 如果两个角是对顶角，则它们相等．

  + 如果 $⁠x_1$、$⁠x_2$ 是方程 $a x^2 + b x + c = 0$ 的两个根，则 $ x_1 + x_2 = - b / a\,quad x_1 dot.op x_2 = c / a $

  + 若在 $⁠triangle.stroked.t A B C$ 中，$overline(A B) = overline(A C)$, 则 $⁠angle B = angle C$.

  + 多项式 $⁠f\(x\)$ 除以 $\(x - a\)$ 所得的余式等于 $f\(a\)$.

  + 如果 $\(x - a\)\(x - b\)= 0$, 则 $⁠x = a$ 或 $x = b$．

+ 把下列各题抄在练习本上，并在括号内填写理由：

  + 已知：如图 $⁠overline(A B) = overline(C D)$, 求证：$⁠overline(A C) = overline(B D)$.

    证明：$⁠because quad overline(A B) = overline(C D)$（#h(2em);）

    又 $⁠because quad overline(B C) = overline(B C)$

    $⁠therefore quad overline(A B) + overline(B C) = overline(C D) + overline(B C)$（#h(2em);）

    即 $⁠overline(A C) = overline(B D)$.

    #figure([#fig("2-23");

      ],
      caption: [
        第2(a) 题
      ]
    )

  + 已知：如图 $⁠angle A O C = angle B O D$, 求证：$⁠angle A O B = angle C O D$

    证明：$⁠because quad angle A O C = angle B O D$（#h(2em);）

    又 $⁠because quad angle B O C = angle B O C$

    $⁠therefore quad angle A O C - angle B O C = angle B O D - angle B O C$（#h(2em);）

    即 $⁠angle A O B = angle C O D$.

  + 已知：如图，$⁠C$ 是 $overline(A B)$ 的中点，$F$ 点是 $overline(D E)$ 的中点，$overline(A C) = overline(D F)$,

    求证：$⁠overline(A B) = overline(D E)$.

    证明：$⁠because quad overline(A C) = overline(D F)$（#h(2em);）

    $⁠therefore quad 2 overline(A C) = 2 overline(D F)$（#h(2em);）

    又 $⁠because quad C$ 点，$F$ 点分别是 $overline(A B)$, $⁠overline(D E)$ 的中点（#h(2em);）

    $therefore quad 2 overline(A C) = overline(A B)$（#h(2em);），$2 overline(D F) = overline(D E)$（#h(2em);）．

    $⁠therefore quad overline(A B) = overline(D E)$（#h(2em);）．

    #align(center, block(breakable: false, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, [#fig("2-24");
    
    #subcap[
    第2(b) 题
    
    ]], [#fig("2-25");
    
    #subcap[
    第2(c) 题
    
    ]])));

  + 已知：如图，$⁠angle A B C = angle E F G$, $⁠B D$, $⁠F H$ 分别是 $angle A B C$，$⁠angle E F G$ 的平分线．

    求证：$angle A B D = angle H F G$.

    证明：$⁠because quad B D\,F H$ 分别是 $angle A B C$ 和 $angle E F G$ 的平分线（#h(2em);）

    $therefore quad angle A B D = angle D B C\,quad angle E F H = angle H F G$（#h(2em);）

    又 $⁠because quad angle A B C = angle E F G$（#h(2em);）

    $⁠therefore quad angle A B D = angle H F G$（#h(2em);）

    #align(center, block(breakable: false, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, [#fig("2-26");
    
    #subcap[
    第2(d) 题
    
    ]], [#fig("2-27");
    
    #subcap[
    第2(e) 题
    
    ]])));

  + 已知：如图，$⁠angle 1$ 和 $angle 3$, $⁠angle 2$ 和 $angle 4$ 是对顶角，且 $angle 1 = angle 2$.

    求证：$⁠angle 3 = angle 4$.

    证明：$⁠because quad angle 1$ 和 $angle 3$, $⁠angle 2$ 和 $angle 4$ 是对顶角（#h(2em);）

    $therefore quad angle 1 = angle 3\,thick angle 2 = angle 4$（#h(2em);）

    又 $⁠because quad angle 1 = angle 2$（#h(2em);）

    $⁠therefore quad angle 3 = angle 4$（#h(2em);）

  + 已知：如图，直线 $⁠E F$ 与直线 $A B$、$⁠C D$ 分别相交于 $P$、$⁠Q$ 两点，且 $angle 1 = angle 2$.

    求证：$⁠angle 2 + angle 3 = 180 degree$.

    证明：$⁠because quad A B$ 是过 $P$ 的直线（#h(2em);）

    $therefore quad angle 1$ 与 $angle 3$ 互为补角（#h(2em);）

    即 $angle 1 + angle 3 = 180 degree$.

    又 $⁠because quad angle 1 = angle 2$（#h(2em);）

    $⁠therefore quad angle 2 + angle 3 = 180 degree$（#h(2em);）．

  + 已知：如图，直线 $⁠A O tack.t O C$, 直线 $⁠B O tack.t O D$

    求证：$⁠angle 1 = angle 2$.

    证明：$⁠because quad A O tack.t O C$（#h(2em);）

    $⁠therefore quad angle A O C = 90 degree$（#h(2em);）

    即 $⁠angle 1 + angle B O C = 90 degree$

    $⁠therefore quad angle 1 = 90 degree - angle B O C$．

    同理：$⁠angle 2 = 90 degree - angle B O C$

    $⁠therefore quad angle 1 = angle 2$（#h(2em);）

    #align(center, block(breakable: false, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, [#fig("2-28");
    
    #subcap[
    第2(f) 题
    
    ]], [#fig("2-29");
    
    #subcap[
    第2(g) 题
    
    ]])));

  + 已知：如图，$⁠overline(A B) = overline(D C)$, $⁠overline(A C) = overline(D B)$

    求证：$⁠angle 1 = angle 2$.

    证明：在 $⁠triangle.stroked.t A B C$ 与 $triangle.stroked.t D C B$ 中

    $because quad overline(A B) = overline(D C)\,quad overline(A C) = overline(D B)$（#h(2em);）

    又 $⁠because quad overline(B C) = overline(B C)$（#h(2em);）

    $⁠therefore quad triangle.stroked.t A B C tilde.equiv triangle.stroked.t D C B$（#h(2em);）

    $⁠therefore quad angle 1 = angle 2$（#h(2em);）

  + 已知：如图，$⁠overline(A C)$ 与 $overline(B D)$ 交于 $O$ 点，并且 $overline(O A) = overline(O C)$, $⁠overline(O B) = overline(O D)$.

    求证：$⁠overline(A B) = overline(C D)$.

    证明：在 $⁠triangle.stroked.t A O B$ 与 $triangle.stroked.t C O D$ 中，

    $because quad overline(O A) = overline(O C)\,quad overline(O B) = overline(O D)$（#h(2em);）

    又 $⁠because quad overline(A C)$ 与 $overline(B D)$ 交于 $O$ 点（#h(2em);）

    $therefore quad angle A O B = angle C O D$（#h(2em);）

    $⁠therefore quad triangle.stroked.t A O B tilde.equiv triangle.stroked.t C O D$（#h(2em);）

    $⁠therefore quad overline(A B) = overline(C D)$

    #align(center, block(breakable: false, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, [#fig("2-30");
    
    #subcap[
    第2(h) 题
    
    ]], [#fig("2-31");
    
    #subcap[
    第2(i) 题
    
    ]])));

  + 已知：如图，$⁠angle 1 = angle 2$, $⁠angle 3 = angle 4$,

    求证：$⁠overline(A C) = overline(A D)$

    证明：$⁠because quad angle 1 = angle 2\,quad angle 3 = angle 4$（#h(2em);）

    又 $⁠because quad overline(A B) = overline(A B)$（#h(2em);）

    $⁠therefore quad triangle.stroked.t A B C tilde.equiv triangle.stroked.t A B D$（#h(2em);）

    $⁠therefore quad overline(A C) = overline(A D)$（#h(2em);）

    #align(center, block(breakable: false, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, [#fig("2-32");
    
    #subcap[
    第2(j) 题
    
    ]], [#fig("2-33");
    
    #subcap[
    第3(a) 题
    
    ]])));

+ 去掉下列各题中推理的多余步骤．

  + 已知：如图，$⁠overline(A C) = overline(A B)$, $⁠overline(A D) = overline(A E)$.

    求证：$⁠angle A D C = angle A E B$.

    证明：在 $⁠triangle.stroked.t A D C$ 和 $triangle.stroked.t A E B$ 中，

    $because quad overline(A C) = overline(A B)\,quad overline(A D) = overline(A E)$（已知）

    又 $⁠because quad angle A = angle A$（公共角）

    又 $⁠because quad angle B = angle C$

    $⁠therefore quad triangle.stroked.t A D C tilde.equiv triangle.stroked.t A E B$（SAS）

    $⁠therefore quad angle A D C = angle A E B$（全等三角形对应角相等）

  + 已知：如图，$⁠overline(A B) = overline(D C)\,quad angle A = angle D\,quad angle B = angle C$

    求证：$⁠overline(B F) = overline(C E)$.

    证明：在 $⁠triangle.stroked.t A B E$ 与 $triangle.stroked.t D C F$ 中，

    $because quad overline(A B) = overline(D C)\,quad angle A = angle D\,quad angle B = angle C$（已知）

    又 $⁠because quad angle 1 = angle 2$

    $⁠therefore quad triangle.stroked.t A B E tilde.equiv triangle.stroked.t D C F$（ASA）

    $⁠therefore quad overline(B E) = overline(C F)$（全等三角形的对应边相等）

    又 $⁠because quad overline(E F) = overline(E F)$

    $⁠therefore quad overline(B F) = overline(C E)$（等量减等量差相等）

  #align(center, block(breakable: false, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, [#fig("2-34");
  
  #subcap[
  第3(b) 题
  
  ]], [#fig("2-35");
  
  #subcap[
  第4(a) 题
  
  ]])));

+ 补上下列各题推理中所缺少的必要步骤．

  + 已知：如图，$⁠overline(A B)$, $⁠overline(C D)$ 相交于 $O$ 点，并且 $overline(A O) = overline(O C)$，$⁠overline(O D) = overline(O B)$.

    求证：$⁠angle D = angle B$, $⁠overline(A D) = overline(B C)$.

    证明：在 $⁠triangle.stroked.t A O D$ 和 $triangle.stroked.t C O B$ 中，

    $because quad overline(A O) = overline(O C)$（已知）

    又 $⁠because quad overline(A B)$, $⁠overline(C D)$ 相交于 $O$ 点（已知）

    $therefore quad angle A O D = angle C O B$（对顶角相等）

    $⁠therefore quad triangle.stroked.t A O D tilde.equiv triangle.stroked.t C O B$（SAS）

    $⁠therefore quad angle D = angle B$（全等三角形的对应角相等），$⁠overline(A D) = overline(B C)$（全等三角形的对应边相等）．

  + 已知：如图，$⁠overline(A D) = overline(B C)$, $⁠overline(A B) = overline(C D)$.

    求证：$⁠angle B = angle D$.

    证明：在 $⁠triangle.stroked.t A B C$ 与 $triangle.stroked.t C D A$ 中

    $because quad overline(A D) = overline(B C)\,quad overline(A B) = overline(C D)$（已知）

    $⁠therefore quad triangle.stroked.t A B C tilde.equiv triangle.stroked.t C D A$（SSS）

    $⁠therefore quad angle B = angle D$（全等三角形的对应角相等）．

  #align(center, block(breakable: false, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, [#fig("2-36");
  
  #subcap[
  第4(b) 题
  
  ]], [#fig("2-37");
  
  #subcap[
  第5题
  
  ]])));

+ 已知：如图，$⁠O B$ 是 $angle A O C$ 的平分线，并且 $angle 1 = angle 4$,

  求证：$⁠angle 2 = angle 3$.

+ 已知：如图，$⁠angle 2$ 与 $angle 3$ 是对顶角，且 $angle 1 = angle 3$,

  求证：$⁠angle 1 = angle 2$.

+ 已知：如图，$⁠overline(A B) = overline(A C)$, $⁠D$ 是 $overline(B C)$ 的中点，

  求证：$triangle.stroked.t A B D tilde.equiv triangle.stroked.t A C D$.

  #align(center, block(breakable: false, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, [#fig("2-38");
  
  #subcap[
  第6题
  
  ]], [#fig("2-39");
  
  #subcap[
  第7题
  
  ]])));

+ 已知：如图，$⁠overline(A B) tack.t overline(B D)$, $⁠overline(C D) tack.t overline(B D)$, $⁠O$ 是 $overline(B D)$ 的中点，$overline(A C)$ 与 $overline(B D)$ 交于 $O$.

  求证：$⁠triangle.stroked.t A B O tilde.equiv triangle.stroked.t C D O$.

+ 已知：如图，$⁠B D$ 平分 $angle A B C$, 并且 $⁠overline(A B) = overline(B C)$,

  求证：$⁠triangle.stroked.t A B D tilde.equiv triangle.stroked.t C B D$.

  #align(center, block(breakable: false, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, [#fig("2-40");
  
  #subcap[
  第8题
  
  ]], [#fig("2-41");
  
  #subcap[
  第9题
  
  ]])));

#heading(level: 2, numbering: none, outlined: false)[复习题二]
+ 试举出五个集合的例子，并用列举法或描述法表示出来．

+ 写出下列集合的所有元素．

  + $⁠A = { upright("绝对值小于10的2的倍数") }$

  + $⁠B = { upright("绝对值小于40的5的倍数") }$

  + $⁠C = { upright("绝对值小于20的3的倍数") }$

+ 用特征性质描述法表示下列集合：

  + 一切偶数的集合．

  + 一切奇数的集合．

  + 大于等于0, 而小于等于1的实数集合．

+ 下列命题是否正确？

  + 一个正方形是正方形集合的一个元素．

  + 飞机是飞机场集合的一个元素．

  + 某校一成员是这校全体学生构成的集合的一个元素．

+ 指出下列集合中的元素：

  + $⁠A = { x\|x < 15 upright(" 且 ") x upright(" 是质数") }$

  + $⁠B = { x\|x^2 - 2 = 0 upright(" 且 ") x upright(" 是实数") }$

+ 设 $⁠A = { 1\,2\,3\,4 }$, $⁠B = { 2\,4\,6\,8 }$, $⁠C = { 3\,4\,5\,6 }$, 求：

  #cols(4)[
  + $⁠A union B$

  + $⁠A union C$

  + $⁠B union C$

  + $\(A union B\)union C$

  + $⁠A union\(B union C\)$

  + $⁠A inter B$

  + $⁠A inter C$

  + $⁠B inter C$

  + $\(A inter B\)inter C$

  + $⁠A inter\(B inter C\)$

  ]

+ 如图，$⁠A$、$⁠B$、$⁠C$ 三个集合相交成非空集，用阴影分别把下列各集合所表示的区域划出来．

  #cols(4)[
  + $A inter B$

  + $⁠A union B$

  + $⁠A inter C$

  + $⁠A union C$

  + $⁠B inter C$

  + $⁠B union C$

  + $⁠A inter\(B inter C\)$

  + $\(A inter B\)inter C$

  + $⁠A union\(B union C\)$

  + $\(A union B\)union C$

  ]
  #align(center, block(breakable: false, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, [#fig("2-42");
  
  #subcap[
  第7题
  
  ]], [#fig("2-43");
  
  #subcap[
  第11题
  
  ]])));

+ 设基集 $⁠upright(I) = { 1\,2\,3\,4\,5\,6\,7\,8\,9\,10 }$, $⁠A = { 6\,8\,9 }$, $⁠B = { 1\,3\,7\,8\,9 }$, $⁠C = { 2\,6\,8\,9 }$．求：

  #cols(4)[
  + $⁠A^c$

  + $⁠B^c$

  + $⁠C^c$

  + $\(A inter B\)^c$

  + $\(A^c\)inter\(B^c\)$

  + $\(A union B\)^c$

  + $\(A^c\)union\(B^c\)$

  ]

+ 写出下列各命题中的“已知”部分和“求证”部分．

  + 三角形三个角的和等于 $180 degree$.

  + 角平分线上任一点到角的两边距离相等．

+ 在下列各题的（#h(2em);）中，适当地填上“必要不充分”，“充分不必要”，“充分必要”等词．

  + $⁠a = 0$ 是 $a b = 0$ 的（#h(2em);）条件．

  + 两个角相等是两个角为对顶角的（#h(2em);）条件．

  + 形状和大小完全相同的两个图形是全等形的（#h(2em);）条件．

  + $a^2 = b^2$ 是 $a = b$ 的（#h(2em);）条件．

  + 多项式 $P\(x\)$ 被 $x - alpha$ 整除是 $P\(alpha\)= 0$ 的（#h(2em);）条件．

  + $a eq.not b$ 是 $a^2 + b^2 > 2 a b$ 的（#h(2em);）条件．

+ 已知：如图，$angle 1 = angle 2$, $⁠angle 3 = angle 4$, $⁠B E$ 是直线．

  求证：$overline(A D) = overline(C D)$.

+ 已知：如图，$⁠overline(A B) = overline(D E)$, $⁠overline(A C) = overline(D F)$, $⁠overline(B C) = overline(E F)$.

  求证：$⁠angle 1 = angle 2$, $⁠A C pll D F$.

+ 已知：如图，$⁠angle 1 = angle 2$, $⁠overline(A D) = overline(B C)$.

  求证：$⁠angle B = angle D$, $⁠overline(A B) = overline(C D)$.

  #align(center, block(breakable: false, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, [#fig("2-44");
  
  #subcap[
  第12题
  
  ]], [#fig("2-45");
  
  #subcap[
  第13题
  
  ]])));

+ 证明：同角的补角相等．

+ 证明：等角的余角相等．

+ 证明：等角的补角相等．
