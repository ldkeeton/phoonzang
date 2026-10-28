#!/usr/bin/env python3
"""Mass-probe vintage DOS C compilers for dissolve_area codegen fingerprints.

Runs every compiler in the dos_compilers toolbox with a broad set of flags,
compiles a probe that contains the constructs used by dissolve_area, parses
the resulting OMF object, and scores the code against the target routine.

Usage::

    python3 massprobe.py --help
"""
from __future__ import annotations

import argparse
import concurrent.futures
import dataclasses
import itertools
import json
import os
import re
import shutil
import subprocess
import sys
import tempfile
import time
from pathlib import Path

HERE = Path(__file__).resolve().parent
REPO = HERE
while not (REPO / "disassembler" / "tools" / "dos_compilers").is_dir():
    if REPO.parent == REPO:
        raise SystemExit("cannot locate the repository root")
    REPO = REPO.parent
BASE_DIR = REPO / "disassembler" / "tools" / "dos_compilers"
sys.path.insert(0, str(REPO / "disassembler"))
from lib.aztec import omflib  # noqa: E402

DOSBOX = shutil.which("dosbox-x") or "dosbox-x"
WORKROOT = Path(os.environ.get("MASSPROBE_WORK", "/tmp/opencode/massprobe"))
WORKROOT.mkdir(parents=True, exist_ok=True)

CONF = """\
[dosbox]
machine=svga_s3
memsize=64
quit warning=false

[cpu]
cycles=max
turbo=true

[sblaster]
sbtype=none

[midi]
mpu401=none

[autoexec]
"""

PROBE_TEMPLATE = r"""#define FAR {farkw}
unsigned char FAR *pal;
unsigned screen_buf_seg;
int g;
int mulprobe(y,x)
unsigned y,x;
{{
    return y*320+x;
}}
int absprobe(d)
int d;
{{
    if (d < 0) d = -d;
    return d;
}}
int farprobe(z)
int z;
{{
    return pal[z*3] >> 3;
}}
int globprobe(v)
unsigned v;
{{
    screen_buf_seg = v;
    g = screen_buf_seg;
    return g;
}}
int zextprobe(c)
unsigned char c;
{{
    return c;
}}
int frameprobe(a,b)
int a,b;
{{
    int c,d,e,f;
    c = a*320 + b;
    d = a - b;
    e = c + d;
    f = e * 3;
    return c + d + e + f;
}}
int farframe(z)
int z;
{{
    int i,j;
    unsigned char v;
    i = z * 3;
    j = z + 1;
    v = pal[i >> 3];
    return v + j;
}}
int loopprobe(n,p)
int n;
unsigned char FAR *p;
{{
    int i,s;
    s = 0;
    for (i=0; i<n; i++) s += p[i*3];
    return s;
}}
"""


@dataclasses.dataclass
class Comp:
    key: str
    directory: str
    exe: str
    farkw: str = "far"
    base: tuple[str, ...] = ()
    models: tuple[str, ...] = ()
    opts: tuple[str, ...] = ()
    extras: tuple[str, ...] = ()
    post: str = ""
    convert: str = ""              # command to turn {tag}.O into OMF
    eof_ctrlz: bool = False
    env: dict[str, str] = dataclasses.field(default_factory=dict)
    note: str = ""
    arg_style: str = "opts_first"   # opts_first / opts_last / name_only


# ---------------------------------------------------------------------------
# Compiler registry.  Baselines are taken from the repository's m.sh scripts
# where available; option vocabularies are from the vendors' help screens.
# ---------------------------------------------------------------------------
COMPILERS: list[Comp] = [
    Comp(
        "msc3", "Microsoft C v3", "CL.EXE", "",
        base=("/c",), models=("/AS", "/AM", "/AC", "/AL", "/AH"),
        opts=("/Od", "/O", "/Oa", "/Os", "/Ot", "/Ox", "/Ol", "/Oz"),
        extras=("/Gs", "/Gt", "/Gw", "/Gc", "/Gd", "/Gz", "/Ge", "/Gf",
                "/GA", "/Za", "/Ze", "/Zd", "/Zi", "/W3"),
    ),
    Comp(
        "msc4", "Microsoft C v4", "CL.EXE", "far",
        base=("/c",), models=("/AS", "/AM", "/AC", "/AL", "/AH"),
        opts=("/Od", "/O", "/Oa", "/Os", "/Ot", "/Ox", "/Ol", "/Oz"),
        extras=("/Gs", "/Gt", "/Gw", "/Gc", "/Gd", "/Gz", "/Ge", "/Gf",
                "/GA", "/Za", "/Ze", "/Zd", "/Zi", "/W3"),
    ),
    Comp(
        "msc5", "Microsoft C v5", "CL.EXE", "far",
        base=("/c",), models=("/AS", "/AM", "/AC", "/AL", "/AH"),
        opts=("/Od", "/O", "/Oa", "/Os", "/Ot", "/Ox", "/Ol", "/Oz"),
        extras=("/Gs", "/Gt", "/Gw", "/Gc", "/Gd", "/Gz", "/Ge", "/Gf",
                "/GA", "/Za", "/Ze", "/Zd", "/Zi", "/W3"),
    ),
    Comp(
        "msc6", "Microsoft C v6ax", "CL.EXE", "far",
        base=("/c", "/nologo"), models=("/AS", "/AM", "/AC", "/AL", "/AH"),
        opts=("/Od", "/O", "/Oa", "/Os", "/Ot", "/Ox", "/Ol", "/Oz", "/Owx"),
        extras=("/Gs", "/Gt", "/Gw", "/Gc", "/Gd", "/Gz", "/Ge", "/Gf",
                "/GA", "/Za", "/Ze", "/Zd", "/Zi", "/W3"),
    ),
    Comp(
        "qc1", "Microsoft QuickC v1", "QCL.EXE", "far",
        base=("/c",), models=("/AS", "/AM", "/AC", "/AL", "/AH"),
        opts=("/Od", "/O", "/Oa", "/Os", "/Ot", "/Ox", "/Ol", "/Oz"),
        extras=("/Gs", "/Gt", "/Gw", "/Gc", "/Gd", "/Gz", "/Ge", "/Gf",
                "/GA", "/Za", "/Ze", "/Zd", "/Zi", "/W3"),
    ),
    Comp(
        "qc2", "Microsoft QuickC v2", "QCL.EXE", "far",
        base=("/c",), models=("/AS", "/AM", "/AC", "/AL", "/AH"),
        opts=("/Od", "/O", "/Oa", "/Os", "/Ot", "/Ox", "/Ol", "/Oz"),
        extras=("/Gs", "/Gt", "/Gw", "/Gc", "/Gd", "/Gz", "/Ge", "/Gf",
                "/GA", "/Za", "/Ze", "/Zd", "/Zi", "/W3"),
    ),
    Comp(
        "qc251", "Microsoft QuickC v251", "QCL.EXE", "far",
        base=("/c",), models=("/AS", "/AM", "/AC", "/AL", "/AH"),
        opts=("/Od", "/O", "/Oa", "/Os", "/Ot", "/Ox", "/Ol", "/Oz"),
        extras=("/Gs", "/Gt", "/Gw", "/Gc", "/Gd", "/Gz", "/Ge", "/Gf",
                "/GA", "/Za", "/Ze", "/Zd", "/Zi", "/W3"),
    ),
    Comp(
        "turbo1", "Borland Turbo C v1", "TCC.EXE", "far",
        base=("-c",), models=("-mt", "-ms", "-mc", "-ml", "-mh"),
        opts=("-O", "-G", "-Z", "-O -G", "-O -Z", "-G -Z", "-O -G -Z"),
        extras=("-N", "-N-", "-k", "-r", "-r-", "-d", "-f", "-f-", "-a",
                "-v", "-w", "-A", "-C", "-K", "-1", "-2", "-3", "-4",
                "-P", "-u", "-u-", "-B", "-x"),
    ),
    Comp(
        "turbo2", "Borland Turbo C v2", "TCC.EXE", "far",
        base=("-c",), models=("-mt", "-ms", "-mc", "-ml", "-mh"),
        opts=("-O", "-G", "-Z", "-O -G", "-O -Z", "-G -Z", "-O -G -Z"),
        extras=("-N", "-N-", "-k", "-r", "-r-", "-d", "-f", "-f-", "-a",
                "-v", "-w", "-A", "-C", "-K", "-1", "-2", "-3", "-4",
                "-P", "-u", "-u-", "-B", "-x"),
    ),
    Comp(
        "turbo_cpp1", "Borland Turbo C++ v1", "TCC.EXE", "far",
        base=("-c",), models=("-mt", "-ms", "-mc", "-ml", "-mh"),
        opts=("-O", "-G", "-Z", "-O -G", "-O -Z", "-G -Z", "-O -G -Z"),
        extras=("-N", "-N-", "-k", "-r", "-r-", "-d", "-f", "-f-", "-a",
                "-v", "-w", "-A", "-C", "-K", "-1", "-2", "-3", "-4",
                "-P", "-u", "-u-", "-B", "-x"),
    ),
    Comp(
        "lattice212", "Lattice C v2.12", "LC.COM", "far",
        base=(), models=("-ms", "-mm", "-mc", "-ml", "-mh"),
        opts=("-O",),
        extras=("-v", "-t", "-y", "-z", "-w", "-k", "-k1", "-k2",
                "-f", "-g", "-G", "-n", "-a", "-C", "-S", "-B", "-x",
                "-cc", "-cd", "-ck", "-cl", "-cm", "-cs", "-ct", "-cu",
                "-cw", "-cx", "-cz", "-gc", "-gf", "-gr", "-g0", "-g1"),
        note="Lattice v2 option spellings may differ",
    ),
    Comp(
        "lattice330", "Lattice C v3.30", "LC.EXE", "far",
        base=(), models=("-ms", "-mp", "-md", "-ml", "-mh",
                         "-msh", "-mph", "-mds", "-mls", "-mhs"),
        opts=("-O",),
        extras=("-v", "-t", "-y", "-z", "-w", "-k", "-k1", "-k2",
                "-f", "-g", "-G", "-n", "-a", "-C", "-S", "-B", "-x",
                "-cc", "-cd", "-ck", "-cl", "-cm", "-cs", "-ct", "-cu",
                "-cw", "-cx", "-cz", "-gc", "-gf", "-gr", "-g0", "-g1",
                "-g2"),
        note="LC -c is literals-in-CONST, not compile-only",
    ),
    Comp(
        "aztec340", "Manx Aztec C86 v340a", "CC.EXE", "far",
        base=("+F", "+A"), convert="OBJ", models=("+LC", "+LD", "+L"),
        opts=("+C", "+M", "+m", "+c"),
        extras=("+R", "+N", "+U", "+0", "+1", "+2", "+J", "-n", "-O",
                "-r", "-s", "-v", "-w", "-z", "-A", "-C", "-P", "-u",
                "-k", "-f", "-i", "-b"),
    ),
    Comp(
        "aztec340b", "Manx Aztec C86 v340a", "CCB.EXE", "far",
        base=("+F", "+A"), convert="OBJ", models=("+LC", "+LD", "+L"),
        opts=("+C", "+M", "+m", "+c"),
        extras=("+R", "+N", "+U", "+0", "+1", "+2", "+J", "-n", "-O",
                "-r", "-s", "-v", "-w", "-z", "-A", "-C", "-P", "-u",
                "-k", "-f", "-i", "-b"),
    ),
    Comp(
        "aztec42", "Manx Aztec C86 v42b", "CC.EXE", "far",
        base=("+F", "+A"), convert="OBJ", models=("+LC", "+LD", "+L"),
        opts=("+C", "+M", "+m", "+c"),
        extras=("+R", "+N", "+U", "+0", "+1", "+2", "+J", "-n", "-O",
                "-r", "-s", "-v", "-w", "-z", "-A", "-C", "-P", "-u",
                "-k", "-f", "-i", "-b"),
    ),
    Comp(
        "aztec52", "Manx Aztec C86 v52a", "CC.EXE", "far",
        base=("+F", "+A"), convert="OBJ", models=("+LC", "+LD", "+L"),
        opts=("+C", "+M", "+m", "+c"),
        extras=("+R", "+N", "+U", "+0", "+1", "+2", "+J", "-n", "-O",
                "-r", "-s", "-v", "-w", "-z", "-A", "-C", "-P", "-u",
                "-k", "-f", "-i", "-b"),
    ),
    Comp(
        "zortech206", "Zortech C++ v206", "ZTC.COM", "far",
        base=("-c",), models=("-mt", "-ms", "-mc", "-ml", "-mh", "-mx"),
        opts=("-O", "-Od", "-O1", "-O2", "-O3", "-O4", "-O5"),
        extras=("-b", "-f", "-N", "-g", "-d", "-a", "-r", "-v", "-w",
                "-z", "-A", "-C", "-P", "-u", "-X", "-B", "-k"),
    ),
    Comp(
        "zortech30", "Zortech C++ v30r1", "ZTC.COM", "far",
        base=("-c",), models=("-mt", "-ms", "-mc", "-ml", "-mh", "-mx"),
        opts=("-O", "-Od", "-O1", "-O2", "-O3", "-O4", "-O5"),
        extras=("-b", "-f", "-N", "-g", "-d", "-a", "-r", "-v", "-w",
                "-z", "-A", "-C", "-P", "-u", "-X", "-B", "-k"),
    ),
    Comp(
        "mwc311", "Mark Williams MWC v311", "CC.EXE", "",
        base=("-c", "-f"), models=("-ms", "-mm", "-mc", "-ml", "-mh"),
        opts=("-O", "-O1", "-O2", "-O3", "-O4"),
        extras=("-b", "-d", "-g", "-n", "-r", "-s", "-w", "-x", "-z",
                "-A", "-C", "-P", "-u", "-k", "-N"),
        env={"CCHEAD": "@C:\\LIB\\CC -f -DMWC"},
    ),
    Comp(
        "mwc4", "Mark Williams MWC v4", "CC.EXE", "",
        base=("-c", "-f"), models=("-ms", "-mm", "-mc", "-ml", "-mh"),
        opts=("-O", "-O1", "-O2", "-O3", "-O4"),
        extras=("-b", "-d", "-g", "-n", "-r", "-s", "-w", "-x", "-z",
                "-A", "-C", "-P", "-u", "-k", "-N", "-VOPT"),
        env={"CCHEAD": "@C:\\LIB\\CC -f -DMWC -VOPT"},
    ),
    Comp(
        "mix202", "Mix C v202", "CC.COM", "",
        base=(), models=("-ms", "-mm", "-mc", "-ml"),
        opts=("-O", "-O1", "-O2", "-O3"),
        extras=("-b", "-d", "-g", "-n", "-r", "-s", "-w", "-x", "-z",
                "-A", "-C", "-P", "-u", "-k", "-N", "-f"),
    ),
    Comp(
        "mix251", "Mix C v251", "CC.COM", "",
        base=(), models=("-ms", "-mm", "-mc", "-ml"),
        opts=("-O", "-O1", "-O2", "-O3"),
        extras=("-b", "-d", "-g", "-n", "-r", "-s", "-w", "-x", "-z",
                "-A", "-C", "-P", "-u", "-k", "-N", "-f"),
    ),
    Comp(
        "powerc1", "Mix Power C v1", "PC.EXE", "",
        base=("/c", "/ms"), models=("/mt", "/ms", "/mm", "/mc", "/ml", "/mh"),
        opts=("/o", "/o1", "/o2", "/o3"),
        extras=("/d", "/g", "/n", "/r", "/s", "/w", "/x", "/z", "/A",
                "/C", "/P", "/u", "/k", "/N", "/f", "/j", "/fi", "/q"),
    ),
    Comp(
        "powerc22", "Mix Power C v22", "PC.EXE", "",
        base=("/c", "/ms"), models=("/mt", "/ms", "/mm", "/mc", "/ml", "/mh"),
        opts=("/o", "/o1", "/o2", "/o3"),
        extras=("/d", "/g", "/n", "/r", "/s", "/w", "/x", "/z", "/A",
                "/C", "/P", "/u", "/k", "/N", "/f", "/j", "/fi", "/q"),
    ),
    Comp(
        "dri11", "Digital Research C v11", "DRC.EXE", "",
        base=(), models=("-ms", "-mm", "-mc", "-ml"),
        opts=("-O", "-O1", "-O2"),
        extras=("-b", "-d", "-g", "-n", "-r", "-s", "-w", "-x", "-z",
                "-A", "-C", "-P", "-u", "-k", "-N", "-f", "-v"),
        arg_style="name_only",
    ),
    Comp(
        "cb86", "Digital Research CB-86 v2", "CB86.EXE", "",
        base=(), models=("-ms", "-mm", "-mc", "-ml"),
        opts=("-O", "-O1", "-O2"),
        extras=("-b", "-d", "-g", "-n", "-r", "-s", "-w", "-x", "-z",
                "-A", "-C", "-P", "-u", "-k", "-N", "-f", "-v"),
        arg_style="name_only", eof_ctrlz=True,
    ),
    Comp(
        "desmet24", "DeSmet C88 v24", "C88.EXE", "",
        base=(), models=("-ms", "-mm", "-mc", "-ml"),
        opts=("-O", "-O1", "-O2"),
        extras=("-b", "-d", "-g", "-n", "-r", "-s", "-w", "-x", "-z",
                "-A", "-C", "-P", "-u", "-k", "-N", "-f", "-v"),
        arg_style="name_only",
    ),
    Comp(
        "desmet31", "DeSmet C88 v31b", "C88.EXE", "",
        base=(), models=("-ms", "-mm", "-mc", "-ml"),
        opts=("-O", "-O1", "-O2"),
        extras=("-b", "-d", "-g", "-n", "-r", "-s", "-w", "-x", "-z",
                "-A", "-C", "-P", "-u", "-k", "-N", "-f", "-v"),
        convert="TOOBJ", arg_style="name_only",
    ),
    Comp(
        "desmetpcc", "DeSmet PCC v12c", "PCC.EXE", "",
        base=(), models=("-ms", "-mm", "-mc", "-ml"),
        opts=("-O", "-O1", "-O2"),
        extras=("-b", "-d", "-g", "-n", "-r", "-s", "-w", "-x", "-z",
                "-A", "-C", "-P", "-u", "-k", "-N", "-f", "-v"),
        arg_style="name_only",
    ),
    Comp(
        "intel45", "Intel iC-86 Compiler v4.5", "IC86.EXE", "",
        base=("small", "optimize(3)", "mod86", "diagnostic(2)", "define(INTELC)"),
        models=("small", "medium", "compact", "large", "huge"),
        opts=("optimize(0)", "optimize(1)", "optimize(2)", "optimize(3)",
              "optimize(4)", "optimize(5)"),
        extras=("debug", "nolist", "nogen", "noextern", "no8087", "8087",
                "nodefault", "nowarn"),
        arg_style="opts_last",
    ),
    Comp(
        "smallc", "byte small-c v1", "CC86.EXE", "",
        base=(), models=(), opts=(),
        extras=("-b", "-d", "-g", "-n", "-r", "-s", "-w", "-x", "-z",
                "-A", "-C", "-P", "-u", "-k", "-N", "-f", "-v"),
        post="MASM TEST.MAC;",
    ),
    Comp(
        "dds302", "DDS MICRO-C 8086 v3.02", "CC.COM", "",
        base=("H=C:\\", "-O", "-S"), models=(), opts=(),
        extras=("-b", "-d", "-g", "-n", "-r", "-s", "-w", "-x", "-z",
                "-A", "-C", "-P", "-u", "-k", "-N", "-f", "-v"),
        post="MASM TEST.ASM;", arg_style="opts_last",
    ),
    Comp(
        "dds323", "dds micro-c pc86 v3.23", "CC.EXE", "",
        base=("m=S", "-q"), models=("m=T", "m=S", "m=M", "m=L", "m=H"),
        opts=("-O", "-O1", "-O2"),
        extras=("-b", "-d", "-g", "-n", "-r", "-s", "-w", "-x", "-z",
                "-A", "-C", "-P", "-u", "-k", "-N", "-f", "-v"),
    ),
]


# ---------------------------------------------------------------------------
# Target fingerprints (target at 0x2528..0x277f)
# ---------------------------------------------------------------------------
PATTERNS = {
    "prologue": r"push bp\n\s*mov bp,sp\n\s*(?:sub sp,|enter)",
    "prologue_neg": r"push bp\n\s*sub sp,0x[0-9a-f]+\n\s*mov bp,sp",
    "frame": r"sub sp,0x[0-9a-f]+",
    "push4": r"push ds\n\s*push es\n\s*push si\n\s*push di",
    "push_ds_es": r"push ds\n\s*push es",
    "mov_ax_ds": r"mov ax,ds",
    "mov_es_ax": r"mov es,ax",
    "ds_es": r"mov ax,ds\n\s*mov es,ax",
    "mul_bx": r"mov ax,\[bp\+0x[0-9a-f]+\]\n\s*mov bx,0x140\n\s*mul bx",
    "mul_mem": r"mov ax,0x140\n\s*mul word \[bp\+0x[0-9a-f]+\]",
    "mul_ax_mem": r"mov ax,0x140\n\s*imul word \[bp\+0x[0-9a-f]+\]",
    "mul_dx": r"mov dx,0x140\n\s*mul dx",
    "mul_cx": r"mov cx,0x140\n\s*mul cx",
    "far_les_di": r"\bles di,",
    "far_les_si": r"\bles si,",
    "far_les_any": r"\bles (?:di|si|bx|dx|cx),",
    "far_es_di": r"es:\[[^\]]*\+di\]",
    "far_es_si": r"es:\[[^\]]*\+si\]",
    "cs_data": r"(?:,|\b)cs:\[",
    "abs": r"(?:or|test) ax,ax\n\s*jns 0x[0-9a-f]+\n\s*neg ax",
    "zext_xor": r"xor ax,ax\n\s*mov al,",
    "zext_ah": r"xor ah,ah",
    "mul3_shl": r"shl ax,0x1\n\s*add ",
    "mul3_imul": r"imul (?:ax|bx|cx|dx|si|di),0x3",
    "loop": r"\bloop ",
    "neg_step": r"mov bx,0xffff\n\s*neg bx",
    "cbw": r"\bcbw\b",
    "cwd": r"\bcwd\b",
    "push_cx": r"push cx",
}

WEIGHTS = {
    "prologue": 2.0,
    "prologue_neg": 0.5,
    "frame": 0.5,
    "push4": 1.5,
    "push_ds_es": 0.5,
    "mov_ax_ds": 0.5,
    "mov_es_ax": 0.5,
    "ds_es": 2.0,
    "mul_bx": 4.0,
    "mul_mem": -1.0,
    "mul_ax_mem": -1.0,
    "mul_dx": -1.0,
    "mul_cx": -0.5,
    "far_les_di": 2.5,
    "far_les_si": 1.5,
    "far_les_any": 0.5,
    "far_es_di": 2.0,
    "far_es_si": 1.0,
    "cs_data": 3.0,
    "abs": 1.0,
    "zext_xor": 1.0,
    "zext_ah": 0.5,
    "mul3_shl": 1.0,
    "mul3_imul": 0.5,
    "loop": 1.0,
    "neg_step": 1.0,
    "cbw": 0.2,
    "cwd": 0.2,
    "push_cx": 0.5,
}


def code_blob(path: str) -> tuple[bytes | None, str]:
    try:
        data = open(path, "rb").read()
    except OSError as e:
        return None, f"read: {e}"
    mods = omflib.find_modules(data)
    if not mods:
        return None, "no OMF module"
    blobs = []
    names = []
    for off, name, end in mods:
        try:
            m = omflib.Module(data, off, end)
        except Exception as e:  # noqa: BLE001
            return None, f"OMF: {e}"
        names.append(name)
        cs = m.code_segments()
        if not cs:
            cs = {s["id"] for s in m.segdefs if s["class"].upper() in ("CODE",)}
        for sid in sorted(cs):
            blobs.append(bytes(m.segbytes.get(sid, b"")))
    if not blobs:
        return None, "no code segment"
    return b"".join(blobs), ",".join(names)


def disasm_text(blob: bytes) -> str:
    fd, path = tempfile.mkstemp(suffix=".bin", dir=WORKROOT)
    try:
        with os.fdopen(fd, "wb") as f:
            f.write(blob)
        out = subprocess.run(["ndisasm", "-b16", path], capture_output=True,
                             text=True, check=False).stdout
    finally:
        try:
            os.unlink(path)
        except OSError:
            pass
    lines = []
    for line in out.splitlines():
        parts = line.split(None, 2)
        if len(parts) == 3:
            lines.append(parts[2].strip())
        elif len(parts) == 2:
            lines.append(parts[1].strip())
    return "\n".join(lines)


def score_blob(blob: bytes) -> dict:
    text = disasm_text(blob)
    matched = {}
    for name, pat in PATTERNS.items():
        matched[name] = bool(re.search(pat, text))
    score = sum(WEIGHTS.get(k, 0) for k, v in matched.items() if v)
    return {"score": round(score, 2), "matched": matched, "text": text}


PAIR_PRIORITY = [
    ("-v", "-t"), ("-v", "-y"), ("-v", "-z"), ("-t", "-y"), ("-t", "-z"),
    ("-y", "-z"), ("-v", "-gr"), ("-v", "-gc"), ("-v", "-gf"),
    ("-t", "-gr"), ("-t", "-gc"), ("-t", "-gf"), ("-y", "-gr"),
    ("-z", "-gr"), ("-v", "-g1"), ("-v", "-g2"), ("-v", "-w"),
    ("/Gs", "/Ox"), ("/Gs", "/Oa"), ("/Gs", "/Ow"), ("/Gs", "/Gw"),
    ("/Gs", "/Gc"), ("/Gs", "/Gd"), ("/Gs", "/Gz"), ("/Gs", "/Ge"),
    ("/Gs", "/Gf"), ("/Gs", "/Za"), ("/Gs", "/Ze"),
    ("-N-", "-k"), ("-N-", "-O"), ("-N-", "-G"), ("-N-", "-Z"),
    ("-n", "+b"), ("-n", "+m"), ("+b", "+m"), ("+b", "+n"),
    ("+M", "+R"), ("+R", "+N"), ("+M", "+N"), ("+F", "+R"),
    ("+LD", "+R"), ("+LC", "+R"), ("+L", "+R"),
]

TRIPLE_PRIORITY = [
    ("-v", "-t", "-y"), ("-v", "-t", "-z"), ("-v", "-t", "-gr"),
    ("-v", "-t", "-y", "-z"), ("-v", "-t", "-y", "-gr"),
    ("-v", "-t", "-y", "-z", "-gr"),
    ("/Gs", "/Ox", "/Gw"), ("/Gs", "/Ox", "/Gc"),
    ("/Gs", "/Od", "/Gw"), ("/Gs", "/Ox", "/Ze"),
    ("-N-", "-k", "-O"), ("-N-", "-k", "-G"), ("-N-", "-k", "-Z"),
    ("-n", "+b", "+m"), ("+b", "+m", "+n"),
    ("+LD", "+M", "+R"), ("+LC", "+M", "+R"), ("+L", "+M", "+R"),
    ("+F", "+M", "+R"), ("+F", "+R", "+N"), ("+LD", "+R", "+N"),
]


def flag_sets(comp: Comp, exhaustive: bool, max_sets: int) -> list[tuple[str, ...]]:
    def norm(*parts):
        toks = []
        for p in parts:
            if not p:
                continue
            items = p if isinstance(p, (tuple, list)) else p.split()
            for tok in items:
                if tok not in toks:
                    toks.append(tok)
        return tuple(toks)

    base = tuple(comp.base)
    models = comp.models
    opts = comp.opts
    extras = comp.extras

    sets: list[tuple[str, ...]] = []
    seen = set()

    def add(*parts):
        t = norm(*parts)
        if t not in seen:
            seen.add(t)
            sets.append(t)

    add(base)
    for m in models:
        add(base, m)
    for o in opts:
        add(base, o)
    for e in extras:
        add(base, e)

    if exhaustive:
        for m, o, e in itertools.product(models or ("",), opts or ("",),
                                        extras or ("",)):
            add(base, m, o, e)
        for m, o in itertools.product(models or ("",), opts or ("",)):
            add(base, m, o)
        for m, e in itertools.product(models or ("",), extras or ("",)):
            add(base, m, e)
        for o, e in itertools.product(opts or ("",), extras or ("",)):
            add(base, o, e)
    else:
        # One-factor-at-a-time, then the flag pairs/triples that are most
        # likely to change prologue, far-pointer and data-segment codegen.
        available = set(extras) | set(base)
        pairs = [p for p in PAIR_PRIORITY if all(t in available for t in p)]
        triples = [t for t in TRIPLE_PRIORITY if all(x in available for x in t)]
        for p in pairs:
            add(base, *p)
        for t in triples:
            add(base, *t)
        for m in models:
            for p in pairs[:8]:
                add(base, m, *p)
            for t in triples[:5]:
                add(base, m, *t)
        for o in opts:
            for p in pairs[:4]:
                add(base, o, *p)
        key_extras = [e for e in extras if e in {
            "-v", "-t", "-y", "-z", "-gr", "-gc", "-gf", "-g1", "-g2",
            "+b", "+m", "+n", "-n", "-N", "-N-", "-k", "-k-", "-f",
            "-f-", "-r", "/Gs", "/Gt", "/Gw", "/Gc", "/Gd", "/Gz",
            "/Ge", "/Gf", "/Za", "/Ze", "-O", "-G", "-Z",
        }]
        for m, o in itertools.product(models or ("",), opts or ("",)):
            add(base, m, o)
        for m, e in itertools.product(models or ("",), key_extras or ("",)):
            add(base, m, e)
        for o, e in itertools.product(opts or ("",), key_extras or ("",)):
            add(base, o, e)

    return sets[:max_sets]


def run_session(comp: Comp, sets: list[tuple[str, ...]], timeout: int,
                keep: bool) -> dict:
    work = tempfile.mkdtemp(prefix=f"mp-{comp.key}-", dir=WORKROOT)
    src = PROBE_TEMPLATE.format(farkw=comp.farkw)
    body = src.replace("\n", "\r\n")
    if comp.eof_ctrlz:
        body += "\x1a"
    with open(os.path.join(work, "TEST.C"), "w", newline="") as f:
        f.write(body)
    with open(os.path.join(work, "dosbox.conf"), "w") as f:
        f.write(CONF)
    os.symlink(os.path.join(BASE_DIR, comp.directory), os.path.join(work, "ccbin"))

    cmds = [
        f"mount c {os.path.join(work, 'ccbin')}",
        f"mount d {work}",
        "set PATH=C:\\;C:\\BIN",
    ]
    for k, v in comp.env.items():
        cmds.append(f"set {k}={v}")
    cmds += ["d:"]

    bat = ["@echo off"]
    results = []
    for i, opts in enumerate(sets):
        tag = f"R{i:03d}"
        optstr = " ".join(opts)
        srcname = "TEST" if comp.arg_style == "name_only" else "TEST.C"
        if comp.arg_style == "opts_last":
            compile_line = f"{comp.exe} {srcname} {optstr}"
        else:
            compile_line = f"{comp.exe} {optstr} {srcname}"
        compile_line = compile_line.replace("  ", " ").strip()
        bat += [
            "if exist TEST.OBJ del TEST.OBJ",
            "if exist TEST.O del TEST.O",
            "if exist TEST.MAC del TEST.MAC",
            "if exist TEST.ASM del TEST.ASM",
            f"{compile_line} > O{i:03d}.TXT",
        ]
        if comp.post:
            bat.append(f"{comp.post} > P{i:03d}.TXT")
        bat += [
            f"if exist TEST.OBJ ren TEST.OBJ {tag}.OBJ",
            f"if exist TEST.O ren TEST.O {tag}.O",
        ]
        if comp.convert:
            bat.append(f"if exist {tag}.O {comp.convert} {tag}.O > C{i:03d}.TXT")
        results.append((i, opts, tag))

    with open(os.path.join(work, "RUN.BAT"), "w", newline="") as f:
        f.write("\r\n".join(bat) + "\r\n")
    cmds.append("call RUN.BAT > RUN.LOG")

    argv = [DOSBOX, "-conf", os.path.join(work, "dosbox.conf"),
            "-nopromptfolder", "-defaultdir", work, "-fastlaunch",
            "-exit", "-nogui"]
    for c in cmds:
        argv += ["-c", c]
    argv += ["-c", "exit"]

    env = dict(os.environ)
    env.update({"HOME": work, "SDL_AUDIODRIVER": "dummy",
                "SDL_VIDEODRIVER": "dummy"})
    start = time.time()
    timed_out = False
    try:
        proc = subprocess.run(argv, env=env, capture_output=True, text=True,
                              timeout=timeout)
        stdout, stderr = proc.stdout or "", proc.stderr or ""
    except subprocess.TimeoutExpired as e:
        timed_out = True
        stdout = (e.stdout or b"").decode("latin1", "replace") if isinstance(e.stdout, bytes) else (e.stdout or "")
        stderr = (e.stderr or b"").decode("latin1", "replace") if isinstance(e.stderr, bytes) else (e.stderr or "")

    out = []
    for i, opts, tag in results:
        obj = None
        for ext in ("OBJ", "O"):
            p = os.path.join(work, f"{tag}.{ext}")
            if os.path.isfile(p):
                obj = p
                break
        rec = {"opts": list(opts), "object": None, "score": None,
               "matched": None, "note": ""}
        if obj:
            blob, note = code_blob(obj)
            rec["object"] = os.path.basename(obj)
            if blob:
                s = score_blob(blob)
                rec.update({"score": s["score"], "matched": s["matched"],
                            "note": note, "len": len(blob)})
            else:
                rec["note"] = note
        else:
            rec["note"] = "no object"
        out.append(rec)

    rec = {
        "compiler": comp.key, "dir": comp.directory, "exe": comp.exe,
        "farkw": comp.farkw, "timeout": timed_out,
        "elapsed": round(time.time() - start, 1),
        "work": work if keep else None, "results": out,
        "stdout_tail": stdout[-2000:], "stderr_tail": stderr[-1000:],
    }
    if not keep:
        # Keep the directory only if the caller may need logs; default keep.
        pass
    return rec


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--compiler", action="append", default=[],
                    help="compiler key (repeatable); default all")
    ap.add_argument("--exhaustive", action="store_true")
    ap.add_argument("--max-sets", type=int, default=180)
    ap.add_argument("--workers", type=int, default=4)
    ap.add_argument("--timeout", type=int, default=600)
    ap.add_argument("--list", action="store_true")
    ap.add_argument("--out", default=str(WORKROOT / "results.json"))
    args = ap.parse_args()

    if args.list:
        for c in COMPILERS:
            print(f"{c.key:12s} {c.directory}  ({c.exe})")
        return 0

    comps = [c for c in COMPILERS if not args.compiler or c.key in args.compiler]
    unknown = set(args.compiler) - {c.key for c in comps}
    if unknown:
        print("unknown compiler(s):", ", ".join(sorted(unknown)), file=sys.stderr)
        return 2

    jobs = []
    for c in comps:
        sets = flag_sets(c, args.exhaustive, args.max_sets)
        jobs.append((c, sets))

    print(f"{len(jobs)} compiler(s), sets: " +
          ", ".join(f"{c.key}={len(s)}" for c, s in jobs), flush=True)

    all_recs = []
    with concurrent.futures.ThreadPoolExecutor(max_workers=args.workers) as ex:
        futs = {ex.submit(run_session, c, s, args.timeout, True): c
                for c, s in jobs}
        for fut in concurrent.futures.as_completed(futs):
            c = futs[fut]
            try:
                rec = fut.result()
            except Exception as e:  # noqa: BLE001
                rec = {"compiler": c.key, "error": repr(e), "results": []}
            all_recs.append(rec)
            best = max((r for r in rec.get("results", [])
                        if r.get("score") is not None),
                       key=lambda r: r["score"], default=None)
            if best:
                print(f"{c.key:12s} best={best['score']:5.2f} "
                      f"opts={' '.join(best['opts']) or '(base)'} "
                      f"len={best.get('len')} timeout={rec.get('timeout')}",
                      flush=True)
            else:
                print(f"{c.key:12s} NO OBJECT timeout={rec.get('timeout')}",
                      flush=True)

    all_recs.sort(key=lambda r: r.get("compiler", ""))
    with open(args.out, "w") as f:
        json.dump(all_recs, f, indent=1)
    print(f"\nwrote {args.out}")

    print("\n=== ranked ===")
    rows = []
    for rec in all_recs:
        for r in rec.get("results", []):
            if r.get("score") is not None:
                rows.append((r["score"], rec["compiler"], r["opts"],
                             r.get("len"), r.get("object"), r.get("note"),
                             r.get("matched") or {}))
    for score, key, opts, ln, obj, note, matched in sorted(rows, reverse=True)[:40]:
        hits = ",".join(k for k, v in matched.items() if v)
        print(f"{score:5.2f}  {key:12s} {' '.join(opts) or '(base)':40s} "
              f"len={ln}  {hits}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
