"""Failed source checks still return generated files to the build."""
from contextlib import redirect_stdout
import io
import json
import unittest
from unittest.mock import patch

from main.aztec import SourceBuildError
from main.worker import _answer
from make.build import _generate


class FailureOutputTest(unittest.TestCase):
    def test_worker_keeps_files_with_failure_status(self):
        class Run:
            name = 'example'

            def step(self, flags):
                raise SourceBuildError(['source does not fit'],
                                       {'example.asm': '; generated'})

        reply = io.StringIO()
        with patch('sys.stdin', io.StringIO('{"flags": []}\n')):
            _answer(Run(), reply)
        result = json.loads(reply.getvalue())
        self.assertNotEqual(result['status'], 0)
        self.assertEqual(result['files'], {'example.asm': '; generated'})
        self.assertIn('source does not fit', result['err'])

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
