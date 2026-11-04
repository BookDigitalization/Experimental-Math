// 由 typst/tools/tex2typ.py 从 math1/3.tex 转换而来，已人工校对的部分以本文件为准。
#import "../common/template.typ": *
#import "figs.typ": fig

= 一元二次方程
通过学习数系运算通性和等式的性质，并运用它们解决一元一次方程和一次方程组的应用问题，使我们初步体会到代数解法的普遍性，领略了“数系通性”的威力．

但是，在解决一些实际问题时，往往还可能列出高于一次的方程式．要解决这些问题，“数系通性”、等式的性质是不是还能发挥威力，大显神通呢？回答是肯定的．

本章首先学习一些有关的预备知识，然后重点讨论最简单的高次方程------一元二次方程的解法和应用，特别是解一元二次方程的普遍适用的方法：配方法．

== 平方与平方根
=== 面积与平方
在小学算术里，已经学习过正方形的面积公式 $S = a times a$，其中 $a$ 是正方形的一边长，$S$ 是面积，也就是：$ S = a^2 $

这就告诉我们：一个正数的二次方，是与正方形的面积密切相关的，这也正是 $a^2$ 读作“$a$ 的平方”的道理．

在实际问题的计算中，我们还可以有效的运用数系运算通性(尤其是分配律)，使计算达到迅速、简捷．例如：计算边长为100.1米的正方形的面积．可以这样进行

#numbered-align(($S = 100.1^2$, $zws =\(100 + 0.1\)^2$, false), ($$, $=\(100 + 0.1\)\(100 + 0.1\)$, [(乘方定义)]), ($$, $= 10000 + 10 + 10 + 0.01$, [(分配律)]), ($$, $= 10020.01 thick\(upright(m)^2\)$, false));

一般地，如果正方形的一边长是 $\(a + b\)$,那么，它的面积就可以这样计算出来：

#numbered-align(($S =\(a + b\)^2$, $zws =\(a + b\)dot.op\(a + b\)$, [(乘方定义)]), ($$, $= a^2 + a b + a b + b^2$, [(分配律)]), ($$, $= a^2 + 2 a b + b^2$, [(合并同类项)]));

这个结果，还可以用图3.1说明：$  & quad upright("大正方形") A B C D upright("的面积") S\
 & =\(upright("正方形") A E M H + upright("矩形") B F M E + upright("矩形") D H M G + upright("正方形") M F C G\)upright("的面积") $

#grid(columns: (1fr,) * 2, align: center + bottom, figure([#fig("3-01");], caption: []), figure([#fig("3-02");], caption: []));

由图形也能说明：#numbered-eq($ \(a + b\)^2 = a^2 + 2 a b + b^2 $);

这就告诉我们：任意两个正数的和的平方，等于这两个数的平方和，再加上这两个数乘积的2倍．

同样，如果正方形的一边长是 $a - b$,那么，它的面积也可以作以下计算：$ S =\(a - b\)^2 & =\(a - b\)dot.op\(a - b\)\
 & = a^2 - a b - a b + b^2\
 & = a^2 - 2 a b + b^2 $

这个结果，同样可以用图3.2说明：$  & quad upright("正方形") A B C D upright("的面积") S\
 & =\(upright("大正方形") A E G M - upright("矩形") B E G H - upright("矩形") F G M D + upright("正方形") C F G H\)upright("的面积") $

由图形，也正说明：#numbered-eq($ \(a - b\)^2 = a^2 - 2 a b + b^2 $);

这又告诉我们：任意两个正数差的平方，等于这两个数的平方和，再减去这两个数乘积的2倍．

利用公式(3.1)、(3.2)进行计算是很方便的．

#example[
利用公式(3.1)或(3.2)计算：$403^2\,quad 499^2$

]
#solution[
由公式(3.1): $ 403^2 & =\(400 + 3\)^2\
 & = 400^2 + 2 times 400 times 3 + 3^2\
 & = 160000 + 2400 + 9\
 & = 162409 $

再由公式(3.2): $ 499^2 & =\(500 - 1\)^2\
 & = 500^2 - 2 times 500 times 1 + 1^2\
 & = 250000 - 1000 + 1\
 & = 249001 $

]
不难验证，在公式(3.1)与(3.2)中，当 $a\,b$ 取任意的两个有理数时，结论仍然是正确的．也就是说：#strong[任意两个有理数的和（或差）的平方，等于这两个数的平方和，再加上（或减去）这两个数乘积的2倍]．两公式可以合并写成：$ \(x plus.minus y\)^2 = x^2 plus.minus 2 x y + y^2 $ #noindent;并分别叫做两数和（或差）的平方公式．

#example[
计算：$(1 1 / 2)^2\,quad\(- 1.99\)^2\,quad (9 7 / 9)^2\,quad (1 - a / 2)^2$

]
#solution[
$ (1 1 / 2)^2 & = (1 + 1 / 2)^2\
 & = 1 + 2 times 1 times 1 / 2 + 1 / 4 = 2 1 / 4 $ #noindent;$ \(- 1.99\)^2 & =\(- 2 + 0.01\)^2\
 & = 4 - 2 times 2 times 0.01 + 0.0001 = 3.9601 $ #noindent;$ (9 7 / 9)^2 & = (10 - 2 / 9)^2\
 & = 100 - 2 times 10 times 2 / 9 + 4 / 81 = 7744 / 81\
 & = 95 49 / 81 $ #noindent;$ (1 - a / 2)^2 & = 1 - 2 times 1 times a / 2 + a^2 / 4\
 & = 1 - a + a^2 / 4 $

]
两数和(或差）的平方公式，在应用中要灵活掌握，公式中的字母既可以是任意二个有理数．又可以是两个算式．

#example[
利用公式展开下列各题：$\(2 a + y\)^2\,#h(2em)\(- 3 a + 2 x\)^2$

]
#solution[
+ 把 $2 a\,y$ 分别当作公式中的 $x\,y$,因此，$ \(2 a + y\)^2 & =\(2 a\)^2 + 2 times\(2 a\)times y + y^2\
   & = 4 a^2 + 4 a y + y^2 $

+ 把 $- 3 a\,2 x$ 分别当作公式中的 $x\,y$,因此，$ \(- 3 a + 2 x\)^2 & =\(- 3 a\)^2 + 2 times\(- 3 a\)times\(2 x\)+\(2 x\)^2\
   & = 9 a^2 - 12 a x + 4 x^2 $

]
#example[
展开：$(3 a - 1 / 3)^2\,#h(2em) (- b / 2 - a / 2)^2$

]
#solution[
$ (3 a - 1 / 3)^2 & =\(3 a\)^2 - 2 times\(3 a\)times 1 / 3 + (1 / 3)^2\
 & = 9 a^2 - 2 a + 1 / 9 $ #noindent;$ (- b / 2 - a / 2)^2 & = (- b / 2)^2 - 2 times (- b / 2) times a / 2 + (a / 2)^2\
 & = b^2 / 4 + 1 / 2 a b + a^2 / 4 $

]
#exercise[
+ 利用两数和（或差）的平方公式计算：

  + $78^2\,quad 105^2\,quad 99^2\,quad 189^2\,quad 10.01^2\,quad 0.99^2$

  + $\(2 + x\)^2\,quad\(y - 3\)^2\,quad\(a - 2 x\)^2\,quad (x + 1 / 2)^2$

  + $(5 x + 1 / 2)^2\,quad (4 y - 1 / 3)^2\,quad\(2 x - 3 y\)^2\,quad (- a / 2 + b / 3)^2$

+ 填空白

  + $x^2 + 2 x + 1 =\(#h(2em) #h(2em)\)^2$

  + $y^2 + 4 y +\(#h(2em) #h(2em)\)=\(y + 2\)^2$

  + $x^2 +\(#h(2em) #h(2em)\)+ 4 a^2 =\(x + 2 a\)^2$

  + $a^2 - 6 a + 9 =\(#h(2em) #h(2em)\)^2$

  + $x^2 -\(#h(2em) #h(2em)\)+ 1 / 4 = (x - 1 / 2)^2$

  + $x^2 + 3 x +\(#h(2em) #h(2em)\)= (x + 3 / 2)^2$

  + $4 y^2 - y +\(#h(2em) #h(2em)\)=\(2 y - #h(2em) #h(2em)\)^2$

  + $x^2 - 2 x + 3 =\(x + #h(2em) #h(2em)\)^2 + 2$

  + $y^2 - 6 y + 10 =\(y - 3\)^2 +\(#h(2em) #h(2em)\)$

  + $9 x^2 - 12 x + 1 =\(#h(2em) #h(2em)\)^2 - 3$

]
=== 平方根
在实际问题中，我们还会经常遇到这样一类问题：需要一块面积为9$upright(c m)^2$ 的正方形铁板，应该怎样画线、下料呢？要解决这个问题，就要首先根据要求，算出正方形的一边长，然后才能画出面积为9$upright(c m)^2$ 的正方形，进行剪裁而得到．

设面积为9$upright(c m)^2$ 的正方形一边长为 $a$,因此，问题就是由 $a^2 = 9$,求出 $a$ 的值．

显然，a可以取 $- 3$,也可以取 $+ 3$,因为：$\(- 3\)^2 = 9\,quad\(+ 3\)^2 = 9$．

所以，所求正方形一边是3cm．（$- 3$ 不符合题意，舍去）．在数学上，这个问题就是：如何由一个数的二次幂，反求出这一个数．

#example[
如果已知某些数的平方，分别为：$ 4\,quad 9\,quad 16\,quad 25\,quad 0.25\,quad 0.81\,quad 64 / 81\,quad 0 $ #noindent;试求出相应的这些数．

]
#solution[
由于：$ \(plus.minus 2\)^2 = 4\,quad\(plus.minus 3\)^2 = 9\,quad\(plus.minus 4\)^2 = 16\,quad\(plus.minus 5\)^2 = 25 $ #noindent;$ \(plus.minus 0.5\)^2 = 0.25\,quad\(plus.minus 0.9\)^2 = 0.81\,quad (plus.minus 8 / 9)^2 = 64 / 81\,quad 0^2 = 0 $ #noindent;因此，平方分别为 $4\,thick 9\,thick 16\,thick 25\,thick 0.25\,thick 0.81\,thick 64 / 81\,thick 0$ 的数各是 $ plus.minus 2\,quad plus.minus 3\,quad plus.minus 4\,quad plus.minus 5\,quad plus.minus 0.5\,quad plus.minus 0.9\,quad plus.minus 8 / 9\,quad 0 $

]
一般地说：#strong[如果一个数 $x$ 的平方等于 $a thick\(a gt.eq 0\)$,即 $x^2 = a$．那么，$x$ 就叫做 $a$ 的平方根]．例如：在上面例题中，$plus.minus 2\,thick plus.minus 3\,thick plus.minus 4\,thick plus.minus 5\,thick plus.minus 0.5\,thick plus.minus 0.9\,thick plus.minus 8 / 9$ 以及0就分别叫做 $4\,thick 9\,thick 16\,thick 25\,thick 0.25\,thick 0.81\,thick 64 / 81$ 以及0的平方根．

由上例中可以看出：#strong[正数的平方根有两个，这两个平方根正好是互为相反数]．我们记作：$+ sqrt(a)$ 与 $- sqrt(a)$．其中“$sqrt(quad)$”叫做#strong[根号]，$+ sqrt(a)$ 读作“正根号 $a$”，有时简写为 $sqrt(a)$，读作“根号 $a$”；$- sqrt(a)$ 读作“负根号 $a$”或“根号 $a$ 的相反数”；有时还可以把这两个平方根合并在一起写成：$plus.minus sqrt(a)$．

#strong[零的平方根，仍然是零]，记作 $sqrt(0) = 0$．

这里还应该指出：由于任何有理数（正、负和零）的平方，都不可能是负数．也就是说，根本找不出这样的数 $x$,能使 $x^2$ 等于一个负数．所以，#strong[负数的平方根是无意义的．即：$plus.minus sqrt(a)$ 这个符号，当 $a < 0$ 时，是无意义的]．

求一个数的平方根的运算，叫做#strong[开平方]运算，这个数叫做被开方数．被开方数是负数时，平方根是无意义的．如：$sqrt(- 2)$，$- sqrt(- 2)$ 都无意义．

显然，开平方运算是平方运算的逆运算．

#example[
求下列各数的平方根：$36\,quad 49 / 121\,quad 0.0004\,quad - 25$

]
#solution[
$because quad\(plus.minus 6\)^2 = 36$,

$therefore quad$36的平方根是 $+ 6$ 与 $- 6$．即：$plus.minus sqrt(36) = plus.minus 6$

$because quad (plus.minus 7 / 11)^2 = 49 / 121$

$therefore quad 49 / 121$ 的平方根是 $plus.minus 7 / 11$，即 $plus.minus sqrt(49 / 121) = plus.minus 7 / 11$．

$because quad\(plus.minus 0.02\)^2 = 0.0004$,

$therefore quad$0.0004的平方根是 $plus.minus 0.02$．即：$plus.minus sqrt(0.0004) = plus.minus 0.02$

$because quad - 25 < 0$,任何数的平方，都不会等于 $- 25$．

$therefore quad - 25$ 的平方根是无意义的．

]
#example[
求下列各平方根的值：$ sqrt(144)\,quad - sqrt(225)\,quad - sqrt(4 / 9)\,quad sqrt(\(- 2\)^2) $

]
#solution[
只要注意：“$sqrt(quad)$”仅表示正平方根或零，“$- sqrt(quad)$”只表示负平方根，就可以由平方根的意义得出：$ sqrt(144) = 12\,quad - sqrt(225) = - 15\,quad - sqrt(4 / 9) = - 2 / 3\,quad sqrt(\(- 2\)^2) = sqrt(4) = 2 $

]
也许有的同学会问：要是遇到被开方数 $a$ 不是，或一下子看不出是某个有理数的平方时，它是否还有平方根呢？如果有，又怎么求呢？以下我们将以 $a = 2$ 为例，说明 $sqrt(2)$ 是存在的，至于如何求出它的值，下一段再去讨论．

要说明 $sqrt(2)$ 的存在问题，就是要说明：“能够找到一个数 $x$,使 $x^2 = 2$”．还可以说，就是要“找出一个面积是2的正方形来，它的边长就是所找的数x”．也就是2的一个平方根．

我们可以这样来分析：

因为，边长为1的正方形面积是1,边长为2的正方形面积是4．所以，如果把正方形的边长从1逐渐加大到2的时候，正方形的面积也应该从1逐渐加大到4．在这个过程中，势必会经过面积正好是2的一个正方形．可见，面积是2的正方形是存在的．实际上，我国古代数学中，早在两三千年前就能实实在在的画出一个面积为2的正方形来了（如图3.3）．

#figure([#align(center)[
  #fig("3-03");

  ]],
  caption: [
  ]
)

作图：

+ 以2为边长，作正方形 $A B C D$,其面积为4．

+ 取 $A B C D$ 各边的中点 $E$、$F$、$G$、$H$,并且连接 $E F\,F G\,G H\,H E$．

可以证明 $E F G H$ 也是一个正方形，这个小正方形正是面积等于2的正方形．因为：$ upright("小正方形") E F G H upright("的面积") = upright("大正方形") A B C D upright("的面积") - 4 times upright("三角形") A E H upright("的面积") $ #noindent;即：$ E F G H upright("的面积") = 4 - 4 times 1 / 2 = 2 $

由此可知，面积为2的正方形的实际存在，正说明了2的平方根是存在的．

同学们还可以进行一个实验：把图中四个小三角形剪下来，拼在一起正好又是一个小正方形，且与图中原有的小正方形完全相等．因而可以得出：$ 2 times upright("小正方形面积") = upright("大正方形面积") $ #noindent;因此：$ upright("小正方形面积") = 1 / 2 times upright("大正方形面积") = 1 / 2 times 4 = 2 $ #noindent;这又说明了，图中所作出来的小正方形正是面积为2．因而，它的一边长就是2的一个平方根 $sqrt(2)$．

既然 $sqrt(2)$ 是存在的，它能使 $\(sqrt(2)\)^2 = 2$．显然，$\(- sqrt(2)\)^2 = 2$．所以，2的平方根也应有两个 $plus.minus sqrt(2)$．

用类似的办法，可以说明：任一个正有理数的平方根都是存在的．而且都有两个．同学们可以从图3.4, 3.5中，练习说明 $sqrt(3)$，$sqrt(7)$ 都是存在的．从而 $- sqrt(3)$，$- sqrt(7)$ 也应存在．因此，$3\,7$ 同样各有两个平方根：$plus.minus sqrt(3)$，$plus.minus sqrt(7)$ 等等．

#grid(columns: (1fr,) * 2, align: center + bottom, figure([#fig("3-04");], caption: []), figure([#fig("3-05");], caption: []));

综合以上讨论，可以得出结论：

#blk[][
- 任意一个正数的平方根有两个，它们互为相反数．

  记作：$plus.minus sqrt(a) quad\(a > 0\)$．

- 零的平方根，仍然是零，记作：$sqrt(0) = 0$．

- 任意一个负数的平方根无意义．

]
#exercise[
+ 求下列各数的平方根：$900\,quad 196 / 225\,quad 0.0121\,quad 4 9 / 4$

+ 求下列各值：$ - sqrt(81)\,quad sqrt(4 / 9)\,quad sqrt(1)\,quad sqrt(0)\,quad - sqrt(0.000016) $ #noindent;$ sqrt(1 / 25)\,quad - sqrt(7^2)\,quad sqrt(\(- 7\)^2)\,quad (sqrt(4))^2\,quad (sqrt(- 9))^2 $

+ 利用所画的图3.6，说明 $sqrt(5 / 2)$ 是存在的．

]
#figure([#fig("3-06");

  ],
  caption: [
  ]
)

因为一个正数 $a$ 的正平方根 $sqrt(a)$ 可以理解为：面积为 $a$ 的正方形，边长为 $sqrt(a)$．而且知道面积较大的正方形，边长也一定较长．所以，较大的正数，它的正平方根也较大，而它的负平方根反而较小．即：

#blk[][
如果 $a > b > 0$,那么就有 $ sqrt(a) > sqrt(b)\,#h(2em) - sqrt(a) < - sqrt(b) $

]
#example[
比较下列各平方根的大小：

+ $sqrt(12)$ 与 $sqrt(15)$

+ 3与 $sqrt(10)$

+ 2.1与 $sqrt(3)$ 与 $- sqrt(3)$

]
#solution[
比较平方根的大小，可以由比较被开方数的大小而决定．

+ $because quad 12 < 15\,#h(2em) therefore quad sqrt(12) < sqrt(15)$

+ $because quad 3 = sqrt(9)\,thick sqrt(9) < sqrt(10)\,#h(2em) therefore quad 3 < sqrt(10)$

+ $because quad 2.1 = sqrt(4.41)\,thick sqrt(4.41) > sqrt(3) > - sqrt(3)$

  $therefore quad 2.1 > sqrt(3) > - sqrt(3)$

]
#example[
试求下列各等式中的 $x$、$y$ 值：

+ $sqrt(x + 2) = 0$

+ $sqrt(x) + sqrt(y - 1) = 0$

+ $+ sqrt(x - 1) = - 2$

]
#solution[
只要注意 $sqrt(a)$ 只表示正数或0．

+ $because quad sqrt(x + 2) = 0$

  $therefore quad x + 2 = 0 #h(2em) therefore quad x = - 2$

+ $because quad sqrt(x)$ 与 $sqrt(y - 1)$ 只能表示正数或0，

  $therefore quad sqrt(x) gt.eq 0\,thick sqrt(y - 1) gt.eq 0$，因此，要使两部份的和为零，只有它们同时为零才行．

  $therefore quad sqrt(x) = 0 #h(2em) sqrt(y - 1) = 0$

  所以：$x = 0\,quad y - 1 = 0$，即 $y = 1$．

]
#exercise[
+ 比较大小

  #cols(2)[
  + $sqrt(5)$ 与 $sqrt(7)$

  + 3与 $sqrt(3)$ 与 $- sqrt(2)$

  + $- sqrt(1 / 2)$ 与0与 $sqrt(1 / 9)$

  + 2与 $sqrt(4.1)$ 与 $- 2.1$ 与 $sqrt(20 / 7)$

  ]

+ 求 $x$ 值：

  + $sqrt(x) = 0$

  + $sqrt(x - a) + sqrt(b) = 0$

  + $sqrt(x + 1) + sqrt(y - 7) = 0$

]
=== 求一个数的平方根
任一个正数 $a$ 的平方根有两个：互为相反数的两个数，零的平方根，仍是零．

我们把#strong[正数 $a$ 的正平方根，叫做这个数的算术平方根]，仍用记号 $sqrt(a)$ 表示．

零的算术根，仍然是0，即 $sqrt(0) = 0$．

任一个正方形的边长，就是其面积的算术平方根．

要求一个正数的平方根（两个），只要求出这个正数的算术平方根（一个）来就可以了．因为，另一个平方根，就是算术平方根的相反数．

以下介绍两种求平方根的方法：

==== 开平方方法
#example[
求 $sqrt(2809)$

]
#solution[
首先，应确定所求算术平方根的#strong[位数]，我们知道：

#align(center)[
#table(
  columns: (auto, auto,),
  align: (left, left,),
  [$1^2 = 1$],
  [$9^2 = 81$],
  [$10^2 = 100$],
  [$99^2 = 9801$],
  [$100^2 = 10000$],
  [$999^2 = 998001$],
  [$dots.h.c dots.h.c$],
  [$dots.h.c dots.h.c$],
);

]
可见，

- 一位数的平方是一或二位数；

- 两位数的平方是三或四位数；

- 三位数的平方是五或六位数；

- ……

反过来看，就有这样的规律：

- 一、二位数的平方根，一定是一位数；

- 三、四位数的平方根，一定是二位数；

- 五、六位数的平方根，则必是三位数；

- ……

因此，如果把给出的被开方数，从个位起自右向左每两位数字分为一段，用“'”号分开，则所分成的“段数”，就是所求平方根应有的整数的位数．把2809分段，得28'09．可以确定它开方后，所得平方根是两位整数．

其次，应确定平方根最高位的数字，因为 $ 50^2 < 2809 < 60^2 $ #noindent;所以，$sqrt(2809)$ 的最高位数字应是5(实际是50)．

第三步，应确定平方根最高位数字的下一位数字．

我们可以设为 $b$,这时，理应有：$ sqrt(2809) = 50 + b quad arrow.r.double quad 2809 =\(50 + b\)^2 $ #noindent;$therefore quad 2809 = 50^2 + 2 times 50 times b + b^2$

#numbered-align(($2809 - 50^2$, $zws = 2 times 50 times b + b^2$, false), ($309$, $zws =\(2 times 50 + b\)dot.op b$, true));

用这个等式关系，可以试商确定 $b$：只要把其中的 $\(2 times 50 + b\)dot.op b$,近似地看作 $2 times 50 times b$，就可以得出 $ 309 approx 2 times 50 times b $ #noindent;从而可以试算出 $b approx 3$．然后，再把 $b approx 3$ 代入关系式(3.3)进行正式计算：$ \(2 times 50 + b\)dot.op b =\(2 times 50 + 3\)times 3 = 309 $ #noindent;正好符合要求，$therefore quad b = 3$ 是正确的．

归纳以上各步，可以将整个过程写成以下竖式的形式：

#align(center)[
#fig("3-07");

]
以上计算结果直到余0为止．表明被开方数开平方后得到一个整数．

如果计算最后一步余数不为0时，就要给被开方数补0，(每次补两位0)．再重复以上的计算过程，每次可得到平方根的一个小数位数字．反复进行到最后余0时，就得到一个混合小数形式平方根．这时，我们说被开方数是一个完全平方数．或说：开平方可以开得尽．

]
在更多的情形下，对一些数进行开平方运算，反复进行下去，总也没有余0的时候．这时，我们就说被开方数是个不完全平方数．

#example[
求 $sqrt(2)$．

]
#solution[
用开平方方法计算如下：

#align(center)[
#fig("3-08");

]
继续计算下去，总也得不到余数是0．这说明2开平方是永远开不尽的，这是一个不完全平方数．

]
#example[
求 $sqrt(1650.7969)$

]
#analyze[
遇到纯小数开平方，只是“分段定位”与整数开平方不同，这时要以小数点为准，自左向右每两位一段，每段就可确定平方根的一个小数位；遇到混合小数开平方，就必须从小数点起，向左和向右每两位一段，用“'”号分开．所分段数就可确定平方根的整数位和小数位．以下各步骤仍与例3.10,例3.11的方法相同．

]
#solution[
#align(center)[
#fig("3-09");

]
]
#rmk[
这个开平方运算中，在第二位试商时不足1，就要在平方根相应的位置“商0”，然后再继续往下进行计算．还要注意：小数点的位置要与被开方数的小数点对齐．

]
#exercise[
求下列各算术平方根：$ sqrt(676)\,#h(2em) sqrt(1521)\,#h(2em) sqrt(82369)\,#h(2em) sqrt(10309)\,#h(2em) sqrt(4.9284) $ #noindent;$ sqrt(9.0601)\,#h(2em) sqrt(4901.4001)\,#h(2em) sqrt(144.7)\,#h(2em) sqrt(3) $ #noindent;\(要求求出两位小数）．试总结一下开平方方法的步骤．

]
==== 平方根表
一个数的算术平方根，除用开平方方法可以计算出来以外，还可以直接查《平方根表》而得到．下页就是“中学数学用表”里的第三个表“平方根表”的一部分．

#align(center)[
#fit-width[#table(
  columns: (auto, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto,),
  align: (center, center, center, center, center, center, center, center, center, center, center, center, center, center, center, center, center, center, center, center,),
  table.vline(x: 0),
  table.vline(x: 1),
  table.vline(x: 11),
  table.vline(x: 20),
  table.hline(),
  [$N$],
  [0],
  [1],
  [2],
  [3],
  [4],
  [5],
  [6],
  [7],
  [8],
  [9],
  [1],
  [2],
  [3],
  [4],
  [5],
  [6],
  [7],
  [8],
  [9],
  table.hline(),
  [3.5],
  [1.871],
  [1.873],
  [1.876],
  [1.879],
  [1.881],
  [1.884],
  [1.887],
  [1.889],
  [1.892],
  [1.895],
  [0],
  [1],
  [1],
  [1],
  [1],
  [2],
  [2],
  [2],
  [2],
  [3.6],
  [1.897],
  [1.900],
  [1.903],
  [1.905],
  [1.908],
  [1.910],
  [1.913],
  [1.916],
  [1.918],
  [1.921],
  [0],
  [1],
  [1],
  [1],
  [1],
  [2],
  [2],
  [2],
  [2],
  [3.7],
  [1.924],
  [1.926],
  [1.929],
  [1.931],
  [1.934],
  [1.936],
  [1.939],
  [1.942],
  [1.944],
  [1.947],
  [0],
  [1],
  [1],
  [1],
  [1],
  [2],
  [2],
  [2],
  [2],
  [3.8],
  [1.949],
  [1.952],
  [1.954],
  [1.957],
  [1.960],
  [1.962],
  [1.965],
  [1.967],
  [1.970],
  [1.972],
  [0],
  [1],
  [1],
  [1],
  [1],
  [2],
  [2],
  [2],
  [2],
  [3.9],
  [1.975],
  [1.977],
  [1.980],
  [1.982],
  [1.985],
  [1.987],
  [1.990],
  [1.992],
  [1.995],
  [1.997],
  [0],
  [1],
  [1],
  [1],
  [1],
  [2],
  [2],
  [2],
  [2],
  [4.0],
  [……],
  [……],
  [……],
  [……],
  [……],
  [……],
  [……],
  [……],
  [……],
  [……],
  […],
  […],
  […],
  […],
  […],
  […],
  […],
  […],
  […],
  table.hline(),
  [$N$],
  [0],
  [1],
  [2],
  [3],
  [4],
  [5],
  [6],
  [7],
  [8],
  [9],
  [1],
  [2],
  [3],
  [4],
  [5],
  [6],
  [7],
  [8],
  [9],
  table.hline(),
);]

]
这个表分两部分，标有 $N$ 的直行（列）和横行的数是被开方数；其余的数都是平方根数．最后一栏是修正值．修正值表示的都是指平方根末位数字的修正值．

在表中所查出的平方根大多数还是近似值．都是采用四舍五入法则而得的四位数字．

平方根表的使用方法是：

I．表中可以直接查出由1到99.99间的每一个数的算术平方根．

例如，要查 $sqrt(3.887)$，只要首先在表里 $N$ 所在的列中找到被开方数的左边两位数3.8，然后再在 $N$ 所在的行中找到被开方数的左边第三位数字8，从第一次找到的3.8所在的行横着看，从第二次找到的8所在的列竖直看，交叉地方的数，就是 $sqrt(3.880)$ 的值．再加上被开方数最末一位数字7所在列的修正值，就可得到：$ sqrt(3.887) = 1.970 + 0.002 = 1.972 $ #noindent;又如，查 $sqrt(81.13) = 9.006 + 0.002 = 9.008$．

#exercise[
查平方根表，求下列算术平方根．$ sqrt(1.28)\,#h(2em) sqrt(7.320)\,#h(2em) sqrt(66.71)\,#h(2em) sqrt(8.247)\,#h(2em) sqrt(91.15) $

]
II．小于1或大于100的被开方数，它的算术平方根从表里不能直接查出来．怎么办呢？可以从分析以下例题中，探求规律，寻找方法，设法创造条件，利用表来查．

#example[
求出下列各平方根．并观察、总结其中有何规律：

+ $sqrt(0.0036)\,quad sqrt(0.36)\,quad sqrt(36)\,quad sqrt(3600)\,quad sqrt(360000)$

+ $sqrt(0.0009)\,quad sqrt(0.09)\,quad sqrt(9)\,quad sqrt(900)\,quad sqrt(90000)$

]
#solution[
$ mat(delim: #none, align: #left, column-gap: #1.5em, sqrt(0.0036) = 0.06 #h(2em) #h(2em), sqrt(0.0009) = 0.03; sqrt(0.36) = 0.6, sqrt(0.09) = 0.3; sqrt(36) = 6, sqrt(9) = 3; sqrt(3600) = 60, sqrt(900) = 30; sqrt(360000) = 600, sqrt(90000) = 300) $

]
从中我们发现：当被开方数扩大（或缩小）100倍时，它的算术平方根就相应地扩大（或缩小）10倍．由此可以得出：#strong[当被开方数的小数点每向右（或向左）移动两位时，它的平方根的小数点就相应地向右（或向左）移动一位]．

这样一来，对于大于100和小于1的被开方数，我们就可以首先移动它的小数点位置（注意必须两位两位地移），使它成为表内可以查到的数．

例如：

- 366.2先移动小数点，成为3.662,

- 4733先移动小数点，成为47.33,

- 37140先移动小数点，成为3.7140,

又如：

- 0.1478先移动小数点，成为14.78,

- 0.0536先移动小数点，成为5.36,

- 0.00004先移动小数点，成为40等．

这样的向左或向右移动小数点，就是把被开方数缩小或扩大100倍、10000倍，……；然后进行查表，得出平方根后，还需要#strong[把查得数的小数点再向相反的方向移动，移动的位数应是被开方数小数点移动位数的一半]．例如：

#align(center)[
#fig("3-10");

]
$because$ 查 $sqrt(47.33) = 6.880$,#h(2em);$therefore thick sqrt(4733) = 68.80$

$because$ 查 $sqrt(3.714) = 1.927$,#h(2em);$therefore thick sqrt(37140) = 192.7$

同样地，

#align(center)[
#fig("3-11");

]
$because$ 查 $sqrt(5.36) = 2.315$,#h(2em);$therefore thick sqrt(0.0536) = 0.2315$

$because$ 查 $sqrt(40) = 6.325$,#h(2em);$therefore thick sqrt(0.00004) = 0.006325$

要注意，四位数学用表，只能查四个数码的数．因此，若是遇到有5位以上的数字，如：$sqrt(3.7896)$,就要首先用四舍五入法，将它改写为 $sqrt(3.790)$,再去查表．

#exercise[
查平方根表，求出下列各值：$ sqrt(144)\,quad sqrt(297)\,quad sqrt(3756)\,quad sqrt(4444)\,quad sqrt(54542)\,quad sqrt(70107) $ #noindent;$ sqrt(1981000)\,quad sqrt(23060000)\,quad sqrt(0.1)\,quad sqrt(0.142)\,quad sqrt(0.0787) $ #noindent;$ sqrt(0.4333)\,quad sqrt(0.5555)\,quad sqrt(0.00063)\,quad sqrt(0.00007)\,quad sqrt(0.0000041) $

]
=== 实数
在前面，我们用开平方的方法曾经计算过 $sqrt(2)$ 的值．并指出 $sqrt(2) = 1.4142 dots.h.c$ 是无穷尽的，而且是永不循环的小数．但现实又告诉我们：$sqrt(2)$ 又确实存在（面积为2的正方形的边长）．

像 $sqrt(2)$ 这样的数，还有许多，比如：$sqrt(3) = 1.7321 dots.h.c$, $sqrt(5) = 2.236 dots.h.c$,等等．这些数的共同特征是：#strong[无限不循环小数]．

当然，无限不循环小数，不一定都是由开方运算开不尽而得到的．数学中常见的还有：圆周率 $pi = 3.1415926 dots.h.c$\; $e = 2.718281 dots.h.c$\;等．它们也是#strong[无限不循环小数]．

可以证明这些无限不循环小数，不能化为两个整数比 $a / b$ 的形式．因此，它们已不属于有理数的范围了．

我们把#strong[无限不循环小数，称为无理数]．（或称为#strong[非比数]）．如：$sqrt(2)\,sqrt(3)\,e\,pi$ 都是无理数．

#strong[有理数与无理数统称为实数．]

全体实数组成的集合，叫做实数集合，简称#strong[实数集]，记作：集合 $bb(R)$．

实数集，是可以用来度量长度，面积的数集，其详细内容、运算将在高中学习．这里只简略地指出：在实数范围内，也有以下概念：

如果用字母 $a$ 表示任一个实数，则 $- a$ 就是它的相反数．即 $\(+ a\)+\(- a\)=\(- a\)+\(+ a\)= 0$．

例如：$sqrt(2)$ 与 $- sqrt(2)$ 互为相反数，即 $sqrt(2) + (- sqrt(2)) = 0$．

如果字母 $b$ 表示任一个非零实数，则 $1 / b$ 就是它的倒数，即 $b times 1 / b = 1$ 例如：$sqrt(3)$ 与 $1 / sqrt(3)$ 互为倒数，即 $sqrt(3) times 1 / sqrt(3) = 1$．

任一实数 $x$ 的绝对值的意义，与有理数时的意义相同．即 $ \|x\|= display(cases(x\, & quad x > 0, 0\, & quad x = 0, - x\, & quad x < 0)) $

例如：$\|sqrt(3)\|= sqrt(3)$, $\|0\|= 0$, $\|- e\|= e$．

显然，任一实数 $x$ 的绝对值，总是非负数．即 $\|x\|gt.eq 0$．

归纳我们已经学习过的数，可列成下表：

#align(center)[
#fig("3-12");

]
#exercise[
+ 指出下列实数中，哪些是有理数，哪些是无理数：$ 3.1416\,quad - 0.2\,quad sqrt(0.09)\,quad - sqrt(7)\,quad pi\,quad 0 . dot(0) dot(1)\,quad 0.010010001 dots.h.c $

+ 指出下列各实数的相反数，倒数及绝对值都是什么：$ - 1.41\,quad sqrt(3)\,quad - pi\,quad - sqrt(5)\,quad 0\,quad 1 / sqrt(2)\,quad - 0 . dot(2) dot(3)\,quad 2.40 dot(1)\,quad - sqrt(16) $

]
#heading(level: 2, numbering: none, supplement: [toc-sub])[习题3.1]

+ 试用两数和或差的平方公式，计算：$ (2 1 / 2)^2\,#h(2em) 9.997^2\,#h(2em) 401^2 $

+ 利用公式，把下列各式展开：

  #cols(2)[
  + $(2 a + 1 / 2)^2$

  + $(2 x + 1 / 2 y)^2$

  + $\(4 y - 1\)^2$

  + $\(2 m - 2 n\)^2$

  + $(frac(x + y, 2))^2$

  + $(frac(a - 2 b, 3))^2$

  ]

+ 把下列各式中的空白填上适当的数：

  + $x^2 + x +\(#h(2em) #h(2em)\)=\(x + #h(2em) #h(2em)\)^2$

  + $2 x^2 + 4 x +\(#h(2em) #h(2em)\)= 2\(x + #h(2em) #h(2em)\)^2$

  + $- m^2 +\(#h(2em) #h(2em)\)- 64 = -\(m - #h(2em) #h(2em)\)^2$

  + $4 y^2 -\(#h(2em) #h(2em)\)+ 1 =\(2 y - 1\)^2$

  + $- 3 x^2 - 3 x -\(#h(2em) #h(2em)\)= - 3 (x + 1 / 2)^2$

  + $x^2 + 6 x - 1 =\(x + 3\)^2 -\(#h(2em) #h(2em)\)$

+ + 一个正数的平方等于289,求这个正数．

  + 一个数的平方等于361,求这个数．

  + 一个负数的平方等于196,求这个负数．

+ 由 $m^2 = n^2$ 而得出 $m = n$ 正确吗？为什么？

+ 求下列各平方根：$ sqrt(36)\,quad - sqrt(81)\,quad sqrt(9 / 16)\,quad sqrt(1)\,quad - sqrt(7^2)\,quad - sqrt(\(- 4\)^2) $ #noindent;$ sqrt(0)\,quad sqrt(\(- sqrt(4)\)^2)\,quad - sqrt((- 1 / 361)^2) $

+ 求下列各数的算术平方根．$ 900\,quad 121\,quad 1\,quad 0\,quad 196 / 256\,quad\(- 25\)^2 $

+ 比较下列各平方根的大小：

  + $sqrt(3)\,#h(2em) sqrt(3.1)\,#h(2em) 2$

  + $- sqrt(7)\,#h(2em) sqrt(6)\,#h(2em) sqrt(1 / 6)$

  + $15\,#h(2em) sqrt(220)\,#h(2em) - sqrt(250)\,#h(2em) - sqrt(225)$

+ 如果 $sqrt(a + 3) + sqrt(b) = 0$,试求 $a$ 与 $b$ 的值．

+ 七块同样大小的正方形面积之和是343平方米，求每块正方形的一边长是多少？

+ 用开平方方法，求下列各算术根：$ sqrt(9025)\,#h(2em) sqrt(2116)\,#h(2em) sqrt(3969)\,#h(2em) sqrt(50625)\,#h(2em) sqrt(269361) $ #noindent;$ sqrt(0.4489)\,#h(2em) sqrt(0.00080089)\,#h(2em) sqrt(8114.4064) $

+ 查平方根表，求下列各数的算术平方根：$ 99.23\,quad 9.123\,quad 4.017\,quad 17.536\,quad 174\,quad 1981\,quad 2006\,quad 75693\,quad 1001230 $ #noindent;$ 0.101\,quad 0.07864\,quad 0.00043\,quad 0.000801\,quad 0.000006123 $

+ 什么是无理数？什么是实数？

+ #staritem(14);要使一个正整数乘以60以后，得出一个完全平方数，问：这一个正整数最小是几才行？这个完全平方数是几？它的算术平方根是几？

== 平方根的运算
本节仅就算术平方根进行讨论，其中所提到的平方根，就是指 $sqrt(a)\,quad\(a gt.eq 0\)$．

=== 算术平方根的性质
#blk[性质1][
算术平方根的平方，等于被开方数，即：$ (sqrt(a))^2 = a #h(2em)\(a gt.eq 0\) $

]
这只要由平方根的意义就可看出．

例如：$\(sqrt(3)\)^2 = 3\,quad\(sqrt(7)\)^2 = 7\,quad (sqrt(2 / 5))^2 = 2 / 5$ 等．

#blk[性质2][
一个数的平方的算术平方根，等于这个数的绝对值．即 $ sqrt(x^2) =\|x\|= display(cases(x\, & quad x > 0, 0\, & quad x = 0, - x & quad x < 0)) $

]
这个性质可以这样来分析、说明：

首先，任一个数x的平方，必是非负数．即：$x^2 gt.eq 0$，因而算术平方根 $sqrt(x^2)$ 是有意义的．

其次，当 $x$ 为正数或零时，由平方根的定义，显然有 $sqrt(x^2) = x\,quad\(x gt.eq 0\)$．

例如：$sqrt(7^2) = 7\,quad sqrt((3 / 4)^2) = 3 / 4\,quad sqrt(0^2) = 0$ 等．

再次，当 $x$ 为负数时，仍有 $x^2 > 0$,因而，算术平方根 $sqrt(x^2) = - x$．\(特别注意，$because thick x < 0\,therefore thick - x > 0$)．

例如：$sqrt(\(- 5\)^2) = sqrt(25) = -\(- 5\)= 5$\; $sqrt(\(- 0.4\)^2) = sqrt(0.16) = -\(- 0.4\)= 0.4$ 等．

综合以上，可以断定：

对任一数 $x$ 来说，都有下式成立：$ sqrt(x^2) =\|x\|= display(cases(x\, & quad x > 0, 0\, & quad x = 0, - x & quad x < 0)) $

#example[
求出下列算术平方根：$ sqrt(\(- 0.12\)^2)\,#h(2em) sqrt(6 times 14 times 21)\,#h(2em) sqrt(\(- 3\)^6) $

]
#solution[
+ $sqrt(\(- 0.12\)^2) = -\(- 0.12\)= 0.12$

+ $sqrt(6 times 14 times 21) = sqrt(2 times 3 times 2 times 7 times 3 times 7) = sqrt(\(2 times 3 times 7\)^2) = 42$

+ $sqrt(\(- 3\)^6) = sqrt(\[\(- 3\)^3\]^2) = -\(- 3\)^3 = 27$

]
#example[
化简：

#cols(2)[
+ $sqrt(\(a - 1\)^2) quad\(a > 1\)$

+ $sqrt(\(b - 5\)^2) quad\(b < 5\)$

+ $sqrt(\(c - 7\)^2) quad\(c = 7\)$

+ $sqrt(\(10 - x\)^2)$

]
]
#solution[
+ $because a > 1 quad therefore a - 1 > 0$

  $therefore quad sqrt(\(a - 1\)^2) =\|a - 1\|= a - 1$

+ $because b < 5 quad therefore quad b - 5 < 0$

  $therefore quad sqrt(\(b - 5\)^2) =\|b - 5\|= -\(b - 5\)= 5 - b$

+ $because c = 7\,quad therefore quad c - 7 = 0$

  $therefore quad sqrt(\(c - 7\)^2) =\|c - 7\|= 0$.

+ $because x$ 是任意数, $therefore 10 - x$ 就可能为正或0或负,因此：$ sqrt(\(10 - x\)^2) =\|10 - x\|= display(cases(10 - x\, & quad upright("当") 10 - x > 0 upright(" 即") x < 10 upright("时"), 0\, & quad upright("当") 10 - x = 0 upright(" 即") x = 10 upright("时"), x - 10\, & quad upright("当") 10 - x < 0 upright(" 即") x > 10 upright("时"))) $

]
#exercise[
利用算术根的性质，化简：

+ $\(sqrt(0.7)\)^2\,#h(2em) sqrt(\(- 5\)^2)\,#h(2em)\(sqrt(- 5)\)^2\,#h(2em) - sqrt(5^2)\,#h(2em)\(- sqrt(5)\)^2$

+ $sqrt(7^2 times 9^2)\,#h(2em) sqrt(8 times 18 times 9)\,#h(2em) sqrt(12 times 15 times 20)$

+ $sqrt(\(2 - x\)^2) quad\(x > 2\)\,#h(2em) sqrt(\(5 + x\)^2)\,#h(2em) sqrt(\(5 - x\)^2)$

+ $sqrt(a^8)\,#h(2em) sqrt(\(sqrt(2) - 2\)^2)\,#h(2em) sqrt(\(1 - sqrt(3)\)^2)\,#h(2em) sqrt(\(sqrt(2) - sqrt(5)\)^2)$

+ 如果 $sqrt(\(x\)^2) + sqrt(\(y - 1\)^2) = 0$,你能知道 $x$、$y$ 各是什么值吗？

]
=== 算术平方根的乘、除运算
首先来计算平方根 $sqrt(25) dot.op sqrt(9)$ 与 $sqrt(25 times 9)$ 的值：$ sqrt(25) dot.op sqrt(9) = 5 times 3 = 15 #h(2em) sqrt(25 times 9) = sqrt(225) = 15 $ #noindent;可见，$sqrt(25) dot.op sqrt(9) = sqrt(25 times 9)$．

一般地说：如果 $a gt.eq 0$, $b gt.eq 0$,那么，就有 $sqrt(a) dot.op sqrt(b) = sqrt(a b)$ 成立．

这就是说：#strong[二数算术平方根的积等于这二数积的算术平方根]．即 $ sqrt(a) dot.op sqrt(b) = sqrt(a b) #h(2em)\(a gt.eq 0\,thick b gt.eq 0\) $

#note[
$because quad$ 已知 $a gt.eq 0$, $b gt.eq 0$，应有 $a b gt.eq 0$．$therefore quad sqrt(a)\,sqrt(b)$ 都是算术平方根，应有 $sqrt(a) gt.eq 0$, $sqrt(b) gt.eq 0$．因而 $\(sqrt(a) dot.op sqrt(b)\)gt.eq 0$．

根据乘积的乘方运算律可知：

#numbered-align(($\(sqrt(a) dot.op sqrt(b)\)^2$, $zws =\(sqrt(a)\)^2 dot.op\(sqrt(b)\)^2$, false), ($$, $= a dot.op b = a b$, [(算术平方根的性质)]));

$therefore quad (sqrt(a) dot.op sqrt(b))^2 = a b$

又由于 $sqrt(a) dot.op sqrt(b) gt.eq 0$, $a b gt.eq 0$,因此，利用平方根的定义就可以得出：$ sqrt(a) dot.op sqrt(b) = sqrt(a b) $

]
#example[
化简下列各平方根，使被开方数的每一个因数的指数都小于2：

#cols(2)[
+ $sqrt(4^2 times 3)$

+ $sqrt(100 a) quad\(a gt.eq 0\)$

+ $sqrt(125 x^3)$

+ $sqrt(a^2 b) quad\(a gt.eq 0 thick b gt.eq 0\)$

]
]
#solution[
+ $sqrt(4^2 times 3) = sqrt(4^2) dot.op sqrt(3) = 4 sqrt(3)$

+ $sqrt(100 a) = sqrt(100) dot.op sqrt(a) = 10 sqrt(a)$

+ $sqrt(125 x^3) = sqrt(5^2 dot.op x^2 dot.op 5 dot.op x) = sqrt(5^2) dot.op sqrt(x^2) dot.op sqrt(5 x) = 5 x sqrt(5 x)$

+ $sqrt(a^2 b) = sqrt(a^2) dot.op sqrt(b) = a sqrt(b)$

]
由这个例题说明，利用算术平方根的乘法法则，可以把被开方数中的“完全平方因数”，用它的算术平方根代替，而移到根号外边．这种变形，通常叫做把根号内的因数开方后移到根号外边，从而可以化简根式．

有时候，还可以反过来把根号外边的因数平方后，移到根号里边去，以利于计算和化简．

#example[
比较下列各数的大小：

+ $2 sqrt(5)\,#h(2em) sqrt(17)$

+ $a sqrt(b)\,#h(2em) sqrt(1 + a^2 b) quad\(a gt.eq 0\,thick b gt.eq 0\)$

]
#solution[
#cols(2)[
+ $because quad 2 sqrt(5) = sqrt(4) dot.op sqrt(5) = sqrt(20)$

  且 $sqrt(20) > sqrt(17)$．

  $therefore quad 2 sqrt(5) > sqrt(17)$

+ $because quad a sqrt(b) = sqrt(a^2) dot.op sqrt(b) = sqrt(a^2 b)$

  且 $sqrt(a^2 b) < sqrt(1 + a^2 b)$．

  $therefore quad a sqrt(b) < sqrt(1 + a^2 b)$

  $\(a gt.eq 0\,thick b gt.eq 0\)$

]
]
#example[
计算：$sqrt(6) dot.op sqrt(27)\,#h(2em) a sqrt(b) dot.op b dot.op sqrt(a b) quad\(a gt.eq 0\,thick b gt.eq 0\)$

]
#solution[
+ $sqrt(6) dot.op sqrt(27) = sqrt(2 times 3 times 3^3) = sqrt(2) dot.op sqrt(3^4) = 9 sqrt(2)$

+ $a sqrt(b) dot.op b sqrt(a b) = a b sqrt(a b^2) = a b dot.op b sqrt(a) = a b^2 sqrt(a)$

]
#exercise[
+ 把被开方数中的因数尽量移到根号外，使各因数的指数都小于2: $ sqrt(5 times 7^2)\,quad sqrt(48)\,quad sqrt(50)\,quad sqrt(36 a b^2) thick\(b gt.eq 0\)\,quad sqrt(24 a^2) thick\(a < 0\) $

+ 把根号外边的因数移到根号里边去：$ 2 sqrt(3)\,#h(2em) 3 sqrt(6)\,#h(2em) 5 sqrt(a)\,#h(2em) a sqrt(2) thick\(a gt.eq 0\)\,#h(2em) b sqrt(a) thick\(b < 0\) $

+ 计算：$sqrt(10) dot.op sqrt(125)\,#h(2em) sqrt(7) dot.op sqrt(14)\,#h(2em) a sqrt(a) dot.op b sqrt(a)$

]
再来计算 $sqrt(16) / sqrt(49)$ 与 $sqrt(16 / 49)$ 的值：$ sqrt(16) / sqrt(49) = 4 / 7\,#h(2em) sqrt(16 / 49) = 4 / 7 $ #noindent;可见，$sqrt(16) / sqrt(49) = sqrt(16 / 49)$．

一般地说，如果 $a gt.eq 0$, $b > 0$,那么，就有 $sqrt(a) / sqrt(b) = sqrt(a / b)$ 成立．

这就是说：#strong[二数算术平方根的商，等于这二数商的算术平方根]．即 $ sqrt(a) / sqrt(b) = sqrt(a / b) #h(2em)\(a gt.eq 0\,thick b > 0\) $

#note[
$because quad a gt.eq 0\,thick b > 0$，因而 $a / b gt.eq 0$

$therefore quad sqrt(a)\,thick sqrt(b)$ 都是算术平方根，应有：$sqrt(a) gt.eq 0\,thick sqrt(b) > 0$，因而：$sqrt(a) / sqrt(b) gt.eq 0$．

根据商的乘方运算律可知：

#numbered-align(($(sqrt(a) / sqrt(b))^2$, $zws = frac(\(sqrt(a)\)^2, \(sqrt(b)\)^2)$, false), ($$, $= a / b$, [(算术平方根的性质)]));

$therefore quad (sqrt(a) / sqrt(b))^2 = a / b$

又由于 $sqrt(a) / sqrt(b) gt.eq 0$，$a / b gt.eq 0$，因此，由平方根的定义就可以得出：$ sqrt(a) / sqrt(b) = sqrt(a / b) $

]
#example[
计算：$sqrt(125) / sqrt(5)\,#h(2em) sqrt(8 / 49)$

]
#solution[
$sqrt(125) / sqrt(5) = sqrt(125 / 5) = sqrt(25) = 5$

$sqrt(8 / 49) = sqrt(8) / sqrt(49) = frac(2 sqrt(2), 7)$

]
在算术平方根的运算中，常常需要通过一些变形把分母中的根号化去或把根号中的分母化去，这叫做#strong[分母有理化]．

#example[
化简下列各平方根，使分母有理化：$ sqrt(5 / 7)\,#h(2em) 2 / sqrt(3) $

]
#solution[
#numbered-align(($sqrt(5 / 7)$, $zws = sqrt(frac(5 times 7, 7 times 7))$, [(分数的基本性质)]), ($$, $= sqrt(35) / 7$, false));

#numbered-align(($2 / sqrt(3)$, $zws = frac(2 times sqrt(3), sqrt(3) dot.op sqrt(3))$, [(分数的基本性质)]), ($$, $= frac(2 sqrt(3), 3)$, false));

]
一般地：

#blk[][
$ sqrt(a) / sqrt(b) & = frac(sqrt(a) dot.op sqrt(b), sqrt(b) dot.op sqrt(b)) = sqrt(a b) / b\
sqrt(a / b) & = sqrt(frac(a times b, b times b)) = sqrt(a b) / b quad\(a gt.eq 0\,thick b > 0\) $

]
#example[
把下列平方根的分母有理化：$ sqrt(2 1 / 2)\,quad frac(3, 2 sqrt(5))\,quad 5 / sqrt(40)\,quad sqrt(frac(25, 3 a))\,quad frac(1, sqrt(2) dot.op sqrt(3)) $

]
#solution[
$ sqrt(2 1 / 2) & = sqrt(5 / 2) = sqrt(frac(5 times 2, 2 times 2)) = sqrt(10) / 2\
frac(3, 2 sqrt(5)) & = frac(3 sqrt(5), 2 sqrt(5) dot.op sqrt(5)) = frac(3 sqrt(5), 10)\
5 / sqrt(40) & = frac(5, 2 sqrt(10)) = frac(5 sqrt(10), 2 times sqrt(10) dot.op sqrt(10)) = frac(5 sqrt(10), 20) = sqrt(10) / 4\
sqrt(frac(25, 3 a)) & = 5 / sqrt(3 a) = frac(5 sqrt(3 a), 3 a)\
frac(1, sqrt(2) dot.op sqrt(3)) & = 1 / sqrt(6) = sqrt(6) / 6 $

]
#exercise[
+ 将下列各平方根的分母有理化：$ sqrt(7 / 36)\,#h(2em) sqrt(frac(25, 4 a^2)) thick\(a > 0\)\,#h(2em) sqrt(frac(2, 9 a))\,#h(2em) 2 sqrt(1 / 8) $ #noindent;$ 6 sqrt(1 / 3)\,#h(2em) frac(sqrt(3), sqrt(2) dot.op sqrt(6))\,#h(2em) frac(sqrt(2), sqrt(5) dot.op sqrt(6)) $

+ 化简：（就是使被开方数的每一个因数的指数都小于2，使分母有理化）$ sqrt(75)\,quad 7 sqrt(5 / 7)\,quad 4 sqrt(1 / 3)\,quad sqrt(45)\,quad sqrt(0.2)\,quad sqrt(2 1 / 8)\,quad sqrt(1 / 2) $

+ 先化简，再比较以下各组数的大小：$ sqrt(24) upright(" 与 ") sqrt(54)\,#h(2em) sqrt(7 / 12) upright(" 与 ") sqrt(28 / 243) $

]
在今后的平方根运算中，如果没有特别声明，运算结果都要求符合两个条件：

+ 被开方数的每个因数的指数小于2；

+ 分母有理化．

符合这两个条件的平方根，称为#strong[最简平方根]．

#exercise[
把下列各平方根，化为最简平方根：$ sqrt(180)\,#h(2em) sqrt(200)\,#h(2em) sqrt(frac(63, 2 a))\,#h(2em) sqrt(7 1 / 2 b^2) thick\(b gt.eq 0\) $

]
=== 算术平方根的加、减运算
对于算术平方根的加、减运算，只要首先把各个平方根化为最简平方根，再利用数系运算的通性，就可以进行同一算术平方根的加法和减法运算．

