NASM   := nasm -w-number-overflow
BUILD  := build
ELFASM := nasm -w-number-overflow

MODULES := lib/equ.asm lib/data.asm lib/serial.asm lib/hex.asm lib/proto.asm lib/bp.asm lib/cmds.asm lib/int.asm lib/init.asm
DBG_MODULES := lib/equ.asm lib/data.asm lib/serial.asm lib/hex.asm lib/proto.asm lib/bp.asm lib/cmds.asm lib/int.asm

.PHONY: all clean

all: $(BUILD)/gdbsrv.com $(BUILD)/test.com $(BUILD)/debug.com $(BUILD)/test.elf $(BUILD)/debug.elf $(BUILD)/dummy.elf $(BUILD)/RUNTEST.BAT

$(BUILD):
	mkdir -p $@

# bin (executable)
$(BUILD)/gdbsrv.com: gdbsrv.asm $(MODULES) | $(BUILD)
	$(NASM) -O0 -f bin -o $@ $<

$(BUILD)/debug.com: debug.asm $(DBG_MODULES) | $(BUILD)
	$(NASM) -O0 -f bin -o $@ $<

$(BUILD)/test.com: test.asm | $(BUILD)
	$(NASM) -O0 -f bin -o $@ $<

# elf (symbols for GDB)
$(BUILD)/test.elf: test.asm | $(BUILD)
	$(ELFASM) -O0 -f elf32 -F dwarf -o $@ $<

$(BUILD)/debug.elf: debug.asm $(DBG_MODULES) | $(BUILD)
	$(ELFASM) -O0 -f elf32 -F dwarf -o $@ $<

$(BUILD)/dummy.elf: dummy.asm | $(BUILD)
	$(ELFASM) -O0 -f elf32 -o $@ $<

$(BUILD)/RUNTEST.BAT: RUNTEST.BAT | $(BUILD)
	cp $< $@

clean:
	rm -rf $(BUILD)
