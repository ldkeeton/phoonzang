"""Where each recovered vendor object module sits in the image.

The Aztec linker places an object module as one contiguous unit: every public
routine, every ``static``, and any bytes before the first routine
(``csav.asm``'s ``dw $begin``).  ``mkdir.asm`` is one module even though
``mkdir``, ``rmdir`` and ``chdir`` are three entry points sharing one body.

A module whose whole compile reproduces the image at its place is a *span*:
the build emits it as one fragment named after the vendor source file
(``croot.c`` -> ``aztec_croot.asm``), and its ``.c`` (the whole vendor module,
``aztec_croot.c``) must compile to exactly that fragment.
"""

import collections
import glob
import json
import os
import re

from lib.cachedirs import prebuild_dir

from . import cache, sources
from .compile import ModuleShapeError
from .mux import compare


class ModuleSpan:
    """One vendor module placed in the image.

    *start* is the module's first byte and *length* its code size; *name* is
    what the fragment and its ``.c`` are called (:func:`module_name`); *root*
    is its first routine's label, at ``start + lead``.  *members* maps every label at one of the module's
    routines to its address; *keys* maps each routine's normalized C name to
    its label.  *entry* is the manifest provenance the module compiles with.
    """

    __slots__ = ('name', 'start', 'length', 'root', 'lead', 'members', 'keys',
                 'entry', 'file')

    def __init__(self, name, start, length, root, lead, members, keys, entry):
        self.name = name
        self.start = start
        self.length = length
        self.root = root
        self.lead = lead
        self.members = members
        self.keys = keys
        self.entry = entry
        self.file = entry['file']

    @property
    def end(self):
        return self.start + self.length

    def __repr__(self):
        return (f'ModuleSpan({self.name}: {self.root} '
                f'0x{self.start:x}+0x{self.length:x}, '
                f'{sorted(self.members)})')


def module_key(entry):
    """What makes two manifest entries the same compiled module."""
    return (entry['source_version'], entry['file'], entry['compiler'],
            entry['includes'], tuple(entry.get('flags') or ()))


def clashing_stems(project):
    """Source stems the project links from two vendor files.

    ``misc/lmalloc.c`` (``malloc``/``free``) and ``dos20/lmalloc.asm``
    (``lmalloc``/``lfree``) are unrelated modules sharing a stem.  Read from
    every binary's manifest, so a module is named alike in all of them.
    """
    files = collections.defaultdict(set)
    for path in glob.glob(os.path.join(prebuild_dir(project),
                                       '*_aztec_mux.json')):
        try:
            with open(path) as f:
                functions = json.load(f).get('functions', {})
        except (OSError, ValueError):
            continue
        for entry in functions.values():
            files[_clean(os.path.splitext(entry['file'])[0])].add(
                entry['file'].lower())
    return {stem for stem, seen in files.items() if len(seen) > 1}


def _clean(text):
    return re.sub(r'[^A-Za-z0-9_]+', '_', text).lower()


def module_name(filename, clashes=(), version=None):
    """The fragment name of vendor module *filename*: ``aztec_<stem>``.

    Where the project links two vendor files of one stem (*clashes*,
    :func:`clashing_stems`), each takes its vendor directory too:
    ``aztec_misc_lmalloc`` and ``aztec_dos20_lmalloc``.
    """
    stem = _clean(os.path.splitext(os.path.basename(filename))[0])
    if stem in clashes and version is not None:
        directory = sources.source_dir(version, filename)
        if directory:
            return f'aztec_{_clean(directory)}_{stem}'
    return f'aztec_{stem}'


def entry_for(project, name, entries):
    """The manifest entry module *name*'s ``.c`` compiles with, or None.

    By module name, never by label: ``aztec_croot.c`` compiles as ``croot.c``,
    whose first routine is ``noper``.
    """
    clashes = clashing_stems(project)
    return next((entry for entry in entries.values()
                 if _name_of(entry, clashes) == name), None)


def _name_of(entry, clashes):
    return module_name(entry['file'], clashes, entry['source_version'])


def module_spans(project, binary, data, label_map, entries):
    """``(spans, misses)`` for the manifest's modules in *data*.

    *spans* is ``{module name: ModuleSpan}``.  *misses* is ``{file: reason}``
    for a module that cannot be one fragment built from its pristine C: its
    compile is not byte-exact at its place, its members disagree on where it
    starts, or it overlaps another module.  A miss stays assembly.
    """
    starts = {}
    for addr, sym in label_map.items():
        if isinstance(sym, str):
            starts.setdefault(str(sym), addr)
    groups = collections.defaultdict(list)
    for label, entry in entries.items():
        if label in starts:
            groups[module_key(entry)].append(label)

    clashes = clashing_stems(project)
    spans, misses = {}, {}
    for labels in groups.values():
        labels.sort(key=lambda label: starts[label])
        entry = entries[labels[0]]
        span, why = _place(project, binary, data, label_map, starts,
                           {label: entries[label] for label in labels},
                           _name_of(entry, clashes))
        if span is None:
            misses[entry['file']] = why
        else:
            spans[span.name] = span

    # Two candidates for one place (``sbegin.asm`` and ``lbegin.asm`` both
    # define ``_exit``) cannot both be the linked object.
    placed = sorted(spans.values(), key=lambda span: span.start)
    for before, after in zip(placed, placed[1:]):
        if after.start < before.end:
            for span in (before, after):
                spans.pop(span.name, None)
                misses[span.file] = (f'overlaps {(after if span is before else before).file} '
                                     f'at 0x{after.start:x}')
    return spans, misses


def _place(project, binary, data, label_map, starts, entries, name):
    """``(ModuleSpan, None)`` or ``(None, reason)`` for one module whose
    manifest *entries* (``{label: entry}``) are in address order."""
    first, entry = next(iter(entries.items()))
    text = cache.seed_source_text(project, binary, first, entry)
    try:
        whole = cache.compile_source(project, binary, first, entry, text)
    except ModuleShapeError as exc:
        return None, str(exc)
    except Exception as exc:
        return None, f'compile failed: {str(exc).splitlines()[0][:80]}'

    bases = set()
    for label, member in entries.items():
        offset = whole.members.get(cache.own_key(label, member))
        if offset is None:
            return None, f'the module defines no {label}'
        bases.add(starts[label] - offset)
    if len(bases) != 1:
        return None, ('its routines disagree on where it starts: '
                      + ', '.join(f'0x{base:x}' for base in sorted(bases)))
    base = bases.pop()
    diffs, _ = compare(whole, data, base)
    if diffs:
        return None, (f'{len(diffs)} of {len(whole.code)} bytes differ '
                      f'at 0x{base:x}')

    members, keys = {}, {}
    for key, offset in sorted(whole.members.items(), key=lambda kv: kv[1]):
        sym = label_map.get(base + offset)
        if isinstance(sym, str):
            members.setdefault(str(sym), base + offset)
            keys.setdefault(key, str(sym))
    if not members:
        return None, 'no routine of it has a label'
    root = min(members, key=lambda label: (members[label], label))
    return ModuleSpan(name, base, len(whole.code), root, members[root] - base,
                      members, keys, entry), None

