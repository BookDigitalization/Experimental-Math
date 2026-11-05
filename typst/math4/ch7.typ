// 由 typst/tools/tex2typ.py 从 math4/7.tex 转换而来，已人工校对的部分以本文件为准。
#import "../common/template.typ": *
#import "figs.typ": fig

= 数列的极限
== 数列的极限概念
在前一章中，我们已经看到任何一个实数都可以用有理数来左、右夹逼，即对于任何实数 $x$ 我们总可以用逼近法求得两个有理数列 $\{ a_n \}$, $\{ b_n \}$ 使得 $ a_1 lt.eq a_2 lt.eq dots.h.c lt.eq a_n lt.eq dots.h.c lt.eq x lt.eq dots.h.c lt.eq b_n lt.eq dots.h.c lt.eq b_2 lt.eq b_1 $ #noindent;并且 $b_n - a_n$ 可以小到任意小．

数列中的项 $a_n$ 和 $b_n$ 就是 $x$ 的第 $n$ 次不足近似值和过剩近似值，它们的误差可以用不等式 $ \|x - a_n\|< b_n - a_n\,#h(2em)\|x - b_n\|< b_n - a_n $ #noindent;来估计．这里所说的逼近的要点在于#strong[误差可以小到任意小]，下面用例子从另一个角度来说明这一点．

今以 $2 / 3$ 为例，作上述分析：

+ 以3去除2，得：

  #align(center)[
  #declongdiv("2.00", 3, max-extra: 2);

  ]
  #noindent;因为每次20除以3都余2, 所以商数6重复出现，这个除法可以无止境地作下去．

+ 上述除式的意义是 $ 2 & = 0.6 times 3 + 0.2 arrow.l.r.double.long 0.6 < 2 / 3 < 0.7\,\
   & = 0.66 times 3 + 0.02 arrow.l.r.double.long 0.66 < 2 / 3 < 0.67\,\
   & = 0.666 times 3 + 0.002 arrow.l.r.double.long 0.666 < 2 / 3 < 0.667\,\
  dots.h.c & dots.h.c thin dots.h.c thin dots.h.c thin dots.h.c thin dots.h.c thin dots.h.c thin dots.h.c $

从上面的分析，同学们可以看出 $2 / 3$ 显然不能用有限位小数表示出，但是存在着由有限位小数所成的无穷数列 $\{ a_n \}$ 和 $\{ b_n \}$ $ \{ a_n \} & : quad a_1 = 0.6\,thick a_2 = 0.66\,thick a_3 = 0.666\,thick dots.h\,thick a_n = 0 . underbrace(66 thin dots.h.c thin 66, n upright("位小数"))\,thick dots.h\
\{ b_n \} & : quad b_1 = 0.7\,thick b_2 = 0.67\,thick b_3 = 0.667\,thick dots.h\,thick b_n = 0 . underbrace(66 thin dots.h.c thin 67, n upright("位小数"))\,thick dots.h $ #noindent;满足 $ a_n = 0 . underbrace(66 thin dots.h.c thin 66, n upright("位小数")) < 2 / 3 < 0 . underbrace(66 thin dots.h.c thin 67, n upright("位小数")) = a_n + 1 / 10^n $ #noindent;并且 $a_n$ 与 $2 / 3$ 之间的误差 $lr(|a_n - 2 / 3|) < b_n - a_n = 1 / 10^n$, 同样 $b_n$ 与 $2 / 3$ 之间误差 $lr(|b_n - 2 / 3|) < 1 / 10^n$⁠，只要 $n$ 充分大，误差可以小到任意小．上面的逼近过程，表明无穷数列 $\{ a_n \}$, $\{ b_n \}$ 从左、右两方面趋近 $2 / 3$⁠，可以使其误差任意小，$2 / 3$ 就是数列 $\{ a_n \}$ 的极限，也是数列 $\{ b_n \}$ 的极限，用符号表示就是 $ lim_(n arrow.r oo) a_n = 2 / 3\,#h(2em) lim_(n arrow.r oo) b_n = 2 / 3 $ #noindent;或者用 $ a_n arrow.r 2 / 3\,#h(2em) b_n arrow.r 2 / 3\,#h(2em) a_n arrow.r 2 / 3 arrow.l b_n $ #noindent;来生动地表述上述事实．

从这里我们看到逼近与极限是密切相关的，极限只是把逼近过程推进到无穷 $\(n arrow.r oo\)$ 的结果，逼近只要误差小到所要求的精确度后就可以停止．$limits(lim)_(n arrow.r oo) a_n = 2 / 3$ 表示数列 $\{ a_n \}$ 当 $n$ 无限增大的极限值是 $2 / 3$⁠．

我们再用极限的观点对 $sqrt(2)$ 进行分析如下．$sqrt(2)$ 是一个什么数？要回答这个问题，我们只须找出有理数 $a / b$ 在什么时候大于 $sqrt(2)$, 什么时候小于 $sqrt(2)$, 也就是说，如果 $(a / b)^2 < 2$, 那么正数 $a / b < sqrt(2)$⁠；如果 $(a / b)^2 > 2$, 那么 $a / b > sqrt(2)$. 根据有理数是有序的，稠密的，因此有理数的平方总能和2比较大小，这就保证我们可以用逼近法（譬如十分逼近法）决定左、右夹逼 $sqrt(2)$ 的两个由十进位小数组成的数列 $\{ a_n \}$⁠、$\{ b_n \}$ 如下：$ \{ a_n \} & : quad a_1 = 1\,thick a_2 = 1.4\,thick a_3 = 1.41\,thick a_4 = 1.414\,dots.h\
\{ b_n \} & : quad b_1 = 2\,thick b_2 = 1.5\,thick b_3 = 1.42\,thick b_4 = 1.415\,dots.h $ #noindent;使得 $a_n < sqrt(2) < b_n$, 而且 $b_n - a_n = 1 / 10^n$, 于是 $ \|a_n - sqrt(2)\|< 1 / 10^n\,#h(2em)\|b_n - sqrt(2)\|< 1 / 10^n $ #noindent;这就是说，第 $n$ 次的有限小数近似值 $a_n$ 和 $b_n$ 与 $sqrt(2)$ 的误差分别小于 $1 / 10^n$⁠，因此，只要 $n$ 充分大，误差就可以小到任意小，当我们让这个计算过程，无穷地进行下去时，我们就说 $sqrt(2)$ 是数列 $\{ a_n \}$ 或 $\{ b_n \}$ 的极限，记做 $ lim_(n arrow.r oo) a_n = sqrt(2)\,#h(2em) lim_(n arrow.r oo) b_n = sqrt(2) $

从上面两个例子看到，实数是具有 $n$ 位数字的普通十进位小数数列，当 $n$ 无限增大时的极限．

如今我们说明了逼近与极限概念密切相关的一面，但是极限与逼近也有观点不同，概念层次也不同的方面，上面所说用十分逼近法求 $sqrt(2)$ 的近似值 $1\,1.4\,1.41\,dots.h$ 等是逼近的观点，它是先有 $sqrt(2)$ , 即我们先知道 $sqrt(2)$ 是方程 $x^2 = 2$ 的根，然后用小数去逐步逼近．极限的观点恰恰相反，它是先有一个无穷数列 $\{ a_n \}$⁠，然后要去看一下，它们是否恰好无限逼近某一个常数 $A$. 假如是这样，就叫 $A$ 是数列 $\{ a_n \}$ 的极限值．

下面介绍几个逼近某一常数的无穷数列的例子．

#example[
仔细观察数列：$ 1\,thick 1 / 2\,thick 1 / 3\,thick 1 / 4\,thick dots.h\,thick 1 / n\,thick dots.h $ #noindent;我们马上看出

+ 上述数列的每一项都是正数．

+ 上述数列逐项递减：$ 1 > 1 / 2 > 1 / 3 > dots.h.c > 1 / n > frac(1, n + 1) > dots.h.c > 0 $ #noindent;因而是一个递减有界数列．

+ 当 $n$ 愈来愈大时，$a_n = 1 / n$ 愈来愈接近0, 它们的误差 $\|a_n - 0\|= 1 / n$, 只要 $n$ 充分大，就可以小到任意小．

对于情形3，我们就说：数列 $lr(\{ 1 / n \})$ 趋近于0或收敛到0, 或0是数列 $lr(\{ 1 / n \})$ 的极限，并记作 $1 / n arrow.r 0$ 或 $limits(lim)_(n arrow.r oo) 1 / n = 0$⁠．

现在，让我们再用数轴把上述事实图解说明如下：

#figure([#fig("7-01");

  ],
  caption: [
  ]
)

在数轴上取以数列：$ 1\,thick 1 / 2\,thick 1 / 3\,thick 1 / 4\,thick dots.h\,thick 1 / n\,thick dots.h $ #noindent;的各项为坐标的各点，就得到一个点列：$ A_1\,A_2\,A_3\,A_4\,dots.h\,A_n\,dots.h\, $ #noindent;上述点列 $\{ A_n \}$ 从原点 $O$ 的右边逐步向原点逼近，而且点 $A_n$ 到原点的距离 $\|a_n - 0\|= 1 / n$⁠，只要 $n$ 充分大，就可以小到任意小．上面的事实也可以这样来说明：通常我们把 $A$ 点为中心的#strong[开区间] $\(A - epsilon\,A + epsilon\)$ 叫做这#strong[点 ]$A$#strong[ 的 ]$epsilon$#strong[ 邻域]．我们看到，原点 $O$ 的任意 $epsilon$ 邻域，包含 $lr(\{ 1 / n \})$ 的除有限个点以外的全部点．这也就是说数列 $lr(\{ 1 / n \})$ 是收敛的，并且收敛到0．

]
#example[
观察数列 $lr(\{ frac(n, n + 1) \}) : 1 / 2\,2 / 3\,dots.h\,frac(n, n + 1)\,dots.h$ 同学们容易看出，这个数列逐项递增，其各项 $a_n = frac(n, n + 1)$ 永远小于1, $a_n$ 和1之间的误差 $\|a_n - 1\|= lr(|frac(- 1, n + 1)|) = frac(1, n + 1)$⁠，只要 $n$ 充分大就可以小到任意小．这也就是说，这个数列在数轴上的对应点列，除有限个点外全部点都在点1的任意 $epsilon$ 邻域内（图7.2），因此，这个数列 $lr(\{ frac(n, n + 1) \})$ 的极限是1, 或者变量 $a_n = frac(n, n + 1)$ 的极限是1, 用符号表示就是：$ frac(n, n + 1) arrow.r 1\,quad upright("或者") quad lim_(n arrow.r oo) frac(n, n + 1) = 1 $

#figure([#fig("7-02");

  ],
  caption: [
  ]
)

]
#example[
观察数列 $(- 1 / 2)\,thick (- 1 / 2)^2\,thick (- 1 / 2)^3\,dots.h\,(- 1 / 2)^n\,thick dots.h$⁠，这个数列逐项正负相间，是摆动数列，显然，各项的绝对值 $\|a_n\|lt.eq 1 / 2$, $n = 1\,2\,3\,dots.h$⁠，因此，它又是有界的．其第 $n$ 项与数0之间的误差 $\|a_n - 0\|= (1 / 2)^n$⁠，当 $n$ 充分大时，可以小到任意小．再从数轴上看，其对应点列从原点的左、右两侧向原点逼近，而且当 $n$ 充分大时，$a_n$ 全部都在原点的任意 $epsilon$ 邻域内（图7.3），因此，这个数列 $lr(\{ (- 1 / 2)^n \})$ 的极限是0．

#figure([#fig("7-03");

  ],
  caption: [
  ]
)

]
从以上三个数列，我们看到它们的共性是在项数 $n$ 无限增大的过程中，参与在这个过程的变量 $a_n = 1 / n$, $a_n = frac(n, n + 1)$, $a_n = (- 1 / 2)^n$ 所取的值与某一个常数 $A$ 的差的绝对值 $\|a_n - A\|$（或者说它们之间的绝对误差），只要 $n$ 充分大，就可以小到任意小．它们在数轴上对应的点列，只要 $n$ 充分大，除有限个点外全部点都在点 $A$ 的任意 $epsilon$ 邻域内．

让我们把只要 $n$ 充分大，误差可以任意小的含义说得更精确些．为此，再以例7.3说明之，我们来看它的第 $n$ 项与0的误差：$ \|a_n - 0\|= lr(|(- 1 / 2)^n - 0|) = (1 / 2)^n $

当 $n$ 为何值时，$(1 / 2)^n < 0.0001$⁠．解之，得 $ n lg (1 / 2) < - 4\,quad upright("即") quad\(- 0.3010\)n < - 4 $ #noindent;$therefore quad n > 13.289$

因此，只须 $n gt.eq 14$, 就有 $ \|a_n - 0\|= (1 / 2)^n lt.eq (1 / 2)^14 = 0.000061 < 0.0001 $ #noindent;这也就是说，对于给定的0.0001, 总能找到这样一个项数，$N = 14$, 使得当 $n gt.eq 14$ 时，其误差 $ \|a_n - 0\|= (1 / 2)^n < 0.0001 $

当 $n$ 为何值时，$(1 / 2)^n < 1 / 10^8$ 只须，$ n lg (1 / 2) < - 8 $ #noindent;即 $ n > frac(- 8, - 0.3010) = 26.578 $ #noindent;因此，只须 $n gt.eq 27$ 时，就有 $ (1 / 2)^n < (1 / 2)^27 = 0.000000007 = 7 times 10^(- 9) < 10^(- 8) $

一般地，任给 $epsilon > 0$, 当 $n$ 为何值时，$(1 / 2)^n < epsilon$⁠．只须 $ n lg 1 / 2 < lg epsilon $ #noindent;即 $ n > frac(lg epsilon, - 0.3010) $ #noindent;由于 $epsilon$ 是任意小的正数，当 $epsilon < 1$ 时，$lg epsilon < 0$⁠．于是 $frac(lg epsilon, - 0.3010)$ 是正数，因此，我们总能找到这样项数 $N = (frac(lg epsilon, - 0.3010) upright("的整数部分")) + 1$⁠，使得当 $n gt.eq N$, $ \|a_n - 0\|= (1 / 2)^n < (1 / 2)^N < epsilon $

现在，我们可以给数列 $\{ a_n \}$ 的极限是 $A$ 以精确定义如下：

#blk[定义][
任给正数 $epsilon$, 总可以定出一个正整数 $N$, 使得只要 $n gt.eq N$ 时，$\|a_n - A\|< epsilon$ 都成立，我们就说数列 $\{ a_n \}$ 的#strong[极限是] $A$, 或者说数列 $\{ a_n \}$ #strong[收敛到] $A$⁠．

]
让我们再对上述定义作几点说明：

+ $epsilon$ (读成Epsilon) 是希腊字母，相当于英文字母的 $e$, 它是error（误差）的头一个字母，误差任意小的数量提法就是“小于任给正数 $epsilon$⁠”．

+ $a_n$ 是逐步逼近 $A$ 的，要使误差 $\|a_n - A\|$ 愈小（或者说够小）那就要让数列的项数 $n$ 变得够大，所以“只要 $n gt.eq N$ 时，$\|a_n - A\|< epsilon$⁠”的意义也就是：“只要 $n$ 够大，误差 $\|a_n - A\|$ 就会小到所要求的那么小！”

+ $epsilon$ 是任给的正数，是变量，但是当误差范围 $epsilon$ 一经给定之后，就为常数，我们对于这个指定的 $epsilon$ 检验是否存在具有上述性质的 $N$, 在求 $N$ 的过程中，$epsilon$ 的值不能变动，一般说来，给的 $epsilon$ 愈小，那么求得的 $N$ 愈大．

+ 定义中的当 $n gt.eq N$ 时，$\|a_n - A\|< epsilon$ 等价于当 $n gt.eq N$ 时，$A - epsilon < a_n < A + epsilon$ 或 $a_n in\(A - epsilon\,A + epsilon\)$, 这就是说，如果数列 $\{ a_n \}$ 收敛于 $A$ 则在点 $A$ 的任何 $epsilon$ 邻域内必包含这个数列的除有限个项以外的一切项．

为了帮助同学熟悉极限定义，我们在下面再举几个例子，说明 $N$ 的大小和 $epsilon$ 之间的关联，并给出证明某数是已知数列的极限的方法．

#example[
证明数列 $lr(\{ frac(n, n + 1) \})$ 的极限是1．

]
#proof[
对于任给 $epsilon > 0$⁠，要使 $ lr(|frac(n, n + 1) - 1|) = frac(1, n + 1) < epsilon $ #noindent;只须 $n + 1 > 1 / epsilon$⁠，即 $n > 1 / epsilon - 1$⁠，取 $N = (1 / epsilon - 1)$ 的整数部分 $+ 1$⁠，所以当 $n gt.eq N$ 时，可使 $ lr(|frac(n, n + 1) - 1|) = frac(1, n + 1) lt.eq frac(1, N + 1) < epsilon $ #noindent;这就是说 $limits(lim)_(n arrow.r oo) frac(n, n + 1) = 1$⁠．

]
#example[
证明数列：$1\,0\,1 / 2\,0\,1 / 3\,0\,dots.h\,0\,1 / n\,0\,dots.h$ 的极限是0．

]
#proof[
这个数列的通项公式可以写成 $ a_n = display(cases(0\, & quad upright("当") n upright("为偶数时；"), frac(2, n + 1)\, & quad upright("当") n upright("为奇数时．"))) $

对于任给 $epsilon > 0$, 因为数列 $\{ a_n \}$ 的所有偶数项为0, 所以从第二项开始以后的所有偶数项都小于给定的 $epsilon$. 现在须从奇数项中确定从哪一项开始以后的一切项与0的误差小于 $epsilon$.

令奇数项与0的误差：$frac(2, n + 1) < epsilon$⁠，即 $ n + 1 > 2 / epsilon\,#h(2em) n > 2 / epsilon - 1 $ #noindent;取 $N = (2 / epsilon - 1)$ 的整数部分加1，于是，当 $n gt.eq N$⁠，可使 $frac(2, n + 1) < epsilon$⁠．所以对于任给 $epsilon > 0$, 从第 $N$ 项开始以后的一切项都能使 $\|a_n - 0\|< epsilon$ 成立．即 $limits(lim)_(n arrow.r oo) a_n = 0$⁠．

]
#example[
证明数列 $lr(\{ frac(n^2 - 1, n^2 + n + 1) \})$ 的极限是1．

]
#proof[
对于任给 $epsilon > 0$, 要使 $ \|a_n - 1\|= lr(|frac(n^2 - 1, n^2 + n + 1) - 1|) = lr(|frac(- n - 2, n^2 + n + 1)|) = frac(n + 2, n^2 + n + 1) < epsilon $ #noindent;看看是否存在这样的 $N$, 使得当 $n gt.eq N$ 时，永远有 $\|a_n - 1\|< epsilon$⁠，可是直接从上面的不等式解出 $N$ 是不容易的，但我们注意到，当 $n$ 充分大时，在分子中起主导作用的是 $n$, 而在分母中起主导作用 $n^2$. 如果把分子扩大为 $2 n thick\(n > 2\)$, 又把分母缩小为 $n^2$, 这样有 $ \|a_n - 1\|= frac(n + 2, n^2 + n + 1) < frac(2 n, n^2) = 2 / n $

现在令 $\|a_n - 1\|< 2 / n < epsilon$⁠，即 $n > 2 / epsilon$⁠，取 $N$ 为 $2 / epsilon$ 的整数部分加1, 于是，当 $n gt.eq N$ 时，可使 $ \|a_n - 1\|< 2 / n < epsilon $ #noindent;这就是说 $limits(lim)_(n arrow.r oo) frac(n^2 - 1, n^2 + n + 1) = 1$⁠．

]
在上面的证明中，所取得的 $N$ 比实际所需要的要大一些，这样并不影响我们所要说明的问题：“$N$ 是根据预先给定的 $epsilon$ 来确定的，而且这个 $N$ 满足极限定义中的条件”，事实上，$N$ 不是由 $epsilon$ 唯一确定的，对于给定的 $epsilon > 0$, 如果某数，譬如10000可以充当极限定义中的 $N$, 则大于10000的任何一个自然数也都可以充当 $N$, 自然 $N$ 愈小愈好，但是，有时候为了便于证明，不妨把 $N$ 取得大些．问题的关键是是否存在这样的 $N$, 至于这个 $N$ 是否是最小的，那是第二位的问题．

#example[
说明数列 $lr(\{ sin^(2 n) frac(n pi, 2) \})$ 没有极限．

]
#proof[
这个数列各项的数值为 $1\,0\,1\,0\,dots.h$⁠．显然，1和0都不是这个数列的极限，因为在点1的小于1的任何邻域之外，有此数列无穷多个数值为0的偶数项，同样，在点0的小于1的任何邻域之外，有此数列无穷多个值为1的奇数项．假设数 $A eq.not 0\,1$ 并且是此数列的极限，则在点 $A$ 的任何 $epsilon$ 邻域 $\(A - epsilon\,A + epsilon\)$ 内都包含数0和1, 于是 $ 2 epsilon =\|\(A + epsilon\)-\(A - epsilon\)\|>\|1 - 0\|= 1 $ #noindent;即：$epsilon > 1 / 2$⁠．这和 $epsilon$ 是任意小的正数矛盾，因此，这个数列没有极限．

]
现在我们再来说明趋近于0的变量与收敛于某一个不等于0的常数的变量之间的关系．从前面的例7.2和例7.6, 我们看到当一个给定数列 $\{ a_n \}$ 的极限看出来等于 $A thick\(A eq.not 0\)$ 时，我们需要验证的是 $\(a_n - A\)arrow.r 0$. 这个事实就是变量 $a_n arrow.r A eq.not 0$ 的必要充分条件是 $\(a_n - A\)arrow.r 0$\. 再者 $a_n arrow.r 0$ 的必要充分条件是 $\|a_n\|arrow.r 0$⁠．

前面所举的数列的例子，除例7.7之外，都有极限，我们已经把这样的数列叫做#strong[收敛数列]．如果数列不收敛就叫做#strong[发散数列]．显然无界数列是发散数列．下面给出一些发散数列的例子．

对于一个数列 $\{ a_n \}$, 无论给出多么大的正数 $M$, 都能找到正整数 $N$, 使得当 $n gt.eq N$ 时，常有 $\|a_n\|> M$, 我们说数列是#strong[无限增大]的．

例如，$\{ n^2 \}$, $\{ - n^2 \}$, $\{\(- n\)\}$ 等数列都是无限增大的．

如果数列 $\{ a_n \}$ 是无限增大的，并且从某项以后的一切项为正数时，我们说数列 $\{ a_n \}$ 趋于#strong[正无穷大]，记作 $limits(lim)_(n arrow.r oo) a_n = + oo$⁠，例如 $limits(lim)_(n arrow.r oo) n^2 = + oo$⁠．

如果数列 $\{ a_n \}$ 是无限增大的，并且从某项以后的一切项为负数时，我们说数列 $\{ a_n \}$ 趋于#strong[负无穷大]，记作 $limits(lim)_(n arrow.r oo) a_n = - oo$. 例如 $limits(lim)_(n arrow.r oo)\(- n^2\)= - oo$⁠．

在无界数列中，也有不是无限增大的，例如，数列 $ (n sin frac(n pi, 2)) : quad 1\,0\,- 3\,0\,5\,0\,- 7\,0\,dots.h $ #noindent;是无界的，但不是无限增大的，因为它的偶数项永远等于0．

有界数列中也有发散的，例如前面例7.7的数列在两个数值0和1上摆动．

#blk[命题][
如果各项不为0的数列 $\{ a_n \}$ 是无限增大的，那么它的倒数 $b_n = 1 / a_n$ 就组成以0为极限的数列；反过来，如果各项不为0的数列 $\{ a_n \}$ 收敛到0, 那么它的倒数 $b_n = 1 / a_n$ 就组成无限增大的数列．

]
事实上，对于任意给出的无论多么小的正数 $epsilon$, 令 $M = 1 / epsilon$⁠，根据数列 $\{ a_n \}$ 是无限增大的，一定可以找到正整数 $N$, 使得当 $n gt.eq N$ 时，有 $\|a_n\|> M$ 成立，从而 $ \|b_n\|= lr(|1 / a_n|) = frac(1, \|a_n\|) < 1 / M = epsilon $ #noindent;这就是说，$limits(lim)_(n arrow.r oo) b_n = limits(lim)_(n arrow.r oo) 1 / a_n = 0$⁠．同样也可以证明逆命题．

#heading(level: 2, numbering: none, supplement: [toc-sub])[习题7.1]

+ 数列的通项公式是 $ a_n = frac(1000\[1 +\(- 1\)^n\], n)\,quad n = 1\,2\,3\,dots.h\,n\,dots.h $

  + 计算这个数列的前5项，在数轴上图示这些数值；

  + 对于 $epsilon = 1\,thick 0.1\,thick 0.01\,thick 0.0001\,thick 0.0000001$, 求出项数 $N$, 使得当 $n gt.eq N$ 时，$\|a_n\|< 1$, $\|a_n\|< 0.1$, $\|a_n\|< 0.01$, $\|a_n\|< 0.0001$, $\|a_n\|< 0.0000001$⁠；

  + 证明这个数列的极限为0．

+ #block(sticky: true)[按定义证明下面数列的极限为0．]

  #cols(2)[
  + $lr(\{ frac(n + 1, n^2 + 1) \})$

  + $lr(\{ frac(sin n, n) \})$

  + $lr(\{ frac(1 + 2 + 3 + dots.h.c + n, n^3) \})$

  + $lr(\{ frac(1, 2 sqrt(n)) \})$

  + $lr(\{ 1 / n + frac(\(- 1\)^n, n^2) \})$

  ]

+ 证明数列：$0.9\,thick 0.99\,thick 0.999\,thick dots.h$ 的极限是1.

+ 证明 $frac(3 n^5, n^5 - n^2 + 1) arrow.r 3$.

+ #block(sticky: true)[说出下面数列的变化趋向：]

  #cols(2)[
  + $lr(\{ frac(100 - 3 n, 100) \})$

  + $lr(\{ \( - 1 \)^n (frac(n - 1, n + 1))^2 \})$

  + $lr(\{ \( - 1 \)^n frac(n^2 + 1, n) \})$

  + $lr(\{ frac(1 -\(- 1\)^n, 2) n \})$

  + $lr(\{ 3 \( - 1 \)^n + 5 \})$

  + $lr(\{ n - \( - 1 \)^n \})$

  ]

== 具有极限的数列的性质
数列趋向于它们的极限时，有种种不同方式，例如在例7.1中，数列 $lr(\{ 1 / n \})$ 趋向于它的极限时，不断地减小；在例7.2中，数列 $lr(\{ frac(n, n + 1) \})$ 趋向它的极限时，不断地增大，在例7.3中，数列 $lr(\{ (- 1 / 2)^n \})$ 趋向于它的极限时，时而增大，时而减小，从极限值的两侧趋向于极限值0．

虽然数列趋向于它们各自的极限时，有各种不同的状态，但是所有这些数列都具有一系列的共同的性质，我们现在就来研究其中若干重要性质．

#blk[定理1][
若 $limits(lim)_(n arrow.r oo) a_n = A$, 而 $A > p$\(或 $A < p$), 则存在数 $N$, 当 $n gt.eq N$ 时，永远有 $a_n > p$\(或 $a_n < p$)．

]
#proof[
$because quad limits(lim)_(n arrow.r oo) a_n = A$ 让我们取定正数 $epsilon < A - p$ (或 $p - A$), 从而 $ A - epsilon > p $ #noindent;根据数列极限定义，可以找到这样的 $N$, 使得当 $n gt.eq N$ 时，有 $ A - epsilon < a_n < A + epsilon $ #noindent;于是，当 $n gt.eq N$ 时，就有 $a_n > p$ (或 $a_n < p$)．

]
定理1说明如果数列的极限大于（或小于）某一个实数，那么收敛到此极限的数列从某一项起也大于（或小于）这个实数．这个性质反映了收敛的数列和极限之间的密切关系．

#blk[定理2][
若 $limits(lim)_(n arrow.r oo) a_n = A$, 而且当 $n gt.eq N$ 时，$a_n lt.eq p$（或 $a_n gt.eq p$⁠），则 $A lt.eq p$（或 $A gt.eq p$⁠）．

]
#proof[
假设 $A > p$, 根据定理1, 当 $n gt.eq N$ 时，可使 $a_n > p$, 这与 $a_n lt.eq p$ 矛盾．

$therefore quad A lt.eq p$⁠．

]
从例7.2看到 $a_n = frac(n, n + 1) < 1$, 而 $limits(lim)_(n arrow.r oo) frac(n, n + 1) = 1$. 这个例子说明从严格的不等式 $a_n < p$ 和 $limits(lim)_(n arrow.r oo) a_n = A$, 不能推出严格的不等式 $A < p$. 而定理2是说取极限过程使不大于或不小于关系保持不变．

#blk[定理3][
若 $limits(lim)_(n arrow.r oo) a_n = A$, 则 $A$ 是唯一的．

]
#proof[
用反证法，假设 $a_n arrow.r A$ 和 $a_n arrow.r B$ 且 $A < B$, 在 $A$ 与 $B$ 之间任取一数 $R$, 设 $A < R < B$, 因为 $a_n arrow.r A$, 且 $A < R$, 所以可以找到 $N_1$, 使得当 $n gt.eq N_1$ 时，有 $a_n < R$⁠．

另一方面，$a_n arrow.r B$, 且 $B > R$, 所以可以找到 $N_2$, 使得当 $n gt.eq N_2$ 时，有 $a_n > R$⁠．

取 $N$ 为 $N_1$ 和 $N_2$ 中较大者，即 $N = max\(N_1\,N_2\)$, 则当 $n gt.eq N$ 时，就有 $a_n < R$, 同时又有 $a_n > R$, 这是不可能的，因此，数列的极限是唯一的．

]
#blk[定理4][
若 $limits(lim)_(n arrow.r oo) a_n = A$, 则数列 $\{ a_n \}$ 是有界的．

]
#proof[
由极限定义知，对于任意小正数 $epsilon$, 可以找到 $N$, 使得当 $n gt.eq N$ 时，有 $A - epsilon < a_n < A + epsilon$⁠．

