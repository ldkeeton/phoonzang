; auto-generated
bits 16
%include "include/structs.inc"
%include "include/drivers.inc"
%include "include/msg.inc"
%include "include/nasm_macros.inc"
%ifndef VBASE
%ifdef ELF_BUILD
VBASE equ 0
%else
VBASE equ -0x0200
%endif
%endif
%ifndef HOST_SYMS_ONLY
section .text vstart=VBASE
%endif
%ifndef IMAGE_BASE
IMAGE_BASE equ 0x0200 + VBASE
%endif

%ifndef ELF_BUILD
    ; DOS MZ executable header (512 bytes)
    db "MZ"                                       ; e_magic: DOS MZ signature
    dw (__zimage_end - $$) % 512                  ; 0x0056 ; e_cblp: bytes in final 512-byte page (0 means full)
    dw ((__zimage_end - $$) + 511) // 512         ; 0x0088 ; e_cp: total 512-byte pages in the file
    dw 0x0001                                     ; e_crlc: number of relocation entries
    dw 0x0020                                     ; e_cparhdr: header size in 16-byte paragraphs
    dw ((__zstack_top - __zimage_end) + 15) // 16 ; 0x0e4b ; e_minalloc: minimum extra memory paragraphs
    dw 0xffff                                     ; e_maxalloc: maximum extra memory paragraphs
    dw __zdseg_para                               ; 0x0ff6 ; e_ss: initial stack segment, relative to load module
    dw __zstack_top - __zdseg_start               ; 0xf198 ; e_sp: initial stack pointer
    dw 0x0000                                     ; e_csum: file checksum (often unused)
    dw aztec_begin - IMAGE_BASE                   ; 0x4b3a ; e_ip: initial instruction pointer
    dw 0x0000                                     ; e_cs: initial code segment, relative to load module
    dw 0x0020                                     ; e_lfarlc: file offset of relocation table
    dw 0x0000                                     ; e_ovno: overlay number (0 for main executable)

    times 4 db 0
    dw __zinsn_aztec_begin + 0x1 - IMAGE_BASE, 0x0000 ; 0x4b3b ; relocation: segment word DOS patches
    times 476 db 0
%endif

bios_data_0410 equ 0x0410
psp_top_of_memory equ 0x0002
tick_counter_ptr equ __ztick_counter_ptr - __zdseg_start
realm_point_text_colors equ __zrealm_point_text_colors - __zdseg_start
equip_slot_colors equ __zequip_slot_colors - __zdseg_start
unidentified_item_color equ __zunidentified_item_color - __zdseg_start
identified_item_color equ __zidentified_item_color - __zdseg_start
psp_env_segment equ 0x002c
unused_int equ __zunused_int - __zdseg_start
realm_text_colors equ __zrealm_text_colors - __zdseg_start
skill_group_ranges equ __zskill_group_ranges - __zdseg_start
physical_skill_group_start equ __zphysical_skill_group_start - __zdseg_start
personal_skill_group_start equ __zpersonal_skill_group_start - __zdseg_start
personal_skill_group_end equ __zpersonal_skill_group_end - __zdseg_start
academic_skill_group_start equ __zacademic_skill_group_start - __zdseg_start
value_clamp_ranges equ __zvalue_clamp_ranges - __zdseg_start
psp_cmd_tail_len equ 0x0080
hourly_maze_tints equ __zhourly_maze_tints - __zdseg_start
level_up_score_number equ __zlevel_up_score_number - __zdseg_start
camp_score_number equ __zcamp_score_number - __zdseg_start
file_param_word equ __zfile_param_word - __zdseg_start
story_score_file_number equ __zstory_score_file_number - __zdseg_start
loaded_score_number equ __zloaded_score_number - __zdseg_start
intro_score_number_source equ __zintro_score_number_source - __zdseg_start
screen_area_rectangles equ __zscreen_area_rectangles - __zdseg_start
movement_area_keys equ __zmovement_area_keys - __zdseg_start
member_swap_keys equ __zmember_swap_keys - __zdseg_start
realm_point_text_positions equ __zrealm_point_text_positions - __zdseg_start
realm_spell_point_positions equ __zrealm_spell_point_positions - __zdseg_start
party_slot_x equ __zparty_slot_x - __zdseg_start
party_slot_y equ __zparty_slot_y - __zdseg_start
party_slot_glyphs equ __zparty_slot_glyphs - __zdseg_start
region_view_x_offsets equ __zregion_view_x_offsets - __zdseg_start
shape_column_x equ __zshape_column_x - __zdseg_start
shape_base_y equ __zshape_base_y - __zdseg_start
shape_repeat_y_step equ __zshape_repeat_y_step - __zdseg_start
boundary_box_bounds equ __zboundary_box_bounds - __zdseg_start
maze_cell_x_offset equ __zmaze_cell_x_offset - __zdseg_start
view_column_x equ __zview_column_x - __zdseg_start
view_geometry equ __zview_geometry - __zdseg_start
view_depth_scale equ __zview_depth_scale - __zdseg_start
cell_overlay_y_offset equ __zcell_overlay_y_offset - __zdseg_start
column_orders equ __zcolumn_orders - __zdseg_start
cell_overlay_code equ __zcell_overlay_code - __zdseg_start
npc_cell_overlay_y_offset equ __znpc_cell_overlay_y_offset - __zdseg_start
npc_cell_overlay_code equ __znpc_cell_overlay_code - __zdseg_start
next_cell_toward_party equ __znext_cell_toward_party - __zdseg_start
action_overlay_steps equ __zaction_overlay_steps - __zdseg_start
item_type_counted equ __zitem_type_counted - __zdseg_start
spell_table equ __zspell_table - __zdseg_start
str_insert_savegame_disk equ __zstr_insert_savegame_disk - __zdseg_start
str_insert_disk_n equ __zstr_insert_disk_n - __zdseg_start
str_into_drive equ __zstr_into_drive - __zdseg_start
str_continue equ __zstr_continue - __zdseg_start
str_disk_hdr equ __zstr_disk_hdr - __zdseg_start
str_msg_dbs equ __zstr_msg_dbs - __zdseg_start
str_scenario_dbs equ __zstr_scenario_dbs - __zdseg_start
monster_pic_name equ __zmonster_pic_name - __zdseg_start
dseg_0bd7 equ __zdseg_0bd7 - __zdseg_start
dseg_0be3 equ __zdseg_0be3 - __zdseg_start
score_ext_csf equ __zscore_ext_csf - __zdseg_start
score_ext_pbl equ __zscore_ext_pbl - __zdseg_start
score_ext_pba equ __zscore_ext_pba - __zdseg_start
dseg_0bfa equ __zdseg_0bfa - __zdseg_start
dseg_0c00 equ __zdseg_0c00 - __zdseg_start
dseg_0c06 equ __zdseg_0c06 - __zdseg_start
dseg_0c0c equ __zdseg_0c0c - __zdseg_start
dseg_0c12 equ __zdseg_0c12 - __zdseg_start
dseg_0c18 equ __zdseg_0c18 - __zdseg_start
dseg_0c1e equ __zdseg_0c1e - __zdseg_start
dseg_0c24 equ __zdseg_0c24 - __zdseg_start
dseg_0c2a equ __zdseg_0c2a - __zdseg_start
dseg_0c30 equ __zdseg_0c30 - __zdseg_start
dseg_0c36 equ __zdseg_0c36 - __zdseg_start
dseg_0c3c equ __zdseg_0c3c - __zdseg_start
dseg_0c42 equ __zdseg_0c42 - __zdseg_start
dseg_0c48 equ __zdseg_0c48 - __zdseg_start
dseg_0c4d equ __zdseg_0c4d - __zdseg_start
endmarker equ __zendmarker - __zdseg_start
aztec_MEMRY equ __zaztec_MEMRY - __zdseg_start
errno equ __zerrno - __zdseg_start
_dsval equ __z_dsval - __zdseg_start
_csval equ __z_csval - __zdseg_start
_mbot equ __z_mbot - __zdseg_start
_sbot equ __z_sbot - __zdseg_start
_mtop equ __z_mtop - __zdseg_start
_lowwater equ __z_lowwater - __zdseg_start
_PSP equ __z_PSP - __zdseg_start
bad8087 equ __zbad8087 - __zdseg_start
cls_ equ __zcls_ - __zdseg_start
aztec_croot_empty_str equ __zaztec_croot_empty_str - __zdseg_start
aztec_croot_too_many_args equ __zaztec_croot_too_many_args - __zdseg_start
dseg_0cae equ __zdseg_0cae - __zdseg_start
_STKSIZ equ __z_STKSIZ - __zdseg_start
_STKRED equ __z_STKRED - __zdseg_start
_HEAPSIZ equ __z_HEAPSIZ - __zdseg_start
_STKLOW equ __z_STKLOW - __zdseg_start
_ioflg equ __z_ioflg - __zdseg_start
ioflg_stdout equ __zioflg_stdout - __zdseg_start
ioflg_stderr equ __zioflg_stderr - __zdseg_start
_ttrd equ __z_ttrd - __zdseg_start
_ttwr equ __z_ttwr - __zdseg_start
_Eol equ __z_Eol - __zdseg_start
aztec_tty_wr_crbuf equ __zaztec_tty_wr_crbuf - __zdseg_start
_Uorg equ __zsaved_word - __zdseg_start
saved_word equ __zsaved_word - __zdseg_start
saved_pair equ __zsaved_pair - __zdseg_start
ovname equ __zovname - __zdseg_start
buff equ __zbuff - __zdseg_start
keep equ __zkeep - __zdseg_start
current equ __zcurrent - __zdseg_start
first equ __zfirst - __zdseg_start
Argc equ __zArgc - __zdseg_start
Argv equ __zArgv - __zdseg_start
aztec_tty_rd_buffer equ __zaztec_tty_rd_buffer - __zdseg_start
aztec_tty_rd_bp equ __zaztec_tty_rd_bp - __zdseg_start
floor_items equ __zbss_0e0e - __zdseg_start
maze_change_log equ __zbss_0e10 - __zdseg_start
maze_tables equ __zbss_0e12 - __zdseg_start
maze_data equ __zbss_0e14 - __zdseg_start
runtime_buffer_4k_b equ __zbss_0e16 - __zdseg_start
runtime_buffer_4k_b_seg equ __zbss_0e18 - __zdseg_start
runtime_buffer_4k_a equ __zbss_0e1a - __zdseg_start
runtime_buffer_4k_a_seg equ __zbss_0e1c - __zdseg_start
runtime_buffer_1k equ __zbss_0e1e - __zdseg_start
runtime_buffer_1k_seg equ __zbss_0e20 - __zdseg_start
data_file_fd equ __zbss_0e22 - __zdseg_start
msg_dbs_fd equ __zbss_0e24 - __zdseg_start
pointer_image_two equ __zbss_0e26 - __zdseg_start
pointer_image_two_seg equ __zbss_0e28 - __zdseg_start
mouse_pointer_shape equ __zbss_0e2a - __zdseg_start
mouse_pointer_shape_seg equ __zbss_0e2c - __zdseg_start
pointer_image_zero equ __zbss_0e2e - __zdseg_start
pointer_image_zero_seg equ __zbss_0e30 - __zdseg_start
mouse_active equ __zbss_0e32 - __zdseg_start
npc_id_address equ __zbss_0e34 - __zdseg_start
npc_id equ __zbss_0e36 - __zdseg_start
list_entry_text equ __zbss_0e38 - __zdseg_start
filename_edit_buffer equ __zbss_0e4c - __zdseg_start
code_char_message_index equ __zbss_0fd5 - __zdseg_start
code_table equ __zbss_0fd6 - __zdseg_start
npc_id_answer_relay equ __zbss_1008 - __zdseg_start
npc_id_target equ __zbss_100a - __zdseg_start
message_directory equ __zbss_100c - __zdseg_start
bss_2d40 equ __zbss_2d40 - __zdseg_start
bss_2d58 equ __zbss_2d58 - __zdseg_start
message_cache_ids equ __zbss_3e0a - __zdseg_start
message_block_buffer equ __zbss_3e12 - __zdseg_start
message_block_current equ __zbss_5212 - __zdseg_start
message_cache_next equ __zbss_5214 - __zdseg_start
message_not_found equ __zbss_5216 - __zdseg_start
disk_header equ __zbss_5218 - __zdseg_start
record_base equ __zbss_521c - __zdseg_start
record_map_2 equ __zbss_5244 - __zdseg_start
record_map_5 equ __zbss_5264 - __zdseg_start
record_map_7 equ __zbss_52c4 - __zdseg_start
record_map_4 equ __zbss_53c4 - __zdseg_start
record_map_8 equ __zbss_54c4 - __zdseg_start
record_size equ __zbss_5524 - __zdseg_start
maze_data_size equ __zbss_5528 - __zdseg_start
maze_tables_size equ __zbss_552a - __zdseg_start
record_packed equ __zbss_556c - __zdseg_start
sound_slot_info equ __zbss_5576 - __zdseg_start
scenario_header_data equ __zbss_5642 - __zdseg_start
action_bitmap equ __zbss_5842 - __zdseg_start
maze_change_count equ __zbss_590e - __zdseg_start
floor_item_count equ __zbss_5910 - __zdseg_start
data_path_prefixes equ __zbss_5912 - __zdseg_start
disk_drive_name equ __zbss_5926 - __zdseg_start
selected_game_directory equ __zbss_593a - __zdseg_start
selected_game_filename equ __zbss_594e - __zdseg_start
screen_store_1_enabled equ __zbss_5962 - __zdseg_start
screen_store_disk_enabled equ __zbss_5963 - __zdseg_start
screen_store_drive equ __zbss_5964 - __zdseg_start
palette_base_setting equ __zbss_5978 - __zdseg_start
palette_scale_setting equ __zbss_5979 - __zdseg_start
configuration_display_value equ __zbss_597a - __zdseg_start
volume_settings equ __zbss_597c - __zdseg_start
monster_volume equ __zbss_597d - __zdseg_start
background_volume equ __zbss_597e - __zdseg_start
music_volume equ __zbss_597f - __zdseg_start
sound_port_setting equ __zbss_5980 - __zdseg_start
sound_aux_setting equ __zbss_5982 - __zdseg_start
sound_device_setting equ __zbss_5984 - __zdseg_start
video_mode equ __zbss_5985 - __zdseg_start
startup_option_byte equ __zbss_5986 - __zdseg_start
install_mode equ __zbss_5987 - __zdseg_start
difficulty_option equ __zbss_5988 - __zdseg_start
startup_aux_option_b equ __zbss_5989 - __zdseg_start
hardware_mode_setting equ __zbss_598a - __zdseg_start
startup_aux_option_c equ __zbss_598b - __zdseg_start
no_dissolve equ __zbss_598c - __zdseg_start
loaded_sound_id equ __zbss_598e - __zdseg_start
code_characters equ __zbss_5990 - __zdseg_start
code_char_index equ __zbss_59f4 - __zdseg_start
answer_length equ __zbss_59f6 - __zdseg_start
npc_id_clue_relay equ __zbss_59f8 - __zdseg_start
escape_key_hit equ __zbss_59fa - __zdseg_start
space_key_hit equ __zbss_59fc - __zdseg_start
hotspot_rects equ __zbss_59fe - __zdseg_start
hotspot_keys equ __zbss_5afe - __zdseg_start
hotspot_hit equ __zbss_5b3e - __zdseg_start
code_index_1 equ __zbss_5b40 - __zdseg_start
code_index_2 equ __zbss_5b42 - __zdseg_start
code_index_3 equ __zbss_5b44 - __zdseg_start
code_index_4 equ __zbss_5b46 - __zdseg_start
picture_slot_number equ __zbss_5b48 - __zdseg_start
picture_slot_number_13 equ __zbss_5b55 - __zdseg_start
picture_slot_used equ __zbss_5b5a - __zdseg_start
current_maze equ __zbss_5b6c - __zdseg_start
maze_variant equ __zbss_5b6e - __zdseg_start
maze_state equ __zbss_5b70 - __zdseg_start
saved_screen_kind equ __zbss_5b72 - __zdseg_start
saved_screen_file equ __zbss_5b7c - __zdseg_start
saved_screen_ref equ __zbss_5be0 - __zdseg_start
party_records equ __zbss_5bf4 - __zdseg_start
panel_area equ __zbss_69a4 - __zdseg_start
member_icon equ __zbss_69bc - __zdseg_start
party_char_count equ __zbss_69c8 - __zdseg_start
data_path_buf equ __zbss_69ca - __zdseg_start
slot_recs equ __zbss_6a1a - __zdseg_start
loaded_score_num equ __zbss_82b6 - __zdseg_start
answer_word equ __zbss_82b8 - __zdseg_start
party_status_areas equ __zbss_82d0 - __zdseg_start
party_status_frame equ __zbss_82e8 - __zdseg_start
party_status_frame_step equ __zbss_82ea - __zdseg_start
party_status_frame_seen equ __zbss_82ec - __zdseg_start
party_facing equ __zbss_82ee - __zdseg_start
party_status_heading equ __zbss_82f0 - __zdseg_start
party_status_timer equ __zbss_82f2 - __zdseg_start
party_status_offset equ __zbss_82f4 - __zdseg_start
spell_49_turns equ __zbss_82f6 - __zdseg_start
spell_49_strength equ __zbss_82f8 - __zdseg_start
party_buff_turns equ __zbss_82fa - __zdseg_start
party_buff_charge equ __zbss_82fc - __zdseg_start
detection_spell_bonus equ __zbss_82fe - __zdseg_start
detection_spell_threshold equ __zbss_8300 - __zdseg_start
spell_46_turns equ __zbss_8302 - __zdseg_start
item_kind5_used_flag equ __zbss_8304 - __zdseg_start
levitation_turns equ __zbss_8306 - __zdseg_start
game_state equ __zbss_830a - __zdseg_start
current_level equ __zbss_830c - __zdseg_start
party_slot_frame equ __zbss_830e - __zdseg_start
maze_gate_frame equ __zbss_831a - __zdseg_start
effect_frame_phase equ __zbss_8320 - __zdseg_start
action_slot_table equ __zbss_8322 - __zdseg_start
action_slot_mode equ __zbss_8430 - __zdseg_start
cell_slot_ref equ __zbss_843a - __zdseg_start
story_score_volume equ __zbss_844c - __zdseg_start
story_score_number equ __zbss_844e - __zdseg_start
story_music_enabled equ __zbss_8450 - __zdseg_start
party_entry_mode equ __zbss_8452 - __zdseg_start
row_limit equ __zbss_8454 - __zdseg_start
requested_row_limit equ __zbss_8456 - __zdseg_start
e1_event_flag equ __zbss_8458 - __zdseg_start
party_entry_flag equ __zbss_845a - __zdseg_start
party_screen_done equ __zbss_845c - __zdseg_start
party_screen_animation_state equ __zbss_845e - __zdseg_start
dest_alt_arg equ __zbss_8460 - __zdseg_start
acting_unit equ __zbss_8462 - __zdseg_start
acting_group equ __zbss_8464 - __zdseg_start
monster_group_count equ __zbss_8466 - __zdseg_start
overlay_list equ __zbss_8468 - __zdseg_start
battle_groups equ __zbss_8482 - __zdseg_start
battle_groups_1 equ __zbss_8484 - __zdseg_start
ally_battle_group equ __zbss_848e - __zdseg_start
battle_group_ext equ __zbss_8490 - __zdseg_start
battle_group_ext_1 equ __zbss_8492 - __zdseg_start
selected_item_slot equ __zbss_849e - __zdseg_start
selected_item_record equ __zbss_84a0 - __zdseg_start
battle_experience equ __zbss_84a2 - __zdseg_start
battle_experience_hi equ __zbss_84a4 - __zdseg_start
quest_maps equ __zbss_84a6 - __zdseg_start
slot_records equ __zbss_84e8 - __zdseg_start
slot_event_logs equ __zbss_882c - __zdseg_start
location_records equ __zbss_8976 - __zdseg_start
faction_attitudes equ __zbss_89de - __zdseg_start
intro_layout_value_1 equ __zbss_89df - __zdseg_start
intro_layout_value_2 equ __zbss_89e0 - __zdseg_start
intro_layout_value_3 equ __zbss_89e1 - __zdseg_start
intro_layout_value_4 equ __zbss_89e2 - __zdseg_start
intro_layout_value_5 equ __zbss_89e3 - __zdseg_start
intro_layout_value_6 equ __zbss_89e4 - __zdseg_start
intro_layout_value_7 equ __zbss_89e5 - __zdseg_start
intro_layout_value_8 equ __zbss_89e6 - __zdseg_start
intro_layout_value_9 equ __zbss_89e7 - __zdseg_start
intro_layout_value_10 equ __zbss_89e8 - __zdseg_start
intro_layout_copy_1 equ __zbss_89ea - __zdseg_start
intro_layout_copy_2 equ __zbss_89f6 - __zdseg_start
intro_layout_copy_3 equ __zbss_8a02 - __zdseg_start
intro_layout_copy_4 equ __zbss_8a0e - __zdseg_start
intro_layout_copy_5 equ __zbss_8a1a - __zdseg_start
intro_layout_copy_6 equ __zbss_8a26 - __zdseg_start
intro_layout_copy_7 equ __zbss_8a32 - __zdseg_start
intro_layout_copy_8 equ __zbss_8a3e - __zdseg_start
intro_layout_copy_9 equ __zbss_8a4a - __zdseg_start
intro_layout_copy_10 equ __zbss_8a56 - __zdseg_start
path_edges equ __zbss_8a6e - __zdseg_start
picked_item_slot equ __zbss_8aee - __zdseg_start
member_roster_index equ __zbss_8af0 - __zdseg_start
explored_cell_bitmap equ __zbss_8afe - __zdseg_start
current_map_block_a equ __zbss_8b7e - __zdseg_start
floor_item_cell_bits equ __zbss_8bfe - __zdseg_start
maze_object_cell_bitmap equ __zbss_8c7e - __zdseg_start
adjacent_object_type equ __zbss_8cfe - __zdseg_start
base_screen_area equ __zbss_8d06 - __zdseg_start
base_screen_area_segment equ __zbss_8d08 - __zdseg_start
saved_area_b equ __zbss_8d0a - __zdseg_start
saved_area_b_hi equ __zbss_8d0c - __zdseg_start
saved_area_a equ __zbss_8d0e - __zdseg_start
saved_area_a_hi equ __zbss_8d10 - __zdseg_start
party_region equ __zbss_8d12 - __zdseg_start
flag_bitset equ __zbss_8e64 - __zdseg_start
game_time_aux_b equ __zbss_8f14 - __zdseg_start
game_time_aux_b_hi equ __zbss_8f16 - __zdseg_start
game_time_aux_a equ __zbss_8f18 - __zdseg_start
game_time_aux_a_hi equ __zbss_8f1a - __zdseg_start
game_time equ __zbss_8f1c - __zdseg_start
game_time_hi equ __zbss_8f1e - __zdseg_start
marker_mode equ __zbss_8f20 - __zdseg_start
capture_center_marker_mode equ __zbss_8f22 - __zdseg_start
trigger_facing equ __zbss_8f24 - __zdseg_start
saved_position_extra equ __zbss_8f26 - __zdseg_start
saved_level equ __zbss_8f28 - __zdseg_start
saved_map_piece equ __zbss_8f2a - __zdseg_start
saved_cell_y equ __zbss_8f2c - __zdseg_start
saved_cell_x equ __zbss_8f2e - __zdseg_start
previous_party_facing equ __zbss_8f30 - __zdseg_start
previous_party_map_piece equ __zbss_8f32 - __zdseg_start
previous_party_cell_y equ __zbss_8f34 - __zdseg_start
previous_party_cell_x equ __zbss_8f36 - __zdseg_start
previous_party_world_y equ __zbss_8f38 - __zdseg_start
previous_party_world_x equ __zbss_8f3a - __zdseg_start
previous_level equ __zbss_8f3c - __zdseg_start
party_map_piece equ __zbss_8f3e - __zdseg_start
party_cell_y equ __zbss_8f40 - __zdseg_start
party_cell_x equ __zbss_8f42 - __zdseg_start
party_world_y equ __zbss_8f44 - __zdseg_start
party_world_x equ __zbss_8f46 - __zdseg_start
last_map_piece_index equ __zbss_8f48 - __zdseg_start
startup_check_stage equ __zbss_904c - __zdseg_start
dialog_selection equ __zbss_904e - __zdseg_start
dialog_button equ __zbss_9050 - __zdseg_start
menu_selection_index equ __zbss_9052 - __zdseg_start
startup_hardware_flags equ __zbss_9056 - __zdseg_start
startup_option equ __zbss_9058 - __zdseg_start
message_delay equ __zbss_905a - __zdseg_start
npc_id_decoy equ __zbss_905c - __zdseg_start
party_return_state equ __zbss_905e - __zdseg_start
screen_cache equ __zbss_9060 - __zdseg_start
screen_cache_0_seg equ __zbss_9062 - __zdseg_start
screen_cache_1_off equ __zbss_9064 - __zdseg_start
screen_cache_1_seg equ __zbss_9066 - __zdseg_start
saved_screen_slot equ __zbss_9068 - __zdseg_start
saved_screen_pending equ __zbss_906a - __zdseg_start
screen_cache_index equ __zbss_906c - __zdseg_start
pc_file_record_size equ __zbss_906e - __zdseg_start
pc_file_record_count equ __zbss_9070 - __zdseg_start
pc_file_record_base equ __zbss_9072 - __zdseg_start
pc_file_record_base_hi equ __zbss_9074 - __zdseg_start
scenario_header_fd equ __zbss_9088 - __zdseg_start
party_redraw_last_tick equ __zbss_908a - __zdseg_start
party_redraw_last_tick_hi equ __zbss_908c - __zdseg_start
party_redraw_current_tick equ __zbss_908e - __zdseg_start
party_redraw_current_tick_hi equ __zbss_9090 - __zdseg_start
party_redraw_elapsed_ticks equ __zbss_9092 - __zdseg_start
party_redraw_elapsed_ticks_hi equ __zbss_9094 - __zdseg_start
_TTrem equ __zbss_9096 - __zdseg_start
aztec_Uend equ __zbss_b198 - __zdseg_start
__zbss_size equ __zbss_end - __zimage_end
__zdseg_end equ (__zimage_end - __zdseg_start) + __zbss_size

