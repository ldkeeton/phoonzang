import struct
import unittest

import numpy as np
from capstone import Cs, CS_ARCH_X86, CS_MODE_16

from lib.model import JumpTableInfo
from lib.phases.recursive import _scan_jump_table
from lib.verify.assemble import clear_assemble_cache, micro_assemble
from lib.verify.compare import (
    _build_source,
    _inject_jump_tables,
    _merge_jump_table_specs,
    _render_records,
)


def _disassemble(data, address=0):
    md = Cs(CS_ARCH_X86, CS_MODE_16)
    md.detail = True
    return list(md.disasm(data, address))


class ScanJumpTableBoundsTests(unittest.TestCase):
    """``_scan_jump_table`` must not let data votes hide a bounded table.

    Switch arms can be pre-voted data (prune_dead marks the block after a
    jmp-ending block dead), which previously aborted the scan before three
    targets were found and left valid tables undetected.
    """

    def _table(self):
        data = bytearray(0x100)
        for i, target in enumerate((0x50, 0x60, 0x70, 0x80)):
            struct.pack_into('<H', data, 0x40 + 2 * i, target)
        return bytes(data)

    def test_bounded_table_ignores_data_votes(self):
        conf = np.zeros(0x100, dtype=np.float32)
        conf[0x60] = -1.0  # arm poisoned by prune_dead
        end, targets = _scan_jump_table(
            self._table(), 0x40, conf, max_index=3)
        self.assertEqual(end, 0x48)
        self.assertEqual(targets, {0x50, 0x60, 0x70, 0x80})

    def test_unbounded_table_still_stops_at_data(self):
        conf = np.zeros(0x100, dtype=np.float32)
        conf[0x60] = -1.0
        end, targets = _scan_jump_table(
            self._table(), 0x40, conf, max_index=None)
        self.assertEqual(targets, set())
        self.assertEqual(end, 0x40)


class MergeJumpTableSpecsTests(unittest.TestCase):
    def test_auto_detection_span_and_dedup(self):
        tables = [
            JumpTableInfo(table_addr=0x8d4, jmp_addr=0x8ed, table_end=0x8e2),
            JumpTableInfo(table_addr=0x8d4, jmp_addr=0x8ed, table_end=0x8e2),
        ]
        specs = _merge_jump_table_specs(tables, [], 0x200, 0x1000)
        self.assertEqual(len(specs), 1)
        spec = specs[0]
        self.assertEqual(spec['table_addr'], 0x8d4)
        self.assertEqual(spec['table_end'], 0x8e2)
        self.assertEqual(spec['count'], 7)
        self.assertEqual(spec['label'], 'jumptable_08d4')

    def test_sidecar_override_corrects_geometry(self):
        tables = [JumpTableInfo(table_addr=0x363, jmp_addr=0x3a9, table_end=0x371)]
        overrides = [{
            'table': '0363', 'jmp': '03a9', 'entry_size': 2, 'count': 31,
        }]
        specs = _merge_jump_table_specs(tables, overrides, 0x200, 0x1000)
        self.assertEqual(specs[0]['table_end'], 0x363 + 31 * 2)
        self.assertEqual(specs[0]['jmp_addr'], 0x3a9)
        self.assertEqual(specs[0]['source'], 'sidecar')


class InjectJumpTablesTests(unittest.TestCase):
    def _binary(self):
        data = bytearray(0x300)
        # Table at 0x250: two pointers to 0x210 and 0x220, plus a zero word.
        data[0x250:0x256] = b'\x10\x00\x20\x00\x00\x00'
        # Fill the target regions with representative bytes.
        data[0x210:0x220] = b'\x90' * 16
        data[0x220:0x240] = b'\x90' * 32
        return bytes(data)

    def test_existing_labels_are_referenced(self):
        binary = self._binary()
        records = [{
            'type': 'data_block', 'start': 0x250, 'end': 0x256,
            'bytes': [f'0x{b:02x}' for b in binary[0x250:0x256]],
        }]
        specs = [{
            'table_addr': 0x250, 'table_end': 0x256, 'jmp_addr': 0x2ac,
            'count': 3, 'entry_size': 2, 'label': 'jumptable_0250',
            'source': 'auto', 'note': '',
        }]
        label_map = {0x210: 'string_loc_0210', 0x220: 'string_loc_0220'}
        out, injected, _ = _inject_jump_tables(
            records, specs, binary, 0x200, label_map, {},
        )
        self.assertEqual(injected, {0x250: 'jumptable_0250'})
        table = next(r for r in out if r['type'] == 'jump_table')
        self.assertEqual(
            table['entries'], ['string_loc_0210', 'string_loc_0220', None],
        )

    def test_missing_labels_get_synthetic_case_labels(self):
        binary = self._binary()
        records = [
            {'type': 'data_block', 'start': 0x210, 'end': 0x240,
             'bytes': []},
            {'type': 'data_block', 'start': 0x250, 'end': 0x256,
             'bytes': []},
        ]
        specs = [{
            'table_addr': 0x250, 'table_end': 0x256, 'jmp_addr': 0x2ac,
            'count': 3, 'entry_size': 2, 'label': 'jumptable_0250',
            'source': 'auto', 'note': '',
        }]
        out, _, synthesized = _inject_jump_tables(
            records, specs, binary, 0x200, {}, {},
        )
        table = next(r for r in out if r['type'] == 'jump_table')
        self.assertEqual(
            table['entries'],
            ['jumptable_0250_case_0', 'jumptable_0250_case_1', None],
        )
        labels = {r['text'].rstrip(':') for r in out if r['type'] == 'label'}
        self.assertIn('jumptable_0250_case_0', labels)
        self.assertIn('jumptable_0250_case_1', labels)
        self.assertEqual(
            synthesized,
            {'jumptable_0250': 0x250,
             'jumptable_0250_case_0': 0x210,
             'jumptable_0250_case_1': 0x220},
        )

    def test_code_overlap_is_skipped(self):
        binary = self._binary()
        records = [{
            'type': 'mnem', 'text': 'nop', 'offset': 0x250, 'size': 1,
        }]
        specs = [{
            'table_addr': 0x250, 'table_end': 0x256, 'jmp_addr': 0x2ac,
            'count': 3, 'entry_size': 2, 'label': 'jumptable_0250',
            'source': 'auto', 'note': '',
        }]
        out, injected, _ = _inject_jump_tables(
            records, specs, binary, 0x200, {}, {},
        )
        self.assertEqual(injected, {})
        self.assertFalse(any(r['type'] == 'jump_table' for r in out))


class JumpTableRenderTests(unittest.TestCase):
    def test_render_and_image_base(self):
        binary = bytes(0x300)
        record = {
            'type': 'jump_table', 'start': 0x250, 'end': 0x256,
            'label': 'jumptable_0250', 'jmp_addr': 0x2ac,
            'entry_size': 2,
            'entries': ['string_loc_0210', None, 0x1234],
        }
        lines = _render_records([record], binary)
        self.assertEqual(lines[0], 'jumptable_0250:')
        self.assertIn('    dw string_loc_0210 - IMAGE_BASE', lines)
        self.assertIn('    dw 0', lines)
        self.assertIn('    dw 0x1234', lines)

    def test_image_base_only_with_tables(self):
        binary = bytes(0x10)
        without, _ = _build_source(
            [{'type': 'db', 'text': '0x00', 'offset': 0, 'size': 1}],
            0, binary,
        )
        self.assertNotIn('IMAGE_BASE', without)

        with_table, _ = _build_source(
            [{
                'type': 'jump_table', 'start': 0, 'end': 2,
                'label': 'jumptable_0000', 'jmp_addr': -1,
                'entry_size': 2, 'entries': [0],
            }],
            0x200, binary,
        )
        self.assertIn('IMAGE_BASE equ 0x0200', with_table)


class DispatcherFormatTests(unittest.TestCase):
    def setUp(self):
        clear_assemble_cache()

    def test_symbolic_dispatcher_round_trips(self):
        original = bytes.fromhex('2e ff a7 d3 76')
        insn = _disassemble(original, 0x26ac)[0]
        from lib.format import format_instruction

        disp_labels = {0x76d3: 'jumptable_76db'}
        text = format_instruction(insn, disp_labels=disp_labels)
        self.assertEqual(
            text, 'jmp [cs:bx + jumptable_76db - IMAGE_BASE]',
        )
        built = micro_assemble(
            text, insn.address, disp_labels=disp_labels, image_base=8,
        )
        self.assertEqual(bytes(built), original)


if __name__ == '__main__':
    unittest.main()
