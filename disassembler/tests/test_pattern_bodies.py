import unittest

from lib.match.pattern import match_patterns

# The window, shared by the routine and a decoy: add sp,6; mov ax,100
_WINDOW = '83 c4 06 b8 64 00'
# push ax; call <reloc>; pop cx; ret -- the routine's tail
_TAIL = '50 e8 00 00 59 c3'
# A different tail after the same window: push ax; push ax; pop cx; pop cx; ret
_DECOY_TAIL = '50 50 59 59 c3'

_SIG = {'name': 'stkover', 'patterns': [_WINDOW], 'entry_offset': 0,
        'bodies': [{'bytes': _WINDOW + ' ' + _TAIL, 'relocs': [[8, 2]]}]}


class BodyCheckTests(unittest.TestCase):
    def test_routine_kept_and_decoy_with_same_window_dropped(self):
        # The decoy first, then the routine with its call already relocated.
        data = bytes.fromhex(_WINDOW + ' ' + _DECOY_TAIL + ' '
                             + _WINDOW + ' 50 e8 34 12 59 c3')

        labels = match_patterns(data, set(), {'signatures': [_SIG]})

        self.assertEqual(labels, {11: 'stkover'})

    def test_byte_outside_relocations_must_match(self):
        data = bytes.fromhex(_WINDOW + ' 50 e8 34 12 5a c3')  # pop dx

        self.assertEqual(match_patterns(data, set(), {'signatures': [_SIG]}),
                         {})

    def test_signature_without_bodies_is_not_checked(self):
        sig = {k: v for k, v in _SIG.items() if k != 'bodies'}
        data = bytes.fromhex(_WINDOW + ' ' + _DECOY_TAIL)

        self.assertEqual(match_patterns(data, set(), {'signatures': [sig]}),
                         {0: 'stkover'})


if __name__ == '__main__':
    unittest.main()
