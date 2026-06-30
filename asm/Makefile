PY := python3
CMD := check clean run verify rebuild run-dosemu help all

help:
	@$(PY) make.py --help

all:
	@$(PY) make.py

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
