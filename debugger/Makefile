NASM   := nasm -w-number-overflow
BUILD  := build

MODULES := equ.asm data.asm serial.asm hex.asm proto.asm bp.asm cmds.asm int.asm init.asm

.PHONY: all clean

all: $(BUILD)/gdbsrv.com $(BUILD)/debug.com $(BUILD)/test.com $(BUILD)/dummy.elf

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

clean:
	rm -rf $(BUILD)
