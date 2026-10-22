; auto-generated
bits 16
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

pending_event    equ __zdseg_end + (__zobss_90b6 - __zdata_start)
pending_event_hi equ __zdseg_end + (__zobss_90b8 - __zdata_start)
%include "vdopt/ovmain.asm"                ; 0x000e

%include "shared/game/loc_MPHO.asm"              ; 0x00a5

%include "shared/game/find_map_piece.asm"        ; 0x00df

%include "shared/game/find_object_at.asm"        ; 0x019b

%include "shared/game/api_idx_002a_SRJL.asm"     ; 0x020b

%include "shared/game/loc_RULJ.asm"              ; 0x02b4

api_idx_0004_TTGQ.loc1 equ loc_RULJ
%include "shared/game/api_idx_0004_TTGQ.asm"     ; 0x02c3

%include "shared/game/api_idx_0006_POPS.asm"     ; 0x030c

api_idx_0004_PSJH     equ log_maze_change
jumptable_0457_case_0 equ log_maze_change.jumptable_case1
jumptable_0457_case_1 equ log_maze_change.jumptable_case2
jumptable_0457_case_5 equ log_maze_change.jumptable_case3
jumptable_0457_case_6 equ log_maze_change.jumptable_case4
jumptable_0457        equ log_maze_change.jumptable1
%include "shared/game/log_maze_change.asm"     ; 0x0382

%include "shared/game/api_idx_0002_OVRM.asm"     ; 0x0473

%include "vdopt/claim_type7_object.asm"    ; 0x04b7

; pending_event_hi equ __zdseg_end + (__zobss_90b8 - __zdata_start)
%include "vdopt/show_event_message.asm"    ; 0x0565

%include "vdopt/find_party_type7_object.asm" ; 0x065b

; pending_event    equ __zdseg_end + (__zobss_90b6 - __zdata_start)
; pending_event_hi equ __zdseg_end + (__zobss_90b8 - __zdata_start)
%include "vdopt/roll_claim_type7_object.asm" ; 0x06e8

%include "vdopt/loc_UOPP.asm"              ; 0x07d9

loc_NJKS.loc1 equ loc_UOPP
loc_NJKS.loc2 equ loc_KHGO
%include "shared/game/loc_NJKS.asm"              ; 0x08b9

%include "vdopt/loc_MOTJ.asm"              ; 0x095a

bss_9342 equ __zdseg_end + (__zobss_9342 - __zdata_start)
bss_9344 equ __zdseg_end + (__zobss_9344 - __zdata_start)
bss_95ce equ __zdseg_end + (__zobss_95ce - __zdata_start)
bss_9858 equ __zdseg_end + (__zobss_9858 - __zdata_start)
bss_9ae2 equ __zdseg_end + (__zobss_9ae2 - __zdata_start)
bss_9ae4 equ __zdseg_end + (__zobss_9ae4 - __zdata_start)
bss_9ae6 equ __zdseg_end + (__zobss_9ae6 - __zdata_start)
bss_9ae8 equ __zdseg_end + (__zobss_9ae8 - __zdata_start)
bss_9aea equ __zdseg_end + (__zobss_9aea - __zdata_start)
bss_9aec equ __zdseg_end + (__zobss_9aec - __zdata_start)
bss_9aee equ __zdseg_end + (__zobss_9aee - __zdata_start)
bss_9af0 equ __zdseg_end + (__zobss_9af0 - __zdata_start)
bss_9af2 equ __zdseg_end + (__zobss_9af2 - __zdata_start)
bss_9af4 equ __zdseg_end + (__zobss_9af4 - __zdata_start)
bss_9af6 equ __zdseg_end + (__zobss_9af6 - __zdata_start)
bss_9af8 equ __zdseg_end + (__zobss_9af8 - __zdata_start)
bss_9afa equ __zdseg_end + (__zobss_9afa - __zdata_start)
bss_9afc equ __zdseg_end + (__zobss_9afc - __zdata_start)
bss_9afe equ __zdseg_end + (__zobss_9afe - __zdata_start)
bss_9b00 equ __zdseg_end + (__zobss_9b00 - __zdata_start)
bss_9b02 equ __zdseg_end + (__zobss_9b02 - __zdata_start)
bss_9b04 equ __zdseg_end + (__zobss_9b04 - __zdata_start)
%include "vdopt/api_idx_0014_HTUV.asm"     ; 0x09c0

; bss_9af8 equ __zdseg_end + (__zobss_9af8 - __zdata_start)
; bss_9afc equ __zdseg_end + (__zobss_9afc - __zdata_start)
; bss_9b00 equ __zdseg_end + (__zobss_9b00 - __zdata_start)
; bss_9b04 equ __zdseg_end + (__zobss_9b04 - __zdata_start)
bss_9b06 equ __zdseg_end + (__zobss_9b06 - __zdata_start)
bss_9b08 equ __zdseg_end + (__zobss_9b08 - __zdata_start)
%include "vdopt/loc_GTJK.asm"              ; 0x0ede

grid_origin_y equ __zdseg_end + (__zobss_9b0a - __zdata_start)
grid_origin_x equ __zdseg_end + (__zobss_9b0c - __zdata_start)
%include "vdopt/loc_TIPV.asm"              ; 0x0f52

; grid_origin_y equ __zdseg_end + (__zobss_9b0a - __zdata_start)
; grid_origin_x equ __zdseg_end + (__zobss_9b0c - __zdata_start)
%include "vdopt/draw_grid_cell_char.asm"   ; 0x0f7f

; bss_9342      equ __zdseg_end + (__zobss_9342 - __zdata_start)
; bss_9344      equ __zdseg_end + (__zobss_9344 - __zdata_start)
; bss_95ce      equ __zdseg_end + (__zobss_95ce - __zdata_start)
; bss_9858      equ __zdseg_end + (__zobss_9858 - __zdata_start)
; bss_9ae2      equ __zdseg_end + (__zobss_9ae2 - __zdata_start)
; bss_9ae4      equ __zdseg_end + (__zobss_9ae4 - __zdata_start)
; bss_9ae6      equ __zdseg_end + (__zobss_9ae6 - __zdata_start)
; bss_9ae8      equ __zdseg_end + (__zobss_9ae8 - __zdata_start)
; bss_9aea      equ __zdseg_end + (__zobss_9aea - __zdata_start)
; bss_9aec      equ __zdseg_end + (__zobss_9aec - __zdata_start)
; bss_9aee      equ __zdseg_end + (__zobss_9aee - __zdata_start)
; bss_9af0      equ __zdseg_end + (__zobss_9af0 - __zdata_start)
; bss_9af2      equ __zdseg_end + (__zobss_9af2 - __zdata_start)
; bss_9af4      equ __zdseg_end + (__zobss_9af4 - __zdata_start)
; bss_9af6      equ __zdseg_end + (__zobss_9af6 - __zdata_start)
; bss_9af8      equ __zdseg_end + (__zobss_9af8 - __zdata_start)
; bss_9afa      equ __zdseg_end + (__zobss_9afa - __zdata_start)
; bss_9afc      equ __zdseg_end + (__zobss_9afc - __zdata_start)
; bss_9afe      equ __zdseg_end + (__zobss_9afe - __zdata_start)
; bss_9b00      equ __zdseg_end + (__zobss_9b00 - __zdata_start)
; bss_9b02      equ __zdseg_end + (__zobss_9b02 - __zdata_start)
; bss_9b04      equ __zdseg_end + (__zobss_9b04 - __zdata_start)
; bss_9b06      equ __zdseg_end + (__zobss_9b06 - __zdata_start)
; bss_9b08      equ __zdseg_end + (__zobss_9b08 - __zdata_start)
; grid_origin_y equ __zdseg_end + (__zobss_9b0a - __zdata_start)
; grid_origin_x equ __zdseg_end + (__zobss_9b0c - __zdata_start)
%include "vdopt/api_idx_0012_UROU.asm"     ; 0x0fd3

%include "shared/game/restore_area_a_draw_glyph.asm" ; 0x190b

%include "vdopt/draw_centered_lines.asm"   ; 0x195b

report_line1_none equ __zdseg_end + (__zreport_line1_none - __zdata_start)
report_line2_none equ __zdseg_end + (__zreport_line2_none - __zdata_start)
%include "vdopt/roll_slot_detection_report.asm" ; 0x1a5d

%include "shared/game/loc_QQUT.asm"              ; 0x1c7f

%include "vdopt/apply_spell_effect.asm"    ; 0x1ccf

; pending_event    equ __zdseg_end + (__zobss_90b6 - __zdata_start)
; pending_event_hi equ __zdseg_end + (__zobss_90b8 - __zdata_start)
%include "vdopt/trigger_keyed_cell_object.asm" ; 0x238d

%include "shared/game/draw_party_slot_letters.asm" ; 0x25a8

%include "shared/game/api_idx_0002_TIUI.asm"     ; 0x2627

known_spell_ids equ __zdseg_end + (__zobss_9b0e - __zdata_start)
%include "vdopt/collect_known_realm_spells.asm" ; 0x2682

%include "shared/game/draw_marker_glyph.asm"     ; 0x26f3

%include "shared/game/draw_power_digit.asm"      ; 0x2731

dseg_909a equ __zdseg_end + (__zdseg_909a - __zdata_start)
loc_TJJR              equ draw_spell_cost
draw_spell_cost.dseg1 equ dseg_909a
%include "shared/game/draw_spell_cost.asm"              ; 0x27bd

%include "shared/game/draw_realm_spell_points.asm" ; 0x285e

party_redraw_mode equ __zdseg_end + (__zobss_9b5e - __zdata_start)
periodic_party_redraw.party_redraw_mode1 equ party_redraw_mode
periodic_party_redraw.api_idx1           equ draw_marker_glyph
periodic_party_redraw.api_idx2           equ draw_realm_spell_points
%include "shared/game/periodic_party_redraw.asm" ; 0x28f7

dseg_909e         equ __zdseg_end + (__zdseg_909e - __zdata_start)
; known_spell_ids   equ __zdseg_end + (__zobss_9b0e - __zdata_start)
; party_redraw_mode equ __zdseg_end + (__zobss_9b5e - __zdata_start)
%include "vdopt/pick_spell_dialog.asm"     ; 0x2988

%include "shared/game/api_idx_0008_RQRL.asm"     ; 0x362f

%include "shared/game/api_idx_0004_UJRL.asm"     ; 0x36bb

%include "shared/game/api_idx_0018_RGOS.asm"     ; 0x378c

list_row_marked equ __zdseg_end + (__zobss_9b60 - __zdata_start)
list_row_glyph  equ __zdseg_end + (__zobss_9b88 - __zdata_start)
list_row_name   equ __zdseg_end + (__zobss_9bb0 - __zdata_start)
list_row_count  equ __zdseg_end + (__zobss_9d68 - __zdata_start)
%include "vdopt/draw_list_rows.asm"        ; 0x3889

loc_HTKI.draw_list_rows1 equ draw_list_rows
%include "shared/game/loc_HTKI.asm"              ; 0x39eb

dseg_90a4 equ __zdseg_end + (__zdseg_90a4 - __zdata_start)
%include "vdopt/api_idx_0038_QQIU.asm"     ; 0x3a2c

dseg_90aa         equ __zdseg_end + (__zdseg_90aa - __zdata_start)
; pending_event     equ __zdseg_end + (__zobss_90b6 - __zdata_start)
; pending_event_hi  equ __zdseg_end + (__zobss_90b8 - __zdata_start)
; party_redraw_mode equ __zdseg_end + (__zobss_9b5e - __zdata_start)
; list_row_marked   equ __zdseg_end + (__zobss_9b60 - __zdata_start)
; list_row_glyph    equ __zdseg_end + (__zobss_9b88 - __zdata_start)
; list_row_name     equ __zdseg_end + (__zobss_9bb0 - __zdata_start)
; list_row_count    equ __zdseg_end + (__zobss_9d68 - __zdata_start)
spell_target      equ __zdseg_end + (__zobss_9d90 - __zdata_start)
%include "vdopt/api_idx_0094_LUVH.asm"     ; 0x417c

; pending_event     equ __zdseg_end + (__zobss_90b6 - __zdata_start)
; party_redraw_mode equ __zdseg_end + (__zobss_9b5e - __zdata_start)
; spell_target      equ __zdseg_end + (__zobss_9d90 - __zdata_start)
%include "vdopt/cast_spell_from_menu.asm"  ; 0x45dd

save_si  equ __zdseg_end + (__zsave_si - __zdata_start)
save_di  equ __zdseg_end + (__zsave_di - __zdata_start)
save_sp  equ __zdseg_end + (__zsave_sp - __zdata_start)
save_bp  equ __zdseg_end + (__zsave_bp - __zdata_start)
save_ret equ __zdseg_end + (__zsave_ret - __zdata_start)
_Uorg    equ __zdseg_end + (__zobss_90b6 - __zdata_start)
_Uend    equ __zdseg_end + (__zobss_end - __zdata_start)
%include "shared/aztec/aztec_ovbgn.asm"           ; 0x46d9

%include "shared/aztec/aztec_cswit.asm"           ; 0x4717

%include "vdopt/data/report_line1_none.asm" ; 0x472f

%include "vdopt/data/report_line2_none.asm" ; 0x4730

__zdseg_909a:
    db 0x2a, 0x2a, 0x2a, 0x00
__zdseg_909e:
    db 'V.$$$', 0
__zdseg_90a4:
    db 'V.$$$', 0
__zdseg_90aa:
    db 0x00, 0x00
%include "shared/data/save_si.asm"          ; 0x4743

%include "shared/data/save_di.asm"          ; 0x4745

%include "shared/data/save_sp.asm"          ; 0x4747

%include "shared/data/save_bp.asm"          ; 0x4749

%include "shared/data/save_ret.asm"         ; 0x474b


__zimage_end:
absolute __zimage_end
__zobss_90b6:
    resb 0x0002
__zobss_90b8:
    resb 0x028a
__zobss_9342:
    resb 0x0002
__zobss_9344:
    resb 0x028a
__zobss_95ce:
    resb 0x028a
__zobss_9858:
    resb 0x028a
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
