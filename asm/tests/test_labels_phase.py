import contextlib
import io
import pathlib
import tempfile
import unittest
from unittest.mock import patch

from lib.sidecar.binary import per_binary as sidecar_per_binary
from lib.sidecar.loader import load as load_sidecar
from main.build import _worker_kwargs
from main.options import APPS_DIR
from main.runner import process


def _generate(output_dir, **kwargs):
    project_dir = pathlib.Path(APPS_DIR) / 'DSAVANT'
    entry = sidecar_per_binary(load_sidecar('DSAVANT'), 'ds')
    out = io.StringIO()
    with (patch('main.runner.write_report', return_value=''),
          patch('main.runner.write_layers', return_value=''),
          contextlib.redirect_stdout(out)):
        _bitmap, label_map = process(
            'ds', str(project_dir), 'DS.EXE', 0x200, output_dir=output_dir,
            export_labels=True, sidecar_entry=entry, **kwargs)
    return label_map, out.getvalue()


class WorkerFlagTests(unittest.TestCase):
    def test_labels_only_flag_turns_emit_off(self):
        self.assertEqual(
            _worker_kwargs(['--export-labels', '--labels-only']),
            {'export_labels': True, 'emit': False})

    def test_emit_is_left_alone_without_the_flag(self):
        self.assertNotIn('emit', _worker_kwargs(['--export-labels']))


class LabelsPhaseTests(unittest.TestCase):
    """The host's labels pass must not write what its emitting pass writes."""

    @classmethod
    def setUpClass(cls):
        cls._labels = tempfile.TemporaryDirectory(prefix='ds-labels-phase-')
        cls._full = tempfile.TemporaryDirectory(prefix='ds-full-')
        cls.labels, cls.labels_out = _generate(cls._labels.name, emit=False)
        cls.full, cls.full_out = _generate(cls._full.name)

    @classmethod
    def tearDownClass(cls):
        cls._labels.cleanup()
        cls._full.cleanup()

    def test_labels_phase_writes_no_source(self):
        self.assertEqual(list(pathlib.Path(self._labels.name).rglob('*.asm')), [])

    def test_labels_phase_is_silent(self):
        self.assertNotIn('ds: OK', self.labels_out)

    def test_emitting_pass_writes_the_host(self):
        self.assertTrue((pathlib.Path(self._full.name) / 'ds.asm').exists())
        self.assertIn('ds:', self.full_out)

    def test_both_phases_agree_on_the_labels(self):
        self.assertEqual(self.labels, self.full)


if __name__ == '__main__':
    unittest.main()
