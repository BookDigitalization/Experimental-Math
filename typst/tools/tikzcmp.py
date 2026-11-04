"""逐幅比对 CeTZ 插图与 LaTeX 版（tikzref.py 生成的对照图）。

    python typst/tools/tikzcmp.py 2 参考图目录 [编号 …] [--out 目录]

对每幅图输出：页面尺寸差（cm）和笔迹吻合度 F（0~1，两边的笔迹在 0.4mm 内能对上的比例）。
--out 时为每幅图生成叠合图：LaTeX 版的笔迹为红色、Typst 版为蓝色，重合处为黑色。
"""
import argparse
import subprocess
import sys
from pathlib import Path

import numpy as np
import pymupdf

ROOT = Path(__file__).resolve().parents[2]
DPI = 200
TOL = 3  # 像素，200dpi 下约 0.4mm


def gray(pix: pymupdf.Pixmap) -> np.ndarray:
    if pix.n != 1 or pix.alpha:
        pix = pymupdf.Pixmap(pymupdf.csGRAY, pix)
    return np.frombuffer(pix.samples, dtype=np.uint8).reshape(pix.height, pix.width)


def dilate(mask: np.ndarray, r: int) -> np.ndarray:
    out = mask.copy()
    p = np.pad(mask, r)
    h, w = mask.shape
    for dy in range(-r, r + 1):
        for dx in range(-r, r + 1):
            if dx * dx + dy * dy <= r * r:
                out |= p[r + dy : r + dy + h, r + dx : r + dx + w]
    return out


MAXSHIFT = 40  # 像素：外框算法不同（如 TikZ 把弧的控制点计入外框）造成的整体平移，在此范围内对齐后再比


def best_shift(A: np.ndarray, B: np.ndarray) -> tuple[int, int]:
    """使 A 与平移后的 B 重合最多的平移量（用 FFT 求互相关）"""
    h, w = A.shape
    H, W = h + MAXSHIFT * 2, w + MAXSHIFT * 2
    fa = np.fft.rfft2(dilate(A, 2).astype(float), (H, W))
    fb = np.fft.rfft2(dilate(B, 2).astype(float), (H, W))
    corr = np.fft.irfft2(fa * np.conj(fb), (H, W))
    best, arg = -1.0, (0, 0)
    for dy in range(-MAXSHIFT, MAXSHIFT + 1):
        for dx in range(-MAXSHIFT, MAXSHIFT + 1):
            v = corr[dy % H, dx % W] - 1e-3 * (abs(dx) + abs(dy))
            if v > best:
                best, arg = v, (dy, dx)
    return arg


def shifted(B: np.ndarray, dy: int, dx: int) -> np.ndarray:
    out = np.zeros_like(B)
    h, w = B.shape
    ys, yd = (slice(0, h - dy), slice(dy, h)) if dy >= 0 else (slice(-dy, h), slice(0, h + dy))
    xs, xd = (slice(0, w - dx), slice(dx, w)) if dx >= 0 else (slice(-dx, w), slice(0, w + dx))
    out[yd, xd] = B[ys, xs]
    return out


def compare(a: np.ndarray, b: np.ndarray):
    h, w = max(a.shape[0], b.shape[0]) + MAXSHIFT, max(a.shape[1], b.shape[1]) + MAXSHIFT
    A = np.zeros((h, w), bool)
    B = np.zeros((h, w), bool)
    A[: a.shape[0], : a.shape[1]] = a < 200
    B[: b.shape[0], : b.shape[1]] = b < 200
    if not A.any() or not B.any():
        return 0.0, A, B
    dy, dx = best_shift(A, B)
    B = shifted(B, dy, dx)
    prec = (B & dilate(A, TOL)).sum() / B.sum()
    rec = (A & dilate(B, TOL)).sum() / A.sum()
    return 2 * prec * rec / (prec + rec + 1e-9), A, B


def main() -> None:
    ap = argparse.ArgumentParser()
    ap.add_argument("volume", type=int)
    ap.add_argument("ref", type=Path)
    ap.add_argument("ids", nargs="*")
    ap.add_argument("--out", type=Path)
    args = ap.parse_args()
    sizes = {}
    for line in (args.ref / "index.txt").read_text(encoding="utf-8").split("\n"):
        if line.strip():
            fid, w, h = line.split()
            sizes[fid] = (float(w), float(h))
    ids = args.ids or list(sizes)
    pdf_path = args.ref / "_typst.pdf"
    r = subprocess.run(["typst", "compile", "--root", str(ROOT), "--input", "vol=%d" % args.volume,
                        "--input", "ids=" + ",".join(ids), str(ROOT / "typst/tools/figcmp.typ"), str(pdf_path)],
                       capture_output=True, text=True, encoding="utf-8")
    if r.returncode:
        sys.exit(r.stderr)
    pdf = pymupdf.open(pdf_path)
    if args.out:
        args.out.mkdir(parents=True, exist_ok=True)
    rows = []
    for fid, page in zip(ids, pdf):
        b = gray(page.get_pixmap(dpi=DPI, colorspace=pymupdf.csGRAY))
        a = gray(pymupdf.Pixmap(str(args.ref / ("%s.png" % fid))))
        f, A, B = compare(a, b)
        tw, th = page.rect.width / 72 * 2.54, page.rect.height / 72 * 2.54
        rw, rh = sizes[fid]
        rows.append((f, fid, tw - rw, th - rh))
        if args.out:
            img = np.full(A.shape + (3,), 255, np.uint8)
            img[A & ~B] = (230, 0, 0)
            img[B & ~A] = (0, 90, 255)
            img[A & B] = (0, 0, 0)
            pymupdf.Pixmap(pymupdf.csRGB, img.shape[1], img.shape[0], img.tobytes(), False).save(
                args.out / ("%s.png" % fid))
    for f, fid, dw, dh in sorted(rows):
        print("%s  F=%.3f  dw=%+.2f dh=%+.2f" % (fid, f, dw, dh))
    fs = [r[0] for r in rows]
    print("共 %d 幅，F 平均 %.3f，F<0.9 的 %d 幅" % (len(fs), sum(fs) / len(fs), sum(f < 0.9 for f in fs)))


if __name__ == "__main__":
    main()
