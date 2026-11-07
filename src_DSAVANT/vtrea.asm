; auto-generated
bits 16
%include "include/structs.inc"
%include "include/msg.inc"
%include "include/host_symbols.inc"
%ifndef VBASE
%ifdef ELF_BUILD
VBASE equ 0
%else
VBASE equ __zres_end - 0x000e
%endif
%endif
section .text vstart=VBASE
%ifndef IMAGE_BASE
IMAGE_BASE equ 0x000e + VBASE
%endif

    ; Aztec C86 overlay header (14 bytes)
    dw 0x00f2                                ; o_magic: overlay signature (0x00f2)
    dw __zres_end                            ; 0x5055 ; o_corg: code load origin (memory offset)
    dw (__zdata_start - __zcode_start)       ; 0x9a0d ; o_csize: code size in bytes
    dw __zdseg_end                           ; 0x9098 ; o_dorg: data load origin (memory offset)
    dw (__zimage_end - __zdata_start)        ; 0x007c ; o_dsize: initialized data size
    dw __zobss_end - __zimage_end            ; 0x05a6 ; o_bss: uninitialized data size
    dw $ovbgn - IMAGE_BASE + __zres_end ; 0xea0c ; o_entry: overlay entry offset (CS)

__zcode_start:
treasure_text_token_codes equ __zdseg_end + (__ztreasure_text_token_codes - __zdata_start)
treasure_text_separator equ __zdseg_end + (__ztreasure_text_separator - __zdata_start)
treasure_panel_top_save_file equ __zdseg_end + (__ztreasure_panel_top_save_file - __zdata_start)
treasure_panel_bottom_save_file equ __zdseg_end + (__ztreasure_panel_bottom_save_file - __zdata_start)
empty_character_message_first equ __zdseg_end + (__zempty_character_message_first - __zdata_start)
empty_character_message_second equ __zdseg_end + (__zempty_character_message_second - __zdata_start)
empty_status_message_fragment equ __zdseg_end + (__zempty_status_message_fragment - __zdata_start)
empty_status_message_suffix equ __zdseg_end + (__zempty_status_message_suffix - __zdata_start)
empty_demonic_attack_fragment equ __zdseg_end + (__zempty_demonic_attack_fragment - __zdata_start)
empty_demonic_attack_suffix equ __zdseg_end + (__zempty_demonic_attack_suffix - __zdata_start)
empty_battering_fragment equ __zdseg_end + (__zempty_battering_fragment - __zdata_start)
empty_battering_suffix equ __zdseg_end + (__zempty_battering_suffix - __zdata_start)
empty_magic_power_suffix equ __zdseg_end + (__zempty_magic_power_suffix - __zdata_start)
empty_hit_point_suffix equ __zdseg_end + (__zempty_hit_point_suffix - __zdata_start)
empty_vitality_suffix equ __zdseg_end + (__zempty_vitality_suffix - __zdata_start)
trap_code_template equ __zdseg_end + (__ztrap_code_template - __zdata_start)
unknown_trap_clue_template equ __zdseg_end + (__zunknown_trap_clue_template - __zdata_start)
trap_dialog_temp_file equ __zdseg_end + (__ztrap_dialog_temp_file - __zdata_start)
trap_skill_open_paren equ __zdseg_end + (__ztrap_skill_open_paren - __zdata_start)
trap_skill_percent_close equ __zdseg_end + (__ztrap_skill_percent_close - __zdata_start)
inspect_label_open_paren equ __zdseg_end + (__zinspect_label_open_paren - __zdata_start)
inspect_label_close_paren equ __zdseg_end + (__zinspect_label_close_paren - __zdata_start)
treasure_item_dialog_temp_file equ __zdseg_end + (__ztreasure_item_dialog_temp_file - __zdata_start)
empty_dialog_message equ __zdseg_end + (__zempty_dialog_message - __zdata_start)
pick_lock_temp_file equ __zdseg_end + (__zpick_lock_temp_file - __zdata_start)
pick_lock_skill_open_paren equ __zdseg_end + (__zpick_lock_skill_open_paren - __zdata_start)
pick_lock_skill_percent_close equ __zdseg_end + (__zpick_lock_skill_percent_close - __zdata_start)
force_door_temp_file equ __zdseg_end + (__zforce_door_temp_file - __zdata_start)
grid_menu_dialog_temp_file equ __zdseg_end + (__zgrid_menu_dialog_temp_file - __zdata_start)
grid_menu_temp_file equ __zdseg_end + (__zgrid_menu_temp_file - __zdata_start)
spell_cost_panel_text equ __zdseg_end + (__zspell_cost_panel_text - __zdata_start)
screen_save_temp_file equ __zdseg_end + (__zscreen_save_temp_file - __zdata_start)
save_si equ __zdseg_end + (__zsave_si - __zdata_start)
save_di equ __zdseg_end + (__zsave_di - __zdata_start)
save_sp equ __zdseg_end + (__zsave_sp - __zdata_start)
save_bp equ __zdseg_end + (__zsave_bp - __zdata_start)
save_ret equ __zdseg_end + (__zsave_ret - __zdata_start)
_Uorg equ __zdseg_end + (__zobss_9114 - __zdata_start)
glyph_painter equ __zdseg_end + (__zobss_9114 - __zdata_start)
animation_index equ __zdseg_end + (__zobss_9116 - __zdata_start)
sound_request equ __zdseg_end + (__zobss_9118 - __zdata_start)
pending_panel_call equ __zdseg_end + (__zobss_911a - __zdata_start)
show_area_bottom equ __zdseg_end + (__zobss_911c - __zdata_start)
animation_frame equ __zdseg_end + (__zobss_911e - __zdata_start)
pending_panel_arg1 equ __zdseg_end + (__zobss_9120 - __zdata_start)
pending_panel_arg0 equ __zdseg_end + (__zobss_9122 - __zdata_start)
party_redraw_interval equ __zdseg_end + (__zobss_9124 - __zdata_start)
treasure_caption_on equ __zdseg_end + (__zobss_9126 - __zdata_start)
treasure_caption equ __zdseg_end + (__zobss_9128 - __zdata_start)
maze_message_row equ __zdseg_end + (__zobss_9150 - __zdata_start)
maze_message_previous_x equ __zdseg_end + (__zobss_9152 - __zdata_start)
treasure_glyph_text_buffer equ __zdseg_end + (__zobss_9154 - __zdata_start)
treasure_message_row equ __zdseg_end + (__zobss_91d4 - __zdata_start)
chest_trap_name equ __zdseg_end + (__zobss_91d6 - __zdata_start)
chest_trap_type equ __zdseg_end + (__zobss_91fe - __zdata_start)
trap_row_listed equ __zdseg_end + (__zobss_9200 - __zdata_start)
trap_glyph_pressed equ __zdseg_end + (__zobss_9230 - __zdata_start)
trap_glyph_ids equ __zdseg_end + (__zobss_9240 - __zdata_start)
trap_row_index equ __zdseg_end + (__zobss_9250 - __zdata_start)
trap_row_codes equ __zdseg_end + (__zobss_9252 - __zdata_start)
trap_row_types equ __zdseg_end + (__zobss_9342 - __zdata_start)
member_trap_clues equ __zdseg_end + (__zobss_9372 - __zdata_start)
list_row_marked equ __zdseg_end + (__zobss_93ae - __zdata_start)
list_row_marked_next equ __zdseg_end + (__zobss_93b0 - __zdata_start)
list_row_glyph equ __zdseg_end + (__zobss_93d6 - __zdata_start)
list_row_glyph_next equ __zdseg_end + (__zobss_93d8 - __zdata_start)
list_row_name equ __zdseg_end + (__zobss_93fe - __zdata_start)
list_row_name_next equ __zdseg_end + (__zobss_9414 - __zdata_start)
list_row_count equ __zdseg_end + (__zobss_95b6 - __zdata_start)
list_row_count_next equ __zdseg_end + (__zobss_95b8 - __zdata_start)
chest_trap_power equ __zdseg_end + (__zobss_95de - __zdata_start)
chest_open_result equ __zdseg_end + (__zobss_95e0 - __zdata_start)
cast_spell_target equ __zdseg_end + (__zobss_95e2 - __zdata_start)
loot_row_total equ __zdseg_end + (__zobss_95e4 - __zdata_start)
loot_row_identified equ __zdseg_end + (__zobss_95e6 - __zdata_start)
loot_row_identified_next equ __zdseg_end + (__zobss_95e8 - __zdata_start)
loot_row_value equ __zdseg_end + (__zobss_960e - __zdata_start)
loot_row_value_next equ __zdseg_end + (__zobss_9610 - __zdata_start)
loot_row_flag2 equ __zdseg_end + (__zobss_9636 - __zdata_start)
loot_row_flag2_next equ __zdseg_end + (__zobss_9638 - __zdata_start)
lock_tumbler_values equ __zdseg_end + (__zobss_965e - __zdata_start)
known_spell_ids equ __zdseg_end + (__zobss_966a - __zdata_start)
_Uend equ __zdseg_end + (__zobss_end - __zdata_start)

%include "vtrea/ovmain.asm"                ; 0x000e

%include "vtrea/draw_animation_frame.asm"  ; 0x0090

%include "vtrea/draw_treasure_panel.asm"   ; 0x0111

%include "shared/ovr/draw_party_glyph_row.asm"  ; 0x067b

%include "vtrea/draw_animated_glyph_pair.asm" ; 0x073b

%include "vtrea/update_treasure_frame.asm" ; 0x07de

%include "vtrea/tick_treasure_animation.asm" ; 0x086b

%include "vtrea/wait_treasure_input_or_timeout.asm" ; 0x08eb

%include "vtrea/redraw_treasure_caption.asm" ; 0x0954

%include "vtrea/show_treasure_area.asm"    ; 0x0a1a

%include "vtrea/flush_glyph_buffer.asm"    ; 0x0a6a

%include "vtrea/process_treasure_text.asm" ; 0x0b29

%include "vtrea/process_scene_message_words.asm" ; 0x0d24

%include "vtrea/show_scene_message_sequence.asm" ; 0x0d87

%include "vtrea/refresh_treasure_panel_and_wait.asm" ; 0x0e03

%include "vtrea/show_treasure_message.asm" ; 0x0eb2

%include "shared/ovr/try_raise_member_skill.asm" ; 0x0f54

%include "vtrea/draw_centered_character_message.asm" ; 0x0f96

%include "vtrea/inflict_member_state.asm"  ; 0x10fb

%include "vtrea/damage_party_member.asm"   ; 0x11bc

%include "vtrea/inflict_member_status.asm" ; 0x12cc

%include "vtrea/announce_trap_sprung.asm"  ; 0x13e0

%include "vtrea/random_unexcluded_member.asm" ; 0x1447

%include "vtrea/choose_random_party_segment.asm" ; 0x148d

%include "vtrea/spring_chest_trap.asm"     ; 0x14e7

%include "vtrea/roll_chest_trap.asm"       ; 0x1fd5

%include "vtrea/highlight_button_outline.asm" ; 0x242c

%include "vtrea/draw_glyph_string_grid.asm" ; 0x251a

%include "vtrea/show_trap_disarm_skill_dialog.asm" ; 0x25ab

%include "shared/ovr/find_floor_item_slot.asm"  ; 0x3552

%include "shared/ovr/add_floor_item.asm"        ; 0x35de

%include "shared/ovr/find_floor_item_at_party.asm" ; 0x36af

%include "shared/ovr/refresh_floor_item_icon.asm" ; 0x3706

%include "shared/ovr/draw_selected_button_label.asm" ; 0x37b6

%include "shared/ovr/draw_list_rows.asm"        ; 0x38b3

%include "shared/ovr/draw_inset_list_rows.asm"  ; 0x3a15

%include "vtrea/item_or_loot_dialog.asm"   ; 0x3a56

%include "vtrea/try_open_treasure_chest.asm" ; 0x4254

%include "shared/ovr/adjust_spell_value.asm"    ; 0x4318

%include "vtrea/apply_treasure_spell_effect.asm" ; 0x4368

%include "vtrea/cast_spell_from_dialog.asm" ; 0x4ad8

%include "vtrea/treasure_use_item_menu.asm" ; 0x4bcc

%include "vtrea/handle_treasure_trap.asm"  ; 0x4f0c

%include "shared/ovr/init_item_slot.asm"        ; 0x51d7

%include "shared/ovr/find_empty_party_item_slot.asm" ; 0x52ec

%include "vtrea/divvy_loot_menu.asm"       ; 0x5348

%include "vtrea/apply_region_nausea_and_flags.asm" ; 0x550e

%include "shared/ovr/replace_slashes_with_spaces.asm" ; 0x5689

%include "shared/ovr/is_quest_map_item.asm"     ; 0x56af

%include "shared/ovr/give_quest_map.asm"        ; 0x56cc

%include "vtrea/process_chest_rewards.asm" ; 0x5789

%include "vtrea/distribute_survivor_experience.asm" ; 0x5d80

%include "shared/ovr/find_maze_change.asm"      ; 0x5e88

%include "shared/ovr/log_maze_change.asm"       ; 0x5efe

%include "vtrea/pick_lock_minigame.asm"    ; 0x5fef

%include "vtrea/force_door_minigame.asm"   ; 0x66eb

%include "shared/ovr/clear_bit_pair.asm"        ; 0x6e69

%include "vtrea/jam_maze_region_side.asm"  ; 0x6ead

%include "vtrea/unlock_maze_region_side.asm" ; 0x6f41

%include "vtrea/pick_lock_or_force_door.asm" ; 0x6ff5

%include "vtrea/pick_lock_menu.asm"        ; 0x7151

%include "shared/ovr/update_region_flag_bitmaps.asm" ; 0x7319

%include "vtrea/run_region_choice_puzzle.asm" ; 0x73ae

%include "shared/ovr/mark_region_bits.asm"      ; 0x782b

%include "shared/ovr/mark_party_member_dead.asm" ; 0x788f

%include "vtrea/apply_region_event_to_party.asm" ; 0x78ed

%include "vtrea/prepare_treasure_scene.asm" ; 0x7d99

%include "vtrea/restore_treasure_scene.asm" ; 0x7eba

%include "vtrea/show_treasure_victory_scene.asm" ; 0x7f5a

%include "vtrea/run_treasure_chest_scene.asm" ; 0x809e

%include "vtrea/run_locked_door_scene.asm" ; 0x811f

%include "vtrea/run_region_puzzle_scene.asm" ; 0x81b6

%include "vtrea/run_region_event_scene.asm" ; 0x81db

%include "shared/ovr/draw_split_two_line_text.asm" ; 0x8200

%include "shared/ovr/wait_10_ms.asm"            ; 0x82a9

%include "shared/ovr/show_indexed_beveled_label.asm" ; 0x82b8

%include "vtrea/draw_colored_rect_outline.asm" ; 0x83c6

%include "vtrea/select_treasure_grid_option.asm" ; 0x8441

%include "shared/ovr/draw_party_slot_letters.asm" ; 0x893e

%include "shared/ovr/advance_party_slot_frames.asm" ; 0x89bd

%include "shared/ovr/collect_known_spells.asm"  ; 0x8a18

%include "shared/ovr/draw_marker_glyph.asm"     ; 0x8a89

%include "shared/ovr/draw_power_digit.asm"      ; 0x8ac7

%include "shared/ovr/draw_spell_cost.asm"       ; 0x8b53

%include "shared/ovr/draw_realm_spell_points.asm" ; 0x8bf4

%include "shared/ovr/periodic_party_redraw.asm" ; 0x8c8d

%include "shared/ovr/pick_spell_dialog.asm"     ; 0x8d1e

%include ".cache/c.lib/shared/ovr/ovbgn.asm"           ; 0x99c5

%include ".cache/c.lib/shared/ovr/cswt.asm"            ; 0x9a03

__zdata_start:
%include "vtrea/data/trea_strings.asm"     ; 0x9a1b

%include ".cache/c.lib/shared/ovr/ovbgn.data.asm"      ; 0x9a8d


__zimage_end:
absolute __zimage_end
%include "vtrea/data/globals.asm"
__zobss_end:
