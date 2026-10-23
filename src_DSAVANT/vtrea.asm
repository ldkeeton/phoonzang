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
    dw (__zdata_start - __zcode_start)       ; 0x9a0d ; o_csize: code size in bytes
    dw __zdseg_end                           ; 0x9098 ; o_dorg: data load origin (memory offset)
    dw (__zimage_end - __zdata_start)        ; 0x007c ; o_dsize: initialized data size
    dw __zobss_end - __zimage_end            ; 0x05a6 ; o_bss: uninitialized data size
    dw aztec_ovbgn - IMAGE_BASE + __zres_end ; 0xea0c ; o_entry: overlay entry offset (CS)

__zcode_start:

glyph_painter      equ __zdseg_end + (__zobss_9114 - __zdata_start)
animation_index    equ __zdseg_end + (__zobss_9116 - __zdata_start)
sound_request      equ __zdseg_end + (__zobss_9118 - __zdata_start)
pending_panel_call equ __zdseg_end + (__zobss_911a - __zdata_start)
%include "vtrea/ovmain.asm"                ; 0x000e

%include "vtrea/draw_animation_frame.asm"  ; 0x0090

; animation_index  equ __zdseg_end + (__zobss_9116 - __zdata_start)
show_area_bottom equ __zdseg_end + (__zobss_911c - __zdata_start)
%include "vtrea/draw_treasure_panel.asm"   ; 0x0111

%include "shared/game/draw_party_glyph_row.asm"  ; 0x067b

animation_frame equ __zdseg_end + (__zobss_911e - __zdata_start)
%include "vtrea/draw_animated_glyph_pair.asm" ; 0x073b

; glyph_painter      equ __zdseg_end + (__zobss_9114 - __zdata_start)
; animation_index    equ __zdseg_end + (__zobss_9116 - __zdata_start)
; sound_request      equ __zdseg_end + (__zobss_9118 - __zdata_start)
; pending_panel_call equ __zdseg_end + (__zobss_911a - __zdata_start)
; show_area_bottom   equ __zdseg_end + (__zobss_911c - __zdata_start)
pending_panel_arg1 equ __zdseg_end + (__zobss_9120 - __zdata_start)
pending_panel_arg0 equ __zdseg_end + (__zobss_9122 - __zdata_start)
%include "vtrea/update_treasure_frame.asm" ; 0x07de

; animation_index       equ __zdseg_end + (__zobss_9116 - __zdata_start)
; animation_frame       equ __zdseg_end + (__zobss_911e - __zdata_start)
party_redraw_interval equ __zdseg_end + (__zobss_9124 - __zdata_start)
%include "vtrea/loc_IKLI.asm"              ; 0x086b

%include "vtrea/api_idx_0004_UQUT.asm"     ; 0x08eb

treasure_caption_on equ __zdseg_end + (__zobss_9126 - __zdata_start)
treasure_caption    equ __zdseg_end + (__zobss_9128 - __zdata_start)
%include "vtrea/redraw_treasure_caption.asm" ; 0x0954

bss_9150 equ __zdseg_end + (__zobss_9150 - __zdata_start)
%include "vtrea/loc_NQGV.asm"              ; 0x0a1a

; bss_9150 equ __zdseg_end + (__zobss_9150 - __zdata_start)
bss_9152 equ __zdseg_end + (__zobss_9152 - __zdata_start)
api_idx_0004_JGSH.bss1 equ bss_9150
api_idx_0004_JGSH.loc1 equ loc_NQGV
api_idx_0004_JGSH.bss2 equ bss_9152
%include "shared/game/api_idx_0004_JGSH.asm"     ; 0x0a6a

dseg_9098 equ __zdseg_end + (__zdseg_9098 - __zdata_start)
dseg_90a0 equ __zdseg_end + (__zdseg_90a0 - __zdata_start)
; bss_9150  equ __zdseg_end + (__zobss_9150 - __zdata_start)
bss_9154  equ __zdseg_end + (__zobss_9154 - __zdata_start)
%include "vtrea/api_idx_0090_NPLS.asm"     ; 0x0b29

api_idx_0004_QHUH          equ api_idx_0004_JQTM
api_idx_0004_JQTM.api_idx1 equ api_idx_0090_NPLS
%include "shared/game/api_idx_0004_JQTM.asm"     ; 0x0d24

; bss_9150 equ __zdseg_end + (__zobss_9150 - __zdata_start)
; bss_9152 equ __zdseg_end + (__zobss_9152 - __zdata_start)
; bss_9154 equ __zdseg_end + (__zobss_9154 - __zdata_start)
%include "vtrea/loc_KIOQ.asm"              ; 0x0d87

dseg_90a2 equ __zdseg_end + (__zdseg_90a2 - __zdata_start)
dseg_90a9 equ __zdseg_end + (__zdseg_90a9 - __zdata_start)
%include "vtrea/api_idx_0004_IMVS.asm"     ; 0x0e03

%include "vtrea/loc_OOHI.asm"              ; 0x0eb2

%include "shared/game/loc_SIKN.asm"              ; 0x0f54

%include "vtrea/api_idx_0002_RJQH.asm"     ; 0x0f96

dseg_90b0 equ __zdseg_end + (__zdseg_90b0 - __zdata_start)
dseg_90b1 equ __zdseg_end + (__zdseg_90b1 - __zdata_start)
%include "vtrea/api_idx_005a_SIOK.asm"     ; 0x10fb

%include "vtrea/api_idx_003e_JGVR.asm"     ; 0x11bc

dseg_90b2 equ __zdseg_end + (__zdseg_90b2 - __zdata_start)
dseg_90b3 equ __zdseg_end + (__zdseg_90b3 - __zdata_start)
%include "vtrea/api_idx_0056_VTNO.asm"     ; 0x12cc

; animation_index    equ __zdseg_end + (__zobss_9116 - __zdata_start)
; sound_request      equ __zdseg_end + (__zobss_9118 - __zdata_start)
; pending_panel_call equ __zdseg_end + (__zobss_911a - __zdata_start)
; pending_panel_arg1 equ __zdseg_end + (__zobss_9120 - __zdata_start)
; pending_panel_arg0 equ __zdseg_end + (__zobss_9122 - __zdata_start)
bss_91d4           equ __zdseg_end + (__zobss_91d4 - __zdata_start)
bss_91d6           equ __zdseg_end + (__zobss_91d6 - __zdata_start)
%include "vtrea/api_idx_0050_MPOT.asm"     ; 0x13e0

%include "vtrea/api_idx_0004_VSSI.asm"     ; 0x1447

%include "vtrea/api_idx_0006_UHJH.asm"     ; 0x148d

dseg_90b4 equ __zdseg_end + (__zdseg_90b4 - __zdata_start)
dseg_90b5 equ __zdseg_end + (__zdseg_90b5 - __zdata_start)
dseg_90b6 equ __zdseg_end + (__zdseg_90b6 - __zdata_start)
dseg_90b7 equ __zdseg_end + (__zdseg_90b7 - __zdata_start)
dseg_90b8 equ __zdseg_end + (__zdseg_90b8 - __zdata_start)
dseg_90b9 equ __zdseg_end + (__zdseg_90b9 - __zdata_start)
dseg_90ba equ __zdseg_end + (__zdseg_90ba - __zdata_start)
; bss_91d4  equ __zdseg_end + (__zobss_91d4 - __zdata_start)
%include "vtrea/api_idx_00b8_LTRM.asm"     ; 0x14e7

dseg_90bb equ __zdseg_end + (__zdseg_90bb - __zdata_start)
dseg_90c4 equ __zdseg_end + (__zdseg_90c4 - __zdata_start)
; bss_91d6  equ __zdseg_end + (__zobss_91d6 - __zdata_start)
bss_91fe  equ __zdseg_end + (__zobss_91fe - __zdata_start)
bss_9200  equ __zdseg_end + (__zobss_9200 - __zdata_start)
bss_9230  equ __zdseg_end + (__zobss_9230 - __zdata_start)
bss_9240  equ __zdseg_end + (__zobss_9240 - __zdata_start)
bss_9250  equ __zdseg_end + (__zobss_9250 - __zdata_start)
bss_9252  equ __zdseg_end + (__zobss_9252 - __zdata_start)
bss_9342  equ __zdseg_end + (__zobss_9342 - __zdata_start)
bss_9372  equ __zdseg_end + (__zobss_9372 - __zdata_start)
%include "vtrea/api_idx_0060_VPPJ.asm"     ; 0x1fd5

%include "vtrea/loc_OVQV.asm"              ; 0x242c

; bss_9252 equ __zdseg_end + (__zobss_9252 - __zdata_start)
; bss_9372 equ __zdseg_end + (__zobss_9372 - __zdata_start)
%include "vtrea/api_idx_0002_PMUV.asm"     ; 0x251a

dseg_90cd        equ __zdseg_end + (__zdseg_90cd - __zdata_start)
dseg_90d3        equ __zdseg_end + (__zdseg_90d3 - __zdata_start)
dseg_90d5        equ __zdseg_end + (__zdseg_90d5 - __zdata_start)
dseg_90d8        equ __zdseg_end + (__zdseg_90d8 - __zdata_start)
dseg_90da        equ __zdseg_end + (__zdseg_90da - __zdata_start)
; show_area_bottom equ __zdseg_end + (__zobss_911c - __zdata_start)
; bss_9230         equ __zdseg_end + (__zobss_9230 - __zdata_start)
; bss_9240         equ __zdseg_end + (__zobss_9240 - __zdata_start)
; bss_9250         equ __zdseg_end + (__zobss_9250 - __zdata_start)
; bss_9252         equ __zdseg_end + (__zobss_9252 - __zdata_start)
; bss_9342         equ __zdseg_end + (__zobss_9342 - __zdata_start)
%include "vtrea/api_idx_0084_IMVQ.asm"     ; 0x25ab

%include "shared/game/api_idx_0008_RQRL.asm"     ; 0x3552

%include "shared/game/api_idx_0004_UJRL.asm"     ; 0x35de

%include "shared/game/api_idx_0006_TMNI.asm"     ; 0x36af

%include "shared/game/api_idx_0006_KPLV.asm"     ; 0x3706

%include "shared/game/api_idx_0018_RGOS.asm"     ; 0x37b6

list_row_marked equ __zdseg_end + (__zobss_93ae - __zdata_start)
list_row_glyph  equ __zdseg_end + (__zobss_93d6 - __zdata_start)
list_row_name   equ __zdseg_end + (__zobss_93fe - __zdata_start)
list_row_count  equ __zdseg_end + (__zobss_95b6 - __zdata_start)
api_idx_0004_SLIS equ api_idx_0004_KHSO
%include "shared/game/api_idx_0004_KHSO.asm"     ; 0x38b3

loc_HTKI.draw_list_rows1 equ api_idx_0004_SLIS
%include "shared/game/loc_HTKI.asm"              ; 0x3a15

dseg_90dc             equ __zdseg_end + (__zdseg_90dc - __zdata_start)
; show_area_bottom      equ __zdseg_end + (__zobss_911c - __zdata_start)
; party_redraw_interval equ __zdseg_end + (__zobss_9124 - __zdata_start)
%include "vtrea/api_idx_0038_ULQM.asm"     ; 0x3a56

; glyph_painter equ __zdseg_end + (__zobss_9114 - __zdata_start)
; bss_91d4      equ __zdseg_end + (__zobss_91d4 - __zdata_start)
; bss_91fe      equ __zdseg_end + (__zobss_91fe - __zdata_start)
bss_95de      equ __zdseg_end + (__zobss_95de - __zdata_start)
bss_95e0      equ __zdseg_end + (__zobss_95e0 - __zdata_start)
%include "vtrea/api_idx_0054_TIQK.asm"     ; 0x4254

%include "shared/game/loc_QQUT.asm"              ; 0x4318

; bss_91fe equ __zdseg_end + (__zobss_91fe - __zdata_start)
; bss_9250 equ __zdseg_end + (__zobss_9250 - __zdata_start)
; bss_9252 equ __zdseg_end + (__zobss_9252 - __zdata_start)
; bss_9372 equ __zdseg_end + (__zobss_9372 - __zdata_start)
; bss_95de equ __zdseg_end + (__zobss_95de - __zdata_start)
%include "vtrea/api_idx_0008_HJOM.asm"     ; 0x4368

bss_95e2 equ __zdseg_end + (__zobss_95e2 - __zdata_start)
%include "vtrea/api_idx_0004_GKHR.asm"     ; 0x4ad8

dseg_90e2       equ __zdseg_end + (__zdseg_90e2 - __zdata_start)
; list_row_marked equ __zdseg_end + (__zobss_93ae - __zdata_start)
; list_row_glyph  equ __zdseg_end + (__zobss_93d6 - __zdata_start)
; list_row_name   equ __zdseg_end + (__zobss_93fe - __zdata_start)
; list_row_count  equ __zdseg_end + (__zobss_95b6 - __zdata_start)
; bss_95e2        equ __zdseg_end + (__zobss_95e2 - __zdata_start)
%include "vtrea/api_idx_0092_GSQH.asm"     ; 0x4bcc

; glyph_painter       equ __zdseg_end + (__zobss_9114 - __zdata_start)
; animation_frame     equ __zdseg_end + (__zobss_911e - __zdata_start)
; treasure_caption_on equ __zdseg_end + (__zobss_9126 - __zdata_start)
; bss_91d4            equ __zdseg_end + (__zobss_91d4 - __zdata_start)
; bss_91fe            equ __zdseg_end + (__zobss_91fe - __zdata_start)
; bss_95de            equ __zdseg_end + (__zobss_95de - __zdata_start)
; bss_95e0            equ __zdseg_end + (__zobss_95e0 - __zdata_start)
%include "vtrea/api_idx_007a_NHII.asm"     ; 0x4f0c

%include "shared/game/api_idx_004c_RQSO.asm"     ; 0x51d7

%include "shared/game/api_idx_0004_ONJT.asm"     ; 0x52ec

; list_row_marked equ __zdseg_end + (__zobss_93ae - __zdata_start)
bss_93b0        equ __zdseg_end + (__zobss_93b0 - __zdata_start)
; list_row_glyph  equ __zdseg_end + (__zobss_93d6 - __zdata_start)
bss_93d8        equ __zdseg_end + (__zobss_93d8 - __zdata_start)
; list_row_name   equ __zdseg_end + (__zobss_93fe - __zdata_start)
bss_9414        equ __zdseg_end + (__zobss_9414 - __zdata_start)
; list_row_count  equ __zdseg_end + (__zobss_95b6 - __zdata_start)
bss_95b8        equ __zdseg_end + (__zobss_95b8 - __zdata_start)
bss_95e4        equ __zdseg_end + (__zobss_95e4 - __zdata_start)
bss_95e6        equ __zdseg_end + (__zobss_95e6 - __zdata_start)
bss_95e8        equ __zdseg_end + (__zobss_95e8 - __zdata_start)
bss_960e        equ __zdseg_end + (__zobss_960e - __zdata_start)
bss_9610        equ __zdseg_end + (__zobss_9610 - __zdata_start)
bss_9636        equ __zdseg_end + (__zobss_9636 - __zdata_start)
bss_9638        equ __zdseg_end + (__zobss_9638 - __zdata_start)
%include "vtrea/api_idx_0040_LIPH.asm"     ; 0x5348

%include "vtrea/api_idx_0006_OUPU.asm"     ; 0x550e

api_idx_0002_HHSQ equ api_idx_0002_GKQL
%include "shared/game/api_idx_0002_GKQL.asm"     ; 0x5689

%include "shared/game/loc_GMVH.asm"              ; 0x56af

api_idx_0002_MLKN equ api_idx_0002_QVIM
%include "shared/game/api_idx_0002_QVIM.asm"     ; 0x56cc

; glyph_painter   equ __zdseg_end + (__zobss_9114 - __zdata_start)
; bss_91d4        equ __zdseg_end + (__zobss_91d4 - __zdata_start)
; list_row_marked equ __zdseg_end + (__zobss_93ae - __zdata_start)
; list_row_glyph  equ __zdseg_end + (__zobss_93d6 - __zdata_start)
; list_row_name   equ __zdseg_end + (__zobss_93fe - __zdata_start)
; list_row_count  equ __zdseg_end + (__zobss_95b6 - __zdata_start)
; bss_95e4        equ __zdseg_end + (__zobss_95e4 - __zdata_start)
; bss_95e6        equ __zdseg_end + (__zobss_95e6 - __zdata_start)
; bss_960e        equ __zdseg_end + (__zobss_960e - __zdata_start)
; bss_9636        equ __zdseg_end + (__zobss_9636 - __zdata_start)
%include "vtrea/loc_HUIS.asm"              ; 0x5789

; bss_91d4 equ __zdseg_end + (__zobss_91d4 - __zdata_start)
%include "vtrea/api_idx_00a8_JSHI.asm"     ; 0x5d80

%include "shared/game/api_idx_0006_POPS.asm"     ; 0x5e88

api_idx_0004_JVLM     equ log_maze_change
jumptable_5fd3_case_0 equ log_maze_change.jumptable_case1
jumptable_5fd3_case_1 equ log_maze_change.jumptable_case2
jumptable_5fd3_case_5 equ log_maze_change.jumptable_case3
jumptable_5fd3_case_6 equ log_maze_change.jumptable_case4
jumptable_5fd3        equ log_maze_change.jumptable1
%include "shared/game/log_maze_change.asm"     ; 0x5efe

dseg_90e3        equ __zdseg_end + (__zdseg_90e3 - __zdata_start)
dseg_90e9        equ __zdseg_end + (__zdseg_90e9 - __zdata_start)
dseg_90eb        equ __zdseg_end + (__zdseg_90eb - __zdata_start)
; show_area_bottom equ __zdseg_end + (__zobss_911c - __zdata_start)
bss_965e         equ __zdseg_end + (__zobss_965e - __zdata_start)
%include "vtrea/api_idx_006a_NKMN.asm"     ; 0x5fef

dseg_90ee        equ __zdseg_end + (__zdseg_90ee - __zdata_start)
; show_area_bottom equ __zdseg_end + (__zobss_911c - __zdata_start)
%include "vtrea/api_idx_0074_MHUG.asm"     ; 0x66eb

%include "shared/game/api_idx_0002_OVRM.asm"     ; 0x6e69

%include "vtrea/api_idx_0004_IHLT.asm"     ; 0x6ead

%include "vtrea/loc_RVKS.asm"              ; 0x6f41

; bss_965e equ __zdseg_end + (__zobss_965e - __zdata_start)
%include "vtrea/api_idx_0034_NSGM.asm"     ; 0x6ff5

; treasure_caption_on equ __zdseg_end + (__zobss_9126 - __zdata_start)
; bss_965e            equ __zdseg_end + (__zobss_965e - __zdata_start)
%include "vtrea/api_idx_0072_LQIT.asm"     ; 0x7151

%include "shared/game/api_idx_0004_KGNP.asm"     ; 0x7319

; treasure_caption_on equ __zdseg_end + (__zobss_9126 - __zdata_start)
; treasure_caption    equ __zdseg_end + (__zobss_9128 - __zdata_start)
%include "vtrea/api_idx_00e6_QNPR.asm"     ; 0x73ae

%include "shared/game/mark_region_bits.asm"      ; 0x782b

%include "shared/game/loc_QTKU.asm"              ; 0x788f

%include "vtrea/api_idx_0074_SGUS.asm"     ; 0x78ed

; show_area_bottom      equ __zdseg_end + (__zobss_911c - __zdata_start)
; party_redraw_interval equ __zdseg_end + (__zobss_9124 - __zdata_start)
; treasure_caption_on   equ __zdseg_end + (__zobss_9126 - __zdata_start)
; treasure_caption      equ __zdseg_end + (__zobss_9128 - __zdata_start)
; bss_91d4              equ __zdseg_end + (__zobss_91d4 - __zdata_start)
%include "vtrea/loc_SNOI.asm"              ; 0x7d99

%include "vtrea/loc_VSIT.asm"              ; 0x7eba

; bss_91d4 equ __zdseg_end + (__zobss_91d4 - __zdata_start)
%include "vtrea/run_state_0f_scene.asm"    ; 0x7f5a

%include "vtrea/run_state_15_scene.asm"    ; 0x809e

%include "vtrea/run_state_1a_scene.asm"    ; 0x811f

%include "vtrea/run_state_1c_scene.asm"    ; 0x81b6

%include "vtrea/run_state_1d_scene.asm"    ; 0x81db

%include "shared/game/draw_split_two_line_text.asm" ; 0x8200

%include "shared/game/loc_RULJ.asm"              ; 0x82a9

%include "shared/game/api_idx_0008_JJHR.asm"     ; 0x82b8

dseg_90f4 equ __zdseg_end + (__zdseg_90f4 - __zdata_start)
dseg_90fa equ __zdseg_end + (__zdseg_90fa - __zdata_start)
%include "vtrea/loc_IOMS.asm"              ; 0x8441

%include "shared/game/draw_party_slot_letters.asm" ; 0x893e

%include "shared/game/api_idx_0002_TIUI.asm"     ; 0x89bd

known_spell_list equ __zdseg_end + (__zobss_966a - __zdata_start)
collect_known_spells.known_spell_list1 equ known_spell_list
%include "shared/game/collect_known_spells.asm"  ; 0x8a18

%include "shared/game/draw_marker_glyph.asm"     ; 0x8a89

%include "shared/game/draw_power_digit.asm"      ; 0x8ac7

dseg_9100 equ __zdseg_end + (__zdseg_9100 - __zdata_start)
draw_spell_cost.dseg1 equ dseg_9100
%include "shared/game/draw_spell_cost.asm"       ; 0x8b53

%include "shared/game/draw_realm_spell_points.asm" ; 0x8bf4

; party_redraw_interval equ __zdseg_end + (__zobss_9124 - __zdata_start)
periodic_party_redraw.party_redraw_mode1 equ party_redraw_interval
periodic_party_redraw.api_idx1           equ draw_realm_spell_points
%include "shared/game/periodic_party_redraw.asm" ; 0x8c8d

str_swap_file_v       equ __zdseg_end + (__zstr_swap_file_v - __zdata_start)
; party_redraw_interval equ __zdseg_end + (__zobss_9124 - __zdata_start)
; known_spell_list      equ __zdseg_end + (__zobss_966a - __zdata_start)
%include "vtrea/spell_select_dialog.asm"   ; 0x8d1e

save_si  equ __zdseg_end + (__zsave_si - __zdata_start)
save_di  equ __zdseg_end + (__zsave_di - __zdata_start)
save_sp  equ __zdseg_end + (__zsave_sp - __zdata_start)
save_bp  equ __zdseg_end + (__zsave_bp - __zdata_start)
save_ret equ __zdseg_end + (__zsave_ret - __zdata_start)
_Uorg    equ __zdseg_end + (__zobss_9114 - __zdata_start)
_Uend    equ __zdseg_end + (__zobss_end - __zdata_start)
%include "shared/aztec/aztec_ovbgn.asm"           ; 0x99c5

%include "shared/aztec/aztec_cswit.asm"           ; 0x9a03

__zdseg_9098:
__zdata_start:
    db '!%&]@#~', 0
__zdseg_90a0:
    db 0x20, 0x00
__zdseg_90a2:
    db 'V1.$$$', 0
__zdseg_90a9:
    db 'V2.$$$', 0
__zdseg_90b0:
    db 0x00
__zdseg_90b1:
    db 0x00
__zdseg_90b2:
    db 0x00
__zdseg_90b3:
    db 0x00
__zdseg_90b4:
    db 0x00
__zdseg_90b5:
    db 0x00
__zdseg_90b6:
    db 0x00
__zdseg_90b7:
    db 0x00
__zdseg_90b8:
    db 0x00
__zdseg_90b9:
    db 0x00
__zdseg_90ba:
    db 0x00
__zdseg_90bb:
    db '--------', 0
__zdseg_90c4:
    db '????????', 0
__zdseg_90cd:
    db 'V.$$$', 0
__zdseg_90d3:
    db 0x28, 0x00
__zdseg_90d5:
    db 0x25, 0x29, 0x00
__zdseg_90d8:
    db 0x28, 0x00
__zdseg_90da:
    db 0x29, 0x00
__zdseg_90dc:
    db 'V.$$$', 0
__zdseg_90e2:
    db 0x00
__zdseg_90e3:
    db 'V.$$$', 0
__zdseg_90e9:
    db 0x28, 0x00
__zdseg_90eb:
    db 0x25, 0x29, 0x00
__zdseg_90ee:
    db 'V.$$$', 0
__zdseg_90f4:
    db 'V.$$$', 0
__zdseg_90fa:
    db 'V.$$$', 0
__zdseg_9100:
    db 0x2a, 0x2a, 0x2a, 0x00
%include "vtrea/data/str_swap_file_v.asm"  ; 0x9a87

%include "shared/data/save_si.asm"          ; 0x9a8d

%include "shared/data/save_di.asm"          ; 0x9a8f

%include "shared/data/save_sp.asm"          ; 0x9a91

%include "shared/data/save_bp.asm"          ; 0x9a93

%include "shared/data/save_ret.asm"         ; 0x9a95


__zimage_end:
absolute __zimage_end
__zobss_9114:
    resb 0x0002
__zobss_9116:
    resb 0x0002
__zobss_9118:
    resb 0x0002
__zobss_911a:
    resb 0x0002
__zobss_911c:
    resb 0x0002
__zobss_911e:
    resb 0x0002
__zobss_9120:
    resb 0x0002
__zobss_9122:
    resb 0x0002
__zobss_9124:
    resb 0x0002
__zobss_9126:
    resb 0x0002
__zobss_9128:
    resb 0x0028
__zobss_9150:
    resb 0x0002
__zobss_9152:
    resb 0x0002
__zobss_9154:
    resb 0x0080
__zobss_91d4:
    resb 0x0002
__zobss_91d6:
    resb 0x0028
__zobss_91fe:
    resb 0x0002
__zobss_9200:
    resb 0x0030
__zobss_9230:
    resb 0x0010
__zobss_9240:
    resb 0x0010
__zobss_9250:
    resb 0x0002
__zobss_9252:
    resb 0x00f0
__zobss_9342:
    resb 0x0030
__zobss_9372:
    resb 0x003c
__zobss_93ae:
    resb 0x0002
__zobss_93b0:
    resb 0x0026
__zobss_93d6:
    resb 0x0002
__zobss_93d8:
    resb 0x0026
__zobss_93fe:
    resb 0x0016
__zobss_9414:
    resb 0x01a2
__zobss_95b6:
    resb 0x0002
__zobss_95b8:
    resb 0x0026
__zobss_95de:
    resb 0x0002
__zobss_95e0:
    resb 0x0002
__zobss_95e2:
    resb 0x0002
__zobss_95e4:
    resb 0x0002
__zobss_95e6:
    resb 0x0002
__zobss_95e8:
    resb 0x0026
__zobss_960e:
    resb 0x0002
__zobss_9610:
    resb 0x0026
__zobss_9636:
    resb 0x0002
__zobss_9638:
    resb 0x0026
__zobss_965e:
    resb 0x000c
__zobss_966a:
    resb 0x0050
__zobss_end:
