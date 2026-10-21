# PHOONZANG

The 16-bit disassembler and decompiler. Currently focused on Wizardry VII: Crusaders of the Dark Savant. Long term plan is to build database of decompiled dos apps and games.

Wizardry VII seems to have been originally compiled with Manx Aztec v4.2b

## The project has two parallel goals:
```
- Create layout-independent high-quality ASM files
- Reverse the ASM to C code 
```

## To get started
```
- Put original game files in ./apps/DSAVANT
- make init to download dos_compiler
- make all rebuilds EXE
- Layout independent ASM coming soon to allow full modding
```

## Rules are applied to `src_DSAVANT` when recompiling back to EXE:

```
- If a `file.c` exists, it's used instead of the matching `file.asm`. 
- This allows individual ASM files to be rewritten as C over time.
- The root asm files are layout with no code them, so original exe is still built. 
- When enough code is C, then end goal is to change over to full C compilation.
- A binary's sidecar `bands` (game, library, aztec) sort its files into band folders (`ds/game/`, ...).
- Routines in an `asm_only` band are stamped `; asm only`: they have no C equivalent and are never counted as C.
- C files -> compiled in dosbox by Manx Aztec -> Checked against ASM files
- ASM files -> compiled on host machine by NASM -> Checked against original EXE
```

## Decompilation loop

```
- Pick any ASM
- Try to write a C version
- Run make rebuild to check if it's byte exact
```

## A VS Code extension is provided
```
- Pick any ASM
- Right click and Choose: Make C file
- Runs Claude agent and starts reversing the file
- Encourage it to be complete, rename all symbols, add any sidecar data
- Review the git changes, then repeat
```

## Debugger provided
```
- Beta debugger allows stepping through ASM from vscode while running in dosbox
- Modify sourceFileMap in launch.json to match your working folder
```


## Wizardry VII coverage

Progress: **62 / 1247** (5.0%). 102 asm-only routines (sidecar `bands` with `asm_only`) have no C equivalent and are not counted.

![C coverage heatmap](readme/heatmap.svg)
 
## Make targets

Run from the repo root.

| command | what |
|---|---|
| `make init` | sparse-clone only the dos_compilers folders listed in sidecars, |
| `make libcheck` | rebuild Aztec v4.2b C.LIB from dos_compilers/aztec_src/ and compare to the shipped one |
| `make all` | prebuild (clean .cache + Aztec mux), build, verify all, elf-rebuild, make test, make test slow |
| `make build PROJECT [BIN]` | asm + nasm + assets (seeds .c; runs prebuild first if missing) |
| `make prebuild [PROJECT...]` | clean .cache, rebuild aztec libs + signature DB, run the Aztec C mux |
| `make run PROJECT` | run game in dosbox-x |
| `make verify [PROJECT...]` | verify one or all projects |
| `make clean [PROJECT...]` | clean one or all projects (no args: delete .cache, |
| `make rebuild [PROJECT [BIN]]` | recompile .c (must match the original bytes; |
| `make elf-rebuild [PROJECT [BIN]]` | full rebuild from current sources (C resplice + |
| `make set-baseline` | pin current stats as the local baseline |
| `make stats-diff` | current-vs-baseline KPI delta (+ delta.json) |
| `make charts` | regenerate all PNGs + CSVs from existing stats |
| `make readme` | regenerate README.md + readme/heatmap.svg |
| `make test [TEST...]` | run the unit test suite in disassembler/tests (optionally |
| `make test slow` | run only the @slow tests (>= 100 ms) |
| `make set-baseline` | # pin -> .cache/_baseline |
| `make stats-diff` | # read the delta |

## Layout

```
./apps/DSAVANT/   input programs (apps.json lists active ones)
./disassembler/   decoder, phases, emitter, verifier, disassembler
./src_DSAVANT/    generated NASM (+ C) for Wizardry 7
./debugger/       16 bit TSR dbg proxy for inside dosbox
```
 
## VS Code extension

`.vscode/asm-nav/` is a small local extension for the generated C and NASM
(`src_<PROJECT>/`). Install once, then reload the window:

```
ln -s "$PWD/.vscode/asm-nav" ~/.vscode/extensions/local.phoonzang-asm-nav-0.0.1
```

- **F12 / Shift+F12** from C into the NASM labels (and `equ` constants), scoped
  to the current binary; `name_` inside `#asm` blocks resolves to `name`
- **Hover**: address, sidecar name/note, vendor source, size
- **Ctrl+Alt+G** go to address (`4b46` or `vinstall:2d86`)
- **Name this routine** (right-click): writes the sidecar `function_names` entry
- **Diff against vendor seed**: what relabelling changed (also via the CodeLens)
- **Manx `cc` check on save**: the real compiler's errors and warnings as
  squiggles on save and open (`PHOONZANGAsmNav.checkOnSave`, `checkOnOpen`), via `.vscode/cccheck.py`; the
  "Manx cc: check current file" task does the same without the extension
- **Make C file**: agentic decompilation (currently one file at a time)