// 第四册（Typst 版）。在仓库根目录编译：typst compile --root . typst/math4/main.typ
#import "../common/template.typ": *

#show: book.with(
  title: "中学数学实验教材",
  volume: "第四册",
  author: "中学数学实验教材编写组编",
  date: "1984年6月",
  paper: sys.inputs.at("paper", default: "iso-b5"),
)

#include "preface.typ"
#toc()

#set page(numbering: "1")
#counter(page).update(1)

#include "ch1.typ"
#include "ch2.typ"
#include "ch3.typ"
#include "ch4.typ"
#include "ch5.typ"
#include "ch6.typ"
#include "ch7.typ"
#include "ch8.typ"
#include "ch9.typ"
#include "ch10.typ"
