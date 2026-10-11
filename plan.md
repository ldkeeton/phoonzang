# Plan: complete address symbolization — next steps

## Goal

Drive the remaining `[data_*]` operand references to correct, space-tagged
symbols (`dseg_`/`bss_`/`cseg_`/`psp_`) without losing byte-exactness, so every
address-encoding operand in the recovered DSAVANT images is symbolized and the
per-binary inventory is conflict-free.

## Current state — verified

`make verify DSAVANT` is **18/18 byte-exact**; `python3 -m unittest discover
-p 'test_*.py'` is **117/117 OK**. The `ds` host model is built once and threaded
into overlays; the overlay header is 14 bytes; the segment dataflow is recomputed
against the final bitmap and reaches every recovered switch-table arm (unreached
overlay islands are seeded). Every emitted table is a `jumptable_*` (no data
tables exist).

| metric | baseline | now |
|---|---|---|
| asm `[data_*]` operand refs | 454 | 62 |
| inventory `unknown` records | 219 | 49 |
| inventory `dseg_` / `bss_` | 1225 / 102 | 167 / 1243 |
| inventory `cs` | 1989 | 3125 |
| inventory `psp` | 6 | 6 |

Done and committed (source; generated `asm_DSAVANT/**` rewritten and committed):

- `lib/segments.py` — `SegmentModel.data_space(offset)` implements the **layered**
  overlay DATA rule (host file-backed → host BSS → overlay init → overlay BSS);
  `SegmentModel.code_offset(disp)` maps an embedded `o_corg`-based CS value to its
  file offset (`14 + (disp - o_corg)`), `None` for MZ/drivers.
- `lib/verify/compare.py` — `_data_prefix`; `_resolve_mem_symbols` /
  `_resolve_imm_symbols` use `data_space`; `_apply_c_overrides` /
  `_c_bytes_to_records` carry `mem_symbols`/`mem_equ`; `_render_ovr_header`
  emits the 14-byte Aztec header as commented `dw` fields; `_postprocess_data_blocks`
  takes `table_ranges` and refuses to promote detected switch tables to instructions;
  `_inject_jump_tables` maps overlay entry words through the `o_corg` convention
  (`start_offset + (value - o_corg)`) so case labels land on the real arms, encodes
  them `label - IMAGE_BASE + o_corg`, will not synthesize a case label inside another
  detected table, and emits `; 0x…` addresses on `dw` and function-split `%include`
  lines.
- `main.py` — `_build_host_model` + `host_model=` threading; `discover_binaries`
  now uses `start_offset = 14` for `*.OVR`; `analyze_segments` receives
  `segment_edges` (validated tables + **all** recovered table arms + branch
  edges); instructions **and** segment flow recomputed after the post-phases.
- `lib/segdataflow.py` — for **overlays**, after the reachability walk any
  instruction it never reached (a switch arm promoted after the first decode)
  is seeded with the caller-convention state (`DS=ES=SS=DATA`) and the walk
  re-run, so its absolute operands resolve instead of falling back to `data_`.
  MZ is excluded: its DS starts at the PSP, so a blind seed is unsafe.
- `lib/phases/aztec_overlay.py` — marks the 14-byte header `hard_data`, and only
  drops a sidecar seed that points *into* the header (`start_offset < 14`).
- `lib/phases/forcecode.py` — back-scan clamped to `>= start_offset` and skips
  hard data; forward scan now also stops at a **DOS exit** (`is_dos_terminator`),
  so inline data after an error handler's `mov ax,0x4c01; int 0x21` stays data.
- `lib/phases/recursive.py` — `_code_off` routes jump-table/indirect-jump
  translation through `SegmentModel.code_offset` for overlays and masks the
  offset to 16 bits (capstone sign-extends `jmp [cs:bx - 0x78c1]` to `-0x78c1`,
  which previously failed the range check and dropped the table); the CS-prefixed
  scan reads the displacement as `<H`; `_scan_jump_table`
  only applies the data-vote stop when `max_index is None` (a bounded table is
  read fully even when `prune_dead` pre-voted its arms data); `_validate_jump_tables`
  marks every detected table region `_CONF_JT_DATA` and clears `hard_code` over it.
- `test_segments.py`, `test_jump_tables.py` (`ScanJumpTableBoundsTests`,
  `CodeOffSignExtensionTests`, `IncludeOffsetTests`), `test_segdataflow.py`
  (`OverlayIslandTest`), new `test_forcecode.py`.
- `sidecar/DSAVANT.json` — overlay `start_offset` 8 → 14.

Diagnosed and fixed here (was surfacing as *data → instruction*): the Aztec
overlay header's `o_corg` low byte `0x55` sits at file offset 2; `ForceCodePhase`
mistook it for a `push bp` prologue and force-coded `[8,14)`, which the arbiter
fallback then emitted as code once the post-phase instruction stream was
recomputed. With the header marked hard data and the back-scan clamped, those
bytes are `db` again and the real entry (`mov ax,<api>; call <dispatch>`) at
offset 14 is preserved.

Diagnosed and fixed here (was surfacing as *code → data*): overlay switch
dispatchers use `jmp [cs:bx + <o_corg offset>]`; when that offset's high byte is
set capstone reports it signed (`-0x78c1`), `_code_off` translated it to a
negative file offset, and the range check aborted the table scan.  The arm code
was then classified data and inflated into `db`.  Masking to 16 bits recovers
the table (e.g. `vmnpc/api_idx_0040` arms `0x2bef..0x36f8` and
`jumptable_36f8`).

## Confirmed facts (do not re-derive)

- Every overlay `*.OVR` has `o_corg = 0x5055`, `o_dorg = 0x9098` (host CRT BSS
  end); `o_dsize` 0x1e–0x48c, `o_bss` 2–0x1f22. Host `DS.EXE`:
  `data_origin = 0x10160`, `bss_boundary = 0xcf6`, CRT BSS `0xcf6..0x9098`.
- `o_corg`/`o_dorg` are offsets in the **host's** CS/DS (confirmed from
  `tools/dos_compilers/.../LIB/DOS/OVLOADER.C` and `asm_DSAVANT/ds/aztec_ovloader.asm`).
- Overlay embedded CS offsets are `o_corg`-based. The mapping from an embedded
  CS value `v` to a file offset is `14 + (v - o_corg)` (equivalently
  `v - 0x5047`), used only for analysis; emitted `cseg_<file>` names must keep
  the existing `addr + start_offset` round-trip convention (`- IMAGE_BASE`).
- Remaining `[data_*]` by binary: `play` 44, `vinstall` 10, `ds` 5, `ega` 2,
  `vmexe` 1; every other overlay is 0. Drivers (`ega` 2, `play` 44) are
  runtime-DS candidates and are **waived**. MZ `ds`/`vinstall` remain (Phase 8a).

## Phase 7E — overlay runtime-switch / jump-table recovery — DONE (7E.1–7E.3)

The residual overlay `[data_*]` sat in Aztec switch arms the dataflow never saw.
Two idioms appear:

1. `jmp [cs:bx + disp16]` (e.g. VDOPT `0x1494: jmp [cs:bx+0x64c5]`, table at file
   `0x147e`), entries are `o_corg`-based CS offsets.
2. `mov cx, N; call <helper>` followed by an inline `dw` table.

### 7E.1 DONE — segment-aware code translation
`SegmentModel.code_offset(disp)` returns `14 + (disp - o_corg)` for overlays and
`None` for MZ/drivers (which keep `start_offset + disp`). Tested by
`test_segments.CodeOffsetTest`.

### 7E.2 DONE — scanner uses the model
`RecursiveDescentPhase` routes the CS-prefixed table scan (`recursive.py:309`),
the indirect-jump table scan (`recursive.py:456`), and the pointer-table scan
(`recursive.py:481`) through `_code_off(ctx, value)`; `_scan_jump_table` takes a
`translate=` callable instead of `start_offset=` so table **entries** are
translated too. `_find_jump_table_bounds` is unchanged.

### 7E.3 DONE — arm dataflow guard
Naively promoting arms regressed the metric. Fixed by giving the segment dataflow
every recovered table edge: `main.py` builds
`segment_edges = extra_flow_edges | ctx.branch_edges | {(table.jmp_addr, target)}`
for **all** tables (not only validated ones) and passes it to both
`analyze_segments` calls. Ownership/labels still use the validated-only
`extra_flow_edges`, so label churn stays contained. Superseded by the current
result (`[data_*]` 62, unknown 49) after the overlay-island seeding below.

### 7E.3b DONE — overlay-island seeding
Even with the table edges, arms promoted to code by the post-phases were absent
when `function_roots` was derived, so the walk never reached them and their
operands stayed `data_`. `lib/segdataflow.analyze` now seeds any unreached
instruction with the caller convention for **overlays** and re-runs the walk.
This cleared the residual overlay `[data_*]` (`vtrea` 20→0, `vdopt` 15→0,
`vpcvw` 14→0) without touching MZ states. Tested by
`test_segdataflow.OverlayIslandTest`.

### 7E.3c DONE — overlay case-label placement
`_inject_jump_tables` mapped overlay table words with the MZ convention, putting
`jumptable_*_case_*` labels inside the initialized-data tail. Now mapped via
`o_corg` (`start_offset + (value - o_corg)`) and encoded
`label - IMAGE_BASE + o_corg`. No data tables exist, so no `datatable_*` naming.

### 7E.4 Remaining (low priority) — second idiom (`mov cx,N; call helper; dw table`)
- Detect `mov cx, imm; call <leaf helper>` immediately followed by `dw` words.
- No current residual points at it: the overlay `[data_*]` is now 0, so the
  idiom is not blocking. Only pursue with a concrete example (`api_idx_0012`
  l5 = file `0x1077` was the original candidate).

### 7E.5 Remaining — overlay CS naming (7C)
- Decide whether `cseg_` names for overlay code should use `code_offset(addr)`
  instead of `addr + start_offset`; text-only change, must keep the
  `- IMAGE_BASE` round-trip.

## Phase 8 — candidate & unknown reconciliation

- **8a MZ (`ds`, `vinstall`):** enumerate every remaining absolute `[data_*]`
  operand; each is a modelling bug. Likely PSP/segment-selector cases or switch
  arms inside the MZ itself. Fix or waive each explicitly (waivers recorded in a
  comment/table in this plan).
- **8b candidates:** re-audit `unknown` inventory records by binary. Note every
  `unknown` record in the current inventories has an empty `referenced_by`, so
  that field cannot distinguish real operands from data-gap words; instead
  cross-check against emitted `[data_*]` operands. The overlay `[data_*]` are
  now resolved, so the residual `unknown` inventory is mostly data-gap words.
- **8c `data_0410`:** it is the BIOS data area accessed via `ES`. Either name it
  `bios_data_0410` (and keep `_EXTERNAL_DATA_EQU`/`lib/delta.py:20` in sync) or
  keep it as a documented candidate. Do not assert an address space it does not
  have.
- **8d:** assert `lib.inventory.find_conflicts(...)` is empty and there are 0
  symbol collisions across all 18 inventories (add/extend a test).

## Phase 9 — finalization

- **9a Tests:** suite is **117/117**. Done: `DataSpaceTest`, `CodeOffsetTest`
  (`SegmentModel.code_offset` overlay/MZ/driver cases), `OverlayIslandTest`,
  `CodeOffSignExtensionTests`, `ScanJumpTableBoundsTests`, `IncludeOffsetTests`.
  Still optional: an overlay-BSS inventory test asserting the layered
  `dseg_`/`bss_` split.
- **9b Docs:** update the `lib/format.py` / `lib/verify/compare.py` /
  `lib/segments.py` address-space narratives to state (i) prompt: dataflow is
  recomputed against the final bitmap and unreached overlay islands are seeded,
  (ii) overlay DATA is layered, (iii) the `cseg_` round-trip convention.
- **9c Build/verify:** `make build DSAVANT`; `make verify DSAVANT` 18/18;
  `python3 -m unittest discover -p 'test_*.py'`; then
  `make elf-rebuild DSAVANT ds` and `make elf-rebuild DSAVANT vinstall`.
- **9d Commit** the source change set + regenerated `asm_DSAVANT/**` and this
  `plan.md` (only on explicit request). Earlier commits: `774c7bd`.

## Verification (every sub-step)

- `python3 -m unittest discover -p 'test_*.py'`.
- `make build DSAVANT` then `make verify DSAVANT` must be 18/18.
- Re-measure with the ad-hoc counter: total asm `[data_*]` operands (baseline
  454, currently 62) should keep falling as more arms resolve.
- Track per-binary `[data_*]`: overlays are at 0; residual is the driver waiver
  (`ega`+`play`, 46), MZ (`ds` 5 / `vinstall` 10) and `vmexe` 1.

## Success criteria

- `[data_*]` operands reduced to the driver waiver set (`ega` + `play`, 46) plus
  documented MZ cases (`ds` 5, `vinstall` 10) and `vmexe` 1.
- Inventory `unknown` reduced to documented candidates (`referenced_by` is
  currently empty for all of them, so cross-check emitted operands instead).
- `make verify DSAVANT` 18/18 byte-exact throughout; suite green.

## Risks

- **Switch-table promotion without dataflow coverage** regresses `[data_*]`; the
  edge from `ctx.jump_tables` to `analyze_segments` must be verified before
  promoting arms. Revert any sub-step that raises the count.
- **Overlay-island seeding** must stay gated to `kind == 'overlay'`: seeding MZ
  islands merges a caller-convention `DS=DATA` into pre-CRT `DS=PSP` code and
  turns resolved operands back into `unknown`.
- **Entry-base ambiguity** for the `mov cx,N; call helper` idiom; do not
  generalize without one proven example.
- **Overlay CS mapping** is a labeling change only; it must preserve the
  `- IMAGE_BASE` round-trip or byte-exactness breaks.
- **Generated outputs** are committed; after a good build, remove stale
  single-binary fragments (`git checkout -- asm_DSAVANT && git clean -fdq
  asm_DSAVANT`) before the final `make build DSAVANT`.
