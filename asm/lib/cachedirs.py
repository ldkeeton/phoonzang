"""Single source for every path under ``.cache/``.

Layout::

    .cache/<project>/prebuild/          mux manifests, extracted C seeds, objs/
    .cache/<project>/aztec_lib_obj/     runtime-library OMF (c m ms s ovl)
    .cache/<project>/aztec_funcs.json   runtime signature DB built from those
    .cache/<project>/render/            render contexts
    .cache/<project>/addresses/         address inventories
    .cache/<project>/stats/             per-binary stats
    .cache/<project>/traces/            detailed phase traces (.jsonl)
    .cache/<project>/stats_baseline/    pinned baseline for stats-diff
    .cache/_all/                        cross-project outputs only
                                        (images, images_layers, summary/delta)

``make prebuild <project>`` removes ``.cache/<project>`` and rebuilds it.
"""

import os

_ASM_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
PROJECT_ROOT = os.path.dirname(_ASM_DIR)
CACHE_ROOT = os.path.join(PROJECT_ROOT, '.cache')
ALL_DIR = os.path.join(CACHE_ROOT, '_all')


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


def addresses_dir(project):
    return os.path.join(project_cache(project), 'addresses')


def stats_dir(project):
    return os.path.join(project_cache(project), 'stats')


def baseline_dir(project):
    return os.path.join(project_cache(project), 'stats_baseline')


def trace_dir(project):
    return os.path.join(project_cache(project), 'traces')


def list_cached_projects():
    """Project names that have a ``.cache/<project>`` directory."""
    if not os.path.isdir(CACHE_ROOT):
        return []
    return sorted(n for n in os.listdir(CACHE_ROOT)
                  if n != os.path.basename(ALL_DIR)
                  and os.path.isdir(os.path.join(CACHE_ROOT, n)))
