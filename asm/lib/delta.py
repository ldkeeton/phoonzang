"""Compare original and edited flat MZ assembly layouts."""

import difflib
import json
import os
import re
import struct


_NM_LINE = re.compile(r'^\s*([0-9a-fA-F]+)\s+([A-Za-z?])\s+(\S+)\s*$')
_MZ_FIELDS = (
    'magic', 'last_page_bytes', 'page_count', 'relocation_count',
    'header_paragraphs', 'min_alloc', 'max_alloc', 'initial_ss',
    'initial_sp', 'checksum', 'initial_ip', 'initial_cs',
    'relocation_table_offset', 'overlay_number',
)
# ``data_*`` names that address an *external* segment (PSP under DS, or the
# BIOS data area under ES) rather than this image, so their offsets must not
# be mapped through load-image edits.  PSP fields are now named ``psp_*``.
_EXTERNAL_DATA_EQU = {'data_0410'}


def parse_nm_symbols(text):
    """Parse `nm -n -g` output into symbol -> (address, type)."""
    symbols = {}
    for line in text.splitlines():
        match = _NM_LINE.match(line)
        if match:
            value, kind, name = match.groups()
            symbols[name] = (int(value, 16), kind)
    return symbols


def _mz_header(data):
    if len(data) < 0x1c or data[:2] != b'MZ':
        raise ValueError('expected an MZ executable')
    values = struct.unpack_from('<2s13H', data, 0)
    header = dict(zip(_MZ_FIELDS, values))
    header['header_size'] = header['header_paragraphs'] * 16
    if not 0x1c <= header['header_size'] <= len(data):
        raise ValueError('invalid MZ header size')
    return header


def _relocations(data, header):
    result = []
    for index in range(header['relocation_count']):
        at = header['relocation_table_offset'] + index * 4
        if at + 4 > len(data):
            raise ValueError('truncated MZ relocation table')
        offset, segment = struct.unpack_from('<HH', data, at)
        result.append({'offset': offset, 'segment': segment})
    return result


def _byte_edits(before, after, header_size):
    before_image = before[header_size:]
    after_image = after[header_size:]
    matcher = difflib.SequenceMatcher(
        None, before_image, after_image, autojunk=True,
    )
    edits = []
    for tag, i1, i2, j1, j2 in matcher.get_opcodes():
        if tag == 'equal':
            continue
        edits.append({
            'kind': tag,
            'before_load_range': [i1, i2],
            'after_load_range': [j1, j2],
        })
    return edits, matcher.get_opcodes()


def _mapped_address(address, opcodes):
    """Map an old load-image offset through SequenceMatcher opcodes."""
    delta = 0
    for tag, i1, i2, j1, j2 in opcodes:
        if tag == 'insert':
            if address >= i1:
                delta += j2 - j1
            continue
        if i1 <= address < i2:
            if tag == 'equal':
                return j1 + address - i1
            if tag == 'replace' and i2 - i1 == j2 - j1:
                return j1 + address - i1
            return None
        if address >= i2:
            delta += (j2 - j1) - (i2 - i1)
    return address + delta


def _table_deltas(manifest, before, after, after_symbols):
    before_header = _mz_header(before)
    after_header = _mz_header(after)
    reports = []
    for table in manifest.get('tables', []):
        table_symbol = table['table_symbol']
        jump_symbol = table['jump_symbol']
        if table_symbol not in after_symbols or jump_symbol not in after_symbols:
            raise ValueError(f'{table["id"]}: missing exported table/jump symbol')
        table_ip = after_symbols[table_symbol][0]
        jump_ip = after_symbols[jump_symbol][0]
        count = table['max_index'] + 1
        targets = {int(key): value for key, value in table['target_symbols'].items()}
        old_entries = table['original_entries']
        if len(old_entries) != count:
            raise ValueError(f'{table["id"]}: manifest entry count does not match bounds')
        if table['original_table_load_offset'] + count * 2 > len(before) - before_header['header_size']:
            raise ValueError(f'{table["id"]}: original table lies outside the image')

        old_bytes = before[
            before_header['header_size'] + table['original_table_load_offset']:
            before_header['header_size'] + table['original_table_load_offset'] + count * 2
        ]
        parsed_old = list(struct.unpack(f'<{count}H', old_bytes))
        if parsed_old != old_entries:
            raise ValueError(f'{table["id"]}: catalog no longer matches original bytes')

        actual = list(struct.unpack_from(
            f'<{count}H', after, after_header['header_size'] + table_ip,
        ))
        expected = []
        missing = []
        for old_value in old_entries:
            symbol = targets.get(old_value)
            if symbol is None or symbol not in after_symbols:
                missing.append(symbol or f'original_{old_value:04x}')
                expected.append(None)
            else:
                expected.append(after_symbols[symbol][0])

        md_error = None
        try:
            from capstone import Cs, CS_ARCH_X86, CS_MODE_16, CS_OP_MEM

            md = Cs(CS_ARCH_X86, CS_MODE_16)
            md.detail = True
            insns = list(md.disasm(
                after[after_header['header_size'] + jump_ip:], jump_ip, count=1,
            ))
            if not insns or insns[0].mnemonic != 'jmp':
                md_error = 'jump site did not decode as JMP'
            else:
                displacements = [
                    operand.mem.disp for operand in insns[0].operands
                    if operand.type == CS_OP_MEM
                ]
                if not displacements or displacements[0] != table_ip:
                    md_error = (
                        f'encoded table base is {displacements[0] if displacements else None}, '
                        f'expected {table_ip}'
                    )
        except ImportError:
            md_error = 'Capstone unavailable; jump operand not checked'

        reports.append({
            'id': table['id'],
            'old_table_load_offset': table['original_table_load_offset'],
            'new_table_load_offset': table_ip,
            'old_jump_load_offset': table['original_jump_load_offset'],
            'new_jump_load_offset': jump_ip,
            'entries': count,
            'updated_entries': sum(
                1 for old, new in zip(old_entries, actual) if old != new
            ),
            'entries_match_target_symbols': (
                not missing and actual == expected
            ),
            'missing_target_symbols': sorted(set(missing)),
            'jump_base_check': md_error or 'ok',
        })
    return reports


def analyze_delta(
    before, after, before_symbols, after_symbols, manifest,
):
    """Return only layout and address changes between two built MZ images."""
    before_header = _mz_header(before)
    after_header = _mz_header(after)
    if before_header['header_size'] != after_header['header_size']:
        raise ValueError('MZ header size changed; image address mapping is ambiguous')
    header_size = before_header['header_size']
    edits, opcodes = _byte_edits(before, after, header_size)

    moved_symbols = []
    for name, (old_value, old_type) in before_symbols.items():
        current = after_symbols.get(name)
        if current is None or old_value == current[0]:
            continue
        if old_type.upper() == 'A' or current[1].upper() == 'A':
            continue
        moved_symbols.append({
            'symbol': name,
            'before': old_value,
            'after': current[0],
            'delta': current[0] - old_value,
        })
    moved_symbols.sort(key=lambda item: (item['before'], item['symbol']))

    fixed_equ_candidates = []
    for name, (value, kind) in before_symbols.items():
        if kind.upper() != 'A' or name in _EXTERNAL_DATA_EQU:
            continue
        # Only names whose value is a load-image file offset can be remapped.
        # ``dseg_``/``bss_``/``psp_`` are segment offsets, not file offsets.
        if not name.startswith(('data_', 'cseg_', 'loc_', 'leaf_loc_')):
            continue
        if not 0 <= value < len(before) - header_size:
            continue
        mapped = _mapped_address(value, opcodes)
        if mapped is not None and mapped != value:
            fixed_equ_candidates.append({
                'symbol': name,
                'encoded_value': value,
                'target_after_edit': mapped,
                'unresolved_delta': mapped - value,
            })
    fixed_equ_candidates.sort(key=lambda item: (item['encoded_value'], item['symbol']))

    before_relocs = _relocations(before, before_header)
    after_relocs = _relocations(after, after_header)
    entry_symbol = manifest.get('entry_symbol', 'entry_point')
    if entry_symbol not in after_symbols:
        raise ValueError(f'missing exported entry symbol: {entry_symbol}')
    expected_ip = after_symbols[entry_symbol][0] - after_header['initial_cs'] * 16
    expected_pages = (len(after) + 0x1ff) // 0x200
    expected_last_page = len(after) % 0x200
    expected_relocs = manifest.get('relocation_site_symbols', [])
    expected_reloc_offsets = [
        after_symbols[name][0] for name in expected_relocs
        if name in after_symbols
    ]
    mz_checks = {
        'page_count_ok': after_header['page_count'] == expected_pages,
        'last_page_bytes_ok': after_header['last_page_bytes'] == expected_last_page,
        'entry_point_ok': after_header['initial_ip'] == expected_ip,
        'relocation_sites_ok': (
            len(expected_reloc_offsets) == len(after_relocs)
            and all(
                actual['offset'] == expected
                for actual, expected in zip(after_relocs, expected_reloc_offsets)
            )
        ) if expected_relocs else None,
    }

    tables = _table_deltas(
        manifest, before, after, after_symbols,
    )
    added_symbols = sorted(set(after_symbols) - set(before_symbols))
    removed_symbols = sorted(set(before_symbols) - set(after_symbols))
    return {
        'schema_version': 1,
        'binary': manifest.get('binary', '?'),
        'before_size': len(before),
        'after_size': len(after),
        'size_delta': len(after) - len(before),
        'byte_edits': edits,
        'moved_symbol_count': len(moved_symbols),
        'moved_symbols': moved_symbols,
        'added_symbols': added_symbols,
        'removed_symbols': removed_symbols,
        'jump_tables': tables,
        'fixed_equ_candidates': fixed_equ_candidates,
        'mz': {
            'before': {
                'initial_ip': before_header['initial_ip'],
                'last_page_bytes': before_header['last_page_bytes'],
                'page_count': before_header['page_count'],
                'relocations': before_relocs,
            },
            'after': {
                'initial_ip': after_header['initial_ip'],
                'last_page_bytes': after_header['last_page_bytes'],
                'page_count': after_header['page_count'],
                'relocations': after_relocs,
            },
            'checks': mz_checks,
        },
    }


def write_delta(path, report):
    os.makedirs(os.path.dirname(os.path.abspath(path)), exist_ok=True)
    with open(path, 'w', encoding='utf-8') as output_file:
        json.dump(report, output_file, separators=(',', ':'))
        output_file.write('\n')


def write_address_inventory(path, binary, symbols, records=None):
    """Write the address inventory, fed from Phase 4 records when available.

    Each entry carries the address space (``cs``/``ds``/``bss``/``psp``/
    ``unknown``), kind, identifying source, confidence tier, and the load
    addresses that reference it.  ``records`` is the Phase 4 resolver output
    (``report['addresses']``); without it the inventory still classifies the
    ``nm`` symbols by namespace.
    """
    from lib.inventory import merge_inventory, find_conflicts

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
