"""Share byte-identical routines between binaries under ``asm_<project>/shared/``.

The same vendor runtime routine (``aztec_strlen``) or overlay API stub is
emitted once per binary that contains it.  Where the instructions are identical
(comments and the routine's own address annotations aside) the copies collapse
into one file in ``shared/`` that every binary's master ``%include``s.

Only generated files are touched (see :mod:`lib.autogen`).  A routine with C
shares its ``.c`` too, when every copy is generated and identical:
``shared/<label>.c`` is then the one source the C gate checks against each
binary's bytes (``main.aztec`` and ``make.elf`` look there).

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

from .autogen import is_generated
from .asm_only import MARKER as ASM_ONLY_MARKER
from .cachedirs import project_of_asm_dir
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


def _fragments(out_dir):
    """``{relative path: (asm text, C text or None)}`` of generated fragments.

    The C text is the ``.c`` beside the fragment, else ``shared/<label>.c`` (a
    shared or hand-owned copy).  A fragment whose own ``.c`` was taken over by
    hand (no auto-generated marker) is left out: it is not ours to move.
    """
    found = {}
    for binary in sorted(os.listdir(out_dir)):
        top = os.path.join(out_dir, binary)
        if binary in _SKIP_DIRS or not os.path.isdir(top):
            continue
        for folder, _, files in os.walk(top):
            for filename in sorted(files):
                path = os.path.join(folder, filename)
                if not filename.endswith('.asm') or not is_generated(path):
                    continue
                own_c, shared_c = path[:-4] + '.c', os.path.join(
                    out_dir, FOLDER, filename[:-4] + '.c')
                ctext = None
                if os.path.exists(own_c):
                    if not is_generated(own_c):
                        continue
                    ctext = _read(own_c)
                elif os.path.exists(shared_c):
                    ctext = _read(shared_c)
                found[os.path.relpath(path, out_dir)] = (_read(path), ctext)
    return found


def share_identical(out_dir):
    """Collapse identical fragments of different binaries into ``shared/``.

    A routine with generated C moves its ``.c`` along (``shared/<label>.c``).
    Returns ``{shared relative path: [replaced relative paths]}``.
    """
    fragments = _fragments(out_dir)
    project = project_of_asm_dir(out_dir)
    tables = project_tables(project) if project else {}
    groups = defaultdict(list)
    for rel, (text, ctext) in fragments.items():
        stem = os.path.basename(rel)[:-4]
        marked = text.split('\n', 2)[1:2] == [ASM_ONLY_MARKER]
        groups[(stem, marked, ctext)].append(rel)

    # Names carry a content tag (lib.names), so one stem is one body.  Where a
    # stem still has several (a label that differs only in which generic
    # routine it calls), the largest group is shared and the rest stay.
    best = {}
    for key in sorted(groups, key=repr):
        for members, binds in _clusters(fragments, groups[key], key[2],
                                        tables):
            if len({p.split(os.sep)[0] for p in members}) < 2:
                continue
            stem = key[0]
            if stem not in best or len(members) > len(best[stem][0]):
                best[stem] = (members, binds, key[2])

    shared, bindings = {}, {}
    for stem, (members, binds, ctext) in best.items():
        members = sorted(members)
        shared_rel = f'{FOLDER}/{stem}.asm'
        shared_path = os.path.join(out_dir, shared_rel)
        os.makedirs(os.path.dirname(shared_path), exist_ok=True)
        text = _text_for(fragments, members)
        if binds:
            text = _common_names(neutral(fragments[members[0]][0]),
                                 binds[members[0]])
            defined = set(re.findall(r'^([\w.]+):', text, re.M))
            for rel, pairs in binds.items():
                bindings[rel] = [(p, n, p in defined) for p, n in pairs]
        with open(shared_path, 'w', encoding='utf-8',
                  errors='surrogateescape') as f:
            f.write(text)
        if ctext is not None:
            c_path = shared_path[:-4] + '.c'
            if not os.path.exists(c_path):
                with open(c_path, 'w', encoding='utf-8',
                          errors='surrogateescape') as f:
                    f.write(ctext)
        shared[shared_rel] = members

    _place_equs(out_dir)
    _rewrite_includes(out_dir, shared, bindings)
    for members in shared.values():
        for rel in members:
            for old in (rel, rel[:-4] + '.c'):
                path = os.path.join(out_dir, old)
                if os.path.exists(path):
                    os.unlink(path)
            folder = os.path.dirname(os.path.join(out_dir, rel))
            while folder != out_dir and not os.listdir(folder):
                os.rmdir(folder)
                folder = os.path.dirname(folder)
    return shared


def _rewrite_includes(out_dir, shared, bindings):
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

    for folder, dirs, files in os.walk(out_dir):
        dirs[:] = [d for d in dirs if d not in ('build_out', 'inc')]
        for filename in files:
            path = os.path.join(folder, filename)
            if not filename.endswith('.asm') or not is_generated(path):
                continue
            with open(path, encoding='utf-8', errors='surrogateescape') as f:
                text = f.read()
            new = pattern.sub(swap, text)
            if new != text:
                with open(path, 'w', encoding='utf-8',
                          errors='surrogateescape') as f:
                    f.write(new)


_EQU = re.compile(r'^([A-Za-z_][\w.]*)[ \t]+equ[ \t]+(.*?)[ \t]*$')
_INCLUDE = re.compile(r'^[ \t]*%include\s+"([^"]+)"')


def _place_equs(out_dir):
    """Move each master's header ``equ``s down to the includes that use them.

    Every ``%include`` gets the header names its file uses: live above the
    first one, commented above the rest (a name is defined once), so each
    include shows what it depends on.  A name no include uses (the master's
    own lines, or the overlays through ``host_symbols.inc``) stays on top.
    """
    for binary in sorted(os.listdir(out_dir)):
        path = os.path.join(out_dir, f'{binary}.asm')
        if (binary in _SKIP_DIRS or not os.path.isdir(os.path.join(out_dir, binary))
                or not os.path.exists(path) or not is_generated(path)):
            continue
        lines = _read(path).split('\n')
        header, depth = {}, 0
        for i, line in enumerate(lines):
            include = _INCLUDE.match(line)
            if include and not include.group(1).startswith('inc/'):
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
            target = include and os.path.join(out_dir, include.group(1))
            if not target or include.group(1).startswith('inc/') \
                    or not os.path.exists(target):
                continue
            names = set(_SYMBOL.findall(_code_key(_read(target)))) & header.keys()
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
        with open(path, 'w', encoding='utf-8', errors='surrogateescape') as f:
            f.write('\n'.join(out))


def _aliases(pairs, indent=''):
    """The aligned ``equ`` lines for one shared copy's bindings."""
    rows = [(own, common) if defined else (common, own)
            for common, own, defined in pairs]
    if not rows:
        return ''
    width = max(len(a) for a, _ in rows)
    return ''.join(f'{indent}{a:<{width}} equ {b}\n' for a, b in rows)
