.PHONY: test test-file build

test:
	XDG_CONFIG_HOME=/tmp nvim --headless -u tests/minimal_init.vim -c "PlenaryBustedDirectory tests/spec/" -c "quit"

test-file:
	@if [ -z "$(FILE)" ]; then \
		echo "Usage: make test-file FILE=tests/spec/parser_spec.lua"; \
		exit 1; \
	fi
	XDG_CONFIG_HOME=/tmp nvim --headless -u tests/minimal_init.vim -c "PlenaryBustedFile $(FILE)" -c "quit"

build:
	node build-lua-db.js
