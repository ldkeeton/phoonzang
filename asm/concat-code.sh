#!/bin/bash
# Concatenate ALL .py files under the script's directory into /tmp/code_out.txt
out="$(cd "$(dirname "$0")" && pwd)/stats/code_out.txt"
dir="$(cd "$(dirname "$0")" && pwd)"

echo "# === algorithm sources ===" > "$out"

# Use find to get all .py files, sorted for consistency
while IFS= read -r -d '' f; do
    # Strip the leading $dir/ for a cleaner display (optional)
    rel="${f#$dir/}"tr
    echo "" >> "$out"
    echo "# ── $rel ──" >> "$out"
    echo "" >> "$out"
    cat "$f" >> "$out"
done < <(find "$dir" -name '*.py' -type f -not -path "$dir/tools/*" -print0 | sort -z)

echo "Wrote $out ($(wc -l < "$out") lines)"