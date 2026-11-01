"""The ``records`` sidecar block and its link to ``data_names``."""

import unittest

from lib.sidecar.data_names import _validate_data_names
from lib.sidecar.errors import SidecarError
from lib.sidecar.records import _validate_records

NAMES = {'8a6e': {'name': 'path_edges'}, '8976': {'name': 'locations'}}


class RecordsTest(unittest.TestCase):
    def check(self, block):
        _validate_records(block, NAMES, 'records')

    def test_accepts_a_layout(self):
        self.check({'path_edge': {'at': '8a6e', 'size': 4, 'count': 32,
                                  'fields': {'0': 'end_a',
                                             '2': {'name': 'b', 'size': 2}}}})

    def test_needs_at(self):
        with self.assertRaisesRegex(SidecarError, r'\.at must be'):
            self.check({'path_edge': {'size': 4}})

    def test_at_must_be_a_data_name(self):
        with self.assertRaisesRegex(SidecarError, 'not in data_names'):
            self.check({'path_edge': {'at': '1234'}})

    def test_at_must_be_unique(self):
        with self.assertRaisesRegex(SidecarError, 'also'):
            self.check({'one': {'at': '8a6e'}, 'two': {'at': '8a6e'}})

    def test_count_needs_size(self):
        with self.assertRaisesRegex(SidecarError, 'with a size'):
            self.check({'path_edge': {'at': '8a6e', 'count': 2}})

    def test_data_names_refuses_a_nested_record(self):
        with self.assertRaisesRegex(SidecarError, '"records" block'):
            _validate_data_names(
                {'8a6e': {'name': 'path_edges', 'record': {'size': 4}}},
                'data_names')


if __name__ == '__main__':
    unittest.main()
