; auto-generated
bits 16
%include "include/structs.inc"
%include "include/msg.inc"
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
dseg_001e equ __zdseg_001e - __zdseg_start
dseg_0022 equ __zdseg_0022 - __zdseg_start
dseg_0024 equ __zdseg_0024 - __zdseg_start
psp_env_segment equ 0x002c
realm_text_colors equ __zrealm_text_colors - __zdseg_start
dseg_0038 equ __zdseg_0038 - __zdseg_start
dseg_003c equ __zdseg_003c - __zdseg_start
index_range2_first equ __zindex_range2_first - __zdseg_start
index_range2_last equ __zindex_range2_last - __zdseg_start
dseg_0044 equ __zdseg_0044 - __zdseg_start
value_clamp_ranges equ __zvalue_clamp_ranges - __zdseg_start
psp_cmd_tail_len equ 0x0080
dseg_010c equ __zdseg_010c - __zdseg_start
dseg_010e equ __zdseg_010e - __zdseg_start
file_param_word equ __zfile_param_word - __zdseg_start
dseg_0112 equ __zdseg_0112 - __zdseg_start
dseg_0114 equ __zdseg_0114 - __zdseg_start
dseg_0116 equ __zdseg_0116 - __zdseg_start
party_slot_x equ __zparty_slot_x - __zdseg_start
party_slot_y equ __zparty_slot_y - __zdseg_start
party_slot_glyphs equ __zparty_slot_glyphs - __zdseg_start
dseg_03ae equ __zdseg_03ae - __zdseg_start
dseg_03dc equ __zdseg_03dc - __zdseg_start
cell_overlay_code equ __zcell_overlay_code - __zdseg_start
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
maze_blocks equ __zstr_0bd7 - __zdseg_start + 0x0003
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
dseg_0cdd equ __zdseg_0cdd - __zdseg_start
dseg_0cde equ __zdseg_0cde - __zdseg_start
_ttrd equ __z_ttrd - __zdseg_start
_ttwr equ __z_ttwr - __zdseg_start
_Eol equ __z_Eol - __zdseg_start
aztec_tty_wr_crbuf equ __zaztec_tty_wr_crbuf - __zdseg_start
_Uorg equ __zbss_0cf6 - __zdseg_start
saved_word equ __zbss_0cf6 - __zdseg_start
saved_pair equ __zbss_0cf8 - __zdseg_start
ovname equ __zbss_0cfa - __zdseg_start
buff equ __zbss_0cfc - __zdseg_start
keep equ __zbss_0cfe - __zdseg_start
current equ __zbss_0d00 - __zdseg_start
first equ __zbss_0d02 - __zdseg_start
Argc equ __zbss_0d04 - __zdseg_start
Argv equ __zbss_0d06 - __zdseg_start
aztec_tty_rd_buffer equ __zbss_0d08 - __zdseg_start
aztec_tty_rd_bp equ __zbss_0e0c - __zdseg_start
bss_0e0e equ __zbss_0e0e - __zdseg_start
bss_0e10 equ __zbss_0e10 - __zdseg_start
maze_tables equ __zbss_0e12 - __zdseg_start
maze_data equ __zbss_0e14 - __zdseg_start
bss_0e16 equ __zbss_0e16 - __zdseg_start
bss_0e18 equ __zbss_0e18 - __zdseg_start
bss_0e1a equ __zbss_0e1a - __zdseg_start
bss_0e1c equ __zbss_0e1c - __zdseg_start
bss_0e1e equ __zbss_0e1e - __zdseg_start
bss_0e20 equ __zbss_0e20 - __zdseg_start
data_file_fd equ __zbss_0e22 - __zdseg_start
msg_dbs_fd equ __zbss_0e24 - __zdseg_start
bss_0e26 equ __zbss_0e26 - __zdseg_start
bss_0e28 equ __zbss_0e28 - __zdseg_start
mouse_pointer_shape equ __zbss_0e2a - __zdseg_start
mouse_pointer_shape_seg equ __zbss_0e2c - __zdseg_start
bss_0e2e equ __zbss_0e2e - __zdseg_start
bss_0e30 equ __zbss_0e30 - __zdseg_start
mouse_active equ __zbss_0e32 - __zdseg_start
code_check_value equ __zbss_0e34 - __zdseg_start
character_record_index equ __zbss_0e36 - __zdseg_start
known_spell_names equ __zbss_0e38 - __zdseg_start
bss_0e4c equ __zbss_0e4c - __zdseg_start
code_char_message_index equ __zbss_0fd5 - __zdseg_start
code_table equ __zbss_0fd6 - __zdseg_start
answer_check_word equ __zbss_1008 - __zdseg_start
bss_100a equ __zbss_100a - __zdseg_start
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
bss_5528 equ __zbss_5528 - __zdseg_start
bss_552a equ __zbss_552a - __zdseg_start
record_packed equ __zbss_556c - __zdseg_start
sound_slot_info equ __zbss_5576 - __zdseg_start
bss_5642 equ __zbss_5642 - __zdseg_start
action_bitmap equ __zbss_5842 - __zdseg_start
bss_590e equ __zbss_590e - __zdseg_start
bss_5910 equ __zbss_5910 - __zdseg_start
data_path_prefixes equ __zbss_5912 - __zdseg_start
disk_drive_name equ __zbss_5926 - __zdseg_start
bss_593a equ __zbss_593a - __zdseg_start
bss_594e equ __zbss_594e - __zdseg_start
screen_store_1_enabled equ __zbss_5962 - __zdseg_start
screen_store_disk_enabled equ __zbss_5963 - __zdseg_start
screen_store_drive equ __zbss_5964 - __zdseg_start
bss_5978 equ __zbss_5978 - __zdseg_start
bss_5979 equ __zbss_5979 - __zdseg_start
bss_597a equ __zbss_597a - __zdseg_start
bss_597c equ __zbss_597c - __zdseg_start
bss_597d equ __zbss_597d - __zdseg_start
bss_597e equ __zbss_597e - __zdseg_start
music_volume equ __zbss_597f - __zdseg_start
bss_5980 equ __zbss_5980 - __zdseg_start
bss_5982 equ __zbss_5982 - __zdseg_start
bss_5984 equ __zbss_5984 - __zdseg_start
video_mode equ __zbss_5985 - __zdseg_start
bss_5986 equ __zbss_5986 - __zdseg_start
install_mode equ __zbss_5987 - __zdseg_start
bss_5988 equ __zbss_5988 - __zdseg_start
bss_5989 equ __zbss_5989 - __zdseg_start
bss_598a equ __zbss_598a - __zdseg_start
bss_598b equ __zbss_598b - __zdseg_start
no_dissolve equ __zbss_598c - __zdseg_start
loaded_sound_id equ __zbss_598e - __zdseg_start
code_characters equ __zbss_5990 - __zdseg_start
code_char_index equ __zbss_59f4 - __zdseg_start
answer_length equ __zbss_59f6 - __zdseg_start
code_check_word equ __zbss_59f8 - __zdseg_start
bss_59fa equ __zbss_59fa - __zdseg_start
space_key_hit equ __zbss_59fc - __zdseg_start
hotspot_rects equ __zbss_59fe - __zdseg_start
hotspot_keys equ __zbss_5afe - __zdseg_start
hotspot_hit equ __zbss_5b3e - __zdseg_start
code_index_1 equ __zbss_5b40 - __zdseg_start
code_index_2 equ __zbss_5b42 - __zdseg_start
code_index_3 equ __zbss_5b44 - __zdseg_start
code_index_4 equ __zbss_5b46 - __zdseg_start
picture_slot_number equ __zbss_5b48 - __zdseg_start
bss_5b55 equ __zbss_5b55 - __zdseg_start
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
glyph_x_table equ __zbss_6e6c - __zdseg_start
glyph_y_table equ __zbss_6eb5 - __zdseg_start
marker_x equ __zbss_7abc - __zdseg_start
bss_7abe equ __zbss_7abe - __zdseg_start
marker_y equ __zbss_7b04 - __zdseg_start
bss_7b05 equ __zbss_7b05 - __zdseg_start
bss_7d3c equ __zbss_7d3c - __zdseg_start
glyph_x_table_b equ __zbss_7ed4 - __zdseg_start
glyph_y_table_b equ __zbss_7f1d - __zdseg_start
loaded_score_num equ __zbss_82b6 - __zdseg_start
answer_word equ __zbss_82b8 - __zdseg_start
party_status_areas equ __zbss_82d0 - __zdseg_start
party_status_frame equ __zbss_82e8 - __zdseg_start
party_status_frame_step equ __zbss_82ea - __zdseg_start
party_status_frame_seen equ __zbss_82ec - __zdseg_start
party_tag equ __zbss_82ee - __zdseg_start
party_status_heading equ __zbss_82f0 - __zdseg_start
party_status_timer equ __zbss_82f2 - __zdseg_start
bss_82f4 equ __zbss_82f4 - __zdseg_start
bss_82f6 equ __zbss_82f6 - __zdseg_start
bss_82f8 equ __zbss_82f8 - __zdseg_start
party_buff_turns equ __zbss_82fa - __zdseg_start
party_buff_charge equ __zbss_82fc - __zdseg_start
bss_82fe equ __zbss_82fe - __zdseg_start
bss_8300 equ __zbss_8300 - __zdseg_start
bss_8302 equ __zbss_8302 - __zdseg_start
bss_8304 equ __zbss_8304 - __zdseg_start
bss_8306 equ __zbss_8306 - __zdseg_start
game_state equ __zbss_830a - __zdseg_start
game_state_arg equ __zbss_830c - __zdseg_start
party_slot_frame equ __zbss_830e - __zdseg_start
bss_831a equ __zbss_831a - __zdseg_start
bss_8320 equ __zbss_8320 - __zdseg_start
action_slot_table equ __zbss_8322 - __zdseg_start
action_slot_mode equ __zbss_8430 - __zdseg_start
cell_slot_ref equ __zbss_843a - __zdseg_start
bss_844c equ __zbss_844c - __zdseg_start
bss_844e equ __zbss_844e - __zdseg_start
bss_8450 equ __zbss_8450 - __zdseg_start
party_entry_mode equ __zbss_8452 - __zdseg_start
row_limit equ __zbss_8454 - __zdseg_start
requested_row_limit equ __zbss_8456 - __zdseg_start
e1_event_flag equ __zbss_8458 - __zdseg_start
party_entry_flag equ __zbss_845a - __zdseg_start
party_screen_done equ __zbss_845c - __zdseg_start
bss_845e equ __zbss_845e - __zdseg_start
dest_alt_arg equ __zbss_8460 - __zdseg_start
bss_8462 equ __zbss_8462 - __zdseg_start
bss_8464 equ __zbss_8464 - __zdseg_start
party_member_count equ __zbss_8466 - __zdseg_start
overlay_list equ __zbss_8468 - __zdseg_start
party_char equ __zbss_8482 - __zdseg_start
party_char_hi equ __zbss_8484 - __zdseg_start
bss_848e equ __zbss_848e - __zdseg_start
party_char_ext equ __zbss_8490 - __zdseg_start
party_member_ext_1 equ __zbss_8492 - __zdseg_start
selected_item_slot equ __zbss_849e - __zdseg_start
selected_item_record equ __zbss_84a0 - __zdseg_start
item_action_reward equ __zbss_84a2 - __zdseg_start
item_action_reward_hi equ __zbss_84a4 - __zdseg_start
slot_bit_states equ __zbss_84a6 - __zdseg_start
slot_records equ __zbss_84e8 - __zdseg_start
bss_8809 equ __zbss_8809 - __zdseg_start
bss_880a equ __zbss_880a - __zdseg_start
bss_8822 equ __zbss_8822 - __zdseg_start
bss_882c equ __zbss_882c - __zdseg_start
bss_8976 equ __zbss_8976 - __zdseg_start
kind_state_table equ __zbss_8979 - __zdseg_start
target_weight equ __zbss_89de - __zdseg_start
bss_89df equ __zbss_89df - __zdseg_start
bss_89e0 equ __zbss_89e0 - __zdseg_start
bss_89e1 equ __zbss_89e1 - __zdseg_start
bss_89e2 equ __zbss_89e2 - __zdseg_start
bss_89e3 equ __zbss_89e3 - __zdseg_start
bss_89e4 equ __zbss_89e4 - __zdseg_start
bss_89e5 equ __zbss_89e5 - __zdseg_start
bss_89e6 equ __zbss_89e6 - __zdseg_start
bss_89e7 equ __zbss_89e7 - __zdseg_start
bss_89e8 equ __zbss_89e8 - __zdseg_start
bss_89ea equ __zbss_89ea - __zdseg_start
bss_89f6 equ __zbss_89f6 - __zdseg_start
bss_8a02 equ __zbss_8a02 - __zdseg_start
bss_8a0e equ __zbss_8a0e - __zdseg_start
bss_8a1a equ __zbss_8a1a - __zdseg_start
bss_8a26 equ __zbss_8a26 - __zdseg_start
bss_8a32 equ __zbss_8a32 - __zdseg_start
bss_8a3e equ __zbss_8a3e - __zdseg_start
bss_8a4a equ __zbss_8a4a - __zdseg_start
bss_8a56 equ __zbss_8a56 - __zdseg_start
bss_8a6e equ __zbss_8a6e - __zdseg_start
bss_8aac equ __zbss_8aac - __zdseg_start
bss_8aee equ __zbss_8aee - __zdseg_start
member_roster_index equ __zbss_8af0 - __zdseg_start
bss_8afe equ __zbss_8afe - __zdseg_start
bss_8b7e equ __zbss_8b7e - __zdseg_start
bss_8bfe equ __zbss_8bfe - __zdseg_start
bss_8c7e equ __zbss_8c7e - __zdseg_start
adjacent_object_type equ __zbss_8cfe - __zdseg_start
bss_8d06 equ __zbss_8d06 - __zdseg_start
bss_8d08 equ __zbss_8d08 - __zdseg_start
saved_area_b equ __zbss_8d0a - __zdseg_start
saved_area_b_hi equ __zbss_8d0c - __zdseg_start
saved_area_a equ __zbss_8d0e - __zdseg_start
saved_area_a_hi equ __zbss_8d10 - __zdseg_start
party_region equ __zbss_8d12 - __zdseg_start
flag_bitset equ __zbss_8e64 - __zdseg_start
bss_8f14 equ __zbss_8f14 - __zdseg_start
bss_8f16 equ __zbss_8f16 - __zdseg_start
bss_8f18 equ __zbss_8f18 - __zdseg_start
bss_8f1a equ __zbss_8f1a - __zdseg_start
game_time equ __zbss_8f1c - __zdseg_start
game_time_hi equ __zbss_8f1e - __zdseg_start
marker_mode equ __zbss_8f20 - __zdseg_start
bss_8f22 equ __zbss_8f22 - __zdseg_start
found_object_owner equ __zbss_8f24 - __zdseg_start
bss_8f26 equ __zbss_8f26 - __zdseg_start
saved_level equ __zbss_8f28 - __zdseg_start
saved_map_piece equ __zbss_8f2a - __zdseg_start
saved_cell_y equ __zbss_8f2c - __zdseg_start
saved_cell_x equ __zbss_8f2e - __zdseg_start
bss_8f30 equ __zbss_8f30 - __zdseg_start
bss_8f32 equ __zbss_8f32 - __zdseg_start
bss_8f34 equ __zbss_8f34 - __zdseg_start
bss_8f36 equ __zbss_8f36 - __zdseg_start
bss_8f38 equ __zbss_8f38 - __zdseg_start
bss_8f3a equ __zbss_8f3a - __zdseg_start
bss_8f3c equ __zbss_8f3c - __zdseg_start
party_map_piece equ __zbss_8f3e - __zdseg_start
party_cell_y equ __zbss_8f40 - __zdseg_start
party_cell_x equ __zbss_8f42 - __zdseg_start
party_world_y equ __zbss_8f44 - __zdseg_start
party_world_x equ __zbss_8f46 - __zdseg_start
bss_8f48 equ __zbss_8f48 - __zdseg_start
startup_check_stage equ __zbss_904c - __zdseg_start
spell_dialog_result equ __zbss_904e - __zdseg_start
spell_dialog_button equ __zbss_9050 - __zdseg_start
bss_9052 equ __zbss_9052 - __zdseg_start
bss_9056 equ __zbss_9056 - __zdseg_start
bss_9058 equ __zbss_9058 - __zdseg_start
message_delay equ __zbss_905a - __zdseg_start
bss_905c equ __zbss_905c - __zdseg_start
party_return_state equ __zbss_905e - __zdseg_start
screen_cache equ __zbss_9060 - __zdseg_start
screen_cache_0_seg equ __zbss_9062 - __zdseg_start
screen_cache_1_off equ __zbss_9064 - __zdseg_start
screen_cache_1_seg equ __zbss_9066 - __zdseg_start
saved_screen_slot equ __zbss_9068 - __zdseg_start
saved_screen_pending equ __zbss_906a - __zdseg_start
screen_cache_index equ __zbss_906c - __zdseg_start
pc_file_record_size equ __zbss_906e - __zdseg_start
bss_9070 equ __zbss_9070 - __zdseg_start
pc_file_record_base equ __zbss_9072 - __zdseg_start
pc_file_record_base_hi equ __zbss_9074 - __zdseg_start
bss_9088 equ __zbss_9088 - __zdseg_start
party_redraw_last_tick equ __zbss_908a - __zdseg_start
party_redraw_last_tick_hi equ __zbss_908c - __zdseg_start
bss_908e equ __zbss_908e - __zdseg_start
bss_9090 equ __zbss_9090 - __zdseg_start
bss_9092 equ __zbss_9092 - __zdseg_start
bss_9094 equ __zbss_9094 - __zdseg_start
_TTrem equ __zbss_9096 - __zdseg_start
bss_b198 equ __zbss_b198 - __zdseg_start
__zbss_size equ __zbss_end - __zimage_end
__zdseg_end equ (__zimage_end - __zdseg_start) + __zbss_size

%include "ds/game/app_malloc.asm"          ; 0x0200

%include "ds/game/app_memmove.asm"         ; 0x0213

%include "ds/game/app_free.asm"            ; 0x022f

%include "ds/game/release_resources.asm"   ; 0x0242

%include "ds/game/release_and_exit.asm"    ; 0x03b8

%include "ds/game/set_code_check_value.asm" ; 0x03cd

%include "ds/game/ds_app_string_TVHI.asm"  ; 0x03da

%include "ds/game/format_long_decimal.asm" ; 0x0422

%include "ds/game/format_int_decimal.asm"  ; 0x04c4

%include "ds/game/draw_padded_number.asm"  ; 0x04da

%include "ds/game/draw_number_field.asm"   ; 0x052e

%include "ds/game/str_subst_char.asm"      ; 0x0547

%include "ds/game/ds_app_string_MPHP.asm"  ; 0x05d0

%include "ds/game/find_message_record.asm" ; 0x065d

%include "ds/game/load_message_block.asm"  ; 0x06c6

%include "ds/game/load_message_string.asm" ; 0x0782

%include "ds/game/draw_message_string.asm" ; 0x0860

%include "ds/game/data_record_io.asm"      ; 0x0883

%include "ds/game/wait_for_hotspot_timeout.asm" ; 0x09a5

%include "ds/game/random_below.asm"        ; 0x09f0

%include "ds/game/clamp_between.asm"       ; 0x0a09

%include "ds/game/play_sound_effect.asm"   ; 0x0a27

%include "ds/game/ds_app_RMGT.asm"         ; 0x0ad7

%include "ds/game/set_mouse_pointer_shape.asm" ; 0x0af6

%include "ds/game/poll_hotspots.asm"       ; 0x0b54

%include "ds/game/ds_app_string_KVNI.asm"  ; 0x0c0b

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

%include "ds/game/cell_power.asm"          ; 0x1741

%include "ds/game/sum_page_cell_values.asm" ; 0x17d6

%include "ds/game/reset_page_record.asm"   ; 0x184f

%include "ds/game/compact_grid_page.asm"   ; 0x1a23

%include "ds/game/clear_cell_key.asm"      ; 0x1c2f

%include "ds/game/ds_app_UTUH.asm"         ; 0x1c6e

%include "ds/game/pick_code_char.asm"      ; 0x1cb1

%include "ds/game/member_is_active.asm"    ; 0x1ccc

%include "ds/game/draw_power_bar.asm"      ; 0x1cf8

%include "ds/game/draw_party_member_panel.asm" ; 0x1d81

%include "ds/game/pick_party_member.asm"   ; 0x20f8

%include "ds/game/add_random_steps.asm"    ; 0x2305

%include "ds/game/store_word_and_pair.asm" ; 0x2331

%include "ds/game/copy_through_char.asm"   ; 0x2359

%include "ds/game/data_file_path.asm"      ; 0x23a8

%include "ds/game/prompt_disk_swap.asm"    ; 0x23ef

%include "ds/game/ensure_game_disk.asm"    ; 0x27e9

%include "ds/game/load_monster_picture.asm" ; 0x2863

%include "ds/game/wait_and_free_sound.asm" ; 0x290d

%include "ds/game/load_sound_file.asm"     ; 0x2923

%include "ds/game/ensure_sound_loaded.asm" ; 0x29f1

%include "ds/game/load_score_files.asm"    ; 0x2a2e

%include "ds/game/free_loaded_score.asm"   ; 0x2b4e

%include "ds/game/fade_out_music.asm"      ; 0x2b62

%include "ds/game/ds_app_UKGP.asm"         ; 0x2bab

%include "ds/game/score_music_enabled.asm" ; 0x2bed

%include "ds/game/verify_answer_word.asm"  ; 0x2c11

%include "ds/game/draw_party_status_glyphs.asm" ; 0x2c69

%include "ds/game/main.asm"                ; 0x2dd5

%include "ds/data/cseg_2f35.asm"           ; 0x2f35

%include "ds/data/saved_video_mode.asm"    ; 0x2f36

%include "ds/data/saved_equip_byte.asm"    ; 0x2f37

%include "ds/data/video_is_ega.asm"        ; 0x2f38

%include "ds/data/video_is_vga.asm"        ; 0x2f39

%include "ds/data/video_is_cga.asm"        ; 0x2f3a

%include "ds/data/video_is_herc.asm"       ; 0x2f3b

%include "ds/data/driver_block_table.asm"  ; 0x2f40

%include "ds/data/font_header_seg.asm"     ; 0x2f4a

%include "ds/data/misc_table_seg.asm"      ; 0x2f4e

%include "ds/data/cseg_2f52.asm"           ; 0x2f52

%include "ds/data/ems_allocated_paragraphs.asm" ; 0x2f60

%include "ds/data/ems_handle.asm"          ; 0x2f62

%include "ds/data/ems_page_frame_segment.asm" ; 0x2f64

%include "ds/data/mouse_button_count.asm"  ; 0x2f66

%include "ds/data/cseg_2f67.asm"           ; 0x2f67

%include "ds/data/drv_slot_5.asm"          ; 0x2f7b

%include "ds/data/play_drv_wait.asm"       ; 0x2f83

%include "ds/data/cseg_2f87.asm"           ; 0x2f87

%include "ds/data/drv_slot_draw_text.asm"  ; 0x2f9f

%include "ds/data/cseg_2fa3.asm"           ; 0x2fa3

%include "ds/data/drv_slot_draw_maze_piece.asm" ; 0x2fab

%include "ds/data/drv_slot_10.asm"         ; 0x2faf

%include "ds/data/drv_slot_draw_glyph.asm" ; 0x2fb3

%include "ds/data/cseg_2fb7.asm"           ; 0x2fb7

%include "ds/data/drv_slot_set_text_pos.asm" ; 0x2fbb

%include "ds/data/cseg_2fbf.asm"           ; 0x2fbf

%include "ds/data/drv_slot_fill_screen_buffer.asm" ; 0x2fc3

%include "ds/data/drv_slot_show_area.asm"  ; 0x2fc7

%include "ds/data/cseg_2fcb.asm"           ; 0x2fcb

%include "ds/data/drv_slot_fill_area.asm"  ; 0x2fcf

%include "ds/data/cseg_2fd3.asm"           ; 0x2fd3

%include "ds/data/drv_slot_dissolve_area.asm" ; 0x2ff3

%include "ds/data/cseg_2ff7.asm"           ; 0x2ff7

%include "ds/data/drv_slot_fade_in.asm"    ; 0x2fff

%include "ds/data/drv_slot_fade_out.asm"   ; 0x3003

%include "ds/data/cseg_3007.asm"           ; 0x3007

%include "ds/data/drv_slot_cache_area.asm" ; 0x3023

%include "ds/data/cseg_3027.asm"           ; 0x3027

%include "ds/data/drv_slot_cache_maze.asm" ; 0x302f

%include "ds/data/drv_slot_cache_screen_to_storage.asm" ; 0x3033

%include "ds/data/cseg_3037.asm"           ; 0x3037

%include "ds/data/drv_slot_wait_sound.asm" ; 0x3043

%include "ds/data/drv_slot_stop_sound.asm" ; 0x3047

%include "ds/data/cseg_304b.asm"           ; 0x304b

%include "ds/data/drv_slot_stop_music.asm" ; 0x305b

%include "ds/data/cseg_305f.asm"           ; 0x305f

%include "ds/library/init_system_hardware.asm" ; 0x3067

%include "ds/library/restore_video_and_release_memory.asm" ; 0x30a3

%include "ds/library/restore_saved_video_state.asm" ; 0x30c3

%include "ds/data/random_seed_a.asm"       ; 0x30dc

%include "ds/data/random_seed_b.asm"       ; 0x30de

%include "ds/data/random_seed_c.asm"       ; 0x30e0

%include "ds/library/seed_random_from_timer.asm" ; 0x30e2

%include "ds/library/detect_video_adapter.asm" ; 0x30f7

%include "ds/data/ega_palette.asm"         ; 0x34f6

%include "ds/data/vga_drv_name.asm"        ; 0x3507

%include "ds/data/ega_drv_name.asm"        ; 0x350f

%include "ds/data/drv_file_handle.asm"     ; 0x3532

%include "ds/library/load_video_driver.asm" ; 0x3534

%include "ds/data/cseg_35ec.asm"           ; 0x35ec

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

%include "ds/library/call_set_text_pos.asm" ; 0x3a50

%include "ds/library/call_get_text_pos.asm" ; 0x3a5d

%include "ds/library/call_set_text_color.asm" ; 0x3a6a

%include "ds/library/draw_font_glyph.asm"  ; 0x3a77

%include "ds/library/draw_text_glyphs.asm" ; 0x3a95

%include "ds/library/measure_text_width.asm" ; 0x3aca

%include "ds/library/call_show_area.asm"   ; 0x3b21

%include "ds/library/call_fill_screen_buffer.asm" ; 0x3b2e

%include "ds/library/call_put_pixel.asm"   ; 0x3b3b

%include "ds/library/call_fill_area.asm"   ; 0x3b48

%include "ds/library/call_invert_area.asm" ; 0x3b55

%include "ds/library/call_get_free_space.asm" ; 0x3b62

%include "ds/library/call_save_area.asm"   ; 0x3b6f

%include "ds/library/call_cache_area.asm"  ; 0x3b7c

%include "ds/library/call_restore_screen.asm" ; 0x3b89

%include "ds/library/call_restore_area.asm" ; 0x3b96

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

%include "ds/library/call_free_sound.asm"  ; 0x4134

%include "ds/library/call_load_sound.asm"  ; 0x4141

%include "ds/library/call_play_sound.asm"  ; 0x414e

%include "ds/library/call_wait_sound.asm"  ; 0x415b

%include "ds/library/call_stop_sound.asm"  ; 0x4168

%include "ds/library/call_packed_slot_5.asm" ; 0x4175

%include "ds/library/call_load_score.asm"  ; 0x41a3

%include "ds/library/call_play_score.asm"  ; 0x41b0

%include "ds/library/call_free_score.asm"  ; 0x41bd

%include "ds/library/call_is_music_playing.asm" ; 0x41ca

%include "ds/library/call_stop_music.asm"  ; 0x41d7

%include "ds/library/call_set_music_tempo_volume.asm" ; 0x41e4

%include "ds/library/call_load_picture.asm" ; 0x41f1

%include "ds/library/call_free_picture.asm" ; 0x41fe

%include "ds/library/call_free_maze.asm"   ; 0x420b

%include "ds/library/call_draw_text.asm"   ; 0x4218

%include "ds/library/call_load_screen.asm" ; 0x4225

%include "ds/library/call_free_screen.asm" ; 0x4232

%include "ds/library/call_save_screen.asm" ; 0x423f

%include "ds/library/call_dissolve_area.asm" ; 0x424c

%include "ds/library/call_load_maze.asm"   ; 0x4259

%include "ds/library/call_draw_maze_piece.asm" ; 0x4266

%include "ds/library/call_mouse_init.asm"  ; 0x4273

%include "ds/library/call_mouse_off.asm"   ; 0x4280

%include "ds/library/call_mouse_hit_test.asm" ; 0x428d

%include "ds/library/call_get_mouse.asm"   ; 0x429a

%include "ds/library/call_set_mouse_pointer.asm" ; 0x42a7

%include "ds/library/mouse_set_pos.asm"    ; 0x42b4

%include "ds/library/call_set_text_opaque.asm" ; 0x42dd

%include "ds/library/call_set_rgb.asm"     ; 0x42ea

%include "ds/library/call_get_rgb.asm"     ; 0x42f7

%include "ds/library/call_fade_in.asm"     ; 0x4304

%include "ds/library/call_fade_out.asm"    ; 0x4311

%include "ds/library/call_reset_rgb.asm"   ; 0x431e

%include "ds/library/call_mouse_glide_to.asm" ; 0x432b

%include "ds/library/call_mouse_glide_back.asm" ; 0x4338

%include "ds/library/call_get_palette.asm" ; 0x4345

%include "ds/library/call_set_palette.asm" ; 0x4352

%include "ds/library/call_cache_maze.asm"  ; 0x435f

%include "ds/library/call_cache_screen_to_storage.asm" ; 0x436c

%include "ds/aztec/aztec_ovloader.asm"     ; 0x4379

%include "ds/aztec/aztec_bdos.asm"         ; 0x4497

%include "ds/aztec/aztec_impl_csread.asm"  ; 0x44b4

%include "ds/aztec/aztec_sprintf.asm"      ; 0x44d4

%include "ds/aztec/aztec_movblock.asm"     ; 0x4517

%include "ds/aztec/aztec_setmem.asm"       ; 0x454d

ds_loc_KRNT equ aztec_strcat.loc1
ds_loc_JPNO equ aztec_strcat.loc2
ds_loc_OSMM equ aztec_strcat.loc3
%include "shared/aztec/aztec_strcat.asm"       ; 0x4574

%include "shared/aztec/aztec_strcpy.asm"       ; 0x45ab

%include "ds/aztec/aztec_lmalloc.asm"      ; 0x45d7

%include "ds/aztec/aztec_lfree.asm"        ; 0x460d

%include "ds/aztec/aztec_lrealloc.asm"     ; 0x4625

%include "ds/data/aztec_csav_begin.asm"    ; 0x4650

%include "ds/aztec/aztec_csav.asm"         ; 0x4652

ds_loc_LPSH equ aztec_realloc.loc1
%include "shared/aztec/aztec_realloc.asm"      ; 0x467b

%include "shared/data/aztec_format_conversions.asm" ; 0x480d

%include "ds/data/cseg_480e.asm"           ; 0x480e

aztec_format_conv_routines.jumptable_case1  equ jumptable_4822_case_0
aztec_format_conv_routines.jumptable_case2  equ jumptable_4822_case_1
aztec_format_conv_routines.jumptable_case3  equ jumptable_4822_case_2
aztec_format_conv_routines.jumptable_case4  equ jumptable_4822_case_3
aztec_format_conv_routines.jumptable_case5  equ jumptable_4822_case_5
aztec_format_conv_routines.jumptable_case6  equ jumptable_4822_case_6
aztec_format_conv_routines.jumptable_case7  equ jumptable_4822_case_7
aztec_format_conv_routines.jumptable_case8  equ jumptable_4822_case_8
aztec_format_conv_routines.jumptable_case9  equ jumptable_4822_case_9
aztec_format_conv_routines.jumptable_case10 equ jumptable_4822_case_11
aztec_format_conv_routines.jumptable_case11 equ jumptable_4822_case_12
aztec_format_conv_routines.jumptable_case12 equ jumptable_4822_case_13
aztec_format_conv_routines.jumptable_case13 equ jumptable_4822_case_14
aztec_format_conv_routines.jumptable_case14 equ jumptable_4822_case_15
aztec_format_conv_routines.jumptable_case15 equ jumptable_4822_case_16
aztec_format_conv_routines.jumptable_case16 equ jumptable_4822_case_20
%include "shared/data/aztec_format_conv_routines.asm" ; 0x4822

%include "shared/data/aztec_format_digits.asm" ; 0x484c

%include "shared/data/aztec_format_nofltmsg.asm" ; 0x485c

jumptable_4822_case_20 equ aztec_format.jumptable_case1
ds_loc_NJTI            equ aztec_format.loc1
aztec_format.cseg1     equ cseg_480e
jumptable_4822_case_0  equ aztec_format.jumptable_case2
jumptable_4822_case_1  equ aztec_format.jumptable_case3
jumptable_4822_case_2  equ aztec_format.jumptable_case4
jumptable_4822_case_3  equ aztec_format.jumptable_case5
jumptable_4822_case_5  equ aztec_format.jumptable_case6
jumptable_4822_case_7  equ aztec_format.jumptable_case7
jumptable_4822_case_6  equ aztec_format.jumptable_case8
jumptable_4822_case_8  equ aztec_format.jumptable_case9
jumptable_4822_case_9  equ aztec_format.jumptable_case10
ds_loc_MRST            equ aztec_format.loc2
jumptable_4822_case_16 equ aztec_format.jumptable_case11
jumptable_4822_case_15 equ aztec_format.jumptable_case12
jumptable_4822_case_11 equ aztec_format.jumptable_case13
jumptable_4822_case_12 equ aztec_format.jumptable_case14
jumptable_4822_case_13 equ aztec_format.jumptable_case15
jumptable_4822_case_14 equ aztec_format.jumptable_case16
ds_loc_PLIR            equ aztec_format.loc3
%include "shared/aztec/aztec_format.asm"       ; 0x4867

%include "shared/aztec/aztec_format_get_pointer.asm" ; 0x4aed

%include "shared/aztec/aztec_format_do_width.asm" ; 0x4b07

%include "shared/aztec/aztec_creat.asm"        ; 0x4b39

ds_loc_QRUP equ aztec_ldv.loc1
ds_loc_OGHL equ aztec_ldv.loc2
%include "shared/aztec/aztec_ldv.asm"          ; 0x4be6

%include "shared/aztec/aztec_strlen.asm"       ; 0x4cd7

%include "shared/aztec/aztec_impl_sys.asm"     ; 0x4cf4

%include "shared/data/aztec_begin_exitad.asm"  ; 0x4d36

%include "shared/data/aztec_begin_exitcs.asm"  ; 0x4d38

ds_loc_GIPI equ aztec_begin.loc1
%include "shared/aztec/aztec_begin.asm"        ; 0x4d3a

aztec_noper.dseg1 equ dseg_0cdd
aztec_noper.dseg2 equ dseg_0cde
%include "shared/aztec/aztec_noper.asm"        ; 0x4ea3

%include "shared/aztec/aztec_fltinit.asm"      ; 0x4f85

%include "ds/aztec/aztec_impl_stkover.asm" ; 0x4f87

ds_loc_IGMS equ aztec_impl_read.loc1
ds_loc_NOQM equ aztec_impl_read.loc2
ds_loc_SROM equ aztec_impl_read.loc3
ds_loc_USUN equ aztec_impl_read.loc4
%include "shared/aztec/aztec_impl_read.asm"    ; 0x4fa2

%include "shared/aztec/aztec_impl_tty_rd.asm"  ; 0x505c

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
%include "ds/data/dseg_0000.asm"           ; 0x10160

%include "ds/data/tick_counter_ptr.asm"    ; 0x10162

%include "ds/data/dseg_001e.asm"           ; 0x1017e

%include "ds/data/realm_text_colors.asm"   ; 0x10190

%include "ds/data/dseg_0038.asm"           ; 0x10198

%include "ds/data/index_range2_first.asm"  ; 0x101a0

%include "ds/data/index_range2_last.asm"   ; 0x101a2

%include "ds/data/dseg_0044.asm"           ; 0x101a4

%include "ds/data/value_clamp_ranges.asm"  ; 0x101a8

%include "ds/data/dseg_010c.asm"           ; 0x1026c

%include "ds/data/file_param_word.asm"     ; 0x10270

%include "ds/data/dseg_0112.asm"           ; 0x10272

%include "ds/data/party_slot_x.asm"        ; 0x10304

%include "ds/data/party_slot_y.asm"        ; 0x1031c

%include "ds/data/party_slot_glyphs.asm"   ; 0x10334

%include "ds/data/dseg_03ae.asm"           ; 0x1050e

%include "ds/data/cell_overlay_code.asm"   ; 0x10716

%include "ds/data/spell_table.asm"         ; 0x10780

%include "ds/data/str_insert_savegame_disk.asm" ; 0x10cd4

%include "ds/data/str_insert_disk_n.asm"   ; 0x10ce9

%include "ds/data/str_into_drive.asm"      ; 0x10cf9

%include "ds/data/str_continue.asm"        ; 0x10d06

%include "ds/data/str_disk_hdr.asm"        ; 0x10d0f

%include "ds/data/str_msg_dbs.asm"         ; 0x10d18

%include "ds/data/str_scenario_dbs.asm"    ; 0x10d20

%include "ds/data/monster_pic_name.asm"    ; 0x10d2d

%include "ds/data/str_0bd7.asm"            ; 0x10d37

%include "ds/data/score_ext_csf.asm"       ; 0x10d4b

%include "ds/data/score_ext_pbl.asm"       ; 0x10d50

%include "ds/data/score_ext_pba.asm"       ; 0x10d55

%include "ds/data/dseg_0bfa.asm"           ; 0x10d5a

%include "shared/data/endmarker.asm"           ; 0x10dcc

aztec_MEMRY.bss1 equ bss_b198
%include "shared/data/aztec_MEMRY.asm"         ; 0x10dd0

%include "shared/data/errno.asm"               ; 0x10dd2

%include "shared/data/dsval.asm"               ; 0x10dd4

%include "shared/data/csval.asm"               ; 0x10dd6

%include "shared/data/mbot.asm"                ; 0x10dd8

%include "shared/data/sbot.asm"                ; 0x10dda

%include "shared/data/mtop.asm"                ; 0x10ddc

%include "shared/data/lowwater.asm"            ; 0x10dde

%include "shared/data/PSP.asm"                 ; 0x10de0

%include "shared/data/bad8087.asm"             ; 0x10de2

%include "shared/data/cls_.asm"                ; 0x10dfc

%include "shared/data/aztec_croot_empty_str.asm" ; 0x10dfe

%include "shared/data/aztec_croot_too_many_args.asm" ; 0x10dff

%include "ds/data/dseg_0cae.asm"           ; 0x10e0e

%include "shared/data/STKSIZ.asm"              ; 0x10e34

%include "shared/data/ioflg.asm"               ; 0x10e3c

%include "ds/data/dseg_0cdd.asm"           ; 0x10e3d

%include "shared/data/ttrd.asm"                ; 0x10e50

%include "shared/data/ttwr.asm"                ; 0x10e52

%include "shared/data/Eol.asm"                 ; 0x10e54

%include "shared/data/aztec_tty_wr_crbuf.asm"  ; 0x10e55


__zimage_end:
absolute __zimage_end
__zbss_0cf6:
__zbss_0cf6:
    resb 0x0002
__zbss_0cf8:
    resb 0x0002
__zbss_0cfa:
    resb 0x0002
__zbss_0cfc:
    resb 0x0002
__zbss_0cfe:
    resb 0x0002
__zbss_0d00:
    resb 0x0002
__zbss_0d02:
    resb 0x0002
__zbss_0d04:
    resb 0x0002
__zbss_0d06:
    resb 0x0002
__zbss_0d08:
    resb 0x0104
__zbss_0e0c:
    resb 0x0002
__zbss_0e0e:
    resb 0x0002
__zbss_0e10:
    resb 0x0002
__zbss_0e12:
    resb 0x0002
__zbss_0e14:
    resb 0x0002
__zbss_0e16:
    resb 0x0002
__zbss_0e18:
    resb 0x0002
__zbss_0e1a:
    resb 0x0002
__zbss_0e1c:
    resb 0x0002
__zbss_0e1e:
    resb 0x0002
__zbss_0e20:
    resb 0x0002
__zbss_0e22:
    resb 0x0002
__zbss_0e24:
    resb 0x0002
__zbss_0e26:
    resb 0x0002
__zbss_0e28:
    resb 0x0002
__zbss_0e2a:
    resb 0x0002
__zbss_0e2c:
    resb 0x0002
__zbss_0e2e:
    resb 0x0002
__zbss_0e30:
    resb 0x0002
__zbss_0e32:
    resb 0x0002
__zbss_0e34:
    resb 0x0002
__zbss_0e36:
    resb 0x0002
__zbss_0e38:
    resb 0x0014
__zbss_0e4c:
    resb 0x0189
__zbss_0fd5:
    resb 0x0001
__zbss_0fd6:
    resb 0x0032
__zbss_1008:
    resb 0x0002
__zbss_100a:
    resb 0x0002
__zbss_100c:
    resb 0x1d34
__zbss_2d40:
    resb 0x0018
__zbss_2d58:
    resb 0x10b2
__zbss_3e0a:
    resb 0x0008
__zbss_3e12:
    resb 0x1400
__zbss_5212:
    resb 0x0002
__zbss_5214:
    resb 0x0002
__zbss_5216:
    resb 0x0002
__zbss_5218:
    resb 0x0004
__zbss_521c:
    resb 0x0028
__zbss_5244:
    resb 0x0020
__zbss_5264:
    resb 0x0060
__zbss_52c4:
    resb 0x0100
__zbss_53c4:
    resb 0x0100
__zbss_54c4:
    resb 0x0060
__zbss_5524:
    resb 0x0004
__zbss_5528:
    resb 0x0002
__zbss_552a:
    resb 0x0042
__zbss_556c:
    resb 0x000a
__zbss_5576:
    resb 0x00cc
__zbss_5642:
    resb 0x0200
__zbss_5842:
    resb 0x00cc
__zbss_590e:
    resb 0x0002
__zbss_5910:
    resb 0x0002
__zbss_5912:
    resb 0x0014
__zbss_5926:
    resb 0x0014
__zbss_593a:
    resb 0x0014
__zbss_594e:
    resb 0x0014
__zbss_5962:
    resb 0x0001
__zbss_5963:
    resb 0x0001
__zbss_5964:
    resb 0x0014
__zbss_5978:
    resb 0x0001
__zbss_5979:
    resb 0x0001
__zbss_597a:
    resb 0x0002
__zbss_597c:
    resb 0x0001
__zbss_597d:
    resb 0x0001
__zbss_597e:
    resb 0x0001
__zbss_597f:
    resb 0x0001
__zbss_5980:
    resb 0x0002
__zbss_5982:
    resb 0x0002
__zbss_5984:
    resb 0x0001
__zbss_5985:
    resb 0x0001
__zbss_5986:
    resb 0x0001
__zbss_5987:
    resb 0x0001
__zbss_5988:
    resb 0x0001
__zbss_5989:
    resb 0x0001
__zbss_598a:
    resb 0x0001
__zbss_598b:
    resb 0x0001
__zbss_598c:
    resb 0x0002
__zbss_598e:
    resb 0x0002
__zbss_5990:
    resb 0x0064
__zbss_59f4:
    resb 0x0002
__zbss_59f6:
    resb 0x0002
__zbss_59f8:
    resb 0x0002
__zbss_59fa:
    resb 0x0002
__zbss_59fc:
    resb 0x0002
__zbss_59fe:
    resb 0x0100
__zbss_5afe:
    resb 0x0040
__zbss_5b3e:
    resb 0x0002
__zbss_5b40:
    resb 0x0002
__zbss_5b42:
    resb 0x0002
__zbss_5b44:
    resb 0x0002
__zbss_5b46:
    resb 0x0002
__zbss_5b48:
    resb 0x000d
__zbss_5b55:
    resb 0x0005
__zbss_5b5a:
    resb 0x0012
__zbss_5b6c:
    resb 0x0002
__zbss_5b6e:
    resb 0x0002
__zbss_5b70:
    resb 0x0002
__zbss_5b72:
    resb 0x000a
__zbss_5b7c:
    resb 0x0064
__zbss_5be0:
    resb 0x0014
__zbss_5bf4:
    resb 0x0db0
__zbss_69a4:
    resb 0x0018
__zbss_69bc:
    resb 0x000c
__zbss_69c8:
    resb 0x0002
__zbss_69ca:
    resb 0x0050
__zbss_6a1a:
    resb 0x0452
__zbss_6e6c:
    resb 0x0049
__zbss_6eb5:
    resb 0x0c07
__zbss_7abc:
    resb 0x0002
__zbss_7abe:
    resb 0x0046
__zbss_7b04:
    resb 0x0001
__zbss_7b05:
    resb 0x0237
__zbss_7d3c:
    resb 0x0198
__zbss_7ed4:
    resb 0x0049
__zbss_7f1d:
    resb 0x0399
__zbss_82b6:
    resb 0x0002
__zbss_82b8:
    resb 0x0018
__zbss_82d0:
    resb 0x0018
__zbss_82e8:
    resb 0x0002
__zbss_82ea:
    resb 0x0002
__zbss_82ec:
    resb 0x0002
__zbss_82ee:
    resb 0x0002
__zbss_82f0:
    resb 0x0002
__zbss_82f2:
    resb 0x0002
__zbss_82f4:
    resb 0x0002
__zbss_82f6:
    resb 0x0002
__zbss_82f8:
    resb 0x0002
__zbss_82fa:
    resb 0x0002
__zbss_82fc:
    resb 0x0002
__zbss_82fe:
    resb 0x0002
__zbss_8300:
    resb 0x0002
__zbss_8302:
    resb 0x0002
__zbss_8304:
    resb 0x0002
__zbss_8306:
    resb 0x0004
__zbss_830a:
    resb 0x0002
__zbss_830c:
    resb 0x0002
__zbss_830e:
    resb 0x000c
__zbss_831a:
    resb 0x0006
__zbss_8320:
    resb 0x0002
__zbss_8322:
    resb 0x010e
__zbss_8430:
    resb 0x000a
__zbss_843a:
    resb 0x0012
__zbss_844c:
    resb 0x0002
__zbss_844e:
    resb 0x0002
__zbss_8450:
    resb 0x0002
__zbss_8452:
    resb 0x0002
__zbss_8454:
    resb 0x0002
__zbss_8456:
    resb 0x0002
__zbss_8458:
    resb 0x0002
__zbss_845a:
    resb 0x0002
__zbss_845c:
    resb 0x0002
__zbss_845e:
    resb 0x0002
__zbss_8460:
    resb 0x0002
__zbss_8462:
    resb 0x0002
__zbss_8464:
    resb 0x0002
__zbss_8466:
    resb 0x0002
__zbss_8468:
    resb 0x001a
__zbss_8482:
    resb 0x0002
__zbss_8484:
    resb 0x000a
__zbss_848e:
    resb 0x0002
__zbss_8490:
    resb 0x0002
__zbss_8492:
    resb 0x000c
__zbss_849e:
    resb 0x0002
__zbss_84a0:
    resb 0x0002
__zbss_84a2:
    resb 0x0002
__zbss_84a4:
    resb 0x0002
__zbss_84a6:
    resb 0x0042
__zbss_84e8:
    resb 0x0321
__zbss_8809:
    resb 0x0001
__zbss_880a:
    resb 0x0018
__zbss_8822:
    resb 0x000a
__zbss_882c:
    resb 0x014a
__zbss_8976:
    resb 0x0003
__zbss_8979:
    resb 0x0065
__zbss_89de:
    resb 0x0001
__zbss_89df:
    resb 0x0001
__zbss_89e0:
    resb 0x0001
__zbss_89e1:
    resb 0x0001
__zbss_89e2:
    resb 0x0001
__zbss_89e3:
    resb 0x0001
__zbss_89e4:
    resb 0x0001
__zbss_89e5:
    resb 0x0001
__zbss_89e6:
    resb 0x0001
__zbss_89e7:
    resb 0x0001
__zbss_89e8:
    resb 0x0002
__zbss_89ea:
    resb 0x000c
__zbss_89f6:
    resb 0x000c
__zbss_8a02:
    resb 0x000c
__zbss_8a0e:
    resb 0x000c
__zbss_8a1a:
    resb 0x000c
__zbss_8a26:
    resb 0x000c
__zbss_8a32:
    resb 0x000c
__zbss_8a3e:
    resb 0x000c
__zbss_8a4a:
    resb 0x000c
__zbss_8a56:
    resb 0x0018
__zbss_8a6e:
    resb 0x003e
__zbss_8aac:
    resb 0x0042
__zbss_8aee:
    resb 0x0002
__zbss_8af0:
    resb 0x000e
__zbss_8afe:
    resb 0x0080
__zbss_8b7e:
    resb 0x0080
__zbss_8bfe:
    resb 0x0080
__zbss_8c7e:
    resb 0x0080
__zbss_8cfe:
    resb 0x0008
__zbss_8d06:
    resb 0x0002
__zbss_8d08:
    resb 0x0002
__zbss_8d0a:
    resb 0x0002
__zbss_8d0c:
    resb 0x0002
__zbss_8d0e:
    resb 0x0002
__zbss_8d10:
    resb 0x0002
__zbss_8d12:
    resb 0x0152
__zbss_8e64:
    resb 0x00b0
__zbss_8f14:
    resb 0x0002
__zbss_8f16:
    resb 0x0002
__zbss_8f18:
    resb 0x0002
__zbss_8f1a:
    resb 0x0002
__zbss_8f1c:
    resb 0x0002
__zbss_8f1e:
    resb 0x0002
__zbss_8f20:
    resb 0x0002
__zbss_8f22:
    resb 0x0002
__zbss_8f24:
    resb 0x0002
__zbss_8f26:
    resb 0x0002
__zbss_8f28:
    resb 0x0002
__zbss_8f2a:
    resb 0x0002
__zbss_8f2c:
    resb 0x0002
__zbss_8f2e:
    resb 0x0002
__zbss_8f30:
    resb 0x0002
__zbss_8f32:
    resb 0x0002
__zbss_8f34:
    resb 0x0002
__zbss_8f36:
    resb 0x0002
__zbss_8f38:
    resb 0x0002
__zbss_8f3a:
    resb 0x0002
__zbss_8f3c:
    resb 0x0002
__zbss_8f3e:
    resb 0x0002
__zbss_8f40:
    resb 0x0002
__zbss_8f42:
    resb 0x0002
__zbss_8f44:
    resb 0x0002
__zbss_8f46:
    resb 0x0002
__zbss_8f48:
    resb 0x0104
__zbss_904c:
    resb 0x0002
__zbss_904e:
    resb 0x0002
__zbss_9050:
    resb 0x0002
__zbss_9052:
    resb 0x0004
__zbss_9056:
    resb 0x0002
__zbss_9058:
    resb 0x0002
__zbss_905a:
    resb 0x0002
__zbss_905c:
    resb 0x0002
__zbss_905e:
    resb 0x0002
__zbss_9060:
    resb 0x0002
__zbss_9062:
    resb 0x0002
__zbss_9064:
    resb 0x0002
__zbss_9066:
    resb 0x0002
__zbss_9068:
    resb 0x0002
__zbss_906a:
    resb 0x0002
__zbss_906c:
    resb 0x0002
__zbss_906e:
    resb 0x0002
__zbss_9070:
    resb 0x0002
__zbss_9072:
    resb 0x0002
__zbss_9074:
    resb 0x0014
__zbss_9088:
    resb 0x0002
__zbss_908a:
    resb 0x0002
__zbss_908c:
    resb 0x0002
__zbss_908e:
    resb 0x0002
__zbss_9090:
    resb 0x0002
__zbss_9092:
    resb 0x0002
__zbss_9094:
    resb 0x0002
__zbss_9096:
    resb 0x0002
__zbss_end:
    resb 0x2100
__zbss_b198:
    resb 0x4000
__zstack_top:
