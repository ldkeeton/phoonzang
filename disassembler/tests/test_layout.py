"""``make layout``'s analysis (:mod:`lib.layout`) on small .COM images."""

import struct
import unittest

from lib import layout


def _table(symbols):
    return '\n'.join(f'0000:{addr:04x} {name}' for name, addr in symbols)


def _com(words):
    return b''.join(struct.pack('<H', w) for w in words)


class LayoutTest(unittest.TestCase):
    """Two modules, a (4 bytes) and b (4 bytes), swapped by the new link."""

    def _run(self, old_words, new_words, old_syms, new_syms, operands=None):
        old = layout.Image(_com(old_words), 'com',
                           layout.parse_symbols(_table(old_syms)))
        new = layout.Image(_com(new_words), 'com',
                           layout.parse_symbols(_table(new_syms)))
        spans = [('a.asm', layout.CODE, 0x100, 0x104),
                 ('b.asm', layout.CODE, 0x104, 0x108)]
        regions = layout.regions(spans, old, new)
        moves = layout.Moves(old, new, regions)
        ops = operands if operands is not None else {
            x: (2, 'dw', None) for x in range(len(old.data) - 1)}
        return layout.compare('t', old, new, regions, moves, ops)

    def test_a_relocated_word_follows_its_target(self):
        # a: dw b ; b: dw a  -- swapped, each word moves with its target.
        found = self._run([0x0104, 0, 0x0100, 0], [0x0104, 0, 0x0100, 0],
                          [('a', 0x100), ('b', 0x104)],
                          [('b', 0x100), ('a', 0x104)])
        self.assertEqual([f.kind for f in found], [])

    def test_a_literal_address_is_reported(self):
        # a holds 0x0104 (b's old address) as a number: it does not move.
        found = self._run([0x1111, 0x0104, 0x2222, 0], [0x2222, 0, 0x1111, 0x0104],
                          [('a', 0x100), ('b', 0x104)],
                          [('b', 0x100), ('a', 0x104)])
        self.assertEqual([(f.kind, f.old) for f in found], [('B', 0x0104)])

    def test_one_past_the_end_moves_with_the_array(self):
        # a: dw a+4 (one past a's end, the address of b) relocates with a.
        found = self._run([0x0104, 0, 0x3333, 0], [0x3333, 0, 0x0108, 0],
                          [('a', 0x100), ('b', 0x104)],
                          [('b', 0x100), ('a', 0x104)])
        self.assertEqual([f.kind for f in found], [])

    def test_a_changed_word_no_move_explains(self):
        found = self._run([0x1111, 0, 0x2222, 0], [0x2222, 0, 0x1112, 0],
                          [('a', 0x100), ('b', 0x104)],
                          [('b', 0x100), ('a', 0x104)])
        self.assertEqual([f.kind for f in found], ['A'])

    def test_text_is_not_an_address(self):
        data = b'xx\x04\x01ABCD'
        self.assertTrue(layout._in_text(data, 4))
        self.assertFalse(layout._in_text(data, 2))

    def test_symbol_spaces_follow_dorg(self):
        table = layout.parse_symbols(
            '0000:0010 f_\n0ff6:0000 _Dorg_\n0ff6:0e36 npc_id_\n')
        self.assertEqual(table['f_'][0], layout.CODE)
        self.assertEqual(table['npc_id_'], (layout.DATA, 0x0ff6, 0x0e36))


if __name__ == '__main__':
    unittest.main()
