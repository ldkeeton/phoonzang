# Sidecar schema

A sidecar is a JSON file of facts about a project's binaries. The disassembler
cannot work these out alone: names, data ranges, table shapes, patches and
build flags. Each project has one, at `disassembler/sidecar/<PROJECT>.json`
(for example `DSAVANT.json`).

`lib/sidecar/loader.py` loads the file and checks it. A file that breaks a
rule below raises `SidecarError`, with a path to the bad entry such as
`binaries.ds.function_names[3a50].length`.

---

## Conventions

| Term | Meaning |
|---|---|
| **offset** | A hex string with no `0x` (`"2f87"`), or a non-negative JSON integer. `external_data` keys also accept `"0x0410"`. |
| **file offset** | A byte position in the binary file as shipped. `force_*`, tables, pointers, patches and `bands` use these. They match the `; 0x...` comments in the generated assembly. |
| **DS offset** | An offset into the data segment, the value an operand encodes. `data_names`, `globals`, `emits` and `records.at` use these. |
| **function key** | A `function_names` key. For an `mz` binary it is a file offset. For any other type it is relative to `start_offset`. |
| **identifier** | Matches `^[A-Za-z_@.$?][A-Za-z0-9_@.$?]*$`, so NASM accepts it. |
| **segment** | One of `es`, `ds`, `cs`, `ss`, `fs`, `gs`. |
| **range** | `start`/`end` are both inclusive, except in `emits`, where `end` is exclusive. |
| **note** | A free-text string. Most entries allow one. It is a comment, and some entries require it. |

Global rules:

- Every `name` (and every dispatch-table `names` value) can be at most
  **31 characters**. Aztec C keeps only that many, so a longer name cannot be
  referenced from C.
- **Every entry must be used.** Each binary-level entry (a forced range, a
  table, a name, a pointer assertion) must be applied by the build or agree
  with what the analysis found anyway. If an entry ends up doing nothing
  (stale offset, renamed symbol, overridden by another source), the build
  fails with `N sidecar entries not applied`
  (`lib/sidecar/usage.py`). A `function_names` `name` that only repeats the
  name a dispatch slot already gives is also reported, as redundant.

---

## Top level

```json
{
  "app": "DSAVANT",
  "title": "Wizardry 7: Crusaders of the Dark Savant",
  "version": 1,
  "dos_compilers": ["Manx Aztec C86 v42b"],
  "compiler_flags": { ... },
  "huffman_strings": { ... },
  "data_files": { ... },
  "apis": { ... },
  "binaries": { ... }
}
```

| Key | Type | Req. | Description |
|---|---|---|---|
| `app` | string | **yes** | Project name. Matches the sidecar's file name and `apps/<app>/`. |
| `title` | string | | Human-readable title. |
| `version` | int | | Sidecar format version. |
| `dos_compilers` | string[] | | Compiler folder names (non-empty strings). |
| `aztec` | object | | Legacy compiler block: string `compiler`/`sources`, list `flags`/`app_flags`. |
| `compiler_flags` | object | | How each source is compiled. See [compiler_flags](#compiler_flags). |
| `vendor_patches` | object | | How the game's copies of vendor asm routines differ from the vendor's. See [vendor_patches](#vendor_patches). |
| `huffman_strings` | object | | The game's Huffman-packed message files. See [huffman_strings](#huffman_strings). |
| `data_files` | object | | What the code reads each game data file into. See [data_files](#data_files). |
| `apis` | object | | Shared driver dispatch tables. See [apis](#apis). |
| `binaries` | object | | One entry for each executable, overlay or driver. See [binaries](#binaries). |
| `force_data`, `force_code` | range[] | | Project-wide defaults. A binary's own list replaces them. |
| `data_pointers`, `not_pointers` | assertion[] | | Project-wide defaults. A binary's own list replaces them. |

`pointer_arrays` and `immediate_pointers` are **rejected** at the top level.
They only work under a binary.

---

## compiler_flags

```json
"compiler_flags": {
  "default":  ["-n", "+b", "+m", "+c"],
  "asm":      ["-dMODEL=0", "-l"],
  "prefixes": { "aztec_": ["-n"] }
}
```

| Key | Type | Description |
|---|---|---|
| `default` | string[] | `cc` flags for a routine that no prefix matches. |
| `asm` | string[] | `as` flags for every assembly module (vendor `.asm` and routine `.s`). Project-level only, and the build needs it. |
| `prefixes` | {string: string[]} | Flags for routines whose label starts with the key. The longest matching prefix wins. |

A binary can have its own `compiler_flags` with `default` and/or `prefixes`,
but not `asm`. When resolving a routine's flags:

1. The longest prefix from the binary's and the project's `prefixes` wins.
   On a tie, the binary's prefix wins.
2. Otherwise the binary's `default` applies.
3. Otherwise the project's `default` applies.

---

## vendor_patches

```json
"vendor_patches": {
  "<label>": {
    "version": "4.2b",
    "file": "format.asm",
    "edits": [ { "find": "...", "replace": "..." } ]
  }
}
```

Each entry names a vendor source file. Its `edits` are applied in order and
turn the vendor text into the source of the bytes actually in the game
binary. `edits` must be a non-empty list, and every `find` must be a
non-empty string.

---

## huffman_strings

```json
"huffman_strings": {
  "directory": "MSG.HDR",
  "blocks": "MSG.DBS",
  "tree": "MISC.HDR",
  "groups": [ { "value": 100, "name": "MSG_RACE_BASE" } ]
}
```

| Key | Type | Req. | Description |
|---|---|---|---|
| `directory` | file name | **yes** | Index into the 1K blocks. |
| `blocks` | file name | **yes** | The packed message blocks. |
| `tree` | file name | **yes** | The Huffman tree. |
| `groups` | object[] | | Named bases that computed message ids start from. `value` is an int or a decimal/hex string, ≥ 0. `name` is an identifier. Both must be unique. |

No other keys are allowed.

---

## data_files

Used by `make data` (`lib/cdata/project.py`). For each game data file, it
lists the parts in the order the code reads them. The parts must cover the
whole file exactly.

Typed parts derive their destination and declaration scope from the code's
resource reads. Filename strings and file handles connect startup opens to
reads; indexed record calls supply their destinations; multipart files match
ordered reads, including consecutive memory runs and runtime record counts.
No source locations or destination hints are stored for typed parts.

`size` gives bytes; without `size` or `count` a typed part takes the rest of
the file. `count` gives elements and `record` gives bytes per element.

| Kind | Description |
|---|---|
| Typed part | A part with size/count/record and annotations; its destination is discovered from the reader code. |
| `memory: <variable>` | A run of consecutive variables starting at this one, `size` bytes, repeated `count` times. |
| `raw: <name>` | Records of `record` bytes for an unnamed buffer. `type` is an optional C scalar element type (default byte); `count` gives the records. |

Optional on any part:

| Key | Description |
|---|---|
| `note` | Comment written above the part. |
| `element_labels` | A `huffman_strings.groups` name, or `"text"`. Each element is annotated with message `base + value`, or with its leading text. |
| `field_labels` | `{field: group}`, the same annotation for each named field. |
| `records` | `"messages"`: decode the part as Huffman message blocks. |

The parts' types come from the code's declarations and the recovered record
layouts. No layout is written here.

---

## apis

Named driver interfaces. A driver binary uses one with `"api"`, and a
program's `driver_slots` call into one.

```json
"apis": {
  "video_drv": {
    "dispatch_table": {
      "base_offset": 3,
      "entry_size": 4,
      "count": 55,
      "format": "e8_rel16_cb",
      "names": { "0": "mouse_init", "1": "mouse_off" }
    }
  }
}
```

| Key | Type | Description |
|---|---|---|
| `base_offset` | int | Offset of entry 0 in the driver image. |
| `entry_size` | int | Bytes per entry. |
| `count` | int | Number of entries. |
| `format` | string | `e8_rel16_cb`: each entry is `call rel16; retf`. The entry and its handler are both treated as code. |
| `names` | {"n": identifier} | Names for entry numbers `0 … count-1`. Names can be partial. |

A dispatch table under a binary is rejected. It belongs here.

---

## binaries

Keyed by the binary's short name (`ds`, `vinit`, `vga`, …). That short name
is also its source folder (`src_<APP>/<name>/`).

```json
"ds": {
  "file": "DS.EXE",
  "desc": "Main program: Aztec C runtime, game loop, ...",
  "type": "mz",
  "start_offset": 512,
  "entry_symbol": "aztec_begin",
  "link": { "flags": ["+C", "af00", "+D", "2100"] },
  "fingerprint-start": "9e68e133…",
  "fingerprint-end":   "b94811b8…",
  ...
}
```

### Identity and build

| Key | Type | Description |
|---|---|---|
| `file` | string | File name under `apps/<app>/`. |
| `desc` | string | One-line description. |
| `type` | enum | `mz` (DOS EXE), `aztec_overlay` (Aztec `.OVR`), or `raw_drv` (headerless driver image). |
| `start_offset` | int | File offset of the load image: 512 for the MZ header, 14 for an overlay header, 0 for a driver. |
| `entry_symbol` | identifier | Label for the program entry point. |
| `api` | string | Name of an `apis` entry with a `dispatch_table`. The driver implements that interface. |
| `link` | object | `{"flags": [string…]}`: extra `ln` flags. No other keys are allowed. |
| `compiler_flags` | object | Per-binary override (`default`, `prefixes`, `note`). See [compiler_flags](#compiler_flags). |
| `fingerprint-start` | hex string | SHA-256 of the file's first 512 bytes. |
| `fingerprint-end` | hex string | SHA-256 of the file's last 512 bytes. |
| `globals` | object | `{"start": "0e0e", "end": "9096", "note"?}`: the DS range of the BSS objects that are the binary's commons (the `globals` fragment). Each bound is a 4-digit hex string and is optional. A module's own BSS outside it goes in that module's `function_names` `emits`. |
| `bands` | object[] | See [bands](#bands). |
| `byte_patches` | object[] | See [byte_patches](#byte_patches). |

### Disassembly hints

| Key | Type | Description |
|---|---|---|
| `force_data` | range[] | File-offset ranges that must be data. |
| `force_code` | range[] | File-offset ranges that must be code. |
| `jump_tables` | object[] | Switch tables. See [jump_tables](#jump_tables). |
| `code_tables` | object[] | Code-pointer tables. See [code_tables](#code_tables). |
| `char_tables` | object[] | Character-indexed byte tables. See [char_tables](#char_tables). |
| `driver_slots` | object[] | Far-pointer tables into a driver API. See [driver_slots](#driver_slots). |
| `data_pointers` | assertion[] | Words that **are** pointers. See [Pointer assertions](#pointer-assertions). |
| `not_pointers` | assertion[] | Words that are **not** pointers. |
| `immediate_pointers` | assertion[] | Instruction immediates that are addresses. |
| `pointer_arrays` | object[] | Record arrays with pointer fields. See [pointer_arrays](#pointer_arrays). |

### Naming

| Key | Type | Description |
|---|---|---|
| `function_names` | object | Routines and code fragments, by function key. See [function_names](#function_names). |
| `data_names` | object | Data objects, by DS offset. See [data_names / code_data_names](#data_names--code_data_names). |
| `code_data_names` | object | Data reached through CS, by file offset. Same shape as `data_names`. |
| `records` | object | Struct layouts for named data. See [records](#records). |
| `external_data` | object | Fixed addresses outside the image. See [external_data](#external_data). |

---

### Ranges (`force_data`, `force_code`)

```json
{ "start": "08d4", "end": "08e1", "note": "Seven-entry switch table" }
```

`start` is required. `end` is inclusive and defaults to `start`. A binary's
`force_data` and `force_code` ranges must not overlap. A binary without its
own list inherits the project-level list.

### bands

```json
"bands": [
  { "name": "game",    "start": "0200", "end": "2f34", "note": "..." },
  { "name": "library", "start": "2f36", "end": "4378" },
  { "name": "aztec",   "start": "4379", "end": "...", "lib": "c.lib",
    "objects": { "ovloader": "ovld.o", "$ovbgn": "ovbgn.o" } }
]
```

The address ranges left by the link line, in link order. `name` is one of
`game`, `library` or `aztec`, and is also the folder its fragments go in
(`ds/game/x.asm`). `start`/`end` are inclusive file offsets. Bands must be in
ascending order and must not overlap. Gaps (alignment padding, for example)
are allowed.

`lib` (on the `aztec` band only) names the compiler library the runtime comes
from. With it, the runtime is not part of the tree. The `makefile` and
`build.sh` link Manx's own `C.LIB` last, after any `.rsm`, the way the
original did. Game code has to call the runtime by Manx's names (`strcpy`,
not `aztec_strcpy`); the build rejects the `aztec_` spelling, because `C.LIB`
doesn't define it. The NASM masters still assemble the band byte for byte,
from fragments written to `.cache/c.lib/` in the tree instead of
`ds/aztec/`, and every runtime name in the generated asm is spelled as Manx's
sources spell it: `call strcpy`, `call $csav`, `call _read`. A `$` also
escapes a name NASM reserves (`call $wait`). An overlay has no bands, so it
links the library its host does. Without `lib`, the runtime stays in the
tree as sources, with the generator's `aztec_` names, as before.

`objects` (only with `lib`) names the runtime modules Manx ships as object
files in its `LIB/` rather than as library members, by the routine each
holds: here `OVLD.O` (the overlay loader) and `OVBGN.O` (an overlay's
startup). Nothing can find these from symbols (nothing calls `$ovbgn`), so
the sidecar says it. Each binary that has the routine links that object in
its place in the `.lnk` and in `build.sh`'s `OBJECTS`. Overlays use their
host's `objects`.

### byte_patches

```json
{ "offset": "2c45", "natural": "7404", "apply": "eb04",
  "allow": ["7404", "eb04"], "note": "copy protection crack" }
```

Bytes changed in the shipped file after linking.

| Key | Req. | Description |
|---|---|---|
| `offset` | **yes** | File offset. |
| `natural` | **yes** | The bytes the compiler emits. The disassembly works on these. |
| `apply` | **yes** | The bytes in the shipped file. The final build writes these. |
| `allow` | | Every value the build may produce here before patching. Must include `natural` and `apply`. Defaults to exactly those two. |
| `note` | **yes** | Why the bytes differ. Must be non-empty. |

The byte strings are hex. Spaces, `_` and a leading `0x` are ignored. All of
an entry's values must be the same length, and patches must not overlap.

### jump_tables

```json
{ "table": "0363", "jmp": "03a9", "entry_size": 2, "count": 31, "note": "..." }
```

A switch table. `table` is the table's load-image offset (required). `jmp`
is the offset of the dispatching jump. `entry_size` and `count` are positive
ints that override auto-detection.

### code_tables

```json
{ "table": "035e", "jmp": "0359", "entry_size": 2, "count": 5, "note": "..." }
```

A run of in-image code offsets, such as an interrupt-handler table. Its
targets become code, and the table bytes are carved out as data. `table` is
required. `entry_size` is `2` or `4` (default `2`). `jmp` is given only when
a dispatcher indexes the table, and keeps the arms inside that function.

### char_tables

```json
{ "table": "5f32", "count": 129, "first": -1, "note": "ctp_ ..." }
```

A byte table indexed by character code, such as a ctype class table or a case
map. `table` is a file offset. `count` is positive. `first` is the character
code that byte 0 stands for: `0` by default, `-1` when the table opens with an
EOF slot. `first + count` must not go past `0x100`. The table is rendered with
eight characters per row, each row commented with its characters.

### driver_slots

```json
{ "offset": "2f87", "count": 55, "driver": "ega",
  "prefix": "call", "slot_prefix": "drv_slot",
  "file": "drv_slots_video", "note": "..." }
```

A table of far pointers that a program calls a driver's API through.

| Key | Req. | Description |
|---|---|---|
| `offset` | **yes** | File offset of the table. |
| `count` | **yes** | Number of slots (positive int). |
| `driver` | **yes** | Short name of a binary whose `api` has a `dispatch_table`. |
| `prefix` | **yes** | Identifier. Thunks are named `<prefix>_<entry name>`. |
| `slot_prefix` | | Identifier. The pointers are named `<slot_prefix>_<entry name>`. |
| `file` | | Identifier. Emit the table as one data file with this name. |

### Pointer assertions

`data_pointers`, `not_pointers` and `immediate_pointers` all use this shape:

```json
{ "offset": "288e", "space": "ds", "name": "_Uorg", "note": "..." }
```

| Key | Req. | Description |
|---|---|---|
| `offset` | **yes** | File offset of the 16-bit word (or immediate). |
| `space` | | Segment the pointer refers to. |
| `name` | | (`immediate_pointers`) The symbol the operand should be written as. |
| `note` | | |

An offset must not be in both `data_pointers` (including any expanded
`pointer_arrays`) and `not_pointers`.

### pointer_arrays

```json
{ "table": "3d89", "stride": 10, "count": 156,
  "fields": [2, 4, 6, 8], "space": "ds", "note": "..." }
```

An array of `count` records, each `stride` bytes, starting at file offset
`table`. Each value in `fields` is the byte offset of a pointer word within a
record (`0 … stride-2`). The array expands into one `data_pointers` entry per
word. `space` defaults to `ds`. Allowed only under a binary.

### external_data

```json
"external_data": {
  "0x0410": { "name": "bios_data_0410", "segment": "es", "note": "..." }
}
```

Named fixed addresses outside the image, such as the BIOS data area. The key
is the offset, `name` (string) is required, and `segment` is an optional
segment override.

---

### function_names

Keyed by function key (see [Conventions](#conventions)).

```json
"function_names": {
  "0b74": { "name": "init_game", "note": "...",
            "emits": [ { "start": "0b74", "end": "0bfa" },
                       { "start": "0cf6", "end": "0cfa" } ] },
  "3a50": { "length": 39, "file": "call_thunks_text_pos",
            "note": "owns the three text position and colour driver thunks" }
}
```

| Key | Type | Description |
|---|---|---|
| `name` | string | Label for the routine at this address. |
| `length` | int > 0 | Declares a fragment of this many bytes that starts here. It can hold several routines. Fragments must not overlap. |
| `file` | identifier | Stem for the fragment's `.asm` and its `.c`/`.s`, used instead of the head label. Requires `length`. It cannot be another routine's name, unless that routine is inside this fragment. Each stem can be used only once. |
| `emits` | list of `{start, end}` | On the entry that starts a module: the DS bytes (4-digit lowercase hex, `end` exclusive) that the module's source produces itself. A span below the image end is the module's initialized data; there is at most one. A span past it is BSS the module reserves; it becomes a fragment `<binary>/data/<stem>_bss.asm` of the BSS block, which is never linked, and the build checks it against the module's object. Spans must not overlap between modules. |
| `note` | string | |

### data_names / code_data_names

`data_names` is keyed by **DS offset**. `code_data_names` is keyed by the
**file offset** of data reached through CS. Both have the same shape.

```json
"data_names": {
  "001e": { "name": "equip_slot_colors", "length": 16,
            "file": "equip_slot_colors",
            "note": "int [8]: item page text colour ..." }
}
```

| Key | Type | Description |
|---|---|---|
| `name` | identifier | **Required**, and unique within the block. It cannot look like an address name (`dseg_XXXX`, `bss_XXXX`, `cseg_XXXX`). Name the object for what it holds. |
| `length` | int > 0 | This many initialized bytes become one fragment, and labels inside it are kept. The span can contain only data and cannot end inside a record. Spans must not overlap. |
| `file` | identifier | Fragment stem, with the same rules as in `function_names`. Requires `length`. |
| `note` | string | |

A `record` key here is rejected. Layouts go in [`records`](#records).

### records

Struct layouts for named data objects, keyed by struct name (an identifier).
`lib/record_layout` uses them.

```json
"records": {
  "sound_slot_info_rec": {
    "at": "5576", "size": 12, "count": 17,
    "fields": {
      "0": { "name": "alias_num", "size": 2 },
      "4": { "name": "size", "size": 4 },
      "8": "rate"
    }
  }
}
```

| Key | Description |
|---|---|
| `at` | **Required.** A `data_names` key (string) of the object this layout describes. Each object can have only one layout. |
| `size` | Bytes per record (positive int). |
| `count` | Number of records. Requires `size`. An address inside these records is treated as a field access, not as the start of an object. |
| `fields` | `{hex offset in record: name}` or `{hex offset: {"name", "size"?}}`. Field names are identifiers and unique within the layout. |

No other keys are allowed.

---

## Minimal example

```json
{
  "app": "MYGAME",
  "compiler_flags": { "default": ["+b"], "asm": ["-dMODEL=0"], "prefixes": {} },
  "binaries": {
    "game": {
      "file": "GAME.EXE",
      "type": "mz",
      "start_offset": 512,
      "entry_symbol": "aztec_begin",
      "function_names": { "0210": { "name": "main" } },
      "force_data": [ { "start": "1000", "end": "100f", "note": "lookup table" } ]
    }
  }
}
```
