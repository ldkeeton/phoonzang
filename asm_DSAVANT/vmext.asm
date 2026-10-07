%include "structs/structs.inc"
%include "structs/loc_2e75.inc"
org 0
bits 16
%include "labels/vmext_foreign_labels.inc"

    ; header (8 bytes)
    db 0xf2, 0x00, 0x55, 0x50, 0x4b, 0x52, 0x98, 0x90

loc_0307 equ 0x0307
loc_0309 equ 0x0309
loc_030b equ 0x030b
loc_030d equ 0x030d
loc_030f equ 0x030f
data_03ae equ 0x03ae
data_03dc equ 0x03dc
loc_08e0 equ 0x08e0
data_0e0e equ 0x0e0e
data_0e12 equ 0x0e12
data_0e14 equ 0x0e14
loc_0fe7 equ 0x0fe7
loc_106d equ 0x106d
loc_10d8 equ 0x10d8
loc_10e5 equ 0x10e5
loc_1101 equ 0x1101
loc_1115 equ 0x1115
loc_1199 equ 0x1199
loc_11a1 equ 0x11a1
loc_1227 equ 0x1227
loc_127a equ 0x127a
loc_1297 equ 0x1297
loc_12a9 equ 0x12a9
loc_12c6 equ 0x12c6
loc_12dc equ 0x12dc
loc_12f8 equ 0x12f8
loc_1372 equ 0x1372
loc_1a65 equ 0x1a65
loc_1e94 equ 0x1e94
loc_2361 equ 0x2361
loc_2373 equ 0x2373
loc_23aa equ 0x23aa
loc_23e7 equ 0x23e7
loc_240a equ 0x240a
loc_240d equ 0x240d
loc_241b equ 0x241b
loc_2468 equ 0x2468
loc_246a equ 0x246a
loc_249c equ 0x249c
loc_24a2 equ 0x24a2
loc_24a4 equ 0x24a4
loc_24af equ 0x24af
loc_24b1 equ 0x24b1
loc_24be equ 0x24be
loc_24dd equ 0x24dd
loc_2502 equ 0x2502
loc_2508 equ 0x2508
loc_250e equ 0x250e
loc_2513 equ 0x2513
loc_251e equ 0x251e
loc_2520 equ 0x2520
loc_2522 equ 0x2522
loc_2524 equ 0x2524
loc_2526 equ 0x2526
loc_2528 equ 0x2528
loc_2a04 equ 0x2a04
loc_2a0d equ 0x2a0d
loc_2a19 equ 0x2a19
loc_2a1f equ 0x2a1f
loc_2a41 equ 0x2a41
loc_2a4e equ 0x2a4e
loc_2a65 equ 0x2a65
loc_2a71 equ 0x2a71
loc_2a77 equ 0x2a77
loc_2a7a equ 0x2a7a
loc_2a88 equ 0x2a88
loc_2a91 equ 0x2a91
loc_2a9a equ 0x2a9a
loc_2aef equ 0x2aef
loc_2b14 equ 0x2b14
loc_2b45 equ 0x2b45
loc_2b9f equ 0x2b9f
loc_2ba1 equ 0x2ba1
loc_2bfb equ 0x2bfb
loc_2c13 equ 0x2c13
loc_2c32 equ 0x2c32
loc_2c4e equ 0x2c4e
loc_2c7c equ 0x2c7c
loc_2cd6 equ 0x2cd6
loc_2cd9 equ 0x2cd9
loc_2cea equ 0x2cea
loc_2cf3 equ 0x2cf3
loc_2d34 equ 0x2d34
loc_2d83 equ 0x2d83
loc_2d85 equ 0x2d85
loc_2de1 equ 0x2de1
loc_2e21 equ 0x2e21
loc_2e22 equ 0x2e22
loc_2e39 equ 0x2e39
loc_2e3a equ 0x2e3a
loc_2e5b equ 0x2e5b
loc_2e69 equ 0x2e69
loc_2e6b equ 0x2e6b
loc_2e6d equ 0x2e6d
loc_2e6f equ 0x2e6f
loc_2e71 equ 0x2e71
loc_2e73 equ 0x2e73
loc_2e75 equ 0x2e75
loc_2e91 equ 0x2e91
loc_2ec7 equ 0x2ec7
loc_2ee6 equ 0x2ee6
loc_2ee8 equ 0x2ee8
data_5910 equ 0x5910
data_5b55 equ 0x5b55
data_5b6e equ 0x5b6e
data_5b70 equ 0x5b70
data_7abe equ 0x7abe
data_7b05 equ 0x7b05
data_7d3c equ 0x7d3c
data_82e8 equ 0x82e8
data_82ea equ 0x82ea
data_82ee equ 0x82ee
data_830a equ 0x830a
data_830c equ 0x830c
data_8456 equ 0x8456
data_8af0 equ 0x8af0
data_8d12 equ 0x8d12
data_8f1c equ 0x8f1c
data_8f1e equ 0x8f1e
data_8f20 equ 0x8f20
data_8f22 equ 0x8f22
data_8f28 equ 0x8f28
data_8f2a equ 0x8f2a
data_8f2c equ 0x8f2c
data_8f2e equ 0x8f2e
data_8f30 equ 0x8f30
data_8f32 equ 0x8f32
data_8f34 equ 0x8f34
data_8f36 equ 0x8f36
data_8f38 equ 0x8f38
data_8f3a equ 0x8f3a
data_8f3c equ 0x8f3c
data_8f3e equ 0x8f3e
data_8f40 equ 0x8f40
data_8f42 equ 0x8f42
data_8f44 equ 0x8f44
data_8f46 equ 0x8f46
data_8f48 equ 0x8f48
data_905a equ 0x905a
data_905e equ 0x905e
data_9068 equ 0x9068
data_906a equ 0x906a
data_908a equ 0x908a
data_908c equ 0x908c
data_9180 equ 0x9180
data_9188 equ 0x9188
data_918a equ 0x918a
data_91a4 equ 0x91a4
data_91a6 equ 0x91a6
data_91a8 equ 0x91a8
data_91aa equ 0x91aa
data_91b8 equ 0x91b8
data_92f2 equ 0x92f2
data_9aec equ 0x9aec
data_9b08 equ 0x9b08
data_9b0a equ 0x9b0a
data_9b0c equ 0x9b0c
data_9b0e equ 0x9b0e
data_9b10 equ 0x9b10
data_9b12 equ 0x9b12
data_9b14 equ 0x9b14
data_9b16 equ 0x9b16
data_9b18 equ 0x9b18
data_9b1a equ 0x9b1a

    db 0xe8, 0x00, 0x9c ; call ds_dispatch_9c0b
    or word [bp + si - 0x005e], sp   ; 0x000b
api_idx_0002:
    mov ax, 0xfffe                   ; 0x000e
    call ds_dispatch_f40b            ; 0x0011
    mov word [data_8f22], 0          ; 0x0014
    mov word [data_9180], 5          ; 0x001a
    les bx, word [0x0002]            ; 0x0020
    mov ax, word [es:bx]             ; 0x0024
    mov dx, word [es:bx + 0x2]       ; 0x0027
    mov word [data_908c], dx         ; 0x002b
    mov word [data_908a], ax         ; 0x002f
    mov word [bp - 0x0002], 0        ; 0x0032
@..api_idx_0002.l1:
    mov ax, word [bp - 0x0002]       ; 0x0037
    shl ax, 1                        ; 0x003a
    mov bx, ax                       ; 0x003c
    mov word [bx - 0x6e7e], 0        ; 0x003e
    inc word [bp - 0x0002]           ; 0x0044
    mov ax, word [bp - 0x0002]       ; 0x0047
    cmp ax, strict word 3            ; 0x004a
    jl short @..api_idx_0002.l1      ; 0x004d
    cmp word [data_906a], byte 0     ; 0x004f
    je short @..api_idx_0002.l2      ; 0x0054
    mov ax, 1                        ; 0x0056
    push ax                          ; 0x0059
    push word [data_9068]            ; 0x005a
    call ds_dispatch_c459            ; 0x005e
    add sp, byte 4                   ; 0x0061
    mov word [data_906a], 0          ; 0x0064
@..api_idx_0002.l2:
    cmp word [data_830a], byte 0x17  ; 0x006a
    jne short @..api_idx_0002.l3     ; 0x006f
    call api_idx_0002_4              ; 0x0071
    mov ax, 0xa                      ; 0x0074
    push ax                          ; 0x0077
    call ds_dispatch_b7a9            ; 0x0078
    pop cx                           ; 0x007b
    add ax, strict word 4            ; 0x007c
    push ax                          ; 0x007f
    call api_idx_008a                ; 0x0080
    pop cx                           ; 0x0083
@..api_idx_0002.l3:
    cmp word [data_830a], byte 0x1b  ; 0x0084
    jne short @..api_idx_0002.l4     ; 0x0089
    call api_idx_0012                ; 0x008b
@..api_idx_0002.l4:
    cmp word [data_830a], byte 0x1e  ; 0x008e
    jne short @..api_idx_0002.l5     ; 0x0093
    push word [data_8af0]            ; 0x0095
    call api_idx_0008_2              ; 0x0099
    pop cx                           ; 0x009c
@..api_idx_0002.l5:
    cmp word [data_830a], byte 0x1f  ; 0x009d
    jne short @..api_idx_0002.l6     ; 0x00a2
    push word [data_8af0]            ; 0x00a4
    call math_loc_15af               ; 0x00a8
    pop cx                           ; 0x00ab
@..api_idx_0002.l6:
    mov word [data_830a], 5          ; 0x00ac
    mov ax, 0                        ; 0x00b2
    ret                              ; 0x00b5
loc_00b6:
    mov ax, 0                        ; 0x00b6
    call ds_dispatch_f40b            ; 0x00b9
    mov bx, word [data_0e14]         ; 0x00bc
    mov si, word [bp + 0x4]          ; 0x00c0
    mov al, byte [bx + si + 0x490]   ; 0x00c3
    sub ah, ah                       ; 0x00c7
    cmp ax, word [bp + 0x6]          ; 0x00c9
    jg short @..local.l1             ; 0x00cc
    add ax, strict word 7            ; 0x00ce
    cmp ax, word [bp + 0x6]          ; 0x00d1
    jl short @..local.l1             ; 0x00d4
    mov al, byte [bx + si + 0x4a0]   ; 0x00d6
    sub ah, ah                       ; 0x00da
    cmp ax, word [bp + 0x8]          ; 0x00dc
    jg short @..local.l1             ; 0x00df
    add ax, strict word 7            ; 0x00e1
    cmp ax, word [bp + 0x8]          ; 0x00e4
    jl short @..local.l1             ; 0x00e7
    mov ax, si                       ; 0x00e9
    ret                              ; 0x00eb
@..local.l1:
    mov ax, 0xffff                   ; 0x00ec
    ret                              ; 0x00ef
%include "vmext/api_idx_0004.asm"

@..api_idx_0004.l2:
    jmp short @..api_idx_0004.l1     ; 0x0165
@..api_idx_0004.l3:
    mov ax, word [bp + 0xa]          ; 0x0167
    push ax                          ; 0x016a
    mov bx, word [data_0e14]         ; 0x016b
    mov si, word [bp - 0x0004]       ; 0x016f
    mov al, byte [bx + si + 0x490]   ; 0x0172
    sub ah, ah                       ; 0x0176
    mov cx, ax                       ; 0x0178
    pop ax                           ; 0x017a
    sub ax, cx                       ; 0x017b
    mov bx, word [bp + 0x4]          ; 0x017d
    mov word [bx], ax                ; 0x0180
    mov ax, word [bp + 0xc]          ; 0x0182
    push ax                          ; 0x0185
    mov bx, word [data_0e14]         ; 0x0186
    mov si, word [bp - 0x0004]       ; 0x018a
    mov al, byte [bx + si + 0x4a0]   ; 0x018d
    sub ah, ah                       ; 0x0191
    mov cx, ax                       ; 0x0193
    pop ax                           ; 0x0195
    sub ax, cx                       ; 0x0196
    mov bx, word [bp + 0x6]          ; 0x0198
    mov word [bx], ax                ; 0x019b
    mov ax, word [bp - 0x0004]       ; 0x019d
    mov bx, word [bp + 0x8]          ; 0x01a0
    mov word [bx], ax                ; 0x01a3
    mov word [data_8f48], ax         ; 0x01a5
    mov ax, 0                        ; 0x01a8
    ret                              ; 0x01ab
%include "vmext/api_idx_0002_2.asm"

@..api_idx_0002_2.l2:
    mov al, byte [bx + si + 0x690]   ; 0x01d0
    sub ah, ah                       ; 0x01d4
    cmp ax, word [bp + 0x4]          ; 0x01d6
    jne short @..api_idx_0002_2.l3   ; 0x01d9
    mov al, byte [bx + si + 0x780]   ; 0x01db
    sub ah, ah                       ; 0x01df
    cmp ax, word [bp + 0x6]          ; 0x01e1
    jne short @..api_idx_0002_2.l3   ; 0x01e4
    cmp byte [bx + si + 0x5a0], 0    ; 0x01e6
    jbe short @..api_idx_0002_2.l3   ; 0x01eb
    mov al, byte [bx + si + 0x960]   ; 0x01ed
    sub ah, ah                       ; 0x01f1
    push ax                          ; 0x01f3
    mov ax, word [data_830c]         ; 0x01f4
    mov cx, 4                        ; 0x01f7
    shl ax, cl                       ; 0x01fa
    add ax, 0x8d14                   ; 0x01fc
    push ax                          ; 0x01ff
    call ds_dispatch_ec74            ; 0x0200
    add sp, byte 4                   ; 0x0203
    test ax, ax                      ; 0x0206
    jne short @..api_idx_0002_2.l3   ; 0x0208
    mov ax, word [bp - 0x0002]       ; 0x020a
    ret                              ; 0x020d
@..api_idx_0002_2.l3:
    inc word [bp - 0x0002]           ; 0x020e
@..api_idx_0002_2.l4:
    cmp word [bp - 0x0002], api_idx_0004 ; 0x0211
    jl short @..api_idx_0002_2.l1    ; 0x0216
    mov ax, 0xffff                   ; 0x0218
    ret                              ; 0x021b
%include "vmext/api_idx_0002_3.asm"

%include "vmext/api_idx_0002_4.asm"

    push dx                          ; 0x02da
    db 0xdc, 0x52, 0xba ; fcom [bp + si - 0x0046]
    push dx                          ; 0x02de
    mov dx, 0xc852                   ; 0x02df
    push dx                          ; 0x02e2
@..api_idx_0002_4.l1:
    cmp ax, strict word 0x20         ; 0x02e3
    jae short @..api_idx_0002_4.l2   ; 0x02e6
    xchg bx, ax                      ; 0x02e8
    shl bx, 1                        ; 0x02e9
    jmp [cs:bx + 0x52ea]             ; 0x02eb
@..api_idx_0002_4.l2:
    cmp word [data_5b70], byte 0     ; 0x02f0
    je short @..api_idx_0002_4.l3    ; 0x02f5
    mov ax, word [bp - 0x0002]       ; 0x02f7
    cmp ax, word [data_5b6e]         ; 0x02fa
    jne short @..api_idx_0002_4.l3   ; 0x02fe
    jmp near @..api_idx_0002_4.l5    ; 0x0300
@..api_idx_0002_4.l3:
    call ds_dispatch_c145            ; 0x0303
    mov ax, word [bp - 0x0002]       ; 0x0306
    mov word [data_5b6e], ax         ; 0x0309
    jmp near @..api_idx_0002_4.l4    ; 0x030c

    db 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x98, 0x90, 0x50, 0xe8, 0x02, 0xff, 0x83, 0xc4, 0x04, 0xb8, 0x05
    db 0x00, 0x50, 0xb8, 0xa5, 0x90, 0x50, 0xe8, 0xf4, 0xfe, 0x83, 0xc4, 0x04, 0xb8, 0x05, 0x00, 0x50
    db 0xb8, 0x06, 0x00, 0x50, 0xe8, 0xe6, 0xd2, 0x83, 0xc4, 0x04, 0xb8, 0x09, 0x00, 0x50, 0xb8, 0x0f
    db 0x00, 0x50, 0xe8, 0xd8, 0xd2, 0x83, 0xc4, 0x04, 0xb8, 0x0a, 0x00, 0x50, 0xb8, 0x10, 0x00, 0x50
    db 0xe8, 0xca, 0xd2, 0x83, 0xc4, 0x04, 0xb8, 0x0d, 0x00, 0x50, 0xb8, 0x39, 0x00, 0x50, 0xe8, 0xbc
    db 0xd2, 0x83, 0xc4, 0x04, 0xc7, 0x06, 0x6c, 0x5b, 0x00, 0x00, 0xe9, 0xdc, 0x01, 0xb8, 0x01, 0x00
    db 0x50, 0xb8, 0xb2, 0x90, 0x50, 0xe8, 0xa5, 0xfe, 0x83, 0xc4, 0x04, 0xb8, 0x04, 0x00, 0x50, 0xb8
    db 0xbf, 0x90, 0x50, 0xe8, 0x97, 0xfe, 0x83, 0xc4, 0x04, 0xb8, 0x06, 0x00, 0x50, 0xb8, 0xcc, 0x90
    db 0x50, 0xe8, 0x89, 0xfe, 0x83, 0xc4, 0x04, 0xb8, 0x0d, 0x00, 0x50, 0xb8, 0x3a, 0x00, 0x50, 0xe8
    db 0x7b, 0xd2, 0x83, 0xc4, 0x04, 0xc7, 0x06, 0x6c, 0x5b, 0x01, 0x00, 0xe9, 0x9b, 0x01, 0xb8, 0x02
    db 0x00, 0x50, 0xb8, 0xd9, 0x90, 0x50, 0xe8, 0x64, 0xfe, 0x83, 0xc4, 0x04, 0xb8, 0x04, 0x00, 0x50
    db 0xb8, 0xe6, 0x90, 0x50, 0xe8, 0x56, 0xfe, 0x83, 0xc4, 0x04, 0xb8, 0x05, 0x00, 0x50, 0xb8, 0xf3
    db 0x90, 0x50, 0xe8, 0x48, 0xfe, 0x83, 0xc4, 0x04, 0xb8, 0x06, 0x00, 0x50, 0xb8, 0x00, 0x91, 0x50
    db 0xe8, 0x3a, 0xfe, 0x83, 0xc4, 0x04, 0xb8, 0x05, 0x00, 0x50, 0xb8, 0x08, 0x00, 0x50, 0xe8, 0x2c
    db 0xd2, 0x83, 0xc4, 0x04, 0xb8, 0x0a, 0x00, 0x50, 0xb8, 0x10, 0x00, 0x50, 0xe8, 0x1e, 0xd2, 0x83
    db 0xc4, 0x04, 0xb8, 0x0b, 0x00, 0x50, 0xb8, 0x11, 0x00, 0x50, 0xe8, 0x10, 0xd2, 0x83, 0xc4, 0x04
    db 0xb8, 0x0c, 0x00, 0x50, 0xb8, 0x3b, 0x00, 0x50, 0xe8, 0x02, 0xd2, 0x83, 0xc4, 0x04, 0xc7, 0x06
    db 0x6c, 0x5b, 0x02, 0x00, 0xe9, 0x22, 0x01, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x0d, 0x91, 0x50, 0xe8
    db 0xeb, 0xfd, 0x83, 0xc4, 0x04, 0xb8, 0x04, 0x00, 0x50, 0xb8, 0x1a, 0x91, 0x50, 0xe8, 0xdd, 0xfd
    db 0x83, 0xc4, 0x04, 0xb8, 0x0d, 0x00, 0x50, 0xb8, 0x3a, 0x00, 0x50, 0xe8, 0xcf, 0xd1, 0x83, 0xc4
    db 0x04, 0xc7, 0x06, 0x6c, 0x5b, 0x01, 0x00, 0xe9, 0xef, 0x00, 0xb8, 0x02, 0x00, 0x50, 0xb8, 0x27
    db 0x91, 0x50, 0xe8, 0xb8, 0xfd, 0x83, 0xc4, 0x04, 0xb8, 0x04, 0x00, 0x50, 0xb8, 0x34, 0x91, 0x50
    db 0xe8, 0xaa, 0xfd, 0x83, 0xc4, 0x04, 0xb8, 0x05, 0x00, 0x50, 0xb8, 0x41, 0x91, 0x50, 0xe8, 0x9c
    db 0xfd, 0x83, 0xc4, 0x04, 0xb8, 0x0a, 0x00, 0x50, 0xb8, 0x10, 0x00, 0x50, 0xe8, 0x8e, 0xd1, 0x83
    db 0xc4, 0x04, 0xb8, 0x0b, 0x00, 0x50, 0xb8, 0x36, 0x00, 0x50, 0xe8, 0x80, 0xd1, 0x83, 0xc4, 0x04
    db 0xb8, 0x0c, 0x00, 0x50, 0xb8, 0x3b, 0x00, 0x50, 0xe8, 0x72, 0xd1, 0x83, 0xc4, 0x04, 0xb8, 0x09
    db 0x00, 0x50, 0xb8, 0x53, 0x00, 0x50, 0xe8, 0x64, 0xd1, 0x83, 0xc4, 0x04, 0xb8, 0x0d, 0x00, 0x50
    db 0xb8, 0x38, 0x00, 0x50, 0xe8, 0x56, 0xd1, 0x83, 0xc4, 0x04, 0xc7, 0x06, 0x6c, 0x5b, 0x02, 0x00
    db 0xeb, 0x77, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x4e, 0x91, 0x50, 0xe8, 0x40, 0xfd, 0x83, 0xc4, 0x04
    db 0xb8, 0x04, 0x00, 0x50, 0xb8, 0x5b, 0x91, 0x50, 0xe8, 0x32, 0xfd, 0x83, 0xc4, 0x04, 0xb8, 0x05
    db 0x00, 0x50, 0xb8, 0x68, 0x91, 0x50, 0xe8, 0x24, 0xfd, 0x83, 0xc4, 0x04, 0xb8, 0x0c, 0x00, 0x50
    db 0xb8, 0x3b, 0x00, 0x50, 0xe8, 0x16, 0xd1, 0x83, 0xc4, 0x04, 0xb8, 0x09, 0x00, 0x50, 0xb8, 0x53
    db 0x00, 0x50, 0xe8, 0x08, 0xd1, 0x83, 0xc4, 0x04, 0xb8, 0x0d, 0x00, 0x50, 0xb8, 0x3a, 0x00, 0x50
    db 0xe8, 0xfa, 0xd0, 0x83, 0xc4, 0x04, 0xc7, 0x06, 0x6c, 0x5b, 0x01, 0x00, 0xeb, 0x1b, 0x8f, 0x55
    db 0x56, 0x53, 0xb3, 0x53, 0xf4, 0x53, 0x6d, 0x54, 0xa0, 0x54, 0x18, 0x55

@..api_idx_0002_4.l4:
    cmp ax, strict word 7            ; 0x053b
    jae short @..api_idx_0002_4.l5   ; 0x053e
    xchg bx, ax                      ; 0x0540
    shl bx, 1                        ; 0x0541
    jmp [cs:bx + 0x5574]             ; 0x0543
@..api_idx_0002_4.l5:
    mov word [data_5b70], 1          ; 0x0548
    ret                              ; 0x054e
loc_054f:
    mov ax, 0                        ; 0x054f
    call ds_dispatch_f40b            ; 0x0552
    les bx, word [0x0002]            ; 0x0555
    mov ax, word [es:bx]             ; 0x0559
    mov dx, word [es:bx + 0x2]       ; 0x055c
    sub ax, word [data_908a]         ; 0x0560
    sbb dx, word [data_908c]         ; 0x0564
    push ax                          ; 0x0568
    push dx                          ; 0x0569
    mov ax, word [data_9180]         ; 0x056a
    cwd                              ; 0x056d
    mov cx, ax                       ; 0x056e
    mov bx, dx                       ; 0x0570
    pop dx                           ; 0x0572
    pop ax                           ; 0x0573
    cmp dx, bx                       ; 0x0574
    jl short @..local.l2             ; 0x0576
    jne short @..local.l3            ; 0x0578
    cmp ax, cx                       ; 0x057a
    jae short @..local.l3            ; 0x057c
@..local.l2:
    jmp short @..local.l4            ; 0x057e
@..local.l3:
    les bx, word [0x0002]            ; 0x0580
    mov ax, word [es:bx]             ; 0x0584
    mov dx, word [es:bx + 0x2]       ; 0x0587
    mov word [data_908c], dx         ; 0x058b
    mov word [data_908a], ax         ; 0x058f
    mov ax, 1                        ; 0x0592
    ret                              ; 0x0595
@..local.l4:
    mov ax, 0                        ; 0x0596
    ret                              ; 0x0599
loc_059a:
    mov ax, 0                        ; 0x059a
    call ds_dispatch_f40b            ; 0x059d
    call loc_054f                    ; 0x05a0
    test ax, ax                      ; 0x05a3
    je short @..local.l5             ; 0x05a5
    mov ax, word [data_82e8]         ; 0x05a7
    inc ax                           ; 0x05aa
    mov cx, 2                        ; 0x05ab
    cwd                              ; 0x05ae
    idiv cx                          ; 0x05af
    mov word [data_82e8], dx         ; 0x05b1
    call loc_51fb                    ; 0x05b5
    mov ax, 1                        ; 0x05b8
    ret                              ; 0x05bb
@..local.l5:
    mov ax, 0                        ; 0x05bc
    ret                              ; 0x05bf
loc_05c0:
    mov ax, 0                        ; 0x05c0
    call ds_dispatch_f40b            ; 0x05c3
    mov ax, 0x50                     ; 0x05c6
    push ax                          ; 0x05c9
    call ds_dispatch_b7a9            ; 0x05ca
    pop cx                           ; 0x05cd
    cmp ax, strict word 0            ; 0x05ce
    jle short @..local.l6            ; 0x05d1
    mov ax, 0xa                      ; 0x05d3
    push ax                          ; 0x05d6
    call ds_dispatch_e489            ; 0x05d7
    pop cx                           ; 0x05da
    jmp short @..local.l7            ; 0x05db
@..local.l6:
    mov ax, 0xa                      ; 0x05dd
    push ax                          ; 0x05e0
    call ds_dispatch_e489            ; 0x05e1
    pop cx                           ; 0x05e4
@..local.l7:
    ret                              ; 0x05e5
%include "vmext/api_idx_0004_2.asm"

@..api_idx_0004_2.l4:
    call loc_059a                    ; 0x0629
    test ax, ax                      ; 0x062c
    jne short @..api_idx_0004_2.l5   ; 0x062e
    call loc_05c0                    ; 0x0630
@..api_idx_0004_2.l5:
    jmp short @..api_idx_0004_2.l1   ; 0x0633
@..api_idx_0004_2.l6:
    ret                              ; 0x0635
loc_0636:
    mov ax, 0                        ; 0x0636
    call ds_dispatch_f40b            ; 0x0639
    mov ax, 0                        ; 0x063c
    push ax                          ; 0x063f
    mov ax, 8                        ; 0x0640
    push ax                          ; 0x0643
    mov ax, 0x8cfe                   ; 0x0644
    push ax                          ; 0x0647
    call ds_dispatch_f306            ; 0x0648
    add sp, byte 6                   ; 0x064b
    mov word [data_82ea], 0          ; 0x064e
    mov ax, word [bp + 0x4]          ; 0x0654
    jmp short @..local.l12           ; 0x0657
@..local.l8:
    mov ax, word [bp + 0x6]          ; 0x0659
    add word [data_8f44], ax         ; 0x065c
    jmp short @..local.l13           ; 0x0660
@..local.l9:
    mov ax, word [bp + 0x6]          ; 0x0662
    add word [data_8f46], ax         ; 0x0665
    jmp short @..local.l13           ; 0x0669
@..local.l10:
    mov ax, word [bp + 0x6]          ; 0x066b
    sub word [data_8f44], ax         ; 0x066e
    jmp short @..local.l13           ; 0x0672
@..local.l11:
    mov ax, word [bp + 0x6]          ; 0x0674
    sub word [data_8f46], ax         ; 0x0677
    jmp short @..local.l13           ; 0x067b
@..local.l12:
    cmp ax, strict word 0            ; 0x067d
    je short @..local.l8             ; 0x0680
    cmp ax, strict word 1            ; 0x0682
    je short @..local.l9             ; 0x0685
    cmp ax, strict word 2            ; 0x0687
    je short @..local.l10            ; 0x068a
    cmp ax, strict word 3            ; 0x068c
    je short @..local.l11            ; 0x068f
@..local.l13:
    ret                              ; 0x0691
loc_0692:
    mov ax, 0                        ; 0x0692
    call ds_dispatch_f40b            ; 0x0695
    mov ax, word [data_8f46]         ; 0x0698
    mov word [data_8f3a], ax         ; 0x069b
    mov ax, word [data_8f44]         ; 0x069e
    mov word [data_8f38], ax         ; 0x06a1
    mov ax, word [data_8f42]         ; 0x06a4
    mov word [data_8f36], ax         ; 0x06a7
    mov ax, word [data_8f40]         ; 0x06aa
    mov word [data_8f34], ax         ; 0x06ad
    mov ax, word [data_8f3e]         ; 0x06b0
    mov word [data_8f32], ax         ; 0x06b3
    mov ax, word [data_830c]         ; 0x06b6
    mov word [data_8f3c], ax         ; 0x06b9
    mov ax, word [data_82ee]         ; 0x06bc
    mov word [data_8f30], ax         ; 0x06bf
    ret                              ; 0x06c2
loc_06c3:
    mov ax, 0                        ; 0x06c3
    call ds_dispatch_f40b            ; 0x06c6
    mov ax, word [bp + 0x4]          ; 0x06c9
    jmp short @..local.l18           ; 0x06cc
@..local.l14:
    mov ax, 4                        ; 0x06ce
    push ax                          ; 0x06d1
    mov ax, word [bp + 0x6]          ; 0x06d2
    mov cx, 6                        ; 0x06d5
    shl ax, cl                       ; 0x06d8
    mov cx, word [bp + 0xa]          ; 0x06da
    shl cx, 1                        ; 0x06dd
    shl cx, 1                        ; 0x06df
    shl cx, 1                        ; 0x06e1
    add ax, cx                       ; 0x06e3
    add ax, word [bp + 0x8]          ; 0x06e5
    push ax                          ; 0x06e8
    mov ax, word [data_0e14]         ; 0x06e9
    add ax, 0x90                     ; 0x06ec
    push ax                          ; 0x06ef
    call ds_dispatch_ecf6            ; 0x06f0
    add sp, byte 6                   ; 0x06f3
    ret                              ; 0x06f6
@..local.l15:
    mov ax, 4                        ; 0x06f7
    push ax                          ; 0x06fa
    mov ax, word [bp + 0x6]          ; 0x06fb
    mov cx, 6                        ; 0x06fe
    shl ax, cl                       ; 0x0701
    mov cx, word [bp + 0xa]          ; 0x0703
    shl cx, 1                        ; 0x0706
    shl cx, 1                        ; 0x0708
    shl cx, 1                        ; 0x070a
    add ax, cx                       ; 0x070c
    add ax, word [bp + 0x8]          ; 0x070e
    push ax                          ; 0x0711
    mov ax, word [data_0e14]         ; 0x0712
    add ax, 0x290                    ; 0x0715
    push ax                          ; 0x0718
    call ds_dispatch_ecf6            ; 0x0719
    add sp, byte 6                   ; 0x071c
    ret                              ; 0x071f
@..local.l16:
    push word [bp + 0x6]             ; 0x0720
    push word [bp + 0xa]             ; 0x0723
    push word [bp + 0x8]             ; 0x0726
    push word [bp + 0xe]             ; 0x0729
    push word [bp + 0xc]             ; 0x072c
    call loc_1823                    ; 0x072f
    add sp, byte 0x0a                ; 0x0732
    ret                              ; 0x0735
@..local.l17:
    push word [bp + 0x6]             ; 0x0736
    push word [bp + 0xa]             ; 0x0739
    push word [bp + 0x8]             ; 0x073c
    push word [bp + 0xe]             ; 0x073f
    push word [bp + 0xc]             ; 0x0742
    call loc_189b                    ; 0x0745
    add sp, byte 0x0a                ; 0x0748
    ret                              ; 0x074b
@..local.l18:
    cmp ax, strict word 0            ; 0x074c
    jne short @..local.l19           ; 0x074f
    jmp near @..local.l14            ; 0x0751
@..local.l19:
    cmp ax, strict word 1            ; 0x0754
    je short @..local.l15            ; 0x0757
    cmp ax, strict word 2            ; 0x0759
    je short @..local.l16            ; 0x075c
    cmp ax, strict word 3            ; 0x075e
    je short @..local.l17            ; 0x0761
    ret                              ; 0x0763
%include "vmext/api_idx_0008.asm"

%include "vmext/api_idx_0050.asm"

loc_0836:
    mov ax, 0                        ; 0x0836
    call ds_dispatch_f40b            ; 0x0839
    mov ax, word [bp + 0x4]          ; 0x083c
    mov word [data_8f46], ax         ; 0x083f
    mov ax, word [bp + 0x6]          ; 0x0842
    mov word [data_8f44], ax         ; 0x0845
    push ax                          ; 0x0848
    push word [data_8f46]            ; 0x0849
    mov ax, data_8f3e                ; 0x084d
    push ax                          ; 0x0850
    mov ax, data_8f40                ; 0x0851
    push ax                          ; 0x0854
    mov ax, data_8f42                ; 0x0855
    push ax                          ; 0x0858
    call api_idx_0004                ; 0x0859
    add sp, byte 0x0a                ; 0x085c
    ret                              ; 0x085f
loc_0860:
    mov ax, 0                        ; 0x0860
    call ds_dispatch_f40b            ; 0x0863
    mov word [data_918a], 0          ; 0x0866
    mov ax, word [data_830c]         ; 0x086c
    cmp ax, word [data_8f28]         ; 0x086f
    jne short @..local.l20           ; 0x0873
    mov ax, word [data_8f3e]         ; 0x0875
    cmp ax, word [data_8f2a]         ; 0x0878
    jne short @..local.l20           ; 0x087c
    mov ax, word [data_8f42]         ; 0x087e
    cmp ax, word [data_8f2e]         ; 0x0881
    jne short @..local.l20           ; 0x0885
    mov ax, word [data_8f40]         ; 0x0887
    cmp ax, word [data_8f2c]         ; 0x088a
    jne short @..local.l20           ; 0x088e
    mov word [data_918a], 1          ; 0x0890
@..local.l20:
    ret                              ; 0x0896
%include "vmext/api_idx_0004_3.asm"

%include "vmext/api_idx_000c.asm"

@..api_idx_000c.l2:
    mov ax, word [data_8f46]         ; 0x0a20
    mov word [bp - 0x000a], ax       ; 0x0a23
    mov ax, word [data_8f44]         ; 0x0a26
    mov word [bp - 0x000c], ax       ; 0x0a29
    mov ax, 1                        ; 0x0a2c
    push ax                          ; 0x0a2f
    push word [bp + 0x4]             ; 0x0a30
    call loc_0636                    ; 0x0a33
    add sp, byte 4                   ; 0x0a36
    push word [data_8f44]            ; 0x0a39
    push word [data_8f46]            ; 0x0a3d
    mov ax, data_8f3e                ; 0x0a41
    push ax                          ; 0x0a44
    mov ax, data_8f40                ; 0x0a45
    push ax                          ; 0x0a48
    mov ax, data_8f42                ; 0x0a49
    push ax                          ; 0x0a4c
    call api_idx_0004                ; 0x0a4d
    add sp, byte 0x0a                ; 0x0a50
    test ax, ax                      ; 0x0a53
    je short @..api_idx_000c.l3      ; 0x0a55
    push word [bp - 0x000c]          ; 0x0a57
    push word [bp - 0x000a]          ; 0x0a5a
    call loc_0836                    ; 0x0a5d
    add sp, byte 4                   ; 0x0a60
    mov ax, 1                        ; 0x0a63
    ret                              ; 0x0a66
@..api_idx_000c.l3:
    mov ax, word [data_8f3e]         ; 0x0a67
    mov cx, 6                        ; 0x0a6a
    shl ax, cl                       ; 0x0a6d
    mov cx, word [data_8f40]         ; 0x0a6f
    shl cx, 1                        ; 0x0a73
    shl cx, 1                        ; 0x0a75
    shl cx, 1                        ; 0x0a77
    add ax, cx                       ; 0x0a79
    add ax, word [data_8f42]         ; 0x0a7b
    mov word [bp - 0x0002], ax       ; 0x0a7f
    push ax                          ; 0x0a82
    push word [bp + 0x6]             ; 0x0a83
    call ds_dispatch_ec74            ; 0x0a86
    add sp, byte 4                   ; 0x0a89
    cmp ax, strict word 1            ; 0x0a8c
    je short @..api_idx_000c.l4      ; 0x0a8f
    push word [bp - 0x0002]          ; 0x0a91
    mov ax, 0x8b7e                   ; 0x0a94
    push ax                          ; 0x0a97
    call ds_dispatch_ec74            ; 0x0a98
    add sp, byte 4                   ; 0x0a9b
    cmp ax, strict word 1            ; 0x0a9e
    jne short @..api_idx_000c.l5     ; 0x0aa1
@..api_idx_000c.l4:
    push word [bp - 0x000c]          ; 0x0aa3
    push word [bp - 0x000a]          ; 0x0aa6
    call loc_0836                    ; 0x0aa9
    add sp, byte 4                   ; 0x0aac
    mov ax, 1                        ; 0x0aaf
    ret                              ; 0x0ab2
@..api_idx_000c.l5:
    push word [bp - 0x0002]          ; 0x0ab3
    mov ax, word [data_0e14]         ; 0x0ab6
    add ax, 0x8b0                    ; 0x0ab9
    push ax                          ; 0x0abc
    call ds_dispatch_ec74            ; 0x0abd
    add sp, byte 4                   ; 0x0ac0
    mov word [bp - 0x0004], ax       ; 0x0ac3
    push word [bp - 0x0002]          ; 0x0ac6
    mov ax, word [data_0e14]         ; 0x0ac9
    add ax, 0x930                    ; 0x0acc
    push ax                          ; 0x0acf
    call ds_dispatch_ec74            ; 0x0ad0
    add sp, byte 4                   ; 0x0ad3
    mov word [bp - 0x0006], ax       ; 0x0ad6
    cmp word [data_918a], byte 0     ; 0x0ad9
    jne short @..api_idx_000c.l6     ; 0x0ade
    call loc_0860                    ; 0x0ae0
@..api_idx_000c.l6:
    cmp word [data_918a], byte 0     ; 0x0ae3
    jne short @..api_idx_000c.l7     ; 0x0ae8
    call api_idx_0004_3              ; 0x0aea
    test ax, ax                      ; 0x0aed
    je short @..api_idx_000c.l8      ; 0x0aef
@..api_idx_000c.l7:
    push word [bp - 0x000c]          ; 0x0af1
    push word [bp - 0x000a]          ; 0x0af4
    call loc_0836                    ; 0x0af7
    add sp, byte 4                   ; 0x0afa
    mov ax, 1                        ; 0x0afd
    ret                              ; 0x0b00
@..api_idx_000c.l8:
    mov si, word [data_8f3e]         ; 0x0b01
    mov bx, word [data_0e12]         ; 0x0b05
    mov al, byte [bx + si + 0xb40]   ; 0x0b09
    sub ah, ah                       ; 0x0b0d
    push ax                          ; 0x0b0f
    push si                          ; 0x0b10
    push word [data_8f40]            ; 0x0b11
    push word [data_8f42]            ; 0x0b15
    call api_idx_0002_2              ; 0x0b19
    add sp, byte 8                   ; 0x0b1c
    cmp ax, strict word 0xffff       ; 0x0b1f
    je short @..api_idx_000c.l9      ; 0x0b22
    push word [bp - 0x000c]          ; 0x0b24
    push word [bp - 0x000a]          ; 0x0b27
    call loc_0836                    ; 0x0b2a
    add sp, byte 4                   ; 0x0b2d
    mov ax, 1                        ; 0x0b30
    ret                              ; 0x0b33
@..api_idx_000c.l9:
    mov bx, word [data_0e12]         ; 0x0b34
    mov si, word [data_8f3e]         ; 0x0b38
    mov al, byte [bx + si + 0xb40]   ; 0x0b3c
    sub ah, ah                       ; 0x0b40
    mov word [data_8d12], ax         ; 0x0b42
    mov ax, 0                        ; 0x0b45
    ret                              ; 0x0b48
%include "vmext/api_idx_0002_5.asm"

@..api_idx_0002_5.l2:
    mov ax, 1                        ; 0x0b88
    ret                              ; 0x0b8b
%include "vmext/api_idx_000a.asm"

loc_0c0d:
    mov ax, 0                        ; 0x0c0d
    call ds_dispatch_f40b            ; 0x0c10
    mov ax, 0x7f9                    ; 0x0c13
    push ax                          ; 0x0c16
    call api_idx_0050                ; 0x0c17
    pop cx                           ; 0x0c1a
    mov ax, 1                        ; 0x0c1b
    ret                              ; 0x0c1e
%include "vmext/api_idx_008a.asm"

@..api_idx_008a.l21:
    mov ax, 1                        ; 0x0e1e
    push ax                          ; 0x0e21
    mov ax, word [data_8f3e]         ; 0x0e22
    mov cx, 6                        ; 0x0e25
    shl ax, cl                       ; 0x0e28
    mov cx, word [data_8f40]         ; 0x0e2a
    shl cx, 1                        ; 0x0e2e
    shl cx, 1                        ; 0x0e30
    shl cx, 1                        ; 0x0e32
    add ax, cx                       ; 0x0e34
    add ax, word [data_8f42]         ; 0x0e36
    push ax                          ; 0x0e3a
    lea ax, word [bp - 0x008a]       ; 0x0e3b
    push ax                          ; 0x0e3f
    call ds_dispatch_ec41            ; 0x0e40
    add sp, byte 6                   ; 0x0e43
    call loc_054f                    ; 0x0e46
    test ax, ax                      ; 0x0e49
    je short @..api_idx_008a.l22     ; 0x0e4b
    mov ax, word [data_82e8]         ; 0x0e4d
    inc ax                           ; 0x0e50
    mov cx, 2                        ; 0x0e51
    cwd                              ; 0x0e54
    idiv cx                          ; 0x0e55
    mov word [data_82e8], dx         ; 0x0e57
@..api_idx_008a.l22:
    call loc_51fb                    ; 0x0e5b
    cmp word [bp - 0x0006], byte 0   ; 0x0e5e
    jne short @..api_idx_008a.l23    ; 0x0e62
    call loc_0c0d                    ; 0x0e64
    mov word [bp - 0x0006], ax       ; 0x0e67
@..api_idx_008a.l23:
    mov ax, 2                        ; 0x0e6a
    push ax                          ; 0x0e6d
    call ds_dispatch_b75e            ; 0x0e6e
    pop cx                           ; 0x0e71
    mov ax, 0x98                     ; 0x0e72
    push ax                          ; 0x0e75
    mov ax, 0x13f                    ; 0x0e76
    push ax                          ; 0x0e79
    mov ax, 0x92                     ; 0x0e7a
    push ax                          ; 0x0e7d
    mov ax, 0                        ; 0x0e7e
    push ax                          ; 0x0e81
    call ds_dispatch_e8da            ; 0x0e82
    add sp, byte 8                   ; 0x0e85
    mov ax, 2                        ; 0x0e88
    push ax                          ; 0x0e8b
    call ds_dispatch_b7a9            ; 0x0e8c
    pop cx                           ; 0x0e8f
    test ax, ax                      ; 0x0e90
    je short @..api_idx_008a.l24     ; 0x0e92
    mov ax, 1                        ; 0x0e94
    jmp short @..api_idx_008a.l25    ; 0x0e97
@..api_idx_008a.l24:
    mov ax, 3                        ; 0x0e99
@..api_idx_008a.l25:
    mov word [bp - 0x0008], ax       ; 0x0e9c
    dec word [bp + 0x4]              ; 0x0e9f
    cmp word [bp + 0x4], byte 0      ; 0x0ea2
    jle short @..api_idx_008a.l26    ; 0x0ea6
    jmp near @..api_idx_008a.l8      ; 0x0ea8
@..api_idx_008a.l26:
    ret                              ; 0x0eab
loc_0eac:
    mov ax, 0                        ; 0x0eac
    call ds_dispatch_f40b            ; 0x0eaf
    push word [bp + 0x4]             ; 0x0eb2
    call api_idx_0050                ; 0x0eb5
    pop cx                           ; 0x0eb8
    mov ax, 0                        ; 0x0eb9
    push ax                          ; 0x0ebc
    call ds_dispatch_b7e0            ; 0x0ebd
    pop cx                           ; 0x0ec0
    push word [data_905a]            ; 0x0ec1
    call api_idx_0004_2              ; 0x0ec5
    pop cx                           ; 0x0ec8
    mov ax, 0x98                     ; 0x0ec9
    push ax                          ; 0x0ecc
    mov ax, 0x13f                    ; 0x0ecd
    push ax                          ; 0x0ed0
    mov ax, 0x92                     ; 0x0ed1
    push ax                          ; 0x0ed4
    mov ax, 0                        ; 0x0ed5
    push ax                          ; 0x0ed8
    call ds_dispatch_e8da            ; 0x0ed9
    add sp, byte 8                   ; 0x0edc
    ret                              ; 0x0edf
%include "vmext/api_idx_0012.asm"

    mov word [bp - 0x0004], 1        ; 0x10e0
    mov ax, word [bp - 0x0004]       ; 0x10e5
    cmp ax, strict word 1            ; 0x10e8
    je short loc_1101                ; 0x10eb
    cmp ax, strict word 2            ; 0x10ed
    db 0x74, 0x0f ; je short loc_1101
    cmp ax, strict word 4            ; 0x10f2
    db 0x74, 0x0a ; je short loc_1101
    cmp ax, strict word 8            ; 0x10f7
    db 0x74, 0x05 ; je short loc_1101
    cmp ax, strict word 9            ; 0x10fc
    jne short loc_1115               ; 0x10ff
    mov ax, 0x248                    ; 0x1101
    imul word [bp - 0x0006]          ; 0x1104
    db 0x8b, 0xc8 ; mov cx, ax
    mov ax, word [bp - 0x0004]       ; 0x1109
    db 0x03, 0xc8 ; add cx, ax
    db 0x8b, 0xd9 ; mov bx, cx
    mov byte [bx + 0x5d5a], 0        ; 0x1110
    inc word [bp - 0x0004]           ; 0x1115
    mov ax, word [bp - 0x0004]       ; 0x1118
    cmp ax, strict word 9            ; 0x111b
    jle short loc_10e5               ; 0x111e
    jmp near @..api_idx_0012.l9      ; 0x1120
    mov ax, 0x248                    ; 0x1123
    imul word [bp - 0x0006]          ; 0x1126
    db 0x8b, 0xd8 ; mov bx, ax
    mov byte [bx + 0x5e2f], 0        ; 0x112b
    mov ax, word [bx + 0x5c0e]       ; 0x1130
    mov word [bx + 0x5c0c], ax       ; 0x1134
    mov ax, word [bx + 0x5c12]       ; 0x1138
    mov word [bx + 0x5c10], ax       ; 0x113c
    jmp near @..api_idx_0012.l9      ; 0x1140
    mov ax, 0x248                    ; 0x1143
    imul word [bp - 0x0006]          ; 0x1146
    db 0x8b, 0xd8 ; mov bx, ax
    push word [bx + 0x5c12]          ; 0x114b
    mov ax, 0                        ; 0x114f
    push ax                          ; 0x1152
    mov ax, word [bx + 0x5c10]       ; 0x1153
    sub ax, word [bp - 0x000e]       ; 0x1157
    push ax                          ; 0x115a
    db 0xe8, 0x64, 0xa6 ; call ds_dispatch_b7c2
    add sp, byte 6                   ; 0x115e
    push ax                          ; 0x1161
    mov ax, 0x248                    ; 0x1162
    imul word [bp - 0x0006]          ; 0x1165
    db 0x8b, 0xd8 ; mov bx, ax
    pop ax                           ; 0x116a
    mov word [bx + 0x5c10], ax       ; 0x116b
    cmp ax, strict word 0            ; 0x116f
    jg short loc_1199                ; 0x1172
    mov al, byte [bx + 0x5d5c]       ; 0x1174
    db 0x2a, 0xe4 ; sub ah, ah
    db 0x8b, 0xc8 ; mov cx, ax
    push cx                          ; 0x117c
    mov ax, 6                        ; 0x117d
    push ax                          ; 0x1180
    db 0xe8, 0x25, 0xa6 ; call ds_dispatch_b7a9
    pop cx                           ; 0x1184
    pop cx                           ; 0x1185
    db 0x03, 0xc1 ; add ax, cx
    add ax, strict word 6            ; 0x1188
    push ax                          ; 0x118b
    mov ax, 0x248                    ; 0x118c
    imul word [bp - 0x0006]          ; 0x118f
    db 0x8b, 0xd8 ; mov bx, ax
    pop ax                           ; 0x1194
    mov byte [bx + 0x5d5c], al       ; 0x1195
    jmp near @..api_idx_0012.l9      ; 0x1199
    mov word [bp - 0x0004], 0        ; 0x119c
    mov ax, 0x248                    ; 0x11a1
    imul word [bp - 0x0006]          ; 0x11a4
    mov cx, word [bp - 0x0004]       ; 0x11a7
    shl cx, 1                        ; 0x11aa
    shl cx, 1                        ; 0x11ac
    db 0x03, 0xc1 ; add ax, cx
    db 0x8b, 0xd8 ; mov bx, ax
    push word [bx + 0x5c1e]          ; 0x11b2
    mov ax, 0                        ; 0x11b6
    push ax                          ; 0x11b9
    push word [bp - 0x000a]          ; 0x11ba
    push word [bp - 0x000c]          ; 0x11bd
    push word [bp - 0x000a]          ; 0x11c0
    db 0xe8, 0x24, 0xbf ; call ds_dispatch_d0ea
    add sp, byte 6                   ; 0x11c6
    db 0x8b, 0xc8 ; mov cx, ax
    sub sp, byte 4                   ; 0x11cb
    db 0x8b, 0xc4 ; mov ax, sp
    mov dx, ss                       ; 0x11d0
    mov es, dx                       ; 0x11d2
    db 0x8b, 0xf1 ; mov si, cx
    db 0x8b, 0xf8 ; mov di, ax
    movsw                            ; 0x11d8
    movsw                            ; 0x11d9
    db 0xe8, 0xe1, 0xbe ; call ds_dispatch_d0be
    add sp, byte 4                   ; 0x11dd
    db 0x8b, 0xc8 ; mov cx, ax
    mov ax, 0x248                    ; 0x11e2
    imul word [bp - 0x0006]          ; 0x11e5
    mov dx, word [bp - 0x0004]       ; 0x11e8
    shl dx, 1                        ; 0x11eb
    shl dx, 1                        ; 0x11ed
    db 0x03, 0xc2 ; add ax, dx
    db 0x8b, 0xd8 ; mov bx, ax
    mov ax, word [bx + 0x5c1c]       ; 0x11f3
    db 0x2b, 0xc1 ; sub ax, cx
    push ax                          ; 0x11f9
    db 0xe8, 0xc5, 0xa5 ; call ds_dispatch_b7c2
    add sp, byte 6                   ; 0x11fd
    push ax                          ; 0x1200
    mov ax, 0x248                    ; 0x1201
    imul word [bp - 0x0006]          ; 0x1204
    db 0x8b, 0xc8 ; mov cx, ax
    mov dx, word [bp - 0x0004]       ; 0x1209
    shl dx, 1                        ; 0x120c
    shl dx, 1                        ; 0x120e
    db 0x03, 0xc2 ; add ax, dx
    db 0x8b, 0xd8 ; mov bx, ax
    pop ax                           ; 0x1214
    mov word [bx + 0x5c1c], ax       ; 0x1215
    inc word [bp - 0x0004]           ; 0x1219
    mov ax, word [bp - 0x0004]       ; 0x121c
    cmp ax, strict word 6            ; 0x121f
    jge short loc_1227               ; 0x1222
    jmp near loc_11a1                ; 0x1224
    jmp near @..api_idx_0012.l9      ; 0x1227
    mov ax, 0x248                    ; 0x122a
    imul word [bp - 0x0006]          ; 0x122d
    db 0x8b, 0xd8 ; mov bx, ax
    push word [bx + 0x5c0e]          ; 0x1232
    mov ax, 0                        ; 0x1236
    push ax                          ; 0x1239
    mov ax, word [bx + 0x5c0c]       ; 0x123a
    sub ax, word [bp - 0x000e]       ; 0x123e
    push ax                          ; 0x1241
    db 0xe8, 0x7d, 0xa5 ; call ds_dispatch_b7c2
    add sp, byte 6                   ; 0x1245
    push ax                          ; 0x1248
    mov ax, 0x248                    ; 0x1249
    imul word [bp - 0x0006]          ; 0x124c
    db 0x8b, 0xd8 ; mov bx, ax
    pop ax                           ; 0x1251
    mov word [bx + 0x5c0c], ax       ; 0x1252
    cmp ax, strict word 0            ; 0x1256
    jg short loc_127a                ; 0x1259
    mov byte [bx + 0x5e2f], 3        ; 0x125b
    mov word [bx + 0x5c0c], 0        ; 0x1260
    mov word [bx + 0x5c10], 0        ; 0x1266
    mov al, byte [bx + 0x5e2c]       ; 0x126c
    db 0x2a, 0xe4 ; sub ah, ah
    add ax, strict word 8            ; 0x1272
    push ax                          ; 0x1275
    db 0xe8, 0x67, 0xa5 ; call ds_dispatch_b7e0
    pop cx                           ; 0x1279
    jmp near @..api_idx_0012.l9      ; 0x127a
    mov ax, 0x248                    ; 0x127d
    imul word [bp - 0x0006]          ; 0x1280
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx + 0x5e32]       ; 0x1285
    db 0x2a, 0xe4 ; sub ah, ah
    cmp ax, word [bp - 0x000a]       ; 0x128b
    jge short loc_1297               ; 0x128e
    mov al, byte [bp - 0x000a]       ; 0x1290
    mov byte [bx + 0x5e32], al       ; 0x1293
    mov al, byte [bx + 0x5d5f]       ; 0x1297
    db 0x2a, 0xe4 ; sub ah, ah
    cmp ax, word [bp - 0x000e]       ; 0x129d
    jge short loc_12a9               ; 0x12a0
    mov al, byte [bp - 0x000e]       ; 0x12a2
    mov byte [bx + 0x5d5f], al       ; 0x12a5
    jmp near @..api_idx_0012.l9      ; 0x12a9
    mov ax, 0x248                    ; 0x12ac
    imul word [bp - 0x0006]          ; 0x12af
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx + 0x5d5d]       ; 0x12b4
    db 0x2a, 0xe4 ; sub ah, ah
    cmp ax, word [bp - 0x000e]       ; 0x12ba
    jge short loc_12c6               ; 0x12bd
    mov al, byte [bp - 0x000e]       ; 0x12bf
    mov byte [bx + 0x5d5d], al       ; 0x12c2
    jmp short @..api_idx_0012.l9     ; 0x12c6
    mov ax, 0x248                    ; 0x12c8
    imul word [bp - 0x0006]          ; 0x12cb
    db 0x8b, 0xd8 ; mov bx, ax
    cmp byte [bx + 0x5e2f], 2        ; 0x12d0
    jae short loc_12dc               ; 0x12d5
    mov byte [bx + 0x5e2f], 2        ; 0x12d7
    jmp short @..api_idx_0012.l9     ; 0x12dc
    mov ax, 0x248                    ; 0x12de
    imul word [bp - 0x0006]          ; 0x12e1
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx + 0x5d5c]       ; 0x12e6
    db 0x2a, 0xe4 ; sub ah, ah
    cmp ax, word [bp - 0x000e]       ; 0x12ec
    jge short loc_12f8               ; 0x12ef
    mov al, byte [bp - 0x000e]       ; 0x12f1
    mov byte [bx + 0x5d5c], al       ; 0x12f4
    jmp short @..api_idx_0012.l9     ; 0x12f8
    cli                              ; 0x12fa
    pop di                           ; 0x12fb
    sub word [bx + si - 0x0049], sp  ; 0x12fc
    pushaw                           ; 0x12ff
    out 0x60, al                     ; 0x1300
    sti                              ; 0x1302
    pushaw                           ; 0x1303
    or sp, word [bx + di + 0x27]     ; 0x1304
    popaw                            ; 0x1307
    db 0x6a, 0x61 ; push 0x61
    mov ah, byte [bx + di - 0x001d]  ; 0x130a
    popaw                            ; 0x130d
    jno short loc_1372               ; 0x130e
    les sp, word [bp + si - 0x000d]  ; 0x1310
    bound cx, dword [bx]             ; 0x1313
    arpl word [di], sp               ; 0x1315
    db 0x63
@..api_idx_0012.l8:
    cmp ax, strict word 0xf          ; 0x1318
    jae short @..api_idx_0012.l9     ; 0x131b
    xchg bx, ax                      ; 0x131d
    shl bx, 1                        ; 0x131e
    jmp [cs:bx + 0x6341]             ; 0x1320
@..api_idx_0012.l9:
    inc word [bp - 0x0002]           ; 0x1325
    mov ax, word [bp - 0x0002]       ; 0x1328
    cmp ax, strict word 0x10         ; 0x132b
    jge short @..api_idx_0012.l10    ; 0x132e
    jmp near @..api_idx_0012.l4      ; 0x1330
@..api_idx_0012.l10:
    mov ax, 1                        ; 0x1333
    push ax                          ; 0x1336
    push word [bp - 0x0006]          ; 0x1337
    call ds_dispatch_cb3a            ; 0x133a
    add sp, byte 4                   ; 0x133d
    mov ax, word [bp - 0x0010]       ; 0x1340
    add ax, word [bp - 0x0012]       ; 0x1343
    add ax, 0x800                    ; 0x1346
    push ax                          ; 0x1349
    call loc_0eac                    ; 0x134a
    pop cx                           ; 0x134d
    jmp near @..api_idx_0012.l1      ; 0x134e
@..api_idx_0012.l11:
    inc word [data_8d12]             ; 0x1351
    ret                              ; 0x1355
%include "vmext/api_idx_004c.asm"

%include "vmext/api_idx_0004_4.asm"

@..api_idx_0004_4.l3:
    inc word [bp - 0x0004]           ; 0x14ad
    mov ax, word [bp - 0x0004]       ; 0x14b0
    cmp ax, strict word 0xa          ; 0x14b3
    jl short @..api_idx_0004_4.l2    ; 0x14b6
    inc word [bp - 0x0002]           ; 0x14b8
    mov ax, word [bp - 0x0002]       ; 0x14bb
    cmp ax, strict word 2            ; 0x14be
    jl short @..api_idx_0004_4.l1    ; 0x14c1
    mov ax, 0xffff                   ; 0x14c3
    ret                              ; 0x14c6
%include "vmext/api_idx_0006.asm"

@..api_idx_0006.l2:
    add word [bp - 0x0006], byte 8   ; 0x150a
    inc word [bp - 0x0002]           ; 0x150e
@..api_idx_0006.l3:
    mov ax, word [bp - 0x0002]       ; 0x1511
    cmp ax, word [data_5910]         ; 0x1514
    jl short @..api_idx_0006.l1      ; 0x1518
    mov ax, 0                        ; 0x151a
    ret                              ; 0x151d
%include "vmext/api_idx_0008_2.asm"

@..api_idx_0008_2.l1:
    mov ax, word [bp - 0x0002]       ; 0x153c
    mov cx, 0x100                    ; 0x153f
    cwd                              ; 0x1542
    idiv cx                          ; 0x1543
    mov word [bp - 0x0004], ax       ; 0x1545
    mov word [bp - 0x0006], dx       ; 0x1548
    call api_idx_0006                ; 0x154b
    mov word [bp - 0x0008], ax       ; 0x154e
    test ax, ax                      ; 0x1551
    je short @..api_idx_0008_2.l4    ; 0x1553
    mov bx, ax                       ; 0x1555
    mov al, byte [bx + 0x1]          ; 0x1557
    sub ah, ah                       ; 0x155a
    test ax, 0x80                    ; 0x155c
    je short @..api_idx_0008_2.l2    ; 0x155f
    mov ax, 1                        ; 0x1561
    jmp short @..api_idx_0008_2.l3   ; 0x1564
@..api_idx_0008_2.l2:
    mov ax, 0                        ; 0x1566
@..api_idx_0008_2.l3:
    push ax                          ; 0x1569
    mov al, byte [bx + 0x6]          ; 0x156a
    sub ah, ah                       ; 0x156d
    push ax                          ; 0x156f
    mov ax, 0x248                    ; 0x1570
    imul word [bp + 0x4]             ; 0x1573
    push ax                          ; 0x1576
    mov ax, 0x78                     ; 0x1577
    imul word [bp - 0x0004]          ; 0x157a
    mov cx, ax                       ; 0x157d
    pop ax                           ; 0x157f
    add ax, cx                       ; 0x1580
    push ax                          ; 0x1582
    mov ax, 0xc                      ; 0x1583
    imul word [bp - 0x0006]          ; 0x1586
    mov cx, ax                       ; 0x1589
    pop ax                           ; 0x158b
    add ax, cx                       ; 0x158c
    add ax, 0x5c34                   ; 0x158e
    push ax                          ; 0x1591
    push word [bx + 0x4]             ; 0x1592
    push word [bp + 0x4]             ; 0x1595
    call api_idx_004c                ; 0x1598
    add sp, byte 0x0a                ; 0x159b
    mov bx, word [bp - 0x0008]       ; 0x159e
    mov byte [bx], 0xff              ; 0x15a1
    jmp short @..api_idx_0008_2.l5   ; 0x15a4
@..api_idx_0008_2.l4:
    mov ax, 0                        ; 0x15a6
    push ax                          ; 0x15a9
    call ds_dispatch_b7e0            ; 0x15aa
    pop cx                           ; 0x15ad
@..api_idx_0008_2.l5:
    ret                              ; 0x15ae
%include "vmext/math_loc_15af.asm"

@..math_loc_15af.l2:
    mov ax, 0x248                    ; 0x169a
    imul word [bp + 0x4]             ; 0x169d
    mov si, ax                       ; 0x16a0
    add ax, 0x5bf4                   ; 0x16a2
    mov si, ax                       ; 0x16a5
    lea di, word [bp - 0x024a]       ; 0x16a7
    mov cx, ds                       ; 0x16ab
    mov es, cx                       ; 0x16ad
    mov cx, 0x124                    ; 0x16af
    rep movsw                        ; 0x16b2
    mov ax, word [bp + 0x4]          ; 0x16b4
    shl ax, 1                        ; 0x16b7
    mov bx, ax                       ; 0x16b9
    mov ax, word [bx - 0x750e]       ; 0x16bb
    mov word [bp - 0x024c], ax       ; 0x16bf
    mov ax, word [bx + 0x69bc]       ; 0x16c3
    mov word [bp - 0x024e], ax       ; 0x16c7
    mov ax, 0x248                    ; 0x16cb
    imul word [bp - 0x0002]          ; 0x16ce
    mov si, ax                       ; 0x16d1
    add ax, 0x5bf4                   ; 0x16d3
    mov si, ax                       ; 0x16d6
    mov ax, 0x248                    ; 0x16d8
    imul word [bp + 0x4]             ; 0x16db
    mov di, ax                       ; 0x16de
    add ax, 0x5bf4                   ; 0x16e0
    mov di, ax                       ; 0x16e3
    mov cx, ds                       ; 0x16e5
    mov es, cx                       ; 0x16e7
    mov cx, 0x124                    ; 0x16e9
    rep movsw                        ; 0x16ec
    mov ax, word [bp - 0x0002]       ; 0x16ee
    shl ax, 1                        ; 0x16f1
    mov bx, ax                       ; 0x16f3
    mov ax, word [bx - 0x750e]       ; 0x16f5
    mov cx, word [bp + 0x4]          ; 0x16f9
    shl cx, 1                        ; 0x16fc
    mov bx, cx                       ; 0x16fe
    mov word [bx - 0x750e], ax       ; 0x1700
    mov ax, word [bp - 0x0002]       ; 0x1704
    shl ax, 1                        ; 0x1707
    mov bx, ax                       ; 0x1709
    mov ax, word [bx + 0x69bc]       ; 0x170b
    mov bx, cx                       ; 0x170f
    mov word [bx + 0x69bc], ax       ; 0x1711
    lea si, word [bp - 0x024a]       ; 0x1715
    mov ax, 0x248                    ; 0x1719
    imul word [bp - 0x0002]          ; 0x171c
    mov di, ax                       ; 0x171f
    add ax, 0x5bf4                   ; 0x1721
    mov di, ax                       ; 0x1724
    mov cx, ds                       ; 0x1726
    mov es, cx                       ; 0x1728
    mov cx, 0x124                    ; 0x172a
    rep movsw                        ; 0x172d
    mov ax, word [bp - 0x024c]       ; 0x172f
    mov cx, word [bp - 0x0002]       ; 0x1733
    shl cx, 1                        ; 0x1736
    mov bx, cx                       ; 0x1738
    mov word [bx - 0x750e], ax       ; 0x173a
    mov ax, word [bp - 0x024e]       ; 0x173e
    mov word [bx + 0x69bc], ax       ; 0x1742
    mov ax, 0                        ; 0x1746
    push ax                          ; 0x1749
    mov ax, word [bp + 0x4]          ; 0x174a
    shl ax, 1                        ; 0x174d
    shl ax, 1                        ; 0x174f
    mov bx, ax                       ; 0x1751
    push word [bx + 0x69a6]          ; 0x1753
    push word [bx + 0x69a4]          ; 0x1757
    call ds_dispatch_e94f            ; 0x175b
    add sp, byte 6                   ; 0x175e
    mov ax, word [bp + 0x4]          ; 0x1761
    mov cx, 2                        ; 0x1764
    cwd                              ; 0x1767
    idiv cx                          ; 0x1768
    mov ax, dx                       ; 0x176a
    mov cx, 0xfc                     ; 0x176c
    imul cx                          ; 0x176f
    add ax, strict word 5            ; 0x1771
    mov word [bp - 0x0250], ax       ; 0x1774
    mov ax, word [bp + 0x4]          ; 0x1778
    mov cx, 2                        ; 0x177b
    cwd                              ; 0x177e
    idiv cx                          ; 0x177f
    mov cx, 0x2d                     ; 0x1781
    imul cx                          ; 0x1784
    add ax, strict word 0x12         ; 0x1786
    mov word [bp - 0x0252], ax       ; 0x1789
    add ax, strict word 0x2b         ; 0x178d
    push ax                          ; 0x1790
    mov ax, word [bp - 0x0250]       ; 0x1791
    add ax, strict word 0x3b         ; 0x1795
    push ax                          ; 0x1798
    push word [bp - 0x0252]          ; 0x1799
    push word [bp - 0x0250]          ; 0x179d
    call ds_dispatch_e8da            ; 0x17a1
    add sp, byte 8                   ; 0x17a4
    mov ax, 0                        ; 0x17a7
    push ax                          ; 0x17aa
    mov ax, word [bp - 0x0002]       ; 0x17ab
    shl ax, 1                        ; 0x17ae
    shl ax, 1                        ; 0x17b0
    mov bx, ax                       ; 0x17b2
    push word [bx + 0x69a6]          ; 0x17b4
    push word [bx + 0x69a4]          ; 0x17b8
    call ds_dispatch_e94f            ; 0x17bc
    add sp, byte 6                   ; 0x17bf
    mov ax, word [bp - 0x0002]       ; 0x17c2
    mov cx, 2                        ; 0x17c5
    cwd                              ; 0x17c8
    idiv cx                          ; 0x17c9
    mov ax, dx                       ; 0x17cb
    mov cx, 0xfc                     ; 0x17cd
    imul cx                          ; 0x17d0
    add ax, strict word 5            ; 0x17d2
    mov word [bp - 0x0250], ax       ; 0x17d5
    mov ax, word [bp - 0x0002]       ; 0x17d9
    mov cx, 2                        ; 0x17dc
    cwd                              ; 0x17df
    idiv cx                          ; 0x17e0
    mov cx, 0x2d                     ; 0x17e2
    imul cx                          ; 0x17e5
    add ax, strict word 0x12         ; 0x17e7
    mov word [bp - 0x0252], ax       ; 0x17ea
    add ax, strict word 0x2b         ; 0x17ee
    push ax                          ; 0x17f1
    mov ax, word [bp - 0x0250]       ; 0x17f2
    add ax, strict word 0x3b         ; 0x17f6
    push ax                          ; 0x17f9
    push word [bp - 0x0252]          ; 0x17fa
    push word [bp - 0x0250]          ; 0x17fe
    call ds_dispatch_e8da            ; 0x1802
    add sp, byte 8                   ; 0x1805
    mov ax, 1                        ; 0x1808
    push ax                          ; 0x180b
    push word [bp + 0x4]             ; 0x180c
    call ds_dispatch_cb3a            ; 0x180f
    add sp, byte 4                   ; 0x1812
    mov ax, 1                        ; 0x1815
    push ax                          ; 0x1818
    push word [bp - 0x0002]          ; 0x1819
    call ds_dispatch_cb3a            ; 0x181c
    add sp, byte 4                   ; 0x181f
    ret                              ; 0x1822
loc_1823:
    mov ax, 0                        ; 0x1823
    call ds_dispatch_f40b            ; 0x1826
    mov ax, word [bp + 0x6]          ; 0x1829
    dec ax                           ; 0x182c
    push ax                          ; 0x182d
    push word [bp + 0x4]             ; 0x182e
    lea ax, word [bp + 0xc]          ; 0x1831
    push ax                          ; 0x1834
    lea ax, word [bp + 0xa]          ; 0x1835
    push ax                          ; 0x1838
    lea ax, word [bp + 0x8]          ; 0x1839
    push ax                          ; 0x183c
    call api_idx_0004                ; 0x183d
    add sp, byte 0x0a                ; 0x1840
    test ax, ax                      ; 0x1843
    je short @..local.l25            ; 0x1845
    mov ax, word [data_5b6e]         ; 0x1847
    mov cx, 2                        ; 0x184a
    cwd                              ; 0x184d
    idiv cx                          ; 0x184e
    mov ax, dx                       ; 0x1850
    test ax, ax                      ; 0x1852
    je short @..local.l21            ; 0x1854
    mov ax, cx                       ; 0x1856
    jmp short @..local.l24           ; 0x1858
@..local.l21:
    mov ax, word [data_5b6e]         ; 0x185a
    cmp ax, strict word 6            ; 0x185d
    je short @..local.l22            ; 0x1860
    cmp word [data_9188], byte 0     ; 0x1862
    je short @..local.l23            ; 0x1867
@..local.l22:
    mov ax, 0                        ; 0x1869
    jmp short @..local.l24           ; 0x186c
@..local.l23:
    mov ax, 4                        ; 0x186e
@..local.l24:
    ret                              ; 0x1871
@..local.l25:
    mov ax, 4                        ; 0x1872
    push ax                          ; 0x1875
    mov ax, word [bp + 0xc]          ; 0x1876
    mov cx, 6                        ; 0x1879
    shl ax, cl                       ; 0x187c
    mov cx, word [bp + 0xa]          ; 0x187e
    shl cx, 1                        ; 0x1881
    shl cx, 1                        ; 0x1883
    shl cx, 1                        ; 0x1885
    add ax, cx                       ; 0x1887
    add ax, word [bp + 0x8]          ; 0x1889
    push ax                          ; 0x188c
    mov ax, word [data_0e14]         ; 0x188d
    add ax, 0x90                     ; 0x1890
    push ax                          ; 0x1893
    call ds_dispatch_ecf6            ; 0x1894
    add sp, byte 6                   ; 0x1897
    ret                              ; 0x189a
loc_189b:
    mov ax, 0                        ; 0x189b
    call ds_dispatch_f40b            ; 0x189e
    push word [bp + 0x6]             ; 0x18a1
    mov ax, word [bp + 0x4]          ; 0x18a4
    dec ax                           ; 0x18a7
    push ax                          ; 0x18a8
    lea ax, word [bp + 0xc]          ; 0x18a9
    push ax                          ; 0x18ac
    lea ax, word [bp + 0xa]          ; 0x18ad
    push ax                          ; 0x18b0
    lea ax, word [bp + 0x8]          ; 0x18b1
    push ax                          ; 0x18b4
    call api_idx_0004                ; 0x18b5
    add sp, byte 0x0a                ; 0x18b8
    test ax, ax                      ; 0x18bb
    je short @..local.l30            ; 0x18bd
    mov ax, word [data_5b6e]         ; 0x18bf
    mov cx, 2                        ; 0x18c2
    cwd                              ; 0x18c5
    idiv cx                          ; 0x18c6
    mov ax, dx                       ; 0x18c8
    test ax, ax                      ; 0x18ca
    je short @..local.l26            ; 0x18cc
    mov ax, cx                       ; 0x18ce
    jmp short @..local.l29           ; 0x18d0
@..local.l26:
    mov ax, word [data_5b6e]         ; 0x18d2
    cmp ax, strict word 6            ; 0x18d5
    je short @..local.l27            ; 0x18d8
    cmp word [data_9188], byte 0     ; 0x18da
    je short @..local.l28            ; 0x18df
@..local.l27:
    mov ax, 0                        ; 0x18e1
    jmp short @..local.l29           ; 0x18e4
@..local.l28:
    mov ax, 4                        ; 0x18e6
@..local.l29:
    ret                              ; 0x18e9
@..local.l30:
    mov ax, 4                        ; 0x18ea
    push ax                          ; 0x18ed
    mov ax, word [bp + 0xc]          ; 0x18ee
    mov cx, 6                        ; 0x18f1
    shl ax, cl                       ; 0x18f4
    mov cx, word [bp + 0xa]          ; 0x18f6
    shl cx, 1                        ; 0x18f9
    shl cx, 1                        ; 0x18fb
    shl cx, 1                        ; 0x18fd
    add ax, cx                       ; 0x18ff
    add ax, word [bp + 0x8]          ; 0x1901
    push ax                          ; 0x1904
    mov ax, word [data_0e14]         ; 0x1905
    add ax, 0x290                    ; 0x1908
    push ax                          ; 0x190b
    call ds_dispatch_ecf6            ; 0x190c
    add sp, byte 6                   ; 0x190f
    ret                              ; 0x1912
loc_1913:
    mov ax, 0                        ; 0x1913
    call ds_dispatch_f40b            ; 0x1916
    mov ax, 0xffff                   ; 0x1919
    cmp word [data_91a4], byte 0     ; 0x191c
    je short @..local.l31            ; 0x1921
    mov ax, word [bp + 0x4]          ; 0x1923
@..local.l31:
    ret                              ; 0x1926
loc_1927:
    mov ax, 0                        ; 0x1927
    call ds_dispatch_f40b            ; 0x192a
    mov ax, word [bp + 0x4]          ; 0x192d
    cmp word [data_91a4], byte 0     ; 0x1930
    je short @..local.l32            ; 0x1935
    mov ax, word [bp + 0x6]          ; 0x1937
@..local.l32:
    ret                              ; 0x193a
loc_193b:
    mov ax, 0                        ; 0x193b
    call ds_dispatch_f40b            ; 0x193e
    mov ax, 0xffff                   ; 0x1941
    cmp word [data_91a6], byte 0     ; 0x1944
    je short @..local.l33            ; 0x1949
    mov ax, word [bp + 0x4]          ; 0x194b
@..local.l33:
    ret                              ; 0x194e
loc_194f:
    mov ax, 0                        ; 0x194f
    call ds_dispatch_f40b            ; 0x1952
    mov ax, word [bp + 0x4]          ; 0x1955
    cmp word [data_91a6], byte 0     ; 0x1958
    je short @..local.l34            ; 0x195d
    mov ax, word [bp + 0x6]          ; 0x195f
@..local.l34:
    ret                              ; 0x1962
loc_1963:
    mov ax, 0                        ; 0x1963
    call ds_dispatch_f40b            ; 0x1966
    mov ax, word [data_82ee]         ; 0x1969
    jmp short @..local.l39           ; 0x196c
@..local.l35:
    mov ax, word [bp + 0xe]          ; 0x196e
    mov bx, word [bp + 0x4]          ; 0x1971
    add word [bx], ax                ; 0x1974
    mov ax, word [bp + 0x10]         ; 0x1976
    mov bx, word [bp + 0x6]          ; 0x1979
    add word [bx], ax                ; 0x197c
    jmp short @..local.l40           ; 0x197e
@..local.l36:
    mov ax, word [bp + 0x10]         ; 0x1980
    mov bx, word [bp + 0x4]          ; 0x1983
    add word [bx], ax                ; 0x1986
    mov ax, word [bp + 0xe]          ; 0x1988
    mov bx, word [bp + 0x6]          ; 0x198b
    sub word [bx], ax                ; 0x198e
    jmp short @..local.l40           ; 0x1990
@..local.l37:
    mov ax, word [bp + 0xe]          ; 0x1992
    mov bx, word [bp + 0x4]          ; 0x1995
    sub word [bx], ax                ; 0x1998
    mov ax, word [bp + 0x10]         ; 0x199a
    mov bx, word [bp + 0x6]          ; 0x199d
    sub word [bx], ax                ; 0x19a0
    jmp short @..local.l40           ; 0x19a2
@..local.l38:
    mov ax, word [bp + 0x10]         ; 0x19a4
    mov bx, word [bp + 0x4]          ; 0x19a7
    sub word [bx], ax                ; 0x19aa
    mov ax, word [bp + 0xe]          ; 0x19ac
    mov bx, word [bp + 0x6]          ; 0x19af
    add word [bx], ax                ; 0x19b2
    jmp short @..local.l40           ; 0x19b4
@..local.l39:
    cmp ax, strict word 0            ; 0x19b6
    je short @..local.l35            ; 0x19b9
    cmp ax, strict word 1            ; 0x19bb
    je short @..local.l36            ; 0x19be
    cmp ax, strict word 2            ; 0x19c0
    je short @..local.l37            ; 0x19c3
    cmp ax, strict word 3            ; 0x19c5
    je short @..local.l38            ; 0x19c8
@..local.l40:
    mov bx, word [bp + 0x6]          ; 0x19ca
    push word [bx]                   ; 0x19cd
    mov bx, word [bp + 0x4]          ; 0x19cf
    push word [bx]                   ; 0x19d2
    push word [bp + 0xc]             ; 0x19d4
    push word [bp + 0xa]             ; 0x19d7
    push word [bp + 0x8]             ; 0x19da
    call api_idx_0004                ; 0x19dd
    add sp, byte 0x0a                ; 0x19e0
    ret                              ; 0x19e3
loc_19e4:
    mov ax, 0                        ; 0x19e4
    call ds_dispatch_f40b            ; 0x19e7
    mov ax, 6                        ; 0x19ea
    push ax                          ; 0x19ed
    push word [bp + 0x4]             ; 0x19ee
    mov ax, word [data_0e14]         ; 0x19f1
    add ax, 0x4b0                    ; 0x19f4
    push ax                          ; 0x19f7
    call ds_dispatch_ecf6            ; 0x19f8
    add sp, byte 6                   ; 0x19fb
    mov bx, word [bp + 0x6]          ; 0x19fe
    mov word [bx], ax                ; 0x1a01
    mov ax, 2                        ; 0x1a03
    push ax                          ; 0x1a06
    push word [bp + 0x4]             ; 0x1a07
    mov ax, word [data_0e14]         ; 0x1a0a
    add ax, 0x7b0                    ; 0x1a0d
    push ax                          ; 0x1a10
    call ds_dispatch_ecf6            ; 0x1a11
    add sp, byte 6                   ; 0x1a14
    mov bx, word [bp + 0x8]          ; 0x1a17
    mov word [bx], ax                ; 0x1a1a
    ret                              ; 0x1a1c
%include "vmext/api_idx_0008_3.asm"

    cmp word [data_9188], byte 0     ; 0x1a5a
    je short loc_1a65                ; 0x1a5f
    mov ax, 0                        ; 0x1a61
    ret                              ; 0x1a64
    mov ax, 5                        ; 0x1a65
    imul word [data_91aa]            ; 0x1a68
    add ax, word [bp + 0xe]          ; 0x1a6c
    db 0x8b, 0xd8 ; mov bx, ax
    mov byte [bx - 0x6e52], 1        ; 0x1a71
    mov ax, 4                        ; 0x1a76
    ret                              ; 0x1a79
    mov ax, 5                        ; 0x1a7a
    imul word [data_91aa]            ; 0x1a7d
    add ax, word [bp + 0xe]          ; 0x1a81
    db 0x8b, 0xd8 ; mov bx, ax
    mov byte [bx - 0x6e52], 3        ; 0x1a86
    mov ax, 0                        ; 0x1a8b
    ret                              ; 0x1a8e
    popf                             ; 0x1a8f
    db 0x6a, 0xac ; push 0xffac
    db 0x6a, 0x9d ; push 0xff9d
    db 0x6a, 0xa1 ; push 0xffa1
    db 0x6a, 0x9d ; push 0xff9d
    db 0x6a, 0xc1 ; push 0xffc1
    db 0x6a
@..api_idx_0008_3.l2:
    cmp ax, strict word 6            ; 0x1a9b
    jae short @..api_idx_0008_3.l3   ; 0x1a9e
    xchg bx, ax                      ; 0x1aa0
    shl bx, 1                        ; 0x1aa1
    jmp [cs:bx + 0x6ad6]             ; 0x1aa3
@..api_idx_0008_3.l3:
    mov ax, word [bp + 0xc]          ; 0x1aa8
    mov cx, 6                        ; 0x1aab
    shl ax, cl                       ; 0x1aae
    mov cx, word [bp + 0xa]          ; 0x1ab0
    shl cx, 1                        ; 0x1ab3
    shl cx, 1                        ; 0x1ab5
    shl cx, 1                        ; 0x1ab7
    add ax, cx                       ; 0x1ab9
    add ax, word [bp + 0x8]          ; 0x1abb
    mov word [bp - 0x0002], ax       ; 0x1abe
    push ax                          ; 0x1ac1
    mov ax, word [data_0e14]         ; 0x1ac2
    add ax, 0x9b0                    ; 0x1ac5
    push ax                          ; 0x1ac8
    call ds_dispatch_ec74            ; 0x1ac9
    add sp, byte 4                   ; 0x1acc
    test ax, ax                      ; 0x1acf
    je short @..api_idx_0008_3.l5    ; 0x1ad1
    mov ax, word [data_91a8]         ; 0x1ad3
    jmp short @..api_idx_0008_3.l4   ; 0x1ad6

    db 0xb8, 0x05, 0x00, 0xf7, 0x2e, 0xaa, 0x91, 0x03, 0x46, 0x0e, 0x8b, 0xd8, 0xc6, 0x87, 0xae, 0x91
    db 0x03, 0xeb, 0x3f, 0xb8, 0x05, 0x00, 0xf7, 0x2e, 0xaa, 0x91, 0x03, 0x46, 0x0e, 0x8b, 0xd8, 0xc6
    db 0x87, 0xae, 0x91, 0x01, 0xeb, 0x2c, 0xb8, 0x05, 0x00, 0xf7, 0x2e, 0xaa, 0x91, 0x03, 0x46, 0x0e
    db 0x8b, 0xd8, 0xc6, 0x87, 0xae, 0x91, 0x02, 0xeb, 0x19, 0x1f
    db 'k2kEk2k'
    db 0x1f, 0x6b, 0x32, 0x6b

@..api_idx_0008_3.l4:
    cmp ax, strict word 6            ; 0x1b1d
    jae short @..api_idx_0008_3.l5   ; 0x1b20
    xchg bx, ax                      ; 0x1b22
    shl bx, 1                        ; 0x1b23
    jmp [cs:bx + 0x6b58]             ; 0x1b25
@..api_idx_0008_3.l5:
    push word [bp - 0x0002]          ; 0x1b2a
    mov ax, word [data_0e14]         ; 0x1b2d
    add ax, 0x8b0                    ; 0x1b30
    push ax                          ; 0x1b33
    call ds_dispatch_ec74            ; 0x1b34
    add sp, byte 4                   ; 0x1b37
    test ax, ax                      ; 0x1b3a
    jne short @..api_idx_0008_3.l6   ; 0x1b3c
    jmp near @..api_idx_0008_3.l8    ; 0x1b3e
@..api_idx_0008_3.l6:
    mov ax, word [data_91a8]         ; 0x1b41
    jmp short @..api_idx_0008_3.l7   ; 0x1b44

    db 0xb8, 0x05, 0x00, 0xf7, 0x2e, 0xaa, 0x91, 0x03, 0x46, 0x0e, 0x8b, 0xd8, 0xc6, 0x87, 0xae, 0x91
    db 0x02, 0xeb, 0x60, 0xb8, 0x05, 0x00, 0xf7, 0x2e, 0xaa, 0x91, 0x03, 0x46, 0x0e, 0x8b, 0xd8, 0xc6
    db 0x87, 0xc7, 0x91, 0x01, 0xeb, 0x4d, 0xb8, 0x05, 0x00, 0xf7, 0x2e, 0xaa, 0x91, 0x03, 0x46, 0x0e
    db 0x8b, 0xd8, 0xc6, 0x87, 0xae, 0x91, 0x03, 0xeb, 0x3a, 0xb8, 0x05, 0x00, 0xf7, 0x2e, 0xaa, 0x91
    db 0x03, 0x46, 0x0e, 0x8b, 0xd8, 0xc6, 0x87, 0xe0, 0x91, 0x01, 0x83, 0x3e, 0xaa, 0x91, 0x04, 0x7d
    db 0x05, 0xc6, 0x87, 0xe5, 0x91, 0x01, 0xb8, 0x00, 0x00, 0xc3, 0xc6, 0x6b, 0x8d, 0x6b, 0xa0, 0x6b
    db 0xc6, 0x6b, 0xa0, 0x6b, 0xb3, 0x6b

@..api_idx_0008_3.l7:
    cmp ax, strict word 6            ; 0x1bac
    jae short @..api_idx_0008_3.l8   ; 0x1baf
    xchg bx, ax                      ; 0x1bb1
    shl bx, 1                        ; 0x1bb2
    jmp [cs:bx + 0x6be7]             ; 0x1bb4
@..api_idx_0008_3.l8:
    push word [bp - 0x0002]          ; 0x1bb9
    mov ax, word [data_0e14]         ; 0x1bbc
    add ax, 0x930                    ; 0x1bbf
    push ax                          ; 0x1bc2
    call ds_dispatch_ec74            ; 0x1bc3
    add sp, byte 4                   ; 0x1bc6
    test ax, ax                      ; 0x1bc9
    je short @..api_idx_0008_3.l13   ; 0x1bcb
    mov ax, word [data_830c]         ; 0x1bcd
    jmp short @..api_idx_0008_3.l12  ; 0x1bd0
@..api_idx_0008_3.l9:
    mov ax, 5                        ; 0x1bd2
    imul word [data_91aa]            ; 0x1bd5
    add ax, word [bp + 0xe]          ; 0x1bd9
    mov bx, ax                       ; 0x1bdc
    mov byte [bx - 0x6e52], 3        ; 0x1bde
    jmp short @..api_idx_0008_3.l13  ; 0x1be3
@..api_idx_0008_3.l10:
    mov ax, 5                        ; 0x1be5
    imul word [data_91aa]            ; 0x1be8
    add ax, word [bp + 0xe]          ; 0x1bec
    mov bx, ax                       ; 0x1bef
    mov byte [bx - 0x6e20], 2        ; 0x1bf1
    cmp word [data_91aa], byte 4     ; 0x1bf6
    jge short @..api_idx_0008_3.l11  ; 0x1bfb
    mov byte [bx - 0x6e1b], 2        ; 0x1bfd
@..api_idx_0008_3.l11:
    jmp short @..api_idx_0008_3.l13  ; 0x1c02
@..api_idx_0008_3.l12:
    cmp ax, strict word 0xa          ; 0x1c04
    je short @..api_idx_0008_3.l10   ; 0x1c07
    cmp ax, strict word 0xe          ; 0x1c09
    je short @..api_idx_0008_3.l9    ; 0x1c0c
    cmp ax, strict word 0x13         ; 0x1c0e
    je short @..api_idx_0008_3.l9    ; 0x1c11
    cmp ax, strict word 0x19         ; 0x1c13
    je short @..api_idx_0008_3.l10   ; 0x1c16
    cmp ax, strict word 0x1f         ; 0x1c18
    je short @..api_idx_0008_3.l9    ; 0x1c1b
@..api_idx_0008_3.l13:
    mov ax, word [data_82ee]         ; 0x1c1d
    jmp short @..api_idx_0008_3.l18  ; 0x1c20
@..api_idx_0008_3.l14:
    mov ax, 4                        ; 0x1c22
    push ax                          ; 0x1c25
    push word [bp - 0x0002]          ; 0x1c26
    mov ax, word [data_0e14]         ; 0x1c29
    add ax, 0x90                     ; 0x1c2c
    push ax                          ; 0x1c2f
    call ds_dispatch_ecf6            ; 0x1c30
    add sp, byte 6                   ; 0x1c33
    mov word [bp - 0x0004], ax       ; 0x1c36
    jmp short @..api_idx_0008_3.l19  ; 0x1c39
@..api_idx_0008_3.l15:
    mov ax, 4                        ; 0x1c3b
    push ax                          ; 0x1c3e
    push word [bp - 0x0002]          ; 0x1c3f
    mov ax, word [data_0e14]         ; 0x1c42
    add ax, 0x290                    ; 0x1c45
    push ax                          ; 0x1c48
    call ds_dispatch_ecf6            ; 0x1c49
    add sp, byte 6                   ; 0x1c4c
    mov word [bp - 0x0004], ax       ; 0x1c4f
    jmp short @..api_idx_0008_3.l19  ; 0x1c52
@..api_idx_0008_3.l16:
    push word [bp + 0xc]             ; 0x1c54
    push word [bp + 0xa]             ; 0x1c57
    push word [bp + 0x8]             ; 0x1c5a
    push word [bp + 0x6]             ; 0x1c5d
    push word [bp + 0x4]             ; 0x1c60
    call loc_1823                    ; 0x1c63
    add sp, byte 0x0a                ; 0x1c66
    mov word [bp - 0x0004], ax       ; 0x1c69
    jmp short @..api_idx_0008_3.l19  ; 0x1c6c
@..api_idx_0008_3.l17:
    push word [bp + 0xc]             ; 0x1c6e
    push word [bp + 0xa]             ; 0x1c71
    push word [bp + 0x8]             ; 0x1c74
    push word [bp + 0x6]             ; 0x1c77
    push word [bp + 0x4]             ; 0x1c7a
    call loc_189b                    ; 0x1c7d
    add sp, byte 0x0a                ; 0x1c80
    mov word [bp - 0x0004], ax       ; 0x1c83
    jmp short @..api_idx_0008_3.l19  ; 0x1c86
@..api_idx_0008_3.l18:
    cmp ax, strict word 0            ; 0x1c88
    je short @..api_idx_0008_3.l14   ; 0x1c8b
    cmp ax, strict word 1            ; 0x1c8d
    je short @..api_idx_0008_3.l15   ; 0x1c90
    cmp ax, strict word 2            ; 0x1c92
    je short @..api_idx_0008_3.l16   ; 0x1c95
    cmp ax, strict word 3            ; 0x1c97
    je short @..api_idx_0008_3.l17   ; 0x1c9a
@..api_idx_0008_3.l19:
    lea ax, word [bp - 0x0008]       ; 0x1c9c
    push ax                          ; 0x1c9f
    lea ax, word [bp - 0x0006]       ; 0x1ca0
    push ax                          ; 0x1ca3
    push word [bp - 0x0002]          ; 0x1ca4
    call loc_19e4                    ; 0x1ca7
    add sp, byte 6                   ; 0x1caa
    mov ax, word [data_82ee]         ; 0x1cad
    cmp ax, word [bp - 0x0008]       ; 0x1cb0
    je short @..api_idx_0008_3.l21   ; 0x1cb3
    mov ax, word [bp - 0x0006]       ; 0x1cb5
    cmp ax, strict word 7            ; 0x1cb8
    jl short @..api_idx_0008_3.l20   ; 0x1cbb
    cmp ax, strict word 9            ; 0x1cbd
    jle short @..api_idx_0008_3.l21  ; 0x1cc0
@..api_idx_0008_3.l20:
    cmp ax, strict word 0xb          ; 0x1cc2
    jg short @..api_idx_0008_3.l21   ; 0x1cc5
    jmp near @..api_idx_0008_3.l23   ; 0x1cc7
@..api_idx_0008_3.l21:
    mov ax, word [bp - 0x0006]       ; 0x1cca
    jmp near @..api_idx_0008_3.l22   ; 0x1ccd

    db 0xc7, 0x46, 0xfc, 0x08, 0x00, 0xe9, 0x3e, 0x01, 0xc7, 0x46, 0xfc, 0x09, 0x00, 0xe9, 0x36, 0x01
    db 0xc7, 0x46, 0xfc, 0x0a, 0x00, 0xe9, 0x2e, 0x01, 0xc7, 0x46, 0xfc, 0x0b, 0x00, 0xe9, 0x26, 0x01
    db 0x83, 0x3e, 0xaa, 0x91, 0x00, 0x75, 0x05, 0xc7, 0x46, 0xfc, 0x0c, 0x00, 0xe9, 0x17, 0x01, 0x83
    db 0x3e, 0xaa, 0x91, 0x00, 0x75, 0x05, 0xc7, 0x46, 0xfc, 0x0d, 0x00, 0xe9, 0x08, 0x01, 0x8b, 0x46
    db 0xf8, 0x40, 0x50, 0xb8, 0x05, 0x00, 0xf7, 0x2e, 0xaa, 0x91, 0x8b, 0xc8, 0x03, 0x46, 0x0e, 0x8b
    db 0xd8, 0x58, 0x88, 0x87, 0xf9, 0x91, 0xe9, 0xed, 0x00, 0x8b, 0x46, 0xf8, 0x40, 0x50, 0xb8, 0x0a
    db 0x00, 0xf7, 0x2e, 0xaa, 0x91, 0x8b, 0xc8, 0x8b, 0x56, 0x0e, 0xd1, 0xe2, 0x03, 0xc2, 0x8b, 0xd8
    db 0x58, 0x89, 0x87, 0x14, 0x92, 0xe9, 0xce, 0x00, 0x8b, 0x46, 0xf8, 0x40, 0x50, 0xb8, 0x0a, 0x00
    db 0xf7, 0x2e, 0xaa, 0x91, 0x8b, 0xc8, 0x8b, 0x56, 0x0e, 0xd1, 0xe2, 0x03, 0xc2, 0x8b, 0xd8, 0x58
    db 0x89, 0x87, 0x46, 0x92, 0xe9, 0xaf, 0x00, 0xc7, 0x46, 0xfc, 0x0e, 0x00, 0xe9, 0xa7, 0x00, 0xc7
    db 0x46, 0xfc, 0x0f, 0x00, 0xe9, 0x9f, 0x00, 0xb8, 0x05, 0x00, 0xf7, 0x2e, 0xaa, 0x91, 0x03, 0x46
    db 0x0e, 0x8b, 0xd8, 0xc6, 0x87, 0x76, 0x92, 0x01, 0xe9, 0x8b, 0x00, 0xb8, 0x05, 0x00, 0xf7, 0x2e
    db 0xaa, 0x91, 0x03, 0x46, 0x0e, 0x8b, 0xd8, 0xc6, 0x87, 0xae, 0x91, 0x03, 0xeb, 0x78, 0xb8, 0x0a
    db 0x00, 0xf7, 0x2e, 0xaa, 0x91, 0x8b, 0x4e, 0x0e, 0xd1, 0xe1, 0x03, 0xc1, 0x8b, 0xd8, 0xc7, 0x87
    db 0x92, 0x92, 0x01, 0x00, 0x83, 0x7e, 0xfa, 0x0e, 0x74, 0x16, 0xb8, 0x0a, 0x00, 0xf7, 0x2e, 0xaa
    db 0x91, 0x8b, 0x4e, 0x0e, 0xd1, 0xe1, 0x03, 0xc1, 0x8b, 0xd8, 0xc7, 0x87, 0xc4, 0x92, 0x01, 0x00
    db 0xeb, 0x44, 0xb8, 0x05, 0x00, 0xf7, 0x2e, 0xaa, 0x91, 0x03, 0x46, 0x0e, 0x8b, 0xd8, 0xc6, 0x87
    db 0x76, 0x92, 0x02, 0xeb, 0x31, 0x5d, 0x6e, 0x17, 0x6d, 0x1f
    db "m'm/m7mFmUmpm"
    db 0x8f, 0x6d, 0xae, 0x6d, 0xb6, 0x6d, 0xbe, 0x6d, 0xd2, 0x6d, 0xe5, 0x6d, 0xfb, 0x6d, 0x19, 0x6e
    db 0xe5, 0x6d

@..api_idx_0008_3.l22:
    cmp ax, strict word 0x12         ; 0x1e09
    jae short @..api_idx_0008_3.l23  ; 0x1e0c
    xchg bx, ax                      ; 0x1e0e
    shl bx, 1                        ; 0x1e0f
    jmp [cs:bx + 0x6e2c]             ; 0x1e11
@..api_idx_0008_3.l23:
    mov ax, word [data_830c]         ; 0x1e16
    cmp ax, word [data_8f28]         ; 0x1e19
    jne short @..api_idx_0008_3.l24  ; 0x1e1d
    mov ax, word [bp + 0xc]          ; 0x1e1f
    cmp ax, word [data_8f2a]         ; 0x1e22
    jne short @..api_idx_0008_3.l24  ; 0x1e26
    mov ax, word [bp + 0x8]          ; 0x1e28
    cmp ax, word [data_8f2e]         ; 0x1e2b
    jne short @..api_idx_0008_3.l24  ; 0x1e2f
    mov ax, word [bp + 0xa]          ; 0x1e31
    cmp ax, word [data_8f2c]         ; 0x1e34
    jne short @..api_idx_0008_3.l24  ; 0x1e38
    mov ax, 5                        ; 0x1e3a
    imul word [data_91aa]            ; 0x1e3d
    add ax, word [bp + 0xe]          ; 0x1e41
    mov bx, ax                       ; 0x1e44
    mov byte [bx - 0x6d8a], 3        ; 0x1e46
@..api_idx_0008_3.l24:
    mov ax, word [bp - 0x0004]       ; 0x1e4b
    ret                              ; 0x1e4e
%include "vmext/api_idx_0008_4.asm"

    cmp word [data_9188], byte 0     ; 0x1e89
    je short loc_1e94                ; 0x1e8e
    mov ax, 0                        ; 0x1e90
    ret                              ; 0x1e93
    mov ax, 4                        ; 0x1e94
    ret                              ; 0x1e97
    mov ax, 0                        ; 0x1e98
    ret                              ; 0x1e9b
    int3                             ; 0x1e9c
    outsb                            ; 0x1e9d
    db 0xdb, 0x6e, 0xcc ; fld [bp - 0x0034]
    outsb                            ; 0x1ea1
    shr byte [bp - 0x0034], 1        ; 0x1ea2
    outsb                            ; 0x1ea5
    db 0xdf, 0x6e
@..api_idx_0008_4.l1:
    cmp ax, strict word 6            ; 0x1ea8
    jae short @..api_idx_0008_4.l2   ; 0x1eab
    xchg bx, ax                      ; 0x1ead
    shl bx, 1                        ; 0x1eae
    jmp [cs:bx + 0x6ee3]             ; 0x1eb0
@..api_idx_0008_4.l2:
    mov ax, word [bp + 0xe]          ; 0x1eb5
    mov cx, 6                        ; 0x1eb8
    shl ax, cl                       ; 0x1ebb
    mov cx, word [bp + 0xc]          ; 0x1ebd
    shl cx, 1                        ; 0x1ec0
    shl cx, 1                        ; 0x1ec2
    shl cx, 1                        ; 0x1ec4
    add ax, cx                       ; 0x1ec6
    add ax, word [bp + 0xa]          ; 0x1ec8
    mov word [bp - 0x0002], ax       ; 0x1ecb
    push ax                          ; 0x1ece
    mov ax, word [data_0e14]         ; 0x1ecf
    add ax, 0x8b0                    ; 0x1ed2
    push ax                          ; 0x1ed5
    call ds_dispatch_ec74            ; 0x1ed6
    add sp, byte 4                   ; 0x1ed9
    test ax, ax                      ; 0x1edc
    je short @..api_idx_0008_4.l5    ; 0x1ede
    mov ax, word [data_91a8]         ; 0x1ee0
    jmp short @..api_idx_0008_4.l4   ; 0x1ee3
@..api_idx_0008_4.l3:
    mov ax, 0                        ; 0x1ee5
    ret                              ; 0x1ee8
@..api_idx_0008_4.l4:
    cmp ax, strict word 0            ; 0x1ee9
    je short @..api_idx_0008_4.l3    ; 0x1eec
    cmp ax, strict word 3            ; 0x1eee
    je short @..api_idx_0008_4.l3    ; 0x1ef1
@..api_idx_0008_4.l5:
    mov ax, word [data_82ee]         ; 0x1ef3
    add ax, word [bp + 0x4]          ; 0x1ef6
    mov cx, 4                        ; 0x1ef9
    cwd                              ; 0x1efc
    idiv cx                          ; 0x1efd
    mov ax, dx                       ; 0x1eff
    jmp short @..api_idx_0008_4.l10  ; 0x1f01
@..api_idx_0008_4.l6:
    push word [bp + 0xe]             ; 0x1f03
    push word [bp + 0xc]             ; 0x1f06
    push word [bp + 0xa]             ; 0x1f09
    push word [bp + 0x8]             ; 0x1f0c
    push word [bp + 0x6]             ; 0x1f0f
    call loc_189b                    ; 0x1f12
    add sp, byte 0x0a                ; 0x1f15
    mov word [bp - 0x0004], ax       ; 0x1f18
    jmp short @..api_idx_0008_4.l11  ; 0x1f1b
@..api_idx_0008_4.l7:
    mov ax, 4                        ; 0x1f1d
    push ax                          ; 0x1f20
    push word [bp - 0x0002]          ; 0x1f21
    mov ax, word [data_0e14]         ; 0x1f24
    add ax, 0x90                     ; 0x1f27
    push ax                          ; 0x1f2a
    call ds_dispatch_ecf6            ; 0x1f2b
    add sp, byte 6                   ; 0x1f2e
    mov word [bp - 0x0004], ax       ; 0x1f31
    jmp short @..api_idx_0008_4.l11  ; 0x1f34
@..api_idx_0008_4.l8:
    mov ax, 4                        ; 0x1f36
    push ax                          ; 0x1f39
    push word [bp - 0x0002]          ; 0x1f3a
    mov ax, word [data_0e14]         ; 0x1f3d
    add ax, 0x290                    ; 0x1f40
    push ax                          ; 0x1f43
    call ds_dispatch_ecf6            ; 0x1f44
    add sp, byte 6                   ; 0x1f47
    mov word [bp - 0x0004], ax       ; 0x1f4a
    jmp short @..api_idx_0008_4.l11  ; 0x1f4d
@..api_idx_0008_4.l9:
    push word [bp + 0xe]             ; 0x1f4f
    push word [bp + 0xc]             ; 0x1f52
    push word [bp + 0xa]             ; 0x1f55
    push word [bp + 0x8]             ; 0x1f58
    push word [bp + 0x6]             ; 0x1f5b
    call loc_1823                    ; 0x1f5e
    add sp, byte 0x0a                ; 0x1f61
    mov word [bp - 0x0004], ax       ; 0x1f64
    jmp short @..api_idx_0008_4.l11  ; 0x1f67
@..api_idx_0008_4.l10:
    cmp ax, strict word 0            ; 0x1f69
    je short @..api_idx_0008_4.l6    ; 0x1f6c
    cmp ax, strict word 1            ; 0x1f6e
    je short @..api_idx_0008_4.l7    ; 0x1f71
    cmp ax, strict word 2            ; 0x1f73
    je short @..api_idx_0008_4.l8    ; 0x1f76
    cmp ax, strict word 3            ; 0x1f78
    je short @..api_idx_0008_4.l9    ; 0x1f7b
@..api_idx_0008_4.l11:
    lea ax, word [bp - 0x0008]       ; 0x1f7d
    push ax                          ; 0x1f80
    lea ax, word [bp - 0x0006]       ; 0x1f81
    push ax                          ; 0x1f84
    push word [bp - 0x0002]          ; 0x1f85
    call loc_19e4                    ; 0x1f88
    add sp, byte 6                   ; 0x1f8b
    mov ax, word [bp - 0x0008]       ; 0x1f8e
    add ax, word [bp + 0x4]          ; 0x1f91
    inc ax                           ; 0x1f94
    mov cx, 4                        ; 0x1f95
    cwd                              ; 0x1f98
    idiv cx                          ; 0x1f99
    mov word [bp - 0x0008], dx       ; 0x1f9b
    cmp dx, word [data_82ee]         ; 0x1f9e
    je short @..api_idx_0008_4.l12   ; 0x1fa2
    jmp near @..api_idx_0008_4.l14   ; 0x1fa4
@..api_idx_0008_4.l12:
    mov ax, word [bp - 0x0006]       ; 0x1fa7
    jmp short @..api_idx_0008_4.l13  ; 0x1faa

    db 0xc7, 0x46, 0xfc, 0x08, 0x00, 0xeb, 0x64, 0xc7, 0x46, 0xfc, 0x09, 0x00, 0xeb, 0x5d, 0xc7, 0x46
    db 0xfc, 0x0a, 0x00, 0xeb, 0x56, 0xc7, 0x46, 0xfc, 0x0b, 0x00, 0xeb, 0x4f, 0x83, 0x3e, 0xaa, 0x91
    db 0x00, 0x75, 0x05, 0xc7, 0x46, 0xfc, 0x0c, 0x00, 0xeb, 0x41, 0x83, 0x3e, 0xaa, 0x91, 0x00, 0x75
    db 0x05, 0xc7, 0x46, 0xfc, 0x0d, 0x00, 0xeb, 0x33, 0xc7, 0x46, 0xfc, 0x0e, 0x00, 0xeb, 0x2c, 0xc7
    db 0x46, 0xfc, 0x0f, 0x00, 0xeb, 0x25, 0x5e, 0x70, 0xf3, 0x6f, 0xfa, 0x6f, 0x01, 0x70, 0x08, 0x70
    db 0x0f, 0x70, 0x1d
    db 'p^p^p^p+p2p'

@..api_idx_0008_4.l13:
    cmp ax, strict word 0xc          ; 0x200a
    jae short @..api_idx_0008_4.l14  ; 0x200d
    xchg bx, ax                      ; 0x200f
    shl bx, 1                        ; 0x2010
    jmp [cs:bx + 0x7039]             ; 0x2012
@..api_idx_0008_4.l14:
    mov ax, word [bp - 0x0004]       ; 0x2017
    ret                              ; 0x201a
%include "vmext/api_idx_0004_5.asm"

    mov ax, 0x11                     ; 0x221b
    imul word [data_92f2]            ; 0x221e
    mov bx, ax                       ; 0x2222
    pop ax                           ; 0x2224
    mov word [bx - 0x6d0c], ax       ; 0x2225
    mov ax, word [bp + 0x8]          ; 0x2229
    mov word [bx - 0x6d0a], ax       ; 0x222c
@..api_idx_0004_5.l14:
    mov al, byte [bp + 0xa]          ; 0x2230
    push ax                          ; 0x2233
    mov ax, 0x11                     ; 0x2234
    imul word [data_92f2]            ; 0x2237
    mov bx, ax                       ; 0x223b
    pop ax                           ; 0x223d
    mov byte [bx - 0x6d04], al       ; 0x223e
    mov al, byte [bp + 0xc]          ; 0x2242
    mov byte [bx - 0x6d03], al       ; 0x2245
    mov al, byte [bp + 0xe]          ; 0x2249
    mov byte [bx - 0x6d02], al       ; 0x224c
    mov al, byte [bp + 0x10]         ; 0x2250
    mov byte [bx - 0x6d01], al       ; 0x2253
    mov ax, word [bp + 0x12]         ; 0x2257
    mov word [bx - 0x6d08], ax       ; 0x225a
    mov ax, word [bp + 0x14]         ; 0x225e
    mov word [bx - 0x6d06], ax       ; 0x2261
    mov al, byte [bp + 0x16]         ; 0x2265
    mov byte [bx - 0x6cff], al       ; 0x2268
    mov al, byte [bp + 0x1a]         ; 0x226c
    mov byte [bx - 0x6cfd], al       ; 0x226f
    mov al, byte [bp + 0x1c]         ; 0x2273
    mov byte [bx - 0x6cfc], al       ; 0x2276
    inc word [data_92f2]             ; 0x227a
    mov ax, word [data_92f2]         ; 0x227e
    cmp ax, strict word 0x78         ; 0x2281
    jl short @..api_idx_0004_5.l16   ; 0x2284
@..api_idx_0004_5.l15:
    mov ax, 0                        ; 0x2286
    push ax                          ; 0x2289
    call ds_dispatch_b7e0            ; 0x228a
    pop cx                           ; 0x228d
    jmp short @..api_idx_0004_5.l15  ; 0x228e
@..api_idx_0004_5.l16:
    ret                              ; 0x2290
%include "vmext/api_idx_0010.asm"

    push ax                          ; 0x2491
    mov ax, 0                        ; 0x2492
    push ax                          ; 0x2495
    push ax                          ; 0x2496
    mov ax, 2                        ; 0x2497
    push ax                          ; 0x249a
    push ax                          ; 0x249b
    push word [bp - 0x0002]          ; 0x249c
    mov ax, word [bp + 0x48]         ; 0x249f
    add ax, word [bp + 0x4]          ; 0x24a2
    push ax                          ; 0x24a5
    mov ax, word [bp + 0x46]         ; 0x24a6
    add ax, word [bp + 0x4]          ; 0x24a9
    push ax                          ; 0x24ac
    call loc_1927                    ; 0x24ad
    add sp, byte 4                   ; 0x24b0
    push ax                          ; 0x24b3
    mov ax, 0xff                     ; 0x24b4
    push ax                          ; 0x24b7
    call api_idx_0004_5              ; 0x24b8
    add sp, byte 0x1c                ; 0x24bb
    jmp near @..api_idx_0010.l13     ; 0x24be
    mov ax, word [data_91a8]         ; 0x24c1
    mov cx, 2                        ; 0x24c4
    cwd                              ; 0x24c7
    idiv cx                          ; 0x24c8
    db 0x8b, 0xc2 ; mov ax, dx
    cmp ax, strict word 1            ; 0x24cc
    jne short loc_2513               ; 0x24cf
    cmp word [bp + 0x4], byte 4      ; 0x24d1
    jge short loc_2513               ; 0x24d5
    mov ax, 0                        ; 0x24d7
    push ax                          ; 0x24da
    push ax                          ; 0x24db
    push ax                          ; 0x24dc
    push word [bp + 0xc]             ; 0x24dd
    push word [bp + 0x4]             ; 0x24e0
    mov ax, 0xffff                   ; 0x24e3
    push ax                          ; 0x24e6
    push ax                          ; 0x24e7
    mov ax, 0                        ; 0x24e8
    push ax                          ; 0x24eb
    push ax                          ; 0x24ec
    push ax                          ; 0x24ed
    push cx                          ; 0x24ee
    mov ax, 0xffff                   ; 0x24ef
    push ax                          ; 0x24f2
    cmp word [data_9aec], byte 0     ; 0x24f3
    je short loc_2502                ; 0x24f8
    mov ax, word [bp + 0x1c]         ; 0x24fa
    add ax, word [bp + 0x4]          ; 0x24fd
    jmp short loc_2508               ; 0x2500
    mov ax, word [bp + 0x1a]         ; 0x2502
    add ax, word [bp + 0x4]          ; 0x2505
    push ax                          ; 0x2508
    mov ax, 0xfc                     ; 0x2509
    push ax                          ; 0x250c
    call api_idx_0004_5              ; 0x250d
    add sp, byte 0x1c                ; 0x2510
    jmp short @..api_idx_0010.l13    ; 0x2513
    mov word [di - 0x0080], si       ; 0x2515
    jae short loc_250e               ; 0x2518
    jae short loc_249c               ; 0x251a
    jae short loc_2526               ; 0x251c
    jne short loc_24dd               ; 0x251e
    jae short loc_24a2               ; 0x2520
    jae short loc_24a4               ; 0x2522
    jae short loc_24af               ; 0x2524
    jne short loc_24b1               ; 0x2526
    jne short loc_251e               ; 0x2528
    jae short loc_2520               ; 0x252a
    jae short loc_2522               ; 0x252c
    jae short loc_2524               ; 0x252e
    db 0x73, 0xf4 ; jae short loc_2526
    jae short loc_2528               ; 0x2532
    db 0x73
@..api_idx_0010.l12:
    cmp ax, strict word 0x10         ; 0x2535
    jae short @..api_idx_0010.l13    ; 0x2538
    xchg bx, ax                      ; 0x253a
    shl bx, 1                        ; 0x253b
    jmp [cs:bx + 0x755c]             ; 0x253d
@..api_idx_0010.l13:
    mov word [bp - 0x0002], 0xffff   ; 0x2542
    mov word [bp - 0x0004], 0xffff   ; 0x2547
    mov ax, word [bp + 0x4]          ; 0x254c
    cmp ax, word [bp - 0x000a]       ; 0x254f
    jl short @..api_idx_0010.l14     ; 0x2552
    jmp near @..api_idx_0010.l17     ; 0x2554
@..api_idx_0010.l14:
    mov word [bp - 0x0010], 0xffff   ; 0x2557
    mov ax, word [bp + 0x6]          ; 0x255c
    jmp near @..api_idx_0010.l15     ; 0x255f

    db 0x8b, 0x46, 0x2e, 0x83, 0x7e, 0x06, 0x08, 0x75, 0x03, 0x8b, 0x46, 0x2a, 0x89, 0x46, 0xfa, 0x8b
    db 0x46, 0x30, 0x83, 0x7e, 0x06, 0x08, 0x75, 0x03, 0x8b, 0x46, 0x2c, 0x89, 0x46, 0xf8, 0x8b, 0x46
    db 0xfa, 0x03, 0x46, 0x04, 0x40, 0x40, 0x40, 0x89, 0x46, 0xfe, 0xc7, 0x46, 0xfc, 0xff, 0xff, 0x83
    db 0x7e, 0x06, 0x07, 0x75, 0x25, 0x8b, 0x46, 0x44, 0x03, 0x46, 0x04, 0x50, 0x8b, 0x46, 0x42, 0x03
    db 0x46, 0x04, 0x50, 0xe8, 0x7f, 0xf3, 0x83, 0xc4, 0x04, 0x89, 0x46, 0xfe, 0x8b, 0x46, 0x42, 0x03
    db 0x46, 0x04, 0x50, 0xe8, 0x5b, 0xf3, 0x59, 0x89, 0x46, 0xfc, 0x83, 0x3e, 0xa8, 0x91, 0x00, 0x75
    db 0x49, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x50, 0xff, 0x76, 0x0a, 0xff, 0x76, 0x04, 0xff, 0x76, 0xfc
    db 0x8b, 0x46, 0x1e, 0x03, 0x46, 0x04, 0x50, 0xe8, 0x37, 0xf3, 0x59, 0x50, 0xb8, 0x00, 0x00, 0x50
    db 0x50, 0xb8, 0x02, 0x00, 0x50, 0x50, 0xff, 0x76, 0xfe, 0x8b, 0x46, 0x20, 0x03, 0x46, 0x04, 0x50
    db 0x8b, 0x46, 0x1e, 0x03, 0x46, 0x04, 0x50, 0xe8, 0x2b, 0xf3, 0x83, 0xc4, 0x04, 0x50, 0xb8, 0xff
    db 0x00, 0x50, 0xe8, 0x14, 0xfa, 0x83, 0xc4, 0x1c, 0xeb, 0x4e, 0x83, 0x3e, 0xa8, 0x91, 0x02, 0x75
    db 0x47, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x50, 0xff, 0x76, 0x0e, 0xff, 0x76, 0x04, 0xff, 0x76, 0xfc
    db 0x8b, 0x46, 0x36, 0x03, 0x46, 0x04, 0x50, 0xe8, 0xe7, 0xf2, 0x59, 0x50, 0xb8, 0x00, 0x00, 0x50
    db 0x50, 0xb8, 0x02, 0x00, 0x50, 0x50, 0xff, 0x76, 0xfe, 0x8b, 0x46, 0x38, 0x03, 0x46, 0x04, 0x50
    db 0x8b, 0x46, 0x36, 0x03, 0x46, 0x04, 0x50, 0xe8, 0xdb, 0xf2, 0x83, 0xc4, 0x04, 0x50, 0xb8, 0xff
    db 0x00, 0x50, 0xe8, 0xc4, 0xf9, 0x83, 0xc4, 0x1c, 0x83, 0x7e, 0x06, 0x03, 0x74, 0x03, 0xe9, 0xe2
    db 0x00, 0x83, 0x3e, 0x1a, 0x83, 0x00, 0x74, 0x4f, 0x83, 0x7e, 0x04, 0x00, 0x75, 0x49, 0x83, 0x7e
    db 0x08, 0x02, 0x75, 0x43, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x50, 0x50, 0xff, 0x76, 0x04, 0xb8, 0xf8
    db 0x00, 0x50, 0xb8, 0x48, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x50, 0xa1, 0x1a, 0x83, 0x05
    db 0x0c, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x0a, 0x00, 0xf7, 0x6e, 0x04, 0x8b, 0x4e, 0x08
    db 0xd1, 0xe1, 0x03, 0xc1, 0x8b, 0xd8, 0xff, 0xb7, 0x6e, 0x03, 0xb8, 0x05, 0x00, 0x50, 0xe8, 0x68
    db 0xf9, 0x83, 0xc4, 0x1c, 0xe9, 0x8a, 0x00, 0xb8, 0x00, 0x00, 0x50, 0x50, 0xff, 0x36, 0xa4, 0x91
    db 0x50, 0xff, 0x76, 0x04, 0xb8, 0xf8, 0x00, 0x50, 0xb8, 0x48, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50
    db 0x50, 0x50, 0x8b, 0x46, 0x04, 0xd1, 0xe0, 0x03, 0x06, 0xa4, 0x91, 0x05, 0x05, 0x00, 0x50, 0xb8
    db 0x00, 0x00, 0x50, 0xb8, 0x0a, 0x00, 0xf7, 0x6e, 0x04, 0x8b, 0x4e, 0x08, 0xd1, 0xe1, 0x03, 0xc1
    db 0x8b, 0xd8, 0xff, 0xb7, 0x6e, 0x03, 0xb8, 0x05, 0x00, 0x50, 0xe8, 0x1c, 0xf9, 0x83, 0xc4, 0x1c
    db 0xb8, 0x00, 0x00, 0x50, 0x50, 0xff, 0x36, 0xa4, 0x91, 0x50, 0xff, 0x76, 0x04, 0xb8, 0xf8, 0x00
    db 0x50, 0xb8, 0x48, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x50, 0x8b, 0x46, 0x04, 0x40, 0x50
    db 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x0a, 0x00, 0xf7, 0x6e, 0x04, 0x8b, 0x4e, 0x08, 0xd1, 0xe1, 0x03
    db 0xc1, 0x8b, 0xd8, 0xff, 0xb7, 0x6e, 0x03, 0xb8, 0x05, 0x00, 0x50, 0xe8, 0xdb, 0xf8, 0x83, 0xc4
    db 0x1c, 0xeb, 0x47, 0x83, 0x7e, 0x06, 0x06, 0x75, 0x41, 0xb8, 0x00, 0x00, 0x50, 0x50, 0xff, 0x36
    db 0xa4, 0x91, 0x50, 0xff, 0x76, 0x04, 0xb8, 0xf8, 0x00, 0x50, 0xb8, 0x48, 0x00, 0x50, 0xb8, 0x00
    db 0x00, 0x50, 0x50, 0x50, 0x8b, 0x46, 0x04, 0x40, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x0a, 0x00
    db 0xf7, 0x6e, 0x04, 0x8b, 0x4e, 0x08, 0xd1, 0xe1, 0x03, 0xc1, 0x8b, 0xd8, 0xff, 0xb7, 0x6e, 0x03
    db 0xb8, 0x05, 0x00, 0x50, 0xe8, 0x92, 0xf8, 0x83, 0xc4, 0x1c, 0x83, 0x3e, 0xa8, 0x91, 0x00, 0x75
    db 0x64, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x50, 0xff, 0x76, 0x0a, 0xff, 0x76, 0x04, 0x8b, 0x46, 0x26
    db 0x03, 0x46, 0x04, 0x50, 0xe8, 0x6a, 0xf1, 0x59, 0x50, 0x8b, 0x46, 0x22, 0x03, 0x46, 0x04, 0x50
    db 0xe8, 0x5e, 0xf1, 0x59, 0x50, 0xb8, 0x00, 0x00, 0x50, 0x50, 0xb8, 0x02, 0x00, 0x50, 0x50, 0x8b
    db 0x46, 0x28, 0x03, 0x46, 0x04, 0x50, 0x8b, 0x46, 0x26, 0x03, 0x46, 0x04, 0x50, 0xe8, 0x55, 0xf1
    db 0x83, 0xc4, 0x04, 0x50, 0x8b, 0x46, 0x24, 0x03, 0x46, 0x04, 0x50, 0x8b, 0x46, 0x22, 0x03, 0x46
    db 0x04, 0x50, 0xe8, 0x40, 0xf1, 0x83, 0xc4, 0x04, 0x50, 0xb8, 0xff, 0x00, 0x50, 0xe8, 0x29, 0xf8
    db 0x83, 0xc4, 0x1c, 0xeb, 0x69, 0x83, 0x3e, 0xa8, 0x91, 0x02, 0x75, 0x62, 0xb8, 0x00, 0x00, 0x50
    db 0x50, 0x50, 0xff, 0x76, 0x0e, 0xff, 0x76, 0x04, 0x8b, 0x46, 0x3e, 0x03, 0x46, 0x04, 0x50, 0xe8
    db 0xff, 0xf0, 0x59, 0x50, 0x8b, 0x46, 0x3a, 0x03, 0x46, 0x04, 0x50, 0xe8, 0xf3, 0xf0, 0x59, 0x50
    db 0xb8, 0x00, 0x00, 0x50, 0x50, 0xb8, 0x02, 0x00, 0x50, 0x50, 0x8b, 0x46, 0x40, 0x03, 0x46, 0x04
    db 0x50, 0x8b, 0x46, 0x3e, 0x03, 0x46, 0x04, 0x50, 0xe8, 0xea, 0xf0, 0x83, 0xc4, 0x04, 0x50, 0x8b
    db 0x46, 0x3c, 0x03, 0x46, 0x04, 0x50, 0x8b, 0x46, 0x3a, 0x03, 0x46, 0x04, 0x50, 0xe8, 0xd5, 0xf0
    db 0x83, 0xc4, 0x04, 0x50, 0xb8, 0xff, 0x00, 0x50, 0xe8, 0xbe, 0xf7, 0x83, 0xc4, 0x1c, 0x83, 0x7e
    db 0x06, 0x08, 0x74, 0x06, 0x83, 0x7e, 0x06, 0x09, 0x75, 0x30, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x50
    db 0xff, 0x76, 0x0a, 0xff, 0x76, 0x04, 0xb8, 0xff, 0xff, 0x50, 0x50, 0xb8, 0x00, 0x00, 0x50, 0x50
    db 0x50, 0xb8, 0x02, 0x00, 0x50, 0xb8, 0xff, 0xff, 0x50, 0x8b, 0x46, 0xfa, 0x03, 0x46, 0x04, 0x50
    db 0xb8, 0xff, 0x00, 0x50, 0xe8, 0x82, 0xf7, 0x83, 0xc4, 0x1c, 0xe9, 0xf5, 0x00, 0x83, 0x7e, 0x04
    db 0x04, 0x7d, 0x49, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x50, 0xff, 0x76, 0x12, 0xff, 0x76, 0x04, 0xb8
    db 0xff, 0xff, 0x50, 0x8b, 0x46, 0x4a, 0x03, 0x46, 0x04, 0x50, 0xe8, 0x54, 0xf0, 0x59, 0x50, 0xb8
    db 0x00, 0x00, 0x50, 0x50, 0x50, 0xb8, 0x02, 0x00, 0x50, 0xb8, 0xff, 0xff, 0x50, 0x8b, 0x46, 0x4c
    db 0x03, 0x46, 0x04, 0x50, 0x8b, 0x46, 0x4a, 0x03, 0x46, 0x04, 0x50, 0xe8, 0x47, 0xf0, 0x83, 0xc4
    db 0x04, 0x50, 0xb8, 0xff, 0x00, 0x50, 0xe8, 0x30, 0xf7, 0x83, 0xc4, 0x1c, 0xe9, 0xa3, 0x00, 0xc7
    db 0x46, 0xf0, 0x09, 0x00, 0xc7, 0x46, 0xf4, 0x01, 0x00, 0xa1, 0xe8, 0x82, 0x40, 0x40, 0x89, 0x46
    db 0xf2, 0xe9, 0x8e, 0x00, 0xc7, 0x46, 0xf0, 0x09, 0x00, 0xc7, 0x46, 0xf4, 0x07, 0x00, 0xb8, 0x00
    db 0x00, 0x83, 0x3e, 0xe8, 0x82, 0x00, 0x74, 0x03, 0xb8, 0x08, 0x00, 0x89, 0x46, 0xf2, 0xeb, 0x72
    db 0xc7, 0x46, 0xf0, 0x0a, 0x00, 0xb8, 0x05, 0x00, 0x83, 0x3e, 0xa8, 0x91, 0x00, 0x75, 0x03, 0xb8
    db 0x01, 0x00, 0xb9, 0x00, 0x00, 0x83, 0x7e, 0x06, 0x0d, 0x75, 0x03, 0xb9, 0x01, 0x00, 0x03, 0xc1
    db 0x89, 0x46, 0xf4, 0xc7, 0x46, 0xf2, 0x00, 0x00, 0xeb, 0x48, 0xc7, 0x46, 0xf0, 0x0a, 0x00, 0xc7
    db 0x46, 0xf4, 0x09, 0x00, 0xb8, 0x0b, 0x00, 0x83, 0x7e, 0x06, 0x0e, 0x75, 0x03, 0xb8, 0x0a, 0x00
    db 0x89, 0x46, 0xf2, 0xeb, 0x2d, 0xdb, 0x79, 0x03, 0x76, 0xdb, 0x79, 0x03, 0x76, 0xdb, 0x79, 0xe6
    db 0x78, 0x03, 0x76, 0xd8, 0x75, 0xa9, 0x75, 0xa9
    db 'u8yMyiyiy'
    db 0x93, 0x79, 0x93, 0x79

@..api_idx_0010.l15:
    cmp ax, strict word 0x10         ; 0x2987
    jae short @..api_idx_0010.l16    ; 0x298a
    xchg bx, ax                      ; 0x298c
    shl bx, 1                        ; 0x298d
    jmp [cs:bx + 0x79ae]             ; 0x298f
@..api_idx_0010.l16:
    cmp word [bp - 0x0010], byte 0xff ; 0x2994
    je short @..api_idx_0010.l17     ; 0x2998
    mov ax, 2                        ; 0x299a
    push ax                          ; 0x299d
    mov ax, 0                        ; 0x299e
    push ax                          ; 0x29a1
    push word [data_91a4]            ; 0x29a2
    mov ax, word [bp + 0x4]          ; 0x29a6
    shl ax, 1                        ; 0x29a9
    mov bx, ax                       ; 0x29ab
    push word [bx + 0x576]           ; 0x29ad
    push word [bp + 0x4]             ; 0x29b1
    mov ax, 0xf8                     ; 0x29b4
    push ax                          ; 0x29b7
    mov ax, 0x48                     ; 0x29b8
    push ax                          ; 0x29bb
    mov ax, 0                        ; 0x29bc
    push ax                          ; 0x29bf
    push ax                          ; 0x29c0
    push word [bp - 0x000e]          ; 0x29c1
    push word [bp - 0x000c]          ; 0x29c4
    push ax                          ; 0x29c7
    mov ax, 0xa                      ; 0x29c8
    imul word [bp + 0x4]             ; 0x29cb
    mov cx, word [bp + 0x8]          ; 0x29ce
    shl cx, 1                        ; 0x29d1
    add ax, cx                       ; 0x29d3
    mov bx, ax                       ; 0x29d5
    push word [bx + 0x36e]           ; 0x29d7
    push word [bp - 0x0010]          ; 0x29db
    call api_idx_0004_5              ; 0x29de
    add sp, byte 0x1c                ; 0x29e1
@..api_idx_0010.l17:
    ret                              ; 0x29e4
%include "vmext/api_idx_0012_2.asm"

    mov ax, word [bp + 0x2c]         ; 0x2be3
    add ax, word [bp + 0x4]          ; 0x2be6
    push ax                          ; 0x2be9
    call loc_194f                    ; 0x2bea
    add sp, byte 4                   ; 0x2bed
    push ax                          ; 0x2bf0
    mov ax, 0xfd                     ; 0x2bf1
    push ax                          ; 0x2bf4
    call api_idx_0004_5              ; 0x2bf5
    add sp, byte 0x1c                ; 0x2bf8
    cmp word [bp + 0x26], byte 0xff  ; 0x2bfb
    je short loc_2c4e                ; 0x2bff
    cmp word [bp + 0x4], byte 0      ; 0x2c01
    jne short loc_2c4e               ; 0x2c05
    cmp word [bp + 0x6], byte 8      ; 0x2c07
    je short loc_2c13                ; 0x2c0b
    cmp word [bp + 0x6], byte 9      ; 0x2c0d
    db 0x75, 0x3b ; jne short loc_2c4e
    mov ax, 0                        ; 0x2c13
    push ax                          ; 0x2c16
    mov ax, 1                        ; 0x2c17
    push ax                          ; 0x2c1a
    mov ax, 0                        ; 0x2c1b
    push ax                          ; 0x2c1e
    push word [bp + 0xa]             ; 0x2c1f
    push word [bp + 0x4]             ; 0x2c22
    mov ax, 0xffff                   ; 0x2c25
    push ax                          ; 0x2c28
    cmp word [bp + 0x8], byte 2      ; 0x2c29
    jge short loc_2c32               ; 0x2c2d
    mov ax, word [bp + 0x26]         ; 0x2c2f
    push ax                          ; 0x2c32
    mov ax, 0                        ; 0x2c33
    push ax                          ; 0x2c36
    push ax                          ; 0x2c37
    push ax                          ; 0x2c38
    mov ax, 2                        ; 0x2c39
    push ax                          ; 0x2c3c
    mov ax, 0xffff                   ; 0x2c3d
    push ax                          ; 0x2c40
    push word [bp + 0x26]            ; 0x2c41
    mov ax, 0xfd                     ; 0x2c44
    push ax                          ; 0x2c47
    call api_idx_0004_5              ; 0x2c48
    add sp, byte 0x1c                ; 0x2c4b
    jmp near @..api_idx_0012_2.l2    ; 0x2c4e
    cmp word [bp + 0x4], byte 4      ; 0x2c51
    jge short loc_2c7c               ; 0x2c55
    mov ax, word [bp + 0x3a]         ; 0x2c57
    add ax, word [bp + 0x4]          ; 0x2c5a
    push ax                          ; 0x2c5d
    mov ax, word [bp + 0x38]         ; 0x2c5e
    add ax, word [bp + 0x4]          ; 0x2c61
    push ax                          ; 0x2c64
    call loc_194f                    ; 0x2c65
    add sp, byte 4                   ; 0x2c68
    mov word [bp - 0x0004], ax       ; 0x2c6b
    mov ax, word [bp + 0x38]         ; 0x2c6e
    add ax, word [bp + 0x4]          ; 0x2c71
    push ax                          ; 0x2c74
    call loc_193b                    ; 0x2c75
    pop cx                           ; 0x2c78
    mov word [bp - 0x0006], ax       ; 0x2c79
    cmp word [data_91a8], byte 0     ; 0x2c7c
    jne short loc_2cd9               ; 0x2c81
    cmp word [bp + 0x4], byte 4      ; 0x2c83
    jge short loc_2cd6               ; 0x2c87
    mov ax, 0                        ; 0x2c89
    push ax                          ; 0x2c8c
    mov ax, 1                        ; 0x2c8d
    push ax                          ; 0x2c90
    mov ax, 0                        ; 0x2c91
    push ax                          ; 0x2c94
    push word [bp + 0xa]             ; 0x2c95
    push word [bp + 0x4]             ; 0x2c98
    push word [bp - 0x0006]          ; 0x2c9b
    mov ax, word [bp + 0x16]         ; 0x2c9e
    add ax, word [bp + 0x4]          ; 0x2ca1
    push ax                          ; 0x2ca4
    call loc_193b                    ; 0x2ca5
    pop cx                           ; 0x2ca8
    push ax                          ; 0x2ca9
    mov ax, 0                        ; 0x2caa
    push ax                          ; 0x2cad
    push ax                          ; 0x2cae
    mov ax, 2                        ; 0x2caf
    push ax                          ; 0x2cb2
    push ax                          ; 0x2cb3
    push word [bp - 0x0004]          ; 0x2cb4
    mov ax, word [bp + 0x18]         ; 0x2cb7
    add ax, word [bp + 0x4]          ; 0x2cba
    push ax                          ; 0x2cbd
    mov ax, word [bp + 0x16]         ; 0x2cbe
    add ax, word [bp + 0x4]          ; 0x2cc1
    push ax                          ; 0x2cc4
    call loc_194f                    ; 0x2cc5
    add sp, byte 4                   ; 0x2cc8
    push ax                          ; 0x2ccb
    mov ax, 0xfd                     ; 0x2ccc
    push ax                          ; 0x2ccf
    call api_idx_0004_5              ; 0x2cd0
    add sp, byte 0x1c                ; 0x2cd3
    jmp near loc_2de1                ; 0x2cd6
    cmp word [data_91a8], byte 3     ; 0x2cd9
    jl short loc_2cea                ; 0x2cde
    cmp word [data_91a8], byte 5     ; 0x2ce0
    je short loc_2cea                ; 0x2ce5
    jmp near loc_2d85                ; 0x2ce7
    cmp word [bp + 0x4], byte 5      ; 0x2cea
    jl short loc_2cf3                ; 0x2cee
    jmp near loc_2d83                ; 0x2cf0
    cmp word [data_91a8], byte 2     ; 0x2cf3
    jne short loc_2d34               ; 0x2cf8
    cmp word [bp - 0x0004], byte 0xff ; 0x2cfa
    je short loc_2d34                ; 0x2cfe
    mov ax, 0                        ; 0x2d00
    push ax                          ; 0x2d03
    mov ax, 1                        ; 0x2d04
    push ax                          ; 0x2d07
    mov ax, 0                        ; 0x2d08
    push ax                          ; 0x2d0b
    push word [bp + 0xe]             ; 0x2d0c
    push word [bp + 0x4]             ; 0x2d0f
    mov ax, 0xffff                   ; 0x2d12
    push ax                          ; 0x2d15
    push word [bp - 0x0006]          ; 0x2d16
    mov ax, 0                        ; 0x2d19
    push ax                          ; 0x2d1c
    push ax                          ; 0x2d1d
    push ax                          ; 0x2d1e
    mov ax, 2                        ; 0x2d1f
    push ax                          ; 0x2d22
    mov ax, 0xffff                   ; 0x2d23
    push ax                          ; 0x2d26
    push word [bp - 0x0004]          ; 0x2d27
    mov ax, 0xfd                     ; 0x2d2a
    push ax                          ; 0x2d2d
    call api_idx_0004_5              ; 0x2d2e
    add sp, byte 0x1c                ; 0x2d31
    mov ax, 0                        ; 0x2d34
    push ax                          ; 0x2d37
    mov ax, 1                        ; 0x2d38
    push ax                          ; 0x2d3b
    mov ax, 0                        ; 0x2d3c
    push ax                          ; 0x2d3f
    push word [bp + 0x10]            ; 0x2d40
    push word [bp + 0x4]             ; 0x2d43
    mov ax, 0xffff                   ; 0x2d46
    push ax                          ; 0x2d49
    mov ax, word [bp + 0x28]         ; 0x2d4a
    add ax, word [bp + 0x4]          ; 0x2d4d
    push ax                          ; 0x2d50
    call loc_193b                    ; 0x2d51
    pop cx                           ; 0x2d54
    push ax                          ; 0x2d55
    mov ax, 0                        ; 0x2d56
    push ax                          ; 0x2d59
    push ax                          ; 0x2d5a
    push ax                          ; 0x2d5b
    mov ax, 2                        ; 0x2d5c
    push ax                          ; 0x2d5f
    mov ax, 0xffff                   ; 0x2d60
    push ax                          ; 0x2d63
    mov ax, word [bp + 0x2a]         ; 0x2d64
    add ax, word [bp + 0x4]          ; 0x2d67
    push ax                          ; 0x2d6a
    mov ax, word [bp + 0x28]         ; 0x2d6b
    add ax, word [bp + 0x4]          ; 0x2d6e
    push ax                          ; 0x2d71
    call loc_194f                    ; 0x2d72
    add sp, byte 4                   ; 0x2d75
    push ax                          ; 0x2d78
    mov ax, 0xfd                     ; 0x2d79
    push ax                          ; 0x2d7c
    call api_idx_0004_5              ; 0x2d7d
    add sp, byte 0x1c                ; 0x2d80
    jmp short loc_2de1               ; 0x2d83
    cmp word [data_91a8], byte 5     ; 0x2d85
    jge short loc_2de1               ; 0x2d8a
    cmp word [bp + 0x4], byte 4      ; 0x2d8c
    db 0x7d, 0x4f ; jge short loc_2de1
    mov ax, 0                        ; 0x2d92
    push ax                          ; 0x2d95
    mov ax, 1                        ; 0x2d96
    push ax                          ; 0x2d99
    mov ax, 0                        ; 0x2d9a
    push ax                          ; 0x2d9d
    push word [bp + 0x14]            ; 0x2d9e
    push word [bp + 0x4]             ; 0x2da1
    mov ax, 0xffff                   ; 0x2da4
    push ax                          ; 0x2da7
    mov ax, word [bp + 0x3c]         ; 0x2da8
    add ax, word [bp + 0x4]          ; 0x2dab
    push ax                          ; 0x2dae
    call loc_193b                    ; 0x2daf
    pop cx                           ; 0x2db2
    push ax                          ; 0x2db3
    mov ax, 0                        ; 0x2db4
    push ax                          ; 0x2db7
    push ax                          ; 0x2db8
    push ax                          ; 0x2db9
    mov ax, 2                        ; 0x2dba
    push ax                          ; 0x2dbd
    mov ax, 0xffff                   ; 0x2dbe
    push ax                          ; 0x2dc1
    mov ax, word [bp + 0x3e]         ; 0x2dc2
    add ax, word [bp + 0x4]          ; 0x2dc5
    push ax                          ; 0x2dc8
    mov ax, word [bp + 0x3c]         ; 0x2dc9
    add ax, word [bp + 0x4]          ; 0x2dcc
    push ax                          ; 0x2dcf
    call loc_194f                    ; 0x2dd0
    add sp, byte 4                   ; 0x2dd3
    push ax                          ; 0x2dd6
    mov ax, 0xfd                     ; 0x2dd7
    push ax                          ; 0x2dda
    call api_idx_0004_5              ; 0x2ddb
    add sp, byte 0x1c                ; 0x2dde
    jmp near @..api_idx_0012_2.l2    ; 0x2de1
    cmp word [bp + 0x4], byte 4      ; 0x2de4
    jge short loc_2e39               ; 0x2de8
    mov ax, 0                        ; 0x2dea
    push ax                          ; 0x2ded
    mov ax, 1                        ; 0x2dee
    push ax                          ; 0x2df1
    mov ax, 0                        ; 0x2df2
    push ax                          ; 0x2df5
    push word [bp + 0xc]             ; 0x2df6
    push word [bp + 0x4]             ; 0x2df9
    mov ax, 0xffff                   ; 0x2dfc
    push ax                          ; 0x2dff
    mov ax, word [bp + 0x1a]         ; 0x2e00
    add ax, word [bp + 0x4]          ; 0x2e03
    push ax                          ; 0x2e06
    call loc_1913                    ; 0x2e07
    pop cx                           ; 0x2e0a
    push ax                          ; 0x2e0b
    mov ax, 0                        ; 0x2e0c
    push ax                          ; 0x2e0f
    push ax                          ; 0x2e10
    push ax                          ; 0x2e11
    mov ax, 2                        ; 0x2e12
    push ax                          ; 0x2e15
    mov ax, 0xffff                   ; 0x2e16
    push ax                          ; 0x2e19
    mov ax, word [bp + 0x1c]         ; 0x2e1a
    add ax, word [bp + 0x4]          ; 0x2e1d
    push ax                          ; 0x2e20
    mov ax, word [bp + 0x1a]         ; 0x2e21
    add ax, word [bp + 0x4]          ; 0x2e24
    push ax                          ; 0x2e27
    call loc_1927                    ; 0x2e28
    add sp, byte 4                   ; 0x2e2b
    push ax                          ; 0x2e2e
    mov ax, 0xfb                     ; 0x2e2f
    push ax                          ; 0x2e32
    call api_idx_0004_5              ; 0x2e33
    add sp, byte 0x1c                ; 0x2e36
    jmp near @..api_idx_0012_2.l2    ; 0x2e39
    cmp word [bp + 0x4], byte 4      ; 0x2e3c
    jge short loc_2e91               ; 0x2e40
    mov ax, 0                        ; 0x2e42
    push ax                          ; 0x2e45
    mov ax, 1                        ; 0x2e46
    push ax                          ; 0x2e49
    mov ax, 0                        ; 0x2e4a
    push ax                          ; 0x2e4d
    push word [bp + 0x12]            ; 0x2e4e
    push word [bp + 0x4]             ; 0x2e51
    mov ax, 0xffff                   ; 0x2e54
    push ax                          ; 0x2e57
    mov ax, word [bp + 0x40]         ; 0x2e58
    add ax, word [bp + 0x4]          ; 0x2e5b
    push ax                          ; 0x2e5e
    call loc_193b                    ; 0x2e5f
    pop cx                           ; 0x2e62
    push ax                          ; 0x2e63
    mov ax, 0                        ; 0x2e64
    push ax                          ; 0x2e67
    push ax                          ; 0x2e68
    push ax                          ; 0x2e69
    mov ax, 2                        ; 0x2e6a
    push ax                          ; 0x2e6d
    mov ax, 0xffff                   ; 0x2e6e
    push ax                          ; 0x2e71
    mov ax, word [bp + 0x42]         ; 0x2e72
    add ax, word [bp + 0x4]          ; 0x2e75
    push ax                          ; 0x2e78
    mov ax, word [bp + 0x40]         ; 0x2e79
    add ax, word [bp + 0x4]          ; 0x2e7c
    push ax                          ; 0x2e7f
    call loc_194f                    ; 0x2e80
    add sp, byte 4                   ; 0x2e83
    push ax                          ; 0x2e86
    mov ax, 0xfd                     ; 0x2e87
    push ax                          ; 0x2e8a
    call api_idx_0004_5              ; 0x2e8b
    add sp, byte 0x1c                ; 0x2e8e
    jmp short @..api_idx_0012_2.l2   ; 0x2e91
    pop es                           ; 0x2e93
    jg short loc_2e22                ; 0x2e94
    jnp short loc_2e5b               ; 0x2e96
    jl short loc_2e69                ; 0x2e98
    jp short loc_2ec7                ; 0x2e9a
    jle short loc_2e21               ; 0x2e9c
    jle short loc_2e6f               ; 0x2e9e
    jp short loc_2e3a                ; 0x2ea0
    jl short loc_2ee6                ; 0x2ea2
    jp short loc_2ee8                ; 0x2ea4
    jp short loc_2e6b                ; 0x2ea6
    jl short loc_2e6d                ; 0x2ea8
    jl short loc_2e6f                ; 0x2eaa
    jl short loc_2e71                ; 0x2eac
    jl short loc_2e73                ; 0x2eae
    jl short loc_2e75                ; 0x2eb0
    db 0x7c
@..api_idx_0012_2.l1:
    cmp ax, strict word 0x10         ; 0x2eb3
    jae short @..api_idx_0012_2.l2   ; 0x2eb6
    xchg bx, ax                      ; 0x2eb8
    shl bx, 1                        ; 0x2eb9
    jmp [cs:bx + 0x7eda]             ; 0x2ebb
@..api_idx_0012_2.l2:
    cmp word [bp + 0x4], byte 4      ; 0x2ec0
    jl short @..api_idx_0012_2.l3    ; 0x2ec4
    jmp near @..api_idx_0012_2.l10   ; 0x2ec6
@..api_idx_0012_2.l3:
    cmp word [bp + 0x8], byte 1      ; 0x2ec9
    je short @..api_idx_0012_2.l4    ; 0x2ecd
    cmp word [bp + 0x8], byte 3      ; 0x2ecf
    jne short @..api_idx_0012_2.l5   ; 0x2ed3
@..api_idx_0012_2.l4:
    mov ax, 0                        ; 0x2ed5
    jmp short @..api_idx_0012_2.l6   ; 0x2ed8
@..api_idx_0012_2.l5:
    mov ax, 1                        ; 0x2eda
@..api_idx_0012_2.l6:
    mov word [bp - 0x0012], ax       ; 0x2edd
    mov ax, 0                        ; 0x2ee0
    cmp word [bp + 0x8], byte 2      ; 0x2ee3
    jle short @..api_idx_0012_2.l7   ; 0x2ee7
    mov ax, 1                        ; 0x2ee9
@..api_idx_0012_2.l7:
    mov word [bp - 0x0006], ax       ; 0x2eec
    mov word [bp - 0x000c], 0xffff   ; 0x2eef
    mov ax, word [bp + 0x6]          ; 0x2ef4
    jmp near @..api_idx_0012_2.l8    ; 0x2ef7

    db 0xc7, 0x46, 0xf4, 0x09, 0x00, 0x8b, 0x46, 0x04, 0xb9, 0x04, 0x00, 0xd3, 0xe0, 0x8b, 0x4e, 0xee
    db 0xd1, 0xe1, 0xd1, 0xe1, 0xd1, 0xe1, 0x03, 0xc1, 0x8b, 0x4e, 0xfa, 0xd1, 0xe1, 0xd1, 0xe1, 0x03
    db 0xc1, 0x8b, 0xd8, 0x8b, 0x87, 0xe6, 0x03, 0x89, 0x46, 0xf2, 0x8b, 0x87, 0xe8, 0x03, 0x89, 0x46
    db 0xf0, 0xc7, 0x46, 0xf8, 0x04, 0x00, 0xa1, 0xe8, 0x82, 0x05, 0x05, 0x00, 0x89, 0x46, 0xf6, 0xe9
    db 0x76, 0x01, 0xc7, 0x46, 0xf4, 0x09, 0x00, 0x8b, 0x46, 0x04, 0xb9, 0x04, 0x00, 0xd3, 0xe0, 0x8b
    db 0x4e, 0xee, 0xd1, 0xe1, 0xd1, 0xe1, 0xd1, 0xe1, 0x03, 0xc1, 0x8b, 0x4e, 0xfa, 0xd1, 0xe1, 0xd1
    db 0xe1, 0x03, 0xc1, 0x8b, 0xd8, 0x8b, 0x87, 0x36, 0x04, 0x89, 0x46, 0xf2, 0x8b, 0x87, 0x38, 0x04
    db 0x89, 0x46, 0xf0, 0xc7, 0x46, 0xf8, 0x09, 0x00, 0xb8, 0x00, 0x00, 0x83, 0x3e, 0xe8, 0x82, 0x00
    db 0x74, 0x03, 0xb8, 0x0a, 0x00, 0x89, 0x46, 0xf6, 0xe9, 0x2d, 0x01, 0xc7, 0x46, 0xf4, 0x0a, 0x00
    db 0x83, 0x3e, 0xa8, 0x91, 0x00, 0x75, 0x24, 0x8b, 0x46, 0x04, 0xb9, 0x04, 0x00, 0xd3, 0xe0, 0x8b
    db 0x4e, 0xee, 0xd1, 0xe1, 0xd1, 0xe1, 0xd1, 0xe1, 0x03, 0xc1, 0x8b, 0x4e, 0xfa, 0xd1, 0xe1, 0xd1
    db 0xe1, 0x03, 0xc1, 0x8b, 0xd8, 0x8b, 0x87, 0x86, 0x04, 0xeb, 0x22, 0x8b, 0x46, 0x04, 0xb9, 0x04
    db 0x00, 0xd3, 0xe0, 0x8b, 0x4e, 0xee, 0xd1, 0xe1, 0xd1, 0xe1, 0xd1, 0xe1, 0x03, 0xc1, 0x8b, 0x4e
    db 0xfa, 0xd1, 0xe1, 0xd1, 0xe1, 0x03, 0xc1, 0x8b, 0xd8, 0x8b, 0x87, 0xd6, 0x04, 0x89, 0x46, 0xf2
    db 0x83, 0x3e, 0xa8, 0x91, 0x00, 0x75, 0x24, 0x8b, 0x46, 0x04, 0xb9, 0x04, 0x00, 0xd3, 0xe0, 0x8b
    db 0x4e, 0xee, 0xd1, 0xe1, 0xd1, 0xe1, 0xd1, 0xe1, 0x03, 0xc1, 0x8b, 0x4e, 0xfa, 0xd1, 0xe1, 0xd1
    db 0xe1, 0x03, 0xc1, 0x8b, 0xd8, 0x8b, 0x87, 0x88, 0x04, 0xeb, 0x22, 0x8b, 0x46, 0x04, 0xb9, 0x04
    db 0x00, 0xd3, 0xe0, 0x8b, 0x4e, 0xee, 0xd1, 0xe1, 0xd1, 0xe1, 0xd1, 0xe1, 0x03, 0xc1, 0x8b, 0x4e
    db 0xfa, 0xd1, 0xe1, 0xd1, 0xe1, 0x03, 0xc1, 0x8b, 0xd8, 0x8b, 0x87, 0xd8, 0x04, 0x89, 0x46, 0xf0
    db 0xb8, 0x07, 0x00, 0x83, 0x3e, 0xa8, 0x91, 0x00, 0x75, 0x03, 0xb8, 0x03, 0x00, 0xb9, 0x00, 0x00
    db 0x83, 0x7e, 0x06, 0x0d, 0x75, 0x03, 0xb9, 0x01, 0x00, 0x03, 0xc1, 0x89, 0x46, 0xf8, 0xc7, 0x46
    db 0xf6, 0x00, 0x00, 0xeb, 0x63, 0xc7, 0x46, 0xf4, 0x0a, 0x00, 0x8b, 0x46, 0x04, 0xb9, 0x04, 0x00
    db 0xd3, 0xe0, 0x8b, 0x4e, 0xee, 0xd1, 0xe1, 0xd1, 0xe1, 0xd1, 0xe1, 0x03, 0xc1, 0x8b, 0x4e, 0xfa
    db 0xd1, 0xe1, 0xd1, 0xe1, 0x03, 0xc1, 0x8b, 0xd8, 0x8b, 0x87, 0x26, 0x05, 0x89, 0x46, 0xf2, 0x8b
    db 0x87, 0x28, 0x05, 0x89, 0x46, 0xf0, 0xc7, 0x46, 0xf8, 0x0c, 0x00, 0xb8, 0x0e, 0x00, 0x83, 0x7e
    db 0x06, 0x0e, 0x75, 0x03, 0xb8, 0x0d, 0x00, 0x89, 0x46, 0xf6, 0xeb, 0x1c, 0x41, 0x7f, 0x83, 0x7f
    db 0xcc, 0x7f, 0xcc, 0x7f, 0x96, 0x80, 0x96, 0x80

@..api_idx_0012_2.l8:
    sub ax, strict word 0xa          ; 0x30a2
    cmp ax, strict word 6            ; 0x30a5
    jae short @..api_idx_0012_2.l9   ; 0x30a8
    xchg bx, ax                      ; 0x30aa
    shl bx, 1                        ; 0x30ab
    jmp [cs:bx - 0x7f23]             ; 0x30ad
@..api_idx_0012_2.l9:
    cmp word [bp - 0x000c], byte 0xff ; 0x30b2
    je short @..api_idx_0012_2.l10   ; 0x30b6
    mov ax, 3                        ; 0x30b8
    push ax                          ; 0x30bb
    mov ax, 1                        ; 0x30bc
    push ax                          ; 0x30bf
    push word [bp - 0x0006]          ; 0x30c0
    mov ax, word [bp + 0x4]          ; 0x30c3
    shl ax, 1                        ; 0x30c6
    mov bx, ax                       ; 0x30c8
    push word [bx + 0x576]           ; 0x30ca
    push word [bp + 0x4]             ; 0x30ce
    mov ax, 0xf8                     ; 0x30d1
    push ax                          ; 0x30d4
    mov ax, 0x48                     ; 0x30d5
    push ax                          ; 0x30d8
    mov ax, 0                        ; 0x30d9
    push ax                          ; 0x30dc
    push ax                          ; 0x30dd
    push word [bp - 0x000a]          ; 0x30de
    push word [bp - 0x0008]          ; 0x30e1
    push word [bp - 0x0010]          ; 0x30e4
    push word [bp - 0x000e]          ; 0x30e7
    push word [bp - 0x000c]          ; 0x30ea
    call api_idx_0004_5              ; 0x30ed
    add sp, byte 0x1c                ; 0x30f0
@..api_idx_0012_2.l10:
    ret                              ; 0x30f3
%include "vmext/api_idx_0012_3.asm"

@..api_idx_0012_3.l23:
    mov ax, 0                        ; 0x32f2
    push ax                          ; 0x32f5
    push ax                          ; 0x32f6
    push ax                          ; 0x32f7
    push word [bp + 0xc]             ; 0x32f8
    push word [bp + 0x4]             ; 0x32fb
    mov ax, 0xffff                   ; 0x32fe
    push ax                          ; 0x3301
    mov ax, word [bp + 0x18]         ; 0x3302
    add ax, word [bp + 0x4]          ; 0x3305
    push ax                          ; 0x3308
    call loc_193b                    ; 0x3309
    pop cx                           ; 0x330c
    push ax                          ; 0x330d
    mov ax, 0                        ; 0x330e
    push ax                          ; 0x3311
    push ax                          ; 0x3312
    push ax                          ; 0x3313
    mov ax, 2                        ; 0x3314
    push ax                          ; 0x3317
    mov ax, 0xffff                   ; 0x3318
    push ax                          ; 0x331b
    mov ax, word [bp + 0x1a]         ; 0x331c
    add ax, word [bp + 0x4]          ; 0x331f
    push ax                          ; 0x3322
    mov ax, word [bp + 0x18]         ; 0x3323
    add ax, word [bp + 0x4]          ; 0x3326
    push ax                          ; 0x3329
    call loc_194f                    ; 0x332a
    add sp, byte 4                   ; 0x332d
    push ax                          ; 0x3330
    mov ax, 0xff                     ; 0x3331
    push ax                          ; 0x3334
    call api_idx_0004_5              ; 0x3335
    add sp, byte 0x1c                ; 0x3338
    mov word [bp - 0x000e], 0xffff   ; 0x333b
    mov word [bp - 0x000a], 0xffff   ; 0x3340
    mov word [bp - 0x0010], 0xffff   ; 0x3345
    mov word [bp - 0x000c], 0xffff   ; 0x334a
    cmp word [bp + 0x40], byte 0xff  ; 0x334f
    je short @..api_idx_0012_3.l24   ; 0x3353
    mov ax, word [bp + 0x42]         ; 0x3355
    add ax, word [bp + 0x4]          ; 0x3358
    push ax                          ; 0x335b
    mov ax, word [bp + 0x40]         ; 0x335c
    add ax, word [bp + 0x4]          ; 0x335f
    push ax                          ; 0x3362
    call loc_194f                    ; 0x3363
    add sp, byte 4                   ; 0x3366
    mov word [bp - 0x000e], ax       ; 0x3369
    mov ax, word [bp + 0x40]         ; 0x336c
    add ax, word [bp + 0x4]          ; 0x336f
    push ax                          ; 0x3372
    call loc_193b                    ; 0x3373
    pop cx                           ; 0x3376
    mov word [bp - 0x0010], ax       ; 0x3377
@..api_idx_0012_3.l24:
    cmp word [bp + 0x4], byte 0      ; 0x337a
    jle short @..api_idx_0012_3.l25  ; 0x337e
    mov ax, word [bp + 0x3e]         ; 0x3380
    add ax, word [bp + 0x4]          ; 0x3383
    dec ax                           ; 0x3386
    push ax                          ; 0x3387
    mov ax, word [bp + 0x3c]         ; 0x3388
    add ax, word [bp + 0x4]          ; 0x338b
    dec ax                           ; 0x338e
    push ax                          ; 0x338f
    call loc_1927                    ; 0x3390
    add sp, byte 4                   ; 0x3393
    mov word [bp - 0x000a], ax       ; 0x3396
    mov ax, word [bp + 0x3c]         ; 0x3399
    add ax, word [bp + 0x4]          ; 0x339c
    dec ax                           ; 0x339f
    push ax                          ; 0x33a0
    call loc_1913                    ; 0x33a1
    pop cx                           ; 0x33a4
    mov word [bp - 0x000c], ax       ; 0x33a5
@..api_idx_0012_3.l25:
    cmp word [bp - 0x000a], byte 0xff ; 0x33a8
    jne short @..api_idx_0012_3.l26  ; 0x33ac
    cmp word [bp - 0x000e], byte 0xff ; 0x33ae
    jne short @..api_idx_0012_3.l26  ; 0x33b2
    jmp near @..api_idx_0012_3.l31   ; 0x33b4
@..api_idx_0012_3.l26:
    mov ax, 0                        ; 0x33b7
    push ax                          ; 0x33ba
    push ax                          ; 0x33bb
    push ax                          ; 0x33bc
    push word [bp + 0xc]             ; 0x33bd
    push word [bp + 0x4]             ; 0x33c0
    push word [bp - 0x000c]          ; 0x33c3
    push word [bp - 0x0010]          ; 0x33c6
    push ax                          ; 0x33c9
    push ax                          ; 0x33ca
    mov ax, 2                        ; 0x33cb
    push ax                          ; 0x33ce
    push ax                          ; 0x33cf
    push word [bp - 0x000a]          ; 0x33d0
    push word [bp - 0x000e]          ; 0x33d3
    mov ax, 0xff                     ; 0x33d6
    push ax                          ; 0x33d9
    call api_idx_0004_5              ; 0x33da
    add sp, byte 0x1c                ; 0x33dd
    cmp word [bp - 0x000a], byte 0xff ; 0x33e0
    jne short @..api_idx_0012_3.l27  ; 0x33e4
    jmp near @..api_idx_0012_3.l31   ; 0x33e6
@..api_idx_0012_3.l27:
    cmp word [data_91a8], byte 0     ; 0x33e9
    jne short @..api_idx_0012_3.l28  ; 0x33ee
    jmp near @..api_idx_0012_3.l31   ; 0x33f0
@..api_idx_0012_3.l28:
    mov ax, word [bp + 0x4]          ; 0x33f3
    cmp ax, strict word 4            ; 0x33f6
    je short @..api_idx_0012_3.l29   ; 0x33f9
    jmp near @..api_idx_0012_3.l31   ; 0x33fb
@..api_idx_0012_3.l29:
    cmp word [bp + 0x6], byte 0      ; 0x33fe
    jne short @..api_idx_0012_3.l30  ; 0x3402
    mov ax, 0                        ; 0x3404
    push ax                          ; 0x3407
    push ax                          ; 0x3408
    push ax                          ; 0x3409
    push word [bp + 0xc]             ; 0x340a
    push word [bp + 0x4]             ; 0x340d
    mov ax, 0xffff                   ; 0x3410
    push ax                          ; 0x3413
    mov ax, 0xc2                     ; 0x3414
    push ax                          ; 0x3417
    call loc_1913                    ; 0x3418
    pop cx                           ; 0x341b
    push ax                          ; 0x341c
    mov ax, 0                        ; 0x341d
    push ax                          ; 0x3420
    push ax                          ; 0x3421
    push ax                          ; 0x3422
    mov ax, 2                        ; 0x3423
    push ax                          ; 0x3426
    mov ax, 0xffff                   ; 0x3427
    push ax                          ; 0x342a
    mov ax, 0xc3                     ; 0x342b
    push ax                          ; 0x342e
    mov ax, 0xc2                     ; 0x342f
    push ax                          ; 0x3432
    call loc_1927                    ; 0x3433
    add sp, byte 4                   ; 0x3436
    push ax                          ; 0x3439
    mov ax, 0xff                     ; 0x343a
    push ax                          ; 0x343d
    call api_idx_0004_5              ; 0x343e
    add sp, byte 0x1c                ; 0x3441
    jmp short @..api_idx_0012_3.l31  ; 0x3444
@..api_idx_0012_3.l30:
    cmp word [bp + 0x6], byte 4      ; 0x3446
    jne short @..api_idx_0012_3.l31  ; 0x344a
    mov ax, 0                        ; 0x344c
    push ax                          ; 0x344f
    push ax                          ; 0x3450
    push ax                          ; 0x3451
    push word [bp + 0xc]             ; 0x3452
    push word [bp + 0x4]             ; 0x3455
    mov ax, 0xffff                   ; 0x3458
    push ax                          ; 0x345b
    mov ax, 0xc3                     ; 0x345c
    push ax                          ; 0x345f
    call loc_1913                    ; 0x3460
    pop cx                           ; 0x3463
    push ax                          ; 0x3464
    mov ax, 0                        ; 0x3465
    push ax                          ; 0x3468
    push ax                          ; 0x3469
    push ax                          ; 0x346a
    mov ax, 2                        ; 0x346b
    push ax                          ; 0x346e
    mov ax, 0xffff                   ; 0x346f
    push ax                          ; 0x3472
    mov ax, 0xc2                     ; 0x3473
    push ax                          ; 0x3476
    mov ax, 0xc3                     ; 0x3477
    push ax                          ; 0x347a
    call loc_1927                    ; 0x347b
    add sp, byte 4                   ; 0x347e
    push ax                          ; 0x3481
    mov ax, 0xff                     ; 0x3482
    push ax                          ; 0x3485
    call api_idx_0004_5              ; 0x3486
    add sp, byte 0x1c                ; 0x3489
@..api_idx_0012_3.l31:
    jmp near @..api_idx_0012_3.l35   ; 0x348c
@..api_idx_0012_3.l32:
    cmp word [data_91a8], byte 4     ; 0x348f
    je short @..api_idx_0012_3.l33   ; 0x3494
    jmp near @..api_idx_0012_3.l35   ; 0x3496
@..api_idx_0012_3.l33:
    cmp word [bp + 0x4], byte 4      ; 0x3499
    jl short @..api_idx_0012_3.l34   ; 0x349d
    jmp near @..api_idx_0012_3.l35   ; 0x349f
@..api_idx_0012_3.l34:
    mov ax, word [bp + 0x38]         ; 0x34a2
    add ax, word [bp + 0x4]          ; 0x34a5
    push ax                          ; 0x34a8
    call loc_193b                    ; 0x34a9
    pop cx                           ; 0x34ac
    push ax                          ; 0x34ad
    mov ax, 2                        ; 0x34ae
    push ax                          ; 0x34b1
    mov ax, word [bp + 0x3a]         ; 0x34b2
    add ax, word [bp + 0x4]          ; 0x34b5
    push ax                          ; 0x34b8
    mov ax, word [bp + 0x38]         ; 0x34b9
    add ax, word [bp + 0x4]          ; 0x34bc
    push ax                          ; 0x34bf
    call loc_194f                    ; 0x34c0
    add sp, byte 4                   ; 0x34c3
    push ax                          ; 0x34c6
    push word [bp + 0x10]            ; 0x34c7
    call 0xf01f                      ; 0x34ca
    add sp, byte 8                   ; 0x34cd
    mov ax, word [bp + 0x4]          ; 0x34d0
    cmp ax, strict word 2            ; 0x34d3
    jge short @..api_idx_0012_3.l35  ; 0x34d6
    cmp word [bp + 0x6], byte 2      ; 0x34d8
    jne short @..api_idx_0012_3.l35  ; 0x34dc
    mov ax, 0                        ; 0x34de
    push ax                          ; 0x34e1
    mov ax, 1                        ; 0x34e2
    push ax                          ; 0x34e5
    mov ax, 0                        ; 0x34e6
    push ax                          ; 0x34e9
    push word [bp + 0x10]            ; 0x34ea
    push word [bp + 0x4]             ; 0x34ed
    mov ax, 0xffff                   ; 0x34f0
    push ax                          ; 0x34f3
    mov ax, word [bp + 0x4]          ; 0x34f4
    add ax, strict word 0x19         ; 0x34f7
    push ax                          ; 0x34fa
    call loc_193b                    ; 0x34fb
    pop cx                           ; 0x34fe
    push ax                          ; 0x34ff
    mov ax, 0                        ; 0x3500
    push ax                          ; 0x3503
    push ax                          ; 0x3504
    push ax                          ; 0x3505
    mov ax, 2                        ; 0x3506
    push ax                          ; 0x3509
    mov ax, 0xffff                   ; 0x350a
    push ax                          ; 0x350d
    mov ax, word [bp + 0x4]          ; 0x350e
    add ax, strict word 0x19         ; 0x3511
    push ax                          ; 0x3514
    push ax                          ; 0x3515
    call loc_194f                    ; 0x3516
    add sp, byte 4                   ; 0x3519
    push ax                          ; 0x351c
    mov ax, 0xfe                     ; 0x351d
    push ax                          ; 0x3520
    call api_idx_0004_5              ; 0x3521
    add sp, byte 0x1c                ; 0x3524
@..api_idx_0012_3.l35:
    jmp short @..api_idx_0012_3.l37  ; 0x3527
@..api_idx_0012_3.l36:
    cmp ax, strict word 1            ; 0x3529
    jne short @..api_idx_0012_3.l37  ; 0x352c
    jmp near @..api_idx_0012_3.l21   ; 0x352e
@..api_idx_0012_3.l37:
    mov ax, 5                        ; 0x3531
    imul word [bp + 0x4]             ; 0x3534
    add ax, word [bp + 0x6]          ; 0x3537
    mov bx, ax                       ; 0x353a
    mov al, byte [bx - 0x6e54]       ; 0x353c
    sub ah, ah                       ; 0x3540
    jmp near @..api_idx_0012_3.l38   ; 0x3542

    db 0x83, 0x7e, 0x04, 0x05, 0x7d, 0x2e, 0x8b, 0x46, 0x1c, 0x03, 0x46, 0x04, 0x50, 0xe8, 0xe6, 0xe3
    db 0x59, 0x50, 0xb8, 0x02, 0x00, 0x50, 0x8b, 0x46, 0x1e, 0x03, 0x46, 0x04, 0x50, 0x8b, 0x46, 0x1c
    db 0x03, 0x46, 0x04, 0x50, 0xe8, 0xe3, 0xe3, 0x83, 0xc4, 0x04, 0x50, 0xff, 0x76, 0x0a, 0xe8, 0xa9
    db 0xba, 0x83, 0xc4, 0x08, 0xe9, 0x95, 0x00, 0x83, 0x7e, 0x04, 0x05, 0x7d, 0x2e, 0x8b, 0x46, 0x30
    db 0x03, 0x46, 0x04, 0x50, 0xe8, 0xaf, 0xe3, 0x59, 0x50, 0xb8, 0x02, 0x00, 0x50, 0x8b, 0x46, 0x32
    db 0x03, 0x46, 0x04, 0x50, 0x8b, 0x46, 0x30, 0x03, 0x46, 0x04, 0x50, 0xe8, 0xac, 0xe3, 0x83, 0xc4
    db 0x04, 0x50, 0xff, 0x76, 0x16, 0xe8, 0x72, 0xba, 0x83, 0xc4, 0x08, 0xeb, 0x5f, 0x83, 0x7e, 0x04
    db 0x05, 0x7d, 0x3c, 0xa1, 0xa6, 0x91, 0x03, 0x06, 0xe8, 0x82, 0xb9, 0x02, 0x00, 0x99, 0xf7, 0xf9
    db 0x8b, 0xc2, 0x85, 0xc0, 0x74, 0x08, 0x8b, 0x46, 0x34, 0x03, 0x46, 0x04, 0xeb, 0x03, 0xb8, 0xff
    db 0xff, 0x50, 0x51, 0x85, 0xd2, 0x74, 0x08, 0x8b, 0x46, 0x36, 0x03, 0x46, 0x04, 0xeb, 0x06, 0x8b
    db 0x46, 0x34, 0x03, 0x46, 0x04, 0x50, 0xff, 0x76, 0x14, 0xe8, 0x2e, 0xba, 0x83, 0xc4, 0x08, 0xeb
    db 0x1b, 0xeb, 0x19, 0xeb, 0x17, 0x3f, 0x86, 0x8c, 0x85, 0xc3, 0x85, 0xf9, 0x85, 0x3d, 0x86

@..api_idx_0012_3.l38:
    cmp ax, strict word 5            ; 0x3604
    jae short @..api_idx_0012_3.l39  ; 0x3607
    xchg bx, ax                      ; 0x3609
    shl bx, 1                        ; 0x360a
    jmp [cs:bx - 0x79bf]             ; 0x360c
@..api_idx_0012_3.l39:
    cmp word [bp - 0x0012], byte 0   ; 0x3611
    jne short @..api_idx_0012_3.l40  ; 0x3615
    jmp near @..api_idx_0012_3.l53   ; 0x3617
@..api_idx_0012_3.l40:
    mov ax, 0xa                      ; 0x361a
    imul word [bp + 0x4]             ; 0x361d
    mov cx, word [bp + 0x6]          ; 0x3620
    shl cx, 1                        ; 0x3623
    add ax, cx                       ; 0x3625
    mov bx, ax                       ; 0x3627
    cmp word [bx - 0x6df0], byte 0   ; 0x3629
    jne short @..api_idx_0012_3.l41  ; 0x362e
    cmp word [bx - 0x6d72], byte 0   ; 0x3630
    jne short @..api_idx_0012_3.l41  ; 0x3635
    jmp near @..api_idx_0012_3.l53   ; 0x3637
@..api_idx_0012_3.l41:
    cmp word [bp + 0x6], byte 2      ; 0x363a
    jne short @..api_idx_0012_3.l42  ; 0x363e
    mov ax, word [bp + 0x24]         ; 0x3640
    add ax, word [bp + 0x4]          ; 0x3643
    push ax                          ; 0x3646
    call loc_193b                    ; 0x3647
    pop cx                           ; 0x364a
    push ax                          ; 0x364b
    mov ax, 2                        ; 0x364c
    push ax                          ; 0x364f
    mov ax, word [bp + 0x26]         ; 0x3650
    add ax, word [bp + 0x4]          ; 0x3653
    push ax                          ; 0x3656
    mov ax, word [bp + 0x24]         ; 0x3657
    add ax, word [bp + 0x4]          ; 0x365a
    push ax                          ; 0x365d
    call loc_194f                    ; 0x365e
    add sp, byte 4                   ; 0x3661
    push ax                          ; 0x3664
    mov ax, 3                        ; 0x3665
    push ax                          ; 0x3668
    db 0xe8, 0xb3, 0xb9 ; call 0xf01f
    add sp, byte 8                   ; 0x366c
    jmp short @..api_idx_0012_3.l46  ; 0x366f
@..api_idx_0012_3.l42:
    cmp word [bp + 0x4], byte 0      ; 0x3671
    jle short @..api_idx_0012_3.l46  ; 0x3675
    mov ax, 0xffff                   ; 0x3677
    cmp word [bp + 0x6], byte 3      ; 0x367a
    jne short @..api_idx_0012_3.l43  ; 0x367e
    mov ax, word [bp + 0x2e]         ; 0x3680
    add ax, word [bp + 0x4]          ; 0x3683
@..api_idx_0012_3.l43:
    push ax                          ; 0x3686
    mov ax, 2                        ; 0x3687
    push ax                          ; 0x368a
    cmp word [bp + 0x6], byte 3      ; 0x368b
    jne short @..api_idx_0012_3.l44  ; 0x368f
    mov ax, word [bp + 0x2e]         ; 0x3691
    add ax, word [bp + 0x4]          ; 0x3694
    jmp short @..api_idx_0012_3.l45  ; 0x3697
@..api_idx_0012_3.l44:
    mov ax, word [bp + 0x2c]         ; 0x3699
    add ax, word [bp + 0x4]          ; 0x369c
@..api_idx_0012_3.l45:
    push ax                          ; 0x369f
    mov ax, 3                        ; 0x36a0
    push ax                          ; 0x36a3
    db 0xe8, 0x78, 0xb9 ; call 0xf01f
    add sp, byte 8                   ; 0x36a7
@..api_idx_0012_3.l46:
    mov ax, 0xa                      ; 0x36aa
    imul word [bp + 0x4]             ; 0x36ad
    mov cx, word [bp + 0x6]          ; 0x36b0
    shl cx, 1                        ; 0x36b3
    add ax, cx                       ; 0x36b5
    mov bx, ax                       ; 0x36b7
    cmp word [bx - 0x6df0], byte 0   ; 0x36b9
    jne short @..api_idx_0012_3.l47  ; 0x36be
    jmp near @..api_idx_0012_3.l53   ; 0x36c0
@..api_idx_0012_3.l47:
    mov cx, word [bx - 0x6df0]       ; 0x36c3
    dec cx                           ; 0x36c7
    mov ax, word [data_82ee]         ; 0x36c8
    sub ax, cx                       ; 0x36cb
    add ax, strict word 6            ; 0x36cd
    mov cx, 4                        ; 0x36d0
    cwd                              ; 0x36d3
    idiv cx                          ; 0x36d4
    mov word [bp - 0x0002], dx       ; 0x36d6
    mov word [bp - 0x0004], 0        ; 0x36d9
    mov ax, dx                       ; 0x36de
    mov cx, 2                        ; 0x36e0
    cwd                              ; 0x36e3
    idiv cx                          ; 0x36e4
    mov ax, dx                       ; 0x36e6
    test ax, ax                      ; 0x36e8
    jne short @..api_idx_0012_3.l48  ; 0x36ea
    cmp word [bp + 0x4], byte 0      ; 0x36ec
    jg short @..api_idx_0012_3.l49   ; 0x36f0
@..api_idx_0012_3.l48:
    cmp word [bp + 0x6], byte 2      ; 0x36f2
    jne short @..api_idx_0012_3.l50  ; 0x36f6
@..api_idx_0012_3.l49:
    mov cx, word [bp + 0x4]          ; 0x36f8
    shl cx, 1                        ; 0x36fb
    shl cx, 1                        ; 0x36fd
    shl cx, 1                        ; 0x36ff
    add ax, cx                       ; 0x3701
    inc ax                           ; 0x3703
    mov word [bp - 0x0004], ax       ; 0x3704
    mov ax, word [data_91a4]         ; 0x3707
    mov word [bp - 0x0006], ax       ; 0x370a
    mov ax, word [bx + 0x260]        ; 0x370d
    mov word [bp - 0x0008], ax       ; 0x3711
    jmp short @..api_idx_0012_3.l52  ; 0x3714
@..api_idx_0012_3.l50:
    cmp word [bp + 0x4], byte 0      ; 0x3716
    jle short @..api_idx_0012_3.l52  ; 0x371a
    mov ax, word [bp + 0x4]          ; 0x371c
    add ax, strict word 0x20         ; 0x371f
    mov word [bp - 0x0004], ax       ; 0x3722
    mov ax, 0                        ; 0x3725
    cmp word [bp + 0x6], byte 3      ; 0x3728
    jne short @..api_idx_0012_3.l51  ; 0x372c
    mov ax, 1                        ; 0x372e
@..api_idx_0012_3.l51:
    mov word [bp - 0x0006], ax       ; 0x3731
    mov word [bp - 0x0008], 0        ; 0x3734
@..api_idx_0012_3.l52:
    cmp word [bp - 0x0004], byte 0   ; 0x3739
    je short @..api_idx_0012_3.l53   ; 0x373d
    mov ax, 0                        ; 0x373f
    push ax                          ; 0x3742
    push ax                          ; 0x3743
    push word [bp - 0x0006]          ; 0x3744
    push ax                          ; 0x3747
    push word [bp + 0x4]             ; 0x3748
    mov ax, 0xf8                     ; 0x374b
    push ax                          ; 0x374e
    mov ax, 0x48                     ; 0x374f
    push ax                          ; 0x3752
    mov ax, 0                        ; 0x3753
    push ax                          ; 0x3756
    push ax                          ; 0x3757
    push ax                          ; 0x3758
    push word [bp - 0x0004]          ; 0x3759
    push ax                          ; 0x375c
    push word [bp - 0x0008]          ; 0x375d
    mov ax, 4                        ; 0x3760
    push ax                          ; 0x3763
    call api_idx_0004_5              ; 0x3764
    add sp, byte 0x1c                ; 0x3767
@..api_idx_0012_3.l53:
    cmp word [bp + 0x4], byte 4      ; 0x376a
    jl short @..api_idx_0012_3.l54   ; 0x376e
    jmp near @..api_idx_0012_3.l75   ; 0x3770
@..api_idx_0012_3.l54:
    mov ax, 5                        ; 0x3773
    imul word [bp + 0x4]             ; 0x3776
    add ax, word [bp + 0x6]          ; 0x3779
    mov bx, ax                       ; 0x377c
    cmp byte [bx - 0x6d8c], 3        ; 0x377e
    je short @..api_idx_0012_3.l55   ; 0x3783
    jmp near @..api_idx_0012_3.l61   ; 0x3785
@..api_idx_0012_3.l55:
    mov ax, word [bp + 0x4]          ; 0x3788
    cmp ax, strict word 0            ; 0x378b
    jg short @..api_idx_0012_3.l56   ; 0x378e
    mov ax, word [bp + 0x6]          ; 0x3790
    cmp ax, strict word 2            ; 0x3793
    je short @..api_idx_0012_3.l56   ; 0x3796
    jmp near @..api_idx_0012_3.l61   ; 0x3798
@..api_idx_0012_3.l56:
    cmp word [bp + 0x4], byte 0      ; 0x379b
    jne short @..api_idx_0012_3.l57  ; 0x379f
    mov ax, word [bp + 0x6]          ; 0x37a1
    cmp ax, strict word 2            ; 0x37a4
    jne short @..api_idx_0012_3.l57  ; 0x37a7
    cmp word [data_8f22], byte 0     ; 0x37a9
    je short @..api_idx_0012_3.l57   ; 0x37ae
    mov word [data_8f20], 0xffff     ; 0x37b0
@..api_idx_0012_3.l57:
    cmp word [bp + 0x4], byte 0      ; 0x37b6
    jne short @..api_idx_0012_3.l58  ; 0x37ba
    mov ax, word [bp + 0x6]          ; 0x37bc
    cmp ax, strict word 2            ; 0x37bf
    jne short @..api_idx_0012_3.l58  ; 0x37c2
    mov ax, 2                        ; 0x37c4
    jmp short @..api_idx_0012_3.l59  ; 0x37c7
@..api_idx_0012_3.l58:
    mov ax, 1                        ; 0x37c9
@..api_idx_0012_3.l59:
    mov word [bp - 0x0004], ax       ; 0x37cc
    mov ax, word [bp + 0x4]          ; 0x37cf
    cmp word [bp - 0x0004], byte 2   ; 0x37d2
    je short @..api_idx_0012_3.l60   ; 0x37d6
    dec ax                           ; 0x37d8
@..api_idx_0012_3.l60:
    mov word [bp - 0x0008], ax       ; 0x37d9
    mov ax, 1                        ; 0x37dc
    push ax                          ; 0x37df
    push ax                          ; 0x37e0
    mov ax, 0                        ; 0x37e1
    push ax                          ; 0x37e4
    mov ax, word [bp - 0x0008]       ; 0x37e5
    shl ax, 1                        ; 0x37e8
    mov bx, ax                       ; 0x37ea
    push word [bx + 0x576]           ; 0x37ec
    push word [bp + 0x4]             ; 0x37f0
    mov ax, 0xf8                     ; 0x37f3
    push ax                          ; 0x37f6
    mov ax, 0x48                     ; 0x37f7
    push ax                          ; 0x37fa
    mov ax, 0                        ; 0x37fb
    push ax                          ; 0x37fe
    push ax                          ; 0x37ff
    push ax                          ; 0x3800
    push word [bp - 0x0004]          ; 0x3801
    push word [bx + 0x3dc]           ; 0x3804
    mov ax, 0xa                      ; 0x3808
    imul word [bp + 0x4]             ; 0x380b
    mov cx, word [bp + 0x6]          ; 0x380e
    shl cx, 1                        ; 0x3811
    add ax, cx                       ; 0x3813
    mov bx, ax                       ; 0x3815
    push word [bx + 0x3aa]           ; 0x3817
    mov ax, 0xc                      ; 0x381b
    push ax                          ; 0x381e
    call api_idx_0004_5              ; 0x381f
    add sp, byte 0x1c                ; 0x3822
@..api_idx_0012_3.l61:
    mov ax, 5                        ; 0x3825
    imul word [bp + 0x4]             ; 0x3828
    add ax, word [bp + 0x6]          ; 0x382b
    mov bx, ax                       ; 0x382e
    cmp byte [bx - 0x6d8c], 1        ; 0x3830
    je short @..api_idx_0012_3.l62   ; 0x3835
    cmp byte [bx - 0x6d8c], 2        ; 0x3837
    jne short @..api_idx_0012_3.l64  ; 0x383c
@..api_idx_0012_3.l62:
    mov ax, word [bp + 0x4]          ; 0x383e
    cmp ax, strict word 0            ; 0x3841
    jg short @..api_idx_0012_3.l63   ; 0x3844
    mov ax, word [bp + 0x6]          ; 0x3846
    cmp ax, strict word 2            ; 0x3849
    jne short @..api_idx_0012_3.l64  ; 0x384c
@..api_idx_0012_3.l63:
    mov ax, 1                        ; 0x384e
    push ax                          ; 0x3851
    push ax                          ; 0x3852
    mov ax, 0                        ; 0x3853
    push ax                          ; 0x3856
    mov ax, word [bp + 0x4]          ; 0x3857
    shl ax, 1                        ; 0x385a
    mov bx, ax                       ; 0x385c
    push word [bx + 0x576]           ; 0x385e
    push word [bp + 0x4]             ; 0x3862
    mov ax, 0xf8                     ; 0x3865
    push ax                          ; 0x3868
    mov ax, 0x48                     ; 0x3869
    push ax                          ; 0x386c
    mov ax, 0                        ; 0x386d
    push ax                          ; 0x3870
    push ax                          ; 0x3871
    push ax                          ; 0x3872
    mov ax, 5                        ; 0x3873
    imul word [bp + 0x4]             ; 0x3876
    add ax, word [bp + 0x6]          ; 0x3879
    mov bx, ax                       ; 0x387c
    mov al, byte [bx - 0x6d8c]       ; 0x387e
    sub ah, ah                       ; 0x3882
    push ax                          ; 0x3884
    mov ax, word [bp + 0x4]          ; 0x3885
    shl ax, 1                        ; 0x3888
    mov bx, ax                       ; 0x388a
    push word [bx + 0x3dc]           ; 0x388c
    mov ax, 0xa                      ; 0x3890
    imul word [bp + 0x4]             ; 0x3893
    mov cx, word [bp + 0x6]          ; 0x3896
    shl cx, 1                        ; 0x3899
    add ax, cx                       ; 0x389b
    mov bx, ax                       ; 0x389d
    push word [bx + 0x3aa]           ; 0x389f
    mov ax, 0xb                      ; 0x38a3
    push ax                          ; 0x38a6
    call api_idx_0004_5              ; 0x38a7
    add sp, byte 0x1c                ; 0x38aa
@..api_idx_0012_3.l64:
    mov ax, 5                        ; 0x38ad
    imul word [bp + 0x4]             ; 0x38b0
    add ax, word [bp + 0x6]          ; 0x38b3
    mov bx, ax                       ; 0x38b6
    cmp byte [bx - 0x6e09], 0        ; 0x38b8
    jne short @..api_idx_0012_3.l65  ; 0x38bd
    jmp near @..api_idx_0012_3.l75   ; 0x38bf
@..api_idx_0012_3.l65:
    cmp word [bp + 0x4], byte 0      ; 0x38c2
    jne short @..api_idx_0012_3.l66  ; 0x38c6
    mov ax, word [bp + 0x6]          ; 0x38c8
    cmp ax, strict word 2            ; 0x38cb
    jne short @..api_idx_0012_3.l66  ; 0x38ce
    cmp word [data_8f22], byte 0     ; 0x38d0
    je short @..api_idx_0012_3.l66   ; 0x38d5
    mov al, byte [bx - 0x6e09]       ; 0x38d7
    sub ah, ah                       ; 0x38db
    mov word [data_8f20], ax         ; 0x38dd
    jmp near @..api_idx_0012_3.l75   ; 0x38e0
@..api_idx_0012_3.l66:
    mov ax, word [bp + 0x4]          ; 0x38e3
    cmp ax, strict word 0            ; 0x38e6
    jg short @..api_idx_0012_3.l67   ; 0x38e9
    mov ax, word [bp + 0x6]          ; 0x38eb
    cmp ax, strict word 2            ; 0x38ee
    je short @..api_idx_0012_3.l67   ; 0x38f1
    jmp near @..api_idx_0012_3.l75   ; 0x38f3
@..api_idx_0012_3.l67:
    mov al, byte [bx - 0x6e09]       ; 0x38f6
    sub ah, ah                       ; 0x38fa
    mov cx, ax                       ; 0x38fc
    dec ax                           ; 0x38fe
    mov cx, ax                       ; 0x38ff
    mov ax, word [data_82ee]         ; 0x3901
    sub ax, cx                       ; 0x3904
    add ax, strict word 6            ; 0x3906
    mov cx, 4                        ; 0x3909
    cwd                              ; 0x390c
    idiv cx                          ; 0x390d
    mov word [bp - 0x0002], dx       ; 0x390f
    mov ax, dx                       ; 0x3912
    jmp near @..api_idx_0012_3.l72   ; 0x3914
@..api_idx_0012_3.l68:
    mov ax, 1                        ; 0x3917
    push ax                          ; 0x391a
    push ax                          ; 0x391b
    mov ax, 0                        ; 0x391c
    push ax                          ; 0x391f
    mov ax, word [bp + 0x4]          ; 0x3920
    shl ax, 1                        ; 0x3923
    mov bx, ax                       ; 0x3925
    push word [bx + 0x576]           ; 0x3927
    push word [bp + 0x4]             ; 0x392b
    mov ax, 0xf8                     ; 0x392e
    push ax                          ; 0x3931
    mov ax, 0x48                     ; 0x3932
    push ax                          ; 0x3935
    mov ax, 0                        ; 0x3936
    push ax                          ; 0x3939
    mov ax, 5                        ; 0x393a
    cmp word [bp - 0x0002], byte 0   ; 0x393d
    jne short @..api_idx_0012_3.l69  ; 0x3941
    mov ax, 4                        ; 0x3943
@..api_idx_0012_3.l69:
    push ax                          ; 0x3946
    mov ax, 2                        ; 0x3947
    push ax                          ; 0x394a
    mov ax, 1                        ; 0x394b
    push ax                          ; 0x394e
    push word [bx + 0x3dc]           ; 0x394f
    mov ax, 0xa                      ; 0x3953
    imul word [bp + 0x4]             ; 0x3956
    mov cx, word [bp + 0x6]          ; 0x3959
    shl cx, 1                        ; 0x395c
    add ax, cx                       ; 0x395e
    mov bx, ax                       ; 0x3960
    push word [bx + 0x3aa]           ; 0x3962
    mov ax, 3                        ; 0x3966
    push ax                          ; 0x3969
    call api_idx_0004_5              ; 0x396a
    add sp, byte 0x1c                ; 0x396d
    jmp short @..api_idx_0012_3.l75  ; 0x3970
@..api_idx_0012_3.l70:
    mov ax, 1                        ; 0x3972
    push ax                          ; 0x3975
    push ax                          ; 0x3976
    mov ax, 0                        ; 0x3977
    cmp word [bp - 0x0002], byte 3   ; 0x397a
    jne short @..api_idx_0012_3.l71  ; 0x397e
    mov ax, 1                        ; 0x3980
@..api_idx_0012_3.l71:
    push ax                          ; 0x3983
    mov ax, word [bp + 0x4]          ; 0x3984
    shl ax, 1                        ; 0x3987
    mov bx, ax                       ; 0x3989
    push word [bx + 0x576]           ; 0x398b
    push word [bp + 0x4]             ; 0x398f
    mov ax, 0xf8                     ; 0x3992
    push ax                          ; 0x3995
    mov ax, 0x48                     ; 0x3996
    push ax                          ; 0x3999
    mov ax, 0                        ; 0x399a
    push ax                          ; 0x399d
    push ax                          ; 0x399e
    push ax                          ; 0x399f
    mov ax, 3                        ; 0x39a0
    push ax                          ; 0x39a3
    push word [bx + 0x3dc]           ; 0x39a4
    mov ax, 0xa                      ; 0x39a8
    imul word [bp + 0x4]             ; 0x39ab
    mov cx, word [bp + 0x6]          ; 0x39ae
    shl cx, 1                        ; 0x39b1
    add ax, cx                       ; 0x39b3
    mov bx, ax                       ; 0x39b5
    push word [bx + 0x3aa]           ; 0x39b7
    mov ax, 3                        ; 0x39bb
    push ax                          ; 0x39be
    call api_idx_0004_5              ; 0x39bf
    add sp, byte 0x1c                ; 0x39c2
    jmp short @..api_idx_0012_3.l75  ; 0x39c5
@..api_idx_0012_3.l72:
    cmp ax, strict word 0            ; 0x39c7
    jne short @..api_idx_0012_3.l73  ; 0x39ca
    jmp near @..api_idx_0012_3.l68   ; 0x39cc
@..api_idx_0012_3.l73:
    cmp ax, strict word 1            ; 0x39cf
    je short @..api_idx_0012_3.l70   ; 0x39d2
    cmp ax, strict word 2            ; 0x39d4
    jne short @..api_idx_0012_3.l74  ; 0x39d7
    jmp near @..api_idx_0012_3.l68   ; 0x39d9
@..api_idx_0012_3.l74:
    cmp ax, strict word 3            ; 0x39dc
    je short @..api_idx_0012_3.l70   ; 0x39df
@..api_idx_0012_3.l75:
    ret                              ; 0x39e1
%include "vmext/api_idx_0016.asm"

%include "vmext/api_idx_0024.asm"

@..api_idx_0024.l5:
    mov cx, 2                        ; 0x3c1a
    cwd                              ; 0x3c1d
    idiv cx                          ; 0x3c1e
    mov word [bp - 0x000a], ax       ; 0x3c20
    mov word [bp - 0x0002], 0        ; 0x3c23
@..api_idx_0024.l6:
    mov ax, word [bp - 0x0002]       ; 0x3c28
    shl ax, 1                        ; 0x3c2b
    mov bx, ax                       ; 0x3c2d
    add bx, bp                       ; 0x3c2f
    mov word [bx - 0x0016], 0xff01   ; 0x3c31
    inc word [bp - 0x0002]           ; 0x3c36
    mov ax, word [bp - 0x0002]       ; 0x3c39
    cmp ax, strict word 4            ; 0x3c3c
    jl short @..api_idx_0024.l6      ; 0x3c3f
    cmp word [bp - 0x000a], byte 0x3e ; 0x3c41
    jge short @..api_idx_0024.l7     ; 0x3c45
    mov ax, word [bp - 0x000a]       ; 0x3c47
    add ax, strict word 0x72         ; 0x3c4a
    mov word [bp - 0x0014], ax       ; 0x3c4d
@..api_idx_0024.l7:
    cmp word [bp - 0x000a], byte 0x10 ; 0x3c50
    jl short @..api_idx_0024.l8      ; 0x3c54
    cmp word [bp - 0x000a], strict word 0xd0 ; 0x3c56
    jg short @..api_idx_0024.l8      ; 0x3c5b
    mov ax, word [bp - 0x000a]       ; 0x3c5d
    add ax, strict word 0xffe0       ; 0x3c60
    mov word [bp - 0x0012], ax       ; 0x3c63
@..api_idx_0024.l8:
    cmp word [bp - 0x000a], strict word 0xa2 ; 0x3c66
    jl short @..api_idx_0024.l9      ; 0x3c6b
    cmp word [bp - 0x000a], api_idx_0004 ; 0x3c6d
    jg short @..api_idx_0024.l9      ; 0x3c72
    mov ax, word [bp - 0x000a]       ; 0x3c74
    add ax, 0xff4e                   ; 0x3c77
    mov word [bp - 0x0010], ax       ; 0x3c7a
@..api_idx_0024.l9:
    mov ax, word [data_82ee]         ; 0x3c7d
    shl ax, 1                        ; 0x3c80
    mov bx, ax                       ; 0x3c82
    add bx, bp                       ; 0x3c84
    cmp word [bx - 0x0016], strict word 0xff01 ; 0x3c86
    jne short @..api_idx_0024.l10    ; 0x3c8b
    ret                              ; 0x3c8d
@..api_idx_0024.l10:
    mov ax, word [bp - 0x0008]       ; 0x3c8e
    mov cx, api_idx_0004             ; 0x3c91
    cwd                              ; 0x3c94
    idiv cx                          ; 0x3c95
    mov ax, dx                       ; 0x3c97
    mov cx, 7                        ; 0x3c99
    cwd                              ; 0x3c9c
    idiv cx                          ; 0x3c9d
    mov word [bp - 0x000c], ax       ; 0x3c9f
    mov ax, word [bp - 0x0008]       ; 0x3ca2
    mov cx, api_idx_0004             ; 0x3ca5
    cwd                              ; 0x3ca8
    idiv cx                          ; 0x3ca9
    test ax, ax                      ; 0x3cab
    je short @..api_idx_0024.l11     ; 0x3cad
    mov ax, 0x22                     ; 0x3caf
    sub ax, word [bp - 0x000c]       ; 0x3cb2
    jmp short @..api_idx_0024.l12    ; 0x3cb5
@..api_idx_0024.l11:
    mov ax, word [bp - 0x000c]       ; 0x3cb7
@..api_idx_0024.l12:
    mov word [bp - 0x000e], ax       ; 0x3cba
    mov ax, word [bp - 0x0004]       ; 0x3cbd
    mov cx, 3                        ; 0x3cc0
    cwd                              ; 0x3cc3
    idiv cx                          ; 0x3cc4
    mov cx, 8                        ; 0x3cc6
    cwd                              ; 0x3cc9
    idiv cx                          ; 0x3cca
    mov word [bp - 0x0018], dx       ; 0x3ccc
    mov ax, 1                        ; 0x3ccf
    cmp dx, byte 5                   ; 0x3cd2
    jge short @..api_idx_0024.l13    ; 0x3cd5
    mov ax, 0                        ; 0x3cd7
@..api_idx_0024.l13:
    mov word [bp - 0x001a], ax       ; 0x3cda
    cmp dx, byte 5                   ; 0x3cdd
    jge short @..api_idx_0024.l14    ; 0x3ce0
    inc dx                           ; 0x3ce2
    mov ax, dx                       ; 0x3ce3
    jmp short @..api_idx_0024.l15    ; 0x3ce5
@..api_idx_0024.l14:
    sub cx, word [bp - 0x0018]       ; 0x3ce7
    mov ax, cx                       ; 0x3cea
    inc ax                           ; 0x3cec
@..api_idx_0024.l15:
    mov byte [bp - 0x0024], al       ; 0x3ced
    mov byte [bp - 0x0023], 0        ; 0x3cf0
    mov ax, 0                        ; 0x3cf4
    push ax                          ; 0x3cf7
    push ax                          ; 0x3cf8
    lea ax, word [bp - 0x0024]       ; 0x3cf9
    push ax                          ; 0x3cfc
    push word [bp - 0x001a]          ; 0x3cfd
    mov ax, 0x90                     ; 0x3d00
    push ax                          ; 0x3d03
    mov ax, 0x20                     ; 0x3d04
    push ax                          ; 0x3d07
    mov ax, 0xf8                     ; 0x3d08
    push ax                          ; 0x3d0b
    mov ax, 0x48                     ; 0x3d0c
    push ax                          ; 0x3d0f
    mov ax, 0x44                     ; 0x3d10
    sub ax, word [bp - 0x000e]       ; 0x3d13
    push ax                          ; 0x3d16
    mov ax, word [bx - 0x0016]       ; 0x3d17
    add ax, strict word 0x48         ; 0x3d1a
    push ax                          ; 0x3d1d
    mov ax, 6                        ; 0x3d1e
    push ax                          ; 0x3d21
    call ds_dispatch_efd1            ; 0x3d22
    add sp, byte 0x16                ; 0x3d25
    ret                              ; 0x3d28
%include "vmext/api_idx_001e.asm"

@..api_idx_001e.l2:
    mov cx, 3                        ; 0x3d62
    cwd                              ; 0x3d65
    idiv cx                          ; 0x3d66
    mov word [bp - 0x0008], ax       ; 0x3d68
    mov word [bp - 0x0002], 0        ; 0x3d6b
@..api_idx_001e.l3:
    mov ax, word [bp - 0x0002]       ; 0x3d70
    shl ax, 1                        ; 0x3d73
    mov bx, ax                       ; 0x3d75
    add bx, bp                       ; 0x3d77
    mov word [bx - 0x0014], 0xff01   ; 0x3d79
    inc word [bp - 0x0002]           ; 0x3d7e
    mov ax, word [bp - 0x0002]       ; 0x3d81
    cmp ax, strict word 4            ; 0x3d84
    jl short @..api_idx_001e.l3      ; 0x3d87
    cmp word [bp - 0x0008], byte 0x68 ; 0x3d89
    jg short @..api_idx_001e.l4      ; 0x3d8d
    mov ax, 0x58                     ; 0x3d8f
    sub ax, word [bp - 0x0008]       ; 0x3d92
    mov word [bp - 0x0012], ax       ; 0x3d95
@..api_idx_001e.l4:
    cmp word [bp - 0x0008], byte 0x3a ; 0x3d98
    jl short @..api_idx_001e.l5      ; 0x3d9c
    cmp word [bp - 0x0008], strict word 0xfa ; 0x3d9e
    jg short @..api_idx_001e.l5      ; 0x3da3
    mov ax, 0xb0                     ; 0x3da5
    mov cx, word [bp - 0x0008]       ; 0x3da8
    add cx, byte 0xc6                ; 0x3dab
    sub ax, cx                       ; 0x3dae
    mov word [bp - 0x0014], ax       ; 0x3db0
@..api_idx_001e.l5:
    cmp word [bp - 0x0008], strict word 0xcc ; 0x3db3
    jl short @..api_idx_001e.l6      ; 0x3db8
    cmp word [bp - 0x0008], strict word 0x124 ; 0x3dba
    jg short @..api_idx_001e.l6      ; 0x3dbf
    mov ax, 0xb0                     ; 0x3dc1
    mov cx, word [bp - 0x0008]       ; 0x3dc4
    add cx, strict word 0xff34       ; 0x3dc7
    sub ax, cx                       ; 0x3dcb
    mov word [bp - 0x000e], ax       ; 0x3dcd
@..api_idx_001e.l6:
    mov ax, word [data_82ee]         ; 0x3dd0
    shl ax, 1                        ; 0x3dd3
    mov bx, ax                       ; 0x3dd5
    add bx, bp                       ; 0x3dd7
    cmp word [bx - 0x0014], strict word 0xff01 ; 0x3dd9
    jne short @..api_idx_001e.l7     ; 0x3dde
    ret                              ; 0x3de0
@..api_idx_001e.l7:
    cmp word [bp - 0x0006], strict word 0x10e ; 0x3de1
    jge short @..api_idx_001e.l8     ; 0x3de6
    mov ax, word [bp - 0x0006]       ; 0x3de8
    mov cx, 0xa                      ; 0x3deb
    cwd                              ; 0x3dee
    idiv cx                          ; 0x3def
    add ax, strict word 5            ; 0x3df1
    mov word [bp - 0x000c], ax       ; 0x3df4
    jmp short @..api_idx_001e.l12    ; 0x3df7
@..api_idx_001e.l8:
    mov ax, word [bp - 0x0006]       ; 0x3df9
    cmp ax, 0x276                    ; 0x3dfc
    jl short @..api_idx_001e.l9      ; 0x3dff
    add ax, 0xfd8a                   ; 0x3e01
    mov cx, 9                        ; 0x3e04
    cwd                              ; 0x3e07
    idiv cx                          ; 0x3e08
    mov cx, ax                       ; 0x3e0a
    mov ax, 0x20                     ; 0x3e0c
    sub ax, cx                       ; 0x3e0f
    mov word [bp - 0x000c], ax       ; 0x3e11
    jmp short @..api_idx_001e.l12    ; 0x3e14
@..api_idx_001e.l9:
    mov ax, word [bp - 0x0006]       ; 0x3e16
    add ax, 0xfef2                   ; 0x3e19
    mov cx, 0xb4                     ; 0x3e1c
    cwd                              ; 0x3e1f
    idiv cx                          ; 0x3e20
    mov ax, dx                       ; 0x3e22
    mov cx, 0x24                     ; 0x3e24
    cwd                              ; 0x3e27
    idiv cx                          ; 0x3e28
    mov word [bp - 0x000a], ax       ; 0x3e2a
    mov ax, word [bp - 0x0006]       ; 0x3e2d
    add ax, 0xfef2                   ; 0x3e30
    mov cx, 0xb4                     ; 0x3e33
    cwd                              ; 0x3e36
    idiv cx                          ; 0x3e37
    test ax, ax                      ; 0x3e39
    je short @..api_idx_001e.l10     ; 0x3e3b
    mov ax, 0x24                     ; 0x3e3d
    sub ax, word [bp - 0x000a]       ; 0x3e40
    jmp short @..api_idx_001e.l11    ; 0x3e43
@..api_idx_001e.l10:
    mov ax, word [bp - 0x000a]       ; 0x3e45
    add ax, strict word 0x20         ; 0x3e48
@..api_idx_001e.l11:
    mov word [bp - 0x000c], ax       ; 0x3e4b
@..api_idx_001e.l12:
    mov byte [bp - 0x001e], 6        ; 0x3e4e
    mov byte [bp - 0x001d], 0        ; 0x3e52
    mov ax, 0                        ; 0x3e56
    push ax                          ; 0x3e59
    push ax                          ; 0x3e5a
    lea ax, word [bp - 0x001e]       ; 0x3e5b
    push ax                          ; 0x3e5e
    mov ax, 0                        ; 0x3e5f
    push ax                          ; 0x3e62
    mov ax, 0x90                     ; 0x3e63
    push ax                          ; 0x3e66
    mov ax, 0x20                     ; 0x3e67
    push ax                          ; 0x3e6a
    mov ax, 0xf8                     ; 0x3e6b
    push ax                          ; 0x3e6e
    mov ax, 0x48                     ; 0x3e6f
    push ax                          ; 0x3e72
    mov ax, 0x46                     ; 0x3e73
    sub ax, word [bp - 0x000c]       ; 0x3e76
    push ax                          ; 0x3e79
    mov ax, word [bx - 0x0014]       ; 0x3e7a
    add ax, strict word 0x48         ; 0x3e7d
    push ax                          ; 0x3e80
    mov ax, 6                        ; 0x3e81
    push ax                          ; 0x3e84
    call ds_dispatch_efd1            ; 0x3e85
    add sp, byte 0x16                ; 0x3e88
    ret                              ; 0x3e8b
%include "vmext/api_idx_0030.asm"

@..api_idx_0030.l5:
    cmp word [data_5b6e], byte 1     ; 0x3fc0
    je short @..api_idx_0030.l6      ; 0x3fc5
    cmp word [data_9188], byte 0     ; 0x3fc7
    je short @..api_idx_0030.l8      ; 0x3fcc
@..api_idx_0030.l6:
    push word [bp - 0x0008]          ; 0x3fce
    mov ax, word [data_0e14]         ; 0x3fd1
    add ax, 0x8b0                    ; 0x3fd4
    push ax                          ; 0x3fd7
    call ds_dispatch_ec74            ; 0x3fd8
    add sp, byte 4                   ; 0x3fdb
    test ax, ax                      ; 0x3fde
    je short @..api_idx_0030.l8      ; 0x3fe0
    cmp word [data_9188], byte 0     ; 0x3fe2
    je short @..api_idx_0030.l7      ; 0x3fe7
    mov ax, 0xff                     ; 0x3fe9
    push ax                          ; 0x3fec
    mov ax, 0x8e                     ; 0x3fed
    push ax                          ; 0x3ff0
    mov ax, 0xf7                     ; 0x3ff1
    push ax                          ; 0x3ff4
    mov ax, 0x21                     ; 0x3ff5
    push ax                          ; 0x3ff8
    mov ax, 0x48                     ; 0x3ff9
    push ax                          ; 0x3ffc
    call ds_dispatch_e901            ; 0x3ffd
    add sp, byte 0x0a                ; 0x4000
    call api_idx_001e                ; 0x4003
    call api_idx_0024                ; 0x4006
@..api_idx_0030.l7:
    call ds_dispatch_da22            ; 0x4009
    ret                              ; 0x400c
@..api_idx_0030.l8:
    mov ax, 0                        ; 0x400d
    push ax                          ; 0x4010
    mov ax, 0x19                     ; 0x4011
    push ax                          ; 0x4014
    mov ax, 0x91de                   ; 0x4015
    push ax                          ; 0x4018
    call ds_dispatch_f306            ; 0x4019
    add sp, byte 6                   ; 0x401c
    mov ax, 0                        ; 0x401f
    push ax                          ; 0x4022
    mov ax, 0x19                     ; 0x4023
    push ax                          ; 0x4026
    mov ax, 0x91c5                   ; 0x4027
    push ax                          ; 0x402a
    call ds_dispatch_f306            ; 0x402b
    add sp, byte 6                   ; 0x402e
    mov ax, 0                        ; 0x4031
    push ax                          ; 0x4034
    mov ax, 0x19                     ; 0x4035
    push ax                          ; 0x4038
    mov ax, 0x91ac                   ; 0x4039
    push ax                          ; 0x403c
    call ds_dispatch_f306            ; 0x403d
    add sp, byte 6                   ; 0x4040
    mov ax, 0                        ; 0x4043
    push ax                          ; 0x4046
    mov ax, 0x19                     ; 0x4047
    push ax                          ; 0x404a
    mov ax, 0x9aee                   ; 0x404b
    push ax                          ; 0x404e
    call ds_dispatch_f306            ; 0x404f
    add sp, byte 6                   ; 0x4052
    mov ax, 0                        ; 0x4055
    push ax                          ; 0x4058
    mov ax, 0x19                     ; 0x4059
    push ax                          ; 0x405c
    mov ax, 0x91f7                   ; 0x405d
    push ax                          ; 0x4060
    call ds_dispatch_f306            ; 0x4061
    add sp, byte 6                   ; 0x4064
    mov ax, 0                        ; 0x4067
    push ax                          ; 0x406a
    mov ax, 0x32                     ; 0x406b
    push ax                          ; 0x406e
    mov ax, 0x928e                   ; 0x406f
    push ax                          ; 0x4072
    call ds_dispatch_f306            ; 0x4073
    add sp, byte 6                   ; 0x4076
    mov ax, 0                        ; 0x4079
    push ax                          ; 0x407c
    mov ax, 0x19                     ; 0x407d
    push ax                          ; 0x4080
    mov ax, 0x9274                   ; 0x4081
    push ax                          ; 0x4084
    call ds_dispatch_f306            ; 0x4085
    add sp, byte 6                   ; 0x4088
    mov ax, 0                        ; 0x408b
    push ax                          ; 0x408e
    mov ax, 0x32                     ; 0x408f
    push ax                          ; 0x4092
    mov ax, 0x9210                   ; 0x4093
    push ax                          ; 0x4096
    call ds_dispatch_f306            ; 0x4097
    add sp, byte 6                   ; 0x409a
    mov ax, 0                        ; 0x409d
    push ax                          ; 0x40a0
    mov ax, 0x32                     ; 0x40a1
    push ax                          ; 0x40a4
    mov ax, 0x92c0                   ; 0x40a5
    push ax                          ; 0x40a8
    call ds_dispatch_f306            ; 0x40a9
    add sp, byte 6                   ; 0x40ac
    mov ax, 0                        ; 0x40af
    push ax                          ; 0x40b2
    mov ax, 0x32                     ; 0x40b3
    push ax                          ; 0x40b6
    mov ax, 0x9242                   ; 0x40b7
    push ax                          ; 0x40ba
    call ds_dispatch_f306            ; 0x40bb
    add sp, byte 6                   ; 0x40be
    mov ax, 0                        ; 0x40c1
    push ax                          ; 0x40c4
    mov ax, 0x7f8                    ; 0x40c5
    push ax                          ; 0x40c8
    mov ax, 0x92f4                   ; 0x40c9
    push ax                          ; 0x40cc
    call ds_dispatch_f306            ; 0x40cd
    add sp, byte 6                   ; 0x40d0
    mov word [data_92f2], 0          ; 0x40d3
    mov ax, word [bp - 0x0012]       ; 0x40d9
    mov word [bp - 0x0014], ax       ; 0x40dc
    mov ax, 0xffff                   ; 0x40df
    push ax                          ; 0x40e2
    mov ax, 0                        ; 0x40e3
    push ax                          ; 0x40e6
    lea ax, word [bp - 0x0014]       ; 0x40e7
    push ax                          ; 0x40ea
    lea ax, word [bp - 0x0010]       ; 0x40eb
    push ax                          ; 0x40ee
    lea ax, word [bp - 0x000e]       ; 0x40ef
    push ax                          ; 0x40f2
    lea ax, word [bp - 0x000c]       ; 0x40f3
    push ax                          ; 0x40f6
    lea ax, word [bp - 0x000a]       ; 0x40f7
    push ax                          ; 0x40fa
    call loc_1963                    ; 0x40fb
    add sp, byte 0x0e                ; 0x40fe
    mov word [data_9b08], 5          ; 0x4101
    mov ax, word [data_8f46]         ; 0x4107
    add ax, word [data_8f44]         ; 0x410a
    add ax, word [data_82ee]         ; 0x410e
    mov cx, 2                        ; 0x4112
    cwd                              ; 0x4115
    idiv cx                          ; 0x4116
    mov word [data_91a6], dx         ; 0x4118
    mov word [data_91a8], 0          ; 0x411c
    mov ax, word [data_5b6e]         ; 0x4122
    jmp near loc_447f                ; 0x4125

    db 0xc7, 0x06, 0xa8, 0x91, 0x00, 0x00, 0x83, 0x3e, 0x0c, 0x83, 0x1e, 0x75, 0x09, 0x83, 0x3e, 0x3e
    db 0x8f, 0x08, 0x75, 0x02, 0xeb, 0x23, 0xb8, 0x1f, 0x00, 0x50, 0xe8, 0xf6, 0xd7, 0x59, 0x50, 0xb8
    db 0x00, 0x00, 0x50

    mov ax, 0x1f                     ; 0x414b
    push ax                          ; 0x414e
    push ax                          ; 0x414f
    call loc_194f                    ; 0x4150
    add sp, byte 4                   ; 0x4153
    push ax                          ; 0x4156
    mov ax, 0                        ; 0x4157
    push ax                          ; 0x415a
    db 0xe8, 0xc1, 0xae ; call 0xf01f
    add sp, byte 8                   ; 0x415e
    mov ax, 0x20                     ; 0x4161
    push ax                          ; 0x4164
    call loc_193b                    ; 0x4165
    pop cx                           ; 0x4168
    push ax                          ; 0x4169
    mov ax, 0                        ; 0x416a
    push ax                          ; 0x416d
    mov ax, 0x20                     ; 0x416e
    push ax                          ; 0x4171
    push ax                          ; 0x4172
    call loc_194f                    ; 0x4173
    add sp, byte 4                   ; 0x4176
    push ax                          ; 0x4179
    mov ax, 0                        ; 0x417a
    push ax                          ; 0x417d
    db 0xe8, 0x9e, 0xae ; call 0xf01f
    add sp, byte 8                   ; 0x4181
    jmp near loc_448c                ; 0x4184

    db 0xc7, 0x06, 0xa8, 0x91, 0x01, 0x00, 0xb8, 0xff, 0x00, 0x50, 0xb8, 0x48, 0x00, 0x50, 0xb8, 0xf7
    db 0x00, 0x50, 0xb8, 0x21, 0x00, 0x50, 0xb8, 0x48, 0x00, 0x50, 0xe8, 0x5d, 0xa7, 0x83, 0xc4, 0x0a
    db 0xe8, 0x7f, 0xfb, 0xe8, 0xd6, 0xf9, 0xb8, 0x04, 0x00, 0x50, 0xe8, 0x87, 0xd7, 0x59, 0x50, 0xb8
    db 0x02, 0x00, 0x50, 0xb8, 0x04, 0x00, 0x50, 0x50, 0xe8, 0x8d, 0xd7, 0x83, 0xc4, 0x04, 0x50, 0xb8
    db 0x01, 0x00, 0x50, 0xe8, 0x52, 0xae, 0x83, 0xc4, 0x08, 0xb8, 0x3e, 0x00, 0x50, 0xe8, 0x64, 0xd7
    db 0x59, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x3e, 0x00, 0x50, 0x50, 0xe8, 0x6a, 0xd7, 0x83, 0xc4
    db 0x04, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xe8, 0x2f, 0xae, 0x83, 0xc4, 0x08, 0xe9, 0x96, 0x02, 0xc7
    db 0x06, 0xa8, 0x91, 0x02, 0x00, 0xb8, 0xff, 0x00, 0x50, 0xb8, 0x48, 0x00, 0x50, 0xb8, 0xf7, 0x00
    db 0x50, 0xb8, 0x21, 0x00, 0x50, 0xb8, 0x48, 0x00, 0x50, 0xe8, 0xee, 0xa6, 0x83, 0xc4, 0x0a, 0xe8
    db 0x10, 0xfb, 0xe8, 0x67, 0xf9, 0x83, 0x3e, 0x0c, 0x83, 0x0e, 0x75, 0x3d, 0x83, 0x3e, 0x3e, 0x8f
    db 0x09, 0x7e, 0x36, 0x83, 0x3e, 0x3e, 0x8f, 0x0a, 0x7f, 0x16, 0xa1, 0xee, 0x82, 0x3d, 0x02, 0x00
    db 0x74, 0x0e, 0x83, 0x3e, 0xee, 0x82, 0x00, 0x74, 0x20, 0x83, 0x3e, 0x40, 0x8f, 0x05, 0x7d, 0x19
    db 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x50, 0x00, 0x50, 0xb8, 0xf7, 0x00, 0x50, 0xb8, 0x48, 0x00, 0x50
    db 0x50, 0xe8, 0xa6, 0xa6, 0x83, 0xc4, 0x0a, 0xeb, 0x46, 0xb8, 0x04, 0x00, 0x50, 0xe8, 0xd4, 0xd6
    db 0x59, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x04, 0x00, 0x50, 0x50, 0xe8, 0xda, 0xd6, 0x83, 0xc4
    db 0x04, 0x50, 0xb8, 0x04, 0x00, 0x50, 0xe8, 0x9f, 0xad, 0x83, 0xc4, 0x08, 0xb8, 0xad, 0x00, 0x50
    db 0xe8, 0xb1, 0xd6, 0x59, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0xad, 0x00, 0x50, 0x50, 0xe8, 0xb7
    db 0xd6, 0x83, 0xc4, 0x04, 0x50, 0xb8, 0x02, 0x00, 0x50, 0xe8, 0x7c, 0xad, 0x83, 0xc4, 0x08, 0xe9
    db 0xe3, 0x01, 0xc7, 0x06, 0xa8, 0x91, 0x03, 0x00, 0xb8, 0xff, 0x00, 0x50, 0xb8, 0x48, 0x00, 0x83
    db 0x3e, 0x88, 0x91, 0x00, 0x74, 0x03, 0xb8, 0x8e, 0x00, 0x50, 0xb8, 0xf7, 0x00, 0x50, 0xb8, 0x21
    db 0x00, 0x50, 0xb8, 0x48, 0x00, 0x50, 0xe8, 0x31, 0xa6, 0x83, 0xc4, 0x0a, 0xe8, 0x53, 0xfa, 0xe8
    db 0xaa, 0xf8, 0xb8, 0x04, 0x00, 0x50, 0xe8, 0x5b, 0xd6, 0x59, 0x50, 0xb8, 0x02, 0x00, 0x50, 0xb8
    db 0x04, 0x00, 0x50, 0x50, 0xe8, 0x61, 0xd6, 0x83, 0xc4, 0x04, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xe8
    db 0x26, 0xad, 0x83, 0xc4, 0x08, 0x83, 0x3e, 0x88, 0x91, 0x00, 0x75, 0x23, 0xb8, 0x2a, 0x00, 0x50
    db 0xe8, 0x31, 0xd6, 0x59, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x2a, 0x00, 0x50, 0x50, 0xe8, 0x37
    db 0xd6, 0x83, 0xc4, 0x04, 0x50, 0xb8, 0x04, 0x00, 0x50, 0xe8, 0xfc, 0xac, 0x83, 0xc4, 0x08, 0xe9
    db 0x63, 0x01, 0xc7, 0x06, 0xa8, 0x91, 0x04, 0x00, 0xb8, 0xff, 0x00, 0x50, 0xb8, 0x38, 0x00, 0x50
    db 0xb8, 0xf7, 0x00, 0x50, 0xb8, 0x21, 0x00, 0x50, 0xb8, 0x48, 0x00, 0x50, 0xe8, 0xbb, 0xa5, 0x83
    db 0xc4, 0x0a, 0xe8, 0xdd, 0xf9, 0xe8, 0x34, 0xf8, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x50, 0x00, 0x50
    db 0xb8, 0xf7, 0x00, 0x50, 0xb8, 0x39, 0x00, 0x50, 0xb8, 0x48, 0x00, 0x50, 0xe8, 0x9b, 0xa5, 0x83
    db 0xc4, 0x0a, 0xb8, 0x2a, 0x00, 0x50, 0xe8, 0xcb, 0xd5, 0x59, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xb8
    db 0x2a, 0x00, 0x50, 0x50, 0xe8, 0xd1, 0xd5, 0x83, 0xc4, 0x04, 0x50, 0xb8, 0x04, 0x00, 0x50, 0xe8
    db 0x96, 0xac, 0x83, 0xc4, 0x08, 0xe9, 0xfd, 0x00, 0xc7, 0x06, 0xa8, 0x91, 0x05, 0x00, 0xb8, 0xff
    db 0x00, 0x50, 0xb8, 0x48, 0x00, 0x50, 0xb8, 0xf7, 0x00, 0x50, 0xb8, 0x21, 0x00, 0x50, 0xb8, 0x48
    db 0x00, 0x50, 0xe8, 0x55, 0xa5, 0x83, 0xc4, 0x0a, 0xe8, 0x77, 0xf9, 0xe8, 0xce, 0xf7, 0xb8, 0x3e
    db 0x00, 0x50, 0xe8, 0x7f, 0xd5, 0x59, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x3e, 0x00, 0x50, 0x50
    db 0xe8, 0x85, 0xd5, 0x83, 0xc4, 0x04, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xe8, 0x4a, 0xac, 0x83, 0xc4
    db 0x08, 0x83, 0x3e, 0x0c, 0x83, 0x08, 0x75, 0x3a, 0x83, 0x3e, 0x3e, 0x8f, 0x06, 0x75, 0x33, 0x83
    db 0x3e, 0x40, 0x8f, 0x04, 0x75, 0x2c, 0xa1, 0x42, 0x8f, 0x3d, 0x02, 0x00, 0x74, 0x05, 0x3d, 0x01
    db 0x00, 0x75, 0x08, 0xa1, 0xee, 0x82, 0x3d, 0x01, 0x00, 0x74, 0x15, 0xa1, 0x42, 0x8f, 0x3d, 0x05
    db 0x00, 0x74, 0x05, 0x3d, 0x06, 0x00, 0x75, 0x0a, 0xa1

@..math_loc_4471.l1:
    out dx, al                       ; 0x4410
    cmp byte [di], 3                 ; 0x4411
    add byte [di + 0x2], dh          ; 0x4414
    jmp short @..math_loc_4471.l2    ; 0x4417
    mov ax, 0                        ; 0x4419
    push ax                          ; 0x441c
    mov ax, 0x50                     ; 0x441d
    push ax                          ; 0x4420
    mov ax, 0xf7                     ; 0x4421
    push ax                          ; 0x4424
    mov ax, 0x48                     ; 0x4425
    push ax                          ; 0x4428
    push ax                          ; 0x4429
    db 0xe8, 0xd4, 0xa4 ; call ds_dispatch_e901
    add sp, byte 0x0a                ; 0x442d
@..math_loc_4471.l2:
    cmp word [data_830c], byte 8     ; 0x4430
    je short @..math_loc_4471.l3     ; 0x4435
    cmp word [data_830c], byte 0x0b  ; 0x4437
    jne short @..math_loc_4471.l4    ; 0x443c
    cmp word [data_8f3e], byte 6     ; 0x443e
    jne short @..math_loc_4471.l4    ; 0x4443
    cmp word [data_8f40], byte 3     ; 0x4445
    jle short @..math_loc_4471.l4    ; 0x444a
@..math_loc_4471.l3:
    mov ax, 4                        ; 0x444c
    push ax                          ; 0x444f
    call loc_193b                    ; 0x4450
    pop cx                           ; 0x4453
    push ax                          ; 0x4454
    mov ax, 2                        ; 0x4455
    push ax                          ; 0x4458
    mov ax, 4                        ; 0x4459
    push ax                          ; 0x445c
    push ax                          ; 0x445d
    call loc_194f                    ; 0x445e
    add sp, byte 4                   ; 0x4461
    push ax                          ; 0x4464
    mov ax, 1                        ; 0x4465
    push ax                          ; 0x4468
    db 0xe8, 0xb3, 0xab ; call 0xf01f
    add sp, byte 8                   ; 0x446c
@..math_loc_4471.l4:
    jmp short loc_448c               ; 0x446f
%include "vmext/math_loc_4471.asm"

loc_4670:
    cmp word [data_9b0a], byte 0     ; 0x4670
    jne short loc_4684               ; 0x4675
    mov ax, word [data_8456]         ; 0x4677
    cmp ax, word [data_91aa]         ; 0x467a
    jne short loc_4684               ; 0x467e
    inc word [data_8456]             ; 0x4680
loc_4684:
    mov ax, word [data_91a4]         ; 0x4684
    mov word [data_9aec], ax         ; 0x4687
    mov ax, 0x1e                     ; 0x468a
    push ax                          ; 0x468d
    push ax                          ; 0x468e
    mov ax, 0                        ; 0x468f
    push ax                          ; 0x4692
    push ax                          ; 0x4693
    mov ax, 0x85                     ; 0x4694
    push ax                          ; 0x4697
    push ax                          ; 0x4698
    mov ax, 0x1d                     ; 0x4699
    push ax                          ; 0x469c
    mov ax, 0x21                     ; 0x469d
    push ax                          ; 0x46a0
    push ax                          ; 0x46a1
    mov ax, 0x1d                     ; 0x46a2
    push ax                          ; 0x46a5
    mov ax, 0x19                     ; 0x46a6
    push ax                          ; 0x46a9
    push ax                          ; 0x46aa
    mov ax, 0                        ; 0x46ab
    push ax                          ; 0x46ae
    push ax                          ; 0x46af
    mov ax, 0x8c                     ; 0x46b0
    push ax                          ; 0x46b3
    push ax                          ; 0x46b4
    mov ax, 0x6e                     ; 0x46b5
    push ax                          ; 0x46b8
    push ax                          ; 0x46b9
    mov ax, 0x24                     ; 0x46ba
    push ax                          ; 0x46bd
    mov ax, 0x27                     ; 0x46be
    push ax                          ; 0x46c1
    push ax                          ; 0x46c2
    mov ax, 0x24                     ; 0x46c3
    push ax                          ; 0x46c6
    mov ax, 0x21                     ; 0x46c7
    push ax                          ; 0x46ca
    push ax                          ; 0x46cb
    mov ax, 0x3f                     ; 0x46cc
    push ax                          ; 0x46cf
    mov ax, 0                        ; 0x46d0
    push ax                          ; 0x46d3
    push ax                          ; 0x46d4
    push ax                          ; 0x46d5
    mov ax, 4                        ; 0x46d6
    push ax                          ; 0x46d9
    mov ax, 2                        ; 0x46da
    push ax                          ; 0x46dd
    mov ax, 4                        ; 0x46de
    push ax                          ; 0x46e1
    mov ax, 2                        ; 0x46e2
    push ax                          ; 0x46e5
    mov ax, 1                        ; 0x46e6
    push ax                          ; 0x46e9
    mov ax, 0                        ; 0x46ea
    push ax                          ; 0x46ed
    mov ax, 2                        ; 0x46ee
    push ax                          ; 0x46f1
    push word [data_9b0a]            ; 0x46f2
    push word [data_91aa]            ; 0x46f6
    call api_idx_0010                ; 0x46fa
    add sp, byte 0x4a                ; 0x46fd
    mov ax, 0xffff                   ; 0x4700
    push ax                          ; 0x4703
    push ax                          ; 0x4704
    mov ax, 0xae                     ; 0x4705
    push ax                          ; 0x4708
    push ax                          ; 0x4709
    mov ax, 0                        ; 0x470a
    push ax                          ; 0x470d
    push ax                          ; 0x470e
    push ax                          ; 0x470f
    push ax                          ; 0x4710
    push ax                          ; 0x4711
    push ax                          ; 0x4712
    mov ax, 0xc                      ; 0x4713
    push ax                          ; 0x4716
    mov ax, 8                        ; 0x4717
    push ax                          ; 0x471a
    mov ax, 0x14                     ; 0x471b
    push ax                          ; 0x471e
    mov ax, 0x10                     ; 0x471f
    push ax                          ; 0x4722
    mov ax, 0                        ; 0x4723
    push ax                          ; 0x4726
    push ax                          ; 0x4727
    mov ax, 4                        ; 0x4728
    push ax                          ; 0x472b
    push ax                          ; 0x472c
    mov ax, 0x25                     ; 0x472d
    push ax                          ; 0x4730
    push ax                          ; 0x4731
    mov ax, 0                        ; 0x4732
    push ax                          ; 0x4735
    push ax                          ; 0x4736
    mov ax, 6                        ; 0x4737
    push ax                          ; 0x473a
    mov ax, 5                        ; 0x473b
    push ax                          ; 0x473e
    mov ax, 4                        ; 0x473f
    push ax                          ; 0x4742
    mov ax, 2                        ; 0x4743
    push ax                          ; 0x4746
    mov ax, 4                        ; 0x4747
    push ax                          ; 0x474a
    mov ax, 2                        ; 0x474b
    push ax                          ; 0x474e
    mov ax, 1                        ; 0x474f
    push ax                          ; 0x4752
    mov ax, 0                        ; 0x4753
    push ax                          ; 0x4756
    mov ax, 2                        ; 0x4757
    push ax                          ; 0x475a
    push word [data_91aa]            ; 0x475b
    call api_idx_0012_3              ; 0x475f
    add sp, byte 0x40                ; 0x4762
    mov ax, 0x39                     ; 0x4765
    push ax                          ; 0x4768
    mov ax, 0x34                     ; 0x4769
    push ax                          ; 0x476c
    mov ax, 0x1b                     ; 0x476d
    push ax                          ; 0x4770
    mov ax, 0x16                     ; 0x4771
    push ax                          ; 0x4774
    mov ax, 0x9e                     ; 0x4775
    push ax                          ; 0x4778
    mov ax, 0x99                     ; 0x4779
    push ax                          ; 0x477c
    mov ax, 0x80                     ; 0x477d
    push ax                          ; 0x4780
    mov ax, 0x7b                     ; 0x4781
    push ax                          ; 0x4784
    mov ax, 0x6d                     ; 0x4785
    push ax                          ; 0x4788
    mov ax, 0x69                     ; 0x4789
    push ax                          ; 0x478c
    mov ax, 0x5a                     ; 0x478d
    push ax                          ; 0x4790
    mov ax, 0x55                     ; 0x4791
    push ax                          ; 0x4794
    mov ax, 0x1c                     ; 0x4795
    push ax                          ; 0x4798
    mov ax, 0x17                     ; 0x4799
    push ax                          ; 0x479c
    mov ax, 0xaa                     ; 0x479d
    push ax                          ; 0x47a0
    mov ax, 0x62                     ; 0x47a1
    push ax                          ; 0x47a4
    mov ax, 0x5e                     ; 0x47a5
    push ax                          ; 0x47a8
    mov ax, 0x52                     ; 0x47a9
    push ax                          ; 0x47ac
    mov ax, 0x4e                     ; 0x47ad
    push ax                          ; 0x47b0
    mov ax, 0x19                     ; 0x47b1
    push ax                          ; 0x47b4
    mov ax, 0x15                     ; 0x47b5
    push ax                          ; 0x47b8
    mov ax, 0x13                     ; 0x47b9
    push ax                          ; 0x47bc
    mov ax, 0xf                      ; 0x47bd
    push ax                          ; 0x47c0
    mov ax, 4                        ; 0x47c1
    push ax                          ; 0x47c4
    mov ax, 2                        ; 0x47c5
    push ax                          ; 0x47c8
    mov ax, 4                        ; 0x47c9
    push ax                          ; 0x47cc
    mov ax, 2                        ; 0x47cd
    push ax                          ; 0x47d0
    mov ax, 1                        ; 0x47d1
    push ax                          ; 0x47d4
    mov ax, 0                        ; 0x47d5
    push ax                          ; 0x47d8
    mov ax, 1                        ; 0x47d9
    push ax                          ; 0x47dc
    push word [data_9b0c]            ; 0x47dd
    push word [data_91aa]            ; 0x47e1
    call api_idx_0012_2              ; 0x47e5
    add sp, byte 0x40                ; 0x47e8
    mov ax, 0x34                     ; 0x47eb
    push ax                          ; 0x47ee
    mov ax, 0x39                     ; 0x47ef
    push ax                          ; 0x47f2
    mov ax, 0x16                     ; 0x47f3
    push ax                          ; 0x47f6
    mov ax, 0x1b                     ; 0x47f7
    push ax                          ; 0x47fa
    mov ax, 0x99                     ; 0x47fb
    push ax                          ; 0x47fe
    mov ax, 0x9e                     ; 0x47ff
    push ax                          ; 0x4802
    mov ax, 0xffff                   ; 0x4803
    push ax                          ; 0x4806
    push ax                          ; 0x4807
    mov ax, 0x69                     ; 0x4808
    push ax                          ; 0x480b
    mov ax, 0x6d                     ; 0x480c
    push ax                          ; 0x480f
    mov ax, 0x55                     ; 0x4810
    push ax                          ; 0x4813
    mov ax, 0x5a                     ; 0x4814
    push ax                          ; 0x4817
    mov ax, 0x17                     ; 0x4818
    push ax                          ; 0x481b
    mov ax, 0x1c                     ; 0x481c
    push ax                          ; 0x481f
    mov ax, 0xaf                     ; 0x4820
    push ax                          ; 0x4823
    mov ax, 0x5e                     ; 0x4824
    push ax                          ; 0x4827
    mov ax, 0x62                     ; 0x4828
    push ax                          ; 0x482b
    mov ax, 0x4e                     ; 0x482c
    push ax                          ; 0x482f
    mov ax, 0x52                     ; 0x4830
    push ax                          ; 0x4833
    mov ax, 0x15                     ; 0x4834
    push ax                          ; 0x4837
    mov ax, 0x19                     ; 0x4838
    push ax                          ; 0x483b
    mov ax, 0xf                      ; 0x483c
    push ax                          ; 0x483f
    mov ax, 0x13                     ; 0x4840
    push ax                          ; 0x4843
    mov ax, 4                        ; 0x4844
    push ax                          ; 0x4847
    mov ax, 2                        ; 0x4848
    push ax                          ; 0x484b
    mov ax, 4                        ; 0x484c
    push ax                          ; 0x484f
    mov ax, 2                        ; 0x4850
    push ax                          ; 0x4853
    mov ax, 1                        ; 0x4854
    push ax                          ; 0x4857
    mov ax, 0                        ; 0x4858
    push ax                          ; 0x485b
    mov ax, 3                        ; 0x485c
    push ax                          ; 0x485f
    push word [data_9b0e]            ; 0x4860
    push word [data_91aa]            ; 0x4864
    call api_idx_0012_2              ; 0x4868
    add sp, byte 0x40                ; 0x486b
    mov ax, 0x43                     ; 0x486e
    push ax                          ; 0x4871
    mov ax, 0x3e                     ; 0x4872
    push ax                          ; 0x4875
    mov ax, 0x25                     ; 0x4876
    push ax                          ; 0x4879
    mov ax, 0x20                     ; 0x487a
    push ax                          ; 0x487d
    mov ax, 0xa8                     ; 0x487e
    push ax                          ; 0x4881
    mov ax, 0xa3                     ; 0x4882
    push ax                          ; 0x4885
    mov ax, 0xffff                   ; 0x4886
    push ax                          ; 0x4889
    push ax                          ; 0x488a
    mov ax, 0x76                     ; 0x488b
    push ax                          ; 0x488e
    mov ax, 0x71                     ; 0x488f
    push ax                          ; 0x4892
    mov ax, 0x64                     ; 0x4893
    push ax                          ; 0x4896
    mov ax, 0x5f                     ; 0x4897
    push ax                          ; 0x489a
    mov ax, 0x26                     ; 0x489b
    push ax                          ; 0x489e
    mov ax, 0x21                     ; 0x489f
    push ax                          ; 0x48a2
    mov ax, 0xffff                   ; 0x48a3
    push ax                          ; 0x48a6
    mov ax, 0x6a                     ; 0x48a7
    push ax                          ; 0x48aa
    mov ax, 0x66                     ; 0x48ab
    push ax                          ; 0x48ae
    mov ax, 0x5a                     ; 0x48af
    push ax                          ; 0x48b2
    mov ax, 0x56                     ; 0x48b3
    push ax                          ; 0x48b6
    mov ax, 0x21                     ; 0x48b7
    push ax                          ; 0x48ba
    mov ax, 0x1d                     ; 0x48bb
    push ax                          ; 0x48be
    mov ax, 0x1b                     ; 0x48bf
    push ax                          ; 0x48c2
    mov ax, 0x17                     ; 0x48c3
    push ax                          ; 0x48c6
    mov ax, 4                        ; 0x48c7
    push ax                          ; 0x48ca
    mov ax, 2                        ; 0x48cb
    push ax                          ; 0x48ce
    mov ax, 4                        ; 0x48cf
    push ax                          ; 0x48d2
    mov ax, 2                        ; 0x48d3
    push ax                          ; 0x48d6
    mov ax, 1                        ; 0x48d7
    push ax                          ; 0x48da
    mov ax, 0                        ; 0x48db
    push ax                          ; 0x48de
    push ax                          ; 0x48df
    push word [data_9b18]            ; 0x48e0
    push word [data_91aa]            ; 0x48e4
    call api_idx_0012_2              ; 0x48e8
    add sp, byte 0x40                ; 0x48eb
    mov ax, 0x3e                     ; 0x48ee
    push ax                          ; 0x48f1
    mov ax, 0x43                     ; 0x48f2
    push ax                          ; 0x48f5
    mov ax, 0x20                     ; 0x48f6
    push ax                          ; 0x48f9
    mov ax, 0x25                     ; 0x48fa
    push ax                          ; 0x48fd
    mov ax, 0xa3                     ; 0x48fe
    push ax                          ; 0x4901
    mov ax, 0xa8                     ; 0x4902
    push ax                          ; 0x4905
    mov ax, 0xffff                   ; 0x4906
    push ax                          ; 0x4909
    push ax                          ; 0x490a
    mov ax, 0x71                     ; 0x490b
    push ax                          ; 0x490e
    mov ax, 0x76                     ; 0x490f
    push ax                          ; 0x4912
    mov ax, 0x5f                     ; 0x4913
    push ax                          ; 0x4916
    mov ax, 0x64                     ; 0x4917
    push ax                          ; 0x491a
    mov ax, 0x21                     ; 0x491b
    push ax                          ; 0x491e
    mov ax, 0x26                     ; 0x491f
    push ax                          ; 0x4922
    mov ax, 0xffff                   ; 0x4923
    push ax                          ; 0x4926
    mov ax, 0x66                     ; 0x4927
    push ax                          ; 0x492a
    mov ax, 0x6a                     ; 0x492b
    push ax                          ; 0x492e
    mov ax, 0x56                     ; 0x492f
    push ax                          ; 0x4932
    mov ax, 0x5a                     ; 0x4933
    push ax                          ; 0x4936
    mov ax, 0x1d                     ; 0x4937
    push ax                          ; 0x493a
    mov ax, 0x21                     ; 0x493b
    push ax                          ; 0x493e
    mov ax, 0x17                     ; 0x493f
    push ax                          ; 0x4942
    mov ax, 0x1b                     ; 0x4943
    push ax                          ; 0x4946
    mov ax, 4                        ; 0x4947
    push ax                          ; 0x494a
    mov ax, 2                        ; 0x494b
    push ax                          ; 0x494e
    mov ax, 4                        ; 0x494f
    push ax                          ; 0x4952
    mov ax, 2                        ; 0x4953
    push ax                          ; 0x4956
    mov ax, 1                        ; 0x4957
    push ax                          ; 0x495a
    mov ax, 0                        ; 0x495b
    push ax                          ; 0x495e
    mov ax, 4                        ; 0x495f
    push ax                          ; 0x4962
    push word [data_9b1a]            ; 0x4963
    push word [data_91aa]            ; 0x4967
    call api_idx_0012_2              ; 0x496b
    add sp, byte 0x40                ; 0x496e
    mov ax, word [data_91a4]         ; 0x4971
    inc ax                           ; 0x4974
    mov cx, 2                        ; 0x4975
    cwd                              ; 0x4978
    idiv cx                          ; 0x4979
    mov word [data_9aec], dx         ; 0x497b
    mov ax, 0x22                     ; 0x497f
    push ax                          ; 0x4982
    push ax                          ; 0x4983
    mov ax, 4                        ; 0x4984
    push ax                          ; 0x4987
    push ax                          ; 0x4988
    mov ax, 0x91                     ; 0x4989
    push ax                          ; 0x498c
    mov ax, 0x89                     ; 0x498d
    push ax                          ; 0x4990
    mov ax, 0x29                     ; 0x4991
    push ax                          ; 0x4994
    mov ax, 0x2d                     ; 0x4995
    push ax                          ; 0x4998
    push ax                          ; 0x4999
    mov ax, 0x29                     ; 0x499a
    push ax                          ; 0x499d
    mov ax, 0x25                     ; 0x499e
    push ax                          ; 0x49a1
    push ax                          ; 0x49a2
    mov ax, 5                        ; 0x49a3
    push ax                          ; 0x49a6
    push ax                          ; 0x49a7
    mov ax, 0x92                     ; 0x49a8
    push ax                          ; 0x49ab
    push ax                          ; 0x49ac
    mov ax, 0x74                     ; 0x49ad
    push ax                          ; 0x49b0
    push ax                          ; 0x49b1
    mov ax, 0x2d                     ; 0x49b2
    push ax                          ; 0x49b5
    mov ax, 0x30                     ; 0x49b6
    push ax                          ; 0x49b9
    push ax                          ; 0x49ba
    mov ax, 0x2d                     ; 0x49bb
    push ax                          ; 0x49be
    mov ax, 0x2a                     ; 0x49bf
    push ax                          ; 0x49c2
    push ax                          ; 0x49c3
    mov ax, 0x43                     ; 0x49c4
    push ax                          ; 0x49c7
    mov ax, 5                        ; 0x49c8
    push ax                          ; 0x49cb
    mov ax, 3                        ; 0x49cc
    push ax                          ; 0x49cf
    push ax                          ; 0x49d0
    mov ax, 4                        ; 0x49d1
    push ax                          ; 0x49d4
    push cx                          ; 0x49d5
    push ax                          ; 0x49d6
    push cx                          ; 0x49d7
    mov ax, 1                        ; 0x49d8
    push ax                          ; 0x49db
    mov ax, 0                        ; 0x49dc
    push ax                          ; 0x49df
    mov ax, 1                        ; 0x49e0
    push ax                          ; 0x49e3
    push word [data_9b10]            ; 0x49e4
    push word [data_91aa]            ; 0x49e8
    call api_idx_0010                ; 0x49ec
    add sp, byte 0x4a                ; 0x49ef
    mov ax, 0xc9                     ; 0x49f2
    push ax                          ; 0x49f5
    mov ax, 0xc4                     ; 0x49f6
    push ax                          ; 0x49f9
    mov ax, 0xb2                     ; 0x49fa
    push ax                          ; 0x49fd
    push ax                          ; 0x49fe
    mov ax, 0xf                      ; 0x49ff
    push ax                          ; 0x4a02
    mov ax, 5                        ; 0x4a03
    push ax                          ; 0x4a06
    mov ax, 0xf                      ; 0x4a07
    push ax                          ; 0x4a0a
    mov ax, 5                        ; 0x4a0b
    push ax                          ; 0x4a0e
    mov ax, 0xf                      ; 0x4a0f
    push ax                          ; 0x4a12
    mov ax, 5                        ; 0x4a13
    push ax                          ; 0x4a16
    mov ax, 0xc                      ; 0x4a17
    push ax                          ; 0x4a1a
    mov ax, 8                        ; 0x4a1b
    push ax                          ; 0x4a1e
    mov ax, 0x14                     ; 0x4a1f
    push ax                          ; 0x4a22
    mov ax, 0x10                     ; 0x4a23
    push ax                          ; 0x4a26
    mov ax, 0                        ; 0x4a27
    push ax                          ; 0x4a2a
    push ax                          ; 0x4a2b
    mov ax, 4                        ; 0x4a2c
    push ax                          ; 0x4a2f
    push ax                          ; 0x4a30
    mov ax, 0x34                     ; 0x4a31
    push ax                          ; 0x4a34
    mov ax, 0x2a                     ; 0x4a35
    push ax                          ; 0x4a38
    mov ax, 0xf                      ; 0x4a39
    push ax                          ; 0x4a3c
    mov ax, 5                        ; 0x4a3d
    push ax                          ; 0x4a40
    mov ax, 6                        ; 0x4a41
    push ax                          ; 0x4a44
    mov ax, 5                        ; 0x4a45
    push ax                          ; 0x4a48
    mov ax, 4                        ; 0x4a49
    push ax                          ; 0x4a4c
    mov ax, 2                        ; 0x4a4d
    push ax                          ; 0x4a50
    mov ax, 4                        ; 0x4a51
    push ax                          ; 0x4a54
    mov ax, 2                        ; 0x4a55
    push ax                          ; 0x4a58
    mov ax, 1                        ; 0x4a59
    push ax                          ; 0x4a5c
    mov ax, 0                        ; 0x4a5d
    push ax                          ; 0x4a60
    mov ax, 1                        ; 0x4a61
    push ax                          ; 0x4a64
    push word [data_91aa]            ; 0x4a65
    call api_idx_0012_3              ; 0x4a69
    add sp, byte 0x40                ; 0x4a6c
    mov ax, word [data_91a4]         ; 0x4a6f
    mov word [data_9aec], ax         ; 0x4a72
    mov ax, 0x26                     ; 0x4a75
    push ax                          ; 0x4a78
    push ax                          ; 0x4a79
    mov ax, 8                        ; 0x4a7a
    push ax                          ; 0x4a7d
    push ax                          ; 0x4a7e
    mov ax, 0x95                     ; 0x4a7f
    push ax                          ; 0x4a82
    mov ax, 0x8d                     ; 0x4a83
    push ax                          ; 0x4a86
    mov ax, 0x35                     ; 0x4a87
    push ax                          ; 0x4a8a
    mov ax, 0x39                     ; 0x4a8b
    push ax                          ; 0x4a8e
    push ax                          ; 0x4a8f
    mov ax, 0x35                     ; 0x4a90
    push ax                          ; 0x4a93
    mov ax, 0x31                     ; 0x4a94
    push ax                          ; 0x4a97
    push ax                          ; 0x4a98
    mov ax, 9                        ; 0x4a99
    push ax                          ; 0x4a9c
    push ax                          ; 0x4a9d
    mov ax, 0x98                     ; 0x4a9e
    push ax                          ; 0x4aa1
    push ax                          ; 0x4aa2
    mov ax, 0x7a                     ; 0x4aa3
    push ax                          ; 0x4aa6
    push ax                          ; 0x4aa7
    mov ax, 0x36                     ; 0x4aa8
    push ax                          ; 0x4aab
    mov ax, 0x39                     ; 0x4aac
    push ax                          ; 0x4aaf
    push ax                          ; 0x4ab0
    mov ax, 0x36                     ; 0x4ab1
    push ax                          ; 0x4ab4
    mov ax, 0x33                     ; 0x4ab5
    push ax                          ; 0x4ab8
    push ax                          ; 0x4ab9
    mov ax, 0x47                     ; 0x4aba
    push ax                          ; 0x4abd
    mov ax, 9                        ; 0x4abe
    push ax                          ; 0x4ac1
    mov ax, 6                        ; 0x4ac2
    push ax                          ; 0x4ac5
    push ax                          ; 0x4ac6
    mov ax, 4                        ; 0x4ac7
    push ax                          ; 0x4aca
    mov ax, 2                        ; 0x4acb
    push ax                          ; 0x4ace
    mov ax, 4                        ; 0x4acf
    push ax                          ; 0x4ad2
    mov ax, 2                        ; 0x4ad3
    push ax                          ; 0x4ad6
    mov ax, 1                        ; 0x4ad7
    push ax                          ; 0x4ada
    mov ax, 0                        ; 0x4adb
    push ax                          ; 0x4ade
    push ax                          ; 0x4adf
    push word [data_9b14]            ; 0x4ae0
    push word [data_91aa]            ; 0x4ae4
    call api_idx_0010                ; 0x4ae8
    add sp, byte 0x4a                ; 0x4aeb
    mov ax, 0xd3                     ; 0x4aee
    push ax                          ; 0x4af1
    mov ax, 0xce                     ; 0x4af2
    push ax                          ; 0x4af5
    mov ax, 0xb6                     ; 0x4af6
    push ax                          ; 0x4af9
    push ax                          ; 0x4afa
    mov ax, 0x14                     ; 0x4afb
    push ax                          ; 0x4afe
    mov ax, 0xa                      ; 0x4aff
    push ax                          ; 0x4b02
    mov ax, 0x14                     ; 0x4b03
    push ax                          ; 0x4b06
    mov ax, 0xa                      ; 0x4b07
    push ax                          ; 0x4b0a
    mov ax, 0x14                     ; 0x4b0b
    push ax                          ; 0x4b0e
    mov ax, 0xa                      ; 0x4b0f
    push ax                          ; 0x4b12
    mov ax, 0xc                      ; 0x4b13
    push ax                          ; 0x4b16
    mov ax, 8                        ; 0x4b17
    push ax                          ; 0x4b1a
    mov ax, 0x14                     ; 0x4b1b
    push ax                          ; 0x4b1e
    mov ax, 0x10                     ; 0x4b1f
    push ax                          ; 0x4b22
    mov ax, 0                        ; 0x4b23
    push ax                          ; 0x4b26
    push ax                          ; 0x4b27
    mov ax, 4                        ; 0x4b28
    push ax                          ; 0x4b2b
    push ax                          ; 0x4b2c
    mov ax, 0x39                     ; 0x4b2d
    push ax                          ; 0x4b30
    mov ax, 0x2f                     ; 0x4b31
    push ax                          ; 0x4b34
    mov ax, 0x14                     ; 0x4b35
    push ax                          ; 0x4b38
    mov ax, 0xa                      ; 0x4b39
    push ax                          ; 0x4b3c
    mov ax, 6                        ; 0x4b3d
    push ax                          ; 0x4b40
    mov ax, 5                        ; 0x4b41
    push ax                          ; 0x4b44
    mov ax, 4                        ; 0x4b45
    push ax                          ; 0x4b48
    mov ax, 2                        ; 0x4b49
    push ax                          ; 0x4b4c
    mov ax, 4                        ; 0x4b4d
    push ax                          ; 0x4b50
    mov ax, 2                        ; 0x4b51
    push ax                          ; 0x4b54
    mov ax, 1                        ; 0x4b55
    push ax                          ; 0x4b58
    mov ax, 0                        ; 0x4b59
    push ax                          ; 0x4b5c
    push ax                          ; 0x4b5d
    push word [data_91aa]            ; 0x4b5e
    call api_idx_0012_3              ; 0x4b62
    add sp, byte 0x40                ; 0x4b65
    mov ax, word [data_91a4]         ; 0x4b68
    inc ax                           ; 0x4b6b
    mov cx, 2                        ; 0x4b6c
    cwd                              ; 0x4b6f
    idiv cx                          ; 0x4b70
    mov word [data_9aec], dx         ; 0x4b72
    mov ax, 0x2a                     ; 0x4b76
    push ax                          ; 0x4b79
    push ax                          ; 0x4b7a
    mov ax, 0xc                      ; 0x4b7b
    push ax                          ; 0x4b7e
    push ax                          ; 0x4b7f
    mov ax, 0x89                     ; 0x4b80
    push ax                          ; 0x4b83
    mov ax, 0x91                     ; 0x4b84
    push ax                          ; 0x4b87
    mov ax, 0x41                     ; 0x4b88
    push ax                          ; 0x4b8b
    mov ax, 0x45                     ; 0x4b8c
    push ax                          ; 0x4b8f
    push ax                          ; 0x4b90
    mov ax, 0x41                     ; 0x4b91
    push ax                          ; 0x4b94
    mov ax, 0x3d                     ; 0x4b95
    push ax                          ; 0x4b98
    push ax                          ; 0x4b99
    mov ax, 0xd                      ; 0x4b9a
    push ax                          ; 0x4b9d
    push ax                          ; 0x4b9e
    mov ax, 0x9e                     ; 0x4b9f
    push ax                          ; 0x4ba2
    push ax                          ; 0x4ba3
    mov ax, 0x80                     ; 0x4ba4
    push ax                          ; 0x4ba7
    push ax                          ; 0x4ba8
    mov ax, 0x3f                     ; 0x4ba9
    push ax                          ; 0x4bac
    mov ax, 0x42                     ; 0x4bad
    push ax                          ; 0x4bb0
    push ax                          ; 0x4bb1
    mov ax, 0x3f                     ; 0x4bb2
    push ax                          ; 0x4bb5
    mov ax, 0x3c                     ; 0x4bb6
    push ax                          ; 0x4bb9
    push ax                          ; 0x4bba
    mov ax, 0x4b                     ; 0x4bbb
    push ax                          ; 0x4bbe
    mov ax, 0xd                      ; 0x4bbf
    push ax                          ; 0x4bc2
    mov ax, 9                        ; 0x4bc3
    push ax                          ; 0x4bc6
    push ax                          ; 0x4bc7
    mov ax, 4                        ; 0x4bc8
    push ax                          ; 0x4bcb
    push cx                          ; 0x4bcc
    push ax                          ; 0x4bcd
    push cx                          ; 0x4bce
    mov ax, 1                        ; 0x4bcf
    push ax                          ; 0x4bd2
    mov ax, 0                        ; 0x4bd3
    push ax                          ; 0x4bd6
    mov ax, 3                        ; 0x4bd7
    push ax                          ; 0x4bda
    push word [data_9b12]            ; 0x4bdb
    push word [data_91aa]            ; 0x4bdf
    call api_idx_0010                ; 0x4be3
    add sp, byte 0x4a                ; 0x4be6
    mov ax, 0xc4                     ; 0x4be9
    push ax                          ; 0x4bec
    mov ax, 0xc9                     ; 0x4bed
    push ax                          ; 0x4bf0
    mov ax, 0xba                     ; 0x4bf1
    push ax                          ; 0x4bf4
    push ax                          ; 0x4bf5
    mov ax, 5                        ; 0x4bf6
    push ax                          ; 0x4bf9
    mov ax, 0xf                      ; 0x4bfa
    push ax                          ; 0x4bfd
    mov ax, 5                        ; 0x4bfe
    push ax                          ; 0x4c01
    mov ax, 0xf                      ; 0x4c02
    push ax                          ; 0x4c05
    mov ax, 5                        ; 0x4c06
    push ax                          ; 0x4c09
    mov ax, 0xf                      ; 0x4c0a
    push ax                          ; 0x4c0d
    mov ax, 0xc                      ; 0x4c0e
    push ax                          ; 0x4c11
    mov ax, 8                        ; 0x4c12
    push ax                          ; 0x4c15
    mov ax, 0x14                     ; 0x4c16
    push ax                          ; 0x4c19
    mov ax, 0x10                     ; 0x4c1a
    push ax                          ; 0x4c1d
    mov ax, 0                        ; 0x4c1e
    push ax                          ; 0x4c21
    push ax                          ; 0x4c22
    mov ax, 4                        ; 0x4c23
    push ax                          ; 0x4c26
    push ax                          ; 0x4c27
    mov ax, 0x2a                     ; 0x4c28
    push ax                          ; 0x4c2b
    mov ax, 0x34                     ; 0x4c2c
    push ax                          ; 0x4c2f
    mov ax, 5                        ; 0x4c30
    push ax                          ; 0x4c33
    mov ax, 0xf                      ; 0x4c34
    push ax                          ; 0x4c37
    mov ax, 6                        ; 0x4c38
    push ax                          ; 0x4c3b
    mov ax, 5                        ; 0x4c3c
    push ax                          ; 0x4c3f
    mov ax, 4                        ; 0x4c40
    push ax                          ; 0x4c43
    mov ax, 2                        ; 0x4c44
    push ax                          ; 0x4c47
    mov ax, 4                        ; 0x4c48
    push ax                          ; 0x4c4b
    mov ax, 2                        ; 0x4c4c
    push ax                          ; 0x4c4f
    mov ax, 1                        ; 0x4c50
    push ax                          ; 0x4c53
    mov ax, 0                        ; 0x4c54
    push ax                          ; 0x4c57
    mov ax, 3                        ; 0x4c58
    push ax                          ; 0x4c5b
    push word [data_91aa]            ; 0x4c5c
    call api_idx_0012_3              ; 0x4c60
    add sp, byte 0x40                ; 0x4c63
    mov ax, word [data_91a4]         ; 0x4c66
    mov word [data_9aec], ax         ; 0x4c69
    mov ax, 0x2e                     ; 0x4c6c
    push ax                          ; 0x4c6f
    push ax                          ; 0x4c70
    mov ax, 0x10                     ; 0x4c71
    push ax                          ; 0x4c74
    push ax                          ; 0x4c75
    mov ax, 0x8d                     ; 0x4c76
    push ax                          ; 0x4c79
    mov ax, 0x95                     ; 0x4c7a
    push ax                          ; 0x4c7d
    mov ax, 0x4d                     ; 0x4c7e
    push ax                          ; 0x4c81
    mov ax, 0x51                     ; 0x4c82
    push ax                          ; 0x4c85
    push ax                          ; 0x4c86
    mov ax, 0x4d                     ; 0x4c87
    push ax                          ; 0x4c8a
    mov ax, 0x49                     ; 0x4c8b
    push ax                          ; 0x4c8e
    push ax                          ; 0x4c8f
    mov ax, 0x11                     ; 0x4c90
    push ax                          ; 0x4c93
    push ax                          ; 0x4c94
    mov ax, 0xa4                     ; 0x4c95
    push ax                          ; 0x4c98
    push ax                          ; 0x4c99
    mov ax, 0x86                     ; 0x4c9a
    push ax                          ; 0x4c9d
    push ax                          ; 0x4c9e
    mov ax, 0x48                     ; 0x4c9f
    push ax                          ; 0x4ca2
    mov ax, 0x4b                     ; 0x4ca3
    push ax                          ; 0x4ca6
    push ax                          ; 0x4ca7
    mov ax, 0x48                     ; 0x4ca8
    push ax                          ; 0x4cab
    mov ax, 0x45                     ; 0x4cac
    push ax                          ; 0x4caf
    push ax                          ; 0x4cb0
    mov ax, 0x4f                     ; 0x4cb1
    push ax                          ; 0x4cb4
    mov ax, 0x11                     ; 0x4cb5
    push ax                          ; 0x4cb8
    mov ax, 0xc                      ; 0x4cb9
    push ax                          ; 0x4cbc
    push ax                          ; 0x4cbd
    mov ax, 4                        ; 0x4cbe
    push ax                          ; 0x4cc1
    mov ax, 2                        ; 0x4cc2
    push ax                          ; 0x4cc5
    mov ax, 4                        ; 0x4cc6
    push ax                          ; 0x4cc9
    mov ax, 2                        ; 0x4cca
    push ax                          ; 0x4ccd
    mov ax, 1                        ; 0x4cce
    push ax                          ; 0x4cd1
    mov ax, 0                        ; 0x4cd2
    push ax                          ; 0x4cd5
    mov ax, 4                        ; 0x4cd6
    push ax                          ; 0x4cd9
    push word [data_9b16]            ; 0x4cda
    push word [data_91aa]            ; 0x4cde
    call api_idx_0010                ; 0x4ce2
    add sp, byte 0x4a                ; 0x4ce5
    mov ax, 0xce                     ; 0x4ce8
    push ax                          ; 0x4ceb
    mov ax, 0xd3                     ; 0x4cec
    push ax                          ; 0x4cef
    mov ax, 0xbe                     ; 0x4cf0
    push ax                          ; 0x4cf3
    push ax                          ; 0x4cf4
    mov ax, 0xa                      ; 0x4cf5
    push ax                          ; 0x4cf8
    mov ax, 0x14                     ; 0x4cf9
    push ax                          ; 0x4cfc
    mov ax, 0xa                      ; 0x4cfd
    push ax                          ; 0x4d00
    mov ax, 0x14                     ; 0x4d01
    push ax                          ; 0x4d04
    mov ax, 0xa                      ; 0x4d05
    push ax                          ; 0x4d08
    mov ax, 0x14                     ; 0x4d09
    push ax                          ; 0x4d0c
    mov ax, 0xc                      ; 0x4d0d
    push ax                          ; 0x4d10
    mov ax, 8                        ; 0x4d11
    push ax                          ; 0x4d14
    mov ax, 0x14                     ; 0x4d15
    push ax                          ; 0x4d18
    mov ax, 0x10                     ; 0x4d19
    push ax                          ; 0x4d1c
    mov ax, 0                        ; 0x4d1d
    push ax                          ; 0x4d20
    push ax                          ; 0x4d21
    mov ax, 4                        ; 0x4d22
    push ax                          ; 0x4d25
    push ax                          ; 0x4d26
    mov ax, 0x2f                     ; 0x4d27
    push ax                          ; 0x4d2a
    mov ax, 0x39                     ; 0x4d2b
    push ax                          ; 0x4d2e
    mov ax, 0xa                      ; 0x4d2f
    push ax                          ; 0x4d32
    mov ax, 0x14                     ; 0x4d33
    push ax                          ; 0x4d36
    mov ax, 6                        ; 0x4d37
    push ax                          ; 0x4d3a
    mov ax, 5                        ; 0x4d3b
    push ax                          ; 0x4d3e
    mov ax, 4                        ; 0x4d3f
    push ax                          ; 0x4d42
    mov ax, 2                        ; 0x4d43
    push ax                          ; 0x4d46
    mov ax, 4                        ; 0x4d47
    push ax                          ; 0x4d4a
    mov ax, 2                        ; 0x4d4b
    push ax                          ; 0x4d4e
    mov ax, 1                        ; 0x4d4f
    push ax                          ; 0x4d52
    mov ax, 0                        ; 0x4d53
    push ax                          ; 0x4d56
    mov ax, 4                        ; 0x4d57
    push ax                          ; 0x4d5a
    push word [data_91aa]            ; 0x4d5b
    call api_idx_0012_3              ; 0x4d5f
    add sp, byte 0x40                ; 0x4d62
    inc word [data_91aa]             ; 0x4d65
    jmp near loc_4492                ; 0x4d69
loc_4d6c:
    mov ax, word [data_9b08]         ; 0x4d6c
    dec ax                           ; 0x4d6f
    mov word [data_91aa], ax         ; 0x4d70
    jmp near loc_51ed                ; 0x4d73
loc_4d76:
    mov word [bp - 0x0004], 0xff     ; 0x4d76
loc_4d7b:
    mov ax, word [data_92f2]         ; 0x4d7b
    dec ax                           ; 0x4d7e
    mov word [bp - 0x0002], ax       ; 0x4d7f
    jmp short loc_4de7               ; 0x4d82
loc_4d84:
    mov ax, 0x11                     ; 0x4d84
    imul word [bp - 0x0002]          ; 0x4d87
    add ax, 0x92f4                   ; 0x4d8a
    mov word [bp - 0x0026], ax       ; 0x4d8d
    mov bx, ax                       ; 0x4d90
    mov al, byte [bx + 0xd]          ; 0x4d92
    sub ah, ah                       ; 0x4d95
    cmp ax, word [data_91aa]         ; 0x4d97
    jne short loc_4de4               ; 0x4d9b
    mov al, byte [bx + 0xc]          ; 0x4d9d
    sub ah, ah                       ; 0x4da0
    cmp ax, word [bp - 0x0004]       ; 0x4da2
    jne short loc_4de4               ; 0x4da5
    cmp word [bx], byte 0xff         ; 0x4da7
    je short loc_4dc3                ; 0x4daa
    push word [bx + 0x4]             ; 0x4dac
    mov al, byte [bx + 0x8]          ; 0x4daf
    sub ah, ah                       ; 0x4db2
    push ax                          ; 0x4db4
    push word [bx]                   ; 0x4db5
    mov al, byte [bx + 0xe]          ; 0x4db7
    sub ah, ah                       ; 0x4dba
    push ax                          ; 0x4dbc
    db 0xe8, 0x5f, 0xa2 ; call 0xf01f
    add sp, byte 8                   ; 0x4dc0
loc_4dc3:
    mov bx, word [bp - 0x0026]       ; 0x4dc3
    cmp word [bx + 0x2], byte 0xff   ; 0x4dc6
    je short loc_4de4                ; 0x4dca
    push word [bx + 0x6]             ; 0x4dcc
    mov al, byte [bx + 0x9]          ; 0x4dcf
    sub ah, ah                       ; 0x4dd2
    push ax                          ; 0x4dd4
    push word [bx + 0x2]             ; 0x4dd5
    mov al, byte [bx + 0xe]          ; 0x4dd8
    sub ah, ah                       ; 0x4ddb
    push ax                          ; 0x4ddd
    db 0xe8, 0x3e, 0xa2 ; call 0xf01f
    add sp, byte 8                   ; 0x4de1
loc_4de4:
    dec word [bp - 0x0002]           ; 0x4de4
loc_4de7:
    cmp word [bp - 0x0002], byte 0   ; 0x4de7
    jge short loc_4d84               ; 0x4deb
    mov ax, 0                        ; 0x4ded
    cmp word [bp - 0x0004], strict word 0xff ; 0x4df0
    je short loc_4e04                ; 0x4df5
    mov ax, 0xffff                   ; 0x4df7
    cmp word [bp - 0x0004], strict word 0xfb ; 0x4dfa
    jne short loc_4e04               ; 0x4dff
    mov ax, 1                        ; 0x4e01
loc_4e04:
    mov word [bp - 0x0018], ax       ; 0x4e04
    cmp ax, strict word 0xffff       ; 0x4e07
    jne short loc_4e0f               ; 0x4e0a
    jmp near loc_4ec5                ; 0x4e0c
loc_4e0f:
    mov ax, word [data_92f2]         ; 0x4e0f
    dec ax                           ; 0x4e12
    mov word [bp - 0x0002], ax       ; 0x4e13
    jmp near loc_4ebc                ; 0x4e16
loc_4e19:
    mov ax, 0x11                     ; 0x4e19
    imul word [bp - 0x0002]          ; 0x4e1c
    add ax, 0x92f4                   ; 0x4e1f
    mov word [bp - 0x0026], ax       ; 0x4e22
    mov bx, ax                       ; 0x4e25
    mov al, byte [bx + 0xd]          ; 0x4e27
    sub ah, ah                       ; 0x4e2a
    cmp ax, word [data_91aa]         ; 0x4e2c
    je short loc_4e35                ; 0x4e30
    jmp near loc_4eb9                ; 0x4e32
loc_4e35:
    mov al, byte [bx + 0xc]          ; 0x4e35
    sub ah, ah                       ; 0x4e38
    cmp ax, 0xfa                     ; 0x4e3a
    jl short loc_4e42                ; 0x4e3d
    jmp near loc_4eb9                ; 0x4e3f
loc_4e42:
    mov al, byte [bx + 0x10]         ; 0x4e42
    sub ah, ah                       ; 0x4e45
    cmp ax, word [bp - 0x0018]       ; 0x4e47
    jne short loc_4eb9               ; 0x4e4a
    cmp byte [bx + 0xc], 4           ; 0x4e4c
    jne short loc_4e5f               ; 0x4e50
    cmp byte [bx + 0x9], 1           ; 0x4e52
    jne short loc_4e5f               ; 0x4e56
    push bx                          ; 0x4e58
    call api_idx_0016                ; 0x4e59
    pop cx                           ; 0x4e5c
    jmp short loc_4eb9               ; 0x4e5d
loc_4e5f:
    mov word [bp - 0x0006], 0        ; 0x4e5f
loc_4e64:
    mov bx, word [bp - 0x0026]       ; 0x4e64
    mov si, word [bp - 0x0006]       ; 0x4e67
    mov al, byte [bx + si + 0x8]     ; 0x4e6a
    mov bx, si                       ; 0x4e6d
    add bx, bp                       ; 0x4e6f
    mov byte [bx - 0x0030], al       ; 0x4e71
    inc word [bp - 0x0006]           ; 0x4e74
    mov ax, word [bp - 0x0006]       ; 0x4e77
    cmp ax, strict word 4            ; 0x4e7a
    jl short loc_4e64                ; 0x4e7d
    mov byte [bp - 0x002c], 0        ; 0x4e7f
    mov bx, word [bp - 0x0026]       ; 0x4e83
    mov al, byte [bx + 0xe]          ; 0x4e86
    sub ah, ah                       ; 0x4e89
    push ax                          ; 0x4e8b
    mov ax, 0                        ; 0x4e8c
    push ax                          ; 0x4e8f
    lea ax, word [bp - 0x0030]       ; 0x4e90
    push ax                          ; 0x4e93
    mov al, byte [bx + 0xf]          ; 0x4e94
    sub ah, ah                       ; 0x4e97
    push ax                          ; 0x4e99
    mov ax, 0x90                     ; 0x4e9a
    push ax                          ; 0x4e9d
    mov ax, 0x20                     ; 0x4e9e
    push ax                          ; 0x4ea1
    push word [bx + 0x6]             ; 0x4ea2
    push word [bx + 0x4]             ; 0x4ea5
    push word [bx + 0x2]             ; 0x4ea8
    push word [bx]                   ; 0x4eab
    mov al, byte [bx + 0xc]          ; 0x4ead
    sub ah, ah                       ; 0x4eb0
    push ax                          ; 0x4eb2
    call ds_dispatch_efd1            ; 0x4eb3
    add sp, byte 0x16                ; 0x4eb6
loc_4eb9:
    dec word [bp - 0x0002]           ; 0x4eb9
loc_4ebc:
    cmp word [bp - 0x0002], byte 0   ; 0x4ebc
    jl short loc_4ec5                ; 0x4ec0
    jmp near loc_4e19                ; 0x4ec2
loc_4ec5:
    dec word [bp - 0x0004]           ; 0x4ec5
    mov ax, word [bp - 0x0004]       ; 0x4ec8
    cmp ax, 0xfb                     ; 0x4ecb
    jl short loc_4ed3                ; 0x4ece
    jmp near loc_4d7b                ; 0x4ed0
loc_4ed3:
    mov al, byte [data_5b55]         ; 0x4ed3
    sub ah, ah                       ; 0x4ed6
    cmp ax, 0xff                     ; 0x4ed8
    jne short loc_4ee0               ; 0x4edb
    jmp near loc_507d                ; 0x4edd
loc_4ee0:
    cmp word [data_91aa], byte 0     ; 0x4ee0
    je short loc_4eea                ; 0x4ee5
    jmp near loc_507d                ; 0x4ee7
loc_4eea:
    cmp word [data_91a8], byte 0     ; 0x4eea
    jne short loc_4efb               ; 0x4eef
    cmp byte [data_91b8], 3          ; 0x4ef1
    jne short loc_4efb               ; 0x4ef6
    jmp near loc_507d                ; 0x4ef8
loc_4efb:
    mov ax, word [data_91a8]         ; 0x4efb
    mov cx, 2                        ; 0x4efe
    cwd                              ; 0x4f01
    idiv cx                          ; 0x4f02
    mov ax, dx                       ; 0x4f04
    test ax, ax                      ; 0x4f06
    jne short loc_4f14               ; 0x4f08
    cmp word [data_8456], byte 1     ; 0x4f0a
    jg short loc_4f14                ; 0x4f0f
    jmp near loc_507d                ; 0x4f11
loc_4f14:
    mov word [bp - 0x0006], 0        ; 0x4f14
loc_4f19:
    mov ax, word [bp - 0x0006]       ; 0x4f19
    shl ax, 1                        ; 0x4f1c
    mov bx, ax                       ; 0x4f1e
    cmp word [bx - 0x6e7e], byte 0   ; 0x4f20
    jg short loc_4f2a                ; 0x4f25
    jmp near loc_4fb7                ; 0x4f27
loc_4f2a:
    mov al, byte [bx - 0x6e7e]       ; 0x4f2a
    mov byte [bp - 0x0030], al       ; 0x4f2e
    mov byte [bp - 0x002f], 0        ; 0x4f31
    mov ax, 0                        ; 0x4f35
    push ax                          ; 0x4f38
    push ax                          ; 0x4f39
    lea ax, word [bp - 0x0030]       ; 0x4f3a
    push ax                          ; 0x4f3d
    push word [bx - 0x6e62]          ; 0x4f3e
    mov ax, 0x90                     ; 0x4f42
    push ax                          ; 0x4f45
    mov ax, 0x20                     ; 0x4f46
    push ax                          ; 0x4f49
    mov ax, 0xf8                     ; 0x4f4a
    push ax                          ; 0x4f4d
    mov ax, 0x48                     ; 0x4f4e
    push ax                          ; 0x4f51
    mov bx, word [bx - 0x6e7e]       ; 0x4f52
    mov al, byte [bx + 0x7c61]       ; 0x4f56
    sub ah, ah                       ; 0x4f5a
    mov cx, word [bp - 0x0006]       ; 0x4f5c
    shl cx, 1                        ; 0x4f5f
    mov bx, cx                       ; 0x4f61
    add ax, word [bx - 0x6e74]       ; 0x4f63
    push ax                          ; 0x4f67
    mov ax, word [bx - 0x6e7e]       ; 0x4f68
    shl ax, 1                        ; 0x4f6c
    add ax, word [bx - 0x6e62]       ; 0x4f6e
    mov bx, ax                       ; 0x4f72
    mov al, byte [bx + 0x7c18]       ; 0x4f74
    sub ah, ah                       ; 0x4f78
    mov bx, cx                       ; 0x4f7a
    add ax, word [bx - 0x6e6e]       ; 0x4f7c
    push ax                          ; 0x4f80
    mov ax, 0xd                      ; 0x4f81
    push ax                          ; 0x4f84
    call ds_dispatch_efd1            ; 0x4f85
    add sp, byte 0x16                ; 0x4f88
    mov ax, word [bp - 0x0006]       ; 0x4f8b
    shl ax, 1                        ; 0x4f8e
    mov bx, ax                       ; 0x4f90
    cmp word [bx - 0x6e68], byte 0   ; 0x4f92
    je short loc_4f9f                ; 0x4f97
    dec word [bx - 0x6e7e]           ; 0x4f99
    jmp short loc_4fa3               ; 0x4f9d
loc_4f9f:
    inc word [bx - 0x6e7e]           ; 0x4f9f
loc_4fa3:
    mov al, byte [data_7d3c]         ; 0x4fa3
    sub ah, ah                       ; 0x4fa6
    cmp ax, word [bx - 0x6e7e]       ; 0x4fa8
    jge short loc_4fb4               ; 0x4fac
    mov word [bx - 0x6e7e], 0        ; 0x4fae
loc_4fb4:
    jmp near loc_506f                ; 0x4fb4
loc_4fb7:
    cmp word [data_8f22], byte 0     ; 0x4fb7
    je short loc_4fc1                ; 0x4fbc
    jmp near loc_506f                ; 0x4fbe
loc_4fc1:
    mov ax, 0x64                     ; 0x4fc1
    push ax                          ; 0x4fc4
    call ds_dispatch_b7a9            ; 0x4fc5
    pop cx                           ; 0x4fc8
    cmp ax, word [bp - 0x0006]       ; 0x4fc9
    jle short loc_4fd1               ; 0x4fcc
    jmp near loc_506f                ; 0x4fce
loc_4fd1:
    mov ax, 2                        ; 0x4fd1
    push ax                          ; 0x4fd4
    call ds_dispatch_b7a9            ; 0x4fd5
    pop cx                           ; 0x4fd8
    mov cx, word [bp - 0x0006]       ; 0x4fd9
    shl cx, 1                        ; 0x4fdc
    mov bx, cx                       ; 0x4fde
    mov word [bx - 0x6e62], ax       ; 0x4fe0
    mov ax, word [data_91a8]         ; 0x4fe4
    mov cx, 2                        ; 0x4fe7
    cwd                              ; 0x4fea
    idiv cx                          ; 0x4feb
    mov ax, dx                       ; 0x4fed
    test ax, ax                      ; 0x4fef
    je short loc_4ffa                ; 0x4ff1
    push cx                          ; 0x4ff3
    call ds_dispatch_b7a9            ; 0x4ff4
    pop cx                           ; 0x4ff7
    jmp short loc_4ffd               ; 0x4ff8
loc_4ffa:
    mov ax, 0                        ; 0x4ffa
loc_4ffd:
    mov cx, word [bp - 0x0006]       ; 0x4ffd
    shl cx, 1                        ; 0x5000
    mov bx, cx                       ; 0x5002
    mov word [bx - 0x6e68], ax       ; 0x5004
    mov ax, 1                        ; 0x5008
    cmp word [bx - 0x6e68], byte 0   ; 0x500b
    je short loc_5017                ; 0x5010
    mov al, byte [data_7d3c]         ; 0x5012
    sub ah, ah                       ; 0x5015
loc_5017:
    mov word [bx - 0x6e7e], ax       ; 0x5017
    mov ax, word [data_91a8]         ; 0x501b
    mov cx, 1                        ; 0x501e
    cwd                              ; 0x5021
    idiv cx                          ; 0x5022
    mov ax, dx                       ; 0x5024
    test ax, ax                      ; 0x5026
    je short loc_502f                ; 0x5028
    mov ax, 0x1e                     ; 0x502a
    jmp short loc_5032               ; 0x502d
loc_502f:
    mov ax, 0xa                      ; 0x502f
loc_5032:
    mov word [bp - 0x0002], ax       ; 0x5032
    cmp word [bx - 0x6e62], byte 0   ; 0x5035
    je short loc_5043                ; 0x503a
    push ax                          ; 0x503c
    call ds_dispatch_b7a9            ; 0x503d
    pop cx                           ; 0x5040
    jmp short loc_5051               ; 0x5041
loc_5043:
    push word [bp - 0x0002]          ; 0x5043
    call ds_dispatch_b7a9            ; 0x5046
    pop cx                           ; 0x5049
    mov cx, ax                       ; 0x504a
    mov ax, 0                        ; 0x504c
    sub ax, cx                       ; 0x504f
loc_5051:
    mov cx, word [bp - 0x0006]       ; 0x5051
    shl cx, 1                        ; 0x5054
    mov bx, cx                       ; 0x5056
    mov word [bx - 0x6e6e], ax       ; 0x5058
    mov ax, 5                        ; 0x505c
    push ax                          ; 0x505f
    call ds_dispatch_b7a9            ; 0x5060
    pop cx                           ; 0x5063
    mov cx, word [bp - 0x0006]       ; 0x5064
    shl cx, 1                        ; 0x5067
    mov bx, cx                       ; 0x5069
    mov word [bx - 0x6e74], ax       ; 0x506b
loc_506f:
    inc word [bp - 0x0006]           ; 0x506f
    mov ax, word [bp - 0x0006]       ; 0x5072
    cmp ax, strict word 3            ; 0x5075
    jge short loc_507d               ; 0x5078
    jmp near loc_4f19                ; 0x507a
loc_507d:
    cmp word [data_91a8], byte 0     ; 0x507d
    je short loc_508f                ; 0x5082
    mov ax, word [data_91a8]         ; 0x5084
    cmp ax, strict word 2            ; 0x5087
    jg short loc_508f                ; 0x508a
    jmp near loc_51e9                ; 0x508c
loc_508f:
    mov word [bp - 0x0014], 0        ; 0x508f
loc_5094:
    mov ax, word [bp - 0x0014]       ; 0x5094
    shl ax, 1                        ; 0x5097
    mov bx, ax                       ; 0x5099
    add bx, bp                       ; 0x509b
    mov ax, word [bx - 0x0024]       ; 0x509d
    mov word [bp - 0x0002], ax       ; 0x50a0
    mov ax, 5                        ; 0x50a3
    imul word [data_91aa]            ; 0x50a6
    mov cx, ax                       ; 0x50aa
    mov ax, word [bp - 0x0002]       ; 0x50ac
    add cx, ax                       ; 0x50af
    mov bx, cx                       ; 0x50b1
    mov al, byte [bx - 0x6e22]       ; 0x50b3
    sub ah, ah                       ; 0x50b7
    mov word [bp - 0x001a], ax       ; 0x50b9
    test ax, ax                      ; 0x50bc
    jne short loc_50c3               ; 0x50be
    jmp near loc_51db                ; 0x50c0
loc_50c3:
    mov ax, 0x28                     ; 0x50c3
    imul word [data_91aa]            ; 0x50c6
    mov cx, word [bp - 0x0002]       ; 0x50ca
    shl cx, 1                        ; 0x50cd
    shl cx, 1                        ; 0x50cf
    shl cx, 1                        ; 0x50d1
    add ax, cx                       ; 0x50d3
    mov bx, ax                       ; 0x50d5
    cmp word [bx + 0x2a6], byte 0    ; 0x50d7
    jne short loc_50e1               ; 0x50dc
    jmp near loc_51db                ; 0x50de
loc_50e1:
    cmp word [bp - 0x001a], byte 1   ; 0x50e1
    je short loc_50ee                ; 0x50e5
    cmp word [data_9188], byte 0     ; 0x50e7
    je short loc_5115                ; 0x50ec
loc_50ee:
    mov ax, 0                        ; 0x50ee
    cmp word [data_9188], byte 0     ; 0x50f1
    je short loc_50fb                ; 0x50f6
    mov ax, 0xff                     ; 0x50f8
loc_50fb:
    push ax                          ; 0x50fb
    push word [bx + 0x2ac]           ; 0x50fc
    push word [bx + 0x2aa]           ; 0x5100
    push word [bx + 0x2a8]           ; 0x5104
    push word [bx + 0x2a6]           ; 0x5108
    call ds_dispatch_e901            ; 0x510c
    add sp, byte 0x0a                ; 0x510f
    jmp near loc_51ce                ; 0x5112
loc_5115:
    cmp word [data_91aa], byte 0     ; 0x5115
    jg short loc_511f                ; 0x511a
    jmp near loc_51ce                ; 0x511c
loc_511f:
    mov ax, word [bp - 0x0002]       ; 0x511f
    shl ax, 1                        ; 0x5122
    shl ax, 1                        ; 0x5124
    add ax, word [data_91aa]         ; 0x5126
    shl ax, 1                        ; 0x512a
    mov bx, ax                       ; 0x512c
    cmp byte [bx + 0x76a0], 0        ; 0x512e
    jne short loc_5138               ; 0x5133
    jmp near loc_51ce                ; 0x5135
loc_5138:
    mov ax, 2                        ; 0x5138
    push ax                          ; 0x513b
    call ds_dispatch_b7a9            ; 0x513c
    pop cx                           ; 0x513f
    add ax, word [data_8f46]         ; 0x5140
    add ax, word [data_8f44]         ; 0x5144
    add ax, word [data_82ee]         ; 0x5148
    add ax, word [data_91aa]         ; 0x514c
    mov cx, 2                        ; 0x5150
    cwd                              ; 0x5153
    idiv cx                          ; 0x5154
    mov word [data_91a4], dx         ; 0x5156
    mov al, byte [data_91aa]         ; 0x515a
    mov byte [bp - 0x0030], al       ; 0x515d
    mov byte [bp - 0x002f], 0        ; 0x5160
    mov ax, word [bp - 0x0002]       ; 0x5164
    shl ax, 1                        ; 0x5167
    shl ax, 1                        ; 0x5169
    add ax, word [data_91aa]         ; 0x516b
    shl ax, 1                        ; 0x516f
    add ax, dx                       ; 0x5171
    mov bx, ax                       ; 0x5173
    mov al, byte [bx + 0x76a0]       ; 0x5175
    sub ah, ah                       ; 0x5179
    mov word [bp - 0x0006], ax       ; 0x517b
    cmp ax, 0xff                     ; 0x517e
    jne short loc_5193               ; 0x5181
    mov ax, 0xffee                   ; 0x5183
    cmp word [data_91a4], byte 0     ; 0x5186
    je short loc_5190                ; 0x518b
    mov ax, 0xffea                   ; 0x518d
loc_5190:
    mov word [bp - 0x0006], ax       ; 0x5190
loc_5193:
    mov ax, 0                        ; 0x5193
    push ax                          ; 0x5196
    push ax                          ; 0x5197
    lea ax, word [bp - 0x0030]       ; 0x5198
    push ax                          ; 0x519b
    push dx                          ; 0x519c
    mov ax, 0x90                     ; 0x519d
    push ax                          ; 0x51a0
    mov ax, 0x20                     ; 0x51a1
    push ax                          ; 0x51a4
    mov ax, 0xf8                     ; 0x51a5
    push ax                          ; 0x51a8
    mov ax, 0x48                     ; 0x51a9
    push ax                          ; 0x51ac
    mov ax, word [bp - 0x0002]       ; 0x51ad
    shl ax, 1                        ; 0x51b0
    shl ax, 1                        ; 0x51b2
    add ax, word [data_91aa]         ; 0x51b4
    mov bx, ax                       ; 0x51b8
    mov al, byte [bx + 0x76e9]       ; 0x51ba
    sub ah, ah                       ; 0x51be
    push ax                          ; 0x51c0
    push word [bp - 0x0006]          ; 0x51c1
    mov ax, 9                        ; 0x51c4
    push ax                          ; 0x51c7
    call ds_dispatch_efd1            ; 0x51c8
    add sp, byte 0x16                ; 0x51cb
loc_51ce:
    cmp word [data_9188], byte 0     ; 0x51ce
    je short loc_51db                ; 0x51d3
    call api_idx_001e                ; 0x51d5
    call api_idx_0024                ; 0x51d8
loc_51db:
    inc word [bp - 0x0014]           ; 0x51db
    mov ax, word [bp - 0x0014]       ; 0x51de
    cmp ax, strict word 5            ; 0x51e1
    jge short loc_51e9               ; 0x51e4
    jmp near loc_5094                ; 0x51e6
loc_51e9:
    dec word [data_91aa]             ; 0x51e9
loc_51ed:
    cmp word [data_91aa], byte 0     ; 0x51ed
    jl short loc_51f7                ; 0x51f2
    jmp near loc_4d76                ; 0x51f4
loc_51f7:
    call ds_dispatch_da22            ; 0x51f7
    ret                              ; 0x51fa
loc_51fb:
    mov ax, 0                        ; 0x51fb
    call ds_dispatch_f40b            ; 0x51fe
    call api_idx_0030                ; 0x5201
    mov ax, 0x8f                     ; 0x5204
    push ax                          ; 0x5207
    mov ax, 0xf7                     ; 0x5208
    push ax                          ; 0x520b
    mov ax, 0x20                     ; 0x520c
    push ax                          ; 0x520f
    mov ax, 0x48                     ; 0x5210
    push ax                          ; 0x5213
    call ds_dispatch_e8da            ; 0x5214
    add sp, byte 8                   ; 0x5217
    ret                              ; 0x521a

    db 0x8f, 0x06, 0x7e, 0x91, 0x59, 0x89, 0x26, 0x7a, 0x91, 0x89, 0x2e, 0x7c, 0x91, 0x89, 0x36, 0x76
    db 0x91, 0x89, 0x3e, 0x78, 0x91, 0xfc, 0xbf, 0x80, 0x91, 0xb9, 0x1c, 0x9b, 0x2b, 0xcf, 0xd1, 0xe9
    db 0x74, 0x04, 0x2b, 0xc0, 0xf3, 0xab, 0xe8, 0xca, 0xad, 0x8b, 0x2e, 0x7c, 0x91, 0x8b, 0x26, 0x7a
    db 0x91, 0x8b, 0x36, 0x76, 0x91, 0x8b, 0x3e, 0x78, 0x91, 0x51, 0xff, 0x26, 0x7e, 0x91
    db 'MAZEDATA.VGA', 0
    db 'WATRDATA.VGA', 0
    db 'TREEDATA.VGA', 0
    db 'OTWNDATA.VGA', 0
    db 'TILEDATA.VGA', 0
    db 'TOWNDATA.VGA', 0
    db 'OTWNDATA.VGA', 0
    db 'WATRDATA.VGA', 0
    db 'TILEDATA.VGA', 0
    db 'TREEDATA.VGA', 0
    db 'OCAVDATA.VGA', 0
    db 'CAVEDATA.VGA', 0
    db 'OCAVDATA.VGA', 0
    db 'WATRDATA.VGA', 0
    db 'TREEDATA.VGA', 0
    db 'OTWNDATA.VGA', 0
    db 'WATRDATA.VGA', 0
    times 11 db 0