#example[
计算：$sqrt(12) + sqrt(75) - sqrt(48) - 1 / sqrt(3) - frac(1, 2 sqrt(3))$

]
#solution[
#numbered-align(($$, $quad sqrt(12) + sqrt(75) - sqrt(48) - 1 / sqrt(3) - frac(1, 2 sqrt(3))$, false), ($$, $= 2 sqrt(3) + 5 sqrt(3) - 4 sqrt(3) - sqrt(3) / 3 - sqrt(3) / 6$, [(化简)]), ($$, $= (2 + 5 - 4 - 1 / 3 - 1 / 6) sqrt(3)$, [(分配律)]), ($$, $= 2 1 / 2 times sqrt(3) = frac(5 sqrt(3), 2)$, false));

]
#example[
计算：$sqrt(27) + sqrt(2) + 5 sqrt(5) + 4 sqrt(3) - sqrt(3) - sqrt(20)$

]
#solution[
#numbered-align(($$, $quad sqrt(27) + sqrt(2) + 5 sqrt(5) + 4 sqrt(3) - sqrt(3) - sqrt(20)$, false), ($$, $= 3 sqrt(3) + sqrt(2) + 5 sqrt(5) + 4 sqrt(3) - sqrt(3) - 2 sqrt(5)$, [(化简)]), ($$, $= (3 sqrt(3) + 4 sqrt(3) - sqrt(3)) + sqrt(2) + (5 sqrt(5) - 2 sqrt(5))$, [(交换、结合律)]), ($$, $=\(3 + 4 - 1\)sqrt(3) + sqrt(2) +\(5 - 2\)sqrt(5)$, [(分配律)]), ($$, $= 6 sqrt(3) + sqrt(2) + 3 sqrt(5)$, false));

]
#example[
计算：$sqrt(0.5) - 2 sqrt(1 / 3) - sqrt(1 / 8) + sqrt(48)$

]
#solution[
$  & quad sqrt(0.5) - 2 sqrt(1 / 3) - sqrt(1 / 8) + sqrt(48)\
 & = 1 / 2 sqrt(2) - 2 / 3 sqrt(3) - 1 / 4 sqrt(2) + 4 sqrt(3)\
 & = (1 / 2 - 1 / 4) sqrt(2) + (4 - 2 / 3) sqrt(3)\
 & = 1 / 4 sqrt(2) + 10 / 3 sqrt(3) $

]
#example[
计算：$(5 sqrt(12) - 12 sqrt(3)) dot.op sqrt(6)$

]
#solution[
解法1：

#numbered-align(($(5 sqrt(12) - 12 sqrt(3)) dot.op sqrt(6)$, $zws = (5 times 2 sqrt(3) - 12 sqrt(3)) dot.op sqrt(6)$, [(化简根式)]), ($$, $= (10 sqrt(3) - 12 sqrt(3)) dot.op sqrt(6)$, false), ($$, $= - 2 sqrt(3) dot.op sqrt(6)$, [(平方根减法)]), ($$, $= - 2 sqrt(3 times 6) = - 2 times 3 sqrt(2)$, false), ($$, $= - 6 sqrt(2)$, [(平方根乘法)]));

解法2：

#numbered-align(($(5 sqrt(12) - 12 sqrt(3)) dot.op sqrt(6)$, $zws = 5 sqrt(12) times sqrt(6) - 12 sqrt(3) times sqrt(6)$, [(分配律)]), ($$, $= 5 sqrt(12 times 6) - 12 sqrt(3 times 6)$, [(平方根乘法)]), ($$, $= 30 sqrt(2) - 36 sqrt(2)$, [(化简)]), ($$, $= - 6 sqrt(2)$, [(平方根减法)]));

]
#exercise[
+ \(口答）$5 sqrt(2) + 3 sqrt(2)$, $7 sqrt(3) + sqrt(3)$, $2 sqrt(5) - 3 sqrt(5)$, $sqrt(4) + sqrt(5)$ 是否等于 $sqrt(4 + 5)$,为什么？

  $sqrt(3) times sqrt(2)\,#h(2em) sqrt(6) times sqrt(2)\,#h(2em) sqrt(1 / 2) times sqrt(2)$

+ 计算：$ 3 sqrt(28) - 4 sqrt(7)\,quad 3 sqrt(24) - sqrt(3 / 2)\,quad 4 sqrt(2) + 2 sqrt(3) - 5 sqrt(2) + sqrt(3) - 5 sqrt(3) $

+ 计算：$ sqrt(10 a) dot.op sqrt(5 a)\,quad sqrt(18) div sqrt(6)\,quad sqrt(5) (sqrt(10) - 1)\,quad sqrt(96) div sqrt(3) times sqrt(2) $

+ 计算：

  + $(4 sqrt(27) - 7 sqrt(12)) div sqrt(3)$

  + $(sqrt(1 / 2) - 3 sqrt(1 / 8) + 2 sqrt(0.5)) times sqrt(8)$

]
#heading(level: 2, numbering: none, supplement: [toc-sub])[习题3.2]

+ 求下列各式的值：$ (sqrt(1 / 2))^2\,#h(2em) sqrt(\(- 5\)^2)\,#h(2em) sqrt(9 / 16)\,#h(2em) - sqrt(17^2 times 8^2) $ #noindent;$ sqrt(17^2 - 8^2)\,#h(2em) sqrt(121 times 169)\,#h(2em) sqrt(256 times 225)\,#h(2em) sqrt(17^2) - sqrt(8^2) $

+ 计算下列各式：

  + $sqrt(\(a - 1\)^2)\,#h(2em) sqrt(\(2 - b\)^2)\,#h(2em) (1 - sqrt(2))^2$

  + $sqrt((sqrt(2) - 1)^2) - sqrt((1 - sqrt(2))^2)\,#h(2em) sqrt((sqrt(3) - sqrt(2))^2) + sqrt((1 - sqrt(2))^2)$

+ 下列计算是否正确？为什么？

  + $- 2 sqrt(3) = sqrt(\(- 2\)^2 dot.op 3) = sqrt(12) = 2 sqrt(3)$

  + $sqrt(- 4) dot.op sqrt(- 9) = sqrt(\(- 4\)times\(- 9\)) = sqrt(36) = 6$

  + $sqrt(4^2 + 9^2) = sqrt(4^2) + sqrt(9^2) = 4 + 9 = 13$

+ 化简：

  + $sqrt(108)\,#h(2em) sqrt(105)\,#h(2em) sqrt(98)\,#h(2em) sqrt(63)\,#h(2em) sqrt(720)\,#h(2em) sqrt(686)$

  + $sqrt(1 / 7)\,#h(2em) sqrt(4 1 / 2)\,#h(2em) 2 sqrt(3 / 2)\,#h(2em) sqrt(7) / sqrt(5)\,#h(2em) frac(sqrt(15), sqrt(7) dot.op sqrt(5))$

+ 化简：将被开方数中的因数移到根号外

  + $sqrt(1000 a^2) thick thick\(a > 0\)\,#h(2em) sqrt(325 a b^2) thick thick\(b < 0\)$

  + $sqrt(0.4 m^2) thick thick upright("(") m upright("为任意有理数)")\,#h(2em) sqrt(96 x^2) thick thick upright("(") x upright("为有理数)")$

+ 计算下列各式：

  #cols(2)[
  + $sqrt(16 / 7) times sqrt(7)$

  + $sqrt(54) div (- sqrt(6))$

  + $sqrt(0.6) times sqrt(2 3 / 5)$

  + $12 sqrt(2) div 2 sqrt(3)$

  + $sqrt(27) times 3 sqrt(12) times 5 / 8 sqrt(3)$

  + $8 sqrt(2 / 7) div 5 sqrt(1 1 / 7)$

  + $sqrt(96) div 2 sqrt(3) times sqrt(2)$

  + $5 sqrt(180) div 2 sqrt(5) div sqrt(3)$

  ]

+ 在下列平方根中，把根号外的因数移到根号里边去：

  + $7 sqrt(2)\,#h(2em) a sqrt(2 b) quad\(a > 0\)$

  + $- 4 sqrt(3)\,#h(2em) b sqrt(3) quad\(b < 0\)$

+ 有理化分母：

  + $sqrt(3 / 7)\,#h(2em) sqrt(5) / sqrt(3)\,#h(2em) sqrt(12) / sqrt(3)\,#h(2em) sqrt(7 / 6)$

  + $sqrt(1 2 / 11)\,#h(2em) sqrt(a / 5)\,#h(2em) sqrt(2 / a)\,#h(2em) sqrt(m) / sqrt(2 b)$

+ 计算：

  + $3 sqrt(8) - 2 sqrt(32)$

  + $sqrt(96) - 3 sqrt(24) + sqrt(54)$

  + $5 sqrt(63) + 5 sqrt(7) - 4 sqrt(28)$

  + $sqrt(75) + sqrt(1 / 3) - sqrt(48)$

  + $3 sqrt(0.2) + 4 sqrt(125) + sqrt(1 / 27) - sqrt(75)$

  + $sqrt(24) - (sqrt(1 / 2) + 2 sqrt(2 / 3)) - (sqrt(1 / 8) - sqrt(6))$

+ 计算：

  + $sqrt(2)\(1 + sqrt(2)\)$

  + $\(sqrt(10) - 1\)dot.op sqrt(5)$

  + $sqrt(5)\(2 sqrt(45) - sqrt(15)\)$

  + $\(sqrt(5) + 2 sqrt(0.2)\)dot.op sqrt(5)$

  + $sqrt(18) (sqrt(2) - 4 sqrt(1 / 2))$

  + $2 sqrt(3) (sqrt(12) - sqrt(6) + 2 sqrt(27))$

  + $(sqrt(1 / 3) + sqrt(3)) dot.op (sqrt(27) - sqrt(1 / 27))$#h(1em);（使用分配律）

  + $\(sqrt(2) + sqrt(3)\)\(sqrt(2) - sqrt(3)\)+ 1$

  + $sqrt(\(sqrt(10) - 4\)^2) + sqrt(\(4 + sqrt(10)\)^2) - sqrt(1 / 8) times sqrt(2)$

+ + 已知 $p = 1\,thick q = - 20$，试求 $- p / 2 - 1 / 2 sqrt(p^2 - 4 q)$ 的值．

  + 已知 $a = - sqrt(2)\,thick b = sqrt(3)$，试求 $1 / a + 1 / b$ 的值．

+ + 如果 $x\,y$ 都是非负数，且 $sqrt(x) + sqrt(y) = 0$,试求 $x\,y$ 的值．

  + 如果 $sqrt(a^2) + sqrt(b^2) = 0$,试求 $a\,b$ 的值．

  + 如果 $sqrt(x + 1) + sqrt(y - 3) = 0$,试求 $x\,y$ 的值．

  + 如果 $sqrt(x + y - 6) + sqrt(x - y - 2) = 0$,试求 $x\,y$ 的值．

  + 如果 $\(x - y\)^2 + sqrt(x + y - 7) = 0$,试求 $x\,y$ 的值．

== 一元二次方程及其解法
=== 一元二次方程
首先考虑一个应用问题：

要在操场上画出一块面积是32$upright(m)^2$ 的长方形，并且要求它的长比宽多4m．问：这个长方形的长和宽各取多少m？（如图3.7)

#figure([#fig("3-13");

  ],
  caption: [
  ]
)

用代数解法解这个问题：

设这个长方形的宽取 $x$m，则它的长就应取 $\(x + 4\)$m，由题意可以得出：$ x\(x + 4\)= 32 $

去括号，得 $x^2 + 4 x = 32$.

移项，得 $x^2 + 4 x - 32 = 0$.

由此得到的这种方程，其特点是：各项的最高次数是2.

我们把#strong[只含一个未知数、分母不含未知数，且各项的最高次数是2的方程，叫做一元二次方程]．

例如：$x^2 - 9 = 0$, $2 y^2 - 3 y + 1 = 0$, $3 x^2 - 2 x = 0$, $x^2 + 2 x = 5$, $- x^2 - 2 = 5 x$ 等都是一元二次方程．

显然，任何一个一元二次方程，经过变形、整理，都可以化成下面的标准形式：$ a x^2 + b x + c = 0 quad\(a eq.not 0\) $ #noindent;其中，$a x^2$ 叫#strong[二次项]，$a\(eq.not 0\)$ 是#strong[二次项系数]；$b x$ 叫#strong[一次项]，$b$\(可取任何实数）是#strong[一次项系数]；$c$\(可取任意实数）是#strong[常数项]．

- 当 $b eq.not 0\,thick c eq.not 0$ 时，方程 $a x^2 + b x + c = 0 quad\(a eq.not 0\)$ 叫做#strong[一般的]一元二次方程；

- 当 $b = 0$ 或 $c = 0$ 或 $b = c = 0$ 时，方程 $a x^2 + c = 0 quad\(a eq.not 0\)$ 或 $a x^2 + b x = 0 quad\(a eq.not 0\)$ 或 $a x^2 = 0 quad\(a eq.not 0\)$ 都叫做#strong[特殊的]一元二次方程．

#exercise[
+ 下列方程中，哪些是一元二次方程？如果是，写出它的二次项、一次项和常数项．

  #cols(2)[
  + $3 x^2 + 4 x = 5$

  + $- 2 x^2 - 3 x + 4 = 0$

  + $- 3 x^2 + 36 x - sqrt(5) = 0$

  + $sqrt(5) x^2 + sqrt(3) x - 3 = 0$

  + $x^2 = 3$

  + $7 x^2 = 0$

  + $- 8 x = 7 x^2$

  + $2 x^2 + 1 = 0$

  + $sqrt(7) x^2 = 1$

  + $3 x^2 + x - 3 = 3 x^2 - 1$

  ]

+ 把下列各方程整理成标准形式 $a x^2 + b x + c = 0$,并且使二次项系数都是正数，最后再指出 $a\,b\,c$ 各是什么值？

  #cols(2)[
  + $x^2 - 3 = 5$

  + $4 x\(2 - 3 x\)= x - 6$

  + $\(3 x - 5\)\(4 - x\)= 0$

  + $sqrt(6) y\(y + sqrt(3)\)+ sqrt(2) = y$

  + $6 x - 5 =\(2 x - 3\)^2$

  + $- x^2 + sqrt(8) = 2 sqrt(2) x$

  + $\(x - 3\)^2 + 7 =\(2 x + 1\)^2$

  + $\(1 + m\)x -\(m - 1\)x - x^2 = m$

  ]

+ 适当引入一个未知数，根据以下问题列出方程式，并化成标准形式：

  + 两数的差是8,积是48,求两数．

  + 两个连续的偶数之积是24,求这两偶数．

  + 一个两位数等于它的个位数字的平方，假若个位数字比十位数字大3,试求这个两位数．

+ 试试看：求出下列方程的解 $ 4 x^2 = 0\,#h(2em) x^2 - 9 = 0\,#h(2em) 2 x^2 - 18 = 0 $

]
=== 特殊的一元二次方程的解法
==== $a x^2 = 0$ 的解法
由于 $a eq.not 0$,因而，直接运用等式的性质，就可以把原方程化为：$x^2 = 0$．

显然，这一方程的解（或根）就是0,我们写成 $x = 0$,即解集为 ${ 0 }$．

==== $a x^2 + c = 0 thick\(a eq.not 0\)$ 的解法
对于特殊的一元二次方程 $a x^2 + c = 0 thick\(a eq.not 0\)$,可以首先进行移项，除以 $a$,变形为：$ x^2 = - c / a $ #noindent;然后利用平方根的意义就可以求出这个方程的解（或根）来．

#example[
解下列各方程：

#cols(2)[
+ $5 x^2 - 4 = 0$

+ $- 7 x^2 + 7 = 0$

+ $- 3 x^2 = 0$

+ $2 x^2 + 5 = 0$

]
]
#solution[
+ #numbered-align(($5 x^2 - 4$, $zws = 0$, false), ($5 x^2$, $zws = 4$, [(移项)]), ($x^2$, $zws = 4 / 5$, [(两边除以5)]));

  由平方根的意义可知：$x = plus.minus sqrt(4 / 5)$，即：$ x_1 = 2 / 5 sqrt(5)\,#h(2em) x_2 = - 2 / 5 sqrt(5) $ #noindent;所以，原方程的解集是 ${2 / 5 sqrt(5) \, thick - 2 / 5 sqrt(5)}$．

+ #numbered-align(($- 7 x^2 + 7$, $zws = 0$, false), ($- 7 x^2$, $zws = - 7$, [(移项变号)]), ($x^2$, $zws = 1$, [(两边除以 $- 7$)]), ($x$, $zws = plus.minus 1$, [(平方根的意义)]));

  即：$x_1 = 1\,quad x_2 = - 1$

  所以，原方程的解集是 ${ 1\,- 1 }$．

+ #numbered-align(($- 3 x^2$, $zws = 0$, false), ($x^2$, $zws = 0$, [(两边除以 $- 3$)]), ($x$, $zws = 0$, false));

  所以，原方程的解集是 ${ 0 }$．

+ #numbered-align(($2 x^2 + 5$, $zws = 0$, false), ($2 x^2$, $zws = - 5$, [(移项变号)]), ($x^2$, $zws = - 5 / 2$, [(两边除以2)]));

  由于任何实数的平方，都不可能是负数，所以，原方程没有实数根，这时，我们就说，这个方程的解集是空集，记作 $nothing$．

]
#rmk[
空集就是不包含任何实数的集合，要注意与集合 ${ 0 }$ 是根本不同的．

]
通过以上例题，可以归纳出：方程 $a x^2 + c = 0 thick\(a eq.not 0\)$ 的解法步骤是：

#blk[][
#block[
#set enum(numbering: enum-at(1, "I."))
+ 把原方程变形为：$ x^2 = - c / a $

+ 根据平方根的意义，得出：

  #block[
  #set enum(numbering: enum-at(2, "1."))
  + 当 $- c / a > 0$ 时，$x = plus.minus sqrt(- c / a)$

    原方程的解集是 ${sqrt(- c / a) \, thick - sqrt(- c / a)}$

  + 当 $- c / a = 0$ 时，$x = 0$.原方程的解集是 ${ 0 }$．

  + 当 $- c / a < 0$ 时，原方程没有实数根，即解集是空集 $nothing$．
  ]
]

]
其中，当 $- c / a = 0$ 时，由 $x^2 = 0$ 得出 $x = 0$,我们为了统一和方便，常常也看成“两个相同的根”，并叫做原方程的二重根．但写成解集时，仍记作 ${ 0 }$，而不写成 ${ 0\,thick 0 }$．

#exercise[
解下列方程：

#cols(2)[
+ $9 x^2 = 0$

+ $25 x^2 - 9 = 0$

+ $- 256 x^2 + 144 = 0$

+ $5 x^2 - 7 x - 7 = 3 x^2 - 7 x + 1$

+ $2 x^2 = 3$

+ $3 x^2 + 2 = 0$

+ $\(x - 1\)^2 = 4$

+ $\(x + 1\)^2 = 1$

]
]
#example[
解下列方程：$ \(1 - x\)^2 = 9\,#h(2em) 4\(1 + 2 x\)^2 = 49 $

]
#analyze[
如果把方程中括号内的部分，看成一个整体，那么就可以先求出这一个整体的值，然后再去求出其中的未知数 $x$ 的值．

]
#solution[
+ #numbered-align(($\(1 - x\)^2$, $zws = 9$, false), ($\(1 - x\)$, $zws = plus.minus 3$, [(平方根的意义)]));

  即：$1 - x = + 3$ 或 $1 - x = - 3$

  因而，$x = - 2$ 或 $x = 4$

  $therefore quad$ 原方程的解集是 ${ - 2\,4 }$．

+ #numbered-align(($4\(1 + 2 x\)^2$, $zws = 49$, false), ($\(1 + 2 x\)^2$, $zws = 49 / 4$, [(两边除以4)]), ($1 + 2 x$, $zws = plus.minus 7 / 2$, [(平方根的意义)]));

  即：$1 + 2 x = + 7 / 2$ 或 $1 + 2 x = - 7 / 2$

  因而，$x = 5 / 4$ 或 $x = - 9 / 4$

  $therefore quad$ 原方程的解集是 ${5 / 4 \, thick - 9 / 4}$．

]
由例3.27,我们又可以归纳出：如果遇到 $a\(x + m\)^2 + c = 0$ 的一元二次方程，那么可以把 $\(x + m\)$ 看成一个整体，先求出 $\(x + m\)= plus.minus sqrt(- c / a) quad (- c / a gt.eq 0)$ 再进一步求出 $x = - m plus.minus sqrt(- c / a)$．

#exercise[
解下列方程：

#cols(2)[
+ $\(x - 2\)^2 = 16$

+ $\(5 - 2 x\)^2 = 4$

+ $9\(50 - x\)^2 = 36$

+ $1 / 3\(2 x - 3\)^2 = 25$

+ $125 = 5 (x + 1 / 2)^2$

+ $1 / 6\(sqrt(2) x + 1\)^2 = 2$

]
]
==== $a x^2 + b x = 0 thick\(a eq.not 0\)$ 的解法
对于方程 $a x^2 + b x = 0 thick\(a eq.not 0\)$,可以先运用数系运算通性中的分配律，把它变形为 $ \(a x + b\)x = 0 $ #noindent;然后，再利用零的运算特性，就可以得出：$ a x + b = 0 #h(2em) upright("或") #h(2em) x = 0 $ #noindent;这是因为：如果两个因数的乘积为0,那么，这两个因数中至少有一个是0．

因而，就可以进一步解出 $x$ 的值来．

#example[
解方程 $x^2 - 4 x = 0$．

]
#solution[
#numbered-align(($x^2 - 4 x$, $zws = 0$, false), ($\(x - 4\)x$, $zws = 0$, [(分配律)]));

$ x - 4 = 0 #h(2em) upright("或") #h(2em) x = 0 $ #noindent;即：$x_1 = 4\,quad x_2 = 0$．

$therefore quad$ 原方程的解集是 ${ 4\,thick 0 }$．

]
#example[
解方程 $5 x^2 + 3 x = 0$．

]
#solution[
$ 5 x^2 + 3 x & = 0\
\(5 x + 3\)x & = 0 $ #noindent;因而，$5 x + 3 = 0 #h(2em) upright("或") #h(2em) x = 0$

即：$x_1 = - 3 / 5\,#h(2em) x_2 = 0$

$therefore quad$ 原方程的解集是 ${- 3 / 5 \, thick 0}$．

]
由此，可归纳出：方程 $a x^2 + b x = 0 thick\(a eq.not 0\)$ 的解法步骤是：

#blk[][
#block[
#set enum(numbering: enum-at(1, "I."))
+ 利用分配律变形为 $ \(a x + b\)x = 0 $

+ 由零的运算特性可知 $ a x + b = 0 #h(2em) upright("或") #h(2em) x = 0 $

+ 原方程的解为 $ x_1 = - b / a\,#h(2em) x_2 = 0 $ #noindent;即解集是 ${- b / a \, thick 0}$．
]

]
这里要指出，解方程 $a x^2 + b x = 0$ 的过程，就是把它转化为解两个一元一次方程，其转化方法，就是利用数系运算通性，把方程左边化成两个因数的乘积形式，这种把高次方程转化为低次方程；把新问题转化为旧问题的解题思想是很重要的，必须很好掌握．

从这里还可以看出，方程 $a x^2 + b x = 0 thick\(a eq.not 0\)$ 总有一个根是0,也就是说，#strong[常数项 $c = 0$ 的一元二次方程，必有一个根是零]．

#exercise[
+ 解下列方程：

  #cols(2)[
  + $x^2 - 5 x = 0$

  + $3 x - x^2 = 0$

  + $4 x^2 + 6 x = 0$

  + $2 / 5 x = - 3 x^2$

  + $x^2 + 1 / 7 x = 0$

  + $x^2 + sqrt(2) x = 0$

  + $sqrt(5) x = 7 x^2$

  + $sqrt(2) x^2 - sqrt(3) x = 0$

  + $sqrt(2) / 2 x^2 + 1 = 1 - sqrt(2) x$

  ]

+ 把下列方程中括号内的部分，看为一个整体，先求出它的值，然后再求解：

  #cols(2)[
  + $\(x + 1\)^2 - 3\(x + 1\)= 0$

  + $\(x - 2\)^2 + 1 / 2 x - 1 = 0$

  + $3\(3 - 5 x\)^2 = 2\(3 - 5 x\)$

  + $2\(x + sqrt(2)\)^2 - x - sqrt(2) = 0$

  ]

]
#example[
解方程 $x^2 - 6 x = 0$

]
#analyze[
除用上述方法解这个特殊的一元二次方程外，还可以利用等式性质，把它设法转化成 $\(x plus.minus m\)^2 = n$ 的形式，先求出整体 $\(x plus.minus m\)$,进而求出 $x$ 的值．

]
#solution[
#numbered-align(($x^2 - 6 x$, $zws = 0$, false), ($x^2 - 6 x + 9$, $zws = 9$, [(两边加上9)]), ($\(x - 3\)^2$, $zws = 9$, false), ($x - 3$, $zws = plus.minus 3$, [(平方根的意义)]));

即：$x - 3 = + 3 quad upright("或") quad x - 3 = - 3$

$therefore quad x_1 = 6\,#h(2em) x_2 = 0$

所以，原方程的解集为 ${ 6\,0 }$．

]
#exercise[
用例3.30的方法，解下列方程：

#cols(2)[
+ $x^2 + 4 x = 0$

+ $x^2 - 2 sqrt(2) x = 0$

+ $- 2 x^2 = 3 x$

+ $5 x^2 - 4 x = 0$

]
]
=== 一般的一元二次方程的解法------配方法
对于一般一元二次方程 $a x^2 + b x + c = 0 thick\(a eq.not 0\)$,我们将先从本章一开始所提出的应用问题入手，利用图形直观地说明“配方法”的想法和解决问题的具体做法．从而归纳出它的一般解法来．

由应用题所列出的方程是：$x^2 + 4 x = 32$.其中 $x$ 是所求长方形的宽，32是长方形的面积．如图3.8所示，这个长方形可以理解为：是由一个边长为 $x$ 的正方形与一个边长为 $x\,4$ 的小长方形组合而成的．

这时，我们可以如图3.9所示，把 $4 times x$ 的小长方形平分为两个 $2 times x$ 的更小长方形，再把其中带阴影的一个移至正方形 $x times x$ 的下方．这样，原来长方形就变成了⿸形，但面积仍为32$upright(m)^2$．

#grid(columns: (1fr,) * 2, align: center + bottom, figure([#fig("3-14");], caption: []), figure([#fig("3-15");], caption: []));

如果我们把右下方补上一个边长为2的小正方形，如图3.10所示，那么，就可以得到一个边长为 $\(x + 2\)$ 的大正方形．这个正方形的面积比原来的长方形面积多了 $2^2 = 4$.

#figure([#fig("3-16");

  ],
  caption: [
  ]
)

也就是说，由原来所列的方程式 $x^2 + 4 x = 32$,就变形成为：$ x^2 + 4 x + 2^2 & = 32 + 2^2\
\(x + 2\)^2 & = 36\
x + 2 & = plus.minus 6 $ #noindent;即 $x + 2 = + 6 quad upright("或") quad x + 2 = - 6$

$therefore quad x_1 = 4\,quad x_2 = - 8$

显然，$x = - 8$ 不符合题意，应舍去．

所以，长方形的宽为4m，长为8m．

通过解决这个应用问题，启发我们：对一元二次方程，可以配成完全平方后，再去求解．上例中，通过画图直观了解到，对于二次项系数是一的一元二次方程要配成完全平方，只要利用等式性质，方程两边同时加上#strong[一次项系数一半的平方数]，就可以了．

#example[
用配成完全平方的方法，解方程：$ x^2 + 3 x = 40\,#h(2em) 2 x^2 + 3 x - 5 = 0 $

]
#solution[
+ $x^2 + 3 x = 40$ 的两边同加一次项系数3的一半的平方数 $(3 / 2)^2$，就得到：

  #numbered-align(($x^2 + 3 x + (3 / 2)^2$, $zws = 40 + (3 / 2)^2$, false), ($(x + 3 / 2)^2$, $zws = 169 / 4$, false), ($x + 3 / 2$, $zws = plus.minus 13 / 2$, [(平方根的定义)]));

  即：$x + 3 / 2 = + 13 / 2 quad upright("或") quad x + 3 / 2 = - 13 / 2$

  $therefore quad x_1 = 5\,#h(2em) x_2 = - 8$

  $therefore quad$ 原方程的解集是 ${ 5\,thick - 8 }$．

+ 先将二次项系数化简成为1,并将方程写成 $x^2 + p x + q = 0$ 的形式．两边同除以2,得 $ x^2 + 3 / 2 x - 5 / 2 = 0 $ #noindent;其次，就可按1题的解法去求解：

  #numbered-align(($x^2 + 3 / 2 x$, $zws = 5 / 2$, [(移项)]), ($x^2 + 3 / 2 x + (3 / 4)^2$, $zws = 5 / 2 + (3 / 4)^2$, [(配方)]), ($(x + 3 / 4)^2$, $zws = 49 / 16$, false), ($x + 3 / 4$, $zws = plus.minus 7 / 4$, [(平方根意义)]));

  即：$x + 3 / 4 = + 7 / 4 quad upright("或") quad x + 3 / 4 = - 7 / 4$

  $therefore quad x_1 = 1\,#h(2em) x_2 = - 5 / 2$

  $therefore quad$ 原方程的解集是 ${1 \, thick - 5 / 2}$．

]
必须指出，上述例题的解法中，最关键的一步，就是“方程两边同加上一次项系数一半的平方数”，使方程左边成为一个完全平方形式．因此，这种方法，就叫做#strong[配方法]．

#example[
用配方法解下列各方程：

#cols(2)[
+ $x^2 - 8 x + 9 = 0$

+ $2 x^2 + 3 x - 6 = 0$

+ $4 x^2 + 4 x + 1 = 0$

+ $x^2 + 4 x + 7 = 0$

]
]
#solution[
+ #numbered-align(($x^2 - 8 x + 9$, $zws = 0$, false), ($x^2 - 8 x$, $zws = - 9$, [(移项)]), ($x^2 - 8 x +\(- 4\)^2$, $zws = - 9 +\(- 4\)^2$, [(配方)]), ($\(x - 4\)^2$, $zws = 7$, false), ($x - 4$, $zws = plus.minus sqrt(7)$, [(平方根的意义)]));

  $therefore quad x_1 = 4 + sqrt(7)\,#h(2em) x_2 = 4 - sqrt(7)$

  $therefore quad$ 原方程的解集是 ${4 + sqrt(7) \, thick 4 - sqrt(7)}$

+ #h(0pt)
  $ 2 x^2 + 3 x - 6 & = 0\
  x^2 + 3 / 2 x & = 6 / 2\
  x^2 + 3 / 2 x + (3 / 4)^2 & = 3 + (3 / 4)^2\
  (x + 3 / 4)^2 & = 57 / 16\
  x + 3 / 4 & = plus.minus sqrt(57) / 4 $ #noindent;$therefore quad x_(1\,2) = - 3 / 4 plus.minus sqrt(57) / 4$

  $therefore quad$ 原方程的解集是 ${frac(- 3 + sqrt(57), 4) \, thick frac(- 3 - sqrt(57), 4)}$

+ #h(0pt)
  $ 4 x^2 + 4 x + 1 & = 0\
  \(2 x + 1\)^2 & = 0\
  2 x + 1 & = 0 $ #noindent;$therefore quad x_1 = x_2 = - 1 / 2$ (二重根)

  $therefore quad$ 原方程的解集是 ${- 1 / 2}$

+ #h(0pt)
  $ x^2 + 4 x + 7 & = 0\
  x^2 + 4 x + 2^2 & = - 7 + 2^2\
  \(x + 2\)^2 & = - 3 $ #noindent;显然，$x$ 取任何实数时，都不可能使 $\(x + 2\)^2$ 的值等于 $- 3$.因此，这个方程无实数根．

  $therefore quad$ 原方程的解集是空集 $nothing$．

]
通过以上各例，我们可以说：配方法是对于任何一个一元二次方程都行之有效的通用解法，其主要步骤是：

#blk[][
#block[
#set enum(numbering: enum-at(1, "I."))
+ 用二次项系数去除方程两边，使二次项系数变成1.并将原方程化为 $x^2 + p x + q = 0$ 的形式．

+ 移项，把方程进一步化为 $x^2 + p x = - q$ 的形式．

+ 配方，方程两边同加上“一次项系数一半的平方数”，使方程左边成为完全平方形式：$ x^2 + p x + (p / 2)^2 = - q + (p / 2)^2 $ #noindent;即 $ (x + p / 2)^2 = p^2 / 4 - q $

+ 由平方根的意义，可知

  #block[
  #set enum(numbering: enum-at(2, "1."))
  + 当 $p^2 / 4 - q > 0$ 时，原方程有两个实数根：$x_1 = - p / 2 + sqrt(p^2 / 4 - q)$，$x_2 = - p / 2 - sqrt(p^2 / 4 - q)$．

  + 当 $p^2 / 4 - q = 0$ 时，原方程就有一个二重根：$x_1 = x_2 = - p / 2$．

  + 当 $p^2 / 4 - q < 0$ 时，原方程无实数根．
  ]
]

]
#exercise[
+ 填空：使等式两边相等．

  + $x^2 + 6 x +\(#h(2em) #h(2em)\)=\(x + #h(2em) #h(2em)\)^2$

  + $x^2 - x +\(#h(2em) #h(2em)\)=\(x - #h(2em) #h(2em)\)^2$

  + $x^2 + 3 x +\(#h(2em) #h(2em)\)=\(x + #h(2em) #h(2em)\)^2$

  + $x^2 -\(#h(2em) #h(2em)\)+ 121 / 4 =\(x - #h(2em) #h(2em)\)^2$

  + $x^2 + 3 / 5 x +\(#h(2em) #h(2em)\)=\(x + #h(2em) #h(2em)\)^2$

  + $x^2 + p x +\(#h(2em) #h(2em)\)=\(x + #h(2em) #h(2em)\)^2$

  + $x^2 + b / a x +\(#h(2em) #h(2em)\)=\(x + #h(2em) #h(2em)\)^2$

+ 用配方法解方程：

  #cols(2)[
  + $x^2 + 8 x = 33$

  + $x^2 - 7 x + 2 = 0$

  + $x^2 - x + 1 / 4 = 0$

  + $x^2 - 14 x + 24 = 0$

  + $2 x^2 - 5 x + 8 = 0$

  + $3 x^2 - 6 x + 2 = 0$

  + $x = 1 - 2 x^2$

  + $3 x^2 = -\(1 + 5 x\)$

  + $5 y - 84 + y^2 = 0$

  + $3 - 8 t + t^2 = 0$

  ]

+ 把方程中括号内看作一个整体．先求出这个整体，再求出方程的根来：

  + $\(x + 1\)^2 - 4\(x + 1\)+ 4 = 0$

  + $\(x - 2\)^2 - 4\(x - 2\)+ 3 = 0$

]
#example[
解方程 $\(2 x + 1\)\(x + 2\)+ 2 x - 18 = 0$

]
#solution[
#numbered-align(($\(2 x + 1\)\(x + 2\)+ 2 x - 18$, $zws = 0$, false), ($2 x^2 + 4 x + x + 2 + 2 x - 18$, $zws = 0$, [(去括号)]), ($2 x^2 + 7 x - 16$, $zws = 0$, [(合并)]), ($x^2 + 7 / 2 x$, $zws = 8$, [(两边除以2)]), ($x^2 + 7 / 2 x + (7 / 4)^2$, $zws = 8 + 49 / 16$, [(配方)]), ($(x + 7 / 4)^2$, $zws = 177 / 16$, false));

$therefore quad x + 7 / 4 = plus.minus sqrt(177) / 4$

$therefore quad x_(1\,2) = - 7 / 4 plus.minus sqrt(177) / 4$

$therefore quad$ 原方程的解集是 ${frac(- 7 + sqrt(177), 4) \, thick frac(- 7 - sqrt(177), 4)}$

]
#example[
证明：方程 $2 x^2 - 5 x + 7 = 0$ 没有实数根．

]
#proof[
把原方程变形为 $x^2 - 5 / 2 x = - 7 / 2$

配方后，得 $(x - 5 / 4)^2 = - 7 / 2 + 25 / 16$ 即：$ (x - 5 / 4)^2 = - 31 / 16 $

$because quad - 31 / 16 < 0 #h(2em) therefore quad$ 任何实数都不能使上边的等式成立．

$therefore quad$ 原方程没有实数根．

]
#exercise[
用配方法解方程：

+ $\(5 x + 1\)\(5 x - 1\)= 24 x$

+ $\(x + sqrt(2)\)^2 - 3\(sqrt(2) + x\)- 10 = 0$

]
=== 一元二次方程的求根公式
用配方法，同样可以求出一般的一元二次方程 $a x^2 + b x + c = 0 quad\(a eq.not 0\)$ 的根．具体作法如下：$ a x^2 + b x + c = 0 #h(2em)\(a eq.not 0\) $ #noindent;方程两边同除以二次项系数 $a$,得 $ x^2 + b / a x + c / a = 0 $ #noindent;把常数项 $c / a$ 改变符号后，移到方程右边，得 $ x^2 + b / a x = - c / a $

配方：两边同加上“一次项系数一半的平方数”，得 $ x^2 + b / a x + (frac(b, 2 a))^2 = - c / a + (frac(b, 2 a))^2 $ #noindent;整理后，得 $(x + frac(b, 2 a))^2 = frac(b^2 - 4 a c, 4 a^2)$

$because quad a eq.not 0\,#h(2em) therefore quad 4 a^2 > 0$

$therefore quad frac(b^2 - 4 a c, 4 a^2)$ 就与 $b^2 - 4 a c$ 取相同符号．

当 $b^2 - 4 a c gt.eq 0$ 时，$frac(b^2 - 4 a c, 4 a^2) gt.eq 0$,这时，由平方根的意义，不难得出 $ x + frac(b, 2 a) = plus.minus sqrt(frac(b^2 - 4 a c, 4 a^2)) $ #noindent;$therefore quad$ 原方程的根就是：$ x_(1\,2) = - frac(b, 2 a) plus.minus frac(sqrt(b^2 - 4 a c), 2 a) = frac(- b plus.minus sqrt(b^2 - 4 a c), 2 a) $

当 $b^2 - 4 a c < 0$ 时，$frac(b^2 - 4 a c, 4 a^2) < 0$,这时，就没有一个实数能使 $(x + frac(b, 2 a))^2 = frac(b^2 - 4 a c, 4 a^2)$ 成立．

$therefore quad$ 原方程没有实数根．

因此，我们可以归纳出：

#blk[][
一元二次方程 $a x^2 + b x + c = 0 quad\(a eq.not 0\)$ 的求根公式：当 $b^2 - 4 a c gt.eq 0$ 时，$ x_(1\,2) = frac(- b plus.minus sqrt(b^2 - 4 a c), 2 a) $

]
有了求根公式以后，解任何一元二次方程时，只要把它首先变形整理成为标准式，正确认定各项的系数，然后就可以直接代入求根公式，求出它的根来．

#example[
解下列方程：

#cols(2)[
+ $x^2 - 7 x + 6 = 0$

+ $2 x^2 + 3 x - 7 = 0$

+ $x^2 + 2 = 2 sqrt(2) x$

+ $1 / 2 x - 1 = 2 x^2$

]
]
#solution[
+ $x^2 - 7 x + 6 = 0$ 这里 $a = 1\,thick b = - 7\,thick c = 6$ $ b^2 - 4 a c = 49 - 24 = 25 > 0 $ #noindent;代入求根公式，得 $ x = frac(- b plus.minus sqrt(b^2 - 4 a c), 2 a) = frac(7 plus.minus sqrt(25), 2) = frac(7 plus.minus 5, 2) $ #noindent;$therefore quad x_1 = 6\,#h(2em) x_2 = 1$．

  $therefore quad$ 原方程的解集是 ${ 6\,thick 1 }$

+ $2 x^2 + 3 x - 7 = 0$ 这里 $a = 2\,thick b = 3\,thick c = - 7$ $ b^2 - 4 a c = 9 + 56 = 65 > 0 $ #noindent;代入求根公式，得 $ x = frac(- b plus.minus sqrt(b^2 - 4 a c), 2 a) = frac(- 3 plus.minus sqrt(65), 4) $ #noindent;$therefore quad x_1 = frac(- 3 + sqrt(65), 4)\,#h(2em) x_2 = frac(- 3 - sqrt(65), 4)$．

  $therefore quad$ 原方程的解集是 ${frac(- 3 + sqrt(65), 4) \, thick frac(- 3 - sqrt(65), 4)}$

+ $x^2 + 2 = 2 sqrt(2) x$ 先整理成标准式 $x^2 - 2 sqrt(2) x + 2 = 0$

  这里 $a = 1\,thick b = - 2 sqrt(2)\,thick c = 2$，$b^2 - 4 a c = 8 - 8 = 0$

  $therefore quad x = frac(- b plus.minus sqrt(b^2 - 4 a c), 2 a) = frac(2 sqrt(2) plus.minus 0, 2)$．即：$x_1 = x_2 = sqrt(2)$（二重根）

  $therefore quad$ 原方程的解集是 ${sqrt(2)}$

+ $1 / 2 x - 1 = 2 x^2$ 整理得 $2 x^2 - 1 / 2 x + 1 = 0$

  去分母，得：$4 x^2 - x + 2 = 0$ 这里 $a = 4\,thick b = - 1\,thick c = 2$ $ b^2 - 4 a c = 1 - 32 = - 31 < 0 $ #noindent;$therefore quad$ 原方程无实数根，解集是空集 $nothing$．

]
#exercise[
用求根公式解下列方程：

#cols(2)[
+ $2 x^2 + 7 x - 4 = 0$

+ $4 t^2 - 12 t + 9 = 0$

+ $x^2 + 2 x + 5 = 0$

+ $3 y^2 - 4 y = 0$

+ $7 x^2 - 3 = 0$

+ $9 1 / 2 x^2 = 0$

+ $2 + 5 x = 3 x^2$

+ $x^2 = 2 sqrt(3) x - 3$

+ $1 / 2 x^2 - x = 1 / 4$

+ $2 x^2 - 3 x + 4 = 0$

]
]
#example[
解下列方程: $ y\(10 + 3 y\)= - 3\,#h(2em) frac(x^2 - 2, 3) + x / 2 = x $

]
#solution[
+ $y\(10 + 3 y\)= - 3$，去括号、整理得：$3 y^2 + 10 y + 3 = 0$

  由求根公式，得：$ y = frac(- b plus.minus sqrt(b^2 - 4 a c), 2 a) = frac(- 10 plus.minus sqrt(100 - 36), 6) = frac(- 10 plus.minus 8, 6) $ #noindent;$therefore quad y_1 = - 1 / 3\,quad y_2 = - 3$

  $therefore quad$ 原方程的解集是 ${- 1 / 3 \, thick - 3}$

+ $frac(x^2 - 2, 3) + x / 2 = x$

  去分母，整理，得：$2 x^2 - 3 x - 4 = 0$

  $therefore quad x = frac(3 plus.minus sqrt(9 + 32), 4) = frac(3 plus.minus sqrt(41), 4)$

  $therefore quad$ 原方程的解集是 ${frac(3 + sqrt(41), 4) \, thick frac(3 - sqrt(41), 4)}$

]
#exercise[
解下列各方程：

#cols(2)[
+ $2 y\(3 - y\)+ 7 = 2 y$

+ $\(x + 1\)\(2 - 3 x\)= 5$

+ $5 t =\(t + 2\)\(t - 2\)- 1$

+ $\(2 x - 1\)\(x + 5\)- 6 x = 0$

+ $\(3 t - 4\)^2 = 2 t$

+ $3 x^2 + 2 x =\(x + 2\)^2$

+ $frac(8 x^2 - 3, 5) + frac(9 x^2 - 5, 4) = 2$

+ $x^2 / 3 + frac(7 x - 1, 4) + 1 / 2 = 0$

]
]
#example[
解下列方程：

+ $3\(x + 1\)^2 - 5\(x + 1\)= 2$

+ $y^2 -\(m + n\)y + m n = 0 quad\(m > n\)$

]
#solution[
+ $3\(x + 1\)^2 - 5\(x + 1\)= 2$ 把 $\(x + 1\)$ 看作一个整体．原方程可以看作是 $\(x + 1\)$ 的二次方程．整理以后，得 $ 3\(x + 1\)^2 - 5\(x + 1\)- 2 = 0 $

  可以利用求根公式，先求 $\(x + 1\)$ $ x + 1 = frac(5 plus.minus sqrt(25 + 24), 6) = frac(5 plus.minus 7, 6) $ #noindent;即：$x + 1 = 2 quad upright("或") quad x + 1 = - 1 / 3$

  $therefore quad x_1 = 1\,#h(2em) x_2 = - 1 1 / 3$

  $therefore quad$ 原方程的解集是 ${1 \, thick - 1 1 / 3}$

+ $y^2 -\(m + n\)y + m n = 0 quad\(m > n\)$ 这里 $m\,n$ 是已知数，因此可以看作：$ a = 1\,quad b = -\(m + n\)\,quad c = m n $ #noindent;代入求根公式，得 $ y & = frac(\(m + n\)plus.minus sqrt(\(m + n\)^2 - 4 m n), 2)\
   & = frac(\(m + n\)plus.minus sqrt(m^2 + 2 m n + n^2 - 4 m n), 2)\
   & = frac(\(m + n\)plus.minus sqrt(m^2 - 2 m n + n^2), 2)\
   & = frac(\(m + n\)plus.minus sqrt(\(m - n\)^2), 2)\
   & = frac(\(m + n\)plus.minus\(m - n\), 2) #h(2em)\(m > n\) $ #noindent;$therefore quad y_1 = frac(m + n + m - n, 2) = m\,quad y_2 = frac(m + n - m + n, 2) = n$

  $therefore quad$ 原方程的解集是 ${ m\,n }$．

]
#exercise[
解下列方程：

+ $2\(1 - 2 x\)^2 - 3\(1 - 2 x\)= 5$

+ $x^2 + 2 a x - 3 a^2 = 0 quad\(a > 0\)$

]
#example[
解方程：

+ $x^4 - 13 x^2 + 36 = 0$

+ $\(x^2 + 2\)^2 - 8\(x^2 + 2\)+ 15 = 0$

]
#solution[
+ $x^4 - 13 x^2 + 36 = 0$

  设 $x^2 = y$,则 $x^4 = y^2$，原方程就化为：$y^2 - 13 y + 36 = 0$．

  解这个一元二次方程，得 $ y = frac(13 plus.minus sqrt(169 - 144), 2) = frac(13 plus.minus 5, 2) $ #noindent;$therefore quad y_1 = 9\,#h(2em) y_2 = 4$ 把 $y_1\,y_2$ 分别代入原设，得：$ x^2 & = 9 quad arrow.r.double quad x = plus.minus 3\
  x^2 & = 4 quad arrow.r.double quad x = plus.minus 2 $ #noindent;$therefore quad$ 原方程的解集是 ${ 2\,3\,- 2\,- 3 }$．

+ $\(x^2 + 2\)^2 - 8\(x^2 + 2\)+ 15 = 0$

  设 $\(x^2 + 2\)= y$，原方程可化为：$y^2 - 8 y + 15 = 0$．

  $therefore quad y = frac(8 plus.minus sqrt(64 - 60), 2) = frac(8 plus.minus 2, 2)$ $ y_1 = 5\,#h(2em) y_2 = 3 $

  代入原设：$ x^2 + 2 & = 5 quad arrow.r.double quad x = plus.minus sqrt(3)\
  x^2 + 2 & = 3 quad arrow.r.double quad x = plus.minus 1 $ #noindent;$therefore quad$ 原方程的解集是 ${ 1\,sqrt(3)\,- 1\,- sqrt(3) }$．

]
在以上例题的解法中，所设的未知数 $y$ 叫做#strong[辅助未知数]，借助辅助未知数，可以把某些特殊的高次方程变成较低次的方程．这种方法，称为#strong[设辅助未知数法]．也叫#strong[换元法]．

#exercise[
用换元法解下列方程：

#cols(2)[
+ $x^4 - 6 x^2 + 5 = 0$

+ $3 x^4 - 4 x^2 + 1 = 0$

+ $x^4 - 8 x^2 + 16 = 0$

+ $x^4 + x^2 - 6 = 0$

]
#block[
#set enum(numbering: enum-at(1, none, start: 5))
+ $\(x^2 + 2 x\)^2 - 14\(x^2 + 2 x\)- 15 = 0$

+ $\(x^2 - x\)^2 - 4\(x^2 - x\)- 12 = 0$

+ $\(x^2 - x\)^2 - 4\(2 x^2 - 2 x - 3\)= 0$

+ $\(x^2 - 5 x\)^2 + 10 x^2 - 50 x + 24 = 0$
]

]
#example[
解方程 $3 x^3 - 4 x^2 + x = 0$

]
#solution[
由分配律，可把原方程化为：$ \(3 x^2 - 4 x + 1\)dot.op x = 0 $ #noindent;$therefore quad 3 x^2 - 4 x + 1 = 0 quad upright("或") quad x = 0$

解方程 $3 x^2 - 4 x + 1 = 0$，得：$x_1 = 1\,quad x_2 = 1 / 3$

$therefore quad$ 原方程的解集是 ${0 \, thick 1 \, thick 1 / 3}$

]
从这个例题的解法中可以看出，利用数系运算通性，可以把某些特殊的高次方程化为低次的方程求解．

#exercise[
解下列方程

#cols(2)[
+ $x^3 + 2 x^2 - x = 0$

+ $2 x^3 - 3 x^2 + 5 x = 0$

+ $x^4 - 5 x^2 = 0$

+ $3 x^4 + x^2 = 5 x^3$

]
]
#example[
解方程 $\(x - 1\)\(x - 2\)\(x - 3\)\(x - 4\)= 24$

]
#analyze[
这个方程显然是四次方程．而一般的四次方程我们是不会解的．但仔细观察这个方程，会发现它有某些特点，根据这些特点就可以利用换元法求出它的解来．它的特点是：

- 方程左边是四个一次式的乘积；

- 两个因式乘积就是2次的．

利用交换律、分配律进行变形，设法使两个二次式中含未知数的项相同，便于设辅助未知数．

由于 $ \(x - 1\)\(x - 4\) & = x^2 - 5 x + 4\
\(x - 2\)\(x - 3\) & = x^2 - 5 x + 6 $ #noindent;因此，可设辅助未知数 $y = x^2 - 5 x$．这样一来，就可以把原方程降为二次方程求解．

]
#solution[
$\(x - 1\)\(x - 2\)\(x - 3\)\(x - 4\)= 24$

利用交换律、分配律，可得 $ \[\(x - 1\)\(x - 4\)\]dot.op\[\(x - 2\)\(x - 3\)\] & = 24\
\(x^2 - 5 x + 4\)\(x^2 - 5 x + 6\) & = 24 $

设 $y = x^2 - 5 x$,则方程可化为 $ \(y + 4\)\(y + 6\) & = 24\
y^2 + 10 y + 24 - 24 & = 0\
y^2 + 10 y & = 0\
y\(y + 10\) & = 0 $ #noindent;$therefore quad y_1 = 0\,#h(2em) y_2 = - 10$

代入原设，得 $x^2 - 5 x = 0 quad upright("或") quad x^2 - 5 x = - 10$

对于 $x^2 - 5 x = 0$，可得：$x_(1\,2) = frac(5 plus.minus 5, 2)$，即：$x_1 = 5\,quad x_2 = 0$

对于 $x^2 - 5 x = - 10$，由于 $b^2 - 4 a c = 25 - 40 < 0$，因此无实根．

$therefore quad$ 原方程的解集是 ${ 5\,thick 0 }$．

]
#exercise[
解下列方程：

+ $x\(x - 1\)\(x - 2\)\(x - 3\)= 3$

+ $\(x + 1\)\(x + 3\)\(x + 5\)\(x + 7\)= 384$

]
=== 一元二次方程根的判别式
在前面，我们用配方法已经讨论了一元二次方程 $a x^2 + b x + c = 0 quad\(a eq.not 0\)$ 的根的各种情形，即

- 当 $b^2 - 4 a c > 0$ 时，求得 $x_(1\,2) = frac(- b plus.minus sqrt(b^2 - 4 a c), 2 a)$；

- 当 $b^2 - 4 a c = 0$ 时，求得 $x_1 = x_2 = - frac(b, 2 a)$（重根）；

- 当 $b^2 - 4 a c < 0$ 时，方程无实数根．

由此可见，一元二次方程 $a x^2 + b x + c = 0 quad\(a eq.not 0\)$ 的根是不是存在，以及根的个数，都取决于 $b^2 - 4 a c$ 的符号．因而，我们就把 $b^2 - 4 a c$ 叫做一元二次方程 $a x^2 + b x + c = 0 quad\(a eq.not 0\)$ 的#strong[根的判别式]．记作 $ Delta = b^2 - 4 a c $

利用根的判别式，不必解出方程，就可以判断任一个一元二次方程是否有实数根，以及有什么样的实数根．这就是：

#blk[][
方程 $a x^2 + b x + c = 0 quad\(a eq.not 0\)$

- 当 $Delta = b^2 - 4 a c > 0$ 时，有两个不相等的实数根；

- 当 $Delta = b^2 - 4 a c = 0$ 时，有两个相等的实数根（重根）；

- 当 $Delta = b^2 - 4 a c < 0$ 时，没有实数根．

]
#example[
不解方程，判断下列方程根的情况：

+ $5 x^2 - 4 x - 3 = 0$

+ $2 x^2 + 3 = 2 sqrt(6) x$

+ $3 x^2 + 2 x + 1 = 0$

]
#solution[
+ $5 x^2 - 4 x - 3 = 0$

  $because quad Delta = b^2 - 4 a c =\(- 4\)^2 - 4 times 5 times\(- 3\)= 76 > 0$

  $therefore quad$ 此方程有两个不相等的实数根．

+ $2 x^2 + 3 = 2 sqrt(6) x$

  整理成标准式：$2 x^2 - 2 sqrt(6) x + 3 = 0$

  $because quad Delta = b^2 - 4 a c =\(- 2 sqrt(6)\)^2 - 4 times 2 times 3 = 0$

  $therefore quad$ 此方程有两个相等的实数根（重根）．

+ $3 x^2 + 2 x + 1 = 0$

  $because quad Delta = b^2 - 4 a c = 2^2 - 4 times 3 times 1 = - 8 < 0$

  $therefore quad$ 此方程没有实数根．

]
#example[
$k$ 取什么值时，方程 $4 x^2 -\(k + 2\)x +\(k - 1\)= 0$

+ 有一个实数根是 $- 1$；

+ 有两个相等的实数根．

]
#solution[
+ 因为方程已知有一个根是 $- 1$,所以把 $x = - 1$ 代入原方程，应使方程两边的值相等，即 $4 times\(- 1\)^2 -\(k + 2\)times\(- 1\)+\(k - 1\)= 0$ 是成立的．

  整理这个等式，得 $2 k + 5 = 0$，即：$k = - 5 / 2$．

  $therefore quad$ 当 $k = - 5 / 2$ 时，原方程有一个根 $- 1$．

+ $because quad$ 当 $Delta = 0$ 时，原方程才能有两个相等的实数根，而在这里 $ Delta & =\[-\(k + 2\)\]^2 - 4 dot.op 4\(k - 1\)\
   & = k^2 + 4 k + 4 - 16 k + 16\
   & = k^2 - 12 k + 20 $ #noindent;$therefore quad$ 令 $Delta = 0$,即 $k^2 - 12 k + 20 = 0$．

  从中就可以解出 $k$ 的取值，$k_1 = 2\,#h(2em) k_2 = 10$．

  所以，当 $k = 2$ 或 $k = 10$ 时，原方程有两个相等的实数根．

]
#exercise[
+ 不必解方程，判断下列方程的根的情况：

  #cols(2)[
  + $6 x^2 - 5 x - 4 = 0$

  + $1 / 4 x^2 - 3 x + 9 = 0$

  + $2 x^2 + 4 x + 35 = 0$

  + $7 x^2 - m x - 1 = 0$

  ]

+ $m$ 取什么值时，下列方程有重根？有零根？

  + $m x^2 + 3 x +\(m - 1\)= 0 quad\(m eq.not 0\)$

  + $4 x^2 +\(m + 1\)x + m = 0$

]
#example[
证明：$m$ 取任意实数时，方程 $x^2 - m x + m - 4 = 0$ 一定有两个不相等的实数根．

]
#proof[
当 $Delta = b^2 - 4 a c > 0$ 时，方程 $a x^2 + b x + c = 0 quad\(a eq.not 0\)$ 才能有两个不相等的实数根．

而这里的 $a = 1$, $b = - m$, $c = m - 4$,且 $ Delta & =\(- m\)^2 - 4 times 1 times\(m - 4\)\
 & = m^2 - 4 m + 16\
 & = m^2 - 4 m + 4 + 12\
 & =\(m - 2\)^2 + 12 $

又：当 $m$ 取任意实数时，$\(m - 2\)^2$ 总是非负值．

$therefore quad\(m - 2\)^2 + 12$ 一定是正数，即：$Delta =\(m - 2\)^2 + 12 > 0$

因此，当 $m$ 取任何实数时，$Delta > 0$,方程 $x^2 - m x + m - 4 = 0$ 一定有两个不相等的实数根．

]
#exercise[
证明下列各题：

+ $n$ 为任何实数时，方程 $x^2 + n x - 1 = 0$ 必有两个不相等的实数根．

+ 方程 $\(2 m^2 + 1\)x^2 - 2 m x + 1 = 0$ 没有实数根．

]
#heading(level: 2, numbering: none, supplement: [toc-sub])[习题3.3]

+ 解下列方程

  #cols(2)[
  + $7 x^2 = 0$

  + $355 / 113 x^2 = 0$

  + $x^2 - 36 = 0$

  + $x^2 = 625$

  + $x^2 - 3 = 0$

  + $x^2 - 15 = 0$

  + $1 / 4 - x^2 = 0$

  + $x^2 - 20 = 100$

  + $x^2 + 12 = 0$

  + $9 x^2 - 144 = 0$

  + $1 / 3 = 3 x^2$

  + $18 - 1 / 2 x^2 = 0$

  + $2 x^2 = 8$

  + $10 - 2 x^2 = 0$

  + $25 x^2 - 3 = 0$

  + $12 x^2 - 2 / 3 = 0$

  + $- 18 x^2 + 8 = 0$

  + $24 x^2 + 81 = 0$

  ]

+ 解下列方程

  #cols(2)[
  + $\(x - 3\)^2 = 5$

  + $\(x - 2\)^2 - 15 = 0$

  + $\(x + 5\)^2 = 3$

  + $- 4 / 25 = -\(3 y + 2\)^2$

  + $(x - 5 / 2)^2 - 1 / 4 = 0$

  + $1 / 6\(2 x + 1\)^2 = 2$

  ]

+ 解下列方程

  #cols(2)[
  + $x^2 + 6 x = 0$

  + $x\(x - 5\)= 0$

  + $13 x = x^2$

  + $3 x - x^2 = 0$

  + $4 x^2 - 7 x = 0$

  + $2 x^2 + 7 x = 3 x$

  + $\(2 x + 1\)\(2 x - 1\)= 0$

  + $m x^2 + n x = 0\,quad\(m eq.not 0\)$

  + $x^2 / 6 = x / 4$

  + $x^2 - sqrt(81) = 0$

  + $sqrt(3) x^2 = x$

  + $sqrt(2) (x^2 - x) = 1 / sqrt(2) (x^2 + x)$

  ]

+ 解下列方程

  #cols(2)[
  + $2\(x + 1\)^2 +\(x + 1\)= 0$

  + $5 x\(x - 3\)^2 + 3 = x$

  + $4 (x - 1 / 2)^2 - 3 x = frac(- 3, 2)$

  + $sqrt(2)\(x + sqrt(3)\)^2 - x / 2 - sqrt(3) / 2 = 0$

  ]

+ 解下列方程，其中 $m\,n$ 都是已知数．

  + $\(x + m\)^2 = 36$

  + $\(m - x\)^2 = 4$

  + $\(n x + 2\)^2 - 9 = 0 quad\(n eq.not 0\)$

  + $\(m x + n\)^2 = A quad\(m eq.not 0\,thick A > 0\)$

  + $\(x - n\)^2 - sqrt(2)\(x - n\)= 0$

  + $m\(x + 2\)^2 + n\(x + 2\)= 0 quad\(m eq.not 0\,thick n eq.not 0\)$

+ 配上适当的数，使下列各题都能写成二项代数和的完全平方．

  #cols(2)[
  + $x^2 - 4 x$

  + $x^2 + 10 x$

  + $x^2 + 3 x$

  + $x^2 - 1 / 2 x$

  + $3 x^2 + x$

  + $5 x^2 - 2 x$

  + $x^2 + b x$

  + $a x^2 + x$

  + $x^2 + b / a x$

  ]

+ 用配方法解下列各方程

  #cols(2)[
  + $5 x^2 - 2 x = 0$

  + $3 x^2 - 6 = 0$

  + $x^2 + 8 x - 33 = 0$

  + $x^2 - 14 x + 24 = 0$

  + $x^2 - 4 x + 5 = 0$

  + $x^2 + 8 x + 15 = 0$

  + $2 x^2 - 3 x - 4 = 0$

  + $3 x^2 + x - 3 = 0$

  + $6 x^2 + x - k = 0$

  + $x^2 + p x + q = 0$

  + $x^2 + sqrt(2) x + 1 / 2 = 0$

  + $x^2 - sqrt(3) x + 1 = 0$

  ]

+ 求下列方程的根（用配方法）

  #cols(2)[
  + $\(x - 3\)^2 - 4\(x - 3\)- 45 = 0$

  + $\(3 x + 1\)\(3 x - 1\)= 8 x$

  + $\(2 x + 1\)^2 + 2 / 3 x + 5 / 3 = 0$

  + $\(x - sqrt(3)\)^2 + 2\(x - sqrt(3)\)+ 1 = 0$

  ]

+ 用求根公式解下列方程

  #cols(2)[
  + $x^2 + 3 x - 4 = 0$

  + $x^2 - 10 x + 16 = 0$

  + $x^2 - 3 x = 10$

  + $x^2 - 7 x = - 2$

  + $x^2 - 4\(x + 1\)= 0$

  + $x^2 + 10 x + 18 = 0$

  + $8 x^2 + 2 x - 3 = 0$

  + $2 x^2 + 3 x - 1 = 0$

  + $8 x^2 - 189 x - 72 = 0$

  + $2 x^2 + 15 x + 25 = 0$

  + $x^2 + 2 x + 2 = 0$

  + $x^2 + 1 / 2 = 0$

  + $2 / 5 x^2 - 3 / 5 x = 1$

  + $x^2 - 20 x + 81 = 0$

  + $sqrt(2) x^2 - x - 1 / sqrt(2) = 0$

  + $x^2 + 2 sqrt(3) x + 3 = 0$

  ]

+ 选择适当方法，解下列方程

  #cols(2)[
  + $x^2 = 8 x - 12$

  + $3 + x^2 = 7 x$

  + $x^2 - 14 x + 100 = 51$

  + $x^2 + 15 x = 594$

  + $2 x^2 - 2 sqrt(2) x - 5 = 0$

  + $sqrt(2) y^2 + 4 sqrt(3) y = 2 sqrt(2)$

  + $x^2 + 2\(sqrt(3) + 1\)x + 2 sqrt(3) = 0$

  + $\(3 - x\)^2 + x^2 = 9$

  ]

+ 解下列方程

  #cols(2)[
  + $\(x - 3\)\(x - 4\)= 13$

  + $2\(x + 8\)=\(x + 5\)\(x + 4\)$

  + $\(3 x - 1\)\(x + 2\)= 20$

  + $- x\(x + 4\)= 2\(x - 4\)$

  ]
  #block[
  #set enum(numbering: enum-at(2, none, start: 5))
  + $10\(x + 2\)+ 19 =\(5 x - 1\)\(1 + 5 x\)$

  + $\(x - 7\)\(x + 3\)+\(x - 1\)\(x + 5\)= 102$

  + $\(x + 5\)\(200 - 5 x\)= x\(200 - 5 x\)+ x\(x + 5\)$
  ]

+ 解下列方程

  + $2\(x - 1\)^2 = x^2 - 1$

  + $\(x + 2\)^2 +\(x - 2\)= 8\(x^2 + 1\)$

  + $\(x + 5\)^2 +\(x - 2\)^2 +\(x - 7\)\(x + 7\)= 11 x + 30$

  + $\(2 x + 1\)^2 +\(x - 2\)^2 -\(2 x + 1\)\(x - 2\)= 43$

  + $3 t + frac(\(t - 3\)^2, 4) = frac(\(t + 2\)^2, 8) + frac(\(t + 1\)\(t - 1\), 3)$

  + $frac(\(t + 3\)^2, 5) + 1 - frac(\(3 t - 1\)^2, 5) = frac(t\(2 t - 3\), 2)$

  + $frac(\(y + 3\)^2, 8) - y = frac(y + 3, 4) - frac(y - 1, 2)$

+ 解下列方程（用换元法)

  #cols(2)[
  + $\(x + 2\)^2 - 3\(x + 2\)+ 1 = 0$

  + $\(y + 1\)^2 + 2 y + 3 = 0$

  + $x^4 - 5 x^2 + 4 = 0$

  + $(x^2 + x)^2 - 4 x^2 - 4 x = 5$

  + $\(x + 1\)^4 - 10\(x + 1\)^2 + 9 = 0$

  ]

+ 解下列特殊的高次方程

  + $x^3 + 2 x^2 - 5 x = 0$

  + $2 x^3 - 2 x^2 - x = 0$

  + $(x + x^2)^3 - 2 (x + x^2)^2 - (x + x^2) = 0$

  + $\(x + 2\)\(x + 3\)\(x - 4\)\(x - 5\)= 44$

  + $\(2 x^2 - x + 1\)\(2 x^2 - x - 3\)= 5$

+ $x$ 取什么值时，$x^2 - 2 x - 3$ 的值才能：

  #cols(3)[
  + 等于零；

  + 等于 $- 4$；

  + 等于 $- 5$．

  ]

+ $k$ 取何值时，下列方程有两个相等的实数根？

  #cols(2)[
  + $k x^2 - 12 x + 4 = 0$

  + $4 x^2 -\(k + 2\)x + k - 1 = 0$

  + $\(x - 1\)^2 = k x$

  + $x^2 - 15 = 2 k\(x - 4\)$

  ]
  #block[
  ]

+ $k$ 取何值时，方程 $2 x^2 +\(k - 9\)x + k^2 + 3 k + 4 = 0$ 有两个相等实根？有一个等于0的根？

+ $t$ 取何值时，

  + 方程 $x^2 - t x + 9 = 0$ 有重根？

  + 方程 $t x^2 - 20 x + 5 = 0$ 有重根？

  + 方程 $t x^2 - 8 x + t = 0$ 有重根？

+ 在下列条件下，求 $t\,k\,p\,q$ 的值

  + 方程 $x^2 + 3 x + t = 0$ 有一个根是 $- 1$,

  + 方程 $3 x^2 + 5 x - k^2 + 1 = 0$ 有一个根是1,

  + 方程 $x^2 + p x + q = 0$ 有两个根 $3\,5$.

+ 证明：

  + 方程 $m x^2 +\(m + n\)x + n / 2 = 0 quad\(m eq.not 0\)$ 必有两个不相等的实数根．

  + 方程 $\(m^2 + 1\)x^2 - 2 m x +\(m^2 + 4\)= 0$ 无实数根．

  + 如果方程 $a x^2 + b x + c = 0 quad\(a eq.not 0\)$ 有零根，那么一定有 $c = 0$．

== 解应用问题
许多应用题的解决，往往要归结为解一元二次方程．本节将举例说明如何运用一元二次方程的工具，解决实际应用问题．

#example[
把108张画片平均分给若干儿童．已知每人分得的张数比儿童人数少3,试问：有几个儿童？每个人分得画片几张？

]
#solution[
设儿童有 $x$ 人，则每人分得的画片就为 $\(x - 3\)$ 张．

依题意可知：$ x\(x - 3\) & = 108\
x^2 - 3 x - 108 & = 0 $

再由求根公式可以知道，$ x = frac(3 plus.minus sqrt(9 + 432), 2) = frac(3 plus.minus 21, 2) $ #noindent;$therefore quad x_1 = 12\,quad x_2 = - 6$

$x$ 是儿童人数，不能为负值，所以 $x = - 6$ 不合题意，应舍去，只取 $x = 12$；$x - 3 = 9$．

答：共有儿童12人，每人分画片9张．

]
#exercise[
+ 40张桌子按相同的数目排成若干行，已知每一行的桌子数比总行数多3．试求这些桌子一共排了几行？

+ 有一个正数和比它大1的另一个数．在求这两个数的乘积时，有人竟粗心的求成了这个正数与比它小1的另一个数的乘积，结果得了一个错误答数132．试问：原数是多少？并求出正确的乘积是多少？

]
#example[
把60cm长的铁丝作成一个长方形的模型，要使这个长方形的面积是

#cols(3)[
+ 200$upright(c m)^2$

+ 225$upright(c m)^2$

+ 250$upright(c m)^2$

]
它的长、宽各应等于多少cm？

]
#figure([#fig("3-17");

  ],
  caption: [
  ]
)

#solution[
设长方形的长为 $x$cm，则它的宽就为 $(60 / 2 - x) =\(30 - x\)$cm．

依题意可以分别得出：

+ $x\(30 - x\)= 200 quad arrow.r.double quad x^2 - 30 x + 200 = 0$

  $therefore quad x = frac(30 plus.minus sqrt(900 - 800), 2) = frac(30 plus.minus 10, 2)$

  $therefore quad x_1 = 20\,quad x_2 = 10$

  - 当 $x = 20$ 时，$30 - x = 10$

  - 当 $x = 10$ 时，$30 - x = 20$（不合题意，舍去）

  答：长20cm、宽10cm的长方形，面积才能是200$upright(c m)^2$，周长60cm．

+ $x\(30 - x\)= 225 quad arrow.r.double quad x^2 - 30 x + 225 = 0$

  $therefore quad x = frac(30 plus.minus 0, 2) = 15$

  答：长、宽都取15cm的正方形（长方形的特例），面积是225$upright(c m)^2$,周长60cm．

+ $x\(30 - x\)= 250 quad arrow.r.double quad x^2 - 30 x + 250 = 0$

  $because quad Delta = 900 - 1000 = - 100 < 0$

  $therefore quad$ 这个方程没有实数根．

  答：要用60cm长的铁丝，围成面积是250$upright(c m)^2$ 的长方形是不可能的．

]
#exercise[
+ 从正方形的铁片上，截去2cm宽的一条长方形，余下的面积是48$upright(c m)^2$．问：原来的正方形铁片的面积是多少？

+ 边长为10m的正方形，把各边增加相同的长度后，面积是625$upright(m)^2$，问：边长增加了多少m？

+ 体积是160$upright(c m)^3$ 的长方体，它的高是5cm，而它的长是宽的五倍．试求它的长、宽各是多少？

]
#example[
如图3.12,在直角三角形 $A B C$ 中，直角边 $A C$ 长6cm, $B C$ 长12cm．现在有 $P$、$Q$ 两个动点分别从 $A$、$C$ 同时出发，$P$ 点沿 $A C$ 以每秒1cm的速度向 $C$ 移动；$Q$ 点沿 $C B$ 以每秒2cm的速度向 $B$ 移动．

试问：$P$、$Q$ 移动到第几秒钟时，$triangle.stroked.t P C Q$ 的面积是8$upright(c m^2)$?

]
#figure([#align(center)[
  #fig("3-18");

  ]],
  caption: [
  ]
)

#solution[
设 $P$、$Q$ 同时移动到 $x$ 秒时，$triangle.stroked.t P C Q$ 的面积是8$upright(c m^2)$．由题意可知：$ 1 / 2 times 2 x\(6 - x\)= 8 quad arrow.r.double quad x^2 - 6 x + 8 = 0 $ #noindent;$therefore quad x = frac(6 plus.minus sqrt(36 - 32), 2) = frac(6 plus.minus 2, 2) quad arrow.r.double quad x_1 = 4\,quad x_2 = 2$

经检验，两个解都符合题意．

答：$P$、$Q$ 两点同时由 $A$、$C$ 出发，移动到2秒时，或4秒时，$triangle.stroked.t P C Q$ 的面积都等于8$upright(c m^2)$．

]
#example[
某生产队的粮食产量，两年内从60万斤增加到79.35万斤，试问：平均每年增加百分之几？

]
#solution[
设平均每年增加 $x %$,则一年后的产量就是 $60\(1 + x %\)$ 万斤；两年后产量就应该是 $\[60\(1 + x %\)\]\(1 + x %\)$ 万斤．

依题意可得：$ 60\(1 + x %\)\(1 + x %\) & = 79.35\
60\(1 + x %\)^2 & = 79.35\
\(1 + x %\)^2 & = 1.3225\
1 + x % & = plus.minus 1.15\
x / 100 & = plus.minus 1.15 - 1\
x & = 100\(plus.minus 1.15 - 1\) $ #noindent;$therefore quad x_1 = 15\,quad x_2 = - 215$

显然，$x_2$ 不符合题意，应舍去．

答：平均每年增加15%．

这里讲的“平均每年增加的百分数”，通常都称为“年增长率”．

]
#exercise[
某工厂的产品，原来每件成本为300元，连续两次降低成本后，现在每件成本为192元，如果两次降低成本的百分数相同，求这个百分数．

]
#example[
一个容器内，装满了20升的纯酒精．第一次倒出若干升以后，用水加满；第二次又倒出同样升数的混合液，仍用水加满．这时，容器内还剩下5升纯酒精．试求：第一次倒出多少纯酒精？

]
#solution[
设第一次倒出纯酒精 $x$ 升．则，加水以后，第二次倒出 $x$ 升混合溶液中，应含有纯酒精 $(frac(20 - x, 20)) dot.op x$ 升．

依题意可以列出方程：$ 20 - x - (frac(20 - x, 20)) x = 5 $ #noindent;整理后，得 $x^2 - 40 x + 300 = 0$

$therefore quad x = frac(40 plus.minus sqrt(1600 - 1200), 2) = frac(40 plus.minus 20, 2) quad arrow.r.double quad x_1 = 30\,quad x_2 = 10$

显然，$x_1 = 30$ 不符合题意，应舍去．

答：第一次倒出纯酒精10升．

]
#exercise[
试求例3.48中，第二次应倒出多少纯酒精？照这样倒下去，再求一下第三次倒出多少纯酒精？

]
#heading(level: 2, numbering: none, supplement: [toc-sub])[习题3.4]

+ 一个数与自身的一半之积等于8,求这数．

+ 两个连续的奇数之积等于323,求这两奇数．

+ 两数之差为8,之积为128.求这两数之和．

+ 边长为10米的正方形，要使它的面积扩展到4倍．试求：正方形的边长要增加多少？

+ 现有正方形、长方形各一个，长方形的宽比正方形的边要短3cm,长方形的长却比正方形的边要多2cm.如果已知长方形的面积是36$upright(c m)^2$,那么，正方形的边长、面积各应是多少？

+ 从正方形木板上，锯下3cm宽的一个长方形，剩下的面积是10$upright(c m)^2$\.试求：正方形木板的面积是多少？

+ 有一张画的尺寸是12$times$18(分米），要在它的四周镶上一样宽的银边，如果银边的面积正好与画面相等．那么，银边应当有多宽？

+ 如图3.13所示，把长方形铁皮的四个角，各剪去一个边长为5cm的正方形，折起四边，就可以做成一个无盖盒子．如果这个盒子的容积是1500$upright(c m)^3$,长方形铁皮的长是宽的2倍．那么，这块长方形长、宽各多少？

  #figure([#fig("3-19");

    ],
    caption: [
    ]
  )

+ 已知一圆半径为10cm,而另有一小圆，它的面积等于已知圆的一半．试求这小圆的半径．

+ 一家工厂，前年年产量是1500吨，今年年产量是3000吨，试求：这家工厂这两年的平均增长率（百分数）．(精确到0.01)．

+ 某车间一月份产值100万元，第一季度总产值350万元．问：第一季度平均每月的产值增长百分之几？

+ 一个小组若干人，新年互送贺年片一张，已知全组共送贺年片72张．问：这个小组应有几个人？

+ 一个容积为64升的容器，装满了纯酒精，第一次倒出若干升以后，用水加满；第二次又倒出同样多的混合液后，用水再加满．这时，经过鉴定，容器中含有水15升．试求：第一次比第二次多倒出去多少纯酒精？

#heading(level: 2, numbering: none, outlined: false)[本章内容要点]

一、学习一元二次方程所必要的预备知识和概念：

+ 完全平方公式：$\(x plus.minus y\)^2 = x^2 plus.minus 2 x y + y^2$ 或称为二数和（或差）的平方公式．当 $x\,y$ 取正数时，这两个公式都可以用“画正方形”的方法加以验证．

+ 平方根的概念、性质及运算．

  如果 $x^2 = a\,thick\(a gt.eq 0\)$，那么 $x$ 就是 $a$ 的平方根，当 $a > 0$ 时，它有两个平方根，记作 $x = plus.minus sqrt(a)$．当 $a = 0$ 时，它有一个平方根，记作 $x = sqrt(0) = 0$．当 $a < 0$ 时，它的平方根无意义．

  正数的正平方根，叫做它的算术平方根，记作：$x = sqrt(a) thick\(a > 0\)$．

  零的算术根，仍然是0．

  对于算术平方根 $x = sqrt(a) thick\(a gt.eq 0\)$，有以下基本性质：

  + $\(sqrt(a)\)^2 = a #h(2em)\(a gt.eq 0\)$

  + $sqrt(x^2) =\|x\|= display(cases(x & quad x gt.eq 0, - x & quad x < 0))$

  算术平方根的运算法则：

  + $sqrt(a) dot.op sqrt(b) = sqrt(a b) quad\(a gt.eq 0\,thick b gt.eq 0\)$

    运用它，可以进行“因数移到根号里”和“因数移到根号外”的变形．

  + $sqrt(a) / sqrt(b) = sqrt(a / b) quad\(a gt.eq 0\,thick b > 0\)$

    运用分数的基本性质及算术平方根的基本性质，可以进行“有理化分母”的变形．

  + 把算术平方根化简（使被开方数的每个因数的指数小于2;分母有理化）以后，相同被开方数的算术根可以运用数系运算通性进行加、减运算．

+ 求一个数的平方根，可以查平方根表，也可以直接开平方，进行计算．

+ 实数．

  无限不循环小数，称为无理数．例如：$sqrt(2)\,thick - sqrt(3)\,thick pi\,thick e\,thick 0.01001000 dots.h.c$，等都是无理数．

  无理数与有理数，统称为实数．

  任一个非零实数 $a$,都有一个相反数 $- a$,且满足 $a +\(- a\)= 0$\;都有一个倒数 $1 / a$，且满足 $a dot.op 1 / a = 1$．

  实数的运算，同样具有运算通性．

二、一元二次方程的标准式是 $ a x^2 + b x + c = 0 #h(2em)\(a eq.not 0\) $ #noindent;它的解法有：

+ 配方法：关键是先化为二次项系数为1的形式，然后将方程“两边加上一次项系数一半的平方数”，使方程一边成为完全平方形式．$ x^2 + b / a x + c / a & = 0\
  x^2 + b / a x + (frac(b, 2 a))^2 & = (frac(b, 2 a))^2 - c / a\
  (x + frac(b, 2 a))^2 & = frac(b^2 - 4 a c, 4 a^2) $ #noindent;#numbered-eq($ x = frac(- b plus.minus sqrt(b^2 - 4 a c), 2 a) $);

+ 公式法------把方程化为标准式，找出各项系数 $a\,b\,c$，代入(3.4)就可以求出根．

+ 换元法------如果能把方程整理成如下形式 $ a\(x + m\)^2 + b\(x + m\)+ c = 0 #h(2em)\(a eq.not 0\) $ #noindent;那么，可以设 $\(x + m\)= y$,原方程化为 $ a y^2 + b y + c = 0 #h(2em)\(a eq.not 0\) $ #noindent;用求根公式先求出 $y$ 的值，然后再代入原设：$\(x + m\)= y$,进而求出原方程的根．

+ 对于 $b = 0$,或 $c = 0$,或 $b = c = 0$ 时的特殊一元二次方程，除以上一般解法外，还可以直接运用数系运算通性（特别是分配律）、平方根的意义等方法，求出方程的根．

三、利用一元二次方程，还可以解一些特殊的高次方程，其主要方法是换元法------设辅助未知数．通过换元，把高次转化为低次方程，从而可以由已知解法的低次方程，逐步达到求出未知的高次方程的根．本章我们所遇到过的有以下几种形式：

+ $a x^4 + b x^2 + c = 0 #h(2em)\(a eq.not 0\)$

  可设 $x^2 = y$,原方程化为 $a y^2 + b y + c = 0$．

+ $a\(m x^2 + n x\)^2 + b\(m x^2 + n x\)+ c = 0 #h(2em)\(a eq.not 0\)$

  可设 $m x^2 + n x = y$,原方程化为 $a y^2 + b y + c = 0$．

+ $a\(m x^2 + n x + p\)\(m x^2 + n x + q\)+ b = 0$

  可设 $m x^2 + n x = y$,原方程化为 $a\(y + p\)\(y + q\)+ b = 0$．

+ $a x^3 + b x^2 + c x = 0 #h(2em)\(a eq.not 0\)$

  用分配律：$\(a x^2 + b x + c\)x = 0$，把原方程可以化为两个低次方程求解，即：$a x^2 + b x + c = 0$ 或 $x = 0$

四、一元二次方程根的判别式：$ Delta = b^2 - 4 a c $ #noindent;这是判别任一个一元二次方程的根是否存在以及存在什么样的实数根的准绳．即

+ 当 $Delta > 0$ 时，$a x^2 + b x + c = 0$ 有两不等实根．

+ 当 $Delta = 0$ 时，$a x^2 + b x + c = 0$ 有两相等实根（重根）．

+ 当 $Delta < 0$ 时，$a x^2 + b x + c = 0$ 无实数根．

五、用一元二次方程解应用问题，其方法与主要步骤与第二章一次方程解应用题是一样的．其要点仍是：弄清题意，分析量与量之间的关系，引入未知数，列出方程式，这是解决问题的基础；进而解方程，得到实数解（或无解）．这是解决问题的关键；最后，还应检验所得解是否符合题意．舍去不合理的，留下符合题意的，写出答案．

#heading(level: 2, numbering: none)[复习题三]
+ 利用和的平方公式，你能推导出和的立方公式吗？即 $ \(a + b\)^3 =\(a + b\)^2 dot.op\(a + b\)= ? $

+ 用开平方方法，计算以下算术平方根：$ sqrt(0.7744)\,#h(2em) sqrt(9880.36)\,#h(2em) sqrt(100.4004) $

+ + 正方形的面积是55225$upright(m^2)$，试求它的边长是多少？

  + #staritem(1, depth: 2);长方体的体积是7500$upright(c m^3)$，长、宽、高的比是 $5 : 4 : 3$.试求长方体的长、宽、高各是多少？

+ 查表并计算：（用四位平方根表）

  + $sqrt(82340) - sqrt(8234)$

  + $sqrt(376.8) + sqrt(37.68) - sqrt(3.678)$

+ 举例说明：

  + 在无理数范围内，加、减、乘、除四则运算是“不封闭”的．

  + 在实数范围内，开方运算并不是通行无阻的．

+ #staritem(6);$x\,y$ 取什么样的实数时，下列各式才能成为恒等式：

  #cols(2)[
  + $sqrt(x^2) / x = 1$

  + $sqrt(x^2) / x = - 1$

  + $frac(\|y\|, y) = 1$

  + $frac(sqrt(y^2), \|y\|) = 1$

  + $\|x - 1\|+ sqrt(y - 2) = 0$

  ]

+ 一个数的多少倍的平方根，才能等于它的平方根的10倍？

+ #staritem(8);一个正方形的面积增大为原来的2倍时，它的边长增大为原边长的多少倍？面积要增大3倍时，边长增大几倍？这样推下去，正方形的面积增大 $n$ 倍时，边长增加几倍？

+ $x$ 取什么值时，下列算术平方根有意义：$ sqrt(1 - x)\,#h(2em) sqrt(x - 2) dot.op sqrt(x)\,#h(2em) sqrt(\(x - 3\)^2) $

+ 试决定下列各算式的符号：$ sqrt(2) / 2 - sqrt(3) / 3\,#h(2em) sqrt(\(5 - a\)^2) - sqrt(\(a - 5\)^2) $

+ 计算：

  + $sqrt(45) - 1 / 5 sqrt(5) - 1 / 3 sqrt(20)$

  + $frac(3 sqrt(6), 2 sqrt(3)) - sqrt(128) + 2 sqrt(1 / 2) quad\(a > 5\)$

  + $5 sqrt(24) - 3 sqrt(1 1 / 2) - sqrt(54) - sqrt(24)$

  + $frac(sqrt(8), sqrt(5) dot.op sqrt(6))$

  + $(4 sqrt(3) - 3) (3 sqrt(2) + 5 sqrt(3)) - 1$

  + $frac(sqrt(5) + sqrt(6), sqrt(3)) + frac(2 sqrt(3) - 5 sqrt(10), sqrt(5))$

  + $(6 sqrt(3 / 2) - 3 sqrt(1 / 2)) - (3 sqrt(2 / 3) - 1 / 3 sqrt(18))$

  + $sqrt(1 / 2) + sqrt(45) - sqrt(12.5) - 0.5 sqrt(200) + sqrt(242) + 6 sqrt(1 1 / 8) - sqrt(245)$

+ 计算：

  + $(5 sqrt(5) - 5)^2 - (5 sqrt(5) - 1)^2$

  + $frac(12 - sqrt(3), 2 sqrt(6)) - sqrt(6) + (5 sqrt(3) - 3 sqrt(8))^2$

  + $(frac(- 1 - sqrt(3), 2))^2 - (frac(- 1 + sqrt(3), 2))^2$

  + $(1 / 2 sqrt(1 / 2) - 3 / 2 sqrt(1 / 3) + 5 / 4 sqrt(4 / 5)) div 8 / 15 sqrt(1 / 8)$

+ 先配方，再证明：

  + $x$ 取任何实数时，$x^2 + 12 x + 40$ 总是正值．

  + $x$ 取任何实数时，$x^2 - 16 x + 65$ 总不小于1．

+ 解下列一元二次方程：

  + $2 x^2 + 3 x - 1 = 0$

  + $2 t^2 + 1 = 4 t$

  + $3 / 2 y^2 + 4 y = 1$

  + $x^2 + 6000 x - 4 times 10^7 = 0$

  + $\(x + 1\)\(x - 1\)= 2 sqrt(2) x$

  + $(x / a - 1)^2 = (x / b + 1)^2 quad\(a^2 eq.not b^2\)$

  + $1 / 2 {1 / 2 [1 / 2 (1 / 2 x^2 + 2) + 2] + 2} = 2$

  + $x - 7 + frac(\(x - 6\)^2, 2) = frac(\(x + 4\)^2, 2) - frac(\(x + 2\)\(x + 6\), 2)$

+ 解下列方程：

  + $x^2 - 2 a x = m^2$

  + $m x^2 + 1 = x + m quad\(m > 1 / 2\)$

  + $\(x + a\)\(x - a\)= 1$

  + $x^2 - a x - b x + a^2 / 4 + b^2 / 4 = 0$

+ 用换元法解下列高次方程：

  + $x^4 - 6 x^2 = 0$

  + $2 x^4 - 19 x^2 + 9 = 0$

  + $sqrt(3)\(x^2 - x\)^2 = sqrt(2)\(x^2 - x\)$

  + $\(6 x^2 - 7 x\)^2 - 2\(6 x^2 - 7 x\)- 3 = 0$

  + $\(2 x^2 - 1\)^4 -\(2 x^2 - 1\)^2 = 0$

  + $x (x - sqrt(3)) (x - 2 sqrt(3)) (x - 3 sqrt(3)) = 216$

  + $\(x^2 + 5 x + 4\)\(x^2 + 5 x + 6\)- 120 = 0$

+ 已知一元二次方程 $7 x^2 + m x + n = 0$ 有两个根 $2$, $- 3 / 7$，试求 $m\,n$ 的值．

+ $x$ 取何值时，

  + $x^2 - 6 x + 5$ 的值等于0？

  + $x^2 - 6 x + 5$ 的值等于 $- 4$？

  + $x^2 - 6 x + 5$ 的值与 $x + 1$ 的值相等？

+ $m$ 取何值时，

  + 方程 $3 x^2 - 2\(3 m + 1\)x + 3 m^2 - 1 = 0$ 有一个根是0？

  + 方程 $3 x^2 - 2\(3 m + 1\)x + 3 m^2 - 1 = 0$ 能有重根？

+ $k$ 为何值时，

  + 方程 $k x^2 - 12 x + 4 = 0$ 有重根？

  + 方程 $\(a + 2\)x^2 - 2 a k x + k = 0$ 有重根？（$a$ 为已知数且 $a eq.not - 2$）．

+ 已知方程 $x^2 - a x + 2 a = 0$ 的一个根是1，

  + 试求 $a$ 的值，

  + 求另一个根．

+ 已知方程 $a x^2 + b x + c = 0$ 与方程 $x^2 - 1 = 0$ 有一个公共根，试求：$a\,b\,c$ 之间的关系．

+ 已知方程 $2 x^2 + 2\(a + b\)x + a^2 + b^2 = 0$ 有重根，且 $a\,b$ 为实数，求证：$a = b$．

+ 今有四个连续整数，已知其中最小的数与其中最大的数之积等于这四个数之和，试求这四个数．

+ 数字和是8的两位数，乘以它的两位数字交换位置后所得的另一个两位数，等于1855．试求这个两位数．

+ 有一个长方形场地，长比宽多4米．现在要环绕这个长方形四周，修建一条宽2米的道路，使这条环形道所占的面积与这个场地的面积相等．试求：这个长方形场地的面积．

+ 要在长2.4m，宽2m的长方形中间，挖去一块面积是1.92$upright(m^2)$ 的小长方形，使剩下的长方环形四周都一样宽．试求这个宽度？

+ 甲、乙两块长方形地里，共植树416棵，甲地比乙地多植树196棵，如果两块地里所植树木的排数都是比行数少1．试求：甲、乙两块地里各种几排，几行？

+ 20公升纯酒精正好装满一个木桶，倒出若干公升以后，用水加满；再倒出同样多的混合液以后，再用水加满．这时，木桶中的水正好是全桶的 $3 / 4$．

  试求：第一次、第二次各倒出纯酒精多少公升？

+ #staritem(30);试试看：

  + 把一元二次方程 $a x^2 + b x + c = 0 thick\(a eq.not 0\)$ 的两个根（在 $b^2 - 4 a c gt.eq 0$ 时）相加，你能得到什么结论？举例验证你的结论．

  + 再把两根相乘，又能得到什么结论？再举例验证你的结论．

+ #staritem(31);试求 $p\,q$ 为何值时，一元二次方程 $x^2 + p x + q = 0$ 的根也等于 $p$ 和 $q$？

  提示：由于 $ display(cases(p^2 + p^2 + q = 0, q^2 + p q + q = 0)) $ #noindent;即：

  #numcases($$, $q = - 2 p^2$, $q\(q + p + 1\)= 0$);

  将(3.5)代入(3.6)得：$p^2\(2 p^2 - p - 1\)= 0$．

  解出 $p$ 的值代入(3.5)，可求出相应的 $q$ 值．

  经检验，得：$p_1 = 0\,quad q_1 = 0\,quad p_2 = 1\,quad q_2 = - 2$

  还有 $p_3 = - 1 / 2\,quad q_3 = - 1 / 2$,但不符合题意，应舍去．
