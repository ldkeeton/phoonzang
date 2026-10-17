"""A binary's root ``.asm`` is includes, ``equ``s and data -- never instructions.

Code in a root file means the disassembler never learned where that code is
entered (no root, so no routine file).  The generated tree is checked, so the
cause gets fixed instead of the symptom moving.
"""

import pathlib
import re
import unittest

_TREE = pathlib.Path(__file__).resolve().parents[2] / 'asm_DSAVANT'

_STRUCTURAL = re.compile(
    r'^\s*(;.*)?$'
    r'|^\s*%'
    r'|^\s*(bits|section|org|db|dw|dd|times|resb|resw|align)\b'
    r'|^\s*[\w.$@]+\s+equ\b'
    r'|^\s*[\w.$@]+:\s*(;.*)?$',
    re.I)


@unittest.skipUnless(_TREE.is_dir(), 'generated asm_DSAVANT tree not present')
class RootFileTests(unittest.TestCase):
    def test_root_files_hold_no_instructions(self):
        bare = {}
        for path in sorted(_TREE.glob('*.asm')):
            lines = path.read_text(errors='replace').splitlines()
            found = [f'{number}: {line.strip()}'
                     for number, line in enumerate(lines, 1)
                     if not _STRUCTURAL.match(line)]
            if found:
                bare[path.name] = found[:3]
        self.assertEqual(bare, {})
