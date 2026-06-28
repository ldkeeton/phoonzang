"""Multi-pass code/data classification for 16-bit DOS binaries.

Produces a byte-level bitmap (IS_CODE / IS_DATA) using:
  1. Sidecar overrides (explicit force_code / force_data ranges)
  2. Conservative string carving — long ASCII strings locked IS_DATA early
  3. Recursive descent with speculative-code discipline
  4. Dead-zone pruning (data after ret / jmp / hlt)
  5. Jump-table detection with backward bounds-check validation

All addresses throughout this module are file offsets (org 0 in the .asm).
"""

import struct
from capstone import Cs, CS_ARCH_X86, CS_MODE_16
from capstone import CS_OP_IMM, CS_OP_REG, CS_OP_MEM

IS_UNKNOWN = 0
IS_CODE = 1
IS_DATA = 2

_TERMINATORS = {'ret', 'retf', 'iret', 'hlt'}
_UNCOND_JUMPS = {'jmp', 'ljmp'}
_CALLS = {'call', 'lcall'}
_COND_JUMP_MNEMS = {
    'jcxz', 'jecxz', 'loop', 'loope', 'loopne',
}


def _apply_sidecar(bitmap, sidecar_entry):
    """Apply *sidecar_entry* overrides directly to *bitmap*.

    All addresses in the sidecar are file offsets (org 0).
    Returns a set of code entry addresses to add as recursive-descent seeds.
    """
    seeds = set()
    for r in sidecar_entry.get('force_data', []):
        s = int(r['start'], 16)
        e_raw = r.get('end', r['start'])
        e = int(e_raw, 16) + 1
        s = max(0, s)
        e = min(len(bitmap), e)
        for i in range(s, e):
            bitmap[i] = IS_DATA
    for r in sidecar_entry.get('force_code', []):
        s = int(r['start'], 16)
        e_raw = r.get('end', r['start'])
        e = int(e_raw, 16) + 1
        s = max(0, s)
        e = min(len(bitmap), e)
        for i in range(s, e):
            bitmap[i] = IS_CODE
        seeds.add(s)
    return seeds


def _is_cond_jump(mnem):
    if mnem in _COND_JUMP_MNEMS:
        return True
    if len(mnem) >= 2 and mnem[0] == 'j' and mnem not in ('jmp',):
        return True
    return False


def _get_imm_target(insn):
    for op in insn.operands:
        if op.type == CS_OP_IMM:
            return op.imm & 0xFFFF
    return None


def _is_indirect(insn):
    for op in insn.operands:
        if op.type in (CS_OP_REG, CS_OP_MEM):
            return True
    return False


def _disasm_one(data, off, md):
    gen = md.disasm(data[off:], off)
    try:
        return next(gen)
    except StopIteration:
        return None


# ── string carving ────────────────────────────────────────────────────────

def _carve_strings(data, bitmap, min_body=4):
    """Scan *data* for printable-ASCII strings in IS_UNKNOWN regions.

    Strings: >= *min_body* printable chars (0x20–0x7E) terminated by 0x00
    (C-style) or 0x24 ($ — DOS style).  Body + terminator marked IS_DATA.
    """
    n = len(data)
    i = 0
    while i < n:
        if bitmap[i] != IS_UNKNOWN:
            i += 1
            continue
        if not (0x20 <= data[i] <= 0x7E):
            i += 1
            continue
        start = i
        while i < n and 0x20 <= data[i] <= 0x7E:
            i += 1
        body_len = i - start
        if body_len < min_body:
            continue
        if i < n and data[i] in (0x00, 0x24):
            for j in range(start, i + 1):
                bitmap[j] = IS_DATA


# ── jump-table bounds scanning ────────────────────────────────────────────

def _find_jump_table_bounds(data, jmp_addr, md):
    """Look backward from *jmp_addr* for a bounds-check idiom.

    16-bit compilers guard jump tables with::

        cmp bx, N       ; max valid index
        ja  default     ; jump away if out of bounds
        …
        jmp [bx + table]

    Returns the maximum valid table index (N), or None if no bounds
    check was found.
    """
    search_start = max(0, jmp_addr - 30)

    insns = []
    md.skipdata = True
    for insn in md.disasm(data[search_start:], search_start):
        if insn.address >= jmp_addr:
            break
        if insn.id != 0:
            insns.append(insn)
    md.skipdata = False

    for i in range(len(insns) - 1):
        insn = insns[i]
        nxt = insns[i + 1]

        if insn.mnemonic != 'cmp':
            continue
        ops = insn.operands
        if len(ops) < 2:
            continue
        if ops[0].type != CS_OP_REG:
            continue
        if ops[1].type != CS_OP_IMM:
            continue

        imm = ops[1].imm & 0xFFFF

        if nxt.mnemonic == 'ja':
            # cmp bx, N  /  ja default  →  valid indices 0..N
            return imm
        if nxt.mnemonic in ('jae', 'jb', 'jbe'):
            # cmp bx, N+1  /  jae default  →  valid indices 0..N
            # cmp bx, N    /  jb default   →  valid indices 0..N-1
            return max(imm - 1, 0)

    return None


def _scan_jump_table(data, start, bitmap, max_index=None):
    """After an indirect jmp, scan for a word-aligned pointer table.

    Reads 16-bit little-endian words starting at *start*.  Each word
    is validated as a plausible code address (within bounds, not
    already classified as IS_DATA).

    If *max_index* is given, the scan stops after at most
    ``max_index + 1`` entries.

    Returns (table_end_exclusive, target_set) if >=3 valid targets
    found, else (start, empty_set).
    """
    n = len(data)
    targets = set()
    tbl = start
    max_entries = (max_index + 1) if max_index is not None else None
    while tbl + 2 <= n:
        if max_entries is not None and len(targets) >= max_entries:
            break
        val = struct.unpack_from('<H', data, tbl)[0]
        if not (0 <= val < n):
            break
        if bitmap[val] == IS_DATA:
            break
        targets.add(val)
        tbl += 2
    if len(targets) >= 3:
        return tbl, targets
    return start, set()


# ── error-handler discovery ──────────────────────────────────────────────

def _find_print_exit(data, off):
    """Check for ``mov ah, 9 / int 0x21 / mov ax, 0x4c01 / int 0x21`` at *off*."""
    if off + 9 > len(data):
        return None
    sig = bytes([0xb4, 0x09, 0xcd, 0x21, 0xb8, 0x01, 0x4c, 0xcd, 0x21])
    if data[off:off + 9] == sig:
        return off + 9
    return None


def _find_string_after(data, off, min_body=4):
    """Find a printable-ASCII string (0x20–0x7E) terminated by 0x00 or 0x24
    starting at *off*.  Returns (start, end_excl) or None."""
    n = len(data)
    i = off
    while i < n and 0x20 <= data[i] <= 0x7E:
        i += 1
    body_len = i - off
    if body_len >= min_body and i < n and data[i] in (0x00, 0x24):
        return off, i + 1
    return None


def _find_error_handler_start(data, exit_off, md):
    """Walk backward from the ``mov dx, imm16`` that precedes the
    print‑exit signature to find the handler's true entry point.

    ``exit_off`` is the start of the 9‑byte print‑exit signature
    (``mov ah,9 / int 0x21 / mov ax,0x4c01 / int 0x21``).

    The byte at ``exit_off - 3`` *must* be ``0xBA`` (``mov dx, imm16``)
    — this is the fixed anchor that prevents the backward chain from
    picking up misaligned decodes.

    The chain stops when it encounters ``mov ax, cs`` (``0x8C 0xC8``)
    or ``mov bx, cs`` (``0x8C 0xCB``); that address is the handler
    entry point and is returned.

    Returns ``exit_off`` if the anchor check fails, so the caller
    will still mark the print‑exit signature as IS_CODE.
    """
    sig_off = exit_off
    if sig_off < 3 or data[sig_off - 3] != 0xBA:
        return sig_off
    end = sig_off - 3          # end of the mov dx instruction
    for _ in range(10):
        found = None
        lo = max(0, end - 6)
        for trial in range(end - 1, lo - 1, -1):
            insn = _disasm_one(data, trial, md)
            if insn is not None and insn.address + insn.size == end:
                found = insn.address
                break
        if found is None:
            break
        # mov ax,cs / mov bx,cs → this is the handler entry, stop.
        b = data[found:found + 2]
        if b in (b'\x8c\xc8', b'\x8c\xcb'):
            return found
        end = found
    return end


def _discover_error_handlers(data, bitmap, md):
    """Scan for DOS error-handler blocks in IS_UNKNOWN regions.

    Pattern: the 9‑byte print‑exit sequence ``mov ah,9 / int 0x21 /
    mov ax,0x4c01 / int 0x21`` preceded by register-setup code.
    Only the code bytes (up through the final ``int 0x21``) are marked
    IS_CODE — anything after falls through to string carving or the
    final IS_DATA pass.

    Returns a set of code-entry addresses to seed recursive descent.
    """
    n = len(data)
    seeds = set()
    off = 0
    while off < n:
        if bitmap[off] != IS_UNKNOWN:
            off += 1
            continue
        end_after_exit = _find_print_exit(data, off)
        if end_after_exit is None:
            off += 1
            continue
        # Walk backward through instruction boundaries to find the
        # real start of the handler (catches mov dx + segment setup).
        handler_start = _find_error_handler_start(data, off, md)
        for i in range(handler_start, end_after_exit):
            bitmap[i] = IS_CODE
        seeds.add(handler_start)
        off = end_after_exit
    return seeds


# ── trampoline-table discovery ────────────────────────────────────────────

def _discover_trampoline_table(data, bitmap, md):
    """Find consecutive ``call X; retf`` trampolines in the first 4096
    bytes of IS_UNKNOWN regions.

    DOS drivers often lay out their export table as a flat array of tiny
    4‑byte trampolines near the start of the file.
    """
    n = len(data)
    limit = min(n, 4096)
    candidates = []
    off = 0
    while off < limit:
        if bitmap[off] != IS_UNKNOWN:
            off += 1
            continue

        insn = _disasm_one(data, off, md)
        if insn is None or insn.mnemonic != 'call':
            off += 1
            continue
        if _is_indirect(insn):
            off += 1
            continue

        target = _get_imm_target(insn)
        if target is None or not (0 <= target < n):
            off += 1
            continue

        ret_off = off + insn.size
        if ret_off >= n or data[ret_off] != 0xCB:  # retf = CB
            off += 1
            continue

        candidates.append((off, target))
        off = ret_off + 1   # skip over retf

    if len(candidates) < 3:
        return set(), 0, 0

    # Require at least 3 *consecutive* trampolines
    # (adjacent in the byte stream, 4 bytes apart).
    runs = []
    run_start = 0
    for i in range(1, len(candidates)):
        if candidates[i][0] != candidates[i - 1][0] + 4:
            if i - run_start >= 3:
                runs.append((run_start, i))
            run_start = i
    if len(candidates) - run_start >= 3:
        runs.append((run_start, len(candidates)))

    targets = set()
    for r_start, r_end in runs:
        for i in range(r_start, r_end):
            off, target = candidates[i]
            targets.add(target)
            # Mark the 4-byte trampoline as IS_CODE immediately.
            for j in range(off, min(off + 4, n)):
                bitmap[j] = IS_CODE

    return targets, 0, 0


# ── zero-run pruning ───────────────────────────────────────────────────────

def _prune_zero_zones(data, bitmap, min_run=64):
    """Reclassify large runs of zero bytes misidentified as code.

    After recursive descent, entry points in zero-filled regions
    (e.g., flat export tables, uninitialised function slots) may
    have been classified as IS_CODE.  Consecutive zero bytes at
    the machine level are not meaningful code; reclassify runs
    >= *min_run* bytes as IS_DATA.
    """
    n = len(data)
    i = 0
    while i < n:
        if bitmap[i] == IS_CODE and data[i] == 0:
            start = i
            while i < n and bitmap[i] == IS_CODE and data[i] == 0:
                i += 1
            run = i - start
            if run >= min_run:
                for j in range(start, i):
                    bitmap[j] = IS_DATA
        else:
            i += 1


# ── dead-zone pruning ─────────────────────────────────────────────────────

def _find_last_insn(data, code_start, code_end_excl, md):
    """Walk *code_start*→*code_end_excl* to find the last complete instruction."""
    off = code_start
    last = None
    gen = md.disasm(data[off:], off)
    while off < code_end_excl:
        try:
            insn = next(gen)
        except StopIteration:
            off += 1
            if off < code_end_excl:
                gen = md.disasm(data[off:], off)
            continue
        end = insn.address + insn.size
        if end > code_end_excl:
            break
        last = insn
        off = end
    return last


def _prune_dead_zones(data, bitmap, md):
    """After a CFG terminator, mark trailing IS_UNKNOWN bytes as IS_DATA."""
    n = len(data)
    i = 0
    while i < n:
        if bitmap[i] == IS_CODE:
            j = i
            while j < n and bitmap[j] == IS_CODE:
                j += 1
            code_end = j

            last_insn = _find_last_insn(data, i, code_end, md)
            ends_trace = True
            if last_insn is not None:
                mnem = last_insn.mnemonic
                ends_trace = (
                    mnem in _TERMINATORS
                    or (mnem in _UNCOND_JUMPS and not _is_indirect(last_insn))
                )

            if ends_trace:
                k = code_end
                while k < n and bitmap[k] != IS_CODE:
                    bitmap[k] = IS_DATA
                    k += 1

            i = j
        else:
            i += 1


# ── cascade code recovery ────────────────────────────────────────────────

def _cascade_code_recovery(data, bitmap, md):
    """Promote IS_DATA blocks that fully decode as valid x86 instructions.

    A data block is promoted to code when every byte in it decodes as a
    valid instruction (no illegal opcode / operand combinations).  This
    catches functions that were missed by recursive descent (e.g. called
    only through pointer tables or indirect jumps).
    """
    n = len(data)
    i = 0
    promoted = 0
    while i < n:
        if bitmap[i] != IS_DATA:
            i += 1
            continue

        start = i
        while i < n and bitmap[i] == IS_DATA:
            i += 1

        block = data[start:i]
        try:
            insns = list(md.disasm(block, start))
        except Exception:
            continue

        if not insns:
            continue

        decoded = sum(insn.size for insn in insns)

        if decoded == len(block):
            for j in range(start, i):
                bitmap[j] = IS_CODE
            promoted += 1
        elif decoded >= len(block) - 3:
            for j in range(start, start + decoded):
                bitmap[j] = IS_CODE
            promoted += 1

    return promoted


# ── main classification ───────────────────────────────────────────────────

def classify(data, start_offset=0, entry_points=None, sidecar_entry=None,
             cascade_search=False):
    """Classify every byte as IS_CODE or IS_DATA.

    Returns (bitmap, info) where *info* is a dict with:
        ``discovered``  — all addresses found during recursive descent
        ``call_targets`` — addresses targeted by direct ``call`` insns
        ``jt_targets``   — addresses targeted by indirect-jump tables
    """
    n = len(data)
    bitmap = bytearray(b'\x00' * n)

    md = Cs(CS_ARCH_X86, CS_MODE_16)
    md.detail = True

    # ---- Pass 0: sidecar overrides ---------------------------------
    force_seeds = set()
    if sidecar_entry is not None:
        force_seeds = _apply_sidecar(bitmap, sidecar_entry)

    # ---- Pass 0.5: conservative string carving ---------------------
    # Lock  L O N G  undeniable ASCII strings as IS_DATA *before*
    # recursive descent so the disassembler never wanders into them.
    _carve_strings(data, bitmap, min_body=6)

    # ---- Pass 0.6: trampoline-table discovery (drivers only) ---------
    # DOS drivers use call/retf trampolines as export tables.
    trampoline_targets = set()
    if start_offset == 0:
        trampoline_targets, _, _ = _discover_trampoline_table(data, bitmap, md)

    # ---- Pass 0.7: error-handler discovery -------------------------
    # Many drivers have inline print-and-exit blocks (mov ah,9/int 0x21
    # followed by mov ax,0x4c01/int 0x21) that sit in dead zones after
    # conditional branches.  Detect them by signature so they get
    # proper mnemonics instead of raw db.
    error_handler_seeds = _discover_error_handlers(data, bitmap, md)

    # ---- Pass 1: recursive descent (speculative-code discipline) ---
    seeds = set()
    discovered = set()
    call_targets = set()
    jt_targets = set()

    for s in force_seeds:
        if 0 <= s < n and bitmap[s] != IS_DATA:
            seeds.add(s)
            discovered.add(s)
    for s in error_handler_seeds:
        if 0 <= s < n and bitmap[s] != IS_DATA:
            seeds.add(s)
            discovered.add(s)
    if 0 <= start_offset < n:
        seeds.add(start_offset)
    if entry_points:
        for addr in entry_points:
            if 0 <= addr < n:
                seeds.add(addr)
    for t in trampoline_targets:
        if 0 <= t < n and bitmap[t] != IS_DATA:
            seeds.add(t)
            discovered.add(t)

    visited_starts = set()

    while seeds:
        off = seeds.pop()
        if off in visited_starts or off < 0 or off >= n:
            continue
        if bitmap[off] == IS_DATA:
            continue
        if bitmap[off] == IS_CODE:
            continue
        visited_starts.add(off)

        # Ranges of bytecode that are already validated (before each
        # fork point).  Only the current tail—between the last fork
        # and a failure—is speculative.
        fork_ranges = []   # (start, end_excl)
        spec_start = off

        gen = md.disasm(data[off:], off)

        while off < n:
            if bitmap[off] == IS_DATA:
                break

            if bitmap[off] == IS_CODE:
                # Joining already-committed code — the tail is safe.
                fork_ranges.append((spec_start, off))
                break

            try:
                insn = next(gen)
            except StopIteration:
                # Invalid opcode.  Fork ranges are already-validated
                # code; the tail (spec_start..off) is discarded.
                break

            insn_end = insn.address + insn.size
            mnem = insn.mnemonic

            # -- terminators (ret / iret / hlt) -----------------------
            if mnem in _TERMINATORS:
                fork_ranges.append((spec_start, insn_end))
                break

            # -- unconditional jumps ----------------------------------
            if mnem in _UNCOND_JUMPS:
                fork_ranges.append((spec_start, insn_end))

                if _is_indirect(insn):
                    # Jump table: tighten with backwards bounds check.
                    max_idx = _find_jump_table_bounds(data, off, md)
                    tbl_end, jt_targets = _scan_jump_table(
                        data, off + insn.size, bitmap, max_index=max_idx,
                    )
                    if jt_targets:
                        for t in jt_targets:
                            if 0 <= t < n and bitmap[t] != IS_DATA:
                                seeds.add(t)
                                discovered.add(t)
                                call_targets.add(t)
                        for j in range(off + insn.size, min(tbl_end, n)):
                            if bitmap[j] == IS_UNKNOWN:
                                bitmap[j] = IS_DATA
                else:
                    target = _get_imm_target(insn)
                    if target is not None and 0 <= target < n:
                        if bitmap[target] != IS_DATA:
                            seeds.add(target)
                            discovered.add(target)
                break

            # -- calls (fork point — commit what we have, then resume speculating) -
            if mnem in _CALLS:
                fork_ranges.append((spec_start, insn_end))
                spec_start = insn_end
                if not _is_indirect(insn):
                    target = _get_imm_target(insn)
                    if target is not None and 0 <= target < n:
                        if bitmap[target] != IS_DATA:
                            seeds.add(target)
                            discovered.add(target)
                            call_targets.add(target)
                off = insn_end
                continue

            # -- conditional jumps (fork point: commit, resume speculative) -
            if _is_cond_jump(mnem):
                fork_ranges.append((spec_start, insn_end))
                spec_start = insn_end
                target = _get_imm_target(insn)
                if target is not None and 0 <= target < n:
                    if bitmap[target] != IS_DATA:
                        seeds.add(target)
                        discovered.add(target)
                off = insn_end
                continue

            off = insn_end

        # ---- commit fork ranges (always valid) ---------------------
        for r_start, r_end in fork_ranges:
            for i in range(r_start, r_end):
                if i < n:
                    bitmap[i] = IS_CODE

    # ---- Pass 2: dead-zone pruning --------------------------------
    _prune_dead_zones(data, bitmap, md)

    # ---- Pass 2.5: zero-run pruning --------------------------------
    _prune_zero_zones(data, bitmap)

    # ---- Pass 3: final (short) string carving ----------------------
    _carve_strings(data, bitmap, min_body=4)

    # ---- Pass 3.5: cascade code recovery ---------------------------
    if cascade_search:
        _cascade_code_recovery(data, bitmap, md)

    # ---- Final: remaining IS_UNKNOWN -> IS_DATA --------------------
    for i in range(n):
        if bitmap[i] == IS_UNKNOWN:
            bitmap[i] = IS_DATA

    return bitmap, {
        'discovered': discovered,
        'call_targets': call_targets,
        'jt_targets': jt_targets,
    }
