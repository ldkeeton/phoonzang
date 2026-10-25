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
``shared/library/`` assembly, ``shared/data/`` data.  A hand-owned source is
found in ``shared/`` or any of them.
"""

import os
import re
from collections import defaultdict
from dataclasses import dataclass

from .autogen import MARKER_ASM, MARKER_C, hand_owned, is_generated, stamp
from .cachedirs import project_of_src_dir
from .routine_source import SUFFIXES, beside
from .sidecar.bands import BAND_NAMES
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
    :func:`_shape` whatever its name, unless it is the host's or a lone
    ``ret`` (:func:`_is_bare_return`).  A copy with a hand-written source
    keeps those source-less copies, so writing the source never splits the
    file they shared; two hand sources of one shape stay apart.
    """
    keys, hosts = {}, _hosts(tables)
    shapes = {}
    for rel, (text, ctext) in fragments.items():
        if binary_local(rel):
            keys[rel] = []
            continue
        base = _shared_base(rel)
        keys[rel] = [(base, ctext)]
        # A host's copy under an overlay's name would define it twice in
        # that overlay, which sees the host's symbols.
        if (not base.startswith(f'{FOLDER}/data/')
                and _binary(rel) not in hosts and not _is_bare_return(text)
                and (ctext is None or not _generated_source(ctext))):
            shapes[rel] = _shape(rel, text, tables)
    hand = defaultdict(set)
    for rel, shape in shapes.items():
        if fragments[rel][1] is not None:
            hand[shape].add(fragments[rel][1])
    for rel, shape in shapes.items():
        if fragments[rel][1] is None or len(hand[shape]) == 1:
            keys[rel].append(('shape', shape))
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
    # A bucket's source is its one member's that has one (_shared_base ties
    # same-named copies to one source; the shape key admits only one more).
    return sorted(((next((fragments[r][1] for r in rels
                          if fragments[r][1] is not None), None), rels)
                   for rels in out.values()), key=repr)


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

    Copies with generated C must be identical: each binary's resplice
    rewrites the shared asm from that C.  Without C, copies that differ only
    in the names they use share one file that spells those names by common
    ones (:func:`_bind`).  So do copies of a hand-written source: its resplice
    spells each binary's own names by the common ones
    (:func:`include_aliases`).
    A group is named after a person's name if a copy has one, else the name
    most copies carry (the first, on a tie), and takes those copies first.  A
    binary includes one copy: two would define the label twice.
    """
    left = sorted(rels)
    while left:
        count = defaultdict(int)
        for rel in left:
            count[_stem(rel)] += 1

        # The copy that owns the source names the group: the shared file
        # must sit beside that source under its name.
        def rank(rel):
            sym = tables.get(_binary(rel), {}).get(_stem(rel))
            return (fragments[rel][1] is None, _generic(sym),
                    -count[_stem(rel)], _stem(rel), rel)

        order = sorted(left, key=rank)
        stem = _stem(order[0])
        group, binds = [order[0]], {}
        for rel in order[1:]:
            if _binary(rel) in {_binary(g) for g in group}:
                continue
            if ctext is not None and _generated_source(ctext):
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


def _generated_source(ctext):
    """True when the ``(suffix, text)`` source is a generated seed."""
    first = ctext[1].split('\n', 1)[0].rstrip()
    return first in (MARKER_ASM, MARKER_C)


def include_aliases(master, rel):
    """``[(common, own)]``: the ``equ`` aliases *master* gives the shared file
    *rel* just above its ``%include`` (:func:`_rewrite_includes`)."""
    stem = re.escape(os.path.basename(rel)[:-4])
    common = re.compile(rf'{stem}(\.\w+)?$')
    lines = master.split('\n')
    for i, line in enumerate(lines):
        include = _INCLUDE.match(line)
        if not include or include.group(1) != rel:
            continue
        pairs = []
        for above in reversed(lines[:i]):
            m = _EQU.match(above)
            if not m:
                break
            a, b = m.group(1), m.group(2)
            if common.match(a):
                pairs.append((a, b))
            elif common.match(b):
                pairs.append((b, a))
        return pairs
    return []


def is_shared(out_dir, label):
    """Whether routine *label*'s source lives in ``shared/``.

    A shared source may call a target another binary spells differently, so
    its link reads the target from the original instruction
    (:func:`lib.aztec.relink.link`'s *resolve_by_address*).
    """
    for folder in shared_dirs(out_dir):
        path = os.path.join(folder, f'{label}.asm')
        # The source names the file before a rename's build writes its .asm.
        if os.path.isfile(path) or beside(path[:-4]):
            return True
    return False


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
    """``shared/`` and its band folders: where a shared routine's files are."""
    root = os.path.join(out_dir, FOLDER)
    return [root] + [os.path.join(root, band) for band in BAND_NAMES]


def _homes(base):
    """The paths (no suffix) a shared source of *base* may have."""
    stem = os.path.basename(base)
    if base.startswith(f'{FOLDER}/data/'):
        return [base]
    return [f'{FOLDER}/{band}/{stem}' for band in BAND_NAMES] + [base]


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


#: A data file named for its address (``vmele/data/dseg_9098.asm``,
#: :func:`lib.compare.splitting._select_leftover_data_ranges`): one address in
#: two programs is two objects, so it is its binary's own and never shared.
_ADDRESS_DATA = re.compile(r'(?:dseg|cseg|str|cp)_[0-9a-f]{4,5}')


def binary_local(rel):
    """True for a data file named for its address (:data:`_ADDRESS_DATA`)."""
    return (os.path.basename(os.path.dirname(rel)) == 'data'
            and _ADDRESS_DATA.fullmatch(_stem(rel)) is not None)


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

    def shared_source(base, where):
        for home in _homes(base):
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


def share_files(files, out_dir, tables):
    """Collapse identical fragments of different binaries into ``shared/``.

    *files* is ``{relative path: text}``, every generated file of the tree at
    *out_dir* (which holds only the hand-owned ones); *tables* is the binaries'
    symbol tables (:func:`lib.symtab.project_tables`).  A routine with
    generated source moves its ``.c`` or ``.s`` along
    (``shared/game/<label>.c``).
    Returns
    ``(files, shared)``: the tree's files after sharing, and ``{shared relative
    path: [replaced relative paths]}``.
    """
    files = dict(files)
    fragments = _fragments(files, out_dir)

    # Names carry a content tag (lib.names), so one stem is mostly one body.
    # Where a stem still has several (a label that differs only in which
    # generic routine it calls), the largest group is shared and the rest stay.
    best = {}
    for ctext, rels in _buckets(fragments, tables):
        for base, members, binds in _clusters(fragments, rels, ctext, tables):
            if len({p.split('/')[0] for p in members}) < 2:
                continue
            # A group takes only its own members' source: another group of
            # the same shape may sit in the bucket of a hand source it did
            # not join (_bind refuses two people's names).
            own = next((fragments[r][1] for r in members
                        if fragments[r][1] is not None), None)
            if base not in best or len(members) > len(best[base][0]):
                best[base] = (members, binds, own)

    shared, bindings = {}, {}
    for base, (members, binds, ctext) in best.items():
        members = sorted(members)
        # The copy that carries the shared name: the text is spelled after it,
        # so its local labels (``@..<stem>.l1``) read as the file's own.
        source = next((rel for rel in members
                       if _stem(rel) == os.path.basename(base)), members[0])
        home = base if base.startswith(f'{FOLDER}/data/') else (
            f'{FOLDER}/{_band(source, fragments[source][0], ctext, tables)}/'
            f'{os.path.basename(base)}')
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
            homes = [h + suffix for h in _homes(base) for suffix in SUFFIXES]
            if not any(_on_disk(out_dir, path) for path in homes):
                for path in homes:
                    files.pop(path, None)
                files[shared_rel[:-4] + ctext[0]] = ctext[1]
        shared[shared_rel] = members

    _apply(files, shared, bindings, out_dir)
    return files, shared


def _apply(files, shared, bindings, out_dir):
    """Point the masters at the *shared* files and drop the copies they
    replace (with their sources) from *files*."""
    _place_equs(files, out_dir)
    _rewrite_includes(files, shared, bindings)
    for members in shared.values():
        for rel in members:
            files.pop(rel, None)
            for suffix in SUFFIXES:
                files.pop(rel[:-4] + suffix, None)


def reshare_partial(files, out_dir):
    """:func:`share_files` for a partial build, from the tree.

    *files* holds only what the partial build emitted -- the binary built and
    the sources it references -- so the other binaries' fragments are not
    there to compare against.  The last full build's decisions are: each
    binary's master on disk includes each routine it shared from ``shared/``
    (with its aliases just above, :func:`include_aliases`).  For every master
    in *files*, each such routine whose new copy still matches the shared file
    goes back there; one that changed keeps its own copy until a full build
    re-decides.  Returns ``(files, shared, diverged)``, *diverged* the
    ``(binary, shared file)`` pairs whose copy no longer matches.
    """
    files = dict(files)
    shared, bindings, diverged = {}, {}, []
    for master in sorted(files):
        binary = master[:-4]
        if '/' in master or not master.endswith('.asm') or binary in _SKIP_DIRS:
            continue
        try:
            old = _read(os.path.join(out_dir, master))
        except OSError:
            continue
        new_includes = [m.group(1) for m in map(_INCLUDE.match,
                                                files[master].split('\n'))
                        if m and _binary(m.group(1)) == binary]
        done = set()
        for line in old.split('\n'):
            include = _INCLUDE.match(line)
            if not include or _binary(include.group(1)) != FOLDER:
                continue
            shared_rel = include.group(1)
            path = os.path.join(out_dir, shared_rel)
            if shared_rel in done or not is_generated(path):
                continue
            done.add(shared_rel)
            stem = _stem(shared_rel)
            # Read upward from the include: put them back in the master's order.
            pairs = include_aliases(old, shared_rel)[::-1]
            own = next((o for c, o in pairs if c == stem), stem)
            rels = [rel for rel in new_includes if _stem(rel) == own]
            text = _read(path)
            if len(rels) != 1 or not _still_shared(files, out_dir, rels[0],
                                                   shared_rel, text, pairs):
                diverged.append((binary, shared_rel))
                continue
            defined = set(re.findall(r'^([\w.]+):', text, re.M))
            shared.setdefault(shared_rel, []).append(rels[0])
            bindings[rels[0]] = [(c, o, c in defined) for c, o in pairs]
    _apply(files, shared, bindings, out_dir)
    return files, shared, diverged


def _still_shared(files, out_dir, rel, shared_rel, text, pairs):
    """True when *rel*, spelled with the common names *pairs* give, is the
    shared file *text*, and its source (if it has one) is the shared one."""
    if rel not in files or beside(rel[:-4], lambda p: _on_disk(out_dir, p)):
        return False
    if _code_key(_common_names(files[rel], pairs)) != _code_key(text):
        return False
    own = beside(rel[:-4], files.__contains__)
    if own is None:
        return True
    theirs = beside(os.path.join(out_dir, shared_rel[:-4]))
    if theirs is None or not theirs.endswith(own[len(rel) - 4:]):
        return False
    return stamp(files[own], own) == _read(theirs)


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
    from lib.record_layout import STRUCTS_INC
    return path.startswith('inc/') or path in (HOST_SYMBOLS_INC, STRUCTS_INC)


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


# ---------------------------------------------------------------------------
# Unmerged-fragment audit
#
# The merger above only collapses copies it can spell identically (or alias by
# a name both symbol tables know).  This audit is deliberately more aggressive:
# it masks every label and every address-like memory displacement, so it names
# the copies that *could* share once their labels are made to agree.  It is a
# test-only check (``tests/test_unmerged.py``); the build is untouched.
# ---------------------------------------------------------------------------

#: A quoted string, a local label, an identifier, a number, or punctuation.
_MASK_TOKEN = re.compile(
    r"'(?:[^'\\]|\\.)*'"
    r'|"(?:[^"\\]|\\.)*"'
    r'|@[A-Za-z0-9_.@]*'
    r'|[A-Za-z_][\w.]*'
    r'|0[xX][0-9a-fA-F]+'
    r'|\d+'
    r'|\S')

_LABEL_DEF = re.compile(r'^([@A-Za-z_][\w.@]*):\s*(.*)$')

#: Registers never become symbols; memory addresses are only masked when the
#: bracketed operand is not stack-relative.
_REGISTERS = frozenset({
    'al', 'ah', 'ax', 'bl', 'bh', 'bx', 'cl', 'ch', 'cx', 'dl', 'dh', 'dx',
    'sil', 'spl', 'bpl', 'dil', 'si', 'di', 'sp', 'bp', 'esi', 'edi', 'esp',
    'ebp', 'eax', 'ebx', 'ecx', 'edx', 'cs', 'ds', 'es', 'ss', 'fs', 'gs',
})
_ADDRESS_REGS = frozenset({
    'ax', 'bx', 'cx', 'dx', 'si', 'di', 'bp', 'sp',
    'eax', 'ebx', 'ecx', 'edx', 'esi', 'edi', 'ebp', 'esp',
})
_STACK_REGS = frozenset({'bp', 'sp', 'ebp', 'esp'})

_KEYWORDS = frozenset({
    'byte', 'word', 'dword', 'qword', 'short', 'near', 'far', 'ptr',
    'offset', 'strict', 'rel', 'abs', 'equ', 'db', 'dw', 'dd', 'resb',
    'resw', 'times', 'org', 'section', 'segment', 'ends', 'bits',
})
_PREFIXES = frozenset({'rep', 'repe', 'repne', 'repz', 'repnz', 'lock'})

#: How many unique differences are shown per finding.
_MAX_DIFFS = 16

#: A bare immediate at or above this value is treated as an address by the
#: separate immediate pass.  Code/data offsets in this project are above 0x100;
#: smaller values are ordinary constants (``cmp ..., 0x16``).
_ADDRESS_IMMEDIATE_MIN = 0x100

_DIFF_NAMES = {'label': 'label', 'sym': 'symbol', 'addr': 'address',
               'immediate': 'immediate'}


def _strip_comment(line):
    """*line* without its ``;`` comment, respecting quoted strings."""
    quote = ''
    for i, ch in enumerate(line):
        if quote:
            if ch == quote:
                quote = ''
        elif ch in "'\"":
            quote = ch
        elif ch == ';':
            return line[:i]
    return line


def _mask_stream(text, *, data, mask_immediates=False):
    """``(stream, key, lines)`` for one fragment.

    *stream* is ``[(kind, key_value, raw, lineno)]``; *key* drops the raw
    spellings.  A label is a named definition, ``local`` a ``@..x.lN``, ``sym``
    an operand name, ``addr`` a non-stack memory displacement, ``immediate`` a
    bare value the separate address-immediate pass may name, and ``lit``
    everything that must match exactly (mnemonic, register, keyword, number,
    string).
    """
    stream = []
    maps = {'label': {}, 'local': {}, 'sym': {}, 'addr': {}}
    lines = 0

    def put(kind, raw, lineno):
        if kind == 'immediate':
            # One placeholder: adding a maskable immediate may merge groups,
            # never split one that the name/memory pass already matched.
            stream.append((kind, None, raw, lineno))
        elif kind in maps:
            index = maps[kind].setdefault(raw, len(maps[kind]))
            stream.append((kind, index, raw, lineno))
        else:
            stream.append((kind, raw, raw, lineno))

    for lineno, line in enumerate(text.split('\n'), 1):
        code = _strip_comment(line).strip()
        if not code or code.startswith('%'):
            continue
        label = _LABEL_DEF.match(code)
        if label:
            name, rest = label.groups()
            put('local' if name.startswith('@') else 'label', name, lineno)
            code = rest.strip()
            if not code:
                continue
        lines += 1
        tokens = _MASK_TOKEN.findall(code)
        first, prefix = True, False
        depth = 0
        bases = []
        for token in tokens:
            low = token.lower()
            if token == '[':
                depth += 1
                bases.append(set())
            elif token == ']':
                if depth:
                    depth -= 1
                    bases.pop()
            elif token[0] in "'\"":
                put('lit', token, lineno)
            elif token.startswith('@'):
                put('local', token, lineno)
            elif re.match(r'[A-Za-z_]', token):
                if low in _REGISTERS:
                    put('lit', token, lineno)
                    if depth and low in _ADDRESS_REGS:
                        bases[-1].add(low)
                elif low in _KEYWORDS:
                    put('lit', token, lineno)
                elif first or prefix:
                    put('lit', token, lineno)
                    prefix = low in _PREFIXES
                else:
                    put('sym', token, lineno)
            elif re.match(r'0[xX]', token) or token.isdigit():
                value = int(token, 16) if token.lower().startswith('0x') \
                    else int(token)
                if depth and not data and not (_STACK_REGS & bases[-1]):
                    put('addr', token, lineno)
                elif (mask_immediates and not data
                      and value >= _ADDRESS_IMMEDIATE_MIN):
                    put('immediate', token, lineno)
                else:
                    put('lit', token, lineno)
            else:
                put('lit', token, lineno)
            first = False
    key = tuple((kind, value) for kind, value, _raw, _line in stream)
    return stream, key, lines


@dataclass(frozen=True)
class _Fragment:
    rel: str
    binary: str
    stem: str
    data: bool
    text: str
    stream: tuple
    key: tuple
    size: int


@dataclass(frozen=True)
class _Diff:
    kind: str
    line: int
    spellings: tuple


@dataclass(frozen=True)
class _Finding:
    kind: str                     # code | data | collision
    stem: str
    members: tuple = ()
    target: str = ''
    diffs: tuple = ()
    more: int = 0
    bodies: tuple = ()


def _audit_files(out_dir):
    """``[(relative path, text)]`` of every fragment the audit compares.

    Generated binary fragments and every ``shared/`` file are included.  A
    hand-written source is irrelevant here: generated asm it owns is still
    compared (``ega/table_entry_ptr.asm`` is the current example).
    """
    for root, dirs, names in os.walk(out_dir):
        dirs[:] = [d for d in dirs
                   if d not in ('build_out', 'inc', 'include', '.git')]
        for name in sorted(names):
            if not name.endswith('.asm'):
                continue
            path = os.path.join(root, name)
            rel = os.path.relpath(path, out_dir)
            if rel.count(os.sep) < 1:
                continue
            top = rel.split(os.sep, 1)[0]
            if top != FOLDER and not is_generated(path):
                continue
            yield rel.replace(os.sep, '/'), _read(path)


def _audit_fragments(out_dir):
    for rel, text in _audit_files(out_dir):
        data = '/data/' in rel
        stream, key, lines = _mask_stream(text, data=data)
        if not stream:
            continue
        yield _Fragment(
            rel=rel,
            binary=rel.split('/', 1)[0],
            stem=_stem(rel),
            data=data,
            text=text,
            stream=tuple(stream),
            key=key,
            size=lines,
        )


def _spans_binaries(members, served=frozenset(), hosts=None):
    """True when *members* still have two places a shared file could serve.

    *served* is ``{(binary, shared rel)}`` its master already includes: that
    binary has its one copy, and its other copies cannot also share.

    *hosts* is :func:`_host_split`'s ``(host, overlays)``.  An overlay sees the
    host only as a list of addresses, so a host copy and an overlay copy cannot
    share one file: it would define the same labels twice in the overlay, and
    the callee names would mean different things in each program.  When the
    group has an overlay copy (its own, or a shared file an overlay includes)
    the host's copies are not candidates.
    """
    if hosts:
        host, overlays = hosts
        if any(m.binary in overlays
               or (m.binary == FOLDER
                   and any((o, m.rel) in served for o in overlays))
               for m in members):
            members = [m for m in members if m.binary != host
                       and not (m.binary == FOLDER
                                and (host, m.rel) in served)]
    shared = {m.rel for m in members if m.binary == FOLDER}
    binaries = {m.binary for m in members if m.binary != FOLDER
                and not any((m.binary, rel) in served for rel in shared)}
    return len(binaries) >= 2 or bool(binaries and shared)


def _masters_including(out_dir, pattern):
    """``{master binary: [included path, ...]}`` for ``%include`` of *pattern*."""
    include = re.compile(rf'^[ \t]*%include\s+"({pattern})"', re.M)
    found = {}
    for name in os.listdir(out_dir):
        path = os.path.join(out_dir, name)
        if name.endswith('.asm') and os.path.isfile(path):
            found[name[:-4]] = include.findall(_read(path))
    return found


def _included(out_dir):
    """``{(binary, shared rel)}`` for every shared file a master includes."""
    return {(binary, rel)
            for binary, rels in _masters_including(
                out_dir, f'{FOLDER}/[^"]+').items()
            for rel in rels}


def _host_split(out_dir):
    """``(host, overlays)``: the binary overlays see only by address, and them.

    The host is the one ``include/host_symbols.inc`` pastes in; an overlay is a
    master that includes that file.  ``None`` and no overlays when there is none.
    """
    path = os.path.join(out_dir, 'include', 'host_symbols.inc')
    if not os.path.isfile(path):
        return None, frozenset()
    host = re.search(r'^[ \t]*%include\s+"([^"/]+)\.asm"', _read(path), re.M)
    overlays = frozenset(
        binary for binary, rels in _masters_including(
            out_dir, 'include/host_symbols\\.inc').items() if rels)
    return (host.group(1) if host else None), overlays


def _target(members, data):
    shared = next((m for m in members if m.binary == FOLDER), None)
    if shared:
        return shared.rel
    first = members[0]
    if data:
        return f'{FOLDER}/data/{first.stem}.asm'
    if first.stem.startswith('aztec_'):
        band = 'aztec'
    elif re.search(r'^\s*call\s+(?:near\s+)?aztec_csav\b', first.text, re.M):
        band = 'game'
    else:
        band = 'library'
    return f'{FOLDER}/{band}/{first.stem}.asm'


def _diffs(members):
    """``(diffs, hidden count)``: the actionable name/address differences."""
    base = members[0]
    seen, out = set(), []
    for frag in members[1:]:
        for i, (a, b) in enumerate(zip(base.stream, frag.stream)):
            if a[0] != b[0] or a[2] == b[2] or a[0] not in _DIFF_NAMES:
                continue
            spellings = tuple((m.rel, m.stream[i][2]) for m in members)
            key = (a[0], spellings)
            if key in seen:
                continue
            seen.add(key)
            out.append(_Diff(_DIFF_NAMES[a[0]], a[3], spellings))
    out.sort(key=lambda d: (d.line, d.kind, d.spellings))
    return tuple(out[:_MAX_DIFFS]), max(0, len(out) - _MAX_DIFFS)


def _is_bare_return(text):
    """True for a body that is a lone ``ret``: nothing to tell copies apart.

    Such a stub is only ever the same function as a copy of the same name;
    matched by code alone, every empty routine would fold into one.
    """
    code = [c for c in (_strip_comment(line).strip()
                        for line in text.split('\n'))
            if c and not _LABEL_DEF.match(c)]
    return code == ['ret']


def _findings(frags, served=frozenset(), hosts=None):
    code, data = defaultdict(list), defaultdict(lambda: defaultdict(list))
    for frag in frags:
        if frag.data:
            stem = (f'{frag.binary}/{frag.stem}' if binary_local(frag.rel)
                    else frag.stem)
            data[stem][frag.key].append(frag)
        elif _is_bare_return(frag.text):
            code[('ret', frag.stem)].append(frag)
        else:
            code[frag.key].append(frag)
    findings = []
    for group in code.values():
        if len(group) < 2 or not _spans_binaries(group, served, hosts):
            continue
        group = tuple(sorted(group, key=lambda f: (f.binary != FOLDER, f.rel)))
        diffs, more = _diffs(group)
        findings.append(_Finding('code', group[0].stem, group,
                                 _target(group, data=False), diffs, more))
    for stem, bodies in data.items():
        involved = {f.binary for body in bodies.values() for f in body}
        binaries = involved - {FOLDER}
        if len(bodies) > 1:
            if len(binaries) >= 2 or (binaries and FOLDER in involved):
                ordered = tuple(tuple(sorted(body, key=lambda f: f.rel))
                                for body in sorted(bodies.values(),
                                                   key=lambda body: min(
                                                       f.rel for f in body)))
                members = tuple(f for body in ordered for f in body)
                findings.append(_Finding('collision', stem, members,
                                         bodies=ordered))
            continue
        group = next(iter(bodies.values()))
        if not _spans_binaries(group, served, hosts):
            continue
        group = tuple(sorted(group, key=lambda f: (f.binary != FOLDER, f.rel)))
        diffs, more = _diffs(group)
        findings.append(_Finding('data', stem, group,
                                 _target(group, data=True), diffs, more))
    return _sort_findings(findings)


def _immediate_findings(frags, served=frozenset(), hosts=None):
    """Address-immediate groups: the same code with a bare address named."""
    groups = defaultdict(list)
    for frag in frags:
        groups[frag.key].append(frag)
    findings = []
    for group in groups.values():
        if len(group) < 2 or not _spans_binaries(group, served, hosts):
            continue
        group = tuple(sorted(group, key=lambda f: (f.binary != FOLDER, f.rel)))
        diffs, more = _diffs(group)
        findings.append(_Finding('immediate', group[0].stem, group,
                                 _target(group, data=False), diffs, more))
    return findings


def _sort_findings(findings):
    findings.sort(key=lambda f: (
        {'code': 0, 'immediate': 1, 'data': 2, 'collision': 3}[f.kind],
        -len(f.members), f.stem))
    return findings


def scan(out_dir):
    """Every unmerged code/data group and data-name collision under *out_dir*.

    Address-like immediates are a second pass so they cannot split a group the
    name/memory pass already matched: a group reported as ``code`` is excluded,
    and every remaining code fragment is regrouped with immediates at or above
    :data:`_ADDRESS_IMMEDIATE_MIN` masked.
    """
    frags = list(_audit_fragments(out_dir))
    served = _included(out_dir)
    hosts = _host_split(out_dir)
    findings = _findings(frags, served, hosts)
    covered = {m.rel for f in findings if f.kind == 'code' for m in f.members}
    immediate = []
    for frag in frags:
        if (frag.data or frag.binary == FOLDER or frag.rel in covered
                or _is_bare_return(frag.text)):
            continue
        stream, key, lines = _mask_stream(frag.text, data=False,
                                          mask_immediates=True)
        immediate.append(_Fragment(frag.rel, frag.binary, frag.stem, False,
                                   frag.text, tuple(stream), key, lines))
    findings.extend(_immediate_findings(immediate, served, hosts))
    return _sort_findings(findings)


def _sample_line(frag):
    """The first non-label line of a data body, for a collision report."""
    for line in frag.text.split('\n'):
        code = _strip_comment(line).strip()
        if code and not _LABEL_DEF.match(code):
            return code[:100]
    return ''


def report(findings):
    """The human-readable failure text for :func:`scan`."""
    if not findings:
        return ''
    counts = defaultdict(int)
    for finding in findings:
        counts[finding.kind] += 1
    lines = [f'{len(findings)} unmerged finding(s): '
             f'{counts["code"]} code group(s), '
             f'{counts["immediate"]} address-immediate group(s), '
             f'{counts["data"]} data group(s), '
             f'{counts["collision"]} data name collision(s)']
    for finding in findings:
        lines.append('')
        if finding.kind == 'collision':
            lines.append(f'data name collision: {finding.stem} '
                         f'({len(finding.bodies)} bodies)')
            for number, body in enumerate(finding.bodies, 1):
                lines.append(f'  body {number}: '
                             + ', '.join(m.rel for m in body))
                sample = _sample_line(body[0])
                if sample:
                    lines.append(f'      {sample}')
            continue
        if finding.kind == 'immediate':
            noun, unit = 'address-immediate', 'instructions'
        elif finding.kind == 'code':
            noun, unit = 'code', 'instructions'
        else:
            noun, unit = 'data', 'lines'
        lines.append(f'unmerged {noun}: {len(finding.members)} copies, '
                     f'{finding.members[0].size} {unit} -> {finding.target}')
        for member in sorted(finding.members,
                             key=lambda m: (m.binary != FOLDER, m.rel)):
            tag = ' [shared]' if member.binary == FOLDER else ''
            lines.append(f'  {member.rel}{tag}')
        for diff in finding.diffs:
            spellings = ' | '.join(raw for _rel, raw in diff.spellings)
            lines.append(f'  {diff.kind:<7} {spellings}')
        if finding.more:
            lines.append(f'  ... {finding.more} more difference(s)')
    return '\n'.join(lines)


def unmerged_report(out_dir):
    """``report(scan(out_dir))``: the audit's failure text, or ``''``."""
    return report(scan(out_dir))
