%include "structs/structs.inc"
%include "structs/loc_35f3.inc"
org 0
bits 16
%include "labels/vdopt_foreign_labels.inc"

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

loc_02b4:
    mov ax, 0                        ; 0x02b4
    call ds_dispatch_f40b            ; 0x02b7
    mov ax, 0xa                      ; 0x02ba
    push ax                          ; 0x02bd
    call ds_dispatch_e489            ; 0x02be
    pop cx                           ; 0x02c1
    ret                              ; 0x02c2
%include "vdopt/api_idx_0004_2.asm"

%include "vdopt/api_idx_0006.asm"

%include "vdopt/api_idx_0004_3.asm"

%include "vdopt/api_idx_0002_2.asm"

loc_04b7:
    mov ax, 0                        ; 0x04b7
    call ds_dispatch_f40b            ; 0x04ba
    mov ax, word [data_82ee]         ; 0x04bd
    shl ax, 1                        ; 0x04c0
    mov bx, ax                       ; 0x04c2
    mov word [bx - 0x7302], 0        ; 0x04c4
    push ax                          ; 0x04ca
    mov cx, word [bp + 0x4]          ; 0x04cb
    shl cx, 1                        ; 0x04ce
    mov ax, word [data_0e12]         ; 0x04d0
    add ax, cx                       ; 0x04d3
    add ax, 0x3c0                    ; 0x04d5
    push ax                          ; 0x04d8
    call api_idx_0002_2              ; 0x04d9
    add sp, byte 4                   ; 0x04dc
    mov ax, 0                        ; 0x04df
    push ax                          ; 0x04e2
    push ax                          ; 0x04e3
    push ax                          ; 0x04e4
    mov ax, word [bp + 0x4]          ; 0x04e5
    shl ax, 1                        ; 0x04e8
    mov si, ax                       ; 0x04ea
    mov bx, word [data_0e12]         ; 0x04ec
    push word [bx + si + 0x3c0]      ; 0x04f0
    mov ax, 0                        ; 0x04f4
    push ax                          ; 0x04f7
    push ax                          ; 0x04f8
    push word [bp + 0x4]             ; 0x04f9
    mov ax, 6                        ; 0x04fc
    push ax                          ; 0x04ff
    push word [data_830c]            ; 0x0500
    call api_idx_0004_3              ; 0x0504
    add sp, byte 0x12                ; 0x0507
    mov ax, word [bp + 0x4]          ; 0x050a
    shl ax, 1                        ; 0x050d
    mov si, ax                       ; 0x050f
    mov bx, word [data_0e12]         ; 0x0511
    cmp word [bx + si], byte 0       ; 0x0515
    jle short @..local.l5            ; 0x0518
    mov ax, 0                        ; 0x051a
    push ax                          ; 0x051d
    push word [bx + si]              ; 0x051e
    mov ax, word [data_830c]         ; 0x0520
    mov cx, 4                        ; 0x0523
    shl ax, cl                       ; 0x0526
    add ax, 0x8d14                   ; 0x0528
    push ax                          ; 0x052b
    call ds_dispatch_ec41            ; 0x052c
    add sp, byte 6                   ; 0x052f
    mov ax, 0                        ; 0x0532
    push ax                          ; 0x0535
    mov ax, word [bp + 0x4]          ; 0x0536
    shl ax, 1                        ; 0x0539
    mov si, ax                       ; 0x053b
    mov bx, word [data_0e12]         ; 0x053d
    push word [bx + si]              ; 0x0541
    mov ax, word [data_830c]         ; 0x0543
    mov cx, 4                        ; 0x0546
    shl ax, cl                       ; 0x0549
    add ax, 0x5642                   ; 0x054b
    push ax                          ; 0x054e
    call ds_dispatch_ec41            ; 0x054f
    add sp, byte 6                   ; 0x0552
    mov ax, word [bp + 0x4]          ; 0x0555
    inc ax                           ; 0x0558
    mov word [data_8d12], ax         ; 0x0559
@..local.l5:
    mov ax, 1                        ; 0x055c
    push ax                          ; 0x055f
    call ds_dispatch_b7e0            ; 0x0560
    pop cx                           ; 0x0563
    ret                              ; 0x0564
%include "vdopt/api_idx_0058.asm"

%include "vdopt/api_idx_0002_3.asm"

%include "vdopt/api_idx_000e.asm"

loc_07d9:
    mov ax, 0                        ; 0x07d9
    call ds_dispatch_f40b            ; 0x07dc
    mov ax, word [bp + 0x6]          ; 0x07df
    dec ax                           ; 0x07e2
    push ax                          ; 0x07e3
    push word [bp + 0x4]             ; 0x07e4
    lea ax, word [bp + 0xc]          ; 0x07e7
    push ax                          ; 0x07ea
    lea ax, word [bp + 0xa]          ; 0x07eb
    push ax                          ; 0x07ee
    lea ax, word [bp + 0x8]          ; 0x07ef
    push ax                          ; 0x07f2
    call api_idx_0004                ; 0x07f3
    add sp, byte 0x0a                ; 0x07f6
    test ax, ax                      ; 0x07f9
    je short @..local.l8             ; 0x07fb
    mov ax, word [data_5b6e]         ; 0x07fd
    mov cx, data_0002                ; 0x0800
    cwd                              ; 0x0803
    idiv cx                          ; 0x0804
    mov ax, dx                       ; 0x0806
    test ax, ax                      ; 0x0808
    je short @..local.l6             ; 0x080a
    mov ax, cx                       ; 0x080c
    jmp short @..local.l7            ; 0x080e
@..local.l6:
    mov ax, 4                        ; 0x0810
    mov cx, word [data_5b6e]         ; 0x0813
    cmp cx, byte 6                   ; 0x0817
    jne short @..local.l7            ; 0x081a
    mov ax, 0                        ; 0x081c
@..local.l7:
    ret                              ; 0x081f
@..local.l8:
    mov ax, 4                        ; 0x0820
    push ax                          ; 0x0823
    mov ax, word [bp + 0xc]          ; 0x0824
    mov cx, 6                        ; 0x0827
    shl ax, cl                       ; 0x082a
    mov cx, word [bp + 0xa]          ; 0x082c
    shl cx, 1                        ; 0x082f
    shl cx, 1                        ; 0x0831
    shl cx, 1                        ; 0x0833
    add ax, cx                       ; 0x0835
    add ax, word [bp + 0x8]          ; 0x0837
    push ax                          ; 0x083a
    mov ax, word [data_0e14]         ; 0x083b
    add ax, 0x90                     ; 0x083e
    push ax                          ; 0x0841
    call ds_dispatch_ecf6            ; 0x0842
    add sp, byte 6                   ; 0x0845
    ret                              ; 0x0848
loc_0849:
    mov ax, 0                        ; 0x0849
    call ds_dispatch_f40b            ; 0x084c
    push word [bp + 0x6]             ; 0x084f
    mov ax, word [bp + 0x4]          ; 0x0852
    dec ax                           ; 0x0855
    push ax                          ; 0x0856
    lea ax, word [bp + 0xc]          ; 0x0857
    push ax                          ; 0x085a
    lea ax, word [bp + 0xa]          ; 0x085b
    push ax                          ; 0x085e
    lea ax, word [bp + 0x8]          ; 0x085f
    push ax                          ; 0x0862
    call api_idx_0004                ; 0x0863
    add sp, byte 0x0a                ; 0x0866
    test ax, ax                      ; 0x0869
    je short @..local.l11            ; 0x086b
    mov ax, word [data_5b6e]         ; 0x086d
    mov cx, data_0002                ; 0x0870
    cwd                              ; 0x0873
    idiv cx                          ; 0x0874
    mov ax, dx                       ; 0x0876
    test ax, ax                      ; 0x0878
    je short @..local.l9             ; 0x087a
    mov ax, cx                       ; 0x087c
    jmp short @..local.l10           ; 0x087e
@..local.l9:
    mov ax, 4                        ; 0x0880
    mov cx, word [data_5b6e]         ; 0x0883
    cmp cx, byte 6                   ; 0x0887
    jne short @..local.l10           ; 0x088a
    mov ax, 0                        ; 0x088c
@..local.l10:
    ret                              ; 0x088f
@..local.l11:
    mov ax, 4                        ; 0x0890
    push ax                          ; 0x0893
    mov ax, word [bp + 0xc]          ; 0x0894
    mov cx, 6                        ; 0x0897
    shl ax, cl                       ; 0x089a
    mov cx, word [bp + 0xa]          ; 0x089c
    shl cx, 1                        ; 0x089f
    shl cx, 1                        ; 0x08a1
    shl cx, 1                        ; 0x08a3
    add ax, cx                       ; 0x08a5
    add ax, word [bp + 0x8]          ; 0x08a7
    push ax                          ; 0x08aa
    mov ax, word [data_0e14]         ; 0x08ab
    add ax, 0x290                    ; 0x08ae
    push ax                          ; 0x08b1
    call ds_dispatch_ecf6            ; 0x08b2
    add sp, byte 6                   ; 0x08b5
    ret                              ; 0x08b8
loc_08b9:
    mov ax, 0                        ; 0x08b9
    call ds_dispatch_f40b            ; 0x08bc
    mov ax, word [bp + 0x4]          ; 0x08bf
    jmp short @..local.l16           ; 0x08c2
@..local.l12:
    mov ax, 4                        ; 0x08c4
    push ax                          ; 0x08c7
    mov ax, word [bp + 0x6]          ; 0x08c8
    mov cx, 6                        ; 0x08cb
    shl ax, cl                       ; 0x08ce
    mov cx, word [bp + 0xa]          ; 0x08d0
    shl cx, 1                        ; 0x08d3
    shl cx, 1                        ; 0x08d5
    shl cx, 1                        ; 0x08d7
    add ax, cx                       ; 0x08d9
    add ax, word [bp + 0x8]          ; 0x08db
    push ax                          ; 0x08de
    mov ax, word [data_0e14]         ; 0x08df
    add ax, 0x90                     ; 0x08e2
    push ax                          ; 0x08e5
    call ds_dispatch_ecf6            ; 0x08e6
    add sp, byte 6                   ; 0x08e9
    ret                              ; 0x08ec
@..local.l13:
    mov ax, 4                        ; 0x08ed
    push ax                          ; 0x08f0
    mov ax, word [bp + 0x6]          ; 0x08f1
    mov cx, 6                        ; 0x08f4
    shl ax, cl                       ; 0x08f7
    mov cx, word [bp + 0xa]          ; 0x08f9
    shl cx, 1                        ; 0x08fc
    shl cx, 1                        ; 0x08fe
    shl cx, 1                        ; 0x0900
    add ax, cx                       ; 0x0902
    add ax, word [bp + 0x8]          ; 0x0904
    push ax                          ; 0x0907
    mov ax, word [data_0e14]         ; 0x0908
    add ax, 0x290                    ; 0x090b
    push ax                          ; 0x090e
    call ds_dispatch_ecf6            ; 0x090f
    add sp, byte 6                   ; 0x0912
    ret                              ; 0x0915
@..local.l14:
    push word [bp + 0x6]             ; 0x0916
    push word [bp + 0xa]             ; 0x0919
    push word [bp + 0x8]             ; 0x091c
    push word [bp + 0xe]             ; 0x091f
    push word [bp + 0xc]             ; 0x0922
    call loc_07d9                    ; 0x0925
    add sp, byte 0x0a                ; 0x0928
    ret                              ; 0x092b
@..local.l15:
    push word [bp + 0x6]             ; 0x092c
    push word [bp + 0xa]             ; 0x092f
    push word [bp + 0x8]             ; 0x0932
    push word [bp + 0xe]             ; 0x0935
    push word [bp + 0xc]             ; 0x0938
    call loc_0849                    ; 0x093b
    add sp, byte 0x0a                ; 0x093e
    ret                              ; 0x0941
@..local.l16:
    cmp ax, strict word 0            ; 0x0942
    jne short @..local.l17           ; 0x0945
    jmp near @..local.l12            ; 0x0947
@..local.l17:
    cmp ax, strict word 1            ; 0x094a
    je short @..local.l13            ; 0x094d
    cmp ax, strict word 2            ; 0x094f
    je short @..local.l14            ; 0x0952
    cmp ax, strict word 3            ; 0x0954
    je short @..local.l15            ; 0x0957
    ret                              ; 0x0959
loc_095a:
    mov ax, 0                        ; 0x095a
    call ds_dispatch_f40b            ; 0x095d
    mov ax, word [bp + 0x4]          ; 0x0960
    jmp short @..local.l22           ; 0x0963
@..local.l18:
    dec word [bp + 0xa]              ; 0x0965
    jmp short @..local.l23           ; 0x0968
@..local.l19:
    inc word [bp + 0x8]              ; 0x096a
    jmp short @..local.l23           ; 0x096d
@..local.l20:
    inc word [bp + 0xa]              ; 0x096f
    jmp short @..local.l23           ; 0x0972
@..local.l21:
    dec word [bp + 0x8]              ; 0x0974
    jmp short @..local.l23           ; 0x0977
@..local.l22:
    cmp ax, strict word 0            ; 0x0979
    je short @..local.l18            ; 0x097c
    cmp ax, strict word 1            ; 0x097e
    je short @..local.l19            ; 0x0981
    cmp ax, strict word 2            ; 0x0983
    je short @..local.l20            ; 0x0986
    cmp ax, strict word 3            ; 0x0988
    je short @..local.l21            ; 0x098b
@..local.l23:
    cmp word [bp + 0x8], byte 0      ; 0x098d
    jl short @..local.l24            ; 0x0991
    cmp word [bp + 0x8], byte 0x11   ; 0x0993
    jge short @..local.l24           ; 0x0997
    cmp word [bp + 0xa], byte 0      ; 0x0999
    jl short @..local.l24            ; 0x099d
    cmp word [bp + 0xa], byte 0x11   ; 0x099f
    jge short @..local.l24           ; 0x09a3
    mov ax, word [bp + 0x6]          ; 0x09a5
    push ax                          ; 0x09a8
    mov ax, 0x24                     ; 0x09a9
    imul word [bp + 0x8]             ; 0x09ac
    mov cx, ax                       ; 0x09af
    mov dx, word [bp + 0xa]          ; 0x09b1
    shl dx, 1                        ; 0x09b4
    add ax, dx                       ; 0x09b6
    mov bx, ax                       ; 0x09b8
    pop ax                           ; 0x09ba
    mov word [bx - 0x6f46], ax       ; 0x09bb
@..local.l24:
    ret                              ; 0x09bf
%include "vdopt/api_idx_0014.asm"


    db 0xa1, 0xea, 0x9a, 0x89, 0x46, 0xf2, 0xeb, 0x30, 0x4a, 0x5c, 0x82, 0x5c, 0x4a, 0x5c, 0x82, 0x5c
    db 0x82, 0x5c, 0x82, 0x5c, 0x82
    db '\J\J\J\J\J\'
    db 0x82, 0x5c, 0x82
    db '\J\J\'

@..api_idx_0014.l22:
    sub ax, strict word 0xf          ; 0x0c2b
    cmp ax, strict word 0x10         ; 0x0c2e
    jae short @..api_idx_0014.l23    ; 0x0c31
    xchg bx, ax                      ; 0x0c33
    shl bx, 1                        ; 0x0c34
    jmp [cs:bx + 0x5c52]             ; 0x0c36
@..api_idx_0014.l23:
    push word [bp - 0x0002]          ; 0x0c3b
    mov ax, word [data_0e14]         ; 0x0c3e
    add ax, 0x930                    ; 0x0c41
    push ax                          ; 0x0c44
    call ds_dispatch_ec74            ; 0x0c45
    add sp, byte 4                   ; 0x0c48
    test ax, ax                      ; 0x0c4b
    je short @..api_idx_0014.l29     ; 0x0c4d
    mov ax, word [data_830c]         ; 0x0c4f
    jmp short @..api_idx_0014.l28    ; 0x0c52
@..api_idx_0014.l24:
    jmp short @..api_idx_0014.l29    ; 0x0c54
@..api_idx_0014.l25:
    mov ax, word [data_9aea]         ; 0x0c56
    mov word [bp - 0x000e], ax       ; 0x0c59
    jmp short @..api_idx_0014.l29    ; 0x0c5c
@..api_idx_0014.l26:
    mov word [bp - 0x000e], 6        ; 0x0c5e
    jmp short @..api_idx_0014.l29    ; 0x0c63
@..api_idx_0014.l27:
    mov ax, word [data_9342]         ; 0x0c65
    mov word [bp - 0x000e], ax       ; 0x0c68
    jmp short @..api_idx_0014.l29    ; 0x0c6b
@..api_idx_0014.l28:
    cmp ax, strict word 0            ; 0x0c6d
    je short @..api_idx_0014.l24     ; 0x0c70
    cmp ax, strict word 0xa          ; 0x0c72
    je short @..api_idx_0014.l26     ; 0x0c75
    cmp ax, strict word 0xe          ; 0x0c77
    je short @..api_idx_0014.l25     ; 0x0c7a
    cmp ax, strict word 0x13         ; 0x0c7c
    je short @..api_idx_0014.l25     ; 0x0c7f
    cmp ax, strict word 0x19         ; 0x0c81
    je short @..api_idx_0014.l26     ; 0x0c84
    cmp ax, strict word 0x1f         ; 0x0c86
    je short @..api_idx_0014.l25     ; 0x0c89
    jmp short @..api_idx_0014.l27    ; 0x0c8b
@..api_idx_0014.l29:
    cmp word [bp - 0x000e], byte 0xff ; 0x0c8d
    je short @..api_idx_0014.l30     ; 0x0c91
    mov ax, word [bp - 0x000e]       ; 0x0c93
    push ax                          ; 0x0c96
    mov ax, 0x24                     ; 0x0c97
    imul word [bp + 0x8]             ; 0x0c9a
    mov cx, ax                       ; 0x0c9d
    mov dx, word [bp + 0xa]          ; 0x0c9f
    shl dx, 1                        ; 0x0ca2
    add ax, dx                       ; 0x0ca4
    mov bx, ax                       ; 0x0ca6
    pop ax                           ; 0x0ca8
    mov word [bx - 0x6f46], ax       ; 0x0ca9
@..api_idx_0014.l30:
    cmp word [data_5b6e], byte 1     ; 0x0cad
    jne short @..api_idx_0014.l31    ; 0x0cb2
    push word [bp - 0x0002]          ; 0x0cb4
    mov ax, word [data_0e14]         ; 0x0cb7
    add ax, 0x8b0                    ; 0x0cba
    push ax                          ; 0x0cbd
    call ds_dispatch_ec74            ; 0x0cbe
    add sp, byte 4                   ; 0x0cc1
    test ax, ax                      ; 0x0cc4
    je short @..api_idx_0014.l31     ; 0x0cc6
    mov ax, 0x24                     ; 0x0cc8
    imul word [bp + 0x8]             ; 0x0ccb
    mov cx, word [bp + 0xa]          ; 0x0cce
    shl cx, 1                        ; 0x0cd1
    add ax, cx                       ; 0x0cd3
    mov bx, ax                       ; 0x0cd5
    mov word [bx - 0x6f46], 0xffff   ; 0x0cd7
@..api_idx_0014.l31:
    mov word [bp - 0x0010], 0xffff   ; 0x0cdd
    push word [bp + 0x6]             ; 0x0ce2
    push word [bp + 0x4]             ; 0x0ce5
    push word [bp - 0x000a]          ; 0x0ce8
    push word [bp - 0x0008]          ; 0x0ceb
    push word [bp - 0x000c]          ; 0x0cee
    mov ax, 0                        ; 0x0cf1
    push ax                          ; 0x0cf4
    call loc_08b9                    ; 0x0cf5
    add sp, byte 0x0c                ; 0x0cf8
    mov word [bp - 0x0012], ax       ; 0x0cfb
    jmp short @..api_idx_0014.l32    ; 0x0cfe

    db 0xa1, 0xf6, 0x9a, 0x89, 0x46, 0xf0, 0xeb, 0x35, 0xa1, 0xf8, 0x9a, 0x89, 0x46, 0xf0, 0xeb, 0x2d
    db 0xa1, 0xfa, 0x9a, 0x89, 0x46, 0xf0, 0xeb, 0x25, 0xa1, 0xfc, 0x9a, 0x89, 0x46, 0xf0, 0xeb, 0x1d
    db 0x84
    db ']G]O]W]_]'
    db 0x84
    db ']W]O]'

@..api_idx_0014.l32:
    cmp ax, strict word 8            ; 0x0d30
    jae short @..api_idx_0014.l33    ; 0x0d33
    xchg bx, ax                      ; 0x0d35
    shl bx, 1                        ; 0x0d36
    jmp [cs:bx + 0x5d67]             ; 0x0d38
