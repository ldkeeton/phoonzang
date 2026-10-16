"""Generated images are assembled at their runtime address (``vstart``)."""

import os
import struct
import tempfile
import unittest

from lib.compare.render import (
    _build_source, _label_equ_value, _signed_hex, _virtual_base,
)
from lib.verify.assemble import _equ_hex
from lib.tests.syms import bss, data, dseg, loc, psp
from make.elf import _elf_source_text, _force_origin_zero


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


class ElfSourceTest(unittest.TestCase):
    def test_vstart_line_is_blanked_for_elf(self):
        text = '\n'.join([
            'bits 16',
            '%ifndef VBASE',
            'VBASE equ -0x0200',
            '%endif',
            'section .text vstart=VBASE',
            '    ; DOS MZ executable header (512 bytes)',
            '    db "MZ"',
            'foo equ 0x1',
            'bar:',
        ]) + '\n'
        with tempfile.TemporaryDirectory() as d:
            path = os.path.join(d, 'x.asm')
            with open(path, 'w') as f:
                f.write(text)
            out = _elf_source_text(path).splitlines()
        self.assertNotIn('section .text vstart=VBASE', out)
        self.assertEqual(len(out), len(text.splitlines()))
        joined = '\n'.join(out)
        self.assertIn('global foo', joined)
        self.assertNotIn('VBASE,', joined)
        self.assertNotIn('global VBASE', joined)
        # The origin is zeroed in place: ELF has no ``vstart``, so the section is
        # laid out from 0 and the ``+ VBASE`` equ values must agree with it.
        self.assertIn('VBASE equ 0', out)
        self.assertNotIn('VBASE equ -0x0200', out)

    def test_origin_rewrite_leaves_the_host_includes_definition_alone(self):
        """An overlay's derived origin is zeroed; the host include's is not.

        The include defines ``VBASE`` for the *host's* frame while the host
        source is assembled and clears it again, so a command-line ``-DVBASE=0``
        could never reach the overlay's own definition afterwards -- which is
        why the rewrite happens in the prepared source instead.
        """
        lines = [
            '%ifndef VBASE',
            'VBASE equ __zres_end - 0x000e',
            '%endif',
            'section .text vstart=VBASE',
            '%define VBASE (-0x0200)',
        ]
        self.assertEqual(
            _force_origin_zero(lines),
            ['%ifndef VBASE', 'VBASE equ 0', '%endif',
             'section .text vstart=VBASE', '%define VBASE (-0x0200)'],
        )


if __name__ == '__main__':
    unittest.main()
