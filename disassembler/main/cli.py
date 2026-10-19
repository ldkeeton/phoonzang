"""Command-line entry point and argument dispatch."""

import os
import sys

from lib.cachedirs import src_dir
from lib.sidecar.loader import load as load_sidecar
from lib.sidecar.binary import per_binary as sidecar_per_binary
from lib.report import print_compare

from .clean import clean_all
from .options import (
    APPS_DIR,
    EXACT_BYTES,
    EXPORT_LABELS,
    FOREIGN_LABELS_PATH,
    FOREIGN_PREFIX,
    HOST_DATA_OFFSETS_PATH, DS_STARTS_PATH,
    LABELS_ONLY,
    PROJECT_ROOT,
    _SHOW_OFFSETS,
)
from .projects import _build_host_model, discover_binaries, get_projects
from .runner import process
from .verify import verify_all


def main():
    if '--verify' in sys.argv:
        verify_all()
        return
    if '--clean' in sys.argv:
        clean_all()
        return
    if '--compare' in sys.argv:
        idx = sys.argv.index('--compare')
        if idx + 2 < len(sys.argv):
            print_compare(sys.argv[idx + 1], sys.argv[idx + 2])
        else:
            print('Usage: --compare <report_a.json> <report_b.json>')
        return

    args = [a for a in sys.argv[1:] if not a.startswith('--')]
    if '--worker' in sys.argv:
        from .worker import serve
        serve(args[0], args[1])
        return
    projects = get_projects()

    if len(args) >= 2:
        p = args[0]
        binary = args[1]
        if p not in projects:
            print(f'Unknown project: {p}')
            sys.exit(1)
        project_dir = os.path.join(APPS_DIR, p)
        sidecar = load_sidecar(p)
        out_dir = src_dir(p, PROJECT_ROOT)
        bins = discover_binaries(project_dir)
        if binary not in bins:
            print(f'Unknown binary "{binary}" in {p}')
            print(f'Known: {", ".join(sorted(bins))}')
            sys.exit(1)
        rel_path, start_offset = bins[binary]
        sc_entry = sidecar_per_binary(sidecar, binary) if sidecar else None
        host_model = _build_host_model(project_dir, bins, sidecar)
        foreign_label_map = None
        if FOREIGN_LABELS_PATH:
            from lib.cross_ref import read_label_json
            raw = read_label_json(FOREIGN_LABELS_PATH)
            prefix = FOREIGN_PREFIX or ''
            foreign_label_map = dict(raw)
        host_data_offsets = None
        if HOST_DATA_OFFSETS_PATH:
            from lib.link import read_host_data_offsets
            host_data_offsets = read_host_data_offsets(HOST_DATA_OFFSETS_PATH)
        ds_starts = frozenset()
        if DS_STARTS_PATH:
            from lib.link import read_ds_starts
            ds_starts = read_ds_starts(DS_STARTS_PATH)
        process(binary, project_dir, rel_path, start_offset,
                exact_bytes=EXACT_BYTES, show_offsets=_SHOW_OFFSETS,
                output_dir=out_dir,
                project=p, sidecar_entry=sc_entry,
                foreign_label_map=foreign_label_map,
                foreign_prefix=prefix if FOREIGN_LABELS_PATH else None,
                export_labels=EXPORT_LABELS, host_model=host_model,
                host_data_offsets=host_data_offsets,
                emit=not LABELS_ONLY, ds_starts=ds_starts)
        return

    target = args[0] if args else None

    if target:
        if target in projects:
            from .projects import process_project
            process_project(target)
        else:
            print(f'Unknown target: {target}')
            print(f'Known projects: {", ".join(projects)}')
            sys.exit(1)
    else:
        if projects:
            from .projects import process_project
            for p in projects:
                process_project(p)
        else:
            print(f'Usage: python3 -m main <{"|".join(projects)}>')
            print('       No args processes all projects in apps/')
            sys.exit(1)
