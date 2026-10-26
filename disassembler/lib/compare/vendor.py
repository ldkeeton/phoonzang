"""Vendor-source annotations for hand-written Aztec runtime routines."""

import re

from lib.compare.records import _record_span
from lib.symtab import LOCAL_PREFIX, Kind, Source, Symbol


def _vendor_named_tails(label_map, annotations):
    """Addresses of ``loc_`` labels that ``_apply_asm_annotations`` renames."""
    return {
        addr for note in (annotations or {}).values()
        for addr in note['labels']
        if note['start'] < addr < note['end']
        and addr in label_map and (_plain_loc(label_map[addr])
                                   or _case_label(label_map[addr]))
    } | {
        addr for note in (annotations or {}).values()
        for addr, name in (label_map or {}).items()
        if note['start'] < addr < note['end'] and _plain_loc(name)
    }


def _numbered_local(name, owners):
    """True for an ``@..<owner>.lN`` branch target of one of *owners*."""
    return (name.kind is Kind.LOCAL and name.owner in owners
            and name.index is not None)


def _plain_loc(name):
    """True for a generated ``loc_`` label (a tail shared with another routine),
    including a leaf or string tail (``leaf_loc_``, ``string_loc_``).

    Address- or tag-named, with or without the host prefix: the vendor's name
    is better than either, and the same in every binary.
    """
    return (name.kind in (Kind.LABEL, Kind.ROUTINE)
            and (name.base or '').endswith('loc')
            and name.source in (Source.ADDRESS, Source.TAG))


def _vendor_data_name(name):
    """True for an address-named switch table.

    ``jumptable_4822`` names the place; the vendor module calls the same
    bytes ``conv_routines`` in every binary.
    """
    return name.source is Source.ADDRESS and name.kind is Kind.TABLE


def _case_label(name):
    """True for a ``jumptable_<table>_case_<n>`` target: code the vendor names."""
    return name.role == 'case'


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
            if rec['type'] == 'jump_table':
                # The table's name is a field of its record, not a label.
                vendor = note.get('data_labels', {}).get(rec['start'])
                if (vendor and note['start'] <= rec['start'] < note['end']
                        and _vendor_data_name(rec['label'])):
                    new = Symbol.local(routine, rec['start'], name=vendor,
                                       source=Source.SIGNATURE)
                    if new not in taken:
                        taken.add(new)
                        renames[rec['label']] = new
                        rec['label'] = new
                continue
            if rec['type'] != 'label':
                continue
            addr = rec['offset']
            old = rec['name']
            if (_vendor_data_name(old)
                    and addr in note.get('data_labels', {})
                    and note['start'] <= addr < note['end']):
                vendor = note['data_labels'][addr]
                new = Symbol.local(routine, addr, name=vendor,
                                   source=Source.SIGNATURE)
                if new not in taken:
                    taken.add(new)
                    renames[old] = new
                    rec['name'] = new
                    if label_map is not None and label_map.get(addr) == old:
                        del label_map[addr]
                continue
            vendor = note['labels'].get(addr)
            # A module's note (``owners``) covers each of its routines.
            owners = note.get('owners', (routine,))
            if (vendor is None or not (note['start'] < addr < note['end'])
                    or not (_numbered_local(old, owners)
                            or _plain_loc(old) or _case_label(old))):
                continue
            new = Symbol.local(routine, addr, name=vendor,
                               source=Source.SIGNATURE)
            if new in taken:
                continue
            taken.add(new)
            renames[old] = new
            rec['name'] = new
            if label_map is not None and label_map.get(addr) == old:
                del label_map[addr]
        # A tail the vendor source has no label for (a compiler's shared
        # epilogue) is still named after the address or content, which differ
        # between binaries.  Number it within the module instead.
        tails = sorted((rec['offset'], rec) for rec in records
                       if rec['type'] == 'label'
                       and note['start'] < rec['offset'] < note['end']
                       and _plain_loc(rec['name']))
        for number, (addr, rec) in enumerate(tails, 1):
            old = rec['name']
            new = Symbol.local(routine, addr, name=f'tail{number}',
                               source=Source.SIGNATURE)
            renames[old] = new
            rec['name'] = new
            if label_map is not None and label_map.get(addr) == old:
                del label_map[addr]
    if renames:
        pattern = re.compile(
            r'(?<![\w.@$])(' + '|'.join(
                re.escape(o) for o in sorted(renames, key=len, reverse=True))
            + r')(?![\w])')

        # The renamed label's own branch targets are ``@..<old>.lN``: they
        # follow it, or the old name stays in the file as their owner.
        owned = re.compile(r'@\.\.(' + '|'.join(
            re.escape(str(o)) for o in sorted(renames, key=len, reverse=True))
            + r')\.')
        by_text = {str(o): str(n)[len(LOCAL_PREFIX):]
                   for o, n in renames.items() if n.kind is Kind.LOCAL}

        def swap(text):
            text = pattern.sub(lambda m: renames[m.group(1)], text)
            return owned.sub(lambda m: f'{LOCAL_PREFIX}{by_text[m.group(1)]}.',
                             text) if by_text else text

        for rec in records:
            if rec['type'] == 'jump_table':
                rec['entries'] = [renames.get(e, e) if isinstance(e, Symbol)
                                  else e for e in rec['entries']]
            elif rec['type'] == 'label':
                name = rec['name']
                if name.kind is Kind.LOCAL and name.owner in by_text:
                    rec['name'] = Symbol.local(
                        by_text[name.owner], name.offset, name.index,
                        name=None if name.index is not None
                        else str(name).rsplit('.', 1)[-1],
                        source=name.source, role=name.role)
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
