"""NASM source rendering: data blocks, records, headers and master file."""

import struct

from lib.compare.splitting import _partition_function_records


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


def _render_records(records, binary_data, show_offsets=True):
    """Render ordered body records, including textual NASM include directives."""
    out = []
    i = 0
    while i < len(records):
        rec = records[i]

        if rec['type'] == 'include':
            offset = rec.get('offset')
            if show_offsets and offset is not None:
                out.append(f'{rec["text"]:<42s} ; 0x{offset:04x}')
            else:
                out.append(rec['text'])
            out.append('')

        elif rec['type'] == 'label':
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

        elif rec['type'] == 'jump_table':
            out.append(f'{rec["label"]}:')
            adjust = rec.get('adjust', 0)
            addr = rec['start']
            entry_size = rec.get('entry_size', 2)
            for entry in rec['entries']:
                if entry is None:
                    text = 'dw 0'
                elif isinstance(entry, str):
                    suffix = f' + 0x{adjust:04x}' if adjust else ''
                    text = f'dw {entry} - IMAGE_BASE{suffix}'
                else:
                    text = f'dw 0x{entry:04x}'
                if show_offsets:
                    out.append(f'    {text:<42s} ; 0x{addr:04x}')
                else:
                    out.append(f'    {text}')
                addr += entry_size

        elif rec['type'] == 'mnem':
            annotation = rec.get('annotation')
            if annotation:
                out.append(f'    {rec["text"]} ; {annotation}')
            elif show_offsets:
                out.append(f'    {rec["text"]:<32s} ; 0x{rec["offset"]:04x}')
            else:
                out.append(f'    {rec["text"]}')

        elif rec['type'] == 'db_with_comment':
            annotation = rec.get('annotation')
            if annotation:
                out.append(f'    db {rec["db_hex"]} ; {rec["text"]}  ; {annotation}')
            else:
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

    return out


def _render_mz_header(header):
    """Render the fixed MZ fields with a shared comment column."""
    _, cblp, cp, crlc, cparhdr, minalloc, maxalloc, ss, sp, \
        csum, ip, cs, lfarlc, ovno = struct.unpack_from('<2s13H', header, 0)
    fields = [
        ('db "MZ"', 'e_magic: DOS MZ signature'),
        (f'dw 0x{cblp:04x}', 'e_cblp: bytes in final 512-byte page (0 means full)'),
        (f'dw 0x{cp:04x}', 'e_cp: total 512-byte pages in the file'),
        (f'dw 0x{crlc:04x}', 'e_crlc: number of relocation entries'),
        (f'dw 0x{cparhdr:04x}', 'e_cparhdr: header size in 16-byte paragraphs'),
        (f'dw 0x{minalloc:04x}', 'e_minalloc: minimum extra memory paragraphs'),
        (f'dw 0x{maxalloc:04x}', 'e_maxalloc: maximum extra memory paragraphs'),
        (f'dw 0x{ss:04x}', 'e_ss: initial stack segment, relative to load module'),
        (f'dw 0x{sp:04x}', 'e_sp: initial stack pointer'),
        (f'dw 0x{csum:04x}', 'e_csum: file checksum (often unused)'),
        (f'dw 0x{ip:04x}', 'e_ip: initial instruction pointer'),
        (f'dw 0x{cs:04x}', 'e_cs: initial code segment, relative to load module'),
        (f'dw 0x{lfarlc:04x}', 'e_lfarlc: file offset of relocation table'),
        (f'dw 0x{ovno:04x}', 'e_ovno: overlay number (0 for main executable)'),
    ]
    return [
        '    ; DOS MZ executable header (512 bytes)',
        *(f'    {instruction:<14} ; {comment}'
          for instruction, comment in fields),
    ]


def _render_ovr_header(header):
    """Render the Aztec overlay header fields with a shared comment column."""
    (o_magic, o_corg, o_csize, o_dorg, o_dsize, o_bss, o_entry) = \
        struct.unpack_from('<7H', header, 0)
    fields = [
        (f'dw 0x{o_magic:04x}', 'o_magic: overlay signature (0x00f2)'),
        (f'dw 0x{o_corg:04x}', 'o_corg: code load origin (memory offset)'),
        (f'dw 0x{o_csize:04x}', 'o_csize: code size in bytes'),
        (f'dw 0x{o_dorg:04x}', 'o_dorg: data load origin (memory offset)'),
        (f'dw 0x{o_dsize:04x}', 'o_dsize: initialized data size'),
        (f'dw 0x{o_bss:04x}', 'o_bss: uninitialized data size'),
        (f'dw 0x{o_entry:04x}', 'o_entry: overlay entry offset (CS)'),
    ]
    return [
        '    ; Aztec C86 overlay header (14 bytes)',
        *(f'    {instruction:<14} ; {comment}'
          for instruction, comment in fields),
    ]


def _build_source(records, start_offset, binary_data, label_map=None, show_offsets=True,
                  consumer_inc=None, immediate_labels=None, split_ranges=None,
                  split_dir='ds', mem_equ=None, image_base=None):
    """Render the master NASM source and any generated function includes."""
    out = ['org 0', 'bits 16']
    if consumer_inc:
        out.append(f'%include "{consumer_inc}"')
        out.append('')

    base = start_offset if image_base is None else image_base
    uses_image_base = base > 0 or any(
        'IMAGE_BASE' in rec.get('text', '') for rec in records
    )
    if uses_image_base:
        # ``label - IMAGE_BASE`` renders embedded CS pointers as their load
        # offset; IMAGE_BASE is the binary's load offset (header size for MZ).
        out.append('%ifndef IMAGE_BASE')
        out.append(f'IMAGE_BASE equ 0x{base:04x}')
        out.append('%endif')
        out.append('')

    if (start_offset == 0x200 and len(binary_data) >= 0x200
            and binary_data[:2] == b'MZ'):
        hdr = binary_data[:start_offset]
        out.extend(_render_mz_header(hdr))
        out.append('')
        out.extend(_render_data_block(hdr[28:]))
        out.append('')
    elif (start_offset >= 14 and len(binary_data) >= 14
            and binary_data[:2] == b'\xf2\x00'):
        out.extend(_render_ovr_header(binary_data[:14]))
        out.append('')
    elif start_offset > 0:
        hdr = binary_data[:start_offset]
        out.append(f'    ; header ({start_offset} bytes)')
        out.extend(_render_data_block(hdr))
        out.append('')

    if label_map:
        label_offsets = {r['offset'] for r in records if r['type'] == 'label'}
        for addr in sorted(label_map):
            name = label_map[addr]
            if name.startswith('data_'):
                out.append(f'{name} equ 0x{addr:04x}')
            elif addr not in label_offsets:
                out.append(f'{name} equ 0x{addr:04x}')
    if immediate_labels:
        for addr in sorted(immediate_labels):
            name = immediate_labels[addr]
            if not label_map or addr not in label_map or label_map[addr] != name:
                out.append(f'{name} equ 0x{addr:04x}')
    if mem_equ:
        # Segment-resolved operand symbols (Phase 4): cseg_ (code segment file
        # offset), dseg_/bss_ (data segment offset), psp_ (PSP field).
        for name in sorted(mem_equ, key=lambda n: (mem_equ[n], n)):
            out.append(f'{name} equ 0x{mem_equ[name]:04x}')
    if label_map or immediate_labels or mem_equ:
        out.append('')

    main_records, split_records = _partition_function_records(
        records, split_ranges, split_dir,
    )
    out.extend(_render_records(main_records, binary_data, show_offsets))

    split_sources = {
        path: '\n'.join(_render_records(fragment, binary_data, show_offsets)) + '\n'
        for path, fragment in split_records.items()
    }
    out.append('')
    return '\n'.join(out), split_sources
