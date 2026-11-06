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
    dw (__zdata_start - __zcode_start)       ; 0xaecf ; o_csize: code size in bytes
    dw __zdseg_end                           ; 0x9098 ; o_dorg: data load origin (memory offset)
    dw (__zimage_end - __zdata_start)        ; 0x009c ; o_dsize: initialized data size
    dw __zobss_end - __zimage_end            ; 0x1f22 ; o_bss: uninitialized data size
    dw aztec_ovbgn - IMAGE_BASE + __zres_end ; 0xfe57 ; o_entry: overlay entry offset (CS)

__zcode_start:
area_set_0_save_file equ __zdseg_end + (__zarea_set_0_save_file - __zdata_start)
area_set_1_left_save_file equ __zdseg_end + (__zarea_set_1_left_save_file - __zdata_start)
area_set_1_right_save_file equ __zdseg_end + (__zarea_set_1_right_save_file - __zdata_start)
area_set_1_center_save_file equ __zdseg_end + (__zarea_set_1_center_save_file - __zdata_start)
area_set_2_save_file equ __zdseg_end + (__zarea_set_2_save_file - __zdata_start)
npc_gold_offer_prefix_text equ __zdseg_end + (__znpc_gold_offer_prefix_text - __zdata_start)
npc_gold_offer_suffix_text equ __zdseg_end + (__znpc_gold_offer_suffix_text - __zdata_start)
spacebar_prompt_text equ __zdseg_end + (__zspacebar_prompt_text - __zdata_start)
npc_offer_choice_box_save_file equ __zdseg_end + (__znpc_offer_choice_box_save_file - __zdata_start)
npc_offer_choices_save_file equ __zdseg_end + (__znpc_offer_choices_save_file - __zdata_start)
npc_action_dialog_save_file equ __zdseg_end + (__znpc_action_dialog_save_file - __zdata_start)
npc_item_dialog_screen_backup equ __zdseg_end + (__znpc_item_dialog_screen_backup - __zdata_start)
npc_screen_temp_file equ __zdseg_end + (__znpc_screen_temp_file - __zdata_start)
spell_cost_panel_text equ __zdseg_end + (__zspell_cost_panel_text - __zdata_start)
npc_spell_dialog_save_file equ __zdseg_end + (__znpc_spell_dialog_save_file - __zdata_start)
text_space equ __zdseg_end + (__ztext_space - __zdata_start)
npc_text_separator equ __zdseg_end + (__znpc_text_separator - __zdata_start)
npc_message_line_separator equ __zdseg_end + (__znpc_message_line_separator - __zdata_start)
npc_dialog_phoonzang_prefix equ __zdseg_end + (__znpc_dialog_phoonzang_prefix - __zdata_start)
save_si equ __zdseg_end + (__zsave_si - __zdata_start)
save_di equ __zdseg_end + (__zsave_di - __zdata_start)
save_sp equ __zdseg_end + (__zsave_sp - __zdata_start)
save_bp equ __zdseg_end + (__zsave_bp - __zdata_start)
save_ret equ __zdseg_end + (__zsave_ret - __zdata_start)
_Uorg equ __zdseg_end + (__zobss_9134 - __zdata_start)
npc_action_state equ __zdseg_end + (__zobss_9134 - __zdata_start)
npc_record_index equ __zdseg_end + (__zobss_9136 - __zdata_start)
npc_record_buffer equ __zdseg_end + (__zobss_9138 - __zdata_start)
npc_event_triggers equ __zdseg_end + (__zobss_9148 - __zdata_start)
npc_event_trigger_match_byte_1 equ __zdseg_end + (__zobss_914a - __zdata_start)
npc_event_trigger_match_byte_2 equ __zdseg_end + (__zobss_914b - __zdata_start)
npc_event_trigger_event equ __zdseg_end + (__zobss_914c - __zdata_start)
npc_event_trigger_handler equ __zdseg_end + (__zobss_914d - __zdata_start)
npc_action_record_lookup equ __zdseg_end + (__zobss_9178 - __zdata_start)
npc_dialog_first_choice_msg_id equ __zdseg_end + (__zobss_91a0 - __zdata_start)
npc_greeting_msg_id equ __zdseg_end + (__zobss_91a2 - __zdata_start)
npc_dialog_response_name_msg_id equ __zdseg_end + (__zobss_91a4 - __zdata_start)
npc_dialog_response_wait_msg_id equ __zdseg_end + (__zobss_91a6 - __zdata_start)
npc_phrase_msg_id equ __zdseg_end + (__zobss_91a8 - __zdata_start)
npc_shop_price_markup equ __zdseg_end + (__zobss_91aa - __zdata_start)
npc_sell_price_percent equ __zdseg_end + (__zobss_91ac - __zdata_start)
npc_requested_item_id equ __zdseg_end + (__zobss_91ae - __zdata_start)
npc_gold equ __zdseg_end + (__zobss_91b6 - __zdata_start)
npc_gold_high equ __zdseg_end + (__zobss_91b8 - __zdata_start)
npc_action_enabled equ __zdseg_end + (__zobss_91ba - __zdata_start)
npc_attack_encounter_id equ __zdseg_end + (__zobss_91c2 - __zdata_start)
npc_monster_picture_id equ __zdseg_end + (__zobss_91c3 - __zdata_start)
npc_level equ __zdseg_end + (__zobss_91c5 - __zdata_start)
npc_slot_index equ __zdseg_end + (__zobss_91c6 - __zdata_start)
current_faction_index equ __zdseg_end + (__zobss_91c7 - __zdata_start)
npc_shop_stock_record_index equ __zdseg_end + (__zobss_91c9 - __zdata_start)
npc_encounter_intro_sound_id equ __zdseg_end + (__zobss_91ca - __zdata_start)
npc_effect_flags equ __zdseg_end + (__zobss_91cb - __zdata_start)
text_line_buffer equ __zdseg_end + (__zobss_91cc - __zdata_start)
text_line_buffer_row_1 equ __zdseg_end + (__zobss_924c - __zdata_start)
text_line_buffer_row_3 equ __zdseg_end + (__zobss_934c - __zdata_start)
text_line_color equ __zdseg_end + (__zobss_93cc - __zdata_start)
text_line_color_row_1 equ __zdseg_end + (__zobss_93ce - __zdata_start)
text_line_color_row_3 equ __zdseg_end + (__zobss_93d2 - __zdata_start)
text_line_index equ __zdseg_end + (__zobss_93d4 - __zdata_start)
party_redraw_interval equ __zdseg_end + (__zobss_93d6 - __zdata_start)
npc_area_bottom equ __zdseg_end + (__zobss_93d8 - __zdata_start)
npc_encounter_sound equ __zdseg_end + (__zobss_93da - __zdata_start)
npc_cell_effect_frame equ __zdseg_end + (__zobss_93dc - __zdata_start)
npc_message_ready equ __zdseg_end + (__zobss_93ee - __zdata_start)
quest_map_message_buffer equ __zdseg_end + (__zobss_93f0 - __zdata_start)
npc_event_message_seen equ __zdseg_end + (__zobss_94f0 - __zdata_start)
npc_event_actor_buffer equ __zdseg_end + (__zobss_955e - __zdata_start)
quest_map_name_buffer equ __zdseg_end + (__zobss_9576 - __zdata_start)
quest_map_subject_buffer equ __zdseg_end + (__zobss_958e - __zdata_start)
npc_dialog_departure_flag equ __zdseg_end + (__zobss_95a6 - __zdata_start)
npc_choice_message_buffer equ __zdseg_end + (__zobss_95a8 - __zdata_start)
npc_choice_message_text equ __zdseg_end + (__zobss_95a9 - __zdata_start)
npc_action_bitmap_copy equ __zdseg_end + (__zobss_95f8 - __zdata_start)
npc_effect_message_buffer equ __zdseg_end + (__zobss_95fa - __zdata_start)
npc_effect_message_value equ __zdseg_end + (__zobss_95fb - __zdata_start)
npc_gold_paid_total equ __zdseg_end + (__zobss_964a - __zdata_start)
npc_gold_paid_total_high equ __zdseg_end + (__zobss_964c - __zdata_start)
npc_charm_bonus equ __zdseg_end + (__zobss_964e - __zdata_start)
npc_spell_target equ __zdseg_end + (__zobss_9650 - __zdata_start)
list_row_marked equ __zdseg_end + (__zobss_9652 - __zdata_start)
list_row_marked_next equ __zdseg_end + (__zobss_9654 - __zdata_start)
list_row_glyph equ __zdseg_end + (__zobss_967a - __zdata_start)
list_row_glyph_next equ __zdseg_end + (__zobss_967c - __zdata_start)
list_row_name equ __zdseg_end + (__zobss_96a2 - __zdata_start)
list_row_name_next equ __zdseg_end + (__zobss_96b8 - __zdata_start)
list_row_count equ __zdseg_end + (__zobss_985a - __zdata_start)
list_row_count_next equ __zdseg_end + (__zobss_985c - __zdata_start)
npc_item_list_profession_mask equ __zdseg_end + (__zobss_9882 - __zdata_start)
npc_item_list_race_mask equ __zdseg_end + (__zobss_98be - __zdata_start)
npc_item_list_gender_mask equ __zdseg_end + (__zobss_98fa - __zdata_start)
npc_item_list_item_type equ __zdseg_end + (__zobss_9918 - __zdata_start)
npc_item_list_value equ __zdseg_end + (__zobss_9936 - __zdata_start)
npc_item_list_value_high_word equ __zdseg_end + (__zobss_9938 - __zdata_start)
npc_item_value_unit_text equ __zdseg_end + (__zobss_99ae - __zdata_start)
npc_item_list_glyph equ __zdseg_end + (__zobss_99b8 - __zdata_start)
npc_item_list_name equ __zdseg_end + (__zobss_99d6 - __zdata_start)
npc_item_list_item_count equ __zdseg_end + (__zobss_9c6a - __zdata_start)
npc_item_scroll_top equ __zdseg_end + (__zobss_9ca6 - __zdata_start)
member_item_count equ __zdseg_end + (__zobss_9ca8 - __zdata_start)
member_item_slot_indices equ __zdseg_end + (__zobss_9caa - __zdata_start)
member_item_slot_indices_next equ __zdseg_end + (__zobss_9cac - __zdata_start)
npc_item_list_count equ __zdseg_end + (__zobss_9cd2 - __zdata_start)
npc_item_list_item_id equ __zdseg_end + (__zobss_9cd4 - __zdata_start)
npc_substitution_text equ __zdseg_end + (__zobss_9d10 - __zdata_start)
npc_pilfer_roll_bias equ __zdseg_end + (__zobss_9d60 - __zdata_start)
npc_negotiation_tactic equ __zdseg_end + (__zobss_9d62 - __zdata_start)
npc_dialog_initial_state equ __zdseg_end + (__zobss_9d64 - __zdata_start)
npc_selected_dialog_option equ __zdseg_end + (__zobss_9d66 - __zdata_start)
npc_dialog_option_state equ __zdseg_end + (__zobss_9d68 - __zdata_start)
npc_dialog_secondary_state equ __zdseg_end + (__zobss_9d6a - __zdata_start)
npc_dialog_shop_mode equ __zdseg_end + (__zobss_9d6c - __zdata_start)
known_spell_ids equ __zdseg_end + (__zobss_9df2 - __zdata_start)
npc_dialog_choice_index equ __zdseg_end + (__zobss_9e42 - __zdata_start)
npc_dialog_choice_auxiliary equ __zdseg_end + (__zobss_9e44 - __zdata_start)
npc_dialog_primary_choice equ __zdseg_end + (__zobss_9e46 - __zdata_start)
npc_dialog_choice_code equ __zdseg_end + (__zobss_9e48 - __zdata_start)
npc_dialog_default_choice_index equ __zdseg_end + (__zobss_9e4a - __zdata_start)
npc_dialog_default_choice_value equ __zdseg_end + (__zobss_9e4c - __zdata_start)
npc_dialog_choice_backup equ __zdseg_end + (__zobss_9e4e - __zdata_start)
npc_dialog_response_value equ __zdseg_end + (__zobss_9e50 - __zdata_start)
npc_dialog_topic_0_enabled equ __zdseg_end + (__zobss_9e52 - __zdata_start)
npc_dialog_topic_1_enabled equ __zdseg_end + (__zobss_9e54 - __zdata_start)
npc_dialog_topic_2_enabled equ __zdseg_end + (__zobss_9e56 - __zdata_start)
npc_dialog_topic_3_enabled equ __zdseg_end + (__zobss_9e58 - __zdata_start)
npc_dialog_topic_4_enabled equ __zdseg_end + (__zobss_9e5a - __zdata_start)
npc_dialog_topic_5_enabled equ __zdseg_end + (__zobss_9e5c - __zdata_start)
npc_dialog_topic_6_enabled equ __zdseg_end + (__zobss_9e5e - __zdata_start)
npc_dialog_empty_choice_seen equ __zdseg_end + (__zobss_9e60 - __zdata_start)
npc_dialog_response_active equ __zdseg_end + (__zobss_9e62 - __zdata_start)
npc_dialog_mode7_seen equ __zdseg_end + (__zobss_9e64 - __zdata_start)
npc_dialog_prefix_matched equ __zdseg_end + (__zobss_9e66 - __zdata_start)
npc_response_flag_2 equ __zdseg_end + (__zobss_9e68 - __zdata_start)
npc_response_flag_3 equ __zdseg_end + (__zobss_9e6a - __zdata_start)
npc_response_flag_4 equ __zdseg_end + (__zobss_9e6c - __zdata_start)
npc_response_flag_0 equ __zdseg_end + (__zobss_9e6e - __zdata_start)
npc_response_flag_1 equ __zdseg_end + (__zobss_9e70 - __zdata_start)
npc_dialog_response_state_extra equ __zdseg_end + (__zobss_9e72 - __zdata_start)
npc_response_flag_5 equ __zdseg_end + (__zobss_9e74 - __zdata_start)
npc_response_flag_6 equ __zdseg_end + (__zobss_9e76 - __zdata_start)
npc_dialog_choice_value_a equ __zdseg_end + (__zobss_9e78 - __zdata_start)
npc_dialog_choice_value_b equ __zdseg_end + (__zobss_9e7a - __zdata_start)
npc_dialog_latest_choice equ __zdseg_end + (__zobss_9e7c - __zdata_start)
npc_alt_choice_index equ __zdseg_end + (__zobss_9e7e - __zdata_start)
npc_alt_choice_value equ __zdseg_end + (__zobss_9e80 - __zdata_start)
npc_dialog_secondary_choice equ __zdseg_end + (__zobss_9e82 - __zdata_start)
npc_dialog_text_has_question equ __zdseg_end + (__zobss_9e84 - __zdata_start)
npc_dialog_choice_entries equ __zdseg_end + (__zobss_9e86 - __zdata_start)
npc_dialog_choice_entry_text equ __zdseg_end + (__zobss_9e88 - __zdata_start)
npc_dialog_choice_entry_text_1 equ __zdseg_end + (__zobss_9e89 - __zdata_start)
npc_total_choice_count equ __zdseg_end + (__zobss_a656 - __zdata_start)
npc_dialog_verb_words equ __zdseg_end + (__zobss_a658 - __zdata_start)
npc_dialog_filler_words equ __zdseg_end + (__zobss_a6bc - __zdata_start)
npc_dialog_interjection_words equ __zdseg_end + (__zobss_a702 - __zdata_start)
npc_dialog_modal_words equ __zdseg_end + (__zobss_a766 - __zdata_start)
npc_pronoun_swaps equ __zdseg_end + (__zobss_a7ac - __zdata_start)
npc_pronoun_swaps_replacement equ __zdseg_end + (__zobss_a7b6 - __zdata_start)
npc_dialog_question_words equ __zdseg_end + (__zobss_a810 - __zdata_start)
npc_dialog_pronoun_words equ __zdseg_end + (__zobss_a856 - __zdata_start)
npc_dialog_synonym_lists equ __zdseg_end + (__zobss_a8c4 - __zdata_start)
npc_dialog_mode equ __zdseg_end + (__zobss_b030 - __zdata_start)
npc_dialog_not_word equ __zdseg_end + (__zobss_b032 - __zdata_start)
npc_dialog_to_word equ __zdseg_end + (__zobss_b03c - __zdata_start)
npc_first_choice_count equ __zdseg_end + (__zobss_b046 - __zdata_start)
npc_matched_choice_offset equ __zdseg_end + (__zobss_b048 - __zdata_start)
npc_dialog_response_name equ __zdseg_end + (__zobss_b04a - __zdata_start)
npc_dialog_response_wait equ __zdseg_end + (__zobss_b04c - __zdata_start)
npc_member_index equ __zdseg_end + (__zobss_b04e - __zdata_start)
npc_first_choice_message_base equ __zdseg_end + (__zobss_b050 - __zdata_start)
npc_second_choice_message_base equ __zdseg_end + (__zobss_b052 - __zdata_start)
last_npc_text_entry_key equ __zdseg_end + (__zobss_b054 - __zdata_start)
_Uend equ __zdseg_end + (__zobss_end - __zdata_start)

%include "vmnpc/fill_npc_action_slots.asm" ; 0x000e

%include "vmnpc/build_npc_action_overlay.asm" ; 0x01d2

%include "vmnpc/add_overlay_item.asm"      ; 0x062d

%include "vmnpc/queue_npc_cell_overlay.asm" ; 0x0727

%include "shared/ovr/queue_marker_overlay.asm"  ; 0x0961

%include "shared/ovr/draw_overlay_list_item_text.asm" ; 0x0a56

%include "shared/ovr/redraw_glyph_strip.asm"    ; 0x0ab2

%include "shared/ovr/draw_centered_text_at_x.asm" ; 0x0b30

%include "shared/ovr/redraw_area_set.asm"       ; 0x0b74

%include "shared/ovr/show_area_set.asm"         ; 0x0c96

%include "vmnpc/draw_npc_gold_frame.asm"   ; 0x0d46

%include "vmnpc/rotate_npc_text_lines.asm" ; 0x0dc3

%include "vmnpc/next_text_line.asm"        ; 0x0e15

%include "shared/ovr/check_party_redraw_interval.asm" ; 0x0ef1

%include "vmnpc/step_npc_screen_animation.asm" ; 0x0f50

%include "vmnpc/run_npc_screen_animation.asm" ; 0x109f

