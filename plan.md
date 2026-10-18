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
| indexed DS bound | **51** | **545** | 0 |

The oracle is frozen. All rows were measured with its final version, in which
a displacement counts only in the segment the edit moves and `bp` frame slots
never count; that change cut 14–16 false code findings per tree and left data
unchanged.

The last row binds an indexed DS displacement (`[bx - 0x7b7e]` →
`[bx + bss_8482]`) when it starts an object some binary of the host family
names absolutely (the build's `ds_starts` union); a field offset such as
`[bx + 0x19f]` stays a number. 662 of the 666 indexed findings went; the 4
left are the C-relinked `draw_fill_action_slot_table` (§4.3 `_RAW_DATA`).

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
- `hidden_flow` **150**: near call/jmp sites emitted as bytes whose target the
  source shows as code (a lower bound; it rises mechanically as fragments move
  into `shared/` and lose their `; 0x` anchors).
- `str_imm` **746** / `ds_index` **2178**: DS addresses that code spells as
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
| F6 | numeric `dw` in a `; literal` table | **open**: 223 words, each table must be shown to hold no address |
| F7 | pointer word in data | done: scorer + corpus + `pointer_arrays` |
| F8 | MZ relocation-table offset word | in scope |
| F9 | immediates and displacements that are addresses | **open**: `str_imm` 746, `ds_index` 2178 |
| F10 | `; 0x<F>` offset comments | comments, assemble to nothing |

A literal table word and an unresolved pointer render alike (`dw 0x…. ; 0x<slot>`);
the trailing `; literal` tag makes it `f6`/inert, its absence `f7`/`data_shift`.

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
   - `str_imm` **746**: a `mov` immediate that is a string's address. vinstall's
     `mov ax, 0x1630; push ax` passes `"nul"`, vmaze loads `'OTWNDATA.VGA'`, a
     driver's `mov dx, 0x10ea` names a `$`-terminated console message. Values
     under 0x100 are left out. By binary: vinstall 144, vpcmk 123, vpcvw 108,
     vpclv 84, ega 49, vbase 45, ds 40, …
   - `ds_index` **2178**: a `[bx/si/di + disp]` (no override) whose displacement
     is a DS address, almost all overlays indexing host arrays (`mov word
     [bx + 0x5c0c], ax`). Values under 0x100 are taken as struct fields, so a low
     table such as vinstall's `[bx + 0xa4]` is missed.

   Binding either needs an **immediate-address rule**, the immediate analogue of
   the pointer scorer, with a consumer as the proof (a `push` to a callee that
   takes a `char *`, a `[reg + disp]` read). Drivers also have non-string cases,
   e.g. `ega`'s `add si, strict word 0x2602` rebasing onto a CS buffer.
2. **F6 literal tables (223 words).** "Not an address" is a claim. Each
   `; literal` table needs evidence: the scorer's negative evidence, a consumer
   that uses it arithmetically, or a sidecar entry checked against the bytes.
3. **The C data-reference contract.** `lib/aztec/relink.py` still has the
   `_RAW_DATA` fallback: a hand-written `.c` naming a DS offset the build has no
   symbol for becomes a bare literal, so a wrong `dseg_`/`bss_` prefix is
   invisible (DS:0x8482 is named `bss_8482`, past `bss_boundary`). It should
   resolve to the canonical name or fail.
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
