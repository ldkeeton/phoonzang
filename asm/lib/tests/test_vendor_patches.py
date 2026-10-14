"""Sidecar ``vendor_patches``: the game's copy of a vendor routine, as edits."""

import unittest

from lib import sidecar
from lib.aztec import sources
from lib.aztec.mux import MuxEngine
from lib.sidecar import SidecarError


class ApplyEditsTest(unittest.TestCase):
    def test_edits_apply_in_order(self):
        text = sources.apply_edits('a b c', [{'find': 'b', 'replace': 'x'},
                                             {'find': 'x c', 'replace': 'y'}])
        self.assertEqual(text, 'a y')

    def test_missing_find_is_an_error(self):
        with self.assertRaises(sources.PatchError):
            sources.apply_edits('a', [{'find': 'z', 'replace': ''}])

    def test_ambiguous_find_is_an_error(self):
        with self.assertRaises(sources.PatchError):
            sources.apply_edits('a a', [{'find': 'a', 'replace': ''}])


class ValidationTest(unittest.TestCase):
    def test_rejects_malformed_block(self):
        for block in ([], {'x': {'file': 'f', 'version': 'v',
                                 'edits': []}},
                      {'x': {'file': 'f', 'edits': [
                          {'find': 'a', 'replace': 'b'}]}},
                      {'x': {'file': 'f', 'version': 'v',
                             'edits': [{'find': '', 'replace': 'b'}]}}):
            with self.assertRaises(SidecarError):
                sidecar._validate_vendor_patches(block)

    def test_accepts_well_formed_block(self):
        sidecar._validate_vendor_patches(
            {'x': {'file': 'f', 'version': 'v',
                   'edits': [{'find': 'a', 'replace': 'b'}]}})


class EngineSourceTest(unittest.TestCase):
    def test_patched_source_only_for_the_named_file(self):
        patches = {'aztec_begin': {
            'version': 'v52a', 'file': 'sbegin.asm',
            'edits': [{'find': 'notcom:\n', 'replace': 'notcom:\n\tnop\n'}]}}
        engine = MuxEngine(patches=patches)
        pristine = sources.catalog('v52a')['sbegin.asm']
        self.assertIn('notcom:\n\tnop\n', engine.source('v52a', 'sbegin.asm'))
        self.assertEqual(MuxEngine().source('v52a', 'sbegin.asm'), pristine)
        self.assertEqual(engine.source('v52a', 'lbegin.asm'),
                         sources.catalog('v52a')['lbegin.asm'])


class DsavantPatchTest(unittest.TestCase):
    def test_shipped_patch_applies_to_the_vendor_source(self):
        patches = sidecar.vendor_patches('DSAVANT')
        self.assertIn('aztec_begin', patches)
        text = MuxEngine(patches=patches).source('v52a', 'sbegin.asm')
        self.assertIn('mov\tcs:cseg_4d38_,ds', text)
        self.assertNotIn('_exitinit_\t', text)


if __name__ == '__main__':
    unittest.main()
