"""Encoding fixes so every decoded instruction re-encodes (no db fallback).

Covers the five classes of ``db 0x.. ; <disassembly>`` fallbacks found in the
generated tree:

* A - segment prefix hides a group-1 (0x83) opcode, losing the imm8 form.
* B - original forced a 16-bit displacement (``[word bx + 0xNN]``).
* C - register/register forms NASM stores with the opposite opcode
      (``8a`` vs ``88``) - equal length, semantically identical.
* D1 - ``sal`` vs NASM's canonical ``shl``.
* D2 - x87 memory operand needs an explicit size (``fadd qword [si]``).
"""

import unittest

from capstone import Cs, CS_ARCH_X86, CS_MODE_16

from lib.format import format_instruction
from lib.verify.assemble import micro_assemble, is_semantically_equivalent
from lib.compare.records import (
    find_db_with_comment_lines,
    UnencodedInstructionError,
)


def _insn(code_hex, base=0):
    md = Cs(CS_ARCH_X86, CS_MODE_16)
    md.detail = True
    return next(md.disasm(bytes.fromhex(code_hex), base))


class ClassATests(unittest.TestCase):
    """Segment prefix + group-1 imm8."""

    def test_cmp_es_abs(self):
        insn = _insn('26 83 3e 18 25 00')
        text = format_instruction(insn, {}, {}, data_labels={0x2518: 'dseg_2518'})
        self.assertEqual(text, 'cmp word [es:dseg_2518], byte 0')
        built = micro_assemble(text, 0, mem_equ={'dseg_2518': 0x2518})
        self.assertEqual(built, bytes.fromhex('26 83 3e 18 25 00'))

    def test_adc_cs_symbol(self):
        insn = _insn('2e 83 16 c4 09 00')
        text = format_instruction(insn, {}, {}, data_labels={0x09c4: 'data_09c4'})
        self.assertEqual(text, 'adc word [cs:data_09c4], byte 0')
        built = micro_assemble(text, 0, mem_equ={'data_09c4': 0x09c4})
        self.assertEqual(built, bytes.fromhex('2e 83 16 c4 09 00'))


class ClassBTests(unittest.TestCase):
    """Forced 16-bit displacement must survive re-encoding."""

    def test_mov_disp16(self):
        insn = _insn('8b 87 3a 00')
        text = format_instruction(insn, {}, {})
        self.assertEqual(text, 'mov ax, word [word bx + 0x3a]')
        self.assertEqual(micro_assemble(text, 0), bytes.fromhex('8b 87 3a 00'))

    def test_push_disp16(self):
        insn = _insn('ff b7 06 00')
        text = format_instruction(insn, {}, {})
        self.assertEqual(text, 'push word [word bx + 6]')
        self.assertEqual(micro_assemble(text, 0), bytes.fromhex('ff b7 06 00'))

    def test_disp8_stays_disp8(self):
        insn = _insn('8b 47 3a')
        text = format_instruction(insn, {}, {})
        self.assertEqual(text, 'mov ax, word [bx + 0x3a]')
        self.assertEqual(micro_assemble(text, 0), bytes.fromhex('8b 47 3a'))


class ClassCTests(unittest.TestCase):
    """Opposite reg/reg opcode forms are semantically equivalent."""

    CASES = {
        'mov ah, al': '8a e0',
        'xor cl, cl': '32 c9',
        'mov dl, al': '8a d0',
        'mov al, dl': '8a c2',
        'mov bl, ah': '8a dc',
        'xchg ah, al': '86 c4',
        'mov bx, ax': '8b d8',
        'mov ax, bx': '8b c3',
    }

    def test_semantic_equivalence(self):
        for text, hexs in self.CASES.items():
            with self.subTest(text=text):
                orig = bytes.fromhex(hexs)
                built = micro_assemble(text, 0)
                self.assertIsNotNone(built)
                self.assertTrue(is_semantically_equivalent(orig, built, 0))


class ClassD1Tests(unittest.TestCase):
    """sal/shl are the same operation."""

    def test_sal_vs_shl(self):
        built = micro_assemble('shl word [0x56d1], 1', 0)
        self.assertEqual(built, bytes.fromhex('d1 26 d1 56'))
        self.assertTrue(is_semantically_equivalent(
            bytes.fromhex('d1 36 d1 56'), built, 0))

    def test_distinct_ops_not_equivalent(self):
        # Guard against over-broad normalisation.
        self.assertFalse(is_semantically_equivalent(
            bytes.fromhex('d1 26 d1 56'),  # shl
            micro_assemble('shr word [0x56d1], 1', 0),
            0))


class ClassD2Tests(unittest.TestCase):
    """x87 memory operands need an explicit size."""

    def test_fadd_qword(self):
        insn = _insn('dc 04')
        text = format_instruction(insn, {}, {})
        self.assertEqual(text, 'fadd qword [si]')
        self.assertEqual(micro_assemble(text, 0), bytes.fromhex('dc 04'))

    def test_fadd_dword_keeps_size(self):
        insn = _insn('d8 04')
        text = format_instruction(insn, {}, {})
        self.assertEqual(text, 'fadd dword [si]')
        self.assertEqual(micro_assemble(text, 0), bytes.fromhex('d8 04'))


class DbWithCommentGateTests(unittest.TestCase):
    """The build-gate helper only matches unencoded-instruction lines."""

    def test_finds_fallback_lines(self):
        text = (
            '    mov ax, bx\n'
            '    db 0x8a, 0xe0 ; mov ah, al\n'
            '    db 0x00, 0x00, 0x00\n'
            '    times 4 db 0\n'
        )
        self.assertEqual(
            find_db_with_comment_lines(text),
            ['    db 0x8a, 0xe0 ; mov ah, al'],
        )

    def test_ignores_plain_data(self):
        self.assertEqual(find_db_with_comment_lines('    db 0x3b, 0x4b\n'), [])

    def test_error_is_runtime_error(self):
        self.assertTrue(issubclass(UnencodedInstructionError, RuntimeError))


if __name__ == '__main__':
    unittest.main()
