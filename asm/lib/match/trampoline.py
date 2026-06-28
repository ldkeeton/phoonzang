"""Trampoline-dispatch stub detection.

Detects call_targets starting with ``mov ax, 0xFFXX; call EXTERNAL``
and names them based on the dispatch index.
"""

from capstone import Cs, CS_ARCH_X86, CS_MODE_16


def match_trampolines(data, call_targets, known_db=None):
    """Detect trampoline-dispatch stubs.

    Returns a dict of {offset: label_name} with automatic _N dedup.
    """
    md = Cs(CS_ARCH_X86, CS_MODE_16)
    md.detail = True
    n = len(data)

    dispatch_names = {}
    if known_db:
        for key, entry in known_db.get('api_dispatch', {}).items():
            try:
                idx = int(key, 16) if isinstance(key, str) else int(key)
                dispatch_names[idx] = entry['name']
            except (ValueError, KeyError):
                pass

    label_map = {}
    name_count = {}

    for off in sorted(call_targets):
        if off + 6 > n:
            continue
        if data[off] != 0xB8 or data[off + 2] != 0xFF:
            continue
        val = data[off + 1] | (data[off + 2] << 8)
        for j in range(off + 3, min(off + 8, n - 2)):
            if data[j] == 0xE8:
                try:
                    insn = next(md.disasm(data[j:j + 5], j))
                    target = insn.operands[0].imm if insn.operands else None
                except Exception:
                    break
                if target is not None and (target & 0xFFFF) >= n:
                    idx = (-val) & 0xFFFF
                    name = dispatch_names.get(idx)
                    if name is None:
                        name = f'api_idx_{idx:04x}'
                    n_ = name_count.get(name, 0) + 1
                    name_count[name] = n_
                    label_map[off] = name if n_ == 1 else f'{name}_{n_}'
                break
            elif data[j] in (0xC3, 0xCB, 0xCF, 0xEB, 0xE9):
                break

    return label_map
