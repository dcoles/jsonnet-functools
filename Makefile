PREFIX ?= /usr/local
JSONNET_VERSION ?= $(shell jsonnet --version | awk '{print $$NF}')

MODULE_DIR ?= $(PREFIX)/share/jsonnet-$(JSONNET_VERSION)

.PHONY: install
install:
	install -d "${MODULE_DIR}/functools"
	install -t "${MODULE_DIR}/functools" functools/*.libsonnet

.PHONY: reformat
reformat:
	jsonnetfmt -i functools/*.libsonnet

.PHONY: test
test:
	jsonnet tests.jsonnet
