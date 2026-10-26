#!/usr/bin/env bash
# Build the Zig disassembler and regenerate src_DSAVANT/ (or the directory
# given as the first argument, relative to the repository root).
set -euo pipefail

ZIG=zig
HERE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT="$(dirname "$HERE")"
OUT="$HERE/build_out"
mkdir -p "$OUT"

"$ZIG" build-exe -O ReleaseSafe --dep deziggler -Mmain="$HERE/src/main.zig" \
    -Mdeziggler="$ROOT/deziggler/src/deziggler.zig" --name zig_disassembler \
    --cache-dir "$HERE/.cache" -femit-bin="$OUT/zig_disassembler"

cd "$ROOT"
"$OUT/zig_disassembler" "$@"
