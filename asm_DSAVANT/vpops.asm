%include "inc/structs/structs.inc"
%include "inc/structs/loc_290d.inc"
org 0
bits 16
%include "inc/labels/vpops_foreign_labels.inc"

%ifndef IMAGE_BASE
IMAGE_BASE equ 0x0008
%endif

    ; header (8 bytes)
    db 0xf2, 0x00, 0x55, 0x50, 0xcd, 0x4e, 0x98, 0x90

loc_290d equ 0x290d
loc_2925 equ 0x2925
loc_295e equ 0x295e
dseg_0002 equ 0x0002
dseg_0e32 equ 0x0e32
dseg_0e36 equ 0x0e36
dseg_59fc equ 0x59fc
dseg_5b3e equ 0x5b3e
dseg_69c8 equ 0x69c8
dseg_7abc equ 0x7abc
dseg_7b04 equ 0x7b04
dseg_82e8 equ 0x82e8
dseg_82ee equ 0x82ee
dseg_830a equ 0x830a
dseg_8454 equ 0x8454
dseg_845e equ 0x845e
dseg_8466 equ 0x8466
dseg_8468 equ 0x8468
dseg_8482 equ 0x8482
dseg_8484 equ 0x8484
dseg_848e equ 0x848e
dseg_8d0a equ 0x8d0a
dseg_8d0c equ 0x8d0c
dseg_8d0e equ 0x8d0e
dseg_8d10 equ 0x8d10
dseg_8f20 equ 0x8f20
dseg_904e equ 0x904e
dseg_9050 equ 0x9050
dseg_9052 equ 0x9052
dseg_906c equ 0x906c
dseg_908a equ 0x908a
dseg_908c equ 0x908c
dseg_908e equ 0x908e
dseg_9090 equ 0x9090
dseg_9092 equ 0x9092
dseg_9094 equ 0x9094
dseg_90cc equ 0x90cc
dseg_90ce equ 0x90ce
dseg_90d0 equ 0x90d0
dseg_90d2 equ 0x90d2
dseg_90d4 equ 0x90d4
dseg_90d6 equ 0x90d6
dseg_9386 equ 0x9386
dseg_9388 equ 0x9388
dseg_938a equ 0x938a
dseg_938c equ 0x938c

    db 0x3e, 0x00, 0xb8, 0x02, 0xe4, 0x9e
loc_000e:
    mov ax, 0                        ; 0x000e
    call ds_dispatch_f40b            ; 0x0011
    cmp word [dseg_830a], byte 0x0c  ; 0x0014
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
    pop word [dseg_90d4]             ; 0x4e9d
    pop cx                           ; 0x4ea1
    mov word [dseg_90d0], sp         ; 0x4ea2
    mov word [dseg_90d2], bp         ; 0x4ea6
    mov word [dseg_90cc], si         ; 0x4eaa
    mov word [dseg_90ce], di         ; 0x4eae
    cld                              ; 0x4eb2
    mov di, dseg_90d6                ; 0x4eb3
    mov cx, 0x938e                   ; 0x4eb6
    sub cx, di                       ; 0x4eb9
    shr cx, 1                        ; 0x4ebb
    je short @..local.l72            ; 0x4ebd
    sub ax, ax                       ; 0x4ebf
    rep stosw                        ; 0x4ec1
@..local.l72:
    call loc_000e                    ; 0x4ec3
    mov bp, word [dseg_90d2]         ; 0x4ec6
    mov sp, word [dseg_90d0]         ; 0x4eca
    mov si, word [dseg_90cc]         ; 0x4ece
    mov di, word [dseg_90ce]         ; 0x4ed2
    push cx                          ; 0x4ed6
    jmp [dseg_90d4]                  ; 0x4ed7

    db 'V1.$$$', 0
    db 'V1.$$$', 0
    db 'V2.$$$', 0
    db 'V3.$$$', 0
    db 'V1.$$$', 0
    db 0x2a, 0x2a, 0x2a, 0x00
    db 'V.$$$', 0
    db 'V.$$$', 0
    times 11 db 0

