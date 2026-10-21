"""Sidecar ``bands``: the link line's address ranges, and the folders they
give a binary's fragments (:mod:`lib.sidecar.bands`)."""

import os
import tempfile
import unittest

from lib.compare.splitting import _partition_function_records
from lib.sidecar.bands import _validate_bands, band_for, parse_bands
from lib.sidecar.errors import SidecarError
from main import aztec

BANDS = [{'name': 'game', 'start': '0200', 'end': '020f'},
         {'name': 'library', 'start': '0210', 'end': '021f'},
         {'name': 'aztec', 'start': '0220', 'end': '022f'}]


class ValidateBandsTest(unittest.TestCase):
    def test_accepts_well_formed_bands(self):
        _validate_bands(BANDS, 'bands')
        _validate_bands([], 'bands')

    def test_rejects_unknown_name(self):
        with self.assertRaises(SidecarError):
            _validate_bands([{'name': 'misc', 'start': '0', 'end': '1'}], 'b')

    def test_rejects_overlap_and_disorder(self):
        with self.assertRaises(SidecarError):
            _validate_bands([BANDS[0], dict(BANDS[1], start='020f')], 'b')
        with self.assertRaises(SidecarError):
            _validate_bands([BANDS[1], BANDS[0]], 'b')


class BandForTest(unittest.TestCase):
    def test_edges_are_inclusive(self):
        bands = parse_bands(BANDS)
        self.assertEqual(band_for(bands, 0x200)[2], 'game')
        self.assertEqual(band_for(bands, 0x20f)[2], 'game')
        self.assertEqual(band_for(bands, 0x210), (0x210, 0x21f, 'library'))
        self.assertIsNone(band_for(bands, 0x230))


class PartitionIntoBandsTest(unittest.TestCase):
    RECORDS = [
        {'type': 'label', 'text': 'foo:', 'offset': 0x210},
        {'type': 'mnem', 'text': 'nop', 'offset': 0x210, 'size': 1},
        {'type': 'mnem', 'text': 'ret', 'offset': 0x211, 'size': 1},
    ]

    def test_fragment_goes_to_its_band_folder(self):
        main, sources = _partition_function_records(
            self.RECORDS, [(0x210, 0x212, 'foo')], 'demo', parse_bands(BANDS))
        inc = next(r for r in main if r['type'] == 'include')
        self.assertEqual(inc['text'], '%include "demo/library/foo.asm"')
        self.assertIn('demo/library/foo.asm', sources)

    def test_no_bands_stays_flat(self):
        _, sources = _partition_function_records(
            self.RECORDS, [(0x210, 0x212, 'foo')], 'demo')
        self.assertIn('demo/foo.asm', sources)

    def test_fragment_outside_every_band_is_an_error(self):
        bands = parse_bands(BANDS[:1])
        with self.assertRaises(ValueError):
            _partition_function_records(
                self.RECORDS, [(0x210, 0x212, 'foo')], 'demo', bands)


class BandHomeTest(unittest.TestCase):
    def test_c_lives_in_its_band_folder(self):
        bands = parse_bands(BANDS)
        self.assertEqual(aztec._band_home('ds', bands, 0x205),
                         os.path.join('ds', 'game'))
        self.assertEqual(aztec._band_home('ds', [], 0x205), 'ds')
        self.assertEqual(aztec._band_home('ds', bands, None), 'ds')

    def test_hand_sources_found_in_band_folders(self):
        with tempfile.TemporaryDirectory() as tmp:
            dest = os.path.join(tmp, 'ds')
            os.makedirs(os.path.join(dest, 'game'))
            os.makedirs(os.path.join(dest, 'library'))
            with open(os.path.join(dest, 'game', 'foo.c'), 'w') as f:
                f.write('int mine;\n')
            with open(os.path.join(dest, 'library', 'bar.s'), 'w') as f:
                f.write('\tret\n')
            self.assertEqual(aztec._hand_c_tree(dest, parse_bands(BANDS)),
                             {'foo': os.path.join(dest, 'game', 'foo.c'),
                              'bar': os.path.join(dest, 'library', 'bar.s')})


if __name__ == '__main__':
    unittest.main()
