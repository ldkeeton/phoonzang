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
    dw (__zdata_start - __zcode_start)       ; 0x9836 ; o_csize: code size in bytes
    dw __zdseg_end                           ; 0x9098 ; o_dorg: data load origin (memory offset)
    dw (__zimage_end - __zdata_start)        ; 0x0348 ; o_dsize: initialized data size
    dw __zobss_end - __zimage_end            ; 0x0310 ; o_bss: uninitialized data size
    dw $ovbgn - IMAGE_BASE + __zres_end ; 0xe835 ; o_entry: overlay entry offset (CS)

__zcode_start:
percent_suffix_text equ __zdseg_end + (__zpercent_suffix_text - __zdata_start)
title_panel_screen_file equ __zdseg_end + (__ztitle_panel_screen_file - __zdata_start)
choice_grid_screen_file equ __zdseg_end + (__zchoice_grid_screen_file - __zdata_start)
spell_cost_panel_text equ __zdseg_end + (__zspell_cost_panel_text - __zdata_start)
spell_dialog_save_file equ __zdseg_end + (__zdseg_90ab - __zdata_start)
scene_message_separator equ __zdseg_end + (__zscene_message_separator - __zdata_start)
character_view_screen_filename equ __zdseg_end + (__zcharacter_view_screen_filename - __zdata_start)
open_parenthesis equ __zdseg_end + (__zopen_parenthesis - __zdata_start)
plus_sign equ __zdseg_end + (__zplus_sign - __zdata_start)
close_parenthesis equ __zdseg_end + (__zclose_parenthesis - __zdata_start)
positive_sign equ __zdseg_end + (__zpositive_sign - __zdata_start)
spell_separator equ __zdseg_end + (__zspell_separator - __zdata_start)
space_separator equ __zdseg_end + (__zspace_separator - __zdata_start)
percent_sign equ __zdseg_end + (__zpercent_sign - __zdata_start)
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
screen_save_temp_file equ __zdseg_end + (__zscreen_save_temp_file - __zdata_start)
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
race_0_stat_caps equ __zdseg_end + (__zrace_0_stat_caps - __zdata_start)
race_1_stat_caps equ __zdseg_end + (__zrace_1_stat_caps - __zdata_start)
race_2_stat_caps equ __zdseg_end + (__zrace_2_stat_caps - __zdata_start)
race_3_stat_caps equ __zdseg_end + (__zrace_3_stat_caps - __zdata_start)
race_4_stat_caps equ __zdseg_end + (__zrace_4_stat_caps - __zdata_start)
race_5_stat_caps equ __zdseg_end + (__zrace_5_stat_caps - __zdata_start)
race_6_stat_caps equ __zdseg_end + (__zrace_6_stat_caps - __zdata_start)
race_7_stat_caps equ __zdseg_end + (__zrace_7_stat_caps - __zdata_start)
race_8_stat_caps equ __zdseg_end + (__zrace_8_stat_caps - __zdata_start)
race_9_stat_caps equ __zdseg_end + (__zrace_9_stat_caps - __zdata_start)
race_10_stat_caps equ __zdseg_end + (__zrace_10_stat_caps - __zdata_start)
portrait_data_filename equ __zdseg_end + (__zportrait_data_filename - __zdata_start)
save_si equ __zdseg_end + (__zsave_si - __zdata_start)
save_di equ __zdseg_end + (__zsave_di - __zdata_start)
save_sp equ __zdseg_end + (__zsave_sp - __zdata_start)
save_bp equ __zdseg_end + (__zsave_bp - __zdata_start)
save_ret equ __zdseg_end + (__zsave_ret - __zdata_start)
_Uorg equ __zdseg_end + (__zobss_93e0 - __zdata_start)
window_record equ __zdseg_end + (__zobss_93e0 - __zdata_start)
member_screen_cache_low equ __zdseg_end + (__zobss_93ee - __zdata_start)
member_screen_cache_high equ __zdseg_end + (__zobss_93f0 - __zdata_start)
member_detail_cache_low equ __zdseg_end + (__zobss_93f2 - __zdata_start)
member_detail_cache_high equ __zdseg_end + (__zobss_93f4 - __zdata_start)
roster_screen_b equ __zdseg_end + (__zobss_93f6 - __zdata_start)
roster_screen_a equ __zdseg_end + (__zobss_93f8 - __zdata_start)
ac_screen_a_handle_low equ __zdseg_end + (__zobss_93fa - __zdata_start)
ac_screen_a_handle_high equ __zdseg_end + (__zobss_93fc - __zdata_start)
ac_screen_b_handle_low equ __zdseg_end + (__zobss_93fe - __zdata_start)
ac_screen_b_handle_high equ __zdseg_end + (__zobss_9400 - __zdata_start)
realm_panel_cache_high equ __zdseg_end + (__zobss_9402 - __zdata_start)
realm_panel_cache_low equ __zdseg_end + (__zobss_9404 - __zdata_start)
saved_screen equ __zdseg_end + (__zobss_940a - __zdata_start)
saved_screen_hi equ __zdseg_end + (__zobss_940c - __zdata_start)
selected_item_list_index equ __zdseg_end + (__zobss_940e - __zdata_start)
selected_item_list_glyph equ __zdseg_end + (__zobss_9410 - __zdata_start)
selected_item_list_color equ __zdseg_end + (__zobss_9412 - __zdata_start)
selected_item_list_text equ __zdseg_end + (__zobss_9414 - __zdata_start)
selected_item_type equ __zdseg_end + (__zobss_942a - __zdata_start)
selected_item_count equ __zdseg_end + (__zobss_942c - __zdata_start)
banner_offset equ __zdseg_end + (__zobss_942e - __zdata_start)
banner_plain_flag equ __zdseg_end + (__zobss_9430 - __zdata_start)
banner_animation_frame equ __zdseg_end + (__zobss_9432 - __zdata_start)
item_page equ __zdseg_end + (__zobss_9434 - __zdata_start)
item_slot_names equ __zdseg_end + (__zobss_9436 - __zdata_start)
known_spell_ids equ __zdseg_end + (__zobss_9512 - __zdata_start)
party_redraw_interval equ __zdseg_end + (__zobss_9562 - __zdata_start)
selected_spell_target_member equ __zdseg_end + (__zobss_9564 - __zdata_start)
scene_message_line_index equ __zdseg_end + (__zobss_9566 - __zdata_start)
scene_message_last_x equ __zdseg_end + (__zobss_9568 - __zdata_start)
scene_message_text_buffer equ __zdseg_end + (__zobss_956a - __zdata_start)
selected_equipment_slot equ __zdseg_end + (__zobss_95ea - __zdata_start)
item_slot_color equ __zdseg_end + (__zobss_95ec - __zdata_start)
item_slot_attr equ __zdseg_end + (__zobss_9600 - __zdata_start)
item_page_alt_mode equ __zdseg_end + (__zobss_9614 - __zdata_start)
inventory_button_labels equ __zdseg_end + (__zobss_9616 - __zdata_start)
item_page_drawn equ __zdseg_end + (__zobss_967a - __zdata_start)
profession_eligible equ __zdseg_end + (__zobss_967c - __zdata_start)
skill_availability_flags equ __zdseg_end + (__zobss_9698 - __zdata_start)
both_high_stats_flag equ __zdseg_end + (__zobss_96d0 - __zdata_start)
skill_points_label equ __zdseg_end + (__zobss_96dc - __zdata_start)
_Uend equ __zdseg_end + (__zobss_end - __zdata_start)

%include "vpcvw/ovmain.asm"                ; 0x000e

%include "shared/ovr/load_screen_file_immediate.asm" ; 0x0027

%include "shared/ovr/draw_party_glyph_row.asm"  ; 0x008b

%include "shared/ovr/select_encumbrance_style.asm" ; 0x014b

%include "shared/ovr/display_centered_message.asm" ; 0x02c7

%include "vpcvw/draw_party_member_overview.asm" ; 0x037b

%include "vpcvw/select_party_member_from_roster.asm" ; 0x0521

%include "vpcvw/select_inventory_slot.asm" ; 0x0781

%include "vpcvw/draw_selected_item_list_entry.asm" ; 0x09a1

%include "vpcvw/pick_up_inventory_entry.asm" ; 0x0a96

%include "shared/ovr/draw_party_slot_letters.asm" ; 0x0cd6

%include "shared/ovr/draw_member_realm_points.asm" ; 0x0d55

%include "shared/ovr/advance_party_slot_frames.asm" ; 0x0e05

%include "shared/ovr/clamp_value_to_range.asm"  ; 0x0e60

%include "shared/ovr/draw_doubled_member_portrait.asm" ; 0x0ea1

%include "shared/ovr/draw_title_banner.asm"     ; 0x0f9e

%include "shared/ovr/draw_member_summary_panel.asm" ; 0x1046

%include "vpcvw/show_member_age_and_next_level.asm" ; 0x1894

%include "shared/ovr/show_indexed_beveled_label.asm" ; 0x1b17

%include "shared/ovr/draw_frame_outline.asm"    ; 0x1c25

%include "shared/ovr/select_grid_text_option.asm" ; 0x1ca0

%include "vpcvw/show_party_member_overview.asm" ; 0x2190

%include "shared/ovr/adjust_spell_value.asm"    ; 0x21ad

%include "vpcvw/apply_char_view_spell_effect.asm" ; 0x21fd

%include "shared/ovr/collect_known_spells.asm"  ; 0x297e

%include "shared/ovr/draw_marker_glyph.asm"     ; 0x29ef

%include "shared/ovr/draw_power_digit.asm"      ; 0x2a2d

%include "shared/ovr/draw_spell_cost.asm"       ; 0x2ab9

%include "shared/ovr/draw_realm_spell_points.asm" ; 0x2b5a

%include "shared/ovr/periodic_party_redraw.asm" ; 0x2bf3

%include "shared/ovr/pick_spell_dialog_keep_frames.asm" ; 0x2c84

%include "vpcvw/cast_spell_from_spell_picker.asm" ; 0x3974

%include "vpcvw/wait_for_scene_message_page.asm" ; 0x3a6a

%include "vpcvw/draw_scene_message_line.asm" ; 0x3aac

%include "vpcvw/append_scene_message_fragment.asm" ; 0x3b66

%include "vpcvw/process_scene_message_words.asm" ; 0x3c18

%include "vpcvw/show_vpcvw_scene_messages.asm" ; 0x3c7b

%include "vpcvw/consume_counted_item_use.asm" ; 0x3cde

%include "vpcvw/apply_item_device_effect.asm" ; 0x3cfe

%include "shared/ovr/refresh_title_and_member_panel.asm" ; 0x4011

%include "vpcvw/refresh_member_inventory_panel.asm" ; 0x40b7

%include "vpcvw/choose_member_skill_group.asm" ; 0x40ef

%include "vpcvw/create_item_slot_from_record.asm" ; 0x4253

%include "vpcvw/rebalance_item_stack.asm"  ; 0x42e3

%include "vpcvw/combine_item_recipe.asm"   ; 0x435b

%include "vpcvw/merge_counted_item_slots.asm" ; 0x4421

%include "vpcvw/split_counted_item_stack.asm" ; 0x4505

%include "vpcvw/item_inventory_category.asm" ; 0x4573

%include "vpcvw/display_cursed_status_message.asm" ; 0x468b

%include "vpcvw/equipped_item_is_cursed.asm" ; 0x474b

%include "shared/ovr/set_party_hand_attack.asm" ; 0x4793

%include "vpcvw/read_item_special_power.asm" ; 0x4a1c

%include "vpcvw/equip_selected_party_item.asm" ; 0x4a3f

%include "vpcvw/improve_party_skill_randomly.asm" ; 0x5006

%include "vpcvw/use_item_special_power.asm" ; 0x5050

%include "shared/ovr/find_floor_item_slot.asm"  ; 0x539e

%include "shared/ovr/add_floor_item.asm"        ; 0x542a

%include "vpcvw/run_member_inventory_menu.asm" ; 0x54fb

%include "vpcvw/run_character_view_screen.asm" ; 0x616c

%include "shared/ovr/draw_split_two_line_text.asm" ; 0x6977

%include "shared/ovr/draw_member_armor_class.asm" ; 0x6a20

%include "shared/ovr/draw_item_slot_label.asm"  ; 0x6c47

%include "shared/ovr/draw_member_item_page.asm" ; 0x6d13

%include "vpcvw/recharge_inventory_item.asm" ; 0x6f62

%include "vpcvw/encode_special_power_glyphs.asm" ; 0x706c

%include "vpcvw/identify_and_show_item_details.asm" ; 0x70ca

%include "vpcvw/set_character_skill_flags.asm" ; 0x82da

%include "vpcvw/prepare_profession_skill_list.asm" ; 0x8421

%include "shared/ovr/draw_skill_list_values.asm" ; 0x8676

%include "shared/ovr/draw_dialog_button_prompt.asm" ; 0x8730

%include "shared/ovr/input_text_field.asm"      ; 0x88b6

%include "shared/ovr/prompt_character_name.asm" ; 0x8a6e

%include "vpcvw/cap_member_stats.asm"      ; 0x8f64

%include "vpcvw/evaluate_profession_stat_mins.asm" ; 0x8fb8

%include "vpcvw/evaluate_character_profession.asm" ; 0x902e

%include "shared/ovr/evaluate_character_professions.asm" ; 0x91b2

%include "vpcvw/apply_race_stat_limits.asm" ; 0x91d9

%include "vpcvw/change_character_profession.asm" ; 0x92b3

%include "shared/ovr/load_member_icon.asm"      ; 0x9434

%include "vpcvw/choose_member_portrait.asm" ; 0x9491

%include "vpcvw/rename_party_member.asm"   ; 0x96d5

%include "vpcvw/handle_member_action_menu.asm" ; 0x9740

%include ".cache/c.lib/shared/ovr/ovbgn.asm"           ; 0x97ee

%include ".cache/c.lib/shared/ovr/cswt.asm"            ; 0x982c

__zdata_start:
%include "vpcvw/data/cvw_strings.asm"      ; 0x9844

%include ".cache/c.lib/shared/ovr/ovbgn.data.asm"      ; 0x9b82


__zimage_end:
absolute __zimage_end
%include "vpcvw/data/globals.asm"
__zobss_end:
