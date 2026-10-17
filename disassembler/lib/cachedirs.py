"""Single source for every path under ``.cache/``.

Layout::

    .cache/<project>/prebuild/          mux manifests, extracted C seeds, objs/
    .cache/<project>/aztec_lib_obj/     runtime-library OMF (c m ms s ovl)
    .cache/<project>/aztec_funcs.json   runtime signature DB built from those
    .cache/<project>/render/            render contexts
    .cache/<project>/labels/            derived host/foreign label values
    .cache/<project>/symbols/           every name a binary's render uses
    .cache/<project>/spans/             Aztec routine span sidecars
    .cache/<project>/addresses/         address inventories
    .cache/<project>/stats/             per-binary stats
    .cache/<project>/traces/            detailed phase traces (.jsonl)
    .cache/<project>/stages/            pipeline stage ledgers (.jsonl)
    .cache/_all/                        cross-project outputs only
                                        (images, images_layers, summary/delta)
    .cache/_baseline/<project>/         pinned stats baseline for stats-diff; survives
                                        ``make clean`` and ``make prebuild``
    .cache/_flow/                       ``make flow`` output only: pipeline.lock,
                                        pipeline.baseline.json, reports/diagrams

``make prebuild <project>`` removes ``.cache/<project>`` and rebuilds it, and
``make clean`` removes all of ``.cache``.  ``make build`` trusts whatever is
there, so nothing under ``.cache`` carries a format version: clean or prebuild
is the invalidation.
"""

import os

_ASM_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
PROJECT_ROOT = os.path.dirname(_ASM_DIR)
CACHE_ROOT = os.path.join(PROJECT_ROOT, '.cache')
ALL_DIR = os.path.join(CACHE_ROOT, '_all')
FLOW_DIR = os.path.join(CACHE_ROOT, '_flow')
BASELINE_ROOT = os.path.join(CACHE_ROOT, '_baseline')
SRC_PREFIX = 'src_'


def project_cache(project):
    return os.path.join(CACHE_ROOT, project)


def prebuild_dir(project):
    return os.path.join(project_cache(project), 'prebuild')


def aztec_lib_obj_dir(project):
    return os.path.join(project_cache(project), 'aztec_lib_obj')


def aztec_funcs_path(project):
    return os.path.join(project_cache(project), 'aztec_funcs.json')


def render_dir(project):
    return os.path.join(project_cache(project), 'render')


def labels_dir(project):
    return os.path.join(project_cache(project), 'labels')


def symbols_dir(project):
    return os.path.join(project_cache(project), 'symbols')


def spans_dir(project):
    return os.path.join(project_cache(project), 'spans')


def src_dir(project, root=None):
    """Return the generated ``src_<project>`` tree for *project*."""
    return os.path.join(root if root is not None else PROJECT_ROOT,
                        f'{SRC_PREFIX}{project}')


def project_of_src_dir(tree_dir):
    """Return the project name for a generated ``src_<project>`` directory."""
    base = os.path.basename(os.path.normpath(tree_dir))
    if base.startswith(SRC_PREFIX):
        return base[len(SRC_PREFIX):]
    return None


def addresses_dir(project):
    return os.path.join(project_cache(project), 'addresses')


def stats_dir(project):
    return os.path.join(project_cache(project), 'stats')


def baseline_dir(project):
    return os.path.join(BASELINE_ROOT, project)


def trace_dir(project):
    return os.path.join(project_cache(project), 'traces')


def stages_dir(project):
    return os.path.join(project_cache(project), 'stages')


def pipeline_lock_path():
    return os.path.join(FLOW_DIR, 'pipeline.lock')


def pipeline_baseline_path():
    return os.path.join(FLOW_DIR, 'pipeline.baseline.json')


def flow_out_dir():
    return os.path.join(FLOW_DIR, 'out')


def list_cached_projects():
    """Project names that have a ``.cache/<project>`` directory."""
    if not os.path.isdir(CACHE_ROOT):
        return []
    return sorted(n for n in os.listdir(CACHE_ROOT)
                  if n not in (os.path.basename(ALL_DIR),
                               os.path.basename(FLOW_DIR),
                               os.path.basename(BASELINE_ROOT))
                  and os.path.isdir(os.path.join(CACHE_ROOT, n)))
