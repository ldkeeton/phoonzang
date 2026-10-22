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

The routine's own label is one of those names: copies whose content tags differ
(``api_idx_0012_RMOL`` here, ``api_idx_0012_STJU`` there) still share when
their code agrees.  The shared file takes the name most copies carry, and each
other copy's label is an ``equ`` of it.  Data shares only under one name.

The files sit in band folders, as a banded binary's do (``ds/game/``,
:mod:`lib.sidecar.bands`), though by what the code is rather than where it
was linked: ``shared/aztec/`` the C library, ``shared/game/`` compiled C,
``shared/library/`` assembly, ``shared/data/`` data.  Where the binaries
holding a routine's copies have sidecar bands and put every copy in the same
one, the file goes in that band's folder instead: beneath its kind's when
the band is no kind (an overlay's ``party`` band: ``shared/game/party/``).  A hand-owned
source is found in ``shared/`` or any folder beneath it.
"""

import os
import re
from collections import defaultdict

from .autogen import hand_owned, is_generated
from .cachedirs import project_of_src_dir
from .routine_source import SUFFIXES, beside
from .sidecar.bands import BAND_NAMES, band_for, parse_bands
from .sidecar.errors import SidecarError
from .sidecar.loader import load as load_sidecar
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


def _stem(rel):
    return os.path.basename(rel)[:-4]


def _generic(sym):
    """True for a content-tagged name (or one the table lacks)."""
    return sym is None or sym.generic


def _hosts(tables):
    """The binaries whose symbols every overlay sees: their generic names
    carry a prefix (``ds_loc_08f2``, :func:`lib.names.rename_generics`)."""
    return {b for b, table in tables.items()
            if any(getattr(sym, 'prefix', '') == f'{b}_'
                   for sym in table.values())}


def _shape(rel, text, tables):
    """The code with every name its binary has a symbol for numbered in order
    of use, and its own label as one: copies :func:`_bind` may fold agree."""
    names = tables.get(_binary(rel), {})
    own, seen, out = _stem(rel), {}, []
    for token in _TOKEN.findall(_code_key(text)):
        if token == own:
            token = '\0self'
        elif token in names:
            token = seen.setdefault(token, f'\0{len(seen)}')
        out.append(token)
    return ' '.join(out)


def _buckets(fragments, tables):
    """``[(source, rels)]``: the copies that may share a file.

    A copy is a candidate with every copy of its name (:func:`_shared_base`)
    and, when it is code without a source, with every such copy of the same
    :func:`_shape` whatever its name, unless it is the host's.
    """
    keys, hosts = {}, _hosts(tables)
    for rel, (text, ctext) in fragments.items():
        base = _shared_base(rel)
        keys[rel] = [(base, ctext)]
        # A host's copy under an overlay's name would define it twice in
        # that overlay, which sees the host's symbols.
        if (ctext is None and not base.startswith(f'{FOLDER}/data/')
                and _binary(rel) not in hosts):
            keys[rel].append(('shape', _shape(rel, text, tables)))
    parent = {}

    def find(x):
        while parent.setdefault(x, x) != x:
            parent[x] = x = parent[parent[x]]
        return x

    for rel, ks in keys.items():
        for key in ks:
            parent[find(key)] = find(('rel', rel))
    out = defaultdict(list)
    for rel in sorted(fragments):
        out[find(('rel', rel))].append(rel)
    return sorted(((fragments[rels[0]][1], rels) for rels in out.values()),
                  key=repr)


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
    owns = [_stem(rel) for rel in rels]
    hosts = [tables[b] for b in _hosts(tables)]
    for own, table in zip(owns, names):
        if own != stem and (any(stem in t for t in [table] + hosts)
                            or not _generic(table.get(own))):
            # The shared name is another symbol of that binary (or of the
            # host every overlay sees), or this copy's own name is a
            # person's, not to be made an alias.
            return None
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
        if token == owns[0]:
            first[token] = stem
        elif token not in first:
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
    return {rel: [(p, name) for name, p in params.items() if p != name]
            for rel, params in zip(rels, maps)}


def _clusters(fragments, rels, ctext, tables):
    """``(shared base, group, bindings)`` for each group of *rels* that can
    share one file.

    Copies with C must be identical: each binary's resplice rewrites the shared
    asm from that C.  Without C, copies that differ only in the names they use
    share one file that spells those names by common ones (:func:`_bind`).
    A group is named after a person's name if a copy has one, else the name
    most copies carry (the first, on a tie), and takes those copies first.  A
    binary includes one copy: two would define the label twice.
    """
    left = sorted(rels)
    while left:
        count = defaultdict(int)
        for rel in left:
            count[_stem(rel)] += 1

        def rank(rel):
            sym = tables.get(_binary(rel), {}).get(_stem(rel))
            return (_generic(sym), -count[_stem(rel)], _stem(rel), rel)

        order = sorted(left, key=rank)
        stem = _stem(order[0])
        group, binds = [order[0]], {}
        for rel in order[1:]:
            if _binary(rel) in {_binary(g) for g in group}:
                continue
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
        yield _shared_base(order[0]), group, binds


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


def shared_dirs(out_dir):
    """``shared/`` and every band folder beneath it (``data/`` aside): where
    a shared routine's files are."""
    root = os.path.join(out_dir, FOLDER)
    dirs = [root] + [os.path.join(root, band) for band in BAND_NAMES]
    for folder, subdirs, _ in os.walk(root):
        if folder == root:
            subdirs[:] = [d for d in subdirs if d != 'data']
        dirs += sorted(os.path.join(folder, d) for d in subdirs)
    return list(dict.fromkeys(dirs))


def _homes(base, bands=()):
    """The paths (no suffix) a shared source of *base* may have: in a kind's
    band folder or one of the *bands* (names) the sidecar declares."""
    stem = os.path.basename(base)
    if base.startswith(f'{FOLDER}/data/'):
        return [base]
    names = dict.fromkeys([*BAND_NAMES, *sorted(bands)] + [
        f'{kind}/{band}' for band in sorted(bands) for kind in BAND_NAMES])
    return [f'{FOLDER}/{band}/{stem}' for band in names] + [base]


def project_bands(sidecar):
    """``{binary: [(start, end, name)]}``: each binary's sidecar ``bands``."""
    return {binary: parse_bands(info['bands'])
            for binary, info in ((sidecar or {}).get('binaries') or {}).items()
            if info.get('bands')}


def _band(rel, text, ctext, tables):
    """The band folder of *rel*'s shared file: ``aztec`` for the C library
    (a vendor match), ``game`` for compiled C (a ``csav`` frame, a ``.c``),
    ``library`` for the rest, hand assembly."""
    stem = _stem(rel)
    sym = tables.get(_binary(rel), {}).get(stem)
    if getattr(sym, 'role', None) == 'aztec' or stem.startswith('aztec_'):
        return 'aztec'
    if (ctext is not None and ctext[0] == '.c') or re.search(
            r'^\s*call\s+(?:near\s+)?aztec_csav\b', text, re.M):
        return 'game'
    return 'library'


def _shared_base(rel):
    """``shared/<stem>``, or ``shared/data/<stem>`` for a data object's file
    (``vinstall/data/ctp_.asm``): data shares only with data."""
    stem = os.path.basename(rel)[:-4]
    if os.path.basename(os.path.dirname(rel)) == 'data':
        return f'{FOLDER}/data/{stem}'
    return f'{FOLDER}/{stem}'


def _fragments(files, out_dir, bands=()):
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

    def shared_source(base, where):
        for home in _homes(base, bands):
            path, suffix = source(home, where)
            if path:
                return path, suffix
        return None, None

    found = {}
    for rel in sorted(files):
        top, sep, _ = rel.partition('/')
        if not sep or top in _SKIP_DIRS or not rel.endswith('.asm'):
            continue
        own, own_suffix = source(rel[:-4], files.__contains__)
        shared_base = _shared_base(rel)
        shared, shared_suffix = shared_source(shared_base,
                                              files.__contains__)
        if own:
            ctext = (own_suffix, files[own])
        elif source(rel[:-4], lambda p: _on_disk(out_dir, p))[0]:
            continue
        elif shared:
            ctext = (shared_suffix, files[shared])
        else:
            path, suffix = shared_source(shared_base,
                                         lambda p: _on_disk(out_dir, p))
            ctext = (suffix, _read(os.path.join(out_dir, path))) if path \
                else None
        found[rel] = (files[rel], ctext)
    return found


def share_files(files, out_dir, tables, bands=None):
    """Collapse identical fragments of different binaries into ``shared/``.

    *files* is ``{relative path: text}``, every generated file of the tree at
    *out_dir* (which holds only the hand-owned ones); *tables* is the binaries'
    symbol tables (:func:`lib.symtab.project_tables`); *bands* is the
    binaries' sidecar bands (:func:`project_bands`): a routine whose copies
    all put in one band goes in its folder, beneath the kind's folder when
    the band names no kind (``party``: ``shared/game/party/``), else in the
    folder of the kind of code it is (:func:`_band`).  A routine with
    generated source moves its ``.c`` or ``.s`` along
    (``shared/game/<label>.c``).
    Returns
    ``(files, shared)``: the tree's files after sharing, and ``{shared relative
    path: [replaced relative paths]}``.
    """
    files = dict(files)
    bands = bands or {}
    names = {band[2] for ranges in bands.values() for band in ranges}
    offsets = _include_offsets(files)
    fragments = _fragments(files, out_dir, names)

    # Names carry a content tag (lib.names), so one stem is mostly one body.
    # Where a stem still has several (a label that differs only in which
    # generic routine it calls), the largest group is shared and the rest stay.
    best = {}
    for ctext, rels in _buckets(fragments, tables):
        for base, members, binds in _clusters(fragments, rels, ctext, tables):
            if len({p.split('/')[0] for p in members}) < 2:
                continue
            if base not in best or len(members) > len(best[base][0]):
                best[base] = (members, binds, ctext)

    shared, bindings = {}, {}
    for base, (members, binds, ctext) in best.items():
        members = sorted(members)
        # The copy that carries the shared name: the text is spelled after it,
        # so its local labels (``@..<stem>.l1``) read as the file's own.
        source = next((rel for rel in members
                       if _stem(rel) == os.path.basename(base)), members[0])
        stem = os.path.basename(base)
        if base.startswith(f'{FOLDER}/data/'):
            home = base
        else:
            kind = _band(source, fragments[source][0], ctext, tables)
            band = _host_band(stem, members, offsets, bands)
            if band and band.split('/')[0] not in BAND_NAMES:
                band = f'{kind}/{band}'     # a module beneath its kind
            home = f'{FOLDER}/{band or kind}/{stem}'
        shared_rel = f'{home}.asm'
        text = _text_for(fragments, members)
        if binds:
            text = _common_names(neutral(fragments[source][0]),
                                 binds[source])
            defined = set(re.findall(r'^([\w.]+):', text, re.M))
            for rel, pairs in binds.items():
                bindings[rel] = [(p, n, p in defined) for p, n in pairs]
        files[shared_rel] = text
        if ctext is not None:
            # One source: a hand-owned one wherever it is, else ours in the
            # band folder (an earlier build's elsewhere goes).
            homes = [h + suffix for h in _homes(base, names)
                     for suffix in SUFFIXES]
            if not any(_on_disk(out_dir, path) for path in homes):
                for path in homes:
                    files.pop(path, None)
                files[shared_rel[:-4] + ctext[0]] = ctext[1]
        shared[shared_rel] = members

    _place_equs(files, out_dir)
    _rewrite_includes(files, shared, bindings)
    for members in shared.values():
        for rel in members:
            files.pop(rel, None)
            for suffix in SUFFIXES:
                files.pop(rel[:-4] + suffix, None)
    return files, shared


_PLACED = re.compile(r'^%include "([^"]+)"\s*;\s*0x([0-9a-fA-F]+)', re.M)


def _include_offsets(files):
    """``{relative path: offset}``: where each master (``vpops.asm``) puts
    the fragments it includes."""
    offsets = {}
    for rel, text in files.items():
        if '/' not in rel and rel.endswith('.asm'):
            for path, offset in _PLACED.findall(text):
                offsets.setdefault(path, int(offset, 16))
    return offsets


def _host_band(stem, members, offsets, bands):
    """The band the banded binaries put *members*' copies in, or None when
    none of them has bands or they put the copies in different bands (a
    routine the link order does not tie to one module)."""
    found = set()
    for rel in members:
        ranges = bands.get(_binary(rel))
        if ranges:
            band = band_for(ranges, offsets.get(rel, -1))
            if band is None:
                raise SidecarError(f'{rel}: 0x{offsets.get(rel, -1):x} is in '
                                   f'no sidecar band of {_binary(rel)}')
            found.add(band[2])
    return found.pop() if len(found) == 1 else None


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
    bands = project_bands(load_sidecar(project)) if project else {}
    after, shared = share_files(before, out_dir, tables, bands)
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
