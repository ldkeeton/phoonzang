import struct
import unittest

from capstone import Cs, CS_ARCH_X86, CS_MODE_16

from lib.format import format_instruction
from lib.verify.compare import (
    _build_source,
    _compute_branch_ownership,
    _compute_local_labels,
    _local_branch_targets,
    _render_mz_header,
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

    def test_unsafe_split_boundary_leaves_records_in_master_source(self):
        records = [
            {'type': 'mnem', 'text': 'mov ax, bx', 'offset': 0x100, 'size': 3},
            {'type': 'mnem', 'text': 'ret', 'offset': 0x103, 'size': 1},
        ]

        master, includes = _build_source(
            records, 0, bytes(0x104), label_map={}, show_offsets=False,
            split_ranges=[(0x100, 0x102, 'partial_instruction')],
        )

        self.assertFalse(includes)
        self.assertNotIn('%include', master)
        self.assertIn('mov ax, bx', master)

    def test_incomplete_split_span_leaves_records_in_master_source(self):
        records = [
            {'type': 'mnem', 'text': 'nop', 'offset': 0x100, 'size': 1},
            {'type': 'mnem', 'text': 'ret', 'offset': 0x102, 'size': 1},
        ]

        master, includes = _build_source(
            records, 0, bytes(0x103), label_map={}, show_offsets=False,
            split_ranges=[(0x100, 0x103, 'has_gap')],
        )

        self.assertFalse(includes)
        self.assertNotIn('%include', master)
        self.assertIn('nop', master)
        self.assertIn('ret', master)


class MZHeaderRenderingTests(unittest.TestCase):
    def test_mz_header_fields_are_named_and_remaining_bytes_are_preserved(self):
        header = bytearray(0x200)
        struct.pack_into(
            '<2s13H', header, 0,
            b'MZ', 0x0056, 0x0088, 1, 0x0020, 0x0e4b, 0xffff,
            0x0ff6, 0xf198, 0, 0x4b3a, 0, 0x0020, 0,
        )
        header[28:32] = bytes.fromhex('3b 4b 12 34')

        source, _ = _build_source([], 0x200, bytes(header), label_map={})

        self.assertIn(
            '; DOS MZ executable header (512 bytes)',
            source,
        )
        self.assertIn('; e_magic: DOS MZ signature', source)
        self.assertIn(
            'dw 0x0056      ; e_cblp: bytes in final 512-byte page (0 means full)',
            source,
        )
        self.assertIn('e_cparhdr: header size in 16-byte paragraphs', source)
        self.assertIn('e_ip: initial instruction pointer', source)
        self.assertIn('db 0x3b, 0x4b, 0x12, 0x34', source)

        field_lines = _render_mz_header(bytes(header))[1:]
        comment_columns = {line.index(';') for line in field_lines}
        self.assertEqual(len(comment_columns), 1)

    def test_non_mz_header_keeps_generic_header_rendering(self):
        source, _ = _build_source(
            [], 0x200, bytes.fromhex('00 01') + bytes(0x1fe), label_map={},
        )

        self.assertIn('; header (512 bytes)', source)
        self.assertNotIn('; DOS MZ executable header', source)


if __name__ == '__main__':
    unittest.main()
