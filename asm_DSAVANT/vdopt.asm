%include "inc/structs/structs.inc"
%include "inc/structs/loc_35f3.inc"
org 0
bits 16
%include "inc/labels/vdopt_foreign_labels.inc"

    ; header (8 bytes)
    db 0xf2, 0x00, 0x55, 0x50, 0x21, 0x47, 0x98, 0x90

data_0002 equ 0x0002
data_0e0e equ 0x0e0e
data_0e10 equ 0x0e10
data_0e12 equ 0x0e12
data_0e14 equ 0x0e14
loc_1077 equ 0x1077
loc_1086 equ 0x1086
loc_109e equ 0x109e
loc_10b6 equ 0x10b6
loc_10ce equ 0x10ce
loc_10e6 equ 0x10e6
loc_1113 equ 0x1113
loc_1122 equ 0x1122
loc_1134 equ 0x1134
loc_1143 equ 0x1143
loc_115b equ 0x115b
loc_1173 equ 0x1173
loc_118b equ 0x118b
loc_11a3 equ 0x11a3
loc_11d0 equ 0x11d0
loc_11df equ 0x11df
loc_11f1 equ 0x11f1
loc_1200 equ 0x1200
loc_1218 equ 0x1218
loc_1230 equ 0x1230
loc_1248 equ 0x1248
loc_1260 equ 0x1260
loc_128d equ 0x128d
loc_129c equ 0x129c
loc_12ae equ 0x12ae
loc_12bd equ 0x12bd
loc_12cc equ 0x12cc
loc_12db equ 0x12db
loc_12ea equ 0x12ea
loc_12f9 equ 0x12f9
loc_1326 equ 0x1326
loc_1335 equ 0x1335
loc_1347 equ 0x1347
loc_1356 equ 0x1356
loc_1365 equ 0x1365
loc_1374 equ 0x1374
loc_1383 equ 0x1383
loc_1392 equ 0x1392
loc_13bf equ 0x13bf
loc_13ce equ 0x13ce
loc_13e0 equ 0x13e0
loc_13ef equ 0x13ef
loc_1407 equ 0x1407
loc_141f equ 0x141f
loc_1437 equ 0x1437
loc_144f equ 0x144f
loc_14e4 equ 0x14e4
loc_1da2 equ 0x1da2
loc_1db2 equ 0x1db2
loc_1dc0 equ 0x1dc0
loc_1dcf equ 0x1dcf
loc_1dd4 equ 0x1dd4
loc_1e31 equ 0x1e31
loc_1e63 equ 0x1e63
loc_1e90 equ 0x1e90
loc_1ebb equ 0x1ebb
loc_1f42 equ 0x1f42
loc_1f47 equ 0x1f47
loc_1f71 equ 0x1f71
loc_1fa1 equ 0x1fa1
loc_1fab equ 0x1fab
loc_1fd6 equ 0x1fd6
loc_1fe0 equ 0x1fe0
loc_1ff1 equ 0x1ff1
loc_200d equ 0x200d
loc_203f equ 0x203f
loc_2046 equ 0x2046
loc_2060 equ 0x2060
loc_2070 equ 0x2070
loc_207f equ 0x207f
loc_208e equ 0x208e
loc_2093 equ 0x2093
loc_20f9 equ 0x20f9
loc_2116 equ 0x2116
loc_2191 equ 0x2191
loc_21a0 equ 0x21a0
loc_2212 equ 0x2212
loc_225d equ 0x225d
loc_2265 equ 0x2265
loc_22bb equ 0x22bb
loc_22d8 equ 0x22d8
loc_22ee equ 0x22ee
loc_238c equ 0x238c
loc_35f3 equ 0x35f3
data_590e equ 0x590e
data_5910 equ 0x5910
data_598c equ 0x598c
data_598e equ 0x598e
data_59fc equ 0x59fc
data_5b3e equ 0x5b3e
data_5b6e equ 0x5b6e
data_69c8 equ 0x69c8
data_82ee equ 0x82ee
data_82f2 equ 0x82f2
data_82f4 equ 0x82f4
data_82f6 equ 0x82f6
data_82f8 equ 0x82f8
data_82fa equ 0x82fa
data_82fc equ 0x82fc
data_82fe equ 0x82fe
data_8300 equ 0x8300
data_8302 equ 0x8302
data_8304 equ 0x8304
data_8306 equ 0x8306
data_830a equ 0x830a
data_830c equ 0x830c
data_8af0 equ 0x8af0
data_8d0e equ 0x8d0e
data_8d10 equ 0x8d10
data_8d12 equ 0x8d12
data_8f3e equ 0x8f3e
data_8f40 equ 0x8f40
data_8f42 equ 0x8f42
data_8f44 equ 0x8f44
data_8f46 equ 0x8f46
data_8f48 equ 0x8f48
data_904e equ 0x904e
data_9050 equ 0x9050
data_905a equ 0x905a
data_9068 equ 0x9068
data_906a equ 0x906a
data_908a equ 0x908a
data_908c equ 0x908c
data_908e equ 0x908e
data_9090 equ 0x9090
data_9092 equ 0x9092
data_9094 equ 0x9094
data_90ac equ 0x90ac
data_90ae equ 0x90ae
data_90b0 equ 0x90b0
data_90b2 equ 0x90b2
data_90b4 equ 0x90b4
data_90b6 equ 0x90b6
data_90b8 equ 0x90b8
data_9342 equ 0x9342
data_9344 equ 0x9344
data_95ce equ 0x95ce
data_9858 equ 0x9858
data_9ae2 equ 0x9ae2
data_9ae4 equ 0x9ae4
data_9ae6 equ 0x9ae6
data_9ae8 equ 0x9ae8
data_9aea equ 0x9aea
data_9aec equ 0x9aec
data_9aee equ 0x9aee
data_9af0 equ 0x9af0
data_9af2 equ 0x9af2
data_9af4 equ 0x9af4
data_9af6 equ 0x9af6
data_9af8 equ 0x9af8
data_9afa equ 0x9afa
data_9afc equ 0x9afc
data_9afe equ 0x9afe
data_9b00 equ 0x9b00
data_9b02 equ 0x9b02
data_9b04 equ 0x9b04
data_9b06 equ 0x9b06
data_9b08 equ 0x9b08
data_9b0a equ 0x9b0a
data_9b0c equ 0x9b0c
data_9b5e equ 0x9b5e
data_9d90 equ 0x9d90

    db 0x1e, 0x00, 0xde, 0x0c, 0x20, 0x97
loc_000e:
    mov ax, 0                        ; 0x000e
    call ds_dispatch_f40b            ; 0x0011
    cmp word [data_906a], byte 0     ; 0x0014
    je short @..local.l1             ; 0x0019
    mov ax, 1                        ; 0x001b
    push ax                          ; 0x001e
    push word [data_9068]            ; 0x001f
    call ds_dispatch_c459            ; 0x0023
    add sp, byte 4                   ; 0x0026
    mov word [data_906a], 0          ; 0x0029
@..local.l1:
    mov word [data_90b6], 0          ; 0x002f
    mov word [data_90b8], 0          ; 0x0035
    cmp word [data_830a], byte 0x13  ; 0x003b
    jne short @..local.l2            ; 0x0040
    mov ax, 0xe                      ; 0x0042
    push ax                          ; 0x0045
    call ds_dispatch_c12a            ; 0x0046
    pop cx                           ; 0x0049
    mov ax, 1                        ; 0x004a
    push ax                          ; 0x004d
    mov ax, data_0002                ; 0x004e
    push ax                          ; 0x0051
    call ds_dispatch_d61c            ; 0x0052
    add sp, byte 4                   ; 0x0055
    mov ax, data_0002                ; 0x0058
    push ax                          ; 0x005b
    mov ax, 3                        ; 0x005c
    push ax                          ; 0x005f
    call ds_dispatch_d61c            ; 0x0060
    add sp, byte 4                   ; 0x0063
    push word [data_8af0]            ; 0x0066
    call api_idx_0004_7              ; 0x006a
    pop cx                           ; 0x006d
    mov ax, 1                        ; 0x006e
    push ax                          ; 0x0071
    call ds_dispatch_c12a            ; 0x0072
    pop cx                           ; 0x0075
    mov ax, data_0002                ; 0x0076
    push ax                          ; 0x0079
    call ds_dispatch_c12a            ; 0x007a
    pop cx                           ; 0x007d
    mov ax, 0xe                      ; 0x007e
    push ax                          ; 0x0081
    mov ax, 0                        ; 0x0082
    push ax                          ; 0x0085
    call ds_dispatch_d61c            ; 0x0086
    add sp, byte 4                   ; 0x0089
@..local.l2:
    cmp word [data_830a], byte 0x14  ; 0x008c
    jne short @..local.l3            ; 0x0091
    push word [data_8af0]            ; 0x0093
    call api_idx_0094                ; 0x0097
    pop cx                           ; 0x009a
@..local.l3:
    mov word [data_830a], 5          ; 0x009b
    mov ax, 0                        ; 0x00a1
    ret                              ; 0x00a4
loc_00a5:
    mov ax, 0                        ; 0x00a5
    call ds_dispatch_f40b            ; 0x00a8
    mov bx, word [data_0e14]         ; 0x00ab
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
%include "vdopt/api_idx_0004.asm"

%include "vdopt/api_idx_0002.asm"

%include "vdopt/api_idx_002a.asm"

%include "vdopt/api_idx_0004_2.asm"

%include "vdopt/api_idx_0006.asm"

%include "vdopt/api_idx_0004_3.asm"

%include "vdopt/api_idx_0002_2.asm"

%include "vdopt/api_idx_0058.asm"

%include "vdopt/api_idx_0002_3.asm"

%include "vdopt/api_idx_000e.asm"

%include "vdopt/api_idx_0014.asm"

%include "vdopt/api_idx_000a.asm"

%include "vdopt/api_idx_0012.asm"

%include "vdopt/api_idx_000a_2.asm"

%include "vdopt/api_idx_0002_4.asm"

%include "vdopt/api_idx_00fa.asm"

%include "vdopt/api_idx_0008.asm"

%include "vdopt/api_idx_000c.asm"

%include "vdopt/api_idx_000c_2.asm"

%include "vdopt/api_idx_0002_5.asm"

%include "vdopt/api_idx_0004_4.asm"

%include "vdopt/api_idx_000a_3.asm"

%include "vdopt/api_idx_000c_3.asm"

%include "vdopt/api_idx_0044.asm"

%include "vdopt/api_idx_0008_2.asm"

%include "vdopt/api_idx_0004_5.asm"

%include "vdopt/api_idx_0018.asm"

%include "vdopt/api_idx_0004_6.asm"

%include "vdopt/api_idx_0038.asm"

%include "vdopt/api_idx_0094.asm"

%include "vdopt/api_idx_0004_7.asm"

%include "vdopt/leaf_loc_4717.asm"

