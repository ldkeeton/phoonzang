#!/usr/bin/env bash
# Regenerate src_DSAVANT/ (or the directory given as the first argument,
# relative to the repository root). Use `make zig` to build and run.
set -euo pipefail

HERE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT="$(dirname "$HERE")"
EXE="$HERE/build_out/zig_disassembler"

START=$(date +%s.%N)
cd "$ROOT"
"$EXE" "$@"
printf '[%7.1fs] disassembly done\n' "$(echo "$(date +%s.%N) - $START" | bc)"