设 $A - epsilon\,a_1\,a_2\,dots.h\,a_N\,A + epsilon$ 中最大的绝对值为 $M$, 则有 $\|a_n\|lt.eq M$⁠，即数列 $\{ a_n \}$ 是有界的．

]
#blk[定理5][
若三个数列 $\{ a_n \}\,\{ b_n \}\,\{ c_n \}$ 的对应项满足不等式 $a_n lt.eq b_n lt.eq c_n$, 对于一切 $n = 1\,2\,3\,dots.h$ 并且 $limits(lim)_(n arrow.r oo) a_n = limits(lim)_(n arrow.r oo) c_n = A$⁠，则 $limits(lim)_(n arrow.r oo) b_n = A$⁠．

]
#proof[
$ because quad limits(lim)_(n arrow.r oo) a_n = A\,quad limits(lim)_(n arrow.r oo) c_n = A $ #noindent;根据数列极限定义知，对于任意给定 $epsilon > 0$, 存在正整数 $N_1$, 使得当 $n gt.eq N_1$ 时，有 $ A - epsilon < a_n < A + epsilon $ #noindent;并且也存在一个正整数 $N_2$, 使得当 $n gt.eq N_2$, 有 $ A - epsilon < c_n < A + epsilon $ #noindent;令 $N = max\(N_1\,N_2\)$, 于是当 $n gt.eq N$ 时，就同时有 $ A - epsilon < a_n < A + epsilon\,#h(2em) A - epsilon < c_n < A + epsilon $ #noindent;$because quad a_n lt.eq b_n lt.eq c_n\,quad n = 1\,2\,3\,dots.h$

$therefore quad$ 当 $n gt.eq N$ 时，就有 $ A - epsilon < a_n lt.eq b_n lt.eq c_n < A + epsilon $

这就是说，$limits(lim)_(n arrow.r oo) b_n = A$⁠．

]
定理5不仅告诉我们判断 $\{ b_n \}$ 的极限存在的一种方法，而且也可用这方法来求极限．用这个方法，我们可以不去直接求 $\{ b_n \}$ 的极限，而是把它和另外两个我们熟悉的有相同极限的数列作比较．

#example[
求 $limits(lim)_(n arrow.r oo) frac(1, n (cos^2 1 / 2 n pi + n sin^2 1 / 2 n pi))$

]
#solution[
$ upright("分母") & = n (cos^2 1 / 2 n pi + n sin^2 1 / 2 n pi)\
 & = n [1 + \( n - 1 \) sin^2 1 / 2 n pi] $ #noindent;又因为 $0 lt.eq sin^2 1 / 2 n pi lt.eq 1$⁠，所以 $ 0 < n lt.eq n (cos^2 1 / 2 n pi + n sin^2 1 / 2 n pi) lt.eq n^2 $ #noindent;即 $ 1 / n^2 lt.eq frac(1, n (cos^2 1 / 2 n pi + n sin^2 1 / 2 n pi)) lt.eq 1 / n $ #noindent;此外，$limits(lim)_(n arrow.r oo) 1 / n^2 = 0\,quad limits(lim)_(n arrow.r oo) 1 / n = 0$⁠，根据定理5，$ limits(lim)_(n arrow.r oo) frac(1, n (cos^2 1 / 2 n pi + n sin^2 1 / 2 n pi)) = 0 $

]
#example[
若 $\|q\|> 1$, $n arrow.r oo$, 则变量 $\|q\|^n$ 是发散的；若 $0 < q < 1$, $n arrow.r oo$, 则 $q^n arrow.r 0$, 试证明之．

]
#proof[
在证明这个问题之前，回忆第六章例6.4，贝努里不等式：若 $n gt.eq 2$, $a > - 1$ 且 $a eq.not 0$, 则 $\(1 + a\)^n > 1 + n a$.

若 $\|q\|> 1$, 则 $\|q\|= 1 + a\,thick\(a > 0\)$, 于是 $ \|q\|^n =\(1 + a\)^n > 1 + n a $ #noindent;当 $n arrow.r oo$ 时，变量 $1 + n a$ 无限增大，是发散的，因此，$\|q\|^n$ 也是发散的．

若 $0 <\|q\|< 1$, 设 $q = 1 / q_1$, 于是 $\|q_1\|> 1$, 因而 $\|q_1\|^n > 1 + n a > 0$, 根据不等式的性质，得：$ 0 < frac(1, \|q_1^n\|) < frac(1, 1 + n a) $ #noindent;又 $limits(lim)_(n arrow.r oo) frac(1, 1 + n a) = 0\,quad lim 0 = 0$⁠，根据定理5，得：$ lim_(n arrow.r oo) frac(1, \|q_1^n\|) = 0\,quad lim_(n arrow.r oo)\|q\|^n = lim_(n arrow.r oo)\|q^n\|= 0 $ #noindent;从而，$limits(lim)_(n arrow.r oo) q^n = 0$, $0 <\|q\|< 1$⁠．

]
#example[
证明 $limits(lim)_(n arrow.r oo) frac(r^n, n !) = 0$

]
#proof[
设 $a_n = frac(r^n, n !)$⁠，因 $r$ 是常数且 $n$ 在无限增大过程中必有一自然数 $k$, 使得 $k lt.eq\|r\|< k + 1$⁠，于是 $ frac(\|r\|, k + 1) < 1 $ #noindent;又：$ \|a_n\|= lr(|frac(r^n, n !)|) & = frac(\|r\|^k, k !) (frac(\|r\|, k + 1) dot.op frac(\|r\|, k + 2) thin dots.h.c thin frac(\|r\|, n))\
 & < frac(\|r\|^k, k !) dot.op lr(|frac(r, k + 1)|)^(n - k)\
 & = frac(\|k + 1\|^k, k !) dot.op lr(|frac(r, k + 1)|)^n $ #noindent;$because quad lr(|frac(r, k + 1)|) < 1$

$therefore quad$ 当 $n arrow.r oo$ 时，$lr(|frac(r, k + 1)|)^n arrow.r 0$

$therefore quad 0 lt.eq lim_(n arrow.r oo) lr(|frac(r^n, n !)|) lt.eq lim_(n arrow.r oo) frac(\|k + 1\|^k, k !) lr(|frac(r, k + 1)|)^n = 0$

#h(2em);$(because med frac(\|k + 1\|^k, k !) upright("是常数"))$

$therefore quad lim_(n arrow.r oo) frac(r^n, n !) = 0$

]
#example[
构造一个收敛于 $sqrt(a)$ 的数列，然后证明构造的数列的极限是 $sqrt(a)$⁠．

]
#solution[
可以这样构造收敛于 $sqrt(a)$ 的数列：取 $x_1$ 是 $sqrt(a)$ 的足够接近的有理近似值，使得误差 $\|alpha_1\|< 1$⁠．于是 $ sqrt(a) = x_1 + alpha_1 $ #noindent;为估计 $alpha_1$ 的值，两边平方得 $ a = x_1^2 + 2 x_1 alpha_1 + alpha_1^2 $ #noindent;因为 $\|alpha_1\|< 1$, 故 $\|alpha_1\|^2$ 更小，可忽略不计，于是 $ a & approx x_1^2 + 2 x_1 alpha_1\
alpha_1 & approx frac(a - x_1^2, 2 x_1) $ #noindent;把 $x_1 + frac(a - x_1^2, 2 x_1) = frac(x_1^2 + a, 2 x_1)$ 作为 $sqrt(a)$ 的第二个近似值 $x_2$⁠，即：$ x_2 = frac(x_1^2 + a, 2 x_1) $

为得到更精确的近似值，重复上面的过程，用 $x_2$ 替换上面的 $x_1$, 同样得到 $sqrt(a)$ 的第三个近似值 $ x_3 = frac(x_2^2 + a, 2 x_2) $ #noindent;一般地，若求得 $sqrt(a)$ 的第 $n$ 个近似值 $x_n$, 则下一近似值可由公式#numbered-eq($ x_(n + 1) = frac(x_n^2 + a, 2 x_n) $);#noindent;求得．

现在我们来证明，这样求得的 $sqrt(a)$ 近似值数列 (7.1) 收敛到 $sqrt(a)$\. 这也就是要证明误差 $\|x_(n + 1) - sqrt(a)\|$ 可以任意地小．为此，比较相邻的两个近似值的误差：$ alpha_n = x_n - sqrt(a)\,#h(2em) alpha_(n + 1) = x_(n + 1) - sqrt(a) $ #numbered-eq($ alpha_(n + 1) = x_(n + 1) - sqrt(a) = frac(x_n^2 + a, 2 x_n) - sqrt(a) = frac((x_n - sqrt(a))^2, 2 x_n) $);#noindent;因为 $sqrt(a)$ 是算术根，其近似值 $x_n$ 均为正值．因此，$alpha_(n + 1) > 0$, 即 $alpha_2\,alpha_3\,dots.h$ 均为正数．换言之，从第二个近似值开始以后所有近似值均为过剩近似值，而第一个近似值是可以是过剩的也可以是不足的．由 (7.2) 得 $ x_(n + 1) - sqrt(a) = (frac(x_n - sqrt(a), 2 x_n)) (x_n - sqrt(a)) = (1 / 2 - frac(sqrt(a), 2 x_n)) (x_n - sqrt(a)) $ #noindent;$because quad x_n > sqrt(a)\,quad therefore quad 0 < 1 / 2 - frac(sqrt(a), 2 x_n) < 1 / 2$⁠，由此得 $ lr(|x_(n + 1) - sqrt(a)|) < 1 / 2 lr(|x_n - sqrt(a)|) < (1 / 2)^2 lr(|x_(n - 1) - sqrt(a)|) < dots.h.c < (1 / 2)^n lr(|x_1 - sqrt(a)|) $ #noindent;$therefore quad 0 lt.eq limits(lim)_(n arrow.r oo) lr(|x_(n + 1) - sqrt(a)|) lt.eq limits(lim)_(n arrow.r oo) (1 / 2)^n lr(|x_1 - sqrt(a)|)$

因为 $limits(lim)_(n arrow.r oo) (1 / 2)^n lr(|x_1 - sqrt(a)|) = 0$⁠，所以$ limits(lim)_(n arrow.r oo) lr(|x_(n + 1) - sqrt(a)|) = 0 $ #noindent;即：$limits(lim)_(n arrow.r oo) x_(n + 1) = sqrt(a)$⁠．

]
现在看看这个方法逐次逼近 $sqrt(a)$, 应用起来有多好！下面以 $sqrt(2)$ 为例：

设 $x_1 = 1$⁠，则：$ x_2 & = frac(2 + x_1^2, 2 x_1) = 3 / 2 = 1.5\
x_3 & = frac(2 + 1.5^2, 2 times 1.5) = 4.25 / 3 = 1.4166666\
x_4 & = frac(2 + 1.4166666^2, 2 times 1.4166666) = 1.4142157 $ #noindent;其误差 $alpha_4$ 的近似值为 $ \|alpha_4\|approx lr(|frac(2 - x_4^2, 2 x_4)|) = lr(|frac(2 - 1.4142157^2, 2 times 1.4142157)|) = 0.000002 $ #noindent;故 $x_4$ 是 $sqrt(2)$ 的具有6个有效数字的近似值，因此，$sqrt(2) approx 1.41421$（准确到 $2 times 10^(- 6)$⁠）．

#heading(level: 2, numbering: none, supplement: [toc-sub])[习题7.2]

+ 求 $limits(lim)_(n arrow.r oo) frac(sin frac(n pi, 2), sqrt(n^2 + n))$

+ 若 $\|phi.alt\(n + 1\)\|lt.eq k\|phi.alt\(n\)\|\,quad 0 < k < 1$⁠，求证 $limits(lim)_(n arrow.r oo) phi.alt\(n\)= 0$⁠．

+ 若 $limits(lim)_(n arrow.r oo) frac(phi.alt\(n + 1\), phi.alt\(n\)) = ell\,quad - 1 < ell < 1$⁠，求证 $limits(lim)_(n arrow.r oo) phi.alt\(n\)= 0$⁠．

+ 应用上题，求 $limits(lim)_(n arrow.r oo) frac(r^n, n !)$⁠．

+ 求 $limits(lim)_(n arrow.r oo) frac(n\(n - 1\) thin dots.h.c thin \(n - k + 1\), k !) (1 / 2)^n$⁠．

+ 设数列 $lr(\{ p_n / q_n \})$ 是一个逐步定义的有理分数数列：$ a_1 & = p_1 / q_1 = 1 / 1\,quad a_2 = p_2 / q_2 = frac(p_1 + 2 q_1, p_1 + q_1) = frac(1 + 2 times 1, 1 + 1) = 3 / 2\
  a_3 & = p_3 / q_3 = frac(p_2 + 2 q_2, p_2 + q_2) = frac(3 + 2 times 2, 3 + 2) = 7 / 5\,quad dots.h $ #noindent;由 $a_n = p_n / q_n$⁠，我们定义 $a_(n + 1) = p_(n + 1) / q_(n + 1) = frac(p_n + 2 q_n, p_n + q_n)$⁠．

  试证明：

  + 当 $a_n < sqrt(2)$ 时，那么 $a_(n + 1) > sqrt(2)$, 反之，当 $a_n > sqrt(2)$ 时，那么 $a_(n + 1) < sqrt(2)$⁠．

  + 若 $a_n$ 是 $sqrt(2)$ 的有理近似值，那么 $a_(n + 1) = frac(p_n + 2 q_n, p_n + q_n)$ 是 $sqrt(2)$ 的更好的有理近似值．

  + 试证数列 $lr(\{ p_n / q_n \})$ 收敛到 $sqrt(2)$⁠．

+ 试用例7.11的方法求 $sqrt(28)$, 准确到 $10^(- 4)$⁠．

+ 求证 $limits(lim)_(n arrow.r oo) n^beta / a^n = 0$, 这里 $a$ 为大于1的定值，$beta$ 为一整数．

== 数列极限的四则运算
#blk[定义][
给定两个变量 $a_n$ 和 $b_n$, 它们各自取数列 $\{ a_n \}$ 和 $\{ b_n \}$ 的值，如果变量 $c_n$ 取数列 $\{ a_n + b_n \}$ 的数值，即两个数列对应项的和，那么就称变量 $c_n$ 为这两个变量 $a_n$ 与 $b_n$ 的和，记作 $c_n = a_n + b_n$⁠．

]
用同样的方法，我们可以定义两个变量的差 $c_n = a_n - b_n$, 两个变量的积 $c_n = a_n dot.op b_n$, 两个变量的商 $c_n = a_n / b_n\,thick\(b_n eq.not 0\)$⁠．

#example[
已知 $a_n = 6 + 4 / n$, $b_n = 3 + 1 / n\,thick\(n = 1\,2\,3\,dots.h\)$, 求这两个变量的和、差、积、商的变量．

]
#solution[
依定义 $ a_n + b_n & = 9 + 5 / n\
a_n - b_n & = 3 + 3 / n\
a_n dot.op b_n & = (6 + 4 / n) (3 + 1 / n) = 18 + 18 / n + 4 / n^2\
a_n / b_n & = frac(6 + 4 / n, 3 + 1 / n) = frac(6 n + 4, 3 n + 1) = 2 + frac(2, 3 n + 1) $ #noindent;现在我们对这些变量求它们各自的极限值（见下表）：

#align(center)[
#text(size: 0.9em)[#table(
  columns: (auto, auto, auto, auto, auto, auto, auto, auto, auto, auto,),
  align: (center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon,),
  inset: (x: 3pt, y: 5pt),
  table.vline(x: 0),
  table.vline(x: 1),
  table.vline(x: 2),
  table.vline(x: 3),
  table.vline(x: 4),
  table.vline(x: 5),
  table.vline(x: 6),
  table.vline(x: 7),
  table.vline(x: 8),
  table.vline(x: 9),
  table.vline(x: 10),
  table.hline(),
  [变量 $without n$],
  [1],
  [2],
  [$dots.h.c$],
  [10],
  [100],
  [1000],
  [10000],
  [$dots.h.c$],
  [极限],
  table.hline(),
  [$a_n$],
  [10],
  [8],
  [$dots.h.c$],
  [6.4],
  [6.04],
  [6.004],
  [6.0004],
  [$dots.h.c$],
  [$limits(lim)_(n arrow.r oo) (6 + 4 / n) = 6$],
  table.hline(),
  [$b_n$],
  [4],
  [$3 1 / 2$],
  [$dots.h.c$],
  [3.1],
  [3.01],
  [3.001],
  [3.0001],
  [$dots.h.c$],
  [$limits(lim)_(n arrow.r oo) (3 + 1 / n) = 3$],
  table.hline(),
  [$a_n + b_n$],
  [14],
  [$11 1 / 2$],
  [$dots.h.c$],
  [9.5],
  [9.05],
  [9.005],
  [9.0005],
  [$dots.h.c$],
  [$limits(lim)_(n arrow.r oo) (9 + 5 / n) = 9$],
  table.hline(),
  [$a_n - b_n$],
  [6],
  [$4 1 / 2$],
  [$dots.h.c$],
  [3.3],
  [3.03],
  [3.003],
  [3.0003],
  [$dots.h.c$],
  [$limits(lim)_(n arrow.r oo) (3 + 3 / n) = 3$],
  table.hline(),
  [$a_n dot.op b_n$],
  [40],
  [28],
  [$dots.h.c$],
  [19.84],
  [18.18],
  [18.018],
  [18.0018],
  [$dots.h.c$],
  [$limits(lim)_(n arrow.r oo) (18 + 18 / n + 4 / n^2) = 18$],
  table.hline(),
  [$a_n\/b_n$],
  [$2 1 / 2$],
  [$2 2 / 7$],
  [$dots.h.c$],
  [2.06],
  [2.006],
  [2.0006],
  [2.00006],
  [$dots.h.c$],
  [$limits(lim)_(n arrow.r oo) (2 + frac(2, 3 n + 1)) = 2$],
  table.hline(),
)]

]
#noindent;显然有下面的等式

+ $limits(lim)_(n arrow.r oo)\(a_n + b_n\)= limits(lim)_(n arrow.r oo) a_n + limits(lim)_(n arrow.r oo) b_n = 6 + 3 = 9$

+ $limits(lim)_(n arrow.r oo)\(a_n - b_n\)= limits(lim)_(n arrow.r oo) a_n - limits(lim)_(n arrow.r oo) b_n = 6 - 3 = 3$

+ $limits(lim)_(n arrow.r oo) a_n dot.op b_n = limits(lim)_(n arrow.r oo) a_n dot.op limits(lim)_(n arrow.r oo) b_n = 6 dot.op 3 = 18$

+ $limits(lim)_(n arrow.r oo) a_n / b_n = frac(limits(lim)_(n arrow.r oo) a_n, limits(lim)_(n arrow.r oo) b_n) = 6 / 3 = 2$

]
上面这些等式，对于求变量的极限很方便，以后经常用到，于是我们得到关于极限算法定理如下：

#blk[定理][
设 $limits(lim)_(n arrow.r oo) a_n = A\,thick limits(lim)_(n arrow.r oo) b_n = B$⁠，则

+ $limits(lim)_(n arrow.r oo)\(a_n + b_n\)= limits(lim)_(n arrow.r oo) a_n + limits(lim)_(n arrow.r oo) b_n$

+ $limits(lim)_(n arrow.r oo)\(a_n - b_n\)= limits(lim)_(n arrow.r oo) a_n - limits(lim)_(n arrow.r oo) b_n$

+ $limits(lim)_(n arrow.r oo) a_n dot.op b_n = limits(lim)_(n arrow.r oo) a_n dot.op limits(lim)_(n arrow.r oo) b_n$

+ $limits(lim)_(n arrow.r oo) a_n / b_n = frac(limits(lim)_(n arrow.r oo) a_n, limits(lim)_(n arrow.r oo) b_n)$⁠，只要 $b_n eq.not 0$⁠，$limits(lim)_(n arrow.r oo) b_n eq.not 0$

]
#proof[
设 $limits(lim)_(n arrow.r oo) a_n = A\,thick limits(lim)_(n arrow.r oo) b_n = B$⁠，对于任给 $epsilon / 2 > 0$⁠，存在 $N_1$ 使得当 $n gt.eq N_1$ 时，有 $ \|a_n - A\|< epsilon / 2 $ #noindent;同样存在 $N_2$ 使得当 $n gt.eq N_2$ 时，有 $ \|b_n - B\|< epsilon / 2 $ #noindent;取 $N = max\(N_1\,N_2\)$, 于是当 $n gt.eq N$ 时，便同时有 $ \|a_n - A\|< epsilon / 2\,#h(2em)\|b_n - B\|< epsilon / 2 $ #noindent;因此，当 $n gt.eq N$ 时，有 $ \|\(a_n + b_n\)-\(A + B\)\|=\|\(a_n - A\)+\(b_n - B\)\|lt.eq\|a_n - A\|+\|b_n - B\|< epsilon / 2 + epsilon / 2 = epsilon $ #noindent;因此，$limits(lim)_(n arrow.r oo)\(a_n + b_n\)= A + B = limits(lim)_(n arrow.r oo) a_n + limits(lim)_(n arrow.r oo) b_n$ 同样地，可以证明等式2．

为了证明等式3，我们要用到加、减同一个量的方法，$ \|a_n b_n - A B\| & =\|a_n b_n - A b_n + A b_n - A B\|\
 & =\|b_n\(a_n - A\)+ A\(b_n - B\)\|\
 & lt.eq\|b_n\|dot.op\|a_n - A\|+\|A\|dot.op\|b_n - B\| $ #noindent;因此，如果 $\|b_n\|dot.op\|a_n - A\|+\|A\|dot.op\|b_n - B\|< epsilon thick\(n gt.eq N\)$⁠，等式3就一定成立．因为变量 $b_n$ 有极限，所以变量 $b_n$ 一定#strong[有界]，即存在正数 $M$, 使得 $\|b_n\|< M$. 由于这样的 $M$ 不只一个，凡比 $M$ 大的数都满足上面不等式，故我们选取 $M$ 时可以要求它也满足 $\|A\|< M$, 于是，我们这样选取自然数 $N$, 使得当 $n gt.eq N$ 时，同时成立 $ \|a_n - A\|< frac(epsilon, 2 M)\,#h(2em)\|b_n - B\|< frac(epsilon, 2 M) $ #noindent;这样，$ \|a_n b_n - A B\|< M dot.op frac(epsilon, 2 M) + frac(\|A\|epsilon, 2 M) < epsilon / 2 + epsilon / 2 = epsilon $ #noindent;因此，等式3成立．

最后来证明4．其实只证明 $limits(lim)_(n arrow.r oo) 1 / b_n = 1 / B$ 就够了，为了证明，当 $n gt.eq N$, 有 $ lr(|1 / b_n - 1 / B|) = frac(\|B - b_n\|, \|B b_n\|) =\|B - b_n\|lr(|frac(1, B b_n)|) < epsilon $ #noindent;只要能证明数列 $lr(\{ frac(1, B b_n) \})$ 是有界的就可以了．因为 $limits(lim)_(n arrow.r oo) B b_n = B limits(lim)_(n arrow.r oo) b_n = B^2 > 0$, 所以当给定 $epsilon' = B^2 / 2$, 就一定存在自然数 $N$, 使得当 $n gt.eq N$ 时，有 $ - B^2 / 2 < B b_n - B^2 < B^2 / 2 $ #noindent;即 $ B^2 / 2 < B b_n < frac(3 B^2, 2) $ #noindent;从而 $frac(2, 3 B^2) < frac(1, B b_n) < 2 / B^2$⁠，$\(because med B eq.not 0\)$⁠．

取 $M = max (lr(|frac(2, 3 B^2)|) \, lr(|frac(1, B b_1)|) \, lr(|frac(1, B b_2)|) \, dots.h \, lr(|frac(1, B b_(N - 1))|) \, lr(|2 / B^2|))$

于是，对于一切自然数 $n$, 有：$lr(|frac(1, B b_n)|) lt.eq M$⁠．因此，$ lr(|1 / b_n - 1 / B|) =\|B - b_n\|lr(|frac(1, B b_n)|) lt.eq\|B - b_n\|M $ #noindent;由于 $limits(lim)_(n arrow.r oo) b_n = B$, 我们选出自然数 $N_1$, 使得当 $n gt.eq N_1$ 时，有 $ \|B - b_n\|< epsilon / M $ #noindent;从而当 $n gt.eq N_1$ 时，有 $ lr(|1 / b_n - 1 / B|) < epsilon / M dot.op M = epsilon $ #noindent;因此，$limits(lim)_(n arrow.r oo) 1 / b_n = 1 / B$⁠，最后根据等式3，得到：$ limits(lim)_(n arrow.r oo) a_n / b_n = limits(lim)_(n arrow.r oo) a_n dot.op limits(lim)_(n arrow.r oo) 1 / b_n = A / B = frac(limits(lim)_(n arrow.r oo) a_n, limits(lim)_(n arrow.r oo) b_n)\,quad\(b_n eq.not 0\,thick B eq.not 0\) $

]
对于这个定理的应用，我们提醒几点注意：

+ 等式1和3可以推广到有限多个变量的情形，但对无穷多个变量一般不成立．

+ 定理的求极限法则是在事先假定了变量 $a_n\,b_n$ 的极限都存在的情形下得到的（在除的时候，还需分母的极限不为零），这些条件仅仅是变量 $a_n plus.minus b_n$, $a_n dot.op b_n$, $a_n / b_n$ 的极限存在的充分条件而不是必要条件，例如变量 $a_n = n + 1 / n$ 和 $b_n = - n$ 都是发散的，而 $a_n + b_n arrow.r 0$⁠；又例如 $a_n =\(- 1\)^n$⁠，$b_n =\(- 1\)^(n - 1) (1 + 1 / n)$, 而 $a_n + b_n = frac(\(- 1\)^(n - 1), n) arrow.r 0$, $a_n b_n = - (1 + 1 / n) arrow.r - 1$, $a_n / b_n = frac(- n, n + 1) arrow.r - 1$⁠．

+ 等式1---4使我们可以将有理运算同求极限过程交换先后次序，所得结果相同，这样就给求极限过程带来很大方便．

+ 在 $a_n arrow.r oo$, $b_n arrow.r oo$ 的情形下，求 $a_n plus.minus b_n$, $a_n / b_n$ 的极限，需要先对式子变形使满足定理的条件．

#example[
求 $limits(lim)_(n arrow.r oo) frac(3 n^2 + 4 n - 1, 4 n^2 - n + 3)$

]
#solution[
$ limits(lim)_(n arrow.r oo) frac(3 n^2 + 4 n - 1, 4 n^2 - n + 3) & = limits(lim)_(n arrow.r oo) frac(3 + 4 / n - 1 / n^2, 4 - 1 / n + 3 / n^2)\
 & = frac(limits(lim)_(n arrow.r oo) (3 + 4 / n - 1 / n^2), limits(lim)_(n arrow.r oo) (4 - 1 / n + 3 / n^2))\
 & = frac(3 + 0 - 0, 4 - 0 + 0) = 3 / 4 $

]
#example[
求 $limits(lim)_(n arrow.r oo) frac((1 + 1 / n)^(P + 1) - 1, 1 / n)$（$P$ 为自然数）．

]
#solution[
$ (1 + 1 / n)^(P + 1) - 1 = 1 / n [(1 + 1 / n)^P + (1 + 1 / n)^(P - 1) + dots.h.c + (1 + 1 / n) + 1] $ #noindent;显然：$ limits(lim)_(n arrow.r oo) frac((1 + 1 / n)^(P + 1) - 1, 1 / n) = limits(lim)_(n arrow.r oo) [(1 + 1 / n)^P + (1 + 1 / n)^(P - 1) + dots.h.c + (1 + 1 / n) + 1] $ #noindent;中括号内共有 $P + 1$ 项，首项是 $P$ 个 $(1 + 1 / n)$ 的乘积，应用定理知 $limits(lim)_(n arrow.r oo) (1 + 1 / n)^P = 1$, 同理知其他各项的极限为1, 故 $ limits(lim)_(n arrow.r oo) frac((1 + 1 / n)^(P + 1) - 1, 1 / n) = 1 + 1 + dots.h.c + 1 = P + 1 $

]
#example[
讨论正整数 $n$ 的有理分式 $ s\(n\)= frac(a_0 n^p + a_1 n^(p - 1) + dots.h.c + a_p, b_0 n^q + b_1 n^(q - 1) + dots.h.c + b_q) $ #noindent;当 $n arrow.r oo$ 时的变化情形．

]
#solution[
我们对 $s\(n\)$ 作变形，将它改写成下面的形式 $ n^(p - q) [frac(a_0 + a_1 / n + dots.h.c + a_p / n^p, b_0 + b_1 / n + dots.h.c + b_q / n^q)] $ #noindent;在方括号内的分式，其分子和分母都是以 $1 / n$ 为变量的多项式，因此，$ limits(lim)_(n arrow.r oo) frac(a_0 + a_1 / n + dots.h.c + a_p / n^p, b_0 + b_1 / n + dots.h.c + b_q / n^q) = a_0 / b_0 $ #noindent;现在，

- 如果 $p < q$, 那么 $limits(lim)_(n arrow.r oo) n^(p - q) = limits(lim)_(n arrow.r oo) 1 / n^(q - p) = 0$⁠；

- 如果 $p = q$, 那么 $n^(p - q) = n^0 = 1$ 且 $limits(lim)_(n arrow.r oo) n^(p - q) = 1$⁠；

- 如果 $p > q$, 那么 $limits(lim)_(n arrow.r oo) n^(p - q) = + oo$⁠．

#noindent;因此，$ limits(lim)_(n arrow.r oo) s\(n\)= display(cases(0 & quad p < q, a_0 / b_0 & quad p = q, + oo & quad p > q\,quad a_0 / b_0 > 0, - oo & quad p > q\,quad a_0 / b_0 < 0)) $

]
上面的例子说明我们只了解分子，分母的变化性态或它们的极限值，还不能判断它们比的性态，它们比的性态要由分式本身的性质来决定．因此：如果 $a_n arrow.r oo$, $b_n arrow.r oo$ 或 $a_n arrow.r 0$, $b_n arrow.r 0$ 我们就说 $a_n / b_n$ 表示 $oo / oo$ 或 $0 / 0$ 的#strong[未定式]．

#heading(level: 2, numbering: none, supplement: [toc-sub])[习题7.3]

求下列各变量的极限：

#cols(2)[
+ $limits(lim)_(n arrow.r oo) (1 / n + 3)$

+ $limits(lim)_(n arrow.r oo) frac(5 - 1\(n + 1\), n)$

+ $limits(lim)_(n arrow.r oo) (2 / n + frac(4 n - 1, n))$

+ $limits(lim)_(n arrow.r oo) (frac(5 n + 1, 2 n - 1) - 3 / 2^n)$

+ $limits(lim)_(n arrow.r oo) frac(3 n^2 + 1, 4 n^3 - n - 2)$

+ $limits(lim)_(n arrow.r oo) frac(n^2 + 4, 2 n^2 - 3 n - 4)$

+ $limits(lim)_(n arrow.r oo) frac(1000 n, n^2 + 1)$

+ $limits(lim)_(n arrow.r oo)\(sqrt(n + 1) - sqrt(n)\)$

+ $limits(lim)_(n arrow.r oo) frac(sin (n dot.op pi / 2), n)$

+ $limits(lim)_(n arrow.r oo) frac(n^2 sin n !, n^3)$

+ $limits(lim)_(n arrow.r oo) frac(3^n - 1, 2^n)$

+ $limits(lim)_(n arrow.r oo) frac(\(- 2\)^n + 3^n, \(- 2\)^(n + 1) + 3^(n + 1))$

+ $limits(lim)_(n arrow.r oo) frac(3 n^2 - 5 n + sin n, 4 n^2 + 7 n + 6)$

+ $limits(lim)_(n arrow.r oo) n / sqrt(n^2 + n)$

]
注：$n ! = 1 dot.op 2 dot.op 3 dot.op dots.h.c thin dot.op\(n - 1\)dot.op n$⁠．

== 无穷级数和无限小数
=== 无穷级数概念
有穷级数是有限个数的和，如 $ u_1 + u_2 + u_3 + dots.h.c + u_n\,quad upright("或者") quad sum_(i = 1)^n u_i $ #noindent;显然，每一个有穷级数都有确定的和．

无穷级数指无穷多个数：$u_1\,u_2\,dots.h\,u_n\,dots.h$ 连加的式子 $ u_1 + u_2 + dots.h.c + u_n + dots.h.c\,quad upright("或者") quad sum_(i = 1)^oo u_i $

由于这个式子包含无穷个加数，一般地说，我们不能指望得到最后的结果．

例如，求所有的自然数的和：$ 1 + 2 + 3 + dots.h.c + n +\(n + 1\)+ dots.h.c $ #noindent;是不能得到最后结果的．

但是对于一些特殊的无穷级数，我们可以求和．

#figure([#fig("7-04");

  ],
  caption: [
  ]
)

例如：一个单位正方形，每次取它面积的一半，累加起来，得到无穷级数，（如图7.4）$ 1 / 2 + 1 / 4 + 1 / 8 + 1 / 16 + 1 / 32 + dots.h.c $ #noindent;从这个无穷级数里，依次取出前 $n$ 项的部分和 $s_n$, 得到数列 $\{ s_n \}$⁠：$ s_1 = 1 / 2\,quad s_2 = 1 / 2 + 1 / 4 = 3 / 4\,quad s_3 = 1 / 2 + 1 / 4 + 1 / 8 = 7 / 8\,dots.h\
s_n = 1 / 2 + 1 / 4 + dots.h.c + 1 / 2^n = frac(1 / 2 [1 - (1 / 2)^n], 1 - 1 / 2) = 1 - (1 / 2)^n\,dots.h $

我们看到，这个数列 $\{ s_n \}$ 和原正方形的关系是：

+ 前 $n$ 项部分和 $s_n$ 小于1；

+ $s_n$ 与1的误差 $\|s_n - 1\|$, 只要 $n$ 充分大，就可以小到任意小．

#noindent;因此，前 $n$ 项部分和 $s_n$ 的极限是1, 即 $ lim_(n arrow.r oo) s_n = 1 $

我们可以这样理解无穷级数 $limits(display(sum))_(n = 1)^oo 1 / 2^n$ 的意义，它就是前 $n$ 项部分和 $s_n$ 的极限值，于是 $ 1 / 2 + 1 / 4 + 1 / 8 + dots.h.c + 1 / 2^n + dots.h.c = 1 $ #noindent;我们说，这个无穷级数收敛到1, 而前 $n$ 项的部分和 $s_n$ 是这个极限的近似值．

现在，我们可以赋予这一类收敛的无穷级数以和的意义．

#blk[定义][
如果无穷级数 $u_1 + u_2 + dots.h.c + u_n + dots.h.c$ 的前 $n$ 项部分和 $s_n$ 所组成的数列 $\{ s_n \}$ 有极限值，即 $limits(lim)_(n arrow.r oo) s_n = s$, 那么，这个无穷级数就叫做收敛的，并把这个确定的数 $limits(lim)_(n arrow.r oo) s_n = s$ 叫做这个无穷级数的和，即 $ sum_(n = 1)^oo u_n = limits(lim)_(n arrow.r oo) s_n = s $

]
下面我们用收敛的数列来构造收敛的无穷级数．假设数列 $\{ a_n \}$ 是收敛的，即 $limits(lim)_(n arrow.r oo) a_n = A$, 令 $b_i = a_i - a_(i - 1)\,thick i = 1\,2\,dots.h$⁠，即得一个新数列 $\{ b_n \}$⁠．无穷级数 $b_1 + b_2 + dots.h.c + b_n + b_(n + 1) + dots.h.c$ 是收敛的．

事实上，这个级数的部分和是：$ s_1 & = b_1 = a_1 - a_0\
s_2 & = b_1 + b_2 =\(a_1 - a_0\)+\(a_2 - a_1\)= a_2 - a_0\
s_3 & = b_1 + b_2 + b_3 =\(a_1 - a_0\)+\(a_2 - a_1\)+\(a_3 - a_2\)= a_3 - a_0\
dots.h.c & dots.h.c thin dots.h.c thin dots.h.c thin dots.h.c\
s_n & = b_1 + b_2 + dots.h.c + b_n =\(a_1 - a_0\)+\(a_2 - a_1\)+ dots.h.c +\(a_n - a_(n - 1)\)= a_n - a_0\
dots.h.c & dots.h.c thin dots.h.c thin dots.h.c thin dots.h.c $ #noindent;因此：#numbered-eq($ sum_(i = 1)^oo b_i & = lim_(n arrow.r oo) sum_(i = 1)^n b_i = lim_(n arrow.r oo)\(a_n - a_0\)\
 & = lim_(n arrow.r oo) a_n - a_0 $);#noindent;因此，无穷级数 $sum_(i = 1)^oo b_i$ 是收敛的．

#example[
令 $a_n = 1 - frac(1, n + 1)$⁠，$n = 0\,1\,2\,dots.h$⁠，显然 $\{ a_n \}$ 是收敛的，并且 $limits(lim)_(n arrow.r oo) a_n = 1$⁠．

令$ b_i & = a_i - a_(i - 1) = (1 - frac(1, i + 1)) - (1 - 1 / i)\
 & = 1 / i - frac(1, i + 1) = frac(1, i\(i + 1\)) $ #noindent;于是，$ frac(1, 1 dot.op 2) + frac(1, 2 dot.op 3) + frac(1, 3 dot.op 4) + dots.h.c + frac(1, n\(n + 1\)) & = lim_(n arrow.r oo) a_n - a_0\
 & = lim_(n arrow.r oo) (1 - frac(1, n + 1)) - 0 = 1 $

上面 (7.3) 式也表示，要求一个无穷级数的和 $sum_(i = 1)^oo b_i$, 常将 $b_i$ 分解，使 $b_i = a_i - a_(i - 1)$, 于是求无穷级数的和就转化为求数列 $\{ a_n \}$ 的极限．

]
#example[
求以下无穷等比级数的和．$ a_1 + a_1 q + a_1 q^2 + dots.h.c + a_1 q^(n - 1) + dots.h.c #h(2em)\(\|q\|< 1\) $

]
#solution[
我们在本章例7.9中，已经证明，若 $\|q\|< 1$, 则 $limits(lim)_(n arrow.r oo) q^n = 0$⁠．因为：$ s_n = frac(a_1\(1 - q^n\), 1 - q) = frac(a_1, 1 - q) - frac(a_1 q^n, 1 - q) $ #noindent;所以，$ limits(lim)_(n arrow.r oo) s_n = frac(a_1, 1 - q) - frac(a_1, 1 - q) limits(lim)_(n arrow.r oo) q^n = frac(a_1, 1 - q) $ #noindent;因此：$ a_1 + a_1 q + a_1 q^2 + dots.h.c + a_1 q^(n - 1) + dots.h.c = frac(a_1, 1 - q) quad\(\|q\|< 1\) $

]
为了讨论循环小数及以后的需要，让我们用下面两个定理作为本节的总结．

#blk[定理1][
无穷等比级数，$sum_(n = 1)^oo a_1 q^(n - 1)$ 收敛的充分必要条件是公比 $q$ 的绝对值 $\|q\|< 1$, 此时，它的和是 $frac(a_1, 1 - q)$,（注意这里 $q eq.not 1$⁠）．

]
#proof[
上面的例7.17已证明了 $\|q\|< 1$ 是 $sum_(n = 1)^oo a_1 q^(n - 1) = frac(a_1, 1 - q)$ 的充分条件．要证必要性，我们只须注意到，如果 $\|q\|gt.eq 1$, 那么 $a_n = a_1 q^(n - 1)$ 是发散的，于是，$sum_(n = 1)^oo a_1 q^(n - 1)$ 也是发散的（见下面的定理2）．

]
#blk[定理2][
无穷级数 $sum_(i = 1)^oo a_i$ 收敛的必要条件是 $limits(lim)_(n arrow.r oo) a_n = 0$.

]
#proof[
因为 $a_n =\(a_1 + a_2 + dots.h.c + a_n\)-\(a_1 + a_2 + dots.h.c + a_(n - 1)\)= s_n - s_(n - 1)$

由于 $sum_(i = 1)^oo a_i$ 是收敛的，故有 $ lim_(n arrow.r oo) s_n & = lim_(n arrow.r oo) s_(n - 1) = s\
lim_(n arrow.r oo) a_n & = lim_(n arrow.r oo)\(s_n - s_(n - 1)\)= lim_(n arrow.r oo) s_n - lim_(n arrow.r oo) s_(n - 1) = s - s = 0 $

]
下面的例题说明这个条件不是充分的．

#example[
$1 / 1 + 1 / 2 + 1 / 3 + dots.h.c + 1 / n + dots.h.c$ 是发散级数，为什么呢？

]
#solution[
我们首先注意到这是正项级数，因此，部分和会越来越大，而且 $ s_1 & = 1\
s_2 & = 1 + 1 / 2\
s_4 & = 1 + 1 / 2 + 1 / 3 + 1 / 4 > 1 + 1 / 2 + 1 / 4 + 1 / 4 = 1 + 1 / 2 + 1 / 2\
s_8 & = 1 + 1 / 2 + 1 / 3 + 1 / 4 + 1 / 5 + 1 / 6 + 1 / 7 + 1 / 8\
 & > 1 + 1 / 2 + 1 / 4 + 1 / 4 + 1 / 8 + 1 / 8 + 1 / 8 + 1 / 8 = 1 + 1 / 2 + 1 / 2 + 1 / 2\
dots.h.c & dots.h.c thin dots.h.c thin dots.h.c thin dots.h.c $

一般地，$ s_(2^m) gt.eq 1 + overbrace(1 / 2 + 1 / 2 + dots.h.c + 1 / 2, m upright("个")) = frac(m + 2, 2) $ #noindent;因为，当 $m$ 无限增大时，$frac(m + 2, 2)$ 越来越大毫无止境，故 $s_(2^m)$ 也发散到无穷大，又总有这样的 $n$ 满足 $2^m < n$, 故当 $n arrow.r oo$ 时，也使 $m arrow.r oo$, $s_n > s_(2^m) arrow.r oo$, 即 $s_n$ 也发散到无穷大．

注意到：$a_n arrow.r 0$, 但如果数列 $\{ s_n \}$ 中的子数列 $\{ s_(2^m) \}$ 是发散的，那么 $\{ s_n \}$ 也是发散的．

]
=== 无限小数与十分逼近
在这一节，我们要用无限十进小数来描述实数，要说明无限小数的意义，证明每一个循环小数都等于一个分数，而每一个分数都等于一个循环小数．

现在我们借助十分逼近法去规定实数的无限十进小数表示．考察某实数 $x$. 将数轴分为单位线段，各分点均为整数．点 $x$ 在某一线段内，或者本身就是一个分点．如果 $x$ 是相邻两个单位线段的分点，约定 $x$ 属于线段的左端点．于是，存在一个整数 $alpha_0$⁠，使得 $ alpha_0 lt.eq x < alpha_0 + 1\,quad upright("即") thick x in overline(A_0 B_0) =\[alpha_0\,alpha_0 + 1\) $

$alpha_0 + 1 / 10\,thick alpha_0 + 2 / 10\,thick alpha_0 + 3 / 10\,thick dots.h\,thick alpha_0 + 9 / 10$ 这些点将 $overline(A_0 B_0) =\[alpha_0\,alpha_0 + 1\)$ 分为十等份，点 $x$ 必在某一个分段内，或者 $x$ 本身是一个分点，如果是分点，约定 $x$ 属于分段的左端点，在这两种情况下，存在一个整数 $alpha_1\,thick\(0 lt.eq alpha_1 lt.eq 9\)$, 使得 $ alpha_0 + alpha_1 / 10 lt.eq x < alpha_0 + frac(alpha_1 + 1, 10) $ #noindent;即：$x in overline(A_1 B_1) = lr([alpha_0 + alpha_1 / 10 \, alpha_0 + frac(alpha_1 + 1, 10)))$⁠．

再将线段 $overline(A_1 B_1)$ 十等分，我们可以找到一个整数 $alpha_2$（$0 lt.eq alpha_2 lt.eq 9$⁠），使得 $ alpha_0 + alpha_1 / 10 + alpha_2 / 10^2 lt.eq x < alpha_0 + alpha_1 / 10 + frac(alpha_2 + 1, 10^2) $ #noindent;即：$x in overline(A_2 B_2) = lr([alpha_0 + alpha_1 / 10 + alpha_2 / 10^2 \, alpha_0 + alpha_1 / 10 + frac(alpha_2 + 1, 10^2)))$⁠．

经过 $n$ 步以后，$x$ 必在线段 $overline(A_n B_n)$ 之中，即 $ alpha_0 + alpha_1 / 10 + alpha_2 / 10^2 + dots.h.c + alpha_n / 10^n lt.eq x < alpha_0 + alpha_1 / 10 + alpha_2 / 10^2 + dots.h.c + frac(alpha_n + 1, 10^n) $ #noindent;这里 $alpha_1\,alpha_2\,dots.h\,alpha_n$ 都是0到9之间的整数，线段 $overline(A_n B_n)$ 之长度等于 $1 / 10^n$⁠，而有限十进小数 $alpha_0 . alpha_1 alpha_2 thin dots.h.c thin alpha_n$ 和 $alpha_0 . alpha_1 alpha_2 thin dots.h.c thin \(alpha_n + 1\)$ 分别是 $x$ 的准确到 $1 / 10^n$ 的不足近似值和过剩近似值．

让这个十分逼近过程无限地进行下去，那么实数 $x$ 就完全可以由无限小数 $alpha_0 . alpha_1 alpha_2 thin dots.h.c thin alpha_n thin dots.h.c$ 来表示，同时由于 $x$ 与有限小数近似值的误差 $ \|alpha_0 . alpha_1 alpha_2 thin dots.h.c thin alpha_n - x\|< 1 / 10^n\,#h(2em)\|alpha_0 . alpha_1 alpha_2 thin dots.h.c thin \(alpha_n + 1\)- x\|< 1 / 10^n $ #noindent;当 $n$ 充分大时，可以小到任意小，所以无限小数 $x = alpha_0 . alpha_1 alpha_2 thin dots.h.c thin alpha_n thin dots.h.c$ 是由有限十进小数组成的两个数列：$ alpha_0\,thick alpha_0 . alpha_1\,thick alpha_0 . alpha_1 alpha_2\,thick dots.h\,thick alpha_0 . alpha_1 alpha_2 thin dots.h.c thin alpha_n\,thick dots.h $ #noindent;与 $ \(alpha_0 + 1\)\,thick alpha_0 .\(alpha_1 + 1\)\,thick alpha_0 . alpha_1\(alpha_2 + 1\)\,thick dots.h\,alpha_0 . alpha_1 alpha_2 thin dots.h.c thin \(alpha_n + 1\)\,thick dots.h $ #noindent;的共同的极限值．

#strong[无限小数的定义]是这样的，我们取实数的小数点以下第 $n$ 位为止的有限小数 $alpha_0 . alpha_1 alpha_2 thin dots.h.c thin alpha_n$⁠，记作 $x_n$, 即 $x_n = alpha_0 . alpha_1 alpha_2 thin dots.h.c thin alpha_n$⁠，那么数列 $\{ x_n \}$ 的极限值是这个无限小数，用式子表示就是 $ lim_(n arrow.r oo) x_n = x = alpha_0 . alpha_1 alpha_2 thin dots.h.c thin alpha_n thin dots.h.c $

#example[
$2 / 3 = 0 . std.math.dot(6)$ 表示数列 $\{ x_n \}$ 的极限：$ x_1 = 0.6\,thick x_2 = 0.66\,thick x_3 = 0.666\,dots.h\,thick x_n = 0 . underbrace(66 thin dots.h.c thin 66, n upright("位小数"))\,thick dots.h $

]
#example[
无限小数 $pi = 3.1415926 dots.h.c$ 的意思是，令 $ x_1 = 3.1\,thick x_2 = 3.14\,thick x_3 = 3.141\,thick dots.h $ #noindent;那么 $x_n arrow.r pi$⁠．

]
注意，在上面我们用十分逼近得到实数 $x$ 的无限十进小数表示时，在 $x$ 是十等分的一个分点的情形，如果不限定 $x$ 属于两相邻线段的左端点，那么对于同一个整数或有限小数，可能有两类不同的无限十进小数表示法．例如 $ 1 = 1.0000 dots.h.c = 0.999 dots.h.c\,quad 2.35 = 2.35000 dots.h.c = 2.34999 dots.h.c $

为排除这种不确定性，按照我们的约定，就可以去掉那些从某一位以后所有数字都是9的十进小数表达式．

把实数写成小数形式，便于比较它们的大小．在比较时，遇到以9为循环节结尾的无限小数都用以0为循环节结尾的无限小数代替．

今有两个实数 $x = alpha_0 . alpha_1 alpha_2 thin dots.h.c thin alpha_n thin dots.h.c$ 和 $y = beta_0 . beta_1 beta_2 thin dots.h.c thin beta_n thin dots.h.c$⁠，比较这两个实数 $x$ 和 $y$ 的大小，只须比较两个数的各数位上的数字，并且注意在哪一个数位上的数字不同，从而告诉我们哪个实数大．

例如：$17 / 20 = 0.850000 dots.h.c$, $45 / 53 = 0.849056 dots.h.c$⁠，看一眼就能发觉，它们有相同的第一位小数，$17 / 20$ 的第二位小数大于 $45 / 53$ 的第二位小数，因此，$17 / 20 > 45 / 53$⁠．

一般地，我们说 $x > y$, 如果下面的条件中有一个成立

+ $alpha_0 > beta_0$

+ $alpha_0 = beta_0$⁠，而 $alpha_1 > beta_1$

+ $alpha_0 = beta_0\,alpha_1 = beta_1\,dots.h\,alpha_ell = beta_ell$⁠，而 $alpha_(ell + 1) > beta_(ell + 1)$

根据前面的讨论，我们知道任何一个实数都是两个有限十进小数的夹逼数列的极限．

设 $lim x_n = x = lim x'_n\,quad lim y_n = y = lim y'_n$, 或者 $ x_n arrow.r x arrow.l x'_n\,#h(2em) y_n arrow.r y arrow.l y'_n\
x'_n - x_n arrow.r 0\,#h(2em) y'_n - y_n arrow.r 0 $ #noindent;则对应数列的相加，我们有实数的相加，对应于数列相乘，我们有实数的相乘，也就是说：$ lim\(x_n + y_n\) & = x + y = lim\(x'_n + y'_n\)\
lim\(x_n dot.op y_n\) & = x dot.op y = lim\(x'_n dot.op y'_n\) $

例如 $sqrt(2) = 1.4142135 dots.h.c\,quad sqrt(3) = 1.7320508 dots.h.c$, $ display(cases(x_n + y_n, x'_n + y'_n)) #h(2em) display(cases(1.4 + 1.7 = 3.1, 1.5 + 1.8 = 3.3))\
display(cases(1.41 + 1.73 = 3.14, 1.42 + 1.74 = 3.16)) #h(2em) display(cases(1.414 + 1.732 = 3.146, 1.415 + 1.733 = 3.148))\
display(cases(1.4142 + 1.7320 = 3.1462, 1.4143 + 1.7321 = 3.1464)) #h(2em) display(cases(1.41421 + 1.73205 = 3.14626, 1.41422 + 1.73206 = 3.14628)) dots.h.c $ #noindent;即：$3.1 < 3.14 < 3.146 < 3.1462 < 3.14626 < dots.h.c < sqrt(2) + sqrt(3) < dots.h.c < 3.14628 < 3.1464 < 3.148 < 3.16 < 3.3$

$therefore quad sqrt(2) + sqrt(3) = 3.1462 dots.h.c$⁠．只要把 $sqrt(2)$, $sqrt(3)$ 的夹逼小数求到足够多的数位，我们用上面的方法就可以把 $sqrt(2) + sqrt(3)$ 的小数表示求到任意的数位上．

同样地得到 $ display(cases(x_n dot.op y_n, x'_n dot.op y'_n)) #h(2em) display(cases(1.4 times 1.7 = 2.38, 1.5 times 1.8 = 2.70)) #h(2em) display(cases(1.41 times 1.73 = 2.4393, 1.42 times 1.74 = 2.4708))\
display(cases(1.414 times 1.732 = 2.449048, 1.415 times 1.733 = 2.452195)) #h(2em) display(cases(1.4142 times 1.7320 = 2.4493944, 1.4143 times 1.7321 = 2.449709)) dots.h.c $

$therefore quad sqrt(6) = 2.449 dots.h.c$⁠．

在无限小数中，除了有一类#strong[无限循环小数]，还有一类#strong[无限不循环小数]，譬如，$0.1001000100001 dots.h.c$, 就是一个无限不循环小数．

现在我们要来证明每一个循环小数都等于一个分数，而每一个分数都等于一个循环小数．先举几个将无限循环小数化为分数的例子，再给出一般的证明．

#example[
怎样将循环小数 $0 . overline(621)$ 化成分数？

]
#solution[
我们可以将无限小数 $0 . overline(621)$ 表示成一个无穷级数 $ 0 . overline(621) & = 0.621 + 0.000621 + 0.000000621 + dots.h.c\
 & = 621 / 10^3 + 621 / 10^6 + 621 / 10^9 + dots.h.c $ #noindent;显然，这个无穷级数是无穷等比级数，它的首项 $a_1 = 621 / 10^3$, 公比 $q = 1 / 10^3$ 根据7.4.1中的定理1，这个无穷等比级数的和是 $frac(a_1, 1 - q)$⁠，因此：$ 0 . overline(621) & = 621 / 10^3 + 621 / 10^6 + 621 / 10^9 + dots.h.c\
 & = 621 / 10^3 dot.op frac(1, 1 - 1 / 10^3) = 621 / 10^3 dot.op frac(10^3, 10^3 - 1)\
 & = 621 / 999 = 23 / 37 $

]
#example[
试将 $0.3 overline(12)$ 化成分数．

]
#solution[
$ 0.3 overline(12) & = 0.3 + 0.0 overline(12) = 0.3 +\(0.012 + 0.00012 + dots.h.c\)\
 & = 3 / 10 + (12 / 10^3 + 12 / 10^5 + dots.h.c)\
 & = 3 / 10 + 12 / 10^3 dot.op frac(1, 1 - 1 / 10^2)\
 & = 3 / 10 + 12 / 10^3 dot.op frac(10^2, 10^2 - 1)\
 & = 3 / 10 + 12 / 10 dot.op 1 / 99 = 309 / 990 = 103 / 330 $

]
下面，我们来证明任何一个循环小数一定是一个分数．

如果 $a$ 是个循环小数，它的循环节是由第 $k + 1$ 位开始到 $k + ell$ 位，平常我们写作 $ a = a_0 . c_1 c_2 thin dots.h.c thin c_k overline(c_(k + 1) c_(k + 2) thin dots.h.c thin c_(k + ell)) $ #noindent;它的意思是 $ a & = a_0 + c_1 / 10 + c_2 / 10^2 + dots.h.c + c_k / 10^k + c_(k + 1) / 10^(k + 1) + dots.h.c + c_(k + ell) / 10^(k + ell)\
 & #h(2em) eqph + c_(k + 1) / 10^(k + ell + 1) + dots.h.c + c_(k + ell) / 10^(k + 2 ell) + c_(k + 1) / 10^(k + 2 ell + 1) + dots.h.c + c_(k + ell) / 10^(k + 3 ell) + dots.h.c $

虽然，这不是无穷等比级数，现在用结合律来构造这个无穷级数的部分和的子数列：

设 $S_1 = a_0 + c_1 / 10\,quad S_2 = a_0 + c_1 / 10 + c_2 / 10^2\,dots.h$ 于是第 $k$ 个部分和是 $ S_k = a_0 + c_1 / 10 + c_2 / 10^2 + dots.h.c + c_k / 10^k $ #noindent;再令 $ d = c_(k + 1) / 10^(k + 1) + c_(k + 2) / 10^(k + 2) + dots.h.c + c_(k + ell) / 10^(k + ell) $ #noindent;所以，$d$ 是分数，而且 $0 lt.eq d < 1$

那么，第 $k + m ell$ 个部分和是 $ S_(k + m ell) & = S_k + d + d / 10^ell + d / 10^(2 ell) + dots.h.c thin d / 10^(\(m - 1\)ell)\
 & = S_k + d (1 + 1 / 10^ell + 1 / 10^(2 ell) + dots.h.c + 1 / 10^(\(m - 1\)ell))\
 & = S_k + frac(d (1 - 1 / 10^(m ell)), 1 - 1 / 10^ell) $ #noindent;当 $m = 1\,2\,3\,dots.h$ 时，部分和 $S_(k + m ell)$ 就构成无穷级数的部分和数列 $\{ S_n \}$ 的子数列 $\{ S_(k + m ell) \}$, 并且 $ lim_(m arrow.r oo) S_(k + m ell) & = lim_(m arrow.r oo) lr(\{ S_k + frac(d (1 - 1 / 10^(m ell)), 1 - 1 / 10^ell) \})\
 & = S_k + frac(d, 1 - 1 / 10^ell) = S_k + frac(10^ell dot.op d, 10^ell - 1) = a' $ #noindent;这里 $a'$ 表示分数．我们只证明了部分和数列的子数列 $\{ S_(k + m ell) \}$ 收敛到分数 $a'$, 还需要证明部分和数列 $\{ S_n \}$ 也收敛到 $a'$.

我们只须注意到原来的循环小数所代表的无穷级数也都是正项的，这就是说，部分和数列 $\{ S_n \}$ 是递增数列，特别地，如果 $k + m ell lt.eq n < k +\(m + 1\)ell$⁠，那么 $S_(k + m ell) lt.eq S_n lt.eq S_(k +\(m + 1\)ell)$⁠，因此，如果“子数列”$\{ S_(k + m ell)\,thick m = 1\,2\,3\,dots.h \}$ 收敛到 $a'$, 原数列 $\{ S_n \}$ 也收敛到 $a'$.

我们已证明了，每个循环小数都可以化为分数，现在证明分数可以化为循环小数．

设 $a / b$ 为一任意给定的不可约真分数（亦即 $a\,b$ 互质且 $a < b$⁠）．

+ $b$ 只含有2或5的质因子，则容易看出可以化 $a / b$ 成有限位小数．

  事实上，设 $b = 2^alpha 5^beta$, $d = 5^(alpha - beta) a$, 若 $alpha gt.eq beta$⁠，则 $ a / b = frac(a, 2^alpha 5^beta) = frac(5^(alpha - beta) a, 10^alpha) = d / 10^alpha $ #noindent;为 $alpha$ 位小数．我们可以把有限位小数看成循环小数的特例．如：$ frac(1237, 2 times 5^3) = frac(1237 times 2^2, 10^3) = 4.948 = 4.948 overline(0) $

+ 设 $b$ 与10互质，即：$\(b\,10\)= 1$, 根据整数分解的唯一性而知 $a / b$ 不可能写成 $m / 10^k$ 的形式，这里 $m$ 为正整数，故 $a / b$ 不可能化为有限小数．做除法，我们得到 $ 10 a = b q_1 + r_1\,#h(2em) 0 < r_1 < b $ #noindent;两边再除以 $b$, 得 $ frac(10 a, b) = q_1 + r_1 / b\,#h(2em) 0 < r_1 / b < 1 $

  这里 $q_1$ 是 $0\,1\,2\,dots.h\,9$ 这十个整数中的某个．用和上面同样的方法，逐步得到 $ frac(10 r_1, b) & = q_2 + r_2 / b\,#h(2em) 0 < r_2 / b < 1\,\
  frac(10 r_2, b) & = q_3 + r_3 / b\,#h(2em) 0 < r_3 / b < 1\,\
  dots.h.c & dots.h.c thin dots.h.c thin dots.h.c thin dots.h.c\
  frac(10 r_(n - 1), b) & = q_n + r_n / b\,#h(2em) 0 < r_n / b < 1 $ #noindent;这里每个 $q_n$ 是 $0\,1\,2\,dots.h\,9$ 这十个整数中的某个，于是 $ a / b & = q_1 / 10 + frac(r_1, 10 b)\
   & = q_1 / 10 + q_2 / 10^2 + frac(r_2, 10^2 b)\
   & = q_1 / 10 + q_2 / 10^2 + q_3 / 10^3 + frac(r_3, 10^3 b)\
  dots.h.c & dots.h.c thin dots.h.c thin dots.h.c thin dots.h.c\
   & = q_1 / 10 + q_2 / 10^2 + dots.h.c + q_n / 10^n + frac(r_n, 10^n b) $

  再设 $ x_n & = q_1 / 10 + q_2 / 10^2 + dots.h.c + q_n / 10^n\
  y_n & = q_1 / 10 + q_2 / 10^2 + dots.h.c + frac(q_n + 1, 10^n)\
  d_n & = frac(r_n, 10^n b) < 1 / 10^n $ #noindent;则：$ a / b = x_n + d_n\,#h(2em) 0 < d_n < 1 / 10^n $

  再有 $x_1 < x_2 < dots.h.c < x_(n - 1) < x_n < dots.h.c < y_n < y_(n - 1) < dots.h.c < y_2 < y_1$⁠，且 $y_n - x_n arrow.r 0$⁠．

  当 $n$ 无限增大时，根据实数完备性，无限小数 $ sum_(n = 1)^oo q_n / 10^n = 0 . q_1 q_2 thin dots.h.c thin q_n thin dots.h.c $ #noindent;表示一实数，又因为，$d_n arrow.r 0$, 故我们确定了一个其值为 $a / b$ 的无限小数 $0 . q_1 q_2 thin dots.h.c thin q_n thin dots.h.c$⁠．

  再说明这个无限小数一定是纯循环小数，设 $a = r_0$, 因为 $r_0\,r_1\,r_2\,dots.h\,r_n\,dots.h$ 是一串大于0而小于 $b$ 的正整数，这种正整数只有 $b - 1$ 个不同的，所以，这一串数 $r_0 = a\,r_1\,r_2\,dots.h r_n\,dots.h$ 必然有二者会相同，就假定 $r_k$ 为首先出现的重见余数，假定这两个相同的余数是 $r_k$ 和 $r_i$, 即有 $r_k = r_i$. 现在我们要证明 $r_i$ 只能是 $a = r_0$, 用反证法，若 $i > 0$ 则由等式 $frac(10 r_(k - 1), b) = q_k + r_k / b$ 和 $frac(10 r_(i - 1), b) = q_i + r_i / b$ 两边作减法，得到 $ frac(10\(r_(k - 1) - r_(i - 1)\), b) = q_k - q_i $ #noindent;因为 $q_k - q_i$ 是整数，所以 $b$ 能整除 $10\(r_(k - 1) - r_(i - 1)\)$, 由于 $b$ 与10互质，故 $b$ 能整除 $r_(k - 1) - r_(i - 1)$⁠，但是 $r_(k - 1) - r_(i - 1) < b$, 所以 $r_(k - 1) - r_(i - 1) = 0$, 即 $r_(k - 1) = r_(i - 1)$ 重见更早，与原设 $r_k$ 为首先出现的重见余数不合，故 $i = 0$⁠．

  $therefore quad r_k = r_0 = a$, 这样 $ a / b = 0 . overline(q_1 q_2 thin dots.h.c thin q_(k - 1) q_k) $

+ 设 $b = 2^alpha 5^beta b_1$, 而 $b_1 > 1$ 且与10互质，又 $alpha$ 与 $beta$ 均不为0, 若 $alpha gt.eq beta$, $ a / b = frac(a, 2^alpha 5^beta b_1) = frac(5^(alpha - beta) a, 10^alpha b_1) $ #noindent;做 $5^(alpha - beta) a$ 除以 $b_1$, 得 $ 5^(alpha - beta) a = M b_1 + r\,quad 0 < r < b_1 $ #noindent;$M$ 是一个正整数，两边再除以 $b_1$, 得 $ 5^(alpha - beta) a / b_1 = M + r / b_1\,#h(2em) 0 < r / b_1 < 1 $ #noindent;由前段证明2的结果 $ r / b_1 = 0 . overline(c_1 c_2 thin dots.h.c thin c_s) $ #noindent;故，$ a / b & = frac(5^(alpha - beta) a, 10^alpha b_1) = 1 / 10^alpha (M + 0 . overline(c_1 c_2 thin dots.h.c thin c_s))\
   & = 1 / 10^alpha (M . overline(c_1 c_2 thin dots.h.c thin c_s)) $

  当以 $10^alpha$ 除以 $M . overline(c_1 c_2 thin dots.h.c thin c_s)$ 时，也就是将小数点左移 $alpha$ 位，我们得到 $ a / b = 0 . m_1 m_2 thin dots.h.c thin m_alpha overline(c_1 c_2 thin dots.h.c thin c_s) $ #noindent;为混循环小数．

若 $alpha lt.eq beta$, 可以用同样的方法说明 $a / b$ 为一混循环小数，因此有

#blk[定理][
任何一个分数都等于某一个循环小数，任何一个循环小数必然是个分数．

]
如果采用无限十进小数来描述实数，我们按照下表来对实数分类：$ upright("实数——无限十进小数") display(cases(upright("有理数—无限十进循环小数"), upright("无理数—无限十进不循环小数"))) $

#heading(level: 2, numbering: none, supplement: [toc-sub])[习题7.4]

+ #block(sticky: true)[求下列无穷等比数列的和：]

  #cols(2)[
  + $1 / 2 + 1 / 3 + 2 / 9 + dots.h.c$

  + $1 - 2 / 5 + 4 / 25 - dots.h.c$

  + $sqrt(3 / 2) + sqrt(2 / 3) + 2 / 3 sqrt(2 / 3) + dots.h.c$

  + $frac(sqrt(3) + 1, sqrt(3) - 1) + 1 + frac(sqrt(3) - 1, sqrt(3) + 1) + dots.h.c$

  ]

+ 若 $a\,b$ 是实数且 $lr(|frac(a + 2 b + 3, b + 3)|) + 3\(a + 3 b\)^2 = 0$, 求等比级数 $a b + b + b / a + dots.h.c$ 的和．

+ 已知 $sqrt(3) sin alpha - cos alpha = 0$, $alpha$ 为锐角，求 $sum_(n = 0)^oo\(- sin alpha\)^n$

+ 求下列无穷级数的和：

  + $frac(1, 1 times 4) + frac(1, 2 times 5) + frac(1, 3 times 6) + frac(1, 4 times 7) + dots.h.c$

  + $frac(6, 2 times 7) + frac(6, 7 times 12) + frac(6, 12 times 17) + frac(6, 17 times 22) + dots.h.c$

  + $frac(1, 1 times 2 times 3) + frac(1, 2 times 3 times 4) + frac(1, 3 times 4 times 5) + frac(1, 4 times 5 times 6) + dots.h.c$

  + $frac(1, 1 times 2 times 3 times 4) + frac(1, 2 times 3 times 4 times 5) + frac(1, 3 times 4 times 5 times 6) + frac(1, 4 times 5 times 6 times 7) + dots.h.c$

  + $1 / 7 + 2 / 7^2 + 3 / 7^3 + 1 / 7^4 + 2 / 7^5 + 3 / 7^6 + 1 / 7^7 + 2 / 7^8 + 3 / 7^9 + dots.h.c$

+ 求下列各式的极限值：

  + $limits(lim)_(n arrow.r oo) frac(1 + a + a^2 + dots.h.c + a^n, 1 + b + b^2 + dots.h.c + b^n) #h(2em)\(\|a\|< 1\,thick\|b\|< 1\)$

  + $limits(lim)_(n arrow.r oo) (1 / n - 2 / n + 3 / n - dots.h.c + frac(\(- 1\)^(n - 1) n, n))$

  + $limits(lim)_(n arrow.r oo) (1^2 / n^3 + 2^2 / n^3 + dots.h.c + frac(\(n - 1\)^2, n^3))$

  + $limits(lim)_(n arrow.r oo) (1 / 2 + 3 / 2^2 + 5 / 2^3 + dots.h.c + frac(2 n - 1, 2^n))$

+ $limits(lim)_(n arrow.r oo) (1 - 1 / 2^2) (1 - 1 / 3^2) (1 - 1 / 4^2) thin dots.h.c thin (1 - 1 / n^2)$

+ 数列 $x_n thick\(n = 1\,2\,3\,dots.h\)$ 是由下列各式所确定：$ x_0 = a\,thick x_1 = b\,thick x_n = frac(x_(n - 2) + x_(n - 1), 2) quad\(n gt.eq 2\) $ #noindent;求 $limits(lim)_(n arrow.r oo) x_n$.

+ 将下列循环小数化为分数：$ 0 . overline(47)\,#h(2em) 2 . overline(234)\,#h(2em) 0.4 overline(7)\,#h(2em) 3.2 overline(31)\,#h(2em) 0 . overline(1108)\,#h(2em) 5.38 overline(90) $

+ 求出下列各式的值：

  + $0.4 overline(8) times 0 . overline(48)$

  + $0 . overline(12) + 0 . overline(23) + 0 . overline(34) + dots.h.c + 0 . overline(89)$

  + $0 . overline(15) + 0.0 overline(15) + 0.00 overline(15) + dots.h.c$

== 数列极限在几何上的应用
在平面几何中，我们知道了什么是相似形，而且知道研究相似形的基本定理是“设 $triangle.stroked.t A B C$ 和 $triangle.stroked.t A' B' C'$ 的三个内角对应相等，则其对应边长成比例”．在初中时，我们证明了当比值是有理数时，定理是对的，现在要补充推证，在比值是无理数时，定理也是对的，这样这个定理的证明才是完整的．

#proof[
设 $A B = k A' B'$, 这里 $k$ 是无理数，我们要证明 $ frac(A C, A' C') = frac(B C, B' C') = k $ #noindent;我们知道任何一个无理数可以用有理数来逼近，于是可以找到两串有理数 $k'_n\,k''_n$ 从左、右夹逼无理数 $k$ 使得 $ k'_n arrow.r k arrow.l k''_n\,quad upright("或者") quad lim_(n arrow.r oo) k'_n = lim_(n arrow.r oo) k''_n = k $ #noindent;比如，$k$ 是特殊的情形，$k = sqrt(2)$⁠，则可取 $ k'_1 & = 1\,quad k'_2 = 1.4\,quad k'_3 = 1.41\,thick dots.h\
k''_1 & = 2\,quad k''_2 = 1.5\,quad k''_3 = 1.42\,thick dots.h $

#figure([#fig("7-05");

  ],
  caption: [
  ]
)

如图7.5, 在直线 $A B$ 上取点列 $\{ B_n \}$ 和 $\{ macron(B)_n \}$ 使得 $ A B_n = k'_n A' B'\,#h(2em) A macron(B)_n = k''_n A' B' $ #noindent;再由 $B_n$, $macron(B)_n$ 点分别作 $B C$ 边平行线交 $A C$ 线于 $C_n$, $macron(C)_n$ 点，则因为相似三角形定理对有理数比值是对的，所以 $ triangle.stroked.t A B_n C_n tilde.rev triangle.stroked.t A macron(B)_n macron(C)_n tilde.rev triangle.stroked.t A' B' C' $ $ frac(A B_n, A' B') & = frac(A C_n, A' C') = frac(B_n C_n, B' C') = k'_n\
frac(A macron(B)_n, A' B') & = frac(A macron(C)_n, A' C') = frac(macron(B)_n macron(C)_n, B' C') = k''_n $ #noindent;由作图知 $ k'_n A' B' = A B_n < A B < A macron(B)_n = k''_n A' B' $ #noindent;并可得 $ k'_n A' C' & = A C_n < A C < A macron(C)_n = k''_n A' C'\
k'_n B' C' & = B_n C_n < B C < macron(B)_n macron(C)_n = k''_n B' C' $ #noindent;对上面不等式各端取极限，得到 $ lim_(n arrow.r oo) k'_n A' C' = lim_(n arrow.r oo) k''_n A' C' = k A' C' $ #noindent;另一方面又可得到 $ lim_(n arrow.r oo) k'_n A' C' = lim_(n arrow.r oo) k''_n A' C' = A C $ #noindent;根据数列的极限值是唯一的，因此 $A C = k A' C'$, 同理可得 $B C = k B' C'$⁠．

]
总结上面的证明可以归纳成下面两点：

+ 先有一个数 $k$, 因为它是无理数，比较复杂，往往我们要用简单的有理数逐步逼近它；

+ 在求极限过程中，要点是要用极限值的唯一性保证所要的结论．

在几何上，$pi$ 表示单位圆的面积，这个面积显然能用一个有理数或无理数来表示，可是，如果我们想要以任何精确度计算出数 $pi$⁠，这个定义对于我们来说并没有什么帮助．这时，我们必须借助于求极限的过程，把数 $pi$ 表示为已知并且不难算出的数列的极限，除此外别无它法．

假如我们把单位圆等分成 $2 n$ 个小扇形，然后一上一下间插排列起来，如图7.6.

#figure([#fig("7-06");

  ],
  caption: [
  ]
)

当 $n$ 愈大时，上图就愈接近一个高为1, 面积为 $pi$ 的矩形．这也就说明了单位圆的圆周长等于 $2 pi$⁠．

早在三国时代，我国古代数学家刘徽于公元263年在《九章算术》中，对古率 $pi = 3$ 极为不满，就提出了用折线逐步地来逼近曲线，用正多边形的面积来逐步地逼近圆的面积的思想，他说如果圆内接正六边形，正十二边形，二十四边形……依次递求它的面积，边数愈增多则其面积与圆面积愈加接近，如果边数增加到无限则多边形面积的极限就与圆面积相等．

设 $pi$ 为单位圆面积，$S_n$ 为单位圆的内接正 $n$ 边形的面积，$S'_n$ 为单位圆的外切正 $n$ 边形的面积，如图7.7, 对于每一个 $n$, 从几何直观上作如下估计

#figure([#fig("7-07");

  ],
  caption: [
  ]
)

$S_n < S_(2 n) < pi < S'_(2 n) < S'_n$⁠，#strong[刘徽]的计算理论基础是，$\|S_n - pi\|< S'_n - S_n$, 在 $n$ 无限增大时，$\(S'_n - S_n\)arrow.r 0$. 从图7.7看出：$ S'_n & = 2 n upright("直角三角形的面积") = 2 n dot.op 1 / 2 tan pi / n = n tan pi / n\
S_n & = 2 n upright("直角三角形的面积") = 2 n dot.op 1 / 2 cos pi / n dot.op sin pi / n = n sin pi / n dot.op cos pi / n $

$ S'_n - S_n & = n (tan pi / n - sin pi / n dot.op cos pi / n)\
 & = n sin pi / n (frac(1, cos pi / n) - cos pi / n)\
 & = 1 / 2\(upright("圆内接") n upright("边形周长")\)(frac(1, cos pi / n) - cos pi / n)\
 & < 1 / 2\(upright("圆外切六边形周长")\)(frac(1, cos pi / n) - cos pi / n) arrow.r 0 $

这就说明了由圆内接正多边形的面积所组成的数列 $\{ S_(6 dot.op 2^(n - 1)) \}$ 的极限是 $pi$.

让我们计算这个数列中的前面几个面积．面积的通项是 $ S_(6 dot.op 2^(n - 1)) = 6 dot.op 2^(n - 1) (1 / 2 sin frac(pi, 3 dot.op 2^(n - 1))) = 3 dot.op 2^(n - 1) sin frac(pi, 3 dot.op 2^(n - 1)) quad\(n = 1\,2\,3\,dots.h\) $

为由 $sin pi / n$ 求出 $sin frac(pi, 2 n)$, 我们需要导出它们之间的递推关系：$ sin frac(pi, 2 n) & = sqrt(frac(1 - cos pi / n, 2))\
 & = 1 / 2 sqrt(2 - 2 cos pi / n)\
 & = 1 / 2 sqrt(2 - 2 sqrt(1 - sin^2 pi / n)) $ #noindent;于是：

- 当 $n = 1$, $S_6 = 3 dot.op sin pi / 3 = 2.5980762$,

- 当 $n = 2$, $S_12 = 6 dot.op sin pi / 6 = 3$,

- 当 $n = 3$, $ S_24 & = 12 dot.op sin pi / 12 = 12 (1 / 2 sqrt(2 - 2 sqrt(1 - (1 / 2)^2)))\
   & = 12 dot.op (1 / 2 sqrt(2 - sqrt(3))) = 12 times 0.258819 = 3.1058285 $

- 当 $n = 4$, $ S_48 & = 24 dot.op sin pi / 24 = 24 (1 / 2 sqrt(2 - 2 sqrt(1 - 0.258819^2)))\
   & = 24 times 0.1305262 = 3.132629 $

- 当 $n = 5$, $ S_96 & = 48 dot.op sin pi / 48 = 48 (1 / 2 sqrt(2 - 2 sqrt(1 - 0.1305262^2)))\
   & = 48 times 0.0654031 = 3.1393515 $

- 当 $n = 6$, $ S_192 & = 96 dot.op sin pi / 96 = 96 (1 / 2 sqrt(2 - 2 sqrt(1 - 0.0654031^2)))\
   & = 96 times 0.032719 = 3.1410307 $

现在我们对 $pi$ 的近似值 $S_192 approx 3.1410307$ 的误差作如下估计 $ \|S_192 - pi\| & < 192 (tan pi / 192 - 1 / 2 sin pi / 96)\
 & = 192 (0.0163639 - 1 / 2 times 0.032719)\
 & = 0.000845 $ #noindent;刘徽定 $pi approx 3.14$, 后世称之为#strong[徽率]，在#strong[刘徽]以后重新推算圆周率贡献最大的是南朝#strong[祖冲之]（公元429---500年）．祖冲之的著名结果为 $ 3.1415926 < pi < 3.1415927\
upright("密率") pi = 355 / 113\,#h(2em) upright("约率") pi = 22 / 7 $ #noindent;全世界定圆周率值准确到 $1 / 10^7$ 的，当推#strong[祖冲之]为第一人．

#heading(level: 2, numbering: none, supplement: [toc-sub])[习题7.5]

+ 联结三角形 $A B C$ 三边的中点 $D\,E\,F$, 作三角形 $D E F$, 再联结 $triangle.stroked.t D E F$ 各边之中点，作 $triangle.stroked.t G H I$, 如此下去，求所得一切三角形面积之总和与原三角形面积之比．

+ 从 $angle B A C$ 边上一点 $B$ 起，作 $B C tack.t A C$, 从 $C$ 作 $C D tack.t A B$, 从 $D$ 再作 $D E tack.t A C$, 这样无限继续下去，设 $B C = 7$⁠cm, $C D = 6$⁠cm, 求这些垂线的和（图7.8）．

+ 有一束射线，每相邻两条射线间的夹角为 $alpha$⁠，从一条射线上任一点对其紧邻的一射线作垂线 $S_0$, 从它的垂足再对下一射线作垂线 $S_1$, 依此类推（图7.9）．问：$limits(lim)_(n arrow.r oo)\(S_0 + S_1 + S_2 + dots.h.c + S_n + dots.h.c\)= ?$

  #align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("7-08");], caption: []), figure([#fig("7-09");], caption: []))));

+ 直角三角形三边之长分别为3,4,5, 作一圆内切于此三角形，再作一圆外切于此圆，并切于三角形的斜边和边长为4的直角边，如此继续作下去，则得到一个切圆的序列，求这些圆的面积之和．

== 数列极限存在定理
前面在引进数列极限的定义时，所考虑的许多数列的极限都是已经知道的，然后再用数列极限的定义来验证，如果数列极限的概念仅能给出这样的认识，即一些已知数能够用另一些已知数的某些数列来逼近，那么我们从极限概念所得到的东西太少了．但是数列的一个最为重要的应用在于，有些问题所要确定的数值往往不能用别的方法直接得知或表示，却能用数列极限方式来表示．例如我们用有理数逼近无理数，又在上一节用圆内接正多边形的面积来逼近圆面积，求出 $pi$ 的数值等，这样的例子就是数列极限重要应用的典型例子．因此我们构造的数列是否收敛就成为第一位重要问题了．对于一个数列 $\{ a_n \}$ 的极限，事实上应该分成两个层次来讨论．

+ 存在性．即数列 $\{ a_n \}$ 是否有极限存在？

+ 求值问题．假如已经确定了给定数列 $\{ a_n \}$ 的极限存在，我们再设法求它的极限值，其实只要确定了 $\{ a_n \}$ 的极限存在，那么这个极限值就是一个实数，而数列 $\{ a_n \}$ 就是它的逐次逼近的近似数值，要点是去了解数列的性质，总之求值问题是个比较次要的问题了．

下面给出一个比较简单的极限存在定理．

#blk[定理][
递增有上界的数列 $\{ a_n \}$ 极限存在（同样递减，有下界数列 $\{ a_n \}$ 的极限也存在）．

]
例如：数列 $lr(\{ frac(n^2 - 1, n^2) \})$ 符合定理的条件，因为 $0\,thick 3 / 4\,thick 8 / 9\,thick 15 / 16\,thick 24 / 25\,thick dots.h$ 显然是递增的，同时 $a_n = frac(n^2 - 1, n^2) = 1 - 1 / n^2 < 1$, 也就是说，它是有界的，而且容易看出数列的极限值是1, 事实上 $ lim_(n arrow.r oo) frac(n^2 - 1, n^2) = lim_(n arrow.r oo) (1 - 1 / n^2) = 1 - 0 = 1 $

下面的证明可以说是将二分逼近和实数完备性配合运用的典型例子，在这儿是初次用到，往后还会遇到相似的配合用法．其实，只要能基本上理解命题意义和证明大意，就可以先去学习它的应用，往往用了几次后再回头看第二遍，也就更加明白了．

#proof[
一个使得 $a_n lt.eq K$ 恒成立的常数 $K$ 叫做 $\{ a_n \}$ 的一个#strong[上界]．下面我们将用二分逼近法和完备性来说明 $\{ a_n \}$ 的极限等于它的#strong[最小上界]（因为 $\{ a_n \}$ 是递增的）．

令 $A_1 = a_1$, $B_1 = K$, 由假设 $A_1 = a_1 lt.eq a_n lt.eq K = B_1$, 即所有 $a_n$ 都在线段 $\[A_1\,B_1\]$ 之内，将线段 $\[A_1\,B_1\]$ 二等分，假如分点 $1 / 2\(A_1 + B_1\)$ 还是一个上界（即 $a_n lt.eq frac(A_1 + B_1, 2)$ 恒成立），则取前半段为 $\[A_2\,B_2\]$, 不然则取后半段为 $\[A_2\,B_2\]$. 这样逐次二等分，每次当分点 $1 / 2\(A_m + B_m\)$ 是一个上界时，取其前半段，不然则取其后半段，继续不断地按照上述办法二等分而选取其半段，就得到满足下列性质的两个夹逼数列 $\{ A_n \}$ 和 $\{ B_n \}$⁠：

+ $A_1 lt.eq A_2 lt.eq A_3 lt.eq dots.h.c lt.eq A_m lt.eq dots.h.c lt.eq B_m lt.eq dots.h.c lt.eq B_3 lt.eq B_2 lt.eq B_1$, $\(B_m - A_m\)arrow.r 0$

+ 所有 $B_m$ 都是数列 $\{ a_n \}$ 的上界．

+ 对于任何 $A_m$, 都至少有一个 $a_N$ 使得 $A_m < a_N$, 换言之，线段 $\[A_m\,B_m\]$ 至少包含一个点，比如 $a_N$（由 $\{ a_n \}$ 的递增性，所有 $n gt.eq N$ 也满足 $A_m < a_n$⁠）．

因此，由性质1和实数完备性就得到唯一的实数 $k$, 介于一切 $A_m$ 和 $B_m$ 之间，换言之，存在唯一实数 $k$ 使得 $limits(lim)_(m arrow.r oo) A_m = k = limits(lim)_(m arrow.r oo) B_m$

现在让我们来说明 $k$ 也就是 $\{ a_n \}$ 的极限！设 $epsilon$ 是一个任给的正数，因为 $limits(lim)_(m arrow.r oo) A_m = k = limits(lim)_(m arrow.r oo) B_m$ 所以存在足够大的 $M$, 使得（如图7.10）

#figure([#fig("7-10");

  ],
  caption: [
  ]
)

#numbered-eq($ k - epsilon < A_M lt.eq k lt.eq B_M < k + epsilon $);#noindent;由性质3知道，存在一个够大的 $N$, 使得#numbered-eq($ A_M < a_N $);#noindent;由性质2知道，$B_M$ 是一个上界，即恒有#numbered-eq($ a_N lt.eq B_M $);#noindent;由 $\{ a_n \}$ 的递增性，当 $n gt.eq N$ 时，有#numbered-eq($ a_N lt.eq a_n $);#noindent;综合上述 (7.4)---(7.7) 四点，就说明了当 $n gt.eq N$ 时，有 $ k - epsilon < A_M lt.eq a_N lt.eq a_n < B_M < k + epsilon $ #noindent;亦即 $\|a_n - k\|< epsilon$, 这也就说明了 $limits(lim)_(n arrow.r oo) a_n = k$⁠．

]
#example[
应用本节存在定理，求 $limits(lim)_(n arrow.r oo) frac(r^n, n !)$⁠．

]
#solution[
设 $x_n = frac(r^n, n !)$⁠，则 $ \|x_(n + 1)\|= frac(\|r\|, n + 1)\|x_n\| $ #noindent;所以只在 $n >\|r\|- 1$ 时，数列 $\{\|x_n\|\}$ 才是递减的，同时，由于 $\|x_n\|> 0$, 所以它是有下界的，因此数列 $\{\|x_n\|\}$ 收敛于 $ell$, 在上面等式两边取极限 $ limits(lim)_(n arrow.r oo)\|x_(n + 1)\|= limits(lim)_(n arrow.r oo) frac(\|r\|, n + 1) dot.op\|x_n\| $ #noindent;即 $ limits(lim)_(n arrow.r oo)\|x_(n + 1)\|= limits(lim)_(n arrow.r oo) frac(\|r\|, n + 1) dot.op limits(lim)_(n arrow.r oo)\|x_n\| $ #noindent;因为变量 $\|x_(n + 1)\|$ 和 $\|x_n\|$ 取同一个数列的数值（除第一个数值外）．因此有同一个极限 $ell$⁠，即：$ell = 0 dot.op ell$⁠，所以 $ limits(lim)_(n arrow.r oo)\|x_n\|= ell = 0 $ #noindent;最后有 $ limits(lim)_(n arrow.r oo) x_n = limits(lim)_(n arrow.r oo) frac(r^n, n !) = 0 $

]
#example[
求下面数列 $\{ a_n \}$⁠：$  & a_1 = sqrt(2)\,quad a_2 = sqrt(2 + sqrt(2))\,quad a_3 = sqrt(2 + sqrt(2 + sqrt(2)))\,\
 & dots.h\,quad a_n = underbrace(sqrt(2 + sqrt(2 + dots.h.c + sqrt(2))), n upright("个根号"))\,quad dots.h $ #noindent;的极限．

]
#solution[
显然，$a_1 = sqrt(2)\,a_2 = sqrt(2 + a_1)\,dots.h\,a_n = sqrt(2 + a_(n - 1))\,dots.h$

$because quad 2 + sqrt(2) > 2\,#h(2em) therefore quad a_2 = sqrt(2 + sqrt(2)) > sqrt(2) = a_1$

又假设 $a_n > a_(n - 1)$ 成立，则 $2 + a_n > 2 + a_(n - 1)$

$therefore quad a_(n + 1) = sqrt(2 + a_n) > sqrt(2 + a_(n - 1)) = a_n$

因此，对于一切 $n in bb(N)$, 有 $a_(n + 1) > a_n$, 则此数列是递增的．

$because quad sqrt(2) < 2\,#h(2em) therefore quad a_1 < 2\,quad a_2 < sqrt(2 + 2) = 2$

假设 $a_(n - 1) < 2$, 那么，$ a_n = sqrt(2 + a_(n - 1)) < sqrt(2 + 2) = 2 $ #noindent;所以对于一切 $n in bb(N)$, 有 $a_n < 2$⁠．

根据极限存在定理知数列 $\{ a_n \}$ 有极限，设它为 $x$⁠，于是，$limits(lim)_(n arrow.r oo) a_n = x$⁠．由于 $ a_n = sqrt(2 + a_(n - 1)) $ #noindent;两边平方得 $ a_n^2 = 2 + a_(n - 1) $ #noindent;取极限有 $ lim_(n arrow.r oo) a_n^2 = lim_(n arrow.r oo)\(2 + a_(n - 1)\) $ #noindent;或者：$x^2 = 2 + x$⁠，解得：$ x_1 = 2\,#h(2em) x_2 = - 1 $ #noindent;然而因为 $a_n > 0 quad arrow.r.double.long quad limits(lim)_(n arrow.r oo) a_n = x gt.eq 0$,

$therefore quad x_2 = - 1$ 不合要求，因此，$ lim_(n arrow.r oo) a_n = 2 $

]
由上面的极限存在定理可以引出下面的结论：

+ 预先证明极限存在是很重要的，它也给实际计算这个极限提供了基础．

+ 在极限定义中，要求我们预先猜到 $\{ a_n \}$ 的极限值 $A$, 然后再用数列极限定义来验证这个极限 $A$ 是存在的，这就和前面所说的在数列极限的重要应用中出现的层次有些本末倒置，本节的极限存在定理就纠正了这种本末倒置的局面．

#heading(level: 2, numbering: none, supplement: [toc-sub])[习题7.6]

+ 试利用关于单调而有界的数列的极限存在定理检验下面数列极限存在性．

  + $a_n = 1 + frac(1, 1 dot.op 2) + frac(1, 1 dot.op 2 dot.op 3) + dots.h.c + frac(1, 1 dot.op 2 dot.op 3 thin dots.h.c thin \(n - 1\))$,#h(1em);$n = 1\,2\,3\,dots.h$

  + $a_n = frac(1, n + 1) + frac(1, n + 2) + dots.h.c + frac(1, 2 n)$,#h(1em);$n = 1\,2\,3\,dots.h$

  + $x_n = p_0 + p_1 / 10 + dots.h.c + p_n / 10^n$⁠，式中 $p_i\,thick\(i = 0\,1\,2\,dots.h\)$ 是非负整数，且从 $p_1$ 起不大于9.

+ 已知 $a_1 = sqrt(2)\,thick a_2 = sqrt(2 sqrt(2))\,thick a_3 = sqrt(2 sqrt(2 sqrt(2)))\,dots.h\,a_(n + 1) = sqrt(2 a_n)\,dots.h$, 求 $limits(lim)_(n arrow.r oo) a_n$.

+ 设 $a_(n + 1) = sqrt(k + a_n)$, 这里 $k > 0$, $a_1 > 0$, 求证数列 $\{ a_n \}$ 递增，并以方程 $x^2 = x + k$ 的正根为极限．

+ 已知 $x_1 = 1\,x_2 = 1 + frac(x_1, 1 + x_1)\,dots.h\,x_n = 1 + frac(x_(n - 1), 1 + x_(n - 1))\,dots.h$, 求 $limits(lim)_(n arrow.r oo) x_n$.

+ 数列 $\{ x_n \}$ 由下面递归方程定义 $ x_1 = h\,#h(2em) x_(n + 1) = x_n^2 + k $ #noindent;这里 $0 < k < 1 / 4$⁠，$h$ 在方程 $x^2 - x + k = 0$ 的二根 $a\,b$ 之间，即 $a < h < b$⁠．求证：$a < x_(n + 1) < x_n < b$, 并求 $limits(lim)_(n arrow.r oo) x_n$.

+ 设 $0 < a_1 < b_1$ 是两个给定正数，令 $ a_2 & = sqrt(a_1 b_1)\,#h(2em) b_2 = 1 / 2\(a_1 + b_1\)\,quad\(a_2 < b_2\)\
  a_3 & = sqrt(a_2 b_2)\,#h(2em) b_3 = 1 / 2\(a_2 + b_2\)\,quad\(a_3 < b_3\)\
  dots.h.c & dots.h.c thin dots.h.c thin dots.h.c thin dots.h.c\
  a_(n + 1) & = sqrt(a_n b_n)\,#h(2em) b_(n + 1) = 1 / 2\(a_n + b_n\)\,quad\(a_(n + 1) < b_(n + 1)\) $ #noindent;求证：

  + $\{ a_n \}$ 递增和 $\{ b_n \}$ 递减；

  + $\{ a_n \}$ 和 $\{ b_n \}$ 的极限相同．
