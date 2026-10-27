"""Concrete discovery findings are build inputs; patterns are discovery-only."""

import json
import os
import tempfile
import unittest
from unittest import mock

from lib.model import PhaseContext
from lib.phases.sidecar import SidecarPhase
from lib.sidecar.loader import load
from main.seeding import _load_aztec_signatures


class ConcreteFunctionNamesTest(unittest.TestCase):
    def test_project_has_concrete_findings_instead_of_patterns(self):
        sidecar = load('DSAVANT')
        self.assertNotIn('aztec', sidecar)
        self.assertTrue(all('aztec' not in b for b in sidecar['binaries'].values()))
        names = sidecar['binaries']['ds']['function_names']
        self.assertTrue(any(info.get('name') == 'aztec_impl_tty_rd'
                            and info.get('library') == '__tty_rd'
                            for info in names.values()))

    def test_normal_analysis_does_not_read_signature_cache(self):
        with mock.patch('main.options.AZTEC_PREBUILD', False), \
                mock.patch('main.options.AZTEC_MUX_REFRESH', False), \
                mock.patch('main.seeding.aztec_funcs_path',
                           side_effect=AssertionError('cache read')):
            self.assertEqual(_load_aztec_signatures('DSAVANT'),
                             {'signatures': []})

    def test_explicit_discovery_still_reads_patterns(self):
        db = {'signatures': [{'name': 'aztec_example', 'patterns': ['c3']}]}
        with tempfile.TemporaryDirectory() as directory:
            path = os.path.join(directory, 'aztec_funcs.json')
            with open(path, 'w') as f:
                json.dump(db, f)
            with mock.patch('main.options.AZTEC_PREBUILD', True), \
                    mock.patch('main.seeding.aztec_funcs_path', return_value=path):
                self.assertEqual(_load_aztec_signatures('DSAVANT'), db)

    def test_concrete_function_seeds_use_naming_coordinates(self):
        for start, base, key in ((16, 0, '04'), (16, -16, '14')):
            with self.subTest(start=start, base=base):
                ctx = PhaseContext(bytes(64), start_offset=start,
                                   sidecar_entry={
                                       'ghidra_base_offset': base,
                                       'function_names': {key: {'name': 'callee', 'role': 'aztec'}}})
                SidecarPhase().run(None, ctx)
                self.assertIn(20, ctx.code_targets)
                self.assertEqual(ctx.code_targets[20].reason, 'function_names')

    def test_concrete_functions_do_not_override_hard_data(self):
        ctx = PhaseContext(bytes(64), sidecar_entry={
            'function_names': {'10': {'name': 'bad', 'role': 'aztec'}},
            'force_data': [{'start': '10', 'end': '12'}]})
        SidecarPhase().run(None, ctx)
        self.assertNotIn(16, ctx.code_targets)

    def test_concrete_names_preserve_vendor_symbol_identity(self):
        from main.runner import _sidecar_routine
        sym = _sidecar_routine('aztec_impl_tty_rd', 20,
                               {'role': 'aztec', 'library': '__tty_rd'})
        self.assertEqual(sym.library, '__tty_rd')
        self.assertEqual(sym.role, 'aztec')
