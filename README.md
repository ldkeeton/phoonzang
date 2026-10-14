# PHOONZANG

The 16-bit disassembler and decompiler. Currently focused on Wizardry VII: Crusaders of the Dark Savant

## To generate ASM files

```
Original game files need to be put in ./apps/DSAVANT
cd asm
make all
```

## Wizardry 7 coverage

Progress: **27 / 1035** (2.6%).

![C coverage heatmap](readme/heatmap.svg)
 
## Make targets

Run from `asm/`.

| command | what |
|---|---|
| `make init` | sparse-clone only the dos_compilers folders listed in sidecars |
| `make all` | clean, build, then verify all projects |
| `make build PROJECT [BIN]` | asm + nasm + assets (seeds .c; runs prebuild first if missing) |
| `make prebuild PROJECT [BIN]` | rebuild aztec libs + signature DB, run the Aztec C mux |
| `make run PROJECT` | run game in dosbox-x |
| `make verify [PROJECT...]` | verify one or all projects |
| `make clean [PROJECT...]` | clean one or all projects (no args: delete .cache) |
| `make rebuild [PROJECT [BIN]]` | recompile .c (must match the original bytes; |
| `make elf-rebuild PROJECT [BIN]` | full rebuild from current sources (C resplice + |
| `make decompile PROJECT BIN` | disassemble + decompile binary to .c |
| `make set-baseline` | pin current stats as the local baseline |
| `make stats-diff` | current-vs-baseline KPI delta (+ delta.json) |
| `make charts` | regenerate all PNGs + CSVs from existing stats |
| `make readme` | regenerate README.md + readme/heatmap.svg |
| `make test [TEST...]` | run the unit test suite in lib/tests (optionally |
| `make set-baseline` | # pin -> .cache/stats_baseline |
| `make stats-diff` | # read the delta |

## Layout

```
apps/           input programs (apps.json lists active ones)
asm/            decoder, phases, emitter, verifier, disassembler 
asm_DSAVANT/    generated NASM (+ C) for Wizardry 7 
debugger/       16 bit TSR dbg proxy for inside dosbox
```
 
## VS Code extension

`.vscode/asm-nav/` is a small local extension for the generated C and NASM
(`asm_<PROJECT>/`). Install once, then reload the window:

```
ln -s "$PWD/.vscode/asm-nav" ~/.vscode/extensions/local.wiz7-asm-nav-0.0.1
```

- **F12 / Shift+F12** from C into the NASM labels (and `equ` constants), scoped
  to the current binary; `name_` inside `#asm` blocks resolves to `name`
- **Hover**: address, sidecar name/note, vendor source, size
- **Ctrl+Alt+G** go to address (`4b46` or `vinstall:2d86`)
- **Name this routine** (right-click): writes the sidecar `function_names` entry
- **Diff against vendor seed**: what relabelling changed (also via the CodeLens)
- **Manx `cc` check on save**: the real compiler's errors and warnings as
  squiggles on save and open (`wiz7AsmNav.checkOnSave`, `checkOnOpen`), via `.vscode/cccheck.py`; the
  "Manx cc: check current file" task does the same without the extension
