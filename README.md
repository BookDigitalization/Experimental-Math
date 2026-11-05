# 中学数学实验教材（第一至六册）重排本

本项目用 LaTeX 重排了 1980 年代初出版发行的《中学数学实验教材》第一至六册，并对照原书逐页校对过；另有一个与之并存的 Typst 版（见[下文](#typst-版)）。

这一套中学数学实验教材是教育部委托北京师范大学、中国科学院数学研究所、人民教育出版社、北京师范学院、北京景山学校等单位组成的领导小组组织“中学数学实验教材编写组”，根据美国加州大学伯克利分校数学系项武义教授的《关于中学实验数学教材的设想》编写的。书中部分内容从现在看来已经超纲或过时，请阅读时仔细甄别。

**注意：本项目的内容勿用于商业目的。**

## 目录结构

| 目录 | 册次 | 原书日期 | 主要内容 |
|---|---|---|---|
| [`math1/`](math1/) | 第一册 | 1981 年 6 月 | 有理数系、一次方程、一元二次方程、多项式、因式分解、分式与根式 |
| [`math2/`](math2/) | 第二册 | 1982 年 7 月 | 实验几何、集合与简易逻辑、直线形、圆、轨迹与作图、三角比 |
| [`math3/`](math3/) | 第三册 | 1983 年 6 月 | 指数与对数、坐标化、不等式、函数、二次函数、三角函数 |
| [`math4/`](math4/) | 第四册 | 1984 年 6 月 | 和差角公式、线性方程组、多项式、数列与极限、反三角函数、指数与对数函数 |
| [`math5/`](math5/) | 第五册 | 1984 年 6 月 | 立体几何、向量、解析几何、圆锥曲线、极坐标与参数方程 |
| [`math6/`](math6/) | 第六册 | 1986 年 5 月 | 复数、排列组合与二项式定理、概率论初步、统计学简介；极限与连续、微商、积分、微积分基本定理 |

[`common/preamble.tex`](common/preamble.tex) 是六册共用的导言区（宏包、例题与练习框、章节编号格式等），改动会影响全部 6 册。

每册目录下：

- `main.tex`：本册主文件。依次是本册专用的宏包与命令、封面信息和各章列表，直接编译得到合订本；
- `main - nA.tex` / `main - nB.tex`：上、下册入口，只有几行，先选定分册再读入 `main.tex`，所以和合订本共用同一份导言区和章节列表（拆分版不随 Release 发布，需要时自行编译）；
- `1.tex`、`2.tex`……：各章正文；`preface.tex`：前言；
- `fig/`：从扫描版中截取的点阵图（矢量图均直接以 TikZ / tkz-euclide / CircuiTikZ 绘制在正文中）。

第六册的上、下册在原书中各自从第一章编号，合订本沿用这一编号方式，详见 [`math6/README.md`](math6/README.md)。

其他目录：

- [`typst/`](typst/)：Typst 版，包括六册的正文、插图、共用模板和 LaTeX → Typst 转换工具；
- [`review/`](review/)：各册的审阅报告和存疑条目核对清单（见[来源与修订](#来源与修订)）。

## 编译

### 环境要求

- XeLaTeX（[TeX Live](https://tug.org/texlive/) 或 [MiKTeX](https://miktex.org/)），文档类为 `ctexbook`；
- 用到的宏包包括 `tikz`、`tkz-euclide`、`tkz-base`、`circuitikz`、`pstricks`、`tcolorbox`、`mdframed`、`ntheorem`、`polynom`、`polynomial`、`longdivision`、`blkarray`、`yhmath` 等。MiKTeX 若未开启自动安装，请先在包管理器中安装缺失的宏包；
- [just](https://github.com/casey/just)（可选，用于下面的快捷命令）。

### 使用 just

```sh
just              # 列出所有任务
just all          # 编译全部 6 册合订本
just book 3       # 编译第 3 册合订本
just split 3      # 编译第 3 册拆分的上、下册
just split-all    # 编译全部 6 册的拆分版
just clean        # 清理编译中间文件（保留 PDF）
just distclean    # 清理全部编译产物（含 PDF）
```

默认纸张为 B5。可用环境变量 `PAPER` 改为其他纸张（取值为 `geometry` 宏包的纸张名），不需要修改源码。输出文件名会带上纸张后缀：

```sh
PAPER=a4paper just book 3              # 生成 math3/main-a4paper.pdf
PAPER=letterpaper just split 3         # 上、下册也适用
```

```powershell
$env:PAPER = "a4paper"; just book 3    # Windows PowerShell
```

书中不少 TikZ 插图是固定尺寸。B5 和 A4 都检查过；比 B5 小的纸（如 `a5paper`）会有大量插图超出版心，不建议使用。

### Typst 版

[`typst/`](typst/) 中是与 LaTeX 版并存的 Typst 重排本，六册都已完成。需要 [Typst](https://typst.app/) 0.15 或更高版本（插图用 CeTZ 绘制，编译时自动下载），用 `just typst 1` … `just typst 6` 编译。

LaTeX 版是底本：第一册的 Typst 正文是转换后人工校对的，第二至六册的正文和插图都由 `typst/tools/` 中的脚本从 LaTeX 源码生成。两版的内容一致，版式相近，但分页不逐页相同。详见 [`typst/README.md`](typst/README.md)。

### 手动编译

在对应目录下执行两遍（第二遍生成目录）：

```sh
cd math3
xelatex main.tex
xelatex main.tex
```

### macOS 字体

macOS 下若 ctex 默认字体不可用，可在 `common/preamble.tex` 末尾加入（参见上游 [math6-2#10](https://github.com/jamesfang8499/math6-2/issues/10)）：

```latex
\usepackage{xeCJK}
\setCJKmainfont[BoldFont=STHeiti,ItalicFont=STKaiti]{STSong}
\setCJKsansfont[BoldFont=STHeiti]{STXihei}
\setCJKmonofont{STFangsong}
```

## 关于 PDF

仓库只保存源码，不提交编译生成的 PDF（已在 `.gitignore` 中排除）。成品 PDF 请在 [Releases](https://github.com/BookDigitalization/Experimental-Math/releases) 中下载，或按上文自行编译。

发布新的 Release 时，[`release-pdf`](.github/workflows/release-pdf.yml) 工作流会自动编译全部 6 册合订本，并把以下文件上传到该 Release（`n` 为册号 1~6）：

| 文件 | 内容 |
|---|---|
| `Experimental-Math-n.pdf` | 第 n 册，B5 纸 |
| `Experimental-Math-n-A4.pdf` | 第 n 册，A4 纸 |

Release 中不提供上、下册拆分版。需要时请用源码自行编译，例如 `just split 3` 会生成 `math3/main - 3A.pdf` 和 `math3/main - 3B.pdf`。

CI 在 Linux 上编译，中文字体使用 ctex 的 `ubuntu` 字体集（Noto CJK），与在 Windows 本机编译（宋体等）的字形略有不同。本地也可以用环境变量 `CTEX_FONTSET` 指定字体集，例如 `CTEX_FONTSET=fandol just book 3`。

也可以在 Actions 页面手动运行该工作流：不填标签时只编译并保存为构件，填写已有 Release 的标签时会把 PDF 上传（覆盖同名文件）。

## 来源与修订

本仓库整合了原作者 [jamesfang8499](https://github.com/jamesfang8499) 的各册仓库：
[math1](https://github.com/jamesfang8499/math1)、
[math2](https://github.com/jamesfang8499/math2)、
[math3](https://github.com/jamesfang8499/math3)、
[math4](https://github.com/jamesfang8499/math4)、
[math5](https://github.com/jamesfang8499/math5)、
[math6-1](https://github.com/jamesfang8499/math6-1)、
[math6-2](https://github.com/jamesfang8499/math6-2)。

这些上游仓库中有 issue 多年无人处理（最早的提于 2023 年初，至今没有回复），因此判定原作者已停止维护，改为在本仓库继续修订。

整合时相对上游所做的修订：

- **math2**：修正若干排版与数学错误（如 `\alpha=\beta` → `\alpha\Rightarrow\beta`、不等号方向等），`\tkzDrawLine[bisector]` 改为 `\tkzDefLine[bisector]`，并补充 `fig/` 图片；
- **math3、math5**：上游仓库缺少 `fig/` 目录导致无法编译，已从原作者发布的 PDF 中按原尺寸提取补全（math3 共 1 张，math5 共 35 张）；
- **math6**：将上游 math6-1、math6-2 合并为与其他各册相同的结构（合订本 + 上、下册拆分版；下册 `1~4.tex` 改名为 `4~7.tex`）。合订本统一导言区时不再加载 `physics` 宏包（它会把上册中表示除号的 `\div` 改为散度），下册用到的 `\dd`、`\arccot`、`\arcsec` 单独定义；
- **math6（下册）**：修正 `\node at (0,0);` 缺少标签文本的错误（上游 [#9](https://github.com/jamesfang8499/math6-2/issues/9)），以及 `tkz-base` / `tkz-euclide` 加载顺序颠倒的问题（上游 [#11](https://github.com/jamesfang8499/math6-2/issues/11)）。

整合之后又对全部六册做了两轮校对：

1. **审阅**：逐行精读正文，重算例题与推导，找出录入笔误、数学错误、编号与引用错误等，各册的报告是 [`review/math1.md`](review/math1.md) … [`review/math6.md`](review/math6.md)，共约 1700 条；
2. **对照原书校对**：对照原书扫描件逐页核对文字、公式和插图。审阅中存疑的条目逐条在原书中核实，结论记在 [`review/存疑条目核对清单.md`](review/存疑条目核对清单.md)。

校对的原则：

- 原书也可能有错，先做数学判断：重排本对、原书错时保留重排本并记录；明显的印刷错误直接改正；
- 统一用现代用字，如“象”→“像”、“那末”→“那么”、“其它”→“其他”（“图象”“象限”等词不改）；
- 原书带“\*”的选学节、小节标题也加“\*”，选做题、选学例题同样标出。
