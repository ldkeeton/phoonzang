; auto-generated
%include "inc/structs/structs.inc"
%include "inc/structs/vpops.inc"
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
    dw (__zdata_start - __zcode_start)    ; 0x4ecd ; o_csize: code size in bytes
    dw __zdseg_end                        ; 0x9098 ; o_dorg: data load origin (memory offset)
    dw (__zimage_end - __zdata_start)     ; 0x003e ; o_dsize: initialized data size
    dw 0x02b8                             ; o_bss: uninitialized data size
    dw loc_JHJT - IMAGE_BASE + __zres_end ; 0x9ee4 ; o_entry: overlay entry offset (CS)

__zcode_start:

loc_PTRJ:
    mov ax, 0                        ; 0x000e
    call aztec_csav                  ; 0x0011
    cmp word [bss_830a], byte 0x0c   ; 0x0014
    jne short @..loc_PTRJ.l1         ; 0x0019
    call api_idx_0004_PPTR           ; 0x001b
@..loc_PTRJ.l1:
    mov ax, 0                        ; 0x001e
    ret                              ; 0x0021
%include "shared/api_idx_002a_STSK.asm"     ; 0x0022

%include "shared/api_idx_000a_QJGP.asm"     ; 0x00cb

%include "shared/loc_VNIO.asm"              ; 0x0149

%include "shared/api_idx_0006_SHUK.asm"     ; 0x018d

%include "shared/loc_HTQP.asm"              ; 0x02af

%include "vpops/api_idx_0054_NQHV.asm"     ; 0x035f

%include "shared/draw_fill_action_slot_table.asm" ; 0x0504

api_idx_000e_VRIR.api_idx1 equ draw_fill_action_slot_table
%include "shared/api_idx_000e_VRIR.asm"     ; 0x0704

%include "shared/api_idx_0004_ONRQ.asm"     ; 0x0a27

%include "shared/api_idx_001c_VLRT.asm"     ; 0x0b31

%include "vpops/api_idx_000e_LVUJ.asm"     ; 0x0d77

%include "shared/loc_SSIO.asm"              ; 0x0e6c

loc_KRMP.bss1 equ bss_90d6
%include "shared/loc_KRMP.asm"              ; 0x0ec8

%include "vpops/api_idx_0006_HRUL.asm"     ; 0x0f27

loc_RPUI.api_idx1 equ api_idx_0006_HRUL
%include "shared/loc_RPUI.asm"              ; 0x1076

%include "vpops/loc_UTQS.asm"              ; 0x108d

%include "vpops/loc_HTRU.asm"              ; 0x111b

%include "vpops/api_idx_000c_JUIH.asm"     ; 0x178a

%include "shared/draw_party_slot_letters.asm" ; 0x18c2

%include "shared/api_idx_0002_TIUI.asm"     ; 0x1941

%include "vpops/api_idx_0004_OQNP.asm"     ; 0x199c

%include "vpops/api_idx_000a_UMQI.asm"     ; 0x1a0d

%include "shared/loc_PTRP.asm"              ; 0x1a4b

%include "vpops/loc_VGIT.asm"              ; 0x1ad7

%include "shared/api_idx_000c_JQMN.asm"     ; 0x1b78

loc_SRQQ.bss1     equ bss_90d6
loc_SRQQ.api_idx1 equ api_idx_000a_UMQI
loc_SRQQ.api_idx2 equ api_idx_000c_JQMN
%include "shared/loc_SRQQ.asm"              ; 0x1c11

%include "vpops/api_idx_0044_NJNI.asm"     ; 0x1ca2

%include "vpops/api_idx_000a_GVNM.asm"     ; 0x2947

%include "shared/api_idx_0018_RGOS.asm"     ; 0x29f2

%include "vpops/api_idx_0004_LUOM.asm"     ; 0x2aef

loc_HTKI.api_idx1 equ api_idx_0004_LUOM
%include "shared/loc_HTKI.asm"              ; 0x2c51

%include "vpops/api_idx_0038_PVVG.asm"     ; 0x2c92

%include "vpops/api_idx_0094_NVHQ.asm"     ; 0x33db

%include "vpops/api_idx_0006_QUSK.asm"     ; 0x36c0

%include "vpops/api_idx_00d4_LUPQ.asm"     ; 0x3710

%include "vpops/api_idx_0004_PKLV.asm"     ; 0x4528

%include "vpops/api_idx_0002_ROVK.asm"     ; 0x45b3

%include "vpops/api_idx_0024_NKNU.asm"     ; 0x45f3

%include "vpops/api_idx_0002_GMMK.asm"     ; 0x4d91

%include "vpops/api_idx_0004_PPTR.asm"     ; 0x4e3b

loc_JHJT:
    pop word [dseg_90d4]             ; 0x4e9d
    pop cx                           ; 0x4ea1
    mov word [dseg_90d0], sp         ; 0x4ea2
    mov word [dseg_90d2], bp         ; 0x4ea6
    mov word [dseg_90cc], si         ; 0x4eaa
    mov word [dseg_90ce], di         ; 0x4eae
    cld                              ; 0x4eb2
    mov di, bss_90d6                 ; 0x4eb3
    mov cx, 0x938e                   ; 0x4eb6
    sub cx, di                       ; 0x4eb9
    shr cx, 1                        ; 0x4ebb
    je short @..loc_JHJT.l1          ; 0x4ebd
    sub ax, ax                       ; 0x4ebf
    rep stosw                        ; 0x4ec1
@..loc_JHJT.l1:
    call loc_PTRJ                    ; 0x4ec3
    mov bp, word [dseg_90d2]         ; 0x4ec6
    mov sp, word [dseg_90d0]         ; 0x4eca
    mov si, word [dseg_90cc]         ; 0x4ece
    mov di, word [dseg_90ce]         ; 0x4ed2
    push cx                          ; 0x4ed6
    jmp [dseg_90d4]                  ; 0x4ed7
__zdata_start:

    db 'V1.$$$', 0
    db 'V1.$$$', 0
    db 'V2.$$$', 0
    db 'V3.$$$', 0
    db 'V1.$$$', 0
    db 0x2a, 0x2a, 0x2a, 0x00
    db 'V.$$$', 0
    db 'V.$$$', 0
    times 11 db 0


__zimage_end:
