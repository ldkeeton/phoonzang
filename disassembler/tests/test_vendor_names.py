"""Renamed C names follow into ``#asm``; filler windows never anchor a routine."""

import unittest

from lib.aztec import sources
from lib.match import pattern

# A ``_filbuf`` window: je +9; mov ax,-1; pop si; pop di; mov sp,bp; pop bp
EPILOGUE = bytes.fromhex('7409b8ffff5e5f8be55d')
# A window with a call and a memory operand is real code.
REAL = bytes.fromhex('8b4604e80000')


class DefinitionNameTest(unittest.TestCase):
    """Leading underscores are part of a C name; only ``$`` and case fold."""

    def test_trailing_underscore_is_part_of_the_name(self):
        # ``flsh_`` is the C name in putc.c; ``flsh`` is a different routine.
        self.assertIn('putc.c', sources.definition_files('v42b', 'flsh_'))
        self.assertEqual(sources.definition_files('v42b', 'flsh'), [])

    def test_leading_underscores_are_significant(self):
        self.assertIn('putc.c', sources.definition_files('v42b', 'putc'))
        self.assertEqual(sources.definition_files('v42b', '_putc'), [])
        self.assertIn('ttyio.c', sources.definition_files('v42b', '__tty_rd'))
        self.assertNotEqual(sources.definition_files('v42b', 'tty_rd'),
                            sources.definition_files('v42b', '__tty_rd'))

    def test_dollar_and_case_fold(self):
        self.assertEqual(sources.definition_files('v42b', '$PUTC'),
                         sources.definition_files('v42b', 'putc'))

    def test_asm_block_routine_is_defined_by_its_c_file(self):
        self.assertIn('ovloader.c',
                      sources.definition_files('v42b', 'ovloader'))


class AsmBlockRenameTest(unittest.TestCase):
    def test_asm_spelling_of_a_renamed_c_name_follows_it(self):
        from lib.aztec import relabel
        text = 'static char *ovname;\n#asm\n\tmov ovname_,ax\n#endasm\nf(){ovname=0;}\n'
        out = relabel.rewrite_identifiers(text, {'ovname': 'bss_0cfa'})
        self.assertIn('mov bss_0cfa_,ax', out)
        self.assertIn('static char *bss_0cfa;', out)
        self.assertIn('bss_0cfa=0', out)

    def test_procdef_name_follows_its_calls(self):
        from lib.aztec import relabel
        text = ('\tprocdef\tbrk,<<addr,word>>\n\tret\n\tpend\tbrk\n'
                '\tprocdef\tsbrk\n\tcall\tbrk_\n\tpend\tsbrk\n')
        out = relabel.rewrite_identifiers(
            text, {'brk': 'aztec_brk', 'sbrk': 'aztec_sbrk'}, asm=True)
        self.assertIn('procdef\taztec_brk,<<addr,word>>', out)
        self.assertIn('pend\taztec_brk\n', out)
        self.assertIn('procdef\taztec_sbrk\n', out)
        self.assertIn('call\taztec_brk_', out)


class FillerWindowTest(unittest.TestCase):
    def test_epilogue_is_filler(self):
        self.assertTrue(pattern._is_filler_window(EPILOGUE))

    def test_real_code_is_not(self):
        self.assertFalse(pattern._is_filler_window(REAL))


if __name__ == '__main__':
    unittest.main()
