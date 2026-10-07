%include "structs/structs.inc"
%include "structs/loc_35f3.inc"
org 0
bits 16
%include "labels/vdopt_foreign_labels.inc"

    ; header (8 bytes)
    db 0xf2, 0x00, 0x55, 0x50, 0x21, 0x47, 0x98, 0x90

data_0002 equ 0x0002
data_002f equ 0x002f
data_0375 equ 0x0375
data_08c4 equ 0x08c4
data_0e0e equ 0x0e0e
data_0e10 equ 0x0e10
data_0e12 equ 0x0e12
data_0e14 equ 0x0e14
data_15b9 equ 0x15b9
data_35eb equ 0x35eb
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
math_loc_00a5:
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
api_idx_0004:
    mov ax, 0xfffc                   ; 0x00df
    call ds_dispatch_f40b            ; 0x00e2
    push word [bp + 0xc]             ; 0x00e5
    push word [bp + 0xa]             ; 0x00e8
    mov bx, word [bp + 0x8]          ; 0x00eb
    push word [bx]                   ; 0x00ee
    call math_loc_00a5               ; 0x00f0
    add sp, byte 6                   ; 0x00f3
    mov word [bp - 0x0004], ax       ; 0x00f6
    cmp ax, strict word 0xffff       ; 0x00f9
    jne short @..local.l6            ; 0x00fc
    push word [bp + 0xc]             ; 0x00fe
    push word [bp + 0xa]             ; 0x0101
    push word [data_8f48]            ; 0x0104
    call math_loc_00a5               ; 0x0108
    add sp, byte 6                   ; 0x010b
    mov word [bp - 0x0004], ax       ; 0x010e
    cmp ax, strict word 0xffff       ; 0x0111
    jne short @..local.l6            ; 0x0114
    mov bx, word [bp + 0x8]          ; 0x0116
    mov ax, word [bx]                ; 0x0119
    inc ax                           ; 0x011b
    mov cx, 0x10                     ; 0x011c
    cwd                              ; 0x011f
    idiv cx                          ; 0x0120
    mov word [bp - 0x0002], dx       ; 0x0122
@..api_idx_0004.l1:
    push word [bp + 0xc]             ; 0x0125
    push word [bp + 0xa]             ; 0x0128
    push word [bp - 0x0002]          ; 0x012b
    call math_loc_00a5               ; 0x012e
    add sp, byte 6                   ; 0x0131
    mov word [bp - 0x0004], ax       ; 0x0134
    cmp ax, strict word 0xffff       ; 0x0137
    jne short @..local.l6            ; 0x013a
    mov ax, word [bp - 0x0002]       ; 0x013c
    inc ax                           ; 0x013f
    mov cx, 0x10                     ; 0x0140
    cwd                              ; 0x0143
    idiv cx                          ; 0x0144
    mov word [bp - 0x0002], dx       ; 0x0146
    mov bx, word [bp + 0x8]          ; 0x0149
    cmp dx, word [bx]                ; 0x014c
    jne short @..local.l5            ; 0x014e
    mov ax, 1                        ; 0x0150
    ret                              ; 0x0153
@..local.l5:
    jmp short @..api_idx_0004.l1     ; 0x0154
@..local.l6:
    mov ax, word [bp + 0xa]          ; 0x0156
    push ax                          ; 0x0159
    mov bx, word [data_0e14]         ; 0x015a
    mov si, word [bp - 0x0004]       ; 0x015e
    mov al, byte [bx + si + 0x490]   ; 0x0161
    sub ah, ah                       ; 0x0165
    mov cx, ax                       ; 0x0167
    pop ax                           ; 0x0169
    sub ax, cx                       ; 0x016a
    mov bx, word [bp + 0x4]          ; 0x016c
    mov word [bx], ax                ; 0x016f
    mov ax, word [bp + 0xc]          ; 0x0171
    push ax                          ; 0x0174
    mov bx, word [data_0e14]         ; 0x0175
    mov si, word [bp - 0x0004]       ; 0x0179
    mov al, byte [bx + si + 0x4a0]   ; 0x017c
    sub ah, ah                       ; 0x0180
    mov cx, ax                       ; 0x0182
    pop ax                           ; 0x0184
    sub ax, cx                       ; 0x0185
    mov bx, word [bp + 0x6]          ; 0x0187
    mov word [bx], ax                ; 0x018a
    mov ax, word [bp - 0x0004]       ; 0x018c
    mov bx, word [bp + 0x8]          ; 0x018f
    mov word [bx], ax                ; 0x0192
    mov word [data_8f48], ax         ; 0x0194
    mov ax, 0                        ; 0x0197
    ret                              ; 0x019a
api_idx_0002:
    mov ax, 0xfffe                   ; 0x019b
    call ds_dispatch_f40b            ; 0x019e
    mov ax, word [bp + 0xa]          ; 0x01a1
    mov word [bp - 0x0002], ax       ; 0x01a4
    jmp short @..local.l9            ; 0x01a7
@..api_idx_0002.l1:
    mov bx, word [data_0e12]         ; 0x01a9
    mov si, word [bp - 0x0002]       ; 0x01ad
    mov al, byte [bx + si + 0x870]   ; 0x01b0
    sub ah, ah                       ; 0x01b4
    cmp ax, word [bp + 0x8]          ; 0x01b6
    je short @..local.l7             ; 0x01b9
    mov ax, 0xffff                   ; 0x01bb
    ret                              ; 0x01be
@..local.l7:
    mov al, byte [bx + si + 0x690]   ; 0x01bf
    sub ah, ah                       ; 0x01c3
    cmp ax, word [bp + 0x4]          ; 0x01c5
    jne short @..local.l8            ; 0x01c8
    mov al, byte [bx + si + 0x780]   ; 0x01ca
    sub ah, ah                       ; 0x01ce
    cmp ax, word [bp + 0x6]          ; 0x01d0
    jne short @..local.l8            ; 0x01d3
    cmp byte [bx + si + 0x5a0], 0    ; 0x01d5
    jbe short @..local.l8            ; 0x01da
    mov al, byte [bx + si + 0x960]   ; 0x01dc
    sub ah, ah                       ; 0x01e0
    push ax                          ; 0x01e2
    mov ax, word [data_830c]         ; 0x01e3
    mov cx, 4                        ; 0x01e6
    shl ax, cl                       ; 0x01e9
    add ax, 0x8d14                   ; 0x01eb
    push ax                          ; 0x01ee
    call ds_dispatch_ec74            ; 0x01ef
    add sp, byte 4                   ; 0x01f2
    test ax, ax                      ; 0x01f5
    jne short @..local.l8            ; 0x01f7
    mov ax, word [bp - 0x0002]       ; 0x01f9
    ret                              ; 0x01fc
@..local.l8:
    inc word [bp - 0x0002]           ; 0x01fd
@..local.l9:
    cmp word [bp - 0x0002], strict word 0xf0 ; 0x0200
    jl short @..api_idx_0002.l1      ; 0x0205
    mov ax, 0xffff                   ; 0x0207
    ret                              ; 0x020a
api_idx_002a:
    mov ax, 0xffd6                   ; 0x020b
    call ds_dispatch_f40b            ; 0x020e
    mov ax, 0                        ; 0x0211
    push ax                          ; 0x0214
    mov ax, 0x28                     ; 0x0215
    push ax                          ; 0x0218
    lea ax, word [bp - 0x002a]       ; 0x0219
    push ax                          ; 0x021c
    call ds_dispatch_f306            ; 0x021d
    add sp, byte 6                   ; 0x0220
    push word [bp + 0x4]             ; 0x0223
    lea ax, word [bp - 0x002a]       ; 0x0226
    push ax                          ; 0x0229
    call ds_dispatch_f364            ; 0x022a
    add sp, byte 4                   ; 0x022d
    mov ax, data_002f                ; 0x0230
    push ax                          ; 0x0233
    lea ax, word [bp - 0x002a]       ; 0x0234
    push ax                          ; 0x0237
    call ds_dispatch_ee4a            ; 0x0238
    add sp, byte 4                   ; 0x023b
    mov word [bp - 0x0002], ax       ; 0x023e
    cmp ax, strict word 0xffff       ; 0x0241
    jne short @..api_idx_002a.l1     ; 0x0244
    lea ax, word [bp - 0x002a]       ; 0x0246
    push ax                          ; 0x0249
    call ds_dispatch_fa90            ; 0x024a
    pop cx                           ; 0x024d
    mov word [bp - 0x0002], ax       ; 0x024e
@..api_idx_002a.l1:
    cmp word [bp - 0x0002], byte 0x0a ; 0x0251
    jle short @..api_idx_002a.l2     ; 0x0255
    mov word [bp - 0x0002], 0xa      ; 0x0257
@..api_idx_002a.l2:
    mov bx, word [bp - 0x0002]       ; 0x025c
    add bx, bp                       ; 0x025f
    mov byte [bx - 0x002a], 0        ; 0x0261
    mov byte [bx - 0x001f], 0        ; 0x0265
    mov ax, 0                        ; 0x0269
    push ax                          ; 0x026c
    push word [bp + 0xa]             ; 0x026d
    call ds_dispatch_e823            ; 0x0270
    add sp, byte 4                   ; 0x0273
    push word [bp + 0x8]             ; 0x0276
    push word [bp + 0x6]             ; 0x0279
    call ds_dispatch_e809            ; 0x027c
    add sp, byte 4                   ; 0x027f
    mov ax, 0                        ; 0x0282
    push ax                          ; 0x0285
    lea ax, word [bp - 0x002a]       ; 0x0286
    push ax                          ; 0x0289
    call ds_dispatch_e84e            ; 0x028a
    add sp, byte 4                   ; 0x028d
    mov ax, word [bp + 0x8]          ; 0x0290
    add ax, strict word 6            ; 0x0293
    push ax                          ; 0x0296
    push word [bp + 0x6]             ; 0x0297
    call ds_dispatch_e809            ; 0x029a
    add sp, byte 4                   ; 0x029d
    mov ax, 0                        ; 0x02a0
    push ax                          ; 0x02a3
    mov ax, word [bp - 0x0002]       ; 0x02a4
    lea cx, word [bp - 0x0029]       ; 0x02a7
    add ax, cx                       ; 0x02aa
    push ax                          ; 0x02ac
    call ds_dispatch_e84e            ; 0x02ad
    add sp, byte 4                   ; 0x02b0
    ret                              ; 0x02b3
loc_02b4:
    mov ax, 0                        ; 0x02b4
    call ds_dispatch_f40b            ; 0x02b7
    mov ax, 0xa                      ; 0x02ba
    push ax                          ; 0x02bd
    call ds_dispatch_e489            ; 0x02be
    pop cx                           ; 0x02c1
    ret                              ; 0x02c2
api_idx_0004_2:
    mov ax, 0xfffc                   ; 0x02c3
    call ds_dispatch_f40b            ; 0x02c6
    call ds_dispatch_ec17            ; 0x02c9
    mov ax, word [bp + 0x4]          ; 0x02cc
    cwd                              ; 0x02cf
    les bx, word [data_0002]         ; 0x02d0
    mov cx, word [es:bx]             ; 0x02d4
    mov bx, word [es:bx + 0x2]       ; 0x02d7
    add ax, cx                       ; 0x02db
    adc dx, bx                       ; 0x02dd
    mov word [bp - 0x0002], dx       ; 0x02df
    mov word [bp - 0x0004], ax       ; 0x02e2
@..api_idx_0004_2.l1:
    les bx, word [data_0002]         ; 0x02e5
    mov ax, word [es:bx]             ; 0x02e9
    mov dx, word [es:bx + 0x2]       ; 0x02ec
    cmp dx, word [bp - 0x0002]       ; 0x02f0
    jg short @..api_idx_0004_2.l2    ; 0x02f3
    jne short @..api_idx_0004_2.l3   ; 0x02f5
    cmp ax, word [bp - 0x0004]       ; 0x02f7
    jb short @..api_idx_0004_2.l3    ; 0x02fa
@..api_idx_0004_2.l2:
    jmp short @..local.l11           ; 0x02fc
@..api_idx_0004_2.l3:
    call ds_dispatch_baef            ; 0x02fe
    test ax, ax                      ; 0x0301
    je short @..local.l10            ; 0x0303
    ret                              ; 0x0305
@..local.l10:
    call loc_02b4                    ; 0x0306
    jmp short @..api_idx_0004_2.l1   ; 0x0309
@..local.l11:
    ret                              ; 0x030b
api_idx_0006:
    mov ax, 0xfffa                   ; 0x030c
    call ds_dispatch_f40b            ; 0x030f
    mov ax, word [bp + 0x8]          ; 0x0312
    xchg al, ah                      ; 0x0315
    sub al, al                       ; 0x0317
    mov dx, word [bp + 0xa]          ; 0x0319
    mov cx, 4                        ; 0x031c
    shl dx, cl                       ; 0x031f
    mov cx, dx                       ; 0x0321
    add ax, cx                       ; 0x0323
    add ax, word [bp + 0xc]          ; 0x0325
    mov word [bp - 0x0004], ax       ; 0x0328
    mov ax, word [data_0e10]         ; 0x032b
    mov word [bp - 0x0006], ax       ; 0x032e
    mov word [bp - 0x0002], 0        ; 0x0331
    jmp short @..local.l15           ; 0x0336
@..api_idx_0006.l1:
    mov bx, word [bp - 0x0006]       ; 0x0338
    mov al, byte [bx]                ; 0x033b
    sub ah, ah                       ; 0x033d
    cmp ax, word [bp + 0x4]          ; 0x033f
    jne short @..local.l14           ; 0x0342
    mov al, byte [bx + 0x1]          ; 0x0344
    sub ah, ah                       ; 0x0347
    cmp ax, word [bp + 0x6]          ; 0x0349
    jne short @..local.l14           ; 0x034c
    cmp word [bp + 0x6], byte 6      ; 0x034e
    jne short @..local.l13           ; 0x0352
    mov ax, word [bx + 0x2]          ; 0x0354
    cmp ax, word [bp + 0x8]          ; 0x0357
    jne short @..local.l12           ; 0x035a
    mov ax, word [bp - 0x0002]       ; 0x035c
    ret                              ; 0x035f
@..local.l12:
    jmp short @..local.l14           ; 0x0360
@..local.l13:
    mov ax, word [bx + 0x2]          ; 0x0362
    cmp ax, word [bp - 0x0004]       ; 0x0365
    jne short @..local.l14           ; 0x0368
    mov ax, word [bp - 0x0002]       ; 0x036a
    ret                              ; 0x036d
@..local.l14:
    add word [bp - 0x0006], byte 6   ; 0x036e
    inc word [bp - 0x0002]           ; 0x0372
@..local.l15:
    mov ax, word [bp - 0x0002]       ; 0x0375
    cmp ax, word [data_590e]         ; 0x0378
    jl short @..api_idx_0006.l1      ; 0x037c
    mov ax, 0xffff                   ; 0x037e
    ret                              ; 0x0381
api_idx_0004_3:
    mov ax, 0xfffc                   ; 0x0382
    call ds_dispatch_f40b            ; 0x0385
    push word [bp + 0xc]             ; 0x0388
    push word [bp + 0xa]             ; 0x038b
    push word [bp + 0x8]             ; 0x038e
    push word [bp + 0x6]             ; 0x0391
    push word [bp + 0x4]             ; 0x0394
    call api_idx_0006                ; 0x0397
    add sp, byte 0x0a                ; 0x039a
    mov word [bp - 0x0002], ax       ; 0x039d
    cmp ax, strict word 0xffff       ; 0x03a0
    jne short @..api_idx_0004_3.l2   ; 0x03a3
    mov ax, word [data_590e]         ; 0x03a5
    mov word [bp - 0x0002], ax       ; 0x03a8
    inc word [data_590e]             ; 0x03ab
    mov ax, word [data_590e]         ; 0x03af
    cmp ax, 0x200                    ; 0x03b2
    jl short @..api_idx_0004_3.l2    ; 0x03b5
@..api_idx_0004_3.l1:
    mov ax, 0                        ; 0x03b7
    push ax                          ; 0x03ba
    call ds_dispatch_b7e0            ; 0x03bb
    pop cx                           ; 0x03be
    jmp short @..api_idx_0004_3.l1   ; 0x03bf
@..api_idx_0004_3.l2:
    mov ax, 6                        ; 0x03c1
    imul word [bp - 0x0002]          ; 0x03c4
    mov cx, ax                       ; 0x03c7
    mov ax, word [data_0e10]         ; 0x03c9
    add ax, cx                       ; 0x03cc
    mov word [bp - 0x0004], ax       ; 0x03ce
    mov al, byte [bp + 0x4]          ; 0x03d1
    mov bx, word [bp - 0x0004]       ; 0x03d4
    mov byte [bx], al                ; 0x03d7
    mov al, byte [bp + 0x6]          ; 0x03d9
    mov bx, word [bp - 0x0004]       ; 0x03dc
    mov byte [bx + 0x1], al          ; 0x03df
    mov ax, word [bp + 0x8]          ; 0x03e2
    xchg al, ah                      ; 0x03e5
    sub al, al                       ; 0x03e7
    mov dx, word [bp + 0xa]          ; 0x03e9
    mov cx, 4                        ; 0x03ec
    shl dx, cl                       ; 0x03ef
    mov cx, dx                       ; 0x03f1
    add ax, cx                       ; 0x03f3
    add ax, word [bp + 0xc]          ; 0x03f5
    mov bx, word [bp - 0x0004]       ; 0x03f8
    mov word [bx + 0x2], ax          ; 0x03fb
    mov ax, word [bp + 0x6]          ; 0x03fe
    jmp short @..api_idx_0004_3.l3   ; 0x0401
    mov ax, word [bp + 0xe]          ; 0x0403
    mov cx, 4                        ; 0x0406
    shl ax, cl                       ; 0x0409
    add ax, word [bp + 0x10]         ; 0x040b
    xchg al, ah                      ; 0x040e
    sub al, al                       ; 0x0410
    mov dx, word [bp + 0x12]         ; 0x0412
    shl dx, cl                       ; 0x0415
    mov cx, dx                       ; 0x0417
    add ax, cx                       ; 0x0419
    add ax, word [bp + 0x14]         ; 0x041b
    mov bx, word [bp - 0x0004]       ; 0x041e
    mov word [bx + 0x4], ax          ; 0x0421
    jmp short @..api_idx_0004_3.l4   ; 0x0424
    mov ax, word [bp + 0xe]          ; 0x0426
    mov bx, word [bp - 0x0004]       ; 0x0429
    mov word [bx + 0x4], ax          ; 0x042c
    jmp short @..api_idx_0004_3.l4   ; 0x042f
    mov ax, word [bp + 0xe]          ; 0x0431
    xchg al, ah                      ; 0x0434
    sub al, al                       ; 0x0436
    add ax, word [bp + 0x10]         ; 0x0438
    mov bx, word [bp - 0x0004]       ; 0x043b
    mov word [bx + 0x4], ax          ; 0x043e
    jmp short @..api_idx_0004_3.l4   ; 0x0441
    mov ax, word [bp + 0x8]          ; 0x0443
    mov bx, word [bp - 0x0004]       ; 0x0446
    mov word [bx + 0x2], ax          ; 0x0449
    mov ax, word [bp + 0xe]          ; 0x044c
    mov bx, word [bp - 0x0004]       ; 0x044f
    mov word [bx + 0x4], ax          ; 0x0452
    jmp short @..api_idx_0004_3.l4   ; 0x0455
    dec dx                           ; 0x0457
    push sp                          ; 0x0458
    insw                             ; 0x0459
    push sp                          ; 0x045a
    insw                             ; 0x045b
    push sp                          ; 0x045c
    insw                             ; 0x045d
    push sp                          ; 0x045e
    insw                             ; 0x045f
    push sp                          ; 0x0460
    js short loc_04b7                ; 0x0461
    db 0x8a, 0x54
@..api_idx_0004_3.l3:
    db 0x3d
    pop es                           ; 0x0466
    add byte [bp + di + 0x8], dh     ; 0x0467
    xchg bx, ax                      ; 0x046a
    shl bx, 1                        ; 0x046b
    jmp [cs:bx + 0x549e]             ; 0x046d
@..api_idx_0004_3.l4:
    ret                              ; 0x0472
api_idx_0002_2:
    mov ax, 0xfffe                   ; 0x0473
    call ds_dispatch_f40b            ; 0x0476
    mov ax, word [bp + 0x6]          ; 0x0479
    mov word [bp - 0x0002], ax       ; 0x047c
    jmp short @..api_idx_0002_2.l2   ; 0x047f
@..api_idx_0002_2.l1:
    mov ax, word [bp - 0x0002]       ; 0x0481
    mov cx, 8                        ; 0x0484
    cwd                              ; 0x0487
    idiv cx                          ; 0x0488
    mov si, ax                       ; 0x048a
    mov bx, word [bp + 0x4]          ; 0x048c
    mov al, byte [bx + si]           ; 0x048f
    cbw                              ; 0x0491
    push ax                          ; 0x0492
    mov ax, word [bp - 0x0002]       ; 0x0493
    cwd                              ; 0x0496
    idiv cx                          ; 0x0497
    mov cx, dx                       ; 0x0499
    mov dx, 1                        ; 0x049b
    shl dx, cl                       ; 0x049e
    mov cx, dx                       ; 0x04a0
    not cx                           ; 0x04a2
    pop ax                           ; 0x04a4
    and ax, cx                       ; 0x04a5
    mov byte [bx + si], al           ; 0x04a7
    inc word [bp - 0x0002]           ; 0x04a9
@..api_idx_0002_2.l2:
    mov ax, word [bp + 0x6]          ; 0x04ac
    inc ax                           ; 0x04af
    inc ax                           ; 0x04b0
    cmp ax, word [bp - 0x0002]       ; 0x04b1
    jg short @..api_idx_0002_2.l1    ; 0x04b4
    ret                              ; 0x04b6
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
    jle short @..local.l16           ; 0x0518
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
@..local.l16:
    mov ax, 1                        ; 0x055c
    push ax                          ; 0x055f
    call ds_dispatch_b7e0            ; 0x0560
    pop cx                           ; 0x0563
    ret                              ; 0x0564
api_idx_0058:
    mov ax, 0xffa8                   ; 0x0565
    call ds_dispatch_f40b            ; 0x0568
    lea ax, word [bp - 0x0058]       ; 0x056b
    push ax                          ; 0x056e
    push word [bp + 0x4]             ; 0x056f
    call ds_dispatch_b53b            ; 0x0572
    add sp, byte 4                   ; 0x0575
    mov ax, 0x98                     ; 0x0578
    push ax                          ; 0x057b
    mov ax, 0x13f                    ; 0x057c
    push ax                          ; 0x057f
    mov ax, 0x92                     ; 0x0580
    push ax                          ; 0x0583
    mov ax, 0                        ; 0x0584
    push ax                          ; 0x0587
    call ds_dispatch_e8da            ; 0x0588
    add sp, byte 8                   ; 0x058b
    lea ax, word [bp - 0x0058]       ; 0x058e
    push ax                          ; 0x0591
    call ds_dispatch_fa90            ; 0x0592
    pop cx                           ; 0x0595
    mov cx, 6                        ; 0x0596
    imul cx                          ; 0x0599
    mov cx, data_0002                ; 0x059b
    cwd                              ; 0x059e
    idiv cx                          ; 0x059f
    mov cx, ax                       ; 0x05a1
    mov ax, 0xa1                     ; 0x05a3
    sub ax, cx                       ; 0x05a6
    mov word [bp - 0x0002], ax       ; 0x05a8
    lea ax, word [bp - 0x0058]       ; 0x05ab
    push ax                          ; 0x05ae
    call ds_dispatch_fa90            ; 0x05af
    pop cx                           ; 0x05b2
    mov cx, 6                        ; 0x05b3
    imul cx                          ; 0x05b6
    mov cx, ax                       ; 0x05b8
    mov ax, word [bp - 0x0002]       ; 0x05ba
    add cx, ax                       ; 0x05bd
    mov word [bp - 0x0004], cx       ; 0x05bf
    mov ax, 0x98                     ; 0x05c2
    push ax                          ; 0x05c5
    push cx                          ; 0x05c6
    mov ax, 0x92                     ; 0x05c7
    push ax                          ; 0x05ca
    push word [bp - 0x0002]          ; 0x05cb
    call ds_dispatch_e928            ; 0x05ce
    add sp, byte 8                   ; 0x05d1
    mov word [bp - 0x0006], dx       ; 0x05d4
    mov word [bp - 0x0008], ax       ; 0x05d7
    mov ax, 0                        ; 0x05da
    push ax                          ; 0x05dd
    mov ax, 0x16                     ; 0x05de
    push ax                          ; 0x05e1
    call ds_dispatch_e823            ; 0x05e2
    add sp, byte 4                   ; 0x05e5
    mov ax, 0x92                     ; 0x05e8
    push ax                          ; 0x05eb
    push word [bp - 0x0002]          ; 0x05ec
    call ds_dispatch_e809            ; 0x05ef
    add sp, byte 4                   ; 0x05f2
    mov ax, 0                        ; 0x05f5
    push ax                          ; 0x05f8
    lea ax, word [bp - 0x0058]       ; 0x05f9
    push ax                          ; 0x05fc
    call ds_dispatch_e84e            ; 0x05fd
    add sp, byte 4                   ; 0x0600
    mov ax, 0x98                     ; 0x0603
    push ax                          ; 0x0606
    push word [bp - 0x0004]          ; 0x0607
    mov ax, 0x92                     ; 0x060a
    push ax                          ; 0x060d
    push word [bp - 0x0002]          ; 0x060e
    call ds_dispatch_e8da            ; 0x0611
    add sp, byte 8                   ; 0x0614
    cmp word [data_90b8], byte 0     ; 0x0617
    je short @..api_idx_0058.l1      ; 0x061c
    mov ax, 0                        ; 0x061e
    push ax                          ; 0x0621
    call ds_dispatch_b7e0            ; 0x0622
    pop cx                           ; 0x0625
@..api_idx_0058.l1:
    mov ax, word [data_905a]         ; 0x0626
    mov cx, data_0002                ; 0x0629
    cwd                              ; 0x062c
    idiv cx                          ; 0x062d
    push ax                          ; 0x062f
    call api_idx_0004_2              ; 0x0630
    pop cx                           ; 0x0633
    mov ax, 1                        ; 0x0634
    push ax                          ; 0x0637
    push word [bp - 0x0006]          ; 0x0638
    push word [bp - 0x0008]          ; 0x063b
    call ds_dispatch_e94f            ; 0x063e
    add sp, byte 6                   ; 0x0641
    mov ax, 0x98                     ; 0x0644
    push ax                          ; 0x0647
    mov ax, 0x13f                    ; 0x0648
    push ax                          ; 0x064b
    mov ax, 0x92                     ; 0x064c
    push ax                          ; 0x064f
    mov ax, 0                        ; 0x0650
    push ax                          ; 0x0653
    call ds_dispatch_e8da            ; 0x0654
    add sp, byte 8                   ; 0x0657
    ret                              ; 0x065a
api_idx_0002_3:
    mov ax, 0xfffe                   ; 0x065b
    call ds_dispatch_f40b            ; 0x065e
    mov bx, word [data_0e12]         ; 0x0661
    mov si, word [data_8f3e]         ; 0x0665
    mov al, byte [bx + si + 0xb40]   ; 0x0669
    sub ah, ah                       ; 0x066d
    mov word [bp - 0x0002], ax       ; 0x066f
@..api_idx_0002_3.l1:
    push word [bp - 0x0002]          ; 0x0672
    push word [data_8f3e]            ; 0x0675
    push word [data_8f40]            ; 0x0679
    push word [data_8f42]            ; 0x067d
    call api_idx_0002                ; 0x0681
    add sp, byte 8                   ; 0x0684
    mov word [bp - 0x0002], ax       ; 0x0687
    cmp ax, strict word 0xffff       ; 0x068a
    je short @..local.l18            ; 0x068d
    mov bx, word [data_0e12]         ; 0x068f
    mov si, ax                       ; 0x0693
    cmp byte [bx + si + 0x5a0], 7    ; 0x0695
    jne short @..local.l17           ; 0x069a
    mov ax, data_0002                ; 0x069c
    push ax                          ; 0x069f
    mov ax, word [data_82ee]         ; 0x06a0
    shl ax, 1                        ; 0x06a3
    push ax                          ; 0x06a5
    shl si, 1                        ; 0x06a6
    push word [bx + si + 0x3c0]      ; 0x06a8
    call ds_dispatch_ed3a            ; 0x06ac
    add sp, byte 6                   ; 0x06af
    cmp ax, strict word 1            ; 0x06b2
    je short @..api_idx_0002_3.l2    ; 0x06b5
    mov ax, data_0002                ; 0x06b7
    push ax                          ; 0x06ba
    mov ax, word [data_82ee]         ; 0x06bb
    shl ax, 1                        ; 0x06be
    push ax                          ; 0x06c0
    mov ax, word [bp - 0x0002]       ; 0x06c1
    shl ax, 1                        ; 0x06c4
    mov si, ax                       ; 0x06c6
    mov bx, word [data_0e12]         ; 0x06c8
    push word [bx + si + 0x3c0]      ; 0x06cc
    call ds_dispatch_ed3a            ; 0x06d0
    add sp, byte 6                   ; 0x06d3
    cmp ax, strict word 2            ; 0x06d6
    jne short @..local.l17           ; 0x06d9
@..api_idx_0002_3.l2:
    mov ax, word [bp - 0x0002]       ; 0x06db
    ret                              ; 0x06de
@..local.l17:
    inc word [bp - 0x0002]           ; 0x06df
    jmp short @..api_idx_0002_3.l1   ; 0x06e2
@..local.l18:
    mov ax, 0xffff                   ; 0x06e4
    ret                              ; 0x06e7
api_idx_000e:
    mov ax, 0xfff2                   ; 0x06e8
    call ds_dispatch_f40b            ; 0x06eb
    call api_idx_0002_3              ; 0x06ee
    mov word [bp - 0x000e], ax       ; 0x06f1
    cmp ax, strict word 0xffff       ; 0x06f4
    jne short @..local.l19           ; 0x06f7
    mov ax, 0xffff                   ; 0x06f9
    ret                              ; 0x06fc
@..local.l19:
    mov ax, word [bp - 0x000e]       ; 0x06fd
    shl ax, 1                        ; 0x0700
    mov si, ax                       ; 0x0702
    mov bx, word [data_0e12]         ; 0x0704
    mov ax, word [bx + si + 0x1e0]   ; 0x0708
    mov word [bp - 0x0006], ax       ; 0x070c
    mov si, word [bp - 0x000e]       ; 0x070f
    mov al, byte [bx + si + 0xa50]   ; 0x0712
    sub ah, ah                       ; 0x0716
    mov word [bp - 0x0002], ax       ; 0x0718
    mov ax, 5                        ; 0x071b
    push ax                          ; 0x071e
    mov ax, 0                        ; 0x071f
    push ax                          ; 0x0722
    push word [bp - 0x0002]          ; 0x0723
    call ds_dispatch_ed3a            ; 0x0726
    add sp, byte 6                   ; 0x0729
    mov word [bp - 0x0004], ax       ; 0x072c
    mov word [bp - 0x000a], 0        ; 0x072f
    mov ax, word [bp - 0x000e]       ; 0x0734
    shl ax, 1                        ; 0x0737
    mov si, ax                       ; 0x0739
    mov bx, word [data_0e12]         ; 0x073b
    mov ax, word [bx + si + 0x3c0]   ; 0x073f
    mov word [bp - 0x0002], ax       ; 0x0743
    mov ax, data_0002                ; 0x0746
    push ax                          ; 0x0749
    mov ax, word [data_82ee]         ; 0x074a
    shl ax, 1                        ; 0x074d
    push ax                          ; 0x074f
    push word [bp - 0x0002]          ; 0x0750
    call ds_dispatch_ed3a            ; 0x0753
    add sp, byte 6                   ; 0x0756
    cmp ax, strict word 2            ; 0x0759
    jne short @..local.l20           ; 0x075c
    cmp word [bp - 0x0004], byte 0   ; 0x075e
    jne short @..local.l20           ; 0x0762
    mov word [bp - 0x000a], 1        ; 0x0764
@..local.l20:
    mov word [bp - 0x000c], 0        ; 0x0769
    mov ax, word [bp + 0x4]          ; 0x076e
    shl ax, 1                        ; 0x0771
    push ax                          ; 0x0773
    call ds_dispatch_b7a9            ; 0x0774
    pop cx                           ; 0x0777
    push ax                          ; 0x0778
    mov ax, word [bp + 0x4]          ; 0x0779
    shl ax, 1                        ; 0x077c
    push ax                          ; 0x077e
    call ds_dispatch_b7a9            ; 0x077f
    pop cx                           ; 0x0782
    mov cx, ax                       ; 0x0783
    pop ax                           ; 0x0785
    add ax, cx                       ; 0x0786
    push ax                          ; 0x0788
    mov ax, word [bp + 0x4]          ; 0x0789
    shl ax, 1                        ; 0x078c
    push ax                          ; 0x078e
    call ds_dispatch_b7a9            ; 0x078f
    pop cx                           ; 0x0792
    mov cx, ax                       ; 0x0793
    pop ax                           ; 0x0795
    add ax, cx                       ; 0x0796
    inc ax                           ; 0x0798
    inc ax                           ; 0x0799
    inc ax                           ; 0x079a
    mov cx, data_0002                ; 0x079b
    cwd                              ; 0x079e
    idiv cx                          ; 0x079f
    mov word [bp - 0x0008], ax       ; 0x07a1
    cmp ax, word [bp - 0x0004]       ; 0x07a4
    jge short @..local.l21           ; 0x07a7
    mov word [bp - 0x000c], 1        ; 0x07a9
@..local.l21:
    cmp word [bp - 0x000a], byte 0   ; 0x07ae
    je short @..local.l22            ; 0x07b2
    mov word [bp - 0x000c], data_0002 ; 0x07b4
@..local.l22:
    cmp word [bp - 0x000c], byte 0   ; 0x07b9
    jne short @..local.l23           ; 0x07bd
    push word [bp - 0x000e]          ; 0x07bf
    call loc_04b7                    ; 0x07c2
    pop cx                           ; 0x07c5
@..local.l23:
    mov ax, word [bp - 0x000c]       ; 0x07c6
    add ax, 0x841                    ; 0x07c9
    mov word [data_90b6], ax         ; 0x07cc
    mov ax, word [bp - 0x000c]       ; 0x07cf
    mov word [data_90b8], ax         ; 0x07d2
    mov ax, 0                        ; 0x07d5
    ret                              ; 0x07d8
math_loc_07d9:
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
    je short @..local.l24            ; 0x07fb
    mov ax, word [data_5b6e]         ; 0x07fd
    mov cx, data_0002                ; 0x0800
    cwd                              ; 0x0803
    idiv cx                          ; 0x0804
    mov ax, dx                       ; 0x0806
    test ax, ax                      ; 0x0808
    je short @..math_loc_07d9.l1     ; 0x080a
    mov ax, cx                       ; 0x080c
    jmp short @..math_loc_07d9.l2    ; 0x080e
@..math_loc_07d9.l1:
    mov ax, 4                        ; 0x0810
    mov cx, word [data_5b6e]         ; 0x0813
    cmp cx, byte 6                   ; 0x0817
    jne short @..math_loc_07d9.l2    ; 0x081a
    mov ax, 0                        ; 0x081c
@..math_loc_07d9.l2:
    ret                              ; 0x081f
@..local.l24:
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
math_loc_0849:
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
    je short @..local.l25            ; 0x086b
    mov ax, word [data_5b6e]         ; 0x086d
    mov cx, data_0002                ; 0x0870
    cwd                              ; 0x0873
    idiv cx                          ; 0x0874
    mov ax, dx                       ; 0x0876
    test ax, ax                      ; 0x0878
    je short @..math_loc_0849.l1     ; 0x087a
    mov ax, cx                       ; 0x087c
    jmp short @..math_loc_0849.l2    ; 0x087e
@..math_loc_0849.l1:
    mov ax, 4                        ; 0x0880
    mov cx, word [data_5b6e]         ; 0x0883
    cmp cx, byte 6                   ; 0x0887
    jne short @..math_loc_0849.l2    ; 0x088a
    mov ax, 0                        ; 0x088c
@..math_loc_0849.l2:
    ret                              ; 0x088f
@..local.l25:
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
    jmp short @..local.l30           ; 0x08c2
@..local.l26:
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
@..local.l27:
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
@..local.l28:
    push word [bp + 0x6]             ; 0x0916
    push word [bp + 0xa]             ; 0x0919
    push word [bp + 0x8]             ; 0x091c
    push word [bp + 0xe]             ; 0x091f
    push word [bp + 0xc]             ; 0x0922
    call math_loc_07d9               ; 0x0925
    add sp, byte 0x0a                ; 0x0928
    ret                              ; 0x092b
@..local.l29:
    push word [bp + 0x6]             ; 0x092c
    push word [bp + 0xa]             ; 0x092f
    push word [bp + 0x8]             ; 0x0932
    push word [bp + 0xe]             ; 0x0935
    push word [bp + 0xc]             ; 0x0938
    call math_loc_0849               ; 0x093b
    add sp, byte 0x0a                ; 0x093e
    ret                              ; 0x0941
@..local.l30:
    cmp ax, strict word 0            ; 0x0942
    jne short @..local.l31           ; 0x0945
    jmp near @..local.l26            ; 0x0947
@..local.l31:
    cmp ax, strict word 1            ; 0x094a
    je short @..local.l27            ; 0x094d
    cmp ax, strict word 2            ; 0x094f
    je short @..local.l28            ; 0x0952
    cmp ax, strict word 3            ; 0x0954
    je short @..local.l29            ; 0x0957
    ret                              ; 0x0959
math_loc_095a:
    mov ax, 0                        ; 0x095a
    call ds_dispatch_f40b            ; 0x095d
    mov ax, word [bp + 0x4]          ; 0x0960
    jmp short @..math_loc_095a.l5    ; 0x0963
@..math_loc_095a.l1:
    dec word [bp + 0xa]              ; 0x0965
    jmp short @..math_loc_095a.l6    ; 0x0968
@..math_loc_095a.l2:
    inc word [bp + 0x8]              ; 0x096a
    jmp short @..math_loc_095a.l6    ; 0x096d
@..math_loc_095a.l3:
    inc word [bp + 0xa]              ; 0x096f
    jmp short @..math_loc_095a.l6    ; 0x0972
@..math_loc_095a.l4:
    dec word [bp + 0x8]              ; 0x0974
    jmp short @..math_loc_095a.l6    ; 0x0977
@..math_loc_095a.l5:
    cmp ax, strict word 0            ; 0x0979
    je short @..math_loc_095a.l1     ; 0x097c
    cmp ax, strict word 1            ; 0x097e
    je short @..math_loc_095a.l2     ; 0x0981
    cmp ax, strict word 2            ; 0x0983
    je short @..math_loc_095a.l3     ; 0x0986
    cmp ax, strict word 3            ; 0x0988
    je short @..math_loc_095a.l4     ; 0x098b
@..math_loc_095a.l6:
    cmp word [bp + 0x8], byte 0      ; 0x098d
    jl short @..math_loc_095a.l7     ; 0x0991
    cmp word [bp + 0x8], byte 0x11   ; 0x0993
    jge short @..math_loc_095a.l7    ; 0x0997
    cmp word [bp + 0xa], byte 0      ; 0x0999
    jl short @..math_loc_095a.l7     ; 0x099d
    cmp word [bp + 0xa], byte 0x11   ; 0x099f
    jge short @..math_loc_095a.l7    ; 0x09a3
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
@..math_loc_095a.l7:
    ret                              ; 0x09bf
api_idx_0014:
    mov ax, 0xffec                   ; 0x09c0
    call ds_dispatch_f40b            ; 0x09c3
    mov word [bp - 0x000e], 0xffff   ; 0x09c6
    mov ax, word [data_8f42]         ; 0x09cb
    mov word [bp - 0x0008], ax       ; 0x09ce
    mov ax, word [data_8f40]         ; 0x09d1
    mov word [bp - 0x000a], ax       ; 0x09d4
    mov ax, word [data_8f3e]         ; 0x09d7
    mov word [bp - 0x000c], ax       ; 0x09da
    push word [bp + 0x6]             ; 0x09dd
    push word [bp + 0x4]             ; 0x09e0
    lea ax, word [bp - 0x000c]       ; 0x09e3
    push ax                          ; 0x09e6
    lea ax, word [bp - 0x000a]       ; 0x09e7
    push ax                          ; 0x09ea
    lea ax, word [bp - 0x0008]       ; 0x09eb
    push ax                          ; 0x09ee
    call api_idx_0004                ; 0x09ef
    add sp, byte 0x0a                ; 0x09f2
    test ax, ax                      ; 0x09f5
    je short @..local.l32            ; 0x09f7
    cmp word [bp + 0xc], byte 0      ; 0x09f9
    jne short @..api_idx_0014.l1     ; 0x09fd
    mov ax, 0x24                     ; 0x09ff
    imul word [bp + 0x8]             ; 0x0a02
    mov cx, word [bp + 0xa]          ; 0x0a05
    shl cx, 1                        ; 0x0a08
    add ax, cx                       ; 0x0a0a
    mov bx, ax                       ; 0x0a0c
    mov word [bx - 0x6f46], 0xffff   ; 0x0a0e
    jmp short @..api_idx_0014.l2     ; 0x0a14
@..api_idx_0014.l1:
    mov ax, word [data_9342]         ; 0x0a16
    push ax                          ; 0x0a19
    mov ax, 0x24                     ; 0x0a1a
    imul word [bp + 0x8]             ; 0x0a1d
    mov cx, ax                       ; 0x0a20
    mov dx, word [bp + 0xa]          ; 0x0a22
    shl dx, 1                        ; 0x0a25
    add ax, dx                       ; 0x0a27
    mov bx, ax                       ; 0x0a29
    pop ax                           ; 0x0a2b
    mov word [bx - 0x6f46], ax       ; 0x0a2c
    mov ax, word [data_9344]         ; 0x0a30
    mov word [bx - 0x6cba], ax       ; 0x0a33
    mov ax, word [data_95ce]         ; 0x0a37
    mov word [bx - 0x6a30], ax       ; 0x0a3a
@..api_idx_0014.l2:
    ret                              ; 0x0a3e
@..local.l32:
    cmp word [data_9858], byte 0     ; 0x0a3f
    je short @..local.l37            ; 0x0a44
    mov bx, word [data_0e12]         ; 0x0a46
    mov si, word [bp - 0x000c]       ; 0x0a4a
    mov al, byte [bx + si + 0xb40]   ; 0x0a4d
    sub ah, ah                       ; 0x0a51
    mov word [bp - 0x0014], ax       ; 0x0a53
@..local.l33:
    push word [bp - 0x0014]          ; 0x0a56
    push word [bp - 0x000c]          ; 0x0a59
    push word [bp - 0x000a]          ; 0x0a5c
    push word [bp - 0x0008]          ; 0x0a5f
    call api_idx_0002                ; 0x0a62
    add sp, byte 8                   ; 0x0a65
    mov word [bp - 0x0014], ax       ; 0x0a68
    cmp ax, strict word 0xffff       ; 0x0a6b
    je short @..local.l36            ; 0x0a6e
    mov bx, word [data_0e12]         ; 0x0a70
    mov si, ax                       ; 0x0a74
    cmp byte [bx + si + 0x5a0], 3    ; 0x0a76
    je short @..local.l34            ; 0x0a7b
    cmp byte [bx + si + 0x5a0], 8    ; 0x0a7d
    jne short @..local.l35           ; 0x0a82
@..local.l34:
    mov ax, 0x24                     ; 0x0a84
    imul word [bp + 0x8]             ; 0x0a87
    mov cx, word [bp + 0xa]          ; 0x0a8a
    shl cx, 1                        ; 0x0a8d
    add ax, cx                       ; 0x0a8f
    mov bx, ax                       ; 0x0a91
    mov word [bx - 0x67a6], 1        ; 0x0a93
@..local.l35:
    inc word [bp - 0x0014]           ; 0x0a99
    jmp short @..local.l33           ; 0x0a9c
@..local.l36:
    jmp short @..local.l38           ; 0x0a9e
@..local.l37:
    mov ax, 0x24                     ; 0x0aa0
    imul word [bp + 0x8]             ; 0x0aa3
    mov cx, word [bp + 0xa]          ; 0x0aa6
    shl cx, 1                        ; 0x0aa9
    add ax, cx                       ; 0x0aab
    mov bx, ax                       ; 0x0aad
    mov word [bx - 0x67a6], 0        ; 0x0aaf
@..local.l38:
    mov ax, word [bp - 0x000c]       ; 0x0ab5
    mov cx, 6                        ; 0x0ab8
    shl ax, cl                       ; 0x0abb
    mov cx, word [bp - 0x000a]       ; 0x0abd
    shl cx, 1                        ; 0x0ac0
    shl cx, 1                        ; 0x0ac2
    shl cx, 1                        ; 0x0ac4
    add ax, cx                       ; 0x0ac6
    add ax, word [bp - 0x0008]       ; 0x0ac8
    mov word [bp - 0x0002], ax       ; 0x0acb
    cmp word [bp + 0xc], byte 0      ; 0x0ace
    jne short @..local.l39           ; 0x0ad2
    push ax                          ; 0x0ad4
    mov ax, 0x8afe                   ; 0x0ad5
    push ax                          ; 0x0ad8
    call ds_dispatch_ec74            ; 0x0ad9
    add sp, byte 4                   ; 0x0adc
    test ax, ax                      ; 0x0adf
    jne short @..local.l39           ; 0x0ae1
    mov ax, 0x24                     ; 0x0ae3
    imul word [bp + 0x8]             ; 0x0ae6
    mov cx, word [bp + 0xa]          ; 0x0ae9
    shl cx, 1                        ; 0x0aec
    add ax, cx                       ; 0x0aee
    mov bx, ax                       ; 0x0af0
    mov word [bx - 0x6f46], 0xffff   ; 0x0af2
    ret                              ; 0x0af8
@..local.l39:
    mov ax, 6                        ; 0x0af9
    push ax                          ; 0x0afc
    push word [bp - 0x0002]          ; 0x0afd
    mov ax, word [data_0e14]         ; 0x0b00
    add ax, 0x4b0                    ; 0x0b03
    push ax                          ; 0x0b06
    call ds_dispatch_ecf6            ; 0x0b07
    add sp, byte 6                   ; 0x0b0a
    mov word [bp - 0x0004], ax       ; 0x0b0d
    mov ax, data_0002                ; 0x0b10
    push ax                          ; 0x0b13
    push word [bp - 0x0002]          ; 0x0b14
    mov ax, word [data_0e14]         ; 0x0b17
    add ax, 0x7b0                    ; 0x0b1a
    push ax                          ; 0x0b1d
    call ds_dispatch_ecf6            ; 0x0b1e
    add sp, byte 6                   ; 0x0b21
    mov word [bp - 0x0006], ax       ; 0x0b24
    cmp word [bp - 0x0004], byte 1   ; 0x0b27
    jne short @..local.l40           ; 0x0b2b
    push word [bp + 0xa]             ; 0x0b2d
    push word [bp + 0x8]             ; 0x0b30
    push word [data_9ae2]            ; 0x0b33
    push ax                          ; 0x0b37
    call math_loc_095a               ; 0x0b38
    add sp, byte 8                   ; 0x0b3b
@..local.l40:
    cmp word [bp - 0x0004], byte 2   ; 0x0b3e
    jne short @..local.l41           ; 0x0b42
    push word [bp + 0xa]             ; 0x0b44
    push word [bp + 0x8]             ; 0x0b47
    push word [data_9ae4]            ; 0x0b4a
    push word [bp - 0x0006]          ; 0x0b4e
    call math_loc_095a               ; 0x0b51
    add sp, byte 8                   ; 0x0b54
@..local.l41:
    cmp word [bp - 0x0004], byte 8   ; 0x0b57
    jne short @..local.l42           ; 0x0b5b
    mov ax, word [data_9ae6]         ; 0x0b5d
    mov word [bp - 0x000e], ax       ; 0x0b60
@..local.l42:
    cmp word [bp - 0x0004], byte 9   ; 0x0b63
    jne short @..local.l43           ; 0x0b67
    mov ax, word [data_9ae8]         ; 0x0b69
    mov word [bp - 0x000e], ax       ; 0x0b6c
@..local.l43:
    cmp word [bp - 0x0004], byte 0x0d ; 0x0b6f
    jne short @..local.l44           ; 0x0b73
    mov ax, word [data_9aea]         ; 0x0b75
    mov word [bp - 0x000e], ax       ; 0x0b78
@..local.l44:
    cmp word [bp - 0x0004], byte 0x0e ; 0x0b7b
    jne short @..local.l45           ; 0x0b7f
    mov ax, word [data_9aec]         ; 0x0b81
    mov word [bp - 0x000e], ax       ; 0x0b84
@..local.l45:
    cmp word [bp - 0x0004], byte 0x0f ; 0x0b87
    jne short @..local.l46           ; 0x0b8b
    mov ax, word [data_9aee]         ; 0x0b8d
    mov word [bp - 0x000e], ax       ; 0x0b90
@..local.l46:
    cmp word [bp - 0x000e], byte 0xff ; 0x0b93
    je short @..local.l47            ; 0x0b97
    mov ax, word [bp - 0x000e]       ; 0x0b99
    cmp ax, word [data_9af0]         ; 0x0b9c
    jne short @..local.l48           ; 0x0ba0
@..local.l47:
    push word [bp - 0x0002]          ; 0x0ba2
    mov ax, word [data_0e14]         ; 0x0ba5
    add ax, 0x8b0                    ; 0x0ba8
    push ax                          ; 0x0bab
    call ds_dispatch_ec74            ; 0x0bac
    add sp, byte 4                   ; 0x0baf
    test ax, ax                      ; 0x0bb2
    je short @..local.l48            ; 0x0bb4
    mov ax, word [data_9af2]         ; 0x0bb6
    mov word [bp - 0x000e], ax       ; 0x0bb9
@..local.l48:
    mov ax, word [bp - 0x000e]       ; 0x0bbc
    cmp ax, strict word 0xffff       ; 0x0bbf
    je short @..local.l49            ; 0x0bc2
    cmp ax, word [data_9af0]         ; 0x0bc4
    je short @..local.l49            ; 0x0bc8
    cmp ax, word [data_9af2]         ; 0x0bca
    jne short @..local.l50           ; 0x0bce
@..local.l49:
    push word [bp - 0x0002]          ; 0x0bd0
    mov ax, word [data_0e14]         ; 0x0bd3
    add ax, 0x9b0                    ; 0x0bd6
    push ax                          ; 0x0bd9
    call ds_dispatch_ec74            ; 0x0bda
    add sp, byte 4                   ; 0x0bdd
    test ax, ax                      ; 0x0be0
    je short @..local.l50            ; 0x0be2
    mov ax, word [data_9af4]         ; 0x0be4
    mov word [bp - 0x000e], ax       ; 0x0be7
@..local.l50:
    push word [bp - 0x0002]          ; 0x0bea
    mov ax, word [data_0e14]         ; 0x0bed
    add ax, 0x9b0                    ; 0x0bf0
    push ax                          ; 0x0bf3
    call ds_dispatch_ec74            ; 0x0bf4
    add sp, byte 4                   ; 0x0bf7
    test ax, ax                      ; 0x0bfa
    je short @..local.l52            ; 0x0bfc
    mov ax, word [data_830c]         ; 0x0bfe
    jmp short @..local.l51           ; 0x0c01

    db 0xa1, 0xea, 0x9a, 0x89, 0x46, 0xf2, 0xeb, 0x30, 0x4a, 0x5c, 0x82, 0x5c, 0x4a, 0x5c, 0x82, 0x5c
    db 0x82, 0x5c, 0x82, 0x5c, 0x82
    db '\J\J\J\J\J\'
    db 0x82, 0x5c, 0x82
    db '\J\J\'

@..local.l51:
    sub ax, strict word 0xf          ; 0x0c2b
    cmp ax, strict word 0x10         ; 0x0c2e
    jae short @..local.l52           ; 0x0c31
    xchg bx, ax                      ; 0x0c33
    shl bx, 1                        ; 0x0c34
    jmp [cs:bx + 0x5c52]             ; 0x0c36
@..local.l52:
    push word [bp - 0x0002]          ; 0x0c3b
    mov ax, word [data_0e14]         ; 0x0c3e
    add ax, 0x930                    ; 0x0c41
    push ax                          ; 0x0c44
    call ds_dispatch_ec74            ; 0x0c45
    add sp, byte 4                   ; 0x0c48
    test ax, ax                      ; 0x0c4b
    je short @..local.l58            ; 0x0c4d
    mov ax, word [data_830c]         ; 0x0c4f
    jmp short @..local.l57           ; 0x0c52
@..local.l53:
    jmp short @..local.l58           ; 0x0c54
@..local.l54:
    mov ax, word [data_9aea]         ; 0x0c56
    mov word [bp - 0x000e], ax       ; 0x0c59
    jmp short @..local.l58           ; 0x0c5c
@..local.l55:
    mov word [bp - 0x000e], 6        ; 0x0c5e
    jmp short @..local.l58           ; 0x0c63
@..local.l56:
    mov ax, word [data_9342]         ; 0x0c65
    mov word [bp - 0x000e], ax       ; 0x0c68
    jmp short @..local.l58           ; 0x0c6b
@..local.l57:
    cmp ax, strict word 0            ; 0x0c6d
    je short @..local.l53            ; 0x0c70
    cmp ax, strict word 0xa          ; 0x0c72
    je short @..local.l55            ; 0x0c75
    cmp ax, strict word 0xe          ; 0x0c77
    je short @..local.l54            ; 0x0c7a
    cmp ax, strict word 0x13         ; 0x0c7c
    je short @..local.l54            ; 0x0c7f
    cmp ax, strict word 0x19         ; 0x0c81
    je short @..local.l55            ; 0x0c84
    cmp ax, strict word 0x1f         ; 0x0c86
    je short @..local.l54            ; 0x0c89
    jmp short @..local.l56           ; 0x0c8b
@..local.l58:
    cmp word [bp - 0x000e], byte 0xff ; 0x0c8d
    je short @..local.l59            ; 0x0c91
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
@..local.l59:
    cmp word [data_5b6e], byte 1     ; 0x0cad
    jne short @..local.l60           ; 0x0cb2
    push word [bp - 0x0002]          ; 0x0cb4
    mov ax, word [data_0e14]         ; 0x0cb7
    add ax, 0x8b0                    ; 0x0cba
    push ax                          ; 0x0cbd
    call ds_dispatch_ec74            ; 0x0cbe
    add sp, byte 4                   ; 0x0cc1
    test ax, ax                      ; 0x0cc4
    je short @..local.l60            ; 0x0cc6
    mov ax, 0x24                     ; 0x0cc8
    imul word [bp + 0x8]             ; 0x0ccb
    mov cx, word [bp + 0xa]          ; 0x0cce
    shl cx, 1                        ; 0x0cd1
    add ax, cx                       ; 0x0cd3
    mov bx, ax                       ; 0x0cd5
    mov word [bx - 0x6f46], 0xffff   ; 0x0cd7
@..local.l60:
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
    jmp short @..local.l61           ; 0x0cfe

    db 0xa1, 0xf6, 0x9a, 0x89, 0x46, 0xf0, 0xeb, 0x35, 0xa1, 0xf8, 0x9a, 0x89, 0x46, 0xf0, 0xeb, 0x2d
    db 0xa1, 0xfa, 0x9a, 0x89, 0x46, 0xf0, 0xeb, 0x25, 0xa1, 0xfc, 0x9a, 0x89, 0x46, 0xf0, 0xeb, 0x1d
    db 0x84
    db ']G]O]W]_]'
    db 0x84
    db ']W]O]'

@..local.l61:
    cmp ax, strict word 8            ; 0x0d30
    jae short @..local.l62           ; 0x0d33
    xchg bx, ax                      ; 0x0d35
    shl bx, 1                        ; 0x0d36
    jmp [cs:bx + 0x5d67]             ; 0x0d38
@..local.l62:
    cmp word [bp - 0x0010], byte 0xff ; 0x0d3d
    je short @..local.l63            ; 0x0d41
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
@..local.l63:
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
    jmp short @..local.l64           ; 0x0d7e

    db 0xa1, 0xfe, 0x9a, 0x89, 0x46, 0xf0, 0xeb, 0x35, 0xa1, 0x00, 0x9b, 0x89, 0x46, 0xf0, 0xeb, 0x2d
    db 0xa1, 0x02, 0x9b, 0x89, 0x46, 0xf0, 0xeb, 0x25, 0xa1, 0x04, 0x9b, 0x89, 0x46, 0xf0, 0xeb, 0x1d
    db 0x04, 0x5e, 0xc7, 0x5d, 0xcf, 0x5d, 0xd7, 0x5d, 0xdf, 0x5d, 0x04, 0x5e, 0xd7, 0x5d, 0xcf, 0x5d

@..local.l64:
    cmp ax, strict word 8            ; 0x0db0
    jae short @..local.l65           ; 0x0db3
    xchg bx, ax                      ; 0x0db5
    shl bx, 1                        ; 0x0db6
    jmp [cs:bx + 0x5de7]             ; 0x0db8
@..local.l65:
    cmp word [bp - 0x0010], byte 0xff ; 0x0dbd
    je short @..local.l66            ; 0x0dc1
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
@..local.l66:
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
    jmp short @..local.l67           ; 0x0dfe

    db 0xa1, 0xf6, 0x9a, 0x89, 0x46, 0xf0, 0xeb, 0x35, 0xa1, 0xf8, 0x9a, 0x89, 0x46, 0xf0, 0xeb, 0x2d
    db 0xa1, 0xfa, 0x9a, 0x89, 0x46, 0xf0, 0xeb, 0x25, 0xa1, 0xfc, 0x9a, 0x89, 0x46, 0xf0, 0xeb, 0x1d
    db 0x84
    db '^G^O^W^_^'
    db 0x84
    db '^W^O^'

@..local.l67:
    cmp ax, strict word 8            ; 0x0e30
    jae short @..local.l68           ; 0x0e33
    xchg bx, ax                      ; 0x0e35
    shl bx, 1                        ; 0x0e36
    jmp [cs:bx + 0x5e67]             ; 0x0e38
@..local.l68:
    cmp word [bp - 0x0010], byte 0xff ; 0x0e3d
    je short @..local.l69            ; 0x0e41
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
@..local.l69:
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
    jmp short @..local.l70           ; 0x0e7e

    db 0xa1, 0xfe, 0x9a, 0x89, 0x46, 0xf0, 0xeb, 0x35, 0xa1, 0x00, 0x9b, 0x89, 0x46, 0xf0, 0xeb, 0x2d
    db 0xa1, 0x02, 0x9b, 0x89, 0x46, 0xf0, 0xeb, 0x25, 0xa1, 0x04, 0x9b, 0x89, 0x46, 0xf0, 0xeb, 0x1d
    db 0x04, 0x5f, 0xc7, 0x5e, 0xcf, 0x5e, 0xd7, 0x5e, 0xdf, 0x5e, 0x04, 0x5f, 0xd7, 0x5e, 0xcf, 0x5e

@..local.l70:
    cmp ax, strict word 8            ; 0x0eb0
    jae short @..local.l71           ; 0x0eb3
    xchg bx, ax                      ; 0x0eb5
    shl bx, 1                        ; 0x0eb6
    jmp [cs:bx + 0x5ee7]             ; 0x0eb8
@..local.l71:
    cmp word [bp - 0x0010], byte 0xff ; 0x0ebd
    je short @..local.l72            ; 0x0ec1
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
@..local.l72:
    ret                              ; 0x0edd
math_loc_0ede:
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
    jne short @..math_loc_0ede.l1    ; 0x0efb
    mov ax, word [bx - 0x6a30]       ; 0x0efd
    cmp ax, word [data_9b00]         ; 0x0f01
    jne short @..math_loc_0ede.l1    ; 0x0f05
    mov ax, word [bx - 0x6cb8]       ; 0x0f07
    cmp ax, word [data_9af8]         ; 0x0f0b
    jne short @..math_loc_0ede.l1    ; 0x0f0f
    mov ax, word [bx - 0x6a54]       ; 0x0f11
    cmp ax, word [data_9b00]         ; 0x0f15
    jne short @..math_loc_0ede.l1    ; 0x0f19
    mov ax, word [data_9b06]         ; 0x0f1b
    mov word [bx - 0x6f46], ax       ; 0x0f1e
@..math_loc_0ede.l1:
    mov ax, word [bx - 0x6cba]       ; 0x0f22
    cmp ax, word [data_9afc]         ; 0x0f26
    jne short @..math_loc_0ede.l2    ; 0x0f2a
    mov ax, word [bx - 0x6a30]       ; 0x0f2c
    cmp ax, word [data_9b04]         ; 0x0f30
    jne short @..math_loc_0ede.l2    ; 0x0f34
    mov ax, word [bx - 0x6cb8]       ; 0x0f36
    cmp ax, word [data_9afc]         ; 0x0f3a
    jne short @..math_loc_0ede.l2    ; 0x0f3e
    mov ax, word [bx - 0x6a54]       ; 0x0f40
    cmp ax, word [data_9b04]         ; 0x0f44
    jne short @..math_loc_0ede.l2    ; 0x0f48
    mov ax, word [data_9b08]         ; 0x0f4a
    mov word [bx - 0x6f46], ax       ; 0x0f4d
@..math_loc_0ede.l2:
    ret                              ; 0x0f51
math_loc_0f52:
    mov ax, 0                        ; 0x0f52
    call ds_dispatch_f40b            ; 0x0f55
    mov ax, 0x55                     ; 0x0f58
    push ax                          ; 0x0f5b
    mov ax, 7                        ; 0x0f5c
    imul word [bp + 0x6]             ; 0x0f5f
    add ax, word [data_9b0a]         ; 0x0f62
    inc ax                           ; 0x0f66
    inc ax                           ; 0x0f67
    inc ax                           ; 0x0f68
    push ax                          ; 0x0f69
    mov ax, 7                        ; 0x0f6a
    imul word [bp + 0x4]             ; 0x0f6d
    add ax, word [data_9b0c]         ; 0x0f70
    inc ax                           ; 0x0f74
    inc ax                           ; 0x0f75
    inc ax                           ; 0x0f76
    push ax                          ; 0x0f77
    call ds_dispatch_e8f4            ; 0x0f78
    add sp, byte 6                   ; 0x0f7b
    ret                              ; 0x0f7e
api_idx_000a:
    mov ax, 0xfff6                   ; 0x0f7f
    call ds_dispatch_f40b            ; 0x0f82
    mov al, byte [bp + 0x8]          ; 0x0f85
    mov byte [bp - 0x000a], al       ; 0x0f88
    mov byte [bp - 0x0009], 0        ; 0x0f8b
    mov ax, 0                        ; 0x0f8f
    push ax                          ; 0x0f92
    push ax                          ; 0x0f93
    lea ax, word [bp - 0x000a]       ; 0x0f94
    push ax                          ; 0x0f97
    mov ax, 0                        ; 0x0f98
    push ax                          ; 0x0f9b
    mov ax, 0x8f                     ; 0x0f9c
    push ax                          ; 0x0f9f
    mov ax, 0x21                     ; 0x0fa0
    push ax                          ; 0x0fa3
    mov ax, 0xf8                     ; 0x0fa4
    push ax                          ; 0x0fa7
    mov ax, 0x48                     ; 0x0fa8
    push ax                          ; 0x0fab
    mov ax, 7                        ; 0x0fac
    imul word [bp + 0x6]             ; 0x0faf
    add ax, word [data_9b0a]         ; 0x0fb2
    add ax, word [bp + 0xc]          ; 0x0fb6
    push ax                          ; 0x0fb9
    mov ax, 7                        ; 0x0fba
    imul word [bp + 0x4]             ; 0x0fbd
    add ax, word [data_9b0c]         ; 0x0fc0
    add ax, word [bp + 0xa]          ; 0x0fc4
    push ax                          ; 0x0fc7
    mov ax, 0xf                      ; 0x0fc8
    push ax                          ; 0x0fcb
    call ds_dispatch_efd1            ; 0x0fcc
    add sp, byte 0x16                ; 0x0fcf
    ret                              ; 0x0fd2
api_idx_0012:
    mov ax, 0xffee                   ; 0x0fd3
    call ds_dispatch_f40b            ; 0x0fd6
    mov ax, word [bp + 0x8]          ; 0x0fd9
    mov word [data_9858], ax         ; 0x0fdc
    mov ax, 0xf                      ; 0x0fdf
    push ax                          ; 0x0fe2
    mov ax, 0xe                      ; 0x0fe3
    push ax                          ; 0x0fe6
    call ds_dispatch_d61c            ; 0x0fe7
    add sp, byte 4                   ; 0x0fea
    mov ax, 0xf                      ; 0x0fed
    cmp word [bp + 0x6], byte 0      ; 0x0ff0
    jne short @..api_idx_0012.l2     ; 0x0ff4
    cmp word [bp + 0x4], byte 4      ; 0x0ff6
    jle short @..api_idx_0012.l1     ; 0x0ffa
    mov ax, word [bp + 0x4]          ; 0x0ffc
    shl ax, 1                        ; 0x0fff
    add ax, strict word 0xfff9       ; 0x1001
    jmp short @..api_idx_0012.l2     ; 0x1004
@..api_idx_0012.l1:
    mov ax, word [bp + 0x4]          ; 0x1006
    shl ax, 1                        ; 0x1009
    inc ax                           ; 0x100b
    inc ax                           ; 0x100c
    inc ax                           ; 0x100d
@..api_idx_0012.l2:
    mov word [bp - 0x0006], ax       ; 0x100e
    mov word [bp - 0x0008], ax       ; 0x1011
    cmp ax, strict word 0xd          ; 0x1014
    jle short @..api_idx_0012.l3     ; 0x1017
    mov word [bp - 0x0008], 0xd      ; 0x1019
@..api_idx_0012.l3:
    mov cx, data_0002                ; 0x101e
    cwd                              ; 0x1021
    idiv cx                          ; 0x1022
    mov word [bp - 0x000a], ax       ; 0x1024
    mov ax, word [bp - 0x0008]       ; 0x1027
    cwd                              ; 0x102a
    idiv cx                          ; 0x102b
    mov word [bp - 0x000c], ax       ; 0x102d
    mov ax, 7                        ; 0x1030
    imul word [bp - 0x0006]          ; 0x1033
    cwd                              ; 0x1036
    idiv cx                          ; 0x1037
    mov cx, ax                       ; 0x1039
    mov ax, 0xa0                     ; 0x103b
    sub ax, cx                       ; 0x103e
    mov word [data_9b0c], ax         ; 0x1040
    mov ax, 7                        ; 0x1043
    imul word [bp - 0x0008]          ; 0x1046
    mov cx, data_0002                ; 0x1049
    cwd                              ; 0x104c
    idiv cx                          ; 0x104d
    mov cx, ax                       ; 0x104f
    mov ax, 0x56                     ; 0x1051
    sub ax, cx                       ; 0x1054
    mov word [data_9b0a], ax         ; 0x1056
    cmp word [data_9858], byte 0     ; 0x1059
    je short @..api_idx_0012.l4      ; 0x105e
    mov word [bp + 0x4], 1           ; 0x1060
@..api_idx_0012.l4:
    mov ax, word [data_5b6e]         ; 0x1065
    jmp near @..local.l73            ; 0x1068
    mov ax, 0xffff                   ; 0x106b
    cmp word [bp + 0x4], byte 1      ; 0x106e
    jle short @..api_idx_0012.l5     ; 0x1072
    mov ax, 0xa                      ; 0x1074
@..api_idx_0012.l5:
    mov word [data_9af8], ax         ; 0x1077
    mov ax, 0xffff                   ; 0x107a
    cmp word [bp + 0x4], byte 1      ; 0x107d
    jle short @..api_idx_0012.l6     ; 0x1081
    mov ax, 0xb                      ; 0x1083
@..api_idx_0012.l6:
    mov word [data_9b00], ax         ; 0x1086
    mov ax, 0xc                      ; 0x1089
    cmp word [bp + 0x4], byte 2      ; 0x108c
    jg short @..api_idx_0012.l7      ; 0x1090
    mov ax, 0xffff                   ; 0x1092
    cmp word [bp + 0x4], byte 1      ; 0x1095
    jle short @..api_idx_0012.l7     ; 0x1099
    mov ax, 0xa                      ; 0x109b
@..api_idx_0012.l7:
    mov word [data_9af6], ax         ; 0x109e
    mov ax, 0xd                      ; 0x10a1
    cmp word [bp + 0x4], byte 2      ; 0x10a4
    jg short @..api_idx_0012.l8      ; 0x10a8
    mov ax, 0xffff                   ; 0x10aa
    cmp word [bp + 0x4], byte 1      ; 0x10ad
    jle short @..api_idx_0012.l8     ; 0x10b1
    mov ax, 0xb                      ; 0x10b3
@..api_idx_0012.l8:
    mov word [data_9afe], ax         ; 0x10b6
    mov ax, 0xe                      ; 0x10b9
    cmp word [bp + 0x4], byte 2      ; 0x10bc
    jg short @..api_idx_0012.l9      ; 0x10c0
    mov ax, 0xffff                   ; 0x10c2
    cmp word [bp + 0x4], byte 1      ; 0x10c5
    jle short @..api_idx_0012.l9     ; 0x10c9
    mov ax, 0xa                      ; 0x10cb
@..api_idx_0012.l9:
    mov word [data_9afa], ax         ; 0x10ce
    mov ax, 0xf                      ; 0x10d1
    cmp word [bp + 0x4], byte 2      ; 0x10d4
    jg short @..api_idx_0012.l10     ; 0x10d8
    mov ax, 0xffff                   ; 0x10da
    cmp word [bp + 0x4], byte 1      ; 0x10dd
    jle short @..api_idx_0012.l10    ; 0x10e1
    mov ax, 0xb                      ; 0x10e3
@..api_idx_0012.l10:
    mov word [data_9b02], ax         ; 0x10e6
    mov word [data_9af0], 1          ; 0x10e9
    mov word [data_9af4], 0xffff     ; 0x10ef
    mov word [data_9af2], 0xffff     ; 0x10f5
    mov word [data_9342], 6          ; 0x10fb
    mov word [data_9b06], 6          ; 0x1101
    mov ax, 0xffff                   ; 0x1107
    cmp word [bp + 0x4], byte 1      ; 0x110a
    jle short @..api_idx_0012.l11    ; 0x110e
    mov ax, 0xa                      ; 0x1110
@..api_idx_0012.l11:
    mov word [data_9344], ax         ; 0x1113
    mov ax, 0xffff                   ; 0x1116
    cmp word [bp + 0x4], byte 1      ; 0x1119
    jle short @..api_idx_0012.l12    ; 0x111d
    mov ax, 0xb                      ; 0x111f
@..api_idx_0012.l12:
    mov word [data_95ce], ax         ; 0x1122
    jmp near @..local.l74            ; 0x1125
    mov ax, 0xffff                   ; 0x1128
    cmp word [bp + 0x4], byte 1      ; 0x112b
    jle short @..api_idx_0012.l13    ; 0x112f
    mov ax, 0x10                     ; 0x1131
@..api_idx_0012.l13:
    mov word [data_9af8], ax         ; 0x1134
    mov ax, 0xffff                   ; 0x1137
    cmp word [bp + 0x4], byte 1      ; 0x113a
    jle short @..api_idx_0012.l14    ; 0x113e
    mov ax, 0x11                     ; 0x1140
@..api_idx_0012.l14:
    mov word [data_9b00], ax         ; 0x1143
    mov ax, 0x12                     ; 0x1146
    cmp word [bp + 0x4], byte 2      ; 0x1149
    jg short @..api_idx_0012.l15     ; 0x114d
    mov ax, 0xffff                   ; 0x114f
    cmp word [bp + 0x4], byte 1      ; 0x1152
    jle short @..api_idx_0012.l15    ; 0x1156
    mov ax, 0x10                     ; 0x1158
@..api_idx_0012.l15:
    mov word [data_9af6], ax         ; 0x115b
    mov ax, 0x13                     ; 0x115e
    cmp word [bp + 0x4], byte 2      ; 0x1161
    jg short @..api_idx_0012.l16     ; 0x1165
    mov ax, 0xffff                   ; 0x1167
    cmp word [bp + 0x4], byte 1      ; 0x116a
    jle short @..api_idx_0012.l16    ; 0x116e
    mov ax, 0x11                     ; 0x1170
@..api_idx_0012.l16:
    mov word [data_9afe], ax         ; 0x1173
    mov ax, 0x14                     ; 0x1176
    cmp word [bp + 0x4], byte 2      ; 0x1179
    jg short @..api_idx_0012.l17     ; 0x117d
    mov ax, 0xffff                   ; 0x117f
    cmp word [bp + 0x4], byte 1      ; 0x1182
    jle short @..api_idx_0012.l17    ; 0x1186
    mov ax, 0x10                     ; 0x1188
@..api_idx_0012.l17:
    mov word [data_9afa], ax         ; 0x118b
    mov ax, 0x15                     ; 0x118e
    cmp word [bp + 0x4], byte 2      ; 0x1191
    jg short @..api_idx_0012.l18     ; 0x1195
    mov ax, 0xffff                   ; 0x1197
    cmp word [bp + 0x4], byte 1      ; 0x119a
    jle short @..api_idx_0012.l18    ; 0x119e
    mov ax, 0x11                     ; 0x11a0
@..api_idx_0012.l18:
    mov word [data_9b02], ax         ; 0x11a3
    mov word [data_9af0], 5          ; 0x11a6
    mov word [data_9af4], 4          ; 0x11ac
    mov word [data_9af2], 3          ; 0x11b2
    mov word [data_9342], 8          ; 0x11b8
    mov word [data_9b06], 7          ; 0x11be
    mov ax, 0xffff                   ; 0x11c4
    cmp word [bp + 0x4], byte 1      ; 0x11c7
    jle short @..api_idx_0012.l19    ; 0x11cb
    mov ax, 0x16                     ; 0x11cd
@..api_idx_0012.l19:
    mov word [data_9344], ax         ; 0x11d0

    db 0xb8, 0xff, 0xff, 0x83, 0x7e, 0x04, 0x01, 0x7e, 0x03, 0xb8, 0x17, 0x00, 0xa3, 0xce, 0x95, 0xe9
    db 0xb4, 0x02, 0xb8, 0xff, 0xff, 0x83, 0x7e, 0x04, 0x01, 0x7e, 0x03, 0xb8, 0x10, 0x00, 0xa3, 0xf8
    db 0x9a, 0xb8, 0xff, 0xff, 0x83, 0x7e, 0x04, 0x01, 0x7e, 0x03, 0xb8, 0x11, 0x00, 0xa3, 0x00, 0x9b
    db 0xb8, 0x12, 0x00, 0x83, 0x7e, 0x04, 0x02, 0x7f, 0x0c, 0xb8, 0xff, 0xff, 0x83, 0x7e, 0x04, 0x01
    db 0x7e, 0x03, 0xb8, 0x10, 0x00, 0xa3, 0xf6, 0x9a, 0xb8, 0x13, 0x00, 0x83, 0x7e, 0x04, 0x02, 0x7f
    db 0x0c, 0xb8, 0xff, 0xff, 0x83, 0x7e, 0x04, 0x01, 0x7e, 0x03, 0xb8, 0x11, 0x00, 0xa3, 0xfe, 0x9a
    db 0xb8, 0x14, 0x00, 0x83, 0x7e, 0x04, 0x02, 0x7f, 0x0c, 0xb8, 0xff, 0xff, 0x83, 0x7e, 0x04, 0x01
    db 0x7e, 0x03, 0xb8, 0x10, 0x00, 0xa3, 0xfa, 0x9a, 0xb8, 0x15, 0x00, 0x83, 0x7e, 0x04, 0x02, 0x7f
    db 0x0c, 0xb8, 0xff, 0xff, 0x83, 0x7e, 0x04, 0x01, 0x7e, 0x03, 0xb8, 0x11, 0x00, 0xa3, 0x02, 0x9b
    db 0xc7, 0x06, 0xf0, 0x9a, 0x04, 0x00, 0xc7, 0x06, 0xf4, 0x9a, 0x03, 0x00, 0xc7, 0x06, 0xf2, 0x9a
    db 0xff, 0xff, 0xc7, 0x06, 0x42, 0x93, 0x07, 0x00, 0xc7, 0x06, 0x06, 0x9b, 0x07, 0x00, 0xb8, 0xff
    db 0xff, 0x83, 0x7e, 0x04, 0x01, 0x7e, 0x03, 0xb8, 0x10, 0x00, 0xa3, 0x44, 0x93, 0xb8, 0xff, 0xff
    db 0x83, 0x7e, 0x04, 0x01, 0x7e, 0x03, 0xb8, 0x11, 0x00, 0xa3, 0xce, 0x95, 0xe9, 0xf7, 0x01, 0xb8
    db 0xff, 0xff, 0x83, 0x7e, 0x04, 0x01, 0x7e, 0x03, 0xb8, 0x18, 0x00, 0xa3, 0xf8, 0x9a, 0xb8, 0xff
    db 0xff, 0x83, 0x7e, 0x04, 0x01, 0x7e, 0x03, 0xb8, 0x19, 0x00, 0xa3, 0x00, 0x9b, 0xb8, 0xff, 0xff
    db 0x83, 0x7e, 0x04, 0x01, 0x7e, 0x03, 0xb8, 0x18, 0x00, 0xa3, 0xf6, 0x9a, 0xb8, 0xff, 0xff, 0x83
    db 0x7e, 0x04, 0x01, 0x7e, 0x03, 0xb8, 0x19, 0x00, 0xa3, 0xfe, 0x9a, 0xb8, 0xff, 0xff, 0x83, 0x7e
    db 0x04, 0x01, 0x7e, 0x03, 0xb8, 0x18, 0x00, 0xa3, 0xfa, 0x9a, 0xb8, 0xff, 0xff, 0x83, 0x7e, 0x04
    db 0x01, 0x7e, 0x03, 0xb8, 0x19, 0x00, 0xa3, 0x02, 0x9b, 0xc7, 0x06, 0xf0, 0x9a, 0x01, 0x00, 0xc7
    db 0x06, 0xf4, 0x9a, 0x04, 0x00, 0xc7, 0x06, 0xf2, 0x9a, 0xff, 0xff, 0xc7, 0x06, 0x42, 0x93, 0x08
    db 0x00, 0xc7, 0x06, 0x06, 0x9b, 0x09, 0x00, 0xb8, 0xff, 0xff, 0x83, 0x7e, 0x04, 0x01, 0x7e, 0x03
    db 0xb8, 0x16, 0x00, 0xa3, 0x44, 0x93, 0xb8, 0xff, 0xff, 0x83, 0x7e, 0x04, 0x01, 0x7e, 0x03, 0xb8
    db 0x17, 0x00, 0xa3, 0xce, 0x95, 0xe9, 0x5e, 0x01, 0xb8, 0xff, 0xff, 0x83, 0x7e, 0x04, 0x01, 0x7e
    db 0x03, 0xb8, 0x18, 0x00, 0xa3, 0xf8, 0x9a, 0xb8, 0xff, 0xff, 0x83, 0x7e, 0x04, 0x01, 0x7e, 0x03
    db 0xb8, 0x19, 0x00, 0xa3, 0x00, 0x9b, 0xb8, 0xff, 0xff, 0x83, 0x7e, 0x04, 0x01, 0x7e, 0x03, 0xb8
    db 0x18, 0x00, 0xa3, 0xf6, 0x9a, 0xb8, 0xff, 0xff, 0x83, 0x7e, 0x04, 0x01, 0x7e, 0x03, 0xb8, 0x19
    db 0x00, 0xa3, 0xfe, 0x9a, 0xb8, 0xff, 0xff, 0x83, 0x7e, 0x04, 0x01, 0x7e, 0x03, 0xb8, 0x18, 0x00
    db 0xa3, 0xfa, 0x9a, 0xb8, 0xff, 0xff, 0x83, 0x7e, 0x04, 0x01, 0x7e, 0x03, 0xb8, 0x19, 0x00, 0xa3
    db 0x02, 0x9b, 0xc7, 0x06, 0xf0, 0x9a, 0x01, 0x00, 0xc7, 0x06, 0xf4, 0x9a, 0x04, 0x00, 0xc7, 0x06
    db 0xf2, 0x9a, 0xff, 0xff, 0xc7, 0x06, 0x42, 0x93, 0x09, 0x00, 0xc7, 0x06, 0x06, 0x9b, 0x09, 0x00
    db 0xb8, 0xff, 0xff, 0x83, 0x7e, 0x04, 0x01, 0x7e, 0x03, 0xb8, 0x18, 0x00, 0xa3, 0x44, 0x93, 0xb8
    db 0xff, 0xff, 0x83, 0x7e, 0x04, 0x01, 0x7e, 0x03, 0xb8, 0x19, 0x00, 0xa3, 0xce, 0x95, 0xe9, 0xc5
    db 0x00, 0xb8, 0xff, 0xff, 0x83, 0x7e, 0x04, 0x01, 0x7e, 0x03, 0xb8, 0x10, 0x00, 0xa3, 0xf8, 0x9a
    db 0xb8, 0xff, 0xff, 0x83, 0x7e, 0x04, 0x01, 0x7e, 0x03, 0xb8, 0x11, 0x00, 0xa3, 0x00, 0x9b, 0xb8
    db 0x12, 0x00, 0x83, 0x7e, 0x04, 0x02, 0x7f, 0x0c, 0xb8, 0xff, 0xff, 0x83, 0x7e, 0x04, 0x01, 0x7e
    db 0x03, 0xb8, 0x10, 0x00, 0xa3, 0xf6, 0x9a, 0xb8, 0x13, 0x00, 0x83, 0x7e, 0x04, 0x02, 0x7f, 0x0c
    db 0xb8, 0xff, 0xff, 0x83, 0x7e, 0x04, 0x01, 0x7e, 0x03, 0xb8, 0x11, 0x00, 0xa3, 0xfe, 0x9a, 0xb8
    db 0x14, 0x00, 0x83, 0x7e, 0x04, 0x02, 0x7f, 0x0c, 0xb8, 0xff, 0xff, 0x83, 0x7e, 0x04, 0x01, 0x7e
    db 0x03, 0xb8, 0x10, 0x00, 0xa3, 0xfa, 0x9a, 0xb8, 0x15, 0x00, 0x83, 0x7e, 0x04, 0x02, 0x7f, 0x0c
    db 0xb8, 0xff, 0xff, 0x83, 0x7e, 0x04, 0x01, 0x7e, 0x03, 0xb8, 0x11, 0x00, 0xa3, 0x02, 0x9b, 0xc7
    db 0x06, 0xf0, 0x9a, 0x05, 0x00, 0xc7, 0x06, 0xf4, 0x9a, 0x04, 0x00, 0xc7, 0x06, 0xf2, 0x9a, 0x02
    db 0x00, 0xc7, 0x06, 0x42, 0x93, 0x07, 0x00, 0xc7, 0x06, 0x06, 0x9b, 0x07, 0x00, 0xc7, 0x06, 0x44
    db 0x93, 0xff, 0xff, 0xc7, 0x06, 0xce, 0x95, 0xff, 0xff, 0xeb, 0x1b, 0xe0, 0x64, 0xb2
    db '`oa,b'
    db 0xe9, 0x62, 0x82, 0x63, 0x1b, 0x64

@..local.l73:
    cmp ax, strict word 7            ; 0x148c
    jae short @..local.l74           ; 0x148f
    xchg bx, ax                      ; 0x1491
    shl bx, 1                        ; 0x1492
    jmp [cs:bx + 0x64c5]             ; 0x1494
@..local.l74:
    mov word [data_9aea], data_0002  ; 0x1499
    mov word [data_9b08], 8          ; 0x149f
    mov ax, 0xffff                   ; 0x14a5
    cmp word [bp + 0x4], byte 1      ; 0x14a8
    jle short @..local.l75           ; 0x14ac
    mov ax, 0x16                     ; 0x14ae
@..local.l75:
    mov word [data_9afc], ax         ; 0x14b1
    mov ax, 0xffff                   ; 0x14b4
    cmp word [bp + 0x4], byte 1      ; 0x14b7
    jle short @..local.l76           ; 0x14bb
    mov ax, 0x17                     ; 0x14bd
@..local.l76:
    mov word [data_9b04], ax         ; 0x14c0
    mov ax, word [data_9af0]         ; 0x14c3
    cmp word [bp + 0x4], byte 3      ; 0x14c6
    jle short @..local.l77           ; 0x14ca
    mov ax, 0x1a                     ; 0x14cc
@..local.l77:
    mov word [data_9ae2], ax         ; 0x14cf
    mov ax, word [data_9af0]         ; 0x14d2
    cmp word [bp + 0x4], byte 3      ; 0x14d5
    jle short @..local.l78           ; 0x14d9
    mov ax, 0x1b                     ; 0x14db
@..local.l78:
    mov word [data_9ae4], ax         ; 0x14de
    mov ax, word [data_9af0]         ; 0x14e1
    cmp word [bp + 0x4], byte 3      ; 0x14e4
    jle short @..local.l79           ; 0x14e8
    mov ax, 0x1c                     ; 0x14ea
@..local.l79:
    mov word [data_9aee], ax         ; 0x14ed
    mov ax, word [data_9af0]         ; 0x14f0
    cmp word [bp + 0x4], byte 3      ; 0x14f3
    jle short @..local.l80           ; 0x14f7
    mov ax, 0x1e                     ; 0x14f9
@..local.l80:
    mov word [data_9aec], ax         ; 0x14fc
    mov ax, word [data_9af0]         ; 0x14ff
    cmp word [bp + 0x4], byte 3      ; 0x1502
    jle short @..local.l81           ; 0x1506
    mov ax, 0x1d                     ; 0x1508
@..local.l81:
    mov word [data_9ae8], ax         ; 0x150b
    mov ax, word [data_9af0]         ; 0x150e
    cmp word [bp + 0x4], byte 3      ; 0x1511
    jle short @..local.l82           ; 0x1515
    mov ax, 0x1f                     ; 0x1517
@..local.l82:
    mov word [data_9ae6], ax         ; 0x151a
    mov word [bp - 0x0002], 0        ; 0x151d
    jmp short @..local.l86           ; 0x1522
@..local.l83:
    mov word [bp - 0x0004], 0        ; 0x1524
    jmp short @..local.l85           ; 0x1529
@..local.l84:
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
@..local.l85:
    mov ax, word [bp - 0x0008]       ; 0x1554
    inc ax                           ; 0x1557
    cmp ax, word [bp - 0x0004]       ; 0x1558
    jge short @..local.l84           ; 0x155b
    inc word [bp - 0x0002]           ; 0x155d
@..local.l86:
    mov ax, word [bp - 0x0006]       ; 0x1560
    inc ax                           ; 0x1563
    cmp ax, word [bp - 0x0002]       ; 0x1564
    jge short @..local.l83           ; 0x1567
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
    jmp short @..local.l93           ; 0x1598
@..local.l87:
    mov word [bp - 0x0002], 1        ; 0x159a
    jmp short @..local.l92           ; 0x159f
@..local.l88:
    cmp word [data_9858], byte 0     ; 0x15a1
    jne short @..local.l89           ; 0x15a6
    cmp word [bp + 0x6], byte 0      ; 0x15a8
    jne short @..local.l90           ; 0x15ac
    cmp word [bp + 0x4], byte 4      ; 0x15ae
    jle short @..local.l90           ; 0x15b2
@..local.l89:
    mov ax, 1                        ; 0x15b4
    jmp short @..local.l91           ; 0x15b7
@..local.l90:
    mov ax, 0                        ; 0x15b9
@..local.l91:
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
@..local.l92:
    mov ax, word [bp - 0x0002]       ; 0x15e4
    cmp ax, word [bp - 0x0006]       ; 0x15e7
    jle short @..local.l88           ; 0x15ea
    inc word [bp - 0x0004]           ; 0x15ec
@..local.l93:
    mov ax, word [bp - 0x0004]       ; 0x15ef
    cmp ax, word [bp - 0x0008]       ; 0x15f2
    jle short @..local.l87           ; 0x15f5
    cmp word [bp + 0x4], byte 1      ; 0x15f7
    jle short @..local.l98           ; 0x15fb
    mov word [bp - 0x0004], 1        ; 0x15fd
    jmp short @..local.l97           ; 0x1602
@..local.l94:
    mov word [bp - 0x0002], 1        ; 0x1604
    jmp short @..local.l96           ; 0x1609
@..local.l95:
    push word [bp - 0x0004]          ; 0x160b
    push word [bp - 0x0002]          ; 0x160e
    call math_loc_0ede               ; 0x1611
    add sp, byte 4                   ; 0x1614
    inc word [bp - 0x0002]           ; 0x1617
@..local.l96:
    mov ax, word [bp - 0x0002]       ; 0x161a
    cmp ax, word [bp - 0x0006]       ; 0x161d
    jle short @..local.l95           ; 0x1620
    inc word [bp - 0x0004]           ; 0x1622
@..local.l97:
    mov ax, word [bp - 0x0004]       ; 0x1625
    cmp ax, word [bp - 0x0008]       ; 0x1628
    jle short @..local.l94           ; 0x162b
@..local.l98:
    mov word [bp - 0x0004], 1        ; 0x162d
    jmp short @..local.l103          ; 0x1632
@..local.l99:
    mov word [bp - 0x0002], 1        ; 0x1634
    jmp short @..local.l102          ; 0x1639
@..local.l100:
    mov ax, 0x24                     ; 0x163b
    imul word [bp - 0x0002]          ; 0x163e
    mov cx, word [bp - 0x0004]       ; 0x1641
    shl cx, 1                        ; 0x1644
    add ax, cx                       ; 0x1646
    mov bx, ax                       ; 0x1648
    cmp word [bx - 0x6f46], byte 0xff ; 0x164a
    je short @..local.l101           ; 0x164f
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
@..local.l101:
    inc word [bp - 0x0002]           ; 0x166a
@..local.l102:
    mov ax, word [bp - 0x0002]       ; 0x166d
    cmp ax, word [bp - 0x0006]       ; 0x1670
    jle short @..local.l100          ; 0x1673
    inc word [bp - 0x0004]           ; 0x1675
@..local.l103:
    mov ax, word [bp - 0x0004]       ; 0x1678
    cmp ax, word [bp - 0x0008]       ; 0x167b
    jle short @..local.l99           ; 0x167e
    mov word [bp - 0x0004], 0        ; 0x1680
    jmp short @..local.l109          ; 0x1685
@..local.l104:
    mov word [bp - 0x0002], 0        ; 0x1687
    jmp short @..local.l108          ; 0x168c
@..local.l105:
    mov ax, 0x24                     ; 0x168e
    imul word [bp - 0x0002]          ; 0x1691
    mov cx, word [bp - 0x0004]       ; 0x1694
    shl cx, 1                        ; 0x1697
    add ax, cx                       ; 0x1699
    mov bx, ax                       ; 0x169b
    cmp word [bx - 0x6cba], byte 0xff ; 0x169d
    je short @..local.l106           ; 0x16a2
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
@..local.l106:
    mov ax, 0x24                     ; 0x16bd
    imul word [bp - 0x0002]          ; 0x16c0
    mov cx, word [bp - 0x0004]       ; 0x16c3
    shl cx, 1                        ; 0x16c6
    add ax, cx                       ; 0x16c8
    mov bx, ax                       ; 0x16ca
    cmp word [bx - 0x6a30], byte 0xff ; 0x16cc
    je short @..local.l107           ; 0x16d1
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
@..local.l107:
    inc word [bp - 0x0002]           ; 0x16ec
@..local.l108:
    mov ax, word [bp - 0x0006]       ; 0x16ef
    inc ax                           ; 0x16f2
    cmp ax, word [bp - 0x0002]       ; 0x16f3
    jge short @..local.l105          ; 0x16f6
    inc word [bp - 0x0004]           ; 0x16f8
@..local.l109:
    mov ax, word [bp - 0x0008]       ; 0x16fb
    inc ax                           ; 0x16fe
    cmp ax, word [bp - 0x0004]       ; 0x16ff
    jge short @..local.l104          ; 0x1702
    cmp word [data_9858], byte 0     ; 0x1704
    je short @..local.l115           ; 0x1709
    mov word [bp - 0x0004], 0        ; 0x170b
    jmp short @..local.l114          ; 0x1710
@..local.l110:
    mov word [bp - 0x0002], 0        ; 0x1712
    jmp short @..local.l113          ; 0x1717
@..local.l111:
    mov ax, 0x24                     ; 0x1719
    imul word [bp - 0x0002]          ; 0x171c
    mov cx, word [bp - 0x0004]       ; 0x171f
    shl cx, 1                        ; 0x1722
    add ax, cx                       ; 0x1724
    mov bx, ax                       ; 0x1726
    cmp word [bx - 0x67a6], byte 1   ; 0x1728
    jne short @..local.l112          ; 0x172d
    mov ax, word [bp - 0x0004]       ; 0x172f
    dec ax                           ; 0x1732
    push ax                          ; 0x1733
    mov ax, word [bp - 0x0002]       ; 0x1734
    dec ax                           ; 0x1737
    push ax                          ; 0x1738
    call math_loc_0f52               ; 0x1739
    add sp, byte 4                   ; 0x173c
@..local.l112:
    inc word [bp - 0x0002]           ; 0x173f
@..local.l113:
    mov ax, word [bp - 0x0002]       ; 0x1742
    cmp ax, word [bp - 0x0006]       ; 0x1745
    jle short @..local.l111          ; 0x1748
    inc word [bp - 0x0004]           ; 0x174a
@..local.l114:
    mov ax, word [bp - 0x0004]       ; 0x174d
    cmp ax, word [bp - 0x0008]       ; 0x1750
    jle short @..local.l110          ; 0x1753
@..local.l115:
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
@..local.l116:
    call ds_dispatch_baef            ; 0x17f2
    test ax, ax                      ; 0x17f5
    je short @..local.l117           ; 0x17f7
    jmp near @..local.l118           ; 0x17f9
@..local.l117:
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
    jmp near @..local.l116           ; 0x18ef
@..local.l118:
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
api_idx_000a_2:
    mov ax, 0xfff6                   ; 0x190b
    call ds_dispatch_f40b            ; 0x190e
    mov ax, 0                        ; 0x1911
    push ax                          ; 0x1914
    push word [data_8d10]            ; 0x1915
    push word [data_8d0e]            ; 0x1919
    call ds_dispatch_e94f            ; 0x191d
    add sp, byte 6                   ; 0x1920
    mov byte [bp - 0x000a], 1        ; 0x1923
    mov byte [bp - 0x0009], 0        ; 0x1927
    mov ax, 0                        ; 0x192b
    push ax                          ; 0x192e
    push ax                          ; 0x192f
    lea ax, word [bp - 0x000a]       ; 0x1930
    push ax                          ; 0x1933
    mov ax, 0                        ; 0x1934
    push ax                          ; 0x1937
    mov ax, 0xc7                     ; 0x1938
    push ax                          ; 0x193b
    mov ax, 0                        ; 0x193c
    push ax                          ; 0x193f
    mov ax, 0x13f                    ; 0x1940
    push ax                          ; 0x1943
    mov ax, 0                        ; 0x1944
    push ax                          ; 0x1947
    mov ax, 0x9a                     ; 0x1948
    push ax                          ; 0x194b
    mov ax, 0x37                     ; 0x194c
    push ax                          ; 0x194f
    mov ax, 0xe                      ; 0x1950
    push ax                          ; 0x1953
    call ds_dispatch_efd1            ; 0x1954
    add sp, byte 0x16                ; 0x1957
    ret                              ; 0x195a
api_idx_0002_4:
    mov ax, 0xfffe                   ; 0x195b
    call ds_dispatch_f40b            ; 0x195e
    mov ax, 0                        ; 0x1961
    push ax                          ; 0x1964
    mov ax, 0x55                     ; 0x1965
    push ax                          ; 0x1968
    call ds_dispatch_e823            ; 0x1969
    add sp, byte 4                   ; 0x196c
    mov ax, data_0002                ; 0x196f
    push ax                          ; 0x1972
    push word [bp + 0x4]             ; 0x1973
    call ds_dispatch_e883            ; 0x1976
    add sp, byte 4                   ; 0x1979
    inc ax                           ; 0x197c
    mov cx, data_0002                ; 0x197d
    cwd                              ; 0x1980
    idiv cx                          ; 0x1981
    mov cx, ax                       ; 0x1983
    mov ax, 0xa0                     ; 0x1985
    sub ax, cx                       ; 0x1988
    mov word [bp - 0x0002], ax       ; 0x198a
    mov ax, 0x9e                     ; 0x198d
    push ax                          ; 0x1990
    push word [bp - 0x0002]          ; 0x1991
    call ds_dispatch_e809            ; 0x1994
    add sp, byte 4                   ; 0x1997
    mov ax, data_0002                ; 0x199a
    push ax                          ; 0x199d
    push word [bp + 0x4]             ; 0x199e
    call ds_dispatch_e84e            ; 0x19a1
    add sp, byte 4                   ; 0x19a4
    push word [bp + 0x6]             ; 0x19a7
    call ds_dispatch_fa90            ; 0x19aa
    pop cx                           ; 0x19ad
    cmp ax, strict word 0            ; 0x19ae
    jg short @..api_idx_0002_4.l1    ; 0x19b1
    jmp near @..api_idx_0002_4.l2    ; 0x19b3
@..api_idx_0002_4.l1:
    mov ax, data_0002                ; 0x19b6
    push ax                          ; 0x19b9
    push word [bp + 0x6]             ; 0x19ba
    call ds_dispatch_e883            ; 0x19bd
    add sp, byte 4                   ; 0x19c0
    inc ax                           ; 0x19c3
    mov cx, data_0002                ; 0x19c4
    cwd                              ; 0x19c7
    idiv cx                          ; 0x19c8
    mov cx, ax                       ; 0x19ca
    mov ax, 0xa0                     ; 0x19cc
    sub ax, cx                       ; 0x19cf
    mov word [bp - 0x0002], ax       ; 0x19d1
    mov ax, 0xaa                     ; 0x19d4
    push ax                          ; 0x19d7
    push word [bp - 0x0002]          ; 0x19d8
    call ds_dispatch_e809            ; 0x19db
    add sp, byte 4                   ; 0x19de
    mov ax, data_0002                ; 0x19e1
    push ax                          ; 0x19e4
    push word [bp + 0x6]             ; 0x19e5
    call ds_dispatch_e84e            ; 0x19e8
    add sp, byte 4                   ; 0x19eb
    push word [bp + 0x8]             ; 0x19ee
    call ds_dispatch_fa90            ; 0x19f1
    pop cx                           ; 0x19f4
    cmp ax, strict word 0            ; 0x19f5
    jle short @..api_idx_0002_4.l2   ; 0x19f8
    mov ax, data_0002                ; 0x19fa
    push ax                          ; 0x19fd
    push word [bp + 0x8]             ; 0x19fe
    call ds_dispatch_e883            ; 0x1a01
    add sp, byte 4                   ; 0x1a04
    inc ax                           ; 0x1a07
    mov cx, data_0002                ; 0x1a08
    cwd                              ; 0x1a0b
    idiv cx                          ; 0x1a0c
    mov cx, ax                       ; 0x1a0e
    mov ax, 0xa0                     ; 0x1a10
    sub ax, cx                       ; 0x1a13
    mov word [bp - 0x0002], ax       ; 0x1a15
    mov ax, 0xb6                     ; 0x1a18
    push ax                          ; 0x1a1b
    push word [bp - 0x0002]          ; 0x1a1c
    call ds_dispatch_e809            ; 0x1a1f
    add sp, byte 4                   ; 0x1a22
    mov ax, data_0002                ; 0x1a25
    push ax                          ; 0x1a28
    push word [bp + 0x8]             ; 0x1a29
    call ds_dispatch_e84e            ; 0x1a2c
    add sp, byte 4                   ; 0x1a2f
@..api_idx_0002_4.l2:
    mov ax, 0xc6                     ; 0x1a32
    push ax                          ; 0x1a35
    mov ax, 0x109                    ; 0x1a36
    push ax                          ; 0x1a39
    mov ax, 0x92                     ; 0x1a3a
    push ax                          ; 0x1a3d
    mov ax, 0x37                     ; 0x1a3e
    push ax                          ; 0x1a41
    call ds_dispatch_bb33            ; 0x1a42
    add sp, byte 8                   ; 0x1a45
    mov ax, word [data_905a]         ; 0x1a48
    cmp byte [data_598c], 0          ; 0x1a4b
    je short @..api_idx_0002_4.l3    ; 0x1a50
    shl ax, 1                        ; 0x1a52
@..api_idx_0002_4.l3:
    push ax                          ; 0x1a54
    call api_idx_0004_2              ; 0x1a55
    pop cx                           ; 0x1a58
    call api_idx_000a_2              ; 0x1a59
    ret                              ; 0x1a5c
api_idx_00fa:
    mov ax, 0xff06                   ; 0x1a5d
    call ds_dispatch_f40b            ; 0x1a60
    mov word [bp - 0x0004], 0        ; 0x1a63
    mov word [bp - 0x0006], 0        ; 0x1a68
    mov word [bp - 0x0008], 0        ; 0x1a6d
    mov ax, word [bp + 0x4]          ; 0x1a72
    jmp short @..api_idx_00fa.l1     ; 0x1a75
    add word [bp - 0x0008], byte 0x19 ; 0x1a77
    add word [bp - 0x0008], byte 0x19 ; 0x1a7b
    add word [bp - 0x0006], byte 0x19 ; 0x1a7f
    add word [bp - 0x0008], byte 0x19 ; 0x1a83
    add word [bp - 0x0006], byte 0x19 ; 0x1a87
    add word [bp - 0x0008], byte 0x19 ; 0x1a8b
    add word [bp - 0x0004], byte 0x19 ; 0x1a8f
    add word [bp - 0x0006], byte 0x19 ; 0x1a93
    add word [bp - 0x0004], byte 0x19 ; 0x1a97
    add word [bp - 0x0006], byte 0x19 ; 0x1a9b
    add word [bp - 0x0004], byte 0x32 ; 0x1a9f
    jmp short @..api_idx_00fa.l2     ; 0x1aa3
    or word [bp + di - 0x001a], bp   ; 0x1aa5
    db 0x6a, 0xde ; push 0xffde
    db 0x6a, 0xd6 ; push 0xffd6
    db 0x6a, 0xce ; push 0xffce
    db 0x6a, 0xc6 ; push 0xffc6
    db 0x6a, 0xc2 ; push 0xffc2
    db 0x6a, 0xbe ; push 0xffbe
    db 0x6a
@..api_idx_00fa.l1:
    db 0x3d
    or byte [bx + si], al            ; 0x1ab6
    jae short @..api_idx_00fa.l2     ; 0x1ab8
    xchg bx, ax                      ; 0x1aba
    shl bx, 1                        ; 0x1abb
    jmp [cs:bx + 0x6aec]             ; 0x1abd
@..api_idx_00fa.l2:
    mov ax, data_0002                ; 0x1ac2
    push ax                          ; 0x1ac5
    call ds_dispatch_c12a            ; 0x1ac6
    pop cx                           ; 0x1ac9
    mov ax, 0xe                      ; 0x1aca
    push ax                          ; 0x1acd
    mov ax, 0                        ; 0x1ace
    push ax                          ; 0x1ad1
    call ds_dispatch_d61c            ; 0x1ad2
    add sp, byte 4                   ; 0x1ad5
    mov ax, 0xc6                     ; 0x1ad8
    push ax                          ; 0x1adb
    mov ax, 0x109                    ; 0x1adc
    push ax                          ; 0x1adf
    mov ax, 0x92                     ; 0x1ae0
    push ax                          ; 0x1ae3
    mov ax, 0x37                     ; 0x1ae4
    push ax                          ; 0x1ae7
    call ds_dispatch_e928            ; 0x1ae8
    add sp, byte 8                   ; 0x1aeb
    mov word [data_8d10], dx         ; 0x1aee
    mov word [data_8d0e], ax         ; 0x1af2
    call api_idx_000a_2              ; 0x1af5
    mov word [bp - 0x000a], 0        ; 0x1af8
    mov word [bp - 0x0002], 0        ; 0x1afd
@..api_idx_00fa.l3:
    mov ax, 0x26                     ; 0x1b02
    imul word [bp - 0x0002]          ; 0x1b05
    mov bx, ax                       ; 0x1b08
    cmp byte [bx - 0x7b14], 0x19     ; 0x1b0a
    jb short @..api_idx_00fa.l4      ; 0x1b0f
    jmp near @..api_idx_00fa.l11     ; 0x1b11
@..api_idx_00fa.l4:
    mov ax, 0x64                     ; 0x1b14
    push ax                          ; 0x1b17
    call ds_dispatch_b7a9            ; 0x1b18
    pop cx                           ; 0x1b1b
    cmp ax, word [bp - 0x0008]       ; 0x1b1c
    jl short @..api_idx_00fa.l7      ; 0x1b1f
    mov ax, 0x26                     ; 0x1b21
    imul word [bp - 0x0002]          ; 0x1b24
    mov bx, ax                       ; 0x1b27
    mov al, byte [bx - 0x7b14]       ; 0x1b29
    sub ah, ah                       ; 0x1b2d
    shl ax, 1                        ; 0x1b2f
    shl ax, 1                        ; 0x1b31
    mov bx, ax                       ; 0x1b33
    mov al, byte [bx - 0x7687]       ; 0x1b35
    cbw                              ; 0x1b39
    cmp ax, word [data_830c]         ; 0x1b3a
    jne short @..api_idx_00fa.l5     ; 0x1b3e
    mov ax, 0x64                     ; 0x1b40
    push ax                          ; 0x1b43
    call ds_dispatch_b7a9            ; 0x1b44
    pop cx                           ; 0x1b47
    cmp ax, word [bp - 0x0006]       ; 0x1b48
    jl short @..api_idx_00fa.l7      ; 0x1b4b
@..api_idx_00fa.l5:
    mov ax, 0x26                     ; 0x1b4d
    imul word [bp - 0x0002]          ; 0x1b50
    mov bx, ax                       ; 0x1b53
    mov al, byte [bx - 0x7b13]       ; 0x1b55
    sub ah, ah                       ; 0x1b59
    cmp ax, word [data_8f3e]         ; 0x1b5b
    je short @..api_idx_00fa.l6      ; 0x1b5f
    jmp near @..api_idx_00fa.l11     ; 0x1b61
@..api_idx_00fa.l6:
    mov ax, 0x64                     ; 0x1b64
    push ax                          ; 0x1b67
    call ds_dispatch_b7a9            ; 0x1b68
    pop cx                           ; 0x1b6b
    cmp ax, word [bp - 0x0004]       ; 0x1b6c
    jl short @..api_idx_00fa.l7      ; 0x1b6f
    jmp near @..api_idx_00fa.l11     ; 0x1b71
@..api_idx_00fa.l7:
    mov word [bp - 0x000a], 1        ; 0x1b74
    lea ax, word [bp - 0x005a]       ; 0x1b79
    push ax                          ; 0x1b7c
    mov ax, word [bp - 0x0002]       ; 0x1b7d
    add ax, 0x6a4                    ; 0x1b80
    push ax                          ; 0x1b83
    call ds_dispatch_b53b            ; 0x1b84
    add sp, byte 4                   ; 0x1b87
    mov byte [bp - 0x00aa], 0        ; 0x1b8a
    mov byte [bp - 0x00fa], 0        ; 0x1b8f
    mov ax, 0x26                     ; 0x1b94
    imul word [bp - 0x0002]          ; 0x1b97
    mov bx, ax                       ; 0x1b9a
    cmp byte [bx - 0x7b00], 0        ; 0x1b9c
    je short @..api_idx_00fa.l8      ; 0x1ba1
    cmp word [bp - 0x0002], byte 4   ; 0x1ba3
    jne short @..api_idx_00fa.l9     ; 0x1ba7
    mov ax, 0x40                     ; 0x1ba9
    push ax                          ; 0x1bac
    mov ax, 0x8e64                   ; 0x1bad
    push ax                          ; 0x1bb0
    call ds_dispatch_ec74            ; 0x1bb1
    add sp, byte 4                   ; 0x1bb4
    test ax, ax                      ; 0x1bb7
    je short @..api_idx_00fa.l9      ; 0x1bb9
@..api_idx_00fa.l8:
    lea ax, word [bp - 0x00aa]       ; 0x1bbb
    push ax                          ; 0x1bbf
    mov ax, 0x1e7                    ; 0x1bc0
    push ax                          ; 0x1bc3
    call ds_dispatch_b53b            ; 0x1bc4
    add sp, byte 4                   ; 0x1bc7
    jmp short @..api_idx_00fa.l10    ; 0x1bca
@..api_idx_00fa.l9:
    lea ax, word [bp - 0x00aa]       ; 0x1bcc
    push ax                          ; 0x1bd0
    mov ax, 0x1e5                    ; 0x1bd1
    push ax                          ; 0x1bd4
    call ds_dispatch_b53b            ; 0x1bd5
    add sp, byte 4                   ; 0x1bd8
    lea ax, word [bp - 0x00fa]       ; 0x1bdb
    push ax                          ; 0x1bdf
    mov ax, 0x26                     ; 0x1be0
    imul word [bp - 0x0002]          ; 0x1be3
    mov bx, ax                       ; 0x1be6
    mov al, byte [bx - 0x7b14]       ; 0x1be8
    sub ah, ah                       ; 0x1bec
    add ax, 0x6ea                    ; 0x1bee
    push ax                          ; 0x1bf1
    call ds_dispatch_b53b            ; 0x1bf2
    add sp, byte 4                   ; 0x1bf5
@..api_idx_00fa.l10:
    lea ax, word [bp - 0x00fa]       ; 0x1bf8
    push ax                          ; 0x1bfc
    lea ax, word [bp - 0x00aa]       ; 0x1bfd
    push ax                          ; 0x1c01
    lea ax, word [bp - 0x005a]       ; 0x1c02
    push ax                          ; 0x1c05
    call api_idx_0002_4              ; 0x1c06
    add sp, byte 6                   ; 0x1c09
@..api_idx_00fa.l11:
    inc word [bp - 0x0002]           ; 0x1c0c
    mov ax, word [bp - 0x0002]       ; 0x1c0f
    cmp ax, strict word 0x14         ; 0x1c12
    jge short @..api_idx_00fa.l12    ; 0x1c15
    jmp near @..api_idx_00fa.l3      ; 0x1c17
@..api_idx_00fa.l12:
    cmp word [bp - 0x000a], byte 0   ; 0x1c1a
    jne short @..api_idx_00fa.l13    ; 0x1c1e
    lea ax, word [bp - 0x005a]       ; 0x1c20
    push ax                          ; 0x1c23
    mov ax, 0x1e6                    ; 0x1c24
    push ax                          ; 0x1c27
    call ds_dispatch_b53b            ; 0x1c28
    add sp, byte 4                   ; 0x1c2b
    mov ax, 0x9099                   ; 0x1c2e
    push ax                          ; 0x1c31
    mov ax, 0x9098                   ; 0x1c32
    push ax                          ; 0x1c35
    lea ax, word [bp - 0x005a]       ; 0x1c36
    push ax                          ; 0x1c39
    call api_idx_0002_4              ; 0x1c3a
    add sp, byte 6                   ; 0x1c3d
@..api_idx_00fa.l13:
    mov ax, 1                        ; 0x1c40
    push ax                          ; 0x1c43
    push word [data_8d10]            ; 0x1c44
    push word [data_8d0e]            ; 0x1c48
    call ds_dispatch_e94f            ; 0x1c4c
    add sp, byte 6                   ; 0x1c4f
    mov ax, 0xc6                     ; 0x1c52
    push ax                          ; 0x1c55
    mov ax, 0x109                    ; 0x1c56
    push ax                          ; 0x1c59
    mov ax, 0x92                     ; 0x1c5a
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
math_loc_1c7f:
    mov ax, 0                        ; 0x1c7f
    call ds_dispatch_f40b            ; 0x1c82
    cmp word [bp + 0x8], byte 1      ; 0x1c85
    jne short @..math_loc_1c7f.l3    ; 0x1c89
    cmp word [bp + 0x6], byte 0      ; 0x1c8b
    jle short @..math_loc_1c7f.l1    ; 0x1c8f
    mov ax, word [bp + 0x4]          ; 0x1c91
    sub word [bp + 0x6], ax          ; 0x1c94
    jmp short @..math_loc_1c7f.l2    ; 0x1c97
@..math_loc_1c7f.l1:
    mov ax, 0                        ; 0x1c99
    sub ax, word [bp + 0x4]          ; 0x1c9c
    cmp ax, word [bp + 0x6]          ; 0x1c9f
    jge short @..math_loc_1c7f.l2    ; 0x1ca2
    mov word [bp + 0x6], ax          ; 0x1ca4
@..math_loc_1c7f.l2:
    jmp short @..math_loc_1c7f.l5    ; 0x1ca7
@..math_loc_1c7f.l3:
    cmp word [bp + 0x8], byte 0      ; 0x1ca9
    jne short @..math_loc_1c7f.l5    ; 0x1cad
    cmp word [bp + 0x6], byte 0      ; 0x1caf
    jge short @..math_loc_1c7f.l4    ; 0x1cb3
    mov ax, word [bp + 0x4]          ; 0x1cb5
    add word [bp + 0x6], ax          ; 0x1cb8
    jmp short @..math_loc_1c7f.l5    ; 0x1cbb
@..math_loc_1c7f.l4:
    mov ax, word [bp + 0x6]          ; 0x1cbd
    cmp ax, word [bp + 0x4]          ; 0x1cc0
    jge short @..math_loc_1c7f.l5    ; 0x1cc3
    mov ax, word [bp + 0x4]          ; 0x1cc5
    mov word [bp + 0x6], ax          ; 0x1cc8
@..math_loc_1c7f.l5:
    mov ax, word [bp + 0x6]          ; 0x1ccb
    ret                              ; 0x1cce
api_idx_0008:
    mov ax, 0xfff8                   ; 0x1ccf
    call ds_dispatch_f40b            ; 0x1cd2
    mov ax, word [bp + 0x6]          ; 0x1cd5
    jmp near @..local.l119           ; 0x1cd8
    mov ax, 0x32                     ; 0x1cdb
    imul word [bp + 0x8]             ; 0x1cde
    add word [data_82fe], ax         ; 0x1ce1
    mov ax, 0                        ; 0x1ce5
    push ax                          ; 0x1ce8
    push word [data_8300]            ; 0x1ce9
    mov ax, 5                        ; 0x1ced
    imul word [bp + 0x8]             ; 0x1cf0
    add ax, strict word 0x46         ; 0x1cf3
    push ax                          ; 0x1cf6
    call math_loc_1c7f               ; 0x1cf7
    add sp, byte 6                   ; 0x1cfa
    mov word [data_8300], ax         ; 0x1cfd
    jmp near @..local.l120           ; 0x1d00
    mov ax, 0x23                     ; 0x1d03
    imul word [bp + 0x8]             ; 0x1d06
    add word [data_82f2], ax         ; 0x1d09
    mov ax, 0                        ; 0x1d0d
    push ax                          ; 0x1d10
    push word [data_82f4]            ; 0x1d11
    mov ax, word [bp + 0x8]          ; 0x1d15
    dec ax                           ; 0x1d18
    mov cx, data_0002                ; 0x1d19
    cwd                              ; 0x1d1c
    idiv cx                          ; 0x1d1d
    inc ax                           ; 0x1d1f
    push ax                          ; 0x1d20
    call math_loc_1c7f               ; 0x1d21
    add sp, byte 6                   ; 0x1d24
    mov word [data_82f4], ax         ; 0x1d27
    jmp near @..local.l120           ; 0x1d2a
    mov ax, 0x32                     ; 0x1d2d
    imul word [bp + 0x8]             ; 0x1d30
    add word [data_82f6], ax         ; 0x1d33
    mov ax, 0                        ; 0x1d37
    push ax                          ; 0x1d3a
    push word [data_82f8]            ; 0x1d3b
    mov ax, word [bp + 0x8]          ; 0x1d3f
    dec ax                           ; 0x1d42
    mov cx, data_0002                ; 0x1d43
    cwd                              ; 0x1d46
    idiv cx                          ; 0x1d47
    inc ax                           ; 0x1d49
    push ax                          ; 0x1d4a
    call math_loc_1c7f               ; 0x1d4b
    add sp, byte 6                   ; 0x1d4e
    mov word [data_82f8], ax         ; 0x1d51
    jmp near @..local.l120           ; 0x1d54
    mov ax, 5                        ; 0x1d57
    imul word [bp + 0x8]             ; 0x1d5a
    add word [data_8306], ax         ; 0x1d5d
    jmp near @..local.l120           ; 0x1d61
    mov ax, 0x64                     ; 0x1d64
    imul word [bp + 0x8]             ; 0x1d67
    add word [data_8302], ax         ; 0x1d6a
    jmp near @..local.l120           ; 0x1d6e
    mov ax, 0x32                     ; 0x1d71
    imul word [bp + 0x8]             ; 0x1d74
    add word [data_82fa], ax         ; 0x1d77
    mov ax, 0                        ; 0x1d7b
    push ax                          ; 0x1d7e
    push word [data_82fc]            ; 0x1d7f
    mov ax, 5                        ; 0x1d83
    imul word [bp + 0x8]             ; 0x1d86
    push ax                          ; 0x1d89
    call math_loc_1c7f               ; 0x1d8a
    add sp, byte 6                   ; 0x1d8d
    mov word [data_82fc], ax         ; 0x1d90
    jmp near @..local.l120           ; 0x1d93
    mov ax, 0                        ; 0x1d96
    cmp word [bp + 0x6], byte 0x13   ; 0x1d99
    je short @..api_idx_0008.l1      ; 0x1d9d
    mov ax, word [bp + 0xa]          ; 0x1d9f
@..api_idx_0008.l1:
    mov word [bp - 0x0002], ax       ; 0x1da2
    mov ax, word [data_69c8]         ; 0x1da5
    cmp word [bp + 0x6], byte 0x13   ; 0x1da8
    je short @..api_idx_0008.l2      ; 0x1dac
    mov ax, word [bp + 0xa]          ; 0x1dae
    inc ax                           ; 0x1db1
@..api_idx_0008.l2:
    mov word [bp - 0x0004], ax       ; 0x1db2
    mov ax, word [bp + 0x8]          ; 0x1db5
    cmp word [bp + 0x6], byte 0x13   ; 0x1db8
    je short @..api_idx_0008.l3      ; 0x1dbc
    shl ax, 1                        ; 0x1dbe
@..api_idx_0008.l3:
    mov word [bp - 0x0006], ax       ; 0x1dc0
    mov ax, 0                        ; 0x1dc3
    cmp word [bp + 0x6], byte 0x13   ; 0x1dc6
    je short @..api_idx_0008.l4      ; 0x1dca
    mov ax, word [bp + 0x8]          ; 0x1dcc
@..api_idx_0008.l4:
    mov word [bp - 0x0008], ax       ; 0x1dcf
    jmp short @..api_idx_0008.l6     ; 0x1dd2
@..api_idx_0008.l5:
    mov ax, 0x248                    ; 0x1dd4
    imul word [bp - 0x0002]          ; 0x1dd7
    mov bx, ax                       ; 0x1dda
    push word [bx + 0x5c12]          ; 0x1ddc
    mov ax, 0                        ; 0x1de0
    push ax                          ; 0x1de3
    push word [bp - 0x0008]          ; 0x1de4
    mov ax, 8                        ; 0x1de7
    push ax                          ; 0x1dea
    push word [bp - 0x0006]          ; 0x1deb
    call ds_dispatch_d0ea            ; 0x1dee
    add sp, byte 6                   ; 0x1df1
    mov cx, ax                       ; 0x1df4
    sub sp, byte 4                   ; 0x1df6
    mov ax, sp                       ; 0x1df9
    mov dx, ss                       ; 0x1dfb
    mov es, dx                       ; 0x1dfd
    mov si, cx                       ; 0x1dff
    mov di, ax                       ; 0x1e01
    movsw                            ; 0x1e03
    movsw                            ; 0x1e04
    call ds_dispatch_d0be            ; 0x1e05
    add sp, byte 4                   ; 0x1e08
    push ax                          ; 0x1e0b
    mov ax, 0x248                    ; 0x1e0c
    imul word [bp - 0x0002]          ; 0x1e0f
    mov bx, ax                       ; 0x1e12
    pop ax                           ; 0x1e14
    add ax, word [bx + 0x5c10]       ; 0x1e15
    push ax                          ; 0x1e19
    call ds_dispatch_b7c2            ; 0x1e1a
    add sp, byte 6                   ; 0x1e1d
    push ax                          ; 0x1e20
    mov ax, 0x248                    ; 0x1e21
    imul word [bp - 0x0002]          ; 0x1e24
    mov bx, ax                       ; 0x1e27
    pop ax                           ; 0x1e29
    mov word [bx + 0x5c10], ax       ; 0x1e2a
    inc word [bp - 0x0002]           ; 0x1e2e
@..api_idx_0008.l6:
    mov ax, word [bp - 0x0002]       ; 0x1e31
    cmp ax, word [bp - 0x0004]       ; 0x1e34
    jl short @..api_idx_0008.l5      ; 0x1e37
    jmp near @..local.l120           ; 0x1e39
    mov ax, 0x248                    ; 0x1e3c
    imul word [bp + 0xa]             ; 0x1e3f
    mov bx, ax                       ; 0x1e42
    mov al, byte [bx + 0x5d5d]       ; 0x1e44
    sub ah, ah                       ; 0x1e48
    push ax                          ; 0x1e4a
    mov ax, 0x19                     ; 0x1e4b
    imul word [bp + 0x8]             ; 0x1e4e
    mov cx, ax                       ; 0x1e51
    pop ax                           ; 0x1e53
    sub ax, cx                       ; 0x1e54
    mov word [bp - 0x0002], ax       ; 0x1e56
    cmp ax, strict word 0            ; 0x1e59
    jge short @..api_idx_0008.l7     ; 0x1e5c
    mov word [bp - 0x0002], 0        ; 0x1e5e
@..api_idx_0008.l7:
    mov al, byte [bp - 0x0002]       ; 0x1e63
    mov byte [bx + 0x5d5d], al       ; 0x1e66
    jmp near @..local.l120           ; 0x1e6a
    mov ax, 0x248                    ; 0x1e6d
    imul word [bp + 0xa]             ; 0x1e70
    mov bx, ax                       ; 0x1e73
    mov al, byte [bx + 0x5e32]       ; 0x1e75
    sub ah, ah                       ; 0x1e79
    sub ax, word [bp + 0x8]          ; 0x1e7b
    mov word [bp - 0x0002], ax       ; 0x1e7e
    cmp ax, strict word 0            ; 0x1e81
    jg short @..api_idx_0008.l8      ; 0x1e84
    mov word [bp - 0x0002], 0        ; 0x1e86
    mov byte [bx + 0x5d5f], 0        ; 0x1e8b
@..api_idx_0008.l8:
    mov al, byte [bp - 0x0002]       ; 0x1e90
    mov byte [bx + 0x5e32], al       ; 0x1e93
    mov al, byte [bx + 0x5d5f]       ; 0x1e97
    sub ah, ah                       ; 0x1e9b
    push ax                          ; 0x1e9d
    mov ax, 5                        ; 0x1e9e
    imul word [bp + 0x8]             ; 0x1ea1
    mov cx, ax                       ; 0x1ea4
    pop ax                           ; 0x1ea6
    sub ax, cx                       ; 0x1ea7
    mov word [bp - 0x0002], ax       ; 0x1ea9
    cmp ax, strict word 0            ; 0x1eac
    jg short @..api_idx_0008.l9      ; 0x1eaf
    mov word [bp - 0x0002], 0        ; 0x1eb1
    mov byte [bx + 0x5e32], 0        ; 0x1eb6
@..api_idx_0008.l9:
    mov al, byte [bp - 0x0002]       ; 0x1ebb
    mov byte [bx + 0x5d5f], al       ; 0x1ebe
    jmp near @..local.l120           ; 0x1ec2
    mov ax, 0x248                    ; 0x1ec5
    imul word [bp + 0xa]             ; 0x1ec8
    mov bx, ax                       ; 0x1ecb

    db 0x80, 0xbf, 0x2f, 0x5e, 0x02, 0x75, 0x73, 0xb8, 0x03, 0x00, 0xf7, 0x6e, 0x08, 0x50, 0x8a, 0x87
    db 0x67, 0x5d, 0x2a, 0xe4, 0x8b, 0xd0, 0xb9, 0x15, 0x00, 0x2b, 0xc8, 0x58, 0x3b, 0xc1, 0x7e, 0x5a
    db 0xfe, 0x8f, 0x67, 0x5d, 0xb8, 0xb7, 0x00, 0x50, 0xe8, 0xb1, 0x98, 0x59, 0x05, 0xb7, 0x00, 0x99
    db 0x50, 0x52, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x0a, 0x8b, 0xd8, 0x5a, 0x58, 0x01, 0x87, 0xfc, 0x5b
    db 0x11, 0x97, 0xfe, 0x5b, 0xb8, 0x12, 0x00, 0x50, 0xe8, 0x91, 0x98, 0x59, 0x50, 0xb8, 0x48, 0x02
    db 0xf7, 0x6e, 0x0a, 0x8b, 0xd8, 0x8a, 0x87, 0x67, 0x5d, 0x2a, 0xe4, 0x8b, 0xc8, 0x58, 0x3b, 0xc1
    db 0x7e, 0x13, 0xc6, 0x87, 0x2f, 0x5e, 0x03, 0xc7, 0x87, 0x0c, 0x5c, 0x00, 0x00, 0xc7, 0x87, 0x10
    db 0x5c, 0x00, 0x00, 0xeb, 0x05, 0xc6, 0x87, 0x2f, 0x5e, 0x00, 0xe9, 0x42, 0x04, 0xb8, 0x48, 0x02
    db 0xf7, 0x6e, 0x0a, 0x8b, 0xd8, 0x8a, 0x87, 0x61, 0x5d, 0x2a, 0xe4, 0x50, 0xb8, 0x19, 0x00, 0xf7
    db 0x6e, 0x08, 0x8b, 0xc8, 0x58, 0x2b, 0xc1, 0x89, 0x46, 0xfe, 0x3d, 0x00, 0x00, 0x7d, 0x05, 0xc7
    db 0x46, 0xfe, 0x00, 0x00, 0x8a, 0x46, 0xfe, 0x88, 0x87, 0x61, 0x5d, 0xe9, 0x11, 0x04, 0xb8, 0x03
    db 0x00, 0xf7, 0x6e, 0x08, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x0a, 0x8b, 0xd8, 0x8a, 0x87, 0x67
    db 0x5d, 0x2a, 0xe4, 0x8b, 0xd0, 0xb9, 0x12, 0x00, 0x2b, 0xc8, 0x58, 0x3b, 0xc1, 0x7e, 0x05, 0xc6
    db 0x87, 0x60, 0x5d, 0x00, 0xe9, 0xe8, 0x03, 0xc7, 0x46, 0xfe, 0x00, 0x00, 0xeb, 0x35, 0xb8, 0x48
    db 0x02, 0xf7, 0x6e, 0x0a, 0x8b, 0xd8, 0x8a, 0x87, 0x5c, 0x5d, 0x2a, 0xe4, 0x50, 0x8b, 0x46, 0x08
    db 0xf7, 0xe8, 0x8b, 0xc8, 0x05, 0x04, 0x00, 0x8b, 0xc8, 0x58, 0x2b, 0xc1, 0x89, 0x46, 0xfc, 0x3d
    db 0x00, 0x00, 0x7d, 0x05, 0xc7, 0x46, 0xfc, 0x00, 0x00, 0x8a, 0x46, 0xfc, 0x88, 0x87, 0x5c, 0x5d
    db 0xff, 0x46, 0xfe, 0x8b, 0x46, 0xfe, 0x3b, 0x06, 0xc8, 0x69, 0x7c, 0xc2, 0xe9, 0xa0, 0x03, 0xc7
    db 0x46, 0xfc, 0x01, 0x00, 0x8b, 0x46, 0xfc, 0x3d, 0x01, 0x00, 0x74, 0x14, 0x3d, 0x02, 0x00, 0x74
    db 0x0f, 0x3d, 0x04, 0x00, 0x74, 0x0a, 0x3d, 0x08, 0x00, 0x74, 0x05, 0x3d, 0x09, 0x00, 0x75, 0x39
    db 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x0a, 0x8b, 0xc8, 0x8b, 0x46, 0xfc, 0x03, 0xc8, 0x8b, 0xd9, 0x8a
    db 0x87, 0x5a, 0x5d, 0x2a, 0xe4, 0x50, 0x8b, 0x46, 0x08, 0xf7, 0xe8, 0x8b, 0xc8, 0x05, 0x04, 0x00
    db 0x8b, 0xc8, 0x58, 0x2b, 0xc1, 0x89, 0x46, 0xfe, 0x3d, 0x00, 0x00, 0x7d, 0x05, 0xc7, 0x46, 0xfe
    db 0x00, 0x00, 0x8a, 0x46, 0xfe, 0x88, 0x87, 0x5a, 0x5d, 0xff, 0x46, 0xfc, 0x8b, 0x46, 0xfc, 0x3d
    db 0x09, 0x00, 0x7e, 0xa0, 0xe9, 0x38, 0x03, 0xb8, 0x00, 0x00, 0x83, 0x7e, 0x06, 0x58, 0x74, 0x03
    db 0x8b, 0x46, 0x0a, 0x89, 0x46, 0xfe, 0xa1, 0xc8, 0x69, 0x83, 0x7e, 0x06, 0x58, 0x74, 0x04, 0x8b
    db 0x46, 0x0a, 0x40, 0x89, 0x46, 0xfc, 0xb8, 0x04, 0x00, 0x83, 0x7e, 0x06, 0x58, 0x74, 0x03, 0xb8
    db 0x07, 0x00, 0x89, 0x46, 0xfa, 0xb8, 0x00, 0x00, 0x83, 0x7e, 0x06, 0x58, 0x74, 0x03, 0x8b, 0x46
    db 0x08, 0x89, 0x46, 0xf8, 0xeb, 0x66, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0xfe, 0x8b, 0xd8, 0xff, 0xb7
    db 0x0e, 0x5c, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76, 0xf8, 0xff, 0x76, 0xfa, 0xff, 0x76, 0x08, 0xe8
    db 0x3b, 0xb0, 0x83, 0xc4, 0x06, 0x8b, 0xc8, 0x83, 0xec, 0x04, 0x8b, 0xc4, 0x8c, 0xd2, 0x8e, 0xc2
    db 0x8b, 0xf1, 0x8b, 0xf8, 0xa5, 0xa5, 0xe8, 0xf8, 0xaf, 0x83, 0xc4, 0x04, 0x50, 0xb8, 0x48, 0x02
    db 0xf7, 0x6e, 0xfe, 0x8b, 0xd8, 0x58, 0x03, 0x87, 0x0c, 0x5c, 0x50, 0xe8, 0xe7, 0x96, 0x83, 0xc4
    db 0x06, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0xfe, 0x8b, 0xd8, 0x58, 0x89, 0x87, 0x0c, 0x5c, 0x83
    db 0x87, 0xfc, 0x5b, 0x01, 0x83, 0x97, 0xfe, 0x5b, 0x00, 0xff, 0x46, 0xfe, 0x8b, 0x46, 0xfe, 0x3b
    db 0x46, 0xfc, 0x7c, 0x92, 0xe9, 0x88, 0x02, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x0a, 0x8b, 0xd8, 0x80
    db 0xbf, 0x2f, 0x5e, 0x03, 0x74, 0x03, 0xe9, 0x7b, 0x00, 0xb8, 0x03, 0x00, 0xf7, 0x6e, 0x08, 0x50
    db 0x8a, 0x87, 0x67, 0x5d, 0x2a, 0xe4, 0x8b, 0xd0, 0xb9, 0x15, 0x00, 0x2b, 0xc8, 0x58, 0x3b, 0xc1
    db 0x7e, 0x62, 0xfe, 0x8f, 0x67, 0x5d, 0xc6, 0x87, 0x2f, 0x5e, 0x00, 0xff, 0xb7, 0x0e, 0x5c, 0xb8
    db 0x01, 0x00, 0x50, 0x8b, 0x87, 0x0e, 0x5c, 0xb9, 0x03, 0x00, 0x99, 0xf7, 0xf9, 0x50, 0xe8, 0x74
    db 0x96, 0x83, 0xc4, 0x06, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x0a, 0x8b, 0xd8, 0x58, 0x89, 0x87
    db 0x0c, 0x5c, 0x8b, 0x87, 0x12, 0x5c, 0xb9, 0x0a, 0x00, 0x99, 0xf7, 0xf9, 0x89, 0x87, 0x10, 0x5c
    db 0xff, 0x87, 0x1a, 0x5c, 0xb8, 0xb7, 0x00, 0x50, 0xe8, 0x31, 0x96, 0x59, 0x05, 0x6d, 0x01, 0x99
    db 0x50, 0x52, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x0a, 0x8b, 0xd8, 0x5a, 0x58, 0x01, 0x87, 0xfc, 0x5b
    db 0x11, 0x97, 0xfe, 0x5b, 0xe9, 0xf8, 0x01, 0xff, 0x76, 0x08, 0xe8, 0x4e, 0xe5, 0x59, 0x3d, 0xff
    db 0xff, 0x75, 0x00, 0xe9, 0xe9, 0x01, 0xb8, 0x00, 0x00, 0x50, 0x50, 0xff, 0x76, 0x08, 0xe8, 0x25
    db 0xee, 0x83, 0xc4, 0x06, 0xe9, 0xd8, 0x01, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xff
    db 0x76, 0x08, 0xe8, 0x11, 0xee, 0x83, 0xc4, 0x06, 0xe9, 0xc4, 0x01, 0xff, 0x76, 0x08, 0xb8, 0x08
    db 0x00, 0x50, 0xff, 0x76, 0x08, 0xe8, 0x15, 0xaf, 0x83, 0xc4, 0x06, 0x8b, 0xc8, 0x83, 0xec, 0x04
    db 0x8b, 0xc4, 0x8c, 0xd2, 0x8e, 0xc2, 0x8b, 0xf1, 0x8b, 0xf8, 0xa5, 0xa5, 0xe8, 0xd2, 0xae, 0x83
    db 0xc4, 0x04, 0x89, 0x46, 0xfe, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xd8, 0x58, 0x01
    db 0x87, 0x10, 0x5c, 0x8b, 0x87, 0x10, 0x5c, 0x3b, 0x87, 0x12, 0x5c, 0x7e, 0x08, 0x8b, 0x87, 0x12
    db 0x5c, 0x89, 0x87, 0x10, 0x5c, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x02, 0x00, 0x50, 0xff, 0x76, 0x08
    db 0xe8, 0xca, 0xae, 0x83, 0xc4, 0x06, 0x8b, 0xc8, 0x83, 0xec, 0x04, 0x8b, 0xc4, 0x8c, 0xd2, 0x8e
    db 0xc2, 0x8b, 0xf1, 0x8b, 0xf8, 0xa5, 0xa5, 0xe8, 0x87, 0xae, 0x83, 0xc4, 0x04, 0x89, 0x46, 0xfe
    db 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xd8, 0x58, 0x01, 0x87, 0x0c, 0x5c, 0x8b, 0x87
    db 0x0c, 0x5c, 0x3b, 0x87, 0x0e, 0x5c, 0x7e, 0x08, 0x8b, 0x87, 0x0e, 0x5c, 0x89, 0x87, 0x0c, 0x5c
    db 0xe9, 0x2c, 0x01, 0xc7, 0x46, 0xfe, 0x00, 0x00, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x0a, 0x00, 0x50
    db 0xff, 0x76, 0x08, 0xe8, 0x77, 0xae, 0x83, 0xc4, 0x06, 0x8b, 0xc8, 0x83, 0xec, 0x04, 0x8b, 0xc4
    db 0x8c, 0xd2, 0x8e, 0xc2, 0x8b, 0xf1, 0x8b, 0xf8, 0xa5, 0xa5, 0xe8, 0x34, 0xae, 0x83, 0xc4, 0x04
    db 0x89, 0x46, 0xfc, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xc8, 0x8b, 0x56, 0xfe, 0xd1
    db 0xe2, 0xd1, 0xe2, 0x03, 0xc2, 0x8b, 0xd8, 0x58, 0x01, 0x87, 0x1c, 0x5c, 0x8b, 0x87, 0x1c, 0x5c
    db 0x3b, 0x87, 0x1e, 0x5c, 0x7e, 0x08, 0x8b, 0x87, 0x1e, 0x5c, 0x89, 0x87, 0x1c, 0x5c, 0xff, 0x46
    db 0xfe, 0x8b, 0x46, 0xfe, 0x3d, 0x06, 0x00, 0x7c, 0x9f, 0xe9, 0xc3, 0x00, 0xc7, 0x46, 0xfe, 0x01
    db 0x00, 0xc7, 0x46, 0xfa, 0x0a, 0x00, 0xc7, 0x46, 0xf8, 0x00, 0x00, 0xb8, 0x48, 0x02, 0xf7, 0x6e
    db 0x04, 0x8b, 0xd8, 0x8a, 0x87, 0x86, 0x5d, 0x2a, 0xe4, 0x3b, 0x46, 0xfa, 0x7c, 0x03, 0xff, 0x46
    db 0xfe, 0x8b, 0x46, 0xfa, 0xd1, 0xe0, 0x05, 0x0a, 0x00, 0x89, 0x46, 0xfa, 0xff, 0x46, 0xf8, 0x8b
    db 0x46, 0xf8, 0x3d, 0x03, 0x00, 0x7c, 0xd4, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xff
    db 0x76, 0xfe, 0xe8, 0xc1, 0xec, 0x83, 0xc4, 0x06, 0xeb, 0x75, 0xff, 0x76, 0x08, 0xe8, 0x40, 0xf7
    db 0x59, 0xeb, 0x6c

@..local.l119:
    mov cx, 0x1a                     ; 0x2320
    call leaf_loc_4717               ; 0x2323

    db 0x0c, 0x00, 0x11, 0x00, 0x13, 0x00, 0x19, 0x00, 0x21, 0x00, 0x25, 0x00, 0x2e, 0x00, 0x2f, 0x00
    db 0x31, 0x00, 0x38, 0x00, 0x3d, 0x00, 0x3f, 0x00, 0x42, 0x00, 0x45, 0x00, 0x48, 0x00, 0x4b, 0x00
    db 0x4d, 0x00, 0x4e, 0x00, 0x52, 0x00, 0x54, 0x00, 0x58, 0x00, 0x5e, 0x00, 0x61, 0x00, 0x62, 0x00
    db 0x63, 0x00, 0xdd, 0x6d, 0x83, 0x6e, 0xdd, 0x6d, 0xc2, 0x6f, 0xb4, 0x6e, 0x9e, 0x6d, 0xab, 0x6d
    db 0xdb, 0x71, 0x74, 0x6d, 0x0c
    db 'o3p"m'
    db 0xeb, 0x6f, 0x91, 0x6f, 0xea, 0x71, 0xfb, 0x71, 0x5e, 0x73, 0x9b, 0x70, 0x4a, 0x6d, 0xb8, 0x6d
    db 0x9b, 0x70, 0x4b, 0x71, 0x0f, 0x72, 0xa7, 0x72, 0x10, 0x73, 0xd3, 0x73

@..local.l120:
    db 0xc3
api_idx_000c:
    mov ax, 0xfff4                   ; 0x238d
    call ds_dispatch_f40b            ; 0x2390
    mov bx, word [data_0e12]         ; 0x2393
    mov si, word [data_8f3e]         ; 0x2397
    mov al, byte [bx + si + 0xb40]   ; 0x239b
    sub ah, ah                       ; 0x239f
    mov word [bp - 0x0008], ax       ; 0x23a1
@..api_idx_000c.l1:
    push word [bp - 0x0008]          ; 0x23a4
    push word [data_8f3e]            ; 0x23a7
    push word [data_8f40]            ; 0x23ab
    push word [data_8f42]            ; 0x23af
    call api_idx_0002                ; 0x23b3
    add sp, byte 8                   ; 0x23b6
    mov word [bp - 0x0008], ax       ; 0x23b9
    cmp ax, strict word 0xffff       ; 0x23bc
    jne short @..api_idx_000c.l2     ; 0x23bf
    jmp near @..local.l125           ; 0x23c1
@..api_idx_000c.l2:
    mov bx, word [data_0e12]         ; 0x23c4
    mov si, ax                       ; 0x23c8
    cmp byte [bx + si + 0x5a0], 0x13 ; 0x23ca
    je short @..api_idx_000c.l3      ; 0x23cf
    jmp near @..local.l121           ; 0x23d1
@..api_idx_000c.l3:
    mov ax, 0x248                    ; 0x23d4
    imul word [bp + 0x4]             ; 0x23d7
    push ax                          ; 0x23da
    mov ax, 0x78                     ; 0x23db
    imul word [bp + 0x6]             ; 0x23de
    mov cx, ax                       ; 0x23e1
    pop ax                           ; 0x23e3
    add ax, cx                       ; 0x23e4
    push ax                          ; 0x23e6
    mov ax, 0xc                      ; 0x23e7
    imul word [bp + 0x8]             ; 0x23ea
    mov cx, ax                       ; 0x23ed
    pop ax                           ; 0x23ef
    add ax, cx                       ; 0x23f0
    mov bx, ax                       ; 0x23f2
    mov ax, word [bx + 0x5c34]       ; 0x23f4
    shl si, 1                        ; 0x23f8
    mov bx, word [data_0e12]         ; 0x23fa
    mov cx, word [bx + si]           ; 0x23fe
    cmp ax, cx                       ; 0x2400
    je short @..api_idx_000c.l4      ; 0x2402
    jmp near @..local.l121           ; 0x2404
@..api_idx_000c.l4:
    cmp word [bx + si + 0x1e0], byte 0 ; 0x2407
    je short @..api_idx_000c.l5      ; 0x240c
    mov ax, 1                        ; 0x240e
    mov cx, word [data_82ee]         ; 0x2411
    shl ax, cl                       ; 0x2415
    test word [bx + si + 0x1e0], ax  ; 0x2417
    jne short @..api_idx_000c.l5     ; 0x241b
    jmp near @..local.l121           ; 0x241d
@..api_idx_000c.l5:
    mov ax, 8                        ; 0x2420
    push ax                          ; 0x2423
    mov ax, 0                        ; 0x2424
    push ax                          ; 0x2427
    push word [bx + si + 0x3c0]      ; 0x2428
    call ds_dispatch_ed3a            ; 0x242c
    add sp, byte 6                   ; 0x242f
    mov word [bp - 0x000a], ax       ; 0x2432
    mov ax, 0                        ; 0x2435
    push ax                          ; 0x2438
    push word [bp - 0x000a]          ; 0x2439
    mov ax, word [data_830c]         ; 0x243c
    mov cx, 4                        ; 0x243f
    shl ax, cl                       ; 0x2442
    add ax, 0x8d14                   ; 0x2444
    push ax                          ; 0x2447
    call ds_dispatch_ec41            ; 0x2448
    add sp, byte 6                   ; 0x244b
    mov ax, 8                        ; 0x244e
    push ax                          ; 0x2451
    push ax                          ; 0x2452
    mov ax, word [bp - 0x0008]       ; 0x2453
    shl ax, 1                        ; 0x2456
    mov si, ax                       ; 0x2458
    mov bx, word [data_0e12]         ; 0x245a
    push word [bx + si + 0x3c0]      ; 0x245e
    call ds_dispatch_ed3a            ; 0x2462
    add sp, byte 6                   ; 0x2465
    mov word [bp - 0x000a], ax       ; 0x2468
    test ax, ax                      ; 0x246b
    je short @..api_idx_000c.l6      ; 0x246d
    mov ax, 1                        ; 0x246f
    push ax                          ; 0x2472
    push word [bp - 0x000a]          ; 0x2473
    mov ax, word [data_830c]         ; 0x2476
    mov cx, 4                        ; 0x2479
    shl ax, cl                       ; 0x247c
    add ax, 0x8d14                   ; 0x247e
    push ax                          ; 0x2481
    call ds_dispatch_ec41            ; 0x2482
    add sp, byte 6                   ; 0x2485
@..api_idx_000c.l6:
    mov bx, word [data_0e12]         ; 0x2488
    mov si, word [bp - 0x0008]       ; 0x248c
    cmp byte [bx + si + 0xa50], 0    ; 0x248f
    jbe short @..api_idx_000c.l9     ; 0x2494
    mov ax, 0xc6                     ; 0x2496
    push ax                          ; 0x2499
    mov ax, 0x109                    ; 0x249a
    push ax                          ; 0x249d
    mov ax, 0x8e                     ; 0x249e
    push ax                          ; 0x24a1
    mov ax, 0x36                     ; 0x24a2
    push ax                          ; 0x24a5
    call ds_dispatch_e8da            ; 0x24a6
    add sp, byte 8                   ; 0x24a9
    mov bx, word [data_0e12]         ; 0x24ac
    mov si, word [bp - 0x0008]       ; 0x24b0
    mov al, byte [bx + si + 0xa50]   ; 0x24b3
    sub ah, ah                       ; 0x24b7
    mov word [bp - 0x000c], ax       ; 0x24b9
    cmp ax, strict word 5            ; 0x24bc
    jl short @..api_idx_000c.l7      ; 0x24bf
    cmp ax, strict word 8            ; 0x24c1
    je short @..api_idx_000c.l7      ; 0x24c4
    cmp ax, strict word 9            ; 0x24c6
    jne short @..api_idx_000c.l8     ; 0x24c9
@..api_idx_000c.l7:
    push ax                          ; 0x24cb
    call ds_dispatch_b7e0            ; 0x24cc
    pop cx                           ; 0x24cf
    jmp short @..api_idx_000c.l9     ; 0x24d0
@..api_idx_000c.l8:
    push word [bp - 0x000c]          ; 0x24d2
    call ds_dispatch_d7aa            ; 0x24d5
    pop cx                           ; 0x24d8
    mov ax, 0x10                     ; 0x24d9
    push ax                          ; 0x24dc
    call ds_dispatch_b7e0            ; 0x24dd
    pop cx                           ; 0x24e0
    mov ax, 0x10                     ; 0x24e1
    push ax                          ; 0x24e4
    call ds_dispatch_d6c6            ; 0x24e5
    pop cx                           ; 0x24e8
    mov word [data_598e], 0xffff     ; 0x24e9
@..api_idx_000c.l9:
    mov ax, word [bp - 0x0008]       ; 0x24ef
    inc ax                           ; 0x24f2
    mov word [data_8d12], ax         ; 0x24f3
    mov ax, 1                        ; 0x24f6
    ret                              ; 0x24f9
@..local.l121:
    mov bx, word [data_0e12]         ; 0x24fa
    mov si, word [bp - 0x0008]       ; 0x24fe
    cmp byte [bx + si + 0x5a0], 7    ; 0x2501
    je short @..local.l122           ; 0x2506
    jmp near @..local.l124           ; 0x2508
@..local.l122:
    mov ax, data_0002                ; 0x250b
    push ax                          ; 0x250e
    mov ax, word [data_82ee]         ; 0x250f
    shl ax, 1                        ; 0x2512
    push ax                          ; 0x2514
    shl si, 1                        ; 0x2515
    push word [bx + si + 0x3c0]      ; 0x2517
    call ds_dispatch_ed3a            ; 0x251b
    add sp, byte 6                   ; 0x251e
    cmp ax, strict word 1            ; 0x2521
    je short @..local.l123           ; 0x2524
    mov ax, data_0002                ; 0x2526
    push ax                          ; 0x2529
    mov ax, word [data_82ee]         ; 0x252a
    shl ax, 1                        ; 0x252d
    push ax                          ; 0x252f
    mov ax, word [bp - 0x0008]       ; 0x2530
    shl ax, 1                        ; 0x2533
    mov si, ax                       ; 0x2535
    mov bx, word [data_0e12]         ; 0x2537
    push word [bx + si + 0x3c0]      ; 0x253b
    call ds_dispatch_ed3a            ; 0x253f
    add sp, byte 6                   ; 0x2542
    cmp ax, strict word 2            ; 0x2545
    jne short @..local.l124          ; 0x2548
@..local.l123:
    mov ax, word [bp - 0x0008]       ; 0x254a
    shl ax, 1                        ; 0x254d
    mov si, ax                       ; 0x254f
    mov bx, word [data_0e12]         ; 0x2551
    mov ax, word [bx + si + 0x1e0]   ; 0x2555
    mov word [bp - 0x0006], ax       ; 0x2559
    mov ax, 0x248                    ; 0x255c
    imul word [bp + 0x4]             ; 0x255f
    push ax                          ; 0x2562
    mov ax, 0x78                     ; 0x2563
    imul word [bp + 0x6]             ; 0x2566
    mov cx, ax                       ; 0x2569
    pop ax                           ; 0x256b
    add ax, cx                       ; 0x256c
    push ax                          ; 0x256e
    mov ax, 0xc                      ; 0x256f
    imul word [bp + 0x8]             ; 0x2572
    mov cx, ax                       ; 0x2575
    pop ax                           ; 0x2577
    add ax, cx                       ; 0x2578
    mov bx, ax                       ; 0x257a
    mov cx, word [bx + 0x5c34]       ; 0x257c
    mov ax, word [bp - 0x0006]       ; 0x2580
    cmp cx, ax                       ; 0x2583
    jne short @..local.l124          ; 0x2585
    push word [bp - 0x0008]          ; 0x2587
    call loc_04b7                    ; 0x258a
    pop cx                           ; 0x258d
    mov word [data_90b6], 0x841      ; 0x258e
    mov word [data_90b8], 0          ; 0x2594
    mov ax, 1                        ; 0x259a
    ret                              ; 0x259d
@..local.l124:
    inc word [bp - 0x0008]           ; 0x259e
    jmp near @..api_idx_000c.l1      ; 0x25a1
@..local.l125:
    mov ax, 0                        ; 0x25a4
    ret                              ; 0x25a7
api_idx_000c_2:
    mov ax, 0xfff4                   ; 0x25a8
    call ds_dispatch_f40b            ; 0x25ab
    mov word [bp - 0x0002], 0        ; 0x25ae
@..api_idx_000c_2.l1:
    mov ax, 0x14                     ; 0x25b3
    imul word [bp - 0x0002]          ; 0x25b6
    mov cx, word [bp - 0x0002]       ; 0x25b9
    shl cx, 1                        ; 0x25bc
    mov bx, cx                       ; 0x25be
    mov cx, word [bx - 0x7cf2]       ; 0x25c0
    shl cx, 1                        ; 0x25c4
    add ax, cx                       ; 0x25c6
    mov bx, ax                       ; 0x25c8
    mov al, byte [bx + 0x1d4]        ; 0x25ca
    mov byte [bp - 0x000c], al       ; 0x25ce
    mov byte [bp - 0x000b], 0        ; 0x25d1
    mov ax, 0                        ; 0x25d5
    push ax                          ; 0x25d8
    push ax                          ; 0x25d9
    lea ax, word [bp - 0x000c]       ; 0x25da
    push ax                          ; 0x25dd
    mov ax, 0                        ; 0x25de
    push ax                          ; 0x25e1
    mov ax, 0xc7                     ; 0x25e2
    push ax                          ; 0x25e5
    mov ax, 0                        ; 0x25e6
    push ax                          ; 0x25e9
    mov ax, 0x13f                    ; 0x25ea
    push ax                          ; 0x25ed
    mov ax, 0                        ; 0x25ee
    push ax                          ; 0x25f1
    mov ax, 0xc                      ; 0x25f2
    imul word [bp + 0x8]             ; 0x25f5
    mov cx, word [bp - 0x0002]       ; 0x25f8
    shl cx, 1                        ; 0x25fb
    add ax, cx                       ; 0x25fd
    mov bx, ax                       ; 0x25ff
    mov ax, word [bx + 0x1bc]        ; 0x2601
    add ax, word [bp + 0x6]          ; 0x2605
    push ax                          ; 0x2608
    mov ax, word [bx + 0x1a4]        ; 0x2609
    add ax, word [bp + 0x4]          ; 0x260d
    push ax                          ; 0x2610
    mov ax, data_0002                ; 0x2611
    push ax                          ; 0x2614
    call ds_dispatch_efd1            ; 0x2615
    add sp, byte 0x16                ; 0x2618
    inc word [bp - 0x0002]           ; 0x261b
    mov ax, word [bp - 0x0002]       ; 0x261e
    cmp ax, strict word 6            ; 0x2621
    jl short @..api_idx_000c_2.l1    ; 0x2624
    ret                              ; 0x2626
api_idx_0002_5:
    mov ax, 0xfffe                   ; 0x2627
    call ds_dispatch_f40b            ; 0x262a
    mov word [bp - 0x0002], 0        ; 0x262d
@..api_idx_0002_5.l1:
    cmp word [bp + 0x4], byte 0      ; 0x2632
    jl short @..api_idx_0002_5.l2    ; 0x2636
    mov ax, word [bp - 0x0002]       ; 0x2638
    cmp ax, word [bp + 0x4]          ; 0x263b
    jne short @..api_idx_0002_5.l3   ; 0x263e
@..api_idx_0002_5.l2:
    mov ax, word [bp - 0x0002]       ; 0x2640
    shl ax, 1                        ; 0x2643
    mov bx, ax                       ; 0x2645
    inc word [bx - 0x7cf2]           ; 0x2647
@..api_idx_0002_5.l3:
    mov ax, 0x14                     ; 0x264b
    imul word [bp - 0x0002]          ; 0x264e
    mov cx, word [bp - 0x0002]       ; 0x2651
    shl cx, 1                        ; 0x2654
    mov bx, cx                       ; 0x2656
    mov cx, word [bx - 0x7cf2]       ; 0x2658
    shl cx, 1                        ; 0x265c
    add ax, cx                       ; 0x265e
    mov bx, ax                       ; 0x2660
    cmp word [bx + 0x1d4], byte 0xff ; 0x2662
    jne short @..api_idx_0002_5.l4   ; 0x2667
    mov ax, word [bp - 0x0002]       ; 0x2669
    shl ax, 1                        ; 0x266c
    mov bx, ax                       ; 0x266e
    mov word [bx - 0x7cf2], 0        ; 0x2670
