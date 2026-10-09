%include "structs/structs.inc"
%include "structs/data_91b8.inc"
org 0
bits 16
%include "labels/vinit_foreign_labels.inc"

    ; header (8 bytes)
    db 0xf2, 0x00, 0x55, 0x50, 0x09, 0x16, 0x98, 0x90

data_0002 equ 0x0002
data_0e10 equ 0x0e10
data_0e12 equ 0x0e12
data_0e14 equ 0x0e14
data_0e16 equ 0x0e16
data_0e18 equ 0x0e18
data_0e1a equ 0x0e1a
data_0e1c equ 0x0e1c
data_0e1e equ 0x0e1e
data_0e20 equ 0x0e20
data_0e22 equ 0x0e22
data_0e24 equ 0x0e24
data_0e26 equ 0x0e26
data_0e28 equ 0x0e28
data_0e2a equ 0x0e2a
data_0e2c equ 0x0e2c
data_0e2e equ 0x0e2e
data_0e30 equ 0x0e30
data_0e32 equ 0x0e32
data_0e36 equ 0x0e36
data_1008 equ 0x1008
data_100a equ 0x100a
data_5212 equ 0x5212
data_5214 equ 0x5214
data_5216 equ 0x5216
data_5528 equ 0x5528
data_552a equ 0x552a
data_5978 equ 0x5978
data_5979 equ 0x5979
data_5980 equ 0x5980
data_5984 equ 0x5984
data_5986 equ 0x5986
data_5989 equ 0x5989
data_598a equ 0x598a
data_598e equ 0x598e
data_59f8 equ 0x59f8
data_5b3e equ 0x5b3e
data_5b6c equ 0x5b6c
data_5b6e equ 0x5b6e
data_5b70 equ 0x5b70
data_69c8 equ 0x69c8
data_82b6 equ 0x82b6
data_830a equ 0x830a
data_844c equ 0x844c
data_844e equ 0x844e
data_8450 equ 0x8450
data_8d06 equ 0x8d06
data_8d08 equ 0x8d08
data_904c equ 0x904c
data_9056 equ 0x9056
data_9058 equ 0x9058
data_905a equ 0x905a
data_905c equ 0x905c
data_9068 equ 0x9068
data_906a equ 0x906a
data_9088 equ 0x9088
data_91ae equ 0x91ae
data_91b0 equ 0x91b0
data_91b2 equ 0x91b2
data_91b4 equ 0x91b4
data_91b6 equ 0x91b6
data_91b8 equ 0x91b8

    db 0x20, 0x01, 0x02, 0x00, 0x20, 0x66
loc_000e:
    mov ax, 0                        ; 0x000e
    call ds_dispatch_f40b            ; 0x0011
    mov ax, word [data_830a]         ; 0x0014
    jmp short @..local.l5            ; 0x0017
@..local.l1:
    call loc_03a8                    ; 0x0019
    jmp short @..local.l6            ; 0x001c
@..local.l2:
    call api_idx_0068                ; 0x001e
    jmp short @..local.l6            ; 0x0021
@..local.l3:
    call api_idx_0002_7              ; 0x0023
    jmp short @..local.l6            ; 0x0026
@..local.l4:
    call api_idx_0008                ; 0x0028
    jmp short @..local.l6            ; 0x002b
@..local.l5:
    cmp ax, strict word 0            ; 0x002d
    je short @..local.l1             ; 0x0030
    cmp ax, strict word 1            ; 0x0032
    je short @..local.l2             ; 0x0035
    cmp ax, strict word 2            ; 0x0037
    je short @..local.l4             ; 0x003a
    cmp ax, strict word 8            ; 0x003c
    je short @..local.l3             ; 0x003f
@..local.l6:
    mov ax, 0                        ; 0x0041
    ret                              ; 0x0044
%include "vinit/api_idx_0002.asm"

%include "vinit/api_idx_0002_2.asm"

%include "vinit/api_idx_0002_3.asm"

%include "vinit/api_idx_0002_4.asm"

%include "vinit/api_idx_000c.asm"

%include "vinit/api_idx_0002_5.asm"

%include "vinit/api_idx_0002_6.asm"

%include "vinit/api_idx_0004.asm"

%include "vinit/api_idx_000e.asm"

%include "vinit/api_idx_0068.asm"

%include "vinit/api_idx_0002_7.asm"

%include "vinit/api_idx_0008.asm"

loc_15d9:
    pop word [data_91b6]             ; 0x15d9
    pop cx                           ; 0x15dd
    mov word [data_91b2], sp         ; 0x15de
    mov word [data_91b4], bp         ; 0x15e2
    mov word [data_91ae], si         ; 0x15e6
    mov word [data_91b0], di         ; 0x15ea
    cld                              ; 0x15ee
    mov di, data_91b8                ; 0x15ef
    mov cx, 0x91ba                   ; 0x15f2
    sub cx, di                       ; 0x15f5
    shr cx, 1                        ; 0x15f7
    je short @..local.l48            ; 0x15f9
    sub ax, ax                       ; 0x15fb
    rep stosw                        ; 0x15fd
@..local.l48:
    call loc_000e                    ; 0x15ff
    mov bp, word [data_91b4]         ; 0x1602
    mov sp, word [data_91b2]         ; 0x1606
    mov si, word [data_91ae]         ; 0x160a
    mov di, word [data_91b0]         ; 0x160e
    push cx                          ; 0x1612
    jmp [data_91b6]                  ; 0x1613

    db 'SCENARIO.HDR', 0
    db 'VBFONT0.VGA', 0
    db 'VBFONT1.VGA', 0
    db 'VBFONT2.VGA', 0
    db 'VBFONT3.VGA', 0
    db 'VCFONT1.VGA', 0
    db 'VCPORT0.VGA', 0
    db 'VCFONT2.VGA', 0
    db 'VCFONT3.VGA', 0
    db 'VMPNTR0.VGA', 0
    db 'VMPNTR1.VGA', 0
    db 'VMPNTR2.VGA', 0
    db 'BASEDATA.VGA', 0
    db 'MASTER.HDR', 0
    db 'DISK.HDR', 0
    db 'MSG.HDR', 0
    db 'PCFILE.DBS', 0
    db 'MISC.HDR', 0
    db 'MSG.DBS', 0
    db 'SCENARIO.DBS', 0
    db 'PALETTE.DEF', 0
    db 'TIT1SCRN.VGA', 0
    db 'TIT2SCRN.VGA', 0
    db 'MAINSCRN.VGA', 0
    times 10 db 0

