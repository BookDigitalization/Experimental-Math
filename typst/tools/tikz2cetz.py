"""把 LaTeX 源码中的 TikZ / tkz-euclide 插图转换为 CeTZ 代码。

    python typst/tools/tikz2cetz.py 2            # 转换第 2 册全部插图，写入 typst/math2/figs/gen-ch<章>.typ
    python typst/tools/tikz2cetz.py 2 3-05 3-06  # 只打印这几幅图的转换结果

几何计算（交点、中点、切点、旋转……）由本脚本完成，生成的 CeTZ 代码只含点的坐标和画图命令；
点仍以 tkz 中的名字定义（let A = (1, 2)），画线时引用名字，便于对照和手工修改。
图的编号与 tex2typ.py 相同。每幅图转换失败时生成占位框，并在注释中写明原因。
"""
from __future__ import annotations

import math
import re
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).parent))
from tikzref import pictures  # noqa: E402

PT = 2.54 / 72.27  # 1pt 合多少 cm
EM = 10.5 * PT     # 正文字号 10.5pt


class TikzError(Exception):
    pass


# ---------------------------------------------------------------- 文本扫描

def read_group(s: str, i: int, open_: str, close: str) -> tuple[str, int]:
    """s[i] 是 open_，返回到配对的 close 之间的内容和 close 之后的位置。花括号内的括号不计"""
    assert s[i] == open_
    depth, j = 0, i
    brace = 0
    while j < len(s):
        c = s[j]
        if c == "\\":
            j += 2
            continue
        if c == "{":
            brace += 1
        elif c == "}":
            brace -= 1
        if brace == 0 or open_ == "{":
            if c == open_:
                depth += 1
            elif c == close:
                depth -= 1
                if depth == 0:
                    return s[i + 1 : j], j + 1
        j += 1
    raise TikzError("括号不配对：" + s[i : i + 40])


def skip_ws(s: str, i: int) -> int:
    while i < len(s) and s[i].isspace():
        i += 1
    return i


def split_top(s: str, sep: str = ",") -> list[str]:
    """按顶层的 sep 切分（花括号、圆括号、方括号内的不算）"""
    out, depth, cur = [], 0, []
    i = 0
    while i < len(s):
        c = s[i]
        if c == "\\" and i + 1 < len(s):
            cur.append(s[i : i + 2])
            i += 2
            continue
        if c in "{([":
            depth += 1
        elif c in "})]":
            depth -= 1
        if depth == 0 and s.startswith(sep, i):
            out.append("".join(cur))
            cur = []
            i += len(sep)
            continue
        cur.append(c)
        i += 1
    out.append("".join(cur))
    return out


def parse_options(s: str) -> list[tuple[str, str | None]]:
    out = []
    for part in split_top(s):
        part = part.strip()
        if not part:
            continue
        if "=" in part:
            k, v = part.split("=", 1)
            v = v.strip()
            if v.startswith("{") and v.endswith("}"):
                v = v[1:-1]
            out.append((k.strip(), v))
        else:
            out.append((part, None))
    return out


# ---------------------------------------------------------------- 数值

FUNCS = {
    "sin": lambda x: math.sin(math.radians(x)),
    "cos": lambda x: math.cos(math.radians(x)),
    "tan": lambda x: math.tan(math.radians(x)),
    "asin": lambda x: math.degrees(math.asin(x)),
    "acos": lambda x: math.degrees(math.acos(x)),
    "atan": lambda x: math.degrees(math.atan(x)),
    "atan2": lambda y, x: math.degrees(math.atan2(y, x)),
    "sqrt": math.sqrt, "abs": abs, "exp": math.exp, "ln": math.log,
    "deg": math.degrees, "rad": math.radians, "veclen": math.hypot,
    "min": min, "max": max, "pi": math.pi, "e": math.e,
    "round": round, "floor": math.floor, "ceil": math.ceil, "int": int,
}

UNITS = {"cm": 1.0, "mm": 0.1, "pt": PT, "in": 2.54, "em": EM, "ex": EM * 0.43, "bp": 2.54 / 72}


def num(expr: str, unit: float = 1.0) -> float:
    """pgfmath 表达式。带单位的数换算为 cm；不带单位的乘 unit"""
    e = expr.strip().replace("{", "(").replace("}", ")")
    if not e:
        raise TikzError("空表达式")
    e = e.replace("^", "**")
    e = re.sub(r"\bpi\b", "pi", e)
    has_unit = False

    def unit_repl(m: re.Match) -> str:
        nonlocal has_unit
        has_unit = True
        return "(%s*%r)" % (m.group(1), UNITS[m.group(2)])
    e = re.sub(r"(\d*\.?\d+)\s*(cm|mm|pt|in|em|ex|bp)\b", unit_repl, e)
    e = re.sub(r"(?<![\w.])\.(\d)", r"0.\1", e)
    if re.search(r"[^\d\s.+\-*/()%,a-z_]", e):
        raise TikzError("无法计算的表达式：" + expr)
    try:
        v = eval(e, {"__builtins__": {}}, FUNCS)
    except Exception as ex:  # noqa: BLE001
        raise TikzError("无法计算的表达式：%s（%s）" % (expr, ex)) from None
    return float(v) if has_unit else float(v) * unit


# ---------------------------------------------------------------- 几何

def add(p, q): return (p[0] + q[0], p[1] + q[1])
def sub(p, q): return (p[0] - q[0], p[1] - q[1])
def mul(p, k): return (p[0] * k, p[1] * k)
def norm(p): return math.hypot(p[0], p[1])
def unit(p):
    n = norm(p)
    if n < 1e-12:
        raise TikzError("零向量")
    return (p[0] / n, p[1] / n)
def rot(p, deg):
    a = math.radians(deg)
    c, s = math.cos(a), math.sin(a)
    return (p[0] * c - p[1] * s, p[0] * s + p[1] * c)
def angle_of(v): return math.degrees(math.atan2(v[1], v[0]))
def lerp(p, q, t): return (p[0] + (q[0] - p[0]) * t, p[1] + (q[1] - p[1]) * t)
def polar(a, r): return (r * math.cos(math.radians(a)), r * math.sin(math.radians(a)))


def inter_ll(a, b, c, d):
    r, s = sub(b, a), sub(d, c)
    den = r[0] * s[1] - r[1] * s[0]
    if abs(den) < 1e-12:
        raise TikzError("两直线平行，没有交点")
    t = ((c[0] - a[0]) * s[1] - (c[1] - a[1]) * s[0]) / den
    return add(a, mul(r, t))


def project(p, a, b):
    d = sub(b, a)
    t = ((p[0] - a[0]) * d[0] + (p[1] - a[1]) * d[1]) / (d[0] ** 2 + d[1] ** 2)
    return add(a, mul(d, t))


def inter_lc(a, b, o, r):
    """直线 AB 与圆 (O, r) 的交点，按 A→B 方向参数 t 从大到小排列（先排靠近 B 一侧的）"""
    d = sub(b, a)
    f = sub(a, o)
    A = d[0] ** 2 + d[1] ** 2
    B = 2 * (f[0] * d[0] + f[1] * d[1])
    C = f[0] ** 2 + f[1] ** 2 - r * r
    disc = B * B - 4 * A * C
    if disc < -1e-9:
        raise TikzError("直线与圆不相交")
    disc = math.sqrt(max(disc, 0))
    t1, t2 = (-B + disc) / (2 * A), (-B - disc) / (2 * A)
    return [add(a, mul(d, t1)), add(a, mul(d, t2))]


def inter_cc(o1, r1, o2, r2):
    """两圆的交点。第一个在 O1→O2 方向的左侧"""
    d = norm(sub(o2, o1))
    if d < 1e-12 or d > r1 + r2 + 1e-9 or d < abs(r1 - r2) - 1e-9:
        raise TikzError("两圆不相交")
    a = (r1 * r1 - r2 * r2 + d * d) / (2 * d)
    h = math.sqrt(max(r1 * r1 - a * a, 0))
    u = unit(sub(o2, o1))
    m = add(o1, mul(u, a))
    n = rot(u, 90)
    return [add(m, mul(n, h)), sub(m, mul(n, h))]


def triangle_center(kind, a, b, c):
    la, lb, lc = norm(sub(b, c)), norm(sub(c, a)), norm(sub(a, b))
    if kind == "centroid":
        return ((a[0] + b[0] + c[0]) / 3, (a[1] + b[1] + c[1]) / 3)
    if kind == "ex":  # tkz 的 [ex](A,B,C)：与第二个顶点 B 相对的旁心
        s = la - lb + lc
        return ((la * a[0] - lb * b[0] + lc * c[0]) / s, (la * a[1] - lb * b[1] + lc * c[1]) / s)
    if kind == "in":
        s = la + lb + lc
        return ((la * a[0] + lb * b[0] + lc * c[0]) / s, (la * a[1] + lb * b[1] + lc * c[1]) / s)
    if kind == "circum":
        return inter_ll(lerp(a, b, .5), add(lerp(a, b, .5), rot(sub(b, a), 90)),
                        lerp(b, c, .5), add(lerp(b, c, .5), rot(sub(c, b), 90)))
    if kind == "ortho":
        return inter_ll(a, add(a, rot(sub(c, b), 90)), b, add(b, rot(sub(a, c), 90)))
    raise TikzError("不支持的三角形中心 " + kind)


class Transform:
    """x' = a x + c y + e，y' = b x + d y + f（同 PGF）"""
    def __init__(self, a=1.0, b=0.0, c=0.0, d=1.0, e=0.0, f=0.0):
        self.m = (a, b, c, d, e, f)

    def apply(self, p):
        a, b, c, d, e, f = self.m
        return (a * p[0] + c * p[1] + e, b * p[0] + d * p[1] + f)

    def vec(self, p):
        a, b, c, d, _, _ = self.m
        return (a * p[0] + c * p[1], b * p[0] + d * p[1])

    def then(self, other: "Transform") -> "Transform":
        """先做 other（局部的），再做 self"""
        a, b, c, d, e, f = other.m
        p = self.apply((e, f))
        x = self.vec((a, b))
        y = self.vec((c, d))
        return Transform(x[0], x[1], y[0], y[1], p[0], p[1])

    @property
    def scale(self):
        a, b, c, d, _, _ = self.m
        return math.sqrt(abs(a * d - b * c))


# ---------------------------------------------------------------- 样式

WIDTHS = {"ultra thin": 0.1, "very thin": 0.2, "thin": 0.4, "semithick": 0.6, "thick": 0.8,
          "very thick": 1.2, "ultra thick": 1.6}
BASE_COLORS = {
    "black": (0, 0, 0), "white": (1, 1, 1), "gray": (.5, .5, .5), "red": (1, 0, 0), "blue": (0, 0, 1),
    "green": (0, 1, 0), "yellow": (1, 1, 0), "cyan": (0, 1, 1), "magenta": (1, 0, 1),
    "darkgray": (.25, .25, .25), "lightgray": (.75, .75, .75), "brown": (.75, .5, .25),
    "orange": (1, .5, 0), "purple": (.75, 0, .25), "violet": (.5, 0, .5),
}