%include "vmnpc/wait_for_npc_screen_animation.asm" ; 0x10b6

%include "vmnpc/draw_saved_text_area.asm"  ; 0x10c9

%include "vmnpc/wait_for_spacebar_prompt.asm" ; 0x114d

%include "vmnpc/wait_ticks_abortable.asm"  ; 0x119e

%include "vmnpc/show_centered_npc_message.asm" ; 0x11f8

%include "vmnpc/show_npc_message_with_delay.asm" ; 0x128c

%include "vmnpc/display_npc_text_message.asm" ; 0x130b

%include "vmnpc/show_npc_message.asm"      ; 0x13b4

%include "vmnpc/animate_npc_encounter_cells.asm" ; 0x13ed

%include "vmnpc/draw_selected_menu_entry.asm" ; 0x1676

%include "vmnpc/fill_frame_border.asm"     ; 0x17a6

%include "vmnpc/draw_npc_dialog_action_menu.asm" ; 0x1821

%include "vmnpc/show_npc_offer_choice_dialog.asm" ; 0x1d39

%include "vmnpc/ovmain.asm"                ; 0x21bf

%include "shared/ovr/init_item_slot.asm"        ; 0x21d2

%include "vmnpc/find_removable_party_item_slot.asm" ; 0x22e7

%include "vmnpc/find_party_item_slot.asm"  ; 0x2372

