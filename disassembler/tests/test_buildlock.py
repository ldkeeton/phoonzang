import os
import subprocess
import sys
import tempfile
import time
import unittest


ASM = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))

_CHILD = '''
import sys
sys.path.insert(0, {asm!r})
from lib import buildlock
buildlock.LOCK_PATH = {path!r}
buildlock.RETRY_SECONDS = 0.01
buildlock.acquire()
print("held", flush=True)
sys.stdin.readline()
'''


class BuildLockTests(unittest.TestCase):
    def _spawn(self, path):
        return subprocess.Popen(
            [sys.executable, '-c', _CHILD.format(asm=ASM, path=path)],
            stdin=subprocess.PIPE, stdout=subprocess.PIPE, text=True)

    def test_second_holder_waits_until_first_exits(self):
        with tempfile.TemporaryDirectory() as tmp:
            path = os.path.join(tmp, 'build.lock')
            first = self._spawn(path)
            self.assertEqual(first.stdout.readline().strip(), 'held')
            second = self._spawn(path)
            time.sleep(0.02)
            self.assertIsNone(second.poll())  # still waiting, not exited
            first.kill()
            first.wait()
            self.assertEqual(second.stdout.readline().strip(), 'held')
            out, _ = second.communicate('\n', timeout=30)
            self.assertEqual(second.returncode, 0)
            self.assertEqual(out, '')  # waiting was silent


if __name__ == '__main__':
    unittest.main()
