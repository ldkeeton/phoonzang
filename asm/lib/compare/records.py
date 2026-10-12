"""Shared record helpers: spans, labels, data-block flushing."""

import re


def _record_span(rec):
    """Return the half-open byte span emitted by a record, or its label offset."""
    if rec['type'] == 'label':
        return rec['offset'], rec['offset']
    if rec['type'] in ('data_block', 'jump_table'):
        return rec['start'], rec['end']
    start = rec.get('offset', 0)
    return start, start + rec.get('size', 1)


def _emit_label(name):
    return f'{name}:'


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


def _emit_label_record(records, off, label_map, local_labels=None,
                       insn_by_addr=None, label_comments=None):
    if label_map and off in label_map:
        name = label_map[off]
        if name.startswith('data_'):
            if local_labels and off in local_labels:
                records.append({
                    'type': 'label',
                    'text': _emit_label(local_labels[off]),
                    'offset': off,
                })
            return
        if name.startswith('loc_') and local_labels and off in local_labels:
            records.append({
                'type': 'label',
                'text': _emit_label(local_labels[off]),
                'offset': off,
            })
            return
        text = _emit_label(name)
        if label_comments and off in label_comments:
            text = f'{text} {label_comments[off]}'
        records.append({
            'type': 'label',
            'text': text,
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


_BARE_MEM_RE = re.compile(r'\[(?:[a-z]+:)?0x[0-9a-f]{4}\]')
_BARE_FLOW_RE = re.compile(
    r'\b(?:call|jmp|j[a-z]+|loop(?:e|ne)?)\s+'
    r'(?:(?:short|near|far)\s+)?(?:0x[0-9a-f]{1,4}:)?0x[0-9a-f]{1,4}\b'
)

# ── frozen-address census ───────────────────────────────────────────────────
# The dynamic-address goal (plan.md) counts values that still stand as bare
# literals for a location/size/file-offset.  Each pattern names the taxonomy id
# from the plan; a value that has been rewritten as an expression no longer
# matches.
_FROZEN_MZ_FIELD_RE = re.compile(
    r'^\s*dw\s+0x[0-9a-f]{1,4}\s*;\s*e_(cblp|cp|ss|sp)\b'
)
_FROZEN_OVR_FIELD_RE = re.compile(
    r'^\s*dw\s+0x[0-9a-f]{1,4}\s*;\s*o_(csize|dsize|bss|entry)\b'
)
_FROZEN_EQU_RE = re.compile(r'^\s*(\w+)\s+equ\s+0x')
_FROZEN_PAD_RE = re.compile(r'^\s*times\s+(\d+)\s+db\s+0\b')
# A numeric word in a jump table renders as ``dw 0x<value> ; 0x<slot>``; header
# fields and data blocks carry a textual description instead of a slot offset.
_FROZEN_JT_WORD_RE = re.compile(
    r'^\s*dw\s+0x[0-9a-f]{1,4}\s*;\s*0x[0-9a-f]{4}\s*$'
)

_F3_PREFIXES = ('cseg_', 'data_', 'loc_', 'leaf_', 'io_', 'dos_', 'string_',
                'api_', 'fpu_')
_F4_PREFIXES = ('dseg_', 'bss_', 'psp_')

# A literal ``times N db 0`` is treated as a layout pad (F5) only when it is
# large enough to be the code→data gap rather than an inline zero run.
_F5_PAD_MIN = 1000


def count_frozen_addrs(src_text):
    """Classify residual frozen address/size values in emitted source text.

    Returns a dict with per-taxonomy counts (``f1``..``f6``) plus ``total``.
    See ``plan.md`` section 3 for the taxonomy.  Rewriting a value as an
    assembler expression removes it from the count.
    """
    counts = {'f1': 0, 'f2': 0, 'f3': 0, 'f4': 0, 'f5': 0, 'f6': 0}
    for line in (src_text or '').splitlines():
        if _FROZEN_MZ_FIELD_RE.match(line):
            counts['f1'] += 1
            continue
        if _FROZEN_OVR_FIELD_RE.match(line):
            counts['f2'] += 1
            continue
        m = _FROZEN_EQU_RE.match(line)
        if m:
            name = m.group(1)
            if name.startswith(_F3_PREFIXES):
                counts['f3'] += 1
            elif name.startswith(_F4_PREFIXES):
                counts['f4'] += 1
            continue
        m = _FROZEN_PAD_RE.match(line)
        if m and int(m.group(1)) >= _F5_PAD_MIN:
            counts['f5'] += 1
            continue
        if _FROZEN_JT_WORD_RE.match(line):
            counts['f6'] += 1
    counts['total'] = sum(counts.values())
    return counts


class UnencodedInstructionError(RuntimeError):
    """A decoded instruction could not be re-encoded and fell back to ``db``.

    Raised by the build when a non-``--exact-bytes`` run still emits
    ``db 0x.. ; <disassembly>`` records: every such line is a decoded
    instruction the formatter could not reproduce, which the project now
    treats as a hard error (see ``asm/lib/format.py``).
    """


# Emitted ``db 0x.., 0x.. ; <disassembly>`` lines produced by a
# ``db_with_comment`` record.  A plain data block renders without the ``;``.
_DB_COMMENT_LINE_RE = re.compile(
    r'^\s*db\s+0x[0-9a-f]{2}(?:\s*,\s*0x[0-9a-f]{2})*\s*;'
)


def find_db_with_comment_lines(text):
    """Return emitted ``db … ; <disassembly>`` lines (unencoded instructions)."""
    return [line for line in (text or '').splitlines()
            if _DB_COMMENT_LINE_RE.match(line)]


def _count_bare_addrs(records):
    bare_mem = 0
    bare_call = 0
    bare_dbc = 0
    for r in records:
        t = r.get('text')
        if not t:
            continue
        if r['type'] == 'mnem':
            if _BARE_MEM_RE.search(t):
                bare_mem += 1
            if _BARE_FLOW_RE.search(t):
                bare_call += 1
        elif r['type'] == 'db_with_comment':
            if _BARE_FLOW_RE.search(t) or _BARE_MEM_RE.search(t):
                bare_dbc += 1
    return bare_mem, bare_call, bare_dbc
