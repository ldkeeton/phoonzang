%include "structs/structs.inc"
%include "structs/data_90bc.inc"
org 0
bits 16
%include "labels/vmele_foreign_labels.inc"

    ; header (8 bytes)
    db 0xf2, 0x00, 0x55, 0x50, 0x65, 0x37, 0x98, 0x90

data_0002 equ 0x0002
data_0e36 equ 0x0e36
data_5962 equ 0x5962
data_5963 equ 0x5963
data_5964 equ 0x5964
data_5988 equ 0x5988
data_598e equ 0x598e
data_5b6e equ 0x5b6e
data_69c8 equ 0x69c8
data_7abc equ 0x7abc
data_7b04 equ 0x7b04
data_82b6 equ 0x82b6
data_82e8 equ 0x82e8
data_82ee equ 0x82ee
data_82fa equ 0x82fa
data_82fc equ 0x82fc
data_830a equ 0x830a
data_830c equ 0x830c
data_8452 equ 0x8452
data_8454 equ 0x8454
data_8456 equ 0x8456
data_8458 equ 0x8458
data_845a equ 0x845a
data_845c equ 0x845c
data_845e equ 0x845e
data_8460 equ 0x8460
data_8466 equ 0x8466
data_8468 equ 0x8468
data_8482 equ 0x8482
data_8484 equ 0x8484
data_8492 equ 0x8492
data_849e equ 0x849e
data_84a0 equ 0x84a0
data_84a2 equ 0x84a2
data_84a4 equ 0x84a4
data_8d0a equ 0x8d0a
data_8d0c equ 0x8d0c
data_8d0e equ 0x8d0e
data_8d10 equ 0x8d10
data_8f20 equ 0x8f20
data_905a equ 0x905a
data_905e equ 0x905e
data_9060 equ 0x9060
data_9062 equ 0x9062
data_9064 equ 0x9064
data_9066 equ 0x9066
data_9068 equ 0x9068
data_906a equ 0x906a
data_906c equ 0x906c
data_908a equ 0x908a
data_908c equ 0x908c
data_908e equ 0x908e
data_9090 equ 0x9090
data_9092 equ 0x9092
data_9094 equ 0x9094
data_90b6 equ 0x90b6
data_90b8 equ 0x90b8
data_90ba equ 0x90ba
data_90bc equ 0x90bc

    db 0x1e, 0x00, 0x1a, 0x00, 0x57, 0x87
math_loc_000e:
    mov ax, 0                        ; 0x000e
    call ds_dispatch_f40b            ; 0x0011
    mov word [data_90b6], 5          ; 0x0014
    mov word [data_90b8], 0          ; 0x001a
    mov word [data_90ba], 0          ; 0x0020
    mov word [data_90bc], 0          ; 0x0026
    cmp word [data_830a], byte 0x0a  ; 0x002c
    jne short @..math_loc_000e.l1    ; 0x0031
    call loc_33df                    ; 0x0033
@..math_loc_000e.l1:
    cmp word [data_830a], byte 0x0e  ; 0x0036
    jne short @..math_loc_000e.l2    ; 0x003b
    call api_idx_0056                ; 0x003d
@..math_loc_000e.l2:
    cmp word [data_830a], byte 0x0b  ; 0x0040
    jne short @..math_loc_000e.l3    ; 0x0045
    call api_idx_0002_2              ; 0x0047
@..math_loc_000e.l3:
    mov ax, 0                        ; 0x004a
    ret                              ; 0x004d
api_idx_0008:
    mov ax, 0xfff8                   ; 0x004e
    call ds_dispatch_f40b            ; 0x0051
    push word [bp + 0x4]             ; 0x0054
    call ds_dispatch_ca85            ; 0x0057
    pop cx                           ; 0x005a
    test ax, ax                      ; 0x005b
    jne short @..api_idx_0008.l1     ; 0x005d
    jmp near @..api_idx_0008.l4      ; 0x005f
@..api_idx_0008.l1:
    mov ax, 0x2c                     ; 0x0062
    imul word [bp + 0x4]             ; 0x0065
    mov si, ax                       ; 0x0068
    mov bx, word [data_8482]         ; 0x006a
    cmp byte [bx + si + 0x2b], 1     ; 0x006e
    je short @..api_idx_0008.l2      ; 0x0072
    cmp byte [bx + si + 0x2b], 3     ; 0x0074
    je short @..api_idx_0008.l2      ; 0x0078
    jmp near @..api_idx_0008.l4      ; 0x007a
@..api_idx_0008.l2:
    mov ax, 0                        ; 0x007d
    push ax                          ; 0x0080
    push word [bp + 0x4]             ; 0x0081
    call ds_dispatch_cb3a            ; 0x0084
    add sp, byte 4                   ; 0x0087
    mov ax, word [bp + 0x4]          ; 0x008a
    mov cx, data_0002                ; 0x008d
    cwd                              ; 0x0090
    idiv cx                          ; 0x0091
    mov ax, dx                       ; 0x0093
    mov cx, 0xfc                     ; 0x0095
    imul cx                          ; 0x0098
    add ax, strict word 5            ; 0x009a
    mov word [bp - 0x0006], ax       ; 0x009d
    mov ax, word [bp + 0x4]          ; 0x00a0
    mov cx, data_0002                ; 0x00a3
    cwd                              ; 0x00a6
    idiv cx                          ; 0x00a7
    mov cx, 0x2d                     ; 0x00a9
    imul cx                          ; 0x00ac
    add ax, strict word 0x12         ; 0x00ae
    mov word [bp - 0x0008], ax       ; 0x00b1
    add ax, strict word 0x15         ; 0x00b4
    push ax                          ; 0x00b7
    mov ax, word [bp - 0x0006]       ; 0x00b8
    add ax, strict word 0x1c         ; 0x00bb
    push ax                          ; 0x00be
    call ds_dispatch_e809            ; 0x00bf
    add sp, byte 4                   ; 0x00c2
    mov ax, 6                        ; 0x00c5
    push ax                          ; 0x00c8
    mov ax, 0xb                      ; 0x00c9
    push ax                          ; 0x00cc
    call ds_dispatch_e830            ; 0x00cd
    add sp, byte 4                   ; 0x00d0
    cmp word [bp + 0x6], byte 0      ; 0x00d3
    je short @..api_idx_0008.l3      ; 0x00d7
    mov ax, word [bp - 0x0008]       ; 0x00d9
    add ax, strict word 0x2b         ; 0x00dc
    push ax                          ; 0x00df
    mov ax, word [bp - 0x0006]       ; 0x00e0
    add ax, strict word 0x3b         ; 0x00e3
    push ax                          ; 0x00e6
    push word [bp - 0x0008]          ; 0x00e7
    push word [bp - 0x0006]          ; 0x00ea
    call ds_dispatch_e8da            ; 0x00ed
    add sp, byte 8                   ; 0x00f0
@..api_idx_0008.l3:
    jmp short @..api_idx_0008.l5     ; 0x00f3
@..api_idx_0008.l4:
    push word [bp + 0x6]             ; 0x00f5
    push word [bp + 0x4]             ; 0x00f8
    call ds_dispatch_cb3a            ; 0x00fb
    add sp, byte 4                   ; 0x00fe
@..api_idx_0008.l5:
    ret                              ; 0x0101
api_idx_0004:
    mov ax, 0xfffc                   ; 0x0102
    call ds_dispatch_f40b            ; 0x0105
    call ds_dispatch_ec17            ; 0x0108
    mov ax, word [bp + 0x4]          ; 0x010b
    cwd                              ; 0x010e
    les bx, word [data_0002]         ; 0x010f
    mov cx, word [es:bx]             ; 0x0113
    mov bx, word [es:bx + 0x2]       ; 0x0116
    add ax, cx                       ; 0x011a
    adc dx, bx                       ; 0x011c
    mov word [bp - 0x0002], dx       ; 0x011e
    mov word [bp - 0x0004], ax       ; 0x0121
@..api_idx_0004.l1:
    les bx, word [data_0002]         ; 0x0124
    mov ax, word [es:bx]             ; 0x0128
    mov dx, word [es:bx + 0x2]       ; 0x012b
    cmp dx, word [bp - 0x0002]       ; 0x012f
    jg short @..api_idx_0004.l2      ; 0x0132
    jne short @..api_idx_0004.l3     ; 0x0134
    cmp ax, word [bp - 0x0004]       ; 0x0136
    jb short @..api_idx_0004.l3      ; 0x0139
@..api_idx_0004.l2:
    jmp short @..local.l3            ; 0x013b
@..api_idx_0004.l3:
    call ds_dispatch_baef            ; 0x013d
    test ax, ax                      ; 0x0140
    je short @..local.l1             ; 0x0142
    ret                              ; 0x0144
@..local.l1:
    mov ax, 1                        ; 0x0145
    push ax                          ; 0x0148
    call ds_dispatch_ea50            ; 0x0149
    pop cx                           ; 0x014c
    test ax, ax                      ; 0x014d
    je short @..local.l2             ; 0x014f
    mov ax, 1                        ; 0x0151
    push ax                          ; 0x0154
    call ds_dispatch_eb32            ; 0x0155
    pop cx                           ; 0x0158
    cmp al, 0xd                      ; 0x0159
    jne short @..local.l2            ; 0x015b
    ret                              ; 0x015d
@..local.l2:
    call api_idx_0006_2              ; 0x015e
    jmp short @..api_idx_0004.l1     ; 0x0161
@..local.l3:
    ret                              ; 0x0163
api_idx_0008_2:
    mov ax, 0xfff8                   ; 0x0164
    call ds_dispatch_f40b            ; 0x0167
    mov ax, 6                        ; 0x016a
    imul word [bp + 0x6]             ; 0x016d
    add ax, 0x98                     ; 0x0170
    push ax                          ; 0x0173
    mov ax, 0x13f                    ; 0x0174
    push ax                          ; 0x0177
    mov ax, 6                        ; 0x0178
    imul word [bp + 0x6]             ; 0x017b
    add ax, 0x92                     ; 0x017e
    push ax                          ; 0x0181
    mov ax, 0                        ; 0x0182
    push ax                          ; 0x0185
    call ds_dispatch_e8da            ; 0x0186
    add sp, byte 8                   ; 0x0189
    push word [bp + 0x4]             ; 0x018c
    call ds_dispatch_fa90            ; 0x018f
    pop cx                           ; 0x0192
    mov cx, 6                        ; 0x0193
    imul cx                          ; 0x0196
    mov cx, data_0002                ; 0x0198
    cwd                              ; 0x019b
    idiv cx                          ; 0x019c
    mov cx, ax                       ; 0x019e
    mov ax, 0xa1                     ; 0x01a0
    sub ax, cx                       ; 0x01a3
    mov word [bp - 0x0002], ax       ; 0x01a5
    push word [bp + 0x4]             ; 0x01a8
    call ds_dispatch_fa90            ; 0x01ab
    pop cx                           ; 0x01ae
    mov cx, 6                        ; 0x01af
    imul cx                          ; 0x01b2
    mov cx, ax                       ; 0x01b4
    mov ax, word [bp - 0x0002]       ; 0x01b6
    add cx, ax                       ; 0x01b9
    mov word [bp - 0x0004], cx       ; 0x01bb
    mov ax, 6                        ; 0x01be
    imul word [bp + 0x6]             ; 0x01c1
    add ax, 0x98                     ; 0x01c4
    push ax                          ; 0x01c7
    push cx                          ; 0x01c8
    mov ax, 6                        ; 0x01c9
    imul word [bp + 0x6]             ; 0x01cc
    add ax, 0x92                     ; 0x01cf
    push ax                          ; 0x01d2
    push word [bp - 0x0002]          ; 0x01d3
    call ds_dispatch_e928            ; 0x01d6
    add sp, byte 8                   ; 0x01d9
    mov word [bp - 0x0006], dx       ; 0x01dc
    mov word [bp - 0x0008], ax       ; 0x01df
    mov ax, 0                        ; 0x01e2
    push ax                          ; 0x01e5
    mov ax, 0x16                     ; 0x01e6
    push ax                          ; 0x01e9
    call ds_dispatch_e823            ; 0x01ea
    add sp, byte 4                   ; 0x01ed
    mov ax, 6                        ; 0x01f0
    imul word [bp + 0x6]             ; 0x01f3
    add ax, 0x92                     ; 0x01f6
    push ax                          ; 0x01f9
    push word [bp - 0x0002]          ; 0x01fa
    call ds_dispatch_e809            ; 0x01fd
    add sp, byte 4                   ; 0x0200
    mov ax, 0                        ; 0x0203
    push ax                          ; 0x0206
    push word [bp + 0x4]             ; 0x0207
    call ds_dispatch_e84e            ; 0x020a
    add sp, byte 4                   ; 0x020d
    mov ax, 6                        ; 0x0210
    imul word [bp + 0x6]             ; 0x0213
    add ax, 0x98                     ; 0x0216
    push ax                          ; 0x0219
    push word [bp - 0x0004]          ; 0x021a
    mov ax, 6                        ; 0x021d
    imul word [bp + 0x6]             ; 0x0220
    add ax, 0x92                     ; 0x0223
    push ax                          ; 0x0226
    push word [bp - 0x0002]          ; 0x0227
    call ds_dispatch_e8da            ; 0x022a
    add sp, byte 8                   ; 0x022d
    mov ax, 1                        ; 0x0230
    push ax                          ; 0x0233
    push word [bp - 0x0006]          ; 0x0234
    push word [bp - 0x0008]          ; 0x0237
    call ds_dispatch_e94f            ; 0x023a
    add sp, byte 6                   ; 0x023d
    call ds_dispatch_ec17            ; 0x0240
    ret                              ; 0x0243
api_idx_000a:
    mov ax, 0xfff6                   ; 0x0244
    call ds_dispatch_f40b            ; 0x0247
    mov ax, 0                        ; 0x024a
    push ax                          ; 0x024d
    push word [data_8d10]            ; 0x024e
    push word [data_8d0e]            ; 0x0252
    call ds_dispatch_e94f            ; 0x0256
    add sp, byte 6                   ; 0x0259
    mov ax, 0                        ; 0x025c
    push ax                          ; 0x025f
    push word [data_8d0c]            ; 0x0260
    push word [data_8d0a]            ; 0x0264
    call ds_dispatch_e94f            ; 0x0268
    add sp, byte 6                   ; 0x026b
    mov byte [bp - 0x000a], 1        ; 0x026e
    mov byte [bp - 0x0009], 0        ; 0x0272
    mov ax, 0                        ; 0x0276
    push ax                          ; 0x0279
    push ax                          ; 0x027a
    lea ax, word [bp - 0x000a]       ; 0x027b
    push ax                          ; 0x027e
    mov ax, 0                        ; 0x027f
    push ax                          ; 0x0282
    mov ax, 0xc7                     ; 0x0283
    push ax                          ; 0x0286
    mov ax, 0                        ; 0x0287
    push ax                          ; 0x028a
    mov ax, 0x13f                    ; 0x028b
    push ax                          ; 0x028e
    mov ax, 0                        ; 0x028f
    push ax                          ; 0x0292
    mov ax, 0x9a                     ; 0x0293
    push ax                          ; 0x0296
    mov ax, 0x37                     ; 0x0297
    push ax                          ; 0x029a
    mov ax, math_loc_000e            ; 0x029b
    push ax                          ; 0x029e
    call ds_dispatch_efd1            ; 0x029f
    add sp, byte 0x16                ; 0x02a2
    cmp word [bp + 0x4], byte 0      ; 0x02a5
    je short @..api_idx_000a.l1      ; 0x02a9
    mov ax, 0xc2                     ; 0x02ab
    push ax                          ; 0x02ae
    mov ax, 0x13a                    ; 0x02af
    push ax                          ; 0x02b2
    mov ax, 0x93                     ; 0x02b3
    push ax                          ; 0x02b6
    mov ax, 8                        ; 0x02b7
    push ax                          ; 0x02ba
    call ds_dispatch_e8da            ; 0x02bb
    add sp, byte 8                   ; 0x02be
@..api_idx_000a.l1:
    ret                              ; 0x02c1
api_idx_0004_2:
    mov ax, 0xfffc                   ; 0x02c2
    call ds_dispatch_f40b            ; 0x02c5
    mov word [bp - 0x0004], 0x20     ; 0x02c8
    mov word [bp - 0x0002], 0        ; 0x02cd
    jmp short @..api_idx_0004_2.l3   ; 0x02d2
@..api_idx_0004_2.l1:
    cmp word [bp - 0x0004], byte 0x20 ; 0x02d4
    je short @..api_idx_0004_2.l2    ; 0x02d8
    mov bx, word [bp + 0x4]          ; 0x02da
    mov si, word [bp - 0x0002]       ; 0x02dd
    cmp byte [bx + si], 0x41         ; 0x02e0
    jb short @..api_idx_0004_2.l2    ; 0x02e3
    cmp byte [bx + si], 0x5a         ; 0x02e5
    ja short @..api_idx_0004_2.l2    ; 0x02e8
    add byte [bx + si], 0x20         ; 0x02ea
@..api_idx_0004_2.l2:
    mov bx, word [bp + 0x4]          ; 0x02ed
    mov si, word [bp - 0x0002]       ; 0x02f0
    mov al, byte [bx + si]           ; 0x02f3
    sub ah, ah                       ; 0x02f5
    mov word [bp - 0x0004], ax       ; 0x02f7
    inc word [bp - 0x0002]           ; 0x02fa
@..api_idx_0004_2.l3:
    push word [bp + 0x4]             ; 0x02fd
    call ds_dispatch_fa90            ; 0x0300
    pop cx                           ; 0x0303
    cmp ax, word [bp - 0x0002]       ; 0x0304
    jg short @..api_idx_0004_2.l1    ; 0x0307
    ret                              ; 0x0309
api_idx_000c:
    mov ax, 0xfff4                   ; 0x030a
    call ds_dispatch_f40b            ; 0x030d
    mov ax, 1                        ; 0x0310
    push ax                          ; 0x0313
    call api_idx_000a                ; 0x0314
    pop cx                           ; 0x0317
    mov ax, data_0002                ; 0x0318
    push ax                          ; 0x031b
    push word [bp + 0x4]             ; 0x031c
    call ds_dispatch_e883            ; 0x031f
    add sp, byte 4                   ; 0x0322
    mov word [bp - 0x0006], ax       ; 0x0325
    inc ax                           ; 0x0328
    mov cx, data_0002                ; 0x0329
    cwd                              ; 0x032c
    idiv cx                          ; 0x032d
    mov cx, ax                       ; 0x032f
    mov ax, 0xa0                     ; 0x0331
    sub ax, cx                       ; 0x0334
    mov word [bp - 0x0002], ax       ; 0x0336
    add ax, word [bp - 0x0006]       ; 0x0339
    mov word [bp - 0x0004], ax       ; 0x033c
    mov ax, 0                        ; 0x033f
    push ax                          ; 0x0342
    mov ax, 0x55                     ; 0x0343
    push ax                          ; 0x0346
    call ds_dispatch_e823            ; 0x0347
    add sp, byte 4                   ; 0x034a
    mov ax, 0xa4                     ; 0x034d
    push ax                          ; 0x0350
    push word [bp - 0x0002]          ; 0x0351
    call ds_dispatch_e809            ; 0x0354
    add sp, byte 4                   ; 0x0357
    mov ax, data_0002                ; 0x035a
    push ax                          ; 0x035d
    push word [bp + 0x4]             ; 0x035e
    call ds_dispatch_e84e            ; 0x0361
    add sp, byte 4                   ; 0x0364
    mov ax, word [data_598e]         ; 0x0367
    mov word [bp - 0x000c], ax       ; 0x036a
    push word [bp + 0x6]             ; 0x036d
    call ds_dispatch_d7aa            ; 0x0370
    pop cx                           ; 0x0373
    mov ax, 0xb0                     ; 0x0374
    push ax                          ; 0x0377
    push word [bp - 0x0004]          ; 0x0378
    mov ax, 0xa4                     ; 0x037b
    push ax                          ; 0x037e
    push word [bp - 0x0002]          ; 0x037f
    call ds_dispatch_e8da            ; 0x0382
    add sp, byte 8                   ; 0x0385
    mov ax, 0x10                     ; 0x0388
    push ax                          ; 0x038b
    call ds_dispatch_b7e0            ; 0x038c
    pop cx                           ; 0x038f
    cmp word [bp - 0x000c], byte 0xff ; 0x0390
    je short @..api_idx_000c.l1      ; 0x0394
    push word [bp - 0x000c]          ; 0x0396
    call ds_dispatch_d7aa            ; 0x0399
    pop cx                           ; 0x039c
    jmp short @..api_idx_000c.l2     ; 0x039d
@..api_idx_000c.l1:
    mov ax, 0x10                     ; 0x039f
    push ax                          ; 0x03a2
    call ds_dispatch_d6c6            ; 0x03a3
    pop cx                           ; 0x03a6
    mov word [data_598e], 0xffff     ; 0x03a7
@..api_idx_000c.l2:
    mov ax, 0                        ; 0x03ad
    push ax                          ; 0x03b0
    call api_idx_000a                ; 0x03b1
    pop cx                           ; 0x03b4
    call ds_dispatch_ec17            ; 0x03b5
    ret                              ; 0x03b8
api_idx_0004_3:
    mov ax, 0xfffc                   ; 0x03b9
    call ds_dispatch_f40b            ; 0x03bc
    mov word [bp - 0x0004], 0xffff   ; 0x03bf
    mov word [bp - 0x0002], 0xf      ; 0x03c4
@..api_idx_0004_3.l1:
    mov bx, word [bp - 0x0002]       ; 0x03c9
    mov al, byte [bx + 0x5b48]       ; 0x03cc
    sub ah, ah                       ; 0x03d0
    cmp ax, word [bp + 0x4]          ; 0x03d2
    jne short @..local.l4            ; 0x03d5
    mov byte [bx + 0x5b5a], 1        ; 0x03d7
    mov ax, bx                       ; 0x03dc
    ret                              ; 0x03de
@..local.l4:
    cmp byte [bx + 0x5b5a], 0        ; 0x03df
    jne short @..local.l5            ; 0x03e4
    mov word [bp - 0x0004], bx       ; 0x03e6
@..local.l5:
    inc word [bp - 0x0002]           ; 0x03e9
    mov ax, word [bp - 0x0002]       ; 0x03ec
    cmp ax, strict word 0x12         ; 0x03ef
    jl short @..api_idx_0004_3.l1    ; 0x03f2
    cmp word [bp - 0x0004], byte 0xff ; 0x03f4
    je short @..local.l7             ; 0x03f8
    mov bx, word [bp - 0x0004]       ; 0x03fa
    mov al, byte [bx + 0x5b48]       ; 0x03fd
    sub ah, ah                       ; 0x0401
    cmp ax, 0xff                     ; 0x0403
    je short @..local.l6             ; 0x0406
    push bx                          ; 0x0408
    call ds_dispatch_c12a            ; 0x0409
    pop cx                           ; 0x040c
@..local.l6:
    push word [bp - 0x0004]          ; 0x040d
    push word [bp + 0x4]             ; 0x0410
    call ds_dispatch_d61c            ; 0x0413
    add sp, byte 4                   ; 0x0416
@..local.l7:
    mov ax, word [bp - 0x0004]       ; 0x0419
    ret                              ; 0x041c
api_idx_00a8:
    mov ax, 0xff58                   ; 0x041d
    call ds_dispatch_f40b            ; 0x0420
    mov ax, word [bp + 0x4]          ; 0x0423
    shl ax, 1                        ; 0x0426
    mov bx, ax                       ; 0x0428
    mov bx, word [bx - 0x7b70]       ; 0x042a
    cmp byte [bx + 0xe5], data_0002  ; 0x042e
    jge short @..local.l8            ; 0x0433
    mov ax, 0xffff                   ; 0x0435
    ret                              ; 0x0438
@..local.l8:
    mov al, byte [bx + 0xe5]         ; 0x0439
    cbw                              ; 0x043d
    mov word [bp - 0x000a], ax       ; 0x043e
    mov word [bp - 0x0002], 0        ; 0x0441
@..local.l9:
    mov word [bp - 0x0004], 0        ; 0x0446
@..local.l10:
    mov ax, 0xc                      ; 0x044b
    imul word [bp - 0x0002]          ; 0x044e
    mov cx, word [bp - 0x0004]       ; 0x0451
    shl cx, 1                        ; 0x0454
    add ax, cx                       ; 0x0456
    mov bx, ax                       ; 0x0458
    add bx, bp                       ; 0x045a
    mov word [bx - 0x009c], 0xffff   ; 0x045c
    inc word [bp - 0x0004]           ; 0x0462
    mov ax, word [bp - 0x0004]       ; 0x0465
    cmp ax, strict word 6            ; 0x0468
    jl short @..local.l10            ; 0x046b
    inc word [bp - 0x0002]           ; 0x046d
    mov ax, word [bp - 0x0002]       ; 0x0470
    cmp ax, strict word 0xc          ; 0x0473
    jl short @..local.l9             ; 0x0476
    mov word [bp - 0x0090], 0xffff   ; 0x0478
    mov word [bp - 0x008e], 0x5e     ; 0x047e
    mov word [bp - 0x008c], 0x5e     ; 0x0484
    mov word [bp - 0x008a], 0x5f     ; 0x048a
    mov word [bp - 0x0088], 0x60     ; 0x0490
    mov word [bp - 0x0086], 0x60     ; 0x0496
    mov word [bp - 0x0084], 0x3c     ; 0x049c
    mov word [bp - 0x0082], 0x3d     ; 0x04a2
    mov word [bp - 0x0080], 0x3d     ; 0x04a8
    mov word [bp - 0x007e], 0x3e     ; 0x04ad
    mov word [bp - 0x007c], 0x3f     ; 0x04b2
    mov word [bp - 0x007a], 0x40     ; 0x04b7
    mov word [bp - 0x0078], 0x42     ; 0x04bc
    mov word [bp - 0x0076], 0x42     ; 0x04c1
    mov word [bp - 0x0074], 0x43     ; 0x04c6
    mov word [bp - 0x0072], 0x44     ; 0x04cb
    mov word [bp - 0x0070], 0x45     ; 0x04d0
    mov word [bp - 0x006e], 0x46     ; 0x04d5
    mov word [bp - 0x006c], 0x4d     ; 0x04da
    mov word [bp - 0x006a], 0x4d     ; 0x04df
    mov word [bp - 0x0068], api_idx_0008 ; 0x04e4
    mov word [bp - 0x0066], 0x4f     ; 0x04e9
    mov word [bp - 0x0064], 0x50     ; 0x04ee
    mov word [bp - 0x0062], 0x50     ; 0x04f3
    mov word [bp - 0x0060], 0xffff   ; 0x04f8
    mov word [bp - 0x005e], 0x48     ; 0x04fd
    mov word [bp - 0x005c], 0x49     ; 0x0502
    mov word [bp - 0x005a], 0x4a     ; 0x0507
    mov word [bp - 0x0058], 0x4b     ; 0x050c
    mov word [bp - 0x0056], 0x4b     ; 0x0511
    mov word [bp - 0x0054], 0x52     ; 0x0516
    mov word [bp - 0x0052], 0x53     ; 0x051b
    mov word [bp - 0x0050], 0x54     ; 0x0520
    mov word [bp - 0x004e], 0x56     ; 0x0525
    mov word [bp - 0x004c], 0x55     ; 0x052a
    mov word [bp - 0x004a], 0x57     ; 0x052f
    mov word [bp - 0x0048], 0x58     ; 0x0534
    mov word [bp - 0x0046], 0x59     ; 0x0539
    mov word [bp - 0x0044], 0x5a     ; 0x053e
    mov word [bp - 0x0042], 0x5b     ; 0x0543
    mov word [bp - 0x0040], 0x5c     ; 0x0548
    mov word [bp - 0x003e], 0x69     ; 0x054d
    mov ax, word [data_5b6e]         ; 0x0552
    mov cx, data_0002                ; 0x0555
    cwd                              ; 0x0558
    idiv cx                          ; 0x0559
    mov ax, dx                       ; 0x055b
    test ax, ax                      ; 0x055d
    jne short @..local.l11           ; 0x055f
    mov word [bp - 0x003c], 0xffff   ; 0x0561
    mov word [bp - 0x003a], 0x62     ; 0x0566
    mov word [bp - 0x0038], 0x63     ; 0x056b
    mov word [bp - 0x0036], 0x63     ; 0x0570
    mov word [bp - 0x0034], 0x64     ; 0x0575
    mov word [bp - 0x0032], 0x64     ; 0x057a
@..local.l11:
    mov word [bp - 0x0002], 0        ; 0x057f
@..local.l12:
    mov ax, 0xc                      ; 0x0584
    imul word [bp - 0x000a]          ; 0x0587
    mov cx, word [bp - 0x0002]       ; 0x058a
    shl cx, 1                        ; 0x058d
    add ax, cx                       ; 0x058f
    mov bx, ax                       ; 0x0591
    add bx, bp                       ; 0x0593
    mov ax, word [bx - 0x009c]       ; 0x0595
    cmp ax, word [bp + 0x6]          ; 0x0599
    je short @..local.l13            ; 0x059c
    jmp near @..local.l16            ; 0x059e
@..local.l13:
    mov ax, 0                        ; 0x05a1
    push ax                          ; 0x05a4
    mov ax, 0xc                      ; 0x05a5
    push ax                          ; 0x05a8
    lea ax, word [bp - 0x00a8]       ; 0x05a9
    push ax                          ; 0x05ad
    call ds_dispatch_f306            ; 0x05ae
    add sp, byte 6                   ; 0x05b1
    mov bx, word [bp - 0x000a]       ; 0x05b4
    add bx, bp                       ; 0x05b7
    mov byte [bx - 0x00a8], 1        ; 0x05b9
    mov ax, 5                        ; 0x05be
    push ax                          ; 0x05c1
    mov ax, 0                        ; 0x05c2
    push ax                          ; 0x05c5
    mov ax, word [bp - 0x0002]       ; 0x05c6
    dec ax                           ; 0x05c9
    push ax                          ; 0x05ca
    call ds_dispatch_b7c2            ; 0x05cb
    add sp, byte 6                   ; 0x05ce
    mov word [bp - 0x0008], ax       ; 0x05d1
    mov word [bp - 0x0006], 0        ; 0x05d4
@..local.l14:
    mov ax, 8                        ; 0x05d9
    push ax                          ; 0x05dc
    call ds_dispatch_b7a9            ; 0x05dd
    pop cx                           ; 0x05e0
    inc ax                           ; 0x05e1
    mov word [bp - 0x000c], ax       ; 0x05e2
    mov bx, word [bp - 0x000c]       ; 0x05e5
    add bx, bp                       ; 0x05e8
    cmp byte [bx - 0x00a8], 0        ; 0x05ea
    jne short @..local.l14           ; 0x05ef
    mov bx, word [bp - 0x000c]       ; 0x05f1
    add bx, bp                       ; 0x05f4
    mov byte [bx - 0x00a8], 1        ; 0x05f6
    inc word [bp - 0x0006]           ; 0x05fb
    mov ax, 0xc                      ; 0x05fe
    imul word [bp - 0x000a]          ; 0x0601
    add ax, word [bp - 0x000c]       ; 0x0604
    mov bx, ax                       ; 0x0607
    cmp byte [bx - 0x7622], 0x23     ; 0x0609
    jle short @..local.l15           ; 0x060e
    mov ax, 0xc                      ; 0x0610
    imul word [bp - 0x000c]          ; 0x0613
    mov cx, word [bp - 0x0008]       ; 0x0616
    shl cx, 1                        ; 0x0619
    add ax, cx                       ; 0x061b
    mov bx, ax                       ; 0x061d
    add bx, bp                       ; 0x061f
    cmp word [bx - 0x009c], byte 0xff ; 0x0621
    je short @..local.l15            ; 0x0626
    mov ax, word [bx - 0x009c]       ; 0x0628
    ret                              ; 0x062c
@..local.l15:
    cmp word [bp - 0x0006], byte 3   ; 0x062d
    jl short @..local.l14            ; 0x0631
    mov ax, 0xffff                   ; 0x0633
    ret                              ; 0x0636
@..local.l16:
    inc word [bp - 0x0002]           ; 0x0637
    mov ax, word [bp - 0x0002]       ; 0x063a
    cmp ax, strict word 6            ; 0x063d
    jge short @..local.l17           ; 0x0640
    jmp near @..local.l12            ; 0x0642
@..local.l17:
    mov ax, 0xffff                   ; 0x0645
    ret                              ; 0x0648
api_idx_005e:
    mov ax, 0xffa2                   ; 0x0649
    call ds_dispatch_f40b            ; 0x064c
    mov word [bp - 0x0002], 0xf      ; 0x064f
@..api_idx_005e.l1:
    mov bx, word [bp - 0x0002]       ; 0x0654
    mov al, byte [bx + 0x5b48]       ; 0x0657
    sub ah, ah                       ; 0x065b
    cmp ax, word [bp + 0x4]          ; 0x065d
    jne short @..local.l18           ; 0x0660
    mov ax, 0                        ; 0x0662
    ret                              ; 0x0665
@..local.l18:
    inc word [bp - 0x0002]           ; 0x0666
    mov ax, word [bp - 0x0002]       ; 0x0669
    cmp ax, strict word 0x12         ; 0x066c
    jl short @..api_idx_005e.l1      ; 0x066f
    mov ax, 0x9098                   ; 0x0671
    push ax                          ; 0x0674
    lea ax, word [bp - 0x005e]       ; 0x0675
    push ax                          ; 0x0678
    call ds_dispatch_f364            ; 0x0679
    add sp, byte 4                   ; 0x067c
    mov ax, word [bp + 0x4]          ; 0x067f
    mov cx, 0xa                      ; 0x0682
    cwd                              ; 0x0685
    idiv cx                          ; 0x0686
    add ax, strict word 0x30         ; 0x0688
    mov byte [bp - 0x005b], al       ; 0x068b
    add dx, byte 0x30                ; 0x068e
    mov ax, dx                       ; 0x0691
    mov byte [bp - 0x005a], al       ; 0x0693
    mov ax, 0                        ; 0x0696
    push ax                          ; 0x0699
    mov ax, 1                        ; 0x069a
    push ax                          ; 0x069d
    lea ax, word [bp - 0x005e]       ; 0x069e
    push ax                          ; 0x06a1
    call ds_dispatch_d161            ; 0x06a2
    add sp, byte 4                   ; 0x06a5
    push ax                          ; 0x06a8
    call ds_dispatch_f909            ; 0x06a9
    add sp, byte 4                   ; 0x06ac
    mov word [bp - 0x0004], ax       ; 0x06af
    cmp ax, strict word 0xffff       ; 0x06b2
    jne short @..local.l19           ; 0x06b5
    mov ax, 0xffff                   ; 0x06b7
    ret                              ; 0x06ba
@..local.l19:
    mov ax, data_0002                ; 0x06bb
    push ax                          ; 0x06be
    mov ax, 0                        ; 0x06bf
    mov dx, 0                        ; 0x06c2
    push dx                          ; 0x06c5
    push ax                          ; 0x06c6
    push word [bp - 0x0004]          ; 0x06c7
    call ds_dispatch_fdbd            ; 0x06ca
    add sp, byte 8                   ; 0x06cd
    mov word [bp - 0x0006], dx       ; 0x06d0
    mov word [bp - 0x0008], ax       ; 0x06d3
    push word [bp - 0x0004]          ; 0x06d6
    call ds_dispatch_fda5            ; 0x06d9
    pop cx                           ; 0x06dc
    mov word [bp - 0x000a], 0        ; 0x06dd
    mov word [bp - 0x000c], 0x2800   ; 0x06e2
    mov ax, 0                        ; 0x06e7
    push ax                          ; 0x06ea
    mov ax, data_0002                ; 0x06eb
    push ax                          ; 0x06ee
    call ds_dispatch_e91b            ; 0x06ef
    add sp, byte 4                   ; 0x06f2
    mov cx, word [bp - 0x0008]       ; 0x06f5
    mov bx, word [bp - 0x0006]       ; 0x06f8
    add cx, word [bp - 0x000c]       ; 0x06fb
    adc bx, word [bp - 0x000a]       ; 0x06fe
    cmp dx, bx                       ; 0x0701
    jl short @..local.l20            ; 0x0703
    jne short @..local.l21           ; 0x0705
    cmp ax, cx                       ; 0x0707
    ja short @..local.l21            ; 0x0709
@..local.l20:
    jmp short @..local.l22           ; 0x070b
@..local.l21:
    mov ax, 0                        ; 0x070d
    ret                              ; 0x0710
@..local.l22:
    cmp byte [data_5962], 1          ; 0x0711
    jne short @..local.l25           ; 0x0716
    mov ax, 0                        ; 0x0718
    push ax                          ; 0x071b
    mov ax, 1                        ; 0x071c
    push ax                          ; 0x071f
    call ds_dispatch_e91b            ; 0x0720
    add sp, byte 4                   ; 0x0723
    cmp dx, word [bp - 0x000a]       ; 0x0726
    jl short @..local.l23            ; 0x0729
    jne short @..local.l24           ; 0x072b
    cmp ax, word [bp - 0x000c]       ; 0x072d
    ja short @..local.l24            ; 0x0730
@..local.l23:
    jmp short @..local.l25           ; 0x0732
@..local.l24:
    mov word [bp - 0x000a], 0        ; 0x0734
    mov word [bp - 0x000c], 0        ; 0x0739
    jmp short @..local.l28           ; 0x073e
@..local.l25:
    cmp byte [data_5963], 1          ; 0x0740
    jne short @..local.l28           ; 0x0745
    mov al, byte [data_5964]         ; 0x0747
    sub ah, ah                       ; 0x074a
    add ax, strict word 0xffc0       ; 0x074c
    mov word [bp - 0x000e], ax       ; 0x074f
    cmp ax, strict word 1            ; 0x0752
    jl short @..local.l28            ; 0x0755
    cmp ax, strict word 0x1a         ; 0x0757
    jg short @..local.l28            ; 0x075a
    push ax                          ; 0x075c
    mov ax, 3                        ; 0x075d
    push ax                          ; 0x0760
    call ds_dispatch_e91b            ; 0x0761
    add sp, byte 4                   ; 0x0764
    cmp dx, word [bp - 0x000a]       ; 0x0767
    jl short @..local.l26            ; 0x076a
    jne short @..local.l27           ; 0x076c
    cmp ax, word [bp - 0x000c]       ; 0x076e
    ja short @..local.l27            ; 0x0771
@..local.l26:
    jmp short @..local.l28           ; 0x0773
@..local.l27:
    mov word [bp - 0x000a], 0        ; 0x0775
    mov word [bp - 0x000c], 0        ; 0x077a
@..local.l28:
    mov ax, 0                        ; 0x077f
    push ax                          ; 0x0782
    mov ax, data_0002                ; 0x0783
    push ax                          ; 0x0786
    call ds_dispatch_e91b            ; 0x0787
    add sp, byte 4                   ; 0x078a
    mov cx, word [bp - 0x0008]       ; 0x078d
    mov bx, word [bp - 0x0006]       ; 0x0790
    add cx, word [bp - 0x000c]       ; 0x0793
    adc bx, word [bp - 0x000a]       ; 0x0796
    cmp dx, bx                       ; 0x0799
    jl short @..local.l29            ; 0x079b
    jne short @..local.l30           ; 0x079d
    cmp ax, cx                       ; 0x079f
    ja short @..local.l30            ; 0x07a1
@..local.l29:
    jmp short @..local.l31           ; 0x07a3
@..local.l30:
    mov ax, 0                        ; 0x07a5
    ret                              ; 0x07a8
@..local.l31:
    mov ax, 0xffff                   ; 0x07a9
    ret                              ; 0x07ac
api_idx_0008_3:
    mov ax, 0xfff8                   ; 0x07ad
    call ds_dispatch_f40b            ; 0x07b0
    mov ax, 0                        ; 0x07b3
    push ax                          ; 0x07b6
    push word [bp + 0x4]             ; 0x07b7
    mov ax, word [bp + 0x6]          ; 0x07ba
    shl ax, 1                        ; 0x07bd
    mov bx, ax                       ; 0x07bf
    push word [bx - 0x7b70]          ; 0x07c1
    mov ax, 4                        ; 0x07c5
    push ax                          ; 0x07c8
    call ds_dispatch_b63c            ; 0x07c9
    add sp, byte 8                   ; 0x07cc
    cmp word [bp + 0x6], byte 1      ; 0x07cf
    jle short @..local.l32           ; 0x07d3
    mov ax, word [bp + 0x6]          ; 0x07d5
    shl ax, 1                        ; 0x07d8
    mov bx, ax                       ; 0x07da
    mov bx, word [bx - 0x7b70]       ; 0x07dc
    mov al, byte [bx + 0xd7]         ; 0x07e0
    sub ah, ah                       ; 0x07e4
    push ax                          ; 0x07e6
    call api_idx_005e                ; 0x07e7
    pop cx                           ; 0x07ea
    cmp ax, strict word 0xffff       ; 0x07eb
    jne short @..local.l32           ; 0x07ee
    ret                              ; 0x07f0
@..local.l32:
    inc word [data_8466]             ; 0x07f1
    mov al, byte [bp + 0x4]          ; 0x07f5
    mov cx, word [bp + 0x6]          ; 0x07f8
    shl cx, 1                        ; 0x07fb
    mov bx, cx                       ; 0x07fd
    mov bx, word [bx - 0x7b7e]       ; 0x07ff
    mov byte [bx + 0x19e], al        ; 0x0803
    mov ax, word [bp + 0x6]          ; 0x0807
    shl ax, 1                        ; 0x080a
    mov bx, ax                       ; 0x080c
    mov bx, word [bx - 0x7b70]       ; 0x080e
    mov al, byte [bx + 0xd7]         ; 0x0812
    sub ah, ah                       ; 0x0816
    push ax                          ; 0x0818
    call api_idx_0004_3              ; 0x0819
    pop cx                           ; 0x081c
    mov cx, word [bp + 0x6]          ; 0x081d
    shl cx, 1                        ; 0x0820
    mov bx, cx                       ; 0x0822
    mov bx, word [bx - 0x7b7e]       ; 0x0824
    mov byte [bx + 0x19f], al        ; 0x0828
    cmp word [bp + 0x6], byte 1      ; 0x082c
    jne short @..local.l33           ; 0x0830
    mov ax, word [bp + 0x6]          ; 0x0832
    shl ax, 1                        ; 0x0835
    mov bx, ax                       ; 0x0837
    mov bx, word [bx - 0x7b70]       ; 0x0839
    cmp byte [bx + 0xd8], 0          ; 0x083d
    jbe short @..local.l33           ; 0x0842
    mov al, byte [bx + 0xd8]         ; 0x0844
    sub ah, ah                       ; 0x0848
    push ax                          ; 0x084a
    call ds_dispatch_d7aa            ; 0x084b
    pop cx                           ; 0x084e
@..local.l33:
    mov ax, word [bp + 0x6]          ; 0x084f
    shl ax, 1                        ; 0x0852
    mov bx, ax                       ; 0x0854
    mov bx, word [bx - 0x7b70]       ; 0x0856
    mov al, byte [bx + 0xe2]         ; 0x085a
    sub ah, ah                       ; 0x085e
    test ax, 1                       ; 0x0860
    jne short @..local.l38           ; 0x0863
    mov al, byte [data_5988]         ; 0x0865
    sub ah, ah                       ; 0x0868
    jmp short @..local.l37           ; 0x086a
@..local.l34:
    mov ax, word [bp + 0x6]          ; 0x086c
    shl ax, 1                        ; 0x086f
    mov bx, ax                       ; 0x0871
    mov bx, word [bx - 0x7b70]       ; 0x0873
    cmp word [bx + 0x7a], byte 0     ; 0x0877
    jle short @..local.l35           ; 0x087b
    dec word [bx + 0x7a]             ; 0x087d
@..local.l35:
    jmp short @..local.l38           ; 0x0880
@..local.l36:
    mov ax, word [bp + 0x6]          ; 0x0882
    shl ax, 1                        ; 0x0885
    mov bx, ax                       ; 0x0887
    mov bx, word [bx - 0x7b70]       ; 0x0889
    inc word [bx + 0x7a]             ; 0x088d
    jmp short @..local.l38           ; 0x0890
@..local.l37:
    cmp ax, strict word 1            ; 0x0892
    je short @..local.l34            ; 0x0895
    cmp ax, strict word 2            ; 0x0897
    je short @..local.l36            ; 0x089a
@..local.l38:
    mov ax, word [bp + 0x6]          ; 0x089c
    shl ax, 1                        ; 0x089f
    mov bx, ax                       ; 0x08a1
    mov cx, word [bx - 0x7b70]       ; 0x08a3
    add cx, byte 0x7a                ; 0x08a7
    sub sp, byte 4                   ; 0x08aa
    mov ax, sp                       ; 0x08ad
    mov dx, ss                       ; 0x08af
    mov es, dx                       ; 0x08b1
    mov si, cx                       ; 0x08b3
    mov di, ax                       ; 0x08b5
    movsw                            ; 0x08b7
    movsw                            ; 0x08b8
    call ds_dispatch_d0be            ; 0x08b9
    add sp, byte 4                   ; 0x08bc
    mov cx, word [bp + 0x6]          ; 0x08bf
    shl cx, 1                        ; 0x08c2
    mov bx, cx                       ; 0x08c4
    mov bx, word [bx - 0x7b7e]       ; 0x08c6
    mov byte [bx + 0x1a1], al        ; 0x08ca
    mov ax, word [bp + 0x6]          ; 0x08ce
    shl ax, 1                        ; 0x08d1
    mov bx, ax                       ; 0x08d3
    mov bx, word [bx - 0x7b7e]       ; 0x08d5
    cmp byte [bx + 0x1a1], 1         ; 0x08d9
    jae short @..local.l39           ; 0x08de
    mov byte [bx + 0x1a1], 1         ; 0x08e0
@..local.l39:
    mov ax, word [bp + 0x6]          ; 0x08e5
    shl ax, 1                        ; 0x08e8
    mov bx, ax                       ; 0x08ea
    mov bx, word [bx - 0x7b7e]       ; 0x08ec
    cmp byte [bx + 0x1a1], 9         ; 0x08f0
    jbe short @..local.l40           ; 0x08f5
    mov byte [bx + 0x1a1], 9         ; 0x08f7
@..local.l40:
    mov ax, word [bp + 0x6]          ; 0x08fc
    shl ax, 1                        ; 0x08ff
    mov bx, ax                       ; 0x0901
    mov bx, word [bx - 0x7b7e]       ; 0x0903
    mov byte [bx + 0x1a0], 1         ; 0x0907
    mov word [bp - 0x0002], 0        ; 0x090c
@..local.l41:
    mov ax, word [bp + 0x6]          ; 0x0911
    shl ax, 1                        ; 0x0914
    mov bx, ax                       ; 0x0916
    mov bx, word [bx - 0x7b7e]       ; 0x0918
    mov si, word [bp - 0x0002]       ; 0x091c
    mov byte [bx + si + 0x18c], 0    ; 0x091f
    inc word [bp - 0x0002]           ; 0x0924
    mov ax, word [bp - 0x0002]       ; 0x0927
    cmp ax, strict word 6            ; 0x092a
    jl short @..local.l41            ; 0x092d
    mov word [bp - 0x0002], 0        ; 0x092f
@..local.l42:
    mov ax, word [bp + 0x6]          ; 0x0934
    shl ax, 1                        ; 0x0937
    mov bx, ax                       ; 0x0939
    mov bx, word [bx - 0x7b7e]       ; 0x093b
    mov si, word [bp - 0x0002]       ; 0x093f
    mov byte [bx + si + 0x192], 0    ; 0x0942
    inc word [bp - 0x0002]           ; 0x0947
    mov ax, word [bp - 0x0002]       ; 0x094a
    cmp ax, strict word 6            ; 0x094d
    jl short @..local.l42            ; 0x0950
    cmp byte [data_5988], data_0002  ; 0x0952
    jne short @..local.l43           ; 0x0957
    mov ax, word [bp + 0x6]          ; 0x0959
    shl ax, 1                        ; 0x095c
    mov bx, ax                       ; 0x095e
    mov bx, word [bx - 0x7b70]       ; 0x0960
    inc byte [bx + 0x80]             ; 0x0964
@..local.l43:
    mov word [bp - 0x0002], 0        ; 0x0968
    jmp near @..local.l50            ; 0x096d
@..local.l44:
    mov ax, word [bp + 0x6]          ; 0x0970
    shl ax, 1                        ; 0x0973
    mov bx, ax                       ; 0x0975
    mov bx, word [bx - 0x7b70]       ; 0x0977
    mov al, byte [bx + 0x80]         ; 0x097b
    sub ah, ah                       ; 0x097f
    push ax                          ; 0x0981
    mov ax, 0x2c                     ; 0x0982
    imul word [bp - 0x0002]          ; 0x0985
    mov si, ax                       ; 0x0988
    mov ax, word [bp + 0x6]          ; 0x098a
    shl ax, 1                        ; 0x098d
    mov bx, ax                       ; 0x098f
    mov bx, word [bx - 0x7b7e]       ; 0x0991
    pop ax                           ; 0x0995
    mov word [bx + si], ax           ; 0x0996
    mov ax, word [bp + 0x6]          ; 0x0998
    shl ax, 1                        ; 0x099b
    mov bx, ax                       ; 0x099d
    mov cx, word [bx - 0x7b70]       ; 0x099f
    add cx, byte 0x7e                ; 0x09a3
    sub sp, byte 4                   ; 0x09a6
    mov ax, sp                       ; 0x09a9
    mov dx, ss                       ; 0x09ab
    mov es, dx                       ; 0x09ad
    mov si, cx                       ; 0x09af
    mov di, ax                       ; 0x09b1
    movsw                            ; 0x09b3
    movsw                            ; 0x09b4
    call ds_dispatch_d0be            ; 0x09b5
    add sp, byte 4                   ; 0x09b8
    push ax                          ; 0x09bb
    mov ax, 0x2c                     ; 0x09bc
    imul word [bp - 0x0002]          ; 0x09bf
    mov si, ax                       ; 0x09c2
    mov ax, word [bp + 0x6]          ; 0x09c4
    shl ax, 1                        ; 0x09c7
    mov bx, ax                       ; 0x09c9
    mov bx, word [bx - 0x7b7e]       ; 0x09cb
    pop ax                           ; 0x09cf
    mov word [bx + si + 0x4], ax     ; 0x09d0
    mov ax, 0x2c                     ; 0x09d3
    imul word [bp - 0x0002]          ; 0x09d6
    mov si, ax                       ; 0x09d9
    mov ax, word [bp + 0x6]          ; 0x09db
    shl ax, 1                        ; 0x09de
    mov bx, ax                       ; 0x09e0
    mov bx, word [bx - 0x7b7e]       ; 0x09e2
    mov ax, word [bx + si + 0x4]     ; 0x09e6
    mov word [bx + si + 0x2], ax     ; 0x09e9
    mov ax, word [bp + 0x6]          ; 0x09ec
    shl ax, 1                        ; 0x09ef
    mov bx, ax                       ; 0x09f1
    mov cx, word [bx - 0x7b70]       ; 0x09f3
    add cx, strict word 0x82         ; 0x09f7
    sub sp, byte 4                   ; 0x09fb
    mov ax, sp                       ; 0x09fe
    mov dx, ss                       ; 0x0a00
    mov es, dx                       ; 0x0a02
    mov si, cx                       ; 0x0a04
    mov di, ax                       ; 0x0a06
    movsw                            ; 0x0a08
    movsw                            ; 0x0a09
    call ds_dispatch_d0be            ; 0x0a0a
    add sp, byte 4                   ; 0x0a0d
    push ax                          ; 0x0a10
    mov ax, 0x2c                     ; 0x0a11
    imul word [bp - 0x0002]          ; 0x0a14
    mov si, ax                       ; 0x0a17
    mov ax, word [bp + 0x6]          ; 0x0a19
    shl ax, 1                        ; 0x0a1c
    mov bx, ax                       ; 0x0a1e
    mov bx, word [bx - 0x7b7e]       ; 0x0a20
    pop ax                           ; 0x0a24
    mov word [bx + si + 0x8], ax     ; 0x0a25
    mov ax, 0x2c                     ; 0x0a28
    imul word [bp - 0x0002]          ; 0x0a2b
    mov si, ax                       ; 0x0a2e
    mov ax, word [bp + 0x6]          ; 0x0a30
    shl ax, 1                        ; 0x0a33
    mov bx, ax                       ; 0x0a35
    mov bx, word [bx - 0x7b7e]       ; 0x0a37
    mov ax, word [bx + si + 0x8]     ; 0x0a3b
    mov word [bx + si + 0x6], ax     ; 0x0a3e
    mov ax, 0x2c                     ; 0x0a41
    imul word [bp - 0x0002]          ; 0x0a44
    mov si, ax                       ; 0x0a47
    mov ax, word [bp + 0x6]          ; 0x0a49
    shl ax, 1                        ; 0x0a4c
    mov bx, ax                       ; 0x0a4e
    mov bx, word [bx - 0x7b7e]       ; 0x0a50
    mov byte [bx + si + 0x2a], 0xff  ; 0x0a54
    mov al, byte [data_5988]         ; 0x0a58
    sub ah, ah                       ; 0x0a5b
    jmp near @..local.l47            ; 0x0a5d
@..local.l45:
    mov ax, 0x2c                     ; 0x0a60
    imul word [bp - 0x0002]          ; 0x0a63
    mov si, ax                       ; 0x0a66
    mov ax, word [bp + 0x6]          ; 0x0a68
    shl ax, 1                        ; 0x0a6b
    mov bx, ax                       ; 0x0a6d
    mov bx, word [bx - 0x7b7e]       ; 0x0a6f
    mov byte [bx + si + 0x26], data_0002 ; 0x0a73
    mov ax, 0x2c                     ; 0x0a77
    imul word [bp - 0x0002]          ; 0x0a7a
    mov si, ax                       ; 0x0a7d
    mov ax, word [bp + 0x6]          ; 0x0a7f
    shl ax, 1                        ; 0x0a82
    mov bx, ax                       ; 0x0a84
    mov bx, word [bx - 0x7b7e]       ; 0x0a86
    mov byte [bx + si + 0x27], data_0002 ; 0x0a8a
    mov ax, 0x2c                     ; 0x0a8e
    imul word [bp - 0x0002]          ; 0x0a91
    mov si, ax                       ; 0x0a94
    mov ax, word [bp + 0x6]          ; 0x0a96
    shl ax, 1                        ; 0x0a99
    mov bx, ax                       ; 0x0a9b
    mov bx, word [bx - 0x7b7e]       ; 0x0a9d
    mov byte [bx + si + 0x29], 0xfb  ; 0x0aa1
    jmp short @..local.l49           ; 0x0aa5
@..local.l46:
    mov ax, 0x2c                     ; 0x0aa7
    imul word [bp - 0x0002]          ; 0x0aaa
    mov si, ax                       ; 0x0aad
    mov ax, word [bp + 0x6]          ; 0x0aaf
    shl ax, 1                        ; 0x0ab2
    mov bx, ax                       ; 0x0ab4
    mov bx, word [bx - 0x7b7e]       ; 0x0ab6
    mov byte [bx + si + 0x26], 0xfe  ; 0x0aba
    mov ax, 0x2c                     ; 0x0abe
    imul word [bp - 0x0002]          ; 0x0ac1
    mov si, ax                       ; 0x0ac4
    mov ax, word [bp + 0x6]          ; 0x0ac6
    shl ax, 1                        ; 0x0ac9
    mov bx, ax                       ; 0x0acb
    mov bx, word [bx - 0x7b7e]       ; 0x0acd
    mov byte [bx + si + 0x27], 0xfe  ; 0x0ad1
    mov ax, 0x2c                     ; 0x0ad5
    imul word [bp - 0x0002]          ; 0x0ad8
    mov si, ax                       ; 0x0adb
    mov ax, word [bp + 0x6]          ; 0x0add
    shl ax, 1                        ; 0x0ae0
    mov bx, ax                       ; 0x0ae2
    mov bx, word [bx - 0x7b7e]       ; 0x0ae4
    mov byte [bx + si + 0x29], 5     ; 0x0ae8
    jmp short @..local.l49           ; 0x0aec
@..local.l47:
    cmp ax, strict word 1            ; 0x0aee
    jne short @..local.l48           ; 0x0af1
    jmp near @..local.l45            ; 0x0af3
@..local.l48:
    cmp ax, strict word 2            ; 0x0af6
    je short @..local.l46            ; 0x0af9
@..local.l49:
    inc word [bp - 0x0002]           ; 0x0afb
@..local.l50:
    mov ax, word [bp + 0x6]          ; 0x0afe
    shl ax, 1                        ; 0x0b01
    mov bx, ax                       ; 0x0b03
    mov bx, word [bx - 0x7b7e]       ; 0x0b05
    mov al, byte [bx + 0x1a1]        ; 0x0b09
    sub ah, ah                       ; 0x0b0d
    cmp ax, word [bp - 0x0002]       ; 0x0b0f
    jle short @..local.l51           ; 0x0b12
    jmp near @..local.l44            ; 0x0b14
@..local.l51:
    mov word [bp - 0x0006], 0        ; 0x0b17
    mov word [bp - 0x0002], 0        ; 0x0b1c
    jmp short @..local.l53           ; 0x0b21
@..local.l52:
    mov ax, 0x248                    ; 0x0b23
    imul word [bp - 0x0002]          ; 0x0b26
    mov bx, ax                       ; 0x0b29
    mov ax, word [bx + 0x5c18]       ; 0x0b2b
    add word [bp - 0x0006], ax       ; 0x0b2f
    inc word [bp - 0x0002]           ; 0x0b32
@..local.l53:
    mov ax, word [bp - 0x0002]       ; 0x0b35
    cmp ax, word [data_69c8]         ; 0x0b38
    jl short @..local.l52            ; 0x0b3c
    mov ax, word [bp - 0x0006]       ; 0x0b3e
    cwd                              ; 0x0b41
    idiv word [data_69c8]            ; 0x0b42
    inc ax                           ; 0x0b46
    mov cx, 3                        ; 0x0b47
    cwd                              ; 0x0b4a
    idiv cx                          ; 0x0b4b
    mov word [bp - 0x0006], ax       ; 0x0b4d
    cmp word [data_8452], byte 0     ; 0x0b50
    jle short @..local.l54           ; 0x0b55
    inc word [bp - 0x0006]           ; 0x0b57
@..local.l54:
    mov ax, 5                        ; 0x0b5a
    push ax                          ; 0x0b5d
    mov ax, 1                        ; 0x0b5e
    push ax                          ; 0x0b61
    push word [bp - 0x0006]          ; 0x0b62
    call ds_dispatch_b7c2            ; 0x0b65
    add sp, byte 6                   ; 0x0b68
    mov word [bp - 0x0006], ax       ; 0x0b6b
    mov ax, 0x96                     ; 0x0b6e
    cmp byte [data_5988], 1          ; 0x0b71
    je short @..local.l55            ; 0x0b76
    mov ax, 0x64                     ; 0x0b78
    cmp byte [data_5988], data_0002  ; 0x0b7b
    jne short @..local.l55           ; 0x0b80
    mov ax, 0x4b                     ; 0x0b82
@..local.l55:
    mov word [bp - 0x0004], ax       ; 0x0b85
    mov word [bp - 0x0008], 1        ; 0x0b88
    mov ax, word [bp + 0x6]          ; 0x0b8d
    cmp ax, word [bp - 0x0006]       ; 0x0b90
    jl short @..local.l56            ; 0x0b93
    jmp near @..local.l62            ; 0x0b95
@..local.l56:
    mov ax, 0x64                     ; 0x0b98
    push ax                          ; 0x0b9b
    call ds_dispatch_b7a9            ; 0x0b9c
    pop cx                           ; 0x0b9f
    cmp ax, strict word 0x19         ; 0x0ba0
    jle short @..local.l58           ; 0x0ba3
    push word [bp + 0x4]             ; 0x0ba5
    push word [bp - 0x0008]          ; 0x0ba8
    call api_idx_00a8                ; 0x0bab
    add sp, byte 4                   ; 0x0bae
    mov word [bp + 0x4], ax          ; 0x0bb1
    push word [bp - 0x0004]          ; 0x0bb4
    call ds_dispatch_b7a9            ; 0x0bb7
    pop cx                           ; 0x0bba
    push ax                          ; 0x0bbb
    mov ax, word [bp + 0x6]          ; 0x0bbc
    shl ax, 1                        ; 0x0bbf
    mov bx, ax                       ; 0x0bc1
    mov bx, word [bx - 0x7b70]       ; 0x0bc3
    mov al, byte [bx + 0xac]         ; 0x0bc7
    sub ah, ah                       ; 0x0bcb
    mov cx, ax                       ; 0x0bcd
    pop ax                           ; 0x0bcf
    cmp ax, cx                       ; 0x0bd0
    jle short @..local.l57           ; 0x0bd2
    mov word [bp + 0x4], 0xffff      ; 0x0bd4
@..local.l57:
    jmp short @..local.l59           ; 0x0bd9
@..local.l58:
    mov word [bp + 0x4], 0xffff      ; 0x0bdb
@..local.l59:
    mov word [bp - 0x0002], 0        ; 0x0be0
@..local.l60:
    cmp word [bp + 0x4], byte 0xff   ; 0x0be5
    jne short @..local.l61           ; 0x0be9
    mov ax, word [bp - 0x0008]       ; 0x0beb
    shl ax, 1                        ; 0x0bee
    mov bx, ax                       ; 0x0bf0
    mov bx, word [bx - 0x7b70]       ; 0x0bf2
    mov si, word [bp - 0x0002]       ; 0x0bf6
    cmp byte [bx + si + 0xac], 0     ; 0x0bf9
    jbe short @..local.l61           ; 0x0bfe
    mov ax, word [bp + 0x6]          ; 0x0c00
    shl ax, 1                        ; 0x0c03
    mov bx, ax                       ; 0x0c05
    mov bx, word [bx - 0x7b70]       ; 0x0c07
    cmp byte [bx + si + 0xac], 0     ; 0x0c0b
    jbe short @..local.l61           ; 0x0c10
    push word [bp - 0x0004]          ; 0x0c12
    call ds_dispatch_b7a9            ; 0x0c15
    pop cx                           ; 0x0c18
    push ax                          ; 0x0c19
    mov ax, word [bp + 0x6]          ; 0x0c1a
    shl ax, 1                        ; 0x0c1d
    mov bx, ax                       ; 0x0c1f
    mov bx, word [bx - 0x7b70]       ; 0x0c21
    mov si, word [bp - 0x0002]       ; 0x0c25
    mov al, byte [bx + si + 0xac]    ; 0x0c28
    sub ah, ah                       ; 0x0c2c
    mov cx, ax                       ; 0x0c2e
    pop ax                           ; 0x0c30
    cmp ax, cx                       ; 0x0c31
    jge short @..local.l61           ; 0x0c33
    mov ax, word [bp - 0x0008]       ; 0x0c35
    shl ax, 1                        ; 0x0c38
    mov bx, ax                       ; 0x0c3a
    mov bx, word [bx - 0x7b70]       ; 0x0c3c
    mov al, byte [bx + si + 0xaa]    ; 0x0c40
    sub ah, ah                       ; 0x0c44
    mov word [bp + 0x4], ax          ; 0x0c46
@..local.l61:
    inc word [bp - 0x0002]           ; 0x0c49
    cmp word [bp - 0x0002], byte 2   ; 0x0c4c
    jl short @..local.l60            ; 0x0c50
    cmp word [bp + 0x4], byte 0xff   ; 0x0c52
    je short @..local.l62            ; 0x0c56
    mov ax, word [bp + 0x6]          ; 0x0c58
    inc ax                           ; 0x0c5b
    push ax                          ; 0x0c5c
    push word [bp + 0x4]             ; 0x0c5d
    call api_idx_0008_3              ; 0x0c60
    add sp, byte 4                   ; 0x0c63
@..local.l62:
    ret                              ; 0x0c66
api_idx_0004_4:
    mov ax, 0xfffc                   ; 0x0c67
    call ds_dispatch_f40b            ; 0x0c6a
    mov word [bp - 0x0004], 0        ; 0x0c6d
    mov al, byte [data_69c8]         ; 0x0c72
    mov cx, word [bp - 0x0004]       ; 0x0c75
    shl cx, 1                        ; 0x0c78
    mov bx, cx                       ; 0x0c7a
    mov bx, word [bx - 0x7b7e]       ; 0x0c7c
    mov byte [bx + 0x1a1], al        ; 0x0c80
    mov word [bp - 0x0002], 0        ; 0x0c84
@..api_idx_0004_4.l1:
    mov ax, word [bp - 0x0004]       ; 0x0c89
    shl ax, 1                        ; 0x0c8c
    mov bx, ax                       ; 0x0c8e
    mov bx, word [bx - 0x7b7e]       ; 0x0c90
    mov si, word [bp - 0x0002]       ; 0x0c94
    mov byte [bx + si + 0x18c], 0    ; 0x0c97
    inc word [bp - 0x0002]           ; 0x0c9c
    mov ax, word [bp - 0x0002]       ; 0x0c9f
    cmp ax, strict word 6            ; 0x0ca2
    jl short @..api_idx_0004_4.l1    ; 0x0ca5
    cmp word [data_82fa], byte 0     ; 0x0ca7
    jle short @..api_idx_0004_4.l2   ; 0x0cac
    mov al, byte [data_82fc]         ; 0x0cae
    mov cx, word [bp - 0x0004]       ; 0x0cb1
    shl cx, 1                        ; 0x0cb4
    mov bx, cx                       ; 0x0cb6
    mov bx, word [bx - 0x7b7e]       ; 0x0cb8
    mov byte [bx + 0x190], al        ; 0x0cbc
@..api_idx_0004_4.l2:
    mov word [bp - 0x0002], 0        ; 0x0cc0
@..api_idx_0004_4.l3:
    mov ax, word [bp - 0x0004]       ; 0x0cc5
    shl ax, 1                        ; 0x0cc8
    mov bx, ax                       ; 0x0cca
    mov bx, word [bx - 0x7b7e]       ; 0x0ccc
    mov si, word [bp - 0x0002]       ; 0x0cd0
    mov byte [bx + si + 0x192], 0    ; 0x0cd3
    inc word [bp - 0x0002]           ; 0x0cd8
    mov ax, word [bp - 0x0002]       ; 0x0cdb
    cmp ax, strict word 6            ; 0x0cde
    jl short @..api_idx_0004_4.l3    ; 0x0ce1
    mov word [bp - 0x0002], 0        ; 0x0ce3
    jmp near @..local.l67            ; 0x0ce8
@..api_idx_0004_4.l4:
    mov ax, 0x248                    ; 0x0ceb
    imul word [bp - 0x0002]          ; 0x0cee
    mov bx, ax                       ; 0x0cf1
    mov ax, word [bx + 0x5c18]       ; 0x0cf3
    push ax                          ; 0x0cf7
    mov ax, 0x2c                     ; 0x0cf8
    imul word [bp - 0x0002]          ; 0x0cfb
    mov si, ax                       ; 0x0cfe
    mov ax, word [bp - 0x0004]       ; 0x0d00
    shl ax, 1                        ; 0x0d03
    mov bx, ax                       ; 0x0d05
    mov bx, word [bx - 0x7b7e]       ; 0x0d07
    pop ax                           ; 0x0d0b
    mov word [bx + si], ax           ; 0x0d0c
    mov ax, 0x248                    ; 0x0d0e
    imul word [bp - 0x0002]          ; 0x0d11
    mov bx, ax                       ; 0x0d14
    mov ax, word [bx + 0x5c0e]       ; 0x0d16
    push ax                          ; 0x0d1a
    mov ax, 0x2c                     ; 0x0d1b
    imul word [bp - 0x0002]          ; 0x0d1e
    mov si, ax                       ; 0x0d21
    mov ax, word [bp - 0x0004]       ; 0x0d23
    shl ax, 1                        ; 0x0d26
    mov bx, ax                       ; 0x0d28
    mov bx, word [bx - 0x7b7e]       ; 0x0d2a
    pop ax                           ; 0x0d2e
    mov word [bx + si + 0x4], ax     ; 0x0d2f
    mov ax, 0x248                    ; 0x0d32
    imul word [bp - 0x0002]          ; 0x0d35
    mov bx, ax                       ; 0x0d38
    mov ax, word [bx + 0x5c0c]       ; 0x0d3a
    push ax                          ; 0x0d3e
    mov ax, 0x2c                     ; 0x0d3f
    imul word [bp - 0x0002]          ; 0x0d42
    mov si, ax                       ; 0x0d45
    mov ax, word [bp - 0x0004]       ; 0x0d47
    shl ax, 1                        ; 0x0d4a
    mov bx, ax                       ; 0x0d4c
    mov bx, word [bx - 0x7b7e]       ; 0x0d4e
    pop ax                           ; 0x0d52
    mov word [bx + si + 0x2], ax     ; 0x0d53
    mov ax, 0x248                    ; 0x0d56
    imul word [bp - 0x0002]          ; 0x0d59
    mov bx, ax                       ; 0x0d5c
    mov ax, word [bx + 0x5c12]       ; 0x0d5e
    push ax                          ; 0x0d62
    mov ax, 0x2c                     ; 0x0d63
    imul word [bp - 0x0002]          ; 0x0d66
    mov si, ax                       ; 0x0d69
    mov ax, word [bp - 0x0004]       ; 0x0d6b
    shl ax, 1                        ; 0x0d6e
    mov bx, ax                       ; 0x0d70
    mov bx, word [bx - 0x7b7e]       ; 0x0d72
    pop ax                           ; 0x0d76
    mov word [bx + si + 0x8], ax     ; 0x0d77
    mov ax, 0x248                    ; 0x0d7a
    imul word [bp - 0x0002]          ; 0x0d7d
    mov bx, ax                       ; 0x0d80
    mov ax, word [bx + 0x5c10]       ; 0x0d82
    push ax                          ; 0x0d86
    mov ax, 0x2c                     ; 0x0d87
    imul word [bp - 0x0002]          ; 0x0d8a
    mov si, ax                       ; 0x0d8d
    mov ax, word [bp - 0x0004]       ; 0x0d8f
    shl ax, 1                        ; 0x0d92
    mov bx, ax                       ; 0x0d94
    mov bx, word [bx - 0x7b7e]       ; 0x0d96
    pop ax                           ; 0x0d9a
    mov word [bx + si + 0x6], ax     ; 0x0d9b
    mov ax, 0x248                    ; 0x0d9e
    imul word [bp - 0x0002]          ; 0x0da1
    mov bx, ax                       ; 0x0da4
    mov al, byte [bx + 0x5e2f]       ; 0x0da6
    push ax                          ; 0x0daa
    mov ax, 0x2c                     ; 0x0dab
    imul word [bp - 0x0002]          ; 0x0dae
    mov si, ax                       ; 0x0db1
    mov ax, word [bp - 0x0004]       ; 0x0db3
    shl ax, 1                        ; 0x0db6
    mov bx, ax                       ; 0x0db8
    mov bx, word [bx - 0x7b7e]       ; 0x0dba
    pop ax                           ; 0x0dbe
    mov byte [bx + si + 0x22], al    ; 0x0dbf
    mov ax, 0xa                      ; 0x0dc2
    push ax                          ; 0x0dc5
    mov ax, 0x2c                     ; 0x0dc6
    imul word [bp - 0x0002]          ; 0x0dc9
    mov cx, ax                       ; 0x0dcc
    mov ax, word [bp - 0x0004]       ; 0x0dce
    shl ax, 1                        ; 0x0dd1
    mov bx, ax                       ; 0x0dd3
    mov ax, word [bx - 0x7b7e]       ; 0x0dd5
    add ax, cx                       ; 0x0dd9
    add ax, strict word 0xe          ; 0x0ddb
    push ax                          ; 0x0dde
    mov ax, 0x248                    ; 0x0ddf
    imul word [bp - 0x0002]          ; 0x0de2
    add ax, 0x5d5a                   ; 0x0de5
    push ax                          ; 0x0de8
    call ds_dispatch_fedc            ; 0x0de9
    add sp, byte 6                   ; 0x0dec
    mov ax, 0x248                    ; 0x0def
    imul word [bp - 0x0002]          ; 0x0df2
    mov bx, ax                       ; 0x0df5
    mov al, byte [bx + 0x5e32]       ; 0x0df7
    push ax                          ; 0x0dfb
    mov ax, 0x2c                     ; 0x0dfc
    imul word [bp - 0x0002]          ; 0x0dff
    mov si, ax                       ; 0x0e02
    mov ax, word [bp - 0x0004]       ; 0x0e04
    shl ax, 1                        ; 0x0e07
    mov bx, ax                       ; 0x0e09
    mov bx, word [bx - 0x7b7e]       ; 0x0e0b
    pop ax                           ; 0x0e0f
    mov byte [bx + si + 0x23], al    ; 0x0e10
    mov ax, 0x2c                     ; 0x0e13
    imul word [bp - 0x0002]          ; 0x0e16
    mov si, ax                       ; 0x0e19
    mov ax, word [bp - 0x0004]       ; 0x0e1b
    shl ax, 1                        ; 0x0e1e
    mov bx, ax                       ; 0x0e20
    mov bx, word [bx - 0x7b7e]       ; 0x0e22
    mov byte [bx + si + 0x2a], 0xff  ; 0x0e26
    mov ax, 0x2c                     ; 0x0e2a
    imul word [bp - 0x0002]          ; 0x0e2d
    mov si, ax                       ; 0x0e30
    mov ax, word [bp - 0x0004]       ; 0x0e32
    shl ax, 1                        ; 0x0e35
    mov bx, ax                       ; 0x0e37
    mov bx, word [bx - 0x7b7e]       ; 0x0e39
    mov byte [bx + si + 0x1f], 1     ; 0x0e3d
    mov ax, 0x248                    ; 0x0e41
    imul word [bp - 0x0002]          ; 0x0e44
    mov bx, ax                       ; 0x0e47
    cmp byte [bx + 0x5d82], 0        ; 0x0e49
    jbe short @..local.l63           ; 0x0e4e
    mov ax, 0x2c                     ; 0x0e50
    imul word [bp - 0x0002]          ; 0x0e53
    mov si, ax                       ; 0x0e56
    mov ax, word [bp - 0x0004]       ; 0x0e58
    shl ax, 1                        ; 0x0e5b
    mov bx, ax                       ; 0x0e5d
    mov bx, word [bx - 0x7b7e]       ; 0x0e5f
    mov al, byte [bx + si + 0x28]    ; 0x0e63
    cbw                              ; 0x0e66
    push ax                          ; 0x0e67
    mov ax, 0x248                    ; 0x0e68
    imul word [bp - 0x0002]          ; 0x0e6b
    mov bx, ax                       ; 0x0e6e
    mov al, byte [bx + 0x5d82]       ; 0x0e70
    sub ah, ah                       ; 0x0e74
    mov cx, 0xa                      ; 0x0e76
    cwd                              ; 0x0e79
    idiv cx                          ; 0x0e7a
    mov cx, ax                       ; 0x0e7c
    pop ax                           ; 0x0e7e
    add ax, cx                       ; 0x0e7f
    inc ax                           ; 0x0e81
    inc ax                           ; 0x0e82
    mov cx, word [bp - 0x0004]       ; 0x0e83
    shl cx, 1                        ; 0x0e86
    mov bx, cx                       ; 0x0e88
    mov bx, word [bx - 0x7b7e]       ; 0x0e8a
    mov byte [bx + si + 0x28], al    ; 0x0e8e
@..local.l63:
    mov ax, 0x248                    ; 0x0e91
    imul word [bp - 0x0002]          ; 0x0e94
    mov bx, ax                       ; 0x0e97
    cmp byte [bx + 0x5d7f], 0        ; 0x0e99
    jbe short @..local.l64           ; 0x0e9e
    mov ax, 0x2c                     ; 0x0ea0
    imul word [bp - 0x0002]          ; 0x0ea3
    mov si, ax                       ; 0x0ea6
    mov ax, word [bp - 0x0004]       ; 0x0ea8
    shl ax, 1                        ; 0x0eab
    mov bx, ax                       ; 0x0ead
    mov bx, word [bx - 0x7b7e]       ; 0x0eaf
    mov al, byte [bx + si + 0x26]    ; 0x0eb3
    cbw                              ; 0x0eb6
    push ax                          ; 0x0eb7
    mov ax, 0x248                    ; 0x0eb8
    imul word [bp - 0x0002]          ; 0x0ebb
    mov bx, ax                       ; 0x0ebe
    mov al, byte [bx + 0x5d7f]       ; 0x0ec0
    sub ah, ah                       ; 0x0ec4
    mov cx, 0xf                      ; 0x0ec6
    cwd                              ; 0x0ec9
    idiv cx                          ; 0x0eca
    mov cx, ax                       ; 0x0ecc
    inc ax                           ; 0x0ece
    inc ax                           ; 0x0ecf
    mov cx, ax                       ; 0x0ed0
    pop ax                           ; 0x0ed2
    sub ax, cx                       ; 0x0ed3
    mov cx, word [bp - 0x0004]       ; 0x0ed5
    shl cx, 1                        ; 0x0ed8
    mov bx, cx                       ; 0x0eda
    mov bx, word [bx - 0x7b7e]       ; 0x0edc
    mov byte [bx + si + 0x26], al    ; 0x0ee0
@..local.l64:
    mov ax, 0x248                    ; 0x0ee3
    imul word [bp - 0x0002]          ; 0x0ee6
    mov bx, ax                       ; 0x0ee9
    cmp byte [bx + 0x5d81], 0        ; 0x0eeb
    jbe short @..local.l65           ; 0x0ef0
    mov ax, 0x2c                     ; 0x0ef2
    imul word [bp - 0x0002]          ; 0x0ef5
    mov si, ax                       ; 0x0ef8
    mov ax, word [bp - 0x0004]       ; 0x0efa
    shl ax, 1                        ; 0x0efd
    mov bx, ax                       ; 0x0eff
    mov bx, word [bx - 0x7b7e]       ; 0x0f01
    mov al, byte [bx + si + 0x27]    ; 0x0f05
    cbw                              ; 0x0f08
    push ax                          ; 0x0f09
    mov ax, 0x248                    ; 0x0f0a
    imul word [bp - 0x0002]          ; 0x0f0d
    mov bx, ax                       ; 0x0f10
    mov al, byte [bx + 0x5d81]       ; 0x0f12
    sub ah, ah                       ; 0x0f16
    mov cx, 0xf                      ; 0x0f18
    cwd                              ; 0x0f1b
    idiv cx                          ; 0x0f1c
    mov cx, ax                       ; 0x0f1e
    inc ax                           ; 0x0f20
    inc ax                           ; 0x0f21
    mov cx, ax                       ; 0x0f22
    pop ax                           ; 0x0f24
    sub ax, cx                       ; 0x0f25
    mov cx, word [bp - 0x0004]       ; 0x0f27
    shl cx, 1                        ; 0x0f2a
    mov bx, cx                       ; 0x0f2c
    mov bx, word [bx - 0x7b7e]       ; 0x0f2e
    mov byte [bx + si + 0x27], al    ; 0x0f32
@..local.l65:
    mov ax, 0x248                    ; 0x0f35
    imul word [bp - 0x0002]          ; 0x0f38
    mov bx, ax                       ; 0x0f3b
    cmp byte [bx + 0x5d80], 0        ; 0x0f3d
    jbe short @..local.l66           ; 0x0f42
    mov ax, 0x2c                     ; 0x0f44
    imul word [bp - 0x0002]          ; 0x0f47
    mov si, ax                       ; 0x0f4a
    mov ax, word [bp - 0x0004]       ; 0x0f4c
    shl ax, 1                        ; 0x0f4f
    mov bx, ax                       ; 0x0f51
    mov bx, word [bx - 0x7b7e]       ; 0x0f53
    mov al, byte [bx + si + 0x29]    ; 0x0f57
    cbw                              ; 0x0f5a
    push ax                          ; 0x0f5b
    mov ax, 0x248                    ; 0x0f5c
    imul word [bp - 0x0002]          ; 0x0f5f
    mov bx, ax                       ; 0x0f62
    mov al, byte [bx + 0x5d80]       ; 0x0f64
    sub ah, ah                       ; 0x0f68
    mov cx, 0xa                      ; 0x0f6a
    cwd                              ; 0x0f6d
    idiv cx                          ; 0x0f6e
    mov cx, ax                       ; 0x0f70
    pop ax                           ; 0x0f72
    add ax, cx                       ; 0x0f73
    inc ax                           ; 0x0f75
    inc ax                           ; 0x0f76
    mov cx, word [bp - 0x0004]       ; 0x0f77
    shl cx, 1                        ; 0x0f7a
    mov bx, cx                       ; 0x0f7c
    mov bx, word [bx - 0x7b7e]       ; 0x0f7e
    mov byte [bx + si + 0x29], al    ; 0x0f82
@..local.l66:
    inc word [bp - 0x0002]           ; 0x0f85
@..local.l67:
    mov ax, word [bp - 0x0002]       ; 0x0f88
    cmp ax, word [data_69c8]         ; 0x0f8b
    jge short @..local.l68           ; 0x0f8f
    jmp near @..api_idx_0004_4.l4    ; 0x0f91
@..local.l68:
    ret                              ; 0x0f94
api_idx_000a_2:
    mov ax, 0xfff6                   ; 0x0f95
    call ds_dispatch_f40b            ; 0x0f98
    mov ax, word [bp + 0x4]          ; 0x0f9b
    shl ax, 1                        ; 0x0f9e
    mov bx, ax                       ; 0x0fa0
    mov bx, word [bx - 0x7b7e]       ; 0x0fa2
    cmp byte [bx + 0x19f], 0xff      ; 0x0fa6
    jne short @..local.l69           ; 0x0fab
    ret                              ; 0x0fad
@..local.l69:
    mov al, byte [bx + 0x19f]        ; 0x0fae
    cbw                              ; 0x0fb2
    mov word [bp - 0x0002], ax       ; 0x0fb3
    mov word [bp - 0x000a], 0        ; 0x0fb6
    cmp word [bp + 0xa], byte 0xff   ; 0x0fbb
    jne short @..local.l70           ; 0x0fbf
    mov word [bp + 0xa], 0           ; 0x0fc1
    mov cx, 0x15e                    ; 0x0fc6
    imul cx                          ; 0x0fc9
    mov bx, ax                       ; 0x0fcb
    mov al, byte [bx + 0x6b75]       ; 0x0fcd
    sub ah, ah                       ; 0x0fd1
    cmp ax, 0xfe                     ; 0x0fd3
    je short @..local.l70            ; 0x0fd6
    mov word [bp - 0x000a], 1        ; 0x0fd8
@..local.l70:
    mov ax, 0x15e                    ; 0x0fdd
    imul word [bp - 0x0002]          ; 0x0fe0
    add ax, word [bp + 0xa]          ; 0x0fe3
    mov bx, ax                       ; 0x0fe6
    mov al, byte [bx + 0x6a1a]       ; 0x0fe8
    sub ah, ah                       ; 0x0fec
    mov word [bp - 0x0004], ax       ; 0x0fee
    jmp near @..local.l78            ; 0x0ff1
@..local.l71:
    mov ax, 0x15e                    ; 0x0ff4
    imul word [bp - 0x0002]          ; 0x0ff7
    add ax, word [bp - 0x0004]       ; 0x0ffa
    mov bx, ax                       ; 0x0ffd
    mov al, byte [bx + 0x6a22]       ; 0x0fff
    sub ah, ah                       ; 0x1003
    mov word [bp - 0x0006], ax       ; 0x1005
    cmp word [bp + 0xa], byte 0      ; 0x1008
    je short @..local.l72            ; 0x100c
    jmp near @..local.l76            ; 0x100e
@..local.l72:
    mov ax, 0x15e                    ; 0x1011
    imul word [bp - 0x0002]          ; 0x1014
    mov bx, ax                       ; 0x1017
    cmp byte [bx + 0x6b75], 0        ; 0x1019
    jbe short @..local.l76           ; 0x101e
    mov al, byte [bx + 0x6b75]       ; 0x1020
    sub ah, ah                       ; 0x1024
    cmp ax, 0xfe                     ; 0x1026
    jge short @..local.l76           ; 0x1029
    cmp ax, 0xfd                     ; 0x102b
    jne short @..local.l73           ; 0x102e
    mov word [bp - 0x0006], 0        ; 0x1030
    mov word [bp - 0x0008], 0        ; 0x1035
    jmp short @..local.l75           ; 0x103a
@..local.l73:
    mov word [bp - 0x0008], ax       ; 0x103c
    mov ax, word [bp + 0x4]          ; 0x103f
    shl ax, 1                        ; 0x1042
    mov bx, ax                       ; 0x1044
    mov bx, word [bx - 0x7b70]       ; 0x1046
    cmp byte [bx + 0xd7], 0x47       ; 0x104a
    jne short @..local.l75           ; 0x104f
    cmp word [data_90ba], byte 1     ; 0x1051
    jne short @..local.l74           ; 0x1056
    mov ax, word [data_8460]         ; 0x1058
    mov cx, 0x100                    ; 0x105b
    cwd                              ; 0x105e
    idiv cx                          ; 0x105f
    mov word [bp - 0x0006], ax       ; 0x1061
    mov word [bp - 0x0008], dx       ; 0x1064
    jmp short @..local.l75           ; 0x1067
@..local.l74:
    cmp word [bp - 0x000a], byte 0   ; 0x1069
    jne short @..local.l75           ; 0x106d
    mov word [bp - 0x0006], 1        ; 0x106f
    mov word [bp - 0x0008], 0xb      ; 0x1074
@..local.l75:
    jmp short @..local.l77           ; 0x1079
@..local.l76:
    mov ax, 0x15e                    ; 0x107b
    imul word [bp - 0x0002]          ; 0x107e
    add ax, word [bp - 0x0004]       ; 0x1081
    mov bx, ax                       ; 0x1084
    mov al, byte [bx + 0x6a2c]       ; 0x1086
    sub ah, ah                       ; 0x108a
    push ax                          ; 0x108c
    call ds_dispatch_b7a9            ; 0x108d
    pop cx                           ; 0x1090
    add word [bp - 0x0006], ax       ; 0x1091
    mov ax, 0x15e                    ; 0x1094
    imul word [bp - 0x0002]          ; 0x1097
    add ax, word [bp - 0x0006]       ; 0x109a
    mov bx, ax                       ; 0x109d
    mov al, byte [bx + 0x6a40]       ; 0x109f
    sub ah, ah                       ; 0x10a3
    mov word [bp - 0x0008], ax       ; 0x10a5
    cmp word [bp - 0x000a], byte 0   ; 0x10a8
    je short @..local.l77            ; 0x10ac
    mov al, byte [bx + 0x6a4a]       ; 0x10ae
    sub ah, ah                       ; 0x10b2
    push ax                          ; 0x10b4
    call ds_dispatch_b7a9            ; 0x10b5
    pop cx                           ; 0x10b8
    add word [bp - 0x0008], ax       ; 0x10b9
@..local.l77:
    mov al, byte [bp + 0xa]          ; 0x10bc
    push ax                          ; 0x10bf
    mov ax, 3                        ; 0x10c0
    imul word [bp + 0x6]             ; 0x10c3
    mov cx, ax                       ; 0x10c6
    add ax, word [bp + 0x8]          ; 0x10c8
    mov bx, ax                       ; 0x10cb
    pop ax                           ; 0x10cd
    mov byte [bx - 0x7bd0], al       ; 0x10ce
    mov al, byte [bp - 0x0006]       ; 0x10d2
    push ax                          ; 0x10d5
    mov ax, 0x5a                     ; 0x10d6
    imul word [bp + 0x6]             ; 0x10d9
    mov cx, ax                       ; 0x10dc
    mov ax, 0x1e                     ; 0x10de
    imul word [bp + 0x8]             ; 0x10e1
    mov dx, ax                       ; 0x10e4
    add cx, ax                       ; 0x10e6
    mov ax, 3                        ; 0x10e8
    imul word [bp - 0x0004]          ; 0x10eb
    mov dx, ax                       ; 0x10ee
    add cx, ax                       ; 0x10f0
    mov bx, cx                       ; 0x10f2
    pop ax                           ; 0x10f4
    mov byte [bx - 0x7cde], al       ; 0x10f5
    mov al, byte [bp - 0x0008]       ; 0x10f9
    mov byte [bx - 0x7cdd], al       ; 0x10fc
    mov ax, 0x15e                    ; 0x1100
    imul word [bp - 0x0002]          ; 0x1103
    mov cx, word [bp - 0x0008]       ; 0x1106
    shl cx, 1                        ; 0x1109
    shl cx, 1                        ; 0x110b
    add ax, cx                       ; 0x110d
    mov bx, ax                       ; 0x110f
    mov al, byte [bx + 0x6ac1]       ; 0x1111
    inc al                           ; 0x1115
    push ax                          ; 0x1117
    mov ax, 0x5a                     ; 0x1118
    imul word [bp + 0x6]             ; 0x111b
    mov cx, ax                       ; 0x111e
    mov ax, 0x1e                     ; 0x1120
    imul word [bp + 0x8]             ; 0x1123
    mov dx, ax                       ; 0x1126
    add cx, ax                       ; 0x1128
    mov ax, 3                        ; 0x112a
    imul word [bp - 0x0004]          ; 0x112d
    mov dx, ax                       ; 0x1130
    add cx, ax                       ; 0x1132
    mov bx, cx                       ; 0x1134
    pop ax                           ; 0x1136
    mov byte [bx - 0x7cdc], al       ; 0x1137
    mov al, byte [bx - 0x7cdc]       ; 0x113b
    sub ah, ah                       ; 0x113f
    mov cx, ax                       ; 0x1141
    push cx                          ; 0x1143
    mov ax, 0x15e                    ; 0x1144
    imul word [bp - 0x0002]          ; 0x1147
    mov cx, word [bp - 0x0008]       ; 0x114a
    shl cx, 1                        ; 0x114d
    shl cx, 1                        ; 0x114f
    add ax, cx                       ; 0x1151
    mov bx, ax                       ; 0x1153
    mov al, byte [bx + 0x6ac2]       ; 0x1155
    sub ah, ah                       ; 0x1159
    push ax                          ; 0x115b
    call ds_dispatch_b7a9            ; 0x115c
    pop cx                           ; 0x115f
    pop cx                           ; 0x1160
    add ax, cx                       ; 0x1161
    push ax                          ; 0x1163
    mov ax, 0x5a                     ; 0x1164
    imul word [bp + 0x6]             ; 0x1167
    mov cx, ax                       ; 0x116a
    mov ax, 0x1e                     ; 0x116c
    imul word [bp + 0x8]             ; 0x116f
    mov dx, ax                       ; 0x1172
    add cx, ax                       ; 0x1174
    mov ax, 3                        ; 0x1176
    imul word [bp - 0x0004]          ; 0x1179
    mov dx, ax                       ; 0x117c
    add cx, ax                       ; 0x117e
    mov bx, cx                       ; 0x1180
    pop ax                           ; 0x1182
    mov byte [bx - 0x7cdc], al       ; 0x1183
    inc word [bp - 0x0004]           ; 0x1187
@..local.l78:
    mov ax, 0x15e                    ; 0x118a
    imul word [bp - 0x0002]          ; 0x118d
    add ax, word [bp + 0xa]          ; 0x1190
    mov bx, ax                       ; 0x1193
    mov al, byte [bx + 0x6a1a]       ; 0x1195
    sub ah, ah                       ; 0x1199
    push ax                          ; 0x119b
    mov al, byte [bx + 0x6a1e]       ; 0x119c
    sub ah, ah                       ; 0x11a0
    mov cx, ax                       ; 0x11a2
    pop ax                           ; 0x11a4
    add ax, cx                       ; 0x11a5
    cmp ax, word [bp - 0x0004]       ; 0x11a7
    jle short @..local.l79           ; 0x11aa
    jmp near @..local.l71            ; 0x11ac
@..local.l79:
    ret                              ; 0x11af
api_idx_000c_2:
    mov ax, 0xfff4                   ; 0x11b0
    call ds_dispatch_f40b            ; 0x11b3
    mov word [bp - 0x0002], 0        ; 0x11b6
    jmp near @..api_idx_000c_2.l4    ; 0x11bb
@..api_idx_000c_2.l1:
    mov ax, 0x2c                     ; 0x11be
    imul word [bp - 0x0002]          ; 0x11c1
    mov si, ax                       ; 0x11c4
    mov ax, word [bp + 0x4]          ; 0x11c6
    shl ax, 1                        ; 0x11c9
    mov bx, ax                       ; 0x11cb
    mov bx, word [bx - 0x7b7e]       ; 0x11cd
    mov al, byte [bx + si + 0x2a]    ; 0x11d1
    cbw                              ; 0x11d4
    mov word [bp - 0x0004], ax       ; 0x11d5
    cmp ax, strict word 0xffff       ; 0x11d8
    jne short @..api_idx_000c_2.l2   ; 0x11db
    jmp near @..api_idx_000c_2.l3    ; 0x11dd
@..api_idx_000c_2.l2:
    mov cx, 0xa                      ; 0x11e0
    cwd                              ; 0x11e3
    idiv cx                          ; 0x11e4
    mov word [bp - 0x0006], ax       ; 0x11e6
    mov word [bp - 0x0008], dx       ; 0x11e9
    mov cx, 6                        ; 0x11ec
    imul cx                          ; 0x11ef
    mov cx, word [bp - 0x0008]       ; 0x11f1
    shl cx, 1                        ; 0x11f4
    add ax, cx                       ; 0x11f6
    mov bx, ax                       ; 0x11f8
    mov word [bx - 0x7bc6], 0        ; 0x11fa
    mov ax, word [bp + 0x4]          ; 0x1200
    shl ax, 1                        ; 0x1203
    mov bx, ax                       ; 0x1205
    mov bx, word [bx - 0x7b7e]       ; 0x1207
    mov byte [bx + si + 0x2a], 0xff  ; 0x120b
    mov ax, 6                        ; 0x120f
    imul word [bp - 0x0006]          ; 0x1212
    mov cx, word [bp - 0x0008]       ; 0x1215
    shl cx, 1                        ; 0x1218
    add ax, cx                       ; 0x121a
    mov bx, ax                       ; 0x121c
    mov ax, word [bx + 0x5ec]        ; 0x121e
    mov cx, 0xa                      ; 0x1222
    cwd                              ; 0x1225
    idiv cx                          ; 0x1226
    mov word [bp - 0x000a], ax       ; 0x1228
    mov word [bp - 0x000c], dx       ; 0x122b
    mov cx, 6                        ; 0x122e
    imul cx                          ; 0x1231
    mov cx, word [bp - 0x000c]       ; 0x1233
    shl cx, 1                        ; 0x1236
    add ax, cx                       ; 0x1238
    mov bx, ax                       ; 0x123a
    cmp word [bx - 0x7bc6], byte 0   ; 0x123c
    jne short @..api_idx_000c_2.l3   ; 0x1241
    mov ax, 0xa                      ; 0x1243
    imul word [bp + 0x4]             ; 0x1246
    add ax, word [bp - 0x0002]       ; 0x1249
    mov word [bx - 0x7bc6], ax       ; 0x124c
    mov ax, 0xa                      ; 0x1250
    imul word [bp - 0x000a]          ; 0x1253
    add ax, word [bp - 0x000c]       ; 0x1256
    push ax                          ; 0x1259
    mov ax, 0x2c                     ; 0x125a
    imul word [bp - 0x0002]          ; 0x125d
    mov si, ax                       ; 0x1260
    mov ax, word [bp + 0x4]          ; 0x1262
    shl ax, 1                        ; 0x1265
    mov bx, ax                       ; 0x1267
    mov bx, word [bx - 0x7b7e]       ; 0x1269
    pop ax                           ; 0x126d
    mov byte [bx + si + 0x2a], al    ; 0x126e
    mov ax, 0xffff                   ; 0x1271
    push ax                          ; 0x1274
    push word [bp - 0x000c]          ; 0x1275
    push word [bp - 0x000a]          ; 0x1278
    push word [bp + 0x4]             ; 0x127b
    call api_idx_000a_2              ; 0x127e
    add sp, byte 8                   ; 0x1281
@..api_idx_000c_2.l3:
    inc word [bp - 0x0002]           ; 0x1284
@..api_idx_000c_2.l4:
    mov ax, word [bp + 0x4]          ; 0x1287
    shl ax, 1                        ; 0x128a
    mov bx, ax                       ; 0x128c
    mov bx, word [bx - 0x7b7e]       ; 0x128e
    mov al, byte [bx + 0x1a1]        ; 0x1292
    sub ah, ah                       ; 0x1296
    cmp ax, word [bp - 0x0002]       ; 0x1298
    jle short @..api_idx_000c_2.l5   ; 0x129b
    jmp near @..api_idx_000c_2.l1    ; 0x129d
@..api_idx_000c_2.l5:
    call loc_2cc7                    ; 0x12a0
    mov ax, 4                        ; 0x12a3
    push ax                          ; 0x12a6
    call api_idx_0004                ; 0x12a7
    pop cx                           ; 0x12aa
    ret                              ; 0x12ab
api_idx_000e:
    mov ax, 0xfff2                   ; 0x12ac
    call ds_dispatch_f40b            ; 0x12af
    mov ax, 0x2c                     ; 0x12b2
    imul word [bp + 0x6]             ; 0x12b5
    mov cx, ax                       ; 0x12b8
    mov ax, word [bp + 0x4]          ; 0x12ba
    shl ax, 1                        ; 0x12bd
    mov bx, ax                       ; 0x12bf
    mov ax, word [bx - 0x7b7e]       ; 0x12c1
    add ax, cx                       ; 0x12c5
    mov word [bp - 0x0004], ax       ; 0x12c7
    mov word [bp - 0x000a], 0        ; 0x12ca
    mov bx, ax                       ; 0x12cf
    cmp byte [bx + 0x10], 0          ; 0x12d1
    jbe short @..api_idx_000e.l1     ; 0x12d5
    mov ax, word [bx + 0x8]          ; 0x12d7
    mov bx, 5                        ; 0x12da
    imul bx                          ; 0x12dd
    mov cx, 0x64                     ; 0x12df
    mov bx, 0                        ; 0x12e2
    call ds_dispatch_f99f            ; 0x12e5
    mov word [bp - 0x0002], ax       ; 0x12e8
    push ax                          ; 0x12eb
    call ds_dispatch_b7a9            ; 0x12ec
    pop cx                           ; 0x12ef
    mov bx, word [bp - 0x0004]       ; 0x12f0
    mov cx, word [bx + 0x6]          ; 0x12f3
    add ax, cx                       ; 0x12f6
    inc ax                           ; 0x12f8
    mov word [bx + 0x6], ax          ; 0x12f9
    mov ax, word [bx + 0x6]          ; 0x12fc
    cmp ax, word [bx + 0x8]          ; 0x12ff
    jle short @..api_idx_000e.l1     ; 0x1302
    mov ax, word [bx + 0x8]          ; 0x1304
    mov word [bx + 0x6], ax          ; 0x1307
@..api_idx_000e.l1:
    mov bx, word [bp - 0x0004]       ; 0x130a
    cmp word [bx + 0x6], byte 0      ; 0x130d
    jg short @..api_idx_000e.l2      ; 0x1311
    mov word [bx + 0x6], 0           ; 0x1313
    mov ax, 6                        ; 0x1318
    push ax                          ; 0x131b
    call ds_dispatch_b7a9            ; 0x131c
    pop cx                           ; 0x131f
    add ax, strict word 6            ; 0x1320
    mov bx, word [bp - 0x0004]       ; 0x1323
    mov byte [bx + 0x10], al         ; 0x1326
@..api_idx_000e.l2:
    mov ax, word [bp + 0x8]          ; 0x1329
    sub ax, word [bp + 0xa]          ; 0x132c
    push ax                          ; 0x132f
    mov bx, word [bp - 0x0004]       ; 0x1330
    mov al, byte [bx + 0x23]         ; 0x1333
    sub ah, ah                       ; 0x1336
    mov cx, ax                       ; 0x1338
    pop ax                           ; 0x133a
    sub ax, cx                       ; 0x133b
    mov word [bp - 0x0006], ax       ; 0x133d
    mov ax, word [bp - 0x0006]       ; 0x1340
    add word [bx + 0x2], ax          ; 0x1343
    mov bx, word [bp - 0x0004]       ; 0x1346
    mov ax, word [bx + 0x2]          ; 0x1349
    mov cx, word [bx + 0x4]          ; 0x134c
    cmp ax, cx                       ; 0x134f
    jle short @..api_idx_000e.l3     ; 0x1351
    mov word [bx + 0x2], cx          ; 0x1353
@..api_idx_000e.l3:
    mov bx, word [bp - 0x0004]       ; 0x1356
    cmp word [bx + 0x2], byte 0      ; 0x1359
    jle short @..api_idx_000e.l4     ; 0x135d
    jmp near @..api_idx_000e.l8      ; 0x135f
@..api_idx_000e.l4:
    mov word [bx + 0x2], 0           ; 0x1362
    mov bx, word [bp - 0x0004]       ; 0x1367
    mov word [bx + 0x6], 0           ; 0x136a
    mov bx, word [bp - 0x0004]       ; 0x136f
    mov byte [bx + 0x22], 3          ; 0x1372
    mov word [bp - 0x000a], 1        ; 0x1376
    cmp word [bp + 0x4], byte 0      ; 0x137b
    jne short @..api_idx_000e.l5     ; 0x137f
    jmp near @..api_idx_000e.l8      ; 0x1381
@..api_idx_000e.l5:
    mov ax, word [bp + 0x4]          ; 0x1384
    cmp ax, strict word 1            ; 0x1387
    jl short @..api_idx_000e.l6      ; 0x138a
    cmp ax, strict word 5            ; 0x138c
    jg short @..api_idx_000e.l6      ; 0x138f
    mov ax, word [bp + 0x4]          ; 0x1391
    shl ax, 1                        ; 0x1394
    mov bx, ax                       ; 0x1396
    mov bx, word [bx - 0x7b70]       ; 0x1398
    mov ax, word [bx + 0x40]         ; 0x139c
    mov dx, word [bx + 0x42]         ; 0x139f
    add word [data_84a2], ax         ; 0x13a2
    adc word [data_84a4], dx         ; 0x13a6
@..api_idx_000e.l6:
    mov bx, word [bp - 0x0004]       ; 0x13aa
    cmp byte [bx + 0x2a], 0xff       ; 0x13ad
    je short @..api_idx_000e.l7      ; 0x13b1
    mov al, byte [bx + 0x2a]         ; 0x13b3
    cbw                              ; 0x13b6
    mov cx, 0xa                      ; 0x13b7
    cwd                              ; 0x13ba
    idiv cx                          ; 0x13bb
    mov word [bp - 0x000c], ax       ; 0x13bd
    mov al, byte [bx + 0x2a]         ; 0x13c0
    cbw                              ; 0x13c3
    cwd                              ; 0x13c4
    idiv cx                          ; 0x13c5
    mov word [bp - 0x000e], dx       ; 0x13c7
    mov ax, 6                        ; 0x13ca
    imul word [bp - 0x000c]          ; 0x13cd
    mov cx, word [bp - 0x000e]       ; 0x13d0
    shl cx, 1                        ; 0x13d3
    add ax, cx                       ; 0x13d5
    mov bx, ax                       ; 0x13d7
    mov word [bx - 0x7bc6], 0        ; 0x13d9
    mov bx, word [bp - 0x0004]       ; 0x13df
    mov byte [bx + 0x2a], 0xff       ; 0x13e2
@..api_idx_000e.l7:
    mov ax, word [bp + 0x4]          ; 0x13e6
    shl ax, 1                        ; 0x13e9
    mov bx, ax                       ; 0x13eb
    mov bx, word [bx - 0x7b70]       ; 0x13ed
    mov al, byte [bx + 0xe2]         ; 0x13f1
    sub ah, ah                       ; 0x13f5
    test ax, 1                       ; 0x13f7
    je short @..api_idx_000e.l8      ; 0x13fa
    mov ax, 1                        ; 0x13fc
    push ax                          ; 0x13ff
    mov al, byte [bx + 0xe0]         ; 0x1400
    sub ah, ah                       ; 0x1404
    push ax                          ; 0x1406
    mov ax, 0x5842                   ; 0x1407
    push ax                          ; 0x140a
    call ds_dispatch_ec41            ; 0x140b
    add sp, byte 6                   ; 0x140e
@..api_idx_000e.l8:
    mov word [bp - 0x0008], 0        ; 0x1411
@..api_idx_000e.l9:
    mov bx, word [bp - 0x0004]       ; 0x1416
    mov si, word [bp - 0x0008]       ; 0x1419
    cmp byte [bx + si + 0xe], 0      ; 0x141c
    jbe short @..api_idx_000e.l10    ; 0x1420
    mov al, byte [bx + si + 0xe]     ; 0x1422
    sub ah, ah                       ; 0x1425
    cmp ax, 0xff                     ; 0x1427
    je short @..api_idx_000e.l10     ; 0x142a
    dec byte [bx + si + 0xe]         ; 0x142c
@..api_idx_000e.l10:
    inc word [bp - 0x0008]           ; 0x142f
    mov ax, word [bp - 0x0008]       ; 0x1432
    cmp ax, strict word 0xa          ; 0x1435
    jl short @..api_idx_000e.l9      ; 0x1438
    mov bx, word [bp - 0x0004]       ; 0x143a
    cmp byte [bx + 0x13], 0          ; 0x143d
    jne short @..api_idx_000e.l11    ; 0x1441
    mov byte [bx + 0x23], 0          ; 0x1443
@..api_idx_000e.l11:
    mov bx, word [bp - 0x0004]       ; 0x1447
    mov al, byte [bx + 0x29]         ; 0x144a
    cbw                              ; 0x144d
    mov word [bp - 0x0008], ax       ; 0x144e
    cmp ax, strict word 0            ; 0x1451
    jge short @..api_idx_000e.l12    ; 0x1454
    inc ax                           ; 0x1456
    jmp short @..api_idx_000e.l13    ; 0x1457
@..api_idx_000e.l12:
    mov ax, word [bp - 0x0008]       ; 0x1459
    push ax                          ; 0x145c
    cmp ax, strict word 0            ; 0x145d
    pop ax                           ; 0x1460
    jle short @..api_idx_000e.l13    ; 0x1461
    dec ax                           ; 0x1463
@..api_idx_000e.l13:
    mov byte [bx + 0x29], al         ; 0x1464
    cmp word [bp + 0x4], byte 0      ; 0x1467
    jne short @..api_idx_000e.l14    ; 0x146b
    mov ax, 0x248                    ; 0x146d
    imul word [bp - 0x0002]          ; 0x1470
    mov bx, ax                       ; 0x1473
    cmp byte [bx + 0x5d80], 0        ; 0x1475
    jbe short @..api_idx_000e.l14    ; 0x147a
    mov al, byte [bx + 0x5d80]       ; 0x147c
    sub ah, ah                       ; 0x1480
    mov cx, 0xa                      ; 0x1482
    cwd                              ; 0x1485
    idiv cx                          ; 0x1486
    inc ax                           ; 0x1488
    inc ax                           ; 0x1489
    mov word [bp - 0x0008], ax       ; 0x148a
    mov bx, word [bp - 0x0004]       ; 0x148d
    mov al, byte [bx + 0x29]         ; 0x1490
    cbw                              ; 0x1493
    mov cx, ax                       ; 0x1494
    mov ax, word [bp - 0x0008]       ; 0x1496
    cmp cx, ax                       ; 0x1499
    jge short @..api_idx_000e.l14    ; 0x149b
    inc byte [bx + 0x29]             ; 0x149d
@..api_idx_000e.l14:
    mov bx, word [bp - 0x0004]       ; 0x14a0
    cmp byte [bx + 0x24], 0          ; 0x14a3
    jbe short @..local.l80           ; 0x14a7
    dec byte [bx + 0x24]             ; 0x14a9
@..local.l80:
    mov bx, word [bp - 0x0004]       ; 0x14ac
    cmp byte [bx + 0x2b], 3          ; 0x14af
    jne short @..local.l81           ; 0x14b3
    mov byte [bx + 0x2b], 0          ; 0x14b5
@..local.l81:
    mov bx, word [bp - 0x0004]       ; 0x14b9
    cmp byte [bx + 0x22], 3          ; 0x14bc
    je short @..local.l82            ; 0x14c0
    cmp word [bp + 0x4], byte 0      ; 0x14c2
    je short @..local.l82            ; 0x14c6
    cmp byte [bx + 0x2b], data_0002  ; 0x14c8
    jne short @..local.l82           ; 0x14cc
    mov word [bx + 0x2], 0           ; 0x14ce
    mov bx, word [bp - 0x0004]       ; 0x14d3
    mov word [bx + 0x6], 0           ; 0x14d6
    mov bx, word [bp - 0x0004]       ; 0x14db
    mov byte [bx + 0x22], 3          ; 0x14de
@..local.l82:
    mov ax, word [bp - 0x000a]       ; 0x14e2
    ret                              ; 0x14e5
api_idx_005c:
    mov ax, 0xffa4                   ; 0x14e6
    call ds_dispatch_f40b            ; 0x14e9
    mov word [bp - 0x0002], 0        ; 0x14ec
    mov word [bp - 0x000a], 0        ; 0x14f1
    mov word [bp - 0x0004], 0        ; 0x14f6
    jmp near @..api_idx_005c.l5      ; 0x14fb
@..api_idx_005c.l1:
    mov ax, 0x2c                     ; 0x14fe
    imul word [bp - 0x0004]          ; 0x1501
    mov si, ax                       ; 0x1504
    mov ax, word [bp + 0x4]          ; 0x1506
    shl ax, 1                        ; 0x1509
    mov bx, ax                       ; 0x150b
    mov bx, word [bx - 0x7b7e]       ; 0x150d
    cmp byte [bx + si + 0x22], 3     ; 0x1511
    jae short @..api_idx_005c.l2     ; 0x1515
    mov ax, 0                        ; 0x1517
    push ax                          ; 0x151a
    mov ax, word [bp + 0x4]          ; 0x151b
    shl ax, 1                        ; 0x151e
    mov bx, ax                       ; 0x1520
    mov bx, word [bx - 0x7b70]       ; 0x1522
    mov al, byte [bx + 0xdd]         ; 0x1526
    sub ah, ah                       ; 0x152a
    push ax                          ; 0x152c
    push word [bp - 0x0004]          ; 0x152d
    push word [bp + 0x4]             ; 0x1530
    call api_idx_000e                ; 0x1533
    add sp, byte 8                   ; 0x1536
    cmp ax, strict word 1            ; 0x1539
    jne short @..api_idx_005c.l2     ; 0x153c
    inc word [bp - 0x000a]           ; 0x153e
@..api_idx_005c.l2:
    mov ax, 0x2c                     ; 0x1541
    imul word [bp - 0x0004]          ; 0x1544
    mov si, ax                       ; 0x1547
    mov ax, word [bp + 0x4]          ; 0x1549
    shl ax, 1                        ; 0x154c
    mov bx, ax                       ; 0x154e
    mov bx, word [bx - 0x7b7e]       ; 0x1550
    cmp byte [bx + si + 0x22], 3     ; 0x1554
    jae short @..api_idx_005c.l4     ; 0x1558
    add bx, si                       ; 0x155a
    mov si, bx                       ; 0x155c
    mov ax, 0x2c                     ; 0x155e
    imul word [bp - 0x0002]          ; 0x1561
    mov cx, ax                       ; 0x1564
    mov ax, word [bp + 0x4]          ; 0x1566
    shl ax, 1                        ; 0x1569
    mov bx, ax                       ; 0x156b
    mov ax, word [bx - 0x7b7e]       ; 0x156d
    add ax, cx                       ; 0x1571
    mov di, ax                       ; 0x1573
    mov cx, ds                       ; 0x1575
    mov es, cx                       ; 0x1577
    mov cx, 0x16                     ; 0x1579
    rep movsw                        ; 0x157c
    mov ax, 0x2c                     ; 0x157e
    imul word [bp - 0x0002]          ; 0x1581
    mov si, ax                       ; 0x1584
    mov ax, word [bp + 0x4]          ; 0x1586
    shl ax, 1                        ; 0x1589
    mov bx, ax                       ; 0x158b
    mov bx, word [bx - 0x7b7e]       ; 0x158d
    cmp byte [bx + si + 0x2a], 0xff  ; 0x1591
    je short @..api_idx_005c.l3      ; 0x1595
    mov al, byte [bx + si + 0x2a]    ; 0x1597
    cbw                              ; 0x159a
    mov cx, 0xa                      ; 0x159b
    cwd                              ; 0x159e
    idiv cx                          ; 0x159f
    mov word [bp - 0x0006], ax       ; 0x15a1
    mov al, byte [bx + si + 0x2a]    ; 0x15a4
    cbw                              ; 0x15a7
    cwd                              ; 0x15a8
    idiv cx                          ; 0x15a9
    mov word [bp - 0x0008], dx       ; 0x15ab
    mov ax, word [bp + 0x4]          ; 0x15ae
    imul cx                          ; 0x15b1
    add ax, word [bp - 0x0002]       ; 0x15b3
    push ax                          ; 0x15b6
    mov ax, 6                        ; 0x15b7
    imul word [bp - 0x0006]          ; 0x15ba
    mov cx, ax                       ; 0x15bd
    mov dx, word [bp - 0x0008]       ; 0x15bf
    shl dx, 1                        ; 0x15c2
    add ax, dx                       ; 0x15c4
    mov bx, ax                       ; 0x15c6
    pop ax                           ; 0x15c8
    mov word [bx - 0x7bc6], ax       ; 0x15c9
@..api_idx_005c.l3:
    inc word [bp - 0x0002]           ; 0x15cd
@..api_idx_005c.l4:
    inc word [bp - 0x0004]           ; 0x15d0
@..api_idx_005c.l5:
    mov ax, word [bp + 0x4]          ; 0x15d3
    shl ax, 1                        ; 0x15d6
    mov bx, ax                       ; 0x15d8
    mov bx, word [bx - 0x7b7e]       ; 0x15da
    mov al, byte [bx + 0x1a1]        ; 0x15de
    sub ah, ah                       ; 0x15e2
    cmp ax, word [bp - 0x0004]       ; 0x15e4
    jle short @..api_idx_005c.l6     ; 0x15e7
    jmp near @..api_idx_005c.l1      ; 0x15e9
@..api_idx_005c.l6:
    cmp word [bp - 0x000a], byte 0   ; 0x15ec
    jg short @..api_idx_005c.l7      ; 0x15f0
    jmp near @..api_idx_005c.l11     ; 0x15f2
@..api_idx_005c.l7:
    mov ax, 1                        ; 0x15f5
    push ax                          ; 0x15f8
    call api_idx_000a                ; 0x15f9
    pop cx                           ; 0x15fc
    mov ax, 1                        ; 0x15fd
    push ax                          ; 0x1600
    call api_idx_0004                ; 0x1601
    pop cx                           ; 0x1604
    mov ax, word [bp + 0x4]          ; 0x1605
    shl ax, 1                        ; 0x1608
    mov bx, ax                       ; 0x160a
    mov bx, word [bx - 0x7b7e]       ; 0x160c
    cmp byte [bx + 0x1a1], 1         ; 0x1610
    jne short @..api_idx_005c.l8     ; 0x1615
    mov byte [bp - 0x005c], 0        ; 0x1617
    jmp short @..api_idx_005c.l9     ; 0x161b
@..api_idx_005c.l8:
    lea ax, word [bp - 0x005c]       ; 0x161d
    push ax                          ; 0x1620
    push word [bp - 0x000a]          ; 0x1621
    call ds_dispatch_b27d            ; 0x1624
    add sp, byte 4                   ; 0x1627
    mov ax, 0x90a2                   ; 0x162a
    push ax                          ; 0x162d
    lea ax, word [bp - 0x005c]       ; 0x162e
    push ax                          ; 0x1631
    call ds_dispatch_f32d            ; 0x1632
    add sp, byte 4                   ; 0x1635
@..api_idx_005c.l9:
    mov ax, 1                        ; 0x1638
    cmp word [bp - 0x000a], byte 1   ; 0x163b
    jne short @..api_idx_005c.l10    ; 0x163f
    mov ax, 0                        ; 0x1641
@..api_idx_005c.l10:
    mov cx, 4                        ; 0x1644
    shl ax, cl                       ; 0x1647
    mov cx, ax                       ; 0x1649
    push cx                          ; 0x164b
    mov ax, word [bp + 0x4]          ; 0x164c
    shl ax, 1                        ; 0x164f
    mov bx, ax                       ; 0x1651
    mov bx, word [bx - 0x7b7e]       ; 0x1653
    mov al, byte [bx + 0x1a0]        ; 0x1657
    sub ah, ah                       ; 0x165b
    mov cx, 5                        ; 0x165d
    shl ax, cl                       ; 0x1660
    pop cx                           ; 0x1662
    add cx, ax                       ; 0x1663
    mov ax, word [bp + 0x4]          ; 0x1665
    shl ax, 1                        ; 0x1668
    mov bx, ax                       ; 0x166a
    mov ax, word [bx - 0x7b70]       ; 0x166c
    add ax, cx                       ; 0x1670
    push ax                          ; 0x1672
    lea ax, word [bp - 0x005c]       ; 0x1673
    push ax                          ; 0x1676
    call ds_dispatch_f32d            ; 0x1677
    add sp, byte 4                   ; 0x167a
    lea ax, word [bp - 0x005c]       ; 0x167d
    push ax                          ; 0x1680
    call api_idx_0004_2              ; 0x1681
    pop cx                           ; 0x1684
    lea ax, word [bp - 0x005c]       ; 0x1685
    push ax                          ; 0x1688
    call ds_dispatch_fa90            ; 0x1689
    pop cx                           ; 0x168c
    mov word [bp - 0x000c], ax       ; 0x168d
    mov bx, ax                       ; 0x1690
    add bx, bp                       ; 0x1692
    mov byte [bx - 0x005c], 0x20     ; 0x1694
    lea cx, word [bp - 0x005b]       ; 0x1698
    add ax, cx                       ; 0x169b
    push ax                          ; 0x169d
    mov ax, 0xdc4                    ; 0x169e
    push ax                          ; 0x16a1
    call ds_dispatch_b53b            ; 0x16a2
    add sp, byte 4                   ; 0x16a5
    mov ax, 0x11                     ; 0x16a8
    push ax                          ; 0x16ab
    lea ax, word [bp - 0x005c]       ; 0x16ac
    push ax                          ; 0x16af
    call api_idx_000c                ; 0x16b0
    add sp, byte 4                   ; 0x16b3
    push word [data_905a]            ; 0x16b6
    call api_idx_0004                ; 0x16ba
    pop cx                           ; 0x16bd
@..api_idx_005c.l11:
    mov al, byte [bp - 0x0002]       ; 0x16be
    mov cx, word [bp + 0x4]          ; 0x16c1
    shl cx, 1                        ; 0x16c4
    mov bx, cx                       ; 0x16c6
    mov bx, word [bx - 0x7b7e]       ; 0x16c8
    mov byte [bx + 0x1a1], al        ; 0x16cc
    ret                              ; 0x16d0
math_loc_16d1:
    mov ax, 0                        ; 0x16d1
    call ds_dispatch_f40b            ; 0x16d4
    mov ax, 0x248                    ; 0x16d7
    imul word [bp + 0x4]             ; 0x16da
    add ax, word [bp + 0x6]          ; 0x16dd
    mov bx, ax                       ; 0x16e0
    cmp byte [bx + 0x5d6c], 0x64     ; 0x16e2
    jae short @..math_loc_16d1.l1    ; 0x16e7
    mov al, byte [bx + 0x5d6c]       ; 0x16e9
    sub ah, ah                       ; 0x16ed
    push ax                          ; 0x16ef
    call ds_dispatch_b7a9            ; 0x16f0
    pop cx                           ; 0x16f3
    push ax                          ; 0x16f4
    mov ax, 0x248                    ; 0x16f5
    imul word [bp + 0x4]             ; 0x16f8
    mov bx, ax                       ; 0x16fb
    mov ax, word [bx + 0x5c18]       ; 0x16fd
    imul word [bp + 0x8]             ; 0x1701
    mov cx, ax                       ; 0x1704
    pop ax                           ; 0x1706
    sub ax, cx                       ; 0x1707
    jg short @..math_loc_16d1.l1     ; 0x1709
    add bx, word [bp + 0x6]          ; 0x170b
    inc byte [bx + 0x5d6c]           ; 0x170e
@..math_loc_16d1.l1:
    ret                              ; 0x1712
api_idx_0006:
    mov ax, 0xfffa                   ; 0x1713
    call ds_dispatch_f40b            ; 0x1716
    mov word [bp - 0x0002], 1        ; 0x1719
    jmp near @..api_idx_0006.l6      ; 0x171e
@..api_idx_0006.l1:
    mov word [bp - 0x0004], 0        ; 0x1721
    jmp short @..api_idx_0006.l5     ; 0x1726
@..api_idx_0006.l2:
    mov ax, 0x64                     ; 0x1728
    push ax                          ; 0x172b
    call ds_dispatch_b7a9            ; 0x172c
    pop cx                           ; 0x172f
    mov word [bp - 0x0006], ax       ; 0x1730
    mov ax, word [bp - 0x0002]       ; 0x1733
    shl ax, 1                        ; 0x1736
    mov bx, ax                       ; 0x1738
    mov bx, word [bx - 0x7b7e]       ; 0x173a
    cmp byte [bx + 0x1a0], 1         ; 0x173e
    jne short @..api_idx_0006.l4     ; 0x1743
    mov ax, 0x248                    ; 0x1745
    imul word [bp - 0x0004]          ; 0x1748
    mov bx, ax                       ; 0x174b
    mov al, byte [bx + 0x5d85]       ; 0x174d
    sub ah, ah                       ; 0x1751
    push ax                          ; 0x1753
    mov ax, 3                        ; 0x1754
    imul word [data_830c]            ; 0x1757
    mov cx, ax                       ; 0x175b
    pop ax                           ; 0x175d
    sub ax, cx                       ; 0x175e
    cmp ax, word [bp - 0x0006]       ; 0x1760
    jg short @..api_idx_0006.l3      ; 0x1763
    mov al, byte [bx + 0x5d65]       ; 0x1765
    sub ah, ah                       ; 0x1769
    cmp ax, word [bp - 0x0006]       ; 0x176b
    jle short @..api_idx_0006.l4     ; 0x176e
@..api_idx_0006.l3:
    mov ax, word [bp - 0x0002]       ; 0x1770
    shl ax, 1                        ; 0x1773
    mov bx, ax                       ; 0x1775
    mov bx, word [bx - 0x7b7e]       ; 0x1777
    mov byte [bx + 0x1a0], 0         ; 0x177b
    mov ax, 0                        ; 0x1780
    push ax                          ; 0x1783
    mov ax, 0x19                     ; 0x1784
    push ax                          ; 0x1787
    push word [bp - 0x0004]          ; 0x1788
    call math_loc_16d1               ; 0x178b
    add sp, byte 6                   ; 0x178e
@..api_idx_0006.l4:
    inc word [bp - 0x0004]           ; 0x1791
@..api_idx_0006.l5:
    mov ax, word [bp - 0x0004]       ; 0x1794
    cmp ax, word [data_69c8]         ; 0x1797
    jl short @..api_idx_0006.l2      ; 0x179b
    inc word [bp - 0x0002]           ; 0x179d
@..api_idx_0006.l6:
    mov ax, word [bp - 0x0002]       ; 0x17a0
    cmp ax, word [data_8466]         ; 0x17a3
    jg short @..api_idx_0006.l7      ; 0x17a7
    jmp near @..api_idx_0006.l1      ; 0x17a9
@..api_idx_0006.l7:
    ret                              ; 0x17ac
api_idx_0004_5:
    mov ax, 0xfffc                   ; 0x17ad
    call ds_dispatch_f40b            ; 0x17b0
    mov word [bp - 0x0004], 0xf      ; 0x17b3
@..api_idx_0004_5.l1:
    mov bx, word [bp - 0x0004]       ; 0x17b8
    mov byte [bx + 0x5b5a], 0        ; 0x17bb
    inc word [bp - 0x0004]           ; 0x17c0
    mov ax, word [bp - 0x0004]       ; 0x17c3
    cmp ax, strict word 0x12         ; 0x17c6
    jl short @..api_idx_0004_5.l1    ; 0x17c9
    mov word [bp - 0x0002], 1        ; 0x17cb
    jmp short @..api_idx_0004_5.l3   ; 0x17d0
@..api_idx_0004_5.l2:
    mov ax, word [bp - 0x0002]       ; 0x17d2
    shl ax, 1                        ; 0x17d5
    mov bx, ax                       ; 0x17d7
    mov bx, word [bx - 0x7b70]       ; 0x17d9
    mov al, byte [bx + 0xd7]         ; 0x17dd
    sub ah, ah                       ; 0x17e1
    push ax                          ; 0x17e3
    call api_idx_0004_3              ; 0x17e4
    pop cx                           ; 0x17e7
    mov cx, word [bp - 0x0002]       ; 0x17e8
    shl cx, 1                        ; 0x17eb
    mov bx, cx                       ; 0x17ed
    mov bx, word [bx - 0x7b7e]       ; 0x17ef
    mov byte [bx + 0x19f], al        ; 0x17f3
    inc word [bp - 0x0002]           ; 0x17f7
@..api_idx_0004_5.l3:
    mov ax, word [bp - 0x0002]       ; 0x17fa
    cmp ax, word [data_8466]         ; 0x17fd
    jle short @..api_idx_0004_5.l2   ; 0x1801
    mov word [bp - 0x0004], 0xf      ; 0x1803
@..api_idx_0004_5.l4:
    mov bx, word [bp - 0x0004]       ; 0x1808
    mov al, byte [bx + 0x5b48]       ; 0x180b
    sub ah, ah                       ; 0x180f
    cmp ax, 0xff                     ; 0x1811
    je short @..api_idx_0004_5.l5    ; 0x1814
    cmp byte [bx + 0x5b5a], 0        ; 0x1816
    jne short @..api_idx_0004_5.l5   ; 0x181b
    push bx                          ; 0x181d
    call ds_dispatch_c12a            ; 0x181e
    pop cx                           ; 0x1821
@..api_idx_0004_5.l5:
    inc word [bp - 0x0004]           ; 0x1822
    mov ax, word [bp - 0x0004]       ; 0x1825
    cmp ax, strict word 0x12         ; 0x1828
    jl short @..api_idx_0004_5.l4    ; 0x182b
    mov bx, word [data_8492]         ; 0x182d
    cmp byte [bx + 0xd8], 0          ; 0x1831
    jbe short @..api_idx_0004_5.l6   ; 0x1836
    mov al, byte [bx + 0xd8]         ; 0x1838
    sub ah, ah                       ; 0x183c
    push ax                          ; 0x183e
    call ds_dispatch_d7aa            ; 0x183f
    pop cx                           ; 0x1842
@..api_idx_0004_5.l6:
    ret                              ; 0x1843
api_idx_0014:
    mov ax, 0xffec                   ; 0x1844
    call ds_dispatch_f40b            ; 0x1847
    mov word [bp - 0x0006], 0        ; 0x184a
    mov word [bp - 0x0002], 1        ; 0x184f
    jmp near @..api_idx_0014.l13     ; 0x1854
@..api_idx_0014.l1:
    push word [bp - 0x0002]          ; 0x1857
    call api_idx_005c                ; 0x185a
    pop cx                           ; 0x185d
    mov ax, word [bp - 0x0002]       ; 0x185e
    shl ax, 1                        ; 0x1861
    mov bx, ax                       ; 0x1863
    mov bx, word [bx - 0x7b7e]       ; 0x1865
    cmp byte [bx + 0x1a1], 0         ; 0x1869
    ja short @..api_idx_0014.l2      ; 0x186e
    jmp near @..api_idx_0014.l12     ; 0x1870
@..api_idx_0014.l2:
    inc word [bp - 0x0006]           ; 0x1873
    mov ax, word [bp - 0x0006]       ; 0x1876
    cmp ax, word [bp - 0x0002]       ; 0x1879
    jne short @..api_idx_0014.l3     ; 0x187c
    jmp near @..api_idx_0014.l7      ; 0x187e
@..api_idx_0014.l3:
    mov si, bx                       ; 0x1881
    shl ax, 1                        ; 0x1883
    mov bx, ax                       ; 0x1885
    mov di, word [bx - 0x7b7e]       ; 0x1887
    mov cx, ds                       ; 0x188b
    mov es, cx                       ; 0x188d
    mov cx, 0xd2                     ; 0x188f
    rep movsw                        ; 0x1892
    mov ax, word [bp - 0x0002]       ; 0x1894
    shl ax, 1                        ; 0x1897
    mov bx, ax                       ; 0x1899
    mov si, word [bx - 0x7b70]       ; 0x189b
    mov ax, word [bp - 0x0006]       ; 0x189f
    shl ax, 1                        ; 0x18a2
    mov bx, ax                       ; 0x18a4
    mov di, word [bx - 0x7b70]       ; 0x18a6
    mov cx, ds                       ; 0x18aa
    mov es, cx                       ; 0x18ac
    mov cx, 0x74                     ; 0x18ae
    rep movsw                        ; 0x18b1
    mov word [bp - 0x0012], 0        ; 0x18b3
    jmp short @..api_idx_0014.l6     ; 0x18b8
@..api_idx_0014.l4:
    mov ax, 0x2c                     ; 0x18ba
    imul word [bp - 0x0012]          ; 0x18bd
    mov si, ax                       ; 0x18c0
    mov bx, word [data_8482]         ; 0x18c2
    mov al, byte [bx + si + 0x1f]    ; 0x18c6
    sub ah, ah                       ; 0x18c9
    cmp ax, word [bp - 0x0002]       ; 0x18cb
    jne short @..api_idx_0014.l5     ; 0x18ce
    mov al, byte [bp - 0x0006]       ; 0x18d0
    mov byte [bx + si + 0x1f], al    ; 0x18d3
@..api_idx_0014.l5:
    inc word [bp - 0x0012]           ; 0x18d6
@..api_idx_0014.l6:
    mov ax, word [bp - 0x0012]       ; 0x18d9
    cmp ax, word [data_69c8]         ; 0x18dc
    jl short @..api_idx_0014.l4      ; 0x18e0
    push word [bp - 0x0006]          ; 0x18e2
    call api_idx_000c_2              ; 0x18e5
    pop cx                           ; 0x18e8
    mov ax, word [bp - 0x0002]       ; 0x18e9
    shl ax, 1                        ; 0x18ec
    mov bx, ax                       ; 0x18ee
    mov bx, word [bx - 0x7b7e]       ; 0x18f0
    mov byte [bx + 0x1a1], 0         ; 0x18f4
    jmp near @..api_idx_0014.l12     ; 0x18f9
@..api_idx_0014.l7:
    mov word [bp - 0x0004], 0        ; 0x18fc
    jmp near @..api_idx_0014.l11     ; 0x1901
@..api_idx_0014.l8:
    mov ax, 0x2c                     ; 0x1904
    imul word [bp - 0x0004]          ; 0x1907
    mov si, ax                       ; 0x190a
    mov ax, word [bp - 0x0006]       ; 0x190c
    shl ax, 1                        ; 0x190f
    mov bx, ax                       ; 0x1911
    mov bx, word [bx - 0x7b7e]       ; 0x1913
    mov al, byte [bx + si + 0x2a]    ; 0x1917
    cbw                              ; 0x191a
    mov word [bp - 0x0008], ax       ; 0x191b
    cmp ax, strict word 0xffff       ; 0x191e
    jne short @..api_idx_0014.l9     ; 0x1921
    jmp near @..api_idx_0014.l10     ; 0x1923
@..api_idx_0014.l9:
    mov cx, 0xa                      ; 0x1926
    cwd                              ; 0x1929
    idiv cx                          ; 0x192a
    mov word [bp - 0x000a], ax       ; 0x192c
    mov word [bp - 0x000c], dx       ; 0x192f
    mov cx, 6                        ; 0x1932
    imul cx                          ; 0x1935
    mov cx, word [bp - 0x000c]       ; 0x1937
    shl cx, 1                        ; 0x193a
    add ax, cx                       ; 0x193c
    mov bx, ax                       ; 0x193e
    mov ax, word [bx + 0x5ec]        ; 0x1940
    mov cx, 0xa                      ; 0x1944
    cwd                              ; 0x1947
    idiv cx                          ; 0x1948
    mov word [bp - 0x000e], ax       ; 0x194a
    mov word [bp - 0x0010], dx       ; 0x194d
    mov cx, 6                        ; 0x1950
    imul cx                          ; 0x1953
    mov cx, word [bp - 0x0010]       ; 0x1955
    shl cx, 1                        ; 0x1958
    add ax, cx                       ; 0x195a
    mov bx, ax                       ; 0x195c
    cmp word [bx - 0x7bc6], byte 0   ; 0x195e
    jne short @..api_idx_0014.l10    ; 0x1963
    mov ax, 6                        ; 0x1965
    imul word [bp - 0x000a]          ; 0x1968
    mov cx, word [bp - 0x000c]       ; 0x196b
    shl cx, 1                        ; 0x196e
    add ax, cx                       ; 0x1970
    mov bx, ax                       ; 0x1972
    mov word [bx - 0x7bc6], 0        ; 0x1974
    mov ax, 0xa                      ; 0x197a
    imul word [bp - 0x0006]          ; 0x197d
    add ax, word [bp - 0x0004]       ; 0x1980
    push ax                          ; 0x1983
    mov ax, 6                        ; 0x1984
    imul word [bp - 0x000e]          ; 0x1987
    mov cx, ax                       ; 0x198a
    mov dx, word [bp - 0x0010]       ; 0x198c
    shl dx, 1                        ; 0x198f
    add ax, dx                       ; 0x1991
    mov bx, ax                       ; 0x1993
    pop ax                           ; 0x1995
    mov word [bx - 0x7bc6], ax       ; 0x1996
    mov ax, 0xa                      ; 0x199a
    imul word [bp - 0x000e]          ; 0x199d
    add ax, word [bp - 0x0010]       ; 0x19a0
    mov cx, word [bp - 0x0006]       ; 0x19a3
    shl cx, 1                        ; 0x19a6
    mov bx, cx                       ; 0x19a8
    mov bx, word [bx - 0x7b7e]       ; 0x19aa
    mov byte [bx + si + 0x2a], al    ; 0x19ae
    mov ax, 0xffff                   ; 0x19b1
    push ax                          ; 0x19b4
    push word [bp - 0x0010]          ; 0x19b5
    push word [bp - 0x000e]          ; 0x19b8
    push word [bp - 0x0006]          ; 0x19bb
    call api_idx_000a_2              ; 0x19be
    add sp, byte 8                   ; 0x19c1
@..api_idx_0014.l10:
    inc word [bp - 0x0004]           ; 0x19c4
@..api_idx_0014.l11:
    mov ax, word [bp - 0x0006]       ; 0x19c7
    shl ax, 1                        ; 0x19ca
    mov bx, ax                       ; 0x19cc
    mov bx, word [bx - 0x7b7e]       ; 0x19ce
    mov al, byte [bx + 0x1a1]        ; 0x19d2
    sub ah, ah                       ; 0x19d6
    cmp ax, word [bp - 0x0004]       ; 0x19d8
    jle short @..api_idx_0014.l12    ; 0x19db
    jmp near @..api_idx_0014.l8      ; 0x19dd
@..api_idx_0014.l12:
    inc word [bp - 0x0002]           ; 0x19e0
@..api_idx_0014.l13:
    mov ax, word [bp - 0x0002]       ; 0x19e3
    cmp ax, word [data_8466]         ; 0x19e6
    jg short @..api_idx_0014.l14     ; 0x19ea
    jmp near @..api_idx_0014.l1      ; 0x19ec
@..api_idx_0014.l14:
    mov ax, word [bp - 0x0006]       ; 0x19ef
    mov word [data_8466], ax         ; 0x19f2
    cmp word [data_8466], byte 0     ; 0x19f5
    jne short @..api_idx_0014.l16    ; 0x19fa
    cmp word [data_905e], byte 8     ; 0x19fc
    je short @..api_idx_0014.l15     ; 0x1a01
    mov word [data_905e], 0xf        ; 0x1a03
@..api_idx_0014.l15:
    mov word [data_845c], 1          ; 0x1a09
@..api_idx_0014.l16:
    call api_idx_0004_5              ; 0x1a0f
    call api_idx_0006                ; 0x1a12
    ret                              ; 0x1a15
math_loc_1a16:
    mov ax, 0xfd08                   ; 0x1a16
    call ds_dispatch_f40b            ; 0x1a19
    mov word [bp - 0x0002], 1        ; 0x1a1c
    jmp near @..local.l84            ; 0x1a21
@..math_loc_1a16.l1:
    mov ax, word [bp - 0x0002]       ; 0x1a24
    shl ax, 1                        ; 0x1a27
    mov bx, ax                       ; 0x1a29
    add bx, bp                       ; 0x1a2b
    mov word [bx - 0x001c], 0        ; 0x1a2d
    mov word [bp - 0x0004], 0        ; 0x1a32
    jmp near @..math_loc_1a16.l8     ; 0x1a37
@..math_loc_1a16.l2:
    mov ax, 0x2c                     ; 0x1a3a
    imul word [bp - 0x0004]          ; 0x1a3d
    mov si, ax                       ; 0x1a40
    mov ax, word [bp - 0x0002]       ; 0x1a42
    shl ax, 1                        ; 0x1a45
    mov bx, ax                       ; 0x1a47
    mov bx, word [bx - 0x7b7e]       ; 0x1a49
    cmp byte [bx + si + 0x22], 0     ; 0x1a4d
    je short @..math_loc_1a16.l3     ; 0x1a51
    jmp near @..math_loc_1a16.l7     ; 0x1a53
@..math_loc_1a16.l3:
    cmp byte [bx + si + 0x10], 0     ; 0x1a56
    je short @..math_loc_1a16.l4     ; 0x1a5a
    jmp near @..math_loc_1a16.l7     ; 0x1a5c
@..math_loc_1a16.l4:
    cmp byte [bx + si + 0x11], 0     ; 0x1a5f
    jne short @..math_loc_1a16.l7    ; 0x1a63
    mov word [bp - 0x000c], 0        ; 0x1a65
    mov word [bp - 0x000a], 0        ; 0x1a6a
@..math_loc_1a16.l5:
    mov ax, 0x2c                     ; 0x1a6f
    imul word [bp - 0x0004]          ; 0x1a72
    add ax, word [bp - 0x000a]       ; 0x1a75
    mov si, ax                       ; 0x1a78
    mov ax, word [bp - 0x0002]       ; 0x1a7a
    shl ax, 1                        ; 0x1a7d
    mov bx, ax                       ; 0x1a7f
    mov bx, word [bx - 0x7b7e]       ; 0x1a81
    cmp byte [bx + si + 0xe], 0      ; 0x1a85
    jbe short @..math_loc_1a16.l6    ; 0x1a89
    mov ax, 0x2c                     ; 0x1a8b
    imul word [bp - 0x0004]          ; 0x1a8e
    mov si, ax                       ; 0x1a91
    mov ax, word [bx + si + 0x2]     ; 0x1a93
    mov cx, 4                        ; 0x1a96
    cwd                              ; 0x1a99
    idiv cx                          ; 0x1a9a
    add word [bp - 0x000c], ax       ; 0x1a9c
@..math_loc_1a16.l6:
    inc word [bp - 0x000a]           ; 0x1a9f
    mov ax, word [bp - 0x000a]       ; 0x1aa2
    cmp ax, strict word 0xa          ; 0x1aa5
    jl short @..math_loc_1a16.l5     ; 0x1aa8
    mov ax, 0x2c                     ; 0x1aaa
    imul word [bp - 0x0004]          ; 0x1aad
    mov si, ax                       ; 0x1ab0
    mov ax, word [bp - 0x0002]       ; 0x1ab2
    shl ax, 1                        ; 0x1ab5
    mov bx, ax                       ; 0x1ab7
    mov bx, word [bx - 0x7b7e]       ; 0x1ab9
    mov ax, word [bx + si + 0x2]     ; 0x1abd
    cmp ax, word [bp - 0x000c]       ; 0x1ac0
    jle short @..math_loc_1a16.l7    ; 0x1ac3
    mov ax, word [bx + si + 0x2]     ; 0x1ac5
    sub ax, word [bp - 0x000c]       ; 0x1ac8
    mov cx, word [bp - 0x0002]       ; 0x1acb
    shl cx, 1                        ; 0x1ace
    mov bx, cx                       ; 0x1ad0
    add bx, bp                       ; 0x1ad2
    add word [bx - 0x001c], ax       ; 0x1ad4
@..math_loc_1a16.l7:
    inc word [bp - 0x0004]           ; 0x1ad7
@..math_loc_1a16.l8:
    mov ax, word [bp - 0x0002]       ; 0x1ada
    shl ax, 1                        ; 0x1add
    mov bx, ax                       ; 0x1adf
    mov bx, word [bx - 0x7b7e]       ; 0x1ae1
    mov al, byte [bx + 0x1a1]        ; 0x1ae5
    sub ah, ah                       ; 0x1ae9
    cmp ax, word [bp - 0x0004]       ; 0x1aeb
    jle short @..math_loc_1a16.l9    ; 0x1aee
    jmp near @..math_loc_1a16.l2     ; 0x1af0
@..math_loc_1a16.l9:
    mov ax, word [bp - 0x0002]       ; 0x1af3
    shl ax, 1                        ; 0x1af6
    mov bx, ax                       ; 0x1af8
    mov bx, word [bx - 0x7b70]       ; 0x1afa
    cmp byte [bx + 0xae], 0          ; 0x1afe
    jbe short @..math_loc_1a16.l10   ; 0x1b03
    mov bx, ax                       ; 0x1b05
    add bx, bp                       ; 0x1b07
    mov ax, word [bx - 0x001c]       ; 0x1b09
    push ax                          ; 0x1b0c
    mov ax, word [bp - 0x0002]       ; 0x1b0d
    shl ax, 1                        ; 0x1b10
    mov si, ax                       ; 0x1b12
    mov si, word [si - 0x7b70]       ; 0x1b14
    mov al, byte [si + 0xae]         ; 0x1b18
    sub ah, ah                       ; 0x1b1c
    mov cx, 0xa                      ; 0x1b1e
    cwd                              ; 0x1b21
    idiv cx                          ; 0x1b22
    mov cx, ax                       ; 0x1b24
    inc ax                           ; 0x1b26
    mov cx, ax                       ; 0x1b27
    pop ax                           ; 0x1b29
    cwd                              ; 0x1b2a
    idiv cx                          ; 0x1b2b
    mov word [bx - 0x001c], ax       ; 0x1b2d
@..math_loc_1a16.l10:
    mov ax, word [bp - 0x0002]       ; 0x1b30
    shl ax, 1                        ; 0x1b33
    mov bx, ax                       ; 0x1b35
    mov bx, word [bx - 0x7b70]       ; 0x1b37
    cmp byte [bx + 0xb0], 0          ; 0x1b3b
    jbe short @..math_loc_1a16.l11   ; 0x1b40
    mov bx, ax                       ; 0x1b42
    add bx, bp                       ; 0x1b44
    mov ax, word [bx - 0x001c]       ; 0x1b46
    push ax                          ; 0x1b49
    mov ax, word [bp - 0x0002]       ; 0x1b4a
    shl ax, 1                        ; 0x1b4d
    mov bx, ax                       ; 0x1b4f
    mov bx, word [bx - 0x7b70]       ; 0x1b51
    mov al, byte [bx + 0xb0]         ; 0x1b55
    sub ah, ah                       ; 0x1b59
    mov cx, ax                       ; 0x1b5b
    pop ax                           ; 0x1b5d
    mov bx, cx                       ; 0x1b5e
    imul bx                          ; 0x1b60
    mov cx, 0x64                     ; 0x1b62
    mov bx, 0                        ; 0x1b65
    call ds_dispatch_f99f            ; 0x1b68
    push ax                          ; 0x1b6b
    push dx                          ; 0x1b6c
    mov ax, word [bp - 0x0002]       ; 0x1b6d
    shl ax, 1                        ; 0x1b70
    mov bx, ax                       ; 0x1b72
    add bx, bp                       ; 0x1b74
    mov ax, word [bx - 0x001c]       ; 0x1b76
    cwd                              ; 0x1b79
    mov cx, ax                       ; 0x1b7a
    mov bx, dx                       ; 0x1b7c
    pop dx                           ; 0x1b7e
    pop ax                           ; 0x1b7f
    add ax, cx                       ; 0x1b80
    adc dx, bx                       ; 0x1b82
    mov cx, word [bp - 0x0002]       ; 0x1b84
    shl cx, 1                        ; 0x1b87
    mov bx, cx                       ; 0x1b89
    add bx, bp                       ; 0x1b8b
    mov word [bx - 0x001c], ax       ; 0x1b8d
@..math_loc_1a16.l11:
    mov ax, word [bp - 0x0002]       ; 0x1b90
    shl ax, 1                        ; 0x1b93
    mov bx, ax                       ; 0x1b95
    mov bx, word [bx - 0x7b70]       ; 0x1b97
    cmp byte [bx + 0xb1], 0          ; 0x1b9b
    jbe short @..math_loc_1a16.l12   ; 0x1ba0
    mov bx, ax                       ; 0x1ba2
    add bx, bp                       ; 0x1ba4
    mov ax, word [bx - 0x001c]       ; 0x1ba6
    push ax                          ; 0x1ba9
    mov ax, word [bp - 0x0002]       ; 0x1baa
    shl ax, 1                        ; 0x1bad
    mov bx, ax                       ; 0x1baf
    mov bx, word [bx - 0x7b70]       ; 0x1bb1
    mov al, byte [bx + 0xb1]         ; 0x1bb5
    sub ah, ah                       ; 0x1bb9
    mov cx, ax                       ; 0x1bbb
    pop ax                           ; 0x1bbd
    mov bx, cx                       ; 0x1bbe
    imul bx                          ; 0x1bc0
    mov cx, 0x64                     ; 0x1bc2
    mov bx, 0                        ; 0x1bc5
    call ds_dispatch_f99f            ; 0x1bc8
    push ax                          ; 0x1bcb
    push dx                          ; 0x1bcc
    mov ax, word [bp - 0x0002]       ; 0x1bcd
    shl ax, 1                        ; 0x1bd0
    mov bx, ax                       ; 0x1bd2
    add bx, bp                       ; 0x1bd4
    mov ax, word [bx - 0x001c]       ; 0x1bd6
    cwd                              ; 0x1bd9
    mov cx, ax                       ; 0x1bda
    mov bx, dx                       ; 0x1bdc
    pop dx                           ; 0x1bde
    pop ax                           ; 0x1bdf
    add ax, cx                       ; 0x1be0
    adc dx, bx                       ; 0x1be2
    mov cx, word [bp - 0x0002]       ; 0x1be4
    shl cx, 1                        ; 0x1be7
    mov bx, cx                       ; 0x1be9
    add bx, bp                       ; 0x1beb
    mov word [bx - 0x001c], ax       ; 0x1bed
@..math_loc_1a16.l12:
    mov ax, word [bp - 0x0002]       ; 0x1bf0
    shl ax, 1                        ; 0x1bf3
    mov bx, ax                       ; 0x1bf5
    mov bx, word [bx - 0x7b7e]       ; 0x1bf7
    cmp byte [bx + 0x19f], 0xff      ; 0x1bfb
    je short @..local.l83            ; 0x1c00
    mov al, byte [bx + 0x19f]        ; 0x1c02
    cbw                              ; 0x1c06
    mov cx, 0x15e                    ; 0x1c07
    imul cx                          ; 0x1c0a
    mov bx, ax                       ; 0x1c0c
    cmp byte [bx + 0x6b75], 0        ; 0x1c0e
    je short @..local.l83            ; 0x1c13
    mov ax, word [bp - 0x0002]       ; 0x1c15
    shl ax, 1                        ; 0x1c18
    mov bx, ax                       ; 0x1c1a
    add bx, bp                       ; 0x1c1c
    mov word [bx - 0x001c], 0        ; 0x1c1e
@..local.l83:
    inc word [bp - 0x0002]           ; 0x1c23
@..local.l84:
    mov ax, word [bp - 0x0002]       ; 0x1c26
    cmp ax, word [data_8466]         ; 0x1c29
    jg short @..local.l85            ; 0x1c2d
    jmp near @..math_loc_1a16.l1     ; 0x1c2f
@..local.l85:
    mov ax, word [data_8466]         ; 0x1c32
    mov word [bp - 0x0002], ax       ; 0x1c35
    jmp near @..local.l103           ; 0x1c38
@..local.l86:
    mov ax, word [bp - 0x0002]       ; 0x1c3b
    shl ax, 1                        ; 0x1c3e
    mov bx, ax                       ; 0x1c40
    add bx, bp                       ; 0x1c42
    push word [bx - 0x001c]          ; 0x1c44
    call ds_dispatch_b7a9            ; 0x1c47
    pop cx                           ; 0x1c4a
    push ax                          ; 0x1c4b
    mov ax, word [bp - 0x0002]       ; 0x1c4c
    shl ax, 1                        ; 0x1c4f
    mov bx, ax                       ; 0x1c51
    add bx, bp                       ; 0x1c53
    push word [bx - 0x001e]          ; 0x1c55
    call ds_dispatch_b7a9            ; 0x1c58
    pop cx                           ; 0x1c5b
    mov cx, ax                       ; 0x1c5c
    pop ax                           ; 0x1c5e
    cmp ax, cx                       ; 0x1c5f
    jg short @..local.l87            ; 0x1c61
    jmp near @..local.l102           ; 0x1c63
@..local.l87:
    mov ax, 1                        ; 0x1c66
    push ax                          ; 0x1c69
    call api_idx_000a                ; 0x1c6a
    pop cx                           ; 0x1c6d
    mov ax, 1                        ; 0x1c6e
    push ax                          ; 0x1c71
    call api_idx_0004                ; 0x1c72
    pop cx                           ; 0x1c75
    mov ax, word [bp - 0x0002]       ; 0x1c76
    shl ax, 1                        ; 0x1c79
    mov bx, ax                       ; 0x1c7b
    mov bx, word [bx - 0x7b7e]       ; 0x1c7d
    cmp byte [bx + 0x1a1], 1         ; 0x1c81
    jne short @..local.l88           ; 0x1c86
    mov ax, 0                        ; 0x1c88
    jmp short @..local.l89           ; 0x1c8b
@..local.l88:
    mov ax, 1                        ; 0x1c8d
@..local.l89:
    mov cx, 4                        ; 0x1c90
    shl ax, cl                       ; 0x1c93
    mov cx, ax                       ; 0x1c95
    push cx                          ; 0x1c97
    mov al, byte [bx + 0x1a0]        ; 0x1c98
    sub ah, ah                       ; 0x1c9c
    mov cx, 5                        ; 0x1c9e
    shl ax, cl                       ; 0x1ca1
    pop cx                           ; 0x1ca3
    add cx, ax                       ; 0x1ca4
    mov ax, word [bp - 0x0002]       ; 0x1ca6
    shl ax, 1                        ; 0x1ca9
    mov bx, ax                       ; 0x1cab
    mov ax, word [bx - 0x7b70]       ; 0x1cad
    add ax, cx                       ; 0x1cb1
    push ax                          ; 0x1cb3
    lea ax, word [bp - 0x006c]       ; 0x1cb4
    push ax                          ; 0x1cb7
    call ds_dispatch_f364            ; 0x1cb8
    add sp, byte 4                   ; 0x1cbb
    lea ax, word [bp - 0x006c]       ; 0x1cbe
    push ax                          ; 0x1cc1
    call api_idx_0004_2              ; 0x1cc2
    pop cx                           ; 0x1cc5
    lea ax, word [bp - 0x006c]       ; 0x1cc6
    push ax                          ; 0x1cc9
    call ds_dispatch_fa90            ; 0x1cca
    pop cx                           ; 0x1ccd
    mov word [bp - 0x000a], ax       ; 0x1cce
    mov bx, ax                       ; 0x1cd1
    add bx, bp                       ; 0x1cd3
    mov byte [bx - 0x006c], 0x20     ; 0x1cd5
    lea cx, word [bp - 0x006b]       ; 0x1cd9
    add ax, cx                       ; 0x1cdc
    push ax                          ; 0x1cde
    mov ax, word [bp - 0x0002]       ; 0x1cdf
    shl ax, 1                        ; 0x1ce2
    mov bx, ax                       ; 0x1ce4
    mov bx, word [bx - 0x7b7e]       ; 0x1ce6
    cmp byte [bx + 0x1a1], 1         ; 0x1cea
    jne short @..local.l90           ; 0x1cef
    mov ax, 0xdb6                    ; 0x1cf1
    jmp short @..local.l91           ; 0x1cf4
@..local.l90:
    mov ax, 0xdb7                    ; 0x1cf6
@..local.l91:
    push ax                          ; 0x1cf9
    call ds_dispatch_b53b            ; 0x1cfa
    add sp, byte 4                   ; 0x1cfd
    mov ax, 0x11                     ; 0x1d00
    push ax                          ; 0x1d03
    lea ax, word [bp - 0x006c]       ; 0x1d04
    push ax                          ; 0x1d07
    call api_idx_000c                ; 0x1d08
    add sp, byte 4                   ; 0x1d0b
    mov word [bp - 0x0004], 0        ; 0x1d0e
    jmp short @..local.l94           ; 0x1d13
@..local.l92:
    mov ax, 0x2c                     ; 0x1d15
    imul word [bp - 0x0004]          ; 0x1d18
    mov si, ax                       ; 0x1d1b
    mov ax, word [bp - 0x0002]       ; 0x1d1d
    shl ax, 1                        ; 0x1d20
    mov bx, ax                       ; 0x1d22
    mov bx, word [bx - 0x7b80]       ; 0x1d24
    cmp byte [bx + si + 0x2a], 0xff  ; 0x1d28
    je short @..local.l93            ; 0x1d2c
    mov al, byte [bx + si + 0x2a]    ; 0x1d2e
    cbw                              ; 0x1d31
    mov cx, 0xa                      ; 0x1d32
    cwd                              ; 0x1d35
    idiv cx                          ; 0x1d36
    mov word [bp - 0x0006], ax       ; 0x1d38
    mov al, byte [bx + si + 0x2a]    ; 0x1d3b
    cbw                              ; 0x1d3e
    cwd                              ; 0x1d3f
    idiv cx                          ; 0x1d40
    mov word [bp - 0x0008], dx       ; 0x1d42
    mov ax, 6                        ; 0x1d45
    imul word [bp - 0x0006]          ; 0x1d48
    mov cx, word [bp - 0x0008]       ; 0x1d4b
    shl cx, 1                        ; 0x1d4e
    add ax, cx                       ; 0x1d50
    mov bx, ax                       ; 0x1d52
    mov word [bx - 0x6f42], 1        ; 0x1d54
@..local.l93:
    inc word [bp - 0x0004]           ; 0x1d5a
@..local.l94:
    mov ax, word [bp - 0x0002]       ; 0x1d5d
    shl ax, 1                        ; 0x1d60
    mov bx, ax                       ; 0x1d62
    mov bx, word [bx - 0x7b80]       ; 0x1d64
    mov al, byte [bx + 0x1a1]        ; 0x1d68
    sub ah, ah                       ; 0x1d6c
    cmp ax, word [bp - 0x0004]       ; 0x1d6e
    jg short @..local.l92            ; 0x1d71
    mov ax, 1                        ; 0x1d73
    push ax                          ; 0x1d76
    call api_idx_005a                ; 0x1d77
    pop cx                           ; 0x1d7a
    mov word [bp - 0x0004], 0        ; 0x1d7b
    jmp short @..local.l97           ; 0x1d80
@..local.l95:
    mov ax, 0x2c                     ; 0x1d82
    imul word [bp - 0x0004]          ; 0x1d85
    mov si, ax                       ; 0x1d88
    mov ax, word [bp - 0x0002]       ; 0x1d8a
    shl ax, 1                        ; 0x1d8d
    mov bx, ax                       ; 0x1d8f
    mov bx, word [bx - 0x7b80]       ; 0x1d91
    cmp byte [bx + si + 0x2a], 0xff  ; 0x1d95
    je short @..local.l96            ; 0x1d99
    mov al, byte [bx + si + 0x2a]    ; 0x1d9b
    cbw                              ; 0x1d9e
    mov cx, 0xa                      ; 0x1d9f
    cwd                              ; 0x1da2
    idiv cx                          ; 0x1da3
    mov word [bp - 0x0006], ax       ; 0x1da5
    mov al, byte [bx + si + 0x2a]    ; 0x1da8
    cbw                              ; 0x1dab
    cwd                              ; 0x1dac
    idiv cx                          ; 0x1dad
    mov word [bp - 0x0008], dx       ; 0x1daf
    mov ax, 6                        ; 0x1db2
    imul word [bp - 0x0006]          ; 0x1db5
    mov cx, word [bp - 0x0008]       ; 0x1db8
    shl cx, 1                        ; 0x1dbb
    add ax, cx                       ; 0x1dbd
    mov bx, ax                       ; 0x1dbf
    mov word [bx - 0x7bc6], 0        ; 0x1dc1
    mov ax, word [bp - 0x0002]       ; 0x1dc7
    shl ax, 1                        ; 0x1dca
    mov bx, ax                       ; 0x1dcc
    mov bx, word [bx - 0x7b80]       ; 0x1dce
    mov byte [bx + si + 0x2a], 0xff  ; 0x1dd2
@..local.l96:
    inc word [bp - 0x0004]           ; 0x1dd6
@..local.l97:
    mov ax, word [bp - 0x0002]       ; 0x1dd9
    shl ax, 1                        ; 0x1ddc
    mov bx, ax                       ; 0x1dde
    mov bx, word [bx - 0x7b80]       ; 0x1de0
    mov al, byte [bx + 0x1a1]        ; 0x1de4
    sub ah, ah                       ; 0x1de8
    cmp ax, word [bp - 0x0004]       ; 0x1dea
    jg short @..local.l95            ; 0x1ded
    call loc_2cc7                    ; 0x1def
    mov ax, word [bp - 0x0002]       ; 0x1df2
    shl ax, 1                        ; 0x1df5
    mov bx, ax                       ; 0x1df7
    add bx, bp                       ; 0x1df9
    mov ax, word [bx - 0x001c]       ; 0x1dfb
    mov word [bp - 0x0006], ax       ; 0x1dfe
    mov ax, word [bx - 0x001e]       ; 0x1e01
    mov word [bx - 0x001c], ax       ; 0x1e04
    mov ax, word [bp - 0x0006]       ; 0x1e07
    mov word [bx - 0x001e], ax       ; 0x1e0a
    mov ax, 0x1a4                    ; 0x1e0d
    push ax                          ; 0x1e10
    mov ax, word [bp - 0x0002]       ; 0x1e11
    shl ax, 1                        ; 0x1e14
    mov bx, ax                       ; 0x1e16
    push word [bx - 0x7b80]          ; 0x1e18
    push word [bx - 0x7b7e]          ; 0x1e1c
    call string_loc_374e             ; 0x1e20
    add sp, byte 6                   ; 0x1e23
    mov ax, 0xe8                     ; 0x1e26
    push ax                          ; 0x1e29
    mov ax, word [bp - 0x0002]       ; 0x1e2a
    shl ax, 1                        ; 0x1e2d
    mov bx, ax                       ; 0x1e2f
    push word [bx - 0x7b72]          ; 0x1e31
    push word [bx - 0x7b70]          ; 0x1e35
    call string_loc_374e             ; 0x1e39
    add sp, byte 6                   ; 0x1e3c
    mov word [bp - 0x000e], 0        ; 0x1e3f
    jmp short @..local.l101          ; 0x1e44
@..local.l98:
    mov ax, 0x2c                     ; 0x1e46
    imul word [bp - 0x000e]          ; 0x1e49
    mov si, ax                       ; 0x1e4c
    mov bx, word [data_8482]         ; 0x1e4e
    mov al, byte [bx + si + 0x1f]    ; 0x1e52
    sub ah, ah                       ; 0x1e55
    cmp ax, word [bp - 0x0002]       ; 0x1e57
    jne short @..local.l99           ; 0x1e5a
    mov ax, word [bp - 0x0002]       ; 0x1e5c
    dec ax                           ; 0x1e5f
    mov byte [bx + si + 0x1f], al    ; 0x1e60
    jmp short @..local.l100          ; 0x1e63
@..local.l99:
    mov ax, 0x2c                     ; 0x1e65
    imul word [bp - 0x000e]          ; 0x1e68
    mov si, ax                       ; 0x1e6b
    mov bx, word [data_8482]         ; 0x1e6d
    mov al, byte [bx + si + 0x1f]    ; 0x1e71
    sub ah, ah                       ; 0x1e74
    mov cx, word [bp - 0x0002]       ; 0x1e76
    dec cx                           ; 0x1e79
    cmp ax, cx                       ; 0x1e7a
    jne short @..local.l100          ; 0x1e7c
    mov al, byte [bp - 0x0002]       ; 0x1e7e
    mov byte [bx + si + 0x1f], al    ; 0x1e81
@..local.l100:
    inc word [bp - 0x000e]           ; 0x1e84
@..local.l101:
    mov ax, word [bp - 0x000e]       ; 0x1e87
    cmp ax, word [data_69c8]         ; 0x1e8a
    jl short @..local.l98            ; 0x1e8e
    call api_idx_0004_5              ; 0x1e90
    mov ax, word [bp - 0x0002]       ; 0x1e93
    dec ax                           ; 0x1e96
    push ax                          ; 0x1e97
    call api_idx_000c_2              ; 0x1e98
    pop cx                           ; 0x1e9b
    call api_idx_000c_3              ; 0x1e9c
    mov ax, 0                        ; 0x1e9f
    push ax                          ; 0x1ea2
    call api_idx_005a                ; 0x1ea3
    pop cx                           ; 0x1ea6
@..local.l102:
    dec word [bp - 0x0002]           ; 0x1ea7
@..local.l103:
    cmp word [bp - 0x0002], byte 2   ; 0x1eaa
    jl short @..local.l104           ; 0x1eae
    jmp near @..local.l86            ; 0x1eb0
@..local.l104:
    ret                              ; 0x1eb3
math_loc_1eb4:
    mov ax, 0                        ; 0x1eb4
    call ds_dispatch_f40b            ; 0x1eb7
    mov ax, 0x2c                     ; 0x1eba
    imul word [bp + 0x4]             ; 0x1ebd
    mov si, ax                       ; 0x1ec0
    mov bx, word [data_8482]         ; 0x1ec2
    mov ax, word [bx + si + 0x2]     ; 0x1ec6
    push ax                          ; 0x1ec9
    mov ax, 0x248                    ; 0x1eca
    imul word [bp + 0x4]             ; 0x1ecd
    mov bx, ax                       ; 0x1ed0
    pop ax                           ; 0x1ed2
    mov word [bx + 0x5c0c], ax       ; 0x1ed3
    mov bx, word [data_8482]         ; 0x1ed7
    mov ax, word [bx + si + 0x6]     ; 0x1edb
    push ax                          ; 0x1ede
    mov ax, 0x248                    ; 0x1edf
    imul word [bp + 0x4]             ; 0x1ee2
    mov bx, ax                       ; 0x1ee5
    pop ax                           ; 0x1ee7
    mov word [bx + 0x5c10], ax       ; 0x1ee8
    mov bx, word [data_8482]         ; 0x1eec
    mov al, byte [bx + si + 0x22]    ; 0x1ef0
    push ax                          ; 0x1ef3
    mov ax, 0x248                    ; 0x1ef4
    imul word [bp + 0x4]             ; 0x1ef7
    mov bx, ax                       ; 0x1efa
    pop ax                           ; 0x1efc
    mov byte [bx + 0x5e2f], al       ; 0x1efd
    mov ax, 0xa                      ; 0x1f01
    push ax                          ; 0x1f04
    add bx, strict word 0x5d5a       ; 0x1f05
    mov ax, bx                       ; 0x1f09
    push ax                          ; 0x1f0b
    mov ax, word [data_8482]         ; 0x1f0c
    add ax, si                       ; 0x1f0f
    add ax, strict word 0xe          ; 0x1f11
    push ax                          ; 0x1f14
    call ds_dispatch_fedc            ; 0x1f15
    add sp, byte 6                   ; 0x1f18
    mov ax, 0x2c                     ; 0x1f1b
    imul word [bp + 0x4]             ; 0x1f1e
    mov si, ax                       ; 0x1f21
    mov bx, word [data_8482]         ; 0x1f23
    mov al, byte [bx + si + 0x23]    ; 0x1f27
    push ax                          ; 0x1f2a
    mov ax, 0x248                    ; 0x1f2b
    imul word [bp + 0x4]             ; 0x1f2e
    mov bx, ax                       ; 0x1f31
    pop ax                           ; 0x1f33
    mov byte [bx + 0x5e32], al       ; 0x1f34
    ret                              ; 0x1f38
math_loc_1f39:
    mov ax, 0xfd84                   ; 0x1f39
    call ds_dispatch_f40b            ; 0x1f3c
    mov word [bp - 0x0002], 0        ; 0x1f3f
    jmp short @..math_loc_1f39.l3    ; 0x1f44
@..math_loc_1f39.l1:
    mov ax, 0x2c                     ; 0x1f46
    imul word [bp - 0x0002]          ; 0x1f49
    mov si, ax                       ; 0x1f4c
    mov bx, word [data_8482]         ; 0x1f4e
    cmp byte [bx + si + 0x22], 3     ; 0x1f52
    jae short @..math_loc_1f39.l2    ; 0x1f56
    mov ax, 0x248                    ; 0x1f58
    imul word [bp - 0x0002]          ; 0x1f5b
    mov bx, ax                       ; 0x1f5e
    mov al, byte [bx + 0x5e31]       ; 0x1f60
    sub ah, ah                       ; 0x1f64
    push ax                          ; 0x1f66
    mov al, byte [bx + 0x5e30]       ; 0x1f67
    sub ah, ah                       ; 0x1f6b
    push ax                          ; 0x1f6d
    push word [bp - 0x0002]          ; 0x1f6e
    mov ax, 0                        ; 0x1f71
    push ax                          ; 0x1f74
    call api_idx_000e                ; 0x1f75
    add sp, byte 8                   ; 0x1f78
    cmp ax, strict word 1            ; 0x1f7b
    jne short @..math_loc_1f39.l2    ; 0x1f7e
    push word [bp - 0x0002]          ; 0x1f80
    call math_loc_1eb4               ; 0x1f83
    pop cx                           ; 0x1f86
    mov ax, 1                        ; 0x1f87
    push ax                          ; 0x1f8a
    push word [bp - 0x0002]          ; 0x1f8b
    call ds_dispatch_cb3a            ; 0x1f8e
    add sp, byte 4                   ; 0x1f91
    mov ax, 0x248                    ; 0x1f94
    imul word [bp - 0x0002]          ; 0x1f97
    mov bx, ax                       ; 0x1f9a
    mov al, byte [bx + 0x5e2c]       ; 0x1f9c
    sub ah, ah                       ; 0x1fa0
    add ax, strict word 8            ; 0x1fa2
    push ax                          ; 0x1fa5
    call ds_dispatch_b7e0            ; 0x1fa6
    pop cx                           ; 0x1fa9
@..math_loc_1f39.l2:
    inc word [bp - 0x0002]           ; 0x1faa
@..math_loc_1f39.l3:
    mov ax, word [bp - 0x0002]       ; 0x1fad
    cmp ax, word [data_69c8]         ; 0x1fb0
    jl short @..math_loc_1f39.l1     ; 0x1fb4
    mov word [bp - 0x0002], 0        ; 0x1fb6
    jmp short @..math_loc_1f39.l5    ; 0x1fbb
@..math_loc_1f39.l4:
    push word [bp - 0x0002]          ; 0x1fbd
    call math_loc_1eb4               ; 0x1fc0
    pop cx                           ; 0x1fc3
    inc word [bp - 0x0002]           ; 0x1fc4
@..math_loc_1f39.l5:
    mov ax, word [bp - 0x0002]       ; 0x1fc7
    cmp ax, word [data_69c8]         ; 0x1fca
    jl short @..math_loc_1f39.l4     ; 0x1fce
    mov word [bp - 0x0002], 0        ; 0x1fd0
    jmp near @..math_loc_1f39.l12    ; 0x1fd5
@..math_loc_1f39.l6:
    mov ax, word [bp - 0x0002]       ; 0x1fd8
    inc ax                           ; 0x1fdb
    mov word [bp - 0x0004], ax       ; 0x1fdc
    jmp near @..math_loc_1f39.l10    ; 0x1fdf
@..math_loc_1f39.l7:
    mov ax, 0x248                    ; 0x1fe2
    imul word [bp - 0x0002]          ; 0x1fe5
    mov bx, ax                       ; 0x1fe8
    mov al, byte [bx + 0x5e2f]       ; 0x1fea
    push ax                          ; 0x1fee
    mov ax, 0x248                    ; 0x1fef
    imul word [bp - 0x0004]          ; 0x1ff2
    mov bx, ax                       ; 0x1ff5
    mov cl, byte [bx + 0x5e2f]       ; 0x1ff7
    pop ax                           ; 0x1ffb
    cmp al, cl                       ; 0x1ffc
    ja short @..math_loc_1f39.l8     ; 0x1ffe
    jmp near @..math_loc_1f39.l9     ; 0x2000
@..math_loc_1f39.l8:
    mov ax, 0x248                    ; 0x2003
    push ax                          ; 0x2006
    add bx, strict word 0x5bf4       ; 0x2007
    mov ax, bx                       ; 0x200b
    push ax                          ; 0x200d
    mov ax, 0x248                    ; 0x200e
    imul word [bp - 0x0002]          ; 0x2011
    add ax, 0x5bf4                   ; 0x2014
    push ax                          ; 0x2017
    call string_loc_374e             ; 0x2018
    add sp, byte 6                   ; 0x201b
    mov ax, 0x2c                     ; 0x201e
    push ax                          ; 0x2021
    mov ax, 0x2c                     ; 0x2022
    imul word [bp - 0x0004]          ; 0x2025
    mov cx, ax                       ; 0x2028
    mov ax, word [data_8482]         ; 0x202a
    add ax, cx                       ; 0x202d
    push ax                          ; 0x202f
    mov ax, 0x2c                     ; 0x2030
    imul word [bp - 0x0002]          ; 0x2033
    mov cx, ax                       ; 0x2036
    mov ax, word [data_8482]         ; 0x2038
    add ax, cx                       ; 0x203b
    push ax                          ; 0x203d
    call string_loc_374e             ; 0x203e
    add sp, byte 6                   ; 0x2041
    mov ax, word [bp - 0x0002]       ; 0x2044
    shl ax, 1                        ; 0x2047
    mov bx, ax                       ; 0x2049
    mov ax, word [bx - 0x750e]       ; 0x204b
    mov word [bp - 0x027a], ax       ; 0x204f
    mov ax, word [bp - 0x0004]       ; 0x2053
    shl ax, 1                        ; 0x2056
    mov bx, ax                       ; 0x2058
    mov ax, word [bx - 0x750e]       ; 0x205a
    mov cx, word [bp - 0x0002]       ; 0x205e
    shl cx, 1                        ; 0x2061
    mov bx, cx                       ; 0x2063
    mov word [bx - 0x750e], ax       ; 0x2065
    mov ax, word [bp - 0x027a]       ; 0x2069
    mov cx, word [bp - 0x0004]       ; 0x206d
    shl cx, 1                        ; 0x2070
    mov bx, cx                       ; 0x2072
    mov word [bx - 0x750e], ax       ; 0x2074
    mov ax, word [bp - 0x0002]       ; 0x2078
    shl ax, 1                        ; 0x207b
    mov bx, ax                       ; 0x207d
    mov ax, word [bx + 0x69bc]       ; 0x207f
    mov word [bp - 0x027a], ax       ; 0x2083
    mov bx, cx                       ; 0x2087
    mov ax, word [bx + 0x69bc]       ; 0x2089
    mov cx, word [bp - 0x0002]       ; 0x208d
    shl cx, 1                        ; 0x2090
    mov bx, cx                       ; 0x2092
    mov word [bx + 0x69bc], ax       ; 0x2094
    mov ax, word [bp - 0x027a]       ; 0x2098
    mov cx, word [bp - 0x0004]       ; 0x209c
    shl cx, 1                        ; 0x209f
    mov bx, cx                       ; 0x20a1
    mov word [bx + 0x69bc], ax       ; 0x20a3
@..math_loc_1f39.l9:
    inc word [bp - 0x0004]           ; 0x20a7
@..math_loc_1f39.l10:
    mov ax, word [bp - 0x0004]       ; 0x20aa
    cmp ax, word [data_69c8]         ; 0x20ad
    jge short @..math_loc_1f39.l11   ; 0x20b1
    jmp near @..math_loc_1f39.l7     ; 0x20b3
@..math_loc_1f39.l11:
    inc word [bp - 0x0002]           ; 0x20b6
@..math_loc_1f39.l12:
    mov ax, word [data_69c8]         ; 0x20b9
    dec ax                           ; 0x20bc
    cmp ax, word [bp - 0x0002]       ; 0x20bd
    jle short @..math_loc_1f39.l13   ; 0x20c0
    jmp near @..math_loc_1f39.l6     ; 0x20c2
@..math_loc_1f39.l13:
    mov word [bp - 0x0004], 0        ; 0x20c5
    mov word [bp - 0x027c], 0        ; 0x20ca
    mov word [bp - 0x0002], 0        ; 0x20d0
    jmp short @..math_loc_1f39.l17   ; 0x20d5
@..math_loc_1f39.l14:
    mov ax, 0x248                    ; 0x20d7
    imul word [bp - 0x0002]          ; 0x20da
    mov bx, ax                       ; 0x20dd
    cmp byte [bx + 0x5e2f], data_0002 ; 0x20df
    jb short @..math_loc_1f39.l15    ; 0x20e4
    inc word [bp - 0x0004]           ; 0x20e6
@..math_loc_1f39.l15:
    mov ax, 0x2c                     ; 0x20e9
    imul word [bp - 0x0002]          ; 0x20ec
    mov si, ax                       ; 0x20ef
    mov bx, word [data_8482]         ; 0x20f1
    cmp byte [bx + si + 0x2b], data_0002 ; 0x20f5
    jne short @..math_loc_1f39.l16   ; 0x20f9
    mov word [bp - 0x027c], 1        ; 0x20fb
@..math_loc_1f39.l16:
    inc word [bp - 0x0002]           ; 0x2101
@..math_loc_1f39.l17:
    mov ax, word [bp - 0x0002]       ; 0x2104
    cmp ax, word [data_69c8]         ; 0x2107
    jl short @..math_loc_1f39.l14    ; 0x210b
    mov ax, word [bp - 0x0004]       ; 0x210d
    cmp ax, word [data_69c8]         ; 0x2110
    jne short @..math_loc_1f39.l18   ; 0x2114
    mov word [data_905e], 8          ; 0x2116
    mov word [data_845c], 1          ; 0x211c
    jmp short @..math_loc_1f39.l19   ; 0x2122
@..math_loc_1f39.l18:
    cmp word [bp - 0x027c], byte 0   ; 0x2124
    jle short @..math_loc_1f39.l19   ; 0x2129
    mov word [data_905e], 0x17       ; 0x212b
    mov word [data_845c], 1          ; 0x2131
@..math_loc_1f39.l19:
    ret                              ; 0x2137
api_idx_000e_2:
    mov ax, 0xfff2                   ; 0x2138
    call ds_dispatch_f40b            ; 0x213b
    mov bx, word [bp + 0xe]          ; 0x213e
    mov byte [bx], 0                 ; 0x2141
    mov ax, word [bp + 0x4]          ; 0x2144
    shl ax, 1                        ; 0x2147
    mov bx, ax                       ; 0x2149
    mov bx, word [bx - 0x7b7e]       ; 0x214b
    cmp byte [bx + 0x19f], 0xff      ; 0x214f
    jne short @..local.l105          ; 0x2154
    ret                              ; 0x2156
@..local.l105:
    mov al, byte [bx + 0x19f]        ; 0x2157
    cbw                              ; 0x215b
    mov word [bp - 0x0002], ax       ; 0x215c
    mov word [bp - 0x000e], 0        ; 0x215f
    mov cx, 0x15e                    ; 0x2164
    imul cx                          ; 0x2167
    push ax                          ; 0x2169
    mov ax, 3                        ; 0x216a
    imul word [bp + 0x8]             ; 0x216d
    add ax, word [bp + 0xa]          ; 0x2170
    mov bx, ax                       ; 0x2173
    mov al, byte [bx - 0x7bd0]       ; 0x2175
    sub ah, ah                       ; 0x2179
    mov cx, ax                       ; 0x217b
    pop ax                           ; 0x217d
    add ax, cx                       ; 0x217e
    mov bx, ax                       ; 0x2180
    mov al, byte [bx + 0x6a1a]       ; 0x2182
    sub ah, ah                       ; 0x2186
    mov word [bp - 0x0004], ax       ; 0x2188
    jmp near @..local.l119           ; 0x218b
@..local.l106:
    mov ax, 0x2c                     ; 0x218e
    imul word [bp + 0x6]             ; 0x2191
    mov si, ax                       ; 0x2194
    mov ax, word [bp + 0x4]          ; 0x2196
    shl ax, 1                        ; 0x2199
    mov bx, ax                       ; 0x219b
    mov bx, word [bx - 0x7b7e]       ; 0x219d
    cmp byte [bx + si + 0x22], data_0002 ; 0x21a1
    je short @..local.l107           ; 0x21a5
    cmp byte [bx + si + 0x11], 0     ; 0x21a7
    ja short @..local.l107           ; 0x21ab
    cmp byte [bx + si + 0x10], 0     ; 0x21ad
    jbe short @..local.l108          ; 0x21b1
@..local.l107:
    mov ax, 0x5a                     ; 0x21b3
    imul word [bp + 0x8]             ; 0x21b6
    push ax                          ; 0x21b9
    mov ax, 0x1e                     ; 0x21ba
    imul word [bp + 0xa]             ; 0x21bd
    mov cx, ax                       ; 0x21c0
    pop ax                           ; 0x21c2
    add ax, cx                       ; 0x21c3
    push ax                          ; 0x21c5
    mov ax, 3                        ; 0x21c6
    imul word [bp - 0x0004]          ; 0x21c9
    mov cx, ax                       ; 0x21cc
    pop ax                           ; 0x21ce
    add ax, cx                       ; 0x21cf
    mov bx, ax                       ; 0x21d1
    mov al, byte [bx - 0x7cde]       ; 0x21d3
    sub ah, ah                       ; 0x21d7
    mov word [bp - 0x0006], ax       ; 0x21d9
    mov ax, 0x15e                    ; 0x21dc
    imul word [bp - 0x0002]          ; 0x21df
    mov cx, ax                       ; 0x21e2
    mov ax, word [bp - 0x0006]       ; 0x21e4
    add cx, ax                       ; 0x21e7
    mov bx, cx                       ; 0x21e9
    mov al, byte [bx + 0x6a40]       ; 0x21eb
    sub ah, ah                       ; 0x21ef
    mov word [bp - 0x0008], ax       ; 0x21f1
    jmp near @..local.l115           ; 0x21f4
@..local.l108:
    mov ax, 0x5a                     ; 0x21f7
    imul word [bp + 0x8]             ; 0x21fa
    push ax                          ; 0x21fd
    mov ax, 0x1e                     ; 0x21fe
    imul word [bp + 0xa]             ; 0x2201
    mov cx, ax                       ; 0x2204
    pop ax                           ; 0x2206
    add ax, cx                       ; 0x2207
    push ax                          ; 0x2209
    mov ax, 3                        ; 0x220a
    imul word [bp - 0x0004]          ; 0x220d
    mov cx, ax                       ; 0x2210
    pop ax                           ; 0x2212
    add ax, cx                       ; 0x2213
    mov bx, ax                       ; 0x2215
    mov al, byte [bx - 0x7cdd]       ; 0x2217
    sub ah, ah                       ; 0x221b
    mov word [bp - 0x0008], ax       ; 0x221d
    mov al, byte [bx - 0x7cdc]       ; 0x2220
    sub ah, ah                       ; 0x2224
    mov word [bp - 0x000a], ax       ; 0x2226
    cmp word [bp + 0xc], byte 0      ; 0x2229
    je short @..local.l109           ; 0x222d
    dec word [bp - 0x000a]           ; 0x222f
@..local.l109:
    cmp word [bp - 0x000a], byte 0   ; 0x2232
    jle short @..local.l110          ; 0x2236
    jmp near @..local.l114           ; 0x2238
@..local.l110:
    mov al, byte [bx - 0x7cde]       ; 0x223b
    sub ah, ah                       ; 0x223f
    mov word [bp - 0x0006], ax       ; 0x2241
    inc word [bp - 0x0008]           ; 0x2244
    mov ax, 0x15e                    ; 0x2247
    imul word [bp - 0x0002]          ; 0x224a
    mov cx, ax                       ; 0x224d
    mov ax, word [bp - 0x0006]       ; 0x224f
    add cx, ax                       ; 0x2252
    mov bx, cx                       ; 0x2254
    mov al, byte [bx + 0x6a40]       ; 0x2256
    sub ah, ah                       ; 0x225a
    push ax                          ; 0x225c
    mov al, byte [bx + 0x6a4a]       ; 0x225d
    sub ah, ah                       ; 0x2261
    mov cx, ax                       ; 0x2263
    pop ax                           ; 0x2265
    add ax, cx                       ; 0x2266
    dec ax                           ; 0x2268
    cmp ax, word [bp - 0x0008]       ; 0x2269
    jl short @..local.l111           ; 0x226c
    jmp near @..local.l113           ; 0x226e
@..local.l111:
    mov ax, 3                        ; 0x2271
    imul word [bp + 0x8]             ; 0x2274
    add ax, word [bp + 0xa]          ; 0x2277
    mov bx, ax                       ; 0x227a
    cmp byte [bx - 0x7bd0], 0        ; 0x227c
    je short @..local.l112           ; 0x2281
    mov byte [bx - 0x7bd0], 0        ; 0x2283
    mov ax, 0                        ; 0x2288
    push ax                          ; 0x228b
    push word [bp + 0xa]             ; 0x228c
    push word [bp + 0x8]             ; 0x228f
    push word [bp + 0x4]             ; 0x2292
    call api_idx_000a_2              ; 0x2295
    add sp, byte 8                   ; 0x2298
    push word [bp + 0xe]             ; 0x229b
    mov ax, 0                        ; 0x229e
    push ax                          ; 0x22a1
    push word [bp + 0xa]             ; 0x22a2
    push word [bp + 0x8]             ; 0x22a5
    push word [bp + 0x6]             ; 0x22a8
    push word [bp + 0x4]             ; 0x22ab
    call api_idx_000e_2              ; 0x22ae
    add sp, byte 0x0c                ; 0x22b1
    ret                              ; 0x22b4
@..local.l112:
    mov ax, 0x15e                    ; 0x22b5
    imul word [bp - 0x0002]          ; 0x22b8
    add ax, word [bp - 0x0004]       ; 0x22bb
    mov bx, ax                       ; 0x22be
    mov al, byte [bx + 0x6a2c]       ; 0x22c0
    sub ah, ah                       ; 0x22c4
    push ax                          ; 0x22c6
    call ds_dispatch_b7a9            ; 0x22c7
    pop cx                           ; 0x22ca
    push ax                          ; 0x22cb
    mov ax, 0x15e                    ; 0x22cc
    imul word [bp - 0x0002]          ; 0x22cf
    add ax, word [bp - 0x0004]       ; 0x22d2
    mov bx, ax                       ; 0x22d5
    mov al, byte [bx + 0x6a22]       ; 0x22d7
    sub ah, ah                       ; 0x22db
    mov cx, ax                       ; 0x22dd
    pop ax                           ; 0x22df
    add ax, cx                       ; 0x22e0
    mov word [bp - 0x0006], ax       ; 0x22e2
    mov al, byte [bp - 0x0006]       ; 0x22e5
    push ax                          ; 0x22e8
    mov ax, 0x5a                     ; 0x22e9
    imul word [bp + 0x8]             ; 0x22ec
    mov cx, ax                       ; 0x22ef
    mov ax, 0x1e                     ; 0x22f1
    imul word [bp + 0xa]             ; 0x22f4
    mov dx, ax                       ; 0x22f7
    add cx, ax                       ; 0x22f9
    mov ax, 3                        ; 0x22fb
    imul word [bp - 0x0004]          ; 0x22fe
    mov dx, ax                       ; 0x2301
    add cx, ax                       ; 0x2303
    mov bx, cx                       ; 0x2305
    pop ax                           ; 0x2307
    mov byte [bx - 0x7cde], al       ; 0x2308
    mov ax, 0x15e                    ; 0x230c
    imul word [bp - 0x0002]          ; 0x230f
    add ax, word [bp - 0x0006]       ; 0x2312
    mov bx, ax                       ; 0x2315
    mov al, byte [bx + 0x6a40]       ; 0x2317
    sub ah, ah                       ; 0x231b
    mov word [bp - 0x0008], ax       ; 0x231d
@..local.l113:
    mov al, byte [bp - 0x0008]       ; 0x2320
    push ax                          ; 0x2323
    mov ax, 0x5a                     ; 0x2324
    imul word [bp + 0x8]             ; 0x2327
    mov cx, ax                       ; 0x232a
    mov ax, 0x1e                     ; 0x232c
    imul word [bp + 0xa]             ; 0x232f
    mov dx, ax                       ; 0x2332
    add cx, ax                       ; 0x2334
    mov ax, 3                        ; 0x2336
    imul word [bp - 0x0004]          ; 0x2339
    mov dx, ax                       ; 0x233c
    add cx, ax                       ; 0x233e
    mov bx, cx                       ; 0x2340
    pop ax                           ; 0x2342
    mov byte [bx - 0x7cdd], al       ; 0x2343
    mov ax, 0x15e                    ; 0x2347
    imul word [bp - 0x0002]          ; 0x234a
    mov cx, word [bp - 0x0008]       ; 0x234d
    shl cx, 1                        ; 0x2350
    shl cx, 1                        ; 0x2352
    add ax, cx                       ; 0x2354
    mov bx, ax                       ; 0x2356
    mov al, byte [bx + 0x6ac2]       ; 0x2358
    sub ah, ah                       ; 0x235c
    push ax                          ; 0x235e
    call ds_dispatch_b7a9            ; 0x235f
    pop cx                           ; 0x2362
    push ax                          ; 0x2363
    mov ax, 0x15e                    ; 0x2364
    imul word [bp - 0x0002]          ; 0x2367
    mov cx, word [bp - 0x0008]       ; 0x236a
    shl cx, 1                        ; 0x236d
    shl cx, 1                        ; 0x236f
    add ax, cx                       ; 0x2371
    mov bx, ax                       ; 0x2373
    mov al, byte [bx + 0x6ac1]       ; 0x2375
    sub ah, ah                       ; 0x2379
    mov cx, ax                       ; 0x237b
    pop ax                           ; 0x237d
    add ax, cx                       ; 0x237e
    mov word [bp - 0x000a], ax       ; 0x2380
@..local.l114:
    mov al, byte [bp - 0x000a]       ; 0x2383
    push ax                          ; 0x2386
    mov ax, 0x5a                     ; 0x2387
    imul word [bp + 0x8]             ; 0x238a
    mov cx, ax                       ; 0x238d
    mov ax, 0x1e                     ; 0x238f
    imul word [bp + 0xa]             ; 0x2392
    mov dx, ax                       ; 0x2395
    add cx, ax                       ; 0x2397
    mov ax, 3                        ; 0x2399
    imul word [bp - 0x0004]          ; 0x239c
    mov dx, ax                       ; 0x239f
    add cx, ax                       ; 0x23a1
    mov bx, cx                       ; 0x23a3
    pop ax                           ; 0x23a5
    mov byte [bx - 0x7cdc], al       ; 0x23a6
@..local.l115:
    mov ax, 0x15e                    ; 0x23aa
    imul word [bp - 0x0002]          ; 0x23ad
    mov cx, word [bp - 0x0008]       ; 0x23b0
    shl cx, 1                        ; 0x23b3
    shl cx, 1                        ; 0x23b5
    add ax, cx                       ; 0x23b7
    mov bx, ax                       ; 0x23b9
    mov al, byte [bx + 0x6ac0]       ; 0x23bb
    mov bx, word [bp + 0xe]          ; 0x23bf
    mov si, word [bp - 0x000e]       ; 0x23c2
    mov byte [bx + si], al           ; 0x23c5
    mov ax, word [bp + 0x4]          ; 0x23c7
    shl ax, 1                        ; 0x23ca
    mov bx, ax                       ; 0x23cc
    mov bx, word [bx - 0x7b7e]       ; 0x23ce
    cmp byte [bx + 0x19e], 0x79      ; 0x23d2
    je short @..local.l116           ; 0x23d7
    mov al, byte [bx + 0x19e]        ; 0x23d9
    sub ah, ah                       ; 0x23dd
    cmp ax, 0x8d                     ; 0x23df
    jne short @..local.l117          ; 0x23e2
@..local.l116:
    inc word [bp - 0x000e]           ; 0x23e4
    mov bx, word [bp + 0xe]          ; 0x23e7
    mov si, word [bp - 0x000e]       ; 0x23ea
    mov al, byte [bx + si - 0x0001]  ; 0x23ed
    mov byte [bx + si], al           ; 0x23f0
    mov ax, 0x15e                    ; 0x23f2
    imul word [bp - 0x0002]          ; 0x23f5
    mov bx, ax                       ; 0x23f8
    mov al, byte [bx + 0x6b76]       ; 0x23fa
    mov bx, word [bp + 0xe]          ; 0x23fe
    mov si, word [bp - 0x000e]       ; 0x2401
    mov byte [bx + si - 0x0001], al  ; 0x2404
@..local.l117:
    mov bx, word [bp + 0xe]          ; 0x2407
    mov si, word [bp - 0x000e]       ; 0x240a
    cmp byte [bx + si], 0            ; 0x240d
    je short @..local.l118           ; 0x2410
    inc word [bp - 0x000e]           ; 0x2412
@..local.l118:
    inc word [bp - 0x0004]           ; 0x2415
@..local.l119:
    mov ax, 0x15e                    ; 0x2418
    imul word [bp - 0x0002]          ; 0x241b
    push ax                          ; 0x241e
    mov ax, 3                        ; 0x241f
    imul word [bp + 0x8]             ; 0x2422
    add ax, word [bp + 0xa]          ; 0x2425
    mov bx, ax                       ; 0x2428
    mov al, byte [bx - 0x7bd0]       ; 0x242a
    sub ah, ah                       ; 0x242e
    mov cx, ax                       ; 0x2430
    pop ax                           ; 0x2432
    add ax, cx                       ; 0x2433
    mov bx, ax                       ; 0x2435
    mov al, byte [bx + 0x6a1a]       ; 0x2437
    sub ah, ah                       ; 0x243b
    push ax                          ; 0x243d
    mov al, byte [bx + 0x6a1e]       ; 0x243e
    sub ah, ah                       ; 0x2442
    mov cx, ax                       ; 0x2444
    pop ax                           ; 0x2446
    add ax, cx                       ; 0x2447
    cmp ax, word [bp - 0x0004]       ; 0x2449
    jle short @..local.l120          ; 0x244c
    jmp near @..local.l106           ; 0x244e
@..local.l120:
    mov bx, word [bp + 0xe]          ; 0x2451
    mov si, word [bp - 0x000e]       ; 0x2454
    mov byte [bx + si], 0            ; 0x2457
    ret                              ; 0x245a
api_idx_0004_6:
    mov ax, 0xfffc                   ; 0x245b
    call ds_dispatch_f40b            ; 0x245e
    mov word [bp - 0x0002], 0        ; 0x2461
@..api_idx_0004_6.l1:
    mov ax, word [bp - 0x0002]       ; 0x2466
    cmp ax, word [data_8468]         ; 0x2469
    jge short @..api_idx_0004_6.l2   ; 0x246d
    shl ax, 1                        ; 0x246f
    mov bx, ax                       ; 0x2471
    mov bx, word [bx - 0x7b96]       ; 0x2473
    mov al, byte [bx + 0x14]         ; 0x2477
    sub ah, ah                       ; 0x247a
    cmp ax, word [bp + 0x4]          ; 0x247c
    jg short @..api_idx_0004_6.l2    ; 0x247f
    inc word [bp - 0x0002]           ; 0x2481
    jmp short @..api_idx_0004_6.l1   ; 0x2484
@..api_idx_0004_6.l2:
    mov ax, word [data_8468]         ; 0x2486
    mov word [bp - 0x0004], ax       ; 0x2489
    jmp short @..api_idx_0004_6.l4   ; 0x248c
@..api_idx_0004_6.l3:
    mov ax, word [bp - 0x0004]       ; 0x248e
    shl ax, 1                        ; 0x2491
    mov bx, ax                       ; 0x2493
    mov si, word [bx - 0x7b98]       ; 0x2495
    mov di, word [bx - 0x7b96]       ; 0x2499
    mov cx, ds                       ; 0x249d
    mov es, cx                       ; 0x249f
    mov cx, 0xc                      ; 0x24a1
    rep movsw                        ; 0x24a4
    dec word [bp - 0x0004]           ; 0x24a6
@..api_idx_0004_6.l4:
    mov ax, word [bp - 0x0004]       ; 0x24a9
    cmp ax, word [bp - 0x0002]       ; 0x24ac
    jg short @..api_idx_0004_6.l3    ; 0x24af
    cmp word [bp - 0x0002], byte 0x0c ; 0x24b1
    jl short @..api_idx_0004_6.l6    ; 0x24b5
@..api_idx_0004_6.l5:
    mov ax, 0                        ; 0x24b7
    push ax                          ; 0x24ba
    call ds_dispatch_b7e0            ; 0x24bb
    pop cx                           ; 0x24be
    jmp short @..api_idx_0004_6.l5   ; 0x24bf
@..api_idx_0004_6.l6:
    mov al, byte [bp + 0x4]          ; 0x24c1
    mov cx, word [bp - 0x0002]       ; 0x24c4
    shl cx, 1                        ; 0x24c7
    mov bx, cx                       ; 0x24c9
    mov bx, word [bx - 0x7b96]       ; 0x24cb
    mov byte [bx + 0x14], al         ; 0x24cf
    mov al, byte [bp + 0x6]          ; 0x24d2
    mov cx, word [bp - 0x0002]       ; 0x24d5
    shl cx, 1                        ; 0x24d8
    mov bx, cx                       ; 0x24da
    mov bx, word [bx - 0x7b96]       ; 0x24dc
    mov byte [bx + 0x15], al         ; 0x24e0
    mov ax, word [bp + 0x8]          ; 0x24e3
    mov cx, word [bp - 0x0002]       ; 0x24e6
    shl cx, 1                        ; 0x24e9
    mov bx, cx                       ; 0x24eb
    mov bx, word [bx - 0x7b96]       ; 0x24ed
    mov word [bx], ax                ; 0x24f1
    mov ax, word [bp + 0xa]          ; 0x24f3
    mov cx, word [bp - 0x0002]       ; 0x24f6
    shl cx, 1                        ; 0x24f9
    mov bx, cx                       ; 0x24fb
    mov bx, word [bx - 0x7b96]       ; 0x24fd
    mov word [bx + 0x2], ax          ; 0x2501
    mov ax, word [bp + 0xc]          ; 0x2504
    mov cx, word [bp - 0x0002]       ; 0x2507
    shl cx, 1                        ; 0x250a
    mov bx, cx                       ; 0x250c
    mov bx, word [bx - 0x7b96]       ; 0x250e
    mov word [bx + 0x4], ax          ; 0x2512
    mov ax, word [bp + 0xe]          ; 0x2515
    mov cx, word [bp - 0x0002]       ; 0x2518
    shl cx, 1                        ; 0x251b
    mov bx, cx                       ; 0x251d
    mov bx, word [bx - 0x7b96]       ; 0x251f
    mov word [bx + 0x6], ax          ; 0x2523
    mov al, byte [bp + 0x10]         ; 0x2526
    mov cx, word [bp - 0x0002]       ; 0x2529
    shl cx, 1                        ; 0x252c
    mov bx, cx                       ; 0x252e
    mov bx, word [bx - 0x7b96]       ; 0x2530
    mov byte [bx + 0x16], al         ; 0x2534
    mov al, byte [bp + 0x12]         ; 0x2537
    mov cx, word [bp - 0x0002]       ; 0x253a
    shl cx, 1                        ; 0x253d
    mov bx, cx                       ; 0x253f
    mov bx, word [bx - 0x7b96]       ; 0x2541
    mov byte [bx + 0x17], al         ; 0x2545
    push word [bp + 0x14]            ; 0x2548
    mov ax, word [bp - 0x0002]       ; 0x254b
    shl ax, 1                        ; 0x254e
    mov bx, ax                       ; 0x2550
    mov ax, word [bx - 0x7b96]       ; 0x2552
    add ax, strict word 8            ; 0x2556
    push ax                          ; 0x2559
    call ds_dispatch_f364            ; 0x255a
    add sp, byte 4                   ; 0x255d
    inc word [data_8468]             ; 0x2560
    ret                              ; 0x2564
api_idx_001c:
    mov ax, 0xffe4                   ; 0x2565
    call ds_dispatch_f40b            ; 0x2568
    mov byte [bp - 0x001c], 0        ; 0x256b
    mov ax, 6                        ; 0x256f
    imul word [bp + 0x4]             ; 0x2572
    mov cx, word [bp + 0x6]          ; 0x2575
    shl cx, 1                        ; 0x2578
    add ax, cx                       ; 0x257a
    mov bx, ax                       ; 0x257c
    mov ax, word [bx - 0x7bc6]       ; 0x257e
    mov cx, 0xa                      ; 0x2582
    cwd                              ; 0x2585
    idiv cx                          ; 0x2586
    mov word [bp - 0x0002], ax       ; 0x2588
    mov word [bp - 0x0004], dx       ; 0x258b
    cmp ax, strict word 1            ; 0x258e
    jl short @..api_idx_001c.l1      ; 0x2591
    cmp ax, strict word 3            ; 0x2593
    jg short @..api_idx_001c.l1      ; 0x2596
    mov ax, word [bp + 0x4]          ; 0x2598
    cmp ax, word [data_8454]         ; 0x259b
    jle short @..local.l121          ; 0x259f
@..api_idx_001c.l1:
    ret                              ; 0x25a1
@..local.l121:
    mov ax, word [bp - 0x0002]       ; 0x25a2
    shl ax, 1                        ; 0x25a5
    mov bx, ax                       ; 0x25a7
    mov bx, word [bx - 0x7b7e]       ; 0x25a9
    cmp byte [bx + 0x19f], 0xff      ; 0x25ad
    jne short @..local.l122          ; 0x25b2
    ret                              ; 0x25b4
@..local.l122:
    mov al, byte [bx + 0x19f]        ; 0x25b5
    cbw                              ; 0x25b9
    mov word [bp - 0x0006], ax       ; 0x25ba
    lea ax, word [bp - 0x001c]       ; 0x25bd
    push ax                          ; 0x25c0
    push word [bp + 0x10]            ; 0x25c1
    push word [bp + 0x6]             ; 0x25c4
    push word [bp + 0x4]             ; 0x25c7
    push dx                          ; 0x25ca
    push word [bp - 0x0002]          ; 0x25cb
    call api_idx_000e_2              ; 0x25ce
    add sp, byte 0x0c                ; 0x25d1
    cmp byte [bp - 0x001c], 0        ; 0x25d4
    jne short @..local.l123          ; 0x25d8
    ret                              ; 0x25da
@..local.l123:
    mov ax, word [bp + 0x6]          ; 0x25db
    mov cx, data_0002                ; 0x25de
    cwd                              ; 0x25e1
    idiv cx                          ; 0x25e2
    mov word [bp - 0x0008], dx       ; 0x25e4
    mov al, byte [bp - 0x001c]       ; 0x25e7
    sub ah, ah                       ; 0x25ea
    mov word [bp - 0x000a], ax       ; 0x25ec
    mov ax, 0x15e                    ; 0x25ef
    imul word [bp - 0x0006]          ; 0x25f2
    mov bx, ax                       ; 0x25f5
    cmp byte [bx + 0x6b75], 0        ; 0x25f7
    je short @..local.l124           ; 0x25fc
    mov word [bp + 0x8], 0           ; 0x25fe
@..local.l124:
    mov cx, word [bp - 0x000a]       ; 0x2603
    shl cx, 1                        ; 0x2606
    shl cx, 1                        ; 0x2608
    add ax, cx                       ; 0x260a
    mov bx, ax                       ; 0x260c
    mov al, byte [bx + 0x6abf]       ; 0x260e
    sub ah, ah                       ; 0x2612
    mov word [bp - 0x000c], ax       ; 0x2614
    cmp word [bp - 0x000c], byte 0   ; 0x2617
    jne short @..local.l125          ; 0x261b
    mov ax, 6                        ; 0x261d
    imul word [bp + 0x4]             ; 0x2620
    mov cx, word [bp + 0x6]          ; 0x2623
    shl cx, 1                        ; 0x2626
    add ax, cx                       ; 0x2628
    mov bx, ax                       ; 0x262a
    mov ax, word [bx + 0x5b6]        ; 0x262c
    sub ax, word [bp - 0x0002]       ; 0x2630
    mov word [bp - 0x000c], ax       ; 0x2633
    jmp short @..local.l127          ; 0x2636
@..local.l125:
    mov ax, 0x64                     ; 0x2638
    push ax                          ; 0x263b
    mov ax, 5                        ; 0x263c
    push ax                          ; 0x263f
    mov ax, 0xa                      ; 0x2640
    imul word [bp + 0x4]             ; 0x2643
    mov cx, ax                       ; 0x2646
    mov ax, 0                        ; 0x2648
    cmp word [bp + 0x6], byte 0      ; 0x264b
    jne short @..local.l126          ; 0x264f
    mov ax, 5                        ; 0x2651
@..local.l126:
    add cx, ax                       ; 0x2654
    mov ax, word [bp - 0x000c]       ; 0x2656
    sub ax, cx                       ; 0x2659
    push ax                          ; 0x265b
    call ds_dispatch_b7c2            ; 0x265c
    add sp, byte 6                   ; 0x265f
    mov word [bp - 0x000c], ax       ; 0x2662
@..local.l127:
    mov ax, word [bp + 0xe]          ; 0x2665
    dec ax                           ; 0x2668
    push ax                          ; 0x2669
    mov ax, 0                        ; 0x266a
    push ax                          ; 0x266d
    mov ax, 0x15e                    ; 0x266e
    imul word [bp - 0x0006]          ; 0x2671
    push ax                          ; 0x2674
    mov ax, word [bp - 0x0008]       ; 0x2675
    mov cx, data_0002                ; 0x2678
    cwd                              ; 0x267b
    idiv cx                          ; 0x267c
    mov cx, dx                       ; 0x267e
    pop ax                           ; 0x2680
    add ax, cx                       ; 0x2681
    mov cx, word [bp - 0x000a]       ; 0x2683
    shl cx, 1                        ; 0x2686
    add ax, cx                       ; 0x2688
    mov bx, ax                       ; 0x268a
    mov al, byte [bx + 0x6a52]       ; 0x268c
    sub ah, ah                       ; 0x2690
    push ax                          ; 0x2692
    mov ax, 0x15e                    ; 0x2693
    imul word [bp - 0x0006]          ; 0x2696
    mov cx, word [bp + 0x6]          ; 0x2699
    shl cx, 1                        ; 0x269c
    add ax, cx                       ; 0x269e
    mov bx, ax                       ; 0x26a0
    mov al, byte [bx + 0x6b60]       ; 0x26a2
    cbw                              ; 0x26a6
    mov cx, ax                       ; 0x26a7
    pop ax                           ; 0x26a9
    add ax, cx                       ; 0x26aa
    push ax                          ; 0x26ac
    call ds_dispatch_b7c2            ; 0x26ad
    add sp, byte 6                   ; 0x26b0
    mov word [bp - 0x000e], ax       ; 0x26b3
    mov ax, 0x15e                    ; 0x26b6
    imul word [bp - 0x0006]          ; 0x26b9
    add ax, word [bp - 0x000a]       ; 0x26bc
    mov bx, ax                       ; 0x26bf
    mov al, byte [bx + 0x6a9b]       ; 0x26c1
    sub ah, ah                       ; 0x26c5
    push ax                          ; 0x26c7
    mov ax, 0x15e                    ; 0x26c8
    imul word [bp - 0x0006]          ; 0x26cb
    mov cx, word [bp + 0x6]          ; 0x26ce
    shl cx, 1                        ; 0x26d1
    add ax, cx                       ; 0x26d3
    mov bx, ax                       ; 0x26d5
    mov al, byte [bx + 0x6b61]       ; 0x26d7
    cbw                              ; 0x26db
    mov cx, ax                       ; 0x26dc
    pop ax                           ; 0x26de
    add ax, cx                       ; 0x26df
    mov word [bp - 0x0010], ax       ; 0x26e1
    cmp word [data_8466], byte 1     ; 0x26e4
    jne short @..local.l128          ; 0x26e9
    mov bx, word [data_8484]         ; 0x26eb
    cmp byte [bx + 0x1a1], 1         ; 0x26ef
    jne short @..local.l128          ; 0x26f4
    cmp word [bp + 0x4], byte 0      ; 0x26f6
    jne short @..local.l128          ; 0x26fa
    mov word [bp + 0xa], 0           ; 0x26fc
@..local.l128:
    mov ax, 0xa0                     ; 0x2701
    sub ax, word [bp - 0x000e]       ; 0x2704
    imul word [bp + 0xa]             ; 0x2707
    mov cx, 0x64                     ; 0x270a
    cwd                              ; 0x270d
    idiv cx                          ; 0x270e
    add word [bp - 0x000e], ax       ; 0x2710
    mov ax, word [bp - 0x0008]       ; 0x2713
    mov cx, data_0002                ; 0x2716
    cwd                              ; 0x2719
    idiv cx                          ; 0x271a
    mov ax, dx                       ; 0x271c
    test ax, ax                      ; 0x271e
    je short @..local.l129           ; 0x2720
    mov ax, 0x15e                    ; 0x2722
    imul word [bp - 0x0006]          ; 0x2725
    mov cx, ax                       ; 0x2728
    mov ax, word [bp - 0x0008]       ; 0x272a
    mov bx, data_0002                ; 0x272d
    cwd                              ; 0x2730
    idiv bx                          ; 0x2731
    mov ax, dx                       ; 0x2733
    add cx, ax                       ; 0x2735
    mov ax, cx                       ; 0x2737
    mov cx, word [bp - 0x000a]       ; 0x2739
    shl cx, 1                        ; 0x273c
    add ax, cx                       ; 0x273e
    mov bx, ax                       ; 0x2740
    mov al, byte [bx + 0x6a52]       ; 0x2742
    sub ah, ah                       ; 0x2746
    mov cx, ax                       ; 0x2748
    mov ax, 0xa0                     ; 0x274a
    sub ax, cx                       ; 0x274d
    shl ax, 1                        ; 0x274f
    imul word [bp + 0xa]             ; 0x2751
    mov cx, 0x64                     ; 0x2754
    cwd                              ; 0x2757
    idiv cx                          ; 0x2758
    sub word [bp - 0x000e], ax       ; 0x275a
@..local.l129:
    mov ax, word [bp + 0xe]          ; 0x275d
    dec ax                           ; 0x2760
    push ax                          ; 0x2761
    mov ax, 0                        ; 0x2762
    push ax                          ; 0x2765
    mov ax, word [bp - 0x000e]       ; 0x2766
    add ax, word [bp + 0x8]          ; 0x2769
    push ax                          ; 0x276c
    call ds_dispatch_b7c2            ; 0x276d
    add sp, byte 6                   ; 0x2770
    mov word [bp - 0x000e], ax       ; 0x2773
    mov ax, 0x3d                     ; 0x2776
    sub ax, word [bp - 0x0010]       ; 0x2779
    imul word [bp + 0xa]             ; 0x277c
    mov cx, 0x64                     ; 0x277f
    cwd                              ; 0x2782
    idiv cx                          ; 0x2783
    add word [bp - 0x0010], ax       ; 0x2785
    lea ax, word [bp - 0x001c]       ; 0x2788
    push ax                          ; 0x278b
    push word [bp + 0xa]             ; 0x278c
    push word [bp - 0x0008]          ; 0x278f
    push word [bp + 0xe]             ; 0x2792
    push word [bp + 0xc]             ; 0x2795
    push word [bp - 0x0010]          ; 0x2798
    push word [bp - 0x000e]          ; 0x279b
    push word [bp - 0x0006]          ; 0x279e
    push word [bp - 0x000c]          ; 0x27a1
    call api_idx_0004_6              ; 0x27a4
    add sp, byte 0x12                ; 0x27a7
    ret                              ; 0x27aa
api_idx_000e_3:
    mov ax, 0xfff2                   ; 0x27ab
    call ds_dispatch_f40b            ; 0x27ae
    cmp word [data_8f20], byte 0     ; 0x27b1
    jg short @..api_idx_000e_3.l1    ; 0x27b6
    jmp near @..api_idx_000e_3.l8    ; 0x27b8
@..api_idx_000e_3.l1:
    mov ax, word [data_82ee]         ; 0x27bb
    mov cx, word [data_8f20]         ; 0x27be
    dec cx                           ; 0x27c2
    sub ax, cx                       ; 0x27c3
    add ax, strict word 6            ; 0x27c5
    mov cx, 4                        ; 0x27c8
    cwd                              ; 0x27cb
    idiv cx                          ; 0x27cc
    mov word [bp - 0x0002], dx       ; 0x27ce
    mov ax, dx                       ; 0x27d1
    jmp short @..api_idx_000e_3.l6   ; 0x27d3
@..api_idx_000e_3.l2:
    mov byte [bp - 0x000e], 1        ; 0x27d5
    mov byte [bp - 0x000d], data_0002 ; 0x27d9
    mov ax, 5                        ; 0x27dd
    cmp word [bp - 0x0002], byte 0   ; 0x27e0
    jne short @..api_idx_000e_3.l3   ; 0x27e4
    mov ax, 4                        ; 0x27e6
@..api_idx_000e_3.l3:
    mov byte [bp - 0x000c], al       ; 0x27e9
    mov byte [bp - 0x000b], 0        ; 0x27ec
    mov word [bp - 0x0004], 0        ; 0x27f0
    jmp short @..api_idx_000e_3.l7   ; 0x27f5
@..api_idx_000e_3.l4:
    mov byte [bp - 0x000e], 3        ; 0x27f7
    mov byte [bp - 0x000d], 0        ; 0x27fb
    mov ax, 0                        ; 0x27ff
    cmp word [bp - 0x0002], byte 3   ; 0x2802
    jne short @..api_idx_000e_3.l5   ; 0x2806
    mov ax, 1                        ; 0x2808
@..api_idx_000e_3.l5:
    mov word [bp - 0x0004], ax       ; 0x280b
    jmp short @..api_idx_000e_3.l7   ; 0x280e
@..api_idx_000e_3.l6:
    cmp ax, strict word 0            ; 0x2810
    je short @..api_idx_000e_3.l2    ; 0x2813
    cmp ax, strict word 1            ; 0x2815
    je short @..api_idx_000e_3.l4    ; 0x2818
    cmp ax, strict word 2            ; 0x281a
    je short @..api_idx_000e_3.l2    ; 0x281d
    cmp ax, strict word 3            ; 0x281f
    je short @..api_idx_000e_3.l4    ; 0x2822
@..api_idx_000e_3.l7:
    lea ax, word [bp - 0x000e]       ; 0x2824
    push ax                          ; 0x2827
    mov ax, 0                        ; 0x2828
    push ax                          ; 0x282b
    push word [bp - 0x0004]          ; 0x282c
    mov ax, 0xf8                     ; 0x282f
    push ax                          ; 0x2832
    mov ax, 0x48                     ; 0x2833
    push ax                          ; 0x2836
    mov al, byte [bp - 0x000e]       ; 0x2837
    sub ah, ah                       ; 0x283a
    mov bx, ax                       ; 0x283c
    mov al, byte [bx + 0x6eb5]       ; 0x283e
    sub ah, ah                       ; 0x2842
    inc ax                           ; 0x2844
    push ax                          ; 0x2845
    shl bx, 1                        ; 0x2846
    mov ax, bx                       ; 0x2848
    add ax, word [bp - 0x0004]       ; 0x284a
    mov bx, ax                       ; 0x284d
    mov al, byte [bx + 0x6e6c]       ; 0x284f
    sub ah, ah                       ; 0x2853
    inc ax                           ; 0x2855
    push ax                          ; 0x2856
    mov ax, 3                        ; 0x2857
    push ax                          ; 0x285a
    mov ax, 0x1b                     ; 0x285b
    push ax                          ; 0x285e
    call api_idx_0004_6              ; 0x285f
    add sp, byte 0x12                ; 0x2862
@..api_idx_000e_3.l8:
    cmp word [data_8f20], byte 0xff  ; 0x2865
    jne short @..api_idx_000e_3.l9   ; 0x286a
    mov byte [bp - 0x000e], 1        ; 0x286c
    mov byte [bp - 0x000d], 0        ; 0x2870
    lea ax, word [bp - 0x000e]       ; 0x2874
    push ax                          ; 0x2877
    mov ax, 0                        ; 0x2878
    push ax                          ; 0x287b
    push ax                          ; 0x287c
    mov ax, 0xf8                     ; 0x287d
    push ax                          ; 0x2880
    mov ax, 0x48                     ; 0x2881
    push ax                          ; 0x2884
    mov al, byte [data_7b04]         ; 0x2885
    sub ah, ah                       ; 0x2888
    push ax                          ; 0x288a
    mov al, byte [data_7abc]         ; 0x288b
    sub ah, ah                       ; 0x288e
    push ax                          ; 0x2890
    mov ax, 0xc                      ; 0x2891
    push ax                          ; 0x2894
    mov ax, 0x1c                     ; 0x2895
    push ax                          ; 0x2898
    call api_idx_0004_6              ; 0x2899
    add sp, byte 0x12                ; 0x289c
@..api_idx_000e_3.l9:
    ret                              ; 0x289f
math_loc_28a0:
    mov ax, 0                        ; 0x28a0
    call ds_dispatch_f40b            ; 0x28a3
    mov ax, word [bp + 0x4]          ; 0x28a6
    shl ax, 1                        ; 0x28a9
    mov bx, ax                       ; 0x28ab
    mov bx, word [bx - 0x7b96]       ; 0x28ad
    mov al, byte [bx + 0x14]         ; 0x28b1
    sub ah, ah                       ; 0x28b4
    cmp ax, 0xff                     ; 0x28b6
    je short @..math_loc_28a0.l1     ; 0x28b9
    mov al, byte [bx + 0x17]         ; 0x28bb
    sub ah, ah                       ; 0x28be
    push ax                          ; 0x28c0
    mov ax, 0                        ; 0x28c1
    push ax                          ; 0x28c4
    add bx, byte 8                   ; 0x28c5
    mov ax, bx                       ; 0x28c8
    push ax                          ; 0x28ca
    mov ax, word [bp + 0x4]          ; 0x28cb
    shl ax, 1                        ; 0x28ce
    mov bx, ax                       ; 0x28d0
    mov bx, word [bx - 0x7b96]       ; 0x28d2
    mov al, byte [bx + 0x16]         ; 0x28d6
    sub ah, ah                       ; 0x28d9
    push ax                          ; 0x28db
    mov ax, 0x8e                     ; 0x28dc
    push ax                          ; 0x28df
    mov ax, 0x21                     ; 0x28e0
    push ax                          ; 0x28e3
    push word [bx + 0x6]             ; 0x28e4
    push word [bx + 0x4]             ; 0x28e7
    push word [bx + 0x2]             ; 0x28ea
    push word [bx]                   ; 0x28ed
    mov al, byte [bx + 0x15]         ; 0x28ef
    sub ah, ah                       ; 0x28f2
    push ax                          ; 0x28f4
    call ds_dispatch_efd1            ; 0x28f5
    add sp, byte 0x16                ; 0x28f8
@..math_loc_28a0.l1:
    ret                              ; 0x28fb
api_idx_0002:
    mov ax, 0xfffe                   ; 0x28fc
    call ds_dispatch_f40b            ; 0x28ff
    mov ax, word [bp + 0x4]          ; 0x2902
    cmp ax, word [data_8466]         ; 0x2905
    jle short @..local.l130          ; 0x2909
    mov ax, 0xffff                   ; 0x290b
    ret                              ; 0x290e
@..local.l130:
    mov word [bp - 0x0002], 0        ; 0x290f
    jmp short @..local.l133          ; 0x2914
@..local.l131:
    mov ax, 0x2c                     ; 0x2916
    imul word [bp - 0x0002]          ; 0x2919
    mov si, ax                       ; 0x291c
    mov ax, word [bp + 0x4]          ; 0x291e
    shl ax, 1                        ; 0x2921
    mov bx, ax                       ; 0x2923
    mov bx, word [bx - 0x7b7e]       ; 0x2925
    cmp byte [bx + si + 0x2a], 0xff  ; 0x2929
    jne short @..local.l132          ; 0x292d
    mov ax, 6                        ; 0x292f
    imul word [bp + 0x6]             ; 0x2932
    mov cx, word [bp + 0x8]          ; 0x2935
    shl cx, 1                        ; 0x2938
    add ax, cx                       ; 0x293a
    mov bx, ax                       ; 0x293c
    mov word [bx - 0x6f42], 1        ; 0x293e
    mov ax, 0xa                      ; 0x2944
    imul word [bp + 0x4]             ; 0x2947
    add ax, word [bp - 0x0002]       ; 0x294a
    mov word [bx - 0x7bc6], ax       ; 0x294d
    mov ax, 0xa                      ; 0x2951
    imul word [bp + 0x6]             ; 0x2954
    add ax, word [bp + 0x8]          ; 0x2957
    mov cx, word [bp + 0x4]          ; 0x295a
    shl cx, 1                        ; 0x295d
    mov bx, cx                       ; 0x295f
    mov bx, word [bx - 0x7b7e]       ; 0x2961
    mov byte [bx + si + 0x2a], al    ; 0x2965
    mov ax, 0xffff                   ; 0x2968
    push ax                          ; 0x296b
    push word [bp + 0x8]             ; 0x296c
    push word [bp + 0x6]             ; 0x296f
    push word [bp + 0x4]             ; 0x2972
    call api_idx_000a_2              ; 0x2975
    add sp, byte 8                   ; 0x2978
    mov ax, 0                        ; 0x297b
    ret                              ; 0x297e
@..local.l132:
    inc word [bp - 0x0002]           ; 0x297f
@..local.l133:
    mov ax, word [bp + 0x4]          ; 0x2982
    shl ax, 1                        ; 0x2985
    mov bx, ax                       ; 0x2987
    mov bx, word [bx - 0x7b7e]       ; 0x2989
    mov al, byte [bx + 0x1a1]        ; 0x298d
    sub ah, ah                       ; 0x2991
    cmp ax, word [bp - 0x0002]       ; 0x2993
    jle short @..local.l134          ; 0x2996
    jmp near @..local.l131           ; 0x2998
@..local.l134:
    mov ax, 0xffff                   ; 0x299b
    ret                              ; 0x299e
math_loc_299f:
    mov ax, 0                        ; 0x299f
    call ds_dispatch_f40b            ; 0x29a2
    jmp short @..local.l136          ; 0x29a5
@..math_loc_299f.l1:
    push word [bp + 0x8]             ; 0x29a7
    push word [bp + 0x6]             ; 0x29aa
    push word [bp + 0x4]             ; 0x29ad
    call api_idx_0002                ; 0x29b0
    add sp, byte 6                   ; 0x29b3
    test ax, ax                      ; 0x29b6
    jne short @..local.l135          ; 0x29b8
    ret                              ; 0x29ba
@..local.l135:
    inc word [bp + 0x4]              ; 0x29bb
@..local.l136:
    cmp word [bp + 0x4], byte 3      ; 0x29be
    jle short @..math_loc_299f.l1    ; 0x29c2
    ret                              ; 0x29c4
api_idx_000c_3:
    mov ax, 0xfff4                   ; 0x29c5
    call ds_dispatch_f40b            ; 0x29c8
    mov word [bp - 0x0002], 0        ; 0x29cb
    jmp near @..api_idx_000c_3.l19   ; 0x29d0
@..api_idx_000c_3.l1:
    mov word [bp - 0x0006], 0        ; 0x29d3
@..api_idx_000c_3.l2:
    mov ax, 6                        ; 0x29d8
    imul word [bp - 0x0002]          ; 0x29db
    mov cx, word [bp - 0x0006]       ; 0x29de
    shl cx, 1                        ; 0x29e1
    add ax, cx                       ; 0x29e3
    mov bx, ax                       ; 0x29e5
    mov word [bx - 0x6f42], 0        ; 0x29e7
    mov bx, cx                       ; 0x29ed
    add bx, bp                       ; 0x29ef
    mov word [bx - 0x000c], 0        ; 0x29f1
    inc word [bp - 0x0006]           ; 0x29f6
    mov ax, word [bp - 0x0006]       ; 0x29f9
    cmp ax, strict word 3            ; 0x29fc
    jl short @..api_idx_000c_3.l2    ; 0x29ff
    mov word [bp - 0x0006], 0        ; 0x2a01
@..api_idx_000c_3.l3:
    mov ax, 3                        ; 0x2a06
    push ax                          ; 0x2a09
    call ds_dispatch_b7a9            ; 0x2a0a
    pop cx                           ; 0x2a0d
    mov word [bp - 0x0004], ax       ; 0x2a0e
    mov ax, word [bp - 0x0004]       ; 0x2a11
    shl ax, 1                        ; 0x2a14
    mov bx, ax                       ; 0x2a16
    add bx, bp                       ; 0x2a18
    cmp word [bx - 0x000c], byte 1   ; 0x2a1a
    je short @..api_idx_000c_3.l3    ; 0x2a1e
    cmp word [bp - 0x000c], byte 0   ; 0x2a20
    jne short @..api_idx_000c_3.l5   ; 0x2a24
    cmp word [data_90ba], byte 1     ; 0x2a26
    je short @..api_idx_000c_3.l4    ; 0x2a2b
    cmp word [bp - 0x0002], byte 0   ; 0x2a2d
    jne short @..api_idx_000c_3.l5   ; 0x2a31
@..api_idx_000c_3.l4:
    mov word [bp - 0x0004], 0        ; 0x2a33
@..api_idx_000c_3.l5:
    mov ax, word [bp - 0x0004]       ; 0x2a38
    shl ax, 1                        ; 0x2a3b
    mov bx, ax                       ; 0x2a3d
    add bx, bp                       ; 0x2a3f
    mov word [bx - 0x000c], 1        ; 0x2a41
    mov ax, 6                        ; 0x2a46
    imul word [bp - 0x0002]          ; 0x2a49
    mov cx, ax                       ; 0x2a4c
    mov ax, word [bp - 0x0004]       ; 0x2a4e
    shl ax, 1                        ; 0x2a51
    add cx, ax                       ; 0x2a53
    mov bx, cx                       ; 0x2a55
    cmp word [bx - 0x7bc6], byte 0   ; 0x2a57
    je short @..api_idx_000c_3.l6    ; 0x2a5c
    jmp near @..api_idx_000c_3.l17   ; 0x2a5e
@..api_idx_000c_3.l6:
    mov ax, word [bp - 0x0002]       ; 0x2a61
    jmp near @..api_idx_000c_3.l15   ; 0x2a64
@..api_idx_000c_3.l7:
    push word [bp - 0x0004]          ; 0x2a67
    push word [bp - 0x0002]          ; 0x2a6a
    mov ax, 1                        ; 0x2a6d
    push ax                          ; 0x2a70
    call math_loc_299f               ; 0x2a71
    add sp, byte 6                   ; 0x2a74
    jmp near @..api_idx_000c_3.l17   ; 0x2a77
@..api_idx_000c_3.l8:
    cmp word [data_8466], byte 1     ; 0x2a7a
    jne short @..api_idx_000c_3.l9   ; 0x2a7f
    push word [bp - 0x0004]          ; 0x2a81
    push word [bp - 0x0002]          ; 0x2a84
    mov ax, 1                        ; 0x2a87
    push ax                          ; 0x2a8a
    call math_loc_299f               ; 0x2a8b
    add sp, byte 6                   ; 0x2a8e
    jmp short @..api_idx_000c_3.l10  ; 0x2a91
@..api_idx_000c_3.l9:
    push word [bp - 0x0004]          ; 0x2a93
    push word [bp - 0x0002]          ; 0x2a96
    mov ax, data_0002                ; 0x2a99
    push ax                          ; 0x2a9c
    call math_loc_299f               ; 0x2a9d
    add sp, byte 6                   ; 0x2aa0
@..api_idx_000c_3.l10:
    jmp short @..api_idx_000c_3.l17  ; 0x2aa3
@..api_idx_000c_3.l11:
    cmp word [data_8466], byte 1     ; 0x2aa5
    jne short @..api_idx_000c_3.l12  ; 0x2aaa
    push word [bp - 0x0004]          ; 0x2aac
    push word [bp - 0x0002]          ; 0x2aaf
    mov ax, 1                        ; 0x2ab2
    push ax                          ; 0x2ab5
    call math_loc_299f               ; 0x2ab6
    add sp, byte 6                   ; 0x2ab9
    jmp short @..api_idx_000c_3.l14  ; 0x2abc
@..api_idx_000c_3.l12:
    cmp word [data_8466], byte 2     ; 0x2abe
    jne short @..api_idx_000c_3.l13  ; 0x2ac3
    push word [bp - 0x0004]          ; 0x2ac5
    push word [bp - 0x0002]          ; 0x2ac8
    mov ax, data_0002                ; 0x2acb
    push ax                          ; 0x2ace
    call math_loc_299f               ; 0x2acf
    add sp, byte 6                   ; 0x2ad2
    jmp short @..api_idx_000c_3.l14  ; 0x2ad5
@..api_idx_000c_3.l13:
    push word [bp - 0x0004]          ; 0x2ad7
    push word [bp - 0x0002]          ; 0x2ada
    mov ax, 3                        ; 0x2add
    push ax                          ; 0x2ae0
    call math_loc_299f               ; 0x2ae1
    add sp, byte 6                   ; 0x2ae4
@..api_idx_000c_3.l14:
    jmp short @..api_idx_000c_3.l17  ; 0x2ae7
@..api_idx_000c_3.l15:
    cmp ax, strict word 0            ; 0x2ae9
    jne short @..api_idx_000c_3.l16  ; 0x2aec
    jmp near @..api_idx_000c_3.l7    ; 0x2aee
@..api_idx_000c_3.l16:
    cmp ax, strict word 1            ; 0x2af1
    je short @..api_idx_000c_3.l8    ; 0x2af4
    cmp ax, strict word 2            ; 0x2af6
    je short @..api_idx_000c_3.l11   ; 0x2af9
@..api_idx_000c_3.l17:
    inc word [bp - 0x0006]           ; 0x2afb
    mov ax, word [bp - 0x0006]       ; 0x2afe
    cmp ax, strict word 3            ; 0x2b01
    jge short @..api_idx_000c_3.l18  ; 0x2b04
    jmp near @..api_idx_000c_3.l3    ; 0x2b06
@..api_idx_000c_3.l18:
    inc word [bp - 0x0002]           ; 0x2b09
@..api_idx_000c_3.l19:
    mov ax, word [bp - 0x0002]       ; 0x2b0c
    cmp ax, word [data_8454]         ; 0x2b0f
    jg short @..api_idx_000c_3.l20   ; 0x2b13
    jmp near @..api_idx_000c_3.l1    ; 0x2b15
@..api_idx_000c_3.l20:
    ret                              ; 0x2b18
loc_2b19:
    mov ax, 0                        ; 0x2b19
    call ds_dispatch_f40b            ; 0x2b1c
    les bx, word [data_0002]         ; 0x2b1f
    mov ax, word [es:bx]             ; 0x2b23
    mov dx, word [es:bx + 0x2]       ; 0x2b26
    mov word [data_9090], dx         ; 0x2b2a
    mov word [data_908e], ax         ; 0x2b2e
    mov ax, word [data_908e]         ; 0x2b31
    mov dx, word [data_9090]         ; 0x2b34
    sub ax, word [data_908a]         ; 0x2b38
    sbb dx, word [data_908c]         ; 0x2b3c
    mov word [data_9094], dx         ; 0x2b40
    mov word [data_9092], ax         ; 0x2b44
    mov ax, word [data_90b6]         ; 0x2b47
    cwd                              ; 0x2b4a
    mov cx, ax                       ; 0x2b4b
    mov bx, dx                       ; 0x2b4d
    mov ax, word [data_9092]         ; 0x2b4f
    mov dx, word [data_9094]         ; 0x2b52
    cmp bx, dx                       ; 0x2b56
    jg short @..local.l137           ; 0x2b58
    jne short @..local.l138          ; 0x2b5a
    cmp cx, ax                       ; 0x2b5c
    jbe short @..local.l138          ; 0x2b5e
@..local.l137:
    jmp short @..local.l139          ; 0x2b60
@..local.l138:
    mov ax, word [data_908e]         ; 0x2b62
    mov dx, word [data_9090]         ; 0x2b65
    mov word [data_908c], dx         ; 0x2b69
    mov word [data_908a], ax         ; 0x2b6d
    mov ax, 1                        ; 0x2b70
    ret                              ; 0x2b73
@..local.l139:
    mov ax, 0                        ; 0x2b74
    ret                              ; 0x2b77
api_idx_0006_2:
    mov ax, 0xfffa                   ; 0x2b78
    call ds_dispatch_f40b            ; 0x2b7b
    mov ax, word [data_845e]         ; 0x2b7e
    jmp near @..api_idx_0006_2.l12   ; 0x2b81
@..api_idx_0006_2.l1:
    mov ax, 0x8f                     ; 0x2b84
    push ax                          ; 0x2b87
    mov ax, 0xf7                     ; 0x2b88
    push ax                          ; 0x2b8b
    mov ax, 0x20                     ; 0x2b8c
    push ax                          ; 0x2b8f
    mov ax, 0x48                     ; 0x2b90
    push ax                          ; 0x2b93
    call ds_dispatch_e8da            ; 0x2b94
    add sp, byte 8                   ; 0x2b97
    jmp near @..api_idx_0006_2.l16   ; 0x2b9a
@..api_idx_0006_2.l2:
    les bx, word [data_0002]         ; 0x2b9d
    mov ax, word [es:bx]             ; 0x2ba1
    mov dx, word [es:bx + 0x2]       ; 0x2ba4
    sub ax, word [data_908a]         ; 0x2ba8
    sbb dx, word [data_908c]         ; 0x2bac
    push ax                          ; 0x2bb0
    push dx                          ; 0x2bb1
    mov ax, word [data_90b6]         ; 0x2bb2
    cwd                              ; 0x2bb5
    mov cx, ax                       ; 0x2bb6
    mov bx, dx                       ; 0x2bb8
    pop dx                           ; 0x2bba
    pop ax                           ; 0x2bbb
    cmp dx, bx                       ; 0x2bbc
    jl short @..api_idx_0006_2.l3    ; 0x2bbe
    jne short @..api_idx_0006_2.l4   ; 0x2bc0
    cmp ax, cx                       ; 0x2bc2
    jae short @..api_idx_0006_2.l4   ; 0x2bc4
@..api_idx_0006_2.l3:
    jmp short @..api_idx_0006_2.l5   ; 0x2bc6
@..api_idx_0006_2.l4:
    mov ax, word [data_906c]         ; 0x2bc8
    inc ax                           ; 0x2bcb
    mov cx, data_0002                ; 0x2bcc
    cwd                              ; 0x2bcf
    idiv cx                          ; 0x2bd0
    mov word [data_906c], dx         ; 0x2bd2
@..api_idx_0006_2.l5:
    mov ax, 0                        ; 0x2bd6
    push ax                          ; 0x2bd9
    push ax                          ; 0x2bda
    mov ax, word [data_906c]         ; 0x2bdb
    shl ax, 1                        ; 0x2bde
    shl ax, 1                        ; 0x2be0
    mov bx, ax                       ; 0x2be2
    push word [bx - 0x6f9e]          ; 0x2be4
    push word [bx - 0x6fa0]          ; 0x2be8
    call ds_dispatch_e942            ; 0x2bec
    add sp, byte 8                   ; 0x2bef
    mov word [bp - 0x0002], 0        ; 0x2bf2
@..api_idx_0006_2.l6:
    mov ax, word [bp - 0x0002]       ; 0x2bf7
    shl ax, 1                        ; 0x2bfa
    mov bx, ax                       ; 0x2bfc
    mov bx, word [bx - 0x7b96]       ; 0x2bfe
    mov byte [bx + 0x14], 0xff       ; 0x2c02
    inc word [bp - 0x0002]           ; 0x2c06
    mov ax, word [bp - 0x0002]       ; 0x2c09
    cmp ax, strict word 0xc          ; 0x2c0c
    jl short @..api_idx_0006_2.l6    ; 0x2c0f
    mov word [data_8468], 0          ; 0x2c11
    jmp near @..api_idx_0006_2.l16   ; 0x2c17
@..api_idx_0006_2.l7:
    call loc_2b19                    ; 0x2c1a
    mov word [bp - 0x0006], ax       ; 0x2c1d
    mov word [bp - 0x0002], 0        ; 0x2c20
@..api_idx_0006_2.l8:
    mov word [bp - 0x0004], 0        ; 0x2c25
@..api_idx_0006_2.l9:
    push word [bp - 0x0006]          ; 0x2c2a
    mov ax, 0xf8                     ; 0x2c2d
    push ax                          ; 0x2c30
    mov ax, 0x48                     ; 0x2c31
    push ax                          ; 0x2c34
    mov ax, 6                        ; 0x2c35
    imul word [bp - 0x0002]          ; 0x2c38
    mov cx, word [bp - 0x0004]       ; 0x2c3b
    shl cx, 1                        ; 0x2c3e
    add ax, cx                       ; 0x2c40
    mov bx, ax                       ; 0x2c42
    mov cx, word [bx + 0x580]        ; 0x2c44
    mov ax, 0x64                     ; 0x2c48
    sub ax, cx                       ; 0x2c4b
    push ax                          ; 0x2c4d
    mov ax, 0                        ; 0x2c4e
    push ax                          ; 0x2c51
    push word [bp - 0x0004]          ; 0x2c52
    push word [bp - 0x0002]          ; 0x2c55
    call api_idx_001c                ; 0x2c58
    add sp, byte 0x0e                ; 0x2c5b
    inc word [bp - 0x0004]           ; 0x2c5e
    mov ax, word [bp - 0x0004]       ; 0x2c61
    cmp ax, strict word 3            ; 0x2c64
    jl short @..api_idx_0006_2.l9    ; 0x2c67
    inc word [bp - 0x0002]           ; 0x2c69
    mov ax, word [bp - 0x0002]       ; 0x2c6c
    cmp ax, strict word 3            ; 0x2c6f
    jl short @..api_idx_0006_2.l8    ; 0x2c72
    call api_idx_000e_3              ; 0x2c74
    cmp word [bp - 0x0006], byte 0   ; 0x2c77
    je short @..api_idx_0006_2.l10   ; 0x2c7b
    mov ax, word [data_82e8]         ; 0x2c7d
    inc ax                           ; 0x2c80
    mov cx, data_0002                ; 0x2c81
    cwd                              ; 0x2c84
    idiv cx                          ; 0x2c85
    mov word [data_82e8], dx         ; 0x2c87
@..api_idx_0006_2.l10:
    call ds_dispatch_da22            ; 0x2c8b
    jmp short @..api_idx_0006_2.l16  ; 0x2c8e
@..api_idx_0006_2.l11:
    push word [data_845e]            ; 0x2c90
    call math_loc_28a0               ; 0x2c94
    pop cx                           ; 0x2c97
    jmp short @..api_idx_0006_2.l16  ; 0x2c98
@..api_idx_0006_2.l12:
    cmp ax, strict word 0xfffd       ; 0x2c9a
    jne short @..api_idx_0006_2.l13  ; 0x2c9d
    jmp near @..api_idx_0006_2.l1    ; 0x2c9f
@..api_idx_0006_2.l13:
    cmp ax, strict word 0xfffe       ; 0x2ca2
    jne short @..api_idx_0006_2.l14  ; 0x2ca5
    jmp near @..api_idx_0006_2.l2    ; 0x2ca7
@..api_idx_0006_2.l14:
    cmp ax, strict word 0xffff       ; 0x2caa
    jne short @..api_idx_0006_2.l15  ; 0x2cad
    jmp near @..api_idx_0006_2.l7    ; 0x2caf
@..api_idx_0006_2.l15:
    jmp short @..api_idx_0006_2.l11  ; 0x2cb2
@..api_idx_0006_2.l16:
    inc word [data_845e]             ; 0x2cb4
    mov ax, word [data_845e]         ; 0x2cb8
    cmp ax, strict word 0xc          ; 0x2cbb
    jne short @..api_idx_0006_2.l17  ; 0x2cbe
    mov word [data_845e], 0xfffd     ; 0x2cc0
@..api_idx_0006_2.l17:
    ret                              ; 0x2cc6
loc_2cc7:
    mov ax, 0                        ; 0x2cc7
    call ds_dispatch_f40b            ; 0x2cca
    mov word [data_845e], 0xfffe     ; 0x2ccd
@..local.l140:
    call api_idx_0006_2              ; 0x2cd3
    cmp word [data_845e], byte 0xfe  ; 0x2cd6
    jne short @..local.l140          ; 0x2cdb
    ret                              ; 0x2cdd
api_idx_005a:
    mov ax, 0xffa6                   ; 0x2cde
    call ds_dispatch_f40b            ; 0x2ce1
    cmp word [data_90b8], byte 0     ; 0x2ce4
    je short @..api_idx_005a.l1      ; 0x2ce9
    lea ax, word [bp - 0x005a]       ; 0x2ceb
    push ax                          ; 0x2cee
    mov ax, 0x7e9                    ; 0x2cef
    push ax                          ; 0x2cf2
    call ds_dispatch_b53b            ; 0x2cf3
    add sp, byte 4                   ; 0x2cf6
    mov ax, 0                        ; 0x2cf9
    push ax                          ; 0x2cfc
    lea ax, word [bp - 0x005a]       ; 0x2cfd
    push ax                          ; 0x2d00
    call api_idx_0008_2              ; 0x2d01
    add sp, byte 4                   ; 0x2d04
@..api_idx_005a.l1:
    mov word [bp - 0x000a], 0        ; 0x2d07
    les bx, word [data_0002]         ; 0x2d0c
    mov ax, word [es:bx]             ; 0x2d10
    mov dx, word [es:bx + 0x2]       ; 0x2d13
    mov word [data_908c], dx         ; 0x2d17
    mov word [data_908a], ax         ; 0x2d1b
    mov word [bp - 0x0002], 0        ; 0x2d1e
@..api_idx_005a.l2:
    cmp word [bp + 0x4], byte 0      ; 0x2d23
    jne short @..api_idx_005a.l3     ; 0x2d27
    cmp word [bp - 0x0002], byte 1   ; 0x2d29
    jne short @..api_idx_005a.l3     ; 0x2d2d
    mov bx, word [data_8492]         ; 0x2d2f
    cmp byte [bx + 0xd8], 0          ; 0x2d33
    jbe short @..api_idx_005a.l3     ; 0x2d38
    mov ax, 0x10                     ; 0x2d3a
    push ax                          ; 0x2d3d
    call ds_dispatch_b7e0            ; 0x2d3e
    pop cx                           ; 0x2d41
@..api_idx_005a.l3:
    mov word [data_845e], 0xfffe     ; 0x2d42
    call api_idx_0006_2              ; 0x2d48
    mov word [bp - 0x0004], 0        ; 0x2d4b
@..api_idx_005a.l4:
    mov word [bp - 0x0006], 0        ; 0x2d50
@..api_idx_005a.l5:
    mov ax, word [bp - 0x0006]       ; 0x2d55
    mov cx, data_0002                ; 0x2d58
    cwd                              ; 0x2d5b
    idiv cx                          ; 0x2d5c
    mov ax, dx                       ; 0x2d5e
    cmp ax, strict word 1            ; 0x2d60
    je short @..api_idx_005a.l6      ; 0x2d63
    cmp word [bp - 0x0006], byte 0   ; 0x2d65
    jne short @..api_idx_005a.l7     ; 0x2d69
@..api_idx_005a.l6:
    mov ax, word [bp + 0x4]          ; 0x2d6b
    shl ax, 1                        ; 0x2d6e
    shl ax, 1                        ; 0x2d70
    shl ax, 1                        ; 0x2d72
    mov cx, word [bp - 0x0002]       ; 0x2d74
    shl cx, 1                        ; 0x2d77
    add ax, cx                       ; 0x2d79
    mov bx, ax                       ; 0x2d7b
    mov cx, word [bx + 0x5fe]        ; 0x2d7d
    mov ax, 0                        ; 0x2d81
    sub ax, cx                       ; 0x2d84
    jmp short @..api_idx_005a.l8     ; 0x2d86
@..api_idx_005a.l7:
    mov ax, word [bp + 0x4]          ; 0x2d88
    shl ax, 1                        ; 0x2d8b
    shl ax, 1                        ; 0x2d8d
    shl ax, 1                        ; 0x2d8f
    mov cx, word [bp - 0x0002]       ; 0x2d91
    shl cx, 1                        ; 0x2d94
    add ax, cx                       ; 0x2d96
    mov bx, ax                       ; 0x2d98
    mov ax, word [bx + 0x5fe]        ; 0x2d9a
@..api_idx_005a.l8:
    mov word [bp - 0x0008], ax       ; 0x2d9e
    cmp word [bp - 0x0004], byte 0   ; 0x2da1
    jne short @..api_idx_005a.l9     ; 0x2da5
    cmp word [bp - 0x0006], byte 0   ; 0x2da7
    jne short @..api_idx_005a.l9     ; 0x2dab
    cmp word [data_90ba], byte 1     ; 0x2dad
    jne short @..api_idx_005a.l9     ; 0x2db2
    mov word [bp - 0x0008], 0        ; 0x2db4
@..api_idx_005a.l9:
    push word [bp - 0x000a]          ; 0x2db9
    mov ax, 0xf8                     ; 0x2dbc
    push ax                          ; 0x2dbf
    mov ax, 0x48                     ; 0x2dc0
    push ax                          ; 0x2dc3
    mov ax, 6                        ; 0x2dc4
    imul word [bp - 0x0004]          ; 0x2dc7
    mov cx, word [bp - 0x0006]       ; 0x2dca
    shl cx, 1                        ; 0x2dcd
    add ax, cx                       ; 0x2dcf
    mov bx, ax                       ; 0x2dd1
    mov cx, word [bx + 0x580]        ; 0x2dd3
    mov ax, 0x64                     ; 0x2dd7
    sub ax, cx                       ; 0x2dda
    push ax                          ; 0x2ddc
    mov ax, 0                        ; 0x2ddd
    cmp word [bx - 0x6f42], byte 1   ; 0x2de0
    jne short @..api_idx_005a.l10    ; 0x2de5
    mov ax, word [bp - 0x0008]       ; 0x2de7
@..api_idx_005a.l10:
    push ax                          ; 0x2dea
    push word [bp - 0x0006]          ; 0x2deb
    push word [bp - 0x0004]          ; 0x2dee
    call api_idx_001c                ; 0x2df1
    add sp, byte 0x0e                ; 0x2df4
    inc word [bp - 0x0006]           ; 0x2df7
    mov ax, word [bp - 0x0006]       ; 0x2dfa
    cmp ax, strict word 3            ; 0x2dfd
    jge short @..api_idx_005a.l11    ; 0x2e00
    jmp near @..api_idx_005a.l5      ; 0x2e02
@..api_idx_005a.l11:
    inc word [bp - 0x0004]           ; 0x2e05
    mov ax, word [bp - 0x0004]       ; 0x2e08
    cmp ax, strict word 3            ; 0x2e0b
    jge short @..api_idx_005a.l12    ; 0x2e0e
    jmp near @..api_idx_005a.l4      ; 0x2e10
@..api_idx_005a.l12:
    call api_idx_000e_3              ; 0x2e13
    call ds_dispatch_da22            ; 0x2e16
    mov word [data_845e], 0          ; 0x2e19
@..api_idx_005a.l13:
    call api_idx_0006_2              ; 0x2e1f
    cmp word [data_845e], byte 0xfe  ; 0x2e22
    jne short @..api_idx_005a.l13    ; 0x2e27
    call loc_2b19                    ; 0x2e29
    mov word [bp - 0x000a], ax       ; 0x2e2c
    cmp word [bp - 0x000a], byte 0   ; 0x2e2f
    je short @..api_idx_005a.l14     ; 0x2e33
    mov ax, word [data_906c]         ; 0x2e35
    inc ax                           ; 0x2e38
    mov cx, data_0002                ; 0x2e39
    cwd                              ; 0x2e3c
    idiv cx                          ; 0x2e3d
    mov word [data_906c], dx         ; 0x2e3f
    mov ax, word [data_82e8]         ; 0x2e43
    inc ax                           ; 0x2e46
    cwd                              ; 0x2e47
    idiv cx                          ; 0x2e48
    mov word [data_82e8], dx         ; 0x2e4a
@..api_idx_005a.l14:
    cmp word [bp - 0x000a], byte 0   ; 0x2e4e
    jne short @..api_idx_005a.l15    ; 0x2e52
    jmp near @..api_idx_005a.l3      ; 0x2e54
@..api_idx_005a.l15:
    inc word [bp - 0x0002]           ; 0x2e57
    mov ax, word [bp - 0x0002]       ; 0x2e5a
    cmp ax, strict word 4            ; 0x2e5d
    jge short @..api_idx_005a.l16    ; 0x2e60
    jmp near @..api_idx_005a.l2      ; 0x2e62
@..api_idx_005a.l16:
    mov word [bp - 0x0004], 0        ; 0x2e65
@..api_idx_005a.l17:
    mov word [bp - 0x0006], 0        ; 0x2e6a
@..api_idx_005a.l18:
    mov ax, 6                        ; 0x2e6f
    imul word [bp - 0x0004]          ; 0x2e72
    mov cx, word [bp - 0x0006]       ; 0x2e75
    shl cx, 1                        ; 0x2e78
    add ax, cx                       ; 0x2e7a
    mov bx, ax                       ; 0x2e7c
    mov word [bx - 0x6f42], 0        ; 0x2e7e
    inc word [bp - 0x0006]           ; 0x2e84
    mov ax, word [bp - 0x0006]       ; 0x2e87
    cmp ax, strict word 3            ; 0x2e8a
    jl short @..api_idx_005a.l18     ; 0x2e8d
    inc word [bp - 0x0004]           ; 0x2e8f
    mov ax, word [bp - 0x0004]       ; 0x2e92
    cmp ax, strict word 3            ; 0x2e95
    jl short @..api_idx_005a.l17     ; 0x2e98
    mov word [data_90ba], 0          ; 0x2e9a
    cmp word [data_90b8], byte 0     ; 0x2ea0
    je short @..api_idx_005a.l19     ; 0x2ea5
    mov ax, 0xc6                     ; 0x2ea7
    push ax                          ; 0x2eaa
    mov ax, 0x109                    ; 0x2eab
    push ax                          ; 0x2eae
    mov ax, 0x92                     ; 0x2eaf
    push ax                          ; 0x2eb2
    mov ax, 0x37                     ; 0x2eb3
    push ax                          ; 0x2eb6
    call ds_dispatch_e8da            ; 0x2eb7
    add sp, byte 8                   ; 0x2eba
    mov word [data_90b8], 0          ; 0x2ebd
@..api_idx_005a.l19:
    ret                              ; 0x2ec3
api_idx_0004_7:
    mov ax, 0xfffc                   ; 0x2ec4
    call ds_dispatch_f40b            ; 0x2ec7
    mov ax, 1                        ; 0x2eca
    push ax                          ; 0x2ecd
    call ds_dispatch_ef14            ; 0x2ece
    pop cx                           ; 0x2ed1
    mov ax, 0                        ; 0x2ed2
    push ax                          ; 0x2ed5
    mov ax, 1                        ; 0x2ed6
    push ax                          ; 0x2ed9
    push word [data_9066]            ; 0x2eda
    push word [data_9064]            ; 0x2ede
    call ds_dispatch_e942            ; 0x2ee2
    add sp, byte 8                   ; 0x2ee5
    mov ax, 0x90a4                   ; 0x2ee8
    push ax                          ; 0x2eeb
    mov ax, 0x8f                     ; 0x2eec
    push ax                          ; 0x2eef
    mov ax, 0xf7                     ; 0x2ef0
    push ax                          ; 0x2ef3
    mov ax, 0x21                     ; 0x2ef4
    push ax                          ; 0x2ef7
    mov ax, 0x48                     ; 0x2ef8
    push ax                          ; 0x2efb
    call ds_dispatch_c283            ; 0x2efc
    add sp, byte 0x0a                ; 0x2eff
    mov word [data_9068], ax         ; 0x2f02
    mov word [data_906a], 1          ; 0x2f05
    mov ax, 0                        ; 0x2f0b
    push ax                          ; 0x2f0e
    mov ax, 1                        ; 0x2f0f
    push ax                          ; 0x2f12
    push word [data_9062]            ; 0x2f13
    push word [data_9060]            ; 0x2f17
    call ds_dispatch_e942            ; 0x2f1b
    add sp, byte 8                   ; 0x2f1e
    mov ax, 0xc                      ; 0x2f21
    push ax                          ; 0x2f24
    call ds_dispatch_c12a            ; 0x2f25
    pop cx                           ; 0x2f28
    mov ax, 7                        ; 0x2f29
    push ax                          ; 0x2f2c
    call ds_dispatch_c12a            ; 0x2f2d
    pop cx                           ; 0x2f30
    mov ax, 5                        ; 0x2f31
    push ax                          ; 0x2f34
    call ds_dispatch_d6c6            ; 0x2f35
    pop cx                           ; 0x2f38
    mov ax, 6                        ; 0x2f39
    push ax                          ; 0x2f3c
    call ds_dispatch_d6c6            ; 0x2f3d
    pop cx                           ; 0x2f40
    mov ax, 7                        ; 0x2f41
    push ax                          ; 0x2f44
    call ds_dispatch_d6c6            ; 0x2f45
    pop cx                           ; 0x2f48
    mov ax, 0xa                      ; 0x2f49
    push ax                          ; 0x2f4c
    call ds_dispatch_d6c6            ; 0x2f4d
    pop cx                           ; 0x2f50
    mov ax, 0xb                      ; 0x2f51
    push ax                          ; 0x2f54
    call ds_dispatch_d6c6            ; 0x2f55
    pop cx                           ; 0x2f58
    mov ax, 0xc                      ; 0x2f59
    push ax                          ; 0x2f5c
    call ds_dispatch_d6c6            ; 0x2f5d
    pop cx                           ; 0x2f60
    cmp word [data_598e], byte 0xff  ; 0x2f61
    je short @..api_idx_0004_7.l1    ; 0x2f66
    mov ax, 0x10                     ; 0x2f68
    push ax                          ; 0x2f6b
    call ds_dispatch_d6c6            ; 0x2f6c
    pop cx                           ; 0x2f6f
    mov word [data_598e], 0xffff     ; 0x2f70
@..api_idx_0004_7.l1:
    mov ax, 0                        ; 0x2f76
    push ax                          ; 0x2f79
    call api_idx_000a                ; 0x2f7a
    pop cx                           ; 0x2f7d
    mov ax, 1                        ; 0x2f7e
    push ax                          ; 0x2f81
    call ds_dispatch_c12a            ; 0x2f82
    pop cx                           ; 0x2f85
    mov ax, data_0002                ; 0x2f86
    push ax                          ; 0x2f89
    call ds_dispatch_c12a            ; 0x2f8a
    pop cx                           ; 0x2f8d
    mov ax, 1                        ; 0x2f8e
    push ax                          ; 0x2f91
    push word [data_8d0c]            ; 0x2f92
    push word [data_8d0a]            ; 0x2f96
    call ds_dispatch_e94f            ; 0x2f9a
    add sp, byte 6                   ; 0x2f9d
    mov ax, 1                        ; 0x2fa0
    push ax                          ; 0x2fa3
    push word [data_8d10]            ; 0x2fa4
    push word [data_8d0e]            ; 0x2fa8
    call ds_dispatch_e94f            ; 0x2fac
    add sp, byte 6                   ; 0x2faf
    cmp word [data_905e], byte 0x17  ; 0x2fb2
    jne short @..api_idx_0004_7.l2   ; 0x2fb7
    mov ax, 0xc6                     ; 0x2fb9
    push ax                          ; 0x2fbc
    mov ax, 0x109                    ; 0x2fbd
    push ax                          ; 0x2fc0
    mov ax, 0x92                     ; 0x2fc1
    push ax                          ; 0x2fc4
    mov ax, 0x37                     ; 0x2fc5
    push ax                          ; 0x2fc8
    call ds_dispatch_bb33            ; 0x2fc9
    add sp, byte 8                   ; 0x2fcc
@..api_idx_0004_7.l2:
    mov word [bp - 0x0002], 0        ; 0x2fcf
@..api_idx_0004_7.l3:
    mov ax, word [bp - 0x0002]       ; 0x2fd4
    shl ax, 1                        ; 0x2fd7
    mov bx, ax                       ; 0x2fd9
    push word [bx - 0x7b70]          ; 0x2fdb
    call ds_dispatch_f5a1            ; 0x2fdf
    pop cx                           ; 0x2fe2
    mov ax, word [bp - 0x0002]       ; 0x2fe3
    shl ax, 1                        ; 0x2fe6
    mov bx, ax                       ; 0x2fe8
    push word [bx - 0x7b7e]          ; 0x2fea
    call ds_dispatch_f5a1            ; 0x2fee
    pop cx                           ; 0x2ff1
    inc word [bp - 0x0002]           ; 0x2ff2
    mov ax, word [bp - 0x0002]       ; 0x2ff5
    cmp ax, strict word 7            ; 0x2ff8
    jl short @..api_idx_0004_7.l3    ; 0x2ffb
    mov word [bp - 0x0002], 0        ; 0x2ffd
@..api_idx_0004_7.l4:
    mov ax, word [bp - 0x0002]       ; 0x3002
    shl ax, 1                        ; 0x3005
    mov bx, ax                       ; 0x3007
    push word [bx - 0x7b96]          ; 0x3009
    call ds_dispatch_f5a1            ; 0x300d
    pop cx                           ; 0x3010
    inc word [bp - 0x0002]           ; 0x3011
    mov ax, word [bp - 0x0002]       ; 0x3014
    cmp ax, strict word 0xc          ; 0x3017
    jl short @..api_idx_0004_7.l4    ; 0x301a
    mov word [bp - 0x0004], 0xf      ; 0x301c
@..api_idx_0004_7.l5:
    mov bx, word [bp - 0x0004]       ; 0x3021
    mov al, byte [bx + 0x5b48]       ; 0x3024
    sub ah, ah                       ; 0x3028
    cmp ax, 0xff                     ; 0x302a
    je short @..api_idx_0004_7.l6    ; 0x302d
    push bx                          ; 0x302f
    call ds_dispatch_c12a            ; 0x3030
    pop cx                           ; 0x3033
@..api_idx_0004_7.l6:
    inc word [bp - 0x0004]           ; 0x3034
    mov ax, word [bp - 0x0004]       ; 0x3037
    cmp ax, strict word 0x12         ; 0x303a
    jl short @..api_idx_0004_7.l5    ; 0x303d
    mov ax, 0                        ; 0x303f
    push ax                          ; 0x3042
    mov ax, 1                        ; 0x3043
    push ax                          ; 0x3046
    call ds_dispatch_d61c            ; 0x3047
    add sp, byte 4                   ; 0x304a
    mov ax, 4                        ; 0x304d
    push ax                          ; 0x3050
    mov ax, 5                        ; 0x3051
    push ax                          ; 0x3054
    call ds_dispatch_d61c            ; 0x3055
    add sp, byte 4                   ; 0x3058
    mov ax, 6                        ; 0x305b
    push ax                          ; 0x305e
    mov ax, 7                        ; 0x305f
    push ax                          ; 0x3062
    call ds_dispatch_d61c            ; 0x3063
    add sp, byte 4                   ; 0x3066
    ret                              ; 0x3069
api_idx_0008_4:
    mov ax, 0xfff8                   ; 0x306a
    call ds_dispatch_f40b            ; 0x306d
    mov word [bp - 0x0002], 0        ; 0x3070
@..api_idx_0008_4.l1:
    mov word [bp - 0x0004], 0        ; 0x3075
@..api_idx_0008_4.l2:
    mov ax, word [bp - 0x0002]       ; 0x307a
    shl ax, 1                        ; 0x307d
    mov bx, ax                       ; 0x307f
    mov bx, word [bx - 0x7b7e]       ; 0x3081
    mov si, word [bp - 0x0004]       ; 0x3085
    mov al, byte [bx + si + 0x18c]   ; 0x3088
    sub ah, ah                       ; 0x308c
    mov word [bp - 0x0008], ax       ; 0x308e
    cmp ax, strict word 0            ; 0x3091
    jg short @..api_idx_0008_4.l3    ; 0x3094
    jmp near @..api_idx_0008_4.l8    ; 0x3096
@..api_idx_0008_4.l3:
    mov ax, si                       ; 0x3099
    jmp short @..api_idx_0008_4.l4   ; 0x309b
    mov ax, word [bp - 0x0008]       ; 0x309d
    mov cx, 0xa                      ; 0x30a0
    cwd                              ; 0x30a3
    idiv cx                          ; 0x30a4
    mov word [bp - 0x0006], ax       ; 0x30a6
    jmp short @..api_idx_0008_4.l5   ; 0x30a9
    mov ax, word [bp - 0x0008]       ; 0x30ab
    mov cx, 0xa                      ; 0x30ae
    cwd                              ; 0x30b1
    idiv cx                          ; 0x30b2
    mov word [bp - 0x0006], ax       ; 0x30b4
    jmp short @..api_idx_0008_4.l5   ; 0x30b7
    mov ax, word [bp - 0x0008]       ; 0x30b9
    mov cx, 0xc                      ; 0x30bc
    cwd                              ; 0x30bf
    idiv cx                          ; 0x30c0
    mov word [bp - 0x0006], ax       ; 0x30c2
    jmp short @..api_idx_0008_4.l5   ; 0x30c5
    mov ax, word [bp - 0x0008]       ; 0x30c7
    mov cx, 0xc                      ; 0x30ca
    cwd                              ; 0x30cd
    idiv cx                          ; 0x30ce
    mov word [bp - 0x0006], ax       ; 0x30d0
    jmp short @..api_idx_0008_4.l5   ; 0x30d3
    mov ax, word [bp - 0x0008]       ; 0x30d5
    mov cx, 0x14                     ; 0x30d8
    cwd                              ; 0x30db
    idiv cx                          ; 0x30dc
    mov word [bp - 0x0006], ax       ; 0x30de
    jmp short @..api_idx_0008_4.l5   ; 0x30e1
    mov word [bp - 0x0006], 1        ; 0x30e3
    jmp short @..api_idx_0008_4.l5   ; 0x30e8
    in al, 0x80                      ; 0x30ea
    db 0xf2, 0x80, 0x00, 0x81 ; add byte [bx + si], 0x81
    push cs                          ; 0x30f0
    sbb word [si], strict word 0x2a81 ; 0x30f1
    db 0x81
@..api_idx_0008_4.l4:
    db 0x3d, 0x06
    db 0x00
    jae short @..api_idx_0008_4.l5   ; 0x30f9
    xchg bx, ax                      ; 0x30fb
    shl bx, 1                        ; 0x30fc
    jmp [cs:bx - 0x7ecf]             ; 0x30fe
@..api_idx_0008_4.l5:
    cmp word [bp - 0x0006], byte 1   ; 0x3103
    jge short @..api_idx_0008_4.l6   ; 0x3107
    mov word [bp - 0x0006], 1        ; 0x3109
@..api_idx_0008_4.l6:
    mov ax, word [bp - 0x0006]       ; 0x310e
    sub word [bp - 0x0008], ax       ; 0x3111
    cmp word [bp - 0x0008], byte 0   ; 0x3114
    jge short @..api_idx_0008_4.l7   ; 0x3118
    mov word [bp - 0x0008], 0        ; 0x311a
@..api_idx_0008_4.l7:
    mov al, byte [bp - 0x0008]       ; 0x311f
    mov cx, word [bp - 0x0002]       ; 0x3122
    shl cx, 1                        ; 0x3125
    mov bx, cx                       ; 0x3127
    mov bx, word [bx - 0x7b7e]       ; 0x3129
    mov si, word [bp - 0x0004]       ; 0x312d
    mov byte [bx + si + 0x18c], al   ; 0x3130
@..api_idx_0008_4.l8:
    inc word [bp - 0x0004]           ; 0x3134
    mov ax, word [bp - 0x0004]       ; 0x3137
    cmp ax, strict word 6            ; 0x313a
    jge short @..api_idx_0008_4.l9   ; 0x313d
    jmp near @..api_idx_0008_4.l2    ; 0x313f
@..api_idx_0008_4.l9:
    mov word [bp - 0x0004], 0        ; 0x3142
@..api_idx_0008_4.l10:
    mov ax, word [bp - 0x0002]       ; 0x3147
    shl ax, 1                        ; 0x314a
    mov bx, ax                       ; 0x314c
    mov bx, word [bx - 0x7b7e]       ; 0x314e
    mov si, word [bp - 0x0004]       ; 0x3152
    cmp byte [bx + si + 0x192], 0    ; 0x3155
    jbe short @..api_idx_0008_4.l11  ; 0x315a
    dec byte [bx + si + 0x192]       ; 0x315c
@..api_idx_0008_4.l11:
    inc word [bp - 0x0004]           ; 0x3160
    mov ax, word [bp - 0x0004]       ; 0x3163
    cmp ax, strict word 6            ; 0x3166
    jl short @..api_idx_0008_4.l10   ; 0x3169
    inc word [bp - 0x0002]           ; 0x316b
    mov ax, word [bp - 0x0002]       ; 0x316e
    cmp ax, strict word 7            ; 0x3171
    jge short @..api_idx_0008_4.l12  ; 0x3174
    jmp near @..api_idx_0008_4.l1    ; 0x3176
@..api_idx_0008_4.l12:
    cmp word [data_82fa], byte 0     ; 0x3179
    jle short @..api_idx_0008_4.l13  ; 0x317e
    mov bx, word [data_8482]         ; 0x3180
    mov al, byte [bx + 0x190]        ; 0x3184
    sub ah, ah                       ; 0x3188
    mov word [data_82fc], ax         ; 0x318a
@..api_idx_0008_4.l13:
    cmp word [data_82fc], byte 0     ; 0x318d
    jg short @..api_idx_0008_4.l14   ; 0x3192
    mov word [data_82fa], 0          ; 0x3194
    mov word [data_82fc], 0          ; 0x319a
@..api_idx_0008_4.l14:
    ret                              ; 0x31a0
api_idx_0056:
    mov ax, 0xffaa                   ; 0x31a1
    call ds_dispatch_f40b            ; 0x31a4
    call math_loc_1f39               ; 0x31a7
    call api_idx_0014                ; 0x31aa
    mov ax, 6                        ; 0x31ad
    push ax                          ; 0x31b0
    call api_idx_005c                ; 0x31b1
    pop cx                           ; 0x31b4
    call api_idx_0008_4              ; 0x31b5
    mov word [bp - 0x0002], 0        ; 0x31b8
    jmp short @..api_idx_0056.l4     ; 0x31bd
@..api_idx_0056.l1:
    mov ax, 0x2c                     ; 0x31bf
    imul word [bp - 0x0002]          ; 0x31c2
    mov si, ax                       ; 0x31c5
    mov bx, word [data_8482]         ; 0x31c7
    cmp byte [bx + si + 0x1f], 1     ; 0x31cb
    jb short @..api_idx_0056.l2      ; 0x31cf
    mov al, byte [bx + si + 0x1f]    ; 0x31d1
    sub ah, ah                       ; 0x31d4
    cmp ax, word [data_8466]         ; 0x31d6
    jle short @..api_idx_0056.l3     ; 0x31da
@..api_idx_0056.l2:
    mov byte [bx + si + 0x1f], 1     ; 0x31dc
@..api_idx_0056.l3:
    inc word [bp - 0x0002]           ; 0x31e0
@..api_idx_0056.l4:
    mov ax, word [bp - 0x0002]       ; 0x31e3
    cmp ax, word [data_69c8]         ; 0x31e6
    jl short @..api_idx_0056.l1      ; 0x31ea
    mov ax, 1                        ; 0x31ec
    push ax                          ; 0x31ef
    call api_idx_000a                ; 0x31f0
    pop cx                           ; 0x31f3
    cmp word [data_845c], byte 1     ; 0x31f4
    je short @..api_idx_0056.l5      ; 0x31f9
    jmp near @..api_idx_0056.l15     ; 0x31fb
@..api_idx_0056.l5:
    mov word [bp - 0x0002], 0        ; 0x31fe
    jmp near @..api_idx_0056.l13     ; 0x3203
@..api_idx_0056.l6:
    cmp word [data_905e], byte 0x0f  ; 0x3206
    je short @..api_idx_0056.l7      ; 0x320b
    jmp near @..api_idx_0056.l11     ; 0x320d
@..api_idx_0056.l7:
    cmp word [data_8458], byte 1     ; 0x3210
    je short @..api_idx_0056.l8      ; 0x3215
    jmp near @..api_idx_0056.l11     ; 0x3217
@..api_idx_0056.l8:
    cmp word [data_0e36], strict word 0xe1 ; 0x321a
    je short @..api_idx_0056.l9      ; 0x3220
    jmp near @..api_idx_0056.l11     ; 0x3222
@..api_idx_0056.l9:
    mov ax, 0x2c                     ; 0x3225
    imul word [bp - 0x0002]          ; 0x3228
    mov si, ax                       ; 0x322b
    mov bx, word [data_8482]         ; 0x322d
    mov byte [bx + si + 0x22], 0     ; 0x3231
    mov ax, 0x2c                     ; 0x3235
    imul word [bp - 0x0002]          ; 0x3238
    mov si, ax                       ; 0x323b
    mov bx, word [data_8482]         ; 0x323d
    mov ax, word [bx + si + 0x8]     ; 0x3241
    mov word [bx + si + 0x6], ax     ; 0x3244
    mov ax, 0x2c                     ; 0x3247
    imul word [bp - 0x0002]          ; 0x324a
    mov si, ax                       ; 0x324d
    mov bx, word [data_8482]         ; 0x324f
    mov ax, word [bx + si + 0x4]     ; 0x3253
    mov word [bx + si + 0x2], ax     ; 0x3256
    mov word [bp - 0x0004], 0        ; 0x3259
@..api_idx_0056.l10:
    mov ax, 0x2c                     ; 0x325e
    imul word [bp - 0x0002]          ; 0x3261
    add ax, word [bp - 0x0004]       ; 0x3264
    mov si, ax                       ; 0x3267
    mov bx, word [data_8482]         ; 0x3269
    mov byte [bx + si + 0xe], 0      ; 0x326d
    inc word [bp - 0x0004]           ; 0x3271
    mov ax, word [bp - 0x0004]       ; 0x3274
    cmp ax, strict word 0xa          ; 0x3277
    jl short @..api_idx_0056.l10     ; 0x327a
    mov ax, 0x248                    ; 0x327c
    imul word [bp - 0x0002]          ; 0x327f
    add ax, 0x5bf4                   ; 0x3282
    push ax                          ; 0x3285
    lea ax, word [bp - 0x0056]       ; 0x3286
    push ax                          ; 0x3289
    call ds_dispatch_f364            ; 0x328a
    add sp, byte 4                   ; 0x328d
    lea ax, word [bp - 0x0056]       ; 0x3290
    push ax                          ; 0x3293
    call api_idx_0004_2              ; 0x3294
    pop cx                           ; 0x3297
    lea ax, word [bp - 0x0056]       ; 0x3298
    push ax                          ; 0x329b
    call ds_dispatch_fa90            ; 0x329c
    pop cx                           ; 0x329f
    mov word [bp - 0x0006], ax       ; 0x32a0
    mov bx, ax                       ; 0x32a3
    add bx, bp                       ; 0x32a5
    mov byte [bx - 0x0056], 0x20     ; 0x32a7
    lea cx, word [bp - 0x0055]       ; 0x32ab
    add ax, cx                       ; 0x32ae
    push ax                          ; 0x32b0
    mov ax, 0xdc6                    ; 0x32b1
    push ax                          ; 0x32b4
    call ds_dispatch_b53b            ; 0x32b5
    add sp, byte 4                   ; 0x32b8
    push word [bp - 0x0002]          ; 0x32bb
    call math_loc_1eb4               ; 0x32be
    pop cx                           ; 0x32c1
    mov ax, 1                        ; 0x32c2
    push ax                          ; 0x32c5
    push word [bp - 0x0002]          ; 0x32c6
    call ds_dispatch_cb3a            ; 0x32c9
    add sp, byte 4                   ; 0x32cc
    mov ax, 0xa                      ; 0x32cf
    push ax                          ; 0x32d2
    lea ax, word [bp - 0x0056]       ; 0x32d3
    push ax                          ; 0x32d6
    call api_idx_000c                ; 0x32d7
    add sp, byte 4                   ; 0x32da
    push word [data_905a]            ; 0x32dd
    call api_idx_0004                ; 0x32e1
    pop cx                           ; 0x32e4
    jmp short @..api_idx_0056.l12    ; 0x32e5
@..api_idx_0056.l11:
    push word [bp - 0x0002]          ; 0x32e7
    call math_loc_1eb4               ; 0x32ea
    pop cx                           ; 0x32ed
    mov ax, 1                        ; 0x32ee
    push ax                          ; 0x32f1
    push word [bp - 0x0002]          ; 0x32f2
    call ds_dispatch_cb3a            ; 0x32f5
    add sp, byte 4                   ; 0x32f8
@..api_idx_0056.l12:
    inc word [bp - 0x0002]           ; 0x32fb
@..api_idx_0056.l13:
    mov ax, word [bp - 0x0002]       ; 0x32fe
    cmp ax, word [data_69c8]         ; 0x3301
    jge short @..api_idx_0056.l14    ; 0x3305
    jmp near @..api_idx_0056.l6      ; 0x3307
@..api_idx_0056.l14:
    call api_idx_0004_7              ; 0x330a
    mov ax, word [data_905e]         ; 0x330d
    mov word [data_830a], ax         ; 0x3310
    jmp short @..api_idx_0056.l16    ; 0x3313
@..api_idx_0056.l15:
    mov word [data_830a], 0xb        ; 0x3315
@..api_idx_0056.l16:
    ret                              ; 0x331b
loc_331c:
    mov ax, 0xfe5a                   ; 0x331c
    call ds_dispatch_f40b            ; 0x331f
    mov ax, 0                        ; 0x3322
    push ax                          ; 0x3325
    mov ax, 0x12                     ; 0x3326
    push ax                          ; 0x3329
    mov ax, 0x843a                   ; 0x332a
    push ax                          ; 0x332d
    call ds_dispatch_f306            ; 0x332e
    add sp, byte 6                   ; 0x3331
    mov word [bp - 0x0002], 0        ; 0x3334
@..local.l141:
    mov ax, 0                        ; 0x3339
    push ax                          ; 0x333c
    mov ax, 0x1a4                    ; 0x333d
    push ax                          ; 0x3340
    mov ax, word [bp - 0x0002]       ; 0x3341
    shl ax, 1                        ; 0x3344
    mov bx, ax                       ; 0x3346
    push word [bx - 0x7b7e]          ; 0x3348
    call ds_dispatch_f306            ; 0x334c
    add sp, byte 6                   ; 0x334f
    inc word [bp - 0x0002]           ; 0x3352
    mov ax, word [bp - 0x0002]       ; 0x3355
    cmp ax, strict word 7            ; 0x3358
    jl short @..local.l141           ; 0x335b
    mov word [bp - 0x0002], 0        ; 0x335d
@..local.l142:
    mov ax, word [bp - 0x0002]       ; 0x3362
    shl ax, 1                        ; 0x3365
    mov bx, ax                       ; 0x3367
    mov bx, word [bx - 0x7b7e]       ; 0x3369
    mov byte [bx + 0x1a1], 0         ; 0x336d
    inc word [bp - 0x0002]           ; 0x3372
    mov ax, word [bp - 0x0002]       ; 0x3375
    cmp ax, strict word 7            ; 0x3378
    jl short @..local.l142           ; 0x337b
    mov word [data_8466], 0          ; 0x337d
    mov word [data_845c], 0          ; 0x3383
    mov word [data_845e], 0xfffe     ; 0x3389
    ret                              ; 0x338f
api_idx_0004_8:
    mov ax, 0xfffc                   ; 0x3390
    call ds_dispatch_f40b            ; 0x3393
    mov word [data_84a4], 0          ; 0x3396
    mov word [data_84a2], 0          ; 0x339c
    cmp word [data_0e36], strict word 0xe1 ; 0x33a2
    jne short @..api_idx_0004_8.l1   ; 0x33a8
    mov word [data_845a], 1          ; 0x33aa
@..api_idx_0004_8.l1:
    call loc_331c                    ; 0x33b0
    mov ax, 1                        ; 0x33b3
    push ax                          ; 0x33b6
    push word [data_0e36]            ; 0x33b7
    call api_idx_0008_3              ; 0x33bb
    add sp, byte 4                   ; 0x33be
    mov bx, word [data_8492]         ; 0x33c1
    mov si, word [data_8452]         ; 0x33c5
    mov al, byte [bx + si + 0xa8]    ; 0x33c9
    sub ah, ah                       ; 0x33cd
    mov word [data_84a0], ax         ; 0x33cf
    mov word [data_849e], 0xffff     ; 0x33d2
    call api_idx_0006                ; 0x33d8
    call api_idx_0004_4              ; 0x33db
    ret                              ; 0x33de
loc_33df:
    mov ax, 0xfd06                   ; 0x33df
    call ds_dispatch_f40b            ; 0x33e2
    mov word [data_90bc], 1          ; 0x33e5
    mov ax, data_0002                ; 0x33eb
    push ax                          ; 0x33ee
    mov ax, 0                        ; 0x33ef
    push ax                          ; 0x33f2
    push word [data_8456]            ; 0x33f3
    call ds_dispatch_b7c2            ; 0x33f7
    add sp, byte 6                   ; 0x33fa
    mov word [data_8454], ax         ; 0x33fd
    mov word [data_8458], 0          ; 0x3400
    cmp word [data_82b6], byte 0xff  ; 0x3406
    je short @..local.l145           ; 0x340b
@..local.l143:
    call ds_dispatch_ef83            ; 0x340d
    test ax, ax                      ; 0x3410
    je short @..local.l144           ; 0x3412
    jmp short @..local.l143          ; 0x3414
@..local.l144:
    mov ax, 0                        ; 0x3416
    push ax                          ; 0x3419
    call ds_dispatch_d907            ; 0x341a
    pop cx                           ; 0x341d
@..local.l145:
    call ds_dispatch_c145            ; 0x341e
    mov ax, 0                        ; 0x3421
    push ax                          ; 0x3424
    call ds_dispatch_c12a            ; 0x3425
    pop cx                           ; 0x3428
    mov ax, 4                        ; 0x3429
    push ax                          ; 0x342c
    call ds_dispatch_c12a            ; 0x342d
    pop cx                           ; 0x3430
    mov ax, 6                        ; 0x3431
    push ax                          ; 0x3434
    call ds_dispatch_c12a            ; 0x3435
    pop cx                           ; 0x3438
    mov ax, 1                        ; 0x3439
    push ax                          ; 0x343c
    mov ax, 5                        ; 0x343d
    push ax                          ; 0x3440
    push ax                          ; 0x3441
    call ds_dispatch_d6dc            ; 0x3442
    add sp, byte 6                   ; 0x3445
    mov ax, 1                        ; 0x3448
    push ax                          ; 0x344b
    mov ax, 6                        ; 0x344c
    push ax                          ; 0x344f
    push ax                          ; 0x3450
    call ds_dispatch_d6dc            ; 0x3451
    add sp, byte 6                   ; 0x3454
    mov ax, 1                        ; 0x3457
    push ax                          ; 0x345a
    mov ax, 7                        ; 0x345b
    push ax                          ; 0x345e
    push ax                          ; 0x345f
    call ds_dispatch_d6dc            ; 0x3460
    add sp, byte 6                   ; 0x3463
    mov ax, 1                        ; 0x3466
    push ax                          ; 0x3469
    mov ax, 0xa                      ; 0x346a
    push ax                          ; 0x346d
    push ax                          ; 0x346e
    call ds_dispatch_d6dc            ; 0x346f
    add sp, byte 6                   ; 0x3472
    mov ax, 1                        ; 0x3475
    push ax                          ; 0x3478
    mov ax, 0xb                      ; 0x3479
    push ax                          ; 0x347c
    push ax                          ; 0x347d
    call ds_dispatch_d6dc            ; 0x347e
    add sp, byte 6                   ; 0x3481
    mov ax, 1                        ; 0x3484
    push ax                          ; 0x3487
    mov ax, 0xc                      ; 0x3488
    push ax                          ; 0x348b
    push ax                          ; 0x348c
    call ds_dispatch_d6dc            ; 0x348d
    add sp, byte 6                   ; 0x3490
    mov ax, 7                        ; 0x3493
    push ax                          ; 0x3496
    mov ax, 9                        ; 0x3497
    push ax                          ; 0x349a
    call ds_dispatch_d61c            ; 0x349b
    add sp, byte 4                   ; 0x349e
    mov ax, 0xc                      ; 0x34a1
    push ax                          ; 0x34a4
    mov ax, 0x52                     ; 0x34a5
    push ax                          ; 0x34a8
    call ds_dispatch_d61c            ; 0x34a9
    add sp, byte 4                   ; 0x34ac
    mov ax, 0                        ; 0x34af
    push ax                          ; 0x34b2
    mov ax, data_0002                ; 0x34b3
    push ax                          ; 0x34b6
    mov ax, 0x8f                     ; 0x34b7
    push ax                          ; 0x34ba
    mov ax, 0xf7                     ; 0x34bb
    push ax                          ; 0x34be
    mov ax, 0x21                     ; 0x34bf
    push ax                          ; 0x34c2
    mov ax, 0x48                     ; 0x34c3
    push ax                          ; 0x34c6
    call ds_dispatch_e935            ; 0x34c7
    add sp, byte 0x0c                ; 0x34ca
    mov word [data_9062], dx         ; 0x34cd
    mov word [data_9060], ax         ; 0x34d1
    cmp word [data_906a], byte 0     ; 0x34d4
    je short @..local.l146           ; 0x34d9
    mov ax, 1                        ; 0x34db
    push ax                          ; 0x34de
    push word [data_9068]            ; 0x34df
    call ds_dispatch_c459            ; 0x34e3
    add sp, byte 4                   ; 0x34e6
    mov word [data_906a], 0          ; 0x34e9
@..local.l146:
    mov ax, 0                        ; 0x34ef
    push ax                          ; 0x34f2
    mov ax, data_0002                ; 0x34f3
    push ax                          ; 0x34f6
    mov ax, 0x8f                     ; 0x34f7
    push ax                          ; 0x34fa
    mov ax, 0xf7                     ; 0x34fb
    push ax                          ; 0x34fe
    mov ax, 0x21                     ; 0x34ff
    push ax                          ; 0x3502
    mov ax, 0x48                     ; 0x3503
    push ax                          ; 0x3506
    call ds_dispatch_e935            ; 0x3507
    add sp, byte 0x0c                ; 0x350a
    mov word [data_9066], dx         ; 0x350d
    mov word [data_9064], ax         ; 0x3511
    mov word [bp - 0x0002], 0        ; 0x3514
@..local.l147:
    mov ax, 0xe8                     ; 0x3519
    push ax                          ; 0x351c
    call ds_dispatch_f4a3            ; 0x351d
    pop cx                           ; 0x3520
    mov cx, word [bp - 0x0002]       ; 0x3521
    shl cx, 1                        ; 0x3524
    mov bx, cx                       ; 0x3526
    mov word [bx - 0x7b70], ax       ; 0x3528
    mov ax, 0x1a4                    ; 0x352c
    push ax                          ; 0x352f
    call ds_dispatch_f4a3            ; 0x3530
    pop cx                           ; 0x3533
    mov cx, word [bp - 0x0002]       ; 0x3534
    shl cx, 1                        ; 0x3537
    mov bx, cx                       ; 0x3539
    mov word [bx - 0x7b7e], ax       ; 0x353b
    cmp word [bx - 0x7b70], byte 0   ; 0x353f
    je short @..local.l148           ; 0x3544
    cmp word [bx - 0x7b7e], byte 0   ; 0x3546
    jne short @..local.l149          ; 0x354b
@..local.l148:
    mov ax, 0x1d                     ; 0x354d
    push ax                          ; 0x3550
    call ds_dispatch_b171            ; 0x3551
    pop cx                           ; 0x3554
@..local.l149:
    inc word [bp - 0x0002]           ; 0x3555
    mov ax, word [bp - 0x0002]       ; 0x3558
    cmp ax, strict word 7            ; 0x355b
    jl short @..local.l147           ; 0x355e
    mov word [bp - 0x0002], 0        ; 0x3560
@..local.l150:
    mov ax, 0x18                     ; 0x3565
    push ax                          ; 0x3568
    call ds_dispatch_f4a3            ; 0x3569
    pop cx                           ; 0x356c
    mov cx, word [bp - 0x0002]       ; 0x356d
    shl cx, 1                        ; 0x3570
    mov bx, cx                       ; 0x3572
    mov word [bx - 0x7b96], ax       ; 0x3574
    cmp word [bx - 0x7b96], byte 0   ; 0x3578
    jne short @..local.l151          ; 0x357d
    mov ax, 0x1d                     ; 0x357f
    push ax                          ; 0x3582
    call ds_dispatch_b171            ; 0x3583
    pop cx                           ; 0x3586
@..local.l151:
    mov ax, word [bp - 0x0002]       ; 0x3587
    shl ax, 1                        ; 0x358a
    mov bx, ax                       ; 0x358c
    mov bx, word [bx - 0x7b96]       ; 0x358e
    mov byte [bx + 0x14], 0xff       ; 0x3592
    inc word [bp - 0x0002]           ; 0x3596
    mov ax, word [bp - 0x0002]       ; 0x3599
    cmp ax, strict word 0xc          ; 0x359c
    jl short @..local.l150           ; 0x359f
    mov word [bp - 0x0002], 0xf      ; 0x35a1
@..local.l152:
    mov bx, word [bp - 0x0002]       ; 0x35a6
    mov byte [bx + 0x5b48], 0xff     ; 0x35a9
    mov byte [bx + 0x5b5a], 0        ; 0x35ae
    inc word [bp - 0x0002]           ; 0x35b3
    mov ax, word [bp - 0x0002]       ; 0x35b6
    cmp ax, strict word 0x12         ; 0x35b9
    jl short @..local.l152           ; 0x35bc
    mov ax, 0xc6                     ; 0x35be
    push ax                          ; 0x35c1
    mov ax, 0x13a                    ; 0x35c2
    push ax                          ; 0x35c5
    mov ax, 0xa5                     ; 0x35c6
    push ax                          ; 0x35c9
    mov ax, 8                        ; 0x35ca
    push ax                          ; 0x35cd
    call ds_dispatch_e928            ; 0x35ce
    add sp, byte 8                   ; 0x35d1
    mov word [data_8d10], dx         ; 0x35d4
    mov word [data_8d0e], ax         ; 0x35d8
    mov ax, 0xa4                     ; 0x35db
    push ax                          ; 0x35de
    mov ax, 0xff                     ; 0x35df
    push ax                          ; 0x35e2
    mov ax, 0x92                     ; 0x35e3
    push ax                          ; 0x35e6
    mov ax, 0x41                     ; 0x35e7
    push ax                          ; 0x35ea
    call ds_dispatch_e928            ; 0x35eb
    add sp, byte 8                   ; 0x35ee
    mov word [data_8d0c], dx         ; 0x35f1
    mov word [data_8d0a], ax         ; 0x35f5
    mov ax, 1                        ; 0x35f8
    push ax                          ; 0x35fb
    mov ax, data_0002                ; 0x35fc
    push ax                          ; 0x35ff
    call ds_dispatch_d61c            ; 0x3600
    add sp, byte 4                   ; 0x3603
    mov ax, data_0002                ; 0x3606
    push ax                          ; 0x3609
    mov ax, 3                        ; 0x360a
    push ax                          ; 0x360d
    call ds_dispatch_d61c            ; 0x360e
    add sp, byte 4                   ; 0x3611
    mov ax, 0                        ; 0x3614
    push ax                          ; 0x3617
    call api_idx_000a                ; 0x3618
    pop cx                           ; 0x361b
    call api_idx_0004_8              ; 0x361c
    mov ax, 1                        ; 0x361f
    cmp word [data_905e], byte 0x12  ; 0x3622
    jne short @..local.l153          ; 0x3627
    mov ax, 0                        ; 0x3629
@..local.l153:
    mov word [data_90b8], ax         ; 0x362c
    mov ax, 0                        ; 0x362f
    cmp word [data_905e], byte 0x12  ; 0x3632
    jne short @..local.l154          ; 0x3637
    mov ax, 1                        ; 0x3639
@..local.l154:
    mov word [data_90ba], ax         ; 0x363c
    cmp word [data_905e], byte 0x12  ; 0x363f
    jne short @..local.l155          ; 0x3644
    cmp word [data_8466], byte 1     ; 0x3646
    jle short @..local.l155          ; 0x364b
    mov ax, 1                        ; 0x364d
    push ax                          ; 0x3650
    call api_idx_000a                ; 0x3651
    pop cx                           ; 0x3654
    mov ax, 1                        ; 0x3655
    push ax                          ; 0x3658
    call ds_dispatch_b75e            ; 0x3659
    pop cx                           ; 0x365c
    push word [data_8492]            ; 0x365d
    lea ax, word [bp - 0x0056]       ; 0x3661
    push ax                          ; 0x3664
    call ds_dispatch_f364            ; 0x3665
    add sp, byte 4                   ; 0x3668
    lea ax, word [bp - 0x0056]       ; 0x366b
    push ax                          ; 0x366e
    call api_idx_0004_2              ; 0x366f
    pop cx                           ; 0x3672
    lea ax, word [bp - 0x0056]       ; 0x3673
    push ax                          ; 0x3676
    call ds_dispatch_fa90            ; 0x3677
    pop cx                           ; 0x367a
    mov word [bp - 0x0004], ax       ; 0x367b
    lea cx, word [bp - 0x0056]       ; 0x367e
    add ax, cx                       ; 0x3681
    push ax                          ; 0x3683
    mov ax, 0xdb8                    ; 0x3684
    push ax                          ; 0x3687
    call ds_dispatch_b53b            ; 0x3688
    add sp, byte 4                   ; 0x368b
    mov ax, 0x11                     ; 0x368e
    push ax                          ; 0x3691
    lea ax, word [bp - 0x0056]       ; 0x3692
    push ax                          ; 0x3695
    call api_idx_000c                ; 0x3696
    add sp, byte 4                   ; 0x3699
@..local.l155:
    call math_loc_1f39               ; 0x369c
    les bx, word [data_0002]         ; 0x369f
    mov ax, word [es:bx]             ; 0x36a3
    mov dx, word [es:bx + 0x2]       ; 0x36a6
    mov word [data_908c], dx         ; 0x36aa
    mov word [data_908a], ax         ; 0x36ae
    mov word [data_830a], 0xb        ; 0x36b1
    ret                              ; 0x36b7
api_idx_0002_2:
    mov ax, 0xfffe                   ; 0x36b8
    call ds_dispatch_f40b            ; 0x36bb
    mov word [data_90b6], 5          ; 0x36be
    mov word [bp - 0x0002], 0        ; 0x36c4
    jmp short @..api_idx_0002_2.l2   ; 0x36c9
@..api_idx_0002_2.l1:
    push word [bp - 0x0002]          ; 0x36cb
    call math_loc_1eb4               ; 0x36ce
    pop cx                           ; 0x36d1
    mov ax, 1                        ; 0x36d2
    push ax                          ; 0x36d5
    push word [bp - 0x0002]          ; 0x36d6
    call api_idx_0008                ; 0x36d9
    add sp, byte 4                   ; 0x36dc
    inc word [bp - 0x0002]           ; 0x36df
@..api_idx_0002_2.l2:
    mov ax, word [bp - 0x0002]       ; 0x36e2
    cmp ax, word [data_69c8]         ; 0x36e5
    jl short @..api_idx_0002_2.l1    ; 0x36e9
    call api_idx_000c_3              ; 0x36eb
    mov ax, 0                        ; 0x36ee
    push ax                          ; 0x36f1
    call api_idx_005a                ; 0x36f2
    pop cx                           ; 0x36f5
    call loc_2cc7                    ; 0x36f6
    cmp word [data_90bc], byte 0     ; 0x36f9
    jne short @..api_idx_0002_2.l3   ; 0x36fe
    call math_loc_1a16               ; 0x3700
@..api_idx_0002_2.l3:
    mov word [data_90bc], 0          ; 0x3703
    mov word [data_830a], 0xc        ; 0x3709
    ret                              ; 0x370f

    db 0x8f, 0x06, 0xb4, 0x90, 0x59, 0x89, 0x26, 0xb0, 0x90, 0x89, 0x2e, 0xb2, 0x90, 0x89, 0x36, 0xac
    db 0x90, 0x89, 0x3e, 0xae, 0x90, 0xfc, 0xbf, 0xb6, 0x90, 0xb9, 0xd0, 0x90, 0x2b, 0xcf, 0xd1, 0xe9
    db 0x74, 0x04, 0x2b, 0xc0, 0xf3, 0xab, 0xe8, 0xd5, 0xc8, 0x8b, 0x2e, 0xb2, 0x90, 0x8b, 0x26, 0xb0
    db 0x90, 0x8b, 0x36, 0xac, 0x90, 0x8b, 0x3e, 0xae, 0x90, 0x51, 0xff, 0x26, 0xb4, 0x90

string_loc_374e:
    push bp                          ; 0x374e
    mov bp, sp                       ; 0x374f
    push si                          ; 0x3751
    push di                          ; 0x3752
    mov di, ds                       ; 0x3753
    mov es, di                       ; 0x3755
    mov si, word [bp + 0x4]          ; 0x3757
    mov di, word [bp + 0x6]          ; 0x375a
    mov cx, word [bp + 0x8]          ; 0x375d
    jcxz @..string_loc_374e.l2       ; 0x3760
    cmp di, si                       ; 0x3762
    je short @..string_loc_374e.l2   ; 0x3764
@..string_loc_374e.l1:
    mov al, byte [es:di]             ; 0x3766
    xchg byte [si], al               ; 0x3769
    stosb                            ; 0x376b
    inc si                           ; 0x376c
    loop @..string_loc_374e.l1       ; 0x376d
@..string_loc_374e.l2:
    pop di                           ; 0x376f
    pop si                           ; 0x3770
    pop bp                           ; 0x3771
    ret                              ; 0x3772

    db 'MON00.PIC', 0
    db 0x20, 0x00
    db 'VM1.$$$', 0
    times 10 db 0

