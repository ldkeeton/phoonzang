import unittest

from lib.verify.assemble import (
    assemble_batch,
    clear_assemble_cache,
    micro_assemble,
)


class AssembleBatchTests(unittest.TestCase):
    """``assemble_batch`` must reproduce ``micro_assemble`` exactly.

    The batch emits each origin-independent instruction bare and gives
    relative control transfers their own section, so it must agree with the
    per-instruction assembler on every candidate, including the ``None``
    result for text that cannot be assembled.
    """

    def setUp(self):
        clear_assemble_cache()

    def test_matches_single_instruction_assembly(self):
        label_map = {
            0x1000: 'loc_1000',
            0x2210: 'sub_2210',
            0x3300: 'data_3300',
            0x5678: 'dseg_5678',
        }
        texts = [
            'mov ax, [dseg_5678]',
            'mov [dseg_5678], ax',
            'jmp loc_1000',
            'call sub_2210',
            'jz loc_1000',
            'mov ax, loc_1000',
            'lea si, [dseg_5678]',
            'mov byte [dseg_5678], 0x12',
            'jmp short loc_1000',
            'add ax, 0x1234',
            'rep movsb',
            'test byte [dseg_5678], 1',
            'nop',
            'ret',
            'int 0x21',
        ]
        offsets = [0x100 + i * 17 for i in range(len(texts))]
        requests = list(zip(texts, offsets))

        batched = assemble_batch(requests, label_map)
        self.assertIsNotNone(batched)

        for (text, offset), got in zip(requests, batched):
            expected = micro_assemble(text, offset, label_map)
            self.assertEqual(got, expected, msg=f'{text!r} @ {offset:#x}')

    def test_relative_target_is_origin_sensitive(self):
        # A label-free relative call encodes differently at each origin; the
        # batch must not reuse one encoding for all sites.
        first, second = assemble_batch([
            ('call 0xf01f', 0x415b),
            ('call 0xf01f', 0x417e),
        ])
        self.assertNotEqual(first, second)
        self.assertEqual(first, micro_assemble('call 0xf01f', 0x415b))
        self.assertEqual(second, micro_assemble('call 0xf01f', 0x417e))

    def test_unassemblable_text_yields_none(self):
        batched = assemble_batch([
            ('mov ax, [dseg_5678]', 0x100),
            ('not_a_real_op ax, bx', 0x111),
            ('nop', 0x120),
        ], {0x5678: 'dseg_5678'})
        self.assertIsNotNone(batched)
        self.assertEqual(batched[1], None)
        self.assertEqual(batched[0], micro_assemble(
            'mov ax, [dseg_5678]', 0x100, {0x5678: 'dseg_5678'}))
        self.assertEqual(batched[2], b'\x90')


if __name__ == '__main__':
    unittest.main()