%include "vmnpc/begin_npc_message_display.asm" ; 0x23d0

%include "vmnpc/end_npc_message_display.asm" ; 0x243b

%include "vmnpc/display_npc_message.asm"   ; 0x2472

%include "vmnpc/select_npc_event_message.asm" ; 0x24ae

%include "vmnpc/show_quest_map_information.asm" ; 0x2768

%include "vmnpc/share_npc_quest_map_knowledge.asm" ; 0x28a1

%include "vmnpc/start_npc_attack.asm"      ; 0x2963

%include "vmnpc/npc_give_item_to_party_member.asm" ; 0x29b1

%include "vmnpc/run_npc_action_record.asm" ; 0x2b8e

%include "vmnpc/match_npc_event_trigger.asm" ; 0x3773

%include "vmnpc/reduce_party_status_timer.asm" ; 0x38c1

%include "vmnpc/apply_spell_to_npc.asm"    ; 0x3900

%include "vmnpc/cast_spell_from_npc_dialog.asm" ; 0x3a96

%include "shared/ovr/draw_selected_button_label.asm" ; 0x3b9a

%include "shared/ovr/draw_list_rows.asm"        ; 0x3c97

%include "shared/ovr/draw_inset_list_rows.asm"  ; 0x3df9

%include "vmnpc/single_action_item_dialog.asm" ; 0x3e3a

%include "vmnpc/draw_npc_item_list_rows.asm" ; 0x4514

%include "vmnpc/draw_npc_item_list_panel.asm" ; 0x4775

%include "vmnpc/refresh_npc_screen.asm"    ; 0x47b9

%include "vmnpc/npc_item_selection_dialog.asm" ; 0x47d9

%include "vmnpc/build_member_item_list.asm" ; 0x4fea

%include "vmnpc/remove_member_item_row.asm" ; 0x515b

%include "vmnpc/use_item_on_npc.asm"       ; 0x51bb

%include "vmnpc/compact_npc_item_rows.asm" ; 0x5371

%include "shared/ovr/is_quest_map_item.asm"     ; 0x5497

%include "shared/ovr/give_quest_map.asm"        ; 0x54b4

%include "vmnpc/buy_npc_item.asm"          ; 0x5571

%include "vmnpc/select_npc_item_to_buy.asm" ; 0x573e

%include "shared/ovr/replace_slashes_with_spaces.asm" ; 0x57bb

%include "vmnpc/sell_item_to_npc.asm"      ; 0x57e1

%include "vmnpc/give_item_to_npc.asm"      ; 0x5b74

%include "vmnpc/npc_item_action_menu.asm"  ; 0x5d0e

%include "vmnpc/select_npc_gold_menu_action.asm" ; 0x5d93

%include "vmnpc/run_npc_shop_transaction.asm" ; 0x5e96

%include "vmnpc/party_member_pilfer_npc.asm" ; 0x5fd0

%include "vmnpc/negotiate_with_npc.asm"    ; 0x631e

%include "vmnpc/run_npc_dialog_turn.asm"   ; 0x677a

%include "vmnpc/prepare_npc_encounter_scene.asm" ; 0x6d9d

%include "vmnpc/build_npc_item_list_for_shop.asm" ; 0x6e0f

%include "vmnpc/prepare_npc_interaction_screen.asm" ; 0x70b7

%include "vmnpc/restore_npc_interaction_screen.asm" ; 0x72bf

%include "vmnpc/run_npc_shop_interaction.asm" ; 0x7400

%include "vmnpc/play_sound_cue.asm"        ; 0x742e

%include "shared/ovr/draw_party_slot_letters.asm" ; 0x7452

%include "shared/ovr/advance_party_slot_frames.asm" ; 0x74d1

%include "shared/ovr/collect_known_spells.asm"  ; 0x752c

%include "shared/ovr/draw_marker_glyph.asm"     ; 0x759d

%include "shared/ovr/draw_power_digit.asm"      ; 0x75db

%include "shared/ovr/draw_spell_cost.asm"       ; 0x7667

%include "shared/ovr/draw_realm_spell_points.asm" ; 0x7708

%include "shared/ovr/periodic_party_redraw.asm" ; 0x77a1

%include "vmnpc/step_list_selection.asm"   ; 0x7832

%include "vmnpc/pick_npc_spell_dialog.asm" ; 0x786c

%include "vmnpc/pool_party_gold.asm"       ; 0x84f0

%include "shared/ovr/draw_split_two_line_text.asm" ; 0x8550

%include "vmnpc/adjust_npc_attitudes.asm"  ; 0x85f9

%include "shared/ovr/try_raise_member_skill.asm" ; 0x8662

%include "vmnpc/mask_string_prefix_with_x.asm" ; 0x86a4

%include "vmnpc/reset_npc_dialog_response.asm" ; 0x86c6

%include "vmnpc/normalize_npc_dialog_text.asm" ; 0x8738

%include "vmnpc/copy_npc_choice_text_prefix.asm" ; 0x8793

%include "vmnpc/copy_npc_choice_text_expanded.asm" ; 0x8849

%include "vmnpc/copy_npc_choice_text.asm"  ; 0x8981

%include "vmnpc/find_npc_choice_text_prefix.asm" ; 0x89a8

%include "vmnpc/find_npc_dialog_option.asm" ; 0x8a81

%include "vmnpc/mask_matching_prefix_with_x.asm" ; 0x8bb0

%include "vmnpc/swap_npc_pronoun.asm"      ; 0x8be8

%include "shared/ovr/titlecase_string.asm"      ; 0x8c2a

%include "vmnpc/choose_random_npc_phrase.asm" ; 0x8c72

%include "vmnpc/word_end_index.asm"        ; 0x8d86

%include "vmnpc/replace_npc_dialog_alias.asm" ; 0x8dbd

%include "vmnpc/expand_npc_dialog_text.asm" ; 0x8ead

%include "vmnpc/process_npc_dialog_response.asm" ; 0x8f85

%include "vmnpc/reveal_text_line.asm"      ; 0x927d

%include "vmnpc/apply_text_control_codes.asm" ; 0x93e7

%include "vmnpc/wrap_npc_message.asm"      ; 0x9587

%include "vmnpc/append_npc_message_text.asm" ; 0x96c7

%include "vmnpc/display_npc_message_sequence.asm" ; 0x9748

%include "vmnpc/build_npc_dialog_choice_reply.asm" ; 0x9844

%include "vmnpc/resolve_npc_dialog_reaction.asm" ; 0x9a04

%include "vmnpc/show_faction_attitude_message.asm" ; 0x9bcc

%include "vmnpc/dispatch_npc_effect_message.asm" ; 0x9c7a

%include "vmnpc/npc_choice_message_address.asm" ; 0x9d06

%include "vmnpc/handle_npc_dialog_choice.asm" ; 0x9d30

%include "vmnpc/save_npc_dialog_default_choice.asm" ; 0xa29f

%include "vmnpc/collect_npc_dialog_choices.asm" ; 0xa2e7

%include "vmnpc/load_npc_pronoun_swaps.asm" ; 0xa391

%include "vmnpc/load_message_batch.asm"    ; 0xa3dd

%include "vmnpc/load_npc_dialog_messages.asm" ; 0xa411

%include "vmnpc/init_npc_dialog_text.asm"  ; 0xa441

%include "vmnpc/edit_npc_text_entry.asm"   ; 0xa546

%include "vmnpc/edit_npc_dialog_text_line.asm" ; 0xa837

%include "vmnpc/find_npc_message_match.asm" ; 0xaa93

%include "vmnpc/run_npc_member_dialog.asm" ; 0xab8d

%include "shared/ovr/aztec_ovbgn.asm"           ; 0xae10

%include "shared/aztec/aztec_strncpy.asm"         ; 0xae4e

%include "shared/aztec/aztec_strcmp.asm"          ; 0xae76

__zdata_start:
%include "vmnpc/data/area_set_0_save_file.asm" ; 0xaedd

%include "vmnpc/data/area_set_1_left_save_file.asm" ; 0xaee4

%include "vmnpc/data/area_set_1_right_save_file.asm" ; 0xaeeb

%include "vmnpc/data/area_set_1_center_save_file.asm" ; 0xaef2

%include "vmnpc/data/area_set_2_save_file.asm" ; 0xaef9

%include "vmnpc/data/npc_gold_offer_prefix_text.asm" ; 0xaf00

%include "vmnpc/data/npc_gold_offer_suffix_text.asm" ; 0xaf03

%include "vmnpc/data/spacebar_prompt_text.asm" ; 0xaf07

%include "vmnpc/data/npc_offer_choice_box_save_file.asm" ; 0xaf09

%include "vmnpc/data/npc_offer_choices_save_file.asm" ; 0xaf0f

%include "vmnpc/data/npc_action_dialog_save_file.asm" ; 0xaf15

%include "vmnpc/data/npc_item_dialog_screen_backup.asm" ; 0xaf1b

%include "vmnpc/data/npc_screen_temp_file.asm" ; 0xaf21

%include "vmnpc/data/spell_cost_panel_text.asm" ; 0xaf29

%include "vmnpc/data/npc_spell_dialog_save_file.asm" ; 0xaf2d

%include "vmnpc/data/text_space.asm"       ; 0xaf33

%include "vmnpc/data/npc_text_separator.asm" ; 0xaf35

%include "vmnpc/data/npc_message_line_separator.asm" ; 0xaf37

%include "vmnpc/data/npc_dialog_phoonzang_prefix.asm" ; 0xaf65

%include "shared/data/overlay_saved_registers.asm" ; 0xaf6f


__zimage_end:
absolute __zimage_end
%include "vmnpc/data/globals.asm"
__zobss_end:
