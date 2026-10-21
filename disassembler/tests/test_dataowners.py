"""The compiled source owns the named data object it supplies."""

import unittest

from lib.aztec.dataowners import DataOwnerError, validate
from lib.segments import SegmentModel
from lib.symtab import Kind, Source, Space, Symbol


def image_at(ds, data, size=0x400):
    image = bytearray(size)
    image[0x100 + ds:0x100 + ds + len(data)] = data
    return bytes(image)


def segments(*names):
    model = SegmentModel('mz', file_size=0x400, data_origin=0x100,
                         bss_boundary=0x40)
    model.data_names = {
        offset: Symbol(name, kind=Kind.DATA, source=Source.LIBRARY,
                       offset=offset, space=Space.DS, library=library)
        for offset, name, library in names
    }
    return model


class OwnerTest(unittest.TestCase):
    def test_a_c_source_owns_its_data_at_the_named_address(self):
        data = b'\x72\x00\x00\x00'
        sources = [{'path': 'aztec_fopen.c', 'data': data,
                    'symbols': {'modes_'}}]
        self.assertEqual(
            validate(segments((8, 'modes', 'modes_')), image_at(8, data),
                     sources),
            {8: 'aztec_fopen.c'})

    def test_a_mismatch_fails(self):
        sources = [{'path': 'aztec_fopen.c', 'data': b'\x99\x00\x00\x00',
                    'symbols': {'modes_'}}]
        with self.assertRaisesRegex(DataOwnerError, 'does not match modes'):
            validate(segments((8, 'modes', 'modes_')),
                     image_at(8, b'\x72\x00\x00\x00'), sources)

    def test_two_sources_for_one_object_fail(self):
        data = b'\x72\x00\x00\x00'
        sources = [
            {'path': 'one.c', 'data': data, 'symbols': {'modes_'}},
            {'path': 'two.c', 'data': data, 'symbols': {'modes_'}},
        ]
        with self.assertRaisesRegex(DataOwnerError, 'both one.c and two.c'):
            validate(segments((8, 'modes', 'modes_')), image_at(8, data),
                     sources)

    def test_an_external_name_does_not_make_an_owner(self):
        data = b'\x72\x00\x00\x00'
        sources = [{'path': 'other.c', 'data': data,
                    'symbols': {'modes_'}, 'externals': {'modes_'}}]
        self.assertEqual(
            validate(segments((8, 'modes', 'modes_')), image_at(8, data),
                     sources),
            {})

    def test_a_source_without_a_name_still_has_to_match(self):
        sources = [{'path': 'anonymous.c', 'data': b'\xaa\xbb\xcc',
                    'symbols': set()}]
        with self.assertRaisesRegex(DataOwnerError, 'initialized data does'):
            validate(segments(), image_at(0, b'\x00\x00\x00'), sources)

    def test_relocation_bytes_are_not_compared(self):
        data = b'\x00\x00Too many args.\x00'
        sources = [{'path': 'aztec_croot.c', 'data': data,
                    'relocations': ((0, 2),), 'symbols': {'cls__'}}]
        self.assertEqual(
            validate(segments((0x10, 'cls_', 'cls__')),
                     image_at(0x10, b'\x34\x12Too many args.\x00'), sources),
            {0x10: 'aztec_croot.c'})
