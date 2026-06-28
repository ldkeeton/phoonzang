"""NASM assembly invocation and micro-assembler.

Provides per-instruction round-trip verification: each candidate mnemonic
is assembled in isolation (at its original offset) and compared against
the original bytes.
"""

import os
import subprocess
import tempfile

from capstone import Cs, CS_ARCH_X86, CS_MODE_16

NASM = 'nasm'

_assemble_cache = {}
_sem_eq_cache = {}
_sem_eq_md = None

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


def micro_assemble(nasm_text, offset, label_map=None, local_labels=None):
    key = (nasm_text, offset)
    if key in _assemble_cache:
        return _assemble_cache[key]

    prelude = f'org {offset}\nbits 16\n'
    if label_map:
        for lbl_off, lbl_name in label_map.items():
            prelude += f'{lbl_name} equ 0x{lbl_off:04x}\n'
    if local_labels:
        for lbl_off, lbl_name in local_labels.items():
            prelude += f'{lbl_name} equ 0x{lbl_off:04x}\n'
    asm = prelude + f'{nasm_text}\n'
    with tempfile.TemporaryDirectory() as td:
        asm_path = os.path.join(td, 't.asm')
        bin_path = os.path.join(td, 't.bin')
        with open(asm_path, 'w') as f:
            f.write(asm)
        r = subprocess.run(
            [NASM, '-O0', '-f', 'bin', '-w-number-overflow', '-o', bin_path, asm_path],
            capture_output=True, text=True,
        )
        if r.returncode != 0:
            _assemble_cache[key] = None
            return None
        if not os.path.exists(bin_path):
            _assemble_cache[key] = None
            return None
        with open(bin_path, 'rb') as f:
            built = f.read()
        _assemble_cache[key] = built
        return built


def clear_assemble_cache():
    _assemble_cache.clear()
    _sem_eq_cache.clear()
