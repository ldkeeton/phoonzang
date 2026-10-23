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
    dw (__zdata_start - __zcode_start)       ; 0x54a2 ; o_csize: code size in bytes
    dw __zdseg_end                           ; 0x9098 ; o_dorg: data load origin (memory offset)
    dw (__zimage_end - __zdata_start)        ; 0x0370 ; o_dsize: initialized data size
    dw __zobss_end - __zimage_end            ; 0x03a4 ; o_bss: uninitialized data size
    dw aztec_ovbgn - IMAGE_BASE + __zres_end ; 0xa4b9 ; o_entry: overlay entry offset (CS)

__zcode_start:

%include "vpclv/ovmain.asm"                ; 0x000e

%include "shared/game/api_idx_0002_OOKN.asm"     ; 0x0022

window_record equ __zdseg_end + (__zobss_9408 - __zdata_start)
api_idx_0012_RLJJ equ api_idx_0012_PGSL
%include "shared/game/api_idx_0012_PGSL.asm"     ; 0x0086

%include "shared/game/draw_party_slot_letters.asm" ; 0x0202

bss_942a equ __zdseg_end + (__zobss_942a - __zdata_start)
bss_942c equ __zdseg_end + (__zobss_942c - __zdata_start)
api_idx_0004_RMVO.bss1 equ bss_942c
api_idx_0004_RMVO.bss2 equ bss_942a
%include "shared/game/api_idx_0004_RMVO.asm"     ; 0x0281

%include "shared/game/api_idx_0002_TIUI.asm"     ; 0x0331

%include "shared/game/api_idx_0002_UIHS.asm"     ; 0x038c

%include "shared/game/api_idx_0010_STNH.asm"     ; 0x03cd

bss_9432 equ __zdseg_end + (__zobss_9432 - __zdata_start)
bss_9434 equ __zdseg_end + (__zobss_9434 - __zdata_start)
bss_9436 equ __zdseg_end + (__zobss_9436 - __zdata_start)
bss_9438 equ __zdseg_end + (__zobss_9438 - __zdata_start)
api_idx_000a_TITQ.bss1 equ bss_9434
api_idx_000a_TITQ.bss2 equ bss_9432
api_idx_000a_TITQ.bss3 equ bss_9436
api_idx_000a_TITQ.bss4 equ bss_9438
%include "shared/game/api_idx_000a_TITQ.asm"     ; 0x04ca

dseg_9098 equ __zdseg_end + (__zdseg_9098 - __zdata_start)
bss_9416  equ __zdseg_end + (__zobss_9416 - __zdata_start)
bss_9418  equ __zdseg_end + (__zobss_9418 - __zdata_start)
bss_941a  equ __zdseg_end + (__zobss_941a - __zdata_start)
bss_941c  equ __zdseg_end + (__zobss_941c - __zdata_start)
; bss_9436  equ __zdseg_end + (__zobss_9436 - __zdata_start)
; bss_9438  equ __zdseg_end + (__zobss_9438 - __zdata_start)
bss_943a  equ __zdseg_end + (__zobss_943a - __zdata_start)
api_idx_007c_MOJH.bss1     equ bss_9418
api_idx_007c_MOJH.bss2     equ bss_9416
api_idx_007c_MOJH.bss3     equ bss_941c
api_idx_007c_MOJH.bss4     equ bss_941a
api_idx_007c_MOJH.bss5     equ bss_9436
api_idx_007c_MOJH.bss6     equ bss_9438
api_idx_007c_MOJH.bss7     equ bss_943a
api_idx_007c_MOJH.api_idx1 equ api_idx_0012_RLJJ
%include "shared/game/api_idx_007c_MOJH.asm"     ; 0x0572

%include "vpclv/loc_MNNG.asm"              ; 0x0dc0

bss_943c equ __zdseg_end + (__zobss_943c - __zdata_start)
api_idx_0004_TLJT                      equ collect_known_spells
collect_known_spells.known_spell_list1 equ bss_943c
%include "shared/game/collect_known_spells.asm"     ; 0x0e3b

%include "shared/game/draw_marker_glyph.asm"     ; 0x0eac

%include "shared/game/draw_power_digit.asm"      ; 0x0eea

dseg_909b equ __zdseg_end + (__zdseg_909b - __zdata_start)
loc_GPRG              equ draw_spell_cost
draw_spell_cost.dseg1 equ dseg_909b
%include "shared/game/draw_spell_cost.asm"              ; 0x0f76

%include "shared/game/draw_realm_spell_points.asm" ; 0x1017

bss_948c equ __zdseg_end + (__zobss_948c - __zdata_start)
periodic_party_redraw.party_redraw_mode1 equ bss_948c
periodic_party_redraw.api_idx1           equ draw_realm_spell_points
%include "shared/game/periodic_party_redraw.asm" ; 0x10b0

dseg_909f equ __zdseg_end + (__zdseg_909f - __zdata_start)
; bss_943c  equ __zdseg_end + (__zobss_943c - __zdata_start)
; bss_948c  equ __zdseg_end + (__zobss_948c - __zdata_start)
api_idx_0050_MINM.dseg1    equ dseg_909f
api_idx_0050_MINM.loc1     equ loc_GPRG
api_idx_0050_MINM.api_idx1 equ api_idx_0004_TLJT
api_idx_0050_MINM.bss1     equ bss_948c
jumptable_1d9a_case_0      equ api_idx_0050_MINM.jumptable_case1
jumptable_1d9a_case_1      equ api_idx_0050_MINM.jumptable_case2
jumptable_1d9a_case_3      equ api_idx_0050_MINM.jumptable_case3
jumptable_1d9a_case_4      equ api_idx_0050_MINM.jumptable_case4
api_idx_0050_MINM.bss2     equ bss_943c
jumptable_1d9a             equ api_idx_0050_MINM.jumptable1
%include "shared/game/api_idx_0050_MINM.asm"     ; 0x1141

%include "vpclv/api_idx_00ca_HKHO.asm"     ; 0x1e31

; bss_943a equ __zdseg_end + (__zobss_943a - __zdata_start)
; bss_948c equ __zdseg_end + (__zobss_948c - __zdata_start)
loc_TTSP.bss1 equ bss_948c
loc_TTSP.bss2 equ bss_943a
%include "shared/game/loc_TTSP.asm"              ; 0x20e3

%include "vpclv/loc_HJRN.asm"              ; 0x2189

%include "shared/game/api_idx_0004_GUSS.asm"     ; 0x21be

%include "shared/game/draw_split_two_line_text.asm" ; 0x2447

bss_9422 equ __zdseg_end + (__zobss_9422 - __zdata_start)
bss_9424 equ __zdseg_end + (__zobss_9424 - __zdata_start)
bss_9426 equ __zdseg_end + (__zobss_9426 - __zdata_start)
bss_9428 equ __zdseg_end + (__zobss_9428 - __zdata_start)
api_idx_0080_MHMQ.bss1     equ bss_9424
api_idx_0080_MHMQ.bss2     equ bss_9422
api_idx_0080_MHMQ.bss3     equ bss_9428
api_idx_0080_MHMQ.bss4     equ bss_9426
api_idx_0080_MHMQ.api_idx1 equ api_idx_0012_RLJJ
%include "shared/game/api_idx_0080_MHMQ.asm"     ; 0x24f0

%include "shared/game/api_idx_0004_MKGU.asm"     ; 0x2717

roster_screen_b  equ __zdseg_end + (__zobss_941e - __zdata_start)
roster_screen_a  equ __zdseg_end + (__zobss_9420 - __zdata_start)
roster_page      equ __zdseg_end + (__zobss_948e - __zdata_start)
roster_alt_mode  equ __zdseg_end + (__zobss_9490 - __zdata_start)
roster_drawn     equ __zdseg_end + (__zobss_9492 - __zdata_start)
roster_names     equ __zdseg_end + (__zobss_9494 - __zdata_start)
roster_row_attr  equ __zdseg_end + (__zobss_9570 - __zdata_start)
roster_row_color equ __zdseg_end + (__zobss_9584 - __zdata_start)
api_idx_004c_UMGL equ api_idx_004c_LTUL
%include "shared/game/api_idx_004c_LTUL.asm"     ; 0x27e3

%include "shared/game/loc_NJOH.asm"              ; 0x2a32

%include "shared/game/api_idx_0006_VJKJ.asm"     ; 0x2a85

%include "shared/game/api_idx_0002_KQIK.asm"     ; 0x2b1a

dseg_90a5 equ __zdseg_end + (__zdseg_90a5 - __zdata_start)
dseg_90b4 equ __zdseg_end + (__zdseg_90b4 - __zdata_start)
dseg_90c3 equ __zdseg_end + (__zdseg_90c3 - __zdata_start)
dseg_90d2 equ __zdseg_end + (__zdseg_90d2 - __zdata_start)
dseg_90e1 equ __zdseg_end + (__zdseg_90e1 - __zdata_start)
dseg_90f0 equ __zdseg_end + (__zdseg_90f0 - __zdata_start)
dseg_90ff equ __zdseg_end + (__zdseg_90ff - __zdata_start)
dseg_910e equ __zdseg_end + (__zdseg_910e - __zdata_start)
dseg_911d equ __zdseg_end + (__zdseg_911d - __zdata_start)
dseg_912c equ __zdseg_end + (__zdseg_912c - __zdata_start)
dseg_913b equ __zdseg_end + (__zdseg_913b - __zdata_start)
dseg_914a equ __zdseg_end + (__zdseg_914a - __zdata_start)
dseg_9159 equ __zdseg_end + (__zdseg_9159 - __zdata_start)
dseg_9168 equ __zdseg_end + (__zdseg_9168 - __zdata_start)
dseg_9177 equ __zdseg_end + (__zdseg_9177 - __zdata_start)
dseg_9186 equ __zdseg_end + (__zdseg_9186 - __zdata_start)
dseg_9195 equ __zdseg_end + (__zdseg_9195 - __zdata_start)
dseg_91a4 equ __zdseg_end + (__zdseg_91a4 - __zdata_start)
dseg_91b3 equ __zdseg_end + (__zdseg_91b3 - __zdata_start)
dseg_91c2 equ __zdseg_end + (__zdseg_91c2 - __zdata_start)
%include "vpclv/api_idx_0052_LHVG.asm"     ; 0x2c0c

%include "shared/game/api_idx_0004_PMIU.asm"     ; 0x3288

%include "vpclv/api_idx_0020_ORSV.asm"     ; 0x333c

bss_9598 equ __zdseg_end + (__zobss_9598 - __zdata_start)
api_idx_0004_GRGJ.bss1 equ bss_9598
%include "shared/game/api_idx_0004_GRGJ.asm"     ; 0x34cd

dseg_91d1        equ __zdseg_end + (__zdseg_91d1 - __zdata_start)
dseg_91dc        equ __zdseg_end + (__zdseg_91dc - __zdata_start)
dseg_91e5        equ __zdseg_end + (__zdseg_91e5 - __zdata_start)
dseg_91ec        equ __zdseg_end + (__zdseg_91ec - __zdata_start)
dseg_91f7        equ __zdseg_end + (__zdseg_91f7 - __zdata_start)
dseg_9202        equ __zdseg_end + (__zdseg_9202 - __zdata_start)
dseg_920b        equ __zdseg_end + (__zdseg_920b - __zdata_start)
dseg_9212        equ __zdseg_end + (__zdseg_9212 - __zdata_start)
dseg_921d        equ __zdseg_end + (__zdseg_921d - __zdata_start)
dseg_9228        equ __zdseg_end + (__zdseg_9228 - __zdata_start)
dseg_9231        equ __zdseg_end + (__zdseg_9231 - __zdata_start)
dseg_9238        equ __zdseg_end + (__zdseg_9238 - __zdata_start)
dseg_9243        equ __zdseg_end + (__zdseg_9243 - __zdata_start)
dseg_924e        equ __zdseg_end + (__zdseg_924e - __zdata_start)
dseg_9257        equ __zdseg_end + (__zdseg_9257 - __zdata_start)
dseg_925e        equ __zdseg_end + (__zdseg_925e - __zdata_start)
dseg_9269        equ __zdseg_end + (__zdseg_9269 - __zdata_start)
dseg_9274        equ __zdseg_end + (__zdseg_9274 - __zdata_start)
dseg_927d        equ __zdseg_end + (__zdseg_927d - __zdata_start)
dseg_9284        equ __zdseg_end + (__zdseg_9284 - __zdata_start)
dseg_928f        equ __zdseg_end + (__zdseg_928f - __zdata_start)
dseg_929a        equ __zdseg_end + (__zdseg_929a - __zdata_start)
dseg_92a3        equ __zdseg_end + (__zdseg_92a3 - __zdata_start)
dseg_92aa        equ __zdseg_end + (__zdseg_92aa - __zdata_start)
dseg_92b5        equ __zdseg_end + (__zdseg_92b5 - __zdata_start)
dseg_92c0        equ __zdseg_end + (__zdseg_92c0 - __zdata_start)
dseg_92c9        equ __zdseg_end + (__zdseg_92c9 - __zdata_start)
dseg_92d0        equ __zdseg_end + (__zdseg_92d0 - __zdata_start)
dseg_92db        equ __zdseg_end + (__zdseg_92db - __zdata_start)
dseg_92e6        equ __zdseg_end + (__zdseg_92e6 - __zdata_start)
dseg_92ef        equ __zdseg_end + (__zdseg_92ef - __zdata_start)
dseg_92f6        equ __zdseg_end + (__zdseg_92f6 - __zdata_start)
dseg_9301        equ __zdseg_end + (__zdseg_9301 - __zdata_start)
dseg_930c        equ __zdseg_end + (__zdseg_930c - __zdata_start)
dseg_9315        equ __zdseg_end + (__zdseg_9315 - __zdata_start)
dseg_931c        equ __zdseg_end + (__zdseg_931c - __zdata_start)
dseg_9327        equ __zdseg_end + (__zdseg_9327 - __zdata_start)
dseg_9332        equ __zdseg_end + (__zdseg_9332 - __zdata_start)
dseg_933b        equ __zdseg_end + (__zdseg_933b - __zdata_start)
dseg_9342        equ __zdseg_end + (__zdseg_9342 - __zdata_start)
dseg_934d        equ __zdseg_end + (__zdseg_934d - __zdata_start)
dseg_9358        equ __zdseg_end + (__zdseg_9358 - __zdata_start)
dseg_9361        equ __zdseg_end + (__zdseg_9361 - __zdata_start)
dseg_9368        equ __zdseg_end + (__zdseg_9368 - __zdata_start)
dseg_9373        equ __zdseg_end + (__zdseg_9373 - __zdata_start)
dseg_937e        equ __zdseg_end + (__zdseg_937e - __zdata_start)
dseg_9387        equ __zdseg_end + (__zdseg_9387 - __zdata_start)
dseg_938e        equ __zdseg_end + (__zdseg_938e - __zdata_start)
dseg_9399        equ __zdseg_end + (__zdseg_9399 - __zdata_start)
dseg_93a4        equ __zdseg_end + (__zdseg_93a4 - __zdata_start)
dseg_93ad        equ __zdseg_end + (__zdseg_93ad - __zdata_start)
dseg_93b4        equ __zdseg_end + (__zdseg_93b4 - __zdata_start)
dseg_93bf        equ __zdseg_end + (__zdseg_93bf - __zdata_start)
dseg_93ca        equ __zdseg_end + (__zdseg_93ca - __zdata_start)
dseg_93d3        equ __zdseg_end + (__zdseg_93d3 - __zdata_start)
dseg_93da        equ __zdseg_end + (__zdseg_93da - __zdata_start)
; bss_9598         equ __zdseg_end + (__zobss_9598 - __zdata_start)
bss_95d0         equ __zdseg_end + (__zobss_95d0 - __zdata_start)
slot_prompt_text equ __zdseg_end + (__zobss_95dc - __zdata_start)
jumptable_3797_case_0               equ api_idx_0004_LOLJ.jumptable_case1
api_idx_0004_LOLJ.dseg1             equ dseg_91ec
api_idx_0004_LOLJ.dseg2             equ dseg_91e5
api_idx_0004_LOLJ.dseg3             equ dseg_91dc
api_idx_0004_LOLJ.dseg4             equ dseg_91d1
api_idx_0004_LOLJ.api_idx1          equ api_idx_0004_GRGJ
jumptable_3797_case_1               equ api_idx_0004_LOLJ.jumptable_case2
api_idx_0004_LOLJ.dseg5             equ dseg_9212
api_idx_0004_LOLJ.dseg6             equ dseg_920b
api_idx_0004_LOLJ.dseg7             equ dseg_9202
api_idx_0004_LOLJ.dseg8             equ dseg_91f7
jumptable_3797_case_2               equ api_idx_0004_LOLJ.jumptable_case3
api_idx_0004_LOLJ.dseg9             equ dseg_9238
api_idx_0004_LOLJ.dseg10            equ dseg_9231
api_idx_0004_LOLJ.dseg11            equ dseg_9228
api_idx_0004_LOLJ.dseg12            equ dseg_921d
jumptable_3797_case_3               equ api_idx_0004_LOLJ.jumptable_case4
api_idx_0004_LOLJ.dseg13            equ dseg_925e
api_idx_0004_LOLJ.dseg14            equ dseg_9257
api_idx_0004_LOLJ.dseg15            equ dseg_924e
api_idx_0004_LOLJ.dseg16            equ dseg_9243
jumptable_3797_case_4               equ api_idx_0004_LOLJ.jumptable_case5
api_idx_0004_LOLJ.dseg17            equ dseg_9284
api_idx_0004_LOLJ.dseg18            equ dseg_927d
api_idx_0004_LOLJ.dseg19            equ dseg_9274
api_idx_0004_LOLJ.dseg20            equ dseg_9269
jumptable_3797_case_5               equ api_idx_0004_LOLJ.jumptable_case6
api_idx_0004_LOLJ.dseg21            equ dseg_92aa
api_idx_0004_LOLJ.dseg22            equ dseg_92a3
api_idx_0004_LOLJ.dseg23            equ dseg_929a
api_idx_0004_LOLJ.dseg24            equ dseg_928f
jumptable_3797_case_6               equ api_idx_0004_LOLJ.jumptable_case7
api_idx_0004_LOLJ.dseg25            equ dseg_92d0
api_idx_0004_LOLJ.dseg26            equ dseg_92c9
api_idx_0004_LOLJ.dseg27            equ dseg_92c0
api_idx_0004_LOLJ.dseg28            equ dseg_92b5
jumptable_3797_case_7               equ api_idx_0004_LOLJ.jumptable_case8
api_idx_0004_LOLJ.dseg29            equ dseg_92f6
api_idx_0004_LOLJ.dseg30            equ dseg_92ef
api_idx_0004_LOLJ.dseg31            equ dseg_92e6
api_idx_0004_LOLJ.dseg32            equ dseg_92db
jumptable_3797_case_8               equ api_idx_0004_LOLJ.jumptable_case9
api_idx_0004_LOLJ.dseg33            equ dseg_931c
api_idx_0004_LOLJ.dseg34            equ dseg_9315
api_idx_0004_LOLJ.dseg35            equ dseg_930c
api_idx_0004_LOLJ.dseg36            equ dseg_9301
jumptable_3797_case_9               equ api_idx_0004_LOLJ.jumptable_case10
api_idx_0004_LOLJ.dseg37            equ dseg_9342
api_idx_0004_LOLJ.dseg38            equ dseg_933b
api_idx_0004_LOLJ.dseg39            equ dseg_9332
api_idx_0004_LOLJ.dseg40            equ dseg_9327
jumptable_3797_case_10              equ api_idx_0004_LOLJ.jumptable_case11
api_idx_0004_LOLJ.dseg41            equ dseg_9368
api_idx_0004_LOLJ.dseg42            equ dseg_9361
api_idx_0004_LOLJ.dseg43            equ dseg_9358
api_idx_0004_LOLJ.dseg44            equ dseg_934d
jumptable_3797_case_11              equ api_idx_0004_LOLJ.jumptable_case12
api_idx_0004_LOLJ.dseg45            equ dseg_938e
api_idx_0004_LOLJ.dseg46            equ dseg_9387
api_idx_0004_LOLJ.dseg47            equ dseg_937e
api_idx_0004_LOLJ.dseg48            equ dseg_9373
jumptable_3797_case_12              equ api_idx_0004_LOLJ.jumptable_case13
api_idx_0004_LOLJ.dseg49            equ dseg_93b4
api_idx_0004_LOLJ.dseg50            equ dseg_93ad
api_idx_0004_LOLJ.dseg51            equ dseg_93a4
api_idx_0004_LOLJ.dseg52            equ dseg_9399
jumptable_3797_case_13              equ api_idx_0004_LOLJ.jumptable_case14
api_idx_0004_LOLJ.dseg53            equ dseg_93da
api_idx_0004_LOLJ.dseg54            equ dseg_93d3
api_idx_0004_LOLJ.dseg55            equ dseg_93ca
api_idx_0004_LOLJ.dseg56            equ dseg_93bf
jumptable_3797                      equ api_idx_0004_LOLJ.jumptable1
api_idx_0004_LOLJ.bss1              equ bss_95d0
api_idx_0004_LOLJ.bss2              equ bss_9598
api_idx_0004_LOLJ.slot_prompt_text1 equ slot_prompt_text
%include "shared/game/api_idx_0004_LOLJ.asm"     ; 0x35fc

; roster_screen_b equ __zdseg_end + (__zobss_941e - __zdata_start)
; roster_screen_a equ __zdseg_end + (__zobss_9420 - __zdata_start)
api_idx_0002_OGRO.roster_screen_a1 equ roster_screen_a
api_idx_0002_OGRO.roster_screen_b1 equ roster_screen_b
%include "shared/game/api_idx_0002_OGRO.asm"     ; 0x3851

; slot_prompt_text equ __zdseg_end + (__zobss_95dc - __zdata_start)
slot_value       equ __zdseg_end + (__zobss_95f0 - __zdata_start)
%include "shared/game/api_idx_002e_ILPL.asm"     ; 0x390b

; slot_value equ __zdseg_end + (__zobss_95f0 - __zdata_start)
slot_label equ __zdseg_end + (__zobss_95f8 - __zdata_start)
slot_limit equ __zdseg_end + (__zobss_96c0 - __zdata_start)
api_idx_0032_VJTR          equ api_idx_0032_HGIM
api_idx_0032_HGIM.api_idx1 equ api_idx_002e_ILPL
%include "shared/game/api_idx_0032_HGIM.asm"     ; 0x3a7a

; bss_9598   equ __zdseg_end + (__zobss_9598 - __zdata_start)
; slot_value equ __zdseg_end + (__zobss_95f0 - __zdata_start)
; slot_label equ __zdseg_end + (__zobss_95f8 - __zdata_start)
; slot_limit equ __zdseg_end + (__zobss_96c0 - __zdata_start)
%include "vpclv/api_idx_0088_LVJM.asm"     ; 0x3f9e

; slot_value equ __zdseg_end + (__zobss_95f0 - __zdata_start)
bss_95f4   equ __zdseg_end + (__zobss_95f4 - __zdata_start)
api_idx_001c_HVVI.bss1 equ bss_95f4
%include "shared/game/api_idx_001c_HVVI.asm"     ; 0x4140

; slot_value equ __zdseg_end + (__zobss_95f0 - __zdata_start)
%include "vpclv/api_idx_0002_SLJI.asm"     ; 0x4270

%include "vpclv/loc_KPKJ.asm"              ; 0x4310

dseg_93e5 equ __zdseg_end + (__zdseg_93e5 - __zdata_start)
dseg_93e9 equ __zdseg_end + (__zdseg_93e9 - __zdata_start)
dseg_93eb equ __zdseg_end + (__zdseg_93eb - __zdata_start)
dseg_93ed equ __zdseg_end + (__zdseg_93ed - __zdata_start)
%include "vpclv/api_idx_00ac_MSQO.asm"     ; 0x45e0

%include "vpclv/api_idx_0004_KJII.asm"     ; 0x4884

%include "vpclv/api_idx_0018_IKVK.asm"     ; 0x4955

dseg_93ee equ __zdseg_end + (__zdseg_93ee - __zdata_start)
dseg_93ef equ __zdseg_end + (__zdseg_93ef - __zdata_start)
%include "vpclv/api_idx_00b4_QLQS.asm"     ; 0x4cc5

%include "vpclv/api_idx_0006_ILTI.asm"     ; 0x4e03

; slot_value equ __zdseg_end + (__zobss_95f0 - __zdata_start)
%include "vpclv/api_idx_00a4_PTJS.asm"     ; 0x4e9e

; roster_drawn equ __zdseg_end + (__zobss_9492 - __zdata_start)
%include "vpclv/api_idx_0046_NOMK.asm"     ; 0x4fca

%include "shared/game/draw_party_glyph_row.asm"  ; 0x50a1

dseg_93f0       equ __zdseg_end + (__zdseg_93f0 - __zdata_start)
; bss_9416        equ __zdseg_end + (__zobss_9416 - __zdata_start)
; bss_9418        equ __zdseg_end + (__zobss_9418 - __zdata_start)
; bss_941a        equ __zdseg_end + (__zobss_941a - __zdata_start)
; bss_941c        equ __zdseg_end + (__zobss_941c - __zdata_start)
; roster_screen_b equ __zdseg_end + (__zobss_941e - __zdata_start)
; roster_screen_a equ __zdseg_end + (__zobss_9420 - __zdata_start)
; bss_9422        equ __zdseg_end + (__zobss_9422 - __zdata_start)
; bss_9424        equ __zdseg_end + (__zobss_9424 - __zdata_start)
; bss_9426        equ __zdseg_end + (__zobss_9426 - __zdata_start)
; bss_9428        equ __zdseg_end + (__zobss_9428 - __zdata_start)
; bss_942a        equ __zdseg_end + (__zobss_942a - __zdata_start)
; bss_942c        equ __zdseg_end + (__zobss_942c - __zdata_start)
; bss_9432        equ __zdseg_end + (__zobss_9432 - __zdata_start)
; bss_9434        equ __zdseg_end + (__zobss_9434 - __zdata_start)
; bss_9436        equ __zdseg_end + (__zobss_9436 - __zdata_start)
; bss_9438        equ __zdseg_end + (__zobss_9438 - __zdata_start)
; bss_943a        equ __zdseg_end + (__zobss_943a - __zdata_start)
; roster_page     equ __zdseg_end + (__zobss_948e - __zdata_start)
; roster_alt_mode equ __zdseg_end + (__zobss_9490 - __zdata_start)
; roster_drawn    equ __zdseg_end + (__zobss_9492 - __zdata_start)
bss_9704        equ __zdseg_end + (__zobss_9704 - __zdata_start)
%include "vpclv/api_idx_000c_RLGP.asm"     ; 0x5161

save_si  equ __zdseg_end + (__zsave_si - __zdata_start)
save_di  equ __zdseg_end + (__zsave_di - __zdata_start)
save_sp  equ __zdseg_end + (__zsave_sp - __zdata_start)
save_bp  equ __zdseg_end + (__zsave_bp - __zdata_start)
save_ret equ __zdseg_end + (__zsave_ret - __zdata_start)
_Uorg    equ __zdseg_end + (__zobss_9408 - __zdata_start)
_Uend    equ __zdseg_end + (__zobss_end - __zdata_start)
%include "shared/aztec/aztec_ovbgn.asm"           ; 0x5472

__zdseg_9098:
__zdata_start:
    db 0x25, 0x20, 0x00
__zdseg_909b:
    db 0x2a, 0x2a, 0x2a, 0x00
__zdseg_909f:
    db 'V.$$$', 0
__zdseg_90a5:
    db 'ACBCBCCCCHCHBA', 0
__zdseg_90b4:
    db '02222232112230', 0
__zdseg_90c3:
    db 'ACCCCDCCCHHKDA', 0
__zdseg_90d2:
    db '02222232123230', 0
__zdseg_90e1:
    db 'ACCCCDCCCIFKEA', 0
__zdseg_90f0:
    db '02222232121230', 0
__zdseg_90ff:
    db 'ACHCHDCCCHFIDA', 0
__zdseg_910e:
    db '02323232111230', 0
__zdseg_911d:
    db 'ACKCHHGCCIECBA', 0
__zdseg_912c:
    db '02322322121220', 0
__zdseg_913b:
    db 'ACBCCDECCEEEGA', 0
__zdseg_914a:
    db '02121212111330', 0
__zdseg_9159:
    db 'ACICIBHCCFKFFA', 0
__zdseg_9168:
    db '02323112113330', 0
__zdseg_9177:
    db 'ACECCEGCCIFKFA', 0
__zdseg_9186:
    db '02222222122220', 0
__zdseg_9195:
    db 'ACKCGDHCCFKIDA', 0
__zdseg_91a4:
    db '02322212112320', 0
__zdseg_91b3:
    db 'ACHCHHGCCCECHA', 0
__zdseg_91c2:
    db '02322322112230', 0
__zdseg_91d1:
    db '1111111110', 0
__zdseg_91dc:
    db '11100000', 0
__zdseg_91e5:
    db '000000', 0
__zdseg_91ec:
    db '1111000000', 0
__zdseg_91f7:
    db '1000111100', 0
__zdseg_9202:
    db '11101000', 0
__zdseg_920b:
    db '000000', 0
__zdseg_9212:
    db '1111000010', 0
__zdseg_921d:
    db '0001101010', 0
__zdseg_9228:
    db '11101000', 0
__zdseg_9231:
    db '000000', 0
__zdseg_9238:
    db '1111101000', 0
__zdseg_9243:
    db '1111111110', 0
__zdseg_924e:
    db '11101111', 0
__zdseg_9257:
    db '000000', 0
__zdseg_925e:
    db '1111000000', 0
__zdseg_9269:
    db '1111111110', 0
__zdseg_9274:
    db '11100111', 0
__zdseg_927d:
    db '000000', 0
__zdseg_9284:
    db '1111010000', 0
__zdseg_928f:
    db '1001110000', 0
__zdseg_929a:
    db '11100000', 0
__zdseg_92a3:
    db '000000', 0
__zdseg_92aa:
    db '1111010000', 0
__zdseg_92b5:
    db '1111111110', 0
__zdseg_92c0:
    db '11111111', 0
__zdseg_92c9:
    db '000000', 0
__zdseg_92d0:
    db '1111000010', 0
__zdseg_92db:
    db '1001111000', 0
__zdseg_92e6:
    db '11101000', 0
__zdseg_92ef:
    db '000000', 0
__zdseg_92f6:
    db '1111000100', 0
__zdseg_9301:
    db '1111111110', 0
__zdseg_930c:
    db '11101000', 0
__zdseg_9315:
    db '000000', 0
__zdseg_931c:
    db '1111001000', 0
__zdseg_9327:
    db '0001101010', 0
__zdseg_9332:
    db '11101000', 0
__zdseg_933b:
    db '000000', 0
__zdseg_9342:
    db '1111101010', 0
__zdseg_934d:
    db '1111111110', 0
__zdseg_9358:
    db '11101000', 0
__zdseg_9361:
    db '000000', 0
__zdseg_9368:
    db '1111101000', 0
__zdseg_9373:
    db '1111111110', 0
__zdseg_937e:
    db '11101000', 0
__zdseg_9387:
    db '000000', 0
__zdseg_938e:
    db '1111000011', 0
__zdseg_9399:
    db '1001111101', 0
__zdseg_93a4:
    db '11101001', 0
__zdseg_93ad:
    db '000000', 0
__zdseg_93b4:
    db '1111000101', 0
__zdseg_93bf:
    db '1111111111', 0
__zdseg_93ca:
    db '11100111', 0
__zdseg_93d3:
    db '000000', 0
__zdseg_93da:
    db '1111010001', 0
__zdseg_93e5:
    db 0x25, 0x20, 0x28, 0x00
__zdseg_93e9:
    db 0x29, 0x00
__zdseg_93eb:
    db 0x2f, 0x00
__zdseg_93ed:
    db 0x00
__zdseg_93ee:
    db 0x00
__zdseg_93ef:
    db 0x00
__zdseg_93f0:
    db 'PCVWSCRN.VGA', 0
    db 0x00
%include "shared/data/save_si.asm"          ; 0x5816

%include "shared/data/save_di.asm"          ; 0x5818

%include "shared/data/save_sp.asm"          ; 0x581a

%include "shared/data/save_bp.asm"          ; 0x581c

%include "shared/data/save_ret.asm"         ; 0x581e


__zimage_end:
absolute __zimage_end
__zobss_9408:
    resb 0x000e
__zobss_9416:
    resb 0x0002
__zobss_9418:
    resb 0x0002
__zobss_941a:
    resb 0x0002
__zobss_941c:
    resb 0x0002
__zobss_941e:
    resb 0x0002
__zobss_9420:
    resb 0x0002
__zobss_9422:
    resb 0x0002
__zobss_9424:
    resb 0x0002
__zobss_9426:
    resb 0x0002
__zobss_9428:
    resb 0x0002
__zobss_942a:
    resb 0x0002
__zobss_942c:
    resb 0x0006
__zobss_9432:
    resb 0x0002
__zobss_9434:
    resb 0x0002
__zobss_9436:
    resb 0x0002
__zobss_9438:
    resb 0x0002
__zobss_943a:
    resb 0x0002
__zobss_943c:
    resb 0x0050
__zobss_948c:
    resb 0x0002
__zobss_948e:
    resb 0x0002
__zobss_9490:
    resb 0x0002
__zobss_9492:
    resb 0x0002
__zobss_9494:
    resb 0x00dc
__zobss_9570:
    resb 0x0014
__zobss_9584:
    resb 0x0014
__zobss_9598:
    resb 0x0038
__zobss_95d0:
    resb 0x000c
__zobss_95dc:
    resb 0x0014
__zobss_95f0:
    resb 0x0004
__zobss_95f4:
    resb 0x0004
__zobss_95f8:
    resb 0x00c8
__zobss_96c0:
    resb 0x0044
__zobss_9704:
    resb 0x00a8
__zobss_end:
