"""Shift-diff oracle: does an inserted block move every reference it should?

The regex census (``lib/compare/records.py``) counts the frozen spellings it
has a pattern for.  This checks the property itself, from the binaries: copy
the tree, assemble a master as is and again with ``N`` bytes inserted, pair the
two images instruction by instruction through the NASM listings, and compare
every immediate, displacement, branch target and ``dw`` word.

A value that should move but reads the same in both images is a **frozen
reference**.  Evidence, strongest first:

``moved``   the same number moved by ``N`` at another site in this image, so
            it is an address the edit relocated (a constant equal to one is
            rare; the listing line says which).
``label``   it equals a relocated label (``__zdseg_XXXX`` etc. by name, or a
            code label past the insertion point).
``string``  it equals the start of a NUL-terminated DS string.

A value that changed by anything but ``N`` is reported as ``odd`` (segment
paragraphs, sizes; usually right, listed for review).  Values under
``--floor`` (0x100) are ignored: they are overwhelmingly constants.

A displacement counts only in the segment the edit moves: ``cs:`` for a code
insert (and a raw driver's DS, which is its own image), DS for a data insert.
A ``bp`` frame slot never counts.  Immediates and ``dw`` words carry no
segment and always count.

**Frozen.**  This file defines the progress number in ``plan.md`` §1.  Change it
only to fix a defect, and then re-measure every tree in that table.

Variants: ``code`` inserts before the middle routine ``%include`` of the
master; ``data`` inserts at the start of the DS (``__zdseg_start:``) of an MZ
host, or, for an overlay, of the host it includes; ``host`` (overlays only)
inserts before the host's first routine ``%include``, which moves the host's
resident-code end and so the overlay's load origin ``o_corg``: every code
address in the overlay must move.

The report is ``disassembler/shift_oracle_report.py``.
"""

import os
import re
import shutil
import subprocess
import tempfile
from pathlib import Path

from capstone import Cs, CS_ARCH_X86, CS_MODE_16, CS_GRP_JUMP, CS_GRP_CALL
from capstone.x86 import (X86_OP_IMM, X86_OP_MEM, X86_REG_BP, X86_REG_CS,
                          X86_REG_INVALID)

TREE = Path(__file__).resolve().parents[3] / 'src_DSAVANT'
MARK = '; shift-oracle insert'

_LST_RE = re.compile(
    r'^\s*(\d+) (?:([0-9A-F]{8}) ([^\s<]+(?:<rep [0-9A-F]+h>)?-?))?'
    r'\s*(?:<(\d+)>)?\s?(.*)$')
_INCLUDE_RE = re.compile(r'^\s*%include\s+"([^"]+)"')
_ROUTINE_INCLUDE_RE = re.compile(r'^%include\s+"(?!inc/)[^"]+"')
_LABEL_PREFIX_RE = re.compile(r'^[A-Za-z_.@$?][\w.@$?]*:\s*')
_MAP_ROW_RE = re.compile(r'^\s*([0-9A-F]+)\s+([0-9A-F]+)\s+(\S+)\s*$')
_MAP_EQU_RE = re.compile(r'^([0-9A-F]+)\s+(\S+)\s*$')
_NAMED_DS_RE = re.compile(r'^__z(?:dseg|bss|obss)_([0-9a-f]{4})$')
_SKIP_DIRECTIVES = {'db', 'dd', 'dq', 'dt', 'times', 'align', 'alignb',
                    'resb', 'resw', 'resd', 'incbin', 'section', 'absolute',
                    'bits', 'org', 'struc', 'endstruc', 'istruc', 'iend',
                    'at', 'equ'}


def _nasm(master, root, out_dir, tag):
    binp = os.path.join(out_dir, f'{tag}.bin')
    lst = os.path.join(out_dir, f'{tag}.lst')
    mapp = os.path.join(out_dir, f'{tag}.map')
    r = subprocess.run(
        ['nasm', '-O0', '-f', 'bin', '-w-number-overflow', '-w-other',
         f'-I{root}/', '--before', f'[map symbols {mapp}]',
         '-l', lst, '-o', binp, master],
        capture_output=True, text=True)
    if r.returncode != 0:
        raise RuntimeError(f'nasm {tag}: {r.stderr.strip()[:2000]}')
    return (Path(binp).read_bytes(), Path(lst).read_text(errors='replace'),
            Path(mapp).read_text(errors='replace'))


class Item:
    __slots__ = ('kind', 'off', 'words', 'file', 'line', 'text')

    def __init__(self, kind, off, words, file, line, text):
        self.kind, self.off, self.words = kind, off, words
        self.file, self.line, self.text = file, line, text


def _parse_listing(text, master):
    """Instruction and ``dw`` lines of the image, in order.

    Lines inside ``include/host_symbols.inc`` assemble into a nobits section (the
    host's frame) and are skipped.  The include stack recovers each line's file.
    """
    items = []
    stack = [master]
    depth = 0
    pending = None
    host_depth = None
    for raw in text.splitlines():
        m = _LST_RE.match(raw)
        if not m:
            continue
        lineno, off, hexb, d, src = m.groups()
        d = int(d or 0)
        if d > depth and pending is not None:
            stack.append(pending)
        while d < depth and len(stack) > 1:
            stack.pop()
            depth -= 1
        depth = d
        if host_depth is not None and d <= host_depth:
            host_depth = None
        inc = _INCLUDE_RE.match(src)
        pending = inc.group(1) if inc else None
        if inc and inc.group(1) == 'include/host_symbols.inc':
            host_depth = d
        if off is None or not hexb or host_depth is not None:
            continue
        code = _LABEL_PREFIX_RE.sub('', src.split(';', 1)[0].strip())
        if not code or code.startswith('%'):
            continue
        op = code.split(None, 1)[0].lower()
        if op == 'dw':
            n = len(code.split(None, 1)[1].split(','))
            items.append(Item('dw', int(off, 16), n, stack[-1], int(lineno),
                              src.strip()))
        elif op not in _SKIP_DIRECTIVES and '??' not in hexb:
            items.append(Item('insn', int(off, 16), 0, stack[-1], int(lineno),
                              src.strip()))
    return items


def _parse_map(text):
    """``(equs, labels)``: ``{name: value}`` and ``{name: (real, virtual)}``."""
    equs, labels = {}, {}
    section = None
    for line in text.splitlines():
        if line.startswith('---- '):
            section = line
            continue
        if section is None:
            continue
        m = _MAP_ROW_RE.match(line)
        if m and 'No Section' not in section:
            labels[m.group(3)] = (int(m.group(1), 16), int(m.group(2), 16),
                                  '.host' in section)
            continue
        m = _MAP_EQU_RE.match(line)
        if m and 'No Section' in section:
            equs[m.group(2)] = int(m.group(1), 16)
    return equs, labels


def _operands(md, data, off, vaddr):
    """``[(slot, value, seg)]`` for one instruction; ``None`` if it won't decode.

    *seg* is a displacement's segment, ``'cs'`` or ``'ds'`` (``None`` for an
    immediate, whose space only dataflow could tell).  A ``bp``-based
    displacement without an override is an SS frame slot, never an address,
    and is left out.
    """
    insn = next(md.disasm(data[off:off + 16], vaddr, 1), None)
    if insn is None:
        return None, None
    branch = (CS_GRP_JUMP in insn.groups or CS_GRP_CALL in insn.groups)
    out = []
    for i, op in enumerate(insn.operands):
        if op.type == X86_OP_IMM:
            if branch and insn.imm_size and len(insn.operands) == 1 \
                    and not insn.mnemonic.startswith('l'):
                out.append((f'target{i}', op.imm & 0xffff, None))
            elif insn.imm_size == 2 or (branch and insn.imm_size):
                out.append((f'imm{i}', op.imm & 0xffff, None))
        elif op.type == X86_OP_MEM and insn.disp_size == 2:
            seg = op.mem.segment
            if seg == X86_REG_CS:
                space = 'cs'
            elif seg == X86_REG_INVALID and op.mem.base == X86_REG_BP:
                continue
            else:
                space = 'ds'
            out.append((f'disp{i}', op.mem.disp & 0xffff, space))
    return insn, out


def _strings(ds):
    out = set()
    for s in range(len(ds)):
        if s and ds[s - 1] != 0:
            continue
        run = 0
        while s + run < len(ds) and 0x20 <= ds[s + run] < 0x7f:
            run += 1
        if run >= 3 and s + run < len(ds) and ds[s + run] in (0, 0x24):
            out.add(s)
    return out


def _kind(src):
    if 'include/host_symbols.inc' in src:
        return 'overlay'
    if '__zdseg_start:' in src:
        return 'mz'
    return 'driver'


def _insert(src, anchor_line):
    lines = src.split('\n')
    return '\n'.join(lines[:anchor_line] + [f'    times {{N}} db 0x90 {MARK}']
                     + lines[anchor_line:])


def _code_anchor(src):
    lines = src.split('\n')
    incs = [i for i, l in enumerate(lines) if _ROUTINE_INCLUDE_RE.match(l)]
    if not incs:
        raise RuntimeError('no routine %include to insert before')
    return incs[len(incs) // 2]


def _host_code_anchor(src):
    lines = src.split('\n')
    for i, l in enumerate(lines):
        if _ROUTINE_INCLUDE_RE.match(l):
            return i
    raise RuntimeError('no routine %include to insert before')


def _data_anchor(src):
    lines = src.split('\n')
    for i, l in enumerate(lines):
        if l.strip() == '__zdseg_start:':
            return i + 1
    raise RuntimeError('no __zdseg_start: line')


def run(binary, variant, n=16, floor=0x100, tree=TREE):
    master_name = f'{binary}.asm'
    src = (tree / master_name).read_text()
    kind = _kind(src)
    with tempfile.TemporaryDirectory() as d:
        root = os.path.join(d, 'src')
        shutil.copytree(tree, root, ignore=shutil.ignore_patterns(
            'build_out', '*.c', '*.s', '*.o', '*.bin'))
        master = os.path.join(root, master_name)
        bin0, lst0, map0 = _nasm(master, root, d, 'orig')

        if variant == 'code':
            edit_path, edit_src = master, src
            anchor = _code_anchor(src)
        elif variant == 'host':
            if kind != 'overlay':
                return {'binary': binary, 'variant': variant, 'skip':
                        'only an overlay loads at the host\'s code end'}
            edit_path = os.path.join(root, 'ds.asm')
            edit_src = (tree / 'ds.asm').read_text()
            anchor = _host_code_anchor(edit_src)
        elif variant == 'data':
            if kind == 'driver':
                return {'binary': binary, 'variant': variant, 'skip':
                        'a driver has no separate DS; its data moves with code'}
            if kind == 'overlay':
                host = 'ds.asm'
                edit_path = os.path.join(root, host)
                edit_src = (tree / host).read_text()
            else:
                edit_path, edit_src = master, src
            anchor = _data_anchor(edit_src)
        else:
            raise ValueError(variant)
        Path(edit_path).write_text(_insert(edit_src, anchor).replace('{N}', str(n)))
        bin1, lst1, map1 = _nasm(master, root, d, 'grown')

    items0 = _parse_listing(lst0, master_name)
    items1 = _parse_listing(lst1, master_name)
    if len(items0) != len(items1):
        raise RuntimeError(f'{binary}: listings do not pair '
                           f'({len(items0)} vs {len(items1)} items)')
    equs0, labels0 = _parse_map(map0)
    equs1, labels1 = _parse_map(map1)

    # Virtual minus real for the image's own section, from any label.
    text_labels = {k: v for k, v in labels0.items() if not v[2]}
    vdelta = 0
    for real, virt, _ in text_labels.values():
        vdelta = (virt - real)
        break
    image_base = equs0.get('IMAGE_BASE', 0)
    if image_base >= 1 << 31:
        image_base -= 1 << 32
    # Operand value of a code label: its virtual address, except a raw driver,
    # which assembles at 0 and runs at CS:0x100 (``label - IMAGE_BASE``).
    code_bias = -image_base if kind == 'driver' else 0

    # Where the insert went, in the original image's virtual space.
    ins_real = None
    for raw in lst1.splitlines():
        if MARK in raw:
            m = _LST_RE.match(raw)
            if m and m.group(2):
                ins_real = int(m.group(2), 16)
            break

    candidates = {}
    if variant == 'data':
        for name in list(labels0) + list(equs0):
            m = _NAMED_DS_RE.match(name)
            if m:
                candidates.setdefault(int(m.group(1), 16), 'label')
        ds_start = labels0.get('__zdseg_start')
        if kind == 'mz' and ds_start:
            for s in _strings(bin0[ds_start[0]:]):
                candidates.setdefault(s, 'string')
    elif variant == 'host':
        # The whole overlay moves with ``o_corg``: each of its code labels.
        for name, (real, virt, host) in text_labels.items():
            if not host and not name.startswith('__zinsn_'):
                candidates.setdefault(virt & 0xffff, 'label')
    elif ins_real is not None:
        code_end = labels0.get('__zdseg_start', labels0.get('__zdata_start'))
        for name, (real, virt, host) in text_labels.items():
            if host or name.startswith('__zinsn_'):
                continue
            if real >= ins_real and (code_end is None or real < code_end[0]):
                candidates.setdefault((virt + code_bias) & 0xffff, 'label')

    # The displacement segment the edit relocates: CS for a code insert (a
    # raw driver's DS is its own image, so DS too), DS for a data insert.  An
    # overlay's CS and DS offsets overlap, so a DS displacement can equal a
    # code label by chance; it is not evidence for a code insert.
    moving = ({'cs', 'ds'} if kind == 'driver' else {'cs'}) \
        if variant in ('code', 'host') else {'ds'}

    md = Cs(CS_ARCH_X86, CS_MODE_16)
    md.detail = True
    pairs = []
    moved_values = set()
    for a, b in zip(items0, items1):
        if a.kind == 'dw':
            for k in range(a.words):
                if a.off + 2 * k + 2 > len(bin0) or b.off + 2 * k + 2 > len(bin1):
                    break
                v0 = int.from_bytes(bin0[a.off + 2 * k:a.off + 2 * k + 2], 'little')
                v1 = int.from_bytes(bin1[b.off + 2 * k:b.off + 2 * k + 2], 'little')
                pairs.append((a, f'word{k}', v0, v1))
        else:
            i0, ops0 = _operands(md, bin0, a.off, (a.off + vdelta) & 0xffff)
            i1, ops1 = _operands(md, bin1, b.off, (b.off + vdelta) & 0xffff)
            if i0 is None or i1 is None or len(ops0) != len(ops1):
                continue
            for (slot, v0, seg), (_, v1, _) in zip(ops0, ops1):
                if seg is not None and seg not in moving:
                    continue
                if slot.startswith('target'):
                    # Relative branch: map the original target into the grown
                    # image's space, then the move is what the edit predicts.
                    ins_v = (ins_real + vdelta) & 0xffff if ins_real is not None else None
                    want = v0
                    if variant == 'code' and ins_v is not None and v0 >= ins_v:
                        want = (v0 + n) & 0xffff
                    pairs.append((a, slot, want, v1))
                    continue
                pairs.append((a, slot, v0, v1))
    for _, slot, v0, v1 in pairs:
        if not slot.startswith('target') and (v1 - v0) & 0xffff == n and v0 >= floor:
            moved_values.add(v0)

    frozen, odd = [], []
    moved = branches_bad = 0
    for item, slot, v0, v1 in pairs:
        if slot.startswith('target'):
            if v0 != v1:
                branches_bad += 1
                frozen.append((item, slot, v0, v1, 'branch'))
            continue
        delta = (v1 - v0) & 0xffff
        if delta == n:
            moved += 1
        elif delta == 0:
            if v0 < floor:
                continue
            why = ('moved' if v0 in moved_values else candidates.get(v0))
            if why is None:
                continue
            if not _spelled(item.text, v0):
                # The operand is an expression NASM computed: it stayed put
                # because its symbol did, e.g. a CS label equal to a moved DS
                # number.  Kept apart; a wrong-symbol binding shows up here.
                why = 'symbolic'
            frozen.append((item, slot, v0, v1, why))
        else:
            odd.append((item, slot, v0, v1, f'+0x{delta:x}'))
    return {'binary': binary, 'variant': variant, 'kind': kind, 'n': n,
            'items': len(items0), 'moved': moved, 'frozen': frozen,
            'odd': odd, 'size': (len(bin0), len(bin1))}


def _spelled(text, value):
    """Whether *text* spells *value* (or its negation) as a number."""
    code = text.split(';', 1)[0].lower()
    for v in (value, (-value) & 0xffff):
        if re.search(rf'\b0x0*{v:x}\b', code):
            return True
    return False


def masters(tree=TREE):
    return sorted(p.stem for p in tree.glob('*.asm'))
