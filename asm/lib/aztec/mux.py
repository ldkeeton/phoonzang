"""Mixed-version recovery of Aztec runtime routines.

The Wizardry 7 binaries were built from a mix of Manx runtime sources, and
quite possibly with more than one code generator.  For each game function we
try every plausible (source, compiler) pairing, relocate the candidate's
code, and keep the ones whose *non-relocated* bytes match the original.  An
exact match means the routine can be rebuilt from that C source instead of a
disassembly.

A compiled candidate always differs from the final image at relocation sites
(call displacements, data pointers).  Those bytes are inherently taken from
the original binary, so the comparison ignores them; everything else must
match exactly.
"""

import hashlib
import os

from . import compile as azc
from . import sources
from .objread import fixup_width

# Source trees to draw C from, then code generators to try (most likely
# first so an exact hit short-circuits).
SOURCE_VERSIONS = ('v340a', 'v52a')
COMPILER_VERSIONS = ('v52a', 'v340a')

# v3.40a predates the ``+y`` switch used to build the v5.2a library.
COMPILER_FLAGS = {
    'v52a': ('-n', '+y'),
    'v340a': ('-n',),
}


def normalize(name):
    return name.strip('_').lower()


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
    def __init__(self, source_versions=SOURCE_VERSIONS,
                 compiler_versions=COMPILER_VERSIONS, flags=('-n', '+y')):
        self.source_versions = source_versions
        self.compiler_versions = compiler_versions
        self.flags = tuple(flags)
        self._modules = {}
        self.compile_count = 0

    def _compile(self, version, filename, source, compiler):
        flags = COMPILER_FLAGS.get(compiler, self.flags)
        key = (version, filename, compiler, flags)
        cached = self._modules.get(key)
        if cached is None:
            try:
                cached = azc.compile_module(
                    source, os.path.splitext(filename)[0],
                    compiler=compiler, includes=version, flags=flags)
            except Exception as exc:  # keep going, record the failure
                cached = exc
            self._modules[key] = cached
            self.compile_count += 1
        return cached

    def resolve(self, symbol, data, gstart):
        """Return a list of :class:`Match` candidates for *symbol*.

        Compilation stops as soon as an exact match is found, since there is
        no reason to keep trying further (source, compiler) pairings.
        """
        name = normalize(symbol)
        matches = []
        for version in self.source_versions:
            for filename in sources.definition_files(version, name):
                source = sources.catalog(version).get(filename)
                if source is None:
                    continue
                for compiler in self.compiler_versions:
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
