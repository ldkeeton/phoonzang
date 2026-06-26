#!/bin/bash
# Quick GDB connect to the stub — no arch/remote typing needed.
# Usage:  ./gdb.sh              (connect and stop at target()'s int3)
#         ./gdb.sh test.elf     (use test.elf instead of debug.elf)
ELF="${1:-debugger/debug.elf}"
exec gdb -q \
    -ex "set arch i8086" \
    -ex "target remote :1234" \
    "$ELF"
