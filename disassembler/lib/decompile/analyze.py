"""Stack frame analysis: extract params, locals, and calling convention."""

from .ir import Function, Instruction, Operand, StackVar


def frame_skip(fn: Function) -> tuple[int, int]:
    """Return ``(leading, trailing)`` instruction counts of the standard frame.

    Recognises the prologue ``push bp; mov bp, sp [; sub sp, N]`` and the
    epilogue ``[mov sp, bp;] pop bp; ret``.  Callers use the result to skip that
    boilerplate, so the same counts drive both the inline-asm decision and the
    pure-C emitter.
    """
    n = len(fn.instructions)

    prologue_count = 0
    if n >= 2:
        i0, i1 = fn.instructions[0], fn.instructions[1]
        if (i0.mnemonic == 'push' and len(i0.operands) == 1
                and i0.operands[0].type == 'reg' and i0.operands[0].value == 'bp'):
            if (i1.mnemonic == 'mov' and len(i1.operands) == 2
                    and i1.operands[0].value == 'bp' and i1.operands[1].value == 'sp'):
                prologue_count = 2
                if n >= 3 and fn.instructions[2].mnemonic == 'sub':
                    i2 = fn.instructions[2]
                    if (len(i2.operands) == 2 and i2.operands[0].value == 'sp'
                            and i2.operands[1].type == 'imm'):
                        prologue_count = 3

    epilogue_count = 0
    if n >= 2:
        if fn.instructions[-1].mnemonic in ('ret', 'retf'):
            epilogue_count = 1
            if fn.instructions[-2].mnemonic == 'pop' and fn.instructions[-2].operands[0].value == 'bp':
                epilogue_count = 2
                if n >= 3 and fn.instructions[-3].mnemonic == 'mov' and fn.instructions[-3].operands[0].value == 'sp' and fn.instructions[-3].operands[1].value == 'bp':
                    epilogue_count = 3

    return prologue_count, epilogue_count


def analyze_frame(fn: Function) -> None:
    """Analyze stack frame for a function.

    Scans all instructions for [bp+N] (params) and [bp-N] (locals).
    Also checks for 'sub sp, N' prologue to determine frame size.
    Also checks for far ret to determine is_far.
    """
    param_offsets: dict[int, int] = {}    # offset -> size
    local_offsets: dict[int, int] = {}
    frame_reserved = 0
    param_words = 0

    for insn in fn.instructions:
        if insn.mnemonic == 'retf':
            fn.is_far = True
        elif insn.mnemonic == 'ret' and len(insn.operands) > 0:
            if insn.operands[0].type == 'imm':
                param_words = insn.operands[0].value // 2

        for op in insn.operands:
            if op.type == 'mem' and op.base == 'bp':
                disp = op.value
                sz = op.size
                if disp >= 0:
                    existing = param_offsets.get(disp)
                    if existing is None or sz > existing:
                        param_offsets[disp] = sz
                else:
                    existing = local_offsets.get(disp)
                    if existing is None or sz > existing:
                        local_offsets[disp] = sz

    fn.frame_size = frame_reserved

    # Build param list sorted by offset
    param_start = 4 if not fn.is_far else 6
    if param_offsets:
        max_param_off = max(param_offsets.keys())
        # Create params for every word slot from param_start to max_param_off
        for off in range(param_start, max_param_off + 1, 2):
            idx = (off - param_start) // 2
            sz = param_offsets.get(off, 2)
            fn.params.append(StackVar(offset=off, size=sz,
                             name=f'arg{idx}'))
            # Also check byte access at off and off+1
            if off + 1 in param_offsets:
                fn.params.append(StackVar(offset=off + 1, size=1,
                                 name=f'arg{idx}_hi'))

    # Build local list
    if local_offsets:
        min_local_off = min(local_offsets.keys())
        max_local_off = max(local_offsets.keys())
        for off in range(min_local_off, max_local_off + 1, -1 if min_local_off < 0 else 1):
            if off == 0:
                continue
            if off in local_offsets:
                sz = local_offsets[off]
                fn.locals.append(StackVar(offset=off, size=sz,
                                  name=f'local_{-off}'))

    # Mark as inline asm if the function uses complex instructions
    # Determine prologue/epilogue instruction count
    n = len(fn.instructions)
    prologue_count, epilogue_count = frame_skip(fn)

    for i, insn in enumerate(fn.instructions):
        if i < prologue_count or i >= n - epilogue_count:
            continue
        m = insn.mnemonic
        if m in ('int', 'rep', 'repne', 'movsb', 'movsw', 'stosb', 'stosw',
                 'lodsb', 'lodsw', 'scasb', 'scasw', 'cmpsb', 'cmpsw',
                 'pushf', 'popf', 'iret', 'retf', 'lcall', 'ljmp',
                 'in', 'out'):
            fn.inline_asm = True
            break
        if m in ('push', 'pop'):
            fn.inline_asm = True
            break
        # Segment register moves (mov es, ax / mov ds, ax) need inline asm
        if m == 'mov' and len(insn.operands) >= 2:
            dst = insn.operands[0]
            src = insn.operands[1]
            if dst.type == 'reg' and dst.value in ('es', 'ds', 'cs', 'ss'):
                fn.inline_asm = True
                break
            if src.type == 'reg' and src.value in ('es', 'ds', 'cs', 'ss'):
                fn.inline_asm = True
                break
        # ES/SS segment override on memory access needs inline asm
        for op in insn.operands:
            if op.type == 'mem' and op.segment in ('es', 'ss'):
                fn.inline_asm = True
                break
        if fn.inline_asm:
            break
