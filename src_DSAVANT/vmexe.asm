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
    dw (__zdata_start - __zcode_start)       ; 0xa537 ; o_csize: code size in bytes
    dw __zdseg_end                           ; 0x9098 ; o_dorg: data load origin (memory offset)
    dw (__zimage_end - __zdata_start)        ; 0x0024 ; o_dsize: initialized data size
    dw __zobss_end - __zimage_end            ; 0x0120 ; o_bss: uninitialized data size
    dw aztec_ovbgn - IMAGE_BASE + __zres_end ; 0xf511 ; o_entry: overlay entry offset (CS)

__zcode_start:
combat_glyph_upper_save_file equ __zdseg_end + (__zcombat_glyph_upper_save_file - __zdata_start)
combat_glyph_lower_save_file equ __zdseg_end + (__zcombat_glyph_lower_save_file - __zdata_start)
monster_picture_template equ __zdseg_end + (__zmonster_picture_template - __zdata_start)
empty_text_fragment equ __zdseg_end + (__zempty_text_fragment - __zdata_start)
save_si equ __zdseg_end + (__zsave_si - __zdata_start)
save_di equ __zdseg_end + (__zsave_di - __zdata_start)
save_sp equ __zdseg_end + (__zsave_sp - __zdata_start)
save_bp equ __zdseg_end + (__zsave_bp - __zdata_start)
save_ret equ __zdseg_end + (__zsave_ret - __zdata_start)
_Uorg equ __zdseg_end + (__zobss_90bc - __zdata_start)
window_record equ __zdseg_end + (__zobss_90bc - __zdata_start)
cell_effect_frame equ __zdseg_end + (__zobss_90ca - __zdata_start)
pending_effect_sound equ __zdseg_end + (__zobss_90dc - __zdata_start)
combat_effect_sound equ __zdseg_end + (__zobss_90de - __zdata_start)
combat_overlay_entry_flag equ __zdseg_end + (__zobss_90e0 - __zdata_start)
party_redraw_interval equ __zdseg_end + (__zobss_90e2 - __zdata_start)
combat_wait_occurred equ __zdseg_end + (__zobss_90e4 - __zdata_start)
combat_action_name_buffer equ __zdseg_end + (__zobss_90e6 - __zdata_start)
combat_action_message_buffer equ __zdseg_end + (__zobss_9136 - __zdata_start)
combat_action_suffix_buffer equ __zdseg_end + (__zobss_9186 - __zdata_start)
combat_message_layout equ __zdseg_end + (__zobss_91d6 - __zdata_start)
spell_backfired equ __zdseg_end + (__zobss_91d8 - __zdata_start)
spell_cast_failed equ __zdseg_end + (__zobss_91da - __zdata_start)
_Uend equ __zdseg_end + (__zobss_end - __zdata_start)

%include "shared/ovr/replace_slashes_with_spaces.asm" ; 0x000e

%include "vmexe/classify_percentage_band.asm" ; 0x0034

%include "shared/ovr/select_encumbrance_style.asm" ; 0x00db

%include "shared/ovr/draw_active_member_panel.asm" ; 0x0257

%include "vmexe/sync_member_party_panel.asm" ; 0x030b

%include "shared/ovr/fill_action_slot_table.asm" ; 0x0456

%include "shared/ovr/advance_action_slots.asm"  ; 0x0656

%include "shared/ovr/add_overlay_item.asm"      ; 0x0979

%include "shared/ovr/queue_cell_action_overlay.asm" ; 0x0a83

%include "shared/ovr/queue_marker_overlay.asm"  ; 0x0cc9

%include "shared/ovr/draw_overlay_list_item_text.asm" ; 0x0dbe

%include "vmexe/queue_cell_effect_overlay.asm" ; 0x0e1a

%include "vmexe/animate_target_spell_effect.asm" ; 0x0f67

%include "vmexe/copy_combatant_name.asm"   ; 0x15ab

%include "vmexe/set_menu_text_position.asm" ; 0x15f9

%include "vmexe/draw_colored_text_with_space.asm" ; 0x1613

%include "vmexe/draw_centered_menu_text_row.asm" ; 0x1642

%include "vmexe/display_combat_message.asm" ; 0x169d

%include "vmexe/draw_centered_text_fragments.asm" ; 0x16c1

%include "vmexe/use_item_refresh_stamina_drain.asm" ; 0x178e

%include "vmexe/ovmain.asm"                ; 0x17d1

%include "vmexe/subtract_combatant_stamina.asm" ; 0x182b

%include "shared/ovr/check_party_redraw_interval.asm" ; 0x1849

%include "vmexe/step_combat_screen_animation.asm" ; 0x18a8

%include "vmexe/run_combat_screen_animation.asm" ; 0x1a35

%include "vmexe/wait_for_combat_animation.asm" ; 0x1a4c

%include "vmexe/wait_for_combat_input.asm" ; 0x1a5f

%include "shared/ovr/redraw_glyph_strip.asm"    ; 0x1ac7

%include "vmexe/refresh_combat_glyph_strip.asm" ; 0x1b45

%include "shared/ovr/try_raise_member_skill.asm" ; 0x1bf4

%include "vmexe/spell_resistance_penetration.asm" ; 0x1c36

%include "vmexe/kill_combatant.asm"        ; 0x1c5e

%include "vmexe/announce_combatant_effect.asm" ; 0x1e35

%include "vmexe/roll_resisted_amount.asm"  ; 0x1f00

%include "vmexe/combatant_evades_targeting.asm" ; 0x1f5d

%include "vmexe/set_resisted_combatant_state.asm" ; 0x1f98

%include "vmexe/apply_resisted_status_timer.asm" ; 0x209c

%include "vmexe/deal_resisted_damage.asm"  ; 0x2242

%include "vmexe/show_combat_message_and_wait.asm" ; 0x24c2

%include "vmexe/reduce_spell_value_by_ward.asm" ; 0x24f0

%include "vmexe/apply_group_spell_wards.asm" ; 0x2553

%include "vmexe/select_battle_unit_range.asm" ; 0x25d0

%include "vmexe/drain_combatant_stamina.asm" ; 0x265f

%include "vmexe/damage_unit_range.asm"     ; 0x28e1

%include "vmexe/apply_status_to_unit_range.asm" ; 0x2998

%include "vmexe/damage_range_with_status.asm" ; 0x2a8b

%include "vmexe/damage_battle_side.asm"    ; 0x2bf2

%include "vmexe/apply_status_to_group_units.asm" ; 0x2c7b

%include "vmexe/apply_status_to_battle_side.asm" ; 0x2d6b

%include "shared/ovr/adjust_spell_value.asm"    ; 0x2e09

%include "vmexe/apply_battle_weakening_slowing.asm" ; 0x2e59

%include "vmexe/apply_random_condition.asm" ; 0x312e

%include "vmexe/animate_spell_at_target.asm" ; 0x33e2

%include "shared/ovr/check_monster_picture_space.asm" ; 0x34bc

%include "vmexe/summon_monster_group.asm"  ; 0x3620

%include "vmexe/show_spell_effect_message.asm" ; 0x3aa3

%include "vmexe/apply_combat_spell_effect.asm" ; 0x3b07

%include "vmexe/cast_combat_spell.asm"     ; 0x5fa1

%include "vmexe/find_active_party_unit.asm" ; 0x6374

%include "vmexe/select_target_group_unit.asm" ; 0x63cd

%include "vmexe/resolve_combatant_turn.asm" ; 0x6476

%include "vmexe/display_combat_action_and_wait.asm" ; 0x6edc

%include "vmexe/run_combat_round.asm"      ; 0x6f33

%include "vmexe/choose_weighted_index.asm" ; 0x73f6

%include "vmexe/apply_combat_attack_effects.asm" ; 0x7434

%include "vmexe/play_sound_with_rate_adjustment.asm" ; 0x7911

%include "vmexe/resolve_combatant_attack.asm" ; 0x7962

%include "vmexe/show_combat_action_text.asm" ; 0x908d

%include "vmexe/resolve_monster_special_attack.asm" ; 0x91b5

%include "vmexe/show_equipment_change_message.asm" ; 0x9842

%include "vmexe/attempt_combatant_hiding.asm" ; 0x989b

%include "vmexe/attempt_combatant_flee.asm" ; 0x9a2f

%include "vmexe/swap_party_member_slots.asm" ; 0x9d8d

%include "vmexe/move_party_member_in_formation.asm" ; 0x9e5d

%include "vmexe/resolve_combat_item_action.asm" ; 0x9f4f

%include "shared/ovr/aztec_ovbgn.asm"           ; 0xa4ca

%include "shared/ovr/aztec_cswt.asm"            ; 0xa508

%include "shared/ovr/aztec_swapmem.asm"         ; 0xa520

__zdata_start:
%include "vmexe/data/combat_glyph_upper_save_file.asm" ; 0xa545

%include "vmexe/data/combat_glyph_lower_save_file.asm" ; 0xa54c

%include "shared/data/monster_picture_template.asm" ; 0xa553

%include "vmexe/data/empty_text_fragment.asm" ; 0xa55d

%include "shared/data/overlay_saved_registers.asm" ; 0xa55f


__zimage_end:
absolute __zimage_end
%include "vmexe/data/globals.asm"
__zobss_end:
