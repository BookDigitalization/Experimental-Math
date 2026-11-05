// 由 typst/tools/tex2typ.py 从 math5/4.tex 转换而来，已人工校对的部分以本文件为准。
#import "../common/template.typ": *
#import "figs.typ": fig
#import "defs.typ": *

= 向量几何初步
在第三章，我们学习了向量运算与运算律，这一章我们要用向量代数的方法来研究几何学，把对几何学的研究推进到有效能算的定量的水平．

== 平行与相似
=== 直线的向量方程
#figure([#fig("4-01");

  ],
  caption: [
  ]
)

给定空间任意两点 $A$⁠、$B$\(图4.1), 由平行向量基本定理可知，对空间中一点 $P$ 与 $A$⁠、$B$ 两点共线的充要条件是存在一实数 $t$, 使 $ accent(A P, ⃗) = t accent(A B, ⃗) $ #noindent;对空间任一点 $O$, 这个条件还可写为 $ accent(O P, ⃗) - accent(O A, ⃗) = t (accent(O B, ⃗) - accent(O A, ⃗)) $ #numbered-eq($ accent(O P, ⃗) =\(1 - t\)accent(O A, ⃗) + t accent(O B, ⃗) $);#noindent;这就是说，如果 $P$ 点在直线 $A B$ 上，则一定存在实数 $t$ 使 (4.1) 式成立，反之，任给一实数 $t$, 由等式 (4.1) 所确定的 $P$ 点也一定在直线 $A B$ 上，方程 (4.1) 通常叫做#strong[直线 ]$A B$#strong[ 的向量方程]．其中#strong[参数] $t$ 的几何意义是，$\|t\|=\|accent(A P, ⃗)\|:\|accent(A B, ⃗)\|$, 当 $P$ 点在射线 $A B$ 上，$t gt.eq 0$. 当 $P$ 在射线 $A B$ 的反向延长线上，$t < 0$.

由直线 $A B$ 的向量方程 (4.1) 可知，如果 $ accent(O P, ⃗) = x accent(O A, ⃗) + y accent(O B, ⃗) $ #noindent;那么点 $P$ 在直线 $A B$ 上的充要条件是 $x + y = 1$

#example[
已知 $arrow(a)\,arrow(b)$ 是两个线性无关的向量，$accent(O A, ⃗) = alpha arrow(a)$, $accent(O B, ⃗) = beta arrow(b) quad\(alpha eq.not 0\,thick beta eq.not 0\)$⁠，$accent(O C, ⃗) = x arrow(a) + y arrow(b)$（图4.2），则 $A$⁠、$B$⁠、$C$ 三点共线的充要条件是 $ x / alpha + y / beta = 1 $

]
#figure([#fig("4-02");

  ],
  caption: [
  ]
)

#proof[
由直线的向量方程可知，点 $C$ 在直线 $A B$ 上的充要条件是存在实数 $t$ 使 $ accent(O C, ⃗) =\(1 - t\)accent(O A, ⃗) + t accent(O B, ⃗) $ #noindent;即$ accent(O C, ⃗) =\(1 - t\)alpha arrow(a) + t beta arrow(b) $ #noindent;但已知 $accent(O C, ⃗) = x arrow(a) + y arrow(b)$ 且 $arrow(a) parallel.not arrow(b)$⁠，所以 $ x =\(1 - t\)alpha\,#h(2em) y = t beta $ #noindent;消去 $t$ 则可得 $A$⁠、$B$⁠、$C$ 三点共线的充要条件为 $ x / alpha + y / beta = 1 $

]
#example[
如图4.3, 设 $O$⁠、$A$⁠、$B$ 三点不共线，$accent(O A, ⃗) = arrow(a)$, $accent(O B, ⃗) = arrow(b)$, $accent(O A_1, ⃗) = alpha_1 arrow(a)$, $accent(O A_2, ⃗) = alpha_2 arrow(a)$, $accent(O B_1, ⃗) = beta_1 arrow(b)$, $accent(O B_2, ⃗) = beta_2 arrow(b)$ 且 $alpha_1$⁠、$alpha_2$⁠、$beta_1$⁠、$beta_2$ 都不为零，又设 $A_1 B_2$ 与 $A_2 B_1$ 交于 $C$ 点，试以 $arrow(a)$⁠、$arrow(b)$⁠、$alpha_1$⁠、$alpha_2$⁠、$beta_1$⁠、$beta_2$, 表示 $arrow(c) = accent(O C, ⃗)$

]
#figure([#fig("4-03");

  ],
  caption: [
  ]
)

#solution[
设 $arrow(c) = x arrow(a) + y arrow(b)$, 因为 $A_1$⁠、$C$⁠、$B_2$ 三点共线，$A_2$⁠、$C$⁠、$B_1$ 三点共线，由例4.1有方程组 $ display(cases(x / alpha_1 + y / beta_2 = 1, x / alpha_2 + y / beta_1 = 1)) $ #noindent;由于 $A_1 B_2$ 与 $A_2 B_1$ 相交于 $C$ 点，可知 $alpha_1 beta_1 - alpha_2 beta_2 eq.not 0$, 解这个方程组可得 $ x = alpha_1 alpha_2 frac(beta_2 - beta_1, alpha_2 beta_2 - alpha_1 beta_1)\,#h(2em) y = beta_1 beta_2 frac(alpha_2 - alpha_1, alpha_2 beta_2 - alpha_1 beta_1) $

]
#exercise[
+ 已知 $arrow(a)$⁠、$arrow(b)$ 线性无关，$accent(O A, ⃗) = arrow(a)$, $accent(O B, ⃗) = arrow(b)$, $accent(A P_1, ⃗) = 1 / 3 accent(A B, ⃗)$, $accent(A P_2, ⃗) = 1 / 2 accent(A B, ⃗)$, $accent(A P_3, ⃗) = 3 / 2 accent(A B, ⃗)$, 试用向量 $arrow(a)$⁠、$arrow(b)$ 表示 $accent(O P_1, ⃗)\,accent(O P_2, ⃗)\,accent(O P_3, ⃗)$.

+ 已知 $arrow(a)$⁠、$arrow(b)$ 线性无关，$accent(O A, ⃗) = arrow(a)$, $accent(O B, ⃗) = arrow(b)$, $P$ 点满足 $accent(A P, ⃗) = mu accent(P B, ⃗) thick\(mu in bb(R)\)$, $P$ 点叫做 $A B$ 的#strong[定比分点]．求证：$ accent(O P, ⃗) = frac(1, 1 + mu) arrow(a) + frac(mu, 1 + mu) arrow(b) $

+ 已知 $arrow(a)$⁠、$arrow(b)$ 线性无关，$accent(O A, ⃗) = arrow(a)$, $accent(O B, ⃗) = arrow(b)$⁠，$accent(A P_1, ⃗) = 1 / 2 accent(P_1 B, ⃗)$, $accent(A P_2, ⃗) = - 1 / 2 accent(P_2 B, ⃗)$, $accent(A P_3, ⃗) = - 3 / 2 accent(P_3 B, ⃗)$, 试用向量 $arrow(a)$⁠、$arrow(b)$ 表示 $accent(O P_1, ⃗)\,accent(O P_2, ⃗)\,accent(O P_3, ⃗)$.

+ 已知 $arrow(a)$⁠、$arrow(b)$ 不平行且 $accent(O P_1, ⃗) = x_1 arrow(a) + y_1 arrow(b)$, $accent(O P_2, ⃗) = x_2 arrow(a) + y_2 arrow(b)$, $P$ 点在直线 $P_1 P_2$ 上且以 $k$ 为比值定比分割 $accent(P_1 P_2, ⃗)$, 若 $accent(O P, ⃗) = x arrow(a) + y arrow(b)$, 试用 $k$⁠、$x_1$⁠、$x_2$⁠、$y_1$⁠、$y_2$ 表示 $x$⁠、$y$.

+ 如果 $accent(O A, ⃗) = arrow(a)$, $accent(O B, ⃗) = arrow(b)$, $accent(O C, ⃗) = arrow(c)$, 那么，$A$⁠、$B$⁠、$C$ 三点共线的充要条件是存在三个不全为零的实数 $alpha$⁠、$beta$⁠、$gamma$ 使 $ alpha arrow(a) + beta arrow(b) + gamma arrow(c) = arrow(0) quad upright("且") quad alpha + beta + gamma = 0 $#noindent;（提示：应用直线的向量方程 (4.1)）

]
=== 几何证明举例
在上一章我们已详细的分析了平行、相似与向量的加法、倍积运算之间的密切关系，下面我们举例说明向量加法与倍积运算在几何证题中的应用．

#example[
证明三角形中位线定理．

已知：在 $triangle.stroked.t A B C$ 中，$D$⁠、$E$ 分别是 $overline(A B)$⁠、$overline(A C)$ 的中点．

求证：$D E pll B C$, 且 $overline(D E) = 1 / 2 overline(B C)$（图4.4）

]
#figure([#fig("4-04");

  ],
  caption: [
  ]
)

#proof[
因 $D$⁠、$E$ 分别是 $overline(A B)$⁠、$overline(A C)$ 的中点，所以 $ accent(A D, ⃗) = 1 / 2 accent(A B, ⃗)\,#h(2em) accent(A E, ⃗) = 1 / 2 accent(A C, ⃗)\
accent(D E, ⃗) = accent(A E, ⃗) - accent(A D, ⃗) = 1 / 2 (accent(A C, ⃗) - accent(A B, ⃗)) = 1 / 2 accent(B C, ⃗) $ #noindent;即：$D E pll B C$, $overline(D E) = 1 / 2 overline(B C)$

]
由例4.3的证明，大致可以看出用向量运算证明几何题的主要步骤：

+ 选择基底向量 $accent(A B, ⃗)$⁠、$accent(A C, ⃗)$, 把已知条件（$D$⁠、$E$ 是 $accent(A B, ⃗)$⁠、$accent(A C, ⃗)$ 的中点）写为向量形式（$accent(A D, ⃗) = 1 / 2 accent(A B, ⃗)$, $accent(A E, ⃗) = 1 / 2 accent(A C, ⃗)$⁠）

+ 进行向量运算，算出结果（$accent(D E, ⃗) = 1 / 2 accent(B C, ⃗)$⁠）

+ 把结果转化为几何结论．

对例4.3的进一步分析，我们还会看到，证明中应用了倍积分配律和向量平行的条件，这正好与几何中应用平行四边形定理（或相似形定理）相对应．

#example[
已知五边形 $A B C D E$, $M$⁠、$N$⁠、$P$⁠、$Q$ 分别是 $overline(A B)$⁠、$overline(C D)$⁠、$overline(B C)$⁠、$overline(D E)$ 的中点，$K$⁠、$L$ 是 $overline(M N)$ 与 $overline(P Q)$ 的中点，求证：$overline(K L) = 1 / 4 overline(A E)$ 且 $K L pll A E$\(图4.5).

]
#proof[
在平面上任选一点 $O$ 作为基点，则 $ accent(K L, ⃗) & = accent(O L, ⃗) - accent(O K, ⃗) = 1 / 2 (accent(O P, ⃗) + accent(O Q, ⃗)) - 1 / 2 (accent(O M, ⃗) + accent(O N, ⃗))\
 & = 1 / 2 [1 / 2 (accent(O B, ⃗) + accent(O C, ⃗)) + 1 / 2 (accent(O D, ⃗) + accent(O E, ⃗))] - 1 / 2 [1 / 2 (accent(O A, ⃗) + accent(O B, ⃗)) + 1 / 2 (accent(O C, ⃗) + accent(O D, ⃗))]\
 & = 1 / 4 (accent(O B, ⃗) + accent(O C, ⃗) + accent(O D, ⃗) + accent(O E, ⃗)) - 1 / 4 (accent(O A, ⃗) + accent(O B, ⃗) + accent(O C, ⃗) + accent(O D, ⃗))\
 & = 1 / 4 (accent(O E, ⃗) - accent(O A, ⃗)) = 1 / 4 accent(A E, ⃗) $ #noindent;即：$K L pll A E$ 且 $overline(K L) = 1 / 4 overline(A E)$

]
在例4.4中，基点选为任一点 $O$, 这样对题中各点的位置向量表达就比较对称，计算起来就较为方便．

#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("4-05");], caption: []), figure([#fig("4-06");], caption: []))));

#example[
已知 $triangle.stroked.t A B C$, $D$ 是 $overline(B C)$ 上任一点，$overline(D E) pll overline(C A)$, $overline(D F) pll overline(B A)$,

求证：$overline(E D) / overline(A C) + overline(F D) / overline(A B) = 1$ (图4.6).

]
#proof[
设 $overline(E D) / overline(A C) = x$, $overline(F D) / overline(A B) = y$⁠，则：$ accent(E D, ⃗) = x accent(A C, ⃗)\,#h(2em) accent(F D, ⃗) = y accent(A B, ⃗) $ #noindent;由求和法则可得 $ accent(A D, ⃗) = accent(A E, ⃗) + accent(A F, ⃗) = accent(E D, ⃗) + accent(F D, ⃗) = x accent(A C, ⃗) + y accent(A B, ⃗) $ #noindent;又因 $D$ 在直线 $B C$ 上，所以 $x + y = 1$⁠，即：$ overline(E D) / overline(A C) + overline(F D) / overline(A B) = 1 $

]
例4.5中的结论，实际上就是一点在直线上的一个必要条件，换用向量表达式就一目了然了，应注意，题中若设 $D$ 点是直线 $B C$ 上任一点，结论同样成立．

#example[
已知 $pgram A B C D$, $M$ 是 $overline(A B)$ 的中点，$overline(D M)$ 交对角线 $overline(A C)$ 于 $H$ 点，

求证：$overline(A H) = 1 / 3 overline(A C)\,#h(2em) overline(M H) = 1 / 3 overline(M D)$ (图4.7).

]
#proof[
设 $accent(A H, ⃗) = x accent(A C, ⃗)$⁠，$accent(M H, ⃗) = y accent(M D, ⃗)$⁠，则 $ accent(A H, ⃗) & = x accent(A C, ⃗) = x (accent(A B, ⃗) + accent(A D, ⃗)) = x accent(A B, ⃗) + x accent(A D, ⃗)\
accent(A H, ⃗) & =\(1 - y\)accent(A M, ⃗) + y accent(A D, ⃗) = 1 / 2\(1 - y\)accent(A B, ⃗) + y accent(A D, ⃗) $ #noindent;由于 $accent(A B, ⃗)$⁠、$accent(A D, ⃗)$ 线性无关，所以有 $ display(cases(2 x + y = 1, y = x)) $ #noindent;解方程组可得：$x = 1 / 3\,quad y = 1 / 3$

所以：$ accent(A H, ⃗) = 1 / 3 accent(A C, ⃗)\,#h(2em) accent(M H, ⃗) = 1 / 3 accent(M D, ⃗)\
overline(A H) = 1 / 3 overline(A C)\,#h(2em) overline(M H) = 1 / 3 overline(M D) $

]
例4.6中，证明的关键是设未知数，根据已知条件，用基向量 $accent(A B, ⃗)$, $accent(A D, ⃗)$ 写出 $accent(A H, ⃗)$ 的两个表达式，然后由基向量的线性无关性转化为方程组来求解．这和在代数中设未知数列方程的解问题的方法相似．

#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("4-07");], caption: []), figure([#fig("4-08");], caption: []))));

#example[
已知 $triangle.stroked.t A B C$, 证明：三条中线 $overline(A D)$⁠、$overline(B E)$⁠、$overline(C F)$ 相交于一点 $G$ 且 $overline(A G) = 2 / 3 overline(A D)$, $overline(B G) = 2 / 3 overline(B E)$, $overline(C G) = 2 / 3 overline(C F)$（图4.8）．

]
#proof[
设 $overline(A D)\,overline(B E)$ 相交于 $G$ 点，$accent(A G, ⃗) = x accent(A D, ⃗)$, $accent(B G, ⃗) = y accent(B E, ⃗)$⁠，$accent(A B, ⃗) = arrow(a)$, $accent(A C, ⃗) = arrow(b)$⁠，则：$ accent(A G, ⃗) = x accent(A D, ⃗) = x times 1 / 2\(arrow(a) + arrow(b)\)= 1 / 2 x arrow(a) + 1 / 2 x arrow(b) $ #noindent;又 $ accent(A G, ⃗) =\(1 - y\)accent(A B, ⃗) + y accent(A E, ⃗) =\(1 - y\)arrow(a) + 1 / 2 y arrow(b) $ #noindent;由 $arrow(a)\,arrow(b)$ 线性无关，得：$ display(cases(1 / 2 x = 1 - y, 1 / 2 x = 1 / 2 y)) $ #noindent;解之得：$x = 2 / 3\,quad y = 2 / 3$⁠，所以 $ accent(A G, ⃗) = 2 / 3 accent(A D, ⃗)\,#h(2em) accent(B G, ⃗) = 2 / 3 accent(B E, ⃗)\
overline(A G) = 2 / 3 overline(A D)\,#h(2em) overline(B G) = 2 / 3 overline(B E) $

如果 $overline(B E)\,overline(C F)$ 相交于 $G'$ 点，那么同样可证，$ overline(B G') = 2 / 3 overline(B E)\,#h(2em) overline(C G') = 2 / 3 overline(C F) $ #noindent;于是 $G$ 点与 $G'$ 点重合，题中结论得证．

]
#example[
已知三棱锥 $S - A B C$, $K_1$⁠、$L_1$⁠、$M_1$ 分别是侧棱 $overline(S A)$⁠、$overline(S B)$⁠、$overline(S C)$ 的中点，$K_2$⁠、$L_2$⁠、$M_2$ 分别是 $overline(B C)$⁠、$overline(C A)$⁠、$overline(A B)$ 的中点，求证：$overline(K_1 K_2)$, $overline(L_1 L_2)$, $overline(M_1 M_2)$ 相交于一点，并在这点互相平分（图4.9）．

]
#proof[
设 $accent(S A, ⃗) = arrow(a)$, $accent(S B, ⃗) = arrow(b)$, $accent(S C, ⃗) = arrow(c)$, $O_1$ 为 $overline(K_1 K_2)$ 的中点，则 $ accent(S O_1, ⃗) = 1 / 2\(accent(S K_1, ⃗) + accent(S K_2, ⃗)\)= 1 / 2 [1 / 2 arrow(a) + 1 / 2 \( arrow(b) + arrow(c) \)] = 1 / 4 (arrow(a) + arrow(b) + arrow(c)) $ #noindent;取 $L_1 L_2$ 的中点 $O_2$, $M_1 M_2$ 的中点 $O_3$, 同理可证 $ accent(S O_2, ⃗) = accent(S O_3, ⃗) = 1 / 4 (arrow(a) + arrow(b) + arrow(c)) $ #noindent;因此三点 $O_1$⁠、$O_2$⁠、$O_3$ 必重合于一点 $O$ 并在 $O$ 点互相平分．

]
#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("4-09");], caption: []), figure([#fig("4-10");], caption: []))));

#example[
试证Desargues定理：如图4.10, 设 $triangle.stroked.t A B C$ 与 $triangle.stroked.t A' B' C'$ 的顶点连线 $A A'$⁠、$B B'$⁠、$C C'$ 相交于一点 $O$, 则对应边 $A B$ 与 $A' B'$⁠、$B C$ 与 $B' C'$⁠、$C A$ 与 $C' A'$ 的延长线分别相交于 $P$⁠、$Q$⁠、$R$,

试证 $P$⁠、$Q$⁠、$R$ 共线．

]
#proof[
设 $accent(O A, ⃗) = arrow(a)$, $accent(O B, ⃗) = arrow(b)$, $accent(O C, ⃗) = arrow(c)$, 则存在 $alpha\,beta\,gamma in bb(R)$⁠，使 $accent(O A', ⃗) = alpha arrow(a)$, $accent(O B', ⃗) = beta arrow(b)$, $accent(O C', ⃗) = gamma arrow(c)$

因 $P$ 点既在 $A B$ 上又在 $A' B'$ 上，所以存在 $x\,y in bb(R)$⁠，使 $ accent(O P, ⃗) & =\(1 - x\)arrow(a) + x arrow(b)\
accent(O P, ⃗) & =\(1 - y\)alpha arrow(a) + beta y arrow(b) $ #noindent;由此可得 $ x = frac(beta\(alpha - 1\), alpha - beta)\,#h(2em) y = frac(alpha - 1, alpha - beta) $ #numbered-eq($ accent(O P, ⃗) = frac(alpha\(1 - beta\), alpha - beta) arrow(a) + frac(beta\(alpha - 1\), alpha - beta) arrow(b) $);#noindent;同理可求得

#numbered-align(($accent(O Q, ⃗)$, $eqph = frac(beta\(1 - gamma\), beta - gamma) arrow(b) + frac(gamma\(beta - 1\), beta - gamma) arrow(c)$, true), ($accent(O R, ⃗)$, $eqph = frac(gamma\(1 - alpha\), gamma - alpha) arrow(c) + frac(alpha\(gamma - 1\), gamma - alpha) arrow(a)$, true));

$ accent(P R, ⃗) & = accent(O R, ⃗) - accent(O P, ⃗) = frac(alpha\(alpha - 1\)\(gamma - beta\), \(gamma - alpha\)\(alpha - beta\)) arrow(a) + frac(beta\(1 - alpha\), alpha - beta) arrow(b) + frac(gamma\(1 - alpha\), gamma - alpha) arrow(c)\
accent(P Q, ⃗) & = accent(O Q, ⃗) - accent(O P, ⃗) = frac(alpha\(beta - 1\), alpha - beta) arrow(a) + frac(beta\(beta - 1\)\(gamma - alpha\), \(alpha - beta\)\(beta - gamma\)) arrow(b) + frac(gamma\(beta - 1\), beta - gamma) arrow(c) $

容易验证 $arrow(a)\,arrow(b)\,arrow(c)$ 的系数成比例，所以 $accent(P R, ⃗)$ 与 $accent(P Q, ⃗)$ 共线，即 $P$⁠、$Q$⁠、$R$ 共线．

此题还可另证，设 $x =\(gamma - 1\)\(alpha - beta\)$, $y =\(alpha - 1\)\(beta - gamma\)$, $z =\(beta - 1\)\(gamma - alpha\)$, 则可得：$ x accent(O P, ⃗) + y accent(O Q, ⃗) + z accent(O R, ⃗) = arrow(0) $ #noindent;并且 $x + y + z = 0$⁠．

$x$⁠、$y$⁠、$z$ 至少有一不为0（由本节“直线的向量方程”练习第5题），这便证明了 $P$⁠、$Q$⁠、$R$ 三点共线．

]
#exercise[
试用向量运算证明以下各题．

+ 试证平行四边形的对角线互相平分．

+ 设 $triangle.stroked.t A B C$ 和 $triangle.stroked.t A' B' C'$ 的对应顶点连线 $A A'$⁠、$B B'$⁠、$C C'$ 相交于一点 $O$. 试证若 $A B pll A' B'$, $B C pll B' C'$, 则 $A C pll A' C'$.

+ 设 $ell$⁠、$ell'$ 相交于 $O$ 点，$A\,B\,C in ell$, $A'\,B'\,C' in ell'$. 试证如果 $A B' pll A' B$, $B C' pll B' C$, 则有 $A C' pll A' C$.

+ 证明梯形中位线定理．

+ 已知：$triangle.stroked.t A B C$ 中，$D$ 是 $overline(B C)$ 的中点，过 $D$ 任作一直线分别交 $overline(A C)$ 于 $E$, 交 $A B$ 的延长线于 $F$, 求证：$overline(A E) : overline(E C) = overline(A F) : overline(F B)$.

+ 已知：梯形 $A B C D$, $A B pll D C$, $overline(A B) = 2 overline(C D)$, $overline(A C)$⁠、$overline(B D)$ 相交于 $E$, 求证：$overline(C E) = 1 / 3 overline(A C)$.

+ 已知：梯形 $A B C D$ 中，$E$⁠、$F$ 是上、下底 $overline(A D)$⁠、$overline(B C)$ 的中点，$overline(A C)$⁠、$overline(B D)$ 相交于 $G$, 求证：$E$⁠、$G$⁠、$F$ 三点共线．

]
#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, [#fig("4-11");

#subcap[
第2题

]], [#fig("4-12");

#subcap[
第3题

]])));

#heading(level: 2, numbering: none, supplement: [toc-sub])[习题4.1]

+ 已知：$O$ 是一个定点，$arrow(a)$⁠、$arrow(b)$ 是两个线性无关的向量，$accent(O P_1, ⃗) = 2 arrow(a) + arrow(b)$, $accent(O P_2, ⃗) = arrow(a) - arrow(b)$, $P$ 是直线 $P_1 P_2$ 上任意一点且 $accent(O P, ⃗) = x arrow(a) + y arrow(b)$, 求 $x$⁠、$y$ 满足的代数关系式．

+ 已知：在 $triangle.stroked.t A B C$ 中，$D$⁠、$E$ 分别是 $overline(B C)$⁠、$overline(A C)$ 边上的点且 $overline(B D) : overline(D C) = 1 : 2$, $overline(C E) : overline(E A) = 1 : 1$, $overline(A D)$ 与 $overline(B E)$ 相交于 $O$ 点，设 $accent(A B, ⃗) = arrow(a)$, $accent(A C, ⃗) = arrow(b)$, $accent(C O, ⃗) = x arrow(a) + y arrow(b)$, 求 $x$⁠、$y$.

+ 设 $arrow(a)$⁠、$arrow(b)$ 是两个线性无关的向量，$accent(O D, ⃗) = h arrow(a) + k arrow(b) eq.not arrow(0)$. $P$ 是直线 $O D$ 上任意一点，令 $accent(O P, ⃗) = x arrow(a) + y arrow(b)$, 求证：$x$⁠、$y$ 满足方程 $k x - h y = 0$.

+ 已知 $D$⁠、$E$⁠、$F$ 分别是 $triangle.stroked.t A B C$ 的边 $overline(A B)$⁠、$overline(B C)$⁠、$overline(A C)$ 上的一点且 $overline(A D) / overline(A B) = overline(B E) / overline(B C) = overline(C F) / overline(C A)$

  求证：所有这样的 $triangle.stroked.t D E F$ 重心是一个定点．

+ 如图，已知平行六面体 $O A D B - C E F G$, 求证：若对角线 $overline(A G)$ 与平面 $\(O\,D\,E\)$ 相交于 $H$, $O H$ 与侧面 $A D F E$ 相交于 $K$, 求证 $overline(A H) = 1 / 3 overline(A G)$⁠，$overline(O H) = 2 / 3 overline(O K)$

  #align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, [#fig("4-13");
  
  #subcap[
  第5题
  
  ]], [#fig("4-14");
  
  #subcap[
  第6题
  
  ]])));

+ 在 $triangle.stroked.t A B C$ 的三条边上各取一点 $P$⁠、$Q$⁠、$R$, 若 $accent(A R, ⃗) = x accent(R B, ⃗)$, $accent(B P, ⃗) = y accent(P C, ⃗)$, $accent(C Q, ⃗) = z accent(Q A, ⃗)$. 求证：$A P$⁠、$B Q$⁠、$C R$ 共点的充要条件是 $x y z = 1$.

+ 在 $triangle.stroked.t A B C$ 三边所在的直线上各取一点 $P$⁠、$Q$⁠、$R$, 使 $ accent(A R, ⃗) = x accent(R B, ⃗)\,#h(2em) accent(B P, ⃗) = y accent(P C, ⃗)\,#h(2em) accent(C Q, ⃗) = z accent(Q A, ⃗) $ #noindent;求证：$P$⁠、$Q$⁠、$R$ 三点共线的充要条件是 $x y z = - 1$.

  #fig-center[
  #fig("4-15");

  #subcap[
  第7题

  ]
  ]

== 垂直与度量问题
这节我们举例说明，用内积运算处理度量问题的一般方法和技巧．

#example[
证明勾股定理（图4.11）．

]
#proof[
在直角 $triangle.stroked.t A B C$ 中，$angle B = 90 degree$, 则 $ accent(A C, ⃗) & = accent(A B, ⃗) + accent(B C, ⃗)\
accent(A C, ⃗) dot.op accent(A C, ⃗) & = (accent(A B, ⃗) + accent(B C, ⃗)) dot.op (accent(A B, ⃗) + accent(B C, ⃗))\
 & = accent(A B, ⃗) dot.op accent(A B, ⃗) + accent(B C, ⃗) dot.op accent(B C, ⃗) $ #noindent;即：$overline(A C)^2 = overline(A B)^2 + overline(B C)^2$

]
#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("4-16");], caption: []), figure([#fig("4-17");], caption: []))));

#example[
证明余弦定理（图4.12）．

]
#proof[
在 $triangle.stroked.t A B C$ 中，$ accent(A C, ⃗) & = accent(A B, ⃗) + accent(B C, ⃗)\
accent(A C, ⃗) dot.op accent(A C, ⃗) & = (accent(A B, ⃗) + accent(B C, ⃗)) dot.op (accent(A B, ⃗) + accent(B C, ⃗))\
 & = accent(A B, ⃗) dot.op accent(A B, ⃗) + accent(B C, ⃗) dot.op accent(B C, ⃗) + 2 accent(A B, ⃗) dot.op accent(B C, ⃗) $ #noindent;即 $ \|accent(A C, ⃗)\|^2 & =\|accent(A B, ⃗)\|^2 +\|accent(B C, ⃗)\|^2 - 2\|accent(A B, ⃗)\|\|accent(B C, ⃗)\|cos B\
b^2 & = c^2 + a^2 - 2 c a cos B $ #noindent;同理可证：$ c^2 & = a^2 + b^2 - 2 a b cos C\
a^2 & = b^2 + c^2 - 2 b c cos A $

]
由例4.10、例4.11的证明过程可以看到，为了得到三角形的边角关系，只要写出三角形中边向量所要满足的关系，然后作内积运算，向量关系就可转化为数量关系．

#example[
证明射影定理与正弦定理．

]
#proof[
过 $A$ 点引单位向量 $arrow(e)_1 pll accent(A C, ⃗)$, $arrow(e)_2 tack.t arrow(e)_1$ (图4.13) #numbered-eq($ accent(A C, ⃗) & = accent(A B, ⃗) + accent(B C, ⃗)\
accent(A C, ⃗) dot.op arrow(e)_1 & = accent(A B, ⃗) dot.op arrow(e)_1 + accent(B C, ⃗) dot.op arrow(e)_1\
\|accent(A C, ⃗)\| & =\|accent(A B, ⃗)\|cos A +\|accent(B C, ⃗)\|cos C $);#noindent;即：$b = c cos A + a cos C$ 同理可证：$ c = a cos B + b cos A\,#h(2em) a = b cos C + c cos B $ #noindent;\(4.5) 式两边分别对 $arrow(e)_2$ 取内积运算，则 $ accent(A C, ⃗) dot.op arrow(e)_2 & = accent(A B, ⃗) dot.op arrow(e)_2 + accent(B C, ⃗) dot.op arrow(e)_2\
0 & =\|accent(A B, ⃗)\|cos\(90 degree - A\)+\|accent(B C, ⃗)\|cos\(90 degree + C\) $ #noindent;即：$0 = c sin A - a sin C quad arrow.r.double quad frac(a, sin A) = frac(c, sin C)$

同理可证：$frac(a, sin A) = frac(b, sin B)$⁠，所以 $ frac(a, sin A) = frac(b, sin B) = frac(c, sin C) $

]
在例4.12的证明中，我们先写出三角形三个边向量所满足的向量关系式，然后，分别对 $arrow(e)_1$⁠、$arrow(e)_2$ 两个互相垂直的单位向量取内积运算，这样就很容易地证明了射影定理和正弦定理．适当选取单位向量，对题设条件所满足的向量关系式进行内积运算是处理一些直线形边角关系的基本方法之一．

#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("4-18");], caption: []), figure([#fig("4-19");], caption: []))));

#example[
利用内积运算证明角平分线定理．

]
#proof[
设 $overline(A P)$ 为 $triangle.stroked.t A B C$ 中内角 $A$ 的平分线，则 $angle B A P = angle P A C = alpha$, 取单位向量 $arrow(e) tack.t accent(A P, ⃗)$（图4.14）$ accent(A B, ⃗) dot.op arrow(e) & =\|accent(A B, ⃗)\|cos\(90 degree - alpha\)=\|accent(A B, ⃗)\|sin alpha\
accent(A C, ⃗) dot.op arrow(e) & =\|accent(A C, ⃗)\|cos\(90 degree + alpha\)= -\|accent(A C, ⃗)\|sin alpha $ $ frac(\|accent(A B, ⃗)\|, \|accent(A C, ⃗)\|) = frac(\|accent(A B, ⃗) dot.op arrow(e)\|, \|accent(A C, ⃗) dot.op arrow(e)\|) = frac(\|\(accent(A P, ⃗) + accent(P B, ⃗)\)dot.op arrow(e)\|, \|\(accent(A P, ⃗) + accent(P C, ⃗)\)dot.op arrow(e)\|) = frac(\|accent(P B, ⃗) dot.op arrow(e)\|, \|accent(P C, ⃗) dot.op arrow(e)\|) = frac(\|accent(P B, ⃗)\|, \|accent(P C, ⃗)\|) $

]
#example[
在直角 $triangle.stroked.t A B C$ 中，$A D$ 是斜边 $overline(B C)$ 上的高，作 $D E tack.t A B$, $D F tack.t A C$, $E$⁠、$F$ 是垂足．

求证：$overline(B E) / overline(C F) = overline(A B)^3 / overline(A C)^3$

]
#proof[
设 $overline(E B) / overline(A B) = lambda$, $overline(F C) / overline(A C) = mu$⁠，则：$ accent(E B, ⃗) = lambda accent(A B, ⃗)\,quad accent(F C, ⃗) = mu accent(A C, ⃗)\,quad accent(A E, ⃗) =\(1 - lambda\)accent(A B, ⃗)\,quad accent(A F, ⃗) =\(1 - mu\)accent(A C, ⃗)\
accent(A D, ⃗) = accent(A E, ⃗) + accent(A F, ⃗) =\(1 - lambda\)accent(A B, ⃗) +\(1 - mu\)accent(A C, ⃗) $ #noindent;因为 $D in B C$⁠，则：$ \(1 - lambda\)+\(1 - mu\)= 1 quad arrow.r.double quad lambda + mu = 1 $ #noindent;又 $because quad accent(A D, ⃗) tack.t accent(B C, ⃗)$⁠，因此：$ [\( 1 - lambda \) accent(A B, ⃗) + \( 1 - mu \) accent(A C, ⃗)] dot.op (accent(A C, ⃗) - accent(A B, ⃗)) = 0 $ #noindent;由此可得：$ lambda / mu = overline(A B)^2 / overline(A C)^2\
overline(E B) / overline(F C) = frac(lambda overline(A B), mu overline(A C)) = overline(A B)^3 / overline(A C)^3 $

]
#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("4-20");], caption: []), figure([#fig("4-21");], caption: []))));

#example[
设一动点 $P$, 到两点 $A$⁠、$B$ 的距离的平方和等于常数 $k$, 求 $P$ 点的轨迹．

]
#solution[
取 $overline(A B)$ 的中点 $O$, 则 $ accent(P A, ⃗) = accent(P O, ⃗) + accent(O A, ⃗)\,#h(2em) accent(P B, ⃗) = accent(P O, ⃗) + accent(O B, ⃗) $ $ overline(P A)^2 & = overline(P O)^2 + overline(O A)^2 + 2 accent(P O, ⃗) dot.op accent(O A, ⃗)\
overline(P B)^2 & = overline(P O)^2 + overline(O B)^2 + 2 accent(P O, ⃗) dot.op accent(O B, ⃗) $ #noindent;因为 $overline(P A)^2 + overline(P B)^2 = k\,quad accent(P O, ⃗) dot.op accent(O A, ⃗) = - accent(P O, ⃗) dot.op accent(O B, ⃗)$

所以：$ 2 (overline(P O)^2 + overline(O A)^2) = k\,#h(2em) overline(P O) = sqrt(k / 2 - overline(O A)^2) $ #noindent;于是，$P$ 点到 $O$ 点的距离是一个常数．即 $P$ 点的轨迹是以 $O$ 为圆心，$sqrt(k / 2 - overline(O A)^2)$ 为半径的圆．

]
#example[
已知正方形 $A B C D$\(图4.17), $P$ 为 $overline(B D)$ 上任一点，$overline(P E) tack.t overline(B C)$ 于 $E$ 点，$overline(P F) tack.t overline(C D)$ 于 $F$ 点，求证：$overline(A P) = overline(E F)$ 且 $A P tack.t E F$.

]
#proof[
设 $accent(B P, ⃗) = lambda accent(B D, ⃗)$, 正方形边长为 $a$, 则 $ accent(A P, ⃗) & = accent(A B, ⃗) + accent(B P, ⃗) =\(1 - lambda\)accent(A B, ⃗) + lambda accent(A D, ⃗)\
accent(E F, ⃗) & = accent(E C, ⃗) + accent(C F, ⃗) =\(1 - lambda\)accent(B C, ⃗) + lambda accent(C D, ⃗) $ $ overline(A P)^2 & =\(1 - lambda\)^2 a^2 + lambda^2 a^2 + 2 lambda\(1 - lambda\)accent(A B, ⃗) dot.op accent(A D, ⃗)\
 & =\(1 - lambda\)^2 a^2 + lambda^2 a^2\
overline(E F)^2 & =\(1 - lambda\)^2 a^2 + lambda^2 a^2 $ #noindent;所以：$overline(A P) = overline(E F)$⁠．因为 $ accent(A P, ⃗) dot.op accent(E F, ⃗) = lambda\(1 - lambda\)accent(A B, ⃗) dot.op accent(C D, ⃗) + lambda\(1 - lambda\)accent(A D, ⃗) dot.op accent(B C, ⃗) = 0 $ #noindent;所以 $overline(A P) tack.t overline(E F)$.

]
#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("4-22");], caption: []), figure([#fig("4-23");], caption: []))));

#example[
已知 $triangle.stroked.t A B C$ (图4.18), $overline(B C) = a$, $overline(C A) = b$, $overline(A B) = c$, 求：

+ 三边上的中线 $m_a$, $m_b$, $m_c$⁠；

+ 三个角平分线 $t_a$⁠、$t_b$⁠、$t_c$⁠；

+ 三角形的面积 $S$.

]
#solution[
+ 如图：设 $accent(B C, ⃗) = arrow(a)$, $accent(C A, ⃗) = arrow(b)$, $accent(A B, ⃗) = arrow(c)$, 则 $B C$ 边上的中线 $accent(A D, ⃗) = 1 / 2\(- arrow(b) + arrow(c)\)$, $ accent(A D, ⃗) dot.op accent(A D, ⃗) & = 1 / 4\(b^2 + c^2 - 2 arrow(b) dot.op arrow(c)\)\
  \|accent(A D, ⃗)\|^2 & = 1 / 4\[b^2 + c^2 -\(a^2 - b^2 - c^2\)\]= 1 / 4\(2 b^2 + 2 c^2 - a^2\) $ #noindent;因此 $ m_a = 1 / 2 sqrt(2 b^2 + 2 c^2 - a^2) $ #noindent;同理可得：$ m_b = 1 / 2 sqrt(2 a^2 + 2 c^2 - b^2)\,#h(2em) m_c = 1 / 2 sqrt(2 a^2 + 2 b^2 - c^2) $

+ 因 $arrow(t)_a = - frac(c, b + c) arrow(b) + frac(b, b + c) arrow(c)$⁠，则：$ lr(|arrow(t_a)|)^2 & = frac(c^2 b^2, \(b + c\)^2) + frac(b^2 c^2, \(b + c\)^2) - 2 frac(b c, \(b + c\)^2) arrow(b) dot.op arrow(c)\
   & = frac(b c, \(b + c\)^2) (2 b c + b^2 + c^2 - a^2)\
   & = frac(b c, \(b + c\)^2) [\( b + c \)^2 - a^2]\
   & = frac(b c, \(b + c\)^2)\[\(a + b + c\)\(b + c - a\)\] $ #noindent;令 $a + b + c = 2 p$, 则 $ t_a^2 & = frac(4 b c, \(b + c\)^2) p\(p - a\)\
  t_a & = frac(2 sqrt(b c), b + c) sqrt(p\(p - a\)) $ #noindent;同理可得：$ t_b = frac(2 sqrt(a c), a + c) sqrt(p\(p - b\))\,#h(2em) t_c = frac(2 sqrt(a b), a + b) sqrt(p\(p - c\)) $

+ #h(0pt)
  $ S^2 & = 1 / 4 b^2 c^2 sin^2 A = 1 / 4 b^2 c^2 (1 - cos^2 A)\
   & = 1 / 4 b^2 c^2 [1 - (frac(arrow(b) dot.op arrow(c), b c))^2] = 1 / 4 b^2 c^2 [1 - frac((b^2 + c^2 - a^2)^2, 4 b^2 c^2)]\
   & = 1 / 16 [4 b^2 c^2 - (b^2 + c^2 - a^2)^2]\
   & = 1 / 16\(a + b + c\)\(a + b - c\)\(a + c - b\)\(b + c - a\)\
   & = p\(p - a\)\(p - b\)\(p - c\) $ $ S = sqrt(p\(p - a\)\(p - b\)\(p - c\)) $

]
#example[
证明定理：如果一条直线 $a$ 垂直于平面 $pi$ 上的两条相交直线 $b$⁠、$c$, 那么 $a tack.t pi$ (图4.19).

]
#proof[
在平面 $pi$ 上，任取一条直线 $d$, 在 $a\,b\,c\,d$ 上分别取向量 $arrow(a)$⁠、$arrow(b)$⁠、$arrow(c)$⁠、$arrow(d)$. 由于 $b$⁠、$c$ 相交，依共面向量定理，存在唯一的数偶 $\(x\,y\)$, 使 $ arrow(d) & = x arrow(b) + y arrow(c)\
arrow(a) dot.op arrow(d) & = arrow(a) dot.op (x arrow(b) + y arrow(c)) = x arrow(a) dot.op arrow(b) + y arrow(a) dot.op arrow(c) = 0 $ #noindent;所以：$arrow(a) tack.t arrow(d)$⁠，即：$a tack.t d$

这就是说 $a$ 垂直于平面 $pi$ 上的任一条直线，所以 $a tack.t pi$.

]
#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("4-24");], caption: []), figure([#fig("4-25");], caption: []))));

#example[
已知空间四边形 $O - A B C$, $overline(O A) = overline(O B)$, $overline(C A) = overline(C B)$⁠．$E$⁠、$F$⁠、$G$⁠、$H$ 分别为 $overline(O A)$⁠、$overline(O B)$⁠、$overline(C B)$⁠、$overline(C A)$ 的中点，求证四边形 $E F G H$ 是矩形（图4.20）．

]
#proof[
由于 $E$⁠、$F$⁠、$G$⁠、$H$ 分别是 $overline(O A)$⁠、$overline(O B)$⁠、$overline(C B)$⁠、$overline(C A)$ 的中点，所以 $ accent(E F, ⃗) = 1 / 2 accent(A B, ⃗)\,#h(2em) accent(H G, ⃗) = 1 / 2 accent(A B, ⃗)\
accent(E F, ⃗) = accent(H G, ⃗) quad arrow.r.double quad overline(E F) = overline(H G)\,quad E F pll H G $ #noindent;$therefore quad E F G H$ 是平行四边形．

因为 $accent(E F, ⃗) = 1 / 2 accent(A B, ⃗) = 1 / 2\(accent(O B, ⃗) - accent(O A, ⃗)\)\,quad accent(E H, ⃗) = 1 / 2 accent(O C, ⃗)$⁠，所以 $ accent(E F, ⃗) dot.op accent(E H, ⃗) & = 1 / 2\(accent(O B, ⃗) - accent(O A, ⃗)\)dot.op 1 / 2 accent(O C, ⃗)\
 & = 1 / 4\(accent(O B, ⃗) dot.op accent(O C, ⃗) - accent(O A, ⃗) dot.op accent(O C, ⃗)\)\
 & = 1 / 8 (\| accent(O B, ⃗) \|^2 + \| accent(O C, ⃗) \|^2 - \| accent(B C, ⃗) \|^2 - \| accent(O A, ⃗) \|^2 - \| accent(O C, ⃗) \|^2 + \| accent(C A, ⃗) \|^2) $ #noindent;但已知 $\|accent(O A, ⃗)\|=\|accent(O B, ⃗)\|\,#h(2em)\|accent(C A, ⃗)\|=\|accent(C B, ⃗)\|$⁠，所以 $ accent(E F, ⃗) dot.op accent(E H, ⃗) = 0 quad arrow.r.double quad E F tack.t E H $ #noindent;故得四边形 $E F G H$ 是矩形．

]
由以上各例可看到在空间证明两线垂直，内积运算仍是非常有效的工具．

#example[
一定长线段 $overline(A B)$ 的两个端点，沿互相垂直的两条异面直线 $ell$⁠、$m$ 运动，求它的中点的轨迹．

]
#solution[
如图4.21设 $overline(M N)$ 为 $ell$⁠、$m$ 的公垂线，$overline(A B) = a$, $overline(M N) = b$, $O$⁠、$P$ 分别为 $overline(M N)$⁠、$overline(A B)$ 的中点，则 $ accent(O P, ⃗) = 1 / 2 (accent(O A, ⃗) + accent(O B, ⃗)) = 1 / 2 (accent(O M, ⃗) + accent(M A, ⃗) + accent(O N, ⃗) + accent(N B, ⃗)) $ #noindent;因为 $accent(O M, ⃗) = - accent(O N, ⃗)$⁠，所以 $ accent(O P, ⃗) & = 1 / 2\(accent(M A, ⃗) + accent(N B, ⃗)\)\
accent(O P, ⃗) dot.op accent(M N, ⃗) & = 1 / 2 (accent(M A, ⃗) + accent(N B, ⃗)) dot.op accent(M N, ⃗) = 0 $ #noindent;因此：$P$ 点一定在 $overline(M N)$ 的垂直平分面上．

因为 $accent(O P, ⃗) dot.op accent(O P, ⃗) = 1 / 4\(\|accent(M A, ⃗)\|^2 +\|accent(N B, ⃗)\|^2\)$⁠，连 $A N$, 易证，$triangle.stroked.t A M N$ 与 $triangle.stroked.t A B N$ 都是直角三角形．所以 $ accent(O P, ⃗) dot.op accent(O P, ⃗) & = 1 / 4 (overline(A N)^2 - overline(M N)^2 + overline(A B)^2 - overline(A N)^2)\
 & = 1 / 4 (overline(A B)^2 - overline(M N)^2) = 1 / 4\(a^2 - b^2\) $ #noindent;即：$\|accent(O P, ⃗)\|^2 = 1 / 4\(a^2 - b^2\)$

由上式可知 $P$ 点在以 $O$ 为圆心，以 $1 / 2 sqrt(a^2 - b^2)$ 为半径的圆上，因此 $P$ 点的轨迹是 $overline(M N)$ 的垂直平分面上的一个圆：$dot.o (O \, 1 / 2 sqrt(a^2 - b^2))$

]
#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("4-26");], caption: []), figure([#fig("4-27");], caption: []))));

#example[
如图4.22, 已知四面体 $A - B C D$, $A B tack.t C D$, $A C tack.t B D$.

求证：$A D tack.t B C$.

]
#proof[
$because quad A B tack.t C D\,quad A C tack.t B D$

所以 $ accent(A B, ⃗) dot.op accent(C D, ⃗) = 0\,#h(2em) accent(A C, ⃗) dot.op accent(B D, ⃗) = 0\
(accent(A D, ⃗) + accent(D B, ⃗)) dot.op accent(C D, ⃗) = 0\,#h(2em) (accent(A D, ⃗) + accent(D C, ⃗)) dot.op accent(B D, ⃗) = 0\
accent(A D, ⃗) dot.op accent(C D, ⃗) = accent(B D, ⃗) dot.op accent(C D, ⃗)\,#h(2em) accent(A D, ⃗) dot.op accent(B D, ⃗) = accent(B D, ⃗) dot.op accent(C D, ⃗) $ $ accent(A D, ⃗) dot.op accent(C D, ⃗) & = accent(A D, ⃗) dot.op accent(B D, ⃗)\
accent(A D, ⃗) dot.op (accent(B D, ⃗) + accent(D C, ⃗)) & = 0\
accent(A D, ⃗) dot.op accent(B C, ⃗) & = 0 $ #noindent;即：$accent(A D, ⃗) tack.t accent(B C, ⃗)\,#h(2em) A D tack.t B C$

]
#example[
如图4.23在直二面角的棱上有两点 $A$⁠、$B$, $A C$ 和 $B D$ 各在这个二面角的一个面内，并且都垂直于棱 $A B$, 设 $overline(A B) = 8$, $overline(A C) = 6$, $overline(B D) = 24$, 求 $overline(C D)$ 的长．

]
#solution[
如图4.23, $ \|accent(C D, ⃗)\|^2 = accent(C D, ⃗) dot.op accent(C D, ⃗) = (accent(C A, ⃗) + accent(A B, ⃗) + accent(B D, ⃗)) dot.op (accent(C A, ⃗) + accent(A B, ⃗) + accent(B D, ⃗)) $ #noindent;因为 $accent(A C, ⃗)$⁠、$accent(A B, ⃗)$⁠、$accent(B D, ⃗)$ 互相正交，所以 $ \|accent(C D, ⃗)\|^2 =\|accent(C A, ⃗)\|^2 +\|accent(A B, ⃗)\|^2 +\|accent(B D, ⃗)\|^2 = 6^2 + 8^2 + 24^2 = 676 $ #noindent;$therefore quad overline(C D) = sqrt(676) = 26$

]
#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("4-28");], caption: []), figure([#fig("4-29");], caption: []))));

#example[
已知正方体 $A B C D - E F G H$ (图4.24) 其棱长为1. 求：$A C$ 与 $D G$ 的公垂线的垂足 $P$⁠、$Q$ 的位置和 $A C$ 与 $D G$ 间的距离．

]
#solution[
设 $accent(A B, ⃗) = arrow(e)_1$, $accent(A D, ⃗) = arrow(e)_2$, $accent(A E, ⃗) = arrow(e)_3$, $accent(A P, ⃗) = x accent(A C, ⃗)$, $accent(D Q, ⃗) = y accent(D G, ⃗)$

由于 $accent(A C, ⃗) = arrow(e)_1 + arrow(e)_2\,quad accent(D G, ⃗) = arrow(e)_1 + arrow(e)_3$⁠，所以 $ accent(A P, ⃗) = x arrow(e)_1 + x arrow(e)_2\,#h(2em) accent(D Q, ⃗) = y arrow(e)_1 + y arrow(e)_3 $ $ accent(A Q, ⃗) & = accent(A D, ⃗) + accent(D Q, ⃗) = y arrow(e)_1 + arrow(e)_2 + y arrow(e)_3\
accent(P Q, ⃗) & = accent(A Q, ⃗) - accent(A P, ⃗) =\(y - x\)arrow(e)_1 +\(1 - x\)arrow(e)_2 + y arrow(e)_3 $ #noindent;又因 $accent(P Q, ⃗) perp accent(A C, ⃗)$, $accent(P Q, ⃗) perp accent(D G, ⃗)$, 则 $ display(cases([\( y - x \) arrow(e)_1 + \( 1 - x \) arrow(e)_2 + y arrow(e)_3] dot.op (arrow(e)_1 + arrow(e)_2) = 0, [\( y - x \) arrow(e)_1 + \( 1 - x \) arrow(e)_2 + y arrow(e)_3] dot.op (arrow(e)_1 + arrow(e)_3) = 0)) $ #noindent;由此可得方程组 $ display(cases(2 x - y = 1, x - 2 y = 0)) $ #noindent;解之得：$x = 2 / 3\,#h(2em) y = 1 / 3$

所以：$accent(A P, ⃗) = 2 / 3 accent(A C, ⃗)\,quad accent(D Q, ⃗) = 1 / 3 accent(D G, ⃗)$ $ accent(P Q, ⃗) = 1 / 3 (- arrow(e)_1 + arrow(e)_2 + arrow(e)_3) $ #noindent;于是 $P$⁠、$Q$ 两点的位置可定，且 $A C$ 与 $D G$ 的距离就是 $\|accent(P Q, ⃗)\|$. $ \|accent(P Q, ⃗)\|= sqrt(accent(P Q, ⃗) dot.op accent(P Q, ⃗)) = sqrt(1 / 9\(1 + 1 + 1\)) = sqrt(3) / 3 $

]
#heading(level: 2, numbering: none, supplement: [toc-sub])[习题4.2]

试用向量运算证明以下各题：

+ 试证：点 $P$ 在 $overline(A B)$ 的垂直平分线上的充要条件是 $\|accent(P A, ⃗)\|=\|accent(P B, ⃗)\|$

+ 试证：对角线互相垂直的平行四边形是菱形．

+ 试证：平行四边形的对角线等长的充要条件是这个平行四边形是矩形．

+ 求证：直角三角形斜边上的中线等于斜边的一半．

+ 等腰三角形顶角的平分线是底边上的高．

+ 求证：四边形 $A B C D$ 中，对角线互相垂直的充要条件是 $ overline(A B)^2 + overline(C D)^2 = overline(A D)^2 + overline(B C)^2 $

+ 求证：平行四边形 $A B C D$ 中的锐角 $A$ 为 $45 degree$ 的充要条件是$ overline(A C)^2 dot.op overline(B D)^2 = overline(A B)^4 + overline(A D)^4 $

+ 已知 $ell$ 是一条直线，$A$⁠、$B$ 为 $ell$ 外同侧的两个定点，$P in ell$,

  求证：$\|accent(A P, ⃗)\|+\|accent(P B, ⃗)\|$ 取极小值的充要条件是 $ frac(arrow(a) dot.op arrow(n), \|arrow(a)\|) = frac(arrow(b) dot.op arrow(n), \|arrow(b)\|) $#noindent;（其中 $arrow(n) tack.t ell$ 且方向指向 $A$⁠、$B$ 所在的那一侧）并解释其几何意义．

+ 求证：长方体的对角线的平方等于长、宽、高的平方和．

+ 已知 $overline(A B)$ 在平面 $pi$ 内，$overline(A C) tack.t pi$, $overline(B D) tack.t overline(A B)$ 且与 $pi$ 所成角为 $30 degree$, 若 $overline(A B) = a$, $overline(A C) = overline(B D) = b$, 求 $C$ 和 $D$ 间的距离．

+ 线段 $overline(D E)$ 同时垂直于矩形 $A B C D$ 的两边 $overline(D A)$⁠、$overline(D C)$. 设 $overline(A B) = 12$⁠cm, $overline(B C) = 9$⁠cm, $overline(D E) = 8$⁠cm, 求 $B$⁠、$E$ 两点间的距离．

+ 一点 $P$ 在两个相交平面上的投影各为 $A$⁠、$B$, 求证连线 $A B$ 垂直于两个平面的交线．

== 圆
一个以 $O$ 点为圆心，$R$ 为半径的圆是平面 $pi$ 上所有满足 $accent(O X, ⃗) dot.op accent(O X, ⃗) = R^2$ 的点 $X$ 的集合．即 $ dot.o\(O\,R\)= lr(\{ X : X in pi \, thick accent(O X, ⃗) dot.op accent(O X, ⃗) = R^2 \}) $

在平面几何中，关于圆有下列几个基本定理：

+ 圆周角定理；

+ 弦切角定理；

+ 圆幂定理．

当时，这三个定理是按1、2、3的顺序来证明的，现在我们用向量的运算律，直接证明圆幂定理，并由此再推出弦切角定理与圆周角定理．

#blk[定理1][
如图4.25设平面上有 $dot.o\(O\,R\)$ 及圆外一点 $P$, 过 $P$ 点引圆割线交圆于 $B$⁠、$C$ 点，则有 $accent(P B, ⃗) dot.op accent(P C, ⃗) =\|O P\|^2 - R^2$.

]
#figure([#fig("4-30");

  ],
  caption: [
  ]
)

#proof[
在 $accent(P C, ⃗)$ 上取单位向量 $arrow(u)$, 对 $P C$ 上任意一点 $X$, 都存在实数 $x$, 使 $accent(P X, ⃗) = x arrow(u)$⁠．这里 $x$ 就是 $accent(P X, ⃗)$ 的长度．由向量加法，有 $ accent(O X, ⃗) = accent(O P, ⃗) + accent(P X, ⃗) = accent(O P, ⃗) + x arrow(u) $ #noindent;因此：$ accent(O X, ⃗) dot.op accent(O X, ⃗) & = (accent(O P, ⃗) + x arrow(u))^2\
 & = accent(O P, ⃗) dot.op accent(O P, ⃗) + 2 (accent(O P, ⃗) dot.op arrow(u)) x + x^2\(arrow(u) dot.op arrow(u)\)\
 & = x^2 + 2 (accent(O P, ⃗) dot.op arrow(u)) x +\|accent(O P, ⃗)\|^2 $

当点 $X$ 与点 $B$ 或 $C$ 重合时，$accent(O X, ⃗) dot.op accent(O X, ⃗) = R^2$⁠，这时有 $ x^2 + 2 (accent(O P, ⃗) dot.op arrow(u)) x + (\| accent(O P, ⃗) \|^2 - R^2) = 0 $ #noindent;这里 $x$ 是 $accent(P B, ⃗)$ 或 $accent(P C, ⃗)$ 的长度，若令 $\|accent(P B, ⃗)\|= beta$, $\|accent(P C, ⃗)\|= gamma$⁠，则由韦达定理得：$ beta gamma =\|accent(O P, ⃗)\|^2 - R^2 $

$because quad accent(P B, ⃗)$ 与 $accent(P C, ⃗)$ 同向

$therefore quad accent(P B, ⃗) dot.op accent(P C, ⃗) = beta gamma$, 因此：$ accent(P B, ⃗) dot.op accent(P C, ⃗) =\|accent(O P, ⃗)\|^2 - R^2 =\|P T_1\|^2 $

]
#analyze[
+ 上面的证明对 $P$ 为圆内一点也是适用的，不过这时设 $accent(P X, ⃗) = x arrow(u)$, 实数 $x$ 可正可负，$\|x\|=\|accent(P X, ⃗)\|$.

  由于 $accent(P B, ⃗)$ 与 $accent(P C, ⃗)$ 反向，则 $accent(P B, ⃗) dot.op accent(P C, ⃗)$ 和 $\|O P\|^2 - R^2$ 都是负值．

+ 在证明过程中，我们还得到 $ beta + gamma = - 2 accent(O P, ⃗) dot.op arrow(u) $ #noindent;我们令 $B$⁠、$C$⁠、$P'$⁠、$P$ 成调和点列，即此四点共线且满足 $ accent(B P, ⃗) / accent(P C, ⃗) dot.op accent(C P', ⃗) / accent(P' B, ⃗) = - 1 $ #noindent;令 $accent(P P', ⃗) = y arrow(u)$⁠，则有 $ - 1 = accent(B P, ⃗) / accent(P C, ⃗) dot.op accent(C P', ⃗) / accent(P' B, ⃗) = frac(- beta, gamma) times frac(y - gamma, beta - y) $ #noindent;得：$y = frac(2 beta gamma, beta + gamma)$⁠，因此：$ accent(P P', ⃗) dot.op accent(P O, ⃗) & = (frac(2 beta gamma, beta + gamma) arrow(u)) dot.op (- accent(O P, ⃗))\
   & = frac(beta gamma, beta + gamma) (- 2 accent(O P, ⃗) dot.op arrow(u))\
   & = beta gamma =\|accent(O P, ⃗)\|^2 - R^2 $ #noindent;这就是说 $accent(P P', ⃗)$ 在 $accent(P O, ⃗)$ 上的投影的长度等于常数 $frac(\|accent(O P, ⃗)\|^2 - R^2, \|accent(O P, ⃗)\|)$

  由于 $ frac(\|accent(O P, ⃗)\|^2 - R^2, \|accent(O P, ⃗)\|) = frac(\|accent(P T_1, ⃗)\|^2, \|accent(O P, ⃗)\|) =\|accent(P T_1, ⃗)\|cos angle T_1 P O =\|P Q\| $ #noindent;其中 $Q$ 是线段 $T_1 T_2$ 的中点（图4.26）

  $therefore quad$ 过 $P$ 点的任一割线与 $T_1 T_2$ 的交点 $P'$ 与 $B$⁠、$C$⁠、$P$ 成调和点列．

]
下面，我们由圆幂定理推导弦切角定理与圆周角定理．

#align(center, block(breakable: false, above: 1.1em, below: 1.1em, grid(columns: (48%, 48%,), column-gutter: 1em, align: center + bottom, figure([#fig("4-31");], caption: []), figure([#fig("4-32");], caption: []))));

如图4.27由圆幂定理，在 $triangle.stroked.t P B T$ 与 $triangle.stroked.t P C T$ 中，由于 $frac(\|accent(P T, ⃗)\|, \|accent(P B, ⃗)\|) = frac(\|accent(P C, ⃗)\|, \|accent(P T, ⃗)\|)$⁠，$angle P$ 是公共角，

$therefore quad triangle.stroked.t P T B tilde.rev triangle.stroked.t P C T$

得 $angle P T B = angle B C T$⁠，这就是弦切角定理．

同理 $angle P' T B = angle B C' T$⁠，则 $angle B C T = angle B C' T$, 这就是圆周角定理．

#heading(level: 2, numbering: none, supplement: [toc-sub])[习题4.3]

+ 试证圆的相交弦定理．

+ 从圆 $O$ 外一点 $P$ 引圆的切线 $P T_1$ 和 $P T_2$, $T_1$⁠、$T_2$ 为切点．再引圆 $O$ 的割线 $P Q R$, 交圆 $O$ 于 $Q$⁠、$R$, 交 $T_1 T_2$ 于 $T$, 设 $\|P Q\|= a$, $\|P R\|= b$, $\|P T\|= t$, 求证：$ 1 / a + 1 / b = 2 / t $

#heading(level: 2, numbering: none, outlined: true)[复习题四]

+ 在空间中，设有线性关系 $lambda_1 arrow(a)_1 + lambda_2 arrow(a)_2 + lambda_3 arrow(a)_3 + lambda_4 arrow(a)_4 + lambda_5 arrow(a)_5 = arrow(0)$⁠，且 $lambda_1 lambda_2 lambda_3 lambda_4 lambda_5 eq.not 0$, 若

  + $arrow(a)_1\,arrow(a)_2\,arrow(a)_3\,arrow(a)_4\,arrow(a)_5$ 都是非零向量；

  + 有且只有 $arrow(a)_4 = arrow(a)_5 = arrow(0)$⁠；

  + 有且只有三个零向量．

  #noindent;问在各种情况下，它们的几何意义分别是什么？

+ 试作一给定有向线段 $accent(A B, ⃗)$ 的定比分点，其比值分别为：$1 / 2\,2\,- 2\,- 1 / 2$⁠．

+ 设 $P$⁠、$A$⁠、$B$ 是共线的相异三点，$accent(A P, ⃗) = rho accent(P B, ⃗)$, 试用 $rho$ 去表达下列五个实数 $alpha$⁠、$beta$⁠、$gamma$⁠、$delta$⁠、$epsilon$. $ accent(B P, ⃗) & = alpha accent(P A, ⃗)\,#h(2em) accent(P A, ⃗) = beta accent(A B, ⃗)\,#h(2em) accent(B A, ⃗) = gamma accent(A P, ⃗)\
  accent(P B, ⃗) & = delta accent(B A, ⃗)\,#h(2em) accent(A B, ⃗) = epsilon accent(B P, ⃗) $

+ 如图，$ell_1\,ell_2$ 交于 $O$ 点，$arrow(u)\,arrow(v)$ 是 $ell_1\,ell_2$ 方向的单位向量，设 $ accent(O A_1, ⃗) = alpha_1 arrow(u)\,#h(2em) accent(O B_1, ⃗) = beta_1 arrow(u)\,#h(2em) accent(O C_1, ⃗) = gamma_1 arrow(u)\
  accent(O A_2, ⃗) = alpha_2 arrow(v)\,#h(2em) accent(O B_2, ⃗) = beta_2 arrow(v)\,#h(2em) accent(O C_2, ⃗) = gamma_2 arrow(v) $ #noindent;试用 $arrow(u)\,arrow(v)$ 的线性组合表示 $accent(O P, ⃗)$⁠、$accent(O Q, ⃗)$⁠、$accent(O R, ⃗)$. 并证明 $P$⁠、$Q$⁠、$R$ 三点共线．

  #fig-center[
  #fig("4-33");

  #subcap[
  第4题

  ]
  ]

+ 在 $triangle.stroked.t A B C$ 的外面作正方形 $A B E F$ 和 $A C G H$, 又设 $D$ 为 $accent(B C, ⃗)$ 的中点，求证：

  + $accent(A F, ⃗) dot.op accent(A H, ⃗) = - accent(A B, ⃗) dot.op accent(A C, ⃗)$

  + $B H tack.t C F$ 且 $overline(B H) = overline(C F)$

  + $A D tack.t F H$ 且 $overline(A D) = 1 / 2 overline(F H)$

+ 已知四边形 $A B C D$ 内接于圆且 $A C tack.t B D$ 于 $E$, $F$ 是边 $accent(B C, ⃗)$ 的中点，求证：$E F tack.t A D$

+ 已知 $O$⁠、$M$⁠、$H$ 三点分别是 $triangle.stroked.t A B C$ 的外心，重心和垂心，求证：$O$⁠、$M$⁠、$H$ 三点共线且 $overline(O M) = 1 / 2 overline(M H)$.

+ 求证：连结四面体的一个顶点和这个顶点所对的面的重心的四条线段交于同一点，且这交点分线段的比例都是3:1.

+ 求证平行六面体的四条对角线相交于一点．

+ 在四面体 $A B C D$ 中，如果 $A B tack.t D C$ 且 $A D tack.t B C$, 试证明：$ \|accent(A B, ⃗)\|^2 +\|accent(D C, ⃗)\|^2 =\|accent(A D, ⃗)\|^2 +\|accent(B C, ⃗)\|^2 =\|accent(A C, ⃗)\|^2 +\|accent(B D, ⃗)\|^2 $

+ 已知四面体 $A B C D$, $G_1\,G_2$ 分别是 $triangle.stroked.t A B C$ 和 $triangle.stroked.t A B D$ 的重心，$M$ 是棱 $C D$ 的中点，试确定过 $G_1$⁠、$G_2$⁠、$M$ 三点的平面与棱 $A B$ 的交点的位置．

+ #block(sticky: true)[已知正方体 $A B C D - A_1 B_1 C_1 D_1$ 的棱长为1, $E$⁠、$F$ 分别是棱 $overline(B C)$, $overline(C C_1)$ 的中点，求下列各异面直线的距离．]

  #cols(3)[
  + $A A_1$ 与 $B D_1$

  + $A C$ 与 $B D_1$

  + $A C$ 与 $E F$

  ]
