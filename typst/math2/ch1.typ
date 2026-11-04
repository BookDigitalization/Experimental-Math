// 由 typst/tools/tex2typ.py 从 math2/1.tex 转换而来，已人工校对的部分以本文件为准。
#import "../common/template.typ": *
#import "figs.typ": fig

= 实验几何
几何学是研究“空间”的形体和性质的科学．“空间”就是我们和万物以至星象天体共存的所在．在日常生活中，我们举目四望所见到的地方，都是空间的一部分．同学们在小学数学课中学过的柱体、锥体、球体等等，它们都各自占有空间的一部分，并且构成不同的形体．各种形体的种种性质，如各部分的长度、角度、面积，以及体积等等．都是在我们的生活和生产实践中所不可缺少的知识．

#figure([#fig("1-01");

  ],
  caption: [
  ]
)

自古以来，人们经过实践、观察、分析，已总结出一系列的有关空间方面的知识，例如，从中国、埃及、巴比伦、玛雅等古文明中，可以看出对空间的知识都已掌握得相当丰富了．对于空间知识有系统的研究，从西方的古文明中可知，起始于古埃及和巴比仑，而在古希腊得到蓬勃的发展，获得较辉煌的成就．大体说来，古希腊在空间知识方面的成就，由欧几里得集其大成于他所著的《几何原本》#footnote[欧几里得（Euclid约公元前300年左右）所著此书原名Elements,我国明代数学家徐光启（公元1562---1633)把书中部分几何内容译成中文定名为“几何原本”．“几何学”这个中文的名称即来源于此．]这部书中．在这部书里，欧几里得把当时所知道的几何知识经过整理，建立起一个初步完整的理论体系，使这部书反映出几何学是一门偏重于推理、论证的高度理论性的科学．但是，和任何其它科学一样，几何学的理论基础也是建立在实验所得的一些基本事实之上的．在这一章里，我们就通过实验、观察、归纳来研究所得到的知识，为以后进一步学习论证几何作准备．

== 点、直线和平面
点、直线和平面是空间最简单的，也是最基本的图形．同学们在日常生活中，对它们早已有直观的认识了．在这一节里，我们再对它们的本质和相互关系作进一步的分析，确立点、直线和平面这三个基本的几何概念，并总结点、直线和平面之间相互关系方面的一些基本性质．

=== 点和直线
在空间，最原始的，也是最基本的概念就是“位置”．通常，我们就用“点”来标记“位置”．例如在一张地图上，我们就以小圆点来标记各地的位置（见图1.2).你可能发现，在地图上北京用“$star.filled$”，南京用“$circle.stroked$”印制的，这只是为了把首都和地方城市区别开来．其实，北京、南京的“位置”与地图上印制的图形“$star.filled$”或“$circle.stroked$”的形状和大小是没有关系的．这样，仅仅考虑“位置”的图形就是点．在天象图上也是以小圆点来标记各星体的位置的（见图1.3）

#align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, figure([#image("/math2/fig/1-2.png", width: 100%);], caption: []), figure([#image("/math2/fig/1-3.png", width: 100%);], caption: [])));

在几何学的讨论中，我们用不同的大写字母 $A\,B\,C\,dots.h$ 表示不同的点，如图1.4中的五个点，就在点旁分别标记以 $A$、$B$、$C$、$D$、$E$,并分别读作点 $A$、点 $B$、点 $C$、点 $D$、点 $E$．

#align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, figure([#fig("1-02");], caption: []), figure([#image("/math2/fig/1-5.png", width: 100%);], caption: [])));

在日常生活中，我们经常需要从一个地方走到另一个地方．例如，同学们早起上学，就得由自己的家所在的位置走到学校所在的位置．因此，在空间第二个原始的基本概念就要算是“通路”了．所谓“通路”，就是从一个位置移到另一个位置的路线．通常在地图上，我们用线来标记各地之间的种种通路，如铁路、公路等．在几何学的讨论中，“线”就是表示通路的．它的直观含义就是：一个“动点”由一个位置移动到另一个位置所走过的“路线”．如图1.5所示，设 $A$、$B$ 两点分别表示空间的两个位置，那么连结 $A$、$B$ 两点的可能通路是很多很多的．

在通常情况下，大家都希望所要走的通路愈短愈好，所以很自然的问题就是：

“在所有连结 $A$、$B$ 两点的各种通路中，哪一条通路最短？”

光线的存在，直截了当地显示给我们下述空间的基本性质：

“连结A、B两点的最短通路唯一存在，它就是连结 $A$、$B$ 两点的#strong[直线段]”（在均匀介质中，光走直线#footnote[由光学实验，我们知道光线其实走着最省时间的通路，而并不是走着最短的通路，再者，光的速度是随着“介质”而定的，例如在真空中走的最快，在空气中速度则稍慢（愈稀薄则其速度愈近于真空者），在水中则速度更慢，因为通常我们总是在均匀介质中观察光线，所以光线的速度是个不变的常数．这样，最省时间的通路也就是最短的通路．这就是我们常见常用的事实：光线在均匀介质中走直线．]）．

#figure([#fig("1-03");

  ],
  caption: [
  ]
)

如图1.6所示，由 $A$ 点射向 $B$ 点的光线可以由 $A$ 向 $B$ 的方向无限延伸；而由 $B$ 点射向 $A$ 点的光线也可以由 $B$ 向 $A$ 的方向无限延伸，所以对于空间任意两点 $A$、$B$,不但存在着唯一的最短通路“直线段 $A B$”，而且也唯一地确定了一条把直线段 $A B$ 两端无限延长的直线，这条直线就叫做由 $A$、$B$ 两点所确定的#strong[直线]，通常称为“直线 $A B$”，而直线段 $A B$ 是直线 $A B$ 介于A、B两点之间的那一段．

归纳上面的讨论，我们可以作出如下的总结：

+ “位置”和“通路”是两个最原始的空间概念．在几何学中，以点表示位置，以线表示通路．

+ 对于任何两点 $A$、$B$,在所有连结 $A$、$B$ 的可能通路中，存在唯一的最短通路，就是连结 $A$、$B$ 两点的直线段．

直线段 $A B$ 也简称线段 $A B$,以后我们用符号 $overline(A B)$ 表示线段 $A B$．点 $A$,点 $B$ 叫做线段 $A B$ 的#strong[端点]．有时，一条线段也可以用一个小写字母来表示，例如线段 $a$、线段 $b$ 等（图1.7(1)）．

#figure([#fig("1-04");

  ],
  caption: [
  ]
)

把 $overline(A B)$ 放在 $overline(A' B')$ 上面，使点 $A$ 和点 $A'$ 重合，$overline(A B)$ 沿着 $overline(A' B')$ 方向落下，那么有以下三种可能情况：

+ 点 $B$ 和点 $B'$ 重合，这时 $overline(A B) = overline(A' B')$ (图1.7(2));

+ 点 $B$ 落在 $A'$ 和 $B'$ 之间，这时 $overline(A B) < overline(A' B')$ (图1.7(3));

+ 点 $B$ 落在 $overline(A' B')$ 的延长线上，这时 $overline(A B) > overline(A' B')$ (图1.7(4)).

有一根拉直的绳子 $overline(A B)$,如果把它分成长度相等的两段．但是不许用尺来量，应怎么办？

同学们一定会想到，把绳子 $overline(A B)$ 的两端点 $A$、$B$ 重叠在一起，并且把绳子拉直，那么在绳子的中间就折出一个 $C$ 点来（图1.8(2)),而被折成的两段绳子 $overline(A C)$ 和 $overline(C B)$ 恰好长度相等，这就是说 $C$ 点把 $overline(A B)$ 平分了．所以我们把平分线段的点叫做#strong[线段的中点]．如果点 $C$ 是 $overline(A B)$ 的中点，则 $overline(A B) = 2 overline(A C) = 2 overline(C B)$.

#align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, figure([#fig("1-05");], caption: []), figure([#fig("1-06");], caption: [])));

#example[
已知 $overline(A B) = 24$ 厘米，点 $C$ 在 $overline(A B)$ 上，点 $M$、$N$ 分别是 $overline(A C)$ 和 $overline(C B)$ 的中点，求 $overline(M N)$ 的长度（见图1.9）．

]
#solution[
$ overline(M N) & = overline(M C) + overline(C N) = 1 / 2 overline(A C) + 1 / 2 overline(C B)\
 & = 1 / 2 (overline(A C) + overline(C B)) = 1 / 2 overline(A B) = 12 upright("厘米") $

]
#block[
#set enum(numbering: enum-at(1, none, start: 3))
+ 线段可以向两端无限延长，这样就得到一条直线．一条直线可以用表示它上面任意两点的大写字母来表示，如直线 $C D$.有时为了简便，也可以在这条直线旁标以一个小写字母，如 $ell$，表示成直线 $ell$ (图1.10)．

+ 对于任何两点 $A$、$B$,都存在着唯一一条通过 $A$、$B$ 的直线．这个性质就简述为：#strong[两点确定一条直线]．
]

#figure([#fig("1-07");

  ],
  caption: [
  ]
)

根据上述性质，我们可以说明其它有关的性质和问题．

#example[
如果两条直线 $ell$ 和 $m$ 有一个公共点（交点）$A$（图1.11），它们还能有其它的公共点吗？为什么？

]
#figure([#fig("1-08");

  ],
  caption: [
  ]
)

#solution[
除 $A$ 点外，直线 $ell$ 和 $m$ 不能再有其它的公共点了．

因为，如果还有另一个公共点 $B$,那么，$ell$ 和 $m$ 就都是通过 $A$、$B$ 两点的直线．但是通过 $A$、$B$ 两点只有唯一的一条直线，于是，$ell$ 和 $m$ 就是通过 $A$、$B$ 两点的那条唯一的直线，它们就不是两条不同的直线了．所以，它们除了 $A$ 点外，不可能再有其它的公共点了．

这件事实可以简述为：#strong[两条相交直线确定一交点]．

]
#example[
图1.12表示人和物之间放一隔板，使人不能直接看到物的示意图，$A$ 表示物，$E$ 表示人眼，$overline(B C)$ 表示隔板．为了能看见物的形象，放置一面镜子，图中 $g$ 表示镜面，这时按图1.12(1)中隔板 $overline(B C)$ 的位置来说，人眼 $E$ 便能看见物A的形象，这是为什么？但按图1.12(2)隔板 $overline(B C)$ 的位置来说，人眼 $E$ 便不能看到物 $A$ 的形象，这又是为什么？

]
#figure([#fig("1-09");

  ],
  caption: [
  ]
)

#solution[
按照镜面映象的道理，人眼 $E$ 是从入射线 $A D$ 和反射线 $D E$ 看见 $A$ 的形象的，而点 $D$ 是点 $E$ 和点 $A$ 的象 $A'$ 的连线 $E A'$ 和 $g$ 的交点，所以 $A$ 的象 $A'$ 是沿着直线 $A' E$ 映入人眼 $E$ 的．因为通过 $A'$ 和 $E$ 只有唯一的一条直线，于是 $A' E$ 和隔板 $overline(B C)$ 不交（图1.12(1)）时，在 $E$ 处就看得见 $A$ 的象 $A'$, $A' E$ 和 $overline(B C)$ 相交，也就是被隔板 $overline(B C)$ 挡住（图1.12(2)）时，在 $E$ 处便看不见 $A$ 的象 $A'$ 了．

]
#example[
如果在已知 $overline(A B)$ 上依次取99个点（$C_1\,C_2\,C_3\,dots.h\,C_99$），那么 $overline(A B)$ 上一共有多少条以这些点为端点的线段？（$overline(A B)$ 也计算在内）

]
#solution[
我们分以下几步来研究这个问题：

第一，先进行观察、实验．因为每两个点就确定一条线段．因此，

+ 在 $overline(A B)$ 上取一个点 $C_1$ 时，我们看到图1.13(1)中共有3条线段 $overline(A B)$、$overline(A C_1)$ 和 $overline(C_1 B)$.

  #figure([#fig("1-10");

    ],
    caption: [
    ]
  )

+ 在 $overline(A B)$ 上取两个点 $C_1$、$C_2$ 时，我们看到图1.13(2)中共有6条线段 $overline(A B)$、$overline(A C_1)$、$overline(C_1 B)$、$overline(A C_2)$、$overline(C_2 B)$ 和 $overline(C_1 C_2)$.

+ 在 $overline(A B)$ 上取三个点 $C_1$、$C_2$、$C_3$ 时，我们看到图1.13(3)中有10条线段（请同学们自己找出来）．

第二，列表分析找规律

#align(center)[
#table(
  columns: (auto, auto,),
  align: (center, center,),
  table.hline(),
  [$overline(A B)$ 上取的点数],
  [$overline(A B)$ 上线段的总数],
  table.hline(),
  [1],
  [3],
  [2],
  [6],
  [3],
  [10],
  [$dots.v$],
  [$dots.v$],
  [99],
  [?],
  table.hline(),
);

]
从表上发现：

- 在 $overline(A B)$ 上取1个点时，$overline(A B)$ 上的线段总数 $3 = 1 + 2$,

- 在 $overline(A B)$ 上取2个点时，$overline(A B)$ 上的线段总数 $6 = 1 + 2 + 3$,

- 在 $overline(A B)$ 上取3个点时，$overline(A B)$ 上的线段总数 $10 = 1 + 2 + 3 + 4$．

这时，如果在 $overline(A B)$ 上取4个点，那么 $overline(A B)$ 上共有多少条线段呢？由上面发现的规律，可以猜想是 $1 + 2 + 3 + 4 + 5 = 15$,数一下图1.13(4)中的线段数，恰好是15条．这样自然要问：当在 $overline(A B)$ 上取99个点时，将会有怎样的结果呢？

第三，归纳、计算

如果在 $overline(A B)$ 上取99个点，设这时 $overline(A B)$ 上的线段总数为 $S$，由在第二中发现的规律，不难得出：$ S = 1 + 2 + 3 + 4 dots.h.c +\(99 + 1\)= 1 + 2 + 3 + 4 dots.h.c + 100 $

这是一个很有趣的计算题，如果按顺序加起来，计算是很麻烦的，我们动动脑筋能否有简便的计算方法呢？

由于 $S = 1 + 2 + 3 + dots.h.c + 98 + 99 + 100$，也就是：$ S = 100 + 99 + 98 + dots.h.c + 3 + 2 + 1 $ #noindent;$therefore quad 2 S = underbrace(101 + 101 + 101 dots.h.c + 101 + 101 + 101, 100 upright("项")) = 100 times 101$

$therefore quad S = frac(100 times 101, 2) = 5050$

]
#align(center)[
#fig("1-11");

#subcap[
第1题

]
]
#exercise[
+ 图中有几条线段，把它们都写出来．

+ $A$、$B$、$C$ 三点不在一条直线上，通过其中任何两点画一条直线，一共能画出几条直线？

+ $A$、$B$、$C$、$D$ 四点中，任何三点都不在一条直线上，通过其中任何两点画一条直线，一共能画出几条直线？

+ 如果 $A$、$B$、$C$、$D$、$E$ 五点中任何三点都不在一条直线上，通过其中任何两点画一条直线，那么一共能画多少条直线？

+ 如果有100个点，其中任何三点都不在一条直线上，通过其中任何两点画一条直线，那么一共能画多少条直线？

+ 工人师付在用方砖铺地时，常常打两个木桩，拉线来铺砖，这样砖就铺得整齐，这是根据了什么道理？

+ 如果有两个小孩甲、乙在对话，甲问乙：“你的家住在哪里？”乙回答说：“我的家住在直线 $A B$ 的尽头．”试问你能沿着直线 $A B$ 找到乙的家吗？为什么？

+ 参看例1.4的归纳、计算，如果在 $overline(A B)$ 上取 $n$ 个点．那么 $overline(A B)$ 上一共有多少条线段？（$overline(A B)$ 也计算在内）

+ 已知：$overline(M N) = 100$ 米，$P$ 点在 $overline(M N)$ 上，$overline(M P) = 45$ 米，$S$ 点是 $overline(P N)$ 的中点，求 $overline(P S)$ 的长度是多少米？

+ 在例1.1中，$overline(M N)$ 的长度与 $C$ 点在 $overline(A B)$ 上的位置有无关系？

]
=== 长度的度量
在给定两点 $A$、$B$ 之间的所有通路之中，以 $A B$ 为最短，它的“长度”就叫做 $A$、$B$ #strong[两点间的距离]．所以，两点间的距离是连结这两点的线段的长．

长度是我们经常用的一种几何量，现在让我们分别从实用和数学的观点稍微细致地分析一下“长度”这种几何量的直观含义，并且谈一谈长度的度量．

一般来说，常用的量基本上可以归成两类：其中一类，例如一群羊、一堆蛋，它们具有天然的个别单元，即一只羊、一个蛋．处理这种量，我们只要去数一数它们的“个数”就可以了．因为它们是可数的．用来数“个数”的数学体系就是我们在代数学中一开始就详加讨论的自然数系：${ 1\,2\,3\,dots.h }$.另一类，例如我们现在要讨论的长度等，这种量虽然不具有天然个别单元，但是，具有一个基本特点：可以无限细分．例如，任给一个线段，不管它怎样短，还是可以把它分割成更短的线段．因此，这种量不可能有天然不可分割的单元，我们处理这种量的办法就是度量．

因为长度这种量并不具有天然不可分割的单位，所以，我们只好选用人为的长度单位．例如“米”就是世界上通用的长度单位．取定长度单位以后，要度量一条线段的长度，也就是要求得它和长度单位之间的“比值”．例如取定长度单位为米，所求得的比值是1237:1000,就说这条线段的长度是1.237米．但是在实践中，这个比值是怎样求出来的呢？先举几个简单的实例看一看．

#example[
设长度单位是 $u$,所要度量的线段是 $a$ (图1.14).线段 $a$ 恰好可以分割成5段和 $u$ 等长的线段，那么所求的比值是5, $a$ 的长度就是 $5 u$.

一般地说，如果所要度量的线段 $a$ 恰好可以分割成 $m$ 段和 $u$ 等长的线段，那末所求的比值就是整数 $m$, $a$ 的长度就是 $m u$.

]
#align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, figure([#fig("1-12");], caption: []), figure([#fig("1-13");], caption: [])));

#example[
设长度单位是 $u$,所要度量的线段是 $b$ (图1.15)单位长 $u$ 恰好可以分割成3段和 $b$ 等长的线段，那么所求的比值是 $1 / 3$, $b$ 的长度就是 $1 / 3 u$.

一般地说，如果长度单位 $u$ 恰好可以分割成 $n$ 段和 $b$ 等长的线段，那么所求的比值是 $1 / n$，$b$ 的长度就是 $1 / n u$

]
#example[
设长度单位是 $u$,所要度量的线段是 $c$ (图1.16). $c$ 比 $4 u$ 长些，但又比 $5 u$ 短些，如果我们把 $u$ 三等分，线段 $c$ 截取4段 $u$ 后所余的一段恰好是 $1 / 3 u$ 的2倍，那么c的长度就是 $4 2 / 3 u$.

#figure([#fig("1-14");

  ],
  caption: [
  ]
)

一般地说，如果把长度单位 $u$ 适当地等分成 $n$ 段，即每一段 $u'$ 的长度是 $1 / n dot.op u$,所要量的线段 $c$ 恰好可以分割成 $m$ 段和线段 $u'$ 等长的线段，那么 $c$ 的长度就是 $m / n u$．

在例1.7中，用长度单位 $u$ 去度量 $c$ 时，怎样才能知道在 $c$ 上截取4段 $u$ 后，所余的一段恰好是 $u$ 的 $1 / 3$ 的整数倍？实际上可以这样来确定：在 $c$ 上截取4段 $u$ 后，以所余的一段 $overline(C_4 D)$ 去量 $u$,在 $u$ 上截去一段 $overline(C_4 D)$ 后，所余的一段 $overline(U_1 V)$ 又较 $overline(C_4 D)$ 短，这时再以 $overline(U_1 V)$ 去度量 $overline(C_4 D)$,恰好 $overline(C_4 D)$ 是 $overline(U_1 V)$ 的2倍．这样便看出 $overline(U_1 V)$ 是 $u$ 的 $1 / 3$，把 $u$ 三等分后，$overline(C_4 D)$ 就恰好是 $1 / 3 u$ 的2倍了．

]
#example[
设长度单位是 $u$,求线段 $d$ 的长度（图1.17）．

#figure([#fig("1-15");

  ],
  caption: [
  ]
)

]
#solution[
在 $d$ 上用圆规截取2段 $u$ 后，所余的一段 $overline(D_2 E)$ 较 $u$ 短；在 $u$ 上截取2段 $overline(D_2 E)$ 后，所余的 $overline(U_2 V)$ 较 $overline(D_2 E)$ 短；在 $overline(D_2 E)$ 上截取2段 $overline(U_2 V)$ 后，所余的一段 $overline(F_2 E)$ 较 $overline(U_2 V)$ 短；但 $overline(U_2 V)$ 恰好是 $overline(F_2 E)$ 的2倍．于是 $ overline(D_2 E) & = overline(D_2 F_2) + overline(F_2 E) = 2 overline(U_2 V) + overline(F_2 E)\
 & = 2 dot.op 2 overline(F_2 E) + overline(F_2 E) = 5 overline(F_2 E) $ #noindent;$ u = 2 overline(D_2 E) + overline(U_2 V) = 2 dot.op 5 overline(F_2 E) + 2 overline(F_2 E) = 12 overline(F_2 E) $ #noindent;$therefore quad overline(F_2 E) = 1 / 12 u\,quad overline(D_2 E) = 5 / 12 u\,quad d = 2 5 / 12 u$

]
由例1.7和例1.8可以看出，当被度量线段（$c$ 和 $d$）不能恰好被分割而成为长度单位的整数倍，也就是它们不能被长度单位量尽时，都是求出另一条线段（例1.7中是 $overline(U_1 V)$,例1.8中是 $overline(F_2 E)$），使得它能量尽长度单位和被量线段．再按例1.6的方法求出以长度单位为单位的这条线段的长度，然后便可求出原来被量线段的长度了．

能够量尽两条线段 $a$ 和 $b$ 的线段，我们叫它做线段 $a$ 和 $b$ 的#strong[公度]．两条线段的公度中最长的，叫做#strong[这两条线段的最大公度]．$overline(U_1 V)$ 和 $overline(F_2 E)$ 就分别是线段 $u$ 和 $c$, $u$ 和 $d$ 的最大公度．在例1.5中线段 $u$ 就是线段 $u$ 和 $a$ 的最大公度；例1.6中的线段 $b$ 就是线段 $u$ 和 $b$ 的最大公度，象例1.7、例1.8中求线段 $u$ 和 $c$、$u$ 和 $d$ 的最大公度的方法，叫做#strong[辗转相截法]．

通过上面各例，我们很自然地会想到：任何两条线段 $a\,b$,它们的长度比值是否总是一个分数（整数也可看作分数）？换句话说，对于任何两条线段 $a$、$b$,是否存在着它们的公度？

这个问题从正、反两面来分析它的重要性．首先，如果任何两条线段的长度的比值总是一个分数，那么分数全体（即代数开始所讲的有理数）就足以处理长度的度量问题了．其次，反过来说，如果两条线段的长度的比值不一定是分数，那么有理数就不足以处理长度的度量问题．因而我们就得学会一种含有“非分数”的数系才能充分解决度量问题．这个问题是整个数学发展史上的一件大事，我们以后再详细讨论．

#exercise[
+ 已知线段 $a$、$b$、$u$,其中线段 $a = 9 u$, $b = 3 u$,问线段 $a$、$b$ 的最大公度是线段 $u$ 的几倍？

+ 已知线段 $a = 48$ 毫米，$b = 18$ 毫米．先用辗转相截法求出 $a$、$b$ 的最大公度，并量它等于多少毫米；再用求最大公约数的辗转相除法求出48、18的最大公约数．比较前后所得的结果．

+ 根据图形填写下面空白：

  + $overline(A C) = overline(B C) +\(#h(2em)\)$

  + $overline(C D) = overline(A D) -\(#h(2em)\)$

  + $overline(A C) + overline(C D) =\(#h(2em)\)+ overline(B D)$

  #align(center)[
  #fig("1-16");

  ]

]
=== 直线和平面
在空间，另一种常见的形象就是各种各样的面．例如地球的表面，它的整体看起来是一个略为扁平的球面，而局部的形象又随着当地的地貌而不同．有的地方是一片原，有的地方是起伏的丘陵，有的地方是一片湖面，也有的地方是崇山峻岭和深谷．又如教室的一面墙壁，上课用的黑板，以及桌面等，看起来又都是“平直”的面．

通常检查一个桌面是否“平直”，最简单的方法就是用一根直尺放在桌面上（图1.18），如果放在任何位置上，直尺的边都和桌面密合，那么桌面就是“平直”的．我们就说桌面是平面．但是象图1.19的面上，虽然直尺放在 $ell_1\,ell_2\,dots.h\,ell_n$ 等位置时，直尺边和这个面密合，而在 $A B$ 位置上直尺边和面就不密合了．这就是说并不是在任何位置上直尺的边总和这个面密合，这个面不是一个平面，实际上是一个曲面．

#align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, figure([#image("/math2/fig/1-18.png", width: 100%);], caption: []), figure([#image("/math2/fig/1-19.png", width: 100%);], caption: [])));

在几何学的讨论中，平面就是一个到处平直而且向各个方向无限延展的面，它的特点就是在它上面任取两点 $A$ 和 $B$（图1.20），直线 $A B$ 就完全在这个平面内．

#align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, figure([#fig("1-17");], caption: []), figure([#fig("1-18");], caption: [])));

我们观察一扇门，把它看作平面的一部分，那么它的轴线既在墙壁的平面内（图1.21），又在这扇门所在的平面内，不可能连结两个“合页”的直线不都在这两个平面内．推动这扇门，它每到一个新的位置都表现了通过轴线的一个平面．这些事实说明了：#strong[空间相交的两个平面的“交界”是一条直线．通过一条直线可有无数个平面．]

#exercise[
+ 举出一条直线和一个平面没有公共点的实例，以及一条直线和一个平面只有一个公共点的实例．

+ 一点在一平面内，而其它的点都不在这个平面内，这种实例有吗？

+ 举出两个平面没有公共点的实例．

+ 两个平面只有一个公共点的实例存在吗？

+ 如果空间被平面 $alpha$ 分成的两部分之一中，有一只小虫子 $A$，这只小虫子 $A$ 要爬到被平面所分空间的另一部分去，假如它不穿过平面 $alpha$，能过去吗？为什么？

  #align(center)[
  #fig("1-19");

  ]

]
同学们作这样一个实验，张开手指，使拇指、食指和中指的尖这三点不在一条直线上，拿一张硬纸（它代表一个平面）往三个指尖上放，看看它是否能同时通过三个指尖？再拿一张硬纸仍然这样放，看这两张硬纸是否重合？这种特点对于一个指尖，两个指尖也适合吗？再使拇指、食指、中指，无名指的指尖这四点不在一条直线上，看看能否保证总有一张硬纸同时通过这四点？仿照“两点确定一条直线”的特点，同学们能否总结出几个点确定一个平面的结论？

通过上面的实验，我们得出平面的另一个基本性质：#strong[空间不共线三点确定一个平面．]

同学们还可进一步思考以下的问题：

+ 一直线及直线外一点能确定一个平面吗？

+ 相交的两条直线能确定一个平面吗？

#heading(level: 2, numbering: none, supplement: [toc-sub])[习题1.1]

+ 什么是线段？什么是直线？两者有什么区别？

+ 什么是线段的中点？如果有一根笔直的铁棍，假如用 $overline(A B)$ 来表示它，不用尺量，也不许把它折弯，你有没有办法找出 $overline(A B)$ 所表示的这根铁棍的中点来？

+ 请同学们复习一下小学学过的公制、市制两种长度单位，并填下表：

  #align(center)[
  #table(
    columns: (auto, auto,),
    align: (left, left,),
    [1公里(km)$= underline(#h(2em))$ 米(m)],
    [#h(2em);1里 $= underline(#h(2em))$ 丈],
    [1米(m)$= underline(#h(2em))$ 分米(dm)],
    [#h(2em);1丈 $= underline(#h(2em))$ 尺],
    [1分米(dm)$= underline(#h(2em))$ 厘米(cm)],
    [#h(2em);1尺 $= underline(#h(2em))$ 寸],
    [1厘米(cm)$= underline(#h(2em))$ 毫米(mm)],
    [#h(2em);1寸 $= underline(#h(2em))$ 分],
  );

  ]

+ 求出下列结果，并化成括号中指定的长度单位：

  + 5尺4寸5分 $+$ 3尺4寸 $+$ 6尺7寸8分 $= underline(#h(2em))$（米）；

  + 46厘米 $+$ 1米60厘米 $+$ 7米50厘米 $= underline(#h(2em))$（尺）；

  + 4丈5尺6寸 $times 3 = underline(#h(2em))$（米）；

  + 5米40厘米 $div 1000 = underline(#h(2em))$（毫米）；

  + 20mm$times 0.1 % = underline(#h(2em))$（m）

+ 在一条直线上，顺次取 $A$、$B$、$C$ 三点，使 $overline(A B) = 4$cm, $overline(B C) = 2$cm,并且取 $overline(A C)$ 的中点 $O$,求：

  #cols(3)[
  + $overline(A O)$ 的长

  + $overline(O B)$ 的长

  + $overline(O C)$ 的长

  ]
  #align(center)[
  #fig("1-20");

  #subcap[
  第5题

  ]
  ]

+ 把一条32cm的线段分成三段，中间的一段长为8cm,问第一段中点到第二段中点的距离等于多少cm?

+ 图中表明四个点可以确定一条、四条或者六条直线．试划图说明五个点可以确定1、5、6、8或10条直线（其它情况不存在）．

  #align(center)[
  #fig("1-21");

  #subcap[
  第7题

  ]
  ]

+ 在三角形 $A B C$ 的 $overline(B C)$ 边上如果取 $n$ 个点 $P_1\,P_2\,P_3\,dots.h\,P_n$，并把这 $n$ 个点分别和 $A$ 点连结起来，就出现很多三角形，试研究三角形的总数有多少？（原来的三角形 $A B C$ 也包括在内）．

  （提示：$overline(B C)$ 上每一条线段都可与 $A$ 点构成一个三角形，因此求三角形的总数实际上就是求 $overline(B C)$ 上线段的总数）．

  #align(center)[
  #fig("1-22");

  #subcap[
  第8题

  ]
  ]

== 方向、角度与平行
=== 方向与角
当我们在平坦的操场上要从一个位置（以 $A$ 点表示）走到另一个位置（以 $B$ 点表示），经验告诉我们最省事的走法是：“由 $A$ 点朝向 $B$ 点一直走”．（图1.22）

#figure([#fig("1-23");

  ],
  caption: [
  ]
)

上面这种常用的走法，很明显地突出了“方向”这个常用的基本几何概念．再设想我们是正在茫茫大海中航行的船的舵手，或者是一架越洋飞行的飞机的驾驶员，那么“方向”这个概念就更是至关紧要的了！因为“航行的方向”是我们随时要确切掌握的要素！

现在让我们就上面的实例，对于所涉及的“方向”这个概念的直观含义，稍加分析．

假如我们从操场的 $A$ 点走向 $B$ 点去（图1.23），最省事的“通路”当然就是 $overline(A B)$（因为它是最短的通路）．所以我们先站在 $A$ 点，向 $B$ 点望一望，头脑中抽象地计画了所要走的路线应该是直线段（图中虚线所示）．然后便一步步地沿着设想的路线 $overline(A B)$ 向 $B$ 点一直走．从几何的观点看，每跨一步就沿着某一个方向做了一个和自己步幅等长的“有向线段”．所以说，“由 $A$ 点朝向 $B$ 点一直走的走法”就是每一步都是沿着 $overline(A B)$ 这个固定的方向走的那种走法．

#figure([#fig("1-24");

  ],
  caption: [
  ]
)

在由 $A$ 点可以直接看到 $B$ 点的情形下，要保持每一步的方向都是正对着 $B$ 点的方向是很简单的．因为我们随时可以用目光把行进中的位置（图1.23中的 $P_n$ 点）和 $B$ 点连一条直线，这条直线的方向也就是下一步（图1.23中的 $P_n P_(n + 1)$)所要走的方向．但是在另外两个设想的航海和飞行的实例中，目的地是遥远而看不到的，而计划中要走的航线，所经过的绝大部分都是“漫无边际”的海洋和天空，毫无可供“瞄准”的标志．所以要随时保持航行的方向的正确性就变成确保安全到达目的地的最重要的依据了．

由 $A$ 点出发，沿着一个固定的方向（比如向着 $B$ 点的方向）前进时，它的路线就是一条#strong[射线]．如图1.24所示，它就是居于 $A$ 点右侧的那条半直线．

#align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, figure([#fig("1-25");], caption: []), figure([#fig("1-26");], caption: [])));

所以我们把直线上一点一旁的部分叫做#strong[射线]，这一点叫做射线的#strong[端点]．例如射线 $A B$（图1.24）．（注意：表示射线时，射线的端点字母必须写在前面）．在几何中，我们把以 $A$ 点为端点的一条射线看作是由 $A$ 点出发的一个方向．

我们把从同一端点引出的两条射线所组成的图形叫做#strong[角]，这个共同的端点叫做角的#strong[顶点]，这两条射线分别叫做角的#strong[边]．我们把角看成是由构成这个角的两条射线所表示的方向差（图1.25）．

一个角通常用符号“$angle$”（读作角）后边带三个大写字母来表示，中间一个字母表示角的顶点，两旁的两个字母分别表示角的两边上的任意点，如图1.26(1)中的角可记作 $angle A O B$,读作“角 $A O B$”．如果用一个点作顶点的角只有一个，这个角也可以只用表示顶点的那个大写字母来表示，如图1.26(1)的 $angle A O B$ 也可表示为 $angle O$．有时，为了方便，还可以在角的里面靠近顶点写个数字、或小写希腊字母表示角，如图1.26(2)(3)中的 $angle 1$、$angle 2$、$angle 3$ 和 $angle alpha$、$angle beta$、$angle gamma$ 等．

#figure([#fig("1-27");

  ],
  caption: [
  ]
)

当一个角的两条边重合时，其夹角显然为 $0$（即方向没有差别）．另外一种特殊情形是当角的一边是另一边的反向延长线时，就称这个角为#strong[平角]．如图1.27中射线 $C A$ 和射线 $C B$ 的方向相反，那么 $angle A C B$ 就是一个平角．

#align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, figure([#fig("1-28");], caption: []), figure([#fig("1-29");], caption: [])));

根据上述，我们可以把日常常用的“方向”和角这两个概念，给以如下的说明：

+ 自定点 $A$ 出发的所有方向和以 $A$ 点为端点的所有射线之间一一地相对应．换句话说，对应于自 $A$ 点出发的一个方向，就有唯一的一条射线（它就是自 $A$ 点出发沿着这个固定方向一直走的路线）；反之任何一条以 $A$ 点为端点的射线也就唯一地表示了一个确定的方向．所以在几何学中，我们以一条射线表示一个方向．

+ 一条以 $A$ 为端点的射线，由起始的任何一小段唯一确定（因为整个射线只是那一小段沿着那个方向的无限延伸），所以自 $A$ 点出发的一个方向实可以用它所对应的那条射线开头的任何一小段所表示．

+ 设射线 $A B$ 和 $A C$ 分别表示由 $A$ 点出发的两个方向，那么 $angle B A C$ 的直观含义就是射线 $A B$ 和 $A C$ 所表示的那两个方向的差．

+ 除了零角和平角的特殊情形，如 $A$、$B$、$C$ 三点不共线，我们把射线 $A B$ 由原来的位置沿着平面绕 $A$ 点旋转到射线 $A C$ 的位置所“扫过的区域”叫做 $angle B A C$ 的#strong[内部]，角的内部也可以叫做#strong[角区]（图1.28）．

#exercise[
+ 什么是射线？射线的直观含义是什么？

+ 什么是角？角的直观含义是什么？

+ 线段、射线、直线有什么区别？

+ 指出图中有几个角？并按图中字母把它们都写出来．

+ 把图中数字表示的角，改用大写字母表示．

+ 把图中用小写希腊字母表示的角，改用大写字母表示．

+ 指出图中有多少个角，并按图中字母把它们都写出来．

+ 已知（如图）$P$、$Q$ 两点分别在 $angle A O B$ 的两边上，试问是否存在不经过 $angle A O B$ 的内部，由 $P$ 到 $Q$ 的最短通路？

+ 如果在射线 $O A$ 上依次取5个点，那么在射线 $O A$ 上（包括射线 $O A$ 在内）共有多少条射线？如果依次取10个点，100个点那么在射线 $O A$ 上分别有多少条射线？如果在射线 $O A$ 上取 $n$ 个点，那么在射线 $O A$ 上又有多少条射线？

+ 如果在直线 $ell$ 上依次取3个点，那么直线 $ell$ 上有多少条射线？如果取100个点，那么直线 $ell$ 上有多少条射线？如果在 $ell$ 上依次取 $n$ 个点，那么直线 $ell$ 上有多少条射线？

]
#align(center, grid(columns: (30%, 30%, 34%,), column-gutter: 0.35em, align: center + bottom, [#fig("1-30");

#subcap[
第4题

]], [#fig("1-31");

#subcap[
第5题

]], [#fig("1-32");

#subcap[
第6题

]]));

#align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, [#fig("1-33");

#subcap[
第7题

]], [#fig("1-34");

#subcap[
第8题

]]));

=== 角度和旋转
在前面我们说明了可以用以 $A$ 点为端点的一条射线来表示一个由 $A$ 点出发的方向．设射线 $A B$ 和 $A C$ 分别表示一个由 $A$ 点出发的两个方向，那么这两条射线所成的角也可以看作是一条以 $A$ 点为端点的射线，从 $A B$ 的位置沿着平面旋转到 $A C$ 的位置而成的图形．象度量线段 $overline(P Q)$ 的长度就是度量表示 $P$、$Q$ 这两个位置之间的距离一样；度量射线 $A B$ 和 $A C$ 所表示的这两个方向之间的差别也就是度量这两条射线之间所夹的“角度”．而角度也就可以看成是旋转量了．下面采用旋转的观点对于角度的度量再作一初步的探讨：

==== 角度的大小
#figure([#fig("1-35");

  ],
  caption: [
  ]
)

如图1.29所示，$angle B A C$ 和 $angle B' A' C'$ 分别是以 $A$ 和 $A'$ 为顶点的两个角，用一张透明的塑胶片，先把它盖在 $angle B' A' C'$ 的上面，用笔把 $angle B' A' C'$ 复印到塑胶片上．然后把塑胶片移到 $angle B A C$ 的上面，调整其位置使得顶点 $A$ 和顶点 $A'$ 相重合；再用一个针插在 $A$、$A'$ 点之上，这样，塑胶片仍然可以绕着针尖所插的 $A'$ 点旋转，但是 $A$、$A'$ 点依然确保重合．适当旋转可以使得两个角的边 $A B$ 和 $A' B'$ 重合，而且“角区”位于相重边的同侧（图1.30）．

#align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, figure([#fig("1-36");], caption: []), figure([#fig("1-37");], caption: [])));

这样，两角之间有下列三种可能的位置关系：

- 它们的另一边也重合，那么就说这两个角相等，记作 $angle B' A' C' = angle B A C$；

- $A' C'$ 落在 $angle B A C$ 的内部，那么就说 $angle B' A' C'$ 小于 $angle B A C$,记作 $angle B' A' C' < angle B A C$；

- $A' C'$ 落在 $angle B A C$ 的外部，那么就说 $angle B' A' C'$ 大于 $angle B A C$,记作 $angle B' A' C' > angle B A C$．

==== 两角的相加
如图1.31所示，$angle B A C$ 和 $angle C A D$ 两个角的顶点相同，有一条边相重合（即射线 $A C$），而且两者的角区分居于公共边的两侧，就说 $angle B A D$ 为 $angle B A C$ 和 $angle C A D$ 之和，即 $angle B A D = angle B A C + angle C A D$.这时由等式的性质，又可知 $angle B A C = angle B A D - angle C A D$，$angle C A D = angle B A D - angle B A C$．

当两个角相加后是一个平角时，就说这两个角#strong[互为补角]，其中一个角叫做另一个角的补角．简称为#strong[互补]（图1.32(1)）．一个角如果和它的补角相等，这个角叫做#strong[直角]（图1.32(2)）．

#figure([#fig("1-38");

  ],
  caption: [
  ]
)

小于直角的角叫做#strong[锐角]，大于直角小于平角的角叫做#strong[钝角]．如图1.33所示，$angle A O B$ 为锐角，$angle C P D$ 为钝角．

#figure([#fig("1-39");

  ],
  caption: [
  ]
)

如果两个角相加的和等于直角，这两角叫做互为余角．其中一个角叫做另一个角的余角．例如图1.34中的 $angle alpha + angle beta =$ 直角，则 $angle alpha$、$angle beta$ 互为余角．

#figure([#fig("1-40");

  ],
  caption: [
  ]
)

==== 角的度量与量角器
角的度量和线段的度量的做法基本上是相同的．也是先取定一个角度单位，然后用这个单位，或把它适当等分所得的分单位去和一个要量的角来比较大小．常用的单位是把一个平角分成180等份，其中一份叫做1度；再把1度分成60等份，其中一份叫做1分；再把1分分成60等份，其中一份叫做1秒．常用的符号是在数字的右上角上标以“$zws degree$”表示度，“$'$”表示分，“$''$”表示秒．例如：35度12分30秒就写成 $35 degree 12' 30''$．

平角 $= 180 degree$,平角的二等分角（即平角的一半）就是直角，直角 $= 90 degree$.四个直角相加得一周角，周角 $= 360 degree$.

#figure([#fig("1-41");

  ],
  caption: [
  ]
)

度量长度的常用工具是刻有等分刻度的直尺，相应地度量角度的常用工具是图1.35所示的量角器．量角器是一个具有180个等分刻度的半圆形塑胶板，当我们要去量一个给定的角的角度时，先把顶点和这个半圆板的圆心叠合，然后使得直径和角的一边相重合；那么角的另一边通过半圆的位置的刻度就是所量角度的近似值．如图1.36中的 $angle B A C$, $A B$ 与 $0 degree$ 线重合，$A C$ 恰好落在 $40 degree$ 的刻度上，所以 $angle B A C = 40 degree$.

#figure([#fig("1-42");

  ],
  caption: [
  ]
)

#example[
求 $30 degree 19' 21''$ 与 $18 degree 40' 42''$ 的和．

]
#solution[
$ 30 degree 19' 21'' + 18 degree 40' 42'' = 48 degree 59' 63'' = 49 degree 3'' $

]
#example[
把 $3.62 degree$ 化成度、分、秒．

]
#solution[
$because quad 1 degree = 60'\,#h(2em) therefore quad 0.62 degree = 60' times 0.62 = 37.2'$

$because quad 1' = 60''\,#h(2em) therefore quad 0.2' = 60'' times 0.2 = 12''$

$therefore quad 3.62 degree = 3 degree 37' 12''$

]
#example[
把 $15 degree 18' 15''$ 化为度．

]
#solution[
先把 $15''$ 化为分：$ 15'' / 60'' = 0.25' $ #noindent;$therefore quad 18' 15'' = 18.25'$．再把 $18.25'$ 化为度：$ 18.25' / 60' approx 0.304 degree $ #noindent;$therefore quad 15 degree 18' 15'' approx 15.304 degree$.

]
==== 对顶角相等和两条直线互相垂直
如图1.37所示直线 $A B$ 和 $C D$ 相交于 $O$ 点，这时，$angle A O C$ 和 $angle B O D$ 中 $O A$ 和 $O B$, $O C$ 和 $O D$ 都互为反向延长线．象这样，一个角的两边分别是另一个角的两边的反向延长线时，我们就称这两个角为#strong[对顶角]．

如果两个角是对顶角，那么它们之间有什么关系呢？由图1.37可知，$angle A O C$ 和 $angle A O D$ 互为补角，即 $angle A O C + angle A O D = 180 degree$\; $angle B O D$ 和 $angle A O D$ 也互为补角，即 $angle B O D + angle A O D = 180 degree$,因而 $angle A O C + angle A O D = angle B O D + angle A O D$,所以，$angle A O C = angle B O D$.

总结上述事实就成为下述性质：#strong[对顶角相等]

#example[
如果两条直线 $A B$、$C D$ 相交于 $O$ 点（图1.37），$angle A O C = 40 degree$,求 $angle B O D$, $angle A O D$, $angle C O B$ 的度数．

]
#figure([#fig("1-43");

  ],
  caption: [
  ]
)

#solution[
两条直线 $A B$、$C D$ 相交于 $O$ 点

$therefore quad angle A O C$ 和 $angle B O D$ 是对顶角，$therefore quad angle A O C = angle B O D$（对顶角相等）．

$because quad angle A O C = 40 degree$

$therefore quad angle B O D = 40 degree$.

又：$angle A O C + angle A O D = 180 degree$,

$therefore quad angle A O D = 180 degree - angle A O C = 180 degree - 40 degree = 140 degree$.

$because quad angle A O D = angle C O B$（对顶角相等）

$therefore quad angle C O B = 140 degree$

]
由于两条直线相交得出四个角，根据对顶角的概念可知，这四个角分为两双对顶角，当然每双对顶角都是相等的．并且不难看出，如果两条直线相交得出的四个角中，有一个是直角，那么其余的三个角也都是直角．

当两条直线相交成直角时，这两条直线就叫做#strong[互相垂直]．其中一条叫做另一条的垂线，交点叫做垂足．如图1.38所示 $ell_1$ 和 $ell_2$ 互相垂直，$O$ 是它们的垂足，记作 $ell_1 tack.t ell_2$ 于 $O$ 点．符号“$tack.t$”读作“垂直于”．

#figure([#fig("1-44");

  ],
  caption: [
  ]
)

因为三角板中有一个角是直角，所以可以用三角板来画垂线．

#example[
过已知点 $A$,画已知直线 $ell$ 的垂线．

]
#solution[
+ $A$ 点在直线 $ell$ 上

+ $A$ 点在直线 $ell$ 外

过 $A$ 点画直线 $ell$ 的垂线的方法如图1.39所示．

#align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, [#scale(60%, reflow: true, image("/math2/fig/1-39-1.png"));

#subcap[
过直线 $ell$ 上一点 $A$ 划 $ell$ 的垂线

]], [#scale(60%, reflow: true, image("/math2/fig/1-39-2.png"));

#subcap[
过直线 $ell$ 外一点 $A$ 划 $ell$ 的垂线

]]));

]
问题1：实际画一画，过已知直线上或直线外一点，画这条直线的垂线能画几条？

问题2：如图1.40, $P$ 点是直线 $A B$ 外一点，$P C tack.t A B$ 于 $C$ 点，$D$、$E$ 都是直线 $A B$ 上的点，连结 $overline(P D)$、$overline(P E)$,量一量 $overline(P C)$、$overline(P D)$、$overline(P E)$ 哪一条最短？

通过上面的实践，我们可以得出垂线的下列性质：

#blk[][
+ 过一点作一条直线的垂线，只能作一条．

+ 从直线外一点和这条直线上各点所引的线段中，垂直线段最短．

]
#align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, figure([#fig("1-45");], caption: []), figure([#fig("1-46");], caption: [])));

过直线外一点画这条直线的垂线，这点到垂足间的线段的长度叫做这点到这条直线的#strong[距离]．

例如，从直线 $ell$ 外一点 $A$,向直线 $ell$ 画垂线，设垂足为 $B$,那么 $overline(A B)$ 的长度就是点 $A$ 到直线 $ell$ 的距离（图1.41）.

==== 三角形的内角和
我们观察手中的一副三角板（图1.42），它们的大小形状都不相同；其中一个三角板的三个角和另一个三角板的三个角之间的大小，虽然都有一个直角，但其余的两对角的大小是不一样的，如果我们把每个三角形三个角的大小各自加起来：$ 90 degree + 45 degree + 45 degree & = 180 degree\
90 degree + 60 degree + 30 degree & = 180 degree $

结果发现两个三角板的三个角的和都相同，都等于 $180 degree$.

#figure([#fig("1-47");

  ],
  caption: [
  ]
)

这样，我们自然地会想到：任何一个三角形的三个角的和等于多少度？是否也等于 $180 degree$？

同学们在纸上任意画两个三角形，形状、大小都不要一样，但要认真仔细地画，边要画得直，笔道要越细越好．然后用量角器去量它们的各角，把每一个三角形的三个角的度数加起来，如果得到的两个结果相差很大，就再仔细地量一量、算一算，如果得到的两个结果相差极为微小，而且都极其接近 $180 degree$,那么我们又会想到：如果在量的过程中没出现误差，是否任何一个三角形的三个角的和都等于 $180 degree$?

带着这个问题，我们不妨这样来设想，因为 $180 degree$ 角即平角，它的两边合成一条直线，如果三角形三个角的大小的和等于 $180 degree$，那么这三个角拼合起来就应该得到一个平角．因此我们可以按照这个设想，再来检验三角形三个角的和是否为一个平角，即 $180 degree$ 角．

#figure([#image("/math2/fig/1-43.png", width: 100%);

  ],
  caption: [
  ]
)

先用硬纸板仔细地剪出一个三角形（如图1.43(1)），然后在桌上放一把直尺（图1.43(2)）；再沿着图1.43(1)中任意画的虚线把三个角（记作 $angle 1$, $angle 2$, $angle 3$）剪下来；最后按图1.43(2)所示，把 $angle 1$, $angle 2$, $angle 3$ 拼合起来放在直尺的边上，结果，作为 $angle 1$, $angle 2$, $angle 3$ 之和的角的两边恰好和直尺的边密合．

通过以上实践，我们便总结出实验的结果，这就是：

#blk[][
三角形的三个角的和是 $180 degree$.

]
#example[
已知如图1.44, $triangle.stroked.t A B C$ 中，$angle A = 55 degree$, $angle B = 48 degree$. $B D tack.t A C$ 于 $D$ 点．求 $angle D B C$ 的度数．

]
#figure([#fig("1-48");

  ],
  caption: [
  ]
)

#solution[
$because quad$ 三角形的三个角之和是 $180 degree$

$therefore quad angle A + angle A B C + angle C = 180 degree$

$therefore quad angle C = 180 degree - angle A - angle A B C = 180 degree - 55 degree - 48 degree = 77 degree$.

又 $because quad B D tack.t A C$ 于 $D$ 点，

$therefore quad angle B D C = 90 degree$

$therefore quad angle D B C = 180 degree - angle C - angle B D C = 180 degree - 77 degree - 90 degree = 13 degree$.

]
#heading(level: 3, numbering: none)[练习]
+ 看图在各题的（#h(2em);）中填入适当的角：

  + $angle A B D = angle A B C +\(#h(2em)\)$

  + $angle C B E - angle D B E =\(#h(2em)\)$

  + $angle A B E - angle C B D = angle A B C +\(#h(2em)\)$

  #align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, [#fig("1-49");
  
  #subcap[
  第1题
  
  ]], [#fig("1-50");
  
  #subcap[
  第4题
  
  ]]));

+ 什么是平角、直角、锐角、钝角？指出下列图中的锐角、直角和钝角．

  #align(center)[
  #fig("1-51");

  #subcap[
  第2题

  ]
  ]

+ 分别指出，时针和分针在下列哪个时间组成锐角、钝角、直角和平角．

  #cols(3)[
  + 4点

  + 6点

  + 9点

  + 1点30分

  + 2点5分

  ]

+ 什么叫两个角互补？如果已知 $angle A O B$,试画出 $angle A O B$ 的补角．

+ 什么叫两个角互为余角？如果 $angle alpha + angle beta =$ 直角，那么说“$angle alpha$ 是余角”，“$angle beta$ 是余角”，对吗？怎样才是正确的说法？

+ 用量角器分别量出下列各角的度数．

  #align(center)[
  #fig("1-52");

  #subcap[
  第6题

  ]
  ]

+ 用量角器分别画出 $45 degree$, $72 degree$, $90 degree$, $134 degree$ 的角．

+ 什么叫对顶角？下列各图中有没有对顶角？如果有，把它们写出来．

  #align(center)[
  #fig("1-53");

  #subcap[
  第8题

  ]
  ]

+ 已知（如图）直线 $A B$ 和 $C D$ 相交于 $O$ 点，$angle A O C = 50 degree 20'$,求 $angle B O D$、$angle C O B$ 和 $angle A O D$.

+ 计算下列各题：

  + $3 degree 25' 18'' + 24 degree 39' 24''$

  + $64 degree 27' 15'' - 28 degree 37' 35''$

  #align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, [#fig("1-54");
  
  #subcap[
  第9题
  
  ]], [#fig("1-55");
  
  #subcap[
  第16题
  
  ]]));

+ 化下列单名数为复名数（度、分、秒）．$ 1.25 degree\;quad 0.8 degree\;quad 3.21 degree\;quad\(1 tfrac(1, 2)\) degree\;quad\(2 tfrac(1, 3)\) degree $

+ 化下列复名数为单名数（度）．$ 5 degree 30'\;quad 12 degree 36' 12''\;quad 38 degree 4' 5'' $

+ 求 $23.26 degree$、$15 degree 20' 15''$ 的角的补角的大小．

+ 求 $48 degree 15'$、$72.9 degree$ 的角的余角的大小．

+ 什么是两点间的距离？什么是直线外一点到这条直线的距离？

+ 已知：（如图）$P$ 在直线 $ell$ 上，$Q$ 在直线 $m$ 上，试量出：

  + $P$、$Q$ 两点间的距离；

  + $P$ 到直线 $m$ 的距离；

  + $Q$ 点到直线 $ell$ 的距离．

+ 已知如图，用三角板：

  + 过 $A$ 点画出直线 $B C$ 的垂线；

  + 过 $B$ 点画出直线 $A C$ 的垂线；

  + 过 $C$ 点画出直线 $A B$ 的垂线．

  #align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, [#fig("1-56");
  
  #subcap[
  第17题
  
  ]], [#fig("1-57");
  
  #subcap[
  第19题
  
  ]]));

+ 已知 $triangle.stroked.t A B C$ 中，$angle A = 70 degree$, $angle B = 60 degree$,求 $angle C$.

+ 如图，$angle 1 = 35 degree$, $angle 2 = 78 degree$,求 $angle 3$ 的大小，自 $angle 3$ 的顶点画一条射线和 $angle 1$ 的一条边相交，并且使 $angle 4 = 16 degree$.

  问：$angle 5$ 比 $angle 2$ 少多少度？

+ 怎样从“三角形三个内角和等于 $180 degree$”推算出四边形的四个内角的和，五边形五个内角的和，六边形六个内角的和各等于多少度？

+ 如果分别延长 $triangle.stroked.t A B C$ 的三边 $A B$、$B C$、$C A$ 得到 $angle 1$、$angle 2$ 和 $angle 3$,那么 $angle 1 + angle 2 + angle 3 = ?$

+ 如果顺次延长四边形ABCD的各边，得到 $angle 1$、$angle 2$、$angle 3$ 和 $angle 4$,那么，请你根据21题的计算结果猜想一下这四个角之和可能是多少度？然后再计算一下 $angle 1 + angle 2 + angle 3 + angle 4 = ?$ 来验证一下你的猜想是否正确．

  #align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, [#fig("1-58");
  
  #subcap[
  第21题
  
  ]], [#fig("1-59");
  
  #subcap[
  第22题
  
  ]]));

=== 角度和平行
在前面的讨论中，我们已经明确了沿着一个固定方向一直走，所经过的路线就是一条射线．如图1.45所示，射线 $A B$ 和射线 $A' B'$ 分别表示起点为 $A$ 和 $A'$ 的两个方向．连结 $A$、$A'$ 再延长得射线 $A A'$,于是射线 $A C$ 和射线 $A' C'$ 是相同的两个方向；$angle C A B$ 表示射线 $A B$ 和 $A C$ 这两个方向的差别，$angle C' A' B'$ 表示射线 $A' B'$ 和 $A' C'$ 这两个方向的差别．如果 $angle C A B = angle C' A' B'$,显然射线 $A B$ 和 $A' B'$ 的方向就是相同的．

#align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, figure([#fig("1-60");], caption: []), figure([#fig("1-61");], caption: [])));

我们把 $angle C A B$ 和 $angle C' A' B'$ 这样位置的角叫做#strong[同位角]．如图1.46所示．

连结同一平面内的射线 $A B$ 和 $A' B'$ 的端点 $A$、$A'$ 后，如果得到的同位角相等（图1.45）即 $angle C A B = angle C' A' B'$,我们就说射线 $A B$ 和 $A' B'$ 互相平行．同样地，如果同一平面内的两条直线 $ell$ 和 $ell'$ 被另一条直线 $A A'$ 截出的同位角相等（图1.47），我们就说直线 $ell$ 和 $ell'$ #strong[互相平行]．记作 $ell parallel ell'$．

#align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, figure([#fig("1-62");], caption: []), figure([#fig("1-63");], caption: [])));

#example[
在纸上画一条直线记为 $ell$,在 $ell$ 外任意取一点 $A'$（图1.48），怎样在纸上过 $A'$ 画一条直线和 $ell$ 平行？

]
#solution[
根据同位角相等，两条直线就平行，这一平行线的意义，我们在直线 $ell$ 上先取一点 $A$,再连结出直线 $A A'$,然后量出 $angle 1$ 的大小，并用量角器划出 $angle 2 = angle 1$,这时 $angle 2$ 的另一条边所在直线 $ell'$ 就是 $ell$ 的平行线．如果在 $ell$ 上另取一点 $B$,仍用画同位角 $angle 4 = angle 3$ 的方法画出过点 $A'$ 和直线 $ell$ 平行的直线，结果这条直线仍然是 $ell'$．

同样地，如果在直线 $ell$ 上另取点 $C$、$D$、……（图中没有画出）而后分别按上面的方法画出过点 $A'$ 和 $ell$ 的平行线，结果这条直线还是 $ell'$．

通过画图，我们得到：

#blk[][
过已知直线 $ell$ 外的一点 $P$ 只有一条直线和 $ell$ 平行．

]
]
#example[
教室里的长方形黑板的对边是不是平行线？为什么（图1.49）？

]
#figure([#fig("1-64");

  ],
  caption: [
  ]
)

#solution[
由小学数学课中我们已知长方形的各角都是直角，如图，长方形的 $angle 1$、$angle 2$、$angle 3$、$angle 4$ 都是直角．

因为 $angle 1'$ 是 $angle 1$ 的补角，所以 $angle 1'$ 也是直角，于是同位角 $angle 1' = angle 2$,因此长方形的对边 $a parallel a'$.

同样，同位角 $angle 3' = angle 2$,因此另一对边 $b parallel b'$.

]
我们学习了平行线的意义之后，进一步考虑平面上两条直线 $ell$, $m$ 有几种可能的位置关系呢？参看图1.50,同学们自己归纳出结论．

#figure([#fig("1-65");

  ],
  caption: [
  ]
)

#exercise[
+ 如图，在同一平面内，直线 $m$ 和 $ell$ 垂直于 $A$ 点，直线 $ell'$ 和 $m$ 垂直于 $A'$ 点，直线 $ell$ 和 $ell'$ 平行吗？为什么？

+ 如图，先把三角板的一边 $a$ 和直线 $ell$ 密合；再用直尺和三角板的另一边 $b$ 密合；固定直尺，推动三角板使 $b$ 总和直尺密合，当 $a$ 过 $P$ 点时，沿 $a$ 画直线 $ell'$,那么 $ell' parallel ell$.为什么？

+ 已知直线 $A B$ 外一点 $C$,过 $C$ 点划一条直线和 $A B$ 平行．

+ 两条平行直线是否可以确定一个平面？

]
#align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, [#fig("1-66");

#subcap[
第1题

]], [#fig("1-67");

#subcap[
第2题

]]));

#heading(level: 2, numbering: none, supplement: [toc-sub])[习题1.2]

+ 用度、分、秒表示下列各角：

  #cols(3)[
  + $1 / 2$ 直角

  + $1 / 4$ 直角

  + $1 1 / 4$ 直角

  + $48.45 degree$

  + $58.19 degree$

  + $384600''$

  ]

+ 计算下列式子：

  #cols(2)[
  + $38 degree 24' + 54 degree 43'$

  + $180 degree - 99 degree 48'$

  + $52 degree 13' - 27 degree 58'$

  + $24 degree 3' times 15$

  + $200 degree 45' div 5$

  + $144 degree div 12 degree$

  + $18 degree 33' div 4$

  + $315 degree 5' div 14 degree 8'$

  ]

+ 检验图中两条直线 $O A$, $O' A'$ 是否平行．

  #align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, [#fig("1-68");
  
  #subcap[
  第3题
  
  ]], [#fig("1-69");
  
  #subcap[
  第4题
  
  ]]));

+ 检验图中的两条直线是否垂直．

+ 回答下列问题：

  + 钝角与锐角的差一定比直角大吗？举例说明．

  + 两个锐角的和会不会大于直角？会不会大于或等于平角？

  + 两个钝角的和会不会大于或等于一个周角．

+ 下面的说法对不对？为什么？

  + 锐角的余角是锐角．

  + 锐角的补角是锐角．

  + 直角的补角是直角．

  + 两个角如果互余，这两个角都是锐角．

  + 一个锐角和一个钝角一定互为补角．

  + 两个角如果互补，一定是一个角为锐角一个角为钝角．

  + 一个锐角加上一个锐角，还是一个锐角．

  + 两个锐角不能互为补角．

  + 一个钝角减去一个比它小的钝角，差是锐角．

+ 一个角的补角是它的3倍，求这个角的度数．

+ 一个角的余角是它的3倍，求这个角的度数．

+ 一个角是它的补角的4,求这个角是多少度？

+ 两个角的度数比为7:2,它们的差是 $50 degree$,求这两个角的度数．

+ 两条直线相交有一个角是 $20 degree$,求其余各角．

+ 已知 $A B$ 是直线，$O$ 点在 $A B$ 上，直线 $C O tack.t D O$,那么 $angle 1$ 与 $angle 2$ 互余吗？为什么？

+ 如图，试：

  + 过 $B$ 点画直线 $A D$ 的垂线？

  + 过 $D$ 点画直线 $B C$ 的垂线？

  + 过 $O$ 点画直线 $B D$ 的垂线？

  #align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, [#fig("1-70");
  
  #subcap[
  第12题
  
  ]], [#fig("1-71");
  
  #subcap[
  第13题
  
  ]]));

+ 下面的说法对不对？说明理由．

  + 可能有三个角都是锐角的三角形．

  + 可能有二个角都是直角的三角形．

  + 不可能有一个角是直角，另一个角是钝角的三角形．

  + 可能有一个角是钝角，其余两个角都是锐角的三角形．

== 全等和叠合
=== 全等形
两个形状和大小完全相同的图形，叫做全等形．如图1.51(1)中，三角形II和I面积的大小相等但形状不同；III和I的形状相同但大小又不等；IV和I的形状和大小都不一样，只有V和I的形状和大小完全相同．三角形I和V是全等的．又如图1.51(2)中，三棱锥 $upright(I)'$ 和 $upright(I I)'$ 形状相同但大小不等；$upright(I I I)'$ 和 $upright(I I)'$ 体积的大小相等但形状又不同．只有 $upright(I V)'$ 和 $upright(I I)'$ 的形状和大小完全相同．三棱锥 $upright(I I)'$ 和 $upright(I V)'$ 是全等的．

#figure([#fig("1-72");

  ],
  caption: [
  ]
)

我们用符号，“$tilde.equiv$”表示全等．在图中就有：

#align(center)[
三角形I$tilde.equiv$ 三角形V;#h(2em);三棱锥II$' tilde.equiv$ 三棱锥IV$'$

]
对于平面上两个图形（简称平面图形），要看一看他们是否全等，实践检验的方法，常常是看它能否叠合．能叠合的就全等．

显然，两条线段 $overline(A B)$ 和 $overline(A' B')$ 能叠合的唯一条件就是它们等长：$overline(A B) = overline(A' B')$.

在角的度量的讨论中，我们实际就是用叠合来说明两个角的大小相等的意义的，这也就是说两个角 $angle A$ 和 $angle A'$ 能叠合的唯一条件就是它们的大小相等：$angle A = angle A'$.

如果 $triangle.stroked.t A B C$ 和 $triangle.stroked.t A' B' C'$ 全等（图1.52），这就是说它们能叠合．因而他们的边和角便分别相等（也说全等形的对应边相等、对应角相等）：

#figure([#fig("1-73");

  ],
  caption: [
  ]
)

$ overline(A B) = overline(A'' C'')\, & quad overline(B C) = overline(B'' C'')\,quad overline(C A) = overline(B'' A'')\
angle A = angle A''\, & quad angle B = angle C''\,quad angle C = angle B'' $

=== 三角形全等的条件
由上面对两个全等三角形的分析，知道了两个三角形如果全等，它们的对应边、对应角都分别相等．反过来说，如果两个三角形的各边对应相等，对应角也分别相等，那么这两个三角形便能叠合，它们就是全等三角形．

下面我们来研究两个三角形的全等条件．

+ 如图1.53中，$angle A = angle A'$, $overline(A B) = overline(A' B')$, $overline(A C) = overline(A' C')$.那么可以使 $overline(A' B')$ 叠合在 $overline(A B)$ 上，从而 $angle A'$ 可以和 $angle A$ 叠合，同时 $overline(A' C')$ 也就叠合在 $overline(A C)$ 上了．这样一来，由于点 $B'$ 落在点 $B$ 上，点 $C'$ 落在点 $C$ 上，那么根据“两点只确定一条直线”这个基本性质，直线 $B' C'$ 便叠合在直线 $B C$ 上，自然 $overline(B' C')$ 和 $overline(B C)$ 也就叠合在一起，于是 $triangle.stroked.t A B C$ 和 $triangle.stroked.t A' B' C'$ 便完全叠合，它们也就全等了．

  #figure([#fig("1-74");

    ],
    caption: [
    ]
  )

  由此可见，检验两个三角形是否全等时，不必分别的检验它们的各边是否对应相等、各对应角是否相等，而是检验出两条边和所夹的角分别相等就可判定这两个三角形全等了．这种判定两个三角形全等的条件，记作（SAS）条件．

+ 与此相仿，如上图中 $angle A = angle A'$, $overline(A B) = overline(A' B')$, $angle B = angle B'$,也可以先使 $overline(A' B')$ 叠合在 $overline(A B)$ 上，再让 $triangle.stroked.t A' B' C'$ 落在 $triangle.stroked.t A B C$ 所在平面上，因为 $angle A' = angle A$, $angle B' = angle B$,所以 $angle A'$ 和 $angle A$, $angle B'$ 和 $angle B$ 分别叠合；这样，直线 $A' C'$ 和 $A C$, $B' C'$ 和 $B C$ 也就分别叠合了，由于“两条直线相交只有一个交点”．因此，点 $C'$ 必落在点 $C$ 上，于是 $triangle.stroked.t A' B' C'$ 和 $triangle.stroked.t A B C$ 就完全叠合了，因此它们全等．这就是说两角和夹边对应相等的两个三角形全等．这种判定两个三角形全等的条件，记作（ASA）条件．

+ 再有，如果一个三角形的三条边的长度确定了，通过观察和实验我们可以发现这个三角形的形状和大小就不会改变了（图1.54(1)）．而一个四边形如果四条边的长度确定了，它的形状和大小却是可以改变的（图1.54(2)）．我们把三角形的这种特性叫做三角形的#strong[稳定性]．

  #figure([#image("/math2/fig/1-54.png", width: 100%);

    ],
    caption: [
    ]
  )

  这样，一个三角形 $A B C$ 的三边和另一个三角形 $A' B' C'$ 的三边如果对应地相等，即 $overline(A B) = overline(A' B')$, $overline(B C) = overline(B' C')$, $overline(A C) = overline(A' C')$,那么由三角形的稳定性，这两个三角形的对应角也必相等．即 $angle A = angle A'$, $angle B = angle B'$, $angle C = angle C'$.因此，这两个三角形就全等．这种判定三角形全等的条件，记作（SSS）条件．

#example[
在图1.55中，如果已知 $overline(A B) = overline(D C)$, $overline(A C) = overline(D B)$, $triangle.stroked.t A B C$ 和 $triangle.stroked.t D C B$ 全等吗？为什么？

]
#solution[
在 $triangle.stroked.t A B C$ 和 $triangle.stroked.t D C B$ 中，由于：

#numbered-align(($overline(A B)$, $zws = overline(D C)$, [(已知)]), ($overline(A C)$, $zws = overline(D B)$, [(已知)]), ($overline(B C)$, $zws = overline(B C)$, [(公共边)]));

$therefore quad triangle.stroked.t A B C tilde.equiv triangle.stroked.t D C B$ (SSS).

]
#align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, figure([#fig("1-75");], caption: []), figure([#fig("1-76");], caption: [])));

#example[
在图1.56中已知 $overline(A D) = overline(A E)$, $overline(A B) = overline(A C)$,那么 $triangle.stroked.t A B E$ 和 $triangle.stroked.t A C D$ 全等吗？为什么？

]
#solution[
在 $triangle.stroked.t A B E$ 和 $triangle.stroked.t A C D$ 中，由于：

#numbered-align(($overline(A D)$, $zws = overline(A E)$, [(已知)]), ($overline(A B)$, $zws = overline(A C)$, [(已知)]), ($angle A$, $zws = angle A$, [(公共角)]));

$therefore quad triangle.stroked.t A B E tilde.equiv triangle.stroked.t A C D$ (SAS).

]
#exercise[
+ 根据图填写下列空白：

  + $angle A$ 是#underline[#h(2em);]与#underline[#h(2em);]的夹角，也是#underline[#h(2em);]的对角．

  + $angle B$ 是#underline[#h(2em);]与#underline[#h(2em);]的夹角，也是#underline[#h(2em);]的对角．

  + $angle C$ 是#underline[#h(2em);]与#underline[#h(2em);]的夹角，也是#underline[#h(2em);]的对角．

+ 什么叫全等形？什么是全等三角形？两个全等三角形的对应边和对应角有什么关系？

+ 在图中，如果已知 $overline(A B) = overline(A C)$, $overline(B D) = overline(D C)$,那么 $triangle.stroked.t A B D$ 与 $triangle.stroked.t A C D$ 全等吗？为什么？

+ 写出上题中 $triangle.stroked.t A B D$ 和 $triangle.stroked.t A C D$ 的对应边和对应角．

+ 用量角器和刻度尺，作出适合以下条件的三角形：

  + $overline(A B) = 55 upright(m m)\,quad overline(A C) = 34 upright(m m)\,quad angle A = 80 degree$

  + $overline(B C) = 45 upright(m m)\,quad angle B = 50 degree\,quad angle C = 100 degree$

  + $overline(B C) = 27 upright(m m)\,quad overline(B A) = 39 upright(m m)\,quad overline(A C) = 30 upright(m m)$

  + $overline(A C) = 50 upright(m m)\,quad angle A = 95 degree\,quad angle B = 40 degree$

]
#align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, [#fig("1-77");

#subcap[
第1题

]], [#fig("1-78");

#subcap[
第3题

]]));

#heading(level: 2, numbering: none, supplement: [toc-sub])[习题1.3]

+ 写出下列各三角形中的全等三角形．

  #align(center)[
  #fig("1-79");

  ]
  #align(center)[
  #fig("1-80");

  ]
  #align(center)[
  #fig("1-81");

  ]
  #fig("1-82");

+ 指出下列哪些情况 $triangle.stroked.t A B C$ 和 $triangle.stroked.t A' B' C'$ 是全等的．

  + $overline(A B) = overline(A' B')\,quad angle B = angle B'\,quad angle A = angle A'$

  + $overline(A B) = overline(A' B')\,quad overline(A C) = overline(A' C')\,quad angle A = angle A'$

  + $overline(A B) = overline(A' B')\,quad overline(B C) = overline(B' C')\,quad overline(A C) = overline(A' C')$

  + $angle A = angle A'\,quad angle B = angle B'\,quad angle C = angle C'$

  + $overline(A B) = overline(A' B')\,quad angle B = angle B'\,quad angle C = angle C'$

  + $overline(A B) = overline(A' B')\,quad overline(B C) = overline(B' C')\,quad angle A = angle A'$

+ 如图，画一条线段 $overline(A B) = 5$cm,画 $angle B A C = 30 degree$, $angle A B D = 30 degree$ 连 $C D$ 交 $A B$ 于 $M$ 点，如果 $M$ 点恰好是 $A B$ 的中点，那么 $triangle.stroked.t A M C$ 和 $triangle.stroked.t B M D$ 全等吗？为什么？

  #align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, [#fig("1-83");
  
  #subcap[
  第3题
  
  ]], [#image("/math2/fig/4ti.png", width: 100%);
  
  #subcap[
  第4题
  
  ]]));

+ 要测量河的宽度 $overline(A B)$,在岸上先作一条线段 $overline(A A')$ 垂直于 $overline(A B)$,并且取 $overline(A A')$ 的中点 $C$,过 $A'$ 作 $A' E tack.t A A'$,沿 $A' E$ 的方向前进到点 $B'$,测得 $B'$、$C$、$B$ 恰好成一直线，那么量出哪一条线段的长就可知道河宽 $overline(A B)$？为什么？

+ 试举出一些日常生活中应用三角形稳定性的实例．

+ 通过度量，指出下列各图中全等的三角形．

  #align(center)[
  #fig("1-84");

  #subcap[
  第6题

  ]
  ]

== 相似和相似比
=== 相似形
在日常生活和生产实践中，我们经常看到和用到形状相同但大小不一定相同的图形、例如地图、测量图、放大和缩小的照片等，虽然图形的大小有了变化，但都保持原来的形状．我们把这一类形状相同，大小不一定相同的图形叫做#strong[相似形]．下面以多边形为例，来研究一下相似图形的一些重要性质．

#figure([#fig("1-85");

  ],
  caption: [
  ]
)

我们观察所有正方形，发现它们的形状都是相同的，在图1.57中的两个正方形 $A B C D$ 和 $A' B' C' D'$ 中，它们的角对应地相等，它们的边虽不一样长，但对应边的比都是相等的：$ overline(A B) / overline(A' B') = overline(B C) / overline(B' C') = overline(C D) / overline(C' D') = overline(D A) / overline(D' A') $

在图1.58中，长方形和正方形相比较，虽然它们的角对应地相等，但边长不成比例，因此形状也就不相同了．

在图1.59中，让两个四边形边长的比都是1:1,但各角不对应地相等，形状也就不同．

#align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, figure([#fig("1-86");], caption: []), figure([#fig("1-87");], caption: [])));

通过以上的观察分析，我们可推测，两个多边形相似的特征是：#strong[对应角相等，对应边成比例]．

两个相似多边形对应边的比叫做#strong[相似比]，也叫做#strong[放大率]或#strong[缩小率]．

如果把一个多边形的边长放大或缩小相同的倍数，并且对应角保持不变，那么所得的图形就和原图形相似．如图1.57中的正方形 $A B C D$ 可看成正方形 $A' B' C' D'$ 的角保持不变，边长放大 $3 / 2$ 倍而得到的与 $A' B' C' D'$ 相似的图形．

我们用符号“$tilde.rev$”表示两个图形相似，就可写成：正方形 $A B C D tilde.rev$ 正方形 $A' B' C' D'$.

很明显，全等形是相似比等于1的相似形，所以全等形是相似形的特殊情况．

#example[
在比例尺为1:50000的地图上，长度12cm的实际距离是多少公里？

]
#solution[
$because quad upright("图距") / upright("实距") = upright("比例尺")$

$therefore quad upright("实距") = upright("图距") / upright("比例尺") = frac(12 upright(c m), 1 / 50000) = 12 times 50000 upright(c m) = 6 upright(k m)$

]
#example[
在比例尺为1:500000的地图上有四个点 $A$、$B$、$C$、$D$, $overline(A B) = 2 upright(c m)$, $overline(B C) = 3 upright(c m)$, $overline(C D) = 4 upright(c m)$, $overline(D A) = 5 upright(c m)$.求四边形 $A B C D$ 在地面上的实际周长是多少公里？

]
#figure([#fig("1-88");

  ],
  caption: [
  ]
)

#solution[
设 $A$、$B$、$C$、$D$ 各点在地面上的对应点分别是 $A'$、$B'$、$C'$、$D'$.因为地图上的四边形 $A B C D$ 与地面上的四边形 $A' B' C' D'$ 是相似形，并且相似比为1:500000.

$therefore quad overline(A B) / overline(A' B') = overline(B C) / overline(B' C') = overline(C D) / overline(C' D') = overline(D A) / overline(D' A') = 1 / 500000$

$therefore quad overline(A' B') = 500000 overline(A B)\,quad overline(B' C') = 500000 overline(B C)\,quad overline(C' D') = 500000 overline(C D)\,quad overline(D' A') = 500000 overline(D A)$

因此：$ overline(A' B') + overline(B' C') + overline(C' D') + overline(D' A') & = 500000 (overline(A B) + overline(B C) + overline(C D) + overline(D A))\
 & = 500000\(2 + 3 + 4 + 5\)upright(c m)\
 & = 500000 times 14 upright(c m) = 70 upright(k m) $ #noindent;答：四边形 $A B C D$ 在地面上的实际周长是70公里．

]
#exercise[
+ 由地图上的比例尺，计算由北京到天津，北京到上海，北京到广州的实际距离是多少公里？

+ 把下面的正方形的边长放大3倍，画在作业纸上.

+ 把下面的长方形各边长缩小到原长的 $1 / 3$，画在作业纸上.

]
#align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, [#fig("1-89");

#subcap[
第2题

]], [#fig("1-90");

#subcap[
第3题

]]));

=== 相似三角形
由多边形相似的特征性质可知，如果两个三角形的各角对应相等，且对应边成比例，那么这两个三角形相似．但实际上，当我们要判定两个三角形是否相似时，并不要求对上条件一一验证．例如，我们作 $triangle.stroked.t A B C$ 和 $triangle.stroked.t A' B' C'$,使 $angle A = angle A'$, $angle B = angle B'$,于是 $angle C = angle C'$.这时我们就看到两个三角形的形状就完全相同了，我们还可以多画几组三角形，使每组三角形的两个角对应地相等（第三个角自然也相等），不难看出每组三角形的形状也都是相同的，这就使我们猜测：是否有下面的结论：

#blk[][
如果一个三角形的两个角和另一个三角形的两个角对应相等，那么这两个三角形相似．

]
#figure([#fig("1-91");

  ],
  caption: [
  ]
)

在这里，让我们来做些实验，对于上面的观察所得到的结论的正确性作进一步的检验．

#figure([#fig("1-92");

  ],
  caption: [
  ]
)

在图1.62中，若 $triangle.stroked.t A B C$ 和 $triangle.stroked.t A' B' C'$ 的两个角对应相等，（$angle A = angle A'$、$angle B = angle B'$）而且 $overline(A' B') = 3 overline(A B)$,显然第三个角也必相等（$angle C = angle C'$）,如果我们能说明 $overline(A' C') = 3 overline(A C)$, $overline(B' C') = 3 overline(B C)$,那么 $triangle.stroked.t A B C$ 和 $triangle.stroked.t A' B' C'$ 就相似了．下面我们通过作图、测量作些实验．

先把 $overline(A' B')$ 三等分成和 $overline(A B)$ 相等的线段，然后通过分点 $M_1$ 和 $M_2$ 作 $overline(B' C')$ 和 $overline(A' C')$ 的平行线，设这些平行线与 $overline(A' C')$ 和 $overline(B' C')$ 分别相交于 $M'_1$、$M'_2$, $M''_1$、$M''_2$，通过测量得知，$ overline(A' M'_1) = overline(M'_1 M'_2) = overline(M'_2 C')\,quad overline(B' M''_2) = overline(M''_2 M''_1) = overline(M''_1 C') $ #noindent;而且还发现 $overline(M_1 M''_1)$，$overline(M_2 M'_2)$、$overline(M'_1 M''_2)$ 相交于一点 $O$,并且 $ overline(M'_2 M''_1) & = overline(M'_1 O) = overline(O M''_2) = overline(A' M_1)\
overline(M_1 M'_1) & = overline(M_2 O) = overline(O M'_2) = overline(B' M''_2)\
overline(M_2 M''_2) & = overline(M_1 O) = overline(O M''_1) = overline(A' M'_1) $ #noindent;这样，由两个三角形的全等条件（SSS）可知 $triangle.stroked.t A' B' C'$ 被分割成的九个小三角形全等．这就说明了 $overline(A' C') = 3 overline(A C)$, $overline(B' C') = 3 overline(B C)$.这就是说 $triangle.stroked.t A B C tilde.rev triangle.stroked.t A' B' C'$.

假如 $triangle.stroked.t A' B' C'$ 和 $triangle.stroked.t A'' B'' C''$ 有两个角对应地相等．（$angle A' = angle A''$, $angle B' = angle B''$）且 $overline(A' B') / overline(A'' B'') = 3 / 2$，即 $overline(A' B') = 3 / 2 overline(A'' B'')$，这时我们是否能够推断：$overline(A' C') = 3 / 2 overline(A'' C'')$, $overline(B' C') = 3 / 2 overline(B'' C'')$ 呢？

由于 $triangle.stroked.t A'' B'' C''$ 和 $triangle.stroked.t A B C$ 的三个角对应地相等（$angle A = angle A''$, $angle B = angle B''$, $angle C = angle C''$），而且 $overline(A'' B'') = 2 overline(A B)$，那么由上面的说明，就有 $overline(A'' C'') = 2 overline(A C)$, $overline(B'' C'') = 2 overline(B C)$.即：$ overline(A' B') & = 3 overline(A B) = 3 / 2 overline(A'' B'')\
overline(A' C') & = 3 overline(A C) = 3 / 2 overline(A'' C'')\
overline(B' C') & = 3 overline(B C) = 3 / 2 overline(B'' C'') $ #noindent;这就说明了 $triangle.stroked.t A' B' C' tilde.rev triangle.stroked.t A'' B'' C''$.

在两个相似三角形中，相等的角叫做#strong[对应角]，相等的角所对的边叫做#strong[对应边]．两个相似三角形的#strong[对应角相等，对应边成比例]．

我们所猜想的“两个三角形的两个角若对应地相等，则这两个三角形相似．”通过上面的检验；在相似比为整数或分数时是成立的．但两个线段长度的比还可能是无理数，这个问题在这里不深入讨论了．从上面的讨论中，我们还可发现：$ frac(triangle.stroked.t A' B' C' upright("的面积"), triangle.stroked.t A B C upright("的面积")) & = 9 / 1 = (3 / 1)^2\
frac(triangle.stroked.t A' B' C' upright("的面积"), triangle.stroked.t A'' B'' C'' upright("的面积")) & = 9 / 4 = (3 / 2)^2 $ #noindent;即：#strong[如果两个三角形相似，则它们的面积的比等于相似比的平方]．

#example[
在图1.63中的两个三角形相似吗？

]
#figure([#fig("1-93");

  ],
  caption: [
  ]
)

#solution[
$triangle.stroked.t A B C$ 中

$because quad angle A = 45 degree\,quad angle B = 80 degree$

又 $because quad$ 三角形的三个角之和为 $180 degree$,

$therefore quad angle C = 55 degree$，这样 $angle A' = angle A = 45 degree$, $angle C' = angle C = 55 degree$

$therefore quad triangle.stroked.t A B C tilde.rev triangle.stroked.t A' B' C'$

]
有一个角是直角的三角形叫做#strong[直角三角形]．在两个直角三角形中，因为有一个直角对应相等，所以只要再各有一个锐角对应地相等，这两个直角三角形就相似了．

#example[
设树身在地面上的影长为4米，同时一根2米长的竹杆，直立于地面上，影长为1.5米，求树高．

]
#solution[
直立于地面的物体和影子垂直，故物体及其影子和光线成直角三角形．因为平行光线和地面的夹角都相等，所以这两个直角三角形相似，于是对应边成比例．

设树高为 $h$,则 $h / 2 = 4 / 1.5$

$therefore quad h = 2 times 4 div 1.5 approx 5.33 upright(m)$

答：树高5.33米．

]
#figure([#scale(60%, reflow: true, image("/math2/fig/1-64.png"));

  ],
  caption: [
  ]
)

#align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, [#image("/math2/fig/1-2ti.png", width: 100%);

#subcap[
第2题

]], [#image("/math2/fig/1-3ti.png", width: 100%);

#subcap[
第3题

]]));

#exercise[
+ 在下列的 $square.stroked.tiny square.stroked.tiny square.stroked.tiny$ 之中填上适当的词或数：

  + 形状相同的图形叫做 $square.stroked.tiny square.stroked.tiny square.stroked.tiny$．

  + 两个相似三角形对应边长的比为2:3,那么这两个三角形的相似比为 $square.stroked.tiny : square.stroked.tiny$，这两个三角形面积的比为 $square.stroked.tiny : square.stroked.tiny$．

+ 某时刻，烟囱的影长 $overline(A B) = 54$ 米，这时在地面上立一根长为2米的竹竿 $overline(B' C')$,它的影长 $overline(B' A') = 1.8$ 米，求烟囱的高．

+ 某人站在河岸位置 $A$,要测量 $A$ 点到对岸 $B$ 点的距离，测得 $overline(A C) = 50$ 米，$angle B A C = 60 degree$, $angle B C A = 40 degree$,试以1cm代表10米（即以 $1 / 1000$ 的比例尺），在纸上画出图来，然后量出 $overline(A B)$ 的长，再计算 $overline(A B)$ 的实际长度．

]
#heading(level: 2, numbering: none, supplement: [toc-sub])[习题1.4]

+ 已知 $triangle.stroked.t A B C tilde.rev triangle.stroked.t B D C$,试写出它们的对应边和对应角来．

+ 如图，$A B$、$C D$ 交于 $E$ 点，$angle D = angle B$, $triangle.stroked.t A E D$ 与 $triangle.stroked.t C E B$ 是否相似？如果相似，试指出它们的对应边和对应角．

  #align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, [#fig("1-94");
  
  #subcap[
  第1题
  
  ]], [#fig("1-95");
  
  #subcap[
  第2题
  
  ]]));

+ 如图，试找出图中的所有相似三角形．

  #align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, [#fig("1-96");
  
  #subcap[
  第3题
  
  ]], [#scale(60%, reflow: true, image("/math2/fig/1-4ti.png"));
  
  #subcap[
  第4题
  
  ]]));

+ 某人民公社准备开山修渠（如图）$overline(B C)$ 是其中的一段，测得 $overline(A C) = 44$m, $overline(A B) = 50$m, $angle B A C = 55 degree$,试用 $1 / 1000$ 的比例尺把地面上的三角形划在纸上，再量出纸上 $overline(B C)$ 的长，计算 $B$、$C$ 两点间的实际距离（精确到米）．

+ 在 $triangle.stroked.t A B C$ 中，$angle B = 55 degree$, $angle C = 85 degree$,试作一个三角形和 $triangle.stroked.t A B C$ 相似，这样作出的与 $triangle.stroked.t A B C$ 相似的三角形能有多少个？

== 基本作图
同学们已画过一些简单的几何图形，当时所用的画图工具有直尺、圆规、三角板、量角器等．在这一节里，我们将介绍只用直尺（没有刻度的）和圆规来画出几个简单几何图形的方法．这些图形及其画法，以后经常使用，一般把它们叫做基本作图题．

=== 作一条线段与已知线段相等
已知：线段 $a$ (图1.65).

求作：一段线等于 $a$.

#figure([#fig("1-97");

  ],
  caption: [
  ]
)

作法：

+ 任作一条射线 $O A$,

+ 以 $O$ 为圆心，$a$ 为半径画弧，交 $O A$ 于 $B$,则 $O B$ 为所求．

=== 作一个角与已知角相等
已知：$angle O$.

求作：一角等于 $angle O$.

#figure([#fig("1-98");

  ],
  caption: [
  ]
)

作法：（图1.66）

+ 作一射线 $O' X$\;

+ 以 $O$ 为圆心任意长为半径作一圆弧，交 $angle O$ 的两边于 $A$、$B$ 两点；

+ 不改变半径，以 $O'$ 为圆心作一圆弧，交 $O' X$ 于 $B'$ 点；

+ 以 $B'$ 为圆心，$overline(B A)$ 为半径作一圆弧，与前一圆弧交于 $A'$ 点；

+ 作射线 $O' A'$，则 $angle A' O' B'$ 就等于 $angle O$.

理由：由作法可知：

$because quad overline(O A) = overline(O' A')\,quad overline(O B) = overline(O' B')\,quad overline(A B) = overline(A' B')$

$therefore quad triangle.stroked.t A O B tilde.equiv triangle.stroked.t A' O' B'$（SSS）

$therefore quad angle A' O' B' = angle O$.

=== 已知三边作三角形
已知：三条线段 $a$、$b$、$c$.

求作：一三角形使其三边长分别等于 $a$、$b$、$c$.

#figure([#fig("1-99");

  ],
  caption: [
  ]
)

作法：（图1.67）

+ 作 $overline(B C) = a$

+ 分别以 $B$、$C$ 为圆心，$c$、$b$ 为半径在 $overline(B C)$ 的同旁作两条弧，它们相交于 $A$ 点．

+ 连结 $overline(A B)$、$overline(A C)$,则 $triangle.stroked.t A B C$ 为满足已知条件的三角形．

#rmk[
如果已知条件中，$b + c lt.eq a$ 或 $a + b lt.eq c$ 或 $a + c lt.eq b$,则作不成三角形．图1.68是 $b + c lt.eq a$ 的情况．

]
#figure([#fig("1-100");

  ],
  caption: [
  ]
)

=== 已知两角及夹边作三角形
已知：$angle alpha$、$angle beta$ 及线段 $a$.

求作：$triangle.stroked.t A B C$,使 $angle B = angle alpha$, $angle C = angle beta$, $overline(B C) = a$.

#figure([#fig("1-101");

  ],
  caption: [
  ]
)

作法：（图1.69）

+ 作 $overline(B C) = a$,

+ 作 $angle X B C = angle alpha$,

+ 作 $angle Y C B = angle beta$,

+ 射线 $B X$ 与射线 $C Y$ 相交于 $A$ 点．

则 $triangle.stroked.t A B C$ 即为所求作的三角形．

理由：请同学们自己说明．

#rmk[
如果已知条件中的 $angle alpha$ 与 $angle beta$ 的大小不适当（$angle alpha + angle beta gt.eq 180 degree$）,射线 $B X$ 与射线 $C Y$ 不相交，这时就作不出三角形．如图1.70所示．

]
#figure([#fig("1-102");

  ],
  caption: [
  ]
)

=== 作已知角的平分线
已知：$angle A O B$

求作：$angle A O B$ 的平分线．（在 $angle A O B$ 内部，以 $O$ 为端点作一条射线，使它把 $angle A O B$ 分成相等的两个角，这条射线就是 $angle A O B$ 的平分线．）

#figure([#fig("1-103");

  ],
  caption: [
  ]
)

作法：（图1.71）

+ 以点 $O$ 为圆心，任意长为半径作弧，交 $angle A O B$ 的两边于 $A'$、$B'$ 两点．

+ 再分别以 $A'$、$B'$ 为圆心，以 $O A'$ 为半径作两条弧交于 $C$ 点．

+ 作射线 $O C$,则射线 $O C$ 即为所求的 $angle A O B$ 的平分线．

理由：根据作法，在 $triangle.stroked.t A' O C$ 和 $triangle.stroked.t B' O C$ 中，

$because quad overline(O C) = overline(O C)\,quad overline(O B') = overline(O A')\,quad overline(A' C) = overline(B' C)$

$therefore quad triangle.stroked.t A' O C tilde.equiv triangle.stroked.t B' O C$, (SSS)

$therefore quad angle A' O C = angle B' O C$.（全等三角形对应角相等）

#rmk[
我们把平分角的射线叫做#strong[角的平分线]．如果给定的是一个平角，那么这个角的平分线和这个平角的两条边有什么关系？

]
=== 过已知直线上一点，作一直线和已知直线垂直
已知：直线 $ell$ 和 $ell$ 上一点 $P$ (图1.72)

求作：过 $P$ 点并且垂直于直线 $ell$ 的直线．

作法：

+ 以点 $P$ 为圆心，任意长为半径作弧交 $ell$ 于 $A$、$B$ 两点．

+ 分别以 $A$、$B$ 为圆心，以大于 $overline(A B)$ 的一半为半径作两条弧交于 $Q$ 点，

+ 过 $Q$、$P$ 作直线 $Q P$,则直线 $Q P tack.t ell$ 于 $P$ 点．

理由：请同学们自己说明．

#align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, figure([#fig("1-104");], caption: []), figure([#fig("1-105");], caption: [])));

=== 过已知直线外一点作已知直线的垂线
已知：直线 $ell$ 和 $ell$ 外一点 $P$\(图1.73),

求作：过 $P$ 点并且垂直于 $ell$ 的直线．

作法：

+ 以 $P$ 为圆心，在 $ell$ 上任意取 $C$ 点，以大于 $overline(P C)$ 长的线段为半径画弧交 $ell$ 于 $A$、$B$ 两点；

+ 分别以 $A$、$B$ 为圆心，以 $overline(A B)$ 为半径画两条弧相交于 $Q$ 点；

+ 过 $P$、$Q$ 作直线 $P Q$,则直线 $P Q$ 即为所求作的垂线．

理由：（略）

=== 求已知线段的中点
已知：$overline(A B)$\(图1.74).

求作：$overline(A B)$ 的中点．

作法：

+ 分别以 $A$、$B$ 为圆心，以 $overline(A B)$ 为半径画两条弧交于 $P$、$Q$ 两点．

+ 过 $P$、$Q$ 两点作直线交 $overline(A B)$ 于 $M$ 点，则 $M$ 点就是 $overline(A B)$ 的中点．

#rmk[
这种作法和作 $overline(A B)$ 的垂线的作法一致，因而直线 $overline(P Q)$ 不仅平分 $overline(A B)$,还垂直 $overline(A B)$,因此我们把 $overline(P Q)$ 叫做 $overline(A B)$ 的垂直平分线．线段的垂直平分线的一般意义可表述为：垂直且平分一条线段的直线叫做这条#strong[线段的垂直平分线]．

]
#align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, figure([#fig("1-106");], caption: []), figure([#fig("1-107");], caption: [])));

=== 过已知直线外一点作已知直线的平行线
已知；直线 $ell$ 和 $ell$ 外一点 $P$\(图1.75).

求作：过 $P$ 点作一直线和 $ell$ 平行．

作法：

+ 在直线 $ell$ 上任取一点 $P'$.

+ 过 $P$、$P'$ 作直线 $P P'$.

+ 作 $angle Q P M = angle alpha$.

则直线 $P M$ 和 $ell$ 平行．

理由：由作法 $angle Q P M = angle alpha$，所以直线 $P M parallel ell$（同位角相等则两条直线平行）．

#exercise[
+ 已知线段 $a\,b$,求作一线段等于 $a + b$\; $a - b thick\(a > b\)$.

+ 任意画一个 $triangle.stroked.t A B C$,利用它的三边之长再画一个三角形 $A' B' C'$,使得 $triangle.stroked.t A' B' C' tilde.equiv triangle.stroked.t A B C$.

+ 先任意画一个 $angle alpha$,再画一个 $angle beta$,使得 $angle beta = angle alpha$.

+ 任意画一个 $angle A B C$,试作 $angle A B C$ 的平分线．

+ 已知 $angle alpha$ (小于 $180 degree$),和两条线段 $m\,n$,求作一个 $triangle.stroked.t A B C$,使得 $angle A = angle alpha$, $overline(A B) = m$, $overline(A C) = n$.

+ 已知 $overline(A B)$,作 $overline(A B)$ 的垂直平分线．

+ 已知 $triangle.stroked.t A B C$,过 $A\,B\,C$ 分别作 $overline(B C)$, $overline(A C)$, $overline(A B)$ 所在的直线的垂线．

+ 画一个平角 $angle A O B$,再将 $angle A O B$ 二等分，四等分．

+ 将 $overline(A B)$ 四等分．

+ 过 $triangle.stroked.t A B C$ 各顶点分别作对边的平行线．

]
#align(center)[
#fig("1-108");

#subcap[
第7题

]
]
#heading(level: 2, numbering: none, supplement: [toc-sub])[习题1.5]

+ 作一个角等于：$angle alpha + angle beta$；$angle alpha - angle beta$.

  #align(center)[
  #fig("1-109");

  #subcap[
  第1题

  ]
  ]

+ 作一个三角形，使其两个角分别等于 $angle alpha$、$angle beta$, $angle alpha$ 的对边等于已知线段 $a$.

  #align(center)[
  #fig("1-110");

  #subcap[
  第2题

  ]
  ]
  （提示：先设法作出要作的三角形的第三个角，然后再利用基本作图题4的方法作图）

+ 作一个三角形的各边的垂直平分线，看是否相交于一点．

+ 作一个三角形的三个内角的平分线，看是否交于一点．

+ $P$ 是 $triangle.stroked.t A B C$ 内一点，过 $P$ 作三边的垂线．

+ 试作下列花纹图形：

  #align(center)[
  #fig("1-111");

  #subcap[
  第6题

  ]
  ]

#heading(level: 2, numbering: none, outlined: false)[小结]

在这一章实验几何中，我们对于常见、常用的空间的某些基本概念如位置、通路、方向、全等、相似等作了分析，从而确立了一系列的几何概念如点、直线、平面；射线、角、平行；长度、角度、全等形、相似形等等．我们还通过观察与实验，分析与归纳，从而总结出空间的一些性质如“两点确定一条直线”、“不共线三点确定一个平面”等等，这些都是以后进一步研究几何学的基础，为了便于以后查看，我们把本章所述的几何概念和性质列举如下#footnote[基本作图题就不再列出了．]：

#heading(level: 3, numbering: none)[点、直线、平面及其相互关系]
#blk[概念][
点是位置的反映；线是通路的反映；线段是两点间的最短通路；直线是线段向两端无限延伸而得到的图形．

]
#blk[性质][
+ 两点确定一条直线．

+ 当一个平面包含两个点 $A$、$B$ 时，它也就包含整条直线 $A B$.

+ 空间不共线三点确定一个平面．

+ 两个相交平面的交线是一条直线，对于空间一条给定的直线，存在着无数个包含这条直线的平面．

]
#heading(level: 3, numbering: none)[射线、角、平行与三角形]
#blk[概念][
直线上一点一旁的部分叫做射线．一条以点 $A$ 为端点的射线表示由 $A$ 点出发的一个方向；以同一点为端点的两条射线所组成的图形叫做角，它体现了这两条射线所表示的两个方向之间的差别；同一平面上的两条直线被一条直线所截，如果同位角相等，就称这两条直线互相平行；两个形状和大小完全相同的图形叫做全等形，两个平面图形全等的实践检验方法就是它们完全重合；两个形状相同大小不一定相同的图形叫做相似形；两个多边形相似的条件是它们的角对应相等，对应边成比例．

]
#blk[性质][
+ 两条线段全等的唯一条件就是它们的长度相等．

+ 两个角全等的唯一条件就是它们的角度相等．再者，在平面内给定一条射线 $A B$ 和 $angle alpha$,在直线 $A B$ 两侧分别存在着唯一的一条射线 $A C$ 和 $A C'$,使得 $angle B A C = angle B A C' = angle alpha$

+ 三角形的三个内角和是一个平角．

+ 过直线 $ell$ 外一点 $P$ 只有一条直线和 $ell$ 平行．

+ 在同一平面内，过已知点作已知直线的垂线只有一条．

+ 两个三角形如果有两边一夹角分别对应相等，它们就全等（SAS）.

+ 两个三角形如果有两角一夹边分别对应相等，它们就全等（ASA）.

+ 两个三角形如果三条边分别对应相等，它们就全等（SSS）.

+ 两个三角形如果有两个角对应相等，它们就相似．

]
#heading(level: 2, numbering: none)[复习题一]
+ $A$、$B$、$C$、$D$ 是依此顺序位于一条直线上的四个点，并且 $overline(A B) = overline(B D)$, $overline(B C) = overline(C D)$,把下列各组线段的长度关系，分别用式子表示：

  #cols(3)[
  + $overline(A B)$ 和 $overline(B C)$

  + $overline(A B)$ 和 $overline(A D)$

  + $overline(A D)$ 和 $overline(C D)$

  ]

+ 射线 $A B$ 和射线 $B A$ 所表示的方向是否相同？

+ 两点间的距离是什么？一点到一条直线的距离是什么？

+ 在四边形 $A B C D$ 内找一点 $P$,使得 $P$ 点到 $A$、$B$、$C$、$D$ 四顶点的距离之和最短？你猜想这一点在什么位置？并用线段是两点间的最短通路来说明你的猜想？

+ 在 $triangle.stroked.t A B C$ 中，如果 $overline(A B) = overline(A C)$,并且 $P_1$、$P_2$ 是 $overline(B C)$ 上任意两点，那么：

  + 量出 $P_1$ 点到 $overline(A B)$、$overline(A C)$ 两边的距离之和；

  + 量出 $P_2$ 点到 $overline(A B)$、$overline(A C)$ 两边的距离之和；

  + 比较一下(a)与(b)所得的结果，你能作出什么猜想？

  #align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, [#fig("1-112");
  
  #subcap[
  第4题
  
  ]], [#fig("1-113");
  
  #subcap[
  第5题
  
  ]]));

+ 在一个平面上三条直线的位置关系有几种情况？

+ 长24cm的线段，被分成不相等的四部分，首尾两部分的中点间的距离是20cm,求中间两部分中点间的距离是多少厘米？

+ 如果时针和分针组成 $7 degree 30'$ 的角，而分针指着

  #cols(2)[
  + 3;

  + 9

  ]
  那么现在是几点钟？

+ 两个角度数的比为7:3,差为 $72 degree$,这两个角是否互为补角？

+ 如图，已知 $angle A B C$ 和 $angle C B D$ 互为补角，$E B tack.t A B$, $angle A B C = 92 degree$, $B F$ 是 $angle C B D$ 的平分线，求 $angle E B F$ 是多少度？

+ 已知 $angle A O B$ 被 $O C$ 分成两部分，这两部分的差是 $30 degree$, $angle A O B$ 的平分线是 $O M$,求 $angle C O M$ 的度数．

+ 五个点 $A$、$B$、$C$、$D$、$E$ 排列在一条直线上，而且 $D$ 点在 $A$ 点右边4m的地方，$C$ 点在 $E$ 点右边5m的地方，又 $B$ 点在 $E$ 点左边5m的地方，$B$ 点在 $A$ 点左边4m的地方，问：

  + 正好在中间的是那个点？

  + $D$ 点在 $E$ 点右边多少米远的地方？

  #align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, [#fig("1-114");
  
  #subcap[
  第10题
  
  ]], [#fig("1-115");
  
  #subcap[
  第13题
  
  ]]));

+ 已知 $angle A O C$ 和 $angle C O B$ 互为补角，$O D$、$O E$ 分别是 $angle A O C$ 和 $angle C O B$ 的平分线，那么

  + $O D$ 是否垂直 $O E$？为什么？

  + $angle A O D$ 与 $angle B O E$ 是否互余？为什么？

+ 在已知 $triangle.stroked.t A B C$ 中，$angle B = angle C$, $angle A = 4 angle B$,问 $angle A$, $angle B$、$angle C$ 各等于多少度？

+ 已知 $triangle.stroked.t A B C$ 中，$angle A : angle B : angle C = 1 : 2 : 3$,求 $angle A$、$angle B$、$angle C$ 各等于多少度？

+ 在 $triangle.stroked.t A B C$ 中，$angle A = 60 degree$, $angle B = angle C$,如果 $angle B$、$angle C$ 的平分线相交于 $O$ 点，问 $angle B O C$ 等于多少度？

+ 已知如图，在 $triangle.stroked.t A B C$ 中，$overline(B A) tack.t overline(A C)$, $overline(A D) tack.t overline(B C)$, $angle B A D = 30 degree$,求 $angle x$, $angle y$, $angle z$ 的度数？

  #align(center)[
  #fig("1-116");

  #subcap[
  第17题

  ]
  ]

+ 求图中 $angle alpha$, $angle beta$ 的大小．

  #align(center)[
  #fig("1-117");

  #subcap[
  第18题

  ]
  ]

+ 已知 $triangle.stroked.t A B C$ 中，$angle A B C = 90 degree$,当 $A$ 点和 $B$ 点相重合折叠时，设折痕为 $overline(D E)$,那么 $angle E B C = angle C$,为什么？

+ 已知如图，直线 $E F$, $G H$ 和直线 $M N$ 相交于 $A\,B$, $A C$ 平分 $angle M A F$, $B D$ 平分 $angle A B H$,并且 $angle M A F = angle A B H$,问：

  + $E F$ 与 $G H$ 是否平行？为什么？

  + $A C$ 与 $B D$ 是否平行？为什么？

  #align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, [#fig("1-118");
  
  #subcap[
  第19题
  
  ]], [#fig("1-119");
  
  #subcap[
  第20题
  
  ]]));

+ 已知如图，并且 $angle 1 = angle 2$,那么 $ell$ 是否平行 $m$？为什么？

+ 已知：

  + $overline(A B) = 5$cm, $overline(A C) = 38$cm, $angle A = 54 degree$

  + $overline(A B) = 4$cm, $angle A = 42 degree$, $angle B = 58 degree$

  + $overline(A B) = 2.5$cm, $overline(B C) = 3.4$cm, $overline(C A) = 4$cm

  + $angle C = 90 degree$, $overline(C A) = 3$cm, $overline(A B) = 5$cm

  求作 $triangle.stroked.t A B C$.

  #align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, [#fig("1-120");
  
  #subcap[
  第21题
  
  ]], [#fig("1-121");
  
  #subcap[
  第23题
  
  ]]));

+ 已知如图，如果 $overline(A B) = overline(A C)$, $overline(A D) = overline(A E)$,那么 $triangle.stroked.t A D C$ 与 $triangle.stroked.t A E B$ 是否全等？为什么？

+ 已知如图，如果 $overline(A B) = overline(D C)$, $overline(A C) = overline(D B)$,那么 $triangle.stroked.t A B C$ 与 $triangle.stroked.t D C B$ 是否全等？为什么？

  #align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, [#fig("1-122");
  
  #subcap[
  第24题
  
  ]], [#fig("1-123");
  
  #subcap[
  第25题
  
  ]]));

+ 已知如图，$angle 1 = angle 2$, $angle 3 = angle 4$, $overline(B E) = overline(C D)$,问：

  + $triangle.stroked.t A B D$ 与 $triangle.stroked.t A C E$ 是否全等？为什么？

  + $triangle.stroked.t A B E$ 与 $triangle.stroked.t A C D$ 是否全等？为什么？

+ 任画一个 $triangle.stroked.t A B C$,再画一个 $triangle.stroked.t A' B' C'$,使 $triangle.stroked.t A' B' C' tilde.equiv triangle.stroked.t A B C$,想想看能有几种画法？

+ 任画一个四边形 $A B C D$,怎样画一个四边形 $A' B' C' D'$ 与四边形 $A B C D$ 全等？（用叠合法检验）

+ 已知如图 $overline(A C) tack.t overline(B C)$, $overline(F D) tack.t overline(A B)$, $angle A = angle F$,问：$triangle.stroked.t A B C$ 与 $triangle.stroked.t F E D$ 是否相似？为什么？

+ 已知如图，在 $triangle.stroked.t A B C$ 中，$overline(B A) tack.t overline(A C)$, $overline(A D) tack.t overline(B C)$,问：

  + $triangle.stroked.t A B D$ 与 $triangle.stroked.t C A D$ 是否相似？为什么？

  + $triangle.stroked.t A B D$ 与 $triangle.stroked.t C B A$ 是否相似？为什么？

  + $triangle.stroked.t A C D$ 与 $triangle.stroked.t B C A$ 是否相似？为什么？

  #align(center, grid(columns: (48%, 48%,), column-gutter: 0.35em, align: center + bottom, [#fig("1-124");
  
  #subcap[
  第28题
  
  ]], [#fig("1-125");
  
  #subcap[
  第29题
  
  ]]));

+ 过 $triangle.stroked.t A B C$ 的三个顶点，分别作对边的平行线，两两分别交于 $D$、$E$、$F$ 三点，试通过观察猜想、检验，你能对 $triangle.stroked.t A B C$ 与 $triangle.stroked.t D E F$ 的关系作出哪些结论？

+ 观察下列各图，归纳出 $n$ 边形对角线条数的公式．（提示：注意 $n$ 边形边数与每一个顶点所引出的对角线数的关系）

  #align(center)[
  #fig("1-126");

  #subcap[
  第31题

  ]
  ]
  边数 $n : thick 3\,4\,5\,6\,dots.h$

  对角线总条数 $S : thick 0\,2\,5\,9\,dots.h$

+ 今有 $n$ 个球队参加比赛，规定每两队各赛一场，求比赛总场数的公式．（参看下图，可以利用31题的结果）

  #align(center)[
  #fig("1-127");

  #subcap[
  第32题

  ]
  ]
  参加比赛的队数 $n : thick 2\,3\,4\,5\,dots.h$ 比赛的总场数 $ell : thick 1\,3\,6\,10\,dots.h$
