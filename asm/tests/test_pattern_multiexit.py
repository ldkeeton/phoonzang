import unittest

from lib.match.pattern import match_patterns

# mov ax,5; mov dx,6; add ax,dx; pop bp; ret
_WINDOW = 'b8 05 00 ba 06 00 03 c2 5d c3'


class MultiExitAnchorTests(unittest.TestCase):
    def test_window_after_early_ret_anchors_to_function_entry(self):
        # push bp; mov bp,sp; cmp ax,1; jb over the early `pop bp; ret`; window
        data = bytes.fromhex('55 8b ec 83 f8 01 72 02 5d c3 ' + _WINDOW)
        known_db = {'signatures': [
            {'name': 'early_ret', 'patterns': [_WINDOW],
             'entry_offset': 10, 'has_prologue': True}]}

        labels = match_patterns(data, set(), known_db)

        self.assertEqual(labels, {0: 'early_ret'})

    def test_unrelated_function_after_ret_is_not_merged(self):
        # Nothing branches past the first ret, so the second routine keeps its
        # own entry instead of being folded into the first.
        data = bytes.fromhex('55 8b ec 5d c3 ' + _WINDOW)
        known_db = {'signatures': [
            {'name': 'second', 'patterns': [_WINDOW]}]}

        labels = match_patterns(data, set(), known_db)

        self.assertEqual(labels, {5: 'second'})


if __name__ == '__main__':
    unittest.main()
