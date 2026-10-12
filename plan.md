# Plan: make every address dynamic

## 1. Goal

Turn the generated `asm_DSAVANT/**` into a **layout-independent** source tree:
every value that denotes a location, a size, or a segment offset is emitted as
an assembler expression over labels / `$` / `$$` / derived `equ`s, so that
inserting, deleting, or resizing code and data keeps the image internally
consistent **without hand-editing a single hex constant** and still reassembles
byte-for-byte.

"Lofty goal" accepted: some values are genuinely external (BIOS Data Area, PSP
fields, stack geometry, unproven immediates). Those are explicit, machine-
checked **waivers**, not silent literals.

### Definition

A generated value is **dynamic** when it is an expression the assembler
resolves from other symbols (`label`, `$, $$`, `equ` chains), such that a
layout change before it is reflected automatically. A **frozen literal** is a
bare hex/decimal value standing in for an address, size, or segment offset.

The target is: **`frozen_addr == 0`** over the emitted record stream, modulo the
documented waiver set (Section 8).

## 2. Baseline (verified 2026-10-11)

All numbers measured from the committed tree with the commands in Appendix B.

- Unit suite: **146 OK** (`python3 -m unittest discover -p 'test_*.py'`).
- `make verify DSAVANT`: **18/18** semantic (clean tree).
- `EXTRA_FLAGS=--exact-bytes make verify DSAVANT`: **17/18**; the only failure is
  `ds`, and only because it is generated in semantic mode (~1373 re-encoded
  but semantically equal bytes; generating with `--exact-bytes` closes it).
- Residual bare operands: `bare_mem`/`bare_call` = 0 modulo the driver waiver
  (`ega` 2, `play` 44) plus `vmexe` 1.
- `equ 0x…` lines: **2022** — `bss_` 1308, `cseg_` 302, `dseg_` 190,
  code/unreached labels 174, `data_` 39, `psp_` 9, `IMAGE_BASE` 19.
- Numeric `dw 0x…`: **356** — **115** are MZ/overlay header fields, **241** are
  entries inside `jumptable_*` blocks (literal / unresolved tables).
- `; 0x…` offset comments: **168486** (one per emitted line; cosmetic).
- Diagnostic (`nop` inserted at `asm_DSAVANT/ds/app_malloc.asm:0x211`):
  image 69206 → 69207 bytes; `e_ip` correctly tracked `0x3a → 0x3b`;
  `e_cblp`/`e_cp` stayed frozen (header now lies about the file length);
  a pure-insertion check shows ~125 content bytes change (real dynamic
  references) while everything else is a clean shift. The `nop` is a probe and
  must be reverted before finalization.

## 3. Address model (recap)

Read `asm/lib/format.py:8-63` for the prose model. Machine form is
`asm/lib/segments.py`:

- `org 0` flat image; file offset **F**. `IMAGE_BASE` = load offset (0x200 MZ,
  14 overlay, 0 driver). Embedded CS pointers print `label - IMAGE_BASE`.
- **CS**: `label` values are F; `SegmentModel.resolve('CS', o) = cs_origin + o`.
- **DS/SS/ES**: `resolve(...) = data_origin + o`, BSS at `o >= bss_boundary`.
  Overlays defer to the host DS and layer on `o_dorg`/`o_dsize`
  (`SegmentModel.data_space`).
- **PSP**: `psp_*` names; external segments via sidecar `external_data`.
- Overlay code load origin is `o_corg`; `SegmentModel.code_offset` /
  `host_code_offset` bridge overlay CS values to host file offsets.

The generator seams that emit frozen values are in
`asm/lib/compare/render.py` (`_render_mz_header`, `_render_ovr_header`,
`_render_data_block`, `_build_source`) and `asm/lib/compare/jumptables.py`
(`_inject_jump_tables`).

## 4. Frozen-value taxonomy

| id | value | where emitted | file-offset-dependent? |
|----|-------|---------------|------------------------|
| F1 | MZ `e_cblp`, `e_cp` (file size) | `_render_mz_header` | yes |
| F1 | MZ `e_ss`, `e_sp` (stack) | `_render_mz_header` | layout, mostly fixed |
| F2 | overlay `o_csize`, `o_dsize`, `o_bss`, `o_entry` | `_render_ovr_header` | yes |
| F3 | `cseg_<f> equ 0x<f>`, `data_<f> equ 0x<f>`, unreached `loc_*`/`leaf_*`/`io_*`/`dos_*`/`string_*`/`api_*` equ | `_build_source` 292-309 | **yes** |
| F4 | `dseg_<o>`, `bss_<o>`, `psp_<o>` equ | `_build_source` 305-309 | DS-relative; tracks data, not code |
| F5 | `times <N> db 0` gap to `data_origin` and trailing pads | `_render_data_block` | **yes** |
| F6 | `dw 0x<value>` inside `jumptable_*` | `_inject_jump_tables` | yes (table entries) |
| F7 | unrecognized inline pointer words in data blocks | `_render_data_block` | yes |
| F8 | MZ relocation-table offset word | `_build_source` `hdr[28:]` | yes |
| F9 | unproven immediates (`_fmt_imm`) | `format.py:292` | by design |
| F10 | `; 0x<F>` offset comments | `_render_records` | cosmetic only |

F3 and F5 are the values that actually **break** under the `nop` probe today;
F1 must be fixed for the resulting file to be loadable; F6/F7/F8 are the
remaining unbound *address words*; F4/F9/F10 are second-order (see waivers).

## 5. Phases

Every phase keeps `make verify DSAVANT` green in **semantic and exact** modes
and keeps the unit suite green. Never let `frozen_addr` rise.

### Phase 0 — clean the probe and instrument the target metric

- Revert `asm_DSAVANT/ds/app_malloc.asm` (drop the diagnostic `nop`); re-run
  `make build DSAVANT` + `make verify DSAVANT` to confirm 18/18.
- Extend `_count_bare_addrs` (`lib/compare/records.py`) into a
  `_count_frozen_addrs(records, header, model)` that classifies and counts
  F1–F8 by inspecting record/header text (reuse `_BARE_MEM_RE`/`_BARE_FLOW_RE`,
  add regexes for `equ 0x…`, `times <N> db`, header `dw 0x…`, `dw 0x…` in
  `jump_table`).
- Surface it through `verify()` → `summarize()` (`lib/report.py`) as
  `frozen_addr` (+ per-category breakdown) and add it to `GOOD_DOWN`.
- New test `asm/lib/tests/test_dynamic_addrs.py`:
  - `frozen_addr` per binary is recorded as a baseline in the test itself and
    may only decrease;
  - the semantic equivalence of every frozen value is asserted where a symbol
    is available.

### Phase 1 — anchors and positional layout

Add single-source anchors in `_build_source` (emitted once, top):
- `__zstart equ $$` (0), `__zcode_origin equ <cs file origin>`,
- MZ only: `__zdataseg_file equ <header_size + e_ss*16>` (the current
  literal `data_origin`),
- an `__zimage_end:` label after the last record.

Replace the literal pads in `_render_data_block` when the block is the
code→`data_origin` gap:
`times (__zdataseg_file - ($ - $$)) db 0`. This makes the DS data land at
`__zdataseg_file` even after code grows (the gap absorbs it). Keep trailing
pads positional the same way where an anchor exists.

Tests: a `data_origin`-consistency unit test on `_build_source` output; assert
`$ - $$` equals the original layout for every binary.

### Phase 2 — MZ header (F1)

In `_render_mz_header`:
- `e_cblp` → `dw (__zimage_end - __zstart) % 512`
- `e_cp`   → `dw ((__zimage_end - __zstart) + 511) // 512`
- `e_ip`   → already `dw <entry_symbol> - IMAGE_BASE`.
- `e_ss`/`e_sp`: keep literal (see waivers); document that they are stack
  geometry independent of code size, and add a guard test that the stack
  region does not collide with the (possibly grown) image.
- Use **self-relative** expressions (`label - $$`) so NASM resolves them in
  pass 1; verify no "critical expression" error.

Byte-exactness: for DS.EXE (`len=69206`) this must emit `0x0056`/`0x0088`;
for VINSTALL.EXE likewise. Add golden tests mirroring
`test_direct_flow_labels.py:test_mz_entry_symbol_renders_dynamic_e_ip`.

### Phase 3 — overlay header (F2)

Per-overlay, bind the code and data layout:
- `o_csize` → `dw (__zcode_end - __zcode_start)`
- `o_dsize` → `dw (__zdata_end - __zdata_start)` (only when the overlay's
  initialized data is emitted; otherwise literal + waiver)
- `o_entry` → `dw <entry_symbol> - o_corg` when a sidecar `entry_symbol`
  labels the overlay entry (mirror the MZ binding in `_mz_entry_symbol`).
- `o_bss` has no bytes in the file → keep literal + waiver (it is a size, and
  there is no label to diff).
- Add `entry_symbol` to each overlay entry in `asm/sidecar/DSAVANT.json` where
  the entry is recoverable; otherwise leave literal.

### Phase 4 — file-offset symbols (F3, F5, F8)

These are the values that shift under the probe. Generalize the existing
label-synthesis machinery (`_ensure_jump_case_label`, `jumptables.py:112`) into
a shared `_ensure_global_label(records, binary_data, off, name)` that splits a
`data_block` when the offset is mid-block.

- For every `cseg_<f>` operand whose target lacks a code label, place a
  `cseg_<f>:` label at F and drop the `equ` (or emit `equ $`).
- Same for `data_<f>` and for unreached `loc_*`/`leaf_*`/`io_*`/`dos_*`/
  `string_*`/`api_*` equ entries: emit the label in place instead of a frozen
  `equ`.
- `_render_mz_header`/driver header relocation word (F8): emit the offset word
  as `<reloc_target_label> - IMAGE_BASE` when the relocated word is inside the
  image; add a sidecar `relocations` note otherwise.

Round-trip requirement: `_render_records` output must still assemble to the
same bytes (guard each rewrite with `micro_assemble`, like
`_rewrite_jump_dispatchers`).

### Phase 5 — segment-offset symbols (F4)

DS-space symbols are offsets, so they do not shift with code, but they should
still be *derived* rather than frozen:
- Emit `__zdataseg_base:` at `__zdataseg_file`; place a label at each
  file-backed `dseg_<o>` offset (`__zdataseg_file + o`) and define
  `dseg_<o> equ <label> - __zdataseg_file` (value stays `o`, but now tied to
  the actual byte).
- BSS offsets have no bytes. Investigate NASM `-f bin` `resb`/zero-emit
  behaviour; if it cannot advance the location counter without emitting, model
  BSS as a pure arithmetic block:
  `bss_<o> equ __zbss_start + (o - bss_boundary)` with `__zbss_start` an anchor
  and `bss_boundary` from the header — still one derived base, no per-symbol
  literals.
- Overlay layering: same, anchored at host `__zdataseg_base` plus `o_dorg`.
- `psp_*`: the PSP offsets are runtime-absolute and independent of the image,
  so name them from the sidecar/`PSP_FIELDS` catalogue and record a waiver for
  uncatalogued `psp_<o>`.

### Phase 6 — jump tables and inline pointer words (F6, F7)

- F6: the 241 numeric `dw` in `jumptable_*` are tables the resolver marked
  `literal` (kept raw) or whose entry target fell outside the image. Re-audit
  each table:
  - extend `_entry_target` binding to overlay `host_code_offset` and the
    `cseg_`/`data_` namespaces;
  - for entries that are genuinely code pointers but out of range, synthesize a
    case label when the target is a valid image offset;
  - for entries that are real *data* words (lookup tables), leave raw but mark
    them `data_word` in the inventory so they are not counted as addresses.
- F7: add a dataflow-driven pass (sidecar-assisted) that recognizes non-switch
  pointer tables and emits labels; default to "data word" when unproven.

### Phase 7 — remaining address words and immediates (F8/F9)

- Relocation-table word (see Phase 4).
- `immediate_labels` (sidecar-proven) already handles the known immediates;
  add entries only where segment dataflow proves a space. Everything else
  stays literal **and is enumerated in the waiver list**.

### Phase 8 — optional: byte-exact generation

`ds` is the only binary that is not byte-reproducible under `--exact-bytes`
because it is generated in semantic mode (NASM picks `01 c8` for `add ax, cx`
where the original is `03 c1`). Decide:
- **Option A (recommended):** regenerate with `EXTRA_FLAGS=--exact-bytes`, so
  the emitter falls back to `db` for non-exact lines and `--exact-bytes`
  becomes 18/18. Some mnemonics become `db` + comment.
- **Option B:** add targeted "force this encoding" support in
  `lib/format.py` for the handful of ambiguous forms (register/memory ALU and
  mov r,r). Keeps readable mnemonics.

Choose one; record the decision here. Do not leave both modes inconsistent.

### Phase 9 — finalization

- Docs: update `lib/format.py` narrative, `lib/segments.py`, `lib/inventory.py`
  schema (add `frozen`/`data_word` kinds), and this plan.
- Regenerate: `make build DSAVANT`; `make verify DSAVANT` 18/18; unit suite.
- `make elf-rebuild DSAVANT ds` and `make elf-rebuild DSAVANT vinstall`.
- Commit source change set + regenerated `asm_DSAVANT/**` + `plan.md` **only on
  explicit request**.

## 6. Acceptance test — the "insert a byte" property

The defining test of the goal. For every binary:

1. Assemble the committed source → `O` (must equal the original, in the
   selected generation mode).
2. Assemble a mutated copy with one byte inserted into a code function
   (`db 0x90` / `nop`) → `M`.
3. Assert:
   - `M` assembles with no error and no "critical expression" failure;
   - `parse(M).e_cblp`/`e_cp` equal `len(M)`;
   - if the insertion fits in the code→data gap, `len(M) == len(O)` and the DS
     image `M[dataseg_file:dataseg_file+dsize] == O[...]` (data did not move);
   - the disassembly of `M` equals the disassembly of `O` with the inserted
     instruction and every control-flow target shifted by the insertion size
     (compare with capstone + target normalization);
   - no opcode operand that was an address is off by the insertion size.

Ship this as `asm/lib/tests/test_dynamic_addrs.py::test_insert_byte_property`
parameterized over a representative subset (ds, vinstall, one overlay, one
driver) — full-matrix can be a slow/opt-in test.

## 7. Verification protocol (every sub-step)

```
cd asm
python3 -m unittest discover -p 'test_*.py'
EXTRA_FLAGS=--exact-bytes make verify DSAVANT      # where applicable
make build DSAVANT && make verify DSAVANT          # 18/18 semantic
```

- `frozen_addr` must **decrease**; `bare_mem`/`bare_call` must not increase.
- Every rewrite that touches bytes must round-trip through `micro_assemble`
  before replacing the literal form.
- After a good build, clear stale fragments before the final regeneration:
  `git checkout -- asm_DSAVANT && git clean -fdq asm_DSAVANT`.

## 8. Risks, waivers, non-goals

**Waivers** (must be enumerated in the metric, not hidden):
- External BIOS Data Area (`bios_data_0410`) and any `external_data` field.
- PSP fields not in `PSP_FIELDS`.
- Unproven immediates (F9) with no dataflow space.
- `e_ss`/`e_sp` stack geometry, and overlay `o_bss` (no bytes to anchor).
- `data_*` in raw drivers (`ega`/`play`) whose DS is established at run time.
- Pure data words in lookup tables that are semantically not addresses.
- `; 0x<F>` comments (F10) — documentation, never emitted bytes.

**Risks:**
- Classification changes shift the bitmap and cascade through labels; keep each
  change byte-neutral and re-verify all 18.
- NASM forward-reference limits: sizes must be expressed self-relative
  (`label - $$`); `times`/`resb` need pass-1-constant operands, so padding uses
  `$`, not a forward `image_end`.
- Label-synthesis can collide with local/`@..` labels or split a block inside
  an instruction; reuse `_ensure_jump_case_label`'s mid-instruction guard and
  fall back to a literal (+ waiver) when the offset is not a record boundary.
- Overlay DS layering: a symbol reaching only below `o_corg` would wrap; keep
  the `[start_offset, file_size)` guard in `host_code_offset`.
- Generated outputs are committed; regenerate from a clean `asm_DSAVANT`.

## 9. Success criteria

- `frozen_addr == 0` except the Section 8 waiver set; the waiver set is
  machine-checked and non-empty only for listed categories.
- The "insert a byte" property test passes for the representative matrix.
- MZ `e_cblp`/`e_cp` (and overlay `o_csize`/`o_dsize`) are computed, not
  frozen; header always agrees with `len(image)`.
- No `equ 0x…` names a value that shifts with code layout.
- `make verify DSAVANT` 18/18 (semantic **and**, after Phase 8, exact);
  unit suite green.

## Appendix A — census (committed tree)

`equ 0x…` by namespace:

| namespace | count | notes |
|-----------|-------|-------|
| `bss_` | 1308 | DS-space, no bytes |
| `cseg_` | 302 | file offsets (**F3**) |
| `dseg_` | 190 | DS-space, file-backed |
| code/unreached labels (`loc_`,`leaf_`,`io_`,`dos_`,`string_`,`api_`,`fpu_`) | 174 | some unreached → **F3** |
| `data_` | 39 | file offsets (**F3/F7**) |
| `psp_` | 9 | PSP fields |
| `IMAGE_BASE` | 19 | per-file define |

Numeric `dw 0x…` (all files): 356 = 115 header fields + 241 inside
`jumptable_*`. Largest table files: `vbase/api_idx_004c.asm` 60,
`vmexe/api_idx_00ac.asm` 59, `vpcvw/io_loc_7415.asm` 44,
`vdopt/api_idx_0008.asm` 27, `vtrea/api_idx_0008_2.asm` 26.

## Appendix B — commands

```
# counts
python3 - <<'PY'
import pathlib, re
root = pathlib.Path('asm_DSAVANT')
eq = {}
for p in root.rglob('*.asm'):
    for ln in p.read_text(errors='ignore').splitlines():
        m = re.match(r'\s*(\w+)\s+equ\s+0x', ln)
        if m: eq[m.group(1)] = eq.get(m.group(1), 0) + 1
print(sum(eq.values()), eq)
PY

# verify
cd asm
python3 -m unittest discover -p 'test_*.py'
make build DSAVANT && make verify DSAVANT
EXTRA_FLAGS=--exact-bytes make verify DSAVANT
```
