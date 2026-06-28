NASM   := nasm -w-number-overflow
ORIG   := $(CURDIR)/../DSAVANT
ASM_DIR := $(CURDIR)
BUILD  := build_out

OVRS := vinit vbase vdopt vmele vmexe vmaze vmnpc vpcvw vpclv vpcmk vpops vtrea vmext
DRVS := vga ega play
ALL_BINS := ds $(OVRS) $(DRVS)

# Auto-detect CPU cores for parallel builds
MAKEFLAGS += --jobs=$(shell nproc 2>/dev/null || echo 4)

.PHONY: all asm build verify run clean exact-bytes

# ── Default: two-phase workflow ────────────────────────────────────────────
all: 
	rm -rf $(BUILD) *.asm
	$(MAKE) asm build

# ── Phase 1: Generate .asm from originals ──────────────────────────────────
asm: $(addprefix $(ASM_DIR)/, $(addsuffix .asm, $(ALL_BINS)))

$(ASM_DIR)/%.asm:
	python3 main.py $* $(EXACT_FLAG)

# ── Exact-byte mode: generate + build with strict byte verification ────────
exact-bytes:
	rm -rf $(BUILD) *.asm
	$(MAKE) EXACT_FLAG="--exact-bytes" asm build

# ── Phase 2: Assemble .asm → build_out ─────────────────────────────────────
build: $(BUILD)/game-ready

$(BUILD)/game-ready: $(addprefix $(BUILD)/, $(addsuffix .ovr, $(OVRS))) \
                     $(BUILD)/DS.EXE $(addprefix $(BUILD)/, $(addsuffix .DRV, $(DRVS)))
	tar -cf - --exclude='*.OVR' --exclude='*.DRV' --exclude='DS.EXE' -C $(ORIG) . | tar -xf - -C $(BUILD)/
	@touch $@

$(BUILD)/%.ovr: $(ASM_DIR)/%.asm | $(BUILD)
	$(NASM) -O0 -f bin -o $@ $<

$(BUILD)/%.DRV: $(ASM_DIR)/%.asm | $(BUILD)
	$(NASM) -O0 -f bin -o $@ $<

$(BUILD)/DS.EXE: $(ASM_DIR)/ds.asm | $(BUILD)
	$(NASM) -O0 -f bin -o $@ $<

$(BUILD):
	mkdir -p $@

verify:
	python3 main.py --verify

# ── Run ────────────────────────────────────────────────────────────────────
run: build
	dosbox -c "mount c $(BUILD)" -c "c:" -c "DS.EXE"

run-dosemu: build
	dosemu -K "$(BUILD)" -E "DS.EXE" -S -q

# ── Clean ──────────────────────────────────────────────────────────────────
clean:
	rm -rf $(BUILD)
	rm -rf *.asm