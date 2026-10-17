#!/usr/bin/env python3
"""Check GDB resolves DSAVANT source breakpoints at the DWARF source path."""

import json
import pathlib
import re
import subprocess


ROOT = pathlib.Path(__file__).resolve().parent.parent
ELF = ROOT / "src_DSAVANT" / "build_out" / "DS.elf"
DWARF_SOURCE = ROOT / "src_DSAVANT" / "build_out" / ".elf-rebuild" / "ds.asm"
INCLUDE_SOURCE = ROOT / "src_DSAVANT" / "ds" / "asm_only" / "bios_get_video_mode.asm"
MASTER_SOURCE = ROOT / "src_DSAVANT" / "ds.asm"
FLOW_ADDRESS = re.compile(
    r"\b(?:call|jmp|j[a-z]+|loop(?:e|ne)?)\s+"
    r"(?:(?:short|near|far)\s+)?(?:0x[0-9a-f]{1,4}:)?0x[0-9a-f]{1,4}\b",
    re.IGNORECASE,
)


def decoded_lines():
    """``(file name, line, address)`` rows from the ELF's DWARF line table."""
    output = subprocess.check_output(
        ["objdump", "--dwarf=decodedline", str(ELF)],
        text=True,
        stderr=subprocess.DEVNULL,
    )
    for row in output.splitlines():
        fields = row.split()
        if (
            len(fields) >= 3
            and fields[1].isdigit()
            and fields[2].startswith("0x")
        ):
            yield (pathlib.PurePosixPath(fields[0]).name, int(fields[1]),
                   int(fields[2], 16))


def source_line_address(source_name, source_line):
    for name, line, address in decoded_lines():
        if name == source_name and line == source_line:
            return address
    raise AssertionError(f"{source_name}:{source_line} has no address in {ELF}")


def first_mapped_line(source_name):
    """First line of *source_name* the ELF line table maps to an address."""
    for name, line, _ in decoded_lines():
        if name == source_name:
            return line
    raise AssertionError(f"{source_name} has no mapped source line in {ELF}")


def main():
    if '%include "ds/asm_only/bios_get_video_mode.asm"' not in MASTER_SOURCE.read_text():
        raise AssertionError("ds.asm does not include bios_get_video_mode.asm")
    for source_path in (MASTER_SOURCE, INCLUDE_SOURCE):
        unresolved = [
            f"{source_path.name}:{line_number}: {line.strip()}"
            for line_number, line in enumerate(source_path.read_text().splitlines(), 1)
            if FLOW_ADDRESS.search(line)
        ]
        if unresolved:
            raise AssertionError(
                "unlabeled direct control-flow addresses remain:\n"
                + "\n".join(unresolved)
            )

    subprocess.run(
        ["make", "-C", str(ROOT), "elf-rebuild", "DSAVANT", "ds"],
        check=True,
    )
    if not DWARF_SOURCE.is_file():
        raise AssertionError(
            f"ELF source file was not retained at its DWARF path: {DWARF_SOURCE}"
        )
    if not INCLUDE_SOURCE.is_file():
        raise AssertionError(f"generated source include is missing: {INCLUDE_SOURCE}")

    breakpoints = (
        ("4", DWARF_SOURCE, "ds.asm", first_mapped_line("ds.asm")),
        ("5", INCLUDE_SOURCE, INCLUDE_SOURCE.name,
         first_mapped_line(INCLUDE_SOURCE.name)),
    )
    commands = "\n".join(
        (
            "1-gdb-set architecture i8086",
            "2-gdb-set confirm off",
            f"3-file-exec-and-symbols {json.dumps(str(ELF))}",
            *(
                f"{command_id}-break-insert -f "
                f"{json.dumps(str(source_path) + ':' + str(source_line))}"
                for command_id, source_path, _, source_line in breakpoints
            ),
            "6-gdb-exit",
            "",
        )
    )
    result = subprocess.run(
        [
            "gdb",
            "--quiet",
            "--nx",
            "--interpreter=mi",
        ],
        input=commands,
        capture_output=True,
        text=True,
        check=False,
    )
    output = result.stdout + result.stderr
    if result.returncode != 0:
        raise AssertionError(f"GDB failed while resolving the breakpoint:\n{output}")

    for command_id, source_path, source_name, source_line in breakpoints:
        expected_address = source_line_address(source_name, source_line)
        breakpoint_location = f"{source_path}:{source_line}"
        match = re.search(
            rf'{command_id}\^done,bkpt=\{{[^\n]*addr="0x([0-9a-fA-F]+)"',
            output,
        )
        if not match:
            raise AssertionError(
                f"GDB did not resolve {breakpoint_location} to an address:\n{output}"
            )
        actual_address = int(match.group(1), 16)
        if actual_address != expected_address:
            raise AssertionError(
                f"{breakpoint_location} resolved to {actual_address:#x}, "
                f"expected DWARF address {expected_address:#x}:\n{output}"
            )
        print(f"GDB resolves {breakpoint_location} to {actual_address:#x}")


if __name__ == "__main__":
    main()
