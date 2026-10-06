#!/usr/bin/env python3
"""End-to-end breakpoint checks for the DOSBox-X GDB stub.

Run with:
    python3 debugger/test_breakpoints.py

The test builds the DOS images, starts DOSBox-X sessions, and checks GDB entry
breakpoints for both COM and MZ EXE targets. It also checks DOS date/time output,
DOS and BIOS source stepping, runtime breakpoints, and Ctrl-C over RSP.
"""
import os
import pathlib
import re
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
    if len(data) != 308:
        raise AssertionError(f"unexpected register packet size: {len(data)} bytes")
    return data


def code_offset(regs):
    return int.from_bytes(regs[32:36], "little") & 0xffff


def symbol_address(elf, name):
    symbols = subprocess.check_output(["nm", "-n", str(elf)], text=True)
    for line in symbols.splitlines():
        fields = line.split()
        if fields and fields[-1] == name:
            return int(fields[0], 16)
    raise AssertionError(f"symbol {name!r} not found in {elf}")


def source_line_address(elf, source_name, line_number):
    rows = subprocess.check_output(
        ["objdump", "--dwarf=decodedline", str(elf)], text=True
    )
    for row in rows.splitlines():
        fields = row.split()
        if (
            len(fields) >= 3
            and pathlib.PurePosixPath(fields[0]).name == source_name
            and fields[1] == str(line_number)
            and fields[2].startswith("0x")
        ):
            return int(fields[2], 16)
    raise AssertionError(
        f"source line {source_name}:{line_number} has no address in {elf}"
    )


def stop_address(record):
    match = re.search(r'addr="0x([0-9a-fA-F]+)"', record)
    if not match:
        raise AssertionError(f"GDB stop record has no address: {record}")
    return int(match.group(1), 16)


def check_date_time_memory(response):
    match = re.search(r'contents="([0-9a-fA-F]+)"', response)
    if not match:
        raise AssertionError(f"GDB did not return date/time bytes: {response}")
    value = bytes.fromhex(match.group(1))
    if len(value) != 22 or value[19:] != b"\r\n$":
        raise AssertionError(f"date/time string has an unexpected terminator: {value!r}")
    date = value[:10].decode("ascii")
    clock = value[11:19].decode("ascii")
    if not re.fullmatch(r"\d{2}/\d{2}/\d{4}", date):
        raise AssertionError(f"date was not formatted as MM/DD/YYYY: {date!r}")
    if not re.fullmatch(r"\d{2}:\d{2}:\d{2}", clock):
        raise AssertionError(f"time was not formatted as HH:MM:SS: {clock!r}")
    month, day, year = (int(part) for part in re.split(r"[/]", date))
    hour, minute, second = (int(part) for part in clock.split(":"))
    if not (1 <= month <= 12 and 1 <= day <= 31 and 1980 <= year <= 9999):
        raise AssertionError(f"DOS returned invalid date fields: {date!r}")
    if not (0 <= hour <= 23 and 0 <= minute <= 59 and 0 <= second <= 59):
        raise AssertionError(f"DOS returned invalid time fields: {clock!r}")
    print(f"DOS date/time formatted as {date} {clock}")


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
        ["bash", str(LAUNCHER), target, "--headless"],
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
        entry_line = 31
    else:
        elf = BUILD / "testexe.elf"
        entry = 0
        entry_line = 48

    gdb = subprocess.Popen(
        ["gdb", "--quiet", "--interpreter=mi"],
        stdin=subprocess.PIPE,
        stdout=subprocess.PIPE,
        stderr=subprocess.STDOUT,
        bufsize=0,
    )
    output = bytearray()
    transcript = bytearray()

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
                transcript.extend(chunk)
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
                transcript.extend(chunk)
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
                transcript.extend(chunk)
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
                transcript.extend(chunk)
                end = output.find(b"\n", marker)
        if end < 0:
            raise AssertionError(f"unterminated GDB MI record for {token.decode()}")
        result = bytes(output[start:end])
        del output[: end + 1]
        return result.decode(errors="replace")

    try:
        send(
            "1-gdb-set mi-async on\n"
            "2-gdb-set architecture i8086\n"
            f"3-file-exec-and-symbols {elf}\n"
            f'4-interpreter-exec console "source {DEBUGGER / "gdb_enable_phys.py"}"\n'
        )
        wait_for("4^done")
        if target == "testexe":
            # Match cppdbg's pending-main breakpoint setup before target-select.
            send("9001-break-insert -f main\n")
            wait_for("9001^done")
        send(f"5-target-select remote localhost:{PORT}\n")
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
        if target == "testexe":
            send("9002-break-delete 1\n")
            wait_for("9002^done")

        if target == "testcom":
            elf = BUILD / "testcom.elf"
            bios_int = symbol_address(elf, "bios_int")
            bios_dos_int = symbol_address(elf, "bios_dos_int")
            newline_cr = symbol_address(elf, "newline_cr")
            newline_int = symbol_address(elf, "newline_int")
            newline_lf = symbol_address(elf, "newline_lf")

            send("6-break-insert bios_int\n")
            wait_for("6^done")
            send("7-exec-continue\n")
            wait_for("7^running")
            stopped = wait_record('reason="breakpoint-hit"')
            if f'addr="0x{bios_int:08x}"' not in stopped:
                raise AssertionError(f"COM did not stop at BIOS INT 10h:\n{stopped}")
            send("8-data-read-memory-bytes &date_time_text 22\n")
            check_date_time_memory(wait_for("8^done"))

            send("9-exec-next\n")
            wait_for("9^running")
            stepped = wait_record('reason="end-stepping-range"')
            if not bios_int < stop_address(stepped) < bios_dos_int:
                raise AssertionError(f"COM step over BIOS INT 10h stopped incorrectly:\n{stepped}")
            print("GDB source step over COM BIOS INT 10h advances")

            send("10-break-insert newline_cr\n")
            wait_for("10^done")
            send("11-exec-continue\n")
            wait_for("11^running")
            stopped = wait_record('reason="breakpoint-hit"')
            if f'addr="0x{newline_cr:08x}"' not in stopped:
                raise AssertionError(f"COM newline breakpoint stopped incorrectly:\n{stopped}")

            send("12-exec-next\n")
            wait_for("12^running")
            stepped = wait_record('reason="end-stepping-range"')
            if f'addr="0x{newline_int:08x}"' not in stepped:
                raise AssertionError(f"COM source step did not reach newline INT:\n{stepped}")
            print("GDB source step advances to COM INT 21h")

            send("13-exec-next\n")
            wait_for("13^running")
            stepped = wait_record('reason="end-stepping-range"')
            if f'addr="0x{newline_lf:08x}"' not in stepped:
                raise AssertionError(f"step over COM INT 21h skipped its next line:\n{stepped}")
            print("GDB source step over COM INT 21h advances")
            exit_token = "14"
        else:
            elf = BUILD / "testexe.elf"
            bios_int = source_line_address(elf, "testexe.asm", 111)
            bios_dos_int = source_line_address(elf, "testexe.asm", 115)
            loop_int = source_line_address(elf, "testexe.asm", 123)
            source = DEBUGGER / "test/testexe.asm"

            # Keep a known later stop in place so a broken F10 cannot leave the
            # integration test running forever. This is also the fallback the
            # reported failure reaches in the editor.
            send(f"21-break-insert {source}:125\n")
            wait_for("21^done")

            # Exercise the initial source rows from the connected entry stop;
            # Earlier coverage started at a breakpoint on line 55 and missed
            # the line 54 -> 55 transition.
            for token, expected_line in zip(range(22, 27), (49, 50, 51, 52, 54)):
                send(f"{token}-exec-next\n")
                wait_for(f"{token}^running")
                stepped = wait_record('*stopped,')
                if (
                    'reason="end-stepping-range"' not in stepped
                    or f'line="{expected_line}"' not in stepped
                ):
                    raise AssertionError(
                        f"EXE F10 to line {expected_line} stopped incorrectly:\n{stepped}"
                    )

            # Capture the remote packets and GDB's stepping decisions for the
            # reported failing transition.
            send('27-interpreter-exec console "set debug remote 1"\n')
            wait_for("27^done")
            trace_start = len(transcript)
            send("28-exec-next\n")
            wait_for("28^running")
            stepped = wait_record('*stopped,')
            if (
                'reason="end-stepping-range"' not in stepped
                or 'line="55"' not in stepped
            ):
                remote_trace = transcript[trace_start:].decode(errors="replace")
                raise AssertionError(
                    "EXE F10 from line 54 did not stop at line 55:\n"
                    f"{stepped}\n"
                    f"GDB remote trace:\n{remote_trace}"
                )
            print("GDB F10 from EXE line 54 stops at line 55")

            send('29-interpreter-exec console "set debug remote 0"\n')
            wait_for("29^done")
            send("30-break-delete 2\n")
            wait_for("30^done")

            send("8-exec-next\n")
            wait_for("8^running")
            stepped = wait_record('reason="end-stepping-range"')
            if 'line="56"' not in stepped:
                raise AssertionError(
                    f"Step Next from EXE line 55 did not stop at banner INT 21h line 56:\n{stepped}"
                )
            print("GDB Step Next from EXE banner setup stops at INT 21h")

            send("9-exec-next\n")
            wait_for("9^running")
            stepped = wait_record('reason="end-stepping-range"')
            if 'line="59"' not in stepped:
                raise AssertionError(
                    f"Step Next from EXE banner INT 21h did not stop at line 59:\n{stepped}"
                )
            print("GDB Step Next from EXE banner INT 21h stops at line 59")

            send("10-exec-next\n")
            wait_for("10^running")
            stepped = wait_record('reason="end-stepping-range"')
            if 'line="61"' not in stepped:
                raise AssertionError(
                    f"Step Next from EXE line 59 did not stop at INT 21h line 61:\n{stepped}"
                )
            print("GDB Step Next from EXE DOS setup stops at INT 21h")

            for token, expected_line in ((31, 62), (32, 63), (33, 65)):
                send(f"{token}-exec-next\n")
                wait_for(f"{token}^running")
                stepped = wait_record('reason="end-stepping-range"')
                if f'line="{expected_line}"' not in stepped:
                    raise AssertionError(
                        f"EXE F10 to line {expected_line} stopped incorrectly:\n{stepped}"
                    )

            # Reproduce F10 on line 65. It must single-step to the DOS call on
            # line 67, rather than continuing into the test's infinite loop.
            send('34-interpreter-exec console "set debug remote 1"\n')
            wait_for("34^done")
            send('341-interpreter-exec console "set debug infrun 1"\n')
            wait_for("341^done")
            trace_start = len(transcript)
            send("35-exec-next\n")
            wait_for("35^running")
            try:
                stepped = wait_record('reason="end-stepping-range"')
            except AssertionError as error:
                remote_trace = transcript[trace_start:].decode(errors="replace")
                raise AssertionError(
                    "EXE F10 from line 65 did not stop at line 67:\n"
                    f"{error}\nGDB remote trace:\n{remote_trace}"
                ) from error
            if 'line="67"' not in stepped:
                remote_trace = transcript[trace_start:].decode(errors="replace")
                raise AssertionError(
                    f"EXE F10 from line 65 stopped incorrectly:\n{stepped}\n"
                    f"GDB remote trace:\n{remote_trace}"
                )
            print("GDB F10 from EXE line 65 stops at line 67")
            send('36-interpreter-exec console "set debug remote 0"\n')
            wait_for("36^done")
            send('37-interpreter-exec console "set debug infrun 0"\n')
            wait_for("37^done")

            # The filtered ELF should retain a usable function entry despite
            # prefixing other local code symbols with .L.
            format_2 = symbol_address(elf, "format_2")
            send("38-break-insert format_2\n")
            function_breakpoint = wait_for("38^done")
            if f'addr="0x{format_2:08x}"' not in function_breakpoint:
                raise AssertionError(
                    f"GDB did not resolve format_2 to its routine entry:\n"
                    f"{function_breakpoint}"
                )
            send("39-exec-continue\n")
            wait_for("39^running")
            stopped = wait_record('reason="breakpoint-hit"')
            if (
                f'addr="0x{format_2:08x}"' not in stopped
                or 'func="format_2"' not in stopped
            ):
                raise AssertionError(
                    f"GDB did not hit the format_2 routine breakpoint:\n{stopped}"
                )
            print("GDB function breakpoint hits the exported format_2 routine entry")
            send("391-break-delete 3\n")
            wait_for("391^done")

            send(f"40-break-insert {source}:111\n")
            wait_for("40^done")
            send("41-exec-continue\n")
            wait_for("41^running")
            stopped = wait_record('reason="breakpoint-hit"')
            if f'addr="0x{bios_int:08x}"' not in stopped:
                raise AssertionError(f"EXE did not stop at BIOS INT 10h:\n{stopped}")
            send("42-data-read-memory-bytes &date_time_text 22\n")
            check_date_time_memory(wait_for("42^done"))

            send('421-interpreter-exec console "set debug remote 1"\n')
            wait_for("421^done")
            send('422-interpreter-exec console "set debug infrun 1"\n')
            wait_for("422^done")
            trace_start = len(transcript)
            send("43-exec-next\n")
            wait_for("43^running")
            stepped = wait_record('reason="end-stepping-range"')
            if (
                not bios_int < stop_address(stepped) < bios_dos_int
                or 'line="112"' not in stepped
            ):
                trace = transcript[trace_start:].decode(errors="replace")
                raise AssertionError(
                    "EXE step over BIOS INT 10h should stop at line 112, but stopped "
                    f"incorrectly:\n{stepped}\nGDB step trace:\n{trace}"
                )
            print("GDB source step over EXE BIOS INT 10h stops at line 112")
            send('423-interpreter-exec console "set debug remote 0"\n')
            wait_for("423^done")
            send('424-interpreter-exec console "set debug infrun 0"\n')
            wait_for("424^done")

            send(f"431-break-insert {source}:117\n")
            wait_for("431^done")
            send("432-exec-continue\n")
            wait_for("432^running")
            stopped = wait_record('reason="breakpoint-hit"')
            if 'line="117"' not in stopped:
                raise AssertionError(f"EXE did not stop at line 117:\n{stopped}")

            send('433-interpreter-exec console "set debug remote 1"\n')
            wait_for("433^done")
            send('434-interpreter-exec console "set debug infrun 1"\n')
            wait_for("434^done")
            trace_start = len(transcript)
            send("435-exec-next\n")
            wait_for("435^running")
            stepped = wait_record('*stopped,')
            if 'reason="end-stepping-range"' not in stepped or 'line="120"' not in stepped:
                trace = transcript[trace_start:].decode(errors="replace")
                raise AssertionError(
                    "EXE F10 from line 117 should stop at line 120, but stopped "
                    f"incorrectly:\n{stepped}\nGDB step trace:\n{trace}"
                )
            print("GDB F10 from EXE line 117 stops at line 120")
            send('436-interpreter-exec console "set debug remote 0"\n')
            wait_for("436^done")
            send('437-interpreter-exec console "set debug infrun 0"\n')
            wait_for("437^done")

            send("438-break-delete 5\n")
            wait_for("438^done")
            send("439-break-delete 4\n")
            wait_for("439^done")
            send(f"440-break-insert {source}:123\n")
            wait_for("440^done")
            send("441-exec-continue\n")
            wait_for("441^running")
            stopped = wait_record('reason="breakpoint-hit"')
            if f'addr="0x{loop_int:08x}"' not in stopped:
                raise AssertionError(f"EXE did not stop at its DOS INT 21h:\n{stopped}")

            # Remove the INT 21h breakpoint before continuing so line 125 is
            # tested on its own, as in the reported case.
            send("442-break-delete 6\n")
            wait_for("442^done")

            loop_addresses = {
                line: source_line_address(elf, "testexe.asm", line)
                for line in (125, 126, 127, 128)
            }

            def insert_source_breakpoint(token, line):
                send(f"{token}-break-insert {source}:{line}\n")
                result = wait_for(f"{token}^")
                result_start = result.find(f"{token}^done")
                if result_start < 0:
                    raise AssertionError(
                        f"GDB rejected the EXE line {line} breakpoint:\n{result}"
                    )
                match = re.search(
                    r'addr="0x([0-9a-fA-F]+)"', result[result_start:]
                )
                if not match or int(match.group(1), 16) != loop_addresses[line]:
                    raise AssertionError(
                        f"EXE line {line} resolved to the wrong breakpoint address:\n{result}"
                    )

            # Turn on packet tracing so a failure shows whether GDB installed
            # each source breakpoint and how the stub replied.
            send('48-interpreter-exec console "set debug remote 1"\n')
            wait_for("48^done")
            bp_trace_start = len(transcript)
            insert_source_breakpoint(49, 125)

            def continue_to(token, line):
                send(f"{token}-exec-continue\n")
                wait_for(f"{token}^running")
                try:
                    stopped = wait_record('reason="breakpoint-hit"')
                except AssertionError as error:
                    remote_trace = transcript[bp_trace_start:].decode(errors="replace")
                    raise AssertionError(
                        f"F5 did not hit the EXE line {line} breakpoint:\n{error}\n"
                        f"GDB remote trace:\n{remote_trace}"
                    ) from error
                if (
                    f'addr="0x{loop_addresses[line]:08x}"' not in stopped
                    or f'line="{line}"' not in stopped
                ):
                    remote_trace = transcript[bp_trace_start:].decode(errors="replace")
                    raise AssertionError(
                        f"F5 stopped incorrectly for EXE line {line}:\n{stopped}\n"
                        f"GDB remote trace:\n{remote_trace}"
                    )
                return stopped

            continue_to(50, 125)
            print(
                "GDB F5 hits the EXE line 125 breakpoint "
                "without a line 123 breakpoint"
            )

            insert_source_breakpoint(51, 126)
            insert_source_breakpoint(52, 127)
            insert_source_breakpoint(53, 128)
            token = 54
            for expected_line in (126, 127):
                continue_to(token, expected_line)
                token += 1
            for _ in range(8):
                for expected_line in (125, 126, 127):
                    continue_to(token, expected_line)
                    token += 1
            for expected_line in (125, 126, 127, 128, 125):
                continue_to(token, expected_line)
                token += 1
            print("GDB F5 repeatedly hits all EXE loop breakpoints on lines 125–128")
            send(f'{token}-interpreter-exec console "set debug remote 0"\n')
            wait_for(f"{token}^done")
            exit_token = str(token + 1)

        send(f"{exit_token}-gdb-exit\n")
        wait_for(f"{exit_token}^exit", 5)
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
    elf = BUILD / "testcom.elf"
    newline_cr = symbol_address(elf, "newline_cr")
    newline_int = symbol_address(elf, "newline_int")
    print_char = symbol_address(elf, "print_char")
    original_entry = original[ENTRY - 0x100]
    original_newline = original[newline_cr - 0x100]
    original_print = original[print_char - 0x100 : print_char - 0x100 + 2]

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

        # The newline path is reached after the first nine has printed and the
        # counter wraps to zero. This verifies the first path, not a later loop.
        expect(sock, f"Z0,{newline_cr:x},1", "OK")
        if read_memory(sock, newline_cr) != b"\xcc":
            raise AssertionError("newline breakpoint did not patch its instruction")
        send_packet(sock, "c")
        stop = recv_packet(sock)
        if not stop.startswith("S05"):
            raise AssertionError(f"newline breakpoint returned {stop!r}")
        regs = registers(sock)
        if code_offset(regs) != newline_cr:
            raise AssertionError(
                f"newline breakpoint stopped at {code_offset(regs):#x}, "
                f"expected {newline_cr:#x}"
            )
        if read_memory(sock, newline_cr) != bytes([original_newline]):
            raise AssertionError("breakpoint handler did not restore newline opcode")
        print("Newline breakpoint hit on the first path after 9")

        # Removing the breakpoint then single-stepping should execute the
        # newline's first instruction and stop at the following DOS interrupt.
        expect(sock, f"z0,{newline_cr:x},1", "OK")
        if read_memory(sock, newline_cr) != bytes([original_newline]):
            raise AssertionError("removing newline breakpoint did not restore it")
        send_packet(sock, "s")
        stop = recv_packet(sock)
        if not stop.startswith("S05"):
            raise AssertionError(f"single-step from newline setup returned {stop!r}")
        regs = registers(sock)
        expected_ip = newline_int
        if code_offset(regs) != expected_ip:
            raise AssertionError(
                f"step from newline setup stopped at {code_offset(regs):#x}, "
                f"expected {expected_ip:#x} (the DOS interrupt)"
            )
        print(f"Single-step advanced to DOS INT 21h at {expected_ip:#x}")

        # Insert a breakpoint while the target is running. IRQ4 must service
        # the RSP packet and resume the app before it reaches print_char again.
        send_packet(sock, "c")
        time.sleep(0.1)
        expect(sock, f"Z0,{print_char:x},1", "OK")
        try:
            stop = recv_packet(sock)
        except socket.timeout as error:
            sock.sendall(b"\x03")
            try:
                interrupt = recv_packet(sock)
                regs = registers(sock)
                opcode = read_memory(sock, print_char)
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
        if code_offset(regs) != print_char:
            raise AssertionError(
                f"asynchronous breakpoint stopped at {code_offset(regs):#x}, "
                f"expected {print_char:#x}"
            )
        print(f"Breakpoint inserted while running hit at {print_char:#x}")

        expect(sock, f"z0,{print_char:x},1", "OK")
        if read_memory(sock, print_char, 2) != original_print:
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
    loop = source_line_address(BUILD / "testexe.elf", "testexe.asm", 120)
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

        # Exercise the DOS child's normal termination return without host keyboard input.
        expect(sock, f"z0,{loop:x},1", "OK")
        expect(sock, f"M{loop:x},5:b8004ccd21", "OK")
        send_packet(sock, "c")
        stop = recv_packet(sock)
        if stop != "W00":
            raise AssertionError(f"MZ DOS process termination returned {stop!r}")
        print("MZ DOS process termination reports exit and returns to its parent")

    finally:
        sock.close()
        if TEST_EXE.read_bytes() != image:
            raise AssertionError("debugging modified testexe.exe on disk")


def run_exe_async_breakpoint_test(timeout):
    """Stress inserting the MZ loop breakpoint over RSP while it is running."""
    image = TEST_EXE.read_bytes()
    line_117 = source_line_address(BUILD / "testexe.elf", "testexe.asm", 117)
    line_125 = source_line_address(BUILD / "testexe.elf", "testexe.asm", 125)
    original_line_125 = image[0x200 + line_125]

    sock = socket.create_connection(("127.0.0.1", PORT), timeout=timeout)
    sock.settimeout(min(timeout, 5.0))

    def get_registers():
        # The generic request() helper mistakes register data starting with E
        # for an RSP error; g replies are fixed-size hex register contents.
        send_packet(sock, "g")
        data = bytes.fromhex(recv_packet(sock))
        if len(data) != 308:
            raise AssertionError(f"unexpected register packet size: {len(data)} bytes")
        return data

    try:
        expect(sock, "?", "S05")
        expect(sock, "QPhys:1", "OK")
        regs = get_registers()
        if code_offset(regs) != 0:
            raise AssertionError(
                f"MZ async-breakpoint test should start at entry 0, "
                f"got {code_offset(regs):#x}"
            )

        # Mirror the user's sequence: step through startup, then run freely
        # before adding the loop breakpoint.
        steps = 0
        while code_offset(regs) != line_117 and steps < 256:
            send_packet(sock, "s")
            stop = recv_packet(sock)
            if not stop.startswith("S05"):
                raise AssertionError(
                    f"MZ single-step {steps + 1} returned {stop!r} before line 117"
                )
            regs = get_registers()
            steps += 1
        if code_offset(regs) != line_117:
            raise AssertionError(
                f"MZ stepping did not reach line 117 in {steps} steps; "
                f"IP={code_offset(regs):#x}"
            )
        print(f"Stepped MZ fixture to line 117 in {steps} instructions")

        for attempt in range(10):
            send_packet(sock, "c")
            time.sleep(0.1)
            stopped_before_insert = attempt % 2 == 1
            if stopped_before_insert:
                # Front ends may interrupt the target before installing a
                # breakpoint. This can leave the saved CS inside DOS.
                sock.sendall(b"\x03")
                interrupt = recv_packet(sock)
                if not interrupt.startswith("S02"):
                    raise AssertionError(
                        f"MZ Ctrl-C before line-125 insertion returned {interrupt!r}"
                    )
                get_registers()

            expect(sock, f"Z0,{line_125:x},1", "OK")
            if stopped_before_insert:
                send_packet(sock, "c")

            try:
                stop = recv_packet(sock)
            except socket.timeout as error:
                sock.sendall(b"\x03")
                try:
                    interrupt = recv_packet(sock)
                    regs = get_registers()
                    opcode = read_memory(sock, line_125)
                    expect(sock, f"z0,{line_125:x},1", "OK")
                    raise AssertionError(
                        "MZ line-125 breakpoint added while running was not hit "
                        f"(attempt {attempt + 1}); interrupt={interrupt!r}, "
                        f"IP={code_offset(regs):#x}, memory={opcode.hex()}"
                    ) from error
                except socket.timeout:
                    raise AssertionError(
                        "MZ line-125 breakpoint was not hit, and Ctrl-C failed"
                    ) from error

            if not stop.startswith("S05"):
                raise AssertionError(f"MZ line-125 breakpoint returned {stop!r}")
            regs = registers(sock)
            if code_offset(regs) != line_125:
                raise AssertionError(
                    f"MZ line-125 breakpoint stopped at {code_offset(regs):#x}, "
                    f"expected {line_125:#x} (attempt {attempt + 1})"
                )
            if read_memory(sock, line_125) != bytes([original_line_125]):
                raise AssertionError("MZ line-125 trap did not restore its opcode")
            expect(sock, f"z0,{line_125:x},1", "OK")

        print("MZ line-125 breakpoint hit on all 10 live and interrupt-then-insert attempts")
    finally:
        sock.close()
        if TEST_EXE.read_bytes() != image:
            raise AssertionError("debugging modified testexe.exe on disk")


def check_gdb_symbol_profile():
    elf = BUILD / "testexe.elf"
    output = subprocess.check_output(["nm", "-n", str(elf)], text=True)
    symbol_types = {}
    for row in output.splitlines():
        fields = row.split()
        if len(fields) >= 3:
            symbol_types[fields[-1]] = fields[-2]

    hidden_markers = (
        "date_int",
        "time_int",
        "bios_int",
        "bios_dos_int",
        "loop",
        "loop_int",
        "loop_next",
    )
    for name in hidden_markers:
        if name in symbol_types or symbol_types.get(f".L{name}") != "t":
            raise AssertionError(
                f"GDB ELF marker {name!r} was not converted to a local .L symbol"
            )

    for name in ("_start", "format_2", "format_year"):
        if symbol_types.get(name) != "T":
            raise AssertionError(f"GDB ELF omitted routine entry {name!r}")
    for name in (".Lrelocation_error", ".Lloop_next.again"):
        if symbol_types.get(name) != "t":
            raise AssertionError(f"NASM local-label prefix was not applied to {name!r}")

    if source_line_address(elf, "testexe.asm", 65) != 0x20:
        raise AssertionError("GDB ELF has the wrong address for the line-65 stepping test")
    if source_line_address(elf, "testexe.asm", 67) != 0x22:
        raise AssertionError("GDB ELF has the wrong address for the line-67 stepping test")
    print("GDB ELF hides marker labels and retains routine entries and source lines")


def main():
    import argparse

    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--timeout", type=float, default=15.0)
    args = parser.parse_args()

    subprocess.run(["make", "-C", str(DEBUGGER), "all"], check=True)
    check_gdb_symbol_profile()
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

    proc = launch_server(args.timeout, "testexe")
    try:
        run_exe_async_breakpoint_test(args.timeout)
    finally:
        stop_server(proc)

    proc = launch_server(args.timeout)
    try:
        run_test(args.timeout)
    finally:
        stop_server(proc)


if __name__ == "__main__":
    main()
