%include "structs/structs.inc"
%include "structs/loc_4aa9.inc"
org 0
bits 16
%include "labels/vpclv_foreign_labels.inc"

    ; header (8 bytes)
    db 0xf2, 0x00, 0x55, 0x50, 0xa2, 0x54, 0x98, 0x90

data_0002 equ 0x0002
data_0038 equ 0x0038
data_003c equ 0x003c
data_0040 equ 0x0040
data_0042 equ 0x0042
data_0044 equ 0x0044
data_010c equ 0x010c
data_0e32 equ 0x0e32
loc_2c8d equ 0x2c8d
loc_2ca3 equ 0x2ca3
loc_2cbb equ 0x2cbb
loc_2cbf equ 0x2cbf
loc_2cd6 equ 0x2cd6
loc_2cdf equ 0x2cdf
loc_2ced equ 0x2ced
loc_2d06 equ 0x2d06
loc_2d07 equ 0x2d07
loc_2d0d equ 0x2d0d
loc_2d6d equ 0x2d6d
loc_2d75 equ 0x2d75
loc_2e67 equ 0x2e67
loc_2e6c equ 0x2e6c
loc_2e93 equ 0x2e93
loc_2eac equ 0x2eac
loc_2eb3 equ 0x2eb3
loc_2f21 equ 0x2f21
loc_2f23 equ 0x2f23
loc_2f42 equ 0x2f42
loc_2f46 equ 0x2f46
loc_3734 equ 0x3734
data_3a87 equ 0x3a87
loc_3d08 equ 0x3d08
loc_4615 equ 0x4615
loc_4aa9 equ 0x4aa9
data_59fc equ 0x59fc
data_5b3e equ 0x5b3e
data_69c8 equ 0x69c8
data_7096 equ 0x7096
data_82ee equ 0x82ee
data_830a equ 0x830a
data_844c equ 0x844c
data_844e equ 0x844e
data_8450 equ 0x8450
data_8f20 equ 0x8f20
data_904e equ 0x904e
data_9050 equ 0x9050
data_905a equ 0x905a
data_905e equ 0x905e
data_908a equ 0x908a
data_908c equ 0x908c
data_908e equ 0x908e
data_9090 equ 0x9090
data_9092 equ 0x9092
data_9094 equ 0x9094
data_9096 equ 0x9096
data_9416 equ 0x9416
data_9418 equ 0x9418
data_941a equ 0x941a
data_941c equ 0x941c
data_941e equ 0x941e
data_9420 equ 0x9420
data_9422 equ 0x9422
data_9424 equ 0x9424
data_9426 equ 0x9426
data_9428 equ 0x9428
data_942a equ 0x942a
data_942c equ 0x942c
data_9432 equ 0x9432
data_9434 equ 0x9434
data_9436 equ 0x9436
data_9438 equ 0x9438
data_943a equ 0x943a
data_948c equ 0x948c
data_948e equ 0x948e
data_9490 equ 0x9490
data_9492 equ 0x9492
data_95d0 equ 0x95d0
data_95f4 equ 0x95f4
data_9704 equ 0x9704

    db 0x70, 0x03, 0xa4, 0x03, 0xb9, 0xa4
loc_000e:
    mov ax, 0                        ; 0x000e
    call ds_dispatch_f40b            ; 0x0011
    cmp word [data_830a], byte 0x16  ; 0x0014
    jne short @..local.l1            ; 0x0019
    call api_idx_000c_3              ; 0x001b
@..local.l1:
    mov ax, 0                        ; 0x001e
    ret                              ; 0x0021
api_idx_0002:
    mov ax, 0xfffe                   ; 0x0022
    call ds_dispatch_f40b            ; 0x0025
    mov ax, 0                        ; 0x0028
    push ax                          ; 0x002b
    call ds_dispatch_ef14            ; 0x002c
    pop cx                           ; 0x002f
    mov ax, 0                        ; 0x0030
    push ax                          ; 0x0033
    mov ax, 1                        ; 0x0034
    push ax                          ; 0x0037
    push word [bp + 0x4]             ; 0x0038
    call ds_dispatch_d161            ; 0x003b
    add sp, byte 4                   ; 0x003e
    push ax                          ; 0x0041
    call ds_dispatch_f909            ; 0x0042
    add sp, byte 4                   ; 0x0045
    mov word [bp - 0x0002], ax       ; 0x0048
    cmp ax, strict word 0xffff       ; 0x004b
    jne short @..api_idx_0002.l1     ; 0x004e
    mov ax, 0x1c                     ; 0x0050
    push ax                          ; 0x0053
    call ds_dispatch_b171            ; 0x0054
    pop cx                           ; 0x0057
@..api_idx_0002.l1:
    mov ax, 0                        ; 0x0058
    push ax                          ; 0x005b
    push word [bp - 0x0002]          ; 0x005c
    call ds_dispatch_efde            ; 0x005f
    add sp, byte 4                   ; 0x0062
    push word [bp - 0x0002]          ; 0x0065
    call ds_dispatch_fda5            ; 0x0068
    pop cx                           ; 0x006b
    cmp word [bp + 0x6], byte 0      ; 0x006c
    je short @..api_idx_0002.l2      ; 0x0070
    mov ax, 0xc7                     ; 0x0072
    push ax                          ; 0x0075
    mov ax, 0x13f                    ; 0x0076
    push ax                          ; 0x0079
    mov ax, 0                        ; 0x007a
    push ax                          ; 0x007d
    push ax                          ; 0x007e
    call ds_dispatch_e8da            ; 0x007f
    add sp, byte 8                   ; 0x0082
@..api_idx_0002.l2:
    ret                              ; 0x0085
api_idx_0012:
    mov ax, 0xffee                   ; 0x0086
    call ds_dispatch_f40b            ; 0x0089
    mov word [bp - 0x000e], 0        ; 0x008c
    mov word [bp - 0x000c], 0        ; 0x0091
    mov word [bp - 0x000a], 0        ; 0x0096
    mov ax, 0x248                    ; 0x009b
    imul word [bp + 0x4]             ; 0x009e
    mov bx, ax                       ; 0x00a1
    mov al, byte [bx + 0x5e37]       ; 0x00a3
    sub ah, ah                       ; 0x00a7
    mov word [bp - 0x0008], ax       ; 0x00a9
    mov al, byte [bx + 0x5e38]       ; 0x00ac
    sub ah, ah                       ; 0x00b0
    mov word [bp - 0x0006], ax       ; 0x00b2
    mov word [bp - 0x0004], 0        ; 0x00b5
    mov word [bp - 0x0002], 9        ; 0x00ba
    mov ax, word [bx + 0x5c14]       ; 0x00bf
    mov bx, 0x64                     ; 0x00c3
    imul bx                          ; 0x00c6
    push ax                          ; 0x00c8
    push dx                          ; 0x00c9
    mov ax, 0x248                    ; 0x00ca
    imul word [bp + 0x4]             ; 0x00cd
    mov bx, ax                       ; 0x00d0
    mov ax, word [bx + 0x5c16]       ; 0x00d2
    cwd                              ; 0x00d6
    mov cx, ax                       ; 0x00d7
    mov bx, dx                       ; 0x00d9
    pop dx                           ; 0x00db
    pop ax                           ; 0x00dc
    call ds_dispatch_f99f            ; 0x00dd
    mov word [bp - 0x0010], dx       ; 0x00e0
    mov word [bp - 0x0012], ax       ; 0x00e3
    cmp dx, byte 0                   ; 0x00e6
    jg short @..api_idx_0012.l1      ; 0x00e9
    jne short @..api_idx_0012.l2     ; 0x00eb
    cmp ax, strict word 0x32         ; 0x00ed
    jbe short @..api_idx_0012.l2     ; 0x00f0
@..api_idx_0012.l1:
    jmp short @..api_idx_0012.l3     ; 0x00f2
@..api_idx_0012.l2:
    jmp near @..api_idx_0012.l17     ; 0x00f4
@..api_idx_0012.l3:
    cmp dx, byte 0                   ; 0x00f7
    jg short @..api_idx_0012.l4      ; 0x00fa
    jne short @..api_idx_0012.l5     ; 0x00fc
    cmp ax, strict word 0x42         ; 0x00fe
    jbe short @..api_idx_0012.l5     ; 0x0101
@..api_idx_0012.l4:
    jmp short @..api_idx_0012.l8     ; 0x0103
@..api_idx_0012.l5:
    mov word [bp - 0x000c], 5        ; 0x0105
    mov word [bp - 0x000a], 0xa      ; 0x010a
    cmp word [bp - 0x0008], byte 3   ; 0x010f
    jle short @..api_idx_0012.l6     ; 0x0113
    mov word [bp - 0x0008], 3        ; 0x0115
@..api_idx_0012.l6:
    cmp word [bp - 0x0006], byte 3   ; 0x011a
    jle short @..api_idx_0012.l7     ; 0x011e
    mov word [bp - 0x0006], 3        ; 0x0120
@..api_idx_0012.l7:
    jmp near @..api_idx_0012.l17     ; 0x0125
@..api_idx_0012.l8:
    cmp dx, byte 0                   ; 0x0128
    jg short @..api_idx_0012.l9      ; 0x012b
    jne short @..api_idx_0012.l10    ; 0x012d
    cmp ax, strict word 0x4b         ; 0x012f
    jbe short @..api_idx_0012.l10    ; 0x0132
@..api_idx_0012.l9:
    jmp short @..api_idx_0012.l13    ; 0x0134
@..api_idx_0012.l10:
    mov word [bp - 0x000e], 1        ; 0x0136
    mov word [bp - 0x000c], 0xa      ; 0x013b
    mov word [bp - 0x000a], 0x14     ; 0x0140
    cmp word [bp - 0x0008], byte 2   ; 0x0145
    jle short @..api_idx_0012.l11    ; 0x0149
    mov word [bp - 0x0008], data_0002 ; 0x014b
@..api_idx_0012.l11:
    cmp word [bp - 0x0006], byte 2   ; 0x0150
    jle short @..api_idx_0012.l12    ; 0x0154
    mov word [bp - 0x0006], data_0002 ; 0x0156
@..api_idx_0012.l12:
    mov ax, 0x248                    ; 0x015b
    imul word [bp + 0x4]             ; 0x015e
    mov bx, ax                       ; 0x0161
    mov ax, word [bx + 0x5c12]       ; 0x0163
    mov cx, 0x64                     ; 0x0167
    cwd                              ; 0x016a
    idiv cx                          ; 0x016b
    mov word [bp - 0x0004], ax       ; 0x016d
    mov word [bp - 0x0002], 0x83     ; 0x0170
    jmp short @..api_idx_0012.l17    ; 0x0175
@..api_idx_0012.l13:
    cmp word [bp - 0x0010], byte 0   ; 0x0177
    jg short @..api_idx_0012.l14     ; 0x017b
    jne short @..api_idx_0012.l15    ; 0x017d
    cmp word [bp - 0x0012], byte 0x5a ; 0x017f
    jbe short @..api_idx_0012.l15    ; 0x0183
@..api_idx_0012.l14:
    jmp short @..api_idx_0012.l16    ; 0x0185
@..api_idx_0012.l15:
    mov word [bp - 0x000e], data_0002 ; 0x0187
    mov word [bp - 0x000c], 0x14     ; 0x018c
    mov word [bp - 0x000a], 0x28     ; 0x0191
    mov word [bp - 0x0008], 1        ; 0x0196
    mov word [bp - 0x0006], 1        ; 0x019b
    mov ax, 0x248                    ; 0x01a0
    imul word [bp + 0x4]             ; 0x01a3
    mov bx, ax                       ; 0x01a6
    mov ax, word [bx + 0x5c12]       ; 0x01a8
    mov cx, 0x32                     ; 0x01ac
    cwd                              ; 0x01af
    idiv cx                          ; 0x01b0
    mov word [bp - 0x0004], ax       ; 0x01b2
    mov word [bp - 0x0002], 0x54     ; 0x01b5
    jmp short @..api_idx_0012.l17    ; 0x01ba
@..api_idx_0012.l16:
    mov word [bp - 0x000e], 4        ; 0x01bc
    mov word [bp - 0x000c], 0x28     ; 0x01c1
    mov word [bp - 0x000a], 0x50     ; 0x01c6
    mov word [bp - 0x0008], 1        ; 0x01cb
    mov word [bp - 0x0006], 1        ; 0x01d0
    mov ax, 0x248                    ; 0x01d5
    imul word [bp + 0x4]             ; 0x01d8
    mov bx, ax                       ; 0x01db
    mov ax, word [bx + 0x5c12]       ; 0x01dd
    mov cx, 0x19                     ; 0x01e1
    cwd                              ; 0x01e4
    idiv cx                          ; 0x01e5
    mov word [bp - 0x0004], ax       ; 0x01e7
    mov word [bp - 0x0002], 0x16     ; 0x01ea
@..api_idx_0012.l17:
    lea si, word [bp - 0x000e]       ; 0x01ef
    mov di, 0x9408                   ; 0x01f2
    mov cx, ds                       ; 0x01f5
    mov es, cx                       ; 0x01f7
    mov cx, 7                        ; 0x01f9
    rep movsw                        ; 0x01fc
    mov ax, 0x9408                   ; 0x01fe
    ret                              ; 0x0201
api_idx_000c:
    mov ax, 0xfff4                   ; 0x0202
    call ds_dispatch_f40b            ; 0x0205
    mov word [bp - 0x0002], 0        ; 0x0208
@..api_idx_000c.l1:
    mov ax, 0x14                     ; 0x020d
    imul word [bp - 0x0002]          ; 0x0210
    mov cx, word [bp - 0x0002]       ; 0x0213
    shl cx, 1                        ; 0x0216
    mov bx, cx                       ; 0x0218
    mov cx, word [bx - 0x7cf2]       ; 0x021a
    shl cx, 1                        ; 0x021e
    add ax, cx                       ; 0x0220
    mov bx, ax                       ; 0x0222
    mov al, byte [bx + 0x1d4]        ; 0x0224
    mov byte [bp - 0x000c], al       ; 0x0228
    mov byte [bp - 0x000b], 0        ; 0x022b
    mov ax, 0                        ; 0x022f
    push ax                          ; 0x0232
    push ax                          ; 0x0233
    lea ax, word [bp - 0x000c]       ; 0x0234
    push ax                          ; 0x0237
    mov ax, 0                        ; 0x0238
    push ax                          ; 0x023b
    mov ax, 0xc7                     ; 0x023c
    push ax                          ; 0x023f
    mov ax, 0                        ; 0x0240
    push ax                          ; 0x0243
    mov ax, 0x13f                    ; 0x0244
    push ax                          ; 0x0247
    mov ax, 0                        ; 0x0248
    push ax                          ; 0x024b
    mov ax, 0xc                      ; 0x024c
    imul word [bp + 0x8]             ; 0x024f
    mov cx, word [bp - 0x0002]       ; 0x0252
    shl cx, 1                        ; 0x0255
    add ax, cx                       ; 0x0257
    mov bx, ax                       ; 0x0259
    mov ax, word [bx + 0x1bc]        ; 0x025b
    add ax, word [bp + 0x6]          ; 0x025f
    push ax                          ; 0x0262
    mov ax, word [bx + 0x1a4]        ; 0x0263
    add ax, word [bp + 0x4]          ; 0x0267
    push ax                          ; 0x026a
    mov ax, data_0002                ; 0x026b
    push ax                          ; 0x026e
    call ds_dispatch_efd1            ; 0x026f
    add sp, byte 0x16                ; 0x0272
    inc word [bp - 0x0002]           ; 0x0275
    mov ax, word [bp - 0x0002]       ; 0x0278
    cmp ax, strict word 6            ; 0x027b
    jl short @..api_idx_000c.l1      ; 0x027e
    ret                              ; 0x0280
api_idx_0004:
    mov ax, 0xfffc                   ; 0x0281
    call ds_dispatch_f40b            ; 0x0284
    mov ax, 0                        ; 0x0287
    push ax                          ; 0x028a
    push ax                          ; 0x028b
    push word [data_942c]            ; 0x028c
    push word [data_942a]            ; 0x0290
    call ds_dispatch_e942            ; 0x0294
    add sp, byte 8                   ; 0x0297
    mov word [bp - 0x0002], 0        ; 0x029a
@..api_idx_0004.l1:
    mov word [bp - 0x0004], 0        ; 0x029f
@..api_idx_0004.l2:
    mov ax, 0                        ; 0x02a4
    push ax                          ; 0x02a7
    mov ax, word [bp - 0x0002]       ; 0x02a8
    shl ax, 1                        ; 0x02ab
    shl ax, 1                        ; 0x02ad
    mov cx, word [bp - 0x0004]       ; 0x02af
    shl cx, 1                        ; 0x02b2
    add ax, cx                       ; 0x02b4
    mov bx, ax                       ; 0x02b6
    db 0xff, 0xb7, 0x06, 0x00 ; push word [bx + 0x6]
    call ds_dispatch_e823            ; 0x02bc
    add sp, byte 4                   ; 0x02bf
    mov ax, word [bp - 0x0002]       ; 0x02c2
    shl ax, 1                        ; 0x02c5
    shl ax, 1                        ; 0x02c7
    shl ax, 1                        ; 0x02c9
    mov cx, word [bp - 0x0004]       ; 0x02cb
    shl cx, 1                        ; 0x02ce
    shl cx, 1                        ; 0x02d0
    add ax, cx                       ; 0x02d2
    mov bx, ax                       ; 0x02d4
    push word [bx + 0x15e]           ; 0x02d6
    push word [bx + 0x15c]           ; 0x02da
    call ds_dispatch_e809            ; 0x02de
    add sp, byte 4                   ; 0x02e1
    mov ax, 3                        ; 0x02e4
    push ax                          ; 0x02e7
    push ax                          ; 0x02e8
    mov ax, 0x248                    ; 0x02e9
    imul word [bp + 0x4]             ; 0x02ec
    mov cx, word [bp - 0x0002]       ; 0x02ef
    shl cx, 1                        ; 0x02f2
    shl cx, 1                        ; 0x02f4
    add ax, cx                       ; 0x02f6
    mov cx, word [bp - 0x0004]       ; 0x02f8
    shl cx, 1                        ; 0x02fb
    add ax, cx                       ; 0x02fd
    mov bx, ax                       ; 0x02ff
    push word [bx + 0x5c1c]          ; 0x0301
    call ds_dispatch_b2e7            ; 0x0305
    add sp, byte 6                   ; 0x0308
    inc word [bp - 0x0004]           ; 0x030b
    mov ax, word [bp - 0x0004]       ; 0x030e
    cmp ax, strict word 2            ; 0x0311
    jl short @..api_idx_0004.l2      ; 0x0314
    inc word [bp - 0x0002]           ; 0x0316
    mov ax, word [bp - 0x0002]       ; 0x0319
    cmp ax, strict word 6            ; 0x031c
    jge short @..api_idx_0004.l3     ; 0x031f
    jmp near @..api_idx_0004.l1      ; 0x0321
@..api_idx_0004.l3:
    mov ax, 0                        ; 0x0324
    push ax                          ; 0x0327
    push ax                          ; 0x0328
    push ax                          ; 0x0329
    call api_idx_000c                ; 0x032a
    add sp, byte 6                   ; 0x032d
    ret                              ; 0x0330
api_idx_0002_2:
    mov ax, 0xfffe                   ; 0x0331
    call ds_dispatch_f40b            ; 0x0334
    mov word [bp - 0x0002], 0        ; 0x0337
@..api_idx_0002_2.l1:
    cmp word [bp + 0x4], byte 0      ; 0x033c
    jl short @..api_idx_0002_2.l2    ; 0x0340
    mov ax, word [bp - 0x0002]       ; 0x0342
    cmp ax, word [bp + 0x4]          ; 0x0345
    jne short @..api_idx_0002_2.l3   ; 0x0348
@..api_idx_0002_2.l2:
    mov ax, word [bp - 0x0002]       ; 0x034a
    shl ax, 1                        ; 0x034d
    mov bx, ax                       ; 0x034f
    inc word [bx - 0x7cf2]           ; 0x0351
@..api_idx_0002_2.l3:
    mov ax, 0x14                     ; 0x0355
    imul word [bp - 0x0002]          ; 0x0358
    mov cx, word [bp - 0x0002]       ; 0x035b
    shl cx, 1                        ; 0x035e
    mov bx, cx                       ; 0x0360
    mov cx, word [bx - 0x7cf2]       ; 0x0362
    shl cx, 1                        ; 0x0366
    add ax, cx                       ; 0x0368
    mov bx, ax                       ; 0x036a
    cmp word [bx + 0x1d4], byte 0xff ; 0x036c
    jne short @..api_idx_0002_2.l4   ; 0x0371
    mov ax, word [bp - 0x0002]       ; 0x0373
    shl ax, 1                        ; 0x0376
    mov bx, ax                       ; 0x0378
    mov word [bx - 0x7cf2], 0        ; 0x037a
@..api_idx_0002_2.l4:
    inc word [bp - 0x0002]           ; 0x0380
    mov ax, word [bp - 0x0002]       ; 0x0383
    cmp ax, strict word 6            ; 0x0386
    jl short @..api_idx_0002_2.l1    ; 0x0389
    ret                              ; 0x038b
api_idx_0002_3:
    mov ax, 0xfffe                   ; 0x038c
    call ds_dispatch_f40b            ; 0x038f
    mov word [bp - 0x0002], 0        ; 0x0392
@..api_idx_0002_3.l1:
    mov ax, word [bp - 0x0002]       ; 0x0397
    shl ax, 1                        ; 0x039a
    shl ax, 1                        ; 0x039c
    mov bx, ax                       ; 0x039e
    db 0x8b, 0x87, 0x4a, 0x00 ; mov ax, word [bx + 0x4a]
    cmp ax, word [bp + 0x4]          ; 0x03a4
    jge short @..api_idx_0002_3.l2   ; 0x03a7
    inc word [bp - 0x0002]           ; 0x03a9
    jmp short @..api_idx_0002_3.l1   ; 0x03ac
@..api_idx_0002_3.l2:
    mov ax, word [bp - 0x0002]       ; 0x03ae
    shl ax, 1                        ; 0x03b1
    shl ax, 1                        ; 0x03b3
    mov bx, ax                       ; 0x03b5
    db 0xff, 0xb7, 0x4a, 0x00 ; push word [bx + 0x4a]
    db 0xff, 0xb7, 0x48, 0x00 ; push word [bx + 0x48]
    mov ax, word [bp + 0x4]          ; 0x03bf
    add ax, word [bp + 0x6]          ; 0x03c2
    push ax                          ; 0x03c5
    call ds_dispatch_b7c2            ; 0x03c6
    add sp, byte 6                   ; 0x03c9
    ret                              ; 0x03cc
api_idx_0010:
    mov ax, 0xfff0                   ; 0x03cd
    call ds_dispatch_f40b            ; 0x03d0
    lea ax, word [bp - 0x000c]       ; 0x03d3
    push ax                          ; 0x03d6
    lea ax, word [bp - 0x000a]       ; 0x03d7
    push ax                          ; 0x03da
    mov ax, word [bp + 0x4]          ; 0x03db
    shl ax, 1                        ; 0x03de
    mov bx, ax                       ; 0x03e0
    push word [bx + 0x69bc]          ; 0x03e2
    mov ax, 5                        ; 0x03e6
    push ax                          ; 0x03e9
    call ds_dispatch_e7af            ; 0x03ea
    add sp, byte 8                   ; 0x03ed
    mov word [bp - 0x0006], dx       ; 0x03f0
    mov word [bp - 0x0008], ax       ; 0x03f3
    mov ax, word [bp - 0x000a]       ; 0x03f6
    mov word [bp - 0x000e], ax       ; 0x03f9
    mov word [bp - 0x0004], 0        ; 0x03fc
    jmp near @..api_idx_0010.l7      ; 0x0401
@..api_idx_0010.l1:
    mov word [bp - 0x0002], 0        ; 0x0404
    jmp near @..api_idx_0010.l5      ; 0x0409
@..api_idx_0010.l2:
    les bx, word [bp - 0x0008]       ; 0x040c
    mov si, word [bp - 0x000e]       ; 0x040f
    mov al, byte [es:bx + si]        ; 0x0412
    sub ah, ah                       ; 0x0415
    mov word [bp - 0x0010], ax       ; 0x0417
    cmp ax, 0xff                     ; 0x041a
    jne short @..api_idx_0010.l3     ; 0x041d
    jmp near @..api_idx_0010.l4      ; 0x041f
@..api_idx_0010.l3:
    mov ax, 0xffff                   ; 0x0422
    push ax                          ; 0x0425
    push word [bp - 0x0010]          ; 0x0426
    call api_idx_0002_3              ; 0x0429
    add sp, byte 4                   ; 0x042c
    push ax                          ; 0x042f
    mov ax, word [bp - 0x0004]       ; 0x0430
    shl ax, 1                        ; 0x0433
    add ax, word [bp + 0x8]          ; 0x0435
    push ax                          ; 0x0438
    mov ax, word [bp - 0x0002]       ; 0x0439
    shl ax, 1                        ; 0x043c
    add ax, word [bp + 0x6]          ; 0x043e
    push ax                          ; 0x0441
    call ds_dispatch_e8f4            ; 0x0442
    add sp, byte 6                   ; 0x0445
    push word [bp - 0x0010]          ; 0x0448
    mov ax, word [bp - 0x0004]       ; 0x044b
    shl ax, 1                        ; 0x044e
    add ax, word [bp + 0x8]          ; 0x0450
    push ax                          ; 0x0453
    mov ax, word [bp - 0x0002]       ; 0x0454
    shl ax, 1                        ; 0x0457
    add ax, word [bp + 0x6]          ; 0x0459
    inc ax                           ; 0x045c
    push ax                          ; 0x045d
    call ds_dispatch_e8f4            ; 0x045e
    add sp, byte 6                   ; 0x0461
    push word [bp - 0x0010]          ; 0x0464
    mov ax, word [bp - 0x0004]       ; 0x0467
    shl ax, 1                        ; 0x046a
    add ax, word [bp + 0x8]          ; 0x046c
    inc ax                           ; 0x046f
    push ax                          ; 0x0470
    mov ax, word [bp - 0x0002]       ; 0x0471
    shl ax, 1                        ; 0x0474
    add ax, word [bp + 0x6]          ; 0x0476
    push ax                          ; 0x0479
    call ds_dispatch_e8f4            ; 0x047a
    add sp, byte 6                   ; 0x047d
    mov ax, 1                        ; 0x0480
    push ax                          ; 0x0483
    push word [bp - 0x0010]          ; 0x0484
    call api_idx_0002_3              ; 0x0487
    add sp, byte 4                   ; 0x048a
    push ax                          ; 0x048d
    mov ax, word [bp - 0x0004]       ; 0x048e
    shl ax, 1                        ; 0x0491
    add ax, word [bp + 0x8]          ; 0x0493
    inc ax                           ; 0x0496
    push ax                          ; 0x0497
    mov ax, word [bp - 0x0002]       ; 0x0498
    shl ax, 1                        ; 0x049b
    add ax, word [bp + 0x6]          ; 0x049d
    inc ax                           ; 0x04a0
    push ax                          ; 0x04a1
    call ds_dispatch_e8f4            ; 0x04a2
    add sp, byte 6                   ; 0x04a5
@..api_idx_0010.l4:
    inc word [bp - 0x000e]           ; 0x04a8
    inc word [bp - 0x0002]           ; 0x04ab
@..api_idx_0010.l5:
    mov ax, word [bp - 0x0002]       ; 0x04ae
    cmp ax, word [bp - 0x000a]       ; 0x04b1
    jge short @..api_idx_0010.l6     ; 0x04b4
    jmp near @..api_idx_0010.l2      ; 0x04b6
@..api_idx_0010.l6:
    inc word [bp - 0x0004]           ; 0x04b9
@..api_idx_0010.l7:
    mov ax, word [bp - 0x000c]       ; 0x04bc
    dec ax                           ; 0x04bf
    dec ax                           ; 0x04c0
    cmp ax, word [bp - 0x0004]       ; 0x04c1
    jle short @..api_idx_0010.l8     ; 0x04c4
    jmp near @..api_idx_0010.l1      ; 0x04c6
@..api_idx_0010.l8:
    ret                              ; 0x04c9
api_idx_000a:
    mov ax, 0xfff6                   ; 0x04ca
    call ds_dispatch_f40b            ; 0x04cd
    mov ax, 0                        ; 0x04d0
    push ax                          ; 0x04d3
    push ax                          ; 0x04d4
    push word [data_9434]            ; 0x04d5
    push word [data_9432]            ; 0x04d9
    call ds_dispatch_e942            ; 0x04dd
    add sp, byte 8                   ; 0x04e0
    cmp word [data_9436], byte 0     ; 0x04e3
    jle short @..api_idx_000a.l1     ; 0x04e8
    mov byte [bp - 0x000a], 1        ; 0x04ea
    mov byte [bp - 0x0009], 0        ; 0x04ee
    mov ax, 0                        ; 0x04f2
    push ax                          ; 0x04f5
    push ax                          ; 0x04f6
    lea ax, word [bp - 0x000a]       ; 0x04f7
    push ax                          ; 0x04fa
    mov ax, 0                        ; 0x04fb
    push ax                          ; 0x04fe
    mov ax, 0xc7                     ; 0x04ff
    push ax                          ; 0x0502
    mov ax, 0x41                     ; 0x0503
    sub ax, word [data_9436]         ; 0x0506
    push ax                          ; 0x050a
    mov ax, 0x13f                    ; 0x050b
    push ax                          ; 0x050e
    mov ax, 0                        ; 0x050f
    push ax                          ; 0x0512
    mov ax, 0x2d                     ; 0x0513
    push ax                          ; 0x0516
    mov ax, 0x5a                     ; 0x0517
    push ax                          ; 0x051a
    mov ax, 0xf                      ; 0x051b
    push ax                          ; 0x051e
    call ds_dispatch_efd1            ; 0x051f
    add sp, byte 0x16                ; 0x0522
@..api_idx_000a.l1:
    mov ax, 5                        ; 0x0525
    cmp word [data_9438], byte 0     ; 0x0528
    jne short @..api_idx_000a.l2     ; 0x052d
    mov ax, word [bp + 0x4]          ; 0x052f
    inc ax                           ; 0x0532
    inc ax                           ; 0x0533
@..api_idx_000a.l2:
    mov byte [bp - 0x000a], al       ; 0x0534
    mov byte [bp - 0x0009], 0        ; 0x0537
    mov ax, 0                        ; 0x053b
    push ax                          ; 0x053e
    push ax                          ; 0x053f
    lea ax, word [bp - 0x000a]       ; 0x0540
    push ax                          ; 0x0543
    mov ax, 0                        ; 0x0544
    push ax                          ; 0x0547
    mov ax, 0xc7                     ; 0x0548
    push ax                          ; 0x054b
    mov ax, 0                        ; 0x054c
    push ax                          ; 0x054f
    mov ax, 0x13f                    ; 0x0550
    push ax                          ; 0x0553
    mov ax, 0                        ; 0x0554
    push ax                          ; 0x0557
    mov ax, 0x14                     ; 0x0558
    sub ax, word [data_9436]         ; 0x055b
    add ax, strict word 0x19         ; 0x055f
    push ax                          ; 0x0562
    mov ax, 0x5a                     ; 0x0563
    push ax                          ; 0x0566
    mov ax, 0xf                      ; 0x0567
    push ax                          ; 0x056a
    call ds_dispatch_efd1            ; 0x056b
    add sp, byte 0x16                ; 0x056e
    ret                              ; 0x0571
api_idx_007c:
    mov ax, 0xff84                   ; 0x0572
    call ds_dispatch_f40b            ; 0x0575
    mov ax, 0                        ; 0x0578
    push ax                          ; 0x057b
    push ax                          ; 0x057c
    push word [data_9418]            ; 0x057d
    push word [data_9416]            ; 0x0581
    call ds_dispatch_e942            ; 0x0585
    add sp, byte 8                   ; 0x0588
    mov ax, 0                        ; 0x058b
    push ax                          ; 0x058e
    push ax                          ; 0x058f
    push word [data_941c]            ; 0x0590
    push word [data_941a]            ; 0x0594
    call ds_dispatch_e942            ; 0x0598
    add sp, byte 8                   ; 0x059b
    mov ax, 0x12                     ; 0x059e
    push ax                          ; 0x05a1
    mov ax, 0xe                      ; 0x05a2
    push ax                          ; 0x05a5
    push word [bp + 0x4]             ; 0x05a6
    call api_idx_0010                ; 0x05a9
    add sp, byte 6                   ; 0x05ac
    mov ax, 0                        ; 0x05af
    push ax                          ; 0x05b2
    push ax                          ; 0x05b3
    call ds_dispatch_e823            ; 0x05b4
    add sp, byte 4                   ; 0x05b7
    mov ax, 0x4c                     ; 0x05ba
    push ax                          ; 0x05bd
    mov ax, 0x248                    ; 0x05be
    imul word [bp + 0x4]             ; 0x05c1
    add ax, 0x5bf4                   ; 0x05c4
    push ax                          ; 0x05c7
    call ds_dispatch_fa90            ; 0x05c8
    pop cx                           ; 0x05cb
    mov cx, 6                        ; 0x05cc
    imul cx                          ; 0x05cf
    mov cx, data_0002                ; 0x05d1
    cwd                              ; 0x05d4
    idiv cx                          ; 0x05d5
    mov cx, ax                       ; 0x05d7
    mov ax, 0x28                     ; 0x05d9
    sub ax, cx                       ; 0x05dc
    push ax                          ; 0x05de
    call ds_dispatch_e809            ; 0x05df
    add sp, byte 4                   ; 0x05e2
    mov ax, 0                        ; 0x05e5
    push ax                          ; 0x05e8
    mov ax, 0x248                    ; 0x05e9
    imul word [bp + 0x4]             ; 0x05ec
    add ax, 0x5bf4                   ; 0x05ef
    push ax                          ; 0x05f2
    call ds_dispatch_e84e            ; 0x05f3
    add sp, byte 4                   ; 0x05f6
    mov ax, 0                        ; 0x05f9
    push ax                          ; 0x05fc
    mov ax, 1                        ; 0x05fd
    push ax                          ; 0x0600
    call ds_dispatch_e823            ; 0x0601
    add sp, byte 4                   ; 0x0604
    mov ax, 6                        ; 0x0607
    push ax                          ; 0x060a
    mov ax, 0x5a                     ; 0x060b
    push ax                          ; 0x060e
    call ds_dispatch_e809            ; 0x060f
    add sp, byte 4                   ; 0x0612
    lea ax, word [bp - 0x0058]       ; 0x0615
    push ax                          ; 0x0618
    mov ax, 0x248                    ; 0x0619
    imul word [bp + 0x4]             ; 0x061c
    mov bx, ax                       ; 0x061f
    mov al, byte [bx + 0x5e2c]       ; 0x0621
    sub ah, ah                       ; 0x0625
    add ax, 0x8c                     ; 0x0627
    push ax                          ; 0x062a
    call ds_dispatch_b53b            ; 0x062b
    add sp, byte 4                   ; 0x062e
    mov ax, 0                        ; 0x0631
    push ax                          ; 0x0634
    mov al, byte [bp - 0x0058]       ; 0x0635
    sub ah, ah                       ; 0x0638
    push ax                          ; 0x063a
    call ds_dispatch_e830            ; 0x063b
    add sp, byte 4                   ; 0x063e
    mov ax, 0                        ; 0x0641
    push ax                          ; 0x0644
    mov ax, 0x2d                     ; 0x0645
    push ax                          ; 0x0648
    call ds_dispatch_e830            ; 0x0649
    add sp, byte 4                   ; 0x064c
    lea ax, word [bp - 0x0058]       ; 0x064f
    push ax                          ; 0x0652
    mov ax, 0x248                    ; 0x0653
    imul word [bp + 0x4]             ; 0x0656
    mov bx, ax                       ; 0x0659
    mov al, byte [bx + 0x5e2b]       ; 0x065b
    sub ah, ah                       ; 0x065f
    add ax, strict word 0x64         ; 0x0661
    push ax                          ; 0x0664
    call ds_dispatch_b53b            ; 0x0665
    add sp, byte 4                   ; 0x0668
    mov ax, 0                        ; 0x066b
    push ax                          ; 0x066e
    lea ax, word [bp - 0x0058]       ; 0x066f
    push ax                          ; 0x0672
    call ds_dispatch_e84e            ; 0x0673
    add sp, byte 4                   ; 0x0676
    mov ax, 0                        ; 0x0679
    push ax                          ; 0x067c
    mov ax, 0x84                     ; 0x067d
    push ax                          ; 0x0680
    call ds_dispatch_e823            ; 0x0681
    add sp, byte 4                   ; 0x0684
    mov ax, 0xc                      ; 0x0687
    push ax                          ; 0x068a
    mov ax, 0x5a                     ; 0x068b
    push ax                          ; 0x068e
    call ds_dispatch_e809            ; 0x068f
    add sp, byte 4                   ; 0x0692
    lea ax, word [bp - 0x0058]       ; 0x0695
    push ax                          ; 0x0698
    mov ax, 0x248                    ; 0x0699
    imul word [bp + 0x4]             ; 0x069c
    mov bx, ax                       ; 0x069f
    mov al, byte [bx + 0x5e2d]       ; 0x06a1
    sub ah, ah                       ; 0x06a5
    add ax, strict word 0x78         ; 0x06a7
    push ax                          ; 0x06aa
    call ds_dispatch_b53b            ; 0x06ab
    add sp, byte 4                   ; 0x06ae
    mov ax, 0                        ; 0x06b1
    push ax                          ; 0x06b4
    lea ax, word [bp - 0x0058]       ; 0x06b5
    push ax                          ; 0x06b8
    call ds_dispatch_e84e            ; 0x06b9
    add sp, byte 4                   ; 0x06bc
    mov ax, 0x12                     ; 0x06bf
    push ax                          ; 0x06c2
    mov ax, 0x5a                     ; 0x06c3
    push ax                          ; 0x06c6
    call ds_dispatch_e809            ; 0x06c7
    add sp, byte 4                   ; 0x06ca
    lea ax, word [bp - 0x0058]       ; 0x06cd
    push ax                          ; 0x06d0
    mov ax, 0xc8                     ; 0x06d1
    push ax                          ; 0x06d4
    call ds_dispatch_b53b            ; 0x06d5
    add sp, byte 4                   ; 0x06d8
    mov ax, 0                        ; 0x06db
    push ax                          ; 0x06de
    lea ax, word [bp - 0x0058]       ; 0x06df
    push ax                          ; 0x06e2
    call ds_dispatch_e84e            ; 0x06e3
    add sp, byte 4                   ; 0x06e6
    mov ax, 0                        ; 0x06e9
    push ax                          ; 0x06ec
    mov ax, 4                        ; 0x06ed
    push ax                          ; 0x06f0
    mov ax, 0x248                    ; 0x06f1
    imul word [bp + 0x4]             ; 0x06f4
    mov bx, ax                       ; 0x06f7
    push word [bx + 0x5c18]          ; 0x06f9
    call ds_dispatch_b2e7            ; 0x06fd
    add sp, byte 6                   ; 0x0700
    mov ax, 0x248                    ; 0x0703
    imul word [bp + 0x4]             ; 0x0706
    mov bx, ax                       ; 0x0709
    mov ax, word [bx + 0x5bfc]       ; 0x070b
    mov dx, word [bx + 0x5bfe]       ; 0x070f
    mov cx, 0x16d                    ; 0x0713
    mov bx, 0                        ; 0x0716
    call ds_dispatch_f99f            ; 0x0719
    add ax, strict word 0xffee       ; 0x071c
    adc dx, byte 0xff                ; 0x071f
    mov cx, 4                        ; 0x0722
    mov bx, 0                        ; 0x0725
    call ds_dispatch_f99f            ; 0x0728
    push ax                          ; 0x072b
    push dx                          ; 0x072c
    mov ax, 0x248                    ; 0x072d
    imul word [bp + 0x4]             ; 0x0730
    mov bx, ax                       ; 0x0733
    mov ax, word [bx + 0x5c1a]       ; 0x0735
    cwd                              ; 0x0739
    mov cx, ax                       ; 0x073a
    mov bx, dx                       ; 0x073c
    pop dx                           ; 0x073e
    pop ax                           ; 0x073f
    add ax, cx                       ; 0x0740
    adc dx, bx                       ; 0x0742
    mov cx, ax                       ; 0x0744
    mov bx, dx                       ; 0x0746
    add ax, strict word 0xffff       ; 0x0748
    adc dx, byte 0xff                ; 0x074b
    mov cx, ax                       ; 0x074e
    mov bx, dx                       ; 0x0750
    mov ax, 0x14                     ; 0x0752
    mov dx, 0                        ; 0x0755
    sub ax, cx                       ; 0x0758
    sbb dx, bx                       ; 0x075a
    push ax                          ; 0x075c
    push dx                          ; 0x075d
    mov ax, 0x248                    ; 0x075e
    imul word [bp + 0x4]             ; 0x0761
    mov bx, ax                       ; 0x0764
    mov al, byte [bx + 0x5d67]       ; 0x0766
    sub ah, ah                       ; 0x076a
    cwd                              ; 0x076c
    mov cx, ax                       ; 0x076d
    mov bx, dx                       ; 0x076f
    pop dx                           ; 0x0771
    pop ax                           ; 0x0772
    push ax                          ; 0x0773
    push dx                          ; 0x0774
    mul bx                           ; 0x0775
    mov bx, ax                       ; 0x0777
    pop ax                           ; 0x0779
    mul cx                           ; 0x077a
    add bx, ax                       ; 0x077c
    pop ax                           ; 0x077e
    mul cx                           ; 0x077f
    add dx, bx                       ; 0x0781
    mov cx, 0x12                     ; 0x0783
    mov bx, 0                        ; 0x0786
    call ds_dispatch_f99f            ; 0x0789
    mov word [data_9436], ax         ; 0x078c
    mov ax, 0x14                     ; 0x078f
    push ax                          ; 0x0792
    mov ax, 0                        ; 0x0793
    push ax                          ; 0x0796
    push word [data_9436]            ; 0x0797
    call ds_dispatch_b7c2            ; 0x079b
    add sp, byte 6                   ; 0x079e
    mov word [data_9436], ax         ; 0x07a1
    mov ax, 0x248                    ; 0x07a4
    imul word [bp + 0x4]             ; 0x07a7
    mov bx, ax                       ; 0x07aa
    cmp byte [bx + 0x5e2f], 3        ; 0x07ac
    jae short @..api_idx_007c.l1     ; 0x07b1
    mov ax, 0                        ; 0x07b3
    jmp short @..api_idx_007c.l2     ; 0x07b6
@..api_idx_007c.l1:
    mov ax, 1                        ; 0x07b8
@..api_idx_007c.l2:
    mov word [data_9438], ax         ; 0x07bb
    mov word [data_943a], 0          ; 0x07be
    push word [data_943a]            ; 0x07c4
    call api_idx_000a                ; 0x07c8
    pop cx                           ; 0x07cb
    mov ax, 0                        ; 0x07cc
    push ax                          ; 0x07cf
    mov ax, 0x55                     ; 0x07d0
    push ax                          ; 0x07d3
    call ds_dispatch_e823            ; 0x07d4
    add sp, byte 4                   ; 0x07d7
    mov word [bp - 0x0002], 0        ; 0x07da
@..api_idx_007c.l3:
    mov ax, 6                        ; 0x07df
    imul word [bp - 0x0002]          ; 0x07e2
    add ax, strict word 0x23         ; 0x07e5
    push ax                          ; 0x07e8
    mov ax, 0x73                     ; 0x07e9
    push ax                          ; 0x07ec
    call ds_dispatch_e809            ; 0x07ed
    add sp, byte 4                   ; 0x07f0
    lea ax, word [bp - 0x0058]       ; 0x07f3
    push ax                          ; 0x07f6
    mov ax, word [bp - 0x0002]       ; 0x07f7
    add ax, 0xcc                     ; 0x07fa
    push ax                          ; 0x07fd
    call ds_dispatch_b53b            ; 0x07fe
    add sp, byte 4                   ; 0x0801
    mov ax, 0                        ; 0x0804
    push ax                          ; 0x0807
    lea ax, word [bp - 0x0058]       ; 0x0808
    push ax                          ; 0x080b
    call ds_dispatch_e84e            ; 0x080c
    add sp, byte 4                   ; 0x080f
    mov ax, 0                        ; 0x0812
    push ax                          ; 0x0815
    mov ax, 3                        ; 0x0816
    push ax                          ; 0x0819
    mov ax, 0x248                    ; 0x081a
    imul word [bp + 0x4]             ; 0x081d
    add ax, word [bp - 0x0002]       ; 0x0820
    mov bx, ax                       ; 0x0823
    mov al, byte [bx + 0x5d64]       ; 0x0825
    sub ah, ah                       ; 0x0829
    push ax                          ; 0x082b
    call ds_dispatch_b2e7            ; 0x082c
    add sp, byte 6                   ; 0x082f
    inc word [bp - 0x0002]           ; 0x0832
    mov ax, word [bp - 0x0002]       ; 0x0835
    cmp ax, strict word 8            ; 0x0838
    jl short @..api_idx_007c.l3      ; 0x083b
    mov ax, 0                        ; 0x083d
    push ax                          ; 0x0840
    mov ax, 0xfd                     ; 0x0841
    push ax                          ; 0x0844
    call ds_dispatch_e823            ; 0x0845
    add sp, byte 4                   ; 0x0848
    lea ax, word [bp - 0x0058]       ; 0x084b
    push ax                          ; 0x084e
    mov ax, 0xc9                     ; 0x084f
    push ax                          ; 0x0852
    call ds_dispatch_b53b            ; 0x0853
    add sp, byte 4                   ; 0x0856
    mov ax, 6                        ; 0x0859
    push ax                          ; 0x085c
    mov ax, 0xe4                     ; 0x085d
    push ax                          ; 0x0860
    call ds_dispatch_e809            ; 0x0861
    add sp, byte 4                   ; 0x0864
    mov ax, 0                        ; 0x0867
    push ax                          ; 0x086a
    lea ax, word [bp - 0x0058]       ; 0x086b
    push ax                          ; 0x086e
    call ds_dispatch_e84e            ; 0x086f
    add sp, byte 4                   ; 0x0872
    lea ax, word [bp - 0x0058]       ; 0x0875
    push ax                          ; 0x0878
    mov ax, 0x248                    ; 0x0879
    imul word [bp + 0x4]             ; 0x087c
    mov bx, ax                       ; 0x087f
    mov al, byte [bx + 0x5e2d]       ; 0x0881
    sub ah, ah                       ; 0x0885
    mov cx, 0xa                      ; 0x0887
    imul cx                          ; 0x088a
    push ax                          ; 0x088c
    mov al, byte [bx + 0x5e2e]       ; 0x088d
    sub ah, ah                       ; 0x0891
    mov cx, ax                       ; 0x0893
    pop ax                           ; 0x0895
    add ax, cx                       ; 0x0896
    add ax, 0x320                    ; 0x0898
    push ax                          ; 0x089b
    call ds_dispatch_b53b            ; 0x089c
    add sp, byte 4                   ; 0x089f
    mov ax, 6                        ; 0x08a2
    push ax                          ; 0x08a5
    lea ax, word [bp - 0x0058]       ; 0x08a6
    push ax                          ; 0x08a9
    call ds_dispatch_fa90            ; 0x08aa
    pop cx                           ; 0x08ad
    mov cx, 0x34                     ; 0x08ae
    sub cx, ax                       ; 0x08b1
    mov ax, 6                        ; 0x08b3
    imul cx                          ; 0x08b6
    push ax                          ; 0x08b8
    call ds_dispatch_e809            ; 0x08b9
    add sp, byte 4                   ; 0x08bc
    mov ax, 0                        ; 0x08bf
    push ax                          ; 0x08c2
    lea ax, word [bp - 0x0058]       ; 0x08c3
    push ax                          ; 0x08c6
    call ds_dispatch_e84e            ; 0x08c7
    add sp, byte 4                   ; 0x08ca
    mov ax, 0                        ; 0x08cd
    push ax                          ; 0x08d0
    mov ax, 0x47                     ; 0x08d1
    push ax                          ; 0x08d4
    call ds_dispatch_e823            ; 0x08d5
    add sp, byte 4                   ; 0x08d8
    lea ax, word [bp - 0x0058]       ; 0x08db
    push ax                          ; 0x08de
    mov ax, 0xca                     ; 0x08df
    push ax                          ; 0x08e2
    call ds_dispatch_b53b            ; 0x08e3
    add sp, byte 4                   ; 0x08e6
    mov ax, 0xc                      ; 0x08e9
    push ax                          ; 0x08ec
    mov ax, 0xe4                     ; 0x08ed
    push ax                          ; 0x08f0
    call ds_dispatch_e809            ; 0x08f1
    add sp, byte 4                   ; 0x08f4
    mov ax, 0                        ; 0x08f7
    push ax                          ; 0x08fa
    lea ax, word [bp - 0x0058]       ; 0x08fb
    push ax                          ; 0x08fe
    call ds_dispatch_e84e            ; 0x08ff
    add sp, byte 4                   ; 0x0902
    mov ax, 0                        ; 0x0905
    push ax                          ; 0x0908
    mov ax, 0x20                     ; 0x0909
    push ax                          ; 0x090c
    call ds_dispatch_e830            ; 0x090d
    add sp, byte 4                   ; 0x0910
    mov ax, 0                        ; 0x0913
    push ax                          ; 0x0916
    mov ax, 0xa                      ; 0x0917
    push ax                          ; 0x091a
    mov ax, 0x248                    ; 0x091b
    imul word [bp + 0x4]             ; 0x091e
    mov bx, ax                       ; 0x0921
    push word [bx + 0x5c02]          ; 0x0923
    push word [bx + 0x5c00]          ; 0x0927
    call ds_dispatch_b293            ; 0x092b
    add sp, byte 8                   ; 0x092e
    lea ax, word [bp - 0x0058]       ; 0x0931
    push ax                          ; 0x0934
    mov ax, 0xcb                     ; 0x0935
    push ax                          ; 0x0938
    call ds_dispatch_b53b            ; 0x0939
    add sp, byte 4                   ; 0x093c
    mov ax, 0x12                     ; 0x093f
    push ax                          ; 0x0942
    mov ax, 0xe4                     ; 0x0943
    push ax                          ; 0x0946
    call ds_dispatch_e809            ; 0x0947
    add sp, byte 4                   ; 0x094a
    mov ax, 0                        ; 0x094d
    push ax                          ; 0x0950
    lea ax, word [bp - 0x0058]       ; 0x0951
    push ax                          ; 0x0954
    call ds_dispatch_e84e            ; 0x0955
    add sp, byte 4                   ; 0x0958
    mov ax, 0                        ; 0x095b
    push ax                          ; 0x095e
    mov ax, 0x20                     ; 0x095f
    push ax                          ; 0x0962
    call ds_dispatch_e830            ; 0x0963
    add sp, byte 4                   ; 0x0966
    mov ax, 0                        ; 0x0969
    push ax                          ; 0x096c
    mov ax, 0xa                      ; 0x096d
    push ax                          ; 0x0970
    mov ax, 0x248                    ; 0x0971
    imul word [bp + 0x4]             ; 0x0974
    mov bx, ax                       ; 0x0977
    push word [bx + 0x5c06]          ; 0x0979
    push word [bx + 0x5c04]          ; 0x097d
    call ds_dispatch_b293            ; 0x0981
    add sp, byte 8                   ; 0x0984
    mov ax, 0                        ; 0x0987
    push ax                          ; 0x098a
    mov ax, 0x1d                     ; 0x098b
    push ax                          ; 0x098e
    call ds_dispatch_e823            ; 0x098f
    add sp, byte 4                   ; 0x0992
    lea ax, word [bp - 0x0058]       ; 0x0995
    push ax                          ; 0x0998
    mov ax, 0xd4                     ; 0x0999
    push ax                          ; 0x099c
    call ds_dispatch_b53b            ; 0x099d
    add sp, byte 4                   ; 0x09a0
    mov ax, 0x5d                     ; 0x09a3
    push ax                          ; 0x09a6
    mov ax, 6                        ; 0x09a7
    push ax                          ; 0x09aa
    call ds_dispatch_e809            ; 0x09ab
    add sp, byte 4                   ; 0x09ae
    mov ax, 0                        ; 0x09b1
    push ax                          ; 0x09b4
    lea ax, word [bp - 0x0058]       ; 0x09b5
    push ax                          ; 0x09b8
    call ds_dispatch_e84e            ; 0x09b9
    add sp, byte 4                   ; 0x09bc
    mov ax, 0                        ; 0x09bf
    push ax                          ; 0x09c2
    mov ax, 0x20                     ; 0x09c3
    push ax                          ; 0x09c6
    call ds_dispatch_e830            ; 0x09c7
    add sp, byte 4                   ; 0x09ca
    mov ax, 0                        ; 0x09cd
    push ax                          ; 0x09d0
    mov ax, 0x1b                     ; 0x09d1
    push ax                          ; 0x09d4
    call ds_dispatch_e823            ; 0x09d5
    add sp, byte 4                   ; 0x09d8
    lea ax, word [bp - 0x0058]       ; 0x09db
    push ax                          ; 0x09de
    mov ax, 0x248                    ; 0x09df
    imul word [bp + 0x4]             ; 0x09e2
    mov bx, ax                       ; 0x09e5
    push word [bx + 0x5c0c]          ; 0x09e7
    call ds_dispatch_b27d            ; 0x09eb
    add sp, byte 4                   ; 0x09ee
    mov ax, 0                        ; 0x09f1
    push ax                          ; 0x09f4
    lea ax, word [bp - 0x0058]       ; 0x09f5
    push ax                          ; 0x09f8
    call ds_dispatch_e84e            ; 0x09f9
    add sp, byte 4                   ; 0x09fc
    mov ax, 0                        ; 0x09ff
    push ax                          ; 0x0a02
    mov ax, 0x2f                     ; 0x0a03
    push ax                          ; 0x0a06
    call ds_dispatch_e830            ; 0x0a07
    add sp, byte 4                   ; 0x0a0a
    lea ax, word [bp - 0x0058]       ; 0x0a0d
    push ax                          ; 0x0a10
    mov ax, 0x248                    ; 0x0a11
    imul word [bp + 0x4]             ; 0x0a14
    mov bx, ax                       ; 0x0a17
    push word [bx + 0x5c0e]          ; 0x0a19
    call ds_dispatch_b27d            ; 0x0a1d
    add sp, byte 4                   ; 0x0a20
    mov ax, 0                        ; 0x0a23
    push ax                          ; 0x0a26
    lea ax, word [bp - 0x0058]       ; 0x0a27
    push ax                          ; 0x0a2a
    call ds_dispatch_e84e            ; 0x0a2b
    add sp, byte 4                   ; 0x0a2e
    mov ax, 0                        ; 0x0a31
    push ax                          ; 0x0a34
    mov ax, 0x1d                     ; 0x0a35
    push ax                          ; 0x0a38
    call ds_dispatch_e823            ; 0x0a39
    add sp, byte 4                   ; 0x0a3c
    lea ax, word [bp - 0x0058]       ; 0x0a3f
    push ax                          ; 0x0a42
    mov ax, 0xd5                     ; 0x0a43
    push ax                          ; 0x0a46
    call ds_dispatch_b53b            ; 0x0a47
    add sp, byte 4                   ; 0x0a4a
    mov ax, 0x63                     ; 0x0a4d
    push ax                          ; 0x0a50
    mov ax, 6                        ; 0x0a51
    push ax                          ; 0x0a54
    call ds_dispatch_e809            ; 0x0a55
    add sp, byte 4                   ; 0x0a58
    mov ax, 0                        ; 0x0a5b
    push ax                          ; 0x0a5e
    lea ax, word [bp - 0x0058]       ; 0x0a5f
    push ax                          ; 0x0a62
    call ds_dispatch_e84e            ; 0x0a63
    add sp, byte 4                   ; 0x0a66
    mov ax, 0                        ; 0x0a69
    push ax                          ; 0x0a6c
    mov ax, 0x20                     ; 0x0a6d
    push ax                          ; 0x0a70
    call ds_dispatch_e830            ; 0x0a71
    add sp, byte 4                   ; 0x0a74
    mov ax, 0                        ; 0x0a77
    push ax                          ; 0x0a7a
    mov ax, 0x1b                     ; 0x0a7b
    push ax                          ; 0x0a7e
    call ds_dispatch_e823            ; 0x0a7f
    add sp, byte 4                   ; 0x0a82
    mov ax, 0x248                    ; 0x0a85
    imul word [bp + 0x4]             ; 0x0a88
    mov bx, ax                       ; 0x0a8b
    mov ax, word [bx + 0x5c10]       ; 0x0a8d
    mov cx, 0x64                     ; 0x0a91
    imul cx                          ; 0x0a94
    mov cx, word [bx + 0x5c12]       ; 0x0a96
    cwd                              ; 0x0a9a
    idiv cx                          ; 0x0a9b
    mov word [bp - 0x0008], ax       ; 0x0a9d
    cmp ax, strict word 1            ; 0x0aa0
    jge short @..api_idx_007c.l4     ; 0x0aa3
    cmp word [bx + 0x5c10], byte 0   ; 0x0aa5
    jle short @..api_idx_007c.l4     ; 0x0aaa
    mov ax, 1                        ; 0x0aac
    jmp short @..api_idx_007c.l5     ; 0x0aaf
@..api_idx_007c.l4:
    mov ax, word [bp - 0x0008]       ; 0x0ab1
@..api_idx_007c.l5:
    mov word [bp - 0x0008], ax       ; 0x0ab4
    lea ax, word [bp - 0x0058]       ; 0x0ab7
    push ax                          ; 0x0aba
    push word [bp - 0x0008]          ; 0x0abb
    call ds_dispatch_b27d            ; 0x0abe
    add sp, byte 4                   ; 0x0ac1
    mov ax, 0                        ; 0x0ac4
    push ax                          ; 0x0ac7
    lea ax, word [bp - 0x0058]       ; 0x0ac8
    push ax                          ; 0x0acb
    call ds_dispatch_e84e            ; 0x0acc
    add sp, byte 4                   ; 0x0acf
    mov ax, 0                        ; 0x0ad2
    push ax                          ; 0x0ad5
    mov ax, 0x9098                   ; 0x0ad6
    push ax                          ; 0x0ad9
    call ds_dispatch_e84e            ; 0x0ada
    add sp, byte 4                   ; 0x0add
    mov ax, 0                        ; 0x0ae0
    push ax                          ; 0x0ae3
    mov ax, 0x1d                     ; 0x0ae4
    push ax                          ; 0x0ae7
    call ds_dispatch_e823            ; 0x0ae8
    add sp, byte 4                   ; 0x0aeb
    mov ax, 0                        ; 0x0aee
    push ax                          ; 0x0af1
    mov ax, 0x28                     ; 0x0af2
    push ax                          ; 0x0af5
    call ds_dispatch_e830            ; 0x0af6
    add sp, byte 4                   ; 0x0af9
    lea ax, word [bp - 0x0058]       ; 0x0afc
    push ax                          ; 0x0aff
    mov ax, 0x248                    ; 0x0b00
    imul word [bp + 0x4]             ; 0x0b03
    mov bx, ax                       ; 0x0b06
    push word [bx + 0x5c12]          ; 0x0b08
    call ds_dispatch_b27d            ; 0x0b0c
    add sp, byte 4                   ; 0x0b0f
    mov ax, 0                        ; 0x0b12
    push ax                          ; 0x0b15
    lea ax, word [bp - 0x0058]       ; 0x0b16
    push ax                          ; 0x0b19
    call ds_dispatch_e84e            ; 0x0b1a
    add sp, byte 4                   ; 0x0b1d
    mov ax, 0                        ; 0x0b20
    push ax                          ; 0x0b23
    mov ax, 0x29                     ; 0x0b24
    push ax                          ; 0x0b27
    call ds_dispatch_e830            ; 0x0b28
    add sp, byte 4                   ; 0x0b2b
    mov ax, 0                        ; 0x0b2e
    push ax                          ; 0x0b31
    mov ax, 0xc4                     ; 0x0b32
    push ax                          ; 0x0b35
    call ds_dispatch_e823            ; 0x0b36
    add sp, byte 4                   ; 0x0b39
    lea ax, word [bp - 0x0058]       ; 0x0b3c
    push ax                          ; 0x0b3f
    mov ax, 0xd6                     ; 0x0b40
    push ax                          ; 0x0b43
    call ds_dispatch_b53b            ; 0x0b44
    add sp, byte 4                   ; 0x0b47
    mov ax, 0x5d                     ; 0x0b4a
    push ax                          ; 0x0b4d
    mov ax, 0x5b                     ; 0x0b4e
    push ax                          ; 0x0b51
    call ds_dispatch_e809            ; 0x0b52
    add sp, byte 4                   ; 0x0b55
    mov ax, 0                        ; 0x0b58
    push ax                          ; 0x0b5b
    lea ax, word [bp - 0x0058]       ; 0x0b5c
    push ax                          ; 0x0b5f
    call ds_dispatch_e84e            ; 0x0b60
    add sp, byte 4                   ; 0x0b63
    mov ax, 0                        ; 0x0b66
    push ax                          ; 0x0b69
    mov ax, 0x20                     ; 0x0b6a
    push ax                          ; 0x0b6d
    call ds_dispatch_e830            ; 0x0b6e
    add sp, byte 4                   ; 0x0b71
    lea ax, word [bp - 0x0058]       ; 0x0b74
    push ax                          ; 0x0b77
    mov ax, 0x248                    ; 0x0b78
    imul word [bp + 0x4]             ; 0x0b7b
    mov bx, ax                       ; 0x0b7e
    push word [bx + 0x5c0a]          ; 0x0b80
    push word [bx + 0x5c08]          ; 0x0b84
    call ds_dispatch_b1db            ; 0x0b88
    add sp, byte 6                   ; 0x0b8b
    mov ax, 0                        ; 0x0b8e
    push ax                          ; 0x0b91
    lea ax, word [bp - 0x0058]       ; 0x0b92
    push ax                          ; 0x0b95
    call ds_dispatch_e84e            ; 0x0b96
    add sp, byte 4                   ; 0x0b99
    push word [bp + 0x4]             ; 0x0b9c
    call ds_dispatch_c58f            ; 0x0b9f
    pop cx                           ; 0x0ba2
    push word [bp + 0x4]             ; 0x0ba3
    call api_idx_0012                ; 0x0ba6
    pop cx                           ; 0x0ba9
    mov si, ax                       ; 0x0baa
    lea di, word [bp - 0x007c]       ; 0x0bac
    mov cx, ds                       ; 0x0baf
    mov es, cx                       ; 0x0bb1
    mov cx, 7                        ; 0x0bb3
    rep movsw                        ; 0x0bb6
    mov al, byte [bp - 0x0072]       ; 0x0bb8
    push ax                          ; 0x0bbb
    mov ax, 0x248                    ; 0x0bbc
    imul word [bp + 0x4]             ; 0x0bbf
    mov bx, ax                       ; 0x0bc2
    pop ax                           ; 0x0bc4
    mov byte [bx + 0x5e33], al       ; 0x0bc5
    mov ax, 0                        ; 0x0bc9
    push ax                          ; 0x0bcc
    push word [bp - 0x0070]          ; 0x0bcd
    call ds_dispatch_e823            ; 0x0bd0
    add sp, byte 4                   ; 0x0bd3
    lea ax, word [bp - 0x0058]       ; 0x0bd6
    push ax                          ; 0x0bd9
    mov ax, 0xd7                     ; 0x0bda
    push ax                          ; 0x0bdd
    call ds_dispatch_b53b            ; 0x0bde
    add sp, byte 4                   ; 0x0be1
    mov ax, 0x63                     ; 0x0be4
    push ax                          ; 0x0be7
    mov ax, 0x5b                     ; 0x0be8
    push ax                          ; 0x0beb
    call ds_dispatch_e809            ; 0x0bec
    add sp, byte 4                   ; 0x0bef
    mov ax, 0                        ; 0x0bf2
    push ax                          ; 0x0bf5
    lea ax, word [bp - 0x0058]       ; 0x0bf6
    push ax                          ; 0x0bf9
    call ds_dispatch_e84e            ; 0x0bfa
    add sp, byte 4                   ; 0x0bfd
    mov ax, 0                        ; 0x0c00
    push ax                          ; 0x0c03
    mov ax, 0x20                     ; 0x0c04
    push ax                          ; 0x0c07
    call ds_dispatch_e830            ; 0x0c08
    add sp, byte 4                   ; 0x0c0b
    lea ax, word [bp - 0x0058]       ; 0x0c0e
    push ax                          ; 0x0c11
    mov ax, 0x248                    ; 0x0c12
    imul word [bp + 0x4]             ; 0x0c15
    mov bx, ax                       ; 0x0c18
    mov ax, word [bx + 0x5c14]       ; 0x0c1a
    mov cx, 0xa                      ; 0x0c1e
    cwd                              ; 0x0c21
    idiv cx                          ; 0x0c22
    push ax                          ; 0x0c24
    call ds_dispatch_b27d            ; 0x0c25
    add sp, byte 4                   ; 0x0c28
    mov ax, 0                        ; 0x0c2b
    push ax                          ; 0x0c2e
    lea ax, word [bp - 0x0058]       ; 0x0c2f
    push ax                          ; 0x0c32
    call ds_dispatch_e84e            ; 0x0c33
    add sp, byte 4                   ; 0x0c36
    mov ax, 0                        ; 0x0c39
    push ax                          ; 0x0c3c
    mov ax, 0x2f                     ; 0x0c3d
    push ax                          ; 0x0c40
    call ds_dispatch_e830            ; 0x0c41
    add sp, byte 4                   ; 0x0c44
    lea ax, word [bp - 0x0058]       ; 0x0c47
    push ax                          ; 0x0c4a
    mov ax, 0x248                    ; 0x0c4b
    imul word [bp + 0x4]             ; 0x0c4e
    mov bx, ax                       ; 0x0c51
    mov ax, word [bx + 0x5c16]       ; 0x0c53
    mov cx, 0xa                      ; 0x0c57
    cwd                              ; 0x0c5a
    idiv cx                          ; 0x0c5b
    push ax                          ; 0x0c5d
    call ds_dispatch_b27d            ; 0x0c5e
    add sp, byte 4                   ; 0x0c61
    mov ax, 0                        ; 0x0c64
    push ax                          ; 0x0c67
    lea ax, word [bp - 0x0058]       ; 0x0c68
    push ax                          ; 0x0c6b
    call ds_dispatch_e84e            ; 0x0c6c
    add sp, byte 4                   ; 0x0c6f
    push word [bp + 0x4]             ; 0x0c72
    call api_idx_0004                ; 0x0c75
    pop cx                           ; 0x0c78
    mov word [bp - 0x0004], 0        ; 0x0c79
    mov ax, 0x248                    ; 0x0c7e
    imul word [bp + 0x4]             ; 0x0c81
    mov bx, ax                       ; 0x0c84
    mov al, byte [bx + 0x5e2f]       ; 0x0c86
    sub ah, ah                       ; 0x0c8a
    shl ax, 1                        ; 0x0c8c
    mov bx, ax                       ; 0x0c8e
    mov ax, word [bx + 0x920]        ; 0x0c90
    mov word [bp - 0x0006], ax       ; 0x0c94
    cmp ax, strict word 0xffff       ; 0x0c97
    jne short @..api_idx_007c.l6     ; 0x0c9a
    mov ax, 0x248                    ; 0x0c9c
    imul word [bp + 0x4]             ; 0x0c9f
    mov bx, ax                       ; 0x0ca2
    cmp byte [bx + 0x5d5c], 0        ; 0x0ca4
    jbe short @..api_idx_007c.l6     ; 0x0ca9
    mov ax, 0                        ; 0x0cab
    jmp short @..api_idx_007c.l7     ; 0x0cae
@..api_idx_007c.l6:
    mov ax, word [bp - 0x0006]       ; 0x0cb0
@..api_idx_007c.l7:
    mov word [bp - 0x0006], ax       ; 0x0cb3
    cmp ax, strict word 0            ; 0x0cb6
    jg short @..api_idx_007c.l8      ; 0x0cb9
    mov ax, 0x248                    ; 0x0cbb
    imul word [bp + 0x4]             ; 0x0cbe
    mov bx, ax                       ; 0x0cc1
    cmp byte [bx + 0x5d5d], 0        ; 0x0cc3
    jbe short @..api_idx_007c.l8     ; 0x0cc8
    mov ax, 1                        ; 0x0cca
    jmp short @..api_idx_007c.l9     ; 0x0ccd
@..api_idx_007c.l8:
    mov ax, word [bp - 0x0006]       ; 0x0ccf
@..api_idx_007c.l9:
    mov word [bp - 0x0006], ax       ; 0x0cd2
    cmp ax, strict word 0xffff       ; 0x0cd5
    je short @..api_idx_007c.l10     ; 0x0cd8
    mov ax, 0x2d                     ; 0x0cda
    push ax                          ; 0x0cdd
    mov ax, 0x51                     ; 0x0cde
    push ax                          ; 0x0ce1
    call ds_dispatch_e809            ; 0x0ce2
    add sp, byte 4                   ; 0x0ce5
    mov ax, 6                        ; 0x0ce8
    push ax                          ; 0x0ceb
    mov al, byte [bp - 0x0006]       ; 0x0cec
    sub ah, ah                       ; 0x0cef
    push ax                          ; 0x0cf1
    call ds_dispatch_e830            ; 0x0cf2
    add sp, byte 4                   ; 0x0cf5
    inc word [bp - 0x0004]           ; 0x0cf8
@..api_idx_007c.l10:
    mov word [bp - 0x006e], 6        ; 0x0cfb
    mov word [bp - 0x006c], 7        ; 0x0d00
    mov word [bp - 0x006a], 5        ; 0x0d05
    mov word [bp - 0x0068], 4        ; 0x0d0a
    mov word [bp - 0x0066], 8        ; 0x0d0f
    mov word [bp - 0x0064], 9        ; 0x0d14
    mov word [bp - 0x0062], 1        ; 0x0d19
    mov word [bp - 0x0006], 0xffff   ; 0x0d1e
    mov word [bp - 0x0002], 0        ; 0x0d23
@..api_idx_007c.l11:
    mov ax, word [bp - 0x0002]       ; 0x0d28
    shl ax, 1                        ; 0x0d2b
    mov bx, ax                       ; 0x0d2d
    add bx, bp                       ; 0x0d2f
    mov ax, word [bx - 0x006e]       ; 0x0d31
    mov word [bp - 0x0008], ax       ; 0x0d34
    cmp word [bp - 0x0004], byte 6   ; 0x0d37
    jge short @..api_idx_007c.l12    ; 0x0d3b
    shl ax, 1                        ; 0x0d3d
    mov bx, ax                       ; 0x0d3f
    mov ax, word [bx + 0x92c]        ; 0x0d41
    cmp ax, word [bp - 0x0006]       ; 0x0d45
    je short @..api_idx_007c.l12     ; 0x0d48
    mov ax, 0x248                    ; 0x0d4a
    imul word [bp + 0x4]             ; 0x0d4d
    add ax, word [bp - 0x0008]       ; 0x0d50
    mov bx, ax                       ; 0x0d53
    cmp byte [bx + 0x5d5a], 0        ; 0x0d55
    jbe short @..api_idx_007c.l12    ; 0x0d5a
    mov ax, word [bp - 0x0004]       ; 0x0d5c
    mov cx, 3                        ; 0x0d5f
    cwd                              ; 0x0d62
    idiv cx                          ; 0x0d63
    mov ax, dx                       ; 0x0d65
    mov cx, 0xb                      ; 0x0d67
    imul cx                          ; 0x0d6a
    add ax, strict word 0x2d         ; 0x0d6c
    push ax                          ; 0x0d6f
    mov ax, word [bp - 0x0004]       ; 0x0d70
    mov cx, 3                        ; 0x0d73
    cwd                              ; 0x0d76
    idiv cx                          ; 0x0d77
    mov cx, 0x17                     ; 0x0d79
    imul cx                          ; 0x0d7c
    add ax, strict word 0x51         ; 0x0d7e
    push ax                          ; 0x0d81
    call ds_dispatch_e809            ; 0x0d82
    add sp, byte 4                   ; 0x0d85
    mov ax, 6                        ; 0x0d88
    push ax                          ; 0x0d8b
    mov ax, word [bp - 0x0008]       ; 0x0d8c
    shl ax, 1                        ; 0x0d8f
    mov bx, ax                       ; 0x0d91
    mov al, byte [bx + 0x92c]        ; 0x0d93
    sub ah, ah                       ; 0x0d97
    push ax                          ; 0x0d99
    call ds_dispatch_e830            ; 0x0d9a
    add sp, byte 4                   ; 0x0d9d
    mov ax, word [bp - 0x0008]       ; 0x0da0
    shl ax, 1                        ; 0x0da3
    mov bx, ax                       ; 0x0da5
    mov ax, word [bx + 0x92c]        ; 0x0da7
    mov word [bp - 0x0006], ax       ; 0x0dab
    inc word [bp - 0x0004]           ; 0x0dae
@..api_idx_007c.l12:
    inc word [bp - 0x0002]           ; 0x0db1
    mov ax, word [bp - 0x0002]       ; 0x0db4
    cmp ax, strict word 7            ; 0x0db7
    jge short @..api_idx_007c.l13    ; 0x0dba
    jmp near @..api_idx_007c.l11     ; 0x0dbc
@..api_idx_007c.l13:
    ret                              ; 0x0dbf
loc_0dc0:
    mov ax, 0                        ; 0x0dc0
    call ds_dispatch_f40b            ; 0x0dc3
    push word [bp + 0xc]             ; 0x0dc6
    mov ax, word [bp + 0x6]          ; 0x0dc9
    dec ax                           ; 0x0dcc
    push ax                          ; 0x0dcd
    mov ax, word [bp + 0x8]          ; 0x0dce
    inc ax                           ; 0x0dd1
    push ax                          ; 0x0dd2
    mov ax, word [bp + 0x6]          ; 0x0dd3
    dec ax                           ; 0x0dd6
    push ax                          ; 0x0dd7
    mov ax, word [bp + 0x4]          ; 0x0dd8
    dec ax                           ; 0x0ddb
    push ax                          ; 0x0ddc
    call ds_dispatch_e901            ; 0x0ddd
    add sp, byte 0x0a                ; 0x0de0
    push word [bp + 0xc]             ; 0x0de3
    mov ax, word [bp + 0xa]          ; 0x0de6
    inc ax                           ; 0x0de9
    push ax                          ; 0x0dea
    mov ax, word [bp + 0x8]          ; 0x0deb
    inc ax                           ; 0x0dee
    push ax                          ; 0x0def
    mov ax, word [bp + 0x6]          ; 0x0df0
    dec ax                           ; 0x0df3
    push ax                          ; 0x0df4
    mov ax, word [bp + 0x8]          ; 0x0df5
    inc ax                           ; 0x0df8
    push ax                          ; 0x0df9
    call ds_dispatch_e901            ; 0x0dfa
    add sp, byte 0x0a                ; 0x0dfd
    push word [bp + 0xc]             ; 0x0e00
    mov ax, word [bp + 0xa]          ; 0x0e03
    inc ax                           ; 0x0e06
    push ax                          ; 0x0e07
    mov ax, word [bp + 0x8]          ; 0x0e08
    inc ax                           ; 0x0e0b
    push ax                          ; 0x0e0c
    mov ax, word [bp + 0xa]          ; 0x0e0d
    inc ax                           ; 0x0e10
    push ax                          ; 0x0e11
    mov ax, word [bp + 0x4]          ; 0x0e12
    dec ax                           ; 0x0e15
    push ax                          ; 0x0e16
    call ds_dispatch_e901            ; 0x0e17
    add sp, byte 0x0a                ; 0x0e1a
    push word [bp + 0xc]             ; 0x0e1d
    mov ax, word [bp + 0xa]          ; 0x0e20
    inc ax                           ; 0x0e23
    push ax                          ; 0x0e24
    mov ax, word [bp + 0x4]          ; 0x0e25
    dec ax                           ; 0x0e28
    push ax                          ; 0x0e29
    mov ax, word [bp + 0x6]          ; 0x0e2a
    dec ax                           ; 0x0e2d
    push ax                          ; 0x0e2e
    mov ax, word [bp + 0x4]          ; 0x0e2f
    dec ax                           ; 0x0e32
    push ax                          ; 0x0e33
    call ds_dispatch_e901            ; 0x0e34
    add sp, byte 0x0a                ; 0x0e37
    ret                              ; 0x0e3a
api_idx_0004_2:
    mov ax, 0xfffc                   ; 0x0e3b
    call ds_dispatch_f40b            ; 0x0e3e
    mov word [bp - 0x0004], 0        ; 0x0e41
    mov word [bp - 0x0002], 0        ; 0x0e46
@..api_idx_0004_2.l1:
    mov ax, 6                        ; 0x0e4b
    imul word [bp - 0x0002]          ; 0x0e4e
    mov bx, ax                       ; 0x0e51
    mov al, byte [bx + 0x620]        ; 0x0e53
    sub ah, ah                       ; 0x0e57
    cmp ax, word [bp + 0x6]          ; 0x0e59
    jne short @..api_idx_0004_2.l2   ; 0x0e5c
    push word [bp - 0x0002]          ; 0x0e5e
    mov ax, 0x248                    ; 0x0e61
    imul word [bp + 0x4]             ; 0x0e64
    add ax, 0x5e12                   ; 0x0e67
    push ax                          ; 0x0e6a
    call ds_dispatch_ec74            ; 0x0e6b
    add sp, byte 4                   ; 0x0e6e
    test ax, ax                      ; 0x0e71
    je short @..api_idx_0004_2.l2    ; 0x0e73
    mov ax, 0x14                     ; 0x0e75
    imul word [bp - 0x0004]          ; 0x0e78
    add ax, 0xe38                    ; 0x0e7b
    push ax                          ; 0x0e7e
    mov ax, word [bp - 0x0002]       ; 0x0e7f
    add ax, 0xfa0                    ; 0x0e82
    push ax                          ; 0x0e85
    call ds_dispatch_b53b            ; 0x0e86
    add sp, byte 4                   ; 0x0e89
    mov ax, word [bp - 0x0002]       ; 0x0e8c
    mov cx, word [bp - 0x0004]       ; 0x0e8f
    shl cx, 1                        ; 0x0e92
    mov bx, cx                       ; 0x0e94
    mov word [bx - 0x6bc4], ax       ; 0x0e96
    inc word [bp - 0x0004]           ; 0x0e9a
@..api_idx_0004_2.l2:
    inc word [bp - 0x0002]           ; 0x0e9d
    mov ax, word [bp - 0x0002]       ; 0x0ea0
    cmp ax, strict word 0x66         ; 0x0ea3
    jl short @..api_idx_0004_2.l1    ; 0x0ea6
    mov ax, word [bp - 0x0004]       ; 0x0ea8
    ret                              ; 0x0eab
api_idx_000a_2:
    mov ax, 0xfff6                   ; 0x0eac
    call ds_dispatch_f40b            ; 0x0eaf
    mov byte [bp - 0x000a], 1        ; 0x0eb2
    mov byte [bp - 0x0009], 0        ; 0x0eb6
    mov ax, 0                        ; 0x0eba
    push ax                          ; 0x0ebd
    push ax                          ; 0x0ebe
    lea ax, word [bp - 0x000a]       ; 0x0ebf
    push ax                          ; 0x0ec2
    mov ax, 0                        ; 0x0ec3
    push ax                          ; 0x0ec6
    mov ax, 0xc7                     ; 0x0ec7
    push ax                          ; 0x0eca
    mov ax, 0                        ; 0x0ecb
    push ax                          ; 0x0ece
    mov ax, 0x13f                    ; 0x0ecf
    push ax                          ; 0x0ed2
    mov ax, 0                        ; 0x0ed3
    push ax                          ; 0x0ed6
    mov ax, 0x73                     ; 0x0ed7
    push ax                          ; 0x0eda
    mov ax, 0x32                     ; 0x0edb
    push ax                          ; 0x0ede
    mov ax, 1                        ; 0x0edf
    push ax                          ; 0x0ee2
    call ds_dispatch_efd1            ; 0x0ee3
    add sp, byte 0x16                ; 0x0ee6
    ret                              ; 0x0ee9
math_loc_0eea:
    mov ax, 0                        ; 0x0eea
    call ds_dispatch_f40b            ; 0x0eed
    push word [bp + 0x6]             ; 0x0ef0
    mov ax, 0xa                      ; 0x0ef3
    imul word [bp + 0x8]             ; 0x0ef6
    add ax, word [bp + 0x4]          ; 0x0ef9
    dec ax                           ; 0x0efc
    push ax                          ; 0x0efd
    call ds_dispatch_e809            ; 0x0efe
    add sp, byte 4                   ; 0x0f01
    mov ax, 7                        ; 0x0f04
    push ax                          ; 0x0f07
    mov ax, 0                        ; 0x0f08
    cmp word [bp + 0xa], byte 0      ; 0x0f0b
    je short @..math_loc_0eea.l1     ; 0x0f0f
    mov ax, 1                        ; 0x0f11
@..math_loc_0eea.l1:
    add ax, strict word 0x10         ; 0x0f14
    sub ah, ah                       ; 0x0f17
    push ax                          ; 0x0f19
    call ds_dispatch_e830            ; 0x0f1a
    add sp, byte 4                   ; 0x0f1d
    push word [bp + 0x6]             ; 0x0f20
    mov ax, 0xa                      ; 0x0f23
    imul word [bp + 0x8]             ; 0x0f26
    add ax, word [bp + 0x4]          ; 0x0f29
    push ax                          ; 0x0f2c
    call ds_dispatch_e809            ; 0x0f2d
    add sp, byte 4                   ; 0x0f30
    mov ax, 0                        ; 0x0f33
    push ax                          ; 0x0f36
    push ax                          ; 0x0f37
    call ds_dispatch_e823            ; 0x0f38
    add sp, byte 4                   ; 0x0f3b
    mov ax, data_0002                ; 0x0f3e
    push ax                          ; 0x0f41
    mov ax, word [bp + 0x8]          ; 0x0f42
    inc ax                           ; 0x0f45
    sub ah, ah                       ; 0x0f46
    push ax                          ; 0x0f48
    call ds_dispatch_e830            ; 0x0f49
    add sp, byte 4                   ; 0x0f4c
    cmp word [bp + 0x8], byte 0      ; 0x0f4f
    jne short @..math_loc_0eea.l2    ; 0x0f53
    cmp word [bp + 0xa], byte 0      ; 0x0f55
    jne short @..math_loc_0eea.l2    ; 0x0f59
    mov ax, 0xc2                     ; 0x0f5b
    push ax                          ; 0x0f5e
    mov ax, word [bp + 0x6]          ; 0x0f5f
    add ax, strict word 8            ; 0x0f62
    push ax                          ; 0x0f65
    mov ax, word [bp + 0x4]          ; 0x0f66
    dec ax                           ; 0x0f69
    push ax                          ; 0x0f6a
    push word [bp + 0x6]             ; 0x0f6b
    push ax                          ; 0x0f6e
    call ds_dispatch_e901            ; 0x0f6f
    add sp, byte 0x0a                ; 0x0f72
@..math_loc_0eea.l2:
    ret                              ; 0x0f75
loc_0f76:
    mov ax, 0                        ; 0x0f76
    call ds_dispatch_f40b            ; 0x0f79
    mov ax, word [bp + 0x6]          ; 0x0f7c
    add ax, strict word 6            ; 0x0f7f
    push ax                          ; 0x0f82
    mov ax, word [bp + 0x4]          ; 0x0f83
    add ax, strict word 0x14         ; 0x0f86
    push ax                          ; 0x0f89
    push word [bp + 0x6]             ; 0x0f8a
    push word [bp + 0x4]             ; 0x0f8d
    call ds_dispatch_bd98            ; 0x0f90
    add sp, byte 8                   ; 0x0f93
    mov ax, word [bp + 0x8]          ; 0x0f96
    shl ax, 1                        ; 0x0f99
    shl ax, 1                        ; 0x0f9b
    mov bx, ax                       ; 0x0f9d
    db 0xff, 0xb7, 0x08, 0x00 ; push word [bx + 0x8]
    mov ax, word [bp + 0x6]          ; 0x0fa3
    add ax, strict word 6            ; 0x0fa6
    push ax                          ; 0x0fa9
    mov ax, word [bp + 0x4]          ; 0x0faa
    add ax, strict word 0x14         ; 0x0fad
    push ax                          ; 0x0fb0
    push word [bp + 0x6]             ; 0x0fb1
    push word [bp + 0x4]             ; 0x0fb4
    call ds_dispatch_e901            ; 0x0fb7
    add sp, byte 0x0a                ; 0x0fba
    mov ax, word [bp + 0x6]          ; 0x0fbd
    inc ax                           ; 0x0fc0
    push ax                          ; 0x0fc1
    mov ax, word [bp + 0x4]          ; 0x0fc2
    inc ax                           ; 0x0fc5
    inc ax                           ; 0x0fc6
    push ax                          ; 0x0fc7
    call ds_dispatch_e809            ; 0x0fc8
    add sp, byte 4                   ; 0x0fcb
    cmp word [bp + 0xa], byte 0      ; 0x0fce
    jle short @..local.l2            ; 0x0fd2
    mov ax, word [bp + 0xa]          ; 0x0fd4
    cmp ax, word [bp + 0xc]          ; 0x0fd7
    jg short @..local.l2             ; 0x0fda
    mov ax, 0                        ; 0x0fdc
    push ax                          ; 0x0fdf
    mov ax, 1                        ; 0x0fe0
    push ax                          ; 0x0fe3
    call ds_dispatch_e823            ; 0x0fe4
    add sp, byte 4                   ; 0x0fe7
    mov ax, 0                        ; 0x0fea
    push ax                          ; 0x0fed
    mov ax, 3                        ; 0x0fee
    push ax                          ; 0x0ff1
    push word [bp + 0xa]             ; 0x0ff2
    call ds_dispatch_b2e7            ; 0x0ff5
    add sp, byte 6                   ; 0x0ff8
    jmp short @..local.l3            ; 0x0ffb
@..local.l2:
    mov ax, 0                        ; 0x0ffd
    push ax                          ; 0x1000
    push ax                          ; 0x1001
    call ds_dispatch_e823            ; 0x1002
    add sp, byte 4                   ; 0x1005
    mov ax, 0                        ; 0x1008
    push ax                          ; 0x100b
    mov ax, 0x909b                   ; 0x100c
    push ax                          ; 0x100f
    call ds_dispatch_e84e            ; 0x1010
    add sp, byte 4                   ; 0x1013
@..local.l3:
    ret                              ; 0x1016
api_idx_000c_2:
    mov ax, 0xfff4                   ; 0x1017
    call ds_dispatch_f40b            ; 0x101a
    mov word [bp - 0x0002], 0        ; 0x101d
@..api_idx_000c_2.l1:
    lea ax, word [bp - 0x000c]       ; 0x1022
    push ax                          ; 0x1025
    mov ax, 0x248                    ; 0x1026
    imul word [bp + 0x4]             ; 0x1029
    mov cx, word [bp - 0x0002]       ; 0x102c
    shl cx, 1                        ; 0x102f
    shl cx, 1                        ; 0x1031
    add ax, cx                       ; 0x1033
    mov bx, ax                       ; 0x1035
    push word [bx + 0x5c1c]          ; 0x1037
    call ds_dispatch_b27d            ; 0x103b
    add sp, byte 4                   ; 0x103e
    mov ax, 0                        ; 0x1041
    push ax                          ; 0x1044
    mov ax, word [bp - 0x0002]       ; 0x1045
    shl ax, 1                        ; 0x1048
    shl ax, 1                        ; 0x104a
    mov bx, ax                       ; 0x104c
    db 0xff, 0xb7, 0x06, 0x00 ; push word [bx + 0x6]
    call ds_dispatch_e823            ; 0x1052
    add sp, byte 4                   ; 0x1055
    mov ax, word [bp - 0x0002]       ; 0x1058
    shl ax, 1                        ; 0x105b
    shl ax, 1                        ; 0x105d
    mov bx, ax                       ; 0x105f
    push word [bx + 0x18e]           ; 0x1061
    lea ax, word [bp - 0x000c]       ; 0x1065
    push ax                          ; 0x1068
    call ds_dispatch_fa90            ; 0x1069
    pop cx                           ; 0x106c
    mov cx, 6                        ; 0x106d
    imul cx                          ; 0x1070
    mov cx, data_0002                ; 0x1072
    cwd                              ; 0x1075
    idiv cx                          ; 0x1076
    mov cx, ax                       ; 0x1078
    mov ax, word [bp - 0x0002]       ; 0x107a
    shl ax, 1                        ; 0x107d
    shl ax, 1                        ; 0x107f
    mov bx, ax                       ; 0x1081
    mov ax, word [bx + 0x18c]        ; 0x1083
    add ax, strict word 9            ; 0x1087
    sub ax, cx                       ; 0x108a
    push ax                          ; 0x108c
    call ds_dispatch_e809            ; 0x108d
    add sp, byte 4                   ; 0x1090
    mov ax, 0                        ; 0x1093
    push ax                          ; 0x1096
    lea ax, word [bp - 0x000c]       ; 0x1097
    push ax                          ; 0x109a
    call ds_dispatch_e84e            ; 0x109b
    add sp, byte 4                   ; 0x109e
    inc word [bp - 0x0002]           ; 0x10a1
    mov ax, word [bp - 0x0002]       ; 0x10a4
    cmp ax, strict word 6            ; 0x10a7
    jge short @..api_idx_000c_2.l2   ; 0x10aa
    jmp near @..api_idx_000c_2.l1    ; 0x10ac
@..api_idx_000c_2.l2:
    ret                              ; 0x10af
loc_10b0:
    mov ax, 0                        ; 0x10b0
    call ds_dispatch_f40b            ; 0x10b3
    les bx, word [data_0002]         ; 0x10b6
    mov ax, word [es:bx]             ; 0x10ba
    mov dx, word [es:bx + 0x2]       ; 0x10bd
    mov word [data_9090], dx         ; 0x10c1
    mov word [data_908e], ax         ; 0x10c5
    mov ax, word [data_908e]         ; 0x10c8
    mov dx, word [data_9090]         ; 0x10cb
    sub ax, word [data_908a]         ; 0x10cf
    sbb dx, word [data_908c]         ; 0x10d3
    mov word [data_9094], dx         ; 0x10d7
    mov word [data_9092], ax         ; 0x10db
    mov ax, word [data_948c]         ; 0x10de
    cwd                              ; 0x10e1
    mov cx, ax                       ; 0x10e2
    mov bx, dx                       ; 0x10e4
    mov ax, word [data_9092]         ; 0x10e6
    mov dx, word [data_9094]         ; 0x10e9
    cmp bx, dx                       ; 0x10ed
    jg short @..local.l4             ; 0x10ef
    jne short @..local.l5            ; 0x10f1
    cmp cx, ax                       ; 0x10f3
    jbe short @..local.l5            ; 0x10f5
@..local.l4:
    jmp short @..local.l6            ; 0x10f7
@..local.l5:
    mov ax, word [data_908e]         ; 0x10f9
    mov dx, word [data_9090]         ; 0x10fc
    mov word [data_908c], dx         ; 0x1100
    mov word [data_908a], ax         ; 0x1104
    call api_idx_000a_2              ; 0x1107
    push word [bp + 0x4]             ; 0x110a
    call api_idx_000c_2              ; 0x110d
    pop cx                           ; 0x1110
    push word [bp + 0x6]             ; 0x1111
    call api_idx_0002_2              ; 0x1114
    pop cx                           ; 0x1117
    mov ax, 1                        ; 0x1118
    push ax                          ; 0x111b
    mov ax, 0x73                     ; 0x111c
    push ax                          ; 0x111f
    mov ax, 0x32                     ; 0x1120
    push ax                          ; 0x1123
    call api_idx_000c                ; 0x1124
    add sp, byte 6                   ; 0x1127
    mov ax, 0xc5                     ; 0x112a
    push ax                          ; 0x112d
    mov ax, 0x93                     ; 0x112e
    push ax                          ; 0x1131
    mov ax, 0x73                     ; 0x1132
    push ax                          ; 0x1135
    mov ax, 0x32                     ; 0x1136
    push ax                          ; 0x1139
    call ds_dispatch_e8da            ; 0x113a
    add sp, byte 8                   ; 0x113d
@..local.l6:
    ret                              ; 0x1140
api_idx_0050:
    mov ax, 0xffb0                   ; 0x1141
    call ds_dispatch_f40b            ; 0x1144
    mov word [bp - 0x0002], 0        ; 0x1147
@..api_idx_0050.l1:
    mov ax, word [bp - 0x0002]       ; 0x114c
    shl ax, 1                        ; 0x114f
    mov bx, ax                       ; 0x1151
    mov ax, word [bx - 0x7cf2]       ; 0x1153
    add bx, bp                       ; 0x1157
    mov word [bx - 0x0050], ax       ; 0x1159
    mov ax, word [bp - 0x0002]       ; 0x115c
    shl ax, 1                        ; 0x115f
    mov bx, ax                       ; 0x1161
    mov word [bx - 0x7cf2], 0        ; 0x1163
    inc word [bp - 0x0002]           ; 0x1169
    mov ax, word [bp - 0x0002]       ; 0x116c
    cmp ax, strict word 6            ; 0x116f
    jl short @..api_idx_0050.l1      ; 0x1172
    mov word [data_904e], 0xffff     ; 0x1174
    mov word [bp - 0x0004], 0x32     ; 0x117a
    mov word [bp - 0x0006], 0x73     ; 0x117f
    mov word [bp - 0x0008], 0x10d    ; 0x1184
    mov word [bp - 0x000a], 0xc5     ; 0x1189
    mov word [bp - 0x000c], 0x95     ; 0x118e
    mov word [bp - 0x0014], 0x16     ; 0x1193
    mov ax, 0x909f                   ; 0x1198
    push ax                          ; 0x119b
    mov ax, word [bp - 0x000a]       ; 0x119c
    inc ax                           ; 0x119f
    push ax                          ; 0x11a0
    mov ax, word [bp - 0x0008]       ; 0x11a1
    inc ax                           ; 0x11a4
    push ax                          ; 0x11a5
    mov ax, word [bp - 0x0006]       ; 0x11a6
    dec ax                           ; 0x11a9
    push ax                          ; 0x11aa
    mov ax, word [bp - 0x0004]       ; 0x11ab
    dec ax                           ; 0x11ae
    push ax                          ; 0x11af
    call ds_dispatch_c283            ; 0x11b0
    add sp, byte 0x0a                ; 0x11b3
    mov word [bp - 0x003a], ax       ; 0x11b6
    push word [bp - 0x000a]          ; 0x11b9
    push word [bp - 0x0008]          ; 0x11bc
    push word [bp - 0x0006]          ; 0x11bf
    push word [bp - 0x0004]          ; 0x11c2
    call ds_dispatch_bc9a            ; 0x11c5
    add sp, byte 8                   ; 0x11c8
    push word [bp - 0x000a]          ; 0x11cb
    push word [bp - 0x0008]          ; 0x11ce
    push word [bp - 0x0006]          ; 0x11d1
    mov ax, 0x95                     ; 0x11d4
    push ax                          ; 0x11d7
    call ds_dispatch_bc9a            ; 0x11d8
    add sp, byte 8                   ; 0x11db
    call api_idx_000a_2              ; 0x11de
    push word [bp + 0x4]             ; 0x11e1
    call api_idx_000c_2              ; 0x11e4
    pop cx                           ; 0x11e7
    mov ax, 1                        ; 0x11e8
    push ax                          ; 0x11eb
    mov ax, 0x73                     ; 0x11ec
    push ax                          ; 0x11ef
    mov ax, 0x32                     ; 0x11f0
    push ax                          ; 0x11f3
    call api_idx_000c                ; 0x11f4
    add sp, byte 6                   ; 0x11f7
    lea ax, word [bp - 0x0038]       ; 0x11fa
    push ax                          ; 0x11fd
    push word [bp + 0x6]             ; 0x11fe
    call ds_dispatch_b53b            ; 0x1201
    add sp, byte 4                   ; 0x1204
    lea ax, word [bp - 0x0038]       ; 0x1207
    push ax                          ; 0x120a
    push word [bp + 0x8]             ; 0x120b
    mov ax, 1                        ; 0x120e
    push ax                          ; 0x1211
    mov ax, 8                        ; 0x1212
    push ax                          ; 0x1215
    mov ax, word [bp - 0x0006]       ; 0x1216
    add ax, strict word 6            ; 0x1219
    push ax                          ; 0x121c
    mov ax, word [bp - 0x000c]       ; 0x121d
    add ax, strict word 6            ; 0x1220
    push ax                          ; 0x1223
    call ds_dispatch_c0c1            ; 0x1224
    add sp, byte 0x0c                ; 0x1227
    lea ax, word [bp - 0x0038]       ; 0x122a
    push ax                          ; 0x122d
    mov ax, word [bp + 0x6]          ; 0x122e
    inc ax                           ; 0x1231
    push ax                          ; 0x1232
    call ds_dispatch_b53b            ; 0x1233
    add sp, byte 4                   ; 0x1236
    lea ax, word [bp - 0x0038]       ; 0x1239
    push ax                          ; 0x123c
    mov ax, 1                        ; 0x123d
    push ax                          ; 0x1240
    push ax                          ; 0x1241
    mov ax, 8                        ; 0x1242
    push ax                          ; 0x1245
    mov ax, word [bp - 0x0006]       ; 0x1246
    add ax, strict word 6            ; 0x1249
    push ax                          ; 0x124c
    mov ax, word [bp - 0x000c]       ; 0x124d
    add ax, strict word 0x42         ; 0x1250
    push ax                          ; 0x1253
    call ds_dispatch_c0c1            ; 0x1254
    add sp, byte 0x0c                ; 0x1257
    mov ax, word [bp - 0x0006]       ; 0x125a
    add ax, strict word 0x14         ; 0x125d
    push ax                          ; 0x1260
    mov ax, word [bp - 0x000c]       ; 0x1261
    add ax, strict word 0x48         ; 0x1264
    push ax                          ; 0x1267
    call ds_dispatch_e809            ; 0x1268
    add sp, byte 4                   ; 0x126b
    mov ax, 0                        ; 0x126e
    push ax                          ; 0x1271
    mov ax, 0xcd                     ; 0x1272
    push ax                          ; 0x1275
    call ds_dispatch_e823            ; 0x1276
    add sp, byte 4                   ; 0x1279
    mov ax, data_0002                ; 0x127c
    push ax                          ; 0x127f
    mov ax, 0xa                      ; 0x1280
    push ax                          ; 0x1283
    call ds_dispatch_e830            ; 0x1284
    add sp, byte 4                   ; 0x1287
    mov word [bp - 0x003c], 0xffff   ; 0x128a
    mov word [bp - 0x003e], 0        ; 0x128f
    mov word [bp - 0x0040], 0        ; 0x1294
    mov word [bp - 0x0002], 0        ; 0x1299
@..api_idx_0050.l2:
    mov ax, 0                        ; 0x129e
    mov cx, word [bp - 0x0002]       ; 0x12a1
    cmp cx, word [bp - 0x003e]       ; 0x12a4
    jne short @..api_idx_0050.l3     ; 0x12a7
    mov ax, 1                        ; 0x12a9
@..api_idx_0050.l3:
    push ax                          ; 0x12ac
    push cx                          ; 0x12ad
    mov ax, word [bp - 0x0006]       ; 0x12ae
    add ax, strict word 0x14         ; 0x12b1
    push ax                          ; 0x12b4
    mov ax, word [bp - 0x000c]       ; 0x12b5
    add ax, strict word 0xc          ; 0x12b8
    push ax                          ; 0x12bb
    call math_loc_0eea               ; 0x12bc
    add sp, byte 8                   ; 0x12bf
    inc word [bp - 0x0002]           ; 0x12c2
    mov ax, word [bp - 0x0002]       ; 0x12c5
    cmp ax, strict word 7            ; 0x12c8
    jl short @..api_idx_0050.l2      ; 0x12cb
    mov word [bp - 0x0042], 0        ; 0x12cd
    mov ax, 0                        ; 0x12d2
    push ax                          ; 0x12d5
    push ax                          ; 0x12d6
    push word [bp - 0x0042]          ; 0x12d7
    mov ax, word [bp - 0x0006]       ; 0x12da
    add ax, strict word 0x15         ; 0x12dd
    push ax                          ; 0x12e0
    mov ax, word [bp - 0x000c]       ; 0x12e1
    add ax, strict word 0x5e         ; 0x12e4
    push ax                          ; 0x12e7
    call loc_0f76                    ; 0x12e8
    add sp, byte 0x0a                ; 0x12eb
    push word [bp - 0x0042]          ; 0x12ee
    push word [bp + 0x4]             ; 0x12f1
    call api_idx_0004_2              ; 0x12f4
    add sp, byte 4                   ; 0x12f7
    mov word [bp - 0x0044], ax       ; 0x12fa
    mov ax, 7                        ; 0x12fd
    cmp word [bp - 0x0044], byte 7   ; 0x1300
    jge short @..api_idx_0050.l4     ; 0x1304
    mov ax, word [bp - 0x0044]       ; 0x1306
@..api_idx_0050.l4:
    mov word [bp - 0x0024], ax       ; 0x1309
    mov word [bp - 0x0018], 0        ; 0x130c
    mov word [bp - 0x0022], 0xffff   ; 0x1311
    push ax                          ; 0x1316
    push word [bp - 0x0022]          ; 0x1317
    push word [bp - 0x0018]          ; 0x131a
    mov ax, 7                        ; 0x131d
    push ax                          ; 0x1320
    mov ax, 0xf                      ; 0x1321
    push ax                          ; 0x1324
    mov ax, word [bp - 0x0006]       ; 0x1325
    add ax, strict word 0x22         ; 0x1328
    push ax                          ; 0x132b
    mov ax, word [bp - 0x000c]       ; 0x132c
    add ax, strict word 6            ; 0x132f
    push ax                          ; 0x1332
    call ds_dispatch_bf97            ; 0x1333
    add sp, byte 0x0e                ; 0x1336
    mov word [bp - 0x0012], 0        ; 0x1339
    push word [bp - 0x0012]          ; 0x133e
    mov ax, 7                        ; 0x1341
    push ax                          ; 0x1344
    mov ax, 8                        ; 0x1345
    push ax                          ; 0x1348
    mov ax, word [bp - 0x0006]       ; 0x1349
    add ax, strict word 0x22         ; 0x134c
    push ax                          ; 0x134f
    mov ax, word [bp - 0x000c]       ; 0x1350
    add ax, strict word 0x6a         ; 0x1353
    push ax                          ; 0x1356
    call ds_dispatch_bfd8            ; 0x1357
    add sp, byte 0x0a                ; 0x135a
    mov ax, 0                        ; 0x135d
    push ax                          ; 0x1360
    push ax                          ; 0x1361
    mov ax, word [bp - 0x0006]       ; 0x1362
    add ax, word [bp - 0x0012]       ; 0x1365
    add ax, strict word 0x2e         ; 0x1368
    push ax                          ; 0x136b
    mov ax, word [bp - 0x000c]       ; 0x136c
    add ax, strict word 0x72         ; 0x136f
    push ax                          ; 0x1372
    mov ax, word [bp - 0x0006]       ; 0x1373
    add ax, word [bp - 0x0012]       ; 0x1376
    add ax, strict word 0x2a         ; 0x1379
    push ax                          ; 0x137c
    mov ax, word [bp - 0x000c]       ; 0x137d
    add ax, strict word 0x6a         ; 0x1380
    push ax                          ; 0x1383
    mov ax, 0                        ; 0x1384
    push ax                          ; 0x1387
    call ds_dispatch_baa6            ; 0x1388
    add sp, byte 0x0e                ; 0x138b
    mov ax, 0                        ; 0x138e
    push ax                          ; 0x1391
    mov ax, 9                        ; 0x1392
    push ax                          ; 0x1395
    mov ax, word [bp - 0x0006]       ; 0x1396
    add ax, strict word 0x28         ; 0x1399
    push ax                          ; 0x139c
    mov ax, word [bp - 0x000c]       ; 0x139d
    add ax, strict word 0x72         ; 0x13a0
    push ax                          ; 0x13a3
    mov ax, word [bp - 0x0006]       ; 0x13a4
    add ax, strict word 0x22         ; 0x13a7
    push ax                          ; 0x13aa
    mov ax, word [bp - 0x000c]       ; 0x13ab
    add ax, strict word 0x6a         ; 0x13ae
    push ax                          ; 0x13b1
    mov ax, 1                        ; 0x13b2
    push ax                          ; 0x13b5
    call ds_dispatch_baa6            ; 0x13b6
    add sp, byte 0x0e                ; 0x13b9
    mov ax, 0                        ; 0x13bc
    push ax                          ; 0x13bf
    mov ax, 0xb                      ; 0x13c0
    push ax                          ; 0x13c3
    mov ax, word [bp - 0x0006]       ; 0x13c4
    add ax, strict word 0x4c         ; 0x13c7
    push ax                          ; 0x13ca
    mov ax, word [bp - 0x000c]       ; 0x13cb
    add ax, strict word 0x72         ; 0x13ce
    push ax                          ; 0x13d1
    mov ax, word [bp - 0x0006]       ; 0x13d2
    add ax, strict word 0x46         ; 0x13d5
    push ax                          ; 0x13d8
    mov ax, word [bp - 0x000c]       ; 0x13d9
    add ax, strict word 0x6a         ; 0x13dc
    push ax                          ; 0x13df
    mov ax, data_0002                ; 0x13e0
    push ax                          ; 0x13e3
    call ds_dispatch_baa6            ; 0x13e4
    add sp, byte 0x0e                ; 0x13e7
    mov ax, 0                        ; 0x13ea
    push ax                          ; 0x13ed
    mov ax, 0xd                      ; 0x13ee
    push ax                          ; 0x13f1
    mov ax, word [bp - 0x0006]       ; 0x13f2
    add ax, strict word 0xe          ; 0x13f5
    push ax                          ; 0x13f8
    mov ax, word [bp - 0x000c]       ; 0x13f9
    add ax, strict word 0x36         ; 0x13fc
    push ax                          ; 0x13ff
    mov ax, word [bp - 0x0006]       ; 0x1400
    add ax, strict word 6            ; 0x1403
    push ax                          ; 0x1406
    mov ax, word [bp - 0x000c]       ; 0x1407
    add ax, strict word 6            ; 0x140a
    push ax                          ; 0x140d
    mov ax, 3                        ; 0x140e
    push ax                          ; 0x1411
    call ds_dispatch_baa6            ; 0x1412
    add sp, byte 0x0e                ; 0x1415
    mov ax, 0                        ; 0x1418
    push ax                          ; 0x141b
    mov ax, 0x1b                     ; 0x141c
    push ax                          ; 0x141f
    mov ax, word [bp - 0x0006]       ; 0x1420
    add ax, strict word 0xe          ; 0x1423
    push ax                          ; 0x1426
    mov ax, word [bp - 0x000c]       ; 0x1427
    add ax, strict word 0x72         ; 0x142a
    push ax                          ; 0x142d
    mov ax, word [bp - 0x0006]       ; 0x142e
    add ax, strict word 6            ; 0x1431
    push ax                          ; 0x1434
    mov ax, word [bp - 0x000c]       ; 0x1435
    add ax, strict word 0x42         ; 0x1438
    push ax                          ; 0x143b
    mov ax, 4                        ; 0x143c
    push ax                          ; 0x143f
    call ds_dispatch_baa6            ; 0x1440
    add sp, byte 0x0e                ; 0x1443
    mov word [bp - 0x0002], 0        ; 0x1446
@..api_idx_0050.l5:
    mov ax, 0                        ; 0x144b
    push ax                          ; 0x144e
    mov ax, word [bp - 0x0002]       ; 0x144f
    add ax, strict word 0x31         ; 0x1452
    cbw                              ; 0x1455
    push ax                          ; 0x1456
    mov ax, word [bp - 0x0006]       ; 0x1457
    add ax, strict word 0x1b         ; 0x145a
    push ax                          ; 0x145d
    mov ax, 0xa                      ; 0x145e
    imul word [bp - 0x0002]          ; 0x1461
    add ax, word [bp - 0x000c]       ; 0x1464
    add ax, strict word 0x13         ; 0x1467
    push ax                          ; 0x146a
    mov ax, word [bp - 0x0006]       ; 0x146b
    add ax, strict word 0x14         ; 0x146e
    push ax                          ; 0x1471
    mov ax, 0xa                      ; 0x1472
    imul word [bp - 0x0002]          ; 0x1475
    add ax, word [bp - 0x000c]       ; 0x1478
    add ax, strict word 0xc          ; 0x147b
    push ax                          ; 0x147e
    mov ax, word [bp - 0x0002]       ; 0x147f
    add ax, strict word 5            ; 0x1482
    push ax                          ; 0x1485
    call ds_dispatch_baa6            ; 0x1486
    add sp, byte 0x0e                ; 0x1489
    inc word [bp - 0x0002]           ; 0x148c
    mov ax, word [bp - 0x0002]       ; 0x148f
    cmp ax, strict word 7            ; 0x1492
    jl short @..api_idx_0050.l5      ; 0x1495
    mov ax, 0                        ; 0x1497
    push ax                          ; 0x149a
    mov ax, 0x46                     ; 0x149b
    push ax                          ; 0x149e
    mov ax, 0x87                     ; 0x149f
    push ax                          ; 0x14a2
    mov ax, 0x52                     ; 0x14a3
    push ax                          ; 0x14a6
    mov ax, 0x74                     ; 0x14a7
    push ax                          ; 0x14aa
    mov ax, 0x46                     ; 0x14ab
    push ax                          ; 0x14ae
    mov ax, 0xc                      ; 0x14af
    push ax                          ; 0x14b2
    call ds_dispatch_baa6            ; 0x14b3
    add sp, byte 0x0e                ; 0x14b6
    mov ax, 0                        ; 0x14b9
    push ax                          ; 0x14bc
    mov ax, 0x57                     ; 0x14bd
    push ax                          ; 0x14c0
    mov ax, 0x9d                     ; 0x14c1
    push ax                          ; 0x14c4
    mov ax, 0x4b                     ; 0x14c5
    push ax                          ; 0x14c8
    mov ax, 0x90                     ; 0x14c9
    push ax                          ; 0x14cc
    mov ax, 0x32                     ; 0x14cd
    push ax                          ; 0x14d0
    mov ax, 0xd                      ; 0x14d1
    push ax                          ; 0x14d4
    call ds_dispatch_baa6            ; 0x14d5
    add sp, byte 0x0e                ; 0x14d8
    mov ax, 0                        ; 0x14db
    push ax                          ; 0x14de
    mov ax, 0x41                     ; 0x14df
    push ax                          ; 0x14e2
    mov ax, 0xbb                     ; 0x14e3
    push ax                          ; 0x14e6
    mov ax, 0x5f                     ; 0x14e7
    push ax                          ; 0x14ea
    mov ax, 0xa5                     ; 0x14eb
    push ax                          ; 0x14ee
    mov ax, 0x43                     ; 0x14ef
    push ax                          ; 0x14f2
    mov ax, 0xe                      ; 0x14f3
    push ax                          ; 0x14f6
    call ds_dispatch_baa6            ; 0x14f7
    add sp, byte 0x0e                ; 0x14fa
    mov ax, 0                        ; 0x14fd
    push ax                          ; 0x1500
    mov ax, 0x45                     ; 0x1501
    push ax                          ; 0x1504
    mov ax, 0x89                     ; 0x1505
    push ax                          ; 0x1508
    mov ax, 0x87                     ; 0x1509
    push ax                          ; 0x150c
    mov ax, 0x77                     ; 0x150d
    push ax                          ; 0x1510
    mov ax, 0x6c                     ; 0x1511
    push ax                          ; 0x1514
    mov ax, 0xf                      ; 0x1515
    push ax                          ; 0x1518
    call ds_dispatch_baa6            ; 0x1519
    add sp, byte 0x0e                ; 0x151c
    mov ax, 0                        ; 0x151f
    push ax                          ; 0x1522
    mov ax, 0x4d                     ; 0x1523
    push ax                          ; 0x1526
    mov ax, 0x9c                     ; 0x1527
    push ax                          ; 0x152a
    mov ax, 0x8e                     ; 0x152b
    push ax                          ; 0x152e
    mov ax, 0x91                     ; 0x152f
    push ax                          ; 0x1532
    mov ax, 0x7f                     ; 0x1533
    push ax                          ; 0x1536
    mov ax, 0x10                     ; 0x1537
    push ax                          ; 0x153a
    call ds_dispatch_baa6            ; 0x153b
    add sp, byte 0x0e                ; 0x153e
    mov ax, 0                        ; 0x1541
    push ax                          ; 0x1544
    mov ax, data_0044                ; 0x1545
    push ax                          ; 0x1548
    mov ax, 0xb9                     ; 0x1549
    push ax                          ; 0x154c
    mov ax, 0x81                     ; 0x154d
    push ax                          ; 0x1550
    mov ax, 0xa6                     ; 0x1551
    push ax                          ; 0x1554
    mov ax, 0x71                     ; 0x1555
    push ax                          ; 0x1558
    mov ax, 0x11                     ; 0x1559
    push ax                          ; 0x155c
    call ds_dispatch_baa6            ; 0x155d
    add sp, byte 0x0e                ; 0x1560
    mov ax, 7                        ; 0x1563
    cmp word [bp - 0x0044], byte 7   ; 0x1566
    jge short @..api_idx_0050.l6     ; 0x156a
    mov ax, word [bp - 0x0044]       ; 0x156c
@..api_idx_0050.l6:
    mov word [bp - 0x0020], ax       ; 0x156f
    mov word [bp - 0x0002], 0        ; 0x1572
@..api_idx_0050.l7:
    mov ax, 0                        ; 0x1577
    push ax                          ; 0x157a
    push ax                          ; 0x157b
    mov ax, 6                        ; 0x157c
    imul word [bp - 0x0002]          ; 0x157f
    add ax, word [bp - 0x0006]       ; 0x1582
    add ax, strict word 0x28         ; 0x1585
    push ax                          ; 0x1588
    mov ax, word [bp - 0x000c]       ; 0x1589
    add ax, strict word 0x62         ; 0x158c
    push ax                          ; 0x158f
    mov ax, 6                        ; 0x1590
    imul word [bp - 0x0002]          ; 0x1593
    add ax, word [bp - 0x0006]       ; 0x1596
    add ax, strict word 0x22         ; 0x1599
    push ax                          ; 0x159c
    mov ax, word [bp - 0x000c]       ; 0x159d
    add ax, strict word 6            ; 0x15a0
    push ax                          ; 0x15a3
    mov ax, word [bp - 0x0002]       ; 0x15a4
    add ax, strict word 0x12         ; 0x15a7
    push ax                          ; 0x15aa
    call ds_dispatch_baa6            ; 0x15ab
    add sp, byte 0x0e                ; 0x15ae
    inc word [bp - 0x0002]           ; 0x15b1
    mov ax, word [bp - 0x0002]       ; 0x15b4
    cmp ax, strict word 7            ; 0x15b7
    jl short @..api_idx_0050.l7      ; 0x15ba
    mov ax, 0                        ; 0x15bc
    push ax                          ; 0x15bf
    push ax                          ; 0x15c0
    push ax                          ; 0x15c1
    push ax                          ; 0x15c2
    push ax                          ; 0x15c3
    mov ax, 0xffff                   ; 0x15c4
    push ax                          ; 0x15c7
    mov ax, 0x19                     ; 0x15c8
    push ax                          ; 0x15cb
    call ds_dispatch_baa6            ; 0x15cc
    add sp, byte 0x0e                ; 0x15cf
    mov ax, word [bp - 0x000a]       ; 0x15d2
    inc ax                           ; 0x15d5
    push ax                          ; 0x15d6
    mov ax, word [bp - 0x0008]       ; 0x15d7
    inc ax                           ; 0x15da
    push ax                          ; 0x15db
    mov ax, word [bp - 0x0006]       ; 0x15dc
    dec ax                           ; 0x15df
    push ax                          ; 0x15e0
    mov ax, word [bp - 0x0004]       ; 0x15e1
    dec ax                           ; 0x15e4
    push ax                          ; 0x15e5
    call ds_dispatch_e8da            ; 0x15e6
    add sp, byte 8                   ; 0x15e9
    mov word [data_948c], 7          ; 0x15ec
    les bx, word [data_0002]         ; 0x15f2
    mov ax, word [es:bx]             ; 0x15f6
    mov dx, word [es:bx + 0x2]       ; 0x15f9
    mov word [data_908c], dx         ; 0x15fd
    mov word [data_908a], ax         ; 0x1601
    mov word [bp - 0x001c], 1        ; 0x1604
@..api_idx_0050.l8:
    push word [bp - 0x0042]          ; 0x1609
    push word [bp + 0x4]             ; 0x160c
    call loc_10b0                    ; 0x160f
    add sp, byte 4                   ; 0x1612
    mov ax, 0x59fe                   ; 0x1615
    push ax                          ; 0x1618
    call ds_dispatch_b90d            ; 0x1619
    pop cx                           ; 0x161c
    dec ax                           ; 0x161d
    mov word [bp - 0x001a], ax       ; 0x161e
    cmp word [data_59fc], byte 0     ; 0x1621
    je short @..api_idx_0050.l12     ; 0x1626
    mov ax, word [bp - 0x0022]       ; 0x1628
    cmp ax, word [bp - 0x0018]       ; 0x162b
    jl short @..api_idx_0050.l9      ; 0x162e
    inc word [bp - 0x0022]           ; 0x1630
@..api_idx_0050.l9:
    mov ax, word [bp - 0x0022]       ; 0x1633
    cmp ax, strict word 0xffff       ; 0x1636
    je short @..api_idx_0050.l10     ; 0x1639
    cmp ax, word [bp - 0x0018]       ; 0x163b
    jl short @..api_idx_0050.l10     ; 0x163e
    mov ax, word [bp - 0x0018]       ; 0x1640
    add ax, word [bp - 0x0020]       ; 0x1643
    mov cx, ax                       ; 0x1646
    dec ax                           ; 0x1648
    mov cx, ax                       ; 0x1649
    mov ax, word [bp - 0x0022]       ; 0x164b
    cmp cx, ax                       ; 0x164e
    jge short @..api_idx_0050.l11    ; 0x1650
@..api_idx_0050.l10:
    mov ax, word [bp - 0x0018]       ; 0x1652
    mov word [bp - 0x0022], ax       ; 0x1655
@..api_idx_0050.l11:
    mov word [data_5b3e], 1          ; 0x1658
    mov ax, word [bp - 0x0022]       ; 0x165e
    sub ax, word [bp - 0x0018]       ; 0x1661
    add ax, strict word 0x12         ; 0x1664
    mov word [bp - 0x001a], ax       ; 0x1667
@..api_idx_0050.l12:
    cmp word [data_5b3e], byte 1     ; 0x166a
    je short @..api_idx_0050.l13     ; 0x166f
    jmp near @..api_idx_0050.l37     ; 0x1671
@..api_idx_0050.l13:
    mov ax, word [bp - 0x001a]       ; 0x1674
    jmp near @..api_idx_0050.l35     ; 0x1677

    db 0x8d, 0x46, 0xf0, 0x50, 0x8d, 0x46, 0xf2, 0x50, 0xe8, 0xce, 0xd9, 0x83, 0xc4, 0x04, 0xb8, 0x04
    db 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0x8b, 0x46, 0xf0, 0x8b, 0x4e, 0xfa, 0x03, 0x4e, 0xee, 0x83
    db 0xc1, 0x2a, 0x2b, 0xc1, 0x50, 0xe8, 0x20, 0xa1, 0x83, 0xc4, 0x06, 0x89, 0x46, 0xea, 0x8d, 0x46
    db 0xf0, 0x50, 0x8d, 0x46, 0xf2, 0x50, 0xe8, 0xa0, 0xd9, 0x83, 0xc4, 0x04, 0x89, 0x46, 0xe2, 0xff
    db 0x76, 0xec, 0xb8, 0x00, 0x00, 0x50, 0x8b, 0x46, 0xf0, 0x8b, 0x4e, 0xfa, 0x83, 0xc1, 0x2a, 0x2b
    db 0xc1, 0x2b, 0x46, 0xea, 0x50, 0xe8, 0xf0, 0xa0, 0x83, 0xc4, 0x06, 0x89, 0x46, 0xee, 0x83, 0x7e
    db 0xbc, 0x07, 0x7e, 0x20, 0xb9, 0x64, 0x00, 0xf7, 0xe9, 0x50, 0x8b, 0x46, 0xec, 0xf7, 0xe9, 0x05
    db 0x64, 0x00, 0x8b, 0x4e, 0xbc, 0x83, 0xc1, 0xfa, 0x99, 0xf7, 0xf9, 0x8b, 0xc8, 0x58, 0x99, 0xf7
    db 0xf9, 0x89, 0x46, 0xe8, 0xff, 0x76, 0xdc, 0xff, 0x76, 0xde, 0xff, 0x76, 0xe8, 0xb8, 0x07, 0x00
    db 0x50, 0xb8, 0x0f, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05
    db 0x06, 0x00, 0x50, 0xe8, 0x77, 0xa8, 0x83, 0xc4, 0x0e, 0xff, 0x76, 0xee, 0xb8, 0x07, 0x00, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a
    db 0x00, 0x50, 0xe8, 0x99, 0xa8, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x8b, 0x46, 0xfa
    db 0x03, 0x46, 0xee, 0x05, 0x2e, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b, 0x46
    db 0xfa, 0x03, 0x46, 0xee, 0x05, 0x2a, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a, 0x00, 0x50, 0xb8
    db 0x00, 0x00, 0x50, 0xe8, 0x36, 0xa3, 0x83, 0xc4, 0x0e, 0x8b, 0x46, 0xfa, 0x05, 0x4c, 0x00, 0x50
    db 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46
    db 0xf4, 0x05, 0x06, 0x00, 0x50, 0xe8, 0x48, 0xd1, 0x83, 0xc4, 0x08, 0x83, 0x7e, 0xe2, 0x00, 0x74
    db 0x03, 0xe9, 0x0a, 0xff, 0xe9, 0x13, 0x06, 0x83, 0x7e, 0xe6, 0x01, 0x75, 0x31, 0xb8, 0x01, 0x00
    db 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x28, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b
    db 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a, 0x00, 0x50, 0xe8, 0xee, 0xa6
    db 0x83, 0xc4, 0x0a, 0x83, 0x7e, 0xe8, 0x00, 0x7e, 0x03, 0xff, 0x4e, 0xe8, 0xeb, 0x34, 0xb8, 0x01
    db 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x4c, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50
    db 0x8b, 0x46, 0xfa, 0x05, 0x46, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a, 0x00, 0x50, 0xe8, 0xbd
    db 0xa6, 0x83, 0xc4, 0x0a, 0x8b, 0x46, 0xbc, 0x05, 0xf9, 0xff, 0x3b, 0x46, 0xe8, 0x7e, 0x03, 0xff
    db 0x46, 0xe8, 0x83, 0x7e, 0xbc, 0x07, 0x7e, 0x2c, 0xff, 0x76, 0xec, 0xb8, 0x00, 0x00, 0x50, 0xb8
    db 0x64, 0x00, 0xf7, 0x6e, 0xec, 0x05, 0x64, 0x00, 0x8b, 0x4e, 0xbc, 0x83, 0xc1, 0xf9, 0x99, 0xf7
    db 0xf9, 0xf7, 0x6e, 0xe8, 0xb9, 0x64, 0x00, 0x99, 0xf7, 0xf9, 0x50, 0xe8, 0x8a, 0x9f, 0x83, 0xc4
    db 0x06, 0x89, 0x46, 0xee, 0xff, 0x76, 0xdc, 0xff, 0x76, 0xde, 0xff, 0x76, 0xe8, 0xb8, 0x07, 0x00
    db 0x50, 0xb8, 0x0f, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05
    db 0x06, 0x00, 0x50, 0xe8, 0x37, 0xa7, 0x83, 0xc4, 0x0e, 0xff, 0x76, 0xee, 0xb8, 0x07, 0x00, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a
    db 0x00, 0x50, 0xe8, 0x59, 0xa7, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x8b, 0x46, 0xfa
    db 0x03, 0x46, 0xee, 0x05, 0x2e, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b, 0x46
    db 0xfa, 0x03, 0x46, 0xee, 0x05, 0x2a, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a, 0x00, 0x50, 0xb8
    db 0x00, 0x00, 0x50, 0xe8, 0xf6, 0xa1, 0x83, 0xc4, 0x0e, 0x8b, 0x46, 0xfa, 0x05, 0x4c, 0x00, 0x50
    db 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46
    db 0xf4, 0x05, 0x06, 0x00, 0x50, 0xe8, 0x08, 0xd0, 0x83, 0xc4, 0x08, 0xe9, 0xdc, 0x04, 0x83, 0x7e
    db 0x08, 0x00, 0x75, 0x03, 0xe9, 0xa1, 0x00, 0x83, 0x7e, 0xc4, 0x00, 0x7d, 0x03, 0xe9, 0x8a, 0x00
    db 0x83, 0x7e, 0x0a, 0x00, 0x74, 0x3c, 0x8b, 0x46, 0xc2, 0x3b, 0x46, 0xc0, 0x7e, 0x03, 0xe9, 0x79
    db 0x00, 0xb8, 0x06, 0x00, 0xf7, 0x6e, 0xc4, 0x8b, 0xd8, 0x8a, 0x87, 0x22, 0x06, 0x2a, 0xe4, 0x8b
    db 0x4e, 0xc2, 0x41, 0xf7, 0xe9, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xc8, 0x8b, 0x56
    db 0xbe, 0xd1, 0xe2, 0xd1, 0xe2, 0x03, 0xc2, 0x8b, 0xd8, 0x8b, 0x8f, 0x1c, 0x5c, 0x58, 0x3b, 0xc1
    db 0x7f, 0x48, 0xb8, 0x01, 0x00, 0x50, 0x50, 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06
    db 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x06, 0x00, 0x50, 0xe8, 0x19, 0xa5, 0x83, 0xc4, 0x0a, 0xb8
    db 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06
    db 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x06, 0x00, 0x50, 0xe8, 0xf9, 0xa4, 0x83, 0xc4, 0x0a, 0xc7
    db 0x06, 0x50, 0x90, 0x00, 0x00, 0xc7, 0x46, 0xe4, 0x00, 0x00, 0x83, 0x7e, 0xe4, 0x00, 0x74, 0x08
    db 0xb8, 0x00, 0x00, 0x50, 0xe8, 0x5f, 0x9e, 0x59, 0xe9, 0x2f, 0x04, 0xb8, 0x01, 0x00, 0x50, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x42
    db 0x00, 0x50, 0xe8, 0xc0, 0xa4, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x42
    db 0x00, 0x50, 0xe8, 0xa0, 0xa4, 0x83, 0xc4, 0x0a, 0xc7, 0x06, 0x50, 0x90, 0x01, 0x00, 0xc7, 0x46
    db 0xe4, 0x00, 0x00, 0xe9, 0xe4, 0x03

@..api_idx_0050.l14:
    cmp word [bp - 0x001a], byte 5   ; 0x19d0
    jge short @..api_idx_0050.l15    ; 0x19d4
    jmp near @..api_idx_0050.l23     ; 0x19d6
@..api_idx_0050.l15:
    cmp word [bp - 0x001a], byte 0x0b ; 0x19d9
    jle short @..api_idx_0050.l16    ; 0x19dd
    jmp near @..api_idx_0050.l23     ; 0x19df
@..api_idx_0050.l16:
    mov ax, 0                        ; 0x19e2
    push ax                          ; 0x19e5
    push word [bp - 0x003e]          ; 0x19e6
    mov ax, word [bp - 0x0006]       ; 0x19e9
    add ax, strict word 0x14         ; 0x19ec
    push ax                          ; 0x19ef
    mov ax, word [bp - 0x000c]       ; 0x19f0
    add ax, strict word 0xc          ; 0x19f3
    push ax                          ; 0x19f6
    call math_loc_0eea               ; 0x19f7
    add sp, byte 8                   ; 0x19fa
    mov ax, word [bp - 0x001a]       ; 0x19fd
    add ax, strict word 0xfffb       ; 0x1a00
    mov word [bp - 0x003e], ax       ; 0x1a03
    mov ax, 1                        ; 0x1a06
    push ax                          ; 0x1a09
    push word [bp - 0x003e]          ; 0x1a0a
    mov ax, word [bp - 0x0006]       ; 0x1a0d
    add ax, strict word 0x14         ; 0x1a10
    push ax                          ; 0x1a13
    mov ax, word [bp - 0x000c]       ; 0x1a14
    add ax, strict word 0xc          ; 0x1a17
    push ax                          ; 0x1a1a
    call math_loc_0eea               ; 0x1a1b
    add sp, byte 8                   ; 0x1a1e
    cmp word [bp - 0x003c], byte 0   ; 0x1a21
    jge short @..api_idx_0050.l17    ; 0x1a25
    jmp near @..api_idx_0050.l21     ; 0x1a27
@..api_idx_0050.l17:
    mov ax, 6                        ; 0x1a2a
    push ax                          ; 0x1a2d
    mov ax, 0                        ; 0x1a2e
    push ax                          ; 0x1a31
    mov ax, 0x248                    ; 0x1a32
    imul word [bp + 0x4]             ; 0x1a35
    mov bx, ax                       ; 0x1a38
    mov ax, word [bx + 0x5c18]       ; 0x1a3a
    push ax                          ; 0x1a3e
    mov ax, 6                        ; 0x1a3f
    imul word [bp - 0x003c]          ; 0x1a42
    mov bx, ax                       ; 0x1a45
    mov al, byte [bx + 0x621]        ; 0x1a47
    sub ah, ah                       ; 0x1a4b
    mov cx, ax                       ; 0x1a4d
    pop ax                           ; 0x1a4f
    sub ax, cx                       ; 0x1a50
    push ax                          ; 0x1a52
    call ds_dispatch_b7c2            ; 0x1a53
    add sp, byte 6                   ; 0x1a56
    mov word [bp - 0x0040], ax       ; 0x1a59
    mov ax, 6                        ; 0x1a5c
    imul word [bp - 0x003c]          ; 0x1a5f
    mov bx, ax                       ; 0x1a62
    mov al, byte [bx + 0x622]        ; 0x1a64
    sub ah, ah                       ; 0x1a68
    mov cx, word [bp - 0x0040]       ; 0x1a6a
    inc cx                           ; 0x1a6d
    imul cx                          ; 0x1a6e
    mov word [bp - 0x0002], ax       ; 0x1a70
    cmp word [bp + 0xa], byte 0      ; 0x1a73
    jne short @..api_idx_0050.l18    ; 0x1a77
    mov ax, 0x3e7                    ; 0x1a79
    jmp short @..api_idx_0050.l20    ; 0x1a7c
@..api_idx_0050.l18:
    mov ax, 0x248                    ; 0x1a7e
    imul word [bp + 0x4]             ; 0x1a81
    mov cx, word [bp - 0x0042]       ; 0x1a84
    shl cx, 1                        ; 0x1a87
    shl cx, 1                        ; 0x1a89
    add ax, cx                       ; 0x1a8b
    mov bx, ax                       ; 0x1a8d
    mov ax, word [bx + 0x5c1c]       ; 0x1a8f
    cmp ax, word [bp - 0x0002]       ; 0x1a93
    jge short @..api_idx_0050.l19    ; 0x1a96
    jmp short @..api_idx_0050.l20    ; 0x1a98
@..api_idx_0050.l19:
    mov ax, word [bp - 0x0002]       ; 0x1a9a
@..api_idx_0050.l20:
    push ax                          ; 0x1a9d
    mov ax, 6                        ; 0x1a9e
    imul word [bp - 0x003c]          ; 0x1aa1
    mov bx, ax                       ; 0x1aa4
    mov al, byte [bx + 0x622]        ; 0x1aa6
    sub ah, ah                       ; 0x1aaa
    mov cx, word [bp - 0x003e]       ; 0x1aac
    inc cx                           ; 0x1aaf
    imul cx                          ; 0x1ab0
    push ax                          ; 0x1ab2
    push word [bp - 0x0042]          ; 0x1ab3
    mov ax, word [bp - 0x0006]       ; 0x1ab6
    add ax, strict word 0x15         ; 0x1ab9
    push ax                          ; 0x1abc
    mov ax, word [bp - 0x000c]       ; 0x1abd
    add ax, strict word 0x5e         ; 0x1ac0
    push ax                          ; 0x1ac3
    call loc_0f76                    ; 0x1ac4
    add sp, byte 0x0a                ; 0x1ac7
    jmp short @..api_idx_0050.l22    ; 0x1aca
@..api_idx_0050.l21:
    mov ax, 0                        ; 0x1acc
    push ax                          ; 0x1acf
    push ax                          ; 0x1ad0
    push word [bp - 0x0042]          ; 0x1ad1
    mov ax, word [bp - 0x0006]       ; 0x1ad4
    add ax, strict word 0x15         ; 0x1ad7
    push ax                          ; 0x1ada
    mov ax, word [bp - 0x000c]       ; 0x1adb
    add ax, strict word 0x5e         ; 0x1ade
    push ax                          ; 0x1ae1
    call loc_0f76                    ; 0x1ae2
    add sp, byte 0x0a                ; 0x1ae5
@..api_idx_0050.l22:
    mov ax, word [bp - 0x0006]       ; 0x1ae8
    add ax, strict word 0x1c         ; 0x1aeb
    push ax                          ; 0x1aee
    mov ax, word [bp - 0x000c]       ; 0x1aef
    add ax, strict word 0x56         ; 0x1af2
    push ax                          ; 0x1af5
    mov ax, word [bp - 0x0006]       ; 0x1af6
    add ax, strict word 0x14         ; 0x1af9
    push ax                          ; 0x1afc
    mov ax, word [bp - 0x000c]       ; 0x1afd
    add ax, strict word 0xb          ; 0x1b00
    push ax                          ; 0x1b03
    call ds_dispatch_e8da            ; 0x1b04
    add sp, byte 8                   ; 0x1b07
    mov ax, word [bp - 0x0006]       ; 0x1b0a
    add ax, strict word 0x1b         ; 0x1b0d
    push ax                          ; 0x1b10
    mov ax, word [bp - 0x000c]       ; 0x1b11
    add ax, strict word 0x72         ; 0x1b14
    push ax                          ; 0x1b17
    mov ax, word [bp - 0x0006]       ; 0x1b18
    add ax, strict word 0x15         ; 0x1b1b
    push ax                          ; 0x1b1e
    mov ax, word [bp - 0x000c]       ; 0x1b1f
    add ax, strict word 0x5e         ; 0x1b22
    push ax                          ; 0x1b25
    call ds_dispatch_e8da            ; 0x1b26
    add sp, byte 8                   ; 0x1b29
    jmp near @..api_idx_0050.l34     ; 0x1b2c
@..api_idx_0050.l23:
    cmp word [bp - 0x001a], byte 0x0c ; 0x1b2f
    jge short @..api_idx_0050.l24    ; 0x1b33
    jmp near @..api_idx_0050.l28     ; 0x1b35
@..api_idx_0050.l24:
    cmp word [bp - 0x001a], byte 0x11 ; 0x1b38
    jle short @..api_idx_0050.l25    ; 0x1b3c
    jmp near @..api_idx_0050.l28     ; 0x1b3e
@..api_idx_0050.l25:
    mov ax, word [bp - 0x001a]       ; 0x1b41
    add ax, strict word 0xfff4       ; 0x1b44
    mov word [bp - 0x0042], ax       ; 0x1b47
    mov word [bp - 0x003c], 0xffff   ; 0x1b4a
    push ax                          ; 0x1b4f
    push word [bp + 0x4]             ; 0x1b50
    call api_idx_0004_2              ; 0x1b53
    add sp, byte 4                   ; 0x1b56
    mov word [bp - 0x0044], ax       ; 0x1b59
    mov ax, 7                        ; 0x1b5c
    cmp word [bp - 0x0044], byte 7   ; 0x1b5f
    jge short @..api_idx_0050.l26    ; 0x1b63
    mov ax, word [bp - 0x0044]       ; 0x1b65
@..api_idx_0050.l26:
    mov word [bp - 0x0024], ax       ; 0x1b68
    mov ax, 7                        ; 0x1b6b
    cmp word [bp - 0x0044], byte 7   ; 0x1b6e
    jge short @..api_idx_0050.l27    ; 0x1b72
    mov ax, word [bp - 0x0044]       ; 0x1b74
@..api_idx_0050.l27:
    mov word [bp - 0x0020], ax       ; 0x1b77
    mov word [bp - 0x0018], 0        ; 0x1b7a
    mov word [bp - 0x0022], 0xffff   ; 0x1b7f
    push word [bp - 0x0024]          ; 0x1b84
    push word [bp - 0x0022]          ; 0x1b87
    push word [bp - 0x0018]          ; 0x1b8a
    mov ax, 7                        ; 0x1b8d
    push ax                          ; 0x1b90
    mov ax, 0xf                      ; 0x1b91
    push ax                          ; 0x1b94
    mov ax, word [bp - 0x0006]       ; 0x1b95
    add ax, strict word 0x22         ; 0x1b98
    push ax                          ; 0x1b9b
    mov ax, word [bp - 0x000c]       ; 0x1b9c
    add ax, strict word 6            ; 0x1b9f
    push ax                          ; 0x1ba2
    call ds_dispatch_bf97            ; 0x1ba3
    add sp, byte 0x0e                ; 0x1ba6
    mov word [bp - 0x0012], 0        ; 0x1ba9
    push word [bp - 0x0012]          ; 0x1bae
    mov ax, 7                        ; 0x1bb1
    push ax                          ; 0x1bb4
    mov ax, 8                        ; 0x1bb5
    push ax                          ; 0x1bb8
    mov ax, word [bp - 0x0006]       ; 0x1bb9
    add ax, strict word 0x22         ; 0x1bbc
    push ax                          ; 0x1bbf
    mov ax, word [bp - 0x000c]       ; 0x1bc0
    add ax, strict word 0x6a         ; 0x1bc3
    push ax                          ; 0x1bc6
    call ds_dispatch_bfd8            ; 0x1bc7
    add sp, byte 0x0a                ; 0x1bca
    mov ax, 0                        ; 0x1bcd
    push ax                          ; 0x1bd0
    push ax                          ; 0x1bd1
    mov ax, word [bp - 0x0006]       ; 0x1bd2
    add ax, word [bp - 0x0012]       ; 0x1bd5
    add ax, strict word 0x2e         ; 0x1bd8
    push ax                          ; 0x1bdb
    mov ax, word [bp - 0x000c]       ; 0x1bdc
    add ax, strict word 0x72         ; 0x1bdf
    push ax                          ; 0x1be2
    mov ax, word [bp - 0x0006]       ; 0x1be3
    add ax, word [bp - 0x0012]       ; 0x1be6
    add ax, strict word 0x2a         ; 0x1be9
    push ax                          ; 0x1bec
    mov ax, word [bp - 0x000c]       ; 0x1bed
    add ax, strict word 0x6a         ; 0x1bf0
    push ax                          ; 0x1bf3
    mov ax, 0                        ; 0x1bf4
    push ax                          ; 0x1bf7
    call ds_dispatch_baa6            ; 0x1bf8
    add sp, byte 0x0e                ; 0x1bfb
    mov ax, 0                        ; 0x1bfe
    push ax                          ; 0x1c01
    push ax                          ; 0x1c02
    push word [bp - 0x0042]          ; 0x1c03
    mov ax, word [bp - 0x0006]       ; 0x1c06
    add ax, strict word 0x15         ; 0x1c09
    push ax                          ; 0x1c0c
    mov ax, word [bp - 0x000c]       ; 0x1c0d
    add ax, strict word 0x5e         ; 0x1c10
    push ax                          ; 0x1c13
    call loc_0f76                    ; 0x1c14
    add sp, byte 0x0a                ; 0x1c17
    mov ax, word [bp - 0x0006]       ; 0x1c1a
    add ax, strict word 0x4c         ; 0x1c1d
    push ax                          ; 0x1c20
    mov ax, word [bp - 0x000c]       ; 0x1c21
    add ax, strict word 0x72         ; 0x1c24
    push ax                          ; 0x1c27
    mov ax, word [bp - 0x0006]       ; 0x1c28
    add ax, strict word 0x22         ; 0x1c2b
    push ax                          ; 0x1c2e
    mov ax, word [bp - 0x000c]       ; 0x1c2f
    add ax, strict word 6            ; 0x1c32
    push ax                          ; 0x1c35
    call ds_dispatch_e8da            ; 0x1c36
    add sp, byte 8                   ; 0x1c39
    mov ax, word [bp - 0x0006]       ; 0x1c3c
    add ax, strict word 0x1b         ; 0x1c3f
    push ax                          ; 0x1c42
    mov ax, word [bp - 0x000c]       ; 0x1c43
    add ax, strict word 0x72         ; 0x1c46
    push ax                          ; 0x1c49
    mov ax, word [bp - 0x0006]       ; 0x1c4a
    add ax, strict word 0x15         ; 0x1c4d
    push ax                          ; 0x1c50
    mov ax, word [bp - 0x000c]       ; 0x1c51
    add ax, strict word 0x5e         ; 0x1c54
    push ax                          ; 0x1c57
    call ds_dispatch_e8da            ; 0x1c58
    add sp, byte 8                   ; 0x1c5b
    jmp near @..api_idx_0050.l34     ; 0x1c5e
@..api_idx_0050.l28:
    cmp word [bp - 0x001a], byte 0x12 ; 0x1c61
    jge short @..api_idx_0050.l29    ; 0x1c65
    jmp near @..api_idx_0050.l34     ; 0x1c67
@..api_idx_0050.l29:
    mov ax, word [bp - 0x0020]       ; 0x1c6a
    add ax, strict word 0x12         ; 0x1c6d
    cmp ax, word [bp - 0x001a]       ; 0x1c70
    jg short @..api_idx_0050.l30     ; 0x1c73
    jmp near @..api_idx_0050.l34     ; 0x1c75
@..api_idx_0050.l30:
    mov ax, word [bp - 0x0018]       ; 0x1c78
    add ax, word [bp - 0x001a]       ; 0x1c7b
    add ax, strict word 0xffee       ; 0x1c7e
    mov word [bp - 0x0022], ax       ; 0x1c81
    shl ax, 1                        ; 0x1c84
    mov bx, ax                       ; 0x1c86
    mov ax, word [bx - 0x6bc4]       ; 0x1c88
    mov word [bp - 0x003c], ax       ; 0x1c8c
    push word [bp - 0x0024]          ; 0x1c8f
    push word [bp - 0x0022]          ; 0x1c92
    push word [bp - 0x0018]          ; 0x1c95
    mov ax, 7                        ; 0x1c98
    push ax                          ; 0x1c9b
    mov ax, 0xf                      ; 0x1c9c
    push ax                          ; 0x1c9f
    mov ax, word [bp - 0x0006]       ; 0x1ca0
    add ax, strict word 0x22         ; 0x1ca3
    push ax                          ; 0x1ca6
    mov ax, word [bp - 0x000c]       ; 0x1ca7
    add ax, strict word 6            ; 0x1caa
    push ax                          ; 0x1cad
    call ds_dispatch_bf97            ; 0x1cae
    add sp, byte 0x0e                ; 0x1cb1
    mov ax, 6                        ; 0x1cb4
    push ax                          ; 0x1cb7
    mov ax, 0                        ; 0x1cb8
    push ax                          ; 0x1cbb
    mov ax, 0x248                    ; 0x1cbc
    imul word [bp + 0x4]             ; 0x1cbf
    mov bx, ax                       ; 0x1cc2
    mov ax, word [bx + 0x5c18]       ; 0x1cc4
    push ax                          ; 0x1cc8
    mov ax, 6                        ; 0x1cc9
    imul word [bp - 0x003c]          ; 0x1ccc
    mov bx, ax                       ; 0x1ccf
    mov al, byte [bx + 0x621]        ; 0x1cd1
    sub ah, ah                       ; 0x1cd5
    mov cx, ax                       ; 0x1cd7
    pop ax                           ; 0x1cd9
    sub ax, cx                       ; 0x1cda
    push ax                          ; 0x1cdc
    call ds_dispatch_b7c2            ; 0x1cdd
    add sp, byte 6                   ; 0x1ce0
    mov word [bp - 0x0040], ax       ; 0x1ce3
    mov ax, 6                        ; 0x1ce6
    imul word [bp - 0x003c]          ; 0x1ce9
    mov bx, ax                       ; 0x1cec
    mov al, byte [bx + 0x622]        ; 0x1cee
    sub ah, ah                       ; 0x1cf2
    mov cx, word [bp - 0x0040]       ; 0x1cf4
    inc cx                           ; 0x1cf7
    imul cx                          ; 0x1cf8
    mov word [bp - 0x0002], ax       ; 0x1cfa
    cmp word [bp + 0xa], byte 0      ; 0x1cfd
    jne short @..api_idx_0050.l31    ; 0x1d01
    mov ax, 0x3e7                    ; 0x1d03
    jmp short @..api_idx_0050.l33    ; 0x1d06
@..api_idx_0050.l31:
    mov ax, 0x248                    ; 0x1d08
    imul word [bp + 0x4]             ; 0x1d0b
    mov cx, word [bp - 0x0042]       ; 0x1d0e
    shl cx, 1                        ; 0x1d11
    shl cx, 1                        ; 0x1d13
    add ax, cx                       ; 0x1d15
    mov bx, ax                       ; 0x1d17
    mov ax, word [bx + 0x5c1c]       ; 0x1d19
    cmp ax, word [bp - 0x0002]       ; 0x1d1d
    jge short @..api_idx_0050.l32    ; 0x1d20
    jmp short @..api_idx_0050.l33    ; 0x1d22
@..api_idx_0050.l32:
    mov ax, word [bp - 0x0002]       ; 0x1d24
@..api_idx_0050.l33:
    push ax                          ; 0x1d27
    mov ax, 6                        ; 0x1d28
    imul word [bp - 0x003c]          ; 0x1d2b
    mov bx, ax                       ; 0x1d2e
    mov al, byte [bx + 0x622]        ; 0x1d30
    sub ah, ah                       ; 0x1d34
    mov cx, word [bp - 0x003e]       ; 0x1d36
    inc cx                           ; 0x1d39
    imul cx                          ; 0x1d3a
    push ax                          ; 0x1d3c
    push word [bp - 0x0042]          ; 0x1d3d
    mov ax, word [bp - 0x0006]       ; 0x1d40
    add ax, strict word 0x15         ; 0x1d43
    push ax                          ; 0x1d46
    mov ax, word [bp - 0x000c]       ; 0x1d47
    add ax, strict word 0x5e         ; 0x1d4a
    push ax                          ; 0x1d4d
    call loc_0f76                    ; 0x1d4e
    add sp, byte 0x0a                ; 0x1d51
    mov ax, word [bp - 0x0006]       ; 0x1d54
    add ax, strict word 0x4c         ; 0x1d57
    push ax                          ; 0x1d5a
    mov ax, word [bp - 0x000c]       ; 0x1d5b
    add ax, strict word 0x72         ; 0x1d5e
    push ax                          ; 0x1d61
    mov ax, word [bp - 0x0006]       ; 0x1d62
    add ax, strict word 0x22         ; 0x1d65
    push ax                          ; 0x1d68
    mov ax, word [bp - 0x000c]       ; 0x1d69
    add ax, strict word 6            ; 0x1d6c
    push ax                          ; 0x1d6f
    call ds_dispatch_e8da            ; 0x1d70
    add sp, byte 8                   ; 0x1d73
    mov ax, word [bp - 0x0006]       ; 0x1d76
    add ax, strict word 0x1b         ; 0x1d79
    push ax                          ; 0x1d7c
    mov ax, word [bp - 0x000c]       ; 0x1d7d
    add ax, strict word 0x72         ; 0x1d80
    push ax                          ; 0x1d83
    mov ax, word [bp - 0x0006]       ; 0x1d84
    add ax, strict word 0x15         ; 0x1d87
    push ax                          ; 0x1d8a
    mov ax, word [bp - 0x000c]       ; 0x1d8b
    add ax, strict word 0x5e         ; 0x1d8e
    push ax                          ; 0x1d91
    call ds_dispatch_e8da            ; 0x1d92
    add sp, byte 8                   ; 0x1d95
@..api_idx_0050.l34:
    jmp short @..api_idx_0050.l37    ; 0x1d98
    shl word [bp - 0x0018], 0x67     ; 0x1d9a
    call loc_3d08                    ; 0x1d9e
    db 0x69, 0xcc, 0x69
@..api_idx_0050.l35:
    cmp ax, strict word 5            ; 0x1da4
    jae short @..api_idx_0050.l36    ; 0x1da7
    xchg bx, ax                      ; 0x1da9
    shl bx, 1                        ; 0x1daa
    jmp [cs:bx + 0x6de1]             ; 0x1dac
@..api_idx_0050.l36:
    jmp near @..api_idx_0050.l14     ; 0x1db1
@..api_idx_0050.l37:
    cmp word [bp - 0x001c], byte 0   ; 0x1db4
    je short @..api_idx_0050.l38     ; 0x1db8
    jmp near @..api_idx_0050.l8      ; 0x1dba
@..api_idx_0050.l38:
    mov ax, 1                        ; 0x1dbd
    push ax                          ; 0x1dc0
    push word [bp - 0x003a]          ; 0x1dc1
    call ds_dispatch_c459            ; 0x1dc4
    add sp, byte 4                   ; 0x1dc7
    mov ax, word [bp - 0x000a]       ; 0x1dca
    inc ax                           ; 0x1dcd
    push ax                          ; 0x1dce
    mov ax, word [bp - 0x0008]       ; 0x1dcf
    inc ax                           ; 0x1dd2
    push ax                          ; 0x1dd3
    mov ax, word [bp - 0x0006]       ; 0x1dd4
    dec ax                           ; 0x1dd7
    push ax                          ; 0x1dd8
    mov ax, word [bp - 0x0004]       ; 0x1dd9
    dec ax                           ; 0x1ddc
    push ax                          ; 0x1ddd
    call ds_dispatch_e8da            ; 0x1dde
    add sp, byte 8                   ; 0x1de1
    mov word [bp - 0x0002], 0        ; 0x1de4
@..api_idx_0050.l39:
    mov ax, word [bp - 0x0002]       ; 0x1de9
    shl ax, 1                        ; 0x1dec
    mov bx, ax                       ; 0x1dee
    add bx, bp                       ; 0x1df0
    mov ax, word [bx - 0x0050]       ; 0x1df2
    mov cx, word [bp - 0x0002]       ; 0x1df5
    shl cx, 1                        ; 0x1df8
    mov bx, cx                       ; 0x1dfa
    mov word [bx - 0x7cf2], ax       ; 0x1dfc
    inc word [bp - 0x0002]           ; 0x1e00
    mov ax, word [bp - 0x0002]       ; 0x1e03
    cmp ax, strict word 6            ; 0x1e06
    jl short @..api_idx_0050.l39     ; 0x1e09
    les bx, word [data_0002]         ; 0x1e0b
    mov ax, word [es:bx]             ; 0x1e0f
    mov dx, word [es:bx + 0x2]       ; 0x1e12
    mov word [data_908c], dx         ; 0x1e16
    mov word [data_908a], ax         ; 0x1e1a
    mov ax, word [bp - 0x003e]       ; 0x1e1d
    xchg al, ah                      ; 0x1e20
    sub al, al                       ; 0x1e22
    add ax, word [bp - 0x003c]       ; 0x1e24
    add ax, 0x100                    ; 0x1e27
    mov word [data_904e], ax         ; 0x1e2a
    mov ax, word [data_9050]         ; 0x1e2d
    ret                              ; 0x1e30
api_idx_00ca:
    mov ax, 0xff36                   ; 0x1e31
    call ds_dispatch_f40b            ; 0x1e34
    mov ax, word [bp + 0x6]          ; 0x1e37
    jmp short @..api_idx_00ca.l5     ; 0x1e3a
@..api_idx_00ca.l1:
    mov word [bp - 0x000c], 8        ; 0x1e3c
    mov word [bp - 0x000e], 0x20     ; 0x1e41
    jmp short @..api_idx_00ca.l6     ; 0x1e46
@..api_idx_00ca.l2:
    mov word [bp - 0x000c], 4        ; 0x1e48
    mov word [bp - 0x000e], 0x1e     ; 0x1e4d
    jmp short @..api_idx_00ca.l6     ; 0x1e52
@..api_idx_00ca.l3:
    mov word [bp - 0x000c], data_0002 ; 0x1e54
    mov word [bp - 0x000e], 0x1f     ; 0x1e59
    jmp short @..api_idx_00ca.l6     ; 0x1e5e
@..api_idx_00ca.l4:
    mov word [bp - 0x000c], 1        ; 0x1e60
    mov word [bp - 0x000e], 0x1d     ; 0x1e65
    jmp short @..api_idx_00ca.l6     ; 0x1e6a
@..api_idx_00ca.l5:
    cmp ax, strict word 0            ; 0x1e6c
    je short @..api_idx_00ca.l1      ; 0x1e6f
    cmp ax, strict word 1            ; 0x1e71
    je short @..api_idx_00ca.l2      ; 0x1e74
    cmp ax, strict word 2            ; 0x1e76
    je short @..api_idx_00ca.l4      ; 0x1e79
    cmp ax, strict word 3            ; 0x1e7b
    je short @..api_idx_00ca.l3      ; 0x1e7e
@..api_idx_00ca.l6:
    mov ax, 0x10                     ; 0x1e80
    push ax                          ; 0x1e83
    lea ax, word [bp - 0x001e]       ; 0x1e84
    push ax                          ; 0x1e87
    mov ax, 0x248                    ; 0x1e88
    imul word [bp + 0x4]             ; 0x1e8b
    add ax, 0x5e12                   ; 0x1e8e
    push ax                          ; 0x1e91
    call ds_dispatch_fedc            ; 0x1e92
    add sp, byte 6                   ; 0x1e95
    mov ax, 0                        ; 0x1e98
    push ax                          ; 0x1e9b
    mov ax, 0x10                     ; 0x1e9c
    push ax                          ; 0x1e9f
    mov ax, 0x248                    ; 0x1ea0
    imul word [bp + 0x4]             ; 0x1ea3
    add ax, 0x5e12                   ; 0x1ea6
    push ax                          ; 0x1ea9
    call ds_dispatch_f306            ; 0x1eaa
    add sp, byte 6                   ; 0x1ead
    mov ax, 0x248                    ; 0x1eb0
    imul word [bp + 0x4]             ; 0x1eb3
    add ax, word [bp - 0x000e]       ; 0x1eb6
    mov bx, ax                       ; 0x1eb9
    mov al, byte [bx + 0x5d6c]       ; 0x1ebb
    sub ah, ah                       ; 0x1ebf
    mov cx, 0x12                     ; 0x1ec1
    cwd                              ; 0x1ec4
    idiv cx                          ; 0x1ec5
    inc ax                           ; 0x1ec7
    mov word [bp - 0x000a], ax       ; 0x1ec8
    cmp byte [bx + 0x5d6c], 0x62     ; 0x1ecb
    jb short @..api_idx_00ca.l7      ; 0x1ed0
    mov word [bp - 0x000a], 7        ; 0x1ed2
@..api_idx_00ca.l7:
    mov word [bp - 0x0004], 0        ; 0x1ed7
    mov word [bp - 0x0002], 0        ; 0x1edc
@..api_idx_00ca.l8:
    mov ax, 6                        ; 0x1ee1
    imul word [bp - 0x0002]          ; 0x1ee4
    mov bx, ax                       ; 0x1ee7
    mov al, byte [bx + 0x625]        ; 0x1ee9
    sub ah, ah                       ; 0x1eed
    test word [bp - 0x000c], ax      ; 0x1eef
    je short @..api_idx_00ca.l9      ; 0x1ef2
    mov al, byte [bx + 0x621]        ; 0x1ef4
    sub ah, ah                       ; 0x1ef8
    cmp ax, word [bp - 0x000a]       ; 0x1efa
    jg short @..api_idx_00ca.l9      ; 0x1efd
    push word [bp - 0x0002]          ; 0x1eff
    lea ax, word [bp - 0x001e]       ; 0x1f02
    push ax                          ; 0x1f05
    call ds_dispatch_ec74            ; 0x1f06
    add sp, byte 4                   ; 0x1f09
    test ax, ax                      ; 0x1f0c
    jne short @..api_idx_00ca.l9     ; 0x1f0e
    mov ax, 1                        ; 0x1f10
    push ax                          ; 0x1f13
    push word [bp - 0x0002]          ; 0x1f14
    mov ax, 0x248                    ; 0x1f17
    imul word [bp + 0x4]             ; 0x1f1a
    add ax, 0x5e12                   ; 0x1f1d
    push ax                          ; 0x1f20
    call ds_dispatch_ec41            ; 0x1f21
    add sp, byte 6                   ; 0x1f24
    inc word [bp - 0x0004]           ; 0x1f27
@..api_idx_00ca.l9:
    inc word [bp - 0x0002]           ; 0x1f2a
    mov ax, word [bp - 0x0002]       ; 0x1f2d
    cmp ax, strict word 0x66         ; 0x1f30
    jl short @..api_idx_00ca.l8      ; 0x1f33
    cmp word [bp - 0x0004], byte 0   ; 0x1f35
    jne short @..api_idx_00ca.l10    ; 0x1f39
    mov ax, 0x248                    ; 0x1f3b
    imul word [bp + 0x4]             ; 0x1f3e
    add ax, word [bp + 0x6]          ; 0x1f41
    mov bx, ax                       ; 0x1f44
    mov byte [bx + 0x5d50], 0        ; 0x1f46
    mov ax, 0x10                     ; 0x1f4b
    push ax                          ; 0x1f4e
    mov ax, 0x248                    ; 0x1f4f
    imul word [bp + 0x4]             ; 0x1f52
    add ax, 0x5e12                   ; 0x1f55
    push ax                          ; 0x1f58
    lea ax, word [bp - 0x001e]       ; 0x1f59
    push ax                          ; 0x1f5c
    call ds_dispatch_fedc            ; 0x1f5d
    add sp, byte 6                   ; 0x1f60
    ret                              ; 0x1f63
@..api_idx_00ca.l10:
    lea ax, word [bp - 0x007a]       ; 0x1f64
    push ax                          ; 0x1f67
    mov ax, 0x2be                    ; 0x1f68
    push ax                          ; 0x1f6b
    call ds_dispatch_b53b            ; 0x1f6c
    add sp, byte 4                   ; 0x1f6f
    lea ax, word [bp - 0x00ca]       ; 0x1f72
    push ax                          ; 0x1f76
    mov ax, 0x248                    ; 0x1f77
    imul word [bp + 0x4]             ; 0x1f7a
    mov bx, ax                       ; 0x1f7d
    mov al, byte [bx + 0x5e2d]       ; 0x1f7f
    sub ah, ah                       ; 0x1f83
    add ax, strict word 0x78         ; 0x1f85
    push ax                          ; 0x1f88
    call ds_dispatch_b53b            ; 0x1f89
    add sp, byte 4                   ; 0x1f8c
    mov ax, 0x24                     ; 0x1f8f
    push ax                          ; 0x1f92
    lea ax, word [bp - 0x00ca]       ; 0x1f93
    push ax                          ; 0x1f97
    lea ax, word [bp - 0x007a]       ; 0x1f98
    push ax                          ; 0x1f9b
    call ds_dispatch_b300            ; 0x1f9c
    add sp, byte 6                   ; 0x1f9f
    mov ax, 1                        ; 0x1fa2
    push ax                          ; 0x1fa5
    lea ax, word [bp - 0x007a]       ; 0x1fa6
    push ax                          ; 0x1fa9
    call api_idx_0004_5              ; 0x1faa
    add sp, byte 4                   ; 0x1fad
    mov ax, 0                        ; 0x1fb0
    push ax                          ; 0x1fb3
    mov ax, 1                        ; 0x1fb4
    push ax                          ; 0x1fb7
    mov ax, 0x7ec                    ; 0x1fb8
    push ax                          ; 0x1fbb
    push word [bp + 0x4]             ; 0x1fbc
    call api_idx_0050                ; 0x1fbf
    add sp, byte 8                   ; 0x1fc2
    mov word [bp - 0x0004], ax       ; 0x1fc5
    mov ax, 0x10                     ; 0x1fc8
    push ax                          ; 0x1fcb
    mov ax, 0x248                    ; 0x1fcc
    imul word [bp + 0x4]             ; 0x1fcf
    add ax, 0x5e12                   ; 0x1fd2
    push ax                          ; 0x1fd5
    lea ax, word [bp - 0x001e]       ; 0x1fd6
    push ax                          ; 0x1fd9
    call ds_dispatch_fedc            ; 0x1fda
    add sp, byte 6                   ; 0x1fdd
    cmp word [bp - 0x0004], byte 0   ; 0x1fe0
    je short @..api_idx_00ca.l11     ; 0x1fe4
    jmp near @..api_idx_00ca.l13     ; 0x1fe6
@..api_idx_00ca.l11:
    mov ax, word [data_904e]         ; 0x1fe9
    mov cx, 0x100                    ; 0x1fec
    cwd                              ; 0x1fef
    idiv cx                          ; 0x1ff0
    mov word [bp - 0x0008], ax       ; 0x1ff2
    mov word [bp - 0x0006], dx       ; 0x1ff5
    mov ax, 1                        ; 0x1ff8
    push ax                          ; 0x1ffb
    push dx                          ; 0x1ffc
    mov ax, 0x248                    ; 0x1ffd
    imul word [bp + 0x4]             ; 0x2000
    add ax, 0x5e12                   ; 0x2003
    push ax                          ; 0x2006
    call ds_dispatch_ec41            ; 0x2007
    add sp, byte 6                   ; 0x200a
    mov ax, 0x248                    ; 0x200d
    imul word [bp + 0x4]             ; 0x2010
    add ax, word [bp - 0x000e]       ; 0x2013
    mov bx, ax                       ; 0x2016
    mov al, byte [bx + 0x5d6c]       ; 0x2018
    sub ah, ah                       ; 0x201c
    mov cx, 0x14                     ; 0x201e
    cwd                              ; 0x2021
    idiv cx                          ; 0x2022
    push ax                          ; 0x2024
    call ds_dispatch_b7a9            ; 0x2025
    pop cx                           ; 0x2028
    push ax                          ; 0x2029
    mov ax, 6                        ; 0x202a
    imul word [bp - 0x0006]          ; 0x202d
    mov bx, ax                       ; 0x2030
    mov al, byte [bx + 0x621]        ; 0x2032
    sub ah, ah                       ; 0x2036
    push ax                          ; 0x2038
    mov ax, 0x248                    ; 0x2039
    imul word [bp + 0x4]             ; 0x203c
    mov bx, ax                       ; 0x203f
    mov al, byte [bx + 0x5d66]       ; 0x2041
    sub ah, ah                       ; 0x2045
    mov cx, 6                        ; 0x2047
    cwd                              ; 0x204a
    idiv cx                          ; 0x204b
    mov cx, ax                       ; 0x204d
    pop ax                           ; 0x204f
    imul cx                          ; 0x2050
    mov cx, ax                       ; 0x2052
    pop ax                           ; 0x2054
    add ax, cx                       ; 0x2055
    inc ax                           ; 0x2057
    mov word [bp - 0x0002], ax       ; 0x2058
    mov ax, 6                        ; 0x205b
    imul word [bp - 0x0006]          ; 0x205e
    mov bx, ax                       ; 0x2061
    mov al, byte [bx + 0x620]        ; 0x2063
    sub ah, ah                       ; 0x2067
    mov word [bp - 0x0004], ax       ; 0x2069
    mov ax, 0x248                    ; 0x206c
    imul word [bp + 0x4]             ; 0x206f
    mov cx, word [bp - 0x0004]       ; 0x2072
    shl cx, 1                        ; 0x2075
    shl cx, 1                        ; 0x2077
    add ax, cx                       ; 0x2079
    mov bx, ax                       ; 0x207b
    mov ax, word [bx + 0x5c1e]       ; 0x207d
    add ax, word [bp - 0x0002]       ; 0x2081
    push ax                          ; 0x2084
    mov ax, 6                        ; 0x2085
    imul word [bp - 0x0006]          ; 0x2088
    mov bx, ax                       ; 0x208b
    mov al, byte [bx + 0x622]        ; 0x208d
    sub ah, ah                       ; 0x2091
    mov cx, ax                       ; 0x2093
    pop ax                           ; 0x2095
    cmp ax, cx                       ; 0x2096
    jge short @..api_idx_00ca.l12    ; 0x2098
    mov ax, 0x248                    ; 0x209a
    imul word [bp + 0x4]             ; 0x209d
    mov dx, word [bp - 0x0004]       ; 0x20a0
    shl dx, 1                        ; 0x20a3
    shl dx, 1                        ; 0x20a5
    add ax, dx                       ; 0x20a7
    mov bx, ax                       ; 0x20a9
    sub cx, word [bx + 0x5c1e]       ; 0x20ab
    mov word [bp - 0x0002], cx       ; 0x20af
@..api_idx_00ca.l12:
    mov ax, word [bp - 0x0002]       ; 0x20b2
    push ax                          ; 0x20b5
    mov ax, 0x248                    ; 0x20b6
    imul word [bp + 0x4]             ; 0x20b9
    mov cx, ax                       ; 0x20bc
    mov dx, word [bp - 0x0004]       ; 0x20be
    shl dx, 1                        ; 0x20c1
    shl dx, 1                        ; 0x20c3
    add ax, dx                       ; 0x20c5
    mov bx, ax                       ; 0x20c7
    pop ax                           ; 0x20c9
    add word [bx + 0x5c1e], ax       ; 0x20ca
    add word [bx + 0x5c1c], ax       ; 0x20ce
    add cx, word [bp + 0x6]          ; 0x20d2
    mov bx, cx                       ; 0x20d5
    dec byte [bx + 0x5d50]           ; 0x20d7
    push word [bp + 0x4]             ; 0x20db
    call api_idx_0004                ; 0x20de
    pop cx                           ; 0x20e1
@..api_idx_00ca.l13:
    ret                              ; 0x20e2
math_loc_20e3:
    mov ax, 0                        ; 0x20e3
    call ds_dispatch_f40b            ; 0x20e6
    les bx, word [data_0002]         ; 0x20e9
    mov ax, word [es:bx]             ; 0x20ed
    mov dx, word [es:bx + 0x2]       ; 0x20f0
    mov word [data_9090], dx         ; 0x20f4
    mov word [data_908e], ax         ; 0x20f8
    mov ax, word [data_908e]         ; 0x20fb
    mov dx, word [data_9090]         ; 0x20fe
    sub ax, word [data_908a]         ; 0x2102
    sbb dx, word [data_908c]         ; 0x2106
    mov word [data_9094], dx         ; 0x210a
    mov word [data_9092], ax         ; 0x210e
    mov ax, word [data_948c]         ; 0x2111
    cwd                              ; 0x2114
    mov cx, ax                       ; 0x2115
    mov bx, dx                       ; 0x2117
    mov ax, word [data_9092]         ; 0x2119
    mov dx, word [data_9094]         ; 0x211c
    cmp bx, dx                       ; 0x2120
    jg short @..math_loc_20e3.l1     ; 0x2122
    jne short @..math_loc_20e3.l2    ; 0x2124
    cmp cx, ax                       ; 0x2126
    jbe short @..math_loc_20e3.l2    ; 0x2128
@..math_loc_20e3.l1:
    jmp short @..math_loc_20e3.l3    ; 0x212a
@..math_loc_20e3.l2:
    mov ax, word [data_908e]         ; 0x212c
    mov dx, word [data_9090]         ; 0x212f
    mov word [data_908c], dx         ; 0x2133
    mov word [data_908a], ax         ; 0x2137
    mov ax, word [data_943a]         ; 0x213a
    inc ax                           ; 0x213d
    mov cx, 3                        ; 0x213e
    cwd                              ; 0x2141
    idiv cx                          ; 0x2142
    mov word [data_943a], dx         ; 0x2144
    push dx                          ; 0x2148
    call api_idx_000a                ; 0x2149
    pop cx                           ; 0x214c
    mov ax, 0x41                     ; 0x214d
    push ax                          ; 0x2150
    mov ax, 0x65                     ; 0x2151
    push ax                          ; 0x2154
    mov ax, 0x19                     ; 0x2155
    push ax                          ; 0x2158
    mov ax, 0x5a                     ; 0x2159
    push ax                          ; 0x215c
    call ds_dispatch_e8da            ; 0x215d
    add sp, byte 8                   ; 0x2160
    mov ax, 0xffff                   ; 0x2163
    push ax                          ; 0x2166
    call api_idx_0002_2              ; 0x2167
    pop cx                           ; 0x216a
    push word [bp + 0x4]             ; 0x216b
    call api_idx_0004                ; 0x216e
    pop cx                           ; 0x2171
    mov ax, 0xbf                     ; 0x2172
    push ax                          ; 0x2175
    mov ax, 0x13f                    ; 0x2176
    push ax                          ; 0x2179
    mov ax, 0x7e                     ; 0x217a
    push ax                          ; 0x217d
    mov ax, 0xb8                     ; 0x217e
    push ax                          ; 0x2181
    call ds_dispatch_e8da            ; 0x2182
    add sp, byte 8                   ; 0x2185
@..math_loc_20e3.l3:
    ret                              ; 0x2188
math_loc_2189:
    mov ax, 0                        ; 0x2189
    call ds_dispatch_f40b            ; 0x218c
    push word [bp + 0x4]             ; 0x218f
    call api_idx_007c                ; 0x2192
    pop cx                           ; 0x2195
    push word [bp + 0x4]             ; 0x2196
    call api_idx_0080                ; 0x2199
    pop cx                           ; 0x219c
    cmp word [bp + 0x6], byte 0      ; 0x219d
    jne short @..math_loc_2189.l1    ; 0x21a1
    push word [bp + 0x4]             ; 0x21a3
    call api_idx_004c                ; 0x21a6
    pop cx                           ; 0x21a9
    mov ax, 0xc7                     ; 0x21aa
    push ax                          ; 0x21ad
    mov ax, 0x13f                    ; 0x21ae
    push ax                          ; 0x21b1
    mov ax, 0                        ; 0x21b2
    push ax                          ; 0x21b5
    push ax                          ; 0x21b6
    call ds_dispatch_e8da            ; 0x21b7
    add sp, byte 8                   ; 0x21ba
@..math_loc_2189.l1:
    ret                              ; 0x21bd
api_idx_0004_3:
    mov ax, 0xfffc                   ; 0x21be
    call ds_dispatch_f40b            ; 0x21c1
    mov bx, word [bp + 0x8]          ; 0x21c4
    mov al, byte [bx + 0x44]         ; 0x21c7
    push ax                          ; 0x21ca
    mov ax, 0x248                    ; 0x21cb
    imul word [bp + 0x4]             ; 0x21ce
    mov cx, ax                       ; 0x21d1
    mov ax, 0x12                     ; 0x21d3
    imul word [bp + 0x6]             ; 0x21d6
    mov dx, ax                       ; 0x21d9
    add cx, ax                       ; 0x21db
    mov bx, cx                       ; 0x21dd
    pop ax                           ; 0x21df
    mov byte [bx + 0x5d31], al       ; 0x21e0
    mov word [bp - 0x0004], 0        ; 0x21e4
@..api_idx_0004_3.l1:
    mov bx, word [bp + 0x8]          ; 0x21e9
    mov si, word [bp - 0x0004]       ; 0x21ec
    mov al, byte [bx + si + 0x2a]    ; 0x21ef
    push ax                          ; 0x21f2
    mov ax, 0x248                    ; 0x21f3
    imul word [bp + 0x4]             ; 0x21f6
    mov cx, ax                       ; 0x21f9
    mov ax, 0x12                     ; 0x21fb
    imul word [bp + 0x6]             ; 0x21fe
    mov dx, ax                       ; 0x2201
    add cx, ax                       ; 0x2203
    add cx, si                       ; 0x2205
    mov bx, cx                       ; 0x2207
    pop ax                           ; 0x2209
    mov byte [bx + 0x5d28], al       ; 0x220a
    inc word [bp - 0x0004]           ; 0x220e
    mov ax, word [bp - 0x0004]       ; 0x2211
    cmp ax, strict word 8            ; 0x2214
    jl short @..api_idx_0004_3.l1    ; 0x2217
    mov ax, 0x248                    ; 0x2219
    imul word [bp + 0x4]             ; 0x221c
    mov bx, ax                       ; 0x221f
    mov al, byte [bx + 0x5d8d]       ; 0x2221
    sub ah, ah                       ; 0x2225
    mov cx, 5                        ; 0x2227
    cwd                              ; 0x222a
    idiv cx                          ; 0x222b
    mov word [bp - 0x0004], ax       ; 0x222d
    cmp byte [bx + 0x5e2d], 0xc      ; 0x2230
    je short @..api_idx_0004_3.l2    ; 0x2235
    cmp byte [bx + 0x5e2d], 0xd      ; 0x2237
    jne short @..api_idx_0004_3.l3   ; 0x223c
@..api_idx_0004_3.l2:
    mov ax, 0x12                     ; 0x223e
    imul word [bp + 0x6]             ; 0x2241
    add bx, ax                       ; 0x2244
    mov al, byte [bx + 0x5d2e]       ; 0x2246
    sub ah, ah                       ; 0x224a
    mov cx, ax                       ; 0x224c
    mov ax, word [bp - 0x0004]       ; 0x224e
    add cx, ax                       ; 0x2251
    mov ax, cx                       ; 0x2253
    add ax, strict word 5            ; 0x2255
    mov byte [bx + 0x5d2e], al       ; 0x2258
    jmp short @..api_idx_0004_3.l4   ; 0x225c
@..api_idx_0004_3.l3:
    cmp word [bp - 0x0004], byte 0   ; 0x225e
    jle short @..api_idx_0004_3.l4   ; 0x2262
    mov ax, 0x248                    ; 0x2264
    imul word [bp + 0x4]             ; 0x2267
    push ax                          ; 0x226a
    mov ax, 0x12                     ; 0x226b
    imul word [bp + 0x6]             ; 0x226e
    mov cx, ax                       ; 0x2271
    pop ax                           ; 0x2273
    add ax, cx                       ; 0x2274
    mov bx, ax                       ; 0x2276
    mov al, byte [bx + 0x5d2e]       ; 0x2278
    sub ah, ah                       ; 0x227c
    add ax, word [bp - 0x0004]       ; 0x227e
    mov byte [bx + 0x5d2e], al       ; 0x2281
@..api_idx_0004_3.l4:
    mov bx, word [bp + 0x8]          ; 0x2285
    mov al, byte [bx + 0x45]         ; 0x2288
    push ax                          ; 0x228b
    mov ax, 0x248                    ; 0x228c
    imul word [bp + 0x4]             ; 0x228f
    mov cx, ax                       ; 0x2292
    mov ax, 0x12                     ; 0x2294
    imul word [bp + 0x6]             ; 0x2297
    mov dx, ax                       ; 0x229a
    add cx, ax                       ; 0x229c
    mov bx, cx                       ; 0x229e
    pop ax                           ; 0x22a0
    mov byte [bx + 0x5d30], al       ; 0x22a1
    mov bx, word [bp + 0x8]          ; 0x22a5
    cmp byte [bx + 0x38], 4          ; 0x22a8
    jne short @..api_idx_0004_3.l6   ; 0x22ac
    mov al, byte [bx + 0x41]         ; 0x22ae
    cbw                              ; 0x22b1
    mov cx, 5                        ; 0x22b2
    imul cx                          ; 0x22b5
    mov cx, ax                       ; 0x22b7
    mov ax, 0                        ; 0x22b9
    sub ax, cx                       ; 0x22bc
    push ax                          ; 0x22be
    mov ax, 0x248                    ; 0x22bf
    imul word [bp + 0x4]             ; 0x22c2
    mov cx, ax                       ; 0x22c5
    mov ax, 0x12                     ; 0x22c7
    imul word [bp + 0x6]             ; 0x22ca
    mov dx, ax                       ; 0x22cd
    add cx, ax                       ; 0x22cf
    mov bx, cx                       ; 0x22d1
    pop ax                           ; 0x22d3
    mov byte [bx + 0x5d32], al       ; 0x22d4
    mov ax, 0x248                    ; 0x22d8
    imul word [bp + 0x4]             ; 0x22db
    mov bx, ax                       ; 0x22de
    cmp byte [bx + 0x5e2d], 4        ; 0x22e0
    jne short @..api_idx_0004_3.l5   ; 0x22e5
    mov bx, cx                       ; 0x22e7
    add byte [bx + 0x5d32], 0xf1     ; 0x22e9
    mov al, byte [bx + 0x5d2e]       ; 0x22ee
    sub ah, ah                       ; 0x22f2
    shl ax, 1                        ; 0x22f4
    mov byte [bx + 0x5d2e], al       ; 0x22f6
@..api_idx_0004_3.l5:
    jmp near @..api_idx_0004_3.l12   ; 0x22fa
@..api_idx_0004_3.l6:
    mov ax, 0x248                    ; 0x22fd
    imul word [bp + 0x4]             ; 0x2300
    push ax                          ; 0x2303
    mov ax, 0x12                     ; 0x2304
    imul word [bp + 0x6]             ; 0x2307
    mov cx, ax                       ; 0x230a
    pop ax                           ; 0x230c
    add ax, cx                       ; 0x230d
    mov bx, ax                       ; 0x230f
    mov byte [bx + 0x5d32], 0        ; 0x2311
    cmp word [bp + 0x6], byte 0      ; 0x2316
    jne short @..api_idx_0004_3.l9   ; 0x231a
    mov ax, 0x248                    ; 0x231c
    imul word [bp + 0x4]             ; 0x231f
    mov bx, ax                       ; 0x2322
    mov al, byte [bx + 0x5d32]       ; 0x2324
    cbw                              ; 0x2328
    mov cx, 0                        ; 0x2329
    cmp byte [bx + 0x5d68], 0xf      ; 0x232c
    jbe short @..api_idx_0004_3.l7   ; 0x2331
    mov cx, 5                        ; 0x2333
@..api_idx_0004_3.l7:
    sub ax, cx                       ; 0x2336
    mov byte [bx + 0x5d32], al       ; 0x2338
    cbw                              ; 0x233c
    mov cx, 0                        ; 0x233d
    cmp byte [bx + 0x5d68], 0x11     ; 0x2340
    jbe short @..api_idx_0004_3.l8   ; 0x2345
    mov cx, 5                        ; 0x2347
@..api_idx_0004_3.l8:
    sub ax, cx                       ; 0x234a
    mov byte [bx + 0x5d32], al       ; 0x234c
    jmp short @..api_idx_0004_3.l11  ; 0x2350
@..api_idx_0004_3.l9:
    mov ax, 0x248                    ; 0x2352
    imul word [bp + 0x4]             ; 0x2355
    mov bx, ax                       ; 0x2358
    mov al, byte [bx + 0x5d44]       ; 0x235a
    cbw                              ; 0x235e
    mov cx, 0                        ; 0x235f
    cmp byte [bx + 0x5d68], 0x11     ; 0x2362
    jbe short @..api_idx_0004_3.l10  ; 0x2367
    mov cx, 5                        ; 0x2369
@..api_idx_0004_3.l10:
    sub ax, cx                       ; 0x236c
    mov byte [bx + 0x5d44], al       ; 0x236e
@..api_idx_0004_3.l11:
    mov ax, 0x248                    ; 0x2372
    imul word [bp + 0x4]             ; 0x2375
    push ax                          ; 0x2378
    mov ax, 0x12                     ; 0x2379
    imul word [bp + 0x6]             ; 0x237c
    mov cx, ax                       ; 0x237f
    pop ax                           ; 0x2381
    add ax, cx                       ; 0x2382
    mov bx, ax                       ; 0x2384
    mov al, byte [bx + 0x5d32]       ; 0x2386
    cbw                              ; 0x238a
    push ax                          ; 0x238b
    mov bx, word [bp + 0x8]          ; 0x238c
    mov al, byte [bx + 0x41]         ; 0x238f
    cbw                              ; 0x2392
    mov cx, 5                        ; 0x2393
    imul cx                          ; 0x2396
    mov cx, ax                       ; 0x2398
    pop ax                           ; 0x239a
    sub ax, cx                       ; 0x239b
    push ax                          ; 0x239d
    mov ax, 0x248                    ; 0x239e
    imul word [bp + 0x4]             ; 0x23a1
    mov cx, ax                       ; 0x23a4
    mov ax, 0x12                     ; 0x23a6
    imul word [bp + 0x6]             ; 0x23a9
    mov dx, ax                       ; 0x23ac
    add cx, ax                       ; 0x23ae
    mov bx, cx                       ; 0x23b0
    pop ax                           ; 0x23b2
    mov byte [bx + 0x5d32], al       ; 0x23b3
@..api_idx_0004_3.l12:
    mov si, word [bp + 0x8]          ; 0x23b7
    add si, byte 0x1e                ; 0x23ba
    mov ax, 0x248                    ; 0x23bd
    imul word [bp + 0x4]             ; 0x23c0
    push ax                          ; 0x23c3
    mov ax, 0x12                     ; 0x23c4
    imul word [bp + 0x6]             ; 0x23c7
    mov cx, ax                       ; 0x23ca
    pop ax                           ; 0x23cc
    add ax, cx                       ; 0x23cd
    mov di, ax                       ; 0x23cf
    add ax, 0x5d24                   ; 0x23d1
    mov di, ax                       ; 0x23d4
    mov cx, ds                       ; 0x23d6
    mov es, cx                       ; 0x23d8
    movsw                            ; 0x23da
    movsw                            ; 0x23db
    cmp word [bp + 0x6], byte 0      ; 0x23dc
    jne short @..api_idx_0004_3.l16  ; 0x23e0
    mov ax, 0x248                    ; 0x23e2
    imul word [bp + 0x4]             ; 0x23e5
    mov bx, ax                       ; 0x23e8
    cmp byte [bx + 0x5d64], 0xf      ; 0x23ea
    jbe short @..api_idx_0004_3.l13  ; 0x23ef
    mov ax, 1                        ; 0x23f1
    jmp short @..api_idx_0004_3.l14  ; 0x23f4
@..api_idx_0004_3.l13:
    mov ax, 0                        ; 0x23f6
@..api_idx_0004_3.l14:
    add word [bx + 0x5d24], ax       ; 0x23f9
    mov ax, 0                        ; 0x23fd
    cmp byte [bx + 0x5d64], 0x11     ; 0x2400
    jbe short @..api_idx_0004_3.l15  ; 0x2405
    mov ax, 1                        ; 0x2407
@..api_idx_0004_3.l15:
    add word [bx + 0x5d24], ax       ; 0x240a
@..api_idx_0004_3.l16:
    mov bx, word [bp + 0x8]          ; 0x240e
    mov al, byte [bx + 0x46]         ; 0x2411
    push ax                          ; 0x2414
    mov ax, 0x248                    ; 0x2415
    imul word [bp + 0x4]             ; 0x2418
    mov cx, ax                       ; 0x241b
    mov ax, 0x12                     ; 0x241d
    imul word [bp + 0x6]             ; 0x2420
    mov dx, ax                       ; 0x2423
    add cx, ax                       ; 0x2425
    mov bx, cx                       ; 0x2427
    pop ax                           ; 0x2429
    mov byte [bx + 0x5d33], al       ; 0x242a
    mov bx, word [bp + 0x8]          ; 0x242e
    mov al, byte [bx + 0x42]         ; 0x2431
    mov bx, cx                       ; 0x2434
    mov byte [bx + 0x5d34], al       ; 0x2436
    mov bx, word [bp + 0x8]          ; 0x243a
    mov al, byte [bx + 0x43]         ; 0x243d
    mov bx, cx                       ; 0x2440
    mov byte [bx + 0x5d35], al       ; 0x2442
    ret                              ; 0x2446
api_idx_002a:
    mov ax, 0xffd6                   ; 0x2447
    call ds_dispatch_f40b            ; 0x244a
    mov ax, 0                        ; 0x244d
    push ax                          ; 0x2450
    mov ax, 0x28                     ; 0x2451
    push ax                          ; 0x2454
    lea ax, word [bp - 0x002a]       ; 0x2455
    push ax                          ; 0x2458
    call ds_dispatch_f306            ; 0x2459
    add sp, byte 6                   ; 0x245c
    push word [bp + 0x4]             ; 0x245f
    lea ax, word [bp - 0x002a]       ; 0x2462
    push ax                          ; 0x2465
    call ds_dispatch_f364            ; 0x2466
    add sp, byte 4                   ; 0x2469
    mov ax, 0x2f                     ; 0x246c
    push ax                          ; 0x246f
    lea ax, word [bp - 0x002a]       ; 0x2470
    push ax                          ; 0x2473
    call ds_dispatch_ee4a            ; 0x2474
    add sp, byte 4                   ; 0x2477
    mov word [bp - 0x0002], ax       ; 0x247a
    cmp ax, strict word 0xffff       ; 0x247d
    jne short @..api_idx_002a.l1     ; 0x2480
    lea ax, word [bp - 0x002a]       ; 0x2482
    push ax                          ; 0x2485
    call ds_dispatch_fa90            ; 0x2486
    pop cx                           ; 0x2489
    mov word [bp - 0x0002], ax       ; 0x248a
@..api_idx_002a.l1:
    cmp word [bp - 0x0002], byte 0x0a ; 0x248d
    jle short @..api_idx_002a.l2     ; 0x2491
    mov word [bp - 0x0002], 0xa      ; 0x2493
@..api_idx_002a.l2:
    mov bx, word [bp - 0x0002]       ; 0x2498
    add bx, bp                       ; 0x249b
    mov byte [bx - 0x002a], 0        ; 0x249d
    mov byte [bx - 0x001f], 0        ; 0x24a1
    mov ax, 0                        ; 0x24a5
    push ax                          ; 0x24a8
    push word [bp + 0xa]             ; 0x24a9
    call ds_dispatch_e823            ; 0x24ac
    add sp, byte 4                   ; 0x24af
    push word [bp + 0x8]             ; 0x24b2
    push word [bp + 0x6]             ; 0x24b5
    call ds_dispatch_e809            ; 0x24b8
    add sp, byte 4                   ; 0x24bb
    mov ax, 0                        ; 0x24be
    push ax                          ; 0x24c1
    lea ax, word [bp - 0x002a]       ; 0x24c2
    push ax                          ; 0x24c5
    call ds_dispatch_e84e            ; 0x24c6
    add sp, byte 4                   ; 0x24c9
    mov ax, word [bp + 0x8]          ; 0x24cc
    add ax, strict word 6            ; 0x24cf
    push ax                          ; 0x24d2
    push word [bp + 0x6]             ; 0x24d3
    call ds_dispatch_e809            ; 0x24d6
    add sp, byte 4                   ; 0x24d9
    mov ax, 0                        ; 0x24dc
    push ax                          ; 0x24df
    mov ax, word [bp - 0x0002]       ; 0x24e0
    lea cx, word [bp - 0x0029]       ; 0x24e3
    add ax, cx                       ; 0x24e6
    push ax                          ; 0x24e8
    call ds_dispatch_e84e            ; 0x24e9
    add sp, byte 4                   ; 0x24ec
    ret                              ; 0x24ef
api_idx_0080:
    mov ax, 0xff80                   ; 0x24f0
    call ds_dispatch_f40b            ; 0x24f3
    mov ax, 0                        ; 0x24f6
    push ax                          ; 0x24f9
    push ax                          ; 0x24fa
    push word [data_9424]            ; 0x24fb
    push word [data_9422]            ; 0x24ff
    call ds_dispatch_e942            ; 0x2503
    add sp, byte 8                   ; 0x2506
    mov ax, 0                        ; 0x2509
    push ax                          ; 0x250c
    push ax                          ; 0x250d
    push word [data_9428]            ; 0x250e
    push word [data_9426]            ; 0x2512
    call ds_dispatch_e942            ; 0x2516
    add sp, byte 8                   ; 0x2519
    push word [bp + 0x4]             ; 0x251c
    call api_idx_0012                ; 0x251f
    pop cx                           ; 0x2522
    mov si, ax                       ; 0x2523
    lea di, word [bp - 0x0018]       ; 0x2525
    mov cx, ds                       ; 0x2528
    mov es, cx                       ; 0x252a
    mov cx, 7                        ; 0x252c
    rep movsw                        ; 0x252f
    mov ax, 0x248                    ; 0x2531
    imul word [bp + 0x4]             ; 0x2534
    mov bx, ax                       ; 0x2537
    mov al, byte [bx + 0x5dab]       ; 0x2539
    cbw                              ; 0x253d
    add ax, word [bp - 0x0018]       ; 0x253e
    mov word [bp - 0x000a], ax       ; 0x2541
    mov al, byte [bx + 0x5dac]       ; 0x2544
    cbw                              ; 0x2548
    mov cx, ax                       ; 0x2549
    mov ax, word [bp - 0x000a]       ; 0x254b
    add cx, ax                       ; 0x254e
    mov word [bp - 0x0008], cx       ; 0x2550
    mov al, byte [bx + 0x5daa]       ; 0x2553
    cbw                              ; 0x2557
    add ax, cx                       ; 0x2558
    mov word [bp - 0x0006], ax       ; 0x255a
    lea ax, word [bp - 0x0068]       ; 0x255d
    push ax                          ; 0x2560
    mov ax, 0xd8                     ; 0x2561
    push ax                          ; 0x2564
    call ds_dispatch_b53b            ; 0x2565
    add sp, byte 4                   ; 0x2568
    lea ax, word [bp - 0x0068]       ; 0x256b
    push ax                          ; 0x256e
    call ds_dispatch_fa90            ; 0x256f
    pop cx                           ; 0x2572
    mov word [bp - 0x0004], ax       ; 0x2573
    mov bx, ax                       ; 0x2576
    inc word [bp - 0x0004]           ; 0x2578
    add bx, bp                       ; 0x257b
    mov byte [bx - 0x0068], 0x20     ; 0x257d
    cmp word [bp - 0x0006], byte 0   ; 0x2581
    jle short @..api_idx_0080.l1     ; 0x2585
    mov bx, word [bp - 0x0004]       ; 0x2587
    inc word [bp - 0x0004]           ; 0x258a
    add bx, bp                       ; 0x258d
    mov byte [bx - 0x0068], 0x2b     ; 0x258f
@..api_idx_0080.l1:
    mov ax, word [bp - 0x0004]       ; 0x2593
    lea cx, word [bp - 0x0068]       ; 0x2596
    add ax, cx                       ; 0x2599
    push ax                          ; 0x259b
    push word [bp - 0x0006]          ; 0x259c
    call ds_dispatch_b27d            ; 0x259f
    add sp, byte 4                   ; 0x25a2
    lea ax, word [bp - 0x0068]       ; 0x25a5
    push ax                          ; 0x25a8
    call ds_dispatch_fa90            ; 0x25a9
    pop cx                           ; 0x25ac
    mov word [bp - 0x0004], ax       ; 0x25ad
    mov bx, ax                       ; 0x25b0
    inc word [bp - 0x0004]           ; 0x25b2
    add bx, bp                       ; 0x25b5
    mov byte [bx - 0x0068], 0x20     ; 0x25b7
    mov bx, word [bp - 0x0004]       ; 0x25bb
    inc word [bp - 0x0004]           ; 0x25be
    add bx, bp                       ; 0x25c1
    mov byte [bx - 0x0068], 0x28     ; 0x25c3
    cmp word [bp - 0x0008], byte 0   ; 0x25c7
    jl short @..api_idx_0080.l2      ; 0x25cb
    mov bx, word [bp - 0x0004]       ; 0x25cd
    inc word [bp - 0x0004]           ; 0x25d0
    add bx, bp                       ; 0x25d3
    mov byte [bx - 0x0068], 0x2b     ; 0x25d5
@..api_idx_0080.l2:
    mov ax, word [bp - 0x0004]       ; 0x25d9
    lea cx, word [bp - 0x0068]       ; 0x25dc
    add ax, cx                       ; 0x25df
    push ax                          ; 0x25e1
    push word [bp - 0x0008]          ; 0x25e2
    call ds_dispatch_b27d            ; 0x25e5
    add sp, byte 4                   ; 0x25e8
    lea ax, word [bp - 0x0068]       ; 0x25eb
    push ax                          ; 0x25ee
    call ds_dispatch_fa90            ; 0x25ef
    pop cx                           ; 0x25f2
    mov word [bp - 0x0004], ax       ; 0x25f3
    mov bx, ax                       ; 0x25f6
    inc word [bp - 0x0004]           ; 0x25f8
    add bx, bp                       ; 0x25fb
    mov byte [bx - 0x0068], 0x29     ; 0x25fd
    mov bx, word [bp - 0x0004]       ; 0x2601
    add bx, bp                       ; 0x2604
    mov byte [bx - 0x0068], 0        ; 0x2606
    mov ax, 0                        ; 0x260a
    push ax                          ; 0x260d
    mov ax, 0xeb                     ; 0x260e
    push ax                          ; 0x2611
    call ds_dispatch_e823            ; 0x2612
    add sp, byte 4                   ; 0x2615
    mov ax, 0x1e                     ; 0x2618
    push ax                          ; 0x261b
    lea ax, word [bp - 0x0068]       ; 0x261c
    push ax                          ; 0x261f
    call ds_dispatch_fa90            ; 0x2620
    pop cx                           ; 0x2623
    mov cx, 6                        ; 0x2624
    imul cx                          ; 0x2627
    mov cx, data_0002                ; 0x2629
    cwd                              ; 0x262c
    idiv cx                          ; 0x262d
    mov cx, ax                       ; 0x262f
    mov ax, 0x10e                    ; 0x2631
    sub ax, cx                       ; 0x2634
    push ax                          ; 0x2636
    call ds_dispatch_e809            ; 0x2637
    add sp, byte 4                   ; 0x263a
    mov ax, 0                        ; 0x263d
    push ax                          ; 0x2640
    lea ax, word [bp - 0x0068]       ; 0x2641
    push ax                          ; 0x2644
    call ds_dispatch_e84e            ; 0x2645
    add sp, byte 4                   ; 0x2648
    mov word [bp - 0x0074], 0x114    ; 0x264b
    mov word [bp - 0x0080], 0x2e     ; 0x2650
    mov word [bp - 0x0072], 0x114    ; 0x2655
    mov word [bp - 0x007e], data_0044 ; 0x265a
    mov word [bp - 0x0070], 0x114    ; 0x265f
    mov word [bp - 0x007c], 0x5a     ; 0x2664
    mov word [bp - 0x006e], 0x126    ; 0x2669
    mov word [bp - 0x007a], 0x4f     ; 0x266e
    mov word [bp - 0x006c], 0x114    ; 0x2673
    mov word [bp - 0x0078], 0x70     ; 0x2678
    mov word [bp - 0x0002], 0        ; 0x267d
@..api_idx_0080.l3:
    mov ax, word [bp - 0x0002]       ; 0x2682
    shl ax, 1                        ; 0x2685
    mov bx, ax                       ; 0x2687
    add bx, bp                       ; 0x2689
    push word [bx - 0x0080]          ; 0x268b
    mov bx, ax                       ; 0x268e
    add bx, bp                       ; 0x2690
    push word [bx - 0x0074]          ; 0x2692
    call ds_dispatch_e809            ; 0x2695
    add sp, byte 4                   ; 0x2698
    mov ax, 0                        ; 0x269b
    push ax                          ; 0x269e
    mov ax, 0x248                    ; 0x269f
    imul word [bp + 0x4]             ; 0x26a2
    add ax, word [bp - 0x0002]       ; 0x26a5
    mov bx, ax                       ; 0x26a8
    mov al, byte [bx + 0x5d4b]       ; 0x26aa
    sub ah, ah                       ; 0x26ae
    cmp ax, 0xff                     ; 0x26b0
    je short @..api_idx_0080.l4      ; 0x26b3
    mov ax, 0x5f                     ; 0x26b5
    jmp short @..api_idx_0080.l5     ; 0x26b8
@..api_idx_0080.l4:
    mov ax, 0xeb                     ; 0x26ba
@..api_idx_0080.l5:
    push ax                          ; 0x26bd
    call ds_dispatch_e823            ; 0x26be
    add sp, byte 4                   ; 0x26c1
    mov ax, 0x248                    ; 0x26c4
    imul word [bp + 0x4]             ; 0x26c7
    add ax, word [bp - 0x0002]       ; 0x26ca
    mov bx, ax                       ; 0x26cd
    mov al, byte [bx + 0x5dad]       ; 0x26cf
    cbw                              ; 0x26d3
    add ax, word [bp - 0x0008]       ; 0x26d4
    mov word [bp - 0x0006], ax       ; 0x26d7
    cmp ax, strict word 0            ; 0x26da
    jl short @..api_idx_0080.l6      ; 0x26dd
    mov ax, 0                        ; 0x26df
    push ax                          ; 0x26e2
    mov ax, 0x2b                     ; 0x26e3
    push ax                          ; 0x26e6
    call ds_dispatch_e830            ; 0x26e7
    add sp, byte 4                   ; 0x26ea
@..api_idx_0080.l6:
    lea ax, word [bp - 0x0068]       ; 0x26ed
    push ax                          ; 0x26f0
    push word [bp - 0x0006]          ; 0x26f1
    call ds_dispatch_b27d            ; 0x26f4
    add sp, byte 4                   ; 0x26f7
    mov ax, 0                        ; 0x26fa
    push ax                          ; 0x26fd
    lea ax, word [bp - 0x0068]       ; 0x26fe
    push ax                          ; 0x2701
    call ds_dispatch_e84e            ; 0x2702
    add sp, byte 4                   ; 0x2705
    inc word [bp - 0x0002]           ; 0x2708
    mov ax, word [bp - 0x0002]       ; 0x270b
    cmp ax, strict word 5            ; 0x270e
    jge short @..api_idx_0080.l7     ; 0x2711
    jmp near @..api_idx_0080.l3      ; 0x2713
@..api_idx_0080.l7:
    ret                              ; 0x2716
api_idx_0004_4:
    mov ax, 0xfffc                   ; 0x2717
    call ds_dispatch_f40b            ; 0x271a
    mov ax, word [bp + 0x6]          ; 0x271d
    mov cx, 5                        ; 0x2720
    cwd                              ; 0x2723
    idiv cx                          ; 0x2724
    mov cx, 0xd                      ; 0x2726
    imul cx                          ; 0x2729
    mov cx, 6                        ; 0x272b
    imul cx                          ; 0x272e
    push ax                          ; 0x2730
    mov ax, word [bp + 0x6]          ; 0x2731
    mov cx, 5                        ; 0x2734
    cwd                              ; 0x2737
    idiv cx                          ; 0x2738
    mov cx, ax                       ; 0x273a
    pop ax                           ; 0x273c
    add ax, cx                       ; 0x273d
    add ax, strict word 4            ; 0x273f
    mov word [bp - 0x0002], ax       ; 0x2742
    shl dx, 1                        ; 0x2745
    mov ax, dx                       ; 0x2747
    mov cx, 6                        ; 0x2749
    imul cx                          ; 0x274c
    push ax                          ; 0x274e
    mov ax, word [bp + 0x6]          ; 0x274f
    mov cx, 5                        ; 0x2752
    cwd                              ; 0x2755
    idiv cx                          ; 0x2756
    mov cx, dx                       ; 0x2758
    shl cx, 1                        ; 0x275a
    pop ax                           ; 0x275c
    add ax, cx                       ; 0x275d
    add ax, strict word 0x72         ; 0x275f
    mov word [bp - 0x0004], ax       ; 0x2762
    push ax                          ; 0x2765
    push word [bp - 0x0002]          ; 0x2766
    call ds_dispatch_e809            ; 0x2769
    add sp, byte 4                   ; 0x276c
    mov ax, 4                        ; 0x276f
    push ax                          ; 0x2772
    mov bx, word [bp + 0x8]          ; 0x2773
    mov al, byte [bx + 0x5]          ; 0x2776
    sub ah, ah                       ; 0x2779
    push ax                          ; 0x277b
    call ds_dispatch_e830            ; 0x277c
    add sp, byte 4                   ; 0x277f
    push word [bp + 0xc]             ; 0x2782
    push word [bp - 0x0004]          ; 0x2785
    mov ax, word [bp - 0x0002]       ; 0x2788
    add ax, strict word 0xe          ; 0x278b
    push ax                          ; 0x278e
    push word [bp + 0xa]             ; 0x278f
    call api_idx_002a                ; 0x2792
    add sp, byte 8                   ; 0x2795
    mov bx, word [bp + 0x8]          ; 0x2798
    mov al, byte [bx + 0x4]          ; 0x279b
    sub ah, ah                       ; 0x279e
    mov bx, ax                       ; 0x27a0
    cmp byte [bx + 0x60e], 1         ; 0x27a2
    jne short @..api_idx_0004_4.l1   ; 0x27a7
    mov ax, word [bp - 0x0004]       ; 0x27a9
    add ax, strict word 6            ; 0x27ac
    push ax                          ; 0x27af
    mov ax, word [bp - 0x0002]       ; 0x27b0
    add ax, strict word 0x38         ; 0x27b3
    push ax                          ; 0x27b6
    call ds_dispatch_e809            ; 0x27b7
    add sp, byte 4                   ; 0x27ba
    mov ax, 0                        ; 0x27bd
    push ax                          ; 0x27c0
    mov ax, data_0002                ; 0x27c1
    push ax                          ; 0x27c4
    call ds_dispatch_e823            ; 0x27c5
    add sp, byte 4                   ; 0x27c8
    mov ax, 0                        ; 0x27cb
    push ax                          ; 0x27ce
    mov ax, 3                        ; 0x27cf
    push ax                          ; 0x27d2
    mov bx, word [bp + 0x8]          ; 0x27d3
    mov al, byte [bx + 0x6]          ; 0x27d6
    sub ah, ah                       ; 0x27d9
    push ax                          ; 0x27db
    call ds_dispatch_b2e7            ; 0x27dc
    add sp, byte 6                   ; 0x27df
@..api_idx_0004_4.l1:
    ret                              ; 0x27e2
api_idx_004c:
    mov ax, 0xffb4                   ; 0x27e3
    call ds_dispatch_f40b            ; 0x27e6
    mov ax, 0                        ; 0x27e9
    push ax                          ; 0x27ec
    push ax                          ; 0x27ed
    push word [data_9420]            ; 0x27ee
    push word [data_941e]            ; 0x27f2
    call ds_dispatch_e942            ; 0x27f6
    add sp, byte 8                   ; 0x27f9
    cmp word [data_948e], byte 0     ; 0x27fc
    je short @..api_idx_004c.l1      ; 0x2801
    mov ax, 0xac                     ; 0x2803
    push ax                          ; 0x2806
    mov ax, 0xa0                     ; 0x2807
    push ax                          ; 0x280a
    call ds_dispatch_e809            ; 0x280b
    add sp, byte 4                   ; 0x280e
    mov ax, 4                        ; 0x2811
    push ax                          ; 0x2814
    mov ax, 0x63                     ; 0x2815
    push ax                          ; 0x2818
    call ds_dispatch_e830            ; 0x2819
    add sp, byte 4                   ; 0x281c
@..api_idx_004c.l1:
    cmp word [data_9490], byte 0     ; 0x281f
    jne short @..api_idx_004c.l2     ; 0x2824
    cmp word [data_948e], byte 0     ; 0x2826
    je short @..api_idx_004c.l5      ; 0x282b
@..api_idx_004c.l2:
    mov word [bp - 0x0002], 0        ; 0x282d
@..api_idx_004c.l3:
    mov ax, 0x18                     ; 0x2832
    push ax                          ; 0x2835
    mov ax, 0xe                      ; 0x2836
    imul word [bp - 0x0002]          ; 0x2839
    add ax, strict word 0x70         ; 0x283c
    push ax                          ; 0x283f
    mov ax, 0x9f                     ; 0x2840
    push ax                          ; 0x2843
    mov ax, 0xe                      ; 0x2844
    imul word [bp - 0x0002]          ; 0x2847
    add ax, strict word 0x70         ; 0x284a
    push ax                          ; 0x284d
    mov ax, 1                        ; 0x284e
    push ax                          ; 0x2851
    call ds_dispatch_e901            ; 0x2852
    add sp, byte 0x0a                ; 0x2855
    inc word [bp - 0x0002]           ; 0x2858
    mov ax, word [bp - 0x0002]       ; 0x285b
    cmp ax, strict word 6            ; 0x285e
    jl short @..api_idx_004c.l3      ; 0x2861
    mov word [bp - 0x0002], 0        ; 0x2863
@..api_idx_004c.l4:
    mov ax, 0x18                     ; 0x2868
    push ax                          ; 0x286b
    mov ax, 0xb6                     ; 0x286c
    push ax                          ; 0x286f
    mov ax, 0x4f                     ; 0x2870
    imul word [bp - 0x0002]          ; 0x2873
    inc ax                           ; 0x2876
    push ax                          ; 0x2877
    mov ax, 0x70                     ; 0x2878
    push ax                          ; 0x287b
    mov ax, 0x4f                     ; 0x287c
    imul word [bp - 0x0002]          ; 0x287f
    inc ax                           ; 0x2882
    push ax                          ; 0x2883
    call ds_dispatch_e901            ; 0x2884
    add sp, byte 0x0a                ; 0x2887
    inc word [bp - 0x0002]           ; 0x288a
    mov ax, word [bp - 0x0002]       ; 0x288d
    cmp ax, strict word 3            ; 0x2890
    jl short @..api_idx_004c.l4      ; 0x2893
@..api_idx_004c.l5:
    mov word [bp - 0x0002], 0        ; 0x2895
@..api_idx_004c.l6:
    mov ax, 0x248                    ; 0x289a
    imul word [bp + 0x4]             ; 0x289d
    push ax                          ; 0x28a0
    mov ax, 0x78                     ; 0x28a1
    imul word [data_948e]            ; 0x28a4
    mov cx, ax                       ; 0x28a8
    pop ax                           ; 0x28aa
    add ax, cx                       ; 0x28ab
    push ax                          ; 0x28ad
    mov ax, 0xc                      ; 0x28ae
    imul word [bp - 0x0002]          ; 0x28b1
    mov cx, ax                       ; 0x28b4
    pop ax                           ; 0x28b6
    add ax, cx                       ; 0x28b7
    mov bx, ax                       ; 0x28b9
    cmp word [bx + 0x5c34], byte 0   ; 0x28bb
    jg short @..api_idx_004c.l7      ; 0x28c0
    jmp near @..api_idx_004c.l16     ; 0x28c2
@..api_idx_004c.l7:
    cmp word [data_9492], byte 0     ; 0x28c5
    je short @..api_idx_004c.l8      ; 0x28ca
    jmp near @..api_idx_004c.l11     ; 0x28cc
@..api_idx_004c.l8:
    mov ax, 0                        ; 0x28cf
    push ax                          ; 0x28d2
    push word [bx + 0x5c34]          ; 0x28d3
    lea ax, word [bp - 0x004c]       ; 0x28d7
    push ax                          ; 0x28da
    mov ax, 1                        ; 0x28db
    push ax                          ; 0x28de
    call ds_dispatch_b63c            ; 0x28df
    add sp, byte 8                   ; 0x28e2
    mov ax, 0x248                    ; 0x28e5
    imul word [bp + 0x4]             ; 0x28e8
    push ax                          ; 0x28eb
    mov ax, 0x78                     ; 0x28ec
    imul word [data_948e]            ; 0x28ef
    mov cx, ax                       ; 0x28f3
    pop ax                           ; 0x28f5
    add ax, cx                       ; 0x28f6
    push ax                          ; 0x28f8
    mov ax, 0xc                      ; 0x28f9
    imul word [bp - 0x0002]          ; 0x28fc
    mov cx, ax                       ; 0x28ff
    pop ax                           ; 0x2901
    add ax, cx                       ; 0x2902
    mov bx, ax                       ; 0x2904
    mov al, byte [bx + 0x5c3b]       ; 0x2906
    sub ah, ah                       ; 0x290a
    test ax, 0x80                    ; 0x290c
    je short @..api_idx_004c.l9      ; 0x290f
    lea ax, word [bp - 0x004c]       ; 0x2911
    push ax                          ; 0x2914
    mov ax, 0x16                     ; 0x2915
    imul word [bp - 0x0002]          ; 0x2918
    add ax, 0x9494                   ; 0x291b
    push ax                          ; 0x291e
    call ds_dispatch_f364            ; 0x291f
    add sp, byte 4                   ; 0x2922
    jmp short @..api_idx_004c.l10    ; 0x2925
@..api_idx_004c.l9:
    mov ax, 0x16                     ; 0x2927
    imul word [bp - 0x0002]          ; 0x292a
    add ax, 0x9494                   ; 0x292d
    push ax                          ; 0x2930
    mov al, byte [bp - 0x0013]       ; 0x2931
    sub ah, ah                       ; 0x2934
    add ax, 0x1770                   ; 0x2936
    push ax                          ; 0x2939
    call ds_dispatch_b53b            ; 0x293a
    add sp, byte 4                   ; 0x293d
@..api_idx_004c.l10:
    mov al, byte [bp - 0x0012]       ; 0x2940
    sub ah, ah                       ; 0x2943
    mov cx, word [bp - 0x0002]       ; 0x2945
    shl cx, 1                        ; 0x2948
    mov bx, cx                       ; 0x294a
    mov word [bx - 0x6a90], ax       ; 0x294c
@..api_idx_004c.l11:
    mov ax, word [bp - 0x0002]       ; 0x2950
    shl ax, 1                        ; 0x2953
    mov bx, ax                       ; 0x2955
    mov word [bx - 0x6a7c], 0x69     ; 0x2957
    cmp word [data_948e], byte 0     ; 0x295d
    jne short @..api_idx_004c.l14    ; 0x2962
    mov word [bp - 0x0004], 0        ; 0x2964
@..api_idx_004c.l12:
    mov ax, 0x248                    ; 0x2969
    imul word [bp + 0x4]             ; 0x296c
    add ax, word [bp - 0x0004]       ; 0x296f
    mov bx, ax                       ; 0x2972
    mov al, byte [bx + 0x5d48]       ; 0x2974
    sub ah, ah                       ; 0x2978
    cmp ax, word [bp - 0x0002]       ; 0x297a
    jne short @..api_idx_004c.l13    ; 0x297d
    mov ax, word [bp - 0x0004]       ; 0x297f
    shl ax, 1                        ; 0x2982
    mov bx, ax                       ; 0x2984
    db 0x8b, 0x87, 0x1e, 0x00 ; mov ax, word [bx + 0x1e]
    mov cx, word [bp - 0x0002]       ; 0x298a
    shl cx, 1                        ; 0x298d
    mov bx, cx                       ; 0x298f
    mov word [bx - 0x6a7c], ax       ; 0x2991
@..api_idx_004c.l13:
    inc word [bp - 0x0004]           ; 0x2995
    mov ax, word [bp - 0x0004]       ; 0x2998
    cmp ax, strict word 8            ; 0x299b
    jl short @..api_idx_004c.l12     ; 0x299e
@..api_idx_004c.l14:
    mov ax, 0x248                    ; 0x29a0
    imul word [bp + 0x4]             ; 0x29a3
    push ax                          ; 0x29a6
    mov ax, 0x78                     ; 0x29a7
    imul word [data_948e]            ; 0x29aa
    mov cx, ax                       ; 0x29ae
    pop ax                           ; 0x29b0
    add ax, cx                       ; 0x29b1
    push ax                          ; 0x29b3
    mov ax, 0xc                      ; 0x29b4
    imul word [bp - 0x0002]          ; 0x29b7
    mov cx, ax                       ; 0x29ba
    pop ax                           ; 0x29bc
    add ax, cx                       ; 0x29bd
    mov bx, ax                       ; 0x29bf
    mov al, byte [bx + 0x5c3b]       ; 0x29c1
    sub ah, ah                       ; 0x29c5
    test ax, data_0002               ; 0x29c7
    je short @..api_idx_004c.l15     ; 0x29ca
    mov ax, word [bp - 0x0002]       ; 0x29cc
    shl ax, 1                        ; 0x29cf
    mov bx, ax                       ; 0x29d1
    mov word [bx - 0x6a7c], 0x55     ; 0x29d3
@..api_idx_004c.l15:
    mov ax, word [bp - 0x0002]       ; 0x29d9
    shl ax, 1                        ; 0x29dc
    mov bx, ax                       ; 0x29de
    push word [bx - 0x6a7c]          ; 0x29e0
    mov ax, 0x16                     ; 0x29e4
    imul word [bp - 0x0002]          ; 0x29e7
    add ax, 0x9494                   ; 0x29ea
    push ax                          ; 0x29ed
    mov ax, 0x248                    ; 0x29ee
    imul word [bp + 0x4]             ; 0x29f1
    push ax                          ; 0x29f4
    mov ax, 0x78                     ; 0x29f5
    imul word [data_948e]            ; 0x29f8
    mov cx, ax                       ; 0x29fc
    pop ax                           ; 0x29fe
    add ax, cx                       ; 0x29ff
    push ax                          ; 0x2a01
    mov ax, 0xc                      ; 0x2a02
    imul word [bp - 0x0002]          ; 0x2a05
    mov cx, ax                       ; 0x2a08
    pop ax                           ; 0x2a0a
    add ax, cx                       ; 0x2a0b
    add ax, 0x5c34                   ; 0x2a0d
    push ax                          ; 0x2a10
    push word [bp - 0x0002]          ; 0x2a11
    push word [bp + 0x4]             ; 0x2a14
    call api_idx_0004_4              ; 0x2a17
    add sp, byte 0x0a                ; 0x2a1a
@..api_idx_004c.l16:
    inc word [bp - 0x0002]           ; 0x2a1d
    mov ax, word [bp - 0x0002]       ; 0x2a20
    cmp ax, strict word 0xa          ; 0x2a23
    jge short @..api_idx_004c.l17    ; 0x2a26
    jmp near @..api_idx_004c.l6      ; 0x2a28
@..api_idx_004c.l17:
    mov word [data_9492], 1          ; 0x2a2b
    ret                              ; 0x2a31
math_loc_2a32:
    mov ax, 0                        ; 0x2a32
    call ds_dispatch_f40b            ; 0x2a35
    mov ax, 0x7d                     ; 0x2a38
    push ax                          ; 0x2a3b
    mov ax, 0                        ; 0x2a3c
    push ax                          ; 0x2a3f
    mov ax, 0x248                    ; 0x2a40
    imul word [bp + 0x4]             ; 0x2a43
    push ax                          ; 0x2a46
    mov ax, 0xe                      ; 0x2a47
    imul word [bp + 0x6]             ; 0x2a4a
    mov cx, ax                       ; 0x2a4d
    pop ax                           ; 0x2a4f
    add ax, cx                       ; 0x2a50
    add ax, word [bp + 0x8]          ; 0x2a52
    mov bx, ax                       ; 0x2a55
    mov al, byte [bx + 0x5d8e]       ; 0x2a57
    sub ah, ah                       ; 0x2a5b
    add ax, word [bp + 0xa]          ; 0x2a5d
    push ax                          ; 0x2a60
    call ds_dispatch_b7c2            ; 0x2a61
    add sp, byte 6                   ; 0x2a64
    push ax                          ; 0x2a67
    mov ax, 0x248                    ; 0x2a68
    imul word [bp + 0x4]             ; 0x2a6b
    mov cx, ax                       ; 0x2a6e
    mov ax, 0xe                      ; 0x2a70
    imul word [bp + 0x6]             ; 0x2a73
    mov dx, ax                       ; 0x2a76
    add cx, ax                       ; 0x2a78
    add cx, word [bp + 0x8]          ; 0x2a7a
    mov bx, cx                       ; 0x2a7d
    pop ax                           ; 0x2a7f
    mov byte [bx + 0x5d8e], al       ; 0x2a80
    ret                              ; 0x2a84
api_idx_0006:
    mov ax, 0xfffa                   ; 0x2a85
    call ds_dispatch_f40b            ; 0x2a88
    mov word [bp - 0x0002], 0        ; 0x2a8b
@..api_idx_0006.l1:
    mov ax, 0x248                    ; 0x2a90
    imul word [bp + 0x4]             ; 0x2a93
    add ax, word [bp - 0x0002]       ; 0x2a96
    mov bx, ax                       ; 0x2a99
    mov byte [bx + 0x5d8e], 0        ; 0x2a9b
    mov ax, 0x248                    ; 0x2aa0
    imul word [bp + 0x4]             ; 0x2aa3
    mov bx, ax                       ; 0x2aa6
    mov ax, word [bx + 0x5c18]       ; 0x2aa8
    push ax                          ; 0x2aac
    mov al, byte [bx + 0x5e3b]       ; 0x2aad
    sub ah, ah                       ; 0x2ab1
    mov cx, ax                       ; 0x2ab3
    pop ax                           ; 0x2ab5
    cmp ax, cx                       ; 0x2ab6
    jge short @..api_idx_0006.l2     ; 0x2ab8
    mov ax, cx                       ; 0x2aba
    jmp short @..api_idx_0006.l3     ; 0x2abc
@..api_idx_0006.l2:
    mov ax, word [bx + 0x5c18]       ; 0x2abe
@..api_idx_0006.l3:
    mov word [bp - 0x0006], ax       ; 0x2ac2
    mov ax, 0x10                     ; 0x2ac5
    cmp word [bp - 0x0006], byte 0x10 ; 0x2ac8
    jg short @..api_idx_0006.l4      ; 0x2acc
    mov ax, word [bp - 0x0006]       ; 0x2ace
    dec ax                           ; 0x2ad1
@..api_idx_0006.l4:
    mov word [bp - 0x0006], ax       ; 0x2ad2
    mov bx, word [bp + 0x8]          ; 0x2ad5
    mov si, word [bp - 0x0002]       ; 0x2ad8
    mov al, byte [bx + si]           ; 0x2adb
    cbw                              ; 0x2add
    add ax, strict word 0xffd0       ; 0x2ade
    imul word [bp - 0x0006]          ; 0x2ae1
    push ax                          ; 0x2ae4
    mov bx, word [bp + 0x6]          ; 0x2ae5
    mov al, byte [bx + si]           ; 0x2ae8
    cbw                              ; 0x2aea
    mov cx, ax                       ; 0x2aeb
    shl ax, 1                        ; 0x2aed
    shl ax, 1                        ; 0x2aef
    mov cx, ax                       ; 0x2af1
    pop ax                           ; 0x2af3
    add ax, cx                       ; 0x2af4
    add ax, 0xfefc                   ; 0x2af6
    mov word [bp - 0x0004], ax       ; 0x2af9
    push ax                          ; 0x2afc
    push si                          ; 0x2afd
    mov ax, 0                        ; 0x2afe
    push ax                          ; 0x2b01
    push word [bp + 0x4]             ; 0x2b02
    call math_loc_2a32               ; 0x2b05
    add sp, byte 8                   ; 0x2b08
    inc word [bp - 0x0002]           ; 0x2b0b
    mov ax, word [bp - 0x0002]       ; 0x2b0e
    cmp ax, strict word 0xe          ; 0x2b11
    jge short @..api_idx_0006.l5     ; 0x2b14
    jmp near @..api_idx_0006.l1      ; 0x2b16
@..api_idx_0006.l5:
    ret                              ; 0x2b19
api_idx_0002_4:
    mov ax, 0xfffe                   ; 0x2b1a
    call ds_dispatch_f40b            ; 0x2b1d
    mov ax, 0x248                    ; 0x2b20
    imul word [bp + 0x4]             ; 0x2b23
    mov bx, ax                       ; 0x2b26
    mov ax, word [bx + 0x5c18]       ; 0x2b28
    push ax                          ; 0x2b2c
    mov al, byte [bx + 0x5e3b]       ; 0x2b2d
    sub ah, ah                       ; 0x2b31
    mov cx, ax                       ; 0x2b33
    pop ax                           ; 0x2b35
    cmp ax, cx                       ; 0x2b36
    jge short @..api_idx_0002_4.l1   ; 0x2b38
    mov ax, cx                       ; 0x2b3a
    jmp short @..api_idx_0002_4.l2   ; 0x2b3c
@..api_idx_0002_4.l1:
    mov ax, word [bx + 0x5c18]       ; 0x2b3e
@..api_idx_0002_4.l2:
    mov word [bp - 0x0002], ax       ; 0x2b42
    push ax                          ; 0x2b45
    cmp ax, strict word 0x14         ; 0x2b46
    pop ax                           ; 0x2b49
    jle short @..api_idx_0002_4.l3   ; 0x2b4a
    mov ax, 0x14                     ; 0x2b4c
@..api_idx_0002_4.l3:
    mov word [bp - 0x0002], ax       ; 0x2b4f
    mov cx, 3                        ; 0x2b52
    cwd                              ; 0x2b55
    idiv cx                          ; 0x2b56
    inc ax                           ; 0x2b58
    push ax                          ; 0x2b59
    mov ax, 1                        ; 0x2b5a
    push ax                          ; 0x2b5d
    push word [bp + 0x6]             ; 0x2b5e
    call ds_dispatch_b7c2            ; 0x2b61
    add sp, byte 6                   ; 0x2b64
    mov word [bp + 0x6], ax          ; 0x2b67
    mov ax, 0x248                    ; 0x2b6a
    imul word [bp + 0x4]             ; 0x2b6d
    mov bx, ax                       ; 0x2b70
    mov al, byte [bx + 0x5d68]       ; 0x2b72
    sub ah, ah                       ; 0x2b76
    mov cx, 6                        ; 0x2b78
    cwd                              ; 0x2b7b
    idiv cx                          ; 0x2b7c
    push ax                          ; 0x2b7e
    mov ax, word [bp - 0x0002]       ; 0x2b7f
    add ax, word [bp + 0x8]          ; 0x2b82
    sub ax, word [bp + 0xa]          ; 0x2b85
    cwd                              ; 0x2b88
    idiv word [bp + 0x8]             ; 0x2b89
    mov cx, ax                       ; 0x2b8c
    pop ax                           ; 0x2b8e
    add ax, cx                       ; 0x2b8f
    dec ax                           ; 0x2b91
    mov byte [bx + 0x5e37], al       ; 0x2b92
    push word [bp + 0x6]             ; 0x2b96
    mov ax, 1                        ; 0x2b99
    push ax                          ; 0x2b9c
    mov al, byte [bx + 0x5e37]       ; 0x2b9d
    sub ah, ah                       ; 0x2ba1
    push ax                          ; 0x2ba3
    call ds_dispatch_b7c2            ; 0x2ba4
    add sp, byte 6                   ; 0x2ba7
    push ax                          ; 0x2baa
    mov ax, 0x248                    ; 0x2bab
    imul word [bp + 0x4]             ; 0x2bae
    mov bx, ax                       ; 0x2bb1
    pop ax                           ; 0x2bb3
    mov byte [bx + 0x5e37], al       ; 0x2bb4
    mov al, byte [bx + 0x5d69]       ; 0x2bb8
    sub ah, ah                       ; 0x2bbc
    mov cx, 6                        ; 0x2bbe
    cwd                              ; 0x2bc1
    idiv cx                          ; 0x2bc2
    push ax                          ; 0x2bc4
    mov ax, word [bp - 0x0002]       ; 0x2bc5
    add ax, word [bp + 0xc]          ; 0x2bc8
    sub ax, word [bp + 0xe]          ; 0x2bcb
    cwd                              ; 0x2bce
    idiv word [bp + 0xc]             ; 0x2bcf
    mov cx, ax                       ; 0x2bd2
    pop ax                           ; 0x2bd4
    add ax, cx                       ; 0x2bd5
    dec ax                           ; 0x2bd7
    mov byte [bx + 0x5e38], al       ; 0x2bd8
    push word [bp + 0x6]             ; 0x2bdc
    mov ax, 1                        ; 0x2bdf
    push ax                          ; 0x2be2
    mov al, byte [bx + 0x5e38]       ; 0x2be3
    sub ah, ah                       ; 0x2be7
    push ax                          ; 0x2be9
    call ds_dispatch_b7c2            ; 0x2bea
    add sp, byte 6                   ; 0x2bed
    push ax                          ; 0x2bf0
    mov ax, 0x248                    ; 0x2bf1
    imul word [bp + 0x4]             ; 0x2bf4
    mov bx, ax                       ; 0x2bf7
    pop ax                           ; 0x2bf9
    mov byte [bx + 0x5e38], al       ; 0x2bfa
    mov al, byte [bx + 0x5d69]       ; 0x2bfe
    sub ah, ah                       ; 0x2c02
    add ax, word [bp - 0x0002]       ; 0x2c04
    mov byte [bx + 0x5e39], al       ; 0x2c07
    ret                              ; 0x2c0b
api_idx_0052:
    mov ax, 0xffae                   ; 0x2c0c
    call ds_dispatch_f40b            ; 0x2c0f
    mov ax, 0x248                    ; 0x2c12
    imul word [bp + 0x4]             ; 0x2c15
    mov bx, ax                       ; 0x2c18
    mov al, byte [bx + 0x5e2d]       ; 0x2c1a
    sub ah, ah                       ; 0x2c1e
    jmp near @..api_idx_0052.l1      ; 0x2c20
    mov ax, 0x90b4                   ; 0x2c23
    push ax                          ; 0x2c26
    mov ax, 0x90a5                   ; 0x2c27
    push ax                          ; 0x2c2a
    push word [bp + 0x4]             ; 0x2c2b
    call api_idx_0006                ; 0x2c2e
    add sp, byte 6                   ; 0x2c31
    jmp near @..api_idx_0052.l2      ; 0x2c34
    mov ax, 0x90d2                   ; 0x2c37
    push ax                          ; 0x2c3a
    mov ax, 0x90c3                   ; 0x2c3b
    push ax                          ; 0x2c3e
    push word [bp + 0x4]             ; 0x2c3f
    call api_idx_0006                ; 0x2c42
    add sp, byte 6                   ; 0x2c45
    jmp near @..api_idx_0052.l2      ; 0x2c48
    mov ax, 0x90f0                   ; 0x2c4b
    push ax                          ; 0x2c4e
    mov ax, 0x90e1                   ; 0x2c4f
    push ax                          ; 0x2c52
    push word [bp + 0x4]             ; 0x2c53
    call api_idx_0006                ; 0x2c56
    add sp, byte 6                   ; 0x2c59
    jmp near @..api_idx_0052.l2      ; 0x2c5c
    mov ax, 0x910e                   ; 0x2c5f
    push ax                          ; 0x2c62
    mov ax, 0x90ff                   ; 0x2c63
    push ax                          ; 0x2c66
    push word [bp + 0x4]             ; 0x2c67
    call api_idx_0006                ; 0x2c6a
    add sp, byte 6                   ; 0x2c6d
    jmp near @..api_idx_0052.l2      ; 0x2c70
    mov ax, 0x912c                   ; 0x2c73
    push ax                          ; 0x2c76
    mov ax, 0x911d                   ; 0x2c77
    push ax                          ; 0x2c7a
    push word [bp + 0x4]             ; 0x2c7b
    call api_idx_0006                ; 0x2c7e
    add sp, byte 6                   ; 0x2c81
    jmp near @..api_idx_0052.l2      ; 0x2c84
    mov ax, 0x914a                   ; 0x2c87
    push ax                          ; 0x2c8a
    mov ax, 0x913b                   ; 0x2c8b
    push ax                          ; 0x2c8e
    push word [bp + 0x4]             ; 0x2c8f
    call api_idx_0006                ; 0x2c92
    add sp, byte 6                   ; 0x2c95
    jmp short @..api_idx_0052.l2     ; 0x2c98
    mov ax, 0x9168                   ; 0x2c9a
    push ax                          ; 0x2c9d
    mov ax, 0x9159                   ; 0x2c9e
    push ax                          ; 0x2ca1
    push word [bp + 0x4]             ; 0x2ca2
    call api_idx_0006                ; 0x2ca5
    add sp, byte 6                   ; 0x2ca8
    jmp short @..api_idx_0052.l2     ; 0x2cab
    mov ax, 0x9186                   ; 0x2cad
    push ax                          ; 0x2cb0
    mov ax, 0x9177                   ; 0x2cb1
    push ax                          ; 0x2cb4
    push word [bp + 0x4]             ; 0x2cb5
    call api_idx_0006                ; 0x2cb8
    add sp, byte 6                   ; 0x2cbb
    jmp short @..api_idx_0052.l2     ; 0x2cbe
    mov ax, 0x91a4                   ; 0x2cc0
    push ax                          ; 0x2cc3
    mov ax, 0x9195                   ; 0x2cc4
    push ax                          ; 0x2cc7
    push word [bp + 0x4]             ; 0x2cc8
    call api_idx_0006                ; 0x2ccb
    add sp, byte 6                   ; 0x2cce
    jmp short @..api_idx_0052.l2     ; 0x2cd1
    mov ax, 0x91c2                   ; 0x2cd3
    push ax                          ; 0x2cd6
    mov ax, 0x91b3                   ; 0x2cd7
    push ax                          ; 0x2cda
    push word [bp + 0x4]             ; 0x2cdb
    call api_idx_0006                ; 0x2cde
    add sp, byte 6                   ; 0x2ce1
    jmp short @..api_idx_0052.l2     ; 0x2ce4
    db 0x6a, 0x7c ; push 0x7c
    into                             ; 0x2ce8
    jl short loc_2cdf                ; 0x2ce9
    jl short loc_2d07                ; 0x2ceb
    jge short loc_2d6d               ; 0x2ced
    jl short loc_2cbf                ; 0x2cef
    jl short loc_2d0d                ; 0x2cf1
    jge short loc_2cd6               ; 0x2cf3
    jl short loc_2d75                ; 0x2cf5
    jl short loc_2ced                ; 0x2cf7
    jl short loc_2c8d                ; 0x2cf9
    jl short loc_2ca3                ; 0x2cfb
    jl short loc_2d06                ; 0x2cfd
    jge short loc_2cbb               ; 0x2cff
    db 0x7c
@..api_idx_0052.l1:
    cmp ax, strict word 0xe          ; 0x2d02
    jae short @..api_idx_0052.l2     ; 0x2d05
    xchg bx, ax                      ; 0x2d07
    shl bx, 1                        ; 0x2d08
    jmp [cs:bx + 0x7d2d]             ; 0x2d0a
@..api_idx_0052.l2:
    mov ax, 0x248                    ; 0x2d0f
    imul word [bp + 0x4]             ; 0x2d12
    mov bx, ax                       ; 0x2d15
    mov al, byte [bx + 0x5e2b]       ; 0x2d17
    sub ah, ah                       ; 0x2d1b
    jmp near @..api_idx_0052.l3      ; 0x2d1d
    mov ax, 0x14                     ; 0x2d20
    push ax                          ; 0x2d23
    mov ax, 0xb                      ; 0x2d24
    push ax                          ; 0x2d27
    mov ax, 0                        ; 0x2d28
    push ax                          ; 0x2d2b
    push word [bp + 0x4]             ; 0x2d2c
    call math_loc_2a32               ; 0x2d2f
    add sp, byte 8                   ; 0x2d32
    jmp near @..api_idx_0052.l4      ; 0x2d35
    mov ax, 0x248                    ; 0x2d38
    imul word [bp + 0x4]             ; 0x2d3b
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx + 0x5d67]       ; 0x2d40
    db 0x2a, 0xe4 ; sub ah, ah
    mov cx, 5                        ; 0x2d46
    cwd                              ; 0x2d49
    idiv cx                          ; 0x2d4a
    imul cx                          ; 0x2d4c
    push ax                          ; 0x2d4e
    mov ax, 6                        ; 0x2d4f
    push ax                          ; 0x2d52
    mov ax, 0                        ; 0x2d53
    push ax                          ; 0x2d56
    push word [bp + 0x4]             ; 0x2d57
    call math_loc_2a32               ; 0x2d5a
    add sp, byte 8                   ; 0x2d5d
    mov ax, 0x248                    ; 0x2d60
    imul word [bp + 0x4]             ; 0x2d63
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx + 0x5d67]       ; 0x2d68
    db 0x2a, 0xe4 ; sub ah, ah
    mov cx, 5                        ; 0x2d6e
    cwd                              ; 0x2d71
    idiv cx                          ; 0x2d72
    imul cx                          ; 0x2d74
    push ax                          ; 0x2d76
    mov ax, 0xc                      ; 0x2d77
    push ax                          ; 0x2d7a
    mov ax, 0                        ; 0x2d7b
    push ax                          ; 0x2d7e
    push word [bp + 0x4]             ; 0x2d7f
    call math_loc_2a32               ; 0x2d82
    add sp, byte 8                   ; 0x2d85
    jmp near @..api_idx_0052.l4      ; 0x2d88
    mov ax, 0x14                     ; 0x2d8b
    push ax                          ; 0x2d8e
    mov ax, 9                        ; 0x2d8f
    push ax                          ; 0x2d92
    mov ax, 0                        ; 0x2d93
    push ax                          ; 0x2d96
    push word [bp + 0x4]             ; 0x2d97
    call math_loc_2a32               ; 0x2d9a
    add sp, byte 8                   ; 0x2d9d
    jmp near @..api_idx_0052.l4      ; 0x2da0
    mov ax, 0x19                     ; 0x2da3
    push ax                          ; 0x2da6
    mov ax, 0xc                      ; 0x2da7
    push ax                          ; 0x2daa
    mov ax, 0                        ; 0x2dab
    push ax                          ; 0x2dae
    push word [bp + 0x4]             ; 0x2daf
    call math_loc_2a32               ; 0x2db2
    add sp, byte 8                   ; 0x2db5
    mov ax, 0x19                     ; 0x2db8
    push ax                          ; 0x2dbb
    mov ax, 4                        ; 0x2dbc
    push ax                          ; 0x2dbf
    mov ax, 0                        ; 0x2dc0
    push ax                          ; 0x2dc3
    push word [bp + 0x4]             ; 0x2dc4
    call math_loc_2a32               ; 0x2dc7
    add sp, byte 8                   ; 0x2dca
    mov ax, 0x19                     ; 0x2dcd
    push ax                          ; 0x2dd0
    mov ax, 7                        ; 0x2dd1
    push ax                          ; 0x2dd4
    mov ax, 0                        ; 0x2dd5
    push ax                          ; 0x2dd8
    push word [bp + 0x4]             ; 0x2dd9
    call math_loc_2a32               ; 0x2ddc
    add sp, byte 8                   ; 0x2ddf
    mov ax, 0x19                     ; 0x2de2
    push ax                          ; 0x2de5
    mov ax, 0xa                      ; 0x2de6
    push ax                          ; 0x2de9
    mov ax, 0                        ; 0x2dea
    push ax                          ; 0x2ded
    push word [bp + 0x4]             ; 0x2dee
    call math_loc_2a32               ; 0x2df1
    add sp, byte 8                   ; 0x2df4
    mov ax, 0x19                     ; 0x2df7
    push ax                          ; 0x2dfa
    mov ax, 0xb                      ; 0x2dfb
    push ax                          ; 0x2dfe
    mov ax, 0                        ; 0x2dff
    push ax                          ; 0x2e02
    push word [bp + 0x4]             ; 0x2e03
    call math_loc_2a32               ; 0x2e06
    add sp, byte 8                   ; 0x2e09
    jmp near @..api_idx_0052.l4      ; 0x2e0c
    mov ax, 0x19                     ; 0x2e0f
    push ax                          ; 0x2e12
    mov ax, 0xa                      ; 0x2e13
    push ax                          ; 0x2e16
    mov ax, 0                        ; 0x2e17
    push ax                          ; 0x2e1a
    push word [bp + 0x4]             ; 0x2e1b
    call math_loc_2a32               ; 0x2e1e
    add sp, byte 8                   ; 0x2e21
    mov ax, 0xa                      ; 0x2e24
    push ax                          ; 0x2e27
    mov ax, 8                        ; 0x2e28
    push ax                          ; 0x2e2b
    mov ax, 0                        ; 0x2e2c
    push ax                          ; 0x2e2f
    push word [bp + 0x4]             ; 0x2e30
    call math_loc_2a32               ; 0x2e33
    add sp, byte 8                   ; 0x2e36
    mov ax, 0xffec                   ; 0x2e39
    push ax                          ; 0x2e3c
    mov ax, 3                        ; 0x2e3d
    push ax                          ; 0x2e40
    mov ax, 0                        ; 0x2e41
    push ax                          ; 0x2e44
    push word [bp + 0x4]             ; 0x2e45
    call math_loc_2a32               ; 0x2e48
    add sp, byte 8                   ; 0x2e4b
    jmp near @..api_idx_0052.l4      ; 0x2e4e
    mov ax, 0xf                      ; 0x2e51
    push ax                          ; 0x2e54
    mov ax, 7                        ; 0x2e55
    push ax                          ; 0x2e58
    mov ax, 0                        ; 0x2e59
    push ax                          ; 0x2e5c
    push word [bp + 0x4]             ; 0x2e5d
    call math_loc_2a32               ; 0x2e60
    add sp, byte 8                   ; 0x2e63
    mov ax, 0x14                     ; 0x2e66
    push ax                          ; 0x2e69
    mov ax, 4                        ; 0x2e6a
    push ax                          ; 0x2e6d
    mov ax, 0                        ; 0x2e6e
    push ax                          ; 0x2e71
    push word [bp + 0x4]             ; 0x2e72
    call math_loc_2a32               ; 0x2e75
    add sp, byte 8                   ; 0x2e78
    mov ax, 0x14                     ; 0x2e7b
    push ax                          ; 0x2e7e
    mov ax, 3                        ; 0x2e7f
    push ax                          ; 0x2e82
    mov ax, 0                        ; 0x2e83
    push ax                          ; 0x2e86
    push word [bp + 0x4]             ; 0x2e87
    call math_loc_2a32               ; 0x2e8a
    add sp, byte 8                   ; 0x2e8d
    jmp short @..api_idx_0052.l4     ; 0x2e90
    mov ax, 0x19                     ; 0x2e92
    push ax                          ; 0x2e95
    mov ax, 0xc                      ; 0x2e96
    push ax                          ; 0x2e99
    mov ax, 0                        ; 0x2e9a
    push ax                          ; 0x2e9d
    push word [bp + 0x4]             ; 0x2e9e
    call math_loc_2a32               ; 0x2ea1
    add sp, byte 8                   ; 0x2ea4
    mov ax, 0xf                      ; 0x2ea7
    push ax                          ; 0x2eaa
    mov ax, 3                        ; 0x2eab
    push ax                          ; 0x2eae
    mov ax, 0                        ; 0x2eaf
    push ax                          ; 0x2eb2
    push word [bp + 0x4]             ; 0x2eb3
    call math_loc_2a32               ; 0x2eb6
    add sp, byte 8                   ; 0x2eb9
    jmp short @..api_idx_0052.l4     ; 0x2ebc
    db 0x67, 0x7d, 0xd2 ; jge loc_2e93
    jge short loc_2f42               ; 0x2ec1
    jge short loc_2e6c               ; 0x2ec3
    jge short loc_2f46               ; 0x2ec5
    jge short loc_2eb3               ; 0x2ec7
    jge short loc_2f21               ; 0x2ec9
    jle short loc_2f23               ; 0x2ecb
    jle short loc_2e67               ; 0x2ecd
    jle short loc_2e93               ; 0x2ecf
    jle short loc_2eac               ; 0x2ed1
    db 0x7e
@..api_idx_0052.l3:
    cmp ax, strict word 0xb          ; 0x2ed4
    jae short @..api_idx_0052.l4     ; 0x2ed7
    xchg bx, ax                      ; 0x2ed9
    shl bx, 1                        ; 0x2eda
    jmp [cs:bx + 0x7f05]             ; 0x2edc
@..api_idx_0052.l4:
    mov ax, 0x248                    ; 0x2ee1
    imul word [bp + 0x4]             ; 0x2ee4
    mov bx, ax                       ; 0x2ee7
    cmp byte [bx + 0x5d67], 0xf      ; 0x2ee9
    jbe short @..api_idx_0052.l5     ; 0x2eee
    mov ax, 5                        ; 0x2ef0
    push ax                          ; 0x2ef3
    mov ax, 6                        ; 0x2ef4
    push ax                          ; 0x2ef7
    mov ax, 0                        ; 0x2ef8
    push ax                          ; 0x2efb
    push word [bp + 0x4]             ; 0x2efc
    call math_loc_2a32               ; 0x2eff
    add sp, byte 8                   ; 0x2f02
    mov ax, 5                        ; 0x2f05
    push ax                          ; 0x2f08
    mov ax, 0xb                      ; 0x2f09
    push ax                          ; 0x2f0c
    mov ax, 0                        ; 0x2f0d
    push ax                          ; 0x2f10
    push word [bp + 0x4]             ; 0x2f11
    call math_loc_2a32               ; 0x2f14
    add sp, byte 8                   ; 0x2f17
@..api_idx_0052.l5:
    mov ax, 0x248                    ; 0x2f1a
    imul word [bp + 0x4]             ; 0x2f1d
    mov bx, ax                       ; 0x2f20
    cmp byte [bx + 0x5d65], 0xf      ; 0x2f22
    jbe short @..api_idx_0052.l6     ; 0x2f27
    mov ax, 5                        ; 0x2f29
    push ax                          ; 0x2f2c
    mov ax, 9                        ; 0x2f2d
    push ax                          ; 0x2f30
    mov ax, 0                        ; 0x2f31
    push ax                          ; 0x2f34
    push word [bp + 0x4]             ; 0x2f35
    call math_loc_2a32               ; 0x2f38
    add sp, byte 8                   ; 0x2f3b
@..api_idx_0052.l6:
    mov ax, 0x248                    ; 0x2f3e
    imul word [bp + 0x4]             ; 0x2f41
    mov bx, ax                       ; 0x2f44
    cmp byte [bx + 0x5d69], 0xf      ; 0x2f46
    jbe short @..api_idx_0052.l7     ; 0x2f4b
    mov ax, 5                        ; 0x2f4d
    push ax                          ; 0x2f50
    mov ax, 7                        ; 0x2f51
    push ax                          ; 0x2f54
    mov ax, 0                        ; 0x2f55
    push ax                          ; 0x2f58
    push word [bp + 0x4]             ; 0x2f59
    call math_loc_2a32               ; 0x2f5c
    add sp, byte 8                   ; 0x2f5f
    mov ax, 5                        ; 0x2f62
    push ax                          ; 0x2f65
    mov ax, 4                        ; 0x2f66
    push ax                          ; 0x2f69
    mov ax, 0                        ; 0x2f6a
    push ax                          ; 0x2f6d
    push word [bp + 0x4]             ; 0x2f6e
    call math_loc_2a32               ; 0x2f71
    add sp, byte 8                   ; 0x2f74
@..api_idx_0052.l7:
    mov ax, 0x248                    ; 0x2f77
    imul word [bp + 0x4]             ; 0x2f7a
    mov bx, ax                       ; 0x2f7d
    cmp byte [bx + 0x5d83], 0        ; 0x2f7f
    jbe short @..api_idx_0052.l8     ; 0x2f84
    mov al, byte [bx + 0x5d83]       ; 0x2f86
    sub ah, ah                       ; 0x2f8a
    mov cx, data_0002                ; 0x2f8c
    cwd                              ; 0x2f8f
    idiv cx                          ; 0x2f90
    push ax                          ; 0x2f92
    mov ax, 9                        ; 0x2f93
    push ax                          ; 0x2f96
    mov ax, 0                        ; 0x2f97
    push ax                          ; 0x2f9a
    push word [bp + 0x4]             ; 0x2f9b
    call math_loc_2a32               ; 0x2f9e
    add sp, byte 8                   ; 0x2fa1
    mov ax, 0x248                    ; 0x2fa4
    imul word [bp + 0x4]             ; 0x2fa7
    mov bx, ax                       ; 0x2faa
    mov al, byte [bx + 0x5d83]       ; 0x2fac
    sub ah, ah                       ; 0x2fb0
    mov cx, 3                        ; 0x2fb2
    cwd                              ; 0x2fb5
    idiv cx                          ; 0x2fb6
    push ax                          ; 0x2fb8
    mov ax, 0xa                      ; 0x2fb9
    push ax                          ; 0x2fbc
    mov ax, 0                        ; 0x2fbd
    push ax                          ; 0x2fc0
    push word [bp + 0x4]             ; 0x2fc1
    call math_loc_2a32               ; 0x2fc4
    add sp, byte 8                   ; 0x2fc7
@..api_idx_0052.l8:
    mov word [bp - 0x0004], 0        ; 0x2fca
@..api_idx_0052.l9:
    mov ax, 0x248                    ; 0x2fcf
    imul word [bp + 0x4]             ; 0x2fd2
    add ax, word [bp - 0x0004]       ; 0x2fd5
    mov bx, ax                       ; 0x2fd8
    mov al, byte [bx + 0x5d8e]       ; 0x2fda
    mov byte [bx + 0x5d9c], al       ; 0x2fde
    inc word [bp - 0x0004]           ; 0x2fe2
    mov ax, word [bp - 0x0004]       ; 0x2fe5
    cmp ax, strict word 0xe          ; 0x2fe8
    jl short @..api_idx_0052.l9      ; 0x2feb
    mov word [bp - 0x0004], 0        ; 0x2fed
@..api_idx_0052.l10:
    mov ax, 0x248                    ; 0x2ff2
    imul word [bp + 0x4]             ; 0x2ff5
    add ax, word [bp - 0x0004]       ; 0x2ff8
    mov bx, ax                       ; 0x2ffb
    mov al, byte [bx + 0x5d48]       ; 0x2ffd
    sub ah, ah                       ; 0x3001
    cmp ax, 0xff                     ; 0x3003
    jne short @..api_idx_0052.l11    ; 0x3006
    jmp near @..api_idx_0052.l13     ; 0x3008
@..api_idx_0052.l11:
    mov word [bp - 0x000a], 0        ; 0x300b
@..api_idx_0052.l12:
    mov ax, 0x248                    ; 0x3010
    imul word [bp + 0x4]             ; 0x3013
    push ax                          ; 0x3016
    add ax, word [bp - 0x0004]       ; 0x3017
    mov bx, ax                       ; 0x301a
    mov al, byte [bx + 0x5d48]       ; 0x301c
    sub ah, ah                       ; 0x3020
    mov cx, 0xc                      ; 0x3022
    imul cx                          ; 0x3025
    mov cx, ax                       ; 0x3027
    pop ax                           ; 0x3029
    add ax, cx                       ; 0x302a
    add ax, word [bp - 0x000a]       ; 0x302c
    mov bx, ax                       ; 0x302f
    mov al, byte [bx + 0x5c3c]       ; 0x3031
    sub ah, ah                       ; 0x3035
    mov cx, 0x10                     ; 0x3037
    cwd                              ; 0x303a
    idiv cx                          ; 0x303b
    mov word [bp - 0x0006], ax       ; 0x303d
    mov ax, 0xa                      ; 0x3040
    imul dx                          ; 0x3043
    mov word [bp - 0x0008], ax       ; 0x3045
    mov ax, 0x7d                     ; 0x3048
    push ax                          ; 0x304b
    mov ax, 0                        ; 0x304c
    push ax                          ; 0x304f
    mov ax, 0x248                    ; 0x3050
    imul word [bp + 0x4]             ; 0x3053
    add ax, word [bp - 0x0006]       ; 0x3056
    mov bx, ax                       ; 0x3059
    mov al, byte [bx + 0x5d9c]       ; 0x305b
    sub ah, ah                       ; 0x305f
    add ax, word [bp - 0x0008]       ; 0x3061
    push ax                          ; 0x3064
    call ds_dispatch_b7c2            ; 0x3065
    add sp, byte 6                   ; 0x3068
    push ax                          ; 0x306b
    mov ax, 0x248                    ; 0x306c
    imul word [bp + 0x4]             ; 0x306f
    mov cx, ax                       ; 0x3072
    add ax, word [bp - 0x0006]       ; 0x3074
    mov bx, ax                       ; 0x3077
    pop ax                           ; 0x3079
    mov byte [bx + 0x5d9c], al       ; 0x307a
    inc word [bp - 0x000a]           ; 0x307e
    mov ax, word [bp - 0x000a]       ; 0x3081
    cmp ax, strict word 2            ; 0x3084
    jl short @..api_idx_0052.l12     ; 0x3087
@..api_idx_0052.l13:
    inc word [bp - 0x0004]           ; 0x3089
    mov ax, word [bp - 0x0004]       ; 0x308c
    cmp ax, strict word 8            ; 0x308f
    jge short @..api_idx_0052.l14    ; 0x3092
    jmp near @..api_idx_0052.l10     ; 0x3094
@..api_idx_0052.l14:
    mov ax, 0x248                    ; 0x3097
    imul word [bp + 0x4]             ; 0x309a
    mov bx, ax                       ; 0x309d
    mov al, byte [bx + 0x5e2d]       ; 0x309f
    sub ah, ah                       ; 0x30a3
    jmp short @..api_idx_0052.l15    ; 0x30a5

    db 0xb8, 0x03, 0x00, 0x50, 0xb8, 0x06, 0x00, 0x50, 0xb8, 0x05, 0x00, 0x50, 0xb8, 0x07, 0x00, 0x50
    db 0xb8, 0x04, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x59, 0xfa, 0x83, 0xc4, 0x0c, 0xeb, 0x61, 0xb8
    db 0x07, 0x00, 0x50, 0x50, 0xb8, 0x0c, 0x00, 0x50, 0x50, 0xb8, 0x02, 0x00, 0x50, 0xff, 0x76, 0x04
    db 0xe8, 0x40, 0xfa, 0x83, 0xc4, 0x0c, 0xeb, 0x48, 0xb8, 0x05, 0x00, 0x50, 0xb8, 0x07, 0x00, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0xb8, 0x0a, 0x00, 0x50, 0xb8, 0x03, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8
    db 0x21, 0xfa, 0x83, 0xc4, 0x0c, 0xeb, 0x29, 0xee, 0x80, 0x0d, 0x81, 0x26, 0x81, 0x26, 0x81, 0xee
    db 0x80, 0x0d, 0x81, 0x26, 0x81, 0x0d, 0x81, 0xee, 0x80, 0x0d, 0x81, 0xee, 0x80, 0xee, 0x80, 0xee
    db 0x80, 0xee, 0x80

@..api_idx_0052.l15:
    cmp ax, strict word 0xe          ; 0x311a
    jae short @..api_idx_0052.l16    ; 0x311d
    xchg bx, ax                      ; 0x311f
    shl bx, 1                        ; 0x3120
    jmp [cs:bx - 0x7ebb]             ; 0x3122
@..api_idx_0052.l16:
    mov word [bp - 0x0002], 0        ; 0x3127
@..api_idx_0052.l17:
    push word [bp - 0x0002]          ; 0x312c
    push word [bp + 0x4]             ; 0x312f
    call ds_dispatch_c608            ; 0x3132
    add sp, byte 4                   ; 0x3135
    mov ax, 0x248                    ; 0x3138
    imul word [bp + 0x4]             ; 0x313b
    add ax, word [bp - 0x0002]       ; 0x313e
    mov bx, ax                       ; 0x3141
    mov al, byte [bx + 0x5d48]       ; 0x3143
    sub ah, ah                       ; 0x3147
    cmp ax, 0xff                     ; 0x3149
    je short @..api_idx_0052.l18     ; 0x314c
    mov ax, 0                        ; 0x314e
    push ax                          ; 0x3151
    mov ax, 0x248                    ; 0x3152
    imul word [bp + 0x4]             ; 0x3155
    push ax                          ; 0x3158
    mov al, byte [bx + 0x5d48]       ; 0x3159
    sub ah, ah                       ; 0x315d
    mov cx, 0xc                      ; 0x315f
    imul cx                          ; 0x3162
    mov cx, ax                       ; 0x3164
    pop ax                           ; 0x3166
    add ax, cx                       ; 0x3167
    mov bx, ax                       ; 0x3169
    push word [bx + 0x5c34]          ; 0x316b
    lea ax, word [bp - 0x0052]       ; 0x316f
    push ax                          ; 0x3172
    mov ax, 1                        ; 0x3173
    push ax                          ; 0x3176
    call ds_dispatch_b63c            ; 0x3177
    add sp, byte 8                   ; 0x317a
    lea ax, word [bp - 0x0052]       ; 0x317d
    push ax                          ; 0x3180
    push word [bp - 0x0002]          ; 0x3181
    push word [bp + 0x4]             ; 0x3184
    call api_idx_0004_3              ; 0x3187
    add sp, byte 6                   ; 0x318a
@..api_idx_0052.l18:
    inc word [bp - 0x0002]           ; 0x318d
    mov ax, word [bp - 0x0002]       ; 0x3190
    cmp ax, strict word 2            ; 0x3193
    jl short @..api_idx_0052.l17     ; 0x3196
    mov ax, 0x248                    ; 0x3198
    imul word [bp + 0x4]             ; 0x319b
    mov bx, ax                       ; 0x319e
    mov byte [bx + 0x5daa], 0xa      ; 0x31a0
    mov al, byte [bx + 0x5daa]       ; 0x31a5
    cbw                              ; 0x31a9
    mov cx, 0                        ; 0x31aa
    cmp byte [bx + 0x5d69], 0xf      ; 0x31ad
    jbe short @..api_idx_0052.l19    ; 0x31b2
    mov cx, 1                        ; 0x31b4
@..api_idx_0052.l19:
    sub ax, cx                       ; 0x31b7
    mov byte [bx + 0x5daa], al       ; 0x31b9
    cbw                              ; 0x31bd
    mov cx, 0                        ; 0x31be
    cmp byte [bx + 0x5d69], 0x11     ; 0x31c1
    jbe short @..api_idx_0052.l20    ; 0x31c6
    mov cx, 1                        ; 0x31c8
@..api_idx_0052.l20:
    sub ax, cx                       ; 0x31cb
    mov byte [bx + 0x5daa], al       ; 0x31cd
    mov al, byte [bx + 0x5daa]       ; 0x31d1
    cbw                              ; 0x31d5
    mov cx, 0                        ; 0x31d6
    cmp byte [bx + 0x5e2b], 5        ; 0x31d9
    jne short @..api_idx_0052.l21    ; 0x31de
    mov cx, data_0002                ; 0x31e0
@..api_idx_0052.l21:
    sub ax, cx                       ; 0x31e3
    mov byte [bx + 0x5daa], al       ; 0x31e5
    cmp byte [bx + 0x5e2d], 0xd      ; 0x31e9
    je short @..api_idx_0052.l22     ; 0x31ee
    cmp byte [bx + 0x5e2d], 0xc      ; 0x31f0
    jne short @..api_idx_0052.l24    ; 0x31f5
@..api_idx_0052.l22:
    mov ax, 0xa                      ; 0x31f7
    cmp word [bx + 0x5c18], byte 0x14 ; 0x31fa
    jg short @..api_idx_0052.l23     ; 0x31ff
    mov ax, word [bx + 0x5c18]       ; 0x3201
    mov cx, data_0002                ; 0x3205
    cwd                              ; 0x3208
    idiv cx                          ; 0x3209
@..api_idx_0052.l23:
    mov word [bp - 0x0002], ax       ; 0x320b
    mov al, byte [bx + 0x5d7d]       ; 0x320e
    sub ah, ah                       ; 0x3212
    mov cx, 0xa                      ; 0x3214
    cwd                              ; 0x3217
    idiv cx                          ; 0x3218
    add word [bp - 0x0002], ax       ; 0x321a
    mov al, byte [bx + 0x5daa]       ; 0x321d
    cbw                              ; 0x3221
    sub ax, word [bp - 0x0002]       ; 0x3222
    mov byte [bx + 0x5daa], al       ; 0x3225
@..api_idx_0052.l24:
    mov word [bp - 0x0002], 3        ; 0x3229
@..api_idx_0052.l25:
    mov ax, 0x248                    ; 0x322e
    imul word [bp + 0x4]             ; 0x3231
    mov bx, ax                       ; 0x3234
    mov al, byte [bx + 0x5daa]       ; 0x3236
    add bx, word [bp - 0x0002]       ; 0x323a
    mov byte [bx + 0x5daa], al       ; 0x323d
    mov al, byte [bx + 0x5d48]       ; 0x3241
    sub ah, ah                       ; 0x3245
    cmp ax, 0xff                     ; 0x3247
    je short @..api_idx_0052.l26     ; 0x324a
    mov ax, 0x248                    ; 0x324c
    imul word [bp + 0x4]             ; 0x324f
    push ax                          ; 0x3252
    mov al, byte [bx + 0x5d48]       ; 0x3253
    sub ah, ah                       ; 0x3257
    mov cx, 0xc                      ; 0x3259
    imul cx                          ; 0x325c
    mov cx, ax                       ; 0x325e
    pop ax                           ; 0x3260
    add ax, cx                       ; 0x3261
    mov bx, ax                       ; 0x3263
    mov al, byte [bx + 0x5c3f]       ; 0x3265
    push ax                          ; 0x3269
    mov ax, 0x248                    ; 0x326a
    imul word [bp + 0x4]             ; 0x326d
    mov cx, ax                       ; 0x3270
    add ax, word [bp - 0x0002]       ; 0x3272
    mov bx, ax                       ; 0x3275
    pop ax                           ; 0x3277
    sub byte [bx + 0x5daa], al       ; 0x3278
@..api_idx_0052.l26:
    inc word [bp - 0x0002]           ; 0x327c
    mov ax, word [bp - 0x0002]       ; 0x327f
    cmp ax, strict word 8            ; 0x3282
    jl short @..api_idx_0052.l25     ; 0x3285
    ret                              ; 0x3287
api_idx_0004_5:
    mov ax, 0xfffc                   ; 0x3288
    call ds_dispatch_f40b            ; 0x328b
    mov ax, 0xc2                     ; 0x328e
    push ax                          ; 0x3291
    mov ax, 0x13f                    ; 0x3292
    push ax                          ; 0x3295
    mov ax, 0xbc                     ; 0x3296
    push ax                          ; 0x3299
    mov ax, 0                        ; 0x329a
    push ax                          ; 0x329d
    call ds_dispatch_e928            ; 0x329e
    add sp, byte 8                   ; 0x32a1
    mov word [bp - 0x0002], dx       ; 0x32a4
    mov word [bp - 0x0004], ax       ; 0x32a7
    mov ax, 0xbc                     ; 0x32aa
    push ax                          ; 0x32ad
    push word [bp + 0x4]             ; 0x32ae
    call ds_dispatch_fa90            ; 0x32b1
    pop cx                           ; 0x32b4
    mov cx, 6                        ; 0x32b5
    imul cx                          ; 0x32b8
    mov cx, data_0002                ; 0x32ba
    cwd                              ; 0x32bd
    idiv cx                          ; 0x32be
    mov cx, ax                       ; 0x32c0
    mov ax, 0xa0                     ; 0x32c2
    sub ax, cx                       ; 0x32c5
    push ax                          ; 0x32c7
    call ds_dispatch_e809            ; 0x32c8
    add sp, byte 4                   ; 0x32cb
    mov ax, 0                        ; 0x32ce
    push ax                          ; 0x32d1
    mov ax, 0x55                     ; 0x32d2
    push ax                          ; 0x32d5
    call ds_dispatch_e823            ; 0x32d6
    add sp, byte 4                   ; 0x32d9
    mov ax, 0                        ; 0x32dc
    push ax                          ; 0x32df
    push word [bp + 0x4]             ; 0x32e0
    call ds_dispatch_e84e            ; 0x32e3
    add sp, byte 4                   ; 0x32e6
    mov ax, 0xc2                     ; 0x32e9
    push ax                          ; 0x32ec
    mov ax, 0x13f                    ; 0x32ed
    push ax                          ; 0x32f0
    mov ax, 0xbc                     ; 0x32f1
    push ax                          ; 0x32f4
    mov ax, 0                        ; 0x32f5
    push ax                          ; 0x32f8
    call ds_dispatch_e8da            ; 0x32f9
    add sp, byte 8                   ; 0x32fc
    cmp word [bp + 0x6], byte 0      ; 0x32ff
    jle short @..api_idx_0004_5.l1   ; 0x3303
    mov ax, 0                        ; 0x3305
    push ax                          ; 0x3308
    call ds_dispatch_b7e0            ; 0x3309
    pop cx                           ; 0x330c
@..api_idx_0004_5.l1:
    push word [data_905a]            ; 0x330d
    call ds_dispatch_b75e            ; 0x3311
    pop cx                           ; 0x3314
    mov ax, 1                        ; 0x3315
    push ax                          ; 0x3318
    push word [bp - 0x0002]          ; 0x3319
    push word [bp - 0x0004]          ; 0x331c
    call ds_dispatch_e94f            ; 0x331f
    add sp, byte 6                   ; 0x3322
    mov ax, 0xc2                     ; 0x3325
    push ax                          ; 0x3328
    mov ax, 0x13f                    ; 0x3329
    push ax                          ; 0x332c
    mov ax, 0xbc                     ; 0x332d
    push ax                          ; 0x3330
    mov ax, 0                        ; 0x3331
    push ax                          ; 0x3334
    call ds_dispatch_e8da            ; 0x3335
    add sp, byte 8                   ; 0x3338
    ret                              ; 0x333b
api_idx_0020:
    mov ax, 0xffe0                   ; 0x333c
    call ds_dispatch_f40b            ; 0x333f
    cmp word [bp + 0x4], byte 0      ; 0x3342
    je short @..api_idx_0020.l1      ; 0x3346
    jmp near @..api_idx_0020.l2      ; 0x3348
@..api_idx_0020.l1:
    lea ax, word [bp - 0x000c]       ; 0x334b
    push ax                          ; 0x334e
    push word [bp + 0xe]             ; 0x334f
    call ds_dispatch_b53b            ; 0x3352
    add sp, byte 4                   ; 0x3355
    lea ax, word [bp - 0x0016]       ; 0x3358
    push ax                          ; 0x335b
    push word [bp + 0xa]             ; 0x335c
    call ds_dispatch_b27d            ; 0x335f
    add sp, byte 4                   ; 0x3362
    lea ax, word [bp - 0x0020]       ; 0x3365
    push ax                          ; 0x3368
    push word [bp + 0xc]             ; 0x3369
    call ds_dispatch_b27d            ; 0x336c
    add sp, byte 4                   ; 0x336f
    lea ax, word [bp - 0x000c]       ; 0x3372
    push ax                          ; 0x3375
    call ds_dispatch_fa90            ; 0x3376
    pop cx                           ; 0x3379
    push ax                          ; 0x337a
    lea ax, word [bp - 0x0016]       ; 0x337b
    push ax                          ; 0x337e
    call ds_dispatch_fa90            ; 0x337f
    pop cx                           ; 0x3382
    mov cx, ax                       ; 0x3383
    pop ax                           ; 0x3385
    add ax, cx                       ; 0x3386
    push ax                          ; 0x3388
    push word [bp + 0x10]            ; 0x3389
    call ds_dispatch_fa90            ; 0x338c
    pop cx                           ; 0x338f
    mov cx, ax                       ; 0x3390
    pop ax                           ; 0x3392
    add ax, cx                       ; 0x3393
    push ax                          ; 0x3395
    lea ax, word [bp - 0x0020]       ; 0x3396
    push ax                          ; 0x3399
    call ds_dispatch_fa90            ; 0x339a
    pop cx                           ; 0x339d
    mov cx, ax                       ; 0x339e
    pop ax                           ; 0x33a0
    add ax, cx                       ; 0x33a1
    push ax                          ; 0x33a3
    push word [bp + 0x12]            ; 0x33a4
    call ds_dispatch_fa90            ; 0x33a7
    pop cx                           ; 0x33aa
    mov cx, ax                       ; 0x33ab
    pop ax                           ; 0x33ad
    add ax, cx                       ; 0x33ae
    inc ax                           ; 0x33b0
    mov word [bp - 0x0002], ax       ; 0x33b1
    push word [bp + 0x14]            ; 0x33b4
    mov ax, word [bp + 0x8]          ; 0x33b7
    add ax, strict word 4            ; 0x33ba
    push ax                          ; 0x33bd
    mov ax, 6                        ; 0x33be
    imul word [bp - 0x0002]          ; 0x33c1
    add ax, word [bp + 0x6]          ; 0x33c4
    dec ax                           ; 0x33c7
    dec ax                           ; 0x33c8
    push ax                          ; 0x33c9
    push word [bp + 0x8]             ; 0x33ca
    push word [bp + 0x6]             ; 0x33cd
    call ds_dispatch_e901            ; 0x33d0
    add sp, byte 0x0a                ; 0x33d3
    push word [bp + 0x8]             ; 0x33d6
    push word [bp + 0x6]             ; 0x33d9
    call ds_dispatch_e809            ; 0x33dc
    add sp, byte 4                   ; 0x33df
    push word [bp + 0x14]            ; 0x33e2
    push word [bp + 0x16]            ; 0x33e5
    call ds_dispatch_e823            ; 0x33e8
    add sp, byte 4                   ; 0x33eb
    mov ax, 0                        ; 0x33ee
    push ax                          ; 0x33f1
    lea ax, word [bp - 0x000c]       ; 0x33f2
    push ax                          ; 0x33f5
    call ds_dispatch_e84e            ; 0x33f6
    add sp, byte 4                   ; 0x33f9
    mov ax, 0                        ; 0x33fc
    push ax                          ; 0x33ff
    mov ax, 0x20                     ; 0x3400
    push ax                          ; 0x3403
    call ds_dispatch_e830            ; 0x3404
    add sp, byte 4                   ; 0x3407
    mov ax, 0                        ; 0x340a
    push ax                          ; 0x340d
    lea ax, word [bp - 0x0016]       ; 0x340e
    push ax                          ; 0x3411
    call ds_dispatch_e84e            ; 0x3412
    add sp, byte 4                   ; 0x3415
    mov ax, 0                        ; 0x3418
    push ax                          ; 0x341b
    push word [bp + 0x10]            ; 0x341c
    call ds_dispatch_e84e            ; 0x341f
    add sp, byte 4                   ; 0x3422
    mov ax, 0                        ; 0x3425
    push ax                          ; 0x3428
    lea ax, word [bp - 0x0020]       ; 0x3429
    push ax                          ; 0x342c
    call ds_dispatch_e84e            ; 0x342d
    add sp, byte 4                   ; 0x3430
    mov ax, 0                        ; 0x3433
    push ax                          ; 0x3436
    push word [bp + 0x12]            ; 0x3437
    call ds_dispatch_e84e            ; 0x343a
    add sp, byte 4                   ; 0x343d
    jmp short @..api_idx_0020.l3     ; 0x3440
@..api_idx_0020.l2:
    lea ax, word [bp - 0x000c]       ; 0x3442
    push ax                          ; 0x3445
    push word [bp + 0xe]             ; 0x3446
    call ds_dispatch_b53b            ; 0x3449
    add sp, byte 4                   ; 0x344c
    mov word [bp - 0x0002], 6        ; 0x344f
    push word [bp + 0x14]            ; 0x3454
    mov ax, word [bp + 0x8]          ; 0x3457
    add ax, strict word 4            ; 0x345a
    push ax                          ; 0x345d
    mov ax, 6                        ; 0x345e
    imul word [bp - 0x0002]          ; 0x3461
    add ax, word [bp + 0x6]          ; 0x3464
    dec ax                           ; 0x3467
    dec ax                           ; 0x3468
    push ax                          ; 0x3469
    push word [bp + 0x8]             ; 0x346a
    push word [bp + 0x6]             ; 0x346d
    call ds_dispatch_e901            ; 0x3470
    add sp, byte 0x0a                ; 0x3473
    push word [bp + 0x8]             ; 0x3476
    push word [bp + 0x6]             ; 0x3479
    call ds_dispatch_e809            ; 0x347c
    add sp, byte 4                   ; 0x347f
    push word [bp + 0x14]            ; 0x3482
    push word [bp + 0x16]            ; 0x3485
    call ds_dispatch_e823            ; 0x3488
    add sp, byte 4                   ; 0x348b
    mov ax, 0                        ; 0x348e
    push ax                          ; 0x3491
    lea ax, word [bp - 0x000c]       ; 0x3492
    push ax                          ; 0x3495
    call ds_dispatch_e84e            ; 0x3496
    add sp, byte 4                   ; 0x3499
    mov ax, 0                        ; 0x349c
    push ax                          ; 0x349f
    mov ax, 3                        ; 0x34a0
    push ax                          ; 0x34a3
    push word [bp + 0xa]             ; 0x34a4
    call ds_dispatch_b2e7            ; 0x34a7
    add sp, byte 6                   ; 0x34aa
@..api_idx_0020.l3:
    mov ax, word [bp + 0x8]          ; 0x34ad
    add ax, strict word 4            ; 0x34b0
    push ax                          ; 0x34b3
    mov ax, 6                        ; 0x34b4
    imul word [bp - 0x0002]          ; 0x34b7
    add ax, word [bp + 0x6]          ; 0x34ba
    dec ax                           ; 0x34bd
    dec ax                           ; 0x34be
    push ax                          ; 0x34bf
    push word [bp + 0x8]             ; 0x34c0
    push word [bp + 0x6]             ; 0x34c3
    call ds_dispatch_e8da            ; 0x34c6
    add sp, byte 8                   ; 0x34c9
    ret                              ; 0x34cc
api_idx_0004_6:
    mov ax, 0xfffc                   ; 0x34cd
    call ds_dispatch_f40b            ; 0x34d0
    mov ax, word [data_0038]         ; 0x34d3
    mov word [bp - 0x0004], ax       ; 0x34d6
    mov word [bp - 0x0002], 0        ; 0x34d9
@..api_idx_0004_6.l1:
    mov bx, word [bp + 0x6]          ; 0x34de
    mov si, word [bp - 0x0002]       ; 0x34e1
    cmp byte [bx + si], 0x31         ; 0x34e4
    je short @..api_idx_0004_6.l2    ; 0x34e7
    mov ax, 0x248                    ; 0x34e9
    imul word [bp + 0x4]             ; 0x34ec
    add ax, word [bp - 0x0004]       ; 0x34ef
    add ax, si                       ; 0x34f2
    mov bx, ax                       ; 0x34f4
    cmp byte [bx + 0x5d6c], 0        ; 0x34f6
    jbe short @..api_idx_0004_6.l3   ; 0x34fb
@..api_idx_0004_6.l2:
    mov ax, 1                        ; 0x34fd
    jmp short @..api_idx_0004_6.l4   ; 0x3500
@..api_idx_0004_6.l3:
    mov ax, 0                        ; 0x3502
@..api_idx_0004_6.l4:
    add si, word [bp - 0x0004]       ; 0x3505
    mov cx, si                       ; 0x3508
    shl cx, 1                        ; 0x350a
    mov bx, cx                       ; 0x350c
    mov word [bx - 0x6a68], ax       ; 0x350e
    inc word [bp - 0x0002]           ; 0x3512
    mov ax, word [bp - 0x0002]       ; 0x3515
    cmp ax, strict word 0xa          ; 0x3518
    jl short @..api_idx_0004_6.l1    ; 0x351b
    mov ax, word [data_003c]         ; 0x351d
    mov word [bp - 0x0004], ax       ; 0x3520
    mov word [bp - 0x0002], 0        ; 0x3523
@..api_idx_0004_6.l5:
    mov bx, word [bp + 0x8]          ; 0x3528
    mov si, word [bp - 0x0002]       ; 0x352b
    cmp byte [bx + si], 0x31         ; 0x352e
    je short @..api_idx_0004_6.l6    ; 0x3531
    mov ax, 0x248                    ; 0x3533
    imul word [bp + 0x4]             ; 0x3536
    add ax, word [bp - 0x0004]       ; 0x3539
    add ax, si                       ; 0x353c
    mov bx, ax                       ; 0x353e
    cmp byte [bx + 0x5d6c], 0        ; 0x3540
    jbe short @..api_idx_0004_6.l7   ; 0x3545
@..api_idx_0004_6.l6:
    mov ax, 1                        ; 0x3547
    jmp short @..api_idx_0004_6.l8   ; 0x354a
@..api_idx_0004_6.l7:
    mov ax, 0                        ; 0x354c
@..api_idx_0004_6.l8:
    add si, word [bp - 0x0004]       ; 0x354f
    mov cx, si                       ; 0x3552
    shl cx, 1                        ; 0x3554
    mov bx, cx                       ; 0x3556
    mov word [bx - 0x6a68], ax       ; 0x3558
    inc word [bp - 0x0002]           ; 0x355c
    mov ax, word [bp - 0x0002]       ; 0x355f
    cmp ax, strict word 8            ; 0x3562
    jl short @..api_idx_0004_6.l5    ; 0x3565
    mov ax, word [data_0040]         ; 0x3567
    mov word [bp - 0x0004], ax       ; 0x356a
    mov word [bp - 0x0002], 0        ; 0x356d
@..api_idx_0004_6.l9:
    mov bx, word [bp + 0xa]          ; 0x3572
    mov si, word [bp - 0x0002]       ; 0x3575
    cmp byte [bx + si], 0x31         ; 0x3578
    je short @..api_idx_0004_6.l10   ; 0x357b
    mov ax, 0x248                    ; 0x357d
    imul word [bp + 0x4]             ; 0x3580
    add ax, word [bp - 0x0004]       ; 0x3583
    add ax, si                       ; 0x3586
    mov bx, ax                       ; 0x3588
    cmp byte [bx + 0x5d6c], 0        ; 0x358a
    jbe short @..api_idx_0004_6.l11  ; 0x358f
@..api_idx_0004_6.l10:
    mov ax, 1                        ; 0x3591
    jmp short @..api_idx_0004_6.l12  ; 0x3594
@..api_idx_0004_6.l11:
    mov ax, 0                        ; 0x3596
@..api_idx_0004_6.l12:
    add si, word [bp - 0x0004]       ; 0x3599
    mov cx, si                       ; 0x359c
    shl cx, 1                        ; 0x359e
    mov bx, cx                       ; 0x35a0
    mov word [bx - 0x6a68], ax       ; 0x35a2
    inc word [bp - 0x0002]           ; 0x35a6
    mov ax, word [bp - 0x0002]       ; 0x35a9
    cmp ax, strict word 6            ; 0x35ac
    jl short @..api_idx_0004_6.l9    ; 0x35af
    mov ax, word [data_0044]         ; 0x35b1
    mov word [bp - 0x0004], ax       ; 0x35b4
    mov word [bp - 0x0002], 0        ; 0x35b7
@..api_idx_0004_6.l13:
    mov bx, word [bp + 0xc]          ; 0x35bc
    mov si, word [bp - 0x0002]       ; 0x35bf
    cmp byte [bx + si], 0x31         ; 0x35c2
    je short @..api_idx_0004_6.l14   ; 0x35c5
    mov ax, 0x248                    ; 0x35c7
    imul word [bp + 0x4]             ; 0x35ca
    add ax, word [bp - 0x0004]       ; 0x35cd
    add ax, si                       ; 0x35d0
    mov bx, ax                       ; 0x35d2
    cmp byte [bx + 0x5d6c], 0        ; 0x35d4
    jbe short @..api_idx_0004_6.l15  ; 0x35d9
@..api_idx_0004_6.l14:
    mov ax, 1                        ; 0x35db
    jmp short @..api_idx_0004_6.l16  ; 0x35de
@..api_idx_0004_6.l15:
    mov ax, 0                        ; 0x35e0
@..api_idx_0004_6.l16:
    add si, word [bp - 0x0004]       ; 0x35e3
    mov cx, si                       ; 0x35e6
    shl cx, 1                        ; 0x35e8
    mov bx, cx                       ; 0x35ea
    mov word [bx - 0x6a68], ax       ; 0x35ec
    inc word [bp - 0x0002]           ; 0x35f0
    mov ax, word [bp - 0x0002]       ; 0x35f3
    cmp ax, strict word 0xa          ; 0x35f6
    jl short @..api_idx_0004_6.l13   ; 0x35f9
    ret                              ; 0x35fb
api_idx_0004_7:
    mov ax, 0xfffc                   ; 0x35fc
    call ds_dispatch_f40b            ; 0x35ff
    mov ax, 0x248                    ; 0x3602
    imul word [bp + 0x4]             ; 0x3605
    mov bx, ax                       ; 0x3608
    mov al, byte [bx + 0x5e2d]       ; 0x360a
    sub ah, ah                       ; 0x360e
    jmp near @..api_idx_0004_7.l1    ; 0x3610
    mov ax, 0x91ec                   ; 0x3613
    push ax                          ; 0x3616
    mov ax, 0x91e5                   ; 0x3617
    push ax                          ; 0x361a
    mov ax, 0x91dc                   ; 0x361b
    push ax                          ; 0x361e
    mov ax, 0x91d1                   ; 0x361f
    push ax                          ; 0x3622
    push word [bp + 0x4]             ; 0x3623
    call api_idx_0004_6              ; 0x3626
    add sp, byte 0x0a                ; 0x3629
    jmp near @..api_idx_0004_7.l2    ; 0x362c
    mov ax, 0x9212                   ; 0x362f
    push ax                          ; 0x3632
    mov ax, 0x920b                   ; 0x3633
    push ax                          ; 0x3636
    mov ax, 0x9202                   ; 0x3637
    push ax                          ; 0x363a
    mov ax, 0x91f7                   ; 0x363b
    push ax                          ; 0x363e
    push word [bp + 0x4]             ; 0x363f
    call api_idx_0004_6              ; 0x3642
    add sp, byte 0x0a                ; 0x3645
    jmp near @..api_idx_0004_7.l2    ; 0x3648
    mov ax, 0x9238                   ; 0x364b
    push ax                          ; 0x364e
    mov ax, 0x9231                   ; 0x364f
    push ax                          ; 0x3652
    mov ax, 0x9228                   ; 0x3653
    push ax                          ; 0x3656
    mov ax, 0x921d                   ; 0x3657
    push ax                          ; 0x365a
    push word [bp + 0x4]             ; 0x365b
    call api_idx_0004_6              ; 0x365e
    add sp, byte 0x0a                ; 0x3661
    jmp near @..api_idx_0004_7.l2    ; 0x3664
    mov ax, 0x925e                   ; 0x3667
    push ax                          ; 0x366a
    mov ax, 0x9257                   ; 0x366b
    push ax                          ; 0x366e
    mov ax, 0x924e                   ; 0x366f
    push ax                          ; 0x3672
    mov ax, 0x9243                   ; 0x3673
    push ax                          ; 0x3676
    push word [bp + 0x4]             ; 0x3677
    call api_idx_0004_6              ; 0x367a
    add sp, byte 0x0a                ; 0x367d
    jmp near @..api_idx_0004_7.l2    ; 0x3680
    mov ax, 0x9284                   ; 0x3683
    push ax                          ; 0x3686
    mov ax, 0x927d                   ; 0x3687
    push ax                          ; 0x368a
    mov ax, 0x9274                   ; 0x368b
    push ax                          ; 0x368e
    mov ax, 0x9269                   ; 0x368f
    push ax                          ; 0x3692
    push word [bp + 0x4]             ; 0x3693
    call api_idx_0004_6              ; 0x3696
    add sp, byte 0x0a                ; 0x3699
    jmp near @..api_idx_0004_7.l2    ; 0x369c
    mov ax, 0x92aa                   ; 0x369f
    push ax                          ; 0x36a2
    mov ax, 0x92a3                   ; 0x36a3
    push ax                          ; 0x36a6
    mov ax, 0x929a                   ; 0x36a7
    push ax                          ; 0x36aa
    mov ax, 0x928f                   ; 0x36ab
    push ax                          ; 0x36ae
    push word [bp + 0x4]             ; 0x36af
    call api_idx_0004_6              ; 0x36b2
    add sp, byte 0x0a                ; 0x36b5
    jmp near @..api_idx_0004_7.l2    ; 0x36b8
    mov ax, 0x92d0                   ; 0x36bb
    push ax                          ; 0x36be
    mov ax, 0x92c9                   ; 0x36bf
    push ax                          ; 0x36c2
    mov ax, 0x92c0                   ; 0x36c3
    push ax                          ; 0x36c6
    mov ax, 0x92b5                   ; 0x36c7
    push ax                          ; 0x36ca
    push word [bp + 0x4]             ; 0x36cb
    call api_idx_0004_6              ; 0x36ce
    add sp, byte 0x0a                ; 0x36d1
    jmp near @..api_idx_0004_7.l2    ; 0x36d4
    mov ax, 0x92f6                   ; 0x36d7
    push ax                          ; 0x36da
    mov ax, 0x92ef                   ; 0x36db
    push ax                          ; 0x36de
    mov ax, 0x92e6                   ; 0x36df
    push ax                          ; 0x36e2
    mov ax, 0x92db                   ; 0x36e3
    push ax                          ; 0x36e6
    push word [bp + 0x4]             ; 0x36e7
    call api_idx_0004_6              ; 0x36ea
    add sp, byte 0x0a                ; 0x36ed
    jmp near @..api_idx_0004_7.l2    ; 0x36f0
    mov ax, 0x931c                   ; 0x36f3
    push ax                          ; 0x36f6
    mov ax, 0x9315                   ; 0x36f7
    push ax                          ; 0x36fa
    mov ax, 0x930c                   ; 0x36fb
    push ax                          ; 0x36fe
    mov ax, 0x9301                   ; 0x36ff
    push ax                          ; 0x3702
    push word [bp + 0x4]             ; 0x3703
    call api_idx_0004_6              ; 0x3706
    add sp, byte 0x0a                ; 0x3709
    jmp near @..api_idx_0004_7.l2    ; 0x370c
    mov ax, 0x9342                   ; 0x370f
    push ax                          ; 0x3712
    mov ax, 0x933b                   ; 0x3713
    push ax                          ; 0x3716
    mov ax, 0x9332                   ; 0x3717
    push ax                          ; 0x371a
    mov ax, 0x9327                   ; 0x371b
    push ax                          ; 0x371e
    push word [bp + 0x4]             ; 0x371f
    call api_idx_0004_6              ; 0x3722
    add sp, byte 0x0a                ; 0x3725
    jmp near @..api_idx_0004_7.l2    ; 0x3728
    mov ax, 0x9368                   ; 0x372b
    push ax                          ; 0x372e
    mov ax, 0x9361                   ; 0x372f
    push ax                          ; 0x3732
    mov ax, 0x9358                   ; 0x3733
    push ax                          ; 0x3736
    mov ax, 0x934d                   ; 0x3737
    push ax                          ; 0x373a
    push word [bp + 0x4]             ; 0x373b
    call api_idx_0004_6              ; 0x373e
    add sp, byte 0x0a                ; 0x3741
    jmp short @..api_idx_0004_7.l2   ; 0x3744
    mov ax, 0x938e                   ; 0x3746
    push ax                          ; 0x3749
    mov ax, 0x9387                   ; 0x374a
    push ax                          ; 0x374d
    mov ax, 0x937e                   ; 0x374e
    push ax                          ; 0x3751
    mov ax, 0x9373                   ; 0x3752
    push ax                          ; 0x3755
    push word [bp + 0x4]             ; 0x3756
    call api_idx_0004_6              ; 0x3759
    add sp, byte 0x0a                ; 0x375c
    jmp short @..api_idx_0004_7.l2   ; 0x375f
    mov ax, 0x93b4                   ; 0x3761
    push ax                          ; 0x3764
    mov ax, 0x93ad                   ; 0x3765
    push ax                          ; 0x3768
    mov ax, 0x93a4                   ; 0x3769
    push ax                          ; 0x376c
    mov ax, 0x9399                   ; 0x376d
    push ax                          ; 0x3770
    push word [bp + 0x4]             ; 0x3771
    call api_idx_0004_6              ; 0x3774
    add sp, byte 0x0a                ; 0x3777
    jmp short @..api_idx_0004_7.l2   ; 0x377a
    mov ax, 0x93da                   ; 0x377c
    push ax                          ; 0x377f
    mov ax, 0x93d3                   ; 0x3780
    push ax                          ; 0x3783
    mov ax, 0x93ca                   ; 0x3784
    push ax                          ; 0x3787
    mov ax, 0x93bf                   ; 0x3788
    push ax                          ; 0x378b
    push word [bp + 0x4]             ; 0x378c
    call api_idx_0004_6              ; 0x378f
    add sp, byte 0x0a                ; 0x3792
    jmp short @..api_idx_0004_7.l2   ; 0x3795
    pop dx                           ; 0x3797
    xchg byte [bp - 0x007a], dh      ; 0x3798
    xchg dx, ax                      ; 0x379b
    xchg byte [bp - 0x357a], ch      ; 0x379c
    db 0x86, 0xe6 ; xchg dh, ah
    xchg byte [bp + si], al          ; 0x37a2
    xchg word [data_3a87], bx        ; 0x37a4
    xchg word [bp - 0x0079], dx      ; 0x37a8
    jb short loc_3734                ; 0x37ab
    lea ax, word [bx - 0x7858]       ; 0x37ad
    ret                              ; 0x37b1
    db 0x87
@..api_idx_0004_7.l1:
    cmp ax, strict word 0xe          ; 0x37b3
    jae short @..api_idx_0004_7.l2   ; 0x37b6
    xchg bx, ax                      ; 0x37b8
    shl bx, 1                        ; 0x37b9
    jmp [cs:bx - 0x7822]             ; 0x37bb
@..api_idx_0004_7.l2:
    mov ax, 0x248                    ; 0x37c0
    imul word [bp + 0x4]             ; 0x37c3
    mov bx, ax                       ; 0x37c6
    cmp byte [bx + 0x5d65], 0xd      ; 0x37c8
    jbe short @..api_idx_0004_7.l3   ; 0x37cd
    cmp byte [bx + 0x5d6a], 0xd      ; 0x37cf
    jbe short @..api_idx_0004_7.l3   ; 0x37d4
    mov word [data_95d0], 1          ; 0x37d6
@..api_idx_0004_7.l3:
    mov word [bp - 0x0004], 0        ; 0x37dc
    mov ax, word [bp + 0x6]          ; 0x37e1
    shl ax, 1                        ; 0x37e4
    shl ax, 1                        ; 0x37e6
    mov bx, ax                       ; 0x37e8
    db 0x8b, 0x87, 0x38, 0x00 ; mov ax, word [bx + 0x38]
    mov word [bp - 0x0002], ax       ; 0x37ee
    jmp short @..api_idx_0004_7.l6   ; 0x37f1
@..api_idx_0004_7.l4:
    mov ax, word [bp - 0x0002]       ; 0x37f3
    shl ax, 1                        ; 0x37f6
    mov bx, ax                       ; 0x37f8
    cmp word [bx - 0x6a68], byte 1   ; 0x37fa
    jne short @..api_idx_0004_7.l5   ; 0x37ff
    mov ax, 0x14                     ; 0x3801
    imul word [bp - 0x0004]          ; 0x3804
    add ax, 0xe38                    ; 0x3807
    push ax                          ; 0x380a
    mov ax, word [bp - 0x0002]       ; 0x380b
    add ax, 0x157c                   ; 0x380e
    push ax                          ; 0x3811
    call ds_dispatch_b53b            ; 0x3812
    add sp, byte 4                   ; 0x3815
    mov ax, word [bp - 0x0002]       ; 0x3818
    mov cx, word [bp - 0x0004]       ; 0x381b
    shl cx, 1                        ; 0x381e
    mov si, cx                       ; 0x3820
    mov bx, word [bp + 0x8]          ; 0x3822
    mov word [bx + si], ax           ; 0x3825
    inc word [bp - 0x0004]           ; 0x3827
@..api_idx_0004_7.l5:
    inc word [bp - 0x0002]           ; 0x382a
@..api_idx_0004_7.l6:
    mov ax, word [bp + 0x6]          ; 0x382d
    shl ax, 1                        ; 0x3830
    shl ax, 1                        ; 0x3832
    mov bx, ax                       ; 0x3834
    db 0x8b, 0x87, 0x3a, 0x00 ; mov ax, word [bx + 0x3a]
    cmp ax, word [bp - 0x0002]       ; 0x383a
    jge short @..api_idx_0004_7.l4   ; 0x383d
    mov ax, 0x95dc                   ; 0x383f
    push ax                          ; 0x3842
    mov ax, 0x159e                   ; 0x3843
    push ax                          ; 0x3846
    call ds_dispatch_b53b            ; 0x3847
    add sp, byte 4                   ; 0x384a
    mov ax, word [bp - 0x0004]       ; 0x384d
    ret                              ; 0x3850
api_idx_0002_5:
    mov ax, 0xfffe                   ; 0x3851
    call ds_dispatch_f40b            ; 0x3854
    mov ax, 0                        ; 0x3857
    push ax                          ; 0x385a
    push ax                          ; 0x385b
    push word [data_9420]            ; 0x385c
    push word [data_941e]            ; 0x3860
    call ds_dispatch_e942            ; 0x3864
    add sp, byte 8                   ; 0x3867
    mov word [bp - 0x0002], 0        ; 0x386a
    jmp near @..api_idx_0002_5.l2    ; 0x386f
@..api_idx_0002_5.l1:
    mov ax, 0                        ; 0x3872
    push ax                          ; 0x3875
    mov ax, word [bp + 0x6]          ; 0x3876
    shl ax, 1                        ; 0x3879
    mov bx, ax                       ; 0x387b
    db 0xff, 0xb7, 0x30, 0x00 ; push word [bx + 0x30]
    call ds_dispatch_e823            ; 0x3881
    add sp, byte 4                   ; 0x3884
    mov ax, 6                        ; 0x3887
    imul word [bp - 0x0002]          ; 0x388a
    add ax, strict word 0x72         ; 0x388d
    push ax                          ; 0x3890
    mov ax, 6                        ; 0x3891
    push ax                          ; 0x3894
    call ds_dispatch_e809            ; 0x3895
    add sp, byte 4                   ; 0x3898
    mov ax, 0                        ; 0x389b
    push ax                          ; 0x389e
    mov ax, 0x14                     ; 0x389f
    imul word [bp - 0x0002]          ; 0x38a2
    add ax, 0xe38                    ; 0x38a5
    push ax                          ; 0x38a8
    call ds_dispatch_e84e            ; 0x38a9
    add sp, byte 4                   ; 0x38ac
    mov ax, 6                        ; 0x38af
    imul word [bp - 0x0002]          ; 0x38b2
    add ax, strict word 0x72         ; 0x38b5
    push ax                          ; 0x38b8
    mov ax, 0x85                     ; 0x38b9
    push ax                          ; 0x38bc
    call ds_dispatch_e809            ; 0x38bd
    add sp, byte 4                   ; 0x38c0
    mov ax, 0                        ; 0x38c3
    push ax                          ; 0x38c6
    mov ax, 1                        ; 0x38c7
    push ax                          ; 0x38ca
    call ds_dispatch_e823            ; 0x38cb
    add sp, byte 4                   ; 0x38ce
    mov ax, 0                        ; 0x38d1
    push ax                          ; 0x38d4
    mov ax, 3                        ; 0x38d5
    push ax                          ; 0x38d8
    mov ax, 0x248                    ; 0x38d9
    imul word [bp + 0x4]             ; 0x38dc
    mov cx, word [bp - 0x0002]       ; 0x38df
    shl cx, 1                        ; 0x38e2
    mov si, cx                       ; 0x38e4
    mov bx, word [bp + 0xa]          ; 0x38e6
    mov cx, word [bx + si]           ; 0x38e9
    add ax, cx                       ; 0x38eb
    mov bx, ax                       ; 0x38ed
    mov al, byte [bx + 0x5d6c]       ; 0x38ef
    sub ah, ah                       ; 0x38f3
    push ax                          ; 0x38f5
    call ds_dispatch_b2e7            ; 0x38f6
    add sp, byte 6                   ; 0x38f9
    inc word [bp - 0x0002]           ; 0x38fc
@..api_idx_0002_5.l2:
    mov ax, word [bp - 0x0002]       ; 0x38ff
    cmp ax, word [bp + 0x8]          ; 0x3902
    jge short @..api_idx_0002_5.l3   ; 0x3905
    jmp near @..api_idx_0002_5.l1    ; 0x3907
@..api_idx_0002_5.l3:
    ret                              ; 0x390a
api_idx_002e:
    mov ax, 0xffd2                   ; 0x390b
    call ds_dispatch_f40b            ; 0x390e
    mov ax, 0                        ; 0x3911
    push ax                          ; 0x3914
    mov ax, 0x16                     ; 0x3915
    push ax                          ; 0x3918
    call ds_dispatch_e823            ; 0x3919
    add sp, byte 4                   ; 0x391c
    mov ax, 0xae                     ; 0x391f
    push ax                          ; 0x3922
    mov ax, 6                        ; 0x3923
    push ax                          ; 0x3926
    call ds_dispatch_e809            ; 0x3927
    add sp, byte 4                   ; 0x392a
    mov ax, 0                        ; 0x392d
    push ax                          ; 0x3930
    mov ax, 0x95dc                   ; 0x3931
    push ax                          ; 0x3934
    call ds_dispatch_e84e            ; 0x3935
    add sp, byte 4                   ; 0x3938
    mov word [bp - 0x0004], 0        ; 0x393b
    mov word [bp - 0x0006], 0        ; 0x3940
    mov word [bp - 0x0002], 0        ; 0x3945
@..api_idx_002e.l1:
    mov ax, 0xa                      ; 0x394a
    imul word [bp - 0x0002]          ; 0x394d
    mov bx, ax                       ; 0x3950
    add bx, bp                       ; 0x3952
    mov byte [bx - 0x002e], 0        ; 0x3954
    mov ax, word [bp - 0x0002]       ; 0x3958
    cmp ax, word [bp + 0x4]          ; 0x395b
    je short @..api_idx_002e.l4      ; 0x395e
    shl ax, 1                        ; 0x3960
    mov bx, ax                       ; 0x3962
    cmp word [bx - 0x6a10], byte 0   ; 0x3964
    jg short @..api_idx_002e.l2      ; 0x3969
    mov ax, word [bp - 0x0002]       ; 0x396b
    cmp ax, strict word 2            ; 0x396e
    je short @..api_idx_002e.l4      ; 0x3971
@..api_idx_002e.l2:
    cmp word [bp - 0x0006], byte 0   ; 0x3973
    je short @..api_idx_002e.l3      ; 0x3977
    inc word [bp - 0x0004]           ; 0x3979
@..api_idx_002e.l3:
    mov ax, 0xa                      ; 0x397c
    imul word [bp - 0x0002]          ; 0x397f
    lea cx, word [bp - 0x002e]       ; 0x3982
    add ax, cx                       ; 0x3985
    push ax                          ; 0x3987
    push word [bx - 0x6a10]          ; 0x3988
    call ds_dispatch_b27d            ; 0x398c
    add sp, byte 4                   ; 0x398f
    mov word [bp - 0x0006], 1        ; 0x3992
    jmp short @..api_idx_002e.l6     ; 0x3997
@..api_idx_002e.l4:
    mov ax, word [bp - 0x0002]       ; 0x3999
    cmp ax, word [bp + 0x4]          ; 0x399c
    jne short @..api_idx_002e.l6     ; 0x399f
    cmp word [bp - 0x0006], byte 0   ; 0x39a1
    je short @..api_idx_002e.l5      ; 0x39a5
    inc word [bp - 0x0004]           ; 0x39a7
@..api_idx_002e.l5:
    mov cx, 0xa                      ; 0x39aa
    imul cx                          ; 0x39ad
    lea cx, word [bp - 0x002e]       ; 0x39af
    add ax, cx                       ; 0x39b2
    push ax                          ; 0x39b4
    push word [bp + 0x6]             ; 0x39b5
    call ds_dispatch_b27d            ; 0x39b8
    add sp, byte 4                   ; 0x39bb
    mov word [bp - 0x0006], 1        ; 0x39be
@..api_idx_002e.l6:
    mov ax, 0xa                      ; 0x39c3
    imul word [bp - 0x0002]          ; 0x39c6
    lea cx, word [bp - 0x002e]       ; 0x39c9
    add ax, cx                       ; 0x39cc
    push ax                          ; 0x39ce
    call ds_dispatch_fa90            ; 0x39cf
    pop cx                           ; 0x39d2
    add word [bp - 0x0004], ax       ; 0x39d3
    inc word [bp - 0x0002]           ; 0x39d6
    mov ax, word [bp - 0x0002]       ; 0x39d9
    cmp ax, strict word 4            ; 0x39dc
    jge short @..api_idx_002e.l7     ; 0x39df
    jmp near @..api_idx_002e.l1      ; 0x39e1
@..api_idx_002e.l7:
    mov ax, 0xae                     ; 0x39e4
    push ax                          ; 0x39e7
    mov ax, 0x1a                     ; 0x39e8
    sub ax, word [bp - 0x0004]       ; 0x39eb
    mov cx, 6                        ; 0x39ee
    imul cx                          ; 0x39f1
    add ax, strict word 0xfffb       ; 0x39f3
    push ax                          ; 0x39f6
    call ds_dispatch_e809            ; 0x39f7
    add sp, byte 4                   ; 0x39fa
    mov word [bp - 0x0006], 0        ; 0x39fd
    mov word [bp - 0x0002], 0        ; 0x3a02
@..api_idx_002e.l8:
    mov ax, 0xa                      ; 0x3a07
    imul word [bp - 0x0002]          ; 0x3a0a
    lea cx, word [bp - 0x002e]       ; 0x3a0d
    add ax, cx                       ; 0x3a10
    push ax                          ; 0x3a12
    call ds_dispatch_fa90            ; 0x3a13
    pop cx                           ; 0x3a16
    cmp ax, strict word 0            ; 0x3a17
    jle short @..api_idx_002e.l10    ; 0x3a1a
    cmp word [bp - 0x0006], byte 0   ; 0x3a1c
    je short @..api_idx_002e.l9      ; 0x3a20
    mov ax, 0                        ; 0x3a22
    push ax                          ; 0x3a25
    mov ax, 1                        ; 0x3a26
    push ax                          ; 0x3a29
    call ds_dispatch_e823            ; 0x3a2a
    add sp, byte 4                   ; 0x3a2d
    mov ax, 0                        ; 0x3a30
    push ax                          ; 0x3a33
    mov ax, 0x2f                     ; 0x3a34
    push ax                          ; 0x3a37
    call ds_dispatch_e830            ; 0x3a38
    add sp, byte 4                   ; 0x3a3b
@..api_idx_002e.l9:
    mov ax, 0                        ; 0x3a3e
    push ax                          ; 0x3a41
    mov ax, word [bp - 0x0002]       ; 0x3a42
    shl ax, 1                        ; 0x3a45
    mov bx, ax                       ; 0x3a47
    db 0xff, 0xb7, 0x30, 0x00 ; push word [bx + 0x30]
    call ds_dispatch_e823            ; 0x3a4d
    add sp, byte 4                   ; 0x3a50
    mov ax, 0                        ; 0x3a53
    push ax                          ; 0x3a56
    mov ax, 0xa                      ; 0x3a57
    imul word [bp - 0x0002]          ; 0x3a5a
    lea cx, word [bp - 0x002e]       ; 0x3a5d
    add ax, cx                       ; 0x3a60
    push ax                          ; 0x3a62
    call ds_dispatch_e84e            ; 0x3a63
    add sp, byte 4                   ; 0x3a66
    mov word [bp - 0x0006], 1        ; 0x3a69
@..api_idx_002e.l10:
    inc word [bp - 0x0002]           ; 0x3a6e
    mov ax, word [bp - 0x0002]       ; 0x3a71
    cmp ax, strict word 4            ; 0x3a74
    jl short @..api_idx_002e.l8      ; 0x3a77
    ret                              ; 0x3a79
api_idx_0032:
    mov ax, 0xffce                   ; 0x3a7a
    call ds_dispatch_f40b            ; 0x3a7d
    mov ax, word [bp + 0x6]          ; 0x3a80
    shl ax, 1                        ; 0x3a83
    mov bx, ax                       ; 0x3a85
    mov ax, word [bx - 0x6a10]       ; 0x3a87
    mov word [bp - 0x000c], ax       ; 0x3a8b
    mov word [bp - 0x000a], 0        ; 0x3a8e
    mov word [bp - 0x0028], 0xffff   ; 0x3a93
    mov ax, 0xc6                     ; 0x3a98
    push ax                          ; 0x3a9b
    mov ax, 0x13c                    ; 0x3a9c
    push ax                          ; 0x3a9f
    mov ax, 0xbb                     ; 0x3aa0
    push ax                          ; 0x3aa3
    mov ax, 3                        ; 0x3aa4
    push ax                          ; 0x3aa7
    call ds_dispatch_e928            ; 0x3aa8
    add sp, byte 8                   ; 0x3aab
    mov word [bp - 0x002c], dx       ; 0x3aae
    mov word [bp - 0x002e], ax       ; 0x3ab1
@..api_idx_0032.l1:
    push word [bp + 0xa]             ; 0x3ab4
    push word [bp + 0x8]             ; 0x3ab7
    push word [bp + 0x6]             ; 0x3aba
    push word [bp + 0x4]             ; 0x3abd
    call api_idx_0002_5              ; 0x3ac0
    add sp, byte 8                   ; 0x3ac3
    push word [bp - 0x000c]          ; 0x3ac6
    push word [bp + 0x6]             ; 0x3ac9
    call api_idx_002e                ; 0x3acc
    add sp, byte 4                   ; 0x3acf
    mov ax, 0                        ; 0x3ad2
    push ax                          ; 0x3ad5
    mov ax, 1                        ; 0x3ad6
    push ax                          ; 0x3ad9
    call ds_dispatch_e823            ; 0x3ada
    add sp, byte 4                   ; 0x3add
    mov ax, 6                        ; 0x3ae0
    imul word [bp - 0x000a]          ; 0x3ae3
    add ax, strict word 0x72         ; 0x3ae6
    push ax                          ; 0x3ae9
    mov ax, 0x7f                     ; 0x3aea
    push ax                          ; 0x3aed
    call ds_dispatch_e809            ; 0x3aee
    add sp, byte 4                   ; 0x3af1
    mov ax, 0                        ; 0x3af4
    push ax                          ; 0x3af7
    mov ax, 5                        ; 0x3af8
    push ax                          ; 0x3afb
    call ds_dispatch_e830            ; 0x3afc
    add sp, byte 4                   ; 0x3aff
    mov ax, 6                        ; 0x3b02
    imul word [bp - 0x000a]          ; 0x3b05
    add ax, strict word 0x72         ; 0x3b08
    push ax                          ; 0x3b0b
    mov ax, 0x97                     ; 0x3b0c
    push ax                          ; 0x3b0f
    call ds_dispatch_e809            ; 0x3b10
    add sp, byte 4                   ; 0x3b13
    mov ax, 0                        ; 0x3b16
    push ax                          ; 0x3b19
    mov ax, 6                        ; 0x3b1a
    push ax                          ; 0x3b1d
    call ds_dispatch_e830            ; 0x3b1e
    add sp, byte 4                   ; 0x3b21
    mov word [bp - 0x0002], 0        ; 0x3b24
    jmp near @..api_idx_0032.l7      ; 0x3b29
@..api_idx_0032.l2:
    mov ax, word [bp - 0x0002]       ; 0x3b2c
    cmp ax, word [bp - 0x000a]       ; 0x3b2f
    jne short @..api_idx_0032.l3     ; 0x3b32
    mov ax, 0                        ; 0x3b34
    push ax                          ; 0x3b37
    mov ax, 0x2d                     ; 0x3b38
    push ax                          ; 0x3b3b
    mov ax, 6                        ; 0x3b3c
    imul word [bp - 0x000a]          ; 0x3b3f
    add ax, strict word 0x76         ; 0x3b42
    push ax                          ; 0x3b45
    mov ax, 0x84                     ; 0x3b46
    push ax                          ; 0x3b49
    mov ax, 6                        ; 0x3b4a
    imul word [bp - 0x000a]          ; 0x3b4d
    add ax, strict word 0x71         ; 0x3b50
    push ax                          ; 0x3b53
    mov ax, 0x7f                     ; 0x3b54
    push ax                          ; 0x3b57
    push word [bp - 0x0002]          ; 0x3b58
    call ds_dispatch_baa6            ; 0x3b5b
    add sp, byte 0x0e                ; 0x3b5e
    mov ax, 0x3d                     ; 0x3b61
    push ax                          ; 0x3b64
    mov ax, 0x2b                     ; 0x3b65
    push ax                          ; 0x3b68
    mov ax, 6                        ; 0x3b69
    imul word [bp - 0x000a]          ; 0x3b6c
    add ax, strict word 0x76         ; 0x3b6f
    push ax                          ; 0x3b72
    mov ax, 0x9c                     ; 0x3b73
    push ax                          ; 0x3b76
    mov ax, 6                        ; 0x3b77
    imul word [bp - 0x000a]          ; 0x3b7a
    add ax, strict word 0x71         ; 0x3b7d
    push ax                          ; 0x3b80
    mov ax, 0x97                     ; 0x3b81
    push ax                          ; 0x3b84
    push word [bp + 0x8]             ; 0x3b85
    call ds_dispatch_baa6            ; 0x3b88
    add sp, byte 0x0e                ; 0x3b8b
    jmp short @..api_idx_0032.l6     ; 0x3b8e
@..api_idx_0032.l3:
    mov ax, 0                        ; 0x3b90
    push ax                          ; 0x3b93
    mov ax, word [bp - 0x000a]       ; 0x3b94
    inc ax                           ; 0x3b97
    cwd                              ; 0x3b98
    idiv word [bp + 0x8]             ; 0x3b99
    mov ax, dx                       ; 0x3b9c
    cmp ax, word [bp - 0x0002]       ; 0x3b9e
    jne short @..api_idx_0032.l4     ; 0x3ba1
    mov al, 0x20                     ; 0x3ba3
    jmp short @..api_idx_0032.l5     ; 0x3ba5
@..api_idx_0032.l4:
    mov al, 0                        ; 0x3ba7
@..api_idx_0032.l5:
    cbw                              ; 0x3ba9
    push ax                          ; 0x3baa
    mov ax, 6                        ; 0x3bab
    imul word [bp - 0x0002]          ; 0x3bae
    add ax, strict word 0x76         ; 0x3bb1
    push ax                          ; 0x3bb4
    mov ax, 0x9c                     ; 0x3bb5
    push ax                          ; 0x3bb8
    mov ax, 6                        ; 0x3bb9
    imul word [bp - 0x0002]          ; 0x3bbc
    add ax, strict word 0x71         ; 0x3bbf
    push ax                          ; 0x3bc2
    mov ax, 6                        ; 0x3bc3
    push ax                          ; 0x3bc6
    push word [bp - 0x0002]          ; 0x3bc7
    call ds_dispatch_baa6            ; 0x3bca
    add sp, byte 0x0e                ; 0x3bcd
@..api_idx_0032.l6:
    inc word [bp - 0x0002]           ; 0x3bd0
@..api_idx_0032.l7:
    mov ax, word [bp - 0x0002]       ; 0x3bd3
    cmp ax, word [bp + 0x8]          ; 0x3bd6
    jge short @..api_idx_0032.l8     ; 0x3bd9
    jmp near @..api_idx_0032.l2      ; 0x3bdb
@..api_idx_0032.l8:
    mov ax, 0                        ; 0x3bde
    push ax                          ; 0x3be1
    push word [bp - 0x002c]          ; 0x3be2
    push word [bp - 0x002e]          ; 0x3be5
    call ds_dispatch_e94f            ; 0x3be8
    add sp, byte 6                   ; 0x3beb
    mov ax, word [bp - 0x000c]       ; 0x3bee
    mov word [bp - 0x0004], ax       ; 0x3bf1
    mov word [bp - 0x0002], 0        ; 0x3bf4
@..api_idx_0032.l9:
    mov ax, word [bp - 0x0002]       ; 0x3bf9
    cmp ax, word [bp + 0x6]          ; 0x3bfc
    je short @..api_idx_0032.l10     ; 0x3bff
    shl ax, 1                        ; 0x3c01
    mov bx, ax                       ; 0x3c03
    mov ax, word [bx - 0x6a10]       ; 0x3c05
    add word [bp - 0x0004], ax       ; 0x3c09
@..api_idx_0032.l10:
    inc word [bp - 0x0002]           ; 0x3c0c
    mov ax, word [bp - 0x0002]       ; 0x3c0f
    cmp ax, strict word 4            ; 0x3c12
    jl short @..api_idx_0032.l9      ; 0x3c15
    mov ax, 1                        ; 0x3c17
    cmp word [bp - 0x0004], byte 0   ; 0x3c1a
    jle short @..api_idx_0032.l11    ; 0x3c1e
    mov ax, 0                        ; 0x3c20
@..api_idx_0032.l11:
    mov bx, word [bp + 0xc]          ; 0x3c23
    mov word [bx + 0x8], ax          ; 0x3c26
    mov word [bp - 0x000e], 0        ; 0x3c29
    mov word [bp - 0x0002], 0        ; 0x3c2e
@..api_idx_0032.l12:
    mov ax, word [bp - 0x0002]       ; 0x3c33
    shl ax, 1                        ; 0x3c36
    mov si, ax                       ; 0x3c38
    mov bx, word [bp + 0xc]          ; 0x3c3a
    cmp word [bx + si], byte 0       ; 0x3c3d
    jne short @..api_idx_0032.l13    ; 0x3c40
    jmp near @..api_idx_0032.l16     ; 0x3c42
@..api_idx_0032.l13:
    mov ax, 0x3a                     ; 0x3c45
    imul word [bp - 0x000e]          ; 0x3c48
    add ax, strict word 4            ; 0x3c4b
    mov word [bp - 0x0006], ax       ; 0x3c4e
    mov ax, 0                        ; 0x3c51
    push ax                          ; 0x3c54
    mov ax, 0xc4                     ; 0x3c55
    push ax                          ; 0x3c58
    mov ax, word [bp - 0x0006]       ; 0x3c59
    add ax, strict word 0x36         ; 0x3c5c
    push ax                          ; 0x3c5f
    mov ax, 0xbc                     ; 0x3c60
    push ax                          ; 0x3c63
    push word [bp - 0x0006]          ; 0x3c64
    call ds_dispatch_bce3            ; 0x3c67
    add sp, byte 0x0a                ; 0x3c6a
    mov ax, 0xc0                     ; 0x3c6d
    push ax                          ; 0x3c70
    mov ax, 1                        ; 0x3c71
    mov cx, word [bp - 0x0002]       ; 0x3c74
    cmp cx, word [bp + 0x6]          ; 0x3c77
    jne short @..api_idx_0032.l14    ; 0x3c7a
    mov ax, 0x1a                     ; 0x3c7c
@..api_idx_0032.l14:
    push ax                          ; 0x3c7f
    call ds_dispatch_e823            ; 0x3c80
    add sp, byte 4                   ; 0x3c83
    mov ax, 0xbe                     ; 0x3c86
    push ax                          ; 0x3c89
    mov ax, 0x14                     ; 0x3c8a
    imul word [bp - 0x0002]          ; 0x3c8d
    add ax, 0x95f8                   ; 0x3c90
    push ax                          ; 0x3c93
    call ds_dispatch_fa90            ; 0x3c94
    pop cx                           ; 0x3c97
    mov cx, ax                       ; 0x3c98
    mov ax, 9                        ; 0x3c9a
    sub ax, cx                       ; 0x3c9d
    mov cx, 6                        ; 0x3c9f
    imul cx                          ; 0x3ca2
    mov cx, data_0002                ; 0x3ca4
    cwd                              ; 0x3ca7
    idiv cx                          ; 0x3ca8
    add ax, word [bp - 0x0006]       ; 0x3caa
    inc ax                           ; 0x3cad
    push ax                          ; 0x3cae
    call ds_dispatch_e809            ; 0x3caf
    add sp, byte 4                   ; 0x3cb2
    mov ax, 0                        ; 0x3cb5
    push ax                          ; 0x3cb8
    mov ax, 0x14                     ; 0x3cb9
    imul word [bp - 0x0002]          ; 0x3cbc
    add ax, 0x95f8                   ; 0x3cbf
    push ax                          ; 0x3cc2
    call ds_dispatch_e84e            ; 0x3cc3
    add sp, byte 4                   ; 0x3cc6
    mov ax, 0                        ; 0x3cc9
    push ax                          ; 0x3ccc
    push ax                          ; 0x3ccd
    mov ax, 0xc4                     ; 0x3cce
    push ax                          ; 0x3cd1
    mov ax, word [bp - 0x0006]       ; 0x3cd2
    add ax, strict word 0x36         ; 0x3cd5
    push ax                          ; 0x3cd8
    mov ax, 0xbc                     ; 0x3cd9
    push ax                          ; 0x3cdc
    push word [bp - 0x0006]          ; 0x3cdd
    mov ax, word [bp + 0x8]          ; 0x3ce0
    add ax, word [bp - 0x000e]       ; 0x3ce3
    inc ax                           ; 0x3ce6
    push ax                          ; 0x3ce7
    call ds_dispatch_baa6            ; 0x3ce8
    add sp, byte 0x0e                ; 0x3ceb
    mov ax, word [bp - 0x0002]       ; 0x3cee
    mov cx, word [bp - 0x000e]       ; 0x3cf1
    shl cx, 1                        ; 0x3cf4
    mov bx, cx                       ; 0x3cf6
    add bx, bp                       ; 0x3cf8
    mov word [bx - 0x0026], ax       ; 0x3cfa
    cmp ax, word [bp + 0x6]          ; 0x3cfd
    jne short @..api_idx_0032.l15    ; 0x3d00
    mov ax, word [bp - 0x000e]       ; 0x3d02
    mov word [bp - 0x0032], ax       ; 0x3d05
    cmp word [data_0e32], byte 0     ; 0x3d08
    jne short @..api_idx_0032.l15    ; 0x3d0d
    mov ax, 0x16                     ; 0x3d0f
    push ax                          ; 0x3d12
    mov ax, 0xc4                     ; 0x3d13
    push ax                          ; 0x3d16
    mov ax, word [bp - 0x0006]       ; 0x3d17
    add ax, strict word 0x36         ; 0x3d1a
    push ax                          ; 0x3d1d
    mov ax, 0xbc                     ; 0x3d1e
    push ax                          ; 0x3d21
    push word [bp - 0x0006]          ; 0x3d22
    call loc_0dc0                    ; 0x3d25
    add sp, byte 0x0a                ; 0x3d28
@..api_idx_0032.l15:
    inc word [bp - 0x000e]           ; 0x3d2b
@..api_idx_0032.l16:
    inc word [bp - 0x0002]           ; 0x3d2e
    mov ax, word [bp - 0x0002]       ; 0x3d31
    cmp ax, strict word 4            ; 0x3d34
    jg short @..api_idx_0032.l17     ; 0x3d37
    jmp near @..api_idx_0032.l12     ; 0x3d39
@..api_idx_0032.l17:
    mov ax, 0                        ; 0x3d3c
    push ax                          ; 0x3d3f
    push ax                          ; 0x3d40
    push ax                          ; 0x3d41
    push ax                          ; 0x3d42
    push ax                          ; 0x3d43
    mov ax, 0xffff                   ; 0x3d44
    push ax                          ; 0x3d47
    mov ax, word [bp + 0x8]          ; 0x3d48
    add ax, word [bp - 0x000e]       ; 0x3d4b
    inc ax                           ; 0x3d4e
    push ax                          ; 0x3d4f
    call ds_dispatch_baa6            ; 0x3d50
    add sp, byte 0x0e                ; 0x3d53
    mov ax, 0xc6                     ; 0x3d56
    push ax                          ; 0x3d59
    mov ax, 0x13c                    ; 0x3d5a
    push ax                          ; 0x3d5d
    mov ax, 0x70                     ; 0x3d5e
    push ax                          ; 0x3d61
    mov ax, 1                        ; 0x3d62
    push ax                          ; 0x3d65
    call ds_dispatch_e8da            ; 0x3d66
    add sp, byte 8                   ; 0x3d69
    cmp word [data_0e32], byte 0     ; 0x3d6c
    je short @..api_idx_0032.l19     ; 0x3d71
@..api_idx_0032.l18:
    mov ax, 0x59fe                   ; 0x3d73
    push ax                          ; 0x3d76
    call ds_dispatch_b90d            ; 0x3d77
    pop cx                           ; 0x3d7a
    dec ax                           ; 0x3d7b
    mov word [bp - 0x0008], ax       ; 0x3d7c
    cmp word [data_5b3e], byte 0     ; 0x3d7f
    je short @..api_idx_0032.l18     ; 0x3d84
    jmp near @..api_idx_0032.l31     ; 0x3d86
@..api_idx_0032.l19:
    mov word [bp - 0x0008], 0xffff   ; 0x3d89
    mov ax, word [bp - 0x0032]       ; 0x3d8e
    mov word [bp - 0x0002], ax       ; 0x3d91
@..api_idx_0032.l20:
    mov ax, 0x3a                     ; 0x3d94
    imul word [bp - 0x0002]          ; 0x3d97
    add ax, strict word 4            ; 0x3d9a
    mov word [bp - 0x0006], ax       ; 0x3d9d
    mov ax, 0x16                     ; 0x3da0
    push ax                          ; 0x3da3
    mov ax, 0xc4                     ; 0x3da4
    push ax                          ; 0x3da7
    mov ax, word [bp - 0x0006]       ; 0x3da8
    add ax, strict word 0x36         ; 0x3dab
    push ax                          ; 0x3dae
    mov ax, 0xbc                     ; 0x3daf
    push ax                          ; 0x3db2
    push word [bp - 0x0006]          ; 0x3db3
    call loc_0dc0                    ; 0x3db6
    add sp, byte 0x0a                ; 0x3db9
    mov ax, 0xc7                     ; 0x3dbc
    push ax                          ; 0x3dbf
    mov ax, 0x13d                    ; 0x3dc0
    push ax                          ; 0x3dc3
    mov ax, 0xbb                     ; 0x3dc4
    push ax                          ; 0x3dc7
    mov ax, 3                        ; 0x3dc8
    push ax                          ; 0x3dcb
    call ds_dispatch_e8da            ; 0x3dcc
    add sp, byte 8                   ; 0x3dcf
    mov ax, 0                        ; 0x3dd2
    push ax                          ; 0x3dd5
    mov ax, 0xc4                     ; 0x3dd6
    push ax                          ; 0x3dd9
    mov ax, word [bp - 0x0006]       ; 0x3dda
    add ax, strict word 0x36         ; 0x3ddd
    push ax                          ; 0x3de0
    mov ax, 0xbc                     ; 0x3de1
    push ax                          ; 0x3de4
    push word [bp - 0x0006]          ; 0x3de5
    call loc_0dc0                    ; 0x3de8
    add sp, byte 0x0a                ; 0x3deb
@..api_idx_0032.l21:
    mov ax, 1                        ; 0x3dee
    push ax                          ; 0x3df1
    call ds_dispatch_ea50            ; 0x3df2
    pop cx                           ; 0x3df5
    test ax, ax                      ; 0x3df6
    jne short @..api_idx_0032.l22    ; 0x3df8
    jmp short @..api_idx_0032.l21    ; 0x3dfa
@..api_idx_0032.l22:
    mov ax, 1                        ; 0x3dfc
    push ax                          ; 0x3dff
    call ds_dispatch_eb32            ; 0x3e00
    pop cx                           ; 0x3e03
    sub ah, ah                       ; 0x3e04
    mov word [bp - 0x0030], ax       ; 0x3e06
    jmp short @..api_idx_0032.l29    ; 0x3e09
@..api_idx_0032.l23:
    mov ax, word [bp - 0x0002]       ; 0x3e0b
    add ax, word [bp - 0x000e]       ; 0x3e0e
    dec ax                           ; 0x3e11
    cwd                              ; 0x3e12
    idiv word [bp - 0x000e]          ; 0x3e13
    mov word [bp - 0x0002], dx       ; 0x3e16
    jmp short @..api_idx_0032.l30    ; 0x3e19
@..api_idx_0032.l24:
    mov ax, word [bp - 0x0002]       ; 0x3e1b
    inc ax                           ; 0x3e1e
    cwd                              ; 0x3e1f
    idiv word [bp - 0x000e]          ; 0x3e20
    mov word [bp - 0x0002], dx       ; 0x3e23
    jmp short @..api_idx_0032.l30    ; 0x3e26
@..api_idx_0032.l25:
    mov ax, word [bp + 0x8]          ; 0x3e28
    add ax, word [bp - 0x0002]       ; 0x3e2b
    inc ax                           ; 0x3e2e
    mov word [bp - 0x0008], ax       ; 0x3e2f
    jmp short @..api_idx_0032.l30    ; 0x3e32
@..api_idx_0032.l26:
    mov ax, word [bp - 0x000a]       ; 0x3e34
    mov word [bp - 0x0008], ax       ; 0x3e37
    jmp short @..api_idx_0032.l30    ; 0x3e3a
@..api_idx_0032.l27:
    mov ax, word [bp + 0x8]          ; 0x3e3c
    mov word [bp - 0x0008], ax       ; 0x3e3f
    jmp short @..api_idx_0032.l30    ; 0x3e42
@..api_idx_0032.l28:
    mov ax, word [bp - 0x000a]       ; 0x3e44
    inc ax                           ; 0x3e47
    cwd                              ; 0x3e48
    idiv word [bp + 0x8]             ; 0x3e49
    mov word [bp - 0x0008], dx       ; 0x3e4c
    jmp short @..api_idx_0032.l30    ; 0x3e4f
@..api_idx_0032.l29:
    cmp ax, strict word 8            ; 0x3e51
    je short @..api_idx_0032.l23     ; 0x3e54
    cmp ax, strict word 0xa          ; 0x3e56
    je short @..api_idx_0032.l24     ; 0x3e59
    cmp ax, strict word 0xd          ; 0x3e5b
    je short @..api_idx_0032.l25     ; 0x3e5e
    cmp ax, strict word 0x20         ; 0x3e60
    je short @..api_idx_0032.l28     ; 0x3e63
    cmp ax, strict word 0x2b         ; 0x3e65
    je short @..api_idx_0032.l27     ; 0x3e68
    cmp ax, strict word 0x2d         ; 0x3e6a
    je short @..api_idx_0032.l26     ; 0x3e6d
    cmp ax, strict word 0x3d         ; 0x3e6f
    je short @..api_idx_0032.l27     ; 0x3e72
@..api_idx_0032.l30:
    cmp word [bp - 0x0008], byte 0xff ; 0x3e74
    jne short @..api_idx_0032.l31    ; 0x3e78
    jmp near @..api_idx_0032.l20     ; 0x3e7a
@..api_idx_0032.l31:
    mov ax, word [bp - 0x0008]       ; 0x3e7d
    cmp ax, word [bp + 0x8]          ; 0x3e80
    jge short @..api_idx_0032.l32    ; 0x3e83
    cmp ax, word [bp - 0x000a]       ; 0x3e85
    je short @..api_idx_0032.l32     ; 0x3e88
    mov word [bp - 0x000a], ax       ; 0x3e8a
    jmp near @..api_idx_0032.l39     ; 0x3e8d
@..api_idx_0032.l32:
    mov ax, word [bp - 0x0008]       ; 0x3e90
    cmp ax, word [bp - 0x000a]       ; 0x3e93
    jne short @..api_idx_0032.l35    ; 0x3e96
    mov ax, 0x248                    ; 0x3e98
    imul word [bp + 0x4]             ; 0x3e9b
    mov cx, word [bp - 0x000a]       ; 0x3e9e
    shl cx, 1                        ; 0x3ea1
    mov si, cx                       ; 0x3ea3
    mov bx, word [bp + 0xa]          ; 0x3ea5
    mov cx, word [bx + si]           ; 0x3ea8
    add ax, cx                       ; 0x3eaa
    mov bx, ax                       ; 0x3eac
    mov al, byte [bx + 0x5d6c]       ; 0x3eae
    sub ah, ah                       ; 0x3eb2
    shl cx, 1                        ; 0x3eb4
    mov bx, cx                       ; 0x3eb6
    mov cx, word [bx - 0x6940]       ; 0x3eb8
    cmp ax, cx                       ; 0x3ebc
    jle short @..api_idx_0032.l33    ; 0x3ebe
    mov ax, 0x248                    ; 0x3ec0
    imul word [bp + 0x4]             ; 0x3ec3
    mov bx, word [bp + 0xa]          ; 0x3ec6
    mov cx, word [bx + si]           ; 0x3ec9
    add ax, cx                       ; 0x3ecb
    mov bx, ax                       ; 0x3ecd
    dec byte [bx + 0x5d6c]           ; 0x3ecf
    inc word [bp - 0x000c]           ; 0x3ed3
    jmp short @..api_idx_0032.l34    ; 0x3ed6
@..api_idx_0032.l33:
    mov ax, 0                        ; 0x3ed8
    push ax                          ; 0x3edb
    call ds_dispatch_b7e0            ; 0x3edc
    pop cx                           ; 0x3edf
@..api_idx_0032.l34:
    jmp short @..api_idx_0032.l39    ; 0x3ee0
@..api_idx_0032.l35:
    mov ax, word [bp - 0x0008]       ; 0x3ee2
    cmp ax, word [bp + 0x8]          ; 0x3ee5
    jne short @..api_idx_0032.l38    ; 0x3ee8
    mov ax, 0x248                    ; 0x3eea
    imul word [bp + 0x4]             ; 0x3eed
    mov cx, word [bp - 0x000a]       ; 0x3ef0
    shl cx, 1                        ; 0x3ef3
    mov si, cx                       ; 0x3ef5
    mov bx, word [bp + 0xa]          ; 0x3ef7
    mov cx, word [bx + si]           ; 0x3efa
    add ax, cx                       ; 0x3efc
    mov bx, ax                       ; 0x3efe
    cmp byte [bx + 0x5d6c], 0x64     ; 0x3f00
    jae short @..api_idx_0032.l36    ; 0x3f05
    cmp word [bp - 0x000c], byte 0   ; 0x3f07
    jle short @..api_idx_0032.l36    ; 0x3f0b
    inc byte [bx + 0x5d6c]           ; 0x3f0d
    dec word [bp - 0x000c]           ; 0x3f11
    jmp short @..api_idx_0032.l37    ; 0x3f14
@..api_idx_0032.l36:
    mov ax, 0                        ; 0x3f16
    push ax                          ; 0x3f19
    call ds_dispatch_b7e0            ; 0x3f1a
    pop cx                           ; 0x3f1d
@..api_idx_0032.l37:
    jmp short @..api_idx_0032.l39    ; 0x3f1e
@..api_idx_0032.l38:
    mov ax, word [bp - 0x0008]       ; 0x3f20
    sub ax, word [bp + 0x8]          ; 0x3f23
    dec ax                           ; 0x3f26
    mov word [bp - 0x0028], ax       ; 0x3f27
    shl ax, 1                        ; 0x3f2a
    mov bx, ax                       ; 0x3f2c
    add bx, bp                       ; 0x3f2e
    mov ax, word [bx - 0x0026]       ; 0x3f30
    mov word [bp - 0x002a], ax       ; 0x3f33
@..api_idx_0032.l39:
    cmp word [bp - 0x0028], byte 0xff ; 0x3f36
    jne short @..api_idx_0032.l40    ; 0x3f3a
    jmp near @..api_idx_0032.l1      ; 0x3f3c
@..api_idx_0032.l40:
    mov ax, word [bp - 0x000c]       ; 0x3f3f
    mov cx, word [bp + 0x6]          ; 0x3f42
    shl cx, 1                        ; 0x3f45
    mov bx, cx                       ; 0x3f47
    mov word [bx - 0x6a10], ax       ; 0x3f49
    mov ax, 1                        ; 0x3f4d
    push ax                          ; 0x3f50
    push ax                          ; 0x3f51
    mov ax, 9                        ; 0x3f52
    push ax                          ; 0x3f55
    mov ax, 0xbc                     ; 0x3f56
    push ax                          ; 0x3f59
    mov ax, 0x3a                     ; 0x3f5a
    imul word [bp - 0x0028]          ; 0x3f5d
    add ax, strict word 4            ; 0x3f60
    push ax                          ; 0x3f63
    call ds_dispatch_be5f            ; 0x3f64
    add sp, byte 0x0a                ; 0x3f67
    mov ax, 0                        ; 0x3f6a
    push ax                          ; 0x3f6d
    mov ax, 1                        ; 0x3f6e
    push ax                          ; 0x3f71
    mov ax, 9                        ; 0x3f72
    push ax                          ; 0x3f75
    mov ax, 0xbc                     ; 0x3f76
    push ax                          ; 0x3f79
    mov ax, 0x3a                     ; 0x3f7a
    imul word [bp - 0x0028]          ; 0x3f7d
    add ax, strict word 4            ; 0x3f80
    push ax                          ; 0x3f83
    call ds_dispatch_be5f            ; 0x3f84
    add sp, byte 0x0a                ; 0x3f87
    mov ax, 1                        ; 0x3f8a
    push ax                          ; 0x3f8d
    push word [bp - 0x002c]          ; 0x3f8e
    push word [bp - 0x002e]          ; 0x3f91
    call ds_dispatch_e94f            ; 0x3f94
    add sp, byte 6                   ; 0x3f97
    mov ax, word [bp - 0x002a]       ; 0x3f9a
    ret                              ; 0x3f9d
api_idx_0088:
    mov ax, 0xff78                   ; 0x3f9e
    call ds_dispatch_f40b            ; 0x3fa1
    mov word [bp - 0x0002], 0        ; 0x3fa4
@..api_idx_0088.l1:
    mov ax, 0x248                    ; 0x3fa9
    imul word [bp + 0x4]             ; 0x3fac
    add ax, word [bp - 0x0002]       ; 0x3faf
    mov bx, ax                       ; 0x3fb2
    mov al, byte [bx + 0x5d6c]       ; 0x3fb4
    sub ah, ah                       ; 0x3fb8
    mov cx, word [bp - 0x0002]       ; 0x3fba
    shl cx, 1                        ; 0x3fbd
    mov bx, cx                       ; 0x3fbf
    mov word [bx - 0x6940], ax       ; 0x3fc1
    inc word [bp - 0x0002]           ; 0x3fc5
    mov ax, word [bp - 0x0002]       ; 0x3fc8
    cmp ax, strict word 0x22         ; 0x3fcb
    jl short @..api_idx_0088.l1      ; 0x3fce
    mov word [bp - 0x0002], 0        ; 0x3fd0
@..api_idx_0088.l2:
    mov ax, 0x14                     ; 0x3fd5
    imul word [bp - 0x0002]          ; 0x3fd8
    add ax, 0x95f8                   ; 0x3fdb
    push ax                          ; 0x3fde
    mov ax, word [bp - 0x0002]       ; 0x3fdf
    add ax, 0x258                    ; 0x3fe2
    push ax                          ; 0x3fe5
    call ds_dispatch_b53b            ; 0x3fe6
    add sp, byte 4                   ; 0x3fe9
    inc word [bp - 0x0002]           ; 0x3fec
    mov ax, word [bp - 0x0002]       ; 0x3fef
    cmp ax, strict word 4            ; 0x3ff2
    jle short @..api_idx_0088.l2     ; 0x3ff5
    lea ax, word [bp - 0x0088]       ; 0x3ff7
    push ax                          ; 0x3ffb
    push word [bp + 0x6]             ; 0x3ffc
    call ds_dispatch_b53b            ; 0x3fff
    add sp, byte 4                   ; 0x4002
    mov ax, 1                        ; 0x4005
    push ax                          ; 0x4008
    lea ax, word [bp - 0x0088]       ; 0x4009
    push ax                          ; 0x400d
    call api_idx_0004_5              ; 0x400e
    add sp, byte 4                   ; 0x4011
    mov word [bp - 0x0006], 0        ; 0x4014
@..api_idx_0088.l3:
    lea ax, word [bp - 0x0020]       ; 0x4019
    push ax                          ; 0x401c
    push word [bp - 0x0006]          ; 0x401d
    push word [bp + 0x4]             ; 0x4020
    call api_idx_0004_7              ; 0x4023
    add sp, byte 6                   ; 0x4026
    mov word [bp - 0x0008], ax       ; 0x4029
    mov word [bp - 0x0002], 0        ; 0x402c
    mov word [bp - 0x0004], 0        ; 0x4031
    jmp short @..api_idx_0088.l5     ; 0x4036
@..api_idx_0088.l4:
    mov ax, 0x248                    ; 0x4038
    imul word [bp + 0x4]             ; 0x403b
    mov cx, word [bp - 0x0004]       ; 0x403e
    shl cx, 1                        ; 0x4041
    mov bx, cx                       ; 0x4043
    add bx, bp                       ; 0x4045
    mov cx, word [bx - 0x0020]       ; 0x4047
    add ax, cx                       ; 0x404a
    mov bx, ax                       ; 0x404c
    mov al, byte [bx + 0x5d6c]       ; 0x404e
    sub ah, ah                       ; 0x4052
    mov cx, ax                       ; 0x4054
    mov ax, 0x64                     ; 0x4056
    sub ax, cx                       ; 0x4059
    add word [bp - 0x0002], ax       ; 0x405b
    inc word [bp - 0x0004]           ; 0x405e
@..api_idx_0088.l5:
    mov ax, word [bp - 0x0004]       ; 0x4061
    cmp ax, word [bp - 0x0008]       ; 0x4064
    jl short @..api_idx_0088.l4      ; 0x4067
    mov ax, word [bp - 0x0006]       ; 0x4069
    shl ax, 1                        ; 0x406c
    mov bx, ax                       ; 0x406e
    mov ax, word [bx - 0x6a10]       ; 0x4070
    cmp ax, word [bp - 0x0002]       ; 0x4074
    jle short @..api_idx_0088.l6     ; 0x4077
    mov ax, word [bp - 0x0002]       ; 0x4079
    mov word [bx - 0x6a10], ax       ; 0x407c
@..api_idx_0088.l6:
    lea ax, word [bp - 0x0020]       ; 0x4080
    push ax                          ; 0x4083
    push word [bp - 0x0008]          ; 0x4084
    push word [bp - 0x0006]          ; 0x4087
    push word [bp + 0x4]             ; 0x408a
    call api_idx_0002_5              ; 0x408d
    add sp, byte 8                   ; 0x4090
    mov word [bp - 0x0004], 0        ; 0x4093
@..api_idx_0088.l7:
    mov ax, word [bp - 0x0004]       ; 0x4098
    shl ax, 1                        ; 0x409b
    mov bx, ax                       ; 0x409d
    add bx, bp                       ; 0x409f
    mov word [bx - 0x0038], 0        ; 0x40a1
    mov ax, word [bp - 0x0004]       ; 0x40a6
    shl ax, 1                        ; 0x40a9
    shl ax, 1                        ; 0x40ab
    mov bx, ax                       ; 0x40ad
    db 0x8b, 0x87, 0x38, 0x00 ; mov ax, word [bx + 0x38]
    mov word [bp - 0x0002], ax       ; 0x40b3
    jmp short @..api_idx_0088.l11    ; 0x40b6
@..api_idx_0088.l8:
    mov ax, word [bp - 0x0002]       ; 0x40b8
    shl ax, 1                        ; 0x40bb
    mov bx, ax                       ; 0x40bd
    cmp word [bx - 0x6a68], byte 0   ; 0x40bf
    jne short @..api_idx_0088.l9     ; 0x40c4
    mov ax, 0x248                    ; 0x40c6
    imul word [bp + 0x4]             ; 0x40c9
    add ax, word [bp - 0x0002]       ; 0x40cc
    mov bx, ax                       ; 0x40cf
    cmp byte [bx + 0x5d6c], 0        ; 0x40d1
    jbe short @..api_idx_0088.l10    ; 0x40d6
@..api_idx_0088.l9:
    mov ax, word [bp - 0x0004]       ; 0x40d8
    shl ax, 1                        ; 0x40db
    mov bx, ax                       ; 0x40dd
    add bx, bp                       ; 0x40df
    mov word [bx - 0x0038], 1        ; 0x40e1
@..api_idx_0088.l10:
    inc word [bp - 0x0002]           ; 0x40e6
@..api_idx_0088.l11:
    mov ax, word [bp - 0x0004]       ; 0x40e9
    shl ax, 1                        ; 0x40ec
    shl ax, 1                        ; 0x40ee
    mov bx, ax                       ; 0x40f0
    db 0x8b, 0x87, 0x3a, 0x00 ; mov ax, word [bx + 0x3a]
    cmp ax, word [bp - 0x0002]       ; 0x40f6
    jge short @..api_idx_0088.l8     ; 0x40f9
    inc word [bp - 0x0004]           ; 0x40fb
    mov ax, word [bp - 0x0004]       ; 0x40fe
    cmp ax, strict word 4            ; 0x4101
    jl short @..api_idx_0088.l7      ; 0x4104
    lea ax, word [bp - 0x0038]       ; 0x4106
    push ax                          ; 0x4109
    lea ax, word [bp - 0x0020]       ; 0x410a
    push ax                          ; 0x410d
    push word [bp - 0x0008]          ; 0x410e
    push word [bp - 0x0006]          ; 0x4111
    push word [bp + 0x4]             ; 0x4114
    call api_idx_0032                ; 0x4117
    add sp, byte 0x0a                ; 0x411a
    mov word [bp - 0x0006], ax       ; 0x411d
    cmp word [bp - 0x0006], byte 4   ; 0x4120
    je short @..api_idx_0088.l12     ; 0x4124
    jmp near @..api_idx_0088.l3      ; 0x4126
@..api_idx_0088.l12:
    mov ax, 0xc6                     ; 0x4129
    push ax                          ; 0x412c
    mov ax, 0x13c                    ; 0x412d
    push ax                          ; 0x4130
    mov ax, 0x70                     ; 0x4131
    push ax                          ; 0x4134
    mov ax, 1                        ; 0x4135
    push ax                          ; 0x4138
    call ds_dispatch_e8da            ; 0x4139
    add sp, byte 8                   ; 0x413c
    ret                              ; 0x413f
api_idx_001c:
    mov ax, 0xffe4                   ; 0x4140
    call ds_dispatch_f40b            ; 0x4143
    mov ax, word [bp + 0x6]          ; 0x4146
    mov word [bp - 0x000c], ax       ; 0x4149
    mov ax, word [bp + 0x8]          ; 0x414c
    mov word [bp - 0x000a], ax       ; 0x414f
    mov word [bp - 0x0008], 0        ; 0x4152
    mov ax, word [bp + 0xa]          ; 0x4157
    mov word [bp - 0x0006], ax       ; 0x415a
    mov word [bp - 0x001c], 0        ; 0x415d
    mov word [bp - 0x001a], 5        ; 0x4162
    mov word [bp - 0x0018], 3        ; 0x4167
    mov word [bp - 0x0016], 4        ; 0x416c
    mov word [bp - 0x0014], 0        ; 0x4171
    mov word [bp - 0x0012], 0        ; 0x4176
    mov word [bp - 0x0010], 1        ; 0x417b
    mov word [bp - 0x000e], data_0002 ; 0x4180
    mov word [bp - 0x0002], 0        ; 0x4185
@..api_idx_001c.l1:
    cmp word [bp - 0x0002], byte 2   ; 0x418a
    jne short @..api_idx_001c.l2     ; 0x418e
    jmp near @..api_idx_001c.l4      ; 0x4190
@..api_idx_001c.l2:
    mov ax, 0x248                    ; 0x4193
    imul word [bp + 0x4]             ; 0x4196
    mov cx, word [bp - 0x0002]       ; 0x4199
    shl cx, 1                        ; 0x419c
    shl cx, 1                        ; 0x419e
    mov bx, cx                       ; 0x41a0
    add bx, bp                       ; 0x41a2
    mov cx, word [bx - 0x001c]       ; 0x41a4
    add ax, cx                       ; 0x41a7
    mov bx, ax                       ; 0x41a9
    mov al, byte [bx + 0x5d64]       ; 0x41ab
    sub ah, ah                       ; 0x41af
    push ax                          ; 0x41b1
    mov ax, 0x248                    ; 0x41b2
    imul word [bp + 0x4]             ; 0x41b5
    mov cx, word [bp - 0x0002]       ; 0x41b8
    shl cx, 1                        ; 0x41bb
    shl cx, 1                        ; 0x41bd
    mov bx, cx                       ; 0x41bf
    add bx, bp                       ; 0x41c1
    mov cx, word [bx - 0x001a]       ; 0x41c3
    add ax, cx                       ; 0x41c6
    mov bx, ax                       ; 0x41c8
    mov al, byte [bx + 0x5d64]       ; 0x41ca
    sub ah, ah                       ; 0x41ce
    mov cx, ax                       ; 0x41d0
    pop ax                           ; 0x41d2
    add ax, cx                       ; 0x41d3
    mov cx, 6                        ; 0x41d5
    cwd                              ; 0x41d8
    idiv cx                          ; 0x41d9
    mov cx, word [bp - 0x0002]       ; 0x41db
    shl cx, 1                        ; 0x41de
    mov bx, cx                       ; 0x41e0
    add bx, bp                       ; 0x41e2
    mov cx, word [bx - 0x000c]       ; 0x41e4
    add ax, cx                       ; 0x41e7
    dec ax                           ; 0x41e9
    dec ax                           ; 0x41ea
    dec ax                           ; 0x41eb
    mov word [bx - 0x000c], ax       ; 0x41ec
    cmp word [bx - 0x000c], byte 1   ; 0x41ef
    jge short @..api_idx_001c.l3     ; 0x41f3
    mov word [bx - 0x000c], 1        ; 0x41f5
@..api_idx_001c.l3:
    mov ax, word [bx - 0x000c]       ; 0x41fa
    mov cx, data_0002                ; 0x41fd
    cwd                              ; 0x4200
    idiv cx                          ; 0x4201
    mov word [bp - 0x0004], ax       ; 0x4203
    mov cx, word [bx - 0x000c]       ; 0x4206
    sub cx, ax                       ; 0x4209
    mov ax, cx                       ; 0x420b
    inc ax                           ; 0x420d
    push ax                          ; 0x420e
    call ds_dispatch_b7a9            ; 0x420f
    pop cx                           ; 0x4212
    mov cx, ax                       ; 0x4213
    mov ax, word [bp - 0x0004]       ; 0x4215
    add cx, ax                       ; 0x4218
    mov ax, word [bp - 0x0002]       ; 0x421a
    shl ax, 1                        ; 0x421d
    mov bx, ax                       ; 0x421f
    mov word [bx - 0x6a10], cx       ; 0x4221
@..api_idx_001c.l4:
    inc word [bp - 0x0002]           ; 0x4225
    mov ax, word [bp - 0x0002]       ; 0x4228
    cmp ax, strict word 4            ; 0x422b
    jge short @..api_idx_001c.l5     ; 0x422e
    jmp near @..api_idx_001c.l1      ; 0x4230
@..api_idx_001c.l5:
    mov word [data_95f4], 0          ; 0x4233
    mov ax, word [data_0040]         ; 0x4239
    mov word [bp - 0x0002], ax       ; 0x423c
    jmp short @..api_idx_001c.l8     ; 0x423f
@..api_idx_001c.l6:
    mov ax, 0x248                    ; 0x4241
    imul word [bp + 0x4]             ; 0x4244
    add ax, word [bp - 0x0002]       ; 0x4247
    mov bx, ax                       ; 0x424a
    cmp byte [bx + 0x5d6c], 0        ; 0x424c
    jbe short @..api_idx_001c.l7     ; 0x4251
    mov ax, data_0002                ; 0x4253
    push ax                          ; 0x4256
    call ds_dispatch_b7a9            ; 0x4257
    pop cx                           ; 0x425a
    add ax, word [data_95f4]         ; 0x425b
    inc ax                           ; 0x425f
    mov word [data_95f4], ax         ; 0x4260
@..api_idx_001c.l7:
    inc word [bp - 0x0002]           ; 0x4263
@..api_idx_001c.l8:
    mov ax, word [bp - 0x0002]       ; 0x4266
    cmp ax, word [data_0042]         ; 0x4269
    jle short @..api_idx_001c.l6     ; 0x426d
    ret                              ; 0x426f
api_idx_0002_6:
    mov ax, 0xfffe                   ; 0x4270
    call ds_dispatch_f40b            ; 0x4273
    mov ax, word [bp + 0x6]          ; 0x4276
    shl ax, 1                        ; 0x4279
    mov bx, ax                       ; 0x427b
    mov ax, word [bx - 0x6a10]       ; 0x427d
    cwd                              ; 0x4281
    idiv word [bp + 0x8]             ; 0x4282
    push ax                          ; 0x4285
    mov ax, 0x248                    ; 0x4286
    imul word [bp + 0x4]             ; 0x4289
    mov bx, ax                       ; 0x428c
    mov ax, word [bx + 0x5c18]       ; 0x428e
    dec ax                           ; 0x4292
    mov cx, data_0002                ; 0x4293
    cwd                              ; 0x4296
    idiv cx                          ; 0x4297
    mov cx, ax                       ; 0x4299
    pop ax                           ; 0x429b
    sub ax, cx                       ; 0x429c
    mov word [bp - 0x0002], ax       ; 0x429e
    add bx, word [bp + 0xa]          ; 0x42a1
    mov al, byte [bx + 0x5d6c]       ; 0x42a4
    sub ah, ah                       ; 0x42a8
    push ax                          ; 0x42aa
    mov ax, 0x248                    ; 0x42ab
    imul word [bp + 0x4]             ; 0x42ae
    mov bx, ax                       ; 0x42b1
    mov cx, word [bx + 0x5c18]       ; 0x42b3
    shl cx, 1                        ; 0x42b7
    shl cx, 1                        ; 0x42b9
    shl cx, 1                        ; 0x42bb
    pop ax                           ; 0x42bd
    cmp ax, cx                       ; 0x42be
    jle short @..api_idx_0002_6.l1   ; 0x42c0
    mov word [bp - 0x0002], 0        ; 0x42c2
@..api_idx_0002_6.l1:
    add ax, word [bp - 0x0002]       ; 0x42c7
    cmp ax, strict word 0x64         ; 0x42ca
    jle short @..api_idx_0002_6.l2   ; 0x42cd
    mov word [bp - 0x0002], 0        ; 0x42cf
@..api_idx_0002_6.l2:
    cmp word [bp - 0x0002], byte 0   ; 0x42d4
    jge short @..api_idx_0002_6.l3   ; 0x42d8
    mov word [bp - 0x0002], 0        ; 0x42da
@..api_idx_0002_6.l3:
    mov ax, word [bp + 0x6]          ; 0x42df
    shl ax, 1                        ; 0x42e2
    mov bx, ax                       ; 0x42e4
    mov ax, word [bx - 0x6a10]       ; 0x42e6
    cmp ax, word [bp - 0x0002]       ; 0x42ea
    jge short @..api_idx_0002_6.l4   ; 0x42ed
    mov word [bp - 0x0002], ax       ; 0x42ef
@..api_idx_0002_6.l4:
    mov ax, word [bp - 0x0002]       ; 0x42f2
    sub word [bx - 0x6a10], ax       ; 0x42f5
    mov al, byte [bp - 0x0002]       ; 0x42f9
    push ax                          ; 0x42fc
    mov ax, 0x248                    ; 0x42fd
    imul word [bp + 0x4]             ; 0x4300
    mov cx, ax                       ; 0x4303
    add ax, word [bp + 0xa]          ; 0x4305
    mov bx, ax                       ; 0x4308
    pop ax                           ; 0x430a
    add byte [bx + 0x5d6c], al       ; 0x430b
    ret                              ; 0x430f
math_loc_4310:
    mov ax, 0                        ; 0x4310
    call ds_dispatch_f40b            ; 0x4313
    mov ax, 0x248                    ; 0x4316
    imul word [bp + 0x4]             ; 0x4319
    mov bx, ax                       ; 0x431c
    mov al, byte [bx + 0x5e2d]       ; 0x431e
    sub ah, ah                       ; 0x4322
    jmp near @..math_loc_4310.l1     ; 0x4324

    db 0xb8, 0x03, 0x00, 0x50, 0xb8, 0x06, 0x00, 0x50, 0xb8, 0x08, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8
    db 0x07, 0xfe, 0x83, 0xc4, 0x08, 0xe9, 0xa0, 0x02, 0xb8, 0x09, 0x00, 0x50, 0xb8, 0x03, 0x00, 0x50
    db 0x50, 0xff, 0x76, 0x04, 0xe8, 0xf2, 0xfd, 0x83, 0xc4, 0x08, 0xb8, 0x20, 0x00, 0x50, 0xb8, 0x02
    db 0x00, 0x50, 0xb8, 0x03, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x0d, 0xff, 0x83, 0xc4, 0x08, 0xe9
    db 0x76, 0x02, 0xb8, 0x09, 0x00, 0x50, 0xb8, 0x03, 0x00, 0x50, 0x50, 0xff, 0x76, 0x04, 0xe8, 0xc8
    db 0xfd, 0x83, 0xc4, 0x08, 0xb8, 0x1e, 0x00, 0x50, 0xb8, 0x02, 0x00, 0x50, 0xb8, 0x03, 0x00, 0x50
    db 0xff, 0x76, 0x04, 0xe8, 0xe3, 0xfe, 0x83, 0xc4, 0x08, 0xe9, 0x4c, 0x02, 0xb8, 0x04, 0x00, 0x50
    db 0xb8, 0x09, 0x00, 0x50, 0xb8, 0x04, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x9b, 0xfd, 0x83, 0xc4
    db 0x08, 0xb8, 0x10, 0x00, 0x50, 0xb8, 0x02, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xff, 0x76, 0x04
    db 0xe8, 0xb6, 0xfe, 0x83, 0xc4, 0x08, 0xe9, 0x1f, 0x02, 0xb8, 0x05, 0x00, 0x50, 0x50, 0xb8, 0x06
    db 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x71, 0xfd, 0x83, 0xc4, 0x08, 0xb8, 0x07, 0x00, 0x50, 0xb8
    db 0x03, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x8c, 0xfe, 0x83, 0xc4, 0x08
    db 0xb8, 0x0c, 0x00, 0x50, 0xb8, 0x03, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8
    db 0x77, 0xfe, 0x83, 0xc4, 0x08, 0xe9, 0xe0, 0x01, 0xb8, 0x05, 0x00, 0x50, 0xb8, 0x06, 0x00, 0x50
    db 0xb8, 0x04, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x2f, 0xfd, 0x83, 0xc4, 0x08, 0xb8, 0x0d, 0x00
    db 0x50, 0xb8, 0x02, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x4a, 0xfe, 0x83
    db 0xc4, 0x08, 0xe9, 0xb3, 0x01, 0xb8, 0x09, 0x00, 0x50, 0xb8, 0x03, 0x00, 0x50, 0x50, 0xff, 0x76
    db 0x04, 0xe8, 0x05, 0xfd, 0x83, 0xc4, 0x08, 0xb8, 0x1d, 0x00, 0x50, 0xb8, 0x02, 0x00, 0x50, 0xb8
    db 0x03, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x20, 0xfe, 0x83, 0xc4, 0x08, 0xe9, 0x89, 0x01, 0xb8
    db 0x09, 0x00, 0x50, 0xb8, 0x03, 0x00, 0x50, 0x50, 0xff, 0x76, 0x04, 0xe8, 0xdb, 0xfc, 0x83, 0xc4
    db 0x08, 0xb8, 0x1f, 0x00, 0x50, 0xb8, 0x02, 0x00, 0x50, 0xb8, 0x03, 0x00, 0x50, 0xff, 0x76, 0x04
    db 0xe8, 0xf6, 0xfd, 0x83, 0xc4, 0x08, 0xe9, 0x5f, 0x01, 0xb8, 0x0c, 0x00, 0x50, 0xb8, 0x02, 0x00
    db 0x50, 0x50, 0xff, 0x76, 0x04, 0xe8, 0xb1, 0xfc, 0x83, 0xc4, 0x08, 0xb8, 0x20, 0x00, 0x50, 0xb8
    db 0x03, 0x00, 0x50, 0x50, 0xff, 0x76, 0x04, 0xe8, 0xcf, 0xfd, 0x83, 0xc4, 0x08, 0xb8, 0x1e, 0x00
    db 0x50, 0xb8, 0x02, 0x00, 0x50, 0xb8, 0x03, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0xba, 0xfd, 0x83
    db 0xc4, 0x08, 0xe9, 0x23, 0x01, 0xb8, 0x05, 0x00, 0x50, 0x50, 0xb8, 0x06, 0x00, 0x50, 0xff, 0x76
    db 0x04, 0xe8, 0x75, 0xfc, 0x83, 0xc4, 0x08, 0xb8, 0x04, 0x00, 0x50, 0xb8, 0x03, 0x00, 0x50, 0xb8
    db 0x00, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x90, 0xfd, 0x83, 0xc4, 0x08, 0xe9, 0xf9, 0x00, 0xb8
    db 0x05, 0x00, 0x50, 0xb8, 0x04, 0x00, 0x50, 0xb8, 0x07, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x48
    db 0xfc, 0x83, 0xc4, 0x08, 0xb8, 0x1c, 0x00, 0x50, 0xb8, 0x03, 0x00, 0x50, 0x50, 0xff, 0x76, 0x04
    db 0xe8, 0x66, 0xfd, 0x83, 0xc4, 0x08, 0xe9, 0xcf, 0x00, 0xb8, 0x05, 0x00, 0x50, 0xb8, 0x04, 0x00
    db 0x50, 0xb8, 0x07, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x1e, 0xfc, 0x83, 0xc4, 0x08, 0xb8, 0x01
    db 0x00, 0x50, 0xb8, 0x02, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x39, 0xfd
    db 0x83, 0xc4, 0x08, 0xe9, 0xa2, 0x00, 0xb8, 0x06, 0x00, 0x50, 0xb8, 0x05, 0x00, 0x50, 0x50, 0xff
    db 0x76, 0x04, 0xe8, 0xf4, 0xfb, 0x83, 0xc4, 0x08, 0xb8, 0x09, 0x00, 0x50, 0xb8, 0x03, 0x00, 0x50
    db 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x0f, 0xfd, 0x83, 0xc4, 0x08, 0xb8, 0x1f, 0x00
    db 0x50, 0xb8, 0x03, 0x00, 0x50, 0x50, 0xff, 0x76, 0x04, 0xe8, 0xfd, 0xfc, 0x83, 0xc4, 0x08, 0xeb
    db 0x67, 0xb8, 0x04, 0x00, 0x50, 0xb8, 0x06, 0x00, 0x50, 0x50, 0xff, 0x76, 0x04, 0xe8, 0xb9, 0xfb
    db 0x83, 0xc4, 0x08, 0xb8, 0x09, 0x00, 0x50, 0xb8, 0x02, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xff
    db 0x76, 0x04, 0xe8, 0xd4, 0xfc, 0x83, 0xc4, 0x08, 0xb8, 0x11, 0x00, 0x50, 0xb8, 0x02, 0x00, 0x50
    db 0xb8, 0x01, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0xbf, 0xfc, 0x83, 0xc4, 0x08, 0xeb, 0x29, 0x6e
    db 0x93, 0x86, 0x93, 0xb0, 0x93, 0xda, 0x93, 0x07, 0x94, 0x73, 0x94, 0x46, 0x94, 0x9d, 0x94, 0x03
    db 0x95, 0xc7, 0x94, 0x2d, 0x95, 0x57, 0x95, 0x84, 0x95, 0xbf, 0x95

@..math_loc_4310.l1:
    cmp ax, strict word 0xe          ; 0x45d2
    jae short @..math_loc_4310.l2    ; 0x45d5
    xchg bx, ax                      ; 0x45d7
    shl bx, 1                        ; 0x45d8
    jmp [cs:bx - 0x6a03]             ; 0x45da
@..math_loc_4310.l2:
    ret                              ; 0x45df
api_idx_00ac:
    mov ax, 0xff54                   ; 0x45e0
    call ds_dispatch_f40b            ; 0x45e3
    mov ax, 0x248                    ; 0x45e6
    imul word [bp + 0x4]             ; 0x45e9
    mov bx, ax                       ; 0x45ec
    mov al, byte [bx + 0x5d64]       ; 0x45ee
    sub ah, ah                       ; 0x45f2
    mov word [bp - 0x0006], ax       ; 0x45f4
    mov al, byte [bx + 0x5d67]       ; 0x45f7
    sub ah, ah                       ; 0x45fb
    mov word [bp - 0x0008], ax       ; 0x45fd
    mov al, byte [bx + 0x5e2d]       ; 0x4600
    sub ah, ah                       ; 0x4604
    jmp near @..api_idx_00ac.l1      ; 0x4606
    mov ax, 5                        ; 0x4609
    push ax                          ; 0x460c
    db 0xe8, 0x99, 0x71 ; call ds_dispatch_b7a9
    pop cx                           ; 0x4610
    add ax, strict word 6            ; 0x4611
    mov word [bp - 0x0002], ax       ; 0x4614
    jmp near @..api_idx_00ac.l2      ; 0x4617
    mov ax, 3                        ; 0x461a
    push ax                          ; 0x461d
    db 0xe8, 0x88, 0x71 ; call ds_dispatch_b7a9
    pop cx                           ; 0x4621
    inc ax                           ; 0x4622
    inc ax                           ; 0x4623
    mov word [bp - 0x0002], ax       ; 0x4624
    jmp short @..api_idx_00ac.l2     ; 0x4627
    mov ax, 4                        ; 0x4629
    push ax                          ; 0x462c
    db 0xe8, 0x79, 0x71 ; call ds_dispatch_b7a9
    pop cx                           ; 0x4630
    add ax, strict word 4            ; 0x4631
    mov word [bp - 0x0002], ax       ; 0x4634
    jmp short @..api_idx_00ac.l2     ; 0x4637
    mov ax, 4                        ; 0x4639
    push ax                          ; 0x463c
    db 0xe8, 0x69, 0x71 ; call ds_dispatch_b7a9
    pop cx                           ; 0x4640
    inc ax                           ; 0x4641
    inc ax                           ; 0x4642
    inc ax                           ; 0x4643
    mov word [bp - 0x0002], ax       ; 0x4644
    jmp short @..api_idx_00ac.l2     ; 0x4647
    mov ax, 3                        ; 0x4649
    push ax                          ; 0x464c
    db 0xe8, 0x59, 0x71 ; call ds_dispatch_b7a9
    pop cx                           ; 0x4650
    inc ax                           ; 0x4651
    inc ax                           ; 0x4652
    inc ax                           ; 0x4653
    mov word [bp - 0x0002], ax       ; 0x4654
    jmp short @..api_idx_00ac.l2     ; 0x4657
    mov ax, 5                        ; 0x4659
    push ax                          ; 0x465c
    db 0xe8, 0x49, 0x71 ; call ds_dispatch_b7a9
    pop cx                           ; 0x4660
    add ax, strict word 5            ; 0x4661
    mov word [bp - 0x0002], ax       ; 0x4664
    jmp short @..api_idx_00ac.l2     ; 0x4667
    mov ax, 5                        ; 0x4669
    push ax                          ; 0x466c
    db 0xe8, 0x39, 0x71 ; call ds_dispatch_b7a9
    pop cx                           ; 0x4670
    add ax, strict word 4            ; 0x4671
    mov word [bp - 0x0002], ax       ; 0x4674
    jmp short @..api_idx_00ac.l2     ; 0x4677
    push ax                          ; 0x4679
    xchg si, ax                      ; 0x467a
    popaw                            ; 0x467b
    xchg si, ax                      ; 0x467c
    jo short loc_4615                ; 0x467d
    adc byte [bp - 0x69b0], 0x70     ; 0x467f
    xchg si, ax                      ; 0x4684
    nop                              ; 0x4685
    xchg si, ax                      ; 0x4686
    nop                              ; 0x4687
    xchg si, ax                      ; 0x4688
    mov al, byte [data_9096]         ; 0x4689
    xchg si, ax                      ; 0x468c
    push ax                          ; 0x468d
    xchg si, ax                      ; 0x468e
    mov al, byte [data_7096]         ; 0x468f
    xchg si, ax                      ; 0x4692
    mov al, 0x96                     ; 0x4693
@..api_idx_00ac.l1:
    cmp ax, strict word 0xe          ; 0x4695
    jae short @..api_idx_00ac.l2     ; 0x4698
    xchg bx, ax                      ; 0x469a
    shl bx, 1                        ; 0x469b
    jmp [cs:bx - 0x6940]             ; 0x469d
@..api_idx_00ac.l2:
    mov ax, 4                        ; 0x46a2
    push ax                          ; 0x46a5
    call ds_dispatch_b7a9            ; 0x46a6
    pop cx                           ; 0x46a9
    push ax                          ; 0x46aa
    mov ax, word [bp - 0x0006]       ; 0x46ab
    add ax, word [bp - 0x0008]       ; 0x46ae
    mov cx, 6                        ; 0x46b1
    cwd                              ; 0x46b4
    idiv cx                          ; 0x46b5
    mov cx, ax                       ; 0x46b7
    pop ax                           ; 0x46b9
    add ax, cx                       ; 0x46ba
    mov word [bp - 0x0004], ax       ; 0x46bc
    mov ax, word [bp - 0x0006]       ; 0x46bf
    shl ax, 1                        ; 0x46c2
    add ax, word [bp - 0x0008]       ; 0x46c4
    mov cx, 3                        ; 0x46c7
    imul cx                          ; 0x46ca
    mov word [bp - 0x000c], ax       ; 0x46cc
    mov ax, word [bp - 0x0008]       ; 0x46cf
    cmp ax, strict word 8            ; 0x46d2
    jge short @..api_idx_00ac.l3     ; 0x46d5
    dec word [bp - 0x0002]           ; 0x46d7
@..api_idx_00ac.l3:
    cmp ax, strict word 0xf          ; 0x46da
    jle short @..api_idx_00ac.l4     ; 0x46dd
    inc word [bp - 0x0002]           ; 0x46df
@..api_idx_00ac.l4:
    cmp ax, strict word 0x11         ; 0x46e2
    jle short @..api_idx_00ac.l5     ; 0x46e5
    inc word [bp - 0x0002]           ; 0x46e7
@..api_idx_00ac.l5:
    cmp word [bp - 0x0006], byte 0x0f ; 0x46ea
    jle short @..api_idx_00ac.l6     ; 0x46ee
    mov ax, word [bp - 0x0006]       ; 0x46f0
    add word [bp - 0x000c], ax       ; 0x46f3
@..api_idx_00ac.l6:
    cmp word [bp - 0x0006], byte 0x11 ; 0x46f6
    jle short @..api_idx_00ac.l7     ; 0x46fa
    mov ax, word [bp - 0x0006]       ; 0x46fc
    add word [bp - 0x000c], ax       ; 0x46ff
@..api_idx_00ac.l7:
    cmp word [bp - 0x0002], byte 1   ; 0x4702
    jge short @..api_idx_00ac.l8     ; 0x4706
    mov word [bp - 0x0002], 1        ; 0x4708
@..api_idx_00ac.l8:
    mov ax, 0x248                    ; 0x470d
    imul word [bp + 0x4]             ; 0x4710
    mov bx, ax                       ; 0x4713
    mov ax, word [bx + 0x5c18]       ; 0x4715
    push ax                          ; 0x4719
    mov al, byte [bx + 0x5e3b]       ; 0x471a
    sub ah, ah                       ; 0x471e
    mov cx, ax                       ; 0x4720
    pop ax                           ; 0x4722
    cmp ax, cx                       ; 0x4723
    jge short @..api_idx_00ac.l9     ; 0x4725
    mov word [bp - 0x0002], 1        ; 0x4727
    mov word [bp - 0x0004], 1        ; 0x472c
@..api_idx_00ac.l9:
    mov ax, word [bp - 0x0002]       ; 0x4731
    add word [bx + 0x5c0c], ax       ; 0x4734
    add word [bx + 0x5c0e], ax       ; 0x4738
    mov ax, word [bp - 0x0004]       ; 0x473c
    add word [bx + 0x5c10], ax       ; 0x473f
    add word [bx + 0x5c12], ax       ; 0x4743
    mov ax, 0xf                      ; 0x4747
    imul word [bp - 0x000c]          ; 0x474a
    mov word [bx + 0x5c16], ax       ; 0x474d
    cmp byte [bx + 0x5e2b], 5        ; 0x4751
    jne short @..api_idx_00ac.l10    ; 0x4756
    shl ax, 1                        ; 0x4758
    mov cx, 3                        ; 0x475a
    cwd                              ; 0x475d
    idiv cx                          ; 0x475e
    mov word [bx + 0x5c16], ax       ; 0x4760
@..api_idx_00ac.l10:
    mov ax, 0x64                     ; 0x4764
    imul word [bx + 0x5c10]          ; 0x4767
    cwd                              ; 0x476b
    idiv word [bx + 0x5c12]          ; 0x476c
    mov word [bp - 0x000a], ax       ; 0x4770
    cmp ax, strict word 1            ; 0x4773
    jge short @..api_idx_00ac.l11    ; 0x4776
    cmp word [bx + 0x5c10], byte 0   ; 0x4778
    jle short @..api_idx_00ac.l11    ; 0x477d
    mov ax, 1                        ; 0x477f
    jmp short @..api_idx_00ac.l12    ; 0x4782
@..api_idx_00ac.l11:
    mov ax, word [bp - 0x000a]       ; 0x4784
@..api_idx_00ac.l12:
    mov word [bp - 0x000a], ax       ; 0x4787
    mov ax, 1                        ; 0x478a
    push ax                          ; 0x478d
    mov ax, 0x18                     ; 0x478e
    push ax                          ; 0x4791
    mov ax, 0x93e9                   ; 0x4792
    push ax                          ; 0x4795
    mov ax, 0x93e5                   ; 0x4796
    push ax                          ; 0x4799
    mov ax, 0xd5                     ; 0x479a
    push ax                          ; 0x479d
    push word [bx + 0x5c12]          ; 0x479e
    push word [bp - 0x000a]          ; 0x47a2
    mov ax, 0x63                     ; 0x47a5
    push ax                          ; 0x47a8
    mov ax, 6                        ; 0x47a9
    push ax                          ; 0x47ac
    mov ax, 0                        ; 0x47ad
    push ax                          ; 0x47b0
    call api_idx_0020                ; 0x47b1
    add sp, byte 0x14                ; 0x47b4
    lea ax, word [bp - 0x005c]       ; 0x47b7
    push ax                          ; 0x47ba
    mov ax, 0x1395                   ; 0x47bb
    push ax                          ; 0x47be
    call ds_dispatch_b53b            ; 0x47bf
    add sp, byte 4                   ; 0x47c2
    mov ax, 1                        ; 0x47c5
    push ax                          ; 0x47c8
    lea ax, word [bp - 0x005c]       ; 0x47c9
    push ax                          ; 0x47cc
    call api_idx_0004_5              ; 0x47cd
    add sp, byte 4                   ; 0x47d0
    push word [bp + 0x4]             ; 0x47d3
    call api_idx_007c                ; 0x47d6
    pop cx                           ; 0x47d9
    mov ax, 0x67                     ; 0x47da
    push ax                          ; 0x47dd
    mov ax, 0xa2                     ; 0x47de
    push ax                          ; 0x47e1
    mov ax, 6                        ; 0x47e2
    push ax                          ; 0x47e5
    push ax                          ; 0x47e6
    call ds_dispatch_e8da            ; 0x47e7
    add sp, byte 8                   ; 0x47ea
    mov ax, 1                        ; 0x47ed
    push ax                          ; 0x47f0
    mov ax, 0x18                     ; 0x47f1
    push ax                          ; 0x47f4
    mov ax, 0x93ed                   ; 0x47f5
    push ax                          ; 0x47f8
    mov ax, 0x93eb                   ; 0x47f9
    push ax                          ; 0x47fc
    mov ax, 0xd4                     ; 0x47fd
    push ax                          ; 0x4800
    mov ax, 0x248                    ; 0x4801
    imul word [bp + 0x4]             ; 0x4804
    mov bx, ax                       ; 0x4807
    push word [bx + 0x5c0e]          ; 0x4809
    push word [bx + 0x5c0c]          ; 0x480d
    mov ax, 0x5d                     ; 0x4811
    push ax                          ; 0x4814
    mov ax, 6                        ; 0x4815
    push ax                          ; 0x4818
    mov ax, 0                        ; 0x4819
    push ax                          ; 0x481c
    call api_idx_0020                ; 0x481d
    add sp, byte 0x14                ; 0x4820
    lea ax, word [bp - 0x005c]       ; 0x4823
    push ax                          ; 0x4826
    mov ax, 0x1394                   ; 0x4827
    cmp word [bp - 0x0002], byte 1   ; 0x482a
    jne short @..api_idx_00ac.l13    ; 0x482e
    mov ax, 0x1393                   ; 0x4830
@..api_idx_00ac.l13:
    push ax                          ; 0x4833
    call ds_dispatch_b53b            ; 0x4834
    add sp, byte 4                   ; 0x4837
    lea ax, word [bp - 0x00ac]       ; 0x483a
    push ax                          ; 0x483e
    push word [bp - 0x0002]          ; 0x483f
    call ds_dispatch_b27d            ; 0x4842
    add sp, byte 4                   ; 0x4845
    mov ax, 0x24                     ; 0x4848
    push ax                          ; 0x484b
    lea ax, word [bp - 0x00ac]       ; 0x484c
    push ax                          ; 0x4850
    lea ax, word [bp - 0x005c]       ; 0x4851
    push ax                          ; 0x4854
    call ds_dispatch_b300            ; 0x4855
    add sp, byte 6                   ; 0x4858
    mov ax, 1                        ; 0x485b
    push ax                          ; 0x485e
    lea ax, word [bp - 0x005c]       ; 0x485f
    push ax                          ; 0x4862
    call api_idx_0004_5              ; 0x4863
    add sp, byte 4                   ; 0x4866
    push word [bp + 0x4]             ; 0x4869
    call api_idx_007c                ; 0x486c
    pop cx                           ; 0x486f
    mov ax, 0x67                     ; 0x4870
    push ax                          ; 0x4873
    mov ax, 0xa2                     ; 0x4874
    push ax                          ; 0x4877
    mov ax, 6                        ; 0x4878
    push ax                          ; 0x487b
    push ax                          ; 0x487c
    call ds_dispatch_e8da            ; 0x487d
    add sp, byte 8                   ; 0x4880
    ret                              ; 0x4883
api_idx_0004_8:
    mov ax, 0xfffc                   ; 0x4884
    call ds_dispatch_f40b            ; 0x4887
    mov ax, 0x248                    ; 0x488a
    imul word [bp + 0x4]             ; 0x488d
    mov bx, ax                       ; 0x4890
    cmp word [bx + 0x5c18], byte 0x14 ; 0x4892
    jle short @..api_idx_0004_8.l1   ; 0x4897
    ret                              ; 0x4899
@..api_idx_0004_8.l1:
    mov al, byte [bx + 0x5d68]       ; 0x489a
    sub ah, ah                       ; 0x489e
    mov word [bp - 0x0004], ax       ; 0x48a0
    mov word [bp - 0x0002], 0        ; 0x48a3
    mov al, byte [bx + 0x5e2d]       ; 0x48a8
    sub ah, ah                       ; 0x48ac
    jmp short @..api_idx_0004_8.l2   ; 0x48ae

    db 0xb8, 0x04, 0x00, 0x50, 0xe8, 0xf2, 0x6e, 0x59, 0x40, 0x40, 0x89, 0x46, 0xfe, 0xeb, 0x55, 0xb8
    db 0x03, 0x00, 0x50, 0xe8, 0xe3, 0x6e, 0x59, 0x40, 0x89, 0x46, 0xfe, 0xeb, 0x47, 0xb8, 0x04, 0x00
    db 0x50, 0xe8, 0xd5, 0x6e, 0x59, 0x40, 0x89, 0x46, 0xfe, 0xeb, 0x39, 0xb8, 0x04, 0x00, 0x50, 0xe8
    db 0xc7
    db 'nY@@@'
    db 0x89, 0x46, 0xfe, 0xeb, 0x29, 0xf7, 0x98, 0x06, 0x99, 0x14, 0x99, 0x14, 0x99, 0xf7, 0x98, 0x06
    db 0x99, 0x14, 0x99, 0x06, 0x99, 0xf7, 0x98, 0x06, 0x99, 0xf7, 0x98, 0x22, 0x99, 0xf7, 0x98, 0x22
    db 0x99

@..api_idx_0004_8.l2:
    cmp ax, strict word 0xe          ; 0x4907
    jae short @..api_idx_0004_8.l3   ; 0x490a
    xchg bx, ax                      ; 0x490c
    shl bx, 1                        ; 0x490d
    jmp [cs:bx - 0x66ce]             ; 0x490f
@..api_idx_0004_8.l3:
    cmp word [bp - 0x0004], byte 8   ; 0x4914
    jge short @..api_idx_0004_8.l4   ; 0x4918
    dec word [bp - 0x0002]           ; 0x491a
@..api_idx_0004_8.l4:
    mov ax, 0x248                    ; 0x491d
    imul word [bp + 0x4]             ; 0x4920
    mov bx, ax                       ; 0x4923
    mov ax, word [bx + 0x5c18]       ; 0x4925
    push ax                          ; 0x4929
    mov al, byte [bx + 0x5e3b]       ; 0x492a
    sub ah, ah                       ; 0x492e
    mov cx, ax                       ; 0x4930
    pop ax                           ; 0x4932
    cmp ax, cx                       ; 0x4933
    jge short @..api_idx_0004_8.l5   ; 0x4935
    mov word [bp - 0x0002], 0        ; 0x4937
@..api_idx_0004_8.l5:
    mov al, byte [bx + 0x5e3a]       ; 0x493c
    cbw                              ; 0x4940
    sub ax, word [bp - 0x0002]       ; 0x4941
    mov byte [bx + 0x5e3a], al       ; 0x4944
    cmp byte [bx + 0x5e3a], 0        ; 0x4948
    jge short @..api_idx_0004_8.l6   ; 0x494d
    mov byte [bx + 0x5e3a], 0        ; 0x494f
@..api_idx_0004_8.l6:
    ret                              ; 0x4954
api_idx_0018:
    mov ax, 0xffe8                   ; 0x4955
    call ds_dispatch_f40b            ; 0x4958
    mov ax, 0x248                    ; 0x495b
    imul word [bp + 0x4]             ; 0x495e
    mov bx, ax                       ; 0x4961
    mov al, byte [bx + 0x5d65]       ; 0x4963
    sub ah, ah                       ; 0x4967
    mov word [bp - 0x0004], ax       ; 0x4969
    mov al, byte [bx + 0x5d66]       ; 0x496c
    sub ah, ah                       ; 0x4970
    mov word [bp - 0x0006], ax       ; 0x4972
    mov al, byte [bx + 0x5d67]       ; 0x4975
    sub ah, ah                       ; 0x4979
    mov word [bp - 0x0008], ax       ; 0x497b
    mov al, byte [bx + 0x5d6a]       ; 0x497e
    sub ah, ah                       ; 0x4982
    mov word [bp - 0x000a], ax       ; 0x4984
    mov al, byte [bx + 0x5e2d]       ; 0x4987
    sub ah, ah                       ; 0x498b
    jmp near loc_4b58                ; 0x498d
    mov ax, word [bp - 0x0004]       ; 0x4990
    add ax, word [bp - 0x0006]       ; 0x4993
    mov cx, data_0002                ; 0x4996
    cwd                              ; 0x4999
    idiv cx                          ; 0x499a
    mov word [bp - 0x000c], ax       ; 0x499c
    mov word [bp - 0x0014], 0        ; 0x499f
    mov word [bp - 0x0016], 0x20     ; 0x49a4
    mov word [bp - 0x0018], 1        ; 0x49a9
    jmp near loc_4b67                ; 0x49ae
    mov ax, word [bp - 0x0006]       ; 0x49b1
    add ax, word [bp - 0x0008]       ; 0x49b4
    mov cx, data_0002                ; 0x49b7
    cwd                              ; 0x49ba
    idiv cx                          ; 0x49bb
    mov word [bp - 0x000c], ax       ; 0x49bd
    mov word [bp - 0x0014], 1        ; 0x49c0
    mov word [bp - 0x0016], 0x1e     ; 0x49c5
    mov word [bp - 0x0018], 1        ; 0x49ca
    jmp near loc_4b67                ; 0x49cf
    mov ax, word [bp - 0x0004]       ; 0x49d2
    add ax, word [bp - 0x0006]       ; 0x49d5
    mov cx, data_0002                ; 0x49d8
    cwd                              ; 0x49db
    idiv cx                          ; 0x49dc
    mov word [bp - 0x000c], ax       ; 0x49de
    mov word [bp - 0x0014], data_0002 ; 0x49e1
    mov word [bp - 0x0016], 0x1d     ; 0x49e6
    mov word [bp - 0x0018], 3        ; 0x49eb
    jmp near loc_4b67                ; 0x49f0
    mov ax, word [bp - 0x0004]       ; 0x49f3
    add ax, word [bp - 0x0006]       ; 0x49f6
    mov cx, data_0002                ; 0x49f9
    cwd                              ; 0x49fc
    idiv cx                          ; 0x49fd
    mov word [bp - 0x000c], ax       ; 0x49ff
    mov word [bp - 0x0014], data_0002 ; 0x4a02
    mov word [bp - 0x0016], 0x1d     ; 0x4a07
    mov word [bp - 0x0018], 1        ; 0x4a0c
    jmp near loc_4b67                ; 0x4a11
    mov ax, word [bp - 0x0004]       ; 0x4a14
    add ax, word [bp - 0x0006]       ; 0x4a17
    mov cx, data_0002                ; 0x4a1a
    cwd                              ; 0x4a1d
    idiv cx                          ; 0x4a1e
    mov word [bp - 0x000c], ax       ; 0x4a20
    mov word [bp - 0x0014], 0        ; 0x4a23
    mov word [bp - 0x0016], 0x20     ; 0x4a28
    mov word [bp - 0x0018], 3        ; 0x4a2d
    jmp near loc_4b67                ; 0x4a32
    mov ax, word [bp - 0x0004]       ; 0x4a35
    add ax, word [bp - 0x0006]       ; 0x4a38
    mov cx, data_0002                ; 0x4a3b
    cwd                              ; 0x4a3e
    idiv cx                          ; 0x4a3f
    mov word [bp - 0x000c], ax       ; 0x4a41
    mov word [bp - 0x0014], 3        ; 0x4a44
    mov word [bp - 0x0016], 0x1f     ; 0x4a49
    mov word [bp - 0x0018], 1        ; 0x4a4e
    jmp near loc_4b67                ; 0x4a53
    mov ax, word [bp - 0x0006]       ; 0x4a56
    add ax, word [bp - 0x0008]       ; 0x4a59
    mov cx, data_0002                ; 0x4a5c
    cwd                              ; 0x4a5f
    idiv cx                          ; 0x4a60
    mov word [bp - 0x000c], ax       ; 0x4a62
    mov word [bp - 0x0014], 1        ; 0x4a65
    mov word [bp - 0x0016], 0x1e     ; 0x4a6a
    mov word [bp - 0x0018], 3        ; 0x4a6f
    jmp near loc_4b67                ; 0x4a74
    mov ax, word [bp - 0x0004]       ; 0x4a77
    add ax, word [bp - 0x0006]       ; 0x4a7a
    mov cx, data_0002                ; 0x4a7d
    cwd                              ; 0x4a80
    idiv cx                          ; 0x4a81
    mov word [bp - 0x000c], ax       ; 0x4a83
    mov ax, 0x248                    ; 0x4a86
    imul word [bp + 0x4]             ; 0x4a89
    db 0x8b, 0xd8 ; mov bx, ax
    mov ax, word [bx + 0x5c18]       ; 0x4a8e
    cwd                              ; 0x4a92
    idiv cx                          ; 0x4a93
    mov word [bp - 0x0014], dx       ; 0x4a95
    mov ax, 0x1e                     ; 0x4a98
    cmp word [bp - 0x0014], byte 0   ; 0x4a9b
    jne short loc_4aa9               ; 0x4a9f
    mov ax, 0x20                     ; 0x4aa1
    mov word [bp - 0x0016], 0x20     ; 0x4aa4
    mov word [bp - 0x0016], ax       ; 0x4aa9
    mov word [bp - 0x0018], 1        ; 0x4aac
    jmp near loc_4b67                ; 0x4ab1
    mov ax, word [bp - 0x000a]       ; 0x4ab4
    add ax, word [bp - 0x0006]       ; 0x4ab7
    mov cx, data_0002                ; 0x4aba
    cwd                              ; 0x4abd
    idiv cx                          ; 0x4abe
    mov word [bp - 0x000c], ax       ; 0x4ac0
    mov word [bp - 0x0014], 1        ; 0x4ac3
    mov word [bp - 0x0016], 0x1e     ; 0x4ac8
    mov word [bp - 0x0018], 3        ; 0x4acd
    jmp near loc_4b67                ; 0x4ad2
    mov ax, word [bp - 0x0004]       ; 0x4ad5
    db 0x03
@..math_loc_4b3c.l1:
    inc si                           ; 0x4ad9
    cli                              ; 0x4ada
    mov cx, data_0002                ; 0x4adb
    cwd                              ; 0x4ade
@..math_loc_4b3c.l2:
    idiv cx                          ; 0x4adf
    mov word [bp - 0x000c], ax       ; 0x4ae1
    mov word [bp - 0x0014], 0        ; 0x4ae4
    mov word [bp - 0x0016], 0x20     ; 0x4ae9
    mov word [bp - 0x0018], 3        ; 0x4aee
    jmp short loc_4b67               ; 0x4af3
    mov ax, word [bp - 0x0004]       ; 0x4af5
    add ax, word [bp - 0x0006]       ; 0x4af8
    mov cx, data_0002                ; 0x4afb
    cwd                              ; 0x4afe
    idiv cx                          ; 0x4aff
    mov word [bp - 0x000c], ax       ; 0x4b01
    mov word [bp - 0x0014], 3        ; 0x4b04
    mov word [bp - 0x0016], 0x1f     ; 0x4b09
    mov word [bp - 0x0018], 3        ; 0x4b0e
    jmp short loc_4b67               ; 0x4b13
    mov ax, word [bp - 0x0004]       ; 0x4b15
    add ax, word [bp - 0x0006]       ; 0x4b18
    mov cx, data_0002                ; 0x4b1b
    cwd                              ; 0x4b1e
    idiv cx                          ; 0x4b1f
    mov word [bp - 0x000c], ax       ; 0x4b21
    mov word [bp - 0x0014], data_0002 ; 0x4b24
    mov word [bp - 0x0016], 0x1d     ; 0x4b29
    mov word [bp - 0x0018], 5        ; 0x4b2e
    jmp short loc_4b67               ; 0x4b33
loc_4b35:
    mov word [bp - 0x0018], 0        ; 0x4b35
    jmp short loc_4b67               ; 0x4b3a
math_loc_4b3c:
    jl short @..math_loc_4b3c.l1     ; 0x4b3c
    xlatb                            ; 0x4b3e
    cwd                              ; 0x4b3f
    clc                              ; 0x4b40
    cwd                              ; 0x4b41
    jl short @..math_loc_4b3c.l2     ; 0x4b42
    sbb word [bp + si - 0x65c6], bx  ; 0x4b44
    pop bx                           ; 0x4b48
    call far 0x9a9d:0x9a7c           ; 0x4b49
    mov si, 0xfb9a                   ; 0x4b4e
    call far 0x9b3c:0x9b1c           ; 0x4b51
    pop sp                           ; 0x4b56
    wait                             ; 0x4b57
loc_4b58:
    cmp ax, strict word 0xe          ; 0x4b58
    jae short loc_4b65               ; 0x4b5b
    xchg bx, ax                      ; 0x4b5d
    shl bx, 1                        ; 0x4b5e
    jmp [cs:bx - 0x647d]             ; 0x4b60
loc_4b65:
    jmp short loc_4b35               ; 0x4b65
loc_4b67:
    cmp word [bp - 0x0018], byte 0   ; 0x4b67
    jne short loc_4b6e               ; 0x4b6b
    ret                              ; 0x4b6d
loc_4b6e:
    mov ax, 0x248                    ; 0x4b6e
    imul word [bp + 0x4]             ; 0x4b71
    mov bx, ax                       ; 0x4b74
    mov ax, word [bx + 0x5c18]       ; 0x4b76
    cmp ax, word [bp - 0x0018]       ; 0x4b7a
    jge short loc_4b82               ; 0x4b7d
    jmp near loc_4cc4                ; 0x4b7f
loc_4b82:
    add bx, word [bp - 0x0014]       ; 0x4b82
    inc byte [bx + 0x5d50]           ; 0x4b85
    mov word [bp - 0x0002], 0        ; 0x4b89
loc_4b8e:
    mov word [bp - 0x0012], 0        ; 0x4b8e
    mov ax, 0x248                    ; 0x4b93
    imul word [bp + 0x4]             ; 0x4b96
    mov cx, word [bp - 0x0002]       ; 0x4b99
    shl cx, 1                        ; 0x4b9c
    shl cx, 1                        ; 0x4b9e
    add ax, cx                       ; 0x4ba0
    mov bx, ax                       ; 0x4ba2
    cmp word [bx + 0x5c1e], byte 0   ; 0x4ba4
    jle short loc_4be9               ; 0x4ba9
    mov word [bp - 0x0004], 0        ; 0x4bab
loc_4bb0:
    mov ax, 6                        ; 0x4bb0
    imul word [bp - 0x0004]          ; 0x4bb3
    mov bx, ax                       ; 0x4bb6
    mov al, byte [bx + 0x620]        ; 0x4bb8
    sub ah, ah                       ; 0x4bbc
    cmp ax, word [bp - 0x0002]       ; 0x4bbe
    jne short loc_4bde               ; 0x4bc1
    push word [bp - 0x0004]          ; 0x4bc3
    mov ax, 0x248                    ; 0x4bc6
    imul word [bp + 0x4]             ; 0x4bc9
    add ax, 0x5e12                   ; 0x4bcc
    push ax                          ; 0x4bcf
    call ds_dispatch_ec74            ; 0x4bd0
    add sp, byte 4                   ; 0x4bd3
    cmp ax, strict word 1            ; 0x4bd6
    jne short loc_4bde               ; 0x4bd9
    inc word [bp - 0x0012]           ; 0x4bdb
loc_4bde:
    inc word [bp - 0x0004]           ; 0x4bde
    mov ax, word [bp - 0x0004]       ; 0x4be1
    cmp ax, strict word 0x66         ; 0x4be4
    jl short loc_4bb0                ; 0x4be7
loc_4be9:
    cmp word [bp - 0x0012], byte 0   ; 0x4be9
    jg short loc_4bf2                ; 0x4bed
    jmp near loc_4cb6                ; 0x4bef
loc_4bf2:
    mov word [bp - 0x000e], 0        ; 0x4bf2
    cmp word [bp - 0x000c], byte 0x0d ; 0x4bf7
    jle short loc_4c00               ; 0x4bfb
    inc word [bp - 0x000e]           ; 0x4bfd
loc_4c00:
    cmp word [bp - 0x000c], byte 0x10 ; 0x4c00
    jle short loc_4c09               ; 0x4c04
    inc word [bp - 0x000e]           ; 0x4c06
loc_4c09:
    mov ax, 0x248                    ; 0x4c09
    imul word [bp + 0x4]             ; 0x4c0c
    mov bx, ax                       ; 0x4c0f
    mov ax, word [bx + 0x5c18]       ; 0x4c11
    push ax                          ; 0x4c15
    mov al, byte [bx + 0x5e3b]       ; 0x4c16
    sub ah, ah                       ; 0x4c1a
    mov cx, ax                       ; 0x4c1c
    pop ax                           ; 0x4c1e
    cmp ax, cx                       ; 0x4c1f
    jge short loc_4c33               ; 0x4c21
    mov ax, word [bp - 0x0002]       ; 0x4c23
    shl ax, 1                        ; 0x4c26
    shl ax, 1                        ; 0x4c28
    add bx, ax                       ; 0x4c2a
    inc word [bx + 0x5c1e]           ; 0x4c2c
    jmp near loc_4cb6                ; 0x4c30
loc_4c33:
    mov ax, 0x248                    ; 0x4c33
    imul word [bp + 0x4]             ; 0x4c36
    add ax, word [bp - 0x0002]       ; 0x4c39
    mov bx, ax                       ; 0x4c3c
    mov al, byte [bx + 0x5d54]       ; 0x4c3e
    sub ah, ah                       ; 0x4c42
    push ax                          ; 0x4c44
    call ds_dispatch_b7a9            ; 0x4c45
    pop cx                           ; 0x4c48
    push ax                          ; 0x4c49
    mov ax, 0x248                    ; 0x4c4a
    imul word [bp + 0x4]             ; 0x4c4d
    add ax, word [bp - 0x0016]       ; 0x4c50
    mov bx, ax                       ; 0x4c53
    mov al, byte [bx + 0x5d6c]       ; 0x4c55
    sub ah, ah                       ; 0x4c59
    mov cx, 0x14                     ; 0x4c5b
    cwd                              ; 0x4c5e
    idiv cx                          ; 0x4c5f
    push ax                          ; 0x4c61
    call ds_dispatch_b7a9            ; 0x4c62
    pop cx                           ; 0x4c65
    mov cx, ax                       ; 0x4c66
    pop ax                           ; 0x4c68
    add ax, cx                       ; 0x4c69
    push ax                          ; 0x4c6b
    mov ax, 0x248                    ; 0x4c6c
    imul word [bp + 0x4]             ; 0x4c6f
    mov bx, ax                       ; 0x4c72
    mov al, byte [bx + 0x5d66]       ; 0x4c74
    sub ah, ah                       ; 0x4c78
    mov cx, 6                        ; 0x4c7a
    cwd                              ; 0x4c7d
    idiv cx                          ; 0x4c7e
    imul word [bp - 0x0012]          ; 0x4c80
    mov cx, ax                       ; 0x4c83
    pop ax                           ; 0x4c85
    add ax, cx                       ; 0x4c86
    add ax, word [bp - 0x000e]       ; 0x4c88
    mov word [bp - 0x0010], ax       ; 0x4c8b
    cmp ax, strict word 0xf          ; 0x4c8e
    jle short loc_4c98               ; 0x4c91
    mov word [bp - 0x0010], 0xf      ; 0x4c93
loc_4c98:
    mov ax, word [bp - 0x0010]       ; 0x4c98
    mov cx, word [bp - 0x0002]       ; 0x4c9b
    shl cx, 1                        ; 0x4c9e
    shl cx, 1                        ; 0x4ca0
    add bx, cx                       ; 0x4ca2
    add word [bx + 0x5c1e], ax       ; 0x4ca4
    cmp word [bx + 0x5c1e], strict word 0x3e7 ; 0x4ca8
    jle short loc_4cb6               ; 0x4cae
    mov word [bx + 0x5c1e], 0x3e7    ; 0x4cb0
loc_4cb6:
    inc word [bp - 0x0002]           ; 0x4cb6
    mov ax, word [bp - 0x0002]       ; 0x4cb9
    cmp ax, strict word 6            ; 0x4cbc
    jge short loc_4cc4               ; 0x4cbf
    jmp near loc_4b8e                ; 0x4cc1
loc_4cc4:
    ret                              ; 0x4cc4
api_idx_00b4:
    mov ax, 0xff4c                   ; 0x4cc5
    call ds_dispatch_f40b            ; 0x4cc8
    mov word [bp - 0x0002], 0        ; 0x4ccb
@..api_idx_00b4.l1:
    mov ax, word [bp - 0x0002]       ; 0x4cd0
    shl ax, 1                        ; 0x4cd3
    mov bx, ax                       ; 0x4cd5
    add bx, bp                       ; 0x4cd7
    mov word [bx - 0x0014], 0        ; 0x4cd9
    inc word [bp - 0x0002]           ; 0x4cde
    mov ax, word [bp - 0x0002]       ; 0x4ce1
    cmp ax, strict word 8            ; 0x4ce4
    jl short @..api_idx_00b4.l1      ; 0x4ce7
@..api_idx_00b4.l2:
    mov word [bp - 0x0004], 0        ; 0x4ce9
@..api_idx_00b4.l3:
    mov ax, 7                        ; 0x4cee
    push ax                          ; 0x4cf1
    call ds_dispatch_b7a9            ; 0x4cf2
    pop cx                           ; 0x4cf5
    mov word [bp - 0x0002], ax       ; 0x4cf6
    inc word [bp - 0x0004]           ; 0x4cf9
    mov ax, 0x248                    ; 0x4cfc
    imul word [bp + 0x4]             ; 0x4cff
    add ax, word [bp - 0x0002]       ; 0x4d02
    mov bx, ax                       ; 0x4d05
    cmp byte [bx + 0x5d64], 0x12     ; 0x4d07
    jae short @..api_idx_00b4.l4     ; 0x4d0c
    mov ax, word [bp - 0x0002]       ; 0x4d0e
    shl ax, 1                        ; 0x4d11
    mov bx, ax                       ; 0x4d13
    add bx, bp                       ; 0x4d15
    cmp word [bx - 0x0014], byte 0   ; 0x4d17
    je short @..api_idx_00b4.l5      ; 0x4d1b
@..api_idx_00b4.l4:
    cmp word [bp - 0x0004], byte 3   ; 0x4d1d
    jl short @..api_idx_00b4.l3      ; 0x4d21
@..api_idx_00b4.l5:
    mov ax, 0x248                    ; 0x4d23
    imul word [bp + 0x4]             ; 0x4d26
    add ax, word [bp - 0x0002]       ; 0x4d29
    mov bx, ax                       ; 0x4d2c
    cmp byte [bx + 0x5d64], 0x12     ; 0x4d2e
    jb short @..api_idx_00b4.l6      ; 0x4d33
    jmp near @..api_idx_00b4.l8      ; 0x4d35
@..api_idx_00b4.l6:
    mov ax, word [bp - 0x0002]       ; 0x4d38
    shl ax, 1                        ; 0x4d3b
    mov bx, ax                       ; 0x4d3d
    add bx, bp                       ; 0x4d3f
    cmp word [bx - 0x0014], byte 0   ; 0x4d41
    je short @..api_idx_00b4.l7      ; 0x4d45
    jmp near @..api_idx_00b4.l8      ; 0x4d47
@..api_idx_00b4.l7:
    mov word [bx - 0x0014], 1        ; 0x4d4a
    mov ax, 0x248                    ; 0x4d4f
    imul word [bp + 0x4]             ; 0x4d52
    add ax, word [bp - 0x0002]       ; 0x4d55
    mov bx, ax                       ; 0x4d58
    inc byte [bx + 0x5d64]           ; 0x4d5a
    mov ax, 1                        ; 0x4d5e
    push ax                          ; 0x4d61
    mov ax, 0x18                     ; 0x4d62
    push ax                          ; 0x4d65
    mov ax, 0x93ef                   ; 0x4d66
    push ax                          ; 0x4d69
    mov ax, 0x93ee                   ; 0x4d6a
    push ax                          ; 0x4d6d
    mov ax, word [bp - 0x0002]       ; 0x4d6e
    add ax, 0xcc                     ; 0x4d71
    push ax                          ; 0x4d74
    mov ax, 0                        ; 0x4d75
    push ax                          ; 0x4d78
    mov al, byte [bx + 0x5d64]       ; 0x4d79
    sub ah, ah                       ; 0x4d7d
    push ax                          ; 0x4d7f
    mov ax, 6                        ; 0x4d80
    imul word [bp - 0x0002]          ; 0x4d83
    add ax, strict word 0x23         ; 0x4d86
    push ax                          ; 0x4d89
    mov ax, 0x73                     ; 0x4d8a
    push ax                          ; 0x4d8d
    mov ax, 1                        ; 0x4d8e
    push ax                          ; 0x4d91
    call api_idx_0020                ; 0x4d92
    add sp, byte 0x14                ; 0x4d95
    lea ax, word [bp - 0x0064]       ; 0x4d98
    push ax                          ; 0x4d9b
    mov ax, 0x1396                   ; 0x4d9c
    push ax                          ; 0x4d9f
    call ds_dispatch_b53b            ; 0x4da0
    add sp, byte 4                   ; 0x4da3
    lea ax, word [bp - 0x00b4]       ; 0x4da6
    push ax                          ; 0x4daa
    mov ax, word [bp - 0x0002]       ; 0x4dab
    add ax, 0x13ba                   ; 0x4dae
    push ax                          ; 0x4db1
    call ds_dispatch_b53b            ; 0x4db2
    add sp, byte 4                   ; 0x4db5
    mov ax, 0x24                     ; 0x4db8
    push ax                          ; 0x4dbb
    lea ax, word [bp - 0x00b4]       ; 0x4dbc
    push ax                          ; 0x4dc0
    lea ax, word [bp - 0x0064]       ; 0x4dc1
    push ax                          ; 0x4dc4
    call ds_dispatch_b300            ; 0x4dc5
    add sp, byte 6                   ; 0x4dc8
    mov ax, 1                        ; 0x4dcb
    push ax                          ; 0x4dce
    lea ax, word [bp - 0x0064]       ; 0x4dcf
    push ax                          ; 0x4dd2
    call api_idx_0004_5              ; 0x4dd3
    add sp, byte 4                   ; 0x4dd6
    push word [bp + 0x4]             ; 0x4dd9
    call api_idx_007c                ; 0x4ddc
    pop cx                           ; 0x4ddf
    mov ax, 0x67                     ; 0x4de0
    push ax                          ; 0x4de3
    mov ax, 0xa2                     ; 0x4de4
    push ax                          ; 0x4de7
    mov ax, 6                        ; 0x4de8
    push ax                          ; 0x4deb
    push ax                          ; 0x4dec
    call ds_dispatch_e8da            ; 0x4ded
    add sp, byte 8                   ; 0x4df0
@..api_idx_00b4.l8:
    mov ax, data_0002                ; 0x4df3
    push ax                          ; 0x4df6
    call ds_dispatch_b7a9            ; 0x4df7
    pop cx                           ; 0x4dfa
    test ax, ax                      ; 0x4dfb
    je short @..api_idx_00b4.l9      ; 0x4dfd
    jmp near @..api_idx_00b4.l2      ; 0x4dff
@..api_idx_00b4.l9:
    ret                              ; 0x4e02
api_idx_0006_2:
    mov ax, 0xfffa                   ; 0x4e03
    call ds_dispatch_f40b            ; 0x4e06
    mov word [bp - 0x0004], 0        ; 0x4e09
    mov word [bp - 0x0002], 0        ; 0x4e0e
@..api_idx_0006_2.l1:
    mov ax, word [bp - 0x0002]       ; 0x4e13
    jmp short @..api_idx_0006_2.l2   ; 0x4e16

    db 0xc7, 0x46, 0xfa, 0x02, 0x00, 0xeb, 0x45, 0xc7, 0x46, 0xfa, 0x04, 0x00, 0xeb, 0x3e, 0xc7, 0x46
    db 0xfa, 0x07, 0x00, 0xeb, 0x37, 0xc7, 0x46, 0xfa, 0x0a, 0x00, 0xeb, 0x30, 0xc7, 0x46, 0xfa, 0x0e
    db 0x00, 0xeb, 0x29, 0xc7, 0x46, 0xfa, 0x12, 0x00, 0xeb, 0x22, 0xc7, 0x46, 0xfa, 0x18, 0x00, 0xeb
    db 0x1b, 0x5f, 0x9e, 0x66, 0x9e, 0x6d, 0x9e, 0x74, 0x9e, 0x7b, 0x9e, 0x82, 0x9e, 0x89, 0x9e

@..api_idx_0006_2.l2:
    cmp ax, strict word 7            ; 0x4e57
    jae short @..api_idx_0006_2.l3   ; 0x4e5a
    xchg bx, ax                      ; 0x4e5c
    shl bx, 1                        ; 0x4e5d
    jmp [cs:bx - 0x6170]             ; 0x4e5f
@..api_idx_0006_2.l3:
    mov ax, 0x248                    ; 0x4e64
    imul word [bp + 0x4]             ; 0x4e67
    mov bx, ax                       ; 0x4e6a
    mov ax, word [bx + 0x5c18]       ; 0x4e6c
    cmp ax, word [bp - 0x0006]       ; 0x4e70
    jl short @..api_idx_0006_2.l4    ; 0x4e73
    inc word [bp - 0x0004]           ; 0x4e75
@..api_idx_0006_2.l4:
    inc word [bp - 0x0002]           ; 0x4e78
    mov ax, word [bp - 0x0002]       ; 0x4e7b
    cmp ax, strict word 7            ; 0x4e7e
    jl short @..api_idx_0006_2.l1    ; 0x4e81
    mov ax, 0x248                    ; 0x4e83
    imul word [bp + 0x4]             ; 0x4e86
    mov bx, ax                       ; 0x4e89
    mov al, byte [bx + 0x5e2e]       ; 0x4e8b
    sub ah, ah                       ; 0x4e8f
    cmp ax, word [bp - 0x0004]       ; 0x4e91
    jge short @..api_idx_0006_2.l5   ; 0x4e94
    mov al, byte [bp - 0x0004]       ; 0x4e96
    mov byte [bx + 0x5e2e], al       ; 0x4e99
@..api_idx_0006_2.l5:
    ret                              ; 0x4e9d
api_idx_00a4:
    mov ax, 0xff5c                   ; 0x4e9e
    call ds_dispatch_f40b            ; 0x4ea1
    mov ax, 0x248                    ; 0x4ea4
    imul word [bp + 0x4]             ; 0x4ea7
    mov bx, ax                       ; 0x4eaa
    inc word [bx + 0x5c18]           ; 0x4eac
    mov al, byte [bx + 0x5e3b]       ; 0x4eb0
    sub ah, ah                       ; 0x4eb4
    cmp ax, word [bx + 0x5c18]       ; 0x4eb6
    jg short @..api_idx_00a4.l1      ; 0x4eba
    mov byte [bx + 0x5e3b], 0        ; 0x4ebc
@..api_idx_00a4.l1:
    push word [bp + 0x4]             ; 0x4ec1
    call api_idx_0006_2              ; 0x4ec4
    pop cx                           ; 0x4ec7
    mov ax, 0                        ; 0x4ec8
    push ax                          ; 0x4ecb
    push word [bp + 0x4]             ; 0x4ecc
    call math_loc_2189               ; 0x4ecf
    add sp, byte 4                   ; 0x4ed2
    lea ax, word [bp - 0x0054]       ; 0x4ed5
    push ax                          ; 0x4ed8
    mov ax, 0x1392                   ; 0x4ed9
    push ax                          ; 0x4edc
    call ds_dispatch_b53b            ; 0x4edd
    add sp, byte 4                   ; 0x4ee0
    mov ax, 0x5e                     ; 0x4ee3
    push ax                          ; 0x4ee6
    mov ax, 0x248                    ; 0x4ee7
    imul word [bp + 0x4]             ; 0x4eea
    add ax, 0x5bf4                   ; 0x4eed
    push ax                          ; 0x4ef0
    lea ax, word [bp - 0x0054]       ; 0x4ef1
    push ax                          ; 0x4ef4
    call ds_dispatch_b300            ; 0x4ef5
    add sp, byte 6                   ; 0x4ef8
    lea ax, word [bp - 0x00a4]       ; 0x4efb
    push ax                          ; 0x4eff
    mov ax, 0x248                    ; 0x4f00
    imul word [bp + 0x4]             ; 0x4f03
    mov bx, ax                       ; 0x4f06
    mov al, byte [bx + 0x5e2d]       ; 0x4f08
    sub ah, ah                       ; 0x4f0c
    add ax, strict word 0x78         ; 0x4f0e
    push ax                          ; 0x4f11
    call ds_dispatch_b53b            ; 0x4f12
    add sp, byte 4                   ; 0x4f15
    mov ax, 0x24                     ; 0x4f18
    push ax                          ; 0x4f1b
    lea ax, word [bp - 0x00a4]       ; 0x4f1c
    push ax                          ; 0x4f20
    lea ax, word [bp - 0x0054]       ; 0x4f21
    push ax                          ; 0x4f24
    call ds_dispatch_b300            ; 0x4f25
    add sp, byte 6                   ; 0x4f28
    mov ax, 1                        ; 0x4f2b
    push ax                          ; 0x4f2e
    lea ax, word [bp - 0x0054]       ; 0x4f2f
    push ax                          ; 0x4f32
    call api_idx_0004_5              ; 0x4f33
    add sp, byte 4                   ; 0x4f36
    push word [bp + 0x4]             ; 0x4f39
    call api_idx_00b4                ; 0x4f3c
    pop cx                           ; 0x4f3f
    push word [bp + 0x4]             ; 0x4f40
    call api_idx_00ac                ; 0x4f43
    pop cx                           ; 0x4f46
    push word [bp + 0x4]             ; 0x4f47
    call api_idx_0004_8              ; 0x4f4a
    pop cx                           ; 0x4f4d
    push word [bp + 0x4]             ; 0x4f4e
    call math_loc_4310               ; 0x4f51
    pop cx                           ; 0x4f54
    mov word [bp - 0x0004], 0        ; 0x4f55
    mov word [bp - 0x0002], 0        ; 0x4f5a
@..api_idx_00a4.l2:
    mov ax, word [bp - 0x0002]       ; 0x4f5f
    shl ax, 1                        ; 0x4f62
    mov bx, ax                       ; 0x4f64
    mov ax, word [bx - 0x6a10]       ; 0x4f66
    add word [bp - 0x0004], ax       ; 0x4f6a
    inc word [bp - 0x0002]           ; 0x4f6d
    mov ax, word [bp - 0x0002]       ; 0x4f70
    cmp ax, strict word 4            ; 0x4f73
    jl short @..api_idx_00a4.l2      ; 0x4f76
    cmp word [bp - 0x0004], byte 0   ; 0x4f78
    jle short @..api_idx_00a4.l3     ; 0x4f7c
    mov ax, 0x25d                    ; 0x4f7e
    push ax                          ; 0x4f81
    push word [bp + 0x4]             ; 0x4f82
    call api_idx_0088                ; 0x4f85
    add sp, byte 4                   ; 0x4f88
@..api_idx_00a4.l3:
    push word [bp + 0x4]             ; 0x4f8b
    call api_idx_0052                ; 0x4f8e
    pop cx                           ; 0x4f91
    push word [bp + 0x4]             ; 0x4f92
    call api_idx_0018                ; 0x4f95
    pop cx                           ; 0x4f98
    mov word [bp - 0x0002], 0        ; 0x4f99
@..api_idx_00a4.l4:
    mov ax, 0x248                    ; 0x4f9e
    imul word [bp + 0x4]             ; 0x4fa1
    add ax, word [bp - 0x0002]       ; 0x4fa4
    mov bx, ax                       ; 0x4fa7
    cmp byte [bx + 0x5d50], 0        ; 0x4fa9
    jbe short @..api_idx_00a4.l5     ; 0x4fae
    push word [bp - 0x0002]          ; 0x4fb0
    push word [bp + 0x4]             ; 0x4fb3
    call api_idx_00ca                ; 0x4fb6
    add sp, byte 4                   ; 0x4fb9
    jmp short @..api_idx_00a4.l4     ; 0x4fbc
@..api_idx_00a4.l5:
    inc word [bp - 0x0002]           ; 0x4fbe
    mov ax, word [bp - 0x0002]       ; 0x4fc1
    cmp ax, strict word 4            ; 0x4fc4
    jl short @..api_idx_00a4.l4      ; 0x4fc7
    ret                              ; 0x4fc9
api_idx_0046:
    mov ax, 0xffba                   ; 0x4fca
    call ds_dispatch_f40b            ; 0x4fcd
    mov ax, 0                        ; 0x4fd0
    push ax                          ; 0x4fd3
    mov ax, 0x248                    ; 0x4fd4
    imul word [bp + 0x4]             ; 0x4fd7
    mov bx, ax                       ; 0x4fda
    mov al, byte [bx + 0x5e2d]       ; 0x4fdc
    sub ah, ah                       ; 0x4fe0
    push ax                          ; 0x4fe2
    lea ax, word [bp - 0x0044]       ; 0x4fe3
    push ax                          ; 0x4fe6
    mov ax, 0                        ; 0x4fe7
    push ax                          ; 0x4fea
    call ds_dispatch_b63c            ; 0x4feb
    add sp, byte 8                   ; 0x4fee
    mov word [data_9492], 0          ; 0x4ff1
@..api_idx_0046.l1:
    mov ax, 0x248                    ; 0x4ff7
    imul word [bp + 0x4]             ; 0x4ffa
    mov bx, ax                       ; 0x4ffd
    cmp word [bx + 0x5c18], byte 0x10 ; 0x4fff
    jge short @..api_idx_0046.l2     ; 0x5004
    mov ax, word [bx + 0x5c18]       ; 0x5006
    shl ax, 1                        ; 0x500a
    shl ax, 1                        ; 0x500c
    mov bx, ax                       ; 0x500e
    add bx, bp                       ; 0x5010
    mov ax, word [bx - 0x0048]       ; 0x5012
    mov dx, word [bx - 0x0046]       ; 0x5015
    mov word [bp - 0x0002], dx       ; 0x5018
    mov word [bp - 0x0004], ax       ; 0x501b
    jmp short @..api_idx_0046.l3     ; 0x501e
@..api_idx_0046.l2:
    mov ax, 0x248                    ; 0x5020
    imul word [bp + 0x4]             ; 0x5023
    mov bx, ax                       ; 0x5026
    mov ax, word [bx + 0x5c18]       ; 0x5028
    add ax, strict word 0xfff0       ; 0x502c
    mov word [bp - 0x0046], ax       ; 0x502f
    mov ax, word [bp - 0x0008]       ; 0x5032
    mov dx, word [bp - 0x0006]       ; 0x5035
    sub ax, word [bp - 0x000c]       ; 0x5038
    sbb dx, word [bp - 0x000a]       ; 0x503b
    push ax                          ; 0x503e
    push dx                          ; 0x503f
    mov ax, word [bp - 0x0046]       ; 0x5040
    cwd                              ; 0x5043
    mov cx, ax                       ; 0x5044
    mov bx, dx                       ; 0x5046
    pop dx                           ; 0x5048
    pop ax                           ; 0x5049
    push ax                          ; 0x504a
    push dx                          ; 0x504b
    mul bx                           ; 0x504c
    mov bx, ax                       ; 0x504e
    pop ax                           ; 0x5050
    mul cx                           ; 0x5051
    add bx, ax                       ; 0x5053
    pop ax                           ; 0x5055
    mul cx                           ; 0x5056
    add dx, bx                       ; 0x5058
    add ax, word [bp - 0x0008]       ; 0x505a
    adc dx, word [bp - 0x0006]       ; 0x505d
    mov word [bp - 0x0002], dx       ; 0x5060
    mov word [bp - 0x0004], ax       ; 0x5063
@..api_idx_0046.l3:
    mov ax, 0x248                    ; 0x5066
    imul word [bp + 0x4]             ; 0x5069
    mov bx, ax                       ; 0x506c
    mov ax, word [bx + 0x5c00]       ; 0x506e
    mov dx, word [bx + 0x5c02]       ; 0x5072
    cmp dx, word [bp - 0x0002]       ; 0x5076
    jl short @..api_idx_0046.l4      ; 0x5079
    jne short @..api_idx_0046.l5     ; 0x507b
    cmp ax, word [bp - 0x0004]       ; 0x507d
    jae short @..api_idx_0046.l5     ; 0x5080
@..api_idx_0046.l4:
    jmp short @..api_idx_0046.l8     ; 0x5082
@..api_idx_0046.l5:
    cmp word [bp + 0x6], byte 0      ; 0x5084
    je short @..api_idx_0046.l6      ; 0x5088
    push word [bp + 0x4]             ; 0x508a
    call api_idx_00a4                ; 0x508d
    pop cx                           ; 0x5090
    jmp short @..api_idx_0046.l7     ; 0x5091
@..api_idx_0046.l6:
    mov ax, 1                        ; 0x5093
    ret                              ; 0x5096
@..api_idx_0046.l7:
    jmp short @..api_idx_0046.l9     ; 0x5097
@..api_idx_0046.l8:
    mov ax, 0                        ; 0x5099
    ret                              ; 0x509c
@..api_idx_0046.l9:
    jmp near @..api_idx_0046.l1      ; 0x509d
    db 0xc3
api_idx_000e:
    mov ax, 0xfff2                   ; 0x50a1
    call ds_dispatch_f40b            ; 0x50a4
    cmp word [data_8f20], byte 0     ; 0x50a7
    jg short @..api_idx_000e.l1      ; 0x50ac
    jmp near @..api_idx_000e.l8      ; 0x50ae
@..api_idx_000e.l1:
    mov ax, word [data_82ee]         ; 0x50b1
    mov cx, word [data_8f20]         ; 0x50b4
    dec cx                           ; 0x50b8
    sub ax, cx                       ; 0x50b9
    add ax, strict word 6            ; 0x50bb
    mov cx, 4                        ; 0x50be
    cwd                              ; 0x50c1
    idiv cx                          ; 0x50c2
    mov word [bp - 0x0002], dx       ; 0x50c4
    mov ax, dx                       ; 0x50c7
    jmp short @..api_idx_000e.l6     ; 0x50c9
@..api_idx_000e.l2:
    mov byte [bp - 0x000e], 1        ; 0x50cb
    mov byte [bp - 0x000d], data_0002 ; 0x50cf
    mov ax, 5                        ; 0x50d3
    cmp word [bp - 0x0002], byte 0   ; 0x50d6
    jne short @..api_idx_000e.l3     ; 0x50da
    mov ax, 4                        ; 0x50dc
@..api_idx_000e.l3:
    mov byte [bp - 0x000c], al       ; 0x50df
    mov byte [bp - 0x000b], 0        ; 0x50e2
    mov word [bp - 0x0004], 0        ; 0x50e6
    jmp short @..api_idx_000e.l7     ; 0x50eb
@..api_idx_000e.l4:
    mov byte [bp - 0x000e], 3        ; 0x50ed
    mov byte [bp - 0x000d], 0        ; 0x50f1
    mov ax, 0                        ; 0x50f5
    cmp word [bp - 0x0002], byte 3   ; 0x50f8
    jne short @..api_idx_000e.l5     ; 0x50fc
    mov ax, 1                        ; 0x50fe
@..api_idx_000e.l5:
    mov word [bp - 0x0004], ax       ; 0x5101
    jmp short @..api_idx_000e.l7     ; 0x5104
@..api_idx_000e.l6:
    cmp ax, strict word 0            ; 0x5106
    je short @..api_idx_000e.l2      ; 0x5109
    cmp ax, strict word 1            ; 0x510b
    je short @..api_idx_000e.l4      ; 0x510e
    cmp ax, strict word 2            ; 0x5110
    je short @..api_idx_000e.l2      ; 0x5113
    cmp ax, strict word 3            ; 0x5115
    je short @..api_idx_000e.l4      ; 0x5118
@..api_idx_000e.l7:
    mov ax, 0                        ; 0x511a
    push ax                          ; 0x511d
    push ax                          ; 0x511e
    lea ax, word [bp - 0x000e]       ; 0x511f
    push ax                          ; 0x5122
    push word [bp - 0x0004]          ; 0x5123
    mov ax, 0x8f                     ; 0x5126
    push ax                          ; 0x5129
    mov ax, 0x21                     ; 0x512a
    push ax                          ; 0x512d
    mov ax, 0xf8                     ; 0x512e
    push ax                          ; 0x5131
    mov ax, 0x48                     ; 0x5132
    push ax                          ; 0x5135
    mov al, byte [bp - 0x000e]       ; 0x5136
    sub ah, ah                       ; 0x5139
    mov bx, ax                       ; 0x513b
    mov al, byte [bx + 0x6eb5]       ; 0x513d
    sub ah, ah                       ; 0x5141
    inc ax                           ; 0x5143
    push ax                          ; 0x5144
    shl bx, 1                        ; 0x5145
    mov ax, bx                       ; 0x5147
    add ax, word [bp - 0x0004]       ; 0x5149
    mov bx, ax                       ; 0x514c
    mov al, byte [bx + 0x6e6c]       ; 0x514e
    sub ah, ah                       ; 0x5152
    inc ax                           ; 0x5154
    push ax                          ; 0x5155
    mov ax, 3                        ; 0x5156
    push ax                          ; 0x5159
    call ds_dispatch_efd1            ; 0x515a
    add sp, byte 0x16                ; 0x515d
@..api_idx_000e.l8:
    ret                              ; 0x5160
api_idx_000c_3:
    mov ax, 0xfff4                   ; 0x5161
    call ds_dispatch_f40b            ; 0x5164
    mov word [data_905e], 5          ; 0x5167
    mov word [data_830a], 5          ; 0x516d
    mov word [data_9436], 0x14       ; 0x5173
    mov word [data_9438], 0          ; 0x5179
    mov word [data_943a], 0          ; 0x517f
    mov word [data_9704], 0xffff     ; 0x5185
    mov word [bp - 0x0004], 0        ; 0x518b
    mov word [bp - 0x0002], 0        ; 0x5190
    jmp short @..api_idx_000c_3.l2   ; 0x5195
@..api_idx_000c_3.l1:
    mov ax, 0                        ; 0x5197
    push ax                          ; 0x519a
    push word [bp - 0x0002]          ; 0x519b
    call api_idx_0046                ; 0x519e
    add sp, byte 4                   ; 0x51a1
    or word [bp - 0x0004], ax        ; 0x51a4
    inc word [bp - 0x0002]           ; 0x51a7
@..api_idx_000c_3.l2:
    mov ax, word [bp - 0x0002]       ; 0x51aa
    cmp ax, word [data_69c8]         ; 0x51ad
    jl short @..api_idx_000c_3.l1    ; 0x51b1
    cmp word [bp - 0x0004], byte 0   ; 0x51b3
    jne short @..api_idx_000c_3.l3   ; 0x51b7
    ret                              ; 0x51b9
@..api_idx_000c_3.l3:
    call ds_dispatch_c145            ; 0x51ba
    mov ax, 1                        ; 0x51bd
    push ax                          ; 0x51c0
    mov ax, data_0002                ; 0x51c1
    push ax                          ; 0x51c4
    call ds_dispatch_d61c            ; 0x51c5
    add sp, byte 4                   ; 0x51c8
    mov ax, data_0002                ; 0x51cb
    push ax                          ; 0x51ce
    mov ax, 3                        ; 0x51cf
    push ax                          ; 0x51d2
    call ds_dispatch_d61c            ; 0x51d3
    add sp, byte 4                   ; 0x51d6
    mov ax, 0                        ; 0x51d9
    push ax                          ; 0x51dc
    mov ax, data_0002                ; 0x51dd
    push ax                          ; 0x51e0
    mov ax, 0xc7                     ; 0x51e1
    push ax                          ; 0x51e4
    mov ax, 0x13f                    ; 0x51e5
    push ax                          ; 0x51e8
    mov ax, 0                        ; 0x51e9
    push ax                          ; 0x51ec
    push ax                          ; 0x51ed
    call ds_dispatch_e935            ; 0x51ee
    add sp, byte 0x0c                ; 0x51f1
    mov word [bp - 0x000a], dx       ; 0x51f4
    mov word [bp - 0x000c], ax       ; 0x51f7
    mov ax, 0                        ; 0x51fa
    push ax                          ; 0x51fd
    mov ax, 0x93f0                   ; 0x51fe
    push ax                          ; 0x5201
    call api_idx_0002                ; 0x5202
    add sp, byte 4                   ; 0x5205
    mov ax, 0                        ; 0x5208
    push ax                          ; 0x520b
    mov ax, data_0002                ; 0x520c
    push ax                          ; 0x520f
    mov ax, 0x67                     ; 0x5210
    push ax                          ; 0x5213
    mov ax, 0xa2                     ; 0x5214
    push ax                          ; 0x5217
    mov ax, 6                        ; 0x5218
    push ax                          ; 0x521b
    push ax                          ; 0x521c
    call ds_dispatch_e935            ; 0x521d
    add sp, byte 0x0c                ; 0x5220
    mov word [data_9418], dx         ; 0x5223
    mov word [data_9416], ax         ; 0x5227
    mov ax, 0                        ; 0x522a
    push ax                          ; 0x522d
    mov ax, data_0002                ; 0x522e
    push ax                          ; 0x5231
    mov ax, 0x16                     ; 0x5232
    push ax                          ; 0x5235
    mov ax, 0x136                    ; 0x5236
    push ax                          ; 0x5239
    mov ax, 6                        ; 0x523a
    push ax                          ; 0x523d
    mov ax, 0xe4                     ; 0x523e
    push ax                          ; 0x5241
    call ds_dispatch_e935            ; 0x5242
    add sp, byte 0x0c                ; 0x5245
    mov word [data_941c], dx         ; 0x5248
    mov word [data_941a], ax         ; 0x524c
    mov ax, 0                        ; 0x524f
    push ax                          ; 0x5252
    mov ax, data_0002                ; 0x5253
    push ax                          ; 0x5256
    mov ax, 0xbb                     ; 0x5257
    push ax                          ; 0x525a
    mov ax, 0xab                     ; 0x525b
    push ax                          ; 0x525e
    mov ax, 0x70                     ; 0x525f
    push ax                          ; 0x5262
    mov ax, 1                        ; 0x5263
    push ax                          ; 0x5266
    call ds_dispatch_e935            ; 0x5267
    add sp, byte 0x0c                ; 0x526a
    mov word [data_9420], dx         ; 0x526d
    mov word [data_941e], ax         ; 0x5271
    mov ax, 0                        ; 0x5274
    push ax                          ; 0x5277
    mov ax, data_0002                ; 0x5278
    push ax                          ; 0x527b
    mov ax, 0x23                     ; 0x527c
    push ax                          ; 0x527f
    mov ax, 0x13f                    ; 0x5280
    push ax                          ; 0x5283
    mov ax, 0x1e                     ; 0x5284
    push ax                          ; 0x5287
    mov ax, 0xdc                     ; 0x5288
    push ax                          ; 0x528b
    call ds_dispatch_e935            ; 0x528c
    add sp, byte 0x0c                ; 0x528f
    mov word [data_9424], dx         ; 0x5292
    mov word [data_9422], ax         ; 0x5296
    mov ax, 0                        ; 0x5299
    push ax                          ; 0x529c
    mov ax, data_0002                ; 0x529d
    push ax                          ; 0x52a0
    mov ax, 0x74                     ; 0x52a1
    push ax                          ; 0x52a4
    mov ax, 0x136                    ; 0x52a5
    push ax                          ; 0x52a8
    mov ax, 0x2e                     ; 0x52a9
    push ax                          ; 0x52ac
    mov ax, 0x114                    ; 0x52ad
    push ax                          ; 0x52b0
    call ds_dispatch_e935            ; 0x52b1
    add sp, byte 0x0c                ; 0x52b4
    mov word [data_9428], dx         ; 0x52b7
    mov word [data_9426], ax         ; 0x52bb
    mov ax, 0                        ; 0x52be
    push ax                          ; 0x52c1
    mov ax, data_0002                ; 0x52c2
    push ax                          ; 0x52c5
    mov ax, 0xbf                     ; 0x52c6
    push ax                          ; 0x52c9
    mov ax, 0x13f                    ; 0x52ca
    push ax                          ; 0x52cd
    mov ax, 0x7e                     ; 0x52ce
    push ax                          ; 0x52d1
    mov ax, 0xb8                     ; 0x52d2
    push ax                          ; 0x52d5
    call ds_dispatch_e935            ; 0x52d6
    add sp, byte 0x0c                ; 0x52d9
    mov word [data_942c], dx         ; 0x52dc
    mov word [data_942a], ax         ; 0x52e0
    mov ax, 0                        ; 0x52e3
    push ax                          ; 0x52e6
    mov ax, data_0002                ; 0x52e7
    push ax                          ; 0x52ea
    mov ax, 0x41                     ; 0x52eb
    push ax                          ; 0x52ee
    mov ax, 0x65                     ; 0x52ef
    push ax                          ; 0x52f2
    mov ax, 0x19                     ; 0x52f3
    push ax                          ; 0x52f6
    mov ax, 0x5a                     ; 0x52f7
    push ax                          ; 0x52fa
    call ds_dispatch_e935            ; 0x52fb
    add sp, byte 0x0c                ; 0x52fe
    mov word [data_9434], dx         ; 0x5301
    mov word [data_9432], ax         ; 0x5305
    mov ax, 0xf                      ; 0x5308
    push ax                          ; 0x530b
    mov ax, 0xb                      ; 0x530c
    push ax                          ; 0x530f
    call ds_dispatch_d61c            ; 0x5310
    add sp, byte 4                   ; 0x5313
    call ds_dispatch_d9a6            ; 0x5316
    mov word [data_8450], ax         ; 0x5319
    test ax, ax                      ; 0x531c
    je short @..api_idx_000c_3.l4    ; 0x531e
    mov ax, 0                        ; 0x5320
    push ax                          ; 0x5323
    push ax                          ; 0x5324
    call ds_dispatch_d7e7            ; 0x5325
    add sp, byte 4                   ; 0x5328
    mov ax, word [data_010c]         ; 0x532b
    mov word [data_844e], ax         ; 0x532e
    mov ax, 1                        ; 0x5331
    push ax                          ; 0x5334
    push word [data_844e]            ; 0x5335
    mov ax, 0                        ; 0x5339
    push ax                          ; 0x533c
    call ds_dispatch_d964            ; 0x533d
    add sp, byte 6                   ; 0x5340
    mov word [data_844c], ax         ; 0x5343
@..api_idx_000c_3.l4:
    mov word [data_9492], 0          ; 0x5346
    mov word [data_9490], 0          ; 0x534c
    mov word [data_948e], 0          ; 0x5352
    mov word [bp - 0x0002], 0        ; 0x5358
    jmp short @..api_idx_000c_3.l6   ; 0x535d
@..api_idx_000c_3.l5:
    mov ax, 1                        ; 0x535f
    push ax                          ; 0x5362
    push word [bp - 0x0002]          ; 0x5363
    call api_idx_0046                ; 0x5366
    add sp, byte 4                   ; 0x5369
    inc word [bp - 0x0002]           ; 0x536c
@..api_idx_000c_3.l6:
    mov ax, word [bp - 0x0002]       ; 0x536f
    cmp ax, word [data_69c8]         ; 0x5372
    jl short @..api_idx_000c_3.l5    ; 0x5376
    cmp word [data_8450], byte 0     ; 0x5378
    je short @..api_idx_000c_3.l7    ; 0x537d
    push word [data_844c]            ; 0x537f
    push word [data_844e]            ; 0x5383
    call ds_dispatch_d91b            ; 0x5387
    add sp, byte 4                   ; 0x538a
    mov ax, 0                        ; 0x538d
    push ax                          ; 0x5390
    call ds_dispatch_d907            ; 0x5391
    pop cx                           ; 0x5394
@..api_idx_000c_3.l7:
    mov ax, 0xf                      ; 0x5395
    push ax                          ; 0x5398
    call ds_dispatch_c12a            ; 0x5399
    pop cx                           ; 0x539c
    mov ax, 0                        ; 0x539d
    push ax                          ; 0x53a0
    mov ax, 1                        ; 0x53a1
    push ax                          ; 0x53a4
    push word [data_9434]            ; 0x53a5
    push word [data_9432]            ; 0x53a9
    call ds_dispatch_e942            ; 0x53ad
    add sp, byte 8                   ; 0x53b0
    mov ax, 0                        ; 0x53b3
    push ax                          ; 0x53b6
    mov ax, 1                        ; 0x53b7
    push ax                          ; 0x53ba
    push word [data_942c]            ; 0x53bb
    push word [data_942a]            ; 0x53bf
    call ds_dispatch_e942            ; 0x53c3
    add sp, byte 8                   ; 0x53c6
    mov ax, 0                        ; 0x53c9
    push ax                          ; 0x53cc
    mov ax, 1                        ; 0x53cd
    push ax                          ; 0x53d0
    push word [data_9428]            ; 0x53d1
    push word [data_9426]            ; 0x53d5
    call ds_dispatch_e942            ; 0x53d9
    add sp, byte 8                   ; 0x53dc
    mov ax, 0                        ; 0x53df
    push ax                          ; 0x53e2
    mov ax, 1                        ; 0x53e3
    push ax                          ; 0x53e6
    push word [data_9424]            ; 0x53e7
    push word [data_9422]            ; 0x53eb
    call ds_dispatch_e942            ; 0x53ef
    add sp, byte 8                   ; 0x53f2
    mov ax, 0                        ; 0x53f5
    push ax                          ; 0x53f8
    mov ax, 1                        ; 0x53f9
    push ax                          ; 0x53fc
    push word [data_9420]            ; 0x53fd
    push word [data_941e]            ; 0x5401
    call ds_dispatch_e942            ; 0x5405
    add sp, byte 8                   ; 0x5408
    mov ax, 0                        ; 0x540b
    push ax                          ; 0x540e
    mov ax, 1                        ; 0x540f
    push ax                          ; 0x5412
    push word [data_941c]            ; 0x5413
    push word [data_941a]            ; 0x5417
    call ds_dispatch_e942            ; 0x541b
    add sp, byte 8                   ; 0x541e
    mov ax, 0                        ; 0x5421
    push ax                          ; 0x5424
    mov ax, 1                        ; 0x5425
    push ax                          ; 0x5428
    push word [data_9418]            ; 0x5429
    push word [data_9416]            ; 0x542d
    call ds_dispatch_e942            ; 0x5431
    add sp, byte 8                   ; 0x5434
    mov ax, 0                        ; 0x5437
    push ax                          ; 0x543a
    mov ax, 1                        ; 0x543b
    push ax                          ; 0x543e
    push word [bp - 0x000a]          ; 0x543f
    push word [bp - 0x000c]          ; 0x5442
    call ds_dispatch_e942            ; 0x5445
    add sp, byte 8                   ; 0x5448
    mov ax, 1                        ; 0x544b
    push ax                          ; 0x544e
    call ds_dispatch_c12a            ; 0x544f
    pop cx                           ; 0x5452
    mov ax, data_0002                ; 0x5453
    push ax                          ; 0x5456
    call ds_dispatch_c12a            ; 0x5457
    pop cx                           ; 0x545a
    call api_idx_000e                ; 0x545b
    mov ax, 0xc7                     ; 0x545e
    push ax                          ; 0x5461
    mov ax, 0x13f                    ; 0x5462
    push ax                          ; 0x5465
    mov ax, 0                        ; 0x5466
    push ax                          ; 0x5469
    push ax                          ; 0x546a
    call ds_dispatch_e8da            ; 0x546b
    add sp, byte 8                   ; 0x546e
    ret                              ; 0x5471

    db 0x8f, 0x06, 0x06, 0x94, 0x59, 0x89, 0x26, 0x02, 0x94, 0x89, 0x2e, 0x04, 0x94, 0x89, 0x36, 0xfe
    db 0x93, 0x89, 0x3e, 0x00, 0x94, 0xfc, 0xbf, 0x08, 0x94, 0xb9, 0xac, 0x97, 0x2b, 0xcf, 0xd1, 0xe9
    db 0x74, 0x04, 0x2b, 0xc0, 0xf3, 0xab, 0xe8, 0x73, 0xab, 0x8b, 0x2e, 0x04, 0x94, 0x8b, 0x26, 0x02
    db 0x94, 0x8b, 0x36, 0xfe, 0x93, 0x8b, 0x3e, 0x00, 0x94, 0x51, 0xff, 0x26, 0x06, 0x94, 0x25, 0x20
    db 0x00, 0x2a, 0x2a, 0x2a, 0x00
    db 'V.$$$', 0
    db 'ACBCBCCCCHCHBA', 0
    db '02222232112230', 0
    db 'ACCCCDCCCHHKDA', 0
    db '02222232123230', 0
    db 'ACCCCDCCCIFKEA', 0
    db '02222232121230', 0
    db 'ACHCHDCCCHFIDA', 0
    db '02323232111230', 0
    db 'ACKCHHGCCIECBA', 0
    db '02322322121220', 0
    db 'ACBCCDECCEEEGA', 0
    db '02121212111330', 0
    db 'ACICIBHCCFKFFA', 0
    db '02323112113330', 0
    db 'ACECCEGCCIFKFA', 0
    db '02222222122220', 0
    db 'ACKCGDHCCFKIDA', 0
    db '02322212112320', 0
    db 'ACHCHHGCCCECHA', 0
    db '02322322112230', 0
    db '1111111110', 0
    db '11100000', 0
    db '000000', 0
    db '1111000000', 0
    db '1000111100', 0
    db '11101000', 0
    db '000000', 0
    db '1111000010', 0
    db '0001101010', 0
    db '11101000', 0
    db '000000', 0
    db '1111101000', 0
    db '1111111110', 0
    db '11101111', 0
    db '000000', 0
    db '1111000000', 0
    db '1111111110', 0
    db '11100111', 0
    db '000000', 0
    db '1111010000', 0
    db '1001110000', 0
    db '11100000', 0
    db '000000', 0
    db '1111010000', 0
    db '1111111110', 0
    db '11111111', 0
    db '000000', 0
    db '1111000010', 0
    db '1001111000', 0
    db '11101000', 0
    db '000000', 0
    db '1111000100', 0
    db '1111111110', 0
    db '11101000', 0
    db '000000', 0
    db '1111001000', 0
    db '0001101010', 0
    db '11101000', 0
    db '000000', 0
    db '1111101010', 0
    db '1111111110', 0
    db '11101000', 0
    db '000000', 0
    db '1111101000', 0
    db '1111111110', 0
    db '11101000', 0
    db '000000', 0
    db '1111000011', 0
    db '1001111101', 0
    db '11101001', 0
    db '000000', 0
    db '1111000101', 0
    db '1111111111', 0
    db '11100111', 0
    db '000000', 0
    db '1111010001', 0
    db 0x25, 0x20, 0x28, 0x00, 0x29, 0x00, 0x2f
    times 4 db 0
    db 'PCVWSCRN.VGA', 0
    times 11 db 0

