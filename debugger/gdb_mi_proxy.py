#!/usr/bin/env python3
"""Proxy GDB/MI, normalize finish stops, and own the launched DOSBox lifecycle."""

import os
import re
import signal
import subprocess
import sys
import threading
import time
from pathlib import Path


DOSBOX_PID_FILE = Path(__file__).resolve().parent / "build" / "dosbox-x.pid"


_FRAME_RE = re.compile(rb"frame=\{([^}]*)\}")
_LEVEL_RE = re.compile(rb'level="(\d+)"')
_ADDR_RE = re.compile(rb'addr="([^"]+)"')
_FINISH_RE = re.compile(rb"^(\d+)-exec-finish(?:\s|$)")
_EXIT_RE = re.compile(rb"^\d*-(?:gdb-exit|target-detach)(?:\s|$)")
_TOKEN_RE = re.compile(rb"^(\d+)")
_EXITED_RE = re.compile(rb'^\*stopped,reason="exited')


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


def process_is_dosbox(pid):
    try:
        return b"dosbox-x" in Path(f"/proc/{pid}/cmdline").read_bytes()
    except OSError:
        return False


def dosbox_pid():
    try:
        pid = int(DOSBOX_PID_FILE.read_text().strip())
    except (OSError, ValueError):
        return None
    return pid if process_is_dosbox(pid) else None


def dosbox_is_running(pid):
    try:
        return (
            int(DOSBOX_PID_FILE.read_text().strip()) == pid
            and process_is_dosbox(pid)
        )
    except (OSError, ValueError):
        return False


def stop_dosbox(pid):
    if pid is None or not process_is_dosbox(pid):
        return
    try:
        os.kill(pid, signal.SIGTERM)
    except ProcessLookupError:
        return

    for _ in range(20):
        if not process_is_dosbox(pid):
            return
        time.sleep(0.1)

    if process_is_dosbox(pid):
        try:
            os.kill(pid, signal.SIGKILL)
        except ProcessLookupError:
            pass


def main():
    owned_dosbox_pid = dosbox_pid()
    process = subprocess.Popen(
        ["gdb", *sys.argv[1:]],
        stdin=subprocess.PIPE,
        stdout=subprocess.PIPE,
        stderr=None,
        bufsize=0,
    )
    fix = StopReasonFix()
    input_lock = threading.Lock()
    dosbox_stop_lock = threading.RLock()
    # Set once the target exits by itself: DOSBox is then left open so its
    # screen (the program's last message, GDBEXEC's exit code) can be read.
    target_exited = threading.Event()

    def stop_owned_dosbox():
        if target_exited.is_set():
            return
        with dosbox_stop_lock:
            stop_dosbox(owned_dosbox_pid)

    def write_to_gdb(line):
        try:
            with input_lock:
                process.stdin.write(line)
                process.stdin.flush()
        except (BrokenPipeError, OSError, ValueError):
            pass

    def forward_input():
        try:
            for line in sys.stdin.buffer:
                fix.observe_command(line)
                write_to_gdb(line)
                if _EXIT_RE.match(line):
                    stop_owned_dosbox()
        except (BrokenPipeError, OSError, ValueError):
            pass
        finally:
            try:
                process.stdin.close()
            except (BrokenPipeError, OSError, ValueError):
                pass
            stop_owned_dosbox()

    def monitor_dosbox():
        if owned_dosbox_pid is None:
            return
        while process.poll() is None:
            if not dosbox_is_running(owned_dosbox_pid):
                write_to_gdb(b"-gdb-exit\n")
                return
            time.sleep(0.1)

    input_thread = threading.Thread(target=forward_input, daemon=True)
    input_thread.start()
    threading.Thread(target=monitor_dosbox, daemon=True).start()

    def handle_termination(signum, _frame):
        stop_owned_dosbox()
        if process.poll() is None:
            process.terminate()
            try:
                process.wait(timeout=1)
            except subprocess.TimeoutExpired:
                process.kill()
        raise SystemExit(128 + signum)

    signal.signal(signal.SIGTERM, handle_termination)
    signal.signal(signal.SIGINT, handle_termination)
    try:
        for line in iter(process.stdout.readline, b""):
            if _EXITED_RE.match(line):
                target_exited.set()
            sys.stdout.buffer.write(fix.observe_output(line))
            sys.stdout.buffer.flush()
        return process.wait()
    finally:
        stop_owned_dosbox()


if __name__ == "__main__":
    sys.exit(main())
