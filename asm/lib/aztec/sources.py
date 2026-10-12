"""Catalog of original Manx Aztec C86 runtime sources.

Two vendored distributions are relevant to the Wizardry 7 rebuild:

``v340a`` (a.k.a. 3.40b)
    The matching runtime for the game.  Its ``SRC/*.ARC`` files are *not*
    real archives -- they are plain text concatenations separated by a form
    feed followed by the file name (``\\f<name>\\n<body>``), so they can be
    read directly.  Most DOS runtime routines ship here as C.

``v52a``
    A later compiler/library.  Its C sources are loose files under ``LIB``,
    but its headline runtime changed (word ``_ioflg`` etc.), so it is useful
    mostly as an alternative compiler and as a source for routines v340a
    does not have.

Sources are keyed by lower-case base name.  A "source version" is the tree
the C came from; it is independent of the compiler used to build it, which
is what makes the mixed-version mux possible.
"""

import glob
import os
import re

_ASM_DIR = os.path.dirname(os.path.dirname(os.path.dirname(
    os.path.abspath(__file__))))
_DOSCOMP = os.path.join(_ASM_DIR, 'dos_compilers')

VERSIONS = {
    'v340a': os.path.join(_DOSCOMP, 'Manx Aztec C86 v340a'),
    'v52a': os.path.join(_DOSCOMP, 'Manx Aztec C86 v52a'),
}

# Default per-version include roots (headers that go with the source).
INCLUDE_DIRS = {
    'v340a': os.path.join(VERSIONS['v340a'], 'INCLUDE'),
    'v52a': os.path.join(VERSIONS['v52a'], 'INCLUDE'),
}

_CACHE = {}


def version_root(version):
    try:
        return VERSIONS[version]
    except KeyError:
        raise ValueError(f'unknown Aztec source version {version!r}')


def include_dir(version):
    return INCLUDE_DIRS.get(version)


def _parse_arc(text):
    """Yield ``(name, body)`` pairs from a concatenated ``\\f`` dump."""
    for part in text.split(b'\x0c')[1:]:
        nl = part.find(b'\n')
        if nl < 0:
            continue
        name = part[:nl].strip().decode('latin1')
        body = part[nl + 1:]
        if not name:
            continue
        try:
            yield name, body.decode('latin1')
        except Exception:
            continue


def _load_v340a():
    # Later archives win on name clashes.  Alphabetical order already places
    # the DOS 2.x sources (DOS20) after the CP/M and DOS 1.x variants, which
    # is what the game's handle-based runtime uses.
    out = {}
    src = os.path.join(version_root('v340a'), 'SRC')
    for arc in sorted(glob.glob(os.path.join(src, '*.ARC'))):
        with open(arc, 'rb') as f:
            data = f.read()
        for name, body in _parse_arc(data):
            out[name.lower()] = body
    return out


def _load_v52a():
    out = {}
    lib = os.path.join(version_root('v52a'), 'LIB')
    for root, _dirs, files in os.walk(lib):
        for fn in files:
            if not fn.upper().endswith(('.C', '.ASM')):
                continue
            path = os.path.join(root, fn)
            try:
                with open(path, 'r', errors='replace') as f:
                    out.setdefault(fn.lower(), f.read())
            except OSError:
                continue
    return out


_LOADERS = {'v340a': _load_v340a, 'v52a': _load_v52a}


def catalog(version):
    """Return ``{lower-case filename: source text}`` for *version*."""
    if version not in _CACHE:
        _CACHE[version] = _LOADERS[version]()
    return _CACHE[version]


def find_source(version, name):
    """Find a source file that defines C symbol *name* (with/without ``_``)."""
    cat = catalog(version)
    base = name
    for prefix in ('_', ''):
        stem = (prefix + base).lower()
        for cand in (stem + '.c', stem + '.asm'):
            if cand in cat:
                return cand, cat[cand]
    return None


_DEF_CACHE = {}

_KEYWORDS = {
    'if', 'for', 'while', 'switch', 'return', 'sizeof', 'do', 'else',
}

# A definition sits at column zero and ends with ``name(...)``.  Optional
# return-type tokens may precede the name (``int lseek(``); K&R sources often
# put the type on the previous line, leaving ``name(...)`` alone.
_DEF_RE = re.compile(
    r'^(?:[A-Za-z_][A-Za-z0-9_]*[ \t\*]+)*'
    r'([A-Za-z_][A-Za-z0-9_]*)[ \t]*\(', re.M)


def _definition_files(version):
    """Index of function definitions: normalized name -> [filenames]."""
    if version in _DEF_CACHE:
        return _DEF_CACHE[version]
    index = {}
    for fn, text in catalog(version).items():
        if not fn.endswith('.c'):
            continue
        for m in _DEF_RE.finditer(text):
            name = m.group(1).lstrip('_').lower()
            if name in _KEYWORDS:
                continue
            index.setdefault(name, [])
            if fn not in index[name]:
                index[name].append(fn)
    _DEF_CACHE[version] = index
    return index


def definition_files(version, name):
    """Files in *version* whose text defines *name* at column zero."""
    return list(_definition_files(version).get(name.lstrip('_').lower(), []))


_ASM_DEF_CACHE = {}

# An assembly routine is introduced by the library macro ``procdef name`` or,
# in the hand-written modules, ``public a, b`` / ``name proc``.  Runtime-private
# names carry a ``$`` (``$csav``, ``$begin``) and C names an ``_``/``_`` affix.
# ``public`` alone also covers forward references, so this over-approximates;
# the mux's exact byte compare is what decides a real match.
_ASM_DECL_RE = re.compile(
    r'^[ \t]*(?:procdef|proc|entry|public|intrdef)[ \t]+([^;\n]+)', re.M | re.I)
_ASM_PROC_RE = re.compile(r'^[ \t]*([A-Za-z0-9_$@?]+)[ \t]+proc\b', re.M | re.I)
_ASM_NAME_RE = re.compile(r'[A-Za-z0-9_$@?]+')


def _asm_names(text):
    for m in _ASM_DECL_RE.finditer(text):
        # ``procdef strcmp,<<str1,ptr>,...>``: only the first name is defined.
        decl = m.group(0).split(None, 1)
        if decl[0].lower() == 'procdef':
            first = _ASM_NAME_RE.match(m.group(1).strip())
            if first:
                yield first.group(0)
        else:
            yield from _ASM_NAME_RE.findall(m.group(1))
    for m in _ASM_PROC_RE.finditer(text):
        yield m.group(1)


def _asm_definition_files(version):
    if version in _ASM_DEF_CACHE:
        return _ASM_DEF_CACHE[version]
    index = {}
    for fn, text in catalog(version).items():
        if not fn.endswith('.asm'):
            continue
        for raw in _asm_names(text):
            name = raw.strip('_$').lower()
            if not name:
                continue
            index.setdefault(name, [])
            if fn not in index[name]:
                index[name].append(fn)
    _ASM_DEF_CACHE[version] = index
    return index


def asm_definition_files(version, name):
    """Hand-written ``.asm`` files in *version* that define *name*."""
    return list(_asm_definition_files(version).get(name.strip('_$').lower(), []))
