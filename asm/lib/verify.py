"""Verify NASM assembly against original binary, falling back to db on mismatch.

Per-instruction verification: each candidate mnemonic is tested in isolation
(assembled at its original offset with a micro NASM file).  Lines that
don't produce the exact original bytes are kept as db with a comment.

When a classification bitmap is provided, data blocks are grouped under
block-header comments and code blocks follow the CFG layout.

Post-processing pass annotates code-like data blocks with inline mnemonics,
detects jump tables, and identifies known file formats by magic bytes.
"""

import os
import struct
import subprocess
import tempfile

from capstone import Cs, CS_ARCH_X86, CS_MODE_16

NASM = 'nasm'

_assemble_cache = {}
_sem_eq_cache = {}
_sem_eq_md = None


def _get_sem_eq_md():
    global _sem_eq_md
    if _sem_eq_md is None:
        _sem_eq_md = Cs(CS_ARCH_X86, CS_MODE_16)
        _sem_eq_md.detail = True
    return _sem_eq_md


_COMMUTATIVE = {
    'xchg', 'add', 'or', 'and', 'xor', 'adc',
    'mul', 'imul', 'fadd', 'fmul',
}


def _reg_ids(insn):
    """Return a sorted tuple of register IDs referenced by *insn*."""
    from capstone import CS_OP_REG
    regs = []
    for op in insn.operands:
        if op.type == CS_OP_REG:
            regs.append(op.reg)
    return tuple(sorted(regs))


def _is_semantically_equivalent(orig_bytes, nasm_bytes, address):
    """True if both decode to semantically equivalent instructions.

    Handles encoding variants: different ModR/M for reg-reg moves,
    different opcode forms (89 vs 8B for mov), commutative operand
    order, and Capstone naming quirks (cwde vs cbw).
    """
    if len(orig_bytes) != len(nasm_bytes):
        return False
    key = (bytes(orig_bytes), bytes(nasm_bytes), address)
    if key in _sem_eq_cache:
        return _sem_eq_cache[key]
    md = _get_sem_eq_md()
    try:
        o = next(md.disasm(orig_bytes, address))
        n = next(md.disasm(nasm_bytes, address))
    except StopIteration:
        _sem_eq_cache[key] = False
        return False

    # — exact match (fast path) -----------------------------------------------
    if o.mnemonic == n.mnemonic and o.op_str == n.op_str:
        _sem_eq_cache[key] = True
        return True

    # — different mnemonics → no match ---------------------------------------
    if o.mnemonic != n.mnemonic:
        _sem_eq_cache[key] = False
        return False

    # — commutative: compare operand register sets, but ONLY for pure
    #    register-register operations.  If any operand is memory or
    #    immediate the displacement/value must match exactly, which the
    #    fast-path already checked (and failed since op_str differs).
    if o.mnemonic in _COMMUTATIVE:
        from capstone import CS_OP_REG
        o_ops = [op for op in o.operands if op.type == CS_OP_REG]
        n_ops = [n for n in n.operands if n.type == CS_OP_REG]
        if len(o_ops) == len(o.operands) == len(n_ops) == len(n.operands):
            result = (_reg_ids(o) == _reg_ids(n))
            _sem_eq_cache[key] = result
            return result

    _sem_eq_cache[key] = False
    return False


def _micro_assemble(nasm_text, offset, label_map=None, local_labels=None):
    key = (nasm_text, offset)
    if key in _assemble_cache:
        return _assemble_cache[key]

    prelude = f'org {offset}\nbits 16\n'
    if label_map:
        for lbl_off, lbl_name in label_map.items():
            prelude += f'{lbl_name} equ 0x{lbl_off:04x}\n'
    if local_labels:
        for lbl_off, lbl_name in local_labels.items():
            prelude += f'{lbl_name} equ 0x{lbl_off:04x}\n'
    asm = prelude + f'{nasm_text}\n'
    with tempfile.TemporaryDirectory() as td:
        asm_path = os.path.join(td, 't.asm')
        bin_path = os.path.join(td, 't.bin')
        with open(asm_path, 'w') as f:
            f.write(asm)
        r = subprocess.run(
            [NASM, '-O0', '-f', 'bin', '-w-number-overflow', '-o', bin_path, asm_path],
            capture_output=True, text=True,
        )
        if r.returncode != 0:
            _assemble_cache[key] = None
            return None
        if not os.path.exists(bin_path):
            _assemble_cache[key] = None
            return None
        with open(bin_path, 'rb') as f:
            built = f.read()
        _assemble_cache[key] = built
        return built


def clear_assemble_cache():
    _assemble_cache.clear()
    _sem_eq_cache.clear()


# ── data-block post-processing helpers ────────────────────────────────────

_FILE_FORMATS = [
    (0, b'\x0A', 'PCX image'),
    (0, b'MThd', 'MIDI sound'),
    (0, b'FORM', 'IFF container (image/audio)'),
    (0, b'BM',   'BMP bitmap'),
    (0, b'RIFF', 'RIFF container (WAV/AVI)'),
    (0, b'\x89PNG\r\n\x1a\n', 'PNG image'),
    (0, b'GIF87a',   'GIF image (v87a)'),
    (0, b'GIF89a',   'GIF image (v89a)'),
    (0, b'\xFF\xD8\xFF', 'JPEG image'),
    (0, b'MZ',    'DOS MZ executable'),
    (0, b'\x7FELF', 'ELF binary'),
    (0, b'Creative Voice File', 'Creative VOC audio'),
    (0, b'M.K.', 'Protracker MOD audio'),
    (0, b'IMPM',  'Impulse Tracker IT audio'),
    (0, b'Extended Module:', 'FastTracker XM audio'),
    (0, b'Z\x00', 'PkZip compressed (SQueezed)'),
    (0, b'PK\x03\x04', 'ZIP archive'),
    (0, b'Rar!\x1a\x07', 'RAR archive'),
    (0, b'\x1F\x8B', 'GZIP compressed'),
    (0, b'BZh',  'Bzip2 compressed'),
    (0, b'\x1F\x9D', 'LZW compressed (tar.z)'),
    (0, b'\x1F\xA0', 'LZH compressed (tar.z)'),
    (0, b'-lh',  'LHA/LZH archive'),
    (0, b'ZOO',  'ZOO archive'),
    (0, b'\x60\xEA', 'ARJ archive'),
    (0, b'LZIP', 'LZIP compressed'),
    (0, b'WAD',  'WAD archive (game resource)'),
    (0, b'IWAD', 'Doom IWAD'),
    (0, b'PWAD', 'Doom PWAD'),
]


def _try_decode_block(raw_bytes, start_offset):
    """Try to disassemble *raw_bytes* as 16-bit x86 instructions.

    Returns ``(instructions, all_decoded, has_control_flow)`` where
    *instructions* is the capstone instruction list, *all_decoded* is
    True when every byte forms a valid instruction, and *has_control_flow*
    is True when the sequence contains at least one ret/call/jmp/jcc.

    Returns ``(None, False, False)`` for all-zero blocks or blocks
    that cannot be decoded at all.
    """
    if not raw_bytes or all(b == 0 for b in raw_bytes):
        return None, False, False

    md = Cs(CS_ARCH_X86, CS_MODE_16)
    md.detail = True

    insns = list(md.disasm(raw_bytes, start_offset))
    if not insns:
        return None, False, False

    consumed = sum(insn.size for insn in insns)
    all_decoded = consumed >= len(raw_bytes)

    ctrl_flow = {'ret', 'retf', 'iret', 'retn', 'call', 'lcall', 'jmp', 'ljmp'}
    has_ctrl = any(
        insn.mnemonic in ctrl_flow
        or (insn.mnemonic.startswith('j')
            and insn.mnemonic not in ('jmp', 'ljmp')
            and len(insn.mnemonic) > 1)
        or insn.mnemonic in ('jcxz', 'jecxz', 'loop', 'loope', 'loopne')
        for insn in insns
    )
    return insns, all_decoded, has_ctrl


def _detect_jump_table(raw_bytes, start_offset, binary_len, known_addrs):
    """Check if *raw_bytes* is a jump table (consecutive word code pointers).

    Scans 2-byte little-endian words aligned to the block offset.
    A word is a valid code pointer if it is non-zero, falls inside the
    binary, and appears in *known_addrs*.  Requires ≥3 consecutive
    valid pointers.

    Returns the number of valid entries or ``None``.
    """
    n = len(raw_bytes)
    if n < 6:
        return None

    # Align scan to 2-byte boundary relative to start_offset
    skip = start_offset % 2
    if skip >= n:
        return None

    # If the block is mostly zeros, it is not a jump table
    zero_count = sum(1 for b in raw_bytes if b == 0)
    if zero_count > len(raw_bytes) // 2:
        return None

    entries = []
    off = skip
    while off + 2 <= n:
        val = struct.unpack_from('<H', raw_bytes, off)[0]
        is_addr = val != 0 and 0 <= val < binary_len and val in known_addrs
        entries.append(is_addr)
        off += 2

    if len(entries) < 3:
        return None

    # Find longest consecutive run
    best = 0
    cur = 0
    for flag in entries:
        if flag:
            cur += 1
            best = max(best, cur)
        else:
            cur = 0

    return best if best >= 3 else None


def _detect_file_format(raw_bytes):
    """Check if *raw_bytes* starts with a known file-format magic.

    Returns a human-readable format name (e.g. ``'PCX image'``) or
    ``None``.
    """
    for offset, magic, name in _FILE_FORMATS:
        if len(raw_bytes) >= offset + len(magic):
            if raw_bytes[offset:offset + len(magic)] == magic:
                return name
    return None





def _generate_inline_code(insns, raw_bytes, start_offset, binary_data, label_map, exact_bytes=False):
    """Build mnem/db_with_comment/db records for a code-like block.

    Each instruction is individually round-trip verified.  Zero-byte
    instructions (padding) are emitted as plain ``db`` without annotation.
    """
    from lib.format import format_instruction

    records = []

    for insn in insns:
        rel_off = insn.address - start_offset
        if rel_off < 0 or rel_off + insn.size > len(raw_bytes):
            break

        bts = raw_bytes[rel_off:rel_off + insn.size]

        # Pure zero padding → plain db (no annotation)
        if all(b == 0 for b in bts):
            for b in bts:
                records.append({
                    'type': 'db',
                    'text': f'0x{b:02x}',
                    'offset': insn.address,
                    'size': 1,
                })
            continue

        nasm_text = format_instruction(insn, label_map)

        if nasm_text is None:
            for b in bts:
                records.append({
                    'type': 'db',
                    'text': f'0x{b:02x}',
                    'offset': insn.address,
                    'size': 1,
                })
            continue

        built = _micro_assemble(nasm_text, insn.address, label_map)
        ok = built and len(built) >= len(bts) and built[:len(bts)] == bts
        if not ok and built:
            ok = _is_semantically_equivalent(bts, built[:len(bts)], insn.address)
        if ok:
            records.append({
                'type': 'mnem',
                'text': nasm_text,
                'offset': insn.address,
                'size': insn.size,
            })
        else:
            db_hex = ', '.join(f'0x{b:02x}' for b in bts)
            records.append({
                'type': 'db_with_comment',
                'text': f'{insn.mnemonic} {insn.op_str}',
                'db_hex': db_hex,
                'offset': insn.address,
                'size': insn.size,
            })

    return records


def _postprocess_data_blocks(records, binary_data, known_addrs, label_map, exact_bytes=False):
    """Replace code-like ``data_block`` records with inline records;
    annotate jump tables and known file formats on the rest.

    Operates in-place on the *records* list.  Returns the same list.
    """
    new_records = []
    binary_len = len(binary_data)

    for rec in records:
        if rec['type'] != 'data_block':
            new_records.append(rec)
            continue

        start = rec['start']
        end = rec['end']
        raw = binary_data[start:end]

        if len(raw) < 2:
            new_records.append(rec)
            continue

        # --- try to decode as code -------------------------------------------
        insns, all_decoded, has_ctrl = _try_decode_block(raw, start)
        if insns and has_ctrl:
            consumed = sum(i.size for i in insns)
            gap = len(raw) - consumed
            if all_decoded or (0 < gap <= 3):
                inline = _generate_inline_code(insns, raw, start, binary_data, label_map, exact_bytes=True)
                if inline:
                    new_records.extend(inline)
                    if gap > 0:
                        for g_off in range(consumed, len(raw)):
                            new_records.append({
                                'type': 'db',
                                'text': f'0x{raw[g_off]:02x}',
                                'offset': start + g_off,
                                'size': 1,
                            })
                    continue

        # --- check for jump table --------------------------------------------
        jt_count = _detect_jump_table(raw, start, binary_len, known_addrs)
        if jt_count is not None:
            rec['format_hint'] = f'Jump table: {jt_count} entries'
            new_records.append(rec)
            continue

        # --- check for known file format -------------------------------------
        fmt = _detect_file_format(raw)
        if fmt is not None:
            rec['format_hint'] = fmt
            new_records.append(rec)
            continue

        # --- plain data block ------------------------------------------------
        new_records.append(rec)

    return new_records


def _group_db_lines(hex_bytes):
    """Group hex bytes into db lines, 16 bytes per line."""
    lines = []
    for i in range(0, len(hex_bytes), 16):
        chunk = hex_bytes[i:i + 16]
        lines.append(f'    db {", ".join(chunk)}')
    return lines


def _render_data_block(raw):
    """Render raw bytes as mixed string literals, zero-run repeats,
    and grouped hex db lines.

    Every run of printable ASCII (0x20-0x7E, ≥5 chars) becomes ``db 'text'``
    (with trailing ``0`` if followed by NUL).  Runs of ≥4 zero bytes are
    compressed to ``times N db 0``.  Remaining bytes are grouped 16 per line.
    """
    lines = []
    i = 0
    buf = []
    def flush():
        if buf:
            lines.extend(_group_db_lines(buf))
            buf.clear()
    while i < len(raw):
        b = raw[i]
        # ---- zero-run compression -------------------------------------------
        if b == 0:
            s = i
            i += 1
            while i < len(raw) and raw[i] == 0:
                i += 1
            run_len = i - s
            if run_len >= 4:
                flush()
                lines.append(f"    times {run_len} db 0")
            else:
                for _ in range(run_len):
                    buf.append('0x00')
            continue
        # ---- printable ASCII run --------------------------------------------
        if 0x20 <= b < 0x7f:
            s = i
            i += 1
            while i < len(raw) and 0x20 <= raw[i] < 0x7f:
                i += 1
            if i - s < 5:
                for off in range(s, i):
                    buf.append(f'0x{raw[off]:02x}')
                continue
            raw_str = bytes(raw[s:i]).decode('ascii')
            has_nul = i < len(raw) and raw[i] == 0
            if has_nul:
                i += 1
            if "'" in raw_str and '"' in raw_str:
                for off in range(s, i):
                    buf.append(f'0x{raw[off]:02x}')
                continue
            flush()
            delim = '"' if "'" in raw_str else "'"
            if has_nul:
                lines.append(f"    db {delim}{raw_str}{delim}, 0")
            else:
                lines.append(f"    db {delim}{raw_str}{delim}")
            continue
        # ---- non-printable byte ---------------------------------------------
        buf.append(f'0x{raw[i]:02x}')
        i += 1
    flush()
    return lines


def _data_block_header(data_start, data_end):
    """Return a block comment for a data region."""
    size = data_end - data_start
    s = []
    s.append(f'; {"=" * 42}')
    s.append(f'; DATA BLOCK: 0x{size:x} bytes (offsets 0x{data_start:04x} - 0x{data_end - 1:04x})')
    s.append(f'; {"=" * 42}')
    return '\n'.join(s)


def _emit_label(name):
    return f'{name}:'


def _compute_func_boundaries(label_map, binary_data):
    """Return {start: (end, name)} for each named function.
    
    Walks backward to find push_bp prologue, then forward until a
    terminator (ret/retf/iret/hlt) to determine the byte range.
    
    Skips auto-generated names (loc_XXXX, *_loc_XXXX) to avoid expensive
    prologue scanning for hundreds of default labels.
    """
    if not label_map:
        return {}
    md = Cs(CS_ARCH_X86, CS_MODE_16)
    _TERMINATORS = {'ret', 'retf', 'iret', 'hlt'}
    boundaries = {}
    for off in sorted(label_map.keys()):
        name = label_map[off]
        # Skip auto-generated labels (loc_XXXX, *_loc_XXXX) — only compute
        # boundaries for semantically-named functions (pattern-matched or
        # trampoline stubs).
        if name == f'loc_{off:04x}' or name.endswith(f'_loc_{off:04x}'):
            continue
        # Walk backward up to 16 bytes to find 0x55 (push bp)
        func_start = off
        for i in range(min(16, off), 0, -1):
            p = off - i
            if binary_data[p] == 0x55:
                try:
                    prev = list(md.disasm(binary_data[p:off], p))
                except Exception:
                    prev = []
                if prev and prev[-1].address + prev[-1].size == off:
                    func_start = p
                    break
        # Walk forward from func_start until a terminator
        end = min(func_start + 512, len(binary_data))
        for insn in md.disasm(binary_data[func_start:end], func_start):
            if insn.mnemonic in _TERMINATORS:
                end = insn.address + insn.size
                break
            end = insn.address + insn.size
        if func_start not in boundaries:
            boundaries[func_start] = (end, name)
    return boundaries


def _compute_local_labels(func_boundaries, code_targets, label_map):
    """Return {offset: '@..name.l{N}'} for code targets within named functions.

    Uses the ``..`` prefix (NASM special-label convention) so these don't
    interact with local-label scoping.  The ``.l{N}`` suffix is visually
    distinct from any dedup suffix on the function name.

    Only targets strictly inside a function boundary (not the function's
    own entry) get local labels.  Skip offsets already in *label_map*.
    """
    if not func_boundaries or not code_targets:
        return {}
    local_labels = {}
    for fn_start, (fn_end, fn_name) in sorted(func_boundaries.items()):
        n = 0
        for off in sorted(t for t in code_targets if fn_start < t < fn_end):
            if off not in label_map:
                n += 1
                local_labels[off] = f'@..{fn_name}.l{n}'
    return local_labels


def _flush_data_block(records, pending_data, data_block_start, end_off):
    """Append a data_block record if *pending_data* is non-empty, then clear."""
    if not pending_data:
        return None, []
    records.append({
        'type': 'data_block',
        'start': data_block_start,
        'end': end_off,
        'bytes': list(pending_data),
    })
    return None, []  # new (data_block_start, pending_data)


def _emit_label_record(records, off, label_map, local_labels=None):
    if label_map and off in label_map:
        records.append({
            'type': 'label',
            'text': f'{_emit_label(label_map[off])}',
            'offset': off,
        })
    elif local_labels and off in local_labels:
        records.append({
            'type': 'label',
            'text': _emit_label(local_labels[off]),
            'offset': off,
        })
    else:
        records.append({
            'type': 'label',
            'text': _emit_label(f'loc_{off:04x}'),
            'offset': off,
        })


def verify(binary_data, start_offset, instructions, name='', label_map=None,
           bitmap=None, code_targets=None, exact_bytes=False,
           structs=None):
    """Produce NASM source text from *binary_data* and *instructions*.

    Parameters
    ----------
    binary_data : bytes
    start_offset : int
        Number of header bytes at the start of *binary_data*.
    instructions : iterable of capstone instructions
        Pre-disassembled instruction stream (from decode.disassemble).
    name : str
        Overlay name (used only for debugging).
    label_map : dict | None
        Known function labels (address → name).  These always get labels.
    bitmap : bytearray | None
        Byte-level classification (IS_CODE / IS_DATA).  When provided,
        data blocks are grouped under block headers.
    code_targets : set | None
        Call targets and jump-table entries that receive auto-generated
        ``loc_XXXX`` labels.  Intra-function branch targets are NOT
        included (they are skipped to reduce label noise).

    Returns
    -------
    asm_text : str
    stats : dict
    """
    from lib.format import format_instruction

    insns = list(instructions)
    total = len(binary_data)

    # Build an address→instruction index for O(1) lookup
    insn_by_addr = {insn.address: insn for insn in insns}

    # All known code addresses (for label emission)
    known_addrs = set(label_map.keys()) if label_map else set()
    if code_targets:
        known_addrs |= code_targets

    # Compute function boundaries and local labels for internal jump targets
    func_boundaries = _compute_func_boundaries(label_map, binary_data)
    local_labels = _compute_local_labels(func_boundaries, code_targets, label_map)

    # Filter out any auto-detected labels that land inside a decoded
    # instruction — the offset is almost certainly misaligned (the byte
    # belongs to a different code path's mnemonic, not a real entry point).
    # Emitting such a label would split the containing instruction into db.
    # Named entries that overlap are still used for function-body decoding
    # (force-code patch) but are pruned from the output namespace here.
    if label_map:
        bad = set()
        for off in label_map:
            for addr, insn in insn_by_addr.items():
                if addr < off < addr + insn.size:
                    bad.add(off)
                    break
        for off in bad:
            del label_map[off]
        known_addrs = set(label_map.keys())
        if code_targets:
            known_addrs |= code_targets
    if local_labels:
        local_labels = {
            off: name for off, name in local_labels.items()
            if off in insn_by_addr
        }

    records = []
    pending_data = []
    data_block_start = None

    off = start_offset
    while off < total:
        # --- label at current offset? ---
        # Only emit labels for real instruction starts or named labels.
        # Orphan targets (in discovered but not actual code) are skipped
        # to prevent per-byte data-block fragmentation.
        if off in known_addrs and (off in insn_by_addr or (label_map and off in label_map) or (local_labels and off in local_labels)):
            data_block_start, pending_data = _flush_data_block(
                records, pending_data, data_block_start, off,
            )
            _emit_label_record(records, off, label_map, local_labels)
        insn = insn_by_addr.get(off)

        if insn is not None:
            insn_end = off + insn.size

            # Check whether any known address falls *inside* this
            # instruction (i.e. off < addr < insn_end).  If so, the
            # bytes belong to an overlapping code-path entry point and
            # must be emitted as db so that labels can attach cleanly.
            # Only honour inner labels that are real instruction starts
            # or named labels — random byte-granularity targets from the
            # classifier (misaligned code paths) are spurious.
            inner_labels = sorted(
                a for a in known_addrs
                if off < a < insn_end and (a in insn_by_addr or (label_map and a in label_map) or (local_labels and a in local_labels))
            )

            if inner_labels:
                # Conflict zone — label address lies inside a decoded
                # instruction from a different entry point.  Emit raw
                # db lines (no block headers) so the label can attach.
                data_block_start, pending_data = _flush_data_block(
                    records, pending_data, data_block_start, off,
                )
                chunk_start = off
                for lab in inner_labels:
                    for b_off in range(chunk_start, lab):
                        records.append({
                            'type': 'db',
                            'text': f'0x{binary_data[b_off]:02x}',
                            'offset': b_off,
                            'size': 1,
                        })
                    _emit_label_record(records, lab, label_map, local_labels)
                    chunk_start = lab
                for b_off in range(chunk_start, insn_end):
                    records.append({
                        'type': 'db',
                        'text': f'0x{binary_data[b_off]:02x}',
                        'offset': b_off,
                        'size': 1,
                    })
                off = insn_end
                continue

            # Normal instruction — no inner labels
            data_block_start, pending_data = _flush_data_block(
                records, pending_data, data_block_start, off,
            )

            bts = binary_data[off:insn_end]
            nasm_text = format_instruction(insn, label_map, local_labels)

            if nasm_text:
                built = _micro_assemble(nasm_text, off, label_map, local_labels)
                ok = built and len(built) >= len(bts) and built[:len(bts)] == bts
                if not ok and not exact_bytes and built:
                    ok = _is_semantically_equivalent(bts, built[:len(bts)], off)
                if ok:
                    records.append({
                        'type': 'mnem',
                        'text': nasm_text,
                        'offset': off,
                        'size': insn.size,
                    })
                else:
                    db_hex = ', '.join(f'0x{b:02x}' for b in bts)
                    records.append({
                        'type': 'db_with_comment',
                        'text': f'{insn.mnemonic} {insn.op_str}',
                        'db_hex': db_hex,
                        'offset': off,
                        'size': insn.size,
                    })
            else:
                db_hex = ', '.join(f'0x{b:02x}' for b in bts)
                records.append({
                    'type': 'db',
                    'text': db_hex,
                    'offset': off,
                    'size': insn.size,
                })
            off = insn_end

        else:
            # Data byte
            if data_block_start is None:
                data_block_start = off
            pending_data.append(f'0x{binary_data[off]:02x}')
            off += 1

    # Flush final data block
    if pending_data:
        records.append({
            'type': 'data_block',
            'start': data_block_start,
            'end': total,
            'bytes': list(pending_data),
        })

    # --- Post-process: detect code-like blocks, jump tables, file formats ---
    records = _postprocess_data_blocks(records, binary_data, known_addrs, label_map, exact_bytes)

    # --- Build source text --------------------------------------------------
    src_lines = _build_source(records, start_offset, binary_data)

    mnem_count = sum(1 for r in records if r['type'] == 'mnem')
    db_count = sum(1 for r in records if r['type'] == 'db')
    dbc_count = sum(1 for r in records if r['type'] == 'db_with_comment')
    data_blocks = sum(1 for r in records if r['type'] == 'data_block')
    label_count = sum(1 for r in records if r['type'] == 'label')

    struct_count = 0
    if structs:
        from lib.struct_analysis import format_nasm_structs
        struct_text = format_nasm_structs(structs)
        if struct_text.strip():
            src_lines = struct_text + '\n' + src_lines
            struct_count = len(structs)

    return src_lines, {
        'mnemonic': mnem_count,
        'data': db_count,
        'with_comment': dbc_count,
        'data_blocks': data_blocks,
        'labels': label_count,
        'structs': struct_count,
        'status': 'OK',
    }


def _build_source(records, start_offset, binary_data):
    """Render the record list to final NASM text."""
    out = []
    out.append('org 0')
    out.append('bits 16')
    out.append('')

    if start_offset > 0:
        hdr = binary_data[:start_offset]
        hdr_hex = ', '.join(f'0x{b:02x}' for b in hdr)
        out.append(f'    db {hdr_hex} ; header ({start_offset} bytes)')
        out.append('')

    i = 0
    while i < len(records):
        rec = records[i]

        if rec['type'] == 'label':
            out.append(f'{rec["text"]}')

        elif rec['type'] == 'data_block':
            out.append('')
            fmt = rec.get('format_hint', '')
            if fmt:
                out.append(f'; {"=" * 42}')
                out.append(f'; {fmt} (offsets 0x{rec["start"]:04x} - 0x{rec["end"] - 1:04x})')
                out.append(f'; {"=" * 42}')
            out.extend(_render_data_block(binary_data[rec['start']:rec['end']]))
            out.append('')

        elif rec['type'] == 'mnem':
            out.append(f'    {rec["text"]}')

        elif rec['type'] == 'db_with_comment':
            out.append(f'    db {rec["db_hex"]} ; {rec["text"]}')

        elif rec['type'] == 'db':
            # Merge consecutive db records; compress zero runs
            hexes = []
            zero_run = 0
            while i < len(records) and records[i]['type'] == 'db':
                text = records[i]['text']
                if text == '0x00':
                    zero_run += 1
                    if zero_run == 1:
                        if hexes:
                            out.extend(_group_db_lines(hexes))
                            hexes = []
                else:
                    if zero_run:
                        if zero_run >= 4:
                            out.append(f'    times {zero_run} db 0')
                        else:
                            hexes.extend(['0x00'] * zero_run)
                        zero_run = 0
                    hexes.append(text)
                i += 1
            if zero_run:
                if zero_run >= 4:
                    out.append(f'    times {zero_run} db 0')
                else:
                    hexes.extend(['0x00'] * zero_run)
            if hexes:
                out.extend(_group_db_lines(hexes))
            continue

        i += 1

    out.append('')
    return '\n'.join(out)
