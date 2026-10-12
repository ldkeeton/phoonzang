"""Project/binary discovery, asset copying, host model, and project traversal."""

import json
import os
import shutil
import subprocess

from lib.sidecar import (
    load as load_sidecar,
    per_binary as sidecar_per_binary,
)
from lib.segments import (
    from_binary as build_segment_model,
    SegmentError,
)

from .options import APPS_DIR, EXACT_BYTES, PROJECT_ROOT, _SHOW_OFFSETS
from .runner import process


def discover_binaries(directory):
    bins = {}
    if not os.path.isdir(directory):
        return bins
    for entry in os.listdir(directory):
        lower = entry.lower()
        if lower.endswith('.ovr'):
            # Aztec ``.OVR`` files carry a 14-byte ``ovrheader``
            # (``LIB/DOS/OVLOADER.C``); code begins immediately after it.
            bins[lower[:-4]] = (entry, 14)
        elif lower.endswith('.drv'):
            bins[lower[:-4]] = (entry, 0)
        elif lower.endswith('.exe'):
            path = os.path.join(directory, entry)
            with open(path, 'rb') as f:
                sig = f.read(2)
            if sig != b'MZ':
                continue
            bins[lower[:-4]] = (entry, 0x200)
    return bins


def copy_assets(orig_dir, output_dir, processed_names):
    os.makedirs(output_dir, exist_ok=True)
    for entry in os.listdir(orig_dir):
        src = os.path.join(orig_dir, entry)
        dst = os.path.join(output_dir, entry)
        name_only, _ = os.path.splitext(entry.lower())
        if name_only in processed_names:
            continue
        if os.path.isfile(src):
            shutil.copy2(src, dst)
        elif os.path.isdir(src):
            shutil.copytree(src, dst, dirs_exist_ok=True)


def build_binaries(asm_dir, bins, out_dir):
    os.makedirs(out_dir, exist_ok=True)
    all_ok = True
    for name, (rel_path, _start_offset) in sorted(bins.items()):
        asm_path = os.path.join(asm_dir, f'{name}.asm')
        bin_path = os.path.join(out_dir, rel_path)
        r = subprocess.run(
            ['nasm', '-O0', '-f', 'bin', '-w-number-overflow', f'-I{asm_dir}/', '-o', bin_path, asm_path],
            capture_output=True, text=True,
        )
        if r.returncode != 0:
            print(f'  BUILD FAIL: {name}.asm -> {rel_path}')
            for line in r.stderr.strip().split('\n'):
                print(f'    {line}')
            all_ok = False
    return all_ok


def _build_host_model(project_dir, bins, sidecar):
    """SegmentModel for the MZ host (``DS.EXE``).

    Overlays execute inside the host's data segment, so their DATA references
    need the host geometry (see ``lib.segments``).  Returns ``None`` when no
    MZ host is present or it cannot be parsed.
    """
    ds_name = 'ds' if 'ds' in bins else next(
        (n for n in bins
         if (sidecar_per_binary(sidecar, n) or {}).get('type') == 'mz'),
        None,
    )
    if ds_name is None:
        return None
    rel_path = bins[ds_name][0]
    try:
        with open(os.path.join(project_dir, rel_path), 'rb') as f:
            data = f.read()
        entry = sidecar_per_binary(sidecar, ds_name) if sidecar else None
        return build_segment_model(data, (entry or {}).get('type') or 'mz')
    except (OSError, SegmentError):
        return None


def process_project(project_name):
    project_dir = os.path.join(APPS_DIR, project_name)
    if not os.path.isdir(project_dir):
        print(f'{project_name}: SKIP (not found in apps/)')
        return

    sidecar = load_sidecar(project_name)

    out_dir = os.path.join(PROJECT_ROOT, f'asm_{project_name}')
    os.makedirs(out_dir, exist_ok=True)

    bins = discover_binaries(project_dir)
    if not bins:
        print(f'{project_name}: no binaries found')
        return

    print(f'\n=== {project_name} ({len(bins)} binaries) ===')

    host_model = _build_host_model(project_dir, bins, sidecar)

    from lib.cross_ref import detect as detect_cross_refs
    cross_refs = detect_cross_refs(project_dir, bins)

    source_names = {src for refs in cross_refs.values() for _, src in refs}
    source_label_maps = {}

    for name in sorted(source_names & set(bins.keys())):
        sc_entry = sidecar_per_binary(sidecar, name) if sidecar else None
        _, lm = process(name, project_dir, bins[name][0], bins[name][1],
                        exact_bytes=EXACT_BYTES, show_offsets=_SHOW_OFFSETS,
                        output_dir=out_dir,
                        project=project_name, sidecar_entry=sc_entry,
                        export_labels=True, host_model=host_model)
        source_label_maps[name] = lm

    # inject synthetic dispatch labels for cross-binary targets
    if cross_refs:
        for src_name in source_names & set(bins.keys()):
            if src_name not in source_label_maps:
                continue
            src_path = os.path.join(project_dir, bins[src_name][0])
            try:
                with open(src_path, 'rb') as f:
                    src_data = f.read()
            except OSError:
                continue
            lm = source_label_maps[src_name]
            for consumer_name, refs in cross_refs.items():
                consumer_start = bins[consumer_name][1] if consumer_name in bins else 0
                for t, src in refs:
                    if src == src_name:
                        abs_t = t + consumer_start
                        if abs_t not in lm and abs_t < len(src_data):
                            lm[abs_t] = f'dispatch_{abs_t:04x}'

    for name, (rel_path, start_offset) in sorted(bins.items()):
        if name in source_names:
            continue
        sc_entry = sidecar_per_binary(sidecar, name) if sidecar else None

        foreign_label_map = None
        foreign_prefix = None
        if name in cross_refs:
            foreign_label_map = {}
            sources = {src_name for _, src_name in cross_refs[name]}
            foreign_prefix = next(iter(sources)) if len(sources) == 1 else None
            for _, src_name in cross_refs[name]:
                if src_name in source_label_maps:
                    for addr, lbl in source_label_maps[src_name].items():
                        foreign_label_map[addr] = f'{src_name}_{lbl}'

        process(name, project_dir, rel_path, start_offset,
                exact_bytes=EXACT_BYTES, show_offsets=_SHOW_OFFSETS,
                output_dir=out_dir,
                project=project_name, sidecar_entry=sc_entry,
                foreign_label_map=foreign_label_map,
                foreign_prefix=foreign_prefix, host_model=host_model)

    processed = set(bins.keys())

    build_out = os.path.join(out_dir, 'build_out')
    copy_assets(project_dir, build_out, set())
    build_binaries(out_dir, bins, build_out)


def load_whitelist():
    path = os.path.join(APPS_DIR, 'apps.json')
    if not os.path.exists(path):
        return None
    with open(path) as f:
        return json.load(f)


def get_projects():
    if not os.path.isdir(APPS_DIR):
        return []
    return sorted([
        d for d in os.listdir(APPS_DIR)
        if os.path.isdir(os.path.join(APPS_DIR, d))
    ])
