import os
import tempfile
import unittest

from make import inspect, naming


class NumberTest(unittest.TestCase):
    def test_hex_spellings(self):
        self.assertEqual(inspect._number('0x6eb5'), 0x6eb5)
        self.assertEqual(inspect._number('6eb5'), 0x6eb5)
        self.assertEqual(inspect._number('911e'), 0x911e)
        self.assertEqual(inspect._number('100'), 100)


class TopLabelsTest(unittest.TestCase):
    def test_reads_top_level_labels_and_offsets(self):
        text = (
            '; auto-generated\n'
            'root:\n'
            '    mov ax, 0      ; 0x073b\n'
            'loc_tail:\n'
            '    ret            ; 0x07de\n'
            '@..root.l1:\n'
            '    ret            ; 0x07e0\n'
        )
        with tempfile.NamedTemporaryFile('w', suffix='.asm', delete=False) as f:
            f.write(text)
            path = f.name
        try:
            self.assertEqual(inspect.top_labels(path),
                             [('root', 0x073b, 1), ('loc_tail', 0x07de, 3)])
        finally:
            os.unlink(path)

    def test_reads_a_label_with_a_generated_comment(self):
        text = (
            '; auto-generated\n'
            'root: ; Aztec csav frame=0x0000\n'
            '    mov ax, 0      ; 0x0e03\n'
            'loc_tail: ; frame=0x0002\n'
            '    ret            ; 0x0e81\n'
        )
        with tempfile.NamedTemporaryFile('w', suffix='.asm', delete=False) as f:
            f.write(text)
            path = f.name
        try:
            self.assertEqual(inspect.top_labels(path),
                             [('root', 0x0e03, 1), ('loc_tail', 0x0e81, 3)])
        finally:
            os.unlink(path)


class _Model:
    """Just enough SegmentModel for a DS operand."""
    data_names = {}

    def data_space(self, offset):
        return 'bss'

    def resolve(self, segment, offset):
        return ('bss',)


class RawDataRefsTest(unittest.TestCase):
    def test_finds_unlabeled_ds_displacement(self):
        text = ('    mov al, byte [bx + 0x6eb5]  ; 0x0771\n'
                '    mov al, byte [bp - 0x000a] ; frame slot\n'
                '    mov al, byte [bx + 0x14]   ; struct field\n')
        rows = naming._raw_data_refs('P', text, _Model(), {}, set())
        self.assertEqual([row['value'] for row in rows], [0x6eb5])
        self.assertEqual(rows[0]['canonical'], 'bss_6eb5')
        self.assertEqual(rows[0]['space'], 'bss')

    def test_skips_a_known_operand(self):
        text = '    mov al, byte [bx + 0x6eb5]\n'
        rows = naming._raw_data_refs('P', text, _Model(), {}, {0x6eb5})
        self.assertEqual(rows, [])


if __name__ == '__main__':
    unittest.main()
