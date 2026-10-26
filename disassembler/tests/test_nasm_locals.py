import shutil
import subprocess
import tempfile
import unittest
from pathlib import Path

from lib.autogen import sync, write_text
from lib.nasm_locals import render


class NasmLocalTests(unittest.TestCase):
    def test_local_and_foreign_references_with_comment_padding(self):
        text = ('owner:\n    jg short @..owner.forward1 ; 0x0010\n'
                '@..owner.forward1:\n    jmp @..other.return1 ; 0x0012\n')
        self.assertEqual(render(text),
                         'owner:\n    jg short .forward1               ; 0x0010\n'
                         '.forward1:\n    jmp other.return1                ; 0x0012\n')

    def test_global_labels_and_includes_change_scope(self):
        text = ('owner:\nanchor:\n    jmp @..owner.back1\n'
                '@..owner.back1:\n    jmp @..owner.return1\n'
                'owner2:\n%include "part.asm"\n    jmp @..owner2.back1\n')
        self.assertEqual(render(text),
                         'owner:\nanchor:\n    jmp owner.back1\n'
                         'owner.back1:\n    jmp owner.return1\n'
                         'owner2:\n%include "part.asm"\n    jmp owner2.back1\n')

    def test_equ_strings_comments_and_existing_locals(self):
        text = ('owner:\nalias equ $\n'
                '    db "@..owner.back1", \'@..owner.return1\' ; @..owner.forward1\n'
                '    jmp @..owner.back1 ; annotation\n'
                '@..owner.back1:\n    jmp .back1\n')
        expected = text.replace('jmp @..owner.back1', 'jmp .back1').replace(
            '\n@..owner.back1:', '\n.back1:')
        self.assertEqual(render(text), expected)
        self.assertEqual(render(expected), expected)

    def test_both_output_paths_shorten_locals_and_sync_is_idempotent(self):
        text = 'owner:\n    jmp @..owner.back1\n@..owner.back1:\n    ret\n'
        with tempfile.TemporaryDirectory() as root:
            write_text(str(Path(root) / 'one.asm'), text)
            self.assertNotIn('@..', (Path(root) / 'one.asm').read_text())
            files = {'one.asm': text, 'two.inc': text, 'source.c': text}
            self.assertEqual(sync(root, files), (2, 1, 0))
            self.assertEqual(sync(root, files), (0, 3, 0))
            self.assertNotIn('@..', (Path(root) / 'two.inc').read_text())
            self.assertIn('@..', (Path(root) / 'source.c').read_text())

    @unittest.skipUnless(shutil.which('nasm'), 'requires NASM')
    def test_cross_scope_targets_assemble_to_the_same_bytes(self):
        text = ('bits 16\nowner:\n    jmp short @..owner.forward1\n'
                'other:\n    jmp short @..owner.forward1\n'
                '@..owner.forward1:\n    jmp short @..owner.return1\n'
                '@..owner.return1:\n    ret\n')
        with tempfile.TemporaryDirectory() as root:
            outputs = []
            for index, source in enumerate((text, render(text))):
                path = Path(root) / f'{index}.asm'
                output = path.with_suffix('.bin')
                path.write_text(source)
                subprocess.run(['nasm', '-O0', '-f', 'bin', '-o', str(output),
                                str(path)], check=True, capture_output=True)
                outputs.append(output.read_bytes())
            self.assertEqual(*outputs)
