%include "inc/structs/structs.inc"
%include "inc/structs/loc_238c.inc"
org 0
bits 16
%include "inc/labels/vdopt_foreign_labels.inc"

%ifndef IMAGE_BASE
IMAGE_BASE equ 0x000e
%endif

    ; Aztec C86 overlay header (14 bytes)
    dw 0x00f2      ; o_magic: overlay signature (0x00f2)
    dw 0x5055      ; o_corg: code load origin (memory offset)
    dw 0x4721      ; o_csize: code size in bytes
    dw 0x9098      ; o_dorg: data load origin (memory offset)
    dw 0x001e      ; o_dsize: initialized data size
    dw 0x0cde      ; o_bss: uninitialized data size
    dw 0x9720      ; o_entry: overlay entry offset (CS)

loc_238c equ 0x238c
dseg_0002 equ 0x0002
bss_0e0e equ 0x0e0e
bss_0e10 equ 0x0e10
bss_0e12 equ 0x0e12
bss_0e14 equ 0x0e14
bss_590e equ 0x590e
bss_5910 equ 0x5910
bss_598c equ 0x598c
bss_598e equ 0x598e
bss_59fc equ 0x59fc
bss_5b3e equ 0x5b3e
bss_5b6e equ 0x5b6e
bss_69c8 equ 0x69c8
bss_82ee equ 0x82ee
bss_82f2 equ 0x82f2
bss_82f4 equ 0x82f4
bss_82f6 equ 0x82f6
bss_82f8 equ 0x82f8
bss_82fa equ 0x82fa
bss_82fc equ 0x82fc
bss_82fe equ 0x82fe
bss_8300 equ 0x8300
bss_8302 equ 0x8302
bss_8304 equ 0x8304
bss_8306 equ 0x8306
bss_830a equ 0x830a
bss_830c equ 0x830c
bss_8af0 equ 0x8af0
bss_8d0e equ 0x8d0e
bss_8d10 equ 0x8d10
bss_8d12 equ 0x8d12
bss_8f3e equ 0x8f3e
bss_8f40 equ 0x8f40
bss_8f42 equ 0x8f42
bss_8f44 equ 0x8f44
bss_8f46 equ 0x8f46
bss_8f48 equ 0x8f48
bss_904e equ 0x904e
bss_9050 equ 0x9050
bss_905a equ 0x905a
bss_9068 equ 0x9068
bss_906a equ 0x906a
bss_908a equ 0x908a
bss_908c equ 0x908c
bss_908e equ 0x908e
bss_9090 equ 0x9090
bss_9092 equ 0x9092
bss_9094 equ 0x9094
dseg_90ac equ 0x90ac
dseg_90ae equ 0x90ae
dseg_90b0 equ 0x90b0
dseg_90b2 equ 0x90b2
dseg_90b4 equ 0x90b4
bss_90b6 equ 0x90b6
bss_90b8 equ 0x90b8
bss_9342 equ 0x9342
bss_9344 equ 0x9344
bss_95ce equ 0x95ce
bss_9858 equ 0x9858
bss_9ae2 equ 0x9ae2
bss_9ae4 equ 0x9ae4
bss_9ae6 equ 0x9ae6
bss_9ae8 equ 0x9ae8
bss_9aea equ 0x9aea
bss_9aec equ 0x9aec
bss_9aee equ 0x9aee
bss_9af0 equ 0x9af0
bss_9af2 equ 0x9af2
bss_9af4 equ 0x9af4
bss_9af6 equ 0x9af6
bss_9af8 equ 0x9af8
bss_9afa equ 0x9afa
bss_9afc equ 0x9afc
bss_9afe equ 0x9afe
bss_9b00 equ 0x9b00
bss_9b02 equ 0x9b02
bss_9b04 equ 0x9b04
bss_9b06 equ 0x9b06
bss_9b08 equ 0x9b08
bss_9b0a equ 0x9b0a
bss_9b0c equ 0x9b0c
bss_9b5e equ 0x9b5e
bss_9d90 equ 0x9d90

loc_000e:
    mov ax, 0                        ; 0x000e
    call ds_aztec_csav               ; 0x0011
    cmp word [bss_906a], byte 0      ; 0x0014
    je short @..local.l1             ; 0x0019
    mov ax, 1                        ; 0x001b
    push ax                          ; 0x001e
    push word [bss_9068]             ; 0x001f
    call ds_app_file_16a0            ; 0x0023
    add sp, byte 4                   ; 0x0026
    mov word [bss_906a], 0           ; 0x0029
@..local.l1:
    mov word [bss_90b6], 0           ; 0x002f
    mov word [bss_90b8], 0           ; 0x0035
    cmp word [bss_830a], byte 0x13   ; 0x003b
    jne short @..local.l2            ; 0x0040
    mov ax, 0xe                      ; 0x0042
    push ax                          ; 0x0045
    call ds_app_1371                 ; 0x0046
    pop cx                           ; 0x0049
    mov ax, 1                        ; 0x004a
    push ax                          ; 0x004d
    mov ax, 2                        ; 0x004e
    push ax                          ; 0x0051
    call ds_app_file_2863            ; 0x0052
    add sp, byte 4                   ; 0x0055
    mov ax, 2                        ; 0x0058
    push ax                          ; 0x005b
    mov ax, 3                        ; 0x005c
    push ax                          ; 0x005f
    call ds_app_file_2863            ; 0x0060
    add sp, byte 4                   ; 0x0063
    push word [bss_8af0]             ; 0x0066
    call api_idx_0004_7              ; 0x006a
    pop cx                           ; 0x006d
    mov ax, 1                        ; 0x006e
    push ax                          ; 0x0071
    call ds_app_1371                 ; 0x0072
    pop cx                           ; 0x0075
    mov ax, 2                        ; 0x0076
    push ax                          ; 0x0079
    call ds_app_1371                 ; 0x007a
    pop cx                           ; 0x007d
    mov ax, 0xe                      ; 0x007e
    push ax                          ; 0x0081
    mov ax, 0                        ; 0x0082
    push ax                          ; 0x0085
    call ds_app_file_2863            ; 0x0086
    add sp, byte 4                   ; 0x0089
