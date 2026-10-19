"""Host helpers for overlay assembly (plan.md D7.0c / D7.1).

An overlay is a *separate* NASM assembly.  It sees the host program's labels by
including the host source in a section that emits no bytes (see
``lib.compare.render``), so no table of host-derived numbers is generated any
more.  What remains here is the host's name, the include arguments for a
generated ``src_*`` tree, and the union of the host DS offsets the overlays
reference (the host declares one recipe per offset).

Every file one binary exports for another (labels, data names, pointer
arguments, DS starts and refs, sidecar use) goes through :func:`write_export`
and :func:`read_export`, which stamp it with the build that wrote it.  Inside a
build (:func:`begin_run`) a missing file, or one an earlier build left, is a
:class:`LinkError` rather than an empty map, so a build that passes read only
what it wrote itself: one build is complete.
"""

import json
import os
import uuid

from lib.cachedirs import labels_dir, project_cache, project_of_src_dir


class LinkError(RuntimeError):
    """Raised when an export is missing, left by another build, or disagrees."""


#: The running build's id; set by :func:`begin_run`, inherited by its workers.
RUN_ENV = 'ASM_BUILD_RUN'


def begin_run():
    """Start a build: every export written or read from now on carries its id.

    Returns the previous id, for :func:`end_run`.
    """
    previous = os.environ.get(RUN_ENV)
    os.environ[RUN_ENV] = uuid.uuid4().hex
    return previous


def end_run(previous):
    """Restore the id :func:`begin_run` replaced."""
    if previous is None:
        os.environ.pop(RUN_ENV, None)
    else:
        os.environ[RUN_ENV] = previous


def current_run():
    """The running build's id, or ``None`` outside a build."""
    return os.environ.get(RUN_ENV)


def _load(path):
    """``(run, data)`` of an export; a file from before the stamp has no run."""
    with open(path) as f:
        record = json.load(f)
    if isinstance(record, dict) and record.keys() == {'run', 'data'}:
        return record['run'], record['data']
    return None, record


def read_export(path):
    """The data of a :func:`write_export` file.

    Raises :class:`LinkError` when it is missing, or when a build is running and
    the file is not this build's.  Outside a build (resplice, the tools) any
    build's file is taken.
    """
    if not os.path.exists(path):
        raise LinkError(f'{os.path.basename(path)}: not exported '
                        f'({"by this build" if current_run() else "yet"})')
    written, data = _load(path)
    run = current_run()
    if run is not None and written != run:
        raise LinkError(f'{os.path.basename(path)}: left by an earlier build')
    return data


def write_export(path, data, *, once=False):
    """Write *data* for another binary, stamped with the running build.

    A build writes an export once.  Writing the same data again is a no-op;
    different data is a :class:`LinkError` -- a binary may already have read
    the first -- unless *once* says the first write is the one that counts
    (later writes are dropped).
    """
    run = current_run()
    data = json.loads(json.dumps(data))
    if run is not None and os.path.exists(path):
        written, existing = _load(path)
        if written == run:
            if once or existing == data:
                return
            raise LinkError(f'{os.path.basename(path)}: changed after this '
                            f'build exported it')
    os.makedirs(os.path.dirname(path) or '.', exist_ok=True)
    with open(path, 'w') as f:
        json.dump({'run': run, 'data': data}, f, sort_keys=True)


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


def host_data_export_name(name):
    """The per-binary export file :func:`collect_host_data` reads."""
    return f'{name}_hostdata.json'


def write_host_data_export(project, name, refs):
    """Persist the host-owned DS symbols one binary references."""
    write_export(os.path.join(labels_dir(project),
                              host_data_export_name(name)), refs)


def collect_host_data(labels_path, names):
    """The union of the ``<name>_hostdata.json`` exports of *names*.

    Each consumer exports the host-owned DS symbols it references (``{name:
    record}``, :func:`lib.symtab.encode`); the union is what the host must
    declare.  Raises :class:`LinkError` when two consumers disagree on one.
    """
    union = {}
    for name in sorted(names):
        path = os.path.join(labels_path, host_data_export_name(name))
        for sym, value in read_export(path).items():
            if sym in union and union[sym] != value:
                raise LinkError(f'conflicting DS symbol {sym}')
            union[sym] = value
    return union


def read_host_data_offsets(path):
    """``{symbol: offset}`` from a :func:`write_host_data_offsets` file."""
    from lib.symtab import decode
    return {decode(name, record): record['offset']
            for name, record in read_export(path).items()}


def write_host_data_offsets(project, union):
    """Persist the union so the host can be regenerated with it."""
    path = os.path.join(labels_dir(project), HOST_DATA_OFFSETS_NAME)
    write_export(path, union)
    return path


#: The internal build artifact naming the host-space DS starts any binary of
#: the host's family addresses absolutely (the indexed-binding union).
DS_STARTS_NAME = 'ds_starts.json'


def ds_starts_export_name(name):
    """The per-binary export file :func:`collect_ds_starts` reads."""
    return f'{name}_dsstarts.json'


def write_ds_starts_export(project, name, starts):
    """Persist one binary's absolute host-space DS starts.

    The union is drawn from each binary's first render, the one without
    ``--ds-starts``; a later render that binds with the union only adds starts
    already in it, so the first write is the one kept.
    """
    write_export(os.path.join(labels_dir(project), ds_starts_export_name(name)),
                 sorted(starts), once=True)


def collect_ds_starts(labels_path, names):
    """The union of the ``<name>_dsstarts.json`` exports of *names*.

    Only the host and its overlays share one data segment, so the caller
    names them; another MZ image's offsets name different objects.
    """
    union = set()
    for name in sorted(names):
        union.update(read_export(os.path.join(labels_path,
                                              ds_starts_export_name(name))))
    return union


def read_ds_starts(path):
    """The offsets of a :func:`write_ds_starts` file, as a frozenset."""
    return frozenset(read_export(path))


def write_ds_starts(project, union):
    """Persist the union so the host family's second pass can bind with it."""
    path = os.path.join(labels_dir(project), DS_STARTS_NAME)
    write_export(path, sorted(union))
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
    write_export(os.path.join(labels_dir(project), sidecar_use_export_name(name)),
                 {key: sorted(v) for key, v in used.items()})


def collect_sidecar_use(labels_path, names):
    """``{key: set}``: the union of the ``_sidecaruse.json`` exports of *names*."""
    union = {}
    for name in sorted(names):
        path = os.path.join(labels_path, sidecar_use_export_name(name))
        for key, used in read_export(path).items():
            union.setdefault(key, set()).update(used)
    return union
