"""A runtime the build links from the vendor's library instead of the tree.

A binary whose ``aztec`` band says ``"lib": "c.lib"`` (:mod:`lib.sidecar.bands`)
links Manx's own ``C.LIB``, as the original did, so its runtime is no part of
the game's source.  The NASM master still assembles the band byte for byte,
so its fragments are still written, but to ``.cache/c.lib/`` in the tree,
which git ignores, instead of beside the game's code::

    ds/aztec/aztec_ovloader.asm      -> .cache/c.lib/ds/ovloader.asm
    shared/aztec/aztec_strcpy.asm    -> .cache/c.lib/shared/strcpy.asm
    ds/data/STKSIZ.asm               -> .cache/c.lib/ds/data/STKSIZ.asm

and every name the generator gave the runtime (``aztec_strcpy``,
``aztec_csav``, ``aztec_impl_read``) is spelled as Manx's sources spell it
(``strcpy``, ``$csav``, ``_read``), in the fragments and in the game's code
that calls them.  NASM reads ``$csav`` as the label ``csav``; where a name is
part of a longer label (``__zaztec_MEMRY``) it loses its ``$``.

A runtime module is one the generator named for the runtime (``aztec_``), or
a data module whose every object the vendor's library sources define
(``stksiz.c``'s ``_STKSIZ``, ``ctype.c``'s ``ctp_``).  One linked into a
binary that keeps its runtime as source stays in the tree, with its names.

The project files then link the library: :func:`link_list` drops a runtime
module from a binary's ``.lnk``, except for those the band's ``objects``
names, which Manx ships as objects of their own rather than library members
(``"ovloader": "ovld.o"``); they keep their place in it.
"""

import functools
import os
import re
import subprocess
import tempfile

from .aztec.compile import LIBRARY_PREFIX

#: Where a library's runtime fragments go, under the tree.
CACHE = '.cache'

_INCLUDE = re.compile(r'^([ \t]*%include\s+")([^"]+)(")', re.M)
_RUNTIME_NAME = re.compile(r'(?<![$\w/])(\w*?)' + LIBRARY_PREFIX + r'(\w+)')
_SPELLING = re.compile(r'[$\w]+')
#: A label or ``equ`` a fragment defines.
_DEFINED = re.compile(r'^[ \t]*\$?([A-Za-z_.?@][\w.?@$#~]*)[ \t]*(?::|[ \t]equ\b)', re.M)
_LABEL = re.compile(r'^(?:__z)?([A-Za-z_$][\w$]*):', re.M)
#: A C definition of data at column zero: ``int _STKSIZ = 4096/16;``,
#: ``char ctp_[129] = {``.
_C_DATA = re.compile(
    r'^(?:[A-Za-z_]\w*[ \t\*]+)+([A-Za-z_]\w*)[ \t]*(?:\[[^\]\n]*\])?[ \t]*[=;,]',
    re.M)
_ASM_PUBLIC = re.compile(r'^[ \t]*public[ \t]+([^;\n]+)', re.M | re.I)


def cache_dir(library):
    """The tree-relative folder *library*'s fragments go in (``.cache/c.lib``)."""
    return f'{CACHE}/{library}'


def in_cache(module):
    """True when tree-relative *module* is a library's runtime fragment."""
    return module.startswith(CACHE + '/')


def link_list(modules, objects):
    """``(modules, objects)`` of a binary that links its runtime from a
    library: *modules* without the runtime, and in its place, where the
    runtime has one, the compiler's own object (*objects*, the band's
    ``{"ovloader": "ovld.o"}``).  The objects come back in order."""
    by_stem = {name.lstrip('$'): obj for name, obj in (objects or {}).items()}
    out, found = [], []
    for module in modules:
        if not in_cache(module):
            out.append(module)
            continue
        obj = by_stem.get(os.path.basename(module))
        if obj:
            out.append(obj)
            found.append(obj)
    return out, found


def _vendor_data_names(version):
    """Every name a C.LIB source defines as data or makes public."""
    from .aztec import sources
    try:
        catalog = sources.catalog(version)
    except FileNotFoundError:
        return frozenset()
    library = set(sources.library_dirs(version))
    names = set()
    for filename, text in catalog.items():
        if sources.source_dir(version, filename) not in library:
            continue
        if filename.endswith('.c'):
            names.update(_C_DATA.findall(text))
        else:
            for decl in _ASM_PUBLIC.findall(text):
                names.update(n.strip().rstrip('_') or n.strip()
                             for n in decl.split(','))
    return frozenset(names)


def _module(rel):
    """The module a fragment file belongs to: its path without ``.asm`` and
    without a ``.data``/``.bss`` companion suffix."""
    stem = rel[:-len('.asm')] if rel.endswith('.asm') else os.path.splitext(rel)[0]
    for suffix in ('.data', '.bss'):
        if stem.endswith(suffix):
            return stem[:-len(suffix)]
    return stem


def _is_runtime(module, text, vendor_data):
    stem = os.path.basename(module)
    if stem.startswith(LIBRARY_PREFIX):
        return True
    if module.split('/')[-2:-1] != ['data']:
        return False
    labels = set(_LABEL.findall(text))
    return bool(labels) and all(
        name in vendor_data or name.rstrip('_') in vendor_data
        for name in labels)


def relocate(files, libraries, version):
    """Move every runtime fragment of the binaries in *libraries*
    (``{binary: 'c.lib'}``) under :func:`cache_dir` in *files* (``{rel:
    text}``, after :func:`lib.shared.share_files`), and point every
    ``%include`` at its new place.  Returns ``{old rel: new rel}``.

    A module moves only if every binary whose master includes it links the
    same library.
    """
    if not libraries:
        return {}
    users = {}
    for rel, text in files.items():
        if '/' in rel or not rel.endswith('.asm'):
            continue
        binary = rel[:-len('.asm')]
        for m in _INCLUDE.finditer(text):
            users.setdefault(_module(m.group(2)), set()).add(binary)
    vendor_data = _vendor_data_names(version)
    texts = {}
    for rel, text in files.items():
        if '/' in rel and rel.endswith('.asm'):
            texts.setdefault(_module(rel), []).append(text)
    moved = {}
    for module, parts in texts.items():
        if in_cache(module) or module.split('/', 1)[0] in ('include', 'inc'):
            continue
        binaries = users.get(module, set())
        libs = {libraries.get(name) for name in binaries}
        if not binaries or len(libs) != 1 or None in libs:
            continue
        if not _is_runtime(module, '\n'.join(parts), vendor_data):
            continue
        prefix = cache_dir(libs.pop())
        for rel in files:
            if rel == module + '.asm' or (rel.startswith(module + '.')
                                         and _module(rel) == module):
                moved[rel] = f'{prefix}/{_cache_path(rel, version)}'
    if not moved:
        return {}
    if len(set(moved.values())) != len(moved):
        raise ValueError('two runtime fragments would share a name under '
                         + prefix)

    def swap(m):
        return m.group(1) + moved.get(m.group(2), m.group(2)) + m.group(3)

    # Every file only binaries linking a library use is spelled the vendor's
    # way; a file a source-runtime binary also uses keeps the generator's.
    respell = set()
    for rel in files:
        if '/' not in rel:
            who = {rel[:-len('.asm')]} if rel.endswith('.asm') else set()
        else:
            who = users.get(_module(rel), set())
        if who and all(libraries.get(name) for name in who):
            respell.add(rel)
    spell = _speller(version)
    _check_spellings({rel: files[rel] for rel in respell}, spell)
    _nasm_reserved({spell(m.group(2)) for rel in respell
                    for m in _RUNTIME_NAME.finditer(files[rel])})
    for rel in list(files):
        text = files.pop(rel)
        if rel.endswith('.asm'):
            text = _INCLUDE.sub(swap, text)
        if rel in respell:
            text = _respell(text, spell, asm=rel.endswith('.asm'))
        files[moved.get(rel, rel)] = text
    return moved


@functools.lru_cache(maxsize=None)
def _vendor_spellings(version):
    """Every identifier the vendor's library sources write, ``$`` kept."""
    from .aztec import sources
    try:
        catalog = sources.catalog(version)
    except FileNotFoundError:
        return frozenset()
    library = set(sources.library_dirs(version))
    names = set()
    for filename, text in catalog.items():
        if sources.source_dir(version, filename) in library:
            names.update(_SPELLING.findall(text))
    return frozenset(names)


def _speller(version):
    """The function giving a generator name's rest (``strcpy`` of
    ``aztec_strcpy``) the vendor's spelling of it, ``$`` kept."""
    known = _vendor_spellings(version)

    def spell(rest):
        if rest.startswith('impl_'):
            rest = rest[len('impl_'):]
            if '_' + rest not in known and '__' + rest in known:
                return '__' + rest
            return '_' + rest
        return '$' + rest if '$' + rest in known else rest
    return spell


def _respell(text, spell, asm):
    """*text* with each generator runtime name spelled the vendor's way.  A
    whole asm word keeps a ``$``, and gets one where NASM reserves the word
    (``$wait``); part of a longer word, or in C, it has none."""
    def one(m):
        name = spell(m.group(2))
        if m.group(1) or not asm:
            return m.group(1) + name.lstrip('$')
        if not name.startswith('$') and name in _nasm_reserved((name,)):
            return '$' + name
        return name
    return _RUNTIME_NAME.sub(one, text)


_RESERVED = {}


def _nasm_reserved(names):
    """Those of *names* NASM will not take as a label (``wait``), asking
    NASM once for each name."""
    new = [n for n in names if n not in _RESERVED]
    if new:
        with tempfile.TemporaryDirectory() as tmp:
            path = os.path.join(tmp, 'probe.asm')
            with open(path, 'w') as f:
                f.write(''.join(f'{n}:\n' for n in new))
            run = subprocess.run(['nasm', '-f', 'bin', '-o', os.devnull, path],
                                 capture_output=True, text=True)
        bad = {int(m) for m in re.findall(r'probe\.asm:(\d+):', run.stderr)}
        for line, name in enumerate(new, 1):
            _RESERVED[name] = line in bad
    return {n for n in names if _RESERVED[n]}


def _check_spellings(files, spell):
    """Raise when a runtime's vendor name is already a label of the game's."""
    taken = {}
    for rel, text in files.items():
        if rel.endswith('.asm'):
            for name in _DEFINED.findall(text):
                if LIBRARY_PREFIX not in name:
                    taken.setdefault(name, rel)
    for rel, text in files.items():
        for m in _RUNTIME_NAME.finditer(text):
            name = m.group(1) + spell(m.group(2)).lstrip('$')
            if name in taken:
                raise ValueError(
                    f'{rel}: the runtime\'s {m.group(0)!r} is spelled {name!r} '
                    f'with a library, which {taken[name]} already defines')


def _cache_path(rel, version):
    """*rel*'s place under a library's cache folder: without the generator's
    ``aztec/`` folder, and its file named the vendor's way."""
    folder, name = os.path.split(rel)
    parts = [p for p in folder.split('/') if p != 'aztec']
    name = _respell(name, _speller(version), asm=False)
    return '/'.join(parts + [name])


def prune(out_dir, files, libraries):
    """Delete each file under a library's :func:`cache_dir` that this build
    did not write, and each folder left empty: the generator's sync never
    looks inside ``.cache``."""
    wanted = {os.path.normpath(os.path.join(out_dir, rel)) for rel in files}
    for library in set(libraries.values()):
        root = os.path.join(out_dir, cache_dir(library))
        for folder, _, names in os.walk(root, topdown=False):
            for name in names:
                path = os.path.normpath(os.path.join(folder, name))
                if path not in wanted:
                    os.remove(path)
            if folder != root and not os.listdir(folder):
                os.rmdir(folder)
