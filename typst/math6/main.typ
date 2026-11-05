// 第六册（Typst 版）。在仓库根目录编译：typst compile --root . typst/math6/main.typ
#import "../common/template.typ": *

#show: book.with(
  title: "中学数学实验教材",
  volume: "第六册",
  author: "中学数学实验教材编写组编",
  date: "1986年5月",
  paper: sys.inputs.at("paper", default: "iso-b5"),
)

#include "preface.typ"
#toc()

#set page(numbering: "1")
#counter(page).update(1)

// 合订本：上、下册各以分册标题开始（同 LaTeX 版的 \volume），下册的章从第一章编起
#volume-part[第六册（上）]
#include "ch1.typ"
#include "ch2.typ"
#include "ch3.typ"
// 上册末尾的附录不编号（LaTeX 版的 \appendixchapters）
#include "app.typ"
#volume-part[第六册（下）]
#include "ch4.typ"
#include "ch5.typ"
#include "ch6.typ"
#include "ch7.typ"