# Plan: layout-independent `src_DSAVANT`

**Goal.** The generated tree must stay consistent wherever bytes are inserted or
deleted. Every value that shifts when code or data is resized is an assembler
expression (labels, `$`, `$$`, derived `equ`s), so the image still assembles into
a coherent, loadable program without hand-editing a hex constant.

- A **frozen literal** is a bare number standing in for a location, a size or an
  offset. **There are no waivers:** a value stays literal only when it names
  memory outside the image (Appendix B).
- `make verify DSAVANT` (18/18) plus the unit suite is the standing check, but it
  cannot catch a *wrong* expression: at the original layout a right and a wrong
  one give the same bytes. The real bar is the **edit-property test**: insert or
  delete a byte and the image must still be coherent (Section 5).
- A literal replaced by a formula keeps its original value in a leading comment
  (Appendix A).

---

## 1. Census

**The progress number is the shift oracle**, not the regex census below.
`python3 -m lib.verify.shift_oracle` (`lib/verify/shift_oracle.py`) assembles
every master as is and with 16 bytes inserted (mid-code; at the DS start, or the
host's for an overlay), pairs the images through the NASM listings and reports
each literal operand or `dw` that should have moved and did not. Ratchet:
`tests/test_shift_oracle.py` (`make test slow`).

| tree | code insert | data insert | branch |
|------|-------------|-------------|--------|
| 801b643f | 130 | 982 | 16 |
| 2d7d06c5 | 135 | 984 | 0 |
| 734d80e1 | 51 | 1207 | 0 |
| indexed DS bound | 51 | 545 | 0 |
| pointer arguments | 57 | 356 | 0 |
| driver tables | 29 | 356 | 0 |
| C data names | 29 | 358 | 0 |
| bc4e46ac (names cleanup) | 26 | 364 | 0 |
| indexed after immediates | 26 | 262 | 0 |
| index + DS table start | **26** | **151** | 0 |

The oracle is frozen. All rows were measured with its final version, in which
a displacement counts only in the segment the edit moves and `bp` frame slots
never count; that change cut 14–16 false code findings per tree and left data
unchanged.

The last row binds a DS table start added to an index: `mov ax, 0x248;
imul word [bp + 4]; add ax, 0x5bf4` is the immediate spelling of
`[bx + 0x5bf4]`, so it binds under the indexed rule's proof, that the constant
starts a named object (`symbols._resolve_index_offset_symbols`, over
`segdataflow.index_offset_immediates`). The row before it runs the indexed
pass after the immediates are named, so a start this binary names only
through an immediate (`mov ax, bss_91ee`) binds `[bx - 0x6e12]` too. The 26
code findings are all constants equal to a label by chance: ega's `0x4000`/
`0x3a00`, vmnpc's csav frame sizes, vmaze `0x7fb`, and six overlay-own DS
string arguments in vpclv/vpcmk/vpops (real F9, counted again on the data side).

The indexed DS bound row binds an indexed DS displacement (`[bx - 0x7b7e]` →
`[bx + bss_8482]`) when it starts an object some binary of the host family
names absolutely (the build's `ds_starts` union); a field offset such as
`[bx + 0x19f]` stays a number. 662 of the 666 indexed findings went; the 4
left were the C-relinked `draw_fill_action_slot_table`, fixed by the C data
names row below.

The next row names a constant the program passes into an argument its
routine reads memory through (`lib.argpointers`): the routine loads the
argument and reads bytes through it, or hands it to one that does, or is one
of five library routines that pass a buffer to DOS (`open`, `read`, `write`,
`movmem`, the overlay loader). 856 constants became names; a value is never
judged by whether it happens to land on a string (0x3e8 and 0x400 do). Left as
numbers: `[bx + si]` reads, where either register may be the pointer
(`ds_app_HVHT` keeps it in `bx`, `set_bitmap_bit` in `si`), calls through far
thunks, and returned addresses. Code rose 51 → 57 only because vmnpc's newly
named own data sits at CS 0xff7a–0xffac, which six csav frame sizes equal by
chance.

The driver row names the code-segment table addresses the raw drivers spell
as numbers. `segdataflow.immediate_pointer_spaces` now also accepts, for a
code-segment address only: `lea reg, [disp]`; a table start added to an index
(`shl bx, 1; add bx, 0x4ab4; mov ax, [cs:bx]`) or an index added to a table
start (`mov bx, 0x13df; add bx, ax`), where an index is a shifted, multiplied
or zero-extended value; and a register handed to a near routine that reads
through it (`mov bx, 0x33b3; call leaf_loc_OHGP` → `cs xlatb`). 17 sites the
scan cannot reach (end-of-table loop bounds, frame-slot spills, a dead load)
are reviewed `immediate_pointers` in the sidecar. Two wrong names went with
it: ega/vga's shared bit-row clear (`lea di, [data_36dd]`) had its label 0x100
bytes too high, inside the routine's own code, and ds's memory-block table
(`lea si, [bss_2d40]`, read as `[cs:si]`) was named in DS. The only driver
findings left are ega's EMS page size `0x4000` and copy count `0x3a00`.

The data rise at 4a0e0cdb is visibility: 73 → 1419 named DS objects, so more
literals match a known object. The name-independent classes held at 951–953.
Nearly all of the data side is F9 (Section 4.1).

`count_frozen_addrs` (`lib/compare/records.py`) files every emitted literal it
has a pattern for (diagnostic only):

| class | breaks when | now |
|-------|-------------|-----|
| `code_shift` | code before it resizes | 0 |
| `data_shift` | the data segment resizes | 0 |
| `inert` | never: outside the image, plus the unproven `f6` words | 234 |

`total = code_shift + data_shift` = **0**. That is not the goal reached: the
census only sees literals it has a pattern for. Per bucket, everything is 0
except `f6` 223 (to prove, Section 4) and `buffers` 4 (a zero run starting on a
label is an object's body; inert).

Auxiliary counters (all in `BASELINE_TOTALS`, all ratchets that only fall):

- `names_used` **7** / `names_inert` **0**: named frozen addresses the tree
  refers to / does not.
- `hidden_flow` **134**: near call/jmp sites emitted as bytes whose target the
  source shows as code (a lower bound; it rises mechanically as fragments move
  into `shared/` and lose their `; 0x` anchors).
- `str_imm` **406** / `ds_index` **2048**: DS addresses that code spells as
  numbers (Section 4). Not in `total`: each is a shape test on the binary's data
  segment, so a few hits are numbers.

---

## 2. Frozen-value taxonomy

| id | value | status |
|----|-------|--------|
| F1 | MZ header sizes, `e_ss`, `e_sp`, `e_minalloc` | dynamic |
| F2 | overlay header (`o_csize`, `o_entry`, `o_dsize`, `o_bss`, `o_corg`, `o_dorg`) | dynamic / bound to the host |
| F3 | address-named `equ`s (`cseg_`, `loc_`, …) | 0 |
| F4 | `dseg_`/`bss_` `equ`s, host DS-size immediates | dynamic; `psp_` inert |
| F5 | gap to `data_origin` | dynamic |
| F6 | numeric `dw` in a `; literal` table | done: 223 switch keys, each compared by the recognized helper |
| F7 | pointer word in data | done: scorer + corpus + `pointer_arrays` |
| F8 | MZ relocation-table offset word | in scope |
| F9 | immediates and displacements that are addresses | **open**: `str_imm` 406, `ds_index` 2048 |
| F10 | `; 0x<F>` offset comments | comments, assemble to nothing |

A literal table word and an unresolved pointer render alike (`dw 0x…. ; 0x<slot>`);
the trailing `; literal` tag makes it `f6`/inert, its absence `f7`/`data_shift`.
The tag is evidence, not a guess: only a key of an Aztec inline switch carries
it (`mov cx, N; call` a helper matching `AZTEC_SWITCH_BODY` byte for byte, which
pops the table base and `repne scasw`s the N−1 keys against the switch value, so
a key is compared and never read through). A table merely *assumed* literal (a
`mov cx; call` dispatch the recognizer refused, a dropped direct far transfer)
keeps its raw words untagged and counts as `f7`.

---

## 3. How values are bound (reference)

**MZ host (`ds`, `vinstall`).** Header sizes come from `__zimage_end`; `e_ss` from
the data-segment paragraph anchor defined at the code→data gap:

```nasm
%if ($ - $$) > ORIG
    align 16, db 0
    __zdataseg_para equ ($ - $$ - HEADER) / 16
%else
    times (ORIG - ($ - $$)) db 0
    __zdataseg_para equ (ORIG - HEADER) / 16
%endif
__zdseg_start:
```

Data names bind to bytes (`dseg_0c6c equ __zdseg_0c6c - __zdseg_start`). BSS is
an `absolute __zimage_end` block of labels and `resb` gaps; the stack is its last
object, so `e_sp`, `e_minalloc` and `__zbss_size` are spans of it. Host DS-size
immediates are `__zdseg_end`.

**Overlays.** An overlay's data offsets are the host's DS offsets and `o_dorg` is
the host DS size, so the host owns the DS name map and the overlays `%include` it
(`inc/host_symbols.inc`, under `nobits`). A name at or past `__zdseg_end` is the
overlay's own data/BSS: `bss_9408 equ __zdseg_end + (__zobss_9408 - __zdata_start)`.
`o_corg` is the host's resident-code end, `__zres_end`; an overlay table target is
`label - IMAGE_BASE + __zres_end`.

**Assembly model.** Each image assembles at its runtime address: `section .text
vstart=VBASE` (overlay `o_corg - 14`, MZ `-start_offset`, driver 0) and
`IMAGE_BASE equ start_offset + VBASE`. Host address-derived names carry a `ds_`
prefix so they cannot clash with an overlay's.

**Raw drivers (`play`, `ega`, `vga`).** Loaded to `segment:0x100`, so file offset
`f` runs at `CS:0x100 + f`; `IMAGE_BASE equ -0x0100` keeps the encodings while
`cseg_` names land on their bytes. A driver's DS is set per routine (`mov ax, cs;
mov ds, ax`, or the host's), and the dataflow seeds a root reached only by direct
calls with its callers' merged state.

**Stored pointers.** `lib/compare/pointers.py` scores aligned candidate words
(start −2, accept ≥ 0, needs a strong anchor: relocation, pointer-sized table
read, proven consumer, or ≥3-word run; hard refusals for targets inside a string
and fixed DS slots). `promote.py` emits the accepted set plus the sidecar corpus
(`data_pointers`, `not_pointers`, and `pointer_arrays`, which declares a strided
record table at any byte and is checked to name DS strings) as `dw <label>`.
A `not_pointers` word is never emitted as a data pointer.

**Code-segment tables.** `[cs:reg + disp]` and switch dispatchers bind to the
table's label (`jumptables._bind_cs_table_operands`); the census gates
`cs_index` and `rebased` at 0. Self-modified operands are `__zinsn_<start> + k`.

**Regions.** `regions.py` carves an image into typed regions (code, typed,
resource, pointer table, string, entropy, zero, data); they deprioritise words
and supply the "inside a string" refusal.

---

## 4. Open work

1. **DS addresses spelled as numbers in code (F9).** Counted by
   `count_string_immediates` / `count_ds_index`, with each binary's own DS (an MZ
   image's; an overlay's is the host's plus its data at `o_dorg`; a driver's is
   its image at `CS:0x100`):
   - `str_imm` **406**: a `mov` immediate that is a string's address. vinstall's
     `mov ax, 0x1630; push ax` passes `"nul"`, vmaze loads `'OTWNDATA.VGA'`, a
     driver's `mov dx, 0x10ea` names a `$`-terminated console message. Values
     under 0x100 are left out.
   - `ds_index` **2048**: a `[bx/si/di + disp]` (no override) whose displacement
     is a DS address, almost all overlays indexing host arrays (`mov word
     [bx + 0x5c0c], ax`). Values under 0x100 are taken as struct fields, so a low
     table such as vinstall's `[bx + 0xa4]` is missed.

   What the oracle's 151 data findings are now: ~148 `mov reg, D` (mostly
   pushed to a callee `lib.argpointers` cannot prove reads through it), 29
   `dw`, 8 `add` whose index is not provable (`add ax, 0x3e12` in ds
   `TIMR`), a few interior offsets of a named object (`[bx - 0x7cdd]` =
   `bss_8322 + 1` in `shared/api_idx_000e_VRIR.asm`), and 3 `cmp` loop bounds.

   Binding the rest needs an **immediate-address rule**, the immediate analogue of
   the pointer scorer, with a consumer as the proof (a `push` to a callee that
   takes a `char *`, a `[reg + disp]` read). Drivers also have non-string cases,
   e.g. `ega`'s `add si, strict word 0x2602` rebasing onto a CS buffer.
2. **F6 literal tables: done.** All 223 tagged words are switch keys (§2):
   each table follows `mov cx, N; call <helper>` and holds exactly N−1 tagged
   keys before its N targets. The oracle reports one of them, vbase
   `loc_JJHG.asm:170` `dw 0x0116` (data insert): the key equals a host DS
   address by chance. The switch translates keyboard codes (`0x100 + scan`;
   its neighbours test `0x13c`–`0x14c`, `0x1ab`, `0x1d8`), so 0x0116 is
   Alt+U and stays a number; it is one of the 356.
3. **The C data-reference contract: done.** A hand-written `.c` that names a
   DS object by address (`bss_6a1a`) gets that symbol even when no asm operand
   names it yet: `relink` mints it in `mem_equ`, so an overlay exports it and
   the host declares it. The spelling must be the build's own
   (`symbols.data_symbol`); `dseg_8482` for a BSS object is a link error that
   names `bss_8482`. The two shared C files were renamed accordingly (13 BSS
   objects). Their names also bind the asm copies of the same routines in the
   other overlays (62 numbers became names in all, through the step-2 indexed rule). Data rose
   356 → 358: the C's 4 literals went, and the newly declared 0x01a4/0x01d4
   expose 6 numbers equal to them by chance (the 420-byte record size handed
   to `malloc`/`setmem`, message number 0x1d4). One real address it exposed,
   ds `add ax, 0x6a1a` after `imul` by the 350-byte row size, is declared as a
   `ds` `immediate_pointers` entry (now accepted alongside `cs`).
4. **Sidecar-authoritative names.** `vga`'s `cseg_4102` sits on an operand the
   sidecar's `immediate_labels` names `data_4202`; `_resolve_imm_symbols` mints
   it anyway and a dead label is stamped. Either do not mint a name an
   `immediate_labels` entry covers, or declare the object (an `objects` list,
   honoured like `declared_roots`).
5. **Edit-property coverage for an overlay's own code.** The host is covered
   (`HostIncludeTests`); an overlay's data and BSS are; an overlay code edit is not.
6. **ELF/DWARF for overlays and drivers** (`make elf-rebuild`). The prep is
   MZ-shaped; it needs kind-aware headers, the `o_entry - o_corg + 14` entry
   mapping and a per-type load base (`EXE → 0`, `OVR → o_corg`, `DRV → 0x100`).
7. **Final gate:** a shuffle build (reorder fragments, rebuild) and a DOSBox-X
   boot of the result.
8. **Vendor data as C.** The library's data is still `db` blocks: `ctp_` (Manx
   `ctype.c` in `SRC/MISC.ARC`, `char ctp_[129] = {...}`), `Cbuffs` and the
   like. It needs a data-recovery path: compile the vendor definition and accept
   it only where its bytes equal the exe's at the name's address. The remaining
   code misses (`format`, `calloc`, `fputs`, `gmtime`, `utime`, `raise`,
   `vfprintf`, `_scan`, `strcmp`/`strncmp`) match neither v3.40a nor v5.2a
   sources, so they likely come from a library release we do not have.

---

## 5. Acceptance

1. `make build && make verify DSAVANT` 18/18 — necessary, not sufficient.
2. Unit suite green; every promoted word round-trips (`micro_assemble`).
3. **Edit-property tests** (the real gate): a byte inserted in code or data
   leaves a coherent image and moves every reference that should move
   (`InsertBytePropertyTests`, `HostIncludeTests`, the promote and inline-switch
   edit tests).
4. No `not_pointers` word is emitted as a data pointer.
5. A second `make build` is a fixed point; the census never rises.

---

## 6. Extraction structure (current rules)

- **One file per routine.** `_select_split_ranges` (`lib/compare/splitting.py`)
  cuts at named routines and declared dispatch roots, never at a bare internal
  `loc_`. `_split_off_foreign_objects` trims what follows a routine's own code: a
  code neighbour becomes its own file, a data neighbour goes to the master.
- **A switch is one file.** An arm of a validated table that is not pinned (call
  target, declared handler, seed) has `role == 'case'` and is named
  `jumptable_<table>_case_<n>`; it never starts a range, is not content-tagged
  or `ds_`-prefixed, and `ForceCodePhase` does not treat it as a function entry.
  A table the terminator vote rejects is still valid when the dispatcher's own
  bound proves it (`JumpTableInfo.bounded`: an adjacent `cmp`/`jcc`, `mov cx, N;
  repne scas`, or an inline switch's layout), not a windowed guess.
- **Deliberately split:** blocks laid out away from their routine (ega/vga
  `loc_4b52`/`loc_42a0`, play `loc_0875`; one file is one contiguous range) and
  tables whose targets are real routines (play's mode-dispatch tables, the
  `sprintf` tables in the ds/vinstall masters).
- **Deliberately glued:** a label inside a routine's own control flow that
  another routine also reaches, and the `__zdata_start`/`__zcode_start` anchors.
- **asm only.** A routine Aztec cannot reproduce (port I/O, `int`, `cli`/`sti`,
  `rep`, far `ret`/`call`, …) goes under `<binary>/asm_only/` (`lib/asm_only.py`);
  the rest are candidates for a hand-written `.c` (`lib/compare/cgate.py`).
- **Sharing.** Byte-identical fragments (ignoring `; 0x` comments and label
  spellings) collapse into `shared/` (`lib/shared.py`).
- **Names.** A generic routine is `<category>_loc_<TAG>`, the tag a digest of its
  own body (`lib/names.py:content_tag`), so adding a routine renames nothing
  else. A byte nothing references belongs in the sidecar, not a dead label.

---

## 7. Key modules

| area | module |
|------|--------|
| census | `lib/compare/records.py` (`count_frozen_addrs`, `count_name_use`, `count_hidden_flow`, `count_string_immediates`, `count_ds_index`); baseline in `tests/test_dynamic_addrs.py` |
| decoding / toolchain idioms | `lib/phases/recursive.py` (generic); `aztec_overlay.py`, `aztec_switch.py` (wired in `main/phases.py`) |
| pointer scoring / promotion | `lib/compare/pointers.py`, `promote.py` |
| emission | `lib/compare/render.py`, `symbols.py`, `jumptables.py` |
| splitting / naming | `lib/compare/splitting.py`, `lib/names.py`, `lib/asm_only.py`, `lib/shared.py` |
| regions | `lib/compare/regions.py` |
| segments / origins | `lib/segments.py` |
| sidecar | `sidecar/DSAVANT.json`, `lib/sidecar/` |
| edits / rebuild | `main/runner.py`, `make/*` |
| round-trip | `lib/verify/assemble.py` (`micro_assemble`) |
| pipeline ledger | `lib/stagelog.py`, `flow/` (`make flow`) |

(Paths are under `disassembler/`.)

**Rule for new behaviour.** Every pipeline step is a `stagelog.step(...)`
checkpoint. New behaviour either extends the step that produces the artifact, or
is a declared `repair`/`recompute`/`cleanup` with `repairs=` and `why=`. Ledgers
are opt-in (`ASM_STAGELOG=1 make build <project>`); `make flow ARGS="--check"` and
`tests/test_pipeline_lock.py` fail on an unlisted stage or an undeclared rewrite.
After an intended change: `make flow ARGS="--lock"`.

---

## Appendix A — Comment convention

A literal replaced by a formula prints its original value as a separate leading
comment, then the description; the `; 0x<offset>` comment stays last:

```nasm
    dw (__zimage_end - $$) % 512 ; 0x0056 ; e_cblp: bytes in final 512-byte page
    dw __zdataseg_para           ; 0x0ff6 ; e_ss: initial stack segment
```

Hex is fixed-width (`0x%04x`, bytes `0x%02x`). An in-place label carries no value
comment. Literal data words carry a trailing `; literal` tag.

## Appendix B — Fixed external addresses (not waivers)

The only values kept literal, because they name memory outside the image:

- `bios_data_*` and any `external_data` field (the BIOS data area, segment 0x40);
- `psp_*` fields (the DOS Program Segment Prefix).
