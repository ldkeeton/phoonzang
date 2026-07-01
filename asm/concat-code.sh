#!/bin/bash
# Concatenate all core algorithm source files into /tmp/code_out.txt
out="$(cd "$(dirname "$0")" && pwd)/stats/code_out.txt"
dir="$(cd "$(dirname "$0")" && pwd)"

echo "# === algorithm sources ===" > "$out"

for f in \
    lib/model.py \
    lib/decode.py \
    lib/phases/seed.py \
    lib/phases/sidecar.py \
    lib/phases/carve.py \
    lib/phases/trampoline.py \
    lib/phases/error.py \
    lib/phases/recursive.py \
    lib/phases/prune.py \
    lib/phases/settle.py \
    lib/phases/forcecode.py \
    lib/phases/arbiter.py \
    main.py; do
    echo "" >> "$out"
    echo "# ── $f ──" >> "$out"
    echo "" >> "$out"
    cat "$dir/$f" >> "$out"
done

echo "Wrote $out ($(wc -l < "$out") lines)"
