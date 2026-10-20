"""Recovery of Aztec runtime routines from the v4.2b sources.

The game links Aztec C86 v4.2b's ``C.LIB``.  For each game function named
after a library routine, the vendor source file that defines it is built the
way Manx's makefiles build the library (:mod:`.libcheck`), and the result is
kept when its *non-relocated* bytes match the original.  An exact match means
the routine can be rebuilt from that source instead of a disassembly.

A compiled candidate always differs from the final image at relocation sites
(call displacements, data pointers).  Those bytes are inherently taken from
the original binary, so the comparison ignores them; everything else must
match exactly.
"""

import hashlib
import os

from . import compile as azc
from . import objcache
from . import sources
from .compile import VERSION
from .objread import fixup_width

def is_asm(filename):
    return filename.lower().endswith('.asm')


def normalize(name):
    from .compile import symbol_key
    return symbol_key(name)


def spellings(symbol):
    """*symbol*, then with each leading ``_`` dropped in turn.

    A signature named after a library public may carry an underscore the
    source does not (``_open`` for ``open``), while ``__read`` is a routine
    of its own.  The source that matches the bytes names the routine.
    """
    yield symbol
    while symbol.startswith('_') and len(symbol) > 1:
        symbol = symbol[1:]
        yield symbol


class Match:
    """A compiled candidate for one game function."""

    __slots__ = ('version', 'filename', 'compiler', 'includes', 'func',
                 'diffs', 'masked', 'error')

    def __init__(self, version, filename, compiler, includes, func,
                 diffs, masked, error=None):
        self.version = version
        self.filename = filename
        self.compiler = compiler
        self.includes = includes
        self.func = func
        self.diffs = diffs
        self.masked = masked
        self.error = error

    @property
    def exact(self):
        return self.error is None and self.func is not None and not self.diffs

    @property
    def length(self):
        return len(self.func.code) if self.func else None

    def __repr__(self):
        state = 'ERROR' if self.error else (
            'exact' if self.exact else f'{len(self.diffs)} diff')
        return (f'Match({self.version}.{self.filename} via {self.compiler}: '
                f'{state}, len={self.length})')


class MuxEngine:
    def __init__(self, objcache_dir=None, patches=None, asm_flags=None,
                 c_flags=None):
        self.objcache_dir = objcache_dir
        # The library makefiles' recipe (small model): ``cc +$(MODEL) -n`` for
        # C and ``as -dMODEL=$(AMODEL)`` for assembly, ``MODEL=``/``AMODEL=0``
        # -- the flags the sidecar's ``compiler_flags`` gives a library name
        # (``LIBRARY_PREFIX``) and its ``.asm``.  Their final ``sqz`` only
        # packs the object, never changing a code byte.
        self.asm_flags = asm_flags
        self.c_flags = c_flags
        # Sidecar ``vendor_patches``: how the game's copy of a library asm
        # routine differs from the vendor source, keyed by (version, file).
        self._patches = {(p.get('version', VERSION), p['file'].lower()): p
                         for p in (patches or {}).values()}
        self._modules = {}
        self.compile_count = 0
        self.errors = []

    def _compile(self, version, filename, source, compiler):
        flags = self.tool_flags(filename)
        key = (version, filename, compiler, flags)
        cached = self._modules.get(key)
        if cached is not None:
            return cached
        disk_key = None
        if self.objcache_dir:
            disk_key = objcache.module_key(
                version, filename, compiler, flags, source)
            disk = objcache.load(self.objcache_dir, disk_key)
            if disk is not None:
                self._modules[key] = disk
                return disk
        try:
            compiled = azc.compile_module(
                source, os.path.splitext(filename)[0],
                compiler=compiler, includes=version, flags=flags,
                kind='asm' if is_asm(filename) else 'c')
        except Exception as exc:  # keep going, record the failure
            compiled = exc
            summary = str(exc).splitlines()[0] if str(exc) else ''
            self.errors.append(
                (version, filename, compiler,
                 f'{type(exc).__name__}: {summary}'[:160]))
        self._modules[key] = compiled
        self.compile_count += 1
        if disk_key is not None:
            objcache.save(self.objcache_dir, disk_key, compiled)
        return compiled

    def source(self, version, filename):
        """The vendor source of *filename*, with any sidecar patch applied."""
        text = sources.catalog(version).get(filename)
        patch = self._patches.get((version, filename))
        if text is None or patch is None:
            return text
        return sources.apply_edits(text, patch['edits'],
                                   f'{version}/{filename}')

    def candidates(self, symbol):
        """Yield ``(version, filename, source, compiler)`` for *symbol*.

        Compilation is not attempted; this is the candidate search space used
        by both :meth:`resolve` and the batched prebuild.
        """
        for _, *candidate in self._candidates(symbol):
            yield tuple(candidate)

    def _candidates(self, symbol):
        """``(name, version, filename, source, compiler)``: the C files, then
        the assembly modules, defining each of :func:`spellings` in turn."""
        names = [normalize(name) for name in spellings(symbol)]
        for name in names:
            for filename in sources.definition_files(VERSION, name):
                yield name, VERSION, filename, self.source(VERSION, filename), VERSION
        for name in names:
            for filename in sources.asm_definition_files(VERSION, name):
                yield name, VERSION, filename, self.source(VERSION, filename), VERSION

    def tool_flags(self, filename):
        """Switches for the tool (``cc`` or ``as``) that builds *filename*."""
        if not is_asm(filename):
            if self.c_flags is None:
                raise ValueError(f'no "cc" flags to compile {filename}')
            return tuple(self.c_flags)
        if self.asm_flags is None:
            raise ValueError(f'no "as" flags to assemble {filename}')
        return tuple(self.asm_flags)

    def compile_key(self, version, filename, source, compiler):
        return objcache.module_key(version, filename, compiler,
                                   self.tool_flags(filename), source)

    def resolve(self, symbol, data, gstart):
        """Return a list of :class:`Match` candidates for *symbol*.

        Compilation stops as soon as an exact match is found, since there is
        no reason to keep trying further source files.
        """
        matches = []
        for name, version, filename, source, compiler in \
                self._candidates(symbol):
            module = self._compile(version, filename, source, compiler)
            if isinstance(module, Exception):
                matches.append(Match(version, filename, compiler,
                                     version, None, None, 0,
                                     error=str(module)))
                continue
            func = module.get(name)
            if func is None:
                continue
            diffs, masked = compare(func, data, gstart)
            match = Match(version, filename, compiler, version,
                          func, diffs, masked)
            matches.append(match)
            if match.exact:
                return [match]
        matches.sort(key=lambda m: (not m.exact, len(m.diffs)
                                    if m.diffs is not None else 1 << 30))
        return matches


def compare(func, data, gstart):
    """Compare compiled *func* to *data* at *gstart*.

    Returns ``(diffs, masked)`` where *diffs* lists code-relative offsets
    that differ and are not covered by a relocation.
    """
    n = len(func.code)
    if gstart < 0 or gstart + n > len(data):
        return list(range(n)), 0
    covered = bytearray(n)
    for fx in func.fixups:
        for k in range(fixup_width(fx.kind)):
            if fx.offset + k < n:
                covered[fx.offset + k] = 1
    diffs = []
    masked = 0
    for i in range(n):
        if covered[i]:
            masked += 1
            continue
        if func.code[i] != data[gstart + i]:
            diffs.append(i)
    return diffs, masked


def source_digest(text):
    return hashlib.sha1(text.encode('latin1', 'replace')).hexdigest()[:12]
