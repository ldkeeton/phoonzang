"""A sidecar ``char_tables`` span renders as rows naming its characters."""

import unittest

from lib.compare.chartables import mark_char_tables
from lib.compare.render import _render_char_table
from lib.sidecar.binary import per_binary
from lib.sidecar.char_tables import _validate_char_tables
from lib.sidecar.errors import SidecarError
from lib.sidecar.usage import SidecarUse


def _block(start, end):
    return {'type': 'data_block', 'start': start, 'end': end}


class MarkCharTablesTest(unittest.TestCase):
    TABLE = [{'table': 0x110, 'count': 0x20, 'first': -1}]

    def test_the_table_is_cut_out_of_its_block(self):
        records = mark_char_tables([_block(0x100, 0x140)], self.TABLE)
        self.assertEqual(
            [(r['start'], r['end'], r.get('char_table')) for r in records],
            [(0x100, 0x110, None), (0x110, 0x130, (0x110, -1)),
             (0x130, 0x140, None)])

    def test_a_table_over_two_blocks_tags_both(self):
        use = SidecarUse('binaries.x')
        use.expect('char_tables', '0110')
        records = mark_char_tables(
            [_block(0x110, 0x118), {'type': 'label', 'text': 'x:'},
             _block(0x118, 0x130)], self.TABLE, use)
        self.assertEqual([r.get('char_table') for r in records],
                         [(0x110, -1), None, (0x110, -1)])
        use.check()

    def test_a_table_over_code_is_skipped(self):
        use = SidecarUse('binaries.x')
        use.expect('char_tables', '0110')
        mark_char_tables([_block(0x110, 0x118)], self.TABLE, use)
        with self.assertRaisesRegex(SidecarError, '24 of its bytes'):
            use.check()


class RenderCharTableTest(unittest.TestCase):
    def test_rows_break_at_multiples_of_eight(self):
        lines = _render_char_table(bytes(range(10)), -1)
        self.assertEqual(lines, [
            '    db 0x00' + ' ' * 42 + ' ; EOF',
            '    db 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08'
            ' ; nul soh stx etx eot enq ack bel',
            '    db 0x09' + ' ' * 42 + ' ; bs'])

    def test_no_comment_ends_in_a_backslash(self):
        lines = _render_char_table(bytes(5), 0x58)
        self.assertTrue(lines[0].endswith('X Y Z [ backslash'))


class ValidateCharTablesTest(unittest.TestCase):
    def test_the_codes_must_fit_a_byte(self):
        with self.assertRaisesRegex(SidecarError, 'first'):
            _validate_char_tables([{'table': '10', 'count': 129,
                                    'first': 128}], 't')

    def test_per_binary_expects_each_table(self):
        sidecar = {'binaries': {'x': {'char_tables': [
            {'table': '5f32', 'count': 129, 'first': -1}]}}}
        entry = per_binary(sidecar, 'x')
        self.assertEqual(entry['char_tables'],
                         [{'table': 0x5f32, 'count': 129, 'first': -1}])
        self.assertEqual(entry['use'].problems(),
                         ['binaries.x.char_tables[5f32]: applied to nothing'])


if __name__ == '__main__':
    unittest.main()
