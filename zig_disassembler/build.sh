#!/usr/bin/env bash
# Build the Zig disassembler into build_out/zig_disassembler.
# Set OPT=Debug for a fast, unoptimized build (skips LLVM).
set -euo pipefail

ZIG=zig
OPT="${OPT:-ReleaseSafe}"
HERE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT="$(dirname "$HERE")"
OUT="$HERE/build_out"
mkdir -p "$OUT"

START=$(date +%s.%N)
log() { printf '[%7.1fs] %s\n' "$(echo "$(date +%s.%N) - $START" | bc)" "$*"; }

log "building ($OPT)"
"$ZIG" build-exe -O "$OPT" --dep deziggler -Mmain="$HERE/src/main.zig" \
    -Mdeziggler="$ROOT/deziggler/src/deziggler.zig" --name zig_disassembler \
    --cache-dir "$HERE/.cache" -femit-bin="$OUT/zig_disassembler"
log "built $OUT/zig_disassembler"