@..local.l2:
    cmp word [bss_830a], byte 0x14   ; 0x008c
    jne short @..local.l3            ; 0x0091
    push word [bss_8af0]             ; 0x0093
    call api_idx_0094                ; 0x0097
    pop cx                           ; 0x009a
@..local.l3:
    mov word [bss_830a], 5           ; 0x009b
    mov ax, 0                        ; 0x00a1
    ret                              ; 0x00a4
loc_00a5:
    mov ax, 0                        ; 0x00a5
    call ds_aztec_csav               ; 0x00a8
    mov bx, word [bss_0e14]          ; 0x00ab
    mov si, word [bp + 0x4]          ; 0x00af
    mov al, byte [bx + si + 0x490]   ; 0x00b2
    sub ah, ah                       ; 0x00b6
    cmp ax, word [bp + 0x6]          ; 0x00b8
    jg short @..local.l4             ; 0x00bb
    add ax, strict word 7            ; 0x00bd
    cmp ax, word [bp + 0x6]          ; 0x00c0
    jl short @..local.l4             ; 0x00c3
    mov al, byte [bx + si + 0x4a0]   ; 0x00c5
    sub ah, ah                       ; 0x00c9
    cmp ax, word [bp + 0x8]          ; 0x00cb
    jg short @..local.l4             ; 0x00ce
    add ax, strict word 7            ; 0x00d0
    cmp ax, word [bp + 0x8]          ; 0x00d3
    jl short @..local.l4             ; 0x00d6
    mov ax, si                       ; 0x00d8
    ret                              ; 0x00da
@..local.l4:
    mov ax, 0xffff                   ; 0x00db
    ret                              ; 0x00de
%include "vdopt/api_idx_0004.asm"          ; 0x00df

%include "vdopt/api_idx_0002.asm"          ; 0x019b

%include "vdopt/api_idx_002a.asm"          ; 0x020b

%include "vdopt/api_idx_0004_2.asm"        ; 0x02c3

%include "vdopt/api_idx_0006.asm"          ; 0x030c

%include "vdopt/api_idx_0004_3.asm"        ; 0x0382

%include "vdopt/api_idx_0002_2.asm"        ; 0x0473

%include "vdopt/api_idx_0058.asm"          ; 0x0565

%include "vdopt/api_idx_0002_3.asm"        ; 0x065b

%include "vdopt/api_idx_000e.asm"          ; 0x06e8

%include "vdopt/api_idx_0014.asm"          ; 0x09c0

%include "vdopt/leaf_loc_0d80.asm"         ; 0x0d80

%include "vdopt/leaf_loc_0d88.asm"         ; 0x0d88

%include "vdopt/leaf_loc_0d90.asm"         ; 0x0d90

%include "vdopt/leaf_loc_0d98.asm"         ; 0x0d98

%include "vdopt/leaf_loc_0e80.asm"         ; 0x0e80

%include "vdopt/leaf_loc_0e88.asm"         ; 0x0e88

%include "vdopt/leaf_loc_0e90.asm"         ; 0x0e90

%include "vdopt/leaf_loc_0e98.asm"         ; 0x0e98

%include "vdopt/api_idx_000a.asm"          ; 0x0f7f

%include "vdopt/api_idx_0012.asm"          ; 0x0fd3

%include "vdopt/leaf_loc_1499.asm"         ; 0x1499

%include "vdopt/api_idx_000a_2.asm"        ; 0x190b

%include "vdopt/api_idx_0002_4.asm"        ; 0x195b

%include "vdopt/api_idx_00fa.asm"          ; 0x1a5d

%include "vdopt/api_idx_0008.asm"          ; 0x1ccf

%include "vdopt/api_idx_000c.asm"          ; 0x238d

%include "vdopt/api_idx_000c_2.asm"        ; 0x25a8

%include "vdopt/api_idx_0002_5.asm"        ; 0x2627

%include "vdopt/api_idx_0004_4.asm"        ; 0x2682

%include "vdopt/api_idx_000a_3.asm"        ; 0x26f3

%include "vdopt/api_idx_000c_3.asm"        ; 0x285e

%include "vdopt/api_idx_0044.asm"          ; 0x2988

%include "vdopt/api_idx_0008_2.asm"        ; 0x362f

%include "vdopt/api_idx_0004_5.asm"        ; 0x36bb

%include "vdopt/api_idx_0018.asm"          ; 0x378c

%include "vdopt/api_idx_0004_6.asm"        ; 0x3889

%include "vdopt/api_idx_0038.asm"          ; 0x3a2c

%include "vdopt/api_idx_0094.asm"          ; 0x417c

%include "vdopt/api_idx_0004_7.asm"        ; 0x45dd

%include "vdopt/leaf_loc_4717.asm"         ; 0x4717

