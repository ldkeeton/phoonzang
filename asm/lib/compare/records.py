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
