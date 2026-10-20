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


class SyncTest(unittest.TestCase):
    """A build leaves the tree alone until the end, then writes only what
    changed and removes what it no longer generates."""

    def setUp(self):
        self._dir = tempfile.TemporaryDirectory()
        self.root = self._dir.name
        self.addCleanup(self._dir.cleanup)

    def _path(self, rel):
        return os.path.join(self.root, rel)

    def _mine(self, rel, text='int mine;\n'):
        os.makedirs(os.path.dirname(self._path(rel)), exist_ok=True)
        with open(self._path(rel), 'w') as f:
            f.write(text)

    def test_an_unchanged_file_is_not_rewritten(self):
        files = {'ds/a.asm': 'nop\n', 'ds.asm': 'x\n'}
        self.assertEqual(autogen.sync(self.root, files), (2, 0, 0))
        os.utime(self._path('ds/a.asm'), (1, 1))
        self.assertEqual(autogen.sync(self.root, {**files, 'ds.asm': 'y\n'}),
                         (1, 1, 0))
        self.assertEqual(os.stat(self._path('ds/a.asm')).st_mtime, 1)
        with open(self._path('ds.asm')) as f:
            self.assertEqual(f.read(), '; auto-generated\ny\n')

    def test_a_file_no_longer_generated_is_removed(self):
        autogen.sync(self.root, {'ds/a.asm': 'nop\n', 'old/b.c': 'int b;\n'})
        self._mine('ds/mine.c')
        self.assertEqual(autogen.sync(self.root, {'ds/a.asm': 'nop\n'}),
                         (0, 1, 1))
        self.assertFalse(os.path.exists(self._path('old')))
        self.assertTrue(os.path.exists(self._path('ds/mine.c')))

    def test_a_hand_owned_file_in_the_way_is_an_error(self):
        self._mine('ds/a.c')
        with self.assertRaisesRegex(RuntimeError, 'ds/a.c'):
            autogen.sync(self.root, {'ds/a.c': 'int a;\n'})
        with open(self._path('ds/a.c')) as f:
            self.assertEqual(f.read(), 'int mine;\n')

    def test_a_partial_build_prunes_only_its_scopes(self):
        autogen.sync(self.root, {'ds.asm': 'x\n', 'ds/a.asm': 'nop\n',
                                 'shared/s.asm': 'nop\n', 'vi/v.asm': 'nop\n',
                                 'vi.asm': 'x\n'})
        self.assertEqual(
            autogen.sync(self.root, {'vi.asm': 'x\n'}, scopes=['vi.asm', 'vi']),
            (0, 1, 1))
        for rel in ('ds.asm', 'ds/a.asm', 'shared/s.asm', 'vi.asm'):
            self.assertTrue(os.path.exists(self._path(rel)), rel)
        self.assertFalse(os.path.exists(self._path('vi')))

    def test_skipped_folders_are_not_pruned(self):
        autogen.sync(self.root, {'build_out/x.asm': 'nop\n'})
        self.assertEqual(autogen.sync(self.root, {}, skip=('build_out',)),
                         (0, 0, 0))
        self.assertTrue(os.path.exists(self._path('build_out/x.asm')))

    def test_only_hand_owned_files_are_input(self):
        autogen.sync(self.root, {'ds/a.c': 'int a;\n'})
        self.assertFalse(autogen.hand_owned(self._path('ds/a.c')))
        self._mine('ds/b.c')
        self.assertTrue(autogen.hand_owned(self._path('ds/b.c')))
        self.assertFalse(autogen.hand_owned(self._path('ds/none.c')))


if __name__ == '__main__':
    unittest.main()
