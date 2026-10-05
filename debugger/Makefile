NASM   := nasm -w-number-overflow
BUILD  := build
ELFASM := nasm -w-number-overflow

MODULES := lib/equ.asm lib/data.asm lib/serial.asm lib/hex.asm lib/proto.asm lib/bp.asm lib/cmds.asm lib/int.asm lib/init.asm

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
	objcopy --adjust-vma=0x100 $@.tmp $@
	rm -f $@.tmp

# Small MZ executable with a relocation entry, matching the DOS EXE format used
# by the apps this debugger will target. The ELF contains load-image symbols;
# its addresses exclude the on-disk MZ header.
$(BUILD)/testexe.exe: test/testexe.asm | $(BUILD)
	$(NASM) -O0 -f bin -o $@ $<

$(BUILD)/testexe.elf: test/testexe.asm | $(BUILD)
	$(ELFASM) -O0 -f elf32 -F dwarf -o $@.tmp $<
	objcopy --adjust-vma=0x0 $@.tmp $@
	rm -f $@.tmp

$(BUILD)/gdbsrv.elf: gdbsrv.asm $(MODULES) | $(BUILD)
	$(ELFASM) -O0 -f elf32 -F dwarf -o $@.tmp $<
	objcopy --adjust-vma=0x100 $@.tmp $@
	rm -f $@.tmp

clean:
	rm -rf $(BUILD)
