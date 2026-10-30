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
    dw (__zdata_start - __zcode_start)       ; 0x54a2 ; o_csize: code size in bytes
    dw __zdseg_end                           ; 0x9098 ; o_dorg: data load origin (memory offset)
    dw (__zimage_end - __zdata_start)        ; 0x0370 ; o_dsize: initialized data size
    dw __zobss_end - __zimage_end            ; 0x03a4 ; o_bss: uninitialized data size
    dw aztec_ovbgn - IMAGE_BASE + __zres_end ; 0xa4b9 ; o_entry: overlay entry offset (CS)

__zcode_start:
dseg_9098 equ __zdseg_end + (__zdseg_9098 - __zdata_start)
dseg_909b equ __zdseg_end + (__zdseg_909b - __zdata_start)
dseg_909f equ __zdseg_end + (__zdseg_909f - __zdata_start)
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
dseg_91d1 equ __zdseg_end + (__zdseg_91d1 - __zdata_start)
dseg_91dc equ __zdseg_end + (__zdseg_91dc - __zdata_start)
dseg_91e5 equ __zdseg_end + (__zdseg_91e5 - __zdata_start)
dseg_91ec equ __zdseg_end + (__zdseg_91ec - __zdata_start)
dseg_91f7 equ __zdseg_end + (__zdseg_91f7 - __zdata_start)
dseg_9202 equ __zdseg_end + (__zdseg_9202 - __zdata_start)
dseg_920b equ __zdseg_end + (__zdseg_920b - __zdata_start)
dseg_9212 equ __zdseg_end + (__zdseg_9212 - __zdata_start)
dseg_921d equ __zdseg_end + (__zdseg_921d - __zdata_start)
dseg_9228 equ __zdseg_end + (__zdseg_9228 - __zdata_start)
dseg_9231 equ __zdseg_end + (__zdseg_9231 - __zdata_start)
dseg_9238 equ __zdseg_end + (__zdseg_9238 - __zdata_start)
dseg_9243 equ __zdseg_end + (__zdseg_9243 - __zdata_start)
dseg_924e equ __zdseg_end + (__zdseg_924e - __zdata_start)
dseg_9257 equ __zdseg_end + (__zdseg_9257 - __zdata_start)
dseg_925e equ __zdseg_end + (__zdseg_925e - __zdata_start)
dseg_9269 equ __zdseg_end + (__zdseg_9269 - __zdata_start)
dseg_9274 equ __zdseg_end + (__zdseg_9274 - __zdata_start)
dseg_927d equ __zdseg_end + (__zdseg_927d - __zdata_start)
dseg_9284 equ __zdseg_end + (__zdseg_9284 - __zdata_start)
dseg_928f equ __zdseg_end + (__zdseg_928f - __zdata_start)
dseg_929a equ __zdseg_end + (__zdseg_929a - __zdata_start)
dseg_92a3 equ __zdseg_end + (__zdseg_92a3 - __zdata_start)
dseg_92aa equ __zdseg_end + (__zdseg_92aa - __zdata_start)
dseg_92b5 equ __zdseg_end + (__zdseg_92b5 - __zdata_start)
dseg_92c0 equ __zdseg_end + (__zdseg_92c0 - __zdata_start)
dseg_92c9 equ __zdseg_end + (__zdseg_92c9 - __zdata_start)
dseg_92d0 equ __zdseg_end + (__zdseg_92d0 - __zdata_start)
dseg_92db equ __zdseg_end + (__zdseg_92db - __zdata_start)
dseg_92e6 equ __zdseg_end + (__zdseg_92e6 - __zdata_start)
dseg_92ef equ __zdseg_end + (__zdseg_92ef - __zdata_start)
dseg_92f6 equ __zdseg_end + (__zdseg_92f6 - __zdata_start)
dseg_9301 equ __zdseg_end + (__zdseg_9301 - __zdata_start)
dseg_930c equ __zdseg_end + (__zdseg_930c - __zdata_start)
dseg_9315 equ __zdseg_end + (__zdseg_9315 - __zdata_start)
dseg_931c equ __zdseg_end + (__zdseg_931c - __zdata_start)
dseg_9327 equ __zdseg_end + (__zdseg_9327 - __zdata_start)
dseg_9332 equ __zdseg_end + (__zdseg_9332 - __zdata_start)
dseg_933b equ __zdseg_end + (__zdseg_933b - __zdata_start)
dseg_9342 equ __zdseg_end + (__zdseg_9342 - __zdata_start)
dseg_934d equ __zdseg_end + (__zdseg_934d - __zdata_start)
dseg_9358 equ __zdseg_end + (__zdseg_9358 - __zdata_start)
dseg_9361 equ __zdseg_end + (__zdseg_9361 - __zdata_start)
dseg_9368 equ __zdseg_end + (__zdseg_9368 - __zdata_start)
dseg_9373 equ __zdseg_end + (__zdseg_9373 - __zdata_start)
dseg_937e equ __zdseg_end + (__zdseg_937e - __zdata_start)
dseg_9387 equ __zdseg_end + (__zdseg_9387 - __zdata_start)
dseg_938e equ __zdseg_end + (__zdseg_938e - __zdata_start)
dseg_9399 equ __zdseg_end + (__zdseg_9399 - __zdata_start)
dseg_93a4 equ __zdseg_end + (__zdseg_93a4 - __zdata_start)
dseg_93ad equ __zdseg_end + (__zdseg_93ad - __zdata_start)
dseg_93b4 equ __zdseg_end + (__zdseg_93b4 - __zdata_start)
dseg_93bf equ __zdseg_end + (__zdseg_93bf - __zdata_start)
dseg_93ca equ __zdseg_end + (__zdseg_93ca - __zdata_start)
dseg_93d3 equ __zdseg_end + (__zdseg_93d3 - __zdata_start)
dseg_93da equ __zdseg_end + (__zdseg_93da - __zdata_start)
dseg_93e5 equ __zdseg_end + (__zdseg_93e5 - __zdata_start)
dseg_93e9 equ __zdseg_end + (__zdseg_93e9 - __zdata_start)
dseg_93eb equ __zdseg_end + (__zdseg_93eb - __zdata_start)
dseg_93ed equ __zdseg_end + (__zdseg_93ed - __zdata_start)
dseg_93ee equ __zdseg_end + (__zdseg_93ee - __zdata_start)
dseg_93ef equ __zdseg_end + (__zdseg_93ef - __zdata_start)
dseg_93f0 equ __zdseg_end + (__zdseg_93f0 - __zdata_start)
save_si equ __zdseg_end + (__zsave_si - __zdata_start)
save_di equ __zdseg_end + (__zsave_di - __zdata_start)
save_sp equ __zdseg_end + (__zsave_sp - __zdata_start)
save_bp equ __zdseg_end + (__zsave_bp - __zdata_start)
save_ret equ __zdseg_end + (__zsave_ret - __zdata_start)
_Uorg equ __zdseg_end + (__zobss_9408 - __zdata_start)
window_record equ __zdseg_end + (__zobss_9408 - __zdata_start)
bss_9416 equ __zdseg_end + (__zobss_9416 - __zdata_start)
bss_9418 equ __zdseg_end + (__zobss_9418 - __zdata_start)
bss_941a equ __zdseg_end + (__zobss_941a - __zdata_start)
bss_941c equ __zdseg_end + (__zobss_941c - __zdata_start)
roster_screen_b equ __zdseg_end + (__zobss_941e - __zdata_start)
roster_screen_a equ __zdseg_end + (__zobss_9420 - __zdata_start)
bss_9422 equ __zdseg_end + (__zobss_9422 - __zdata_start)
bss_9424 equ __zdseg_end + (__zobss_9424 - __zdata_start)
bss_9426 equ __zdseg_end + (__zobss_9426 - __zdata_start)
bss_9428 equ __zdseg_end + (__zobss_9428 - __zdata_start)
bss_942a equ __zdseg_end + (__zobss_942a - __zdata_start)
bss_942c equ __zdseg_end + (__zobss_942c - __zdata_start)
saved_screen equ __zdseg_end + (__zobss_9432 - __zdata_start)
bss_9434 equ __zdseg_end + (__zobss_9434 - __zdata_start)
banner_offset equ __zdseg_end + (__zobss_9436 - __zdata_start)
banner_plain_flag equ __zdseg_end + (__zobss_9438 - __zdata_start)
bss_943a equ __zdseg_end + (__zobss_943a - __zdata_start)
known_spell_ids equ __zdseg_end + (__zobss_943c - __zdata_start)
party_redraw_interval equ __zdseg_end + (__zobss_948c - __zdata_start)
roster_page equ __zdseg_end + (__zobss_948e - __zdata_start)
roster_alt_mode equ __zdseg_end + (__zobss_9490 - __zdata_start)
roster_drawn equ __zdseg_end + (__zobss_9492 - __zdata_start)
roster_names equ __zdseg_end + (__zobss_9494 - __zdata_start)
roster_row_attr equ __zdseg_end + (__zobss_9570 - __zdata_start)
roster_row_color equ __zdseg_end + (__zobss_9584 - __zdata_start)
bss_9598 equ __zdseg_end + (__zobss_9598 - __zdata_start)
bss_95d0 equ __zdseg_end + (__zobss_95d0 - __zdata_start)
slot_prompt_text equ __zdseg_end + (__zobss_95dc - __zdata_start)
slot_value equ __zdseg_end + (__zobss_95f0 - __zdata_start)
slot_value2 equ __zdseg_end + (__zobss_95f4 - __zdata_start)
slot_label equ __zdseg_end + (__zobss_95f8 - __zdata_start)
slot_limit equ __zdseg_end + (__zobss_96c0 - __zdata_start)
bss_9704 equ __zdseg_end + (__zobss_9704 - __zdata_start)
_Uend equ __zdseg_end + (__zobss_end - __zdata_start)

%include "vpclv/ovmain.asm"                ; 0x000e

%include "shared/ovr/load_screen_file_immediate.asm" ; 0x0022

api_idx_0012_RLJJ equ api_idx_0012_PGSL
%include "shared/ovr/api_idx_0012_PGSL.asm"     ; 0x0086

%include "shared/ovr/draw_party_slot_letters.asm" ; 0x0202

api_idx_0004_RMVO.bss1 equ bss_942c
api_idx_0004_RMVO.bss2 equ bss_942a
%include "shared/ovr/api_idx_0004_RMVO.asm"     ; 0x0281

%include "shared/ovr/advance_party_slot_frames.asm" ; 0x0331

%include "shared/ovr/clamp_value_to_range.asm"  ; 0x038c

%include "shared/ovr/api_idx_0010_STNH.asm"     ; 0x03cd

draw_title_banner.bss1 equ bss_9434
%include "shared/ovr/draw_title_banner.asm"     ; 0x04ca

api_idx_007c_OKMO.bss1     equ bss_9418
api_idx_007c_OKMO.bss2     equ bss_9416
api_idx_007c_OKMO.bss3     equ bss_941c
api_idx_007c_OKMO.bss4     equ bss_941a
api_idx_007c_OKMO.bss5     equ bss_943a
api_idx_007c_OKMO.api_idx1 equ api_idx_0012_RLJJ
%include "shared/ovr/api_idx_007c_OKMO.asm"     ; 0x0572

loc_MNNG equ fill_rectangle_border
%include "shared/ovr/fill_rectangle_border.asm"              ; 0x0dc0

api_idx_0004_TLJT equ collect_known_spells
%include "shared/ovr/collect_known_spells.asm"     ; 0x0e3b

%include "shared/ovr/draw_marker_glyph.asm"     ; 0x0eac

%include "shared/ovr/draw_power_digit.asm"      ; 0x0eea

loc_GPRG              equ draw_spell_cost
draw_spell_cost.dseg1 equ dseg_909b
%include "shared/ovr/draw_spell_cost.asm"              ; 0x0f76

%include "shared/ovr/draw_realm_spell_points.asm" ; 0x1017

%include "shared/ovr/periodic_party_redraw.asm" ; 0x10b0

api_idx_0050_SQVG          equ api_idx_0050_GSJV
api_idx_0050_GSJV.dseg1    equ dseg_909f
api_idx_0050_GSJV.loc1     equ loc_GPRG
api_idx_0050_GSJV.api_idx1 equ api_idx_0004_TLJT
jumptable_1d9a_case_0      equ api_idx_0050_GSJV.jumptable_case1
jumptable_1d9a_case_1      equ api_idx_0050_GSJV.jumptable_case2
jumptable_1d9a_case_3      equ api_idx_0050_GSJV.jumptable_case3
jumptable_1d9a_case_4      equ api_idx_0050_GSJV.jumptable_case4
jumptable_1d9a             equ api_idx_0050_GSJV.jumptable1
%include "shared/ovr/api_idx_0050_GSJV.asm"     ; 0x1141

%include "vpclv/api_idx_00ca_KSLQ.asm"     ; 0x1e31

loc_TTSP.bss1 equ bss_943a
%include "shared/ovr/loc_TTSP.asm"              ; 0x20e3

%include "vpclv/loc_HJRN.asm"              ; 0x2189

%include "shared/ovr/api_idx_0004_GUSS.asm"     ; 0x21be

%include "shared/ovr/draw_split_two_line_text.asm" ; 0x2447

api_idx_0080_MHMQ.bss1     equ bss_9424
api_idx_0080_MHMQ.bss2     equ bss_9422
api_idx_0080_MHMQ.bss3     equ bss_9428
api_idx_0080_MHMQ.bss4     equ bss_9426
api_idx_0080_MHMQ.api_idx1 equ api_idx_0012_RLJJ
%include "shared/ovr/api_idx_0080_MHMQ.asm"     ; 0x24f0

%include "shared/ovr/api_idx_0004_MKGU.asm"     ; 0x2717

%include "shared/ovr/api_idx_004c_HTUT.asm"     ; 0x27e3

%include "shared/ovr/loc_NJOH.asm"              ; 0x2a32

%include "shared/ovr/api_idx_0006_VJKJ.asm"     ; 0x2a85

%include "shared/ovr/update_party_stat_adjustments.asm" ; 0x2b1a

%include "vpclv/api_idx_0052_NKUS.asm"     ; 0x2c0c

%include "shared/ovr/api_idx_0004_PMIU.asm"     ; 0x3288

%include "vpclv/api_idx_0020_ORSV.asm"     ; 0x333c

api_idx_0004_GRGJ.bss1 equ bss_9598
%include "shared/ovr/api_idx_0004_GRGJ.asm"     ; 0x34cd

jumptable_3797_case_0      equ api_idx_0004_QJGR.jumptable_case1
api_idx_0004_QJGR.dseg1    equ dseg_91ec
api_idx_0004_QJGR.dseg2    equ dseg_91e5
api_idx_0004_QJGR.dseg3    equ dseg_91dc
api_idx_0004_QJGR.dseg4    equ dseg_91d1
api_idx_0004_QJGR.api_idx1 equ api_idx_0004_GRGJ
jumptable_3797_case_1      equ api_idx_0004_QJGR.jumptable_case2
api_idx_0004_QJGR.dseg5    equ dseg_9212
api_idx_0004_QJGR.dseg6    equ dseg_920b
api_idx_0004_QJGR.dseg7    equ dseg_9202
api_idx_0004_QJGR.dseg8    equ dseg_91f7
jumptable_3797_case_2      equ api_idx_0004_QJGR.jumptable_case3
api_idx_0004_QJGR.dseg9    equ dseg_9238
api_idx_0004_QJGR.dseg10   equ dseg_9231
api_idx_0004_QJGR.dseg11   equ dseg_9228
api_idx_0004_QJGR.dseg12   equ dseg_921d
jumptable_3797_case_3      equ api_idx_0004_QJGR.jumptable_case4
api_idx_0004_QJGR.dseg13   equ dseg_925e
api_idx_0004_QJGR.dseg14   equ dseg_9257
api_idx_0004_QJGR.dseg15   equ dseg_924e
api_idx_0004_QJGR.dseg16   equ dseg_9243
jumptable_3797_case_4      equ api_idx_0004_QJGR.jumptable_case5
api_idx_0004_QJGR.dseg17   equ dseg_9284
api_idx_0004_QJGR.dseg18   equ dseg_927d
api_idx_0004_QJGR.dseg19   equ dseg_9274
api_idx_0004_QJGR.dseg20   equ dseg_9269
jumptable_3797_case_5      equ api_idx_0004_QJGR.jumptable_case6
api_idx_0004_QJGR.dseg21   equ dseg_92aa
api_idx_0004_QJGR.dseg22   equ dseg_92a3
api_idx_0004_QJGR.dseg23   equ dseg_929a
api_idx_0004_QJGR.dseg24   equ dseg_928f
jumptable_3797_case_6      equ api_idx_0004_QJGR.jumptable_case7
api_idx_0004_QJGR.dseg25   equ dseg_92d0
api_idx_0004_QJGR.dseg26   equ dseg_92c9
api_idx_0004_QJGR.dseg27   equ dseg_92c0
api_idx_0004_QJGR.dseg28   equ dseg_92b5
jumptable_3797_case_7      equ api_idx_0004_QJGR.jumptable_case8
api_idx_0004_QJGR.dseg29   equ dseg_92f6
api_idx_0004_QJGR.dseg30   equ dseg_92ef
api_idx_0004_QJGR.dseg31   equ dseg_92e6
api_idx_0004_QJGR.dseg32   equ dseg_92db
jumptable_3797_case_8      equ api_idx_0004_QJGR.jumptable_case9
api_idx_0004_QJGR.dseg33   equ dseg_931c
api_idx_0004_QJGR.dseg34   equ dseg_9315
api_idx_0004_QJGR.dseg35   equ dseg_930c
api_idx_0004_QJGR.dseg36   equ dseg_9301
jumptable_3797_case_9      equ api_idx_0004_QJGR.jumptable_case10
api_idx_0004_QJGR.dseg37   equ dseg_9342
api_idx_0004_QJGR.dseg38   equ dseg_933b
api_idx_0004_QJGR.dseg39   equ dseg_9332
api_idx_0004_QJGR.dseg40   equ dseg_9327
jumptable_3797_case_10     equ api_idx_0004_QJGR.jumptable_case11
api_idx_0004_QJGR.dseg41   equ dseg_9368
api_idx_0004_QJGR.dseg42   equ dseg_9361
api_idx_0004_QJGR.dseg43   equ dseg_9358
api_idx_0004_QJGR.dseg44   equ dseg_934d
jumptable_3797_case_11     equ api_idx_0004_QJGR.jumptable_case12
api_idx_0004_QJGR.dseg45   equ dseg_938e
api_idx_0004_QJGR.dseg46   equ dseg_9387
api_idx_0004_QJGR.dseg47   equ dseg_937e
api_idx_0004_QJGR.dseg48   equ dseg_9373
jumptable_3797_case_12     equ api_idx_0004_QJGR.jumptable_case13
api_idx_0004_QJGR.dseg49   equ dseg_93b4
api_idx_0004_QJGR.dseg50   equ dseg_93ad
api_idx_0004_QJGR.dseg51   equ dseg_93a4
api_idx_0004_QJGR.dseg52   equ dseg_9399
jumptable_3797_case_13     equ api_idx_0004_QJGR.jumptable_case14
api_idx_0004_QJGR.dseg53   equ dseg_93da
api_idx_0004_QJGR.dseg54   equ dseg_93d3
api_idx_0004_QJGR.dseg55   equ dseg_93ca
api_idx_0004_QJGR.dseg56   equ dseg_93bf
jumptable_3797             equ api_idx_0004_QJGR.jumptable1
api_idx_0004_QJGR.bss1     equ bss_95d0
api_idx_0004_QJGR.bss2     equ bss_9598
%include "shared/ovr/api_idx_0004_QJGR.asm"     ; 0x35fc

%include "shared/ovr/draw_known_spell_values.asm" ; 0x3851

%include "shared/ovr/api_idx_002e_ILPL.asm"     ; 0x390b

api_idx_0032_VJTR          equ api_idx_0032_HGIM
api_idx_0032_HGIM.api_idx1 equ api_idx_002e_ILPL
%include "shared/ovr/api_idx_0032_HGIM.asm"     ; 0x3a7a

%include "vpclv/api_idx_0088_LVJM.asm"     ; 0x3f9e

%include "shared/ovr/roll_slot_values.asm"      ; 0x4140

%include "vpclv/api_idx_0002_QPTM.asm"     ; 0x4270

%include "vpclv/loc_LSTQ.asm"              ; 0x4310

%include "vpclv/api_idx_00ac_RQRT.asm"     ; 0x45e0

%include "vpclv/api_idx_0004_GJKI.asm"     ; 0x4884

%include "vpclv/api_idx_0018_SRUO.asm"     ; 0x4955

%include "vpclv/api_idx_00b4_QLQS.asm"     ; 0x4cc5

%include "vpclv/api_idx_0006_KHMT.asm"     ; 0x4e03

%include "vpclv/api_idx_00a4_PTJS.asm"     ; 0x4e9e

%include "vpclv/api_idx_0046_NOMK.asm"     ; 0x4fca

%include "shared/ovr/draw_party_glyph_row.asm"  ; 0x50a1

%include "vpclv/api_idx_000c_NVIQ.asm"     ; 0x5161

%include "shared/ovr/aztec_ovbgn.asm"           ; 0x5472

__zdata_start:
%include "vpclv/data/dseg_9098.asm"        ; 0x54b0

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