%include "ds/game/app_malloc.asm"          ; 0x0200

%include "ds/game/app_memmove.asm"         ; 0x0213

%include "ds/game/app_free.asm"            ; 0x022f

%include "ds/game/release_resources.asm"   ; 0x0242

%include "ds/game/release_and_exit.asm"    ; 0x03b8

%include "ds/game/set_npc_id_address.asm"  ; 0x03cd

%include "ds/game/reverse_string.asm"      ; 0x03da

%include "ds/game/format_long_decimal.asm" ; 0x0422

%include "ds/game/format_int_decimal.asm"  ; 0x04c4

%include "ds/game/draw_padded_number.asm"  ; 0x04da

%include "ds/game/draw_number_field.asm"   ; 0x052e

%include "ds/game/str_subst_char.asm"      ; 0x0547

%include "ds/game/verify_code_message.asm" ; 0x05d0

%include "ds/game/find_message_record.asm" ; 0x065d

%include "ds/game/load_message_block.asm"  ; 0x06c6

%include "ds/game/load_message_string.asm" ; 0x0782

%include "ds/game/draw_message_string.asm" ; 0x0860

%include "ds/game/data_record_io.asm"      ; 0x0883

%include "ds/game/wait_for_hotspot_timeout.asm" ; 0x09a5

%include "ds/game/random_below.asm"        ; 0x09f0

%include "ds/game/clamp_between.asm"       ; 0x0a09

%include "ds/game/play_sound_effect.asm"   ; 0x0a27

%include "ds/game/relay_npc_id_address.asm" ; 0x0ad7

%include "ds/game/set_mouse_pointer_shape.asm" ; 0x0af6

%include "ds/game/poll_hotspots.asm"       ; 0x0b54

%include "ds/game/prepare_code_answer.asm" ; 0x0c0b

%include "ds/game/set_hotspot.asm"         ; 0x0ced

%include "ds/game/poll_fullscreen_hotspot.asm" ; 0x0d36

%include "ds/game/dissolve_or_show_area.asm" ; 0x0d7a

%include "ds/game/draw_rect_outline.asm"   ; 0x0e03

%include "ds/game/draw_rect_bevel.asm"     ; 0x0e82

%include "ds/game/draw_dialog_box.asm"     ; 0x0ee1

%include "ds/game/draw_bevel_frame.asm"    ; 0x0f2a

%include "ds/game/draw_inset_panel.asm"    ; 0x0fdf

%include "ds/game/draw_framed_button.asm"  ; 0x1034

%include "ds/game/flash_button.asm"        ; 0x10a6

%include "ds/game/flash_area.asm"          ; 0x10ff

%include "ds/game/draw_spell_list.asm"     ; 0x1138

%include "ds/game/draw_text_list.asm"      ; 0x11de

%include "ds/game/draw_scrollbar.asm"      ; 0x121f

%include "ds/game/draw_button.asm"         ; 0x1308

%include "ds/game/free_picture_slot.asm"   ; 0x1371

%include "ds/game/free_current_maze.asm"   ; 0x138c

%include "ds/game/save_screen_area.asm"    ; 0x14ca

%include "ds/game/restore_saved_screen.asm" ; 0x16a0

%include "ds/game/item_slot_weight.asm"    ; 0x1741

%include "ds/game/sum_member_item_weight.asm" ; 0x17d6

%include "ds/game/reset_hand_attack.asm"   ; 0x184f

%include "ds/game/unequip_item_slot.asm"   ; 0x1a23

%include "ds/game/clear_item_slot.asm"     ; 0x1c2f

%include "ds/game/consume_item_charge.asm" ; 0x1c6e

%include "ds/game/pick_code_char.asm"      ; 0x1cb1

%include "ds/game/member_is_active.asm"    ; 0x1ccc

%include "ds/game/draw_power_bar.asm"      ; 0x1cf8

%include "ds/game/draw_party_member_panel.asm" ; 0x1d81

%include "ds/game/pick_party_member.asm"   ; 0x20f8

%include "ds/game/add_random_steps.asm"    ; 0x2305

%include "ds/game/store_word_and_pair.asm" ; 0x2331

%include "ds/game/copy_through_char.asm"   ; 0x2359

%include "ds/game/data_file_path.asm"      ; 0x23a8

%include "ds/game/disk_and_file_loaders.asm" ; 0x23ef

%include "ds/game/free_loaded_score.asm"   ; 0x2b4e

%include "ds/game/fade_out_music.asm"      ; 0x2b62

%include "ds/game/play_score_at_volume.asm" ; 0x2bab

%include "ds/game/score_music_enabled.asm" ; 0x2bed

%include "ds/game/verify_answer_word.asm"  ; 0x2c11

%include "ds/game/draw_party_status_glyphs.asm" ; 0x2c69

%include "ds/game/main.asm"                ; 0x2dd5

%include "ds/data/video_flags.asm"         ; 0x2f35

%include "ds/data/driver_tables.asm"       ; 0x2f40

%include "ds/data/drv_slots_video.asm"     ; 0x2f87

%include "ds/data/drv_block_table_dest.asm" ; 0x3063

%include "ds/library/init_system_hardware.asm" ; 0x3067

%include "ds/library/restore_video_and_release_mem.asm" ; 0x30a3

%include "ds/library/restore_saved_video_state.asm" ; 0x30c3

%include "ds/data/random_seeds.asm"        ; 0x30dc

%include "ds/library/seed_random_from_timer.asm" ; 0x30e2

%include "ds/library/detect_video_adapter.asm" ; 0x30f7

%include "ds/data/ega_palette.asm"         ; 0x34f6

%include "ds/data/driver_names.asm"        ; 0x3507

%include "ds/library/load_video_driver.asm" ; 0x3534

%include "ds/data/play_drv_name.asm"       ; 0x35ec

%include "ds/library/load_play_driver.asm" ; 0x35f5

%include "ds/data/loops_per_ms.asm"        ; 0x3672

%include "ds/library/calibrate_loops_per_ms.asm" ; 0x3674

%include "ds/library/far_delay_ms.asm"     ; 0x36bc

%include "ds/library/no_operation.asm"     ; 0x36cd

%include "ds/data/delay_loop_target.asm"   ; 0x36ce

%include "ds/library/delay_ms.asm"         ; 0x36d0

%include "ds/library/allocate_driver_blocks.asm" ; 0x36f5

%include "ds/library/free_driver_blocks.asm" ; 0x3760

%include "ds/library/free_font_memory.asm" ; 0x377b

%include "ds/library/free_driver_and_font_memory.asm" ; 0x3796

%include "ds/library/detect_mouse.asm"     ; 0x37a5

%include "ds/data/ems_driver_signature.asm" ; 0x37d1

%include "ds/library/detect_expanded_memory.asm" ; 0x37d9

%include "ds/library/release_expanded_memory.asm" ; 0x382c

%include "ds/library/get_loops_per_ms.asm" ; 0x383e

%include "ds/data/font_seg_table.asm"      ; 0x384a

%include "ds/library/load_font_file.asm"   ; 0x3860

%include "ds/data/font_io_error_msg.asm"   ; 0x393f

%include "ds/library/font_memory_error.asm" ; 0x395b

%include "ds/library/read_font_glyph.asm"  ; 0x398a

%include "ds/library/get_font_glyph.asm"   ; 0x39f6

%include "ds/library/call_thunks_text_pos.asm" ; 0x3a50

%include "ds/library/draw_font_glyph.asm"  ; 0x3a77

%include "ds/library/draw_text_glyphs.asm" ; 0x3a95

%include "ds/library/measure_text_width.asm" ; 0x3aca

%include "ds/library/call_thunks_area.asm" ; 0x3b21

%include "ds/library/random_15bit.asm"     ; 0x3ba3

%include "ds/library/stir_random_seeds.asm" ; 0x3c0d

%include "ds/data/key_queue.asm"           ; 0x3c7f

%include "ds/library/poll_filtered_key.asm" ; 0x3c97

%include "ds/library/get_filtered_key.asm" ; 0x3d79

%include "ds/library/flush_keyboard.asm"   ; 0x3e5e

%include "ds/library/set_bitmap_bit.asm"   ; 0x3e88

%include "ds/library/test_bit.asm"         ; 0x3ebb

%include "ds/library/set_bitfield.asm"     ; 0x3eeb

%include "ds/library/read_packed_field.asm" ; 0x3f3d

%include "ds/library/get_bits.asm"         ; 0x3f81

%include "ds/library/read_misc_table.asm"  ; 0x3fa9

%include "ds/data/misc_table_io_error_msg.asm" ; 0x3fde

%include "ds/library/unpack_record.asm"    ; 0x4002

%include "ds/library/decode_packed_tree_leaf.asm" ; 0x4046

%include "ds/library/strpos.asm"           ; 0x4091

%include "ds/library/strstr.asm"           ; 0x40ca

%include "ds/library/call_thunks_media.asm" ; 0x4134

%include "ds/library/mouse_set_pos.asm"    ; 0x42b4

%include "ds/library/call_thunks_screen.asm" ; 0x42dd

%include "ds/aztec/aztec_ovloader.asm"     ; 0x4379

%include "ds/aztec/aztec_bdos.asm"         ; 0x4497

%include "ds/aztec/aztec_impl_csread.asm"  ; 0x44b4

%include "ds/aztec/aztec_sprintf.asm"      ; 0x44d4

%include "ds/aztec/aztec_movblock.asm"     ; 0x4517

%include "ds/aztec/aztec_setmem.asm"       ; 0x454d

%include "shared/aztec/aztec_strcat.asm"       ; 0x4574

%include "shared/aztec/aztec_strcpy.asm"       ; 0x45ab

%include "ds/aztec/aztec_lmalloc.asm"      ; 0x45d7

%include "ds/aztec/aztec_lfree.asm"        ; 0x460d

%include "ds/aztec/aztec_lrealloc.asm"     ; 0x4625

%include "ds/data/aztec_csav_begin.asm"    ; 0x4650

%include "ds/aztec/aztec_csav.asm"         ; 0x4652

%include "shared/aztec/aztec_malloc.asm"       ; 0x467b

%include "shared/aztec/aztec_format.asm"       ; 0x480d

%include "shared/aztec/aztec_format_get_pointer.asm" ; 0x4aed

%include "shared/aztec/aztec_format_do_width.asm" ; 0x4b07

%include "shared/aztec/aztec_open.asm"         ; 0x4b39

%include "shared/aztec/aztec_lsubs.asm"        ; 0x4be6

%include "shared/aztec/aztec_strlen.asm"       ; 0x4cd7

%include "shared/aztec/aztec_impl_sys.asm"     ; 0x4cf4

%include "shared/data/aztec_begin_exitad.asm"  ; 0x4d36

%include "shared/data/aztec_begin_exitcs.asm"  ; 0x4d38

%include "shared/aztec/aztec_begin.asm"        ; 0x4d3a

%include "shared/aztec/aztec_Croot.asm"        ; 0x4ea3

%include "shared/aztec/aztec_fltinit.asm"      ; 0x4f85

%include "ds/aztec/aztec_impl_stkover.asm" ; 0x4f87

%include "shared/aztec/aztec_io.asm"           ; 0x4fa2

%include "shared/aztec/aztec_ttyio.asm"        ; 0x505c

%include "shared/aztec/aztec_movmem.asm"       ; 0x5123

%include "shared/aztec/aztec_isatty.asm"       ; 0x5168

%include "shared/aztec/aztec_sbrk.asm"         ; 0x5188

%include "shared/aztec/aztec_brk.asm"          ; 0x51bc

%include "shared/aztec/aztec_rsvstk.asm"       ; 0x5248


; End of host resident code
; address, o_corg in an overlay header).
__zres_end equ ($ - $$) + VBASE
%if ($ - $$) > 0x10160
    align 16, db 0
    __zdseg_para equ ($ - $$ - 0x200) / 16
%else
    times (0x10160 - ($ - $$)) db 0 ; 0xaf0b
    __zdseg_para equ (0x10160 - 0x200) / 16
%endif
__zdseg_start:
ln_ds_zero                                 ; 0x10160

%include "ds/data/tick_counter_ptr.asm"    ; 0x10162

%include "ds/data/realm_point_text_colors.asm" ; 0x10166

%include "ds/data/equip_slot_colors.asm"   ; 0x1017e

%include "ds/data/unused_int.asm"          ; 0x1018e

%include "ds/data/realm_text_colors.asm"   ; 0x10190

%include "ds/data/skill_group_ranges.asm"  ; 0x10198

%include "ds/data/value_clamp_ranges.asm"  ; 0x101a8

%include "ds/data/hourly_maze_tints.asm"   ; 0x10224

%include "ds/data/score_numbers.asm"       ; 0x1026c

%include "ds/data/party_slot_layout.asm"   ; 0x10304

%include "ds/data/view_tables.asm"         ; 0x1050e

%include "ds/data/cell_overlay_code.asm"   ; 0x10716

%include "ds/data/spell_table.asm"         ; 0x10780

%include "ds/game/disk_and_file_loaders.data.asm" ; 0x10cd4

%include "ds/game/main.data.asm"           ; 0x10d5a

%include "ds/aztec/aztec_ovloader.data.asm" ; 0x10da8

%include "shared/aztec/aztec_malloc.data.asm"  ; 0x10dcc

%include "shared/aztec/aztec_begin.data.asm"   ; 0x10dd0

%include "shared/aztec/aztec_Croot.data.asm"   ; 0x10dfc

%include "ds/aztec/aztec_impl_stkover.data.asm" ; 0x10e0e

%include "shared/data/STKSIZ.asm"              ; 0x10e34

%include "shared/aztec/aztec_io.data.asm"      ; 0x10e3c

%include "shared/aztec/aztec_ttyio.data.asm"   ; 0x10e54


__zimage_end:
absolute __zimage_end
%include "ds/game/store_word_and_pair.bss.asm"
%include "ds/aztec/aztec_ovloader.bss.asm"
%include "ds/aztec/aztec_sprintf.bss.asm"
%include "shared/aztec/aztec_malloc.bss.asm"
%include "shared/aztec/aztec_Croot.bss.asm"
%include "shared/aztec/aztec_ttyio.bss.asm"
%include "ds/data/globals.asm"
__zbss_9096:
    resb 0x0002
__zbss_end:
    resb 0x2100
__zbss_b198:
    resb 0x4000
__zstack_top:
