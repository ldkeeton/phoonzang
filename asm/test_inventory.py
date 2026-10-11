"""Phase 5: address inventory schema."""

import json
import os
import tempfile
import unittest

from lib.inventory import (
    classify, merge_inventory, find_conflicts, CERTAIN, STRONG, CANDIDATE,
)
from lib.delta import write_address_inventory
from lib.verify.compare import _build_address_records


class ClassifyTest(unittest.TestCase):
    def test_namespaces_map_to_spaces_and_tiers(self):
        self.assertEqual(classify('cseg_4882'), ('cs', 'embedded_pointer', 'segdataflow', STRONG))
        self.assertEqual(classify('dseg_0c80'), ('ds', 'data', 'segdataflow', STRONG))
        self.assertEqual(classify('bss_0cf6'), ('bss', 'bss', 'segdataflow', STRONG))
        self.assertEqual(classify('psp_top_of_memory'), ('psp', 'psp', 'segdataflow', STRONG))
        self.assertEqual(classify('data_0e0e'), ('unknown', 'candidate', 'candidate', CANDIDATE))

    def test_code_and_constants(self):
        self.assertEqual(classify('string_loc_088e', 'T'), ('cs', 'code', 'relative_flow', CERTAIN))
        self.assertEqual(classify('entry_point', 'T'), ('cs', 'code', 'relative_flow', CERTAIN))
        self.assertEqual(classify('mystery', 'A'), ('unknown', 'constant', 'label', CANDIDATE))


class MergeInventoryTest(unittest.TestCase):
    def test_records_override_classification_and_add_xref(self):
        symbols = {
            'dseg_0c80': (0xc80, 'A'),
            'entry_point': (0x4b3a, 'T'),
        }
        records = [{
            'name': 'dseg_0c80',
            'value': 0xc80,
            'space': 'ds',
            'kind': 'data',
            'source': 'immediate',
            'confidence': 'strong',
            'referenced_by': [0x1234, 0x1200, 0x1234],
        }]
        entries = merge_inventory(symbols, records)
        by_name = {e['name']: e for e in entries}
        self.assertEqual(by_name['dseg_0c80']['source'], 'immediate')
        self.assertEqual(by_name['dseg_0c80']['referenced_by'], [0x1200, 0x1234])
        self.assertEqual(by_name['entry_point']['confidence'], CERTAIN)
        self.assertEqual(
            [e['name'] for e in entries], ['dseg_0c80', 'entry_point'])

    def test_record_without_nm_symbol_is_emitted(self):
        records = [{
            'name': 'cseg_4882', 'value': 0x4882, 'space': 'cs',
            'kind': 'embedded_pointer', 'source': 'segdataflow',
            'confidence': 'strong', 'referenced_by': [0x4b12],
        }]
        entries = merge_inventory({}, records)
        self.assertEqual(len(entries), 1)
        self.assertEqual(entries[0]['space'], 'cs')
        self.assertEqual(entries[0]['address_hex'], '0x4882')


class Phase6ConfidenceTest(unittest.TestCase):
    def test_conflicts_only_between_resolved_spaces(self):
        symbols = {'entry_point': (0x4b3a, 'T'), 'dseg_0c80': (0xc80, 'A')}
        records = [
            {'name': 'entry_point', 'space': 'cs'},
            {'name': 'dseg_0c80', 'space': 'ds'},
            {'name': 'data_0e0e', 'space': 'unknown'},
        ]
        self.assertEqual(find_conflicts(symbols, records), [])
        records.append({'name': 'entry_point', 'space': 'ds'})
        self.assertEqual(find_conflicts(symbols, records), ['entry_point'])

    def test_candidates_reported_not_asserted(self):
        records = _build_address_records(
            [], {}, {}, None, {}, 0x200,
            data_labels={0xe0e: 'data_0e0e'},
            reloc_targets=set(),
            immediate_labels={0x2: 'psp_top_of_memory'},
        )
        by_name = {r['name']: r for r in records}
        self.assertEqual(by_name['data_0e0e']['confidence'], CANDIDATE)
        self.assertEqual(by_name['data_0e0e']['space'], 'unknown')
        self.assertEqual(by_name['psp_top_of_memory']['confidence'], CERTAIN)
        self.assertEqual(by_name['psp_top_of_memory']['source'], 'sidecar')

    def test_relocation_target_is_certain(self):
        records = _build_address_records(
            [], {}, {}, None, {}, 0x200,
            data_labels={0x1234: 'data_1234'},
            reloc_targets={0x1234},
        )
        self.assertEqual(records[0]['confidence'], CERTAIN)
        self.assertEqual(records[0]['source'], 'relocation')


class WriteInventoryTest(unittest.TestCase):
    def test_schema_v2_shape(self):
        with tempfile.TemporaryDirectory() as temp_dir:
            path = os.path.join(temp_dir, 'ds_addresses.json')
            write_address_inventory(
                path, 'ds',
                {'psp_top_of_memory': (2, 'A'), 'entry_point': (0x4b3a, 'T')},
                [{
                    'name': 'psp_top_of_memory', 'value': 2, 'space': 'psp',
                    'kind': 'psp', 'source': 'segdataflow',
                    'confidence': 'strong', 'referenced_by': [0x4d48],
                }],
            )
            with open(path, encoding='utf-8') as source_file:
                report = json.load(source_file)
        self.assertEqual(report['schema_version'], 2)
        self.assertEqual(report['spaces'], ['cs', 'ds', 'bss', 'psp', 'unknown'])
        entry = next(e for e in report['symbols'] if e['name'] == 'psp_top_of_memory')
        self.assertEqual(entry['space'], 'psp')
        self.assertEqual(entry['referenced_by'], [0x4d48])


if __name__ == '__main__':
    unittest.main()
