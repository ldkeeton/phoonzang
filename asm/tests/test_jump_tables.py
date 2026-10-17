import struct
import unittest
from types import SimpleNamespace

import numpy as np
from capstone import Cs, CS_ARCH_X86, CS_MODE_16

from lib.model import JumpTableInfo
from tests.syms import generated
from lib.phases.recursive import (
    _code_off, _inline_call_table, _scan_jump_table,
)
from lib.phases.aztec_switch import AZTEC_SWITCH_BODY, aztec_switch_layout
from lib.verify.assemble import clear_assemble_cache, micro_assemble
from lib.compare.render import (
    _build_source,
    _render_records,
)
from lib.compare.jumptables import (
    _inject_jump_tables,
    _merge_jump_table_specs,
)
from lib.compare.splitting import _partition_function_records
from lib.compare.verify import _is_direct_far, _find_trampoline_tables


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


class CodeOffSignExtensionTests(unittest.TestCase):
    """``_code_off`` must treat a signed displacement as a 16-bit offset.

    capstone sign-extends ``jmp [cs:bx + disp]`` when ``disp`` has the high
    bit set (``-0x78c1`` for ``0x873f``); before masking, the translated
    offset went negative and the jump table was silently dropped.
    """

    class _Overlay:
        def __init__(self, o_corg):
            self.o_corg = o_corg

        def code_offset(self, value):
            return 14 + (value - self.o_corg)

    def test_overlay_negative_displacement_masks_to_16_bits(self):
        ctx = type('Ctx', (), {
            'segments': self._Overlay(0x5055), 'start_offset': 14,
        })()
        self.assertEqual(_code_off(ctx, -0x78c1), 0x36f8)

    def test_mz_fallback_masks_to_16_bits(self):
        ctx = type('Ctx', (), {'segments': None, 'start_offset': 0})()
        self.assertEqual(_code_off(ctx, -0x7ff0), 0x8010)

    def test_driver_value_is_file_offset_plus_load_offset(self):
        # A raw driver runs at CS:0x100, so a stored code pointer is file+0x100.
        segments = type('Seg', (), {
            'load_offset': 0x100, 'code_offset': lambda self, v: None})()
        ctx = type('Ctx', (), {'segments': segments, 'start_offset': 0})()
        self.assertEqual(_code_off(ctx, 0x045e), 0x035e)


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
        label_map = {0x210: generated('string_loc', 0x210),
                     0x220: generated('string_loc', 0x220)}
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

    def test_overlay_code_targets_map_via_o_corg(self):
        # Values are CS offsets in an overlay loaded at o_corg=0x1000; a word
        # ``value`` addresses file offset start_offset + (value - o_corg).
        binary = bytearray(0x300)
        binary[0x250:0x256] = b'\x10\x10\x30\x10\x70\x10'
        records = [
            {'type': 'mnem', 'text': 'nop', 'offset': 0x210, 'size': 1},
            {'type': 'mnem', 'text': 'nop', 'offset': 0x230, 'size': 1},
            {'type': 'mnem', 'text': 'nop', 'offset': 0x270, 'size': 1},
            {'type': 'data_block', 'start': 0x250, 'end': 0x256, 'bytes': []},
        ]
        specs = [{
            'table_addr': 0x250, 'table_end': 0x256, 'jmp_addr': 0x290,
            'count': 3, 'entry_size': 2, 'label': 'jumptable_0250',
            'source': 'auto', 'note': '',
        }]
        out, injected, _ = _inject_jump_tables(
            records, specs, bytes(binary), 0x200, {}, {}, o_corg=0x1000,
        )
        self.assertEqual(injected, {0x250: 'jumptable_0250'})
        table = next(r for r in out if r['type'] == 'jump_table')
        self.assertEqual(table['adjust'], 0x1000)
        self.assertEqual(
            table['entries'],
            ['jumptable_0250_case_0', 'jumptable_0250_case_1',
             'jumptable_0250_case_2'],
        )
        lines = _render_records(out, bytes(binary))
        self.assertTrue(any(
            'jumptable_0250_case_0 - IMAGE_BASE + 0x1000' in line
            for line in lines))

    def test_driver_words_are_file_offset_plus_load_offset(self):
        binary = bytearray(self._binary())
        # Entries 0x0310/0x0320 are cs values; at load_offset 0x100 they name
        # file offsets 0x210/0x220, not 0x310/0x320.
        struct.pack_into('<HH', binary, 0x250, 0x0310, 0x0320)
        records = [{
            'type': 'data_block', 'start': 0x250, 'end': 0x256,
            'bytes': [f'0x{b:02x}' for b in binary[0x250:0x256]],
        }]
        specs = [{
            'table_addr': 0x250, 'table_end': 0x256, 'jmp_addr': 0x2ac,
            'count': 3, 'entry_size': 2, 'label': 'jumptable_0250',
            'source': 'auto', 'note': '',
        }]
        label_map = {0x210: generated('string_loc', 0x210),
                     0x220: generated('string_loc', 0x220)}
        out, _, _ = _inject_jump_tables(
            records, specs, bytes(binary), 0, label_map, {}, load_offset=0x100,
        )
        table = next(r for r in out if r['type'] == 'jump_table')
        self.assertEqual(table['entries'][:2],
                         ['string_loc_0210', 'string_loc_0220'])

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
        self.assertTrue(any(
            line.startswith('    dw string_loc_0210 - IMAGE_BASE')
            and line.rstrip().endswith('; 0x0250') for line in lines))
        self.assertTrue(any(
            line.startswith('    dw 0') and line.rstrip().endswith('; 0x0252')
            for line in lines))
        self.assertTrue(any(
            line.startswith('    dw 0x1234')
            and line.rstrip().endswith('; 0x0254') for line in lines))

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


class IncludeOffsetTests(unittest.TestCase):
    def test_include_record_carries_first_address(self):
        records = [
            {'type': 'label', 'text': 'foo:', 'offset': 0x210},
            {'type': 'mnem', 'text': 'nop', 'offset': 0x210, 'size': 1},
            {'type': 'mnem', 'text': 'ret', 'offset': 0x211, 'size': 1},
        ]
        main, sources = _partition_function_records(
            records, [(0x210, 0x212, 'foo')], 'demo',
        )
        inc = next(r for r in main if r['type'] == 'include')
        self.assertEqual(inc['offset'], 0x210)
        lines = _render_records(main, bytes(0x300))
        self.assertTrue(any(
            line.startswith('%include "demo/foo.asm"')
            and line.rstrip().endswith('; 0x0210') for line in lines))
        self.assertIn('demo/foo.asm', sources)


class DirectFarClassificationTest(unittest.TestCase):
    """Only *direct* far transfers are inline data (7E.4).

    The Aztec compiler emits far calls indirectly; capstone names both the
    direct ``9A``/``EA`` forms and the indirect ``FF /3`` form ``lcall``, so
    the immediate-operand shape must gate the reclassification.
    """

    def _insn(self, raw, address=0):
        return _disassemble(bytes.fromhex(raw), address)[0]

    def test_direct_lcall_is_data(self):
        self.assertTrue(_is_direct_far(self._insn('9a1e9bc3b8')))

    def test_direct_ljmp_is_data(self):
        self.assertTrue(_is_direct_far(self._insn('ea00ec00f1')))

    def test_indirect_far_call_is_not_data(self):
        self.assertFalse(_is_direct_far(self._insn('2eff1ebf2f')))

    def test_near_call_is_not_data(self):
        self.assertFalse(_is_direct_far(self._insn('e80000')))


class TrampolineLookupTableTest(unittest.TestCase):
    """``mov cx, N; call <pop...jmp reg>`` introduces N+1 inline words (7E.4).

    The table immediately follows the call -- it is the return address the
    helper pops -- and a returning callee must never trigger the rule.
    """

    def _data(self, callee):
        data = bytearray(0x120)
        data[0x100:0x106] = bytes.fromhex('b90200e80a00')  # mov cx,2; call 0x110
        data[0x106:0x10c] = bytes.fromhex('110022003300')  # 3 table words
        data[0x110:0x110 + len(callee) // 2] = bytes.fromhex(callee)
        return bytes(data)

    def _find(self, callee):
        data = self._data(callee)
        insns = _disassemble(data[0x100:], 0x100)
        return _find_trampoline_tables(insns, data, len(data))

    def test_detects_lookup_table(self):
        self.assertEqual(self._find('5bffe1'), [(0x106, 6, 3)])

    def test_ignores_returning_helper(self):
        self.assertEqual(self._find('5bc3'), [])



def _aztec_switch_image():
    """``mov cx, 3; call helper`` + 2 keys + 3 targets, helper at 0x180.

    MZ convention with ``start_offset`` 0x100: a CS word ``v`` addresses file
    offset ``v + 0x100``.  Targets 0x40/0x50/0x60 -> files 0x140/0x150/0x160.
    """
    data = bytearray(0x200)
    data[0x100:0x106] = bytes.fromhex('b90300e87a00')  # mov cx,3; call 0x180
    struct.pack_into('<5H', data, 0x106, 0x0007, 0x0009, 0x40, 0x50, 0x60)
    data[0x140:0x170] = b'\xc3' * 0x30
    data[0x180:0x180 + len(AZTEC_SWITCH_BODY)] = AZTEC_SWITCH_BODY
    return bytes(data)


class InlineCallTableTests(unittest.TestCase):
    """A non-returning call followed by an inline key/target table (plan.md D8).

    The Aztec switch helper (``mov cx, N; call helper``) is followed by N-1
    keys and N code targets; the decoder must stop at the call, carve the
    table and queue the targets.  The recognizer is injected, so with none
    registered the call is an ordinary call.
    """

    def _ctx(self, data):
        return SimpleNamespace(hard_data=np.zeros(len(data), dtype=bool),
                               start_offset=0x100, segments=None)

    def _decode(self, data, recognizers=(aztec_switch_layout,)):
        insns = _disassemble(data[0x100:0x106], 0x100)
        return _inline_call_table(self._ctx(data), data, len(data),
                                  insns[1], insns[0], recognizers)

    def test_no_recognizer_no_table(self):
        self.assertIsNone(self._decode(_aztec_switch_image(), ()))

    def test_splits_keys_and_targets(self):
        jt = self._decode(_aztec_switch_image())
        self.assertEqual((jt.table_addr, jt.table_end, jt.keys),
                         (0x106, 0x110, 2))
        self.assertEqual(jt.targets, [0x140, 0x150, 0x160])

    def test_refuses_without_mov_cx(self):
        data = bytearray(_aztec_switch_image())
        data[0x100:0x103] = bytes.fromhex('ba0300')  # mov dx, 3
        self.assertIsNone(self._decode(bytes(data)))

    def test_refuses_other_helper(self):
        data = bytearray(_aztec_switch_image())
        data[0x180:0x183] = bytes.fromhex('5bffe1')  # generic pop; jmp cx
        self.assertIsNone(self._decode(bytes(data)))

    def test_refuses_target_outside_image(self):
        data = bytearray(_aztec_switch_image())
        struct.pack_into('<H', data, 0x10e, 0xff00)
        self.assertIsNone(self._decode(bytes(data)))

    def test_keys_stay_literal_targets_resolve(self):
        data = _aztec_switch_image()
        jt = self._decode(data)
        specs = _merge_jump_table_specs([jt], [], 0x100, len(data))
        self.assertEqual(specs[0]['keys'], 2)
        records = [{'type': 'data_block', 'start': 0x106, 'end': 0x110,
                    'bytes': []}]
        names = {0x140: generated('case_a', 0x140), 0x150: generated('case_b', 0x150),
                 0x160: generated('case_c', 0x160)}
        label_map = dict(names)
        out, _, _ = _inject_jump_tables(records, specs, data, 0x100,
                                        label_map, {})
        table = next(r for r in out if r['type'] == 'jump_table')
        self.assertEqual(table['entries'],
                         [0x0007, 0x0009, names[0x140], names[0x150], names[0x160]])
        lines = '\n'.join(_render_records(out, data, show_offsets=True))
        self.assertIn('dw 0x0007', lines)
        self.assertRegex(lines, r'dw 0x0009\s+; 0x0108 ; literal')
        self.assertRegex(lines, r'dw case_a_0140 - IMAGE_BASE\s+; 0x010a\n')


if __name__ == '__main__':
    unittest.main()
