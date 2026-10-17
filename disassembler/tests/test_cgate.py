"""The C gate: compiled bytes must reproduce the original routine."""

import unittest

from lib.compare.cgate import check_against_original

# push bp; mov bp,sp; mov ax,[bp+4]; pop bp; ret
ORIG = bytes.fromhex('558bec8b4604' '5dc3')


class CGateTest(unittest.TestCase):
    def check(self, compiled, **kw):
        return check_against_original('f', 0x100, ORIG, compiled, **kw)

    def test_identical_passes(self):
        self.assertEqual(self.check(ORIG), [])

    def test_changed_instruction_is_reported(self):
        bad = bytearray(ORIG)
        bad[5] = 0x06
        report = self.check(bytes(bad))
        self.assertIn('1 instruction(s), 1 of 8', report[0])
        self.assertIn('+0x003', report[1])

    def test_semantic_variant_passes_unless_exact(self):
        # mov bp,sp as 89 e5 instead of 8b ec
        variant = bytes.fromhex('5589e5' '8b4604' '5dc3')
        self.assertEqual(self.check(variant), [])
        self.assertTrue(self.check(variant, exact=True))

    def test_shorter_fails(self):
        report = self.check(ORIG[:-1])
        self.assertIn('length: compiled 7 bytes, original 8', report[1])

    def test_longer_fails(self):
        self.assertTrue(self.check(ORIG + b'\x90'))


if __name__ == '__main__':
    unittest.main()
