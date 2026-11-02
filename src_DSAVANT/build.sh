#!/usr/bin/env bash

# Change this list to choose which .lnk targets to try.
TARGETS=(play ega vga ds)

cd "$(dirname "$0")"
source /usr/bin/watcom/owsetenv.sh
mkdir -p build_out/obj

for target in "${TARGETS[@]}"; do
    objects=()
    while IFS= read -r module; do
        [[ -z "$module" || "$module" == \#* ]] && continue

        if [[ -f "$module.s" ]]; then
            wasm -fo="build_out/obj/${module//\//_}.obj" -i=include "$module.s"
            objects+=("build_out/obj/${module//\//_}.obj")
        elif [[ -f "$module.c" ]]; then
            wcc -bt=dos -ms -i=include -fo="build_out/obj/${module//\//_}.obj" "$module.c"
            objects+=("build_out/obj/${module//\//_}.obj")
        fi
    done < "$target.lnk"

    wlink system dos name "build_out/$target.wcc" file { "${objects[*]}" }
done
