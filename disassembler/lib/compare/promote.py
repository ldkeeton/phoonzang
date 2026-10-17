"""D5: promote accepted data-pointer words to symbolic ``dw`` records.

The D4 scorer (:mod:`lib.compare.pointers`) decides *which* stored words are
pointers; the sidecar corpus is the ground truth that overrides it (plan.md
Section 13 step 1, "E0").  This module turns each accepted word into an
assembler expression that (a) reproduces the original two bytes at the original
layout and (b) follows the data segment when it is resized:

* a **file-backed** DS target names the byte it points at (``dseg_<off>``,
  whose label the ``mem_equ`` machinery places at that byte -- anchored to a
  string start when the target lands inside a literal);
* a **BSS/heap** DS target names its label in the BSS block after the image
  (``bss_<off>`` = ``__zbss_<off> - __zdseg_start``);
* a **CS** target names the code label (``<label> - IMAGE_BASE``) -- in an
  MZ image, or in a raw driver, whose ``IMAGE_BASE`` is the negative load base.

Only bytes that a data block still owns are replaced: a word the disassembly
already claimed (a mnemonic or a jump-table record) is left alone, because
something else has already given it a meaning.  The accepted set is emitted
into the source; ``make verify`` proves every promotion reproduces the original
bytes, and the edit-property tests prove the promoted words follow a data edit.
"""

import struct

from lib.compare.records import _record_span
from lib.compare.render import mz_data_gap
from lib.symtab import Space, Symbol


#: Record types whose raw bytes a promoted word may replace.
_SPLICEABLE = ('data_block', 'db', 'db_with_comment')


def data_anchored(records, binary_data, start_offset):
    """True when the MZ data symbols will be bound to real bytes.

    Mirrors :func:`lib.compare.render._build_source`: the ``dseg_``/``bss_``
    expressions only relocate when the code->data gap was located.
    """
    return mz_data_gap(records, binary_data, start_offset) is not None


def merge_promotions(accepted, data_pointers):
    """Union the scorer's accepted set with the asserted corpus (E0).

    Returns a list of ``{'offset', 'space', 'source'}`` sorted by offset.  The
    sidecar wins on space: it is the human-reviewed ground truth, and an entry
    accepted *and* asserted is marked ``scorer+corpus`` for the report.
    """
    merged = {}
    for entry in accepted:
        merged[entry['offset']] = {
            'offset': entry['offset'],
            'space': entry.get('space', 'ds'),
            'source': 'scorer',
        }
    for entry in data_pointers or ():
        offset = entry['offset']
        if offset in merged:
            # The corpus is the reviewed ground truth: it wins on space.
            merged[offset]['source'] = 'scorer+corpus'
            merged[offset]['space'] = entry.get('space', 'ds')
            continue
        merged[offset] = {
            'offset': offset,
            'space': entry.get('space', 'ds'),
            'source': 'corpus',
        }
        if 'array' in entry:
            merged[offset]['array'] = entry['array']
    return [merged[offset] for offset in sorted(merged)]


def _split_records(records, binary_data, offset, expr):
    """Swap the two bytes at *offset* for a ``data_ptr`` record, or None.

    *offset* must be even and covered by a single ``data_block`` or by two
    adjacent one-byte ``db`` records; anything else (a mnemonic, a jump table,
    a partial overlap) returns ``None`` so the caller keeps the word raw.
    """
    hits = []
    for i, rec in enumerate(records):
        if rec['type'] == 'label':
            continue
        s, e = _record_span(rec)
        if s < offset + 2 and e > offset:
            hits.append((i, rec, s, e))
    if not hits:
        return None

    if len(hits) == 1 and hits[0][1]['type'] == 'data_block':
        i, rec, s, e = hits[0]
        out = list(records[:i])
        if s < offset:
            out.append({**rec, 'end': offset,
                        'bytes': [f'0x{b:02x}' for b in binary_data[s:offset]]})
        out.append({'type': 'data_ptr', 'offset': offset, 'size': 2,
                    'text': expr})
        if e > offset + 2:
            out.append({**rec, 'start': offset + 2,
                        'bytes': [f'0x{b:02x}'
                                  for b in binary_data[offset + 2:e]]})
        out.extend(records[i + 1:])
        return out

    if (len(hits) == 2
            and all(r['type'] in ('db', 'db_with_comment')
                    for _, r, _, _ in hits)
            and all(r.get('size', 1) == 1 for _, r, _, _ in hits)
            and hits[0][2] == offset and hits[1][2] == offset + 1):
        out = list(records[:hits[0][0]])
        out.append({'type': 'data_ptr', 'offset': offset, 'size': 2,
                    'text': expr})
        out.extend(records[hits[1][0] + 1:])
        return out
    return None


def _check_array_word(binary_data, data_origin, bss_boundary, table, offset,
                      value):
    """Raise unless a declared array's DS word names a string.

    The sidecar states the layout; the bytes must agree with it: the target is
    file-backed DS and a printable NUL-terminated run starts there (an empty
    string is a run of length 0).
    """
    from lib.sidecar.errors import SidecarError

    target = data_origin + value
    end = binary_data.find(b'\0', target) if value < bss_boundary else -1
    if (not 0 < value < bss_boundary or end < 0
            or any(b < 0x20 or b > 0x7e for b in binary_data[target:end])):
        raise SidecarError(
            f'pointer_arrays table 0x{table:x}: word at 0x{offset:x} '
            f'(0x{value:04x}) does not name a DS string')


def _ds_expression(value, bss_boundary, mem_equ, data_names=None):
    """Symbolic expression for a DS offset, registering its ``equ`` name."""
    name = (data_names or {}).get(value) or Symbol.data(
        Space.DS if value < bss_boundary else Space.BSS, value)
    mem_equ.setdefault(name, value)
    return name


def _array_word_expression(records, binary_data, data_origin, value,
                           mem_equ, data_names=None):
    """Expression for a declared array word: its string's label, unaliased.

    A string that only the array points at needs no ``dseg_`` name: the word
    is the string's label minus ``__zdseg_start`` directly, so the table does
    not add one ``equ`` line per string.  A string the code also names keeps
    that name.  None when the string cannot be labelled.
    """
    from lib.compare.render import _anchor_data_byte
    name = (data_names or {}).get(value) or Symbol.data(Space.DS, value)
    if name in mem_equ:
        return name
    anchored = _anchor_data_byte(records, binary_data, data_origin + value,
                                 data_origin, value, name, set())
    if anchored is None:
        return None
    anchor, delta = anchored
    expr = f'{anchor} - __zdseg_start'
    return expr + f' + 0x{delta:04x}' if delta else expr


def promote_data_pointers(records, binary_data, start_offset, segments,
                          promoted, mem_equ, label_map=None):
    """Splice a symbolic ``dw`` for every promoted word.

    Returns ``(records, report)`` where *report* is a list of
    ``{'offset', 'value', 'space', 'expr', 'source'}`` for the words that were
    emitted, plus a ``skipped`` list ``{'offset', 'reason'}``.  The caller keeps
    the raw bytes for anything skipped.
    """
    from lib.compare.jumptables import _ensure_global_label
    from lib.segments import SegmentModel  # noqa: F401  (documented dependency)

    kind = getattr(segments, 'kind', None)
    driver = kind == 'driver'
    if segments is None or kind not in ('mz', 'driver'):
        return records, {'promoted': [], 'skipped': []}
    data_origin = segments.data_origin
    if data_origin is None and not driver:
        return records, {'promoted': [], 'skipped': []}
    # A raw driver has one segment (``DS = CS``): only ``cs`` words, and its
    # variables sit at any byte offset.
    bss_boundary = None if driver else len(binary_data) - data_origin
    anchored = driver or data_anchored(records, binary_data, start_offset)
    load_offset = getattr(segments, 'load_offset', 0) or 0

    emitted = []
    skipped = []
    for entry in promoted:
        offset = entry['offset']
        # A declared array lays its records out at any byte, as the C
        # compiler packed them; a scored word is an aligned guess.
        declared = 'array' in entry
        if ((offset & 1 and not driver and not declared)
                or offset + 2 > len(binary_data)):
            skipped.append({'offset': offset, 'reason': 'misaligned'})
            continue
        value = struct.unpack_from('<H', binary_data, offset)[0]
        space = entry.get('space', 'ds')
        if declared and space == 'ds' and not driver:
            _check_array_word(binary_data, data_origin, bss_boundary,
                              entry['array'], offset, value)
        if not anchored:
            skipped.append({'offset': offset, 'reason': 'no-data-anchor'})
            continue
        if declared and space == 'ds' and not driver:
            expr = _array_word_expression(records, binary_data, data_origin,
                                          value, mem_equ, segments.data_names)
            if expr is None:
                skipped.append({'offset': offset,
                                'reason': 'unlabelable-target'})
                continue
        elif space == 'ds' and not driver:
            expr = _ds_expression(value, bss_boundary, mem_equ,
                                  segments.data_names)
        elif space == 'cs':
            target = segments.cs_origin + value - load_offset
            name = (label_map or {}).get(target)
            if name is None:
                name = Symbol.anchor(f'__zcp_{target:04x}', target)
                if not _ensure_global_label(records, binary_data, target, name):
                    skipped.append({'offset': offset,
                                    'reason': 'unlabelable-target'})
                    continue
            expr = f'{name} - IMAGE_BASE'
        else:
            # An ``es``/external pointer must not move (Section 9); the corpus
            # records those as negatives, so this is a guard, not a path.
            skipped.append({'offset': offset, 'reason': f'external-{space}'})
            continue

        new_records = _split_records(records, binary_data, offset, expr)
        if new_records is None:
            skipped.append({'offset': offset, 'reason': 'not-data-bytes'})
            continue
        records = new_records
        emitted.append({
            'offset': offset, 'value': value, 'space': space, 'expr': expr,
            'source': entry.get('source', 'scorer'),
        })
    return records, {'promoted': emitted, 'skipped': skipped}
