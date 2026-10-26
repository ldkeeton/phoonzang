#!/usr/bin/env bash
# Run deziggler's tests and build build_out/libdeziggler.so (for python/deziggler.py).
set -euo pipefail

ZIG=zig
HERE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
OUT="$HERE/build_out"
mkdir -p "$OUT"

"$ZIG" test "$HERE/src/deziggler.zig" --cache-dir "$HERE/.cache"
"$ZIG" build-lib -dynamic "$HERE/src/capi.zig" -O ReleaseSafe --name deziggler \
    --cache-dir "$HERE/.cache" -femit-bin="$OUT/libdeziggler.so"
