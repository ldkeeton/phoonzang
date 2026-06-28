# Disassembler tasks

## Status: 17/17 byte-exact verify passes ✓ | 36 db_with_comment remaining (ds)

---

## Completed this session

### Ghidra-style naming (main.py)
- **Tier 4 defaults**: all call targets get `sub_XXXX` labels (navigable — clickable in VS Code)
- **Tier 3 heuristic categorization**: function body analysis for:
  - `dos_file_sub_XXXX` / `dos_mem_sub_XXXX` / etc. — detects DOS AH value before `int 0x21`
  - `bios_video_sub_XXXX` / `bios_disk_sub_XXXX` — detects `int 0x10`/`0x13` etc.
  - `leaf_sub_XXXX` — no call instructions inside
  - `thunk_sub_XXXX` — 1 call + ret, ≤12 bytes
  - `io_sub_XXXX` — contains `in`/`out`
  - `string_sub_XXXX` — contains string ops (movsb, stosw, etc.)
  - `math_sub_XXXX` — contains `mul`/`div`/etc.
- **`_compute_func_boundaries` optimized** — skips auto-generated `sub_`/`loc_` names
- **Force-code loop safe** — only force-codes pattern-matched and trampoline entries, skips auto-generated `sub_XXXX` defaults

### lcall format fix (format.py)
- `lcall cs:[0xN]` → `call far [cs:0xN]` (NASM-compatible)
- Fixed size-tag stripping bug: `far dword [cs:...]` → `far [cs:...]` (was `far d[cs:...]` due to `word ` eating `word` from `dword`)
- Size-tag stripping now correctly conditional on `mnem in ('jmp','call')` only

### ds.asm stats (current vs original vs broken)

| Metric | Original | Broken (force-code all) | Current |
|--------|----------|------------------------|---------|
| Instructions | 5,099 | 20,325 | 5,099 |
| Code bytes | 12,244 (18%) | 43,420 (63%) | 12,244 (18%) |
| db_with_comment | 92 | 321 | 36 |
| Labels | 208 | 323 | 416 |
| `call sub_XXXX` | 0 | 197 | 197 |
| `call far [cs:0xN]` | 0 | 55 | 55 |
| `lcall cs:` db entries | 78 | 22 | 0 |

### Bugs fixed
- **Name shadowing**: `name = label_map[off]` in force-code loop overwrote function parameter → renamed to `lbl`
- **Unconditional size-tag strip**: `byte`/`word`/`dword` stripped from ALL instructions → conditional on jmp/call only
- **Force-code on data**: 752 auto-generated `sub_XXXX` entries being force-coded caused data regions decoded as garbage mnemonics → skip auto-generated names

---

## Remaining db_with_comment (36 in ds)
Mostly `inc word [bp - 2]` and `mov word [bp - 2], 0` encoding variants (NASM chooses different ModR/M).

## Architecture notes
- `_compute_func_boundaries` skips names matching `loc_XXXX` / `*_loc_XXXX`
- Force-code loop skips same patterns — only trusted pattern/trampoline names get force-coded
- Classification bitmap (IS_CODE/IS_DATA) computed in-memory by process(); passed directly to byte_verify() — no disk cache needed.
