"""Share byte-identical routines between binaries under ``src_<project>/shared/``.

The same vendor runtime routine (``aztec_strlen``) or overlay API stub is
emitted once per binary that contains it.  Where the instructions are identical
(comments and the routine's own address annotations aside) the copies collapse
into one file in ``shared/`` that every binary's master ``%include``s.

Only generated files are touched (see :mod:`lib.autogen`).  The placement is
decided on the build's files as data (:func:`share_files`), before any is
written, so a routine shared is written once, to ``shared/``, and its masters
already include it there.  A routine with a source shares its ``.c`` (or
``.s``, :mod:`lib.routine_source`) too, when every copy is generated and
identical: ``shared/<label>.c`` is then the one source the C gate checks
against each binary's bytes (``main.aztec`` and ``make.elf`` look there).

Copies without C that differ only in the label names they use (each binary's
own ``bss_0d00``, ``loc_HOIR``: names its symbol table, ``.cache/<project>/
symbols/``, holds) share too: the shared file spells each by a
common name (``aztec_free.bss1``), and ``equ`` lines just above each binary's
``%include`` give its own name that common one.  Naming the targets the same in every
binary (a sidecar name) makes the copies identical, and the aliases go.
"""

import os
import re
from collections import defaultdict

from .autogen import hand_owned, is_generated
from .cachedirs import project_of_src_dir
from .routine_source import SUFFIXES, beside
from .symtab import project_tables

FOLDER = 'shared'
_SKIP_DIRS = {FOLDER, 'inc', 'build_out'}
_ADDR_COMMENT = re.compile(r'[ \t]+; 0x[0-9a-fA-F]+[ \t]*$')
_LOCAL_LABEL = re.compile(r'@\.\.[A-Za-z0-9_.]+?\.l(\d+)')


def _code_key(text):
    """The routine's instructions with comments and local-label names removed."""
    lines = []
    for line in text.split('\n'):
        code = line.split(';', 1)[0].rstrip()
        if code.strip():
            lines.append(code.strip())
    return _LOCAL_LABEL.sub(r'@L\1', '\n'.join(lines))


_TOKEN = re.compile(r'[A-Za-z_][\w.]*|0[xX][0-9a-fA-F]+|\d+|\n|\S')
_SYMBOL = re.compile(r'[A-Za-z_][\w.]*')


def _binary(rel):
    return rel.split(os.sep, 1)[0]


def _family(sym):
    """The family a common name is counted in: ``bss``, ``loc``, ``api_idx``.

    A dispatch stub's base carries its index (``api_idx_000a``); the stubs a
    routine calls are one family whatever their index.
    """
    if sym.role == 'api_stub':
        return 'api_idx'
    return sym.base or str(sym)


def _bind(fragments, rels, stem, tables):
    """``{rel: [(common, own)]}`` when *rels* differ only in the names they use.

    The copies must agree token for token except where each spells a name,
    and agree on which positions share one name, so each copy's own names,
    put back for the common ones, give exactly its text.  A common name is
    ``<stem>.<kind><n>`` (``aztec_free.bss1``).  ``None`` otherwise; ``{}`` --
    nothing to alias -- when they are identical.  A name is a token the copy's
    binary has a symbol for (*tables*: ``{binary: {text: Symbol}}``).
    """
    names = [tables.get(_binary(rel), {}) for rel in rels]
    streams = [_TOKEN.findall(_code_key(fragments[rel][0])) for rel in rels]
    if len({len(s) for s in streams}) != 1:
        return None
    diff = [i for i in range(len(streams[0]))
            if len({s[i] for s in streams}) > 1]
    if not diff:
        return {}
    if not all(s[i] in table for s, table in zip(streams, names)
               for i in diff):
        return None
    # Each position's common name, after the first copy's spelling of it.
    first, counts, param_at = {}, defaultdict(int), {}
    for i in diff:
        token = streams[0][i]
        if token not in first:
            kind = _family(names[0][token])
            counts[kind] += 1
            first[token] = f'{stem}.{kind}{counts[kind]}'
        param_at[i] = first[token]
    maps, subs = [], []
    for s in streams:
        params = {}
        for i in diff:
            params.setdefault(s[i], param_at[i])
        if len(set(params.values())) != len(params):
            return None
        maps.append(params)
        subs.append([params.get(t, t) for t in s])
    if any(sub != subs[0] for sub in subs[1:]):
        return None
    return {rel: [(p, name) for name, p in params.items()]
            for rel, params in zip(rels, maps)}


