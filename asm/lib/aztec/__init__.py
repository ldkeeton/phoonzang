"""Aztec C86 runtime recovery for the Wizardry 7 rebuild.

The game's runtime library is a mix of Manx Aztec C86 sources built by more
than one code generator (the vendored 3.40b sources and the 5.2a compiler
produced the bytes).  This package:

* reads the original sources from the vendored trees (:mod:`sources`),
* compiles candidates through DOSBox (:mod:`compile`),
* picks the pairing that reproduces each routine byte-for-byte
  (:mod:`mux`, cached in :mod:`cache`),

so an Aztec runtime routine can be emitted as ``.c`` instead of disassembly.
A routine the code generator cannot reproduce (or that has no source) stays as
generated ``.asm``, or is hand-written (``; asm only``; see :mod:`lib.asm_only`).
"""

from . import sources  # noqa: F401
from .mux import MuxEngine, normalize, compare  # noqa: F401
