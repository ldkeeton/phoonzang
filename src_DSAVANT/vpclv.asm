; auto-generated
%include "inc/structs/structs.inc"
%include "inc/structs/vpclv.inc"
bits 16
%include "inc/host_symbols.inc"
%ifndef VBASE
VBASE equ __zres_end - 0x000e
%endif
section .text vstart=VBASE
%ifndef IMAGE_BASE
IMAGE_BASE equ 0x000e + VBASE
%endif

    ; Aztec C86 overlay header (14 bytes)
    dw 0x00f2                             ; o_magic: overlay signature (0x00f2)
    dw __zres_end                         ; 0x5055 ; o_corg: code load origin (memory offset)
    dw (__zdata_start - __zcode_start)    ; 0x54a2 ; o_csize: code size in bytes
    dw __zdseg_end                        ; 0x9098 ; o_dorg: data load origin (memory offset)
    dw (__zimage_end - __zdata_start)     ; 0x0370 ; o_dsize: initialized data size
    dw __zobss_end - __zimage_end         ; 0x03a4 ; o_bss: uninitialized data size
    dw loc_HJNO - IMAGE_BASE + __zres_end ; 0xa4b9 ; o_entry: overlay entry offset (CS)

__zcode_start:

%include "vpclv/loc_GPLJ.asm"              ; 0x000e

%include "shared/api_idx_0002_OOKN.asm"     ; 0x0022

bss_9408 equ __zdseg_end + (__zobss_9408 - __zdata_start)
%include "vpclv/asm_only/api_idx_0012_RLJJ.asm"     ; 0x0086

%include "shared/draw_party_slot_letters.asm" ; 0x0202

bss_942a equ __zdseg_end + (__zobss_942a - __zdata_start)
bss_942c equ __zdseg_end + (__zobss_942c - __zdata_start)
api_idx_0004_RMVO.bss1 equ bss_942c
api_idx_0004_RMVO.bss2 equ bss_942a
%include "shared/api_idx_0004_RMVO.asm"     ; 0x0281

%include "shared/api_idx_0002_TIUI.asm"     ; 0x0331

%include "shared/api_idx_0002_UIHS.asm"     ; 0x038c

%include "shared/api_idx_0010_STNH.asm"     ; 0x03cd

bss_9432 equ __zdseg_end + (__zobss_9432 - __zdata_start)
bss_9434 equ __zdseg_end + (__zobss_9434 - __zdata_start)
bss_9436 equ __zdseg_end + (__zobss_9436 - __zdata_start)
bss_9438 equ __zdseg_end + (__zobss_9438 - __zdata_start)
api_idx_000a_TITQ.bss1 equ bss_9434
api_idx_000a_TITQ.bss2 equ bss_9432
api_idx_000a_TITQ.bss3 equ bss_9436
api_idx_000a_TITQ.bss4 equ bss_9438
%include "shared/api_idx_000a_TITQ.asm"     ; 0x04ca

bss_9416 equ __zdseg_end + (__zobss_9416 - __zdata_start)
bss_9418 equ __zdseg_end + (__zobss_9418 - __zdata_start)
bss_941a equ __zdseg_end + (__zobss_941a - __zdata_start)
bss_941c equ __zdseg_end + (__zobss_941c - __zdata_start)
; bss_9436 equ __zdseg_end + (__zobss_9436 - __zdata_start)
; bss_9438 equ __zdseg_end + (__zobss_9438 - __zdata_start)
bss_943a equ __zdseg_end + (__zobss_943a - __zdata_start)
%include "vpclv/asm_only/api_idx_007c_MOJH.asm"     ; 0x0572

%include "vpclv/loc_MNNG.asm"              ; 0x0dc0

%include "vpclv/api_idx_0004_TLJT.asm"     ; 0x0e3b

%include "vpclv/api_idx_000a_MHQT.asm"     ; 0x0eac

%include "shared/loc_PTRP.asm"              ; 0x0eea

%include "vpclv/loc_GPRG.asm"              ; 0x0f76

%include "shared/api_idx_000c_JQMN.asm"     ; 0x1017

bss_948c equ __zdseg_end + (__zobss_948c - __zdata_start)
loc_SRQQ.bss1     equ bss_948c
loc_SRQQ.api_idx1 equ api_idx_000a_MHQT
loc_SRQQ.api_idx2 equ api_idx_000c_JQMN
%include "shared/loc_SRQQ.asm"              ; 0x10b0

; bss_948c equ __zdseg_end + (__zobss_948c - __zdata_start)
%include "vpclv/api_idx_0050_MINM.asm"     ; 0x1141

%include "vpclv/api_idx_00ca_HKHO.asm"     ; 0x1e31

; bss_943a equ __zdseg_end + (__zobss_943a - __zdata_start)
; bss_948c equ __zdseg_end + (__zobss_948c - __zdata_start)
loc_TTSP.bss1 equ bss_948c
loc_TTSP.bss2 equ bss_943a
%include "shared/loc_TTSP.asm"              ; 0x20e3

%include "vpclv/loc_HJRN.asm"              ; 0x2189

%include "shared/api_idx_0004_GUSS.asm"     ; 0x21be

%include "shared/api_idx_002a_STSK.asm"     ; 0x2447

bss_9422 equ __zdseg_end + (__zobss_9422 - __zdata_start)
bss_9424 equ __zdseg_end + (__zobss_9424 - __zdata_start)
bss_9426 equ __zdseg_end + (__zobss_9426 - __zdata_start)
bss_9428 equ __zdseg_end + (__zobss_9428 - __zdata_start)
api_idx_0080_MHMQ.bss1     equ bss_9424
api_idx_0080_MHMQ.bss2     equ bss_9422
api_idx_0080_MHMQ.bss3     equ bss_9428
api_idx_0080_MHMQ.bss4     equ bss_9426
api_idx_0080_MHMQ.api_idx1 equ api_idx_0012_RLJJ
%include "shared/api_idx_0080_MHMQ.asm"     ; 0x24f0

%include "shared/api_idx_0004_MKGU.asm"     ; 0x2717

bss_941e equ __zdseg_end + (__zobss_941e - __zdata_start)
bss_9420 equ __zdseg_end + (__zobss_9420 - __zdata_start)
bss_948e equ __zdseg_end + (__zobss_948e - __zdata_start)
bss_9490 equ __zdseg_end + (__zobss_9490 - __zdata_start)
bss_9492 equ __zdseg_end + (__zobss_9492 - __zdata_start)
%include "vpclv/api_idx_004c_UMGL.asm"     ; 0x27e3

%include "shared/loc_NJOH.asm"              ; 0x2a32

%include "shared/api_idx_0006_VJKJ.asm"     ; 0x2a85

%include "shared/api_idx_0002_KQIK.asm"     ; 0x2b1a

%include "vpclv/api_idx_0052_LHVG.asm"     ; 0x2c0c

%include "shared/api_idx_0004_PMIU.asm"     ; 0x3288

%include "vpclv/api_idx_0020_ORSV.asm"     ; 0x333c

%include "vpclv/api_idx_0004_GRGJ.asm"     ; 0x34cd

bss_95d0 equ __zdseg_end + (__zobss_95d0 - __zdata_start)
%include "vpclv/api_idx_0004_LOLJ.asm"     ; 0x35fc

; bss_941e equ __zdseg_end + (__zobss_941e - __zdata_start)
; bss_9420 equ __zdseg_end + (__zobss_9420 - __zdata_start)
api_idx_0002_OGRO.bss1 equ bss_9420
api_idx_0002_OGRO.bss2 equ bss_941e
%include "shared/api_idx_0002_OGRO.asm"     ; 0x3851

%include "vpclv/api_idx_002e_ILPL.asm"     ; 0x390b

%include "vpclv/api_idx_0032_VJTR.asm"     ; 0x3a7a

%include "vpclv/api_idx_0088_LVJM.asm"     ; 0x3f9e

bss_95f4 equ __zdseg_end + (__zobss_95f4 - __zdata_start)
%include "vpclv/api_idx_001c_HVVI.asm"     ; 0x4140

%include "vpclv/api_idx_0002_SLJI.asm"     ; 0x4270

%include "vpclv/loc_KPKJ.asm"              ; 0x4310

%include "vpclv/api_idx_00ac_MSQO.asm"     ; 0x45e0

%include "vpclv/api_idx_0004_KJII.asm"     ; 0x4884

%include "vpclv/api_idx_0018_IKVK.asm"     ; 0x4955

%include "vpclv/api_idx_00b4_QLQS.asm"     ; 0x4cc5

%include "vpclv/api_idx_0006_ILTI.asm"     ; 0x4e03

%include "vpclv/api_idx_00a4_PTJS.asm"     ; 0x4e9e

; bss_9492 equ __zdseg_end + (__zobss_9492 - __zdata_start)
%include "vpclv/api_idx_0046_NOMK.asm"     ; 0x4fca

%include "shared/api_idx_000e_TIOP.asm"     ; 0x50a1

; bss_9416 equ __zdseg_end + (__zobss_9416 - __zdata_start)
; bss_9418 equ __zdseg_end + (__zobss_9418 - __zdata_start)
; bss_941a equ __zdseg_end + (__zobss_941a - __zdata_start)
; bss_941c equ __zdseg_end + (__zobss_941c - __zdata_start)
; bss_941e equ __zdseg_end + (__zobss_941e - __zdata_start)
; bss_9420 equ __zdseg_end + (__zobss_9420 - __zdata_start)
; bss_9422 equ __zdseg_end + (__zobss_9422 - __zdata_start)
; bss_9424 equ __zdseg_end + (__zobss_9424 - __zdata_start)
; bss_9426 equ __zdseg_end + (__zobss_9426 - __zdata_start)
; bss_9428 equ __zdseg_end + (__zobss_9428 - __zdata_start)
; bss_942a equ __zdseg_end + (__zobss_942a - __zdata_start)
; bss_942c equ __zdseg_end + (__zobss_942c - __zdata_start)
; bss_9432 equ __zdseg_end + (__zobss_9432 - __zdata_start)
; bss_9434 equ __zdseg_end + (__zobss_9434 - __zdata_start)
; bss_9436 equ __zdseg_end + (__zobss_9436 - __zdata_start)
; bss_9438 equ __zdseg_end + (__zobss_9438 - __zdata_start)
; bss_943a equ __zdseg_end + (__zobss_943a - __zdata_start)
; bss_948e equ __zdseg_end + (__zobss_948e - __zdata_start)
; bss_9490 equ __zdseg_end + (__zobss_9490 - __zdata_start)
; bss_9492 equ __zdseg_end + (__zobss_9492 - __zdata_start)
bss_9704 equ __zdseg_end + (__zobss_9704 - __zdata_start)
%include "vpclv/api_idx_000c_RMOO.asm"     ; 0x5161

dseg_93fe equ __zdseg_end + (__zdseg_93fe - __zdata_start)
dseg_9400 equ __zdseg_end + (__zdseg_9400 - __zdata_start)
dseg_9402 equ __zdseg_end + (__zdseg_9402 - __zdata_start)
dseg_9404 equ __zdseg_end + (__zdseg_9404 - __zdata_start)
dseg_9406 equ __zdseg_end + (__zdseg_9406 - __zdata_start)
; bss_9408  equ __zdseg_end + (__zobss_9408 - __zdata_start)
%include "vpclv/asm_only/loc_HJNO.asm"              ; 0x5472

__zdata_start:

    db 0x25, 0x20, 0x00, 0x2a, 0x2a, 0x2a, 0x00
    db 'V.$$$', 0
    db 'ACBCBCCCCHCHBA', 0
    db '02222232112230', 0
    db 'ACCCCDCCCHHKDA', 0
    db '02222232123230', 0
    db 'ACCCCDCCCIFKEA', 0
    db '02222232121230', 0
    db 'ACHCHDCCCHFIDA', 0
    db '02323232111230', 0
    db 'ACKCHHGCCIECBA', 0
    db '02322322121220', 0
    db 'ACBCCDECCEEEGA', 0
    db '02121212111330', 0
    db 'ACICIBHCCFKFFA', 0
    db '02323112113330', 0
    db 'ACECCEGCCIFKFA', 0
    db '02222222122220', 0
    db 'ACKCGDHCCFKIDA', 0
    db '02322212112320', 0
    db 'ACHCHHGCCCECHA', 0
    db '02322322112230', 0
    db '1111111110', 0
    db '11100000', 0
    db '000000', 0
    db '1111000000', 0
    db '1000111100', 0
    db '11101000', 0
    db '000000', 0
    db '1111000010', 0
    db '0001101010', 0
    db '11101000', 0
    db '000000', 0
    db '1111101000', 0
    db '1111111110', 0
    db '11101111', 0
    db '000000', 0
    db '1111000000', 0
    db '1111111110', 0
    db '11100111', 0
    db '000000', 0
    db '1111010000', 0
    db '1001110000', 0
    db '11100000', 0
    db '000000', 0
    db '1111010000', 0
    db '1111111110', 0
    db '11111111', 0
    db '000000', 0
    db '1111000010', 0
    db '1001111000', 0
    db '11101000', 0
    db '000000', 0
    db '1111000100', 0
    db '1111111110', 0
    db '11101000', 0
    db '000000', 0
    db '1111001000', 0
    db '0001101010', 0
    db '11101000', 0
    db '000000', 0
    db '1111101010', 0
    db '1111111110', 0
    db '11101000', 0
    db '000000', 0
    db '1111101000', 0
    db '1111111110', 0
    db '11101000', 0
    db '000000', 0
    db '1111000011', 0
    db '1001111101', 0
    db '11101001', 0
    db '000000', 0
    db '1111000101', 0
    db '1111111111', 0
    db '11100111', 0
    db '000000', 0
    db '1111010001', 0
    db 0x25, 0x20, 0x28, 0x00, 0x29, 0x00, 0x2f
    times 4 db 0
    db 'PCVWSCRN.VGA', 0
    db 0x00

__zdseg_93fe:
    db 0x00, 0x00
__zdseg_9400:
    db 0x00, 0x00
__zdseg_9402:
    db 0x00, 0x00
__zdseg_9404:
    db 0x00, 0x00
__zdseg_9406:
    db 0x00, 0x00

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
    resb 0x0052
__zobss_948c:
    resb 0x0002
__zobss_948e:
    resb 0x0002
__zobss_9490:
    resb 0x0002
__zobss_9492:
    resb 0x013e
__zobss_95d0:
    resb 0x0024
__zobss_95f4:
    resb 0x0110
__zobss_9704:
    resb 0x00a8
__zobss_end:
