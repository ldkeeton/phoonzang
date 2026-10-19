"""Generated images are assembled at their runtime address (``vstart``)."""

import os
import struct
import tempfile
import unittest

from lib.compare.render import (
    _build_source, _label_equ_value, _signed_hex, _virtual_base,
)
from lib.verify.assemble import _equ_hex
from tests.syms import bss, data, dseg, loc, psp


def _overlay(o_corg=0x5055):
    return b'\xf2\x00' + struct.pack('<H', o_corg) + bytes(10) + b'\x90' * 4


class VirtualBaseTest(unittest.TestCase):
    def test_overlay_file_offset_zero_sits_header_bytes_below_o_corg(self):
        self.assertEqual(_virtual_base(_overlay(), 14), 0x5047)

    def test_mz_image_starts_after_its_header(self):
        data = b'MZ' + bytes(0x200 - 2) + b'\x90'
        self.assertEqual(_virtual_base(data, 0x200), -0x200)

    def test_driver_has_no_known_load_address(self):
        self.assertEqual(_virtual_base(b'\xe9\x00\x00', 0), 0)

    def test_signed_hex(self):
        self.assertEqual(_signed_hex(-0x200), '-0x0200')
        self.assertEqual(_signed_hex(0x5047), '0x5047')


class EquValueTest(unittest.TestCase):
    def test_code_labels_follow_the_origin_but_data_offsets_do_not(self):
        code = lambda addr: f'0x{addr:04x} + VBASE'
        self.assertEqual(_label_equ_value(loc(0xd04), 0xd04, code),
                         '0x0d04 + VBASE')
        for name in (dseg(0x2), bss(0xe1e), psp(0x2c, 'psp_env_segment'),
                     data(0x438)):
            self.assertEqual(_label_equ_value(name, 0x2, code), '0x0002')


class DriverOriginRenderTest(unittest.TestCase):
    """A driver keeps ``org 0`` and carries its origin as a negative base.

    The label space is file offsets, so the encoded CS displacement
    (``file + 0x100``) needs ``IMAGE_BASE`` to be ``-load_offset``.  This keeps
    every byte identical while the resolved ``cseg_`` names land on the bytes
    they actually name (plan.md D7.6).
    """

    def test_driver_image_base_is_the_negative_load_offset(self):
        records = [
            {'type': 'mnem',
             'text': 'mov ax, word [cs:cseg_0003 - IMAGE_BASE]',
             'offset': 0x103, 'size': 4},
        ]
        src, _ = _build_source(records, 0, bytes(0x200), label_map={},
                               show_offsets=False, load_offset=0x100)
        self.assertIn('IMAGE_BASE equ -0x0100', src)
        self.assertIn('org 0', src)
        self.assertNotIn('vstart', src)

    def test_mz_image_base_is_still_header_plus_vbase(self):
        records = [
            {'type': 'mnem', 'text': 'mov ax, [cs:foo - IMAGE_BASE]',
             'offset': 0x200, 'size': 4},
        ]
        src, _ = _build_source(
            records, 0x200, b'MZ' + bytes(0x200 - 2) + b'\x90',
            label_map={}, show_offsets=False)
        self.assertIn('IMAGE_BASE equ 0x0200 + VBASE', src)


class EquHexTest(unittest.TestCase):
    def test_negative_base_round_trips_through_nasm(self):
        self.assertEqual(_equ_hex(0x200), '0x0200')
        self.assertEqual(_equ_hex(-0x100), '-0x0100')


class ElfBuildTest(unittest.TestCase):
    """``make elf-rebuild`` assembles the generated master with ``ELF_BUILD``.

    ELF has no ``vstart``, so the section is laid out from 0: the origin is 0
    and the MZ header is left out, so the labels are in the load image's frame.
    """

    def test_mz_master_drops_its_header_and_origin_for_elf(self):
        src, _ = _build_source([], 0x200, b'MZ' + bytes(0x1fe) + b'\x90',
                               label_map={})
        self.assertIn('%ifndef VBASE\n%ifdef ELF_BUILD\nVBASE equ 0\n%else\n'
                      'VBASE equ -0x0200\n%endif\n%endif', src)
        guard = src.index('%ifndef ELF_BUILD')
        self.assertLess(guard, src.index('; DOS MZ executable header'))
        self.assertIn('    times 484 db 0\n%endif', src[guard:])

    def test_overlay_origin_follows_its_host_include(self):
        """The host include defines and clears the host's ``VBASE``; the
        overlay's own origin line comes after it and reads ``ELF_BUILD``."""
        records = [{'type': 'mnem', 'text': 'nop', 'offset': 14, 'size': 1}]
        src, _ = _build_source(records, 14, _overlay(), label_map={},
                               host_symbols=('ds.asm', -0x200))
        self.assertLess(src.index('%include'), src.index('%ifdef ELF_BUILD'))
        self.assertIn('%ifdef ELF_BUILD\nVBASE equ 0\n%else\n'
                      'VBASE equ __zres_end - 0x000e\n%endif', src)


if __name__ == '__main__':
    unittest.main()
