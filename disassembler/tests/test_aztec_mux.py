"""Tests for the Aztec C mux (v4.2b sources and toolchain).

The compile-backed checks are skipped when DOSBox or the vendored toolchain is
unavailable.  The cache checks always run if a prebuild manifest exists.
"""

import json
import os
import shutil
import unittest

from tests.slow import slow

ASM = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
PROJECT = os.path.dirname(ASM)

from lib.aztec import sources  # noqa: E402
from lib.aztec.mux import MuxEngine, normalize, compare  # noqa: E402
from lib.aztec.cache import cache_path, to_override  # noqa: E402
from lib.cross_ref import read_label_json  # noqa: E402


def _have_toolchain():
    from lib.aztec import compile as azc
    return azc.available('v42b') and os.path.isdir(sources.src_root('v42b'))


def _ds_labels_path():
    """The host's generated label map (derived source, lives in ``.cache``)."""
    return os.path.join(PROJECT, '.cache', 'DSAVANT', 'labels',
                        'ds_labels.json')


class SourceCatalogTest(unittest.TestCase):
    def test_v42b_open_is_plaintext(self):
        text = sources.catalog('v42b').get('open.c')
        self.assertIsNotNone(text)
        self.assertIn('_ioflg[fd] = isatty(fd)', text)
        self.assertNotIn('netware', text)

    def test_definition_index(self):
        self.assertIn('open.c', sources.definition_files('v42b', 'open'))
        self.assertIn('io.asm', sources.asm_definition_files('v42b', 'lseek'))

    def test_dos_library_dirs_win_name_clashes(self):
        # croot.c is in both the CP/M and the DOS 2 archives.
        self.assertEqual(sources.catalog('v42b')['croot.c'],
                         open(os.path.join(sources.src_root('v42b'), 'dos20',
                                           'croot.c'), errors='replace').read())


class CacheTest(unittest.TestCase):
    def _data(self):
        with open(os.path.join(PROJECT, 'apps', 'DSAVANT', 'DS.EXE'),
                  'rb') as f:
            return f.read()

    def _labels(self):
        path = _ds_labels_path()
        if not os.path.exists(path):
            self.skipTest('no generated label map; run "make build DSAVANT"')
        return {v: k for k, v in read_label_json(path).items()}

    def test_cached_routines_are_byte_exact(self):
        path = cache_path('DSAVANT', 'ds')
        if not os.path.exists(path):
            self.skipTest('no prebuild manifest; run "make prebuild DSAVANT"')
        with open(path) as f:
            functions = json.load(f)['functions']
        data = self._data()
        labels = self._labels()
        self.assertTrue(functions)
        for label, entry in functions.items():
            start = labels[label]
            override = to_override(entry)
            final = bytearray(override['code'])
            for off, width in override['fixups']:
                final[off:off + width] = data[start + off:start + off + width]
            self.assertEqual(bytes(final), data[start:start + len(final)],
                             f'{label} not byte-exact')


@unittest.skipUnless(_have_toolchain(), 'Aztec toolchain/DOSBox missing')
class MuxCompileTest(unittest.TestCase):
    @slow
    def test_open_recovers_from_v42b(self):
        with open(os.path.join(PROJECT, 'apps', 'DSAVANT', 'DS.EXE'),
                  'rb') as f:
            data = f.read()
        labels_path = _ds_labels_path()
        if not os.path.exists(labels_path):
            self.skipTest('no generated label map; run "make build DSAVANT"')
        labels = {v: k for k, v in read_label_json(labels_path).items()}
        engine = MuxEngine()
        matches = engine.resolve('open', data, labels['aztec_open'])
        self.assertTrue(any(m.exact for m in matches))
        best = matches[0]
        self.assertEqual(best.version, 'v42b')
        self.assertEqual(best.filename, 'open.c')
        self.assertEqual(best.compiler, 'v42b')


class ObdParseTest(unittest.TestCase):
    """OBD pads a segment short of its declared length when a relocation
    operand is suppressed; ``parse_obd`` must restore the declared length so a
    function is not clipped mid-instruction."""

    def test_trailing_relocation_operand_is_padded(self):
        from lib.aztec.objread import parse_obd
        # Mirrors a real listing tail: the final ``e9`` operand bytes are not
        # printed as Data, and ``TheEnd`` declares the 0xfe segment length.
        text = (
            'Code (0000): Data( 2)  8b ec\n'
            'Code (00fb): Data( 1)  e9\n'
            'Code (00fc): WREL LCLSYM .11\n'
            'Code (00fe): Use Code\n'
            'Code (00fe): TheEnd\n'
        )
        dump = parse_obd(text)
        self.assertEqual(len(dump.code), 0xfe)
        self.assertEqual(bytes(dump.code[:2]), b'\x8b\xec')
        self.assertEqual(dump.code[0xfb], 0xe9)
        # The suppressed operand bytes are zero-filled and relocation-covered.
        self.assertEqual(bytes(dump.code[0xfc:0xfe]), b'\x00\x00')
        self.assertTrue(any(fx.offset == 0xfc for fx in dump.fixups))

    def test_complete_segment_is_not_padded(self):
        from lib.aztec.objread import parse_obd
        dump = parse_obd(
            'Code (0000): Data( 3)  90 90 c3\n'
            'Code (0003): TheEnd\n'
        )
        self.assertEqual(len(dump.code), 3)
        self.assertEqual(bytes(dump.code), b'\x90\x90\xc3')


class StaticRoutineTest(unittest.TestCase):
    """A ``static`` routine is only in the ``.O``'s symbol table: defined in
    code but not global, so the OMF's PUBDEF leaves it out."""

    def _blob(self):
        # putc.c's table: the header's bytes 16-19 give its offset and length.
        table = (b'\x02\x48\x00\x00putc_\x00'       # public code at 0
                 b'\x07\x4a\x00\x00Cbuffs_\x00'     # external data
                 b'\x02\x40\x34\x00closall_\x00'    # static code at 0x34
                 b'\x07\x48\x00\x00write_\x00')     # external code
        header = bytearray(20)
        header[16:18] = (20).to_bytes(2, 'little')
        header[18:20] = (4).to_bytes(2, 'little')
        return bytes(header) + table

    def test_the_symbol_table_is_read_from_the_header(self):
        from lib.aztec.objread import o_symbols
        self.assertEqual([name for *_, name in o_symbols(self._blob())],
                         ['putc_', 'Cbuffs_', 'closall_', 'write_'])

    def test_only_a_defined_non_global_code_symbol_is_a_static(self):
        from lib.aztec.objread import o_static_routines
        self.assertEqual(o_static_routines(self._blob()), {'closall': 0x34})


class ModuleWholeTest(unittest.TestCase):
    """A ``.c`` compiles to its module's whole code segment.

    The linker places an object as a unit, so the build compares and splices
    the whole segment: every public, the ``static`` after one (``putc``'s
    ``closall``) and any bytes before the first public (``csav.asm``'s
    ``dw $begin``).  Nothing is cut off.
    """

    def _module(self):
        from lib.aztec.compile import CompiledModule, Func
        from lib.aztec.objread import Fixup
        module = CompiledModule()
        segment_fixups = [
            Fixup(0x0, 'WABS', 'GBLSYM', None, '$begin'),   # leading dw
            Fixup(0xd, 'BREL', 'LCLSYM', None, '.0'),
            Fixup(0x34, 'WREL', 'GBLSYM', None, 'x_'),
        ]
        module.segment = Func('csav', 'csav.asm', 0, bytes(0x40),
                              segment_fixups, {'.0': 0x21})
        module.functions = {
            'csav': Func('csav', 'csav.asm', 2, bytes(0x1e), []),
            'cret': Func('cret', 'csav.asm', 0x20, bytes(0x20), []),
        }
        return module

    def test_whole_is_the_segment_with_every_member_offset(self):
        whole = self._module().whole()
        self.assertEqual(len(whole.code), 0x40)
        self.assertEqual(whole.members, {'csav': 2, 'cret': 0x20})
        self.assertEqual([fx.offset for fx in whole.fixups], [0, 0xd, 0x34])
        self.assertEqual(whole.locals, {'.0': 0x21})

    def test_a_module_cached_without_its_segment_is_recompiled(self):
        from lib.aztec.compile import ModuleShapeError
        module = self._module()
        module.segment = None
        with self.assertRaises(ModuleShapeError):
            module.whole()

    def test_the_segment_survives_the_object_cache(self):
        from lib.aztec.compile import CompiledModule
        module = CompiledModule.from_dict(self._module().to_dict())
        self.assertEqual(module.whole().members, {'csav': 2, 'cret': 0x20})
        self.assertEqual(len(module.whole().code), 0x40)


if __name__ == '__main__':
    unittest.main()
