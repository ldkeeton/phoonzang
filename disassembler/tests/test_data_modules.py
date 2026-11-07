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
    #: A module at DS 0x10 holding a pointer to its own second word.
    POINTERS = DataModule('ptrs.c', (('ptrs', 0),), bytes.fromhex('12000000'),
                          ds=0x10)

    #: A module a sidecar length declares, with its hand-owned C.
    DECLARED = DataModule('tables.c', (('tables', 0),), bytes(2), True)

    def sources(self, compiled, relocations=(), module=STKSIZ, asm=ASM,
                hand=None, calls=None):
        name = stem(module)
        compiled_mock = mock.Mock(return_value=mock.Mock(
            data=compiled, data_relocations=relocations))
        with tempfile.TemporaryDirectory() as out, \
                mock.patch('lib.aztec.datamodules.data_modules',
                           return_value=(module,)), \
                mock.patch('lib.aztec.cache.seed_source_text',
                           return_value='/* auto-generated */\nint x;\n'), \
                mock.patch('lib.aztec.cache.precompile', return_value={}), \
                mock.patch('lib.aztec.cache.compiled', compiled_mock):
            if hand is not None:
                os.makedirs(os.path.join(out, 'vinstall', 'data'))
                with open(os.path.join(out, 'vinstall', 'data',
                                       f'{name}.c'), 'w') as f:
                    f.write(hand)
            result = aztec._data_sources('P', 'vinstall', out,
                                         {f'vinstall/data/{name}.asm': asm})
        if calls is not None:
            calls.extend(c.args[2] for c in compiled_mock.call_args_list)
        return result

    def test_the_seed_goes_beside_the_asm(self):
        self.assertEqual(list(self.sources(STKSIZ.data)),
                         ['vinstall/data/stksiz.c'])

    def test_other_data_fails_the_build(self):
        with self.assertRaisesRegex(SystemExit, 'stksiz.c: compiles to'):
            self.sources(bytes(8))

    def test_a_pointer_is_relocated_to_the_modules_ds_offset(self):
        self.assertEqual(
            list(self.sources(bytes.fromhex('02000000'), ((0, 2),),
                              self.POINTERS, '__zptrs:\n')),
            ['vinstall/data/ptrs.c'])

    def test_an_unrelocated_word_is_compared_as_it_is(self):
        with self.assertRaisesRegex(SystemExit, 'ptrs.c: compiles to'):
            self.sources(bytes.fromhex('02000000'), (), self.POINTERS,
                         '__zptrs:\n')


    def test_a_library_module_compiles_under_its_aztec_name(self):
        labels = []
        self.sources(STKSIZ.data, calls=labels)
        self.assertEqual(labels, ['aztec_stksiz'])

    def test_a_declared_module_compiles_under_its_stem_as_make_link_does(self):
        labels = []
        self.sources(bytes(2), module=self.DECLARED, asm='__ztables:\n',
                     hand='int tables;\n', calls=labels)
        self.assertEqual(labels, ['tables'])


class CheckDataAsmTest(unittest.TestCase):
    """A hand-owned ``.s`` beside a data fragment must hold the image's bytes."""
    IMAGE = b'\xaa\x01\x02\xbb'
    FILES = {'p/data/t.asm': (1, 3, {'t': 1, 'u': 2})}

    def check(self, code=b'\x01\x02', members=None, fixups=(), data=b'',
              extra=None):
        whole = mock.Mock(code=code, members={'t': 0} if members is None else members,
                          fixups=list(fixups))
        module = mock.Mock(data=data, data_relocations=())
        with tempfile.TemporaryDirectory() as out:
            os.makedirs(os.path.join(out, 'p', 'data'))
            for name in ('t.s', *(extra or ())):
                with open(os.path.join(out, 'p', 'data', name), 'w') as f:
                    f.write('source')
            with mock.patch('lib.aztec.cache.precompile', return_value={}), \
                    mock.patch('lib.aztec.cache.compile_source_module',
                               return_value=(module, whole)):
                return aztec._check_data_asm('P', 'p', out, self.FILES, self.IMAGE)

    def test_matching_source(self):
        self.assertEqual(self.check(), [])

    def test_a_changed_byte_fails(self):
        self.assertRegex(self.check(b'\x01\x03')[0], r't\.s: .*\+0x1')

    def test_a_wrong_length_fails(self):
        self.assertRegex(self.check(b'\x01')[0], '1 bytes, the image holds 2')

    def test_data_segment_bytes_count(self):
        self.assertEqual(self.check(b'', data=b'\x01\x02'), [])

    def test_a_public_must_be_the_builds_label(self):
        self.assertRegex(self.check(members={'t': 0, 'other': 1})[0], 'public other')
        self.assertRegex(self.check(members={'u': 0})[0], 'public u')

    def test_a_relocated_word_is_left_to_the_linker(self):
        # A pointer's bytes are the linker's; make rebuild checks them.
        pointer = mock.Mock(offset=0, kind='WOFF')
        self.assertEqual(self.check(b'\x00\x00', fixups=[pointer]), [])

    def test_bytes_outside_a_relocation_are_still_checked(self):
        pointer = mock.Mock(offset=0, kind='WOFF')
        self.assertRegex(self.check(b'\x00\x00\x09', fixups=[pointer])[0],
                         '3 bytes, the image holds 2')

    def test_a_source_with_no_fragment_fails(self):
        self.assertRegex(self.check(extra=['gone.s'])[0], 'gone.s: no data fragment')

    def test_no_source_no_error(self):
        with tempfile.TemporaryDirectory() as out:
            self.assertEqual(
                aztec._check_data_asm('P', 'p', out, self.FILES, self.IMAGE), [])


if __name__ == '__main__':
    unittest.main()
