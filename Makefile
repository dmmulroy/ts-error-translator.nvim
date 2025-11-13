.PHONY: test build

test:
	./tests/run_tests.sh

build:
	node build-lua-db.js
