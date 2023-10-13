PY_DIRS=epubbuilder
VE ?= ./ve
REQUIREMENTS ?= test_reqs.txt
SYS_PYTHON ?= python3
PY_SENTINAL ?= $(VE)/sentinal
WHEEL_VERSION ?= 0.41.2
PIP_VERSION ?= 23.2.1
MAX_COMPLEXITY ?= 8
PY_DIRS ?= $(APP)

FLAKE8 ?= $(VE)/bin/flake8
PIP ?= $(VE)/bin/pip
COVERAGE ?=$(VE)/bin/coverage

all: flake8 coverage

clean:
	rm -rf $(VE)
	find . -name '*.pyc' -exec rm {} \;
	rm -rf node_modules

$(PY_SENTINAL):
	rm -rf $(VE)
	$(SYS_PYTHON) -m venv $(VE)
	$(PIP) install pip==$(PIP_VERSION)
	$(PIP) install --upgrade setuptools
	$(PIP) install wheel==$(WHEEL_VERSION)
	$(PIP) install --requirement $(REQUIREMENTS)
	touch $@

test: $(REQUIREMENTS) $(PY_SENTINAL)
	./ve/bin/python -m unittest epubbuilder.tests

flake8: $(PY_SENTINAL)
	$(FLAKE8) $(PY_DIRS) --max-complexity=$(MAX_COMPLEXITY)


coverage: $(PY_SENTINAL)
	$(COVERAGE) run --source=pagetreeepub runtests.py

.PHONY: flake8 test jshint jscs clean
