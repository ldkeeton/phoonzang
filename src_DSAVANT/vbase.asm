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
    dw (__zdata_start - __zcode_start)       ; 0x93df ; o_csize: code size in bytes
    dw __zdseg_end                           ; 0x9098 ; o_dorg: data load origin (memory offset)
    dw (__zimage_end - __zdata_start)        ; 0x012e ; o_dsize: initialized data size
    dw __zobss_end - __zimage_end            ; 0x143c ; o_bss: uninitialized data size
    dw aztec_ovbgn - IMAGE_BASE + __zres_end ; 0xe377 ; o_entry: overlay entry offset (CS)

__zcode_start:
pc_file_name equ __zdseg_end + (__zpc_file_name - __zdata_start)
list_screen_temp_file equ __zdseg_end + (__zlist_screen_temp_file - __zdata_start)
dseg_90a9 equ __zdseg_end + (__zdseg_90a9 - __zdata_start)
dseg_90b6 equ __zdseg_end + (__zdseg_90b6 - __zdata_start)
dialog_screen_temp_file equ __zdseg_end + (__zdialog_screen_temp_file - __zdata_start)
dseg_90c2 equ __zdseg_end + (__zdseg_90c2 - __zdata_start)
default_game_data_name equ __zdseg_end + (__zdefault_game_data_name - __zdata_start)
ending_save_filename equ __zdseg_end + (__zending_save_filename - __zdata_start)
scenario_header_filename equ __zdseg_end + (__zscenario_header_filename - __zdata_start)
message_dialog_temp_file equ __zdseg_end + (__zmessage_dialog_temp_file - __zdata_start)
dseg_90fb equ __zdseg_end + (__zdseg_90fb - __zdata_start)
dseg_9107 equ __zdseg_end + (__zdseg_9107 - __zdata_start)
screen_temp_file equ __zdseg_end + (__zscreen_temp_file - __zdata_start)
scene_message_control_codes equ __zdseg_end + (__zscene_message_control_codes - __zdata_start)
scene_message_separator equ __zdseg_end + (__zscene_message_separator - __zdata_start)
star_screen_filename equ __zdseg_end + (__zstar_screen_filename - __zdata_start)
main_screen_filename equ __zdseg_end + (__zmain_screen_filename - __zdata_start)
numbered_scene_picture_template equ __zdseg_end + (__znumbered_scene_picture_template - __zdata_start)
scene_one_screen_filename equ __zdseg_end + (__zscene_one_screen_filename - __zdata_start)
scene_one_digit_cycle equ __zdseg_end + (__zscene_one_digit_cycle - __zdata_start)
scene_four_screen_filename equ __zdseg_end + (__zscene_four_screen_filename - __zdata_start)
scene_five_screen_filename equ __zdseg_end + (__zscene_five_screen_filename - __zdata_start)
scene_six_screen_filename equ __zdseg_end + (__zscene_six_screen_filename - __zdata_start)
scene_six_digit_cycle equ __zdseg_end + (__zscene_six_digit_cycle - __zdata_start)
scene_seven_screen_filename equ __zdseg_end + (__zscene_seven_screen_filename - __zdata_start)
scene_seven_digit_cycle equ __zdseg_end + (__zscene_seven_digit_cycle - __zdata_start)
scene_eight_screen_filename equ __zdseg_end + (__zscene_eight_screen_filename - __zdata_start)
scene_eight_digit_cycle equ __zdseg_end + (__zscene_eight_digit_cycle - __zdata_start)
main_screen_restore_filename equ __zdseg_end + (__zmain_screen_restore_filename - __zdata_start)
save_si equ __zdseg_end + (__zsave_si - __zdata_start)
save_di equ __zdseg_end + (__zsave_di - __zdata_start)
save_sp equ __zdseg_end + (__zsave_sp - __zdata_start)
save_bp equ __zdseg_end + (__zsave_bp - __zdata_start)
save_ret equ __zdseg_end + (__zsave_ret - __zdata_start)
_Uorg equ __zdseg_end + (__zobss_91c6 - __zdata_start)
game_data_drive equ __zdseg_end + (__zobss_91c6 - __zdata_start)
selected_game_drive equ __zdseg_end + (__zobss_91da - __zdata_start)
game_load_path equ __zdseg_end + (__zobss_91ee - __zdata_start)
game_load_path_next equ __zdseg_end + (__zobss_91ef - __zdata_start)
game_load_path_third equ __zdseg_end + (__zobss_91f0 - __zdata_start)
bss_9220 equ __zdseg_end + (__zobss_9220 - __zdata_start)
bss_93be equ __zdseg_end + (__zobss_93be - __zdata_start)
bss_93c0 equ __zdseg_end + (__zobss_93c0 - __zdata_start)
bss_9400 equ __zdseg_end + (__zobss_9400 - __zdata_start)
bss_9402 equ __zdseg_end + (__zobss_9402 - __zdata_start)
bss_940a equ __zdseg_end + (__zobss_940a - __zdata_start)
bss_940c equ __zdseg_end + (__zobss_940c - __zdata_start)
bss_941c equ __zdseg_end + (__zobss_941c - __zdata_start)
bss_9426 equ __zdseg_end + (__zobss_9426 - __zdata_start)
bss_9428 equ __zdseg_end + (__zobss_9428 - __zdata_start)
bss_942c equ __zdseg_end + (__zobss_942c - __zdata_start)
bss_9442 equ __zdseg_end + (__zobss_9442 - __zdata_start)
bss_9448 equ __zdseg_end + (__zobss_9448 - __zdata_start)
bss_9449 equ __zdseg_end + (__zobss_9449 - __zdata_start)
bss_9492 equ __zdseg_end + (__zobss_9492 - __zdata_start)
bss_9498 equ __zdseg_end + (__zobss_9498 - __zdata_start)
bss_9499 equ __zdseg_end + (__zobss_9499 - __zdata_start)
bss_952e equ __zdseg_end + (__zobss_952e - __zdata_start)
bss_9536 equ __zdseg_end + (__zobss_9536 - __zdata_start)
bss_9554 equ __zdseg_end + (__zobss_9554 - __zdata_start)
bss_958a equ __zdseg_end + (__zobss_958a - __zdata_start)
bss_9596 equ __zdseg_end + (__zobss_9596 - __zdata_start)
bss_959a equ __zdseg_end + (__zobss_959a - __zdata_start)
bss_959f equ __zdseg_end + (__zobss_959f - __zdata_start)
bss_95a0 equ __zdseg_end + (__zobss_95a0 - __zdata_start)
bss_95a1 equ __zdseg_end + (__zobss_95a1 - __zdata_start)
bss_95a2 equ __zdseg_end + (__zobss_95a2 - __zdata_start)
bss_95ae equ __zdseg_end + (__zobss_95ae - __zdata_start)
bss_95af equ __zdseg_end + (__zobss_95af - __zdata_start)
bss_95b0 equ __zdseg_end + (__zobss_95b0 - __zdata_start)
intro_screen_number equ __zdseg_end + (__zobss_95b2 - __zdata_start)
preserved_load_header equ __zdseg_end + (__zobss_95b4 - __zdata_start)
preserved_header_paths equ __zdseg_end + (__zobss_9884 - __zdata_start)
preserved_header_store_one equ __zdseg_end + (__zobss_98d4 - __zdata_start)
preserved_header_store_disk equ __zdseg_end + (__zobss_98d5 - __zdata_start)
preserved_header_store_drive equ __zdseg_end + (__zobss_98d6 - __zdata_start)
preserved_header_palette_base equ __zdseg_end + (__zobss_98ea - __zdata_start)
preserved_header_palette_scale equ __zdseg_end + (__zobss_98eb - __zdata_start)
preserved_header_options equ __zdseg_end + (__zobss_98ee - __zdata_start)
preserved_header_sound_port equ __zdseg_end + (__zobss_98f2 - __zdata_start)
preserved_header_sound_extra equ __zdseg_end + (__zobss_98f4 - __zdata_start)
preserved_header_sound_device equ __zdseg_end + (__zobss_98f6 - __zdata_start)
preserved_header_video equ __zdseg_end + (__zobss_98f7 - __zdata_start)
preserved_header_startup equ __zdseg_end + (__zobss_98f8 - __zdata_start)
preserved_header_install equ __zdseg_end + (__zobss_98f9 - __zdata_start)
preserved_header_option_a equ __zdseg_end + (__zobss_98fa - __zdata_start)
preserved_header_option_b equ __zdseg_end + (__zobss_98fb - __zdata_start)
preserved_header_hardware equ __zdseg_end + (__zobss_98fc - __zdata_start)
preserved_header_option_c equ __zdseg_end + (__zobss_98fd - __zdata_start)
preserved_header_dissolve equ __zdseg_end + (__zobss_98fe - __zdata_start)
game_block_a equ __zdseg_end + (__zobss_9900 - __zdata_start)
game_block_b equ __zdseg_end + (__zobss_9980 - __zdata_start)
loaded_game_state equ __zdseg_end + (__zobss_9a00 - __zdata_start)
loaded_state_world_x equ __zdseg_end + (__zobss_9a02 - __zdata_start)
loaded_state_world_y equ __zdseg_end + (__zobss_9a04 - __zdata_start)
loaded_state_cell_x equ __zdseg_end + (__zobss_9a06 - __zdata_start)
loaded_state_cell_y equ __zdseg_end + (__zobss_9a08 - __zdata_start)
loaded_state_map_piece equ __zdseg_end + (__zobss_9a0a - __zdata_start)
loaded_state_tag equ __zdseg_end + (__zobss_9a0c - __zdata_start)
loaded_state_previous_level equ __zdseg_end + (__zobss_9a0e - __zdata_start)
loaded_state_previous_world_x equ __zdseg_end + (__zobss_9a10 - __zdata_start)
loaded_state_previous_world_y equ __zdseg_end + (__zobss_9a12 - __zdata_start)
loaded_state_previous_cell_x equ __zdseg_end + (__zobss_9a14 - __zdata_start)
loaded_state_previous_cell_y equ __zdseg_end + (__zobss_9a16 - __zdata_start)
loaded_state_previous_map_piece equ __zdseg_end + (__zobss_9a18 - __zdata_start)
loaded_state_previous_tag equ __zdseg_end + (__zobss_9a1a - __zdata_start)
loaded_state_saved_x equ __zdseg_end + (__zobss_9a1c - __zdata_start)
loaded_state_saved_y equ __zdseg_end + (__zobss_9a1e - __zdata_start)
loaded_state_saved_piece equ __zdseg_end + (__zobss_9a20 - __zdata_start)
loaded_state_saved_level equ __zdseg_end + (__zobss_9a22 - __zdata_start)
loaded_state_saved_extra equ __zdseg_end + (__zobss_9a24 - __zdata_start)
loaded_state_time equ __zdseg_end + (__zobss_9a26 - __zdata_start)
loaded_state_time_hi equ __zdseg_end + (__zobss_9a28 - __zdata_start)
loaded_state_time_a equ __zdseg_end + (__zobss_9a2a - __zdata_start)
loaded_state_time_a_hi equ __zdseg_end + (__zobss_9a2c - __zdata_start)
loaded_state_time_b equ __zdseg_end + (__zobss_9a2e - __zdata_start)
loaded_state_time_b_hi equ __zdseg_end + (__zobss_9a30 - __zdata_start)
loaded_state_status equ __zdseg_end + (__zobss_9a32 - __zdata_start)
loaded_state_status_offset equ __zdseg_end + (__zobss_9a34 - __zdata_start)
loaded_state_member_count equ __zdseg_end + (__zobss_9a4a - __zdata_start)
loaded_party_member equ __zdseg_end + (__zobss_9a4c - __zdata_start)
base_palette_rgb equ __zdseg_end + (__zobss_9c94 - __zdata_start)
adjusted_palette_rgb equ __zdseg_end + (__zobss_9f94 - __zdata_start)
adjusted_palette_green equ __zdseg_end + (__zobss_9f95 - __zdata_start)
adjusted_palette_blue equ __zdseg_end + (__zobss_9f96 - __zdata_start)
quantized_rgb_lookup equ __zdseg_end + (__zobss_a294 - __zdata_start)
copy_protection_result equ __zdseg_end + (__zobss_a494 - __zdata_start)
scene_index equ __zdseg_end + (__zobss_a4a4 - __zdata_start)
scene_message_row equ __zdseg_end + (__zobss_a4a6 - __zdata_start)
scene_message_previous_x equ __zdseg_end + (__zobss_a4a8 - __zdata_start)
scene_message_line_buffer equ __zdseg_end + (__zobss_a4aa - __zdata_start)
scene_tick equ __zdseg_end + (__zobss_a5aa - __zdata_start)
scene_running equ __zdseg_end + (__zobss_a5ac - __zdata_start)
scene_frame_delay_ticks equ __zdseg_end + (__zobss_a5ae - __zdata_start)
scene_frame equ __zdseg_end + (__zobss_a5b0 - __zdata_start)
scene_backdrop_ref equ __zdseg_end + (__zobss_a5b2 - __zdata_start)
scene_backdrop_ref_hi equ __zdseg_end + (__zobss_a5b4 - __zdata_start)
scene_cue_a equ __zdseg_end + (__zobss_a5b6 - __zdata_start)
scene_cue_b equ __zdseg_end + (__zobss_a5b8 - __zdata_start)
scene_cue_c equ __zdseg_end + (__zobss_a5ba - __zdata_start)
scene_cue_d equ __zdseg_end + (__zobss_a5bc - __zdata_start)
scene_cue_e equ __zdseg_end + (__zobss_a5be - __zdata_start)
scene_digit_cycle equ __zdseg_end + (__zobss_a5c6 - __zdata_start)
scene_step_a equ __zdseg_end + (__zobss_a5ce - __zdata_start)
scroll_x equ __zdseg_end + (__zobss_a5d0 - __zdata_start)
scroll_x_1 equ __zdseg_end + (__zobss_a5d2 - __zdata_start)
scroll_x_2 equ __zdseg_end + (__zobss_a5d4 - __zdata_start)
scroll_x_3 equ __zdseg_end + (__zobss_a5d6 - __zdata_start)
scroll_x_4 equ __zdseg_end + (__zobss_a5d8 - __zdata_start)
sprite_pos equ __zdseg_end + (__zobss_a5da - __zdata_start)
bss_a5dc equ __zdseg_end + (__zobss_a5dc - __zdata_start)
scene_sprite_three_x equ __zdseg_end + (__zobss_a5e0 - __zdata_start)
actor_x equ __zdseg_end + (__zobss_a5e2 - __zdata_start)
trail_x equ __zdseg_end + (__zobss_a5e4 - __zdata_start)
scene_sprite_y equ __zdseg_end + (__zobss_a5ea - __zdata_start)
scene_sprite_three_y equ __zdseg_end + (__zobss_a5f0 - __zdata_start)
actor_y equ __zdseg_end + (__zobss_a5f2 - __zdata_start)
scene_step_b equ __zdseg_end + (__zobss_a5fa - __zdata_start)
scene_step_c equ __zdseg_end + (__zobss_a5fc - __zdata_start)
scene_step_d equ __zdseg_end + (__zobss_a5fe - __zdata_start)
scene_clip_arg equ __zdseg_end + (__zobss_a600 - __zdata_start)
_Uend equ __zdseg_end + (__zobss_end - __zdata_start)

%include "vbase/ovmain.asm"                ; 0x000e

%include "shared/ovr/transfer_pc_file_record.asm" ; 0x0036

%include "vbase/draw_message_box.asm"      ; 0x00b5

%include "shared/ovr/fill_rectangle_border.asm" ; 0x01bf

%include "vbase/select_message_list_entry.asm" ; 0x023a

load_member_icon.dseg1 equ dseg_90a9
%include "shared/ovr/load_member_icon.asm"      ; 0x0559

%include "vbase/find_unused_member_icon.asm" ; 0x05b6

api_idx_0038_VIPJ       equ api_idx_0038_IPTM
api_idx_0038_IPTM.dseg1 equ dseg_90b6
jumptable_0d04_case_0   equ api_idx_0038_IPTM.jumptable_case1
jumptable_0d04_case_1   equ api_idx_0038_IPTM.jumptable_case2
jumptable_0d04_case_3   equ api_idx_0038_IPTM.jumptable_case3
jumptable_0d04_case_4   equ api_idx_0038_IPTM.jumptable_case4
jumptable_0d04_case_5   equ api_idx_0038_IPTM.jumptable_case5
jumptable_0d04          equ api_idx_0038_IPTM.jumptable1
%include "shared/ovr/api_idx_0038_IPTM.asm"     ; 0x0606

%include "shared/ovr/input_text_field.asm"      ; 0x0d3f

%include "vbase/choose_game_file.asm"      ; 0x0ef7

%include "vbase/show_load_disk_error.asm"  ; 0x150d

%include "shared/ovr/api_idx_004c_RQSO.asm"     ; 0x156e

%include "vbase/map_bane_item_number.asm"  ; 0x1683

%include "vbase/map_bane_character_kind.asm" ; 0x1820

%include "vbase/map_bane_party_selector.asm" ; 0x1a12

%include "shared/ovr/draw_member_glyph_row.asm" ; 0x1c09

jumptable_1ee4_case_0  equ draw_member_panel_glyphs.jumptable_case1
jumptable_1ee4_case_1  equ draw_member_panel_glyphs.jumptable_case2
jumptable_1ee4_case_2  equ draw_member_panel_glyphs.jumptable_case3
jumptable_1ee4_case_4  equ draw_member_panel_glyphs.jumptable_case4
jumptable_1ee4_case_5  equ draw_member_panel_glyphs.jumptable_case5
jumptable_1ee4_case_6  equ draw_member_panel_glyphs.jumptable_case6
jumptable_1ee4_case_7  equ draw_member_panel_glyphs.jumptable_case7
jumptable_1ee4_case_8  equ draw_member_panel_glyphs.jumptable_case8
jumptable_1ee4_case_9  equ draw_member_panel_glyphs.jumptable_case9
jumptable_1ee4_case_10 equ draw_member_panel_glyphs.jumptable_case10
jumptable_1ee4_case_11 equ draw_member_panel_glyphs.jumptable_case11
jumptable_1ee4_case_12 equ draw_member_panel_glyphs.jumptable_case12
jumptable_1ee4_case_13 equ draw_member_panel_glyphs.jumptable_case13
jumptable_1ee4         equ draw_member_panel_glyphs.jumptable1
%include "shared/ovr/draw_member_panel_glyphs.asm" ; 0x1c80

%include "vbase/initialize_intro_layout.asm" ; 0x1f0e

%include "vbase/read_class_experience_threshold.asm" ; 0x1f6f

%include "vbase/import_bane_party.asm"     ; 0x1faf

%include "vbase/load_game_data.asm"        ; 0x2fef

%include "vbase/save_game_data.asm"        ; 0x388c

%include "vbase/write_scenario_header_and_apply_devices.asm" ; 0x3fac

%include "vbase/adjust_palette_and_rgb_lookup.asm" ; 0x4060

%include "vbase/draw_message_at_position.asm" ; 0x41e7

%include "vbase/draw_setting_slider_markers.asm" ; 0x4245

%include "vbase/draw_inset_two_digit_number.asm" ; 0x4292

%include "vbase/draw_configuration_box_text.asm" ; 0x42e3

%include "vbase/draw_configuration_control.asm" ; 0x4335

%include "vbase/draw_configuration_number.asm" ; 0x46b8

%include "vbase/draw_configuration_text.asm" ; 0x4727

%include "vbase/refresh_configuration_button.asm" ; 0x47bb

%include "vbase/refresh_configuration_control.asm" ; 0x4826

%include "vbase/step_device_option_byte.asm" ; 0x4b29

%include "vbase/adjust_palette_base_setting.asm" ; 0x4b5e

%include "vbase/show_centered_message_dialog.asm" ; 0x4b95

%include "vbase/run_configuration_menu.asm" ; 0x4d0e

choose_pc_file_character.api_idx1 equ api_idx_0038_VIPJ
%include "shared/ovr/choose_pc_file_character.asm" ; 0x5f28

%include "vbase/add_character_from_pc_file.asm" ; 0x606d

%include "vbase/remove_party_member.asm"   ; 0x61db

%include "vbase/remove_all_party_members.asm" ; 0x62c6

%include "vbase/copy_protection_prompt.asm" ; 0x62e5

%include "vbase/begin_game.asm"            ; 0x6665

%include "vbase/restore_base_screen.asm"   ; 0x6756

%include "vbase/cleanup_game_screen.asm"   ; 0x6800

%include "vbase/run_resume_play_menu.asm"  ; 0x68bd

%include "vbase/run_character_menu.asm"    ; 0x6a0f

%include "vbase/clear_scene_message_area.asm" ; 0x6c1e

%include "vbase/dissolve_scene_message_area.asm" ; 0x6c3f

%include "vbase/refresh_scene_frame_if_active.asm" ; 0x6c5c

wait_for_scene_input_or_timeout.refresh_scene_frame_if_active1 equ refresh_scene_frame_if_active
%include "shared/ovr/wait_for_scene_input_or_timeout.asm" ; 0x6c87