def parse_color(s: str):
    """xcolor 的 red!30、black!50!white 等"""
    parts = [p.strip() for p in s.split("!")]
    if parts[0] not in BASE_COLORS:
        return None
    col = BASE_COLORS[parts[0]]
    i = 1
    while i < len(parts):
        pct = float(parts[i]) / 100
        other = BASE_COLORS.get(parts[i + 1], None) if i + 1 < len(parts) else (1, 1, 1)
        if other is None:
            return None
        col = tuple(pct * x + (1 - pct) * y for x, y in zip(col, other))
        i += 2
    return col


def typst_color(c) -> str:
    if isinstance(c, str):   # 已是 Typst 写法（如渐变）
        return c
    if c == (0, 0, 0):
        return "black"
    if c == (1, 1, 1):
        return "white"
    if c[0] == c[1] == c[2]:
        return "luma(%d%%)" % round(c[0] * 100)
    return 'rgb("#%02x%02x%02x")' % tuple(round(x * 255) for x in c)


class Style:
    def __init__(self):
        self.width = 0.4          # pt
        self.color = (0, 0, 0)
        self.draw_color = None    # draw=… 单独指定的画线颜色
        self.fill = None
        self.pattern = None
        self.dash = None          # 线型（pt 的列表）或 "dotted" 等
        self.arrows = ("", "")
        self.arrow_tip = "latex"
        self.cap = None
        self.join = None
        self.opacity = None
        self.node = {}            # every node 的样式
        self.font = None

    def copy(self) -> "Style":
        s = Style()
        s.__dict__.update({k: (dict(v) if isinstance(v, dict) else v) for k, v in self.__dict__.items()})
        return s


DASHES = {
    "dashed": [3, 3], "densely dashed": [3, 2], "loosely dashed": [3, 6],
    "dotted": ["dot", 2], "densely dotted": ["dot", 1], "loosely dotted": ["dot", 4],
    "dashdotted": [3, 2, "dot", 2], "solid": None,
}
PATTERNS = {"north east lines": "hatch-ne", "north west lines": "hatch-nw", "crosshatch": "hatch-cross",
            "bricks": "hatch-bricks",
            "horizontal lines": "hatch-h", "vertical lines": "hatch-v", "dots": "hatch-dots",
            "crosshatch dots": "hatch-dots"}


# ---------------------------------------------------------------- 转换一幅图

RESERVED = set("""line circle arc content rect grid mark group scope anchor bezier hobby catmull merge-path
intersections translate rotate scale set-style set-origin move-to node dot arrow arrows bars brace axis
q qq ts ths large llarge canvas cetz polar h v text box rgb luma calc none auto true false black white
red blue gray green image place hatch-ne hatch-nw math sym arc-through circle-through on-layer""".split())


class Picture:
    def __init__(self, fid: str, labels: "LabelBatch"):
        self.fid = fid
        self.labels = labels
        self.points: dict[str, tuple[float, float]] = {}
        self.idents: dict[str, str] = {}      # tkz 点名 -> Typst 变量名
        self.out: list[str] = []
        self.tf = Transform()
        self.style = Style()
        self.stack: list[tuple[Transform, Style]] = []
        self.length = 1.0                     # 顶层 scale -> canvas 的 length
        self.result: list[tuple[float, float]] = []   # tkzPointResult 等
        self.notes: list[str] = []
        self.lookahead: dict[str, tuple[float, float]] = {}
        self.clip_rect = None   # 当前 scope 中 \clip 的轴对齐矩形 (x0, y0, x1, y1)，只用于裁剪直线段
        self.label_points: dict[str, tuple[float, float]] = {}
        self.text_nodes: dict[str, tuple[float, float]] = {}   # 有文字、有名字的节点

    # ---- 点 ----
    def ident(self, name: str) -> str:
        base = re.sub(r"[^A-Za-z0-9]", "", name.replace("'", "p"))
        if not base or not base[0].isalpha() or base in RESERVED or len(base) == 1 and base.islower():
            base = "P" + base
        ident = base
        k = 2
        while ident in self.idents.values() and self.idents.get(name) != ident:
            ident = "%s%d" % (base, k)
            k += 1
        return ident

    def define(self, name: str, p):
        name = name.strip().strip("{}").strip()
        self.points[name] = p
        ident = self.idents.get(name) or self.ident(name)
        self.idents[name] = ident
        self.out.append("let %s = %s" % (ident, self.xy(p, use_names=False)))

    def get(self, name: str):
        name = name.strip().strip("{}").strip()
        if name in self.points:
            return self.points[name]
        if name in self.lookahead:
            # 用在定义之前（LaTeX 版中 TikZ 沿用了前面某幅图的同名坐标，这里按本图后面的定义）
            self.notes.append("点 %s 在定义前使用" % name)
            return self.lookahead[name]
        if re.match(r"^[-\d.(]", name) or ":" in name:
            return self.coord(name)
        if name in self.label_points:
            # 没有定义、但图中有节点文字 $C$ 的，用那个节点的位置
            self.notes.append("点 %s 未定义，用标注 $%s$ 的位置" % (name, name))
            return self.label_points[name]
        raise TikzError("未定义的点：" + name)

    def xy(self, p, use_names=True) -> str:
        if use_names:
            for name in reversed(list(self.points)):
                q = self.points[name]
                if abs(q[0] - p[0]) < 1e-9 and abs(q[1] - p[1]) < 1e-9:
                    return self.idents[name]
        return "(%s, %s)" % (fmt(p[0]), fmt(p[1]))

    # ---- 坐标 ----
    def coord(self, s: str):
        """圆括号内的坐标（不含圆括号），返回画布坐标"""
        s = s.strip()
        if s.startswith("$") and s.endswith("$"):
            return self.calc(s[1:-1])
        for op in ("|-", "-|"):
            if op in s and not re.match(r"^[-\d.\s]", s):
                a, b = s.split(op, 1)
                p, q = self.coord(a), self.coord(b)
                return (p[0], q[1]) if op == "|-" else (q[0], p[1])
        if s in self.points:
            return self.points[s]
        m = re.fullmatch(r"([A-Za-z][\w']*)\.(center|north|south|east|west|base|mid|north east|north west|south east|south west|\d+)", s)
        if m and m.group(1) in self.points:
            return self.points[m.group(1)]
        parts = split_top(s, ":")
        if len(parts) == 2:
            a = num(parts[0])
            if " and " in parts[1]:
                rx, ry = parts[1].split(" and ")
                return self.tf.apply((num(rx) * math.cos(math.radians(a)), num(ry) * math.sin(math.radians(a))))
            return self.tf.apply(polar(a, num(parts[1])))
        parts = split_top(s, ",")
        if len(parts) == 2:
            return self.tf.apply((num(parts[0]), num(parts[1])))
        raise TikzError("无法识别的坐标：(%s)" % s)

    def calc(self, s: str):
        """calc 库的 $…$ 表达式：(A)!t!(B)、(A)!t!角:(B)、(A)!(C)!(B)、(A)+(B)、k*(A)"""
        s = s.strip()
        terms = []
        i = 0
        sign = 1.0
        while i < len(s):
            i = skip_ws(s, i)
            if i >= len(s):
                break
            if s[i] in "+-" and (terms or s[i] == "-"):
                sign = 1.0 if s[i] == "+" else -1.0
                i += 1
                continue
            factor = 1.0
            m = re.match(r"([-\d.]+|\{[^}]*\})\s*\*\s*", s[i:])
            if m:
                factor = num(m.group(1))
                i += m.end()
            if s[i] != "(":
                raise TikzError("无法识别的 calc 表达式：" + s)
            inner, i = read_group(s, i, "(", ")")
            if terms and inner.strip() not in self.points and not inner.strip().startswith("$"):
                # 第二项起的数值坐标当作位移（只做线性变换，不再加 scope 的平移），同 TikZ
                p = self.tf.vec(self.coord_raw(inner))
            else:
                p = self.coord(inner)
            # 修饰：!t!(B)、!t!角:(B)、!(C)!(B)
            while True:
                j = skip_ws(s, i)
                if j < len(s) and s[j] == "!":
                    k = s.index("!", j + 1)
                    mod = s[j + 1 : k]
                    k = skip_ws(s, k + 1)
                    angle = 0.0
                    m2 = re.match(r"([-\d.]+)\s*:", s[k:])
                    if m2:
                        angle = float(m2.group(1))
                        k += m2.end()
                    inner2, k = read_group(s, k, "(", ")")
                    q = self.coord(inner2)
                    if mod.strip().startswith("("):
                        p = project(self.coord(mod.strip()[1:-1]), p, q)
                    else:
                        q = add(p, rot(sub(q, p), angle))
                        if re.search(r"[a-z]{2}\s*$", mod.strip()):   # 带单位：距离
                            p = add(p, mul(unit(sub(q, p)), num(mod)))
                        else:
                            p = lerp(p, q, num(mod))
                    i = k
                else:
                    break
            terms.append(mul(p, sign * factor))
            sign = 1.0
        if not terms:
            raise TikzError("空的 calc 表达式")
        r = (0.0, 0.0)
        for t in terms:
            r = add(r, t)
        return r

    # ---- 样式 ----
    def apply_options(self, opts: list[tuple[str, str | None]], style: Style, tf_target: str = "path"):
        """把选项作用到 style 上；变换选项作用到 self.tf 上（scope 或单条路径）"""
        for k, v in opts:
            if v is None:
                if k in WIDTHS:
                    style.width = WIDTHS[k]
                elif k in DASHES:
                    style.dash = DASHES[k]
                elif k == "help lines":   # tkz-base 把 help lines 改成了 teal!30
                    style.color = (.7, .85, .85)
                elif re.fullmatch(r"[<>|]*-[<>|]*|<|>|->>|<<-", k) or k in ("-stealth", "stealth-", "-latex", "latex-"):
                    left, _, right = k.partition("-")
                    style.arrows = (left, right)
                elif k == "draw":
                    style.draw_color = style.draw_color or style.color
                elif k == "fill":
                    style.fill = style.fill or style.color
                elif parse_color(k) is not None:
                    style.color = parse_color(k)
                elif k in ("rounded corners", "sharp corners", "line cap=round", "smooth", "transform shape"):
                    pass
                else:
                    self.notes.append("忽略选项 " + k)
                continue
            if k == "line width":
                style.width = num(v) / PT
            elif k in ("color", "text"):
                c = parse_color(v)
                if c is not None:
                    style.color = c
            elif k == "draw":
                style.draw_color = parse_color(v)
            elif k == "fill":
                style.fill = parse_color(v)
                if style.fill is None:
                    self.notes.append("忽略颜色 " + v)
            elif k == "pattern":
                style.pattern = PATTERNS.get(v.strip())
                if style.pattern is None:
                    self.notes.append("忽略阴影 " + v)
            elif k == "dash pattern":
                seq = re.findall(r"(on|off)\s*([\d.]+\s*\w*)", v)
                style.dash = [num(x) / PT for _, x in seq]
            elif k == ">":
                style.arrow_tip = v
            elif k in ("opacity", "fill opacity"):
                style.opacity = float(num(v))
            elif k == "line cap":
                style.cap = v
            elif k == "font":
                style.font = v
            elif k in ("xshift", "yshift"):
                d = num(v)
                self.tf = self.tf.then(Transform(e=d) if k == "xshift" else Transform(f=d))
            elif k == "shift":
                inner = v.strip()
                if inner.startswith("("):
                    inner = inner[1:-1]
                p = self.coord_raw(inner)
                self.tf = self.tf.then(Transform(e=p[0], f=p[1]))
            elif k == "scale":
                s = num(v)
                self.tf = self.tf.then(Transform(s, 0, 0, s))
            elif k == "xscale":
                self.tf = self.tf.then(Transform(num(v), 0, 0, 1))
            elif k == "yscale":
                self.tf = self.tf.then(Transform(1, 0, 0, num(v)))
            elif k == "rotate":
                a = math.radians(num(v))
                self.tf = self.tf.then(Transform(math.cos(a), math.sin(a), -math.sin(a), math.cos(a)))
            elif k == "rotate around":
                ang, _, ctr = v.partition(":")
                c = self.coord(ctr.strip()[1:-1])
                a = math.radians(num(ang))
                r = Transform(math.cos(a), math.sin(a), -math.sin(a), math.cos(a))
                self.tf = Transform(e=c[0], f=c[1]).then(r).then(Transform(e=-c[0], f=-c[1])).then(self.tf)
            elif k in ("x", "y"):
                inner = v.strip()
                if inner.startswith("("):
                    p = self.coord_raw(inner[1:-1])
                else:
                    p = (num(inner), 0) if k == "x" else (0, num(inner))
                a, b, c, d, e, f = self.tf.m
                if k == "x":
                    self.tf = self.tf.then(Transform(p[0], p[1], 0, 1)) if False else Transform(*self.tf.vec(p), c, d, e, f)
                else:
                    self.tf = Transform(a, b, *self.tf.vec(p), e, f)
            elif k in ("every node/.style", "nodes"):
                style.node.update(dict(parse_options(v)))
            elif k in ("baseline", "inner sep", "outer sep", "rounded corners", "ball color", "every node/.append style",
                       "decoration", "postaction", "mark", "domain", "samples", "smooth"):
                if k == "ball color":
                    col = parse_color(v) or (.5, .5, .5)
                    style.fill = "gradient.radial(white, %s, %s, center: (35%%, 30%%), radius: 75%%)" % (
                        typst_color(col), typst_color(tuple(x * 0.5 for x in col)))
                pass
            else:
                self.notes.append("忽略选项 %s=%s" % (k, v))

    def coord_raw(self, s: str):
        """不经过当前变换的坐标（用于 shift、x= 等选项）"""
        saved = self.tf
        self.tf = Transform()
        try:
            return self.coord(s)
        finally:
            self.tf = saved

    def stroke(self, st: Style, width: float | None = None) -> str:
        w = st.width if width is None else width
        col = st.draw_color or st.color
        parts = ["paint: %s" % typst_color(col), "thickness: %spt" % fmt(w)]
        if st.dash:
            arr = ", ".join('"dot"' if x == "dot" else "%spt" % fmt(x) for x in st.dash)
            parts.append("dash: (%s,)" % arr)
        if st.cap:
            parts.append('cap: "%s"' % st.cap)
        if st.join:
            parts.append('join: "%s"' % st.join)
        return "(%s)" % ", ".join(parts)

    def marks(self, st: Style) -> str | None:
        left, right = st.arrows
        if not left and not right:
            return None
        def tip(t):
            if not t:
                return None
            if t in ("|",):
                return '"|"'
            # |<->| 之类：端点先是竖杠，再是箭头（CeTZ 的记号数组从端点往里排）
            if "|" in t and t.strip("|"):
                return '("|", "stealth")'
            return '"stealth"'
        d = []
        if tip(left):
            d.append("start: %s" % tip(left))
        if tip(right):
            d.append("end: %s" % tip(right))
        if any(t not in ("|",) for t in (left, right) if t):
            d.append("fill: black")
        return "(%s)" % ", ".join(d)

    # ---- 主循环 ----
    def run(self, src: str) -> str:
        m = re.match(r"\\begin\{tikzpicture\}\s*(\[([^\]]*)\])?", src)
        body = src[m.end() : src.rindex(r"\end{tikzpicture}")]
        if m.group(2):
            opts = parse_options(m.group(2))
            # 整体的 scale 用 canvas 的 length 实现，其余照常
            rest = []
            for k, v in opts:
                if k == "scale":
                    self.length = num(v)
                else:
                    rest.append((k, v))
            self.apply_options(rest, self.style)
        body = expand_foreach(strip_comments(body))
        for m2 in re.finditer(r"\\tkzDefPoints\{([^}]*)\}", body):
            for item in split_top(m2.group(1)):
                xs = split_top(item.strip(), "/")
                if len(xs) == 3:
                    try:
                        self.lookahead.setdefault(xs[2].strip(), self.tf.apply((num(xs[0]), num(xs[1]))))
                    except TikzError:
                        pass
        for m2 in re.finditer(r"\\tkzDefPoint\(([^)]*)\)\{([^}]*)\}", body):
            try:
                self.lookahead.setdefault(m2.group(2).strip(), self.coord(m2.group(1)))
            except TikzError:
                pass
        self.exec(body)
        lines = ["  " + l for l in self.out]
        if self.length != 1:
            head = "canvas(length: %scm, {" % fmt(self.length)
        else:
            head = "canvas({"
        return head + "\n" + "\n".join(lines) + "\n})"

    def exec(self, body: str):
        i = 0
        n = len(body)
        while i < n:
            i = skip_ws(body, i)
            if i >= n:
                break
            if body[i] == ";":
                i += 1
                continue
            m = re.match(r"\\begin\{scope\}\s*(\[)?", body[i:])
            if m:
                i += m.end()
                self.stack.append((self.tf, self.style, self.clip_rect))
                self.style = self.style.copy()
                if m.group(1):
                    opts, i = read_group(body, i - 1, "[", "]")
                    self.apply_options(parse_options(opts), self.style)
                continue
            if body.startswith(r"\end{scope}", i):
                self.tf, self.style, self.clip_rect = self.stack.pop()
                i += len(r"\end{scope}")
                continue
            m = re.match(r"\\([A-Za-z]+)\*?", body[i:])
            if not m:
                raise TikzError("无法识别：" + body[i : i + 40])
            name = m.group(1)
            i += m.end()
            if name in ("draw", "fill", "filldraw", "path", "node", "coordinate", "shade", "shadedraw", "clip", "pattern"):
                j = find_semicolon(body, i)
                self.path(name, body[i:j])
                i = j + 1
                continue
            if name.startswith("tkz"):
                args, i = read_args(body, i)
                handler = getattr(self, "tkz_" + name[3:], None)
                if handler is None:
                    raise TikzError("不支持的命令 \\" + name)
                handler(args)
                continue
            if name in ("small", "footnotesize", "scriptsize", "large", "Large", "normalsize", "centering"):
                continue
            raise TikzError("不支持的命令 \\" + name)

    # ---- TikZ 路径 ----
    def path(self, cmd: str, s: str):
        st = self.style.copy()
        saved_tf = self.tf
        i = skip_ws(s, 0)
        if cmd in ("draw", "filldraw", "shadedraw"):
            st.draw_color = st.draw_color or None
        opts = []
        # \node[…] 的选项是节点选项（rotate 等只转文字），留给 PathBuilder 处理
        if i < len(s) and s[i] == "[" and cmd not in ("node", "coordinate"):
            o, i = read_group(s, i, "[", "]")
            opts = parse_options(o)
        self.apply_options(opts, st)
        draw = cmd in ("draw", "filldraw", "shadedraw") or any(k == "draw" for k, _ in opts)
        fill = cmd in ("fill", "filldraw", "shade", "shadedraw")
        if cmd in ("fill", "filldraw") and st.fill is None:
            st.fill = st.color
        if cmd in ("shade", "shadedraw") and st.fill is None:
            # TikZ 默认的 shading=axis：上灰下白
            st.fill = "gradient.linear(luma(50%), white, angle: 90deg)"
        if st.fill is not None or st.pattern is not None:
            fill = True
        if cmd == "node":
            s = "node" + s[i:]
            i = 0
        elif cmd == "coordinate":
            s = "coordinate" + s[i:]
            i = 0
        try:
            PathBuilder(self, st, draw, fill, cmd == "clip").build(s[i:])
        finally:
            self.tf = saved_tf

    # ---- 节点文字 ----
    def node(self, p, text: str, opts: list[tuple[str, str | None]], st: Style, angle: float | None = None,
             name: str | None = None):
        """在 p 处放节点；opts 为节点选项"""
        pos, dist = None, 0.0
        anchor = None
        fill = None
        draw = False
        shape = None
        rotate = 0.0
        font = st.font
        node_opts = list(st.node.items()) + opts
        for k, v in node_opts:
            base = k.split(" of")[0]
            if base in ("above", "below", "left", "right", "above left", "above right", "below left", "below right"):
                pos = base
                dist = num(v) / PT if v else 0.0
            elif k == "anchor":
                anchor = v
            elif k == "fill":
                fill = parse_color(v)
            elif k == "draw":
                draw = True
            elif k in ("circle", "rectangle"):
                shape = k
            elif k == "rotate":
                rotate += num(v)
            elif k == "sloped" and angle is not None:
                a = angle
                if a > 90 or a < -90:
                    a += 180
                rotate += a
            elif k == "font":
                font = v
            elif k in ("pos", "midway", "near start", "near end", "at start", "at end", "inner sep",
                       "outer sep", "scale", "text width", "align", "minimum size", "shape", "label"):
                pass
            elif parse_color(k) is not None:
                pass
        ml = re.fullmatch(r"\s*\$\s*([A-Za-z]'*)\s*\$\s*", text)
        if ml:
            self.label_points.setdefault(ml.group(1), p)
        body = self.labels.add(text, font)
        if body is None:
            return
        args = [self.xy(p), body]
        if anchor:
            m = {"north": "north", "south": "south", "east": "east", "west": "west", "center": "center",
                 "north east": "north-east", "north west": "north-west", "south east": "south-east",
                 "south west": "south-west", "base": "south", "mid": "center"}
            self.out.append("content(%s, %s, anchor: \"%s\", padding: inner-sep)" % (args[0], body, m.get(anchor, "center")))
            return
        extra = ""
        if pos:
            extra += ', pos: "%s"' % pos
        if dist:
            extra += ", dist: %spt" % fmt(dist)
        if fill is not None:
            extra += ", fill: %s" % typst_color(fill)
        if draw:
            extra += ', frame: "%s"' % ("circle" if shape == "circle" else "rect")
        if name and not rotate:
            # 有名字的节点：路径连到它时截到边框上（见 PathBuilder.emit_sub）
            extra += ', name: "%s"' % name
            self.text_nodes[name] = p
        if rotate:
            self.out.append("node(%s, std.rotate(%sdeg, reflow: true, %s)%s)" % (args[0], fmt(-rotate), body, extra))
        else:
            self.out.append("node(%s, %s%s)" % (args[0], body, extra))


def fmt(x: float) -> str:
    if abs(x) < 5e-5:
        return "0"
    s = "%.4f" % x
    s = s.rstrip("0").rstrip(".")
    return s


def find_semicolon(s: str, i: int) -> int:
    depth = 0
    in_math = False
    while i < len(s):
        c = s[i]
        if c == "\\":
            i += 2
            continue
        if c in "{":
            depth += 1
        elif c in "}":
            depth -= 1
        elif c == ";" and depth == 0:
            return i
        i += 1
    raise TikzError("路径缺少分号")


def read_args(s: str, i: int) -> tuple[list[tuple[str, str]], int]:
    """tkz 命令的参数：[…]、(…)、{…} 依次排列"""
    args = []
    while True:
        j = skip_ws(s, i)
        if j < len(s) and s[j] in "[({":
            close = {"[": "]", "(": ")", "{": "}"}[s[j]]
            content, i = read_group(s, j, s[j], close)
            args.append((s[j], content))
        else:
            return args, i


def strip_comments(s: str) -> str:
    return re.sub(r"(?<!\\)%.*", "", s)


def expand_foreach(s: str) -> str:
    """展开 \\foreach（可嵌套）"""
    while True:
        m = re.search(r"\\foreach\s*", s)
        if not m:
            return s
        i = m.end()
        vars_ = []
        mv = re.match(r"((?:\\[A-Za-z]+\s*/?\s*)+)", s[i:])
        if not mv:
            raise TikzError("无法识别的 \\foreach")
        vars_ = re.findall(r"\\[A-Za-z]+", mv.group(1))
        i += mv.end()
        i = skip_ws(s, i)
        count_var = None
        if s[i] == "[":
            o, i = read_group(s, i, "[", "]")
            mc = re.search(r"count\s*=\s*(\\[A-Za-z]+)", o)
            count_var = mc.group(1) if mc else None
            i = skip_ws(s, i)
        if not s.startswith("in", i):
            raise TikzError("无法识别的 \\foreach")
        i = skip_ws(s, i + 2)
        lst, i = read_group(s, i, "{", "}")
        i = skip_ws(s, i)
        if s[i] == "{":
            body, i = read_group(s, i, "{", "}")
        else:
            j = find_semicolon(s, i)
            body, i = s[i : j + 1], j + 1
        items = [x.strip() for x in split_top(lst)]
        # 1,...,5 和 0,30,...,330
        expanded = []
        for k, it in enumerate(items):
            if it == "..." and k >= 1 and k + 1 < len(items):
                a = float(items[k - 1])
                step = a - float(items[k - 2]) if k >= 2 else 1.0
                b = float(items[k + 1])
                x = a + step
                while (step > 0 and x < b - 1e-9) or (step < 0 and x > b + 1e-9):
                    expanded.append(fmt(x))
                    x += step
            else:
                expanded.append(it)
        out = []
        for n, it in enumerate(expanded, 1):
            vals = split_top(it, "/") if len(vars_) > 1 else [it]
            b = body
            for v, val in zip(vars_, vals):
                val = val.strip()
                if val.startswith("{") and val.endswith("}"):
                    val = val[1:-1]
                b = re.sub(re.escape(v) + r"(?![A-Za-z])", lambda _m, val=val: val, b)
            if count_var:
                b = re.sub(re.escape(count_var) + r"(?![A-Za-z])", str(n), b)
            out.append(b + "\n")
        s = s[: m.start()] + "".join(out) + s[i:]


class PathBuilder:
    """解析一条 TikZ 路径并生成 CeTZ 命令"""

    def __init__(self, pic: Picture, st: Style, draw: bool, fill: bool, clip: bool):
        self.pic, self.st, self.draw, self.fill, self.clip = pic, st, draw, fill, clip
        self.pieces: list[tuple] = []   # 当前子路径的各段
        self.subpaths: list[tuple[list, bool]] = []
        self.cur = None
        self.start = None
        self.nodes_later = []           # 路径画完后再放的节点：(点, 文字, 选项, 切线角度)
        self.rel_base = None            # 相对坐标 +(…)、++(…) 的基准
        self.node_refs = {}             # 路径中引用的节点：坐标 -> 节点名

    def build(self, s: str):
        pic = self.pic
        i = 0
        n = len(s)
        op = None          # 上一个连接符：'--'、'-|'、'|-'、'to'、'controls'
        op_nodes = []      # 连接符之后、目标坐标之前的节点
        to_opts = []
        controls = []
        while i < n:
            i = skip_ws(s, i)
            if i >= n:
                break
            c = s[i]
            if s.startswith("--", i) and not s.startswith("--cycle", i) or s.startswith("-|", i) or s.startswith("|-", i):
                op = s[i : i + 2]
                i += 2
                continue
            if s.startswith("cycle", i):
                self.segment(op or "--", self.start, op_nodes, to_opts, controls)
                op, op_nodes, controls = None, [], []
                self.close_sub(True)
                i += 5
                continue
            if s.startswith("--cycle", i):
                i += 2
                op = "--"
                continue
            if s.startswith("..", i):
                m = re.match(r"\.\.\s*controls\s*", s[i:])
                if m:
                    i += m.end()
                    op = "controls"
                    controls = []
                    while True:
                        i = skip_ws(s, i)
                        cpt, i = self.read_point(s, i, relative_base=self.cur)
                        controls.append(cpt)
                        i = skip_ws(s, i)
                        if s.startswith("and", i):
                            i += 3
                            continue
                        break
                    i = skip_ws(s, i)
                    if s.startswith("..", i):
                        i += 2
                    continue
                raise TikzError("无法识别的路径：" + s[i : i + 30])
            if s.startswith("to", i) and not s[i + 2 : i + 3].isalpha():
                op = "to"
                i += 2
                i = skip_ws(s, i)
                to_opts = []
                if i < n and s[i] == "[":
                    o, i = read_group(s, i, "[", "]")
                    to_opts = parse_options(o)
                continue
            if c == "[":
                o, i = read_group(s, i, "[", "]")
                pic.apply_options(parse_options(o), self.st)
                continue
            if c == "{" or c == "}":
                i += 1
                continue
            if c == "(" or s.startswith("+(", i) or s.startswith("++(", i):
                p, i = self.read_point(s, i, relative_base=self.cur)
                if op is None:
                    if self.cur is not None and self.pieces:
                        self.close_sub(False)
                    self.cur = p
                    self.start = p
                else:
                    self.segment(op, p, op_nodes, to_opts, controls)
                    op, op_nodes, controls, to_opts = None, [], [], []
                continue
            if s.startswith("node", i) or s.startswith("coordinate", i):
                is_coord = s.startswith("coordinate", i)
                i += 10 if is_coord else 4
                nopts, name, at, text = [], None, None, ""
                while True:
                    i = skip_ws(s, i)
                    if i < n and s[i] == "[":
                        o, i = read_group(s, i, "[", "]")
                        nopts += parse_options(o)
                    elif i < n and s[i] == "(":
                        name, i = read_group(s, i, "(", ")")
                    elif s.startswith("at", i):
                        i = skip_ws(s, i + 2)
                        at, i = self.read_point(s, i, relative_base=self.cur)
                    else:
                        break
                if not is_coord:
                    i = skip_ws(s, i)
                    text, i = read_group(s, i, "{", "}")
                if at is None and op is not None:
                    op_nodes.append((nopts, text, name))
                    continue
                p = at if at is not None else self.cur
                if p is None:
                    p = pic.tf.apply((0, 0))
                if name:
                    pic.define(name, p)
                if not is_coord:
                    self.nodes_later.append((p, text, nopts, None, name))
                continue
            if s.startswith("circle", i) or s.startswith("ellipse", i):
                i += 6 if s.startswith("circle", i) else 7
                i = skip_ws(s, i)
                if s[i] == "[":
                    o, i = read_group(s, i, "[", "]")
                    d = dict(parse_options(o))
                    rx = ry = num(d.get("radius", d.get("x radius", "1")))
                    if "y radius" in d:
                        ry = num(d["y radius"])
                else:
                    r, i = read_group(s, i, "(", ")")
                    if " and " in r:
                        a, b = r.split(" and ")
                        rx, ry = num(a), num(b)
                    else:
                        rx = ry = num(r)
                self.close_sub(False)
                self.subpaths.append(([("ellipse", self.cur, rx, ry)], True))
                continue
            if s.startswith("arc", i):
                i = skip_ws(s, i + 3)
                if s[i] == "[":
                    o, i = read_group(s, i, "[", "]")
                    d = dict(parse_options(o))
                    a0 = num(d["start angle"])
                    if "end angle" in d:
                        a1 = num(d["end angle"])
                    else:
                        a1 = a0 + num(d["delta angle"])
                    rx = ry = num(d.get("radius", d.get("x radius", "1")))
                    if "y radius" in d:
                        ry = num(d["y radius"])
                else:
                    r, i = read_group(s, i, "(", ")")
                    parts = split_top(r, ":")
                    a0, a1 = num(parts[0]), num(parts[1])
                    if " and " in parts[2]:
                        a, b = parts[2].split(" and ")
                        rx, ry = num(a), num(b)
                    else:
                        rx = ry = num(parts[2])
                self.arc(a0, a1, rx, ry)
                continue
            if s.startswith("rectangle", i):
                i += 9
                i = skip_ws(s, i)
                p, i = self.read_point(s, i, relative_base=self.cur)
                a = self.cur
                self.close_sub(False)
                # 矩形的四个角（在当前变换下仍是平行四边形）
                inv = (a, (p[0], a[1]), p, (a[0], p[1]))
                if abs(pic.tf.m[1]) > 1e-9 or abs(pic.tf.m[2]) > 1e-9:
                    # 有旋转：用变换前的坐标求四角
                    raise TikzError("旋转后的 rectangle 暂不支持")
                self.subpaths.append(([("line", inv[0], inv[1]), ("line", inv[1], inv[2]), ("line", inv[2], inv[3])], True))
                self.cur = p
                self.start = p
                continue
            if s.startswith("grid", i):
                i += 4
                i = skip_ws(s, i)
                step = 1.0
                if s[i] == "[":
                    o, i = read_group(s, i, "[", "]")
                    step = num(dict(parse_options(o)).get("step", "1"))
                p, i = self.read_point(s, i, relative_base=self.cur)
                self.close_sub(False)
                a = self.cur if self.cur is not None else pic.tf.apply((0, 0))
                x0, x1 = sorted((a[0], p[0]))
                y0, y1 = sorted((a[1], p[1]))
                k = math.ceil(x0 / step - 1e-9)
                while k * step <= x1 + 1e-9:
                    self.subpaths.append(([("line", (k * step, y0), (k * step, y1))], False))
                    k += 1
                k = math.ceil(y0 / step - 1e-9)
                while k * step <= y1 + 1e-9:
                    self.subpaths.append(([("line", (x0, k * step), (x1, k * step))], False))
                    k += 1
                self.cur = p
                continue
            if s.startswith("sin", i) or s.startswith("cos", i):
                kind = s[i : i + 3]
                i += 3
                i = skip_ws(s, i)
                p, i = self.read_point(s, i, relative_base=self.cur)
                a = self.cur
                # TikZ 的 sin：从 a 到 p 是 1/4 个正弦周期
                c1x = 0.3183099 if kind == "sin" else 0.6816901
                c2x = 0.6366198 if kind == "sin" else 1.0
                if kind == "sin":
                    c1 = (a[0] + (p[0] - a[0]) * 0.3183099, a[1] + (p[1] - a[1]) * 0.5)
                    c2 = (a[0] + (p[0] - a[0]) * 0.6366198, p[1])
                else:
                    c1 = (a[0] + (p[0] - a[0]) * 0.3633802, a[1])
                    c2 = (a[0] + (p[0] - a[0]) * 0.6816901, a[1] + (p[1] - a[1]) * 0.5)
                self.pieces.append(("bezier", a, c1, c2, p))
                self.cur = p
                continue
            raise TikzError("无法识别的路径：" + s[i : i + 30])
        self.close_sub(False)
        self.emit()


    def read_point(self, s: str, i: int, relative_base=None):
        rel = 0
        if s.startswith("++", i):
            rel, i = 2, i + 2
        elif s.startswith("+", i):
            rel, i = 1, i + 1
        inner, i = read_group(s, i, "(", ")")
        if rel:
            d = self.pic.tf.vec(self.pic.coord_raw(inner))
            base = self.rel_base if self.rel_base is not None else self.pic.tf.apply((0, 0))
            p = add(base, d)
            if rel == 2:
                self.rel_base = p
            # +(…) 相对于前一点，但不改变后面相对坐标的基准
            return p, i
        p = self.pic.coord(inner)
        self.rel_base = p
        if inner.strip() in self.pic.text_nodes:
            self.node_refs[p] = inner.strip()
        return p, i

    def segment(self, op, p, op_nodes, to_opts, controls):
        a = self.cur
        if a is None:
            raise TikzError("路径没有起点")
        if op == "--":
            seg = ("line", a, p)
        elif op == "-|":
            seg = ("poly", a, (p[0], a[1]), p)
        elif op == "|-":
            seg = ("poly", a, (a[0], p[1]), p)
        elif op == "controls":
            c1 = controls[0]
            c2 = controls[1] if len(controls) > 1 else controls[0]
            seg = ("bezier", a, c1, c2, p)
        elif op == "to":
            d = dict(to_opts)
            if "out" in d or "in" in d or "bend left" in d or "bend right" in d:
                L = norm(sub(p, a))
                base = angle_of(sub(p, a))
                if "bend left" in d or "bend right" in d:
                    b = num(d.get("bend left") or d.get("bend right") or "30")
                    if "bend right" in d:
                        b = -b
                    out_a, in_a = base + b, base + 180 - b
                else:
                    out_a, in_a = num(d.get("out", "0")), num(d.get("in", "180"))
                    if "relative" in d:
                        out_a += base
                        in_a += base + 180
                k = 0.3915 * L  # TikZ 的 looseness=1
                c1 = add(a, polar(out_a, k))
                c2 = add(p, polar(in_a, k))
                seg = ("bezier", a, c1, c2, p)
            else:
                seg = ("line", a, p)
        else:
            raise TikzError("未知连接符 " + op)
        self.pieces.append(seg)
        for nopts, text, name in op_nodes:
            t = 0.5
            d = dict(nopts)
            if "pos" in d:
                t = num(d["pos"])
            elif "near start" in d:
                t = 0.25
            elif "near end" in d:
                t = 0.75
            elif "at start" in d:
                t = 0.0
            elif "at end" in d:
                t = 1.0
            q, ang = point_on(seg, t)
            if name:
                self.pic.define(name, q)
            if text is not None and not (name and text == ""):
                self.nodes_later.append((q, text, nopts, ang, name))
        self.cur = p

    def arc(self, a0, a1, rx, ry):
        pic = self.pic
        start = self.cur
        # 圆心：起点反推
        tf = pic.tf
        c = sub(start, tf.vec((rx * math.cos(math.radians(a0)), ry * math.sin(math.radians(a0)))))
        end = add(c, tf.vec((rx * math.cos(math.radians(a1)), ry * math.sin(math.radians(a1)))))
        self.pieces.append(("arc", start, c, a0, a1, rx, ry, tf))
        self.cur = end

    def close_sub(self, closed: bool):
        if self.pieces:
            self.subpaths.append((self.pieces, closed))
        self.pieces = []

    # ---- 生成 CeTZ ----
    def emit(self):
        pic, st = self.pic, self.st
        # 路径中间的选项（如 (1,0)[fill=black] circle(1.5pt)）也作用于整条路径
        if st.fill is not None or st.pattern is not None:
            self.fill = True
        args = []
        if self.fill:
            if st.pattern:
                args.append("fill: %s" % st.pattern)
            elif st.fill is not None:
                args.append("fill: %s" % typst_color(st.fill))
        if self.draw:
            args.append("stroke: %s" % pic.stroke(st))
        else:
            args.append("stroke: none")
        marks = pic.marks(st) if self.draw else None
        if self.clip:
            # 只支持轴对齐的矩形：之后同一 scope 中的直线段按矩形裁短（CeTZ 没有裁剪）
            rect = None
            if len(self.subpaths) == 1:
                pieces, closed = self.subpaths[0]
                pts = [pieces[0][1]] + [pc[-1] for pc in pieces if pc[0] == "line"]
                if closed and len(pts) == 4 and all(pc[0] == "line" for pc in pieces):
                    xs_, ys_ = [q[0] for q in pts], [q[1] for q in pts]
                    if len({round(x, 9) for x in xs_}) == 2 and len({round(y, 9) for y in ys_}) == 2:
                        rect = (min(xs_), min(ys_), max(xs_), max(ys_))
            if rect is None:
                pic.notes.append("忽略 \\clip")
            else:
                pic.clip_rect = rect
            return
        if self.draw or self.fill:
            for k, (pieces, closed) in enumerate(self.subpaths):
                first = k == 0
                last = k == len(self.subpaths) - 1
                pic.out.append(self.emit_sub(pieces, closed, args, marks if (first or last) else None, first, last))
        for p, text, nopts, ang, name in self.nodes_later:
            pic.node(p, text, nopts, st, ang, name=name if text.strip() else None)

    def emit_sub(self, pieces, closed, args, marks, first, last) -> str:
        pic = self.pic
        # 折线
        if all(pc[0] in ("line", "poly") for pc in pieces):
            pts = [pieces[0][1]]
            for pc in pieces:
                pts.extend(pc[2:])
            if closed and len(pts) > 2 and pts[-1] == pts[0]:
                pts = pts[:-1]
            a = list(args)
            if closed:
                a.append("close: true")
            elif marks:
                a.append("mark: %s" % marks)
            if pic.clip_rect and not closed and not self.fill:
                segs = []
                for p0, p1 in zip(pts, pts[1:]):
                    cl = clip_segment(p0, p1, pic.clip_rect)
                    if cl:
                        segs.append("line(%s, %s, %s)" % (pic.xy(cl[0]), pic.xy(cl[1]), ", ".join(args)))
                return "\n".join(segs) if segs else "// （被 \\clip 裁掉）"
            xs = [pic.xy(p) for p in pts]
            if not closed and len(pts) >= 2:
                # TikZ 中连到节点的线止于节点边框：用 CeTZ 的边框锚点（从节点中心朝另一端的方向）
                for k, nb in ((0, 1), (len(pts) - 1, len(pts) - 2)):
                    name = self.node_refs.get(pts[k])
                    if name:
                        xs[k] = '(name: "%s", anchor: %sdeg)' % (name, fmt(angle_of(sub(pts[nb], pts[k]))))
            return "line(%s, %s)" % (", ".join(xs), ", ".join(a))
        if len(pieces) == 1 and pieces[0][0] == "ellipse":
            _, c, rx, ry = pieces[0]
            tf = pic.tf
            sx = norm(tf.vec((1, 0)))
            sy = norm(tf.vec((0, 1)))
            rx, ry = rx * sx, ry * sy
            if abs(rx - ry) < 1e-9:
                return "circle(%s, radius: %s, %s)" % (pic.xy(c), fmt(rx), ", ".join(args))
            return "circle(%s, radius: (%s, %s), %s)" % (pic.xy(c), fmt(rx), fmt(ry), ", ".join(args))
        items = []
        for pc in pieces:
            items.append(self.piece(pc))
        if len(items) == 1 and not closed:
            a = list(args)
            if marks:
                a.append("mark: %s" % marks)
            return items[0][:-1] + ", " + ", ".join(a) + ")"
        a = list(args)
        if closed:
            a.append("close: true")
        return "merge-path({%s}, %s)" % ("; ".join(items), ", ".join(a))

    def piece(self, pc) -> str:
        pic = self.pic
        kind = pc[0]
        if kind == "line":
            return "line(%s, %s)" % (pic.xy(pc[1]), pic.xy(pc[2]))
        if kind == "poly":
            return "line(%s)" % ", ".join(pic.xy(p) for p in pc[1:])
        if kind == "bezier":
            _, a, c1, c2, b = pc
            return "bezier(%s, %s, %s, %s)" % (pic.xy(a), pic.xy(b), pic.xy(c1), pic.xy(c2))
        if kind == "arc":
            _, start, c, a0, a1, rx, ry, tf = pc
            sx = norm(tf.vec((1, 0)))
            sy = norm(tf.vec((0, 1)))
            rot_ = angle_of(tf.vec((1, 0)))
            if abs(rx * sx - ry * sy) < 1e-9 and abs(sx - sy) < 1e-9:
                return "arc(%s, start: %sdeg, stop: %sdeg, radius: %s)" % (
                    pic.xy(start), fmt(a0 + rot_), fmt(a1 + rot_), fmt(rx * sx))
            if abs(rot_) > 1e-6:
                raise TikzError("旋转的椭圆弧暂不支持")
            return "arc(%s, start: %sdeg, stop: %sdeg, radius: (%s, %s))" % (
                pic.xy(start), fmt(a0), fmt(a1), fmt(rx * sx), fmt(ry * sy))
        raise TikzError("未知路径段 " + kind)


def clip_segment(p, q, rect):
    """Liang–Barsky：线段 pq 在矩形内的部分，没有则为 None"""
    x0, y0, x1, y1 = rect
    dx, dy = q[0] - p[0], q[1] - p[1]
    t0, t1 = 0.0, 1.0
    for pk, qk in ((-dx, p[0] - x0), (dx, x1 - p[0]), (-dy, p[1] - y0), (dy, y1 - p[1])):
        if abs(pk) < 1e-12:
            if qk < -1e-9:
                return None
            continue
        t = qk / pk
        if pk < 0:
            t0 = max(t0, t)
        else:
            t1 = min(t1, t)
    if t0 > t1 - 1e-9:
        return None
    return (p[0] + t0 * dx, p[1] + t0 * dy), (p[0] + t1 * dx, p[1] + t1 * dy)


def point_on(seg, t):
    """线段上参数 t 处的点和切线方向（度）"""
    kind = seg[0]
    if kind == "line":
        _, a, b = seg
        return lerp(a, b, t), angle_of(sub(b, a))
    if kind == "poly":
        _, a, m, b = seg
        # TikZ：-| 和 |- 的 pos=.5 在拐角处
        if t <= 0.5:
            return lerp(a, m, t * 2), angle_of(sub(m, a))
        return lerp(m, b, (t - 0.5) * 2), angle_of(sub(b, m))
    if kind == "bezier":
        _, a, c1, c2, b = seg
        u = 1 - t
        p = tuple(u ** 3 * a[k] + 3 * u * u * t * c1[k] + 3 * u * t * t * c2[k] + t ** 3 * b[k] for k in range(2))
        d = tuple(3 * u * u * (c1[k] - a[k]) + 6 * u * t * (c2[k] - c1[k]) + 3 * t * t * (b[k] - c2[k]) for k in range(2))
        return p, angle_of(d)
    raise TikzError("节点不能放在这种路径段上")


# ---------------------------------------------------------------- tkz-euclide

def point_list(s: str) -> list[str]:
    """(A,B,C) -> [A, B, C]"""
    return [x.strip() for x in split_top(s) if x.strip()]


def point_groups(s: str) -> list[list[str]]:
    """(A,B C,D) -> [[A, B], [C, D]]"""
    return [point_list(g) for g in s.split() if g.strip()]


def arg(args, kind: str, k: int = 0, default=None):
    """第 k 个 kind 类参数（"[" "(" "{"）"""
    xs = [c for t, c in args if t == kind]
    return xs[k] if k < len(xs) else default


class Tkz:
    """tkz-euclide 命令。方法名为 tkz_ 加命令名（去掉 \\tkz）"""

    # ---- 定义点 ----
    def tkz_DefPoints(self, args):
        for item in split_top(arg(args, "{")):
            item = item.strip()
            if not item:
                continue
            x, y, name = split_top(item, "/")
            self.define(name, self.tf.apply((num(x), num(y))))

    def tkz_DefPoint(self, args):
        p = self.coord(arg(args, "("))
        self.define(arg(args, "{"), p)

    def tkz_DefShiftPoint(self, args):
        base = self.get(arg(args, "["))
        d = self.tf.vec(self.coord_raw(arg(args, "(")))
        self.define(arg(args, "{"), add(base, d))

    def tkz_GetPoint(self, args):
        if not self.result:
            raise TikzError("\\tkzGetPoint 之前没有求出点")
        self.define(arg(args, "{"), self.result[0])

    def tkz_GetPoints(self, args):
        names = [c for t, c in args if t == "{"]
        if len(self.result) < 2:
            raise TikzError("\\tkzGetPoints 之前没有求出两个点")
        for n_, p in zip(names, self.result):
            self.define(n_, p)

    def tkz_GetFirstPoint(self, args):
        self.define(arg(args, "{"), self.result[0])

    def tkz_GetSecondPoint(self, args):
        self.define(arg(args, "{"), self.result[1])

    def tkz_DefMidPoint(self, args):
        a, b = map(self.get, point_list(arg(args, "(")))
        self.result = [lerp(a, b, 0.5)]

    def tkz_InterLL(self, args):
        a, b = map(self.get, point_list(arg(args, "(", 0)))
        c, d = map(self.get, point_list(arg(args, "(", 1)))
        self.result = [inter_ll(a, b, c, d)]

    def circle_arg(self, opt: str | None, s: str):
        """(O,A) 过 A 的圆，[R] 时 (O,r)"""
        o, x = point_list(s)
        o = self.get(o)
        if opt and opt.strip().startswith("R"):
            return o, num(x) * self.tf.scale
        return o, norm(sub(self.get(x), o))

    def tkz_InterLC(self, args):
        opt = arg(args, "[")
        a, b = map(self.get, point_list(arg(args, "(", 0)))
        o, r = self.circle_arg(opt, arg(args, "(", 1))
        # 第一个交点在垂足的顺时针一侧（从圆心看）
        h = project(o, a, b)
        d = norm(sub(h, o))
        if d > r + 1e-9:
            raise TikzError("直线与圆不相交")
        if d < 0.05 * PT:
            u = unit(sub(b, a))
            self.result = [sub(o, mul(u, r)), add(o, mul(u, r))]
        else:
            w = angle_of(sub(h, o))
            al = math.degrees(math.acos(min(d / r, 1.0)))
            self.result = [add(o, polar(w - al, r)), add(o, polar(w + al, r))]

    def tkz_InterCC(self, args):
        opt = arg(args, "[")
        o1, r1 = self.circle_arg(opt, arg(args, "(", 0))
        o2, r2 = self.circle_arg(opt, arg(args, "(", 1))
        self.result = inter_cc(o1, r1, o2, r2)

    def tkz_DefPointWith(self, args):
        opts = parse_options(arg(args, "[", default=""))
        a, b = map(self.get, point_list(arg(args, "(")))
        d = dict(opts)
        k = num(d["K"]) if "K" in d else 1.0
        kind = opts[0][0]
        if kind == "orthogonal":
            self.result = [add(a, mul(rot(sub(b, a), 90), k))]
        elif kind == "orthogonal normed":
            self.result = [add(a, mul(unit(rot(sub(b, a), 90)), k))]
        elif kind == "linear":
            self.result = [add(a, mul(sub(b, a), k))]
        elif kind == "linear normed":
            self.result = [add(a, mul(unit(sub(b, a)), k))]
        elif kind == "colinear":
            c = self.get(d["colinear"].replace("at", "").strip())
            self.result = [add(c, mul(sub(b, a), k))]
        elif kind == "colinear normed":
            c = self.get(d["colinear normed"].replace("at", "").strip())
            self.result = [add(c, mul(unit(sub(b, a)), k))]
        else:
            raise TikzError("不支持的 \\tkzDefPointWith 选项 " + kind)

    def transform_point(self, spec: str, p):
        spec = spec.strip()
        m = re.fullmatch(r"translation\s*=\s*from\s+(\S+)\s+to\s+(\S+)", spec)
        if m:
            return add(p, sub(self.get(m.group(2)), self.get(m.group(1))))
        m = re.fullmatch(r"rotation\s*=\s*center\s+(\S+)\s+angle\s+(\S+)", spec)
        if m:
            o = self.get(m.group(1))
            return add(o, rot(sub(p, o), num(m.group(2))))
        m = re.fullmatch(r"rotation in rad\s*=\s*center\s+(\S+)\s+angle\s+(\S+)", spec)
        if m:
            o = self.get(m.group(1))
            return add(o, rot(sub(p, o), math.degrees(num(m.group(2)))))
        m = re.fullmatch(r"symmetry\s*=\s*center\s+(\S+)", spec)
        if m:
            o = self.get(m.group(1))
            return sub(mul(o, 2), p)
        m = re.fullmatch(r"reflection\s*=\s*over\s+(\S+?)--(\S+)", spec)
        if m:
            q = project(p, self.get(m.group(1)), self.get(m.group(2)))
            return sub(mul(q, 2), p)
        m = re.fullmatch(r"projection\s*=\s*onto\s+(\S+?)--(\S+)", spec)
        if m:
            return project(p, self.get(m.group(1)), self.get(m.group(2)))
        m = re.fullmatch(r"homothety\s*=\s*center\s+(\S+)\s+ratio\s+(\S+)", spec)
        if m:
            o = self.get(m.group(1))
            return add(o, mul(sub(p, o), num(m.group(2))))
        raise TikzError("不支持的变换 " + spec)

    def tkz_DefPointBy(self, args):
        self.result = [self.transform_point(arg(args, "["), self.get(arg(args, "(")))]

    def tkz_DefPointsBy(self, args):
        src = point_list(arg(args, "("))
        names = point_list(arg(args, "{", default="") or "")
        if not names:
            names = [s + "'" for s in src]
        for s_, n_ in zip(src, names):
            self.define(n_, self.transform_point(arg(args, "["), self.get(s_)))

    def tkz_DefTriangleCenter(self, args):
        kind = arg(args, "[").strip()
        a, b, c = map(self.get, point_list(arg(args, "(")))
        self.result = [triangle_center(kind, a, b, c)]

    def tkz_DefSpcTriangle(self, args):
        opts = dict(parse_options(arg(args, "[")))
        kind = arg(args, "[").split(",")[0].strip()
        a, b, c = map(self.get, point_list(arg(args, "(")))
        names = point_list(arg(args, "{"))
        if "name" in opts:
            names = [opts["name"] + x for x in names]
        if kind == "medial":
            pts = [lerp(b, c, .5), lerp(c, a, .5), lerp(a, b, .5)]
        elif kind in ("ortho", "orthic"):
            pts = [project(a, b, c), project(b, c, a), project(c, a, b)]
        elif kind == "excentral":
            # 依次与 A、B、C 相对
            pts = [triangle_center("ex", c, a, b), triangle_center("ex", a, b, c), triangle_center("ex", b, c, a)]
        elif kind == "extouch":
            pts = [project(triangle_center("ex", c, a, b), b, c), project(triangle_center("ex", a, b, c), c, a),
                   project(triangle_center("ex", b, c, a), a, b)]
        elif kind in ("in", "incentral", "intouch", "contact"):
            i = triangle_center("in", a, b, c)
            pts = [project(i, b, c), project(i, c, a), project(i, a, b)]
        else:
            raise TikzError("不支持的 \\tkzDefSpcTriangle 选项 " + kind)
        for n_, p in zip(names, pts):
            self.define(n_, p)

    def tkz_DefLine(self, args):
        opts = parse_options(arg(args, "[", default=""))
        d = dict(opts)
        pts = list(map(self.get, point_list(arg(args, "("))))
        kind = opts[0][0]
        k = num(d["K"]) if "K" in d else 1.0
        if kind == "mediator":
            a, b = pts
            m_ = lerp(a, b, .5)
            v = rot(sub(b, a), 90)
            self.result = [add(m_, mul(v, k)), sub(m_, mul(v, k))]
        elif kind == "bisector":
            a, o, b = pts
            # tkz：在射线 OB 上取 A* 使 OA* = OA，结果是 AA* 的中点；normed 时取单位长
            a_star = add(o, mul(sub(b, o), norm(sub(a, o)) / norm(sub(b, o))))
            q = lerp(a, a_star, 0.5)
            if "normed" in d:
                q = add(o, mul(unit(sub(q, o)), self.tf.scale))
            self.result = [q]
        elif kind == "parallel":
            a, b = pts
            c = self.get(d["parallel"].replace("through", "").strip())
            self.result = [add(c, mul(sub(b, a), k))]
        elif kind in ("orthogonal", "perpendicular"):
            a, b = pts
            c = self.get(d[kind].replace("through", "").strip())
            self.result = [add(c, mul(rot(sub(b, a), 90), k))]
        else:
            raise TikzError("不支持的 \\tkzDefLine 选项 " + kind)

    def tkz_DefTangent(self, args):
        d = dict(parse_options(arg(args, "[")))
        pl = point_list(arg(args, "("))
        o = self.get(pl[0])
        x = pl[1] if len(pl) > 1 else None
        if "from" in d or "from with R" in d:
            p = self.get(d.get("from") or d["from with R"])
            r = num(x) * self.tf.scale if "from with R" in d else norm(sub(self.get(x), o))
            dist = norm(sub(p, o))
            if dist <= r:
                raise TikzError("切线的起点在圆内")
            a = math.degrees(math.acos(r / dist))
            base = angle_of(sub(p, o))
            self.result = [add(o, polar(base - a, r)), add(o, polar(base + a, r))]
        elif "at" in d:
            p = self.get(d["at"])
            self.result = [add(p, mul(rot(unit(sub(p, o)), 90), self.tf.scale))]
        else:
            raise TikzError("不支持的 \\tkzDefTangent 选项")

    def tkz_DefSquare(self, args):
        a, b = map(self.get, point_list(arg(args, "(")))
        v = rot(sub(b, a), 90)
        self.result = [add(b, v), add(a, v)]

    def tkz_DefEquilateral(self, args):
        a, b = map(self.get, point_list(arg(args, "(")))
        self.result = [add(a, rot(sub(b, a), 60))]

    # ---- 画图 ----
    def tkz_style(self, opt: str | None, kind: str) -> Style:
        """tkz 画图命令的样式：先套该类对象的默认样式，再加命令的选项"""
        st = self.style.copy()
        d = TKZ_STYLE[kind]
        st.width = d.get("width", st.width)
        if "color" in d:
            st.color = d["color"]
        st.cap = d.get("cap", st.cap)
        st.join = d.get("join", None)
        if opt:
            self.apply_options([(k, v) for k, v in parse_options(opt) if k not in TKZ_KEYS], st)
        return st

    def emit_path(self, pts, st: Style, closed=False, draw=True):
        args = []
        if st.pattern:
            args.append("fill: %s" % st.pattern)
        elif st.fill is not None:
            args.append("fill: %s" % typst_color(st.fill))
        args.append("stroke: %s" % self.stroke(st) if draw else "stroke: none")
        if closed:
            args.append("close: true")
        else:
            mk = self.marks(st)
            if mk:
                args.append("mark: %s" % mk)
        self.out.append("line(%s, %s)" % (", ".join(self.xy(p) for p in pts), ", ".join(args)))

    def tkz_DrawSegments(self, args):
        opt = arg(args, "[")
        st = self.tkz_style(opt, "segment")
        d = dict(parse_options(opt or ""))
        for g in point_groups(arg(args, "(")):
            pts = [self.get(x) for x in g]
            # add=l and r：线段两端各按长度的比例延长（同 tkzDrawLines）
            if "add" in d and len(pts) == 2:
                l_, r_ = (num(x) for x in d["add"].split(" and "))
                a, b = pts
                pts = [add(a, mul(sub(a, b), l_)), add(b, mul(sub(b, a), r_))]
            self.emit_path(pts, st)

    def tkz_DrawSegment(self, args):
        self.tkz_DrawSegments(args)

    def tkz_DrawPolygon(self, args):
        st = self.tkz_style(arg(args, "["), "polygon")
        self.emit_path([self.get(x) for x in point_list(arg(args, "("))], st, closed=True)

    tkz_DrawPolySeg = tkz_DrawSegments

    def tkz_DrawLines(self, args):
        opt = arg(args, "[")
        st = self.tkz_style(opt, "line")
        d = dict(parse_options(opt or ""))
        l_, r_ = TKZ["line add"]
        if "add" in d:
            l_, r_ = (num(x) for x in d["add"].split(" and "))
        for g in point_groups(arg(args, "(")):
            a, b = self.get(g[0]), self.get(g[1])
            self.emit_path([add(a, mul(sub(a, b), l_)), add(b, mul(sub(b, a), r_))], st)

    tkz_DrawLine = tkz_DrawLines

    def tkz_DrawCircles(self, args):
        opt = arg(args, "[")
        st = self.tkz_style(opt, "circle")
        kind = "through"
        for k, v in parse_options(opt or ""):
            if k in ("R", "diameter", "through"):
                kind = k
        for g in point_groups(arg(args, "(")):
            if kind == "diameter":
                a, b = self.get(g[0]), self.get(g[1])
                o, r = lerp(a, b, .5), norm(sub(b, a)) / 2
            elif kind == "R":
                o, r = self.get(g[0]), num(g[1]) * self.tf.scale
            else:
                o = self.get(g[0])
                r = norm(sub(self.get(g[1]), o))
            fill = ""
            if st.pattern:
                fill = "fill: %s, " % st.pattern
            elif st.fill is not None:
                fill = "fill: %s, " % typst_color(st.fill)
            self.out.append("circle(%s, radius: %s, %sstroke: %s)" % (self.xy(o), fmt(r), fill, self.stroke(st)))

    def tkz_DrawCircle(self, args):
        opt = arg(args, "[")
        s = arg(args, "(")
        self.tkz_DrawCircles([("[", opt or ""), ("(", s.replace(" ", ""))])

    def emit_arc(self, o, r, a0, a1, st: Style):
        if abs(a1 - a0) < 1e-6 or r < 1e-9:
            return
        start = add(o, polar(a0, r))
        args = ["start: %sdeg" % fmt(a0), "stop: %sdeg" % fmt(a1), "radius: %s" % fmt(r), "stroke: %s" % self.stroke(st)]
        mk = self.marks(st)
        if mk:
            args.append("mark: %s" % mk)
        if st.fill is not None:
            args.append('fill: %s, mode: "PIE"' % typst_color(st.fill))
        self.out.append("arc(%s, %s)" % (self.xy(start), ", ".join(args)))

    def tkz_DrawArc(self, args):
        opt = arg(args, "[")
        st = self.tkz_style(opt, "arc")
        d = dict(parse_options(opt or ""))
        o_, x_ = point_list(arg(args, "(", 0))
        o = self.get(o_)
        third = point_list(arg(args, "(", 1))
        delta = num(d["delta"]) if "delta" in d else 0.0
        if "R" in d or any(k == "R" for k in d):
            r = num(x_) * self.tf.scale
            a0, a1 = num(third[0]), num(third[1])
        elif "angles" in d:
            r = norm(sub(self.get(x_), o))
            a0, a1 = num(third[0]), num(third[1])
        elif "rotate" in d:
            a = self.get(x_)
            r = norm(sub(a, o))
            a0 = angle_of(sub(a, o))
            a1 = a0 + num(third[0])
        else:  # towards：从 A 逆时针到 OB 方向
            a = self.get(x_)
            r = norm(sub(a, o))
            a0 = angle_of(sub(a, o))
            a1 = angle_of(sub(self.get(third[0]), o))
            while a1 < a0:
                a1 += 360
        if a1 < a0 and "rotate" not in d:
            a1 += 360
        self.emit_arc(o, r, a0 - delta, a1 + delta, st)

    def tkz_Compass(self, args):
        opt = arg(args, "[")
        st = self.tkz_style(opt, "compass")
        d = dict(parse_options(opt or ""))
        for g in point_groups(arg(args, "(")):
            o, a = self.get(g[0]), self.get(g[1])
            r = norm(sub(a, o))
            mid = angle_of(sub(a, o))
            if "delta" in d:
                half = num(d["delta"])
            else:
                length = (num(d["length"]) if "length" in d else TKZ["compass length"]) * self.tf.scale
                half = min(math.degrees(length / r), 180) / 2
            self.emit_arc(o, r, mid - half, mid + half, st)

    tkz_Compasss = tkz_Compass

    def tkz_DrawPoints(self, args):
        opt = arg(args, "[")
        d = dict(parse_options(opt or ""))
        size = num(d["size"]) if "size" in d else TKZ["point size"]
        color = parse_color(d.get("color", "black")) or (0, 0, 0)
        fill = parse_color(d["fill"]) if "fill" in d else TKZ["point fill"](color)
        names = point_list(arg(args, "("))
        if len(names) == 2 and all(re.match(r"^[-\d.]", x) for x in names):
            names = [arg(args, "(")]   # \tkzDrawPoint(0,0)：坐标
        for x in names:
            if x.strip() not in self.points and x.strip() not in self.lookahead and not re.match(r"^[-\d.]", x):
                self.notes.append("跳过未定义的点 " + x)
                continue
            self.out.append("circle(%s, radius: %spt, fill: %s, stroke: %s + %spt)" % (
                self.xy(self.get(x)), fmt(size * TKZ["point unit"] / 2), typst_color(fill),
                typst_color(color), fmt(TKZ["point stroke"])))

    tkz_DrawPoint = tkz_DrawPoints

    # ---- 角的记号 ----
    def tkz_MarkAngles(self, args):
        opt = arg(args, "[")
        st = self.tkz_style(opt, "mark")
        d = dict(parse_options(opt or ""))
        size = (num(d["size"]) if "size" in d else TKZ["angle size"]) * self.tf.scale
        arc_kind = d.get("arc", "l")
        triples = point_groups(arg(args, "("))
        for g in triples:
            a, o, b = (self.get(x) for x in g)
            a0 = angle_of(sub(a, o))
            a1 = angle_of(sub(b, o))
            while a1 < a0:
                a1 += 360
            for k in range(len(arc_kind)):
                self.emit_arc(o, size + k * TKZ["angle arc gap"], a0, a1, st)
            mark = d.get("mark")
            if mark and mark != "none":
                self.mark_ticks(o, size, (a0 + a1) / 2, mark, st)

    tkz_MarkAngle = tkz_MarkAngles

    def mark_ticks(self, o, r, ang, mark, st):
        n_ = {"|": 1, "||": 2, "|||": 3, "s|": 1, "s||": 2, "s|||": 3}.get(mark)
        if n_ is None:
            self.notes.append("忽略记号 mark=" + mark)
            return
        L = TKZ["tick len"]
        for k in range(n_):
            off = (k - (n_ - 1) / 2) * TKZ["tick gap"] / r * 180 / math.pi
            p = add(o, polar(ang + off, r))
            u = unit(sub(p, o))
            self.emit_path([sub(p, mul(u, L / 2)), add(p, mul(u, L / 2))], st)

    def tkz_MarkRightAngles(self, args):
        opt = arg(args, "[")
        st = self.tkz_style(opt, "mark")
        d = dict(parse_options(opt or ""))
        size = (num(d["size"]) if "size" in d else TKZ["right angle size"]) * self.tf.scale
        for g in point_groups(arg(args, "(")):
            a, o, b = (self.get(x) for x in g)
            u, v = unit(sub(a, o)), unit(sub(b, o))
            p1 = add(o, mul(u, size))
            p3 = add(o, mul(v, size))
            p2 = add(p1, mul(v, size))
            # tkz 画的是完整的小正方形（两条边与角的两边重合）
            self.emit_path([o, p1, p2, p3, o], st)

    tkz_MarkRightAngle = tkz_MarkRightAngles

    def tkz_MarkSegments(self, args):
        opt = arg(args, "[")
        st = self.tkz_style(opt, "mark")
        d = dict(parse_options(opt or ""))
        mark = d.get("mark", "|")
        n_ = {"|": 1, "||": 2, "|||": 3, "s|": 1, "s||": 2, "s|||": 3, "x": 1}.get(mark, 1)
        for g in point_groups(arg(args, "(")):
            a, b = self.get(g[0]), self.get(g[1])
            m_ = lerp(a, b, num(d.get("pos", ".5")))
            u = unit(sub(b, a))
            n2 = rot(u, 90)
            L = TKZ["tick len"]
            for k in range(n_):
                c = add(m_, mul(u, (k - (n_ - 1) / 2) * TKZ["tick gap"]))
                self.emit_path([sub(c, mul(n2, L / 2)), add(c, mul(n2, L / 2))], st)

    tkz_MarkSegment = tkz_MarkSegments

    # ---- 标注 ----
    def label_opts(self, opt: str | None, default_pos: str) -> list:
        opts = parse_options(opt or "")
        if not any(k in POSITIONS for k, _ in opts) and not any(k == "anchor" for k, _ in opts):
            opts = [(default_pos, None)] + opts
        return [(k, v) for k, v in opts if k not in TKZ_KEYS or k in POSITIONS]

    def tkz_LabelPoints(self, args):
        opts = self.label_opts(arg(args, "["), TKZ["label pos"])
        for x in point_list(arg(args, "(")):
            self.node(self.get(x), "$%s$" % tex_point_name(x), opts, self.style)

    def tkz_LabelPoint(self, args):
        opts = self.label_opts(arg(args, "["), TKZ["label pos"])
        self.node(self.get(arg(args, "(")), arg(args, "{"), opts, self.style)

    def tkz_AutoLabelPoints(self, args):
        d = dict(parse_options(arg(args, "[", default="")))
        c = self.get(d["center"]) if "center" in d else None
        dist = num(d["dist"]) if "dist" in d else TKZ["auto dist"]
        for x in point_list(arg(args, "(")):
            p = self.get(x)
            if c is None:
                raise TikzError("\\tkzAutoLabelPoints 缺少 center")
            q = add(p, mul(sub(p, c), dist))
            # tkz 的自动标注一律以 north 为锚点（即 below），不论往哪个方向推出
            self.node(q, "$%s$" % tex_point_name(x), [("below", None)], self.style)

    def tkz_LabelSegments(self, args):
        opts = self.label_opts(arg(args, "["), TKZ["segment label pos"])
        d = dict(opts)
        t = num(d["pos"]) if "pos" in d else 0.5
        text = arg(args, "{")
        for g in point_groups(arg(args, "(")):
            a, b = self.get(g[0]), self.get(g[1])
            self.node(lerp(a, b, t), text, [(k, v) for k, v in opts if k != "pos"], self.style, angle_of(sub(b, a)))

    tkz_LabelSegment = tkz_LabelSegments

    def tkz_LabelAngles(self, args):
        d = dict(parse_options(arg(args, "[", default="")))
        # tkz 用 \fpeval 求 pos，单位被丢掉：pos=.5pt 就是 0.5
        pos = (num(re.sub(r"(pt|cm|mm)\s*$", "", d["pos"])) if "pos" in d else TKZ["angle label pos"]) * self.tf.scale
        text = arg(args, "{")
        for g in point_groups(arg(args, "(")):
            a, o, b = (self.get(x) for x in g)
            a0 = angle_of(sub(a, o))
            a1 = angle_of(sub(b, o))
            while a1 < a0:
                a1 += 360
            p = add(o, polar((a0 + a1) / 2, pos))
            # tkz 用 \path (B) --+(φ:1) node[pos=p] 放标注，这条看不见的路径也撑大了图的外框
            self.out.append("line(%s, %s, stroke: none)" % (self.xy(o), self.xy(add(o, polar((a0 + a1) / 2, self.tf.scale)))))
            self.node(p, text, [(k, v) for k, v in parse_options(arg(args, "[", default="")) if k in POSITIONS], self.style)

    tkz_LabelAngle = tkz_LabelAngles

    def tkz_Grid(self, args):
        r = getattr(self, "tkz_range", None)
        if r is None:
            raise TikzError("\\tkzGrid 之前没有 \\tkzInit")
        st = self.style.copy()
        st.color = (.5, .5, .5)
        st.width = 0.4
        x0, x1, y0, y1 = r
        for x in range(math.ceil(x0), math.floor(x1) + 1):
            self.emit_path([self.tf.apply((x, y0)), self.tf.apply((x, y1))], st)
        for y in range(math.ceil(y0), math.floor(y1) + 1):
            self.emit_path([self.tf.apply((x0, y)), self.tf.apply((x1, y))], st)

    def tkz_Init(self, args):
        d = dict(parse_options(arg(args, "[", default="")))
        self.tkz_range = tuple(num(d.get(k, dv)) for k, dv in
                               (("xmin", "0"), ("xmax", "10"), ("ymin", "0"), ("ymax", "10")))

    def tkz_Clip(self, args):
        self.notes.append("忽略 \\tkzClip")

POSITIONS = ("above", "below", "left", "right", "above left", "above right", "below left", "below right")
# tkz 命令自己的选项（不当作 TikZ 样式）
TKZ_KEYS = {"size", "mark", "arc", "pos", "add", "R", "delta", "rotate", "towards", "angles", "length",
            "through", "diameter", "center", "dist", "mkcolor", "mksize", "mkpos", "K"}

# tkz-euclide 5.14c 的默认值（tkz-euclide.cfg）；长度单位 cm，线宽单位 pt
TKZ = {
    "label pos": "below",
    "segment label pos": "below",
    "line add": (0.2, 0.2),
    "compass length": 1.0,
    "point size": 2.0,
    "point unit": 1.0,
    "point stroke": 0.4,
    "point fill": lambda c: c,
    "angle size": 1.0,
    "angle arc gap": 2.5 * 0.4 * PT,
    "angle label pos": 1.0,
    "right angle size": 0.25,
    "tick len": 4 * PT,
    "tick gap": 1.5 * PT,
    "auto dist": 0.15,
}
# 各类对象的默认样式（tkz-base.cfg 生效时）：线段、直线、多边形、弧 0.2pt 黑色圆头；
# 圆和圆规弧 0.2pt 50% 灰；角和直角的记号是 TikZ 默认的 0.4pt 黑色
TKZ_STYLE = {
    "segment": {"width": 0.2, "cap": "round"},
    "polygon": {"width": 0.2, "cap": "round", "join": "round"},
    "line": {"width": 0.2, "cap": "round"},
    "circle": {"width": 0.2, "color": (.5, .5, .5)},
    "arc": {"width": 0.2},
    "compass": {"width": 0.2, "color": (.5, .5, .5)},
    "mark": {},
}


def tex_point_name(name: str) -> str:
    """tkz 的 \\tkzLabelPoints 照点名排成公式 $名$（B1 印成 B1，不是下标）"""
    return name.strip()


for _k, _v in list(vars(Tkz).items()):
    if callable(_v) and not _k.startswith("__"):
        setattr(Picture, _k, _v)


# ---------------------------------------------------------------- 节点文字

class LabelBatch:
    """收集节点文字，最后一次调用 pandoc 转换（简单的 $A$ 之类直接转换）"""

    def __init__(self):
        self.items: list[str] = []

    def add(self, tex: str, font: str | None) -> str | None:
        tex = tex.strip()
        if not tex:
            return None
        size = None
        m = re.match(r"\\(tiny|scriptsize|footnotesize|small|normalsize|large|Large|LARGE)\b\s*", tex)
        if m:
            size = m.group(1)
            tex = tex[m.end():]
        if font:
            mf = re.search(r"\\(tiny|scriptsize|footnotesize|small|large|Large|LARGE)", font)
            if mf:
                size = mf.group(1)
        # 同 tex2typ.py 的预处理：\rm、本书的 \x（乘号）
        tex = re.sub(r"\{\\rm\s+([^{}]*)\}", r"\\mathrm{\1}", tex)
        tex = re.sub(r"\$\\rm\s+([^$]*?)(['^][^$]*)?\$", lambda m: "$\\mathrm{%s}%s$" % (m.group(1), m.group(2) or ""), tex)
        tex = re.sub(r"(?<!\\)\\x(?![a-zA-Z])", r"\\times ", tex)
        simple = simple_label(tex)
        if simple is not None:
            body = "[%s]" % simple
        else:
            self.items.append(tex)
            body = "[@@L%d@@]" % (len(self.items) - 1)
        if size:
            factor = {"tiny": 5 / 10.5, "scriptsize": 7 / 10.5, "footnotesize": 8 / 10.5, "small": 9 / 10.5,
                      "large": 12 / 10.5, "Large": 14.4 / 10.5, "LARGE": 17.28 / 10.5}[size]
            body = "text(size: %sem)%s" % (fmt(factor), body)
        return body

    def resolve(self, text: str) -> str:
        if not self.items:
            return text
        from tex2typ import convert_fragments, fix_math, fix_inline_math
        # 同正文的后处理：^\circ → degree、花括号不自动放大等
        conv = [unshadow(fix_inline_math(fix_math(c))) for c in convert_fragments(self.items)]
        return re.sub(r"@@L(\d+)@@", lambda m: conv[int(m.group(1))], text)


def unshadow(typ: str) -> str:
    """公式中的 arrow、dot、circle 等符号被 fig.typ / CeTZ 的同名函数遮住，改写为 sym.…"""
    def fix_math(m: re.Match) -> str:
        return re.sub(r"(?<![\w.])(arrow|dot|circle|rect)(?=\.|\b)", r"#sym.\1", m.group(0))
    return re.sub(r"\$[^$]*\$", fix_math, typ)


GREEK = set("alpha beta gamma delta epsilon theta lambda mu pi rho sigma tau phi omega varphi".split())


def simple_label(tex: str) -> str | None:
    """$A$、$A'$、$B_1$、$\\alpha$、纯数字、纯汉字等简单节点直接转换"""
    m = re.fullmatch(r"\$\s*([A-Za-z]|\\(%s))\s*('*)\s*(?:_\{?([A-Za-z0-9])\}?)?\s*('*)\s*\$" % "|".join(GREEK), tex)
    if m:
        base = m.group(1)
        base = base[1:] if base.startswith("\\") else base
        primes = m.group(3) + m.group(5)
        sub_ = "_%s" % m.group(4) if m.group(4) else ""
        return "$%s%s%s$" % (base, primes, sub_)
    m = re.fullmatch(r"\$([A-Za-z0-9]+)('*)\$", tex)
    if m:  # $B1$、$AB$：字母逐个分开，免得 Typst 当作变量名
        return "$%s%s$" % (" ".join(m.group(1)), m.group(2))
    if re.fullmatch(r"[0-9.]+", tex):
        return tex
    if re.fullmatch(r"[\u3400-\u9fff（）]+", tex):
        return tex
    return None


# ---------------------------------------------------------------- 入口

def convert(fid: str, src: str, labels: LabelBatch) -> str:
    pic = Picture(fid, labels)
    try:
        code = pic.run(src)
    except (TikzError, KeyError, ValueError, IndexError, ZeroDivisionError, TypeError, AttributeError) as ex:
        return "// 转换失败：%s\ntodo-fig(\"%s\")" % (str(ex).replace("\n", " "), fid), str(ex)
    note = ""
    if pic.notes:
        note = "// " + "；".join(sorted(set(pic.notes))) + "\n"
    return note + code, None


def main() -> None:
    volume = int(sys.argv[1])
    only = sys.argv[2:]
    labels = LabelBatch()
    results = []
    failures = []
    for fid, src in pictures(volume):
        if only and fid not in only:
            continue
        code, err = convert(fid, src, labels)
        if err:
            failures.append((fid, err))
        results.append((fid, code))
    text = "\n".join("@@FIG %s@@\n%s" % r for r in results)
    text = labels.resolve(text)
    chunks = re.split(r"@@FIG ([\d-]+)@@\n", text)[1:]
    pairs = list(zip(chunks[0::2], chunks[1::2]))
    if only:
        for fid, code in pairs:
            print('"%s": %s,' % (fid, code))
    else:
        vdir = Path(__file__).resolve().parents[1] / ("math%d" % volume) / "figs"
        by_ch: dict[str, list] = {}
        for fid, code in pairs:
            by_ch.setdefault(fid.split("-")[0], []).append((fid, code))
        for ch, items in by_ch.items():
            body = ["// 由 tools/tikz2cetz.py 从 math%d/%s.tex 自动生成，不要手工修改；" % (volume, ch),
                    "// 需要手工修改的图复制到 ch%s.typ 的 figures 中，那里的同名图优先。" % ch,
                    '#import "../../common/fig.typ": *', '#import "../../common/template.typ": todo-fig', "",
                    "#let figures = ("]
            for fid, code in items:
                lines = code.split("\n")
                k = 0
                while lines[k].startswith("//"):
                    body.append("  " + lines[k])
                    k += 1
                body.append('  "%s": %s,' % (fid, "\n  ".join(lines[k:])))
            body.append(")")
            (vdir / ("gen-ch%s.typ" % ch)).write_text("\n".join(body) + "\n", encoding="utf-8")
    for fid, err in failures:
        print("失败 %s：%s" % (fid, err), file=sys.stderr)
    print("共 %d 幅，失败 %d 幅" % (len(results), len(failures)), file=sys.stderr)


if __name__ == "__main__":
    main()
