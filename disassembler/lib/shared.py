"""Share identical routines between binaries under ``src_<project>/shared/``.

The same vendor runtime routine (``aztec_strlen``) or overlay API stub is
emitted once per binary that contains it.  Where the instructions are identical
(comments and the routine's own address annotations aside) the copies collapse
into one file in ``shared/`` that every binary's master ``%include``s.

Only generated files are touched (see :mod:`lib.autogen`).  The placement is
decided on the build's files as data (:func:`share_files`), before any is
written, so a routine shared is written once, to ``shared/``, and its masters
already include it there.  Prebuild-derived C seeds can guide sharing.
Hand-owned ``.c`` and ``.s`` files never do: they are checked against the
binary, and only move beside a shared file after the placement is decided
(:func:`companion_moves`).

A routine is shared only if its text is identical in every binary, so every copy
links on its own and calls the same names (an overlay sees only itself and
``ds``).  Copies whose names can truthfully be one get one name first
(:mod:`lib.common_names`); anything else stays a separate copy in its own binary.
Nothing is masked, aliased or reported.

A file shared with a banded binary sits in the band folder its copy there
does (``ds/aztec/x.asm`` -> ``shared/aztec/x.asm``, :mod:`lib.sidecar.bands`);
one shared only between drivers (``raw_drv`` binaries) sits in
``shared/drv/``, one shared otherwise between unbanded binaries (the overlays)
in ``shared/ovr/``, and data in ``shared/data/``.  A hand-owned source is found in
``shared/`` or any of its folders.
"""

import os
import re
from collections import defaultdict

from .autogen import hand_owned, is_generated, stamp
from .cachedirs import SRC_SKIP_DIRS, project_of_src_dir
from .common_names import unify_names
from .routine_source import SUFFIXES, beside
from .sidecar.bands import BAND_NAMES
from .sidecar.loader import load as load_sidecar

FOLDER = 'shared'

#: The folder of a file no banded binary shares: the overlays'.
OVERLAY = 'ovr'

#: The folder of a file only drivers share.
DRIVER = 'drv'

#: Every folder a shared routine may sit in.
_FOLDERS = BAND_NAMES + (OVERLAY, DRIVER)
_SKIP_DIRS = {FOLDER, 'inc', 'build_out'}
_ADDR_COMMENT = re.compile(r'[ \t]+; 0x[0-9a-fA-F]+[ \t]*$')
_LOCAL_LABEL = re.compile(r'(?<![\w.])(?:(?:@\.\.)?[A-Za-z_][\w.]*?)?\.((?:l|back|return|forward)\d+)(?![\w.])')


def _code_key(text):
    """The routine's instructions with comments and local-label names removed."""
    lines = []
    for line in text.split('\n'):
        code = line.split(';', 1)[0].rstrip()
        if code.strip():
            lines.append(code.strip())
    local_ids = {}

    def number_local(match):
        number = match.group(1)
        if number not in local_ids:
            local_ids[number] = len(local_ids) + 1
        return f'@L{local_ids[number]}'

    # Local labels are allocated from addresses and can have different numbers
    # in identical routines from different overlays.  Preserve which branches
    # land at the same label while ignoring those address-derived numbers.
    return _LOCAL_LABEL.sub(number_local, '\n'.join(lines))


_SYMBOL = re.compile(r'[A-Za-z_][\w.]*')


def _binary(rel):
    return rel.split(os.sep, 1)[0]


def _stem(rel):
    return os.path.basename(rel)[:-4]


def _generic(sym):
    """True for a content-tagged name (or one the table lacks)."""
    return sym is None or sym.generic


def _buckets(fragments):
    """``[(source, rels)]``: the copies that may share a file, those of one
    name (:func:`_shared_base`) and source; a data file named for its address
    and a lone instruction share with nothing."""
    out = defaultdict(list)
    for rel, (text, ctext) in sorted(fragments.items()):
        is_data = os.path.basename(os.path.dirname(rel)) == 'data'
        if binary_local(rel) or (not is_data and _is_single_instruction(text)):
            out[('rel', rel)].append(rel)
        else:
            out[(_shared_base(rel), ctext)].append(rel)
    return sorted(((key[1] if key[0] != 'rel' else None, rels)
                   for key, rels in out.items()), key=repr)


def _is_single_instruction(text):
    """Recognize a generated instruction body, ignoring labels and EQU aliases."""
    instructions = []
    for line in text.splitlines():
        code = _strip_comment(line).strip()
        while match := _LABEL_DEF.match(code):
            code = match.group(2).strip()
        if not code or _EQU.match(code):
            continue
        # Keep mixed code/data and preprocessor bodies out of this shortcut.
        if code.startswith('%') or code.split()[0].lower() in {
                'db', 'dw', 'dd', 'dq', 'dt', 'times', 'resb', 'resw',
                'incbin', 'align'}:
            return False
        instructions.append(code)
        if len(instructions) > 1:
            return False
    return len(instructions) == 1


#: A label named after its address or content tag.
_GENERATED_LABEL = re.compile(
    r'(?<![\w.@])(?:jumptable_[0-9a-f]{4,5}(?:_case_\d+)?|(?:cseg|loc)_[0-9a-f]{4,5}'
    r'|(?:[a-z]+_)*loc_[G-V]{4})(?![\w.])')


def _label_uses(files):
    """``{binary: {generated label: {files naming it}}}``."""
    uses = defaultdict(lambda: defaultdict(set))
    for rel, text in files.items():
        binary = _binary(rel).removesuffix('.asm')
        for name in set(_GENERATED_LABEL.findall(text)):
            uses[binary][name].add(rel)
    return uses


#: A word defined as a label at the start of a line (``name:``).
_LINE_LABEL = re.compile(r'^\s*(\w+):', re.M)


def _private_labels(rel, text, uses):
    """The generated labels *rel* defines and no other file of its binary names."""
    binary_uses = uses[_binary(rel)]
    defined = set(_LINE_LABEL.findall(text))
    return {name for name in _GENERATED_LABEL.findall(text)
            if binary_uses[name] == {rel} and name in defined}


def _private_key(text, private):
    """:func:`_code_key` with each of the *private* labels named by position:
    the address in its name is all that tells identical copies apart."""
    ids = {}

    def number(match):
        name = match.group()
        if name not in private:
            return name
        return f'@P{ids.setdefault(name, len(ids))}'

    return _GENERATED_LABEL.sub(number, _code_key(text))


def _clusters(fragments, rels, uses):
    """``(shared base, group)`` for each group of *rels* whose code is the
    same.  A binary includes one copy: two would define the label twice, and the
    first copy's private labels must not mean something else in another member."""
    private = {rel: _private_labels(rel, fragments[rel][0], uses) for rel in rels}
    keys = {rel: _private_key(fragments[rel][0], private[rel]) for rel in rels}
    left = sorted(rels)
    while left:
        group = [left[0]]
        for rel in left[1:]:
            if (_binary(rel) not in {_binary(g) for g in group}
                    and keys[rel] == keys[left[0]]
                    and not any(uses[_binary(rel)][name] - {rel}
                                for name in private[left[0]])):
                group.append(rel)
        left = [rel for rel in left if rel not in group]
        yield _shared_base(group[0]), group


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
    """``shared/`` and its band, overlay and driver folders: where a shared
    routine's files are."""
    root = os.path.join(out_dir, FOLDER)
    return [root] + [os.path.join(root, band) for band in _FOLDERS]


def _homes(base):
    """The paths (no suffix) a shared source of *base* may have."""
    stem = os.path.basename(base)
    if base.startswith(f'{FOLDER}/data/'):
        return [base]
    return [f'{FOLDER}/{band}/{stem}' for band in _FOLDERS] + [base]


def _drivers(out_dir):
    """The binaries of *out_dir*'s project that are drivers (``raw_drv``)."""
    project = project_of_src_dir(out_dir)
    sidecar = (load_sidecar(project) if project else None) or {}
    return frozenset(name for name, info in sidecar.get('binaries', {}).items()
                     if info.get('type') == 'raw_drv')


def _band(rels, drivers=frozenset()):
    """The folder of a shared file: the band its banded binary's copy sits in
    (``ds/aztec/x.asm``), :data:`DRIVER` when only *drivers* share it, else
    :data:`OVERLAY`."""
    binaries = set()
    for rel in rels:
        parts = rel.split(os.sep)
        if parts[0] != FOLDER and len(parts) == 3 and parts[1] in BAND_NAMES:
            return parts[1]
        if parts[0] != FOLDER:
            binaries.add(parts[0])
    return DRIVER if binaries and binaries <= drivers else OVERLAY


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
    under *out_dir* is a human's.  The source, ``(suffix, text)``, is a
    prebuild-generated C/S file beside the fragment, else a generated shared
    source.  Hand-owned C and ``.s`` are never considered here: they never
    change the assembly (:func:`companion_moves` places them afterwards).
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
        shared, shared_suffix = shared_source(_shared_base(rel),
                                              files.__contains__)
        if own:
            ctext = (own_suffix, files[own])
        elif shared:
            ctext = (shared_suffix, files[shared])
        else:
            ctext = None
        found[rel] = (files[rel], ctext)
    return found


def share_files(files, out_dir):
    """Collapse identical fragments of different binaries into ``shared/``.

    *files* is ``{relative path: text}``, every generated file of the tree at
    *out_dir* (which holds only the hand-owned ones).  A routine with
    generated source moves its ``.c`` or ``.s`` along
    (``shared/game/<label>.c``); a hand-owned ``.s`` stays authoritative.
    Returns
    ``(files, shared)``: the tree's files after sharing, and ``{shared relative
    path: [replaced relative paths]}``.
    """
    files = unify_names(dict(files), out_dir)
    fragments = _fragments(files, out_dir)
    drivers = _drivers(out_dir)
    uses = _label_uses(files)

    # Names carry a content tag (lib.names), so one stem is mostly one body.
    # Where a stem still has several, the largest group is shared and the rest
    # stay: each binary's own routine.
    best = {}
    for ctext, rels in _buckets(fragments):
        for base, members in _clusters(fragments, rels, uses):
            if len({p.split('/')[0] for p in members}) < 2:
                continue
            if base not in best or len(members) > len(best[base][0]):
                best[base] = (members, ctext)

    shared = {}
    for base, (members, ctext) in best.items():
        members = sorted(members)
        home = base if base.startswith(f'{FOLDER}/data/') else (
            f'{FOLDER}/{_band(members, drivers)}/{os.path.basename(base)}')
        shared_rel = f'{home}.asm'
        files[shared_rel] = _text_for(fragments, members)
        if ctext is not None:
            # One source: a hand-owned one wherever it is, else ours in the
            # band folder (an earlier build's elsewhere goes).
            homes = [h + suffix for h in _homes(base) for suffix in SUFFIXES]
            if not any(_on_disk(out_dir, path) for path in homes):
                for path in homes:
                    files.pop(path, None)
                files[shared_rel[:-4] + ctext[0]] = ctext[1]
        shared[shared_rel] = members

    _apply(files, shared, out_dir)
    return files, shared


def check_companions(out_dir, files, scopes=None, moves=()):
    """Warn about orphan C/S in the proposed tree before synchronizing output."""

    def in_scope(rel):
        return scopes is None or any(rel == scope or rel.startswith(scope + '/')
                                     for scope in scopes)

    # Generated files in the synchronized scopes will be replaced by *files*;
    # hand-owned files and files outside a partial build's scopes survive.
    final = set(files)
    for folder, dirs, names in os.walk(out_dir):
        dirs[:] = [d for d in dirs if d not in SRC_SKIP_DIRS and not d.startswith('.')]
        for name in names:
            if not name.endswith(('.asm',) + SUFFIXES):
                continue
            path = os.path.join(folder, name)
            rel = os.path.relpath(path, out_dir).replace(os.sep, '/')
            if hand_owned(path) or not in_scope(rel):
                final.add(rel)
    for source, dest in moves:
        final.discard(source)
        final.add(dest)
    orphans = sorted(rel for rel in final if rel.endswith(SUFFIXES)
                     and in_scope(rel) and rel.rsplit('.', 1)[0] + '.asm' not in final)
    if orphans:
        print('warning: source file(s) with no companion asm in the same folder: '
              + ', '.join(orphans))

def companion_moves(out_dir, shared):
    """Plan hand-owned source moves after deciding the assembly placement.

    Source text does not feed back into disassembly or sharing.  Companions
    that cannot sit beside the shared file as one source stay where they are
    (with a warning) until a person reconciles them.
    """
    def plan(target, members):
        moves, contents, kinds = [], {}, {}
        for member in members:
            for suffix in SUFFIXES:
                source = member[:-4] + suffix
                path = os.path.join(out_dir, source)
                if not hand_owned(path):
                    continue
                dest = target[:-4] + suffix
                if _stem(member) != _stem(target):
                    return f'{source}: cannot move beside {target} ' \
                           'without renaming its routine'
                if kinds.setdefault(target, suffix) != suffix:
                    return f'{target}: both .c and .s companions'
                text = _read(path)
                previous = contents.setdefault(dest, text)
                existing = beside(os.path.join(out_dir, target[:-4]))
                if previous != text or (existing is not None and
                        (not existing.endswith(suffix) or _read(existing) != text)):
                    return f'{source}: conflicting source beside {target}'
                moves.append((source, dest))
        return moves

    moves = []
    for target, members in sorted(shared.items()):
        planned = plan(target, members)
        if isinstance(planned, str):
            print(f'warning: {planned}; companions left in place')
        else:
            moves += planned
    return moves


def move_companions(out_dir, moves, journal=None):
    """Apply a validated companion plan, preserving source text and ownership."""
    for source, dest in moves:
        source, dest = os.path.join(out_dir, source), os.path.join(out_dir, dest)
        os.makedirs(os.path.dirname(dest), exist_ok=True)
        if os.path.exists(dest):
            if journal is not None:
                journal.remove(source)
            else:
                os.unlink(source)  # the plan checked that both copies are identical
        elif journal is not None:
            journal.rename(source, dest)
        else:
            os.rename(source, dest)


def _apply(files, shared, out_dir):
    """Point the masters at the *shared* files and drop the copies they
    replace (with their sources) from *files*."""
    _place_equs(files, out_dir)
    _rewrite_includes(files, shared)
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
    binary's master on disk includes each routine it shared from ``shared/``.
    For every master in *files*, each such routine whose new copy still matches
    the shared file goes back there; one that changed keeps its own copy until
    a full build re-decides.  Returns ``(files, shared, diverged)``, *diverged*
    the ``(binary, shared file)`` pairs whose copy no longer matches.
    """
    files = dict(files)
    shared, diverged = {}, []
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
            rels = [rel for rel in new_includes if _stem(rel) == stem]
            if len(rels) != 1 or not _still_shared(files, out_dir, rels[0],
                                                   shared_rel, _read(path)):
                diverged.append((binary, shared_rel))
                continue
            shared.setdefault(shared_rel, []).append(rels[0])
    _apply(files, shared, out_dir)
    return files, shared, diverged


def _still_shared(files, out_dir, rel, shared_rel, text):
    """True when *rel* is the shared file *text*, and its source (if it has
    one) is the shared one."""
    if rel not in files:
        return False
    if _code_key(files[rel]) != _code_key(text):
        # The shared file spells its private labels as another binary does.
        ours = _private_labels(rel, files[rel], _label_uses(files))
        if (_private_key(files[rel], ours)
                != _private_key(text, set(_GENERATED_LABEL.findall(text)))):
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
        dirs[:] = [d for d in dirs if d not in SRC_SKIP_DIRS]
        for filename in names:
            path = os.path.join(folder, filename)
            if filename.endswith(('.asm',) + SUFFIXES) \
                    and is_generated(path):
                before[os.path.relpath(path, out_dir)] = _read(path)
    after, shared = share_files(before, out_dir)
    check_companions(out_dir, after)
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


def _rewrite_includes(files, shared):
    """Point each master's (and fragment's) ``%include`` at the shared copy."""
    moved = {rel: dst for dst, members in shared.items() for rel in members}
    pattern = re.compile(r'^([ \t]*)(%include\s+")([^"]+)(")', re.M)

    def swap(m):
        indent, rel = m.group(1), m.group(3)
        return indent + m.group(2) + moved.get(rel, rel) + m.group(4)

    for rel, text in list(files.items()):
        if not rel.endswith('.asm') or {'build_out', 'inc'} & set(
                rel.split('/')[:-1]):
            continue
        files[rel] = pattern.sub(swap, text)


_EQU = re.compile(r'^([A-Za-z_][\w.]*)[ \t]+equ[ \t]+(.*?)[ \t]*$')
_INCLUDE = re.compile(r'^[ \t]*%include\s+"([^"]+)"')


def _is_header(path):
    """An include that is part of the master's header, not a routine."""
    from lib.compare.render import HOST_SYMBOLS_INC, NASM_MACROS_INC
    from lib.match.driver_slots import DRIVERS_INC
    from lib.record_layout import STRUCTS_INC
    return path.startswith('inc/') or path in (HOST_SYMBOLS_INC, STRUCTS_INC,
                                               DRIVERS_INC, NASM_MACROS_INC)


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


_LABEL_DEF = re.compile(r'^([.@A-Za-z_][\w.@]*):\s*(.*)$')


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


def _masters_including(out_dir, pattern):
    """``{master binary: [included path, ...]}`` for ``%include`` of *pattern*."""
    include = re.compile(rf'^[ \t]*%include\s+"({pattern})"', re.M)
    found = {}
    for name in os.listdir(out_dir):
        path = os.path.join(out_dir, name)
        if name.endswith('.asm') and os.path.isfile(path):
            found[name[:-4]] = include.findall(_read(path))
    return found


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
