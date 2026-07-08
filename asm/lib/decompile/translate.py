"""Map ASM instructions to C expressions / inline asm."""

from .ir import Instruction, Operand


_REG_8 = {'al', 'ah', 'bl', 'bh', 'cl', 'ch', 'dl', 'dh'}
_REG_16 = {'ax', 'bx', 'cx', 'dx', 'si', 'di', 'bp', 'sp', 'ds', 'es', 'cs', 'ss'}
_SEG_REGS = {'cs', 'ds', 'es', 'ss'}


def operand_to_c(op: Operand, data_globals: set[int]) -> str:
    """Convert an ASM operand to a C expression string."""
    if op.type == 'reg':
        return op.value
    elif op.type == 'imm':
        if op.value < 0:
            return f'({op.value})'
        return f'0x{op.value:x}'
    elif op.type == 'label':
        return op.value
    elif op.type == 'mem':
        seg = op.segment if op.segment else ''
        disp = op.value

        # Global data reference: [cs:absolute_address]
        # Only for absolute addresses (no base/index register), e.g. [cs:0x0295]
        if seg == 'cs' and not op.base and not op.index:
            if disp in data_globals or (0x100 <= disp < 0xf000):
                return f'g_data_{disp:04x}'

        # Local variable or parameter: [bp+N] or [bp-N]
        if op.base == 'bp':
            if disp >= 0:
                return f'arg{(disp - 4)//2}'
            else:
                return f'local_{-disp}'

        # Simple dereference: [reg] or [reg+disp]
        if op.base:
            if op.index:
                base = op.base
                idx = op.index
                scale = '' if op.value == 0 else f' + {op.value}'
                return f'*({base} + {idx}{scale})'
            if disp == 0:
                return f'*{op.base}'
            if disp > 0:
                return f'*({op.base} + 0x{disp:x})'
            return f'*({op.base} - 0x{-disp:x})'

        # Absolute address
        return f'*(uint16 *)0x{disp:x}'
    return '???'


def instruction_to_c(insn: Instruction, data_globals: set[int],
                     label_map: dict[int, str]) -> str | None:
    """Translate a single instruction to C. Returns None if it needs inline asm."""
    m = insn.mnemonic
    ops = insn.operands

    # Mark as needing inline asm for complex instructions
    if m in ('int', 'rep', 'repne', 'movsb', 'movsw', 'stosb', 'stosw',
             'lodsb', 'lodsw', 'scasb', 'scasw', 'cmpsb', 'cmpsw',
             'pushf', 'popf', 'iret', 'retf', 'lcall', 'ljmp',
             'in', 'out', 'retn'):
        return None
    if m.startswith('rep'):
        return None

    # Sign-extension: cbw/cwde = ax = (s16)(s8)al
    if m == 'cbw' or m == 'cwde':
        return 'ax = (u16)(s16)(s8)al;'
    if m == 'cwd' or m == 'cdq':
        return 'dx = (ax & 0x8000) ? 0xffff : 0;'

    # Segment register moves need inline asm (mov es, ax / mov ds, ax)
    for op in ops:
        if op.type == 'reg' and op.value in _SEG_REGS:
            return None
    # ES/SS segment overrides need inline asm; CS is our global data access pattern
    for op in ops:
        if op.type == 'mem' and op.segment in ('es', 'ss'):
            return None

    # Handle mov
    if m == 'mov':
        dst = operand_to_c(ops[0], data_globals)
        src = operand_to_c(ops[1], data_globals)
        if ops[0].size == 1:
            # Byte access — need cast
            if ops[1].type == 'imm':
                return f'*(uint8 *)&{dst} = (uint8){src};'
            return f'*(uint8 *)&{dst} = (uint8){src};'
        return f'{dst} = {src};'

    # Handle arithmetic
    if m == 'add':
        dst = operand_to_c(ops[0], data_globals)
        src = operand_to_c(ops[1], data_globals)
        if ops[0].size == 1:
            return f'*(uint8 *)&{dst} += (uint8){src};'
        return f'{dst} += {src};'

    if m == 'sub':
        dst = operand_to_c(ops[0], data_globals)
        src = operand_to_c(ops[1], data_globals)
        if ops[0].size == 1:
            return f'*(uint8 *)&{dst} -= (uint8){src};'
        return f'{dst} -= {src};'

    if m == 'inc':
        dst = operand_to_c(ops[0], data_globals)
        if ops[0].size == 1:
            return f'*(uint8 *)&{dst}++;'
        return f'{dst}++;'

    if m == 'dec':
        dst = operand_to_c(ops[0], data_globals)
        if ops[0].size == 1:
            return f'*(uint8 *)&{dst}--;'
        return f'{dst}--;'

    if m == 'mul':
        if len(ops) == 1:
            src = operand_to_c(ops[0], data_globals)
            if ops[0].size == 1:
                return f'ax = (u16)((u8)al * (u8){src});'
            return f'/* mul: dx:ax = ax * {src} (overflow!) */'
        return f'{operand_to_c(ops[0], data_globals)} *= {operand_to_c(ops[1], data_globals)};'

    if m == 'imul':
        if len(ops) >= 2:
            dst = operand_to_c(ops[0], data_globals)
            src = operand_to_c(ops[1], data_globals)
            return f'/* imul {dst}, {src} */'
        return None

    if m == 'div':
        dst = operand_to_c(ops[0], data_globals)
        return f'// div {dst} — needs inline asm'

    if m == 'imul':
        return None

    if m == 'idiv':
        return None

    if m == 'and':
        dst = operand_to_c(ops[0], data_globals)
        src = operand_to_c(ops[1], data_globals)
        if ops[0].size == 1:
            return f'*(uint8 *)&{dst} &= (uint8){src};'
        return f'{dst} &= {src};'

    if m == 'or':
        dst = operand_to_c(ops[0], data_globals)
        src = operand_to_c(ops[1], data_globals)
        if ops[0].size == 1:
            return f'*(uint8 *)&{dst} |= (uint8){src};'
        return f'{dst} |= {src};'

    if m == 'xor':
        dst = operand_to_c(ops[0], data_globals)
        src = operand_to_c(ops[1], data_globals)
        if ops[0].size == 1:
            return f'*(uint8 *)&{dst} ^= (uint8){src};'
        return f'{dst} ^= {src};'

    if m == 'not':
        dst = operand_to_c(ops[0], data_globals)
        if ops[0].size == 1:
            return f'*(uint8 *)&{dst} = ~*(uint8 *)&{dst};'
        return f'{dst} = ~{dst};'

    if m == 'neg':
        dst = operand_to_c(ops[0], data_globals)
        if ops[0].size == 1:
            return f'*(uint8 *)&{dst} = -(*(uint8 *)&{dst});'
        return f'{dst} = -{dst};'

    # Shifts
    if m == 'shl':
        dst = operand_to_c(ops[0], data_globals)
        cnt = operand_to_c(ops[1], data_globals)
        if ops[0].size == 1:
            return f'*(uint8 *)&{dst} <<= {cnt};'
        return f'{dst} <<= {cnt};'

    if m == 'shr':
        dst = operand_to_c(ops[0], data_globals)
        cnt = operand_to_c(ops[1], data_globals)
        if ops[0].size == 1:
            return f'*(uint8 *)&{dst} >>= {cnt};'
        return f'{dst} >>= {cnt};'

    if m == 'sar':
        dst = operand_to_c(ops[0], data_globals)
        cnt = operand_to_c(ops[1], data_globals)
        return None

    # Compare (sets flags, typically followed by jcc)
    if m == 'cmp':
        a = operand_to_c(ops[0], data_globals)
        b = operand_to_c(ops[1], data_globals)
        if ops[0].size == 1:
            return f'// cmp {a}, {b} (flags)'
        return f'// cmp {a}, {b} (flags)'

    if m == 'test':
        a = operand_to_c(ops[0], data_globals)
        b = operand_to_c(ops[1], data_globals)
        if ops[0].size == 1:
            return f'// test {a}, {b} (flags)'
        return f'// test {a}, {b} (flags)'

    # Push / pop — need inline asm (real stack operations)
    if m == 'push':
        return None

    if m == 'pop':
        return None

    # Xchg
    if m == 'xchg':
        a = operand_to_c(ops[0], data_globals)
        b = operand_to_c(ops[1], data_globals)
        return f'// xchg {a}, {b}'

    # Lea
    if m == 'lea':
        dst = operand_to_c(ops[0], data_globals)
        src = operand_to_c(ops[1], data_globals)
        return f'{dst} = (uint16)&{src};'

    # Conditional set
    if m == 'sete' or m == 'setz':
        dst = operand_to_c(ops[0], data_globals)
        return f'*(uint8 *)&{dst} = (flags_zero ? 1 : 0);'
    if m == 'setne' or m == 'setnz':
        dst = operand_to_c(ops[0], data_globals)
        return f'*(uint8 *)&{dst} = (flags_zero ? 0 : 1);'
    if m == 'setb' or m == 'setc':
        dst = operand_to_c(ops[0], data_globals)
        return f'*(uint8 *)&{dst} = (flags_carry ? 1 : 0);'
    if m == 'setae' or m == 'setnc':
        dst = operand_to_c(ops[0], data_globals)
        return f'*(uint8 *)&{dst} = (flags_carry ? 0 : 1);'
    if m.startswith('set'):
        return None

    # Nop
    if m == 'nop':
        return '// nop'

    # Loop
    if m == 'loop':
        return None

    # Jcc — handled by control flow, not individual instruction
    if m.startswith('j'):
        return None

    # Call — handled by control flow
    if m == 'call':
        return None

    return None
