"""Byte verification and NASM source generation.

Each candidate mnemonic is round-trip verified at its original offset.
Lines that don't reassemble to the exact original bytes are kept as
``db`` with a comment.  Data blocks are grouped under block headers
when a classification bitmap is provided.
"""

import os
import struct

from capstone import Cs, CS_ARCH_X86, CS_MODE_16

from lib.model import IS_CODE, IS_DATA, IS_UNKNOWN
from lib.verify.assemble import micro_assemble, is_semantically_equivalent, clear_assemble_cache


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

    Returns (instructions, all_decoded, has_control_flow) or
    (None, False, False) for all-zero or undecodable blocks.
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

    Returns the number of valid entries or None.
    """
    n = len(raw_bytes)
    if n < 6:
        return None

    skip = start_offset % 2
    if skip >= n:
        return None

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
    """Check if *raw_bytes* starts with a known file-format magic."""
    for offset, magic, name in _FILE_FORMATS:
        if len(raw_bytes) >= offset + len(magic):
            if raw_bytes[offset:offset + len(magic)] == magic:
                return name
    return None


def _generate_inline_code(insns, raw_bytes, start_offset, binary_data, label_map, exact_bytes=False):
    """Build mnem/db_with_comment/db records for a code-like block."""
    from lib.format import format_instruction

    records = []

    for insn in insns:
        rel_off = insn.address - start_offset
        if rel_off < 0 or rel_off + insn.size > len(raw_bytes):
            break

        bts = raw_bytes[rel_off:rel_off + insn.size]

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

        built = micro_assemble(nasm_text, insn.address, label_map)
        ok = built and len(built) >= len(bts) and built[:len(bts)] == bts
        if not ok and not exact_bytes and built:
            ok = is_semantically_equivalent(bts, built[:len(bts)], insn.address)
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


def _postprocess_data_blocks(records, binary_data, known_addrs, label_map, exact_bytes=False, bitmap=None):
    """Replace code-like data_block records with inline records;
    annotate jump tables and known file formats on the rest."""
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

        # If bitmap marks this whole block as DATA, skip code promotion
        # (the pipeline arbiter already decided it's data).
        if bitmap is not None:
            block_bitmap = bitmap[start:end]
            if all(b == 2 for b in block_bitmap):
                new_records.append(rec)
                continue

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

        jt_count = _detect_jump_table(raw, start, binary_len, known_addrs)
        if jt_count is not None:
            rec['format_hint'] = f'Jump table: {jt_count} entries'
            new_records.append(rec)
            continue

        fmt = _detect_file_format(raw)
        if fmt is not None:
            rec['format_hint'] = fmt
            new_records.append(rec)
            continue

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
    and grouped hex db lines."""
    lines = []
    i = 0
    buf = []
    def flush():
        if buf:
            lines.extend(_group_db_lines(buf))
            buf.clear()
    while i < len(raw):
        b = raw[i]
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
        buf.append(f'0x{raw[i]:02x}')
        i += 1
    flush()
    return lines


def _emit_label(name):
    return f'{name}:'


def _compute_func_boundaries(label_map, binary_data):
    """Return {start: (end, name)} for each named function."""
    if not label_map:
        return {}
    md = Cs(CS_ARCH_X86, CS_MODE_16)
    _TERMINATORS = {'ret', 'retf', 'iret', 'hlt'}
    boundaries = {}
    for off in sorted(label_map.keys()):
        name = label_map[off]
        if name == f'loc_{off:04x}' or name.endswith(f'_loc_{off:04x}'):
            continue
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
    """Return {offset: '@..name.l{N}'} for code targets within named functions."""
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
    """Append a data_block record if *pending_data* is non-empty."""
    if not pending_data:
        return None, []
    records.append({
        'type': 'data_block',
        'start': data_block_start,
        'end': end_off,
        'bytes': list(pending_data),
    })
    return None, []


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
           structs=None, asm_dir=None, cascade_promoted=None):
    """Produce NASM source text from *binary_data* and *instructions*.

    Parameters
    ----------
    binary_data : bytes
    start_offset : int
        Number of header bytes at the start of *binary_data*.
    instructions : iterable of capstone instructions
    name : str
    label_map : dict | None
    bitmap : bytearray | None
    code_targets : set | None
    structs : list | None
    asm_dir : str | None
    cascade_promoted : set | None

    Returns (asm_text, stats).
    """
    from lib.format import format_instruction

    insns = list(instructions)
    total = len(binary_data)

    insn_by_addr = {insn.address: insn for insn in insns}

    known_addrs = set(label_map.keys()) if label_map else set()
    if code_targets:
        known_addrs |= code_targets

    func_boundaries = _compute_func_boundaries(label_map, binary_data)
    local_labels = _compute_local_labels(func_boundaries, code_targets, label_map)

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
        if off in known_addrs and (off in insn_by_addr or (label_map and off in label_map) or (local_labels and off in local_labels)):
            data_block_start, pending_data = _flush_data_block(
                records, pending_data, data_block_start, off,
            )
            _emit_label_record(records, off, label_map, local_labels)
        insn = insn_by_addr.get(off)

        if insn is not None:
            insn_end = off + insn.size

            inner_labels = sorted(
                a for a in known_addrs
                if off < a < insn_end and (a in insn_by_addr or (label_map and a in label_map) or (local_labels and a in local_labels))
            )

            if inner_labels:
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

            data_block_start, pending_data = _flush_data_block(
                records, pending_data, data_block_start, off,
            )

            bts = binary_data[off:insn_end]
            nasm_text = format_instruction(insn, label_map, local_labels)

            if nasm_text:
                built = micro_assemble(nasm_text, off, label_map, local_labels)
                exact_here = exact_bytes
                ok = built and len(built) >= len(bts) and built[:len(bts)] == bts
                if not ok and not exact_here and built:
                    ok = is_semantically_equivalent(bts, built[:len(bts)], off)
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
            if data_block_start is None:
                data_block_start = off
            pending_data.append(f'0x{binary_data[off]:02x}')
            off += 1

    if pending_data:
        records.append({
            'type': 'data_block',
            'start': data_block_start,
            'end': total,
            'bytes': list(pending_data),
        })

    records = _postprocess_data_blocks(records, binary_data, known_addrs, label_map, exact_bytes, bitmap)

    emit_class = bytearray(total)
    label_positions = bytearray(total)
    for rec in records:
        if rec['type'] == 'label':
            off = rec['offset']
            if off < total:
                label_positions[off] = 1
            continue
        if rec['type'] == 'mnem':
            off, sz = rec['offset'], rec['size']
            for i in range(off, off + sz):
                emit_class[i] = IS_CODE
        elif rec['type'] in ('data_block', 'db', 'db_with_comment'):
            if rec['type'] == 'data_block':
                for i in range(rec['start'], rec['end']):
                    emit_class[i] = IS_DATA
            else:
                off, sz = rec['offset'], rec.get('size', 1)
                for i in range(off, off + sz):
                    emit_class[i] = IS_DATA

    src_lines = _build_source(records, start_offset, binary_data)

    mnem_count = sum(1 for r in records if r['type'] == 'mnem')
    db_count = sum(1 for r in records if r['type'] == 'db')
    dbc_count = sum(1 for r in records if r['type'] == 'db_with_comment')
    data_blocks = sum(1 for r in records if r['type'] == 'data_block')
    label_count = sum(1 for r in records if r['type'] == 'label')

    struct_count = 0
    if structs:
        from lib.struct_analysis import write_struct_inc_files
        if asm_dir is None:
            asm_dir = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
        structs_dir = os.path.join(asm_dir, 'structs')
        inc_line = write_struct_inc_files(structs, name, structs_dir)
        if inc_line:
            src_lines = '%include "structs/structs.inc"\n' + inc_line + '\n' + src_lines
            struct_count = len(structs)

    return src_lines, {
        'mnemonic': mnem_count,
        'data': db_count,
        'with_comment': dbc_count,
        'data_blocks': data_blocks,
        'labels': label_count,
        'structs': struct_count,
        'status': 'OK',
    }, emit_class, label_positions


def _build_source(records, start_offset, binary_data):
    """Render the record list to final NASM text."""
    out = []
    out.append('org 0')
    out.append('bits 16')
    out.append('')

    if start_offset == 0x200:
        hdr = binary_data[:start_offset]
        magic, cblp, cp, crlc, cparhdr, minalloc, maxalloc, ss, sp, \
            csum, ip, cs, lfarlc, ovno = struct.unpack_from('<2s13H', hdr, 0)
        out.append('    ; DOS MZ executable header')
        out.append(f'    db "MZ"         ; e_magic')
        out.append(f'    dw 0x{cblp:04x}  ; e_cblp')
        out.append(f'    dw 0x{cp:04x}    ; e_cp')
        out.append(f'    dw 0x{crlc:04x}  ; e_crlc')
        out.append(f'    dw 0x{cparhdr:04x} ; e_cparhdr')
        out.append(f'    dw 0x{minalloc:04x} ; e_minalloc')
        out.append(f'    dw 0x{maxalloc:04x} ; e_maxalloc')
        out.append(f'    dw 0x{ss:04x}   ; e_ss')
        out.append(f'    dw 0x{sp:04x}   ; e_sp')
        out.append(f'    dw 0x{csum:04x} ; e_csum')
        out.append(f'    dw 0x{ip:04x}   ; e_ip')
        out.append(f'    dw 0x{cs:04x}   ; e_cs')
        out.append(f'    dw 0x{lfarlc:04x} ; e_lfarlc')
        out.append(f'    dw 0x{ovno:04x} ; e_ovno')
        out.append('')
        out.extend(_render_data_block(hdr[28:]))
        out.append('')

    elif start_offset > 0:
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
            blk_size = rec['end'] - rec['start']
            fmt = rec.get('format_hint', '')
            is_tiny = blk_size < 16
            if not is_tiny:
                out.append('')
            if fmt:
                out.append(f'; {"=" * 42}')
                out.append(f'; {fmt} (offsets 0x{rec["start"]:04x} - 0x{rec["end"] - 1:04x})')
                out.append(f'; {"=" * 42}')
            out.extend(_render_data_block(binary_data[rec['start']:rec['end']]))
            if not is_tiny:
                out.append('')

        elif rec['type'] == 'mnem':
            out.append(f'    {rec["text"]}')

        elif rec['type'] == 'db_with_comment':
            out.append(f'    db {rec["db_hex"]} ; {rec["text"]}')

        elif rec['type'] == 'db':
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
