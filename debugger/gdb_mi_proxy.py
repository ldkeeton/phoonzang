#!/usr/bin/env python3
"""Work around GDB/MI omitting the reason for a completed remote finish."""

import os
import re
import subprocess
import sys
import threading


DEFAULT_GDB = "/usr/bin/gdb"
_FRAME_RE = re.compile(rb"frame=\{([^}]*)\}")
_LEVEL_RE = re.compile(rb'level="(\d+)"')
_ADDR_RE = re.compile(rb'addr="([^"]+)"')
_FINISH_RE = re.compile(rb"^(\d+)-exec-finish(?:\s|$)")
_TOKEN_RE = re.compile(rb"^(\d+)")


class StopReasonFix:
    """Add the standard MI finish reason only at the saved caller PC."""

    def __init__(self):
        self.lock = threading.Lock()
        self.caller_address = None
        self.finish_caller_address = None
        self.finish_token = None

    def observe_command(self, line):
        match = _FINISH_RE.match(line)
        if not match:
            return
        with self.lock:
            self.finish_token = match.group(1)
            self.finish_caller_address = self.caller_address

    def observe_output(self, line):
        token = _TOKEN_RE.match(line)
        with self.lock:
            if b"^done,stack=" in line:
                frames = []
                for frame in _FRAME_RE.finditer(line):
                    fields = frame.group(1)
                    level = _LEVEL_RE.search(fields)
                    address = _ADDR_RE.search(fields)
                    if level and address:
                        frames.append((int(level.group(1)), address.group(1)))
                caller = next(
                    (address for level, address in frames if level == 1), None
                )
                if caller is not None:
                    self.caller_address = caller

            if (
                self.finish_token is not None
                and token
                and token.group(1) == self.finish_token
                and b"^error" in line
            ):
                self.finish_token = None
                self.finish_caller_address = None

            if not line.startswith(b"*stopped,"):
                return line

            expected = self.finish_caller_address
            self.finish_token = None
            self.finish_caller_address = None
            if expected is None or b"reason=" in line:
                return line

            stopped_frame = next(_FRAME_RE.finditer(line), None)
            stopped_address = (
                _ADDR_RE.search(stopped_frame.group(1)) if stopped_frame else None
            )
            if stopped_address is None or stopped_address.group(1) != expected:
                return line

            return line.replace(
                b"*stopped,", b'*stopped,reason="function-finished",', 1
            )


def main():
    gdb = os.environ.get("WIZ7_GDB", DEFAULT_GDB)
    process = subprocess.Popen(
        [gdb, *sys.argv[1:]],
        stdin=subprocess.PIPE,
        stdout=subprocess.PIPE,
        stderr=None,
        bufsize=0,
    )
    fix = StopReasonFix()

    def forward_input():
        try:
            for line in sys.stdin.buffer:
                fix.observe_command(line)
                process.stdin.write(line)
        except BrokenPipeError:
            pass
        finally:
            try:
                process.stdin.close()
            except BrokenPipeError:
                pass

    input_thread = threading.Thread(target=forward_input, daemon=True)
    input_thread.start()
    for line in iter(process.stdout.readline, b""):
        sys.stdout.buffer.write(fix.observe_output(line))
        sys.stdout.buffer.flush()
    return process.wait()


if __name__ == "__main__":
    sys.exit(main())
