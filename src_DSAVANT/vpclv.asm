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
    dw (__zdata_start - __zcode_start)       ; 0x54a2 ; o_csize: code size in bytes
    dw __zdseg_end                           ; 0x9098 ; o_dorg: data load origin (memory offset)
    dw (__zimage_end - __zdata_start)        ; 0x0370 ; o_dsize: initialized data size
    dw __zobss_end - __zimage_end            ; 0x03a4 ; o_bss: uninitialized data size
    dw aztec_ovbgn - IMAGE_BASE + __zres_end ; 0xa4b9 ; o_entry: overlay entry offset (CS)

__zcode_start:
dseg_9098 equ __zdseg_end + (__zdseg_9098 - __zdata_start)
draw_spell_cost_dseg294 equ __zdseg_end + (__zdseg_909b - __zdata_start)
api_idx_0050_SQVG_dseg175 equ __zdseg_end + (__zdseg_909f - __zdata_start)
dseg_90a5 equ __zdseg_end + (__zdseg_90a5 - __zdata_start)
dseg_90b4 equ __zdseg_end + (__zdseg_90b4 - __zdata_start)
dseg_90c3 equ __zdseg_end + (__zdseg_90c3 - __zdata_start)
dseg_90d2 equ __zdseg_end + (__zdseg_90d2 - __zdata_start)
dseg_90e1 equ __zdseg_end + (__zdseg_90e1 - __zdata_start)
dseg_90f0 equ __zdseg_end + (__zdseg_90f0 - __zdata_start)
dseg_90ff equ __zdseg_end + (__zdseg_90ff - __zdata_start)
dseg_910e equ __zdseg_end + (__zdseg_910e - __zdata_start)
dseg_911d equ __zdseg_end + (__zdseg_911d - __zdata_start)
dseg_912c equ __zdseg_end + (__zdseg_912c - __zdata_start)
dseg_913b equ __zdseg_end + (__zdseg_913b - __zdata_start)
dseg_914a equ __zdseg_end + (__zdseg_914a - __zdata_start)
dseg_9159 equ __zdseg_end + (__zdseg_9159 - __zdata_start)
dseg_9168 equ __zdseg_end + (__zdseg_9168 - __zdata_start)
dseg_9177 equ __zdseg_end + (__zdseg_9177 - __zdata_start)
dseg_9186 equ __zdseg_end + (__zdseg_9186 - __zdata_start)
dseg_9195 equ __zdseg_end + (__zdseg_9195 - __zdata_start)
dseg_91a4 equ __zdseg_end + (__zdseg_91a4 - __zdata_start)
dseg_91b3 equ __zdseg_end + (__zdseg_91b3 - __zdata_start)
dseg_91c2 equ __zdseg_end + (__zdseg_91c2 - __zdata_start)
profession_0_skill_group_0 equ __zdseg_end + (__zprofession_0_skill_group_0 - __zdata_start)
profession_0_skill_group_1 equ __zdseg_end + (__zprofession_0_skill_group_1 - __zdata_start)
profession_0_skill_group_2 equ __zdseg_end + (__zprofession_0_skill_group_2 - __zdata_start)
profession_0_skill_group_3 equ __zdseg_end + (__zprofession_0_skill_group_3 - __zdata_start)
profession_1_skill_group_0 equ __zdseg_end + (__zprofession_1_skill_group_0 - __zdata_start)
profession_1_skill_group_1 equ __zdseg_end + (__zprofession_1_skill_group_1 - __zdata_start)
profession_1_skill_group_2 equ __zdseg_end + (__zprofession_1_skill_group_2 - __zdata_start)
profession_1_skill_group_3 equ __zdseg_end + (__zprofession_1_skill_group_3 - __zdata_start)
profession_2_skill_group_0 equ __zdseg_end + (__zprofession_2_skill_group_0 - __zdata_start)
profession_2_skill_group_1 equ __zdseg_end + (__zprofession_2_skill_group_1 - __zdata_start)
profession_2_skill_group_2 equ __zdseg_end + (__zprofession_2_skill_group_2 - __zdata_start)
profession_2_skill_group_3 equ __zdseg_end + (__zprofession_2_skill_group_3 - __zdata_start)
profession_3_skill_group_0 equ __zdseg_end + (__zprofession_3_skill_group_0 - __zdata_start)
profession_3_skill_group_1 equ __zdseg_end + (__zprofession_3_skill_group_1 - __zdata_start)
profession_3_skill_group_2 equ __zdseg_end + (__zprofession_3_skill_group_2 - __zdata_start)
profession_3_skill_group_3 equ __zdseg_end + (__zprofession_3_skill_group_3 - __zdata_start)
profession_4_skill_group_0 equ __zdseg_end + (__zprofession_4_skill_group_0 - __zdata_start)
profession_4_skill_group_1 equ __zdseg_end + (__zprofession_4_skill_group_1 - __zdata_start)
profession_4_skill_group_2 equ __zdseg_end + (__zprofession_4_skill_group_2 - __zdata_start)
profession_4_skill_group_3 equ __zdseg_end + (__zprofession_4_skill_group_3 - __zdata_start)
profession_5_skill_group_0 equ __zdseg_end + (__zprofession_5_skill_group_0 - __zdata_start)
profession_5_skill_group_1 equ __zdseg_end + (__zprofession_5_skill_group_1 - __zdata_start)
profession_5_skill_group_2 equ __zdseg_end + (__zprofession_5_skill_group_2 - __zdata_start)
profession_5_skill_group_3 equ __zdseg_end + (__zprofession_5_skill_group_3 - __zdata_start)
profession_6_skill_group_0 equ __zdseg_end + (__zprofession_6_skill_group_0 - __zdata_start)
profession_6_skill_group_1 equ __zdseg_end + (__zprofession_6_skill_group_1 - __zdata_start)
profession_6_skill_group_2 equ __zdseg_end + (__zprofession_6_skill_group_2 - __zdata_start)
profession_6_skill_group_3 equ __zdseg_end + (__zprofession_6_skill_group_3 - __zdata_start)
profession_7_skill_group_0 equ __zdseg_end + (__zprofession_7_skill_group_0 - __zdata_start)
profession_7_skill_group_1 equ __zdseg_end + (__zprofession_7_skill_group_1 - __zdata_start)
profession_7_skill_group_2 equ __zdseg_end + (__zprofession_7_skill_group_2 - __zdata_start)
profession_7_skill_group_3 equ __zdseg_end + (__zprofession_7_skill_group_3 - __zdata_start)
profession_8_skill_group_0 equ __zdseg_end + (__zprofession_8_skill_group_0 - __zdata_start)
profession_8_skill_group_1 equ __zdseg_end + (__zprofession_8_skill_group_1 - __zdata_start)
profession_8_skill_group_2 equ __zdseg_end + (__zprofession_8_skill_group_2 - __zdata_start)
profession_8_skill_group_3 equ __zdseg_end + (__zprofession_8_skill_group_3 - __zdata_start)
profession_9_skill_group_0 equ __zdseg_end + (__zprofession_9_skill_group_0 - __zdata_start)
profession_9_skill_group_1 equ __zdseg_end + (__zprofession_9_skill_group_1 - __zdata_start)
profession_9_skill_group_2 equ __zdseg_end + (__zprofession_9_skill_group_2 - __zdata_start)
profession_9_skill_group_3 equ __zdseg_end + (__zprofession_9_skill_group_3 - __zdata_start)
profession_10_skill_group_0 equ __zdseg_end + (__zprofession_10_skill_group_0 - __zdata_start)
profession_10_skill_group_1 equ __zdseg_end + (__zprofession_10_skill_group_1 - __zdata_start)
profession_10_skill_group_2 equ __zdseg_end + (__zprofession_10_skill_group_2 - __zdata_start)
profession_10_skill_group_3 equ __zdseg_end + (__zprofession_10_skill_group_3 - __zdata_start)
profession_11_skill_group_0 equ __zdseg_end + (__zprofession_11_skill_group_0 - __zdata_start)
profession_11_skill_group_1 equ __zdseg_end + (__zprofession_11_skill_group_1 - __zdata_start)
profession_11_skill_group_2 equ __zdseg_end + (__zprofession_11_skill_group_2 - __zdata_start)
profession_11_skill_group_3 equ __zdseg_end + (__zprofession_11_skill_group_3 - __zdata_start)
profession_12_skill_group_0 equ __zdseg_end + (__zprofession_12_skill_group_0 - __zdata_start)
profession_12_skill_group_1 equ __zdseg_end + (__zprofession_12_skill_group_1 - __zdata_start)
profession_12_skill_group_2 equ __zdseg_end + (__zprofession_12_skill_group_2 - __zdata_start)
profession_12_skill_group_3 equ __zdseg_end + (__zprofession_12_skill_group_3 - __zdata_start)
profession_13_skill_group_0 equ __zdseg_end + (__zprofession_13_skill_group_0 - __zdata_start)
profession_13_skill_group_1 equ __zdseg_end + (__zprofession_13_skill_group_1 - __zdata_start)
profession_13_skill_group_2 equ __zdseg_end + (__zprofession_13_skill_group_2 - __zdata_start)
profession_13_skill_group_3 equ __zdseg_end + (__zprofession_13_skill_group_3 - __zdata_start)
dseg_93e5 equ __zdseg_end + (__zdseg_93e5 - __zdata_start)
dseg_93e9 equ __zdseg_end + (__zdseg_93e9 - __zdata_start)
dseg_93eb equ __zdseg_end + (__zdseg_93eb - __zdata_start)
dseg_93ed equ __zdseg_end + (__zdseg_93ed - __zdata_start)
dseg_93ee equ __zdseg_end + (__zdseg_93ee - __zdata_start)
dseg_93ef equ __zdseg_end + (__zdseg_93ef - __zdata_start)
dseg_93f0 equ __zdseg_end + (__zdseg_93f0 - __zdata_start)
save_si equ __zdseg_end + (__zsave_si - __zdata_start)
save_di equ __zdseg_end + (__zsave_di - __zdata_start)
save_sp equ __zdseg_end + (__zsave_sp - __zdata_start)
save_bp equ __zdseg_end + (__zsave_bp - __zdata_start)
save_ret equ __zdseg_end + (__zsave_ret - __zdata_start)
_Uorg equ __zdseg_end + (__zobss_9408 - __zdata_start)
window_record equ __zdseg_end + (__zobss_9408 - __zdata_start)
api_idx_007c_OKMO_bss24 equ __zdseg_end + (__zobss_9416 - __zdata_start)
api_idx_007c_OKMO_bss19 equ __zdseg_end + (__zobss_9418 - __zdata_start)
api_idx_007c_OKMO_bss49 equ __zdseg_end + (__zobss_941a - __zdata_start)
api_idx_007c_OKMO_bss44 equ __zdseg_end + (__zobss_941c - __zdata_start)
roster_screen_b equ __zdseg_end + (__zobss_941e - __zdata_start)
roster_screen_a equ __zdseg_end + (__zobss_9420 - __zdata_start)
api_idx_0080_MHMQ_bss24 equ __zdseg_end + (__zobss_9422 - __zdata_start)
api_idx_0080_MHMQ_bss19 equ __zdseg_end + (__zobss_9424 - __zdata_start)
api_idx_0080_MHMQ_bss49 equ __zdseg_end + (__zobss_9426 - __zdata_start)
api_idx_0080_MHMQ_bss44 equ __zdseg_end + (__zobss_9428 - __zdata_start)
realm_panel_cache_high equ __zdseg_end + (__zobss_942a - __zdata_start)
realm_panel_cache_low equ __zdseg_end + (__zobss_942c - __zdata_start)
saved_screen equ __zdseg_end + (__zobss_9432 - __zdata_start)
saved_screen_hi equ __zdseg_end + (__zobss_9434 - __zdata_start)
banner_offset equ __zdseg_end + (__zobss_9436 - __zdata_start)
banner_plain_flag equ __zdseg_end + (__zobss_9438 - __zdata_start)
loc_TTSP_bss184 equ __zdseg_end + (__zobss_943a - __zdata_start)
known_spell_ids equ __zdseg_end + (__zobss_943c - __zdata_start)
party_redraw_interval equ __zdseg_end + (__zobss_948c - __zdata_start)
item_page equ __zdseg_end + (__zobss_948e - __zdata_start)
item_page_alt_mode equ __zdseg_end + (__zobss_9490 - __zdata_start)
item_page_drawn equ __zdseg_end + (__zobss_9492 - __zdata_start)
item_slot_names equ __zdseg_end + (__zobss_9494 - __zdata_start)
item_slot_attr equ __zdseg_end + (__zobss_9570 - __zdata_start)
item_slot_color equ __zdseg_end + (__zobss_9584 - __zdata_start)
skill_availability_flags equ __zdseg_end + (__zobss_9598 - __zdata_start)
both_high_stats_flag equ __zdseg_end + (__zobss_95d0 - __zdata_start)
slot_prompt_text equ __zdseg_end + (__zobss_95dc - __zdata_start)
slot_value equ __zdseg_end + (__zobss_95f0 - __zdata_start)
slot_value2 equ __zdseg_end + (__zobss_95f4 - __zdata_start)
slot_label equ __zdseg_end + (__zobss_95f8 - __zdata_start)
slot_limit equ __zdseg_end + (__zobss_96c0 - __zdata_start)
bss_9704 equ __zdseg_end + (__zobss_9704 - __zdata_start)
_Uend equ __zdseg_end + (__zobss_end - __zdata_start)

%include "vpclv/ovmain.asm"                ; 0x000e

%include "shared/ovr/load_screen_file_immediate.asm" ; 0x0022

%include "shared/ovr/api_idx_0012_PGSL.asm"     ; 0x0086

%include "shared/ovr/draw_party_slot_letters.asm" ; 0x0202

%include "shared/ovr/draw_member_realm_points.asm" ; 0x0281

%include "shared/ovr/advance_party_slot_frames.asm" ; 0x0331

%include "shared/ovr/clamp_value_to_range.asm"  ; 0x038c

%include "shared/ovr/api_idx_0010_STNH.asm"     ; 0x03cd

%include "shared/ovr/draw_title_banner.asm"     ; 0x04ca

%include "shared/ovr/api_idx_007c_OKMO.asm"     ; 0x0572

%include "shared/ovr/fill_rectangle_border.asm" ; 0x0dc0

%include "shared/ovr/collect_known_spells.asm"  ; 0x0e3b

%include "shared/ovr/draw_marker_glyph.asm"     ; 0x0eac

%include "shared/ovr/draw_power_digit.asm"      ; 0x0eea

%include "shared/ovr/draw_spell_cost.asm"              ; 0x0f76

%include "shared/ovr/draw_realm_spell_points.asm" ; 0x1017

%include "shared/ovr/periodic_party_redraw.asm" ; 0x10b0

%include "shared/ovr/api_idx_0050_SQVG.asm"     ; 0x1141

%include "vpclv/api_idx_00ca_KSLQ.asm"     ; 0x1e31

%include "shared/ovr/loc_TTSP.asm"              ; 0x20e3

%include "vpclv/loc_HJRN.asm"              ; 0x2189

%include "shared/ovr/set_party_hand_attack.asm" ; 0x21be

%include "shared/ovr/draw_split_two_line_text.asm" ; 0x2447

%include "shared/ovr/api_idx_0080_MHMQ.asm"     ; 0x24f0

%include "shared/ovr/draw_item_slot_label.asm"  ; 0x2717

%include "shared/ovr/draw_member_item_page.asm" ; 0x27e3

%include "shared/ovr/loc_NJOH.asm"              ; 0x2a32

%include "shared/ovr/init_skill_cell_positions.asm" ; 0x2a85

%include "shared/ovr/update_party_stat_adjustments.asm" ; 0x2b1a

%include "vpclv/api_idx_0052_NKUS.asm"     ; 0x2c0c

%include "shared/ovr/display_centered_message.asm" ; 0x3288

%include "vpclv/api_idx_0020_ORSV.asm"     ; 0x333c

%include "shared/ovr/set_party_skill_flags.asm" ; 0x34cd

%include "shared/ovr/prepare_skill_list.asm"    ; 0x35fc

%include "shared/ovr/draw_known_spell_values.asm" ; 0x3851

%include "shared/ovr/draw_slot_value_row.asm"   ; 0x390b

%include "vpclv/api_idx_0032_VJTR.asm"     ; 0x3a7a

%include "vpclv/api_idx_0088_LVJM.asm"     ; 0x3f9e

%include "shared/ovr/roll_slot_values.asm"      ; 0x4140

%include "vpclv/api_idx_0002_QPTM.asm"     ; 0x4270

%include "vpclv/loc_LSTQ.asm"              ; 0x4310

%include "vpclv/api_idx_00ac_RQRT.asm"     ; 0x45e0

%include "vpclv/api_idx_0004_GJKI.asm"     ; 0x4884

%include "vpclv/api_idx_0018_SRUO.asm"     ; 0x4955

%include "vpclv/api_idx_00b4_QLQS.asm"     ; 0x4cc5

%include "vpclv/api_idx_0006_KHMT.asm"     ; 0x4e03

%include "vpclv/api_idx_00a4_PTJS.asm"     ; 0x4e9e

%include "vpclv/api_idx_0046_NOMK.asm"     ; 0x4fca

%include "shared/ovr/draw_party_glyph_row.asm"  ; 0x50a1

%include "vpclv/api_idx_000c_NVIQ.asm"     ; 0x5161

%include "shared/ovr/aztec_ovbgn.asm"           ; 0x5472

__zdata_start:
%include "vpclv/data/dseg_9098.asm"        ; 0x54b0

%include "shared/data/profession_skill_groups.asm" ; 0x55e9

%include "vpclv/data/dseg_93e5.asm"        ; 0x57fd

%include "shared/data/overlay_saved_registers.asm" ; 0x5816


__zimage_end:
absolute __zimage_end
__zobss_9408:
    resb 0x000e
__zobss_9416:
    resb 0x0002
__zobss_9418:
    resb 0x0002
__zobss_941a:
    resb 0x0002
__zobss_941c:
    resb 0x0002
__zobss_941e:
    resb 0x0002
__zobss_9420:
    resb 0x0002
__zobss_9422:
    resb 0x0002
__zobss_9424:
    resb 0x0002
__zobss_9426:
    resb 0x0002
__zobss_9428:
    resb 0x0002
__zobss_942a:
    resb 0x0002
__zobss_942c:
    resb 0x0006
__zobss_9432:
    resb 0x0002
__zobss_9434:
    resb 0x0002
__zobss_9436:
    resb 0x0002
__zobss_9438:
    resb 0x0002
__zobss_943a:
    resb 0x0002
__zobss_943c:
    resb 0x0050
__zobss_948c:
    resb 0x0002
__zobss_948e:
    resb 0x0002
__zobss_9490:
    resb 0x0002
__zobss_9492:
    resb 0x0002
__zobss_9494:
    resb 0x00dc
__zobss_9570:
    resb 0x0014
__zobss_9584:
    resb 0x0014
__zobss_9598:
    resb 0x0038
__zobss_95d0:
    resb 0x000c
__zobss_95dc:
    resb 0x0014
__zobss_95f0:
    resb 0x0004
__zobss_95f4:
    resb 0x0004
__zobss_95f8:
    resb 0x00c8
__zobss_96c0:
    resb 0x0044
__zobss_9704:
    resb 0x00a8
__zobss_end:
