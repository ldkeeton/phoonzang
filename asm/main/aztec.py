"""Resolve Aztec runtime routines to C and compile the current seeds."""

import json
import os

from lib.shared import FOLDER

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

    ``ASM_AZTEC_PREBUILD=1`` runs the DOSBox search and writes
    ``.cache/<project>/prebuild/``; otherwise the prebuilt manifest is read and a
    missing prebuild is a hard error.  The seed ``.c`` files live in
    ``<out_dir>/<binary>/`` and are written only when absent, so a no-clean
    debug rebuild respects hand edits.
    """
    if not project or AZTEC_MUX_DISABLED:
        return {}, {}
    labels = [(addr, nm) for addr, nm in label_map.items()
              if isinstance(nm, str) and nm.startswith('aztec_')]
    dest = os.path.join(out_dir, name)
    known = {nm for nm in label_map.values() if isinstance(nm, str)}
    hand_c = sorted(f[:-2] for f in (os.listdir(dest) if os.path.isdir(dest)
                                     else ()) if f.endswith('.c'))
    shared_dir = os.path.join(out_dir, FOLDER)
    # C shared between binaries (lib.shared) lives in shared/; only the labels
    # this binary has are its own.
    shared_c = sorted(f[:-2] for f in (os.listdir(shared_dir)
                                       if os.path.isdir(shared_dir) else ())
                      if f.endswith('.c') and f[:-2] in known)
    if not labels and not hand_c and not shared_c:
        return {}, {}
    from lib.aztec import cache
    from lib.aztec.objread import fixup_width
    from lib.cachedirs import spans_dir
    entries = {}
    if labels:
        mode = 'prebuild' if (AZTEC_PREBUILD or AZTEC_MUX_REFRESH) else 'build'
        try:
            entries = cache.load_or_build(project, name, data, labels,
                                          mode=mode)
        except cache.PrebuildMissing as exc:
            raise SystemExit(f'error: {exc}')
        except Exception as exc:  # never let C recovery break the build
            print(f'  aztec mux: skipped ({exc})')
            return {}, {}
    if AZTEC_PREBUILD_ONLY:
        return {}, entries

    orphans = sorted(f'{label}.c' for label in hand_c if label not in known)
    if orphans:
        raise SystemExit(f'error: C file(s) in {dest} with no matching asm '
                         f'routine: {", ".join(orphans)}')
    # A routine's fragment span, recorded by the previous build, is where the
    # routine really ends.  The object's public extent can run past it into a
    # trailing ``static`` neighbour (``putc`` compiles ``closall`` inside its
    # extent; the splitter gives each its own fragment), so the C override must
    # own only the span -- never the neighbour's bytes or its ``.N`` labels.
    spans = {}
    spans_path = os.path.join(spans_dir(project),
                              f'{name}_aztec_spans.json')
    if os.path.isfile(spans_path):
        with open(spans_path) as f:
            spans = json.load(f)

    def owned_length(label, entry, func):
        length = entry.get('original_length') or len(func.code)
        span = spans.get(label)
        if span:
            length = min(length, span[1] - span[0])
        return length

    overrides = {}
    for label, entry in entries.items():
        if cache.is_asm_entry(entry):
            continue  # hand-written: annotated, never recompiled (see below)
        text = _seed_aztec_c(cache, project, name, label, entry, dest)
        try:
            func = cache.compile_source(project, label, entry, text)
        except Exception as exc:
            print(f'  aztec mux: {label}: compile failed ({exc})')
            continue
        length = owned_length(label, entry, func)
        func = func.truncate(length)
        path = c_path(dest, label)
        overrides[label] = {
            # The linker resolves the routine's relocations against the build's
            # label maps once those exist (lib.compare.coverrides).
            'func': func, 'text': text, 'path': path,
            'own_key': cache.own_key(label),
            'pristine': text == cache.seed_source_text(
                project, name, label, entry),
            'compile': (lambda t, _l=label, _e=entry:
                        cache.compile_source(project, _l, _e, t)),
            'code': func.code,
            'fixups': [(fx.offset, fixup_width(fx.kind))
                       for fx in func.fixups],
            'length': length,
            'source_version': entry['source_version'],
            'file': entry['file'], 'compiler': entry['compiler'],
        }
    # A hand-written <label>.c with no compiled manifest entry (an application
    # routine, a miss, or a vendor-asm routine) replaces that routine too.  Its
    # original length comes from the span the previous build recorded.
    for label in sorted(set(hand_c) | set(shared_c)):
        entry = entries.get(label)
        if entry is not None and not cache.is_asm_entry(entry):
            continue
        path = c_path(dest, label)
        with open(path) as f:
            text = f.read()
        entry = cache.default_entry(label, project)
        try:
            func = cache.compile_source(project, label, entry, text)
        except Exception as exc:
            raise SystemExit(f'error: {label}.c: compile failed ({exc})')
        span = spans.get(label)
        overrides[label] = {
            'func': func, 'text': text, 'path': path,
            'own_key': cache.own_key(label), 'pristine': False,
            'compile': (lambda t, _l=label, _e=entry:
                        cache.compile_source(project, _l, _e, t)),
            'code': func.code,
            'fixups': [(fx.offset, fixup_width(fx.kind))
                       for fx in func.fixups],
            'length': (span[1] - span[0]) if span else len(func.code),
            'source_version': entry['source_version'],
            'file': entry['file'], 'compiler': entry['compiler'],
        }
    return overrides, entries


def c_path(dest, label):
    """The routine's ``.c``: the shared ``shared/`` copy when there is one."""
    shared = os.path.join(os.path.dirname(dest), FOLDER, f'{label}.c')
    return shared if os.path.exists(shared) else os.path.join(dest, f'{label}.c')


def _seed_aztec_c(cache, project, binary, label, entry, dest):
    """Return the routine's C text, writing a seed only when it is absent."""
    os.makedirs(dest, exist_ok=True)
    path = c_path(dest, label)
    if os.path.exists(path):
        with open(path) as f:
            return f.read()
    text = cache.seed_source_text(project, binary, label, entry)
    with open(path, 'w') as f:
        f.write(text)
    return text


def _aztec_asm_annotations(entries, label_map):
    """Vendor label names/comments for hand-written (``.asm``) routines.

    Returns ``{label: {'start', 'end', 'labels': {addr: name},
    'comments': {addr: text}}}`` with absolute addresses.  The disassembly's
    bytes already equal the vendor routine's; this only carries what the
    vendor source adds (the author's local label names and comments).
    """
    from lib.aztec import cache
    by_name = {}
    for addr, nm in label_map.items():
        if isinstance(nm, str):
            by_name.setdefault(nm, addr)
    out = {}
    for label, entry in entries.items():
        start = by_name.get(label)
        if (start is None or not cache.is_asm_entry(entry)
                or not (entry.get('labels') or entry.get('comments'))):
            continue
        out[label] = {
            'start': start,
            'end': start + (entry.get('original_length') or 0),
            'labels': {start + off: name for off, name in entry.get('labels', ())},
            'comments': {start + off: text
                         for off, text in entry.get('comments', ())},
        }
    return out

