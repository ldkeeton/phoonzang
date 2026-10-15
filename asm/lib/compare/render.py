"""NASM source rendering: data blocks, records, headers and master file."""

import re
import struct

from lib.compare.splitting import _partition_function_records
from lib.names import generic_prefix, stem


# Minimum printable-run length for the D1 string anchor.  Shorter runs are
# sliced at the exact byte (cheap, and nothing readable is lost).
_MIN_STRING_ANCHOR = 6

# The shared host/overlay data-segment size, emitted as a real symbol so a code
# immediate that hard-codes it follows a resized data segment (plan.md D7.0b).
_DSSIZE_SYMBOL = '__zdseg_end'

# The host's resident-code end -- the overlay load address ``o_corg`` (plan.md
# D7.2).  Emitted by the host at the start of the code->data zero gap, and the
# anchor the overlays derive their load origin (``VBASE``/``o_corg``) from, so a
# host code edit moves the overlays out of its way.
_RESIDENT_END_SYMBOL = '__zres_end'


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


def _render_records(records, binary_data, show_offsets=True, gap=None,
                    ds_size=None, ds_end_symbol=None, resident_end=None,
                    resident_end_symbol=None):
    """Render ordered body records, including textual NASM include directives.

    *gap* is an optional ``(block_start, gap_end, header_size, gap_len)`` tuple
    naming the MZ code→data gap.  The data block starting at ``block_start``
    is emitted with a dynamic ``__zdseg_para`` prologue instead of a frozen
    zero pad, so the data segment follows a relocated image.

    *ds_size* is the image's data-segment size.  A code immediate equal to it
    is the shared host/overlay geometry value (plan.md D7.0).  When
    *ds_end_symbol* is given the immediate is rewritten to that symbol (D7.0b),
    so it follows a resized data segment; otherwise the literal is tagged
    ``; dssize`` so the frozen-address census counts it as form-based rather
    than by a magic number (the regression guard for D7.0b).

    *resident_end* is the host's resident-code end (the overlay load address,
    ``o_corg``) and follows the same pattern (D7.2): rewritten to
    *resident_end_symbol* when the anchor is in scope, otherwise tagged
    ``; ocorg`` so the census sees it.
    """
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
            if gap is not None and rec['start'] == gap[0]:
                block_start, gap_end, header_size, gap_len = gap
                out.append('')
                if resident_end is not None:
                    # End of the host's resident code -- the CS offset the
                    # overlay loader loads overlays at (the header ``o_corg``).
                    # An absolute ``equ`` (``$ - $$`` is a section-local
                    # difference), so an overlay can use it as its ``vstart``,
                    # which nasm requires to be a critical expression.
                    out.append(
                        '; End of host resident code'
                    )
                    out.append('; address, o_corg in an overlay header).')
                    out.append(
                        f'{_RESIDENT_END_SYMBOL} equ ($ - $$) + VBASE')
                out.append(f'%if ($ - $$) > 0x{gap_end:x}')
                out.append('    align 16, db 0')
                out.append(f'    __zdseg_para equ ($ - $$ - 0x{header_size:x}) / 16')
                out.append('%else')
                out.append(
                    f'    times (0x{gap_end:x} - ($ - $$)) db 0 ; 0x{gap_len:x}'
                )
                out.append(
                    f'    __zdseg_para equ (0x{gap_end:x} - 0x{header_size:x}) / 16'
                )
                out.append('%endif')
                out.append('__zdseg_start:')
                out.extend(_render_data_block(binary_data[gap_end:rec['end']]))
                out.append('')
                i += 1
                continue
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

        elif rec['type'] == 'data_ptr':
            # D5: an accepted data-pointer word.  ``text`` is an assembler
            # expression that reproduces the original value at the original
            # layout and follows the data segment when it is resized.
            text = f'dw {rec["text"]}'
            if show_offsets:
                out.append(f'    {text:<42s} ; 0x{rec["offset"]:04x}')
            else:
                out.append(f'    {text}')

        elif rec['type'] == 'jump_table':
            out.append(f'{rec["label"]}:')
            adjust = rec.get('adjust', 0)
            literal = bool(rec.get('literal'))
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
                    line = f'    {text:<42s} ; 0x{addr:04x}'
                    if literal and entry is not None:
                        # Tag deliberate data (plan.md F6) so the census can
                        # tell it apart from an unresolved pointer word (F7).
                        line += ' ; literal'
                    out.append(line)
                else:
                    out.append(f'    {text}')
                addr += entry_size

        elif rec['type'] == 'mnem':
            annotation = rec.get('annotation')
            text = rec['text']
            tag = None
            # Tag (or bind) an immediate equal to the data-segment size
            # (plan.md D7.0).
            if ds_size is not None and re.search(
                    rf'\b0x{ds_size:04x}\b', text):
                if ds_end_symbol:
                    # D7.0b: the DS size is the shared host/overlay geometry
                    # value; bind it to the symbol so it follows a resized data
                    # segment instead of standing as a frozen literal.
                    text = re.sub(
                        rf'\b0x{ds_size:04x}\b', ds_end_symbol, text)
                else:
                    # No symbol in scope: keep the literal, tag it so the
                    # census still counts it.  The tag leads the comment so the
                    # ``; 0x<offset>`` slot stays last (``make/elf.py`` reads it).
                    tag = 'dssize'
            # Tag (or bind) an immediate equal to the host's resident-code end
            # -- the overlay load address ``o_corg`` (plan.md D7.2).
            if resident_end is not None and re.search(
                    rf'\b0x{resident_end:04x}\b', text):
                if resident_end_symbol:
                    text = re.sub(
                        rf'\b0x{resident_end:04x}\b', resident_end_symbol, text)
                else:
                    tag = 'ocorg'
            lead = f'{tag} ; ' if tag else ''
            trailing = f' ; {tag}' if tag else ''
            if annotation:
                out.append(f'    {text} ; {annotation}{trailing}')
            elif show_offsets:
                out.append(f'    {text:<32s} ; {lead}0x{rec["offset"]:04x}')
            else:
                out.append(f'    {text}{trailing}')

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


def _mz_entry_file_offset(header):
    """Return the file offset of the MZ header's CS:IP entry point."""
    _, _, _, _, cparhdr, _, _, _, _, _, ip, cs, _, _ = \
        struct.unpack_from('<2s13H', header, 0)
    return cparhdr * 16 + cs * 16 + ip


def _mz_entry_symbol(header, label_map, entry_symbol):
    """Return *entry_symbol* when it labels the MZ header's CS:IP entry.

    ``e_ip`` is the entry's load-image offset, so a symbolic rewrite is only
    valid when the declared entry symbol really sits at the header's entry
    file offset; anything else falls back to the literal value.
    """
    if not entry_symbol or not label_map:
        return None
    return (entry_symbol
            if label_map.get(_mz_entry_file_offset(header)) == entry_symbol
            else None)


def _render_mz_header(header, label_map=None, image_base=None, entry_symbol=None,
                      dynamic_e_ss=False):
    """Render the fixed MZ fields with a shared comment column.

    When *entry_symbol* is the label at the header's CS:IP entry offset, the
    ``e_ip`` field is rendered ``dw <entry_symbol> - IMAGE_BASE`` so it tracks
    the recoverable entry point instead of freezing its original constant.
    ``e_cblp``/``e_cp`` are always computed from ``__zimage_end``; when
    *dynamic_e_ss* is set (the code→data gap was located) ``e_ss`` is drawn
    from ``__zdseg_para`` so it follows a relocated data segment.
    """
    _, cblp, cp, crlc, cparhdr, minalloc, maxalloc, ss, sp, \
        csum, ip, cs, lfarlc, ovno = struct.unpack_from('<2s13H', header, 0)
    bound_entry = _mz_entry_symbol(header, label_map, entry_symbol)
    ip_text = (f'dw {bound_entry} - IMAGE_BASE' if bound_entry
               else f'dw 0x{ip:04x}')
    ss_text = 'dw __zdseg_para' if dynamic_e_ss else f'dw 0x{ss:04x}'

    def _field(text, value, comment):
        """Pair an instruction with its comment, adding the original value as a
        leading comment when *text* is a formula rather than the literal."""
        if text == f'dw 0x{value:04x}':
            return (text, comment)
        return (text, f'0x{value:04x} ; {comment}')

    fields = [
        ('db "MZ"', 'e_magic: DOS MZ signature'),
        _field('dw (__zimage_end - $$) % 512', cblp,
               'e_cblp: bytes in final 512-byte page (0 means full)'),
        _field('dw ((__zimage_end - $$) + 511) // 512', cp,
               'e_cp: total 512-byte pages in the file'),
        (f'dw 0x{crlc:04x}', 'e_crlc: number of relocation entries'),
        (f'dw 0x{cparhdr:04x}', 'e_cparhdr: header size in 16-byte paragraphs'),
        (f'dw 0x{minalloc:04x}', 'e_minalloc: minimum extra memory paragraphs'),
        (f'dw 0x{maxalloc:04x}', 'e_maxalloc: maximum extra memory paragraphs'),
        _field(ss_text, ss, 'e_ss: initial stack segment, relative to load module'),
        (f'dw 0x{sp:04x}', 'e_sp: initial stack pointer'),
        (f'dw 0x{csum:04x}', 'e_csum: file checksum (often unused)'),
        _field(ip_text, ip, 'e_ip: initial instruction pointer'),
        (f'dw 0x{cs:04x}', 'e_cs: initial code segment, relative to load module'),
        (f'dw 0x{lfarlc:04x}', 'e_lfarlc: file offset of relocation table'),
        (f'dw 0x{ovno:04x}', 'e_ovno: overlay number (0 for main executable)'),
    ]
    width = max(len(instruction) for instruction, _ in fields)
    return [
        '    ; DOS MZ executable header (512 bytes)',
        *(f'    {instruction:<{width}} ; {comment}'
          for instruction, comment in fields),
    ]


def _render_ovr_header(header, entry_symbol=None, dynamic_csize=False,
                       dynamic_dsize=False, ds_end_symbol=None,
                       corg_symbol=None):
    """Render the Aztec overlay header fields with a shared comment column.

    The overlay file is ``header + code(o_csize) + data(o_dsize)``.  When the
    ``__zdata_start`` anchor is available (*dynamic_csize*/*dynamic_dsize*),
    ``o_csize`` and ``o_dsize`` are computed so both follow a resized overlay.
    ``o_entry`` is rendered from *entry_symbol* when one labels the entry.

    ``o_dorg`` *is* the host's data-segment size, so when *ds_end_symbol* is
    given (D7.0c, an overlay with a host) it is rendered as that symbol, which
    the link step resolves into ``.cache``; otherwise it stays the literal.

    ``o_corg`` *is* the host's resident-code end, so when *corg_symbol* is given
    (D7.2, an overlay with a host) it -- and the ``o_corg`` addend inside
    ``o_entry`` -- is rendered as that symbol so a host code edit moves the
    overlay out of the way.

    Rewritten fields keep their original value as a leading comment.
    """
    (o_magic, o_corg, o_csize, o_dorg, o_dsize, o_bss, o_entry) = \
        struct.unpack_from('<7H', header, 0)
    csize_text = ('dw (__zdata_start - __zcode_start)' if dynamic_csize
                  else f'dw 0x{o_csize:04x}')
    dsize_text = ('dw (__zimage_end - __zdata_start)' if dynamic_dsize
                  else f'dw 0x{o_dsize:04x}')
    dorg_text = (f'dw {ds_end_symbol}' if ds_end_symbol
                 else f'dw 0x{o_dorg:04x}')
    corg_text = f'dw {corg_symbol}' if corg_symbol else f'dw 0x{o_corg:04x}'
    if entry_symbol:
        origin = corg_symbol if corg_symbol else f'0x{o_corg:04x}'
        entry_text = f'dw {entry_symbol} - IMAGE_BASE + {origin}'
    else:
        entry_text = f'dw 0x{o_entry:04x}'

    def _field(text, value, comment):
        if text == f'dw 0x{value:04x}':
            return (text, comment)
        return (text, f'0x{value:04x} ; {comment}')

    fields = [
        (f'dw 0x{o_magic:04x}', 'o_magic: overlay signature (0x00f2)'),
        _field(corg_text, o_corg, 'o_corg: code load origin (memory offset)'),
        _field(csize_text, o_csize, 'o_csize: code size in bytes'),
        _field(dorg_text, o_dorg, 'o_dorg: data load origin (memory offset)'),
        _field(dsize_text, o_dsize, 'o_dsize: initialized data size'),
        (f'dw 0x{o_bss:04x}', 'o_bss: uninitialized data size'),
        _field(entry_text, o_entry, 'o_entry: overlay entry offset (CS)'),
    ]
    width = max(len(instruction) for instruction, _ in fields)
    return [
        '    ; Aztec C86 overlay header (14 bytes)',
        *(f'    {instruction:<{width}} ; {comment}'
          for instruction, comment in fields),
    ]


# Names whose ``equ`` value is a data-segment or PSP offset, not a code address,
# so the code origin (``VBASE``) must not be added to it.
_RAW_EQU_PREFIXES = ('data_', 'dseg_', 'bss_', 'psp_', 'bios_data_',
                     'external_')

#: Record kinds that emit bytes rather than instructions (``verify.emit_class``
#: marks these ``IS_DATA``).  A *code* name carrying a label on one of these
#: bytes would put code back where the arbiter removed it, so the placement is
#: refused and the literal kept (plan.md D7.2c).
_DATA_RECORD_TYPES = ('data_block', 'db', 'db_with_comment', 'jump_table')


def _virtual_base(binary_data, start_offset):
    """Virtual address of file offset 0 (``vstart``), or 0 when unknown.

    An Aztec overlay runs in the host's code segment from ``o_corg``, and its
    code begins after the 14-byte header, so file offset 0 is ``o_corg - 14``.
    An MZ image's CS:0 is its first byte after the header, so file offset 0 is
    ``-start_offset``.  A raw driver keeps ``vstart`` 0 (it is loaded at
    ``segment:0x100``, which the renderer expresses as a negative
    ``IMAGE_BASE`` rather than a shifted label space; plan.md D7.6).
    """
    if (start_offset >= 14 and len(binary_data) >= 14
            and binary_data[:2] == b'\xf2\x00'):
        o_corg = struct.unpack_from('<H', binary_data, 2)[0]
        return o_corg - start_offset
    if (start_offset == 0x200 and len(binary_data) >= 0x200
            and binary_data[:2] == b'MZ'):
        return -start_offset
    return 0


def _signed_hex(value):
    return f'-0x{-value:04x}' if value < 0 else f'0x{value:04x}'


def _label_equ_value(name, addr, code_value):
    """``equ`` right-hand side for a label that could not be placed in line."""
    if stem(name).startswith(_RAW_EQU_PREFIXES):
        return f'0x{addr:04x}'
    return code_value(addr)


def _covering_record(records, addr):
    """The record that emits the byte at *addr*, or ``None`` when none does."""
    from lib.compare.records import _record_span
    for rec in records:
        if rec['type'] == 'label':
            continue
        start, end = _record_span(rec)
        if start == addr or start < addr < end:
            return rec
    return None


def _place_label(records, binary_data, addr, name, gap=None):
    """Put a real label on the byte the sidecar names (plan.md D7.2c).

    A name is a name *for a byte*, so the tree carries a label there -- and its
    value then follows any edit above it -- instead of an absolute ``equ`` that
    silently breaks as soon as the code moves (``_ensure_global_label``, whose
    docstring names this rewrite, plan.md F3).  Returns False, so the caller
    keeps the literal, when the byte cannot carry a label:

    * outside every rendered record, or strictly inside an instruction or a jump
      table -- ``_ensure_global_label``'s own rule, since only a ``data_block``
      may be split;
    * inside the MZ code->data gap, which is emitted as one dynamic
      ``times ... db 0`` pad: splitting it would explode into explicit bytes and
      duplicate the pad;
    * a byte the renderer emits as **data** while the name is a *code* name: the
      name is stale there, and a label would put code back into bytes the
      arbiter decided are data (``verify.code_loss`` counts exactly those).  A
      data name (``data_``/``dseg_``/``bss_``/...) may anchor data -- that is the
      D1 path, which binds its own labels.
    """
    if gap is not None and gap[0] <= addr < gap[1]:
        return False
    covering = _covering_record(records, addr)
    if covering is None:
        return False
    if (covering['type'] in _DATA_RECORD_TYPES
            and not stem(name).startswith(_RAW_EQU_PREFIXES)):
        return False
    # Local import: ``jumptables`` pulls in the assembler, so the dependency
    # stays inside the function like the other callers in this module.
    from lib.compare.jumptables import _ensure_global_label
    return _ensure_global_label(records, binary_data, addr, name)


def mz_data_gap(records, binary_data, start_offset):
    """Locate the MZ code->data gap, or return ``None``.

    The data segment sits at ``header + e_ss*16``.  When the bytes between the
    last code record and that origin are all zero, they are emitted as a
    dynamic pad instead of a frozen ``times N db 0``, which is what binds the
    ``dseg_``/``bss_`` symbols to real bytes (plan.md D1).  Returns
    ``(block_start, gap_end, header_size, gap_len)``.
    """
    if not (start_offset == 0x200 and len(binary_data) >= 0x200
            and binary_data[:2] == b'MZ' and start_offset >= 16):
        return None
    e_ss = struct.unpack_from('<H', binary_data, 14)[0]
    data_origin = start_offset + e_ss * 16
    for rec in records:
        if rec['type'] != 'data_block':
            continue
        if rec['start'] < data_origin <= rec['end']:
            if not any(binary_data[rec['start']:data_origin]):
                return (rec['start'], data_origin, start_offset,
                        data_origin - rec['start'])
            break
    return None


def image_geometry(records, binary_data, start_offset, ds_size):
    """``{symbol: value}`` for the image-size symbols the renderer defines.

    ``__zres_end`` (resident code end, the overlay ``o_corg``) and
    ``__zdseg_end`` (data-segment size): the values C code sees as
    ``_Cend``/``_Uend``.  Same conditions as :func:`_build_source`.
    """
    gap = mz_data_gap(records, binary_data, start_offset)
    out = {}
    if gap is None:
        return out
    if gap[3] > 0:
        out[_RESIDENT_END_SYMBOL] = gap[0] + _virtual_base(
            binary_data, start_offset)
    if ds_size is not None:
        out[_DSSIZE_SYMBOL] = ds_size
    return out


#: The include an overlay pulls the host's labels in through.  The block is the
#: *host's* frame -- the same for every overlay of it -- so it is emitted once
#: per tree, as a ``split_sources`` entry, not once per master (plan.md E2).
HOST_SYMBOLS_INC = 'inc/host_symbols.inc'


def host_symbols_inc_lines(master, host_vbase):
    """The host-frame block shared by every overlay of a host (plan.md D7.5/E2).

    The host source is included into a section that occupies no space, so the
    host's labels carry the addresses the overlays call and the shared
    ``__zdseg_end``/``dseg_``/``bss_`` names, with no generated table.

    The overlay's own origin (``VBASE``) is shadowed for the duration of the
    include exactly like ``IMAGE_BASE``: defined here for the host's frame,
    consumed by the host, then cleared, so the overlay's own origin takes effect
    after it.  Nothing outside needs to be saved and restored: ``make
    elf-rebuild`` no longer passes ``-DVBASE=0``, it rewrites the origin in the
    prepared source instead (``make/elf.py``, ``_force_origin_zero``).

    ``%include "{master}"`` resolves through the ``-I`` of the generated tree
    (``lib.link.include_args``), so this file may sit at any depth.
    """
    host_stem = master.rsplit('.', 1)[0]
    return [
        '; Host symbols for every overlay of this tree (plan.md E2).',
        ';',
        '; The host is included in a section that occupies no bytes, so its labels',
        '; carry the addresses the overlays call and the shared ``__zdseg_end``/',
        '; ``dseg_``/``bss_`` names.  This is the *host\'s* frame -- the same for',
        '; every overlay of it -- so it is emitted once here, not in each master.',
        '; The overlay\'s own ``VBASE``/``IMAGE_BASE`` are shadowed for the',
        '; duration of the include and cleared after it, so its own follow.',
        '%define HOST_SYMS_ONLY',
        f'%define VBASE ({_signed_hex(host_vbase)})',
        '%define IMAGE_BASE 0',
        f'%define __zimage_end {host_stem}___zimage_end',
        f'section .host nobits vstart={_signed_hex(host_vbase)}',
        f'%include "{master}"',
        '%undef __zimage_end',
        '%undef IMAGE_BASE',
        '%undef HOST_SYMS_ONLY',
        '%undef VBASE',
    ]


def _host_include_lines():
    """The overlay-side line that pulls in the shared host block (plan.md E2)."""
    return [
        f'%include "{HOST_SYMBOLS_INC}"',
    ]


def _build_source(records, start_offset, binary_data, label_map=None, show_offsets=True,
                  immediate_labels=None, split_ranges=None,
                  split_dir='ds', mem_equ=None, image_base=None, entry_symbol=None,
                  label_defined=None, ds_size=None, host_symbols=None,
                  host_data_offsets=None, load_offset=0):
    """Render the master NASM source and any generated includes.

    *host_symbols* is ``(master_file, host_vbase)`` for an overlay with a host:
    the master pulls the host source in through ``HOST_SYMBOLS_INC`` -- which is
    emitted here, once, because the block is the host's own frame (plan.md E2) --
    in a section that occupies no space, so the overlay names host routines,
    geometry (``__zdseg_end``) and DS names (``dseg_``/``bss_``) by the host's
    own labels.  The include comes *first*, because the ``vstart`` directive
    needs the host's anchor already known (plan.md D7.2).  The host itself
    receives *host_data_offsets* (the union of the offsets the overlays
    reference) and declares one recipe-based ``equ`` per offset.
    """
    label_defined = label_defined or ()
    vbase = _virtual_base(binary_data, start_offset)
    # D7.2: an overlay with a host derives its load origin from the host's
    # resident-code end instead of freezing ``o_corg`` -- ``VBASE`` (the
    # assembler's ``vstart``) is ``o_corg - start_offset``.  NASM resolves the
    # forward reference, which lives in the host source included at the end.
    corg_symbol = _RESIDENT_END_SYMBOL if host_symbols else None
    if vbase:
        # The image is assembled at the address it runs at (``vstart``), so a
        # label's value is its real CS offset and a host/overlay call needs no
        # coordinate shift.  ``VBASE`` is the virtual address of file offset 0;
        # ``make elf-rebuild`` redefines it as 0 because ELF has no ``vstart``.
        vbase_text = (f'{corg_symbol} - 0x{start_offset:04x}' if corg_symbol
                      else _signed_hex(vbase))
        out = ['bits 16']
        if host_symbols:
            # The host source comes *first*: it defines the absolute anchor the
            # overlay's load origin derives from, and ``section ... vstart=``
            # needs that value already known (plan.md D7.2).  The block itself is
            # shared by every overlay (plan.md E2), so this is one include line.
            out.extend(_host_include_lines())
        out += ['%ifndef VBASE', f'VBASE equ {vbase_text}', '%endif']
        if generic_prefix():
            # The exported host is also included by overlays purely for its
            # symbols (``HOST_SYMS_ONLY``); its own section line must not run.
            out += ['%ifndef HOST_SYMS_ONLY', 'section .text vstart=VBASE',
                    '%endif']
        else:
            out.append('section .text vstart=VBASE')
    else:
        out = ['org 0', 'bits 16']
    code_value = (lambda addr: f'0x{addr:04x} + VBASE') if vbase else (
        lambda addr: f'0x{addr:04x}')

    base = start_offset if image_base is None else image_base

    is_mz = (start_offset == 0x200 and len(binary_data) >= 0x200
             and binary_data[:2] == b'MZ')
    hdr = binary_data[:start_offset] if is_mz else None
    # The MZ data segment sits at ``header + e_ss*16``; locate the zero gap
    # before it so it can be emitted as a dynamic pad instead of a frozen
    # ``times N db 0``.
    gap = mz_data_gap(records, binary_data, start_offset)
    if gap is not None:
        data_origin = gap[1]
    # D7.2: the host's *resident code* ends where the code->data zero gap
    # begins, and that is exactly the overlay load address (``o_corg``).  Only a
    # non-empty gap is a boundary (``vinstall`` has a zero-length one); the value
    # is in the image's own coordinate frame, so a code immediate equal to it is
    # that anchor (tagged ``; ocorg`` when the symbol is not in scope).
    has_resident_end = gap is not None and gap[3] > 0
    resident_end = gap[0] + vbase if has_resident_end else None
    # The anchor is emitted by the gap branch below, in this same file, so the
    # symbol is always in scope when the value is known.
    resident_end_symbol = (None if resident_end is None
                           else _RESIDENT_END_SYMBOL)
    # D7.0b: the total data-segment size (file-backed data + reserved BSS) is the
    # shared host/overlay geometry value.  When it is known and the MZ anchors
    # exist, emit it as ``__zdseg_end`` and rewrite the code immediates that
    # hard-code it (``_render_records``); ``ds_end_symbol`` stays ``None`` when
    # there is no symbol in scope, so those immediates are tagged instead.
    ds_end_symbol = None
    bss_boundary = None
    if is_mz and gap is not None:
        bss_boundary = len(binary_data) - gap[1]
        if ds_size is not None:
            ds_end_symbol = _DSSIZE_SYMBOL
    # The symbolic ``e_ip`` rewrite references IMAGE_BASE; force the definition
    # even when no record does (a load offset of 0 would otherwise skip it).
    bound_entry = _mz_entry_symbol(hdr, label_map, entry_symbol) if is_mz else None
    uses_image_base = base > 0 or bool(bound_entry) or any(
        'IMAGE_BASE' in rec.get('text', '') for rec in records
    )
    if uses_image_base:
        # ``label - IMAGE_BASE`` renders embedded CS pointers as their load
        # offset; IMAGE_BASE is the binary's load offset (header size for MZ).
        out.append('%ifndef IMAGE_BASE')
        if load_offset:
            # A driver's file offset 0 runs at ``CS:0x100``, so the encoded CS
            # offset is ``file + load_offset`` and ``label - IMAGE_BASE`` (the
            # label still a file offset, ``org 0``) needs the negative base
            # (plan.md D7.6).
            out.append(f'IMAGE_BASE equ {_signed_hex(-load_offset)}')
        elif vbase:
            out.append(f'IMAGE_BASE equ 0x{base:04x} + VBASE')
        else:
            out.append(f'IMAGE_BASE equ 0x{base:04x}')
        out.append('%endif')
        out.append('')

    if is_mz:
        out.extend(_render_mz_header(hdr, label_map, base, entry_symbol,
                                     dynamic_e_ss=gap is not None))
        out.append('')
        out.extend(_render_data_block(hdr[28:]))
        out.append('')
    elif (start_offset >= 14 and len(binary_data) >= 14
            and binary_data[:2] == b'\xf2\x00'):
        # The overlay file is header + code + data; anchor the code/data
        # boundary so o_csize/o_dsize follow a resized overlay.
        dynamic_ovr_size = False
        if len(binary_data) >= 14:
            o_csize = struct.unpack_from('<H', binary_data, 4)[0]
            data_start = start_offset + o_csize
            if data_start < len(binary_data):
                from lib.compare.jumptables import _ensure_global_label
                dynamic_ovr_size = _ensure_global_label(
                    records, binary_data, data_start, '__zdata_start')
        # D7.0c: ``o_dorg`` is the host data-segment size, so bind it to the
        # host symbol the link step resolves (only when the host values file is
        # in scope -- ``host_symbols``).
        out.extend(_render_ovr_header(
            binary_data[:14], entry_symbol=entry_symbol,
            dynamic_csize=dynamic_ovr_size, dynamic_dsize=dynamic_ovr_size,
            ds_end_symbol=(_DSSIZE_SYMBOL if host_symbols else None),
            corg_symbol=corg_symbol))
        out.append('')
        out.append('__zcode_start:')
    elif start_offset > 0:
        hdr = binary_data[:start_offset]
        out.append(f'    ; header ({start_offset} bytes)')
        out.extend(_render_data_block(hdr))
        out.append('')

    defined_names = set()
    for r in records:
        if r['type'] == 'label':
            defined_names.add(r['text'].split(':', 1)[0].strip())

    def _defined(name):
        return name in label_defined or name in defined_names

    if label_map:
        for addr in sorted(label_map):
            name = label_map[addr]
            if _defined(name):
                continue
            # D7.2c: prefer a label on the byte itself, so the name follows an
            # edit instead of freezing the address.  The literal is the
            # fallback, kept only where the byte cannot carry a label.
            if not _place_label(records, binary_data, addr, name, gap):
                out.append(
                    f'{name} equ {_label_equ_value(name, addr, code_value)}')
    if immediate_labels:
        # Deliberately *not* placed as a label: the sidecar's ``immediate_labels``
        # value is a raw offset immediate (e.g. ``data_46d9 equ 0x46d9`` under
        # ``org 0``), not a virtual address, so a label -- ``VBASE + off`` --
        # would change the operand of any image with a non-zero ``vstart``.
        for addr in sorted(immediate_labels):
            name = immediate_labels[addr]
            if _defined(name):
                continue
            if not label_map or addr not in label_map or label_map[addr] != name:
                out.append(f'{name} equ 0x{addr:04x}')
    data_anchored = is_mz and gap is not None
    if mem_equ or (data_anchored and host_data_offsets):
        # Segment-resolved operand symbols (Phase 4): cseg_ (code segment file
        # offset), dseg_/bss_ (data segment offset), psp_ (PSP field).
        #
        # D1 (plan.md): a data-segment symbol is bound to the byte it names so
        # the operand follows a resized data segment.  ``dseg_<off>`` gets a
        # label at the file-backed byte and becomes the DS offset relative to
        # ``__zdseg_start``; ``bss_<off>`` sits past ``bss_boundary``, so it
        # is the (dynamic) file-backed data size plus its offset into BSS.
        # ``psp_``/``cseg_`` stay literal (the PSP is fixed; code symbols are
        # already labels or load offsets).  Only the MZ image has the anchors.
        #
        # D7.1: the data segment is shared and the *host* owns it.  An overlay
        # with a host does not re-declare its ``dseg_``/``bss_`` names here
        # (they come from ``host_data.inc``); the host instead declares one
        # recipe per offset in *host_data_offsets* so the link step can probe
        # the whole union.
        data_names = {}
        for name, value in (mem_equ or {}).items():
            if host_symbols and name.startswith(('dseg_', 'bss_')):
                continue  # the one shared host table declares it
            data_names[name] = (value, False)
        if data_anchored and host_data_offsets:
            for name, value in host_data_offsets.items():
                data_names.setdefault(name, (value, True))
        if data_anchored:
            from lib.compare.jumptables import _ensure_global_label
            from lib.compare.regions import string_run
            placed_anchors = set()
        for name in sorted(data_names, key=lambda n: (data_names[n][0], n)):
            if _defined(name):
                continue
            value, from_host_data = data_names[name]
            # Overlay-own data (``>= __zdseg_end``) is not file-backed in the
            # host, so it hangs off the shared data-segment end instead of a
            # label; its delta stays frozen (plan.md D7.1 "Known residual").
            # Only a union name (``host_data_offsets``) can be overlay-own -- an
            # MZ image's own ``mem_equ`` never reaches past its segment end.
            own = from_host_data and ds_size is not None and value >= ds_size
            expr = None
            if data_anchored and name.startswith('dseg_'):
                if own:
                    delta = value - ds_size
                    expr = _DSSIZE_SYMBOL if delta == 0 else (
                        f'{_DSSIZE_SYMBOL} + 0x{delta:04x}')
                else:
                    file_off = data_origin + value
                    if file_off < len(binary_data):
                        # A reference strictly inside a string is not a data
                        # symbol: anchor it to the string's start (and keep the
                        # delta) so the literal stays readable instead of being
                        # sliced into hex fragments.  Everything else gets a
                        # label at the exact byte so the operand tracks inserted
                        # bytes.
                        run = string_run(binary_data, file_off, data_origin)
                        anchor = None
                        if (run is not None and run[0] < file_off
                                and run[1] - run[0] >= _MIN_STRING_ANCHOR):
                            anchor_off = run[0]
                            anchor_ds = anchor_off - data_origin
                            anchor = f'__zstr_{anchor_ds:04x}'
                            if anchor not in placed_anchors:
                                if _ensure_global_label(
                                        records, binary_data, anchor_off, anchor):
                                    placed_anchors.add(anchor)
                                else:
                                    anchor = None
                        if anchor is not None:
                            delta = value - anchor_ds
                            expr = f'{anchor} - __zdseg_start'
                            if delta:
                                expr += f' + 0x{delta:04x}'
                        else:
                            label = f'__z{name}'
                            if _ensure_global_label(records, binary_data,
                                                    file_off, label):
                                expr = f'{label} - __zdseg_start'
            elif data_anchored and name.startswith('bss_'):
                if own:
                    delta = value - ds_size
                    expr = _DSSIZE_SYMBOL if delta == 0 else (
                        f'{_DSSIZE_SYMBOL} + 0x{delta:04x}')
                elif value >= bss_boundary:
                    delta = value - bss_boundary
                    base = '(__zimage_end - __zdseg_start)'
                    expr = base if delta == 0 else f'{base} + 0x{delta:04x}'
            if expr is not None:
                out.append(f'{name} equ {expr}')
            elif name.startswith('cseg_'):
                out.append(f'{name} equ {code_value(value)}')
            else:
                out.append(f'{name} equ 0x{value:04x}')
    if ds_end_symbol is not None:
        # D7.0b: total data-segment size = file-backed data + reserved BSS.
        # ``__zbss_size`` is the invariant BSS reservation (it never moves under
        # an edit); the sum follows a resized data segment, because
        # ``__zimage_end - __zdseg_start`` is the file-backed data size.
        out.append(f'__zbss_size equ 0x{ds_size - bss_boundary:04x}')
        out.append(f'{ds_end_symbol} equ '
                   f'(__zimage_end - __zdseg_start) + __zbss_size')
    if label_map or immediate_labels or mem_equ or ds_end_symbol is not None:
        out.append('')

    main_records, split_records = _partition_function_records(
        records, split_ranges, split_dir,
    )
    out.extend(_render_records(main_records, binary_data, show_offsets, gap=gap,
                               ds_size=ds_size, ds_end_symbol=ds_end_symbol,
                               resident_end=resident_end,
                               resident_end_symbol=resident_end_symbol))

    split_sources = {
        path: '\n'.join(_render_records(fragment, binary_data, show_offsets,
                                        ds_size=ds_size,
                                        ds_end_symbol=ds_end_symbol,
                                        resident_end=resident_end,
                                        resident_end_symbol=resident_end_symbol)
                        ) + '\n'
        for path, fragment in split_records.items()
    }
    if host_symbols:
        # E2: the host-frame block belongs to the *host*, so it is written to the
        # tree once; every overlay master carries ``%include "inc/host_symbols.inc"``
        # instead of its own copy.  It is a pure function of the host, so the
        # overlays' (identical) writes agree.
        split_sources[HOST_SYMBOLS_INC] = (
            '\n'.join(host_symbols_inc_lines(*host_symbols)) + '\n'
        )
    if is_mz or (start_offset >= 14 and len(binary_data) >= 14
                 and binary_data[:2] == b'\xf2\x00'):
        # End-of-image anchor for the dynamic header fields (e_cblp/e_cp,
        # o_csize).  Must sit after every emitted byte, including includes.
        out.append('')
        out.append('__zimage_end:')
    out.append('')
    return '\n'.join(out), split_sources
