NASM   := nasm -w-number-overflow
BUILD  := build

MODULES := lib/equ.asm lib/data.asm lib/serial.asm lib/hex.asm lib/proto.asm lib/bp.asm lib/cmds.asm lib/int.asm lib/init.asm

.PHONY: all clean

all: $(BUILD)/gdbsrv.com $(BUILD)/test.com $(BUILD)/dummy.elf $(BUILD)/RUNTEST.BAT

$(BUILD):
	mkdir -p $@

$(BUILD)/gdbsrv.com: gdbsrv.asm $(MODULES) | $(BUILD)
	$(NASM) -O0 -f bin -o $@ $<

$(BUILD)/debug.com: debug.asm $(MODULES) | $(BUILD)
	$(NASM) -O0 -f bin -o $@ $<

$(BUILD)/test.com: test.asm | $(BUILD)
	$(NASM) -O0 -f bin -o $@ $<

$(BUILD)/dummy.elf: dummy.asm | $(BUILD)
	$(NASM) -O0 -f elf32 -o $@ $<

$(BUILD)/RUNTEST.BAT: RUNTEST.BAT | $(BUILD)
	cp $< $@

clean:
	rm -rf $(BUILD)
