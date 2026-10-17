"""Emit C source for a decompiled function (pure C or inline asm)."""

from .analyze import frame_skip
from .c_types import C_HEADER
from .ir import Function, Operand
from .translate import instruction_to_c


def _emit_preamble(name: str, data_offsets: set[int]) -> str:
    """Emit C preamble: includes, types, global data declarations."""
    lines = [C_HEADER]
    lines.append(f'/* Decompiled from: {name}.asm */\n')

    # Global data declarations
    if data_offsets:
        lines.append('/* ── Global data ── */')
        for off in sorted(data_offsets):
            lines.append(f'u16 g_data_{off:04x};')
        lines.append('')

    return '\n'.join(lines)


def _emit_function_pure_c(fn: Function, data_offsets: set[int],
                           label_map: dict[int, str]) -> str:
    """Emit a function that can be expressed in pure C."""
    lines = []
    lines.append(f'/* {fn.name} (0x{fn.entry_addr:04x}-0x{fn.end_addr:04x}) */')

    param_decls = []
    for p in fn.params:
        ptype = 'u16' if p.size >= 2 else 'u8'
        param_decls.append(f'{ptype} {p.name}')
    params_str = ', '.join(param_decls) if param_decls else 'void'

    lines.append(f'void {fn.name}({params_str})')
    lines.append('{')

    # Local variable declarations
    for lv in fn.locals:
        ltype = 'u16' if lv.size >= 2 else 'u8'
        lines.append(f'    {ltype} {lv.name};')

    # Register variables: track which are actually used
    used_regs_16 = set()
    used_regs_8 = set()
    for insn in fn.instructions:
        for op in insn.operands:
            r = op.value if op.type == 'reg' else ''
            if r in ('ax', 'bx', 'cx', 'dx', 'si', 'di'):
                used_regs_16.add(r)
            elif r in ('al', 'ah'):
                used_regs_16.add('ax')
                used_regs_8.add(r)
            elif r in ('bl', 'bh'):
                used_regs_16.add('bx')
                used_regs_8.add(r)
            elif r in ('cl', 'ch'):
                used_regs_16.add('cx')
                used_regs_8.add(r)
            elif r in ('dl', 'dh'):
                used_regs_16.add('dx')
                used_regs_8.add(r)

    if used_regs_16:
        lines.append('    ' + ', '.join(f'u16 {r}' for r in sorted(used_regs_16)) + ';')
    if used_regs_8:
        lines.append('    ' + ', '.join(f'u8 {r}' for r in sorted(used_regs_8)) + ';')

    lines.append('')

    # Translate instructions, skipping prologue/epilogue boilerplate
    n = len(fn.instructions)
    skip_start, skip_end = frame_skip(fn)

    for i, insn in enumerate(fn.instructions):
        if i < skip_start or i >= n - skip_end:
            continue
        c = instruction_to_c(insn, data_offsets, label_map)
        if c is not None:
            lines.append(f'    {c}')

    lines.append('}')
    lines.append('')
    return '\n'.join(lines)


def _format_asm_operand(op: Operand, label_map: dict[int, str]) -> str:
    """Format a single operand for inline asm output."""
    if op.type == 'reg':
        return op.value
    elif op.type == 'imm':
        if op.value < 0:
            return f'byte {-op.value}' if op.size == 1 else f'{-op.value}'
        return f'0x{op.value:x}'
    elif op.type == 'label':
        lbl = label_map.get(op.value, f'0x{op.value:04x}')
        return lbl
    elif op.type == 'mem':
        seg = f'{op.segment}:' if op.segment and op.segment != 'ds' else ''
        if op.base and op.index:
            idx = op.index
            disp = f' + 0x{op.value:x}' if op.value else ''
            return f'[{seg}{op.base} + {idx}{disp}]'
        if op.base:
            if op.value > 0:
                return f'[{seg}{op.base} + 0x{op.value:x}]'
            elif op.value < 0:
                return f'[{seg}{op.base} - 0x{-op.value:x}]'
            else:
                return f'[{seg}{op.base}]'
        return f'[{seg}0x{op.value:x}]'
    return '???'


def _emit_function_inline_asm(fn: Function, label_map: dict[int, str]) -> str:
    """Emit a function using GCC `.intel_syntax` inline asm blocks.

    Complex functions (with interrupts, segment regs, string ops, etc.)
    are emitted as actual __asm__ blocks containing the original instructions.
    """
    lines = []
    lines.append(f'/* {fn.name} (0x{fn.entry_addr:04x}-0x{fn.end_addr:04x}) — inline asm */')

    param_decls = []
    for p in fn.params:
        ptype = 'u16' if p.size >= 2 else 'u8'
        param_decls.append(f'{ptype} {p.name}')
    params_str = ', '.join(param_decls) if param_decls else 'void'

    lines.append(f'void {fn.name}({params_str})')
    lines.append('{')

    # Build the asm string
    asm_lines = []
    for insn in fn.instructions:
        ops_str = ', '.join(_format_asm_operand(op, label_map) for op in insn.operands)
        comment = f'  // {insn.address:04x}: {insn.raw_bytes.hex()}'
        asm_lines.append(f'    "{insn.mnemonic} {ops_str}\\n"{comment}')

    asm_body = '\n'.join(asm_lines)
    lines.append(f'    __asm__ __volatile__ (')
    lines.append(f'        ".intel_syntax noprefix\\n"')
    if asm_lines:
        lines.append(asm_body)
    lines.append(f'        ".att_syntax");')
    lines.append('}')
    lines.append('')
    return '\n'.join(lines)
