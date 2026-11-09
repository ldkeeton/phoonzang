"""``make name`` renames a global in C but leaves struct members of the same
name alone (``make.naming._rename_text``)."""

import re
import unittest

from make import naming

RENAMES = {'record_size': 'master_header'}
PATTERN = re.compile(r'\b(record_size)(_?)\b')


def _rename(text, c_source=True):
    return naming._rename_text(text, PATTERN, RENAMES, c_source)


class MemberRenameTest(unittest.TestCase):

    def test_the_global_is_renamed(self):
        new, counts = _rename('extern int record_size[];\nx = record_size[2];\n')
        self.assertEqual(new, 'extern int master_header[];\n'
                              'x = master_header[2];\n')
        self.assertEqual(counts, {('record_size', 'master_header'): 2})

    def test_member_accesses_are_not(self):
        text = 'n = pc.record_size + p->record_size + q-> record_size;\n'
        self.assertEqual(_rename(text), (text, {}))

    def test_member_declarations_are_not(self):
        body = ('struct pc_file_header {\n\tint record_size;\n'
                '\tstruct { int record_size; } inner;\n};\n')
        new, _ = _rename(body + 'int record_size;\n')
        self.assertEqual(new, body + 'int master_header;\n')

    def test_asm_is_renamed_as_before(self):
        new, _ = _rename('mov ax, [record_size+4]\n', c_source=False)
        self.assertEqual(new, 'mov ax, [master_header+4]\n')


if __name__ == '__main__':
    unittest.main()
