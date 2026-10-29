"""``lib.match.driver_slots``: a thunk's pointer arguments are its handler's,
and a slot pointer is named for the entry it points at."""

import unittest
from types import SimpleNamespace

from lib.match.driver_slots import (inc_text, slot_names, slot_words,
                                    thunk_pointer_args)
from lib.sidecar.usage import SidecarUse
from main.runner import _apply_sidecar_code_data_names


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


class SlotNameTests(unittest.TestCase):
    # Pointers at 0x10.. initially hold 0x0103 + 4n: entry n of the driver.
    DATA = bytes(16) + b''.join((0x103 + 4 * n).to_bytes(4, 'little')
                                for n in (2, 9, 23))
    SLOTS = {'offset': '0010', 'count': 3, 'slot_prefix': 'drv_slot',
             'driver': 'gfx',
             'dispatch_table': dict(_SLOTS['dispatch_table'], base_offset=3,
                                    entry_size=4, count=32)}

    def test_every_pointer_is_named_for_its_entry(self):
        # Entry 9 has no API name: its pointer is still an object of its own.
        self.assertEqual(slot_names(self.DATA, self.SLOTS),
                         {0x10: 'drv_slot_mouse_hit_test',
                          0x14: 'drv_slot_entry_09',
                          0x18: 'drv_slot_get_mouse'})

    def test_a_value_past_the_table_is_no_entry(self):
        slots = dict(self.SLOTS, dispatch_table=dict(
            self.SLOTS['dispatch_table'], count=10))
        self.assertEqual(slot_names(self.DATA, slots),
                         {0x10: 'drv_slot_mouse_hit_test',
                          0x14: 'drv_slot_entry_09'})

    def test_no_slot_prefix_names_nothing(self):
        slots = {k: v for k, v in self.SLOTS.items() if k != 'slot_prefix'}
        self.assertEqual(slot_names(self.DATA, slots), {})

    def test_a_pointer_spells_its_entry_with_the_driver_macro(self):
        self.assertEqual(slot_words(self.DATA, self.SLOTS),
                         {0x10: 'gfx_entry(2), 0', 0x14: 'gfx_entry(9), 0',
                          0x18: 'gfx_entry(23), 0'})

    def test_the_macro_comes_from_the_dispatch_table(self):
        # Another layout: entries of 5 bytes from byte 0; nothing is fixed.
        api = {'base_offset': 0, 'entry_size': 5, 'count': 4}
        data = bytes(16) + (0x100 + 5 * 3).to_bytes(4, 'little')
        slots = {'offset': '0010', 'count': 1, 'driver': 'snd',
                 'dispatch_table': api}
        self.assertEqual(slot_words(data, slots), {0x10: 'snd_entry(3), 0'})
        self.assertIn('%define snd_entry(n) (0x100 + 0x0 + 0x5*(n))',
                      inc_text([slots]))

    def test_a_pin_repeating_a_slot_name_is_reported(self):
        use = SidecarUse('binaries.ds')
        entry = {'use': use, 'code_data_names': {
            0x10: {'name': 'drv_slot_mouse_hit_test'}, 0x14: {'name': 'other'}}}
        segments = SimpleNamespace(cseg_names={}, file_size=0x20)
        _apply_sidecar_code_data_names(
            segments, entry, slot_names(self.DATA, self.SLOTS))
        self.assertFalse(use.is_applied('code_data_names', '0010'))
        self.assertTrue(use.is_applied('code_data_names', '0014'))


if __name__ == '__main__':
    unittest.main()
