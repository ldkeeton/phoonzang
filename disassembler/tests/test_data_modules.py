"""The library's data-only modules, and the check of their vendor ``.c``."""

import os
import tempfile
import unittest
from unittest import mock

from lib.aztec.datamodules import (DataModule, data_modules,
                                   declared_data_modules, stem)
from lib.cachedirs import aztec_lib_obj_dir
from lib.segments import SegmentModel
from main import aztec

STKSIZ = DataModule('stksiz.c', (('_STKSIZ', 0), ('_STKRED', 2),
                                 ('_HEAPSIZ', 4), ('_STKLOW', 6)),
                    bytes.fromhex('0001000800010000'))
ASM = ('__z_STKSIZ:\n    db 0x00, 0x01\n__z_STKRED:\n    db 0x00, 0x08\n'
       '__z_HEAPSIZ:\n    db 0x00, 0x01\n__z_STKLOW:\n    db 0x00, 0x00\n')


@unittest.skipUnless(os.path.isdir(aztec_lib_obj_dir('DSAVANT')),
                     'library objects not converted')
class DataModulesTest(unittest.TestCase):
    def test_the_library_modules(self):
        # Matching vendor data modules is discovery: only prebuild does it.
        data_modules.cache_clear()
        self.addCleanup(data_modules.cache_clear)
        with mock.patch('main.options.AZTEC_PREBUILD', True):
            found = {stem(m): m for m in data_modules('DSAVANT')}
        self.assertEqual(found['ctp_'].file, 'ctype.c')
        self.assertEqual(len(found['ctp_'].data), 129)
        self.assertEqual(found['stksiz'], STKSIZ)


class DeclaredOverlayDataTest(unittest.TestCase):
    """An overlay's data follows its code in the file, and loads at o_dorg."""
    SEGMENTS = SegmentModel('overlay', 0x40, overlay={
        'o_corg': 0x1000, 'o_csize': 0x10, 'o_dorg': 0x9000, 'o_dsize': 0x10,
        'o_bss': 0, 'o_entry': 0x1000})
    IMAGE = bytes(range(0x40))

    def modules(self, offset, length):
        entry = {'data_names': {offset: {'name': 'a', 'length': length,
                                         'file': 'group'}}}
        return declared_data_modules(entry, self.SEGMENTS, self.IMAGE)

    def test_the_bytes_are_the_overlays_own(self):
        module, = self.modules(0x9004, 4)
        self.assertEqual(module.data, self.IMAGE[0x22:0x26])
        self.assertEqual(stem(module), 'group')

    def test_the_hosts_data_cannot_be_declared(self):
        with self.assertRaises(ValueError):
            self.modules(0x8ff0, 4)

    def test_the_span_stays_in_the_initialized_data(self):
        with self.assertRaises(ValueError):
            self.modules(0x900c, 8)


class DataSourcesTest(unittest.TestCase):
    def sources(self, compiled):
        with tempfile.TemporaryDirectory() as out, \
                mock.patch('lib.aztec.datamodules.data_modules',
                           return_value=(STKSIZ,)), \
                mock.patch('lib.aztec.cache.seed_source_text',
                           return_value='/* auto-generated */\nint x;\n'), \
                mock.patch('lib.aztec.cache.precompile', return_value={}), \
                mock.patch('lib.aztec.cache.compile_data',
                           return_value=compiled):
            return aztec._data_sources('P', 'vinstall', out,
                                       {'vinstall/data/stksiz.asm': ASM})

    def test_the_seed_goes_beside_the_asm(self):
        self.assertEqual(list(self.sources(STKSIZ.data)),
                         ['vinstall/data/stksiz.c'])

    def test_other_data_fails_the_build(self):
        with self.assertRaisesRegex(SystemExit, 'stksiz.c: compiles to'):
            self.sources(bytes(8))


if __name__ == '__main__':
    unittest.main()
