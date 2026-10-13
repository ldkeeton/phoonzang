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
    dw loc_4e9d - IMAGE_BASE + __zres_end ; 0x9ee4 ; o_entry: overlay entry offset (CS)

__zcode_start:

loc_000e:
    mov ax, 0                        ; 0x000e
    call aztec_csav                  ; 0x0011
    cmp word [bss_830a], byte 0x0c   ; 0x0014
    jne short @..loc_000e.l1         ; 0x0019
    call api_idx_0004_5              ; 0x001b
@..loc_000e.l1:
    mov ax, 0                        ; 0x001e
    ret                              ; 0x0021
%include "vpops/api_idx_002a.asm"          ; 0x0022

%include "vpops/api_idx_000a.asm"          ; 0x00cb

%include "vpops/api_idx_0006.asm"          ; 0x018d

%include "vpops/api_idx_0054.asm"          ; 0x035f

%include "vpops/api_idx_000a_2.asm"        ; 0x0504

%include "vpops/api_idx_000e.asm"          ; 0x0704

%include "vpops/api_idx_0004.asm"          ; 0x0a27

%include "vpops/api_idx_001c.asm"          ; 0x0b31

%include "vpops/api_idx_000e_2.asm"        ; 0x0d77

%include "vpops/api_idx_0006_2.asm"        ; 0x0f27

%include "vpops/api_idx_000c.asm"          ; 0x178a

%include "vpops/api_idx_000c_2.asm"        ; 0x18c2

%include "vpops/api_idx_0002.asm"          ; 0x1941

%include "vpops/api_idx_0004_2.asm"        ; 0x199c

%include "vpops/api_idx_000a_3.asm"        ; 0x1a0d

%include "vpops/api_idx_000c_3.asm"        ; 0x1b78

%include "vpops/api_idx_0044.asm"          ; 0x1ca2

%include "vpops/api_idx_000a_4.asm"        ; 0x2947

%include "vpops/api_idx_0018.asm"          ; 0x29f2

%include "vpops/api_idx_0004_3.asm"        ; 0x2aef

%include "vpops/api_idx_0038.asm"          ; 0x2c92

%include "vpops/api_idx_0094.asm"          ; 0x33db

%include "vpops/api_idx_0006_3.asm"        ; 0x36c0

%include "vpops/api_idx_00d4.asm"          ; 0x3710

%include "vpops/api_idx_0004_4.asm"        ; 0x4528

%include "vpops/api_idx_0002_2.asm"        ; 0x45b3

%include "vpops/api_idx_0024.asm"          ; 0x45f3

%include "vpops/api_idx_0002_3.asm"        ; 0x4d91

%include "vpops/api_idx_0004_5.asm"        ; 0x4e3b

loc_4e9d:
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
    je short @..loc_4e9d.l1          ; 0x4ebd
    sub ax, ax                       ; 0x4ebf
    rep stosw                        ; 0x4ec1
@..loc_4e9d.l1:
    call loc_000e                    ; 0x4ec3
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
