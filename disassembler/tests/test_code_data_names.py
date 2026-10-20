"""Sidecar names for CS-reached data, and the ``as`` listing's data spans."""

import unittest

from lib.aztec import listing
from lib.aztec.relink import SymbolIndex
from lib.compare.symbols import cseg_symbol
from lib.sidecar.data_names import _validate_data_names
from lib.sidecar.errors import SidecarError
from lib.symtab import Kind, Source, Space, Symbol


def _cseg(name, offset):
    return Symbol(name, kind=Kind.DATA, source=Source.SIDECAR, offset=offset,
                  space=Space.CSEG)


class CsegSymbolTest(unittest.TestCase):
    def test_sidecar_name_wins(self):
        class _Segments:
            cseg_names = {0x3532: _cseg('drv_file_handle', 0x3532)}
        self.assertEqual(str(cseg_symbol(_Segments(), 0x3532)),
                         'drv_file_handle')

    def test_generated_otherwise(self):
        self.assertEqual(str(cseg_symbol(None, 0x3532)), 'cseg_3532')

    def test_address_spelling_rejected(self):
        with self.assertRaises(SidecarError):
            _validate_data_names({'3532': {'name': 'cseg_3532'}}, 'x')


class SymbolIndexTest(unittest.TestCase):
    def test_cseg_names_are_code_addresses(self):
        """A CS-reached name is a file offset: as a value it is the CS
        offset (``name - IMAGE_BASE``), not a DS one."""
        name = _cseg('video_is_vga', 0x2f39)
        index = SymbolIndex(mem_equ={name: 0x2f39}, image_base=0x200)
        self.assertEqual(index.code, {name: 0x2f39})
        self.assertEqual(index.data, {})


_LISTING = '''\
0000                          1  codeseg segment para public 'code'
0000  c3                      2  \tret
0001                          3  vga_palette_:
0001  00 01 02 03 04 05       4  \tdb\t0,1,2,3,4,5,6,7
      06 07
0009  08                      5  \tdb\t8
000a  00 00                   6  retip\tdw\t0
000c  57                      7  \tpush\tdi
000d  cb                      8  \tdb\t0cbH
000e                          9  codeseg ends
'''


class DataSpansTest(unittest.TestCase):
    def test_spans(self):
        """Consecutive directives merge; a label (own line or the directive's
        own) starts a new span; a wrapped ``db`` runs to the next line."""
        self.assertEqual(listing.data_spans(_LISTING),
                         [(0x1, 0xa), (0xa, 0xc), (0xd, 0xe)])

    def test_no_listing(self):
        self.assertEqual(listing.data_spans(''), [])


if __name__ == '__main__':
    unittest.main()
