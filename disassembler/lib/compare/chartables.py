"""Sidecar ``char_tables``: tag the data bytes of a character-indexed table."""


def mark_char_tables(records, tables, use=None):
    """Return *records* with each declared table's data cut out and tagged.

    A ``data_block`` overlapping a table is split at the table's bounds and
    the inside part carries ``char_table`` = ``(table, first)``, which the
    renderer reads to name the character at each byte.  A later split (a
    label placed inside the table) copies the tag, so every piece still
    renders its own characters.  A table is applied when every byte of it is
    in a ``data_block``.
    """
    for entry in tables or ():
        start = entry['table']
        end = start + entry['count']
        tag = (start, entry['first'])
        out, covered = [], 0
        for rec in records:
            if (rec['type'] != 'data_block' or rec['end'] <= start
                    or rec['start'] >= end):
                out.append(rec)
                continue
            lo, hi = max(rec['start'], start), min(rec['end'], end)
            rec = {k: v for k, v in rec.items() if k != 'bytes'}
            if rec['start'] < lo:
                out.append({**rec, 'end': lo})
            out.append({**rec, 'start': lo, 'end': hi, 'char_table': tag})
            if hi < rec['end']:
                out.append({**rec, 'start': hi})
            covered += hi - lo
        records = out
        if use is not None:
            ident = f'{start:04x}'
            if covered == end - start:
                use.applied('char_tables', ident)
            else:
                use.skipped('char_tables', ident,
                            f'{end - start - covered} of its bytes are not data')
    return records
