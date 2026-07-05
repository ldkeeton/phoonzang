"""NASM assembly invocation and micro-assembler.

Provides per-instruction round-trip verification: each candidate mnemonic
is assembled in isolation (at its original offset) and compared against
the original bytes.
"""

import os
import re
import subprocess
import tempfile

from capstone import Cs, CS_ARCH_X86, CS_MODE_16

NASM = 'nasm'

_assemble_cache = {}
_sem_eq_cache = {}
_sem_eq_md = None
_equ_prelude = ''
_equ_hash = 0
_label_re = None
_label_re_key = 0

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

    if o.mnemonic == n.mnemonic and o.op_str == n.op_str:
        _sem_eq_cache[key] = True
        return True

    if o.mnemonic != n.mnemonic:
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


def _build_equ_prelude(label_map, local_labels, foreign_label_map=None):
    """Build and cache the EQU preamble string for a label_map+local_labels pair."""
    global _equ_prelude, _equ_hash
    h = id(label_map) ^ id(local_labels) ^ id(foreign_label_map)
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
    _equ_prelude = '\n'.join(lines)
    if _equ_prelude:
        _equ_prelude += '\n'
    _equ_hash = h
    return _equ_prelude


def _get_label_re(label_map, local_labels, foreign_label_map=None):
    """Build and cache a combined regex for all label names."""
    global _label_re, _label_re_key
    names = []
    if label_map:
        names.extend(label_map.values())
    if local_labels:
        names.extend(local_labels.values())
    if foreign_label_map:
        names.extend(foreign_label_map.values())
    h = id(label_map) ^ id(local_labels) ^ id(foreign_label_map)
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


def micro_assemble(nasm_text, offset, label_map=None, local_labels=None, foreign_label_map=None):
    label_re = _get_label_re(label_map, local_labels, foreign_label_map)
    uses_label = label_re is not None and bool(label_re.search(nasm_text))
    key = (nasm_text, offset) if uses_label else (nasm_text,)
    if key in _assemble_cache:
        return _assemble_cache[key]

    asm = f'org {offset}\nbits 16\n{_build_equ_prelude(label_map, local_labels, foreign_label_map)}{nasm_text}\n'

    fd, asm_path = tempfile.mkstemp(suffix='.asm', text=True)
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

    if r.returncode != 0:
        _assemble_cache[key] = None
        return None

    _assemble_cache[key] = r.stdout
    return r.stdout


def clear_assemble_cache():
    global _equ_prelude, _equ_hash, _label_re, _label_re_key
    _assemble_cache.clear()
    _sem_eq_cache.clear()
    _equ_prelude = ''
    _equ_hash = 0
    _label_re = None
    _label_re_key = 0
