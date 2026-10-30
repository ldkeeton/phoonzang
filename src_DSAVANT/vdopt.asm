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
    dw (__zdata_start - __zcode_start)       ; 0x4721 ; o_csize: code size in bytes
    dw __zdseg_end                           ; 0x9098 ; o_dorg: data load origin (memory offset)
    dw (__zimage_end - __zdata_start)        ; 0x001e ; o_dsize: initialized data size
    dw __zobss_end - __zimage_end            ; 0x0cde ; o_bss: uninitialized data size
    dw aztec_ovbgn - IMAGE_BASE + __zres_end ; 0x9720 ; o_entry: overlay entry offset (CS)

__zcode_start:
report_line1_none equ __zdseg_end + (__zreport_line1_none - __zdata_start)
report_line2_none equ __zdseg_end + (__zreport_line2_none - __zdata_start)
dseg_909a equ __zdseg_end + (__zdseg_909a - __zdata_start)
spell_screen_temp_file equ __zdseg_end + (__zspell_screen_temp_file - __zdata_start)
item_dialog_temp_file equ __zdseg_end + (__zitem_dialog_temp_file - __zdata_start)
item_dialog_first_label equ __zdseg_end + (__zitem_dialog_first_label - __zdata_start)
save_si equ __zdseg_end + (__zsave_si - __zdata_start)
save_di equ __zdseg_end + (__zsave_di - __zdata_start)
save_sp equ __zdseg_end + (__zsave_sp - __zdata_start)
save_bp equ __zdseg_end + (__zsave_bp - __zdata_start)
save_ret equ __zdseg_end + (__zsave_ret - __zdata_start)
_Uorg equ __zdseg_end + (__zobss_90b6 - __zdata_start)
pending_event equ __zdseg_end + (__zobss_90b6 - __zdata_start)
pending_event_hi equ __zdseg_end + (__zobss_90b8 - __zdata_start)
map_floor_glyphs equ __zdseg_end + (__zobss_90ba - __zdata_start)
map_outside_glyph equ __zdseg_end + (__zobss_9342 - __zdata_start)
map_outside_ns_wall_glyph equ __zdseg_end + (__zobss_9344 - __zdata_start)
map_ns_wall_glyphs equ __zdseg_end + (__zobss_9346 - __zdata_start)
map_ns_wall_glyphs_south equ __zdseg_end + (__zobss_9348 - __zdata_start)
map_ew_wall_glyphs_west equ __zdseg_end + (__zobss_95ac - __zdata_start)
map_outside_ew_wall_glyph equ __zdseg_end + (__zobss_95ce - __zdata_start)
map_ew_wall_glyphs equ __zdseg_end + (__zobss_95d0 - __zdata_start)
map_show_objects equ __zdseg_end + (__zobss_9858 - __zdata_start)
map_object_marks equ __zdseg_end + (__zobss_985a - __zdata_start)
map_kind1_glyph equ __zdseg_end + (__zobss_9ae2 - __zdata_start)
map_kind2_glyph equ __zdseg_end + (__zobss_9ae4 - __zdata_start)
map_kind8_glyph equ __zdseg_end + (__zobss_9ae6 - __zdata_start)
map_kind9_glyph equ __zdseg_end + (__zobss_9ae8 - __zdata_start)
map_special_glyph equ __zdseg_end + (__zobss_9aea - __zdata_start)
map_kind14_glyph equ __zdseg_end + (__zobss_9aec - __zdata_start)
map_kind15_glyph equ __zdseg_end + (__zobss_9aee - __zdata_start)
map_floor_glyph equ __zdseg_end + (__zobss_9af0 - __zdata_start)
map_flag1_glyph equ __zdseg_end + (__zobss_9af2 - __zdata_start)
map_flag2_glyph equ __zdseg_end + (__zobss_9af4 - __zdata_start)
map_wall1_ns_glyph equ __zdseg_end + (__zobss_9af6 - __zdata_start)
map_wall2_ns_glyph equ __zdseg_end + (__zobss_9af8 - __zdata_start)
map_wall3_ns_glyph equ __zdseg_end + (__zobss_9afa - __zdata_start)
map_wall4_ns_glyph equ __zdseg_end + (__zobss_9afc - __zdata_start)
map_wall1_ew_glyph equ __zdseg_end + (__zobss_9afe - __zdata_start)
map_wall2_ew_glyph equ __zdseg_end + (__zobss_9b00 - __zdata_start)
map_wall3_ew_glyph equ __zdseg_end + (__zobss_9b02 - __zdata_start)
map_wall4_ew_glyph equ __zdseg_end + (__zobss_9b04 - __zdata_start)
map_wall2_enclosed_glyph equ __zdseg_end + (__zobss_9b06 - __zdata_start)
map_wall4_enclosed_glyph equ __zdseg_end + (__zobss_9b08 - __zdata_start)
grid_origin_y equ __zdseg_end + (__zobss_9b0a - __zdata_start)
grid_origin_x equ __zdseg_end + (__zobss_9b0c - __zdata_start)
known_spell_ids equ __zdseg_end + (__zobss_9b0e - __zdata_start)
party_redraw_interval equ __zdseg_end + (__zobss_9b5e - __zdata_start)
list_row_marked equ __zdseg_end + (__zobss_9b60 - __zdata_start)
list_row_glyph equ __zdseg_end + (__zobss_9b88 - __zdata_start)
list_row_name equ __zdseg_end + (__zobss_9bb0 - __zdata_start)
list_row_count equ __zdseg_end + (__zobss_9d68 - __zdata_start)
spell_target equ __zdseg_end + (__zobss_9d90 - __zdata_start)
_Uend equ __zdseg_end + (__zobss_end - __zdata_start)

%include "vdopt/ovmain.asm"                ; 0x000e

%include "shared/ovr/loc_MPHO.asm"              ; 0x00a5

%include "shared/ovr/find_map_piece.asm"        ; 0x00df

%include "shared/ovr/find_object_at.asm"        ; 0x019b

%include "shared/ovr/draw_split_two_line_text.asm" ; 0x020b

%include "shared/ovr/loc_RULJ.asm"              ; 0x02b4

wait_for_scene_input_or_timeout.refresh_scene_frame_if_active1 equ loc_RULJ
%include "shared/ovr/wait_for_scene_input_or_timeout.asm" ; 0x02c3

%include "shared/ovr/api_idx_0006_POPS.asm"     ; 0x030c

api_idx_0004_GHVL     equ log_maze_change
jumptable_0457_case_0 equ log_maze_change.jumptable_case1
jumptable_0457_case_1 equ log_maze_change.jumptable_case2
jumptable_0457_case_5 equ log_maze_change.jumptable_case3
jumptable_0457_case_6 equ log_maze_change.jumptable_case4
jumptable_0457        equ log_maze_change.jumptable1
%include "shared/ovr/log_maze_change.asm"     ; 0x0382

%include "shared/ovr/clear_bit_pair.asm"        ; 0x0473

%include "vdopt/claim_type7_object.asm"    ; 0x04b7

%include "vdopt/show_event_message.asm"    ; 0x0565

%include "vdopt/find_party_type7_object.asm" ; 0x065b

%include "vdopt/roll_claim_type7_object.asm" ; 0x06e8

%include "vdopt/get_north_cell_wall.asm"   ; 0x07d9

%include "vdopt/get_west_cell_wall.asm"    ; 0x0849

%include "shared/ovr/get_cell_wall.asm"         ; 0x08b9

%include "vdopt/set_adjacent_map_cell_glyph.asm" ; 0x095a

%include "vdopt/build_map_view_cell.asm"   ; 0x09c0

%include "vdopt/apply_enclosed_cell_glyph.asm" ; 0x0ede

%include "vdopt/draw_map_object_marker.asm" ; 0x0f52

%include "vdopt/draw_grid_cell_char.asm"   ; 0x0f7f

%include "vdopt/show_map_view.asm"         ; 0x0fd3

%include "shared/ovr/restore_area_a_draw_glyph.asm" ; 0x190b

%include "vdopt/draw_centered_lines.asm"   ; 0x195b

%include "vdopt/roll_slot_detection_report.asm" ; 0x1a5d

%include "shared/ovr/adjust_spell_value.asm"    ; 0x1c7f

%include "vdopt/apply_spell_effect.asm"    ; 0x1ccf

%include "vdopt/trigger_item_cell_object.asm" ; 0x238d

%include "shared/ovr/draw_party_slot_letters.asm" ; 0x25a8

%include "shared/ovr/advance_party_slot_frames.asm" ; 0x2627

%include "shared/ovr/collect_known_spells.asm"  ; 0x2682

%include "shared/ovr/draw_marker_glyph.asm"     ; 0x26f3

%include "shared/ovr/draw_power_digit.asm"      ; 0x2731

draw_spell_cost.dseg1 equ dseg_909a
%include "shared/ovr/draw_spell_cost.asm"       ; 0x27bd

%include "shared/ovr/draw_realm_spell_points.asm" ; 0x285e

%include "shared/ovr/periodic_party_redraw.asm" ; 0x28f7

jumptable_35d1_case_0 equ pick_spell_dialog.jumptable_case1
jumptable_35d1_case_1 equ pick_spell_dialog.jumptable_case2
jumptable_35d1_case_3 equ pick_spell_dialog.jumptable_case3
jumptable_35d1_case_4 equ pick_spell_dialog.jumptable_case4
jumptable_35d1        equ pick_spell_dialog.jumptable1
%include "shared/ovr/pick_spell_dialog.asm"     ; 0x2988

%include "shared/ovr/find_floor_item_slot.asm"  ; 0x362f

%include "shared/ovr/add_floor_item.asm"        ; 0x36bb

%include "shared/ovr/draw_selected_button_label.asm" ; 0x378c

%include "shared/ovr/draw_list_rows.asm"        ; 0x3889

%include "shared/ovr/draw_inset_list_rows.asm"  ; 0x39eb

%include "vdopt/item_action_dialog.asm"    ; 0x3a2c

%include "vdopt/use_item_menu.asm"         ; 0x417c

%include "vdopt/cast_spell_from_menu.asm"  ; 0x45dd

%include "shared/ovr/aztec_ovbgn.asm"           ; 0x46d9

%include "shared/ovr/aztec_cswt.asm"            ; 0x4717

__zdata_start:
%include "vdopt/data/report_placeholders.asm" ; 0x472f

%include "shared/data/spell_screen_temp_file.asm" ; 0x4735

%include "vdopt/data/item_dialog_temp_file.asm" ; 0x473b

%include "vdopt/data/item_dialog_first_label.asm" ; 0x4741

%include "shared/data/overlay_saved_registers.asm" ; 0x4743


__zimage_end:
absolute __zimage_end
__zobss_90b6:
    resb 0x0002
__zobss_90b8:
    resb 0x0002
__zobss_90ba:
    resb 0x0288
__zobss_9342:
    resb 0x0002
__zobss_9344:
    resb 0x0002
__zobss_9346:
    resb 0x0002
__zobss_9348:
    resb 0x0264
__zobss_95ac:
    resb 0x0022
__zobss_95ce:
    resb 0x0002
__zobss_95d0:
    resb 0x0288
__zobss_9858:
    resb 0x0002
__zobss_985a:
    resb 0x0288
__zobss_9ae2:
    resb 0x0002
__zobss_9ae4:
    resb 0x0002
__zobss_9ae6:
    resb 0x0002
__zobss_9ae8:
    resb 0x0002
__zobss_9aea:
    resb 0x0002
__zobss_9aec:
    resb 0x0002
__zobss_9aee:
    resb 0x0002
__zobss_9af0:
    resb 0x0002
__zobss_9af2:
    resb 0x0002
__zobss_9af4:
    resb 0x0002
__zobss_9af6:
    resb 0x0002
__zobss_9af8:
    resb 0x0002
__zobss_9afa:
    resb 0x0002
__zobss_9afc:
    resb 0x0002
__zobss_9afe:
    resb 0x0002
__zobss_9b00:
    resb 0x0002
__zobss_9b02:
    resb 0x0002
__zobss_9b04:
    resb 0x0002
__zobss_9b06:
    resb 0x0002
__zobss_9b08:
    resb 0x0002
__zobss_9b0a:
    resb 0x0002
__zobss_9b0c:
    resb 0x0002
__zobss_9b0e:
    resb 0x0050
__zobss_9b5e:
    resb 0x0002
__zobss_9b60:
    resb 0x0028
__zobss_9b88:
    resb 0x0028
__zobss_9bb0:
    resb 0x01b8
__zobss_9d68:
    resb 0x0028
__zobss_9d90:
    resb 0x0004
__zobss_end:
