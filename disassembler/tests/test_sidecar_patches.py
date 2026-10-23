"""``byte_patches``: the two views of a post-link edit."""

import unittest

from lib.sidecar.errors import SidecarError
from lib.sidecar.patches import (PatchError, finalize, normalize,
                                 parse_patches)

RAW = [{
    'offset': '2c45',
    'natural': '7404',
    'apply': 'eb04',
    'allow': ['7404', 'eb04'],
    'note': 'shipped EXE forces the answer check',
}]


class ParsePatchesTest(unittest.TestCase):
    def test_parses_and_defaults_allow(self):
        entry = parse_patches([{
            'offset': '2c45',
            'natural': '74 04',
            'apply': '0xEB04',
            'note': 'crack',
        }])[0]
        self.assertEqual(entry['offset'], 0x2c45)
        self.assertEqual(entry['length'], 2)
        self.assertEqual(entry['natural'], b'\x74\x04')
        self.assertEqual(entry['apply'], b'\xeb\x04')
        self.assertEqual(entry['allow'], (b'\x74\x04', b'\xeb\x04'))

    def test_missing_note_is_rejected(self):
        with self.assertRaises(SidecarError):
            parse_patches([{'offset': '2c45', 'natural': '7404',
                            'apply': 'eb04'}])

    def test_length_change_is_rejected(self):
        with self.assertRaises(SidecarError):
            parse_patches([{'offset': '2c45', 'natural': '7404',
                            'apply': 'eb0400', 'note': 'x'}])

    def test_apply_must_be_allowed(self):
        with self.assertRaises(SidecarError):
            parse_patches([{'offset': '2c45', 'natural': '7404',
                            'apply': 'eb04', 'allow': ['7404'],
                            'note': 'x'}])

    def test_overlap_is_rejected(self):
        with self.assertRaises(SidecarError):
            parse_patches([
                {'offset': '2c45', 'natural': '7404', 'apply': 'eb04',
                 'note': 'a'},
                {'offset': '2c46', 'natural': '00', 'apply': '01',
                 'note': 'b'},
            ])


class ApplyPatchesTest(unittest.TestCase):
    def setUp(self):
        self.patches = parse_patches(RAW)

    def test_normalize_uses_natural_bytes(self):
        data = b'\x90' * 0x2c45 + b'\xeb\x04' + b'\x90'
        out = normalize(data, self.patches)
        self.assertEqual(out[0x2c45:0x2c47], b'\x74\x04')
        self.assertEqual(out[:0x2c45], data[:0x2c45])

    def test_normalize_is_idempotent(self):
        data = b'\x90' * 0x2c45 + b'\x74\x04' + b'\x90'
        self.assertEqual(normalize(normalize(data, self.patches),
                                   self.patches), data)

    def test_finalize_writes_apply_bytes(self):
        data = b'\x90' * 0x2c45 + b'\x74\x04' + b'\x90'
        seen = []
        out = finalize(data, self.patches,
                       on_apply=lambda patch, before: seen.append(
                           (patch['offset'], before)))
        self.assertEqual(out[0x2c45:0x2c47], b'\xeb\x04')
        self.assertEqual(seen, [(0x2c45, b'\x74\x04')])

    def test_finalize_is_idempotent(self):
        data = b'\x90' * 0x2c45 + b'\xeb\x04' + b'\x90'
        seen = []
        out = finalize(data, self.patches,
                       on_apply=lambda patch, before: seen.append(before))
        self.assertEqual(out, data)
        self.assertEqual(seen, [])

    def test_unexpected_build_bytes_fail(self):
        data = b'\x90' * 0x2c45 + b'\x90\x90' + b'\x90'
        with self.assertRaises(PatchError):
            finalize(data, self.patches)

    def test_patch_past_end_fails(self):
        with self.assertRaises(PatchError):
            normalize(b'\x90', self.patches)


if __name__ == '__main__':
    unittest.main()
