#!/usr/bin/env python3
"""End-to-end breakpoint checks for the DOSBox-X GDB stub.

Run with:
    python3 debugger/test_breakpoints.py

The test builds the DOS images, starts DOSBox-X sessions, and checks GDB entry
breakpoints for both COM and MZ EXE targets. It also checks source stepping,
runtime breakpoints, and Ctrl-C over RSP.
"""
import os
import pathlib
import select
import signal
import socket
import subprocess
import time


ROOT = pathlib.Path(__file__).resolve().parent.parent
DEBUGGER = ROOT / "debugger"
BUILD = DEBUGGER / "build"
LAUNCHER = DEBUGGER / "start-dosbox-x.sh"
TEST_COM = BUILD / "testcom.com"
TEST_EXE = BUILD / "testexe.exe"
ENTRY = 0x100
NEWLINE = 0x129  # test/testcom.asm:44, mov dl, 0x0D
PRINT_CHAR = 0x10D
PORT = 1234


def packet(payload):
    data = payload.encode("ascii")
    return b"$" + data + b"#" + f"{sum(data) & 0xff:02x}".encode("ascii")


def recv_packet(sock):
    while True:
        char = sock.recv(1)
        if not char:
            raise ConnectionError("GDBSRV closed the serial connection")
        if char == b"$":
            break

    payload = bytearray()
    while True:
        char = sock.recv(1)
        if not char:
            raise ConnectionError("GDBSRV closed during an RSP packet")
        if char == b"#":
            break
        payload.extend(char)

    checksum = sock.recv(2)
    expected = f"{sum(payload) & 0xff:02x}".encode("ascii")
    if checksum.lower() != expected:
        sock.sendall(b"-")
        return recv_packet(sock)
    sock.sendall(b"+")
    return payload.decode("ascii")


def send_packet(sock, payload):
    sock.sendall(packet(payload))


def request(sock, payload):
    send_packet(sock, payload)
    reply = recv_packet(sock)
    if reply.startswith("E"):
        raise AssertionError(f"{payload!r} returned {reply!r}")
    return reply


def expect(sock, payload, expected):
    reply = request(sock, payload)
    if reply != expected:
        raise AssertionError(f"{payload!r}: expected {expected!r}, got {reply!r}")
    return reply


def registers(sock):
    data = bytes.fromhex(request(sock, "g"))
    if len(data) != 312:
        raise AssertionError(f"unexpected register packet size: {len(data)} bytes")
    return data


def code_offset(regs):
    return int.from_bytes(regs[32:36], "little") & 0xffff


def read_memory(sock, address, size=1):
    reply = request(sock, f"m{address:x},{size:x}")
    if len(reply) != size * 2:
        raise AssertionError(f"memory read at {address:#x} returned {reply!r}")
    return bytes.fromhex(reply)


def wait_for_ready(proc, timeout):
    output = bytearray()
    deadline = time.monotonic() + timeout
    while b"__READY__" not in output and time.monotonic() < deadline:
        ready, _, _ = select.select([proc.stdout], [], [], 0.25)
        if ready:
            chunk = os.read(proc.stdout.fileno(), 4096)
            if not chunk:
                break
            output.extend(chunk)
    if b"__READY__" not in output:
        raise RuntimeError(
            "DOSBox-X did not reach the target entry stop:\n"
            + output.decode(errors="replace")
        )


def launch_server(timeout, target="testcom"):
    proc = subprocess.Popen(
        ["bash", str(LAUNCHER), target],
        cwd=ROOT,
        stdout=subprocess.PIPE,
        stderr=subprocess.STDOUT,
        bufsize=0,
        start_new_session=True,
    )
    try:
        wait_for_ready(proc, max(timeout, 30.0))
    except BaseException:
        stop_server(proc)
        raise
    return proc


def stop_server(proc):
    try:
        os.killpg(proc.pid, signal.SIGTERM)
    except ProcessLookupError:
        pass
    try:
        proc.wait(timeout=4)
    except subprocess.TimeoutExpired:
        os.killpg(proc.pid, signal.SIGKILL)
        proc.wait(timeout=4)


def run_gdb_mi_test(timeout, target="testcom"):
    if target == "testcom":
        elf = BUILD / "testcom.elf"
        entry = 0x100
        entry_line = 21
    else:
        elf = BUILD / "testexe.elf"
        entry = 0
        entry_line = 40

    gdb = subprocess.Popen(
        ["gdb", "--quiet", "--interpreter=mi2"],
        stdin=subprocess.PIPE,
        stdout=subprocess.PIPE,
        stderr=subprocess.STDOUT,
        bufsize=0,
    )
    output = bytearray()

    def send(command):
        gdb.stdin.write(command.encode("ascii"))

    def wait_for(token, wait=timeout):
        token = token.encode("ascii")
        deadline = time.monotonic() + wait
        while token not in output and time.monotonic() < deadline:
            ready, _, _ = select.select([gdb.stdout], [], [], 0.1)
            if ready:
                chunk = os.read(gdb.stdout.fileno(), 16384)
                if not chunk:
                    break
                output.extend(chunk)
        if token not in output:
            raise AssertionError(
                f"GDB MI timed out waiting for {token.decode()}:\n"
                + output.decode(errors="replace")
            )
        end = output.index(token) + len(token)
        line_end = output.find(b"\n", end)
        while line_end < 0 and time.monotonic() < deadline:
            ready, _, _ = select.select([gdb.stdout], [], [], 0.1)
            if ready:
                chunk = os.read(gdb.stdout.fileno(), 16384)
                if not chunk:
                    break
                output.extend(chunk)
                line_end = output.find(b"\n", end)
        if line_end < 0:
            line_end = end
        result = bytes(output[: line_end + 1])
        del output[: line_end + 1]
        return result.decode(errors="replace")

    def wait_record(token, wait=timeout):
        token = token.encode("ascii")
        deadline = time.monotonic() + wait
        while token not in output and time.monotonic() < deadline:
            ready, _, _ = select.select([gdb.stdout], [], [], 0.1)
            if ready:
                chunk = os.read(gdb.stdout.fileno(), 16384)
                if not chunk:
                    break
                output.extend(chunk)
        if token not in output:
            raise AssertionError(
                f"GDB MI timed out waiting for {token.decode()}:\n"
                + output.decode(errors="replace")
            )
        marker = output.index(token)
        start = output.rfind(b"\n", 0, marker) + 1
        end = output.find(b"\n", marker)
        while end < 0 and time.monotonic() < deadline:
            ready, _, _ = select.select([gdb.stdout], [], [], 0.1)
            if ready:
                chunk = os.read(gdb.stdout.fileno(), 16384)
                if not chunk:
                    break
                output.extend(chunk)
                end = output.find(b"\n", marker)
        if end < 0:
            raise AssertionError(f"unterminated GDB MI record for {token.decode()}")
        result = bytes(output[start:end])
        del output[: end + 1]
        return result.decode(errors="replace")

    try:
        send(
            "1-gdb-set mi-async on\n"
            "2-gdb-set architecture i386\n"
            f"3-file-exec-and-symbols {elf}\n"
            f'4-interpreter-exec console "source {DEBUGGER / "gdb_enable_phys.py"}"\n'
            f"5-target-select remote localhost:{PORT}\n"
        )
        wait_for("5^connected")
        send("6-stack-list-frames 0 0\n")
        entry_frame = wait_for("6^done")
        address_text = f'addr="0x{entry:08x}"'
        line_text = f'line="{entry_line}"'
        if address_text not in entry_frame or 'func="_start"' not in entry_frame:
            raise AssertionError(f"GDB {target} did not connect at _start:\n{entry_frame}")
        if line_text not in entry_frame:
            raise AssertionError(f"GDB {target} entry frame has the wrong source row:\n{entry_frame}")
        print(f"GDB {target} connects stopped at _start, source line {entry_line}")

        if target == "testcom":
            send("7-break-insert test/testcom.asm:44\n")
            wait_for("7^done")
            send("8-exec-continue\n")
            wait_for("8^running")
            stopped = wait_record('reason="breakpoint-hit"')
            if 'addr="0x00000129"' not in stopped or 'line="44"' not in stopped:
                raise AssertionError(f"line 44 breakpoint stopped at the wrong row:\n{stopped}")

            send("9-exec-next\n")
            wait_for("9^running")
            stepped = wait_record('reason="end-stepping-range"')
            if 'addr="0x0000012b"' not in stepped or 'line="45"' not in stepped:
                raise AssertionError(f"line 44 source step did not advance:\n{stepped}")
            print("GDB source step advances from line 44 to line 45")
        send("10-gdb-exit\n")
        wait_for("10^exit", 5)
    finally:
        if gdb.poll() is None:
            gdb.terminate()
            try:
                gdb.wait(timeout=3)
            except subprocess.TimeoutExpired:
                gdb.kill()
                gdb.wait(timeout=3)


def run_test(timeout):
    original = TEST_COM.read_bytes()
    original_entry = original[ENTRY - 0x100]
    original_newline = original[NEWLINE - 0x100]
    original_print = original[PRINT_CHAR - 0x100 : PRINT_CHAR - 0x100 + 2]

    sock = socket.create_connection(("127.0.0.1", PORT), timeout=timeout)
    sock.settimeout(timeout)
    try:
        expect(sock, "?", "S05")
        expect(sock, "QPhys:1", "OK")
        regs = registers(sock)
        if code_offset(regs) != ENTRY:
            raise AssertionError(
                f"entry stop should report the first instruction {ENTRY:#x}, got "
                f"{code_offset(regs):#x}"
            )
        if read_memory(sock, ENTRY) != bytes([original_entry]):
            raise AssertionError("in-memory entry trap did not restore the COM opcode")
        print("COM entry stop reports the first instruction with its byte restored")

        # Line 44 is reached after the first nine has printed and the counter
        # wraps to zero. This verifies the first newline path, not a later loop.
        expect(sock, f"Z0,{NEWLINE:x},1", "OK")
        if read_memory(sock, NEWLINE) != b"\xcc":
            raise AssertionError("line 44 breakpoint did not patch its instruction")
        send_packet(sock, "c")
        stop = recv_packet(sock)
        if not stop.startswith("S05"):
            raise AssertionError(f"line 44 breakpoint returned {stop!r}")
        regs = registers(sock)
        if code_offset(regs) != NEWLINE:
            raise AssertionError(
                f"line 44 breakpoint stopped at {code_offset(regs):#x}, "
                f"expected {NEWLINE:#x}"
            )
        if read_memory(sock, NEWLINE) != bytes([original_newline]):
            raise AssertionError("breakpoint handler did not restore line 44 opcode")
        print("Line 44 breakpoint hit on the first newline path after 9")

        # Removing the breakpoint then single-stepping should execute the line
        # 44 instruction once and stop at its following instruction (line 45).
        expect(sock, f"z0,{NEWLINE:x},1", "OK")
        if read_memory(sock, NEWLINE) != bytes([original_newline]):
            raise AssertionError("removing line 44 breakpoint did not restore it")
        send_packet(sock, "s")
        stop = recv_packet(sock)
        if not stop.startswith("S05"):
            raise AssertionError(f"single-step from line 44 returned {stop!r}")
        regs = registers(sock)
        expected_ip = NEWLINE + 2
        if code_offset(regs) != expected_ip:
            raise AssertionError(
                f"step from line 44 stopped at {code_offset(regs):#x}, "
                f"expected {expected_ip:#x} (line 45)"
            )
        print(f"Single-step advanced from line 44 to line 45 at {expected_ip:#x}")

        # Insert a breakpoint while the target is running. IRQ4 must service
        # the RSP packet and resume the app before it reaches print_char again.
        send_packet(sock, "c")
        time.sleep(0.1)
        expect(sock, f"Z0,{PRINT_CHAR:x},1", "OK")
        try:
            stop = recv_packet(sock)
        except socket.timeout as error:
            sock.sendall(b"\x03")
            try:
                interrupt = recv_packet(sock)
                regs = registers(sock)
                opcode = read_memory(sock, PRINT_CHAR)
                raise AssertionError(
                    "asynchronous breakpoint was acknowledged but not hit; "
                    f"interrupt={interrupt!r}, IP={code_offset(regs):#x}, "
                    f"opcode={opcode.hex()}"
                ) from error
            except socket.timeout:
                raise AssertionError(
                    "asynchronous breakpoint timed out, and Ctrl-C also failed"
                ) from error
        if not stop.startswith("S05"):
            raise AssertionError(f"asynchronous breakpoint returned {stop!r}")
        regs = registers(sock)
        if code_offset(regs) != PRINT_CHAR:
            raise AssertionError(
                f"asynchronous breakpoint stopped at {code_offset(regs):#x}, "
                f"expected {PRINT_CHAR:#x}"
            )
        print(f"Breakpoint inserted while running hit at {PRINT_CHAR:#x}")

        expect(sock, f"z0,{PRINT_CHAR:x},1", "OK")
        if read_memory(sock, PRINT_CHAR, 2) != original_print:
            raise AssertionError("removing dynamic breakpoint did not restore code")

        # With no breakpoints left, the target should run until interrupted.
        send_packet(sock, "c")
        time.sleep(0.25)
        sock.sendall(b"\x03")
        stop = recv_packet(sock)
        if not stop.startswith("S02"):
            raise AssertionError(f"Ctrl-C while free-running returned {stop!r}")
        regs = registers(sock)
        if code_offset(regs) == ENTRY:
            raise AssertionError("free-running target did not advance past its entry")
        print("No-breakpoint continue runs freely and responds to Ctrl-C")
        print("Breakpoint integration checks passed")
    finally:
        sock.close()
        if TEST_COM.read_bytes() != original:
            raise AssertionError("debugging modified testcom.com on disk")


def run_exe_test(timeout):
    image = TEST_EXE.read_bytes()
    entry = 0
    original_entry = image[0x200 + entry]
    symbols = subprocess.check_output(["nm", "-n", str(BUILD / "testexe.elf")], text=True)
    loop = next(
        int(line.split()[0], 16)
        for line in symbols.splitlines()
        if line.endswith(" T loop")
    )
    original_loop = image[0x200 + loop]

    sock = socket.create_connection(("127.0.0.1", PORT), timeout=timeout)
    sock.settimeout(timeout)
    try:
        expect(sock, "?", "S05")
        expect(sock, "QPhys:1", "OK")
        regs = registers(sock)
        if code_offset(regs) != entry:
            raise AssertionError(
                f"MZ entry stop should report the first instruction {entry:#x}, "
                f"got {code_offset(regs):#x}"
            )
        if int.from_bytes(regs[40:42], "little") == 0:
            raise AssertionError("MZ entry stop has a zero CS load segment")
        if read_memory(sock, entry) != bytes([original_entry]):
            raise AssertionError("in-memory entry trap did not restore the MZ opcode")
        print("MZ entry stop reports relocated CS and restores the entry opcode")

        expect(sock, f"Z0,{loop:x},1", "OK")
        if read_memory(sock, loop) != b"\xcc":
            raise AssertionError("MZ loop breakpoint did not patch target memory")
        send_packet(sock, "c")
        stop = recv_packet(sock)
        if not stop.startswith("S05"):
            raise AssertionError(f"MZ loop breakpoint returned {stop!r}")
        regs = registers(sock)
        if code_offset(regs) != loop:
            raise AssertionError(
                f"MZ loop breakpoint stopped at {code_offset(regs):#x}, expected {loop:#x}"
            )
        if read_memory(sock, loop) != bytes([original_loop]):
            raise AssertionError("MZ breakpoint handler did not restore the loop opcode")
        print("MZ software breakpoint hits at the relocated loop and restores its opcode")
    finally:
        sock.close()
        if TEST_EXE.read_bytes() != image:
            raise AssertionError("debugging modified testexe.exe on disk")


def main():
    import argparse

    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--timeout", type=float, default=15.0)
    args = parser.parse_args()

    subprocess.run(["make", "-C", str(DEBUGGER), "all"], check=True)
    proc = launch_server(args.timeout)
    try:
        run_gdb_mi_test(args.timeout, "testcom")
    finally:
        stop_server(proc)

    proc = launch_server(args.timeout, "testexe")
    try:
        run_gdb_mi_test(args.timeout, "testexe")
    finally:
        stop_server(proc)

    proc = launch_server(args.timeout, "testexe")
    try:
        run_exe_test(args.timeout)
    finally:
        stop_server(proc)

    proc = launch_server(args.timeout)
    try:
        run_test(args.timeout)
    finally:
        stop_server(proc)


if __name__ == "__main__":
    main()
