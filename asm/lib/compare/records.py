"""Shared record helpers: spans, labels, data-block flushing."""

import re
from lib.names import loc_name, startswith_stem, stem


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
        if startswith_stem(name, 'data_'):
            if local_labels and off in local_labels:
                records.append({
                    'type': 'label',
                    'text': _emit_label(local_labels[off]),
                    'offset': off,
                })
            return
        if startswith_stem(name, 'loc_') and local_labels and off in local_labels:
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
            'text': _emit_label(loc_name(off)),
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
# Overlay *origin* fields are counted separately from the size/entry fields
# because their gate class differs: ``o_corg`` (code origin) follows the host
# code region, while ``o_dorg`` (data origin) **is** the host's data-segment
# size (plan.md D7.0).  Both stand as bare literals today.
_FROZEN_OVR_ORIGIN_RE = re.compile(
    r'^\s*dw\s+0x[0-9a-f]{1,4}\s*;\s*o_(corg|dorg)\b'
)
# The ``o_entry`` field is ``<entry> - IMAGE_BASE + o_corg``: the same host
# code-region anchor as the ``o_corg`` field, written inside a formula so the
# bare-literal rule above misses it (plan.md D7.2).
_FROZEN_OVR_ENTRY_LITERAL_RE = re.compile(
    r'^\s*dw\s+\S+.*\+\s*0x[0-9a-f]{4}\s*;.*\bo_entry\b'
)
# ``VBASE`` (the assembler's ``vstart``) **is** ``o_corg - start_offset`` for an
# overlay, so it is a third spelling of the same anchor (plan.md D7.2); the
# counter recognises it by name in the ``equ`` branch below.
# A code immediate equal to the image's data-segment size -- the shared
# host/overlay geometry constant (plan.md D7.0).  Tagged ``; dssize`` at emit
# time (``render.py``) so the census matches a *form*, not a magic number.
_FROZEN_DSSIZE_RE = re.compile(r';\s*dssize\b')
# A code immediate equal to the *host's resident-code end* (the overlay load
# address, ``o_corg``).  Tagged ``; ocorg`` at emit time so the counter exists
# before the binding does (plan.md D7.2).
_FROZEN_OCORG_IMM_RE = re.compile(r';\s*ocorg\b')
_FROZEN_EQU_RE = re.compile(r'^\s*(\w+)\s+equ\s+0x')
_FROZEN_PAD_RE = re.compile(r'^\s*times\s+(\d+)\s+db\s+0\b')
# A numeric word in a jump table renders as ``dw 0x<value> ; 0x<slot>``; header
# fields and data blocks carry a textual description instead of a slot offset.
_FROZEN_JT_WORD_RE = re.compile(
    r'^\s*dw\s+0x[0-9a-f]{1,4}\s*;\s*0x[0-9a-f]{4}\s*$'
)
# A deliberately-literal data word carries an extra ``; literal`` tag so the
# census can tell it apart from an unresolved pointer word in a real jump
# table, which otherwise renders identically (plan.md section 10.2).
_FROZEN_LITERAL_WORD_RE = re.compile(
    r'^\s*dw\s+0x[0-9a-f]{1,4}\s*;\s*0x[0-9a-f]{4}\s*;\s*literal\s*$'
)

_F3_PREFIXES = ('cseg_', 'data_', 'loc_', 'leaf_', 'io_', 'dos_', 'string_',
                'api_', 'fpu_')
# F4 splits into relocatable data symbols (they move when the data segment
# resizes) and fixed DOS-segment fields (they never do).
_F4_DATA_PREFIXES = ('dseg_', 'bss_')
_F4_INERT_PREFIXES = ('psp_',)
# Fixed external-segment fields named by the sidecar ``external_data`` block
# (``segments.external_data_name``), e.g. the BIOS Data Area.
_EXTERNAL_PREFIXES = ('bios_data_', 'external_')

# A literal ``times N db 0`` is treated as a layout pad (F5) only when it is
# large enough to be the code→data gap rather than an inline zero run.
_F5_PAD_MIN = 1000


def count_frozen_addrs(src_text):
    """Classify residual frozen address/size values in emitted source text.

    Returns the per-taxonomy counts (``f1``..``f7``) plus the three gate
    classes of ``plan.md`` section 10.2:

    * ``code_shift`` -- breaks when code before it resizes; **must reach 0**.
    * ``data_shift`` -- breaks when the data segment resizes; **must reach 0**.
    * ``inert`` -- can never change (``psp_`` fields, ``external_data``, and the
      deliberately-literal data tables counted as ``f6``); excluded from the
      gate but reported for review.

    ``total`` is the gated sum (``code_shift + data_shift``); ``inert`` values
    are reported but not counted against the goal.  ``f7`` is an unresolved
    pointer word -- a numeric ``dw`` in a jump table *without* the ``; literal``
    tag that marks a deliberate data table.  See ``plan.md`` section 3 for the
    taxonomy; rewriting a value as an assembler expression removes it.

    Four extra buckets cover the shared host/overlay segment geometry
    (``plan.md`` D7.0/D7.2): ``o_corg`` (overlay code origin -> ``code_shift``,
    counted in all three spellings -- the header field, the ``VBASE`` and the
    ``o_entry`` addend), ``o_corg_imm`` (a host code immediate equal to it, the
    overlay load address -> ``code_shift``), ``o_dorg`` (overlay data origin,
    i.e. the host DS size -> ``data_shift``), and ``ds_size_imm`` (a code
    immediate equal to the DS size -> ``code_shift``).
    """
    f = {'f1': 0, 'f2': 0, 'f3': 0, 'f4': 0, 'f5': 0, 'f6': 0, 'f7': 0}
    f4_inert = 0
    external = 0
    o_corg = 0
    o_corg_imm = 0
    o_dorg = 0
    ds_size_imm = 0
    for line in (src_text or '').splitlines():
        if _FROZEN_MZ_FIELD_RE.match(line):
            f['f1'] += 1
            continue
        if _FROZEN_OVR_FIELD_RE.match(line):
            f['f2'] += 1
            continue
        m = _FROZEN_OVR_ORIGIN_RE.match(line)
        if m:
            if m.group(1) == 'corg':
                o_corg += 1
            else:
                o_dorg += 1
            continue
        if _FROZEN_OVR_ENTRY_LITERAL_RE.match(line):
            o_corg += 1
            continue
        m = _FROZEN_EQU_RE.match(line)
        if m:
            name = stem(m.group(1))
            if name == 'VBASE':
                o_corg += 1
            elif name.startswith(_F3_PREFIXES):
                f['f3'] += 1
            elif name.startswith(_F4_DATA_PREFIXES):
                f['f4'] += 1
            elif name.startswith(_F4_INERT_PREFIXES):
                f4_inert += 1
            elif name.startswith(_EXTERNAL_PREFIXES):
                external += 1
            continue
        m = _FROZEN_PAD_RE.match(line)
        if m and int(m.group(1)) >= _F5_PAD_MIN:
            f['f5'] += 1
            continue
        if _FROZEN_LITERAL_WORD_RE.match(line):
            f['f6'] += 1
            continue
        if _FROZEN_JT_WORD_RE.match(line):
            f['f7'] += 1
            continue
        if _FROZEN_DSSIZE_RE.search(line):
            ds_size_imm += 1
        if _FROZEN_OCORG_IMM_RE.search(line):
            o_corg_imm += 1
    code_shift = (f['f1'] + f['f2'] + f['f3'] + f['f5'] + o_corg
                  + o_corg_imm + ds_size_imm)
    data_shift = f['f4'] + f['f7'] + o_dorg
    inert = f4_inert + f['f6'] + external
    return {
        **f,
        'o_corg': o_corg,
        'o_corg_imm': o_corg_imm,
        'o_dorg': o_dorg,
        'ds_size_imm': ds_size_imm,
        'code_shift': code_shift,
        'data_shift': data_shift,
        'inert': inert,
        'total': code_shift + data_shift,
    }


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
