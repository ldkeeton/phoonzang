import struct
import unittest

from capstone import Cs, CS_ARCH_X86, CS_MODE_16

from lib.format import format_instruction
from lib.compare.render import (
    _build_source,
    _render_mz_header,
)
from lib.compare.analysis import (
    _compute_branch_ownership,
    _compute_local_labels,
    _local_branch_targets,
)
from tests.syms import generated, label, loc, local, routine
from lib.compare.splitting import (
    _extend_split_ranges_with_local_tails,
    _select_split_ranges,
)


class DirectFlowLabelTests(unittest.TestCase):
    def test_labels_in_binary_flow_target_even_without_decoded_target(self):
        md = Cs(CS_ARCH_X86, CS_MODE_16)
        md.detail = True
        insn = next(md.disasm(bytes.fromhex('e9 05 00'), 0x100))

        roots = {0x100: routine('test_function', 0x100)}
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

        roots = {0x10: routine('test_function', 0x10)}
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

        roots = {0x20: routine('test_function', 0x20)}
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

        self.assertEqual(text, 'mov ax, word [0x20]')


class FunctionIncludeTests(unittest.TestCase):
    def test_selects_named_roots_and_clips_ranges_before_next_root(self):
        label_map = {
            0x100: routine('main', 0x100),
            0x110: generated('bios_video_loc', 0x3067),
            0x120: loc(0x23ef),
        }
        boundaries = {
            0x100: (0x130, 'main'),
            0x110: (0x125, 'bios_video_loc_3067'),
        }

        self.assertEqual(
            _select_split_ranges(
                label_map,
                {'main', 'bios_video_loc_3067', 'loc_23ef'},
                boundaries,
                binary_size=0x200,
            ),
            [
                (0x100, 0x110, 'main'),
                (0x110, 0x125, 'bios_video_loc_3067'),
            ],
        )

    def test_a_switch_case_body_does_not_start_a_fragment(self):
        # ``vbase`` ``loc_GLHQ``: the bodies of its switch carry names (the
        # table's words reference them), but they are the routine's own code,
        # so its fragment runs through them to the next routine.
        arm = generated('leaf_loc', 0x110)
        case = arm.renamed(str(arm), arm.source, role='case')
        label_map = {
            0x100: routine('main', 0x100),
            0x110: case,
            0x140: routine('next', 0x140),
        }
        self.assertEqual(
            _select_split_ranges(
                label_map, {'main', str(case), 'next'}, binary_size=0x200)[0],
            (0x100, 0x140, 'main'),
        )
        # The same name without the case mark is a routine of its own.
        label_map[0x110] = arm
        self.assertEqual(
            [start for start, _, _ in _select_split_ranges(
                label_map, {'main', str(arm), 'next'}, binary_size=0x200)],
            [0x100, 0x110, 0x140],
        )

    def test_capped_c_routine_carves_following_code_into_its_own_fragment(self):
        label_map = {
            0x100: routine('aztec_open', 0x100),
            0x150: loc(0x4be6),
            0x170: routine('aztec_lrm', 0x170),
        }
        self.assertEqual(
            _select_split_ranges(
                label_map,
                {'aztec_open', 'aztec_lrm'},
                binary_size=0x200,
                c_override_lengths={0x100: 0x50},
            ),
            [
                (0x100, 0x150, 'aztec_open'),
                (0x150, 0x170, 'loc_4be6'),
                (0x170, 0x200, 'aztec_lrm'),
            ],
        )

    def test_capped_c_routine_without_tail_label_stays_clipped(self):
        label_map = {0x100: routine('aztec_free', 0x100), 0x170: generated('string_loc', 0x4867)}
        self.assertEqual(
            _select_split_ranges(
                label_map,
                {'aztec_free', 'string_loc_4867'},
                binary_size=0x200,
                c_override_lengths={0x100: 0x50},
            ),
            [
                (0x100, 0x150, 'aztec_free'),
                (0x170, 0x200, 'string_loc_4867'),
            ],
        )

    def test_a_declared_root_splits_even_with_a_bare_loc_name(self):
        """A declared dispatch handler owns its fragment (D7.2c-2d).

        ``0x120`` is what ``_select_split_ranges`` refuses on the name alone; a
        declaration that says it is a function entry must override that, because
        the declared table *is* the layout.
        """
        label_map = {
            0x100: routine('main', 0x100),
            0x110: generated('io_loc', 0x016e),
            0x120: loc(0x0154),
            0x140: generated('leaf_loc', 0x02b3),
        }
        requested = {'main', 'io_loc_016e', 'leaf_loc_02b3'}
        self.assertEqual(
            _select_split_ranges(label_map, requested, binary_size=0x200),
            [
                (0x100, 0x110, 'main'),
                (0x110, 0x140, 'io_loc_016e'),
                (0x140, 0x200, 'leaf_loc_02b3'),
            ],
        )
        self.assertEqual(
            _select_split_ranges(label_map, requested, binary_size=0x200,
                                 declared_roots={0x120}),
            [
                (0x100, 0x110, 'main'),
                (0x110, 0x120, 'io_loc_016e'),
                (0x120, 0x140, 'loc_0154'),
                (0x140, 0x200, 'leaf_loc_02b3'),
            ],
        )

    def test_loc_fragment_scopes_local_labels(self):
        local_targets = {0x120, 0x124}
        owners = {0x120: {0x100}, 0x124: {0x100}}
        label_map = {0x100: loc(0x4be6)}
        labels = _compute_local_labels(
            local_targets, owners, {}, label_map, {'loc_4be6'},
        )
        self.assertEqual(labels[0x120], '@..loc_4be6.l1')
        self.assertEqual(labels[0x124], '@..loc_4be6.l2')

    def test_target_in_another_fragment_is_not_local(self):
        # 0x180 is the owner's shared exit, but it is laid out inside the
        # fragment of the routine that starts at 0x150.
        ranges = [(0x100, 0x150, 'owner'), (0x150, 0x1a0, 'neighbour')]
        label_map = {0x100: routine('owner', 0x100)}
        labels = _compute_local_labels(
            {0x120, 0x180}, {0x120: {0x100}, 0x180: {0x100}}, {}, label_map,
            {'owner'}, split_ranges=ranges,
        )
        self.assertIn(0x120, labels)
        self.assertNotIn(0x180, labels)

    def test_loc_owner_without_fragment_is_scoped_by_address(self):
        local_targets = {0x120}
        owners = {0x120: {0x100}}
        label_map = {0x100: loc(0x4be6)}
        labels = _compute_local_labels(
            local_targets, owners, {}, label_map, set(),
        )
        self.assertEqual(labels[0x120], '@..loc_4be6.l1')

    def test_unnamed_owner_locals_independent_of_other_owners(self):
        targets = {0x120, 0x220}
        owners = {0x120: {0x100}, 0x220: {0x200}}
        both = _compute_local_labels(targets, owners, {}, {}, set())
        alone = _compute_local_labels({0x220}, {0x220: {0x200}}, {}, {}, set())
        self.assertEqual(both[0x220], '@..loc_0200.l1')
        self.assertEqual(alone[0x220], both[0x220])

    def test_named_function_include_starts_at_its_call_target_prefix(self):
        records = [
            label('stack_alloc_check', 0x100),
            {'type': 'mnem', 'text': 'pop bx', 'offset': 0x100, 'size': 1},
            {'type': 'mnem', 'text': 'push bp', 'offset': 0x101, 'size': 1},
            {'type': 'mnem', 'text': 'ret', 'offset': 0x102, 'size': 1},
        ]
        master, includes = _build_source(
            records, 0, bytes(0x103), label_map={}, show_offsets=False,
            split_ranges=[(0x100, 0x103, 'stack_alloc_check')],
            split_dir='ds',
        )

        self.assertIn('%include "ds/stack_alloc_check.asm"', master)
        self.assertNotIn('loc_0100:', master)
        self.assertEqual(
            includes['ds/stack_alloc_check.asm'],
            'stack_alloc_check:\n    pop bx\n    push bp\n    ret\n',
        )

    def test_referenced_local_tail_joins_its_named_function_include(self):
        records = [
            label('stack_alloc_check', 0x100),
            {'type': 'mnem', 'text': 'ja short @..stack_alloc_check.l2',
             'offset': 0x100, 'size': 2},
            {'type': 'mnem', 'text': 'ret', 'offset': 0x102, 'size': 1},
            label(local('stack_alloc_check', 0x103, 2), 0x103),
            {'type': 'mnem', 'text': 'mov sp, bp', 'offset': 0x103, 'size': 2},
            {'type': 'mnem', 'text': 'jmp near @..stack_alloc_check.l3',
             'offset': 0x105, 'size': 3},
        ]
        ranges = _extend_split_ranges_with_local_tails(
            [(0x100, 0x103, 'stack_alloc_check')], records,
        )

        self.assertEqual(
            ranges, [(0x100, 0x108, 'stack_alloc_check')],
        )
        master, includes = _build_source(
            records, 0, bytes(0x108), label_map={}, show_offsets=False,
            split_ranges=ranges, split_dir='ds',
        )

        self.assertNotIn('@..stack_alloc_check.l2:', master)
        self.assertIn(
            '@..stack_alloc_check.l2:\n    mov sp, bp\n'
            '    jmp near @..stack_alloc_check.l3\n',
            includes['ds/stack_alloc_check.asm'],
        )

    def test_include_replaces_contiguous_function_records_in_place(self):
        records = [
            label('example_fn', 0x100),
            {'type': 'mnem', 'text': 'nop', 'offset': 0x100, 'size': 1},
            label(local('example_fn', 0x101, 1), 0x101),
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
            'dw (__zimage_end - $$) % 512          ; 0x0056 ; '
            'e_cblp: bytes in final 512-byte page (0 means full)',
            source,
        )
        self.assertIn(
            '; 0x0088 ; e_cp: total 512-byte pages in the file', source,
        )
        self.assertIn('e_cparhdr: header size in 16-byte paragraphs', source)
        self.assertIn('e_ip: initial instruction pointer', source)
        self.assertIn('db 0x3b, 0x4b, 0x12, 0x34', source)

        field_lines = _render_mz_header(bytes(header))[1:]
        comment_columns = {line.index(';') for line in field_lines}
        self.assertEqual(len(comment_columns), 1)

    def test_mz_entry_symbol_renders_dynamic_e_ip(self):
        header = bytearray(0x200)
        struct.pack_into(
            '<2s13H', header, 0,
            b'MZ', 0x0056, 0x0088, 1, 0x0020, 0x0e4b, 0xffff,
            0x0ff6, 0xf198, 0, 0x4b3a, 0, 0x0020, 0,
        )
        # The header's CS:IP entry (cs=0, ip=0x4b3a) lands at file offset
        # header_size + ip == 0x200 + 0x4b3a, which is where the entry lives.
        label_map = {0x4d3a: routine('aztec_begin', 0x4d3a)}

        source, _ = _build_source(
            [], 0x200, bytes(header), label_map=label_map,
            entry_symbol='aztec_begin',
        )
        self.assertIn('IMAGE_BASE equ 0x0200', source)
        self.assertIn('dw aztec_begin - IMAGE_BASE', source)
        self.assertIn(
            '0x4b3a ; e_ip: initial instruction pointer', source,
        )

        # A declared entry that does not label CS:IP keeps the literal value.
        literal, _ = _build_source(
            [], 0x200, bytes(header), label_map=label_map,
            entry_symbol='somewhere_else',
        )
        self.assertIn('dw 0x4b3a', literal)
        self.assertNotIn('dw somewhere_else', literal)

        # ``_render_mz_header`` stays literal without a bound entry symbol.
        self.assertIn('dw 0x4b3a', '\n'.join(_render_mz_header(bytes(header))))

    def test_non_mz_header_keeps_generic_header_rendering(self):
        source, _ = _build_source(
            [], 0x200, bytes.fromhex('00 01') + bytes(0x1fe), label_map={},
        )

        self.assertIn('; header (512 bytes)', source)
        self.assertNotIn('; DOS MZ executable header', source)


if __name__ == '__main__':
    unittest.main()
