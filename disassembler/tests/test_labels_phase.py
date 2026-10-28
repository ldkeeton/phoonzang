import unittest


from main.build import _worker_kwargs


class WorkerFlagTests(unittest.TestCase):
    def test_labels_only_flag_turns_emit_off(self):
        self.assertEqual(
            _worker_kwargs(['--export-labels', '--labels-only']),
            {'export_labels': True, 'emit': False})

    def test_emit_is_left_alone_without_the_flag(self):
        self.assertNotIn('emit', _worker_kwargs(['--export-labels']))


if __name__ == '__main__':
    unittest.main()
