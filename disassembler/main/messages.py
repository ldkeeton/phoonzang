"""Select the C message catalog from upstream decoded code, before compiling.

Always inspect the whole project, even for a partial build. This makes msg.h
independent of build order and of the presence of generated ASM or caches.
The existing classification/naming pass stops before Aztec C overrides; the
same message-flow analysis used by rendering then selects the constants.
"""
import os

from lib import stagelog
from lib.cross_ref import detect, overlay_host_aliases
from lib.msgflow import analyze as message_flow
from lib.msgids import constant_names, message_bases, message_calls, project_data
from lib.sidecar.binary import per_binary


def collect_message_ids(project, jobs=None):
    """The message ids *project*'s code uses.

    Each dependency level analyses in parallel, one process per binary, up to
    *jobs* at once (default: every CPU); ``jobs=1`` stays in this process.
    """
    from concurrent.futures import ProcessPoolExecutor, ThreadPoolExecutor

    from .options import PROJECT_ROOT
    from .worker import Project

    messages, _skipped, bases = project_data(project, PROJECT_ROOT)
    if messages is None:
        return set()
    names, base_names = constant_names(messages, bases), message_bases(bases)
    p = Project(project)
    cross_refs = detect(p.app_dir, p.bins)
    labels, params, used = {}, {}, set()
    pending = set(p.bins)
    jobs = jobs or os.cpu_count() or 4
    executor = ThreadPoolExecutor if jobs == 1 else ProcessPoolExecutor
    with executor(max_workers=min(len(pending), jobs),
                  initializer=_init_worker, initargs=(project,)) as pool:
        while pending:
            ready = sorted(n for n in pending
                           if all(src in labels
                                  for _, src in cross_refs.get(n, ())))
            if not ready:
                raise ValueError(
                    f'{project}: cyclic message-analysis dependencies')
            futures = {}
            for name in ready:
                sources = sorted({src for _, src in cross_refs.get(name, ())})
                foreign = {a: sym for src in sources
                           for a, sym in labels[src].items()}
                foreign_params = {sym: slots for src in sources
                                  for sym, slots in params[src].items()}
                prefix = next(iter(sources), None)
                futures[name] = pool.submit(_analyze_one, name, foreign, prefix,
                                         foreign_params, names, base_names)
            for name, job in futures.items():
                labels[name], params[name], ids = job.result()
                used.update(ids)
                pending.remove(name)
    return used


_project = None    # (name, Project) of this analysis worker


def _init_worker(project):
    global _project
    from .worker import Project
    _project = project, Project(project)


def _analyze_one(name, foreign, prefix, foreign_params, names,
                 base_names):
    """One binary's message analysis: its labels, inferred params and ids."""
    from .runner import analyze, finish

    project, p = _project
    entry = per_binary(p.sidecar, name) if p.sidecar else {}
    rel_path, start_offset = p.bins[name]
    ledger = stagelog.begin(f'{project}/{name}/messages')
    a = None
    try:
        a = analyze(name, p.app_dir, rel_path, start_offset,
                    project=project, sidecar_entry=entry,
                    host_model=p.host_model, foreign_label_map=foreign,
                    foreign_prefix=prefix, messages_only=True)
        if a is None:
            raise FileNotFoundError(rel_path)
        if foreign:
            foreign = overlay_host_aliases(
                foreign, a.ctx.segments, a.instructions,
                start_offset, len(a.data), prefix)

        def resolve(insn):
            if not insn.operands:
                return None
            target = insn.operands[0].imm & 0xffff
            return a.label_map.get(target) or foreign.get(target)

        symbols, _uses, inferred = message_flow(
            a.instructions, message_calls(entry.get('message_calls')),
            names, base_names, resolve, labels=a.label_map,
            foreign=foreign_params)
        by_name = {sym: value for value, sym in names.items()}
        ids = {by_name[sym] for sym in symbols.values()}
        return dict(a.label_map), inferred, ids
    finally:
        if a is not None:
            finish(a)
        stagelog.end(ledger)
