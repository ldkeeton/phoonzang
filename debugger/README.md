# DOS GDB stub

`gdbsrv.asm` and `lib/` contain the resident real-mode GDB stub. The Makefile
builds that stub and two development targets:

- `test/testcom.asm` builds `build/testcom.com` and `build/testcom.elf`.
- `test/testexe.asm` builds `build/testexe.exe` and `build/testexe.elf`.

The EXE fixture is a small relocatable MZ image. Its ELF/DWARF companion maps
symbols to the loaded image, excluding the on-disk MZ header.

`make -C debugger all` builds the stub and both fixtures. `make -C debugger
clean` removes generated output. The current VS Code launch still exercises the
COM fixture; the MZ fixture is built for the next development phase.

The DOSBox-X launcher is `start-dosbox-x.sh`. The separate `dosemu/` directory
contains the optional DOSEMU serial bridge.
