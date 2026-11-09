"""``make build`` recaps each binary's warnings after its summary line."""

import unittest

from make.common import _top_warnings


class TopWarningsTest(unittest.TestCase):
    def test_headers_kept_details_and_other_binaries_dropped(self):
        out = ('vdopt: OK\n'
               'vdopt: warning: pick_spell_dialog: C does not match: 31 differ\n'
               'vdopt: warning:   +0x2fa (0x2c82)  orig: b8 00 00\n'
               'vdopt: warning:                        C:    eb 44 b8\n'
               'vtrea: warning: other: not this binary\n'
               'vdopt: warning: draw_x: length differs\n')
        self.assertEqual(_top_warnings('vdopt', out), [
            ('vdopt', 'pick_spell_dialog: C does not match: 31 differ'),
            ('vdopt', 'draw_x: length differs')])

    def test_no_warnings(self):
        self.assertEqual(_top_warnings('ds', 'ds: OK\n'), [])


if __name__ == '__main__':
    unittest.main()
