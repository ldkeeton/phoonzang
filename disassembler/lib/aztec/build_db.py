"""Build an Aztec C86 v4.2b runtime function-signature database.

Inputs are OMF object modules produced by :mod:`.libobjs`, which converts the
Aztec C86 runtime objects with the vendor `OBJ` utility (Aztec -> Microsoft OMF).  The modules
come from C.LIB (non-float), M.LIB (float), S.LIB (screen), and the
overlay support objects (OVLD/OVLDPATH/OVBGN).

For every public code symbol we pick a byte window that
  * is unique across the whole library corpus (by symbol name),
  * occurs exactly once in each game binary that contains it,
  * is as long as possible (longest window, then nearest the entry), so the
    disassembly pipeline can validate the anchored function entry.

Each signature records ``entry_offset``, the distance from the function entry
to the matched window.  The matcher computes ``entry = match - entry_offset``,
which lets leaf routines without a ``push bp`` prologue anchor correctly.

Output: .cache/<project>/aztec_funcs.json (signatures for ``lib.match.pattern``).

``make prebuild PROJECT`` runs this.  Standalone, from ``disassembler/``:
``python3 -m lib.aztec.build_db PROJECT`` (the library OMF under
``.cache/<project>/aztec_lib_obj`` is generated on demand by :mod:`.libobjs`).
"""

import collections
import glob
import json
import os
import re

from capstone import Cs, CS_ARCH_X86, CS_MODE_16

from lib.sidecar.loader import load as load_sidecar
from lib.cachedirs import aztec_funcs_path

from . import libobjs, omflib
from .cache import _ROOT
from .compile import routine_label

_MD = Cs(CS_ARCH_X86, CS_MODE_16)
_MD.detail = False
_BOUNDS_CACHE = {}


def _boundaries(data):
    """Instruction-start/end offsets for a reference function's bytes."""
    key = data
    cached = _BOUNDS_CACHE.get(key)
    if cached is None:
        bounds = {0}
        for insn in _MD.disasm(data, 0):
            bounds.add(insn.address)
            bounds.add(insn.address + insn.size)
        cached = bounds
        _BOUNDS_CACHE[key] = cached
    return cached


LIB_DIRS = [
    'c',
    'm',
    's',
    'ovl',
]
LENGTHS = (32, 28, 24, 20, 18, 16, 14, 12, 10, 8, 6)
MAX_START = 48
MIN_ZEROS = 2  # strict pass rejects windows with this many zero bytes


def normalize(name):
    """The C name of a library public: ``__read_`` -> ``__read``, ``$csav`` ->
    ``csav``.  Leading underscores stay: ``_read`` is not ``read``."""
    from .compile import aztec_name
    name = aztec_name(re.sub(r'[^A-Za-z0-9_]', '', name))
    return name or 'aztec_func'


def _collapse_aliases(funcs):
    """Keep one symbol per entry point.

    Several publics can share a segment offset (``$longs``/``$ldv`` in
    LSUBS).  Their bytes are identical, so every window would have two names
    and fail the uniqueness test, leaving the routine without a signature.
    Prefer the shortest name, then the last one defined.
    """
    groups = collections.OrderedDict()
    for f in funcs:
        groups.setdefault((f['module'], f['seg'], f['offset']), []).append(f)
    for group in groups.values():
        yield min(reversed(group), key=lambda f: len(normalize(f['name'])))


def load_functions(here):
    by_name = collections.defaultdict(list)
    for rel in LIB_DIRS:
        d = os.path.join(here, rel)
        for path in sorted(glob.glob(os.path.join(d, '*.OBJ'))):
            try:
                funcs = omflib.public_functions(open(path, 'rb').read())
            except Exception:
                continue
            funcs = [{**f, 'name': libobjs.aztec_spelling(f['name'])}
                     for f in funcs]
            for f in _collapse_aliases(funcs):
                if f['length'] >= 6:
                    by_name[normalize(f['name'])].append(f)
    return by_name


def _build_win_names(by_name):
    """Map ``(length, window) -> {symbol names}`` for uniqueness checks."""
    win_names = collections.defaultdict(set)
    for name, variants in by_name.items():
        for f in variants:
            data = f['bytes']
            for L in LENGTHS:
                for off in range(0, len(data) - L + 1):
                    win_names[(L, data[off:off + L])].add(name)
    return win_names


_MD_DETAIL = Cs(CS_ARCH_X86, CS_MODE_16)
_MD_DETAIL.detail = True


def _frame_only(window):
    """True when *window* is only C frame setup: ``push bp; mov bp, sp``,
    ``sub sp, N``, register saves and argument loads (``mov ax, [bp+4]``).

    Every compiled routine starts that way, so such a window is unique in the
    library only by chance and fires on any program function that happens to
    share it (``atof``'s ``push bp; mov bp,sp; sub sp,4`` on a mouse driver).
    """
    insns = list(_MD_DETAIL.disasm(window, 0))
    if not insns or sum(i.size for i in insns) != len(window):
        return False
    for insn in insns:
        if insn.mnemonic == 'push' or insn.mnemonic in ('sub', 'add') and \
                insn.op_str.startswith('sp,'):
            continue
        if insn.mnemonic == 'mov' and (insn.op_str == 'bp, sp'
                                       or '[bp' in insn.op_str):
            continue
        return False
    return True


def _select(by_name, names, binaries, win_names, allow_zeros):
    """Pick the best window for each name; returns {name: (off, L, w)}."""
    chosen = {}
    for name in names:
        best = None  # (score, off, L, w)
        for off in range(0, MAX_START):
            for L in LENGTHS:
                for f in by_name[name]:
                    data = f['bytes']
                    if off + L > len(data):
                        continue
                    # The window must span whole instructions so it cannot
                    # match an unrelated function that shares a prefix.
                    bounds = _boundaries(data)
                    if off not in bounds:
                        continue
                    if off + L not in bounds and off + L != len(data):
                        continue
                    w = data[off:off + L]
                    if not allow_zeros and w.count(0) >= MIN_ZEROS:
                        continue
                    if len(win_names[(L, w)]) != 1:
                        continue
                    if _frame_only(w):
                        continue
                    occurrences = [bd.count(w) for bd in binaries.values()
                                   if w in bd]
                    if not occurrences or any(c != 1 for c in occurrences):
                        continue
                    # Prefer windows nearest the entry (most reliable anchor),
                    # then the longest such window.
                    score = (-off, L)
                    if best is None or score > best[0]:
                        best = (score, off, L, w)
        if best is not None:
            _, off, L, w = best
            chosen[name] = (off, L, w)
    return chosen


def build(here, apps_dir, out_path, exes):
    by_name = load_functions(here)
    binaries = {}
    for b in exes:
        p = os.path.join(apps_dir, b)
        if os.path.exists(p):
            binaries[b] = open(p, 'rb').read()

    win_names = _build_win_names(by_name)
    names = sorted(by_name)

    strict = _select(by_name, names, binaries, win_names, allow_zeros=False)
    remaining = [n for n in names if n not in strict]
    relaxed = _select(by_name, remaining, binaries, win_names, allow_zeros=True)
    chosen = {**strict, **relaxed}

    signatures = []
    for name in names:
        if name not in chosen:
            continue
        off, L, w = chosen[name]
        has_prologue = any(
            f['bytes'].startswith(b'\x55\x8b\xec') for f in by_name[name]
        )
        prefix = b''
        for f in by_name[name]:
            if f['bytes'][off:off + L] == w:
                prefix = f['bytes'][:off]
                break
        signatures.append({
            'name': routine_label(name),
            'role': 'aztec',
            'library': name,
            'notes': f'Aztec C86 v4.2b runtime {name} (entry+{off}, {L} bytes)',
            'entries': [],
            'entry_offset': off,
            'has_prologue': has_prologue,
            'entry_prefix': prefix.hex(' ').upper(),
            'patterns': [w.hex(' ').upper()],
        })

    payload = {
        'version': 1,
        'source': ('Manx Aztec C86 v4.2b runtime libraries '
                   '(C/M/S + overlay OVLD/OVLDPATH/OVBGN)'),
        'signatures': signatures,
    }
    with open(out_path, 'w') as fh:
        json.dump(payload, fh, indent=2)
        fh.write('\n')
    return len(by_name), len(signatures)


def project_binaries(project):
    """MZ executables listed in the project's sidecar (the uniqueness-search
    corpus).  Empty when there is no sidecar, i.e. no Aztec signature DB."""
    data = load_sidecar(project)
    if not data:
        return []
    return [b['file'] for b in data['binaries'].values()
            if b.get('type') == 'mz']


def build_for_project(project):
    """Write ``.cache/<project>/aztec_funcs.json``; returns its path or None."""
    exes = project_binaries(project)
    if not exes:
        print(f'  aztec db: no binaries configured for {project}; skipped')
        return None
    objs = libobjs.build(project)
    out = aztec_funcs_path(project)
    os.makedirs(os.path.dirname(out), exist_ok=True)
    total, emitted = build(objs, os.path.join(_ROOT, 'apps', project), out, exes)
    print(f'  aztec db: {total} symbols -> {emitted} signatures -> {out}')
    return out


def main(argv=None):
    import sys
    args = sys.argv[1:] if argv is None else argv
    if len(args) != 1:
        print('Usage: python3 -m lib.aztec.build_db PROJECT')
        return 1
    build_for_project(args[0])
    return 0


if __name__ == '__main__':
    raise SystemExit(main())
