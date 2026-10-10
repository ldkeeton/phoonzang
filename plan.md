# Plan: Mixed C/ASM Build with "Hot" C

## 1. Goal

Build `DS.EXE` / `DS.elf` from a mixture of disassembled ASM and compiled Manx
Aztec C, where the C is **hot**:

- Editing `asm_DSAVANT/<binary>/aztec_<name>.c` and clicking **Debug**
  compiles the change into the EXE and ELF.
- `ds.asm` references each routine via `%include "ds/aztec_<name>.asm"`
  (no inlining into the master listing).
- Untouched compiler-sourced C still reproduces the original bytes
  (semantic/byte identical), so `make verify` stays green.

Non-goals for this pass: debugger source mapping into `.c` (asm-level only),
and growing a routine beyond its original length.

---

## 2. Why this is needed (current behavior)

- The build consumes routine bytes from the mux cache (`cache.load_or_build`
  -> `to_override` -> `override['code']`). The `.c` files written by
  `_write_aztec_c` (`main.py:359`) are documentation only; editing them has no
  effect.
- The C routine is currently **inlined** into `ds.asm` (the `c_labels` branch in
  `_partition_function_records`, `compare.py:2007`); the per-routine `.asm`
  fragment is gone. Task 3 asks for the normal `%include` behavior.
- `_aztec_c_overrides` (`main.py:624`) runs **after** `t_disasm`
  (`main.py:595`), so the mux's DOSBox work is billed to `verify+emit`
  (`main.py:695`). This is what made a `vinstall` build report
  `verify+emit: 1428.3s` while its real verify breakdown summed to ~15s.

 

---

## 3. Target architecture

### 3.1 Directories

| Path | Lifetime | Produced by | Contents |
|------|----------|-------------|----------|
| `asm_prebuild_<project>/` | **Never wiped by clean**; manual delete + `make prebuild` | `make prebuild <project>` | Long-running DOSBox analysis: winners manifest, extracted per-routine C, baseline compiled objects. Rebuilt only when tools change or extraction heuristics change. |
| `asm_cache_<project>/` | Wiped by `make clean` and `make build`; **survives Debug** | build / debug | Content-hash -> compiled result for the current session. Lets Debug recompile only changed C. |
| `asm_<project>/` | Wiped by `make build` | `make build` | Generated `<bin>.asm`, `<bin>/*.asm`, seeded `<bin>/*.c`, `build_out/`. |
| `apps/<project>/` | input | — | Original binaries. |
| `asm/tools/dos_compilers/...` | input | — | Vendored Manx Aztec toolchains + sources. |

### 3.2 `asm_prebuild_<project>/` layout

```
asm_prebuild_<project>/
  manifest.json                     # winners + provenance (see below)
  src/<binary>/<label>.c            # extracted seed C (function + preamble)
  objs/<sha1>.json                  # baseline compiled code+fixups (per module)
```

`manifest.json` per routine:
```
label -> {
  "source_version": "v340a",
  "file": "open.c",
  "compiler": "v52a",
  "includes": "v340a",
  "original_length": 125,
  "extracted": true
}
```

### 3.3 `asm_cache_<project>/` layout

```
asm_cache_<project>/
  cobjs/<sha1>.json                 # compiled code+fixups keyed by content hash
```

Key = `sha1(c_text + "\0" + compiler + "\0" + includes + "\0" + flags)`.

### 3.4 Compile-cache lookup order

`asm_cache/<sha1>` -> `asm_prebuild/objs/<sha1>` -> compile via DOSBox.
New edits are written to `asm_cache`. `make prebuild` writes `asm_prebuild`.

### 3.5 Build data flow

