"""A failed worker step still returns its generated files to the build."""
from contextlib import redirect_stdout
import io
import unittest

from make.build import _generate


class FailureOutputTest(unittest.TestCase):
    def test_batch_retains_output_from_failed_worker(self):
        class Workers:
            def run(self, name, flags):
                return 2, {'example.asm': '; generated'}

        output = io.StringIO()
        with redirect_stdout(output):
            failed, emitted = _generate(Workers())([('example', None)])
        self.assertIn('FAILED: example', output.getvalue())
        self.assertEqual(failed, ['example'])
        self.assertEqual(emitted['example'],
                         {'example.asm': '; generated'})
