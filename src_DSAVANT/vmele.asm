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
    dw (__zdata_start - __zcode_start)       ; 0x3765 ; o_csize: code size in bytes
    dw __zdseg_end                           ; 0x9098 ; o_dorg: data load origin (memory offset)
    dw (__zimage_end - __zdata_start)        ; 0x001e ; o_dsize: initialized data size
    dw __zobss_end - __zimage_end            ; 0x001a ; o_bss: uninitialized data size
    dw aztec_ovbgn - IMAGE_BASE + __zres_end ; 0x8757 ; o_entry: overlay entry offset (CS)

__zcode_start:
dseg_9098 equ __zdseg_end + (__zdseg_9098 - __zdata_start)
space_text equ __zdseg_end + (__zspace_text - __zdata_start)
screen_temp_name equ __zdseg_end + (__zscreen_temp_name - __zdata_start)
save_si equ __zdseg_end + (__zsave_si - __zdata_start)
save_di equ __zdseg_end + (__zsave_di - __zdata_start)
save_sp equ __zdseg_end + (__zsave_sp - __zdata_start)
save_bp equ __zdseg_end + (__zsave_bp - __zdata_start)
save_ret equ __zdseg_end + (__zsave_ret - __zdata_start)
_Uorg equ __zdseg_end + (__zobss_90b6 - __zdata_start)
party_redraw_interval equ __zdseg_end + (__zobss_90b6 - __zdata_start)
show_melee_result equ __zdseg_end + (__zobss_90b8 - __zdata_start)
npc_melee equ __zdseg_end + (__zobss_90ba - __zdata_start)
battle_setup_done equ __zdseg_end + (__zobss_90bc - __zdata_start)
cell_action_marks equ __zdseg_end + (__zobss_90be - __zdata_start)
_Uend equ __zdseg_end + (__zobss_end - __zdata_start)

%include "vmele/ovmain.asm"                ; 0x000e

%include "shared/ovr/draw_active_member_panel.asm" ; 0x004e

%include "vmele/wait_ticks_with_events.asm" ; 0x0102

%include "vmele/flash_message_line.asm"    ; 0x0164

%include "shared/ovr/redraw_glyph_strip.asm"    ; 0x0244

%include "shared/ovr/titlecase_string.asm"      ; 0x02c2

%include "vmele/show_centered_message.asm" ; 0x030a

%include "vmele/find_picture_slot.asm"     ; 0x03b9

%include "vmele/pick_target_slot.asm"      ; 0x041d

api_idx_005e_RKOR       equ api_idx_005e_OJVJ
api_idx_005e_OJVJ.dseg1 equ dseg_9098
%include "shared/ovr/api_idx_005e_OJVJ.asm"     ; 0x0649

%include "vmele/add_party_member.asm"      ; 0x07ad

%include "vmele/copy_member_stats.asm"     ; 0x0c67

%include "vmele/fill_action_slot_table_vmnpc.asm" ; 0x0f95

%include "vmele/advance_member_cell_actions.asm" ; 0x11b0

%include "vmele/advance_item_slot_action.asm" ; 0x12ac

%include "vmele/advance_member_item_actions.asm" ; 0x14e6

%include "shared/ovr/loc_SIKN.asm"              ; 0x16d1

%include "vmele/roll_member_actions.asm"   ; 0x1713

%include "vmele/setup_party_pictures.asm"  ; 0x17ad

%include "vmele/api_idx_0014_LJNT.asm"     ; 0x1844

%include "vmele/party_screen.asm"          ; 0x1a16

%include "vmele/copy_member_party_record.asm" ; 0x1eb4

%include "vmele/advance_melee_item_slots.asm" ; 0x1f39

advance_action_slots.fill_action_slot_table_vmnpc1 equ fill_action_slot_table_vmnpc
%include "shared/ovr/advance_action_slots.asm"  ; 0x2138

%include "shared/ovr/add_overlay_item.asm"      ; 0x245b

%include "shared/ovr/queue_cell_action_overlay.asm" ; 0x2565

%include "shared/ovr/queue_marker_overlay.asm"  ; 0x27ab

%include "shared/ovr/loc_SSIO.asm"              ; 0x28a0

%include "vmele/api_idx_0002_MTJS.asm"     ; 0x28fc

%include "vmele/claim_cell_for_member.asm" ; 0x299f

%include "vmele/fill_row_action_slots.asm" ; 0x29c5

%include "shared/ovr/loc_KRMP.asm"              ; 0x2b19

%include "shared/ovr/api_idx_0006_LJUS.asm"     ; 0x2b78

run_party_screen_animation.api_idx1 equ api_idx_0006_LJUS
%include "shared/ovr/run_party_screen_animation.asm" ; 0x2cc7

%include "vmele/play_action_overlays.asm"  ; 0x2cde

%include "vmele/close_party_screen.asm"    ; 0x2ec4

%include "vmele/spend_action_slot_charge.asm" ; 0x306a

%include "vmele/advance_melee_turn.asm"    ; 0x31a1

%include "vmele/reset_party_actions.asm"   ; 0x331c

%include "vmele/setup_melee_party.asm"     ; 0x3390

%include "vmele/start_melee_battle.asm"    ; 0x33df

%include "vmele/redraw_party_before_battle.asm" ; 0x36b8

%include "shared/ovr/aztec_ovbgn.asm"           ; 0x3710

%include "shared/ovr/aztec_swapmem.asm"         ; 0x374e

__zdata_start:
%include "vmele/data/dseg_9098.asm"        ; 0x3773

%include "vmele/data/space_text.asm"       ; 0x377d

%include "vmele/data/screen_temp_name.asm" ; 0x377f

%include "shared/data/save_si.asm"          ; 0x3787

%include "shared/data/save_di.asm"          ; 0x3789

%include "shared/data/save_sp.asm"          ; 0x378b

%include "shared/data/save_bp.asm"          ; 0x378d

%include "shared/data/save_ret.asm"         ; 0x378f


__zimage_end:
absolute __zimage_end
__zobss_90b6:
    resb 0x0002
__zobss_90b8:
    resb 0x0002
__zobss_90ba:
    resb 0x0002
__zobss_90bc:
    resb 0x0002
__zobss_90be:
    resb 0x0012
__zobss_end:
