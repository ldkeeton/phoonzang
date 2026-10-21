PY := python3
ASM := disassembler
CMD := name refs init libcheck check clean run verify rebuild elf-rebuild set-baseline charts help all build prebuild decompile test readme

# The root has a `readme/` directory, so the target of the same name needs to
# be phony or make reports it "up to date" and skips the recipe.
.PHONY: $(CMD) stats-diff flow

help:
	@cd $(ASM) && $(PY) -m make --help

charts:
	@cd $(ASM) && $(PY) -m make --charts

set-baseline:
	@cd $(ASM) && $(PY) -m make --set-baseline

stats-diff:
	@cd $(ASM) && $(PY) -m make --stats-diff

# Pipeline analysis, never part of a build.  Build first with ASM_STAGELOG=1 so
# the stage ledgers exist, e.g. `ASM_STAGELOG=1 make build DSAVANT`, then
# `make flow ARGS="--check"` (also --lock, --baseline, --stages, ...).
flow:
	@cd $(ASM) && $(PY) -m flow.generate $(ARGS)

ifneq ($(filter $(CMD),$(MAKECMDGOALS)),)
name refs init libcheck check clean run verify rebuild elf-rebuild all build prebuild decompile test readme:
	@cd $(ASM) && $(PY) -m make --$@ $(filter-out $(CMD),$(MAKECMDGOALS))
$(filter-out $(CMD),$(MAKECMDGOALS)):
	@true
endif

.DEFAULT_GOAL := help
