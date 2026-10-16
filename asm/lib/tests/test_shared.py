import os
import tempfile
import unittest

from lib import shared
from lib.autogen import write_text

BODY = '{name}:\n    push bp ; 0x{a}\n    jmp short @..{name}.l1 ; 0x{b}\n@..{name}.l1:\n    ret ; 0x{c}\n'


def _put(root, rel, text):
    os.makedirs(os.path.dirname(os.path.join(root, rel)), exist_ok=True)
    write_text(os.path.join(root, rel), text)


def _read(root, rel):
    with open(os.path.join(root, rel)) as f:
        return f.read()


class ShareIdenticalTest(unittest.TestCase):
    def _tree(self, root):
        _put(root, 'a/f.asm', BODY.format(name='f', a='0100', b='0101', c='0103'))
        _put(root, 'b/f.asm', BODY.format(name='f', a='0900', b='0901', c='0903'))
        _put(root, 'a.asm', '%include "a/f.asm"   ; 0x0100\n')
        _put(root, 'b.asm', '%include "b/f.asm"   ; 0x0900\n')

    def test_identical_fragments_move_to_shared(self):
        with tempfile.TemporaryDirectory() as root:
            self._tree(root)
            result = shared.share_identical(root)
            self.assertEqual(result, {'shared/f.asm': ['a/f.asm', 'b/f.asm']})
            self.assertFalse(os.path.exists(os.path.join(root, 'a')))
            self.assertIn('%include "shared/f.asm"   ; 0x0100', _read(root, 'a.asm'))
            self.assertIn('%include "shared/f.asm"', _read(root, 'b.asm'))
            self.assertNotIn('; 0x', _read(root, 'shared/f.asm'))

    def test_different_code_or_hand_c_stays(self):
        with tempfile.TemporaryDirectory() as root:
            self._tree(root)
            _put(root, 'c/f.asm', BODY.format(name='f', a='1', b='2', c='3')
                 .replace('push bp', 'push si'))
            with open(os.path.join(root, 'c', 'f.c'), 'w') as f:
                f.write('int f;\n')
            shared.share_identical(root)
            self.assertTrue(os.path.exists(os.path.join(root, 'c', 'f.asm')))

    def test_same_name_different_bodies_share_only_the_largest_group(self):
        with tempfile.TemporaryDirectory() as root:
            self._tree(root)                      # a, b: push bp
            for b in ('c', 'd', 'e'):
                _put(root, f'{b}/f.asm', BODY.format(name='f', a='1', b='2', c='3')
                     .replace('push bp', 'push si'))
                _put(root, f'{b}.asm', f'%include "{b}/f.asm"\n')
            result = shared.share_identical(root)
            self.assertEqual(result, {'shared/f.asm': ['c/f.asm', 'd/f.asm', 'e/f.asm']})
            self.assertTrue(os.path.exists(os.path.join(root, 'a', 'f.asm')))

    def test_hand_owned_fragment_is_untouched(self):
        with tempfile.TemporaryDirectory() as root:
            self._tree(root)
            with open(os.path.join(root, 'b', 'f.asm'), 'w') as f:
                f.write(BODY.format(name='f', a='1', b='2', c='3'))
            self.assertEqual(shared.share_identical(root), {})


if __name__ == '__main__':
    unittest.main()


class KeepAddressesTest(unittest.TestCase):
    def test_addresses_kept_only_when_copies_agree(self):
        with tempfile.TemporaryDirectory() as root:
            for b in ('a', 'b'):
                _put(root, f'{b}/f.asm', BODY.format(name='f', a='0100', b='0101', c='0103'))
                _put(root, f'{b}.asm', f'%include "{b}/f.asm"\n')
            shared.share_identical(root)
            self.assertIn('; 0x0100', _read(root, 'shared/f.asm'))


class SharedCTest(unittest.TestCase):
    def _tree(self, root, c_b='int f;\n'):
        for b, c in (('a', 'int f;\n'), ('b', c_b)):
            _put(root, f'{b}/f.asm', BODY.format(name='f', a='1', b='2', c='3'))
            _put(root, f'{b}/f.c', c)
            _put(root, f'{b}.asm', f'%include "{b}/f.asm"\n')

    def test_generated_identical_c_moves_with_the_asm(self):
        with tempfile.TemporaryDirectory() as root:
            self._tree(root)
            shared.share_identical(root)
            self.assertTrue(os.path.exists(os.path.join(root, 'shared', 'f.c')))
            self.assertFalse(os.path.exists(os.path.join(root, 'a', 'f.c')))
            self.assertNotIn('; 0x', _read(root, 'shared/f.asm'))

    def test_differing_c_stays(self):
        with tempfile.TemporaryDirectory() as root:
            self._tree(root, c_b='int g;\n')
            self.assertEqual(shared.share_identical(root), {})

    def test_hand_c_stays(self):
        with tempfile.TemporaryDirectory() as root:
            self._tree(root)
            with open(os.path.join(root, 'a', 'f.c'), 'w') as f:
                f.write('int f;\n')
            self.assertEqual(shared.share_identical(root), {})