@..api_idx_0002_5.l4:
    inc word [bp - 0x0002]           ; 0x2676
    mov ax, word [bp - 0x0002]       ; 0x2679
    cmp ax, strict word 6            ; 0x267c
    jl short @..api_idx_0002_5.l1    ; 0x267f
    ret                              ; 0x2681
api_idx_0004_4:
    mov ax, 0xfffc                   ; 0x2682
    call ds_dispatch_f40b            ; 0x2685
    mov word [bp - 0x0004], 0        ; 0x2688
    mov word [bp - 0x0002], 0        ; 0x268d
@..api_idx_0004_4.l1:
    mov ax, 6                        ; 0x2692
    imul word [bp - 0x0002]          ; 0x2695
    mov bx, ax                       ; 0x2698
    mov al, byte [bx + 0x620]        ; 0x269a
    sub ah, ah                       ; 0x269e
    cmp ax, word [bp + 0x6]          ; 0x26a0
    jne short @..api_idx_0004_4.l2   ; 0x26a3
    push word [bp - 0x0002]          ; 0x26a5
    mov ax, 0x248                    ; 0x26a8
    imul word [bp + 0x4]             ; 0x26ab
    add ax, 0x5e12                   ; 0x26ae
    push ax                          ; 0x26b1
    call ds_dispatch_ec74            ; 0x26b2
    add sp, byte 4                   ; 0x26b5
    test ax, ax                      ; 0x26b8
    je short @..api_idx_0004_4.l2    ; 0x26ba
    mov ax, 0x14                     ; 0x26bc
    imul word [bp - 0x0004]          ; 0x26bf
    add ax, 0xe38                    ; 0x26c2
    push ax                          ; 0x26c5
    mov ax, word [bp - 0x0002]       ; 0x26c6
    add ax, 0xfa0                    ; 0x26c9
    push ax                          ; 0x26cc
    call ds_dispatch_b53b            ; 0x26cd
    add sp, byte 4                   ; 0x26d0
    mov ax, word [bp - 0x0002]       ; 0x26d3
    mov cx, word [bp - 0x0004]       ; 0x26d6
    shl cx, 1                        ; 0x26d9
    mov bx, cx                       ; 0x26db
    mov word [bx - 0x64f2], ax       ; 0x26dd
    inc word [bp - 0x0004]           ; 0x26e1
@..api_idx_0004_4.l2:
    inc word [bp - 0x0002]           ; 0x26e4
    mov ax, word [bp - 0x0002]       ; 0x26e7
    cmp ax, strict word 0x66         ; 0x26ea
    jl short @..api_idx_0004_4.l1    ; 0x26ed
    mov ax, word [bp - 0x0004]       ; 0x26ef
    ret                              ; 0x26f2
api_idx_000a_3:
    mov ax, 0xfff6                   ; 0x26f3
    call ds_dispatch_f40b            ; 0x26f6
    mov byte [bp - 0x000a], 1        ; 0x26f9
    mov byte [bp - 0x0009], 0        ; 0x26fd
    mov ax, 0                        ; 0x2701
    push ax                          ; 0x2704
    push ax                          ; 0x2705
    lea ax, word [bp - 0x000a]       ; 0x2706
    push ax                          ; 0x2709
    mov ax, 0                        ; 0x270a
    push ax                          ; 0x270d
    mov ax, 0xc7                     ; 0x270e
    push ax                          ; 0x2711
    mov ax, 0                        ; 0x2712
    push ax                          ; 0x2715
    mov ax, 0x13f                    ; 0x2716
    push ax                          ; 0x2719
    mov ax, 0                        ; 0x271a
    push ax                          ; 0x271d
    mov ax, 0x73                     ; 0x271e
    push ax                          ; 0x2721
    mov ax, 0x32                     ; 0x2722
    push ax                          ; 0x2725
    mov ax, 1                        ; 0x2726
    push ax                          ; 0x2729
    call ds_dispatch_efd1            ; 0x272a
    add sp, byte 0x16                ; 0x272d
    ret                              ; 0x2730
math_loc_2731:
    mov ax, 0                        ; 0x2731
    call ds_dispatch_f40b            ; 0x2734
    push word [bp + 0x6]             ; 0x2737
    mov ax, 0xa                      ; 0x273a
    imul word [bp + 0x8]             ; 0x273d
    add ax, word [bp + 0x4]          ; 0x2740
    dec ax                           ; 0x2743
    push ax                          ; 0x2744
    call ds_dispatch_e809            ; 0x2745
    add sp, byte 4                   ; 0x2748
    mov ax, 7                        ; 0x274b
    push ax                          ; 0x274e
    mov ax, 0                        ; 0x274f
    cmp word [bp + 0xa], byte 0      ; 0x2752
    je short @..math_loc_2731.l1     ; 0x2756
    mov ax, 1                        ; 0x2758
@..math_loc_2731.l1:
    add ax, strict word 0x10         ; 0x275b
    sub ah, ah                       ; 0x275e
    push ax                          ; 0x2760
    call ds_dispatch_e830            ; 0x2761
    add sp, byte 4                   ; 0x2764
    push word [bp + 0x6]             ; 0x2767
    mov ax, 0xa                      ; 0x276a
    imul word [bp + 0x8]             ; 0x276d
    add ax, word [bp + 0x4]          ; 0x2770
    push ax                          ; 0x2773
    call ds_dispatch_e809            ; 0x2774
    add sp, byte 4                   ; 0x2777
    mov ax, 0                        ; 0x277a
    push ax                          ; 0x277d
    push ax                          ; 0x277e
    call ds_dispatch_e823            ; 0x277f
    add sp, byte 4                   ; 0x2782
    mov ax, data_0002                ; 0x2785
    push ax                          ; 0x2788
    mov ax, word [bp + 0x8]          ; 0x2789
    inc ax                           ; 0x278c
    sub ah, ah                       ; 0x278d
    push ax                          ; 0x278f
    call ds_dispatch_e830            ; 0x2790
    add sp, byte 4                   ; 0x2793
    cmp word [bp + 0x8], byte 0      ; 0x2796
    jne short @..math_loc_2731.l2    ; 0x279a
    cmp word [bp + 0xa], byte 0      ; 0x279c
    jne short @..math_loc_2731.l2    ; 0x27a0
    mov ax, 0xc2                     ; 0x27a2
    push ax                          ; 0x27a5
    mov ax, word [bp + 0x6]          ; 0x27a6
    add ax, strict word 8            ; 0x27a9
    push ax                          ; 0x27ac
    mov ax, word [bp + 0x4]          ; 0x27ad
    dec ax                           ; 0x27b0
    push ax                          ; 0x27b1
    push word [bp + 0x6]             ; 0x27b2
    push ax                          ; 0x27b5
    call ds_dispatch_e901            ; 0x27b6
    add sp, byte 0x0a                ; 0x27b9
@..math_loc_2731.l2:
    ret                              ; 0x27bc
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
    jle short @..local.l126          ; 0x2819
    mov ax, word [bp + 0xa]          ; 0x281b
    cmp ax, word [bp + 0xc]          ; 0x281e
    jg short @..local.l126           ; 0x2821
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
    jmp short @..local.l127          ; 0x2842
@..local.l126:
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
@..local.l127:
    ret                              ; 0x285d
api_idx_000c_3:
    mov ax, 0xfff4                   ; 0x285e
    call ds_dispatch_f40b            ; 0x2861
    mov word [bp - 0x0002], 0        ; 0x2864
@..api_idx_000c_3.l1:
    lea ax, word [bp - 0x000c]       ; 0x2869
    push ax                          ; 0x286c
    mov ax, 0x248                    ; 0x286d
    imul word [bp + 0x4]             ; 0x2870
    mov cx, word [bp - 0x0002]       ; 0x2873
    shl cx, 1                        ; 0x2876
    shl cx, 1                        ; 0x2878
    add ax, cx                       ; 0x287a
    mov bx, ax                       ; 0x287c
    push word [bx + 0x5c1c]          ; 0x287e
    call ds_dispatch_b27d            ; 0x2882
    add sp, byte 4                   ; 0x2885
    mov ax, 0                        ; 0x2888
    push ax                          ; 0x288b
    mov ax, word [bp - 0x0002]       ; 0x288c
    shl ax, 1                        ; 0x288f
    shl ax, 1                        ; 0x2891
    mov bx, ax                       ; 0x2893
    db 0xff, 0xb7, 0x06, 0x00 ; push word [bx + 0x6]
    call ds_dispatch_e823            ; 0x2899
    add sp, byte 4                   ; 0x289c
    mov ax, word [bp - 0x0002]       ; 0x289f
    shl ax, 1                        ; 0x28a2
    shl ax, 1                        ; 0x28a4
    mov bx, ax                       ; 0x28a6
    push word [bx + 0x18e]           ; 0x28a8
    lea ax, word [bp - 0x000c]       ; 0x28ac
    push ax                          ; 0x28af
    call ds_dispatch_fa90            ; 0x28b0
    pop cx                           ; 0x28b3
    mov cx, 6                        ; 0x28b4
    imul cx                          ; 0x28b7
    mov cx, data_0002                ; 0x28b9
    cwd                              ; 0x28bc
    idiv cx                          ; 0x28bd
    mov cx, ax                       ; 0x28bf
    mov ax, word [bp - 0x0002]       ; 0x28c1
    shl ax, 1                        ; 0x28c4
    shl ax, 1                        ; 0x28c6
    mov bx, ax                       ; 0x28c8
    mov ax, word [bx + 0x18c]        ; 0x28ca
    add ax, strict word 9            ; 0x28ce
    sub ax, cx                       ; 0x28d1
    push ax                          ; 0x28d3
    call ds_dispatch_e809            ; 0x28d4
    add sp, byte 4                   ; 0x28d7
    mov ax, 0                        ; 0x28da
    push ax                          ; 0x28dd
    lea ax, word [bp - 0x000c]       ; 0x28de
    push ax                          ; 0x28e1
    call ds_dispatch_e84e            ; 0x28e2
    add sp, byte 4                   ; 0x28e5
    inc word [bp - 0x0002]           ; 0x28e8
    mov ax, word [bp - 0x0002]       ; 0x28eb
    cmp ax, strict word 6            ; 0x28ee
    jge short @..api_idx_000c_3.l2   ; 0x28f1
    jmp near @..api_idx_000c_3.l1    ; 0x28f3
@..api_idx_000c_3.l2:
    ret                              ; 0x28f6
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
    jg short @..local.l128           ; 0x2936
    jne short @..local.l129          ; 0x2938
    cmp cx, ax                       ; 0x293a
    jbe short @..local.l129          ; 0x293c
@..local.l128:
    jmp short @..local.l130          ; 0x293e
@..local.l129:
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
@..local.l130:
    ret                              ; 0x2987
api_idx_0044:
    mov ax, 0xffbc                   ; 0x2988
    call ds_dispatch_f40b            ; 0x298b
    mov word [bp - 0x0002], 0        ; 0x298e
@..api_idx_0044.l1:
    mov ax, word [bp - 0x0002]       ; 0x2993
    shl ax, 1                        ; 0x2996
    mov bx, ax                       ; 0x2998
    mov word [bx - 0x7cf2], 0        ; 0x299a
    inc word [bp - 0x0002]           ; 0x29a0
    mov ax, word [bp - 0x0002]       ; 0x29a3
    cmp ax, strict word 6            ; 0x29a6
    jl short @..api_idx_0044.l1      ; 0x29a9
    mov word [data_904e], 0xffff     ; 0x29ab
    mov word [bp - 0x0004], 0x32     ; 0x29b1
    mov word [bp - 0x0006], 0x73     ; 0x29b6
    mov word [bp - 0x0008], 0x10d    ; 0x29bb
    mov word [bp - 0x000a], 0xc5     ; 0x29c0
    mov word [bp - 0x000c], 0x95     ; 0x29c5
    mov word [bp - 0x0014], 0x16     ; 0x29ca
    mov ax, 0x909e                   ; 0x29cf
    push ax                          ; 0x29d2
    mov ax, word [bp - 0x000a]       ; 0x29d3
    inc ax                           ; 0x29d6
    push ax                          ; 0x29d7
    mov ax, word [bp - 0x0008]       ; 0x29d8
    inc ax                           ; 0x29db
    push ax                          ; 0x29dc
    mov ax, word [bp - 0x0006]       ; 0x29dd
    dec ax                           ; 0x29e0
    push ax                          ; 0x29e1
    mov ax, word [bp - 0x0004]       ; 0x29e2
    dec ax                           ; 0x29e5
    push ax                          ; 0x29e6
    call ds_dispatch_c283            ; 0x29e7
    add sp, byte 0x0a                ; 0x29ea
    mov word [bp - 0x003a], ax       ; 0x29ed
    push word [bp - 0x000a]          ; 0x29f0
    push word [bp - 0x0008]          ; 0x29f3
    push word [bp - 0x0006]          ; 0x29f6
    push word [bp - 0x0004]          ; 0x29f9
    call ds_dispatch_bc9a            ; 0x29fc
    add sp, byte 8                   ; 0x29ff
    push word [bp - 0x000a]          ; 0x2a02
    push word [bp - 0x0008]          ; 0x2a05
    push word [bp - 0x0006]          ; 0x2a08
    mov ax, 0x95                     ; 0x2a0b
    push ax                          ; 0x2a0e
    call ds_dispatch_bc9a            ; 0x2a0f
    add sp, byte 8                   ; 0x2a12
    call api_idx_000a_3              ; 0x2a15
    push word [bp + 0x4]             ; 0x2a18
    call api_idx_000c_3              ; 0x2a1b
    pop cx                           ; 0x2a1e
    mov ax, 1                        ; 0x2a1f
    push ax                          ; 0x2a22
    mov ax, 0x73                     ; 0x2a23
    push ax                          ; 0x2a26
    mov ax, 0x32                     ; 0x2a27
    push ax                          ; 0x2a2a
    call api_idx_000c_2              ; 0x2a2b
    add sp, byte 6                   ; 0x2a2e
    lea ax, word [bp - 0x0038]       ; 0x2a31
    push ax                          ; 0x2a34
    push word [bp + 0x6]             ; 0x2a35
    call ds_dispatch_b53b            ; 0x2a38
    add sp, byte 4                   ; 0x2a3b
    lea ax, word [bp - 0x0038]       ; 0x2a3e
    push ax                          ; 0x2a41
    push word [bp + 0x8]             ; 0x2a42
    mov ax, 1                        ; 0x2a45
    push ax                          ; 0x2a48
    mov ax, 8                        ; 0x2a49
    push ax                          ; 0x2a4c
    mov ax, word [bp - 0x0006]       ; 0x2a4d
    add ax, strict word 6            ; 0x2a50
    push ax                          ; 0x2a53
    mov ax, word [bp - 0x000c]       ; 0x2a54
    add ax, strict word 6            ; 0x2a57
    push ax                          ; 0x2a5a
    call ds_dispatch_c0c1            ; 0x2a5b
    add sp, byte 0x0c                ; 0x2a5e
    lea ax, word [bp - 0x0038]       ; 0x2a61
    push ax                          ; 0x2a64
    mov ax, word [bp + 0x6]          ; 0x2a65
    inc ax                           ; 0x2a68
    push ax                          ; 0x2a69
    call ds_dispatch_b53b            ; 0x2a6a
    add sp, byte 4                   ; 0x2a6d
    lea ax, word [bp - 0x0038]       ; 0x2a70
    push ax                          ; 0x2a73
    mov ax, 1                        ; 0x2a74
    push ax                          ; 0x2a77
    push ax                          ; 0x2a78
    mov ax, 8                        ; 0x2a79
    push ax                          ; 0x2a7c
    mov ax, word [bp - 0x0006]       ; 0x2a7d
    add ax, strict word 6            ; 0x2a80
    push ax                          ; 0x2a83
    mov ax, word [bp - 0x000c]       ; 0x2a84
    add ax, strict word 0x42         ; 0x2a87
    push ax                          ; 0x2a8a
    call ds_dispatch_c0c1            ; 0x2a8b
    add sp, byte 0x0c                ; 0x2a8e
    mov ax, word [bp - 0x0006]       ; 0x2a91
    add ax, strict word 0x14         ; 0x2a94
    push ax                          ; 0x2a97
    mov ax, word [bp - 0x000c]       ; 0x2a98
    add ax, strict word 0x48         ; 0x2a9b
    push ax                          ; 0x2a9e
    call ds_dispatch_e809            ; 0x2a9f
    add sp, byte 4                   ; 0x2aa2
    mov ax, 0                        ; 0x2aa5
    push ax                          ; 0x2aa8
    mov ax, 0xcd                     ; 0x2aa9
    push ax                          ; 0x2aac
    call ds_dispatch_e823            ; 0x2aad
    add sp, byte 4                   ; 0x2ab0
    mov ax, data_0002                ; 0x2ab3
    push ax                          ; 0x2ab6
    mov ax, 0xa                      ; 0x2ab7
    push ax                          ; 0x2aba
    call ds_dispatch_e830            ; 0x2abb
    add sp, byte 4                   ; 0x2abe
    mov word [bp - 0x003c], 0xffff   ; 0x2ac1
    mov word [bp - 0x003e], 0        ; 0x2ac6
    mov word [bp - 0x0040], 0        ; 0x2acb
    mov word [bp - 0x0002], 0        ; 0x2ad0
@..api_idx_0044.l2:
    mov ax, 0                        ; 0x2ad5
    mov cx, word [bp - 0x0002]       ; 0x2ad8
    cmp cx, word [bp - 0x003e]       ; 0x2adb
    jne short @..api_idx_0044.l3     ; 0x2ade
    mov ax, 1                        ; 0x2ae0
@..api_idx_0044.l3:
    push ax                          ; 0x2ae3
    push cx                          ; 0x2ae4
    mov ax, word [bp - 0x0006]       ; 0x2ae5
    add ax, strict word 0x14         ; 0x2ae8
    push ax                          ; 0x2aeb
    mov ax, word [bp - 0x000c]       ; 0x2aec
    add ax, strict word 0xc          ; 0x2aef
    push ax                          ; 0x2af2
    call math_loc_2731               ; 0x2af3
    add sp, byte 8                   ; 0x2af6
    inc word [bp - 0x0002]           ; 0x2af9
    mov ax, word [bp - 0x0002]       ; 0x2afc
    cmp ax, strict word 7            ; 0x2aff
    jl short @..api_idx_0044.l2      ; 0x2b02
    mov word [bp - 0x0042], 0        ; 0x2b04
    mov ax, 0                        ; 0x2b09
    push ax                          ; 0x2b0c
    push ax                          ; 0x2b0d
    push word [bp - 0x0042]          ; 0x2b0e
    mov ax, word [bp - 0x0006]       ; 0x2b11
    add ax, strict word 0x15         ; 0x2b14
    push ax                          ; 0x2b17
    mov ax, word [bp - 0x000c]       ; 0x2b18
    add ax, strict word 0x5e         ; 0x2b1b
    push ax                          ; 0x2b1e
    call loc_27bd                    ; 0x2b1f
    add sp, byte 0x0a                ; 0x2b22
    push word [bp - 0x0042]          ; 0x2b25
    push word [bp + 0x4]             ; 0x2b28
    call api_idx_0004_4              ; 0x2b2b
    add sp, byte 4                   ; 0x2b2e
    mov word [bp - 0x0044], ax       ; 0x2b31
    mov ax, 7                        ; 0x2b34
    cmp word [bp - 0x0044], byte 7   ; 0x2b37
    jge short @..api_idx_0044.l4     ; 0x2b3b
    mov ax, word [bp - 0x0044]       ; 0x2b3d
@..api_idx_0044.l4:
    mov word [bp - 0x0024], ax       ; 0x2b40
    mov word [bp - 0x0018], 0        ; 0x2b43
    mov word [bp - 0x0022], 0xffff   ; 0x2b48
    push ax                          ; 0x2b4d
    push word [bp - 0x0022]          ; 0x2b4e
    push word [bp - 0x0018]          ; 0x2b51
    mov ax, 7                        ; 0x2b54
    push ax                          ; 0x2b57
    mov ax, 0xf                      ; 0x2b58
    push ax                          ; 0x2b5b
    mov ax, word [bp - 0x0006]       ; 0x2b5c
    add ax, strict word 0x22         ; 0x2b5f
    push ax                          ; 0x2b62
    mov ax, word [bp - 0x000c]       ; 0x2b63
    add ax, strict word 6            ; 0x2b66
    push ax                          ; 0x2b69
    call ds_dispatch_bf97            ; 0x2b6a
    add sp, byte 0x0e                ; 0x2b6d
    mov word [bp - 0x0012], 0        ; 0x2b70
    push word [bp - 0x0012]          ; 0x2b75
    mov ax, 7                        ; 0x2b78
    push ax                          ; 0x2b7b
    mov ax, 8                        ; 0x2b7c
    push ax                          ; 0x2b7f
    mov ax, word [bp - 0x0006]       ; 0x2b80
    add ax, strict word 0x22         ; 0x2b83
    push ax                          ; 0x2b86
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
@..local.l131:
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
    jl short @..local.l131           ; 0x2ccc
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
    mov ax, math_loc_00a5            ; 0x2d22
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
    jge short @..local.l132          ; 0x2da1
    mov ax, word [bp - 0x0044]       ; 0x2da3
@..local.l132:
    mov word [bp - 0x0020], ax       ; 0x2da6
    mov word [bp - 0x0002], 0        ; 0x2da9
@..local.l133:
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
    jl short @..local.l133           ; 0x2df1
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
@..local.l134:
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
    je short @..local.l138           ; 0x2e5d
    mov ax, word [bp - 0x0022]       ; 0x2e5f
    cmp ax, word [bp - 0x0018]       ; 0x2e62
    jl short @..local.l135           ; 0x2e65
    inc word [bp - 0x0022]           ; 0x2e67
@..local.l135:
    mov ax, word [bp - 0x0022]       ; 0x2e6a
    cmp ax, strict word 0xffff       ; 0x2e6d
    je short @..local.l136           ; 0x2e70
    cmp ax, word [bp - 0x0018]       ; 0x2e72
    jl short @..local.l136           ; 0x2e75
    mov ax, word [bp - 0x0018]       ; 0x2e77
    add ax, word [bp - 0x0020]       ; 0x2e7a
    mov cx, ax                       ; 0x2e7d
    dec ax                           ; 0x2e7f
    mov cx, ax                       ; 0x2e80
    mov ax, word [bp - 0x0022]       ; 0x2e82
    cmp cx, ax                       ; 0x2e85
    jge short @..local.l137          ; 0x2e87
@..local.l136:
    mov ax, word [bp - 0x0018]       ; 0x2e89
    mov word [bp - 0x0022], ax       ; 0x2e8c
@..local.l137:
    mov word [data_5b3e], 1          ; 0x2e8f
    mov ax, word [bp - 0x0022]       ; 0x2e95
    sub ax, word [bp - 0x0018]       ; 0x2e98
    add ax, strict word 0x12         ; 0x2e9b
    mov word [bp - 0x001a], ax       ; 0x2e9e
@..local.l138:
    cmp word [data_5b3e], byte 1     ; 0x2ea1
    je short @..local.l139           ; 0x2ea6
    jmp near @..local.l163           ; 0x2ea8
@..local.l139:
    mov ax, word [bp - 0x001a]       ; 0x2eab
    jmp near @..local.l161           ; 0x2eae

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

@..local.l140:
    cmp word [bp - 0x001a], byte 5   ; 0x3207
    jge short @..local.l141          ; 0x320b
    jmp near @..local.l149           ; 0x320d
@..local.l141:
    cmp word [bp - 0x001a], byte 0x0b ; 0x3210
    jle short @..local.l142          ; 0x3214
    jmp near @..local.l149           ; 0x3216
@..local.l142:
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
    jge short @..local.l143          ; 0x325c
    jmp near @..local.l147           ; 0x325e
@..local.l143:
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
    jne short @..local.l144          ; 0x32ae
    mov ax, 0x3e7                    ; 0x32b0
    jmp short @..local.l146          ; 0x32b3
@..local.l144:
    mov ax, 0x248                    ; 0x32b5
    imul word [bp + 0x4]             ; 0x32b8
    mov cx, word [bp - 0x0042]       ; 0x32bb
    shl cx, 1                        ; 0x32be
    shl cx, 1                        ; 0x32c0
    add ax, cx                       ; 0x32c2
    mov bx, ax                       ; 0x32c4
    mov ax, word [bx + 0x5c1c]       ; 0x32c6
    cmp ax, word [bp - 0x0002]       ; 0x32ca
    jge short @..local.l145          ; 0x32cd
    jmp short @..local.l146          ; 0x32cf
@..local.l145:
    mov ax, word [bp - 0x0002]       ; 0x32d1
@..local.l146:
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
    jmp short @..local.l148          ; 0x3301
@..local.l147:
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
@..local.l148:
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
    jmp near @..local.l160           ; 0x3363
@..local.l149:
    cmp word [bp - 0x001a], byte 0x0c ; 0x3366
    jge short @..local.l150          ; 0x336a
    jmp near @..local.l154           ; 0x336c
@..local.l150:
    cmp word [bp - 0x001a], byte 0x11 ; 0x336f
    jle short @..local.l151          ; 0x3373
    jmp near @..local.l154           ; 0x3375
@..local.l151:
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
    jge short @..local.l152          ; 0x339a
    mov ax, word [bp - 0x0044]       ; 0x339c
@..local.l152:
    mov word [bp - 0x0024], ax       ; 0x339f
    mov ax, 7                        ; 0x33a2
    cmp word [bp - 0x0044], byte 7   ; 0x33a5
    jge short @..local.l153          ; 0x33a9
    mov ax, word [bp - 0x0044]       ; 0x33ab
@..local.l153:
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
    jmp near @..local.l160           ; 0x3495
@..local.l154:
    cmp word [bp - 0x001a], byte 0x12 ; 0x3498
    jge short @..local.l155          ; 0x349c
    jmp near @..local.l160           ; 0x349e
@..local.l155:
    mov ax, word [bp - 0x0020]       ; 0x34a1
    add ax, strict word 0x12         ; 0x34a4
    cmp ax, word [bp - 0x001a]       ; 0x34a7
    jg short @..local.l156           ; 0x34aa
    jmp near @..local.l160           ; 0x34ac
@..local.l156:
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
    jne short @..local.l157          ; 0x3538
    mov ax, 0x3e7                    ; 0x353a
    jmp short @..local.l159          ; 0x353d
@..local.l157:
    mov ax, 0x248                    ; 0x353f
    imul word [bp + 0x4]             ; 0x3542
    mov cx, word [bp - 0x0042]       ; 0x3545
    shl cx, 1                        ; 0x3548
    shl cx, 1                        ; 0x354a
    add ax, cx                       ; 0x354c
    mov bx, ax                       ; 0x354e
    mov ax, word [bx + 0x5c1c]       ; 0x3550
    cmp ax, word [bp - 0x0002]       ; 0x3554
    jge short @..local.l158          ; 0x3557
    jmp short @..local.l159          ; 0x3559
@..local.l158:
    mov ax, word [bp - 0x0002]       ; 0x355b
@..local.l159:
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
@..local.l160:
    jmp short @..local.l163          ; 0x35cf
    clc                              ; 0x35d1
    jle short loc_35f3               ; 0x35d2
    sbb byte [bx], 0x80              ; 0x35d4
    push si                          ; 0x35d7
    db 0x81, 0x03, 0x82
@..local.l161:
    cmp ax, strict word 5            ; 0x35db
    jae short @..local.l162          ; 0x35de
    xchg bx, ax                      ; 0x35e0
    shl bx, 1                        ; 0x35e1
    jmp [cs:bx - 0x79e8]             ; 0x35e3
@..local.l162:
    jmp near @..local.l140           ; 0x35e8
@..local.l163:
    cmp word [bp - 0x001c], byte 0   ; 0x35eb
    je short @..local.l164           ; 0x35ef
    jmp near @..local.l134           ; 0x35f1
@..local.l164:
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
api_idx_0008_2:
    mov ax, 0xfff8                   ; 0x362f
    call ds_dispatch_f40b            ; 0x3632
    mov word [bp - 0x0006], 0xffff   ; 0x3635
    mov word [bp - 0x0008], 0xffff   ; 0x363a
    mov ax, word [data_0e0e]         ; 0x363f
    mov word [bp - 0x0004], ax       ; 0x3642
    mov word [bp - 0x0002], 0        ; 0x3645
    jmp short @..local.l169          ; 0x364a
@..api_idx_0008_2.l1:
    mov bx, word [bp - 0x0004]       ; 0x364c
    mov al, byte [bx]                ; 0x364f
    sub ah, ah                       ; 0x3651
    cmp ax, 0xff                     ; 0x3653
    jne short @..local.l165          ; 0x3656
    mov ax, word [bp - 0x0002]       ; 0x3658
    ret                              ; 0x365b
@..local.l165:
    mov al, byte [bx + 0x1]          ; 0x365c
    sub ah, ah                       ; 0x365f
    test ax, 0x40                    ; 0x3661
    jne short @..local.l168          ; 0x3664
    cmp word [bp - 0x0006], byte 0xff ; 0x3666
    je short @..local.l166           ; 0x366a
    mov ax, 7                        ; 0x366c
    push ax                          ; 0x366f
    call ds_dispatch_b7a9            ; 0x3670
    pop cx                           ; 0x3673
    test ax, ax                      ; 0x3674
    jne short @..local.l168          ; 0x3676
@..local.l166:
    mov bx, word [bp - 0x0004]       ; 0x3678
    mov al, byte [bx]                ; 0x367b
    sub ah, ah                       ; 0x367d
    cmp ax, word [data_830c]         ; 0x367f
    jne short @..local.l167          ; 0x3683
    mov ax, word [bp - 0x0002]       ; 0x3685
    mov word [bp - 0x0008], ax       ; 0x3688
    jmp short @..local.l168          ; 0x368b
@..local.l167:
    mov ax, word [bp - 0x0002]       ; 0x368d
    mov word [bp - 0x0006], ax       ; 0x3690
@..local.l168:
    add word [bp - 0x0004], byte 8   ; 0x3693
    inc word [bp - 0x0002]           ; 0x3697
@..local.l169:
    mov ax, word [bp - 0x0002]       ; 0x369a
    cmp ax, word [data_5910]         ; 0x369d
    jl short @..api_idx_0008_2.l1    ; 0x36a1
    cmp word [bp + 0x4], byte 0      ; 0x36a3
    je short @..local.l171           ; 0x36a7
    cmp word [bp - 0x0006], byte 0xff ; 0x36a9
    jne short @..local.l170          ; 0x36ad
    mov ax, word [bp - 0x0008]       ; 0x36af
    ret                              ; 0x36b2
@..local.l170:
    mov ax, word [bp - 0x0006]       ; 0x36b3
    ret                              ; 0x36b6
@..local.l171:
    mov ax, 0xffff                   ; 0x36b7
    ret                              ; 0x36ba
api_idx_0004_5:
    mov ax, 0xfffc                   ; 0x36bb
    call ds_dispatch_f40b            ; 0x36be
    mov ax, 0                        ; 0x36c1
    push ax                          ; 0x36c4
    call api_idx_0008_2              ; 0x36c5
    pop cx                           ; 0x36c8
    mov word [bp - 0x0002], ax       ; 0x36c9
    cmp ax, strict word 0xffff       ; 0x36cc
    jne short @..api_idx_0004_5.l4   ; 0x36cf
    cmp word [data_5910], byte 0x7f  ; 0x36d1
    jl short @..api_idx_0004_5.l3    ; 0x36d6
    mov ax, 1                        ; 0x36d8
    push ax                          ; 0x36db
    call api_idx_0008_2              ; 0x36dc
    pop cx                           ; 0x36df
    mov word [bp - 0x0002], ax       ; 0x36e0
    cmp ax, strict word 0xffff       ; 0x36e3
    jne short @..api_idx_0004_5.l2   ; 0x36e6
@..api_idx_0004_5.l1:
    mov ax, 0                        ; 0x36e8
    push ax                          ; 0x36eb
    call ds_dispatch_b7e0            ; 0x36ec
    pop cx                           ; 0x36ef
    jmp short @..api_idx_0004_5.l1   ; 0x36f0
@..api_idx_0004_5.l2:
    jmp short @..api_idx_0004_5.l4   ; 0x36f2
@..api_idx_0004_5.l3:
    mov ax, word [data_5910]         ; 0x36f4
    mov word [bp - 0x0002], ax       ; 0x36f7
    inc word [data_5910]             ; 0x36fa
@..api_idx_0004_5.l4:
    mov cx, word [bp - 0x0002]       ; 0x36fe
    shl cx, 1                        ; 0x3701
    shl cx, 1                        ; 0x3703
    shl cx, 1                        ; 0x3705
    mov ax, word [data_0e0e]         ; 0x3707
    add ax, cx                       ; 0x370a
    mov word [bp - 0x0004], ax       ; 0x370c
    mov al, byte [data_830c]         ; 0x370f
    mov bx, word [bp - 0x0004]       ; 0x3712
    mov byte [bx], al                ; 0x3715
    mov bx, word [bp + 0x4]          ; 0x3717
    mov al, byte [bx + 0x7]          ; 0x371a
    mov bx, word [bp - 0x0004]       ; 0x371d
    mov byte [bx + 0x1], al          ; 0x3720
    mov ax, word [data_8f3e]         ; 0x3723
    xchg al, ah                      ; 0x3726
    sub al, al                       ; 0x3728
    mov dx, word [data_8f42]         ; 0x372a
    mov cx, 4                        ; 0x372e
    shl dx, cl                       ; 0x3731
    mov cx, dx                       ; 0x3733
    add ax, cx                       ; 0x3735
    add ax, word [data_8f40]         ; 0x3737
    mov bx, word [bp - 0x0004]       ; 0x373b
    mov word [bx + 0x2], ax          ; 0x373e
    mov bx, word [bp + 0x4]          ; 0x3741
    mov ax, word [bx]                ; 0x3744
    mov bx, word [bp - 0x0004]       ; 0x3746
    mov word [bx + 0x4], ax          ; 0x3749
    mov bx, word [bp + 0x4]          ; 0x374c
    mov al, byte [bx + 0x5]          ; 0x374f
    mov bx, word [bp - 0x0004]       ; 0x3752
    mov byte [bx + 0x7], al          ; 0x3755
    mov bx, word [bp + 0x4]          ; 0x3758
    mov al, byte [bx + 0x6]          ; 0x375b
    mov bx, word [bp - 0x0004]       ; 0x375e
    mov byte [bx + 0x6], al          ; 0x3761
    mov ax, 1                        ; 0x3764
    push ax                          ; 0x3767
    mov ax, word [data_8f3e]         ; 0x3768
    mov cx, 6                        ; 0x376b
    shl ax, cl                       ; 0x376e
    mov cx, word [data_8f40]         ; 0x3770
    shl cx, 1                        ; 0x3774
    shl cx, 1                        ; 0x3776
    shl cx, 1                        ; 0x3778
    add ax, cx                       ; 0x377a
    add ax, word [data_8f42]         ; 0x377c
    push ax                          ; 0x3780
    mov ax, 0x8bfe                   ; 0x3781
    push ax                          ; 0x3784
    call ds_dispatch_ec41            ; 0x3785
    add sp, byte 6                   ; 0x3788
    ret                              ; 0x378b
api_idx_0018:
    mov ax, 0xffe8                   ; 0x378c
    call ds_dispatch_f40b            ; 0x378f
    mov ax, word [bp + 0x6]          ; 0x3792
    imul word [bp + 0xe]             ; 0x3795
    add ax, word [bp + 0xa]          ; 0x3798
    add ax, strict word 0xb          ; 0x379b
    push ax                          ; 0x379e
    mov ax, 6                        ; 0x379f
    imul word [bp + 0xc]             ; 0x37a2
    add ax, word [bp + 0x8]          ; 0x37a5
    inc ax                           ; 0x37a8
    push ax                          ; 0x37a9
    mov ax, word [bp + 0x6]          ; 0x37aa
    imul word [bp + 0xe]             ; 0x37ad
    add ax, word [bp + 0xa]          ; 0x37b0
    dec ax                           ; 0x37b3
    push ax                          ; 0x37b4
    mov ax, word [bp + 0x8]          ; 0x37b5
    dec ax                           ; 0x37b8
    push ax                          ; 0x37b9
    call ds_dispatch_e928            ; 0x37ba
    add sp, byte 8                   ; 0x37bd
    mov word [bp - 0x0016], dx       ; 0x37c0
    mov word [bp - 0x0018], ax       ; 0x37c3
    lea ax, word [bp - 0x0014]       ; 0x37c6
    push ax                          ; 0x37c9
    push word [bp + 0x4]             ; 0x37ca
    call ds_dispatch_b53b            ; 0x37cd
    add sp, byte 4                   ; 0x37d0
    mov ax, 0                        ; 0x37d3
    push ax                          ; 0x37d6
    mov ax, word [bp + 0x6]          ; 0x37d7
    imul word [bp + 0xe]             ; 0x37da
    add ax, word [bp + 0xa]          ; 0x37dd
    add ax, strict word 8            ; 0x37e0
    push ax                          ; 0x37e3
    mov ax, 6                        ; 0x37e4
    imul word [bp + 0xc]             ; 0x37e7
    add ax, word [bp + 0x8]          ; 0x37ea
    push ax                          ; 0x37ed
    mov ax, word [bp + 0x6]          ; 0x37ee
    imul word [bp + 0xe]             ; 0x37f1
    add ax, word [bp + 0xa]          ; 0x37f4
    push ax                          ; 0x37f7
    push word [bp + 0x8]             ; 0x37f8
    call ds_dispatch_bce3            ; 0x37fb
    add sp, byte 0x0a                ; 0x37fe
    mov ax, word [bp + 0x6]          ; 0x3801
    imul word [bp + 0xe]             ; 0x3804
    add ax, word [bp + 0xa]          ; 0x3807
    inc ax                           ; 0x380a
    inc ax                           ; 0x380b
    push ax                          ; 0x380c
    lea ax, word [bp - 0x0014]       ; 0x380d
    push ax                          ; 0x3810
    call ds_dispatch_fa90            ; 0x3811
    pop cx                           ; 0x3814
    mov cx, ax                       ; 0x3815
    mov ax, word [bp + 0xc]          ; 0x3817
    sub ax, cx                       ; 0x381a
    mov cx, 6                        ; 0x381c
    imul cx                          ; 0x381f
    mov cx, data_0002                ; 0x3821
    cwd                              ; 0x3824
    idiv cx                          ; 0x3825
    add ax, word [bp + 0x8]          ; 0x3827
    inc ax                           ; 0x382a
    push ax                          ; 0x382b
    call ds_dispatch_e809            ; 0x382c
    add sp, byte 4                   ; 0x382f
    mov ax, 0xc0                     ; 0x3832
    push ax                          ; 0x3835
    mov ax, 0x1a                     ; 0x3836
    push ax                          ; 0x3839
    call ds_dispatch_e823            ; 0x383a
    add sp, byte 4                   ; 0x383d
    mov ax, 0                        ; 0x3840
    push ax                          ; 0x3843
    lea ax, word [bp - 0x0014]       ; 0x3844
    push ax                          ; 0x3847
    call ds_dispatch_e84e            ; 0x3848
    add sp, byte 4                   ; 0x384b
    mov ax, word [bp + 0x6]          ; 0x384e
    imul word [bp + 0xe]             ; 0x3851
    add ax, word [bp + 0xa]          ; 0x3854
    add ax, strict word 8            ; 0x3857
    push ax                          ; 0x385a
    mov ax, 6                        ; 0x385b
    imul word [bp + 0xc]             ; 0x385e
    add ax, word [bp + 0x8]          ; 0x3861
    push ax                          ; 0x3864
    mov ax, word [bp + 0x6]          ; 0x3865
    imul word [bp + 0xe]             ; 0x3868
    add ax, word [bp + 0xa]          ; 0x386b
    push ax                          ; 0x386e
    push word [bp + 0x8]             ; 0x386f
    call ds_dispatch_e8da            ; 0x3872
    add sp, byte 8                   ; 0x3875
    mov ax, 1                        ; 0x3878
    push ax                          ; 0x387b
    push word [bp - 0x0016]          ; 0x387c
    push word [bp - 0x0018]          ; 0x387f
    call ds_dispatch_e94f            ; 0x3882
    add sp, byte 6                   ; 0x3885
    ret                              ; 0x3888
api_idx_0004_6:
    mov ax, 0xfffc                   ; 0x3889
    call ds_dispatch_f40b            ; 0x388c
    mov word [bp - 0x0002], 0        ; 0x388f
    jmp near @..api_idx_0004_6.l8    ; 0x3894
@..api_idx_0004_6.l1:
    mov ax, word [bp + 0xc]          ; 0x3897
    add ax, word [bp - 0x0002]       ; 0x389a
    cmp ax, word [bp + 0xe]          ; 0x389d
    jne short @..api_idx_0004_6.l2   ; 0x38a0
    mov ax, 1                        ; 0x38a2
    push ax                          ; 0x38a5
    mov ax, 0xe                      ; 0x38a6
    imul word [bp - 0x0002]          ; 0x38a9
    add ax, word [bp + 0x6]          ; 0x38ac
    add ax, strict word 0xd          ; 0x38af
    push ax                          ; 0x38b2
    mov ax, 6                        ; 0x38b3
    imul word [bp + 0x8]             ; 0x38b6
    add ax, word [bp + 0x4]          ; 0x38b9
    inc ax                           ; 0x38bc
    inc ax                           ; 0x38bd
    push ax                          ; 0x38be
    mov ax, 0xe                      ; 0x38bf
    imul word [bp - 0x0002]          ; 0x38c2
    add ax, word [bp + 0x6]          ; 0x38c5
    inc ax                           ; 0x38c8
    push ax                          ; 0x38c9
    mov ax, word [bp + 0x4]          ; 0x38ca
    add ax, strict word 0x1c         ; 0x38cd
    push ax                          ; 0x38d0
    call ds_dispatch_e901            ; 0x38d1
    add sp, byte 0x0a                ; 0x38d4
    mov word [bp - 0x0004], 0        ; 0x38d7
    jmp short @..api_idx_0004_6.l3   ; 0x38dc
@..api_idx_0004_6.l2:
    mov word [bp - 0x0004], 0xb4     ; 0x38de
@..api_idx_0004_6.l3:
    mov ax, 0xe                      ; 0x38e3
    imul word [bp - 0x0002]          ; 0x38e6
    add ax, word [bp + 0x6]          ; 0x38e9
    inc ax                           ; 0x38ec
    push ax                          ; 0x38ed
    mov ax, word [bp + 0x4]          ; 0x38ee
    inc ax                           ; 0x38f1
    inc ax                           ; 0x38f2
    push ax                          ; 0x38f3
    call ds_dispatch_e809            ; 0x38f4
    add sp, byte 4                   ; 0x38f7
    mov ax, word [bp + 0xc]          ; 0x38fa
    add ax, word [bp - 0x0002]       ; 0x38fd
    shl ax, 1                        ; 0x3900
    mov bx, ax                       ; 0x3902
    cmp word [bx - 0x64a0], byte 0   ; 0x3904
    je short @..api_idx_0004_6.l4    ; 0x3909
    mov ax, 4                        ; 0x390b
    push ax                          ; 0x390e
    mov ax, 0x63                     ; 0x390f
    push ax                          ; 0x3912
    call ds_dispatch_e830            ; 0x3913
    add sp, byte 4                   ; 0x3916
@..api_idx_0004_6.l4:
    mov ax, 0xe                      ; 0x3919
    imul word [bp - 0x0002]          ; 0x391c
    add ax, word [bp + 0x6]          ; 0x391f
    inc ax                           ; 0x3922
    push ax                          ; 0x3923
    mov ax, word [bp + 0x4]          ; 0x3924
    add ax, strict word 0xf          ; 0x3927
    push ax                          ; 0x392a
    call ds_dispatch_e809            ; 0x392b
    add sp, byte 4                   ; 0x392e
    mov ax, 4                        ; 0x3931
    push ax                          ; 0x3934
    mov ax, word [bp + 0xc]          ; 0x3935
    add ax, word [bp - 0x0002]       ; 0x3938
    shl ax, 1                        ; 0x393b
    mov bx, ax                       ; 0x393d
    mov al, byte [bx - 0x6478]       ; 0x393f
    sub ah, ah                       ; 0x3943
    push ax                          ; 0x3945
    call ds_dispatch_e830            ; 0x3946
    add sp, byte 4                   ; 0x3949
    push word [bp - 0x0004]          ; 0x394c
    mov ax, 0xe                      ; 0x394f
    imul word [bp - 0x0002]          ; 0x3952
    add ax, word [bp + 0x6]          ; 0x3955
    inc ax                           ; 0x3958
    inc ax                           ; 0x3959
    push ax                          ; 0x395a
    mov ax, word [bp + 0x4]          ; 0x395b
    add ax, strict word 0x1d         ; 0x395e
    push ax                          ; 0x3961
    mov ax, word [bp + 0xc]          ; 0x3962
    add ax, word [bp - 0x0002]       ; 0x3965
    mov cx, 0x16                     ; 0x3968
    imul cx                          ; 0x396b
    add ax, 0x9bb0                   ; 0x396d
    push ax                          ; 0x3970
    call api_idx_002a                ; 0x3971
    add sp, byte 8                   ; 0x3974
    mov ax, word [bp + 0xc]          ; 0x3977
    add ax, word [bp - 0x0002]       ; 0x397a
    shl ax, 1                        ; 0x397d
    mov bx, ax                       ; 0x397f
    cmp word [bx - 0x6298], byte 0   ; 0x3981
    jle short @..api_idx_0004_6.l7   ; 0x3986
    mov ax, 0xe                      ; 0x3988
    imul word [bp - 0x0002]          ; 0x398b
    add ax, word [bp + 0x6]          ; 0x398e
    add ax, strict word 8            ; 0x3991
    push ax                          ; 0x3994
    mov ax, word [bp + 0x4]          ; 0x3995
    add ax, strict word 0x47         ; 0x3998
    push ax                          ; 0x399b
    call ds_dispatch_e809            ; 0x399c
    add sp, byte 4                   ; 0x399f
    mov ax, 0                        ; 0x39a2
    push ax                          ; 0x39a5
    mov ax, word [bp + 0xc]          ; 0x39a6
    add ax, word [bp - 0x0002]       ; 0x39a9
    cmp ax, word [bp + 0xe]          ; 0x39ac
    jne short @..api_idx_0004_6.l5   ; 0x39af
    mov ax, word [bp - 0x0004]       ; 0x39b1
    jmp short @..api_idx_0004_6.l6   ; 0x39b4
@..api_idx_0004_6.l5:
    mov ax, data_0002                ; 0x39b6
@..api_idx_0004_6.l6:
    push ax                          ; 0x39b9
    call ds_dispatch_e823            ; 0x39ba
    add sp, byte 4                   ; 0x39bd
    mov ax, 0                        ; 0x39c0
    push ax                          ; 0x39c3
    mov ax, 3                        ; 0x39c4
    push ax                          ; 0x39c7
    mov ax, word [bp + 0xc]          ; 0x39c8
    add ax, word [bp - 0x0002]       ; 0x39cb
    shl ax, 1                        ; 0x39ce
    mov bx, ax                       ; 0x39d0
    push word [bx - 0x6298]          ; 0x39d2
    call ds_dispatch_b2e7            ; 0x39d6
    add sp, byte 6                   ; 0x39d9
@..api_idx_0004_6.l7:
    inc word [bp - 0x0002]           ; 0x39dc
@..api_idx_0004_6.l8:
    mov ax, word [bp - 0x0002]       ; 0x39df
    cmp ax, word [bp + 0xa]          ; 0x39e2
    jge short @..api_idx_0004_6.l9   ; 0x39e5
    jmp near @..api_idx_0004_6.l1    ; 0x39e7
@..api_idx_0004_6.l9:
    ret                              ; 0x39ea
math_loc_39eb:
    mov ax, 0                        ; 0x39eb
    call ds_dispatch_f40b            ; 0x39ee
    mov ax, 6                        ; 0x39f1
    imul word [bp + 0xa]             ; 0x39f4
    add ax, word [bp + 0x6]          ; 0x39f7
    push ax                          ; 0x39fa
    mov ax, 6                        ; 0x39fb
    imul word [bp + 0x8]             ; 0x39fe
    add ax, word [bp + 0x4]          ; 0x3a01
    inc ax                           ; 0x3a04
    inc ax                           ; 0x3a05
    push ax                          ; 0x3a06
    push word [bp + 0x6]             ; 0x3a07
    push word [bp + 0x4]             ; 0x3a0a
    call ds_dispatch_bd98            ; 0x3a0d
    add sp, byte 8                   ; 0x3a10
    push word [bp + 0xe]             ; 0x3a13
    push word [bp + 0xc]             ; 0x3a16
    push word [bp + 0x10]            ; 0x3a19
    push word [bp + 0x8]             ; 0x3a1c
    push word [bp + 0x6]             ; 0x3a1f
    push word [bp + 0x4]             ; 0x3a22
    call api_idx_0004_6              ; 0x3a25
    add sp, byte 0x0c                ; 0x3a28
    ret                              ; 0x3a2b
api_idx_0038:
    mov ax, 0xffc8                   ; 0x3a2c
    call ds_dispatch_f40b            ; 0x3a2f
    mov word [data_904e], 0xffff     ; 0x3a32
    mov word [bp - 0x0004], 0x37     ; 0x3a38
    mov word [bp - 0x0006], 0x8f     ; 0x3a3d
    mov word [bp - 0x0008], 0x108    ; 0x3a42
    mov word [bp - 0x000a], 0xc5     ; 0x3a47
    mov word [bp - 0x0012], 0x16     ; 0x3a4c
    mov ax, 3                        ; 0x3a51
    cmp word [bp + 0xc], byte 3      ; 0x3a54
    jge short @..api_idx_0038.l1     ; 0x3a58
    mov ax, word [bp + 0xc]          ; 0x3a5a
@..api_idx_0038.l1:
    mov word [bp - 0x0022], ax       ; 0x3a5d
    mov ax, 0x90a4                   ; 0x3a60
    push ax                          ; 0x3a63
    mov ax, word [bp - 0x000a]       ; 0x3a64
    inc ax                           ; 0x3a67
    push ax                          ; 0x3a68
    mov ax, word [bp - 0x0008]       ; 0x3a69
    inc ax                           ; 0x3a6c
    push ax                          ; 0x3a6d
    mov ax, word [bp - 0x0006]       ; 0x3a6e
    dec ax                           ; 0x3a71
    push ax                          ; 0x3a72
    mov ax, word [bp - 0x0004]       ; 0x3a73
    dec ax                           ; 0x3a76
    push ax                          ; 0x3a77
    call ds_dispatch_c283            ; 0x3a78
    add sp, byte 0x0a                ; 0x3a7b
    mov word [bp - 0x0038], ax       ; 0x3a7e
    push word [bp - 0x000a]          ; 0x3a81
    push word [bp - 0x0008]          ; 0x3a84
    push word [bp - 0x0006]          ; 0x3a87
    push word [bp - 0x0004]          ; 0x3a8a
    call ds_dispatch_bc9a            ; 0x3a8d
    add sp, byte 8                   ; 0x3a90
    cmp word [bp + 0x6], byte 0      ; 0x3a93
    je short @..api_idx_0038.l2      ; 0x3a97
    lea ax, word [bp - 0x0036]       ; 0x3a99
    push ax                          ; 0x3a9c
    push word [bp + 0x4]             ; 0x3a9d
    call ds_dispatch_b53b            ; 0x3aa0
    add sp, byte 4                   ; 0x3aa3
    jmp short @..api_idx_0038.l3     ; 0x3aa6
@..api_idx_0038.l2:
    push word [bp + 0xe]             ; 0x3aa8
    lea ax, word [bp - 0x0036]       ; 0x3aab
    push ax                          ; 0x3aae
    call ds_dispatch_f364            ; 0x3aaf
    add sp, byte 4                   ; 0x3ab2
@..api_idx_0038.l3:
    lea ax, word [bp - 0x0036]       ; 0x3ab5
    push ax                          ; 0x3ab8
    push word [bp + 0x6]             ; 0x3ab9
    mov ax, 1                        ; 0x3abc
    push ax                          ; 0x3abf
    mov ax, 0xc                      ; 0x3ac0
    push ax                          ; 0x3ac3
    mov ax, word [bp - 0x0006]       ; 0x3ac4
    add ax, strict word 7            ; 0x3ac7
    push ax                          ; 0x3aca
    mov ax, word [bp - 0x0004]       ; 0x3acb
    add ax, strict word 8            ; 0x3ace
    push ax                          ; 0x3ad1
    call ds_dispatch_c0c1            ; 0x3ad2
    add sp, byte 0x0c                ; 0x3ad5
    lea ax, word [bp - 0x0036]       ; 0x3ad8
    push ax                          ; 0x3adb
    mov ax, word [bp + 0x4]          ; 0x3adc
    inc ax                           ; 0x3adf
    push ax                          ; 0x3ae0
    call ds_dispatch_b53b            ; 0x3ae1
    add sp, byte 4                   ; 0x3ae4
    lea ax, word [bp - 0x0036]       ; 0x3ae7
    push ax                          ; 0x3aea
    push word [bp + 0x8]             ; 0x3aeb
    mov ax, 1                        ; 0x3aee
    push ax                          ; 0x3af1
    mov ax, 0xc                      ; 0x3af2
    push ax                          ; 0x3af5
    mov ax, word [bp - 0x0006]       ; 0x3af6
    add ax, strict word 0x17         ; 0x3af9
    push ax                          ; 0x3afc
    mov ax, word [bp - 0x0004]       ; 0x3afd
    add ax, strict word 8            ; 0x3b00
    push ax                          ; 0x3b03
    call ds_dispatch_c0c1            ; 0x3b04
    add sp, byte 0x0c                ; 0x3b07
    lea ax, word [bp - 0x0036]       ; 0x3b0a
    push ax                          ; 0x3b0d
    mov ax, word [bp + 0x4]          ; 0x3b0e
    inc ax                           ; 0x3b11
    inc ax                           ; 0x3b12
    push ax                          ; 0x3b13
    call ds_dispatch_b53b            ; 0x3b14
    add sp, byte 4                   ; 0x3b17
    lea ax, word [bp - 0x0036]       ; 0x3b1a
    push ax                          ; 0x3b1d
    push word [bp + 0xa]             ; 0x3b1e
    mov ax, 1                        ; 0x3b21
    push ax                          ; 0x3b24
    mov ax, 0xc                      ; 0x3b25
    push ax                          ; 0x3b28
    mov ax, word [bp - 0x0006]       ; 0x3b29
    add ax, strict word 0x27         ; 0x3b2c
    push ax                          ; 0x3b2f
    mov ax, word [bp - 0x0004]       ; 0x3b30
    add ax, strict word 8            ; 0x3b33
    push ax                          ; 0x3b36
    call ds_dispatch_c0c1            ; 0x3b37
    add sp, byte 0x0c                ; 0x3b3a
    mov word [bp - 0x0016], 0        ; 0x3b3d
    mov word [bp - 0x0020], 0xffff   ; 0x3b42
    push word [bp - 0x0022]          ; 0x3b47
    push word [bp - 0x0020]          ; 0x3b4a
    push word [bp - 0x0016]          ; 0x3b4d
    mov ax, 7                        ; 0x3b50
    push ax                          ; 0x3b53
    mov ax, 0xf                      ; 0x3b54
    push ax                          ; 0x3b57
    mov ax, word [bp - 0x0006]       ; 0x3b58
    add ax, strict word 6            ; 0x3b5b
    push ax                          ; 0x3b5e
    mov ax, word [bp - 0x0004]       ; 0x3b5f
    add ax, strict word 0x5d         ; 0x3b62
    push ax                          ; 0x3b65
    call math_loc_39eb               ; 0x3b66
    add sp, byte 0x0e                ; 0x3b69
    mov word [bp - 0x0010], 0        ; 0x3b6c
    push word [bp - 0x0010]          ; 0x3b71
    mov ax, 7                        ; 0x3b74
    push ax                          ; 0x3b77
    mov ax, 8                        ; 0x3b78
    push ax                          ; 0x3b7b
    mov ax, word [bp - 0x0006]       ; 0x3b7c
    add ax, strict word 6            ; 0x3b7f
    push ax                          ; 0x3b82
    mov ax, word [bp - 0x0004]       ; 0x3b83
    add ax, 0xc1                     ; 0x3b86
    push ax                          ; 0x3b89
    call ds_dispatch_bfd8            ; 0x3b8a
    add sp, byte 0x0a                ; 0x3b8d
    mov ax, 0                        ; 0x3b90
    push ax                          ; 0x3b93
    push ax                          ; 0x3b94
    mov ax, word [bp - 0x0006]       ; 0x3b95
    add ax, word [bp - 0x0010]       ; 0x3b98
    add ax, strict word 0x12         ; 0x3b9b
    push ax                          ; 0x3b9e
    mov ax, word [bp - 0x0004]       ; 0x3b9f
    add ax, 0xc9                     ; 0x3ba2
    push ax                          ; 0x3ba5
    mov ax, word [bp - 0x0006]       ; 0x3ba6
    add ax, word [bp - 0x0010]       ; 0x3ba9
    add ax, strict word 0xe          ; 0x3bac
    push ax                          ; 0x3baf
    mov ax, word [bp - 0x0004]       ; 0x3bb0
    add ax, 0xc1                     ; 0x3bb3
    push ax                          ; 0x3bb6
    mov ax, 0                        ; 0x3bb7
    push ax                          ; 0x3bba
    call ds_dispatch_baa6            ; 0x3bbb
    add sp, byte 0x0e                ; 0x3bbe
    mov ax, 0                        ; 0x3bc1
    push ax                          ; 0x3bc4
    mov ax, 9                        ; 0x3bc5
    push ax                          ; 0x3bc8
    mov ax, word [bp - 0x0006]       ; 0x3bc9
    add ax, strict word 0xc          ; 0x3bcc
    push ax                          ; 0x3bcf
    mov ax, word [bp - 0x0004]       ; 0x3bd0
    add ax, 0xc9                     ; 0x3bd3
    push ax                          ; 0x3bd6
    mov ax, word [bp - 0x0006]       ; 0x3bd7
    add ax, strict word 6            ; 0x3bda
    push ax                          ; 0x3bdd
    mov ax, word [bp - 0x0004]       ; 0x3bde
    add ax, 0xc1                     ; 0x3be1
    push ax                          ; 0x3be4
    mov ax, 1                        ; 0x3be5
    push ax                          ; 0x3be8
    call ds_dispatch_baa6            ; 0x3be9
    add sp, byte 0x0e                ; 0x3bec
    mov ax, 0                        ; 0x3bef
    push ax                          ; 0x3bf2
    mov ax, 0xb                      ; 0x3bf3
    push ax                          ; 0x3bf6
    mov ax, word [bp - 0x0006]       ; 0x3bf7
    add ax, strict word 0x30         ; 0x3bfa
    push ax                          ; 0x3bfd
    mov ax, word [bp - 0x0004]       ; 0x3bfe
    add ax, 0xc9                     ; 0x3c01
    push ax                          ; 0x3c04
    mov ax, word [bp - 0x0006]       ; 0x3c05
    add ax, strict word 0x2a         ; 0x3c08
    push ax                          ; 0x3c0b
    mov ax, word [bp - 0x0004]       ; 0x3c0c
    add ax, 0xc1                     ; 0x3c0f
    push ax                          ; 0x3c12
    mov ax, data_0002                ; 0x3c13
    push ax                          ; 0x3c16
    call ds_dispatch_baa6            ; 0x3c17
    add sp, byte 0x0e                ; 0x3c1a
    mov ax, 0xd                      ; 0x3c1d
    push ax                          ; 0x3c20
    mov ax, 0x55                     ; 0x3c21
    push ax                          ; 0x3c24
    mov ax, word [bp - 0x0006]       ; 0x3c25
    add ax, strict word 0xf          ; 0x3c28
    push ax                          ; 0x3c2b
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
    jge short @..local.l172          ; 0x3cae
    mov ax, word [bp + 0xc]          ; 0x3cb0
@..local.l172:
    mov word [bp - 0x001e], ax       ; 0x3cb3
    mov word [bp - 0x0002], 0        ; 0x3cb6
    jmp short @..local.l174          ; 0x3cbb
@..local.l173:
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
@..local.l174:
    mov ax, word [bp - 0x0002]       ; 0x3cfa
    cmp ax, word [bp - 0x001e]       ; 0x3cfd
    jl short @..local.l173           ; 0x3d00
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
@..local.l175:
    mov ax, 0x59fe                   ; 0x3d3a
    push ax                          ; 0x3d3d
    call ds_dispatch_b90d            ; 0x3d3e
    pop cx                           ; 0x3d41
    dec ax                           ; 0x3d42
    mov word [bp - 0x0018], ax       ; 0x3d43
    cmp word [data_59fc], byte 0     ; 0x3d46
    je short @..local.l179           ; 0x3d4b
    mov ax, word [bp - 0x0020]       ; 0x3d4d
    cmp ax, word [bp - 0x0016]       ; 0x3d50
    jl short @..local.l176           ; 0x3d53
    inc word [bp - 0x0020]           ; 0x3d55
@..local.l176:
    mov ax, word [bp - 0x0020]       ; 0x3d58
    cmp ax, strict word 0xffff       ; 0x3d5b
    je short @..local.l177           ; 0x3d5e
    cmp ax, word [bp - 0x0016]       ; 0x3d60
    jl short @..local.l177           ; 0x3d63
    mov ax, word [bp - 0x0016]       ; 0x3d65
    add ax, word [bp - 0x001e]       ; 0x3d68
    mov cx, ax                       ; 0x3d6b
    dec ax                           ; 0x3d6d
    mov cx, ax                       ; 0x3d6e
    mov ax, word [bp - 0x0020]       ; 0x3d70
    cmp cx, ax                       ; 0x3d73
    jge short @..local.l178          ; 0x3d75
@..local.l177:
    mov ax, word [bp - 0x0016]       ; 0x3d77
    mov word [bp - 0x0020], ax       ; 0x3d7a
@..local.l178:
    mov word [data_5b3e], 1          ; 0x3d7d
    mov ax, word [bp - 0x0020]       ; 0x3d83
    sub ax, word [bp - 0x0016]       ; 0x3d86
    add ax, strict word 6            ; 0x3d89
    mov word [bp - 0x0018], ax       ; 0x3d8c
@..local.l179:
    cmp word [data_5b3e], byte 1     ; 0x3d8f
    je short @..local.l180           ; 0x3d94
    jmp near @..local.l184           ; 0x3d96
@..local.l180:
    mov ax, word [bp - 0x0018]       ; 0x3d99
    jmp near @..local.l182           ; 0x3d9c

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

@..local.l181:
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
    jmp short @..local.l184          ; 0x413f
    db 0xe6, 0x8d, 0x0c, 0x8f, 0x0c, 0x8f, 0x43, 0x90, 0x94, 0x90, 0xe5, 0x90
@..local.l182:
    cmp ax, strict word 6            ; 0x414d
    jae short @..local.l183          ; 0x4150
    xchg bx, ax                      ; 0x4152
    shl bx, 1                        ; 0x4153
    jmp [cs:bx - 0x6e78]             ; 0x4155
@..local.l183:
    jmp short @..local.l181          ; 0x415a
@..local.l184:
    cmp word [bp - 0x001a], byte 0   ; 0x415c
    je short @..local.l185           ; 0x4160
    jmp near @..local.l175           ; 0x4162
@..local.l185:
    mov ax, 1                        ; 0x4165
    push ax                          ; 0x4168
    push word [bp - 0x0038]          ; 0x4169
    call ds_dispatch_c459            ; 0x416c
    add sp, byte 4                   ; 0x416f
    mov ax, word [bp - 0x0020]       ; 0x4172
    mov word [data_904e], ax         ; 0x4175
    mov ax, word [data_9050]         ; 0x4178
    ret                              ; 0x417b
api_idx_0094:
    mov ax, 0xff6c                   ; 0x417c
    call ds_dispatch_f40b            ; 0x417f
    mov word [data_9b5e], 5          ; 0x4182
    mov word [bp - 0x0094], 0        ; 0x4188
    mov word [bp - 0x0050], 0        ; 0x418e
@..api_idx_0094.l1:
    mov word [bp - 0x0052], 0        ; 0x4193
@..api_idx_0094.l2:
    mov ax, 0x248                    ; 0x4198
    imul word [bp + 0x4]             ; 0x419b
    push ax                          ; 0x419e
    mov ax, 0x78                     ; 0x419f
    imul word [bp - 0x0050]          ; 0x41a2
    mov cx, ax                       ; 0x41a5
    pop ax                           ; 0x41a7
    add ax, cx                       ; 0x41a8
    push ax                          ; 0x41aa
    mov ax, 0xc                      ; 0x41ab
    imul word [bp - 0x0052]          ; 0x41ae
    mov cx, ax                       ; 0x41b1
    pop ax                           ; 0x41b3
    add ax, cx                       ; 0x41b4
    mov bx, ax                       ; 0x41b6
    cmp word [bx + 0x5c34], byte 0   ; 0x41b8
    jg short @..api_idx_0094.l3      ; 0x41bd
    jmp near @..api_idx_0094.l8      ; 0x41bf
@..api_idx_0094.l3:
    mov ax, 0                        ; 0x41c2
    push ax                          ; 0x41c5
    push word [bx + 0x5c34]          ; 0x41c6
    lea ax, word [bp - 0x004c]       ; 0x41ca
    push ax                          ; 0x41cd
    mov ax, 1                        ; 0x41ce
    push ax                          ; 0x41d1
    call ds_dispatch_b63c            ; 0x41d2
    add sp, byte 8                   ; 0x41d5
    mov ax, 0x248                    ; 0x41d8
    imul word [bp + 0x4]             ; 0x41db
    push ax                          ; 0x41de
    mov ax, 0x78                     ; 0x41df
    imul word [bp - 0x0050]          ; 0x41e2
    mov cx, ax                       ; 0x41e5
    pop ax                           ; 0x41e7
    add ax, cx                       ; 0x41e8
    push ax                          ; 0x41ea
    mov ax, 0xc                      ; 0x41eb
    imul word [bp - 0x0052]          ; 0x41ee
    mov cx, ax                       ; 0x41f1
    pop ax                           ; 0x41f3
    add ax, cx                       ; 0x41f4
    mov bx, ax                       ; 0x41f6
    mov al, byte [bx + 0x5c3b]       ; 0x41f8
    sub ah, ah                       ; 0x41fc
    test ax, 0x80                    ; 0x41fe
    je short @..api_idx_0094.l4      ; 0x4201
    lea ax, word [bp - 0x004c]       ; 0x4203
    push ax                          ; 0x4206
    mov ax, 0x16                     ; 0x4207
    imul word [bp - 0x0094]          ; 0x420a
    add ax, 0x9bb0                   ; 0x420e
    push ax                          ; 0x4211
    call ds_dispatch_f364            ; 0x4212
    add sp, byte 4                   ; 0x4215
    jmp short @..api_idx_0094.l5     ; 0x4218
@..api_idx_0094.l4:
    mov ax, 0x16                     ; 0x421a
    imul word [bp - 0x0094]          ; 0x421d
    add ax, 0x9bb0                   ; 0x4221
    push ax                          ; 0x4224
    mov al, byte [bp - 0x0013]       ; 0x4225
    sub ah, ah                       ; 0x4228
    add ax, 0x1770                   ; 0x422a
    push ax                          ; 0x422d
    call ds_dispatch_b53b            ; 0x422e
    add sp, byte 4                   ; 0x4231
@..api_idx_0094.l5:
    mov al, byte [bp - 0x0013]       ; 0x4234
    sub ah, ah                       ; 0x4237
    mov cx, word [bp - 0x0094]       ; 0x4239
    shl cx, 1                        ; 0x423d
    mov bx, cx                       ; 0x423f
    mov word [bx - 0x6478], ax       ; 0x4241
    mov ax, word [bp - 0x0050]       ; 0x4245
    mov word [bx - 0x64a0], ax       ; 0x4248
    mov ax, 0x248                    ; 0x424c
    imul word [bp + 0x4]             ; 0x424f
    push ax                          ; 0x4252
    mov ax, 0x78                     ; 0x4253
    imul word [bp - 0x0050]          ; 0x4256
    mov cx, ax                       ; 0x4259
    pop ax                           ; 0x425b
    add ax, cx                       ; 0x425c
    push ax                          ; 0x425e
    mov ax, 0xc                      ; 0x425f
    imul word [bp - 0x0052]          ; 0x4262
    mov cx, ax                       ; 0x4265
    pop ax                           ; 0x4267
    add ax, cx                       ; 0x4268
    mov bx, ax                       ; 0x426a
    mov al, byte [bx + 0x5c38]       ; 0x426c
    sub ah, ah                       ; 0x4270
    mov bx, ax                       ; 0x4272
    cmp byte [bx + 0x60e], 1         ; 0x4274
    jne short @..api_idx_0094.l6     ; 0x4279
    mov ax, 0x248                    ; 0x427b
    imul word [bp + 0x4]             ; 0x427e
    push ax                          ; 0x4281
    mov ax, 0x78                     ; 0x4282
    imul word [bp - 0x0050]          ; 0x4285
    mov cx, ax                       ; 0x4288
    pop ax                           ; 0x428a
    add ax, cx                       ; 0x428b
    push ax                          ; 0x428d
    mov ax, 0xc                      ; 0x428e
    imul word [bp - 0x0052]          ; 0x4291
    mov cx, ax                       ; 0x4294
    pop ax                           ; 0x4296
    add ax, cx                       ; 0x4297
    mov bx, ax                       ; 0x4299
    mov al, byte [bx + 0x5c3a]       ; 0x429b
    sub ah, ah                       ; 0x429f
    mov cx, word [bp - 0x0094]       ; 0x42a1
    shl cx, 1                        ; 0x42a5
    mov bx, cx                       ; 0x42a7
    mov word [bx - 0x6298], ax       ; 0x42a9
    jmp short @..api_idx_0094.l7     ; 0x42ad
@..api_idx_0094.l6:
    mov ax, word [bp - 0x0094]       ; 0x42af
    shl ax, 1                        ; 0x42b3
    mov bx, ax                       ; 0x42b5
    mov word [bx - 0x6298], 0        ; 0x42b7
@..api_idx_0094.l7:
    mov ax, word [bp - 0x0050]       ; 0x42bd
    xchg al, ah                      ; 0x42c0
    sub al, al                       ; 0x42c2
    add ax, word [bp - 0x0052]       ; 0x42c4
    mov cx, word [bp - 0x0094]       ; 0x42c7
    shl cx, 1                        ; 0x42cb
    mov bx, cx                       ; 0x42cd
    add bx, bp                       ; 0x42cf
    mov word [bx - 0x0092], ax       ; 0x42d1
    inc word [bp - 0x0094]           ; 0x42d5
@..api_idx_0094.l8:
    inc word [bp - 0x0052]           ; 0x42d9
    mov ax, word [bp - 0x0052]       ; 0x42dc
    cmp ax, strict word 0xa          ; 0x42df
    jge short @..api_idx_0094.l9     ; 0x42e2
    jmp near @..api_idx_0094.l2      ; 0x42e4
@..api_idx_0094.l9:
    inc word [bp - 0x0050]           ; 0x42e7
    mov ax, word [bp - 0x0050]       ; 0x42ea
    cmp ax, strict word 2            ; 0x42ed
    jge short @..api_idx_0094.l10    ; 0x42f0
    jmp near @..api_idx_0094.l1      ; 0x42f2
@..api_idx_0094.l10:
    cmp word [bp - 0x0094], byte 0   ; 0x42f5
    jne short @..local.l186          ; 0x42fa
    ret                              ; 0x42fc
@..local.l186:
    mov ax, 0x90aa                   ; 0x42fd
    push ax                          ; 0x4300
    push word [bp - 0x0094]          ; 0x4301
    mov ax, 1                        ; 0x4305
    push ax                          ; 0x4308
    push ax                          ; 0x4309
    push ax                          ; 0x430a
    mov ax, 0x7ee                    ; 0x430b
    push ax                          ; 0x430e
    call api_idx_0038                ; 0x430f
    add sp, byte 0x0c                ; 0x4312
    mov word [bp - 0x004e], ax       ; 0x4315
    mov ax, word [data_904e]         ; 0x4318
    mov word [bp - 0x0002], ax       ; 0x431b
    cmp word [bp - 0x004e], byte 2   ; 0x431e
    je short @..local.l187           ; 0x4322
    cmp ax, strict word 0xffff       ; 0x4324
    jne short @..local.l188          ; 0x4327
@..local.l187:
    mov ax, 0xc6                     ; 0x4329
    push ax                          ; 0x432c
    mov ax, 0x109                    ; 0x432d
    push ax                          ; 0x4330
    mov ax, 0x8e                     ; 0x4331
    push ax                          ; 0x4334
    mov ax, 0x36                     ; 0x4335
    push ax                          ; 0x4338
    call ds_dispatch_e8da            ; 0x4339
    add sp, byte 8                   ; 0x433c
    ret                              ; 0x433f
@..local.l188:
    mov ax, word [bp - 0x0002]       ; 0x4340
    shl ax, 1                        ; 0x4343
    mov bx, ax                       ; 0x4345
    add bx, bp                       ; 0x4347
    mov ax, word [bx - 0x0092]       ; 0x4349
    mov cx, 0x100                    ; 0x434d
    cwd                              ; 0x4350
    idiv cx                          ; 0x4351
    mov word [bp - 0x0050], ax       ; 0x4353
    mov word [bp - 0x0052], dx       ; 0x4356
    mov ax, 0x10                     ; 0x4359
    push ax                          ; 0x435c
    mov ax, 0xc                      ; 0x435d
    push ax                          ; 0x4360
    mov ax, 0x96                     ; 0x4361
    push ax                          ; 0x4364
    mov ax, 0x3f                     ; 0x4365
    push ax                          ; 0x4368
    push word [bp - 0x004e]          ; 0x4369
    mov ax, word [bp - 0x004e]       ; 0x436c
    add ax, 0x7ee                    ; 0x436f
    push ax                          ; 0x4372
    call api_idx_0018                ; 0x4373
    add sp, byte 0x0c                ; 0x4376
    mov ax, 0x248                    ; 0x4379
    imul word [bp + 0x4]             ; 0x437c
    push ax                          ; 0x437f
    mov ax, 0x78                     ; 0x4380
    imul word [bp - 0x0050]          ; 0x4383
    mov cx, ax                       ; 0x4386
    pop ax                           ; 0x4388
    add ax, cx                       ; 0x4389
    push ax                          ; 0x438b
    mov ax, 0xc                      ; 0x438c
    imul word [bp - 0x0052]          ; 0x438f
    mov cx, ax                       ; 0x4392
    pop ax                           ; 0x4394
    add ax, cx                       ; 0x4395
    mov bx, ax                       ; 0x4397
    mov ax, word [bx + 0x5c34]       ; 0x4399
    mov word [bp - 0x0004], ax       ; 0x439d
    cmp word [bp - 0x004e], byte 0   ; 0x43a0
    je short @..local.l189           ; 0x43a4
    jmp near @..local.l205           ; 0x43a6
@..local.l189:
    push word [bp - 0x0052]          ; 0x43a9
    push word [bp - 0x0050]          ; 0x43ac
    push word [bp + 0x4]             ; 0x43af
    call api_idx_000c                ; 0x43b2
    add sp, byte 6                   ; 0x43b5
    test ax, ax                      ; 0x43b8
    je short @..local.l190           ; 0x43ba
    jmp near @..local.l203           ; 0x43bc
@..local.l190:
    mov ax, 0                        ; 0x43bf
    push ax                          ; 0x43c2
    push word [bp - 0x0004]          ; 0x43c3
    lea ax, word [bp - 0x004c]       ; 0x43c6
    push ax                          ; 0x43c9
    mov ax, 1                        ; 0x43ca
    push ax                          ; 0x43cd
    call ds_dispatch_b63c            ; 0x43ce
    add sp, byte 8                   ; 0x43d1
    cmp word [bp - 0x002a], byte 0   ; 0x43d4
    jne short @..local.l191          ; 0x43d8
    jmp near @..local.l195           ; 0x43da
@..local.l191:
    mov ax, word [bp - 0x002a]       ; 0x43dd
    mov cx, 0x100                    ; 0x43e0
    cwd                              ; 0x43e3
    idiv cx                          ; 0x43e4
    mov word [bp - 0x0056], ax       ; 0x43e6
    mov word [bp - 0x0054], dx       ; 0x43e9
    mov ax, 6                        ; 0x43ec
    imul dx                          ; 0x43ef
    mov bx, ax                       ; 0x43f1
    cmp byte [bx + 0x624], 1         ; 0x43f3
    jne short @..local.l192          ; 0x43f8
    call ds_dispatch_ceb1            ; 0x43fa
    mov word [data_9d90], ax         ; 0x43fd
    cmp ax, strict word 0xffff       ; 0x4400
    jne short @..local.l192          ; 0x4403
    mov word [bp - 0x0054], 0xffff   ; 0x4405
@..local.l192:
    cmp word [bp - 0x0054], byte 0xff ; 0x440a
    je short @..local.l194           ; 0x440e
    push word [bp - 0x0052]          ; 0x4410
    push word [bp - 0x0050]          ; 0x4413
    push word [bp + 0x4]             ; 0x4416
    call ds_dispatch_ca27            ; 0x4419
    add sp, byte 6                   ; 0x441c
    cmp word [bp - 0x0054], byte 0x4d ; 0x441f
    jne short @..local.l193          ; 0x4423
    mov ax, 0xc6                     ; 0x4425
    push ax                          ; 0x4428
    mov ax, 0x109                    ; 0x4429
    push ax                          ; 0x442c
    mov ax, 0x8e                     ; 0x442d
    push ax                          ; 0x4430
    mov ax, 0x36                     ; 0x4431
    push ax                          ; 0x4434
    call ds_dispatch_e8da            ; 0x4435
    add sp, byte 8                   ; 0x4438
@..local.l193:
    push word [data_9d90]            ; 0x443b
    push word [bp - 0x0056]          ; 0x443f
    push word [bp - 0x0054]          ; 0x4442
    push word [bp + 0x4]             ; 0x4445
    call api_idx_0008                ; 0x4448
    add sp, byte 8                   ; 0x444b
@..local.l194:
    jmp near @..local.l202           ; 0x444e
@..local.l195:
    cmp byte [bp - 0x000d], 4        ; 0x4451
    je short @..local.l196           ; 0x4455
    jmp near @..local.l198           ; 0x4457
@..local.l196:
    mov ax, word [data_830c]         ; 0x445a
    cmp ax, word [bp - 0x002e]       ; 0x445d
    je short @..local.l197           ; 0x4460
    jmp near @..local.l198           ; 0x4462
@..local.l197:
    mov ax, 0                        ; 0x4465
    push ax                          ; 0x4468
    mov al, byte [bp - 0x002c]       ; 0x4469
    sub ah, ah                       ; 0x446c
    push ax                          ; 0x446e
    mov ax, word [bp - 0x002e]       ; 0x446f
    mov cx, 4                        ; 0x4472
    shl ax, cl                       ; 0x4475
    add ax, 0x8d14                   ; 0x4477
    push ax                          ; 0x447a
    call ds_dispatch_ec41            ; 0x447b
    add sp, byte 6                   ; 0x447e
    mov ax, 0                        ; 0x4481
    push ax                          ; 0x4484
    mov al, byte [bp - 0x002c]       ; 0x4485
    sub ah, ah                       ; 0x4488
    push ax                          ; 0x448a
    mov ax, word [bp - 0x002e]       ; 0x448b
    mov cx, 4                        ; 0x448e
    shl ax, cl                       ; 0x4491
    add ax, 0x5642                   ; 0x4493
    push ax                          ; 0x4496
    call ds_dispatch_ec41            ; 0x4497
    add sp, byte 6                   ; 0x449a
    mov ax, 1                        ; 0x449d
    push ax                          ; 0x44a0
    mov al, byte [bp - 0x002b]       ; 0x44a1
    sub ah, ah                       ; 0x44a4
    push ax                          ; 0x44a6
    mov ax, word [bp - 0x002e]       ; 0x44a7
    mov cx, 4                        ; 0x44aa
    shl ax, cl                       ; 0x44ad
    add ax, 0x8d14                   ; 0x44af
    push ax                          ; 0x44b2
    call ds_dispatch_ec41            ; 0x44b3
    add sp, byte 6                   ; 0x44b6
    mov ax, 1                        ; 0x44b9
    push ax                          ; 0x44bc
    mov al, byte [bp - 0x002b]       ; 0x44bd
    sub ah, ah                       ; 0x44c0
    push ax                          ; 0x44c2
    mov ax, word [bp - 0x002e]       ; 0x44c3
    mov cx, 4                        ; 0x44c6
    shl ax, cl                       ; 0x44c9
    add ax, 0x5642                   ; 0x44cb
    push ax                          ; 0x44ce
    call ds_dispatch_ec41            ; 0x44cf
    add sp, byte 6                   ; 0x44d2
    push word [bp - 0x0052]          ; 0x44d5
    push word [bp - 0x0050]          ; 0x44d8
    push word [bp + 0x4]             ; 0x44db
    call ds_dispatch_ca27            ; 0x44de
    add sp, byte 6                   ; 0x44e1
    jmp short @..local.l202          ; 0x44e4
@..local.l198:
    cmp byte [bp - 0x000d], 5        ; 0x44e6
    jne short @..local.l201          ; 0x44ea
    cmp word [data_830c], byte 8     ; 0x44ec
    jne short @..local.l199          ; 0x44f1
    mov word [data_8304], 1          ; 0x44f3
    jmp short @..local.l200          ; 0x44f9
@..local.l199:
    mov word [data_90b6], 0x807      ; 0x44fb
    mov word [data_90b8], 1          ; 0x4501
@..local.l200:
    jmp short @..local.l202          ; 0x4507
@..local.l201:
    mov word [data_90b6], 0x7fe      ; 0x4509
    mov word [data_90b8], 1          ; 0x450f
@..local.l202:
    jmp short @..local.l204          ; 0x4515
@..local.l203:
    mov ax, word [bp - 0x0004]       ; 0x4517
    cmp ax, 0x108                    ; 0x451a
    je short @..local.l204           ; 0x451d
    cmp ax, 0x109                    ; 0x451f
    je short @..local.l204           ; 0x4522
    cmp ax, 0x101                    ; 0x4524
    je short @..local.l204           ; 0x4527
    cmp ax, 0x103                    ; 0x4529
    je short @..local.l204           ; 0x452c
    push word [bp - 0x0052]          ; 0x452e
    push word [bp - 0x0050]          ; 0x4531
    push word [bp + 0x4]             ; 0x4534
    call ds_dispatch_ca27            ; 0x4537
    add sp, byte 6                   ; 0x453a
@..local.l204:
    jmp near @..local.l208           ; 0x453d
@..local.l205:
    cmp word [bp - 0x004e], byte 1   ; 0x4540
    jne short @..local.l208          ; 0x4544
    mov ax, 0x248                    ; 0x4546
    imul word [bp + 0x4]             ; 0x4549
    push ax                          ; 0x454c
    mov ax, 0x78                     ; 0x454d
    imul word [bp - 0x0050]          ; 0x4550
    mov cx, ax                       ; 0x4553
    pop ax                           ; 0x4555
    add ax, cx                       ; 0x4556
    push ax                          ; 0x4558
    mov ax, 0xc                      ; 0x4559
    imul word [bp - 0x0052]          ; 0x455c
    mov cx, ax                       ; 0x455f
    pop ax                           ; 0x4561
    add ax, cx                       ; 0x4562
    mov bx, ax                       ; 0x4564
    mov al, byte [bx + 0x5c3b]       ; 0x4566
    sub ah, ah                       ; 0x456a
    test ax, data_0002               ; 0x456c
    jne short @..local.l206          ; 0x456f
    cmp word [bp - 0x0004], strict word 0x229 ; 0x4571
    jne short @..local.l207          ; 0x4576
@..local.l206:
    mov ax, 0                        ; 0x4578
    push ax                          ; 0x457b
    call ds_dispatch_b7e0            ; 0x457c
    pop cx                           ; 0x457f
    jmp short @..local.l208          ; 0x4580
@..local.l207:
    mov ax, 0x248                    ; 0x4582
    imul word [bp + 0x4]             ; 0x4585
    push ax                          ; 0x4588
    mov ax, 0x78                     ; 0x4589
    imul word [bp - 0x0050]          ; 0x458c
    mov cx, ax                       ; 0x458f
    pop ax                           ; 0x4591
    add ax, cx                       ; 0x4592
    push ax                          ; 0x4594
    mov ax, 0xc                      ; 0x4595
    imul word [bp - 0x0052]          ; 0x4598
    mov cx, ax                       ; 0x459b
    pop ax                           ; 0x459d
    add ax, cx                       ; 0x459e
    add ax, 0x5c34                   ; 0x45a0
    push ax                          ; 0x45a3
    call api_idx_0004_5              ; 0x45a4
    pop cx                           ; 0x45a7
    push word [bp - 0x0052]          ; 0x45a8
    push word [bp - 0x0050]          ; 0x45ab
    push word [bp + 0x4]             ; 0x45ae
    call ds_dispatch_c9e8            ; 0x45b1
    add sp, byte 6                   ; 0x45b4
@..local.l208:
    mov ax, 0xc6                     ; 0x45b7
    push ax                          ; 0x45ba
    mov ax, 0x109                    ; 0x45bb
    push ax                          ; 0x45be
    mov ax, 0x8e                     ; 0x45bf
    push ax                          ; 0x45c2
    mov ax, 0x36                     ; 0x45c3
    push ax                          ; 0x45c6
    call ds_dispatch_e8da            ; 0x45c7
    add sp, byte 8                   ; 0x45ca
    cmp word [data_90b6], byte 0     ; 0x45cd
    jle short @..local.l209          ; 0x45d2
    push word [data_90b6]            ; 0x45d4
    call api_idx_0058                ; 0x45d8
    pop cx                           ; 0x45db
@..local.l209:
    ret                              ; 0x45dc
api_idx_0004_7:
    mov ax, 0xfffc                   ; 0x45dd
    call ds_dispatch_f40b            ; 0x45e0
    mov word [data_9b5e], 5          ; 0x45e3
    mov ax, 1                        ; 0x45e9
    push ax                          ; 0x45ec
    push ax                          ; 0x45ed
    mov ax, 0x7ea                    ; 0x45ee
    push ax                          ; 0x45f1
    push word [bp + 0x4]             ; 0x45f2
    call api_idx_0044                ; 0x45f5
    add sp, byte 8                   ; 0x45f8
    test ax, ax                      ; 0x45fb
    je short @..api_idx_0004_7.l1    ; 0x45fd
    jmp near @..api_idx_0004_7.l4    ; 0x45ff
@..api_idx_0004_7.l1:
    mov ax, word [data_904e]         ; 0x4602
    mov cx, 0x100                    ; 0x4605
    cwd                              ; 0x4608
    idiv cx                          ; 0x4609
    mov word [bp - 0x0004], ax       ; 0x460b
    mov word [bp - 0x0002], dx       ; 0x460e
    mov ax, 6                        ; 0x4611
    imul dx                          ; 0x4614
    mov bx, ax                       ; 0x4616
    cmp byte [bx + 0x624], 1         ; 0x4618
    jne short @..api_idx_0004_7.l2   ; 0x461d
    call ds_dispatch_ceb1            ; 0x461f
    mov word [data_9d90], ax         ; 0x4622
    cmp ax, strict word 0xffff       ; 0x4625
    jne short @..api_idx_0004_7.l2   ; 0x4628
@..api_idx_0004_7.l2:
    cmp word [bp - 0x0002], byte 0   ; 0x462a
    jge short @..api_idx_0004_7.l3   ; 0x462e
    jmp near @..api_idx_0004_7.l4    ; 0x4630
@..api_idx_0004_7.l3:
    mov ax, 6                        ; 0x4633
    imul word [bp - 0x0002]          ; 0x4636
    mov bx, ax                       ; 0x4639
    mov al, byte [bx + 0x622]        ; 0x463b
    sub ah, ah                       ; 0x463f
    imul word [bp - 0x0004]          ; 0x4641
    push ax                          ; 0x4644
    mov ax, 0x248                    ; 0x4645
    imul word [bp + 0x4]             ; 0x4648
    mov cx, ax                       ; 0x464b
    mov al, byte [bx + 0x620]        ; 0x464d
    sub ah, ah                       ; 0x4651
    mov dx, ax                       ; 0x4653
    shl ax, 1                        ; 0x4655
    shl ax, 1                        ; 0x4657
    mov dx, ax                       ; 0x4659
    add cx, ax                       ; 0x465b
    mov bx, cx                       ; 0x465d
    pop ax                           ; 0x465f
    sub word [bx + 0x5c1c], ax       ; 0x4660
    push word [data_9d90]            ; 0x4664
    push word [bp - 0x0004]          ; 0x4668
    push word [bp - 0x0002]          ; 0x466b
    push word [bp + 0x4]             ; 0x466e
    call api_idx_0008                ; 0x4671
    add sp, byte 8                   ; 0x4674
    push word [bp - 0x0004]          ; 0x4677
    call ds_dispatch_b7a9            ; 0x467a
    pop cx                           ; 0x467d
    push ax                          ; 0x467e
    mov ax, 6                        ; 0x467f
    imul word [bp - 0x0002]          ; 0x4682
    mov bx, ax                       ; 0x4685
    mov al, byte [bx + 0x621]        ; 0x4687
    sub ah, ah                       ; 0x468b
    mov cx, ax                       ; 0x468d
    pop ax                           ; 0x468f
    add ax, cx                       ; 0x4690
    add ax, word [bp - 0x0004]       ; 0x4692
    push ax                          ; 0x4695
    mov ax, 0x248                    ; 0x4696
    imul word [bp + 0x4]             ; 0x4699
    mov bx, ax                       ; 0x469c
    pop ax                           ; 0x469e
    sub word [bx + 0x5c10], ax       ; 0x469f
    cmp word [bx + 0x5c10], byte 0   ; 0x46a3
    jge short @..api_idx_0004_7.l4   ; 0x46a8
    mov word [bx + 0x5c10], 0        ; 0x46aa
    mov ax, 6                        ; 0x46b0
    push ax                          ; 0x46b3
    call ds_dispatch_b7a9            ; 0x46b4
    pop cx                           ; 0x46b7
    add ax, strict word 6            ; 0x46b8
    push ax                          ; 0x46bb
    mov ax, 0x248                    ; 0x46bc
    imul word [bp + 0x4]             ; 0x46bf
    mov bx, ax                       ; 0x46c2
    pop ax                           ; 0x46c4
    mov byte [bx + 0x5d5c], al       ; 0x46c5
@..api_idx_0004_7.l4:
    cmp word [data_90b6], byte 0     ; 0x46c9
    jle short @..api_idx_0004_7.l5   ; 0x46ce
    push word [data_90b6]            ; 0x46d0
    call api_idx_0058                ; 0x46d4
    pop cx                           ; 0x46d7
@..api_idx_0004_7.l5:
    ret                              ; 0x46d8

    db 0x8f, 0x06, 0xb4, 0x90, 0x59, 0x89, 0x26, 0xb0, 0x90, 0x89, 0x2e, 0xb2, 0x90, 0x89, 0x36, 0xac
    db 0x90, 0x89, 0x3e, 0xae, 0x90, 0xfc, 0xbf, 0xb6, 0x90, 0xb9, 0x94, 0x9d, 0x2b, 0xcf, 0xd1, 0xe9
    db 0x74, 0x04, 0x2b, 0xc0, 0xf3, 0xab, 0xe8, 0x0c, 0xb9, 0x8b, 0x2e, 0xb2, 0x90, 0x8b, 0x26, 0xb0
    db 0x90, 0x8b, 0x36, 0xac, 0x90, 0x8b, 0x3e, 0xae, 0x90, 0x51, 0xff, 0x26, 0xb4, 0x90

leaf_loc_4717:
    pop bx                           ; 0x4717
    push di                          ; 0x4718
    push es                          ; 0x4719
    mov di, cs                       ; 0x471a
    mov es, di                       ; 0x471c
    mov di, bx                       ; 0x471e
    mov bx, cx                       ; 0x4720
    shl bx, 1                        ; 0x4722
    cld                              ; 0x4724
    repne scasw                      ; 0x4725
    mov cx, word [es:bx + di - 0x0004] ; 0x4727
    pop es                           ; 0x472b
    pop di                           ; 0x472c
    jmp cx                           ; 0x472d

    db 0x00, 0x00, 0x2a, 0x2a, 0x2a, 0x00
    db 'V.$$$', 0
    db 'V.$$$', 0
    times 12 db 0

