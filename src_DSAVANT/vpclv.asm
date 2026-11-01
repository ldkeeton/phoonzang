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
draw_spell_cost_dseg294 equ __zdseg_end + (__zdseg_909b - __zdata_start)
api_idx_0050_SQVG_dseg175 equ __zdseg_end + (__zdseg_909f - __zdata_start)
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
api_idx_0004_QJGR_dseg67 equ __zdseg_end + (__zdseg_91d1 - __zdata_start)
api_idx_0004_QJGR_dseg61 equ __zdseg_end + (__zdseg_91dc - __zdata_start)
api_idx_0004_QJGR_dseg55 equ __zdseg_end + (__zdseg_91e5 - __zdata_start)
api_idx_0004_QJGR_dseg49 equ __zdseg_end + (__zdseg_91ec - __zdata_start)
api_idx_0004_QJGR_dseg111 equ __zdseg_end + (__zdseg_91f7 - __zdata_start)
api_idx_0004_QJGR_dseg105 equ __zdseg_end + (__zdseg_9202 - __zdata_start)
api_idx_0004_QJGR_dseg99 equ __zdseg_end + (__zdseg_920b - __zdata_start)
api_idx_0004_QJGR_dseg93 equ __zdseg_end + (__zdseg_9212 - __zdata_start)
api_idx_0004_QJGR_dseg155 equ __zdseg_end + (__zdseg_921d - __zdata_start)
api_idx_0004_QJGR_dseg149 equ __zdseg_end + (__zdseg_9228 - __zdata_start)
api_idx_0004_QJGR_dseg143 equ __zdseg_end + (__zdseg_9231 - __zdata_start)
api_idx_0004_QJGR_dseg137 equ __zdseg_end + (__zdseg_9238 - __zdata_start)
api_idx_0004_QJGR_dseg199 equ __zdseg_end + (__zdseg_9243 - __zdata_start)
api_idx_0004_QJGR_dseg193 equ __zdseg_end + (__zdseg_924e - __zdata_start)
api_idx_0004_QJGR_dseg187 equ __zdseg_end + (__zdseg_9257 - __zdata_start)
api_idx_0004_QJGR_dseg181 equ __zdseg_end + (__zdseg_925e - __zdata_start)
api_idx_0004_QJGR_dseg243 equ __zdseg_end + (__zdseg_9269 - __zdata_start)
api_idx_0004_QJGR_dseg237 equ __zdseg_end + (__zdseg_9274 - __zdata_start)
api_idx_0004_QJGR_dseg231 equ __zdseg_end + (__zdseg_927d - __zdata_start)
api_idx_0004_QJGR_dseg225 equ __zdseg_end + (__zdseg_9284 - __zdata_start)
api_idx_0004_QJGR_dseg287 equ __zdseg_end + (__zdseg_928f - __zdata_start)
api_idx_0004_QJGR_dseg281 equ __zdseg_end + (__zdseg_929a - __zdata_start)
api_idx_0004_QJGR_dseg275 equ __zdseg_end + (__zdseg_92a3 - __zdata_start)
api_idx_0004_QJGR_dseg269 equ __zdseg_end + (__zdseg_92aa - __zdata_start)
api_idx_0004_QJGR_dseg331 equ __zdseg_end + (__zdseg_92b5 - __zdata_start)
api_idx_0004_QJGR_dseg325 equ __zdseg_end + (__zdseg_92c0 - __zdata_start)
api_idx_0004_QJGR_dseg319 equ __zdseg_end + (__zdseg_92c9 - __zdata_start)
api_idx_0004_QJGR_dseg313 equ __zdseg_end + (__zdseg_92d0 - __zdata_start)
api_idx_0004_QJGR_dseg375 equ __zdseg_end + (__zdseg_92db - __zdata_start)
api_idx_0004_QJGR_dseg369 equ __zdseg_end + (__zdseg_92e6 - __zdata_start)
api_idx_0004_QJGR_dseg363 equ __zdseg_end + (__zdseg_92ef - __zdata_start)
api_idx_0004_QJGR_dseg357 equ __zdseg_end + (__zdseg_92f6 - __zdata_start)
api_idx_0004_QJGR_dseg419 equ __zdseg_end + (__zdseg_9301 - __zdata_start)
api_idx_0004_QJGR_dseg413 equ __zdseg_end + (__zdseg_930c - __zdata_start)
api_idx_0004_QJGR_dseg407 equ __zdseg_end + (__zdseg_9315 - __zdata_start)
api_idx_0004_QJGR_dseg401 equ __zdseg_end + (__zdseg_931c - __zdata_start)
api_idx_0004_QJGR_dseg463 equ __zdseg_end + (__zdseg_9327 - __zdata_start)
api_idx_0004_QJGR_dseg457 equ __zdseg_end + (__zdseg_9332 - __zdata_start)
api_idx_0004_QJGR_dseg451 equ __zdseg_end + (__zdseg_933b - __zdata_start)
api_idx_0004_QJGR_dseg445 equ __zdseg_end + (__zdseg_9342 - __zdata_start)
api_idx_0004_QJGR_dseg507 equ __zdseg_end + (__zdseg_934d - __zdata_start)
api_idx_0004_QJGR_dseg501 equ __zdseg_end + (__zdseg_9358 - __zdata_start)
api_idx_0004_QJGR_dseg495 equ __zdseg_end + (__zdseg_9361 - __zdata_start)
api_idx_0004_QJGR_dseg489 equ __zdseg_end + (__zdseg_9368 - __zdata_start)
api_idx_0004_QJGR_dseg551 equ __zdseg_end + (__zdseg_9373 - __zdata_start)
api_idx_0004_QJGR_dseg545 equ __zdseg_end + (__zdseg_937e - __zdata_start)
api_idx_0004_QJGR_dseg539 equ __zdseg_end + (__zdseg_9387 - __zdata_start)
api_idx_0004_QJGR_dseg533 equ __zdseg_end + (__zdseg_938e - __zdata_start)
api_idx_0004_QJGR_dseg595 equ __zdseg_end + (__zdseg_9399 - __zdata_start)
api_idx_0004_QJGR_dseg589 equ __zdseg_end + (__zdseg_93a4 - __zdata_start)
api_idx_0004_QJGR_dseg583 equ __zdseg_end + (__zdseg_93ad - __zdata_start)
api_idx_0004_QJGR_dseg577 equ __zdseg_end + (__zdseg_93b4 - __zdata_start)
api_idx_0004_QJGR_dseg639 equ __zdseg_end + (__zdseg_93bf - __zdata_start)
api_idx_0004_QJGR_dseg633 equ __zdseg_end + (__zdseg_93ca - __zdata_start)
api_idx_0004_QJGR_dseg627 equ __zdseg_end + (__zdseg_93d3 - __zdata_start)
api_idx_0004_QJGR_dseg621 equ __zdseg_end + (__zdseg_93da - __zdata_start)
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
api_idx_007c_OKMO_bss24 equ __zdseg_end + (__zobss_9416 - __zdata_start)
api_idx_007c_OKMO_bss19 equ __zdseg_end + (__zobss_9418 - __zdata_start)
api_idx_007c_OKMO_bss49 equ __zdseg_end + (__zobss_941a - __zdata_start)
api_idx_007c_OKMO_bss44 equ __zdseg_end + (__zobss_941c - __zdata_start)
roster_screen_b equ __zdseg_end + (__zobss_941e - __zdata_start)
roster_screen_a equ __zdseg_end + (__zobss_9420 - __zdata_start)
api_idx_0080_MHMQ_bss24 equ __zdseg_end + (__zobss_9422 - __zdata_start)
api_idx_0080_MHMQ_bss19 equ __zdseg_end + (__zobss_9424 - __zdata_start)
api_idx_0080_MHMQ_bss49 equ __zdseg_end + (__zobss_9426 - __zdata_start)
api_idx_0080_MHMQ_bss44 equ __zdseg_end + (__zobss_9428 - __zdata_start)
api_idx_0004_RMVO_bss24 equ __zdseg_end + (__zobss_942a - __zdata_start)
api_idx_0004_RMVO_bss19 equ __zdseg_end + (__zobss_942c - __zdata_start)
saved_screen equ __zdseg_end + (__zobss_9432 - __zdata_start)
saved_screen_hi equ __zdseg_end + (__zobss_9434 - __zdata_start)
banner_offset equ __zdseg_end + (__zobss_9436 - __zdata_start)
banner_plain_flag equ __zdseg_end + (__zobss_9438 - __zdata_start)
loc_TTSP_bss184 equ __zdseg_end + (__zobss_943a - __zdata_start)
known_spell_ids equ __zdseg_end + (__zobss_943c - __zdata_start)
party_redraw_interval equ __zdseg_end + (__zobss_948c - __zdata_start)
roster_page equ __zdseg_end + (__zobss_948e - __zdata_start)
roster_alt_mode equ __zdseg_end + (__zobss_9490 - __zdata_start)
roster_drawn equ __zdseg_end + (__zobss_9492 - __zdata_start)
roster_names equ __zdseg_end + (__zobss_9494 - __zdata_start)
roster_row_attr equ __zdseg_end + (__zobss_9570 - __zdata_start)
roster_row_color equ __zdseg_end + (__zobss_9584 - __zdata_start)
api_idx_0004_GRGJ_bss159 equ __zdseg_end + (__zobss_9598 - __zdata_start)
api_idx_0004_QJGR_bss838 equ __zdseg_end + (__zobss_95d0 - __zdata_start)
slot_prompt_text equ __zdseg_end + (__zobss_95dc - __zdata_start)
slot_value equ __zdseg_end + (__zobss_95f0 - __zdata_start)
slot_value2 equ __zdseg_end + (__zobss_95f4 - __zdata_start)
slot_label equ __zdseg_end + (__zobss_95f8 - __zdata_start)
slot_limit equ __zdseg_end + (__zobss_96c0 - __zdata_start)
bss_9704 equ __zdseg_end + (__zobss_9704 - __zdata_start)
_Uend equ __zdseg_end + (__zobss_end - __zdata_start)

%include "vpclv/ovmain.asm"                ; 0x000e

%include "shared/ovr/load_screen_file_immediate.asm" ; 0x0022

%include "shared/ovr/api_idx_0012_PGSL.asm"     ; 0x0086

%include "shared/ovr/draw_party_slot_letters.asm" ; 0x0202

%include "shared/ovr/api_idx_0004_RMVO.asm"     ; 0x0281

%include "shared/ovr/advance_party_slot_frames.asm" ; 0x0331

%include "shared/ovr/clamp_value_to_range.asm"  ; 0x038c

%include "shared/ovr/api_idx_0010_STNH.asm"     ; 0x03cd

%include "shared/ovr/draw_title_banner.asm"     ; 0x04ca

%include "shared/ovr/api_idx_007c_OKMO.asm"     ; 0x0572

%include "shared/ovr/fill_rectangle_border.asm" ; 0x0dc0

%include "shared/ovr/collect_known_spells.asm"  ; 0x0e3b

%include "shared/ovr/draw_marker_glyph.asm"     ; 0x0eac

%include "shared/ovr/draw_power_digit.asm"      ; 0x0eea

%include "shared/ovr/draw_spell_cost.asm"              ; 0x0f76

%include "shared/ovr/draw_realm_spell_points.asm" ; 0x1017

%include "shared/ovr/periodic_party_redraw.asm" ; 0x10b0

%include "shared/ovr/api_idx_0050_SQVG.asm"     ; 0x1141

%include "vpclv/api_idx_00ca_KSLQ.asm"     ; 0x1e31

%include "shared/ovr/loc_TTSP.asm"              ; 0x20e3

%include "vpclv/loc_HJRN.asm"              ; 0x2189

%include "shared/ovr/api_idx_0004_GUSS.asm"     ; 0x21be

%include "shared/ovr/draw_split_two_line_text.asm" ; 0x2447

%include "shared/ovr/api_idx_0080_MHMQ.asm"     ; 0x24f0

%include "shared/ovr/api_idx_0004_MKGU.asm"     ; 0x2717

%include "shared/ovr/api_idx_004c_HTUT.asm"     ; 0x27e3

%include "shared/ovr/loc_NJOH.asm"              ; 0x2a32

%include "shared/ovr/api_idx_0006_VJKJ.asm"     ; 0x2a85

%include "shared/ovr/update_party_stat_adjustments.asm" ; 0x2b1a

%include "vpclv/api_idx_0052_NKUS.asm"     ; 0x2c0c

%include "shared/ovr/api_idx_0004_PMIU.asm"     ; 0x3288

%include "vpclv/api_idx_0020_ORSV.asm"     ; 0x333c

%include "shared/ovr/api_idx_0004_GRGJ.asm"     ; 0x34cd

%include "shared/ovr/api_idx_0004_QJGR.asm"     ; 0x35fc

%include "shared/ovr/draw_known_spell_values.asm" ; 0x3851

%include "shared/ovr/draw_slot_value_row.asm"   ; 0x390b

%include "vpclv/api_idx_0032_VJTR.asm"     ; 0x3a7a

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

%include "shared/data/overlay_saved_registers.asm" ; 0x5816


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
