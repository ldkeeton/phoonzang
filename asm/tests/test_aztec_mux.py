"""Tests for the mixed-version Aztec C mux.

The compile-backed checks are skipped when DOSBox or the vendored toolchain is
unavailable.  The cache checks always run if a prebuild manifest exists.
"""

import json
import os
import shutil
import unittest

ASM = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
PROJECT = os.path.dirname(ASM)

from lib.aztec import sources  # noqa: E402
from lib.aztec.mux import MuxEngine, normalize, compare  # noqa: E402
from lib.aztec.cache import cache_path, to_override  # noqa: E402
from lib.cross_ref import read_label_json  # noqa: E402


def _have_toolchain():
    from lib.aztec import compile as azc
    return azc.available('v52a') and os.path.isdir(
        sources.version_root('v340a'))


def _ds_labels_path():
    """The host's generated label map (derived source, lives in ``.cache``)."""
    return os.path.join(PROJECT, '.cache', 'DSAVANT', 'labels',
                        'ds_labels.json')


class SourceCatalogTest(unittest.TestCase):
    def test_v340a_open_is_plaintext(self):
        text = sources.catalog('v340a').get('open.c')
        self.assertIsNotNone(text)
        self.assertIn('_ioflg[fd] = isatty(fd)', text)
        self.assertNotIn('netware', text)

    def test_definition_index(self):
        self.assertIn('open.c', sources.definition_files('v340a', 'open'))
        self.assertIn('lseek.c', sources.definition_files('v340a', 'lseek'))


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
    def test_open_recovers_from_v340a_source_v52a_compiler(self):
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
        self.assertEqual(best.version, 'v340a')
        self.assertEqual(best.filename, 'open.c')
        self.assertEqual(best.compiler, 'v52a')


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


class FuncTruncateTest(unittest.TestCase):
    """A routine owns its fragment span, not its object's public extent.

    A trailing ``static`` neighbour is compiled inside the preceding public
    function (``putc`` swallows ``closall``), so the object's extent and the
    module-wide local-label table hand it the neighbour's ``.N`` labels.
    ``Func.truncate`` drops what lies past the routine's real end.
    """

    def _func(self):
        from lib.aztec.compile import Func
        from lib.aztec.objread import Fixup
        code = bytes(74)
        fixups = [
            Fixup(0xd, 'BREL', 'LCLSYM', None, '.0'),   # width 1
            Fixup(0x33, 'BREL', 'LCLSYM', None, '.1'),  # width 1
            Fixup(0x34, 'WREL', 'GBLSYM', None, 'x_'),  # straddles 52
            Fixup(0x47, 'BREL', 'LCLSYM', None, '.2'),  # in the neighbour
        ]
        locals_ = {'.0': 0x21, '.1': 0x1c, '.2': 0x38}
        return Func('putc', 'putc.c', 0, code, fixups, locals_)

    def test_drops_the_neighbours_code_labels_and_fixups(self):
        capped = self._func().truncate(52)
        self.assertEqual(len(capped.code), 52)
        self.assertEqual(capped.locals, {'.0': 0x21, '.1': 0x1c})
        self.assertEqual([fx.offset for fx in capped.fixups], [0xd, 0x33])

    def test_a_fixup_straddling_the_boundary_is_dropped(self):
        # 0x34 + 2 > 52, so the word relocation is not kept.
        self.assertNotIn(0x34, [fx.offset for fx in self._func().truncate(52).fixups])

    def test_a_length_at_or_past_the_code_is_a_noop(self):
        func = self._func()
        self.assertIs(func.truncate(len(func.code)), func)
        self.assertIs(func.truncate(len(func.code) + 10), func)


if __name__ == '__main__':
    unittest.main()
