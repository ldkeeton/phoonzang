; auto-generated
%include "inc/structs/structs.inc"
%include "inc/structs/vpcvw.inc"
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

%include "shared/api_idx_0002_OOKN.asm"     ; 0x0027

%include "shared/api_idx_000e_TIOP.asm"     ; 0x008b

bss_93e0 equ __zdseg_end + (__zobss_93e0 - __zdata_start)
%include "vpcvw/api_idx_0012_PJTU.asm"     ; 0x014b

%include "shared/api_idx_0004_PMIU.asm"     ; 0x02c7

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

%include "shared/draw_party_slot_letters.asm" ; 0x0cd6

bss_9402 equ __zdseg_end + (__zobss_9402 - __zdata_start)
bss_9404 equ __zdseg_end + (__zobss_9404 - __zdata_start)
api_idx_0004_RMVO.bss1 equ bss_9404
api_idx_0004_RMVO.bss2 equ bss_9402
%include "shared/api_idx_0004_RMVO.asm"     ; 0x0d55

%include "shared/api_idx_0002_TIUI.asm"     ; 0x0e05

%include "shared/api_idx_0002_UIHS.asm"     ; 0x0e60

%include "shared/api_idx_0010_STNH.asm"     ; 0x0ea1

bss_940a equ __zdseg_end + (__zobss_940a - __zdata_start)
bss_940c equ __zdseg_end + (__zobss_940c - __zdata_start)
bss_942e equ __zdseg_end + (__zobss_942e - __zdata_start)
bss_9430 equ __zdseg_end + (__zobss_9430 - __zdata_start)
api_idx_000a_TITQ.bss1 equ bss_940c
api_idx_000a_TITQ.bss2 equ bss_940a
api_idx_000a_TITQ.bss3 equ bss_942e
api_idx_000a_TITQ.bss4 equ bss_9430
%include "shared/api_idx_000a_TITQ.asm"     ; 0x0f9e

dseg_9098 equ __zdseg_end + (__zdseg_9098 - __zdata_start)
bss_93ee  equ __zdseg_end + (__zobss_93ee - __zdata_start)
bss_93f0  equ __zdseg_end + (__zobss_93f0 - __zdata_start)
bss_93f2  equ __zdseg_end + (__zobss_93f2 - __zdata_start)
bss_93f4  equ __zdseg_end + (__zobss_93f4 - __zdata_start)
; bss_942e  equ __zdseg_end + (__zobss_942e - __zdata_start)
; bss_9430  equ __zdseg_end + (__zobss_9430 - __zdata_start)
bss_9432  equ __zdseg_end + (__zobss_9432 - __zdata_start)
%include "vpcvw/api_idx_007c_OKMO.asm"     ; 0x1046

; bss_93ee equ __zdseg_end + (__zobss_93ee - __zdata_start)
; bss_93f0 equ __zdseg_end + (__zobss_93f0 - __zdata_start)
%include "vpcvw/api_idx_009e_KPST.asm"     ; 0x1894

%include "vpcvw/api_idx_0008_SKNL.asm"     ; 0x1b17

dseg_909b equ __zdseg_end + (__zdseg_909b - __zdata_start)
dseg_90a1 equ __zdseg_end + (__zdseg_90a1 - __zdata_start)
%include "vpcvw/loc_UGOG.asm"              ; 0x1ca0

%include "vpcvw/loc_IIRG.asm"              ; 0x2190

%include "shared/loc_QQUT.asm"              ; 0x21ad

bss_9434 equ __zdseg_end + (__zobss_9434 - __zdata_start)
%include "vpcvw/api_idx_0008_NOPG.asm"     ; 0x21fd

%include "vpcvw/api_idx_0004_NONK.asm"     ; 0x297e

%include "vpcvw/api_idx_000a_GGLT.asm"     ; 0x29ef

%include "shared/loc_PTRP.asm"              ; 0x2a2d

dseg_90a7 equ __zdseg_end + (__zdseg_90a7 - __zdata_start)
%include "vpcvw/loc_GPGU.asm"              ; 0x2ab9

%include "shared/api_idx_000c_JQMN.asm"     ; 0x2b5a

bss_9562 equ __zdseg_end + (__zobss_9562 - __zdata_start)
loc_SRQQ.bss1     equ bss_9562
loc_SRQQ.api_idx1 equ api_idx_000a_GGLT
loc_SRQQ.api_idx2 equ api_idx_000c_JQMN
%include "shared/loc_SRQQ.asm"              ; 0x2bf3

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

%include "vpcvw/api_idx_0004_VRNJ.asm"     ; 0x3c18

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
%include "shared/loc_TTSP.asm"              ; 0x4011

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

%include "shared/api_idx_0004_GUSS.asm"     ; 0x4793

%include "vpcvw/api_idx_0048_RUIH.asm"     ; 0x4a1c

bss_95ea equ __zdseg_end + (__zobss_95ea - __zdata_start)
%include "vpcvw/api_idx_0072_IPMP.asm"     ; 0x4a3f

%include "vpcvw/api_idx_0002_TJIU.asm"     ; 0x5006

%include "vpcvw/api_idx_0010_GVMH.asm"     ; 0x5050

%include "shared/api_idx_0008_RQRL.asm"     ; 0x539e

%include "shared/api_idx_0004_UJRL.asm"     ; 0x542a

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

%include "shared/api_idx_002a_STSK.asm"     ; 0x6977

; bss_93fa equ __zdseg_end + (__zobss_93fa - __zdata_start)
; bss_93fc equ __zdseg_end + (__zobss_93fc - __zdata_start)
; bss_93fe equ __zdseg_end + (__zobss_93fe - __zdata_start)
; bss_9400 equ __zdseg_end + (__zobss_9400 - __zdata_start)
api_idx_0080_MHMQ.bss1     equ bss_93fc
api_idx_0080_MHMQ.bss2     equ bss_93fa
api_idx_0080_MHMQ.bss3     equ bss_9400
api_idx_0080_MHMQ.bss4     equ bss_93fe
api_idx_0080_MHMQ.api_idx1 equ api_idx_0012_PJTU
%include "shared/api_idx_0080_MHMQ.asm"     ; 0x6a20

%include "shared/api_idx_0004_MKGU.asm"     ; 0x6c47

; bss_93f6 equ __zdseg_end + (__zobss_93f6 - __zdata_start)
; bss_93f8 equ __zdseg_end + (__zobss_93f8 - __zdata_start)
; bss_9434 equ __zdseg_end + (__zobss_9434 - __zdata_start)
; bss_9614 equ __zdseg_end + (__zobss_9614 - __zdata_start)
; bss_967a equ __zdseg_end + (__zobss_967a - __zdata_start)
%include "vpcvw/api_idx_004c_LTUL.asm"     ; 0x6d13

%include "vpcvw/api_idx_009a_KOSH.asm"     ; 0x6f62

%include "vpcvw/api_idx_001a_HRLU.asm"     ; 0x706c

dseg_90c0 equ __zdseg_end + 0x0028
dseg_90c2 equ __zdseg_end + 0x002a
dseg_90c4 equ __zdseg_end + 0x002c
dseg_90c6 equ __zdseg_end + 0x002e
dseg_90c8 equ __zdseg_end + 0x0030
dseg_90ca equ __zdseg_end + 0x0032
dseg_90cc equ __zdseg_end + 0x0034
; bss_93f6  equ __zdseg_end + (__zobss_93f6 - __zdata_start)
; bss_93f8  equ __zdseg_end + (__zobss_93f8 - __zdata_start)
%include "vpcvw/loc_IUTP.asm"              ; 0x70ca

%include "vpcvw/api_idx_0004_IKOQ.asm"     ; 0x82da

dseg_90ce equ __zdseg_end + 0x0036
dseg_90d9 equ __zdseg_end + (__zdseg_90d9 - __zdata_start)
dseg_90e2 equ __zdseg_end + 0x004a
dseg_90e9 equ __zdseg_end + (__zdseg_90e9 - __zdata_start)
dseg_90f4 equ __zdseg_end + 0x005c
dseg_90ff equ __zdseg_end + (__zdseg_90ff - __zdata_start)
dseg_9108 equ __zdseg_end + 0x0070
dseg_910f equ __zdseg_end + (__zdseg_910f - __zdata_start)
dseg_911a equ __zdseg_end + 0x0082
dseg_9125 equ __zdseg_end + (__zdseg_9125 - __zdata_start)
dseg_912e equ __zdseg_end + 0x0096
dseg_9135 equ __zdseg_end + (__zdseg_9135 - __zdata_start)
dseg_9140 equ __zdseg_end + 0x00a8
dseg_914b equ __zdseg_end + (__zdseg_914b - __zdata_start)
dseg_9154 equ __zdseg_end + 0x00bc
dseg_915b equ __zdseg_end + (__zdseg_915b - __zdata_start)
dseg_9166 equ __zdseg_end + 0x00ce
dseg_9171 equ __zdseg_end + (__zdseg_9171 - __zdata_start)
dseg_917a equ __zdseg_end + 0x00e2
dseg_9181 equ __zdseg_end + (__zdseg_9181 - __zdata_start)
dseg_918c equ __zdseg_end + 0x00f4
dseg_9197 equ __zdseg_end + (__zdseg_9197 - __zdata_start)
dseg_91a0 equ __zdseg_end + 0x0108
dseg_91a7 equ __zdseg_end + (__zdseg_91a7 - __zdata_start)
dseg_91b2 equ __zdseg_end + 0x011a
dseg_91bd equ __zdseg_end + (__zdseg_91bd - __zdata_start)
dseg_91c6 equ __zdseg_end + 0x012e
dseg_91cd equ __zdseg_end + (__zdseg_91cd - __zdata_start)
dseg_91d8 equ __zdseg_end + 0x0140
dseg_91e3 equ __zdseg_end + (__zdseg_91e3 - __zdata_start)
dseg_91ec equ __zdseg_end + 0x0154
dseg_91f3 equ __zdseg_end + (__zdseg_91f3 - __zdata_start)
dseg_91fe equ __zdseg_end + 0x0166
dseg_9209 equ __zdseg_end + (__zdseg_9209 - __zdata_start)
dseg_9212 equ __zdseg_end + 0x017a
dseg_9219 equ __zdseg_end + (__zdseg_9219 - __zdata_start)
dseg_9224 equ __zdseg_end + 0x018c
dseg_922f equ __zdseg_end + (__zdseg_922f - __zdata_start)
dseg_9238 equ __zdseg_end + 0x01a0
dseg_923f equ __zdseg_end + (__zdseg_923f - __zdata_start)
dseg_924a equ __zdseg_end + 0x01b2
dseg_9255 equ __zdseg_end + (__zdseg_9255 - __zdata_start)
dseg_925e equ __zdseg_end + 0x01c6
dseg_9265 equ __zdseg_end + (__zdseg_9265 - __zdata_start)
dseg_9270 equ __zdseg_end + 0x01d8
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
%include "shared/api_idx_0002_OGRO.asm"     ; 0x8676

%include "shared/api_idx_0058_GKGM.asm"     ; 0x8730

%include "shared/api_idx_0008_LLVT.asm"     ; 0x88b6

dseg_92e2 equ __zdseg_end + (__zdseg_92e2 - __zdata_start)
%include "vpcvw/api_idx_0026_QIGS.asm"     ; 0x8a6e

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

%include "vpcvw/api_idx_0002_RQOS.asm"     ; 0x91b2

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
%include "vpcvw/loc_SRNN.asm"              ; 0x91d9

%include "vpcvw/api_idx_0030_TGOH.asm"     ; 0x92b3

dseg_93c9 equ __zdseg_end + (__zdseg_93c9 - __zdata_start)
%include "vpcvw/api_idx_0016_TVKP.asm"     ; 0x9434

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
%include "shared/aztec_ovbgn.asm"           ; 0x97ee

%include "shared/aztec_cswit.asm"           ; 0x982c

__zdseg_9098:
__zdata_start:
    and ax, strict word 0x20         ; 0x9844
__zdseg_909b:
    push si                          ; 0x9847
    cs and al, 0x24                  ; 0x9848
    and al, 0                        ; 0x984b
__zdseg_90a1:
    push si                          ; 0x984d
    cs and al, 0x24                  ; 0x984e
    and al, 0                        ; 0x9851
__zdseg_90a7:
    sub ch, byte [bp + si]           ; 0x9853
    sub al, byte [bx + si]           ; 0x9855
__zdseg_90ab:
    push si                          ; 0x9857
    cs and al, 0x24                  ; 0x9858
    and al, 0                        ; 0x985b
__zdseg_90b1:
    and byte [bx + si], al           ; 0x985d
__zdseg_90b3:
    push ax                          ; 0x985f
    inc bx                           ; 0x9860
    push si                          ; 0x9861
    push di                          ; 0x9862
    push bx                          ; 0x9863
    inc bx                           ; 0x9864
    push dx                          ; 0x9865
    dec si                           ; 0x9866
    cs push si                       ; 0x9867
    inc di                           ; 0x9869
    inc cx                           ; 0x986a
    add byte [bx + si], ch           ; 0x986b
    add byte [bp + di], ch           ; 0x986d
    add byte [bx + di], ch           ; 0x986f
    add byte [bp + di], ch           ; 0x9871
    add byte [bx], ch                ; 0x9873
    add byte [bx + si], ah           ; 0x9875
    add byte [di], ah                ; 0x9877
    add byte [bx + di], dh           ; 0x9879
    xor word [bx + di], si           ; 0x987b
    xor word [bx + di], si           ; 0x987d
    xor word [bx + di], si           ; 0x987f
    xor word [bx + di], si           ; 0x9881
    xor byte [bx + si], al           ; 0x9883
__zdseg_90d9:
    xor word [bx + di], si           ; 0x9885
    xor word [bx + si], si           ; 0x9887
    xor byte [bx + si], dh           ; 0x9889
    xor byte [bx + si], dh           ; 0x988b
    add byte [bx + si], dh           ; 0x988d
    xor byte [bx + si], dh           ; 0x988f
    xor byte [bx + si], dh           ; 0x9891
    xor byte [bx + si], al           ; 0x9893
__zdseg_90e9:
    xor word [bx + di], si           ; 0x9895
    xor word [bx + di], si           ; 0x9897
    xor byte [bx + si], dh           ; 0x9899
    xor byte [bx + si], dh           ; 0x989b
    xor byte [bx + si], dh           ; 0x989d
    add byte [bx + di], dh           ; 0x989f
    xor byte [bx + si], dh           ; 0x98a1
    xor byte [bx + di], dh           ; 0x98a3
    xor word [bx + di], si           ; 0x98a5
    xor word [bx + si], si           ; 0x98a7
    xor byte [bx + si], al           ; 0x98a9
__zdseg_90ff:
    xor word [bx + di], si           ; 0x98ab
    xor word [bx + si], si           ; 0x98ad
    xor word [bx + si], si           ; 0x98af
    xor byte [bx + si], dh           ; 0x98b1
    add byte [bx + si], dh           ; 0x98b3
    xor byte [bx + si], dh           ; 0x98b5
    xor byte [bx + si], dh           ; 0x98b7
    xor byte [bx + si], al           ; 0x98b9
__zdseg_910f:
    xor word [bx + di], si           ; 0x98bb
    xor word [bx + di], si           ; 0x98bd
    xor byte [bx + si], dh           ; 0x98bf
    xor byte [bx + si], dh           ; 0x98c1
    xor word [bx + si], si           ; 0x98c3
    add byte [bx + si], dh           ; 0x98c5
    xor byte [bx + si], dh           ; 0x98c7
    xor word [bx + di], si           ; 0x98c9
    xor byte [bx + di], dh           ; 0x98cb
    xor byte [bx + di], dh           ; 0x98cd
    xor byte [bx + si], al           ; 0x98cf
__zdseg_9125:
    xor word [bx + di], si           ; 0x98d1
    xor word [bx + si], si           ; 0x98d3
    xor word [bx + si], si           ; 0x98d5
    xor byte [bx + si], dh           ; 0x98d7
    add byte [bx + si], dh           ; 0x98d9
    xor byte [bx + si], dh           ; 0x98db
    xor byte [bx + si], dh           ; 0x98dd
    xor byte [bx + si], al           ; 0x98df
__zdseg_9135:
    xor word [bx + di], si           ; 0x98e1
    xor word [bx + di], si           ; 0x98e3
    xor word [bx + si], si           ; 0x98e5
    xor word [bx + si], si           ; 0x98e7
    xor byte [bx + si], dh           ; 0x98e9
    add byte [bx + di], dh           ; 0x98eb
    xor word [bx + di], si           ; 0x98ed
    xor word [bx + di], si           ; 0x98ef
    xor word [bx + di], si           ; 0x98f1
    xor word [bx + di], si           ; 0x98f3
    xor byte [bx + si], al           ; 0x98f5
__zdseg_914b:
    xor word [bx + di], si           ; 0x98f7
    xor word [bx + si], si           ; 0x98f9
    xor word [bx + di], si           ; 0x98fb
    xor word [bx + di], si           ; 0x98fd
    add byte [bx + si], dh           ; 0x98ff
    xor byte [bx + si], dh           ; 0x9901
    xor byte [bx + si], dh           ; 0x9903
    xor byte [bx + si], al           ; 0x9905
__zdseg_915b:
    xor word [bx + di], si           ; 0x9907
    xor word [bx + di], si           ; 0x9909
    xor byte [bx + si], dh           ; 0x990b
    xor byte [bx + si], dh           ; 0x990d
    xor byte [bx + si], dh           ; 0x990f
    add byte [bx + di], dh           ; 0x9911
    xor word [bx + di], si           ; 0x9913
    xor word [bx + di], si           ; 0x9915
    xor word [bx + di], si           ; 0x9917
    xor word [bx + di], si           ; 0x9919
    xor byte [bx + si], al           ; 0x991b
__zdseg_9171:
    xor word [bx + di], si           ; 0x991d
    xor word [bx + si], si           ; 0x991f
    xor byte [bx + di], dh           ; 0x9921
    xor word [bx + di], si           ; 0x9923
    add byte [bx + si], dh           ; 0x9925
    xor byte [bx + si], dh           ; 0x9927
    xor byte [bx + si], dh           ; 0x9929
    xor byte [bx + si], al           ; 0x992b
__zdseg_9181:
    xor word [bx + di], si           ; 0x992d
    xor word [bx + di], si           ; 0x992f
    xor byte [bx + di], dh           ; 0x9931
    xor byte [bx + si], dh           ; 0x9933
    xor byte [bx + si], dh           ; 0x9935
    add byte [bx + di], dh           ; 0x9937
    xor byte [bx + si], dh           ; 0x9939
    xor word [bx + di], si           ; 0x993b
    xor word [bx + si], si           ; 0x993d
    xor byte [bx + si], dh           ; 0x993f
    xor byte [bx + si], al           ; 0x9941
__zdseg_9197:
    xor word [bx + di], si           ; 0x9943
    xor word [bx + si], si           ; 0x9945
    xor byte [bx + si], dh           ; 0x9947
    xor byte [bx + si], dh           ; 0x9949
    add byte [bx + si], dh           ; 0x994b
    xor byte [bx + si], dh           ; 0x994d
    xor byte [bx + si], dh           ; 0x994f
    xor byte [bx + si], al           ; 0x9951
__zdseg_91a7:
    xor word [bx + di], si           ; 0x9953
    xor word [bx + di], si           ; 0x9955
    xor byte [bx + di], dh           ; 0x9957
    xor byte [bx + si], dh           ; 0x9959
    xor byte [bx + si], dh           ; 0x995b
    add byte [bx + di], dh           ; 0x995d
    xor word [bx + di], si           ; 0x995f
    xor word [bx + di], si           ; 0x9961
    xor word [bx + di], si           ; 0x9963
    xor word [bx + di], si           ; 0x9965
    xor byte [bx + si], al           ; 0x9967
__zdseg_91bd:
    xor word [bx + di], si           ; 0x9969
    xor word [bx + di], si           ; 0x996b
    xor word [bx + di], si           ; 0x996d
    xor word [bx + di], si           ; 0x996f
    add byte [bx + si], dh           ; 0x9971
    xor byte [bx + si], dh           ; 0x9973
    xor byte [bx + si], dh           ; 0x9975
    xor byte [bx + si], al           ; 0x9977
__zdseg_91cd:
    xor word [bx + di], si           ; 0x9979
    xor word [bx + di], si           ; 0x997b
    xor byte [bx + si], dh           ; 0x997d
    xor byte [bx + si], dh           ; 0x997f
    xor word [bx + si], si           ; 0x9981
    add byte [bx + di], dh           ; 0x9983
    xor byte [bx + si], dh           ; 0x9985
    xor word [bx + di], si           ; 0x9987
    xor word [bx + di], si           ; 0x9989
    xor byte [bx + si], dh           ; 0x998b
    xor byte [bx + si], al           ; 0x998d
__zdseg_91e3:
    xor word [bx + di], si           ; 0x998f
    xor word [bx + si], si           ; 0x9991
    xor word [bx + si], si           ; 0x9993
    xor byte [bx + si], dh           ; 0x9995
    add byte [bx + si], dh           ; 0x9997
    xor byte [bx + si], dh           ; 0x9999
    xor byte [bx + si], dh           ; 0x999b
    xor byte [bx + si], al           ; 0x999d
__zdseg_91f3:
    xor word [bx + di], si           ; 0x999f
    xor word [bx + di], si           ; 0x99a1
    xor byte [bx + si], dh           ; 0x99a3
    xor byte [bx + di], dh           ; 0x99a5
    xor byte [bx + si], dh           ; 0x99a7
    add byte [bx + di], dh           ; 0x99a9
    xor word [bx + di], si           ; 0x99ab
    xor word [bx + di], si           ; 0x99ad
    xor word [bx + di], si           ; 0x99af
    xor word [bx + di], si           ; 0x99b1
    xor byte [bx + si], al           ; 0x99b3
__zdseg_9209:
    xor word [bx + di], si           ; 0x99b5
    xor word [bx + si], si           ; 0x99b7
    xor word [bx + si], si           ; 0x99b9
    xor byte [bx + si], dh           ; 0x99bb
    add byte [bx + si], dh           ; 0x99bd
    xor byte [bx + si], dh           ; 0x99bf
    xor byte [bx + si], dh           ; 0x99c1
    xor byte [bx + si], al           ; 0x99c3
__zdseg_9219:
    xor word [bx + di], si           ; 0x99c5
    xor word [bx + di], si           ; 0x99c7
    xor byte [bx + si], dh           ; 0x99c9
    xor word [bx + si], si           ; 0x99cb
    xor byte [bx + si], dh           ; 0x99cd
    add byte [bx + si], dh           ; 0x99cf
    xor byte [bx + si], dh           ; 0x99d1
    xor word [bx + di], si           ; 0x99d3
    xor byte [bx + di], dh           ; 0x99d5
    xor byte [bx + di], dh           ; 0x99d7
    xor byte [bx + si], al           ; 0x99d9
__zdseg_922f:
    xor word [bx + di], si           ; 0x99db
    xor word [bx + si], si           ; 0x99dd
    xor word [bx + si], si           ; 0x99df
    xor byte [bx + si], dh           ; 0x99e1
    add byte [bx + si], dh           ; 0x99e3
    xor byte [bx + si], dh           ; 0x99e5
    xor byte [bx + si], dh           ; 0x99e7
    xor byte [bx + si], al           ; 0x99e9
__zdseg_923f:
    xor word [bx + di], si           ; 0x99eb
    xor word [bx + di], si           ; 0x99ed
    xor word [bx + si], si           ; 0x99ef
    xor word [bx + si], si           ; 0x99f1
    xor word [bx + si], si           ; 0x99f3
    add byte [bx + di], dh           ; 0x99f5
    xor word [bx + di], si           ; 0x99f7
    xor word [bx + di], si           ; 0x99f9
    xor word [bx + di], si           ; 0x99fb
    xor word [bx + di], si           ; 0x99fd
    xor byte [bx + si], al           ; 0x99ff
__zdseg_9255:
    xor word [bx + di], si           ; 0x9a01
    xor word [bx + si], si           ; 0x9a03
    xor word [bx + si], si           ; 0x9a05
    xor byte [bx + si], dh           ; 0x9a07
    add byte [bx + si], dh           ; 0x9a09
    xor byte [bx + si], dh           ; 0x9a0b
    xor byte [bx + si], dh           ; 0x9a0d
    xor byte [bx + si], al           ; 0x9a0f
__zdseg_9265:
    xor word [bx + di], si           ; 0x9a11
    xor word [bx + di], si           ; 0x9a13
    xor word [bx + si], si           ; 0x9a15
    xor word [bx + si], si           ; 0x9a17
    xor byte [bx + si], dh           ; 0x9a19
    add byte [bx + di], dh           ; 0x9a1b
    xor word [bx + di], si           ; 0x9a1d
    xor word [bx + di], si           ; 0x9a1f
    xor word [bx + di], si           ; 0x9a21
    xor word [bx + di], si           ; 0x9a23
    xor byte [bx + si], al           ; 0x9a25
__zdseg_927b:
    xor word [bx + di], si           ; 0x9a27
    xor word [bx + si], si           ; 0x9a29
    db 0x31, 0x30, 0x30, 0x30, 0x00
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
__zsave_si:
    db 0x00, 0x00
__zsave_di:
    db 0x00, 0x00
__zsave_sp:
    db 0x00, 0x00
__zsave_bp:
    db 0x00, 0x00
__zsave_ret:
    db 0x00, 0x00

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
