"""Heuristic for routines that can never have a C equivalent."""

import unittest

from lib import asm_only

PLAIN = '; auto-generated\nf:\n    push bp\n    mov bp, sp\n    mov ax, 1\n    pop bp\n    ret\n'


class BlockersTest(unittest.TestCase):
    def test_plain_routine_has_none(self):
        self.assertEqual(asm_only.blockers(PLAIN), [])

    def test_each_family_is_detected(self):
        for line, name in (('int 0x21', 'int'), ('out dx, al', 'out'),
                           ('in al, 0x60', 'in'), ('cli', 'cli'),
                           ('rep movsw', 'rep'), ('retf', 'retf'),
                           ('mov es, ax', 'mov'), ('mov word [es:1], 2', None),
                           ('les bx, [si]', None), ('call far [bx]', 'call')):
            found = asm_only.blockers(f'f:\n    {line}\n    ret\n')
            self.assertEqual(found, [name] if name else [], line)

    def test_comments_are_ignored(self):
        self.assertEqual(asm_only.blockers('f:\n    ret ; int 0x21\n'), [])


class StampTest(unittest.TestCase):
    def test_marker_goes_on_second_line_once(self):
        text = asm_only.stamp('; auto-generated\nf:\n    cli\n    ret\n')
        self.assertEqual(text.split('\n')[:2], ['; auto-generated', asm_only.MARKER])
        self.assertEqual(asm_only.stamp(text), text)

    def test_plain_routine_is_untouched(self):
        self.assertEqual(asm_only.stamp(PLAIN), PLAIN)


if __name__ == '__main__':
    unittest.main()
