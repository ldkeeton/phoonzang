"""Co-tenancy report: objects glued onto a routine's fragment.

A fragment file is cut at *named* routines only (``splitting.
_select_split_ranges``), so any unnamed object sitting between two named routines
- a trailing data blob (``cseg_XXXX`` + zeros) or a bare ``loc_<addr>`` callee -
is emitted inside the earlier routine's file.  The file is then not "the routine"
but "the routine plus whatever followed it".

This module measures that.  For every generated fragment it lists the labels it
defines besides its own root, and classifies each by:

* **kind** - ``data`` (a :attr:`Kind.DATA` symbol) or ``code``;
* **reach** - referenced from *outside* the defining file (a mis-filed object
  that belongs in its own file / the master) or only inside it (a local tail).

A renderer *anchor* (a label on a byte, so a name can be written as an
expression over it) is not listed: it is an alternate spelling for a byte inside
the fragment's own span, not an object glued onto it.  Neither is a routine's
local label.  What a name is comes from the binaries' symbol tables
(``.cache/<project>/symbols/``), not from its spelling.

The ``outside`` count is the number that matters: those objects are not the
fragment's to own, and their address-derived names are also what stops identical
code from sharing (``lib.shared``).
"""

import os
import re
from collections import defaultdict

from lib.autogen import is_generated
from lib.cachedirs import project_of_src_dir
from lib.routine_source import beside
from lib.shared import FOLDER, binary_local
from lib.symtab import Kind, project_tables

_LABEL = re.compile(r'^([A-Za-z_@][A-Za-z0-9_.@]*):')
_IDENT = re.compile(r'[A-Za-z_][A-Za-z0-9_.]*')
#: Labels that are not objects of their own: a routine's local, or a
#: renderer anchor on a byte inside a record.
_NOT_OBJECTS = (Kind.LOCAL, Kind.ANCHOR)
_SKIP_DIRS = {'inc', 'build_out'}


def symbol_tables(project):
    """``{text: Symbol}`` over every binary's table of *project*."""
    symbols = {}
    for table in project_tables(project).values():
        for text, sym in table.items():
            symbols.setdefault(text, sym)
    return symbols


def label_kind(name, symbols):
    """``'data'`` for a data symbol, else ``'code'``."""
    sym = symbols.get(name)
    return 'data' if sym is not None and sym.kind is Kind.DATA else 'code'


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


def generated_asm(out_dir):
    """``{relative path: text}`` of the generated ``.asm`` files at *out_dir*."""
    return {os.path.relpath(path, out_dir): _read(path)
            for path in _walk_asm(out_dir) if is_generated(path)}


def _asm(files):
    """*files*' ``.asm`` outside ``inc``/``build_out``, in path order."""
    return [(rel, files[rel]) for rel in sorted(files)
            if rel.endswith('.asm')
            and not _SKIP_DIRS & set(rel.split('/')[:-1])]


def _defined_labels(text, symbols):
    """Label names defined in *text*, excluding locals and anchors.

    A renderer anchor (``__zdata_381b``) names a byte inside whatever record
    spans it, so it is an alternate spelling for an object, not a foreign object
    the splitter mis-filed.  Counting it would report a glued fragment for a
    label that adds no bytes, and a fragment that defines one is not "the
    routine plus a neighbour".
    """
    out = []
    for line in text.split('\n'):
        m = _LABEL.match(line)
        sym = symbols.get(m.group(1)) if m else None
        if m and (sym is None or sym.kind not in _NOT_OBJECTS):
            out.append(m.group(1))
    return out


def fragments(files):
    """``{relative path: text}`` for the per-binary generated fragments.

    *files* is the tree's generated ``.asm`` (:func:`generated_asm`).  A
    fragment lives under a binary's own directory; the shared ``shared/`` and
    the top-level masters are not fragments.
    """
    return {rel: text for rel, text in _asm(files)
            if '/' in rel and rel.split('/', 1)[0] != FOLDER}


def _defined(files, symbols):
    """``{label: [relative files]}`` for labels defined anywhere in the tree.

    One name can be defined by several binaries: a content tag names the code,
    so identical code in two binaries carries the same name.
    """
    where = defaultdict(list)
    for rel, text in _asm(files):
        for name in _defined_labels(text, symbols):
            where[name].append(rel)
    return where


def binary_of(rel):
    """The binary a tree file belongs to: its top dir, or a master's stem."""
    top = rel.split(os.sep, 1)[0]
    return top[:-4] if top.endswith('.asm') else top


def resolve(name, referrer, defined, host='ds'):
    """The files whose *name* a reference in *referrer* means.

    A name resolves in the referrer's own binary first, then ``shared/``, then
    the *host* -- the order the assembler sees them.  A ``shared/`` file is
    included by several binaries, so it means every definition.
    """
    where = defined.get(name, ())
    if binary_of(referrer) == FOLDER:
        return set(where)
    for scope in (binary_of(referrer), FOLDER, host):
        hit = {f for f in where if binary_of(f) == scope}
        if hit:
            return hit
    return set(where)


def _references(files, known):
    """``{label: set(relative files)}`` that name *label* in code.

    Comments are stripped; a label's own definition line is not a reference.
    Only names in *known* are kept.
    """
    refs = defaultdict(set)
    for rel, text in _asm(files):
        for line in text.split('\n'):
            code = line.split(';', 1)[0]
            if not code.strip():
                continue
            m = _LABEL.match(code)
            define = m.group(1) if m else None
            for name in set(_IDENT.findall(code)):
                if name != define and name in known:
                    refs[name].add(rel)
    return refs


def scan(out_dir, symbols=None, files=None):
    """Measure co-tenancy over the generated tree at *out_dir*.

    *symbols* is ``{text: Symbol}``; by default the tables of the project the
    tree belongs to (:func:`symbol_tables`).  *files* is the tree's generated
    files (``{relative path: text}``) when the build has them before writing
    them; by default they are read from *out_dir*.

    Returns ``{'files', 'glued_files', 'co_tenants', 'code', 'data', 'entries'}``
    where ``code``/``data`` are ``{'outside', 'inside', 'dead'}`` counts and
    ``entries`` is the per-fragment detail (one row per glued fragment).
    """
    if symbols is None:
        symbols = symbol_tables(project_of_src_dir(out_dir))
    if files is None:
        files = generated_asm(out_dir)
    frags = fragments(files)
    defined = _defined(files, symbols)
    refs = _references(files, set(defined))

    code = {'outside': 0, 'inside': 0, 'dead': 0}
    data = {'outside': 0, 'inside': 0, 'dead': 0}
    entries = []
    for rel, text in sorted(frags.items()):
        root = os.path.basename(rel)[:-4]
        # A fragment with a .c or .s is one compiled object (a vendor
        # module's entry points, ``mkdir``/``rmdir``/``chdir``): every label
        # is its own.
        if beside(rel[:-4], lambda p: p in files or os.path.isfile(
                os.path.join(out_dir, p))):
            continue
        # A data run named for its address is the bytes no object claims,
        # one file per run by design: its labels are handles on its bytes.
        if binary_local(rel):
            continue
        extras = [n for n in _defined_labels(text, symbols) if n != root]
        if not extras:
            continue
        row = []
        for name in extras:
            kind = label_kind(name, symbols)
            outside = {f for f in refs.get(name, ())
                       if f != rel and rel in resolve(name, f, defined)}
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
    tree = sys.argv[1] if len(sys.argv) > 1 else 'src_DSAVANT'
    found = scan(tree)
    print(summarize(found))
    for entry in found['entries']:
        outs = [e['name'] for e in entry['extra'] if e['reach'] == 'outside']
        if outs:
            print(f'  {entry["file"]}: {", ".join(outs)}')