@..api_idx_0014.l33:
    cmp word [bp - 0x0010], byte 0xff ; 0x0d3d
    je short @..api_idx_0014.l34     ; 0x0d41
    mov ax, word [bp - 0x0010]       ; 0x0d43
    push ax                          ; 0x0d46
    mov ax, 0x24                     ; 0x0d47
    imul word [bp + 0x8]             ; 0x0d4a
    mov cx, ax                       ; 0x0d4d
    mov dx, word [bp + 0xa]          ; 0x0d4f
    shl dx, 1                        ; 0x0d52
    add ax, dx                       ; 0x0d54
    mov bx, ax                       ; 0x0d56
    pop ax                           ; 0x0d58
    mov word [bx - 0x6cba], ax       ; 0x0d59
@..api_idx_0014.l34:
    mov word [bp - 0x0010], 0xffff   ; 0x0d5d
    push word [bp + 0x6]             ; 0x0d62
    push word [bp + 0x4]             ; 0x0d65
    push word [bp - 0x000a]          ; 0x0d68
    push word [bp - 0x0008]          ; 0x0d6b
    push word [bp - 0x000c]          ; 0x0d6e
    mov ax, 1                        ; 0x0d71
    push ax                          ; 0x0d74
    call loc_08b9                    ; 0x0d75
    add sp, byte 0x0c                ; 0x0d78
    mov word [bp - 0x0012], ax       ; 0x0d7b
    jmp short @..api_idx_0014.l35    ; 0x0d7e

    db 0xa1, 0xfe, 0x9a, 0x89, 0x46, 0xf0, 0xeb, 0x35, 0xa1, 0x00, 0x9b, 0x89, 0x46, 0xf0, 0xeb, 0x2d
    db 0xa1, 0x02, 0x9b, 0x89, 0x46, 0xf0, 0xeb, 0x25, 0xa1, 0x04, 0x9b, 0x89, 0x46, 0xf0, 0xeb, 0x1d
    db 0x04, 0x5e, 0xc7, 0x5d, 0xcf, 0x5d, 0xd7, 0x5d, 0xdf, 0x5d, 0x04, 0x5e, 0xd7, 0x5d, 0xcf, 0x5d

@..api_idx_0014.l35:
    cmp ax, strict word 8            ; 0x0db0
    jae short @..api_idx_0014.l36    ; 0x0db3
    xchg bx, ax                      ; 0x0db5
    shl bx, 1                        ; 0x0db6
    jmp [cs:bx + 0x5de7]             ; 0x0db8
@..api_idx_0014.l36:
    cmp word [bp - 0x0010], byte 0xff ; 0x0dbd
    je short @..api_idx_0014.l37     ; 0x0dc1
    mov ax, word [bp - 0x0010]       ; 0x0dc3
    push ax                          ; 0x0dc6
    mov ax, 0x24                     ; 0x0dc7
    imul word [bp + 0x8]             ; 0x0dca
    mov cx, ax                       ; 0x0dcd
    mov dx, word [bp + 0xa]          ; 0x0dcf
    shl dx, 1                        ; 0x0dd2
    add ax, dx                       ; 0x0dd4
    mov bx, ax                       ; 0x0dd6
    pop ax                           ; 0x0dd8
    mov word [bx - 0x6a30], ax       ; 0x0dd9
@..api_idx_0014.l37:
    mov word [bp - 0x0010], 0xffff   ; 0x0ddd
    push word [bp + 0x6]             ; 0x0de2
    push word [bp + 0x4]             ; 0x0de5
    push word [bp - 0x000a]          ; 0x0de8
    push word [bp - 0x0008]          ; 0x0deb
    push word [bp - 0x000c]          ; 0x0dee
    mov ax, data_0002                ; 0x0df1
    push ax                          ; 0x0df4
    call loc_08b9                    ; 0x0df5
    add sp, byte 0x0c                ; 0x0df8
    mov word [bp - 0x0012], ax       ; 0x0dfb
    jmp short @..api_idx_0014.l38    ; 0x0dfe

    db 0xa1, 0xf6, 0x9a, 0x89, 0x46, 0xf0, 0xeb, 0x35, 0xa1, 0xf8, 0x9a, 0x89, 0x46, 0xf0, 0xeb, 0x2d
    db 0xa1, 0xfa, 0x9a, 0x89, 0x46, 0xf0, 0xeb, 0x25, 0xa1, 0xfc, 0x9a, 0x89, 0x46, 0xf0, 0xeb, 0x1d
    db 0x84
    db '^G^O^W^_^'
    db 0x84
    db '^W^O^'

@..api_idx_0014.l38:
    cmp ax, strict word 8            ; 0x0e30
    jae short @..api_idx_0014.l39    ; 0x0e33
    xchg bx, ax                      ; 0x0e35
    shl bx, 1                        ; 0x0e36
    jmp [cs:bx + 0x5e67]             ; 0x0e38
@..api_idx_0014.l39:
    cmp word [bp - 0x0010], byte 0xff ; 0x0e3d
    je short @..api_idx_0014.l40     ; 0x0e41
    mov ax, word [bp - 0x0010]       ; 0x0e43
    push ax                          ; 0x0e46
    mov ax, 0x24                     ; 0x0e47
    imul word [bp + 0x8]             ; 0x0e4a
    mov cx, ax                       ; 0x0e4d
    mov dx, word [bp + 0xa]          ; 0x0e4f
    shl dx, 1                        ; 0x0e52
    add ax, dx                       ; 0x0e54
    mov bx, ax                       ; 0x0e56
    pop ax                           ; 0x0e58
    mov word [bx - 0x6cb8], ax       ; 0x0e59
@..api_idx_0014.l40:
    mov word [bp - 0x0010], 0xffff   ; 0x0e5d
    push word [bp + 0x6]             ; 0x0e62
    push word [bp + 0x4]             ; 0x0e65
    push word [bp - 0x000a]          ; 0x0e68
    push word [bp - 0x0008]          ; 0x0e6b
    push word [bp - 0x000c]          ; 0x0e6e
    mov ax, 3                        ; 0x0e71
    push ax                          ; 0x0e74
    call loc_08b9                    ; 0x0e75
    add sp, byte 0x0c                ; 0x0e78
    mov word [bp - 0x0012], ax       ; 0x0e7b
    jmp short @..api_idx_0014.l41    ; 0x0e7e

    db 0xa1, 0xfe, 0x9a, 0x89, 0x46, 0xf0, 0xeb, 0x35, 0xa1, 0x00, 0x9b, 0x89, 0x46, 0xf0, 0xeb, 0x2d
    db 0xa1, 0x02, 0x9b, 0x89, 0x46, 0xf0, 0xeb, 0x25, 0xa1, 0x04, 0x9b, 0x89, 0x46, 0xf0, 0xeb, 0x1d
    db 0x04, 0x5f, 0xc7, 0x5e, 0xcf, 0x5e, 0xd7, 0x5e, 0xdf, 0x5e, 0x04, 0x5f, 0xd7, 0x5e, 0xcf, 0x5e

@..api_idx_0014.l41:
    cmp ax, strict word 8            ; 0x0eb0
    jae short @..api_idx_0014.l42    ; 0x0eb3
    xchg bx, ax                      ; 0x0eb5
    shl bx, 1                        ; 0x0eb6
    jmp [cs:bx + 0x5ee7]             ; 0x0eb8
@..api_idx_0014.l42:
    cmp word [bp - 0x0010], byte 0xff ; 0x0ebd
    je short @..api_idx_0014.l43     ; 0x0ec1
    mov ax, word [bp - 0x0010]       ; 0x0ec3
    push ax                          ; 0x0ec6
    mov ax, 0x24                     ; 0x0ec7
    imul word [bp + 0x8]             ; 0x0eca
    mov cx, ax                       ; 0x0ecd
    mov dx, word [bp + 0xa]          ; 0x0ecf
    shl dx, 1                        ; 0x0ed2
    add ax, dx                       ; 0x0ed4
    mov bx, ax                       ; 0x0ed6
    pop ax                           ; 0x0ed8
    mov word [bx - 0x6a54], ax       ; 0x0ed9
@..api_idx_0014.l43:
    ret                              ; 0x0edd
loc_0ede:
    mov ax, 0                        ; 0x0ede
    call ds_dispatch_f40b            ; 0x0ee1
    mov ax, 0x24                     ; 0x0ee4
    imul word [bp + 0x4]             ; 0x0ee7
    mov cx, word [bp + 0x6]          ; 0x0eea
    shl cx, 1                        ; 0x0eed
    add ax, cx                       ; 0x0eef
    mov bx, ax                       ; 0x0ef1
    mov ax, word [bx - 0x6cba]       ; 0x0ef3
    cmp ax, word [data_9af8]         ; 0x0ef7
    jne short @..local.l25           ; 0x0efb
    mov ax, word [bx - 0x6a30]       ; 0x0efd
    cmp ax, word [data_9b00]         ; 0x0f01
    jne short @..local.l25           ; 0x0f05
    mov ax, word [bx - 0x6cb8]       ; 0x0f07
    cmp ax, word [data_9af8]         ; 0x0f0b
    jne short @..local.l25           ; 0x0f0f
    mov ax, word [bx - 0x6a54]       ; 0x0f11
    cmp ax, word [data_9b00]         ; 0x0f15
    jne short @..local.l25           ; 0x0f19
    mov ax, word [data_9b06]         ; 0x0f1b
    mov word [bx - 0x6f46], ax       ; 0x0f1e
@..local.l25:
    mov ax, word [bx - 0x6cba]       ; 0x0f22
    cmp ax, word [data_9afc]         ; 0x0f26
    jne short @..local.l26           ; 0x0f2a
    mov ax, word [bx - 0x6a30]       ; 0x0f2c
    cmp ax, word [data_9b04]         ; 0x0f30
    jne short @..local.l26           ; 0x0f34
    mov ax, word [bx - 0x6cb8]       ; 0x0f36
    cmp ax, word [data_9afc]         ; 0x0f3a
    jne short @..local.l26           ; 0x0f3e
    mov ax, word [bx - 0x6a54]       ; 0x0f40
    cmp ax, word [data_9b04]         ; 0x0f44
    jne short @..local.l26           ; 0x0f48
    mov ax, word [data_9b08]         ; 0x0f4a
    mov word [bx - 0x6f46], ax       ; 0x0f4d
@..local.l26:
    ret                              ; 0x0f51
%include "vdopt/math_loc_0f52.asm"

%include "vdopt/api_idx_000a.asm"

%include "vdopt/api_idx_0012.asm"

    mov ax, 0xffff                   ; 0x11d3
    cmp word [bp + 0x4], byte 1      ; 0x11d6
    jle short loc_11df               ; 0x11da
    mov ax, 0x17                     ; 0x11dc
    mov word [data_95ce], ax         ; 0x11df
    jmp near @..api_idx_0012.l6      ; 0x11e2
    mov ax, 0xffff                   ; 0x11e5
    cmp word [bp + 0x4], byte 1      ; 0x11e8
    jle short loc_11f1               ; 0x11ec
    mov ax, 0x10                     ; 0x11ee
    mov word [data_9af8], ax         ; 0x11f1
    mov ax, 0xffff                   ; 0x11f4
    cmp word [bp + 0x4], byte 1      ; 0x11f7
    jle short loc_1200               ; 0x11fb
    mov ax, 0x11                     ; 0x11fd
    mov word [data_9b00], ax         ; 0x1200
    mov ax, 0x12                     ; 0x1203
    cmp word [bp + 0x4], byte 2      ; 0x1206
    jg short loc_1218                ; 0x120a
    mov ax, 0xffff                   ; 0x120c
    cmp word [bp + 0x4], byte 1      ; 0x120f
    jle short loc_1218               ; 0x1213
    mov ax, 0x10                     ; 0x1215
    mov word [data_9af6], ax         ; 0x1218
    mov ax, 0x13                     ; 0x121b
    cmp word [bp + 0x4], byte 2      ; 0x121e
    jg short loc_1230                ; 0x1222
    mov ax, 0xffff                   ; 0x1224
    cmp word [bp + 0x4], byte 1      ; 0x1227
    jle short loc_1230               ; 0x122b
    mov ax, 0x11                     ; 0x122d
    mov word [data_9afe], ax         ; 0x1230
    mov ax, 0x14                     ; 0x1233
    cmp word [bp + 0x4], byte 2      ; 0x1236
    jg short loc_1248                ; 0x123a
    mov ax, 0xffff                   ; 0x123c
    cmp word [bp + 0x4], byte 1      ; 0x123f
    jle short loc_1248               ; 0x1243
    mov ax, 0x10                     ; 0x1245
    mov word [data_9afa], ax         ; 0x1248
    mov ax, 0x15                     ; 0x124b
    cmp word [bp + 0x4], byte 2      ; 0x124e
    jg short loc_1260                ; 0x1252
    mov ax, 0xffff                   ; 0x1254
    cmp word [bp + 0x4], byte 1      ; 0x1257
    jle short loc_1260               ; 0x125b
    mov ax, 0x11                     ; 0x125d
    mov word [data_9b02], ax         ; 0x1260
    mov word [data_9af0], 4          ; 0x1263
    mov word [data_9af4], 3          ; 0x1269
    mov word [data_9af2], 0xffff     ; 0x126f
    mov word [data_9342], 7          ; 0x1275
    mov word [data_9b06], 7          ; 0x127b
    mov ax, 0xffff                   ; 0x1281
    cmp word [bp + 0x4], byte 1      ; 0x1284
    jle short loc_128d               ; 0x1288
    mov ax, 0x10                     ; 0x128a
    mov word [data_9344], ax         ; 0x128d
    mov ax, 0xffff                   ; 0x1290
    cmp word [bp + 0x4], byte 1      ; 0x1293
    jle short loc_129c               ; 0x1297
    mov ax, 0x11                     ; 0x1299
    mov word [data_95ce], ax         ; 0x129c
    jmp near @..api_idx_0012.l6      ; 0x129f
    mov ax, 0xffff                   ; 0x12a2
    cmp word [bp + 0x4], byte 1      ; 0x12a5
    jle short loc_12ae               ; 0x12a9
    mov ax, 0x18                     ; 0x12ab
    mov word [data_9af8], ax         ; 0x12ae
    mov ax, 0xffff                   ; 0x12b1
    cmp word [bp + 0x4], byte 1      ; 0x12b4
    jle short loc_12bd               ; 0x12b8
    mov ax, 0x19                     ; 0x12ba
    mov word [data_9b00], ax         ; 0x12bd
    mov ax, 0xffff                   ; 0x12c0
    cmp word [bp + 0x4], byte 1      ; 0x12c3
    jle short loc_12cc               ; 0x12c7
    mov ax, 0x18                     ; 0x12c9
    mov word [data_9af6], ax         ; 0x12cc
    mov ax, 0xffff                   ; 0x12cf
    cmp word [bp + 0x4], byte 1      ; 0x12d2
    jle short loc_12db               ; 0x12d6
    mov ax, 0x19                     ; 0x12d8
    mov word [data_9afe], ax         ; 0x12db
    mov ax, 0xffff                   ; 0x12de
    cmp word [bp + 0x4], byte 1      ; 0x12e1
    jle short loc_12ea               ; 0x12e5
    mov ax, 0x18                     ; 0x12e7
    mov word [data_9afa], ax         ; 0x12ea
    mov ax, 0xffff                   ; 0x12ed
    cmp word [bp + 0x4], byte 1      ; 0x12f0
    jle short loc_12f9               ; 0x12f4
    mov ax, 0x19                     ; 0x12f6
    mov word [data_9b02], ax         ; 0x12f9
    mov word [data_9af0], 1          ; 0x12fc
    mov word [data_9af4], 4          ; 0x1302
    mov word [data_9af2], 0xffff     ; 0x1308
    mov word [data_9342], 8          ; 0x130e
    mov word [data_9b06], 9          ; 0x1314
    mov ax, 0xffff                   ; 0x131a
    cmp word [bp + 0x4], byte 1      ; 0x131d
    jle short loc_1326               ; 0x1321
    mov ax, 0x16                     ; 0x1323
    mov word [data_9344], ax         ; 0x1326
    mov ax, 0xffff                   ; 0x1329
    cmp word [bp + 0x4], byte 1      ; 0x132c
    jle short loc_1335               ; 0x1330
    mov ax, 0x17                     ; 0x1332
    mov word [data_95ce], ax         ; 0x1335
    jmp near @..api_idx_0012.l6      ; 0x1338
    mov ax, 0xffff                   ; 0x133b
    cmp word [bp + 0x4], byte 1      ; 0x133e
    jle short loc_1347               ; 0x1342
    mov ax, 0x18                     ; 0x1344
    mov word [data_9af8], ax         ; 0x1347
    mov ax, 0xffff                   ; 0x134a
    cmp word [bp + 0x4], byte 1      ; 0x134d
    jle short loc_1356               ; 0x1351
    mov ax, 0x19                     ; 0x1353
    mov word [data_9b00], ax         ; 0x1356
    mov ax, 0xffff                   ; 0x1359
    cmp word [bp + 0x4], byte 1      ; 0x135c
    jle short loc_1365               ; 0x1360
    mov ax, 0x18                     ; 0x1362
    mov word [data_9af6], ax         ; 0x1365
    mov ax, 0xffff                   ; 0x1368
    cmp word [bp + 0x4], byte 1      ; 0x136b
    jle short loc_1374               ; 0x136f
    mov ax, 0x19                     ; 0x1371
    mov word [data_9afe], ax         ; 0x1374
    mov ax, 0xffff                   ; 0x1377
    cmp word [bp + 0x4], byte 1      ; 0x137a
    jle short loc_1383               ; 0x137e
    mov ax, 0x18                     ; 0x1380
    mov word [data_9afa], ax         ; 0x1383
    mov ax, 0xffff                   ; 0x1386
    cmp word [bp + 0x4], byte 1      ; 0x1389
    jle short loc_1392               ; 0x138d
    mov ax, 0x19                     ; 0x138f
    mov word [data_9b02], ax         ; 0x1392
    mov word [data_9af0], 1          ; 0x1395
    mov word [data_9af4], 4          ; 0x139b
    mov word [data_9af2], 0xffff     ; 0x13a1
    mov word [data_9342], 9          ; 0x13a7
    mov word [data_9b06], 9          ; 0x13ad
    mov ax, 0xffff                   ; 0x13b3
    cmp word [bp + 0x4], byte 1      ; 0x13b6
    jle short loc_13bf               ; 0x13ba
    mov ax, 0x18                     ; 0x13bc
    mov word [data_9344], ax         ; 0x13bf
    mov ax, 0xffff                   ; 0x13c2
    cmp word [bp + 0x4], byte 1      ; 0x13c5
    jle short loc_13ce               ; 0x13c9
    mov ax, 0x19                     ; 0x13cb
    mov word [data_95ce], ax         ; 0x13ce
    jmp near @..api_idx_0012.l6      ; 0x13d1
    mov ax, 0xffff                   ; 0x13d4
    cmp word [bp + 0x4], byte 1      ; 0x13d7
    jle short loc_13e0               ; 0x13db
    mov ax, 0x10                     ; 0x13dd
    mov word [data_9af8], ax         ; 0x13e0
    mov ax, 0xffff                   ; 0x13e3
    cmp word [bp + 0x4], byte 1      ; 0x13e6
    jle short loc_13ef               ; 0x13ea
    mov ax, 0x11                     ; 0x13ec
    mov word [data_9b00], ax         ; 0x13ef
    mov ax, 0x12                     ; 0x13f2
    cmp word [bp + 0x4], byte 2      ; 0x13f5
    jg short loc_1407                ; 0x13f9
    mov ax, 0xffff                   ; 0x13fb
    cmp word [bp + 0x4], byte 1      ; 0x13fe
    jle short loc_1407               ; 0x1402
    mov ax, 0x10                     ; 0x1404
    mov word [data_9af6], ax         ; 0x1407
    mov ax, 0x13                     ; 0x140a
    cmp word [bp + 0x4], byte 2      ; 0x140d
    jg short loc_141f                ; 0x1411
    mov ax, 0xffff                   ; 0x1413
    cmp word [bp + 0x4], byte 1      ; 0x1416
    jle short loc_141f               ; 0x141a
    mov ax, 0x11                     ; 0x141c
    mov word [data_9afe], ax         ; 0x141f
    mov ax, 0x14                     ; 0x1422
    cmp word [bp + 0x4], byte 2      ; 0x1425
    jg short loc_1437                ; 0x1429
    mov ax, 0xffff                   ; 0x142b
    cmp word [bp + 0x4], byte 1      ; 0x142e
    jle short loc_1437               ; 0x1432
    mov ax, 0x10                     ; 0x1434
    mov word [data_9afa], ax         ; 0x1437
    mov ax, 0x15                     ; 0x143a
    cmp word [bp + 0x4], byte 2      ; 0x143d
    jg short loc_144f                ; 0x1441
    mov ax, 0xffff                   ; 0x1443
    cmp word [bp + 0x4], byte 1      ; 0x1446
    jle short loc_144f               ; 0x144a
    mov ax, 0x11                     ; 0x144c
    mov word [data_9b02], ax         ; 0x144f
    mov word [data_9af0], 5          ; 0x1452
    mov word [data_9af4], 4          ; 0x1458
    mov word [data_9af2], data_0002  ; 0x145e
    mov word [data_9342], 7          ; 0x1464
    mov word [data_9b06], 7          ; 0x146a
    mov word [data_9344], 0xffff     ; 0x1470
    mov word [data_95ce], 0xffff     ; 0x1476
    jmp short @..api_idx_0012.l6     ; 0x147c
    loopne loc_14e4                  ; 0x147e
    mov dl, 0x60                     ; 0x1480
    outsw                            ; 0x1482
    popaw                            ; 0x1483
    sub al, 0x62                     ; 0x1484
    jmp near 0x96eb                  ; 0x1486
    arpl word [bp + di], bx          ; 0x1489
    db 0x64
@..api_idx_0012.l5:
    cmp ax, strict word 7            ; 0x148c
    jae short @..api_idx_0012.l6     ; 0x148f
    xchg bx, ax                      ; 0x1491
    shl bx, 1                        ; 0x1492
    jmp [cs:bx + 0x64c5]             ; 0x1494
@..api_idx_0012.l6:
    mov word [data_9aea], data_0002  ; 0x1499
    mov word [data_9b08], 8          ; 0x149f
    mov ax, 0xffff                   ; 0x14a5
    cmp word [bp + 0x4], byte 1      ; 0x14a8
    jle short @..api_idx_0012.l7     ; 0x14ac
    mov ax, 0x16                     ; 0x14ae
@..api_idx_0012.l7:
    mov word [data_9afc], ax         ; 0x14b1
    mov ax, 0xffff                   ; 0x14b4
    cmp word [bp + 0x4], byte 1      ; 0x14b7
    jle short @..api_idx_0012.l8     ; 0x14bb
    mov ax, 0x17                     ; 0x14bd
@..api_idx_0012.l8:
    mov word [data_9b04], ax         ; 0x14c0
    mov ax, word [data_9af0]         ; 0x14c3
    cmp word [bp + 0x4], byte 3      ; 0x14c6
    jle short @..api_idx_0012.l9     ; 0x14ca
    mov ax, 0x1a                     ; 0x14cc
@..api_idx_0012.l9:
    mov word [data_9ae2], ax         ; 0x14cf
    mov ax, word [data_9af0]         ; 0x14d2
    cmp word [bp + 0x4], byte 3      ; 0x14d5
    jle short @..api_idx_0012.l10    ; 0x14d9
    mov ax, 0x1b                     ; 0x14db
@..api_idx_0012.l10:
    mov word [data_9ae4], ax         ; 0x14de
    mov ax, word [data_9af0]         ; 0x14e1
    cmp word [bp + 0x4], byte 3      ; 0x14e4
    jle short @..api_idx_0012.l11    ; 0x14e8
    mov ax, 0x1c                     ; 0x14ea
@..api_idx_0012.l11:
    mov word [data_9aee], ax         ; 0x14ed
    mov ax, word [data_9af0]         ; 0x14f0
    cmp word [bp + 0x4], byte 3      ; 0x14f3
    jle short @..api_idx_0012.l12    ; 0x14f7
    mov ax, 0x1e                     ; 0x14f9
@..api_idx_0012.l12:
    mov word [data_9aec], ax         ; 0x14fc
    mov ax, word [data_9af0]         ; 0x14ff
    cmp word [bp + 0x4], byte 3      ; 0x1502
    jle short @..api_idx_0012.l13    ; 0x1506
    mov ax, 0x1d                     ; 0x1508
@..api_idx_0012.l13:
    mov word [data_9ae8], ax         ; 0x150b
    mov ax, word [data_9af0]         ; 0x150e
    cmp word [bp + 0x4], byte 3      ; 0x1511
    jle short @..api_idx_0012.l14    ; 0x1515
    mov ax, 0x1f                     ; 0x1517
@..api_idx_0012.l14:
    mov word [data_9ae6], ax         ; 0x151a
    mov word [bp - 0x0002], 0        ; 0x151d
    jmp short @..api_idx_0012.l18    ; 0x1522
@..api_idx_0012.l15:
    mov word [bp - 0x0004], 0        ; 0x1524
    jmp short @..api_idx_0012.l17    ; 0x1529
@..api_idx_0012.l16:
    mov ax, word [data_9af0]         ; 0x152b
    push ax                          ; 0x152e
    mov ax, 0x24                     ; 0x152f
    imul word [bp - 0x0002]          ; 0x1532
    mov cx, ax                       ; 0x1535
    mov dx, word [bp - 0x0004]       ; 0x1537
    shl dx, 1                        ; 0x153a
    add ax, dx                       ; 0x153c
    mov bx, ax                       ; 0x153e
    pop ax                           ; 0x1540
    mov word [bx - 0x6f46], ax       ; 0x1541
    mov word [bx - 0x6cba], 0xffff   ; 0x1545
    mov word [bx - 0x6a30], 0xffff   ; 0x154b
    inc word [bp - 0x0004]           ; 0x1551
@..api_idx_0012.l17:
    mov ax, word [bp - 0x0008]       ; 0x1554
    inc ax                           ; 0x1557
    cmp ax, word [bp - 0x0004]       ; 0x1558
    jge short @..api_idx_0012.l16    ; 0x155b
    inc word [bp - 0x0002]           ; 0x155d
@..api_idx_0012.l18:
    mov ax, word [bp - 0x0006]       ; 0x1560
    inc ax                           ; 0x1563
    cmp ax, word [bp - 0x0002]       ; 0x1564
    jge short @..api_idx_0012.l15    ; 0x1567
    mov ax, 0                        ; 0x1569
    push ax                          ; 0x156c
    mov ax, 7                        ; 0x156d
    imul word [bp - 0x0008]          ; 0x1570
    add ax, word [data_9b0a]         ; 0x1573
    dec ax                           ; 0x1577
    push ax                          ; 0x1578
    mov ax, 7                        ; 0x1579
    imul word [bp - 0x0006]          ; 0x157c
    add ax, word [data_9b0c]         ; 0x157f
    dec ax                           ; 0x1583
    push ax                          ; 0x1584
    push word [data_9b0a]            ; 0x1585
    push word [data_9b0c]            ; 0x1589
    call ds_dispatch_e901            ; 0x158d
    add sp, byte 0x0a                ; 0x1590
    mov word [bp - 0x0004], 1        ; 0x1593
    jmp short @..api_idx_0012.l25    ; 0x1598
@..api_idx_0012.l19:
    mov word [bp - 0x0002], 1        ; 0x159a
    jmp short @..api_idx_0012.l24    ; 0x159f
@..api_idx_0012.l20:
    cmp word [data_9858], byte 0     ; 0x15a1
    jne short @..api_idx_0012.l21    ; 0x15a6
    cmp word [bp + 0x6], byte 0      ; 0x15a8
    jne short @..api_idx_0012.l22    ; 0x15ac
    cmp word [bp + 0x4], byte 4      ; 0x15ae
    jle short @..api_idx_0012.l22    ; 0x15b2
@..api_idx_0012.l21:
    mov ax, 1                        ; 0x15b4
    jmp short @..api_idx_0012.l23    ; 0x15b7
@..api_idx_0012.l22:
    mov ax, 0                        ; 0x15b9
@..api_idx_0012.l23:
    push ax                          ; 0x15bc
    push word [bp - 0x0004]          ; 0x15bd
    push word [bp - 0x0002]          ; 0x15c0
    mov ax, word [data_8f44]         ; 0x15c3
    mov cx, word [bp - 0x0004]       ; 0x15c6
    dec cx                           ; 0x15c9
    sub ax, cx                       ; 0x15ca
    add ax, word [bp - 0x000c]       ; 0x15cc
    push ax                          ; 0x15cf
    mov ax, word [data_8f46]         ; 0x15d0
    add ax, word [bp - 0x0002]       ; 0x15d3
    dec ax                           ; 0x15d6
    sub ax, word [bp - 0x000a]       ; 0x15d7
    push ax                          ; 0x15da
    call api_idx_0014                ; 0x15db
    add sp, byte 0x0a                ; 0x15de
    inc word [bp - 0x0002]           ; 0x15e1
@..api_idx_0012.l24:
    mov ax, word [bp - 0x0002]       ; 0x15e4
    cmp ax, word [bp - 0x0006]       ; 0x15e7
    jle short @..api_idx_0012.l20    ; 0x15ea
    inc word [bp - 0x0004]           ; 0x15ec
@..api_idx_0012.l25:
    mov ax, word [bp - 0x0004]       ; 0x15ef
    cmp ax, word [bp - 0x0008]       ; 0x15f2
    jle short @..api_idx_0012.l19    ; 0x15f5
    cmp word [bp + 0x4], byte 1      ; 0x15f7
    jle short @..api_idx_0012.l30    ; 0x15fb
    mov word [bp - 0x0004], 1        ; 0x15fd
    jmp short @..api_idx_0012.l29    ; 0x1602
@..api_idx_0012.l26:
    mov word [bp - 0x0002], 1        ; 0x1604
    jmp short @..api_idx_0012.l28    ; 0x1609
@..api_idx_0012.l27:
    push word [bp - 0x0004]          ; 0x160b
    push word [bp - 0x0002]          ; 0x160e
    call loc_0ede                    ; 0x1611
    add sp, byte 4                   ; 0x1614
    inc word [bp - 0x0002]           ; 0x1617
@..api_idx_0012.l28:
    mov ax, word [bp - 0x0002]       ; 0x161a
    cmp ax, word [bp - 0x0006]       ; 0x161d
    jle short @..api_idx_0012.l27    ; 0x1620
    inc word [bp - 0x0004]           ; 0x1622
@..api_idx_0012.l29:
    mov ax, word [bp - 0x0004]       ; 0x1625
    cmp ax, word [bp - 0x0008]       ; 0x1628
    jle short @..api_idx_0012.l26    ; 0x162b
@..api_idx_0012.l30:
    mov word [bp - 0x0004], 1        ; 0x162d
    jmp short @..api_idx_0012.l35    ; 0x1632
@..api_idx_0012.l31:
    mov word [bp - 0x0002], 1        ; 0x1634
    jmp short @..api_idx_0012.l34    ; 0x1639
@..api_idx_0012.l32:
    mov ax, 0x24                     ; 0x163b
    imul word [bp - 0x0002]          ; 0x163e
    mov cx, word [bp - 0x0004]       ; 0x1641
    shl cx, 1                        ; 0x1644
    add ax, cx                       ; 0x1646
    mov bx, ax                       ; 0x1648
    cmp word [bx - 0x6f46], byte 0xff ; 0x164a
    je short @..api_idx_0012.l33     ; 0x164f
    mov ax, 0                        ; 0x1651
    push ax                          ; 0x1654
    push ax                          ; 0x1655
    push word [bx - 0x6f46]          ; 0x1656
    mov ax, word [bp - 0x0004]       ; 0x165a
    dec ax                           ; 0x165d
    push ax                          ; 0x165e
    mov ax, word [bp - 0x0002]       ; 0x165f
    dec ax                           ; 0x1662
    push ax                          ; 0x1663
    call api_idx_000a                ; 0x1664
    add sp, byte 0x0a                ; 0x1667
@..api_idx_0012.l33:
    inc word [bp - 0x0002]           ; 0x166a
@..api_idx_0012.l34:
    mov ax, word [bp - 0x0002]       ; 0x166d
    cmp ax, word [bp - 0x0006]       ; 0x1670
    jle short @..api_idx_0012.l32    ; 0x1673
    inc word [bp - 0x0004]           ; 0x1675
@..api_idx_0012.l35:
    mov ax, word [bp - 0x0004]       ; 0x1678
    cmp ax, word [bp - 0x0008]       ; 0x167b
    jle short @..api_idx_0012.l31    ; 0x167e
    mov word [bp - 0x0004], 0        ; 0x1680
    jmp short @..api_idx_0012.l41    ; 0x1685
@..api_idx_0012.l36:
    mov word [bp - 0x0002], 0        ; 0x1687
    jmp short @..api_idx_0012.l40    ; 0x168c
@..api_idx_0012.l37:
    mov ax, 0x24                     ; 0x168e
    imul word [bp - 0x0002]          ; 0x1691
    mov cx, word [bp - 0x0004]       ; 0x1694
    shl cx, 1                        ; 0x1697
    add ax, cx                       ; 0x1699
    mov bx, ax                       ; 0x169b
    cmp word [bx - 0x6cba], byte 0xff ; 0x169d
    je short @..api_idx_0012.l38     ; 0x16a2
    mov ax, 0xffff                   ; 0x16a4
    push ax                          ; 0x16a7
    push ax                          ; 0x16a8
    push word [bx - 0x6cba]          ; 0x16a9
    mov ax, word [bp - 0x0004]       ; 0x16ad
    dec ax                           ; 0x16b0
    push ax                          ; 0x16b1
    mov ax, word [bp - 0x0002]       ; 0x16b2
    dec ax                           ; 0x16b5
    push ax                          ; 0x16b6
    call api_idx_000a                ; 0x16b7
    add sp, byte 0x0a                ; 0x16ba
@..api_idx_0012.l38:
    mov ax, 0x24                     ; 0x16bd
    imul word [bp - 0x0002]          ; 0x16c0
    mov cx, word [bp - 0x0004]       ; 0x16c3
    shl cx, 1                        ; 0x16c6
    add ax, cx                       ; 0x16c8
    mov bx, ax                       ; 0x16ca
    cmp word [bx - 0x6a30], byte 0xff ; 0x16cc
    je short @..api_idx_0012.l39     ; 0x16d1
    mov ax, 0xffff                   ; 0x16d3
    push ax                          ; 0x16d6
    push ax                          ; 0x16d7
    push word [bx - 0x6a30]          ; 0x16d8
    mov ax, word [bp - 0x0004]       ; 0x16dc
    dec ax                           ; 0x16df
    push ax                          ; 0x16e0
    mov ax, word [bp - 0x0002]       ; 0x16e1
    dec ax                           ; 0x16e4
    push ax                          ; 0x16e5
    call api_idx_000a                ; 0x16e6
    add sp, byte 0x0a                ; 0x16e9
@..api_idx_0012.l39:
    inc word [bp - 0x0002]           ; 0x16ec
@..api_idx_0012.l40:
    mov ax, word [bp - 0x0006]       ; 0x16ef
    inc ax                           ; 0x16f2
    cmp ax, word [bp - 0x0002]       ; 0x16f3
    jge short @..api_idx_0012.l37    ; 0x16f6
    inc word [bp - 0x0004]           ; 0x16f8
@..api_idx_0012.l41:
    mov ax, word [bp - 0x0008]       ; 0x16fb
    inc ax                           ; 0x16fe
    cmp ax, word [bp - 0x0004]       ; 0x16ff
    jge short @..api_idx_0012.l36    ; 0x1702
    cmp word [data_9858], byte 0     ; 0x1704
    je short @..api_idx_0012.l47     ; 0x1709
    mov word [bp - 0x0004], 0        ; 0x170b
    jmp short @..api_idx_0012.l46    ; 0x1710
@..api_idx_0012.l42:
    mov word [bp - 0x0002], 0        ; 0x1712
    jmp short @..api_idx_0012.l45    ; 0x1717
@..api_idx_0012.l43:
    mov ax, 0x24                     ; 0x1719
    imul word [bp - 0x0002]          ; 0x171c
    mov cx, word [bp - 0x0004]       ; 0x171f
    shl cx, 1                        ; 0x1722
    add ax, cx                       ; 0x1724
    mov bx, ax                       ; 0x1726
    cmp word [bx - 0x67a6], byte 1   ; 0x1728
    jne short @..api_idx_0012.l44    ; 0x172d
    mov ax, word [bp - 0x0004]       ; 0x172f
    dec ax                           ; 0x1732
    push ax                          ; 0x1733
    mov ax, word [bp - 0x0002]       ; 0x1734
    dec ax                           ; 0x1737
    push ax                          ; 0x1738
    call math_loc_0f52               ; 0x1739
    add sp, byte 4                   ; 0x173c
@..api_idx_0012.l44:
    inc word [bp - 0x0002]           ; 0x173f
@..api_idx_0012.l45:
    mov ax, word [bp - 0x0002]       ; 0x1742
    cmp ax, word [bp - 0x0006]       ; 0x1745
    jle short @..api_idx_0012.l43    ; 0x1748
    inc word [bp - 0x0004]           ; 0x174a
@..api_idx_0012.l46:
    mov ax, word [bp - 0x0004]       ; 0x174d
    cmp ax, word [bp - 0x0008]       ; 0x1750
    jle short @..api_idx_0012.l42    ; 0x1753
@..api_idx_0012.l47:
    mov ax, 7                        ; 0x1755
    imul word [bp - 0x0008]          ; 0x1758
    add ax, word [data_9b0a]         ; 0x175b
    dec ax                           ; 0x175f
    push ax                          ; 0x1760
    mov ax, 7                        ; 0x1761
    imul word [bp - 0x0006]          ; 0x1764
    add ax, word [data_9b0c]         ; 0x1767
    dec ax                           ; 0x176b
    push ax                          ; 0x176c
    push word [data_9b0a]            ; 0x176d
    push word [data_9b0c]            ; 0x1771
    call 0xbbbc                      ; 0x1775
    add sp, byte 8                   ; 0x1778
    mov ax, 0x8d                     ; 0x177b
    push ax                          ; 0x177e
    mov ax, 0xf8                     ; 0x177f
    push ax                          ; 0x1782
    mov ax, 0x21                     ; 0x1783
    push ax                          ; 0x1786
    mov ax, 0x48                     ; 0x1787
    push ax                          ; 0x178a
    call ds_dispatch_e8da            ; 0x178b
    add sp, byte 8                   ; 0x178e
    call ds_dispatch_ec17            ; 0x1791
    mov ax, word [bp - 0x0008]       ; 0x1794
    mov cx, data_0002                ; 0x1797
    cwd                              ; 0x179a
    idiv cx                          ; 0x179b
    mov cx, 7                        ; 0x179d
    imul cx                          ; 0x17a0
    add ax, word [data_9b0a]         ; 0x17a2
    add ax, strict word 7            ; 0x17a6
    push ax                          ; 0x17a9
    mov ax, word [bp - 0x0006]       ; 0x17aa
    mov cx, data_0002                ; 0x17ad
    cwd                              ; 0x17b0
    idiv cx                          ; 0x17b1
    mov cx, 7                        ; 0x17b3
    imul cx                          ; 0x17b6
    add ax, word [data_9b0c]         ; 0x17b8
    add ax, strict word 7            ; 0x17bc
    push ax                          ; 0x17bf
    mov ax, word [bp - 0x0008]       ; 0x17c0
    mov cx, data_0002                ; 0x17c3
    cwd                              ; 0x17c6
    idiv cx                          ; 0x17c7
    mov cx, 7                        ; 0x17c9
    imul cx                          ; 0x17cc
    add ax, word [data_9b0a]         ; 0x17ce
    push ax                          ; 0x17d2
    mov ax, word [bp - 0x0006]       ; 0x17d3
    mov cx, data_0002                ; 0x17d6
    cwd                              ; 0x17d9
    idiv cx                          ; 0x17da
    mov cx, 7                        ; 0x17dc
    imul cx                          ; 0x17df
    add ax, word [data_9b0c]         ; 0x17e1
    push ax                          ; 0x17e5
    call ds_dispatch_e928            ; 0x17e6
    add sp, byte 8                   ; 0x17e9
    mov word [bp - 0x0010], dx       ; 0x17ec
    mov word [bp - 0x0012], ax       ; 0x17ef
@..api_idx_0012.l48:
    call ds_dispatch_baef            ; 0x17f2
    test ax, ax                      ; 0x17f5
    je short @..api_idx_0012.l49     ; 0x17f7
    jmp near @..api_idx_0012.l50     ; 0x17f9
@..api_idx_0012.l49:
    mov ax, 0                        ; 0x17fc
    push ax                          ; 0x17ff
    push ax                          ; 0x1800
    mov ax, word [data_82ee]         ; 0x1801
    add ax, strict word 0x20         ; 0x1804
    push ax                          ; 0x1807
    mov ax, word [bp - 0x0008]       ; 0x1808
    mov cx, data_0002                ; 0x180b
    cwd                              ; 0x180e
    idiv cx                          ; 0x180f
    push ax                          ; 0x1811
    mov ax, word [bp - 0x0006]       ; 0x1812
    cwd                              ; 0x1815
    idiv cx                          ; 0x1816
    push ax                          ; 0x1818
    call api_idx_000a                ; 0x1819
    add sp, byte 0x0a                ; 0x181c
    mov ax, word [bp - 0x0008]       ; 0x181f
    mov cx, data_0002                ; 0x1822
    cwd                              ; 0x1825
    idiv cx                          ; 0x1826
    mov cx, 7                        ; 0x1828
    imul cx                          ; 0x182b
    add ax, word [data_9b0a]         ; 0x182d
    add ax, strict word 7            ; 0x1831
    push ax                          ; 0x1834
    mov ax, word [bp - 0x0006]       ; 0x1835
    mov cx, data_0002                ; 0x1838
    cwd                              ; 0x183b
    idiv cx                          ; 0x183c
    mov cx, 7                        ; 0x183e
    imul cx                          ; 0x1841
    add ax, word [data_9b0c]         ; 0x1843
    add ax, strict word 7            ; 0x1847
    push ax                          ; 0x184a
    mov ax, word [bp - 0x0008]       ; 0x184b
    mov cx, data_0002                ; 0x184e
    cwd                              ; 0x1851
    idiv cx                          ; 0x1852
    mov cx, 7                        ; 0x1854
    imul cx                          ; 0x1857
    add ax, word [data_9b0a]         ; 0x1859
    push ax                          ; 0x185d
    mov ax, word [bp - 0x0006]       ; 0x185e
    mov cx, data_0002                ; 0x1861
    cwd                              ; 0x1864
    idiv cx                          ; 0x1865
    mov cx, 7                        ; 0x1867
    imul cx                          ; 0x186a
    add ax, word [data_9b0c]         ; 0x186c
    push ax                          ; 0x1870
    call ds_dispatch_e8da            ; 0x1871
    add sp, byte 8                   ; 0x1874
    mov ax, 0x12c                    ; 0x1877
    push ax                          ; 0x187a
    call ds_dispatch_e489            ; 0x187b
    pop cx                           ; 0x187e
    mov ax, 0                        ; 0x187f
    push ax                          ; 0x1882
    push word [bp - 0x0010]          ; 0x1883
    push word [bp - 0x0012]          ; 0x1886
    call ds_dispatch_e94f            ; 0x1889
    add sp, byte 6                   ; 0x188c
    mov ax, word [bp - 0x0008]       ; 0x188f
    mov cx, data_0002                ; 0x1892
    cwd                              ; 0x1895
    idiv cx                          ; 0x1896
    mov cx, 7                        ; 0x1898
    imul cx                          ; 0x189b
    add ax, word [data_9b0a]         ; 0x189d
    add ax, strict word 7            ; 0x18a1
    push ax                          ; 0x18a4
    mov ax, word [bp - 0x0006]       ; 0x18a5
    mov cx, data_0002                ; 0x18a8
    cwd                              ; 0x18ab
    idiv cx                          ; 0x18ac
    mov cx, 7                        ; 0x18ae
    imul cx                          ; 0x18b1
    add ax, word [data_9b0c]         ; 0x18b3
    add ax, strict word 7            ; 0x18b7
    push ax                          ; 0x18ba
    mov ax, word [bp - 0x0008]       ; 0x18bb
    mov cx, data_0002                ; 0x18be
    cwd                              ; 0x18c1
    idiv cx                          ; 0x18c2
    mov cx, 7                        ; 0x18c4
    imul cx                          ; 0x18c7
    add ax, word [data_9b0a]         ; 0x18c9
    push ax                          ; 0x18cd
    mov ax, word [bp - 0x0006]       ; 0x18ce
    mov cx, data_0002                ; 0x18d1
    cwd                              ; 0x18d4
    idiv cx                          ; 0x18d5
    mov cx, 7                        ; 0x18d7
    imul cx                          ; 0x18da
    add ax, word [data_9b0c]         ; 0x18dc
    push ax                          ; 0x18e0
    call ds_dispatch_e8da            ; 0x18e1
    add sp, byte 8                   ; 0x18e4
    mov ax, 0x12c                    ; 0x18e7
    push ax                          ; 0x18ea
    call ds_dispatch_e489            ; 0x18eb
    pop cx                           ; 0x18ee
    jmp near @..api_idx_0012.l48     ; 0x18ef
@..api_idx_0012.l50:
    mov ax, 1                        ; 0x18f2
    push ax                          ; 0x18f5
    push word [bp - 0x0010]          ; 0x18f6
    push word [bp - 0x0012]          ; 0x18f9
    call ds_dispatch_e94f            ; 0x18fc
    add sp, byte 6                   ; 0x18ff
    mov ax, 0xf                      ; 0x1902
    push ax                          ; 0x1905
    call ds_dispatch_c12a            ; 0x1906
    pop cx                           ; 0x1909
    ret                              ; 0x190a
%include "vdopt/api_idx_000a_2.asm"

%include "vdopt/api_idx_0002_4.asm"

%include "vdopt/api_idx_00fa.asm"

    push ax                          ; 0x1c5d
    mov ax, 0x37                     ; 0x1c5e
    push ax                          ; 0x1c61
    call ds_dispatch_bb33            ; 0x1c62
    add sp, byte 8                   ; 0x1c65
    mov ax, 0xe                      ; 0x1c68
    push ax                          ; 0x1c6b
    call ds_dispatch_c12a            ; 0x1c6c
    pop cx                           ; 0x1c6f
    mov ax, data_0002                ; 0x1c70
    push ax                          ; 0x1c73
    mov ax, 3                        ; 0x1c74
    push ax                          ; 0x1c77
    call ds_dispatch_d61c            ; 0x1c78
    add sp, byte 4                   ; 0x1c7b
    ret                              ; 0x1c7e
%include "vdopt/math_loc_1c7f.asm"

%include "vdopt/api_idx_0008.asm"

    cmp byte [bx + 0x5e2f], data_0002 ; 0x1ecd
    jne short loc_1f47               ; 0x1ed2
    mov ax, 3                        ; 0x1ed4
    imul word [bp + 0x8]             ; 0x1ed7
    push ax                          ; 0x1eda
    mov al, byte [bx + 0x5d67]       ; 0x1edb
    db 0x2a, 0xe4 ; sub ah, ah
    db 0x8b, 0xd0 ; mov dx, ax
    mov cx, 0x15                     ; 0x1ee3
    db 0x2b, 0xc8 ; sub cx, ax
    pop ax                           ; 0x1ee8
    db 0x3b, 0xc1 ; cmp ax, cx
    jle short loc_1f47               ; 0x1eeb
    dec byte [bx + 0x5d67]           ; 0x1eed
    mov ax, 0xb7                     ; 0x1ef1
    push ax                          ; 0x1ef4
    db 0xe8, 0xb1, 0x98 ; call ds_dispatch_b7a9
    pop cx                           ; 0x1ef8
    add ax, 0xb7                     ; 0x1ef9
    cwd                              ; 0x1efc
    push ax                          ; 0x1efd
    push dx                          ; 0x1efe
    mov ax, 0x248                    ; 0x1eff
    imul word [bp + 0xa]             ; 0x1f02
    db 0x8b, 0xd8 ; mov bx, ax
    pop dx                           ; 0x1f07
    pop ax                           ; 0x1f08
    add word [bx + 0x5bfc], ax       ; 0x1f09
    adc word [bx + 0x5bfe], dx       ; 0x1f0d
    mov ax, 0x12                     ; 0x1f11
    push ax                          ; 0x1f14
    db 0xe8, 0x91, 0x98 ; call ds_dispatch_b7a9
    pop cx                           ; 0x1f18
    push ax                          ; 0x1f19
    mov ax, 0x248                    ; 0x1f1a
    imul word [bp + 0xa]             ; 0x1f1d
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx + 0x5d67]       ; 0x1f22
    db 0x2a, 0xe4 ; sub ah, ah
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax                           ; 0x1f2a
    db 0x3b, 0xc1 ; cmp ax, cx
    jle short loc_1f42               ; 0x1f2d
    mov byte [bx + 0x5e2f], 3        ; 0x1f2f
    mov word [bx + 0x5c0c], 0        ; 0x1f34
    mov word [bx + 0x5c10], 0        ; 0x1f3a
    jmp short loc_1f47               ; 0x1f40
    mov byte [bx + 0x5e2f], 0        ; 0x1f42
    db 0xe9, 0x42, 0x04 ; jmp near loc_238c
    mov ax, 0x248                    ; 0x1f4a
    imul word [bp + 0xa]             ; 0x1f4d
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx + 0x5d61]       ; 0x1f52
    db 0x2a, 0xe4 ; sub ah, ah
    push ax                          ; 0x1f58
    mov ax, 0x19                     ; 0x1f59
    imul word [bp + 0x8]             ; 0x1f5c
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax                           ; 0x1f61
    db 0x2b, 0xc1 ; sub ax, cx
    mov word [bp - 0x0002], ax       ; 0x1f64
    cmp ax, strict word 0            ; 0x1f67
    jge short loc_1f71               ; 0x1f6a
    mov word [bp - 0x0002], 0        ; 0x1f6c
    mov al, byte [bp - 0x0002]       ; 0x1f71
    mov byte [bx + 0x5d61], al       ; 0x1f74
    db 0xe9, 0x11, 0x04 ; jmp near loc_238c
    mov ax, 3                        ; 0x1f7b
    imul word [bp + 0x8]             ; 0x1f7e
    push ax                          ; 0x1f81
    mov ax, 0x248                    ; 0x1f82
    imul word [bp + 0xa]             ; 0x1f85
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx + 0x5d67]       ; 0x1f8a
    db 0x2a, 0xe4 ; sub ah, ah
    db 0x8b, 0xd0 ; mov dx, ax
    mov cx, 0x12                     ; 0x1f92
    db 0x2b, 0xc8 ; sub cx, ax
    pop ax                           ; 0x1f97
    db 0x3b, 0xc1 ; cmp ax, cx
    jle short loc_1fa1               ; 0x1f9a
    mov byte [bx + 0x5d60], 0        ; 0x1f9c
    db 0xe9, 0xe8, 0x03 ; jmp near loc_238c
    mov word [bp - 0x0002], 0        ; 0x1fa4
    jmp short loc_1fe0               ; 0x1fa9
    mov ax, 0x248                    ; 0x1fab
    imul word [bp + 0xa]             ; 0x1fae
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx + 0x5d5c]       ; 0x1fb3
    db 0x2a, 0xe4 ; sub ah, ah
    push ax                          ; 0x1fb9
    mov ax, word [bp + 0x8]          ; 0x1fba
    imul ax                          ; 0x1fbd
    db 0x8b, 0xc8 ; mov cx, ax
    add ax, strict word 4            ; 0x1fc1
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax                           ; 0x1fc6
    db 0x2b, 0xc1 ; sub ax, cx
    mov word [bp - 0x0004], ax       ; 0x1fc9
    cmp ax, strict word 0            ; 0x1fcc
    jge short loc_1fd6               ; 0x1fcf
    mov word [bp - 0x0004], 0        ; 0x1fd1
    mov al, byte [bp - 0x0004]       ; 0x1fd6
    mov byte [bx + 0x5d5c], al       ; 0x1fd9
    inc word [bp - 0x0002]           ; 0x1fdd
    mov ax, word [bp - 0x0002]       ; 0x1fe0
    cmp ax, word [data_69c8]         ; 0x1fe3
    jl short loc_1fab                ; 0x1fe7
    db 0xe9, 0xa0, 0x03 ; jmp near loc_238c
    mov word [bp - 0x0004], 1        ; 0x1fec
    mov ax, word [bp - 0x0004]       ; 0x1ff1
    cmp ax, strict word 1            ; 0x1ff4
    je short loc_200d                ; 0x1ff7
    cmp ax, strict word 2            ; 0x1ff9
    db 0x74, 0x0f ; je short loc_200d
    cmp ax, strict word 4            ; 0x1ffe
    db 0x74, 0x0a ; je short loc_200d
    cmp ax, strict word 8            ; 0x2003
    db 0x74, 0x05 ; je short loc_200d
    cmp ax, strict word 9            ; 0x2008
    jne short loc_2046               ; 0x200b
    mov ax, 0x248                    ; 0x200d
    imul word [bp + 0xa]             ; 0x2010
    db 0x8b, 0xc8 ; mov cx, ax
    mov ax, word [bp - 0x0004]       ; 0x2015
    db 0x03, 0xc8 ; add cx, ax
    db 0x8b, 0xd9 ; mov bx, cx
    mov al, byte [bx + 0x5d5a]       ; 0x201c
    db 0x2a, 0xe4 ; sub ah, ah
    push ax                          ; 0x2022
    mov ax, word [bp + 0x8]          ; 0x2023
    imul ax                          ; 0x2026
    db 0x8b, 0xc8 ; mov cx, ax
    add ax, strict word 4            ; 0x202a
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax                           ; 0x202f
    db 0x2b, 0xc1 ; sub ax, cx
    mov word [bp - 0x0002], ax       ; 0x2032
    cmp ax, strict word 0            ; 0x2035
    jge short loc_203f               ; 0x2038
    mov word [bp - 0x0002], 0        ; 0x203a
    mov al, byte [bp - 0x0002]       ; 0x203f
    mov byte [bx + 0x5d5a], al       ; 0x2042
    inc word [bp - 0x0004]           ; 0x2046
    mov ax, word [bp - 0x0004]       ; 0x2049
    cmp ax, strict word 9            ; 0x204c
    jle short loc_1ff1               ; 0x204f
    db 0xe9, 0x38, 0x03 ; jmp near loc_238c
    mov ax, 0                        ; 0x2054
    cmp word [bp + 0x6], byte 0x58   ; 0x2057
    je short loc_2060                ; 0x205b
    mov ax, word [bp + 0xa]          ; 0x205d
    mov word [bp - 0x0002], ax       ; 0x2060
    mov ax, word [data_69c8]         ; 0x2063
    cmp word [bp + 0x6], byte 0x58   ; 0x2066
    je short loc_2070                ; 0x206a
    mov ax, word [bp + 0xa]          ; 0x206c
    inc ax                           ; 0x206f
    mov word [bp - 0x0004], ax       ; 0x2070
    mov ax, 4                        ; 0x2073
    cmp word [bp + 0x6], byte 0x58   ; 0x2076
    je short loc_207f                ; 0x207a
    mov ax, 7                        ; 0x207c
    mov word [bp - 0x0006], ax       ; 0x207f
    mov ax, 0                        ; 0x2082
    cmp word [bp + 0x6], byte 0x58   ; 0x2085
    je short loc_208e                ; 0x2089
    mov ax, word [bp + 0x8]          ; 0x208b
    mov word [bp - 0x0008], ax       ; 0x208e
    jmp short loc_20f9               ; 0x2091
    mov ax, 0x248                    ; 0x2093
    imul word [bp - 0x0002]          ; 0x2096
    db 0x8b, 0xd8 ; mov bx, ax
    push word [bx + 0x5c0e]          ; 0x209b
    mov ax, 0                        ; 0x209f
    push ax                          ; 0x20a2
    push word [bp - 0x0008]          ; 0x20a3
    push word [bp - 0x0006]          ; 0x20a6
    push word [bp + 0x8]             ; 0x20a9
    db 0xe8, 0x3b, 0xb0 ; call ds_dispatch_d0ea
    add sp, byte 6                   ; 0x20af
    db 0x8b, 0xc8 ; mov cx, ax
    sub sp, byte 4                   ; 0x20b4
    db 0x8b, 0xc4 ; mov ax, sp
    mov dx, ss                       ; 0x20b9
    mov es, dx                       ; 0x20bb
    db 0x8b, 0xf1 ; mov si, cx
    db 0x8b, 0xf8 ; mov di, ax
    movsw                            ; 0x20c1
    movsw                            ; 0x20c2
    db 0xe8, 0xf8, 0xaf ; call ds_dispatch_d0be
    add sp, byte 4                   ; 0x20c6
    push ax                          ; 0x20c9
    mov ax, 0x248                    ; 0x20ca
    imul word [bp - 0x0002]          ; 0x20cd
    db 0x8b, 0xd8 ; mov bx, ax
    pop ax                           ; 0x20d2
    add ax, word [bx + 0x5c0c]       ; 0x20d3
    push ax                          ; 0x20d7
    db 0xe8, 0xe7, 0x96 ; call ds_dispatch_b7c2
    add sp, byte 6                   ; 0x20db
    push ax                          ; 0x20de
    mov ax, 0x248                    ; 0x20df
    imul word [bp - 0x0002]          ; 0x20e2
    db 0x8b, 0xd8 ; mov bx, ax
    pop ax                           ; 0x20e7
    mov word [bx + 0x5c0c], ax       ; 0x20e8
    add word [bx + 0x5bfc], byte 1   ; 0x20ec
    adc word [bx + 0x5bfe], byte 0   ; 0x20f1
    inc word [bp - 0x0002]           ; 0x20f6
    mov ax, word [bp - 0x0002]       ; 0x20f9
    cmp ax, word [bp - 0x0004]       ; 0x20fc
    jl short loc_2093                ; 0x20ff
    db 0xe9, 0x88, 0x02 ; jmp near loc_238c
    mov ax, 0x248                    ; 0x2104
    imul word [bp + 0xa]             ; 0x2107
    db 0x8b, 0xd8 ; mov bx, ax
    cmp byte [bx + 0x5e2f], 3        ; 0x210c
    je short loc_2116                ; 0x2111
    jmp near loc_2191                ; 0x2113
    mov ax, 3                        ; 0x2116
    imul word [bp + 0x8]             ; 0x2119
    push ax                          ; 0x211c
    mov al, byte [bx + 0x5d67]       ; 0x211d
    db 0x2a, 0xe4 ; sub ah, ah
    db 0x8b, 0xd0 ; mov dx, ax
    mov cx, 0x15                     ; 0x2125
    db 0x2b, 0xc8 ; sub cx, ax
    pop ax                           ; 0x212a
    db 0x3b, 0xc1 ; cmp ax, cx
    jle short loc_2191               ; 0x212d
    dec byte [bx + 0x5d67]           ; 0x212f
    mov byte [bx + 0x5e2f], 0        ; 0x2133
    push word [bx + 0x5c0e]          ; 0x2138
    mov ax, 1                        ; 0x213c
    push ax                          ; 0x213f
    mov ax, word [bx + 0x5c0e]       ; 0x2140
    mov cx, 3                        ; 0x2144
    cwd                              ; 0x2147
    idiv cx                          ; 0x2148
    push ax                          ; 0x214a
    db 0xe8, 0x74, 0x96 ; call ds_dispatch_b7c2
    add sp, byte 6                   ; 0x214e
    push ax                          ; 0x2151
    mov ax, 0x248                    ; 0x2152
    imul word [bp + 0xa]             ; 0x2155
    db 0x8b, 0xd8 ; mov bx, ax
    pop ax                           ; 0x215a
    mov word [bx + 0x5c0c], ax       ; 0x215b
    mov ax, word [bx + 0x5c12]       ; 0x215f
    mov cx, 0xa                      ; 0x2163
    cwd                              ; 0x2166
    idiv cx                          ; 0x2167
    mov word [bx + 0x5c10], ax       ; 0x2169
    inc word [bx + 0x5c1a]           ; 0x216d
    mov ax, 0xb7                     ; 0x2171
    push ax                          ; 0x2174
    db 0xe8, 0x31, 0x96 ; call ds_dispatch_b7a9
    pop cx                           ; 0x2178
    add ax, 0x16d                    ; 0x2179
    cwd                              ; 0x217c
    push ax                          ; 0x217d
    push dx                          ; 0x217e
    mov ax, 0x248                    ; 0x217f
    imul word [bp + 0xa]             ; 0x2182
    db 0x8b, 0xd8 ; mov bx, ax
    pop dx                           ; 0x2187
    pop ax                           ; 0x2188
    add word [bx + 0x5bfc], ax       ; 0x2189
    adc word [bx + 0x5bfe], dx       ; 0x218d
    db 0xe9, 0xf8, 0x01 ; jmp near loc_238c
    push word [bp + 0x8]             ; 0x2194
    call api_idx_000e                ; 0x2197
    pop cx                           ; 0x219a
    cmp ax, strict word 0xffff       ; 0x219b
    jne short loc_21a0               ; 0x219e
    db 0xe9, 0xe9, 0x01 ; jmp near loc_238c
    mov ax, 0                        ; 0x21a3
    push ax                          ; 0x21a6
    push ax                          ; 0x21a7
    push word [bp + 0x8]             ; 0x21a8
    call api_idx_0012                ; 0x21ab
    add sp, byte 6                   ; 0x21ae
    db 0xe9, 0xd8, 0x01 ; jmp near loc_238c
    mov ax, 1                        ; 0x21b4
    push ax                          ; 0x21b7
    mov ax, 0                        ; 0x21b8
    push ax                          ; 0x21bb
    push word [bp + 0x8]             ; 0x21bc
    call api_idx_0012                ; 0x21bf
    add sp, byte 6                   ; 0x21c2
    db 0xe9, 0xc4, 0x01 ; jmp near loc_238c
    push word [bp + 0x8]             ; 0x21c8
    mov ax, 8                        ; 0x21cb
    push ax                          ; 0x21ce
    push word [bp + 0x8]             ; 0x21cf
    db 0xe8, 0x15, 0xaf ; call ds_dispatch_d0ea
    add sp, byte 6                   ; 0x21d5
    db 0x8b, 0xc8 ; mov cx, ax
    sub sp, byte 4                   ; 0x21da
    db 0x8b, 0xc4 ; mov ax, sp
    mov dx, ss                       ; 0x21df
    mov es, dx                       ; 0x21e1
    db 0x8b, 0xf1 ; mov si, cx
    db 0x8b, 0xf8 ; mov di, ax
    movsw                            ; 0x21e7
    movsw                            ; 0x21e8
    db 0xe8, 0xd2, 0xae ; call ds_dispatch_d0be
    add sp, byte 4                   ; 0x21ec
    mov word [bp - 0x0002], ax       ; 0x21ef
    push ax                          ; 0x21f2
    mov ax, 0x248                    ; 0x21f3
    imul word [bp + 0x4]             ; 0x21f6
    db 0x8b, 0xd8 ; mov bx, ax
    pop ax                           ; 0x21fb
    add word [bx + 0x5c10], ax       ; 0x21fc
    mov ax, word [bx + 0x5c10]       ; 0x2200
    cmp ax, word [bx + 0x5c12]       ; 0x2204
    jle short loc_2212               ; 0x2208
    mov ax, word [bx + 0x5c12]       ; 0x220a
    mov word [bx + 0x5c10], ax       ; 0x220e
    mov ax, 0                        ; 0x2212
    push ax                          ; 0x2215
    mov ax, data_0002                ; 0x2216
    push ax                          ; 0x2219
    push word [bp + 0x8]             ; 0x221a
    db 0xe8, 0xca, 0xae ; call ds_dispatch_d0ea
    add sp, byte 6                   ; 0x2220
    db 0x8b, 0xc8 ; mov cx, ax
    sub sp, byte 4                   ; 0x2225
    db 0x8b, 0xc4 ; mov ax, sp
    mov dx, ss                       ; 0x222a
    mov es, dx                       ; 0x222c
    db 0x8b, 0xf1 ; mov si, cx
    db 0x8b, 0xf8 ; mov di, ax
    movsw                            ; 0x2232
    movsw                            ; 0x2233
    db 0xe8, 0x87, 0xae ; call ds_dispatch_d0be
    add sp, byte 4                   ; 0x2237
    mov word [bp - 0x0002], ax       ; 0x223a
    push ax                          ; 0x223d
    mov ax, 0x248                    ; 0x223e
    imul word [bp + 0x4]             ; 0x2241
    db 0x8b, 0xd8 ; mov bx, ax
    pop ax                           ; 0x2246
    add word [bx + 0x5c0c], ax       ; 0x2247
    mov ax, word [bx + 0x5c0c]       ; 0x224b
    cmp ax, word [bx + 0x5c0e]       ; 0x224f
    jle short loc_225d               ; 0x2253
    mov ax, word [bx + 0x5c0e]       ; 0x2255
    mov word [bx + 0x5c0c], ax       ; 0x2259
    db 0xe9, 0x2c, 0x01 ; jmp near loc_238c
    mov word [bp - 0x0002], 0        ; 0x2260
    mov ax, 0                        ; 0x2265
    push ax                          ; 0x2268
    mov ax, 0xa                      ; 0x2269
    push ax                          ; 0x226c
    push word [bp + 0x8]             ; 0x226d
    db 0xe8, 0x77, 0xae ; call ds_dispatch_d0ea
    add sp, byte 6                   ; 0x2273
    db 0x8b, 0xc8 ; mov cx, ax
    sub sp, byte 4                   ; 0x2278
    db 0x8b, 0xc4 ; mov ax, sp
    mov dx, ss                       ; 0x227d
    mov es, dx                       ; 0x227f
    db 0x8b, 0xf1 ; mov si, cx
    db 0x8b, 0xf8 ; mov di, ax
    movsw                            ; 0x2285
    movsw                            ; 0x2286
    db 0xe8, 0x34, 0xae ; call ds_dispatch_d0be
    add sp, byte 4                   ; 0x228a
    mov word [bp - 0x0004], ax       ; 0x228d
    push ax                          ; 0x2290
    mov ax, 0x248                    ; 0x2291
    imul word [bp + 0x4]             ; 0x2294
    db 0x8b, 0xc8 ; mov cx, ax
    mov dx, word [bp - 0x0002]       ; 0x2299
    shl dx, 1                        ; 0x229c
    shl dx, 1                        ; 0x229e
    db 0x03, 0xc2 ; add ax, dx
    db 0x8b, 0xd8 ; mov bx, ax
    pop ax                           ; 0x22a4
    add word [bx + 0x5c1c], ax       ; 0x22a5
    mov ax, word [bx + 0x5c1c]       ; 0x22a9
    cmp ax, word [bx + 0x5c1e]       ; 0x22ad
    jle short loc_22bb               ; 0x22b1
    mov ax, word [bx + 0x5c1e]       ; 0x22b3
    mov word [bx + 0x5c1c], ax       ; 0x22b7
    inc word [bp - 0x0002]           ; 0x22bb
    mov ax, word [bp - 0x0002]       ; 0x22be
    cmp ax, strict word 6            ; 0x22c1
    jl short loc_2265                ; 0x22c4
    db 0xe9, 0xc3, 0x00 ; jmp near loc_238c
    mov word [bp - 0x0002], 1        ; 0x22c9
    mov word [bp - 0x0006], 0xa      ; 0x22ce
    mov word [bp - 0x0008], 0        ; 0x22d3
    mov ax, 0x248                    ; 0x22d8
    imul word [bp + 0x4]             ; 0x22db
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx + 0x5d86]       ; 0x22e0
    db 0x2a, 0xe4 ; sub ah, ah
    cmp ax, word [bp - 0x0006]       ; 0x22e6
    jl short loc_22ee                ; 0x22e9
    inc word [bp - 0x0002]           ; 0x22eb
    mov ax, word [bp - 0x0006]       ; 0x22ee
    shl ax, 1                        ; 0x22f1
    add ax, strict word 0xa          ; 0x22f3
    mov word [bp - 0x0006], ax       ; 0x22f6
    inc word [bp - 0x0008]           ; 0x22f9
    mov ax, word [bp - 0x0008]       ; 0x22fc
    cmp ax, strict word 3            ; 0x22ff
    jl short loc_22d8                ; 0x2302
    mov ax, 0                        ; 0x2304
    push ax                          ; 0x2307
    mov ax, 1                        ; 0x2308
    push ax                          ; 0x230b
    push word [bp - 0x0002]          ; 0x230c
    call api_idx_0012                ; 0x230f
    add sp, byte 6                   ; 0x2312
    jmp short loc_238c               ; 0x2315
    push word [bp + 0x8]             ; 0x2317
    call api_idx_00fa                ; 0x231a
    pop cx                           ; 0x231d
    db 0xeb, 0x6c ; jmp short loc_238c
@..api_idx_0008.l1:
    mov cx, 0x1a                     ; 0x2320
    call leaf_loc_4717               ; 0x2323

    db 0x0c, 0x00, 0x11, 0x00, 0x13, 0x00, 0x19, 0x00, 0x21, 0x00, 0x25, 0x00, 0x2e, 0x00, 0x2f, 0x00
    db 0x31, 0x00, 0x38, 0x00, 0x3d, 0x00, 0x3f, 0x00, 0x42, 0x00, 0x45, 0x00, 0x48, 0x00, 0x4b, 0x00
    db 0x4d, 0x00, 0x4e, 0x00, 0x52, 0x00, 0x54, 0x00, 0x58, 0x00, 0x5e, 0x00, 0x61, 0x00, 0x62, 0x00
    db 0x63, 0x00, 0xdd, 0x6d, 0x83, 0x6e, 0xdd, 0x6d, 0xc2, 0x6f, 0xb4, 0x6e, 0x9e, 0x6d, 0xab, 0x6d
    db 0xdb, 0x71, 0x74, 0x6d, 0x0c
    db 'o3p"m'
    db 0xeb, 0x6f, 0x91, 0x6f, 0xea, 0x71, 0xfb, 0x71, 0x5e, 0x73, 0x9b, 0x70, 0x4a, 0x6d, 0xb8, 0x6d
    db 0x9b, 0x70, 0x4b, 0x71, 0x0f, 0x72, 0xa7, 0x72, 0x10, 0x73, 0xd3, 0x73, 0xc3

%include "vdopt/api_idx_000c.asm"

%include "vdopt/api_idx_000c_2.asm"

%include "vdopt/api_idx_0002_5.asm"

%include "vdopt/api_idx_0004_4.asm"

%include "vdopt/api_idx_000a_3.asm"

%include "vdopt/math_loc_2731.asm"

loc_27bd:
    mov ax, 0                        ; 0x27bd
    call ds_dispatch_f40b            ; 0x27c0
    mov ax, word [bp + 0x6]          ; 0x27c3
    add ax, strict word 6            ; 0x27c6
    push ax                          ; 0x27c9
    mov ax, word [bp + 0x4]          ; 0x27ca
    add ax, strict word 0x14         ; 0x27cd
    push ax                          ; 0x27d0
    push word [bp + 0x6]             ; 0x27d1
    push word [bp + 0x4]             ; 0x27d4
    call ds_dispatch_bd98            ; 0x27d7
    add sp, byte 8                   ; 0x27da
    mov ax, word [bp + 0x8]          ; 0x27dd
    shl ax, 1                        ; 0x27e0
    shl ax, 1                        ; 0x27e2
    mov bx, ax                       ; 0x27e4
    db 0xff, 0xb7, 0x08, 0x00 ; push word [bx + 0x8]
    mov ax, word [bp + 0x6]          ; 0x27ea
    add ax, strict word 6            ; 0x27ed
    push ax                          ; 0x27f0
    mov ax, word [bp + 0x4]          ; 0x27f1
    add ax, strict word 0x14         ; 0x27f4
    push ax                          ; 0x27f7
    push word [bp + 0x6]             ; 0x27f8
    push word [bp + 0x4]             ; 0x27fb
    call ds_dispatch_e901            ; 0x27fe
    add sp, byte 0x0a                ; 0x2801
    mov ax, word [bp + 0x6]          ; 0x2804
    inc ax                           ; 0x2807
    push ax                          ; 0x2808
    mov ax, word [bp + 0x4]          ; 0x2809
    inc ax                           ; 0x280c
    inc ax                           ; 0x280d
    push ax                          ; 0x280e
    call ds_dispatch_e809            ; 0x280f
    add sp, byte 4                   ; 0x2812
    cmp word [bp + 0xa], byte 0      ; 0x2815
    jle short @..local.l27           ; 0x2819
    mov ax, word [bp + 0xa]          ; 0x281b
    cmp ax, word [bp + 0xc]          ; 0x281e
    jg short @..local.l27            ; 0x2821
    mov ax, 0                        ; 0x2823
    push ax                          ; 0x2826
    mov ax, 1                        ; 0x2827
    push ax                          ; 0x282a
    call ds_dispatch_e823            ; 0x282b
    add sp, byte 4                   ; 0x282e
    mov ax, 0                        ; 0x2831
    push ax                          ; 0x2834
    mov ax, 3                        ; 0x2835
    push ax                          ; 0x2838
    push word [bp + 0xa]             ; 0x2839
    call ds_dispatch_b2e7            ; 0x283c
    add sp, byte 6                   ; 0x283f
    jmp short @..local.l28           ; 0x2842
@..local.l27:
    mov ax, 0                        ; 0x2844
    push ax                          ; 0x2847
    push ax                          ; 0x2848
    call ds_dispatch_e823            ; 0x2849
    add sp, byte 4                   ; 0x284c
    mov ax, 0                        ; 0x284f
    push ax                          ; 0x2852
    mov ax, 0x909a                   ; 0x2853
    push ax                          ; 0x2856
    call ds_dispatch_e84e            ; 0x2857
    add sp, byte 4                   ; 0x285a
@..local.l28:
    ret                              ; 0x285d
%include "vdopt/api_idx_000c_3.asm"

loc_28f7:
    mov ax, 0                        ; 0x28f7
    call ds_dispatch_f40b            ; 0x28fa
    les bx, word [data_0002]         ; 0x28fd
    mov ax, word [es:bx]             ; 0x2901
    mov dx, word [es:bx + 0x2]       ; 0x2904
    mov word [data_9090], dx         ; 0x2908
    mov word [data_908e], ax         ; 0x290c
    mov ax, word [data_908e]         ; 0x290f
    mov dx, word [data_9090]         ; 0x2912
    sub ax, word [data_908a]         ; 0x2916
    sbb dx, word [data_908c]         ; 0x291a
    mov word [data_9094], dx         ; 0x291e
    mov word [data_9092], ax         ; 0x2922
    mov ax, word [data_9b5e]         ; 0x2925
    cwd                              ; 0x2928
    mov cx, ax                       ; 0x2929
    mov bx, dx                       ; 0x292b
    mov ax, word [data_9092]         ; 0x292d
    mov dx, word [data_9094]         ; 0x2930
    cmp bx, dx                       ; 0x2934
    jg short @..local.l29            ; 0x2936
    jne short @..local.l30           ; 0x2938
    cmp cx, ax                       ; 0x293a
    jbe short @..local.l30           ; 0x293c
@..local.l29:
    jmp short @..local.l31           ; 0x293e
@..local.l30:
    mov ax, word [data_908e]         ; 0x2940
    mov dx, word [data_9090]         ; 0x2943
    mov word [data_908c], dx         ; 0x2947
    mov word [data_908a], ax         ; 0x294b
    call api_idx_000a_3              ; 0x294e
    push word [bp + 0x4]             ; 0x2951
    call api_idx_000c_3              ; 0x2954
    pop cx                           ; 0x2957
    push word [bp + 0x6]             ; 0x2958
    call api_idx_0002_5              ; 0x295b
    pop cx                           ; 0x295e
    mov ax, 1                        ; 0x295f
    push ax                          ; 0x2962
    mov ax, 0x73                     ; 0x2963
    push ax                          ; 0x2966
    mov ax, 0x32                     ; 0x2967
    push ax                          ; 0x296a
    call api_idx_000c_2              ; 0x296b
    add sp, byte 6                   ; 0x296e
    mov ax, 0xc5                     ; 0x2971
    push ax                          ; 0x2974
    mov ax, 0x93                     ; 0x2975
    push ax                          ; 0x2978
    mov ax, 0x73                     ; 0x2979
    push ax                          ; 0x297c
    mov ax, 0x32                     ; 0x297d
    push ax                          ; 0x2980
    call ds_dispatch_e8da            ; 0x2981
    add sp, byte 8                   ; 0x2984
@..local.l31:
    ret                              ; 0x2987
%include "vdopt/api_idx_0044.asm"

    mov ax, word [bp - 0x000c]       ; 0x2b87
    add ax, strict word 0x6a         ; 0x2b8a
    push ax                          ; 0x2b8d
    call ds_dispatch_bfd8            ; 0x2b8e
    add sp, byte 0x0a                ; 0x2b91
    mov ax, 0                        ; 0x2b94
    push ax                          ; 0x2b97
    push ax                          ; 0x2b98
    mov ax, word [bp - 0x0006]       ; 0x2b99
    add ax, word [bp - 0x0012]       ; 0x2b9c
    add ax, strict word 0x2e         ; 0x2b9f
    push ax                          ; 0x2ba2
    mov ax, word [bp - 0x000c]       ; 0x2ba3
    add ax, strict word 0x72         ; 0x2ba6
    push ax                          ; 0x2ba9
    mov ax, word [bp - 0x0006]       ; 0x2baa
    add ax, word [bp - 0x0012]       ; 0x2bad
    add ax, strict word 0x2a         ; 0x2bb0
    push ax                          ; 0x2bb3
    mov ax, word [bp - 0x000c]       ; 0x2bb4
    add ax, strict word 0x6a         ; 0x2bb7
    push ax                          ; 0x2bba
    mov ax, 0                        ; 0x2bbb
    push ax                          ; 0x2bbe
    call ds_dispatch_baa6            ; 0x2bbf
    add sp, byte 0x0e                ; 0x2bc2
    mov ax, 0                        ; 0x2bc5
    push ax                          ; 0x2bc8
    mov ax, 9                        ; 0x2bc9
    push ax                          ; 0x2bcc
    mov ax, word [bp - 0x0006]       ; 0x2bcd
    add ax, strict word 0x28         ; 0x2bd0
    push ax                          ; 0x2bd3
    mov ax, word [bp - 0x000c]       ; 0x2bd4
    add ax, strict word 0x72         ; 0x2bd7
    push ax                          ; 0x2bda
    mov ax, word [bp - 0x0006]       ; 0x2bdb
    add ax, strict word 0x22         ; 0x2bde
    push ax                          ; 0x2be1
    mov ax, word [bp - 0x000c]       ; 0x2be2
    add ax, strict word 0x6a         ; 0x2be5
    push ax                          ; 0x2be8
    mov ax, 1                        ; 0x2be9
    push ax                          ; 0x2bec
    call ds_dispatch_baa6            ; 0x2bed
    add sp, byte 0x0e                ; 0x2bf0
    mov ax, 0                        ; 0x2bf3
    push ax                          ; 0x2bf6
    mov ax, 0xb                      ; 0x2bf7
    push ax                          ; 0x2bfa
    mov ax, word [bp - 0x0006]       ; 0x2bfb
    add ax, strict word 0x4c         ; 0x2bfe
    push ax                          ; 0x2c01
    mov ax, word [bp - 0x000c]       ; 0x2c02
    add ax, strict word 0x72         ; 0x2c05
    push ax                          ; 0x2c08
    mov ax, word [bp - 0x0006]       ; 0x2c09
    add ax, strict word 0x46         ; 0x2c0c
    push ax                          ; 0x2c0f
    mov ax, word [bp - 0x000c]       ; 0x2c10
    add ax, strict word 0x6a         ; 0x2c13
    push ax                          ; 0x2c16
    mov ax, data_0002                ; 0x2c17
    push ax                          ; 0x2c1a
    call ds_dispatch_baa6            ; 0x2c1b
    add sp, byte 0x0e                ; 0x2c1e
    mov ax, 0                        ; 0x2c21
    push ax                          ; 0x2c24
    mov ax, 0xd                      ; 0x2c25
    push ax                          ; 0x2c28
    mov ax, word [bp - 0x0006]       ; 0x2c29
    add ax, strict word 0xe          ; 0x2c2c
    push ax                          ; 0x2c2f
    mov ax, word [bp - 0x000c]       ; 0x2c30
    add ax, strict word 0x36         ; 0x2c33
    push ax                          ; 0x2c36
    mov ax, word [bp - 0x0006]       ; 0x2c37
    add ax, strict word 6            ; 0x2c3a
    push ax                          ; 0x2c3d
    mov ax, word [bp - 0x000c]       ; 0x2c3e
    add ax, strict word 6            ; 0x2c41
    push ax                          ; 0x2c44
    mov ax, 3                        ; 0x2c45
    push ax                          ; 0x2c48
    call ds_dispatch_baa6            ; 0x2c49
    add sp, byte 0x0e                ; 0x2c4c
    mov ax, 0                        ; 0x2c4f
    push ax                          ; 0x2c52
    mov ax, 0x1b                     ; 0x2c53
    push ax                          ; 0x2c56
    mov ax, word [bp - 0x0006]       ; 0x2c57
    add ax, strict word 0xe          ; 0x2c5a
    push ax                          ; 0x2c5d
    mov ax, word [bp - 0x000c]       ; 0x2c5e
    add ax, strict word 0x72         ; 0x2c61
    push ax                          ; 0x2c64
    mov ax, word [bp - 0x0006]       ; 0x2c65
    add ax, strict word 6            ; 0x2c68
    push ax                          ; 0x2c6b
    mov ax, word [bp - 0x000c]       ; 0x2c6c
    add ax, strict word 0x42         ; 0x2c6f
    push ax                          ; 0x2c72
    mov ax, 4                        ; 0x2c73
    push ax                          ; 0x2c76
    call ds_dispatch_baa6            ; 0x2c77
    add sp, byte 0x0e                ; 0x2c7a
    mov word [bp - 0x0002], 0        ; 0x2c7d
@..api_idx_0044.l5:
    mov ax, 0                        ; 0x2c82
    push ax                          ; 0x2c85
    mov ax, word [bp - 0x0002]       ; 0x2c86
    add ax, strict word 0x31         ; 0x2c89
    cbw                              ; 0x2c8c
    push ax                          ; 0x2c8d
    mov ax, word [bp - 0x0006]       ; 0x2c8e
    add ax, strict word 0x1b         ; 0x2c91
    push ax                          ; 0x2c94
    mov ax, 0xa                      ; 0x2c95
    imul word [bp - 0x0002]          ; 0x2c98
    add ax, word [bp - 0x000c]       ; 0x2c9b
    add ax, strict word 0x13         ; 0x2c9e
    push ax                          ; 0x2ca1
    mov ax, word [bp - 0x0006]       ; 0x2ca2
    add ax, strict word 0x14         ; 0x2ca5
    push ax                          ; 0x2ca8
    mov ax, 0xa                      ; 0x2ca9
    imul word [bp - 0x0002]          ; 0x2cac
    add ax, word [bp - 0x000c]       ; 0x2caf
    add ax, strict word 0xc          ; 0x2cb2
    push ax                          ; 0x2cb5
    mov ax, word [bp - 0x0002]       ; 0x2cb6
    add ax, strict word 5            ; 0x2cb9
    push ax                          ; 0x2cbc
    call ds_dispatch_baa6            ; 0x2cbd
    add sp, byte 0x0e                ; 0x2cc0
    inc word [bp - 0x0002]           ; 0x2cc3
    mov ax, word [bp - 0x0002]       ; 0x2cc6
    cmp ax, strict word 7            ; 0x2cc9
    jl short @..api_idx_0044.l5      ; 0x2ccc
    mov ax, 0                        ; 0x2cce
    push ax                          ; 0x2cd1
    mov ax, 0x46                     ; 0x2cd2
    push ax                          ; 0x2cd5
    mov ax, 0x87                     ; 0x2cd6
    push ax                          ; 0x2cd9
    mov ax, 0x52                     ; 0x2cda
    push ax                          ; 0x2cdd
    mov ax, 0x74                     ; 0x2cde
    push ax                          ; 0x2ce1
    mov ax, 0x46                     ; 0x2ce2
    push ax                          ; 0x2ce5
    mov ax, 0xc                      ; 0x2ce6
    push ax                          ; 0x2ce9
    call ds_dispatch_baa6            ; 0x2cea
    add sp, byte 0x0e                ; 0x2ced
    mov ax, 0                        ; 0x2cf0
    push ax                          ; 0x2cf3
    mov ax, 0x57                     ; 0x2cf4
    push ax                          ; 0x2cf7
    mov ax, 0x9d                     ; 0x2cf8
    push ax                          ; 0x2cfb
    mov ax, 0x4b                     ; 0x2cfc
    push ax                          ; 0x2cff
    mov ax, 0x90                     ; 0x2d00
    push ax                          ; 0x2d03
    mov ax, 0x32                     ; 0x2d04
    push ax                          ; 0x2d07
    mov ax, 0xd                      ; 0x2d08
    push ax                          ; 0x2d0b
    call ds_dispatch_baa6            ; 0x2d0c
    add sp, byte 0x0e                ; 0x2d0f
    mov ax, 0                        ; 0x2d12
    push ax                          ; 0x2d15
    mov ax, 0x41                     ; 0x2d16
    push ax                          ; 0x2d19
    mov ax, 0xbb                     ; 0x2d1a
    push ax                          ; 0x2d1d
    mov ax, 0x5f                     ; 0x2d1e
    push ax                          ; 0x2d21
    mov ax, 0xa5                     ; 0x2d22
    push ax                          ; 0x2d25
    mov ax, 0x43                     ; 0x2d26
    push ax                          ; 0x2d29
    mov ax, 0xe                      ; 0x2d2a
    push ax                          ; 0x2d2d
    call ds_dispatch_baa6            ; 0x2d2e
    add sp, byte 0x0e                ; 0x2d31
    mov ax, 0                        ; 0x2d34
    push ax                          ; 0x2d37
    mov ax, 0x45                     ; 0x2d38
    push ax                          ; 0x2d3b
    mov ax, 0x89                     ; 0x2d3c
    push ax                          ; 0x2d3f
    mov ax, 0x87                     ; 0x2d40
    push ax                          ; 0x2d43
    mov ax, 0x77                     ; 0x2d44
    push ax                          ; 0x2d47
    mov ax, 0x6c                     ; 0x2d48
    push ax                          ; 0x2d4b
    mov ax, 0xf                      ; 0x2d4c
    push ax                          ; 0x2d4f
    call ds_dispatch_baa6            ; 0x2d50
    add sp, byte 0x0e                ; 0x2d53
    mov ax, 0                        ; 0x2d56
    push ax                          ; 0x2d59
    mov ax, 0x4d                     ; 0x2d5a
    push ax                          ; 0x2d5d
    mov ax, 0x9c                     ; 0x2d5e
    push ax                          ; 0x2d61
    mov ax, 0x8e                     ; 0x2d62
    push ax                          ; 0x2d65
    mov ax, 0x91                     ; 0x2d66
    push ax                          ; 0x2d69
    mov ax, 0x7f                     ; 0x2d6a
    push ax                          ; 0x2d6d
    mov ax, 0x10                     ; 0x2d6e
    push ax                          ; 0x2d71
    call ds_dispatch_baa6            ; 0x2d72
    add sp, byte 0x0e                ; 0x2d75
    mov ax, 0                        ; 0x2d78
    push ax                          ; 0x2d7b
    mov ax, 0x44                     ; 0x2d7c
    push ax                          ; 0x2d7f
    mov ax, 0xb9                     ; 0x2d80
    push ax                          ; 0x2d83
    mov ax, 0x81                     ; 0x2d84
    push ax                          ; 0x2d87
    mov ax, 0xa6                     ; 0x2d88
    push ax                          ; 0x2d8b
    mov ax, 0x71                     ; 0x2d8c
    push ax                          ; 0x2d8f
    mov ax, 0x11                     ; 0x2d90
    push ax                          ; 0x2d93
    call ds_dispatch_baa6            ; 0x2d94
    add sp, byte 0x0e                ; 0x2d97
    mov ax, 7                        ; 0x2d9a
    cmp word [bp - 0x0044], byte 7   ; 0x2d9d
    jge short @..api_idx_0044.l6     ; 0x2da1
    mov ax, word [bp - 0x0044]       ; 0x2da3
@..api_idx_0044.l6:
    mov word [bp - 0x0020], ax       ; 0x2da6
    mov word [bp - 0x0002], 0        ; 0x2da9
@..api_idx_0044.l7:
    mov ax, 0                        ; 0x2dae
    push ax                          ; 0x2db1
    push ax                          ; 0x2db2
    mov ax, 6                        ; 0x2db3
    imul word [bp - 0x0002]          ; 0x2db6
    add ax, word [bp - 0x0006]       ; 0x2db9
    add ax, strict word 0x28         ; 0x2dbc
    push ax                          ; 0x2dbf
    mov ax, word [bp - 0x000c]       ; 0x2dc0
    add ax, strict word 0x62         ; 0x2dc3
    push ax                          ; 0x2dc6
    mov ax, 6                        ; 0x2dc7
    imul word [bp - 0x0002]          ; 0x2dca
    add ax, word [bp - 0x0006]       ; 0x2dcd
    add ax, strict word 0x22         ; 0x2dd0
    push ax                          ; 0x2dd3
    mov ax, word [bp - 0x000c]       ; 0x2dd4
    add ax, strict word 6            ; 0x2dd7
    push ax                          ; 0x2dda
    mov ax, word [bp - 0x0002]       ; 0x2ddb
    add ax, strict word 0x12         ; 0x2dde
    push ax                          ; 0x2de1
    call ds_dispatch_baa6            ; 0x2de2
    add sp, byte 0x0e                ; 0x2de5
    inc word [bp - 0x0002]           ; 0x2de8
    mov ax, word [bp - 0x0002]       ; 0x2deb
    cmp ax, strict word 7            ; 0x2dee
    jl short @..api_idx_0044.l7      ; 0x2df1
    mov ax, 0                        ; 0x2df3
    push ax                          ; 0x2df6
    push ax                          ; 0x2df7
    push ax                          ; 0x2df8
    push ax                          ; 0x2df9
    push ax                          ; 0x2dfa
    mov ax, 0xffff                   ; 0x2dfb
    push ax                          ; 0x2dfe
    mov ax, 0x19                     ; 0x2dff
    push ax                          ; 0x2e02
    call ds_dispatch_baa6            ; 0x2e03
    add sp, byte 0x0e                ; 0x2e06
    mov ax, word [bp - 0x000a]       ; 0x2e09
    inc ax                           ; 0x2e0c
    push ax                          ; 0x2e0d
    mov ax, word [bp - 0x0008]       ; 0x2e0e
    inc ax                           ; 0x2e11
    push ax                          ; 0x2e12
    mov ax, word [bp - 0x0006]       ; 0x2e13
    dec ax                           ; 0x2e16
    push ax                          ; 0x2e17
    mov ax, word [bp - 0x0004]       ; 0x2e18
    dec ax                           ; 0x2e1b
    push ax                          ; 0x2e1c
    call ds_dispatch_e8da            ; 0x2e1d
    add sp, byte 8                   ; 0x2e20
    mov word [data_9b5e], 5          ; 0x2e23
    les bx, word [data_0002]         ; 0x2e29
    mov ax, word [es:bx]             ; 0x2e2d
    mov dx, word [es:bx + 0x2]       ; 0x2e30
    mov word [data_908c], dx         ; 0x2e34
    mov word [data_908a], ax         ; 0x2e38
    mov word [bp - 0x001c], 1        ; 0x2e3b
@..api_idx_0044.l8:
    push word [bp - 0x0042]          ; 0x2e40
    push word [bp + 0x4]             ; 0x2e43
    call loc_28f7                    ; 0x2e46
    add sp, byte 4                   ; 0x2e49
    mov ax, 0x59fe                   ; 0x2e4c
    push ax                          ; 0x2e4f
    call ds_dispatch_b90d            ; 0x2e50
    pop cx                           ; 0x2e53
    dec ax                           ; 0x2e54
    mov word [bp - 0x001a], ax       ; 0x2e55
    cmp word [data_59fc], byte 0     ; 0x2e58
    je short @..api_idx_0044.l12     ; 0x2e5d
    mov ax, word [bp - 0x0022]       ; 0x2e5f
    cmp ax, word [bp - 0x0018]       ; 0x2e62
    jl short @..api_idx_0044.l9      ; 0x2e65
    inc word [bp - 0x0022]           ; 0x2e67
@..api_idx_0044.l9:
    mov ax, word [bp - 0x0022]       ; 0x2e6a
    cmp ax, strict word 0xffff       ; 0x2e6d
    je short @..api_idx_0044.l10     ; 0x2e70
    cmp ax, word [bp - 0x0018]       ; 0x2e72
    jl short @..api_idx_0044.l10     ; 0x2e75
    mov ax, word [bp - 0x0018]       ; 0x2e77
    add ax, word [bp - 0x0020]       ; 0x2e7a
    mov cx, ax                       ; 0x2e7d
    dec ax                           ; 0x2e7f
    mov cx, ax                       ; 0x2e80
    mov ax, word [bp - 0x0022]       ; 0x2e82
    cmp cx, ax                       ; 0x2e85
    jge short @..api_idx_0044.l11    ; 0x2e87
@..api_idx_0044.l10:
    mov ax, word [bp - 0x0018]       ; 0x2e89
    mov word [bp - 0x0022], ax       ; 0x2e8c
@..api_idx_0044.l11:
    mov word [data_5b3e], 1          ; 0x2e8f
    mov ax, word [bp - 0x0022]       ; 0x2e95
    sub ax, word [bp - 0x0018]       ; 0x2e98
    add ax, strict word 0x12         ; 0x2e9b
    mov word [bp - 0x001a], ax       ; 0x2e9e
@..api_idx_0044.l12:
    cmp word [data_5b3e], byte 1     ; 0x2ea1
    je short @..api_idx_0044.l13     ; 0x2ea6
    jmp near @..api_idx_0044.l37     ; 0x2ea8
@..api_idx_0044.l13:
    mov ax, word [bp - 0x001a]       ; 0x2eab
    jmp near @..api_idx_0044.l35     ; 0x2eae

    db 0x8d, 0x46, 0xf0, 0x50, 0x8d, 0x46, 0xf2, 0x50, 0xe8, 0x97, 0xc1, 0x83, 0xc4, 0x04, 0xb8, 0x04
    db 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0x8b, 0x46, 0xf0, 0x8b, 0x4e, 0xfa, 0x03, 0x4e, 0xee, 0x83
    db 0xc1, 0x2a, 0x2b, 0xc1, 0x50, 0xe8, 0xe9, 0x88, 0x83, 0xc4, 0x06, 0x89, 0x46, 0xea, 0x8d, 0x46
    db 0xf0, 0x50, 0x8d, 0x46, 0xf2, 0x50, 0xe8, 0x69, 0xc1, 0x83, 0xc4, 0x04, 0x89, 0x46, 0xe2, 0xff
    db 0x76, 0xec, 0xb8, 0x00, 0x00, 0x50, 0x8b, 0x46, 0xf0, 0x8b, 0x4e, 0xfa, 0x83, 0xc1, 0x2a, 0x2b
    db 0xc1, 0x2b, 0x46, 0xea, 0x50, 0xe8, 0xb9, 0x88, 0x83, 0xc4, 0x06, 0x89, 0x46, 0xee, 0x83, 0x7e
    db 0xbc, 0x07, 0x7e, 0x20, 0xb9, 0x64, 0x00, 0xf7, 0xe9, 0x50, 0x8b, 0x46, 0xec, 0xf7, 0xe9, 0x05
    db 0x64, 0x00, 0x8b, 0x4e, 0xbc, 0x83, 0xc1, 0xfa, 0x99, 0xf7, 0xf9, 0x8b, 0xc8, 0x58, 0x99, 0xf7
    db 0xf9, 0x89, 0x46, 0xe8, 0xff, 0x76, 0xdc, 0xff, 0x76, 0xde, 0xff, 0x76, 0xe8, 0xb8, 0x07, 0x00
    db 0x50, 0xb8, 0x0f, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05
    db 0x06, 0x00, 0x50, 0xe8, 0x40, 0x90, 0x83, 0xc4, 0x0e, 0xff, 0x76, 0xee, 0xb8, 0x07, 0x00, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a
    db 0x00, 0x50, 0xe8, 0x62, 0x90, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x8b, 0x46, 0xfa
    db 0x03, 0x46, 0xee, 0x05, 0x2e, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b, 0x46
    db 0xfa, 0x03, 0x46, 0xee, 0x05, 0x2a, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a, 0x00, 0x50, 0xb8
    db 0x00, 0x00, 0x50, 0xe8, 0xff, 0x8a, 0x83, 0xc4, 0x0e, 0x8b, 0x46, 0xfa, 0x05, 0x4c, 0x00, 0x50
    db 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46
    db 0xf4, 0x05, 0x06, 0x00, 0x50, 0xe8, 0x11, 0xb9, 0x83, 0xc4, 0x08, 0x83, 0x7e, 0xe2, 0x00, 0x74
    db 0x03, 0xe9, 0x0a, 0xff, 0xe9, 0x13, 0x06, 0x83, 0x7e, 0xe6, 0x01, 0x75, 0x31, 0xb8, 0x01, 0x00
    db 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x28, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b
    db 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a, 0x00, 0x50, 0xe8, 0xb7, 0x8e
    db 0x83, 0xc4, 0x0a, 0x83, 0x7e, 0xe8, 0x00, 0x7e, 0x03, 0xff, 0x4e, 0xe8, 0xeb, 0x34, 0xb8, 0x01
    db 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x4c, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50
    db 0x8b, 0x46, 0xfa, 0x05, 0x46, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a, 0x00, 0x50, 0xe8, 0x86
    db 0x8e, 0x83, 0xc4, 0x0a, 0x8b, 0x46, 0xbc, 0x05, 0xf9, 0xff, 0x3b, 0x46, 0xe8, 0x7e, 0x03, 0xff
    db 0x46, 0xe8, 0x83, 0x7e, 0xbc, 0x07, 0x7e, 0x2c, 0xff, 0x76, 0xec, 0xb8, 0x00, 0x00, 0x50, 0xb8
    db 0x64, 0x00, 0xf7, 0x6e, 0xec, 0x05, 0x64, 0x00, 0x8b, 0x4e, 0xbc, 0x83, 0xc1, 0xf9, 0x99, 0xf7
    db 0xf9, 0xf7, 0x6e, 0xe8, 0xb9, 0x64, 0x00, 0x99, 0xf7, 0xf9, 0x50, 0xe8, 0x53, 0x87, 0x83, 0xc4
    db 0x06, 0x89, 0x46, 0xee, 0xff, 0x76, 0xdc, 0xff, 0x76, 0xde, 0xff, 0x76, 0xe8, 0xb8, 0x07, 0x00
    db 0x50, 0xb8, 0x0f, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05
    db 0x06, 0x00, 0x50, 0xe8, 0x00, 0x8f, 0x83, 0xc4, 0x0e, 0xff, 0x76, 0xee, 0xb8, 0x07, 0x00, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a
    db 0x00, 0x50, 0xe8, 0x22, 0x8f, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x8b, 0x46, 0xfa
    db 0x03, 0x46, 0xee, 0x05, 0x2e, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b, 0x46
    db 0xfa, 0x03, 0x46, 0xee, 0x05, 0x2a, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a, 0x00, 0x50, 0xb8
    db 0x00, 0x00, 0x50, 0xe8, 0xbf, 0x89, 0x83, 0xc4, 0x0e, 0x8b, 0x46, 0xfa, 0x05, 0x4c, 0x00, 0x50
    db 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46
    db 0xf4, 0x05, 0x06, 0x00, 0x50, 0xe8, 0xd1, 0xb7, 0x83, 0xc4, 0x08, 0xe9, 0xdc, 0x04, 0x83, 0x7e
    db 0x08, 0x00, 0x75, 0x03, 0xe9, 0xa1, 0x00, 0x83, 0x7e, 0xc4, 0x00, 0x7d, 0x03, 0xe9, 0x8a, 0x00
    db 0x83, 0x7e, 0x0a, 0x00, 0x74, 0x3c, 0x8b, 0x46, 0xc2, 0x3b, 0x46, 0xc0, 0x7e, 0x03, 0xe9, 0x79
    db 0x00, 0xb8, 0x06, 0x00, 0xf7, 0x6e, 0xc4, 0x8b, 0xd8, 0x8a, 0x87, 0x22, 0x06, 0x2a, 0xe4, 0x8b
    db 0x4e, 0xc2, 0x41, 0xf7, 0xe9, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xc8, 0x8b, 0x56
    db 0xbe, 0xd1, 0xe2, 0xd1, 0xe2, 0x03, 0xc2, 0x8b, 0xd8, 0x8b, 0x8f, 0x1c, 0x5c, 0x58, 0x3b, 0xc1
    db 0x7f, 0x48, 0xb8, 0x01, 0x00, 0x50, 0x50, 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06
    db 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x06, 0x00, 0x50, 0xe8, 0xe2, 0x8c, 0x83, 0xc4, 0x0a, 0xb8
    db 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06
    db 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x06, 0x00, 0x50, 0xe8, 0xc2, 0x8c, 0x83, 0xc4, 0x0a, 0xc7
    db 0x06, 0x50, 0x90, 0x00, 0x00, 0xc7, 0x46, 0xe4, 0x00, 0x00, 0x83, 0x7e, 0xe4, 0x00, 0x74, 0x08
    db 0xb8, 0x00, 0x00, 0x50, 0xe8, 0x28, 0x86, 0x59, 0xe9, 0x2f, 0x04, 0xb8, 0x01, 0x00, 0x50, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x42
    db 0x00, 0x50, 0xe8, 0x89, 0x8c, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x42
    db 0x00, 0x50, 0xe8, 0x69, 0x8c, 0x83, 0xc4, 0x0a, 0xc7, 0x06, 0x50, 0x90, 0x01, 0x00, 0xc7, 0x46
    db 0xe4, 0x00, 0x00, 0xe9, 0xe4, 0x03

@..api_idx_0044.l14:
    cmp word [bp - 0x001a], byte 5   ; 0x3207
    jge short @..api_idx_0044.l15    ; 0x320b
    jmp near @..api_idx_0044.l23     ; 0x320d
@..api_idx_0044.l15:
    cmp word [bp - 0x001a], byte 0x0b ; 0x3210
    jle short @..api_idx_0044.l16    ; 0x3214
    jmp near @..api_idx_0044.l23     ; 0x3216
@..api_idx_0044.l16:
    mov ax, 0                        ; 0x3219
    push ax                          ; 0x321c
    push word [bp - 0x003e]          ; 0x321d
    mov ax, word [bp - 0x0006]       ; 0x3220
    add ax, strict word 0x14         ; 0x3223
    push ax                          ; 0x3226
    mov ax, word [bp - 0x000c]       ; 0x3227
    add ax, strict word 0xc          ; 0x322a
    push ax                          ; 0x322d
    call math_loc_2731               ; 0x322e
    add sp, byte 8                   ; 0x3231
    mov ax, word [bp - 0x001a]       ; 0x3234
    add ax, strict word 0xfffb       ; 0x3237
    mov word [bp - 0x003e], ax       ; 0x323a
    mov ax, 1                        ; 0x323d
    push ax                          ; 0x3240
    push word [bp - 0x003e]          ; 0x3241
    mov ax, word [bp - 0x0006]       ; 0x3244
    add ax, strict word 0x14         ; 0x3247
    push ax                          ; 0x324a
    mov ax, word [bp - 0x000c]       ; 0x324b
    add ax, strict word 0xc          ; 0x324e
    push ax                          ; 0x3251
    call math_loc_2731               ; 0x3252
    add sp, byte 8                   ; 0x3255
    cmp word [bp - 0x003c], byte 0   ; 0x3258
    jge short @..api_idx_0044.l17    ; 0x325c
    jmp near @..api_idx_0044.l21     ; 0x325e
@..api_idx_0044.l17:
    mov ax, 6                        ; 0x3261
    push ax                          ; 0x3264
    mov ax, 0                        ; 0x3265
    push ax                          ; 0x3268
    mov ax, 0x248                    ; 0x3269
    imul word [bp + 0x4]             ; 0x326c
    mov bx, ax                       ; 0x326f
    mov ax, word [bx + 0x5c18]       ; 0x3271
    push ax                          ; 0x3275
    mov ax, 6                        ; 0x3276
    imul word [bp - 0x003c]          ; 0x3279
    mov bx, ax                       ; 0x327c
    mov al, byte [bx + 0x621]        ; 0x327e
    sub ah, ah                       ; 0x3282
    mov cx, ax                       ; 0x3284
    pop ax                           ; 0x3286
    sub ax, cx                       ; 0x3287
    push ax                          ; 0x3289
    call ds_dispatch_b7c2            ; 0x328a
    add sp, byte 6                   ; 0x328d
    mov word [bp - 0x0040], ax       ; 0x3290
    mov ax, 6                        ; 0x3293
    imul word [bp - 0x003c]          ; 0x3296
    mov bx, ax                       ; 0x3299
    mov al, byte [bx + 0x622]        ; 0x329b
    sub ah, ah                       ; 0x329f
    mov cx, word [bp - 0x0040]       ; 0x32a1
    inc cx                           ; 0x32a4
    imul cx                          ; 0x32a5
    mov word [bp - 0x0002], ax       ; 0x32a7
    cmp word [bp + 0xa], byte 0      ; 0x32aa
    jne short @..api_idx_0044.l18    ; 0x32ae
    mov ax, 0x3e7                    ; 0x32b0
    jmp short @..api_idx_0044.l20    ; 0x32b3
@..api_idx_0044.l18:
    mov ax, 0x248                    ; 0x32b5
    imul word [bp + 0x4]             ; 0x32b8
    mov cx, word [bp - 0x0042]       ; 0x32bb
    shl cx, 1                        ; 0x32be
    shl cx, 1                        ; 0x32c0
    add ax, cx                       ; 0x32c2
    mov bx, ax                       ; 0x32c4
    mov ax, word [bx + 0x5c1c]       ; 0x32c6
    cmp ax, word [bp - 0x0002]       ; 0x32ca
    jge short @..api_idx_0044.l19    ; 0x32cd
    jmp short @..api_idx_0044.l20    ; 0x32cf
@..api_idx_0044.l19:
    mov ax, word [bp - 0x0002]       ; 0x32d1
@..api_idx_0044.l20:
    push ax                          ; 0x32d4
    mov ax, 6                        ; 0x32d5
    imul word [bp - 0x003c]          ; 0x32d8
    mov bx, ax                       ; 0x32db
    mov al, byte [bx + 0x622]        ; 0x32dd
    sub ah, ah                       ; 0x32e1
    mov cx, word [bp - 0x003e]       ; 0x32e3
    inc cx                           ; 0x32e6
    imul cx                          ; 0x32e7
    push ax                          ; 0x32e9
    push word [bp - 0x0042]          ; 0x32ea
    mov ax, word [bp - 0x0006]       ; 0x32ed
    add ax, strict word 0x15         ; 0x32f0
    push ax                          ; 0x32f3
    mov ax, word [bp - 0x000c]       ; 0x32f4
    add ax, strict word 0x5e         ; 0x32f7
    push ax                          ; 0x32fa
    call loc_27bd                    ; 0x32fb
    add sp, byte 0x0a                ; 0x32fe
    jmp short @..api_idx_0044.l22    ; 0x3301
@..api_idx_0044.l21:
    mov ax, 0                        ; 0x3303
    push ax                          ; 0x3306
    push ax                          ; 0x3307
    push word [bp - 0x0042]          ; 0x3308
    mov ax, word [bp - 0x0006]       ; 0x330b
    add ax, strict word 0x15         ; 0x330e
    push ax                          ; 0x3311
    mov ax, word [bp - 0x000c]       ; 0x3312
    add ax, strict word 0x5e         ; 0x3315
    push ax                          ; 0x3318
    call loc_27bd                    ; 0x3319
    add sp, byte 0x0a                ; 0x331c
@..api_idx_0044.l22:
    mov ax, word [bp - 0x0006]       ; 0x331f
    add ax, strict word 0x1c         ; 0x3322
    push ax                          ; 0x3325
    mov ax, word [bp - 0x000c]       ; 0x3326
    add ax, strict word 0x56         ; 0x3329
    push ax                          ; 0x332c
    mov ax, word [bp - 0x0006]       ; 0x332d
    add ax, strict word 0x14         ; 0x3330
    push ax                          ; 0x3333
    mov ax, word [bp - 0x000c]       ; 0x3334
    add ax, strict word 0xb          ; 0x3337
    push ax                          ; 0x333a
    call ds_dispatch_e8da            ; 0x333b
    add sp, byte 8                   ; 0x333e
    mov ax, word [bp - 0x0006]       ; 0x3341
    add ax, strict word 0x1b         ; 0x3344
    push ax                          ; 0x3347
    mov ax, word [bp - 0x000c]       ; 0x3348
    add ax, strict word 0x72         ; 0x334b
    push ax                          ; 0x334e
    mov ax, word [bp - 0x0006]       ; 0x334f
    add ax, strict word 0x15         ; 0x3352
    push ax                          ; 0x3355
    mov ax, word [bp - 0x000c]       ; 0x3356
    add ax, strict word 0x5e         ; 0x3359
    push ax                          ; 0x335c
    call ds_dispatch_e8da            ; 0x335d
    add sp, byte 8                   ; 0x3360
    jmp near @..api_idx_0044.l34     ; 0x3363
@..api_idx_0044.l23:
    cmp word [bp - 0x001a], byte 0x0c ; 0x3366
    jge short @..api_idx_0044.l24    ; 0x336a
    jmp near @..api_idx_0044.l28     ; 0x336c
@..api_idx_0044.l24:
    cmp word [bp - 0x001a], byte 0x11 ; 0x336f
    jle short @..api_idx_0044.l25    ; 0x3373
    jmp near @..api_idx_0044.l28     ; 0x3375
@..api_idx_0044.l25:
    mov ax, word [bp - 0x001a]       ; 0x3378
    add ax, strict word 0xfff4       ; 0x337b
    mov word [bp - 0x0042], ax       ; 0x337e
    mov word [bp - 0x003c], 0xffff   ; 0x3381
    push ax                          ; 0x3386
    push word [bp + 0x4]             ; 0x3387
    call api_idx_0004_4              ; 0x338a
    add sp, byte 4                   ; 0x338d
    mov word [bp - 0x0044], ax       ; 0x3390
    mov ax, 7                        ; 0x3393
    cmp word [bp - 0x0044], byte 7   ; 0x3396
    jge short @..api_idx_0044.l26    ; 0x339a
    mov ax, word [bp - 0x0044]       ; 0x339c
@..api_idx_0044.l26:
    mov word [bp - 0x0024], ax       ; 0x339f
    mov ax, 7                        ; 0x33a2
    cmp word [bp - 0x0044], byte 7   ; 0x33a5
    jge short @..api_idx_0044.l27    ; 0x33a9
    mov ax, word [bp - 0x0044]       ; 0x33ab
@..api_idx_0044.l27:
    mov word [bp - 0x0020], ax       ; 0x33ae
    mov word [bp - 0x0018], 0        ; 0x33b1
    mov word [bp - 0x0022], 0xffff   ; 0x33b6
    push word [bp - 0x0024]          ; 0x33bb
    push word [bp - 0x0022]          ; 0x33be
    push word [bp - 0x0018]          ; 0x33c1
    mov ax, 7                        ; 0x33c4
    push ax                          ; 0x33c7
    mov ax, 0xf                      ; 0x33c8
    push ax                          ; 0x33cb
    mov ax, word [bp - 0x0006]       ; 0x33cc
    add ax, strict word 0x22         ; 0x33cf
    push ax                          ; 0x33d2
    mov ax, word [bp - 0x000c]       ; 0x33d3
    add ax, strict word 6            ; 0x33d6
    push ax                          ; 0x33d9
    call ds_dispatch_bf97            ; 0x33da
    add sp, byte 0x0e                ; 0x33dd
    mov word [bp - 0x0012], 0        ; 0x33e0
    push word [bp - 0x0012]          ; 0x33e5
    mov ax, 7                        ; 0x33e8
    push ax                          ; 0x33eb
    mov ax, 8                        ; 0x33ec
    push ax                          ; 0x33ef
    mov ax, word [bp - 0x0006]       ; 0x33f0
    add ax, strict word 0x22         ; 0x33f3
    push ax                          ; 0x33f6
    mov ax, word [bp - 0x000c]       ; 0x33f7
    add ax, strict word 0x6a         ; 0x33fa
    push ax                          ; 0x33fd
    call ds_dispatch_bfd8            ; 0x33fe
    add sp, byte 0x0a                ; 0x3401
    mov ax, 0                        ; 0x3404
    push ax                          ; 0x3407
    push ax                          ; 0x3408
    mov ax, word [bp - 0x0006]       ; 0x3409
    add ax, word [bp - 0x0012]       ; 0x340c
    add ax, strict word 0x2e         ; 0x340f
    push ax                          ; 0x3412
    mov ax, word [bp - 0x000c]       ; 0x3413
    add ax, strict word 0x72         ; 0x3416
    push ax                          ; 0x3419
    mov ax, word [bp - 0x0006]       ; 0x341a
    add ax, word [bp - 0x0012]       ; 0x341d
    add ax, strict word 0x2a         ; 0x3420
    push ax                          ; 0x3423
    mov ax, word [bp - 0x000c]       ; 0x3424
    add ax, strict word 0x6a         ; 0x3427
    push ax                          ; 0x342a
    mov ax, 0                        ; 0x342b
    push ax                          ; 0x342e
    call ds_dispatch_baa6            ; 0x342f
    add sp, byte 0x0e                ; 0x3432
    mov ax, 0                        ; 0x3435
    push ax                          ; 0x3438
    push ax                          ; 0x3439
    push word [bp - 0x0042]          ; 0x343a
    mov ax, word [bp - 0x0006]       ; 0x343d
    add ax, strict word 0x15         ; 0x3440
    push ax                          ; 0x3443
    mov ax, word [bp - 0x000c]       ; 0x3444
    add ax, strict word 0x5e         ; 0x3447
    push ax                          ; 0x344a
    call loc_27bd                    ; 0x344b
    add sp, byte 0x0a                ; 0x344e
    mov ax, word [bp - 0x0006]       ; 0x3451
    add ax, strict word 0x4c         ; 0x3454
    push ax                          ; 0x3457
    mov ax, word [bp - 0x000c]       ; 0x3458
    add ax, strict word 0x72         ; 0x345b
    push ax                          ; 0x345e
    mov ax, word [bp - 0x0006]       ; 0x345f
    add ax, strict word 0x22         ; 0x3462
    push ax                          ; 0x3465
    mov ax, word [bp - 0x000c]       ; 0x3466
    add ax, strict word 6            ; 0x3469
    push ax                          ; 0x346c
    call ds_dispatch_e8da            ; 0x346d
    add sp, byte 8                   ; 0x3470
    mov ax, word [bp - 0x0006]       ; 0x3473
    add ax, strict word 0x1b         ; 0x3476
    push ax                          ; 0x3479
    mov ax, word [bp - 0x000c]       ; 0x347a
    add ax, strict word 0x72         ; 0x347d
    push ax                          ; 0x3480
    mov ax, word [bp - 0x0006]       ; 0x3481
    add ax, strict word 0x15         ; 0x3484
    push ax                          ; 0x3487
    mov ax, word [bp - 0x000c]       ; 0x3488
    add ax, strict word 0x5e         ; 0x348b
    push ax                          ; 0x348e
    call ds_dispatch_e8da            ; 0x348f
    add sp, byte 8                   ; 0x3492
    jmp near @..api_idx_0044.l34     ; 0x3495
@..api_idx_0044.l28:
    cmp word [bp - 0x001a], byte 0x12 ; 0x3498
    jge short @..api_idx_0044.l29    ; 0x349c
    jmp near @..api_idx_0044.l34     ; 0x349e
@..api_idx_0044.l29:
    mov ax, word [bp - 0x0020]       ; 0x34a1
    add ax, strict word 0x12         ; 0x34a4
    cmp ax, word [bp - 0x001a]       ; 0x34a7
    jg short @..api_idx_0044.l30     ; 0x34aa
    jmp near @..api_idx_0044.l34     ; 0x34ac
@..api_idx_0044.l30:
    mov ax, word [bp - 0x0018]       ; 0x34af
    add ax, word [bp - 0x001a]       ; 0x34b2
    add ax, strict word 0xffee       ; 0x34b5
    mov word [bp - 0x0022], ax       ; 0x34b8
    shl ax, 1                        ; 0x34bb
    mov bx, ax                       ; 0x34bd
    mov ax, word [bx - 0x64f2]       ; 0x34bf
    mov word [bp - 0x003c], ax       ; 0x34c3
    push word [bp - 0x0024]          ; 0x34c6
    push word [bp - 0x0022]          ; 0x34c9
    push word [bp - 0x0018]          ; 0x34cc
    mov ax, 7                        ; 0x34cf
    push ax                          ; 0x34d2
    mov ax, 0xf                      ; 0x34d3
    push ax                          ; 0x34d6
    mov ax, word [bp - 0x0006]       ; 0x34d7
    add ax, strict word 0x22         ; 0x34da
    push ax                          ; 0x34dd
    mov ax, word [bp - 0x000c]       ; 0x34de
    add ax, strict word 6            ; 0x34e1
    push ax                          ; 0x34e4
    call ds_dispatch_bf97            ; 0x34e5
    add sp, byte 0x0e                ; 0x34e8
    mov ax, 6                        ; 0x34eb
    push ax                          ; 0x34ee
    mov ax, 0                        ; 0x34ef
    push ax                          ; 0x34f2
    mov ax, 0x248                    ; 0x34f3
    imul word [bp + 0x4]             ; 0x34f6
    mov bx, ax                       ; 0x34f9
    mov ax, word [bx + 0x5c18]       ; 0x34fb
    push ax                          ; 0x34ff
    mov ax, 6                        ; 0x3500
    imul word [bp - 0x003c]          ; 0x3503
    mov bx, ax                       ; 0x3506
    mov al, byte [bx + 0x621]        ; 0x3508
    sub ah, ah                       ; 0x350c
    mov cx, ax                       ; 0x350e
    pop ax                           ; 0x3510
    sub ax, cx                       ; 0x3511
    push ax                          ; 0x3513
    call ds_dispatch_b7c2            ; 0x3514
    add sp, byte 6                   ; 0x3517
    mov word [bp - 0x0040], ax       ; 0x351a
    mov ax, 6                        ; 0x351d
    imul word [bp - 0x003c]          ; 0x3520
    mov bx, ax                       ; 0x3523
    mov al, byte [bx + 0x622]        ; 0x3525
    sub ah, ah                       ; 0x3529
    mov cx, word [bp - 0x0040]       ; 0x352b
    inc cx                           ; 0x352e
    imul cx                          ; 0x352f
    mov word [bp - 0x0002], ax       ; 0x3531
    cmp word [bp + 0xa], byte 0      ; 0x3534
    jne short @..api_idx_0044.l31    ; 0x3538
    mov ax, 0x3e7                    ; 0x353a
    jmp short @..api_idx_0044.l33    ; 0x353d
@..api_idx_0044.l31:
    mov ax, 0x248                    ; 0x353f
    imul word [bp + 0x4]             ; 0x3542
    mov cx, word [bp - 0x0042]       ; 0x3545
    shl cx, 1                        ; 0x3548
    shl cx, 1                        ; 0x354a
    add ax, cx                       ; 0x354c
    mov bx, ax                       ; 0x354e
    mov ax, word [bx + 0x5c1c]       ; 0x3550
    cmp ax, word [bp - 0x0002]       ; 0x3554
    jge short @..api_idx_0044.l32    ; 0x3557
    jmp short @..api_idx_0044.l33    ; 0x3559
@..api_idx_0044.l32:
    mov ax, word [bp - 0x0002]       ; 0x355b
@..api_idx_0044.l33:
    push ax                          ; 0x355e
    mov ax, 6                        ; 0x355f
    imul word [bp - 0x003c]          ; 0x3562
    mov bx, ax                       ; 0x3565
    mov al, byte [bx + 0x622]        ; 0x3567
    sub ah, ah                       ; 0x356b
    mov cx, word [bp - 0x003e]       ; 0x356d
    inc cx                           ; 0x3570
    imul cx                          ; 0x3571
    push ax                          ; 0x3573
    push word [bp - 0x0042]          ; 0x3574
    mov ax, word [bp - 0x0006]       ; 0x3577
    add ax, strict word 0x15         ; 0x357a
    push ax                          ; 0x357d
    mov ax, word [bp - 0x000c]       ; 0x357e
    add ax, strict word 0x5e         ; 0x3581
    push ax                          ; 0x3584
    call loc_27bd                    ; 0x3585
    add sp, byte 0x0a                ; 0x3588
    mov ax, word [bp - 0x0006]       ; 0x358b
    add ax, strict word 0x4c         ; 0x358e
    push ax                          ; 0x3591
    mov ax, word [bp - 0x000c]       ; 0x3592
    add ax, strict word 0x72         ; 0x3595
    push ax                          ; 0x3598
    mov ax, word [bp - 0x0006]       ; 0x3599
    add ax, strict word 0x22         ; 0x359c
    push ax                          ; 0x359f
    mov ax, word [bp - 0x000c]       ; 0x35a0
    add ax, strict word 6            ; 0x35a3
    push ax                          ; 0x35a6
    call ds_dispatch_e8da            ; 0x35a7
    add sp, byte 8                   ; 0x35aa
    mov ax, word [bp - 0x0006]       ; 0x35ad
    add ax, strict word 0x1b         ; 0x35b0
    push ax                          ; 0x35b3
    mov ax, word [bp - 0x000c]       ; 0x35b4
    add ax, strict word 0x72         ; 0x35b7
    push ax                          ; 0x35ba
    mov ax, word [bp - 0x0006]       ; 0x35bb
    add ax, strict word 0x15         ; 0x35be
    push ax                          ; 0x35c1
    mov ax, word [bp - 0x000c]       ; 0x35c2
    add ax, strict word 0x5e         ; 0x35c5
    push ax                          ; 0x35c8
    call ds_dispatch_e8da            ; 0x35c9
    add sp, byte 8                   ; 0x35cc
@..api_idx_0044.l34:
    jmp short @..api_idx_0044.l37    ; 0x35cf
    clc                              ; 0x35d1
    jle short loc_35f3               ; 0x35d2
    sbb byte [bx], 0x80              ; 0x35d4
    push si                          ; 0x35d7
    db 0x81, 0x03, 0x82
@..api_idx_0044.l35:
    cmp ax, strict word 5            ; 0x35db
    jae short @..api_idx_0044.l36    ; 0x35de
    xchg bx, ax                      ; 0x35e0
    shl bx, 1                        ; 0x35e1
    jmp [cs:bx - 0x79e8]             ; 0x35e3
@..api_idx_0044.l36:
    jmp near @..api_idx_0044.l14     ; 0x35e8
@..api_idx_0044.l37:
    cmp word [bp - 0x001c], byte 0   ; 0x35eb
    je short @..api_idx_0044.l38     ; 0x35ef
    jmp near @..api_idx_0044.l8      ; 0x35f1
@..api_idx_0044.l38:
    mov ax, 1                        ; 0x35f4
    push ax                          ; 0x35f7
    push word [bp - 0x003a]          ; 0x35f8
    call ds_dispatch_c459            ; 0x35fb
    add sp, byte 4                   ; 0x35fe
    mov ax, word [bp - 0x000a]       ; 0x3601
    inc ax                           ; 0x3604
    push ax                          ; 0x3605
    mov ax, word [bp - 0x0008]       ; 0x3606
    inc ax                           ; 0x3609
    push ax                          ; 0x360a
    mov ax, word [bp - 0x0006]       ; 0x360b
    dec ax                           ; 0x360e
    push ax                          ; 0x360f
    mov ax, word [bp - 0x0004]       ; 0x3610
    dec ax                           ; 0x3613
    push ax                          ; 0x3614
    call ds_dispatch_e8da            ; 0x3615
    add sp, byte 8                   ; 0x3618
    mov ax, word [bp - 0x003e]       ; 0x361b
    xchg al, ah                      ; 0x361e
    sub al, al                       ; 0x3620
    add ax, word [bp - 0x003c]       ; 0x3622
    add ax, 0x100                    ; 0x3625
    mov word [data_904e], ax         ; 0x3628
    mov ax, word [data_9050]         ; 0x362b
    ret                              ; 0x362e
%include "vdopt/api_idx_0008_2.asm"

%include "vdopt/api_idx_0004_5.asm"

%include "vdopt/api_idx_0018.asm"

%include "vdopt/api_idx_0004_6.asm"

%include "vdopt/math_loc_39eb.asm"

%include "vdopt/api_idx_0038.asm"

    mov ax, word [bp - 0x0004]       ; 0x3c2c
    add ax, strict word 0x50         ; 0x3c2f
    push ax                          ; 0x3c32
    mov ax, word [bp - 0x0006]       ; 0x3c33
    add ax, strict word 7            ; 0x3c36
    push ax                          ; 0x3c39
    mov ax, word [bp - 0x0004]       ; 0x3c3a
    add ax, strict word 8            ; 0x3c3d
    push ax                          ; 0x3c40
    mov ax, 3                        ; 0x3c41
    push ax                          ; 0x3c44
    call ds_dispatch_baa6            ; 0x3c45
    add sp, byte 0x0e                ; 0x3c48
    mov ax, 0                        ; 0x3c4b
    push ax                          ; 0x3c4e
    mov ax, 0x44                     ; 0x3c4f
    push ax                          ; 0x3c52
    mov ax, word [bp - 0x0006]       ; 0x3c53
    add ax, strict word 0x1f         ; 0x3c56
    push ax                          ; 0x3c59
    mov ax, word [bp - 0x0004]       ; 0x3c5a
    add ax, strict word 0x50         ; 0x3c5d
    push ax                          ; 0x3c60
    mov ax, word [bp - 0x0006]       ; 0x3c61
    add ax, strict word 0x17         ; 0x3c64
    push ax                          ; 0x3c67
    mov ax, word [bp - 0x0004]       ; 0x3c68
    add ax, strict word 8            ; 0x3c6b
    push ax                          ; 0x3c6e
    mov ax, 4                        ; 0x3c6f
    push ax                          ; 0x3c72
    call ds_dispatch_baa6            ; 0x3c73
    add sp, byte 0x0e                ; 0x3c76
    mov ax, 0                        ; 0x3c79
    push ax                          ; 0x3c7c
    mov ax, 0x1b                     ; 0x3c7d
    push ax                          ; 0x3c80
    mov ax, word [bp - 0x0006]       ; 0x3c81
    add ax, strict word 0x2f         ; 0x3c84
    push ax                          ; 0x3c87
    mov ax, word [bp - 0x0004]       ; 0x3c88
    add ax, strict word 0x50         ; 0x3c8b
    push ax                          ; 0x3c8e
    mov ax, word [bp - 0x0006]       ; 0x3c8f
    add ax, strict word 0x27         ; 0x3c92
    push ax                          ; 0x3c95
    mov ax, word [bp - 0x0004]       ; 0x3c96
    add ax, strict word 8            ; 0x3c99
    push ax                          ; 0x3c9c
    mov ax, 5                        ; 0x3c9d
    push ax                          ; 0x3ca0
    call ds_dispatch_baa6            ; 0x3ca1
    add sp, byte 0x0e                ; 0x3ca4
    mov ax, 3                        ; 0x3ca7
    cmp word [bp + 0xc], byte 3      ; 0x3caa
    jge short @..api_idx_0038.l4     ; 0x3cae
    mov ax, word [bp + 0xc]          ; 0x3cb0
@..api_idx_0038.l4:
    mov word [bp - 0x001e], ax       ; 0x3cb3
    mov word [bp - 0x0002], 0        ; 0x3cb6
    jmp short @..api_idx_0038.l6     ; 0x3cbb
@..api_idx_0038.l5:
    mov ax, 0                        ; 0x3cbd
    push ax                          ; 0x3cc0
    push ax                          ; 0x3cc1
    mov ax, 0xe                      ; 0x3cc2
    imul word [bp - 0x0002]          ; 0x3cc5
    add ax, word [bp - 0x0006]       ; 0x3cc8
    add ax, strict word 0x13         ; 0x3ccb
    push ax                          ; 0x3cce
    mov ax, word [bp - 0x0004]       ; 0x3ccf
    add ax, 0xb9                     ; 0x3cd2
    push ax                          ; 0x3cd5
    mov ax, 0xe                      ; 0x3cd6
    imul word [bp - 0x0002]          ; 0x3cd9
    add ax, word [bp - 0x0006]       ; 0x3cdc
    add ax, strict word 7            ; 0x3cdf
    push ax                          ; 0x3ce2
    mov ax, word [bp - 0x0004]       ; 0x3ce3
    add ax, strict word 0x5d         ; 0x3ce6
    push ax                          ; 0x3ce9
    mov ax, word [bp - 0x0002]       ; 0x3cea
    add ax, strict word 6            ; 0x3ced
    push ax                          ; 0x3cf0
    call ds_dispatch_baa6            ; 0x3cf1
    add sp, byte 0x0e                ; 0x3cf4
    inc word [bp - 0x0002]           ; 0x3cf7
@..api_idx_0038.l6:
    mov ax, word [bp - 0x0002]       ; 0x3cfa
    cmp ax, word [bp - 0x001e]       ; 0x3cfd
    jl short @..api_idx_0038.l5      ; 0x3d00
    mov ax, 0                        ; 0x3d02
    push ax                          ; 0x3d05
    push ax                          ; 0x3d06
    push ax                          ; 0x3d07
    push ax                          ; 0x3d08
    push ax                          ; 0x3d09
    mov ax, 0xffff                   ; 0x3d0a
    push ax                          ; 0x3d0d
    mov ax, word [bp - 0x001e]       ; 0x3d0e
    add ax, strict word 6            ; 0x3d11
    push ax                          ; 0x3d14
    call ds_dispatch_baa6            ; 0x3d15
    add sp, byte 0x0e                ; 0x3d18
    mov ax, word [bp - 0x000a]       ; 0x3d1b
    inc ax                           ; 0x3d1e
    push ax                          ; 0x3d1f
    mov ax, word [bp - 0x0008]       ; 0x3d20
    inc ax                           ; 0x3d23
    push ax                          ; 0x3d24
    mov ax, word [bp - 0x0006]       ; 0x3d25
    dec ax                           ; 0x3d28
    push ax                          ; 0x3d29
    mov ax, word [bp - 0x0004]       ; 0x3d2a
    dec ax                           ; 0x3d2d
    push ax                          ; 0x3d2e
    call ds_dispatch_e8da            ; 0x3d2f
    add sp, byte 8                   ; 0x3d32
    mov word [bp - 0x001a], 1        ; 0x3d35
@..api_idx_0038.l7:
    mov ax, 0x59fe                   ; 0x3d3a
    push ax                          ; 0x3d3d
    call ds_dispatch_b90d            ; 0x3d3e
    pop cx                           ; 0x3d41
    dec ax                           ; 0x3d42
    mov word [bp - 0x0018], ax       ; 0x3d43
    cmp word [data_59fc], byte 0     ; 0x3d46
    je short @..api_idx_0038.l11     ; 0x3d4b
    mov ax, word [bp - 0x0020]       ; 0x3d4d
    cmp ax, word [bp - 0x0016]       ; 0x3d50
    jl short @..api_idx_0038.l8      ; 0x3d53
    inc word [bp - 0x0020]           ; 0x3d55
@..api_idx_0038.l8:
    mov ax, word [bp - 0x0020]       ; 0x3d58
    cmp ax, strict word 0xffff       ; 0x3d5b
    je short @..api_idx_0038.l9      ; 0x3d5e
    cmp ax, word [bp - 0x0016]       ; 0x3d60
    jl short @..api_idx_0038.l9      ; 0x3d63
    mov ax, word [bp - 0x0016]       ; 0x3d65
    add ax, word [bp - 0x001e]       ; 0x3d68
    mov cx, ax                       ; 0x3d6b
    dec ax                           ; 0x3d6d
    mov cx, ax                       ; 0x3d6e
    mov ax, word [bp - 0x0020]       ; 0x3d70
    cmp cx, ax                       ; 0x3d73
    jge short @..api_idx_0038.l10    ; 0x3d75
@..api_idx_0038.l9:
    mov ax, word [bp - 0x0016]       ; 0x3d77
    mov word [bp - 0x0020], ax       ; 0x3d7a
@..api_idx_0038.l10:
    mov word [data_5b3e], 1          ; 0x3d7d
    mov ax, word [bp - 0x0020]       ; 0x3d83
    sub ax, word [bp - 0x0016]       ; 0x3d86
    add ax, strict word 6            ; 0x3d89
    mov word [bp - 0x0018], ax       ; 0x3d8c
@..api_idx_0038.l11:
    cmp word [data_5b3e], byte 1     ; 0x3d8f
    je short @..api_idx_0038.l12     ; 0x3d94
    jmp near @..api_idx_0038.l16     ; 0x3d96
@..api_idx_0038.l12:
    mov ax, word [bp - 0x0018]       ; 0x3d99
    jmp near @..api_idx_0038.l14     ; 0x3d9c

    db 0x8d, 0x46, 0xf2, 0x50, 0x8d, 0x46, 0xf4, 0x50, 0xe8, 0xa9, 0xb2, 0x83, 0xc4, 0x04, 0xb8, 0x04
    db 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0x8b, 0x46, 0xf2, 0x8b, 0x4e, 0xfa, 0x03, 0x4e, 0xf0, 0x83
    db 0xc1, 0x0e, 0x2b, 0xc1, 0x50, 0xe8, 0xfb, 0x79, 0x83, 0xc4, 0x06, 0x89, 0x46, 0xec, 0x8d, 0x46
    db 0xf2, 0x50, 0x8d, 0x46, 0xf4, 0x50, 0xe8, 0x7b, 0xb2, 0x83, 0xc4, 0x04, 0x89, 0x46, 0xe4, 0xff
    db 0x76, 0xee, 0xb8, 0x00, 0x00, 0x50, 0x8b, 0x46, 0xf2, 0x8b, 0x4e, 0xfa, 0x83, 0xc1, 0x0e, 0x2b
    db 0xc1, 0x2b, 0x46, 0xec, 0x50, 0xe8, 0xcb, 0x79, 0x83, 0xc4, 0x06, 0x89, 0x46, 0xf0, 0x83, 0x7e
    db 0x0c, 0x03, 0x7e, 0x1f, 0xb9, 0x64, 0x00, 0xf7, 0xe9, 0x50, 0x8b, 0x46, 0xee, 0xf7, 0xe9, 0x05
    db 0x64, 0x00, 0x8b, 0x4e, 0x0c, 0x49, 0x49, 0x99, 0xf7, 0xf9, 0x8b, 0xc8, 0x58, 0x99, 0xf7, 0xf9
    db 0x89, 0x46, 0xea, 0xff, 0x76, 0xde, 0xff, 0x76, 0xe0, 0xff, 0x76, 0xea, 0xb8, 0x07, 0x00, 0x50
    db 0xb8, 0x0f, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x5d
    db 0x00, 0x50, 0xe8, 0xa7, 0xfb, 0x83, 0xc4, 0x0e, 0xff, 0x76, 0xf0, 0xb8, 0x07, 0x00, 0x50, 0xb8
    db 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc1, 0x00
    db 0x50, 0xe8, 0x75, 0x81, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x8b, 0x46, 0xfa, 0x03
    db 0x46, 0xf0, 0x05, 0x12, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc9, 0x00, 0x50, 0x8b, 0x46, 0xfa
    db 0x03, 0x46, 0xf0, 0x05, 0x0e, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc1, 0x00, 0x50, 0xb8, 0x00
    db 0x00, 0x50, 0xe8, 0x12, 0x7c, 0x83, 0xc4, 0x0e, 0x8b, 0x46, 0xfa, 0x05, 0x30, 0x00, 0x50, 0x8b
    db 0x46, 0xfc, 0x05, 0xc9, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xfc
    db 0x05, 0x5d, 0x00, 0x50, 0xe8, 0x24, 0xaa, 0x83, 0xc4, 0x08, 0x83, 0x7e, 0xe4, 0x00, 0x74, 0x03
    db 0xe9, 0x0b, 0xff, 0xe9, 0x97, 0x02, 0x83, 0x7e, 0xe8, 0x01, 0x75, 0x31, 0xb8, 0x01, 0x00, 0x50
    db 0x8b, 0x46, 0xfa, 0x05, 0x0c, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc9, 0x00, 0x50, 0x8b, 0x46
    db 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc1, 0x00, 0x50, 0xe8, 0xca, 0x7f, 0x83
    db 0xc4, 0x0a, 0x83, 0x7e, 0xea, 0x00, 0x7e, 0x03, 0xff, 0x4e, 0xea, 0xeb, 0x34, 0xb8, 0x01, 0x00
    db 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x30, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc9, 0x00, 0x50, 0x8b
    db 0x46, 0xfa, 0x05, 0x2a, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc1, 0x00, 0x50, 0xe8, 0x99, 0x7f
    db 0x83, 0xc4, 0x0a, 0x8b, 0x46, 0x0c
    db 'HHH;F'
    db 0xea, 0x7e, 0x03, 0xff, 0x46, 0xea, 0x83, 0x7e, 0x0c, 0x03, 0x7e, 0x2c, 0xff, 0x76, 0xee, 0xb8
    db 0x00, 0x00, 0x50, 0xb8, 0x64, 0x00, 0xf7, 0x6e, 0xee, 0x05, 0x64, 0x00, 0x8b, 0x4e, 0x0c, 0x49
    db 0x49, 0x49, 0x99, 0xf7, 0xf9, 0xf7, 0x6e, 0xea, 0xb9, 0x64, 0x00, 0x99, 0xf7, 0xf9, 0x50, 0xe8
    db 0x66, 0x78, 0x83, 0xc4, 0x06, 0x89, 0x46, 0xf0, 0xff, 0x76, 0xde, 0xff, 0x76, 0xe0, 0xff, 0x76
    db 0xea, 0xb8, 0x07, 0x00, 0x50, 0xb8, 0x0f, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50
    db 0x8b, 0x46, 0xfc, 0x05, 0x5d, 0x00, 0x50, 0xe8, 0x67, 0xfa, 0x83, 0xc4, 0x0e, 0xff, 0x76, 0xf0
    db 0xb8, 0x07, 0x00, 0x50, 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b
    db 0x46, 0xfc, 0x05, 0xc1, 0x00, 0x50, 0xe8, 0x35, 0x80, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50
    db 0x50, 0x8b, 0x46, 0xfa, 0x03, 0x46, 0xf0, 0x05, 0x12, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc9
    db 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x03, 0x46, 0xf0, 0x05, 0x0e, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05
    db 0xc1, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xe8, 0xd2, 0x7a, 0x83, 0xc4, 0x0e, 0x8b, 0x46, 0xfa
    db 0x05, 0x30, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc9, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06
    db 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x5d, 0x00, 0x50, 0xe8, 0xe4, 0xa8, 0x83, 0xc4, 0x08, 0xe9
    db 0x60, 0x01, 0x83, 0x7e, 0x06, 0x00, 0x74, 0x48, 0xb8, 0x01, 0x00, 0x50, 0x50, 0xb8, 0x0c, 0x00
    db 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x07, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x08, 0x00, 0x50, 0xe8
    db 0x43, 0x7e, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x0c, 0x00
    db 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x07, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x08, 0x00, 0x50, 0xe8
    db 0x23, 0x7e, 0x83, 0xc4, 0x0a, 0xc7, 0x06, 0x50, 0x90, 0x00, 0x00, 0xc7, 0x46, 0xe6, 0x00, 0x00
    db 0xe9, 0x0f, 0x01, 0x83, 0x7e, 0x08, 0x00, 0x74, 0x48, 0xb8, 0x01, 0x00, 0x50, 0x50, 0xb8, 0x0c
    db 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x17, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x08, 0x00, 0x50
    db 0xe8, 0xf2, 0x7d, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x0c
    db 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x17, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x08, 0x00, 0x50
    db 0xe8, 0xd2, 0x7d, 0x83, 0xc4, 0x0a, 0xc7, 0x06, 0x50, 0x90, 0x01, 0x00, 0xc7, 0x46, 0xe6, 0x00
    db 0x00, 0xe9, 0xbe, 0x00, 0x83, 0x7e, 0x0a, 0x00, 0x74, 0x48, 0xb8, 0x01, 0x00, 0x50, 0x50, 0xb8
    db 0x0c, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x27, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x08, 0x00
    db 0x50, 0xe8, 0xa1, 0x7d, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8
    db 0x0c, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x27, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x08, 0x00
    db 0x50, 0xe8, 0x81, 0x7d, 0x83, 0xc4, 0x0a, 0xc7, 0x06, 0x50, 0x90, 0x02, 0x00, 0xc7, 0x46, 0xe6
    db 0x00, 0x00, 0xeb, 0x6e

@..api_idx_0038.l13:
    mov ax, word [bp - 0x0016]       ; 0x40ee
    add ax, word [bp - 0x0018]       ; 0x40f1
    add ax, strict word 0xfffa       ; 0x40f4
    mov word [bp - 0x0020], ax       ; 0x40f7
    push word [bp - 0x0022]          ; 0x40fa
    push ax                          ; 0x40fd
    push word [bp - 0x0016]          ; 0x40fe
    mov ax, 7                        ; 0x4101
    push ax                          ; 0x4104
    mov ax, 0xf                      ; 0x4105
    push ax                          ; 0x4108
    mov ax, word [bp - 0x0006]       ; 0x4109
    add ax, strict word 6            ; 0x410c
    push ax                          ; 0x410f
    mov ax, word [bp - 0x0004]       ; 0x4110
    add ax, strict word 0x5d         ; 0x4113
    push ax                          ; 0x4116
    call math_loc_39eb               ; 0x4117
    add sp, byte 0x0e                ; 0x411a
    mov ax, word [bp - 0x0006]       ; 0x411d
    add ax, strict word 0x30         ; 0x4120
    push ax                          ; 0x4123
    mov ax, word [bp - 0x0004]       ; 0x4124
    add ax, 0xb9                     ; 0x4127
    push ax                          ; 0x412a
    mov ax, word [bp - 0x0006]       ; 0x412b
    add ax, strict word 6            ; 0x412e
    push ax                          ; 0x4131
    mov ax, word [bp - 0x0004]       ; 0x4132
    add ax, strict word 0x5d         ; 0x4135
    push ax                          ; 0x4138
    call ds_dispatch_e8da            ; 0x4139
    add sp, byte 8                   ; 0x413c
    jmp short @..api_idx_0038.l16    ; 0x413f
    db 0xe6, 0x8d, 0x0c, 0x8f, 0x0c, 0x8f, 0x43, 0x90, 0x94, 0x90, 0xe5, 0x90
@..api_idx_0038.l14:
    cmp ax, strict word 6            ; 0x414d
    jae short @..api_idx_0038.l15    ; 0x4150
    xchg bx, ax                      ; 0x4152
    shl bx, 1                        ; 0x4153
    jmp [cs:bx - 0x6e78]             ; 0x4155
@..api_idx_0038.l15:
    jmp short @..api_idx_0038.l13    ; 0x415a
@..api_idx_0038.l16:
    cmp word [bp - 0x001a], byte 0   ; 0x415c
    je short @..api_idx_0038.l17     ; 0x4160
    jmp near @..api_idx_0038.l7      ; 0x4162
@..api_idx_0038.l17:
    mov ax, 1                        ; 0x4165
    push ax                          ; 0x4168
    push word [bp - 0x0038]          ; 0x4169
    call ds_dispatch_c459            ; 0x416c
    add sp, byte 4                   ; 0x416f
    mov ax, word [bp - 0x0020]       ; 0x4172
    mov word [data_904e], ax         ; 0x4175
    mov ax, word [data_9050]         ; 0x4178
    ret                              ; 0x417b
%include "vdopt/api_idx_0094.asm"

%include "vdopt/api_idx_0004_7.asm"

loc_46d9:
    pop word [data_90b4]             ; 0x46d9
    pop cx                           ; 0x46dd
    mov word [data_90b0], sp         ; 0x46de
    mov word [data_90b2], bp         ; 0x46e2
    mov word [data_90ac], si         ; 0x46e6
    mov word [data_90ae], di         ; 0x46ea
    cld                              ; 0x46ee
    mov di, data_90b6                ; 0x46ef
    mov cx, 0x9d94                   ; 0x46f2
    sub cx, di                       ; 0x46f5
    shr cx, 1                        ; 0x46f7
    je short @..local.l32            ; 0x46f9
    sub ax, ax                       ; 0x46fb
    rep stosw                        ; 0x46fd
@..local.l32:
    call loc_000e                    ; 0x46ff
    mov bp, word [data_90b2]         ; 0x4702
    mov sp, word [data_90b0]         ; 0x4706
    mov si, word [data_90ac]         ; 0x470a
    mov di, word [data_90ae]         ; 0x470e
    push cx                          ; 0x4712
    jmp [data_90b4]                  ; 0x4713
%include "vdopt/leaf_loc_4717.asm"

