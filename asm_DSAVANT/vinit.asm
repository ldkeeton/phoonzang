%include "inc/structs/structs.inc"
%include "inc/structs/vinit.inc"
org 0
bits 16
%include "labels/vinit_foreign_labels.inc"

%include "labels/host_values.inc"

%ifndef IMAGE_BASE
IMAGE_BASE equ 0x000e
%endif

    ; Aztec C86 overlay header (14 bytes)
    dw 0x00f2                          ; o_magic: overlay signature (0x00f2)
    dw 0x5055                          ; o_corg: code load origin (memory offset)
    dw (__zdata_start - __zcode_start) ; 0x1609 ; o_csize: code size in bytes
    dw __zdataseg_end                  ; 0x9098 ; o_dorg: data load origin (memory offset)
    dw (__zimage_end - __zdata_start)  ; 0x0120 ; o_dsize: initialized data size
    dw 0x0002                          ; o_bss: uninitialized data size
    dw loc_15d9 - IMAGE_BASE + 0x5055  ; 0x6620 ; o_entry: overlay entry offset (CS)

__zcode_start:
dseg_0002 equ 0x0002
dseg_010c equ 0x010c
bss_0e0e equ 0x0e0e
bss_0e10 equ 0x0e10
bss_0e12 equ 0x0e12
bss_0e14 equ 0x0e14
bss_0e16 equ 0x0e16
bss_0e18 equ 0x0e18
bss_0e1a equ 0x0e1a
bss_0e1c equ 0x0e1c
bss_0e1e equ 0x0e1e
bss_0e20 equ 0x0e20
bss_0e22 equ 0x0e22
bss_0e24 equ 0x0e24
bss_0e26 equ 0x0e26
bss_0e28 equ 0x0e28
bss_0e2a equ 0x0e2a
bss_0e2c equ 0x0e2c
bss_0e2e equ 0x0e2e
bss_0e30 equ 0x0e30
bss_0e32 equ 0x0e32
bss_0e34 equ 0x0e34
bss_0e36 equ 0x0e36
bss_1008 equ 0x1008
bss_100a equ 0x100a
bss_5212 equ 0x5212
bss_5214 equ 0x5214
bss_5216 equ 0x5216
bss_5528 equ 0x5528
bss_552a equ 0x552a
bss_5978 equ 0x5978
bss_5979 equ 0x5979
bss_5980 equ 0x5980
bss_5984 equ 0x5984
bss_5986 equ 0x5986
bss_5989 equ 0x5989
bss_598a equ 0x598a
bss_598e equ 0x598e
bss_59f8 equ 0x59f8
bss_5b3e equ 0x5b3e
bss_5b6c equ 0x5b6c
bss_5b6e equ 0x5b6e
bss_5b70 equ 0x5b70
bss_69c8 equ 0x69c8
bss_82b6 equ 0x82b6
bss_830a equ 0x830a
bss_844c equ 0x844c
bss_844e equ 0x844e
bss_8450 equ 0x8450
bss_8d06 equ 0x8d06
bss_8d08 equ 0x8d08
bss_904c equ 0x904c
bss_9056 equ 0x9056
bss_9058 equ 0x9058
bss_905a equ 0x905a
bss_905c equ 0x905c
bss_9068 equ 0x9068
bss_906a equ 0x906a
bss_9088 equ 0x9088
dseg_91ae equ 0x91ae
dseg_91b0 equ 0x91b0
dseg_91b2 equ 0x91b2
dseg_91b4 equ 0x91b4
dseg_91b6 equ 0x91b6
bss_91b8 equ 0x91b8

loc_000e:
    mov ax, 0                        ; 0x000e
    call ds_aztec_csav               ; 0x0011
    mov ax, word [bss_830a]          ; 0x0014
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
%include "vinit/api_idx_0002.asm"          ; 0x0045

%include "vinit/api_idx_0002_2.asm"        ; 0x0084

%include "vinit/api_idx_0002_3.asm"        ; 0x00ca

%include "vinit/api_idx_0002_4.asm"        ; 0x010c

%include "vinit/api_idx_000c.asm"          ; 0x0146

%include "vinit/api_idx_0002_5.asm"        ; 0x08b7

%include "vinit/api_idx_0002_6.asm"        ; 0x094a

%include "vinit/api_idx_0004.asm"          ; 0x0988

%include "vinit/api_idx_000e.asm"          ; 0x09d3

%include "vinit/api_idx_0068.asm"          ; 0x0ac7

%include "vinit/api_idx_0002_7.asm"        ; 0x133d

%include "vinit/api_idx_0008.asm"          ; 0x1409

loc_15d9:
    pop word [dseg_91b6]             ; 0x15d9
    pop cx                           ; 0x15dd
    mov word [dseg_91b2], sp         ; 0x15de
    mov word [dseg_91b4], bp         ; 0x15e2
    mov word [dseg_91ae], si         ; 0x15e6
    mov word [dseg_91b0], di         ; 0x15ea
    cld                              ; 0x15ee
    mov di, bss_91b8                 ; 0x15ef
    mov cx, 0x91ba                   ; 0x15f2
    sub cx, di                       ; 0x15f5
    shr cx, 1                        ; 0x15f7
    je short @..local.l48            ; 0x15f9
    sub ax, ax                       ; 0x15fb
    rep stosw                        ; 0x15fd
@..local.l48:
    call loc_000e                    ; 0x15ff
    mov bp, word [dseg_91b4]         ; 0x1602
    mov sp, word [dseg_91b2]         ; 0x1606
    mov si, word [dseg_91ae]         ; 0x160a
    mov di, word [dseg_91b0]         ; 0x160e
    push cx                          ; 0x1612
    jmp [dseg_91b6]                  ; 0x1613
__zdata_start:

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


__zimage_end:
