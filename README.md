<!-- Auto-generated from readme/README.md.tmpl; run make readme to regenerate. -->

# PHOONZANG

The 16-bit disassembler and decompiler. Currently focused on Wizardry VII: Crusaders of the Dark Savant. Long term plan is to build database of decompiled dos apps and games.

Wizardry VII seems to have been originally compiled with Manx Aztec v4.2b

The `.asm` files NASM syntax directly disassembled from EXE. 

From `.asm` we create `.s` and `.c` files which are original DOS sources.


## The project has two parallel goals:
```
- Create layout-independent high-quality ASM files
- Reverse the ASM to C code 
```

## To get started
```
- Put original game files in ./apps/DSAVANT
- make init to download dos_compiler
- make build creates .ASM files
- make verify confirms byte-exact (a few NASM quirks are allowed)
```

## Rules are applied to `src_DSAVANT`:

```
- If a `file.c` or `file.s` exists, it's verified against matching `file.asm`. 
- S files -> assembled in dosbox by Manx Aztec AS.EXE
- C files -> compiled in dosbox by Manx Aztec CC.EXE
- ASM files -> assembled on host machine by NASM -> Checked against original EXE
```

## Decompilation loop

```
- Pick any ASM
- Try to write a C version. 
- Hint: If it contains `call aztec_csav`, it will be a C routine
- Run make name tooling to build sidecar data
- Run make rebuild to check if it's byte exact
```

## A VS Code extension is provided
```
- Pick any ASM
- Right click and Choose: Make C file
- Runs agent and starts reversing the file semi-automatically
- Requires encourgement to be complete, rename all symbols, add any sidecar data
- Claude is significantly better than OpenAI at reversing without giving up
- Review the git changes, then repeat
```

## Wizardry VII coverage

Progress: **358 / 1103** (32.5%).

![C coverage heatmap](readme/heatmap.svg)

## Make targets
 <details>
<summary> 
Expand
</summary>

| command | what |
|---|---|
| `make init` | sparse-clone only the dos_compilers folders listed in sidecars, |
| `make libcheck` | rebuild Aztec v4.2b C.LIB from dos_compilers/aztec_src/ and compare to the shipped one |
| `make all` | clean, headers, build, verify all, |
| `make all notest` | the same, without the tests at the end |
| `make build [PROJECT]` | asm + nasm + assets for every binary (default: all |
| `make prebuild [PROJECT...]` | clean .cache, rebuild aztec libs + signature DB, run the Aztec C mux |
| `make run PROJECT` | run game in dosbox-x |
| `make verify [PROJECT...]` | verify one or all projects |
| `make clean [PROJECT...]` | clean one or all projects (no args: delete .cache, |
| `make purge [PROJECT...]` | delete hand-owned .c/.s/.asm sources and build_out |
| `make purge revert [PROJECT...]` | restore missing/generated hand sources from Git HEAD; |
| `make info PROJECT BIN ROUTINE` | fragment span, co-tenant routines, callers, source |
| `make refs PROJECT BIN ROUTINE` | list the symbols ROUTINE references that still |
| `make data PROJECT SEG OFFSET [BIN]` | bytes at DS/SS/ES/CS:OFFSET, its canonical name |
| `make data [PROJECT [FILE...]]` | decode the sidecar's data_files (NEWGAME.DBS, ...) into |
| `make rebuild [PROJECT [BIN [ROUTINE]]]` | recompile .c (must match the original bytes; |
| `make elf-rebuild [PROJECT [BIN]]` | full rebuild from current sources (C resplice + |
| `make set-baseline` | pin current stats as the local baseline |
| `make stats-diff` | current-vs-baseline KPI delta (+ delta.json) |
| `make charts` | regenerate all PNGs + CSVs from existing stats |
| `make readme` | regenerate README.md + readme/heatmap.svg |
| `make test [TEST...]` | run the unit test suite in disassembler/tests (optionally |
| `make test measure` | time every test with the budget off; list the slow ones |
| `make set-baseline` | # pin -> .cache/_baseline |
| `make stats-diff` | # read the delta |
</details>

 
## VS Code extension
 <details>
<summary> 
Expand
</summary>
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

</details>
