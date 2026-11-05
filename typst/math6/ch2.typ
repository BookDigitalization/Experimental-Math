// 由 typst/tools/tex2typ.py 从 math6/2.tex 转换而来，已人工校对的部分以本文件为准。
#import "../common/template.typ": *
#import "figs.typ": fig

= 排列与组合~~二项式定理
== 排列与组合
=== 加法原理和乘法原理
假如我们要从甲地到乙地，可以乘火车、轮船或公共汽车，火车每天有两班，轮船有两班，公共汽车有六班，问从甲地到乙地有多少种不同的方法？

因为，从甲地到乙地，乘火车有两种不同的方法，乘轮船有两种不同的方法，乘公共汽车有六种不同的方法. 而每种方法都可以由甲地到达乙地，因此，从甲地到乙地共有 $2 + 2 + 6 = 10$ 种不同的方法.

一般地说，有如下原理：

#blk[加法原理][
如果完成某件事有 $n$ 种方式，在第一种方式中有 $m_1$ 种方法，在第二种方式中有 $m_2$ 种方法……，在第 $n$ 种方式中有 $m_n$ 种方法. 那么完成这件事共有 $m_1 + m_2 + dots.h.c + m_n$ 种不同的方法.

]
又假如，要从甲地到丙地，必须经过乙地，现在已知由甲地到乙地有三条道路，由乙地到丙地有两条道路（图2.1），问从甲地到丙地共有多少种不同的走法？

#figure([#fig("2-01");

  ],
  caption: [
  ]
)

因为从甲地到乙地有3种不同的走法，到乙地后又各有两种不同的走法到丙地，因此，从甲地到丙地共有 $3 times 2 = 6$ 种不同的走法.

一般地说，有如下原理：

#blk[乘法原理][
如果完成某种事需要分成 $n$ 个步骤，第一步骤有 $m_1$ 种方法，第二步骤有 $m_2$ 种方法……，第 $n$ 步骤有 $m_n$ 种方法，那么完成这件事共有 $m_1 dot.op m_2 thin dots.h.c thin m_n$ 种不同的方法.

]
总的来说，如果完成一种事有几种不同的方法，这些方法又是互不相关的，任选一种方法都能完成这件事的，那么完成这件事的方法的总数，应该用加法计算. 如果完成一件事，必须分成若干步骤，每个步骤又有不同的方法，而且每一步骤中的一种方法完成之后，都可以开始下一步骤的工作，依次完成全部步骤，才能达到完成这一件事的目的，那么完成这件事的方法的总数应该用乘法计算.

#exercise[
+ 完成某件工作，甲有两种不同的方法，乙有3种不同方法，丙有4种不同方法．从三人中选一人完成这件工作，共有几种不同选法？

+ 一种车床用两个手柄联合控制转速，一个手柄有两档，另一个手柄有3档，问能控制几种不同的转速？

+ 乘积 $\(a + b\)dot.op\(c + d + e\)dot.op\(m + n + p + q\)$ 展开后共有多少项？

+ 从甲地到乙地有一条道路，从乙地到丁地有两条道路；从甲地到丙地有三条道路，从丙地到丁地有四条道路. 若从甲地到丁地必须经过乙地或丙地，问从甲地到丁地共有多少种不同的走法？

]
=== 排列
一般地说，从 $n$ 个不同的元素中任意选取 $m thick\(m lt.eq n\)$ 个元素，按照一定的顺序排成一列，叫做从 $n$ 个元素中取出 $m$ 个元素的一个排列.

例如：由 $1\,2\,3$ 三个数字中选取两个数字写成两位数，那么 $1\,2\,3$ 都被看作是排列的元素。而12与21显然都是由 $1\,2$ 两个元素得到的不同的排列．同样，12，21，13，31，23，32等都被认为是不同的排列．只有用相同的元素，又是按相同的顺序排列而成的排列，才叫做相同的排列，例如：123与123就是相同的排列．

#example[
由数字1,2,3,4可以组成多少个没有重复数字的两位数？

]
#solution[
要排出两位数，第一步先要排出十位上的数字（当然也可以先排个位上的数字），第二步是确定个位上的数字.

显然，第一步在十位的位置上，$1\,2\,3\,4$ 都可以放，故有四种不同的方法.

第二步是放个位上的数字，由于在第一步结束时，剩下的只有3个数字，因此第二步只能有3种不同的选择．因此个位与十位上的数的排列工作都结束后，这个两位数才算排出来，所以，用乘法原理计算得：$4 times 3 = 12$⁠．即以 $1\,2\,3\,4$ 可以排出12个不同的两位数．

]
#align(center)[
#fig("2-02");

]
#example[
$a\,b\,c\,d$ 四个元素，每次取出三个元素的不同排列有多少种，并写出所有的排列.（在同一排列里，元素不能重复出现.）

]
#solution[
要把取出的三个元素排成一列，要分三步完成. 第一步先在第一个位置上放一个元素，应该有四种不同的方法；第二步要在第二个位置上放一个元素，由于第一步的工作完成后剩下的是三个元素，从三个元素中选一个放在第二个位置上应有3种不同的方法；第三步要在第三个位置上放一个元素，由于前两步工作完成后只剩下两个元素，所以只有两种不同的方法. 三步工作都完成后才完成排列工作，因此应该用乘法原理计算排列的总数，所以共有：$4 times 3 times 2 = 24$ 种不同的排列．即有如下的24种不同的排列：

#align(center)[
#table(
  columns: (auto, auto, auto, auto, auto, auto,),
  align: (center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon,),
  [$a b c$],
  [$a b d$],
  [$a c b$],
  [$a c d$],
  [$a d b$],
  [$a d c$],
  [$b a c$],
  [$b a d$],
  [$b c a$],
  [$b c d$],
  [$b d a$],
  [$b d c$],
  [$c a b$],
  [$c a d$],
  [$c b a$],
  [$c b d$],
  [$c d a$],
  [$c d b$],
  [$d a b$],
  [$d a c$],
  [$d b a$],
  [$d b c$],
  [$d c a$],
  [$d c b$],
);

]
]
一般地说，从 $n$ 个不同元素中，任取 $m$ 个 $\(m lt.eq n\)$ 元素（不许重复），按照一定顺序排成一列的个数，叫做从 $n$ 个不同元素中取出 $m$ 个元素的排列数，用符号表示 $upright(P)_n^m$.

#blk[定理1][
从 $n$ 个不同元素中，任取 $m$ 个 $\(m lt.eq n\)$ 没有重复的元素的排列数为 $upright(P)_n^m = n\(n - 1\) thin dots.h.c thin \(n - m + 1\)$

]
#proof[
在取出 $m$ 个元素排成一列时，首先在第一个位置上可以选 $n$ 个元素中的任何一个，故有 $n$ 种方法. 在第二个位置上可以选余下的 $n - 1$ 个元素中的任一个．如此类推，在第 $m$ 个位置上可以选余下的 $n -\(m - 1\)$ 个元素中的任一个. 根据乘法原理得到总的不同排列数应该是 $ upright(P)_n^m = n\(n - 1\) thin dots.h.c thin \(n - m + 1\) $

这里的 $n$, $m$ 是自然数，并且 $m lt.eq n$, 这个公式就叫做排列数公式.

]
特别是当 $m = n$ 时有 $ upright(P)_n^n = n\(n - 1\) thin dots.h.c thin 3 dot.op 2 dot.op 1 $ #noindent;这表示，$n$ 个不同的元素全部取出参加排列的排列数，叫做 $n$ 个不同元素的全排列，自然数1到 $n$ 的连乘积叫做 $n$ 的阶乘，用 $n !$ 表示，所以全排列数公式又可以写成 $ upright(P)_n^n = n ! $ #noindent;有了阶乘，排列数公式又可以写成 $ upright(P)_n^m = frac(n !, \(n - m\)!) $ #noindent;这里，当 $m = n$ 时，分母出现 $\(n - m\)!$ 就变成 $0 !$⁠，为了使公式仍能成立，我们特别规定 $0 ! = 1$.

例如 $upright(P)_8^5 = 8 dot.op 7 dot.op 6 dot.op 5 dot.op 4 = 6720$⁠，$upright(P)_5^5 = 5 ! = 5 dot.op 4 dot.op 3 dot.op 2 dot.op 1 = 120$

#example[
试证明下列等式成立．

#cols(2)[
#block[
#set enum(numbering: enum-at(1, "(1)"))
+ $upright(P)_n^m + m dot.op upright(P)_n^(m - 1) = upright(P)_(n + 1)^m quad\(m lt.eq n\)$

+ $upright(P)_(n + 1)^(n + 1) - upright(P)_n^n = n^2 dot.op upright(P)_(n - 1)^(n - 1)$
]

]
]
#proof[
#block[
#set enum(numbering: enum-at(1, "(1)"))
+ #h(0pt)
  $ upright(P)_n^m + m dot.op upright(P)_n^(m - 1) & = frac(n !, \(n - m\)!) + m dot.op frac(n !, \(n - m + 1\)!)\
   & = frac(\(n - m + 1\)dot.op n ! + m dot.op n !, \(n - m + 1\)!) = frac(\(n + 1\)dot.op n !, \(n - m + 1\)!)\
   & = frac(\(n + 1\)!, \[\(n + 1\)- m\]!) = upright(P)_(n + 1)^m $ #noindent;所以原等式成立.

+ #h(0pt)
  $ upright(P)_(n + 1)^(n + 1) - upright(P)_n^n & =\(n + 1\)! - n ! =\(n + 1\)dot.op n ! - n !\
   & = n dot.op n ! = n^2 dot.op\(n - 1\)!\
   & = n^2 dot.op upright(P)_(n - 1)^(n - 1) $ #noindent;所以原等式成立.
]

]
#example[
用0到9十个数字，可以写出多少个没有重复数的三位数？其中有多少个是偶数？

]
#solution[
#block[
#set enum(numbering: enum-at(1, "(1)"))
+ 第一步，因为0不能放在百位的位置上，所以百位上的数有9种不同的选法，

  第二步是从余下的九个数字中任选两个数字放在十位个位上，这有 $upright(P)_9^2$ 种方法. 所以 $ 9 dot.op upright(P)_9^2 = 9 dot.op 9 dot.op 8 = 648 $

+ 要得到三位偶数，必须个位上的数是0, 2, 4, 6或8．但是0又不能排在百位上，这说明0怎样放在适合的位置上是比其他问题要求更高的. 所以我们还是把0元素的题先解决.

  第一类，0放在个位上这一选法确定后，其余百位、十位可以从余下的九个数字中任选两个数字放上去，这有 $upright(P)_9^2$ 种方法.

  第二类，个位上可放2,4,6,8中的任一个，在这类方法中，第一步在个位上有4种选法，第二步，在百位上可以放除0以外所余的八个数字的任一个，故有八种选择方法．第三步，余下的八个数字均可以放在十位上，所以 $ upright(P)_9^2 + 4 times 8 times upright(P)_8^1 = 72 + 256 = 328 $
]

#noindent;答：有648个没有重复数字的三位数，其中有328个是偶数.

]
关于例2.4中的第一个问题，我们还可以有如下的解法：

从0到9十个数字中任选三个数字排列总数为 $upright(P)_10^3$⁠．但是其中0在百位上的数有 $upright(P)_9^2$ 个. 所以 $ upright(P)_10^3 - upright(P)_9^2 = 10 dot.op 9 dot.op 8 - 9 dot.op 8 = 648 $

#exercise[
+ 写出从 $a\,b\,c\,d\,e$ 中任取两个不同元素的所有排列.

+ #block(sticky: true)[计算：]

  #cols(3)[
  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + $upright(P)_7^3$

  + $upright(P)_15^3$

  + $upright(P)_4^4$

  + $upright(P)_8^4 - 3 dot.op upright(P)_8^2$

  + $upright(P)_7^3 - 5 upright(P)_7^2$

  + $upright(P)_12^7 / upright(P)_11^6$
  ]

  ]

+ 求证：

  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + $n ! = frac(\(n + 1\)!, n + 1)$

  + $upright(P)_n^m = frac(upright(P)_(n + 2)^(n + 2), upright(P)_(n + 2)^2 dot.op upright(P)_(n - m)^(n - m)) quad\(m lt.eq n\)$
  ]

+ 某一段铁路共有8个车站，需要为这段铁路印制多少种不同的客车票？（都是普通座位票）

+ 6个同学排成一列，有多少种不同的排法？

+ 从12人的1个学习小组中，选1个正组长和1个副组长，问有多少种不同的选法？

+ 用0至5共六个数字，可以组成多少不同的三位数？

+ 用0到9这十个数字，其中有多少个没有重复数字的二位数，其中有多少个二位奇数？

+ 某信号兵用红、黄、蓝三面旗子从上到下挂在竖直的旗杆上表示信号，每次可以任挂一面、二面或三面，并且不同的顺序表示不同的信号，问一共可以表示多少种不同的信号？

+ 有五道不同的工序分配给五个工人工作，其中有一个工人不会做其中两道工序，问有多少种不同的分配法？

+ 由2, 3, 4, 5所组成的没有重复数字的四位数，

  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + 求所有这些四位数里各个数字的和；

  + 求所有这些四位数的和。
  ]

]
=== 组合
我们知道，从一个学习小组中选出正、副组长各1人，这种选法是排列问题. 如果改变为从一个学习小组中选出代表2人参加学校的学代会，有多少种不同的选法？这时的代表无所谓正、副之分，就无先后顺序的意义了，也就不成为排列的问题了.

又例如从1, 2, 3, 4, 5五个数选出两个数字相乘，问有多少个不同的乘积？那么只要所选出的数字是3和5；它们的积只有15，至于是 $5 times 3$ 还是 $3 times 5$⁠，那是不要求加以区别的，也是没有排列次序的区别的.

一般地说，从 $n$ 个不同的元素中，任取 $m thick\(m lt.eq n\)$ 个元素并成一组，叫做从 $n$ 个不同元素中取出 $m$ 个元素的一个组合.

这里要注意，元素 $a$⁠，$b$⁠，$c$ 的组合与 $a\,c\,b$\; $c\,a\,b$\; $b\,a\,c$\; $b\,c\,a$ 或 $c\,b\,a$ 都被看作是相同的组合了. 对于排列来说，上列的是六个不同的排列，而对于组合来说，只算是一个组合，那么组合数是怎样进行计算的呢？

从 $n$ 个不同元素中取出 $m thick\(m lt.eq n\)$ 个元素的所有组合的个数，叫做从 $n$ 个不同元素中取出 $m$ 个元素的组合数，用符号 $upright(C)_n^m$ 表示。

例如，从四个不同元素中取出3个元素进行排列，有多少种不同的排法？

我们已经知道应该有 $upright(P)_4^3 = 24$ 种不同的排法，现在我们想从另外的方法入手解决这个问题.

第一步，从 $a\,b\,c\,d$ 中取三个元素作一组，这样可以得到 $a\,b\,c$\; $a\,b\,d$\; $a\,c\,d$\; $b\,c\,d$ 四个组，这就是说 $upright(C)_4^3 = 4$.

第二步，把每组的三个元素作全排列，应有 $upright(P)_3^3$ 个不同排列.

根据乘法原理得 $upright(P)_4^3 = 4 dot.op upright(P)_3^3$⁠，即 $upright(P)_4^3 = upright(C)_4^3 dot.op upright(P)_3^3$.

又如，从五个不同的元素中取出2个元素的排列数是 $upright(P)_5^2$. 如果我们从五个不同元素中取出两个分成一组，我们可以组成如下的小组：

$a\,b$\; $a\,c$\; $a\,d$\; $a\,e$\; $b\,c$\; $b\,d$\; $b\,e$\; $c\,d$, $c\,e$ 和 $d\,e$ 等10个组，这就是 $upright(C)_5^2$⁠；第二步把每组元素进行全排列应是 $upright(P)_2^2$⁠，这样应该有 $upright(P)_5^2 = upright(C)_5^2 dot.op upright(P)_2^2$. 因此，一般地说，从 $n$ 个不同元素中取出 $m thick\(m lt.eq n\)$ 个元素的排列数 $upright(P)_n^m$ 可以等于 $upright(C)_n^m dot.op upright(P)_m^m$.

#blk[定理2][
从 $n$ 个不同元素中任取 $m$ 个（$m lt.eq n$⁠）没有重复元素组合数为 $upright(C)_n^m = frac(n !, m !\(n - m\)!)$.

]
#proof[
由 $upright(P)_n^m = upright(C)_n^m dot.op upright(P)_m^m$⁠，所以 $ upright(C)_n^m = upright(P)_n^m / upright(P)_m^m = frac(frac(n !, \(n - m\)!), m !) = frac(n !, m !\(n - m\)!) $

]
注意：$upright(C)_n^m = frac(n\(n - 1\) thin dots.h.c thin \(n - m + 1\), m !)$

#example[
计算 $upright(C)_8^3$, $upright(C)_8^5$ 和 $upright(C)_9^2$

]
#solution[
根据组合数公式有：$ upright(C)_8^3 & = frac(8 times 7 times 6, 3 times 2 times 1) = 56\
upright(C)_8^5 & = frac(8 times 7 times 6 times 5 times 4, 5 times 4 times 3 times 2 times 1) = 56\
upright(C)_9^2 & = frac(9 times 8, 2 times 1) = 36 $

]
组合数有以下性质：

#blk[性质1][
$ upright(C)_n^m = upright(C)_n^(n - m) $

]
#proof[
根据组合数公式：$ upright(C)_n^m & = frac(n !, m !\(n - m\)!)\
upright(C)_n^(n - m) & = frac(n !, \(n - m\)!\[n -\(n - m\)\]!) = frac(n !, m !\(n - m\)!) $ #noindent;所以 $upright(C)_n^m = upright(C)_n^(n - m)$.

]
#blk[性质2][
$ upright(C)_(n + 1)^m = upright(C)_n^m + upright(C)_n^(m - 1) $

]
#proof[
根据组合数公式：$ upright(C)_(n + 1)^m & = frac(\(n + 1\)!, m !\(n - m + 1\)!)\
upright(C)_n^m + upright(C)_n^(m - 1) & = frac(n !, m !\(n - m\)!) + frac(n !, \(m - 1\)!\(n - m + 1\)!)\
 & = frac(\(n - m + 1\)dot.op n ! + m dot.op n !, m !\(n - m + 1\)!) = frac(n ! dot.op\(n - m + 1 + m\), m !\(n - m + 1\)!)\
 & = frac(\(n + 1\)!, m !\(n - m + 1\)!) $ #noindent;所以 $upright(C)_(n + 1)^m = upright(C)_n^m + upright(C)_n^(m - 1)$.

]
为了使性质1在 $n = m$ 时也能成立，我们规定 $upright(C)_n^0 = 1$.

#example[
计算 $upright(C)_100^98$ 和 $upright(C)_10^2 + upright(C)_10^3 + upright(C)_11^2 + upright(C)_12^2$

]
#solution[
根据组合数性质1 $ upright(C)_100^98 = upright(C)_100^(100 - 98) = upright(C)_100^2 = frac(100 times 99, 2 times 1) = 4950 $ #noindent;根据组合数性质2 $ upright(C)_10^2 + upright(C)_10^3 + upright(C)_11^2 + upright(C)_12^2 & = upright(C)_11^3 + upright(C)_11^2 + upright(C)_12^2\
 & = upright(C)_12^3 + upright(C)_12^2 = upright(C)_13^3\
 & = frac(13 times 12 times 11, 3 times 2 times 1) = 286 $

]
#example[
解不等式 $upright(C)_n^3 > upright(C)_n^5$

]
#solution[
$ frac(n\(n - 1\)\(n - 2\), 3 times 2 times 1) > frac(n\(n - 1\)\(n - 2\)\(n - 3\)\(n - 4\), 5 times 4 times 3 times 2 times 1) $ #noindent;因为 $5 lt.eq n$⁠，所以 $n\,thick n - 1\,thick n - 2\,thick n - 3\,thick n - 4$ 均为正数，所以 $ 1 > frac(\(n - 3\)\(n - 4\), 5 times 4) $ #noindent;整理得：$n^2 - 7 n - 8 < 0$

解不等式得：$- 1 < n < 8$⁠，根据题意，得：$n = 5\,6\,7$.

]
#example[
高中三个年级，每个年级有六个班。

#block[
#set enum(numbering: enum-at(1, "(1)"))
+ 每级都进行单循环（每班都与级内其他各班比赛一场）篮球预赛，问预赛需要比赛多少场？

+ 从各级预赛中选出每级的冠、亚军，再进行单循环决赛，规定在预赛中已经比赛过的队不再比赛，问决赛需要比赛多少场？
]

]
#solution[
#block[
#set enum(numbering: enum-at(1, "(1)"))
+ 根据题意每个级单循环比赛的场次都是 $upright(C)_6^2$⁠，所以 $ 3 upright(C)_6^2 = 3 times 15 = 45 $

+ 决赛共6个班，如果单循环要比赛 $upright(C)_6^2$ 场，但预赛中比赛过的有3场，所以 $ upright(C)_6^2 - 3 = 15 - 3 = 12 $
]

#noindent;答：预赛要比赛45场，决赛要比赛12场.

]
#example[
平面有10个不同的点，其中除4个点在同一直线上外，不再有3个点共线，以每三个点为顶点可以作多少个不同的三角形？

]
#solution[
如果10点中的任三点都能连成三角形，那么有 $upright(C)_10^3$ 个三角形. 但是如果在四个共线点中任选三点就不可能构成三角形. 所以 $ upright(C)_10^3 - upright(C)_4^3 = 120 - 4 = 116 $ #noindent;答：可以作116个不同的三角形。

]
#example[
在产品检验时，常从产品中抽出一部分进行检查，假设100件产品中有2件次品，

#block[
#set enum(numbering: enum-at(1, "(1)"))
+ 从100件产品中抽出三件检查，其中有1件次品的抽法有多少种？

+ 从100件产品中抽出4件检查，其中至少有一件次品的抽法有多少种？
]

]
#solution[
#block[
#set enum(numbering: enum-at(1, "(1)"))
+ 在100件产品中，次品有两件，从2件次品中抽出1件的抽法有 $upright(C)_2^1$⁠，从98件正品中抽出2件的方法有 $upright(C)_98^2$. 所以 $ upright(C)_2^1 dot.op upright(C)_98^2 = 2 dot.op frac(98 dot.op 97, 2) = 9506 $

+ 至少有1件是次品就是包括有1件次品和2件次品两类抽法的和，所以 $ upright(C)_2^1 dot.op upright(C)_98^3 + upright(C)_2^2 dot.op upright(C)_98^2 = 2 times frac(98 dot.op 97 dot.op 96, 3 dot.op 2) + frac(98 dot.op 97, 2) = 304192 + 4753 = 308945 $
]

#noindent;答：3件中有1件是次品的抽法是9506, 4件中至少有1件次品的抽法是308945。

]
#example[
从0, 3, 5, 7, 11五个数中可以得到多少个不同的乘积？

]
#solution[
因为零乘以任何数其积都是零，所以不论零与多少个数相乘都只算一个乘积就是0；

在非零的乘积中有 $upright(C)_4^2$, $upright(C)_4^3$, $upright(C)_4^4$ 三类，所以 $ upright(C)_4^2 + upright(C)_4^3 + upright(C)_4^4 + 1 = 6 + 4 + 1 + 1 = 12 $

答：可以得到12个不同的乘积.

]
#exercise[
+ 写出：

  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + 从4个相异元素 $a$⁠，$b$⁠，$c$⁠，$d$ 中取出2个元素的所有组合；

  + 从5个相异元素 $a$⁠，$b$⁠，$c$⁠，$d$⁠，$e$ 中取出3个元素的所有组合.
  ]

+ #block(sticky: true)[计算：]

  #cols(2)[
  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + $upright(C)_7^2$

  + $upright(C)_50^48$

  + $upright(C)_100^3 - upright(C)_90^3$

  + $upright(C)_5^1 + upright(C)_5^2 + upright(C)_5^3 + upright(C)_5^4 + upright(C)_5^5$
  ]

  ]

+ 平面内有12个点，其中任意3点不在同一直线上，以每3点为顶点作一三角形，一共可以作多少个不同的三角形？

+ 圆上 $n$ 个不同的点，

  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + 可以引多少条不同的弦？

  + 可以连接多少个内接三角形？
  ]

+ 凸四边形可以连多少条对角线？凸五边形可以连多少条对角线？凸 $n$ 边形可以连多少条对角线？

+ 某班有50名学生，其中正副班长各1人，现选5名学生参加某项活动

  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + 如果班长和副班长必须在内，有多少种不同的选法？

  + 如果要有一个班长（正、副都可以）在内，有多少种不同的选法？

  + 如果班长都不参加，有多少种不同的选法？

  + 如果至少要有一个班长（正、副都可以）在内，有多少种不同的选法？
  ]

]
#heading(level: 2, numbering: none, outlined: false)[习题2.1]

+ #block(sticky: true)[计算：]

  #cols(2)[
  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + $5 dot.op upright(P)_5^3 + 4 dot.op upright(P)_4^2$

  + $frac(upright(P)_7^5 - upright(P)_6^6, 7 ! + 6 !)$
  ]

  ]

+ 求证：

  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + $frac(\(n + 1\)!, k !) - frac(n !, \(k - 1\)!) = frac(\(n - k + 1\)dot.op n !, k !)$

  + $frac(\(2 n\)!, 2^n dot.op n !) = 1 dot.op 3 dot.op 5 thin dots.h.c thin \(2 n - 1\)$
  ]

+ #block(sticky: true)[解方程：]

  #cols(2)[
  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + $upright(P)_(2 n)^3 = 10 upright(P)_n^3$

  + $frac(upright(P)_n^5 + upright(P)_n^4, upright(P)_n^3) = 4$

  + $upright(P)_(2 n + 1)^4 = 140 upright(P)_n^3$
  ]

  ]

+ #block(sticky: true)[解不等式：]

  #cols(2)[
  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + $upright(P)_(m - 2)^2 + m > 2$

  + $upright(P)_9^x > 6 upright(P)_9^(x - 2)$
  ]

  ]

+ #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + 从多少个不同的元素中取出2个元素的排列数是56？

  + 已知从 $n$ 个不同的元素中取出2个元素的排列数等于从 $n - 4$ 个不同元素中取2个元素的排列数的7倍，求 $n$⁠．
  ]

+ 有5本不同的书分借给3个同学，每人1本，共有多少种不同的借法？

+ 用0, 1, 2, 3, 4, 5可以组成多少个没有重复数字的五位数？其中有多少个偶数？

+ 用数字1, 2, 3, 4, 5可以组成多少个没有重复数字的自然数？其中有多少个比13000大的自然数？

+ 7部不同型号的机床分配给7个工人使用：

  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + 甲必须使用2号机床；

  + 甲必须使用2号机床，乙必须使用4号机床；

  + 甲不适宜使用1号机床，乙不适宜使用7号机床；问三种情况下各有多少种不同的分配方案？
  ]

+ 6个儿童站成一排，其中一人不站在排头，也不站在排尾，一共有多少种不同的排法？

+ 五部不同型号的半导体收音机和四部不同型号的电视机陈列成一排，任两部电视机不靠在一起，有多少种不同的陈列方法？

+ 在3000和7000间有多少个没有重复数字的5的倍数？

+ #block(sticky: true)[计算：]

  #cols(2)[
  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + $upright(C)_15^3$

  + $upright(C)_100^98$

  + $upright(C)_6^3 + upright(C)_8^5$

  + $upright(C)_(n + 1)^n dot.op upright(C)_n^(n - 2)$
  ]

  ]

+ 求证：

  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + $upright(C)_(n + 1)^m = upright(C)_n^(m - 1) + upright(C)_(n - 1)^m + upright(C)_(n - 1)^(m - 1)$

  + $upright(C)_n^(k + 1) div upright(C)_n^k = frac(n - k, k + 1)$

  + $upright(C)_m^0 + upright(C)_(m + 1)^1 + upright(C)_(m + 2)^2 + dots.h.c + upright(C)_(m + n - 1)^(n - 1) = upright(C)_(m + n)^(n - 1)$

  + $upright(C)_n^(m + 1) + upright(C)_n^(m - 1) + 2 upright(C)_n^m = upright(C)_(n + 2)^(m + 1)$
  ]

+ #block(sticky: true)[解不等式：]

  #cols(2)[
  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + $upright(C)_n^4 > upright(C)_n^6$

  + $upright(C)_21^(n - 4) < upright(C)_21^(n - 2) < upright(C)_21^(n - 1)$
  ]

  ]

+ 在200件产品中有2件次品，现在抽5件进行检查：

  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + 其中有一件次品的不同抽法有多少种？

  + 没有次品的不同抽法有多少种？

  + 至少有一件次品的不同抽法有多少种？
  ]

+ 问2310能被多少个偶数整除？

+ 有8个划船运动员，其中3人能划左舷，2人能划右舷，3人能划左右舷，要选出6人分配在两边，问有多少种不同的选法？

+ 某车间有9名技术熟练的工人，其中2人能当车、钳工，有3人只能当车工，其余4人只能当钳工，现在要抽调三个车工，三个钳工成立一个新车间，问有多少种不同的抽调方法？

+ 空间有12个不同的点，其中有4点在同一平面内，此外不再有4点共面，

  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + 这些点可以确定多少个不同的平面？

  + 这些点可以连成多少个不同的四面体？
  ]

+ 有8部机器分给陈、李、张三位师傅管理。

  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + 陈管4部，李管3部，张管1部，有几种不同分配方法？

  + 陈管4部，其他机器由1人管3部，1人管1部，有多少种不同的分配方法？

  + 1人管4部，一人管3部，一人管1部，有几种不同的分配方法？
  ]

+ 从1, 3, 5, 7, 9中任取3个数字，2, 4, 6, 8中任取两个数字，组成没有重复数字的五位数，一共有多少个不同的五位数？

#heading(level: 2, numbering: star-numbering)[环形排列、重复排列和组合]

=== 环形排列
我们已经掌握了从 $n$ 个相异的元素中取出 $m thick\(m lt.eq n\)$ 个元素的排列的知识了，那么怎样解决环形排列的问题呢？

我们先从最简单的情况入手，就是先找出环形排列与直线排列的相互关系，然后利用直线排列的知识解决环形排列的问题.

首先在环形排列中，下面的排列都是当作相同的排列的（图2.2）．

#figure([#fig("2-03");

  ],
  caption: [
  ]
)

因为从甲开始，按同一方向，例如顺时针方向看过去都是乙，所以尽管位置不同，但仍然是同一样的元素的排列顺序.

#figure([#fig("2-04");

  ],
  caption: [
  ]
)

又例如三个不同元素甲、乙、丙如图2.3的三个环形排列也都算是相同的排列，而且与从谁开始无关，即甲 $arrow.r$ 乙 $arrow.r$ 丙 $arrow.r$ 甲、乙 $arrow.r$ 丙 $arrow.r$ 甲 $arrow.r$ 乙与丙 $arrow.r$ 甲 $arrow.r$ 乙 $arrow.r$ 丙，也都算作是相同的环形排列.

从上述的例子，可以得到三个不同元素的环形排列数应该是2．具体的排列是：甲---乙---丙---甲与甲---丙---乙---甲．

现在，我们再来分析一下环形排列与直线排列不同的特点. 我们已经知道下列三个环形排列都是相同的排列（图2.4）

#figure([#fig("2-05");

  ],
  caption: [
  ]
)

如果我们从图上所示的地方把环切断，并把环拉成直线后，我们却可以得到三个不同的直线的排列，就是：$ upright("甲、乙、丙；丙、甲、乙；乙、丙、甲") $

而三个不同元素的全排列数是 $upright(P)_3^3$⁠，所以三个不同元素的环形排列数是 $upright(P)_3^3 / 3$

#blk[定理3][
$m$ 个不同元素的环形排列数就是：$ upright(P)_m^m / m = frac(m !, m) =\(m - 1\)! $

]
#proof[
设有 $m$ 个不同元素排成一个环形，如图（图2.5）

#figure([#fig("2-06");

  ],
  caption: [
  ]
)

就是按顺时针方向的一个排列．其次，$a_1$ 不动，改变 $a_2\,a_3\,dots.h\,a_m$ 的顺时针排列顺序，就得到第二个不同的环形排列．因此，如果 $a_1$ 不动，要使 $a_2\,a_3\,dots.h\,a_m$ 有不同的排列，其不同的排列数为 $\(m - 1\)!$⁠，故 $m$ 个不同元素的环形排列数为 $upright(P)_(m - 1)^(m - 1) =\(m - 1\)!$

]
#blk[定理4][
从 $n$ 个不同的元素中，任取 $m$ 个（$m lt.eq n$⁠）没有重复的元素的环形排列数 $upright(C)_n^m dot.op\(m - 1\)!$.

]
#proof[
从 $n$ 个不同元素中取出 $m thick\(m lt.eq n\)$ 个元素进行环形排列，我们第一步可以先从 $n$ 个元素中先取出 $m$ 个组成一组，第二步是把 $m$ 个元素排成一圈，根据乘法原理，其排列数应为：$ upright(C)_n^m dot.op upright(P)_(m - 1)^(m - 1) = upright(C)_n^m\(m - 1\)! $

]
#example[
从10个不同元素中取出6个元素排成一圈，有多少种不同的排法？

]
#solution[
从10个不同元素中取出6个的环形排列数为：$ upright(C)_10^6 dot.op upright(P)_(6 - 1)^(6 - 1) = upright(C)_10^4 dot.op 5 ! = 210 dot.op 120 = 25200 $ #noindent;答：有25200种不同的排法．

]
#example[
有五个男同学与五个女同学围成圆圈跳集体舞，如果男女相间，问有几种不同的排列方法？

]
#solution[
第一步，五个男同学先作环形排列，其排列数为 $4 !$⁠；

第二步，五个女同学分别站在两个男同学之间的位置上作全排列.

$therefore quad 4 ! dot.op 5 ! = 2880$

答：有2880种不同的排列方法.

]
#exercise[
+ 把10个人平均分成两组，每组都围坐一个圆桌，问有多少种不同的坐法？

+ 今有5颗不同颜色的珠子，用线把它们串成珠圈，问有多少种串法？

]
=== 重复排列
前面我们所研究的都是不允许元素在排列和组合中重复出现的，假如我们允许元素在同一排列中重复出现的话，其排列数应该是多少呢？

#blk[定理5][
从 $n$ 个不同的元素中，取出 $m$ 个元素排成一列（允许元素重复出现）的不同排列数为 $n^m$.

]
#proof[
选在第一个位置上的元素有 $n$ 个不同的方法，选在第二个位置上的元素仍然有 $n$ 个不同的方法，……，选在第 $m$ 个位置上的元素仍然有 $n$ 个选法，所以根据乘法原理，从 $n$ 个不同的元素中取出 $m$ 个元素的允许重复的排列数应为 $n^m$.

]
这种排列又称为重复排列，这里应该注意的是，由于元素可以重复选取，因此选取的次数 $m$ 就不会再受 $n$ 个元素的限制. 即 $m$ 不再有 $m lt.eq n$ 的限制了.

#example[
电报通讯的明码是用0到9十个数字中的每4个数字的重复排列代表一个汉字，问用这种方法制成的电报通讯明码可以表示多少个不同的汉字？

]
#solution[
从10个不同数字中选取4个数字的重复排列数是：$ 10^4 = 10000 $ #noindent;答：可以表示10000个不同的汉字.

]
#example[
由1, 2, 3, 4四个数字能够组成多少个大于2300的四位数？

]
#solution[
这里的四位数显然是包括重复数字的四位数.

第一类：3在千位上的四位数一定大于2300，那么，百、十、个位上的数字每次都有4种选取可能，所以应有 $4^3$ 个四位数.

第二类：4在千位上的四位数，同理也有 $4^3$ 个四位数。

第三类：2在千位上，3在百位上的四位数，由于十位和个位上的数都可以从1, 2, 3, 4中选取，都大于2300，所以，这样的数有 $4^2$ 个．

第四类，2在千位上，4在百位上的四位数有 $4^2$ 个．所以 $ 2 dot.op 4^3 + 2 dot.op 4^2 = 2 dot.op 4^2\(4 + 1\)= 160 $

答：这样的四位数有160个．

]
#exercise[
+ 有三封不同的信，投入4个信箱里，一共有多少种投信的方法？

+ 有数学、天文、诗歌三个课外小组，8个同学准备报名，若每人限报一个组，问一共可有多少种报名的方法？

]
=== 重复组合
从 $n$ 个不同元素中取出 $m$ 个元素组成一组，如果允许元素在组合中重复出现，这样的组合简称为重复组合，这种重复组合用符号 $upright(H)_n^m$ 表示.

怎样计算重复组合的组合数呢？我们还是先从具体例子开始考虑，假如有三个不同的元素 $a_1\,a_2\,a_3$⁠，从其中取出两个元素组成重复组合，那么，可以得到如下的六个不同组合：

#numbered-align(($$, $a_1 a_1\,thick a_1 a_2\,thick a_1 a_3\,thick a_2 a_2\,thick a_2 a_3\,thick a_3 a_3$, [(1)]));

如果是不允许元素重复的话，要选两个元素得到不同的组合数是6的话，应是 $upright(C)_4^2$⁠，设这四个元素为 $a'_1\,a'_2\,a'_3\,a'_4$, 那么得到的组合为：

#numbered-align(($$, $a'_1 a'_2\,thick a'_1 a'_3\,thick a'_1 a'_4\,thick a'_2 a'_3\,thick a'_2 a'_4\,thick a'_3 a'_4$, [(2)]));

#noindent;组合（1）与组合（2）不难建立它们之间的一一对应关系．在组合（1）的每个组合的元素下标上分别加上0和1，就得到了下标与（2）完全一致的组合（3）．

#numbered-align(($$, $a_(1 + 0) a_(1 + 1)\,quad a_(1 + 0) a_(2 + 1)\,quad a_(1 + 0) a_(3 + 1)\,quad a_(2 + 0) a_(2 + 1)\,quad a_(2 + 0) a_(3 + 1)\,quad a_(3 + 0) a_(3 + 1)$, [(3)]));

又例如从4个不同元素中取出3个元素的重复组合有如下的不同组合:

#align(center)[
#table(
  columns: (auto, auto, auto, auto, auto,),
  align: (center + horizon, center + horizon, center + horizon, center + horizon, center + horizon,),
  [$a_1 a_1 a_1$],
  [$a_1 a_1 a_2$],
  [$a_1 a_1 a_3$],
  [$a_1 a_1 a_4$],
  [],
  [],
  [$a_1 a_2 a_2$],
  [$a_1 a_2 a_3$],
  [$a_1 a_2 a_4$],
  [],
  [],
  [$a_1 a_3 a_3$],
  [$a_1 a_3 a_4$],
  [$a_1 a_4 a_4$],
  [],
  [],
  [$a_2 a_2 a_2$],
  [$a_2 a_2 a_3$],
  [$a_2 a_2 a_4$],
  [],
  [],
  [$a_2 a_3 a_3$],
  [$a_2 a_3 a_4$],
  [$a_2 a_4 a_4$],
  [],
  [],
  [$a_3 a_3 a_3$],
  [$a_3 a_3 a_4$],
  [$a_3 a_4 a_4$],
  [$a_4 a_4 a_4$],
);

]
只要我们在每组元素的下标上分别加0, 1, 2, 就得到

#align(center)[
#table(
  columns: (auto, auto, auto, auto, auto,),
  align: (center + horizon, center + horizon, center + horizon, center + horizon, center + horizon,),
  [$a_1 a_2 a_3$],
  [$a_1 a_2 a_4$],
  [$a_1 a_2 a_5$],
  [$a_1 a_2 a_6$],
  [],
  [],
  [$a_1 a_3 a_4$],
  [$a_1 a_3 a_5$],
  [$a_1 a_3 a_6$],
  [],
  [],
  [$a_1 a_4 a_5$],
  [$a_1 a_4 a_6$],
  [$a_1 a_5 a_6$],
  [],
  [],
  [$a_2 a_3 a_4$],
  [$a_2 a_3 a_5$],
  [$a_2 a_3 a_6$],
  [],
  [],
  [$a_2 a_4 a_5$],
  [$a_2 a_4 a_6$],
  [$a_2 a_5 a_6$],
  [],
  [],
  [$a_3 a_4 a_5$],
  [$a_3 a_4 a_6$],
  [$a_3 a_5 a_6$],
  [$a_4 a_5 a_6$],
);

]
这又正是从六个不同元素中取出3个元素的组合的全部。从上面的例子说明了 $ upright(H)_3^2 = upright(C)_(3 +\(2 - 1\))^2\,#h(2em) upright(H)_4^3 = upright(C)_(4 +\(3 - 1\))^3 $

按同样的方法我们可以得出：从 $n$ 个不同元素中取出 $m$ 个的重复组合数有如下的关系：$ upright(H)_n^m = upright(C)_(n +\(m - 1\))^m $

现在我们来证明这个结论.

#blk[定理6][
从 $n$ 个不同元素中，任取 $m$ 个元素的重复组合为：$ upright(H)_n^m = upright(C)_(n +\(m - 1\))^m $

]
#proof[
为了研究问题方便，我们用 $1\,2\,3\,dots.h\,n$ 表示这 $n$ 个不同的元素。在其中任取 $m$ 个允许重复的数字作为一个组合，并按大小顺序排成 $ 1 lt.eq i_1 lt.eq i_2 lt.eq dots.h.c lt.eq i_m lt.eq n $

又记 $j_1 = i_1 + 0\,thick j_2 = i_2 + 1\,thick dots.h\,j_m = i_m +\(m - 1\)$

自然，$1 lt.eq j_1 < j_2 < j_3 < dots.h.c < j_m lt.eq n +\(m - 1\)$⁠，所以 $\{ j_1\,j_2\,dots.h\,j_m \}$ 是 $n + m - 1$ 个数，并且是 $1\,2\,dots.h\,n + m - 1$ 中的 $m$ 个不同数的组合.

]
下面来证明：在 $n$ 个不同元素中任取 $m$ 个允许重复的元素的组合，和 $n + m - 1$ 个不同元素中任取 $m$ 个不同元素的组合之间有一个到上的一一对应关系。如果这点证明了，那么 $n$ 个不同元素的 $m$ 个允许重复元素的组合数就与 $n + m - 1$ 个不同元素的 $m$ 个不同元素的组合数相等了.

#proof[
为了证明这个一一对应，要先证明当允许重复的组合 $\{ i_1\,i_2\,dots.h\,i_m \}$ 与 $\{ i'_1\,i'_2\,dots.h\,i'_m \}$ 不同的时候，（这里取 $1 lt.eq i_1 lt.eq i_2 lt.eq dots.h.c lt.eq i_m lt.eq n$, $1 lt.eq i'_1 lt.eq i'_2 lt.eq dots.h.c lt.eq i'_m lt.eq n$⁠）那么，不同元素不允许重复的组合 $\{ j_1\,j_2\,dots.h\,j_m \}$ 与 $\{ j'_1\,j'_2\,dots.h\,j'_m \}$ 也不同，这里 $\{ j_1 = i_1 + 0\,thick j_2 = i_2 + 1\,dots.h\,j_m = i_m + m - 1\,thick j'_1 = i'_1 + 0\,thick j'_2 = i'_2 + 1\,dots.h\,j'_m = i'_m + m - 1 \}$.

事实上，如果后者相同，即有 $j_k = j'_k thick\(k = 1\,2\,dots.h\,m\)$ 即 $ i_k + k - 1 = i'_k + k - 1 thick\(k = 1\,2\,dots.h\,m\) $ #noindent;所以 $i_k = i'_k thick\(k = 1\,2\,dots.h\,m\)$, 也就是说 $\{ i_1\,i_2\,dots.h\,i_m \}$ 也与 $\{ i'_1\,i'_2\,dots.h\,i'_m \}$ 相同了。这就证明了上述的对应为一一对应.

再证明这是到上的一一对应，即当 $\{ i_1\,i_2\,dots.h\,i_m \}$ 取遍 $n$ 个数 $1\,2\,dots.h\,n$ 的一切 $m$ 个数的允许重复组合时，$\{ j_1\,j_2\,dots.h\,j_m \}$ 也取遍 $n + m - 1$ 个数 $1\,2\,dots.h\,n + m - 1$ 一切的 $m$ 个数的不允许重复的组合.

事实上，对任一个组合 $\{ j_1\,j_2\,dots.h\,j_m \}$, 其中 $1 lt.eq j_1 < j_2 < dots.h.c < j_m lt.eq n + m - 1$. 有 $1 lt.eq j_1\,thick 2 lt.eq j_2\,thick 3 lt.eq j_3\,dots.h\,m lt.eq j_m$. 故 $1 lt.eq i_1 = j_1 - 0\,thick 1 lt.eq i_2 = j_2 - 1\,thick 1 lt.eq i_3 = j_3 - 2\,dots.h\,1 lt.eq i_m = j_m -\(m - 1\)$. 即 $i_1\,i_2\,dots.h\,i_m$ 都是自然数，且由 $j_k > j_(k - 1)$, 可知 $j_k - j_(k - 1) gt.eq 1$, 故有 $ i_k - i_(k - 1) =\[j_k -\(k - 1\)\]-\[j_(k - 1) -\(k - 2\)\]= j_k - j_(k - 1) - 1 gt.eq 0 $ #noindent;再者 $i_m = j_m -\(m - 1\)lt.eq\(n + m - 1\)-\(m - 1\)= n$. 总之有 $1 lt.eq i_1 lt.eq i_2 lt.eq dots.h.c lt.eq i_m lt.eq n$. 所以，$\{ i_1\,i_2\,dots.h\,i_m \}$ 是 $n$ 个数 $1\,2\,dots.h\,n$ 中取 $m$ 个数的允许重复的组合，这证明了对应是到上的一一对应.

]
#example[
从3, 5, 7, 9, 11中取出3个数（可以重复选取）相乘，问有多少个不同的乘积？

]
#solution[
因为是乘积，与元素取出的先后顺序无关，同时是可以重复选取的，即是重复组合问题. 所以 $ upright(H)_5^3 = upright(C)_(5 +\(3 - 1\))^3 = upright(C)_7^3 = 35 $ #noindent;答：有35个不同的乘积．

]
#example[
从三个不同的质数 $a_1\,a_2\,a_3$ 中取出4个数相乘（可以重复选取），问有多少个不同的乘积？

]
#solution[
同例2.16是重复组合问题．所以 $ upright(H)_3^4 = upright(C)_(3 +\(4 - 1\))^4 = upright(C)_6^4 = upright(C)_6^2 = 15 $ #noindent;答：有15个不同的乘积。

]
#example[
用七种不同的颜色给一个四面体的四个面涂上颜色，规定每个面上只能涂一种颜色，如果四个面的颜色容许相同，问有几种不同的着色方法？

]
#solution[
因为只研究对四个面所着的颜色，对哪个面先着色并无先后顺序之分，故是组合问题. 又因为对四个面所着的色是允许相同的，所以又是重复组合问题. 所以 $ upright(H)_7^4 = upright(C)_(7 +\(4 - 1\))^4 = upright(C)_10^4 = 210 $ #noindent;答：共有210种不同的着色方法。

]
#exercise[
+ 展开 $\(a + b + c + d\)^3$⁠，合并同类项后，一共有多少项？

+ 若把六种不同的溶液注满四个烧杯，但不使它们混合，问一共有多少种方法？

]
#heading(level: 2, numbering: none, outlined: false)[习题2.2]

+ 从8个不同的元素中取出5个元素排成圆圈，问有几种不同的排列方法？

+ 两个教师和五个学生代表围坐在圆桌周围开座谈会：

  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + 如果不加条件限制，有多少种不同的坐法？

  + 如果两个教师靠在一起，有几种坐法？

  + 如果两个教师不靠在一起，有几种坐法？

  + 学生代表甲坐在教师的中间，有几种坐法？
  ]

+ 从三个不同的元素中取出4个元素的重复组合有多少种不同的方法？

+ 用七种颜色涂在正方体的六个面上，如果每个面只能涂一种颜色，如果六个面上的颜色允许相同，问共有几种不同的着色方法？

+ 从2, 3, 5, 7, 11, 13中至少取出两个，至多可以取出五个数相乘（允许因数重复选取），问有多少个不同的乘积？

+ 展开 $\(a + b + c + d + e + f\)^4$⁠，再合并同类项，一共可以得到多少项？

== 二项式定理
=== 和号 $Sigma$
我们经常要计算下面各种和 $ 1 + 2 + 3 + dots.h.c + n\;quad 1^2 + 2^2 + 3^2 + dots.h.c + n^2\,quad frac(1 times 2, 2) + frac(2 times 3, 2^2) + dots.h.c + frac(n\(n + 1\), 2^n) $ #noindent;等等。一般给出一个有顺序的数列 $a_1\,a_2\,dots.h\,a_n$, 要计算 $a_1 + a_2 + dots.h.c + a_n$⁠，为了方便起见引进和符号 $Sigma$⁠，于是可记 $ 1 + 2 + 3 + dots.h.c + n = sum_(k = 1)^n k\
1^2 + 2^2 + 3^2 + dots.h.c + n^2 = sum_(k = 1)^n k^2\
frac(1 times 2, 2) + frac(2 times 3, 2^2) + frac(3 times 4, 2^3) + dots.h.c + frac(n\(n + 1\), 2^n) = sum_(k = 1)^n frac(k\(k + 1\), 2^k) $

一般可记 $a_1 + a_2 + dots.h.c + a_n = sum_(k = 1)^n a_k$ 符号 $ sum_(k = 1)^n a_k $

表示 $k$ 取 $1\,2\,dots.h\,n - 1\,n$ 时，得到的 $a_k$ 全部加起来. 例如：$ sum_(k = 1)^n sin k x = sin x + sin 2 x + sin 3 x + dots.h.c + sin n x\
sum_(k = 0)^n a_k x^(n - k) = a_0 x^n + a_1 x^(n - 1) + dots.h.c + a_(n - 1) x + a_n $ #noindent;又例如，对给定的函数 $f_1\(x\)\,f_2\(x\)\,dots.h\,f_n\(x\)$ 有 $ sum_(k = 1)^n f_k\(x\) & = f_1\(x\)+ f_2\(x\)+ dots.h.c + f_n\(x\)\
sum_(k = 0)^n upright(C)_n^k & = upright(C)_n^0 + upright(C)_n^1 + upright(C)_n^2 + dots.h.c + upright(C)_n^n $ #noindent;等等.

关于求和符号还有两点说明，首先，凡是指示指标从1到 $n$⁠，且仅仅指示从1到 $n$⁠．所以可以用其他的字母来代替 $k$ 而和号仍然是表示了同一个意思. 例如 $ sum_(k = 1)^n a_k = a_1 + a_2 + dots.h.c + a_n\,#h(2em) sum_(ell = 1)^n a_ell = a_1 + a_2 + dots.h.c + a_n $

一般 $limits(sum)_(* = 1)^n a_(*) = a_1 + a_2 + dots.h.c + a_n$ 这里 $*$ 可以用任何一种指标来表示，其次，求和也不限于从1到 $n$⁠，也可以从0到 $n + 2$ 等等. 例如 $ sum_(k = 0)^(n + 2) a_k & = a_0 + a_1 + dots.h.c + a_(n + 1) + a_(n + 2)\
sum_(k = 3)^(n + 1) a_k & = a_3 + a_4 + dots.h.c + a_(n + 1) $

#exercise[
+ 把下列各式用和号表示：

  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + $1 + 3 + 5 + 7 thin dots.h.c +\(2 n - 1\)$

  + $1 dot.op 2 + 2 dot.op 3 + 3 dot.op 4 + dots.h.c + n\(n + 1\)$

  + $cos x + cos 2 x + cos 3 x + dots.h.c + cos n x$

  + $1^2 + 2^2 + 3^2 + dots.h.c +\(n + 2\)^2$
  ]

+ #block(sticky: true)[把下列和号式改写为一般的和式]

  #cols(2)[
  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + $limits(sum)_(k = 1)^n frac(1, k\(2 k + 1\))$

  + $limits(sum)_(k = 1)^(n + 2) frac(k^2, k !)$

  + $limits(sum)_(k = 2)^n frac(sin k x, k)$

  + $limits(sum)_(k = 2)^n frac(\(- 1\)^k, k^2 + k - 2)$
  ]

  ]

]
=== 二项式定理
下面我们用数学归纳法来证明二项式定理。我们已经知道：$ \(x + y\)^1 & = x + y\
\(x + y\)^2 & = x^2 + 2 x y + y^2\
\(x + y\)^3 & = x^3 + 3 x^2 y + 3 x y^2 + y^3 $

现在考虑二项式 $\(x + y\)^n$ 的展开式，这里 $n$ 是任意自然数，首先研究 $\(x + y\)^4$ $ \(x + y\)^4 =\(x + y\)\(x + y\)\(x + y\)\(x + y\) $ #noindent;等号右边的积应有下面形式的各项：$ x^4\,thick x^3 y\,thick x^2 y^2\,thick x y^3\,thick y^4 $ #noindent;显然 $x^4$, $y^4$ 的系数是1，其他三项的系数，例如 $x^2 y^2$ 的系数是从四个括弧中两个里取 $y$⁠，从其他两个里取 $x$ 作出的积的个数，从四个括弧中任取两个 $y$ 的取法有 $upright(C)_4^2 = frac(4 dot.op 3, 1 dot.op 2) = 6$ 种，因此 $x^2 y^2$ 的系数是6，同样，可以求得 $x^3 y\,x y^3$ 的系数分别是 $upright(C)_4^1 = 4$⁠，因为规定 $upright(C)_n^0 = 1$⁠，又知 $upright(C)_n^n = 1$⁠，所以 $ \(x + y\)^4 = upright(C)_4^0 x^4 + upright(C)_4^1 x^3 y + upright(C)_4^2 x^2 y^2 + upright(C)_4^3 x y^3 + upright(C)_4^4 y^4 $

一般地，可以归纳出以下的定理：

#blk[定理][
对于两个不定元 $x$⁠，$y$ 的多项式 $\(x + y\)^n$⁠，有下列展开式：$ \(x + y\)^n & = sum_(k = 0)^n upright(C)_n^k x^(n - k) y^k\
 & = upright(C)_n^0 x^n + upright(C)_n^1 x^(n - 1) y + upright(C)_n^2 x^(n - 2) y^2 + dots.h.c + upright(C)_n^n y^n $

]
#proof[
用数学归纳法来证明定理.

#block[
#set enum(numbering: enum-at(1, "(1)"))
+ 当 $n = 1$ 时，$\(x + y\)^1 = x + y$ $ sum_(k = 0)^1 upright(C)_1^k x^(1 - k) y^k = upright(C)_1^0 x^1 y^0 + upright(C)_1^1 x^0 y^1 = x + y $ #noindent;故 $n = 1$ 时原命题成立.

+ 假设 $n = ell$ 时有公式 $\(x + y\)^ell = limits(sum)_(k = 0)^ell upright(C)_ell^k x^(ell - k) y^k$

  现在来计算 $\(x + y\)^(ell + 1)$⁠，令 $ \(x + y\)^(ell + 1) & =\(x + y\)dot.op\(x + y\)^ell =\(x + y\)dot.op sum_(k = 0)^ell upright(C)_ell^k x^(ell - k) y^k\
   & = sum_(k = 0)^ell upright(C)_ell^k x^(ell - k + 1) y^k + sum_(k = 0)^ell upright(C)_ell^k x^(ell - k) y^(k + 1)\
   & = upright(C)_ell^0 x^(ell + 1) + sum_(k = 1)^ell upright(C)_ell^k x^(1 + ell - k) y^k + sum_(k = 0)^(ell - 1) upright(C)_ell^k x^(ell - k) y^(k + 1) + upright(C)_ell^ell y^(ell + 1)\
   & = upright(C)_(ell + 1)^0 x^(ell + 1) + sum_(k = 1)^ell upright(C)_ell^k x^(1 + ell - k) y^k + sum_(k = 1)^ell upright(C)_ell^(k - 1) x^(ell + 1 - k) y^k + upright(C)_(ell + 1)^(ell + 1) y^(ell + 1)\
   & = upright(C)_(ell + 1)^0 x^(ell + 1) + sum_(k = 1)^ell (upright(C)_ell^k + upright(C)_ell^(k - 1)) x^(ell + 1 - k) y^k + upright(C)_(ell + 1)^(ell + 1) y^(ell + 1)\
   & = upright(C)_(ell + 1)^0 x^(ell + 1) + sum_(k = 1)^ell upright(C)_(ell + 1)^k x^(ell + 1 - k) y^k + upright(C)_(ell + 1)^(ell + 1) y^(ell + 1)\
   & = sum_(k = 0)^(ell + 1) upright(C)_(ell + 1)^k x^(ell + 1 - k) y^k $ #noindent;所以 $n = ell + 1$ 时命题成立.
]

#noindent;根据（1）和（2），对于一切自然数 $n$ 都有：$\(x + y\)^n = limits(sum)_(k = 0)^n upright(C)_n^k x^(n - k) y^k$ 成立.

]
这个定理叫做二项式定理，右边的多项式 $limits(sum)_(k = 0)^n upright(C)_n^k x^(n - k) y^k$ 叫做 $\(x + y\)^n$ 的二项展开式. 式中的 $upright(C)_n^k x^(n - k) y^k$ 叫做二项展开式的通项，用 $upright(T)_(k + 1)$ 表示，即通项为展开式的第 $k + 1$ 项. $ upright(T)_(k + 1) = upright(C)_n^k x^(n - k) y^k $

由二项式定理，取 $y = 1$⁠，有 $ \(x + 1\)^n = sum_(k = 0)^n upright(C)_n^k x^(n - k) $ #noindent;取 $y = - 1$⁠，有$ \(x - 1\)^n = limits(sum)_(k = 0)^n\(- 1\)^k upright(C)_n^k x^(n - k) $

在二项式定理中，如果遇到 $n$ 是较小的正整数时展开式的系数，也可以直接用下表计算，

#align(center)[
#fig("2-07");

]
#noindent;表中每行两端都是1，而且除1以外的每一个数都等于它肩上两个数的和，这个表叫做杨辉三角，它首先载于我国宋朝数学家杨辉1261年所著的《详解九章算法》一书．

#example[
展开 $(1 + 1 / x)^5$

]
#solution[
$ (1 + 1 / x)^5 & = 1 + 5 (1 / x) + 10 (1 / x)^2 + 10 (1 / x)^3 + 5 (1 / x)^4 + (1 / x)^5\
 & = 1 + 5 / x + 10 / x^2 + 10 / x^3 + 5 / x^4 + 1 / x^5 $

]
#example[
展开 $(2 sqrt(x) - 1 / sqrt(x))^6$

]
#solution[
$ (2 sqrt(x) - 1 / sqrt(x))^6 & = (frac(2 x - 1, sqrt(x)))^6 = 1 / x^3\(2 x - 1\)^6\
 & = 1 / x^3 class("opening", stretch(\[, size: #1.2em))\(2 x\)^6 - upright(C)_6^1\(2 x\)^5 + upright(C)_6^2\(2 x\)^4 - upright(C)_6^3\(2 x\)^3 + upright(C)_6^4\(2 x\)^2\
 & #h(2em) #h(2em) eqph - upright(C)_6^5\(2 x\)+ upright(C)_6^6 class("closing", stretch(\], size: #1.2em))\
 & = 1 / x^3 class("opening", stretch(\[, size: #1.2em)) 64 x^6 - 6 dot.op 32 x^5 + 15 dot.op 16 x^4 - 20 dot.op 8 x^3 + 15 dot.op 4 x^2\
 & #h(2em) #h(2em) eqph - 6 dot.op 2 x + 1 class("closing", stretch(\], size: #1.2em))\
 & = 64 x^3 - 192 x^2 + 240 x - 160 + 60 / x - 12 / x^2 + 1 / x^3 $

]
#example[
求 $\(x + a\)^12$ 的展开式中的第四项和倒数第四项。

]
#solution[
展开式的通项公式 $upright(T)_(k + 1) = upright(C)_n^k x^(n - k) y^k$⁠。所以 $ upright(T)_4 = upright(C)_12^3 x^(12 - 3) a^3 = frac(12 times 11 times 10, 3 times 2) x^9 a^3 = 220 x^9 a^3 $ #noindent;又展开式共 $12 + 1 = 13$, 故倒数第四项是 $ upright(T)_10 = upright(C)_12^9 x^(12 - 9) a^9 = upright(C)_12^3 x^3 a^9 = 220 x^3 a^9 $

]
#example[
求 $\(x - 1 / x\)^9$ 展开式中 $x^3$ 的系数，有没有 $x^0$ 项，如果有，试求出该项来。

]
#solution[
展开式的通项是：$ T_(k + 1) =\(- 1\)^k C_9^k x^(9 - k)\(1 / x\)^k =\(- 1\)^k C_9^k x^(9 - k - k) $ #noindent;依题意有，$9 - 2 k = 3$, 所以 $k = 3$. 因此 $x^3$ 的项系数是 $ \(- 1\)^3 upright(C)_9^3 = - frac(9 times 8 times 7, 3 times 2) = - 84 $

又若 $9 - 2 k = 0$, 即 $2 k = 9$, 方程没有整数解，故展开式里没有 $x^0$ 项.

]
#example[
在 $(a + 1 / a)^(2 n)$ 的展开式里，已知第四项和第六项系数相等，求展开式里不含有 $a$ 的项.

]
#solution[
因为 $ upright(T)_4 & = upright(C)_(2 n)^3 a^(2 n - 3) 1 / a^3 = upright(C)_(2 n)^3 a^(2 n - 6)\
upright(T)_6 & = upright(C)_(2 n)^5 a^(2 n - 5) 1 / a^5 = upright(C)_(2 n)^5 a^(2 n - 10) $ #noindent;依题意得 $upright(C)_(2 n)^3 = upright(C)_(2 n)^5$⁠，即 $upright(C)_(2 n)^(2 n - 3) = upright(C)_(2 n)^5$⁠，所以 $ 2 n - 3 = 5\,quad 2 n = 8\,quad n = 4 $ #noindent;故所给的二项式是 $(a + 1 / a)^8$

因为 $upright(T)_(k + 1) = upright(C)_8^k a^(8 - k) 1 / a^k = upright(C)_8^k a^(8 - 2 k)$⁠，若 $upright(T)_(k + 1)$ 为不含 $a$ 项，则 $8 - 2 k = 0$⁠，所以 $k = 4$. $ upright(T)_5 = upright(C)_8^4 dot.op a^0 = frac(8 times 7 times 6 times 5, 4 times 3 times 2) = 70 $

]
#exercise[
+ 展开 $\(x^3 - 2 x\)^7$

+ 求 $\(a + sqrt(b)\)^12$ 的展开式里的第4项和第9项

+ #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + 求 $\(x + a\)^12$ 的展开式里的中间一项；

  + 求 $(x / 2 + 2 / x)^7$ 的展开式里的中间两项.
  ]

+ #block(sticky: true)[在 $\(x + a\)^10$ 的展开式里，求]

  #cols(2)[
  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + 含有 $a^8$ 的项；

  + 含有 $x^8$ 的项.
  ]

  ]

+ #block(sticky: true)[在 $(x^2 + 1 / x^3)^15$ 的展开式里，有没有]

  #cols(2)[
  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + 不含 $x$ 的项？

  + 含有 $x^8$ 的项？
  ]

  ]
  如果有，把这项求出来.

+ 求 $(3 x + 1 / root(3, x))^8$ 的展开式里的常数项.

+ 已知 $(root(8, a^2) + 1 / a)^n$ 的展开式里的第3项含有 $a^2$, 求 $n$.

]
=== 二项式的性质
我们研究二项式 $\(x + y\)^n$ 的展开式中各项系数的性质。二项展开式各项系数是：$ upright(C)_n^0\,thick upright(C)_n^1\,thick upright(C)_n^2\,thick dots.h\,thick upright(C)_n^(n - 1)\,thick upright(C)_n^n $

展开式各项系数有下列性质

+ 在二项展开式中，与首末两端“等距离”的两项系数相等. 我们已知 $upright(C)_n^m = upright(C)_n^(n - m)$⁠，所以: $ upright(C)_n^0 = upright(C)_n^n\,thick upright(C)_n^1 = upright(C)_n^(n - 1)\,thick upright(C)_n^2 = upright(C)_n^(n - 2)\,thick dots.h\,thick upright(C)_n^k = upright(C)_n^(n - k)\,dots.h $

+ 如果二项式的幂指数是偶数，中间一项的系数大，如果二项式的幂指数是奇数，中间两项系数相同并且大.

由于展开式各项系数顺次是 $ upright(C)_n^0 = 1\,quad upright(C)_n^1 = n\,quad upright(C)_n^2 = frac(n\(n - 1\), 1 dot.op 2)\,dots.h\
upright(C)_n^k = frac(n\(n - 1\)\(n - 2\) thin dots.h.c thin \(n - k + 1\), 1 dot.op 2 dot.op 3 thin dots.h.c thin k)\,dots.h\,quad upright(C)_n^n = 1 $ #noindent;其中，后一个系数的分子是前一个系数的分子乘以逐次减小1的数，(如 $n\,thick n - 1\,thick n - 2\,thick dots.h$), 分母是乘以逐次增大1的数 (如 $1\,2\,3\,dots.h$) 得到的，因而，各项系数从开始起总是逐渐增大，又因为与首末两端“等距离”的两项系数相等，所以系数增大到某一项时就逐渐减小，而最大项必在中间.

当 $n$ 是偶数时，$n + 1$ 是奇数，展开式共有 $n + 1$ 项，所以展开式有中间一项，即第 ($n / 2 + 1$) 项，并且系数最大。

当 $n$ 是奇数时，$n + 1$ 是偶数，展开式共有 $n + 1$ 项，所以有中间两项，即第 ($frac(n + 1, 2)$) 和第 ($frac(n + 1, 2) + 1$) 两项，系数相同并且最大.

#example[
求 $\(x + y\)^10$ 和 $\(x + y\)^11$ 的最大系数的项.

]
#solution[
$\(x + y\)^10$ 最大系数项的项数是 $10 / 2 + 1 = 6$⁠，所以 $ upright(T)_6 = upright(C)_10^5 x^(10 - 5) y^5 = 252 x^5 y^5 $

$\(x + y\)^11$ 最大系数的项数是 $frac(11 + 1, 2) = 6$ 或 $6 + 1 = 7$, 所以 $ upright(T)_6 & = upright(C)_11^5 x^(11 - 5) y^5 = 462 x^6 y^5\
upright(T)_7 & = upright(C)_11^6 x^(11 - 6) y^6 = 462 x^5 y^6 $

]
#example[
在 $\(5 x + 2 y\)^29$ 展开式中第几项的系数最大，并求它的系数。

]
#solution[
设 $T_(k + 1)$ 系数最大，则它必须满足 $ display(cases(frac(upright(T)_(k + 1) upright("系数"), upright(T)_k upright("系数")) = frac(upright(C)_29^k 5^(29 - k) 2^k, upright(C)_29^(k - 1) 5^(29 - k + 1) 2^(k - 1)) = frac(2\(29 - k + 1\), 5 k) gt.eq 1, frac(upright(T)_(k + 1) upright("系数"), upright(T)_(k + 2) upright("系数")) = frac(upright(C)_29^k 5^(29 - k) 2^k, upright(C)_29^(k + 1) 5^(29 - k - 1) 2^(k + 1)) = frac(5\(k + 1\), 2\(29 - k\)) gt.eq 1)) $ #noindent;即 $display(cases(7 k lt.eq 60, 53 / 7 lt.eq k lt.eq 29))$

解得 $7 4 / 7 lt.eq k lt.eq 8 4 / 7$. 因为 $k$ 为正整数，故 $k = 8$⁠，即系数最大项系数是 $ upright(T)_(8 + 1) = upright(C)_29^8 5^(29 - 8) dot.op 2^8 = upright(C)_29^8 5^21 dot.op 2^8 $

]
#example[
求证：$limits(sum)_(k = 0)^n upright(C)_n^k = upright(C)_n^0 + upright(C)_n^1 + upright(C)_n^2 + dots.h.c + upright(C)_n^(n - 1) + upright(C)_n^n = 2^n$

]
#proof[
在二项式公式中取 $x = y = 1$⁠，有：$ \(1 + 1\)^n = sum_(k = 0)^n upright(C)_n^k 1^(n - k) 1^k = sum_(k = 0)^n upright(C)_n^k $ #noindent;所以 $limits(sum)_(k = 0)^n upright(C)_n^k = 2^n$

]
#example[
证明在 $\(x + y\)^n$ 展开式中，奇数项系数的和等于偶数项系数的和.

]
#proof[
在二项式公式中取 $x = 1$, $y = - 1$⁠，有 $ \(1 - 1\)^n = sum_(k = 0)^n\(- 1\)^k upright(C)_n^k 1^(n - k) 1^k = sum_(k = 0)^n\(- 1\)^k upright(C)_n^k $ #noindent;即 $ 0 = (upright(C)_n^0 + upright(C)_n^2 + dots.h.c) - (upright(C)_n^1 + upright(C)_n^3 + dots.h.c) $ #noindent;所以 $ upright(C)_n^0 + upright(C)_n^2 + dots.h.c = upright(C)_n^1 + upright(C)_n^3 + dots.h.c $

]
#example[
求证：$limits(sum)_(k = 1)^n 2 k upright(C)_n^k = n dot.op 2^n$

]
#proof[
因为 $ k upright(C)_n^k & = k dot.op frac(n\(n - 1\) thin dots.h.c thin \(n - k + 1\), k !)\
 & = n dot.op frac(\(n - 1\)\(n - 2\) thin dots.h.c thin \(n - k + 1\), \(k - 1\)!) = n upright(C)_(n - 1)^(k - 1) $ #noindent;所以 $ sum_(k = 1)^n 2 k upright(C)_n^k = 2 sum_(k = 1)^n k upright(C)_n^k = 2 n sum_(k = 0)^(n - 1) upright(C)_(n - 1)^k = 2 n dot.op 2^(n - 1) = n dot.op 2^n $

]
#example[
计算 $\(1.009\)^20$ 和 $\(0.991\)^5$ 的近似值（精确到0.001)

]
#solution[
$ \(1.009\)^20 & =\(1 + 0.009\)^20\
 & = 1 + 20 times 0.009 + 190 times\(0.009\)^2 + 1140 times\(0.009\)^3 + dots.h.c\
 & = 1 + 0.18 + 0.01539 + 0.00083106 + dots.h.c $ #noindent;可以看出，要使所求的近似值的误差不超过0.001，需取展开式中前三项的和，就是 $ \(1.009\)^20 & approx 1 + 0.18 + 0.01539 approx 1.195\
\(0.991\)^5 & =\(1 - 0.009\)^5 = 1 - 5 times 0.009 + 10 times\(0.009\)^2 + dots.h.c $ #noindent;根据精确度要求，第三项以后各项都可以删去，所以，$ \(0.991\)^5 approx 1 - 0.045 = 0.955 $

]
#exercise[
+ #block(sticky: true)[求二项展开式里系数最大的项，（系数只需用组合数符号表示，不必算出）：]

  #cols(2)[
  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + $\(a + b\)^10$

  + $\(1 + x\)^17$
  ]

  ]

+ 应用二项式定理展开 $\(x^2 + 2 x + 2\)^5$

+ $\(x + y\)^(2 n)$ 的展开式里如果第5项的系数与第13项的系数相等，求展开式里系数最大的项（系数用组合符号表示，不必算出）.

+ 求 $\(1 - x\)^13$ 的奇次项系数的和.

+ 证明：$upright(C)_n^0 + upright(C)_n^2 + upright(C)_n^4 + dots.h.c + upright(C)_n^n = 2^(n - 1)$（$n$ 为偶数）

+ 计算 $\(3.002\)^0$ 和 $\(3.998\)^5$ 误差不超过0.001的近似值.

]
#heading(level: 2, numbering: none, outlined: false)[习题2.3]

+ #block(sticky: true)[用二项式定理展开。]

  #cols(2)[
  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + $(sqrt(x) / 2 - 2 / sqrt(x))^7$

  + $(x^2 / 2 + 3 / x)^8$
  ]

  ]

+ 化简：

  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + $\(1 + sqrt(x)\)^5 +\(1 - sqrt(x)\)^5$

  + $(2 x^(tfrac(1, 2)) + 3 x^(- tfrac(1, 2)))^4 - (2 x^(tfrac(1, 2)) - 3 x^(- tfrac(1, 2)))^4$
  ]

+ #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + 求 $\(1 - 2 x\)^15$ 的展开式中前四项；

  + 求 $\(2 a^3 - 2 b^2\)^10$ 的展开式中第11项;

  + 求 $(sqrt(x) / 3 + 3 / sqrt(x))^12$ 的展开式的中间一项;

  + 求 $\(x sqrt(y) - y sqrt(x)\)^15$ 的展开式的中间两项.
  ]

+ 求下列各式的展开式中指定各项的系数。

  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + $(1 - frac(1, 2 x))^10$ 含 $1 / x^5$ 的项；

  + $(2 x^3 - frac(1, 2 x^2))^10$ 的常数项.
  ]

+ #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + $(sqrt(x) + 1 / root(3, x^2))^n$ 的展开式里第5项系数与第3项系数的比是7:2, 求展开式里含有 $x$ 的项.

  + 已知 $\(1 + x\)^n$ 的展开式里第四项与第八项的系数相等，求这两项的系数.
  ]

+ #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + 求 $(x / y - y / x)^13$ 展开式里系数最大的项.

  + 写出 $(x^2 - 1 / sqrt(x))^10$ 的展开式里系数绝对值最大的项.

  + 求 $\(1 + x + x^2\)\(1 - x\)^5$ 的展开式里的中间项.
  ]

+ 用二项式定理证明：

  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + $\(n + 1\)^n - 1$ 能被 $n^2$ 整除；

  + $99^10 - 1$ 能被1000整除.
  ]

+ 证明：

  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + $(x - 1 / x)^(2 n)$ 的展开式中常数项是 $\(- 2\)^n frac(1 dot.op 3 dot.op 5 thin dots.h.c thin \(2 n - 1\), n !)$

  + $\(1 + x\)^(2 n)$ 的展开式的中间一项是 $frac(1 dot.op 3 dot.op 5 thin dots.h.c thin \(2 n - 1\), n !)\(2 x\)^n$
  ]

+ 求证：

  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + $limits(sum)_(k = 0)^m upright(C)_(n + k)^n = upright(C)_(n + m + 1)^(n + 1)$

  + $2^n - upright(C)_n^1 2^(n - 1) + upright(C)_n^2 2^(n - 2) + dots.h.c +\(- 1\)^(n - 1) upright(C)_n^(n - 1) dot.op 2 +\(- 1\)^n = 1$

  + $limits(sum)_(k = 0)^n\(2 k + 1\)upright(C)_n^k =\(n + 1\)2^n$

  + $1 + 2 upright(C)_n^1 + upright(C)_n^2 + 2 upright(C)_n^3 + upright(C)_n^4 + 2 upright(C)_n^5 + dots.h.c + 2 upright(C)_n^(n - 1) + upright(C)_n^n = 3 dot.op 2^(n - 1)$（其中 $n$ 是偶数）
  ]

+ 求 $\(1 + x_1\)\(1 + x_2\)\(1 + x_3\) thin dots.h.c thin \(1 + x_n\)$ 的展开式里各项系数之和.

#heading(level: 2, numbering: none, outlined: false)[本章内容要点]

一、本章主要内容是排列与组合，二项式定理；重点是不许重复的排列与组合，二项式定理及其性质.

二、两个基本原理------加法原理与乘法原理，是推导排列与组合数公式的基础，也是直接解决某些计数问题的方法. 应用中，要注意区别两个原理：

加法原理与分类有关，即如果完成一件事有 $n$ 类相互独立的办法，那么求完成这件事情的方法种数，就要用加法原理；

乘法原理与分步有关，即如果完成一件事需要分 $n$ 步完成，缺一不可，而每一步又各有若干方法，那么，求完成这件事的方法种数，就要用乘法原理。

三、排列与组合的区别是看研究的问题是否与元素选取的顺序有关，与顺序有关就属于排列；与顺序无关就属于组合.

排列又分为不许重复选取的全排列与选排列、可重复的排列、环形排列；

组合又分为不许重复的组合与可重复的组合。

四、排列与组合的计数公式有：

+ 从 $n$ 个不同元素中，任取 $m$ 个没有重复的元素：

  排列数公式

  - 选排列：$upright(P)_n^m = n\(n - 1\) thin dots.h.c thin \(n - m + 1\)= frac(n !, \(n - m\)!) quad\(m < n\)$

  - 全排列：$upright(P)_n^n = n !$

  组合数公式：$upright(C)_n^m = upright(P)_n^m / upright(P)_m^m quad\(m lt.eq n\)$

  组合数的性质：$upright(C)_n^m = upright(C)_n^(n - m)\,#h(2em) upright(C)_(n + 1)^m = upright(C)_n^m + upright(C)_n^(m - 1) quad\(m lt.eq n\)$

  环形排列数公式：$upright(C)_n^m dot.op upright(P)_(m - 1)^(m - 1) =\(m - 1\)! upright(C)_n^m quad\(m lt.eq n\)$

+ 可重复的排列数与组合数公式：

  - 重复排列数 $n^m$

  - 重复组合数 $upright(H)_n^m = upright(C)_(n + m - 1)^m$

五、二项式定理指出了二项代数和的幂的展开公式。$ \(a + b\)^n = upright(C)_n^0 a^n + upright(C)_n^1 a^(n - 1) b + dots.h.c + upright(C)_n^r a^(n - r) b^r + dots.h.c + upright(C)_n^n b^n $ #noindent;其中，展开式的通项 (第 $r + 1$ 项) 为：$ upright(T)_(r + 1) = upright(C)_n^r a^(n - r) b^r $

二项式的展开式中，系数、幂指数、项数等都有很好的性质，其中主要性质有：

+ 展开式中，与首末两端“等距”的两项系数相等，二项式 $n$ 次幂的展开式共有 $n + 1$ 项.

+ 当幂指数 $n$ 为偶数时, 中间一项的系数 $upright(C)_n^(tfrac(n, 2))$ 最大 (第 $n / 2 + 1$ 项); 当 $n$ 为奇数时，中间有两项系数最大，即第 $frac(n + 1, 2)$ 项的系数 $C_n^(tfrac(n - 1, 2))$ 与第 $frac(n + 1, 2) + 1$ 项的系数 $upright(C)_n^(tfrac(n + 1, 2))$ 相等且最大.

#heading(level: 2, numbering: none, outlined: false)[复习题二]

+ #block(sticky: true)[解不等式：]

  #cols(2)[
  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + $2 < upright(P)_(m + 1)^(m + 1) / upright(P)_(m - 1)^(m - 1) lt.eq 42$

  + $x upright(P)_8^3 < upright(P)_x^3$
  ]

  ]

+ 求证：

  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + $1 ! + 2 dot.op 2 ! + 3 dot.op 3 ! + dots.h.c + n dot.op n ! =\(n + 1\)! - 1$

    （提示：$n dot.op n ! =\(n + 1\)! - n !$⁠）

  + $upright(C)_(n - 1)^m + upright(C)_(n - 2)^m + upright(C)_(n - 3)^m + dots.h.c + upright(C)_(m + 1)^m + upright(C)_m^m = upright(C)_n^(m + 1)$
  ]

+ #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + 已知 $1 / upright(C)_5^m - 1 / upright(C)_6^m = frac(7, 10 dot.op upright(C)_7^m)$⁠，求 $upright(C)_8^m$

  + 已知 $upright(C)_n^(m - 1) / 2 = upright(C)_n^m / 3 = upright(C)_n^(m + 1) / 4$⁠，求 $n$ 与 $m$.
  ]

+ 用数字0, 1, 2, 3, 4, 5组成没有重复数字的数：

  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + 能够组成多少个六位奇数？

  + 能够组成多少个大于201345的自然数？
  ]

+ 8个不同的元素排成一行：

  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + 其中某2个元素要排在一起，有多少种排法？

  + 其中某2个元素不排在一起，有多少种排法？

  + 其中某4个元素要排在一起，另外4个元素也要排在一起，有多少种排法？
  ]

+ 书架上有4本不同的数学书，5本不同的物理书，3本不同的化学书，全部竖起排成一排，如果不使同类的书分开，一共有多少种排法？

+ 从1到9这九个数字每次取出5个数字：

  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + 可以组成多少个能被25整除的五位数？

  + 可以组成多少个小于98000的五位数？

  + 可以组成多少个五位偶数？

  + 可以组成多少个奇数位是奇数，偶数位是偶数的五位数？
  ]

+ #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + 一个集合由8个不同的元素组成，这个集合中3个元素的子集有几个？

  + 一个集合由5个不同的元素组成，其中含1个，2个，3个，4个元素的子集共有几个？
  ]

+ #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + 平面内有 $n$ 条直线，其中没有两条互相平行，也没有三条相交于一点，一共有多少个交点？

  + 空间有 $n$ 个平面，其中没有两个互相平行，也没有三个相交于一直线，一共有多少条交线？

  + 平面有两组平行线，一组 $m$ 条，另一组 $n$ 条，这两组平行线相交，可以构成多少个平行四边形？

  + 空间有三组平行平面，第一组有 $m$ 个，第二组有 $n$ 个，第三组有 $ell$ 个，不同组的平面都相交，可以构成多少个平行六面体？
  ]

+ 一个班有48名学生，分成六排，每排八人

  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + 问：有多少种不同坐法？

  + 若有2人必须坐在前排，3人必须在最后一排，有多少种不同的坐法？
  ]

+ 由0至9这10个数字组成的没有重复数字的九位数字有多少个？其中能被3整除的有多少个？

+ 有 $n + 1$ 件不同的奖品，全部赠给 $n$ 个先进学生代表．如果每人至少得到一件，有多少种不同的赠送方法？

+ #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + 求 $(9 x - 1 / root(3, x))^10$ 展开式的常数项;

  + 求 $\(1 + x + x^2\)\(1 - x\)^10$ 展开式中 $x^4$ 的系数;

  + 求 $\(1 - x\)^11 + x\(1 - 2 x\)^10 - x^2\(1 - 3 x\)^9$ 展开式中 $x^5$ 的系数;

  + 求 $\(1 + 2 x - 3 x^2\)^6$ 展开式中 $x^5$ 的系数;

  + 求 $\(x^(- 1) - 1 + x\)^5$ 展开式里不含 $x$ 的项.
  ]

+ #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + 用二项式定理证明 $55^55 + 9$ 能被8整除；

  + 用二项式定理求 $89^10$ 除以88的余数．
  ]

+ 证明：$\(1 + x\)^(2 n)$ 展开式中 $x^n$ 的系数等于 $\(1 + x\)^(2 n - 1)$ 展开式中 $x^n$ 的系数的2倍．

+ 已知 $(sqrt(x) + 1 / root(3, x))^n$ 展开式的系数之和比 $\(a + b\)^(2 n)$ 展开式的系数之和小240，求：

  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + $(sqrt(x) + 1 / root(3, x))^n$ 展开式的第三项：

  + $\(a + b\)^(2 n)$ 展开式的中间项.
  ]

+ 已知 $\(1 + x\)^n$ 展开式里连续三项系数的比是3:8:14，求展开式里系数最大的项．

+ 已知 $(root(3, x^(- 2)) + x^2)^(2 n)$ 的展开式的系数之和比 $(root(3, x^(- 2)) + x^2)^n$ 的展开式的系数之和大992，求 $(root(3, x^(- 2)) - x^2)^n$ 的展开式里含 $x^(tfrac(4, 3))$ 项的系数.

+ 证明：

  #block[
  #set enum(numbering: enum-at(2, "(1)"))
  + $limits(sum)_(k = 0)^n (upright(C)_n^k)^2 = frac(\(2 n\)!, n ! dot.op n !)$

  + $upright(C)_n^0 upright(C)_m^k + upright(C)_n^1 upright(C)_m^(k - 1) + dots.h.c + upright(C)_n^k upright(C)_m^0 = upright(C)_(n + m)^k$

  + $(upright(C)_n^0 - upright(C)_n^2 + upright(C)_n^4 - dots.h.c)^2 + (upright(C)_n^1 - upright(C)_n^3 + upright(C)_n^5 - dots.h.c)^2 = upright(C)_n^0 + upright(C)_n^1 + upright(C)_n^2 + dots.h.c + upright(C)_n^n$
  ]

+ 在 $\(a - 3 b\)^35$ 的展开式中第几项的系数的绝对值最大？
