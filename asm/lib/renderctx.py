"""Persisted render context for byte-exact C-fragment resplicing.

A full ``make build`` resolves every operand to a namespace symbol
(``mem_symbols`` / ``mem_equ`` / ``data_labels``), computes the binary's local
labels, and records the effective label lines and render flags.
``make elf-rebuild``'s resplice step recompiles the C-routine seeds and must
re-render their fragments *identically* to the build -- otherwise merely
launching the debugger rewrites committed ``asm_<project>/`` fragments with
bare displacements and renumbered locals.

The maps are build artifacts (not source), so they live under
``.cache/render/<project>/<binary>.json`` and are read back only by the
resplice step.
"""

import os

_ASM_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
_PROJECT_ROOT = os.path.dirname(_ASM_DIR)


def context_dir(project):
    """Return the ``.cache`` directory holding *project*'s render contexts."""
    return os.path.join(_PROJECT_ROOT, '.cache', 'render', project)


def context_path(project, binary):
    """Return the ``.cache`` path of *binary*'s render context."""
    return os.path.join(context_dir(project), f'{binary}.json')


def _encode_addr_map(mapping):
    return {str(addr): name for addr, name in (mapping or {}).items()}


def encode(context):
    """Return a JSON-serializable form of *context*.

    Dictionary keys must be strings, so address-keyed maps are stringified and
    the operand-keyed ``mem_symbols`` becomes ``"<addr>,<index>"``.
    """
    return {
        'schema_version': 1,
        'local_labels': _encode_addr_map(context.get('local_labels')),
        'data_labels': _encode_addr_map(context.get('data_labels')),
        'mem_symbols': {f'{addr},{idx}': name
                        for (addr, idx), name
                        in (context.get('mem_symbols') or {}).items()},
        'mem_equ': dict(context.get('mem_equ') or {}),
        'foreign_label_map': _encode_addr_map(context.get('foreign_label_map')),
        'immediate_labels': _encode_addr_map(context.get('immediate_labels')),
        'exact_bytes': bool(context.get('exact_bytes', False)),
        'label_records': [[offset, text]
                          for offset, text in context.get('label_records', ())],
    }


def decode(raw):
    """Inverse of :func:`encode`; every map is keyed by ``int`` again."""
    foreign = raw.get('foreign_label_map')
    immediate = raw.get('immediate_labels')
    return {
        'local_labels': {int(k): v
                         for k, v in raw.get('local_labels', {}).items()},
        'data_labels': {int(k): v
                        for k, v in raw.get('data_labels', {}).items()},
        'mem_symbols': {tuple(int(part) for part in k.split(',')): v
                        for k, v in raw.get('mem_symbols', {}).items()},
        'mem_equ': raw.get('mem_equ', {}),
        'foreign_label_map': ({int(k): v for k, v in foreign.items()}
                              if foreign else None),
        'immediate_labels': ({int(k): v for k, v in immediate.items()}
                             if immediate else None),
        'exact_bytes': bool(raw.get('exact_bytes', False)),
        'label_records': [(int(offset), text)
                          for offset, text in raw.get('label_records', ())],
    }
