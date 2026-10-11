PY := python3
CMD := check clean run verify rebuild elf-rebuild delta set-baseline charts concat-code help all build prebuild decompile test

help:
	@$(PY) make.py --help

all:
	@$(PY) make.py

charts:
	@$(PY) make.py --charts

set-baseline:
	@$(PY) make.py --set-baseline

concat-code:
	@bash concat-code.sh

ifneq ($(filter $(CMD),$(MAKECMDGOALS)),)
check clean run verify rebuild elf-rebuild delta build prebuild decompile test:
	@$(PY) make.py --$@ $(filter-out $(CMD),$(MAKECMDGOALS))
$(filter-out $(CMD),$(MAKECMDGOALS)):
	@true
endif

.DEFAULT_GOAL := help