%include "vbase/wait_and_clear_scene_messages.asm" ; 0x6cd0

%include "vbase/draw_scene_message_line.asm" ; 0x6d1f

%include "vbase/process_scene_message_controls.asm" ; 0x6dd9

process_scene_message_words.process_scene_message_controls1 equ process_scene_message_controls
%include "shared/ovr/process_scene_message_words.asm" ; 0x6f16

%include "vbase/play_scene_message_sequence.asm" ; 0x6f79

%include "shared/ovr/load_screen_file.asm"      ; 0x6fda

%include "vbase/play_story_sequence.asm"   ; 0x706d

%include "vbase/free_scene_picture.asm"    ; 0x72c2

%include "vbase/load_numbered_scene_picture.asm" ; 0x72d0

%include "vbase/draw_char_clipped_top_zero.asm" ; 0x7340

%include "vbase/draw_char_clipped_top.asm" ; 0x737d

%include "vbase/advance_scene_frame.asm"   ; 0x73bc

%include "vbase/draw_scene_frame.asm"      ; 0x7415

%include "vbase/blank_scene_screen.asm"    ; 0x85f0

%include "vbase/play_intro_scene_one.asm"  ; 0x8634

%include "vbase/play_intro_scene_two.asm"  ; 0x8756

%include "vbase/play_intro_scene_three.asm" ; 0x8881

%include "vbase/play_intro_scene_four.asm" ; 0x8a74

%include "vbase/play_intro_scene_five.asm" ; 0x8b69

%include "vbase/play_intro_scene_six.asm"  ; 0x8ca3

%include "vbase/play_intro_scene_seven.asm" ; 0x8d84

%include "vbase/play_intro_scene_eight.asm" ; 0x8e6b

%include "vbase/show_intro_screen.asm"     ; 0x8f74

%include "shared/ovr/aztec_ovbgn.asm"           ; 0x9330

%include "shared/ovr/aztec_cswt.asm"            ; 0x936e

loc_NQQK equ aztec_strcmp.loc1
%include "shared/ovr/aztec_strcmp.asm"          ; 0x9386

__zdata_start:
%include "shared/data/pc_file_name.asm"     ; 0x93ed

%include "vbase/data/list_screen_temp_file.asm" ; 0x93f8

%include "vbase/data/dseg_90a9.asm"        ; 0x93fe

%include "vbase/data/dialog_screen_temp_file.asm" ; 0x9411

%include "vbase/data/dseg_90c2.asm"        ; 0x9417

%include "vbase/data/default_game_data_name.asm" ; 0x9424

%include "vbase/data/ending_save_filename.asm" ; 0x9430

%include "vbase/data/scenario_header_filename.asm" ; 0x943d

%include "vbase/data/message_dialog_temp_file.asm" ; 0x944a

%include "vbase/data/dseg_90fb.asm"        ; 0x9450

%include "vbase/data/screen_temp_file.asm" ; 0x9462

%include "vbase/data/scene_message_control_codes.asm" ; 0x9469

%include "vbase/data/scene_message_separator.asm" ; 0x9471

%include "vbase/data/star_screen_filename.asm" ; 0x9473

%include "vbase/data/main_screen_filename.asm" ; 0x9480

%include "vbase/data/numbered_scene_picture_template.asm" ; 0x948d

%include "vbase/data/scene_one_screen_filename.asm" ; 0x9499

%include "vbase/data/scene_one_digit_cycle.asm" ; 0x94a6

%include "vbase/data/scene_four_screen_filename.asm" ; 0x94ad

%include "vbase/data/scene_five_screen_filename.asm" ; 0x94ba

%include "vbase/data/scene_six_screen_filename.asm" ; 0x94c7

%include "vbase/data/scene_six_digit_cycle.asm" ; 0x94d4

%include "vbase/data/scene_seven_screen_filename.asm" ; 0x94db

%include "vbase/data/scene_seven_digit_cycle.asm" ; 0x94e8

%include "vbase/data/scene_eight_screen_filename.asm" ; 0x94ef

%include "vbase/data/scene_eight_digit_cycle.asm" ; 0x94fc

%include "vbase/data/main_screen_restore_filename.asm" ; 0x9503

%include "shared/data/save_si.asm"          ; 0x9511

%include "shared/data/save_di.asm"          ; 0x9513

%include "shared/data/save_sp.asm"          ; 0x9515

%include "shared/data/save_bp.asm"          ; 0x9517

%include "shared/data/save_ret.asm"         ; 0x9519


__zimage_end:
absolute __zimage_end
__zobss_91c6:
    resb 0x0014
__zobss_91da:
    resb 0x0014
__zobss_91ee:
    resb 0x0001
__zobss_91ef:
    resb 0x0001
__zobss_91f0:
    resb 0x0030
__zobss_9220:
    resb 0x019e
__zobss_93be:
    resb 0x0002
__zobss_93c0:
    resb 0x0040
__zobss_9400:
    resb 0x0002
__zobss_9402:
    resb 0x0008
__zobss_940a:
    resb 0x0002
__zobss_940c:
    resb 0x0010
__zobss_941c:
    resb 0x000a
__zobss_9426:
    resb 0x0002
__zobss_9428:
    resb 0x0004
__zobss_942c:
    resb 0x0016
__zobss_9442:
    resb 0x0006
__zobss_9448:
    resb 0x0001
__zobss_9449:
    resb 0x0049
__zobss_9492:
    resb 0x0006
__zobss_9498:
    resb 0x0001
__zobss_9499:
    resb 0x0095
__zobss_952e:
    resb 0x0008
__zobss_9536:
    resb 0x001e
__zobss_9554:
    resb 0x0036
__zobss_958a:
    resb 0x000c
__zobss_9596:
    resb 0x0004
__zobss_959a:
    resb 0x0005
__zobss_959f:
    resb 0x0001
__zobss_95a0:
    resb 0x0001
__zobss_95a1:
    resb 0x0001
__zobss_95a2:
    resb 0x000c
__zobss_95ae:
    resb 0x0001
__zobss_95af:
    resb 0x0001
__zobss_95b0:
    resb 0x0002
__zobss_95b2:
    resb 0x0002
__zobss_95b4:
    resb 0x02d0
__zobss_9884:
    resb 0x0050
__zobss_98d4:
    resb 0x0001
__zobss_98d5:
    resb 0x0001
__zobss_98d6:
    resb 0x0014
__zobss_98ea:
    resb 0x0001
__zobss_98eb:
    resb 0x0003
__zobss_98ee:
    resb 0x0004
__zobss_98f2:
    resb 0x0002
__zobss_98f4:
    resb 0x0002
__zobss_98f6:
    resb 0x0001
__zobss_98f7:
    resb 0x0001
__zobss_98f8:
    resb 0x0001
__zobss_98f9:
    resb 0x0001
__zobss_98fa:
    resb 0x0001
__zobss_98fb:
    resb 0x0001
__zobss_98fc:
    resb 0x0001
__zobss_98fd:
    resb 0x0001
__zobss_98fe:
    resb 0x0002
__zobss_9900:
    resb 0x0080
__zobss_9980:
    resb 0x0080
__zobss_9a00:
    resb 0x0002
__zobss_9a02:
    resb 0x0002
__zobss_9a04:
    resb 0x0002
__zobss_9a06:
    resb 0x0002
__zobss_9a08:
    resb 0x0002
__zobss_9a0a:
    resb 0x0002
__zobss_9a0c:
    resb 0x0002
__zobss_9a0e:
    resb 0x0002
__zobss_9a10:
    resb 0x0002
__zobss_9a12:
    resb 0x0002
__zobss_9a14:
    resb 0x0002
__zobss_9a16:
    resb 0x0002
__zobss_9a18:
    resb 0x0002
__zobss_9a1a:
    resb 0x0002
__zobss_9a1c:
    resb 0x0002
__zobss_9a1e:
    resb 0x0002
__zobss_9a20:
    resb 0x0002
__zobss_9a22:
    resb 0x0002
__zobss_9a24:
    resb 0x0002
__zobss_9a26:
    resb 0x0002
__zobss_9a28:
    resb 0x0002
__zobss_9a2a:
    resb 0x0002
__zobss_9a2c:
    resb 0x0002
__zobss_9a2e:
    resb 0x0002
__zobss_9a30:
    resb 0x0002
__zobss_9a32:
    resb 0x0002
__zobss_9a34:
    resb 0x0016
__zobss_9a4a:
    resb 0x0002
__zobss_9a4c:
    resb 0x0248
__zobss_9c94:
    resb 0x0300
__zobss_9f94:
    resb 0x0001
__zobss_9f95:
    resb 0x0001
__zobss_9f96:
    resb 0x02fe
__zobss_a294:
    resb 0x0200
__zobss_a494:
    resb 0x0010
__zobss_a4a4:
    resb 0x0002
__zobss_a4a6:
    resb 0x0002
__zobss_a4a8:
    resb 0x0002
__zobss_a4aa:
    resb 0x0100
__zobss_a5aa:
    resb 0x0002
__zobss_a5ac:
    resb 0x0002
__zobss_a5ae:
    resb 0x0002
__zobss_a5b0:
    resb 0x0002
__zobss_a5b2:
    resb 0x0002
__zobss_a5b4:
    resb 0x0002
__zobss_a5b6:
    resb 0x0002
__zobss_a5b8:
    resb 0x0002
__zobss_a5ba:
    resb 0x0002
__zobss_a5bc:
    resb 0x0002
__zobss_a5be:
    resb 0x0008
__zobss_a5c6:
    resb 0x0008
__zobss_a5ce:
    resb 0x0002
__zobss_a5d0:
    resb 0x0002
__zobss_a5d2:
    resb 0x0002
__zobss_a5d4:
    resb 0x0002
__zobss_a5d6:
    resb 0x0002
__zobss_a5d8:
    resb 0x0002
__zobss_a5da:
    resb 0x0002
__zobss_a5dc:
    resb 0x0004
__zobss_a5e0:
    resb 0x0002
__zobss_a5e2:
    resb 0x0002
__zobss_a5e4:
    resb 0x0006
__zobss_a5ea:
    resb 0x0006
__zobss_a5f0:
    resb 0x0002
__zobss_a5f2:
    resb 0x0008
__zobss_a5fa:
    resb 0x0002
__zobss_a5fc:
    resb 0x0002
__zobss_a5fe:
    resb 0x0002
__zobss_a600:
    resb 0x0002
__zobss_end:
