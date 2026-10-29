"""``make verify`` reads the code map from the assembly's own listing."""
import unittest

from lib.model import IS_CODE
from main.verify import listing_map


LISTING = """\
     1                                  ; auto-generated
     2                                  %include "vmaze/adjust_target_weight.asm" ; 0x0002
     1                              <1> ; auto-generated
     2                              <1> adjust_target_weight:
     3 00000002 B80000              <1>     mov ax, 0                        ; 0x0002
     4 00000005 E8(5246)            <1>     call aztec_csav                  ; 0x0005
     5                              <1> .loop:
     6 00000008 2AE4                <1>     sub ah, ah
     7 0000000A 4142                <1> table: db 0x41, 0x42                 ; 0x000a
     8 0000000C 00<rep 2h>          <1>     times 2 db 0
     9                              <1> struc rec
    10 00000000 ??                  <1>     .f_0000: resb 1
    11                              <1> endstruc
"""


class ListingMapTest(unittest.TestCase):
    def test_instruction_lines_are_code_and_data_lines_are_not(self):
        bitmap, _ = listing_map(LISTING, 14)
        code = [i for i in range(14) if bitmap[i] == IS_CODE]
        self.assertEqual(code, list(range(2, 10)))

    def test_labels_land_on_the_next_byte_and_skip_locals(self):
        _, labels = listing_map(LISTING, 14)
        self.assertEqual(labels, [(2, 'adjust_target_weight'), (10, 'table')])


if __name__ == '__main__':
    unittest.main()
