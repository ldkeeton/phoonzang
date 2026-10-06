#!/usr/bin/env python3
"""Check GDB resolves DSAVANT source breakpoints at the DWARF source path."""

import json
import pathlib
import re
import subprocess


ROOT = pathlib.Path(__file__).resolve().parent.parent
ELF = ROOT / "asm_DSAVANT" / "build_out" / "DS.elf"
DWARF_SOURCE = ROOT / "asm_DSAVANT" / "build_out" / ".elf-rebuild" / "ds.asm"
SOURCE_LINE = 5097


def source_line_address():
    output = subprocess.check_output(
        ["objdump", "--dwarf=decodedline", str(ELF)], text=True
    )
    for row in output.splitlines():
        fields = row.split()
        if (
            len(fields) >= 3
            and pathlib.PurePosixPath(fields[0]).name == "ds.asm"
            and fields[1] == str(SOURCE_LINE)
            and fields[2].startswith("0x")
        ):
            return int(fields[2], 16)
    raise AssertionError(f"ds.asm:{SOURCE_LINE} has no address in {ELF}")


def main():
    subprocess.run(
        ["make", "-C", str(ROOT / "asm"), "elf-rebuild", "DSAVANT", "ds"],
        check=True,
    )
    if not DWARF_SOURCE.is_file():
        raise AssertionError(
            f"ELF source file was not retained at its DWARF path: {DWARF_SOURCE}"
        )

    expected_address = source_line_address()
    breakpoint_location = f"{DWARF_SOURCE}:{SOURCE_LINE}"
    commands = "\n".join(
        (
            "1-gdb-set architecture i8086",
            "2-gdb-set confirm off",
            f"3-file-exec-and-symbols {json.dumps(str(ELF))}",
            f"4-break-insert -f {json.dumps(breakpoint_location)}",
            "5-gdb-exit",
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

    match = re.search(
        r'4\^done,bkpt=\{[^\n]*addr="0x([0-9a-fA-F]+)"', output
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

    print(
        f"GDB resolves {breakpoint_location} to {actual_address:#x} "
        "instead of leaving it pending"
    )


if __name__ == "__main__":
    main()
