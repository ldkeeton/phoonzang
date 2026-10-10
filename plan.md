# Plan: identify & symbolize every hard-coded address

## Goal

Make every address-encoding operand in the recovered DSAVANT images resolve to a
correct, space-tagged symbol (and appear in the address inventory), instead of
today's mixture of raw constants, colliding labels, and conflated address spaces.

## What is broken today

The pipeline has **one** label/address concept, but the binary uses **two**
address spaces and **three** segments.

- **F (file/listing offset):** where code labels (`loc_`, `aztec_`, `app_`,
  `string_`, `leaf_`) live and what `label_map` is keyed by. Confirmed: aztec_free
  bytes at file `0x47e8`, sprintf string at file `0x480d`, matching the emitted
  offsets.
- **L (segment offset):** what the code embeds in absolute operands.

`lib/delta.py` already models this (`address_kind: "load_image_offset"`) and
special-cases the small-address collisions
(`_EXTERNAL_DATA_EQU = {data_0002, data_002c, data_0080, data_0410}`, `:17`).

### Defects (all byte-exact, so `make verify` 18/18 never catches them)

1. **Non-flow immediates symbolized from the mixed map** — `lib/format.py:206-207`.
   833 sites: `data_*` x833, `dos_*` x7, `aztec_*` x1. `data_0002` alone x518
   (e.g. `mov cx, data_0002; cwd; idiv cx` == `mov cx, 2`). `mov di, aztec_lfree`
   (`string_loc_4882.asm:63`) is really the sprintf string pointer (`0x460d`).
2. **Memory operands share the same namespace** — `lib/format.py:83-89`. Code
   labels leak into data contexts: `[loc_0000]`, `[bios_video_loc_252e]`,
   `[cs:leaf_loc_0293]`.
3. **Data labels are L-space but stored in the F-keyed map** —
   `lib/verify/compare.py:460-466` and `:1580-1613`, which feeds defects 1-2.
4. **C fragment spans over-allocate** — `_select_split_ranges`
   (`lib/verify/compare.py:2182`) ends each fragment at the next split root, so
   `aztec_free`'s 127-byte span swallows 90 bytes of non-C data (sprintf string,
   `jumptable_4822`, hex string). This is why the resplice-label channel exists.

## Segment model (verified)

From the MZ header and the CRT startup:

```
e_cs = 0x0000  -> CS  base = load segment        ; CS:o  -> file hdr + o
e_ss = 0x0ff6  -> DATA base = load + e_ss*16      ; DATA:o -> file hdr + e_ss*16 + o
PSP at entry:  DS = ES = PSP                       ; PSP:o is a non-image segment
SS = DATA
```

Validation on `apps/DSAVANT/DS.EXE` (`hdr=0x200`, load size `0x10c56`):

```
load_size - e_ss*16 = 0x10c56 - 0xff60 = 0xcf6  ==  BSS start (data_0cf6)   OK
DS:0x0c70 -> file 0x10dd0 = 98 b1               ==  default stack value at 0x4e24
DS:0x0c80 -> file 0x10de0 = zeros + "8087/8..."
DS:0x0410 -> file 0x10570 = 39 00 c5 00 ...
file tail contains "...ERFLOW, INCREASE STACK SIZE"
BSS boundary (interior, no file bytes) = o >= 0xcf6
```

The startup makes the space distinction concrete:

- `mov bx, word ptr [2]` (`0x4b48`, `aztec_begin` line 8) reads **PSP:0002**
  (top-of-memory) while `DS=PSP`.
- `mov es, word [data_002c]` (line 81) reads **PSP:002c** (environment).
- `mov cl, byte [data_0080]` (line 93) reads **PSP:0080** (command tail).
- `mov word [es:data_0c80], ds` (line 20) writes **DATA:0xc80** (`ES=DATA`).
- The CRT zeroes BSS `data_0cf6..0x9098` and finally `mov ds, bp` / `mov ds, di`
  (lines 103, 119) reassign DS to the program DATA segment.
- The single MZ relocation patches `mov bp, 0xff6` (a **segment word**), not an
  offset.

So `data_0002` (PSP) and `data_0c80` (DATA) are different spaces that currently
render identically.

## Execution plan

### Phase 1 - Foundation (stop corrupting identification)

- **1a** `lib/format.py:204-207`: drop the generic `label_map` fallback for
  non-flow immediates; keep only the explicit `immediate_labels` sidecar path.
  Effect: `mov cx, data_0002` -> `mov cx, 2`; `mov di, aztec_lfree` ->
  `mov di, 0x460d`.
- **1b** `lib/format.py:83-89` (`_fmt_mem`) + `format_instruction` signature and
  all callers in `compare.py`: route absolute memory operands through a
  dedicated segment/data namespace, flow through code labels, immediates through
  the sidecar only.
- **1c** `compare.py:_select_split_ranges` (`:2182`): cap C-seeded fragment ends
  at `c_overrides[label]['length']` (derived in `verify` from `c_overrides` +
  `label_map`). Then **remove the resplice-label channel**:
  `compare.py` `stats['resplice_labels']`, `main.py:766-776`,
  `make.py:992-996`. Keep the `_inject_jump_tables` 3-tuple for tests.
- **1d** Document the two-space / three-segment model in `lib/format.py` and
  `lib/verify/compare.py`.

### Phase 2 - MZ segment model (new: `lib/segments.py`)

- Parse `e_cs`, `e_ss`, `e_cparhdr`, relocation table.
- Derive `CS_BASE`, `DATA_BASE = load + e_ss*16`, `SS_BASE = DATA_BASE`,
  `PSP_BASE` (opaque), and the **BSS boundary = `load_image_size - e_ss*16`**.
- Provide `resolve(segment, offset) -> ("file", file_off) | ("bss",) |
  ("psp",) | ("unknown",)`.
- PSP field catalogue: `0x02` top-of-memory, `0x2c` env seg, `0x80` cmd tail,
  `0x5c`/`0x6c` FCBs, etc. -> `psp_<field>` names.
- Cross-check at build: header-derived BSS boundary must equal the CRT zero
  range (e.g. `data_0cf6`); mismatch is a hard error.

### Phase 3 - Full segment-register dataflow (new: `lib/segdataflow.py`)

- Build CFG from existing `branch_targets`/`branch_edges`/`extra_flow_edges`
  plus a call graph from `lib/cross_ref`.
- Abstract-interpret segment registers with a lattice
  `{CS,DS,SS,ES -> ABS(LOAD), ABS(DATA), ABS(PSP), UNKNOWN}`.
- Transfer functions: `mov Sreg, reg/imm/mem`, `push/pop Sreg`, `les/lds`,
  `mov reg, Sreg`, `int 21h`, `retf`, call/return (DS/SS callee-saved, ES
  caller-saved), and a function-entry convention (`DS=ABS(DATA)`,
  `ES=ABS(DATA)` post-CRT).
- Seed from Phase 2: entry `CS=LOAD, DS=ES=PSP, SS=DATA`; the `aztec_begin`
  window is where PSP references occur.
- Output: for every memory operand (and absolute pointer), the active segment
  base + offset.

### Phase 4 - Resolve + symbolize every address

- For each operand/table word with a known base: `file = base + offset`, then
  symbolize in the correct namespace:
  - **CS** -> code/data label at `hdr + o` (create when missing, e.g.
    `string_loc_480d`), rendered `sym - IMAGE_BASE` for embedded pointers.
  - **DATA** -> `dseg_00xx` (file-backed) or `bss_00xx` (beyond BSS boundary).
  - **PSP** -> `psp_<field>`.
- Immediates: symbolize only when the segment is provably known (e.g. a CS
  code-pointer table word); otherwise leave raw and mark as candidate.
- Effect: every true address reads symbolically; constants stay numeric.
  Fixes `mov cx, 2`, `[cs:leaf_loc_0293]`, `mov di, aztec_lfree`
  (-> `string_loc_480d - IMAGE_BASE`).

### Phase 5 - Inventory + cross-reference

- Extend the `lib/delta.py:286` schema with `space` (`cs`/`ds`/`psp`/`bss`),
  `kind`, `source`, `confidence`, `referenced_by`.
- Emit all identified addresses into `<binary>_addresses.json` fed from Phase 4
  (not merely from `nm` labels).
- Reconcile with `_EXTERNAL_DATA_EQU` / `fixed_equ_candidates`
  (`lib/delta.py:17`, `:199-215`) and the jump-table manifest.

### Phase 6 - Constant-vs-address confidence

- Tiers: **certain** (relative flow, jump tables, MZ relocations, sidecar),
  **strong** (CS/DATA/BSS/PSP-resolved), **candidate** (plausible range, unknown
  segment). Never silently conflate; report candidates, do not assert them.

## Deliverables

- `lib/segments.py`, `lib/segdataflow.py`.
- Updated `lib/format.py`, `lib/verify/compare.py`, `main.py`, `make.py`.
- Address inventory extended with space/kind/source/confidence/xref.
- Non-C data removed from C fragment spans; resplice channel removed.

## Verification

- Per phase: full `python3 -m unittest`; `make build DSAVANT` then
  `make verify DSAVANT` 18/18 (byte-exact must hold throughout).
- Phase 2: assert BSS boundary == CRT zero range for `ds` and `vinstall`.
- Phase 3: spot-check `aztec_begin` (PSP vs DATA), `[cs:...]` sites, `les/lds`.
- Phase 4/5: `data_0002` immediate count 833 -> 0; every memory operand
  symbolic; `make elf-rebuild DSAVANT ds` / `vinstall`; `make delta` inventory
  shows cs/ds/psp spaces.
- Phase 6: candidate list reviewed, no new collisions.

## Risks

- Phase 3 is the long pole: ad-hoc `mov ds/es` sites (`bios_*`,
  `aztec_csread`, `aztec_lud`, `aztec_movmem`) and far-pointer loads
  (`les`/`lds`) drive values to `UNKNOWN`; those operands stay candidates.
- DATA offsets are partly file-backed and partly BSS; the BSS boundary must be
  exact or bytes are mislabeled.
- Existing tests (`test_delta`, `test_hard_classification`) encode current
  `data_*` behavior and will need updating.
