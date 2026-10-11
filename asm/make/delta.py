"""``make delta`` — compare original and edited assembly layouts."""

import json
import os
import sys

from main import discover_binaries
from lib.delta import (
    analyze_delta, parse_nm_symbols, write_address_inventory, write_delta,
)

from .common import APPS, PROJECT, _nasm_build, _run
from .elf import _nasm_elf_build


def _elf_symbols_for_binary(out_dir, name, binary_path):
    with open(binary_path, 'rb') as source_file:
        header = source_file.read(0x18)
    entry_ip = int.from_bytes(header[0x14:0x16], 'little')
    load_offset = int.from_bytes(header[0x08:0x0a], 'little') * 16
    if _nasm_elf_build(out_dir, name, entry_ip, load_offset) != 0:
        raise RuntimeError(f'could not produce ELF symbol map for {out_dir}/{name}')
    elf_path = os.path.join(out_dir, 'build_out', f'{name.upper()}.elf')
    result = _run('nm', '-n', '-g', elf_path)
    if result.returncode != 0:
        raise RuntimeError(result.stderr.strip() or f'nm failed for {elf_path}')
    return parse_nm_symbols(result.stdout)


def _print_delta_report(report, report_path):
    print(f'Delta: {report["binary"]} vs freshly rebuilt original-source tree')
    print(
        f'  Image: {report["before_size"]} -> {report["after_size"]} bytes '
        f'({report["size_delta"]:+d})'
    )
    print(
        f'  Changed byte spans: {len(report["byte_edits"])}; '
        f'named labels moved: {report["moved_symbol_count"]}'
    )
    for edit in report['byte_edits'][:6]:
        before_start, before_end = edit['before_load_range']
        after_start, after_end = edit['after_load_range']
        print(
            f'    {edit["kind"]}: image '
            f'0x{before_start:04x}..0x{before_end:04x} -> '
            f'0x{after_start:04x}..0x{after_end:04x}'
        )
    if len(report['byte_edits']) > 6:
        print(f'    … {len(report["byte_edits"]) - 6} additional byte spans in JSON')

    important = {'entry_point', 'ds_dispatch_jump_0163', 'ds_dispatch_table_0163'}
    examples = [
        item for item in report['moved_symbols']
        if item['symbol'] in important
    ]
    examples.extend(
        item for item in report['moved_symbols']
        if item['symbol'] not in important
    )
    for item in examples[:6]:
        print(
            f'    {item["symbol"]}: 0x{item["before"]:04x} -> '
            f'0x{item["after"]:04x} ({item["delta"]:+d})'
        )

    for table in report['jump_tables']:
        table_status = (
            'OK' if table['entries_match_target_symbols']
            and table['jump_base_check'] == 'ok' else 'REVIEW'
        )
        print(
            f'  Jump table {table["id"]}: '
            f'0x{table["old_table_load_offset"]:04x} -> '
            f'0x{table["new_table_load_offset"]:04x}; '
            f'{table["updated_entries"]}/{table["entries"]} entries changed; '
            f'{table_status}'
        )
        if table['jump_base_check'] != 'ok':
            print(f'    jump base: {table["jump_base_check"]}')

    mz = report['mz']
    before_mz, after_mz = mz['before'], mz['after']
    print(
        f'  MZ entry IP: 0x{before_mz["initial_ip"]:04x} -> '
        f'0x{after_mz["initial_ip"]:04x}; file size fields: '
        f'{before_mz["last_page_bytes"]}/{before_mz["page_count"]} -> '
        f'{after_mz["last_page_bytes"]}/{after_mz["page_count"]}'
    )
    checks = mz['checks']
    checked_fields = [value for value in checks.values() if value is not None]
    relocation_status = (
        'OK' if checks['relocation_sites_ok'] is True
        else 'REVIEW' if checks['relocation_sites_ok'] is False
        else 'not catalogued'
    )
    print(
        '  MZ derived fields: '
        + ('OK' if all(checked_fields) else 'REVIEW')
        + f' (relocation site: {relocation_status})'
    )

    fixed = report['fixed_equ_candidates']
    print(f'  Fixed in-image EQU addresses not regenerated: {len(fixed)}')
    for item in fixed[:6]:
        print(
            f'    {item["symbol"]}: encoded 0x{item["encoded_value"]:04x}, '
            f'target moved to 0x{item["target_after_edit"]:04x}'
        )
    if len(fixed) > 6:
        print(f'    … {len(fixed) - 6} additional affected EQU addresses in JSON')
    print(f'  Delta detail: {report_path}')


def cmd_delta(app, binary):
    app_dir = os.path.join(APPS, app)
    current_dir = os.path.join(PROJECT, f'asm_{app}')
    original_dir = os.path.join(PROJECT, f'asm_{app}_orig')
    bins = discover_binaries(app_dir)
    if binary not in bins:
        print(f'Unknown binary "{binary}" in {app}')
        print(f'Known: {", ".join(sorted(bins))}')
        sys.exit(1)
    if not os.path.isdir(original_dir):
        print(f'{original_dir} not found; run "make build {app}" first')
        sys.exit(1)

    rel_path = bins[binary][0]
    manifest_path = os.path.join(current_dir, f'{binary}', 'jump_tables.json')
    try:
        if os.path.isfile(manifest_path):
            with open(manifest_path, encoding='utf-8') as f:
                manifest = json.load(f)
            if manifest.get('binary') != binary:
                raise ValueError(f'{manifest_path}: wrong binary manifest')
        else:
            manifest = {'binary': binary}

        before_path = os.path.join(original_dir, 'build_out', rel_path)
        after_path = os.path.join(current_dir, 'build_out', rel_path)
        if _nasm_build(original_dir, binary, rel_path) != 0:
            raise RuntimeError('original source tree failed to assemble')
        if _nasm_build(current_dir, binary, rel_path) != 0:
            raise RuntimeError('edited source failed to assemble')

        before_symbols = _elf_symbols_for_binary(original_dir, binary, before_path)
        after_symbols = _elf_symbols_for_binary(current_dir, binary, after_path)
        with open(before_path, 'rb') as f:
            before = f.read()
        with open(after_path, 'rb') as f:
            after = f.read()
        report = analyze_delta(
            before, after, before_symbols, after_symbols, manifest,
        )
    except Exception as error:
        print(f'Delta failed: {error}')
        sys.exit(1)

    addresses_path = os.path.join(current_dir, f'{binary}_addresses.json')
    report_path = os.path.join(current_dir, f'{binary}_delta.json')
    stale_reports = (
        os.path.join(current_dir, 'build_out', f'{binary.upper()}.address-inventory.json'),
        os.path.join(current_dir, 'build_out', f'{binary.upper()}.delta.json'),
    )
    for stale_path in stale_reports:
        try:
            os.unlink(stale_path)
        except FileNotFoundError:
            pass
    write_address_inventory(addresses_path, binary, after_symbols)
    write_delta(report_path, report)
    print(f'  Address inventory: {addresses_path}')
    _print_delta_report(report, report_path)
