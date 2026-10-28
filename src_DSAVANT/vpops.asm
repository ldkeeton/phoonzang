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
dseg_9098 equ __zdseg_end + (__zdseg_9098 - __zdata_start)
dseg_909f equ __zdseg_end + (__zdseg_909f - __zdata_start)
dseg_90a6 equ __zdseg_end + (__zdseg_90a6 - __zdata_start)
dseg_90ad equ __zdseg_end + (__zdseg_90ad - __zdata_start)
dseg_90b4 equ __zdseg_end + (__zdseg_90b4 - __zdata_start)
dseg_90bb equ __zdseg_end + (__zdseg_90bb - __zdata_start)
dseg_90bf equ __zdseg_end + (__zdseg_90bf - __zdata_start)
dseg_90c5 equ __zdseg_end + (__zdseg_90c5 - __zdata_start)
save_si equ __zdseg_end + (__zsave_si - __zdata_start)
save_di equ __zdseg_end + (__zsave_di - __zdata_start)
save_sp equ __zdseg_end + (__zsave_sp - __zdata_start)
save_bp equ __zdseg_end + (__zsave_bp - __zdata_start)
save_ret equ __zdseg_end + (__zsave_ret - __zdata_start)
_Uorg equ __zdseg_end + (__zobss_90d6 - __zdata_start)
party_redraw_interval equ __zdseg_end + (__zobss_90d6 - __zdata_start)
bss_90d8 equ __zdseg_end + (__zobss_90d8 - __zdata_start)
known_spell_ids equ __zdseg_end + (__zobss_9106 - __zdata_start)
list_row_marked equ __zdseg_end + (__zobss_9156 - __zdata_start)
list_row_glyph equ __zdseg_end + (__zobss_917e - __zdata_start)
list_row_name equ __zdseg_end + (__zobss_91a6 - __zdata_start)
list_row_count equ __zdseg_end + (__zobss_935e - __zdata_start)
bss_9386 equ __zdseg_end + (__zobss_9386 - __zdata_start)
bss_9388 equ __zdseg_end + (__zobss_9388 - __zdata_start)
bss_938a equ __zdseg_end + (__zobss_938a - __zdata_start)
bss_938c equ __zdseg_end + (__zobss_938c - __zdata_start)
_Uend equ __zdseg_end + (__zobss_end - __zdata_start)

%include "vpops/ovmain.asm"                ; 0x000e

%include "shared/ovr/draw_split_two_line_text.asm" ; 0x0022

%include "shared/ovr/redraw_glyph_strip.asm"    ; 0x00cb

%include "shared/ovr/loc_VNIO.asm"              ; 0x0149

%include "shared/ovr/redraw_area_set.asm"       ; 0x018d

%include "shared/ovr/show_area_set.asm"         ; 0x02af

%include "vpops/api_idx_0054_NQHV.asm"     ; 0x035f

%include "shared/ovr/fill_action_slot_table.asm" ; 0x0504

advance_action_slots.fill_action_slot_table_vmnpc1 equ fill_action_slot_table
%include "shared/ovr/advance_action_slots.asm"  ; 0x0704

%include "shared/ovr/add_overlay_item.asm"      ; 0x0a27

%include "shared/ovr/queue_cell_action_overlay.asm" ; 0x0b31

%include "shared/ovr/queue_marker_overlay.asm"  ; 0x0d77

%include "shared/ovr/loc_SSIO.asm"              ; 0x0e6c

%include "shared/ovr/loc_KRMP.asm"              ; 0x0ec8

%include "shared/ovr/api_idx_0006_LJUS.asm"     ; 0x0f27

run_party_screen_animation.api_idx1 equ api_idx_0006_LJUS
%include "shared/ovr/run_party_screen_animation.asm" ; 0x1076

%include "vpops/wait_for_party_redraw.asm" ; 0x108d

%include "vpops/loc_HTRU.asm"              ; 0x111b

%include "vpops/api_idx_000c_JUIH.asm"     ; 0x178a

%include "shared/ovr/draw_party_slot_letters.asm" ; 0x18c2

%include "shared/ovr/advance_party_slot_frames.asm" ; 0x1941

api_idx_0004_OQNP equ collect_known_spells
%include "shared/ovr/collect_known_spells.asm"     ; 0x199c

%include "shared/ovr/draw_marker_glyph.asm"     ; 0x1a0d

%include "shared/ovr/draw_power_digit.asm"      ; 0x1a4b

loc_VGIT              equ draw_spell_cost
draw_spell_cost.dseg1 equ dseg_90bb
%include "shared/ovr/draw_spell_cost.asm"              ; 0x1ad7

%include "shared/ovr/draw_realm_spell_points.asm" ; 0x1b78

%include "shared/ovr/periodic_party_redraw.asm" ; 0x1c11

%include "vpops/action_spell_dialog.asm"   ; 0x1ca2

%include "vpops/pick_spell_action.asm"     ; 0x2947

%include "shared/ovr/api_idx_0018_RGOS.asm"     ; 0x29f2

%include "shared/ovr/draw_list_rows.asm"        ; 0x2aef

%include "shared/ovr/loc_HTKI.asm"              ; 0x2c51

%include "vpops/api_idx_0038_PVVG.asm"     ; 0x2c92

%include "vpops/api_idx_0094_NVHQ.asm"     ; 0x33db

%include "vpops/api_idx_0006_QUSK.asm"     ; 0x36c0

%include "vpops/api_idx_00d4_LUPQ.asm"     ; 0x3710

%include "vpops/api_idx_0004_PKLV.asm"     ; 0x4528

%include "vpops/api_idx_0002_ROVK.asm"     ; 0x45b3

%include "vpops/api_idx_0024_NKNU.asm"     ; 0x45f3

%include "vpops/api_idx_0002_GMMK.asm"     ; 0x4d91

%include "vpops/api_idx_0004_NRTK.asm"     ; 0x4e3b

%include "shared/ovr/aztec_ovbgn.asm"           ; 0x4e9d

__zdata_start:
%include "vpops/data/dseg_9098.asm"        ; 0x4edb

%include "shared/data/save_si.asm"          ; 0x4f0f

%include "shared/data/save_di.asm"          ; 0x4f11

%include "shared/data/save_sp.asm"          ; 0x4f13

%include "shared/data/save_bp.asm"          ; 0x4f15

%include "shared/data/save_ret.asm"         ; 0x4f17


__zimage_end:
absolute __zimage_end
__zobss_90d6:
    resb 0x0002
__zobss_90d8:
    resb 0x002e
__zobss_9106:
    resb 0x0050
__zobss_9156:
    resb 0x0028
__zobss_917e:
    resb 0x0028
__zobss_91a6:
    resb 0x01b8
__zobss_935e:
    resb 0x0028
__zobss_9386:
    resb 0x0002
__zobss_9388:
    resb 0x0002
__zobss_938a:
    resb 0x0002
__zobss_938c:
    resb 0x0002
__zobss_end:
