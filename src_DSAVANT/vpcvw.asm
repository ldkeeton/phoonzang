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
    dw (__zdata_start - __zcode_start)       ; 0x9836 ; o_csize: code size in bytes
    dw __zdseg_end                           ; 0x9098 ; o_dorg: data load origin (memory offset)
    dw (__zimage_end - __zdata_start)        ; 0x0348 ; o_dsize: initialized data size
    dw __zobss_end - __zimage_end            ; 0x0310 ; o_bss: uninitialized data size
    dw aztec_ovbgn - IMAGE_BASE + __zres_end ; 0xe835 ; o_entry: overlay entry offset (CS)

__zcode_start:

%include "vpcvw/ovmain.asm"                ; 0x000e

%include "shared/game/api_idx_0002_OOKN.asm"     ; 0x0027

%include "shared/game/api_idx_000e_TIOP.asm"     ; 0x008b

bss_93e0 equ __zdseg_end + (__zobss_93e0 - __zdata_start)
%include "vpcvw/api_idx_0012_PJTU.asm"     ; 0x014b

%include "shared/game/api_idx_0004_PMIU.asm"     ; 0x02c7

%include "vpcvw/api_idx_000c_JRTV.asm"     ; 0x037b

bss_93f6 equ __zdseg_end + (__zobss_93f6 - __zdata_start)
bss_93f8 equ __zdseg_end + (__zobss_93f8 - __zdata_start)
%include "vpcvw/api_idx_0012_GQSK.asm"     ; 0x0521

%include "vpcvw/api_idx_0012_SHRT.asm"     ; 0x0781

bss_940e equ __zdseg_end + (__zobss_940e - __zdata_start)
bss_9410 equ __zdseg_end + (__zobss_9410 - __zdata_start)
bss_9412 equ __zdseg_end + (__zobss_9412 - __zdata_start)
bss_9414 equ __zdseg_end + (__zobss_9414 - __zdata_start)
bss_942a equ __zdseg_end + (__zobss_942a - __zdata_start)
bss_942c equ __zdseg_end + (__zobss_942c - __zdata_start)
%include "vpcvw/api_idx_0004_KVIP.asm"     ; 0x09a1

; bss_940e equ __zdseg_end + (__zobss_940e - __zdata_start)
; bss_9410 equ __zdseg_end + (__zobss_9410 - __zdata_start)
; bss_9412 equ __zdseg_end + (__zobss_9412 - __zdata_start)
; bss_9414 equ __zdseg_end + (__zobss_9414 - __zdata_start)
; bss_942a equ __zdseg_end + (__zobss_942a - __zdata_start)
; bss_942c equ __zdseg_end + (__zobss_942c - __zdata_start)
%include "vpcvw/api_idx_0012_MVLS.asm"     ; 0x0a96

%include "shared/game/draw_party_slot_letters.asm" ; 0x0cd6

bss_9402 equ __zdseg_end + (__zobss_9402 - __zdata_start)
bss_9404 equ __zdseg_end + (__zobss_9404 - __zdata_start)
api_idx_0004_RMVO.bss1 equ bss_9404
api_idx_0004_RMVO.bss2 equ bss_9402
%include "shared/game/api_idx_0004_RMVO.asm"     ; 0x0d55

%include "shared/game/api_idx_0002_TIUI.asm"     ; 0x0e05

%include "shared/game/api_idx_0002_UIHS.asm"     ; 0x0e60

%include "shared/game/api_idx_0010_STNH.asm"     ; 0x0ea1

bss_940a equ __zdseg_end + (__zobss_940a - __zdata_start)
bss_940c equ __zdseg_end + (__zobss_940c - __zdata_start)
bss_942e equ __zdseg_end + (__zobss_942e - __zdata_start)
bss_9430 equ __zdseg_end + (__zobss_9430 - __zdata_start)
api_idx_000a_TITQ.bss1 equ bss_940c
api_idx_000a_TITQ.bss2 equ bss_940a
api_idx_000a_TITQ.bss3 equ bss_942e
api_idx_000a_TITQ.bss4 equ bss_9430
%include "shared/game/api_idx_000a_TITQ.asm"     ; 0x0f9e

dseg_9098 equ __zdseg_end + (__zdseg_9098 - __zdata_start)
bss_93ee  equ __zdseg_end + (__zobss_93ee - __zdata_start)
bss_93f0  equ __zdseg_end + (__zobss_93f0 - __zdata_start)
bss_93f2  equ __zdseg_end + (__zobss_93f2 - __zdata_start)
bss_93f4  equ __zdseg_end + (__zobss_93f4 - __zdata_start)
; bss_942e  equ __zdseg_end + (__zobss_942e - __zdata_start)
; bss_9430  equ __zdseg_end + (__zobss_9430 - __zdata_start)
bss_9432  equ __zdseg_end + (__zobss_9432 - __zdata_start)
api_idx_007c_OKMO          equ api_idx_007c_MOJH
api_idx_007c_MOJH.bss1     equ bss_93f0
api_idx_007c_MOJH.bss2     equ bss_93ee
api_idx_007c_MOJH.bss3     equ bss_93f4
api_idx_007c_MOJH.bss4     equ bss_93f2
api_idx_007c_MOJH.bss5     equ bss_942e
api_idx_007c_MOJH.bss6     equ bss_9430
api_idx_007c_MOJH.bss7     equ bss_9432
api_idx_007c_MOJH.api_idx1 equ api_idx_0012_PJTU
%include "shared/game/api_idx_007c_MOJH.asm"     ; 0x1046

; bss_93ee equ __zdseg_end + (__zobss_93ee - __zdata_start)
; bss_93f0 equ __zdseg_end + (__zobss_93f0 - __zdata_start)
%include "vpcvw/api_idx_009e_KPST.asm"     ; 0x1894

api_idx_0008_SKNL equ api_idx_0008_JJHR
%include "shared/game/api_idx_0008_JJHR.asm"     ; 0x1b17

dseg_909b equ __zdseg_end + (__zdseg_909b - __zdata_start)
dseg_90a1 equ __zdseg_end + (__zdseg_90a1 - __zdata_start)
loc_UGOG       equ loc_TRPK
loc_TRPK.dseg1 equ dseg_909b
loc_TRPK.dseg2 equ dseg_90a1
%include "shared/game/loc_TRPK.asm"              ; 0x1ca0

%include "vpcvw/loc_IIRG.asm"              ; 0x2190

%include "shared/game/loc_QQUT.asm"              ; 0x21ad

bss_9434 equ __zdseg_end + (__zobss_9434 - __zdata_start)
%include "vpcvw/api_idx_0008_NOPG.asm"     ; 0x21fd

%include "vpcvw/api_idx_0004_NONK.asm"     ; 0x297e

%include "shared/game/draw_marker_glyph.asm"     ; 0x29ef

%include "shared/game/draw_power_digit.asm"      ; 0x2a2d

dseg_90a7 equ __zdseg_end + (__zdseg_90a7 - __zdata_start)
loc_GPGU              equ draw_spell_cost
draw_spell_cost.dseg1 equ dseg_90a7
%include "shared/game/draw_spell_cost.asm"              ; 0x2ab9

%include "shared/game/draw_realm_spell_points.asm" ; 0x2b5a

bss_9562 equ __zdseg_end + (__zobss_9562 - __zdata_start)
periodic_party_redraw.bss1     equ bss_9562
periodic_party_redraw.api_idx1 equ draw_marker_glyph
periodic_party_redraw.api_idx2 equ draw_realm_spell_points
%include "shared/game/periodic_party_redraw.asm" ; 0x2bf3

dseg_90ab equ __zdseg_end + (__zdseg_90ab - __zdata_start)
; bss_9562  equ __zdseg_end + (__zobss_9562 - __zdata_start)
%include "vpcvw/api_idx_0050_QTGU.asm"     ; 0x2c84

bss_9564 equ __zdseg_end + (__zobss_9564 - __zdata_start)
%include "vpcvw/api_idx_0004_UUMM.asm"     ; 0x3974

; bss_93f6 equ __zdseg_end + (__zobss_93f6 - __zdata_start)
; bss_93f8 equ __zdseg_end + (__zobss_93f8 - __zdata_start)
bss_9566 equ __zdseg_end + (__zobss_9566 - __zdata_start)
%include "vpcvw/loc_NRTK.asm"              ; 0x3a6a

; bss_9566 equ __zdseg_end + (__zobss_9566 - __zdata_start)
bss_9568 equ __zdseg_end + (__zobss_9568 - __zdata_start)
%include "vpcvw/api_idx_0004_UQRV.asm"     ; 0x3aac

dseg_90b1 equ __zdseg_end + (__zdseg_90b1 - __zdata_start)
bss_956a  equ __zdseg_end + (__zobss_956a - __zdata_start)
%include "vpcvw/api_idx_0084_ILTP.asm"     ; 0x3b66

api_idx_0004_VRNJ          equ api_idx_0004_JQTM
api_idx_0004_JQTM.api_idx1 equ api_idx_0084_ILTP
%include "shared/game/api_idx_0004_JQTM.asm"     ; 0x3c18

; bss_93f6 equ __zdseg_end + (__zobss_93f6 - __zdata_start)
; bss_93f8 equ __zdseg_end + (__zobss_93f8 - __zdata_start)
; bss_9566 equ __zdseg_end + (__zobss_9566 - __zdata_start)
; bss_9568 equ __zdseg_end + (__zobss_9568 - __zdata_start)
; bss_956a equ __zdseg_end + (__zobss_956a - __zdata_start)
%include "vpcvw/api_idx_0056_QRVG.asm"     ; 0x3c7b

%include "vpcvw/loc_NKUR.asm"              ; 0x3cde

; bss_9434 equ __zdseg_end + (__zobss_9434 - __zdata_start)
; bss_9564 equ __zdseg_end + (__zobss_9564 - __zdata_start)
%include "vpcvw/api_idx_009e_ITUJ.asm"     ; 0x3cfe

; bss_9432 equ __zdseg_end + (__zobss_9432 - __zdata_start)
; bss_9562 equ __zdseg_end + (__zobss_9562 - __zdata_start)
loc_TTSP.bss1 equ bss_9562
loc_TTSP.bss2 equ bss_9432
%include "shared/game/loc_TTSP.asm"              ; 0x4011

%include "vpcvw/loc_JTQP.asm"              ; 0x40b7

%include "vpcvw/api_idx_0084_LRRN.asm"     ; 0x40ef

%include "vpcvw/api_idx_0048_RGQH.asm"     ; 0x4253

%include "vpcvw/api_idx_004e_LTSQ.asm"     ; 0x42e3

%include "vpcvw/api_idx_0002_MMTM.asm"     ; 0x435b

%include "vpcvw/api_idx_0002_IUPU.asm"     ; 0x4421

%include "vpcvw/api_idx_000e_OJVI.asm"     ; 0x4505

%include "vpcvw/api_idx_0002_USJS.asm"     ; 0x4573

%include "vpcvw/api_idx_0056_KPMS.asm"     ; 0x468b

%include "vpcvw/loc_IHRL.asm"              ; 0x474b

%include "shared/game/api_idx_0004_GUSS.asm"     ; 0x4793

%include "vpcvw/api_idx_0048_RUIH.asm"     ; 0x4a1c

bss_95ea equ __zdseg_end + (__zobss_95ea - __zdata_start)
%include "vpcvw/api_idx_0072_IPMP.asm"     ; 0x4a3f

%include "vpcvw/api_idx_0002_TJIU.asm"     ; 0x5006

%include "vpcvw/api_idx_0010_GVMH.asm"     ; 0x5050

%include "shared/game/api_idx_0008_RQRL.asm"     ; 0x539e

%include "shared/game/api_idx_0004_UJRL.asm"     ; 0x542a

; bss_9434 equ __zdseg_end + (__zobss_9434 - __zdata_start)
; bss_95ea equ __zdseg_end + (__zobss_95ea - __zdata_start)
bss_9614 equ __zdseg_end + (__zobss_9614 - __zdata_start)
bss_967a equ __zdseg_end + (__zobss_967a - __zdata_start)
%include "vpcvw/api_idx_00c2_OUOT.asm"     ; 0x54fb

dseg_90b3 equ __zdseg_end + (__zdseg_90b3 - __zdata_start)
; bss_93ee  equ __zdseg_end + (__zobss_93ee - __zdata_start)
; bss_93f0  equ __zdseg_end + (__zobss_93f0 - __zdata_start)
; bss_93f2  equ __zdseg_end + (__zobss_93f2 - __zdata_start)
; bss_93f4  equ __zdseg_end + (__zobss_93f4 - __zdata_start)
; bss_93f6  equ __zdseg_end + (__zobss_93f6 - __zdata_start)
; bss_93f8  equ __zdseg_end + (__zobss_93f8 - __zdata_start)
bss_93fa  equ __zdseg_end + (__zobss_93fa - __zdata_start)
bss_93fc  equ __zdseg_end + (__zobss_93fc - __zdata_start)
bss_93fe  equ __zdseg_end + (__zobss_93fe - __zdata_start)
bss_9400  equ __zdseg_end + (__zobss_9400 - __zdata_start)
; bss_9402  equ __zdseg_end + (__zobss_9402 - __zdata_start)
; bss_9404  equ __zdseg_end + (__zobss_9404 - __zdata_start)
; bss_940a  equ __zdseg_end + (__zobss_940a - __zdata_start)
; bss_940c  equ __zdseg_end + (__zobss_940c - __zdata_start)
; bss_940e  equ __zdseg_end + (__zobss_940e - __zdata_start)
; bss_942e  equ __zdseg_end + (__zobss_942e - __zdata_start)
; bss_9430  equ __zdseg_end + (__zobss_9430 - __zdata_start)
; bss_9432  equ __zdseg_end + (__zobss_9432 - __zdata_start)
; bss_9434  equ __zdseg_end + (__zobss_9434 - __zdata_start)
; bss_9562  equ __zdseg_end + (__zobss_9562 - __zdata_start)
; bss_9614  equ __zdseg_end + (__zobss_9614 - __zdata_start)
; bss_967a  equ __zdseg_end + (__zobss_967a - __zdata_start)
%include "vpcvw/api_idx_0014_VORK.asm"     ; 0x616c

%include "shared/game/api_idx_002a_STSK.asm"     ; 0x6977

; bss_93fa equ __zdseg_end + (__zobss_93fa - __zdata_start)
; bss_93fc equ __zdseg_end + (__zobss_93fc - __zdata_start)
; bss_93fe equ __zdseg_end + (__zobss_93fe - __zdata_start)
; bss_9400 equ __zdseg_end + (__zobss_9400 - __zdata_start)
api_idx_0080_MHMQ.bss1     equ bss_93fc
api_idx_0080_MHMQ.bss2     equ bss_93fa
api_idx_0080_MHMQ.bss3     equ bss_9400
api_idx_0080_MHMQ.bss4     equ bss_93fe
api_idx_0080_MHMQ.api_idx1 equ api_idx_0012_PJTU
%include "shared/game/api_idx_0080_MHMQ.asm"     ; 0x6a20

%include "shared/game/api_idx_0004_MKGU.asm"     ; 0x6c47

; bss_93f6 equ __zdseg_end + (__zobss_93f6 - __zdata_start)
; bss_93f8 equ __zdseg_end + (__zobss_93f8 - __zdata_start)
; bss_9434 equ __zdseg_end + (__zobss_9434 - __zdata_start)
; bss_9614 equ __zdseg_end + (__zobss_9614 - __zdata_start)
; bss_967a equ __zdseg_end + (__zobss_967a - __zdata_start)
%include "vpcvw/api_idx_004c_LTUL.asm"     ; 0x6d13

%include "vpcvw/api_idx_009a_KOSH.asm"     ; 0x6f62

%include "vpcvw/api_idx_001a_HRLU.asm"     ; 0x706c

dseg_90c0 equ __zdseg_end + (__zdseg_90c0 - __zdata_start)
dseg_90c2 equ __zdseg_end + (__zdseg_90c2 - __zdata_start)
dseg_90c4 equ __zdseg_end + (__zdseg_90c4 - __zdata_start)
dseg_90c6 equ __zdseg_end + (__zdseg_90c6 - __zdata_start)
dseg_90c8 equ __zdseg_end + (__zdseg_90c8 - __zdata_start)
dseg_90ca equ __zdseg_end + (__zdseg_90ca - __zdata_start)
dseg_90cc equ __zdseg_end + (__zdseg_90cc - __zdata_start)
; bss_93f6  equ __zdseg_end + (__zobss_93f6 - __zdata_start)
; bss_93f8  equ __zdseg_end + (__zobss_93f8 - __zdata_start)
%include "vpcvw/loc_IUTP.asm"              ; 0x70ca

%include "vpcvw/api_idx_0004_IKOQ.asm"     ; 0x82da

dseg_90ce equ __zdseg_end + (__zdseg_90ce - __zdata_start)
dseg_90d9 equ __zdseg_end + (__zdseg_90d9 - __zdata_start)
dseg_90e2 equ __zdseg_end + (__zdseg_90e2 - __zdata_start)
dseg_90e9 equ __zdseg_end + (__zdseg_90e9 - __zdata_start)
dseg_90f4 equ __zdseg_end + (__zdseg_90f4 - __zdata_start)
dseg_90ff equ __zdseg_end + (__zdseg_90ff - __zdata_start)
dseg_9108 equ __zdseg_end + (__zdseg_9108 - __zdata_start)
dseg_910f equ __zdseg_end + (__zdseg_910f - __zdata_start)
dseg_911a equ __zdseg_end + (__zdseg_911a - __zdata_start)
dseg_9125 equ __zdseg_end + (__zdseg_9125 - __zdata_start)
dseg_912e equ __zdseg_end + (__zdseg_912e - __zdata_start)
dseg_9135 equ __zdseg_end + (__zdseg_9135 - __zdata_start)
dseg_9140 equ __zdseg_end + (__zdseg_9140 - __zdata_start)
dseg_914b equ __zdseg_end + (__zdseg_914b - __zdata_start)
dseg_9154 equ __zdseg_end + (__zdseg_9154 - __zdata_start)
dseg_915b equ __zdseg_end + (__zdseg_915b - __zdata_start)
dseg_9166 equ __zdseg_end + (__zdseg_9166 - __zdata_start)
dseg_9171 equ __zdseg_end + (__zdseg_9171 - __zdata_start)
dseg_917a equ __zdseg_end + (__zdseg_917a - __zdata_start)
dseg_9181 equ __zdseg_end + (__zdseg_9181 - __zdata_start)
dseg_918c equ __zdseg_end + (__zdseg_918c - __zdata_start)
dseg_9197 equ __zdseg_end + (__zdseg_9197 - __zdata_start)
dseg_91a0 equ __zdseg_end + (__zdseg_91a0 - __zdata_start)
dseg_91a7 equ __zdseg_end + (__zdseg_91a7 - __zdata_start)
dseg_91b2 equ __zdseg_end + (__zdseg_91b2 - __zdata_start)
dseg_91bd equ __zdseg_end + (__zdseg_91bd - __zdata_start)
dseg_91c6 equ __zdseg_end + (__zdseg_91c6 - __zdata_start)
dseg_91cd equ __zdseg_end + (__zdseg_91cd - __zdata_start)
dseg_91d8 equ __zdseg_end + (__zdseg_91d8 - __zdata_start)
dseg_91e3 equ __zdseg_end + (__zdseg_91e3 - __zdata_start)
dseg_91ec equ __zdseg_end + (__zdseg_91ec - __zdata_start)
dseg_91f3 equ __zdseg_end + (__zdseg_91f3 - __zdata_start)
dseg_91fe equ __zdseg_end + (__zdseg_91fe - __zdata_start)
dseg_9209 equ __zdseg_end + (__zdseg_9209 - __zdata_start)
dseg_9212 equ __zdseg_end + (__zdseg_9212 - __zdata_start)
dseg_9219 equ __zdseg_end + (__zdseg_9219 - __zdata_start)
dseg_9224 equ __zdseg_end + (__zdseg_9224 - __zdata_start)
dseg_922f equ __zdseg_end + (__zdseg_922f - __zdata_start)
dseg_9238 equ __zdseg_end + (__zdseg_9238 - __zdata_start)
dseg_923f equ __zdseg_end + (__zdseg_923f - __zdata_start)
dseg_924a equ __zdseg_end + (__zdseg_924a - __zdata_start)
dseg_9255 equ __zdseg_end + (__zdseg_9255 - __zdata_start)
dseg_925e equ __zdseg_end + (__zdseg_925e - __zdata_start)
dseg_9265 equ __zdseg_end + (__zdseg_9265 - __zdata_start)
dseg_9270 equ __zdseg_end + (__zdseg_9270 - __zdata_start)
dseg_927b equ __zdseg_end + (__zdseg_927b - __zdata_start)
dseg_9284 equ __zdseg_end + (__zdseg_9284 - __zdata_start)
dseg_928b equ __zdseg_end + (__zdseg_928b - __zdata_start)
dseg_9296 equ __zdseg_end + (__zdseg_9296 - __zdata_start)
dseg_92a1 equ __zdseg_end + (__zdseg_92a1 - __zdata_start)
dseg_92aa equ __zdseg_end + (__zdseg_92aa - __zdata_start)
dseg_92b1 equ __zdseg_end + (__zdseg_92b1 - __zdata_start)
dseg_92bc equ __zdseg_end + (__zdseg_92bc - __zdata_start)
dseg_92c7 equ __zdseg_end + (__zdseg_92c7 - __zdata_start)
dseg_92d0 equ __zdseg_end + (__zdseg_92d0 - __zdata_start)
dseg_92d7 equ __zdseg_end + (__zdseg_92d7 - __zdata_start)
bss_96d0  equ __zdseg_end + (__zobss_96d0 - __zdata_start)
bss_96dc  equ __zdseg_end + (__zobss_96dc - __zdata_start)
%include "vpcvw/api_idx_0004_PONI.asm"     ; 0x8421

; bss_93f6 equ __zdseg_end + (__zobss_93f6 - __zdata_start)
; bss_93f8 equ __zdseg_end + (__zobss_93f8 - __zdata_start)
api_idx_0002_OGRO.bss1 equ bss_93f8
api_idx_0002_OGRO.bss2 equ bss_93f6
%include "shared/game/api_idx_0002_OGRO.asm"     ; 0x8676

%include "shared/game/api_idx_0058_GKGM.asm"     ; 0x8730

%include "shared/game/api_idx_0008_LLVT.asm"     ; 0x88b6

dseg_92e2 equ __zdseg_end + (__zdseg_92e2 - __zdata_start)
api_idx_0026_QIGS       equ api_idx_0026_NRVO
api_idx_0026_NRVO.dseg1 equ dseg_92e2
%include "shared/game/api_idx_0026_NRVO.asm"     ; 0x8a6e

%include "vpcvw/api_idx_0002_VLGM.asm"     ; 0x8f64

%include "vpcvw/api_idx_0002_LTGI.asm"     ; 0x8fb8

dseg_92e8 equ __zdseg_end + (__zdseg_92e8 - __zdata_start)
dseg_92f1 equ __zdseg_end + (__zdseg_92f1 - __zdata_start)
dseg_92fa equ __zdseg_end + (__zdseg_92fa - __zdata_start)
dseg_9303 equ __zdseg_end + (__zdseg_9303 - __zdata_start)
dseg_930c equ __zdseg_end + (__zdseg_930c - __zdata_start)
dseg_9315 equ __zdseg_end + (__zdseg_9315 - __zdata_start)
dseg_931e equ __zdseg_end + (__zdseg_931e - __zdata_start)
dseg_9327 equ __zdseg_end + (__zdseg_9327 - __zdata_start)
dseg_9330 equ __zdseg_end + (__zdseg_9330 - __zdata_start)
dseg_9339 equ __zdseg_end + (__zdseg_9339 - __zdata_start)
dseg_9342 equ __zdseg_end + (__zdseg_9342 - __zdata_start)
dseg_934b equ __zdseg_end + (__zdseg_934b - __zdata_start)
dseg_9354 equ __zdseg_end + (__zdseg_9354 - __zdata_start)
dseg_935d equ __zdseg_end + (__zdseg_935d - __zdata_start)
%include "vpcvw/loc_PGKG.asm"              ; 0x902e

api_idx_0002_RQOS      equ api_idx_0002_MPHM
api_idx_0002_MPHM.loc1 equ loc_PGKG
%include "shared/game/api_idx_0002_MPHM.asm"     ; 0x91b2

dseg_9366 equ __zdseg_end + (__zdseg_9366 - __zdata_start)
dseg_936f equ __zdseg_end + (__zdseg_936f - __zdata_start)
dseg_9378 equ __zdseg_end + (__zdseg_9378 - __zdata_start)
dseg_9381 equ __zdseg_end + (__zdseg_9381 - __zdata_start)
dseg_938a equ __zdseg_end + (__zdseg_938a - __zdata_start)
dseg_9393 equ __zdseg_end + (__zdseg_9393 - __zdata_start)
dseg_939c equ __zdseg_end + (__zdseg_939c - __zdata_start)
dseg_93a5 equ __zdseg_end + (__zdseg_93a5 - __zdata_start)
dseg_93ae equ __zdseg_end + (__zdseg_93ae - __zdata_start)
dseg_93b7 equ __zdseg_end + (__zdseg_93b7 - __zdata_start)
dseg_93c0 equ __zdseg_end + (__zdseg_93c0 - __zdata_start)
jumptable_928f_case_0  equ loc_SRNN.jumptable_case1
loc_SRNN.dseg1         equ dseg_9366
loc_SRNN.api_idx1      equ api_idx_0002_VLGM
jumptable_928f_case_1  equ loc_SRNN.jumptable_case2
loc_SRNN.dseg2         equ dseg_936f
jumptable_928f_case_2  equ loc_SRNN.jumptable_case3
loc_SRNN.dseg3         equ dseg_9378
jumptable_928f_case_3  equ loc_SRNN.jumptable_case4
loc_SRNN.dseg4         equ dseg_9381
jumptable_928f_case_4  equ loc_SRNN.jumptable_case5
loc_SRNN.dseg5         equ dseg_938a
jumptable_928f_case_5  equ loc_SRNN.jumptable_case6
loc_SRNN.dseg6         equ dseg_9393
jumptable_928f_case_6  equ loc_SRNN.jumptable_case7
loc_SRNN.dseg7         equ dseg_939c
jumptable_928f_case_7  equ loc_SRNN.jumptable_case8
loc_SRNN.dseg8         equ dseg_93a5
jumptable_928f_case_8  equ loc_SRNN.jumptable_case9
loc_SRNN.dseg9         equ dseg_93ae
jumptable_928f_case_9  equ loc_SRNN.jumptable_case10
loc_SRNN.dseg10        equ dseg_93b7
jumptable_928f_case_10 equ loc_SRNN.jumptable_case11
loc_SRNN.dseg11        equ dseg_93c0
jumptable_928f         equ loc_SRNN.jumptable1
%include "shared/game/loc_SRNN.asm"              ; 0x91d9

%include "vpcvw/api_idx_0030_TGOH.asm"     ; 0x92b3

dseg_93c9 equ __zdseg_end + (__zdseg_93c9 - __zdata_start)
api_idx_0016_TVKP       equ api_idx_0016_JNJG
api_idx_0016_JNJG.dseg1 equ dseg_93c9
%include "shared/game/api_idx_0016_JNJG.asm"     ; 0x9434

; bss_93ee equ __zdseg_end + (__zobss_93ee - __zdata_start)
; bss_93f0 equ __zdseg_end + (__zobss_93f0 - __zdata_start)
%include "vpcvw/api_idx_0022_PNPP.asm"     ; 0x9491

%include "vpcvw/api_idx_000e_ORVT.asm"     ; 0x96d5

%include "vpcvw/api_idx_0018_VTUP.asm"     ; 0x9740

save_si  equ __zdseg_end + (__zsave_si - __zdata_start)
save_di  equ __zdseg_end + (__zsave_di - __zdata_start)
save_sp  equ __zdseg_end + (__zsave_sp - __zdata_start)
save_bp  equ __zdseg_end + (__zsave_bp - __zdata_start)
save_ret equ __zdseg_end + (__zsave_ret - __zdata_start)
_Uorg    equ __zdseg_end + (__zobss_93e0 - __zdata_start)
_Uend    equ __zdseg_end + (__zobss_end - __zdata_start)
%include "shared/aztec/aztec_ovbgn.asm"           ; 0x97ee

%include "shared/aztec/aztec_cswit.asm"           ; 0x982c

__zdseg_9098:
__zdata_start:
    db 0x25, 0x20, 0x00
__zdseg_909b:
    db 'V.$$$', 0
__zdseg_90a1:
    db 'V.$$$', 0
__zdseg_90a7:
    db 0x2a, 0x2a, 0x2a, 0x00
__zdseg_90ab:
    db 'V.$$$', 0
__zdseg_90b1:
    db 0x20, 0x00
__zdseg_90b3:
    db 'PCVWSCRN.VGA', 0
__zdseg_90c0:
    db 0x28, 0x00
__zdseg_90c2:
    db 0x2b, 0x00
__zdseg_90c4:
    db 0x29, 0x00
__zdseg_90c6:
    db 0x2b, 0x00
__zdseg_90c8:
    db 0x2f, 0x00
__zdseg_90ca:
    db 0x20, 0x00
__zdseg_90cc:
    db 0x25, 0x00
__zdseg_90ce:
    db '1111111110', 0
__zdseg_90d9:
    db '11100000', 0
__zdseg_90e2:
    db '000000', 0
__zdseg_90e9:
    db '1111000000', 0
__zdseg_90f4:
    db '1000111100', 0
__zdseg_90ff:
    db '11101000', 0
__zdseg_9108:
    db '000000', 0
__zdseg_910f:
    db '1111000010', 0
__zdseg_911a:
    db '0001101010', 0
__zdseg_9125:
    db '11101000', 0
__zdseg_912e:
    db '000000', 0
__zdseg_9135:
    db '1111101000', 0
__zdseg_9140:
    db '1111111110', 0
__zdseg_914b:
    db '11101111', 0
__zdseg_9154:
    db '000000', 0
__zdseg_915b:
    db '1111000000', 0
__zdseg_9166:
    db '1111111110', 0
__zdseg_9171:
    db '11100111', 0
__zdseg_917a:
    db '000000', 0
__zdseg_9181:
    db '1111010000', 0
__zdseg_918c:
    db '1001110000', 0
__zdseg_9197:
    db '11100000', 0
__zdseg_91a0:
    db '000000', 0
__zdseg_91a7:
    db '1111010000', 0
__zdseg_91b2:
    db '1111111110', 0
__zdseg_91bd:
    db '11111111', 0
__zdseg_91c6:
    db '000000', 0
__zdseg_91cd:
    db '1111000010', 0
__zdseg_91d8:
    db '1001111000', 0
__zdseg_91e3:
    db '11101000', 0
__zdseg_91ec:
    db '000000', 0
__zdseg_91f3:
    db '1111000100', 0
__zdseg_91fe:
    db '1111111110', 0
__zdseg_9209:
    db '11101000', 0
__zdseg_9212:
    db '000000', 0
__zdseg_9219:
    db '1111001000', 0
__zdseg_9224:
    db '0001101010', 0
__zdseg_922f:
    db '11101000', 0
__zdseg_9238:
    db '000000', 0
__zdseg_923f:
    db '1111101010', 0
__zdseg_924a:
    db '1111111110', 0
__zdseg_9255:
    db '11101000', 0
__zdseg_925e:
    db '000000', 0
__zdseg_9265:
    db '1111101000', 0
__zdseg_9270:
    db '1111111110', 0
__zdseg_927b:
    db '11101000', 0
__zdseg_9284:
    db '000000', 0
__zdseg_928b:
    db '1111000011', 0
__zdseg_9296:
    db '1001111101', 0
__zdseg_92a1:
    db '11101001', 0
__zdseg_92aa:
    db '000000', 0
__zdseg_92b1:
    db '1111000101', 0
__zdseg_92bc:
    db '1111111111', 0
__zdseg_92c7:
    db '11100111', 0
__zdseg_92d0:
    db '000000', 0
__zdseg_92d7:
    db '1111010001', 0
__zdseg_92e2:
    db 'V.$$$', 0
__zdseg_92e8:
    db 'MAAAAAAA', 0
__zdseg_92f1:
    db 'AMAAAAAA', 0
__zdseg_92fa:
    db 'AAMAAAIA', 0
__zdseg_9303:
    db 'AAAAMIAA', 0
__zdseg_930c:
    db 'KIILKIIA', 0
__zdseg_9315:
    db 'ANAANAAA', 0
__zdseg_931e:
    db 'AKAAMIMA', 0
__zdseg_9327:
    db 'KOAOAAKA', 0
__zdseg_9330:
    db 'KALLKLIA', 0
__zdseg_9339:
    db 'APPAAAIA', 0
__zdseg_9342:
    db 'MJMMJJOA', 0
__zdseg_934b:
    db 'MLAJMOIA', 0
__zdseg_9354:
    db 'NINAKNIA', 0
__zdseg_935d:
    db 'MKKMMMAA', 0
__zdseg_9366:
    db 'JIIJJIIA', 0
__zdseg_936f:
    db 'HKKHJJIA', 0
__zdseg_9378:
    db 'LGKMHHHA', 0
__zdseg_9381:
    db 'KHNKIGGA', 0
__zdseg_938a:
    db 'IHGJKHNA', 0
__zdseg_9393:
    db 'FLGGKOMA', 0
__zdseg_939c:
    db 'MFFOIKDA', 0
__zdseg_93a5:
    db 'KHGMKIGA', 0
__zdseg_93ae:
    db 'HKHHKMKA', 0
__zdseg_93b7:
    db 'IGMKIIKA', 0
__zdseg_93c0:
    db 'KKGKHHJA', 0
__zdseg_93c9:
    db 'PORTDATA.VGA', 0
%include "shared/data/save_si.asm"          ; 0x9b82

%include "shared/data/save_di.asm"          ; 0x9b84

%include "shared/data/save_sp.asm"          ; 0x9b86

%include "shared/data/save_bp.asm"          ; 0x9b88

%include "shared/data/save_ret.asm"         ; 0x9b8a


__zimage_end:
absolute __zimage_end
__zobss_93e0:
    resb 0x000e
__zobss_93ee:
    resb 0x0002
__zobss_93f0:
    resb 0x0002
__zobss_93f2:
    resb 0x0002
__zobss_93f4:
    resb 0x0002
__zobss_93f6:
    resb 0x0002
__zobss_93f8:
    resb 0x0002
__zobss_93fa:
    resb 0x0002
__zobss_93fc:
    resb 0x0002
__zobss_93fe:
    resb 0x0002
__zobss_9400:
    resb 0x0002
__zobss_9402:
    resb 0x0002
__zobss_9404:
    resb 0x0006
__zobss_940a:
    resb 0x0002
__zobss_940c:
    resb 0x0002
__zobss_940e:
    resb 0x0002
__zobss_9410:
    resb 0x0002
__zobss_9412:
    resb 0x0002
__zobss_9414:
    resb 0x0016
__zobss_942a:
    resb 0x0002
__zobss_942c:
    resb 0x0002
__zobss_942e:
    resb 0x0002
__zobss_9430:
    resb 0x0002
__zobss_9432:
    resb 0x0002
__zobss_9434:
    resb 0x012e
__zobss_9562:
    resb 0x0002
__zobss_9564:
    resb 0x0002
__zobss_9566:
    resb 0x0002
__zobss_9568:
    resb 0x0002
__zobss_956a:
    resb 0x0080
__zobss_95ea:
    resb 0x002a
__zobss_9614:
    resb 0x0066
__zobss_967a:
    resb 0x0056
__zobss_96d0:
    resb 0x000c
__zobss_96dc:
    resb 0x0014
__zobss_end:
