# Typst 版（试验中）

与 LaTeX 版并存的 [Typst](https://typst.app/) 重排本。LaTeX 版仍是主版本，继续维护；Typst 版六册都已完成。

## 目录结构

| 路径 | 内容 |
|---|---|
| `common/template.typ` | 六册共用的模板，对应 LaTeX 版的 `common/preamble.tex`：版式、字体、章节编号、例题与练习框等 |
| `common/fig.typ` | 画插图用的 CeTZ 辅助函数（仿 TikZ 的节点、箭头、阴影、大括号等） |
| `common/longdiv.typ` | 竖式除法 `intlongdiv`、`polylongdiv`，对应 longdivision、polynom 宏包，由函数自己计算每一步 |
| `math1/main.typ` | 第一册主文件：封面信息和各章列表 |
| `math1/preface.typ`、`math1/ch1.typ`…… | 前言和各章正文 |
| `math1/figs.typ`、`math1/figs/ch1.typ`…… | 插图。正文用 `#fig("章-序号")` 引用，图用 [CeTZ](https://typst.app/universe/package/cetz) 画在各章的 `figures` 字典中；没画好的图显示为红色占位框 |
| `math2/…`…`math6/…` | 第二至六册，结构同上；插图分自动生成的 `figs/gen-ch*.typ` 和手工的 `figs/ch*.typ`。第二、五册另有 `defs.typ`（本册专用的符号 // 和 ▱）；第六册是上、下两册的合订本（`volume-part` 分册，上册末尾的附录 `app.typ` 不编号） |
| `tools/tex2typ.py`、`tools/filter.lua` | 把 LaTeX 源码初步转换为 Typst 的脚本（需要 Python 3 和 pandoc） |
| `tools/tikz2cetz.py` | 把 TikZ / tkz-euclide 插图自动转换为 CeTZ 代码（第二册起使用；第六册的 3 幅 circuitikz 电路图手工画在 `math6/figs/ch3.typ`） |
| `tools/tikzref.py`、`tools/tikzcmp.py`、`tools/figcmp.typ` | 把 LaTeX 版插图逐幅编译成 PNG，再与 CeTZ 版逐幅做像素比对 |
| `tools/figpreview.typ` | 只排某一章插图的预览页，便于和 LaTeX 版逐幅对照 |

点阵图（`fig/` 中的 PNG）直接引用 LaTeX 版目录中的文件，不复制。

## 编译

需要 Typst 0.15 或更高版本。首次编译会自动下载 CeTZ 宏包。在仓库根目录执行：

```sh
just typst 1                                # 生成 typst/math1/main.pdf
PAPER=a4paper just typst 1                  # A4 纸，生成 main-a4paper.pdf
CTEX_FONTSET=ubuntu just typst 1            # Linux 下用 Noto CJK 字体
```

不用 just 时：

```sh
typst compile --root . typst/math1/main.typ
typst compile --root . --input paper=a4 --input fontset=ubuntu typst/math1/main.typ
```

`--root .` 不能省略，否则找不到 `common/` 和 LaTeX 版目录中的图片。

## 从 LaTeX 转换

各章 `.typ` 是用 `tools/tex2typ.py` 从 LaTeX 源码转换后再人工校对的：

```sh
python typst/tools/tex2typ.py 1          # 转换第 1 册的前言和全部章节
python typst/tools/tex2typ.py 1 3        # 只转换第 3 章（前言记作 0）
```

脚本不会覆盖已有的 `.typ` 文件（加 `--force` 才覆盖）。第一册的 `.typ` 是转换后人工校对过的，以 `.typ` 为准，
LaTeX 版以后的修订要手动同步；第二至六册的正文和插图都是自动生成的，不手工修改，问题一律在 `tools/` 中的转换脚本
或 `common/` 中的模板里修，再用 `--force` 重新生成（`python typst/tools/tex2typ.py 6 --force`）。
各册专用的 LaTeX 命令登记在 `tex2typ.py` 的 `VOLUME_MACROS`、`VOLUME_SLOTS`、`VOLUME_TEX` 中。

转换方式：先用正则把 pandoc 处理不好的结构（TikZ 图、选做题 `\staritem`、`numcases`、`\tag`、`tabular`、
行内的 `cases` 等）换成占位符，再用 pandoc 加 `filter.lua` 转换其余部分，最后把占位符换回 Typst 代码。
竖式除法（`\intlongdivision`、`\polylongdiv`）转换为 `common/longdiv.typ` 中的函数调用。

第一册的 76 幅 TikZ 插图已全部用 CeTZ 手工重画。

第二至六册的插图（共一千余幅，大多用 tkz-euclide 画）由 `tools/tikz2cetz.py` 自动转换：交点、中点、切点、旋转等几何计算由脚本按
tkz-euclide 5.14c 的算法完成，生成的 CeTZ 代码里只有点的坐标（仍用原来的点名）和画图命令，线宽、颜色、标注位置也按
tkz-euclide 的默认值。转换不了或转换得不好的图写在 `figs/ch*.typ` 中，覆盖自动生成的同名图。

```sh
python typst/tools/tikz2cetz.py 2                 # 重新生成第 2 册的 figs/gen-ch*.typ
python typst/tools/tikz2cetz.py 2 3-05            # 只打印某幅图的转换结果
python typst/tools/tikzref.py 2 参考图目录         # 用 xelatex 把 LaTeX 版的插图逐幅编译成 PNG
python typst/tools/tikzcmp.py 2 参考图目录 --out 叠合图目录   # 逐幅比对，输出吻合度和叠合图
```

`tikzcmp.py` 给出每幅图的笔迹吻合度 F（两边笔迹在 0.4mm 内对得上的比例）；叠合图中 LaTeX 版为红色、Typst 版为蓝色、重合处为黑色。插图编号是该图在 LaTeX 源码本章中是第几个 `tikzpicture`。在 LaTeX 源码中插入或删除图会使后面的编号错位，
转换新的章节前请留意。
