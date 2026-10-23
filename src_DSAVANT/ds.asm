; auto-generated
bits 16
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
    dw __zinsn_4d3a + 0x1 - IMAGE_BASE, 0x0000 ; 0x4b3b ; relocation: segment word DOS patches
    times 476 db 0
%endif

dseg_001e equ __zdseg_001e - __zdseg_start
dseg_0022 equ __zdseg_0022 - __zdseg_start
dseg_0024 equ __zdseg_0024 - __zdseg_start
dseg_0030 equ __zdseg_0030 - __zdseg_start
dseg_0038 equ __zdseg_0038 - __zdseg_start
dseg_003c equ __zdseg_003c - __zdseg_start
dseg_0040 equ __zdseg_0040 - __zdseg_start
dseg_0042 equ __zdseg_0042 - __zdseg_start
dseg_0044 equ __zdseg_0044 - __zdseg_start
dseg_010c equ __zdseg_010c - __zdseg_start
dseg_010e equ __zdseg_010e - __zdseg_start
dseg_0112 equ __zdseg_0112 - __zdseg_start
dseg_0114 equ __zdseg_0114 - __zdseg_start
dseg_0116 equ __zdseg_0116 - __zdseg_start
party_slot_x equ __zparty_slot_x - __zdseg_start
party_slot_y equ __zparty_slot_y - __zdseg_start
party_slot_glyphs equ __zparty_slot_glyphs - __zdseg_start
ems_slots equ __zems_slots - __zdseg_start
dseg_03ae equ __zdseg_03ae - __zdseg_start
dseg_03dc equ __zdseg_03dc - __zdseg_start
spell_table equ __zspell_table - __zdseg_start
maze_blocks equ __zstr_0bd7 - __zdseg_start + 0x0003
bss_0e36 equ __zbss_0e36 - __zdseg_start
bss_0e4c equ __zbss_0e4c - __zdseg_start
bss_2d40 equ __zbss_2d40 - __zdseg_start
bss_2d58 equ __zbss_2d58 - __zdseg_start
bss_5528 equ __zbss_5528 - __zdseg_start
bss_552a equ __zbss_552a - __zdseg_start
bss_5642 equ __zbss_5642 - __zdseg_start
bss_5842 equ __zbss_5842 - __zdseg_start
bss_590e equ __zbss_590e - __zdseg_start
bss_5910 equ __zbss_5910 - __zdseg_start
bss_593a equ __zbss_593a - __zdseg_start
bss_594e equ __zbss_594e - __zdseg_start
bss_5978 equ __zbss_5978 - __zdseg_start
bss_5979 equ __zbss_5979 - __zdseg_start
bss_597a equ __zbss_597a - __zdseg_start
bss_597d equ __zbss_597d - __zdseg_start
bss_597e equ __zbss_597e - __zdseg_start
bss_5980 equ __zbss_5980 - __zdseg_start
bss_5982 equ __zbss_5982 - __zdseg_start
bss_5986 equ __zbss_5986 - __zdseg_start
bss_5988 equ __zbss_5988 - __zdseg_start
bss_5989 equ __zbss_5989 - __zdseg_start
bss_598a equ __zbss_598a - __zdseg_start
bss_598b equ __zbss_598b - __zdseg_start
bss_5b55 equ __zbss_5b55 - __zdseg_start
bss_5c08 equ __zbss_5c08 - __zdseg_start
bss_5c0a equ __zbss_5c0a - __zdseg_start
pc_spell_power_cap equ __zbss_5c18 - __zdseg_start
slot_rec_count equ __zbss_6a1e - __zdseg_start
slot_rec_action equ __zbss_6a22 - __zdseg_start
slot_rec_action_rand equ __zbss_6a2c - __zdseg_start
slot_rec_target equ __zbss_6a40 - __zdseg_start
slot_rec_target_rand equ __zbss_6a4a - __zdseg_start
slot_rec_ranges equ __zbss_6ac1 - __zdseg_start
slot_rec_forced equ __zbss_6b75 - __zdseg_start
glyph_x_table equ __zbss_6e6c - __zdseg_start
glyph_y_table equ __zbss_6eb5 - __zdseg_start
bss_7abc equ __zbss_7abc - __zdseg_start
bss_7abe equ __zbss_7abe - __zdseg_start
bss_7b04 equ __zbss_7b04 - __zdseg_start
bss_7b05 equ __zbss_7b05 - __zdseg_start
bss_7d3c equ __zbss_7d3c - __zdseg_start
glyph_x_table_b equ __zbss_7ed4 - __zdseg_start
glyph_y_table_b equ __zbss_7f1d - __zdseg_start
bss_82f4 equ __zbss_82f4 - __zdseg_start
bss_82f6 equ __zbss_82f6 - __zdseg_start
bss_82f8 equ __zbss_82f8 - __zdseg_start
bss_82fa equ __zbss_82fa - __zdseg_start
bss_82fc equ __zbss_82fc - __zdseg_start
bss_82fe equ __zbss_82fe - __zdseg_start
bss_8300 equ __zbss_8300 - __zdseg_start
bss_8302 equ __zbss_8302 - __zdseg_start
bss_8304 equ __zbss_8304 - __zdseg_start
bss_8306 equ __zbss_8306 - __zdseg_start
party_slot_frame equ __zbss_830e - __zdseg_start
bss_831a equ __zbss_831a - __zdseg_start
bss_8320 equ __zbss_8320 - __zdseg_start
action_slot_table equ __zbss_8322 - __zdseg_start
action_slot_mode equ __zbss_8430 - __zdseg_start
bss_843a equ __zbss_843a - __zdseg_start
bss_844c equ __zbss_844c - __zdseg_start
bss_844e equ __zbss_844e - __zdseg_start
bss_8450 equ __zbss_8450 - __zdseg_start
bss_8452 equ __zbss_8452 - __zdseg_start
bss_8454 equ __zbss_8454 - __zdseg_start
bss_8456 equ __zbss_8456 - __zdseg_start
bss_8458 equ __zbss_8458 - __zdseg_start
bss_845a equ __zbss_845a - __zdseg_start
bss_845c equ __zbss_845c - __zdseg_start
bss_845e equ __zbss_845e - __zdseg_start
dest_alt_arg equ __zbss_8460 - __zdseg_start
bss_8462 equ __zbss_8462 - __zdseg_start
bss_8464 equ __zbss_8464 - __zdseg_start
bss_8466 equ __zbss_8466 - __zdseg_start
bss_8468 equ __zbss_8468 - __zdseg_start
party_char equ __zbss_8482 - __zdseg_start
bss_8484 equ __zbss_8484 - __zdseg_start
bss_848e equ __zbss_848e - __zdseg_start
party_char_ext equ __zbss_8490 - __zdseg_start
bss_8492 equ __zbss_8492 - __zdseg_start
bss_849e equ __zbss_849e - __zdseg_start
bss_84a0 equ __zbss_84a0 - __zdseg_start
bss_84a2 equ __zbss_84a2 - __zdseg_start
bss_84a4 equ __zbss_84a4 - __zdseg_start
bss_84a6 equ __zbss_84a6 - __zdseg_start
bss_84e8 equ __zbss_84e8 - __zdseg_start
slot_records equ __zbss_84ec - __zdseg_start
bss_86c8 equ __zbss_86c8 - __zdseg_start
bss_8809 equ __zbss_8809 - __zdseg_start
bss_880a equ __zbss_880a - __zdseg_start
bss_8822 equ __zbss_8822 - __zdseg_start
bss_882c equ __zbss_882c - __zdseg_start
bss_8976 equ __zbss_8976 - __zdseg_start
kind_state_table equ __zbss_8979 - __zdseg_start
bss_89de equ __zbss_89de - __zdseg_start
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
bss_8af0 equ __zbss_8af0 - __zdseg_start
bss_8afe equ __zbss_8afe - __zdseg_start
bss_8b7e equ __zbss_8b7e - __zdseg_start
bss_8bfe equ __zbss_8bfe - __zdseg_start
bss_8c7e equ __zbss_8c7e - __zdseg_start
bss_8cfe equ __zbss_8cfe - __zdseg_start
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
bss_8f1c equ __zbss_8f1c - __zdseg_start
bss_8f1e equ __zbss_8f1e - __zdseg_start
bss_8f20 equ __zbss_8f20 - __zdseg_start
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
bss_904c equ __zbss_904c - __zdseg_start
spell_dialog_result equ __zbss_904e - __zdseg_start
spell_dialog_button equ __zbss_9050 - __zdseg_start
bss_9052 equ __zbss_9052 - __zdseg_start
bss_9056 equ __zbss_9056 - __zdseg_start
bss_9058 equ __zbss_9058 - __zdseg_start
message_delay equ __zbss_905a - __zdseg_start
bss_905c equ __zbss_905c - __zdseg_start
bss_905e equ __zbss_905e - __zdseg_start
screen_cache equ __zbss_9060 - __zdseg_start
bss_9062 equ __zbss_9062 - __zdseg_start
bss_9064 equ __zbss_9064 - __zdseg_start
bss_9066 equ __zbss_9066 - __zdseg_start
bss_9068 equ __zbss_9068 - __zdseg_start
bss_906a equ __zbss_906a - __zdseg_start
screen_cache_index equ __zbss_906c - __zdseg_start
bss_906e equ __zbss_906e - __zdseg_start
bss_9070 equ __zbss_9070 - __zdseg_start
bss_9072 equ __zbss_9072 - __zdseg_start
bss_9074 equ __zbss_9074 - __zdseg_start
bss_9088 equ __zbss_9088 - __zdseg_start
party_redraw_last_tick equ __zbss_908a - __zdseg_start
bss_908c equ __zbss_908c - __zdseg_start
bss_908e equ __zbss_908e - __zdseg_start
bss_9090 equ __zbss_9090 - __zdseg_start
bss_9092 equ __zbss_9092 - __zdseg_start
bss_9094 equ __zbss_9094 - __zdseg_start
save_location_flag equ __zbss_919e - __zdseg_start
location_changed equ __zbss_91a8 - __zdseg_start
known_spell_list equ __zbss_966a - __zdseg_start
grid_origin_y equ __zbss_9b0a - __zdseg_start
grid_origin_x equ __zbss_9b0c - __zdseg_start
known_spell_ids equ __zbss_9b0e - __zdseg_start
party_redraw_mode equ __zbss_9b5e - __zdseg_start
region_step_flag equ __zbss_9bd0 - __zdseg_start
spell_target equ __zbss_9d90 - __zdseg_start
scene_index equ __zbss_a4a4 - __zdseg_start
scene_tick equ __zbss_a5aa - __zdseg_start
scene_running equ __zbss_a5ac - __zdseg_start
scene_frame equ __zbss_a5b0 - __zdseg_start
scene_backdrop_ref equ __zbss_a5b2 - __zdseg_start
scene_backdrop_ref_hi equ __zbss_a5b4 - __zdseg_start
scene_cue_a equ __zbss_a5b6 - __zdseg_start
scene_cue_b equ __zbss_a5b8 - __zdseg_start
scene_cue_c equ __zbss_a5ba - __zdseg_start
scene_cue_d equ __zbss_a5bc - __zdseg_start
scene_cue_e equ __zbss_a5be - __zdseg_start
scene_digit_cycle equ __zbss_a5c6 - __zdseg_start
scene_step_a equ __zbss_a5ce - __zdseg_start
scroll_x equ __zbss_a5d0 - __zdseg_start
scroll_x_1 equ __zbss_a5d2 - __zdseg_start
scroll_x_2 equ __zbss_a5d4 - __zdseg_start
scroll_x_3 equ __zbss_a5d6 - __zdseg_start
scroll_x_4 equ __zbss_a5d8 - __zdseg_start
sprite_pos equ __zbss_a5da - __zdseg_start
actor_x equ __zbss_a5e2 - __zdseg_start
trail_x equ __zbss_a5e4 - __zdseg_start
actor_y equ __zbss_a5f2 - __zdseg_start
scene_step_b equ __zbss_a5fa - __zdseg_start
scene_step_c equ __zbss_a5fc - __zdseg_start
scene_step_d equ __zbss_a5fe - __zdseg_start
scene_clip_arg equ __zbss_a600 - __zdseg_start
__zbss_size equ __zbss_end - __zimage_end

%include "ds/game/app_malloc.asm"          ; 0x0200

%include "ds/game/app_memmove.asm"         ; 0x0213

%include "ds/game/app_free.asm"            ; 0x022f

bss_0e0e     equ __zbss_0e0e - __zdseg_start
bss_0e10     equ __zbss_0e10 - __zdseg_start
maze_tables  equ __zbss_0e12 - __zdseg_start
maze_data    equ __zbss_0e14 - __zdseg_start
bss_0e16     equ __zbss_0e16 - __zdseg_start
bss_0e18     equ __zbss_0e18 - __zdseg_start
bss_0e1a     equ __zbss_0e1a - __zdseg_start
bss_0e1c     equ __zbss_0e1c - __zdseg_start
bss_0e1e     equ __zbss_0e1e - __zdseg_start
bss_0e20     equ __zbss_0e20 - __zdseg_start
data_file_fd equ __zbss_0e22 - __zdseg_start
msg_dbs_fd   equ __zbss_0e24 - __zdseg_start
bss_0e26     equ __zbss_0e26 - __zdseg_start
bss_0e28     equ __zbss_0e28 - __zdseg_start
bss_0e2a     equ __zbss_0e2a - __zdseg_start
bss_0e2c     equ __zbss_0e2c - __zdseg_start
bss_0e2e     equ __zbss_0e2e - __zdseg_start
bss_0e30     equ __zbss_0e30 - __zdseg_start
bss_0e32     equ __zbss_0e32 - __zdseg_start
%include "ds/game/release_resources.asm"   ; 0x0242

%include "ds/game/release_and_exit.asm"    ; 0x03b8

bss_0e34 equ __zbss_0e34 - __zdseg_start
%include "ds/game/ds_app_OGNR.asm"         ; 0x03cd

%include "ds/game/ds_app_string_TVHI.asm"  ; 0x03da

%include "ds/game/ds_app_SVGG.asm"         ; 0x0422

%include "ds/game/ds_app_OLKR.asm"         ; 0x04c4

%include "ds/game/ds_app_string_THKS.asm"  ; 0x04da

%include "ds/game/ds_app_GUML.asm"         ; 0x052e

%include "ds/game/str_subst_char.asm"      ; 0x0547

bss_0fd5 equ __zbss_0fd5 - __zdseg_start
bss_0fd6 equ __zbss_0fd6 - __zdseg_start
bss_1008 equ __zbss_1008 - __zdseg_start
bss_100a equ __zbss_100a - __zdseg_start
%include "ds/game/ds_app_string_MPHP.asm"  ; 0x05d0

bss_100c equ __zbss_100c - __zdseg_start
%include "ds/game/ds_app_MRJK.asm"         ; 0x065d

; msg_dbs_fd equ __zbss_0e24 - __zdseg_start
bss_3e12   equ __zbss_3e12 - __zdseg_start
bss_5212   equ __zbss_5212 - __zdseg_start
bss_5214   equ __zbss_5214 - __zdseg_start
%include "ds/game/ds_app_file_RPKG.asm"    ; 0x06c6

; bss_3e12 equ __zbss_3e12 - __zdseg_start
; bss_5212 equ __zbss_5212 - __zdseg_start
bss_5216 equ __zbss_5216 - __zdseg_start
%include "ds/game/load_message_string.asm" ; 0x0782

%include "ds/game/ds_app_KQMO.asm"         ; 0x0860

; data_file_fd  equ __zbss_0e22 - __zdseg_start
record_base   equ __zbss_521c - __zdseg_start
record_map_2  equ __zbss_5244 - __zdseg_start
record_map_5  equ __zbss_5264 - __zdseg_start
record_map_7  equ __zbss_52c4 - __zdseg_start
record_map_4  equ __zbss_53c4 - __zdseg_start
record_map_8  equ __zbss_54c4 - __zdseg_start
record_size   equ __zbss_5524 - __zdseg_start
record_packed equ __zbss_556c - __zdseg_start
%include "ds/game/data_record_io.asm"      ; 0x0883

tick_counter_ptr equ __ztick_counter_ptr - __zdseg_start
%include "ds/game/ds_app_OIGN.asm"         ; 0x09a5

%include "ds/game/random_below.asm"        ; 0x09f0

%include "ds/game/clamp_between.asm"       ; 0x0a09

sound_slot_info equ __zbss_5576 - __zdseg_start
bss_597c        equ __zbss_597c - __zdseg_start
bss_5984        equ __zbss_5984 - __zdseg_start
loaded_sound_id equ __zbss_598e - __zdseg_start
%include "ds/game/play_sound_effect.asm"   ; 0x0a27

; bss_0e34 equ __zbss_0e34 - __zdseg_start
bss_5990 equ __zbss_5990 - __zdseg_start
bss_59f4 equ __zbss_59f4 - __zdseg_start
bss_59f6 equ __zbss_59f6 - __zdseg_start
bss_59f8 equ __zbss_59f8 - __zdseg_start
%include "ds/game/ds_app_RMGT.asm"         ; 0x0ad7

%include "ds/game/ds_app_TSGV.asm"         ; 0x0af6

; bss_0e32      equ __zbss_0e32 - __zdseg_start
bss_59fa      equ __zbss_59fa - __zdseg_start
space_key_hit equ __zbss_59fc - __zdseg_start
hotspot_hit   equ __zbss_5b3e - __zdseg_start
%include "ds/game/poll_hotspots.asm"       ; 0x0b54

; bss_0fd6 equ __zbss_0fd6 - __zdseg_start
; bss_5990 equ __zbss_5990 - __zdseg_start
; bss_59f6 equ __zbss_59f6 - __zdseg_start
bss_5b40 equ __zbss_5b40 - __zdseg_start
bss_5b42 equ __zbss_5b42 - __zdseg_start
bss_5b44 equ __zbss_5b44 - __zdseg_start
bss_5b46 equ __zbss_5b46 - __zdseg_start
%include "ds/game/ds_app_string_KVNI.asm"  ; 0x0c0b

%include "ds/game/set_hotspot.asm"         ; 0x0ced

; hotspot_hit equ __zbss_5b3e - __zdseg_start
%include "ds/game/ds_app_TMKJ.asm"         ; 0x0d36

; bss_0e2a equ __zbss_0e2a - __zdseg_start
; bss_0e2c equ __zbss_0e2c - __zdseg_start
; bss_0e32 equ __zbss_0e32 - __zdseg_start
bss_598c equ __zbss_598c - __zdseg_start
%include "ds/game/ds_app_VRKV.asm"         ; 0x0d7a

%include "ds/game/draw_rect_outline.asm"   ; 0x0e03

%include "ds/game/draw_rect_bevel.asm"     ; 0x0e82

%include "ds/game/draw_dialog_box.asm"     ; 0x0ee1

%include "ds/game/draw_bevel_frame.asm"    ; 0x0f2a

%include "ds/game/ds_app_OPOL.asm"         ; 0x0fdf

%include "ds/game/draw_framed_button.asm"  ; 0x1034

%include "ds/game/flash_button.asm"        ; 0x10a6

%include "ds/game/flash_area.asm"          ; 0x10ff

known_spell_names equ __zbss_0e38 - __zdseg_start
%include "ds/game/ds_app_UNSL.asm"         ; 0x1138

%include "ds/game/draw_text_list.asm"      ; 0x11de

%include "ds/game/draw_scrollbar.asm"      ; 0x121f

%include "ds/game/draw_button.asm"         ; 0x1308

%include "ds/game/free_picture_slot.asm"   ; 0x1371

current_maze equ __zbss_5b6c - __zdseg_start
maze_variant equ __zbss_5b6e - __zdseg_start
maze_state   equ __zbss_5b70 - __zdseg_start
%include "ds/game/free_current_maze.asm"   ; 0x138c

screen_store_1_enabled    equ __zbss_5962 - __zdseg_start
screen_store_disk_enabled equ __zbss_5963 - __zdseg_start
screen_store_drive        equ __zbss_5964 - __zdseg_start
saved_screen_kind         equ __zbss_5b72 - __zdseg_start
saved_screen_file         equ __zbss_5b7c - __zdseg_start
saved_screen_ref          equ __zbss_5be0 - __zdseg_start
%include "ds/game/save_screen_area.asm"    ; 0x14ca

; saved_screen_kind equ __zbss_5b72 - __zdseg_start
; saved_screen_file equ __zbss_5b7c - __zdseg_start
; saved_screen_ref  equ __zbss_5be0 - __zdseg_start
%include "ds/game/restore_saved_screen.asm" ; 0x16a0

%include "ds/game/ds_app_VOML.asm"         ; 0x1741

cell_key_grid equ __zbss_5c34 - __zdseg_start
%include "ds/game/ds_app_OOUT.asm"         ; 0x17d6

%include "ds/game/ds_app_mem_TMKK.asm"     ; 0x184f

%include "ds/game/ds_app_UPSN.asm"         ; 0x1a23

; cell_key_grid equ __zbss_5c34 - __zdseg_start
%include "ds/game/ds_app_IPJO.asm"         ; 0x1c2f

%include "ds/game/ds_app_UTUH.asm"         ; 0x1c6e

; bss_0fd5 equ __zbss_0fd5 - __zdseg_start
; bss_5990 equ __zbss_5990 - __zdseg_start
; bss_59f4 equ __zbss_59f4 - __zdseg_start
%include "ds/game/ds_app_OOHU.asm"         ; 0x1cb1

%include "ds/game/ds_app_KTPM.asm"         ; 0x1ccc

%include "ds/game/ds_app_TRNH.asm"         ; 0x1cf8

bss_5bf4      equ __zbss_5bf4 - __zdseg_start
pc_records    equ __zbss_5c10 - __zdseg_start
; cell_key_grid equ __zbss_5c34 - __zdseg_start
bss_5e2a      equ __zbss_5e2a - __zdseg_start
%include "ds/game/ds_app_LUOV.asm"         ; 0x1d81

; bss_0e2e    equ __zbss_0e2e - __zdseg_start
; bss_0e30    equ __zbss_0e30 - __zdseg_start
; bss_0e32    equ __zbss_0e32 - __zdseg_start
; bss_59fa    equ __zbss_59fa - __zdseg_start
; hotspot_hit equ __zbss_5b3e - __zdseg_start
bss_69c8    equ __zbss_69c8 - __zdseg_start
%include "ds/game/pick_party_member.asm"   ; 0x20f8

%include "ds/game/ds_app_QSQR.asm"         ; 0x2305

bss_0cf6 equ __zbss_0cf6 - __zdseg_start
bss_0cf8 equ __zbss_0cf8 - __zdseg_start
%include "ds/game/ds_app_HGSV.asm"         ; 0x2331

%include "ds/game/copy_through_char.asm"   ; 0x2359

data_path_prefixes equ __zbss_5912 - __zdseg_start
install_mode       equ __zbss_5987 - __zdseg_start
data_path_buf      equ __zbss_69ca - __zdseg_start
%include "ds/game/data_file_path.asm"      ; 0x23a8

str_insert_savegame_disk equ __zstr_insert_savegame_disk - __zdseg_start
; data_file_fd             equ __zbss_0e22 - __zdseg_start
; msg_dbs_fd               equ __zbss_0e24 - __zdseg_start
disk_header              equ __zbss_5218 - __zdseg_start
disk_drive_name          equ __zbss_5926 - __zdseg_start
; install_mode             equ __zbss_5987 - __zdseg_start
; hotspot_hit              equ __zbss_5b3e - __zdseg_start
%include "ds/game/prompt_disk_swap.asm"    ; 0x23ef

; disk_header        equ __zbss_5218 - __zdseg_start
; data_path_prefixes equ __zbss_5912 - __zdseg_start
; install_mode       equ __zbss_5987 - __zdseg_start
%include "ds/game/ensure_game_disk.asm"    ; 0x27e9

dseg_0bcd      equ __zdseg_0bcd - __zdseg_start
slot_rec_first equ __zbss_6a1a - __zdseg_start
%include "ds/game/ds_app_file_TSNH.asm"    ; 0x2863

%include "ds/game/wait_and_free_sound.asm" ; 0x290d

dseg_0bd7       equ __zdseg_0bd7 - __zdseg_start
; sound_slot_info equ __zbss_5576 - __zdseg_start
%include "ds/game/load_sound_file.asm"     ; 0x2923

; loaded_sound_id equ __zbss_598e - __zdseg_start
%include "ds/game/ds_app_QTIV.asm"         ; 0x29f1

dseg_0be3        equ __zdseg_0be3 - __zdseg_start
score_ext_csf    equ __zscore_ext_csf - __zdseg_start
score_ext_pbl    equ __zscore_ext_pbl - __zdseg_start
score_ext_pba    equ __zscore_ext_pba - __zdseg_start
video_mode       equ __zbss_5985 - __zdseg_start
loaded_score_num equ __zbss_82b6 - __zdseg_start
%include "ds/game/load_score_files.asm"    ; 0x2a2e

; loaded_score_num equ __zbss_82b6 - __zdseg_start
%include "ds/game/ds_app_gfx_free_score_VGJR.asm" ; 0x2b4e

%include "ds/game/fade_out_music.asm"      ; 0x2b62

bss_597f equ __zbss_597f - __zdseg_start
%include "ds/game/ds_app_UKGP.asm"         ; 0x2bab

; bss_597f   equ __zbss_597f - __zdseg_start
; video_mode equ __zbss_5985 - __zdseg_start
%include "ds/game/ds_app_NNSU.asm"         ; 0x2bed

; bss_1008 equ __zbss_1008 - __zdseg_start
; bss_59f6 equ __zbss_59f6 - __zdseg_start
; bss_59f8 equ __zbss_59f8 - __zdseg_start
bss_82b8 equ __zbss_82b8 - __zdseg_start
%include "ds/game/ds_app_LPKV.asm"         ; 0x2c11

bss_82e8  equ __zbss_82e8 - __zdseg_start
bss_82ea  equ __zbss_82ea - __zdseg_start
bss_82ec  equ __zbss_82ec - __zdseg_start
party_tag equ __zbss_82ee - __zdseg_start
bss_82f0  equ __zbss_82f0 - __zdseg_start
bss_82f2  equ __zbss_82f2 - __zdseg_start
%include "ds/game/ds_app_JKOJ.asm"         ; 0x2c69

dseg_0bfa      equ __zdseg_0bfa - __zdseg_start
game_state     equ __zbss_830a - __zdseg_start
game_state_arg equ __zbss_830c - __zdseg_start
%include "ds/game/main.asm"                ; 0x2dd5

    db 0x00
saved_video_mode:
    db 0x00
saved_equip_byte:
    db 0x00
video_is_ega:
    db 0x00
video_is_vga:
    db 0x00
video_is_cga:
    db 0x00
video_is_herc:
    times 5 db 0
cseg_2f40:
    db 0x80, 0x41, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x40, 0x01
font_header_seg:
    db 0x00, 0x00, 0x40, 0x00
misc_table_seg:
    db 0x00, 0x00, 0x30, 0x05
cseg_2f52:
    db 0x00, 0x00, 0xd0, 0x01
cseg_2f56:
    db 0x00, 0x00
cseg_2f58:
    times 4 db 0
    db 0x3e, 0x2f, 0xbc, 0x34
cseg_2f60:
    db 0x00, 0x00
cseg_2f62:
    db 0x00, 0x00
cseg_2f64:
    db 0x00, 0x00
mouse_button_count:
    db 0x00
cseg_2f67:

    db 0x03, 0x01, 0x00, 0x00, 0x07, 0x01, 0x00, 0x00, 0x0b, 0x01, 0x00, 0x00, 0x0f, 0x01, 0x00, 0x00
    db 0x13, 0x01, 0x00, 0x00

cseg_2f7b:
    db 0x17, 0x01, 0x00, 0x00, 0x1b, 0x01, 0x00, 0x00
play_drv_wait:
    db 0x1f, 0x01, 0x00, 0x00
cseg_2f87:
    db 0x03, 0x01, 0x00, 0x00
cseg_2f8b:
    db 0x07, 0x01, 0x00, 0x00
cseg_2f8f:
    db 0x0b, 0x01, 0x00, 0x00, 0x0f, 0x01, 0x00, 0x00, 0x13, 0x01, 0x00, 0x00
cseg_2f9b:
    db 0x17, 0x01, 0x00, 0x00
cseg_2f9f:
    db 0x1b, 0x01, 0x00, 0x00
cseg_2fa3:
    db 0x1f, 0x01, 0x00, 0x00
cseg_2fa7:
    db 0x23, 0x01, 0x00, 0x00
cseg_2fab:
    db 0x27, 0x01, 0x00, 0x00
gfx_drv_slot_10:
    db 0x2b, 0x01, 0x00, 0x00
gfx_drv_draw_glyph:
    db 0x2f, 0x01, 0x00, 0x00
cseg_2fb7:
    db 0x33, 0x01, 0x00, 0x00
cseg_2fbb:
    db 0x37, 0x01, 0x00, 0x00
cseg_2fbf:
    db 0x3b, 0x01, 0x00, 0x00
cseg_2fc3:
    db 0x3f, 0x01, 0x00, 0x00
cseg_2fc7:
    db 0x43, 0x01, 0x00, 0x00
cseg_2fcb:
    db 0x47, 0x01, 0x00, 0x00
cseg_2fcf:
    db 0x4b, 0x01, 0x00, 0x00
cseg_2fd3:
    db 0x4f, 0x01, 0x00, 0x00
cseg_2fd7:
    db 0x53, 0x01, 0x00, 0x00
cseg_2fdb:
    db 0x57, 0x01, 0x00, 0x00
cseg_2fdf:
    db 0x5b, 0x01, 0x00, 0x00
cseg_2fe3:
    db 0x5f, 0x01, 0x00, 0x00
cseg_2fe7:
    db 0x63, 0x01, 0x00, 0x00
cseg_2feb:
    db 0x67, 0x01, 0x00, 0x00
cseg_2fef:
    db 0x6b, 0x01, 0x00, 0x00
cseg_2ff3:
    db 0x6f, 0x01, 0x00, 0x00
cseg_2ff7:
    db 0x73, 0x01, 0x00, 0x00
cseg_2ffb:
    db 0x77, 0x01, 0x00, 0x00
cseg_2fff:
    db 0x7b, 0x01, 0x00, 0x00
cseg_3003:
    db 0x7f, 0x01, 0x00, 0x00
cseg_3007:
    db 0x83, 0x01, 0x00, 0x00
cseg_300b:
    db 0x87, 0x01, 0x00, 0x00
cseg_300f:
    db 0x8b, 0x01, 0x00, 0x00
cseg_3013:
    db 0x8f, 0x01, 0x00, 0x00
cseg_3017:
    db 0x93, 0x01, 0x00, 0x00
cseg_301b:
    db 0x97, 0x01, 0x00, 0x00
cseg_301f:
    db 0x9b, 0x01, 0x00, 0x00
cseg_3023:
    db 0x9f, 0x01, 0x00, 0x00
cseg_3027:
    db 0xa3, 0x01, 0x00, 0x00
cseg_302b:
    db 0xa7, 0x01, 0x00, 0x00
cseg_302f:
    db 0xab, 0x01, 0x00, 0x00
cseg_3033:
    db 0xaf, 0x01, 0x00, 0x00
cseg_3037:
    db 0xb3, 0x01, 0x00, 0x00
cseg_303b:
    db 0xb7, 0x01, 0x00, 0x00
cseg_303f:
    db 0xbb, 0x01, 0x00, 0x00
cseg_3043:
    db 0xbf, 0x01, 0x00, 0x00
cseg_3047:
    db 0xc3, 0x01, 0x00, 0x00
cseg_304b:
    db 0xc7, 0x01, 0x00, 0x00
cseg_304f:
    db 0xcb, 0x01, 0x00, 0x00
cseg_3053:
    db 0xcf, 0x01, 0x00, 0x00
cseg_3057:
    db 0xd3, 0x01, 0x00, 0x00
cseg_305b:
    db 0xd7, 0x01, 0x00, 0x00
cseg_305f:
    db 0xdb, 0x01, 0x00, 0x00
cseg_3063:
    db 0xdf, 0x01, 0x00, 0x00
%include "ds/library/init_system_hardware.asm" ; 0x3067

%include "ds/library/ds_loc_IGLJ.asm"      ; 0x30a3

bios_data_0410 equ 0x0410
%include "ds/library/ds_bios_video_loc_PHVR.asm" ; 0x30c3

random_seed_a:
    db 0xb8, 0x0b
random_seed_b:
    db 0x01, 0x00
random_seed_c:
    db 0x2f, 0x75
%include "ds/library/seed_random_from_timer.asm" ; 0x30e2

%include "ds/library/detect_video_adapter.asm" ; 0x30f7

; bios_data_0410 equ 0x0410
%include "ds/library/select_vga_driver.asm" ; 0x343e

; bios_data_0410 equ 0x0410
%include "ds/library/select_ega_driver.asm" ; 0x3490

%include "ds/library/load_video_driver.asm" ; 0x3534

%include "ds/library/ds_dos_con_loc_OQQL.asm" ; 0x35b8

cseg_35ec:
    db 'play.drv', 0
%include "ds/library/load_play_driver.asm" ; 0x35f5

%include "ds/library/ds_dos_con_loc_GOVO.asm" ; 0x3640

loops_per_ms:
    db 0x90, 0x01
%include "ds/library/calibrate_loops_per_ms.asm" ; 0x3674

%include "ds/library/ds_dos_mem_loc_OHLH.asm" ; 0x36bc

%include "ds/library/ds_dos_mem_loc_PLIR.asm" ; 0x36cd

delay_loop_target:
    db 0x00, 0x00
%include "ds/library/delay_ms.asm"         ; 0x36d0

%include "ds/library/allocate_driver_memory.asm" ; 0x36f5

%include "ds/library/ds_dos_mem_loc_JMGG.asm" ; 0x371d

%include "ds/library/ds_dos_mem_loc_GSMJ.asm" ; 0x3760

%include "ds/library/ds_dos_mem_loc_GMLT.asm" ; 0x377b

%include "ds/library/ds_loc_RMTO.asm"      ; 0x3796

%include "ds/library/detect_mouse.asm"     ; 0x37a5

cseg_37d1:
    db 'EMMXXXX0'
%include "ds/library/detect_expanded_memory.asm" ; 0x37d9

%include "ds/library/ds_leaf_loc_KIKO.asm" ; 0x382c

%include "ds/library/ds_leaf_loc_PUGK.asm" ; 0x383e

font_seg_table:

    times 20 db 0
    db 0xff, 0xff

file_param_word equ __zfile_param_word - __zdseg_start
%include "ds/library/load_font_file.asm"   ; 0x3860

%include "ds/library/font_io_error_exit.asm" ; 0x3936

font_io_error_msg:

    db 0x07, 0x0d, 0x0a
    db 'I/O error loading font'
    db 0x0d, 0x0a, 0x24

%include "ds/library/font_memory_error.asm" ; 0x395b

; file_param_word equ __zfile_param_word - __zdseg_start
%include "ds/library/read_font_glyph.asm"  ; 0x398a

; file_param_word equ __zfile_param_word - __zdseg_start
%include "ds/library/ds_loc_UQOV.asm"      ; 0x39f6

%include "ds/library/gfx_set_text_pos.asm" ; 0x3a50

%include "ds/library/gfx_get_text_pos.asm" ; 0x3a5d

%include "ds/library/gfx_set_text_color.asm" ; 0x3a6a

%include "ds/library/draw_font_glyph.asm"  ; 0x3a77

%include "ds/library/draw_text_glyphs.asm" ; 0x3a95

%include "ds/library/ds_loc_JJGM.asm"      ; 0x3aca

%include "ds/library/gfx_show_area.asm"    ; 0x3b21

%include "ds/library/gfx_fill_screen_buffer.asm" ; 0x3b2e

%include "ds/library/gfx_put_pixel.asm"    ; 0x3b3b

%include "ds/library/gfx_fill_area.asm"    ; 0x3b48

%include "ds/library/gfx_invert_area.asm"  ; 0x3b55

%include "ds/library/gfx_get_free_space.asm" ; 0x3b62

%include "ds/library/gfx_save_area.asm"    ; 0x3b6f

%include "ds/library/gfx_cache_area.asm"   ; 0x3b7c

%include "ds/library/gfx_restore_screen.asm" ; 0x3b89

%include "ds/library/gfx_restore_area.asm" ; 0x3b96

%include "ds/library/ds_loc_JRJK.asm"      ; 0x3ba3

%include "ds/library/stir_random_seeds.asm" ; 0x3c0d

key_queue:

    times 24 db 0

%include "ds/library/poll_filtered_key.asm" ; 0x3c97

%include "ds/library/get_filtered_key.asm" ; 0x3d79

%include "ds/library/flush_keyboard.asm"   ; 0x3e5e

%include "ds/library/set_bitmap_bit.asm"   ; 0x3e88

%include "ds/library/test_bit.asm"         ; 0x3ebb

%include "ds/library/set_bitfield.asm"     ; 0x3eeb

%include "ds/library/ds_leaf_loc_NPSL.asm" ; 0x3f3d

%include "ds/library/get_bits.asm"         ; 0x3f81

%include "ds/library/read_misc_table.asm"  ; 0x3fa9

%include "ds/library/misc_table_io_error_exit.asm" ; 0x3fd5

misc_table_io_error_msg:

    db 0x07, 0x0d, 0x0a
    db 'I/O error loading Misc. table.'
    db 0x0d, 0x0a, 0x24

%include "ds/library/unpack_record.asm"    ; 0x4002

%include "ds/library/ds_string_loc_SSGO.asm" ; 0x4046

%include "ds/library/strpos.asm"           ; 0x4091

%include "ds/library/strstr.asm"           ; 0x40ca

%include "ds/library/gfx_free_sound.asm"   ; 0x4134

%include "ds/library/gfx_load_sound.asm"   ; 0x4141

%include "ds/library/gfx_play_sound.asm"   ; 0x414e

%include "ds/library/gfx_wait_sound.asm"   ; 0x415b

%include "ds/library/gfx_stop_sound.asm"   ; 0x4168

%include "ds/library/ds_loc_QURR.asm"      ; 0x4175

%include "ds/library/gfx_load_score.asm"   ; 0x41a3

%include "ds/library/gfx_play_score.asm"   ; 0x41b0

%include "ds/library/gfx_free_score.asm"   ; 0x41bd

%include "ds/library/gfx_is_music_playing.asm" ; 0x41ca

%include "ds/library/gfx_stop_music.asm"   ; 0x41d7

%include "ds/library/gfx_set_music_tempo_volume.asm" ; 0x41e4

%include "ds/library/gfx_load_picture.asm" ; 0x41f1

%include "ds/library/gfx_free_picture.asm" ; 0x41fe

%include "ds/library/gfx_free_maze.asm"    ; 0x420b

%include "ds/library/gfx_draw_text.asm"    ; 0x4218

%include "ds/library/gfx_load_screen.asm"  ; 0x4225

%include "ds/library/gfx_free_screen.asm"  ; 0x4232

%include "ds/library/gfx_save_screen.asm"  ; 0x423f

%include "ds/library/gfx_dissolve_area.asm" ; 0x424c

%include "ds/library/gfx_load_maze.asm"    ; 0x4259

%include "ds/library/gfx_draw_maze_piece.asm" ; 0x4266

%include "ds/library/gfx_mouse_init.asm"   ; 0x4273

%include "ds/library/gfx_mouse_off.asm"    ; 0x4280

%include "ds/library/gfx_mouse_hit_test.asm" ; 0x428d

%include "ds/library/gfx_get_mouse.asm"    ; 0x429a

%include "ds/library/gfx_set_mouse_pointer.asm" ; 0x42a7

%include "ds/library/mouse_set_pos.asm"    ; 0x42b4

%include "ds/library/gfx_set_text_opaque.asm" ; 0x42dd

%include "ds/library/gfx_set_rgb.asm"      ; 0x42ea

%include "ds/library/gfx_get_rgb.asm"      ; 0x42f7

%include "ds/library/gfx_fade_in.asm"      ; 0x4304

%include "ds/library/gfx_fade_out.asm"     ; 0x4311

%include "ds/library/gfx_reset_rgb.asm"    ; 0x431e

%include "ds/library/gfx_mouse_glide_to.asm" ; 0x432b

%include "ds/library/gfx_mouse_glide_back.asm" ; 0x4338

%include "ds/library/gfx_get_palette.asm"  ; 0x4345

%include "ds/library/gfx_set_palette.asm"  ; 0x4352

%include "ds/library/gfx_cache_maze.asm"   ; 0x435f

%include "ds/library/gfx_cache_screen.asm" ; 0x436c

dseg_0c48   equ __zdseg_0c48 - __zdseg_start
dseg_0c4d   equ __zdseg_0c4d - __zdseg_start
_mbot       equ __z_mbot - __zdseg_start
ovname      equ __zbss_0cfa - __zdseg_start
__zdseg_end equ (__zimage_end - __zdseg_start) + __zbss_size
%include "ds/aztec/aztec_ovloader.asm"     ; 0x4379

%include "ds/aztec/aztec_bdos.asm"         ; 0x4497

errno equ __zerrno - __zdseg_start
%include "ds/aztec/aztec_csread.asm"       ; 0x44b4

buff equ __zbss_0cfc - __zdseg_start
%include "ds/aztec/aztec_sprintf.asm"      ; 0x44d4

%include "ds/aztec/aztec_movblock.asm"     ; 0x4517

%include "ds/aztec/aztec_setmem.asm"       ; 0x454d

%include "shared/aztec/aztec_strcat.asm"       ; 0x4574

%include "shared/aztec/aztec_strcpy.asm"       ; 0x45ab

%include "ds/aztec/aztec_dos20_lmalloc.asm" ; 0x45d7

_sbot     equ __z_sbot - __zdseg_start
_lowwater equ __z_lowwater - __zdseg_start
%include "ds/aztec/aztec_csav.asm"         ; 0x4650

endmarker equ __zendmarker - __zdseg_start
keep      equ __zbss_0cfe - __zdseg_start
current   equ __zbss_0d00 - __zdseg_start
first     equ __zbss_0d02 - __zdseg_start
%include "ds/aztec/aztec_misc_lmalloc.asm" ; 0x467b

; first equ __zbss_0d02 - __zdseg_start
%include "ds/aztec/aztec_format.asm"       ; 0x480d

; errno  equ __zerrno - __zdseg_start
_ioflg equ __z_ioflg - __zdseg_start
%include "shared/aztec/aztec_open.asm"         ; 0x4b39

%include "shared/aztec/aztec_lsubs.asm"        ; 0x4be6

%include "shared/aztec/aztec_strlen.asm"       ; 0x4cd7

; errno equ __zerrno - __zdseg_start
%include "shared/aztec/aztec_sys.asm"          ; 0x4cf4

psp_top_of_memory equ 0x0002
psp_env_segment   equ 0x002c
psp_cmd_tail_len  equ 0x0080
aztec_MEMRY       equ __zaztec_MEMRY - __zdseg_start
_dsval            equ __z_dsval - __zdseg_start
_csval            equ __z_csval - __zdseg_start
; _mbot             equ __z_mbot - __zdseg_start
; _sbot             equ __z_sbot - __zdseg_start
_mtop             equ __z_mtop - __zdseg_start
_PSP              equ __z_PSP - __zdseg_start
bad8087           equ __zbad8087 - __zdseg_start
_STKSIZ           equ __z_STKSIZ - __zdseg_start
_STKRED           equ __z_STKRED - __zdseg_start
_HEAPSIZ          equ __z_HEAPSIZ - __zdseg_start
_STKLOW           equ __z_STKLOW - __zdseg_start
_Uorg             equ __zbss_0cf6 - __zdseg_start
; __zdseg_end       equ (__zimage_end - __zdseg_start) + __zbss_size
%include "ds/aztec/aztec_sbegin.asm"       ; 0x4d36

cls_      equ __zcls_ - __zdseg_start
dseg_0c9e equ __zdseg_0c9e - __zdseg_start
; _ioflg    equ __z_ioflg - __zdseg_start
Argc      equ __zbss_0d04 - __zdseg_start
Argv      equ __zbss_0d06 - __zdseg_start
%include "ds/aztec/aztec_croot.asm"        ; 0x4ea3

%include "shared/aztec/aztec_fltstub.asm"      ; 0x4f85

dseg_0cae equ __zdseg_0cae - __zdseg_start
%include "ds/aztec/aztec_stkover.asm"      ; 0x4f87

; errno  equ __zerrno - __zdseg_start
; _ioflg equ __z_ioflg - __zdseg_start
_ttrd  equ __z_ttrd - __zdseg_start
_ttwr  equ __z_ttwr - __zdseg_start
%include "shared/aztec/aztec_io.asm"           ; 0x4fa2

_Eol      equ __z_Eol - __zdseg_start
dseg_0cf5 equ __zdseg_0cf5 - __zdseg_start
bss_0d08  equ __zbss_0d08 - __zdseg_start
bss_0e0c  equ __zbss_0e0c - __zdseg_start
_TTrem    equ __zbss_9096 - __zdseg_start
%include "ds/aztec/aztec_ttyio.asm"        ; 0x505c

%include "shared/aztec/aztec_movmem.asm"       ; 0x5123

%include "shared/aztec/aztec_isatty.asm"       ; 0x5168

; aztec_MEMRY equ __zaztec_MEMRY - __zdseg_start
; errno       equ __zerrno - __zdseg_start
; _mbot       equ __z_mbot - __zdseg_start
; _sbot       equ __z_sbot - __zdseg_start
; _mtop       equ __z_mtop - __zdseg_start
; _PSP        equ __z_PSP - __zdseg_start
; _STKRED     equ __z_STKRED - __zdseg_start
; _STKLOW     equ __z_STKLOW - __zdseg_start
%include "shared/aztec/aztec_ssbrk.asm"        ; 0x5188


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
    db 0x00, 0x00

%include "ds/data/tick_counter_ptr.asm"    ; 0x10162

__zdseg_001e:
    db 0x35, 0x00, 0x35, 0x00
__zdseg_0022:
    db 0xab, 0x00
__zdseg_0024:
    db 0x5e, 0x00, 0x5e, 0x00, 0x5e, 0x00, 0x5e, 0x00, 0x5e, 0x00, 0x09, 0x00
__zdseg_0030:
    db 0x5f, 0x00, 0x35, 0x00, 0x1c, 0x00, 0xab, 0x00
__zdseg_0038:
    db 0x00, 0x00, 0x09, 0x00
__zdseg_003c:
    db 0x0a, 0x00, 0x11, 0x00
__zdseg_0040:
    db 0x12, 0x00
__zdseg_0042:
    db 0x17, 0x00
__zdseg_0044:

    db 0x18, 0x00, 0x21
    times 5 db 0
    db 0x01, 0x00, 0x0f, 0x00, 0x10, 0x00, 0x23, 0x00, 0x24, 0x00, 0x2b, 0x00, 0x2c, 0x00, 0x2f, 0x00
    db 0x30, 0x00, 0x3a, 0x00, 0x3b, 0x00, 0x3f, 0x00, 0x40, 0x00, 0x4a, 0x00, 0x4b, 0x00, 0x4f, 0x00
    db 0x50, 0x00, 0x5d, 0x00, 0x5e, 0x00, 0x5f, 0x00, 0x60, 0x00, 0x77, 0x00, 0x78, 0x00, 0x7f, 0x00
    db 0x80, 0x00, 0x8f, 0x00, 0x90, 0x00, 0x93, 0x00, 0x94, 0x00, 0x96, 0x00, 0x97, 0x00, 0x9f, 0x00
    db 0xa0, 0x00, 0xa3, 0x00, 0xa4, 0x00, 0xa6, 0x00, 0xa7, 0x00, 0xaf, 0x00, 0xb0, 0x00, 0xb7, 0x00
    db 0xb8, 0x00, 0xbf, 0x00, 0xc0, 0x00, 0xcf, 0x00, 0xd0, 0x00, 0xd6, 0x00, 0xd7, 0x00, 0xdf, 0x00
    db 0xe0, 0x00, 0xe2, 0x00, 0xe3, 0x00, 0xe6, 0x00, 0xe7, 0x00, 0xef, 0x00, 0xf0, 0x00, 0xf5, 0x00
    db 0xf6, 0x00, 0xfe, 0x00, 0xff, 0x00, 0xff, 0x00, 0x05, 0x06, 0x08, 0x05, 0x06, 0x08, 0x05, 0x06
    db 0x08, 0x05, 0x06, 0x08, 0x05, 0x06, 0x08, 0x08, 0x0a, 0x0d, 0x11, 0x15, 0x1b, 0x16, 0x1b, 0x22
    db 0x16, 0x1b, 0x22, 0x19, 0x1e, 0x26, 0x19, 0x1e, 0x26, 0x1a, 0x20, 0x28, 0x1a, 0x20, 0x28, 0x1c
    db 0x22, 0x2b, 0x1c, 0x22, 0x2b, 0x1c, 0x22, 0x2b, 0x1a, 0x20, 0x28, 0x19, 0x1e, 0x26, 0x16, 0x1b
    db 0x22, 0x13, 0x18, 0x1f, 0x11, 0x15, 0x1b, 0x0a, 0x0d, 0x10, 0x08, 0x0a, 0x0d, 0x05, 0x06, 0x08

__zdseg_010c:
    db 0x21, 0x00
__zdseg_010e:
    db 0x27, 0x00
%include "ds/data/file_param_word.asm"     ; 0x10270

__zdseg_0112:
    db 0x20, 0x00
__zdseg_0114:
    db 0x26, 0x00
__zdseg_0116:

    db 0x26, 0x00, 0x20, 0x00, 0x20, 0x00, 0x20, 0x00, 0x20, 0x00, 0x96, 0x00, 0x9f, 0x00, 0xaa, 0x00
    db 0xac, 0x00, 0x80, 0x00, 0xa3, 0x00, 0x93, 0x00, 0xac, 0x00, 0xad, 0x00, 0xa3, 0x00, 0xc0, 0x00
    db 0xac, 0x00, 0x7b, 0x00, 0xb0, 0x00, 0x90, 0x00, 0xb9, 0x00, 0xb0, 0x00, 0xb0, 0x00, 0xc5, 0x00
    db 0xb9, 0x00, 0x95, 0x00, 0xb1, 0x00, 0xab, 0x00, 0xbf, 0x00, 0x09, 0x08, 0x0a, 0x2c, 0x2e, 0x0b
    db '!@#$%^'
    db 0xd5, 0x00, 0x8a, 0x00, 0xd9, 0x00, 0x8f, 0x00, 0xd0, 0x00, 0x9a, 0x00, 0xd4, 0x00, 0x9f, 0x00
    db 0xeb, 0x00, 0xaf, 0x00, 0xef, 0x00, 0xb4, 0x00, 0xee, 0x00, 0x8a, 0x00, 0xf2, 0x00, 0x8f, 0x00
    db 0x10, 0x01, 0x9a, 0x00, 0x14, 0x01, 0x9f, 0x00, 0x0e, 0x01, 0xaf, 0x00, 0x12, 0x01, 0xb4, 0x00
    db 0x42, 0x00, 0x88, 0x00, 0x36, 0x00, 0x9e, 0x00, 0x42, 0x00, 0xba, 0x00, 0x72, 0x00, 0x88, 0x00
    db 0x7e, 0x00, 0x9e, 0x00, 0x72, 0x00, 0xba, 0x00

%include "ds/data/party_slot_x.asm"        ; 0x10304

%include "ds/data/party_slot_y.asm"        ; 0x1031c

%include "ds/data/party_slot_glyphs.asm"   ; 0x10334

%include "ds/data/ems_slots.asm"           ; 0x103fb

__zdseg_03ae:

    db 0xa0, 0x00, 0x26, 0x01
    times 4 db 0
    db 0x4a, 0x00, 0xa0, 0x00, 0xf6
    times 5 db 0
    db 0x68, 0x00, 0xa0, 0x00, 0xd8
    times 5 db 0
    db 0x7c, 0x00, 0xa0, 0x00, 0xc4
    times 5 db 0
    db 0x84, 0x00, 0xa0, 0x00, 0xbc, 0x00, 0x00, 0x00

__zdseg_03dc:

    db 0x81, 0x00, 0x69, 0x00, 0x5a, 0x00, 0x51, 0x00, 0x56, 0x00, 0x43, 0x00, 0x33, 0x00, 0xc5, 0x00
    db 0x33, 0x00, 0x43, 0x00, 0x39, 0x00, 0xc5, 0x00, 0x39, 0x00, 0x66, 0x00, 0x37, 0x00, 0xa2, 0x00
    db 0x37, 0x00, 0x43, 0x00, 0x39, 0x00, 0xc5, 0x00, 0x39, 0x00, 0x7b, 0x00, 0x39, 0x00, 0x8d, 0x00
    db 0x39, 0x00, 0x43, 0x00, 0x39, 0x00, 0xc5, 0x00, 0x39, 0x00, 0x87, 0x00, 0x3b, 0x00, 0x81, 0x00
    db 0x3b, 0x00, 0x5e, 0x00, 0x3b, 0x00, 0xaa, 0x00, 0x3b, 0x00, 0x8e, 0x00, 0x3c, 0x00, 0x7a, 0x00
    db 0x3c, 0x00, 0x6c, 0x00, 0x3c, 0x00, 0x9c, 0x00, 0x3c, 0x00, 0x3e, 0x00, 0x31, 0x00, 0xca, 0x00
    db 0x31, 0x00, 0x45, 0x00, 0x39, 0x00, 0xc5, 0x00, 0x39, 0x00, 0x64, 0x00, 0x36, 0x00, 0xa4, 0x00
    db 0x36, 0x00, 0x45, 0x00, 0x39, 0x00, 0xc5, 0x00, 0x39, 0x00, 0x79, 0x00, 0x39, 0x00, 0x8f, 0x00
    db 0x39, 0x00, 0x45, 0x00, 0x39, 0x00, 0xc5, 0x00, 0x39, 0x00, 0x87, 0x00, 0x3b, 0x00, 0x81, 0x00
    db 0x3b, 0x00, 0x5e, 0x00, 0x3b, 0x00, 0xa9, 0x00, 0x3b, 0x00, 0x8f, 0x00, 0x3c, 0x00, 0x79, 0x00
    db 0x3c, 0x00, 0x6b, 0x00, 0x3c, 0x00, 0x9c, 0x00, 0x3c, 0x00, 0x4b, 0x00, 0x44, 0x00, 0xed, 0x00
    db 0x44, 0x00, 0x4b, 0x00, 0x40, 0x00, 0xed, 0x00, 0x40, 0x00, 0x71, 0x00, 0x41, 0x00, 0xc7, 0x00
    db 0x41, 0x00, 0x4b, 0x00, 0x40, 0x00, 0xed, 0x00, 0x40, 0x00, 0x82, 0x00, 0x40, 0x00, 0xb6, 0x00
    db 0x40, 0x00, 0x4b, 0x00, 0x40, 0x00, 0xed, 0x00, 0x40, 0x00, 0x8c, 0x00, 0x3f, 0x00, 0xac, 0x00
    db 0x3f, 0x00, 0x63, 0x00, 0x40, 0x00, 0xd5, 0x00, 0x40, 0x00, 0x8c, 0x00, 0x3f, 0x00, 0xac, 0x00
    db 0x3f, 0x00, 0x63, 0x00, 0x40, 0x00, 0xd5, 0x00, 0x40, 0x00, 0x4b, 0x00, 0x39, 0x00, 0xed, 0x00
    db 0x39, 0x00, 0x4b, 0x00, 0x3c, 0x00, 0xed, 0x00, 0x3c, 0x00, 0x71, 0x00, 0x3b, 0x00, 0xc7, 0x00
    db 0x3b, 0x00, 0x4b, 0x00, 0x3c, 0x00, 0xed, 0x00, 0x3c, 0x00, 0x82, 0x00, 0x3c, 0x00, 0xb6, 0x00
    db 0x3c, 0x00, 0x4b, 0x00, 0x3c, 0x00, 0xed, 0x00, 0x3c, 0x00, 0x8c, 0x00, 0x3d, 0x00, 0xac, 0x00
    db 0x3d, 0x00, 0x63, 0x00, 0x3d, 0x00, 0xd5, 0x00, 0x3d, 0x00, 0x8c, 0x00, 0x3d, 0x00, 0xac, 0x00
    db 0x3d, 0x00, 0x63, 0x00, 0x3d, 0x00, 0xd5, 0x00, 0x3d, 0x00, 0x4c, 0x00, 0x3b, 0x00, 0xe4, 0x00
    db 0x3b, 0x00, 0x4a, 0x00, 0x3d, 0x00, 0xe6, 0x00, 0x3d, 0x00, 0x71, 0x00, 0x3c, 0x00, 0xbf, 0x00
    db 0x3c, 0x00, 0x4a, 0x00, 0x3d, 0x00, 0xe6, 0x00, 0x3d, 0x00, 0x82, 0x00, 0x3d, 0x00, 0xae, 0x00
    db 0x3d, 0x00, 0x4a, 0x00, 0x3d, 0x00, 0xe6, 0x00, 0x3d, 0x00, 0x8c, 0x00, 0x3d, 0x00, 0xa4, 0x00
    db 0x3d, 0x00, 0x63, 0x00, 0x3d, 0x00, 0xcd, 0x00, 0x3d, 0x00, 0x8c, 0x00, 0x3d, 0x00, 0xa4, 0x00
    db 0x3d, 0x00, 0x63, 0x00, 0x3d, 0x00, 0xcd, 0x00, 0x3d, 0x00, 0x64, 0x00, 0x3e, 0x00, 0x28, 0x00
    db 0x18, 0x00, 0x0f, 0x00, 0x51, 0x00, 0x64, 0x00, 0x64, 0x00, 0x33, 0x00, 0x3d, 0x00, 0x3d, 0x00
    db 0x24, 0x00, 0x29, 0x00, 0x29, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x02, 0x00, 0x00, 0x00
    db 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x02, 0x00, 0x00, 0x00
    db 0x02, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x02, 0x00, 0x19, 0x00, 0x1e, 0x00, 0x1e, 0x00
    db 0x0f, 0x00, 0x14, 0x00, 0x14, 0x00, 0x05, 0x00, 0x0a, 0x00, 0x0a, 0x00, 0x64, 0x00, 0x51, 0x00
    db 0x51, 0x00, 0x3d, 0x00, 0x33, 0x00, 0x33, 0x00, 0x29, 0x00, 0x24, 0x00, 0x24, 0x00, 0x1e, 0x00
    db 0x19, 0x00, 0x19, 0x00, 0x0f, 0x00, 0x14, 0x00, 0x14, 0x00, 0x05, 0x00, 0x0a, 0x00, 0x0a, 0x00
    db 0x00, 0x00, 0x01, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x02, 0x00, 0x0a, 0x00, 0x0b, 0x00
    db 0x0c, 0x00, 0x58, 0x00, 0x2c, 0x00, 0x16, 0x00, 0x0b, 0x00, 0x0b, 0x00, 0x16, 0x00, 0x2c, 0x00
    db 0x58, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01
    times 7 db 0
    db 0x01, 0x00, 0x00, 0x01, 0x01, 0x00

%include "ds/data/spell_table.asm"         ; 0x10780

%include "ds/data/str_insert_savegame_disk.asm" ; 0x10cd4

__zdseg_0bcd:
    db 'MON00.PIC', 0
__zstr_0bd7:
__zdseg_0bd7:
    db 'SOUND00.SND', 0
__zdseg_0be3:
    db 'SCORE00', 0
%include "ds/data/score_ext_csf.asm"       ; 0x10d4b

%include "ds/data/score_ext_pbl.asm"       ; 0x10d50

%include "ds/data/score_ext_pba.asm"       ; 0x10d55

__zdseg_0bfa:

    db 'VINIT', 0
    db 'VBASE', 0
    db 'VPCVW', 0
    db 'VPCLV', 0
    db 'VPCMK', 0
    db 'VMAZE', 0
    db 'VMEXT', 0
    db 'VMELE', 0
    db 'VPOPS', 0
    db 'VMEXE', 0
    db 'VDOPT', 0
    db 'VTREA', 0
    db 'VMNPC', 0

__zdseg_0c48:
    db 0x2e, 0x6f, 0x76, 0x72, 0x00
__zdseg_0c4d:

    db 'Error %d loading overlay: %s$', 0
    db 0x00

; first equ __zbss_0d02 - __zdseg_start
%include "shared/data/endmarker.asm"           ; 0x10dcc

bss_b198 equ __zbss_b198 - __zdseg_start
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

__zdseg_0c9e:

    db 0x00
    db 'Too many args.', 0

__zdseg_0cae:

    db 'STACK OVERFLOW, INCREASE STACK SIZE'
    db 0x0a, 0x00, 0x00

%include "shared/data/stksiz.asm"              ; 0x10e34

%include "shared/data/ioflg.asm"               ; 0x10e3c

%include "shared/data/ttrd.asm"                ; 0x10e50

%include "shared/data/ttwr.asm"                ; 0x10e52

%include "shared/data/Eol.asm"                 ; 0x10e54

__zdseg_0cf5:
    db 0x0d

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
    resb 0x10ba
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
    resb 0x0142
__zbss_5b3e:
    resb 0x0002
__zbss_5b40:
    resb 0x0002
__zbss_5b42:
    resb 0x0002
__zbss_5b44:
    resb 0x0002
__zbss_5b46:
    resb 0x000f
__zbss_5b55:
    resb 0x0017
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
    resb 0x0014
__zbss_5c08:
    resb 0x0002
__zbss_5c0a:
    resb 0x0006
__zbss_5c10:
    resb 0x0008
__zbss_5c18:
    resb 0x001c
__zbss_5c34:
    resb 0x01f6
__zbss_5e2a:
    resb 0x0b9e
__zbss_69c8:
    resb 0x0002
__zbss_69ca:
    resb 0x0050
__zbss_6a1a:
    resb 0x0004
__zbss_6a1e:
    resb 0x0004
__zbss_6a22:
    resb 0x000a
__zbss_6a2c:
    resb 0x0014
__zbss_6a40:
    resb 0x000a
__zbss_6a4a:
    resb 0x0077
__zbss_6ac1:
    resb 0x00b4
__zbss_6b75:
    resb 0x02f7
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
    resb 0x0030
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
    resb 0x0004
__zbss_84ec:
    resb 0x01dc
__zbss_86c8:
    resb 0x0141
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
    resb 0x0106
__zbss_919e:
    resb 0x000a
__zbss_91a8:
    resb 0x04c2
__zbss_966a:
    resb 0x04a0
__zbss_9b0a:
    resb 0x0002
__zbss_9b0c:
    resb 0x0002
__zbss_9b0e:
    resb 0x0050
__zbss_9b5e:
    resb 0x0072
__zbss_9bd0:
    resb 0x01c0
__zbss_9d90:
    resb 0x0714
__zbss_a4a4:
    resb 0x0106
__zbss_a5aa:
    resb 0x0002
__zbss_a5ac:
    resb 0x0004
__zbss_a5b0:
    resb 0x0002
__zbss_a5b2:
    resb 0x0002
__zbss_a5b4:
    resb 0x0002
__zbss_a5b6:
    resb 0x0002
__zbss_a5b8:
    resb 0x0002
__zbss_a5ba:
    resb 0x0002
__zbss_a5bc:
    resb 0x0002
__zbss_a5be:
    resb 0x0008
__zbss_a5c6:
    resb 0x0008
__zbss_a5ce:
    resb 0x0002
__zbss_a5d0:
    resb 0x0002
__zbss_a5d2:
    resb 0x0002
__zbss_a5d4:
    resb 0x0002
__zbss_a5d6:
    resb 0x0002
__zbss_a5d8:
    resb 0x0002
__zbss_a5da:
    resb 0x0008
__zbss_a5e2:
    resb 0x0002
__zbss_a5e4:
    resb 0x000e
__zbss_a5f2:
    resb 0x0008
__zbss_a5fa:
    resb 0x0002
__zbss_a5fc:
    resb 0x0002
__zbss_a5fe:
    resb 0x0002
__zbss_a600:
    resb 0x0b98
__zbss_b198:
    resb 0x4000
__zstack_top:
