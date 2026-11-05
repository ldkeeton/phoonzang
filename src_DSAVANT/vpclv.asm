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
percent_suffix_text equ __zdseg_end + (__zpercent_suffix_text - __zdata_start)
spell_cost_panel_text equ __zdseg_end + (__zspell_cost_panel_text - __zdata_start)
spell_dialog_save_file equ __zdseg_end + (__zdseg_909f - __zdata_start)
fighter_resist_base equ __zdseg_end + (__zfighter_resist_base - __zdata_start)
fighter_resist_growth equ __zdseg_end + (__zfighter_resist_growth - __zdata_start)
ranger_valkyrie_resist_base equ __zdseg_end + (__zranger_valkyrie_resist_base - __zdata_start)
ranger_valkyrie_resist_growth equ __zdseg_end + (__zranger_valkyrie_resist_growth - __zdata_start)
lord_resist_base equ __zdseg_end + (__zlord_resist_base - __zdata_start)
lord_resist_growth equ __zdseg_end + (__zlord_resist_growth - __zdata_start)
samurai_resist_base equ __zdseg_end + (__zsamurai_resist_base - __zdata_start)
samurai_resist_growth equ __zdseg_end + (__zsamurai_resist_growth - __zdata_start)
ninja_resist_base equ __zdseg_end + (__zninja_resist_base - __zdata_start)
ninja_resist_growth equ __zdseg_end + (__zninja_resist_growth - __zdata_start)
mage_alchemist_resist_base equ __zdseg_end + (__zmage_alchemist_resist_base - __zdata_start)
mage_alchemist_resist_growth equ __zdseg_end + (__zmage_alchemist_resist_growth - __zdata_start)
psionic_resist_base equ __zdseg_end + (__zpsionic_resist_base - __zdata_start)
psionic_resist_growth equ __zdseg_end + (__zpsionic_resist_growth - __zdata_start)
priest_bishop_resist_base equ __zdseg_end + (__zpriest_bishop_resist_base - __zdata_start)
priest_bishop_resist_growth equ __zdseg_end + (__zpriest_bishop_resist_growth - __zdata_start)
monk_resist_base equ __zdseg_end + (__zmonk_resist_base - __zdata_start)
monk_resist_growth equ __zdseg_end + (__zmonk_resist_growth - __zdata_start)
thief_bard_resist_base equ __zdseg_end + (__zthief_bard_resist_base - __zdata_start)
thief_bard_resist_growth equ __zdseg_end + (__zthief_bard_resist_growth - __zdata_start)
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
stamina_percent_open_text equ __zdseg_end + (__zstamina_percent_open_text - __zdata_start)
stamina_percent_close_text equ __zdseg_end + (__zstamina_percent_close_text - __zdata_start)
hit_points_separator_text equ __zdseg_end + (__zhit_points_separator_text - __zdata_start)
empty_vitals_suffix_text equ __zdseg_end + (__zempty_vitals_suffix_text - __zdata_start)
empty_stat_number_separator equ __zdseg_end + (__zempty_stat_number_separator - __zdata_start)
empty_stat_number_suffix equ __zdseg_end + (__zempty_stat_number_suffix - __zdata_start)
level_up_screen_file equ __zdseg_end + (__zlevel_up_screen_file - __zdata_start)
save_si equ __zdseg_end + (__zsave_si - __zdata_start)
save_di equ __zdseg_end + (__zsave_di - __zdata_start)
save_sp equ __zdseg_end + (__zsave_sp - __zdata_start)
save_bp equ __zdseg_end + (__zsave_bp - __zdata_start)
save_ret equ __zdseg_end + (__zsave_ret - __zdata_start)
_Uorg equ __zdseg_end + (__zobss_9408 - __zdata_start)
window_record equ __zdseg_end + (__zobss_9408 - __zdata_start)
member_screen_cache_low equ __zdseg_end + (__zobss_9416 - __zdata_start)
member_screen_cache_high equ __zdseg_end + (__zobss_9418 - __zdata_start)
member_detail_cache_low equ __zdseg_end + (__zobss_941a - __zdata_start)
member_detail_cache_high equ __zdseg_end + (__zobss_941c - __zdata_start)
roster_screen_b equ __zdseg_end + (__zobss_941e - __zdata_start)
roster_screen_a equ __zdseg_end + (__zobss_9420 - __zdata_start)
ac_screen_a_handle_low equ __zdseg_end + (__zobss_9422 - __zdata_start)
ac_screen_a_handle_high equ __zdseg_end + (__zobss_9424 - __zdata_start)
ac_screen_b_handle_low equ __zdseg_end + (__zobss_9426 - __zdata_start)
ac_screen_b_handle_high equ __zdseg_end + (__zobss_9428 - __zdata_start)
realm_panel_cache_high equ __zdseg_end + (__zobss_942a - __zdata_start)
realm_panel_cache_low equ __zdseg_end + (__zobss_942c - __zdata_start)
saved_screen equ __zdseg_end + (__zobss_9432 - __zdata_start)
saved_screen_hi equ __zdseg_end + (__zobss_9434 - __zdata_start)
banner_offset equ __zdseg_end + (__zobss_9436 - __zdata_start)
banner_plain_flag equ __zdseg_end + (__zobss_9438 - __zdata_start)
banner_animation_frame equ __zdseg_end + (__zobss_943a - __zdata_start)
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
level_up_transition_state equ __zdseg_end + (__zobss_9704 - __zdata_start)
_Uend equ __zdseg_end + (__zobss_end - __zdata_start)

%include "vpclv/ovmain.asm"                ; 0x000e

%include "shared/ovr/load_screen_file_immediate.asm" ; 0x0022

%include "shared/ovr/select_encumbrance_style.asm" ; 0x0086

%include "shared/ovr/draw_party_slot_letters.asm" ; 0x0202

%include "shared/ovr/draw_member_realm_points.asm" ; 0x0281

%include "shared/ovr/advance_party_slot_frames.asm" ; 0x0331

%include "shared/ovr/clamp_value_to_range.asm"  ; 0x038c

%include "shared/ovr/draw_doubled_member_portrait.asm" ; 0x03cd

%include "shared/ovr/draw_title_banner.asm"     ; 0x04ca

%include "shared/ovr/draw_member_summary_panel.asm" ; 0x0572

%include "shared/ovr/fill_rectangle_border.asm" ; 0x0dc0

%include "shared/ovr/collect_known_spells.asm"  ; 0x0e3b

%include "shared/ovr/draw_marker_glyph.asm"     ; 0x0eac

%include "shared/ovr/draw_power_digit.asm"      ; 0x0eea

%include "shared/ovr/draw_spell_cost.asm"       ; 0x0f76

%include "shared/ovr/draw_realm_spell_points.asm" ; 0x1017

%include "shared/ovr/periodic_party_redraw.asm" ; 0x10b0

%include "shared/ovr/pick_spell_dialog_keep_frames.asm" ; 0x1141

%include "vpclv/learn_member_spell.asm"    ; 0x1e31

%include "shared/ovr/refresh_title_and_member_panel.asm" ; 0x20e3

%include "vpclv/draw_member_status_panel.asm" ; 0x2189

%include "shared/ovr/set_party_hand_attack.asm" ; 0x21be

%include "shared/ovr/draw_split_two_line_text.asm" ; 0x2447

%include "shared/ovr/draw_member_armor_class.asm" ; 0x24f0

%include "shared/ovr/draw_item_slot_label.asm"  ; 0x2717

%include "shared/ovr/draw_member_item_page.asm" ; 0x27e3

%include "shared/ovr/adjust_member_resistance.asm" ; 0x2a32

%include "shared/ovr/set_profession_resistances.asm" ; 0x2a85

%include "shared/ovr/update_party_stat_adjustments.asm" ; 0x2b1a

%include "vpclv/initialize_member_defenses.asm" ; 0x2c0c

%include "shared/ovr/display_centered_message.asm" ; 0x3288

%include "vpclv/draw_message_number_line.asm" ; 0x333c

%include "shared/ovr/set_party_skill_flags.asm" ; 0x34cd

%include "shared/ovr/prepare_skill_list.asm"    ; 0x35fc

%include "shared/ovr/draw_known_spell_values.asm" ; 0x3851

%include "shared/ovr/draw_slot_value_row.asm"   ; 0x390b

%include "vpclv/edit_skill_group_points.asm" ; 0x3a7a

%include "vpclv/allocate_member_skill_bonus.asm" ; 0x3f9e

%include "shared/ovr/roll_slot_values.asm"      ; 0x4140

%include "vpclv/raise_member_skill_from_pool.asm" ; 0x4270

%include "vpclv/award_level_skill_points.asm" ; 0x4310

%include "vpclv/raise_member_vitals.asm"   ; 0x45e0

%include "vpclv/lower_level_scaled_percent.asm" ; 0x4884

%include "vpclv/award_member_spell_progress.asm" ; 0x4955

%include "vpclv/raise_random_member_stats.asm" ; 0x4cc5

%include "vpclv/update_member_rank.asm"    ; 0x4e03

%include "vpclv/award_member_level.asm"    ; 0x4e9e

%include "vpclv/check_or_apply_level_ups.asm" ; 0x4fca

%include "shared/ovr/draw_party_glyph_row.asm"  ; 0x50a1

%include "vpclv/show_level_up_sequence.asm" ; 0x5161

%include "shared/ovr/aztec_ovbgn.asm"           ; 0x5472

__zdata_start:
%include "vpclv/data/clv_strings.asm"      ; 0x54b0

%include "shared/data/overlay_saved_registers.asm" ; 0x5816


__zimage_end:
absolute __zimage_end
%include "vpclv/data/globals.asm"
__zobss_end:
