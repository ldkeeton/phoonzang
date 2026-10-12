"""Address inventory schema and writer for the build report.

Phase 4 resolves every address-bearing operand to a namespace symbol
(``cseg_``/``dseg_``/``bss_``/``psp_``) or leaves it in the generic
``data_`` candidate namespace.  This module turns those names into the
``<binary>_addresses.json`` schema: each entry carries the *space* it lives
in, its *kind*, the *source* that identified it, its *confidence* tier, and
the load-image addresses that reference it.

Residual ``unknown`` candidates (8b) are expected and documented:

* ``data_*`` in the raw drivers (``ega``/``play``/``vga``) - the driver
  establishes its data segment at run time, so DS-relative operands cannot be
  resolved statically; these are waived.
* ``bios_data_*`` (``ds``) - a fixed external BIOS Data Area field reached
  through ``ES``, declared per binary in the sidecar ``external_data`` block;
  not an address space of this image.
* ``data_*`` that fall out of inline table data misdecoded as instructions
  (e.g. ``vmexe``'s ``data_b0cb``) - candidate words in a data gap.
"""

import json
import os


_ASM_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
_PROJECT_ROOT = os.path.dirname(_ASM_DIR)


# Prefix -> (space, kind)
_NAMESPACE = (
    ('cseg_', ('cs', 'embedded_pointer')),
    ('dseg_', ('ds', 'data')),
    ('bss_', ('bss', 'bss')),
    ('psp_', ('psp', 'psp')),
    ('data_', ('unknown', 'candidate')),
)

# Confidence tiers (plan Phase 6).
CERTAIN = 'certain'
STRONG = 'strong'
CANDIDATE = 'candidate'


def classify(name, nm_kind=None):
    """Return ``(space, kind, source, confidence)`` for a symbol name."""
    for prefix, (space, kind) in _NAMESPACE:
        if name.startswith(prefix):
            confidence = CANDIDATE if space == 'unknown' else STRONG
            source = 'candidate' if space == 'unknown' else 'segdataflow'
            return space, kind, source, confidence
    if name.startswith('string_loc_'):
        return 'cs', 'code', 'relative_flow', CERTAIN
    if name.startswith('bios_data_'):
        # External BIOS Data Area field addressed through ES; its space is
        # not this image's, so it stays a documented candidate.
        return 'unknown', 'candidate', 'candidate', CANDIDATE
    if name.startswith(('loc_', 'leaf_loc_')):
        return 'cs', 'code', 'relative_flow', CERTAIN
    upper = (nm_kind or '').upper()
    if upper in ('T', 't'):
        return 'cs', 'code', 'relative_flow', CERTAIN
    if upper == 'A':
        return 'unknown', 'constant', 'label', CANDIDATE
    return 'cs', 'code', 'relative_flow', CERTAIN


def _entry(name, address, nm_kind=None):
    space, kind, source, confidence = classify(name, nm_kind)
    return {
        'name': name,
        'address': address,
        'address_hex': f'0x{address:04x}',
        'type': nm_kind or '',
        'space': space,
        'kind': kind,
        'source': source,
        'confidence': confidence,
        'referenced_by': [],
    }


def find_conflicts(symbols, records=None):
    """Names resolved to incompatible spaces (Phase 6 collision check).

    A name is reported only when two *resolved* spaces disagree; an
    ``unknown`` candidate space never conflicts with a resolved one.
    """
    seen = {}
    conflicts = set()

    def add(name, space):
        if not name or space == 'unknown':
            return
        previous = seen.get(name)
        if previous is not None and previous != space:
            conflicts.add(name)
        seen.setdefault(name, space)

    for name, (_, nm_kind) in (symbols or {}).items():
        space, _, _, _ = classify(name, nm_kind)
        add(name, space)
    for record in records or ():
        add(record.get('name'), record.get('space', 'unknown'))
    return sorted(conflicts)


def merge_inventory(symbols, records=None):
    """Combine ``nm`` symbols with Phase 4 address records.

    ``symbols`` maps name -> ``(address, nm_type)``.  ``records`` is the
    optional list produced by the Phase 4 resolver; matching names gain the
    resolver's finer ``space``/``kind``/``source``/``confidence`` and every
    referencing load address.  Records without an ``nm`` symbol are still
    emitted.
    """
    entries = {}
    for name, (address, nm_kind) in symbols.items():
        entries[name] = _entry(name, address, nm_kind)
    for record in records or ():
        name = record.get('name')
        if not name:
            continue
        entry = entries.get(name)
        if entry is None:
            entry = _entry(name, record.get('value', 0))
            entries[name] = entry
        for field in ('space', 'kind', 'source', 'confidence'):
            if record.get(field):
                entry[field] = record[field]
        refs = record.get('referenced_by')
        if refs:
            entry['referenced_by'] = sorted(set(refs))
    return sorted(entries.values(), key=lambda item: (item['address'], item['name']))


def address_inventory_dir(project):
    """Return the ``.cache`` directory holding *project*'s inventories.

    The inventory is a build report, not source, so it lives under
    ``.cache/addresses/<project>/`` rather than in the ``asm_<project>`` tree
    (where it is neither assembled nor included).
    """
    return os.path.join(_PROJECT_ROOT, '.cache', 'addresses', project)


def address_inventory_path(project, binary):
    """Return the ``.cache`` path of *binary*'s address inventory."""
    return os.path.join(address_inventory_dir(project), f'{binary}_addresses.json')


def write_address_inventory(path, binary, symbols, records=None):
    """Write the address inventory, fed from Phase 4 records when available.

    Each entry carries the address space (``cs``/``ds``/``bss``/``psp``/
    ``unknown``), kind, identifying source, confidence tier, and the load
    addresses that reference it.  ``records`` is the Phase 4 resolver output
    (``report['addresses']``); without it the inventory still classifies the
    ``nm`` symbols by namespace.
    """
    inventory = {
        'schema_version': 2,
        'binary': binary,
        'address_kind': 'load_image_offset',
        'spaces': ['cs', 'ds', 'bss', 'psp', 'unknown'],
        'confidence_tiers': ['certain', 'strong', 'candidate'],
        'conflicts': find_conflicts(symbols, records),
        'symbols': merge_inventory(symbols, records),
    }
    os.makedirs(os.path.dirname(os.path.abspath(path)), exist_ok=True)
    with open(path, 'w', encoding='utf-8') as output_file:
        json.dump(inventory, output_file, indent=2)
        output_file.write('\n')
