#!/usr/bin/env bash

# Run all plenary tests for ts-error-translator
# Usage: ./tests/run_tests.sh

set -e

echo "Running ts-error-translator Lua tests..."
echo ""

# Navigate to the engine directory (parent of tests/)
cd "$(dirname "$0")/.."

# Run plenary tests
nvim --headless -c "PlenaryBustedDirectory tests/spec/" -c "quit"

echo ""
echo "All tests completed!"
