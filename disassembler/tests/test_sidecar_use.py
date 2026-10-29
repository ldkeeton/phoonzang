"""``lib.sidecar.usage``: a naming entry is applied only if the final label
map still says so, and a routine pin repeating a derived name is reported."""

import unittest

from lib.sidecar.usage import SidecarUse


class CheckNamesTests(unittest.TestCase):

    def test_a_pin_repeating_a_dispatch_name_is_reported(self):
        use = SidecarUse('binaries.ega')
        use.final_names[('function_names', '04b1')] = (0x4b1, 'show_area')
        use.final_names[('dispatch_table.names', '16')] = (0x4b1, 'show_area')
        use.check_names({0x4b1: 'show_area'})
        self.assertTrue(use.is_applied('dispatch_table.names', '16'))
        self.assertIn('repeats dispatch_table.names["16"]',
                      use._state[('function_names', '04b1')])

    def test_a_pin_of_its_own_name_is_applied(self):
        use = SidecarUse('binaries.ega')
        use.final_names[('function_names', '0500')] = (0x500, 'helper')
        use.check_names({0x500: 'helper'})
        self.assertTrue(use.is_applied('function_names', '0500'))


if __name__ == '__main__':
    unittest.main()
