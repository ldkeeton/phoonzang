"""Resolve Aztec runtime routines to C and compile the current seeds."""

import os

from .options import (
    AZTEC_MUX_DISABLED,
    AZTEC_MUX_REFRESH,
    AZTEC_PREBUILD,
    AZTEC_PREBUILD_ONLY,
)


def _aztec_c_overrides(project, name, data, label_map, out_dir):
    """Resolve Aztec runtime routines to C and compile the current seeds.

    Returns ``(overrides, entries)`` where *overrides* feeds the byte-preserving
    splice in :func:`lib.compare.verify` and *entries* records the
    winning provenance.

    ``WIZ7_AZTEC_PREBUILD=1`` runs the DOSBox search and writes
    ``asm_prebuild_<project>/``; otherwise the prebuilt manifest is read and a
    missing prebuild is a hard error.  The seed ``.c`` files live in
    ``<out_dir>/<binary>/`` and are written only when absent, so a no-clean
    debug rebuild respects hand edits.
    """
    if not project or AZTEC_MUX_DISABLED:
        return {}, {}
    labels = [(addr, nm) for addr, nm in label_map.items()
              if isinstance(nm, str) and nm.startswith('aztec_')]
    if not labels:
        return {}, {}
    from lib.aztec import cache
    from lib.aztec.objread import fixup_width
    mode = 'prebuild' if (AZTEC_PREBUILD or AZTEC_MUX_REFRESH) else 'build'
    try:
        entries = cache.load_or_build(project, name, data, labels, mode=mode)
    except cache.PrebuildMissing as exc:
        raise SystemExit(f'error: {exc}')
    except Exception as exc:  # never let C recovery break the build
        print(f'  aztec mux: skipped ({exc})')
        return {}, {}
    if AZTEC_PREBUILD_ONLY:
        return {}, entries

    dest = os.path.join(out_dir, name)
    overrides = {}
    for label, entry in entries.items():
        text = _seed_aztec_c(cache, project, name, label, entry, dest)
        try:
            func = cache.compile_source(project, label, entry, text)
        except Exception as exc:
            print(f'  aztec mux: {label}: compile failed ({exc})')
            continue
        overrides[label] = {
            'code': func.code,
            'fixups': [(fx.offset, fixup_width(fx.kind))
                       for fx in func.fixups],
            'length': entry.get('original_length') or len(func.code),
            'source_version': entry['source_version'],
            'file': entry['file'], 'compiler': entry['compiler'],
        }
    return overrides, entries


def _seed_aztec_c(cache, project, binary, label, entry, dest):
    """Return the routine's C text, writing a seed only when it is absent."""
    os.makedirs(dest, exist_ok=True)
    path = os.path.join(dest, f'{label}.c')
    if os.path.exists(path):
        with open(path) as f:
            return f.read()
    text = cache.seed_source_text(project, binary, label, entry)
    with open(path, 'w') as f:
        f.write(text)
    return text
