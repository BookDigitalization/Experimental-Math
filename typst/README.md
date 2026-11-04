# Typst 版（试验中）

与 LaTeX 版并存的 [Typst](https://typst.app/) 重排本。LaTeX 版仍是主版本，继续维护；Typst 版目前只有第一册。

## 目录结构

| 路径 | 内容 |
|---|---|
| `common/template.typ` | 六册共用的模板，对应 LaTeX 版的 `common/preamble.tex`：版式、字体、章节编号、例题与练习框等 |
| `math1/main.typ` | 第一册主文件：封面信息和各章列表 |
| `math1/preface.typ`、`math1/ch1.typ`…… | 前言和各章正文 |
| `math1/figs.typ`、`math1/figs/ch1.typ`…… | 插图。正文用 `#fig("章-序号")` 引用，图用 [CeTZ](https://typst.app/universe/package/cetz) 画在各章的 `figures` 字典中；没画好的图显示为红色占位框 |
| `tools/tex2typ.py`、`tools/filter.lua` | 把 LaTeX 源码初步转换为 Typst 的脚本（需要 Python 3 和 pandoc） |

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

脚本不会覆盖已有的 `.typ` 文件（加 `--force` 才覆盖），因为人工校对过的内容以 `.typ` 为准。
所以 LaTeX 版以后的修订需要手动同步到 Typst 版。

转换方式：先用正则把 pandoc 处理不好的结构（TikZ 图、选做题 `\staritem`、`numcases`、`\tag`、`tabular`、
行内的 `cases` 等）换成占位符，再用 pandoc 加 `filter.lua` 转换其余部分，最后把占位符换回 Typst 代码。
竖式除法（`\intlongdivision`、`\polylongdiv`）暂未转换，在 PDF 中以红色源码显示。

插图编号是该图在 LaTeX 源码本章中是第几个 `tikzpicture`。在 LaTeX 源码中插入或删除图会使后面的编号错位，
转换新的章节前请留意。
