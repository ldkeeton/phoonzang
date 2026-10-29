# Combining the call_ driver thunks

## Context
DSAVANT has ~45 identical driver thunks, each its own auto-generated
`src_DSAVANT/ds/library/call_*.asm`:

    push bp / mov bp,sp / cld / call far [cs:slot] / mov sp,bp / pop bp / ret

They're named by the sidecar's `driver_slots` entry (`prefix: "call"`,
`disassembler/lib/match/driver_slots.py`, applied at
`disassembler/main/runner.py:273-293`). The goal is to write the repeated
body once, as a macro, and reduce each thunk to one source line, with fewer
files.

## How it works
1. **`length` merges each run into one fragment.** A `function_names`
   entry with `"length": N` makes one fragment own every routine in
   `[off, off+N)` (`disassembler/lib/sidecar/binary.py:275-303`,
   `disassembler/lib/compare/verify.py:529-545`). The thunks fall into 4
   contiguous runs, so the disassembler emits **4** `.asm` files, each
   listing every thunk in its run, instead of 45.
2. **A `.s` replaces each grouped fragment.** A `.s` with the same stem is
   its source (`disassembler/lib/routine_source.py`). Each `.s` has one
   `drvcall` line per thunk. When Aztec `as` assembles it, the macro expands
   back into the same 7 instructions, so the image stays byte-identical.

Result: 45 files → 4 `.s` + 4 generated `.asm`. Label names don't change, so
C callers and overlay imports are unaffected.

Precedents already in the tree:
- `ds/library/detect_video_adapter.s` holds several procs under one
  `length` (1023).
- `procdef` in `lmacros.h` uses `pname&_` concatenation inside a macro.
- `ds/library/load_video_driver.s` already uses `extrn cseg_2f87_:word`
  (the slot table base).

## Changes

### 1. Macro: `disassembler/lib/aztec/lmacros_master.h`
```
drvcall	macro	pname, slots, n
	public	pname&_
pname&_	proc	near
	push	bp
	mov	bp,sp
	cld
	call	dword ptr cs:slots&_+4*n
	mov	sp,bp
	pop	bp
	ret
pname&_	endp
	endm
```
- Add a line to the header comment: `drvcall name,table,n  the driver thunk
  through slot n of table`.
- Add a `## drvcall` section to `readme/lmacros.md`.
- `slots` is a parameter so another slot table can reuse the macro later.

### 2. Sidecar: `disassembler/sidecar/DSAVANT.json`, `ds.function_names`

| head | stem / `.s` file | length | thunks |
|---|---|---|---|
| `3a50` | call_set_text_pos | 39 (→0x3a77) | 3 |
| `3b21` | call_show_area (entry exists; add `length`) | 130 (→0x3ba3) | 11 |
| `4134` | call_free_sound | 384 (→0x42b4) | ~24 + `call_packed_slot_5` |
| `42dd` | call_set_text_opaque | 156 (→0x4379, library band end) | ~12 |

Check each boundary against the `%include` offsets in `src_DSAVANT/ds.asm`.
Verify raises a `SidecarError` if a fragment ends inside an instruction.

### 3. Four `.s` files in `src_DSAVANT/ds/library/`
```
; Graphics-driver thunks: each calls jump-table entry n through cseg_2f87.
	include	lmacros.h
	assume	cs:codeseg
	extrn	cseg_2f87_:word
	drvcall	call_show_area,cseg_2f87,16
	drvcall	call_fill_screen_buffer,cseg_2f87,15
	...
```
- Slot n = (the slot offset in the current `.asm`'s `call far [cs:<slot>]`
  − 0x2f87) / 4, or the entry number in `video_drv.dispatch_table.names`.
- `call_packed_slot_5` (0x4175) isn't the regular shape. It stays as
  plain instructions, in sequence, inside `call_free_sound.s`.

### 4. Optional rename
Rename `cseg_2f87` → `drv_slot_table` with `make name` (this also updates
`load_video_driver.s`) so lines read `drvcall x,drv_slot_table,16`.

## Order of work
1. Prototype the 3-thunk `3a50` run: macro + sidecar `length` + one `.s`.
   `make build DSAVANT` and `make verify DSAVANT` must be byte-identical.
2. If `as` rejects `proc`/`endp` or `sym&_+4*n` inside the macro, fall back
   to 4 grouped `.s` files with the instructions written out (still 4 files,
   but not one line per thunk).
3. Do the other three runs.
4. `make lint` and `make test`. If `lint/asm_macros.py` flags hand-written
   expansions, teach it about `drvcall`.

## Out of scope
- The ~40 slot data files in `ds/data/` (`drv_slot_*`, `cseg_2fxx`). They
  could later be merged into one fragment with a `length` on `2f87` (220
  bytes).
- Renaming the thunk prefix (done: `gfx_` → `call_`, `gfx_drv_` → `drv_slot_`).

## Before starting
The working tree has many uncommitted changes. Commit or stash them first so
this change can be reviewed on its own.
