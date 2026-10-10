"""Tests for the mixed-version Aztec C mux.

The compile-backed checks are skipped when DOSBox or the vendored toolchain is
unavailable.  The cache checks always run if a prebuild manifest exists.
"""

import json
import os
import shutil
import unittest

ASM = os.path.dirname(os.path.abspath(__file__))
PROJECT = os.path.dirname(ASM)

from lib.aztec import sources  # noqa: E402
from lib.aztec.mux import MuxEngine, normalize, compare  # noqa: E402
from lib.aztec.cache import cache_path, to_override  # noqa: E402


def _have_toolchain():
    from lib.aztec import compile as azc
    return azc.available('v52a') and os.path.isdir(
        sources.version_root('v340a'))


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
        with open(os.path.join(PROJECT, 'asm_DSAVANT',
                               'ds_labels.json')) as f:
            return {v: int(k) for k, v in json.load(f).items()}

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
        with open(os.path.join(PROJECT, 'asm_DSAVANT',
                               'ds_labels.json')) as f:
            labels = {v: int(k) for k, v in json.load(f).items()}
        engine = MuxEngine()
        matches = engine.resolve('open', data, labels['aztec_open'])
        self.assertTrue(any(m.exact for m in matches))
        best = matches[0]
        self.assertEqual(best.version, 'v340a')
        self.assertEqual(best.filename, 'open.c')
        self.assertEqual(best.compiler, 'v52a')


if __name__ == '__main__':
    unittest.main()
