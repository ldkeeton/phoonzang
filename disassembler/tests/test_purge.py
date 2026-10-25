"""Purge/revert against an isolated Git repository, never real sources."""
import shutil
import subprocess
import tempfile
import unittest
from pathlib import Path
from unittest.mock import patch

from make.purge import cmd_purge


class PurgeTests(unittest.TestCase):
    def test_purge_and_restore_after_regeneration(self):
        with tempfile.TemporaryDirectory() as tmp:
            root = Path(tmp)
            def git(*args):
                subprocess.run(['git', *args], cwd=root, check=True,
                               stdout=subprocess.PIPE, stderr=subprocess.PIPE)
            git('init')
            src = root / 'src_TEST'
            src.mkdir()
            originals = {'hand.c': 'void hand(void) {}\n', 'hand.asm': '; human\n',
                         'hand.s': '; human s\n'}
            for name, text in originals.items():
                (src / name).write_text(text)
            (src / 'auto.c').write_text('/* auto-generated */\n')
            (src / 'keep.h').write_text('/* human header */\n')
            git('add', '.')
            git('-c', 'user.name=Test', '-c', 'user.email=test@example.com',
                'commit', '-m', 'fixture')
            (src / 'untracked.c').write_text('untracked\n')
            (src / 'build_out').mkdir()
            (src / 'build_out' / 'game.exe').write_bytes(b'binary')
            with patch('make.purge.PROJECT', tmp), patch(
                    'make.purge.clear_build_out',
                    side_effect=lambda project: shutil.rmtree(src / 'build_out')):
                cmd_purge([], ['TEST'])
                for name in originals:
                    self.assertFalse((src / name).exists())
                self.assertFalse((src / 'untracked.c').exists())
                self.assertFalse((src / 'build_out').exists())
                self.assertTrue((src / 'auto.c').exists())
                self.assertTrue((src / 'keep.h').exists())
                (src / 'hand.c').write_text('/* auto-generated */\nreplacement\n')
                cmd_purge(['revert'], ['TEST'])
                for name, text in originals.items():
                    self.assertEqual((src / name).read_text(), text)
                self.assertFalse((src / 'untracked.c').exists())
                (src / 'hand.c').write_text('new human edits\n')
                cmd_purge(['revert'], ['TEST'])
                self.assertEqual((src / 'hand.c').read_text(), 'new human edits\n')
