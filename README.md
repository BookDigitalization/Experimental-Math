# 中学数学实验教材（第一至六册）重排本

本项目用 LaTeX 重排了 1980 年代初出版发行的《中学数学实验教材》第一至六册。

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

每册目录下：

- `main.tex`：合订本主文件；
- `main - nA.tex` / `main - nB.tex`：拆分后的上、下册主文件；
- `1.tex`、`2.tex`……：各章正文；`preface.tex`：前言；
- `fig/`：从扫描版中截取的点阵图（矢量图均直接以 TikZ / tkz-euclide / CircuiTikZ 绘制在正文中）。

第六册的上、下册在原书中各自从第一章编号，合订本沿用这一编号方式，详见 [`math6/README.md`](math6/README.md)。

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

### 手动编译

在对应目录下执行两遍（第二遍生成目录）：

```sh
cd math3
xelatex main.tex
xelatex main.tex
```

### macOS 字体

macOS 下若 ctex 默认字体不可用，可在主文件导言区加入（参见上游 [math6-2#10](https://github.com/jamesfang8499/math6-2/issues/10)）：

```latex
\usepackage{xeCJK}
\setCJKmainfont[BoldFont=STHeiti,ItalicFont=STKaiti]{STSong}
\setCJKsansfont[BoldFont=STHeiti]{STXihei}
\setCJKmonofont{STFangsong}
```

## 关于 PDF

仓库只保存源码，不提交编译生成的 PDF（已在 `.gitignore` 中排除）。成品 PDF 请在 [Releases](https://github.com/BookDigitalization/Experimental-Math/releases) 中下载，或按上文自行编译。

## 来源与修订

本仓库原为第一册的重排项目，现整合了原作者 [jamesfang8499](https://github.com/jamesfang8499) 已停止维护的各册仓库：
[math2](https://github.com/jamesfang8499/math2)、
[math3](https://github.com/jamesfang8499/math3)、
[math4](https://github.com/jamesfang8499/math4)、
[math5](https://github.com/jamesfang8499/math5)、
[math6-1](https://github.com/jamesfang8499/math6-1)、
[math6-2](https://github.com/jamesfang8499/math6-2)。

整合时相对上游所做的修订：

- **math2**：修正若干排版与数学错误（如 `\alpha=\beta` → `\alpha\Rightarrow\beta`、不等号方向等），`\tkzDrawLine[bisector]` 改为 `\tkzDefLine[bisector]`，并补充 `fig/` 图片；
- **math3、math5**：上游仓库缺少 `fig/` 目录导致无法编译，已从原作者发布的 PDF 中按原尺寸提取补全（math3 共 1 张，math5 共 35 张）；
- **math6**：将上游 math6-1、math6-2 合并为与其他各册相同的结构（合订本 + 上、下册拆分版；下册 `1~4.tex` 改名为 `4~7.tex`）。合订本统一导言区时不再加载 `physics` 宏包（它会把上册中表示除号的 `\div` 改为散度），下册用到的 `\dd`、`\arccot`、`\arcsec` 单独定义；
- **math6（下册）**：修正 `\node at (0,0);` 缺少标签文本的错误（上游 [#9](https://github.com/jamesfang8499/math6-2/issues/9)），以及 `tkz-base` / `tkz-euclide` 加载顺序颠倒的问题（上游 [#11](https://github.com/jamesfang8499/math6-2/issues/11)）。
