PY := python3
CMD := check clean run verify rebuild set-baseline charts concat-code help all build

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
check clean run verify rebuild build:
	@$(PY) make.py --$@ $(filter-out $(CMD),$(MAKECMDGOALS))
$(filter-out $(CMD),$(MAKECMDGOALS)):
	@true
endif

.DEFAULT_GOAL := help
