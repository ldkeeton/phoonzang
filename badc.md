# badc

## Compiler notes (Aztec C 4.2b codegen)

- **Locals:** placed downward from `bp-2` in declaration order; arrays occupy `[base, base+size)`. A fake frame struct can become plain locals declared in reverse field order. Filler/"reserved" words are usually the tail of a real array (`int opts[11]; int marker; int r1, r2, r3;` was really `int opts[15]`) or genuinely unused locals.
- **`for`** compiles to `jmp test; body; step; test: if cond → body`. The pattern `goto test; body: ...; test: if (c) goto body;` is just a `for`. When the first test is known to be true (`for (i = 0; i < 3; ...)`), the initial jump is omitted.
- **`while`** tests at the top and `jmp`s back from the bottom.
- **`do/while`:** the condition is a label, and the compiler forgets cached register values at labels. If the original reloads a variable where the C reuses `ax`, it's a `do/while`, not `volatile`.
- **`switch`** puts the dispatch (compare chain or table) after the case bodies (`mov ax, key; jmp dispatch`). A goto chain plus a trailing `case 8: goto move_left;` is one switch with inline case bodies.
- **`if/else`** emits the then-branch first. `[test → jump to B] [A] [jmp end] [B]` is `if (c) A; else B;`.
- **Comma in a `for` step** comes out in reverse order: `left++, right--` emits `dec right; inc left`.
- **Arguments** are pushed right-to-left: the first push is the last argument.
- **`(unsigned)65535`** in `==`/`!=` produces the same bytes as `-1`.

## Done

- [x] `vpops/select_party_menu_target.c`: goto navigation chain; wrong `call_set_text_color` argument order
- [x] `vpops/choose_party_battle_orders.c`: fake frame struct, unions, volatile, `#define` aliases, goto loops

## High

- [ ] `vinstall/game/main.c`: fake frame struct `installer_locals local` (220 `local.` refs) padded with `gap_before_menu[167]`, `gap_before_page_state[96]`, about 11 `page_state_1xx` words; 4 goto loops
- [ ] `vpops/prepare_combatant_actions.c`: 27 gotos (7 goto loops, `action_speed_*` / `check_action_status_*` chains)
- [ ] `vinstall/game/prompt_for_archive_disk.c`: `struct disk_prompt_buffers` wrapper (`archive_path[80..81]` used as a separate buffer); `volatile int file_handle`; goto loop
- [ ] `vinstall/game/drive_is_valid.c`: `*(volatile int *)&drive_index`; 3 gotos
- [ ] `vinstall/game/run_pkunzip_archive.c`: `struct unzip_messages` wraps two plain buffers
- [ ] `vmele/party_screen.c`: `char unused_frame[652]` filler; generated name `f_00b1`
- [ ] `vinit/initialize_runtime_resources.c`: `char reserved_space[14]` and `reserved_word` frame filler

## Medium

- [ ] `vmaze/run_maze_loop.c`: 8 gotos (1 loop); `unused_frame_word_6`, `unused_frame_word_14`; `(unsigned)65535` casts
- [ ] `vmaze/rest_party.c`: 6 gotos (1 loop); `reserved_frame_word_a`, `reserved_frame_word_b`
- [ ] `vbase/import_bane_party.c`: 6 gotos (2 loops)
- [ ] `vmaze/load_maze_resources.c`: 6 gotos
- [ ] `vmext/load_maze_resources.c`: 6 gotos
- [ ] `vmaze/update_party_member_tick.c`: 6 gotos
- [ ] `vinit/play_startup_sequence.c`: 4 gotos (2 loops)
- [ ] `vinstall/game/install_file_matches_letter.c`: 4 gotos (1 loop); `unused_path_buffer[80]` frame filler
- [ ] `shared/ovr/queue_view_cell_side_layers.c`: 4 gotos
- [ ] `shared/ovr/map_piece_index_for_position.c`: 4 gotos
- [ ] `vmele/process_monster_groups.c`: 3 gotos (1 loop)
- [ ] `vdopt/roll_slot_detection_report.c`: 3 gotos
- [ ] `shared/ovr/draw_active_member_panel.c`: 3 gotos
- [ ] `vmele/play_action_overlays.c`: 2 goto loops

## Low (1–2 gotos)

- [ ] `ds/game/reverse_string.c`: goto loop
- [ ] `shared/ovr/titlecase_string.c`: goto loop
- [ ] `shared/ovr/find_object_at.c`: goto loop
- [ ] `shared/ovr/prepare_skill_list.c`: goto loop
- [ ] `shared/ovr/mark_region_bits.c`: 2 gotos
- [ ] `shared/ovr/select_encumbrance_style.c`: 1 goto
- [ ] `vinstall/game/reverse_text.c`: goto loop
- [ ] `vinstall/game/put_int_right_aligned.c`: goto loop
- [ ] `vinstall/game/put_long_right_aligned.c`: goto loop
- [ ] `vbase/show_intro_screen.c`: goto loop
- [ ] `vbase/remove_all_party_members.c`: goto loop
- [ ] `vbase/process_scene_message_controls.c`: 1 goto
- [ ] `vbase/add_character_from_pc_file.c`: 1 goto
- [ ] `vpops/target_most_wounded_unit.c`: goto loop
- [ ] `vpops/enter_party_battle_orders.c`: 2 gotos
- [ ] `vpops/prepare_combat_groups.c`: goto loop
- [ ] `vmele/tick_combatant.c`: 2 gotos
- [ ] `vmele/add_monster_group.c`: 2 gotos
- [ ] `vmaze/wait_then_handle_region_event.c`: goto loop
- [ ] `vmaze/show_message_by_flag_tally.c`: goto loop
- [ ] `vmaze/relocate_party_if_none_active.c`: goto loop
- [ ] `vmaze/play_region_spell_sound.c`: 2 gotos
- [ ] `vmaze/kill_party_with_message.c`: goto loop
- [ ] `vmaze/animate_region_view_transition.c`: goto loop
- [ ] `vmaze/spin_and_push_party.c`: goto loop
- [ ] `vmaze/replay_maze_changes.c`: 1 goto
- [ ] `vmaze/process_region_flag_actions.c`: 1 goto
- [ ] `vmaze/process_maze_object_events.c`: 1 goto
- [ ] `vmaze/process_maze_message_controls.c`: 1 goto
- [ ] `vmaze/collect_region_flag_bits.c`: goto loop
- [ ] `vmaze/change_cell_walls.c`: goto loop
- [ ] `vmaze/apply_region_hour_window.c`: 1 goto (`done: ;`)

## Naming leftovers

- [ ] `shared/ovr/choose_pc_file_character.c`: struct fields `f_0000`, `f_000a`, `f_000b`, `f_000c`, `f_000f`
- [ ] `shared/ovr/draw_first_person_maze_view.c`: `bss_5b55`; `(unsigned)65535` casts
- [ ] `ds/data/globals.c`: `bss_8f4a`, `bss_8aee`, `bss_8464`, `bss_8462`, `bss_831c`, `bss_5b55`, `bss_2d58`, `bss_2d40`
- [ ] `vmaze/data/globals.c`: `bss_` names
- [ ] `vbase/data/globals.c`: `bss_` name
- [ ] `ds/data/party_slot_layout.c`: `(unsigned)65535` casts
- [ ] `vinit/build_palette_map.c`: `(unsigned)65535` cast
- [ ] `vbase/begin_game.c`: `(unsigned)65535` cast
- [ ] `include/structs/*.h`: unidentified `padNN` fields (member.h, pcrec.h, itemrec.h, slotrec.h, loadrec.h, others)
