# DOS GDB stub

## Host dependencies

- Building requires `make`, NASM, and GNU binutils (`objcopy`).
- Debugging requires GDB and DOSBox-X. The VS Code launch configurations also
  require the Microsoft C/C++ extension (`cppdbg`) and expect GDB at
  `/usr/bin/gdb`.
- Running the integration tests additionally requires Python 3 and `nm`
  (provided by GNU binutils).

These are system tools; this project does not download or install them. NASM
is needed to build the debugger binaries, while GDB is needed to use the
debugger (not to build it).

`gdbsrv.asm` and `lib/` contain the resident real-mode GDB stub. The Makefile
builds that stub, the `gdbexec.com` DOS load-only launcher, and two targets:

- `test/testcom.asm` builds `build/testcom.com` and `build/testcom.elf`.
- `test/testexe.asm` builds `build/testexe.exe` and its GDB symbol file,
  `build/testexe.elf`. The ELF prefixes local NASM symbols with `.L`, hides
  instruction and loop labels from GDB's function-boundary lookup, and retains
  named entries for `_start`, `format_2`, and `format_year`.

The EXE fixture is a small relocatable MZ image. Its ELF/DWARF companion maps
symbols to the loaded image, excluding the on-disk MZ header.

`GDBEXEC.COM` uses DOS EXEC function `4B01h` to load the selected target without
running it, then asks the resident stub to plant an INT3 at its runtime entry
point. The original opcode is restored by the stub when the entry trap fires;
the initial register PC is the actual first instruction, and the target files
on disk are not modified. VS Code's remote launch configurations preserve this
entry stop on connection and use the corresponding ELF/DWARF symbols.

`make -C debugger all` builds the stub, launcher, both fixtures, and their GDB
symbol files;
`make -C debugger clean` removes generated output. Run
`python3 debugger/test_breakpoints.py` to exercise COM and MZ entry stops and
breakpoint handling in DOSBox-X. The test runner uses DOSBox-X's headless SDL
driver so automated runs do not open a window or take desktop focus. EXEC/01 was
undocumented before DOS 5.0; this launcher is verified against DOSBox-X.

The DOSBox-X launcher is `start-dosbox-x.sh`. The separate `dosemu/` directory
contains the optional DOSEMU serial bridge.
