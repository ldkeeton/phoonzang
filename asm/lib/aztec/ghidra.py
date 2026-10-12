"""Ghidra integration stub -- NOT implemented yet.

The mixed-version mux (:mod:`lib.aztec.mux`) recovers only routines that have
a matching C source in the vendored Manx trees.  Everything else currently
stays as generated disassembly (``.asm``).

This module marks the seam where a Ghidra-assisted decompiler would slot in
for the *next* epic: routines with no source.  The intended contract is the
same quality gate the mux already enforces -- any candidate function produced
here must be compiled by the matching Aztec compiler and reproduce the
original non-relocated bytes before it is emitted as ``.c``::

    candidate_c = recover(label, game_bytes, gstart)   # Ghidra headless
    match = verify_candidate(candidate_c, game_bytes, gstart, compiler='v52a')
    if match.exact:
        emit_c(label, candidate_c)

Design constraints recorded for later:

* Use ``analyzeHeadless`` with a small post-script that dumps decompiled C
  for the requested function, keyed by file offset.
* Feed the result back through :func:`lib.aztec.mux.compare` -- never trust
  Ghidra output on its own; it is a *candidate generator*, not a verifier.
* Keep the same prebuild manifest
  (``.cache/<project>/prebuild/<binary>_aztec_mux.json``) so the build sees
  Ghidra-recovered routines exactly like mux-recovered ones.
"""


class GhidraUnavailable(RuntimeError):
    pass


def recover(label, game_bytes, gstart, **kwargs):
    """Return candidate C source for *label*, or raise if Ghidra is absent."""
    raise GhidraUnavailable(
        'Ghidra recovery is not implemented; this is a stub for the '
        'decompilation epic. Routines without Manx C sources remain .asm.')
