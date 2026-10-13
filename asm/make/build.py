"""``make build`` / ``make rebuild`` — assembly generation and NASM builds."""

import os
import sys
from concurrent.futures import ThreadPoolExecutor, as_completed

from main import discover_binaries
from lib.report import clear_project_stats
from lib.cross_ref import detect as detect_cross_refs

from .clean import cmd_clean
from .common import (
    APPS,
    JOBS,
    PROJECT,
    _aggregate_host_data,
    _asm_one,
    _clear_host_data_exports,
    _copy_assets,
    _extra_flags,
    _foreign_args,
    _nasm_build,
    _prepare_cross_ref_sources,
)
from .link import write_link_values
from .prebuild import _ensure_prebuild
from lib.link import host_name


def _stats_enabled():
    return '--stats' in _extra_flags()


def asm_app(app):
    if _stats_enabled():
        clear_project_stats(app)
    app_dir = os.path.join(APPS, app)
    out_dir = os.path.join(PROJECT, f'asm_{app}')
    os.makedirs(out_dir, exist_ok=True)

    bins = discover_binaries(app_dir)
    if not bins:
        print(f'{app}: no binaries found')
        return

    print(f'\n=== {app} ({len(bins)} binaries) ===')

    cross_refs = detect_cross_refs(app_dir, bins)
    failed = _prepare_cross_ref_sources(
        app, app_dir, out_dir, bins, cross_refs)
    source_names = {src for refs in cross_refs.values() for _, src in refs}

    consumers = [n for n in sorted(bins) if n not in source_names]

    # Drop the previous build's per-overlay DS exports so the union below is
    # exactly this build's references (the labels dir survives `make build`).
    _clear_host_data_exports(app)

    with ThreadPoolExecutor(max_workers=JOBS) as ex:
        futures = {}
        for name in consumers:
            extra = _foreign_args(out_dir, name, cross_refs)
            futures[ex.submit(_asm_one, app, name, extra)] = name
        for f in as_completed(futures):
            if f.result() != 0:
                print(f'  FAILED: {futures[f]}')
                failed.append(futures[f])

    # D7.1: the overlays just exported the host-DS offsets they reference; give
    # the union back to the host so it declares one recipe-based ``equ`` per
    # offset.  The host is regenerated *in place* (its code labels are
    # unchanged, so the consumers' foreign maps stay valid), and the link step
    # below re-probes the result.
    host = host_name(bins)
    offsets_path = _aggregate_host_data(app)
    if offsets_path and host is not None:
        print(f'  Host data map: {host}.asm declares the overlay DS union')
        if _asm_one(app, host, ['--export-labels',
                                f'--host-data-offsets={offsets_path}']) != 0:
            print(f'  FAILED: {host} (host data map)')
            failed.append(host)

    # D7.0c: resolve the host geometry the overlays/drivers name before any
    # binary is assembled.  The host source is complete by now.
    write_link_values(app, out_dir, bins)

    build_out = os.path.join(out_dir, 'build_out')
    _copy_assets(app_dir, build_out)

    with ThreadPoolExecutor(max_workers=JOBS) as ex:
        futures = {ex.submit(_nasm_build, out_dir, name, rel_path): name
                   for name, (rel_path, _) in sorted(bins.items())}
        for f in as_completed(futures):
            if f.result() != 0:
                print(f'  BUILD FAIL: {futures[f]}')
                failed.append(futures[f])

    if failed:
        print(f'{app}: {len(set(failed))} binary(ies) failed to build')
        sys.exit(1)


def cmd_build_binary(app, binary):
    app_dir = os.path.join(APPS, app)
    out_dir = os.path.join(PROJECT, f'asm_{app}')
    bins = discover_binaries(app_dir)
    if binary not in bins:
        print(f'Unknown binary "{binary}" in {app}')
        print(f'Known: {", ".join(sorted(bins))}')
        sys.exit(1)

    cmd_clean([app], keep_prebuild=True)
    _ensure_prebuild(app)
    if _stats_enabled():
        clear_project_stats(app)
    os.makedirs(out_dir, exist_ok=True)
    cross_refs = detect_cross_refs(app_dir, bins)
    source_names = {src for refs in cross_refs.values() for _, src in refs}
    required_sources = {src for _, src in cross_refs.get(binary, [])}
    if binary in source_names:
        required_sources.add(binary)
    source_failed = _prepare_cross_ref_sources(
        app, app_dir, out_dir, bins, cross_refs, required_sources,
    )
    if source_failed:
        sys.exit(1)

    if binary in source_names:
        result = 0
    else:
        result = _asm_one(app, binary, _foreign_args(out_dir, binary, cross_refs))
    if result != 0:
        sys.exit(result)

    rel_path = bins[binary][0]
    _copy_assets(app_dir, os.path.join(out_dir, 'build_out'))
    write_link_values(app, out_dir, bins)
    if _nasm_build(out_dir, binary, rel_path) != 0:
        sys.exit(1)
    print(f'build {app}/{binary} -> {rel_path}  [OK]')


def cmd_rebuild(app, binary):
    app_dir = os.path.join(APPS, app)
    out_dir = os.path.join(PROJECT, f'asm_{app}')
    bins = discover_binaries(app_dir)
    if binary not in bins:
        print(f'Unknown binary "{binary}" in {app}')
        print(f'Known: {", ".join(sorted(bins))}')
        sys.exit(1)
    rel_path = bins[binary][0]
    write_link_values(app, out_dir, bins)
    r = _nasm_build(out_dir, binary, rel_path)
    if r != 0:
        sys.exit(1)
    print(f'rebuild {app}/{binary} -> {rel_path}  [OK]')


def _build_projects(targets, all_projects):
    for project in targets:
        if project not in all_projects:
            print(f'Unknown project: {project}')
            print(f'Known: {", ".join(all_projects)}')
            sys.exit(1)
    cmd_clean(targets, keep_prebuild=True)
    for project in targets:
        _ensure_prebuild(project)
        asm_app(project)
