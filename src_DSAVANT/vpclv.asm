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

%include "shared/api_idx_0002_OOKN.asm"     ; 0x0022

bss_9408 equ __zdseg_end + (__zobss_9408 - __zdata_start)
%include "vpclv/api_idx_0012_RLJJ.asm"     ; 0x0086

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

dseg_9098 equ __zdseg_end + (__zdseg_9098 - __zdata_start)
bss_9416  equ __zdseg_end + (__zobss_9416 - __zdata_start)
bss_9418  equ __zdseg_end + (__zobss_9418 - __zdata_start)
bss_941a  equ __zdseg_end + (__zobss_941a - __zdata_start)
bss_941c  equ __zdseg_end + (__zobss_941c - __zdata_start)
; bss_9436  equ __zdseg_end + (__zobss_9436 - __zdata_start)
; bss_9438  equ __zdseg_end + (__zobss_9438 - __zdata_start)
bss_943a  equ __zdseg_end + (__zobss_943a - __zdata_start)
%include "vpclv/api_idx_007c_MOJH.asm"     ; 0x0572

%include "vpclv/loc_MNNG.asm"              ; 0x0dc0

%include "vpclv/api_idx_0004_TLJT.asm"     ; 0x0e3b

%include "vpclv/api_idx_000a_MHQT.asm"     ; 0x0eac

%include "shared/loc_PTRP.asm"              ; 0x0eea

dseg_909b equ __zdseg_end + (__zdseg_909b - __zdata_start)
%include "vpclv/loc_GPRG.asm"              ; 0x0f76

%include "shared/api_idx_000c_JQMN.asm"     ; 0x1017

bss_948c equ __zdseg_end + (__zobss_948c - __zdata_start)
loc_SRQQ.bss1     equ bss_948c
loc_SRQQ.api_idx1 equ api_idx_000a_MHQT
loc_SRQQ.api_idx2 equ api_idx_000c_JQMN
%include "shared/loc_SRQQ.asm"              ; 0x10b0

dseg_909f equ __zdseg_end + (__zdseg_909f - __zdata_start)
; bss_948c  equ __zdseg_end + (__zobss_948c - __zdata_start)
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

dseg_90a5 equ __zdseg_end + (__zdseg_90a5 - __zdata_start)
dseg_90b4 equ __zdseg_end + 0x001c
dseg_90c3 equ __zdseg_end + (__zdseg_90c3 - __zdata_start)
dseg_90d2 equ __zdseg_end + 0x003a
dseg_90e1 equ __zdseg_end + (__zdseg_90e1 - __zdata_start)
dseg_90f0 equ __zdseg_end + 0x0058
dseg_90ff equ __zdseg_end + (__zdseg_90ff - __zdata_start)
dseg_910e equ __zdseg_end + 0x0076
dseg_911d equ __zdseg_end + (__zdseg_911d - __zdata_start)
dseg_912c equ __zdseg_end + 0x0094
dseg_913b equ __zdseg_end + (__zdseg_913b - __zdata_start)
dseg_914a equ __zdseg_end + 0x00b2
dseg_9159 equ __zdseg_end + (__zdseg_9159 - __zdata_start)
dseg_9168 equ __zdseg_end + 0x00d0
dseg_9177 equ __zdseg_end + (__zdseg_9177 - __zdata_start)
dseg_9186 equ __zdseg_end + 0x00ee
dseg_9195 equ __zdseg_end + (__zdseg_9195 - __zdata_start)
dseg_91a4 equ __zdseg_end + 0x010c
dseg_91b3 equ __zdseg_end + (__zdseg_91b3 - __zdata_start)
dseg_91c2 equ __zdseg_end + 0x012a
%include "vpclv/api_idx_0052_LHVG.asm"     ; 0x2c0c

%include "shared/api_idx_0004_PMIU.asm"     ; 0x3288

%include "vpclv/api_idx_0020_ORSV.asm"     ; 0x333c

%include "vpclv/api_idx_0004_GRGJ.asm"     ; 0x34cd

dseg_91d1 equ __zdseg_end + (__zdseg_91d1 - __zdata_start)
dseg_91dc equ __zdseg_end + 0x0144
dseg_91e5 equ __zdseg_end + (__zdseg_91e5 - __zdata_start)
dseg_91ec equ __zdseg_end + 0x0154
dseg_91f7 equ __zdseg_end + (__zdseg_91f7 - __zdata_start)
dseg_9202 equ __zdseg_end + 0x016a
dseg_920b equ __zdseg_end + (__zdseg_920b - __zdata_start)
dseg_9212 equ __zdseg_end + 0x017a
dseg_921d equ __zdseg_end + (__zdseg_921d - __zdata_start)
dseg_9228 equ __zdseg_end + 0x0190
dseg_9231 equ __zdseg_end + (__zdseg_9231 - __zdata_start)
dseg_9238 equ __zdseg_end + 0x01a0
dseg_9243 equ __zdseg_end + (__zdseg_9243 - __zdata_start)
dseg_924e equ __zdseg_end + 0x01b6
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
bss_95d0  equ __zdseg_end + (__zobss_95d0 - __zdata_start)
bss_95dc  equ __zdseg_end + (__zobss_95dc - __zdata_start)
%include "vpclv/api_idx_0004_LOLJ.asm"     ; 0x35fc

; bss_941e equ __zdseg_end + (__zobss_941e - __zdata_start)
; bss_9420 equ __zdseg_end + (__zobss_9420 - __zdata_start)
api_idx_0002_OGRO.bss1 equ bss_9420
api_idx_0002_OGRO.bss2 equ bss_941e
%include "shared/api_idx_0002_OGRO.asm"     ; 0x3851

; bss_95dc equ __zdseg_end + (__zobss_95dc - __zdata_start)
%include "vpclv/api_idx_002e_ILPL.asm"     ; 0x390b

%include "vpclv/api_idx_0032_VJTR.asm"     ; 0x3a7a

%include "vpclv/api_idx_0088_LVJM.asm"     ; 0x3f9e

bss_95f4 equ __zdseg_end + (__zobss_95f4 - __zdata_start)
%include "vpclv/api_idx_001c_HVVI.asm"     ; 0x4140

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

%include "vpclv/api_idx_00a4_PTJS.asm"     ; 0x4e9e

; bss_9492 equ __zdseg_end + (__zobss_9492 - __zdata_start)
%include "vpclv/api_idx_0046_NOMK.asm"     ; 0x4fca

%include "shared/api_idx_000e_TIOP.asm"     ; 0x50a1

dseg_93f0 equ __zdseg_end + (__zdseg_93f0 - __zdata_start)
; bss_9416  equ __zdseg_end + (__zobss_9416 - __zdata_start)
; bss_9418  equ __zdseg_end + (__zobss_9418 - __zdata_start)
; bss_941a  equ __zdseg_end + (__zobss_941a - __zdata_start)
; bss_941c  equ __zdseg_end + (__zobss_941c - __zdata_start)
; bss_941e  equ __zdseg_end + (__zobss_941e - __zdata_start)
; bss_9420  equ __zdseg_end + (__zobss_9420 - __zdata_start)
; bss_9422  equ __zdseg_end + (__zobss_9422 - __zdata_start)
; bss_9424  equ __zdseg_end + (__zobss_9424 - __zdata_start)
; bss_9426  equ __zdseg_end + (__zobss_9426 - __zdata_start)
; bss_9428  equ __zdseg_end + (__zobss_9428 - __zdata_start)
; bss_942a  equ __zdseg_end + (__zobss_942a - __zdata_start)
; bss_942c  equ __zdseg_end + (__zobss_942c - __zdata_start)
; bss_9432  equ __zdseg_end + (__zobss_9432 - __zdata_start)
; bss_9434  equ __zdseg_end + (__zobss_9434 - __zdata_start)
; bss_9436  equ __zdseg_end + (__zobss_9436 - __zdata_start)
; bss_9438  equ __zdseg_end + (__zobss_9438 - __zdata_start)
; bss_943a  equ __zdseg_end + (__zobss_943a - __zdata_start)
; bss_948e  equ __zdseg_end + (__zobss_948e - __zdata_start)
; bss_9490  equ __zdseg_end + (__zobss_9490 - __zdata_start)
; bss_9492  equ __zdseg_end + (__zobss_9492 - __zdata_start)
bss_9704  equ __zdseg_end + (__zobss_9704 - __zdata_start)
%include "vpclv/api_idx_000c_RLGP.asm"     ; 0x5161

save_si  equ __zdseg_end + (__zsave_si - __zdata_start)
save_di  equ __zdseg_end + (__zsave_di - __zdata_start)
save_sp  equ __zdseg_end + (__zsave_sp - __zdata_start)
save_bp  equ __zdseg_end + (__zsave_bp - __zdata_start)
save_ret equ __zdseg_end + (__zsave_ret - __zdata_start)
_Uorg    equ __zdseg_end + (__zobss_9408 - __zdata_start)
_Uend    equ __zdseg_end + (__zobss_end - __zdata_start)
%include "shared/aztec_ovbgn.asm"           ; 0x5472

__zdseg_9098:
__zdata_start:
    and ax, strict word 0x20         ; 0x54b0
__zdseg_909b:
    sub ch, byte [bp + si]           ; 0x54b3
    sub al, byte [bx + si]           ; 0x54b5
__zdseg_909f:
    push si                          ; 0x54b7
    cs and al, 0x24                  ; 0x54b8
    and al, 0                        ; 0x54bb
__zdseg_90a5:
    inc cx                           ; 0x54bd
    inc bx                           ; 0x54be
    inc dx                           ; 0x54bf
    inc bx                           ; 0x54c0
    inc dx                           ; 0x54c1
    inc bx                           ; 0x54c2
    inc bx                           ; 0x54c3
    inc bx                           ; 0x54c4
    inc bx                           ; 0x54c5
    dec ax                           ; 0x54c6
    inc bx                           ; 0x54c7
    dec ax                           ; 0x54c8
    inc dx                           ; 0x54c9
    inc cx                           ; 0x54ca
    add byte [bx + si], dh           ; 0x54cb
    xor dh, byte [bp + si]           ; 0x54cd
    xor dh, byte [bp + si]           ; 0x54cf
    xor dh, byte [bp + di]           ; 0x54d1
    xor dh, byte [bx + di]           ; 0x54d3
    xor word [bp + si], si           ; 0x54d5
    xor dh, byte [bp + di]           ; 0x54d7
    xor byte [bx + si], al           ; 0x54d9
__zdseg_90c3:
    inc cx                           ; 0x54db
    inc bx                           ; 0x54dc
    inc bx                           ; 0x54dd
    inc bx                           ; 0x54de
    inc bx                           ; 0x54df
    inc sp                           ; 0x54e0
    inc bx                           ; 0x54e1
    inc bx                           ; 0x54e2
    inc bx                           ; 0x54e3
    dec ax                           ; 0x54e4
    dec ax                           ; 0x54e5
    dec bx                           ; 0x54e6
    inc sp                           ; 0x54e7
    inc cx                           ; 0x54e8
    add byte [bx + si], dh           ; 0x54e9
    xor dh, byte [bp + si]           ; 0x54eb
    xor dh, byte [bp + si]           ; 0x54ed
    xor dh, byte [bp + di]           ; 0x54ef
    xor dh, byte [bx + di]           ; 0x54f1
    xor dh, byte [bp + di]           ; 0x54f3
    xor dh, byte [bp + di]           ; 0x54f5
    xor byte [bx + si], al           ; 0x54f7
__zdseg_90e1:
    inc cx                           ; 0x54f9
    inc bx                           ; 0x54fa
    inc bx                           ; 0x54fb
    inc bx                           ; 0x54fc
    inc bx                           ; 0x54fd
    inc sp                           ; 0x54fe
    inc bx                           ; 0x54ff
    inc bx                           ; 0x5500
    inc bx                           ; 0x5501
    dec cx                           ; 0x5502
    inc si                           ; 0x5503
    dec bx                           ; 0x5504
    inc bp                           ; 0x5505
    inc cx                           ; 0x5506
    add byte [bx + si], dh           ; 0x5507
    xor dh, byte [bp + si]           ; 0x5509
    xor dh, byte [bp + si]           ; 0x550b
    xor dh, byte [bp + di]           ; 0x550d
    xor dh, byte [bx + di]           ; 0x550f
    xor dh, byte [bx + di]           ; 0x5511
    xor dh, byte [bp + di]           ; 0x5513
    xor byte [bx + si], al           ; 0x5515
__zdseg_90ff:
    inc cx                           ; 0x5517
    inc bx                           ; 0x5518
    dec ax                           ; 0x5519
    inc bx                           ; 0x551a
    dec ax                           ; 0x551b
    inc sp                           ; 0x551c
    inc bx                           ; 0x551d
    inc bx                           ; 0x551e
    inc bx                           ; 0x551f
    dec ax                           ; 0x5520
    inc si                           ; 0x5521
    dec cx                           ; 0x5522
    inc sp                           ; 0x5523
    inc cx                           ; 0x5524
    add byte [bx + si], dh           ; 0x5525
    xor dh, byte [bp + di]           ; 0x5527
    xor dh, byte [bp + di]           ; 0x5529
    xor dh, byte [bp + di]           ; 0x552b
    xor dh, byte [bx + di]           ; 0x552d
    xor word [bx + di], si           ; 0x552f
    xor dh, byte [bp + di]           ; 0x5531
    xor byte [bx + si], al           ; 0x5533
__zdseg_911d:
    inc cx                           ; 0x5535
    inc bx                           ; 0x5536
    dec bx                           ; 0x5537
    inc bx                           ; 0x5538
    dec ax                           ; 0x5539
    dec ax                           ; 0x553a
    inc di                           ; 0x553b
    inc bx                           ; 0x553c
    inc bx                           ; 0x553d
    dec cx                           ; 0x553e
    inc bp                           ; 0x553f
    inc bx                           ; 0x5540
    inc dx                           ; 0x5541
    inc cx                           ; 0x5542
    add byte [bx + si], dh           ; 0x5543
    xor dh, byte [bp + di]           ; 0x5545
    xor dh, byte [bp + si]           ; 0x5547
    xor si, word [bp + si]           ; 0x5549
    xor dh, byte [bx + di]           ; 0x554b
    xor dh, byte [bx + di]           ; 0x554d
    xor dh, byte [bp + si]           ; 0x554f
    xor byte [bx + si], al           ; 0x5551
__zdseg_913b:
    inc cx                           ; 0x5553
    inc bx                           ; 0x5554
    inc dx                           ; 0x5555
    inc bx                           ; 0x5556
    inc bx                           ; 0x5557
    inc sp                           ; 0x5558
    inc bp                           ; 0x5559
    inc bx                           ; 0x555a
    inc bx                           ; 0x555b
    inc bp                           ; 0x555c
    inc bp                           ; 0x555d
    inc bp                           ; 0x555e
    inc di                           ; 0x555f
    inc cx                           ; 0x5560
    add byte [bx + si], dh           ; 0x5561
    xor dh, byte [bx + di]           ; 0x5563
    xor dh, byte [bx + di]           ; 0x5565
    xor dh, byte [bx + di]           ; 0x5567
    xor dh, byte [bx + di]           ; 0x5569
    xor word [bx + di], si           ; 0x556b
    xor si, word [bp + di]           ; 0x556d
    xor byte [bx + si], al           ; 0x556f
__zdseg_9159:
    inc cx                           ; 0x5571
    inc bx                           ; 0x5572
    dec cx                           ; 0x5573
    inc bx                           ; 0x5574
    dec cx                           ; 0x5575
    inc dx                           ; 0x5576
    dec ax                           ; 0x5577
    inc bx                           ; 0x5578
    inc bx                           ; 0x5579
    inc si                           ; 0x557a
    dec bx                           ; 0x557b
    inc si                           ; 0x557c
    inc si                           ; 0x557d
    inc cx                           ; 0x557e
    add byte [bx + si], dh           ; 0x557f
    xor dh, byte [bp + di]           ; 0x5581
    xor dh, byte [bp + di]           ; 0x5583
    xor word [bx + di], si           ; 0x5585
    xor dh, byte [bx + di]           ; 0x5587
    xor word [bp + di], si           ; 0x5589
    xor si, word [bp + di]           ; 0x558b
    xor byte [bx + si], al           ; 0x558d
__zdseg_9177:
    inc cx                           ; 0x558f
    inc bx                           ; 0x5590
    inc bp                           ; 0x5591
    inc bx                           ; 0x5592
    inc bx                           ; 0x5593
    inc bp                           ; 0x5594
    inc di                           ; 0x5595
    inc bx                           ; 0x5596
    inc bx                           ; 0x5597
    dec cx                           ; 0x5598
    inc si                           ; 0x5599
    dec bx                           ; 0x559a
    inc si                           ; 0x559b
    inc cx                           ; 0x559c
    add byte [bx + si], dh           ; 0x559d
    xor dh, byte [bp + si]           ; 0x559f
    xor dh, byte [bp + si]           ; 0x55a1
    xor dh, byte [bp + si]           ; 0x55a3
    xor dh, byte [bx + di]           ; 0x55a5
    xor dh, byte [bp + si]           ; 0x55a7
    xor dh, byte [bp + si]           ; 0x55a9
    xor byte [bx + si], al           ; 0x55ab
__zdseg_9195:
    inc cx                           ; 0x55ad
    inc bx                           ; 0x55ae
    dec bx                           ; 0x55af
    inc bx                           ; 0x55b0
    inc di                           ; 0x55b1
    inc sp                           ; 0x55b2
    dec ax                           ; 0x55b3
    inc bx                           ; 0x55b4
    inc bx                           ; 0x55b5
    inc si                           ; 0x55b6
    dec bx                           ; 0x55b7
    dec cx                           ; 0x55b8
    inc sp                           ; 0x55b9
    inc cx                           ; 0x55ba
    add byte [bx + si], dh           ; 0x55bb
    xor dh, byte [bp + di]           ; 0x55bd
    xor dh, byte [bp + si]           ; 0x55bf
    xor dh, byte [bx + di]           ; 0x55c1
    xor dh, byte [bx + di]           ; 0x55c3
    xor word [bp + si], si           ; 0x55c5
    xor si, word [bp + si]           ; 0x55c7
    xor byte [bx + si], al           ; 0x55c9
__zdseg_91b3:
    inc cx                           ; 0x55cb
    inc bx                           ; 0x55cc
    dec ax                           ; 0x55cd
    inc bx                           ; 0x55ce
    dec ax                           ; 0x55cf
    dec ax                           ; 0x55d0
    inc di                           ; 0x55d1
    inc bx                           ; 0x55d2
    inc bx                           ; 0x55d3
    inc bx                           ; 0x55d4
    inc bp                           ; 0x55d5
    inc bx                           ; 0x55d6
    dec ax                           ; 0x55d7
    inc cx                           ; 0x55d8
    add byte [bx + si], dh           ; 0x55d9
    xor dh, byte [bp + di]           ; 0x55db
    xor dh, byte [bp + si]           ; 0x55dd
    xor si, word [bp + si]           ; 0x55df
    xor dh, byte [bx + di]           ; 0x55e1
    xor word [bp + si], si           ; 0x55e3
    xor dh, byte [bp + di]           ; 0x55e5
    xor byte [bx + si], al           ; 0x55e7
__zdseg_91d1:
    xor word [bx + di], si           ; 0x55e9
    xor word [bx + di], si           ; 0x55eb
    xor word [bx + di], si           ; 0x55ed
    xor word [bx + di], si           ; 0x55ef
    xor word [bx + si], si           ; 0x55f1
    add byte [bx + di], dh           ; 0x55f3
    xor word [bx + di], si           ; 0x55f5
    xor byte [bx + si], dh           ; 0x55f7
    xor byte [bx + si], dh           ; 0x55f9
    xor byte [bx + si], al           ; 0x55fb
__zdseg_91e5:
    xor byte [bx + si], dh           ; 0x55fd
    xor byte [bx + si], dh           ; 0x55ff
    xor byte [bx + si], dh           ; 0x5601
    add byte [bx + di], dh           ; 0x5603
    xor word [bx + di], si           ; 0x5605
    xor word [bx + si], si           ; 0x5607
    xor byte [bx + si], dh           ; 0x5609
    xor byte [bx + si], dh           ; 0x560b
    xor byte [bx + si], al           ; 0x560d
__zdseg_91f7:
    xor word [bx + si], si           ; 0x560f
    xor byte [bx + si], dh           ; 0x5611
    xor word [bx + di], si           ; 0x5613
    xor word [bx + di], si           ; 0x5615
    xor byte [bx + si], dh           ; 0x5617
    add byte [bx + di], dh           ; 0x5619
    xor word [bx + di], si           ; 0x561b
    xor byte [bx + di], dh           ; 0x561d
    xor byte [bx + si], dh           ; 0x561f
    xor byte [bx + si], al           ; 0x5621
__zdseg_920b:
    xor byte [bx + si], dh           ; 0x5623
    xor byte [bx + si], dh           ; 0x5625
    xor byte [bx + si], dh           ; 0x5627
    add byte [bx + di], dh           ; 0x5629
    xor word [bx + di], si           ; 0x562b
    xor word [bx + si], si           ; 0x562d
    xor byte [bx + si], dh           ; 0x562f
    xor byte [bx + di], dh           ; 0x5631
    xor byte [bx + si], al           ; 0x5633
__zdseg_921d:
    xor byte [bx + si], dh           ; 0x5635
    xor byte [bx + di], dh           ; 0x5637
    xor word [bx + si], si           ; 0x5639
    xor word [bx + si], si           ; 0x563b
    xor word [bx + si], si           ; 0x563d
    add byte [bx + di], dh           ; 0x563f
    xor word [bx + di], si           ; 0x5641
    xor byte [bx + di], dh           ; 0x5643
    xor byte [bx + si], dh           ; 0x5645
    xor byte [bx + si], al           ; 0x5647
__zdseg_9231:
    xor byte [bx + si], dh           ; 0x5649
    xor byte [bx + si], dh           ; 0x564b
    xor byte [bx + si], dh           ; 0x564d
    add byte [bx + di], dh           ; 0x564f
    xor word [bx + di], si           ; 0x5651
    xor word [bx + di], si           ; 0x5653
    xor byte [bx + di], dh           ; 0x5655
    xor byte [bx + si], dh           ; 0x5657
    xor byte [bx + si], al           ; 0x5659
__zdseg_9243:
    xor word [bx + di], si           ; 0x565b
    xor word [bx + di], si           ; 0x565d
    xor word [bx + di], si           ; 0x565f
    xor word [bx + di], si           ; 0x5661
    xor word [bx + si], si           ; 0x5663
    add byte [bx + di], dh           ; 0x5665
    xor word [bx + di], si           ; 0x5667
    xor byte [bx + di], dh           ; 0x5669
    xor word [bx + di], si           ; 0x566b
    xor word [bx + si], ax           ; 0x566d
__zdseg_9257:
    xor byte [bx + si], dh           ; 0x566f
    db 0x30, 0x30, 0x30, 0x30, 0x00
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
    resb 0x000c
__zobss_95dc:
    resb 0x0018
__zobss_95f4:
    resb 0x0110
__zobss_9704:
    resb 0x00a8
__zobss_end:
