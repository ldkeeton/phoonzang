import unittest

from capstone import Cs, CS_ARCH_X86, CS_MODE_16

from lib.format import format_instruction
from lib.verify.compare import (
    _build_source,
    _compute_branch_ownership,
    _compute_local_labels,
    _local_branch_targets,
    _select_split_ranges,
)


class DirectFlowLabelTests(unittest.TestCase):
    def test_labels_in_binary_flow_target_even_without_decoded_target(self):
        md = Cs(CS_ARCH_X86, CS_MODE_16)
        md.detail = True
        insn = next(md.disasm(bytes.fromhex('e9 05 00'), 0x100))

        roots = {0x100: 'test_function'}
        owners, edge_sources, direct_edges, roots = _compute_branch_ownership(
            [insn], roots, binary_size=0x200,
        )
        local_targets = _local_branch_targets(
            {target for _, target in direct_edges},
            owners, edge_sources, roots,
        )
        labels = _compute_local_labels(
            local_targets, owners, roots, {},
        )

        self.assertIn(0x108, labels)

    def test_ignores_direct_flow_targets_outside_binary(self):
        md = Cs(CS_ARCH_X86, CS_MODE_16)
        md.detail = True
        insn = next(md.disasm(bytes.fromhex('e9 e0 ff'), 0x10))

        roots = {0x10: 'test_function'}
        owners, edge_sources, direct_edges, roots = _compute_branch_ownership(
            [insn], roots, binary_size=0x200,
        )
        labels = _compute_local_labels(
            _local_branch_targets(
                {target for _, target in direct_edges},
                owners, edge_sources, roots,
            ),
            owners, roots, {},
        )

        self.assertFalse(labels)

    def test_ignores_targets_in_binary_header(self):
        md = Cs(CS_ARCH_X86, CS_MODE_16)
        md.detail = True
        insn = next(md.disasm(bytes.fromhex('e9 e8 ff'), 0x20))

        roots = {0x20: 'test_function'}
        owners, edge_sources, direct_edges, roots = _compute_branch_ownership(
            [insn], roots, binary_size=0x200, start_offset=0x10,
        )
        labels = _compute_local_labels(
            _local_branch_targets(
                {target for _, target in direct_edges},
                owners, edge_sources, roots,
            ),
            owners, roots, {},
        )

        self.assertFalse(labels)

    def test_ignores_classifier_targets_in_binary_header(self):
        owners, edge_sources, _, roots = _compute_branch_ownership(
            [], {8: 'test_function'}, binary_size=0x200, start_offset=8,
        )
        labels = _compute_local_labels(
            _local_branch_targets({4}, owners, edge_sources, roots),
            owners, roots, {},
        )

        self.assertFalse(labels)

    def test_memory_operand_does_not_use_scoped_flow_label(self):
        md = Cs(CS_ARCH_X86, CS_MODE_16)
        md.detail = True
        insn = next(md.disasm(bytes.fromhex('a1 20 00'), 0))

        text = format_instruction(
            insn, label_map={}, local_labels={0x20: '@..local.l1'},
        )

        self.assertEqual(text, 'mov ax, word [0x0020]')


class FunctionIncludeTests(unittest.TestCase):
    def test_selects_named_roots_and_clips_ranges_before_next_root(self):
        boundaries = {
            0x100: (0x130, 'main'),
            0x110: (0x125, 'bios_video_loc_3067'),
            0x120: (0x128, 'loc_23ef'),
        }

        self.assertEqual(
            _select_split_ranges(
                boundaries,
                {'main', 'bios_video_loc_3067', 'loc_23ef'},
            ),
            [
                (0x100, 0x110, 'main'),
                (0x110, 0x125, 'bios_video_loc_3067'),
            ],
        )

    def test_include_replaces_contiguous_function_records_in_place(self):
        records = [
            {'type': 'label', 'text': 'example_fn:', 'offset': 0x100},
            {'type': 'mnem', 'text': 'nop', 'offset': 0x100, 'size': 1},
            {'type': 'label', 'text': '@..example_fn.l1:', 'offset': 0x101},
            {'type': 'mnem', 'text': 'ret', 'offset': 0x101, 'size': 1},
            {'type': 'mnem', 'text': 'nop', 'offset': 0x102, 'size': 1},
        ]

        master, includes = _build_source(
            records, 0, bytes(0x103), label_map={},
            show_offsets=False,
            split_ranges=[(0x100, 0x102, 'example_fn')],
            split_dir='ds',
        )

        self.assertIn('%include "ds/example_fn.asm"', master)
        self.assertEqual(
            includes['ds/example_fn.asm'],
            'example_fn:\n    nop\n@..example_fn.l1:\n    ret\n',
        )
        self.assertLess(master.index('%include'), master.index('nop'))


if __name__ == '__main__':
    unittest.main()
