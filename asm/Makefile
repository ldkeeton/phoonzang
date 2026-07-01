PY := python3
CMD := check clean run verify rebuild run-dosemu baseline-set charts concat-code help all

help:
	@$(PY) make.py --help

all:
	@$(PY) make.py

charts:
	@$(PY) make.py --charts

baseline-set:
	@$(PY) make.py --baseline-set

concat-code:
	@bash concat-code.sh

ifneq ($(filter $(CMD),$(MAKECMDGOALS)),)
check clean run verify rebuild run-dosemu:
	@$(PY) make.py --$@ $(filter-out $(CMD),$(MAKECMDGOALS))
$(filter-out $(CMD),$(MAKECMDGOALS)):
	@true
endif

ifeq ($(filter $(CMD),$(MAKECMDGOALS)),)
%:
	@$(PY) make.py $@
endif

ifeq ($(MAKECMDGOALS),)
.DEFAULT_GOAL := help
endif
