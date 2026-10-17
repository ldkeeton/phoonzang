"""Group lifted instructions into functions and find global data references."""

from lib.symtab import Kind

from .analyze import analyze_frame
from .ir import Function, Instruction


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
        if getattr(name, 'kind', None) in (Kind.LOCAL, Kind.DATA):
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
