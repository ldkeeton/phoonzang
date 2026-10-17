NASM   := nasm -w-number-overflow
BUILD  := build
ELFASM := nasm -w-number-overflow
# NASM records absolute paths in DWARF; rewrite the checkout root to /PHOONZANG/.
REMAP  := python3 ../disassembler/lib/dwarf_paths.py

MODULES := lib/equ.asm lib/data.asm lib/serial.asm lib/hex.asm lib/proto.asm lib/bp.asm lib/cmds.asm lib/int.asm lib/init.asm
GDB_HIDDEN_MARKERS := date_int time_int bios_int bios_dos_int loop loop_int loop_next
GDB_MARKER_RENAMES := $(foreach sym,$(GDB_HIDDEN_MARKERS),--redefine-sym=$(sym)=.L$(sym))
GDB_MARKER_LOCALIZATIONS := $(foreach sym,$(GDB_HIDDEN_MARKERS),--localize-symbol=.L$(sym))
GDB_FUNCTION_EXPORTS := --globalize-symbol=format_2 --globalize-symbol=format_year

.PHONY: all clean

all: $(BUILD)/gdbsrv.com $(BUILD)/gdbexec.com $(BUILD)/testcom.com $(BUILD)/testexe.exe $(BUILD)/testcom.elf $(BUILD)/testexe.elf $(BUILD)/gdbsrv.elf

$(BUILD):
	mkdir -p $@

# bin (executable)
$(BUILD)/gdbsrv.com: gdbsrv.asm $(MODULES) | $(BUILD)
	$(NASM) -O0 -f bin -o $@ $<

$(BUILD)/testcom.com: test/testcom.asm | $(BUILD)
	$(NASM) -O0 -f bin -o $@ $<

$(BUILD)/gdbexec.com: gdbexec.asm | $(BUILD)
	$(NASM) -O0 -f bin -o $@ $<

# elf (symbols for GDB)
$(BUILD)/testcom.elf: test/testcom.asm | $(BUILD)
	$(ELFASM) -O0 -f elf32 -F dwarf -o $@.tmp $<
	$(REMAP) $@.tmp
	objcopy --adjust-vma=0x100 $@.tmp $@
	rm -f $@.tmp

# Small MZ executable with a relocation entry, matching the DOS EXE format used
# by the apps this debugger will target. The ELF contains load-image symbols;
# its addresses exclude the on-disk MZ header.
$(BUILD)/testexe.exe: test/testexe.asm | $(BUILD)
	$(NASM) -O0 -f bin -o $@ $<

# NASM prefixes local symbols, then actual helper routines are exported while
# instruction-marker labels become local .L symbols that GDB ignores as
# function boundaries. This is the sole GDB ELF for the EXE fixture.
$(BUILD)/testexe.elf: test/testexe.asm Makefile | $(BUILD)
	$(ELFASM) -O0 --lprefix .L -f elf32 -F dwarf -o $@.raw $<
	$(REMAP) $@.raw
	objcopy $(GDB_MARKER_RENAMES) --redefine-sym=.Lformat_2=format_2 --redefine-sym=.Lformat_year=format_year $@.raw $@.renamed
	objcopy $(GDB_MARKER_LOCALIZATIONS) $(GDB_FUNCTION_EXPORTS) --adjust-vma=0x0 $@.renamed $@
	rm -f $@.raw $@.renamed

$(BUILD)/gdbsrv.elf: gdbsrv.asm $(MODULES) | $(BUILD)
	$(ELFASM) -O0 -f elf32 -F dwarf -o $@.tmp $<
	$(REMAP) $@.tmp
	objcopy --adjust-vma=0x100 $@.tmp $@
	rm -f $@.tmp

clean:
	rm -rf $(BUILD)
