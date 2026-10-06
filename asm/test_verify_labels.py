import unittest

from capstone import Cs, CS_ARCH_X86, CS_MODE_16

from lib.format import format_instruction
from lib.verify.compare import _build_source, _compute_local_labels


class DirectFlowLabelTests(unittest.TestCase):
    def test_labels_in_binary_flow_target_even_without_decoded_target(self):
        md = Cs(CS_ARCH_X86, CS_MODE_16)
        md.detail = True
        insn = next(md.disasm(bytes.fromhex('e9 05 00'), 0x100))

        labels = _compute_local_labels(
            {}, set(), {}, {insn.address: insn}, binary_size=0x200,
        )

        self.assertIn(0x108, labels)

    def test_ignores_direct_flow_targets_outside_binary(self):
        md = Cs(CS_ARCH_X86, CS_MODE_16)
        md.detail = True
        insn = next(md.disasm(bytes.fromhex('e9 e0 ff'), 0x10))

        labels = _compute_local_labels(
            {}, set(), {}, {insn.address: insn}, binary_size=0x200,
        )

        self.assertFalse(labels)

    def test_ignores_targets_in_binary_header(self):
        md = Cs(CS_ARCH_X86, CS_MODE_16)
        md.detail = True
        insn = next(md.disasm(bytes.fromhex('e9 e8 ff'), 0x20))

        labels = _compute_local_labels(
            {}, set(), {}, {insn.address: insn},
            binary_size=0x200, start_offset=0x10,
        )

        self.assertFalse(labels)

    def test_ignores_classifier_targets_in_binary_header(self):
        labels = _compute_local_labels(
            {}, {4}, {}, {}, binary_size=0x200, start_offset=8,
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
