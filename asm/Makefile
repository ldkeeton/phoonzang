PY := python3
CMD := init check clean run verify rebuild elf-rebuild set-baseline charts concat-code help all build prebuild decompile test

help:
	@$(PY) -m make --help

all:
	@$(PY) -m make

charts:
	@$(PY) -m make --charts

set-baseline:
	@$(PY) -m make --set-baseline

stats-diff:
	@$(PY) -m make --stats-diff

concat-code:
	@bash concat-code.sh

ifneq ($(filter $(CMD),$(MAKECMDGOALS)),)
init check clean run verify rebuild elf-rebuild build prebuild decompile test:
	@$(PY) -m make --$@ $(filter-out $(CMD),$(MAKECMDGOALS))
$(filter-out $(CMD),$(MAKECMDGOALS)):
	@true
endif

.DEFAULT_GOAL := help
