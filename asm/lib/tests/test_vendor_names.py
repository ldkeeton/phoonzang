"""Vendor-name lookups fold affixes; filler windows never anchor a routine."""

import unittest

from lib.aztec import sources
from lib.match import pattern

# v5.2a ``_filbuf`` window: je +9; mov ax,-1; pop si; pop di; mov sp,bp; pop bp
EPILOGUE = bytes.fromhex('7409b8ffff5e5f8be55d')
# A window with a call and a memory operand is real code.
REAL = bytes.fromhex('8b4604e80000')


class DefinitionNameTest(unittest.TestCase):
    def test_trailing_underscore_names_resolve(self):
        self.assertIn('putc.c', sources.definition_files('v340a', 'flsh'))
        self.assertIn('putc.c', sources.definition_files('v340a', 'flsh_'))

    def test_leading_underscore_still_folds(self):
        self.assertEqual(sources.definition_files('v340a', '_putc'),
                         sources.definition_files('v340a', 'putc'))


    def test_asm_block_routine_is_defined_by_its_c_file(self):
        self.assertIn('ovloader.c',
                      sources.definition_files('v340a', 'ovloader_'))


class AsmBlockRenameTest(unittest.TestCase):
    def test_asm_spelling_of_a_renamed_c_name_follows_it(self):
        from lib.aztec import relabel
        text = 'static char *ovname;\n#asm\n\tmov ovname_,ax\n#endasm\nf(){ovname=0;}\n'
        out = relabel.rewrite_identifiers(text, {'ovname': 'bss_0cfa'})
        self.assertIn('mov bss_0cfa_,ax', out)
        self.assertIn('static char *bss_0cfa;', out)
        self.assertIn('bss_0cfa=0', out)


class FillerWindowTest(unittest.TestCase):
    def test_epilogue_is_filler(self):
        self.assertTrue(pattern._is_filler_window(EPILOGUE))

    def test_real_code_is_not(self):
        self.assertFalse(pattern._is_filler_window(REAL))


if __name__ == '__main__':
    unittest.main()