```
make prebuild <project>   (rare; expensive)
  tools/ -> mux search -> winners -> extract fn -> compile+validate
        -> asm_prebuild_<project>/{manifest.json, src/, objs/}

make build <project>      (verification; wipes asm_<project> + asm_cache)
  clean -> seed <bin>/*.c from asm_prebuild/src
        -> compile/splice (objs reused; no DOSBox if untouched)
        -> nasm -> build_out/EXE -> byte/semantic verify (green)

Debug = make elf-rebuild <project> <bin>   (hot loop; no clean)
  for each manifest routine with a .c:
     compile current .c (asm_cache -> prebuild -> DOSBox)
     -> regenerate <bin>/aztec_<name>.asm (C-only resplice)
  -> nasm EXE + ELF
```

---

## 4. Tasks

### Task 1 - Function extractor (exact function, not whole file)

New `extract_routine(module_text, symbol)` in `lib/aztec/`
(`sources.py` or a new `extract.py`):

- Split a module into **preamble** (copyright, `#include`, `extern`,
  `typedef`, `#define`, file-scope `static`) and top-level **function blocks**.
- Locate definitions with the existing index (`_definition_files`,
  `sources.py:137`); scan to the matching `}` at depth 0.
- Include a return type placed on its own line (`malloc.c`:
  `char *\nrealloc(...)`).
- Copy `#ifdef` regions verbatim (e.g. `croot.c` `Croot` contains
  `#ifdef REDIR`).
- Return `preamble + target_function`, or `None` on ambiguity.

Seeding (`_write_aztec_c` -> `_seed_aztec_c`):

- For each recovered routine, attempt extraction, compile it, and compare the
  **masked** bytes to the original (`mux.compare`). Match -> write the extracted
  `.c` (`extracted: true`); otherwise write the whole-module `.c`
  (`extracted: false`). Quirk 3 permits the duplicate.
- Only the target symbol is ever compiled into the fragment, so the original
  ASM length is preserved regardless of which file form is used.

### Task 2 - Hot C

- **Build-time compile.** `_aztec_c_overrides` (`main.py:337`) reads the
  current `.c` and compiles it with the manifest's `compiler`/`includes`
  (`compile_module`, `compile.py:118`), extracts `normalize(label)`, and yields
  `{code, fixups}`. Remove the cached-bytes path as the source of truth.
- **NOP-fill / grow.** In `_apply_c_overrides` (`compare.py:1723`), fix the
  replacement window to `[start, start+original_length)` (new manifest field):
  - compiled shorter -> copy bytes, fill tail with `0x90` (NOP);
  - compiled longer -> **hard error** (layout would break).
- **Seed-if-absent.** `_seed_aztec_c` writes `.c` / manifest entries only when
  absent, so a no-clean Debug run respects edits.
- **Timing fix.** Move the `_aztec_c_overrides` call **above** `t_disasm`
  (`main.py:595`) so compile time is not billed to `verify+emit`.

### Task 3 - Include, not inline

- Revert the `c_labels` inlining: remove the `c_labels` parameter (`main.py`)
  and the inline branch in `_partition_function_records` (`compare.py:2007`),
  and do **not** subtract winners from `split_functions`.
- Result: winners remain split roots, so `_partition_function_records` writes
  `ds/aztec_<name>.asm` and `ds.asm` receives
  `%include "ds/aztec_<name>.asm"`.

---
 
## 6. `make build <project>`

- `cmd_clean` wipes `asm_<project>` **and** `asm_cache_<project>`.
- Seed `<bin>/<label>.c` from `asm_prebuild/<bin>/<label>.c` (seed-if-absent).
  If `asm_prebuild` is missing, hard-error pointing at `make prebuild`.
- Compile/splice each manifest routine: `asm_cache` -> `asm_prebuild/objs` ->
  DOSBox compile. Untouched C resolves from `asm_prebuild`, so no DOSBox.
- NASM -> `build_out/EXE`, then byte/semantic verify (must stay green).

---

## 7. Debug - C-only resplice

New `resplice_c(app, binary)` invoked by `cmd_elf_rebuild` (`make.py:831`)
before `_nasm_build` + `_nasm_elf_build`:

- For each manifest routine with a `.c`:
  - read `asm_<project>/<bin>/<label>.c`;
  - compile (`asm_cache` -> `asm_prebuild` -> DOSBox);
  - build the override, overlay original fixup bytes, and format to records via
    `_c_bytes_to_records`;
  - write only `<bin>/aztec_<name>.asm`. **Touch nothing else.**
- This preserves quirk 2a: hand-edited non-C `.asm` files survive.
- Local labels (`@..<name>.lN`) are not persisted, so **synthesize** them:
  disassemble the compiled code, map internal branch targets in
  `[base, base+len)` to `@..<name>.lN`, insert label records, and pass as
  `local_labels` to `_c_bytes_to_records`.
- Global labels come from `<bin>_labels.json` (`{addr: name}`).
- Assumes a prior `make build` supplied the manifest + label context.

Debug does **not** wipe `asm_cache`, so repeated clicks only recompile files
whose content hash changed.

---
 
Cache policy:
 
- `asm_cache_<project>` - wiped by `make clean` / `make build`; survives Debug.

---

## 9. Verification semantics

- `make build`: clean -> seed -> compile -> **byte/semantic green** (untouched C).
- Debug / `elf-rebuild`: **no** byte-exactness enforcement; intentional C edits
  allowed.

---

## 10. Known quirks (accepted)

 
 With an `.asm` and `.c` side by side, the `.asm` is ignored - it is
   regenerated from the C (`cc` -> object -> disassemble to NASM).
    - 2a. With no `.c`, the `.asm` is authoritative; editing it changes the EXE
      with no DOSBox round-trip.
 If a single function cannot be extracted, duplicated C files are allowed;
   only the relevant function is compiled into the fragment.

---

## 11. Risks / constraints

- Size-changing manual edits to **non-C** `.asm` can stale the C routines'
  fixed relocation addresses; same-size edits are safe.
- Growing a C routine is unsupported (hard error); shrinking NOP-fills.
- Local-label synthesis is required because local labels are not persisted.
- DWARF maps to the regenerated `aztec_*.asm` (breakpoints there), not to `.c`.

---

## 12. Implementation order (bottom-up)

1. `compare.py`: revert `c_labels` inline; NOP-fill + hard-error window.
2. `lib/aztec`: `extract_routine`; ~~content-hash compile cache~~ **DONE**; manifest
   `original_length` + `extracted`.
3. `main.py`: compile-from-C in `_aztec_c_overrides`; seed-if-absent;
   ~~move call above `t_disasm`~~ **DONE**; seed from `asm_prebuild`.
4. `make.py`: ~~`prebuild` command; `cmd_clean` also clears `asm_cache`~~ **DONE**;
   `resplice_c` wired into `elf-rebuild`.
5. Makefile / help / docs.

---

## 13. Validation

 
  `make build DSAVANT` -> verify green; `ds.asm` has
   `%include "ds/aztec_Croot.asm"`; `aztec_Croot.c` contains only `Croot`
   (extracted).
  `make elf-rebuild DSAVANT ds` -> EXE + ELF; breakpoint resolves in
   `aztec_Croot.asm`.
 Same-size edit to `aztec_Croot.c` -> Debug -> `aztec_Croot.asm` and ELF
   change; a hand-edited non-C `.asm` is untouched; repeated Debug clicks are
   fast (`asm_cache` hit).
  Shrink edit -> NOP-fill; grow edit -> hard error.
  Repeat `make build` -> edits wiped, verify green, no full recompile.

---

## 14. Out of scope this pass

- Debugger `.c` line mapping (DWARF).
- Growing/relayout of the image.
- Replacing NASM with a DOS-native toolchain (`AS.EXE`/`LN.EXE`); NASM remains
  the assembler because it backs ELF/DWARF/GDB and the verifier.
