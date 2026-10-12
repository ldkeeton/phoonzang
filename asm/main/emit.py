"""Emission of the address inventory and render-context reports."""

import json
import os

from lib.inventory import address_inventory_path, write_address_inventory
from lib.renderctx import context_path, encode


def _write_address_inventory(project, name, label_map, records):
    """Emit ``<binary>_addresses.json`` under ``.cache`` from Phase 4 output."""
    if not project:
        # Ad-hoc runs (e.g. unit tests driving ``main.process``) have no
        # project to file the report under.
        return
    symbols = {}
    for offset, label in (label_map or {}).items():
        if isinstance(label, str):
            symbols.setdefault(label, (offset, 'T'))
    for record in records or ():
        symbols.setdefault(record['name'], (record['value'], 'A'))
    path = address_inventory_path(project, name)
    write_address_inventory(path, name, symbols, records)


def _write_render_context(project, name, context):
    """Emit ``<binary>.json`` under ``.cache/render`` (see :mod:`lib.renderctx`)."""
    if not project:
        return
    path = context_path(project, name)
    os.makedirs(os.path.dirname(path), exist_ok=True)
    with open(path, 'w', encoding='utf-8') as output_file:
        json.dump(encode(context), output_file, indent=1, sort_keys=True)
        output_file.write('\n')
