"""Region-carving pre-pass tests (plan.md Section 11, step D2)."""

import unittest

from lib.compare.regions import (
    DEPRIORITISED_KINDS,
    carve,
    deprioritised_bytes,
    is_deprioritised,
    iter_ranges,
    kind_at,
    region_at,
    summarize_regions,
)


class CarveTests(unittest.TestCase):

    def test_regions_tile_the_span_exactly(self):
        data = bytes(range(256)) * 4
        regions = carve(data)
        self.assertEqual(regions[0].start, 0)
        self.assertEqual(regions[-1].end, len(data))
        for left, right in zip(regions, regions[1:]):
            self.assertEqual(left.end, right.start)
        self.assertTrue(all(r.start < r.end for r in regions))

    def test_empty_span_yields_nothing(self):
        self.assertEqual(carve(b'', 0, 0), [])
        self.assertEqual(carve(b'abc', 2, 2), [])

    def test_string_and_zero_detected(self):
        prefix = bytes([0x01, 0x02])
        string = b'Loading overlay: %s'
        separator = bytes([0x99])
        zeros = bytes(32)
        suffix = bytes([0x33, 0x44])
        data = prefix + string + separator + zeros + suffix
        regions = carve(data)
        self.assertEqual(kind_at(regions, 2), 'string')
        self.assertEqual(kind_at(regions, 2 + len(string)), 'data')
        self.assertEqual(kind_at(regions, 2 + len(string) + 1), 'zero')
        self.assertEqual(kind_at(regions, len(data) - 1), 'data')
        totals = summarize_regions(regions)
        self.assertEqual(totals.get('string'), len(string))
        self.assertEqual(totals.get('zero'), 32)

    def test_short_printable_run_is_not_a_string(self):
        data = b'\x00\x00abc\x00\x00'
        regions = carve(data, min_string=6)
        self.assertNotEqual(kind_at(regions, 3), 'string')

    def test_resource_magic_marker(self):
        data = bytes(16) + b'RIFF' + bytes(64)
        regions = carve(data, magics=((b'RIFF', 'RIFF container'),))
        region = region_at(regions, 16)
        self.assertEqual(region.kind, 'resource')
        self.assertEqual(region.note, 'RIFF container')

    def test_code_outranks_resource(self):
        data = b'MZ' + bytes(14) + b'RIFF' + bytes(32)
        # Pretend the RIFF hit sits inside code: code must win the overlap.
        regions = carve(data, code_ranges=[(16, 24)],
                        magics=((b'RIFF', 'RIFF container'),))
        self.assertEqual(kind_at(regions, 16), 'code')
        self.assertEqual(kind_at(regions, 20), 'code')

    def test_high_entropy_region(self):
        low = bytes(256)
        high = bytes(range(256)) * 2      # perfectly uniform -> 8.0 bit/byte
        data = low + high
        regions = carve(data, entropy_threshold=7.0)
        self.assertEqual(kind_at(regions, 256), 'entropy')
        self.assertEqual(kind_at(regions, 0), 'zero')

    def test_pointer_table_run(self):
        # Five consecutive words that "map into a space".
        words = [0x0100, 0x0200, 0x0300, 0x0400, 0x0500]
        data = b''.join(w.to_bytes(2, 'little') for w in words)
        regions = carve(data, is_addr=lambda w: 0x100 <= w <= 0x500)
        region = region_at(regions, 0)
        self.assertEqual(region.kind, 'pointer_table')
        self.assertEqual(region.end, len(data))

    def test_pointer_table_needs_min_run(self):
        words = [0x0100, 0x0200]
        data = b''.join(w.to_bytes(2, 'little') for w in words)
        regions = carve(data, is_addr=lambda w: True, min_run=3)
        self.assertNotEqual(kind_at(regions, 0), 'pointer_table')

    def test_typed_range_has_priority_over_string(self):
        data = b'ABCDEFGHIJKLMNOP'
        regions = carve(data, typed_ranges=[(2, 8, 'struct foo')])
        self.assertEqual(kind_at(regions, 2), 'typed')
        self.assertEqual(region_at(regions, 2).note, 'struct foo')

    def test_deprioritise_helpers(self):
        data = bytes(8) + b'Loading...' + bytes(32)
        regions = carve(data)
        self.assertTrue(is_deprioritised(regions, 0))
        self.assertTrue(is_deprioritised(regions, 8))
        self.assertTrue(deprioritised_bytes(regions) >= len(b'Loading...'))
        self.assertIn(kind_at(regions, 4), DEPRIORITISED_KINDS)
        self.assertIsNone(region_at(regions, len(data) + 10))

    def test_iter_ranges(self):
        mask = bytearray([0, 1, 1, 0, 1, 0, 0, 1])
        self.assertEqual(list(iter_ranges(mask, 1)), [(1, 3), (4, 5), (7, 8)])


class VerifyRegionWiringTests(unittest.TestCase):
    """The carve pre-pass is surfaced through ``verify()``'s stats dict."""

    def test_verify_returns_region_map(self):
        from lib.compare import verify
        from lib.decode import disassemble
        from lib.model import IS_CODE

        data = b'\xc3' + bytes(7) + b'Hello, world!' + b'\x00' + bytes(40)
        data = data + bytes(64 - len(data))
        bitmap = bytearray(len(data))
        bitmap[0] = IS_CODE
        instructions = list(disassemble(data, 0, bitmap))
        _, stats, *_ = verify(data, 0, instructions, 'region_case',
                              label_map={}, bitmap=bitmap)
        # The map is gap-free and covers the image; the trailing zero padding is
        # deprioritised (a string detector is exercised by CarveTests directly,
        # where the pipeline does not classify the bytes as code).
        self.assertIn('zero', stats['region_counts'])
        self.assertGreaterEqual(stats['region_deprioritised_bytes'], 40)
        self.assertEqual(stats['regions'][0]['start'], 0)
        self.assertEqual(stats['regions'][-1]['end'], len(data))
        for region in stats['regions']:
            self.assertIn('kind', region)


if __name__ == '__main__':
    unittest.main()
