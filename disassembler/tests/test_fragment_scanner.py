import importlib.util
import pathlib
import tempfile
import unittest


spec = importlib.util.spec_from_file_location(
    'fragment_scanner', pathlib.Path(__file__).resolve().parents[2]
    / 'scan_fragment_fallthrough.py')
scanner = importlib.util.module_from_spec(spec)
spec.loader.exec_module(scanner)


class EntryPrefixTests(unittest.TestCase):
    def status(self, caller='call body_alias', body='push bp\nretf'):
        with tempfile.TemporaryDirectory() as directory:
            root = pathlib.Path(directory)
            (root / 'test.asm').write_text(
                'body_alias equ body\n'
                '%include "caller.asm" ; 0x10\n'
                '%include "prefix.asm" ; 0x20\n'
                '%include "body.asm" ; 0x30\n')
            (root / 'caller.asm').write_text('caller:\n' + caller + '\nret\n')
            (root / 'prefix.asm').write_text('prefix:\nmov ax, 1\n')
            (root / 'body.asm').write_text('body:\n' + body + '\n')
            hits, details = scanner.scan(root)
            key = next(key for key in hits if key[:2] == ('prefix.asm', 'body.asm'))
            return scanner.edge_status(key, hits[key], details[key])

    def test_independent_alias_call_establishes_entry(self):
        self.assertEqual(self.status(), 'intentional')

    def test_interior_call_does_not_establish_fragment_entry(self):
        self.assertEqual(self.status('call body.inner', 'push bp\n.inner:\nretf'),
                         'candidate')

    def test_unreachable_call_is_not_root_evidence(self):
        self.assertEqual(self.status('ret\ncall body'), 'candidate')

    def test_jump_is_not_call_evidence(self):
        self.assertEqual(self.status('jmp body'), 'candidate')

    def test_backedge_requires_review(self):
        self.assertEqual(self.status(body='push bp\njmp prefix'), 'candidate')

    def test_mixed_binary_evidence_remains_candidate(self):
        key = ('a', 'b', 'mov ax, 1', 'push bp', True)
        self.assertEqual(scanner.edge_status(
            key, ['vga:0x30', 'ega:0x40'],
            ['vga: intentional entry-prefix fallthrough; evidence']), 'candidate')


if __name__ == '__main__':
    unittest.main()
