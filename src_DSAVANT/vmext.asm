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
    dw (__zdata_start - __zcode_start)       ; 0x524b ; o_csize: code size in bytes
    dw __zdseg_end                           ; 0x9098 ; o_dorg: data load origin (memory offset)
    dw (__zimage_end - __zdata_start)        ; 0x00e8 ; o_dsize: initialized data size
    dw __zobss_end - __zimage_end            ; 0x099c ; o_bss: uninitialized data size
    dw aztec_ovbgn - IMAGE_BASE + __zres_end ; 0xa262 ; o_entry: overlay entry offset (CS)

__zcode_start:
dseg_9098 equ __zdseg_end + (__zdseg_9098 - __zdata_start)
dseg_90a5 equ __zdseg_end + (__zdseg_90a5 - __zdata_start)
dseg_90b2 equ __zdseg_end + (__zdseg_90b2 - __zdata_start)
dseg_90bf equ __zdseg_end + (__zdseg_90bf - __zdata_start)
dseg_90cc equ __zdseg_end + (__zdseg_90cc - __zdata_start)
dseg_90d9 equ __zdseg_end + (__zdseg_90d9 - __zdata_start)
dseg_90e6 equ __zdseg_end + (__zdseg_90e6 - __zdata_start)
dseg_90f3 equ __zdseg_end + (__zdseg_90f3 - __zdata_start)
dseg_9100 equ __zdseg_end + (__zdseg_9100 - __zdata_start)
dseg_910d equ __zdseg_end + (__zdseg_910d - __zdata_start)
dseg_911a equ __zdseg_end + (__zdseg_911a - __zdata_start)
dseg_9127 equ __zdseg_end + (__zdseg_9127 - __zdata_start)
dseg_9134 equ __zdseg_end + (__zdseg_9134 - __zdata_start)
dseg_9141 equ __zdseg_end + (__zdseg_9141 - __zdata_start)
dseg_914e equ __zdseg_end + (__zdseg_914e - __zdata_start)
dseg_915b equ __zdseg_end + (__zdseg_915b - __zdata_start)
dseg_9168 equ __zdseg_end + (__zdseg_9168 - __zdata_start)
save_si equ __zdseg_end + (__zsave_si - __zdata_start)
save_di equ __zdseg_end + (__zsave_di - __zdata_start)
save_sp equ __zdseg_end + (__zsave_sp - __zdata_start)
save_bp equ __zdseg_end + (__zsave_bp - __zdata_start)
save_ret equ __zdseg_end + (__zsave_ret - __zdata_start)
_Uorg equ __zdseg_end + (__zobss_9180 - __zdata_start)
party_redraw_interval equ __zdseg_end + (__zobss_9180 - __zdata_start)
marker_string_frames equ __zdseg_end + (__zobss_9182 - __zdata_start)
boundary_wall_open equ __zdseg_end + (__zobss_9188 - __zdata_start)
save_location_flag equ __zdseg_end + (__zobss_918a - __zdata_start)
marker_string_y_offsets equ __zdseg_end + (__zobss_918c - __zdata_start)
marker_string_x_offsets equ __zdseg_end + (__zobss_9192 - __zdata_start)
marker_string_descending equ __zdseg_end + (__zobss_9198 - __zdata_start)
marker_string_variants equ __zdseg_end + (__zobss_919e - __zdata_start)
floor_checker_parity equ __zdseg_end + (__zobss_91a4 - __zdata_start)
side_wall_animation_phase equ __zdseg_end + (__zobss_91a6 - __zdata_start)
boundary_wall_variant equ __zdseg_end + (__zobss_91a8 - __zdata_start)
view_scan_depth equ __zdseg_end + (__zobss_91aa - __zdata_start)
side_wall_layer_flags equ __zdseg_end + (__zobss_91ac - __zdata_start)
maze_boundary_wall_markers equ __zdseg_end + (__zobss_91ae - __zdata_start)
marker_string_block_mode equ __zdseg_end + (__zobss_91b8 - __zdata_start)
near_wall_layer_flags equ __zdseg_end + (__zobss_91c5 - __zdata_start)
maze_cell_flag_markers equ __zdseg_end + (__zobss_91c7 - __zdata_start)
boundary_box_faces equ __zdseg_end + (__zobss_91de - __zdata_start)
maze_blocking_cell_markers equ __zdseg_end + (__zobss_91e0 - __zdata_start)
maze_near_blocking_markers equ __zdseg_end + (__zobss_91e5 - __zdata_start)
view_marker_ids equ __zdseg_end + (__zobss_91f7 - __zdata_start)
maze_cell_facing_bytes equ __zdseg_end + (__zobss_91f9 - __zdata_start)
far_wall_object_ids equ __zdseg_end + (__zobss_9210 - __zdata_start)
maze_cell_facing_words_a equ __zdseg_end + (__zobss_9214 - __zdata_start)
near_wall_object_ids equ __zdseg_end + (__zobss_9242 - __zdata_start)
maze_cell_facing_words_b equ __zdseg_end + (__zobss_9246 - __zdata_start)
view_marker_kinds equ __zdseg_end + (__zobss_9274 - __zdata_start)
maze_special_wall_markers equ __zdseg_end + (__zobss_9276 - __zdata_start)
far_wall_overlay_ids equ __zdseg_end + (__zobss_928e - __zdata_start)
maze_cell_effect_flags_a equ __zdseg_end + (__zobss_9292 - __zdata_start)
near_wall_overlay_ids equ __zdseg_end + (__zobss_92c0 - __zdata_start)
maze_cell_effect_flags_b equ __zdseg_end + (__zobss_92c4 - __zdata_start)
render_queue_count equ __zdseg_end + (__zobss_92f2 - __zdata_start)
queued_slot_x equ __zdseg_end + (__zobss_92f4 - __zdata_start)
queued_slot_y equ __zdseg_end + (__zobss_92f6 - __zdata_start)
queued_slot_parameter_4 equ __zdseg_end + (__zobss_92f8 - __zdata_start)
queued_slot_parameter_5 equ __zdseg_end + (__zobss_92fa - __zdata_start)
queued_slot_glyph_entry equ __zdseg_end + (__zobss_92fc - __zdata_start)
queued_slot_parameter_1 equ __zdseg_end + (__zobss_92fd - __zdata_start)
queued_slot_parameter_2 equ __zdseg_end + (__zobss_92fe - __zdata_start)
queued_slot_parameter_3 equ __zdseg_end + (__zobss_92ff - __zdata_start)
queued_slot_index equ __zdseg_end + (__zobss_9300 - __zdata_start)
queued_slot_depth equ __zdseg_end + (__zobss_9301 - __zdata_start)
queued_slot_scale equ __zdseg_end + (__zobss_9302 - __zdata_start)
queued_slot_glyph_column equ __zdseg_end + (__zobss_9303 - __zdata_start)
queued_slot_render_pass equ __zdseg_end + (__zobss_9304 - __zdata_start)
maze_gate_glyph_variant equ __zdseg_end + (__zobss_9aec - __zdata_start)
view_layer_scratch equ __zdseg_end + (__zobss_9aee - __zdata_start)
view_depth_count equ __zdseg_end + (__zobss_9b08 - __zdata_start)
center_cell_wall equ __zdseg_end + (__zobss_9b0a - __zdata_start)
center_left_wall equ __zdseg_end + (__zobss_9b0c - __zdata_start)
center_right_wall equ __zdseg_end + (__zobss_9b0e - __zdata_start)
left_cell_wall equ __zdseg_end + (__zobss_9b10 - __zdata_start)
right_cell_wall equ __zdseg_end + (__zobss_9b12 - __zdata_start)
far_left_cell_wall equ __zdseg_end + (__zobss_9b14 - __zdata_start)
far_right_cell_wall equ __zdseg_end + (__zobss_9b16 - __zdata_start)
left_cell_side_wall equ __zdseg_end + (__zobss_9b18 - __zdata_start)
right_cell_side_wall equ __zdseg_end + (__zobss_9b1a - __zdata_start)
_Uend equ __zdseg_end + (__zobss_end - __zdata_start)

%include "vmext/ovmain.asm"                ; 0x000e

%include "shared/ovr/map_piece_index_for_position.asm" ; 0x00b6

%include "shared/ovr/find_map_piece.asm"        ; 0x00f0

%include "shared/ovr/find_object_at.asm"        ; 0x01ac

%include "shared/ovr/load_maze_file.asm"        ; 0x021c

%include "vmext/reload_maze_after_encounter.asm" ; 0x0262

%include "shared/ovr/party_redraw_interval_elapsed.asm" ; 0x054f

%include "shared/ovr/advance_party_redraw_frame.asm" ; 0x059a

%include "vmext/loc_IJSN.asm"              ; 0x05c0

%include "vmext/api_idx_0004_OOHR.asm"     ; 0x05e6

%include "vmext/loc_VJNU.asm"              ; 0x0636

%include "shared/ovr/save_previous_party_position.asm" ; 0x0692

%include "shared/ovr/get_cell_wall.asm"         ; 0x06c3

%include "shared/ovr/show_centered_text_band.asm" ; 0x0764

%include "shared/ovr/show_message.asm"     ; 0x081a

%include "vmext/loc_NHMQ.asm"              ; 0x0836

%include "shared/ovr/check_at_saved_location.asm" ; 0x0860

%include "shared/ovr/get_cell_terrain.asm"      ; 0x0897

%include "vmext/api_idx_000c_RMGQ.asm"     ; 0x09be

%include "vmext/api_idx_0002_JSVP.asm"     ; 0x0b49

%include "vmext/api_idx_000a_ISJL.asm"     ; 0x0b8c

%include "vmext/show_running_message.asm"  ; 0x0c0d

%include "vmext/run_from_encounter.asm"    ; 0x0c1f

%include "vmext/show_fountain_result.asm"  ; 0x0eac

%include "vmext/drink_from_fountain.asm"   ; 0x0ee0

%include "shared/ovr/init_item_slot.asm"        ; 0x1356

%include "shared/ovr/find_empty_party_item_slot.asm" ; 0x146b

%include "shared/ovr/find_floor_item_at_party.asm" ; 0x14c7

%include "vmext/pick_up_floor_item.asm"    ; 0x151e

%include "vmext/swap_party_members.asm"    ; 0x15af

%include "shared/ovr/get_north_cell_wall.asm"   ; 0x1823

%include "shared/ovr/get_west_cell_wall.asm"    ; 0x189b

%include "shared/ovr/floor_overlay_when_enabled.asm" ; 0x1913

%include "shared/ovr/select_floor_face_index.asm" ; 0x1927

%include "shared/ovr/wall_overlay_when_enabled.asm" ; 0x193b

%include "shared/ovr/select_wall_face_index.asm" ; 0x194f

%include "shared/ovr/offset_relative_map_position.asm" ; 0x1963

%include "shared/ovr/read_cell_kind_direction.asm" ; 0x19e4

%include "shared/ovr/resolve_cell_wall_effects.asm" ; 0x1a1d

%include "shared/ovr/get_relative_cell_wall.asm" ; 0x1e4f

%include "shared/ovr/queue_slot_glyph_render.asm" ; 0x201b

%include "shared/ovr/queue_maze_cell_layers.asm" ; 0x2291

%include "shared/ovr/queue_boundary_view_layers.asm" ; 0x29e5

%include "shared/ovr/queue_view_cell_side_layers.asm" ; 0x30f4

%include "shared/ovr/draw_queued_glyph_shape.asm" ; 0x39e2

%include "shared/ovr/draw_moon_glyph.asm"       ; 0x3b83

%include "shared/ovr/draw_clock_marker_glyph.asm" ; 0x3d29

%include "shared/ovr/draw_first_person_maze_view.asm" ; 0x3e8c

%include "shared/ovr/redraw_maze_view.asm"      ; 0x51fb

%include "shared/ovr/aztec_ovbgn.asm"           ; 0x521b

__zdata_start:
%include "vmext/data/dseg_9098.asm"        ; 0x5259

%include "shared/data/overlay_saved_registers.asm" ; 0x5337


__zimage_end:
absolute __zimage_end
__zobss_9180:
    resb 0x0002
__zobss_9182:
    resb 0x0006
__zobss_9188:
    resb 0x0002
__zobss_918a:
    resb 0x0002
__zobss_918c:
    resb 0x0006
__zobss_9192:
    resb 0x0006
__zobss_9198:
    resb 0x0006
__zobss_919e:
    resb 0x0006
__zobss_91a4:
    resb 0x0002
__zobss_91a6:
    resb 0x0002
__zobss_91a8:
    resb 0x0002
__zobss_91aa:
    resb 0x0002
__zobss_91ac:
    resb 0x0002
__zobss_91ae:
    resb 0x000a
__zobss_91b8:
    resb 0x000d
__zobss_91c5:
    resb 0x0002
__zobss_91c7:
    resb 0x0017
__zobss_91de:
    resb 0x0002
__zobss_91e0:
    resb 0x0005
__zobss_91e5:
    resb 0x0012
__zobss_91f7:
    resb 0x0002
__zobss_91f9:
    resb 0x0017
__zobss_9210:
    resb 0x0004
__zobss_9214:
    resb 0x002e
__zobss_9242:
    resb 0x0004
__zobss_9246:
    resb 0x002e
__zobss_9274:
    resb 0x0002
__zobss_9276:
    resb 0x0018
__zobss_928e:
    resb 0x0004
__zobss_9292:
    resb 0x002e
__zobss_92c0:
    resb 0x0004
__zobss_92c4:
    resb 0x002e
__zobss_92f2:
    resb 0x0002
__zobss_92f4:
    resb 0x0002
__zobss_92f6:
    resb 0x0002
__zobss_92f8:
    resb 0x0002
__zobss_92fa:
    resb 0x0002
__zobss_92fc:
    resb 0x0001
__zobss_92fd:
    resb 0x0001
__zobss_92fe:
    resb 0x0001
__zobss_92ff:
    resb 0x0001
__zobss_9300:
    resb 0x0001
__zobss_9301:
    resb 0x0001
__zobss_9302:
    resb 0x0001
__zobss_9303:
    resb 0x0001
__zobss_9304:
    resb 0x07e8
__zobss_9aec:
    resb 0x0002
__zobss_9aee:
    resb 0x001a
__zobss_9b08:
    resb 0x0002
__zobss_9b0a:
    resb 0x0002
__zobss_9b0c:
    resb 0x0002
__zobss_9b0e:
    resb 0x0002
__zobss_9b10:
    resb 0x0002
__zobss_9b12:
    resb 0x0002
__zobss_9b14:
    resb 0x0002
__zobss_9b16:
    resb 0x0002
__zobss_9b18:
    resb 0x0002
__zobss_9b1a:
    resb 0x0002
__zobss_end:
