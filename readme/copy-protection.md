# Copy protection

DSAVANT's copy protection has two parts:

1. **A visible check.** The player has to enter a word looked up from clue lines.
2. **A hidden check.** It decides whether NPC ids reach the variable the game reads them from. When it fails, nothing visible happens, but NPC meetings and melee break.

---

## The visible check

`vbase/begin_game.c` runs this check once, while `startup_check_stage == 0`:

1. `copy_protection_prompt` draws four clue lines from `code_characters` and reads the answer word.
2. `verify_answer_word` encodes each answer character `c` at position `i` as `(c * 37 + i * 17) % 255`, then compares it with `code_table[26 + i]`.
   - On a mismatch it returns 0.
   - When it returns 0, `begin_game` shows the copy-protection dialog and stops.

---

## The hidden check

### Where NPC ids live

The game keeps the id of the current NPC in `npc_id` (DS:0x0e36).

| Reader | Use |
|---|---|
| `vmnpc/ovmain` | reads it |
| melee | passes it to `add_party_member` when an NPC joins |
| several overlays | test it against 0xe1 |

### How region events write the id

Region events never write `npc_id` directly. Instead they write through a pointer:

```c
*npc_id_target = maze_tables->arg[party_region];   /* meet_region_npc */
```

The other writers are `advance_maze_region` and `vmaze/api_idx_0022_LKUK`. Both sometimes use an id picked by `choose_region_npc`.

### Startup: everything points at the decoy

`vinit/initialize_runtime_resources.c` clears `npc_id_decoy` (DS:0x905c). It then points `npc_id_clue_relay`, `npc_id_answer_relay` and `npc_id_target` at it.

### How the real address moves along

The real address, 0x0e36, moves down the chain only while each step of the check passes:

| Step | Routine | Condition | Effect |
|---|---|---|---|
| 1 | `set_npc_id_address` (startup) | always | `npc_id_address = 0x0e36` |
| 2 | `relay_npc_id_address` (`initialize_main_screen`) | `code_characters[0] == code_char_index` and `answer_length > 0` | `npc_id_clue_relay = npc_id_address` |
| 3 | `verify_answer_word` | the loop reaches the last answer character | `npc_id_answer_relay = npc_id_clue_relay` |
| 4 | `verify_code_message` (`begin_game`) | the clue text in message `2500 + code_char_message_index` passes a checksum against `code_table` | `npc_id_target = npc_id_answer_relay` |

### What happens when a step is skipped

`npc_id_target` keeps pointing at `npc_id_decoy`. Two things then go wrong:

1. **NPC meetings use the wrong id.** Each meeting writes its id into the decoy. `npc_id` keeps whatever it held before: 0 from `initialize_main_screen`, or the last id stored there.
2. **Melee never lands.** `vmexe/api_idx_00ac_HRGR` rolls `random_below(100)` for a hit, but only while `npc_id_decoy` is 0. Once an NPC id has landed in the decoy, the roll is forced to 0, and a roll below 5 is an automatic miss (0x8d01).

---

## The patched `DS.EXE`

The sidecar records one patch on `DS.EXE` (`binaries.ds.byte_patches`):

| Offset | Original | Patched |
|---|---|---|
| 0x2c45 | `74 04` (`je`) | `eb 04` (`jmp`) |

The patch is in `verify_answer_word`, on the per-character comparison:

```asm
    cmp al, cl                       ; 0x2c43
    je short .forward1               ; 0x2c45  <- patched to jmp
    mov ax, 0                        ; 0x2c47
    ret                              ; 0x2c4a
```

It skips only the mismatch return. The loop still reaches the last character, so step 3 still runs and the chain completes.

---

## Names

| Name | Kind | Location |
|---|---|---|
| `npc_id` | word | DS 0x0e36 |
| `npc_id_address` | word, step 1 | DS 0x0e34 |
| `npc_id_answer_relay` | word, step 3 | DS 0x1008 |
| `npc_id_target` | near pointer | DS 0x100a |
| `npc_id_clue_relay` | word, step 2 | DS 0x59f8 |
| `npc_id_decoy` | word | DS 0x905c |
| `set_npc_id_address`, `relay_npc_id_address`, `verify_answer_word`, `verify_code_message` | routines | `src_DSAVANT/ds/game/` |
| `begin_game`, `copy_protection_prompt` | routines | vbase |
| `meet_region_npc`, `advance_maze_region`, `choose_region_npc` | write through `npc_id_target` | vmaze |
| `api_idx_00ac_HRGR` | the hit roll gated on `npc_id_decoy` | vmexe |
