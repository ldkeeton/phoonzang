import os
import tempfile
import unittest

from lib import autogen


class AutogenTest(unittest.TestCase):
    def test_stamp_markers_and_idempotent(self):
        asm = autogen.stamp('mov ax, 1\n', 'x.asm')
        self.assertEqual(asm.split('\n')[0], '; auto-generated')
        self.assertEqual(autogen.stamp(asm, 'x.inc'), asm)
        c = autogen.stamp('int x;\n', 'x.c')
        self.assertEqual(c.split('\n')[0], '/* auto-generated */')

    def test_remove_only_marked(self):
        with tempfile.TemporaryDirectory() as root:
            os.makedirs(os.path.join(root, 'ds'))
            os.makedirs(os.path.join(root, 'gone'))
            autogen.write_text(os.path.join(root, 'ds', 'a.asm'), 'nop\n')
            autogen.write_text(os.path.join(root, 'gone', 'b.c'), 'int b;\n')
            with open(os.path.join(root, 'ds', 'mine.c'), 'w') as f:
                f.write('int mine;\n')
            with open(os.path.join(root, 'ds', 'blob.bin'), 'wb') as f:
                f.write(b'\xff\xfe\x00')
            removed, kept = autogen.remove_generated(root)
            self.assertEqual(removed, 2)
            self.assertEqual(len(kept), 2)
            self.assertFalse(os.path.exists(os.path.join(root, 'gone')))
            self.assertTrue(os.path.exists(os.path.join(root, 'ds', 'mine.c')))
            self.assertTrue(os.path.exists(os.path.join(root, 'ds', 'blob.bin')))


class WriteOnceTest(unittest.TestCase):
    def test_a_build_writing_one_path_twice_is_an_error(self):
        with tempfile.TemporaryDirectory() as root:
            path = os.path.join(root, 'a.asm')
            with autogen.write_once():
                autogen.write_text(path, 'nop\n')
                with self.assertRaises(RuntimeError):
                    autogen.write_text(path, 'nop\n')
            autogen.write_text(path, 'nop\n')   # outside a build: allowed


if __name__ == '__main__':
    unittest.main()
