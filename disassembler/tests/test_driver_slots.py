"""``lib.match.driver_slots``: a thunk's pointer arguments are its handler's."""

import unittest

from lib.match.driver_slots import thunk_pointer_args


_SLOTS = {'dispatch_table': {'names': {'2': 'mouse_hit_test',
                                       '23': 'get_mouse'}}}


class ThunkPointerArgTests(unittest.TestCase):

    def test_a_handler_argument_maps_past_the_far_call_frame(self):
        # mouse_hit_test reads ``[bp + 0xc]``: word 4, the thunk's argument 0.
        params = {'mouse_hit_test': frozenset((4,)),
                  'get_mouse': frozenset((4, 5))}
        self.assertEqual(
            thunk_pointer_args({0x428d: 2, 0x4300: 23}, _SLOTS, params),
            {0x428d: frozenset((0,)), 0x4300: frozenset((0, 1))})

    def test_a_word_inside_the_frame_is_no_argument(self):
        # Words 0..3 are the far return, the thunk's bp and its return.
        params = {'mouse_hit_test': frozenset((2,))}
        self.assertEqual(thunk_pointer_args({0x428d: 2}, _SLOTS, params), {})

    def test_an_unnamed_entry_takes_nothing(self):
        params = {'mouse_hit_test': frozenset((4,))}
        self.assertEqual(thunk_pointer_args({0x4400: 9}, _SLOTS, params), {})


if __name__ == '__main__':
    unittest.main()
