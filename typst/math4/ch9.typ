// 由 typst/tools/tex2typ.py 从 math4/9.tex 转换而来，已人工校对的部分以本文件为准。
#import "../common/template.typ": *
#import "figs.typ": fig

= 反三角函数与简单三角方程的解法
== 反正弦函数
我们知道，正弦函数 $y = sin x$ 是一个周期等于 $2 pi$ 的振动函数，它的定义域是 $\(- oo\,+ oo\)$, 而值域是闭区间 $\[- 1\,1\]$, 它的图象如图9.1．

#figure([#fig("9-01");

  ],
  caption: [
  ]
)

每取一数 $y = c\,thick - 1 lt.eq c lt.eq 1$, 作直线 $y = c$, 可与正弦曲线 $y = sin x$ 交于无穷多个点，这些交点的横坐标是 $ x = x_0 + 2 k pi #h(2em) upright("和") #h(2em) x =\(pi - x_0\)+ 2 k pi quad\(k in bb(Z)\) $ #noindent;因此有无数多个 $x$ 的值满足方程 $sin x = c$, 而和那个 $y = c$ 对应．可见对于变数 $x$ 的一切可能实数值来说，我们不能由函数 $f : bb(R) arrow.r\[- 1\,1\]$, $f\(x\)= sin x$ 得出它的反函数来．把定义域分成无数个单调区间，则在各区间 $[- pi / 2 + 2 k pi \, pi / 2 + 2 k pi]$ 上，$y = sin x$ 由 $- 1$ 上升到1，而在各区间 $[pi / 2 + 2 k pi \, frac(3 pi, 2) + 2 k pi]$ 上，$y = sin x$ 由1下降到 $- 1$⁠，于是由前一章中的反函数定理知道，对于上述每一个单调区间存在一个反函数．

如果我们强调的是在闭区间 $[- pi / 2 \, pi / 2]$ 上来考虑正弦函数的反函数，我们就说它是反正弦函数的主值，并把这个函数记作 $x = arcsin y$⁠，使得 $ x = arcsin y #h(2em) arrow.l.r.double.long #h(2em) y = sin x $ #noindent;这里 $x in [- pi / 2 \, pi / 2]\,quad y in\[- 1\,+ 1\]$⁠．

对于使得 $y = sin x$ 是单调的另一区间，例如 $x in [pi / 2 \, frac(3 pi, 2)]$⁠，我们就得到另一个反正弦函数．假如我们没有明确地指出反正弦函数的值域所在的区间，我们就不能由函数 $y = sin x$ 得出它的反函数．为了明确起见，现在我们规定

#blk[定义1][
函数 $y = sin x$ 在闭区间 $[- pi / 2 \, pi / 2]$ 上的反函数叫做#strong[反正弦函数]或#strong[反正弦]，这个函数用记号写作 $x = arcsin y$ (即 $x$ 是一角或弧，其相应的正弦值为 $y$)，它的定义域是闭区间 $- 1 lt.eq y lt.eq 1$, 值域是闭区间 $- pi / 2 lt.eq x lt.eq pi / 2$⁠．

]
用习惯上的写法，将字母 $x$ 与 $y$ 互换而写成 $y = arcsin x$, 现在，我们将反正弦函数（主值）的定义用几何名词叙述如下：

在闭区间 $- 1 lt.eq x lt.eq 1$ 上，数 $x$ 的反正弦 $y = arcsin x$ 是在闭区间 $[- pi / 2 \, pi / 2]$ 上的一个角或弧，它的正弦值等于 $x$, 即 $sin y = x$.

由反正弦函数的定义和前一章的反函数定理可得到它的一些性质如下：

- $arcsin\(sin y\)= y\,#h(2em) - pi / 2 lt.eq y lt.eq pi / 2$

  $sin\(arcsin x\)= x\,#h(2em) - 1 lt.eq x lt.eq 1$

- 函数 $f\(x\)= arcsin x$ 在闭区间 $\[- 1\,1\]$ 上单调递增，并且连续．

- $y = arcsin x\,thick - 1 lt.eq x lt.eq 1$ 的图象与 $y = sin x\,thick - pi / 2 lt.eq x lt.eq pi / 2$ 的图象关于直线 $y = x$ 对称（图9.2）．

#figure([#fig("9-02");

  ],
  caption: [
  ]
)

#example[
求下列各式的值（口答）：

+ $arcsin 1 / 2$

+ $arcsin (- 1 / 2)$

+ $arcsin 1$

]
#solution[
+ $arcsin 1 / 2 = pi / 6$⁠，因为 $sin pi / 6 = 1 / 2$⁠，且 $- pi / 2 < pi / 6 < pi / 2$

+ $arcsin (- 1 / 2) = - pi / 6$⁠，因为 $sin (- pi / 6) = - 1 / 2$⁠，且 $- pi / 2 < - pi / 6 < pi / 2$

+ $arcsin 1 = pi / 2$⁠，因为 $sin pi / 2 = 1$⁠，而且 $pi / 2$ 不超出 $[- pi / 2 \, pi / 2]$ 的界限．

]
我们已知正弦函数是奇函数，它的图象关于原点对称，现在我们要证明 $f\(x\)= arcsin x$ 是奇函数，即 $arcsin\(- x\)= - arcsin x$⁠．

#proof[
因为 $- pi / 2 lt.eq arcsin x lt.eq pi / 2$⁠，角 $- arcsin x$ 也被限制在由 $- pi / 2$ 到 $pi / 2$ 的区间内：$ - pi / 2 lt.eq - arcsin x lt.eq pi / 2 $ #noindent;又，角 $- arcsin x$ 的正弦等于 $- x$ $ sin\(- arcsin x\)= - sin\(arcsin x\)= - x $ #noindent;因此：$arcsin\(- x\)= - arcsin x$⁠．

]
#example[
求下列各式的值：$ arcsin (- sqrt(3) / 2)\,#h(2em) arcsin\(- 0.2672\) $

]
#solution[
+ $arcsin (- sqrt(3) / 2) = - arcsin sqrt(3) / 2 = - pi / 3$

+ $arcsin\(- 0.2672\)= - arcsin 0.2672 = - 15 degree 30' approx - 0.2705$

]
#example[
求下列各式的值：

#cols(2)[
+ $sin (arcsin 1 / 3)$

+ $tan (arcsin sqrt(2) / 2)$

+ $cos (arcsin 3 / 5)$

+ $sin [2 arcsin (- 3 / 5)]$

+ $arcsin (sin frac(7 pi, 6))$

]
]
#solution[
+ $sin (arcsin 1 / 3) = 1 / 3$

+ $tan (arcsin sqrt(2) / 2) = tan pi / 4 = 1$

+ 设 $arcsin 3 / 5 = alpha$⁠，其中 $- pi / 2 lt.eq alpha lt.eq pi / 2$⁠，那么 $sin alpha = 3 / 5$⁠．由于 $- pi / 2 lt.eq alpha lt.eq pi / 2$⁠，$sin alpha > 0$⁠，可以知道，$alpha$ 是第一象限的角，所以 $ cos alpha = sqrt(1 - sin^2 alpha) = sqrt(1 - (3 / 5)^2) = 4 / 5 $

+ 设 $arcsin (- 3 / 5) = alpha$⁠，其中 $- pi / 2 lt.eq alpha lt.eq pi / 2$⁠，那么 $ sin alpha = sin [arcsin (- 3 / 5)] = - 3 / 5 $ #noindent;由于 $- pi / 2 lt.eq alpha lt.eq pi / 2$ 和 $sin alpha < 0$⁠，可以知道 $alpha$ 是第四象限的角，所以 $ cos alpha = sqrt(1 - (- 3 / 5)^2) = 4 / 5 $ #noindent;即：$sin [2 arcsin (- 3 / 5)] = sin 2 alpha = 2 sin alpha dot.op cos alpha = 2 (- 3 / 5) dot.op (4 / 5) = - 24 / 25$

+ #h(0pt)
  $ arcsin (sin frac(7 pi, 6)) & = arcsin [sin (pi + pi / 6)]\
   & = arcsin (- sin pi / 6)\
   & = - arcsin (sin pi / 6) = - pi / 6 $

]
关于 $y = sin x$, 只要知道了它在闭区间 $- pi / 2 lt.eq x lt.eq pi / 2$ 上的反函数 $x = arcsin y$, 我们便能求出 $y = sin x$ 在其他单调区间上的反函数．

#blk[命题][
+ $y = sin x$ 在闭区间 $[- pi / 2 + 2 k pi \, pi / 2 + 2 k pi]$ 上，由 $- 1$ 上升到1，它们相应的反函数是 $ x = arcsin y + 2 k pi\,quad k in bb(Z) $ #noindent;因为 $ sin x = sin\(arcsin y + 2 k pi\)= sin\(arcsin y\)= y $ #noindent;而且 $ - pi / 2 + 2 k pi lt.eq arcsin y + 2 k pi lt.eq pi / 2 + 2 k pi\,quad k in bb(Z) $

+ $y = sin x$ 在闭区间 $[pi / 2 \, frac(3 pi, 2)]$ 上，由1下降到 $- 1$⁠，它的反函数是 $ x = pi - arcsin y $ #noindent;因为 $ sin x = sin\(pi - arcsin y\)= sin\(arcsin y\)= y $ #noindent;而且 $ pi / 2 = pi - pi / 2 lt.eq pi - arcsin y lt.eq pi + pi / 2 = frac(3 pi, 2) $ #noindent;我们也可以在单位圆上作图来说明 (2)，如图9.3所示．

+ $y = sin x$ 在闭区间 $[pi / 2 + 2 k pi \, frac(3 pi, 2) + 2 k pi]$ 上，由1下降到 $- 1$, 相仿地证得它在相应区间上的反函数是 $ x =\(pi - arcsin y\)+ 2 k pi\,quad k in bb(Z) $

]
#figure([#fig("9-03");

  ],
  caption: [
  ]
)

#example[
讨论函数 $y = arcsin\(sin x\)$ 的图象．

]
#solution[
由于正弦的周期性，函数 $arcsin\(sin x\)\,thick x in bb(R)$ 也以 $2 pi$ 为周期，因此，只研究它在长度为 $2 pi$ 的区间内情形即可．由于 $ sin y = sin\[arcsin\(sin x\)\]= sin x $ #noindent;这里 $- pi / 2 lt.eq y lt.eq pi / 2$⁠，而 $x in bb(R)$⁠，故

- 当 $x in [- pi / 2 \, pi / 2]$ 时，则 $y = x$⁠．

- 当 $x in [pi / 2 \, frac(3 pi, 2)]$ 时，则由上面的命题中的 (2) 知 $ x = pi - y quad arrow.r.double quad y = pi - x in [- pi / 2 \, pi / 2] $

#noindent;因之，在此区间内函数的图象与直线 $y = pi - x$ 一致，总之，由上面的命题中的 (1) 和 (3) 的结果：

+ 当 $x in [- pi / 2 + 2 k pi \, pi / 2 + 2 k pi]$ 时，则 $x = y + 2 k pi$⁠，即 $y = x - 2 k pi$⁠；

+ 当 $x in [pi / 2 + 2 k pi \, frac(3 pi, 2) + 2 k pi]$ 时，则 $x = pi - y + 2 k pi$⁠，即 $y =\(pi - x\)+ 2 k pi$⁠．

#noindent;由上面讨论的结果，得到函数 $y = arcsin\(sin x\)$ 的图象是折线的形状，如图9.4所示．

#figure([#fig("9-04");

  ],
  caption: [
  ]
)

]
#heading(level: 2, numbering: none, supplement: [toc-sub])[习题9.1]

+ #block(sticky: true)[用反三角函数表示下面等式中的角．]

  #cols(2)[
  + $sin pi / 4 = sqrt(2) / 2$

  + $sin frac(5 pi, 3) = - sqrt(3) / 2$

  + $sin frac(7 pi, 3) = sqrt(3) / 2$

  + $sin\(- 2.314\)= - 0.04038$

  ]

+ 当 $1 / 2 lt.eq x lt.eq sqrt(3) / 2$ 时，求函数 $y = x arcsin x$ 的最大值和最小值．

+ 不求值，确定下面差的符号：

  + $arcsin 0.7 - arcsin 0.5$

  + $arcsin (- 3 / 5) - arcsin (- 3 / 4)$

  + $arcsin (sqrt(2) - 1) - arcsin (sqrt(5) - 2)$

+ #block(sticky: true)[求下列各式的值：]

  #cols(2)[
  + $arcsin sqrt(3) / 2$

  + $arcsin (- sqrt(2) / 2)$

  + $arcsin 0$

  + $arcsin\(- 1\)$

  + $arcsin (- 1 / 4)$

  + $arcsin 0.7841$

  ]

+ #block(sticky: true)[计算下列各式的值：]

  #cols(2)[
  + $tan (arcsin sqrt(2) / 2)$

  + $cos (arcsin 3 / 5)$

  + $arcsin [sin (- pi / 7)]$

  + $arcsin (sin frac(5 pi, 6))$

  + $arcsin\(cos 1\)$

  ]

+ #block(sticky: true)[计算下列各式的值：]

  #cols(2)[
  + $cot (2 arcsin sqrt(2) / 2)$

  + $cos (2 arcsin 1 / 3)$

  + $sin (3 arcsin (- sqrt(3) / 2))$

  + $tan (1 / 2 arcsin 2 / 3)$

  ]

+ 讨论函数 $y = x arcsin\(sin x\)$ 的图象，并作草图．

+ 画出 $f\(x\)= sin\(3 arcsin x\)$ 的图象．

== 反余弦函数
由余弦函数 $y = cos x$ 的图象（图9.5）看出，函数 $y = cos x$ 在闭区间 $\[2 k pi\,\(2 k + 1\)pi\]$ 上，由1下降到 $- 1$, 而在闭区间 $\[\(2 k - 1\)pi\,2 k pi\]$ 上，由 $- 1$ 上升到1; 因此，对于上述每一个单调区间，函数 $y = cos x$ 都带来一个反函数．

#figure([#fig("9-05");

  ],
  caption: [
  ]
)

#blk[定义2][
函数 $y = cos x$ 在闭区间 $\[0\,pi\]$ 上的反函数叫做#strong[反余弦函数]或#strong[反余弦]，记作 $ x = arccos y $ #noindent;它的定义域是闭区间 $\[- 1\,1\]$⁠．

]
用几何名词来叙述这个定义，便是（互换字母 $x$⁠、$y$ 的位置）：在闭区间 $- 1 lt.eq x lt.eq 1$ 上，数 $x$ 的反余弦 $y = arccos x$ 是在闭区间 $\[0\,pi\]$ 的一个角或弧，它的余弦值等于 $x$, 即 $cos y = x$⁠．

#example[
求下列各式的值（口答）：

#cols(2)[
+ $arccos 1 / 2$

+ $arccos (- 1 / 2)$

+ $arccos 1$

+ $arccos 0$

]
]
#solution[
+ $arccos 1 / 2 = pi / 3$⁠，因为 $cos pi / 3 = 1 / 2$⁠，而且 $0 < pi / 3 < pi$⁠．

+ $arccos (- 1 / 2) = frac(2 pi, 3)$⁠，因为 $cos frac(2 pi, 3) = cos (pi - pi / 3) = - 1 / 2$⁠，而且 $0 < frac(2 pi, 3) < pi$⁠．

+ $arccos 1 = 0$⁠，因为 $cos 0 = 1$ 而且0不出 $\[0\,pi\]$ 的界限．

+ $arccos 0 = pi / 2$⁠，因为 $cos pi / 2 = 0$⁠，而且 $0 < pi / 2 < pi$⁠．

]
由反余弦函数的定义和反函数的定理得到反余弦的性质如下：

+ $arccos\(cos y\)= y\,thick 0 lt.eq y lt.eq pi\,#h(2em) cos\(arccos x\)= x\,thick - 1 lt.eq x lt.eq 1$

+ 函数 $f\(x\)= arccos x$ 在闭区间 $\[- 1\,1\]$ 上，由 $pi$ 下降到0, 且连续．

+ 我们知道互补的两个角 $alpha$ 和 $pi - alpha$ 的余弦是相反数，即 $ cos\(pi - alpha\)= - cos alpha $ #noindent;反之，在区间 $\[- 1\,1\]$ 内的相反数的反余弦互为补角，即 $ arccos\(- x\)= pi - arccos x\,#h(2em) x in\[- 1\,1\] $

#proof[
因为 $0 lt.eq arccos\(- x\)lt.eq pi$, 又 $0 lt.eq pi - arccos x lt.eq pi$ 而且 $ cos\(pi - arccos x\)= - cos\(arccos x\)= - x $ #noindent;由余弦函数在 $\[0\,pi\]$ 上是单调的，得到 $ pi - arccos x = arccos\(- x\) $

]
#block[
#set enum(numbering: enum-at(1, none, start: 4))
+ 反余弦函数 $y = arccos x$ 的图象如图9.6所示．

  #figure([#fig("9-06");

    ],
    caption: [
    ]
  )
]

#example[
求下列各式的值：$arccos (- sqrt(2) / 2)\,#h(2em) arccos\(- 0.9695\)$

]
#solution[
$ arccos (- sqrt(2) / 2) = pi - arccos (sqrt(2) / 2) = pi - pi / 4 = frac(3 pi, 4) $ #noindent;$ arccos\(- 0.9695\) & = 180 degree - arccos 0.9695\
 & = 180 degree - 14 degree 11' = 165 degree 49' approx 165.82 degree\
 & approx 0.9212 pi approx 2.894 upright("弧度") $

]
#example[
求 $tan [arccos (- frac(2 sqrt(2), 3))]$ 的值．

]
#solution[
设 $arccos (- frac(2 sqrt(2), 3)) = alpha$⁠，其中 $0 lt.eq alpha lt.eq pi$⁠，那么，$cos alpha = - frac(2 sqrt(2), 3)$⁠，由于 $0 lt.eq alpha lt.eq pi$ 和 $cos alpha < 0$⁠．可以知道 $alpha$ 是第二象限的角，所以 $ tan alpha = - sqrt(frac(1, cos^2 alpha) - 1) = - sqrt(9 / 8 - 1) = - sqrt(1 / 8) = - sqrt(2) / 4 $

]
#example[
证明：若 $\|x\|lt.eq 1$⁠，则 $arcsin x + arccos x = pi / 2$

]
#proof[
$because quad sin (pi / 2 - arccos x) = cos\(arccos x\)= x$

又 $sin\(arcsin x\)= x$, 且 $ 0 lt.eq arccos x lt.eq pi\,#h(2em) - pi / 2 lt.eq pi / 2 - arccos x lt.eq pi / 2 $

$therefore quad arcsin x$ 和 $pi / 2 - arccos x$ 是 $sin x$ 在单调区间 $[- pi / 2 \, pi / 2]$ 上的角．

根据 $sin x$ 在这区间上的单调性，有 $arcsin x = pi / 2 - arccos x$ 即：$ arcsin x + arccos x = pi / 2 $

]
#example[
证明：$arcsin 4 / 5 + arccos 12 / 13 + arcsin 16 / 65 = pi / 2$

]
#proof[
$ arcsin 4 / 5 + arccos 12 / 13 & = pi / 2 - arcsin 16 / 65\
 & = arccos 16 / 65 $

令 $alpha = arcsin 4 / 5$⁠，则 $sin alpha = 4 / 5$⁠，$0 < alpha < pi / 2$⁠，$cos alpha = 3 / 5$⁠．

令 $beta = arccos 12 / 13$⁠，则 $cos beta = 12 / 13$⁠，$0 < beta < pi / 2$⁠，$sin beta = 5 / 13$⁠．

因此：$ cos\(alpha + beta\) & = cos alpha cos beta - sin alpha sin beta\
 & = 3 / 5 dot.op 12 / 13 - 4 / 5 dot.op 5 / 13 = 16 / 65 $

$because quad 0 < alpha + beta < pi$, $therefore quad alpha + beta = arccos 16 / 65$⁠，即：$ arcsin 4 / 5 + arccos 12 / 13 = arccos 16 / 65 = pi / 2 - arcsin 16 / 65 $

$ therefore quad arcsin 4 / 5 + arccos 12 / 13 + arcsin 16 / 65 = pi / 2 $

]
在余弦函数的其他单调区间内，其反函数可按下列方式去找：

#blk[命题1][
+ 在闭区间 $\[2 k pi\,\(2 k + 1\)pi\]$ 上，$y = cos x$ 由1下降到 $- 1$, 在这些闭区间上的反函数是 $ x = arccos y + 2 k pi $ #noindent;事实上，角 $x in\[2 k pi\,\(2 k + 1\)pi\]$, 而且它的余弦等于 $y$⁠．

+ 在闭区间 $\[\(2 k - 1\)pi\,2 k pi\]$ 上，$y = cos x$ 的反函数是 $ x = - arccos y + 2 k pi $ #noindent;证明相仿．

]
#example[
讨论函数 $y = arccos\(cos x\)$ 的图象．

]
#solution[
因为 $cos x$ 的周期是 $2 pi$, 函数 $arccos\(cos x\)$ 也是周期函数，周期是 $2 pi$, 且 $ cos y = cos\[arccos\(cos x\)\] $ #noindent;即：$cos y = cos x$, 这里 $0 lt.eq y lt.eq pi$, $x in bb(R)$ 根据上面的命题，知道：

+ 当 $x in\[2 k pi\,\(2 k + 1\)pi\]$ 时，$x = y + 2 k pi$, 即 $y = x - 2 k pi$⁠；

+ 当 $x in\[\(2 k - 1\)pi\,2 k pi\]$ 时，$x = - y + 2 k pi$, 即 $y = - x + 2 k pi$⁠．

#noindent;函数 $y = arccos\(cos x\)$ 的图象是折线（图9.7）．

#figure([#fig("9-07");

  ],
  caption: [
  ]
)

]
#heading(level: 2, numbering: none, supplement: [toc-sub])[习题9.2]

+ #block(sticky: true)[用反余弦的形式表示下列各式的角（$x in\[0\,pi\]$⁠）．]

  #cols(2)[
  + $cos pi = - 1$

  + $cos frac(5 pi, 3) = 1 / 2$

  + $cos\(- 3\)= - 0.9900$

  + $cos frac(7 pi, 6) = - sqrt(3) / 2$

  + $cos x = - 0.8065$

  + $cos x = - 1$

  ]

+ #block(sticky: true)[决定下面差的符号：]

  #cols(2)[
  + $arccos 0.7 - arccos 0.5$

  + $arccos (- 3 / 5) - arccos (- 3 / 4)$

  + $arccos (sin pi / 12) - arccos (sin pi / 13)$

  ]

+ #block(sticky: true)[不作计算，确定下列各比的符号：]

  #cols(2)[
  + $frac(arcsin 0.85 - arcsin 0.8, arccos 0.85 - arccos 0.8)$

  + $frac(pi - 2 arcsin\(0.9\), pi - 2 arccos\(0.1\))$

  + $frac(arcsin\(0.4\)+ pi / 6, arccos\(0.6\)- pi / 3)$

  ]

+ 在同一个坐标系中，作函数 $y = arccos x$ 和函数 $y = arccos x / 2$ 的图象，试根据函数图象说明当 $x$ 为何值时，函数的差 $arccos x / 2 - arccos x$ 取最大值、最小值、等于零．

+ #block(sticky: true)[计算下列各式的值：]

  #cols(2)[
  + $sin (arccos 1 / 2)$

  + $sin (arccos 3 / 5)$

  + $tan (arccos 5 / 13)$

  + $arcsin\(cos 1\)$

  + $arccos\(cos 2 pi\)$

  + $arccos (- cos 36 / 7 pi)$

  + $sin (1 / 2 arccos 1 / 2)$

  + $sin [3 arccos (- sqrt(3) / 2)]$

  + $sin [2 arccos (- frac(2 sqrt(2), 3))]$

  + $cos (arcsin 3 / 5 - arccos 5 / 13)$

  + $sin [2 (arcsin sqrt(5) / 3 - arccos sqrt(5) / 3)]$

  + $tan (arcsin 1 / 2 + arccos sqrt(3) / 2)$

  ]

+ 证明下面的恒等式：

  + 若 $0 < x < 1$, 则：$arcsin x = arccos sqrt(1 - x^2)$

  + 若 $0 < x < 1$, 则：$arccos x = arcsin sqrt(1 - x^2)$

  + 若 $- 1 lt.eq x lt.eq 0$, 则：$arcsin x = - arccos sqrt(1 - x^2)$

  + 若 $- 1 lt.eq x lt.eq 0$, 则：$arccos x = pi - arcsin sqrt(1 - x^2)$

+ 解下面的方程：

  + $arccos x = pi / 3$

  + $arccos 2 x = 0.5$

  + $arcsin x = arccos x\,thick\|x\|lt.eq 1$

  + $arcsin x + arcsin\(1 - x\)= arccos x$

  + $arcsin x - arccos x = arcsin\(3 x - 2\)$

+ 当 $- 1 / 2 lt.eq x lt.eq 0$ 时，求 $f\(x\)= arccos x + x^2$ 的最小值．

== 反正切函数
由正切函数 $y = tan x$ 的图象（图9.8）可以看出，函数 $tan x$ 在每个开区间 $(- pi / 2 + k pi \, pi / 2 + k pi)$ 内，由 $- oo$ 上升到 $+ oo$⁠．所以在每个这样的开区间里能带来一个反函数．

#figure([#fig("9-08");

  ],
  caption: [
  ]
)

#blk[定义3][
函数 $y = tan x$ 在开区间 $- pi / 2 < x < pi / 2$ 内的反函数叫做#strong[反正切函数]或#strong[反正切]，记作 $ x = arctan y $ #noindent;因为任何实数都可以作为正切的值，所以反正切定义域是开区间 $- oo < y < + oo$

]
用几何名词来叙述反正切的定义就是：在开区间 $\(- oo\,+ oo\)$ 内，数 $y$ 的反正切 $x = arctan y$ 是在开区间 $- pi / 2 < x < pi / 2$ 内的一个角或弧，它的正切等于 $y$⁠，即：$tan x = y$⁠．

由定义和反函数定理直接得到反正切的性质如下：

+ $arctan\(tan x\)= x\,#h(2em) - pi / 2 < x < pi / 2$

  $tan\(arctan y\)= y\,#h(2em) - oo < y < + oo$

+ $y = arctan x\,thick x in bb(R)$ 是单调递增的并且连续；

+ $arctan x$ 是奇函数，即 $ arctan\(- x\)= - arctan x $ #noindent;证明留给同学们去完成．

+ 反正切函数 $y = arctan x\,thick - oo < x < + oo$ 的图象如图9.9所示．

#figure([#fig("9-09");

  ],
  caption: [
  ]
)

#example[
求下列各式的值（口答）：

#cols(2)[
+ $arctan 1$

+ $arctan\(- 1\)$

+ $arctan sqrt(3)$

+ $arctan\(- sqrt(3)\)$

]
]
#solution[
+ $arctan 1 = pi / 4$⁠，因为 $tan pi / 4 = 1$⁠，而且 $- pi / 2 < pi / 4 < pi / 2$

+ $arctan\(- 1\)= - pi / 4$⁠，因为 $tan (- pi / 4) = - 1$⁠，而且 $- pi / 2 < - pi / 4 < pi / 2$

+ $arctan sqrt(3) = pi / 3$⁠，因为 $tan pi / 3 = sqrt(3)$⁠，而且 $- pi / 2 < pi / 3 < pi / 2$

+ $arctan\(- sqrt(3)\)= - pi / 3$⁠，因为 $tan (- pi / 3) = - sqrt(3)$⁠，而且 $- pi / 2 < - pi / 3 < pi / 2$

]
#example[
求 $cos [arctan (- 3 / 4)]$

]
#solution[
设 $alpha = arctan (- 3 / 4)$⁠，其中 $- pi / 2 < alpha < pi / 2$⁠，则 $tan alpha = - 3 / 4$⁠．

由于 $- pi / 2 < alpha < pi / 2$ 和 $tan alpha < 0$⁠，可以知道 $alpha$ 是第四象限的角．所以 $ sec alpha & = sqrt(1 + tan^2 alpha) = sqrt(1 + 9 / 16) = 5 / 4\
cos alpha & = 4 / 5 $ #noindent;就是 $ cos [arctan (- 3 / 4)] = cos alpha = 4 / 5 $

]
关于 $y = tan x$ 在其他单调区间内的反函数，请看下面命题．

#blk[命题][
在开区间 $(- pi / 2 + k pi \, pi / 2 + k pi)$⁠，$k in bb(Z)$ 内 $y = tan x$ 由 $- oo$ 上升到 $+ oo$, 在这些区间上的反函数是 $x = arctan y + k pi$⁠．

]
事实上，$x in (- pi / 2 + k pi \, pi / 2 + k pi)$ 而且 $ tan x = tan\(arctan y + k pi\)= tan\(arctan y\)= y $

#example[
求 $arctan 2 + arctan 3$ 的值．

]
#solution[
$because quad pi / 4 = arctan 1 < arctan 2 < pi / 2$⁠，$pi / 4 = arctan 1 < arctan 3 < pi / 2$⁠，

$therefore quad pi / 2 < arctan 2 + arctan 3 < pi$⁠．而且 $ tan\(arctan 2 + arctan 3\) & = frac(tan\(arctan 2\)+ tan\(arctan 3\), 1 - tan\(arctan 2\)dot.op tan\(arctan 3\))\
 & = frac(2 + 3, 1 - 2 times 3) = - 1 $ #noindent;由于 $arctan\(- 1\)in (- pi / 2 \, 0)$⁠，于是 $ arctan 2 + arctan 3 = arctan\(- 1\)+ pi = - pi / 4 + pi = frac(3 pi, 4) $

]
#example[
讨论 $y = arctan\(tan x\)$ 的图象．

]
#solution[
函数 $arctan\(tan x\)$ 的定义域是除去 $x = pi / 2 + k pi\,thick k in bb(Z)$ 的实数集 $bb(R)$, 也就是无数个开区间 $(- pi / 2 + k pi \, pi / 2 + k pi)\,thick k in bb(Z)$ 所组成的一个并集．因此函数 $y = arctan\(tan x\)$ 的图象在 $x = pi / 2 + k pi\,thick k in bb(Z)$ 这些点处间断．由于 $ tan y = tan\[arctan\(tan x\)\] $ #noindent;即：$tan y = tan x$, 这里 $- pi / 2 < y < pi / 2$, $x eq.not pi / 2 + k pi$⁠．

所以，当 $x in (- pi / 2 + k pi \, pi / 2 + k pi)$ 时，$x = y + k pi$, 也就是 $y = x - k pi$⁠．于是：

- 当 $x in (- pi / 2 \, pi / 2)$ 时，$y = x$⁠；

- 当 $x in (pi / 2 \, frac(3 pi, 2))$ 时，$y = x - pi$⁠；

- 当 $x in (frac(3 pi, 2) \, frac(5 pi, 2))$ 时，$y = x - 2 pi$⁠；

- ………………

- 当 $x in (- frac(3 pi, 2) \, - pi / 2)$ 时，$y = x + pi$⁠；

- ………………

#noindent;现在考虑间断点的情形：

当 $pi / 2 +\(k - 1\)pi < x < pi / 2 + k pi$ 时，$y = x - k pi$, 于是当 $x$ 取每一个数列 $\{ x_n \}$ 从左边趋近 $pi / 2 + k pi$ 时，记作 $x_n arrow.r (pi / 2 + k pi)^(-)$, 便有 $ lim_(x_n arrow.r (tfrac(pi, 2) + k pi)^(-)) y = lim_(x_n arrow.r (tfrac(pi, 2) + k pi)^(-))\(x_n - k pi\)= pi / 2 + k pi - k pi = pi / 2 $

当 $pi / 2 + k pi < x < pi / 2 +\(k + 1\)pi$ 时，$y = x -\(k + 1\)pi$. 于是当 $x$ 取每一个数列 $\{ x_n \}$ 从右边趋近 $pi / 2 + k pi$ 时，记作 $x_n arrow.r (pi / 2 + k pi)^(+)$⁠，便有 $ lim_(x_n arrow.r (tfrac(pi, 2) + k pi)^(+)) y = lim_(x_n arrow.r (tfrac(pi, 2) + k pi)^(+))\[x_n -\(k + 1\)pi\]= pi / 2 + k pi - k pi - pi = - pi / 2 $ #noindent;因之，函数 $arctan\(tan x\)$ 在间断点 $x = pi / 2 + k pi$ 处的左、右极限存在，其左极限等于 $pi / 2$ 右极限等于 $- pi / 2$⁠，函数图象在这些间断点处，有一个等于 $pi$ 的跃度，它的图象如图9.10．

#figure([#fig("9-10");

  ],
  caption: [
  ]
)

]
== 反余切函数
由余切函数 $y = cot x$ 的图象可以看出函数 $cot x$ 在每个开区间 $\(k pi\,\(k + 1\)pi\)\,thick k in bb(Z)$ 内，由 $+ oo$ 递减到 $- oo$, 所以在每个这样的开区间里，反函数是存在的．

#blk[定义4][
函数 $y = cot x$ 在开区间 $\(0\,pi\)$ 内的反函数叫#strong[反余切函数或反余切]，记作 $ x = "arccot" y $ #noindent;它的定义域是开区间 $- oo < y < + oo$⁠．

]
用几何名词来叙述反余切的定义便是：在开区间 $- oo < y < + oo$ 内，数 $y$ 的反余切 $x = "arccot" y$ 是开区间 $0 < x < pi$ 内的一个角或弧，它的余切等于 $y$, 即 $cot x = y$⁠．

由反余切的定义和反函数定理得到反余切的性质如下：

+ $"arccot"\(cot x\)= x\,thick 0 < x < pi\,#h(2em) cot\("arccot" y\)= y\,thick - oo < y < + oo$

+ 反余切是递减的函数并且连续；

+ $"arccot"\(- x\)= pi - "arccot" x$⁠．

  这是因为 $"arccot" x$ 和 $"arccot"\(- x\)$ 都属于 $\(0\,pi\)$ 内的角，且 $ 0 = pi - pi < pi - "arccot" x < 0 + pi = pi $ #noindent;又 $cot\(pi - "arccot" x\)= - cot\("arccot" x\)= - x$⁠，所以 $ pi - "arccot" x = "arccot"\(- x\) $ #noindent;即 $ "arccot"\(- x\)= pi - "arccot" x $

+ 反余切 $y = "arccot" x\,thick - oo < x < + oo$ 的图象如图9.11所示．

#figure([#fig("9-11");

  ],
  caption: [
  ]
)

#example[
求下列各式的值：（口答）

#cols(2)[
+ $"arccot" 1$

+ $"arccot"\(- 1\)$

+ $"arccot" sqrt(3)$

+ $"arccot" (- sqrt(3))$

]
]
#solution[
+ $"arccot" 1 = pi / 4$⁠，因为 $cot pi / 4 = 1$⁠，而且 $0 < pi / 4 < pi$⁠．

+ $"arccot"\(- 1\)= pi - "arccot" 1 = pi - pi / 4 = frac(3 pi, 4)$

+ $"arccot" sqrt(3) = pi / 6$⁠，因为 $cot pi / 6 = sqrt(3)$⁠，而且 $0 < pi / 6 < pi$⁠．

+ $"arccot" (- sqrt(3)) = pi - "arccot" sqrt(3) = pi - pi / 6 = frac(5 pi, 6)$

]
#example[
求 $sin ["arccot" (- 1 / 3)]$ 的值

]
#solution[
设 $"arccot" (- 1 / 3) = alpha$⁠，其中 $0 < alpha < pi$⁠，那么 $cot alpha = - 1 / 3$⁠．

由于 $0 < alpha < pi$⁠，$cot alpha < 0$⁠，可以知道 $pi / 2 < alpha < pi$ $ csc alpha & = sqrt(1 + cot^2 alpha) = sqrt(1 + 1 / 9) = sqrt(10 / 9) = sqrt(10) / 3\
sin alpha & = 3 / sqrt(10) $ #noindent;$therefore quad sin ["arccot" (- 1 / 3)] = sin alpha = 3 / sqrt(10) = frac(3 sqrt(10), 10)$

]
#example[
求证：对于任何实数 $x$ 有 $ arctan x + "arccot" x = pi / 2 $

]
#solution[
设 $arctan x = alpha$⁠，其中 $- pi / 2 < alpha < pi / 2$⁠，则 $tan alpha = x$⁠．

又 $cot (pi / 2 - alpha) = tan alpha = x$⁠，而 $0 < pi / 2 - alpha < pi$⁠，所以 $pi / 2 - alpha = "arccot" x$⁠．

将 $alpha = arctan x$ 代入上式，得到 $ pi / 2 - arctan x = "arccot" x $ #noindent;所以：$arctan x + "arccot" x = pi / 2\,quad x in bb(R)$

]
#blk[命题][
在单调开区间 $\(k pi\,\(k + 1\)pi\)$ 内，$y = cot x$ 的反函数是 $ x = "arccot" y + k pi quad\(k in bb(Z)\) $

]
#example[
证明 $arctan 3 + "arccot" (- 1 / 5) = pi - arctan 1 / 8$

]
#solution[
设 $alpha = arctan 3$⁠，其中 $0 < alpha < pi / 2$⁠，则 $tan alpha = 3$⁠．

又设 $beta = "arccot" (- 1 / 5)$⁠，其中 $pi / 2 < beta < pi$⁠，则：$ cot beta = - 1 / 5\,#h(2em) tan beta = - 5 $ #noindent;$ tan [arctan 3 + "arccot" (- 1 / 5)] & = tan\(alpha + beta\)\
 & = frac(tan alpha + tan beta, 1 - tan alpha dot.op tan beta)\
 & = frac(3 +\(- 5\), 1 - 3\(- 5\)) = - 1 / 8 $ #noindent;而且 $pi / 2 < alpha + beta < frac(3 pi, 2)$⁠，$ therefore quad arctan 3 + "arccot" (- 1 / 5) = arctan (- 1 / 8) + pi = pi - arctan 1 / 8 $

]
#heading(level: 2, numbering: none, supplement: [toc-sub])[习题9.3]

+ #block(sticky: true)[用反三角函数表示下面等式中的角．]

  #cols(2)[
  + $tan (- pi / 4) = - 1$

  + $tan (frac(7 pi, 4)) = - 1$

  + $tan (frac(5 pi, 6)) = - 1 / sqrt(3)$

  + $tan (- frac(3 pi, 4)) = 1$

  + $cot pi / 6 = sqrt(3)$

  + $cot (- frac(5 pi, 4)) = - 1$

  + $cot (- 1) = - 0.6421$

  ]

+ #block(sticky: true)[指出下列各函数哪些是偶函数？哪些是奇函数？哪些既不是奇函数也不是偶函数．]

  #cols(2)[
  + $y = arcsin x + 2 arctan x$

  + $y = arccos x + arctan x$

  + $y = frac(arcsin x, arccos x)$

  + $y = frac(arctan x, x) - x arcsin x$

  ]

+ #block(sticky: true)[计算下列各式的值：]

  #cols(2)[
  + $cos\[arctan\(- sqrt(3)\)\]$\;

  + $sin\(arctan 2\)$\;

  + $arctan\(tan 2\)$

  + $arctan\(tan 0.7 pi\)$

  + $tan (arctan 1 / 4 - "arccot" 5)$

  + $sin (arctan 8 / 15 - arcsin 7 / 18)$

  + $tan [2 arctan (- 1 / 2)]$

  + $cos [2 arctan 1 / 4 + arccos 3 / 5]$

  ]

+ 检验下列各等式是否正确．

  + $arcsin 15 / 17 = arccos 8 / 17$

  + $arcsin 4 / 5 = "arccot" 3 / 4$

  + $arcsin (- 7 / 25) = - arctan 7 / 24$

  + $arccos (- 9 / 41) = pi - arcsin 40 / 41$

  + $arctan 2 / 3 + arctan 1 / 5 = pi / 4$

  + $"arccot" 1 / 9 + "arccot" 4 / 5 = 3 / 4 pi$

  + $2 arctan 1 / 3 + arctan 1 / 4 = arctan 16 / 13$

  + $arcsin 7 / 25 + 1 / 2 arccos 7 / 25 = arccos 3 / 5$

+ 证明下面恒等式：

  + 若 $0 < x < 1$, 那么 $ arcsin x = arccos sqrt(1 - x^2) = arctan x / sqrt(1 - x^2) = "arccot" sqrt(1 - x^2) / x $

  + 若 $0 < x < 1$, 那么 $ arccos x = arcsin sqrt(1 - x^2) = arctan sqrt(1 - x^2) / x = "arccot" x / sqrt(1 - x^2) $

  + 若 $x > 0$, 那么 $ arctan x = "arccot" 1 / x = arcsin x / sqrt(1 + x^2) = arccos 1 / sqrt(1 + x^2) $

  + 若 $x > 0$, 那么 $ "arccot" x = arctan 1 / x = arcsin 1 / sqrt(1 + x^2) = arccos x / sqrt(1 + x^2) $

  + 若 $\|x\|< 1$⁠，那么 $arcsin x = arctan x / sqrt(1 - x^2)$

    若 $- 1 lt.eq x lt.eq 0$⁠，那么 $arcsin x = - arccos sqrt(1 - x^2)$

    若 $- 1 lt.eq x < 0$⁠，那么 $arcsin x = "arccot" sqrt(1 - x^2) / x - pi$

  + 若 $- 1 lt.eq x lt.eq 0$⁠，那么 $arccos x = pi - arcsin sqrt(1 - x^2)$

    若 $- 1 lt.eq x < 0$⁠，那么 $arccos x = pi + arctan sqrt(1 - x^2) / x$

    若 $\|x\|< 1$⁠，那么 $arccos x = "arccot" x / sqrt(1 - x^2)$

  + 若 $x < 0$, 那么 $arctan x = "arccot" 1 / x - pi$

    若 $x < 0$, 那么 $"arccot" x = pi + arctan 1 / x$

  + 若 $x gt.eq 0$⁠，$1 / 2 arccos\(2 x^2 - 1\)= arccos x$

  + 若 $x gt.eq 1$⁠，$2 arctan x + arcsin frac(2 x, 1 + x^2) = pi$

+ 作函数 $y = x - arctan\(tan x\)$ 的草图．

+ #block(sticky: true)[解下列方程：]

  #cols(2)[
  + $arctan x = pi / 4$

  + $"arccot" x = pi / 2$

  + $arctan x = - pi / 2$

  + $arctan x^2 = 3$

  + $arctan 2 x + arctan 3 x = frac(3 pi, 4)$

  ]
  #block[
  #set enum(numbering: enum-at(2, none, start: 6))
  + $sin #scale(x: 180%, y: 180%)[${$] 2 arccos #scale(x: 120%, y: 120%)[$\[$] cot\(2 arctan x\)#scale(x: 120%, y: 120%)[$\]$] #scale(x: 180%, y: 180%)[$}$] = 0$
  ]

+ 若 $arctan x + arctan y + arctan z = pi$, 求证：$x + y + z = x y z$⁠．

+ 求证：$ arctan x + arctan frac(1 - x, 1 + x) = display(cases(pi / 4\, & quad x > - 1, - frac(3 pi, 4)\, & quad x < - 1)) $

== 最简单的三角方程
下列方程 $sin x = a$, $cos x = a$, $tan x = a$, $cot x = a$ 中的 $a$ 为已给的实数，$x$ 是未知数，是最简单的三角方程．适合其中某个方程的 $x$ 值叫做这个方程的解或根．例如，诸角：$x = 30 degree$\; $x = 150 degree$\; $x = 390 degree$\; $x = 510 degree$ 等等，为三角方程 $sin x = 1 / 2$ 的解，因为，$ sin 30 degree = sin 150 degree = sin 390 degree = sin 510 degree = 1 / 2 $

解三角方程就是求它的一切解，根据前一节内容知道，已知三角函数值 $a$ 所对应的角的值，如果存在的话，有无穷多个，所以每一个三角方程都有无穷多个解，它的所有解简称为通解．

在本节中，我们来解上面所示的最简单三角方程，从以后的例子即将明白，解三角方程归根到底化为解最简单的三角方程．

=== 最简单三角方程的解
==== $sin x = a$ 的解
分 $\|a\|lt.eq 1$ 和 $\|a\|> 1$ 的情形来考虑：

#strong[第一种情形：]$0 < a < 1$

在坐标系 $x$-$O$-$y$ 中，以原点 $O$ 为圆心作一单位圆，在 $O y$ 轴上作出纵坐标等于 $a$ 的 $Q$ 点，并过 $Q$ 点引平行于 $O x$ 轴的直线，交单位圆周于 $A$ 和 $B$ 二点，如图9.12, $P_0$ 为 $\(1\,0\)$, $angle P_0 O A = arcsin a$ 和 $angle P_0 O B = pi - arcsin a$ 的正弦都等于 $a$, 所以 $arcsin a$ 和 $pi - arcsin a$ 是方程 $sin x = a$ 的特解，为求方程 $sin x = a$ 的通解，可将 $2 k pi$ 加于此两角中的每一个而得到，其中 $k in bb(Z)$. 因此，原方程的通解是 $ x_1 & = 2 k pi + arcsin a\
x_2 & = 2 k pi + pi - arcsin a =\(2 k + 1\)pi - arcsin a $ #noindent;合并起来，可写成 $ x = k pi +\(- 1\)^k arcsin a\,#h(2em) k in bb(Z) $

我们约定，在三角方程的通解中，“$k in bb(Z)$⁠”以后不再交代．

#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("9-12");], caption: []), figure([#fig("9-13");], caption: []))));

#strong[第二种情形：]$- 1 < a < 0$

用同样的方法作图，如图9.13所示：$angle P_0 O A = arcsin a$ 和 $angle P_0 O B = pi - arcsin a$ 是方程 $sin x = a\,thick - 1 < a < 0$ 的特解，因此，原方程的通解仍是 $ x_1 & = 2 k pi + arcsin a\
x_2 & = 2 k pi + pi - arcsin a =\(2 k + 1\)pi - arcsin a $ #noindent;合并起来，可写成 $ x = k pi +\(- 1\)^k arcsin a $

#strong[第三种情形：]$a = 1$

方程 $sin x = 1$ 的特解是 $x = pi / 2$⁠，因此，原方程的通解是 $ x = pi / 2 + 2 k pi quad upright("或者") quad x = 90 degree + k dot.op 360 degree $

#strong[第四种情形：]$a = - 1$

$ sin x = - 1 $ #noindent;特解：$x = - pi / 2$（或 $x = - 90 degree$⁠），

通解：$x = - pi / 2 + 2 k pi$（或 $x = - 90 degree + k dot.op 360 degree$⁠）．

#strong[第五种情形：]$a = 0$

$ sin x = 0 $ #noindent;特解：$x_1 = 0$ 和 $x_2 = pi$⁠．

通解：$x_1 = 2 k pi$ 和 $x_2 = pi + 2 k pi =\(2 k + 1\)pi$, 合并成：$ x = k pi $

#strong[第六种情形：]$\|a\|> 1$

在这种情形下，$sin x = a$ 没有解．

将结果总结于下表内

#align(center)[
#table(
  columns: (auto, auto,),
  align: (center + horizon, center + horizon,),
  table.vline(x: 1),
  table.hline(),
  [$a$ 的数值],
  [方程 $sin x = a$ 的解],
  table.hline(),
  [$mat(delim: #none, align: #center, column-gap: #1.5em, - 1 < a < 0; 0 < a < 1)$],
  [$mat(delim: #none, align: #center, column-gap: #1.5em, x_1 = 2 k pi + arcsin a\,quad x_2 =\(2 k + 1\)pi - arcsin a; x = k pi +\(- 1\)^k arcsin a; upright("或") med x = k dot.op 180 degree +\(- 1\)^k arcsin a)$],
  [$a = - 1$],
  [$x = - pi / 2 + 2 k pi$ 或 $x = - 90 degree + k dot.op 360 degree$],
  [$a = 0$],
  [$x = k pi$ 或 $x = k dot.op 180 degree$],
  [$a = 1$],
  [$x = pi / 2 + 2 k pi$ 或 $x = 90 degree + k dot.op 360 degree$],
  [$\|a\|> 1$],
  [方程无解],
  table.hline(),
  [],
  [在所有公式中，$k in bb(Z)$],
  table.hline(),
);

]
#example[
解方程 $sin x = 1 / 2$

]
#solution[
$ x = k pi +\(- 1\)^k arcsin 1 / 2 = k pi +\(- 1\)^k pi / 6 $ #noindent;或者$ x = k dot.op 180 degree +\(- 1\)^k dot.op 30 degree\,#h(2em)\(k in bb(Z)\) $

]
#example[
解方程 $sin x = - 1 / 2$

]
#solution[
$ x = k pi +\(- 1\)^k arcsin (- 1 / 2) = k pi +\(- 1\)^(k + 1) pi / 6 $ #noindent;或者$ x = k dot.op 180 degree +\(- 1\)^(k + 1) dot.op 30 degree\,#h(2em)\(k in bb(Z)\) $

]
#example[
解方程 $sin\(2 x - 1\)= sqrt(3) / 2$

]
#solution[
$ 2 x - 1 & = k pi +\(- 1\)^k arcsin sqrt(3) / 2\
2 x & = k pi +\(- 1\)^k dot.op pi / 3 + 1\
x & = k dot.op pi / 2 +\(- 1\)^k dot.op pi / 6 + 1 / 2\,#h(2em)\(k in bb(Z)\) $

]
==== $cos x = a$ 的解
#strong[第一种情形：]$0 < a < 1$ 在 $O x$ 轴上作出横坐标等于 $a$ 的 $P$ 点，并过 $P$ 点作平行于 $O y$ 轴的直线交单位圆周于 $C$ 和 $D$ 二点，$P_0$ 为 $\(1\,0\)$（图9.14）．$angle P_0 O C = arccos a$ 和 $angle P_0 O D = - arccos a$ 的余弦等于 $a$, 故它们是方程的解，原方程的通解是 $ x = 2 k pi plus.minus arccos a $

#strong[第二种情形：]$- 1 < a < 0$ 作类似的图形，如图9.15同样可得原方程的通解是 $ x = 2 k pi plus.minus arccos a $

#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("9-14");], caption: []), figure([#fig("9-15");], caption: []))));

#strong[第三种情形：]$a = 1$

$ cos x = 1 $

方程的特解：$x = 0$, 方程的通解：$x = 2 k pi$⁠．

#strong[第四种情形：]$a = - 1$

$ cos x = - 1 $ #noindent;方程的特解：$x = pi$, 方程的通解：$x = pi + 2 k pi =\(2 k + 1\)pi$⁠．

#strong[第五种情形：]$a = 0$ $ cos x = 0 $ #noindent;方程的特解：$x_1 = pi / 2$ 和 $x_2 = - pi / 2 = pi / 2 - pi$⁠．

方程的通解：$x = pi / 2 + k pi$⁠．

#strong[第六种情形：]$\|a\|> 1$

在这种情形下，方程 $cos x = a$ 无解．

将结果综合于下表内：

#align(center)[
#table(
  columns: (auto, auto,),
  align: (center + horizon, center + horizon,),
  table.vline(x: 1),
  table.hline(),
  [$a$ 的数值],
  [方程 $cos x = a$ 的解],
  table.hline(),
  [$- 1 < a < 0\,thick 0 < a < 1$],
  [$x = 2 k pi plus.minus arccos a$ 或 $x = k dot.op 360 degree plus.minus arccos a$],
  [$a = - 1$],
  [$x =\(2 k + 1\)pi$ 或 $x =\(2 k + 1\)dot.op 180 degree$],
  [$a = 0$],
  [$x = pi / 2 + k pi$ 或 $x = 90 degree + k dot.op 180 degree$],
  [$a = 1$],
  [$x = 2 k pi$ 或 $x = k dot.op 360 degree$],
  [$\|a\|> 1$],
  [方程无解],
  table.hline(),
  [],
  [在所有公式中，$k in bb(Z)$],
  table.hline(),
);

]
#example[
解方程 $2 cos x + 1 = 0$

]
#solution[
化简为 $cos x = - 1 / 2$⁠，通解如下：$ x & = 2 k pi plus.minus arccos (- 1 / 2)\
 & = 2 k pi plus.minus (pi - arccos 1 / 2)\
 & = 2 k pi plus.minus (pi - pi / 3)\
 & = 2 k pi plus.minus frac(2 pi, 3) $

]
#example[
解方程 $cos (x / 4 + pi / 5) = 0$

]
#solution[
$ x / 4 + pi / 5 & = pi / 2 + k pi\
x / 4 & = pi / 2 - pi / 5 + k pi = frac(3 pi, 10) + k pi\
x & = 4 (frac(3 pi, 10) + k pi) = frac(6 pi, 5) + 4 k pi $

]
==== $tan x = a$ 的解
如图9.16所示，$angle P_0 O A = arctan a$ 和 $angle P_0 O B = pi + arctan a$ 是方程的解，因为它们的正切等于 $a$. 原方程的通解是 $ x = k pi + arctan a $

#example[
解方程 $tan x = - 1$

]
#solution[
$ x = k pi + arctan\(- 1\)= k pi - arctan 1 = k pi - pi / 4 $

]
==== $cot x = a$ 的解
如图9.17所示，$angle P_0 O A = "arccot" a$ 和 $angle P_0 O B = pi + "arccot" a$ 是方程的特解，因为它们的余切等于 $a$. 原方程的通解是 $ x = k pi + "arccot" a\,#h(2em)\(k in bb(Z)\) $

#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("9-16");], caption: []), figure([#fig("9-17");], caption: []))));

#example[
解方程 $9 cot^2 2 x - 25 = 0$

]
#solution[
$ cot^2 2 x & = 25 / 9\
cot 2 x & = plus.minus 5 / 3 approx plus.minus 1.6667 $ #noindent;由 $cot 2 x = 1.6667$⁠，得：$ 2 x & = 30 degree 58' + k dot.op 180 degree\
x & = 15 degree 29' + k dot.op 90 degree $ #noindent;由 $cot 2 x = - 1.6667$⁠，得：$ 2 x & =\(180 degree - 30 degree 58'\)+ k dot.op 180 degree\
2 x & = 149 degree 2' + k dot.op 180 degree\
x & = 74 degree 31' + k dot.op 90 degree $ #noindent;$therefore quad$ 原方程的近似解是：$ x = 15 degree 29' + k dot.op 90 degree quad upright("和") quad x = 74 degree 31' + k dot.op 90 degree $

]
=== 解简单三角方程的例子
在本节中，我们来研究某些三角方程的解法．解这些方程时，一般是应用三角函数的恒等变形和解代数方程的一般知识把它归结成解一个或几个最简单的三角方程，从而求出所有解．在解三角方程的过程中，应当避免作可能破坏方程同解性的变形，如果这类变形不可避免，则需研究哪些根会失掉，哪些根是增根，对最终方程的诸解，应当进行检验，确定它们是否是原方程的解．下面通过例子来阐明．

==== 含有同角的同名三角函数的方程
#example[
解方程 $2 cos^2 x + cos x - 1 = 0$

]
#solution[
把方程看作关于未知数为 $cos x$ 的二次方程，按照二次方程的解法，可得 $ cos x = frac(- 1 plus.minus sqrt(1 + 8), 4) = frac(- 1 plus.minus 3, 4) $ #noindent;由此得：$cos x = 1 / 2$ 或 $cos x = - 1$⁠．

由 $cos x = 1 / 2$⁠，得：$x = 2 k pi plus.minus pi / 3$⁠；由 $cos x = - 1$⁠，得：$x =\(2 k + 1\)pi$⁠．

$therefore quad$ 原方程的解集是 $ lr(\{ x #scale(x: 120%, y: 120%)[$\|$] x = 2 k pi plus.minus pi / 3 \}) union lr(\{ x #scale(x: 120%, y: 120%)[$\|$] x = \( 2 k + 1 \) pi \}) $

]
#example[
解方程 $2 sin^2 x + 2 sin x - sqrt(3) sin x = sqrt(3)$

]
#solution[
#strong[解法1：]把一切项都移至左端，得：$2 sin^2 x + (2 - sqrt(3)) sin x - sqrt(3) = 0$ 解关于 $sin x$ 的二次方程，得 $ sin x & = frac(- 2 + sqrt(3) plus.minus sqrt((2 - sqrt(3))^2 + 8 sqrt(3)), 4)\
 & = frac(- 2 + sqrt(3) plus.minus sqrt(4 + 4 sqrt(3) + 3), 4)\
 & = frac(- 2 + sqrt(3) plus.minus sqrt((2 + sqrt(3))^2), 4)\
 & = frac(- 2 + sqrt(3) plus.minus (2 + sqrt(3)), 4) $ #noindent;由此得 $ sin x = sqrt(3) / 2 quad upright("或") quad sin x = - 1 $

由 $sin x = sqrt(3) / 2$ 得：$x = k dot.op 180 degree +\(- 1\)^k dot.op 60 degree$⁠．

由 $sin x = - 1$ 得：$x = - 90 degree + k dot.op 360 degree$⁠．

$therefore quad$ 原方程的解集是 $ lr(\{ x \| x = k dot.op 180 degree + \( - 1 \)^k dot.op 60 degree \}) union lr(\{ x \| x = - 90 degree + k dot.op 360 degree \}) $ #noindent;这里 $k in bb(Z)$⁠．

#strong[解法2：]把一切项都移至左端得：$2 sin^2 x + 2 sin x - sqrt(3) sin x - sqrt(3) = 0$

方程左端可以分解因式：$ 2 sin x\(sin x + 1\)- sqrt(3)\(sin x + 1\) & = 0\
\(sin x + 1\)(2 sin x - sqrt(3)) & = 0 $

若两个因式的乘积等于零，则至少有一个因式等于零，同时应当满足下列条件：对于使第一个因式为零的解，应当使方程的第二个因式有确定的值．上面的方程可分为这样的两个方程：$ 2 sin x - sqrt(3) = 0 quad upright("或") quad sin x + 1 = 0 $ #noindent;分别由 $sin x = sqrt(3) / 2$ 和 $sin x = - 1$⁠，得到：$ x = k pi +\(- 1\)^k dot.op pi / 3 quad upright("和") quad x = - pi / 2 + 2 k pi $

把 $x = k pi +\(- 1\)^k dot.op pi / 3$ 代入 $sin x + 1$ 中，有确定值，同样把 $x = - pi / 2 + 2 k pi$ 代入 $2 sin x - sqrt(3)$ 中，也有确定值，所以原方程的解集是 $ lr(\{ x #scale(x: 180%, y: 180%)[$\|$] x = k pi + \( - 1 \)^k dot.op pi / 3 \}) union.big lr(\{ x #scale(x: 180%, y: 180%)[$\|$] x = - pi / 2 + 2 k pi \}) $

]
一般的情况下，在三角方程中，不只有一个三角函数，我们可以利用同一个角的各三角函数值之间的关系式，把方程中未知角的各三角函数都用某一个三角函数表示出来，这样，就把所解的三角方程先归结到多项式方程的问题．

#example[
解方程 $sin^2 x + cos x + 1 = 0$

]
#solution[
$because quad sin^2 x = 1 - cos^2 x$⁠，#h(2em);$therefore quad$ 原方程可化为：$ cos^2 x - cos x - 2 & = 0\
cos x & = frac(1 plus.minus 3, 2) $ #noindent;由此得到 $ cos x = 2 quad upright("或") quad cos x = - 1 $

$because quad cos x = 2 > 1$,#h(2em);$therefore quad$ 方程无解．

由 $cos x = - 1$⁠，得：$x =\(2 k + 1\)pi$

$therefore quad$ 原方程的解集是 $\{ x\|x =\(2 k + 1\)pi\,thick k in bb(Z) \}$⁠．

]
#example[
解方程 $cos x - sin x = 0$

]
#solution[
如果用 $cos x$ 表示 $sin x$ 或用 $sin x$ 表示 $cos x$, 那么我们就得到根式方程，为了避免这点，可以用 $cos x$ 去除方程的两边，得到 $ 1 - tan x = 0 $ #noindent;因为原方程的解不含有 $cos x = 0$ 的解，所以我们有根据这样做．事实上，由 $cos x = 0$, 得到 $x = pi / 2 + k pi$, 代入 $cos x - sin x$ 中，有 $ cos (pi / 2 + k pi) - sin (pi / 2 + k pi) = 0 -\(- 1\)^k sin pi / 2 =\(- 1\)^(k + 1) eq.not 0 $ #noindent;不满足原方程．

因此，用 $cos x$ 去除原方程的两边，得到和原方程同解的方程 $ tan x = 1 $ #noindent;由此，$x = k pi + pi / 4$⁠．

所以原方程的解集是 $lr(\{ x #scale(x: 180%, y: 180%)[$\|$] x = k pi + pi / 4 \, thick k in bb(Z) \})$

]
#rmk[
当解 $cos x - sin x = 0$ 时，也可以把 $cos x$ 提出括号之外，而不用 $cos x$ 去除两端，原方程可写成下面的形式 $ cos x\(1 - tan x\)= 0 $ #noindent;由此得到 $ cos x = 0 quad upright("或") quad tan x = 1 $ #noindent;但是使 $cos x = 0$ 的解：$x = pi / 2 + k pi$ 却使因式 $1 - tan x$ 无意义，这就表示 $x = pi / 2 + k pi$ 是原方程的增根，因此必须舍去，同样我们得到原方程的同解方程 $tan x = 1$⁠．

对于例9.29这种方程的解法还可以应用到下面更一般的类型上去．

左端是关于 $sin x$ 和 $cos x$ 的齐次多项式右端是零的方程，称为#strong[齐次方程]，例9.29的方程是齐次方程的一个特例．

]
#example[
解齐次方程 $2 sin^2 x - 7 sin x cos x + 6 cos^2 x = 0$

]
#solution[
用 $cos^2 x$ 除原方程的两端，得 $ 2 tan^2 x - 7 tan x + 6 = 0 $ #noindent;由此得 $tan x = 2 quad upright("或") quad tan x = 1.5$

由 $tan x = 2$ 得 $ x approx k dot.op 180 degree + 63 degree 26' $

由 $tan x = 1.5$ 得 $ x approx k dot.op 180 degree + 56 degree 19' $ #noindent;$therefore quad$ 原方程的解集是：$ lr(\{ x #scale(x: 120%, y: 120%)[$\|$] x = k dot.op 180 degree + 63 degree 26' \}) union lr(\{ x #scale(x: 120%, y: 120%)[$\|$] x = k dot.op 180 degree + 56 degree 19' \}) $ #noindent;或者 $ lr(\{ x #scale(x: 120%, y: 120%)[$\|$] x = k pi + arctan 2 \}) union.big lr(\{ x #scale(x: 120%, y: 120%)[$\|$] x = k pi + arctan 3 / 2 \}) $

又这样的方程 $2 sin^2 x + 5 sin x cos x + cos^2 x = 4$ 也可以归入齐次方程，因为原方程可写成 $ 2 sin^2 x + 5 sin x cos x + cos^2 x - 4\(cos^2 x + sin^2 x\)= 0 $ #noindent;化简得 $ 2 sin^2 x - 5 sin x cos x + 3 cos^2 x = 0 $

]
#example[
解方程 $8 sin^2 x / 2 + 3 sin x - 4 = 0$

]
#solution[
原方程可以变形为齐次方程 $ 8 sin^2 x / 2 + 6 sin x / 2 cos x / 2 - 4 (sin^2 x / 2 + cos^2 x / 2) = 0 $ #noindent;化简得：$2 sin^2 x / 2 + 3 sin x / 2 cos x / 2 - 2 cos^2 x / 2 = 0$⁠．

两边除以 $cos^2 x / 2$, 得 $ 2 tan^2 x / 2 + 3 tan x / 2 - 2 = 0 $ #noindent;所以 $tan x / 2 = - 2 quad upright("或") quad tan x / 2 = 1 / 2$⁠．

由 $tan x / 2 = - 2$ 得：$ x / 2 & = - arctan 2 + k pi\
x = - 2 arctan 2 + 2 k pi $

由 $tan x / 2 = 1 / 2$ 得：$ x / 2 & = arctan 1 / 2 + k pi\
x = 2 arctan 1 / 2 + 2 k pi $ #noindent;因为原方程的解不含有 $cos^2 x / 2 = 0$ 的解，所以，这样解不会丢根，由此知原方程的解是 $ lr(\{ x #scale(x: 120%, y: 120%)[$\|$] x = - 2 arctan 2 + 2 k pi \}) union lr(\{ x #scale(x: 120%, y: 120%)[$\|$] x = 2 arctan 1 / 2 + 2 k pi \}) $

]
==== 一边为零，另一边可以分解为因式的乘积的方程
#example[
解方程 $1 - cos x = tan x - sin x$

]
#solution[
原方程可变形为：$1 - cos x = tan x\(1 - cos x\)$

如果方程的两边除以 $1 - cos x$, 那么，原方程中就会丢掉 $1 - cos x = 0$ 的根．为了不致丢掉这些根，把因式 $1 - cos x$ 提出，方程就变形为：$ \(1 - cos x\)\(1 - tan x\)= 0 $ #noindent;于是 $ 1 - cos x = 0 quad upright("或") quad 1 - tan x = 0 $ #noindent;由 $cos x = 1$ 得到 $x = 2 k pi$, 由 $tan x = 1$ 得到 $x = pi / 4 + k pi$⁠．

由于方程 $cos x = 1$ 的解使因式 $1 - tan x$ 有确定值，而方程 $tan x = 1$ 的解也使因式 $1 - cos x$ 有确定值，所以原方程的解集是 $ lr(\{ x #scale(x: 120%, y: 120%)[$\|$] x = 2 k pi \}) union lr(\{ x #scale(x: 120%, y: 120%)[$\|$] x = pi / 4 + k pi \}) $

]
#example[
解方程 $tan x + tan 2 x - tan 3 x = 0$

]
#solution[
原方程可写成 $tan 3 x\(1 - tan x dot.op tan 2 x\)- tan 3 x = 0$

化简得：$tan x dot.op tan 2 x dot.op tan 3 x = 0$⁠，由此得：$ tan x = 0 quad upright("或") quad tan 2 x = 0 quad upright("或") quad tan 3 x = 0 $ #noindent;由 $tan x = 0$ 得 $x = k pi$⁠；由 $tan 2 x = 0$ 得 $x = frac(k pi, 2)$⁠；由 $tan 3 x = 0$ 得 $x = frac(k pi, 3)$

把各方程的解标在单位圆上，得到满足各方程的角的终边，如图9.18所示．

#figure([#fig("9-18");

  ],
  caption: [
  ]
)

$because quad tan x = 0$ 的解 $x = k pi = 3 k dot.op pi / 3 in \{ x\|tan 3 x = 0 \} = lr(\{ x #scale(x: 120%, y: 120%)[$\|$] x = k dot.op pi / 3 \})$

又 $tan 2 x = 0$ 的解 $x = k dot.op pi / 2$ 中，当 $k = 2 n + 1$ 时，使 $tan x$ 没有确定值，必须舍去；又当 $k = 2 n$ 时，$ x = n pi = 3 n dot.op pi / 3 in lr(\{ x #scale(x: 120%, y: 120%)[$\|$] x = k dot.op pi / 3 \}) = \{ x\|tan 3 x = 0 \} $ #noindent;因此，所求方程的解集是 $lr(\{ x #scale(x: 120%, y: 120%)[$\|$] x = k dot.op pi / 3 \, quad k in bb(Z) \})$

]
#example[
解方程 $sin x + tan x = sec x - cos x$

]
#solution[
两边同乘以 $cos x$, 得到 $sin x cos x + sin x = 1 - cos^2 x$ 移项，提取公因式得 $ sin x\(cos x + 1 - sin x\)= 0 $ #noindent;由此得 $ sin x = 0 quad upright("或") quad cos x + 1 - sin x = 0 $

由 $sin x = 0$, 得 $x = k pi$.

由 $sin x - cos x = 1$⁠，变形为 $sin x - sin\(90 degree - x\)= 1$⁠，即：$ 2 cos 45 degree sin (x - pi / 4) = 1 $ #noindent;即 $sin (x - pi / 4) = sqrt(2) / 2$

由此得：$ x - pi / 4 = pi / 4 + 2 k pi quad upright("或") quad x - pi / 4 = frac(3 pi, 4) + 2 k pi $ #noindent;即 $ x = pi / 2 + 2 k pi quad upright("或") quad x =\(2 k + 1\)pi $ #noindent;这样，我们由已知方程得到3组解：

#numbered-align(($x$, $eqph = k pi$, true), ($x$, $eqph = pi / 2 + 2 k pi$, true), ($x$, $eqph =\(2 k + 1\)pi$, true));

#noindent;因为 $\{ x\|x =\(2 k + 1\)pi \} subset \{ x\|x = k pi \}$⁠，又 $x = pi / 2 + 2 k pi$ 使 $cos x = 0$⁠，因此对于 $x$ 的这些值，原方程中的函数 $tan x$ 及 $sec x$ 无意义，这就是说 $x = pi / 2 + 2 k pi$ 是增根，必须舍去，所以原方程的解集是 $\{ x\|x = k pi\,thick k in bb(Z) \}$⁠．

]
#example[
解方程 $sin 7 x = sin 5 x$

]
#solution[
#strong[解法1：]移项，得 $sin 7 x - sin 5 x = 0$⁠，利用和差化积公式得 $ 2 cos 6 x sin x = 0 $ #noindent;由此得 $ cos 6 x = 0 quad upright("或") quad sin x = 0 $ #noindent;由 $cos 6 x = 0$⁠，得：$ 6 x & = pi / 2 + k pi\
x & = pi / 12 + k dot.op pi / 6 $ #noindent;由 $sin x = 0$⁠，得：$x = k pi$⁠．

所求方程的解集是 $ lr(\{ x #scale(x: 120%, y: 120%)[$\|$] x = pi / 12 + k dot.op pi / 6 \}) union lr(\{ x #scale(x: 120%, y: 120%)[$\|$] x = k pi \}) $

#strong[解法2：]利用二角正弦相等条件有 $ 7 x = 5 x + 2 k pi quad upright("或") quad 7 x = pi - 5 x + 2 k pi $

由 $7 x = 5 x + 2 k pi$ 得 $2 x = 2 k pi$⁠，因此：$x = k pi$⁠．

由 $7 x = pi - 5 x + 2 k pi$ 得 $12 x = pi + 2 k pi$, 因此：$x = pi / 12 + k dot.op pi / 6$

$therefore quad$ 方程的解集是 $ lr(\{ x #scale(x: 120%, y: 120%)[$\|$] x = k pi \}) union lr(\{ x #scale(x: 120%, y: 120%)[$\|$] x = pi / 12 + k dot.op pi / 6 \}) $

我们得到与第一种解法相同的结果．

]
==== $a sin x + b cos x = c$ 型的方程
#v(0.8em);

#noindent;#strong[第一种方法]#h(1em);引入辅助角 $phi$⁠，让方程的两端除以 $sqrt(a^2 + b^2)$, 得到 $ a / sqrt(a^2 + b^2) sin x + b / sqrt(a^2 + b^2) cos x = c / sqrt(a^2 + b^2) $ #noindent;令 $cos phi = a / sqrt(a^2 + b^2)\,quad sin phi = b / sqrt(a^2 + b^2)$⁠，由点 $\(a\,b\)$ 所在的象限定出角 $phi$ 是第几象限角, 可由 $tan phi = b / a$ 求出 $phi$ 的值, 于是原方程可写成 $ sin x cos phi + cos x sin phi = c / sqrt(a^2 + b^2) $ #noindent;即 $sin\(x + phi\)= c / sqrt(a^2 + b^2)$

解出#numbered-eq($ x + phi = 2 k pi + arcsin c / sqrt(a^2 + b^2) $);#noindent;或#numbered-eq($ x + phi = 2 k pi + pi - arcsin c / sqrt(a^2 + b^2) $);#noindent;由此得到 $ x = 2 k pi + arcsin c / sqrt(a^2 + b^2) - phi $ #noindent;或 $ x =\(2 k + 1\)pi - arcsin c / sqrt(a^2 + b^2) - phi $

讨论：原方程有解的必要且充分条件是 $lr(|c / sqrt(a^2 + b^2)|) lt.eq 1$⁠，即 $frac(c^2, a^2 + b^2) lt.eq 1$⁠，由此得到 $a^2 + b^2 gt.eq c^2$.

#example[
解方程 $- sqrt(3) sin x + cos x = 1$

]
#solution[
原方程两边除以 $sqrt(\(- sqrt(3)\)^2 + 1) = 2$, 得到 $ - sqrt(3) / 2 sin x + 1 / 2 cos x = 1 / 2 $ #noindent;令 $cos phi = - sqrt(3) / 2 < 0\,quad sin phi = 1 / 2 > 0$⁠，则角 $phi$ 是第二象限角，$ phi = arccos (- sqrt(3) / 2) = pi - arccos sqrt(3) / 2 = pi - pi / 6 = frac(5 pi, 6) $ #noindent;于是，原方程可写成 $ sin x cos frac(5 pi, 6) + cos x sin frac(5 pi, 6) = 1 / 2 $ #noindent;即：$sin (x + frac(5 pi, 6)) = 1 / 2$⁠．

$therefore quad x + frac(5 pi, 6) = 2 k pi + pi / 6 quad upright("或") quad x + frac(5 pi, 6) = 2 k pi + (pi - pi / 6)$

由此：$x = 2 k pi - frac(2 pi, 3) quad upright("或") quad x = 2 k pi$⁠．

$therefore quad$ 原方程的解集是 $ lr(\{ x #scale(x: 120%, y: 120%)[$\|$] x = 2 k pi - frac(2 pi, 3) \}) union lr(\{ x #scale(x: 120%, y: 120%)[$\|$] x = 2 k pi \}) $

]
#example[
解方程 $2 sin x - 3 cos x = sqrt(13)$

]
#solution[
方程两边除以 $sqrt(2^2 +\(- 3\)^2) = sqrt(13)$, 得到 $ 2 / sqrt(13) sin x + frac(\(- 3\), sqrt(13)) cos x = 1 $ #noindent;令 $cos phi = 2 / sqrt(13) > 0\,quad sin phi = frac(- 3, sqrt(13)) < 0$ 则角 $phi$ 是第四象限角，且由 $tan phi = - 3 / 2 = - 1.5$, 查表得出 $phi = arctan\(- 1.5\)approx - 56 degree 18'$, 于是原方程可写成 $ sin x cos\(- 56 degree 18'\)+ cos x sin\(- 56 degree 18'\)= 1 $ #noindent;即：$sin\(x - 56 degree 18'\)= 1$⁠，由此：$ x - 56 degree 18' & = k dot.op 360 degree + 90 degree\
x & = k dot.op 360 degree + 146 degree 18' $

$therefore quad$ 原方程的解集是 $\{ x #scale(x: 120%, y: 120%)[$\|$] x = k dot.op 360 degree + 146 degree 18' \}$⁠．

]
#v(0.8em);

#noindent;#strong[第二种方法]#h(1em);利用 $tan x / 2$ 表 $sin x$ 和 $cos x$ 的公式（“万能公式”），$ sin x = frac(2 tan x / 2, 1 + tan^2 x / 2)\,#h(2em) cos x = frac(1 - tan^2 x / 2, 1 + tan^2 x / 2) $

例如，$- sqrt(3) sin x + cos x = 1$⁠，可写成 $ frac(- sqrt(3) dot.op 2 tan x / 2, 1 + tan^2 x / 2) + frac(1 - tan^2 x / 2, 1 + tan^2 x / 2) = 1 $ #noindent;化简得 $ 2 tan^2 x / 2 + 2 sqrt(3) tan x / 2 & = 0\
2 tan x / 2 (tan x / 2 + sqrt(3)) & = 0 $ #noindent;$therefore quad tan x / 2 = 0 quad upright("或") quad tan x / 2 + sqrt(3) = 0$

由 $tan x / 2 = 0$ 得 $x / 2 = k pi$,#h(1em);$therefore quad x = 2 k pi$

由 $tan x / 2 = - sqrt(3)$ 得 $x / 2 = k pi + arctan\(- sqrt(3)\)$

$therefore quad x = 2 k pi + 2 (- pi / 3) = 2 k pi - frac(2 pi, 3)$

因为原方程不含使 $tan x / 2$ 失去意义的解 $x =\(2 k + 1\)pi$, 所以用万能公式进行代换不会丢根．

$therefore quad$ 原方程的解集是 $ lr(\{ x #scale(x: 120%, y: 120%)[$\|$] x = 2 k pi - 2 / 3 pi \}) union lr(\{ x #scale(x: 120%, y: 120%)[$\|$] x = 2 k pi \}) $ #noindent;所得结果与例9.36第一种解法相同．

#v(0.8em);

#noindent;#strong[第三种方法]#h(1em);化为 $sin x / 2$ 和 $cos x / 2$ 的二次齐次方程，例如 $- sqrt(3) sin x + cos x = 1$, 可写成 $ - 2 sqrt(3) sin x / 2 cos x / 2 + cos^2 x / 2 - sin^2 x / 2 = cos^2 x / 2 + sin^2 x / 2 $ #noindent;化简为 $ - 2 sqrt(3) sin x / 2 cos x / 2 - 2 sin^2 x / 2 & = 0\
- 2 sin x / 2 (sqrt(3) cos x / 2 + sin x / 2) & = 0 $ #noindent;由 $sin x / 2 = 0$, 得到 $x / 2 = k pi\,quad therefore quad x = 2 k pi$

由 $sqrt(3) cos x / 2 + sin x / 2 = 0$, 两边除以 $cos x / 2$ 得：$ sqrt(3) + tan x / 2 & = 0\
tan x / 2 & = - sqrt(3)\
x / 2 & = k pi - pi / 3\
x & = 2 k pi - frac(2 pi, 3) $ #noindent;$therefore quad$ 原方程的解集是 $ lr(\{ x #scale(x: 120%, y: 120%)[$\|$] x = 2 k pi \}) union lr(\{ x #scale(x: 120%, y: 120%)[$\|$] x = 2 k pi - 2 / 3 pi \}) $ #noindent;所得结果仍与例9.36的第一种方法相同．

== 三角不等式的解法
#blk[定理][
若函数 $f\(x\)$ 在 $\[a\,b\]$ 上到处连续且对于任何一个 $x in\(a\,b\)$, $f\(x\)eq.not 0$, 则 $f\(x\)$ 在 $\(a\,b\)$ 上保持相同符号．

]
#proof[
用反证法，假设 $f\(x\)$ 在 $\(a\,b\)$ 内的值有相异的符号，即存在 $x_1$ 和 $x_2$ 满足 $a < x_1 < x_2 < b$ 且使 $f\(x_1\)f\(x_2\)< 0$, 于是根据连续函数中间值定理，必存在一个介于 $x_1$ 和 $x_2$ 之间的常数 $c$, 使得 $f\(c\)= 0$. 这和已知条件：对于任何一个 $x in\(a\,b\)$, $f\(x\)eq.not 0$ 矛盾，因此，$f\(x\)$ 在 $\(a\,b\)$ 内保持相同符号．

]
我们举例说明如何应用这个定理解不等式．

#example[
解不等式 $sin x > a$

]
#solution[
移项，化为 $sin x - a > 0$

设 $f\(x\)= sin x - a$, $f\(x\)$ 是周期等于 $2 pi$ 的函数，先讨论在长度等于一个周期的区间 $[- pi / 2 \, frac(3 pi, 2)]$ 内的 $f\(x\)$ 的符号：

+ 若 $\|a\|lt.eq 1$, 求 $f\(x\)$ 在 $[- pi / 2 \, frac(3 pi, 2)]$ 内的零点．$sin x = a$ 在 $[- pi / 2 \, frac(3 pi, 2)]$ 内的解是 $ x_1 = arcsin a quad upright("和") quad x_2 = pi - arcsin a $ #noindent;把解的终边画在单位圆上，如图9.19且由图9.19看出：

  #figure([#fig("9-19");

    ],
    caption: [
    ]
  )

  当 $arcsin a < x < pi - arcsin a$ 时，$f\(x\)= sin x - a > 0$ 成立；

  当 $- pi / 2 < x < arcsin a$ 或 $pi - arcsin a < x < frac(3 pi, 2)$ 时，$f\(x\)= sin x - a < 0$ 成立，因此，在 $\|a\|lt.eq 1$ 的场合，$sin x > a$ 在 $[- pi / 2 \, frac(3 pi, 2)]$ 内的解满足条件：$ arcsin a < x < pi - arcsin a $ #noindent;由于 $f\(x\)= sin x - a$ 是周期等于 $2 pi$ 的函数，因此 $sin x > a$ 的一切解满足条件：$ 2 k pi + arcsin a < x <\(2 k + 1\)pi - arcsin a\,quad k in bb(Z) $

+ 若 $a > 1$, 则对于任何 $x in bb(R)$, 有 $f\(x\)= sin x - a < 0$, 因此，不等式 $sin x > a$ 没有解．

+ 若 $a < - 1$, 则对于任何 $x in bb(R)$, 有 $f\(x\)= sin x - a > 0$, 因此，不等式 $sin x > a$ 的解集是实数集 $bb(R)$⁠．

总之：

+ 当 $\|a\|lt.eq 1$ 时，所求不等式的解集是$ \{ x\|2 k pi + arcsin a < x <\(2 k + 1\)pi - arcsin a \} $

+ 当 $a > 1$ 时，所求不等式的解集是空集 $nothing$⁠；

+ 当 $a < - 1$ 时，所求不等式的解集是实数集 $bb(R)$⁠．

]
#example[
解不等式 $cos x < a$

]
#solution[
移项，化为 $cos x - a < 0$

设 $f\(x\)= cos x - a$, $f\(x\)$ 是周期等于 $2 pi$ 的函数，先讨论在长度等于一个周期的区间 $\[- pi\,pi\]$ 内的 $f\(x\)$ 的符号：

+ 若 $\|a\|lt.eq 1$, $f\(x\)= cos x - a$ 在 $\[- pi\,pi\]$ 内的解是 $ x_1 = arccos a quad upright("和") quad x_2 = - arccos a $ #noindent;把解的终边画在单位圆上，如图9.20且由图9.20容易看出：

  #figure([#fig("9-20");

    ],
    caption: [
    ]
  )

  当 $arccos a < x < pi$ 或 $- pi < x < - arccos a$ 时，$f\(x\)= cos x - a < 0$ 成立，而且仅在此时成立，又因为 $f\(x\)= cos x - a$ 的周期是 $2 pi$, 所以，$cos x < a$ 的一切解，满足#numbered-eq($ 2 k pi + arccos a < x <\(2 k + 1\)pi $);#noindent;或#numbered-eq($ \(2 k - 1\)pi < x < 2 k pi - arccos a $);#noindent;又 (9.7) 也可以写成#numbered-eq($ \(2 k + 1\)pi < x <\(2 k + 2\)pi - arccos a $);#noindent;再将 (9.6), (9.8) 合并为#numbered-eq($ 2 k pi + arccos a < x <\(2 k + 2\)pi - arccos a $);#noindent;因此，在 $\|a\|lt.eq 1$ 的场合，$cos x < a$ 的一切解满足 (9.9)．

+ 若 $a > 1$, 则对于任何 $x in bb(R)$, 有 $f\(x\)= cos x - a < 0$ 成立，因此，不等式 $cos x < a$ 的解集是实数集 $bb(R)$⁠．

+ 若 $a < - 1$, 则对于任何 $x in bb(R)$, 有 $f\(x\)= cos x - a > 0$ 成立，因此，不等式 $cos x < a$ 没有解．

总之，

+ 当 $\|a\|lt.eq 1$ 时，所求不等式的解集是 $ \{ x\|2 k pi + arccos a < x <\(2 k + 2\)pi - arccos a \} $

+ 当 $a > 1$ 时，所求不等式的解集是实数集 $bb(R)$⁠．

+ 当 $a < - 1$ 时，所求不等式的解集是空集 $nothing$⁠．

]
#example[
解不等式 $2 cos^2 2 x < 1$

]
#solution[
移项，化简为 $cos 4 x < 0$⁠．设 $f\(x\)= cos 4 x$, 它是周期等于 $frac(2 pi, 4) = pi / 2$ 的函数．

$f\(x\)= cos 4 x$ 在 $[0 \, pi / 2]$ 内的零点为 $pi / 8$⁠，$frac(3 pi, 8)$⁠．

显然，当 $0 lt.eq x < pi / 8$ 时，$f\(x\)= cos 4 x > 0$⁠；当 $pi / 8 < x < frac(3 pi, 8)$ 时，$f\(x\)= cos 4 x < 0$⁠；当 $frac(3 pi, 8) < x lt.eq pi / 2$ 时，$f\(x\)= cos 4 x > 0$⁠．

$therefore quad cos 4 x < 0$ 在 $[0 \, pi / 2]$ 内的部分解满足条件：$pi / 8 < x < frac(3 pi, 8)$

又 $f\(x\)$ 的周期是 $pi / 2$⁠．

$therefore quad cos 4 x < 0$ 的一切解满足条件 $ pi / 8 + n dot.op pi / 2 < x < frac(3 pi, 8) + n dot.op pi / 2 #h(2em)\(n in bb(Z)\) $ #noindent;$therefore quad 2 cos^2 2 x < 1$ 的解集是 $ lr(\{ x #scale(x: 180%, y: 180%)[$\|$] pi / 8 + n dot.op pi / 2 < x < frac(3 pi, 8) + n dot.op pi / 2 \}) $

]
#example[
解不等式 $frac(cos 2 x + cos x - 1, cos 2 x) > 2\,quad\(0 < x < 2 pi\)$

]
#solution[
移项，并将 $cos 2 x = 2 cos^2 x - 1$ 代入得 $ frac(cos x\(1 - 2 cos x\), 2 cos^2 x - 1) > 0 $ #noindent;因为原不等式的解使 $cos 2 x eq.not 0$（即 $2 cos^2 x - 1 eq.not 0$⁠），两边乘以 $\(2 cos^2 x - 1\)^2$, 得到同解不等式 $ cos x\(1 - 2 cos x\)\(2 cos^2 x - 1\)> 0 $ #noindent;即 $ (cos x + 1 / sqrt(2)) cos x (cos x - 1 / 2) (cos x - 1 / sqrt(2)) < 0 $ #noindent;上面不等式左端的函数式 $f\(x\)$ 的零点依大小排列是 $- 1 / sqrt(2)\,thick 0\,thick 1 / 2\,thick 1 / sqrt(2)$⁠．由此得知，仅当#numbered-eq($ - 1 / sqrt(2) < cos x < 0 $);#noindent;或#numbered-eq($ 1 / 2 < cos x < 1 / sqrt(2) $);#noindent;时，$cos x\(1 - 2 cos x\)\(2 cos^2 x - 1\)> 0$⁠．

由于 $cos x$ 在区间 $\[0\,pi\]$ 内是递减的，在区间 $\[pi\,2 pi\]$ 内是递增的，所以由不等式 (9.10), 得（图9.21）：$ pi / 2 < x < frac(3 pi, 4)\,#h(2em) frac(5 pi, 4) < x < frac(3 pi, 2) $ #noindent;由不等式 (9.11), 得（图9.22）：$ pi / 4 < x < pi / 3\,#h(2em) frac(5 pi, 3) < x < frac(7 pi, 4) $ #noindent;因此，原不等式在区间 $0 < x < 2 pi$ 内的解集是 $ lr(\{ x #scale(x: 180%, y: 180%)[$\|$] pi / 4 < x < pi / 3 \}) union.big lr(\{ x #scale(x: 180%, y: 180%)[$\|$] pi / 2 < x < frac(3 pi, 4) \}) union.big lr(\{ x #scale(x: 180%, y: 180%)[$\|$] frac(5 pi, 4) < x < frac(3 pi, 2) \}) union.big lr(\{ x #scale(x: 180%, y: 180%)[$\|$] frac(5 pi, 3) < x < frac(7 pi, 4) \}) $

]
#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("9-21");], caption: []), figure([#fig("9-22");], caption: []))));

#heading(level: 2, numbering: none, supplement: [toc-sub])[习题9.4]

+ #block(sticky: true)[解下列方程：]

  #cols(2)[
  + $sin x = sqrt(3) / 2$

  + $sin x = 1$

  + $sin (x + pi / 6) = - 1 / 2$

  + $sin x = 0$

  + $cos x = 0$

  + $cos (x + pi / 6) = 1 / 2$

  + $cos (x + pi / 4) = - sqrt(3) / 2$

  + $cos x = 1$

  + $tan (x + pi / 4) = - 1$

  + $cot frac(2 x, 3) - 1 = 0$

  + $tan (x - pi / 3) = - sqrt(3)$

  + $cot x = 0$

  ]

+ #block(sticky: true)[解下列各方程（用反三角函数符号表示各方程的解）：]

  #cols(2)[
  + $sin 2 x = 0.7$

  + $cos alpha / 2 = 1 / 5$

  + $tan 3 x = 3$

  + $cot x / 4 = 1 / 4$

  + $sin (alpha + pi / 3) = 0.1$

  + $cos (2 x - pi / 10) = 0.85$

  + $tan (x / 2 + pi / 5) = 1 / 8$

  + $cot\(2 x - 1\)= sqrt(2)$

  ]

+ #block(sticky: true)[解下列各方程：]

  #cols(2)[
  + $2 sin frac(x + 1, 4) + 1 = 0$

  + $4 sin^2 4 x - 3 = 0$

  + $2 sin^2 x - 3 sin x + 1 = 0$

  + $tan^2 3 x = 2 tan 3 x$

  ]
  #block[
  #set enum(numbering: enum-at(2, none, start: 5))
  + $cot^2 (x / 2 - pi / 8) + 3 cot (x / 2 - pi / 8) - 4 = 0$

  + $4 cos^2 x + sin x = 1$

  + $tan x + 5 cot x = 6$

  + $2 cot 3 x + tan 3 x + 3 = 0$
  ]

+ $a\,b\,c$ 满足什么条件，方程 $a sin^2 x + b cos^2 x = c$ 有解．

+ 解下列各方程：

  + $sin x\(1 + 2 cos x\)= 0$

  + $sin 2 x cos 3 x = 0$

  + $cos (2 x + pi / 3) sin (3 x - pi / 3) = 0$

  + $cos 5 x\(1 + cos 2 x\)= 0$

  + $cot x - cos x = 1 - sin x$

  + $1 + sin x cos 3 x + sin x + cos 3 x = 0$

  + $frac(cos x, 1 + sin x) = 2 - tan x$

  + $sin 3 x dot.op cot x = 0$

+ 解下列各方程：

  + $sin 3 x = cos 3 x$

  + $sin^2 3 x = 3 cos^2 3 x$

  + $5 cos x + 2 sin x = 5 cos x cos 2 x + 2 sin x cos 2 x$

  + $sin x tan x + cos x dot.op cot x = sin x + cos x$

  + $sin^2 x + 5 sin x cos x + 4 cos^2 x = 0$

  + $3 sin^2 x - 7 sin x cos x + 6 cos^2 x = 1$

  + $frac(sin x + 2 cos x, sin x - 2 cos x) = 3$

  + $frac(2 sin^2 x - 4 cos^2 x, sin^2 x + 3 sin x cos x + 6 cos^2 x) = 1$

+ $a\,b$ 满足什么条件, 方程 $frac(a^2 sin^2 x + b cos^2 x, b^2 sin^2 x + a cos^2 x) = 1$ 有解．

+ 解下列各方程：

  + $sin 3 x cos x = cos 3 x sin x$

  + $cos 7 x cos 3 x = cos 4 x$

  + $sin (pi / 2 - x) cos 2 x + sin\(2 x - pi\)sin x = 0$

  + $sin frac(3 pi - x, 2) cos (pi / 2 - 3 x) = cos\(3 x - pi\)cos frac(3 pi + x, 2)$

  + $tan x dot.op tan (3 x - pi / 4) = 1$

  + $sin x cos x = 1 / 4$

  + $sin\(34 degree + x\)sin\(56 degree - x\)= sqrt(2) / 4$

  + $cos^4 x - sin^4 x = 1$

  + $cos^2 (x + 30 degree) - sin^2 (x + 30 degree) = 1 / 2$

  + $sin (x + pi / 10) sin (frac(2 pi, 5) - x) = sqrt(2) / 4$

  #cols(2)[
  #block[
  #set enum(numbering: enum-at(2, none, start: 11))
  + $sin (x + pi / 6) = 2 cos x$

  + $1 - tan^2 x = 2 tan x tan 2 x$

  + $2 cos 2 x = 7 sin x$

  + $sin 2 x + sqrt(2) sin x = 0$

  + $2 sin^2 x + sin^2 2 x = 2$

  + $frac(cos 2 x, cos x - sin x) = 0$

  + $sin 4 x = 2 cos^2 x - 1$

  + $sin x cos x cos 2 x = 1 / 8$

  + $cot x - tan x = tan 2 x$

  + $2 - sin x / 2 = 2 cos x / 2$
  ]

  ]
  #block[
  ]

+ 解下列各方程：

  + $sin 2 x = sin 3 x$

  + $cos (2 x + 15 degree) = cos (4 x - 15 degree)$

  + $tan (x / 2 + 30 degree) = tan (2 x + 60 degree)$

  + $cos 3 x = sin (x - pi / 6)$,

  + $tan (pi / 8 - x) = cot (pi / 4 + 3 x)$

  + $sin 2 x = - sin x / 2$

  + $tan 3 x + cot x / 3 = 0$

  + $sin 3 x + sqrt(3) / 2 sin 2 x = 1 / 2 cos 2 x$

  + $cos x - sin x = 1$

  + $cos (2 x + 15 degree) + cos (2 x - 15 degree) = 1 / 2$

  + $sin x + cos x = 2 sqrt(2) sin x cos x$

  + $sin 3 x cos x = sin 7 x cos 5 x$

  + $2 cos (x + 20 degree) cos x = cos 40 degree$

  + $sin (2 x + pi / 18) cos (2 x - pi / 9) = - 1 / 4$

  + $sin (x + 15 degree) sin (x - 30 degree) =$ $sin (50 degree + x) cos (85 degree - x)$

+ #block(sticky: true)[解下列各方程：]

  #cols(2)[
  + $cos 7 x + cos x = cos 4 x$

  + $tan x + tan 2 x = sin 3 x cos x$

  + $cos 8 x + cos 6 x = sqrt(3) cos x$

  + $1 - cos 2 x = 4 sin x$

  + $sin 2 x + 2 sin x = sin x / 2$

  + $sin x + sin 2 x + sin 3 x = 0$

  + $cos x + cos 2 x - cos 3 x = 1$

  + $tan x + tan 2 x = tan 3 x$

  + $1 + cos 2 x + sin x = 2 cos^2 x / 2$

  ]

+ 解下列各方程：

  + $sin^2 (x + 10 degree) - sin^2 x = 1 / 2 sin 20 degree$

  + $sin^2 x + sin^2 2 x + sin^2 3 x = 3 / 2$

  + $cos^2 x + cos^2 2 x + cos^2 3 x = 1$

  + $sin^2 2 x + sin^2 4 x = 3 / 2$

  + $sqrt(3) cos x + sin x = sqrt(3)$

  + $4 sin x + 3 cos x = 2$

  + $sin 3 x + 2 cos 2 x = 1$

  + $5 cos (2 x + 18 degree) - 12 sin (2 x + 18 degree) = 13$

  + $\(4 sin x - 5 cos x\)^2 - 13\(4 sin x - 5 cos x\)+ 42 = 0$

+ 解下列方程：

  + $frac(1 + tan x, 1 - tan x) = 1 + sin 2 x$

  + $frac(sin x, 1 + cos x) = 2 - cot x$

  + $sin 2 x = cos 2 x - sin^2 x + 1$

  + $\(cos 5 x + cos 7 x\)^2 =\(sin 5 x + sin 7 x\)^2$

+ 设关于 $x$ 的方程 $sin x + sqrt(3) cos x + a = 0$ 在区间内有相异二解 $alpha\,beta$. 试求常数 $a$ 的取值范围和 $tan\(alpha + beta\)$ 的值．

+ #block(sticky: true)[解下列各方程组：]

  #cols(2)[
  + $display(cases(sin x sin y = frac(1, 4 sqrt(2)), tan x dot.op tan y = 1 / 3))$

  + $display(cases(x + y = pi / 4, tan x + tan y = 1))$

  + $display(cases(sin\(2 x + sin^2 y\)= 0, x - 3 sin^2 y = - 2))$

  ]

+ 解下列的不等式：

  + $sin\(2 pi cos x\)> 0$

  + $lg sin x lt.eq 0$

  + $cos^2 x + 7 sin^2 x < 8 sin x cos x$

  + $2 cos^2 (x + 30 degree) - 3 sin (60 degree - x) + 1 > 0$

  + $sin x + sqrt(3) cos x > 1$

+ #block(sticky: true)[求下列各函数的定义域：]

  #cols(2)[
  + $y = arccos 3 / x$

  + $y = arcsin frac(2 x, 1 + x^2)$

  + $y = sqrt(sin x)$

  + $y = sqrt(4 cos^2 2 x - 3)$

  ]
