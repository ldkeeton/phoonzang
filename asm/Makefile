NASM   := nasm -w-number-overflow
ORIG   := $(CURDIR)/../DSAVANT
ASM_DIR := $(CURDIR)
BUILD  := build_out

OVRS := vinit vbase vdopt vmele vmexe vmaze vmnpc vpcvw vpclv vpcmk vpops vtrea vmext
DRVS := vga ega play
ALL_BINS := ds $(OVRS) $(DRVS)

# Auto-detect CPU cores for parallel builds
MAKEFLAGS += --jobs=$(shell nproc 2>/dev/null || echo 4)

.PHONY: all asm build verify run clean exact-bytes rebuild

# ── Default: two-phase workflow ────────────────────────────────────────────
all: 
	rm -rf $(BUILD) *.asm
	if [ -d structs ]; then find structs -maxdepth 1 -name '*.inc' -delete; fi
	$(MAKE) asm build

# ── Phase 1: Generate .asm from originals ──────────────────────────────────
asm: $(addprefix $(ASM_DIR)/, $(addsuffix .asm, $(ALL_BINS)))

$(ASM_DIR)/%.asm:
	python3 main.py $* $(EXACT_FLAG) $(CASCADE_FLAG)

# ── Exact-byte mode: generate + build with strict byte verification ────────
exact-bytes:
	rm -rf $(BUILD) *.asm
	if [ -d structs ]; then find structs -maxdepth 1 -name '*.inc' -delete; fi
	$(MAKE) EXACT_FLAG="--exact-bytes" asm build

# ── Phase 2: Assemble .asm → build_out ─────────────────────────────────────
build: $(addprefix $(BUILD)/, $(addsuffix .ovr, $(OVRS))) \
        $(BUILD)/DS.EXE $(addprefix $(BUILD)/, $(addsuffix .DRV, $(DRVS)))
	tar -cf - --exclude='*.OVR' --exclude='*.DRV' --exclude='DS.EXE' -C $(ORIG) . | tar -xf - -C $(BUILD)/

$(BUILD)/%.ovr: $(ASM_DIR)/%.asm | $(BUILD)
	$(NASM) -O0 -f bin -o $@ $<

$(BUILD)/%.DRV: $(ASM_DIR)/%.asm | $(BUILD)
	$(NASM) -O0 -f bin -o $@ $<

$(BUILD)/DS.EXE: $(ASM_DIR)/ds.asm | $(BUILD)
	$(NASM) -O0 -f bin -o $@ $<

$(BUILD):
	mkdir -p $@

rebuild-%:
	python3 main.py $(CASCADE_FLAG) $*; \
	case $* in ds) out=DS.EXE ;; vga|ega|play) out=$*.DRV ;; *) out=$*.ovr ;; esac; \
	nasm -w-number-overflow -O0 -f bin -o $(BUILD)/$$out $*.asm

ifdef NOT_MODULE
rebuild:
	$(MAKE) $(addprefix rebuild-, $(filter-out $(NOT_MODULE),$(ALL_BINS)))
else ifdef MODULE
rebuild: rebuild-$(MODULE)
else
rebuild:
	@echo "Usage: make rebuild MODULE=<name> or NOT_MODULE=<name>"; exit 1
endif

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
	if [ -d structs ]; then find structs -maxdepth 1 -name '*.inc' -delete; fi