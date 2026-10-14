"""Project/binary discovery, asset copying, host model, and project traversal."""

import json
import os
import shutil

from lib.sidecar import (
    load as load_sidecar,
    per_binary as sidecar_per_binary,
)
from lib.segments import (
    from_binary as build_segment_model,
    SegmentError,
)

from .options import APPS_DIR


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
        model = build_segment_model(data, (entry or {}).get('type') or 'mz')
    except (OSError, SegmentError):
        return None
    model.name = ds_name
    return model


def process_project(project_name):
    """Generate every binary of *project_name* (the one sequence, in process).

    The whole order lives in :mod:`main.build`; this is the ``python -m main``
    entry point to it, so it does exactly what ``make build`` does -- including
    the ``lib/`` placement, which it used to skip.
    """
    from .build import build_project, inprocess_runners

    project_dir = os.path.join(APPS_DIR, project_name)
    if not os.path.isdir(project_dir):
        print(f'{project_name}: SKIP (not found in apps/)')
        return
    run_batch, nasm_batch = inprocess_runners(project_name)
    build_project(project_name, run_batch, nasm_batch)


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
