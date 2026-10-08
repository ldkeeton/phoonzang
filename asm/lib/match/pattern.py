"""Pattern matching of known function byte signatures.

For each signature's byte pattern, scans the binary, walks backward
to find a push-bp prologue that is a call target, verifies the function
body, and assigns the known name.
"""

from capstone import Cs, CS_ARCH_X86, CS_MODE_16


_TERMINATORS = {'ret', 'retf', 'iret', 'hlt'}
_UNCONDITIONAL_TRANSFERS = {'jmp', 'ljmp', 'ud2'}


def _call_target_entry_prefix(data, prologue_start, call_targets, md):
    """Return a one-instruction call-target prefix before a BP prologue.

    Some routines have a small entry shim immediately before the conventional
    ``push bp; mov bp, sp`` prologue. If a direct call targets that shim and it
    falls through into the prologue, the shim is the function entry too.
    """
    call_targets = set(call_targets or ())
    for target in sorted(
            (off for off in call_targets
             if 0 <= prologue_start - off <= 8), reverse=True):
        try:
            prefix = list(md.disasm(data[target:prologue_start], target))
        except Exception:
            continue
        if (len(prefix) == 1
                and prefix[0].address + prefix[0].size == prologue_start
                and prefix[0].mnemonic not in (
                    *_TERMINATORS, *_UNCONDITIONAL_TRANSFERS,
                )):
            return target
    return prologue_start if prologue_start in call_targets else None


def match_patterns(data, call_targets, known_db, max_func_size=256):
    """Pattern-match known wrapper functions → {offset: name} labels.

    Returns a dict of {func_start: label_name} with automatic _N dedup.
    """
    if not known_db:
        return {}
    md = Cs(CS_ARCH_X86, CS_MODE_16)
    md.detail = False

    label_map = {}
    name_count = {}

    for sig in known_db.get('signatures', []):
        name = sig['name']
        for pat_str in sig.get('patterns', []):
            try:
                pat_bytes = bytes.fromhex(pat_str.replace(' ', ''))
            except (ValueError, KeyError):
                continue
            idx = 0
            while True:
                idx = data.find(pat_bytes, idx)
                if idx == -1:
                    break

                matched = False
                for i in range(min(256, idx), 0, -1):
                    p = idx - i
                    if data[p] != 0x55:
                        continue
                    try:
                        prev_insns = list(md.disasm(data[p:idx], p))
                    except Exception:
                        prev_insns = []
                    if not (prev_insns and prev_insns[-1].address + prev_insns[-1].size == idx):
                        continue

                    func_start = _call_target_entry_prefix(
                        data, p, call_targets, md,
                    )
                    if func_start is None:
                        continue

                    max_end = min(func_start + max_func_size, len(data))
                    try:
                        insns = list(md.disasm(data[func_start:max_end], func_start))
                    except Exception:
                        insns = []
                    func_end = max_end
                    for insn in insns:
                        if insn.mnemonic in _TERMINATORS:
                            func_end = insn.address + insn.size
                            break

                    if func_start <= idx < func_end and func_end <= func_start + max_func_size:
                        matched = True
                        break

                if not matched and (idx == 0 or data[idx - 1] in (0xC3, 0xCB, 0xCF, 0xF4, 0xC2, 0xCA)):
                    # Fallback: pattern starts right after a terminator
                    # (ret/retf/iret/hlt). No push_bp prologue needed.
                    max_end = min(idx + max_func_size, len(data))
                    try:
                        insns = list(md.disasm(data[idx:max_end], idx))
                    except Exception:
                        insns = []
                    func_end = max_end
                    for insn in insns:
                        if insn.mnemonic in _TERMINATORS:
                            func_end = insn.address + insn.size
                            break
                    if idx < func_end and func_end <= idx + max_func_size:
                        matched = True
                        func_start = idx

                if matched:
                    if func_start not in label_map:
                        n = name_count.get(name, 0) + 1
                        name_count[name] = n
                        label_map[func_start] = f'{name}_{n}' if n > 1 else name

                idx += len(pat_bytes)

    return label_map
