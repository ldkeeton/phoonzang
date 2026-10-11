"""Emission of the address inventory sidecar."""

import os

from lib.delta import write_address_inventory


def _write_address_inventory(out_dir, name, label_map, records):
    """Emit ``<binary>_addresses.json`` fed from Phase 4 resolution."""
    symbols = {}
    for offset, label in (label_map or {}).items():
        if isinstance(label, str):
            symbols.setdefault(label, (offset, 'T'))
    for record in records or ():
        symbols.setdefault(record['name'], (record['value'], 'A'))
    path = os.path.join(out_dir, 'inc', 'addresses', f'{name}_addresses.json')
    write_address_inventory(path, name, symbols, records)
