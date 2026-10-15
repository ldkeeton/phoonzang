"""Co-tenancy report: objects glued onto a routine's fragment.

A fragment file is cut at *named* routines only (``splitting.
_select_split_ranges``), so any unnamed object sitting between two named routines
- a trailing data blob (``cseg_XXXX`` + zeros) or a bare ``loc_<addr>`` callee -
is emitted inside the earlier routine's file.  The file is then not "the routine"
but "the routine plus whatever followed it".

This module measures that.  For every generated fragment it lists the labels it
defines besides its own root, and classifies each by:

* **kind** - ``data`` (an address-named byte: ``cseg_``/``data_``/``dseg_``/
  ``bss_``/``seg_``/``esg_``/``psp_``) or ``code`` (a routine name);
* **reach** - referenced from *outside* the defining file (a mis-filed object
  that belongs in its own file / the master) or only inside it (a local tail).

The ``outside`` count is the number that matters: those objects are not the
fragment's to own, and their address-derived names are also what stops identical
code from sharing (``lib.shared``).
"""

import os
import re
from collections import defaultdict

from lib.autogen import is_generated

_LABEL = re.compile(r'^([A-Za-z_][A-Za-z0-9_.]*):')
_IDENT = re.compile(r'[A-Za-z_][A-Za-z0-9_.]*')
_LOCAL_PREFIX = '@..'
_DATA_PREFIXES = ('cseg_', 'data_', 'dseg_', 'bss_', 'seg_', 'esg_', 'ssg_', 'psp_')
_SKIP_DIRS = {'inc', 'build_out'}


def label_kind(name):
    """``'data'`` for an address-named byte, else ``'code'``."""
    return 'data' if name.startswith(_DATA_PREFIXES) else 'code'


def _read(path):
    with open(path, encoding='utf-8', errors='surrogateescape') as f:
        return f.read()


def _walk_asm(out_dir):
    """Every ``.asm`` under *out_dir*, skipping ``inc``/``build_out``."""
    for folder, dirs, files in os.walk(out_dir):
        dirs[:] = sorted(d for d in dirs if d not in _SKIP_DIRS)
        for filename in sorted(files):
            if filename.endswith('.asm'):
                yield os.path.join(folder, filename)


def _defined_labels(text):
    """Label names defined in *text*, excluding ``@..`` locals."""
    out = []
    for line in text.split('\n'):
        m = _LABEL.match(line)
        if m and not m.group(1).startswith(_LOCAL_PREFIX):
            out.append(m.group(1))
    return out


def fragments(out_dir):
    """``{relative path: text}`` for the per-binary generated fragments.

    A fragment lives under a binary's own directory; the shared ``lib/`` and the
    top-level masters are not fragments.
    """
    out = {}
    for binary in sorted(os.listdir(out_dir)):
        top = os.path.join(out_dir, binary)
        if binary == 'lib' or binary in _SKIP_DIRS or not os.path.isdir(top):
            continue
        for path in _walk_asm(top):
            if is_generated(path):
                out[os.path.relpath(path, out_dir)] = _read(path)
    return out


def _defined(out_dir):
    """``{label: relative file}`` for labels defined anywhere in the tree."""
    where = {}
    for path in _walk_asm(out_dir):
        if not is_generated(path):
            continue
        rel = os.path.relpath(path, out_dir)
        for name in _defined_labels(_read(path)):
            where.setdefault(name, rel)
    return where


def _references(out_dir, known):
    """``{label: set(relative files)}`` that name *label* in code.

    Comments are stripped; a label's own definition line is not a reference.
    Only names in *known* are kept.
    """
    refs = defaultdict(set)
    for path in _walk_asm(out_dir):
        if not is_generated(path):
            continue
        rel = os.path.relpath(path, out_dir)
        for line in _read(path).split('\n'):
            code = line.split(';', 1)[0]
            if not code.strip():
                continue
            m = _LABEL.match(code)
            define = m.group(1) if m else None
            for name in set(_IDENT.findall(code)):
                if name != define and name in known:
                    refs[name].add(rel)
    return refs


def scan(out_dir):
    """Measure co-tenancy over the generated tree at *out_dir*.

    Returns ``{'files', 'glued_files', 'co_tenants', 'code', 'data', 'entries'}``
    where ``code``/``data`` are ``{'outside', 'inside', 'dead'}`` counts and
    ``entries`` is the per-fragment detail (one row per glued fragment).
    """
    frags = fragments(out_dir)
    defined = _defined(out_dir)
    refs = _references(out_dir, set(defined))

    code = {'outside': 0, 'inside': 0, 'dead': 0}
    data = {'outside': 0, 'inside': 0, 'dead': 0}
    entries = []
    for rel, text in sorted(frags.items()):
        root = os.path.basename(rel)[:-4]
        extras = [n for n in _defined_labels(text) if n != root]
        if not extras:
            continue
        row = []
        for name in extras:
            kind = label_kind(name)
            outside = {f for f in refs.get(name, ()) if f != rel}
            reach = 'outside' if outside else (
                'inside' if refs.get(name) else 'dead')
            (code if kind == 'code' else data)[reach] += 1
            row.append({'name': name, 'kind': kind, 'reach': reach,
                        'refs': sorted(outside)})
        entries.append({'file': rel, 'root': root, 'extra': row})

    return {
        'files': len(frags),
        'glued_files': len(entries),
        'co_tenants': sum(len(e['extra']) for e in entries),
        'code': dict(code),
        'data': dict(data),
        'entries': entries,
    }


def summarize(report):
    """A one-line summary of a :func:`scan` report."""
    code, data = report['code'], report['data']
    glued = report['glued_files']
    return (f'co-tenancy: {glued}/{report["files"]} fragments hold a foreign label '
            f'({report["co_tenants"]} total; '
            f'code outside/inside/dead {code.get("outside", 0)}/'
            f'{code.get("inside", 0)}/{code.get("dead", 0)}, '
            f'data {data.get("outside", 0)}/{data.get("inside", 0)}/'
            f'{data.get("dead", 0)})')


if __name__ == '__main__':
    import sys
    tree = sys.argv[1] if len(sys.argv) > 1 else 'asm_DSAVANT'
    found = scan(tree)
    print(summarize(found))
    for entry in found['entries']:
        outs = [e['name'] for e in entry['extra'] if e['reach'] == 'outside']
        if outs:
            print(f'  {entry["file"]}: {", ".join(outs)}')
