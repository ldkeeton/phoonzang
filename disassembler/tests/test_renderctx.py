"""Render-context persistence for C-fragment resplicing (``make elf-rebuild``)."""

import json
import os
import unittest

from lib.renderctx import encode, decode, context_dir, context_path
from lib.symtab import Kind
from tests.syms import bss, local, routine


class EncodeDecodeTest(unittest.TestCase):
    def test_round_trip_preserves_maps_and_types(self):
        context = {
            'local_labels': {0x1010: local('f', 0x1010, 1)},
            'data_labels': {0x0d00: bss(0x0d00)},
            'mem_symbols': {(0x4804, 1): bss(0x0d00)},
            'mem_equ': {bss(0x0d00): 0x0d00},
            'foreign_label_map': {0x200: 'host_thing'},
            'immediate_labels': {0x300: 'api_idx_0004'},
            'exact_bytes': True,
            'label_records': [(0x1000, routine('f', 0x1000), 'f:'),
                              (0x1010, local('f', 0x1010, 1), '@..f.l1:')],
        }
        # JSON must round-trip so the on-disk form is what resplice reads.
        out = decode(json.loads(json.dumps(encode(context))))
        self.assertEqual(out['local_labels'], {0x1010: '@..f.l1'})
        self.assertEqual(out['data_labels'], {0x0d00: 'bss_0d00'})
        self.assertEqual(out['mem_symbols'], {(0x4804, 1): 'bss_0d00'})
        self.assertEqual(out['mem_equ'], {'bss_0d00': 0x0d00})
        self.assertEqual(out['foreign_label_map'], {0x200: 'host_thing'})
        self.assertEqual(out['immediate_labels'], {0x300: 'api_idx_0004'})
        self.assertTrue(out['exact_bytes'])
        self.assertEqual(out['label_records'],
                         [(0x1000, 'f', 'f:'), (0x1010, '@..f.l1', '@..f.l1:')])
        # Names come back as symbols, not just their text.
        self.assertIs(out['local_labels'][0x1010].kind, Kind.LOCAL)
        self.assertEqual(out['local_labels'][0x1010].index, 1)
        self.assertIs(out['mem_equ'].popitem()[0].kind, Kind.DATA)

    def test_empty_optional_maps_decode_to_none(self):
        out = decode(json.loads(json.dumps(
            encode({'local_labels': {}, 'mem_symbols': {}}))))
        self.assertIsNone(out['foreign_label_map'])
        self.assertIsNone(out['immediate_labels'])
        self.assertFalse(out['exact_bytes'])

    def test_context_lives_under_cache(self):
        path = context_path('DSAVANT', 'ds')
        self.assertEqual(context_dir('DSAVANT'), os.path.dirname(path))
        self.assertEqual(path.split(os.sep)[-4:],
                         ['.cache', 'DSAVANT', 'render', 'ds.json'])


if __name__ == '__main__':
    unittest.main()


class GeometryRoundTripTest(unittest.TestCase):
    def test_image_geometry_survives_the_round_trip(self):
        geometry = {'__zres_end': 0x440c, '__zdseg_end': 0x1234}
        raw = json.loads(json.dumps(encode({'geometry': geometry})))
        self.assertEqual(decode(raw)['geometry'], geometry)
