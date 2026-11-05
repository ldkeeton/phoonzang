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
stamina_percent_suffix equ __zdseg_end + (__zstamina_percent_suffix - __zdata_start)
fighter_weaponry_skills equ __zdseg_end + (__zfighter_weaponry_skills - __zdata_start)
fighter_physical_skills equ __zdseg_end + (__zfighter_physical_skills - __zdata_start)
fighter_personal_skills equ __zdseg_end + (__zfighter_personal_skills - __zdata_start)
fighter_academia_skills equ __zdseg_end + (__zfighter_academia_skills - __zdata_start)
mage_weaponry_skills equ __zdseg_end + (__zmage_weaponry_skills - __zdata_start)
mage_physical_skills equ __zdseg_end + (__zmage_physical_skills - __zdata_start)
mage_personal_skills equ __zdseg_end + (__zmage_personal_skills - __zdata_start)
mage_academia_skills equ __zdseg_end + (__zmage_academia_skills - __zdata_start)
priest_weaponry_skills equ __zdseg_end + (__zpriest_weaponry_skills - __zdata_start)
priest_physical_skills equ __zdseg_end + (__zpriest_physical_skills - __zdata_start)
priest_personal_skills equ __zdseg_end + (__zpriest_personal_skills - __zdata_start)
priest_academia_skills equ __zdseg_end + (__zpriest_academia_skills - __zdata_start)
thief_weaponry_skills equ __zdseg_end + (__zthief_weaponry_skills - __zdata_start)
thief_physical_skills equ __zdseg_end + (__zthief_physical_skills - __zdata_start)
thief_personal_skills equ __zdseg_end + (__zthief_personal_skills - __zdata_start)
thief_academia_skills equ __zdseg_end + (__zthief_academia_skills - __zdata_start)
ranger_weaponry_skills equ __zdseg_end + (__zranger_weaponry_skills - __zdata_start)
ranger_physical_skills equ __zdseg_end + (__zranger_physical_skills - __zdata_start)
ranger_personal_skills equ __zdseg_end + (__zranger_personal_skills - __zdata_start)
ranger_academia_skills equ __zdseg_end + (__zranger_academia_skills - __zdata_start)
alchemist_weaponry_skills equ __zdseg_end + (__zalchemist_weaponry_skills - __zdata_start)
alchemist_physical_skills equ __zdseg_end + (__zalchemist_physical_skills - __zdata_start)
alchemist_personal_skills equ __zdseg_end + (__zalchemist_personal_skills - __zdata_start)
alchemist_academia_skills equ __zdseg_end + (__zalchemist_academia_skills - __zdata_start)
bard_weaponry_skills equ __zdseg_end + (__zbard_weaponry_skills - __zdata_start)
bard_physical_skills equ __zdseg_end + (__zbard_physical_skills - __zdata_start)
bard_personal_skills equ __zdseg_end + (__zbard_personal_skills - __zdata_start)
bard_academia_skills equ __zdseg_end + (__zbard_academia_skills - __zdata_start)
psionic_weaponry_skills equ __zdseg_end + (__zpsionic_weaponry_skills - __zdata_start)
psionic_physical_skills equ __zdseg_end + (__zpsionic_physical_skills - __zdata_start)
psionic_personal_skills equ __zdseg_end + (__zpsionic_personal_skills - __zdata_start)
psionic_academia_skills equ __zdseg_end + (__zpsionic_academia_skills - __zdata_start)
valkyrie_weaponry_skills equ __zdseg_end + (__zvalkyrie_weaponry_skills - __zdata_start)
valkyrie_physical_skills equ __zdseg_end + (__zvalkyrie_physical_skills - __zdata_start)
valkyrie_personal_skills equ __zdseg_end + (__zvalkyrie_personal_skills - __zdata_start)
valkyrie_academia_skills equ __zdseg_end + (__zvalkyrie_academia_skills - __zdata_start)
bishop_weaponry_skills equ __zdseg_end + (__zbishop_weaponry_skills - __zdata_start)
bishop_physical_skills equ __zdseg_end + (__zbishop_physical_skills - __zdata_start)
bishop_personal_skills equ __zdseg_end + (__zbishop_personal_skills - __zdata_start)
bishop_academia_skills equ __zdseg_end + (__zbishop_academia_skills - __zdata_start)
lord_weaponry_skills equ __zdseg_end + (__zlord_weaponry_skills - __zdata_start)
lord_physical_skills equ __zdseg_end + (__zlord_physical_skills - __zdata_start)
lord_personal_skills equ __zdseg_end + (__zlord_personal_skills - __zdata_start)
lord_academia_skills equ __zdseg_end + (__zlord_academia_skills - __zdata_start)
samurai_weaponry_skills equ __zdseg_end + (__zsamurai_weaponry_skills - __zdata_start)
samurai_physical_skills equ __zdseg_end + (__zsamurai_physical_skills - __zdata_start)
samurai_personal_skills equ __zdseg_end + (__zsamurai_personal_skills - __zdata_start)
samurai_academia_skills equ __zdseg_end + (__zsamurai_academia_skills - __zdata_start)
monk_weaponry_skills equ __zdseg_end + (__zmonk_weaponry_skills - __zdata_start)
monk_physical_skills equ __zdseg_end + (__zmonk_physical_skills - __zdata_start)
monk_personal_skills equ __zdseg_end + (__zmonk_personal_skills - __zdata_start)
monk_academia_skills equ __zdseg_end + (__zmonk_academia_skills - __zdata_start)
ninja_weaponry_skills equ __zdseg_end + (__zninja_weaponry_skills - __zdata_start)
ninja_physical_skills equ __zdseg_end + (__zninja_physical_skills - __zdata_start)
ninja_personal_skills equ __zdseg_end + (__zninja_personal_skills - __zdata_start)
ninja_academia_skills equ __zdseg_end + (__zninja_academia_skills - __zdata_start)
spell_cost_panel_text equ __zdseg_end + (__zspell_cost_panel_text - __zdata_start)
spell_dialog_save_file equ __zdseg_end + (__zspell_dialog_save_file - __zdata_start)
fighter_stat_requirements equ __zdseg_end + (__zfighter_stat_requirements - __zdata_start)
mage_stat_requirements equ __zdseg_end + (__zmage_stat_requirements - __zdata_start)
priest_stat_requirements equ __zdseg_end + (__zpriest_stat_requirements - __zdata_start)
thief_stat_requirements equ __zdseg_end + (__zthief_stat_requirements - __zdata_start)
ranger_stat_requirements equ __zdseg_end + (__zranger_stat_requirements - __zdata_start)
alchemist_stat_requirements equ __zdseg_end + (__zalchemist_stat_requirements - __zdata_start)
bard_stat_requirements equ __zdseg_end + (__zbard_stat_requirements - __zdata_start)
psionic_stat_requirements equ __zdseg_end + (__zpsionic_stat_requirements - __zdata_start)
valkyrie_stat_requirements equ __zdseg_end + (__zvalkyrie_stat_requirements - __zdata_start)
bishop_stat_requirements equ __zdseg_end + (__zbishop_stat_requirements - __zdata_start)
lord_stat_requirements equ __zdseg_end + (__zlord_stat_requirements - __zdata_start)
samurai_stat_requirements equ __zdseg_end + (__zsamurai_stat_requirements - __zdata_start)
monk_stat_requirements equ __zdseg_end + (__zmonk_stat_requirements - __zdata_start)
ninja_stat_requirements equ __zdseg_end + (__zninja_stat_requirements - __zdata_start)
race_0_stat_minimums equ __zdseg_end + (__zrace_0_stat_minimums - __zdata_start)
race_1_stat_minimums equ __zdseg_end + (__zrace_1_stat_minimums - __zdata_start)
race_2_stat_minimums equ __zdseg_end + (__zrace_2_stat_minimums - __zdata_start)
race_3_stat_minimums equ __zdseg_end + (__zrace_3_stat_minimums - __zdata_start)
race_4_stat_minimums equ __zdseg_end + (__zrace_4_stat_minimums - __zdata_start)
race_5_stat_minimums equ __zdseg_end + (__zrace_5_stat_minimums - __zdata_start)
race_6_stat_minimums equ __zdseg_end + (__zrace_6_stat_minimums - __zdata_start)
race_7_stat_minimums equ __zdseg_end + (__zrace_7_stat_minimums - __zdata_start)
race_8_stat_minimums equ __zdseg_end + (__zrace_8_stat_minimums - __zdata_start)
race_9_stat_minimums equ __zdseg_end + (__zrace_9_stat_minimums - __zdata_start)
race_10_stat_minimums equ __zdseg_end + (__zrace_10_stat_minimums - __zdata_start)
fighter_base_resist equ __zdseg_end + (__zfighter_base_resist - __zdata_start)
fighter_resist_mod equ __zdseg_end + (__zfighter_resist_mod - __zdata_start)
ranger_base_resist equ __zdseg_end + (__zranger_base_resist - __zdata_start)
ranger_resist_mod equ __zdseg_end + (__zranger_resist_mod - __zdata_start)
lord_base_resist equ __zdseg_end + (__zlord_base_resist - __zdata_start)
lord_resist_mod equ __zdseg_end + (__zlord_resist_mod - __zdata_start)
samurai_base_resist equ __zdseg_end + (__zsamurai_base_resist - __zdata_start)
samurai_resist_mod equ __zdseg_end + (__zsamurai_resist_mod - __zdata_start)
ninja_base_resist equ __zdseg_end + (__zninja_base_resist - __zdata_start)
ninja_resist_mod equ __zdseg_end + (__zninja_resist_mod - __zdata_start)
mage_base_resist equ __zdseg_end + (__zmage_base_resist - __zdata_start)
mage_resist_mod equ __zdseg_end + (__zmage_resist_mod - __zdata_start)
psionic_base_resist equ __zdseg_end + (__zpsionic_base_resist - __zdata_start)
psionic_resist_mod equ __zdseg_end + (__zpsionic_resist_mod - __zdata_start)
priest_base_resist equ __zdseg_end + (__zpriest_base_resist - __zdata_start)
priest_resist_mod equ __zdseg_end + (__zpriest_resist_mod - __zdata_start)
monk_base_resist equ __zdseg_end + (__zmonk_base_resist - __zdata_start)
monk_resist_mod equ __zdseg_end + (__zmonk_resist_mod - __zdata_start)
thief_base_resist equ __zdseg_end + (__zthief_base_resist - __zdata_start)
thief_resist_mod equ __zdseg_end + (__zthief_resist_mod - __zdata_start)
portrait_data_filename equ __zdseg_end + (__zportrait_data_filename - __zdata_start)
pc_file_database_filename equ __zdseg_end + (__zpc_file_database_filename - __zdata_start)
saved_character_file_name equ __zdseg_end + (__zsaved_character_file_name - __zdata_start)
pc_view_screen_file equ __zdseg_end + (__zpc_view_screen_file - __zdata_start)
save_si equ __zdseg_end + (__zsave_si - __zdata_start)
save_di equ __zdseg_end + (__zsave_di - __zdata_start)
save_sp equ __zdseg_end + (__zsave_sp - __zdata_start)
save_bp equ __zdseg_end + (__zsave_bp - __zdata_start)
save_ret equ __zdseg_end + (__zsave_ret - __zdata_start)
_Uorg equ __zdseg_end + (__zobss_9524 - __zdata_start)
summary_panel_cache_low equ __zdseg_end + (__zobss_9524 - __zdata_start)
summary_panel_cache_high equ __zdseg_end + (__zobss_9526 - __zdata_start)
detail_panel_cache_low equ __zdseg_end + (__zobss_9528 - __zdata_start)
detail_panel_cache_high equ __zdseg_end + (__zobss_952a - __zdata_start)
roster_screen_b equ __zdseg_end + (__zobss_952c - __zdata_start)
roster_screen_a equ __zdseg_end + (__zobss_952e - __zdata_start)
character_screen_cache_a_low equ __zdseg_end + (__zobss_9530 - __zdata_start)
character_screen_cache_a_high equ __zdseg_end + (__zobss_9532 - __zdata_start)
character_screen_cache_b_low equ __zdseg_end + (__zobss_9534 - __zdata_start)
character_screen_cache_b_high equ __zdseg_end + (__zobss_9536 - __zdata_start)
realm_panel_cache_high equ __zdseg_end + (__zobss_9538 - __zdata_start)
realm_panel_cache_low equ __zdseg_end + (__zobss_953a - __zdata_start)
saved_screen_handle_low equ __zdseg_end + (__zobss_953c - __zdata_start)
saved_screen_handle_high equ __zdseg_end + (__zobss_953e - __zdata_start)
saved_screen equ __zdseg_end + (__zobss_9540 - __zdata_start)
saved_screen_hi equ __zdseg_end + (__zobss_9542 - __zdata_start)
character_stat_labels equ __zdseg_end + (__zobss_9544 - __zdata_start)
remaining_stat_points equ __zdseg_end + (__zobss_9594 - __zdata_start)
remaining_points_label equ __zdseg_end + (__zobss_9596 - __zdata_start)
banner_offset equ __zdseg_end + (__zobss_95aa - __zdata_start)
banner_plain_flag equ __zdseg_end + (__zobss_95ac - __zdata_start)
banner_animation_frame equ __zdseg_end + (__zobss_95ae - __zdata_start)
skill_availability_flags equ __zdseg_end + (__zobss_95b0 - __zdata_start)
both_high_stats_flag equ __zdseg_end + (__zobss_95e8 - __zdata_start)
skill_points_label equ __zdseg_end + (__zobss_95f4 - __zdata_start)
skill_group_points equ __zdseg_end + (__zobss_9608 - __zdata_start)
personal_skill_points equ __zdseg_end + (__zobss_960c - __zdata_start)
slot_label equ __zdseg_end + (__zobss_9610 - __zdata_start)
slot_limit equ __zdseg_end + (__zobss_96d8 - __zdata_start)
known_spell_ids equ __zdseg_end + (__zobss_971c - __zdata_start)
party_redraw_interval equ __zdseg_end + (__zobss_976c - __zdata_start)
profession_eligible equ __zdseg_end + (__zobss_976e - __zdata_start)
character_creation_mode equ __zdseg_end + (__zobss_978a - __zdata_start)
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

%include "vpcmk/draw_loaded_member_icon.asm" ; 0x18b5

%include "vpcmk/display_character_statistics.asm" ; 0x19ab

%include "shared/ovr/draw_title_banner.asm"     ; 0x1a98

%include "vpcmk/draw_roster_member_summary.asm" ; 0x1b40

%include "shared/ovr/display_centered_message.asm" ; 0x2090

%include "shared/ovr/set_party_skill_flags.asm" ; 0x2144

%include "shared/ovr/prepare_skill_list.asm"    ; 0x2273

%include "shared/ovr/draw_skill_list_values.asm" ; 0x24c8

%include "shared/ovr/draw_skill_points_row.asm" ; 0x2582

%include "vpcmk/edit_skill_group_points.asm" ; 0x26f1

%include "vpcmk/edit_character_skill_slots.asm" ; 0x2c15

%include "shared/ovr/collect_known_spells.asm"  ; 0x2d63

%include "shared/ovr/draw_marker_glyph.asm"     ; 0x2dd4

%include "shared/ovr/draw_power_digit.asm"      ; 0x2e12

%include "shared/ovr/draw_spell_cost.asm"       ; 0x2e9e

%include "shared/ovr/draw_realm_spell_points.asm" ; 0x2f3f

%include "shared/ovr/periodic_party_redraw.asm" ; 0x2fd8

%include "shared/ovr/pick_spell_dialog_keep_frames.asm" ; 0x3069

%include "vpcmk/select_spell_to_learn.asm" ; 0x3d59

%include "shared/ovr/refresh_title_and_member_panel.asm" ; 0x3f87

%include "vpcmk/apply_character_stat_minimums.asm" ; 0x402d

%include "vpcmk/check_profession_stat_budget.asm" ; 0x4081

%include "vpcmk/evaluate_character_profession.asm" ; 0x4107

%include "shared/ovr/evaluate_character_professions.asm" ; 0x4291

%include "vpcmk/apply_race_stat_minimums.asm" ; 0x42b8

%include "vpcmk/adjust_female_character_stats.asm" ; 0x4392

%include "vpcmk/choose_character_race.asm" ; 0x43bb

%include "vpcmk/choose_character_gender.asm" ; 0x4498

%include "vpcmk/choose_character_profession.asm" ; 0x4585

%include "vpcmk/allocate_ability_bonus_points.asm" ; 0x4697

%include "vpcmk/adjust_character_karma.asm" ; 0x4934

%include "vpcmk/set_karma_affinity.asm"    ; 0x4aa1

%include "vpcmk/init_member_karma_affinities.asm" ; 0x4ade

%include "vpcmk/add_item_record_to_member.asm" ; 0x4b05

%include "vpcmk/add_starting_items.asm"    ; 0x4c21

%include "vpcmk/give_profession_starting_items.asm" ; 0x4c82

%include "shared/ovr/adjust_member_resistance.asm" ; 0x4ead

%include "shared/ovr/set_profession_resistances.asm" ; 0x4f00

%include "shared/ovr/update_party_stat_adjustments.asm" ; 0x4f95

%include "vpcmk/initialize_member_profession.asm" ; 0x5087

%include "shared/ovr/roll_skill_points.asm"     ; 0x5580

%include "vpcmk/spend_level_scaled_skill_points.asm" ; 0x56b0

%include "vpcmk/initialize_profession_skills.asm" ; 0x5706

%include "vpcmk/initialize_new_member_basics.asm" ; 0x5a8a

%include "shared/ovr/draw_member_glyph_row.asm" ; 0x5d7e

%include "shared/ovr/draw_member_panel_glyphs.asm" ; 0x5df5

%include "shared/ovr/load_member_icon.asm"      ; 0x6083

%include "vpcmk/select_character_portrait.asm" ; 0x60e0

%include "vpcmk/initialize_new_member_record.asm" ; 0x626e

%include "vpcmk/create_new_party_member.asm" ; 0x62fb

%include "vpcmk/find_unused_pc_file_record_slot.asm" ; 0x65fc

%include "vpcmk/pc_file_name_is_in_use.asm" ; 0x6626

%include "vpcmk/create_character_from_prompt.asm" ; 0x6673

%include "vpcmk/display_pc_file_record_preview.asm" ; 0x66c3

%include "vpcmk/delete_saved_character_file.asm" ; 0x6738

%include "vpcmk/show_pc_file_record_preview.asm" ; 0x67e2

%include "vpcmk/rename_saved_character.asm" ; 0x67ff

%include "vpcmk/preview_and_select_saved_member.asm" ; 0x6887

%include "shared/ovr/choose_pc_file_character.asm" ; 0x68fa

%include "vpcmk/manage_character_files.asm" ; 0x6a3f

%include "shared/ovr/aztec_ovbgn.asm"           ; 0x6f8c

%include "shared/aztec/aztec_strcmp.asm"          ; 0x6fca

__zdata_start:
%include "vpcmk/data/cmk_strings.asm"      ; 0x7031

%include "shared/data/overlay_saved_registers.asm" ; 0x74b3


__zimage_end:
absolute __zimage_end
%include "vpcmk/data/globals.asm"
__zobss_end:
