# Disassembler tasks

## Status: 17/17 byte-exact verify passes ✓ | 377 db_with_comment remaining

---

## Completed

### Encoding variant handling
- `repne scasb` / `rep movsw` etc. — Capstone merges `rep` prefix into mnemonic, `format.py` strips it before string-op check
- `cwde` → `cbw` in 16-bit mode (format.py:135)
- `cdq` → `cwd` in 16-bit mode (format.py:133)
- `xlat` → `xlatb` (format.py:137)

### Semantic equivalence (`_is_semantically_equivalent` in verify.py)
- Commutative register-register ops: `xchg`, `add`, `or`, `and`, `xor`, `adc`, `mul`, `imul`, `fadd`, `fmul`
- `_reg_ids()` helper extracts Capstone register operands
- `md.detail = True` set in `_get_sem_eq_md()`
- `sbb` REMOVED from commutative (not commutative, carry flag matters)
- Commutative check RESTRICTED to pure register-register (skipped if any memory/immediate operand)

### Data-block code recovery
- `_generate_inline_code` no longer requires `exact_bytes=True` for semantic equivalence
- Code-like data blocks can use semantic equivalence to recover mnemonics

### Verification (`byte_verify` in main.py)
- Parallel Capstone instruction iterator (not byte-by-byte)
- Bitmap-aware: code regions → instruction comparison; data regions → byte comparison + backward-instruction-lookahead (up to 8 bytes) for misclassified code
- `.bitmap` companion files written alongside `.asm` during generation

### Trampoline naming
- `api_idx_0xNN` format using `neg(ax)` value (table index)
- `api_dispatch` section in `known_funcs.json` for semantic names

---

## Remaining (by priority)

### A. `format.py` fixes (high impact, ~170 entries)

| Issue | Count | Root cause | Fix |
|-------|-------|------------|-----|
| `lcall cs:[0xN]` | 78 | `format_instruction` produces invalid NASM `call far d[cs:0xN]`, should be `call far [cs:0xN]` | Fix lcall formatting in format.py |
| `push 0xffbd` | 48 | Capstone decodes `6A BD` as `push -0x43`; format emits unsigned `push 0xffbd`; NASM chooses imm16 (3 bytes) over imm8 (2 bytes) | Emit `push strict byte -N` for 2-byte push imm forms |
| `insw`/`outsb` with segment prefix | 18 | Capstone includes prefix in bytes (`65 6D`) but `format_instruction` strips it, losing the segment override | Emit `gs insw` / `fs outsb` with segment prefix |

### B. Encoding variants (medium impact, ~80 entries)

| Issue | Count | Root cause | Fix |
|-------|-------|------------|-----|
| `push word ptr [bx+N]` | 26 | `FF /6` vs `FF 77 NN` ModR/M variant | NASM chooses encoding; needs semantic equiv in per-insn verify |
| `mov ax, [bx+N]` | 15 | `8B 47 NN` vs `89` encoding variant | Same — per-insn verify |
| `xchg si, ax` (2-byte) | 4 | NASM prefers `96` (1-byte XCHG AX,reg) over `87 F0` (2-byte ModR/M). Length mismatch → semantic equiv fails | Could add different-length semantic equiv for reg-reg xchg, but risky |

### C. Segment overrides (low, ~42 entries)

| Issue | Count | Root cause |
|-------|-------|------------|
| `and byte ptr fs:[bx+N], dh` | 14+ | Encoding variant with segment prefix — NASM may choose different ModR/M |
| `add byte ptr cs:[bp+si], cl` | 13 | Same |
| Other seg prefix variants | ~15 | Same |

These may already round-trip correctly but fail per-insn verify due to ModR/M choices.

### D. Conditional jumps (low, ~26 entries)

| Issue | Count | Root cause |
|-------|-------|------------|
| `jb/jns/jno/jae 0xN` | 26 | NASM may choose `near` when original used `short`; verify fails on size mismatch |

### E. Non-instructions / garbage decodes (cosmetic, ~30 entries)

| Issue | Count | Note |
|-------|-------|------|
| `imul esp, ...` | 5 | 32-bit register in 16-bit mode = Capstone decode artifact |
| `header (N bytes)` | 14 | Not instructions, just block-header markers |
| Others | ~10 | Popcorn garbage |

---

## Not fixable / by design

- **Encoding variants where NASM persistently chooses differently** (e.g., `8B C3` vs `89 D8` for `mov bx, ax`): The per-instruction verify in `verify.py` compares exact bytes; semantic equivalence handles these in code regions, but the individual-instruction round-trip during .asm generation fails. The assembled binary is correct (verified by byte_verify), but the .asm uses `db` fallback. 
- **`push sp`** (3 entries): Undefined 8086 behavior — different assemblers produce different results. Original bytes are correct via `db`.

## Architecture notes

- **Two-phase verification**: `verify()` during generation (per-instruction round-trip for exact byte match) + `byte_verify()` post-hoc (semantic comparison of assembled binary against original)
- **Bitmap propagation**: `classify()` builds bitmap → `process()` writes `.bitmap` → `byte_verify()` reads it for code/data awareness
- **Data-block post-processing**: `_postprocess_data_blocks()` in verify.py tries to recover code from data regions; uses `_try_decode_block()` + `_generate_inline_code()`
