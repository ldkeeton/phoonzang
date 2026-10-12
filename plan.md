# Plan: make every address dynamic

## 1. Goal

Turn the generated `asm_DSAVANT/**` into a **layout-independent** source tree:
every value that shifts when code/data is inserted, deleted, or resized is
emitted as an assembler expression over labels / `$` / `$$` / derived `equ`s,
so the image stays internally consistent **without hand-editing a single hex
constant** and still reassembles.

A generated value is **dynamic** when it is an expression the assembler resolves
from other symbols (`label`, `$`, `$$`, `equ` chains). A **frozen literal** is a
bare hex/decimal value standing in for a location, a size, or a file offset.
The target is `frozen_addr == 0`, modulo the explicit **waiver set** (Section 7).

Every literal that is replaced by a formula keeps its **original value as a
leading comment** (Section 4), so the emitted source stays readable.

## 2. Settled decisions

- **Exact bytes is NOT a goal.** The gate is `make verify DSAVANT` 18/18
  **semantic** plus the unit suite. `EXTRA_FLAGS=--exact-bytes` is not a gate.
  No formatter force-encoding work.
- **No growth restriction.** The data segment anchor and `e_ss` are dynamic, so
  code may grow past the original code→data gap; data slides to the next
  paragraph boundary and the header tracks it. If code shrinks, data stays
  pinned at the original origin (widened zero gap) — smallest diffs, exact
  round-trip.
- **No commits.** Changes are left in the working tree for review.
- **Scope of this pass: F1, F2, F3, F5 — COMPLETE (2026-10-11).** F4
  (`dseg_`/`bss_`), F6/F7 (jump-table / pointer words), F8 (relocation offset
  word), F9 (immediates), F10 (comments) remain deferred by decision; see
  Section 9 for the measured outcome.

## 3. Frozen-value taxonomy

| id | value | where emitted | status this pass |
|----|-------|---------------|------------------|
| F1 | MZ `e_cblp`, `e_cp` (file size); `e_ss` (data segment) | `_render_mz_header` | **dynamic** |
| F1 | MZ `e_sp` | `_render_mz_header` | literal (waiver) |
| F2 | overlay `o_csize`, `o_entry` | `_render_ovr_header` | **dynamic** |
| F2 | overlay `o_dsize`, `o_bss` | `_render_ovr_header` | literal (host/runtime) |
| F3 | `cseg_<f>` / `data_<f>` / unreached `loc_*`/`leaf_*`/`io_*`/`dos_*`/`string_*`/`api_*` `equ` | `_build_source` | **dynamic** (label in place) |
| F4 | `dseg_<o>`, `bss_<o>`, `psp_<o>` `equ` | `_build_source` | deferred |
| F5 | `times <N> db 0` gap to `data_origin` | `_render_data_block` | **dynamic** |
| F5 | trailing pads | `_render_data_block` | literal (unless an anchor exists) |
| F6 | numeric `dw 0x<value>` inside `jumptable_*` | `_inject_jump_tables` | deferred |
| F7 | unrecognized inline pointer words | `_render_data_block` | deferred |
| F8 | MZ relocation-table offset word | `hdr[28:]` | deferred |
| F9 | unproven immediates (`_fmt_imm`) | `format.py` | waiver |
| F10 | `; 0x<F>` offset comments | `_render_records` | waiver (cosmetic) |

F3 and F5 are what actually break under the `nop` probe; F1/F2 must be fixed
for the resulting file to be loadable. F4/F6/F7/F8 are out of this pass.

## 4. Comment convention

Whenever a literal is replaced by a formula, the original value is printed as a
**separate leading comment**, then the description, then the existing
`; 0x<offset>` comment (if the line has one) stays **last**:

```nasm
    dw (__zimage_end - $$) % 512 ; 0x0056 ; e_cblp: bytes in final 512-byte page (0 means full)
    dw ((__zimage_end - $$) + 511) // 512 ; 0x0088 ; e_cp: total 512-byte pages in the file
    dw __zdataseg_para           ; 0x0ff6 ; e_ss: initial stack segment, relative to load module
    times (__zdataseg_start - ($ - $$)) db 0 ; 0xaf0d
    dw (__zimage_end - __zcode_start) ; 0x93df ; o_csize: code size in bytes
```

Hex is fixed-width (`0x%04x`, bytes `0x%02x`) so the description column stays
aligned. F3 in-place labels carry no value comment — the label's address is the
include's `; 0x<offset>`.

## 5. Design (validated in NASM 3.01)

The header's `e_ss` cannot divide a *forward* label (NASM: "division operator may
only be applied to scalar values"), so the paragraph value is defined at the gap
where `$` is known:

```nasm
; header, emitted at the top:
    dw (__zimage_end - $$) % 512 ; 0x0056 ; e_cblp: ...
    dw ((__zimage_end - $$) + 511) // 512 ; 0x0088 ; e_cp: ...
    dw __zdataseg_para           ; 0x0ff6 ; e_ss: ...
    dw 0xf198                    ; e_sp: ... (fixed)

; after the last code record:
%if ($ - $$) > ORIG                 ; ORIG = original data_origin
    align 16, db 0
    __zdataseg_para equ ($ - $$ - HEADER) / 16
%else
    times (ORIG - ($ - $$)) db 0
    __zdataseg_para equ (ORIG - HEADER) / 16
%endif
__zdataseg_start:
    ... data ...
__zimage_end:
```

Unchanged code reproduces the current bytes exactly; growth past `ORIG` slides
data to the next paragraph and tracks `e_ss`. `e_sp` needs no change because
SS == DS and data/BSS/stack are segment-relative.

## 6. Phases

Every step keeps `make verify DSAVANT` at 18/18 semantic and the unit suite
green. `frozen_addr` may only decrease.

### Phase 0 — instrumentation
- `count_frozen_addrs(src_text)` classifies F1–F6 by inspecting emitted lines
  (header `dw 0x… ; e_*/o_*`, `equ 0x…` by namespace, literal `times N db 0`
  pads, numeric `dw 0x… ; 0x<slot>` jump-table entries).
- Surfaced through `verify()` → `summarize()` as `frozen_addr` (+ breakdown) and
  added to `GOOD_DOWN`.
- `lib/tests/test_dynamic_addrs.py` snapshots the counts and asserts they only
  decrease.

### Phase 1 — F5: dynamic data anchor
- In `_build_source`, locate the MZ code→data gap: the `data_block` whose
  leading zero run ends at `data_origin` (`header_size + e_ss*16`).
- Emit the `%if … __zdataseg_para … %endif` block and `__zdataseg_start:` at that
  point; render the remainder of the block normally. `__zimage_end:` after the
  last record.

### Phase 2 — F1: MZ header
- `e_cblp`/`e_cp` from `__zimage_end`; `e_ss` from `__zdataseg_para`
  (only when the gap was made dynamic); `e_sp` literal.
- Each line carries `; 0x<original>` per Section 4.

### Phase 3 — F3: file-offset symbols as labels
- Generalize `_ensure_jump_case_label` into `_ensure_global_label(records,
  binary_data, off, name)` (splits a `data_block`).
- For every `cseg_<f>`/`data_<f>` `equ` and unreached `loc_*`/`leaf_*`/`io_*`/
  `dos_*`/`string_*`/`api_*` `equ`, place a label at the target offset and drop
  the `equ`. Mid-instruction or unbound offsets fall back to `equ` + waiver.
- Guard each rewrite with `micro_assemble`.

### Phase 4 — F2: overlay header
- `o_csize` → `(__zimage_end - __zcode_start)`; `o_entry` → entry symbol −
  `o_corg` where a sidecar `entry_symbol` labels the overlay entry; else literal.
- `o_dsize`/`o_bss` stay literal (host/runtime).
- `__zcode_start:` after the 14-byte header; `__zimage_end:` after the last
  record.

### Deferred (re-assess after measuring `frozen_addr`)
F4 label binding for `dseg_`/`bss_`, F6/F7 jump-table/pointer words, F8
relocation offset word, F9 immediates.

## 7. Waivers (kept literal, enumerated by the metric)

- `e_sp` — stack reserve size, segment-relative.
- Overlay `o_dorg`/`o_bss` — host data origin / uninitialized size.
- `bios_data_0410` and any `external_data` field — fixed external segment.
- PSP fields not in `PSP_FIELDS`.
- Unproven immediates (F9).
- Raw-driver `data_*` (`ega`/`play`/`vga`) — DS established at run time.
- Pure data words in lookup tables that are not addresses.
- `; 0x<F>` comments (F10) — documentation only.

## 8. Verification protocol (every sub-step)

```
cd asm
python3 -m unittest discover -p 'test_*.py'
make build DSAVANT && make verify DSAVANT     # 18/18 semantic
```

- `frozen_addr` must decrease; `bare_mem`/`bare_call` must not increase.
- Any rewrite touching bytes round-trips through `micro_assemble` first.

## 9. Outcome (2026-10-11)

This pass is **complete**; F4/F6/F7/F8 were intentionally left for a later
decision.

| id | before | after | note |
|----|-------:|------:|------|
| f1 | 8 | 2 | remaining = `e_sp` ×2 (waiver) |
| f2 | 52 | 13 | remaining = `o_bss` ×13 (waiver) |
| f3 | 411 | 134 | ~84 driver `data_` (waiver) + mid-instruction/unreached |
| f5 | 4 | 3 | remaining = `ega`/`vga` code pads (waiver) |
| f4 | 1407 | 1407 | deferred |
| f6 | 241 | 241 | deferred |
| **total** | **2123** | **1800** | |

- `make verify DSAVANT`: **18/18** semantic. Unit suite: **154 OK**.
- Insert-byte property, end-to-end on real `ds` (see
  `lib/tests/test_dynamic_addrs.py::InsertBytePropertyTests`):
  - `nop` within the gap → length, `e_cblp`, `e_cp`, `e_ss` correct; data
    byte-identical and unmoved.
  - 45000-byte insert overflowing the gap → data relocates to an aligned
    origin, `e_ss` tracks it, header length fields agree, data byte-identical.

Criteria met for the four in-scope items; the remaining literal values are
either waivers (Section 7) or the deferred F4/F6/F7/F8.
