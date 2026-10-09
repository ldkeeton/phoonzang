"""Pattern matching of known function byte signatures.

For each signature's byte pattern, scans the binary and resolves the match to
a function entry.  Signatures that record ``entry_offset`` (the distance of
the matched window from the function entry) anchor directly at
``idx - entry_offset``, which lets leaf routines without a ``push bp``
prologue match.  Legacy signatures fall back to walking backward to the
nearest ``push bp`` prologue that is a call target, or to an
after-terminator entry.
"""

from capstone import Cs, CS_ARCH_X86, CS_MODE_16
from capstone.x86 import X86_OP_REG, X86_OP_IMM, X86_OP_MEM


_TERMINATORS = {'ret', 'retf', 'iret', 'hlt'}
_UNCONDITIONAL_TRANSFERS = {'jmp', 'ljmp', 'ud2'}
_TERMINATOR_BYTES = (0xC2, 0xC3, 0xCA, 0xCB, 0xCF, 0xF4)


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


def _disasm_to(data, start, end, md):
    """True if disassembling from *start* lands exactly on *end*."""
    if start < 0 or start > end:
        return False
    if start == end:
        return True
    try:
        insns = list(md.disasm(data[start:end], start))
    except Exception:
        return False
    return bool(insns) and insns[-1].address + insns[-1].size == end


def _func_extent(data, func_start, max_func_size, md):
    max_end = min(func_start + max_func_size, len(data))
    try:
        insns = list(md.disasm(data[func_start:max_end], func_start))
    except Exception:
        insns = []
    for insn in insns:
        if insn.mnemonic in _TERMINATORS:
            return insn.address + insn.size
    return max_end


_PUSH_BP_MOV_BP_SP = b'\x55\x8b\xec'

_DETAIL_MD = None


def _detail_md():
    global _DETAIL_MD
    if _DETAIL_MD is None:
        _DETAIL_MD = Cs(CS_ARCH_X86, CS_MODE_16)
        _DETAIL_MD.detail = True
    return _DETAIL_MD


def _insn_shape(insn):
    ops = []
    for op in insn.operands:
        if op.type == X86_OP_REG:
            ops.append(('r', insn.reg_name(op.reg)))
        elif op.type == X86_OP_IMM:
            ops.append(('i',))
        elif op.type == X86_OP_MEM:
            mem = op.mem
            ops.append((
                'm',
                insn.reg_name(mem.base) if mem.base else '',
                insn.reg_name(mem.index) if mem.index else '',
            ))
        else:
            ops.append((op.type,))
    return insn.mnemonic, tuple(ops)


def _same_structure(reference, candidate):
    """True if two byte runs decode to the same instruction shapes.

    Immediate values and memory displacements are ignored, so relocated
    operands still compare equal while genuinely different code (e.g. a
    different argument offset) does not.
    """
    md = _detail_md()
    try:
        ref = list(md.disasm(reference, 0))
        cand = list(md.disasm(candidate, 0))
    except Exception:
        return False
    if not ref or not cand or len(ref) != len(cand):
        return False
    if (sum(i.size for i in ref) != len(reference)
            or sum(i.size for i in cand) != len(candidate)):
        return False
    return all(_insn_shape(a) == _insn_shape(b) for a, b in zip(ref, cand))


def _plausible_start(data, entry, known_targets):
    """Stricter check for functions known to have a ``push bp`` prologue.

    Aztec emits ``push bp; mov bp, sp`` for such routines, so the computed
    entry must begin with those bytes (a shared window cannot be reused to
    label a leaf routine).
    """
    if entry < 0 or entry + 3 > len(data):
        return False
    return data[entry:entry + 3] == _PUSH_BP_MOV_BP_SP


def anchor_signature(data, idx, sig, known_targets, md, max_func_size=256,
                     window_len=0):
    """Resolve a signature match at *idx* to ``(func_start, func_end)``.

    Returns ``None`` when no plausible function entry can be established.
    """
    known = set(known_targets or ())
    n = len(data)
    entry_offset = sig.get('entry_offset')
    if entry_offset is not None:
        entry = idx - entry_offset
        if entry >= 0 and _disasm_to(data, entry, idx, md):
            prefix_ok = True
            if entry_offset > 0:
                # Corroborate the entry against the reference bytes before
                # the window.  Compare instruction structure so relocated
                # operands still match while different code does not.
                prefix_hex = sig.get('entry_prefix')
                if prefix_hex is not None:
                    prefix = bytes.fromhex(prefix_hex.replace(' ', ''))
                    prefix_ok = _same_structure(prefix, data[entry:idx])
            prologue_ok = (
                not sig.get('has_prologue')
                or _plausible_start(data, entry, known)
            )
            if prefix_ok and prologue_ok:
                func_end = _func_extent(data, entry, max_func_size, md)
                if entry <= idx < func_end and func_end <= entry + max_func_size:
                    return entry, func_end
        # The reference symbol may be a secondary entry (shared prologue).
        # Only long windows are specific enough to fall back to the prologue
        # heuristic; short windows are exact-only to avoid mislabels.
        if window_len < 10:
            return None

    # Nearest preceding push-bp prologue (including the match offset itself).
    floor = max(idx - 256, 0)
    for p in range(idx, floor - 1, -1):
        if data[p] != 0x55:
            continue
        if not _disasm_to(data, p, idx, md):
            continue
        func_start = _call_target_entry_prefix(data, p, known, md)
        if func_start is None:
            # A long, unique window plus a standard prologue is strong
            # enough to anchor even if the routine is not a direct target
            # (e.g. malloc, whose library body differs from the linked one).
            if (entry_offset is not None
                    and window_len >= 10
                    and data[p:p + 3] == _PUSH_BP_MOV_BP_SP):
                func_start = p
            else:
                continue
        func_end = _func_extent(data, func_start, max_func_size, md)
        if func_start <= idx < func_end and func_end <= func_start + max_func_size:
            return func_start, func_end

    # Fallback: the pattern starts right after a terminator.
    if idx == 0 or data[idx - 1] in _TERMINATOR_BYTES:
        func_end = _func_extent(data, idx, max_func_size, md)
        if idx < func_end and func_end <= idx + max_func_size:
            return idx, func_end
    return None


def match_patterns(data, call_targets, known_db, max_func_size=256):
    """Pattern-match known functions → {offset: name} labels.

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

                anchored = anchor_signature(
                    data, idx, sig, call_targets, md, max_func_size,
                    window_len=len(pat_bytes))
                if anchored is not None:
                    func_start, _ = anchored
                    if func_start not in label_map:
                        n_label = name_count.get(name, 0) + 1
                        name_count[name] = n_label
                        label_map[func_start] = (
                            f'{name}_{n_label}' if n_label > 1 else name)

                idx += len(pat_bytes)

    return label_map
