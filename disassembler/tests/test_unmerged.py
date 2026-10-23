"""The unmerged-fragment audit (``lib.shared.scan``).

The merger in :mod:`lib.shared` only collapses copies it can spell the same.
This audit is the aggressive backstop: it masks every label and address-like
memory displacement, so a copy that differs only in names/addresses is
reported until the names are made to agree.  A second pass masks bare
immediates at or above 0x100 (``mov bx, 0x10e7`` / ``0xbc6``) and reports them
as ``address-immediate`` so they stay distinct from real small constants.  It
is test-only; the build does not call it.

The tree check is ``@slow`` (about 1.6 s): run ``make test slow``, or only it
with ``make test tests.test_unmerged.CurrentTreeTest``.
"""

import os
import pathlib
import tempfile
import unittest

from lib import shared
from lib.autogen import write_text

from tests.slow import slow


def _put(root, rel, text):
    path = os.path.join(root, rel)
    os.makedirs(os.path.dirname(path), exist_ok=True)
    write_text(path, text)


def _findings(files):
    with tempfile.TemporaryDirectory() as root:
        for rel, text in files.items():
            _put(root, rel, text)
        return shared.scan(root)


class MaskTest(unittest.TestCase):
    def test_labels_and_symbols_are_masked(self):
        findings = _findings({
            'a/f_AAAA.asm': 'f_AAAA:\n    mov ax, [bss_10]\n    ret\n',
            'b/f_BBBB.asm': 'f_BBBB:\n    mov ax, [bss_20]\n    ret\n',
        })
        self.assertEqual([f.kind for f in findings], ['code'])
        diffs = {d.kind for d in findings[0].diffs}
        self.assertEqual(diffs, {'label', 'symbol'})

    def test_memory_addresses_are_masked(self):
        findings = _findings({
            'a/x.asm': 'x:\n    mov ax, word [bx - 0x0100]\n    ret\n',
            'b/y.asm': 'y:\n    mov ax, word [bx - 0x0200]\n    ret\n',
        })
        self.assertEqual([f.kind for f in findings], ['code'])
        self.assertEqual([d.kind for d in findings[0].diffs if
                          d.kind == 'address'], ['address'])
        self.assertIn('0x0100', shared.report(findings))

    def test_stack_offsets_are_not_masked(self):
        self.assertEqual(_findings({
            'a/x.asm': 'x:\n    mov ax, word [bp - 0x0002]\n    ret\n',
            'b/y.asm': 'y:\n    mov ax, word [bp - 0x0004]\n    ret\n',
        }), [])

    def test_registers_and_immediates_are_not_masked(self):
        for a, b in (
            ('    mov ax, 1', '    mov ax, 2'),
            ('    push ax', '    push bx'),
        ):
            self.assertEqual(_findings({
                'a/x.asm': f'x:\n{a}\n    ret\n',
                'b/y.asm': f'y:\n{b}\n    ret\n',
            }), [])

    def test_local_label_numbering_is_a_label(self):
        findings = _findings({
            'a/x.asm': 'x:\n    jmp short @..x.l1\n@..x.l1:\n    ret\n',
            'b/y.asm': 'y:\n    jmp short @..y.l2\n@..y.l2:\n    ret\n',
        })
        self.assertEqual([f.kind for f in findings], ['code'])
        self.assertEqual({d.kind for d in findings[0].diffs}, {'label'})

    def test_quoted_semicolon_is_not_a_comment(self):
        findings = _findings({
            'a/data/x.asm': "x:\n    db '?6)>3&=0#<.!;,'\n",
            'b/data/y.asm': "y:\n    db '?6)>3&=0#<.!;,'\n",
        })
        self.assertEqual(findings, [])

    def test_immediate_constants_use_the_separate_pass(self):
        findings = _findings({
            'a/x.asm': 'x:\n    mov bx, 0x10e7\n    ret\n',
            'b/y.asm': 'y:\n    mov bx, 0x0bc6\n    ret\n',
        })
        self.assertEqual([f.kind for f in findings], ['immediate'])

    def test_rep_prefix_stays_literal(self):
        findings = _findings({
            'a/x.asm': 'x:\n    rep stosb\n    ret\n',
            'b/y.asm': 'y:\n    rep stosb\n    ret\n',
        })
        self.assertEqual([f.kind for f in findings], ['code'])


class ImmediateTest(unittest.TestCase):
    def test_address_like_immediate_is_a_separate_group(self):
        findings = _findings({
            'a/x.asm': 'x:\n    mov bx, 0x0100\n    ret\n',
            'b/y.asm': 'y:\n    mov bx, 0x0200\n    ret\n',
        })
        self.assertEqual([f.kind for f in findings], ['immediate'])
        self.assertIn('immediate 0x0100 | 0x0200', shared.report(findings))

    def test_small_immediate_is_not_an_address(self):
        self.assertEqual(_findings({
            'a/x.asm': 'x:\n    cmp word [game_state], byte 0x16\n    ret\n',
            'b/y.asm': 'y:\n    cmp word [game_state], byte 0x0c\n    ret\n',
        }), [])

    def test_immediate_pass_does_not_duplicate_a_code_group(self):
        findings = _findings({
            'a/x.asm': 'x:\n    mov ax, word [bx - 0x0100]\n'
                       '    mov dx, 0x0100\n    ret\n',
            'b/y.asm': 'y:\n    mov ax, word [bx - 0x0200]\n'
                       '    mov dx, 0x0100\n    ret\n',
        })
        self.assertEqual([f.kind for f in findings], ['code'])


class GroupingTest(unittest.TestCase):
    def test_one_instruction_stub_is_reported(self):
        findings = _findings({
            'a/one.asm': 'one:\n    ret\n',
            'b/two.asm': 'two:\n    ret\n',
        })
        self.assertEqual([f.kind for f in findings], ['code'])
        self.assertEqual(len(findings[0].members), 2)

    def test_empty_functions_held_several_times_by_one_binary_are_not(self):
        findings = _findings({
            'a/one.asm': 'one:\n    ret\n',
            'a/two.asm': 'two:\n    ret\n',
            'b/three.asm': 'three:\n    ret\n',
        })
        self.assertEqual(findings, [])

    def test_a_lone_empty_function_with_a_twin_elsewhere_is_still_reported(self):
        findings = _findings({
            'a/one.asm': 'one:\n    ret\n',
            'a/two.asm': 'two:\n    ret\n',
            'b/three.asm': 'three:\n    ret\n',
            'c/four.asm': 'four:\n    ret\n',
        })
        self.assertEqual([len(f.members) for f in findings], [2])

    def test_generated_asm_with_a_hand_owned_source_is_reported(self):
        with tempfile.TemporaryDirectory() as root:
            _put(root, 'a/x.asm', 'x:\n    push bp\n    ret\n')
            _put(root, 'b/y.asm', 'y:\n    push bp\n    ret\n')
            with open(os.path.join(root, 'a', 'x.s'), 'w') as f:
                f.write('; hand written\n')
            self.assertEqual([f.kind for f in shared.scan(root)], ['code'])

    def test_a_shared_file_and_its_leftover_are_reported(self):
        findings = _findings({
            'shared/library/x.asm': 'x:\n    push bp\n    ret\n',
            'b/y.asm': 'y:\n    push bp\n    ret\n',
        })
        self.assertEqual([f.kind for f in findings], ['code'])
        self.assertEqual(findings[0].target, 'shared/library/x.asm')

    def test_a_fully_shared_group_is_silent(self):
        self.assertEqual(_findings({
            'shared/library/x.asm': 'x:\n    push bp\n    ret\n',
        }), [])

    def test_copies_inside_one_binary_are_not_merged(self):
        self.assertEqual(_findings({
            'a/x.asm': 'x:\n    ret\n',
            'a/y.asm': 'y:\n    ret\n',
        }), [])

    def test_data_shares_only_under_one_name(self):
        self.assertEqual(_findings({
            'a/data/x.asm': 'x:\n    db 1, 2\n',
            'b/data/y.asm': 'y:\n    db 1, 2\n',
        }), [])

    def test_same_data_stem_with_different_bodies_is_a_collision(self):
        findings = _findings({
            'a/data/x.asm': 'x:\n    db 1, 2\n',
            'b/data/x.asm': 'x:\n    db 3, 4\n',
        })
        self.assertEqual([f.kind for f in findings], ['collision'])
        self.assertEqual(len(findings[0].bodies), 2)
        self.assertIn("db 1, 2", shared.report(findings))
        self.assertIn("db 3, 4", shared.report(findings))

    def test_same_data_stem_and_body_is_unmerged_data(self):
        findings = _findings({
            'shared/data/x.asm': 'x:\n    db 1, 2\n',
            'b/data/x.asm': 'x:\n    db 1, 2\n',
        })
        self.assertEqual([f.kind for f in findings], ['data'])


class ReportTest(unittest.TestCase):
    def test_report_names_every_copy_and_the_difference(self):
        findings = _findings({
            'a/f_AAAA.asm': 'f_AAAA:\n    mov ax, [bss_10]\n    ret\n',
            'b/f_BBBB.asm': 'f_BBBB:\n    mov ax, [bss_20]\n    ret\n',
        })
        text = shared.report(findings)
        self.assertIn('unmerged code: 2 copies', text)
        self.assertIn('a/f_AAAA.asm', text)
        self.assertIn('b/f_BBBB.asm', text)
        self.assertIn('label', text)
        self.assertIn('bss_10 | bss_20', text)

    def test_clean_tree_has_no_report(self):
        self.assertEqual(shared.report([]), '')


_ASM = pathlib.Path(__file__).resolve().parents[1]
_TREE = _ASM.parent / 'src_DSAVANT'


@slow
@unittest.skipUnless(_TREE.is_dir(), 'no generated tree')
class CurrentTreeTest(unittest.TestCase):
    """The goal is zero: every generated copy is either shared or distinct."""

    @classmethod
    def setUpClass(cls):
        cls.findings = shared.scan(str(_TREE))

    def _failed(self, kind):
        return [f for f in self.findings if f.kind == kind]

    def test_no_unmerged_code(self):
        findings = self._failed('code')
        self.assertEqual(0, len(findings),
                         f'{len(findings)} unmerged code group(s):\n'
                         + shared.report(findings))

    def test_no_address_immediates(self):
        findings = self._failed('immediate')
        self.assertEqual(0, len(findings),
                         f'{len(findings)} address-immediate group(s):\n'
                         + shared.report(findings))

    def test_no_unmerged_data(self):
        findings = self._failed('data')
        self.assertEqual(0, len(findings),
                         f'{len(findings)} unmerged data group(s):\n'
                         + shared.report(findings))

    def test_no_data_name_collisions(self):
        findings = self._failed('collision')
        self.assertEqual(0, len(findings),
                         f'{len(findings)} data name collision(s):\n'
                         + shared.report(findings))


if __name__ == '__main__':
    unittest.main()
