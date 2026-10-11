import unittest
import json
import os
import tempfile

from lib.delta import _mapped_address, parse_nm_symbols, write_address_inventory


class DeltaAddressMappingTests(unittest.TestCase):
    def test_maps_image_offsets_after_an_inserted_byte(self):
        opcodes = [
            ('equal', 0, 4, 0, 4),
            ('insert', 4, 4, 4, 5),
            ('equal', 4, 10, 5, 11),
        ]

        self.assertEqual(_mapped_address(3, opcodes), 3)
        self.assertEqual(_mapped_address(4, opcodes), 5)
        self.assertEqual(_mapped_address(9, opcodes), 10)

    def test_leaves_replaced_offsets_unmapped_when_lengths_differ(self):
        opcodes = [
            ('equal', 0, 2, 0, 2),
            ('replace', 2, 4, 2, 5),
            ('equal', 4, 7, 5, 8),
        ]

        self.assertIsNone(_mapped_address(3, opcodes))
        self.assertEqual(_mapped_address(5, opcodes), 6)


class NmSymbolParsingTests(unittest.TestCase):
    def test_parses_exported_symbol_offsets_and_types(self):
        symbols = parse_nm_symbols(
            '00000053 T ds_dispatch_case_00\n'
            '00000c70 A data_0c70\n'
            '00004b3a T entry_point\n'
        )

        self.assertEqual(symbols['ds_dispatch_case_00'], (0x53, 'T'))
        self.assertEqual(symbols['data_0c70'], (0xc70, 'A'))
        self.assertEqual(symbols['entry_point'], (0x4b3a, 'T'))


class AddressInventoryTests(unittest.TestCase):
    def test_writes_sorted_load_image_symbols(self):
        with tempfile.TemporaryDirectory() as temp_dir:
            path = os.path.join(temp_dir, 'ds_addresses.json')
            write_address_inventory(
                path,
                'ds',
                {
                    'entry_point': (0x4b3a, 'T'),
                    'data_0002': (2, 'A'),
                },
            )

            with open(path, encoding='utf-8') as source_file:
                report = json.load(source_file)

        self.assertEqual(report['binary'], 'ds')
        self.assertEqual(report['address_kind'], 'load_image_offset')
        self.assertEqual(
            [item['name'] for item in report['symbols']],
            ['data_0002', 'entry_point'],
        )
        self.assertEqual(report['symbols'][0]['address_hex'], '0x0002')


if __name__ == '__main__':
    unittest.main()
