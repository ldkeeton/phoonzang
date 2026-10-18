"""Host helpers for overlay assembly (plan.md D7.0c / D7.1).

An overlay is a *separate* NASM assembly.  It sees the host program's labels by
including the host source in a section that emits no bytes (see
``lib.compare.render``), so no table of host-derived numbers is generated any
more.  What remains here is the host's name, the include arguments for a
generated ``src_*`` tree, and the union of the host DS offsets the overlays
reference (the host declares one recipe per offset).
"""

import json
import os

from lib.cachedirs import labels_dir, project_cache, project_of_src_dir


class LinkError(RuntimeError):
    """Raised when overlay-exported host data disagrees."""


def cache_include_arg(asm_dir):
    """Return the ``-I`` argument that exposes ``.cache/<project>/`` to NASM."""
    project = project_of_src_dir(asm_dir)
    if project is None:
        return None
    return f'-I{project_cache(project)}/'


def include_args(asm_dir):
    """Return the ``-I`` arguments for assembling a generated ``src_*`` tree."""
    args = [f'-I{asm_dir}/']
    cache_arg = cache_include_arg(asm_dir)
    if cache_arg:
        args.append(cache_arg)
    return args


#: The internal build artifact naming the overlay-referenced DS offsets.
HOST_DATA_OFFSETS_NAME = 'host_data_offsets.json'


def collect_host_data(labels_path):
    """Return the union of every ``<name>_hostdata.json`` map under *labels_path*.

    Each overlay exports the host-owned DS symbols it references (``{name:
    record}``, :func:`lib.symtab.encode`); the union is what the host must
    declare.  Raises :class:`LinkError` when two consumers disagree on one.
    """
    union = {}
    if not os.path.isdir(labels_path):
        return union
    for entry in sorted(os.listdir(labels_path)):
        if not entry.endswith('_hostdata.json'):
            continue
        with open(os.path.join(labels_path, entry)) as f:
            for name, value in json.load(f).items():
                if name in union and union[name] != value:
                    raise LinkError(f'conflicting DS symbol {name}')
                union[name] = value
    return union


def read_host_data_offsets(path):
    """``{symbol: offset}`` from a :func:`write_host_data_offsets` file."""
    from lib.symtab import decode
    with open(path) as f:
        return {decode(name, record): record['offset']
                for name, record in json.load(f).items()}


def write_host_data_offsets(project, union):
    """Persist the union so the host can be regenerated with it."""
    path = os.path.join(labels_dir(project), HOST_DATA_OFFSETS_NAME)
    os.makedirs(os.path.dirname(path), exist_ok=True)
    with open(path, 'w') as f:
        json.dump(union, f, indent=1, sort_keys=True)
    return path


#: The internal build artifact naming the host-space DS starts any binary of
#: the host's family addresses absolutely (the indexed-binding union).
DS_STARTS_NAME = 'ds_starts.json'


def ds_starts_export_name(name):
    """The per-binary export file :func:`collect_ds_starts` reads."""
    return f'{name}_dsstarts.json'


def write_ds_starts_export(project, name, starts):
    """Persist one binary's absolute host-space DS starts."""
    target = labels_dir(project)
    os.makedirs(target, exist_ok=True)
    with open(os.path.join(target, ds_starts_export_name(name)), 'w') as f:
        json.dump(sorted(starts), f)


def collect_ds_starts(labels_path, names):
    """The union of the ``<name>_dsstarts.json`` exports of *names*.

    Only the host and its overlays share one data segment, so the caller
    names them; another MZ image's offsets name different objects.
    """
    union = set()
    for name in sorted(names):
        path = os.path.join(labels_path, ds_starts_export_name(name))
        if os.path.exists(path):
            with open(path) as f:
                union.update(json.load(f))
    return union


def read_ds_starts(path):
    """The offsets of a :func:`write_ds_starts` file, as a frozenset."""
    with open(path) as f:
        return frozenset(json.load(f))


def write_ds_starts(project, union):
    """Persist the union so the host family's second pass can bind with it."""
    path = os.path.join(labels_dir(project), DS_STARTS_NAME)
    os.makedirs(os.path.dirname(path), exist_ok=True)
    with open(path, 'w') as f:
        json.dump(sorted(union), f)
    return path


def host_name(bins):
    """Return the MZ host binary's name (``ds`` when present), or ``None``."""
    if 'ds' in bins:
        return 'ds'
    for name in sorted(bins):
        if bins[name][1] == 0x200:
            return name
    return None


def sidecar_use_export_name(name):
    """The per-binary export file :func:`collect_sidecar_use` reads."""
    return f'{name}_sidecaruse.json'


def write_sidecar_use_export(project, name, used):
    """Persist the build-wide sidecar entries one binary applied.

    *used* maps a top-level sidecar key (``routines``, ``api_dispatch`` ...)
    to the entries of it this binary applied.
    """
    target = labels_dir(project)
    os.makedirs(target, exist_ok=True)
    with open(os.path.join(target, sidecar_use_export_name(name)), 'w') as f:
        json.dump({key: sorted(v) for key, v in used.items()}, f, indent=1,
                  sort_keys=True)


def collect_sidecar_use(labels_path, names):
    """``{key: set}``: the union of the ``_sidecaruse.json`` exports of *names*."""
    union = {}
    for name in sorted(names):
        path = os.path.join(labels_path, sidecar_use_export_name(name))
        if os.path.exists(path):
            with open(path) as f:
                for key, used in json.load(f).items():
                    union.setdefault(key, set()).update(used)
    return union
