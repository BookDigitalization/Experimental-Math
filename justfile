# 中学数学实验教材（第一至六册）编译脚本
#
#   just              列出所有任务
#   just all          编译全部 6 册合订本
#   just book 3       编译第 3 册合订本
#   just split 3      编译第 3 册拆分的上、下册
#   just typst 1      编译第 1 册的 Typst 版（试验中）
#   just clean        清理编译中间文件（保留 PDF）
#   just distclean    清理全部编译产物（含 PDF）
#
# 需要 XeLaTeX（TeX Live 或 MiKTeX）。每个主文件编译两遍，以生成目录和交叉引用。
# 生成的 PDF 位于各册目录内，已被 .gitignore 排除，不提交到仓库。

set windows-shell := ["pwsh.exe", "-NoLogo", "-NoProfile", "-Command"]

engine := "xelatex"
flags := "-interaction=nonstopmode -halt-on-error -file-line-error"

# 可选：通过环境变量 CTEX_FONTSET 指定 ctex 字体集（如 ubuntu、fandol、windows、mac），
# 不修改源码。留空则由 ctex 按操作系统自动选择。CI 中使用 ubuntu。
fontset := env("CTEX_FONTSET", "")

# 可选：通过环境变量 PAPER 指定纸张（geometry 的纸张名，如 a4paper、letterpaper），
# 不修改源码。留空则用主文件中的 B5。指定后输出文件名带纸张后缀，如 main-a4paper.pdf。
# 注意：书中不少 TikZ 图是固定尺寸，比 B5 小的纸（如 a5paper）会有大量插图超出版心。
paper := env("PAPER", "")

# 编译前注入的导言区选项，以及输出文件名后缀
_inject := (if fontset == "" { "" } else { '\PassOptionsToClass{fontset=' + fontset + '}{ctexbook}' }) + (if paper == "" { "" } else { '\PassOptionsToPackage{' + paper + '}{geometry}' })
_suffix := if paper == "" { "" } else { "-" + paper }
_just := "just --justfile " + quote(justfile())

# 列出所有任务
default:
    @{{ _just }} --list --unsorted

# 编译全部 6 册合订本
all: (book "1") (book "2") (book "3") (book "4") (book "5") (book "6")

# 编译第 n 册合订本（n = 1~6）
book n: (_check n) (_tex ("math" + n) "main.tex")

# 编译第 n 册拆分的上、下册（n = 1~6）
split n: (_check n) (_tex ("math" + n) ("main - " + n + "A.tex")) (_tex ("math" + n) ("main - " + n + "B.tex"))

# 编译全部 6 册的拆分版
split-all: (split "1") (split "2") (split "3") (split "4") (split "5") (split "6")

[private]
_check n:
    @{{ if n =~ '^[1-6]$' { "" } else { error("册号应为 1~6，收到: " + n) } }}

# 编译第 n 册的 Typst 版（试验中，目前有第 1、2 册），输出 typst/math<n>/main.pdf。
# 同样认环境变量 CTEX_FONTSET=ubuntu 与 PAPER=a4paper
typst n: (_check n)
    typst compile --root {{ quote(justfile_directory()) }} --input fontset={{ if fontset == "" { "windows" } else { fontset } }} --input paper={{ if paper == "a4paper" { "a4" } else { "iso-b5" } }} {{ quote("typst/math" + n + "/main.typ") }} {{ quote("typst/math" + n + "/main" + _suffix + ".pdf") }}

# 清理编译中间文件（保留 PDF）
clean:
    git clean -fX -e "!*.pdf"

# 清理全部编译产物（含 PDF）
distclean:
    git clean -fX

# 在目录 dir 中编译主文件 file（两遍）。
# 指定了字体集或纸张时，先注入相应选项再 \input 主文件，并用 -jobname 设定输出文件名
[private]
_tex dir file:
    cd {{ quote(dir) }} && {{ engine }} {{ flags }} {{ if _inject == "" { quote(file) } else { "-jobname=" + quote(without_extension(file) + _suffix) + " " + quote(_inject + '\input{' + file + '}') } }} && {{ engine }} {{ flags }} {{ if _inject == "" { quote(file) } else { "-jobname=" + quote(without_extension(file) + _suffix) + " " + quote(_inject + '\input{' + file + '}') } }}
