"""NASM assembly invocation and micro-assembler.

Provides per-instruction round-trip verification: each candidate mnemonic
is assembled in isolation (at its original offset) and compared against
the original bytes.
"""

import os
import re
import subprocess
import tempfile
import time

from capstone import Cs, CS_ARCH_X86, CS_MODE_16

NASM = 'nasm'

_assemble_cache = {}
_sem_eq_cache = {}
_sem_eq_md = None
_equ_prelude = ''
_equ_hash = 0
_label_re = None
_label_re_key = 0

# NASM invocation accounting for ``main/runner.py``'s timing line.
_stats = {'spawns': 0, 'hits': 0, 'time': 0.0}


def assemble_stats():
    return dict(_stats)


def reset_assemble_stats():
    _stats['spawns'] = 0
    _stats['hits'] = 0
    _stats['time'] = 0.0

_COMMUTATIVE = {
    'xchg', 'add', 'or', 'and', 'xor', 'adc',
    'mul', 'imul', 'fadd', 'fmul',
}


def _get_sem_eq_md():
    global _sem_eq_md
    if _sem_eq_md is None:
        _sem_eq_md = Cs(CS_ARCH_X86, CS_MODE_16)
        _sem_eq_md.detail = True
    return _sem_eq_md


def _reg_ids(insn):
    """Return a sorted tuple of register IDs referenced by *insn*."""
    from capstone import CS_OP_REG
    regs = []
    for op in insn.operands:
        if op.type == CS_OP_REG:
            regs.append(op.reg)
    return tuple(sorted(regs))


def is_semantically_equivalent(orig_bytes, nasm_bytes, address):
    """True if both decode to semantically equivalent instructions.

    Handles encoding variants: different ModR/M for reg-reg moves,
    different opcode forms (89 vs 8B for mov), commutative operand
    order, and Capstone naming quirks (cwde vs cbw).
    """
    if len(orig_bytes) != len(nasm_bytes):
        return False
    key = (bytes(orig_bytes), bytes(nasm_bytes), address)
    if key in _sem_eq_cache:
        return _sem_eq_cache[key]
    md = _get_sem_eq_md()
    try:
        o = next(md.disasm(orig_bytes, address))
        n = next(md.disasm(nasm_bytes, address))
    except StopIteration:
        _sem_eq_cache[key] = False
        return False

    # SAL and SHL are the same operation; NASM canonicalises to SHL (opcode
    # /4) while the original may use SAL (/6).  Treat them as equivalent.
    o_mnem, n_mnem = o.mnemonic, n.mnemonic
    if {o_mnem, n_mnem} == {'sal', 'shl'}:
        o_mnem = n_mnem = 'shl'

    if o_mnem == n_mnem and o.op_str == n.op_str:
        _sem_eq_cache[key] = True
        return True

    if o_mnem != n_mnem:
        _sem_eq_cache[key] = False
        return False

    if o.mnemonic in _COMMUTATIVE:
        from capstone import CS_OP_REG
        o_ops = [op for op in o.operands if op.type == CS_OP_REG]
        n_ops = [n for n in n.operands if n.type == CS_OP_REG]
        if len(o_ops) == len(o.operands) == len(n_ops) == len(n.operands):
            result = (_reg_ids(o) == _reg_ids(n))
            _sem_eq_cache[key] = result
            return result

    _sem_eq_cache[key] = False
    return False


def _equ_hex(value):
    """Format an integer for an ``equ`` right-hand side (width-4 hex).

    A raw driver's ``IMAGE_BASE`` is the negative of its ``load_offset``
    (plan.md D7.6), so negatives must round-trip through NASM.
    """
    if value < 0:
        return f'-0x{-value:04x}'
    return f'0x{value:04x}'


def _build_equ_prelude(label_map, local_labels, foreign_label_map=None, immediate_labels=None,
                       disp_labels=None, image_base=None, mem_equ=None):
    """Build and cache the EQU preamble string for a label_map+local_labels pair."""
    global _equ_prelude, _equ_hash
    h = (id(label_map) ^ id(local_labels) ^ id(foreign_label_map)
         ^ id(immediate_labels) ^ id(disp_labels) ^ hash(image_base)
         ^ id(mem_equ))
    if h == _equ_hash and _equ_prelude:
        return _equ_prelude
    lines = []
    if label_map:
        for lbl_off, lbl_name in label_map.items():
            lines.append(f'{lbl_name} equ 0x{lbl_off:04x}')
    if local_labels:
        for lbl_off, lbl_name in local_labels.items():
            lines.append(f'{lbl_name} equ 0x{lbl_off:04x}')
    if foreign_label_map:
        for lbl_off, lbl_name in foreign_label_map.items():
            lines.append(f'{lbl_name} equ 0x{lbl_off:04x}')
    if immediate_labels:
        for lbl_off, lbl_name in immediate_labels.items():
            lines.append(f'{lbl_name} equ 0x{lbl_off:04x}')
    if (disp_labels or mem_equ) and image_base is not None:
        # Switch-table symbols and code-segment operand symbols are load-image
        # offsets; define each at its absolute file offset so `name -
        # IMAGE_BASE` reproduces the disp.  A raw driver's ``load_offset``
        # enters as a negative base (plan.md D7.6).
        lines.append(f'IMAGE_BASE equ {_equ_hex(image_base)}')
    if disp_labels and image_base is not None:
        for disp, lbl_name in disp_labels.items():
            lines.append(f'{lbl_name} equ {_equ_hex(disp + image_base)}')
    if mem_equ:
        for name, value in mem_equ.items():
            lines.append(f'{name} equ 0x{value:04x}')
    _equ_prelude = '\n'.join(lines)
    if _equ_prelude:
        _equ_prelude += '\n'
    _equ_hash = h
    return _equ_prelude


def _get_label_re(label_map, local_labels, foreign_label_map=None, immediate_labels=None,
                  disp_labels=None, image_base=None, mem_equ=None):
    """Build and cache a combined regex for all label names."""
    global _label_re, _label_re_key
    names = []
    if label_map:
        names.extend(label_map.values())
    if local_labels:
        names.extend(local_labels.values())
    if foreign_label_map:
        names.extend(foreign_label_map.values())
    if immediate_labels:
        names.extend(immediate_labels.values())
    if disp_labels and image_base is not None:
        names.extend(disp_labels.values())
    if (disp_labels or mem_equ) and image_base is not None:
        names.append('IMAGE_BASE')
    if mem_equ:
        names.extend(mem_equ)
    h = (id(label_map) ^ id(local_labels) ^ id(foreign_label_map)
         ^ id(immediate_labels) ^ id(disp_labels) ^ hash(image_base)
         ^ id(mem_equ))
    if h == _label_re_key and _label_re is not None:
        return _label_re
    if not names:
        _label_re = None
        _label_re_key = h
        return None
    pat = '|'.join(re.escape(n) for n in names)
    _label_re = re.compile(pat)
    _label_re_key = h
    return _label_re


def micro_assemble(nasm_text, offset, label_map=None, local_labels=None, foreign_label_map=None,
                   immediate_labels=None, disp_labels=None, image_base=None, mem_equ=None):
    label_re = _get_label_re(label_map, local_labels, foreign_label_map,
                             immediate_labels, disp_labels, image_base, mem_equ)
    uses_label = label_re is not None and bool(label_re.search(nasm_text))
    if uses_label or _needs_origin(nasm_text):
        key = (nasm_text, offset, id(mem_equ))
    else:
        key = (nasm_text,)
    if key in _assemble_cache:
        _stats['hits'] += 1
        return _assemble_cache[key]

    asm = (f'org {offset}\nbits 16\n'
           f'{_build_equ_prelude(label_map, local_labels, foreign_label_map, immediate_labels, disp_labels, image_base, mem_equ)}'
           f'{nasm_text}\n')

    fd, asm_path = tempfile.mkstemp(suffix='.asm', text=True)
    t0 = time.perf_counter()
    try:
        with os.fdopen(fd, 'w') as f:
            f.write(asm)
        r = subprocess.run(
            [NASM, '-O0', '-f', 'bin', '-w-number-overflow', '-o', '/dev/stdout', asm_path],
            capture_output=True, timeout=30,
        )
    finally:
        try:
            os.unlink(asm_path)
        except OSError:
            pass
    _stats['spawns'] += 1
    _stats['time'] += time.perf_counter() - t0

    if r.returncode != 0:
        _assemble_cache[key] = None
        return None

    _assemble_cache[key] = r.stdout
    return r.stdout


_LINE_RE = re.compile(r'^\s*(\d+)\s+([0-9A-Fa-f]{8})\s+([0-9A-Fa-f()]+)\s*(.*)$')
_ERR_RE = re.compile(r':(\d+):\s*(?:error|fatal):')


def _hex_len(field):
    return sum(1 for c in field if c in '0123456789abcdefABCDEF') // 2


def _needs_origin(text):
    """True when NASM encodes *text* relative to the current position.

    Only relative control-transfer instructions depend on ``$``; every other
    16-bit instruction assembles to the same bytes regardless of origin.  Such
    origin-independent instructions can share one section (keeping NASM fast),
    while branches get their own ``vstart``.
    """
    token = text.strip().split(None, 1)[0].lower()
    if token.startswith('j'):
        return True
    if token in ('call', 'lcall', 'loop', 'loope', 'loopne', 'jcxz', 'jecxz'):
        return True
    return '$' in text


def assemble_batch(requests, label_map=None, local_labels=None,
                   foreign_label_map=None, immediate_labels=None,
                   disp_labels=None, image_base=None, mem_equ=None):
    """Assemble many ``(text, offset)`` instructions in one NASM run.

    Each origin-independent instruction is emitted bare; only relative
    control-transfer instructions (whose encoding depends on ``$``) get their
    own ``align=1 vstart=<offset>`` section so NASM sees the correct origin.
    The output stays a dense concatenation we can slice, and the listing file
    supplies each instruction's assembled length.

    Returns a list aligned with *requests*: the assembled bytes for each, or
    ``None`` when that instruction cannot be assembled (same contract as
    :func:`micro_assemble`).  Returns ``None`` if the batch cannot be processed
    structurally, signalling the caller to fall back to per-instruction
    assembly.
    """
    reqs = list(requests)
    if not reqs:
        return []
    prelude = _build_equ_prelude(
        label_map, local_labels, foreign_label_map, immediate_labels,
        disp_labels, image_base, mem_equ)

    bad = [False] * len(reqs)
    for _ in range(len(reqs) + 1):
        lines = ['bits 16']
        if prelude:
            lines.extend(prelude.rstrip('\n').split('\n'))
        req_line = {}
        need_section = True
        for i, req in enumerate(reqs):
            if req is None or bad[i]:
                continue
            text, offset = req
            if need_section or _needs_origin(text):
                lines.append(f'section s{i} align=1 vstart=0x{offset:x}')
                need_section = False
            lines.append(text)
            req_line[len(lines)] = i

        fd, asm_path = tempfile.mkstemp(suffix='.asm', text=True)
        lst_path = asm_path + '.lst'
        bin_path = asm_path + '.bin'
        try:
            with os.fdopen(fd, 'w') as f:
                f.write('\n'.join(lines) + '\n')
            t0 = time.perf_counter()
            r = subprocess.run(
                [NASM, '-O0', '-f', 'bin', '-w-number-overflow',
                 '-o', bin_path, '-l', lst_path, asm_path],
                capture_output=True, timeout=120,
            )
            _stats['spawns'] += 1
            _stats['time'] += time.perf_counter() - t0

            if r.returncode != 0:
                found = False
                for m in _ERR_RE.finditer(r.stderr.decode(errors='replace')):
                    line_no = int(m.group(1))
                    cands = [(ln, i) for ln, i in req_line.items()
                             if ln <= line_no]
                    if cands:
                        bad[max(cands)[1]] = True
                        found = True
                if not found:
                    return None
                continue

            with open(bin_path, 'rb') as f:
                blob = f.read()
            lengths = {}
            with open(lst_path) as f:
                for line in f:
                    m = _LINE_RE.match(line)
                    if m:
                        lengths[int(m.group(1))] = _hex_len(m.group(3))

            result = [None] * len(reqs)
            pos = 0
            for line_no in sorted(req_line):
                size = lengths.get(line_no, 0)
                result[req_line[line_no]] = blob[pos:pos + size]
                pos += size
            if pos != len(blob):
                return None
            return result
        finally:
            for path in (asm_path, lst_path, bin_path):
                try:
                    os.unlink(path)
                except OSError:
                    pass
    return None


def clear_assemble_cache():
    global _equ_prelude, _equ_hash, _label_re, _label_re_key
    _assemble_cache.clear()
    _sem_eq_cache.clear()
    _equ_prelude = ''
    _equ_hash = 0
    _label_re = None
    _label_re_key = 0
