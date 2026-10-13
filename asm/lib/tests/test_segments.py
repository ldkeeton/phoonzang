"""Tests for the segment model (``lib.segments``)."""

import os
import struct
import unittest

from lib.segments import (
    SegmentError,
    check_bss_boundary,
    external_data_name,
    find_crt_bss_zero_range,
    from_binary,
    psp_field,
)

ASM = os.path.dirname(os.path.dirname(
    os.path.dirname(os.path.abspath(__file__))))
PROJECT = os.path.dirname(ASM)


def _synthetic_mz(bss_start, bss_end, load_extra=0):
    """Build a minimal MZ whose entry contains the Aztec BSS zero-fill."""
    header_paragraphs = 0x20
    header_size = header_paragraphs * 16
    # entry code: mov di,<bss_start>; mov cx,<bss_end>; sub cx,di; inc cx;
    #             shr cx,1; jcxz +2; sub ax,ax; rep stosw; ret
    entry = (
        b'\xbf' + struct.pack('<H', bss_start)
        + b'\xb9' + struct.pack('<H', bss_end)
        + b'\x2b\xcf\x41\xd1\xe9\xe3\x02\x2b\xc0\xf3\xab\xc3'
    )
    # data_base chosen so that bss_boundary == len(image) - data_base.
    data_base = 0x100
    image = bytearray(b'\x90' * (data_base + bss_start + load_extra))
    image[0:len(entry)] = entry
    header = bytearray(header_size)
    header[0:2] = b'MZ'
    struct.pack_into('<H', header, 0x08, header_paragraphs)  # e_cparhdr
    struct.pack_into('<H', header, 0x06, 0)                  # reloc count
    struct.pack_into('<H', header, 0x14, 0)                  # e_ip
    struct.pack_into('<H', header, 0x16, 0)                  # e_cs
    struct.pack_into('<H', header, 0x0e, data_base // 16)    # e_ss
    struct.pack_into('<H', header, 0x10, 0x100)              # e_sp
    return bytes(header) + bytes(image)


class SyntheticMZTest(unittest.TestCase):
    def test_geometry_and_crt_check(self):
        data = _synthetic_mz(bss_start=0x100, bss_end=0x400)
        model = from_binary(data, 'mz')
        self.assertEqual(model.kind, 'mz')
        self.assertEqual(model.header_size, 0x200)
        self.assertEqual(model.data_origin, 0x200 + 0x100)
        self.assertEqual(model.bss_boundary, 0x100)
        self.assertEqual(model.entry_offset, 0x200)
        self.assertEqual(check_bss_boundary(model, data), (0x100, 0x400))

    def test_bss_mismatch_is_hard_error(self):
        data = _synthetic_mz(bss_start=0x100, bss_end=0x400)
        model = from_binary(data, 'mz')
        model.bss_boundary = 0x200
        with self.assertRaises(SegmentError):
            check_bss_boundary(model, data)

    def test_resolve_spaces(self):
        data = _synthetic_mz(bss_start=0x100, bss_end=0x400)
        model = from_binary(data, 'mz')
        self.assertEqual(model.resolve('CS', 0), ('file', 0x200))
        self.assertEqual(model.resolve('DS', 0x10), ('file', 0x310))
        self.assertEqual(model.resolve('SS', 0x10), ('file', 0x310))
        self.assertEqual(model.resolve('DS', 0x100), ('bss',))
        self.assertEqual(model.resolve('PSP', 0x2c), ('psp',))
        self.assertEqual(model.resolve('DS', 0x10000), ('bss',))
        self.assertEqual(model.resolve('XX', 0), ('unknown',))

    def test_crt_range_absent_is_none(self):
        data = _synthetic_mz(bss_start=0x100, bss_end=0x400)
        self.assertIsNone(find_crt_bss_zero_range(data, None))


class PspCatalogueTest(unittest.TestCase):
    def test_known_fields(self):
        self.assertEqual(psp_field(0x02), 'psp_top_of_memory')
        self.assertEqual(psp_field(0x2c), 'psp_env_segment')
        self.assertEqual(psp_field(0x5c), 'psp_fcb1')
        self.assertEqual(psp_field(0x6c), 'psp_fcb2')
        self.assertEqual(psp_field(0x80), 'psp_cmd_tail_len')
        self.assertIsNone(psp_field(0x1234))


class ExternalDataNameTest(unittest.TestCase):
    _FIELDS = {
        0x410: {'name': 'bios_data_0410', 'segment': 'es'},
        0x500: {'name': 'some_field'},
    }

    def test_names_when_segment_matches(self):
        self.assertEqual(
            external_data_name(0x410, self._FIELDS, 'es'), 'bios_data_0410')

    def test_segment_mismatch_is_not_named(self):
        self.assertIsNone(external_data_name(0x410, self._FIELDS, 'ds'))

    def test_segmentless_entry_matches_any_segment(self):
        self.assertEqual(
            external_data_name(0x500, self._FIELDS, 'ds'), 'some_field')
        self.assertEqual(
            external_data_name(0x500, self._FIELDS, 'es'), 'some_field')

    def test_unknown_offset_is_none(self):
        self.assertIsNone(external_data_name(0x999, self._FIELDS, 'es'))
        self.assertIsNone(external_data_name(0x410, None, 'es'))


class RealBinaryTest(unittest.TestCase):
    _EXPECTED = {
        'DS.EXE': {'data_origin': 0x10160, 'bss': 0xcf6, 'crt_end': 0x9098},
        'VINSTALL.EXE': {'data_origin': 0x3ae0, 'bss': 0x2534,
                         'crt_end': 0x2afe},
    }

    def _load(self, name):
        path = os.path.join(PROJECT, 'apps', 'DSAVANT', name)
        if not os.path.isfile(path):
            self.skipTest(f'{name} not available')
        with open(path, 'rb') as f:
            return f.read()

    def test_ds_and_vinstall_bss_boundaries(self):
        for name, expected in self._EXPECTED.items():
            with self.subTest(binary=name):
                data = self._load(name)
                model = from_binary(data, 'mz')
                self.assertEqual(model.data_origin, expected['data_origin'])
                self.assertEqual(model.bss_boundary, expected['bss'])
                crt = check_bss_boundary(model, data)
                self.assertEqual(crt, (expected['bss'], expected['crt_end']))

    def test_ds_known_data_pointers(self):
        data = self._load('DS.EXE')
        model = from_binary(data, 'mz')
        # DS:0xc70 -> file 0x10dd0 (default stack value); DS:0x410 ->
        # file 0x10570 ("39 00 c5 00 ...").
        self.assertEqual(model.resolve('DS', 0x0c70), ('file', 0x10dd0))
        self.assertEqual(model.resolve('DS', 0x0410), ('file', 0x10570))
        self.assertEqual(data[0x10dd0:0x10dd2], b'\x98\xb1')
        self.assertEqual(model.resolve('DS', 0x0c80), ('file', 0x10de0))

    def test_overlay_inherits_host_data(self):
        path = os.path.join(PROJECT, 'apps', 'DSAVANT', 'VBASE.OVR')
        if not os.path.isfile(path):
            self.skipTest('VBASE.OVR not available')
        host = from_binary(self._load('DS.EXE'), 'mz')
        with open(path, 'rb') as f:
            data = f.read()
        model = from_binary(data, 'aztec_overlay', 14, host=host)
        self.assertEqual(model.kind, 'overlay')
        self.assertEqual(model.resolve('CS', 0), ('file', 14))
        self.assertEqual(model.resolve('DS', 0x0c70), ('file', 0x10dd0))


class DataSpaceTest(unittest.TestCase):
    def test_mz_boundary(self):
        data = _synthetic_mz(bss_start=0x100, bss_end=0x400)
        model = from_binary(data, 'mz')
        self.assertEqual(model.data_space(0x10), 'dseg')
        self.assertEqual(model.data_space(0x100), 'bss')

    def test_driver_unknown(self):
        model = from_binary(b'\xe9\x00\x00', 'raw_drv')
        self.assertIsNone(model.data_space(0x10))

    def test_overlay_layered(self):
        from lib.segments import SegmentModel
        host = SegmentModel(
            kind='mz', file_size=0x10000, bss_boundary=0x1000,
        )
        overlay = {'o_dorg': 0x2000, 'o_dsize': 0x40, 'o_bss': 0x100}
        model = SegmentModel(
            kind='overlay', file_size=0x1000, host=host, overlay=overlay,
        )
        self.assertEqual(model.data_space(0x0100), 'dseg')  # host file
        self.assertEqual(model.data_space(0x1800), 'bss')   # host BSS
        self.assertEqual(model.data_space(0x2000), 'dseg')  # overlay data
        self.assertEqual(model.data_space(0x203f), 'dseg')  # overlay data end
        self.assertEqual(model.data_space(0x2040), 'bss')   # overlay BSS


class CodeOffsetTest(unittest.TestCase):
    def test_overlay_maps_o_corg_to_header_end(self):
        from lib.segments import SegmentModel
        overlay = {'o_corg': 0x5055, 'o_csize': 0x100, 'o_dorg': 0x9098}
        model = SegmentModel(
            kind='overlay', file_size=0x2000, overlay=overlay,
        )
        self.assertEqual(model.code_offset(0x5055), 14)
        self.assertEqual(model.code_offset(0x64c5), 14 + (0x64c5 - 0x5055))

    def test_mz_and_driver_have_no_overlay_mapping(self):
        mz = from_binary(_synthetic_mz(bss_start=0x100, bss_end=0x400), 'mz')
        self.assertIsNone(mz.code_offset(0x10))
        drv = from_binary(b'\xe9\x00\x00', 'raw_drv')
        self.assertIsNone(drv.code_offset(0x10))


class HostCodeOffsetTest(unittest.TestCase):
    def _model(self):
        from lib.segments import SegmentModel
        host = SegmentModel(kind='mz', file_size=0x11000, cs_origin=0x200)
        overlay = {'o_corg': 0x5055, 'o_csize': 0x524b, 'o_dorg': 0x9098}
        return SegmentModel(
            kind='overlay', file_size=0x5341, cs_origin=14,
            overlay=overlay, host=host,
        )

    def test_overlay_flow_target_maps_to_host_file(self):
        model = self._model()
        self.assertEqual(model.host_code_offset(0xf01f), 0x4266)
        self.assertEqual(model.host_code_offset(0xafb9), 0x0200)

    def test_mz_and_driver_have_no_host_mapping(self):
        mz = from_binary(_synthetic_mz(bss_start=0x100, bss_end=0x400), 'mz')
        self.assertIsNone(mz.host_code_offset(0x10))
        drv = from_binary(b'\xe9\x00\x00', 'raw_drv')
        self.assertIsNone(drv.host_code_offset(0x10))

    def test_overlay_without_host_has_no_mapping(self):
        from lib.segments import SegmentModel
        model = SegmentModel(kind='overlay', file_size=0x1000,
                             overlay={'o_corg': 0x5055})
        self.assertIsNone(model.host_code_offset(0xf01f))

    def test_host_code_target_is_the_inverse(self):
        model = self._model()
        self.assertEqual(model.host_code_target(0x4266), 0xf01f)
        self.assertEqual(model.host_code_target(0x0200), 0xafb9)
        for target in (0x0000, 0x1234, 0xafb9, 0xf01f, 0xffff):
            self.assertEqual(model.host_code_target(
                model.host_code_offset(target)), target)

    def test_mz_and_driver_have_no_host_target(self):
        mz = from_binary(_synthetic_mz(bss_start=0x100, bss_end=0x400), 'mz')
        self.assertIsNone(mz.host_code_target(0x10))
        drv = from_binary(b'\xe9\x00\x00', 'raw_drv')
        self.assertIsNone(drv.host_code_target(0x10))


if __name__ == '__main__':
    unittest.main()
