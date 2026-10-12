# Plan: remaining address-symbolization work

## Goal

Finish symbolizing the recovered DSAVANT images: eliminate the last bare
operands, reconcile the residual inventory candidates, and keep every binary
reassembling (`make verify DSAVANT` green, unit suite green).

## Status snapshot — verified

- `python3 -m unittest discover -p 'test_*.py'` — **127 OK**.
- `make build DSAVANT` then `make verify DSAVANT` — **18/18**.
- Residual operand refs (ad-hoc counters below):
  - asm `[data_*]` operands — **62**: `play` 44, `vinstall` 10, `ds` 5, `ega` 2,
    `vmexe` 1. Every other overlay is 0.
  - bare numeric flow — **3**, all table data mis-decoded as `far`:
    `vbase/api_idx_004c.asm:268`, `vtrea/api_idx_0008_2.asm:378`,
    `vinstall.asm:414`.

## Confirmed facts (do not re-derive)

- Every overlay `*.OVR` has `o_corg = 0x5055`, `o_dorg = 0x9098`; `o_dsize`
  0x1e–0x48c, `o_bss` 2–0x1f22. Host `DS.EXE`: `data_origin = 0x10160`,
  `bss_boundary = 0xcf6`, CRT BSS `0xcf6..0x9098`; `cs_origin = 0x200`.
- `o_corg`/`o_dorg` are offsets in the **host's** CS/DS
  (`LIB/DOS/OVLOADER.C`, `asm_DSAVANT/ds/aztec_ovloader.asm`).
- An embedded `o_corg`-based CS value `v` maps to file offset `14 + (v - o_corg)`
  (`SegmentModel.code_offset`). The inverse — an overlay near-flow target `T` to
  host file offset — is
  `host.cs_origin + ((T + o_corg - start_offset) & 0xFFFF)` (`+0x5247` here),
  implemented as `SegmentModel.host_code_offset`.
- Driver `[data_*]` (`ega` 2, `play` 44) are runtime-DS candidates and are
  **waived**.

## 7E.4 — `mov cx,N; call <trampoline>; dw table` idiom

The 3 remaining bare `far` decodes are not far transfers — they are inline
switch-table/data bytes the classifier decoded as instructions:

- `vbase/api_idx_004c.asm:268` `jmp far 0xf100:0xec00` immediately follows
  `mov cx,0x14; call leaf_loc_936e`; `leaf_loc_936e` is a switch trampoline
  (`pop bx; push di; …; repne scasw; …; jmp cx`), so the bytes at `0x17ce` are
  the table, not code.
- `vtrea/api_idx_0008_2.asm:378` (`call far 0xb8c3:0x9b1e`) and
  `vinstall.asm:414` (`jmp far 0xec00:data_060e`) sit inside `dw` tables whose
  neighbours are already emitted as garbage decodes / `db`.

Work:
- Detect `mov cx, imm; call <leaf/trampoline helper>` and classify the following
  `2*(N+1)` bytes as an indirect jump table (reuse the `jumptable_*` machinery,
  emit `dw`), removing the spurious `far` lines and their garbage neighbours.
- Gate on the proven trampoline shape (`jmp cx`/indirect dispatch) so the idiom
  is not generalized to ordinary calls.
- Must stay reassembly-exact.

Open question: whether `leaf_loc_936e` and the other sites need an explicit
sidecar/JT override vs. auto-detection from the `jmp cx` helper.

## 7E.5 / 7C — overlay `cseg_` naming

Decide whether emitted `cseg_<...>` names for overlay code should use
`SegmentModel.code_offset(addr)` instead of `addr + start_offset`. Text-only
change; must preserve the `- IMAGE_BASE` round-trip.

## Phase 8 — candidate & unknown reconciliation

- **8a MZ (`ds` 5, `vinstall` 10):** enumerate every remaining absolute
  `[data_*]` operand; each is a modelling bug (likely PSP/segment-selector or a
  switch arm inside the MZ). Fix or waive each explicitly.
- **8b candidates:** re-audit `unknown` inventory records by binary. All have an
  empty `referenced_by`, so cross-check against emitted `[data_*]` operands
  instead; the residual is expected to be mostly data-gap words.
- **8c `data_0410`:** BIOS data area accessed via `ES`. Either name it
  `bios_data_0410` (keep `_EXTERNAL_DATA_EQU` / `lib/delta.py:20` in sync) or
  document it as a candidate; do not assert an address space it lacks.
- **8d:** assert `lib.inventory.find_conflicts(...)` is empty and there are 0
  symbol collisions across all 18 inventories (extend `test_inventory.py`).

## Phase 9 — finalization

- **9a Tests:** optional overlay-BSS inventory test asserting the layered
  `dseg_`/`bss_` split.
- **9b Docs:** update `lib/format.py` / `lib/verify/compare.py` /
  `lib/segments.py` narratives for (i) dataflow recomputed against the final
  bitmap with unreached overlay islands seeded, (ii) layered overlay DATA,
  (iii) the `cseg_` round-trip convention, (iv) the host-flow alias naming
  (`<host>_<name> equ <overlay-space target>`).
- **9c Build/verify:** `make build DSAVANT`; `make verify DSAVANT` 18/18; unit
  suite; then `make elf-rebuild DSAVANT ds` and `make elf-rebuild DSAVANT
  vinstall`.
- **9d Commit** the source change set + regenerated `asm_DSAVANT/**` + this
  `plan.md`, only on explicit request.

## Verification (every sub-step)

- `python3 -m unittest discover -p 'test_*.py'`.
- `make build DSAVANT` then `make verify DSAVANT` must be 18/18.
- Re-measure: asm `[data_*]` (currently 62) and bare numeric flow (currently 3)
  must not increase; both should reach 0 modulo the driver waiver (`ega`+`play`,
  46).

## Success criteria

- `[data_*]` reduced to the driver waiver (`ega` 2, `play` 44) plus documented
  MZ cases (`ds` 5, `vinstall` 10) and `vmexe` 1.
- No bare numeric flow (the 3 table decodes become `dw`).
- Inventory `unknown` reduced to documented candidates.
- `make verify DSAVANT` 18/18; suite green.

## Risks

- **Table idiom ambiguity:** `mov cx,N; call helper` can precede non-table data;
  require the trampoline signature before reclassifying, and revert any sub-step
  that raises `[data_*]` or breaks reassembly.
- **Classification changes** (7E.4) can shift the bitmap and cascade through
  labels; keep the change byte-neutral and re-verify all 18 binaries.
- **Overlay `cseg_` mapping** is a labeling change only; it must preserve the
  `- IMAGE_BASE` round-trip.
- **Host-flow aliasing** keys the consumer's `equ` by the overlay-space target:
  any host function reachable only below `o_corg` would wrap into the overlay
  range. DSAVANT host code is entirely above the overlay (and zero in the gap),
  so this holds here; keep the `[start_offset, file_size)` guard.
- **Generated outputs** are committed; after a good build, remove stale
  single-binary fragments (`git checkout -- asm_DSAVANT && git clean -fdq
  asm_DSAVANT`) before the final `make build DSAVANT`.
