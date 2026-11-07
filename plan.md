# Layout independence: where we are, and what's next

**Goal:** the game runs when built by `build.sh`. build.sh links modules in its
own order, so nothing may depend on where the original linker put things.
`make build` / `make rebuild` stay byte-exact throughout. The tools must be
generic: they are for projects beyond DSAVANT, so there are no
project-specific special cases in code. Fixing a poorly written `.s`/`.c`, or
a sidecar entry, is fine.

**Status:** `run.sh` (build_out_new, from build.sh) still doesn't run.
`make`'s build_out does. The copy-protection crack is out of the way:
`byte_patches[].disabled`, with `apps/DSAVANT/DS.EXE` put back to the
compiler's `74 04`.

---

## 1. The problem found by hand (and why no tool found it)

- **The bug:** `ds/data/drv_block_table_dest.s` holds `dw 01dfh`.
  `load_video_driver` copies DS's 71-byte driver block (buffer segments, far
  pointers, EMS state, PLAY far calls, mouse flags) to that offset in the
  loaded VGA/EGA driver.
- **Old layout:** in the original link, 0x1df is the driver's
  `drv_block_table`. It belongs to the `shared/data/drv_*` modules that
  follow `driver_dispatch`.
- **New layout:** build.sh pulls those modules from SHARED.LIB, so they land
  at the end. VGA puts `drv_block_table` at 0x4823, EGA at 0x50d5, and VGA's
  0x1df is now code (`clip_mouse_pointer_to_area_`). DS overwrites driver
  code, and the driver never gets its segments.

**Why it was missed:**

- **make layout:** it compares each binary only against its own symbols. A
  number in DS that is an address in *another* binary is never checked. The
  cross-binary check was in the original design and was never built (the
  `D` it reports means "module not linked").
- **badc:** it reads only `.c`, and only values ≥ 0x400 (`_ADDRESS_FLOOR`
  in `lib/badc.py`, an arbitrary cutoff). It doesn't look across binaries.
- **The sidecar:** it already knew. The note on 0x3063 says "offset in the
  loaded video driver". But that's prose, and no tool reads it.

## 2. make layout: work left

What it does today: it links each binary both ways (make's order and
build.sh's, both with `ln -t`). It maps every module old→new and classifies
every byte that differs or might matter.

- **Result:** no A (code differs), C (adjacency) or U (unplaced) findings
  anywhere; 82 B, and 5 D (informational).
- **What it rules out:** a whole class of problems inside a single binary.
  It does not show the game runs.

**To do:**

1. **Cross-binary check (kind X).**
   - For each binary U and each binary T that U doesn't link against (not
     its root or overlay; those share symbols and are covered already):
     report every word in U that equals the old address of a T symbol that
     moved in T's new link. The words come from operands and data, via
     `operand_words`.
   - Data symbols are the priority. Report code symbols too, apart from the
     dispatch table, which is fixed by construction.
   - **Acceptance:** with no rebuild (`REUSE=1`), it flags DS
     `drv_block_table_dest` → VGA/EGA `drv_block_table` (01df → 4823/50d5).
   - Add a synthetic unit test in `tests/test_layout.py`.
2. **Make the B list go away rather than be reviewed by eye.**
   - The 82 B hits were judged coincidences (message ids, coordinates, table
     data) by reading them. That doesn't scale.
   - Once the sources are constant-ized (section 3), a B hit at a *named*
     constant is resolved by its name. Only bare numbers stay on the list,
     so the list should shrink to zero as the sources are cleaned.
3. **Machine-readable cross-binary contracts in the sidecar.**
   - A word that is an address in another binary gets a structured entry
     (e.g. `{"offset": "3063", "space": "drv:vga", "symbol":
     "drv_block_table"}`), not a note.
   - Then make layout (and verify) can check that the target symbol is at
     that address in every build, and the generated `.s` can say so in a
     comment.
4. **Rename the kinds so they read plainly.** "D" means "not linked";
   cross-binary becomes "X".
5. **Fallback bisect, as a tool.** `make mix PROJECT BIN...` copies build_out
   and swaps in build_out_new's copy of the named binaries. A root and its
   overlays move together, because overlays are linked against their root's
   symbols. For when static checks run out.

## 3. make badc: removing its blind spots

Rule out *every* constant, not just the large ones.

1. **No numeric cutoff.** Drop `_ADDRESS_FLOOR` (and the round-decimal skip
   that was added to hide a false hit).
2. **Read `.s` as well as `.c`.**
   - Look at immediates (`mov ax, 1234h`), `dw`/`db` data, and
     displacements without a base register.
   - Parse Aztec assembler syntax (`0nnnh`, decimal, `offset x`, `x+N`).
3. **Every bare literal must end up in one of these classes.** Report the
   rest:
   - **a symbol:** `&npc_id`, `offset x`, `x+N`. This is an address and
     follows the layout.
   - **a named constant:** a `#define` / `equ` in a constants header, with a
     name that says what it is: `MSG_DEATH_CLOUD`, `SCREEN_X_MID`,
     `DRV_BLOCK_TABLE_VGA`.
   - **a structural number:** a value whose context says it can't be an
     address. Each context is listed once in badc, so a reviewer can see the
     whole set:
     - shift and rotate counts
     - `[bx+N]` struct field offsets
     - array sizes in declarations
     - `0`/`1`/`-1`
     - character literals
     - loop counts that are compared against a size
4. **Cross-binary.** A literal that equals an address in another binary
   (the X list from make layout) is reported even when it fits one of the
   structural contexts.
5. **Scale:** the tree has ~5,200 numeric literals in 333 `.s` files and
   ~37,000 in 884 `.c` files, counting 0/1. The structural classes should
   take most of them. The remainder is the work list for naming constants,
   ranked by badc's existing score per file.
6. **Fixes go in the sources:**
   - Name the constant in a header and regenerate.
   - Where the generator emits the literal itself, the fix is in the
     generator or sidecar (e.g. `data_names`), so it applies to every
     project.

## 4. Next iteration: making DSAVANT layout-independent

1. **Build the X check (2.1)** and confirm it flags the 0x1df word with
   `REUSE=1`. The tool has to find this before we fix it.
2. **Fix the source, not build.sh.**
   - The data the driver must hold at a fixed offset goes in the same module
     as the dispatch table. That's the rule already used for DS's 71-byte
     `driver_tables` module.
   - Use the existing sidecar `length` + `file` grouping (vga and ega
     sections): `driver_dispatch`'s module runs through the header data
     (`drv_buffer_segments` … `drv_ems_tables`).
   - About a dozen tiny `shared/data/drv_*` files become one
     `shared/drv/driver_dispatch.s`.
   - build.sh's FIRST table stays one line per driver: "the dispatch table
     opens the driver, because DS calls it at fixed offsets."
3. **Verify:**
   - `make build`, `make rebuild` (18 OK), `make link`, `make verify` and
     `make test` all pass.
   - `make layout`: X is clean.
   - The new VGA.SYM/EGA.SYM have `drv_block_table` at 0x01df.
4. **Playtest `./run.sh`.**
   - If it fails, start with the X list (code symbols included).
   - Then the B list.
   - Then `make mix` (2.5) to narrow it to one binary.

## 5. Keep build.sh simple

build.sh is meant to be a plain, readable build script. Each rule it carries
is a layout dependency the sources haven't absorbed yet:

- **FIRST:** a driver's dispatch table first.
- **ENTRY:** startup modules nothing calls.
- **The globals ordering:** commons laid out in first-seen order.
- **Per-object CFLAGS.**

After this iteration, go through each rule and ask whether a source change
(a module merge, a declared array, one file of globals) can remove it. The
goal is that what's left is the irreducible rules of the toolchain.
