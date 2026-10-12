"""Emission of the address inventory report."""

import os

from lib.inventory import address_inventory_path, write_address_inventory


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
