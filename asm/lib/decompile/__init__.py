"""Decompile disassembled 16-bit x86 to C.

Hooks into the pipeline after Capstone disassembly to produce C source
that can be compiled with Turbo C 2.01 (small/tiny model).
"""

import capstone as _cs

from .ir import Instruction, Operand, Function, BasicBlock
from .analyze import analyze_frame
from .translate import instruction_to_c, operand_to_c
from .c_types import C_HEADER, C_FOOTER


# Capstone operand types
_CS_OP_REG = 1
_CS_OP_IMM = 2
_CS_OP_MEM = 3


def _cs_to_operand(cs_op, cs_insn) -> Operand:
    """Convert a Capstone operand to our IR Operand."""
    op = Operand(type='???', size=cs_op.size)

    if cs_op.type == _CS_OP_REG:
        op.type = 'reg'
        op.value = cs_insn.reg_name(cs_op.reg)
    elif cs_op.type == _CS_OP_IMM:
        op.type = 'imm'
        op.value = cs_op.imm
    elif cs_op.type == _CS_OP_MEM:
        op.type = 'mem'
        op.value = cs_op.mem.disp
        op.base = cs_insn.reg_name(cs_op.mem.base) if cs_op.mem.base else ''
        op.index = cs_insn.reg_name(cs_op.mem.index) if cs_op.mem.index else ''
        seg = cs_op.mem.segment
        op.segment = cs_insn.reg_name(seg) if seg else ''
    return op


def _capstone_to_ir(cs_insns: list) -> list[Instruction]:
    """Convert Capstone CsInsn list to our IR instructions."""
    result = []
    for ci in cs_insns:
        ops = []
        for co in ci.operands:
            ops.append(_cs_to_operand(co, ci))
        result.append(Instruction(
            address=ci.address,
            mnemonic=ci.mnemonic,
            raw_bytes=bytes(ci.bytes),
            operands=ops,
        ))
    return result


def _find_global_data_offsets(instructions: list[Instruction]) -> set[int]:
    """Find all offsets accessed as [cs:data_xxxx] or [cs:0xXXXX].
    
    Only includes displacements >= 0x100 to avoid false positives from
    register-based accesses like [cs:bx] (which show as disp=0).
    """
    offsets: set[int] = set()
    for insn in instructions:
        for op in insn.operands:
            if op.type == 'mem' and op.segment == 'cs' and op.value >= 0x100:
                offsets.add(op.value)
    return offsets


def _extract_functions(instructions: list[Instruction],
                       label_map: dict[int, str],
                       code_targets: set[int] | None = None) -> list[Function]:
    """Group instructions into functions by label boundaries."""
    insn_by_addr = {insn.address: insn for insn in instructions}

    func_starts: list[int] = []
    for addr, name in sorted(label_map.items()):
        if addr not in insn_by_addr:
            continue
        if name.startswith('@..') or name.startswith('data_'):
            continue
        if code_targets is not None and addr not in code_targets:
            continue
        func_starts.append(addr)

    if not func_starts:
        return []

    func_starts.sort()
    functions: list[Function] = []

    for i, start in enumerate(func_starts):
        end = func_starts[i + 1] if i + 1 < len(func_starts) else instructions[-1].address + 1
        func_insns = [insn for insn in instructions if start <= insn.address < end]
        if func_insns:
            fn = Function(
                name=label_map.get(start, f'loc_{start:04x}'),
                entry_addr=start,
                end_addr=end,
                instructions=func_insns,
            )
            analyze_frame(fn)
            functions.append(fn)

    return functions


def _count_leading_dws(instructions: list[Instruction]) -> int:
    """Count leading push word operations to estimate param count."""
    count = 0
    for insn in instructions:
        if insn.mnemonic == 'push' and len(insn.operands) == 1:
            op = insn.operands[0]
            if op.type == 'mem' and op.base == 'bp' and op.value >= 0:
                break
            if op.type == 'imm' or (op.type == 'reg' and op.value not in ('bp', 'sp')):
                count += 1
            else:
                break
        else:
            break
    return count


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


def _emit_stub_push_pop() -> str:
    return ''''''


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
    skip_start = 0
    skip_end = 0

    # Detect standard prologue: push bp; mov bp, sp [; sub sp, N]
    if n >= 2:
        i0, i1 = fn.instructions[0], fn.instructions[1]
        if (i0.mnemonic == 'push' and len(i0.operands) == 1
                and i0.operands[0].type == 'reg' and i0.operands[0].value == 'bp'):
            if (i1.mnemonic == 'mov' and len(i1.operands) == 2
                    and i1.operands[0].value == 'bp' and i1.operands[1].value == 'sp'):
                skip_start = 2
                # sub sp, N is optional
                if n >= 3 and fn.instructions[2].mnemonic == 'sub':
                    i2 = fn.instructions[2]
                    if (len(i2.operands) == 2 and i2.operands[0].value == 'sp'
                            and i2.operands[1].type == 'imm'):
                        skip_start = 3

    # Detect standard epilogue: mov sp, bp; pop bp; ret
    if n >= 2:
        i_last = fn.instructions[-1]
        if i_last.mnemonic in ('ret', 'retf'):
            skip_end = 1
            if n >= 2:
                i_n2 = fn.instructions[-2]
                if i_n2.mnemonic == 'pop' and i_n2.operands[0].value == 'bp':
                    skip_end = 2
                    if n >= 3:
                        i_n3 = fn.instructions[-3]
                        if i_n3.mnemonic == 'mov' and i_n3.operands[0].value == 'sp' and i_n3.operands[1].value == 'bp':
                            skip_end = 3

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


def _emit_function_inline_asm(fn: Function, binary_data: bytes, label_map: dict[int, str]) -> str:
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


def decompile(binary_data: bytes, start_offset: int,
              cs_instructions: list, label_map: dict[int, str],
              code_targets: set[int], structs: list,
              name: str) -> str:
    """Main decompile entry point.

    Args:
        binary_data: raw binary bytes.
        start_offset: offset where code begins.
        cs_instructions: list of Capstone CsInsn objects.
        label_map: {offset: label_name}.
        code_targets: set of offsets classified as code.
        structs: list of discovered struct dicts.
        name: binary name (e.g. 'vga').

    Returns:
        Complete C source text.
    """
    # Convert Capstone instructions to our IR
    instructions = _capstone_to_ir(cs_instructions)

    # Find global data offsets
    data_offsets = _find_global_data_offsets(instructions)

    # Extract functions
    functions = _extract_functions(instructions, label_map, code_targets)

    # Build C output
    parts = [_emit_preamble(name, data_offsets)]

    # If there are push/pop users, emit stub
    has_push = any(insn.mnemonic in ('push', 'pop')
                   for fn in functions for insn in fn.instructions)
    if has_push:
        parts.append(_emit_stub_push_pop())

    # Emit each function
    for fn in functions:
        if fn.inline_asm:
            parts.append(_emit_function_inline_asm(fn, binary_data, label_map))
        else:
            parts.append(_emit_function_pure_c(fn, data_offsets, label_map))

    parts.append(C_FOOTER)
    return '\n'.join(parts)


if __name__ == '__main__':
    import sys
    # Standalone usage: python3 -m asm.lib.decompile
    print("Use via make decompile DSAVANT BINARY")
