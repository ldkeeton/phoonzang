%include "structs/structs.inc"
%include "structs/loc_290d.inc"
org 0
bits 16
%include "labels/vpops_foreign_labels.inc"

    ; header (8 bytes)
    db 0xf2, 0x00, 0x55, 0x50, 0xcd, 0x4e, 0x98, 0x90

data_0002 equ 0x0002
data_0e32 equ 0x0e32
data_0e36 equ 0x0e36
loc_290d equ 0x290d
loc_2925 equ 0x2925
loc_295e equ 0x295e
data_59fc equ 0x59fc
data_5b3e equ 0x5b3e
data_69c8 equ 0x69c8
data_7abc equ 0x7abc
data_7b04 equ 0x7b04
data_82e8 equ 0x82e8
data_82ee equ 0x82ee
data_830a equ 0x830a
data_8454 equ 0x8454
data_845e equ 0x845e
data_8466 equ 0x8466
data_8468 equ 0x8468
data_8482 equ 0x8482
data_8484 equ 0x8484
data_848e equ 0x848e
data_8d0a equ 0x8d0a
data_8d0c equ 0x8d0c
data_8d0e equ 0x8d0e
data_8d10 equ 0x8d10
data_8f20 equ 0x8f20
data_904e equ 0x904e
data_9050 equ 0x9050
data_9052 equ 0x9052
data_906c equ 0x906c
data_908a equ 0x908a
data_908c equ 0x908c
data_908e equ 0x908e
data_9090 equ 0x9090
data_9092 equ 0x9092
data_9094 equ 0x9094
data_90cc equ 0x90cc
data_90ce equ 0x90ce
data_90d0 equ 0x90d0
data_90d2 equ 0x90d2
data_90d4 equ 0x90d4
data_90d6 equ 0x90d6
data_9386 equ 0x9386
data_9388 equ 0x9388
data_938a equ 0x938a
data_938c equ 0x938c

    db 0x3e, 0x00, 0xb8, 0x02, 0xe4, 0x9e
loc_000e:
    mov ax, 0                        ; 0x000e
    call ds_dispatch_f40b            ; 0x0011
    cmp word [data_830a], byte 0x0c  ; 0x0014
    jne short @..local.l1            ; 0x0019
    call api_idx_0004_5              ; 0x001b
@..local.l1:
    mov ax, 0                        ; 0x001e
    ret                              ; 0x0021
%include "vpops/api_idx_002a.asm"

%include "vpops/api_idx_000a.asm"

%include "vpops/api_idx_0006.asm"

%include "vpops/api_idx_0054.asm"

%include "vpops/api_idx_000a_2.asm"

%include "vpops/api_idx_000e.asm"

%include "vpops/api_idx_0004.asm"

%include "vpops/api_idx_001c.asm"

%include "vpops/api_idx_000e_2.asm"

%include "vpops/api_idx_0006_2.asm"

%include "vpops/api_idx_000c.asm"

%include "vpops/api_idx_000c_2.asm"

%include "vpops/api_idx_0002.asm"

%include "vpops/api_idx_0004_2.asm"

%include "vpops/api_idx_000a_3.asm"

%include "vpops/api_idx_000c_3.asm"

%include "vpops/api_idx_0044.asm"

%include "vpops/api_idx_000a_4.asm"

%include "vpops/api_idx_0018.asm"

%include "vpops/api_idx_0004_3.asm"

%include "vpops/api_idx_0038.asm"

%include "vpops/api_idx_0094.asm"

%include "vpops/api_idx_0006_3.asm"

%include "vpops/api_idx_00d4.asm"

%include "vpops/api_idx_0004_4.asm"

%include "vpops/api_idx_0002_2.asm"

%include "vpops/api_idx_0024.asm"

%include "vpops/api_idx_0002_3.asm"

%include "vpops/api_idx_0004_5.asm"

loc_4e9d:
    pop word [data_90d4]             ; 0x4e9d
    pop cx                           ; 0x4ea1
    mov word [data_90d0], sp         ; 0x4ea2
    mov word [data_90d2], bp         ; 0x4ea6
    mov word [data_90cc], si         ; 0x4eaa
    mov word [data_90ce], di         ; 0x4eae
    cld                              ; 0x4eb2
    mov di, data_90d6                ; 0x4eb3
    mov cx, 0x938e                   ; 0x4eb6
    sub cx, di                       ; 0x4eb9
    shr cx, 1                        ; 0x4ebb
    je short @..local.l72            ; 0x4ebd
    sub ax, ax                       ; 0x4ebf
    rep stosw                        ; 0x4ec1
@..local.l72:
    call loc_000e                    ; 0x4ec3
    mov bp, word [data_90d2]         ; 0x4ec6
    mov sp, word [data_90d0]         ; 0x4eca
    mov si, word [data_90cc]         ; 0x4ece
    mov di, word [data_90ce]         ; 0x4ed2
    push cx                          ; 0x4ed6
    jmp [data_90d4]                  ; 0x4ed7

    db 'V1.$$$', 0
    db 'V1.$$$', 0
    db 'V2.$$$', 0
    db 'V3.$$$', 0
    db 'V1.$$$', 0
    db 0x2a, 0x2a, 0x2a, 0x00
    db 'V.$$$', 0
    db 'V.$$$', 0
    times 11 db 0

