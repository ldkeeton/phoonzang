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
    dw (__zdata_start - __zcode_start)       ; 0x7023 ; o_csize: code size in bytes
    dw __zdseg_end                           ; 0x9098 ; o_dorg: data load origin (memory offset)
    dw (__zimage_end - __zdata_start)        ; 0x048c ; o_dsize: initialized data size
    dw __zobss_end - __zimage_end            ; 0x0268 ; o_bss: uninitialized data size
    dw aztec_ovbgn - IMAGE_BASE + __zres_end ; 0xbfd3 ; o_entry: overlay entry offset (CS)

__zcode_start:
pc_file_name equ __zdseg_end + (__zpc_file_name - __zdata_start)
title_panel_screen_file equ __zdseg_end + (__ztitle_panel_screen_file - __zdata_start)
choice_grid_screen_file equ __zdseg_end + (__zchoice_grid_screen_file - __zdata_start)
list_dialog_temp_file equ __zdseg_end + (__zlist_dialog_temp_file - __zdata_start)
screen_save_temp_file equ __zdseg_end + (__zscreen_save_temp_file - __zdata_start)
dseg_90bb equ __zdseg_end + (__zdseg_90bb - __zdata_start)
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
spell_cost_panel_text equ __zdseg_end + (__zspell_cost_panel_text - __zdata_start)
pick_spell_dialog_keep_frames_dseg175 equ __zdseg_end + (__zdseg_92d6 - __zdata_start)
profession_0_stat_requirements equ __zdseg_end + (__zprofession_0_stat_requirements - __zdata_start)
profession_1_stat_requirements equ __zdseg_end + (__zprofession_1_stat_requirements - __zdata_start)
profession_2_stat_requirements equ __zdseg_end + (__zprofession_2_stat_requirements - __zdata_start)
profession_3_stat_requirements equ __zdseg_end + (__zprofession_3_stat_requirements - __zdata_start)
profession_4_stat_requirements equ __zdseg_end + (__zprofession_4_stat_requirements - __zdata_start)
profession_5_stat_requirements equ __zdseg_end + (__zprofession_5_stat_requirements - __zdata_start)
profession_6_stat_requirements equ __zdseg_end + (__zprofession_6_stat_requirements - __zdata_start)
profession_7_stat_requirements equ __zdseg_end + (__zprofession_7_stat_requirements - __zdata_start)
profession_8_stat_requirements equ __zdseg_end + (__zprofession_8_stat_requirements - __zdata_start)
profession_9_stat_requirements equ __zdseg_end + (__zprofession_9_stat_requirements - __zdata_start)
profession_10_stat_requirements equ __zdseg_end + (__zprofession_10_stat_requirements - __zdata_start)
profession_11_stat_requirements equ __zdseg_end + (__zprofession_11_stat_requirements - __zdata_start)
profession_12_stat_requirements equ __zdseg_end + (__zprofession_12_stat_requirements - __zdata_start)
profession_13_stat_requirements equ __zdseg_end + (__zprofession_13_stat_requirements - __zdata_start)
dseg_935a equ __zdseg_end + (__zdseg_935a - __zdata_start)
dseg_9363 equ __zdseg_end + (__zdseg_9363 - __zdata_start)
dseg_936c equ __zdseg_end + (__zdseg_936c - __zdata_start)
dseg_9375 equ __zdseg_end + (__zdseg_9375 - __zdata_start)
dseg_937e equ __zdseg_end + (__zdseg_937e - __zdata_start)
dseg_9387 equ __zdseg_end + (__zdseg_9387 - __zdata_start)
dseg_9390 equ __zdseg_end + (__zdseg_9390 - __zdata_start)
dseg_9399 equ __zdseg_end + (__zdseg_9399 - __zdata_start)
dseg_93a2 equ __zdseg_end + (__zdseg_93a2 - __zdata_start)
dseg_93ab equ __zdseg_end + (__zdseg_93ab - __zdata_start)
dseg_93b4 equ __zdseg_end + (__zdseg_93b4 - __zdata_start)
dseg_93bd equ __zdseg_end + (__zdseg_93bd - __zdata_start)
dseg_93cc equ __zdseg_end + (__zdseg_93cc - __zdata_start)
dseg_93db equ __zdseg_end + (__zdseg_93db - __zdata_start)
dseg_93ea equ __zdseg_end + (__zdseg_93ea - __zdata_start)
dseg_93f9 equ __zdseg_end + (__zdseg_93f9 - __zdata_start)
dseg_9408 equ __zdseg_end + (__zdseg_9408 - __zdata_start)
dseg_9417 equ __zdseg_end + (__zdseg_9417 - __zdata_start)
dseg_9426 equ __zdseg_end + (__zdseg_9426 - __zdata_start)
dseg_9435 equ __zdseg_end + (__zdseg_9435 - __zdata_start)
dseg_9444 equ __zdseg_end + (__zdseg_9444 - __zdata_start)
dseg_9453 equ __zdseg_end + (__zdseg_9453 - __zdata_start)
dseg_9462 equ __zdseg_end + (__zdseg_9462 - __zdata_start)
dseg_9471 equ __zdseg_end + (__zdseg_9471 - __zdata_start)
dseg_9480 equ __zdseg_end + (__zdseg_9480 - __zdata_start)
dseg_948f equ __zdseg_end + (__zdseg_948f - __zdata_start)
dseg_949e equ __zdseg_end + (__zdseg_949e - __zdata_start)
dseg_94ad equ __zdseg_end + (__zdseg_94ad - __zdata_start)
dseg_94bc equ __zdseg_end + (__zdseg_94bc - __zdata_start)
dseg_94cb equ __zdseg_end + (__zdseg_94cb - __zdata_start)
dseg_94da equ __zdseg_end + (__zdseg_94da - __zdata_start)
portrait_data_filename equ __zdseg_end + (__zportrait_data_filename - __zdata_start)
dseg_94f6 equ __zdseg_end + (__zdseg_94f6 - __zdata_start)
dseg_9501 equ __zdseg_end + (__zdseg_9501 - __zdata_start)
dseg_950c equ __zdseg_end + (__zdseg_950c - __zdata_start)
save_si equ __zdseg_end + (__zsave_si - __zdata_start)
save_di equ __zdseg_end + (__zsave_di - __zdata_start)
save_sp equ __zdseg_end + (__zsave_sp - __zdata_start)
save_bp equ __zdseg_end + (__zsave_bp - __zdata_start)
save_ret equ __zdseg_end + (__zsave_ret - __zdata_start)
_Uorg equ __zdseg_end + (__zobss_9524 - __zdata_start)
bss_9524 equ __zdseg_end + (__zobss_9524 - __zdata_start)
bss_9526 equ __zdseg_end + (__zobss_9526 - __zdata_start)
bss_9528 equ __zdseg_end + (__zobss_9528 - __zdata_start)
bss_952a equ __zdseg_end + (__zobss_952a - __zdata_start)
roster_screen_b equ __zdseg_end + (__zobss_952c - __zdata_start)
roster_screen_a equ __zdseg_end + (__zobss_952e - __zdata_start)
bss_9530 equ __zdseg_end + (__zobss_9530 - __zdata_start)
bss_9532 equ __zdseg_end + (__zobss_9532 - __zdata_start)
bss_9534 equ __zdseg_end + (__zobss_9534 - __zdata_start)
bss_9536 equ __zdseg_end + (__zobss_9536 - __zdata_start)
realm_panel_cache_high equ __zdseg_end + (__zobss_9538 - __zdata_start)
realm_panel_cache_low equ __zdseg_end + (__zobss_953a - __zdata_start)
bss_953c equ __zdseg_end + (__zobss_953c - __zdata_start)
bss_953e equ __zdseg_end + (__zobss_953e - __zdata_start)
saved_screen equ __zdseg_end + (__zobss_9540 - __zdata_start)
saved_screen_hi equ __zdseg_end + (__zobss_9542 - __zdata_start)
bss_9544 equ __zdseg_end + (__zobss_9544 - __zdata_start)
bss_9594 equ __zdseg_end + (__zobss_9594 - __zdata_start)
bss_9596 equ __zdseg_end + (__zobss_9596 - __zdata_start)
banner_offset equ __zdseg_end + (__zobss_95aa - __zdata_start)
banner_plain_flag equ __zdseg_end + (__zobss_95ac - __zdata_start)
banner_animation_frame equ __zdseg_end + (__zobss_95ae - __zdata_start)
skill_availability_flags equ __zdseg_end + (__zobss_95b0 - __zdata_start)
both_high_stats_flag equ __zdseg_end + (__zobss_95e8 - __zdata_start)
slot_prompt_text equ __zdseg_end + (__zobss_95f4 - __zdata_start)
slot_value equ __zdseg_end + (__zobss_9608 - __zdata_start)
slot_value2 equ __zdseg_end + (__zobss_960c - __zdata_start)
slot_label equ __zdseg_end + (__zobss_9610 - __zdata_start)
slot_limit equ __zdseg_end + (__zobss_96d8 - __zdata_start)
known_spell_ids equ __zdseg_end + (__zobss_971c - __zdata_start)
party_redraw_interval equ __zdseg_end + (__zobss_976c - __zdata_start)
profession_eligible equ __zdseg_end + (__zobss_976e - __zdata_start)
bss_978a equ __zdseg_end + (__zobss_978a - __zdata_start)
_Uend equ __zdseg_end + (__zobss_end - __zdata_start)

%include "vpcmk/ovmain.asm"                ; 0x000e

%include "shared/ovr/load_screen_file_immediate.asm" ; 0x0021

%include "shared/ovr/transfer_pc_file_record.asm" ; 0x0085

%include "shared/ovr/input_text_field.asm"      ; 0x0104

%include "shared/ovr/show_indexed_beveled_label.asm" ; 0x02bc

%include "shared/ovr/draw_frame_outline.asm"    ; 0x03ca

%include "shared/ovr/select_grid_text_option.asm" ; 0x0445

%include "shared/ovr/draw_dialog_button_prompt.asm" ; 0x0935

%include "shared/ovr/pick_list_entry_dialog.asm" ; 0x0abb

%include "shared/ovr/prompt_character_name.asm" ; 0x11f4

%include "shared/ovr/draw_party_slot_letters.asm" ; 0x16ea

%include "shared/ovr/draw_member_realm_points.asm" ; 0x1769

%include "shared/ovr/advance_party_slot_frames.asm" ; 0x1819

%include "shared/ovr/clamp_value_to_range.asm"  ; 0x1874

%include "vpcmk/api_idx_0010_GGGV.asm"     ; 0x18b5

%include "vpcmk/api_idx_0002_SSJN.asm"     ; 0x19ab

%include "shared/ovr/draw_title_banner.asm"     ; 0x1a98

%include "vpcmk/api_idx_0054_RLST.asm"     ; 0x1b40

%include "shared/ovr/display_centered_message.asm" ; 0x2090

%include "shared/ovr/set_party_skill_flags.asm" ; 0x2144

%include "shared/ovr/prepare_skill_list.asm"    ; 0x2273

%include "shared/ovr/draw_known_spell_values.asm" ; 0x24c8

%include "shared/ovr/draw_slot_value_row.asm"   ; 0x2582

%include "vpcmk/api_idx_0032_HGIM.asm"     ; 0x26f1

%include "vpcmk/api_idx_0088_QLNT.asm"     ; 0x2c15

%include "shared/ovr/collect_known_spells.asm"  ; 0x2d63

%include "shared/ovr/draw_marker_glyph.asm"     ; 0x2dd4

%include "shared/ovr/draw_power_digit.asm"      ; 0x2e12

%include "shared/ovr/draw_spell_cost.asm"       ; 0x2e9e

%include "shared/ovr/draw_realm_spell_points.asm" ; 0x2f3f

%include "shared/ovr/periodic_party_redraw.asm" ; 0x2fd8

%include "shared/ovr/pick_spell_dialog_keep_frames.asm" ; 0x3069

%include "vpcmk/api_idx_006e_LMUM.asm"     ; 0x3d59

%include "shared/ovr/refresh_title_and_member_panel.asm" ; 0x3f87

%include "vpcmk/api_idx_0002_IRKS.asm"     ; 0x402d

%include "vpcmk/check_profession_stat_budget.asm" ; 0x4081

%include "vpcmk/evaluate_character_profession.asm" ; 0x4107

%include "shared/ovr/evaluate_character_professions.asm" ; 0x4291

%include "vpcmk/loc_TRSS.asm"              ; 0x42b8

%include "vpcmk/loc_HGUJ.asm"              ; 0x4392

%include "vpcmk/api_idx_007a_GTOG.asm"     ; 0x43bb

%include "vpcmk/api_idx_007a_HMNU.asm"     ; 0x4498

%include "vpcmk/api_idx_007c_MIHQ.asm"     ; 0x4585

%include "vpcmk/api_idx_006c_JNMM.asm"     ; 0x4697

%include "vpcmk/api_idx_0008_SNVI.asm"     ; 0x4934

%include "vpcmk/loc_RPNT.asm"              ; 0x4aa1

%include "vpcmk/api_idx_0002_SLKJ.asm"     ; 0x4ade

%include "vpcmk/api_idx_004e_KMPP.asm"     ; 0x4b05

%include "vpcmk/loc_JUPL.asm"              ; 0x4c82

%include "shared/ovr/adjust_member_resistance.asm" ; 0x4ead

%include "shared/ovr/set_profession_resistances.asm" ; 0x4f00

%include "shared/ovr/update_party_stat_adjustments.asm" ; 0x4f95

%include "vpcmk/api_idx_0004_IMQR.asm"     ; 0x5087

%include "shared/ovr/roll_slot_values.asm"      ; 0x5580

%include "vpcmk/api_idx_0002_OKNL.asm"     ; 0x56b0

%include "vpcmk/loc_QTTK.asm"              ; 0x5706

%include "vpcmk/api_idx_000a_TPJV.asm"     ; 0x5a8a

%include "shared/ovr/draw_member_glyph_row.asm" ; 0x5d7e

%include "shared/ovr/draw_member_panel_glyphs.asm" ; 0x5df5

%include "shared/ovr/load_member_icon.asm"     ; 0x6083

%include "vpcmk/api_idx_0006_HMNQ.asm"     ; 0x60e0

%include "vpcmk/api_idx_0002_OKLI.asm"     ; 0x626e

%include "vpcmk/loc_MIPR.asm"              ; 0x62fb

%include "vpcmk/api_idx_0002_USIT.asm"     ; 0x65fc

%include "vpcmk/loc_TLLM.asm"              ; 0x6626

%include "vpcmk/api_idx_0014_PPUT.asm"     ; 0x6673

%include "vpcmk/loc_TUUJ.asm"              ; 0x66c3

%include "vpcmk/api_idx_002c_RGGV.asm"     ; 0x6738

%include "vpcmk/loc_RNSM.asm"              ; 0x67e2

%include "vpcmk/api_idx_0018_MVRH.asm"     ; 0x67ff

%include "vpcmk/api_idx_0006_MQSI.asm"     ; 0x6887

%include "shared/ovr/choose_pc_file_character.asm" ; 0x68fa

%include "vpcmk/api_idx_002c_VNHI.asm"     ; 0x6a3f

%include "shared/ovr/aztec_ovbgn.asm"           ; 0x6f8c

%include "shared/ovr/aztec_strcmp.asm"          ; 0x6fca

__zdata_start:
%include "vpcmk/data/pc_file_name.asm"     ; 0x7031

%include "shared/data/title_panel_screen_file.asm" ; 0x703c

%include "shared/data/choice_grid_screen_file.asm" ; 0x7042

%include "vpcmk/data/list_dialog_temp_file.asm" ; 0x7048

%include "shared/data/screen_save_temp_file.asm" ; 0x704e

%include "vpcmk/data/dseg_90bb.asm"        ; 0x7054

%include "shared/data/profession_skill_groups.asm" ; 0x7057

%include "shared/data/spell_cost_panel_text.asm" ; 0x726b

%include "vpcmk/data/pick_spell_dialog_keep_frames_dseg175.asm"        ; 0x726f

%include "shared/data/profession_stat_requirements.asm" ; 0x7275

%include "vpcmk/data/dseg_935a.asm"        ; 0x72f3

%include "shared/data/portrait_data_filename.asm" ; 0x7482

%include "vpcmk/data/dseg_94f6.asm"        ; 0x748f

%include "shared/data/overlay_saved_registers.asm" ; 0x74b3


__zimage_end:
absolute __zimage_end
%include "vpcmk/data/globals.asm"
__zobss_end:
