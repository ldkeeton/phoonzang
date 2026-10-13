"""Vendor-source annotations for hand-written Aztec runtime routines."""

import re

from lib.compare.records import _record_span
from lib.names import stem


_SHARED_TAIL_RE = re.compile(r'loc_[0-9a-f]+')


def _vendor_named_tails(label_map, annotations):
    """Addresses of ``loc_`` labels that ``_apply_asm_annotations`` renames."""
    return {
        addr for note in (annotations or {}).values()
        for addr in note['labels']
        if note['start'] < addr < note['end']
        and _SHARED_TAIL_RE.fullmatch(stem(label_map.get(addr) or ''))
    }


def _join(*parts):
    return ' ; '.join(p for p in parts if p)


def _apply_asm_annotations(records, annotations, label_map=None):
    """Rename local labels after the vendor source and attach its comments.

    ``annotations`` is ``{routine: {'start', 'end', 'labels', 'comments'}}``
    with absolute addresses (see ``main.aztec._aztec_asm_annotations``).  The
    instructions themselves are untouched, so the bytes cannot change: only the
    ``@..<routine>.lN`` local names, the ``loc_<addr>`` names of tails shared
    with another routine (several owners keep them global), and the
    ``annotation`` text are rewritten.
    Each vendor comment keeps the ``0xADDR`` marker after it.  A renamed
    ``loc_`` label is dropped from ``label_map`` (when given) so no stale
    ``equ`` or exported label is emitted for the old name.
    """
    renames = {}
    for routine, note in annotations.items():
        taken = set()
        for rec in records:
            if rec['type'] != 'label':
                continue
            addr = rec['offset']
            vendor = note['labels'].get(addr)
            old = rec['text'].removesuffix(':')
            if (vendor is None or not (note['start'] < addr < note['end'])
                    or not (old.startswith(f'@..{routine}.l')
                            or _SHARED_TAIL_RE.fullmatch(old))):
                continue
            new = f'@..{routine}.{vendor}'
            if new in taken:
                continue
            taken.add(new)
            renames[old] = new
            if label_map is not None and label_map.get(addr) == old:
                del label_map[addr]
    if renames:
        pattern = re.compile(
            r'(?<![\w.@$])(' + '|'.join(
                re.escape(o) for o in sorted(renames, key=len, reverse=True))
            + r')(?![\w])')

        def swap(text):
            return pattern.sub(lambda m: renames[m.group(1)], text)

        for rec in records:
            if rec['type'] == 'label':
                rec['text'] = swap(rec['text'])
            elif rec['type'] in ('mnem', 'db_with_comment') and rec.get('text'):
                rec['text'] = swap(rec['text'])
    for note in annotations.values():
        comments = note['comments']
        for rec in records:
            if rec['type'] != 'mnem':
                continue
            start, end = _record_span(rec)
            text = comments.get(start)
            if text and note['start'] <= start < note['end']:
                rec['annotation'] = _join(rec.get('annotation'), text,
                                          f'0x{start:04x}')
    return records
