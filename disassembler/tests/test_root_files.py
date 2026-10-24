"""A binary's root ``.asm`` is includes, ``equ``s, labels and layout.

Code in a root file means the disassembler never learned where that code is
entered (no root, so no routine file).  Data in one means the splitter left a
run of bytes to no fragment.  The only bytes a root may spell are its layout:
the MZ or overlay header and the fill that places the data segment.  The
generated tree is checked, so the cause gets fixed instead of the symptom
moving.
"""

import pathlib
import re
import unittest

_TREE = pathlib.Path(__file__).resolve().parents[2] / 'src_DSAVANT'

_STRUCTURAL = re.compile(
    r'^\s*(;.*)?$'
    r'|^\s*%'
    r'|^\s*(bits|section|absolute|org|db|dw|dd|times|resb|resw|align)\b'
    r'|^\s*[\w.$@]+\s+equ\b'
    r'|^\s*[\w.$@]+:\s*(;.*)?$',
    re.I)

_DATA = re.compile(r'^\s*(db|dw|dd|dq|times|incbin)\b', re.I)
#: The header block runs from its comment to the first label or ``%endif``.
_HEADER = re.compile(r'^\s*; (DOS MZ executable|Aztec C86 overlay) header\b')
_HEADER_END = re.compile(r'^\s*([\w.$@]+:|%endif\b)')
#: Fill up to a fixed layout address: ``times (0x10160 - ($ - $$)) db 0``.
_LAYOUT_FILL = re.compile(r'^\s*times\b.*\$\$')


def _offenders(test):
    bare = {}
    for path in sorted(_TREE.glob('*.asm')):
        lines = path.read_text(errors='replace').splitlines()
        found = [f'{number}: {line.strip()}'
                 for number, line in test(lines)]
        if found:
            bare[path.name] = found[:3]
    return bare


def _instructions(lines):
    return [(number, line) for number, line in enumerate(lines, 1)
            if not _STRUCTURAL.match(line)]


def _data(lines):
    found = []
    in_header = False
    for number, line in enumerate(lines, 1):
        if _HEADER.match(line):
            in_header = True
            continue
        if in_header and _HEADER_END.match(line):
            in_header = False
        if in_header or _LAYOUT_FILL.match(line):
            continue
        if _DATA.match(line):
            found.append((number, line))
    return found


class RootLineTests(unittest.TestCase):
    def test_header_and_layout_fill_are_not_data(self):
        lines = ['    ; Aztec C86 overlay header (14 bytes)',
                 '    dw 0x00f2  ; o_magic',
                 '__zcode_start:',
                 '    times (0x3ae0 - ($ - $$)) db 0 ; 0xe']
        self.assertEqual(_data(lines), [])

    def test_bytes_after_the_header_are_data(self):
        lines = ['    ; DOS MZ executable header (512 bytes)',
                 '    db "MZ"',
                 '%endif',
                 'cseg_086e:',
                 '    db 0x00',
                 '    times 5 db 0']
        self.assertEqual([number for number, _ in _data(lines)], [5, 6])


@unittest.skipUnless(_TREE.is_dir(), 'generated src_DSAVANT tree not present')
class RootFileTests(unittest.TestCase):
    def test_root_files_hold_no_instructions(self):
        self.assertEqual(_offenders(_instructions), {})

    def test_root_files_hold_no_data(self):
        self.assertEqual(_offenders(_data), {})
