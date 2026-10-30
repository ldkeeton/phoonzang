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
    dw aztec_ovbgn - IMAGE_BASE + __zres_end ; 0xea0c ; o_entry: overlay entry offset (CS)

__zcode_start:
dseg_9098 equ __zdseg_end + (__zdseg_9098 - __zdata_start)
dseg_90a0 equ __zdseg_end + (__zdseg_90a0 - __zdata_start)
dseg_90a2 equ __zdseg_end + (__zdseg_90a2 - __zdata_start)
dseg_90a9 equ __zdseg_end + (__zdseg_90a9 - __zdata_start)
dseg_90b0 equ __zdseg_end + (__zdseg_90b0 - __zdata_start)
dseg_90b1 equ __zdseg_end + (__zdseg_90b1 - __zdata_start)
dseg_90b2 equ __zdseg_end + (__zdseg_90b2 - __zdata_start)
dseg_90b3 equ __zdseg_end + (__zdseg_90b3 - __zdata_start)
dseg_90b4 equ __zdseg_end + (__zdseg_90b4 - __zdata_start)
dseg_90b5 equ __zdseg_end + (__zdseg_90b5 - __zdata_start)
dseg_90b6 equ __zdseg_end + (__zdseg_90b6 - __zdata_start)
dseg_90b7 equ __zdseg_end + (__zdseg_90b7 - __zdata_start)
dseg_90b8 equ __zdseg_end + (__zdseg_90b8 - __zdata_start)
dseg_90b9 equ __zdseg_end + (__zdseg_90b9 - __zdata_start)
dseg_90ba equ __zdseg_end + (__zdseg_90ba - __zdata_start)
dseg_90bb equ __zdseg_end + (__zdseg_90bb - __zdata_start)
dseg_90c4 equ __zdseg_end + (__zdseg_90c4 - __zdata_start)
dseg_90cd equ __zdseg_end + (__zdseg_90cd - __zdata_start)
dseg_90d3 equ __zdseg_end + (__zdseg_90d3 - __zdata_start)
dseg_90d5 equ __zdseg_end + (__zdseg_90d5 - __zdata_start)
dseg_90d8 equ __zdseg_end + (__zdseg_90d8 - __zdata_start)
dseg_90da equ __zdseg_end + (__zdseg_90da - __zdata_start)
dseg_90dc equ __zdseg_end + (__zdseg_90dc - __zdata_start)
dseg_90e2 equ __zdseg_end + (__zdseg_90e2 - __zdata_start)
dseg_90e3 equ __zdseg_end + (__zdseg_90e3 - __zdata_start)
dseg_90e9 equ __zdseg_end + (__zdseg_90e9 - __zdata_start)
dseg_90eb equ __zdseg_end + (__zdseg_90eb - __zdata_start)
dseg_90ee equ __zdseg_end + (__zdseg_90ee - __zdata_start)
dseg_90f4 equ __zdseg_end + (__zdseg_90f4 - __zdata_start)
dseg_90fa equ __zdseg_end + (__zdseg_90fa - __zdata_start)
dseg_9100 equ __zdseg_end + (__zdseg_9100 - __zdata_start)
spell_screen_temp_file equ __zdseg_end + (__zspell_screen_temp_file - __zdata_start)
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
bss_9154 equ __zdseg_end + (__zobss_9154 - __zdata_start)
treasure_message_row equ __zdseg_end + (__zobss_91d4 - __zdata_start)
bss_91d6 equ __zdseg_end + (__zobss_91d6 - __zdata_start)
bss_91fe equ __zdseg_end + (__zobss_91fe - __zdata_start)
bss_9200 equ __zdseg_end + (__zobss_9200 - __zdata_start)
bss_9230 equ __zdseg_end + (__zobss_9230 - __zdata_start)
bss_9240 equ __zdseg_end + (__zobss_9240 - __zdata_start)
bss_9250 equ __zdseg_end + (__zobss_9250 - __zdata_start)
bss_9252 equ __zdseg_end + (__zobss_9252 - __zdata_start)
bss_9342 equ __zdseg_end + (__zobss_9342 - __zdata_start)
bss_9372 equ __zdseg_end + (__zobss_9372 - __zdata_start)
list_row_marked equ __zdseg_end + (__zobss_93ae - __zdata_start)
bss_93b0 equ __zdseg_end + (__zobss_93b0 - __zdata_start)
list_row_glyph equ __zdseg_end + (__zobss_93d6 - __zdata_start)
bss_93d8 equ __zdseg_end + (__zobss_93d8 - __zdata_start)
list_row_name equ __zdseg_end + (__zobss_93fe - __zdata_start)
bss_9414 equ __zdseg_end + (__zobss_9414 - __zdata_start)
list_row_count equ __zdseg_end + (__zobss_95b6 - __zdata_start)
bss_95b8 equ __zdseg_end + (__zobss_95b8 - __zdata_start)
bss_95de equ __zdseg_end + (__zobss_95de - __zdata_start)
bss_95e0 equ __zdseg_end + (__zobss_95e0 - __zdata_start)
cast_spell_target equ __zdseg_end + (__zobss_95e2 - __zdata_start)
bss_95e4 equ __zdseg_end + (__zobss_95e4 - __zdata_start)
bss_95e6 equ __zdseg_end + (__zobss_95e6 - __zdata_start)
bss_95e8 equ __zdseg_end + (__zobss_95e8 - __zdata_start)
bss_960e equ __zdseg_end + (__zobss_960e - __zdata_start)
bss_9610 equ __zdseg_end + (__zobss_9610 - __zdata_start)
bss_9636 equ __zdseg_end + (__zobss_9636 - __zdata_start)
bss_9638 equ __zdseg_end + (__zobss_9638 - __zdata_start)
bss_965e equ __zdseg_end + (__zobss_965e - __zdata_start)
known_spell_ids equ __zdseg_end + (__zobss_966a - __zdata_start)
_Uend equ __zdseg_end + (__zobss_end - __zdata_start)

%include "vtrea/ovmain.asm"                ; 0x000e

%include "vtrea/draw_animation_frame.asm"  ; 0x0090

%include "vtrea/draw_treasure_panel.asm"   ; 0x0111

%include "shared/ovr/draw_party_glyph_row.asm"  ; 0x067b

%include "vtrea/draw_animated_glyph_pair.asm" ; 0x073b

%include "vtrea/update_treasure_frame.asm" ; 0x07de

%include "vtrea/loc_IKLI.asm"              ; 0x086b

%include "vtrea/api_idx_0004_UQUT.asm"     ; 0x08eb

%include "vtrea/redraw_treasure_caption.asm" ; 0x0954

%include "vtrea/loc_NQGV.asm"              ; 0x0a1a

flush_glyph_buffer.wait_for_maze_input_or_refresh1 equ loc_NQGV
%include "shared/ovr/flush_glyph_buffer.asm"    ; 0x0a6a

%include "vtrea/api_idx_0090_LKIM.asm"     ; 0x0b29

process_scene_message_words.loc1 equ api_idx_0090_LKIM
%include "shared/ovr/process_scene_message_words.asm" ; 0x0d24

%include "vtrea/loc_KIOQ.asm"              ; 0x0d87

%include "vtrea/api_idx_0004_VQUG.asm"     ; 0x0e03

%include "vtrea/show_treasure_message.asm" ; 0x0eb2

%include "shared/ovr/try_raise_member_skill.asm" ; 0x0f54

%include "vtrea/api_idx_0002_RJQH.asm"     ; 0x0f96

%include "vtrea/api_idx_005a_SIOK.asm"     ; 0x10fb

%include "vtrea/api_idx_003e_JGVR.asm"     ; 0x11bc

%include "vtrea/api_idx_0056_VTNO.asm"     ; 0x12cc

%include "vtrea/api_idx_0050_MPOT.asm"     ; 0x13e0

%include "vtrea/api_idx_0004_VSSI.asm"     ; 0x1447

%include "vtrea/api_idx_0006_UHJH.asm"     ; 0x148d

%include "vtrea/api_idx_00b8_HONM.asm"     ; 0x14e7

%include "vtrea/api_idx_0060_VTPV.asm"     ; 0x1fd5

%include "vtrea/loc_OVQV.asm"              ; 0x242c

%include "vtrea/api_idx_0002_PMUV.asm"     ; 0x251a

%include "vtrea/api_idx_0084_ILQU.asm"     ; 0x25ab

%include "shared/ovr/api_idx_0008_RQRL.asm"     ; 0x3552

%include "shared/ovr/api_idx_0004_UJRL.asm"     ; 0x35de

%include "shared/ovr/api_idx_0006_TMNI.asm"     ; 0x36af

%include "shared/ovr/api_idx_0006_KPLV.asm"     ; 0x3706

%include "shared/ovr/api_idx_0018_RGOS.asm"     ; 0x37b6

%include "shared/ovr/draw_list_rows.asm"        ; 0x38b3

%include "shared/ovr/loc_HTKI.asm"              ; 0x3a15

%include "vtrea/api_idx_0038_NNNK.asm"     ; 0x3a56

%include "vtrea/api_idx_0054_NJIS.asm"     ; 0x4254

%include "shared/ovr/loc_QQUT.asm"              ; 0x4318

%include "vtrea/apply_spell_effect_alt.asm" ; 0x4368

%include "vtrea/cast_spell_from_dialog.asm" ; 0x4ad8

%include "vtrea/api_idx_0092_GSQH.asm"     ; 0x4bcc

%include "vtrea/api_idx_007a_QUNG.asm"     ; 0x4f0c

%include "shared/ovr/api_idx_004c_RQSO.asm"     ; 0x51d7

%include "shared/ovr/api_idx_0004_ONJT.asm"     ; 0x52ec

%include "vtrea/api_idx_0040_LIPH.asm"     ; 0x5348

%include "vtrea/api_idx_0006_OUPU.asm"     ; 0x550e

%include "shared/ovr/replace_slashes_with_spaces.asm" ; 0x5689

%include "shared/ovr/loc_GMVH.asm"              ; 0x56af

%include "shared/ovr/give_quest_map.asm"        ; 0x56cc

%include "vtrea/loc_HUIS.asm"              ; 0x5789

%include "vtrea/distribute_survivor_experience.asm" ; 0x5d80

%include "shared/ovr/api_idx_0006_POPS.asm"     ; 0x5e88

api_idx_0004_GHVL     equ log_maze_change
jumptable_5fd3_case_0 equ log_maze_change.jumptable_case1
jumptable_5fd3_case_1 equ log_maze_change.jumptable_case2
jumptable_5fd3_case_5 equ log_maze_change.jumptable_case3
jumptable_5fd3_case_6 equ log_maze_change.jumptable_case4
jumptable_5fd3        equ log_maze_change.jumptable1
%include "shared/ovr/log_maze_change.asm"     ; 0x5efe

%include "vtrea/api_idx_006a_NKMN.asm"     ; 0x5fef

%include "vtrea/api_idx_0074_MHUG.asm"     ; 0x66eb

%include "shared/ovr/clear_bit_pair.asm"        ; 0x6e69

%include "vtrea/api_idx_0004_RTSK.asm"     ; 0x6ead

%include "vtrea/loc_RVKS.asm"              ; 0x6f41

%include "vtrea/api_idx_0034_NSGM.asm"     ; 0x6ff5

%include "vtrea/api_idx_0072_LQIT.asm"     ; 0x7151

%include "shared/ovr/update_region_flag_bitmaps.asm" ; 0x7319

%include "vtrea/api_idx_00e6_QHNU.asm"     ; 0x73ae

%include "shared/ovr/mark_region_bits.asm"      ; 0x782b

%include "shared/ovr/loc_QTKU.asm"              ; 0x788f

%include "vtrea/api_idx_0074_JJVR.asm"     ; 0x78ed

%include "vtrea/loc_SNOI.asm"              ; 0x7d99

%include "vtrea/loc_VSIT.asm"              ; 0x7eba

%include "vtrea/run_state_0f_scene.asm"    ; 0x7f5a

%include "vtrea/run_state_15_scene.asm"    ; 0x809e

%include "vtrea/run_state_1a_scene.asm"    ; 0x811f

%include "vtrea/run_state_1c_scene.asm"    ; 0x81b6

%include "vtrea/run_state_1d_scene.asm"    ; 0x81db

%include "shared/ovr/draw_split_two_line_text.asm" ; 0x8200

%include "shared/ovr/loc_RULJ.asm"              ; 0x82a9

%include "shared/ovr/api_idx_0008_RORM.asm"     ; 0x82b8

%include "vtrea/loc_IOMS.asm"              ; 0x8441

%include "shared/ovr/draw_party_slot_letters.asm" ; 0x893e

%include "shared/ovr/advance_party_slot_frames.asm" ; 0x89bd

%include "shared/ovr/collect_known_spells.asm"  ; 0x8a18

%include "shared/ovr/draw_marker_glyph.asm"     ; 0x8a89

%include "shared/ovr/draw_power_digit.asm"      ; 0x8ac7

draw_spell_cost.dseg1 equ dseg_9100
%include "shared/ovr/draw_spell_cost.asm"       ; 0x8b53

%include "shared/ovr/draw_realm_spell_points.asm" ; 0x8bf4

%include "shared/ovr/periodic_party_redraw.asm" ; 0x8c8d

jumptable_9967_case_0 equ pick_spell_dialog.jumptable_case1
jumptable_9967_case_1 equ pick_spell_dialog.jumptable_case2
jumptable_9967_case_3 equ pick_spell_dialog.jumptable_case3
jumptable_9967_case_4 equ pick_spell_dialog.jumptable_case4
jumptable_9967        equ pick_spell_dialog.jumptable1
%include "shared/ovr/pick_spell_dialog.asm"     ; 0x8d1e

%include "shared/ovr/aztec_ovbgn.asm"           ; 0x99c5

%include "shared/ovr/aztec_cswt.asm"            ; 0x9a03

__zdata_start:
%include "vtrea/data/dseg_9098.asm"        ; 0x9a1b

%include "shared/data/spell_screen_temp_file.asm" ; 0x9a87

%include "shared/data/save_si.asm"          ; 0x9a8d

%include "shared/data/save_di.asm"          ; 0x9a8f

%include "shared/data/save_sp.asm"          ; 0x9a91

%include "shared/data/save_bp.asm"          ; 0x9a93

%include "shared/data/save_ret.asm"         ; 0x9a95


__zimage_end:
absolute __zimage_end
__zobss_9114:
    resb 0x0002
__zobss_9116:
    resb 0x0002
__zobss_9118:
    resb 0x0002
__zobss_911a:
    resb 0x0002
__zobss_911c:
    resb 0x0002
__zobss_911e:
    resb 0x0002
__zobss_9120:
    resb 0x0002
__zobss_9122:
    resb 0x0002
__zobss_9124:
    resb 0x0002
__zobss_9126:
    resb 0x0002
__zobss_9128:
    resb 0x0028
__zobss_9150:
    resb 0x0002
__zobss_9152:
    resb 0x0002
__zobss_9154:
    resb 0x0080
__zobss_91d4:
    resb 0x0002
__zobss_91d6:
    resb 0x0028
__zobss_91fe:
    resb 0x0002
__zobss_9200:
    resb 0x0030
__zobss_9230:
    resb 0x0010
__zobss_9240:
    resb 0x0010
__zobss_9250:
    resb 0x0002
__zobss_9252:
    resb 0x00f0
__zobss_9342:
    resb 0x0030
__zobss_9372:
    resb 0x003c
__zobss_93ae:
    resb 0x0002
__zobss_93b0:
    resb 0x0026
__zobss_93d6:
    resb 0x0002
__zobss_93d8:
    resb 0x0026
__zobss_93fe:
    resb 0x0016
__zobss_9414:
    resb 0x01a2
__zobss_95b6:
    resb 0x0002
__zobss_95b8:
    resb 0x0026
__zobss_95de:
    resb 0x0002
__zobss_95e0:
    resb 0x0002
__zobss_95e2:
    resb 0x0002
__zobss_95e4:
    resb 0x0002
__zobss_95e6:
    resb 0x0002
__zobss_95e8:
    resb 0x0026
__zobss_960e:
    resb 0x0002
__zobss_9610:
    resb 0x0026
__zobss_9636:
    resb 0x0002
__zobss_9638:
    resb 0x0026
__zobss_965e:
    resb 0x000c
__zobss_966a:
    resb 0x0050
__zobss_end:
