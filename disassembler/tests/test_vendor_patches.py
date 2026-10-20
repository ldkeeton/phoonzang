"""Sidecar ``vendor_patches``: the game's copy of a vendor routine, as edits."""

import unittest

from lib.aztec import sources
from lib.aztec.mux import MuxEngine
from lib.sidecar.errors import SidecarError
from lib.sidecar.vendor import _validate_vendor_patches, vendor_patches


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
                _validate_vendor_patches(block)

    def test_accepts_well_formed_block(self):
        _validate_vendor_patches(
            {'x': {'file': 'f', 'version': 'v',
                   'edits': [{'find': 'a', 'replace': 'b'}]}})


class EngineSourceTest(unittest.TestCase):
    def test_patched_source_only_for_the_named_file(self):
        patches = {'aztec_begin': {
            'version': 'v42b', 'file': 'sbegin.asm',
            'edits': [{'find': 'notcom:\n', 'replace': 'notcom:\n\tnop\n'}]}}
        engine = MuxEngine(patches=patches)
        pristine = sources.catalog('v42b')['sbegin.asm']
        self.assertIn('notcom:\n\tnop\n', engine.source('v42b', 'sbegin.asm'))
        self.assertEqual(MuxEngine().source('v42b', 'sbegin.asm'), pristine)
        self.assertEqual(engine.source('v42b', 'lbegin.asm'),
                         sources.catalog('v42b')['lbegin.asm'])


class DsavantPatchTest(unittest.TestCase):
    def test_patches_only_reshape_v42b_sources_for_cc(self):
        """The game links v4.2b's library unmodified (``make libcheck``), so
        a patch only reshapes a source for the build: an ``equ`` alias by
        its field, a renamed startup routine."""
        patches = vendor_patches('DSAVANT')
        self.assertEqual(sorted(patches), ['aztec_begin', 'aztec_fexec'])
        engine = MuxEngine(patches=patches)
        for label, patch in patches.items():
            self.assertEqual(patch['version'], 'v42b', label)
            text = engine.source('v42b', patch['file'])
            for edit in patch['edits']:
                self.assertIn(edit['replace'], text, label)


if __name__ == '__main__':
    unittest.main()
