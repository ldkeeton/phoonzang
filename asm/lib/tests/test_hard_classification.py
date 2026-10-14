import unittest

import numpy as np
import polars as pl

from lib.classify import classify
from lib.model import IS_CODE, IS_DATA, PhaseContext
from lib.phases.arbiter import ArbiterPhase
from lib.phases.recursive import RecursiveDescentPhase
from lib.phases.sidecar import SidecarPhase
from lib.sidecar.errors import SidecarError
from lib.sidecar.loader import _validate
from lib.sidecar.binary import per_binary
from lib.decode import disassemble
from lib.compare.verify import verify
from lib.compare.analysis import (
    _compute_branch_ownership,
    _local_branch_targets,
)
from lib.compare.postprocess import _postprocess_data_blocks


def _branch_binary(opcode, target=16):
    data = bytearray(64)
    if opcode == 'call':
        data[:3] = b'\xe8' + (target - 3).to_bytes(2, 'little', signed=True)
        data[3] = 0xc3
    elif opcode == 'jmp':
        data[:3] = b'\xe9' + (target - 3).to_bytes(2, 'little', signed=True)
    elif opcode == 'jcc':
        data[:2] = b'\x75' + bytes([target - 2])
        data[2] = 0xc3
    data[target:target + 5] = b'\x55\x8b\xec\x90\xc3'
    return bytes(data)


class HardClassificationTests(unittest.TestCase):
    def test_verified_direct_branch_overrides_heuristic_data(self):
        target = 16
        for opcode in ('call', 'jmp', 'jcc'):
            with self.subTest(opcode=opcode):
                self._assert_direct_branch_overrides_data(opcode, target)

    def test_intra_function_branch_targets_keep_local_labels(self):
        # push bp; mov bp,sp; jne target; nop; nop; nop; ret
        data = bytes((0x55, 0x8b, 0xec, 0x75, 0x03,
                      0x90, 0x90, 0x90, 0xc3))
        target = 8
        ctx = PhaseContext(data, entry_points=[0])
        recursive = RecursiveDescentPhase()
        ctx.add_layer(recursive.output_slot, recursive.run(None, ctx))

        self.assertIn(target, ctx.code_targets)
        self.assertIn(target, ctx.branch_targets)
        self.assertNotIn(target, ctx.label_target_set)

        bitmap = bytearray([IS_CODE] * len(data))
        asm_text, _, _, _, _ = verify(
            data,
            0,
            list(disassemble(data, 0, bitmap)),
            'local_branch_case',
            label_map={0: 'dos_mem_loc_0000'},
            bitmap=bitmap,
            code_targets=ctx.code_target_set,
            function_roots={0: 'dos_mem_loc_0000'},
            branch_targets=ctx.branch_targets,
            branch_edges=ctx.branch_edges,
        )

        local_target = '@..dos_mem_loc_0000.l1'
        self.assertIn(f'{local_target}:', asm_text)
        self.assertIn(f'jne short {local_target}', asm_text)

    def test_branch_from_one_function_into_another_stays_global(self):
        # First function conditionally branches into the body of a second.
        data = bytes(0x100) + bytes((0x75, 0x10, 0xc3)) + bytes(13) + bytes((
            0x55, 0x90, 0x90, 0xc3,
        ))
        bitmap = bytearray([IS_CODE] * len(data))
        bitmap[0x103:0x110] = bytes([IS_DATA] * 13)
        insns = list(disassemble(data, 0x100, bitmap))
        roots = {0x100: None, 0x110: 'other_function'}
        owners, edge_sources, direct_edges, roots = _compute_branch_ownership(
            insns, roots, {(0x100, 0x112)},
            binary_size=len(data), start_offset=0x100,
        )

        local = _local_branch_targets(
            {0x112}, owners, edge_sources, roots,
        )

        self.assertNotIn(0x112, local)
        self.assertEqual(owners[0x112], {0x100, 0x110})
        self.assertIn((0x100, 0x112), direct_edges)

    def test_branch_after_early_return_belongs_to_same_function(self):
        # Mirrors math_loc_47e8: a conditional reaches code after a return
        # block, then that code jumps back to the shared return epilogue.
        data = bytearray(0x11b)
        data[0x100:] = bytes((
            0x55,                         # 0100 push bp
            0x8b, 0xec,                   # 0101 mov bp, sp
            0xa9, 0x01, 0x00,             # 0103 test ax, 1
            0x75, 0x08,                   # 0106 jne 0110
            0xb8, 0xff, 0xff,             # 0108 mov ax, 0xffff
            0x5e,                         # 010b pop si
            0x8b, 0xe5,                   # 010c mov sp, bp
            0x5d,                         # 010e pop bp
            0xc3,                         # 010f ret
            0x83, 0xe0, 0xfe,             # 0110 and ax, 0xfffe
            0xa3, 0x20, 0x00,             # 0113 mov [0x20], ax
            0xb8, 0x00, 0x00,             # 0116 mov ax, 0
            0xeb, 0xf0,                   # 0119 jmp 010b
        ))
        bitmap = bytearray([IS_CODE] * len(data))
        insns = list(disassemble(bytes(data), 0x100, bitmap))
        branch_edges = {(0x106, 0x110), (0x119, 0x10b)}
        roots = {0x100: 'math_loc_0100'}

        asm_text, _, _, _, _ = verify(
            bytes(data), 0x100, insns, 'early_return_case',
            label_map={0x100: 'math_loc_0100'},
            bitmap=bitmap,
            code_targets={0x10b, 0x110},
            function_roots=roots,
            branch_targets={0x10b, 0x110},
            branch_edges=branch_edges,
        )

        self.assertIn('@..math_loc_0100.l1:', asm_text)
        self.assertIn('@..math_loc_0100.l2:', asm_text)
        self.assertIn('jne short @..math_loc_0100.l2', asm_text)
        self.assertIn('jmp short @..math_loc_0100.l1', asm_text)

    def _assert_direct_branch_overrides_data(self, opcode, target):
        ctx = PhaseContext(_branch_binary(opcode, target), entry_points=[0])

        # Several independent data heuristics all claim the target function.
        for name in ('carve_1', 'carve_2', 'prune_zero', 'prune_dead',
                     'prune_dead_before', 'error_handler'):
            values = np.zeros(len(ctx.binary_data), dtype=np.float32)
            values[target:target + 5] = -1.0
            ctx.add_layer(name, pl.Series(name, values))

        recursive = RecursiveDescentPhase()
        ctx.add_layer(recursive.output_slot, recursive.run(None, ctx))

        self.assertTrue(ctx.code_targets[target].hard)
        self.assertTrue(ctx.hard_code[target:target + 5].all())

        result = ArbiterPhase().run(None, ctx).to_numpy()
        self.assertTrue(all(result[target + i] == IS_CODE for i in range(5)))

    def test_sidecar_force_data_blocks_targets_and_wins_final_classification(self):
        target = 16
        data = _branch_binary('call', target)
        sidecar_entry = {
            'force_data': [{'start': '10', 'end': '14'}],
            'force_code': [],
        }

        bitmap, info = classify(data, entry_points=[0],
                                sidecar_entry=sidecar_entry)

        self.assertNotIn(target, info['discovered'])
        self.assertTrue(all(bitmap[target + i] == IS_DATA for i in range(5)))

        # The arbiter's final explicit-data overlay is also authoritative if
        # an earlier stage supplied a hard-code opinion for these bytes.
        ctx = PhaseContext(data, sidecar_entry=sidecar_entry)
        ctx.hard_code[target:target + 5] = True
        code = np.zeros(len(data), dtype=np.float32)
        code[target:target + 5] = 1.0
        ctx.add_layer('recursive', pl.Series('recursive', code))
        result = ArbiterPhase().run(None, ctx).to_numpy()
        self.assertTrue(all(result[target + i] == IS_DATA for i in range(5)))

    def test_sidecar_force_code_overrides_heuristic_data(self):
        target = 16
        data = bytearray(64)
        data[target:target + 5] = b'\x55\x8b\xec\x90\xc3'
        ctx = PhaseContext(
            data,
            sidecar_entry={
                'force_data': [],
                'force_code': [{'start': '10', 'end': '14'}],
            },
        )

        for name in ('carve_1', 'carve_2', 'prune_zero'):
            values = np.zeros(len(data), dtype=np.float32)
            values[target:target + 5] = -1.0
            ctx.add_layer(name, pl.Series(name, values))

        sidecar = SidecarPhase()
        ctx.add_layer(sidecar.output_slot, sidecar.run(None, ctx))
        recursive = RecursiveDescentPhase()
        ctx.add_layer(recursive.output_slot, recursive.run(None, ctx))

        self.assertTrue(ctx.code_targets[target].hard)
        self.assertTrue(ctx.hard_code[target:target + 5].all())
        result = ArbiterPhase().run(None, ctx).to_numpy()
        self.assertTrue(all(result[target + i] == IS_CODE for i in range(5)))

    def test_verify_does_not_reintroduce_labels_or_code_in_hard_data(self):
        target = 16
        data = _branch_binary('call', target)[:target + 5]
        bitmap = bytearray([IS_CODE] * len(data))
        hard_data = bytearray(len(data))
        hard_data[target:target + 5] = bytes([1] * 5)

        asm_text, _, emitted, _, _ = verify(
            data,
            0,
            list(disassemble(data, 0, bitmap)),
            'hard_data_case',
            label_map={target: f'loc_{target:04x}'},
            bitmap=bitmap,
            code_targets={target},
            hard_data=hard_data,
        )

        self.assertNotIn(f'loc_{target:04x}', asm_text)
        self.assertTrue(all(emitted[target + i] == IS_DATA for i in range(5)))

    def test_verify_respects_final_data_bitmap_for_stale_instructions(self):
        target = 16
        data = _branch_binary('call', target)
        decoded_as_code = bytearray([IS_CODE] * len(data))
        stale_instructions = list(disassemble(data, 0, decoded_as_code))
        final_bitmap = bytearray([IS_CODE] * target +
                                 [IS_DATA] * (len(data) - target))

        asm_text, _, emitted, _, _ = verify(
            data,
            0,
            stale_instructions,
            'stale_instruction_case',
            label_map={target: f'loc_{target:04x}'},
            bitmap=final_bitmap,
            code_targets={target},
        )

        self.assertNotIn(f'loc_{target:04x}:', asm_text)
        self.assertTrue(all(value == IS_DATA
                            for value in emitted[target:]))

    def test_emission_does_not_promote_fragments_of_large_data_run(self):
        data = bytearray([0x90] * 65)
        data[16] = 0xc3
        bitmap = bytearray([IS_CODE] + [IS_DATA] * 64)
        blocks = [
            {'type': 'data_block', 'start': 1, 'end': 17,
             'bytes': [f'0x{b:02x}' for b in data[1:17]]},
            {'type': 'data_block', 'start': 17, 'end': 33,
             'bytes': [f'0x{b:02x}' for b in data[17:33]]},
            {'type': 'data_block', 'start': 33, 'end': 65,
             'bytes': [f'0x{b:02x}' for b in data[33:65]]},
        ]

        emitted = _postprocess_data_blocks(
            blocks, bytes(data), set(), {}, bitmap=bitmap,
        )

        self.assertEqual([record['type'] for record in emitted],
                         ['data_block'] * 3)

    def test_emission_does_not_promote_long_data_tail_after_code_prefix(self):
        data = bytearray([0xc3] + [0x90] * 64)
        bitmap = bytearray([IS_CODE] + [IS_DATA] * 64)
        blocks = [{
            'type': 'data_block', 'start': 0, 'end': len(data),
            'bytes': [f'0x{b:02x}' for b in data],
        }]

        emitted = _postprocess_data_blocks(
            blocks, bytes(data), set(), {}, bitmap=bitmap,
        )

        self.assertEqual([record['type'] for record in emitted],
                         ['data_block'])

    def test_emission_still_promotes_short_dead_code_after_code(self):
        data = bytearray([0xc3] + [0x90] * 16)
        data[-1] = 0xc3
        bitmap = bytearray([IS_CODE] + [IS_DATA] * 16)
        blocks = [{
            'type': 'data_block', 'start': 1, 'end': len(data),
            'bytes': [f'0x{b:02x}' for b in data[1:]],
        }]

        emitted = _postprocess_data_blocks(
            blocks, bytes(data), set(), {}, bitmap=bitmap,
        )

        self.assertIn('mnem', [record['type'] for record in emitted])


    def test_overlapping_sidecar_ranges_fail_validation(self):
        sidecars = (
            {
                'app': 'TEST',
                'force_data': [{'start': '10', 'end': '20'}],
                'force_code': [{'start': '20', 'end': '30'}],
            },
            {
                'app': 'TEST',
                'force_data': [{'start': '10', 'end': '20'}],
                'binaries': {
                    'sample': {
                        'force_code': [{'start': '18', 'end': '21'}],
                    },
                },
            },
        )
        for sidecar in sidecars:
            with self.subTest(sidecar=sidecar):
                with self.assertRaisesRegex(SidecarError, 'overlap'):
                    _validate(sidecar)
        with self.assertRaisesRegex(SidecarError, 'overlap'):
            PhaseContext(
                _branch_binary('call'),
                sidecar_entry={
                    'force_data': [{'start': '10', 'end': '20'}],
                    'force_code': [{'start': '20', 'end': '30'}],
                },
            )

    def test_project_force_data_is_inherited_by_each_binary(self):
        sidecar = {
            'app': 'TEST',
            'force_data': [{'start': '10', 'end': '14'}],
            'binaries': {'sample': {'file': 'SAMPLE.DRV'}},
        }
        self.assertEqual(per_binary(sidecar, 'sample')['force_data'],
                         [{'start': '10', 'end': '14'}])
        self.assertEqual(per_binary(sidecar, 'unlisted')['force_data'],
                         [{'start': '10', 'end': '14'}])

    def test_external_data_is_validated_and_normalized(self):
        sidecar = {
            'app': 'TEST',
            'binaries': {
                'sample': {
                    'external_data': {
                        '0x410': {'name': 'bios_data_0410', 'segment': 'es'},
                    },
                },
            },
        }
        _validate(sidecar)
        self.assertEqual(
            per_binary(sidecar, 'sample')['external_data'],
            {0x410: {'name': 'bios_data_0410', 'segment': 'es'}},
        )

    def test_external_data_defaults_empty(self):
        sidecar = {'app': 'TEST', 'binaries': {'sample': {'file': 'SAMPLE.DRV'}}}
        self.assertEqual(per_binary(sidecar, 'sample')['external_data'], {})

    def test_external_data_rejects_unknown_segment(self):
        sidecar = {
            'app': 'TEST',
            'binaries': {
                'sample': {
                    'external_data': {'0x410': {'name': 'x', 'segment': 'zz'}},
                },
            },
        }
        with self.assertRaisesRegex(SidecarError, 'segment'):
            _validate(sidecar)

    def test_entry_symbol_is_validated_and_exposed_per_binary(self):
        sidecar = {
            'app': 'TEST',
            'binaries': {'sample': {'entry_symbol': 'aztec_begin'}},
        }
        _validate(sidecar)
        self.assertEqual(
            per_binary(sidecar, 'sample')['entry_symbol'], 'aztec_begin')
        self.assertIsNone(per_binary(sidecar, 'unlisted')['entry_symbol'])

    def test_entry_symbol_rejects_non_identifier(self):
        sidecar = {
            'app': 'TEST',
            'binaries': {'sample': {'entry_symbol': 'not a symbol'}},
        }
        with self.assertRaisesRegex(SidecarError, 'entry_symbol'):
            _validate(sidecar)


class SidecarDataPointerCorpusTests(unittest.TestCase):
    """D3: the ``data_pointers`` / ``not_pointers`` corpus (plan Section 14).

    The corpus is the ground-truth calibration set for the F7 scorer: positive
    entries assert a word is a pointer, negatives pin the false-positive
    direction.  The schema exists now; the scorer (D4) consumes it later.
    """

    def test_pointers_are_validated_and_normalized(self):
        sidecar = {
            'app': 'TEST',
            'binaries': {
                'sample': {
                    'data_pointers': [
                        {'offset': '10162', 'space': 'ds',
                         'target': 'dseg_0c6c'},
                    ],
                    'not_pointers': [{'offset': '3140', 'note': 'palette'}],
                },
            },
        }
        _validate(sidecar)
        sample = per_binary(sidecar, 'sample')
        self.assertEqual(sample['data_pointers'],
                         [{'offset': 0x10162, 'space': 'ds',
                           'target': 'dseg_0c6c'}])
        self.assertEqual(sample['not_pointers'],
                         [{'offset': 0x3140, 'note': 'palette'}])

    def test_project_corpus_is_inherited_by_each_binary(self):
        sidecar = {
            'app': 'TEST',
            'data_pointers': [{'offset': '10', 'space': 'ds'}],
            'binaries': {'sample': {'file': 'SAMPLE.DRV'}},
        }
        _validate(sidecar)
        inherited = [{'offset': 0x10, 'space': 'ds'}]
        self.assertEqual(per_binary(sidecar, 'sample')['data_pointers'],
                         inherited)
        self.assertEqual(per_binary(sidecar, 'unlisted')['data_pointers'],
                         inherited)

    def test_corpus_defaults_empty(self):
        sidecar = {'app': 'TEST', 'binaries': {'sample': {'file': 'S'}}}
        sample = per_binary(sidecar, 'sample')
        self.assertEqual(sample['data_pointers'], [])
        self.assertEqual(sample['not_pointers'], [])

    def test_pointer_without_offset_is_rejected(self):
        sidecar = {'app': 'TEST',
                   'binaries': {'s': {'data_pointers': [{'space': 'ds'}]}}}
        with self.assertRaisesRegex(SidecarError, 'offset'):
            _validate(sidecar)

    def test_pointer_with_unknown_space_is_rejected(self):
        sidecar = {'app': 'TEST', 'binaries': {'s': {
            'data_pointers': [{'offset': '10', 'space': 'zz'}]}}}
        with self.assertRaisesRegex(SidecarError, 'space'):
            _validate(sidecar)

    def test_offset_asserted_both_ways_is_rejected(self):
        sidecar = {'app': 'TEST', 'binaries': {'s': {
            'data_pointers': [{'offset': '10'}],
            'not_pointers': [{'offset': '10'}]}}}
        with self.assertRaisesRegex(SidecarError, 'both'):
            _validate(sidecar)


if __name__ == '__main__':
    unittest.main()
