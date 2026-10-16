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
    dw 0x03a4                             ; o_bss: uninitialized data size
    dw loc_HJNO - IMAGE_BASE + __zres_end ; 0xa4b9 ; o_entry: overlay entry offset (CS)

__zcode_start:
fpu_loc_45b6 equ 0x45b6 + VBASE

%include "vpclv/loc_GPLJ.asm"              ; 0x000e

%include "shared/api_idx_0002_OOKN.asm"     ; 0x0022

%include "vpclv/asm_only/api_idx_0012_RLJJ.asm"     ; 0x0086

%include "shared/draw_party_slot_letters.asm" ; 0x0202

api_idx_0004_RMVO.bss1 equ bss_942c
api_idx_0004_RMVO.bss2 equ bss_942a
%include "shared/api_idx_0004_RMVO.asm"     ; 0x0281

%include "shared/api_idx_0002_TIUI.asm"     ; 0x0331

%include "shared/api_idx_0002_UIHS.asm"     ; 0x038c

%include "shared/api_idx_0010_STNH.asm"     ; 0x03cd

api_idx_000a_TITQ.bss1 equ bss_9434
api_idx_000a_TITQ.bss2 equ bss_9432
api_idx_000a_TITQ.bss3 equ bss_9436
api_idx_000a_TITQ.bss4 equ bss_9438
%include "shared/api_idx_000a_TITQ.asm"     ; 0x04ca

%include "vpclv/asm_only/api_idx_007c_MOJH.asm"     ; 0x0572

%include "vpclv/loc_MNNG.asm"              ; 0x0dc0

%include "vpclv/api_idx_0004_TLJT.asm"     ; 0x0e3b

%include "vpclv/api_idx_000a_MHQT.asm"     ; 0x0eac

%include "shared/loc_PTRP.asm"              ; 0x0eea

%include "vpclv/loc_GPRG.asm"              ; 0x0f76

%include "shared/api_idx_000c_JQMN.asm"     ; 0x1017

loc_SRQQ.bss1     equ bss_948c
loc_SRQQ.api_idx1 equ api_idx_000a_MHQT
loc_SRQQ.api_idx2 equ api_idx_000c_JQMN
%include "shared/loc_SRQQ.asm"              ; 0x10b0

%include "vpclv/api_idx_0050_MINM.asm"     ; 0x1141

%include "vpclv/api_idx_00ca_HKHO.asm"     ; 0x1e31

loc_TTSP.bss1 equ bss_948c
loc_TTSP.bss2 equ bss_943a
%include "shared/loc_TTSP.asm"              ; 0x20e3

%include "vpclv/loc_HJRN.asm"              ; 0x2189

%include "shared/api_idx_0004_GUSS.asm"     ; 0x21be

%include "shared/api_idx_002a_STSK.asm"     ; 0x2447

api_idx_0080_MHMQ.bss1     equ bss_9424
api_idx_0080_MHMQ.bss2     equ bss_9422
api_idx_0080_MHMQ.bss3     equ bss_9428
api_idx_0080_MHMQ.bss4     equ bss_9426
api_idx_0080_MHMQ.api_idx1 equ api_idx_0012_RLJJ
%include "shared/api_idx_0080_MHMQ.asm"     ; 0x24f0

%include "shared/api_idx_0004_MKGU.asm"     ; 0x2717

%include "vpclv/api_idx_004c_UMGL.asm"     ; 0x27e3

%include "shared/loc_NJOH.asm"              ; 0x2a32

%include "shared/api_idx_0006_VJKJ.asm"     ; 0x2a85

%include "shared/api_idx_0002_KQIK.asm"     ; 0x2b1a

%include "vpclv/api_idx_0052_LHVG.asm"     ; 0x2c0c

%include "shared/api_idx_0004_PMIU.asm"     ; 0x3288

%include "vpclv/api_idx_0020_ORSV.asm"     ; 0x333c

%include "vpclv/api_idx_0004_GRGJ.asm"     ; 0x34cd

%include "vpclv/api_idx_0004_JPOS.asm"     ; 0x35fc

api_idx_0002_OGRO.bss1 equ bss_9420
api_idx_0002_OGRO.bss2 equ bss_941e
%include "shared/api_idx_0002_OGRO.asm"     ; 0x3851

%include "vpclv/api_idx_002e_ILPL.asm"     ; 0x390b

%include "vpclv/api_idx_0032_VJTR.asm"     ; 0x3a7a

%include "vpclv/api_idx_0088_LVJM.asm"     ; 0x3f9e

%include "vpclv/api_idx_001c_HVVI.asm"     ; 0x4140

%include "vpclv/api_idx_0002_SLJI.asm"     ; 0x4270

%include "vpclv/loc_JPIR.asm"              ; 0x4310

%include "vpclv/loc_VNLN.asm"              ; 0x4556

%include "vpclv/api_idx_00ac_MSQO.asm"     ; 0x45e0

%include "vpclv/api_idx_0004_KJII.asm"     ; 0x4884

%include "vpclv/api_idx_0018_MOPR.asm"     ; 0x4955

%include "vpclv/leaf_loc_MVPS.asm"         ; 0x4990

%include "vpclv/leaf_loc_RPIK.asm"         ; 0x49b1

%include "vpclv/leaf_loc_OKGJ.asm"         ; 0x49d2

%include "vpclv/leaf_loc_RVOL.asm"         ; 0x49f3

%include "vpclv/leaf_loc_HKVH.asm"         ; 0x4a14

%include "vpclv/leaf_loc_HKHH.asm"         ; 0x4a35

%include "vpclv/leaf_loc_QSLV.asm"         ; 0x4a56

%include "vpclv/leaf_loc_MLUK.asm"         ; 0x4a77

%include "vpclv/leaf_loc_HTRP.asm"         ; 0x4ab4

%include "vpclv/api_idx_00b4_QLQS.asm"     ; 0x4cc5

%include "vpclv/api_idx_0006_JLRK.asm"     ; 0x4e03

%include "vpclv/leaf_loc_QHMG.asm"         ; 0x4e18

%include "vpclv/leaf_loc_PHOI.asm"         ; 0x4e1f

%include "vpclv/api_idx_00a4_PTJS.asm"     ; 0x4e9e

%include "vpclv/api_idx_0046_NOMK.asm"     ; 0x4fca

%include "shared/api_idx_000e_TIOP.asm"     ; 0x50a1

%include "vpclv/api_idx_000c_RMOO.asm"     ; 0x5161

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
    times 11 db 0


__zimage_end:
