#!/usr/bin/env python3
"""Compare two per-binary stats reports (``EXTRA_FLAGS=--stats make build``).

Prints the classification, phase and jump-table values that differ.
Read-only.

Usage::

    python3 compare_reports.py REPORT_A.json REPORT_B.json
"""

import json
import sys


def compare_reports(path_a, path_b):
    with open(path_a) as f:
        a = json.load(f)
    with open(path_b) as f:
        b = json.load(f)
    name = a.get('binary', {}).get('name', '?')
    deltas = []
    cls_a = a.get('classification', {})
    cls_b = b.get('classification', {})
    for key in ('code_bytes', 'data_bytes', 'unknown_bytes', 'code_pct'):
        va = cls_a.get(key, 0)
        vb = cls_b.get(key, 0)
        if va != vb:
            deltas.append({'key': f'classification.{key}', 'before': va, 'after': vb})
    phases_a = a.get('phases', {})
    phases_b = b.get('phases', {})
    for pname in set(list(phases_a.keys()) + list(phases_b.keys())):
        pa = phases_a.get(pname, {})
        pb = phases_b.get(pname, {})
        for key in ('time_s', 'nz', 'pos', 'neg'):
            va = pa.get(key, 0)
            vb = pb.get(key, 0)
            if abs(va - vb) > 0.01 if isinstance(va, float) else va != vb:
                deltas.append({'key': f'phases.{pname}.{key}', 'before': va, 'after': vb})
    jts_a = {jt.get('jmp_addr'): jt for jt in a.get('jump_tables', [])}
    jts_b = {jt.get('jmp_addr'): jt for jt in b.get('jump_tables', [])}
    for addr in set(list(jts_a.keys()) + list(jts_b.keys())):
        ja = jts_a.get(addr, {})
        jb = jts_b.get(addr, {})
        va = ja.get('targets_found', 0)
        vb = jb.get('targets_found', 0)
        if va != vb:
            deltas.append({
                'key': f'jump_table.0x{addr:x}.targets_found',
                'before': va, 'after': vb,
            })
    return {
        'name': name,
        'deltas': deltas,
        'changed': len(deltas) > 0,
    }


def print_compare(path_a, path_b):
    result = compare_reports(path_a, path_b)
    print(f"Compare: {result['name']}")
    if not result['changed']:
        print('  No differences.')
        return
    for d in result['deltas']:
        print(f"  {d['key']}: {d['before']} -> {d['after']}")


def main(argv):
    if len(argv) != 3:
        print('Usage: python3 compare_reports.py REPORT_A.json REPORT_B.json',
              file=sys.stderr)
        return 1
    print_compare(argv[1], argv[2])
    return 0


if __name__ == '__main__':
    sys.exit(main(sys.argv))