def _clusters(fragments, rels, ctext, tables):
    """Groups of *rels* that can share one file, each with its bindings.

    Copies with C must be identical: each binary's resplice rewrites the shared
    asm from that C.  Without C, copies that differ only in the names they use
    share one file that spells those names by common ones (:func:`_bind`).
    """
    stem = os.path.basename(rels[0])[:-4]
    left = sorted(rels)
    while left:
        group, binds = [left[0]], {}
        for rel in left[1:]:
            if ctext is not None:
                ok = _code_key(fragments[rel][0]) == _code_key(
                    fragments[group[0]][0])
                trial = {} if ok else None
            else:
                trial = _bind(fragments, group + [rel], stem, tables)
            if trial is not None:
                group.append(rel)
                binds = trial
        left = [rel for rel in left if rel not in group]
        yield group, binds


def _common_names(text, binds):
    """*text* with each of its own names written as the common one."""
    for common, own in binds:
        text = re.sub(rf'(?<![\w.@]){re.escape(own)}(?![\w.])', common, text)
    return text


def neutral(text):
    """*text* without the per-binary ``; 0xADDR`` annotations."""
    return '\n'.join(_ADDR_COMMENT.sub('', line) for line in text.split('\n'))


def _text_for(fragments, members):
    """The shared text: addresses kept only when every copy agrees on them.

    A routine with C is rewritten from it by each binary's resplice, so its
    annotations are always dropped to keep that rewrite the same for all.
    """
    texts = {fragments[rel][0] for rel in members}
    first = fragments[members[0]][0]
    if len(texts) == 1 and fragments[members[0]][1] is None:
        return first
    return neutral(first)


def _read(path):
    with open(path, encoding='utf-8', errors='surrogateescape') as f:
        return f.read()


def _on_disk(out_dir, rel):
    """A hand-owned file at *rel*: what an earlier build wrote is not input."""
    return hand_owned(os.path.join(out_dir, rel))


def _shared_base(rel):
    """``shared/<stem>``, or ``shared/data/<stem>`` for a data object's file
    (``vinstall/data/ctp_.asm``): data shares only with data."""
    stem = os.path.basename(rel)[:-4]
    if os.path.basename(os.path.dirname(rel)) == 'data':
        return f'{FOLDER}/data/{stem}'
    return f'{FOLDER}/{stem}'


def _fragments(files, out_dir):
    """``{relative path: (asm text, source or None)}`` of generated fragments.

    *files* are the generated files (``{relative path: text}``); anything else
    under *out_dir* is a human's.  The source, ``(suffix, text)``, is the
    ``.c`` or ``.s`` beside the fragment, else ``shared/<label>.c`` or ``.s``
    (a shared or hand-owned copy).  A fragment whose own source was taken over
    by hand is left out: it is not ours to move.
    """
    def source(base, where):
        path = beside(base, where)
        return (path, path[len(base):]) if path else (None, None)

    found = {}
    for rel in sorted(files):
        top, sep, _ = rel.partition('/')
        if not sep or top in _SKIP_DIRS or not rel.endswith('.asm'):
            continue
        own, own_suffix = source(rel[:-4], files.__contains__)
        shared_base = _shared_base(rel)
        shared, shared_suffix = source(shared_base, files.__contains__)
        if own:
            ctext = (own_suffix, files[own])
        elif source(rel[:-4], lambda p: _on_disk(out_dir, p))[0]:
            continue
        elif shared:
            ctext = (shared_suffix, files[shared])
        else:
            path, suffix = source(shared_base, lambda p: _on_disk(out_dir, p))
            ctext = (suffix, _read(os.path.join(out_dir, path))) if path \
                else None
        found[rel] = (files[rel], ctext)
    return found


def share_files(files, out_dir, tables):
    """Collapse identical fragments of different binaries into ``shared/``.

    *files* is ``{relative path: text}``, every generated file of the tree at
    *out_dir* (which holds only the hand-owned ones); *tables* is the binaries'
    symbol tables (:func:`lib.symtab.project_tables`).  A routine with
    generated source moves its ``.c`` or ``.s`` along (``shared/<label>.c``).
    Returns
    ``(files, shared)``: the tree's files after sharing, and ``{shared relative
    path: [replaced relative paths]}``.
    """
    files = dict(files)
    fragments = _fragments(files, out_dir)
    groups = defaultdict(list)
    for rel, (text, ctext) in fragments.items():
        groups[(_shared_base(rel), ctext)].append(rel)

    # Names carry a content tag (lib.names), so one stem is one body.  Where a
    # stem still has several (a label that differs only in which generic
    # routine it calls), the largest group is shared and the rest stay.
    best = {}
    for key in sorted(groups, key=repr):
        for members, binds in _clusters(fragments, groups[key], key[1],
                                        tables):
            if len({p.split('/')[0] for p in members}) < 2:
                continue
            stem = key[0]           # the shared base: one per object
            if stem not in best or len(members) > len(best[stem][0]):
                best[stem] = (members, binds, key[1])

    shared, bindings = {}, {}
    for stem, (members, binds, ctext) in best.items():
        members = sorted(members)
        shared_rel = f'{stem}.asm'
        text = _text_for(fragments, members)
        if binds:
            text = _common_names(neutral(fragments[members[0]][0]),
                                 binds[members[0]])
            defined = set(re.findall(r'^([\w.]+):', text, re.M))
            for rel, pairs in binds.items():
                bindings[rel] = [(p, n, p in defined) for p, n in pairs]
        files[shared_rel] = text
        if ctext is not None:
            c_rel = shared_rel[:-4] + ctext[0]
            if c_rel not in files and not _on_disk(out_dir, c_rel):
                files[c_rel] = ctext[1]
        shared[shared_rel] = members

    _place_equs(files, out_dir)
    _rewrite_includes(files, shared, bindings)
    for members in shared.values():
        for rel in members:
            files.pop(rel, None)
            for suffix in SUFFIXES:
                files.pop(rel[:-4] + suffix, None)
    return files, shared


def share_identical(out_dir):
    """:func:`share_files` over the generated files already written at *out_dir*.

    Returns ``{shared relative path: [replaced relative paths]}``.
    """
    before = {}
    for folder, dirs, names in os.walk(out_dir):
        dirs[:] = [d for d in dirs if d != 'build_out']
        for filename in names:
            path = os.path.join(folder, filename)
            if filename.endswith(('.asm',) + SUFFIXES) \
                    and is_generated(path):
                before[os.path.relpath(path, out_dir)] = _read(path)
    project = project_of_src_dir(out_dir)
    tables = project_tables(project) if project else {}
    after, shared = share_files(before, out_dir, tables)
    for rel, text in after.items():
        if before.get(rel) != text:
            path = os.path.join(out_dir, rel)
            os.makedirs(os.path.dirname(path), exist_ok=True)
            with open(path, 'w', encoding='utf-8',
                      errors='surrogateescape') as f:
                f.write(text)
    for rel in set(before) - set(after):
        path = os.path.join(out_dir, rel)
        os.unlink(path)
        folder = os.path.dirname(path)
        while folder != out_dir and not os.listdir(folder):
            os.rmdir(folder)
            folder = os.path.dirname(folder)
    return shared


def _rewrite_includes(files, shared, bindings):
    """Point each master's (and fragment's) ``%include`` at the shared copy.

    A copy with *bindings* (``{rel: [(common, own, defined)]}``) gets its
    aliases just above that include: ``common equ own`` for a name the
    routine uses, ``own equ common`` for a label it defines (the rest of the
    binary still calls it by its own name).  An ``equ`` assembles no bytes.
    """
    moved = {rel: dst for dst, members in shared.items() for rel in members}
    pattern = re.compile(r'^([ \t]*)(%include\s+")([^"]+)(")', re.M)

    def swap(m):
        indent, rel = m.group(1), m.group(3)
        return (_aliases(bindings.get(rel, ()), indent) + indent + m.group(2)
                + moved.get(rel, rel) + m.group(4))

    for rel, text in list(files.items()):
        if not rel.endswith('.asm') or {'build_out', 'inc'} & set(
                rel.split('/')[:-1]):
            continue
        files[rel] = pattern.sub(swap, text)


_EQU = re.compile(r'^([A-Za-z_][\w.]*)[ \t]+equ[ \t]+(.*?)[ \t]*$')
_INCLUDE = re.compile(r'^[ \t]*%include\s+"([^"]+)"')


def _is_header(path):
    """An include that is part of the master's header, not a routine."""
    from lib.compare.render import HOST_SYMBOLS_INC
    return path.startswith('inc/') or path == HOST_SYMBOLS_INC


def _place_equs(files, out_dir):
    """Move each master's header ``equ``s down to the includes that use them.

    Every ``%include`` gets the header names its file uses: live above the
    first one, commented above the rest (a name is defined once), so each
    include shows what it depends on.  A name no include uses (the master's
    own lines, or the overlays through ``host_symbols.inc``) stays on top.
    """
    tops = {rel.split('/', 1)[0] for rel in files if '/' in rel}

    def text_of(rel):
        if rel in files:
            return files[rel]
        if _on_disk(out_dir, rel):
            return _read(os.path.join(out_dir, rel))
        return None

    for master in sorted(files):
        binary = master[:-4]
        if ('/' in master or not master.endswith('.asm')
                or binary in _SKIP_DIRS
                or not (binary in tops
                        or os.path.isdir(os.path.join(out_dir, binary)))):
            continue
        lines = files[master].split('\n')
        header, depth = {}, 0
        for i, line in enumerate(lines):
            include = _INCLUDE.match(line)
            if include and not _is_header(include.group(1)):
                break
            if line.startswith('%if'):
                depth += 1
            elif line.startswith('%endif'):
                depth -= 1
            elif depth == 0 and (m := _EQU.match(line)):
                header[m.group(1)] = (i, m.group(2))
        if not header:
            continue
        uses, seen = {}, set()
        for i, line in enumerate(lines):
            include = _INCLUDE.match(line)
            if not include or _is_header(include.group(1)):
                continue
            target = text_of(include.group(1))
            if target is None:
                continue
            names = set(_SYMBOL.findall(_code_key(target))) & header.keys()
            if names:
                uses[i] = [(n, n in seen) for n in
                           sorted(names, key=lambda n: header[n][0])]
                seen |= names
        if not uses:
            continue
        moved = {header[n][0] for n in seen}
        out = []
        for i, line in enumerate(lines):
            if i in moved:
                continue
            if i in uses:
                width = max(len(n) for n, _ in uses[i])
                out += [f'{"; " if done else ""}{n:<{width}} equ {header[n][1]}'
                        for n, done in uses[i]]
            out.append(line)
        files[master] = '\n'.join(out)


def _aliases(pairs, indent=''):
    """The aligned ``equ`` lines for one shared copy's bindings."""
    rows = [(own, common) if defined else (common, own)
            for common, own, defined in pairs]
    if not rows:
        return ''
    width = max(len(a) for a, _ in rows)
    return ''.join(f'{indent}{a:<{width}} equ {b}\n' for a, b in rows)
