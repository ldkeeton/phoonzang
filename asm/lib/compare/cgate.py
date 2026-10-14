"""Gate: a hand-written C routine must reproduce the original bytes.

The compiled (and linked) code is compared with the original span instruction
by instruction.  An instruction passes when its bytes are identical or, unless
*exact*, semantically equivalent (:func:`is_semantically_equivalent`).  Symbol
names are never compared -- only the bytes they resolve to -- and the length
must match exactly (no NOP padding).
"""

from capstone import Cs, CS_ARCH_X86, CS_MODE_16

from lib.verify.assemble import is_semantically_equivalent

MAX_SHOWN = 20


def _disasm_at(md, data, off, base):
    insn = next(md.disasm(data[off:off + 15], base + off), None)
    return insn


def _fmt(insn, data, off, size):
    raw = data[off:off + size].hex(' ')
    if insn is None:
        return f'{raw:<20} (undecodable)'
    return f'{raw:<20} {insn.mnemonic} {insn.op_str}'.rstrip()


def check_against_original(label, start, original, compiled, exact=False):
    """Return a list of report lines; empty when *compiled* matches.

    *original* and *compiled* are the routine's bytes (relocations resolved in
    both); *start* is the routine's address, used only for reporting.
    """
    original = bytes(original)
    compiled = bytes(compiled)
    md = Cs(CS_ARCH_X86, CS_MODE_16)
    bad = []          # (offset, size, original text, compiled text)
    differing = 0
    off = 0
    limit = min(len(original), len(compiled))
    while off < limit:
        insn = _disasm_at(md, original, off, start)
        size = insn.size if insn is not None else 1
        size = min(size, limit - off)
        want = original[off:off + size]
        got = compiled[off:off + size]
        ok = want == got
        if not ok and not exact and insn is not None:
            ok = is_semantically_equivalent(want, got, start + off)
        if not ok:
            differing += sum(1 for a, b in zip(want, got) if a != b)
            bad.append((off, size, _fmt(insn, original, off, size),
                        _fmt(_disasm_at(md, compiled, off, start),
                             compiled, off, size)))
        off += size

    lines = []
    if len(compiled) != len(original):
        lines.append(f'length: compiled {len(compiled)} bytes, original '
                     f'{len(original)} bytes')
        differing += abs(len(compiled) - len(original))
    for off, size, want, got in bad[:MAX_SHOWN]:
        lines.append(f'  +0x{off:03x} (0x{start + off:x})  '
                     f'orig: {want}')
        lines.append(f'  {"":<19}  C:    {got}')
    if len(bad) > MAX_SHOWN:
        lines.append(f'  ... {len(bad) - MAX_SHOWN} more differing instruction(s)')
    if lines:
        mode = 'exact bytes' if exact else 'semantic'
        lines.insert(0, f'{label}: C does not match the original ({mode}): '
                        f'{len(bad)} instruction(s), {differing} of '
                        f'{len(original)} byte(s) differ')
    return lines
