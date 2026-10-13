PY := python3
CMD := init check clean run verify rebuild elf-rebuild set-baseline charts concat-code help all build prebuild decompile test readme

help:
	@$(PY) -m make --help

charts:
	@$(PY) -m make --charts

set-baseline:
	@$(PY) -m make --set-baseline

stats-diff:
	@$(PY) -m make --stats-diff

ifneq ($(filter $(CMD),$(MAKECMDGOALS)),)
init check clean run verify rebuild elf-rebuild all build prebuild decompile test readme:
	@$(PY) -m make --$@ $(filter-out $(CMD),$(MAKECMDGOALS))
$(filter-out $(CMD),$(MAKECMDGOALS)):
	@true
endif

.DEFAULT_GOAL := help
