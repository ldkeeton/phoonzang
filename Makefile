PY := python3
ASM := asm
CMD := init check clean run verify rebuild elf-rebuild set-baseline charts concat-code help all build prebuild decompile test readme

# The root has a `readme/` directory, so the target of the same name needs to
# be phony or make reports it "up to date" and skips the recipe.
.PHONY: $(CMD) stats-diff

help:
	@cd $(ASM) && $(PY) -m make --help

charts:
	@cd $(ASM) && $(PY) -m make --charts

set-baseline:
	@cd $(ASM) && $(PY) -m make --set-baseline

stats-diff:
	@cd $(ASM) && $(PY) -m make --stats-diff

ifneq ($(filter $(CMD),$(MAKECMDGOALS)),)
init check clean run verify rebuild elf-rebuild all build prebuild decompile test readme:
	@cd $(ASM) && $(PY) -m make --$@ $(filter-out $(CMD),$(MAKECMDGOALS))
$(filter-out $(CMD),$(MAKECMDGOALS)):
	@true
endif

.DEFAULT_GOAL := help
