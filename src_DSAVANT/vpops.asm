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
    dw (__zdata_start - __zcode_start)       ; 0x4ecd ; o_csize: code size in bytes
    dw __zdseg_end                           ; 0x9098 ; o_dorg: data load origin (memory offset)
    dw (__zimage_end - __zdata_start)        ; 0x003e ; o_dsize: initialized data size
    dw __zobss_end - __zimage_end            ; 0x02b8 ; o_bss: uninitialized data size
    dw aztec_ovbgn - IMAGE_BASE + __zres_end ; 0x9ee4 ; o_entry: overlay entry offset (CS)

__zcode_start:
area_set_0_save_file equ __zdseg_end + (__zarea_set_0_save_file - __zdata_start)
area_set_1_left_save_file equ __zdseg_end + (__zarea_set_1_left_save_file - __zdata_start)
area_set_1_right_save_file equ __zdseg_end + (__zarea_set_1_right_save_file - __zdata_start)
area_set_1_center_save_file equ __zdseg_end + (__zarea_set_1_center_save_file - __zdata_start)
area_set_2_save_file equ __zdseg_end + (__zarea_set_2_save_file - __zdata_start)
spell_cost_panel_text equ __zdseg_end + (__zspell_cost_panel_text - __zdata_start)
screen_save_temp_file equ __zdseg_end + (__zscreen_save_temp_file - __zdata_start)
item_dialog_temp_file equ __zdseg_end + (__zitem_dialog_temp_file - __zdata_start)
save_si equ __zdseg_end + (__zsave_si - __zdata_start)
save_di equ __zdseg_end + (__zsave_di - __zdata_start)
save_sp equ __zdseg_end + (__zsave_sp - __zdata_start)
save_bp equ __zdseg_end + (__zsave_bp - __zdata_start)
save_ret equ __zdseg_end + (__zsave_ret - __zdata_start)
_Uorg equ __zdseg_end + (__zobss_90d6 - __zdata_start)
party_redraw_interval equ __zdseg_end + (__zobss_90d6 - __zdata_start)
unit_targeted equ __zdseg_end + (__zobss_90d8 - __zdata_start)
known_spell_ids equ __zdseg_end + (__zobss_9106 - __zdata_start)
list_row_marked equ __zdseg_end + (__zobss_9156 - __zdata_start)
list_row_glyph equ __zdseg_end + (__zobss_917e - __zdata_start)
list_row_name equ __zdseg_end + (__zobss_91a6 - __zdata_start)
list_row_count equ __zdseg_end + (__zobss_935e - __zdata_start)
range_max_target_group equ __zdseg_end + (__zobss_9386 - __zdata_start)
bss_9388 equ __zdseg_end + (__zobss_9388 - __zdata_start)
bss_938a equ __zdseg_end + (__zobss_938a - __zdata_start)
bss_938c equ __zdseg_end + (__zobss_938c - __zdata_start)
_Uend equ __zdseg_end + (__zobss_end - __zdata_start)

%include "vpops/ovmain.asm"                ; 0x000e

%include "shared/ovr/draw_split_two_line_text.asm" ; 0x0022

%include "shared/ovr/redraw_glyph_strip.asm"    ; 0x00cb

%include "shared/ovr/draw_centered_text_at_x.asm" ; 0x0149

%include "shared/ovr/redraw_area_set.asm"       ; 0x018d

%include "shared/ovr/show_area_set.asm"         ; 0x02af

%include "vpops/draw_monster_group_rows.asm" ; 0x035f

%include "shared/ovr/fill_action_slot_table.asm" ; 0x0504

%include "shared/ovr/advance_action_slots.asm"  ; 0x0704

%include "shared/ovr/add_overlay_item.asm"      ; 0x0a27

%include "shared/ovr/queue_cell_action_overlay.asm" ; 0x0b31

%include "shared/ovr/queue_marker_overlay.asm"  ; 0x0d77

%include "shared/ovr/draw_overlay_list_item_text.asm" ; 0x0e6c

%include "shared/ovr/check_party_redraw_interval.asm" ; 0x0ec8

%include "shared/ovr/step_party_screen_animation.asm" ; 0x0f27

%include "shared/ovr/run_party_screen_animation.asm" ; 0x1076

%include "vpops/wait_for_party_screen_animation.asm" ; 0x108d

%include "shared/ovr/fill_rectangle_border.asm" ; 0x10a0

%include "vpops/select_party_menu_target.asm" ; 0x111b

%include "vpops/pick_group_target_unit.asm" ; 0x178a

%include "shared/ovr/draw_party_slot_letters.asm" ; 0x18c2

%include "shared/ovr/advance_party_slot_frames.asm" ; 0x1941

%include "shared/ovr/collect_known_spells.asm"  ; 0x199c

%include "shared/ovr/draw_marker_glyph.asm"     ; 0x1a0d

%include "shared/ovr/draw_power_digit.asm"      ; 0x1a4b

%include "shared/ovr/draw_spell_cost.asm"       ; 0x1ad7

%include "shared/ovr/draw_realm_spell_points.asm" ; 0x1b78

%include "shared/ovr/periodic_party_redraw.asm" ; 0x1c11

%include "vpops/action_spell_dialog.asm"   ; 0x1ca2

%include "vpops/pick_spell_action.asm"     ; 0x2947

%include "shared/ovr/draw_selected_button_label.asm" ; 0x29f2

%include "shared/ovr/draw_list_rows.asm"        ; 0x2aef

%include "shared/ovr/draw_inset_list_rows.asm"  ; 0x2c51

%include "vpops/item_action_dialog.asm"    ; 0x2c92

%include "vpops/choose_member_item_to_use.asm" ; 0x33db

%include "vpops/pick_random_set_bit.asm"   ; 0x36c0

%include "vpops/choose_party_battle_orders.asm" ; 0x3710

%include "vpops/target_most_wounded_unit.asm" ; 0x4528

%include "vpops/pick_monster_attack_slot.asm" ; 0x45b3

%include "vpops/prepare_combatant_actions.asm" ; 0x45f3

%include "vpops/prepare_combat_groups.asm" ; 0x4d91

%include "vpops/enter_party_battle_orders.asm" ; 0x4e3b

%include "shared/ovr/aztec_ovbgn.asm"           ; 0x4e9d

__zdata_start:
%include "vpops/data/pops_strings.asm"     ; 0x4edb

%include "shared/data/overlay_saved_registers.asm" ; 0x4f0f


__zimage_end:
absolute __zimage_end
%include "vpops/data/globals.asm"
__zobss_end:
