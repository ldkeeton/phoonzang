%include "structs/structs.inc"
%include "structs/loc_600d.inc"
org 0
bits 16
%include "labels/vpcmk_foreign_labels.inc"

    ; header (8 bytes)
    db 0xf2, 0x00, 0x55, 0x50, 0x23, 0x70, 0x98, 0x90

data_0002 equ 0x0002
data_0038 equ 0x0038
data_003c equ 0x003c
data_0040 equ 0x0040
data_0042 equ 0x0042
data_0044 equ 0x0044
data_010e equ 0x010e
data_0e32 equ 0x0e32
loc_23b2 equ 0x23b2
loc_23d0 equ 0x23d0
loc_23ee equ 0x23ee
loc_240c equ 0x240c
loc_241c equ 0x241c
loc_2429 equ 0x2429
loc_243a equ 0x243a
loc_2446 equ 0x2446
loc_2458 equ 0x2458
loc_2463 equ 0x2463
loc_2476 equ 0x2476
loc_2494 equ 0x2494
loc_4d4a equ 0x4d4a
loc_52dc equ 0x52dc
data_59fc equ 0x59fc
data_5b3e equ 0x5b3e
loc_5c67 equ 0x5c67
loc_5c78 equ 0x5c78
data_5e2a equ 0x5e2a
loc_600d equ 0x600d
data_830a equ 0x830a
data_844c equ 0x844c
data_844e equ 0x844e
data_8450 equ 0x8450
data_904e equ 0x904e
data_9050 equ 0x9050
data_9052 equ 0x9052
data_905a equ 0x905a
data_906e equ 0x906e
data_9070 equ 0x9070
data_9072 equ 0x9072
data_9074 equ 0x9074
data_908a equ 0x908a
data_908c equ 0x908c
data_908e equ 0x908e
data_9090 equ 0x9090
data_9092 equ 0x9092
data_9094 equ 0x9094
data_9524 equ 0x9524
data_9526 equ 0x9526
data_9528 equ 0x9528
data_952a equ 0x952a
data_952c equ 0x952c
data_952e equ 0x952e
data_9530 equ 0x9530
data_9532 equ 0x9532
data_9534 equ 0x9534
data_9536 equ 0x9536
data_9538 equ 0x9538
data_953a equ 0x953a
data_953c equ 0x953c
data_953e equ 0x953e
data_9540 equ 0x9540
data_9542 equ 0x9542
data_9594 equ 0x9594
data_95aa equ 0x95aa
data_95ac equ 0x95ac
data_95ae equ 0x95ae
data_95e8 equ 0x95e8
data_960c equ 0x960c
data_976c equ 0x976c
data_978a equ 0x978a
data_a0f9 equ 0xa0f9
data_a10d equ 0xa10d
data_a16f equ 0xa16f
data_a195 equ 0xa195
data_a1fa equ 0xa1fa
data_a2d1 equ 0xa2d1

    db 0x8c, 0x04, 0x68, 0x02, 0xd3, 0xbf
loc_000e:
    mov ax, 0                        ; 0x000e
    call ds_dispatch_f40b            ; 0x0011
    call api_idx_002c_2              ; 0x0014
    mov word [data_830a], 4          ; 0x0017
    mov ax, 0                        ; 0x001d
    ret                              ; 0x0020
api_idx_0002:
    mov ax, 0xfffe                   ; 0x0021
    call ds_dispatch_f40b            ; 0x0024
    mov ax, 0                        ; 0x0027
    push ax                          ; 0x002a
    call ds_dispatch_ef14            ; 0x002b
    pop cx                           ; 0x002e
    mov ax, 0                        ; 0x002f
    push ax                          ; 0x0032
    mov ax, 1                        ; 0x0033
    push ax                          ; 0x0036
    push word [bp + 0x4]             ; 0x0037
    call ds_dispatch_d161            ; 0x003a
    add sp, byte 4                   ; 0x003d
    push ax                          ; 0x0040
    call ds_dispatch_f909            ; 0x0041
    add sp, byte 4                   ; 0x0044
    mov word [bp - 0x0002], ax       ; 0x0047
    cmp ax, strict word 0xffff       ; 0x004a
    jne short @..api_idx_0002.l1     ; 0x004d
    mov ax, 0x1c                     ; 0x004f
    push ax                          ; 0x0052
    call ds_dispatch_b171            ; 0x0053
    pop cx                           ; 0x0056
@..api_idx_0002.l1:
    mov ax, 0                        ; 0x0057
    push ax                          ; 0x005a
    push word [bp - 0x0002]          ; 0x005b
    call ds_dispatch_efde            ; 0x005e
    add sp, byte 4                   ; 0x0061
    push word [bp - 0x0002]          ; 0x0064
    call ds_dispatch_fda5            ; 0x0067
    pop cx                           ; 0x006a
    cmp word [bp + 0x6], byte 0      ; 0x006b
    je short @..api_idx_0002.l2      ; 0x006f
    mov ax, 0xc7                     ; 0x0071
    push ax                          ; 0x0074
    mov ax, 0x13f                    ; 0x0075
    push ax                          ; 0x0078
    mov ax, 0                        ; 0x0079
    push ax                          ; 0x007c
    push ax                          ; 0x007d
    call ds_dispatch_e8da            ; 0x007e
    add sp, byte 8                   ; 0x0081
@..api_idx_0002.l2:
    ret                              ; 0x0084
api_idx_0002_2:
    mov ax, 0xfffe                   ; 0x0085
    call ds_dispatch_f40b            ; 0x0088
    mov ax, 0                        ; 0x008b
    push ax                          ; 0x008e
    call ds_dispatch_ef14            ; 0x008f
    pop cx                           ; 0x0092
    mov ax, data_0002                ; 0x0093
    push ax                          ; 0x0096
    mov ax, 0                        ; 0x0097
    push ax                          ; 0x009a
    mov ax, 0x9098                   ; 0x009b
    push ax                          ; 0x009e
    call ds_dispatch_d161            ; 0x009f
    add sp, byte 4                   ; 0x00a2
    push ax                          ; 0x00a5
    call ds_dispatch_f909            ; 0x00a6
    add sp, byte 4                   ; 0x00a9
    mov word [bp - 0x0002], ax       ; 0x00ac
    mov ax, 0                        ; 0x00af
    push ax                          ; 0x00b2
    mov ax, word [bp + 0x6]          ; 0x00b3
    imul word [data_906e]            ; 0x00b6
    cwd                              ; 0x00ba
    add ax, word [data_9072]         ; 0x00bb
    adc dx, word [data_9074]         ; 0x00bf
    push dx                          ; 0x00c3
    push ax                          ; 0x00c4
    push word [bp - 0x0002]          ; 0x00c5
    call ds_dispatch_fdbd            ; 0x00c8
    add sp, byte 8                   ; 0x00cb
    cmp word [bp + 0x8], byte 0      ; 0x00ce
    jne short @..api_idx_0002_2.l1   ; 0x00d2
    push word [data_906e]            ; 0x00d4
    push word [bp + 0x4]             ; 0x00d8
    push word [bp - 0x0002]          ; 0x00db
    call ds_dispatch_fd6f            ; 0x00de
    add sp, byte 6                   ; 0x00e1
    jmp short @..api_idx_0002_2.l2   ; 0x00e4
@..api_idx_0002_2.l1:
    cmp word [bp + 0x8], byte 1      ; 0x00e6
    jne short @..api_idx_0002_2.l2   ; 0x00ea
    push word [data_906e]            ; 0x00ec
    push word [bp + 0x4]             ; 0x00f0
    push word [bp - 0x0002]          ; 0x00f3
    call ds_dispatch_fd76            ; 0x00f6
    add sp, byte 6                   ; 0x00f9
@..api_idx_0002_2.l2:
    push word [bp - 0x0002]          ; 0x00fc
    call ds_dispatch_fda5            ; 0x00ff
    pop cx                           ; 0x0102
    ret                              ; 0x0103
api_idx_0008:
    mov ax, 0xfff8                   ; 0x0104
    call ds_dispatch_f40b            ; 0x0107
    push word [bp + 0xe]             ; 0x010a
    push word [bp + 0xc]             ; 0x010d
    call ds_dispatch_e823            ; 0x0110
    add sp, byte 4                   ; 0x0113
    push word [bp + 0x4]             ; 0x0116
    call ds_dispatch_fa90            ; 0x0119
    pop cx                           ; 0x011c
    mov word [bp - 0x0004], ax       ; 0x011d
    mov cx, 6                        ; 0x0120
    imul cx                          ; 0x0123
    add word [bp + 0x6], ax          ; 0x0125
@..api_idx_0008.l1:
    mov word [bp - 0x0006], 0        ; 0x0128
    mov word [bp - 0x0008], 0        ; 0x012d
@..api_idx_0008.l2:
    mov ax, 1                        ; 0x0132
    push ax                          ; 0x0135
    call ds_dispatch_ea50            ; 0x0136
    pop cx                           ; 0x0139
    test ax, ax                      ; 0x013a
    je short @..api_idx_0008.l3      ; 0x013c
    jmp near @..api_idx_0008.l7      ; 0x013e
@..api_idx_0008.l3:
    cmp word [bp - 0x0008], byte 0   ; 0x0141
    jne short @..api_idx_0008.l5     ; 0x0145
    push word [bp + 0xe]             ; 0x0147
    mov ax, word [bp + 0x8]          ; 0x014a
    add ax, strict word 5            ; 0x014d
    push ax                          ; 0x0150
    mov ax, word [bp + 0x6]          ; 0x0151
    add ax, strict word 5            ; 0x0154
    push ax                          ; 0x0157
    push word [bp + 0x8]             ; 0x0158
    push word [bp + 0x6]             ; 0x015b
    call ds_dispatch_e901            ; 0x015e
    add sp, byte 0x0a                ; 0x0161
    cmp word [bp - 0x0006], byte 0   ; 0x0164
    je short @..api_idx_0008.l4      ; 0x0168
    push word [bp + 0x8]             ; 0x016a
    push word [bp + 0x6]             ; 0x016d
    call ds_dispatch_e809            ; 0x0170
    add sp, byte 4                   ; 0x0173
    mov ax, 0                        ; 0x0176
    push ax                          ; 0x0179
    mov ax, 3                        ; 0x017a
    push ax                          ; 0x017d
    call ds_dispatch_e830            ; 0x017e
    add sp, byte 4                   ; 0x0181
@..api_idx_0008.l4:
    mov ax, word [bp + 0x8]          ; 0x0184
    add ax, strict word 5            ; 0x0187
    push ax                          ; 0x018a
    mov ax, word [bp + 0x6]          ; 0x018b
    add ax, strict word 5            ; 0x018e
    push ax                          ; 0x0191
    push word [bp + 0x8]             ; 0x0192
    push word [bp + 0x6]             ; 0x0195
    call ds_dispatch_e8da            ; 0x0198
    add sp, byte 8                   ; 0x019b
    mov ax, word [bp - 0x0006]       ; 0x019e
    inc ax                           ; 0x01a1
    mov cx, data_0002                ; 0x01a2
    cwd                              ; 0x01a5
    idiv cx                          ; 0x01a6
    mov word [bp - 0x0006], dx       ; 0x01a8
    mov word [bp - 0x0008], 0xa      ; 0x01ab
    jmp short @..api_idx_0008.l6     ; 0x01b0
@..api_idx_0008.l5:
    mov ax, 0xa                      ; 0x01b2
    push ax                          ; 0x01b5
    call ds_dispatch_e489            ; 0x01b6
    pop cx                           ; 0x01b9
    dec word [bp - 0x0008]           ; 0x01ba
@..api_idx_0008.l6:
    jmp near @..api_idx_0008.l2      ; 0x01bd
@..api_idx_0008.l7:
    mov ax, 1                        ; 0x01c0
    push ax                          ; 0x01c3
    call ds_dispatch_eb32            ; 0x01c4
    pop cx                           ; 0x01c7
    sub ah, ah                       ; 0x01c8
    mov word [bp - 0x0002], ax       ; 0x01ca
    push word [bp + 0xe]             ; 0x01cd
    mov ax, word [bp + 0x8]          ; 0x01d0
    add ax, strict word 5            ; 0x01d3
    push ax                          ; 0x01d6
    mov ax, word [bp + 0x6]          ; 0x01d7
    add ax, strict word 5            ; 0x01da
    push ax                          ; 0x01dd
    push word [bp + 0x8]             ; 0x01de
    push word [bp + 0x6]             ; 0x01e1
    call ds_dispatch_e901            ; 0x01e4
    add sp, byte 0x0a                ; 0x01e7
    mov ax, word [bp + 0x8]          ; 0x01ea
    add ax, strict word 5            ; 0x01ed
    push ax                          ; 0x01f0
    mov ax, word [bp + 0x6]          ; 0x01f1
    add ax, strict word 5            ; 0x01f4
    push ax                          ; 0x01f7
    push word [bp + 0x8]             ; 0x01f8
    push word [bp + 0x6]             ; 0x01fb
    call ds_dispatch_e8da            ; 0x01fe
    add sp, byte 8                   ; 0x0201
    cmp word [bp - 0x0002], byte 0x0d ; 0x0204
    jne short @..api_idx_0008.l8     ; 0x0208
    mov bx, word [bp + 0x4]          ; 0x020a
    mov si, word [bp - 0x0004]       ; 0x020d
    mov byte [bx + si], 0            ; 0x0210
    call ds_dispatch_ec17            ; 0x0213
    ret                              ; 0x0216
@..api_idx_0008.l8:
    cmp word [bp - 0x0002], byte 8   ; 0x0217
    jne short @..api_idx_0008.l11    ; 0x021b
    cmp word [bp - 0x0004], byte 0   ; 0x021d
    jle short @..api_idx_0008.l9     ; 0x0221
    dec word [bp - 0x0004]           ; 0x0223
    add word [bp + 0x6], byte 0xfa   ; 0x0226
    jmp short @..api_idx_0008.l10    ; 0x022a
@..api_idx_0008.l9:
    mov ax, 0                        ; 0x022c
    push ax                          ; 0x022f
    call ds_dispatch_b7e0            ; 0x0230
    pop cx                           ; 0x0233
@..api_idx_0008.l10:
    jmp near @..api_idx_0008.l15     ; 0x0234
@..api_idx_0008.l11:
    mov ax, word [bp - 0x0004]       ; 0x0237
    cmp ax, word [bp + 0xa]          ; 0x023a
    jl short @..api_idx_0008.l12     ; 0x023d
    mov ax, 0                        ; 0x023f
    push ax                          ; 0x0242
    call ds_dispatch_b7e0            ; 0x0243
    pop cx                           ; 0x0246
    jmp near @..api_idx_0008.l15     ; 0x0247
@..api_idx_0008.l12:
    cmp word [bp + 0x10], byte 0     ; 0x024a
    jne short @..api_idx_0008.l13    ; 0x024e
    mov ax, word [bp - 0x0002]       ; 0x0250
    cmp ax, strict word 0x20         ; 0x0253
    jl short @..api_idx_0008.l13     ; 0x0256
    cmp ax, strict word 0x7f         ; 0x0258
    jle short @..api_idx_0008.l14    ; 0x025b
@..api_idx_0008.l13:
    cmp word [bp + 0x10], byte 1     ; 0x025d
    jne short @..api_idx_0008.l15    ; 0x0261
    mov ax, word [bp - 0x0002]       ; 0x0263
    cmp ax, strict word 0x30         ; 0x0266
    jl short @..api_idx_0008.l15     ; 0x0269
    cmp ax, strict word 0x39         ; 0x026b
    jg short @..api_idx_0008.l15     ; 0x026e
@..api_idx_0008.l14:
    mov al, byte [bp - 0x0002]       ; 0x0270
    mov bx, word [bp + 0x4]          ; 0x0273
    mov si, word [bp - 0x0004]       ; 0x0276
    mov byte [bx + si], al           ; 0x0279
    inc word [bp - 0x0004]           ; 0x027b
    push word [bp + 0x8]             ; 0x027e
    push word [bp + 0x6]             ; 0x0281
    call ds_dispatch_e809            ; 0x0284
    add sp, byte 4                   ; 0x0287
    mov ax, 0                        ; 0x028a
    push ax                          ; 0x028d
    mov al, byte [bp - 0x0002]       ; 0x028e
    sub ah, ah                       ; 0x0291
    push ax                          ; 0x0293
    call ds_dispatch_e830            ; 0x0294
    add sp, byte 4                   ; 0x0297
    mov ax, word [bp + 0x8]          ; 0x029a
    add ax, strict word 5            ; 0x029d
    push ax                          ; 0x02a0
    mov ax, word [bp + 0x6]          ; 0x02a1
    add ax, strict word 5            ; 0x02a4
    push ax                          ; 0x02a7
    push word [bp + 0x8]             ; 0x02a8
    push word [bp + 0x6]             ; 0x02ab
    call ds_dispatch_e8da            ; 0x02ae
    add sp, byte 8                   ; 0x02b1
    add word [bp + 0x6], byte 6      ; 0x02b4
@..api_idx_0008.l15:
    jmp near @..api_idx_0008.l1      ; 0x02b8
    db 0xc3
api_idx_0008_2:
    mov ax, 0xfff8                   ; 0x02bc
    call ds_dispatch_f40b            ; 0x02bf
    mov ax, word [bp + 0x6]          ; 0x02c2
    cwd                              ; 0x02c5
    idiv word [bp + 0x12]            ; 0x02c6
    imul word [bp + 0xe]             ; 0x02c9
    mov word [bp - 0x0002], ax       ; 0x02cc
    mov ax, word [bp + 0x6]          ; 0x02cf
    cwd                              ; 0x02d2
    idiv word [bp + 0x12]            ; 0x02d3
    mov ax, dx                       ; 0x02d6
    imul word [bp + 0x10]            ; 0x02d8
    mov word [bp - 0x0004], ax       ; 0x02db
    mov ax, word [bp + 0xa]          ; 0x02de
    add ax, word [bp - 0x0004]       ; 0x02e1
    add ax, strict word 9            ; 0x02e4
    push ax                          ; 0x02e7
    mov ax, 6                        ; 0x02e8
    imul word [bp + 0xc]             ; 0x02eb
    add ax, word [bp + 0x8]          ; 0x02ee
    add ax, word [bp - 0x0002]       ; 0x02f1
    inc ax                           ; 0x02f4
    push ax                          ; 0x02f5
    mov ax, word [bp + 0xa]          ; 0x02f6
    add ax, word [bp - 0x0004]       ; 0x02f9
    dec ax                           ; 0x02fc
    push ax                          ; 0x02fd
    mov ax, word [bp + 0x8]          ; 0x02fe
    add ax, word [bp - 0x0002]       ; 0x0301
    dec ax                           ; 0x0304
    push ax                          ; 0x0305
    call ds_dispatch_e928            ; 0x0306
    add sp, byte 8                   ; 0x0309
    mov word [bp - 0x0006], dx       ; 0x030c
    mov word [bp - 0x0008], ax       ; 0x030f
    mov ax, 0                        ; 0x0312
    push ax                          ; 0x0315
    mov ax, word [bp + 0xa]          ; 0x0316
    add ax, word [bp - 0x0004]       ; 0x0319
    add ax, strict word 8            ; 0x031c
    push ax                          ; 0x031f
    mov ax, 6                        ; 0x0320
    imul word [bp + 0xc]             ; 0x0323
    add ax, word [bp + 0x8]          ; 0x0326
    add ax, word [bp - 0x0002]       ; 0x0329
    push ax                          ; 0x032c
    mov ax, word [bp + 0xa]          ; 0x032d
    add ax, word [bp - 0x0004]       ; 0x0330
    push ax                          ; 0x0333
    mov ax, word [bp + 0x8]          ; 0x0334
    add ax, word [bp - 0x0002]       ; 0x0337
    push ax                          ; 0x033a
    call ds_dispatch_bce3            ; 0x033b
    add sp, byte 0x0a                ; 0x033e
    mov ax, 0xc0                     ; 0x0341
    push ax                          ; 0x0344
    push word [bp + 0x14]            ; 0x0345
    call ds_dispatch_e823            ; 0x0348
    add sp, byte 4                   ; 0x034b
    mov ax, word [bp + 0xa]          ; 0x034e
    add ax, word [bp - 0x0004]       ; 0x0351
    inc ax                           ; 0x0354
    inc ax                           ; 0x0355
    push ax                          ; 0x0356
    push word [bp + 0x4]             ; 0x0357
    call ds_dispatch_fa90            ; 0x035a
    pop cx                           ; 0x035d
    mov cx, ax                       ; 0x035e
    mov ax, word [bp + 0xc]          ; 0x0360
    sub ax, cx                       ; 0x0363
    mov cx, 6                        ; 0x0365
    imul cx                          ; 0x0368
    mov cx, data_0002                ; 0x036a
    cwd                              ; 0x036d
    idiv cx                          ; 0x036e
    add ax, word [bp + 0x8]          ; 0x0370
    add ax, word [bp - 0x0002]       ; 0x0373
    inc ax                           ; 0x0376
    push ax                          ; 0x0377
    call ds_dispatch_e809            ; 0x0378
    add sp, byte 4                   ; 0x037b
    mov ax, 0                        ; 0x037e
    push ax                          ; 0x0381
    push word [bp + 0x4]             ; 0x0382
    call ds_dispatch_e84e            ; 0x0385
    add sp, byte 4                   ; 0x0388
    mov ax, word [bp + 0xa]          ; 0x038b
    add ax, word [bp - 0x0004]       ; 0x038e
    add ax, strict word 9            ; 0x0391
    push ax                          ; 0x0394
    mov ax, 6                        ; 0x0395
    imul word [bp + 0xc]             ; 0x0398
    add ax, word [bp + 0x8]          ; 0x039b
    add ax, word [bp - 0x0002]       ; 0x039e
    inc ax                           ; 0x03a1
    push ax                          ; 0x03a2
    mov ax, word [bp + 0xa]          ; 0x03a3
    add ax, word [bp - 0x0004]       ; 0x03a6
    dec ax                           ; 0x03a9
    push ax                          ; 0x03aa
    mov ax, word [bp + 0x8]          ; 0x03ab
    add ax, word [bp - 0x0002]       ; 0x03ae
    dec ax                           ; 0x03b1
    push ax                          ; 0x03b2
    call ds_dispatch_e8da            ; 0x03b3
    add sp, byte 8                   ; 0x03b6
    mov ax, 1                        ; 0x03b9
    push ax                          ; 0x03bc
    push word [bp - 0x0006]          ; 0x03bd
    push word [bp - 0x0008]          ; 0x03c0
    call ds_dispatch_e94f            ; 0x03c3
    add sp, byte 6                   ; 0x03c6
    ret                              ; 0x03c9
loc_03ca:
    mov ax, 0                        ; 0x03ca
    call ds_dispatch_f40b            ; 0x03cd
    push word [bp + 0xc]             ; 0x03d0
    mov ax, word [bp + 0x6]          ; 0x03d3
    dec ax                           ; 0x03d6
    push ax                          ; 0x03d7
    mov ax, word [bp + 0x8]          ; 0x03d8
    inc ax                           ; 0x03db
    push ax                          ; 0x03dc
    mov ax, word [bp + 0x6]          ; 0x03dd
    dec ax                           ; 0x03e0
    push ax                          ; 0x03e1
    mov ax, word [bp + 0x4]          ; 0x03e2
    dec ax                           ; 0x03e5
    push ax                          ; 0x03e6
    call ds_dispatch_e901            ; 0x03e7
    add sp, byte 0x0a                ; 0x03ea
    push word [bp + 0xc]             ; 0x03ed
    mov ax, word [bp + 0xa]          ; 0x03f0
    inc ax                           ; 0x03f3
    push ax                          ; 0x03f4
    mov ax, word [bp + 0x8]          ; 0x03f5
    inc ax                           ; 0x03f8
    push ax                          ; 0x03f9
    mov ax, word [bp + 0x6]          ; 0x03fa
    dec ax                           ; 0x03fd
    push ax                          ; 0x03fe
    mov ax, word [bp + 0x8]          ; 0x03ff
    inc ax                           ; 0x0402
    push ax                          ; 0x0403
    call ds_dispatch_e901            ; 0x0404
    add sp, byte 0x0a                ; 0x0407
    push word [bp + 0xc]             ; 0x040a
    mov ax, word [bp + 0xa]          ; 0x040d
    inc ax                           ; 0x0410
    push ax                          ; 0x0411
    mov ax, word [bp + 0x8]          ; 0x0412
    inc ax                           ; 0x0415
    push ax                          ; 0x0416
    mov ax, word [bp + 0xa]          ; 0x0417
    inc ax                           ; 0x041a
    push ax                          ; 0x041b
    mov ax, word [bp + 0x4]          ; 0x041c
    dec ax                           ; 0x041f
    push ax                          ; 0x0420
    call ds_dispatch_e901            ; 0x0421
    add sp, byte 0x0a                ; 0x0424
    push word [bp + 0xc]             ; 0x0427
    mov ax, word [bp + 0xa]          ; 0x042a
    inc ax                           ; 0x042d
    push ax                          ; 0x042e
    mov ax, word [bp + 0x4]          ; 0x042f
    dec ax                           ; 0x0432
    push ax                          ; 0x0433
    mov ax, word [bp + 0x6]          ; 0x0434
    dec ax                           ; 0x0437
    push ax                          ; 0x0438
    mov ax, word [bp + 0x4]          ; 0x0439
    dec ax                           ; 0x043c
    push ax                          ; 0x043d
    call ds_dispatch_e901            ; 0x043e
    add sp, byte 0x0a                ; 0x0441
    ret                              ; 0x0444
math_loc_0445:
    mov ax, 0xfe56                   ; 0x0445
    call ds_dispatch_f40b            ; 0x0448
    mov ax, word [bp + 0x14]         ; 0x044b
    dec ax                           ; 0x044e
    cwd                              ; 0x044f
    idiv word [bp + 0x12]            ; 0x0450
    inc ax                           ; 0x0453
    imul word [bp + 0xe]             ; 0x0454
    add ax, word [bp + 0x8]          ; 0x0457
    push ax                          ; 0x045a
    mov ax, 6                        ; 0x045b
    imul word [bp + 0xc]             ; 0x045e
    mov dx, ax                       ; 0x0461
    mov cx, word [bp + 0xe]          ; 0x0463
    sub cx, ax                       ; 0x0466
    pop ax                           ; 0x0468
    sub ax, cx                       ; 0x0469
    mov word [bp - 0x0006], ax       ; 0x046b
    mov ax, word [bp + 0x10]         ; 0x046e
    imul word [bp + 0x12]            ; 0x0471
    add ax, word [bp + 0xa]          ; 0x0474
    mov cx, word [bp + 0x10]         ; 0x0477
    add cx, byte 0xf7                ; 0x047a
    sub ax, cx                       ; 0x047d
    mov word [bp - 0x0008], ax       ; 0x047f
    cmp word [bp + 0x6], byte 0      ; 0x0482
    jne short @..math_loc_0445.l1    ; 0x0486
    jmp near @..math_loc_0445.l2     ; 0x0488
@..math_loc_0445.l1:
    mov ax, 0x90a3                   ; 0x048b
    push ax                          ; 0x048e
    mov ax, word [bp - 0x0008]       ; 0x048f
    add ax, strict word 6            ; 0x0492
    push ax                          ; 0x0495
    mov ax, word [bp - 0x0006]       ; 0x0496
    add ax, strict word 6            ; 0x0499
    push ax                          ; 0x049c
    mov ax, word [bp + 0xa]          ; 0x049d
    add ax, strict word 0xffeb       ; 0x04a0
    push ax                          ; 0x04a3
    mov ax, word [bp + 0x8]          ; 0x04a4
    add ax, strict word 0xfffa       ; 0x04a7
    push ax                          ; 0x04aa
    call ds_dispatch_c283            ; 0x04ab
    add sp, byte 0x0a                ; 0x04ae
    mov word [bp - 0x01a8], ax       ; 0x04b1
    mov ax, word [bp - 0x0008]       ; 0x04b5
    add ax, strict word 5            ; 0x04b8
    push ax                          ; 0x04bb
    mov ax, word [bp - 0x0006]       ; 0x04bc
    add ax, strict word 5            ; 0x04bf
    push ax                          ; 0x04c2
    mov ax, word [bp + 0xa]          ; 0x04c3
    add ax, strict word 0xffec       ; 0x04c6
    push ax                          ; 0x04c9
    mov ax, word [bp + 0x8]          ; 0x04ca
    add ax, strict word 0xfffb       ; 0x04cd
    push ax                          ; 0x04d0
    call ds_dispatch_bc9a            ; 0x04d1
    add sp, byte 8                   ; 0x04d4
    lea ax, word [bp - 0x01a6]       ; 0x04d7
    push ax                          ; 0x04db
    push word [bp + 0x6]             ; 0x04dc
    call ds_dispatch_b53b            ; 0x04df
    add sp, byte 4                   ; 0x04e2
    mov ax, 0xc2                     ; 0x04e5
    push ax                          ; 0x04e8
    mov ax, 1                        ; 0x04e9
    push ax                          ; 0x04ec
    call ds_dispatch_e823            ; 0x04ed
    add sp, byte 4                   ; 0x04f0
    mov ax, word [bp + 0xa]          ; 0x04f3
    add ax, strict word 0xfff3       ; 0x04f6
    push ax                          ; 0x04f9
    lea ax, word [bp - 0x01a6]       ; 0x04fa
    push ax                          ; 0x04fe
    call ds_dispatch_fa90            ; 0x04ff
    pop cx                           ; 0x0502
    mov cx, 6                        ; 0x0503
    imul cx                          ; 0x0506
    mov cx, data_0002                ; 0x0508
    cwd                              ; 0x050b
    idiv cx                          ; 0x050c
    mov cx, ax                       ; 0x050e
    mov ax, 0xa0                     ; 0x0510
    sub ax, cx                       ; 0x0513
    push ax                          ; 0x0515
    call ds_dispatch_e809            ; 0x0516
    add sp, byte 4                   ; 0x0519
    mov ax, 0                        ; 0x051c
    push ax                          ; 0x051f
    lea ax, word [bp - 0x01a6]       ; 0x0520
    push ax                          ; 0x0524
    call ds_dispatch_e84e            ; 0x0525
    add sp, byte 4                   ; 0x0528
    jmp short @..math_loc_0445.l3    ; 0x052b
@..math_loc_0445.l2:
    mov ax, 0x90a9                   ; 0x052d
    push ax                          ; 0x0530
    mov ax, word [bp - 0x0008]       ; 0x0531
    inc ax                           ; 0x0534
    push ax                          ; 0x0535
    mov ax, word [bp - 0x0006]       ; 0x0536
    inc ax                           ; 0x0539
    push ax                          ; 0x053a
    mov ax, word [bp + 0xa]          ; 0x053b
    dec ax                           ; 0x053e
    push ax                          ; 0x053f
    mov ax, word [bp + 0x8]          ; 0x0540
    dec ax                           ; 0x0543
    push ax                          ; 0x0544
    call ds_dispatch_c283            ; 0x0545
    add sp, byte 0x0a                ; 0x0548
    mov word [bp - 0x01a8], ax       ; 0x054b
@..math_loc_0445.l3:
    mov word [bp - 0x0002], 0        ; 0x054f
    mov word [bp - 0x0004], 0        ; 0x0554
@..math_loc_0445.l4:
    mov ax, word [bp - 0x0004]       ; 0x0559
    shl ax, 1                        ; 0x055c
    mov si, ax                       ; 0x055e
    mov bx, word [bp + 0x1c]         ; 0x0560
    cmp word [bx + si], byte 0xff    ; 0x0563
    jne short @..math_loc_0445.l5    ; 0x0566
    jmp near @..math_loc_0445.l9     ; 0x0568
@..math_loc_0445.l5:
    cmp word [bx + si], byte 1       ; 0x056b
    je short @..math_loc_0445.l6     ; 0x056e
    jmp near @..math_loc_0445.l8     ; 0x0570
@..math_loc_0445.l6:
    mov ax, 0x14                     ; 0x0573
    imul word [bp - 0x0002]          ; 0x0576
    lea cx, word [bp - 0x0156]       ; 0x0579
    add ax, cx                       ; 0x057d
    push ax                          ; 0x057f
    mov ax, word [bp + 0x4]          ; 0x0580
    add ax, word [bp - 0x0004]       ; 0x0583
    push ax                          ; 0x0586
    call ds_dispatch_b53b            ; 0x0587
    add sp, byte 4                   ; 0x058a
    mov ax, word [bp - 0x0002]       ; 0x058d
    cwd                              ; 0x0590
    idiv word [bp + 0x12]            ; 0x0591
    imul word [bp + 0xe]             ; 0x0594
    mov word [bp - 0x000a], ax       ; 0x0597
    mov ax, word [bp - 0x0002]       ; 0x059a
    cwd                              ; 0x059d
    idiv word [bp + 0x12]            ; 0x059e
    mov ax, dx                       ; 0x05a1
    imul word [bp + 0x10]            ; 0x05a3
    mov word [bp - 0x000c], ax       ; 0x05a6
    mov ax, 0                        ; 0x05a9
    push ax                          ; 0x05ac
    mov ax, word [bp + 0xa]          ; 0x05ad
    add ax, word [bp - 0x000c]       ; 0x05b0
    add ax, strict word 8            ; 0x05b3
    push ax                          ; 0x05b6
    mov ax, 6                        ; 0x05b7
    imul word [bp + 0xc]             ; 0x05ba
    add ax, word [bp + 0x8]          ; 0x05bd
    add ax, word [bp - 0x000a]       ; 0x05c0
    push ax                          ; 0x05c3
    mov ax, word [bp + 0xa]          ; 0x05c4
    add ax, word [bp - 0x000c]       ; 0x05c7
    push ax                          ; 0x05ca
    mov ax, word [bp + 0x8]          ; 0x05cb
    add ax, word [bp - 0x000a]       ; 0x05ce
    push ax                          ; 0x05d1
    call ds_dispatch_bce3            ; 0x05d2
    add sp, byte 0x0a                ; 0x05d5
    mov ax, 0xc0                     ; 0x05d8
    push ax                          ; 0x05db
    mov ax, word [bp + 0x16]         ; 0x05dc
    mov cx, word [bp - 0x0004]       ; 0x05df
    cmp cx, word [bp + 0x18]         ; 0x05e2
    jne short @..math_loc_0445.l7    ; 0x05e5
    mov ax, 0x1a                     ; 0x05e7
@..math_loc_0445.l7:
    push ax                          ; 0x05ea
    call ds_dispatch_e823            ; 0x05eb
    add sp, byte 4                   ; 0x05ee
    mov ax, word [bp + 0xa]          ; 0x05f1
    add ax, word [bp - 0x000c]       ; 0x05f4
    inc ax                           ; 0x05f7
    inc ax                           ; 0x05f8
    push ax                          ; 0x05f9
    mov ax, 0x14                     ; 0x05fa
    imul word [bp - 0x0002]          ; 0x05fd
    lea cx, word [bp - 0x0156]       ; 0x0600
    add ax, cx                       ; 0x0604
    push ax                          ; 0x0606
    call ds_dispatch_fa90            ; 0x0607
    pop cx                           ; 0x060a
    mov cx, ax                       ; 0x060b
    mov ax, word [bp + 0xc]          ; 0x060d
    sub ax, cx                       ; 0x0610
    mov cx, 6                        ; 0x0612
    imul cx                          ; 0x0615
    mov cx, data_0002                ; 0x0617
    cwd                              ; 0x061a
    idiv cx                          ; 0x061b
    add ax, word [bp + 0x8]          ; 0x061d
    add ax, word [bp - 0x000a]       ; 0x0620
    inc ax                           ; 0x0623
    push ax                          ; 0x0624
    call ds_dispatch_e809            ; 0x0625
    add sp, byte 4                   ; 0x0628
    mov ax, 0                        ; 0x062b
    push ax                          ; 0x062e
    mov ax, 0x14                     ; 0x062f
    imul word [bp - 0x0002]          ; 0x0632
    lea cx, word [bp - 0x0156]       ; 0x0635
    add ax, cx                       ; 0x0639
    push ax                          ; 0x063b
    call ds_dispatch_e84e            ; 0x063c
    add sp, byte 4                   ; 0x063f
    mov ax, 0                        ; 0x0642
    push ax                          ; 0x0645
    push ax                          ; 0x0646
    mov ax, word [bp + 0xa]          ; 0x0647
    add ax, word [bp - 0x000c]       ; 0x064a
    add ax, strict word 8            ; 0x064d
    push ax                          ; 0x0650
    mov ax, 6                        ; 0x0651
    imul word [bp + 0xc]             ; 0x0654
    add ax, word [bp + 0x8]          ; 0x0657
    add ax, word [bp - 0x000a]       ; 0x065a
    push ax                          ; 0x065d
    mov ax, word [bp + 0xa]          ; 0x065e
    add ax, word [bp - 0x000c]       ; 0x0661
    push ax                          ; 0x0664
    mov ax, word [bp + 0x8]          ; 0x0665
    add ax, word [bp - 0x000a]       ; 0x0668
    push ax                          ; 0x066b
    push word [bp - 0x0002]          ; 0x066c
    call ds_dispatch_baa6            ; 0x066f
    add sp, byte 0x0e                ; 0x0672
    mov ax, word [bp - 0x0004]       ; 0x0675
    mov cx, word [bp - 0x0002]       ; 0x0678
    shl cx, 1                        ; 0x067b
    mov bx, cx                       ; 0x067d
    add bx, bp                       ; 0x067f
    mov word [bx - 0x002a], ax       ; 0x0681
    inc word [bp - 0x0002]           ; 0x0684
@..math_loc_0445.l8:
    inc word [bp - 0x0004]           ; 0x0687
    jmp near @..math_loc_0445.l4     ; 0x068a
@..math_loc_0445.l9:
    mov ax, 0                        ; 0x068d
    push ax                          ; 0x0690
    push ax                          ; 0x0691
    push ax                          ; 0x0692
    push ax                          ; 0x0693
    push ax                          ; 0x0694
    mov ax, 0xffff                   ; 0x0695
    push ax                          ; 0x0698
    push word [bp - 0x0002]          ; 0x0699
    call ds_dispatch_baa6            ; 0x069c
    add sp, byte 0x0e                ; 0x069f
    mov ax, 0xc7                     ; 0x06a2
    push ax                          ; 0x06a5
    mov ax, 0x13f                    ; 0x06a6
    push ax                          ; 0x06a9
    mov ax, 0                        ; 0x06aa
    push ax                          ; 0x06ad
    push ax                          ; 0x06ae
    call ds_dispatch_e8da            ; 0x06af
    add sp, byte 8                   ; 0x06b2
    cmp word [data_0e32], byte 0     ; 0x06b5
    je short @..math_loc_0445.l11    ; 0x06ba
@..math_loc_0445.l10:
    mov ax, 0x59fe                   ; 0x06bc
    push ax                          ; 0x06bf
    call ds_dispatch_b90d            ; 0x06c0
    pop cx                           ; 0x06c3
    mov word [bp - 0x0004], ax       ; 0x06c4
    cmp word [data_5b3e], byte 0     ; 0x06c7
    je short @..math_loc_0445.l10    ; 0x06cc
    jmp near @..math_loc_0445.l25    ; 0x06ce
@..math_loc_0445.l11:
    mov word [bp - 0x0004], 0        ; 0x06d1
@..math_loc_0445.l12:
    mov ax, word [bp - 0x0004]       ; 0x06d6
    cwd                              ; 0x06d9
    idiv word [bp + 0x12]            ; 0x06da
    imul word [bp + 0xe]             ; 0x06dd
    mov word [bp - 0x000a], ax       ; 0x06e0
    mov ax, word [bp - 0x0004]       ; 0x06e3
    cwd                              ; 0x06e6
    idiv word [bp + 0x12]            ; 0x06e7
    mov ax, dx                       ; 0x06ea
    imul word [bp + 0x10]            ; 0x06ec
    mov word [bp - 0x000c], ax       ; 0x06ef
    mov ax, 0x16                     ; 0x06f2
    push ax                          ; 0x06f5
    mov ax, word [bp + 0xa]          ; 0x06f6
    add ax, word [bp - 0x000c]       ; 0x06f9
    add ax, strict word 8            ; 0x06fc
    push ax                          ; 0x06ff
    mov ax, 6                        ; 0x0700
    imul word [bp + 0xc]             ; 0x0703
    add ax, word [bp + 0x8]          ; 0x0706
    add ax, word [bp - 0x000a]       ; 0x0709
    push ax                          ; 0x070c
    mov ax, word [bp + 0xa]          ; 0x070d
    add ax, word [bp - 0x000c]       ; 0x0710
    push ax                          ; 0x0713
    mov ax, word [bp + 0x8]          ; 0x0714
    add ax, word [bp - 0x000a]       ; 0x0717
    push ax                          ; 0x071a
    call loc_03ca                    ; 0x071b
    add sp, byte 0x0a                ; 0x071e
    mov ax, word [bp - 0x0008]       ; 0x0721
    inc ax                           ; 0x0724
    push ax                          ; 0x0725
    mov ax, word [bp - 0x0006]       ; 0x0726
    inc ax                           ; 0x0729
    push ax                          ; 0x072a
    mov ax, word [bp + 0xa]          ; 0x072b
    dec ax                           ; 0x072e
    push ax                          ; 0x072f
    mov ax, word [bp + 0x8]          ; 0x0730
    dec ax                           ; 0x0733
    push ax                          ; 0x0734
    call ds_dispatch_e8da            ; 0x0735
    add sp, byte 8                   ; 0x0738
    mov ax, 0                        ; 0x073b
    push ax                          ; 0x073e
    mov ax, word [bp + 0xa]          ; 0x073f
    add ax, word [bp - 0x000c]       ; 0x0742
    add ax, strict word 8            ; 0x0745
    push ax                          ; 0x0748
    mov ax, 6                        ; 0x0749
    imul word [bp + 0xc]             ; 0x074c
    add ax, word [bp + 0x8]          ; 0x074f
    add ax, word [bp - 0x000a]       ; 0x0752
    push ax                          ; 0x0755
    mov ax, word [bp + 0xa]          ; 0x0756
    add ax, word [bp - 0x000c]       ; 0x0759
    push ax                          ; 0x075c
    mov ax, word [bp + 0x8]          ; 0x075d
    add ax, word [bp - 0x000a]       ; 0x0760
    push ax                          ; 0x0763
    call loc_03ca                    ; 0x0764
    add sp, byte 0x0a                ; 0x0767
@..math_loc_0445.l13:
    mov ax, 1                        ; 0x076a
    push ax                          ; 0x076d
    call ds_dispatch_ea50            ; 0x076e
    pop cx                           ; 0x0771
    test ax, ax                      ; 0x0772
    jne short @..math_loc_0445.l14   ; 0x0774
    jmp short @..math_loc_0445.l13   ; 0x0776
@..math_loc_0445.l14:
    mov ax, 1                        ; 0x0778
    push ax                          ; 0x077b
    call ds_dispatch_eb32            ; 0x077c
    pop cx                           ; 0x077f
    sub ah, ah                       ; 0x0780
    mov word [bp - 0x01aa], ax       ; 0x0782
    mov ax, word [bp - 0x0004]       ; 0x0786
    cwd                              ; 0x0789
    idiv word [bp + 0x12]            ; 0x078a
    mov word [bp - 0x000a], ax       ; 0x078d
    mov ax, word [bp - 0x0002]       ; 0x0790
    dec ax                           ; 0x0793
    cwd                              ; 0x0794
    idiv word [bp + 0x12]            ; 0x0795
    inc ax                           ; 0x0798
    mov word [bp - 0x000c], ax       ; 0x0799
@..math_loc_0445.l15:
    mov ax, word [bp - 0x01aa]       ; 0x079c
    jmp near @..math_loc_0445.l20    ; 0x07a0
@..math_loc_0445.l16:
    mov ax, word [bp - 0x0004]       ; 0x07a3
    add ax, word [bp + 0x12]         ; 0x07a6
    dec ax                           ; 0x07a9
    cwd                              ; 0x07aa
    idiv word [bp + 0x12]            ; 0x07ab
    mov ax, dx                       ; 0x07ae
    push ax                          ; 0x07b0
    mov ax, word [bp - 0x000a]       ; 0x07b1
    imul word [bp + 0x12]            ; 0x07b4
    mov cx, ax                       ; 0x07b7
    pop ax                           ; 0x07b9
    add ax, cx                       ; 0x07ba
    mov word [bp - 0x0004], ax       ; 0x07bc
    jmp near @..math_loc_0445.l22    ; 0x07bf
@..math_loc_0445.l17:
    mov ax, word [bp - 0x0004]       ; 0x07c2
    inc ax                           ; 0x07c5
    cwd                              ; 0x07c6
    idiv word [bp + 0x12]            ; 0x07c7
    mov ax, dx                       ; 0x07ca
    push ax                          ; 0x07cc
    mov ax, word [bp - 0x000a]       ; 0x07cd
    imul word [bp + 0x12]            ; 0x07d0
    mov cx, ax                       ; 0x07d3
    pop ax                           ; 0x07d5
    add ax, cx                       ; 0x07d6
    mov word [bp - 0x0004], ax       ; 0x07d8
    jmp short @..math_loc_0445.l22   ; 0x07db
@..math_loc_0445.l18:
    mov ax, word [bp - 0x000a]       ; 0x07dd
    add ax, word [bp - 0x000c]       ; 0x07e0
    dec ax                           ; 0x07e3
    cwd                              ; 0x07e4
    idiv word [bp - 0x000c]          ; 0x07e5
    mov word [bp - 0x000a], dx       ; 0x07e8
    mov ax, word [bp - 0x0004]       ; 0x07eb
    cwd                              ; 0x07ee
    idiv word [bp + 0x12]            ; 0x07ef
    mov ax, dx                       ; 0x07f2
    push ax                          ; 0x07f4
    mov ax, word [bp - 0x000a]       ; 0x07f5
    imul word [bp + 0x12]            ; 0x07f8
    mov cx, ax                       ; 0x07fb
    pop ax                           ; 0x07fd
    add ax, cx                       ; 0x07fe
    mov word [bp - 0x0004], ax       ; 0x0800
    jmp short @..math_loc_0445.l22   ; 0x0803
@..math_loc_0445.l19:
    mov ax, word [bp - 0x000a]       ; 0x0805
    inc ax                           ; 0x0808
    cwd                              ; 0x0809
    idiv word [bp - 0x000c]          ; 0x080a
    mov word [bp - 0x000a], dx       ; 0x080d
    mov ax, word [bp - 0x0004]       ; 0x0810
    cwd                              ; 0x0813
    idiv word [bp + 0x12]            ; 0x0814
    mov ax, dx                       ; 0x0817
    push ax                          ; 0x0819
    mov ax, word [bp - 0x000a]       ; 0x081a
    imul word [bp + 0x12]            ; 0x081d
    mov cx, ax                       ; 0x0820
    pop ax                           ; 0x0822
    add ax, cx                       ; 0x0823
    mov word [bp - 0x0004], ax       ; 0x0825
    jmp short @..math_loc_0445.l22   ; 0x0828
@..math_loc_0445.l20:
    cmp ax, strict word 8            ; 0x082a
    je short @..math_loc_0445.l18    ; 0x082d
    cmp ax, strict word 9            ; 0x082f
    jne short @..math_loc_0445.l21   ; 0x0832
    jmp near @..math_loc_0445.l16    ; 0x0834
@..math_loc_0445.l21:
    cmp ax, strict word 0xa          ; 0x0837
    je short @..math_loc_0445.l19    ; 0x083a
    cmp ax, strict word 0xb          ; 0x083c
    je short @..math_loc_0445.l17    ; 0x083f
@..math_loc_0445.l22:
    mov ax, word [bp - 0x0004]       ; 0x0841
    cmp ax, word [bp - 0x0002]       ; 0x0844
    jl short @..math_loc_0445.l23    ; 0x0847
    jmp near @..math_loc_0445.l15    ; 0x0849
@..math_loc_0445.l23:
    cmp word [bp - 0x01aa], byte 0x0d ; 0x084c
    je short @..math_loc_0445.l24    ; 0x0851
    jmp near @..math_loc_0445.l12    ; 0x0853
@..math_loc_0445.l24:
    inc word [bp - 0x0004]           ; 0x0856
    mov ax, word [bp - 0x0008]       ; 0x0859
    inc ax                           ; 0x085c
    push ax                          ; 0x085d
    mov ax, word [bp - 0x0006]       ; 0x085e
    inc ax                           ; 0x0861
    push ax                          ; 0x0862
    mov ax, word [bp + 0xa]          ; 0x0863
    dec ax                           ; 0x0866
    push ax                          ; 0x0867
    mov ax, word [bp + 0x8]          ; 0x0868
    dec ax                           ; 0x086b
    push ax                          ; 0x086c
    call ds_dispatch_e8da            ; 0x086d
    add sp, byte 8                   ; 0x0870
@..math_loc_0445.l25:
    dec word [bp - 0x0004]           ; 0x0873
    mov ax, word [bp - 0x0004]       ; 0x0876
    cwd                              ; 0x0879
    idiv word [bp + 0x12]            ; 0x087a
    imul word [bp + 0xe]             ; 0x087d
    mov word [bp - 0x000a], ax       ; 0x0880
    mov ax, word [bp - 0x0004]       ; 0x0883
    cwd                              ; 0x0886
    idiv word [bp + 0x12]            ; 0x0887
    mov ax, dx                       ; 0x088a
    imul word [bp + 0x10]            ; 0x088c
    mov word [bp - 0x000c], ax       ; 0x088f
    mov ax, 1                        ; 0x0892
    push ax                          ; 0x0895
    push ax                          ; 0x0896
    push word [bp + 0xc]             ; 0x0897
    mov ax, word [bp + 0xa]          ; 0x089a
    add ax, word [bp - 0x000c]       ; 0x089d
    push ax                          ; 0x08a0
    mov ax, word [bp + 0x8]          ; 0x08a1
    add ax, word [bp - 0x000a]       ; 0x08a4
    push ax                          ; 0x08a7
    call ds_dispatch_be5f            ; 0x08a8
    add sp, byte 0x0a                ; 0x08ab
    mov ax, 0                        ; 0x08ae
    push ax                          ; 0x08b1
    mov ax, 1                        ; 0x08b2
    push ax                          ; 0x08b5
    push word [bp + 0xc]             ; 0x08b6
    mov ax, word [bp + 0xa]          ; 0x08b9
    add ax, word [bp - 0x000c]       ; 0x08bc
    push ax                          ; 0x08bf
    mov ax, word [bp + 0x8]          ; 0x08c0
    add ax, word [bp - 0x000a]       ; 0x08c3
    push ax                          ; 0x08c6
    call ds_dispatch_be5f            ; 0x08c7
    add sp, byte 0x0a                ; 0x08ca
    mov ax, 1                        ; 0x08cd
    push ax                          ; 0x08d0
    push word [bp - 0x01a8]          ; 0x08d1
    call ds_dispatch_c459            ; 0x08d5
    add sp, byte 4                   ; 0x08d8
    cmp word [bp + 0x1a], byte 0     ; 0x08db
    je short @..math_loc_0445.l27    ; 0x08df
    cmp word [bp + 0x6], byte 0      ; 0x08e1
    je short @..math_loc_0445.l26    ; 0x08e5
    mov ax, word [bp - 0x0008]       ; 0x08e7
    add ax, strict word 6            ; 0x08ea
    push ax                          ; 0x08ed
    mov ax, word [bp - 0x0006]       ; 0x08ee
    add ax, strict word 6            ; 0x08f1
    push ax                          ; 0x08f4
    mov ax, word [bp + 0xa]          ; 0x08f5
    add ax, strict word 0xffeb       ; 0x08f8
    push ax                          ; 0x08fb
    mov ax, word [bp + 0x8]          ; 0x08fc
    add ax, strict word 0xfffa       ; 0x08ff
    push ax                          ; 0x0902
    call ds_dispatch_e8da            ; 0x0903
    add sp, byte 8                   ; 0x0906
    jmp short @..math_loc_0445.l27   ; 0x0909
@..math_loc_0445.l26:
    mov ax, word [bp - 0x0008]       ; 0x090b
    inc ax                           ; 0x090e
    push ax                          ; 0x090f
    mov ax, word [bp - 0x0006]       ; 0x0910
    inc ax                           ; 0x0913
    push ax                          ; 0x0914
    mov ax, word [bp + 0xa]          ; 0x0915
    dec ax                           ; 0x0918
    push ax                          ; 0x0919
    mov ax, word [bp + 0x8]          ; 0x091a
    dec ax                           ; 0x091d
    push ax                          ; 0x091e
    call ds_dispatch_e8da            ; 0x091f
    add sp, byte 8                   ; 0x0922
@..math_loc_0445.l27:
    mov ax, word [bp - 0x0004]       ; 0x0925
    mov word [data_9052], ax         ; 0x0928
    shl ax, 1                        ; 0x092b
    mov bx, ax                       ; 0x092d
    add bx, bp                       ; 0x092f
    mov ax, word [bx - 0x002a]       ; 0x0931
    ret                              ; 0x0934
api_idx_0058:
    mov ax, 0xffa8                   ; 0x0935
    call ds_dispatch_f40b            ; 0x0938
    mov ax, 6                        ; 0x093b
    imul word [bp + 0xa]             ; 0x093e
    add ax, word [bp + 0x6]          ; 0x0941
    mov word [bp - 0x0002], ax       ; 0x0944
    mov ax, word [bp + 0x8]          ; 0x0947
    add ax, strict word 9            ; 0x094a
    mov word [bp - 0x0004], ax       ; 0x094d
    mov ax, word [bp - 0x0004]       ; 0x0950
    add ax, strict word 6            ; 0x0953
    push ax                          ; 0x0956
    mov ax, word [bp - 0x0002]       ; 0x0957
    add ax, strict word 0x19         ; 0x095a
    push ax                          ; 0x095d
    mov ax, word [bp + 0x8]          ; 0x095e
    add ax, strict word 0xffeb       ; 0x0961
    push ax                          ; 0x0964
    mov ax, word [bp + 0x6]          ; 0x0965
    add ax, strict word 0xffe7       ; 0x0968
    push ax                          ; 0x096b
    call ds_dispatch_e928            ; 0x096c
    add sp, byte 8                   ; 0x096f
    mov word [bp - 0x0056], dx       ; 0x0972
    mov word [bp - 0x0058], ax       ; 0x0975
    mov ax, word [bp - 0x0004]       ; 0x0978
    add ax, strict word 5            ; 0x097b
    push ax                          ; 0x097e
    mov ax, word [bp - 0x0002]       ; 0x097f
    add ax, strict word 0x18         ; 0x0982
    push ax                          ; 0x0985
    mov ax, word [bp + 0x8]          ; 0x0986
    add ax, strict word 0xffec       ; 0x0989
    push ax                          ; 0x098c
    mov ax, word [bp + 0x6]          ; 0x098d
    add ax, strict word 0xffe8       ; 0x0990
    push ax                          ; 0x0993
    call ds_dispatch_bc9a            ; 0x0994
    add sp, byte 8                   ; 0x0997
    lea ax, word [bp - 0x0054]       ; 0x099a
    push ax                          ; 0x099d
    push word [bp + 0x4]             ; 0x099e
    call ds_dispatch_b53b            ; 0x09a1
    add sp, byte 4                   ; 0x09a4
    mov ax, 0xc2                     ; 0x09a7
    push ax                          ; 0x09aa
    mov ax, 1                        ; 0x09ab
    push ax                          ; 0x09ae
    call ds_dispatch_e823            ; 0x09af
    add sp, byte 4                   ; 0x09b2
    mov ax, word [bp + 0x8]          ; 0x09b5
    add ax, strict word 0xfff3       ; 0x09b8
    push ax                          ; 0x09bb
    lea ax, word [bp - 0x0054]       ; 0x09bc
    push ax                          ; 0x09bf
    call ds_dispatch_fa90            ; 0x09c0
    pop cx                           ; 0x09c3
    mov cx, 6                        ; 0x09c4
    imul cx                          ; 0x09c7
    mov cx, data_0002                ; 0x09c9
    cwd                              ; 0x09cc
    idiv cx                          ; 0x09cd
    mov cx, ax                       ; 0x09cf
    mov ax, 0xa1                     ; 0x09d1
    sub ax, cx                       ; 0x09d4
    push ax                          ; 0x09d6
    call ds_dispatch_e809            ; 0x09d7
    add sp, byte 4                   ; 0x09da
    mov ax, 0                        ; 0x09dd
    push ax                          ; 0x09e0
    lea ax, word [bp - 0x0054]       ; 0x09e1
    push ax                          ; 0x09e4
    call ds_dispatch_e84e            ; 0x09e5
    add sp, byte 4                   ; 0x09e8
    lea ax, word [bp - 0x0054]       ; 0x09eb
    push ax                          ; 0x09ee
    mov ax, word [bp + 0x4]          ; 0x09ef
    inc ax                           ; 0x09f2
    push ax                          ; 0x09f3
    call ds_dispatch_b53b            ; 0x09f4
    add sp, byte 4                   ; 0x09f7
    mov ax, 0                        ; 0x09fa
    push ax                          ; 0x09fd
    mov ax, word [bp + 0x8]          ; 0x09fe
    add ax, strict word 8            ; 0x0a01
    push ax                          ; 0x0a04
    mov ax, 6                        ; 0x0a05
    imul word [bp + 0xa]             ; 0x0a08
    add ax, word [bp + 0x6]          ; 0x0a0b
    push ax                          ; 0x0a0e
    push word [bp + 0x8]             ; 0x0a0f
    push word [bp + 0x6]             ; 0x0a12
    call ds_dispatch_bce3            ; 0x0a15
    add sp, byte 0x0a                ; 0x0a18
    mov ax, 0xc0                     ; 0x0a1b
    push ax                          ; 0x0a1e
    mov ax, 0x1a                     ; 0x0a1f
    push ax                          ; 0x0a22
    call ds_dispatch_e823            ; 0x0a23
    add sp, byte 4                   ; 0x0a26
    mov ax, word [bp + 0x8]          ; 0x0a29
    inc ax                           ; 0x0a2c
    inc ax                           ; 0x0a2d
    push ax                          ; 0x0a2e
    lea ax, word [bp - 0x0054]       ; 0x0a2f
    push ax                          ; 0x0a32
    call ds_dispatch_fa90            ; 0x0a33
    pop cx                           ; 0x0a36
    mov cx, ax                       ; 0x0a37
    mov ax, word [bp + 0xa]          ; 0x0a39
    sub ax, cx                       ; 0x0a3c
    mov cx, 6                        ; 0x0a3e
    imul cx                          ; 0x0a41
    mov cx, data_0002                ; 0x0a43
    cwd                              ; 0x0a46
    idiv cx                          ; 0x0a47
    add ax, word [bp + 0x6]          ; 0x0a49
    inc ax                           ; 0x0a4c
    push ax                          ; 0x0a4d
    call ds_dispatch_e809            ; 0x0a4e
    add sp, byte 4                   ; 0x0a51
    mov ax, 0                        ; 0x0a54
    push ax                          ; 0x0a57
    lea ax, word [bp - 0x0054]       ; 0x0a58
    push ax                          ; 0x0a5b
    call ds_dispatch_e84e            ; 0x0a5c
    add sp, byte 4                   ; 0x0a5f
    mov ax, 0                        ; 0x0a62
    push ax                          ; 0x0a65
    mov ax, 0xd                      ; 0x0a66
    push ax                          ; 0x0a69
    mov ax, word [bp + 0x8]          ; 0x0a6a
    add ax, strict word 8            ; 0x0a6d
    push ax                          ; 0x0a70
    mov ax, 6                        ; 0x0a71
    imul word [bp + 0xa]             ; 0x0a74
    add ax, word [bp + 0x6]          ; 0x0a77
    push ax                          ; 0x0a7a
    push word [bp + 0x8]             ; 0x0a7b
    push word [bp + 0x6]             ; 0x0a7e
    push word [bp + 0xe]             ; 0x0a81
    call ds_dispatch_baa6            ; 0x0a84
    add sp, byte 0x0e                ; 0x0a87
    mov ax, 0                        ; 0x0a8a
    push ax                          ; 0x0a8d
    push ax                          ; 0x0a8e
    push ax                          ; 0x0a8f
    push ax                          ; 0x0a90
    push ax                          ; 0x0a91
    mov ax, 0xffff                   ; 0x0a92
    push ax                          ; 0x0a95
    mov ax, word [bp + 0xe]          ; 0x0a96
    inc ax                           ; 0x0a99
    push ax                          ; 0x0a9a
    call ds_dispatch_baa6            ; 0x0a9b
    add sp, byte 0x0e                ; 0x0a9e
    mov ax, 0xc7                     ; 0x0aa1
    push ax                          ; 0x0aa4
    mov ax, 0x13f                    ; 0x0aa5
    push ax                          ; 0x0aa8
    mov ax, 0                        ; 0x0aa9
    push ax                          ; 0x0aac
    push ax                          ; 0x0aad
    call ds_dispatch_e8da            ; 0x0aae
    add sp, byte 8                   ; 0x0ab1
    mov ax, word [bp - 0x0058]       ; 0x0ab4
    mov dx, word [bp - 0x0056]       ; 0x0ab7
    ret                              ; 0x0aba
api_idx_0038:
    mov ax, 0xffc8                   ; 0x0abb
    call ds_dispatch_f40b            ; 0x0abe
    mov word [data_904e], 0xffff     ; 0x0ac1
    mov word [bp - 0x0004], 0x37     ; 0x0ac7
    mov word [bp - 0x0006], 0x8f     ; 0x0acc
    mov word [bp - 0x0008], 0x108    ; 0x0ad1
    mov word [bp - 0x000a], 0xc5     ; 0x0ad6
    mov word [bp - 0x0012], 0x16     ; 0x0adb
    mov ax, 7                        ; 0x0ae0
    cmp word [bp + 0xc], byte 7      ; 0x0ae3
    jge short @..api_idx_0038.l1     ; 0x0ae7
    mov ax, word [bp + 0xc]          ; 0x0ae9
@..api_idx_0038.l1:
    mov word [bp - 0x0022], ax       ; 0x0aec
    mov ax, 0x90af                   ; 0x0aef
    push ax                          ; 0x0af2
    mov ax, word [bp - 0x000a]       ; 0x0af3
    inc ax                           ; 0x0af6
    push ax                          ; 0x0af7
    mov ax, word [bp - 0x0008]       ; 0x0af8
    inc ax                           ; 0x0afb
    push ax                          ; 0x0afc
    mov ax, word [bp - 0x0006]       ; 0x0afd
    dec ax                           ; 0x0b00
    push ax                          ; 0x0b01
    mov ax, word [bp - 0x0004]       ; 0x0b02
    dec ax                           ; 0x0b05
    push ax                          ; 0x0b06
    call ds_dispatch_c283            ; 0x0b07
    add sp, byte 0x0a                ; 0x0b0a
    mov word [bp - 0x0038], ax       ; 0x0b0d
    push word [bp - 0x000a]          ; 0x0b10
    push word [bp - 0x0008]          ; 0x0b13
    push word [bp - 0x0006]          ; 0x0b16
    push word [bp - 0x0004]          ; 0x0b19
    call ds_dispatch_bc9a            ; 0x0b1c
    add sp, byte 8                   ; 0x0b1f
    lea ax, word [bp - 0x0036]       ; 0x0b22
    push ax                          ; 0x0b25
    push word [bp + 0x4]             ; 0x0b26
    call ds_dispatch_b53b            ; 0x0b29
    add sp, byte 4                   ; 0x0b2c
    lea ax, word [bp - 0x0036]       ; 0x0b2f
    push ax                          ; 0x0b32
    push word [bp + 0x6]             ; 0x0b33
    mov ax, 1                        ; 0x0b36
    push ax                          ; 0x0b39
    mov ax, 0xc                      ; 0x0b3a
    push ax                          ; 0x0b3d
    mov ax, word [bp - 0x0006]       ; 0x0b3e
    add ax, strict word 7            ; 0x0b41
    push ax                          ; 0x0b44
    mov ax, word [bp - 0x0004]       ; 0x0b45
    add ax, strict word 8            ; 0x0b48
    push ax                          ; 0x0b4b
    call ds_dispatch_c0c1            ; 0x0b4c
    add sp, byte 0x0c                ; 0x0b4f
    lea ax, word [bp - 0x0036]       ; 0x0b52
    push ax                          ; 0x0b55
    mov ax, word [bp + 0x4]          ; 0x0b56
    inc ax                           ; 0x0b59
    push ax                          ; 0x0b5a
    call ds_dispatch_b53b            ; 0x0b5b
    add sp, byte 4                   ; 0x0b5e
    lea ax, word [bp - 0x0036]       ; 0x0b61
    push ax                          ; 0x0b64
    push word [bp + 0x8]             ; 0x0b65
    mov ax, 1                        ; 0x0b68
    push ax                          ; 0x0b6b
    mov ax, 0xc                      ; 0x0b6c
    push ax                          ; 0x0b6f
    mov ax, word [bp - 0x0006]       ; 0x0b70
    add ax, strict word 0x17         ; 0x0b73
    push ax                          ; 0x0b76
    mov ax, word [bp - 0x0004]       ; 0x0b77
    add ax, strict word 8            ; 0x0b7a
    push ax                          ; 0x0b7d
    call ds_dispatch_c0c1            ; 0x0b7e
    add sp, byte 0x0c                ; 0x0b81
    lea ax, word [bp - 0x0036]       ; 0x0b84
    push ax                          ; 0x0b87
    mov ax, word [bp + 0x4]          ; 0x0b88
    inc ax                           ; 0x0b8b
    inc ax                           ; 0x0b8c
    push ax                          ; 0x0b8d
    call ds_dispatch_b53b            ; 0x0b8e
    add sp, byte 4                   ; 0x0b91
    lea ax, word [bp - 0x0036]       ; 0x0b94
    push ax                          ; 0x0b97
    push word [bp + 0xa]             ; 0x0b98
    mov ax, 1                        ; 0x0b9b
    push ax                          ; 0x0b9e
    mov ax, 0xc                      ; 0x0b9f
    push ax                          ; 0x0ba2
    mov ax, word [bp - 0x0006]       ; 0x0ba3
    add ax, strict word 0x27         ; 0x0ba6
    push ax                          ; 0x0ba9
    mov ax, word [bp - 0x0004]       ; 0x0baa
    add ax, strict word 8            ; 0x0bad
    push ax                          ; 0x0bb0
    call ds_dispatch_c0c1            ; 0x0bb1
    add sp, byte 0x0c                ; 0x0bb4
    mov word [bp - 0x0016], 0        ; 0x0bb7
    mov word [bp - 0x0020], 0xffff   ; 0x0bbc
    push word [bp - 0x0022]          ; 0x0bc1
    push word [bp - 0x0020]          ; 0x0bc4
    push word [bp - 0x0016]          ; 0x0bc7
    mov ax, 7                        ; 0x0bca
    push ax                          ; 0x0bcd
    mov ax, 0xf                      ; 0x0bce
    push ax                          ; 0x0bd1
    mov ax, word [bp - 0x0006]       ; 0x0bd2
    add ax, strict word 6            ; 0x0bd5
    push ax                          ; 0x0bd8
    mov ax, word [bp - 0x0004]       ; 0x0bd9
    add ax, strict word 0x5d         ; 0x0bdc
    push ax                          ; 0x0bdf
    call ds_dispatch_bf97            ; 0x0be0
    add sp, byte 0x0e                ; 0x0be3
    mov word [bp - 0x0010], 0        ; 0x0be6
    push word [bp - 0x0010]          ; 0x0beb
    mov ax, 7                        ; 0x0bee
    push ax                          ; 0x0bf1
    mov ax, 8                        ; 0x0bf2
    push ax                          ; 0x0bf5
    mov ax, word [bp - 0x0006]       ; 0x0bf6
    add ax, strict word 6            ; 0x0bf9
    push ax                          ; 0x0bfc
    mov ax, word [bp - 0x0004]       ; 0x0bfd
    add ax, 0xc1                     ; 0x0c00
    push ax                          ; 0x0c03
    call ds_dispatch_bfd8            ; 0x0c04
    add sp, byte 0x0a                ; 0x0c07
    mov ax, 0                        ; 0x0c0a
    push ax                          ; 0x0c0d
    push ax                          ; 0x0c0e
    mov ax, word [bp - 0x0006]       ; 0x0c0f
    add ax, word [bp - 0x0010]       ; 0x0c12
    add ax, strict word 0x12         ; 0x0c15
    push ax                          ; 0x0c18
    mov ax, word [bp - 0x0004]       ; 0x0c19
    add ax, 0xc9                     ; 0x0c1c
    push ax                          ; 0x0c1f
    mov ax, word [bp - 0x0006]       ; 0x0c20
    add ax, word [bp - 0x0010]       ; 0x0c23
    add ax, strict word 0xe          ; 0x0c26
    push ax                          ; 0x0c29
    mov ax, word [bp - 0x0004]       ; 0x0c2a
    add ax, 0xc1                     ; 0x0c2d
    push ax                          ; 0x0c30
    mov ax, 0                        ; 0x0c31
    push ax                          ; 0x0c34
    call ds_dispatch_baa6            ; 0x0c35
    add sp, byte 0x0e                ; 0x0c38
    mov ax, 0                        ; 0x0c3b
    push ax                          ; 0x0c3e
    mov ax, 9                        ; 0x0c3f
    push ax                          ; 0x0c42
    mov ax, word [bp - 0x0006]       ; 0x0c43
    add ax, strict word 0xc          ; 0x0c46
    push ax                          ; 0x0c49
    mov ax, word [bp - 0x0004]       ; 0x0c4a
    add ax, 0xc9                     ; 0x0c4d
    push ax                          ; 0x0c50
    mov ax, word [bp - 0x0006]       ; 0x0c51
    add ax, strict word 6            ; 0x0c54
    push ax                          ; 0x0c57
    mov ax, word [bp - 0x0004]       ; 0x0c58
    add ax, 0xc1                     ; 0x0c5b
    push ax                          ; 0x0c5e
    mov ax, 1                        ; 0x0c5f
    push ax                          ; 0x0c62
    call ds_dispatch_baa6            ; 0x0c63
    add sp, byte 0x0e                ; 0x0c66
    mov ax, 0                        ; 0x0c69
    push ax                          ; 0x0c6c
    mov ax, 0xb                      ; 0x0c6d
    push ax                          ; 0x0c70
    mov ax, word [bp - 0x0006]       ; 0x0c71
    add ax, strict word 0x30         ; 0x0c74
    push ax                          ; 0x0c77
    mov ax, word [bp - 0x0004]       ; 0x0c78
    add ax, 0xc9                     ; 0x0c7b
    push ax                          ; 0x0c7e
    mov ax, word [bp - 0x0006]       ; 0x0c7f
    add ax, strict word 0x2a         ; 0x0c82
    push ax                          ; 0x0c85
    mov ax, word [bp - 0x0004]       ; 0x0c86
    add ax, 0xc1                     ; 0x0c89
    push ax                          ; 0x0c8c
    mov ax, data_0002                ; 0x0c8d
    push ax                          ; 0x0c90
    call ds_dispatch_baa6            ; 0x0c91
    add sp, byte 0x0e                ; 0x0c94
    mov ax, 0                        ; 0x0c97
    push ax                          ; 0x0c9a
    push ax                          ; 0x0c9b
    mov ax, word [bp - 0x0006]       ; 0x0c9c
    add ax, strict word 0xf          ; 0x0c9f
    push ax                          ; 0x0ca2
    mov ax, word [bp - 0x0004]       ; 0x0ca3
    add ax, strict word 0x50         ; 0x0ca6
    push ax                          ; 0x0ca9
    mov ax, word [bp - 0x0006]       ; 0x0caa
    add ax, strict word 7            ; 0x0cad
    push ax                          ; 0x0cb0
    mov ax, word [bp - 0x0004]       ; 0x0cb1
    add ax, strict word 8            ; 0x0cb4
    push ax                          ; 0x0cb7
    mov ax, 3                        ; 0x0cb8
    push ax                          ; 0x0cbb
    call ds_dispatch_baa6            ; 0x0cbc
    add sp, byte 0x0e                ; 0x0cbf
    mov ax, 0                        ; 0x0cc2
    push ax                          ; 0x0cc5
    mov ax, 0xd                      ; 0x0cc6
    push ax                          ; 0x0cc9
    mov ax, word [bp - 0x0006]       ; 0x0cca
    add ax, strict word 0x1f         ; 0x0ccd
    push ax                          ; 0x0cd0
    mov ax, word [bp - 0x0004]       ; 0x0cd1
    add ax, strict word 0x50         ; 0x0cd4
    push ax                          ; 0x0cd7
    mov ax, word [bp - 0x0006]       ; 0x0cd8
    add ax, strict word 0x17         ; 0x0cdb
    push ax                          ; 0x0cde
    mov ax, word [bp - 0x0004]       ; 0x0cdf
    add ax, strict word 8            ; 0x0ce2
    push ax                          ; 0x0ce5
    mov ax, 4                        ; 0x0ce6
    push ax                          ; 0x0ce9
    call ds_dispatch_baa6            ; 0x0cea
    add sp, byte 0x0e                ; 0x0ced
    mov ax, 0                        ; 0x0cf0
    push ax                          ; 0x0cf3
    mov ax, 0x1b                     ; 0x0cf4
    push ax                          ; 0x0cf7
    mov ax, word [bp - 0x0006]       ; 0x0cf8
    add ax, strict word 0x2f         ; 0x0cfb
    push ax                          ; 0x0cfe
    mov ax, word [bp - 0x0004]       ; 0x0cff
    add ax, strict word 0x50         ; 0x0d02
    push ax                          ; 0x0d05
    mov ax, word [bp - 0x0006]       ; 0x0d06
    add ax, strict word 0x27         ; 0x0d09
    push ax                          ; 0x0d0c
    mov ax, word [bp - 0x0004]       ; 0x0d0d
    add ax, strict word 8            ; 0x0d10
    push ax                          ; 0x0d13
    mov ax, 5                        ; 0x0d14
    push ax                          ; 0x0d17
    call ds_dispatch_baa6            ; 0x0d18
    add sp, byte 0x0e                ; 0x0d1b
    mov ax, 7                        ; 0x0d1e
    cmp word [bp + 0xc], byte 7      ; 0x0d21
    jge short @..api_idx_0038.l2     ; 0x0d25
    mov ax, word [bp + 0xc]          ; 0x0d27
@..api_idx_0038.l2:
    mov word [bp - 0x001e], ax       ; 0x0d2a
    mov word [bp - 0x0002], 0        ; 0x0d2d
    jmp short @..api_idx_0038.l4     ; 0x0d32
@..api_idx_0038.l3:
    mov ax, 0                        ; 0x0d34
    push ax                          ; 0x0d37
    push ax                          ; 0x0d38
    mov ax, 6                        ; 0x0d39
    imul word [bp - 0x0002]          ; 0x0d3c
    add ax, word [bp - 0x0006]       ; 0x0d3f
    add ax, strict word 0xc          ; 0x0d42
    push ax                          ; 0x0d45
    mov ax, word [bp - 0x0004]       ; 0x0d46
    add ax, 0xb9                     ; 0x0d49
    push ax                          ; 0x0d4c
    mov ax, 6                        ; 0x0d4d
    imul word [bp - 0x0002]          ; 0x0d50
    add ax, word [bp - 0x0006]       ; 0x0d53
    add ax, strict word 6            ; 0x0d56
    push ax                          ; 0x0d59
    mov ax, word [bp - 0x0004]       ; 0x0d5a
    add ax, strict word 0x5d         ; 0x0d5d
    push ax                          ; 0x0d60
    mov ax, word [bp - 0x0002]       ; 0x0d61
    add ax, strict word 6            ; 0x0d64
    push ax                          ; 0x0d67
    call ds_dispatch_baa6            ; 0x0d68
    add sp, byte 0x0e                ; 0x0d6b
    inc word [bp - 0x0002]           ; 0x0d6e
@..api_idx_0038.l4:
    mov ax, word [bp - 0x0002]       ; 0x0d71
    cmp ax, word [bp - 0x001e]       ; 0x0d74
    jl short @..api_idx_0038.l3      ; 0x0d77
    mov ax, 0                        ; 0x0d79
    push ax                          ; 0x0d7c
    push ax                          ; 0x0d7d
    push ax                          ; 0x0d7e
    push ax                          ; 0x0d7f
    push ax                          ; 0x0d80
    mov ax, 0xffff                   ; 0x0d81
    push ax                          ; 0x0d84
    mov ax, word [bp - 0x001e]       ; 0x0d85
    add ax, strict word 6            ; 0x0d88
    push ax                          ; 0x0d8b
    call ds_dispatch_baa6            ; 0x0d8c
    add sp, byte 0x0e                ; 0x0d8f
    mov ax, word [bp - 0x000a]       ; 0x0d92
    inc ax                           ; 0x0d95
    push ax                          ; 0x0d96
    mov ax, word [bp - 0x0008]       ; 0x0d97
    inc ax                           ; 0x0d9a
    push ax                          ; 0x0d9b
    mov ax, word [bp - 0x0006]       ; 0x0d9c
    dec ax                           ; 0x0d9f
    push ax                          ; 0x0da0
    mov ax, word [bp - 0x0004]       ; 0x0da1
    dec ax                           ; 0x0da4
    push ax                          ; 0x0da5
    call ds_dispatch_e8da            ; 0x0da6
    add sp, byte 8                   ; 0x0da9
    mov word [bp - 0x001a], 1        ; 0x0dac
@..api_idx_0038.l5:
    mov ax, 0x59fe                   ; 0x0db1
    push ax                          ; 0x0db4
    call ds_dispatch_b90d            ; 0x0db5
    pop cx                           ; 0x0db8
    dec ax                           ; 0x0db9
    mov word [bp - 0x0018], ax       ; 0x0dba
    cmp word [data_59fc], byte 0     ; 0x0dbd
    je short @..api_idx_0038.l9      ; 0x0dc2
    mov ax, word [bp - 0x0020]       ; 0x0dc4
    cmp ax, word [bp - 0x0016]       ; 0x0dc7
    jl short @..api_idx_0038.l6      ; 0x0dca
    inc word [bp - 0x0020]           ; 0x0dcc
@..api_idx_0038.l6:
    mov ax, word [bp - 0x0020]       ; 0x0dcf
    cmp ax, strict word 0xffff       ; 0x0dd2
    je short @..api_idx_0038.l7      ; 0x0dd5
    cmp ax, word [bp - 0x0016]       ; 0x0dd7
    jl short @..api_idx_0038.l7      ; 0x0dda
    mov ax, word [bp - 0x0016]       ; 0x0ddc
    add ax, word [bp - 0x001e]       ; 0x0ddf
    mov cx, ax                       ; 0x0de2
    dec ax                           ; 0x0de4
    mov cx, ax                       ; 0x0de5
    mov ax, word [bp - 0x0020]       ; 0x0de7
    cmp cx, ax                       ; 0x0dea
    jge short @..api_idx_0038.l8     ; 0x0dec
@..api_idx_0038.l7:
    mov ax, word [bp - 0x0016]       ; 0x0dee
    mov word [bp - 0x0020], ax       ; 0x0df1
@..api_idx_0038.l8:
    mov word [data_5b3e], 1          ; 0x0df4
    mov ax, word [bp - 0x0020]       ; 0x0dfa
    sub ax, word [bp - 0x0016]       ; 0x0dfd
    add ax, strict word 6            ; 0x0e00
    mov word [bp - 0x0018], ax       ; 0x0e03
@..api_idx_0038.l9:
    cmp word [data_5b3e], byte 1     ; 0x0e06
    je short @..api_idx_0038.l10     ; 0x0e0b
    jmp near @..api_idx_0038.l14     ; 0x0e0d
@..api_idx_0038.l10:
    mov ax, word [bp - 0x0018]       ; 0x0e10
    jmp near @..api_idx_0038.l12     ; 0x0e13

    db 0x8d, 0x46, 0xf2, 0x50, 0x8d, 0x46, 0xf4, 0x50, 0xe8, 0x32, 0xe2, 0x83, 0xc4, 0x04, 0xb8, 0x04
    db 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0x8b, 0x46, 0xf2, 0x8b, 0x4e, 0xfa, 0x03, 0x4e, 0xf0, 0x83
    db 0xc1, 0x0e, 0x2b, 0xc1, 0x50, 0xe8, 0x84, 0xa9, 0x83, 0xc4, 0x06, 0x89, 0x46, 0xec, 0x8d, 0x46
    db 0xf2, 0x50, 0x8d, 0x46, 0xf4, 0x50, 0xe8, 0x04, 0xe2, 0x83, 0xc4, 0x04, 0x89, 0x46, 0xe4, 0xff
    db 0x76, 0xee, 0xb8, 0x00, 0x00, 0x50, 0x8b, 0x46, 0xf2, 0x8b, 0x4e, 0xfa, 0x83, 0xc1, 0x0e, 0x2b
    db 0xc1, 0x2b, 0x46, 0xec, 0x50, 0xe8, 0x54, 0xa9, 0x83, 0xc4, 0x06, 0x89, 0x46, 0xf0, 0x83, 0x7e
    db 0x0c, 0x07, 0x7e, 0x20, 0xb9, 0x64, 0x00, 0xf7, 0xe9, 0x50, 0x8b, 0x46, 0xee, 0xf7, 0xe9, 0x05
    db 0x64, 0x00, 0x8b, 0x4e, 0x0c, 0x83, 0xc1, 0xfa, 0x99, 0xf7, 0xf9, 0x8b, 0xc8, 0x58, 0x99, 0xf7
    db 0xf9, 0x89, 0x46, 0xea, 0xff, 0x76, 0xde, 0xff, 0x76, 0xe0, 0xff, 0x76, 0xea, 0xb8, 0x07, 0x00
    db 0x50, 0xb8, 0x0f, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05
    db 0x5d, 0x00, 0x50, 0xe8, 0xdb, 0xb0, 0x83, 0xc4, 0x0e, 0xff, 0x76, 0xf0, 0xb8, 0x07, 0x00, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc1
    db 0x00, 0x50, 0xe8, 0xfd, 0xb0, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x8b, 0x46, 0xfa
    db 0x03, 0x46, 0xf0, 0x05, 0x12, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc9, 0x00, 0x50, 0x8b, 0x46
    db 0xfa, 0x03, 0x46, 0xf0, 0x05, 0x0e, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc1, 0x00, 0x50, 0xb8
    db 0x00, 0x00, 0x50, 0xe8, 0x9a, 0xab, 0x83, 0xc4, 0x0e, 0x8b, 0x46, 0xfa, 0x05, 0x30, 0x00, 0x50
    db 0x8b, 0x46, 0xfc, 0x05, 0xc9, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46
    db 0xfc, 0x05, 0x5d, 0x00, 0x50, 0xe8, 0xac, 0xd9, 0x83, 0xc4, 0x08, 0x83, 0x7e, 0xe4, 0x00, 0x74
    db 0x03, 0xe9, 0x0a, 0xff, 0xe9, 0x97, 0x02, 0x83, 0x7e, 0xe8, 0x01, 0x75, 0x31, 0xb8, 0x01, 0x00
    db 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x0c, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc9, 0x00, 0x50, 0x8b
    db 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc1, 0x00, 0x50, 0xe8, 0x52, 0xaf
    db 0x83, 0xc4, 0x0a, 0x83, 0x7e, 0xea, 0x00, 0x7e, 0x03, 0xff, 0x4e, 0xea, 0xeb, 0x34, 0xb8, 0x01
    db 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x30, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc9, 0x00, 0x50
    db 0x8b, 0x46, 0xfa, 0x05, 0x2a, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc1, 0x00, 0x50, 0xe8, 0x21
    db 0xaf, 0x83, 0xc4, 0x0a, 0x8b, 0x46, 0x0c, 0x05, 0xf9, 0xff, 0x3b, 0x46, 0xea, 0x7e, 0x03, 0xff
    db 0x46, 0xea, 0x83, 0x7e, 0x0c, 0x07, 0x7e, 0x2c, 0xff, 0x76, 0xee, 0xb8, 0x00, 0x00, 0x50, 0xb8
    db 0x64, 0x00, 0xf7, 0x6e, 0xee, 0x05, 0x64, 0x00, 0x8b, 0x4e, 0x0c, 0x83, 0xc1, 0xf9, 0x99, 0xf7
    db 0xf9, 0xf7, 0x6e, 0xea, 0xb9, 0x64, 0x00, 0x99, 0xf7, 0xf9, 0x50, 0xe8, 0xee, 0xa7, 0x83, 0xc4
    db 0x06, 0x89, 0x46, 0xf0, 0xff, 0x76, 0xde, 0xff, 0x76, 0xe0, 0xff, 0x76, 0xea, 0xb8, 0x07, 0x00
    db 0x50, 0xb8, 0x0f, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05
    db 0x5d, 0x00, 0x50, 0xe8, 0x9b, 0xaf, 0x83, 0xc4, 0x0e, 0xff, 0x76, 0xf0, 0xb8, 0x07, 0x00, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc1
    db 0x00, 0x50, 0xe8, 0xbd, 0xaf, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x8b, 0x46, 0xfa
    db 0x03, 0x46, 0xf0, 0x05, 0x12, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc9, 0x00, 0x50, 0x8b, 0x46
    db 0xfa, 0x03, 0x46, 0xf0, 0x05, 0x0e, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc1, 0x00, 0x50, 0xb8
    db 0x00, 0x00, 0x50, 0xe8, 0x5a, 0xaa, 0x83, 0xc4, 0x0e, 0x8b, 0x46, 0xfa, 0x05, 0x30, 0x00, 0x50
    db 0x8b, 0x46, 0xfc, 0x05, 0xc9, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46
    db 0xfc, 0x05, 0x5d, 0x00, 0x50, 0xe8, 0x6c, 0xd8, 0x83, 0xc4, 0x08, 0xe9, 0x60, 0x01, 0x83, 0x7e
    db 0x06, 0x00, 0x74, 0x48, 0xb8, 0x01, 0x00, 0x50, 0x50, 0xb8, 0x0c, 0x00, 0x50, 0x8b, 0x46, 0xfa
    db 0x05, 0x07, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x08, 0x00, 0x50, 0xe8, 0xcb, 0xad, 0x83, 0xc4
    db 0x0a, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x0c, 0x00, 0x50, 0x8b, 0x46, 0xfa
    db 0x05, 0x07, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x08, 0x00, 0x50, 0xe8, 0xab, 0xad, 0x83, 0xc4
    db 0x0a, 0xc7, 0x06, 0x50, 0x90, 0x00, 0x00, 0xc7, 0x46, 0xe6, 0x00, 0x00, 0xe9, 0x0f, 0x01, 0x83
    db 0x7e, 0x08, 0x00, 0x74, 0x48, 0xb8, 0x01, 0x00, 0x50, 0x50, 0xb8, 0x0c, 0x00, 0x50, 0x8b, 0x46
    db 0xfa, 0x05, 0x17, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x08, 0x00, 0x50, 0xe8, 0x7a, 0xad, 0x83
    db 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x0c, 0x00, 0x50, 0x8b, 0x46
    db 0xfa, 0x05, 0x17, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x08, 0x00, 0x50, 0xe8, 0x5a, 0xad, 0x83
    db 0xc4, 0x0a, 0xc7, 0x06, 0x50, 0x90, 0x01, 0x00, 0xc7, 0x46, 0xe6, 0x00, 0x00, 0xe9, 0xbe, 0x00
    db 0x83, 0x7e, 0x0a, 0x00, 0x74, 0x48, 0xb8, 0x01, 0x00, 0x50, 0x50, 0xb8, 0x0c, 0x00, 0x50, 0x8b
    db 0x46, 0xfa, 0x05, 0x27, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x08, 0x00, 0x50, 0xe8, 0x29, 0xad
    db 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x0c, 0x00, 0x50, 0x8b
    db 0x46, 0xfa, 0x05, 0x27, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x08, 0x00, 0x50, 0xe8, 0x09, 0xad
    db 0x83, 0xc4, 0x0a, 0xc7, 0x06, 0x50, 0x90, 0x02, 0x00, 0xc7, 0x46, 0xe6, 0x00, 0x00, 0xeb, 0x6e

@..api_idx_0038.l11:
    mov ax, word [bp - 0x0016]       ; 0x1166
    add ax, word [bp - 0x0018]       ; 0x1169
    add ax, strict word 0xfffa       ; 0x116c
    mov word [bp - 0x0020], ax       ; 0x116f
    push word [bp - 0x0022]          ; 0x1172
    push ax                          ; 0x1175
    push word [bp - 0x0016]          ; 0x1176
    mov ax, 7                        ; 0x1179
    push ax                          ; 0x117c
    mov ax, 0xf                      ; 0x117d
    push ax                          ; 0x1180
    mov ax, word [bp - 0x0006]       ; 0x1181
    add ax, strict word 6            ; 0x1184
    push ax                          ; 0x1187
    mov ax, word [bp - 0x0004]       ; 0x1188
    add ax, strict word 0x5d         ; 0x118b
    push ax                          ; 0x118e
    call ds_dispatch_bf97            ; 0x118f
    add sp, byte 0x0e                ; 0x1192
    mov ax, word [bp - 0x0006]       ; 0x1195
    add ax, strict word 0x30         ; 0x1198
    push ax                          ; 0x119b
    mov ax, word [bp - 0x0004]       ; 0x119c
    add ax, 0xb9                     ; 0x119f
    push ax                          ; 0x11a2
    mov ax, word [bp - 0x0006]       ; 0x11a3
    add ax, strict word 6            ; 0x11a6
    push ax                          ; 0x11a9
    mov ax, word [bp - 0x0004]       ; 0x11aa
    add ax, strict word 0x5d         ; 0x11ad
    push ax                          ; 0x11b0
    call ds_dispatch_e8da            ; 0x11b1
    add sp, byte 8                   ; 0x11b4
    jmp short @..api_idx_0038.l14    ; 0x11b7
    db 0x5d, 0x5e, 0x84, 0x5f, 0x84, 0x5f, 0xbb, 0x60, 0x0c, 0x61, 0x5d, 0x61
@..api_idx_0038.l12:
    cmp ax, strict word 6            ; 0x11c5
    jae short @..api_idx_0038.l13    ; 0x11c8
    xchg bx, ax                      ; 0x11ca
    shl bx, 1                        ; 0x11cb
    jmp [cs:bx + 0x6200]             ; 0x11cd
@..api_idx_0038.l13:
    jmp short @..api_idx_0038.l11    ; 0x11d2
@..api_idx_0038.l14:
    cmp word [bp - 0x001a], byte 0   ; 0x11d4
    je short @..api_idx_0038.l15     ; 0x11d8
    jmp near @..api_idx_0038.l5      ; 0x11da
@..api_idx_0038.l15:
    mov ax, 1                        ; 0x11dd
    push ax                          ; 0x11e0
    push word [bp - 0x0038]          ; 0x11e1
    call ds_dispatch_c459            ; 0x11e4
    add sp, byte 4                   ; 0x11e7
    mov ax, word [bp - 0x0020]       ; 0x11ea
    mov word [data_904e], ax         ; 0x11ed
    mov ax, word [data_9050]         ; 0x11f0
    ret                              ; 0x11f3
api_idx_0026:
    mov ax, 0xffda                   ; 0x11f4
    call ds_dispatch_f40b            ; 0x11f7
    mov word [data_904e], 0xffff     ; 0x11fa
    mov word [bp - 0x0002], 0x37     ; 0x1200
    mov word [bp - 0x0004], 0x8f     ; 0x1205
    mov word [bp - 0x0006], 0x108    ; 0x120a
    mov word [bp - 0x0008], 0xc5     ; 0x120f
    mov ax, 0x90b5                   ; 0x1214
    push ax                          ; 0x1217
    mov ax, word [bp - 0x0008]       ; 0x1218
    inc ax                           ; 0x121b
    push ax                          ; 0x121c
    mov ax, word [bp - 0x0006]       ; 0x121d
    inc ax                           ; 0x1220
    push ax                          ; 0x1221
    mov ax, word [bp - 0x0004]       ; 0x1222
    dec ax                           ; 0x1225
    push ax                          ; 0x1226
    mov ax, word [bp - 0x0002]       ; 0x1227
    dec ax                           ; 0x122a
    push ax                          ; 0x122b
    call ds_dispatch_c283            ; 0x122c
    add sp, byte 0x0a                ; 0x122f
    mov word [bp - 0x0026], ax       ; 0x1232
    push word [bp - 0x0008]          ; 0x1235
    push word [bp - 0x0006]          ; 0x1238
    push word [bp - 0x0004]          ; 0x123b
    push word [bp - 0x0002]          ; 0x123e
    call ds_dispatch_bc9a            ; 0x1241
    add sp, byte 8                   ; 0x1244
    lea ax, word [bp - 0x0024]       ; 0x1247
    push ax                          ; 0x124a
    push word [bp + 0x4]             ; 0x124b
    call ds_dispatch_b53b            ; 0x124e
    add sp, byte 4                   ; 0x1251
    lea ax, word [bp - 0x0024]       ; 0x1254
    push ax                          ; 0x1257
    push word [bp + 0x6]             ; 0x1258
    mov ax, 1                        ; 0x125b
    push ax                          ; 0x125e
    mov ax, 0x20                     ; 0x125f
    push ax                          ; 0x1262
    mov ax, word [bp - 0x0004]       ; 0x1263
    add ax, strict word 7            ; 0x1266
    push ax                          ; 0x1269
    mov ax, word [bp - 0x0002]       ; 0x126a
    add ax, strict word 8            ; 0x126d
    push ax                          ; 0x1270
    call ds_dispatch_c0c1            ; 0x1271
    add sp, byte 0x0c                ; 0x1274
    lea ax, word [bp - 0x0024]       ; 0x1277
    push ax                          ; 0x127a
    mov ax, word [bp + 0x4]          ; 0x127b
    inc ax                           ; 0x127e
    push ax                          ; 0x127f
    call ds_dispatch_b53b            ; 0x1280
    add sp, byte 4                   ; 0x1283
    lea ax, word [bp - 0x0024]       ; 0x1286
    push ax                          ; 0x1289
    push word [bp + 0x8]             ; 0x128a
    mov ax, 1                        ; 0x128d
    push ax                          ; 0x1290
    mov ax, 0xc                      ; 0x1291
    push ax                          ; 0x1294
    mov ax, word [bp - 0x0004]       ; 0x1295
    add ax, strict word 0x17         ; 0x1298
    push ax                          ; 0x129b
    mov ax, word [bp - 0x0002]       ; 0x129c
    add ax, strict word 8            ; 0x129f
    push ax                          ; 0x12a2
    call ds_dispatch_c0c1            ; 0x12a3
    add sp, byte 0x0c                ; 0x12a6
    lea ax, word [bp - 0x0024]       ; 0x12a9
    push ax                          ; 0x12ac
    mov ax, word [bp + 0x4]          ; 0x12ad
    inc ax                           ; 0x12b0
    inc ax                           ; 0x12b1
    push ax                          ; 0x12b2
    call ds_dispatch_b53b            ; 0x12b3
    add sp, byte 4                   ; 0x12b6
    lea ax, word [bp - 0x0024]       ; 0x12b9
    push ax                          ; 0x12bc
    push word [bp + 0xa]             ; 0x12bd
    mov ax, 1                        ; 0x12c0
    push ax                          ; 0x12c3
    mov ax, 0xc                      ; 0x12c4
    push ax                          ; 0x12c7
    mov ax, word [bp - 0x0004]       ; 0x12c8
    add ax, strict word 0x27         ; 0x12cb
    push ax                          ; 0x12ce
    mov ax, word [bp - 0x0002]       ; 0x12cf
    add ax, strict word 8            ; 0x12d2
    push ax                          ; 0x12d5
    call ds_dispatch_c0c1            ; 0x12d6
    add sp, byte 0x0c                ; 0x12d9
    lea ax, word [bp - 0x0024]       ; 0x12dc
    push ax                          ; 0x12df
    mov ax, word [bp + 0x4]          ; 0x12e0
    inc ax                           ; 0x12e3
    inc ax                           ; 0x12e4
    inc ax                           ; 0x12e5
    push ax                          ; 0x12e6
    call ds_dispatch_b53b            ; 0x12e7
    add sp, byte 4                   ; 0x12ea
    mov ax, 0xc2                     ; 0x12ed
    push ax                          ; 0x12f0
    mov ax, 0x9b                     ; 0x12f1
    push ax                          ; 0x12f4
    call ds_dispatch_e823            ; 0x12f5
    add sp, byte 4                   ; 0x12f8
    mov ax, word [bp - 0x0004]       ; 0x12fb
    add ax, strict word 0x16         ; 0x12fe
    push ax                          ; 0x1301
    lea ax, word [bp - 0x0024]       ; 0x1302
    push ax                          ; 0x1305
    call ds_dispatch_fa90            ; 0x1306
    pop cx                           ; 0x1309
    mov cx, ax                       ; 0x130a
    mov ax, 0x11                     ; 0x130c
    sub ax, cx                       ; 0x130f
    mov cx, 6                        ; 0x1311
    imul cx                          ; 0x1314
    inc ax                           ; 0x1316
    inc ax                           ; 0x1317
    mov cx, data_0002                ; 0x1318
    cwd                              ; 0x131b
    idiv cx                          ; 0x131c
    add ax, word [bp - 0x0002]       ; 0x131e
    add ax, strict word 0x5d         ; 0x1321
    push ax                          ; 0x1324
    call ds_dispatch_e809            ; 0x1325
    add sp, byte 4                   ; 0x1328
    mov ax, 0                        ; 0x132b
    push ax                          ; 0x132e
    lea ax, word [bp - 0x0024]       ; 0x132f
    push ax                          ; 0x1332
    call ds_dispatch_e84e            ; 0x1333
    add sp, byte 4                   ; 0x1336
    push word [bp + 0xc]             ; 0x1339
    mov ax, 0xe38                    ; 0x133c
    push ax                          ; 0x133f
    call ds_dispatch_f364            ; 0x1340
    add sp, byte 4                   ; 0x1343
    mov ax, 1                        ; 0x1346
    push ax                          ; 0x1349
    mov ax, 0                        ; 0x134a
    push ax                          ; 0x134d
    push ax                          ; 0x134e
    mov ax, 1                        ; 0x134f
    push ax                          ; 0x1352
    mov ax, 0x11                     ; 0x1353
    push ax                          ; 0x1356
    mov ax, word [bp - 0x0004]       ; 0x1357
    add ax, strict word 0x1f         ; 0x135a
    push ax                          ; 0x135d
    mov ax, word [bp - 0x0002]       ; 0x135e
    add ax, strict word 0x5d         ; 0x1361
    push ax                          ; 0x1364
    call ds_dispatch_bf97            ; 0x1365
    add sp, byte 0x0e                ; 0x1368
    mov ax, 0                        ; 0x136b
    push ax                          ; 0x136e
    mov ax, 0x20                     ; 0x136f
    push ax                          ; 0x1372
    mov ax, word [bp - 0x0004]       ; 0x1373
    add ax, strict word 0x25         ; 0x1376
    push ax                          ; 0x1379
    mov ax, word [bp - 0x0002]       ; 0x137a
    add ax, 0xc5                     ; 0x137d
    push ax                          ; 0x1380
    mov ax, word [bp - 0x0004]       ; 0x1381
    add ax, strict word 0x1f         ; 0x1384
    push ax                          ; 0x1387
    mov ax, word [bp - 0x0002]       ; 0x1388
    add ax, strict word 0x5d         ; 0x138b
    push ax                          ; 0x138e
    mov ax, 0                        ; 0x138f
    push ax                          ; 0x1392
    call ds_dispatch_baa6            ; 0x1393
    add sp, byte 0x0e                ; 0x1396
    mov ax, 0                        ; 0x1399
    push ax                          ; 0x139c
    push ax                          ; 0x139d
    mov ax, word [bp - 0x0004]       ; 0x139e
    add ax, strict word 0xf          ; 0x13a1
    push ax                          ; 0x13a4
    mov ax, word [bp - 0x0002]       ; 0x13a5
    add ax, strict word 0x50         ; 0x13a8
    push ax                          ; 0x13ab
    mov ax, word [bp - 0x0004]       ; 0x13ac
    add ax, strict word 7            ; 0x13af
    push ax                          ; 0x13b2
    mov ax, word [bp - 0x0002]       ; 0x13b3
    add ax, strict word 8            ; 0x13b6
    push ax                          ; 0x13b9
    mov ax, 1                        ; 0x13ba
    push ax                          ; 0x13bd
    call ds_dispatch_baa6            ; 0x13be
    add sp, byte 0x0e                ; 0x13c1
    mov ax, 0                        ; 0x13c4
    push ax                          ; 0x13c7
    mov ax, 0xd                      ; 0x13c8
    push ax                          ; 0x13cb
    mov ax, word [bp - 0x0004]       ; 0x13cc
    add ax, strict word 0x1f         ; 0x13cf
    push ax                          ; 0x13d2
    mov ax, word [bp - 0x0002]       ; 0x13d3
    add ax, strict word 0x50         ; 0x13d6
    push ax                          ; 0x13d9
    mov ax, word [bp - 0x0004]       ; 0x13da
    add ax, strict word 0x17         ; 0x13dd
    push ax                          ; 0x13e0
    mov ax, word [bp - 0x0002]       ; 0x13e1
    add ax, strict word 8            ; 0x13e4
    push ax                          ; 0x13e7
    mov ax, data_0002                ; 0x13e8
    push ax                          ; 0x13eb
    call ds_dispatch_baa6            ; 0x13ec
    add sp, byte 0x0e                ; 0x13ef
    mov ax, 0                        ; 0x13f2
    push ax                          ; 0x13f5
    mov ax, 0x1b                     ; 0x13f6
    push ax                          ; 0x13f9
    mov ax, word [bp - 0x0004]       ; 0x13fa
    add ax, strict word 0x2f         ; 0x13fd
    push ax                          ; 0x1400
    mov ax, word [bp - 0x0002]       ; 0x1401
    add ax, strict word 0x50         ; 0x1404
    push ax                          ; 0x1407
    mov ax, word [bp - 0x0004]       ; 0x1408
    add ax, strict word 0x27         ; 0x140b
    push ax                          ; 0x140e
    mov ax, word [bp - 0x0002]       ; 0x140f
    add ax, strict word 8            ; 0x1412
    push ax                          ; 0x1415
    mov ax, 3                        ; 0x1416
    push ax                          ; 0x1419
    call ds_dispatch_baa6            ; 0x141a
    add sp, byte 0x0e                ; 0x141d
    mov ax, 0                        ; 0x1420
    push ax                          ; 0x1423
    push ax                          ; 0x1424
    push ax                          ; 0x1425
    push ax                          ; 0x1426
    push ax                          ; 0x1427
    mov ax, 0xffff                   ; 0x1428
    push ax                          ; 0x142b
    mov ax, 4                        ; 0x142c
    push ax                          ; 0x142f
    call ds_dispatch_baa6            ; 0x1430
    add sp, byte 0x0e                ; 0x1433
    mov ax, word [bp - 0x0008]       ; 0x1436
    inc ax                           ; 0x1439
    push ax                          ; 0x143a
    mov ax, word [bp - 0x0006]       ; 0x143b
    inc ax                           ; 0x143e
    push ax                          ; 0x143f
    mov ax, word [bp - 0x0004]       ; 0x1440
    dec ax                           ; 0x1443
    push ax                          ; 0x1444
    mov ax, word [bp - 0x0002]       ; 0x1445
    dec ax                           ; 0x1448
    push ax                          ; 0x1449
    call ds_dispatch_e8da            ; 0x144a
    add sp, byte 8                   ; 0x144d
    call ds_dispatch_ec17            ; 0x1450
    mov ax, 0                        ; 0x1453
    push ax                          ; 0x1456
    mov ax, 1                        ; 0x1457
    push ax                          ; 0x145a
    mov ax, 0                        ; 0x145b
    push ax                          ; 0x145e
    mov ax, 7                        ; 0x145f
    push ax                          ; 0x1462
    mov ax, word [bp - 0x0004]       ; 0x1463
    add ax, strict word 0x20         ; 0x1466
    push ax                          ; 0x1469
    mov ax, word [bp - 0x0002]       ; 0x146a
    add ax, strict word 0x5f         ; 0x146d
    push ax                          ; 0x1470
    mov ax, 0xe38                    ; 0x1471
    push ax                          ; 0x1474
    call api_idx_0008                ; 0x1475
    add sp, byte 0x0e                ; 0x1478
    mov ax, 0xe38                    ; 0x147b
    push ax                          ; 0x147e
    push word [bp + 0xc]             ; 0x147f
    call ds_dispatch_f364            ; 0x1482
    add sp, byte 4                   ; 0x1485
    mov ax, 1                        ; 0x1488
    push ax                          ; 0x148b
    mov ax, 0xffff                   ; 0x148c
    push ax                          ; 0x148f
    mov ax, 0                        ; 0x1490
    push ax                          ; 0x1493
    mov ax, 1                        ; 0x1494
    push ax                          ; 0x1497
    mov ax, 0x11                     ; 0x1498
    push ax                          ; 0x149b
    mov ax, word [bp - 0x0004]       ; 0x149c
    add ax, strict word 0x1f         ; 0x149f
    push ax                          ; 0x14a2
    mov ax, word [bp - 0x0002]       ; 0x14a3
    add ax, strict word 0x5d         ; 0x14a6
    push ax                          ; 0x14a9
    call ds_dispatch_bf97            ; 0x14aa
    add sp, byte 0x0e                ; 0x14ad
    mov ax, word [bp - 0x0004]       ; 0x14b0
    add ax, strict word 0x26         ; 0x14b3
    push ax                          ; 0x14b6
    mov ax, word [bp - 0x0002]       ; 0x14b7
    add ax, 0xc5                     ; 0x14ba
    push ax                          ; 0x14bd
    mov ax, word [bp - 0x0004]       ; 0x14be
    add ax, strict word 0x1f         ; 0x14c1
    push ax                          ; 0x14c4
    mov ax, word [bp - 0x0002]       ; 0x14c5
    add ax, strict word 0x5d         ; 0x14c8
    push ax                          ; 0x14cb
    call ds_dispatch_e8da            ; 0x14cc
    add sp, byte 8                   ; 0x14cf
    mov word [bp - 0x0010], 1        ; 0x14d2
@..api_idx_0026.l1:
    mov ax, 0x59fe                   ; 0x14d7
    push ax                          ; 0x14da
    call ds_dispatch_b90d            ; 0x14db
    pop cx                           ; 0x14de
    dec ax                           ; 0x14df
    mov word [bp - 0x000e], ax       ; 0x14e0
    cmp word [data_5b3e], byte 1     ; 0x14e3
    je short @..api_idx_0026.l2      ; 0x14e8
    jmp near @..api_idx_0026.l14     ; 0x14ea
@..api_idx_0026.l2:
    jmp near @..api_idx_0026.l10     ; 0x14ed
@..api_idx_0026.l3:
    call ds_dispatch_ec17            ; 0x14f0
    mov ax, 1                        ; 0x14f3
    push ax                          ; 0x14f6
    mov ax, 0                        ; 0x14f7
    push ax                          ; 0x14fa
    push ax                          ; 0x14fb
    mov ax, 1                        ; 0x14fc
    push ax                          ; 0x14ff
    mov ax, 0x11                     ; 0x1500
    push ax                          ; 0x1503
    mov ax, word [bp - 0x0004]       ; 0x1504
    add ax, strict word 0x1f         ; 0x1507
    push ax                          ; 0x150a
    mov ax, word [bp - 0x0002]       ; 0x150b
    add ax, strict word 0x5d         ; 0x150e
    push ax                          ; 0x1511
    call ds_dispatch_bf97            ; 0x1512
    add sp, byte 0x0e                ; 0x1515
    mov ax, word [bp - 0x0004]       ; 0x1518
    add ax, strict word 0x26         ; 0x151b
    push ax                          ; 0x151e
    mov ax, word [bp - 0x0002]       ; 0x151f
    add ax, 0xc5                     ; 0x1522
    push ax                          ; 0x1525
    mov ax, word [bp - 0x0004]       ; 0x1526
    add ax, strict word 0x1f         ; 0x1529
    push ax                          ; 0x152c
    mov ax, word [bp - 0x0002]       ; 0x152d
    add ax, strict word 0x5d         ; 0x1530
    push ax                          ; 0x1533
    call ds_dispatch_e8da            ; 0x1534
    add sp, byte 8                   ; 0x1537
    mov ax, 0                        ; 0x153a
    push ax                          ; 0x153d
    mov ax, 1                        ; 0x153e
    push ax                          ; 0x1541
    mov ax, 0                        ; 0x1542
    push ax                          ; 0x1545
    mov ax, 7                        ; 0x1546
    push ax                          ; 0x1549
    mov ax, word [bp - 0x0004]       ; 0x154a
    add ax, strict word 0x20         ; 0x154d
    push ax                          ; 0x1550
    mov ax, word [bp - 0x0002]       ; 0x1551
    add ax, strict word 0x5f         ; 0x1554
    push ax                          ; 0x1557
    mov ax, 0xe38                    ; 0x1558
    push ax                          ; 0x155b
    call api_idx_0008                ; 0x155c
    add sp, byte 0x0e                ; 0x155f
    mov ax, 0xe38                    ; 0x1562
    push ax                          ; 0x1565
    push word [bp + 0xc]             ; 0x1566
    call ds_dispatch_f364            ; 0x1569
    add sp, byte 4                   ; 0x156c
    mov ax, 1                        ; 0x156f
    push ax                          ; 0x1572
    mov ax, 0xffff                   ; 0x1573
    push ax                          ; 0x1576
    mov ax, 0                        ; 0x1577
    push ax                          ; 0x157a
    mov ax, 1                        ; 0x157b
    push ax                          ; 0x157e
    mov ax, 0x11                     ; 0x157f
    push ax                          ; 0x1582
    mov ax, word [bp - 0x0004]       ; 0x1583
    add ax, strict word 0x1f         ; 0x1586
    push ax                          ; 0x1589
    mov ax, word [bp - 0x0002]       ; 0x158a
    add ax, strict word 0x5d         ; 0x158d
    push ax                          ; 0x1590
    call ds_dispatch_bf97            ; 0x1591
    add sp, byte 0x0e                ; 0x1594
    mov ax, word [bp - 0x0004]       ; 0x1597
    add ax, strict word 0x26         ; 0x159a
    push ax                          ; 0x159d
    mov ax, word [bp - 0x0002]       ; 0x159e
    add ax, 0xc5                     ; 0x15a1
    push ax                          ; 0x15a4
    mov ax, word [bp - 0x0004]       ; 0x15a5
    add ax, strict word 0x1f         ; 0x15a8
    push ax                          ; 0x15ab
    mov ax, word [bp - 0x0002]       ; 0x15ac
    add ax, strict word 0x5d         ; 0x15af
    push ax                          ; 0x15b2
    call ds_dispatch_e8da            ; 0x15b3
    add sp, byte 8                   ; 0x15b6
    jmp near @..api_idx_0026.l14     ; 0x15b9
@..api_idx_0026.l4:
    cmp word [bp + 0x6], byte 0      ; 0x15bc
    je short @..api_idx_0026.l5      ; 0x15c0
    mov ax, 1                        ; 0x15c2
    push ax                          ; 0x15c5
    push ax                          ; 0x15c6
    mov ax, 0xc                      ; 0x15c7
    push ax                          ; 0x15ca
    mov ax, word [bp - 0x0004]       ; 0x15cb
    add ax, strict word 7            ; 0x15ce
    push ax                          ; 0x15d1
    mov ax, word [bp - 0x0002]       ; 0x15d2
    add ax, strict word 8            ; 0x15d5
    push ax                          ; 0x15d8
    call ds_dispatch_be5f            ; 0x15d9
    add sp, byte 0x0a                ; 0x15dc
    mov ax, 0                        ; 0x15df
    push ax                          ; 0x15e2
    mov ax, 1                        ; 0x15e3
    push ax                          ; 0x15e6
    mov ax, 0xc                      ; 0x15e7
    push ax                          ; 0x15ea
    mov ax, word [bp - 0x0004]       ; 0x15eb
    add ax, strict word 7            ; 0x15ee
    push ax                          ; 0x15f1
    mov ax, word [bp - 0x0002]       ; 0x15f2
    add ax, strict word 8            ; 0x15f5
    push ax                          ; 0x15f8
    call ds_dispatch_be5f            ; 0x15f9
    add sp, byte 0x0a                ; 0x15fc
    mov word [data_9050], 0          ; 0x15ff
    mov word [bp - 0x0010], 0        ; 0x1605
@..api_idx_0026.l5:
    jmp near @..api_idx_0026.l14     ; 0x160a
@..api_idx_0026.l6:
    cmp word [bp + 0x8], byte 0      ; 0x160d
    je short @..api_idx_0026.l7      ; 0x1611
    mov ax, 1                        ; 0x1613
    push ax                          ; 0x1616
    push ax                          ; 0x1617
    mov ax, 0xc                      ; 0x1618
    push ax                          ; 0x161b
    mov ax, word [bp - 0x0004]       ; 0x161c
    add ax, strict word 0x17         ; 0x161f
    push ax                          ; 0x1622
    mov ax, word [bp - 0x0002]       ; 0x1623
    add ax, strict word 8            ; 0x1626
    push ax                          ; 0x1629
    call ds_dispatch_be5f            ; 0x162a
    add sp, byte 0x0a                ; 0x162d
    mov ax, 0                        ; 0x1630
    push ax                          ; 0x1633
    mov ax, 1                        ; 0x1634
    push ax                          ; 0x1637
    mov ax, 0xc                      ; 0x1638
    push ax                          ; 0x163b
    mov ax, word [bp - 0x0004]       ; 0x163c
    add ax, strict word 0x17         ; 0x163f
    push ax                          ; 0x1642
    mov ax, word [bp - 0x0002]       ; 0x1643
    add ax, strict word 8            ; 0x1646
    push ax                          ; 0x1649
    call ds_dispatch_be5f            ; 0x164a
    add sp, byte 0x0a                ; 0x164d
    mov word [data_9050], 1          ; 0x1650
    mov word [bp - 0x0010], 0        ; 0x1656
@..api_idx_0026.l7:
    jmp short @..api_idx_0026.l14    ; 0x165b
@..api_idx_0026.l8:
    cmp word [bp + 0xa], byte 0      ; 0x165d
    je short @..api_idx_0026.l9      ; 0x1661
    mov ax, 1                        ; 0x1663
    push ax                          ; 0x1666
    push ax                          ; 0x1667
    mov ax, 0xc                      ; 0x1668
    push ax                          ; 0x166b
    mov ax, word [bp - 0x0004]       ; 0x166c
    add ax, strict word 0x27         ; 0x166f
    push ax                          ; 0x1672
    mov ax, word [bp - 0x0002]       ; 0x1673
    add ax, strict word 8            ; 0x1676
    push ax                          ; 0x1679
    call ds_dispatch_be5f            ; 0x167a
    add sp, byte 0x0a                ; 0x167d
    mov ax, 0                        ; 0x1680
    push ax                          ; 0x1683
    mov ax, 1                        ; 0x1684
    push ax                          ; 0x1687
    mov ax, 0xc                      ; 0x1688
    push ax                          ; 0x168b
    mov ax, word [bp - 0x0004]       ; 0x168c
    add ax, strict word 0x27         ; 0x168f
    push ax                          ; 0x1692
    mov ax, word [bp - 0x0002]       ; 0x1693
    add ax, strict word 8            ; 0x1696
    push ax                          ; 0x1699
    call ds_dispatch_be5f            ; 0x169a
    add sp, byte 0x0a                ; 0x169d
    mov word [data_9050], data_0002  ; 0x16a0
    mov word [bp - 0x0010], 0        ; 0x16a6
@..api_idx_0026.l9:
    jmp short @..api_idx_0026.l14    ; 0x16ab
@..api_idx_0026.l10:
    cmp ax, strict word 0            ; 0x16ad
    jne short @..api_idx_0026.l11    ; 0x16b0
    jmp near @..api_idx_0026.l3      ; 0x16b2
@..api_idx_0026.l11:
    cmp ax, strict word 1            ; 0x16b5
    jne short @..api_idx_0026.l12    ; 0x16b8
    jmp near @..api_idx_0026.l4      ; 0x16ba
@..api_idx_0026.l12:
    cmp ax, strict word 2            ; 0x16bd
    jne short @..api_idx_0026.l13    ; 0x16c0
    jmp near @..api_idx_0026.l6      ; 0x16c2
@..api_idx_0026.l13:
    cmp ax, strict word 3            ; 0x16c5
    je short @..api_idx_0026.l8      ; 0x16c8
@..api_idx_0026.l14:
    cmp word [bp - 0x0010], byte 0   ; 0x16ca
    je short @..api_idx_0026.l15     ; 0x16ce
    jmp near @..api_idx_0026.l1      ; 0x16d0
@..api_idx_0026.l15:
    mov ax, 1                        ; 0x16d3
    push ax                          ; 0x16d6
    push word [bp - 0x0026]          ; 0x16d7
    call ds_dispatch_c459            ; 0x16da
    add sp, byte 4                   ; 0x16dd
    mov word [data_904e], 0xffff     ; 0x16e0
    mov ax, word [data_9050]         ; 0x16e6
    ret                              ; 0x16e9
api_idx_000c:
    mov ax, 0xfff4                   ; 0x16ea
    call ds_dispatch_f40b            ; 0x16ed
    mov word [bp - 0x0002], 0        ; 0x16f0
@..api_idx_000c.l1:
    mov ax, 0x14                     ; 0x16f5
    imul word [bp - 0x0002]          ; 0x16f8
    mov cx, word [bp - 0x0002]       ; 0x16fb
    shl cx, 1                        ; 0x16fe
    mov bx, cx                       ; 0x1700
    mov cx, word [bx - 0x7cf2]       ; 0x1702
    shl cx, 1                        ; 0x1706
    add ax, cx                       ; 0x1708
    mov bx, ax                       ; 0x170a
    mov al, byte [bx + 0x1d4]        ; 0x170c
    mov byte [bp - 0x000c], al       ; 0x1710
    mov byte [bp - 0x000b], 0        ; 0x1713
    mov ax, 0                        ; 0x1717
    push ax                          ; 0x171a
    push ax                          ; 0x171b
    lea ax, word [bp - 0x000c]       ; 0x171c
    push ax                          ; 0x171f
    mov ax, 0                        ; 0x1720
    push ax                          ; 0x1723
    mov ax, 0xc7                     ; 0x1724
    push ax                          ; 0x1727
    mov ax, 0                        ; 0x1728
    push ax                          ; 0x172b
    mov ax, 0x13f                    ; 0x172c
    push ax                          ; 0x172f
    mov ax, 0                        ; 0x1730
    push ax                          ; 0x1733
    mov ax, 0xc                      ; 0x1734
    imul word [bp + 0x8]             ; 0x1737
    mov cx, word [bp - 0x0002]       ; 0x173a
    shl cx, 1                        ; 0x173d
    add ax, cx                       ; 0x173f
    mov bx, ax                       ; 0x1741
    mov ax, word [bx + 0x1bc]        ; 0x1743
    add ax, word [bp + 0x6]          ; 0x1747
    push ax                          ; 0x174a
    mov ax, word [bx + 0x1a4]        ; 0x174b
    add ax, word [bp + 0x4]          ; 0x174f
    push ax                          ; 0x1752
    mov ax, data_0002                ; 0x1753
    push ax                          ; 0x1756
    call ds_dispatch_efd1            ; 0x1757
    add sp, byte 0x16                ; 0x175a
    inc word [bp - 0x0002]           ; 0x175d
    mov ax, word [bp - 0x0002]       ; 0x1760
    cmp ax, strict word 6            ; 0x1763
    jl short @..api_idx_000c.l1      ; 0x1766
    ret                              ; 0x1768
api_idx_0004:
    mov ax, 0xfffc                   ; 0x1769
    call ds_dispatch_f40b            ; 0x176c
    mov ax, 0                        ; 0x176f
    push ax                          ; 0x1772
    push ax                          ; 0x1773
    push word [data_953a]            ; 0x1774
    push word [data_9538]            ; 0x1778
    call ds_dispatch_e942            ; 0x177c
    add sp, byte 8                   ; 0x177f
    mov word [bp - 0x0002], 0        ; 0x1782
@..api_idx_0004.l1:
    mov word [bp - 0x0004], 0        ; 0x1787
@..api_idx_0004.l2:
    mov ax, 0                        ; 0x178c
    push ax                          ; 0x178f
    mov ax, word [bp - 0x0002]       ; 0x1790
    shl ax, 1                        ; 0x1793
    shl ax, 1                        ; 0x1795
    mov cx, word [bp - 0x0004]       ; 0x1797
    shl cx, 1                        ; 0x179a
    add ax, cx                       ; 0x179c
    mov bx, ax                       ; 0x179e
    db 0xff, 0xb7, 0x06, 0x00 ; push word [bx + 0x6]
    call ds_dispatch_e823            ; 0x17a4
    add sp, byte 4                   ; 0x17a7
    mov ax, word [bp - 0x0002]       ; 0x17aa
    shl ax, 1                        ; 0x17ad
    shl ax, 1                        ; 0x17af
    shl ax, 1                        ; 0x17b1
    mov cx, word [bp - 0x0004]       ; 0x17b3
    shl cx, 1                        ; 0x17b6
    shl cx, 1                        ; 0x17b8
    add ax, cx                       ; 0x17ba
    mov bx, ax                       ; 0x17bc
    push word [bx + 0x15e]           ; 0x17be
    push word [bx + 0x15c]           ; 0x17c2
    call ds_dispatch_e809            ; 0x17c6
    add sp, byte 4                   ; 0x17c9
    mov ax, 3                        ; 0x17cc
    push ax                          ; 0x17cf
    push ax                          ; 0x17d0
    mov ax, 0x248                    ; 0x17d1
    imul word [bp + 0x4]             ; 0x17d4
    mov cx, word [bp - 0x0002]       ; 0x17d7
    shl cx, 1                        ; 0x17da
    shl cx, 1                        ; 0x17dc
    add ax, cx                       ; 0x17de
    mov cx, word [bp - 0x0004]       ; 0x17e0
    shl cx, 1                        ; 0x17e3
    add ax, cx                       ; 0x17e5
    mov bx, ax                       ; 0x17e7
    push word [bx + 0x5c1c]          ; 0x17e9
    call ds_dispatch_b2e7            ; 0x17ed
    add sp, byte 6                   ; 0x17f0
    inc word [bp - 0x0004]           ; 0x17f3
    mov ax, word [bp - 0x0004]       ; 0x17f6
    cmp ax, strict word 2            ; 0x17f9
    jl short @..api_idx_0004.l2      ; 0x17fc
    inc word [bp - 0x0002]           ; 0x17fe
    mov ax, word [bp - 0x0002]       ; 0x1801
    cmp ax, strict word 6            ; 0x1804
    jge short @..api_idx_0004.l3     ; 0x1807
    jmp near @..api_idx_0004.l1      ; 0x1809
@..api_idx_0004.l3:
    mov ax, 0                        ; 0x180c
    push ax                          ; 0x180f
    push ax                          ; 0x1810
    push ax                          ; 0x1811
    call api_idx_000c                ; 0x1812
    add sp, byte 6                   ; 0x1815
    ret                              ; 0x1818
api_idx_0002_3:
    mov ax, 0xfffe                   ; 0x1819
    call ds_dispatch_f40b            ; 0x181c
    mov word [bp - 0x0002], 0        ; 0x181f
@..api_idx_0002_3.l1:
    cmp word [bp + 0x4], byte 0      ; 0x1824
    jl short @..api_idx_0002_3.l2    ; 0x1828
    mov ax, word [bp - 0x0002]       ; 0x182a
    cmp ax, word [bp + 0x4]          ; 0x182d
    jne short @..api_idx_0002_3.l3   ; 0x1830
@..api_idx_0002_3.l2:
    mov ax, word [bp - 0x0002]       ; 0x1832
    shl ax, 1                        ; 0x1835
    mov bx, ax                       ; 0x1837
    inc word [bx - 0x7cf2]           ; 0x1839
@..api_idx_0002_3.l3:
    mov ax, 0x14                     ; 0x183d
    imul word [bp - 0x0002]          ; 0x1840
    mov cx, word [bp - 0x0002]       ; 0x1843
    shl cx, 1                        ; 0x1846
    mov bx, cx                       ; 0x1848
    mov cx, word [bx - 0x7cf2]       ; 0x184a
    shl cx, 1                        ; 0x184e
    add ax, cx                       ; 0x1850
    mov bx, ax                       ; 0x1852
    cmp word [bx + 0x1d4], byte 0xff ; 0x1854
    jne short @..api_idx_0002_3.l4   ; 0x1859
    mov ax, word [bp - 0x0002]       ; 0x185b
    shl ax, 1                        ; 0x185e
    mov bx, ax                       ; 0x1860
    mov word [bx - 0x7cf2], 0        ; 0x1862
@..api_idx_0002_3.l4:
    inc word [bp - 0x0002]           ; 0x1868
    mov ax, word [bp - 0x0002]       ; 0x186b
    cmp ax, strict word 6            ; 0x186e
    jl short @..api_idx_0002_3.l1    ; 0x1871
    ret                              ; 0x1873
api_idx_0002_4:
    mov ax, 0xfffe                   ; 0x1874
    call ds_dispatch_f40b            ; 0x1877
    mov word [bp - 0x0002], 0        ; 0x187a
@..api_idx_0002_4.l1:
    mov ax, word [bp - 0x0002]       ; 0x187f
    shl ax, 1                        ; 0x1882
    shl ax, 1                        ; 0x1884
    mov bx, ax                       ; 0x1886
    db 0x8b, 0x87, 0x4a, 0x00 ; mov ax, word [bx + 0x4a]
    cmp ax, word [bp + 0x4]          ; 0x188c
    jge short @..api_idx_0002_4.l2   ; 0x188f
    inc word [bp - 0x0002]           ; 0x1891
    jmp short @..api_idx_0002_4.l1   ; 0x1894
@..api_idx_0002_4.l2:
    mov ax, word [bp - 0x0002]       ; 0x1896
    shl ax, 1                        ; 0x1899
    shl ax, 1                        ; 0x189b
    mov bx, ax                       ; 0x189d
    db 0xff, 0xb7, 0x4a, 0x00 ; push word [bx + 0x4a]
    db 0xff, 0xb7, 0x48, 0x00 ; push word [bx + 0x48]
    mov ax, word [bp + 0x4]          ; 0x18a7
    add ax, word [bp + 0x6]          ; 0x18aa
    push ax                          ; 0x18ad
    call ds_dispatch_b7c2            ; 0x18ae
    add sp, byte 6                   ; 0x18b1
    ret                              ; 0x18b4
api_idx_0010:
    mov ax, 0xfff0                   ; 0x18b5
    call ds_dispatch_f40b            ; 0x18b8
    lea ax, word [bp - 0x000c]       ; 0x18bb
    push ax                          ; 0x18be
    lea ax, word [bp - 0x000a]       ; 0x18bf
    push ax                          ; 0x18c2
    mov ax, 0                        ; 0x18c3
    push ax                          ; 0x18c6
    mov ax, 5                        ; 0x18c7
    push ax                          ; 0x18ca
    call ds_dispatch_e7af            ; 0x18cb
    add sp, byte 8                   ; 0x18ce
    mov word [bp - 0x0006], dx       ; 0x18d1
    mov word [bp - 0x0008], ax       ; 0x18d4
    mov ax, word [bp - 0x000a]       ; 0x18d7
    mov word [bp - 0x000e], ax       ; 0x18da
    mov word [bp - 0x0004], 0        ; 0x18dd
    jmp near @..api_idx_0010.l7      ; 0x18e2
@..api_idx_0010.l1:
    mov word [bp - 0x0002], 0        ; 0x18e5
    jmp near @..api_idx_0010.l5      ; 0x18ea
@..api_idx_0010.l2:
    les bx, word [bp - 0x0008]       ; 0x18ed
    mov si, word [bp - 0x000e]       ; 0x18f0
    mov al, byte [es:bx + si]        ; 0x18f3
    sub ah, ah                       ; 0x18f6
    mov word [bp - 0x0010], ax       ; 0x18f8
    cmp ax, 0xff                     ; 0x18fb
    jne short @..api_idx_0010.l3     ; 0x18fe
    jmp near @..api_idx_0010.l4      ; 0x1900
@..api_idx_0010.l3:
    mov ax, 0xffff                   ; 0x1903
    push ax                          ; 0x1906
    push word [bp - 0x0010]          ; 0x1907
    call api_idx_0002_4              ; 0x190a
    add sp, byte 4                   ; 0x190d
    push ax                          ; 0x1910
    mov ax, word [bp - 0x0004]       ; 0x1911
    shl ax, 1                        ; 0x1914
    add ax, word [bp + 0x8]          ; 0x1916
    push ax                          ; 0x1919
    mov ax, word [bp - 0x0002]       ; 0x191a
    shl ax, 1                        ; 0x191d
    add ax, word [bp + 0x6]          ; 0x191f
    push ax                          ; 0x1922
    call ds_dispatch_e8f4            ; 0x1923
    add sp, byte 6                   ; 0x1926
    push word [bp - 0x0010]          ; 0x1929
    mov ax, word [bp - 0x0004]       ; 0x192c
    shl ax, 1                        ; 0x192f
    add ax, word [bp + 0x8]          ; 0x1931
    push ax                          ; 0x1934
    mov ax, word [bp - 0x0002]       ; 0x1935
    shl ax, 1                        ; 0x1938
    add ax, word [bp + 0x6]          ; 0x193a
    inc ax                           ; 0x193d
    push ax                          ; 0x193e
    call ds_dispatch_e8f4            ; 0x193f
    add sp, byte 6                   ; 0x1942
    push word [bp - 0x0010]          ; 0x1945
    mov ax, word [bp - 0x0004]       ; 0x1948
    shl ax, 1                        ; 0x194b
    add ax, word [bp + 0x8]          ; 0x194d
    inc ax                           ; 0x1950
    push ax                          ; 0x1951
    mov ax, word [bp - 0x0002]       ; 0x1952
    shl ax, 1                        ; 0x1955
    add ax, word [bp + 0x6]          ; 0x1957
    push ax                          ; 0x195a
    call ds_dispatch_e8f4            ; 0x195b
    add sp, byte 6                   ; 0x195e
    mov ax, 1                        ; 0x1961
    push ax                          ; 0x1964
    push word [bp - 0x0010]          ; 0x1965
    call api_idx_0002_4              ; 0x1968
    add sp, byte 4                   ; 0x196b
    push ax                          ; 0x196e
    mov ax, word [bp - 0x0004]       ; 0x196f
    shl ax, 1                        ; 0x1972
    add ax, word [bp + 0x8]          ; 0x1974
    inc ax                           ; 0x1977
    push ax                          ; 0x1978
    mov ax, word [bp - 0x0002]       ; 0x1979
    shl ax, 1                        ; 0x197c
    add ax, word [bp + 0x6]          ; 0x197e
    inc ax                           ; 0x1981
    push ax                          ; 0x1982
    call ds_dispatch_e8f4            ; 0x1983
    add sp, byte 6                   ; 0x1986
@..api_idx_0010.l4:
    inc word [bp - 0x000e]           ; 0x1989
    inc word [bp - 0x0002]           ; 0x198c
@..api_idx_0010.l5:
    mov ax, word [bp - 0x0002]       ; 0x198f
    cmp ax, word [bp - 0x000a]       ; 0x1992
    jge short @..api_idx_0010.l6     ; 0x1995
    jmp near @..api_idx_0010.l2      ; 0x1997
@..api_idx_0010.l6:
    inc word [bp - 0x0004]           ; 0x199a
@..api_idx_0010.l7:
    mov ax, word [bp - 0x000c]       ; 0x199d
    dec ax                           ; 0x19a0
    dec ax                           ; 0x19a1
    cmp ax, word [bp - 0x0004]       ; 0x19a2
    jle short @..api_idx_0010.l8     ; 0x19a5
    jmp near @..api_idx_0010.l1      ; 0x19a7
@..api_idx_0010.l8:
    ret                              ; 0x19aa
api_idx_0002_5:
    mov ax, 0xfffe                   ; 0x19ab
    call ds_dispatch_f40b            ; 0x19ae
    mov ax, 0                        ; 0x19b1
    push ax                          ; 0x19b4
    push ax                          ; 0x19b5
    push word [data_953e]            ; 0x19b6
    push word [data_953c]            ; 0x19ba
    call ds_dispatch_e942            ; 0x19be
    add sp, byte 8                   ; 0x19c1
    mov ax, 0                        ; 0x19c4
    push ax                          ; 0x19c7
    mov ax, 0x55                     ; 0x19c8
    push ax                          ; 0x19cb
    call ds_dispatch_e823            ; 0x19cc
    add sp, byte 4                   ; 0x19cf
    mov word [bp - 0x0002], 0        ; 0x19d2
@..api_idx_0002_5.l1:
    mov ax, 6                        ; 0x19d7
    imul word [bp - 0x0002]          ; 0x19da
    add ax, strict word 0x23         ; 0x19dd
    push ax                          ; 0x19e0
    mov ax, 0x73                     ; 0x19e1
    push ax                          ; 0x19e4
    call ds_dispatch_e809            ; 0x19e5
    add sp, byte 4                   ; 0x19e8
    mov ax, 0                        ; 0x19eb
    push ax                          ; 0x19ee
    mov ax, 0xa                      ; 0x19ef
    imul word [bp - 0x0002]          ; 0x19f2
    add ax, 0x9544                   ; 0x19f5
    push ax                          ; 0x19f8
    call ds_dispatch_e84e            ; 0x19f9
    add sp, byte 4                   ; 0x19fc
    mov ax, 0                        ; 0x19ff
    push ax                          ; 0x1a02
    mov ax, 3                        ; 0x1a03
    push ax                          ; 0x1a06
    mov ax, 0x248                    ; 0x1a07
    imul word [bp + 0x4]             ; 0x1a0a
    add ax, word [bp - 0x0002]       ; 0x1a0d
    mov bx, ax                       ; 0x1a10
    mov al, byte [bx + 0x5d64]       ; 0x1a12
    sub ah, ah                       ; 0x1a16
    push ax                          ; 0x1a18
    call ds_dispatch_b2e7            ; 0x1a19
    add sp, byte 6                   ; 0x1a1c
    inc word [bp - 0x0002]           ; 0x1a1f
    mov ax, word [bp - 0x0002]       ; 0x1a22
    cmp ax, strict word 8            ; 0x1a25
    jl short @..api_idx_0002_5.l1    ; 0x1a28
    cmp word [data_9594], byte 0     ; 0x1a2a
    jl short @..api_idx_0002_5.l2    ; 0x1a2f
    mov ax, 0                        ; 0x1a31
    push ax                          ; 0x1a34
    mov ax, 0x16                     ; 0x1a35
    push ax                          ; 0x1a38
    call ds_dispatch_e823            ; 0x1a39
    add sp, byte 4                   ; 0x1a3c
    mov ax, 0x59                     ; 0x1a3f
    push ax                          ; 0x1a42
    mov ax, 0x67                     ; 0x1a43
    push ax                          ; 0x1a46
    call ds_dispatch_e809            ; 0x1a47
    add sp, byte 4                   ; 0x1a4a
    mov ax, 0                        ; 0x1a4d
    push ax                          ; 0x1a50
    mov ax, 0x9596                   ; 0x1a51
    push ax                          ; 0x1a54
    call ds_dispatch_e84e            ; 0x1a55
    add sp, byte 4                   ; 0x1a58
    mov ax, 0                        ; 0x1a5b
    push ax                          ; 0x1a5e
    mov ax, 1                        ; 0x1a5f
    push ax                          ; 0x1a62
    call ds_dispatch_e823            ; 0x1a63
    add sp, byte 4                   ; 0x1a66
    mov ax, 0                        ; 0x1a69
    push ax                          ; 0x1a6c
    mov ax, 3                        ; 0x1a6d
    push ax                          ; 0x1a70
    push word [data_9594]            ; 0x1a71
    call ds_dispatch_b2e7            ; 0x1a75
    add sp, byte 6                   ; 0x1a78
@..api_idx_0002_5.l2:
    cmp word [bp + 0x6], byte 0      ; 0x1a7b
    je short @..api_idx_0002_5.l3    ; 0x1a7f
    mov ax, 0x60                     ; 0x1a81
    push ax                          ; 0x1a84
    mov ax, 0xa8                     ; 0x1a85
    push ax                          ; 0x1a88
    mov ax, 0x23                     ; 0x1a89
    push ax                          ; 0x1a8c
    mov ax, 0x66                     ; 0x1a8d
    push ax                          ; 0x1a90
    call ds_dispatch_e8da            ; 0x1a91
    add sp, byte 8                   ; 0x1a94
@..api_idx_0002_5.l3:
    ret                              ; 0x1a97
api_idx_000a:
    mov ax, 0xfff6                   ; 0x1a98
    call ds_dispatch_f40b            ; 0x1a9b
    mov ax, 0                        ; 0x1a9e
    push ax                          ; 0x1aa1
    push ax                          ; 0x1aa2
    push word [data_9542]            ; 0x1aa3
    push word [data_9540]            ; 0x1aa7
    call ds_dispatch_e942            ; 0x1aab
    add sp, byte 8                   ; 0x1aae
    cmp word [data_95aa], byte 0     ; 0x1ab1
    jle short @..api_idx_000a.l1     ; 0x1ab6
    mov byte [bp - 0x000a], 1        ; 0x1ab8
    mov byte [bp - 0x0009], 0        ; 0x1abc
    mov ax, 0                        ; 0x1ac0
    push ax                          ; 0x1ac3
    push ax                          ; 0x1ac4
    lea ax, word [bp - 0x000a]       ; 0x1ac5
    push ax                          ; 0x1ac8
    mov ax, 0                        ; 0x1ac9
    push ax                          ; 0x1acc
    mov ax, 0xc7                     ; 0x1acd
    push ax                          ; 0x1ad0
    mov ax, 0x41                     ; 0x1ad1
    sub ax, word [data_95aa]         ; 0x1ad4
    push ax                          ; 0x1ad8
    mov ax, 0x13f                    ; 0x1ad9
    push ax                          ; 0x1adc
    mov ax, 0                        ; 0x1add
    push ax                          ; 0x1ae0
    mov ax, 0x2d                     ; 0x1ae1
    push ax                          ; 0x1ae4
    mov ax, 0x5a                     ; 0x1ae5
    push ax                          ; 0x1ae8
    mov ax, 0xf                      ; 0x1ae9
    push ax                          ; 0x1aec
    call ds_dispatch_efd1            ; 0x1aed
    add sp, byte 0x16                ; 0x1af0
@..api_idx_000a.l1:
    mov ax, 5                        ; 0x1af3
    cmp word [data_95ac], byte 0     ; 0x1af6
    jne short @..api_idx_000a.l2     ; 0x1afb
    mov ax, word [bp + 0x4]          ; 0x1afd
    inc ax                           ; 0x1b00
    inc ax                           ; 0x1b01
@..api_idx_000a.l2:
    mov byte [bp - 0x000a], al       ; 0x1b02
    mov byte [bp - 0x0009], 0        ; 0x1b05
    mov ax, 0                        ; 0x1b09
    push ax                          ; 0x1b0c
    push ax                          ; 0x1b0d
    lea ax, word [bp - 0x000a]       ; 0x1b0e
    push ax                          ; 0x1b11
    mov ax, 0                        ; 0x1b12
    push ax                          ; 0x1b15
    mov ax, 0xc7                     ; 0x1b16
    push ax                          ; 0x1b19
    mov ax, 0                        ; 0x1b1a
    push ax                          ; 0x1b1d
    mov ax, 0x13f                    ; 0x1b1e
    push ax                          ; 0x1b21
    mov ax, 0                        ; 0x1b22
    push ax                          ; 0x1b25
    mov ax, 0x14                     ; 0x1b26
    sub ax, word [data_95aa]         ; 0x1b29
    add ax, strict word 0x19         ; 0x1b2d
    push ax                          ; 0x1b30
    mov ax, 0x5a                     ; 0x1b31
    push ax                          ; 0x1b34
    mov ax, 0xf                      ; 0x1b35
    push ax                          ; 0x1b38
    call ds_dispatch_efd1            ; 0x1b39
    add sp, byte 0x16                ; 0x1b3c
    ret                              ; 0x1b3f
api_idx_0054:
    mov ax, 0xffac                   ; 0x1b40
    call ds_dispatch_f40b            ; 0x1b43
    mov ax, 0                        ; 0x1b46
    push ax                          ; 0x1b49
    push ax                          ; 0x1b4a
    push word [data_9526]            ; 0x1b4b
    push word [data_9524]            ; 0x1b4f
    call ds_dispatch_e942            ; 0x1b53
    add sp, byte 8                   ; 0x1b56
    mov ax, 0                        ; 0x1b59
    push ax                          ; 0x1b5c
    push ax                          ; 0x1b5d
    push word [data_952a]            ; 0x1b5e
    push word [data_9528]            ; 0x1b62
    call ds_dispatch_e942            ; 0x1b66
    add sp, byte 8                   ; 0x1b69
    mov ax, 0                        ; 0x1b6c
    push ax                          ; 0x1b6f
    push ax                          ; 0x1b70
    call ds_dispatch_e823            ; 0x1b71
    add sp, byte 4                   ; 0x1b74
    mov ax, 0x4c                     ; 0x1b77
    push ax                          ; 0x1b7a
    mov ax, 0x248                    ; 0x1b7b
    imul word [bp + 0x4]             ; 0x1b7e
    add ax, 0x5bf4                   ; 0x1b81
    push ax                          ; 0x1b84
    call ds_dispatch_fa90            ; 0x1b85
    pop cx                           ; 0x1b88
    mov cx, 6                        ; 0x1b89
    imul cx                          ; 0x1b8c
    mov cx, data_0002                ; 0x1b8e
    cwd                              ; 0x1b91
    idiv cx                          ; 0x1b92
    mov cx, ax                       ; 0x1b94
    mov ax, 0x28                     ; 0x1b96
    sub ax, cx                       ; 0x1b99
    push ax                          ; 0x1b9b
    call ds_dispatch_e809            ; 0x1b9c
    add sp, byte 4                   ; 0x1b9f
    mov ax, 0                        ; 0x1ba2
    push ax                          ; 0x1ba5
    mov ax, 0x248                    ; 0x1ba6
    imul word [bp + 0x4]             ; 0x1ba9
    add ax, 0x5bf4                   ; 0x1bac
    push ax                          ; 0x1baf
    call ds_dispatch_e84e            ; 0x1bb0
    add sp, byte 4                   ; 0x1bb3
    mov ax, 0                        ; 0x1bb6
    push ax                          ; 0x1bb9
    mov ax, 1                        ; 0x1bba
    push ax                          ; 0x1bbd
    call ds_dispatch_e823            ; 0x1bbe
    add sp, byte 4                   ; 0x1bc1
    mov ax, 6                        ; 0x1bc4
    push ax                          ; 0x1bc7
    mov ax, 0x5a                     ; 0x1bc8
    push ax                          ; 0x1bcb
    call ds_dispatch_e809            ; 0x1bcc
    add sp, byte 4                   ; 0x1bcf
    lea ax, word [bp - 0x0054]       ; 0x1bd2
    push ax                          ; 0x1bd5
    mov ax, 0x248                    ; 0x1bd6
    imul word [bp + 0x4]             ; 0x1bd9
    mov bx, ax                       ; 0x1bdc
    mov al, byte [bx + 0x5e2c]       ; 0x1bde
    sub ah, ah                       ; 0x1be2
    add ax, 0x8c                     ; 0x1be4
    push ax                          ; 0x1be7
    call ds_dispatch_b53b            ; 0x1be8
    add sp, byte 4                   ; 0x1beb
    mov ax, 0                        ; 0x1bee
    push ax                          ; 0x1bf1
    mov al, byte [bp - 0x0054]       ; 0x1bf2
    sub ah, ah                       ; 0x1bf5
    push ax                          ; 0x1bf7
    call ds_dispatch_e830            ; 0x1bf8
    add sp, byte 4                   ; 0x1bfb
    mov ax, 0                        ; 0x1bfe
    push ax                          ; 0x1c01
    mov ax, 0x2d                     ; 0x1c02
    push ax                          ; 0x1c05
    call ds_dispatch_e830            ; 0x1c06
    add sp, byte 4                   ; 0x1c09
    lea ax, word [bp - 0x0054]       ; 0x1c0c
    push ax                          ; 0x1c0f
    mov ax, 0x248                    ; 0x1c10
    imul word [bp + 0x4]             ; 0x1c13
    mov bx, ax                       ; 0x1c16
    mov al, byte [bx + 0x5e2b]       ; 0x1c18
    sub ah, ah                       ; 0x1c1c
    add ax, strict word 0x64         ; 0x1c1e
    push ax                          ; 0x1c21
    call ds_dispatch_b53b            ; 0x1c22
    add sp, byte 4                   ; 0x1c25
    mov ax, 0                        ; 0x1c28
    push ax                          ; 0x1c2b
    lea ax, word [bp - 0x0054]       ; 0x1c2c
    push ax                          ; 0x1c2f
    call ds_dispatch_e84e            ; 0x1c30
    add sp, byte 4                   ; 0x1c33
    mov ax, 0                        ; 0x1c36
    push ax                          ; 0x1c39
    mov ax, 0x84                     ; 0x1c3a
    push ax                          ; 0x1c3d
    call ds_dispatch_e823            ; 0x1c3e
    add sp, byte 4                   ; 0x1c41
    mov ax, 0xc                      ; 0x1c44
    push ax                          ; 0x1c47
    mov ax, 0x5a                     ; 0x1c48
    push ax                          ; 0x1c4b
    call ds_dispatch_e809            ; 0x1c4c
    add sp, byte 4                   ; 0x1c4f
    lea ax, word [bp - 0x0054]       ; 0x1c52
    push ax                          ; 0x1c55
    mov ax, 0x248                    ; 0x1c56
    imul word [bp + 0x4]             ; 0x1c59
    mov bx, ax                       ; 0x1c5c
    mov al, byte [bx + 0x5e2d]       ; 0x1c5e
    sub ah, ah                       ; 0x1c62
    add ax, strict word 0x78         ; 0x1c64
    push ax                          ; 0x1c67
    call ds_dispatch_b53b            ; 0x1c68
    add sp, byte 4                   ; 0x1c6b
    mov ax, 0                        ; 0x1c6e
    push ax                          ; 0x1c71
    lea ax, word [bp - 0x0054]       ; 0x1c72
    push ax                          ; 0x1c75
    call ds_dispatch_e84e            ; 0x1c76
    add sp, byte 4                   ; 0x1c79
    mov ax, 0                        ; 0x1c7c
    push ax                          ; 0x1c7f
    mov ax, 0x84                     ; 0x1c80
    push ax                          ; 0x1c83
    call ds_dispatch_e823            ; 0x1c84
    add sp, byte 4                   ; 0x1c87
    mov ax, 0x12                     ; 0x1c8a
    push ax                          ; 0x1c8d
    mov ax, 0x5a                     ; 0x1c8e
    push ax                          ; 0x1c91
    call ds_dispatch_e809            ; 0x1c92
    add sp, byte 4                   ; 0x1c95
    lea ax, word [bp - 0x0054]       ; 0x1c98
    push ax                          ; 0x1c9b
    mov ax, 0xc8                     ; 0x1c9c
    push ax                          ; 0x1c9f
    call ds_dispatch_b53b            ; 0x1ca0
    add sp, byte 4                   ; 0x1ca3
    mov ax, 0                        ; 0x1ca6
    push ax                          ; 0x1ca9
    lea ax, word [bp - 0x0054]       ; 0x1caa
    push ax                          ; 0x1cad
    call ds_dispatch_e84e            ; 0x1cae
    add sp, byte 4                   ; 0x1cb1
    mov ax, 0                        ; 0x1cb4
    push ax                          ; 0x1cb7
    mov ax, 4                        ; 0x1cb8
    push ax                          ; 0x1cbb
    mov ax, 0x248                    ; 0x1cbc
    imul word [bp + 0x4]             ; 0x1cbf
    mov bx, ax                       ; 0x1cc2
    push word [bx + 0x5c18]          ; 0x1cc4
    call ds_dispatch_b2e7            ; 0x1cc8
    add sp, byte 6                   ; 0x1ccb
    mov ax, 0x248                    ; 0x1cce
    imul word [bp + 0x4]             ; 0x1cd1
    mov bx, ax                       ; 0x1cd4
    mov ax, word [bx + 0x5bfc]       ; 0x1cd6
    mov dx, word [bx + 0x5bfe]       ; 0x1cda
    mov cx, 0x16d                    ; 0x1cde
    mov bx, 0                        ; 0x1ce1
    call ds_dispatch_f99f            ; 0x1ce4
    add ax, strict word 0xffee       ; 0x1ce7
    adc dx, byte 0xff                ; 0x1cea
    mov cx, 4                        ; 0x1ced
    mov bx, 0                        ; 0x1cf0
    call ds_dispatch_f99f            ; 0x1cf3
    push ax                          ; 0x1cf6
    push dx                          ; 0x1cf7
    mov ax, 0x248                    ; 0x1cf8
    imul word [bp + 0x4]             ; 0x1cfb
    mov bx, ax                       ; 0x1cfe
    mov ax, word [bx + 0x5c1a]       ; 0x1d00
    cwd                              ; 0x1d04
    mov cx, ax                       ; 0x1d05
    mov bx, dx                       ; 0x1d07
    pop dx                           ; 0x1d09
    pop ax                           ; 0x1d0a
    add ax, cx                       ; 0x1d0b
    adc dx, bx                       ; 0x1d0d
    mov cx, ax                       ; 0x1d0f
    mov bx, dx                       ; 0x1d11
    add ax, strict word 0xffff       ; 0x1d13
    adc dx, byte 0xff                ; 0x1d16
    mov cx, ax                       ; 0x1d19
    mov bx, dx                       ; 0x1d1b
    mov ax, 0x14                     ; 0x1d1d
    mov dx, 0                        ; 0x1d20
    sub ax, cx                       ; 0x1d23
    sbb dx, bx                       ; 0x1d25
    push ax                          ; 0x1d27
    push dx                          ; 0x1d28
    mov ax, 0x248                    ; 0x1d29
    imul word [bp + 0x4]             ; 0x1d2c
    mov bx, ax                       ; 0x1d2f
    mov al, byte [bx + 0x5d67]       ; 0x1d31
    sub ah, ah                       ; 0x1d35
    cwd                              ; 0x1d37
    mov cx, ax                       ; 0x1d38
    mov bx, dx                       ; 0x1d3a
    pop dx                           ; 0x1d3c
    pop ax                           ; 0x1d3d
    push ax                          ; 0x1d3e
    push dx                          ; 0x1d3f
    mul bx                           ; 0x1d40
    mov bx, ax                       ; 0x1d42
    pop ax                           ; 0x1d44
    mul cx                           ; 0x1d45
    add bx, ax                       ; 0x1d47
    pop ax                           ; 0x1d49
    mul cx                           ; 0x1d4a
    add dx, bx                       ; 0x1d4c
    mov cx, 0x12                     ; 0x1d4e
    mov bx, 0                        ; 0x1d51
    call ds_dispatch_f99f            ; 0x1d54
    mov word [data_95aa], ax         ; 0x1d57
    mov ax, 0x14                     ; 0x1d5a
    push ax                          ; 0x1d5d
    mov ax, 0                        ; 0x1d5e
    push ax                          ; 0x1d61
    push word [data_95aa]            ; 0x1d62
    call ds_dispatch_b7c2            ; 0x1d66
    add sp, byte 6                   ; 0x1d69
    mov word [data_95aa], ax         ; 0x1d6c
    mov ax, 0x248                    ; 0x1d6f
    imul word [bp + 0x4]             ; 0x1d72
    mov bx, ax                       ; 0x1d75
    cmp byte [bx + 0x5e2f], 3        ; 0x1d77
    jae short @..api_idx_0054.l1     ; 0x1d7c
    mov ax, 0                        ; 0x1d7e
    jmp short @..api_idx_0054.l2     ; 0x1d81
@..api_idx_0054.l1:
    mov ax, 1                        ; 0x1d83
@..api_idx_0054.l2:
    mov word [data_95ac], ax         ; 0x1d86
    mov word [data_95ae], 0          ; 0x1d89
    push word [data_95ae]            ; 0x1d8f
    call api_idx_000a                ; 0x1d93
    pop cx                           ; 0x1d96
    mov ax, 0                        ; 0x1d97
    push ax                          ; 0x1d9a
    mov ax, 0xfd                     ; 0x1d9b
    push ax                          ; 0x1d9e
    call ds_dispatch_e823            ; 0x1d9f
    add sp, byte 4                   ; 0x1da2
    lea ax, word [bp - 0x0054]       ; 0x1da5
    push ax                          ; 0x1da8
    mov ax, 0xc9                     ; 0x1da9
    push ax                          ; 0x1dac
    call ds_dispatch_b53b            ; 0x1dad
    add sp, byte 4                   ; 0x1db0
    mov ax, 6                        ; 0x1db3
    push ax                          ; 0x1db6
    mov ax, 0xe4                     ; 0x1db7
    push ax                          ; 0x1dba
    call ds_dispatch_e809            ; 0x1dbb
    add sp, byte 4                   ; 0x1dbe
    mov ax, 0                        ; 0x1dc1
    push ax                          ; 0x1dc4
    lea ax, word [bp - 0x0054]       ; 0x1dc5
    push ax                          ; 0x1dc8
    call ds_dispatch_e84e            ; 0x1dc9
    add sp, byte 4                   ; 0x1dcc
    lea ax, word [bp - 0x0054]       ; 0x1dcf
    push ax                          ; 0x1dd2
    mov ax, 0x248                    ; 0x1dd3
    imul word [bp + 0x4]             ; 0x1dd6
    mov bx, ax                       ; 0x1dd9
    mov al, byte [bx + 0x5e2d]       ; 0x1ddb
    sub ah, ah                       ; 0x1ddf
    mov cx, 0xa                      ; 0x1de1
    imul cx                          ; 0x1de4
    push ax                          ; 0x1de6
    mov al, byte [bx + 0x5e2e]       ; 0x1de7
    sub ah, ah                       ; 0x1deb
    mov cx, ax                       ; 0x1ded
    pop ax                           ; 0x1def
    add ax, cx                       ; 0x1df0
    add ax, 0x320                    ; 0x1df2
    push ax                          ; 0x1df5
    call ds_dispatch_b53b            ; 0x1df6
    add sp, byte 4                   ; 0x1df9
    mov ax, 6                        ; 0x1dfc
    push ax                          ; 0x1dff
    lea ax, word [bp - 0x0054]       ; 0x1e00
    push ax                          ; 0x1e03
    call ds_dispatch_fa90            ; 0x1e04
    pop cx                           ; 0x1e07
    mov cx, 0x34                     ; 0x1e08
    sub cx, ax                       ; 0x1e0b
    mov ax, 6                        ; 0x1e0d
    imul cx                          ; 0x1e10
    push ax                          ; 0x1e12
    call ds_dispatch_e809            ; 0x1e13
    add sp, byte 4                   ; 0x1e16
    mov ax, 0                        ; 0x1e19
    push ax                          ; 0x1e1c
    lea ax, word [bp - 0x0054]       ; 0x1e1d
    push ax                          ; 0x1e20
    call ds_dispatch_e84e            ; 0x1e21
    add sp, byte 4                   ; 0x1e24
    mov ax, 0                        ; 0x1e27
    push ax                          ; 0x1e2a
    mov ax, 0x47                     ; 0x1e2b
    push ax                          ; 0x1e2e
    call ds_dispatch_e823            ; 0x1e2f
    add sp, byte 4                   ; 0x1e32
    lea ax, word [bp - 0x0054]       ; 0x1e35
    push ax                          ; 0x1e38
    mov ax, 0xca                     ; 0x1e39
    push ax                          ; 0x1e3c
    call ds_dispatch_b53b            ; 0x1e3d
    add sp, byte 4                   ; 0x1e40
    mov ax, 0xc                      ; 0x1e43
    push ax                          ; 0x1e46
    mov ax, 0xe4                     ; 0x1e47
    push ax                          ; 0x1e4a
    call ds_dispatch_e809            ; 0x1e4b
    add sp, byte 4                   ; 0x1e4e
    mov ax, 0                        ; 0x1e51
    push ax                          ; 0x1e54
    lea ax, word [bp - 0x0054]       ; 0x1e55
    push ax                          ; 0x1e58
    call ds_dispatch_e84e            ; 0x1e59
    add sp, byte 4                   ; 0x1e5c
    mov ax, 0                        ; 0x1e5f
    push ax                          ; 0x1e62
    mov ax, 0x20                     ; 0x1e63
    push ax                          ; 0x1e66
    call ds_dispatch_e830            ; 0x1e67
    add sp, byte 4                   ; 0x1e6a
    mov ax, 0                        ; 0x1e6d
    push ax                          ; 0x1e70
    mov ax, 0xa                      ; 0x1e71
    push ax                          ; 0x1e74
    mov ax, 0x248                    ; 0x1e75
    imul word [bp + 0x4]             ; 0x1e78
    mov bx, ax                       ; 0x1e7b
    push word [bx + 0x5c02]          ; 0x1e7d
    push word [bx + 0x5c00]          ; 0x1e81
    call ds_dispatch_b293            ; 0x1e85
    add sp, byte 8                   ; 0x1e88
    lea ax, word [bp - 0x0054]       ; 0x1e8b
    push ax                          ; 0x1e8e
    mov ax, 0xcb                     ; 0x1e8f
    push ax                          ; 0x1e92
    call ds_dispatch_b53b            ; 0x1e93
    add sp, byte 4                   ; 0x1e96
    mov ax, 0x12                     ; 0x1e99
    push ax                          ; 0x1e9c
    mov ax, 0xe4                     ; 0x1e9d
    push ax                          ; 0x1ea0
    call ds_dispatch_e809            ; 0x1ea1
    add sp, byte 4                   ; 0x1ea4
    mov ax, 0                        ; 0x1ea7
    push ax                          ; 0x1eaa
    lea ax, word [bp - 0x0054]       ; 0x1eab
    push ax                          ; 0x1eae
    call ds_dispatch_e84e            ; 0x1eaf
    add sp, byte 4                   ; 0x1eb2
    mov ax, 0                        ; 0x1eb5
    push ax                          ; 0x1eb8
    mov ax, 0x20                     ; 0x1eb9
    push ax                          ; 0x1ebc
    call ds_dispatch_e830            ; 0x1ebd
    add sp, byte 4                   ; 0x1ec0
    mov ax, 0                        ; 0x1ec3
    push ax                          ; 0x1ec6
    mov ax, 0xa                      ; 0x1ec7
    push ax                          ; 0x1eca
    mov ax, 0x248                    ; 0x1ecb
    imul word [bp + 0x4]             ; 0x1ece
    mov bx, ax                       ; 0x1ed1
    push word [bx + 0x5c06]          ; 0x1ed3
    push word [bx + 0x5c04]          ; 0x1ed7
    call ds_dispatch_b293            ; 0x1edb
    add sp, byte 8                   ; 0x1ede
    mov ax, 0                        ; 0x1ee1
    push ax                          ; 0x1ee4
    mov ax, 0x1d                     ; 0x1ee5
    push ax                          ; 0x1ee8
    call ds_dispatch_e823            ; 0x1ee9
    add sp, byte 4                   ; 0x1eec
    lea ax, word [bp - 0x0054]       ; 0x1eef
    push ax                          ; 0x1ef2
    mov ax, 0xd4                     ; 0x1ef3
    push ax                          ; 0x1ef6
    call ds_dispatch_b53b            ; 0x1ef7
    add sp, byte 4                   ; 0x1efa
    mov ax, 0x5d                     ; 0x1efd
    push ax                          ; 0x1f00
    mov ax, 6                        ; 0x1f01
    push ax                          ; 0x1f04
    call ds_dispatch_e809            ; 0x1f05
    add sp, byte 4                   ; 0x1f08
    mov ax, 0                        ; 0x1f0b
    push ax                          ; 0x1f0e
    lea ax, word [bp - 0x0054]       ; 0x1f0f
    push ax                          ; 0x1f12
    call ds_dispatch_e84e            ; 0x1f13
    add sp, byte 4                   ; 0x1f16
    mov ax, 0                        ; 0x1f19
    push ax                          ; 0x1f1c
    mov ax, 0x20                     ; 0x1f1d
    push ax                          ; 0x1f20
    call ds_dispatch_e830            ; 0x1f21
    add sp, byte 4                   ; 0x1f24
    mov ax, 0                        ; 0x1f27
    push ax                          ; 0x1f2a
    mov ax, 0x1b                     ; 0x1f2b
    push ax                          ; 0x1f2e
    call ds_dispatch_e823            ; 0x1f2f
    add sp, byte 4                   ; 0x1f32
    lea ax, word [bp - 0x0054]       ; 0x1f35
    push ax                          ; 0x1f38
    mov ax, 0x248                    ; 0x1f39
    imul word [bp + 0x4]             ; 0x1f3c
    mov bx, ax                       ; 0x1f3f
    push word [bx + 0x5c0c]          ; 0x1f41
    call ds_dispatch_b27d            ; 0x1f45
    add sp, byte 4                   ; 0x1f48
    mov ax, 0                        ; 0x1f4b
    push ax                          ; 0x1f4e
    lea ax, word [bp - 0x0054]       ; 0x1f4f
    push ax                          ; 0x1f52
    call ds_dispatch_e84e            ; 0x1f53
    add sp, byte 4                   ; 0x1f56
    mov ax, 0                        ; 0x1f59
    push ax                          ; 0x1f5c
    mov ax, 0x2f                     ; 0x1f5d
    push ax                          ; 0x1f60
    call ds_dispatch_e830            ; 0x1f61
    add sp, byte 4                   ; 0x1f64
    lea ax, word [bp - 0x0054]       ; 0x1f67
    push ax                          ; 0x1f6a
    mov ax, 0x248                    ; 0x1f6b
    imul word [bp + 0x4]             ; 0x1f6e
    mov bx, ax                       ; 0x1f71
    push word [bx + 0x5c0e]          ; 0x1f73
    call ds_dispatch_b27d            ; 0x1f77
    add sp, byte 4                   ; 0x1f7a
    mov ax, 0                        ; 0x1f7d
    push ax                          ; 0x1f80
    lea ax, word [bp - 0x0054]       ; 0x1f81
    push ax                          ; 0x1f84
    call ds_dispatch_e84e            ; 0x1f85
    add sp, byte 4                   ; 0x1f88
    mov ax, 0                        ; 0x1f8b
    push ax                          ; 0x1f8e
    mov ax, 0x1d                     ; 0x1f8f
    push ax                          ; 0x1f92
    call ds_dispatch_e823            ; 0x1f93
    add sp, byte 4                   ; 0x1f96
    lea ax, word [bp - 0x0054]       ; 0x1f99
    push ax                          ; 0x1f9c
    mov ax, 0xd5                     ; 0x1f9d
    push ax                          ; 0x1fa0
    call ds_dispatch_b53b            ; 0x1fa1
    add sp, byte 4                   ; 0x1fa4
    mov ax, 0x63                     ; 0x1fa7
    push ax                          ; 0x1faa
    mov ax, 6                        ; 0x1fab
    push ax                          ; 0x1fae
    call ds_dispatch_e809            ; 0x1faf
    add sp, byte 4                   ; 0x1fb2
    mov ax, 0                        ; 0x1fb5
    push ax                          ; 0x1fb8
    lea ax, word [bp - 0x0054]       ; 0x1fb9
    push ax                          ; 0x1fbc
    call ds_dispatch_e84e            ; 0x1fbd
    add sp, byte 4                   ; 0x1fc0
    mov ax, 0                        ; 0x1fc3
    push ax                          ; 0x1fc6
    mov ax, 0x20                     ; 0x1fc7
    push ax                          ; 0x1fca
    call ds_dispatch_e830            ; 0x1fcb
    add sp, byte 4                   ; 0x1fce
    mov ax, 0                        ; 0x1fd1
    push ax                          ; 0x1fd4
    mov ax, 0x1b                     ; 0x1fd5
    push ax                          ; 0x1fd8
    call ds_dispatch_e823            ; 0x1fd9
    add sp, byte 4                   ; 0x1fdc
    mov ax, 0x248                    ; 0x1fdf
    imul word [bp + 0x4]             ; 0x1fe2
    mov bx, ax                       ; 0x1fe5
    mov ax, word [bx + 0x5c10]       ; 0x1fe7
    mov cx, 0x64                     ; 0x1feb
    imul cx                          ; 0x1fee
    mov cx, word [bx + 0x5c12]       ; 0x1ff0
    cwd                              ; 0x1ff4
    idiv cx                          ; 0x1ff5
    mov word [bp - 0x0004], ax       ; 0x1ff7
    cmp ax, strict word 1            ; 0x1ffa
    jge short @..api_idx_0054.l3     ; 0x1ffd
    cmp word [bx + 0x5c10], byte 0   ; 0x1fff
    jle short @..api_idx_0054.l3     ; 0x2004
    mov ax, 1                        ; 0x2006
    jmp short @..api_idx_0054.l4     ; 0x2009
@..api_idx_0054.l3:
    mov ax, word [bp - 0x0004]       ; 0x200b
@..api_idx_0054.l4:
    mov word [bp - 0x0004], ax       ; 0x200e
    lea ax, word [bp - 0x0054]       ; 0x2011
    push ax                          ; 0x2014
    push word [bp - 0x0004]          ; 0x2015
    call ds_dispatch_b27d            ; 0x2018
    add sp, byte 4                   ; 0x201b
    mov ax, 0                        ; 0x201e
    push ax                          ; 0x2021
    lea ax, word [bp - 0x0054]       ; 0x2022
    push ax                          ; 0x2025
    call ds_dispatch_e84e            ; 0x2026
    add sp, byte 4                   ; 0x2029
    mov ax, 0                        ; 0x202c
    push ax                          ; 0x202f
    mov ax, 0x90bb                   ; 0x2030
    push ax                          ; 0x2033
    call ds_dispatch_e84e            ; 0x2034
    add sp, byte 4                   ; 0x2037
    mov ax, 0                        ; 0x203a
    push ax                          ; 0x203d
    mov ax, 0x1d                     ; 0x203e
    push ax                          ; 0x2041
    call ds_dispatch_e823            ; 0x2042
    add sp, byte 4                   ; 0x2045
    mov ax, 0                        ; 0x2048
    push ax                          ; 0x204b
    mov ax, 0x28                     ; 0x204c
    push ax                          ; 0x204f
    call ds_dispatch_e830            ; 0x2050
    add sp, byte 4                   ; 0x2053
    lea ax, word [bp - 0x0054]       ; 0x2056
    push ax                          ; 0x2059
    mov ax, 0x248                    ; 0x205a
    imul word [bp + 0x4]             ; 0x205d
    mov bx, ax                       ; 0x2060
    push word [bx + 0x5c12]          ; 0x2062
    call ds_dispatch_b27d            ; 0x2066
    add sp, byte 4                   ; 0x2069
    mov ax, 0                        ; 0x206c
    push ax                          ; 0x206f
    lea ax, word [bp - 0x0054]       ; 0x2070
    push ax                          ; 0x2073
    call ds_dispatch_e84e            ; 0x2074
    add sp, byte 4                   ; 0x2077
    mov ax, 0                        ; 0x207a
    push ax                          ; 0x207d
    mov ax, 0x29                     ; 0x207e
    push ax                          ; 0x2081
    call ds_dispatch_e830            ; 0x2082
    add sp, byte 4                   ; 0x2085
    push word [bp + 0x4]             ; 0x2088
    call api_idx_0004                ; 0x208b
    pop cx                           ; 0x208e
    ret                              ; 0x208f
api_idx_0004_2:
    mov ax, 0xfffc                   ; 0x2090
    call ds_dispatch_f40b            ; 0x2093
    mov ax, 0xc2                     ; 0x2096
    push ax                          ; 0x2099
    mov ax, 0x13f                    ; 0x209a
    push ax                          ; 0x209d
    mov ax, 0xbc                     ; 0x209e
    push ax                          ; 0x20a1
    mov ax, 0                        ; 0x20a2
    push ax                          ; 0x20a5
    call ds_dispatch_e928            ; 0x20a6
    add sp, byte 8                   ; 0x20a9
    mov word [bp - 0x0002], dx       ; 0x20ac
    mov word [bp - 0x0004], ax       ; 0x20af
    mov ax, 0xbc                     ; 0x20b2
    push ax                          ; 0x20b5
    push word [bp + 0x4]             ; 0x20b6
    call ds_dispatch_fa90            ; 0x20b9
    pop cx                           ; 0x20bc
    mov cx, 6                        ; 0x20bd
    imul cx                          ; 0x20c0
    mov cx, data_0002                ; 0x20c2
    cwd                              ; 0x20c5
    idiv cx                          ; 0x20c6
    mov cx, ax                       ; 0x20c8
    mov ax, 0xa0                     ; 0x20ca
    sub ax, cx                       ; 0x20cd
    push ax                          ; 0x20cf
    call ds_dispatch_e809            ; 0x20d0
    add sp, byte 4                   ; 0x20d3
    mov ax, 0                        ; 0x20d6
    push ax                          ; 0x20d9
    mov ax, 0x55                     ; 0x20da
    push ax                          ; 0x20dd
    call ds_dispatch_e823            ; 0x20de
    add sp, byte 4                   ; 0x20e1
    mov ax, 0                        ; 0x20e4
    push ax                          ; 0x20e7
    push word [bp + 0x4]             ; 0x20e8
    call ds_dispatch_e84e            ; 0x20eb
    add sp, byte 4                   ; 0x20ee
    mov ax, 0xc2                     ; 0x20f1
    push ax                          ; 0x20f4
    mov ax, 0x13f                    ; 0x20f5
    push ax                          ; 0x20f8
    mov ax, 0xbc                     ; 0x20f9
    push ax                          ; 0x20fc
    mov ax, 0                        ; 0x20fd
    push ax                          ; 0x2100
    call ds_dispatch_e8da            ; 0x2101
    add sp, byte 8                   ; 0x2104
    cmp word [bp + 0x6], byte 0      ; 0x2107
    jle short @..api_idx_0004_2.l1   ; 0x210b
    mov ax, 0                        ; 0x210d
    push ax                          ; 0x2110
    call ds_dispatch_b7e0            ; 0x2111
    pop cx                           ; 0x2114
@..api_idx_0004_2.l1:
    push word [data_905a]            ; 0x2115
    call ds_dispatch_b75e            ; 0x2119
    pop cx                           ; 0x211c
    mov ax, 1                        ; 0x211d
    push ax                          ; 0x2120
    push word [bp - 0x0002]          ; 0x2121
    push word [bp - 0x0004]          ; 0x2124
    call ds_dispatch_e94f            ; 0x2127
    add sp, byte 6                   ; 0x212a
    mov ax, 0xc2                     ; 0x212d
    push ax                          ; 0x2130
    mov ax, 0x13f                    ; 0x2131
    push ax                          ; 0x2134
    mov ax, 0xbc                     ; 0x2135
    push ax                          ; 0x2138
    mov ax, 0                        ; 0x2139
    push ax                          ; 0x213c
    call ds_dispatch_e8da            ; 0x213d
    add sp, byte 8                   ; 0x2140
    ret                              ; 0x2143
api_idx_0004_3:
    mov ax, 0xfffc                   ; 0x2144
    call ds_dispatch_f40b            ; 0x2147
    mov ax, word [data_0038]         ; 0x214a
    mov word [bp - 0x0004], ax       ; 0x214d
    mov word [bp - 0x0002], 0        ; 0x2150
@..api_idx_0004_3.l1:
    mov bx, word [bp + 0x6]          ; 0x2155
    mov si, word [bp - 0x0002]       ; 0x2158
    cmp byte [bx + si], 0x31         ; 0x215b
    je short @..api_idx_0004_3.l2    ; 0x215e
    mov ax, 0x248                    ; 0x2160
    imul word [bp + 0x4]             ; 0x2163
    add ax, word [bp - 0x0004]       ; 0x2166
    add ax, si                       ; 0x2169
    mov bx, ax                       ; 0x216b
    cmp byte [bx + 0x5d6c], 0        ; 0x216d
    jbe short @..api_idx_0004_3.l3   ; 0x2172
@..api_idx_0004_3.l2:
    mov ax, 1                        ; 0x2174
    jmp short @..api_idx_0004_3.l4   ; 0x2177
@..api_idx_0004_3.l3:
    mov ax, 0                        ; 0x2179
@..api_idx_0004_3.l4:
    add si, word [bp - 0x0004]       ; 0x217c
    mov cx, si                       ; 0x217f
    shl cx, 1                        ; 0x2181
    mov bx, cx                       ; 0x2183
    mov word [bx - 0x6a50], ax       ; 0x2185
    inc word [bp - 0x0002]           ; 0x2189
    mov ax, word [bp - 0x0002]       ; 0x218c
    cmp ax, strict word 0xa          ; 0x218f
    jl short @..api_idx_0004_3.l1    ; 0x2192
    mov ax, word [data_003c]         ; 0x2194
    mov word [bp - 0x0004], ax       ; 0x2197
    mov word [bp - 0x0002], 0        ; 0x219a
@..api_idx_0004_3.l5:
    mov bx, word [bp + 0x8]          ; 0x219f
    mov si, word [bp - 0x0002]       ; 0x21a2
    cmp byte [bx + si], 0x31         ; 0x21a5
    je short @..api_idx_0004_3.l6    ; 0x21a8
    mov ax, 0x248                    ; 0x21aa
    imul word [bp + 0x4]             ; 0x21ad
    add ax, word [bp - 0x0004]       ; 0x21b0
    add ax, si                       ; 0x21b3
    mov bx, ax                       ; 0x21b5
    cmp byte [bx + 0x5d6c], 0        ; 0x21b7
    jbe short @..api_idx_0004_3.l7   ; 0x21bc
@..api_idx_0004_3.l6:
    mov ax, 1                        ; 0x21be
    jmp short @..api_idx_0004_3.l8   ; 0x21c1
@..api_idx_0004_3.l7:
    mov ax, 0                        ; 0x21c3
@..api_idx_0004_3.l8:
    add si, word [bp - 0x0004]       ; 0x21c6
    mov cx, si                       ; 0x21c9
    shl cx, 1                        ; 0x21cb
    mov bx, cx                       ; 0x21cd
    mov word [bx - 0x6a50], ax       ; 0x21cf
    inc word [bp - 0x0002]           ; 0x21d3
    mov ax, word [bp - 0x0002]       ; 0x21d6
    cmp ax, strict word 8            ; 0x21d9
    jl short @..api_idx_0004_3.l5    ; 0x21dc
    mov ax, word [data_0040]         ; 0x21de
    mov word [bp - 0x0004], ax       ; 0x21e1
    mov word [bp - 0x0002], 0        ; 0x21e4
@..api_idx_0004_3.l9:
    mov bx, word [bp + 0xa]          ; 0x21e9
    mov si, word [bp - 0x0002]       ; 0x21ec
    cmp byte [bx + si], 0x31         ; 0x21ef
    je short @..api_idx_0004_3.l10   ; 0x21f2
    mov ax, 0x248                    ; 0x21f4
    imul word [bp + 0x4]             ; 0x21f7
    add ax, word [bp - 0x0004]       ; 0x21fa
    add ax, si                       ; 0x21fd
    mov bx, ax                       ; 0x21ff
    cmp byte [bx + 0x5d6c], 0        ; 0x2201
    jbe short @..api_idx_0004_3.l11  ; 0x2206
@..api_idx_0004_3.l10:
    mov ax, 1                        ; 0x2208
    jmp short @..api_idx_0004_3.l12  ; 0x220b
@..api_idx_0004_3.l11:
    mov ax, 0                        ; 0x220d
@..api_idx_0004_3.l12:
    add si, word [bp - 0x0004]       ; 0x2210
    mov cx, si                       ; 0x2213
    shl cx, 1                        ; 0x2215
    mov bx, cx                       ; 0x2217
    mov word [bx - 0x6a50], ax       ; 0x2219
    inc word [bp - 0x0002]           ; 0x221d
    mov ax, word [bp - 0x0002]       ; 0x2220
    cmp ax, strict word 6            ; 0x2223
    jl short @..api_idx_0004_3.l9    ; 0x2226
    mov ax, word [data_0044]         ; 0x2228
    mov word [bp - 0x0004], ax       ; 0x222b
    mov word [bp - 0x0002], 0        ; 0x222e
@..api_idx_0004_3.l13:
    mov bx, word [bp + 0xc]          ; 0x2233
    mov si, word [bp - 0x0002]       ; 0x2236
    cmp byte [bx + si], 0x31         ; 0x2239
    je short @..api_idx_0004_3.l14   ; 0x223c
    mov ax, 0x248                    ; 0x223e
    imul word [bp + 0x4]             ; 0x2241
    add ax, word [bp - 0x0004]       ; 0x2244
    add ax, si                       ; 0x2247
    mov bx, ax                       ; 0x2249
    cmp byte [bx + 0x5d6c], 0        ; 0x224b
    jbe short @..api_idx_0004_3.l15  ; 0x2250
@..api_idx_0004_3.l14:
    mov ax, 1                        ; 0x2252
    jmp short @..api_idx_0004_3.l16  ; 0x2255
@..api_idx_0004_3.l15:
    mov ax, 0                        ; 0x2257
@..api_idx_0004_3.l16:
    add si, word [bp - 0x0004]       ; 0x225a
    mov cx, si                       ; 0x225d
    shl cx, 1                        ; 0x225f
    mov bx, cx                       ; 0x2261
    mov word [bx - 0x6a50], ax       ; 0x2263
    inc word [bp - 0x0002]           ; 0x2267
    mov ax, word [bp - 0x0002]       ; 0x226a
    cmp ax, strict word 0xa          ; 0x226d
    jl short @..api_idx_0004_3.l13   ; 0x2270
    ret                              ; 0x2272
api_idx_0004_4:
    mov ax, 0xfffc                   ; 0x2273
    call ds_dispatch_f40b            ; 0x2276
    mov ax, 0x248                    ; 0x2279
    imul word [bp + 0x4]             ; 0x227c
    mov bx, ax                       ; 0x227f
    mov al, byte [bx + 0x5e2d]       ; 0x2281
    sub ah, ah                       ; 0x2285
    jmp near @..api_idx_0004_4.l1    ; 0x2287
    mov ax, 0x90d9                   ; 0x228a
    push ax                          ; 0x228d
    mov ax, 0x90d2                   ; 0x228e
    push ax                          ; 0x2291
    mov ax, 0x90c9                   ; 0x2292
    push ax                          ; 0x2295
    mov ax, 0x90be                   ; 0x2296
    push ax                          ; 0x2299
    push word [bp + 0x4]             ; 0x229a
    call api_idx_0004_3              ; 0x229d
    add sp, byte 0x0a                ; 0x22a0
    jmp near @..api_idx_0004_4.l2    ; 0x22a3
    mov ax, 0x90ff                   ; 0x22a6
    push ax                          ; 0x22a9
    mov ax, 0x90f8                   ; 0x22aa
    push ax                          ; 0x22ad
    mov ax, 0x90ef                   ; 0x22ae
    push ax                          ; 0x22b1
    mov ax, 0x90e4                   ; 0x22b2
    push ax                          ; 0x22b5
    push word [bp + 0x4]             ; 0x22b6
    call api_idx_0004_3              ; 0x22b9
    add sp, byte 0x0a                ; 0x22bc
    jmp near @..api_idx_0004_4.l2    ; 0x22bf
    mov ax, 0x9125                   ; 0x22c2
    push ax                          ; 0x22c5
    mov ax, 0x911e                   ; 0x22c6
    push ax                          ; 0x22c9
    mov ax, 0x9115                   ; 0x22ca
    push ax                          ; 0x22cd
    mov ax, 0x910a                   ; 0x22ce
    push ax                          ; 0x22d1
    push word [bp + 0x4]             ; 0x22d2
    call api_idx_0004_3              ; 0x22d5
    add sp, byte 0x0a                ; 0x22d8
    jmp near @..api_idx_0004_4.l2    ; 0x22db
    mov ax, 0x914b                   ; 0x22de
    push ax                          ; 0x22e1
    mov ax, 0x9144                   ; 0x22e2
    push ax                          ; 0x22e5
    mov ax, 0x913b                   ; 0x22e6
    push ax                          ; 0x22e9
    mov ax, 0x9130                   ; 0x22ea
    push ax                          ; 0x22ed
    push word [bp + 0x4]             ; 0x22ee
    call api_idx_0004_3              ; 0x22f1
    add sp, byte 0x0a                ; 0x22f4
    jmp near @..api_idx_0004_4.l2    ; 0x22f7
    mov ax, 0x9171                   ; 0x22fa
    push ax                          ; 0x22fd
    mov ax, 0x916a                   ; 0x22fe
    push ax                          ; 0x2301
    mov ax, 0x9161                   ; 0x2302
    push ax                          ; 0x2305
    mov ax, 0x9156                   ; 0x2306
    push ax                          ; 0x2309
    push word [bp + 0x4]             ; 0x230a
    call api_idx_0004_3              ; 0x230d
    add sp, byte 0x0a                ; 0x2310
    jmp near @..api_idx_0004_4.l2    ; 0x2313
    mov ax, 0x9197                   ; 0x2316
    push ax                          ; 0x2319
    mov ax, 0x9190                   ; 0x231a
    push ax                          ; 0x231d
    mov ax, 0x9187                   ; 0x231e
    push ax                          ; 0x2321
    mov ax, 0x917c                   ; 0x2322
    push ax                          ; 0x2325
    push word [bp + 0x4]             ; 0x2326
    call api_idx_0004_3              ; 0x2329
    add sp, byte 0x0a                ; 0x232c
    jmp near @..api_idx_0004_4.l2    ; 0x232f
    mov ax, 0x91bd                   ; 0x2332
    push ax                          ; 0x2335
    mov ax, 0x91b6                   ; 0x2336
    push ax                          ; 0x2339
    mov ax, 0x91ad                   ; 0x233a
    push ax                          ; 0x233d
    mov ax, 0x91a2                   ; 0x233e
    push ax                          ; 0x2341
    push word [bp + 0x4]             ; 0x2342
    call api_idx_0004_3              ; 0x2345
    add sp, byte 0x0a                ; 0x2348
    jmp near @..api_idx_0004_4.l2    ; 0x234b
    mov ax, 0x91e3                   ; 0x234e
    push ax                          ; 0x2351
    mov ax, 0x91dc                   ; 0x2352
    push ax                          ; 0x2355
    mov ax, 0x91d3                   ; 0x2356
    push ax                          ; 0x2359
    mov ax, 0x91c8                   ; 0x235a
    push ax                          ; 0x235d
    push word [bp + 0x4]             ; 0x235e
    call api_idx_0004_3              ; 0x2361
    add sp, byte 0x0a                ; 0x2364
    jmp near @..api_idx_0004_4.l2    ; 0x2367
    mov ax, 0x9209                   ; 0x236a
    push ax                          ; 0x236d
    mov ax, 0x9202                   ; 0x236e
    push ax                          ; 0x2371
    mov ax, 0x91f9                   ; 0x2372
    push ax                          ; 0x2375
    mov ax, 0x91ee                   ; 0x2376
    push ax                          ; 0x2379
    push word [bp + 0x4]             ; 0x237a
    call api_idx_0004_3              ; 0x237d
    add sp, byte 0x0a                ; 0x2380
    jmp near @..api_idx_0004_4.l2    ; 0x2383
    mov ax, 0x922f                   ; 0x2386
    push ax                          ; 0x2389
    mov ax, 0x9228                   ; 0x238a
    push ax                          ; 0x238d
    mov ax, 0x921f                   ; 0x238e
    push ax                          ; 0x2391
    mov ax, 0x9214                   ; 0x2392
    push ax                          ; 0x2395
    push word [bp + 0x4]             ; 0x2396
    call api_idx_0004_3              ; 0x2399
    add sp, byte 0x0a                ; 0x239c
    jmp near @..api_idx_0004_4.l2    ; 0x239f
    mov ax, 0x9255                   ; 0x23a2
    push ax                          ; 0x23a5
    mov ax, 0x924e                   ; 0x23a6
    push ax                          ; 0x23a9
    mov ax, 0x9245                   ; 0x23aa
    push ax                          ; 0x23ad
    mov ax, 0x923a                   ; 0x23ae
    push ax                          ; 0x23b1
    push word [bp + 0x4]             ; 0x23b2
    call api_idx_0004_3              ; 0x23b5
    add sp, byte 0x0a                ; 0x23b8
    jmp short @..api_idx_0004_4.l2   ; 0x23bb
    mov ax, 0x927b                   ; 0x23bd
    push ax                          ; 0x23c0
    mov ax, 0x9274                   ; 0x23c1
    push ax                          ; 0x23c4
    mov ax, 0x926b                   ; 0x23c5
    push ax                          ; 0x23c8
    mov ax, 0x9260                   ; 0x23c9
    push ax                          ; 0x23cc
    push word [bp + 0x4]             ; 0x23cd
    call api_idx_0004_3              ; 0x23d0
    add sp, byte 0x0a                ; 0x23d3
    jmp short @..api_idx_0004_4.l2   ; 0x23d6
    mov ax, 0x92a1                   ; 0x23d8
    push ax                          ; 0x23db
    mov ax, 0x929a                   ; 0x23dc
    push ax                          ; 0x23df
    mov ax, 0x9291                   ; 0x23e0
    push ax                          ; 0x23e3
    mov ax, 0x9286                   ; 0x23e4
    push ax                          ; 0x23e7
    push word [bp + 0x4]             ; 0x23e8
    call api_idx_0004_3              ; 0x23eb
    add sp, byte 0x0a                ; 0x23ee
    jmp short @..api_idx_0004_4.l2   ; 0x23f1
    mov ax, 0x92c7                   ; 0x23f3
    push ax                          ; 0x23f6
    mov ax, 0x92c0                   ; 0x23f7
    push ax                          ; 0x23fa
    mov ax, 0x92b7                   ; 0x23fb
    push ax                          ; 0x23fe
    mov ax, 0x92ac                   ; 0x23ff
    push ax                          ; 0x2402
    push word [bp + 0x4]             ; 0x2403
    call api_idx_0004_3              ; 0x2406
    add sp, byte 0x0a                ; 0x2409
    jmp short @..api_idx_0004_4.l2   ; 0x240c
    db 0xd1, 0x72, 0xed ; sal word [bp + si - 0x0013], 1
    jb short loc_241c                ; 0x2411
    jae short loc_243a               ; 0x2413
    jae short loc_2458               ; 0x2415
    jae short loc_2476               ; 0x2417
    jae short loc_2494               ; 0x2419
    jae short loc_23b2               ; 0x241b
    jae short loc_23d0               ; 0x241d
    jae short loc_23ee               ; 0x241f
    jae short loc_240c               ; 0x2421
    jae short loc_2429               ; 0x2423
    je short loc_2446                ; 0x2425
    je short loc_2463                ; 0x2427
    db 0x74
@..api_idx_0004_4.l1:
    cmp ax, strict word 0xe          ; 0x242a
    jae short @..api_idx_0004_4.l2   ; 0x242d
    xchg bx, ax                      ; 0x242f
    shl bx, 1                        ; 0x2430
    jmp [cs:bx + 0x7455]             ; 0x2432
@..api_idx_0004_4.l2:
    mov ax, 0x248                    ; 0x2437
    imul word [bp + 0x4]             ; 0x243a
    mov bx, ax                       ; 0x243d
    cmp byte [bx + 0x5d65], 0xd      ; 0x243f
    jbe short @..api_idx_0004_4.l3   ; 0x2444
    cmp byte [bx + 0x5d6a], 0xd      ; 0x2446
    jbe short @..api_idx_0004_4.l3   ; 0x244b
    mov word [data_95e8], 1          ; 0x244d
@..api_idx_0004_4.l3:
    mov word [bp - 0x0004], 0        ; 0x2453
    mov ax, word [bp + 0x6]          ; 0x2458
    shl ax, 1                        ; 0x245b
    shl ax, 1                        ; 0x245d
    mov bx, ax                       ; 0x245f
    db 0x8b, 0x87, 0x38, 0x00 ; mov ax, word [bx + 0x38]
    mov word [bp - 0x0002], ax       ; 0x2465
    jmp short @..api_idx_0004_4.l6   ; 0x2468
@..api_idx_0004_4.l4:
    mov ax, word [bp - 0x0002]       ; 0x246a
    shl ax, 1                        ; 0x246d
    mov bx, ax                       ; 0x246f
    cmp word [bx - 0x6a50], byte 1   ; 0x2471
    jne short @..api_idx_0004_4.l5   ; 0x2476
    mov ax, 0x14                     ; 0x2478
    imul word [bp - 0x0004]          ; 0x247b
    add ax, 0xe38                    ; 0x247e
    push ax                          ; 0x2481
    mov ax, word [bp - 0x0002]       ; 0x2482
    add ax, 0x157c                   ; 0x2485
    push ax                          ; 0x2488
    call ds_dispatch_b53b            ; 0x2489
    add sp, byte 4                   ; 0x248c
    mov ax, word [bp - 0x0002]       ; 0x248f
    mov cx, word [bp - 0x0004]       ; 0x2492
    shl cx, 1                        ; 0x2495
    mov si, cx                       ; 0x2497
    mov bx, word [bp + 0x8]          ; 0x2499
    mov word [bx + si], ax           ; 0x249c
    inc word [bp - 0x0004]           ; 0x249e
@..api_idx_0004_4.l5:
    inc word [bp - 0x0002]           ; 0x24a1
@..api_idx_0004_4.l6:
    mov ax, word [bp + 0x6]          ; 0x24a4
    shl ax, 1                        ; 0x24a7
    shl ax, 1                        ; 0x24a9
    mov bx, ax                       ; 0x24ab
    db 0x8b, 0x87, 0x3a, 0x00 ; mov ax, word [bx + 0x3a]
    cmp ax, word [bp - 0x0002]       ; 0x24b1
    jge short @..api_idx_0004_4.l4   ; 0x24b4
    mov ax, 0x95f4                   ; 0x24b6
    push ax                          ; 0x24b9
    mov ax, 0x159e                   ; 0x24ba
    push ax                          ; 0x24bd
    call ds_dispatch_b53b            ; 0x24be
    add sp, byte 4                   ; 0x24c1
    mov ax, word [bp - 0x0004]       ; 0x24c4
    ret                              ; 0x24c7
api_idx_0002_6:
    mov ax, 0xfffe                   ; 0x24c8
    call ds_dispatch_f40b            ; 0x24cb
    mov ax, 0                        ; 0x24ce
    push ax                          ; 0x24d1
    push ax                          ; 0x24d2
    push word [data_952e]            ; 0x24d3
    push word [data_952c]            ; 0x24d7
    call ds_dispatch_e942            ; 0x24db
    add sp, byte 8                   ; 0x24de
    mov word [bp - 0x0002], 0        ; 0x24e1
    jmp near @..api_idx_0002_6.l2    ; 0x24e6
@..api_idx_0002_6.l1:
    mov ax, 0                        ; 0x24e9
    push ax                          ; 0x24ec
    mov ax, word [bp + 0x6]          ; 0x24ed
    shl ax, 1                        ; 0x24f0
    mov bx, ax                       ; 0x24f2
    db 0xff, 0xb7, 0x30, 0x00 ; push word [bx + 0x30]
    call ds_dispatch_e823            ; 0x24f8
    add sp, byte 4                   ; 0x24fb
    mov ax, 6                        ; 0x24fe
    imul word [bp - 0x0002]          ; 0x2501
    add ax, strict word 0x72         ; 0x2504
    push ax                          ; 0x2507
    mov ax, 6                        ; 0x2508
    push ax                          ; 0x250b
    call ds_dispatch_e809            ; 0x250c
    add sp, byte 4                   ; 0x250f
    mov ax, 0                        ; 0x2512
    push ax                          ; 0x2515
    mov ax, 0x14                     ; 0x2516
    imul word [bp - 0x0002]          ; 0x2519
    add ax, 0xe38                    ; 0x251c
    push ax                          ; 0x251f
    call ds_dispatch_e84e            ; 0x2520
    add sp, byte 4                   ; 0x2523
    mov ax, 6                        ; 0x2526
    imul word [bp - 0x0002]          ; 0x2529
    add ax, strict word 0x72         ; 0x252c
    push ax                          ; 0x252f
    mov ax, api_idx_0002_2           ; 0x2530
    push ax                          ; 0x2533
    call ds_dispatch_e809            ; 0x2534
    add sp, byte 4                   ; 0x2537
    mov ax, 0                        ; 0x253a
    push ax                          ; 0x253d
    mov ax, 1                        ; 0x253e
    push ax                          ; 0x2541
    call ds_dispatch_e823            ; 0x2542
    add sp, byte 4                   ; 0x2545
    mov ax, 0                        ; 0x2548
    push ax                          ; 0x254b
    mov ax, 3                        ; 0x254c
    push ax                          ; 0x254f
    mov ax, 0x248                    ; 0x2550
    imul word [bp + 0x4]             ; 0x2553
    mov cx, word [bp - 0x0002]       ; 0x2556
    shl cx, 1                        ; 0x2559
    mov si, cx                       ; 0x255b
    mov bx, word [bp + 0xa]          ; 0x255d
    mov cx, word [bx + si]           ; 0x2560
    add ax, cx                       ; 0x2562
    mov bx, ax                       ; 0x2564
    mov al, byte [bx + 0x5d6c]       ; 0x2566
    sub ah, ah                       ; 0x256a
    push ax                          ; 0x256c
    call ds_dispatch_b2e7            ; 0x256d
    add sp, byte 6                   ; 0x2570
    inc word [bp - 0x0002]           ; 0x2573
@..api_idx_0002_6.l2:
    mov ax, word [bp - 0x0002]       ; 0x2576
    cmp ax, word [bp + 0x8]          ; 0x2579
    jge short @..api_idx_0002_6.l3   ; 0x257c
    jmp near @..api_idx_0002_6.l1    ; 0x257e
@..api_idx_0002_6.l3:
    ret                              ; 0x2581
api_idx_002e:
    mov ax, 0xffd2                   ; 0x2582
    call ds_dispatch_f40b            ; 0x2585
    mov ax, 0                        ; 0x2588
    push ax                          ; 0x258b
    mov ax, 0x16                     ; 0x258c
    push ax                          ; 0x258f
    call ds_dispatch_e823            ; 0x2590
    add sp, byte 4                   ; 0x2593
    mov ax, 0xae                     ; 0x2596
    push ax                          ; 0x2599
    mov ax, 6                        ; 0x259a
    push ax                          ; 0x259d
    call ds_dispatch_e809            ; 0x259e
    add sp, byte 4                   ; 0x25a1
    mov ax, 0                        ; 0x25a4
    push ax                          ; 0x25a7
    mov ax, 0x95f4                   ; 0x25a8
    push ax                          ; 0x25ab
    call ds_dispatch_e84e            ; 0x25ac
    add sp, byte 4                   ; 0x25af
    mov word [bp - 0x0004], 0        ; 0x25b2
    mov word [bp - 0x0006], 0        ; 0x25b7
    mov word [bp - 0x0002], 0        ; 0x25bc
@..api_idx_002e.l1:
    mov ax, 0xa                      ; 0x25c1
    imul word [bp - 0x0002]          ; 0x25c4
    mov bx, ax                       ; 0x25c7
    add bx, bp                       ; 0x25c9
    mov byte [bx - 0x002e], 0        ; 0x25cb
    mov ax, word [bp - 0x0002]       ; 0x25cf
    cmp ax, word [bp + 0x4]          ; 0x25d2
    je short @..api_idx_002e.l4      ; 0x25d5
    shl ax, 1                        ; 0x25d7
    mov bx, ax                       ; 0x25d9
    cmp word [bx - 0x69f8], byte 0   ; 0x25db
    jg short @..api_idx_002e.l2      ; 0x25e0
    mov ax, word [bp - 0x0002]       ; 0x25e2
    cmp ax, strict word 2            ; 0x25e5
    je short @..api_idx_002e.l4      ; 0x25e8
@..api_idx_002e.l2:
    cmp word [bp - 0x0006], byte 0   ; 0x25ea
    je short @..api_idx_002e.l3      ; 0x25ee
    inc word [bp - 0x0004]           ; 0x25f0
@..api_idx_002e.l3:
    mov ax, 0xa                      ; 0x25f3
    imul word [bp - 0x0002]          ; 0x25f6
    lea cx, word [bp - 0x002e]       ; 0x25f9
    add ax, cx                       ; 0x25fc
    push ax                          ; 0x25fe
    push word [bx - 0x69f8]          ; 0x25ff
    call ds_dispatch_b27d            ; 0x2603
    add sp, byte 4                   ; 0x2606
    mov word [bp - 0x0006], 1        ; 0x2609
    jmp short @..api_idx_002e.l6     ; 0x260e
@..api_idx_002e.l4:
    mov ax, word [bp - 0x0002]       ; 0x2610
    cmp ax, word [bp + 0x4]          ; 0x2613
    jne short @..api_idx_002e.l6     ; 0x2616
    cmp word [bp - 0x0006], byte 0   ; 0x2618
    je short @..api_idx_002e.l5      ; 0x261c
    inc word [bp - 0x0004]           ; 0x261e
@..api_idx_002e.l5:
    mov cx, 0xa                      ; 0x2621
    imul cx                          ; 0x2624
    lea cx, word [bp - 0x002e]       ; 0x2626
    add ax, cx                       ; 0x2629
    push ax                          ; 0x262b
    push word [bp + 0x6]             ; 0x262c
    call ds_dispatch_b27d            ; 0x262f
    add sp, byte 4                   ; 0x2632
    mov word [bp - 0x0006], 1        ; 0x2635
@..api_idx_002e.l6:
    mov ax, 0xa                      ; 0x263a
    imul word [bp - 0x0002]          ; 0x263d
    lea cx, word [bp - 0x002e]       ; 0x2640
    add ax, cx                       ; 0x2643
    push ax                          ; 0x2645
    call ds_dispatch_fa90            ; 0x2646
    pop cx                           ; 0x2649
    add word [bp - 0x0004], ax       ; 0x264a
    inc word [bp - 0x0002]           ; 0x264d
    mov ax, word [bp - 0x0002]       ; 0x2650
    cmp ax, strict word 4            ; 0x2653
    jge short @..api_idx_002e.l7     ; 0x2656
    jmp near @..api_idx_002e.l1      ; 0x2658
@..api_idx_002e.l7:
    mov ax, 0xae                     ; 0x265b
    push ax                          ; 0x265e
    mov ax, 0x1a                     ; 0x265f
    sub ax, word [bp - 0x0004]       ; 0x2662
    mov cx, 6                        ; 0x2665
    imul cx                          ; 0x2668
    add ax, strict word 0xfffb       ; 0x266a
    push ax                          ; 0x266d
    call ds_dispatch_e809            ; 0x266e
    add sp, byte 4                   ; 0x2671
    mov word [bp - 0x0006], 0        ; 0x2674
    mov word [bp - 0x0002], 0        ; 0x2679
@..api_idx_002e.l8:
    mov ax, 0xa                      ; 0x267e
    imul word [bp - 0x0002]          ; 0x2681
    lea cx, word [bp - 0x002e]       ; 0x2684
    add ax, cx                       ; 0x2687
    push ax                          ; 0x2689
    call ds_dispatch_fa90            ; 0x268a
    pop cx                           ; 0x268d
    cmp ax, strict word 0            ; 0x268e
    jle short @..api_idx_002e.l10    ; 0x2691
    cmp word [bp - 0x0006], byte 0   ; 0x2693
    je short @..api_idx_002e.l9      ; 0x2697
    mov ax, 0                        ; 0x2699
    push ax                          ; 0x269c
    mov ax, 1                        ; 0x269d
    push ax                          ; 0x26a0
    call ds_dispatch_e823            ; 0x26a1
    add sp, byte 4                   ; 0x26a4
    mov ax, 0                        ; 0x26a7
    push ax                          ; 0x26aa
    mov ax, 0x2f                     ; 0x26ab
    push ax                          ; 0x26ae
    call ds_dispatch_e830            ; 0x26af
    add sp, byte 4                   ; 0x26b2
@..api_idx_002e.l9:
    mov ax, 0                        ; 0x26b5
    push ax                          ; 0x26b8
    mov ax, word [bp - 0x0002]       ; 0x26b9
    shl ax, 1                        ; 0x26bc
    mov bx, ax                       ; 0x26be
    db 0xff, 0xb7, 0x30, 0x00 ; push word [bx + 0x30]
    call ds_dispatch_e823            ; 0x26c4
    add sp, byte 4                   ; 0x26c7
    mov ax, 0                        ; 0x26ca
    push ax                          ; 0x26cd
    mov ax, 0xa                      ; 0x26ce
    imul word [bp - 0x0002]          ; 0x26d1
    lea cx, word [bp - 0x002e]       ; 0x26d4
    add ax, cx                       ; 0x26d7
    push ax                          ; 0x26d9
    call ds_dispatch_e84e            ; 0x26da
    add sp, byte 4                   ; 0x26dd
    mov word [bp - 0x0006], 1        ; 0x26e0
@..api_idx_002e.l10:
    inc word [bp - 0x0002]           ; 0x26e5
    mov ax, word [bp - 0x0002]       ; 0x26e8
    cmp ax, strict word 4            ; 0x26eb
    jl short @..api_idx_002e.l8      ; 0x26ee
    ret                              ; 0x26f0
api_idx_0032:
    mov ax, 0xffce                   ; 0x26f1
    call ds_dispatch_f40b            ; 0x26f4
    mov ax, word [bp + 0x6]          ; 0x26f7
    shl ax, 1                        ; 0x26fa
    mov bx, ax                       ; 0x26fc
    mov ax, word [bx - 0x69f8]       ; 0x26fe
    mov word [bp - 0x000c], ax       ; 0x2702
    mov word [bp - 0x000a], 0        ; 0x2705
    mov word [bp - 0x0028], 0xffff   ; 0x270a
    mov ax, 0xc6                     ; 0x270f
    push ax                          ; 0x2712
    mov ax, 0x13c                    ; 0x2713
    push ax                          ; 0x2716
    mov ax, 0xbb                     ; 0x2717
    push ax                          ; 0x271a
    mov ax, 3                        ; 0x271b
    push ax                          ; 0x271e
    call ds_dispatch_e928            ; 0x271f
    add sp, byte 8                   ; 0x2722
    mov word [bp - 0x002c], dx       ; 0x2725
    mov word [bp - 0x002e], ax       ; 0x2728
@..api_idx_0032.l1:
    push word [bp + 0xa]             ; 0x272b
    push word [bp + 0x8]             ; 0x272e
    push word [bp + 0x6]             ; 0x2731
    push word [bp + 0x4]             ; 0x2734
    call api_idx_0002_6              ; 0x2737
    add sp, byte 8                   ; 0x273a
    push word [bp - 0x000c]          ; 0x273d
    push word [bp + 0x6]             ; 0x2740
    call api_idx_002e                ; 0x2743
    add sp, byte 4                   ; 0x2746
    mov ax, 0                        ; 0x2749
    push ax                          ; 0x274c
    mov ax, 1                        ; 0x274d
    push ax                          ; 0x2750
    call ds_dispatch_e823            ; 0x2751
    add sp, byte 4                   ; 0x2754
    mov ax, 6                        ; 0x2757
    imul word [bp - 0x000a]          ; 0x275a
    add ax, strict word 0x72         ; 0x275d
    push ax                          ; 0x2760
    mov ax, 0x7f                     ; 0x2761
    push ax                          ; 0x2764
    call ds_dispatch_e809            ; 0x2765
    add sp, byte 4                   ; 0x2768
    mov ax, 0                        ; 0x276b
    push ax                          ; 0x276e
    mov ax, 5                        ; 0x276f
    push ax                          ; 0x2772
    call ds_dispatch_e830            ; 0x2773
    add sp, byte 4                   ; 0x2776
    mov ax, 6                        ; 0x2779
    imul word [bp - 0x000a]          ; 0x277c
    add ax, strict word 0x72         ; 0x277f
    push ax                          ; 0x2782
    mov ax, 0x97                     ; 0x2783
    push ax                          ; 0x2786
    call ds_dispatch_e809            ; 0x2787
    add sp, byte 4                   ; 0x278a
    mov ax, 0                        ; 0x278d
    push ax                          ; 0x2790
    mov ax, 6                        ; 0x2791
    push ax                          ; 0x2794
    call ds_dispatch_e830            ; 0x2795
    add sp, byte 4                   ; 0x2798
    mov word [bp - 0x0002], 0        ; 0x279b
    jmp near @..api_idx_0032.l7      ; 0x27a0
@..api_idx_0032.l2:
    mov ax, word [bp - 0x0002]       ; 0x27a3
    cmp ax, word [bp - 0x000a]       ; 0x27a6
    jne short @..api_idx_0032.l3     ; 0x27a9
    mov ax, 0                        ; 0x27ab
    push ax                          ; 0x27ae
    mov ax, 0x2d                     ; 0x27af
    push ax                          ; 0x27b2
    mov ax, 6                        ; 0x27b3
    imul word [bp - 0x000a]          ; 0x27b6
    add ax, strict word 0x76         ; 0x27b9
    push ax                          ; 0x27bc
    mov ax, 0x84                     ; 0x27bd
    push ax                          ; 0x27c0
    mov ax, 6                        ; 0x27c1
    imul word [bp - 0x000a]          ; 0x27c4
    add ax, strict word 0x71         ; 0x27c7
    push ax                          ; 0x27ca
    mov ax, 0x7f                     ; 0x27cb
    push ax                          ; 0x27ce
    push word [bp - 0x0002]          ; 0x27cf
    call ds_dispatch_baa6            ; 0x27d2
    add sp, byte 0x0e                ; 0x27d5
    mov ax, 0x3d                     ; 0x27d8
    push ax                          ; 0x27db
    mov ax, 0x2b                     ; 0x27dc
    push ax                          ; 0x27df
    mov ax, 6                        ; 0x27e0
    imul word [bp - 0x000a]          ; 0x27e3
    add ax, strict word 0x76         ; 0x27e6
    push ax                          ; 0x27e9
    mov ax, 0x9c                     ; 0x27ea
    push ax                          ; 0x27ed
    mov ax, 6                        ; 0x27ee
    imul word [bp - 0x000a]          ; 0x27f1
    add ax, strict word 0x71         ; 0x27f4
    push ax                          ; 0x27f7
    mov ax, 0x97                     ; 0x27f8
    push ax                          ; 0x27fb
    push word [bp + 0x8]             ; 0x27fc
    call ds_dispatch_baa6            ; 0x27ff
    add sp, byte 0x0e                ; 0x2802
    jmp short @..api_idx_0032.l6     ; 0x2805
@..api_idx_0032.l3:
    mov ax, 0                        ; 0x2807
    push ax                          ; 0x280a
    mov ax, word [bp - 0x000a]       ; 0x280b
    inc ax                           ; 0x280e
    cwd                              ; 0x280f
    idiv word [bp + 0x8]             ; 0x2810
    mov ax, dx                       ; 0x2813
    cmp ax, word [bp - 0x0002]       ; 0x2815
    jne short @..api_idx_0032.l4     ; 0x2818
    mov al, 0x20                     ; 0x281a
    jmp short @..api_idx_0032.l5     ; 0x281c
@..api_idx_0032.l4:
    mov al, 0                        ; 0x281e
@..api_idx_0032.l5:
    cbw                              ; 0x2820
    push ax                          ; 0x2821
    mov ax, 6                        ; 0x2822
    imul word [bp - 0x0002]          ; 0x2825
    add ax, strict word 0x76         ; 0x2828
    push ax                          ; 0x282b
    mov ax, 0x9c                     ; 0x282c
    push ax                          ; 0x282f
    mov ax, 6                        ; 0x2830
    imul word [bp - 0x0002]          ; 0x2833
    add ax, strict word 0x71         ; 0x2836
    push ax                          ; 0x2839
    mov ax, 6                        ; 0x283a
    push ax                          ; 0x283d
    push word [bp - 0x0002]          ; 0x283e
    call ds_dispatch_baa6            ; 0x2841
    add sp, byte 0x0e                ; 0x2844
@..api_idx_0032.l6:
    inc word [bp - 0x0002]           ; 0x2847
@..api_idx_0032.l7:
    mov ax, word [bp - 0x0002]       ; 0x284a
    cmp ax, word [bp + 0x8]          ; 0x284d
    jge short @..api_idx_0032.l8     ; 0x2850
    jmp near @..api_idx_0032.l2      ; 0x2852
@..api_idx_0032.l8:
    mov ax, 0                        ; 0x2855
    push ax                          ; 0x2858
    push word [bp - 0x002c]          ; 0x2859
    push word [bp - 0x002e]          ; 0x285c
    call ds_dispatch_e94f            ; 0x285f
    add sp, byte 6                   ; 0x2862
    mov ax, word [bp - 0x000c]       ; 0x2865
    mov word [bp - 0x0004], ax       ; 0x2868
    mov word [bp - 0x0002], 0        ; 0x286b
@..api_idx_0032.l9:
    mov ax, word [bp - 0x0002]       ; 0x2870
    cmp ax, word [bp + 0x6]          ; 0x2873
    je short @..api_idx_0032.l10     ; 0x2876
    shl ax, 1                        ; 0x2878
    mov bx, ax                       ; 0x287a
    mov ax, word [bx - 0x69f8]       ; 0x287c
    add word [bp - 0x0004], ax       ; 0x2880
@..api_idx_0032.l10:
    inc word [bp - 0x0002]           ; 0x2883
    mov ax, word [bp - 0x0002]       ; 0x2886
    cmp ax, strict word 4            ; 0x2889
    jl short @..api_idx_0032.l9      ; 0x288c
    mov ax, 1                        ; 0x288e
    cmp word [bp - 0x0004], byte 0   ; 0x2891
    jle short @..api_idx_0032.l11    ; 0x2895
    mov ax, 0                        ; 0x2897
@..api_idx_0032.l11:
    mov bx, word [bp + 0xc]          ; 0x289a
    mov word [bx + 0x8], ax          ; 0x289d
    mov word [bp - 0x000e], 0        ; 0x28a0
    mov word [bp - 0x0002], 0        ; 0x28a5
@..api_idx_0032.l12:
    mov ax, word [bp - 0x0002]       ; 0x28aa
    shl ax, 1                        ; 0x28ad
    mov si, ax                       ; 0x28af
    mov bx, word [bp + 0xc]          ; 0x28b1
    cmp word [bx + si], byte 0       ; 0x28b4
    jne short @..api_idx_0032.l13    ; 0x28b7
    jmp near @..api_idx_0032.l16     ; 0x28b9
@..api_idx_0032.l13:
    mov ax, 0x3a                     ; 0x28bc
    imul word [bp - 0x000e]          ; 0x28bf
    add ax, strict word 4            ; 0x28c2
    mov word [bp - 0x0006], ax       ; 0x28c5
    mov ax, 0                        ; 0x28c8
    push ax                          ; 0x28cb
    mov ax, 0xc4                     ; 0x28cc
    push ax                          ; 0x28cf
    mov ax, word [bp - 0x0006]       ; 0x28d0
    add ax, strict word 0x36         ; 0x28d3
    push ax                          ; 0x28d6
    mov ax, 0xbc                     ; 0x28d7
    push ax                          ; 0x28da
    push word [bp - 0x0006]          ; 0x28db
    call ds_dispatch_bce3            ; 0x28de
    add sp, byte 0x0a                ; 0x28e1
    mov ax, 0xc0                     ; 0x28e4
    push ax                          ; 0x28e7
    mov ax, 1                        ; 0x28e8
    mov cx, word [bp - 0x0002]       ; 0x28eb
    cmp cx, word [bp + 0x6]          ; 0x28ee
    jne short @..api_idx_0032.l14    ; 0x28f1
    mov ax, 0x1a                     ; 0x28f3
@..api_idx_0032.l14:
    push ax                          ; 0x28f6
    call ds_dispatch_e823            ; 0x28f7
    add sp, byte 4                   ; 0x28fa
    mov ax, 0xbe                     ; 0x28fd
    push ax                          ; 0x2900
    mov ax, 0x14                     ; 0x2901
    imul word [bp - 0x0002]          ; 0x2904
    add ax, 0x9610                   ; 0x2907
    push ax                          ; 0x290a
    call ds_dispatch_fa90            ; 0x290b
    pop cx                           ; 0x290e
    mov cx, ax                       ; 0x290f
    mov ax, 9                        ; 0x2911
    sub ax, cx                       ; 0x2914
    mov cx, 6                        ; 0x2916
    imul cx                          ; 0x2919
    mov cx, data_0002                ; 0x291b
    cwd                              ; 0x291e
    idiv cx                          ; 0x291f
    add ax, word [bp - 0x0006]       ; 0x2921
    inc ax                           ; 0x2924
    push ax                          ; 0x2925
    call ds_dispatch_e809            ; 0x2926
    add sp, byte 4                   ; 0x2929
    mov ax, 0                        ; 0x292c
    push ax                          ; 0x292f
    mov ax, 0x14                     ; 0x2930
    imul word [bp - 0x0002]          ; 0x2933
    add ax, 0x9610                   ; 0x2936
    push ax                          ; 0x2939
    call ds_dispatch_e84e            ; 0x293a
    add sp, byte 4                   ; 0x293d
    mov ax, 0                        ; 0x2940
    push ax                          ; 0x2943
    push ax                          ; 0x2944
    mov ax, 0xc4                     ; 0x2945
    push ax                          ; 0x2948
    mov ax, word [bp - 0x0006]       ; 0x2949
    add ax, strict word 0x36         ; 0x294c
    push ax                          ; 0x294f
    mov ax, 0xbc                     ; 0x2950
    push ax                          ; 0x2953
    push word [bp - 0x0006]          ; 0x2954
    mov ax, word [bp + 0x8]          ; 0x2957
    add ax, word [bp - 0x000e]       ; 0x295a
    inc ax                           ; 0x295d
    push ax                          ; 0x295e
    call ds_dispatch_baa6            ; 0x295f
    add sp, byte 0x0e                ; 0x2962
    mov ax, word [bp - 0x0002]       ; 0x2965
    mov cx, word [bp - 0x000e]       ; 0x2968
    shl cx, 1                        ; 0x296b
    mov bx, cx                       ; 0x296d
    add bx, bp                       ; 0x296f
    mov word [bx - 0x0026], ax       ; 0x2971
    cmp ax, word [bp + 0x6]          ; 0x2974
    jne short @..api_idx_0032.l15    ; 0x2977
    mov ax, word [bp - 0x000e]       ; 0x2979
    mov word [bp - 0x0032], ax       ; 0x297c
    cmp word [data_0e32], byte 0     ; 0x297f
    jne short @..api_idx_0032.l15    ; 0x2984
    mov ax, 0x16                     ; 0x2986
    push ax                          ; 0x2989
    mov ax, 0xc4                     ; 0x298a
    push ax                          ; 0x298d
    mov ax, word [bp - 0x0006]       ; 0x298e
    add ax, strict word 0x36         ; 0x2991
    push ax                          ; 0x2994
    mov ax, 0xbc                     ; 0x2995
    push ax                          ; 0x2998
    push word [bp - 0x0006]          ; 0x2999
    call loc_03ca                    ; 0x299c
    add sp, byte 0x0a                ; 0x299f
@..api_idx_0032.l15:
    inc word [bp - 0x000e]           ; 0x29a2
@..api_idx_0032.l16:
    inc word [bp - 0x0002]           ; 0x29a5
    mov ax, word [bp - 0x0002]       ; 0x29a8
    cmp ax, strict word 4            ; 0x29ab
    jg short @..api_idx_0032.l17     ; 0x29ae
    jmp near @..api_idx_0032.l12     ; 0x29b0
@..api_idx_0032.l17:
    mov ax, 0                        ; 0x29b3
    push ax                          ; 0x29b6
    push ax                          ; 0x29b7
    push ax                          ; 0x29b8
    push ax                          ; 0x29b9
    push ax                          ; 0x29ba
    mov ax, 0xffff                   ; 0x29bb
    push ax                          ; 0x29be
    mov ax, word [bp + 0x8]          ; 0x29bf
    add ax, word [bp - 0x000e]       ; 0x29c2
    inc ax                           ; 0x29c5
    push ax                          ; 0x29c6
    call ds_dispatch_baa6            ; 0x29c7
    add sp, byte 0x0e                ; 0x29ca
    mov ax, 0xc6                     ; 0x29cd
    push ax                          ; 0x29d0
    mov ax, 0x13c                    ; 0x29d1
    push ax                          ; 0x29d4
    mov ax, 0x70                     ; 0x29d5
    push ax                          ; 0x29d8
    mov ax, 1                        ; 0x29d9
    push ax                          ; 0x29dc
    call ds_dispatch_e8da            ; 0x29dd
    add sp, byte 8                   ; 0x29e0
    cmp word [data_0e32], byte 0     ; 0x29e3
    je short @..api_idx_0032.l19     ; 0x29e8
@..api_idx_0032.l18:
    mov ax, 0x59fe                   ; 0x29ea
    push ax                          ; 0x29ed
    call ds_dispatch_b90d            ; 0x29ee
    pop cx                           ; 0x29f1
    dec ax                           ; 0x29f2
    mov word [bp - 0x0008], ax       ; 0x29f3
    cmp word [data_5b3e], byte 0     ; 0x29f6
    je short @..api_idx_0032.l18     ; 0x29fb
    jmp near @..api_idx_0032.l31     ; 0x29fd
@..api_idx_0032.l19:
    mov word [bp - 0x0008], 0xffff   ; 0x2a00
    mov ax, word [bp - 0x0032]       ; 0x2a05
    mov word [bp - 0x0002], ax       ; 0x2a08
@..api_idx_0032.l20:
    mov ax, 0x3a                     ; 0x2a0b
    imul word [bp - 0x0002]          ; 0x2a0e
    add ax, strict word 4            ; 0x2a11
    mov word [bp - 0x0006], ax       ; 0x2a14
    mov ax, 0x16                     ; 0x2a17
    push ax                          ; 0x2a1a
    mov ax, 0xc4                     ; 0x2a1b
    push ax                          ; 0x2a1e
    mov ax, word [bp - 0x0006]       ; 0x2a1f
    add ax, strict word 0x36         ; 0x2a22
    push ax                          ; 0x2a25
    mov ax, 0xbc                     ; 0x2a26
    push ax                          ; 0x2a29
    push word [bp - 0x0006]          ; 0x2a2a
    call loc_03ca                    ; 0x2a2d
    add sp, byte 0x0a                ; 0x2a30
    mov ax, 0xc7                     ; 0x2a33
    push ax                          ; 0x2a36
    mov ax, 0x13d                    ; 0x2a37
    push ax                          ; 0x2a3a
    mov ax, 0xbb                     ; 0x2a3b
    push ax                          ; 0x2a3e
    mov ax, 3                        ; 0x2a3f
    push ax                          ; 0x2a42
    call ds_dispatch_e8da            ; 0x2a43
    add sp, byte 8                   ; 0x2a46
    mov ax, 0                        ; 0x2a49
    push ax                          ; 0x2a4c
    mov ax, 0xc4                     ; 0x2a4d
    push ax                          ; 0x2a50
    mov ax, word [bp - 0x0006]       ; 0x2a51
    add ax, strict word 0x36         ; 0x2a54
    push ax                          ; 0x2a57
    mov ax, 0xbc                     ; 0x2a58
    push ax                          ; 0x2a5b
    push word [bp - 0x0006]          ; 0x2a5c
    call loc_03ca                    ; 0x2a5f
    add sp, byte 0x0a                ; 0x2a62
@..api_idx_0032.l21:
    mov ax, 1                        ; 0x2a65
    push ax                          ; 0x2a68
    call ds_dispatch_ea50            ; 0x2a69
    pop cx                           ; 0x2a6c
    test ax, ax                      ; 0x2a6d
    jne short @..api_idx_0032.l22    ; 0x2a6f
    jmp short @..api_idx_0032.l21    ; 0x2a71
@..api_idx_0032.l22:
    mov ax, 1                        ; 0x2a73
    push ax                          ; 0x2a76
    call ds_dispatch_eb32            ; 0x2a77
    pop cx                           ; 0x2a7a
    sub ah, ah                       ; 0x2a7b
    mov word [bp - 0x0030], ax       ; 0x2a7d
    jmp short @..api_idx_0032.l29    ; 0x2a80
@..api_idx_0032.l23:
    mov ax, word [bp - 0x0002]       ; 0x2a82
    add ax, word [bp - 0x000e]       ; 0x2a85
    dec ax                           ; 0x2a88
    cwd                              ; 0x2a89
    idiv word [bp - 0x000e]          ; 0x2a8a
    mov word [bp - 0x0002], dx       ; 0x2a8d
    jmp short @..api_idx_0032.l30    ; 0x2a90
@..api_idx_0032.l24:
    mov ax, word [bp - 0x0002]       ; 0x2a92
    inc ax                           ; 0x2a95
    cwd                              ; 0x2a96
    idiv word [bp - 0x000e]          ; 0x2a97
    mov word [bp - 0x0002], dx       ; 0x2a9a
    jmp short @..api_idx_0032.l30    ; 0x2a9d
@..api_idx_0032.l25:
    mov ax, word [bp + 0x8]          ; 0x2a9f
    add ax, word [bp - 0x0002]       ; 0x2aa2
    inc ax                           ; 0x2aa5
    mov word [bp - 0x0008], ax       ; 0x2aa6
    jmp short @..api_idx_0032.l30    ; 0x2aa9
@..api_idx_0032.l26:
    mov ax, word [bp - 0x000a]       ; 0x2aab
    mov word [bp - 0x0008], ax       ; 0x2aae
    jmp short @..api_idx_0032.l30    ; 0x2ab1
@..api_idx_0032.l27:
    mov ax, word [bp + 0x8]          ; 0x2ab3
    mov word [bp - 0x0008], ax       ; 0x2ab6
    jmp short @..api_idx_0032.l30    ; 0x2ab9
@..api_idx_0032.l28:
    mov ax, word [bp - 0x000a]       ; 0x2abb
    inc ax                           ; 0x2abe
    cwd                              ; 0x2abf
    idiv word [bp + 0x8]             ; 0x2ac0
    mov word [bp - 0x0008], dx       ; 0x2ac3
    jmp short @..api_idx_0032.l30    ; 0x2ac6
@..api_idx_0032.l29:
    cmp ax, strict word 8            ; 0x2ac8
    je short @..api_idx_0032.l23     ; 0x2acb
    cmp ax, strict word 0xa          ; 0x2acd
    je short @..api_idx_0032.l24     ; 0x2ad0
    cmp ax, strict word 0xd          ; 0x2ad2
    je short @..api_idx_0032.l25     ; 0x2ad5
    cmp ax, strict word 0x20         ; 0x2ad7
    je short @..api_idx_0032.l28     ; 0x2ada
    cmp ax, strict word 0x2b         ; 0x2adc
    je short @..api_idx_0032.l27     ; 0x2adf
    cmp ax, strict word 0x2d         ; 0x2ae1
    je short @..api_idx_0032.l26     ; 0x2ae4
    cmp ax, strict word 0x3d         ; 0x2ae6
    je short @..api_idx_0032.l27     ; 0x2ae9
@..api_idx_0032.l30:
    cmp word [bp - 0x0008], byte 0xff ; 0x2aeb
    jne short @..api_idx_0032.l31    ; 0x2aef
    jmp near @..api_idx_0032.l20     ; 0x2af1
@..api_idx_0032.l31:
    mov ax, word [bp - 0x0008]       ; 0x2af4
    cmp ax, word [bp + 0x8]          ; 0x2af7
    jge short @..api_idx_0032.l32    ; 0x2afa
    cmp ax, word [bp - 0x000a]       ; 0x2afc
    je short @..api_idx_0032.l32     ; 0x2aff
    mov word [bp - 0x000a], ax       ; 0x2b01
    jmp near @..api_idx_0032.l39     ; 0x2b04
@..api_idx_0032.l32:
    mov ax, word [bp - 0x0008]       ; 0x2b07
    cmp ax, word [bp - 0x000a]       ; 0x2b0a
    jne short @..api_idx_0032.l35    ; 0x2b0d
    mov ax, 0x248                    ; 0x2b0f
    imul word [bp + 0x4]             ; 0x2b12
    mov cx, word [bp - 0x000a]       ; 0x2b15
    shl cx, 1                        ; 0x2b18
    mov si, cx                       ; 0x2b1a
    mov bx, word [bp + 0xa]          ; 0x2b1c
    mov cx, word [bx + si]           ; 0x2b1f
    add ax, cx                       ; 0x2b21
    mov bx, ax                       ; 0x2b23
    mov al, byte [bx + 0x5d6c]       ; 0x2b25
    sub ah, ah                       ; 0x2b29
    shl cx, 1                        ; 0x2b2b
    mov bx, cx                       ; 0x2b2d
    mov cx, word [bx - 0x6928]       ; 0x2b2f
    cmp ax, cx                       ; 0x2b33
    jle short @..api_idx_0032.l33    ; 0x2b35
    mov ax, 0x248                    ; 0x2b37
    imul word [bp + 0x4]             ; 0x2b3a
    mov bx, word [bp + 0xa]          ; 0x2b3d
    mov cx, word [bx + si]           ; 0x2b40
    add ax, cx                       ; 0x2b42
    mov bx, ax                       ; 0x2b44
    dec byte [bx + 0x5d6c]           ; 0x2b46
    inc word [bp - 0x000c]           ; 0x2b4a
    jmp short @..api_idx_0032.l34    ; 0x2b4d
@..api_idx_0032.l33:
    mov ax, 0                        ; 0x2b4f
    push ax                          ; 0x2b52
    call ds_dispatch_b7e0            ; 0x2b53
    pop cx                           ; 0x2b56
@..api_idx_0032.l34:
    jmp short @..api_idx_0032.l39    ; 0x2b57
@..api_idx_0032.l35:
    mov ax, word [bp - 0x0008]       ; 0x2b59
    cmp ax, word [bp + 0x8]          ; 0x2b5c
    jne short @..api_idx_0032.l38    ; 0x2b5f
    mov ax, 0x248                    ; 0x2b61
    imul word [bp + 0x4]             ; 0x2b64
    mov cx, word [bp - 0x000a]       ; 0x2b67
    shl cx, 1                        ; 0x2b6a
    mov si, cx                       ; 0x2b6c
    mov bx, word [bp + 0xa]          ; 0x2b6e
    mov cx, word [bx + si]           ; 0x2b71
    add ax, cx                       ; 0x2b73
    mov bx, ax                       ; 0x2b75
    cmp byte [bx + 0x5d6c], 0x64     ; 0x2b77
    jae short @..api_idx_0032.l36    ; 0x2b7c
    cmp word [bp - 0x000c], byte 0   ; 0x2b7e
    jle short @..api_idx_0032.l36    ; 0x2b82
    inc byte [bx + 0x5d6c]           ; 0x2b84
    dec word [bp - 0x000c]           ; 0x2b88
    jmp short @..api_idx_0032.l37    ; 0x2b8b
@..api_idx_0032.l36:
    mov ax, 0                        ; 0x2b8d
    push ax                          ; 0x2b90
    call ds_dispatch_b7e0            ; 0x2b91
    pop cx                           ; 0x2b94
@..api_idx_0032.l37:
    jmp short @..api_idx_0032.l39    ; 0x2b95
@..api_idx_0032.l38:
    mov ax, word [bp - 0x0008]       ; 0x2b97
    sub ax, word [bp + 0x8]          ; 0x2b9a
    dec ax                           ; 0x2b9d
    mov word [bp - 0x0028], ax       ; 0x2b9e
    shl ax, 1                        ; 0x2ba1
    mov bx, ax                       ; 0x2ba3
    add bx, bp                       ; 0x2ba5
    mov ax, word [bx - 0x0026]       ; 0x2ba7
    mov word [bp - 0x002a], ax       ; 0x2baa
@..api_idx_0032.l39:
    cmp word [bp - 0x0028], byte 0xff ; 0x2bad
    jne short @..api_idx_0032.l40    ; 0x2bb1
    jmp near @..api_idx_0032.l1      ; 0x2bb3
@..api_idx_0032.l40:
    mov ax, word [bp - 0x000c]       ; 0x2bb6
    mov cx, word [bp + 0x6]          ; 0x2bb9
    shl cx, 1                        ; 0x2bbc
    mov bx, cx                       ; 0x2bbe
    mov word [bx - 0x69f8], ax       ; 0x2bc0
    mov ax, 1                        ; 0x2bc4
    push ax                          ; 0x2bc7
    push ax                          ; 0x2bc8
    mov ax, 9                        ; 0x2bc9
    push ax                          ; 0x2bcc
    mov ax, 0xbc                     ; 0x2bcd
    push ax                          ; 0x2bd0
    mov ax, 0x3a                     ; 0x2bd1
    imul word [bp - 0x0028]          ; 0x2bd4
    add ax, strict word 4            ; 0x2bd7
    push ax                          ; 0x2bda
    call ds_dispatch_be5f            ; 0x2bdb
    add sp, byte 0x0a                ; 0x2bde
    mov ax, 0                        ; 0x2be1
    push ax                          ; 0x2be4
    mov ax, 1                        ; 0x2be5
    push ax                          ; 0x2be8
    mov ax, 9                        ; 0x2be9
    push ax                          ; 0x2bec
    mov ax, 0xbc                     ; 0x2bed
    push ax                          ; 0x2bf0
    mov ax, 0x3a                     ; 0x2bf1
    imul word [bp - 0x0028]          ; 0x2bf4
    add ax, strict word 4            ; 0x2bf7
    push ax                          ; 0x2bfa
    call ds_dispatch_be5f            ; 0x2bfb
    add sp, byte 0x0a                ; 0x2bfe
    mov ax, 1                        ; 0x2c01
    push ax                          ; 0x2c04
    push word [bp - 0x002c]          ; 0x2c05
    push word [bp - 0x002e]          ; 0x2c08
    call ds_dispatch_e94f            ; 0x2c0b
    add sp, byte 6                   ; 0x2c0e
    mov ax, word [bp - 0x002a]       ; 0x2c11
    ret                              ; 0x2c14
api_idx_0088:
    mov ax, 0xff78                   ; 0x2c15
    call ds_dispatch_f40b            ; 0x2c18
    mov word [bp - 0x0002], 0        ; 0x2c1b
@..api_idx_0088.l1:
    mov ax, 0x248                    ; 0x2c20
    imul word [bp + 0x4]             ; 0x2c23
    add ax, word [bp - 0x0002]       ; 0x2c26
    mov bx, ax                       ; 0x2c29
    mov al, byte [bx + 0x5d6c]       ; 0x2c2b
    sub ah, ah                       ; 0x2c2f
    mov cx, word [bp - 0x0002]       ; 0x2c31
    shl cx, 1                        ; 0x2c34
    mov bx, cx                       ; 0x2c36
    mov word [bx - 0x6928], ax       ; 0x2c38
    inc word [bp - 0x0002]           ; 0x2c3c
    mov ax, word [bp - 0x0002]       ; 0x2c3f
    cmp ax, strict word 0x22         ; 0x2c42
    jl short @..api_idx_0088.l1      ; 0x2c45
    mov word [bp - 0x0002], 0        ; 0x2c47
@..api_idx_0088.l2:
    mov ax, 0x14                     ; 0x2c4c
    imul word [bp - 0x0002]          ; 0x2c4f
    add ax, 0x9610                   ; 0x2c52
    push ax                          ; 0x2c55
    mov ax, word [bp - 0x0002]       ; 0x2c56
    add ax, 0x258                    ; 0x2c59
    push ax                          ; 0x2c5c
    call ds_dispatch_b53b            ; 0x2c5d
    add sp, byte 4                   ; 0x2c60
    inc word [bp - 0x0002]           ; 0x2c63
    mov ax, word [bp - 0x0002]       ; 0x2c66
    cmp ax, strict word 4            ; 0x2c69
    jle short @..api_idx_0088.l2     ; 0x2c6c
    lea ax, word [bp - 0x0088]       ; 0x2c6e
    push ax                          ; 0x2c72
    push word [bp + 0x6]             ; 0x2c73
    call ds_dispatch_b53b            ; 0x2c76
    add sp, byte 4                   ; 0x2c79
    mov ax, 1                        ; 0x2c7c
    push ax                          ; 0x2c7f
    lea ax, word [bp - 0x0088]       ; 0x2c80
    push ax                          ; 0x2c84
    call api_idx_0004_2              ; 0x2c85
    add sp, byte 4                   ; 0x2c88
    mov word [bp - 0x0006], 0        ; 0x2c8b
@..api_idx_0088.l3:
    lea ax, word [bp - 0x0020]       ; 0x2c90
    push ax                          ; 0x2c93
    push word [bp - 0x0006]          ; 0x2c94
    push word [bp + 0x4]             ; 0x2c97
    call api_idx_0004_4              ; 0x2c9a
    add sp, byte 6                   ; 0x2c9d
    mov word [bp - 0x0008], ax       ; 0x2ca0
    lea ax, word [bp - 0x0020]       ; 0x2ca3
    push ax                          ; 0x2ca6
    push word [bp - 0x0008]          ; 0x2ca7
    push word [bp - 0x0006]          ; 0x2caa
    push word [bp + 0x4]             ; 0x2cad
    call api_idx_0002_6              ; 0x2cb0
    add sp, byte 8                   ; 0x2cb3
    mov word [bp - 0x0004], 0        ; 0x2cb6
@..api_idx_0088.l4:
    mov ax, word [bp - 0x0004]       ; 0x2cbb
    shl ax, 1                        ; 0x2cbe
    mov bx, ax                       ; 0x2cc0
    add bx, bp                       ; 0x2cc2
    mov word [bx - 0x0038], 0        ; 0x2cc4
    mov ax, word [bp - 0x0004]       ; 0x2cc9
    shl ax, 1                        ; 0x2ccc
    shl ax, 1                        ; 0x2cce
    mov bx, ax                       ; 0x2cd0
    db 0x8b, 0x87, 0x38, 0x00 ; mov ax, word [bx + 0x38]
    mov word [bp - 0x0002], ax       ; 0x2cd6
    jmp short @..api_idx_0088.l8     ; 0x2cd9
@..api_idx_0088.l5:
    mov ax, word [bp - 0x0002]       ; 0x2cdb
    shl ax, 1                        ; 0x2cde
    mov bx, ax                       ; 0x2ce0
    cmp word [bx - 0x6a50], byte 0   ; 0x2ce2
    jne short @..api_idx_0088.l6     ; 0x2ce7
    mov ax, 0x248                    ; 0x2ce9
    imul word [bp + 0x4]             ; 0x2cec
    add ax, word [bp - 0x0002]       ; 0x2cef
    mov bx, ax                       ; 0x2cf2
    cmp byte [bx + 0x5d6c], 0        ; 0x2cf4
    jbe short @..api_idx_0088.l7     ; 0x2cf9
@..api_idx_0088.l6:
    mov ax, word [bp - 0x0004]       ; 0x2cfb
    shl ax, 1                        ; 0x2cfe
    mov bx, ax                       ; 0x2d00
    add bx, bp                       ; 0x2d02
    mov word [bx - 0x0038], 1        ; 0x2d04
@..api_idx_0088.l7:
    inc word [bp - 0x0002]           ; 0x2d09
@..api_idx_0088.l8:
    mov ax, word [bp - 0x0004]       ; 0x2d0c
    shl ax, 1                        ; 0x2d0f
    shl ax, 1                        ; 0x2d11
    mov bx, ax                       ; 0x2d13
    db 0x8b, 0x87, 0x3a, 0x00 ; mov ax, word [bx + 0x3a]
    cmp ax, word [bp - 0x0002]       ; 0x2d19
    jge short @..api_idx_0088.l5     ; 0x2d1c
    inc word [bp - 0x0004]           ; 0x2d1e
    mov ax, word [bp - 0x0004]       ; 0x2d21
    cmp ax, strict word 4            ; 0x2d24
    jl short @..api_idx_0088.l4      ; 0x2d27
    lea ax, word [bp - 0x0038]       ; 0x2d29
    push ax                          ; 0x2d2c
    lea ax, word [bp - 0x0020]       ; 0x2d2d
    push ax                          ; 0x2d30
    push word [bp - 0x0008]          ; 0x2d31
    push word [bp - 0x0006]          ; 0x2d34
    push word [bp + 0x4]             ; 0x2d37
    call api_idx_0032                ; 0x2d3a
    add sp, byte 0x0a                ; 0x2d3d
    mov word [bp - 0x0006], ax       ; 0x2d40
    cmp word [bp - 0x0006], byte 4   ; 0x2d43
    je short @..api_idx_0088.l9      ; 0x2d47
    jmp near @..api_idx_0088.l3      ; 0x2d49
@..api_idx_0088.l9:
    mov ax, 0xc6                     ; 0x2d4c
    push ax                          ; 0x2d4f
    mov ax, 0x13c                    ; 0x2d50
    push ax                          ; 0x2d53
    mov ax, 0x70                     ; 0x2d54
    push ax                          ; 0x2d57
    mov ax, 1                        ; 0x2d58
    push ax                          ; 0x2d5b
    call ds_dispatch_e8da            ; 0x2d5c
    add sp, byte 8                   ; 0x2d5f
    ret                              ; 0x2d62
api_idx_0004_5:
    mov ax, 0xfffc                   ; 0x2d63
    call ds_dispatch_f40b            ; 0x2d66
    mov word [bp - 0x0004], 0        ; 0x2d69
    mov word [bp - 0x0002], 0        ; 0x2d6e
@..api_idx_0004_5.l1:
    mov ax, 6                        ; 0x2d73
    imul word [bp - 0x0002]          ; 0x2d76
    mov bx, ax                       ; 0x2d79
    mov al, byte [bx + 0x620]        ; 0x2d7b
    sub ah, ah                       ; 0x2d7f
    cmp ax, word [bp + 0x6]          ; 0x2d81
    jne short @..api_idx_0004_5.l2   ; 0x2d84
    push word [bp - 0x0002]          ; 0x2d86
    mov ax, 0x248                    ; 0x2d89
    imul word [bp + 0x4]             ; 0x2d8c
    add ax, 0x5e12                   ; 0x2d8f
    push ax                          ; 0x2d92
    call ds_dispatch_ec74            ; 0x2d93
    add sp, byte 4                   ; 0x2d96
    test ax, ax                      ; 0x2d99
    je short @..api_idx_0004_5.l2    ; 0x2d9b
    mov ax, 0x14                     ; 0x2d9d
    imul word [bp - 0x0004]          ; 0x2da0
    add ax, 0xe38                    ; 0x2da3
    push ax                          ; 0x2da6
    mov ax, word [bp - 0x0002]       ; 0x2da7
    add ax, 0xfa0                    ; 0x2daa
    push ax                          ; 0x2dad
    call ds_dispatch_b53b            ; 0x2dae
    add sp, byte 4                   ; 0x2db1
    mov ax, word [bp - 0x0002]       ; 0x2db4
    mov cx, word [bp - 0x0004]       ; 0x2db7
    shl cx, 1                        ; 0x2dba
    mov bx, cx                       ; 0x2dbc
    mov word [bx - 0x68e4], ax       ; 0x2dbe
    inc word [bp - 0x0004]           ; 0x2dc2
@..api_idx_0004_5.l2:
    inc word [bp - 0x0002]           ; 0x2dc5
    mov ax, word [bp - 0x0002]       ; 0x2dc8
    cmp ax, strict word 0x66         ; 0x2dcb
    jl short @..api_idx_0004_5.l1    ; 0x2dce
    mov ax, word [bp - 0x0004]       ; 0x2dd0
    ret                              ; 0x2dd3
api_idx_000a_2:
    mov ax, 0xfff6                   ; 0x2dd4
    call ds_dispatch_f40b            ; 0x2dd7
    mov byte [bp - 0x000a], 1        ; 0x2dda
    mov byte [bp - 0x0009], 0        ; 0x2dde
    mov ax, 0                        ; 0x2de2
    push ax                          ; 0x2de5
    push ax                          ; 0x2de6
    lea ax, word [bp - 0x000a]       ; 0x2de7
    push ax                          ; 0x2dea
    mov ax, 0                        ; 0x2deb
    push ax                          ; 0x2dee
    mov ax, 0xc7                     ; 0x2def
    push ax                          ; 0x2df2
    mov ax, 0                        ; 0x2df3
    push ax                          ; 0x2df6
    mov ax, 0x13f                    ; 0x2df7
    push ax                          ; 0x2dfa
    mov ax, 0                        ; 0x2dfb
    push ax                          ; 0x2dfe
    mov ax, 0x73                     ; 0x2dff
    push ax                          ; 0x2e02
    mov ax, 0x32                     ; 0x2e03
    push ax                          ; 0x2e06
    mov ax, 1                        ; 0x2e07
    push ax                          ; 0x2e0a
    call ds_dispatch_efd1            ; 0x2e0b
    add sp, byte 0x16                ; 0x2e0e
    ret                              ; 0x2e11
math_loc_2e12:
    mov ax, 0                        ; 0x2e12
    call ds_dispatch_f40b            ; 0x2e15
    push word [bp + 0x6]             ; 0x2e18
    mov ax, 0xa                      ; 0x2e1b
    imul word [bp + 0x8]             ; 0x2e1e
    add ax, word [bp + 0x4]          ; 0x2e21
    dec ax                           ; 0x2e24
    push ax                          ; 0x2e25
    call ds_dispatch_e809            ; 0x2e26
    add sp, byte 4                   ; 0x2e29
    mov ax, 7                        ; 0x2e2c
    push ax                          ; 0x2e2f
    mov ax, 0                        ; 0x2e30
    cmp word [bp + 0xa], byte 0      ; 0x2e33
    je short @..math_loc_2e12.l1     ; 0x2e37
    mov ax, 1                        ; 0x2e39
@..math_loc_2e12.l1:
    add ax, strict word 0x10         ; 0x2e3c
    sub ah, ah                       ; 0x2e3f
    push ax                          ; 0x2e41
    call ds_dispatch_e830            ; 0x2e42
    add sp, byte 4                   ; 0x2e45
    push word [bp + 0x6]             ; 0x2e48
    mov ax, 0xa                      ; 0x2e4b
    imul word [bp + 0x8]             ; 0x2e4e
    add ax, word [bp + 0x4]          ; 0x2e51
    push ax                          ; 0x2e54
    call ds_dispatch_e809            ; 0x2e55
    add sp, byte 4                   ; 0x2e58
    mov ax, 0                        ; 0x2e5b
    push ax                          ; 0x2e5e
    push ax                          ; 0x2e5f
    call ds_dispatch_e823            ; 0x2e60
    add sp, byte 4                   ; 0x2e63
    mov ax, data_0002                ; 0x2e66
    push ax                          ; 0x2e69
    mov ax, word [bp + 0x8]          ; 0x2e6a
    inc ax                           ; 0x2e6d
    sub ah, ah                       ; 0x2e6e
    push ax                          ; 0x2e70
    call ds_dispatch_e830            ; 0x2e71
    add sp, byte 4                   ; 0x2e74
    cmp word [bp + 0x8], byte 0      ; 0x2e77
    jne short @..math_loc_2e12.l2    ; 0x2e7b
    cmp word [bp + 0xa], byte 0      ; 0x2e7d
    jne short @..math_loc_2e12.l2    ; 0x2e81
    mov ax, 0xc2                     ; 0x2e83
    push ax                          ; 0x2e86
    mov ax, word [bp + 0x6]          ; 0x2e87
    add ax, strict word 8            ; 0x2e8a
    push ax                          ; 0x2e8d
    mov ax, word [bp + 0x4]          ; 0x2e8e
    dec ax                           ; 0x2e91
    push ax                          ; 0x2e92
    push word [bp + 0x6]             ; 0x2e93
    push ax                          ; 0x2e96
    call ds_dispatch_e901            ; 0x2e97
    add sp, byte 0x0a                ; 0x2e9a
@..math_loc_2e12.l2:
    ret                              ; 0x2e9d
loc_2e9e:
    mov ax, 0                        ; 0x2e9e
    call ds_dispatch_f40b            ; 0x2ea1
    mov ax, word [bp + 0x6]          ; 0x2ea4
    add ax, strict word 6            ; 0x2ea7
    push ax                          ; 0x2eaa
    mov ax, word [bp + 0x4]          ; 0x2eab
    add ax, strict word 0x14         ; 0x2eae
    push ax                          ; 0x2eb1
    push word [bp + 0x6]             ; 0x2eb2
    push word [bp + 0x4]             ; 0x2eb5
    call ds_dispatch_bd98            ; 0x2eb8
    add sp, byte 8                   ; 0x2ebb
    mov ax, word [bp + 0x8]          ; 0x2ebe
    shl ax, 1                        ; 0x2ec1
    shl ax, 1                        ; 0x2ec3
    mov bx, ax                       ; 0x2ec5
    db 0xff, 0xb7, 0x08, 0x00 ; push word [bx + 0x8]
    mov ax, word [bp + 0x6]          ; 0x2ecb
    add ax, strict word 6            ; 0x2ece
    push ax                          ; 0x2ed1
    mov ax, word [bp + 0x4]          ; 0x2ed2
    add ax, strict word 0x14         ; 0x2ed5
    push ax                          ; 0x2ed8
    push word [bp + 0x6]             ; 0x2ed9
    push word [bp + 0x4]             ; 0x2edc
    call ds_dispatch_e901            ; 0x2edf
    add sp, byte 0x0a                ; 0x2ee2
    mov ax, word [bp + 0x6]          ; 0x2ee5
    inc ax                           ; 0x2ee8
    push ax                          ; 0x2ee9
    mov ax, word [bp + 0x4]          ; 0x2eea
    inc ax                           ; 0x2eed
    inc ax                           ; 0x2eee
    push ax                          ; 0x2eef
    call ds_dispatch_e809            ; 0x2ef0
    add sp, byte 4                   ; 0x2ef3
    cmp word [bp + 0xa], byte 0      ; 0x2ef6
    jle short @..local.l1            ; 0x2efa
    mov ax, word [bp + 0xa]          ; 0x2efc
    cmp ax, word [bp + 0xc]          ; 0x2eff
    jg short @..local.l1             ; 0x2f02
    mov ax, 0                        ; 0x2f04
    push ax                          ; 0x2f07
    mov ax, 1                        ; 0x2f08
    push ax                          ; 0x2f0b
    call ds_dispatch_e823            ; 0x2f0c
    add sp, byte 4                   ; 0x2f0f
    mov ax, 0                        ; 0x2f12
    push ax                          ; 0x2f15
    mov ax, 3                        ; 0x2f16
    push ax                          ; 0x2f19
    push word [bp + 0xa]             ; 0x2f1a
    call ds_dispatch_b2e7            ; 0x2f1d
    add sp, byte 6                   ; 0x2f20
    jmp short @..local.l2            ; 0x2f23
@..local.l1:
    mov ax, 0                        ; 0x2f25
    push ax                          ; 0x2f28
    push ax                          ; 0x2f29
    call ds_dispatch_e823            ; 0x2f2a
    add sp, byte 4                   ; 0x2f2d
    mov ax, 0                        ; 0x2f30
    push ax                          ; 0x2f33
    mov ax, 0x92d2                   ; 0x2f34
    push ax                          ; 0x2f37
    call ds_dispatch_e84e            ; 0x2f38
    add sp, byte 4                   ; 0x2f3b
@..local.l2:
    ret                              ; 0x2f3e
api_idx_000c_2:
    mov ax, 0xfff4                   ; 0x2f3f
    call ds_dispatch_f40b            ; 0x2f42
    mov word [bp - 0x0002], 0        ; 0x2f45
@..api_idx_000c_2.l1:
    lea ax, word [bp - 0x000c]       ; 0x2f4a
    push ax                          ; 0x2f4d
    mov ax, 0x248                    ; 0x2f4e
    imul word [bp + 0x4]             ; 0x2f51
    mov cx, word [bp - 0x0002]       ; 0x2f54
    shl cx, 1                        ; 0x2f57
    shl cx, 1                        ; 0x2f59
    add ax, cx                       ; 0x2f5b
    mov bx, ax                       ; 0x2f5d
    push word [bx + 0x5c1c]          ; 0x2f5f
    call ds_dispatch_b27d            ; 0x2f63
    add sp, byte 4                   ; 0x2f66
    mov ax, 0                        ; 0x2f69
    push ax                          ; 0x2f6c
    mov ax, word [bp - 0x0002]       ; 0x2f6d
    shl ax, 1                        ; 0x2f70
    shl ax, 1                        ; 0x2f72
    mov bx, ax                       ; 0x2f74
    db 0xff, 0xb7, 0x06, 0x00 ; push word [bx + 0x6]
    call ds_dispatch_e823            ; 0x2f7a
    add sp, byte 4                   ; 0x2f7d
    mov ax, word [bp - 0x0002]       ; 0x2f80
    shl ax, 1                        ; 0x2f83
    shl ax, 1                        ; 0x2f85
    mov bx, ax                       ; 0x2f87
    push word [bx + 0x18e]           ; 0x2f89
    lea ax, word [bp - 0x000c]       ; 0x2f8d
    push ax                          ; 0x2f90
    call ds_dispatch_fa90            ; 0x2f91
    pop cx                           ; 0x2f94
    mov cx, 6                        ; 0x2f95
    imul cx                          ; 0x2f98
    mov cx, data_0002                ; 0x2f9a
    cwd                              ; 0x2f9d
    idiv cx                          ; 0x2f9e
    mov cx, ax                       ; 0x2fa0
    mov ax, word [bp - 0x0002]       ; 0x2fa2
    shl ax, 1                        ; 0x2fa5
    shl ax, 1                        ; 0x2fa7
    mov bx, ax                       ; 0x2fa9
    mov ax, word [bx + 0x18c]        ; 0x2fab
    add ax, strict word 9            ; 0x2faf
    sub ax, cx                       ; 0x2fb2
    push ax                          ; 0x2fb4
    call ds_dispatch_e809            ; 0x2fb5
    add sp, byte 4                   ; 0x2fb8
    mov ax, 0                        ; 0x2fbb
    push ax                          ; 0x2fbe
    lea ax, word [bp - 0x000c]       ; 0x2fbf
    push ax                          ; 0x2fc2
    call ds_dispatch_e84e            ; 0x2fc3
    add sp, byte 4                   ; 0x2fc6
    inc word [bp - 0x0002]           ; 0x2fc9
    mov ax, word [bp - 0x0002]       ; 0x2fcc
    cmp ax, strict word 6            ; 0x2fcf
    jge short @..api_idx_000c_2.l2   ; 0x2fd2
    jmp near @..api_idx_000c_2.l1    ; 0x2fd4
@..api_idx_000c_2.l2:
    ret                              ; 0x2fd7
loc_2fd8:
    mov ax, 0                        ; 0x2fd8
    call ds_dispatch_f40b            ; 0x2fdb
    les bx, word [data_0002]         ; 0x2fde
    mov ax, word [es:bx]             ; 0x2fe2
    mov dx, word [es:bx + 0x2]       ; 0x2fe5
    mov word [data_9090], dx         ; 0x2fe9
    mov word [data_908e], ax         ; 0x2fed
    mov ax, word [data_908e]         ; 0x2ff0
    mov dx, word [data_9090]         ; 0x2ff3
    sub ax, word [data_908a]         ; 0x2ff7
    sbb dx, word [data_908c]         ; 0x2ffb
    mov word [data_9094], dx         ; 0x2fff
    mov word [data_9092], ax         ; 0x3003
    mov ax, word [data_976c]         ; 0x3006
    cwd                              ; 0x3009
    mov cx, ax                       ; 0x300a
    mov bx, dx                       ; 0x300c
    mov ax, word [data_9092]         ; 0x300e
    mov dx, word [data_9094]         ; 0x3011
    cmp bx, dx                       ; 0x3015
    jg short @..local.l3             ; 0x3017
    jne short @..local.l4            ; 0x3019
    cmp cx, ax                       ; 0x301b
    jbe short @..local.l4            ; 0x301d
@..local.l3:
    jmp short @..local.l5            ; 0x301f
@..local.l4:
    mov ax, word [data_908e]         ; 0x3021
    mov dx, word [data_9090]         ; 0x3024
    mov word [data_908c], dx         ; 0x3028
    mov word [data_908a], ax         ; 0x302c
    call api_idx_000a_2              ; 0x302f
    push word [bp + 0x4]             ; 0x3032
    call api_idx_000c_2              ; 0x3035
    pop cx                           ; 0x3038
    push word [bp + 0x6]             ; 0x3039
    call api_idx_0002_3              ; 0x303c
    pop cx                           ; 0x303f
    mov ax, 1                        ; 0x3040
    push ax                          ; 0x3043
    mov ax, 0x73                     ; 0x3044
loc_3047:
    push ax                          ; 0x3047
    mov ax, 0x32                     ; 0x3048
    push ax                          ; 0x304b
    call api_idx_000c                ; 0x304c
    add sp, byte 6                   ; 0x304f
    mov ax, 0xc5                     ; 0x3052
    push ax                          ; 0x3055
    mov ax, 0x93                     ; 0x3056
    push ax                          ; 0x3059
    mov ax, 0x73                     ; 0x305a
    push ax                          ; 0x305d
    mov ax, 0x32                     ; 0x305e
    push ax                          ; 0x3061
    call ds_dispatch_e8da            ; 0x3062
    add sp, byte 8                   ; 0x3065
@..local.l5:
    ret                              ; 0x3068
api_idx_0050:
    mov ax, 0xffb0                   ; 0x3069
    call ds_dispatch_f40b            ; 0x306c
    mov word [bp - 0x0002], 0        ; 0x306f
@..api_idx_0050.l1:
    mov ax, word [bp - 0x0002]       ; 0x3074
    shl ax, 1                        ; 0x3077
    mov bx, ax                       ; 0x3079
    mov ax, word [bx - 0x7cf2]       ; 0x307b
    add bx, bp                       ; 0x307f
    mov word [bx - 0x0050], ax       ; 0x3081
    mov ax, word [bp - 0x0002]       ; 0x3084
    shl ax, 1                        ; 0x3087
    mov bx, ax                       ; 0x3089
    mov word [bx - 0x7cf2], 0        ; 0x308b
    inc word [bp - 0x0002]           ; 0x3091
    mov ax, word [bp - 0x0002]       ; 0x3094
    cmp ax, strict word 6            ; 0x3097
    jl short @..api_idx_0050.l1      ; 0x309a
    mov word [data_904e], 0xffff     ; 0x309c
    mov word [bp - 0x0004], 0x32     ; 0x30a2
    mov word [bp - 0x0006], 0x73     ; 0x30a7
    mov word [bp - 0x0008], 0x10d    ; 0x30ac
    mov word [bp - 0x000a], 0xc5     ; 0x30b1
    mov word [bp - 0x000c], 0x95     ; 0x30b6
    mov word [bp - 0x0014], 0x16     ; 0x30bb
    mov ax, 0x92d6                   ; 0x30c0
    push ax                          ; 0x30c3
    mov ax, word [bp - 0x000a]       ; 0x30c4
    inc ax                           ; 0x30c7
    push ax                          ; 0x30c8
    mov ax, word [bp - 0x0008]       ; 0x30c9
    inc ax                           ; 0x30cc
    push ax                          ; 0x30cd
    mov ax, word [bp - 0x0006]       ; 0x30ce
    dec ax                           ; 0x30d1
    push ax                          ; 0x30d2
    mov ax, word [bp - 0x0004]       ; 0x30d3
    dec ax                           ; 0x30d6
    push ax                          ; 0x30d7
    call ds_dispatch_c283            ; 0x30d8
    add sp, byte 0x0a                ; 0x30db
    mov word [bp - 0x003a], ax       ; 0x30de
    push word [bp - 0x000a]          ; 0x30e1
    push word [bp - 0x0008]          ; 0x30e4
    push word [bp - 0x0006]          ; 0x30e7
    push word [bp - 0x0004]          ; 0x30ea
    call ds_dispatch_bc9a            ; 0x30ed
    add sp, byte 8                   ; 0x30f0
    push word [bp - 0x000a]          ; 0x30f3
    push word [bp - 0x0008]          ; 0x30f6
    push word [bp - 0x0006]          ; 0x30f9
    mov ax, 0x95                     ; 0x30fc
    push ax                          ; 0x30ff
    call ds_dispatch_bc9a            ; 0x3100
    add sp, byte 8                   ; 0x3103
    call api_idx_000a_2              ; 0x3106
    push word [bp + 0x4]             ; 0x3109
    call api_idx_000c_2              ; 0x310c
    pop cx                           ; 0x310f
    mov ax, 1                        ; 0x3110
    push ax                          ; 0x3113
    mov ax, 0x73                     ; 0x3114
    push ax                          ; 0x3117
    mov ax, 0x32                     ; 0x3118
    push ax                          ; 0x311b
    call api_idx_000c                ; 0x311c
    add sp, byte 6                   ; 0x311f
    lea ax, word [bp - 0x0038]       ; 0x3122
    push ax                          ; 0x3125
    push word [bp + 0x6]             ; 0x3126
    call ds_dispatch_b53b            ; 0x3129
    add sp, byte 4                   ; 0x312c
    lea ax, word [bp - 0x0038]       ; 0x312f
    push ax                          ; 0x3132
    push word [bp + 0x8]             ; 0x3133
    mov ax, 1                        ; 0x3136
    push ax                          ; 0x3139
    mov ax, 8                        ; 0x313a
    push ax                          ; 0x313d
    mov ax, word [bp - 0x0006]       ; 0x313e
    add ax, strict word 6            ; 0x3141
    push ax                          ; 0x3144
    mov ax, word [bp - 0x000c]       ; 0x3145
    add ax, strict word 6            ; 0x3148
    push ax                          ; 0x314b
    call ds_dispatch_c0c1            ; 0x314c
    add sp, byte 0x0c                ; 0x314f
    lea ax, word [bp - 0x0038]       ; 0x3152
    push ax                          ; 0x3155
    mov ax, word [bp + 0x6]          ; 0x3156
    inc ax                           ; 0x3159
    push ax                          ; 0x315a
    call ds_dispatch_b53b            ; 0x315b
    add sp, byte 4                   ; 0x315e
    lea ax, word [bp - 0x0038]       ; 0x3161
    push ax                          ; 0x3164
    mov ax, 1                        ; 0x3165
    push ax                          ; 0x3168
    push ax                          ; 0x3169
    mov ax, 8                        ; 0x316a
    push ax                          ; 0x316d
    mov ax, word [bp - 0x0006]       ; 0x316e
    add ax, strict word 6            ; 0x3171
    push ax                          ; 0x3174
    mov ax, word [bp - 0x000c]       ; 0x3175
    add ax, strict word 0x42         ; 0x3178
    push ax                          ; 0x317b
    call ds_dispatch_c0c1            ; 0x317c
    add sp, byte 0x0c                ; 0x317f
    mov ax, word [bp - 0x0006]       ; 0x3182
    add ax, strict word 0x14         ; 0x3185
    push ax                          ; 0x3188
    mov ax, word [bp - 0x000c]       ; 0x3189
    add ax, strict word 0x48         ; 0x318c
    push ax                          ; 0x318f
    call ds_dispatch_e809            ; 0x3190
    add sp, byte 4                   ; 0x3193
    mov ax, 0                        ; 0x3196
    push ax                          ; 0x3199
    mov ax, 0xcd                     ; 0x319a
    push ax                          ; 0x319d
    call ds_dispatch_e823            ; 0x319e
    add sp, byte 4                   ; 0x31a1
    mov ax, data_0002                ; 0x31a4
    push ax                          ; 0x31a7
    mov ax, 0xa                      ; 0x31a8
    push ax                          ; 0x31ab
    call ds_dispatch_e830            ; 0x31ac
    add sp, byte 4                   ; 0x31af
    mov word [bp - 0x003c], 0xffff   ; 0x31b2
    mov word [bp - 0x003e], 0        ; 0x31b7
    mov word [bp - 0x0040], 0        ; 0x31bc
    mov word [bp - 0x0002], 0        ; 0x31c1
@..api_idx_0050.l2:
    mov ax, 0                        ; 0x31c6
    mov cx, word [bp - 0x0002]       ; 0x31c9
    cmp cx, word [bp - 0x003e]       ; 0x31cc
    jne short @..api_idx_0050.l3     ; 0x31cf
    mov ax, 1                        ; 0x31d1
@..api_idx_0050.l3:
    push ax                          ; 0x31d4
    push cx                          ; 0x31d5
    mov ax, word [bp - 0x0006]       ; 0x31d6
    add ax, strict word 0x14         ; 0x31d9
    push ax                          ; 0x31dc
    mov ax, word [bp - 0x000c]       ; 0x31dd
    add ax, strict word 0xc          ; 0x31e0
    push ax                          ; 0x31e3
    call math_loc_2e12               ; 0x31e4
    add sp, byte 8                   ; 0x31e7
    inc word [bp - 0x0002]           ; 0x31ea
    mov ax, word [bp - 0x0002]       ; 0x31ed
    cmp ax, strict word 7            ; 0x31f0
    jl short @..api_idx_0050.l2      ; 0x31f3
    mov word [bp - 0x0042], 0        ; 0x31f5
    mov ax, 0                        ; 0x31fa
    push ax                          ; 0x31fd
    push ax                          ; 0x31fe
    push word [bp - 0x0042]          ; 0x31ff
    mov ax, word [bp - 0x0006]       ; 0x3202
    add ax, strict word 0x15         ; 0x3205
    push ax                          ; 0x3208
    mov ax, word [bp - 0x000c]       ; 0x3209
    add ax, strict word 0x5e         ; 0x320c
    push ax                          ; 0x320f
    call loc_2e9e                    ; 0x3210
    add sp, byte 0x0a                ; 0x3213
    push word [bp - 0x0042]          ; 0x3216
    push word [bp + 0x4]             ; 0x3219
    call api_idx_0004_5              ; 0x321c
    add sp, byte 4                   ; 0x321f
    mov word [bp - 0x0044], ax       ; 0x3222
    mov ax, 7                        ; 0x3225
    cmp word [bp - 0x0044], byte 7   ; 0x3228
    jge short @..api_idx_0050.l4     ; 0x322c
    mov ax, word [bp - 0x0044]       ; 0x322e
@..api_idx_0050.l4:
    mov word [bp - 0x0024], ax       ; 0x3231
    mov word [bp - 0x0018], 0        ; 0x3234
    mov word [bp - 0x0022], 0xffff   ; 0x3239
    push ax                          ; 0x323e
    push word [bp - 0x0022]          ; 0x323f
    push word [bp - 0x0018]          ; 0x3242
    mov ax, 7                        ; 0x3245
    push ax                          ; 0x3248
    mov ax, 0xf                      ; 0x3249
    push ax                          ; 0x324c
    mov ax, word [bp - 0x0006]       ; 0x324d
    add ax, strict word 0x22         ; 0x3250
    push ax                          ; 0x3253
    mov ax, word [bp - 0x000c]       ; 0x3254
    add ax, strict word 6            ; 0x3257
    push ax                          ; 0x325a
    call ds_dispatch_bf97            ; 0x325b
    add sp, byte 0x0e                ; 0x325e
    mov word [bp - 0x0012], 0        ; 0x3261
    push word [bp - 0x0012]          ; 0x3266
    mov ax, 7                        ; 0x3269
    push ax                          ; 0x326c
    mov ax, 8                        ; 0x326d
    push ax                          ; 0x3270
    mov ax, word [bp - 0x0006]       ; 0x3271
    add ax, strict word 0x22         ; 0x3274
    push ax                          ; 0x3277
    mov ax, word [bp - 0x000c]       ; 0x3278
    add ax, strict word 0x6a         ; 0x327b
    push ax                          ; 0x327e
    call ds_dispatch_bfd8            ; 0x327f
    add sp, byte 0x0a                ; 0x3282
    mov ax, 0                        ; 0x3285
    push ax                          ; 0x3288
    push ax                          ; 0x3289
    mov ax, word [bp - 0x0006]       ; 0x328a
    add ax, word [bp - 0x0012]       ; 0x328d
    add ax, strict word 0x2e         ; 0x3290
    push ax                          ; 0x3293
    mov ax, word [bp - 0x000c]       ; 0x3294
    add ax, strict word 0x72         ; 0x3297
    push ax                          ; 0x329a
    mov ax, word [bp - 0x0006]       ; 0x329b
    add ax, word [bp - 0x0012]       ; 0x329e
    add ax, strict word 0x2a         ; 0x32a1
    push ax                          ; 0x32a4
    mov ax, word [bp - 0x000c]       ; 0x32a5
    add ax, strict word 0x6a         ; 0x32a8
    push ax                          ; 0x32ab
    mov ax, 0                        ; 0x32ac
    push ax                          ; 0x32af
    call ds_dispatch_baa6            ; 0x32b0
    add sp, byte 0x0e                ; 0x32b3
    mov ax, 0                        ; 0x32b6
    push ax                          ; 0x32b9
    mov ax, 9                        ; 0x32ba
    push ax                          ; 0x32bd
    mov ax, word [bp - 0x0006]       ; 0x32be
    add ax, strict word 0x28         ; 0x32c1
    push ax                          ; 0x32c4
    mov ax, word [bp - 0x000c]       ; 0x32c5
    add ax, strict word 0x72         ; 0x32c8
    push ax                          ; 0x32cb
    mov ax, word [bp - 0x0006]       ; 0x32cc
    add ax, strict word 0x22         ; 0x32cf
    push ax                          ; 0x32d2
    mov ax, word [bp - 0x000c]       ; 0x32d3
    add ax, strict word 0x6a         ; 0x32d6
    push ax                          ; 0x32d9
    mov ax, 1                        ; 0x32da
    push ax                          ; 0x32dd
    call ds_dispatch_baa6            ; 0x32de
    add sp, byte 0x0e                ; 0x32e1
    mov ax, 0                        ; 0x32e4
    push ax                          ; 0x32e7
    mov ax, 0xb                      ; 0x32e8
    push ax                          ; 0x32eb
    mov ax, word [bp - 0x0006]       ; 0x32ec
    add ax, strict word 0x4c         ; 0x32ef
    push ax                          ; 0x32f2
    mov ax, word [bp - 0x000c]       ; 0x32f3
    add ax, strict word 0x72         ; 0x32f6
    push ax                          ; 0x32f9
    mov ax, word [bp - 0x0006]       ; 0x32fa
    add ax, strict word 0x46         ; 0x32fd
    push ax                          ; 0x3300
    mov ax, word [bp - 0x000c]       ; 0x3301
    add ax, strict word 0x6a         ; 0x3304
    push ax                          ; 0x3307
    mov ax, data_0002                ; 0x3308
    push ax                          ; 0x330b
    call ds_dispatch_baa6            ; 0x330c
    add sp, byte 0x0e                ; 0x330f
    mov ax, 0                        ; 0x3312
    push ax                          ; 0x3315
    mov ax, 0xd                      ; 0x3316
    push ax                          ; 0x3319
    mov ax, word [bp - 0x0006]       ; 0x331a
    add ax, strict word 0xe          ; 0x331d
    push ax                          ; 0x3320
    mov ax, word [bp - 0x000c]       ; 0x3321
    add ax, strict word 0x36         ; 0x3324
    push ax                          ; 0x3327
    mov ax, word [bp - 0x0006]       ; 0x3328
    add ax, strict word 6            ; 0x332b
    push ax                          ; 0x332e
    mov ax, word [bp - 0x000c]       ; 0x332f
    add ax, strict word 6            ; 0x3332
    push ax                          ; 0x3335
    mov ax, 3                        ; 0x3336
    push ax                          ; 0x3339
    call ds_dispatch_baa6            ; 0x333a
    add sp, byte 0x0e                ; 0x333d
    mov ax, 0                        ; 0x3340
    push ax                          ; 0x3343
    mov ax, 0x1b                     ; 0x3344
    push ax                          ; 0x3347
    mov ax, word [bp - 0x0006]       ; 0x3348
    add ax, strict word 0xe          ; 0x334b
    push ax                          ; 0x334e
    mov ax, word [bp - 0x000c]       ; 0x334f
    add ax, strict word 0x72         ; 0x3352
    push ax                          ; 0x3355
    mov ax, word [bp - 0x0006]       ; 0x3356
    add ax, strict word 6            ; 0x3359
    push ax                          ; 0x335c
    mov ax, word [bp - 0x000c]       ; 0x335d
    add ax, strict word 0x42         ; 0x3360
    push ax                          ; 0x3363
    mov ax, 4                        ; 0x3364
    push ax                          ; 0x3367
    call ds_dispatch_baa6            ; 0x3368
    add sp, byte 0x0e                ; 0x336b
    mov word [bp - 0x0002], 0        ; 0x336e
@..api_idx_0050.l5:
    mov ax, 0                        ; 0x3373
    push ax                          ; 0x3376
    mov ax, word [bp - 0x0002]       ; 0x3377
    add ax, strict word 0x31         ; 0x337a
    cbw                              ; 0x337d
    push ax                          ; 0x337e
    mov ax, word [bp - 0x0006]       ; 0x337f
    add ax, strict word 0x1b         ; 0x3382
    push ax                          ; 0x3385
    mov ax, 0xa                      ; 0x3386
    imul word [bp - 0x0002]          ; 0x3389
    add ax, word [bp - 0x000c]       ; 0x338c
    add ax, strict word 0x13         ; 0x338f
    push ax                          ; 0x3392
    mov ax, word [bp - 0x0006]       ; 0x3393
    add ax, strict word 0x14         ; 0x3396
    push ax                          ; 0x3399
    mov ax, 0xa                      ; 0x339a
    imul word [bp - 0x0002]          ; 0x339d
    add ax, word [bp - 0x000c]       ; 0x33a0
    add ax, strict word 0xc          ; 0x33a3
    push ax                          ; 0x33a6
    mov ax, word [bp - 0x0002]       ; 0x33a7
    add ax, strict word 5            ; 0x33aa
    push ax                          ; 0x33ad
    call ds_dispatch_baa6            ; 0x33ae
    add sp, byte 0x0e                ; 0x33b1
    inc word [bp - 0x0002]           ; 0x33b4
    mov ax, word [bp - 0x0002]       ; 0x33b7
    cmp ax, strict word 7            ; 0x33ba
    jl short @..api_idx_0050.l5      ; 0x33bd
    mov ax, 0                        ; 0x33bf
    push ax                          ; 0x33c2
    mov ax, 0x46                     ; 0x33c3
    push ax                          ; 0x33c6
    mov ax, 0x87                     ; 0x33c7
    push ax                          ; 0x33ca
    mov ax, 0x52                     ; 0x33cb
    push ax                          ; 0x33ce
    mov ax, 0x74                     ; 0x33cf
    push ax                          ; 0x33d2
    mov ax, 0x46                     ; 0x33d3
    push ax                          ; 0x33d6
    mov ax, 0xc                      ; 0x33d7
    push ax                          ; 0x33da
    call ds_dispatch_baa6            ; 0x33db
    add sp, byte 0x0e                ; 0x33de
    mov ax, 0                        ; 0x33e1
    push ax                          ; 0x33e4
    mov ax, 0x57                     ; 0x33e5
    push ax                          ; 0x33e8
    mov ax, 0x9d                     ; 0x33e9
    push ax                          ; 0x33ec
    mov ax, 0x4b                     ; 0x33ed
    push ax                          ; 0x33f0
    mov ax, 0x90                     ; 0x33f1
    push ax                          ; 0x33f4
    mov ax, 0x32                     ; 0x33f5
    push ax                          ; 0x33f8
    mov ax, 0xd                      ; 0x33f9
    push ax                          ; 0x33fc
    call ds_dispatch_baa6            ; 0x33fd
    add sp, byte 0x0e                ; 0x3400
    mov ax, 0                        ; 0x3403
    push ax                          ; 0x3406
    mov ax, 0x41                     ; 0x3407
    push ax                          ; 0x340a
    mov ax, 0xbb                     ; 0x340b
    push ax                          ; 0x340e
    mov ax, 0x5f                     ; 0x340f
    push ax                          ; 0x3412
    mov ax, 0xa5                     ; 0x3413
    push ax                          ; 0x3416
    mov ax, 0x43                     ; 0x3417
    push ax                          ; 0x341a
    mov ax, 0xe                      ; 0x341b
    push ax                          ; 0x341e
    call ds_dispatch_baa6            ; 0x341f
    add sp, byte 0x0e                ; 0x3422
    mov ax, 0                        ; 0x3425
    push ax                          ; 0x3428
    mov ax, 0x45                     ; 0x3429
    push ax                          ; 0x342c
    mov ax, 0x89                     ; 0x342d
    push ax                          ; 0x3430
    mov ax, 0x87                     ; 0x3431
    push ax                          ; 0x3434
    mov ax, 0x77                     ; 0x3435
    push ax                          ; 0x3438
    mov ax, 0x6c                     ; 0x3439
    push ax                          ; 0x343c
    mov ax, 0xf                      ; 0x343d
    push ax                          ; 0x3440
    call ds_dispatch_baa6            ; 0x3441
    add sp, byte 0x0e                ; 0x3444
    mov ax, 0                        ; 0x3447
    push ax                          ; 0x344a
    mov ax, 0x4d                     ; 0x344b
    push ax                          ; 0x344e
    mov ax, 0x9c                     ; 0x344f
    push ax                          ; 0x3452
    mov ax, 0x8e                     ; 0x3453
    push ax                          ; 0x3456
    mov ax, 0x91                     ; 0x3457
    push ax                          ; 0x345a
    mov ax, 0x7f                     ; 0x345b
    push ax                          ; 0x345e
    mov ax, 0x10                     ; 0x345f
    push ax                          ; 0x3462
    call ds_dispatch_baa6            ; 0x3463
    add sp, byte 0x0e                ; 0x3466
    mov ax, 0                        ; 0x3469
    push ax                          ; 0x346c
    mov ax, data_0044                ; 0x346d
    push ax                          ; 0x3470
    mov ax, 0xb9                     ; 0x3471
    push ax                          ; 0x3474
    mov ax, 0x81                     ; 0x3475
    push ax                          ; 0x3478
    mov ax, 0xa6                     ; 0x3479
    push ax                          ; 0x347c
    mov ax, 0x71                     ; 0x347d
    push ax                          ; 0x3480
    mov ax, 0x11                     ; 0x3481
    push ax                          ; 0x3484
    call ds_dispatch_baa6            ; 0x3485
    add sp, byte 0x0e                ; 0x3488
    mov ax, 7                        ; 0x348b
    cmp word [bp - 0x0044], byte 7   ; 0x348e
    jge short @..api_idx_0050.l6     ; 0x3492
    mov ax, word [bp - 0x0044]       ; 0x3494
@..api_idx_0050.l6:
    mov word [bp - 0x0020], ax       ; 0x3497
    mov word [bp - 0x0002], 0        ; 0x349a
@..api_idx_0050.l7:
    mov ax, 0                        ; 0x349f
    push ax                          ; 0x34a2
    push ax                          ; 0x34a3
    mov ax, 6                        ; 0x34a4
    imul word [bp - 0x0002]          ; 0x34a7
    add ax, word [bp - 0x0006]       ; 0x34aa
    add ax, strict word 0x28         ; 0x34ad
    push ax                          ; 0x34b0
    mov ax, word [bp - 0x000c]       ; 0x34b1
    add ax, strict word 0x62         ; 0x34b4
    push ax                          ; 0x34b7
    mov ax, 6                        ; 0x34b8
    imul word [bp - 0x0002]          ; 0x34bb
    add ax, word [bp - 0x0006]       ; 0x34be
    add ax, strict word 0x22         ; 0x34c1
    push ax                          ; 0x34c4
    mov ax, word [bp - 0x000c]       ; 0x34c5
    add ax, strict word 6            ; 0x34c8
    push ax                          ; 0x34cb
    mov ax, word [bp - 0x0002]       ; 0x34cc
    add ax, strict word 0x12         ; 0x34cf
    push ax                          ; 0x34d2
    call ds_dispatch_baa6            ; 0x34d3
    add sp, byte 0x0e                ; 0x34d6
    inc word [bp - 0x0002]           ; 0x34d9
    mov ax, word [bp - 0x0002]       ; 0x34dc
    cmp ax, strict word 7            ; 0x34df
    jl short @..api_idx_0050.l7      ; 0x34e2
    mov ax, 0                        ; 0x34e4
    push ax                          ; 0x34e7
    push ax                          ; 0x34e8
    push ax                          ; 0x34e9
    push ax                          ; 0x34ea
    push ax                          ; 0x34eb
    mov ax, 0xffff                   ; 0x34ec
    push ax                          ; 0x34ef
    mov ax, 0x19                     ; 0x34f0
    push ax                          ; 0x34f3
    call ds_dispatch_baa6            ; 0x34f4
    add sp, byte 0x0e                ; 0x34f7
    mov ax, word [bp - 0x000a]       ; 0x34fa
    inc ax                           ; 0x34fd
    push ax                          ; 0x34fe
    mov ax, word [bp - 0x0008]       ; 0x34ff
    inc ax                           ; 0x3502
    push ax                          ; 0x3503
    mov ax, word [bp - 0x0006]       ; 0x3504
    dec ax                           ; 0x3507
    push ax                          ; 0x3508
    mov ax, word [bp - 0x0004]       ; 0x3509
    dec ax                           ; 0x350c
    push ax                          ; 0x350d
    call ds_dispatch_e8da            ; 0x350e
    add sp, byte 8                   ; 0x3511
    mov word [data_976c], 7          ; 0x3514
    les bx, word [data_0002]         ; 0x351a
    mov ax, word [es:bx]             ; 0x351e
    mov dx, word [es:bx + 0x2]       ; 0x3521
    mov word [data_908c], dx         ; 0x3525
    mov word [data_908a], ax         ; 0x3529
    mov word [bp - 0x001c], 1        ; 0x352c
@..api_idx_0050.l8:
    push word [bp - 0x0042]          ; 0x3531
    push word [bp + 0x4]             ; 0x3534
    call loc_2fd8                    ; 0x3537
    add sp, byte 4                   ; 0x353a
    mov ax, 0x59fe                   ; 0x353d
    push ax                          ; 0x3540
    call ds_dispatch_b90d            ; 0x3541
    pop cx                           ; 0x3544
    dec ax                           ; 0x3545
    mov word [bp - 0x001a], ax       ; 0x3546
    cmp word [data_59fc], byte 0     ; 0x3549
    je short @..api_idx_0050.l12     ; 0x354e
    mov ax, word [bp - 0x0022]       ; 0x3550
    cmp ax, word [bp - 0x0018]       ; 0x3553
    jl short @..api_idx_0050.l9      ; 0x3556
    inc word [bp - 0x0022]           ; 0x3558
@..api_idx_0050.l9:
    mov ax, word [bp - 0x0022]       ; 0x355b
    cmp ax, strict word 0xffff       ; 0x355e
    je short @..api_idx_0050.l10     ; 0x3561
    cmp ax, word [bp - 0x0018]       ; 0x3563
    jl short @..api_idx_0050.l10     ; 0x3566
    mov ax, word [bp - 0x0018]       ; 0x3568
    add ax, word [bp - 0x0020]       ; 0x356b
    mov cx, ax                       ; 0x356e
    dec ax                           ; 0x3570
    mov cx, ax                       ; 0x3571
    mov ax, word [bp - 0x0022]       ; 0x3573
    cmp cx, ax                       ; 0x3576
    jge short @..api_idx_0050.l11    ; 0x3578
@..api_idx_0050.l10:
    mov ax, word [bp - 0x0018]       ; 0x357a
    mov word [bp - 0x0022], ax       ; 0x357d
@..api_idx_0050.l11:
    mov word [data_5b3e], 1          ; 0x3580
    mov ax, word [bp - 0x0022]       ; 0x3586
    sub ax, word [bp - 0x0018]       ; 0x3589
    add ax, strict word 0x12         ; 0x358c
    mov word [bp - 0x001a], ax       ; 0x358f
@..api_idx_0050.l12:
    cmp word [data_5b3e], byte 1     ; 0x3592
    je short @..api_idx_0050.l13     ; 0x3597
    jmp near @..api_idx_0050.l37     ; 0x3599
@..api_idx_0050.l13:
    mov ax, word [bp - 0x001a]       ; 0x359c
    jmp near @..api_idx_0050.l35     ; 0x359f

    db 0x8d, 0x46, 0xf0, 0x50, 0x8d, 0x46, 0xf2, 0x50, 0xe8, 0xa6, 0xba, 0x83, 0xc4, 0x04, 0xb8, 0x04
    db 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0x8b, 0x46, 0xf0, 0x8b, 0x4e, 0xfa, 0x03, 0x4e, 0xee, 0x83
    db 0xc1, 0x2a, 0x2b, 0xc1, 0x50, 0xe8, 0xf8, 0x81, 0x83, 0xc4, 0x06, 0x89, 0x46, 0xea, 0x8d, 0x46
    db 0xf0, 0x50, 0x8d, 0x46, 0xf2, 0x50, 0xe8, 0x78, 0xba, 0x83, 0xc4, 0x04, 0x89, 0x46, 0xe2, 0xff
    db 0x76, 0xec, 0xb8, 0x00, 0x00, 0x50, 0x8b, 0x46, 0xf0, 0x8b, 0x4e, 0xfa, 0x83, 0xc1, 0x2a, 0x2b
    db 0xc1, 0x2b, 0x46, 0xea, 0x50, 0xe8, 0xc8, 0x81, 0x83, 0xc4, 0x06, 0x89, 0x46, 0xee, 0x83, 0x7e
    db 0xbc, 0x07, 0x7e, 0x20, 0xb9, 0x64, 0x00, 0xf7, 0xe9, 0x50, 0x8b, 0x46, 0xec, 0xf7, 0xe9, 0x05
    db 0x64, 0x00, 0x8b, 0x4e, 0xbc, 0x83, 0xc1, 0xfa, 0x99, 0xf7, 0xf9, 0x8b, 0xc8, 0x58, 0x99, 0xf7
    db 0xf9, 0x89, 0x46, 0xe8, 0xff, 0x76, 0xdc, 0xff, 0x76, 0xde, 0xff, 0x76, 0xe8, 0xb8, 0x07, 0x00
    db 0x50, 0xb8, 0x0f, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05
    db 0x06, 0x00, 0x50, 0xe8, 0x4f, 0x89, 0x83, 0xc4, 0x0e, 0xff, 0x76, 0xee, 0xb8, 0x07, 0x00, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a
    db 0x00, 0x50, 0xe8, 0x71, 0x89, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x8b, 0x46, 0xfa
    db 0x03, 0x46, 0xee, 0x05, 0x2e, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b, 0x46
    db 0xfa, 0x03, 0x46, 0xee, 0x05, 0x2a, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a, 0x00, 0x50, 0xb8
    db 0x00, 0x00, 0x50, 0xe8, 0x0e, 0x84, 0x83, 0xc4, 0x0e, 0x8b, 0x46, 0xfa, 0x05, 0x4c, 0x00, 0x50
    db 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46
    db 0xf4, 0x05, 0x06, 0x00, 0x50, 0xe8, 0x20, 0xb2, 0x83, 0xc4, 0x08, 0x83, 0x7e, 0xe2, 0x00, 0x74
    db 0x03, 0xe9, 0x0a, 0xff, 0xe9, 0x13, 0x06, 0x83, 0x7e, 0xe6, 0x01, 0x75, 0x31, 0xb8, 0x01, 0x00
    db 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x28, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b
    db 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a, 0x00, 0x50, 0xe8, 0xc6, 0x87
    db 0x83, 0xc4, 0x0a, 0x83, 0x7e, 0xe8, 0x00, 0x7e, 0x03, 0xff, 0x4e, 0xe8, 0xeb, 0x34, 0xb8, 0x01
    db 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x4c, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50
    db 0x8b, 0x46, 0xfa, 0x05, 0x46, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a, 0x00, 0x50, 0xe8, 0x95
    db 0x87, 0x83, 0xc4, 0x0a, 0x8b, 0x46, 0xbc, 0x05, 0xf9, 0xff, 0x3b, 0x46, 0xe8, 0x7e, 0x03, 0xff
    db 0x46, 0xe8, 0x83, 0x7e, 0xbc, 0x07, 0x7e, 0x2c, 0xff, 0x76, 0xec, 0xb8, 0x00, 0x00, 0x50, 0xb8
    db 0x64, 0x00, 0xf7, 0x6e, 0xec, 0x05, 0x64, 0x00, 0x8b, 0x4e, 0xbc, 0x83, 0xc1, 0xf9, 0x99, 0xf7
    db 0xf9, 0xf7, 0x6e, 0xe8, 0xb9, 0x64, 0x00, 0x99, 0xf7, 0xf9, 0x50, 0xe8, 0x62, 0x80, 0x83, 0xc4
    db 0x06, 0x89, 0x46, 0xee, 0xff, 0x76, 0xdc, 0xff, 0x76, 0xde, 0xff, 0x76, 0xe8, 0xb8, 0x07, 0x00
    db 0x50, 0xb8, 0x0f, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05
    db 0x06, 0x00, 0x50, 0xe8, 0x0f, 0x88, 0x83, 0xc4, 0x0e, 0xff, 0x76, 0xee, 0xb8, 0x07, 0x00, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a
    db 0x00, 0x50, 0xe8, 0x31, 0x88, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x8b, 0x46, 0xfa
    db 0x03, 0x46, 0xee, 0x05, 0x2e, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b, 0x46
    db 0xfa, 0x03, 0x46, 0xee, 0x05, 0x2a, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a, 0x00, 0x50, 0xb8
    db 0x00, 0x00, 0x50, 0xe8, 0xce, 0x82, 0x83, 0xc4, 0x0e, 0x8b, 0x46, 0xfa, 0x05, 0x4c, 0x00, 0x50
    db 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46
    db 0xf4, 0x05, 0x06, 0x00, 0x50, 0xe8, 0xe0, 0xb0, 0x83, 0xc4, 0x08, 0xe9, 0xdc, 0x04, 0x83, 0x7e
    db 0x08, 0x00, 0x75, 0x03, 0xe9, 0xa1, 0x00, 0x83, 0x7e, 0xc4, 0x00, 0x7d, 0x03, 0xe9, 0x8a, 0x00
    db 0x83, 0x7e, 0x0a, 0x00, 0x74, 0x3c, 0x8b, 0x46, 0xc2, 0x3b, 0x46, 0xc0, 0x7e, 0x03, 0xe9, 0x79
    db 0x00, 0xb8, 0x06, 0x00, 0xf7, 0x6e, 0xc4, 0x8b, 0xd8, 0x8a, 0x87, 0x22, 0x06, 0x2a, 0xe4, 0x8b
    db 0x4e, 0xc2, 0x41, 0xf7, 0xe9, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xc8, 0x8b, 0x56
    db 0xbe, 0xd1, 0xe2, 0xd1, 0xe2, 0x03, 0xc2, 0x8b, 0xd8, 0x8b, 0x8f, 0x1c, 0x5c, 0x58, 0x3b, 0xc1
    db 0x7f, 0x48, 0xb8, 0x01, 0x00, 0x50, 0x50, 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06
    db 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x06, 0x00, 0x50, 0xe8, 0xf1, 0x85, 0x83, 0xc4, 0x0a, 0xb8
    db 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06
    db 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x06, 0x00, 0x50, 0xe8, 0xd1, 0x85, 0x83, 0xc4, 0x0a, 0xc7
    db 0x06, 0x50, 0x90, 0x00, 0x00, 0xc7, 0x46, 0xe4, 0x00, 0x00, 0x83, 0x7e, 0xe4, 0x00, 0x74, 0x08
    db 0xb8, 0x00, 0x00, 0x50, 0xe8, 0x37, 0x7f, 0x59, 0xe9, 0x2f, 0x04, 0xb8, 0x01, 0x00, 0x50, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x42
    db 0x00, 0x50, 0xe8, 0x98, 0x85, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x42
    db 0x00, 0x50, 0xe8, 0x78, 0x85, 0x83, 0xc4, 0x0a, 0xc7, 0x06, 0x50, 0x90, 0x01, 0x00, 0xc7, 0x46
    db 0xe4, 0x00, 0x00, 0xe9, 0xe4, 0x03

@..api_idx_0050.l14:
    cmp word [bp - 0x001a], byte 5   ; 0x38f8
    jge short @..api_idx_0050.l15    ; 0x38fc
    jmp near @..api_idx_0050.l23     ; 0x38fe
@..api_idx_0050.l15:
    cmp word [bp - 0x001a], byte 0x0b ; 0x3901
    jle short @..api_idx_0050.l16    ; 0x3905
    jmp near @..api_idx_0050.l23     ; 0x3907
@..api_idx_0050.l16:
    mov ax, 0                        ; 0x390a
    push ax                          ; 0x390d
    push word [bp - 0x003e]          ; 0x390e
    mov ax, word [bp - 0x0006]       ; 0x3911
    add ax, strict word 0x14         ; 0x3914
    push ax                          ; 0x3917
    mov ax, word [bp - 0x000c]       ; 0x3918
    add ax, strict word 0xc          ; 0x391b
    push ax                          ; 0x391e
    call math_loc_2e12               ; 0x391f
    add sp, byte 8                   ; 0x3922
    mov ax, word [bp - 0x001a]       ; 0x3925
    add ax, strict word 0xfffb       ; 0x3928
    mov word [bp - 0x003e], ax       ; 0x392b
    mov ax, 1                        ; 0x392e
    push ax                          ; 0x3931
    push word [bp - 0x003e]          ; 0x3932
    mov ax, word [bp - 0x0006]       ; 0x3935
    add ax, strict word 0x14         ; 0x3938
    push ax                          ; 0x393b
    mov ax, word [bp - 0x000c]       ; 0x393c
    add ax, strict word 0xc          ; 0x393f
    push ax                          ; 0x3942
    call math_loc_2e12               ; 0x3943
    add sp, byte 8                   ; 0x3946
    cmp word [bp - 0x003c], byte 0   ; 0x3949
    jge short @..api_idx_0050.l17    ; 0x394d
    jmp near @..api_idx_0050.l21     ; 0x394f
@..api_idx_0050.l17:
    mov ax, 6                        ; 0x3952
    push ax                          ; 0x3955
    mov ax, 0                        ; 0x3956
    push ax                          ; 0x3959
    mov ax, 0x248                    ; 0x395a
    imul word [bp + 0x4]             ; 0x395d
    mov bx, ax                       ; 0x3960
    mov ax, word [bx + 0x5c18]       ; 0x3962
    push ax                          ; 0x3966
    mov ax, 6                        ; 0x3967
    imul word [bp - 0x003c]          ; 0x396a
    mov bx, ax                       ; 0x396d
    mov al, byte [bx + 0x621]        ; 0x396f
    sub ah, ah                       ; 0x3973
    mov cx, ax                       ; 0x3975
    pop ax                           ; 0x3977
    sub ax, cx                       ; 0x3978
    push ax                          ; 0x397a
    call ds_dispatch_b7c2            ; 0x397b
    add sp, byte 6                   ; 0x397e
    mov word [bp - 0x0040], ax       ; 0x3981
    mov ax, 6                        ; 0x3984
    imul word [bp - 0x003c]          ; 0x3987
    mov bx, ax                       ; 0x398a
    mov al, byte [bx + 0x622]        ; 0x398c
    sub ah, ah                       ; 0x3990
    mov cx, word [bp - 0x0040]       ; 0x3992
    inc cx                           ; 0x3995
    imul cx                          ; 0x3996
    mov word [bp - 0x0002], ax       ; 0x3998
    cmp word [bp + 0xa], byte 0      ; 0x399b
    jne short @..api_idx_0050.l18    ; 0x399f
    mov ax, 0x3e7                    ; 0x39a1
    jmp short @..api_idx_0050.l20    ; 0x39a4
@..api_idx_0050.l18:
    mov ax, 0x248                    ; 0x39a6
    imul word [bp + 0x4]             ; 0x39a9
    mov cx, word [bp - 0x0042]       ; 0x39ac
    shl cx, 1                        ; 0x39af
    shl cx, 1                        ; 0x39b1
    add ax, cx                       ; 0x39b3
    mov bx, ax                       ; 0x39b5
    mov ax, word [bx + 0x5c1c]       ; 0x39b7
    cmp ax, word [bp - 0x0002]       ; 0x39bb
    jge short @..api_idx_0050.l19    ; 0x39be
    jmp short @..api_idx_0050.l20    ; 0x39c0
@..api_idx_0050.l19:
    mov ax, word [bp - 0x0002]       ; 0x39c2
@..api_idx_0050.l20:
    push ax                          ; 0x39c5
    mov ax, 6                        ; 0x39c6
    imul word [bp - 0x003c]          ; 0x39c9
    mov bx, ax                       ; 0x39cc
    mov al, byte [bx + 0x622]        ; 0x39ce
    sub ah, ah                       ; 0x39d2
    mov cx, word [bp - 0x003e]       ; 0x39d4
    inc cx                           ; 0x39d7
    imul cx                          ; 0x39d8
    push ax                          ; 0x39da
    push word [bp - 0x0042]          ; 0x39db
    mov ax, word [bp - 0x0006]       ; 0x39de
    add ax, strict word 0x15         ; 0x39e1
    push ax                          ; 0x39e4
    mov ax, word [bp - 0x000c]       ; 0x39e5
    add ax, strict word 0x5e         ; 0x39e8
    push ax                          ; 0x39eb
    call loc_2e9e                    ; 0x39ec
    add sp, byte 0x0a                ; 0x39ef
    jmp short @..api_idx_0050.l22    ; 0x39f2
@..api_idx_0050.l21:
    mov ax, 0                        ; 0x39f4
    push ax                          ; 0x39f7
    push ax                          ; 0x39f8
    push word [bp - 0x0042]          ; 0x39f9
    mov ax, word [bp - 0x0006]       ; 0x39fc
    add ax, strict word 0x15         ; 0x39ff
    push ax                          ; 0x3a02
    mov ax, word [bp - 0x000c]       ; 0x3a03
    add ax, strict word 0x5e         ; 0x3a06
    push ax                          ; 0x3a09
    call loc_2e9e                    ; 0x3a0a
    add sp, byte 0x0a                ; 0x3a0d
@..api_idx_0050.l22:
    mov ax, word [bp - 0x0006]       ; 0x3a10
    add ax, strict word 0x1c         ; 0x3a13
    push ax                          ; 0x3a16
    mov ax, word [bp - 0x000c]       ; 0x3a17
    add ax, strict word 0x56         ; 0x3a1a
    push ax                          ; 0x3a1d
    mov ax, word [bp - 0x0006]       ; 0x3a1e
    add ax, strict word 0x14         ; 0x3a21
    push ax                          ; 0x3a24
    mov ax, word [bp - 0x000c]       ; 0x3a25
    add ax, strict word 0xb          ; 0x3a28
    push ax                          ; 0x3a2b
    call ds_dispatch_e8da            ; 0x3a2c
    add sp, byte 8                   ; 0x3a2f
    mov ax, word [bp - 0x0006]       ; 0x3a32
    add ax, strict word 0x1b         ; 0x3a35
    push ax                          ; 0x3a38
    mov ax, word [bp - 0x000c]       ; 0x3a39
    add ax, strict word 0x72         ; 0x3a3c
    push ax                          ; 0x3a3f
    mov ax, word [bp - 0x0006]       ; 0x3a40
    add ax, strict word 0x15         ; 0x3a43
    push ax                          ; 0x3a46
    mov ax, word [bp - 0x000c]       ; 0x3a47
    add ax, strict word 0x5e         ; 0x3a4a
    push ax                          ; 0x3a4d
    call ds_dispatch_e8da            ; 0x3a4e
    add sp, byte 8                   ; 0x3a51
    jmp near @..api_idx_0050.l34     ; 0x3a54
@..api_idx_0050.l23:
    cmp word [bp - 0x001a], byte 0x0c ; 0x3a57
    jge short @..api_idx_0050.l24    ; 0x3a5b
    jmp near @..api_idx_0050.l28     ; 0x3a5d
@..api_idx_0050.l24:
    cmp word [bp - 0x001a], byte 0x11 ; 0x3a60
    jle short @..api_idx_0050.l25    ; 0x3a64
    jmp near @..api_idx_0050.l28     ; 0x3a66
@..api_idx_0050.l25:
    mov ax, word [bp - 0x001a]       ; 0x3a69
    add ax, strict word 0xfff4       ; 0x3a6c
    mov word [bp - 0x0042], ax       ; 0x3a6f
    mov word [bp - 0x003c], 0xffff   ; 0x3a72
    push ax                          ; 0x3a77
    push word [bp + 0x4]             ; 0x3a78
    call api_idx_0004_5              ; 0x3a7b
    add sp, byte 4                   ; 0x3a7e
    mov word [bp - 0x0044], ax       ; 0x3a81
    mov ax, 7                        ; 0x3a84
    cmp word [bp - 0x0044], byte 7   ; 0x3a87
    jge short @..api_idx_0050.l26    ; 0x3a8b
    mov ax, word [bp - 0x0044]       ; 0x3a8d
@..api_idx_0050.l26:
    mov word [bp - 0x0024], ax       ; 0x3a90
    mov ax, 7                        ; 0x3a93
    cmp word [bp - 0x0044], byte 7   ; 0x3a96
    jge short @..api_idx_0050.l27    ; 0x3a9a
    mov ax, word [bp - 0x0044]       ; 0x3a9c
@..api_idx_0050.l27:
    mov word [bp - 0x0020], ax       ; 0x3a9f
    mov word [bp - 0x0018], 0        ; 0x3aa2
    mov word [bp - 0x0022], 0xffff   ; 0x3aa7
    push word [bp - 0x0024]          ; 0x3aac
    push word [bp - 0x0022]          ; 0x3aaf
    push word [bp - 0x0018]          ; 0x3ab2
    mov ax, 7                        ; 0x3ab5
    push ax                          ; 0x3ab8
    mov ax, 0xf                      ; 0x3ab9
    push ax                          ; 0x3abc
    mov ax, word [bp - 0x0006]       ; 0x3abd
    add ax, strict word 0x22         ; 0x3ac0
    push ax                          ; 0x3ac3
    mov ax, word [bp - 0x000c]       ; 0x3ac4
    add ax, strict word 6            ; 0x3ac7
    push ax                          ; 0x3aca
    call ds_dispatch_bf97            ; 0x3acb
    add sp, byte 0x0e                ; 0x3ace
    mov word [bp - 0x0012], 0        ; 0x3ad1
    push word [bp - 0x0012]          ; 0x3ad6
    mov ax, 7                        ; 0x3ad9
    push ax                          ; 0x3adc
    mov ax, 8                        ; 0x3add
    push ax                          ; 0x3ae0
    mov ax, word [bp - 0x0006]       ; 0x3ae1
    add ax, strict word 0x22         ; 0x3ae4
    push ax                          ; 0x3ae7
    mov ax, word [bp - 0x000c]       ; 0x3ae8
    add ax, strict word 0x6a         ; 0x3aeb
    push ax                          ; 0x3aee
    call ds_dispatch_bfd8            ; 0x3aef
    add sp, byte 0x0a                ; 0x3af2
    mov ax, 0                        ; 0x3af5
    push ax                          ; 0x3af8
    push ax                          ; 0x3af9
    mov ax, word [bp - 0x0006]       ; 0x3afa
    add ax, word [bp - 0x0012]       ; 0x3afd
    add ax, strict word 0x2e         ; 0x3b00
    push ax                          ; 0x3b03
    mov ax, word [bp - 0x000c]       ; 0x3b04
    add ax, strict word 0x72         ; 0x3b07
    push ax                          ; 0x3b0a
    mov ax, word [bp - 0x0006]       ; 0x3b0b
    add ax, word [bp - 0x0012]       ; 0x3b0e
    add ax, strict word 0x2a         ; 0x3b11
    push ax                          ; 0x3b14
    mov ax, word [bp - 0x000c]       ; 0x3b15
    add ax, strict word 0x6a         ; 0x3b18
    push ax                          ; 0x3b1b
    mov ax, 0                        ; 0x3b1c
    push ax                          ; 0x3b1f
    call ds_dispatch_baa6            ; 0x3b20
    add sp, byte 0x0e                ; 0x3b23
    mov ax, 0                        ; 0x3b26
    push ax                          ; 0x3b29
    push ax                          ; 0x3b2a
    push word [bp - 0x0042]          ; 0x3b2b
    mov ax, word [bp - 0x0006]       ; 0x3b2e
    add ax, strict word 0x15         ; 0x3b31
    push ax                          ; 0x3b34
    mov ax, word [bp - 0x000c]       ; 0x3b35
    add ax, strict word 0x5e         ; 0x3b38
    push ax                          ; 0x3b3b
    call loc_2e9e                    ; 0x3b3c
    add sp, byte 0x0a                ; 0x3b3f
    mov ax, word [bp - 0x0006]       ; 0x3b42
    add ax, strict word 0x4c         ; 0x3b45
    push ax                          ; 0x3b48
    mov ax, word [bp - 0x000c]       ; 0x3b49
    add ax, strict word 0x72         ; 0x3b4c
    push ax                          ; 0x3b4f
    mov ax, word [bp - 0x0006]       ; 0x3b50
    add ax, strict word 0x22         ; 0x3b53
    push ax                          ; 0x3b56
    mov ax, word [bp - 0x000c]       ; 0x3b57
    add ax, strict word 6            ; 0x3b5a
    push ax                          ; 0x3b5d
    call ds_dispatch_e8da            ; 0x3b5e
    add sp, byte 8                   ; 0x3b61
    mov ax, word [bp - 0x0006]       ; 0x3b64
    add ax, strict word 0x1b         ; 0x3b67
    push ax                          ; 0x3b6a
    mov ax, word [bp - 0x000c]       ; 0x3b6b
    add ax, strict word 0x72         ; 0x3b6e
    push ax                          ; 0x3b71
    mov ax, word [bp - 0x0006]       ; 0x3b72
    add ax, strict word 0x15         ; 0x3b75
    push ax                          ; 0x3b78
    mov ax, word [bp - 0x000c]       ; 0x3b79
    add ax, strict word 0x5e         ; 0x3b7c
    push ax                          ; 0x3b7f
    call ds_dispatch_e8da            ; 0x3b80
    add sp, byte 8                   ; 0x3b83
    jmp near @..api_idx_0050.l34     ; 0x3b86
@..api_idx_0050.l28:
    cmp word [bp - 0x001a], byte 0x12 ; 0x3b89
    jge short @..api_idx_0050.l29    ; 0x3b8d
    jmp near @..api_idx_0050.l34     ; 0x3b8f
@..api_idx_0050.l29:
    mov ax, word [bp - 0x0020]       ; 0x3b92
    add ax, strict word 0x12         ; 0x3b95
    cmp ax, word [bp - 0x001a]       ; 0x3b98
    jg short @..api_idx_0050.l30     ; 0x3b9b
    jmp near @..api_idx_0050.l34     ; 0x3b9d
@..api_idx_0050.l30:
    mov ax, word [bp - 0x0018]       ; 0x3ba0
    add ax, word [bp - 0x001a]       ; 0x3ba3
    add ax, strict word 0xffee       ; 0x3ba6
    mov word [bp - 0x0022], ax       ; 0x3ba9
    shl ax, 1                        ; 0x3bac
    mov bx, ax                       ; 0x3bae
    mov ax, word [bx - 0x68e4]       ; 0x3bb0
    mov word [bp - 0x003c], ax       ; 0x3bb4
    push word [bp - 0x0024]          ; 0x3bb7
    push word [bp - 0x0022]          ; 0x3bba
    push word [bp - 0x0018]          ; 0x3bbd
    mov ax, 7                        ; 0x3bc0
    push ax                          ; 0x3bc3
    mov ax, 0xf                      ; 0x3bc4
    push ax                          ; 0x3bc7
    mov ax, word [bp - 0x0006]       ; 0x3bc8
    add ax, strict word 0x22         ; 0x3bcb
    push ax                          ; 0x3bce
    mov ax, word [bp - 0x000c]       ; 0x3bcf
    add ax, strict word 6            ; 0x3bd2
    push ax                          ; 0x3bd5
    call ds_dispatch_bf97            ; 0x3bd6
    add sp, byte 0x0e                ; 0x3bd9
    mov ax, 6                        ; 0x3bdc
    push ax                          ; 0x3bdf
    mov ax, 0                        ; 0x3be0
    push ax                          ; 0x3be3
    mov ax, 0x248                    ; 0x3be4
    imul word [bp + 0x4]             ; 0x3be7
    mov bx, ax                       ; 0x3bea
    mov ax, word [bx + 0x5c18]       ; 0x3bec
    push ax                          ; 0x3bf0
    mov ax, 6                        ; 0x3bf1
    imul word [bp - 0x003c]          ; 0x3bf4
    mov bx, ax                       ; 0x3bf7
    mov al, byte [bx + 0x621]        ; 0x3bf9
    sub ah, ah                       ; 0x3bfd
    mov cx, ax                       ; 0x3bff
    pop ax                           ; 0x3c01
    sub ax, cx                       ; 0x3c02
    push ax                          ; 0x3c04
    call ds_dispatch_b7c2            ; 0x3c05
    add sp, byte 6                   ; 0x3c08
    mov word [bp - 0x0040], ax       ; 0x3c0b
    mov ax, 6                        ; 0x3c0e
    imul word [bp - 0x003c]          ; 0x3c11
    mov bx, ax                       ; 0x3c14
    mov al, byte [bx + 0x622]        ; 0x3c16
    sub ah, ah                       ; 0x3c1a
    mov cx, word [bp - 0x0040]       ; 0x3c1c
    inc cx                           ; 0x3c1f
    imul cx                          ; 0x3c20
    mov word [bp - 0x0002], ax       ; 0x3c22
    cmp word [bp + 0xa], byte 0      ; 0x3c25
    jne short @..api_idx_0050.l31    ; 0x3c29
    mov ax, 0x3e7                    ; 0x3c2b
    jmp short @..api_idx_0050.l33    ; 0x3c2e
@..api_idx_0050.l31:
    mov ax, 0x248                    ; 0x3c30
    imul word [bp + 0x4]             ; 0x3c33
    mov cx, word [bp - 0x0042]       ; 0x3c36
    shl cx, 1                        ; 0x3c39
    shl cx, 1                        ; 0x3c3b
    add ax, cx                       ; 0x3c3d
    mov bx, ax                       ; 0x3c3f
    mov ax, word [bx + 0x5c1c]       ; 0x3c41
    cmp ax, word [bp - 0x0002]       ; 0x3c45
    jge short @..api_idx_0050.l32    ; 0x3c48
    jmp short @..api_idx_0050.l33    ; 0x3c4a
@..api_idx_0050.l32:
    mov ax, word [bp - 0x0002]       ; 0x3c4c
@..api_idx_0050.l33:
    push ax                          ; 0x3c4f
    mov ax, 6                        ; 0x3c50
    imul word [bp - 0x003c]          ; 0x3c53
    mov bx, ax                       ; 0x3c56
    mov al, byte [bx + 0x622]        ; 0x3c58
    sub ah, ah                       ; 0x3c5c
    mov cx, word [bp - 0x003e]       ; 0x3c5e
    inc cx                           ; 0x3c61
    imul cx                          ; 0x3c62
    push ax                          ; 0x3c64
    push word [bp - 0x0042]          ; 0x3c65
    mov ax, word [bp - 0x0006]       ; 0x3c68
    add ax, strict word 0x15         ; 0x3c6b
    push ax                          ; 0x3c6e
    mov ax, word [bp - 0x000c]       ; 0x3c6f
    add ax, strict word 0x5e         ; 0x3c72
    push ax                          ; 0x3c75
    call loc_2e9e                    ; 0x3c76
    add sp, byte 0x0a                ; 0x3c79
    mov ax, word [bp - 0x0006]       ; 0x3c7c
    add ax, strict word 0x4c         ; 0x3c7f
    push ax                          ; 0x3c82
    mov ax, word [bp - 0x000c]       ; 0x3c83
    add ax, strict word 0x72         ; 0x3c86
    push ax                          ; 0x3c89
    mov ax, word [bp - 0x0006]       ; 0x3c8a
    add ax, strict word 0x22         ; 0x3c8d
    push ax                          ; 0x3c90
    mov ax, word [bp - 0x000c]       ; 0x3c91
    add ax, strict word 6            ; 0x3c94
    push ax                          ; 0x3c97
    call ds_dispatch_e8da            ; 0x3c98
    add sp, byte 8                   ; 0x3c9b
    mov ax, word [bp - 0x0006]       ; 0x3c9e
    add ax, strict word 0x1b         ; 0x3ca1
    push ax                          ; 0x3ca4
    mov ax, word [bp - 0x000c]       ; 0x3ca5
    add ax, strict word 0x72         ; 0x3ca8
    push ax                          ; 0x3cab
    mov ax, word [bp - 0x0006]       ; 0x3cac
    add ax, strict word 0x15         ; 0x3caf
    push ax                          ; 0x3cb2
    mov ax, word [bp - 0x000c]       ; 0x3cb3
    add ax, strict word 0x5e         ; 0x3cb6
    push ax                          ; 0x3cb9
    call ds_dispatch_e8da            ; 0x3cba
    add sp, byte 8                   ; 0x3cbd
@..api_idx_0050.l34:
    jmp short @..api_idx_0050.l37    ; 0x3cc0
    jmp near loc_4d4a                ; 0x3cc2
    xchg word [bx + si], dx          ; 0x3cc5
    xchg word [bx - 0x0078], ax      ; 0x3cc7
    hlt                              ; 0x3cca
    db 0x88
@..api_idx_0050.l35:
    cmp ax, strict word 5            ; 0x3ccc
    jae short @..api_idx_0050.l36    ; 0x3ccf
    xchg bx, ax                      ; 0x3cd1
    shl bx, 1                        ; 0x3cd2
    jmp [cs:bx - 0x72f7]             ; 0x3cd4
@..api_idx_0050.l36:
    jmp near @..api_idx_0050.l14     ; 0x3cd9
@..api_idx_0050.l37:
    cmp word [bp - 0x001c], byte 0   ; 0x3cdc
    je short @..api_idx_0050.l38     ; 0x3ce0
    jmp near @..api_idx_0050.l8      ; 0x3ce2
@..api_idx_0050.l38:
    mov ax, 1                        ; 0x3ce5
    push ax                          ; 0x3ce8
    push word [bp - 0x003a]          ; 0x3ce9
    call ds_dispatch_c459            ; 0x3cec
    add sp, byte 4                   ; 0x3cef
    mov ax, word [bp - 0x000a]       ; 0x3cf2
    inc ax                           ; 0x3cf5
    push ax                          ; 0x3cf6
    mov ax, word [bp - 0x0008]       ; 0x3cf7
    inc ax                           ; 0x3cfa
    push ax                          ; 0x3cfb
    mov ax, word [bp - 0x0006]       ; 0x3cfc
    dec ax                           ; 0x3cff
    push ax                          ; 0x3d00
    mov ax, word [bp - 0x0004]       ; 0x3d01
    dec ax                           ; 0x3d04
    push ax                          ; 0x3d05
    call ds_dispatch_e8da            ; 0x3d06
    add sp, byte 8                   ; 0x3d09
    mov word [bp - 0x0002], 0        ; 0x3d0c
@..api_idx_0050.l39:
    mov ax, word [bp - 0x0002]       ; 0x3d11
    shl ax, 1                        ; 0x3d14
    mov bx, ax                       ; 0x3d16
    add bx, bp                       ; 0x3d18
    mov ax, word [bx - 0x0050]       ; 0x3d1a
    mov cx, word [bp - 0x0002]       ; 0x3d1d
    shl cx, 1                        ; 0x3d20
    mov bx, cx                       ; 0x3d22
    mov word [bx - 0x7cf2], ax       ; 0x3d24
    inc word [bp - 0x0002]           ; 0x3d28
    mov ax, word [bp - 0x0002]       ; 0x3d2b
    cmp ax, strict word 6            ; 0x3d2e
    jl short @..api_idx_0050.l39     ; 0x3d31
    les bx, word [data_0002]         ; 0x3d33
    mov ax, word [es:bx]             ; 0x3d37
    mov dx, word [es:bx + 0x2]       ; 0x3d3a
    mov word [data_908c], dx         ; 0x3d3e
    mov word [data_908a], ax         ; 0x3d42
    mov ax, word [bp - 0x003e]       ; 0x3d45
    xchg al, ah                      ; 0x3d48
    sub al, al                       ; 0x3d4a
    add ax, word [bp - 0x003c]       ; 0x3d4c
    add ax, 0x100                    ; 0x3d4f
    mov word [data_904e], ax         ; 0x3d52
    mov ax, word [data_9050]         ; 0x3d55
    ret                              ; 0x3d58
api_idx_006e:
    mov ax, 0xff92                   ; 0x3d59
    call ds_dispatch_f40b            ; 0x3d5c
    mov ax, word [bp + 0x6]          ; 0x3d5f
    jmp short @..api_idx_006e.l5     ; 0x3d62
@..api_idx_006e.l1:
    mov word [bp - 0x000c], 8        ; 0x3d64
    mov word [bp - 0x000e], 0x20     ; 0x3d69
    jmp short @..api_idx_006e.l6     ; 0x3d6e
@..api_idx_006e.l2:
    mov word [bp - 0x000c], 4        ; 0x3d70
    mov word [bp - 0x000e], 0x1e     ; 0x3d75
    jmp short @..api_idx_006e.l6     ; 0x3d7a
@..api_idx_006e.l3:
    mov word [bp - 0x000c], data_0002 ; 0x3d7c
    mov word [bp - 0x000e], 0x1f     ; 0x3d81
    jmp short @..api_idx_006e.l6     ; 0x3d86
@..api_idx_006e.l4:
    mov word [bp - 0x000c], 1        ; 0x3d88
    mov word [bp - 0x000e], 0x1d     ; 0x3d8d
    jmp short @..api_idx_006e.l6     ; 0x3d92
@..api_idx_006e.l5:
    cmp ax, strict word 0            ; 0x3d94
    je short @..api_idx_006e.l1      ; 0x3d97
    cmp ax, strict word 1            ; 0x3d99
    je short @..api_idx_006e.l2      ; 0x3d9c
    cmp ax, strict word 2            ; 0x3d9e
    je short @..api_idx_006e.l4      ; 0x3da1
    cmp ax, strict word 3            ; 0x3da3
    je short @..api_idx_006e.l3      ; 0x3da6
@..api_idx_006e.l6:
    mov ax, 0x10                     ; 0x3da8
    push ax                          ; 0x3dab
    lea ax, word [bp - 0x001e]       ; 0x3dac
    push ax                          ; 0x3daf
    mov ax, 0x248                    ; 0x3db0
    imul word [bp + 0x4]             ; 0x3db3
    add ax, 0x5e12                   ; 0x3db6
    push ax                          ; 0x3db9
    call ds_dispatch_fedc            ; 0x3dba
    add sp, byte 6                   ; 0x3dbd
    mov ax, 0                        ; 0x3dc0
    push ax                          ; 0x3dc3
    mov ax, 0x10                     ; 0x3dc4
    push ax                          ; 0x3dc7
    mov ax, 0x248                    ; 0x3dc8
    imul word [bp + 0x4]             ; 0x3dcb
    add ax, 0x5e12                   ; 0x3dce
    push ax                          ; 0x3dd1
    call ds_dispatch_f306            ; 0x3dd2
    add sp, byte 6                   ; 0x3dd5
    mov word [bp - 0x000a], 1        ; 0x3dd8
    mov word [bp - 0x0004], 0        ; 0x3ddd
    mov word [bp - 0x0002], 0        ; 0x3de2
@..api_idx_006e.l7:
    mov ax, 6                        ; 0x3de7
    imul word [bp - 0x0002]          ; 0x3dea
    mov bx, ax                       ; 0x3ded
    mov al, byte [bx + 0x625]        ; 0x3def
    sub ah, ah                       ; 0x3df3
    test word [bp - 0x000c], ax      ; 0x3df5
    je short @..api_idx_006e.l8      ; 0x3df8
    mov al, byte [bx + 0x621]        ; 0x3dfa
    sub ah, ah                       ; 0x3dfe
    cmp ax, word [bp - 0x000a]       ; 0x3e00
    jg short @..api_idx_006e.l8      ; 0x3e03
    push word [bp - 0x0002]          ; 0x3e05
    lea ax, word [bp - 0x001e]       ; 0x3e08
    push ax                          ; 0x3e0b
    call ds_dispatch_ec74            ; 0x3e0c
    add sp, byte 4                   ; 0x3e0f
    test ax, ax                      ; 0x3e12
    jne short @..api_idx_006e.l8     ; 0x3e14
    mov ax, 1                        ; 0x3e16
    push ax                          ; 0x3e19
    push word [bp - 0x0002]          ; 0x3e1a
    mov ax, 0x248                    ; 0x3e1d
    imul word [bp + 0x4]             ; 0x3e20
    add ax, 0x5e12                   ; 0x3e23
    push ax                          ; 0x3e26
    call ds_dispatch_ec41            ; 0x3e27
    add sp, byte 6                   ; 0x3e2a
    inc word [bp - 0x0004]           ; 0x3e2d
@..api_idx_006e.l8:
    inc word [bp - 0x0002]           ; 0x3e30
    mov ax, word [bp - 0x0002]       ; 0x3e33
    cmp ax, strict word 0x66         ; 0x3e36
    jl short @..api_idx_006e.l7      ; 0x3e39
    cmp word [bp - 0x0004], byte 0   ; 0x3e3b
    jne short @..api_idx_006e.l9     ; 0x3e3f
    mov ax, 0x10                     ; 0x3e41
    push ax                          ; 0x3e44
    mov ax, 0x248                    ; 0x3e45
    imul word [bp + 0x4]             ; 0x3e48
    add ax, 0x5e12                   ; 0x3e4b
    push ax                          ; 0x3e4e
    lea ax, word [bp - 0x001e]       ; 0x3e4f
    push ax                          ; 0x3e52
    call ds_dispatch_fedc            ; 0x3e53
    add sp, byte 6                   ; 0x3e56
    ret                              ; 0x3e59
@..api_idx_006e.l9:
    lea ax, word [bp - 0x006e]       ; 0x3e5a
    push ax                          ; 0x3e5d
    mov ax, 0x2bf                    ; 0x3e5e
    push ax                          ; 0x3e61
    call ds_dispatch_b53b            ; 0x3e62
    add sp, byte 4                   ; 0x3e65
    mov ax, 1                        ; 0x3e68
    push ax                          ; 0x3e6b
    lea ax, word [bp - 0x006e]       ; 0x3e6c
    push ax                          ; 0x3e6f
    call api_idx_0004_2              ; 0x3e70
    add sp, byte 4                   ; 0x3e73
    mov ax, 0                        ; 0x3e76
    push ax                          ; 0x3e79
    mov ax, 1                        ; 0x3e7a
    push ax                          ; 0x3e7d
    mov ax, 0x7ec                    ; 0x3e7e
    push ax                          ; 0x3e81
    push word [bp + 0x4]             ; 0x3e82
    call api_idx_0050                ; 0x3e85
    add sp, byte 8                   ; 0x3e88
    mov word [bp - 0x0004], ax       ; 0x3e8b
    mov ax, 0x10                     ; 0x3e8e
    push ax                          ; 0x3e91
    mov ax, 0x248                    ; 0x3e92
    imul word [bp + 0x4]             ; 0x3e95
    add ax, 0x5e12                   ; 0x3e98
    push ax                          ; 0x3e9b
    lea ax, word [bp - 0x001e]       ; 0x3e9c
    push ax                          ; 0x3e9f
    call ds_dispatch_fedc            ; 0x3ea0
    add sp, byte 6                   ; 0x3ea3
    cmp word [bp - 0x0004], byte 0   ; 0x3ea6
    je short @..api_idx_006e.l10     ; 0x3eaa
    jmp near @..api_idx_006e.l12     ; 0x3eac
@..api_idx_006e.l10:
    mov ax, word [data_904e]         ; 0x3eaf
    mov cx, 0x100                    ; 0x3eb2
    cwd                              ; 0x3eb5
    idiv cx                          ; 0x3eb6
    mov word [bp - 0x0008], ax       ; 0x3eb8
    mov word [bp - 0x0006], dx       ; 0x3ebb
    mov ax, 1                        ; 0x3ebe
    push ax                          ; 0x3ec1
    push dx                          ; 0x3ec2
    mov ax, 0x248                    ; 0x3ec3
    imul word [bp + 0x4]             ; 0x3ec6
    add ax, 0x5e12                   ; 0x3ec9
    push ax                          ; 0x3ecc
    call ds_dispatch_ec41            ; 0x3ecd
    add sp, byte 6                   ; 0x3ed0
    mov ax, 6                        ; 0x3ed3
    imul word [bp - 0x0006]          ; 0x3ed6
    mov bx, ax                       ; 0x3ed9
    mov al, byte [bx + 0x621]        ; 0x3edb
    sub ah, ah                       ; 0x3edf
    push ax                          ; 0x3ee1
    mov ax, 0x248                    ; 0x3ee2
    imul word [bp + 0x4]             ; 0x3ee5
    mov bx, ax                       ; 0x3ee8
    mov al, byte [bx + 0x5d66]       ; 0x3eea
    sub ah, ah                       ; 0x3eee
    mov cx, 6                        ; 0x3ef0
    cwd                              ; 0x3ef3
    idiv cx                          ; 0x3ef4
    mov cx, ax                       ; 0x3ef6
    pop ax                           ; 0x3ef8
    imul cx                          ; 0x3ef9
    inc ax                           ; 0x3efb
    mov word [bp - 0x0002], ax       ; 0x3efc
    mov ax, 6                        ; 0x3eff
    imul word [bp - 0x0006]          ; 0x3f02
    mov bx, ax                       ; 0x3f05
    mov al, byte [bx + 0x620]        ; 0x3f07
    sub ah, ah                       ; 0x3f0b
    mov word [bp - 0x0004], ax       ; 0x3f0d
    mov ax, 0x248                    ; 0x3f10
    imul word [bp + 0x4]             ; 0x3f13
    mov cx, word [bp - 0x0004]       ; 0x3f16
    shl cx, 1                        ; 0x3f19
    shl cx, 1                        ; 0x3f1b
    add ax, cx                       ; 0x3f1d
    mov bx, ax                       ; 0x3f1f
    mov ax, word [bx + 0x5c1e]       ; 0x3f21
    add ax, word [bp - 0x0002]       ; 0x3f25
    push ax                          ; 0x3f28
    mov ax, 6                        ; 0x3f29
    imul word [bp - 0x0006]          ; 0x3f2c
    mov bx, ax                       ; 0x3f2f
    mov al, byte [bx + 0x622]        ; 0x3f31
    sub ah, ah                       ; 0x3f35
    mov cx, ax                       ; 0x3f37
    pop ax                           ; 0x3f39
    cmp ax, cx                       ; 0x3f3a
    jge short @..api_idx_006e.l11    ; 0x3f3c
    mov ax, 0x248                    ; 0x3f3e
    imul word [bp + 0x4]             ; 0x3f41
    mov dx, word [bp - 0x0004]       ; 0x3f44
    shl dx, 1                        ; 0x3f47
    shl dx, 1                        ; 0x3f49
    add ax, dx                       ; 0x3f4b
    mov bx, ax                       ; 0x3f4d
    sub cx, word [bx + 0x5c1e]       ; 0x3f4f
    mov word [bp - 0x0002], cx       ; 0x3f53
@..api_idx_006e.l11:
    mov ax, word [bp - 0x0002]       ; 0x3f56
    push ax                          ; 0x3f59
    mov ax, 0x248                    ; 0x3f5a
    imul word [bp + 0x4]             ; 0x3f5d
    mov cx, ax                       ; 0x3f60
    mov dx, word [bp - 0x0004]       ; 0x3f62
    shl dx, 1                        ; 0x3f65
    shl dx, 1                        ; 0x3f67
    add ax, dx                       ; 0x3f69
    mov bx, ax                       ; 0x3f6b
    pop ax                           ; 0x3f6d
    add word [bx + 0x5c1e], ax       ; 0x3f6e
    add word [bx + 0x5c1c], ax       ; 0x3f72
    add cx, word [bp + 0x6]          ; 0x3f76
    mov bx, cx                       ; 0x3f79
    dec byte [bx + 0x5d50]           ; 0x3f7b
    push word [bp + 0x4]             ; 0x3f7f
    call api_idx_0004                ; 0x3f82
    pop cx                           ; 0x3f85
@..api_idx_006e.l12:
    ret                              ; 0x3f86
math_loc_3f87:
    mov ax, 0                        ; 0x3f87
    call ds_dispatch_f40b            ; 0x3f8a
    les bx, word [data_0002]         ; 0x3f8d
    mov ax, word [es:bx]             ; 0x3f91
    mov dx, word [es:bx + 0x2]       ; 0x3f94
    mov word [data_9090], dx         ; 0x3f98
    mov word [data_908e], ax         ; 0x3f9c
    mov ax, word [data_908e]         ; 0x3f9f
    mov dx, word [data_9090]         ; 0x3fa2
    sub ax, word [data_908a]         ; 0x3fa6
    sbb dx, word [data_908c]         ; 0x3faa
    mov word [data_9094], dx         ; 0x3fae
    mov word [data_9092], ax         ; 0x3fb2
    mov ax, word [data_976c]         ; 0x3fb5
    cwd                              ; 0x3fb8
    mov cx, ax                       ; 0x3fb9
    mov bx, dx                       ; 0x3fbb
    mov ax, word [data_9092]         ; 0x3fbd
    mov dx, word [data_9094]         ; 0x3fc0
    cmp bx, dx                       ; 0x3fc4
    jg short @..math_loc_3f87.l1     ; 0x3fc6
    jne short @..math_loc_3f87.l2    ; 0x3fc8
    cmp cx, ax                       ; 0x3fca
    jbe short @..math_loc_3f87.l2    ; 0x3fcc
@..math_loc_3f87.l1:
    jmp short @..math_loc_3f87.l3    ; 0x3fce
@..math_loc_3f87.l2:
    mov ax, word [data_908e]         ; 0x3fd0
    mov dx, word [data_9090]         ; 0x3fd3
    mov word [data_908c], dx         ; 0x3fd7
    mov word [data_908a], ax         ; 0x3fdb
    mov ax, word [data_95ae]         ; 0x3fde
    inc ax                           ; 0x3fe1
    mov cx, 3                        ; 0x3fe2
    cwd                              ; 0x3fe5
    idiv cx                          ; 0x3fe6
    mov word [data_95ae], dx         ; 0x3fe8
    push dx                          ; 0x3fec
    call api_idx_000a                ; 0x3fed
    pop cx                           ; 0x3ff0
    mov ax, 0x41                     ; 0x3ff1
    push ax                          ; 0x3ff4
    mov ax, 0x65                     ; 0x3ff5
    push ax                          ; 0x3ff8
    mov ax, 0x19                     ; 0x3ff9
    push ax                          ; 0x3ffc
    mov ax, 0x5a                     ; 0x3ffd
    push ax                          ; 0x4000
    call ds_dispatch_e8da            ; 0x4001
    add sp, byte 8                   ; 0x4004
    mov ax, 0xffff                   ; 0x4007
    push ax                          ; 0x400a
    call api_idx_0002_3              ; 0x400b
    pop cx                           ; 0x400e
    push word [bp + 0x4]             ; 0x400f
    call api_idx_0004                ; 0x4012
    pop cx                           ; 0x4015
    mov ax, 0xbf                     ; 0x4016
    push ax                          ; 0x4019
    mov ax, 0x13f                    ; 0x401a
    push ax                          ; 0x401d
    mov ax, 0x7e                     ; 0x401e
    push ax                          ; 0x4021
    mov ax, 0xb8                     ; 0x4022
    push ax                          ; 0x4025
    call ds_dispatch_e8da            ; 0x4026
    add sp, byte 8                   ; 0x4029
@..math_loc_3f87.l3:
    ret                              ; 0x402c
api_idx_0002_7:
    mov ax, 0xfffe                   ; 0x402d
    call ds_dispatch_f40b            ; 0x4030
    mov word [bp - 0x0002], 0        ; 0x4033
@..api_idx_0002_7.l1:
    mov ax, 0x248                    ; 0x4038
    imul word [bp + 0x4]             ; 0x403b
    add ax, word [bp - 0x0002]       ; 0x403e
    mov bx, ax                       ; 0x4041
    mov al, byte [bx + 0x5d64]       ; 0x4043
    sub ah, ah                       ; 0x4047
    push ax                          ; 0x4049
    mov bx, word [bp + 0x6]          ; 0x404a
    mov si, word [bp - 0x0002]       ; 0x404d
    mov al, byte [bx + si]           ; 0x4050
    cbw                              ; 0x4052
    mov cx, ax                       ; 0x4053
    add ax, strict word 0xffbf       ; 0x4055
    mov cx, ax                       ; 0x4058
    pop ax                           ; 0x405a
    cmp ax, cx                       ; 0x405b
    jge short @..api_idx_0002_7.l2   ; 0x405d
    mov al, byte [bx + si]           ; 0x405f
    add al, 0xbf                     ; 0x4061
    push ax                          ; 0x4063
    mov ax, 0x248                    ; 0x4064
    imul word [bp + 0x4]             ; 0x4067
    mov cx, ax                       ; 0x406a
    add ax, si                       ; 0x406c
    mov bx, ax                       ; 0x406e
    pop ax                           ; 0x4070
    mov byte [bx + 0x5d64], al       ; 0x4071
@..api_idx_0002_7.l2:
    inc word [bp - 0x0002]           ; 0x4075
    mov ax, word [bp - 0x0002]       ; 0x4078
    cmp ax, strict word 8            ; 0x407b
    jl short @..api_idx_0002_7.l1    ; 0x407e
    ret                              ; 0x4080
api_idx_0006:
    mov ax, 0xfffa                   ; 0x4081
    call ds_dispatch_f40b            ; 0x4084
    mov ax, word [data_9594]         ; 0x4087
    mov word [bp - 0x0006], ax       ; 0x408a
    mov word [bp - 0x0002], 0        ; 0x408d
@..api_idx_0006.l1:
    mov ax, 0x248                    ; 0x4092
    imul word [bp + 0x4]             ; 0x4095
    add ax, word [bp - 0x0002]       ; 0x4098
    mov bx, ax                       ; 0x409b
    mov al, byte [bx + 0x5d64]       ; 0x409d
    sub ah, ah                       ; 0x40a1
    mov word [bp - 0x0004], ax       ; 0x40a3
@..api_idx_0006.l2:
    mov bx, word [bp + 0x8]          ; 0x40a6
    mov si, word [bp - 0x0002]       ; 0x40a9
    mov al, byte [bx + si]           ; 0x40ac
    cbw                              ; 0x40ae
    add ax, strict word 0xffbf       ; 0x40af
    cmp ax, word [bp - 0x0004]       ; 0x40b2
    jle short @..api_idx_0006.l4     ; 0x40b5
    inc word [bp - 0x0004]           ; 0x40b7
    dec word [bp - 0x0006]           ; 0x40ba
    cmp word [bp + 0xa], byte 1      ; 0x40bd
    jne short @..api_idx_0006.l3     ; 0x40c1
    mov ax, 0x248                    ; 0x40c3
    imul word [bp + 0x4]             ; 0x40c6
    add ax, si                       ; 0x40c9
    mov bx, ax                       ; 0x40cb
    inc byte [bx + 0x5d64]           ; 0x40cd
    dec word [data_9594]             ; 0x40d1
    mov ax, 1                        ; 0x40d5
    push ax                          ; 0x40d8
    push word [bp + 0x4]             ; 0x40d9
    call api_idx_0002_5              ; 0x40dc
    add sp, byte 4                   ; 0x40df
@..api_idx_0006.l3:
    jmp short @..api_idx_0006.l2     ; 0x40e2
@..api_idx_0006.l4:
    inc word [bp - 0x0002]           ; 0x40e4
    mov ax, word [bp - 0x0002]       ; 0x40e7
    cmp ax, strict word 8            ; 0x40ea
    jl short @..api_idx_0006.l1      ; 0x40ed
    mov ax, 0                        ; 0x40ef
    cmp word [bp - 0x0006], byte 0   ; 0x40f2
    jl short @..api_idx_0006.l5      ; 0x40f6
    mov ax, 1                        ; 0x40f8
@..api_idx_0006.l5:
    mov cx, word [bp + 0x6]          ; 0x40fb
    shl cx, 1                        ; 0x40fe
    mov bx, cx                       ; 0x4100
    mov word [bx - 0x6892], ax       ; 0x4102
    ret                              ; 0x4106
loc_4107:
    mov ax, 0                        ; 0x4107
    call ds_dispatch_f40b            ; 0x410a
    mov ax, word [bp + 0x6]          ; 0x410d
    jmp near @..local.l6             ; 0x4110

    db 0xff, 0x76, 0x08, 0xb8, 0xdc, 0x92, 0x50, 0xff, 0x76, 0x06, 0xff, 0x76, 0x04, 0xe8, 0x5e, 0xff
    db 0x83, 0xc4, 0x08, 0xe9, 0x67, 0x01, 0xff, 0x76, 0x08, 0xb8, 0xe5, 0x92, 0x50, 0xff, 0x76, 0x06
    db 0xff, 0x76, 0x04, 0xe8, 0x48, 0xff, 0x83, 0xc4, 0x08, 0xe9, 0x51, 0x01, 0xff, 0x76, 0x08, 0xb8
    db 0xee, 0x92, 0x50, 0xff, 0x76, 0x06, 0xff, 0x76, 0x04, 0xe8, 0x32, 0xff, 0x83, 0xc4, 0x08, 0xe9
    db 0x3b, 0x01, 0xff, 0x76, 0x08, 0xb8, 0xf7, 0x92, 0x50, 0xff, 0x76, 0x06, 0xff, 0x76, 0x04, 0xe8
    db 0x1c, 0xff, 0x83, 0xc4, 0x08, 0xe9, 0x25, 0x01, 0xff, 0x76, 0x08, 0xb8, 0x00, 0x93, 0x50, 0xff
    db 0x76, 0x06, 0xff, 0x76, 0x04, 0xe8, 0x06, 0xff, 0x83, 0xc4, 0x08, 0xe9, 0x0f, 0x01, 0xff, 0x76
    db 0x08, 0xb8, 0x09, 0x93, 0x50, 0xff, 0x76, 0x06, 0xff, 0x76, 0x04, 0xe8, 0xf0, 0xfe, 0x83, 0xc4
    db 0x08, 0xe9, 0xf9, 0x00, 0xff, 0x76, 0x08, 0xb8, 0x12, 0x93, 0x50, 0xff, 0x76, 0x06, 0xff, 0x76
    db 0x04, 0xe8, 0xda, 0xfe, 0x83, 0xc4, 0x08, 0xe9, 0xe3, 0x00, 0xff, 0x76, 0x08, 0xb8, 0x1b, 0x93
    db 0x50, 0xff, 0x76, 0x06, 0xff, 0x76, 0x04, 0xe8, 0xc4, 0xfe, 0x83, 0xc4, 0x08, 0xe9, 0xcd, 0x00
    db 0x83, 0x7e, 0x08, 0x00, 0x75, 0x0f, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xd8, 0x80, 0xbf
    db 0x2c, 0x5e, 0x01, 0x75, 0x15, 0xff, 0x76, 0x08, 0xb8, 0x24, 0x93, 0x50, 0xff, 0x76, 0x06, 0xff
    db 0x76, 0x04, 0xe8, 0x99, 0xfe, 0x83, 0xc4, 0x08, 0xeb, 0x0d, 0x8b, 0x46, 0x06, 0xd1, 0xe0, 0x8b
    db 0xd8, 0xc7, 0x87, 0x6e, 0x97, 0x00, 0x00, 0xe9, 0x93, 0x00, 0xff, 0x76, 0x08, 0xb8, 0x2d, 0x93
    db 0x50, 0xff, 0x76, 0x06, 0xff, 0x76, 0x04, 0xe8, 0x74, 0xfe, 0x83, 0xc4, 0x08, 0xe9, 0x7d, 0x00
    db 0xff, 0x76, 0x08, 0xb8, 0x36, 0x93, 0x50, 0xff, 0x76, 0x06, 0xff, 0x76, 0x04, 0xe8, 0x5e, 0xfe
    db 0x83, 0xc4, 0x08, 0xeb, 0x68, 0xff, 0x76, 0x08, 0xb8, 0x3f, 0x93, 0x50, 0xff, 0x76, 0x06, 0xff
    db 0x76, 0x04, 0xe8, 0x49, 0xfe, 0x83, 0xc4, 0x08, 0xeb, 0x53, 0xff, 0x76, 0x08, 0xb8, 0x48, 0x93
    db 0x50, 0xff, 0x76, 0x06, 0xff, 0x76, 0x04, 0xe8, 0x34, 0xfe, 0x83, 0xc4, 0x08, 0xeb, 0x3e, 0xff
    db 0x76, 0x08, 0xb8, 0x51, 0x93, 0x50, 0xff, 0x76, 0x06, 0xff, 0x76, 0x04, 0xe8, 0x1f, 0xfe, 0x83
    db 0xc4, 0x08, 0xeb, 0x29, 0x5a, 0x91, 0x70, 0x91, 0x86, 0x91, 0x9c, 0x91, 0xb2, 0x91, 0xc8, 0x91
    db 0xde, 0x91, 0xf4, 0x91, 0x0a, 0x92, 0x44, 0x92, 0x5a, 0x92, 0x6f, 0x92, 0x84, 0x92, 0x99, 0x92

@..local.l6:
    cmp ax, strict word 0xe          ; 0x4283
    jae short @..local.l7            ; 0x4286
    xchg bx, ax                      ; 0x4288
    shl bx, 1                        ; 0x4289
    jmp [cs:bx - 0x6d52]             ; 0x428b
@..local.l7:
    ret                              ; 0x4290
api_idx_0002_8:
    mov ax, 0xfffe                   ; 0x4291
    call ds_dispatch_f40b            ; 0x4294
    mov word [bp - 0x0002], 0        ; 0x4297
@..api_idx_0002_8.l1:
    mov ax, 0                        ; 0x429c
    push ax                          ; 0x429f
    push word [bp - 0x0002]          ; 0x42a0
    push word [bp + 0x4]             ; 0x42a3
    call loc_4107                    ; 0x42a6
    add sp, byte 6                   ; 0x42a9
    inc word [bp - 0x0002]           ; 0x42ac
    mov ax, word [bp - 0x0002]       ; 0x42af
    cmp ax, strict word 0xd          ; 0x42b2
    jle short @..api_idx_0002_8.l1   ; 0x42b5
    ret                              ; 0x42b7
loc_42b8:
    mov ax, 0                        ; 0x42b8
    call ds_dispatch_f40b            ; 0x42bb
    mov ax, word [bp + 0x6]          ; 0x42be
    jmp near @..local.l8             ; 0x42c1

    db 0xb8, 0x5a, 0x93, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x5f, 0xfd, 0x83, 0xc4, 0x04, 0xe9, 0xbd, 0x00
    db 0xb8, 0x63, 0x93, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x4f, 0xfd, 0x83, 0xc4, 0x04, 0xe9, 0xad, 0x00
    db 0xb8, 0x6c, 0x93, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x3f, 0xfd, 0x83, 0xc4, 0x04, 0xe9, 0x9d, 0x00
    db 0xb8, 0x75, 0x93, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x2f, 0xfd, 0x83, 0xc4, 0x04, 0xe9, 0x8d, 0x00
    db 0xb8, 0x7e, 0x93, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x1f, 0xfd, 0x83, 0xc4, 0x04, 0xe9, 0x7d, 0x00
    db 0xb8, 0x87, 0x93, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x0f, 0xfd, 0x83, 0xc4, 0x04, 0xeb, 0x6e, 0xb8
    db 0x90, 0x93, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x00, 0xfd, 0x83, 0xc4, 0x04, 0xeb, 0x5f, 0xb8, 0x99
    db 0x93, 0x50, 0xff, 0x76, 0x04, 0xe8, 0xf1, 0xfc, 0x83, 0xc4, 0x04, 0xeb, 0x50, 0xb8, 0xa2, 0x93
    db 0x50, 0xff, 0x76, 0x04, 0xe8, 0xe2, 0xfc

    add sp, byte 4                   ; 0x434b
    jmp short @..local.l9            ; 0x434e

    db 0xb8, 0xab, 0x93, 0x50, 0xff, 0x76, 0x04, 0xe8, 0xd3, 0xfc, 0x83, 0xc4, 0x04, 0xeb, 0x32, 0xb8
    db 0xb4, 0x93, 0x50, 0xff, 0x76, 0x04, 0xe8, 0xc4, 0xfc, 0x83, 0xc4, 0x04, 0xeb, 0x23, 0x0b, 0x93
    db 0x1b, 0x93, 0x2b, 0x93, 0x3b, 0x93, 0x4b, 0x93, 0x5b, 0x93, 0x6a, 0x93, 0x79, 0x93, 0x88, 0x93
    db 0x97, 0x93, 0xa6, 0x93

@..local.l8:
    cmp ax, strict word 0xb          ; 0x4384
    jae short @..local.l9            ; 0x4387
    xchg bx, ax                      ; 0x4389
    shl bx, 1                        ; 0x438a
    jmp [cs:bx - 0x6c4b]             ; 0x438c
@..local.l9:
    ret                              ; 0x4391
math_loc_4392:
    mov ax, 0                        ; 0x4392
    call ds_dispatch_f40b            ; 0x4395
    cmp word [bp + 0x6], byte 1      ; 0x4398
    jne short @..math_loc_4392.l1    ; 0x439c
    mov ax, 0x248                    ; 0x439e
    imul word [bp + 0x4]             ; 0x43a1
    mov bx, ax                       ; 0x43a4
    mov al, byte [bx + 0x5d64]       ; 0x43a6
    sub ah, ah                       ; 0x43aa
    dec ax                           ; 0x43ac
    dec ax                           ; 0x43ad
    mov byte [bx + 0x5d64], al       ; 0x43ae
    inc byte [bx + 0x5d6a]           ; 0x43b2
    inc byte [bx + 0x5d6b]           ; 0x43b6
@..math_loc_4392.l1:
    ret                              ; 0x43ba
api_idx_007a:
    mov ax, 0xff86                   ; 0x43bb
    call ds_dispatch_f40b            ; 0x43be
    mov word [bp - 0x0002], 0        ; 0x43c1
@..api_idx_007a.l1:
    mov ax, word [bp - 0x0002]       ; 0x43c6
    shl ax, 1                        ; 0x43c9
    mov bx, ax                       ; 0x43cb
    add bx, bp                       ; 0x43cd
    mov word [bx - 0x007a], 1        ; 0x43cf
    inc word [bp - 0x0002]           ; 0x43d4
    mov ax, word [bp - 0x0002]       ; 0x43d7
    cmp ax, strict word 0xa          ; 0x43da
    jle short @..api_idx_007a.l1     ; 0x43dd
    mov word [bp - 0x0064], 0xffff   ; 0x43df
    lea ax, word [bp - 0x007a]       ; 0x43e4
    push ax                          ; 0x43e7
    mov ax, 0                        ; 0x43e8
    push ax                          ; 0x43eb
    mov ax, 0xffff                   ; 0x43ec
    push ax                          ; 0x43ef
    mov ax, 1                        ; 0x43f0
    push ax                          ; 0x43f3
    mov ax, 0xb                      ; 0x43f4
    push ax                          ; 0x43f7
    mov ax, 4                        ; 0x43f8
    push ax                          ; 0x43fb
    mov ax, 0xc                      ; 0x43fc
    push ax                          ; 0x43ff
    mov ax, 0x46                     ; 0x4400
    push ax                          ; 0x4403
    mov ax, 0xb                      ; 0x4404
    push ax                          ; 0x4407
    mov ax, 0x86                     ; 0x4408
    push ax                          ; 0x440b
    mov ax, 0x39                     ; 0x440c
    push ax                          ; 0x440f
    mov ax, 0x450                    ; 0x4410
    push ax                          ; 0x4413
    mov ax, 0x64                     ; 0x4414
    push ax                          ; 0x4417
    call math_loc_0445               ; 0x4418
    add sp, byte 0x1a                ; 0x441b
    push ax                          ; 0x441e
    mov ax, 0x248                    ; 0x441f
    imul word [bp + 0x4]             ; 0x4422
    mov bx, ax                       ; 0x4425
    pop ax                           ; 0x4427
    mov byte [bx + 0x5e2b], al       ; 0x4428
    mov ax, 0                        ; 0x442c
    push ax                          ; 0x442f
    mov ax, 1                        ; 0x4430
    push ax                          ; 0x4433
    call ds_dispatch_e823            ; 0x4434
    add sp, byte 4                   ; 0x4437
    mov ax, 6                        ; 0x443a
    push ax                          ; 0x443d
    mov ax, 0x66                     ; 0x443e
    push ax                          ; 0x4441
    call ds_dispatch_e809            ; 0x4442
    add sp, byte 4                   ; 0x4445
    lea ax, word [bp - 0x0052]       ; 0x4448
    push ax                          ; 0x444b
    mov ax, 0x248                    ; 0x444c
    imul word [bp + 0x4]             ; 0x444f
    mov bx, ax                       ; 0x4452
    mov al, byte [bx + 0x5e2b]       ; 0x4454
    sub ah, ah                       ; 0x4458
    add ax, strict word 0x64         ; 0x445a
    push ax                          ; 0x445d
    call ds_dispatch_b53b            ; 0x445e
    add sp, byte 4                   ; 0x4461
    mov ax, 0                        ; 0x4464
    push ax                          ; 0x4467
    lea ax, word [bp - 0x0052]       ; 0x4468
    push ax                          ; 0x446b
    call ds_dispatch_e84e            ; 0x446c
    add sp, byte 4                   ; 0x446f
    mov ax, 0x248                    ; 0x4472
    imul word [bp + 0x4]             ; 0x4475
    mov bx, ax                       ; 0x4478
    mov al, byte [bx + 0x5e2b]       ; 0x447a
    sub ah, ah                       ; 0x447e
    push ax                          ; 0x4480
    push word [bp + 0x4]             ; 0x4481
    call loc_42b8                    ; 0x4484
    add sp, byte 4                   ; 0x4487
    mov ax, 1                        ; 0x448a
    push ax                          ; 0x448d
    push word [bp + 0x4]             ; 0x448e
    call api_idx_0002_5              ; 0x4491
    add sp, byte 4                   ; 0x4494
    ret                              ; 0x4497
api_idx_007a_2:
    mov ax, 0xff86                   ; 0x4498
    call ds_dispatch_f40b            ; 0x449b
    mov word [bp - 0x0002], 0        ; 0x449e
@..api_idx_007a_2.l1:
    mov ax, word [bp - 0x0002]       ; 0x44a3
    shl ax, 1                        ; 0x44a6
    mov bx, ax                       ; 0x44a8
    add bx, bp                       ; 0x44aa
    mov word [bx - 0x007a], 1        ; 0x44ac
    inc word [bp - 0x0002]           ; 0x44b1
    mov ax, word [bp - 0x0002]       ; 0x44b4
    cmp ax, strict word 1            ; 0x44b7
    jle short @..api_idx_007a_2.l1   ; 0x44ba
    mov word [bp - 0x0076], 0xffff   ; 0x44bc
    lea ax, word [bp - 0x007a]       ; 0x44c1
    push ax                          ; 0x44c4
    mov ax, 0                        ; 0x44c5
    push ax                          ; 0x44c8
    mov ax, 0xffff                   ; 0x44c9
    push ax                          ; 0x44cc
    mov ax, 1                        ; 0x44cd
    push ax                          ; 0x44d0
    mov ax, data_0002                ; 0x44d1
    push ax                          ; 0x44d4
    mov ax, 1                        ; 0x44d5
    push ax                          ; 0x44d8
    mov ax, 0xc                      ; 0x44d9
    push ax                          ; 0x44dc
    mov ax, 0x6a                     ; 0x44dd
    push ax                          ; 0x44e0
    mov ax, 0xb                      ; 0x44e1
    push ax                          ; 0x44e4
    mov ax, 0x86                     ; 0x44e5
    push ax                          ; 0x44e8
    mov ax, 0x4a                     ; 0x44e9
    push ax                          ; 0x44ec
    mov ax, 0x451                    ; 0x44ed
    push ax                          ; 0x44f0
    mov ax, 0x8c                     ; 0x44f1
    push ax                          ; 0x44f4
    call math_loc_0445               ; 0x44f5
    add sp, byte 0x1a                ; 0x44f8
    push ax                          ; 0x44fb
    mov ax, 0x248                    ; 0x44fc
    imul word [bp + 0x4]             ; 0x44ff
    mov bx, ax                       ; 0x4502
    pop ax                           ; 0x4504
    mov byte [bx + 0x5e2c], al       ; 0x4505
    mov ax, 0                        ; 0x4509
    push ax                          ; 0x450c
    mov ax, 1                        ; 0x450d
    push ax                          ; 0x4510
    call ds_dispatch_e823            ; 0x4511
    add sp, byte 4                   ; 0x4514
    mov ax, 6                        ; 0x4517
    push ax                          ; 0x451a
    mov ax, 0x5a                     ; 0x451b
    push ax                          ; 0x451e
    call ds_dispatch_e809            ; 0x451f
    add sp, byte 4                   ; 0x4522
    lea ax, word [bp - 0x0052]       ; 0x4525
    push ax                          ; 0x4528
    mov ax, 0x248                    ; 0x4529
    imul word [bp + 0x4]             ; 0x452c
    mov bx, ax                       ; 0x452f
    mov al, byte [bx + 0x5e2c]       ; 0x4531
    sub ah, ah                       ; 0x4535
    add ax, 0x8c                     ; 0x4537
    push ax                          ; 0x453a
    call ds_dispatch_b53b            ; 0x453b
    add sp, byte 4                   ; 0x453e
    mov ax, 0                        ; 0x4541
    push ax                          ; 0x4544
    mov al, byte [bp - 0x0052]       ; 0x4545
    sub ah, ah                       ; 0x4548
    push ax                          ; 0x454a
    call ds_dispatch_e830            ; 0x454b
    add sp, byte 4                   ; 0x454e
    mov ax, 0                        ; 0x4551
    push ax                          ; 0x4554
    mov ax, 0x2d                     ; 0x4555
    push ax                          ; 0x4558
    call ds_dispatch_e830            ; 0x4559
    add sp, byte 4                   ; 0x455c
    mov ax, 0x248                    ; 0x455f
    imul word [bp + 0x4]             ; 0x4562
    mov bx, ax                       ; 0x4565
    mov al, byte [bx + 0x5e2c]       ; 0x4567
    sub ah, ah                       ; 0x456b
    push ax                          ; 0x456d
    push word [bp + 0x4]             ; 0x456e
    call math_loc_4392               ; 0x4571
    add sp, byte 4                   ; 0x4574
    mov ax, 1                        ; 0x4577
    push ax                          ; 0x457a
    push word [bp + 0x4]             ; 0x457b
    call api_idx_0002_5              ; 0x457e
    add sp, byte 4                   ; 0x4581
    ret                              ; 0x4584
api_idx_007c:
    mov ax, 0xff84                   ; 0x4585
    call ds_dispatch_f40b            ; 0x4588
    push word [bp + 0x4]             ; 0x458b
    call api_idx_0002_8              ; 0x458e
    pop cx                           ; 0x4591
    mov word [bp - 0x0004], 0        ; 0x4592
    mov word [bp - 0x0002], 0        ; 0x4597
@..api_idx_007c.l1:
    mov ax, word [bp - 0x0002]       ; 0x459c
    shl ax, 1                        ; 0x459f
    mov bx, ax                       ; 0x45a1
    cmp word [bx - 0x6892], byte 1   ; 0x45a3
    jne short @..api_idx_007c.l2     ; 0x45a8
    mov ax, 1                        ; 0x45aa
    jmp short @..api_idx_007c.l3     ; 0x45ad
@..api_idx_007c.l2:
    mov ax, 0                        ; 0x45af
@..api_idx_007c.l3:
    add bx, bp                       ; 0x45b2
    mov word [bx - 0x007c], ax       ; 0x45b4
    cmp word [bx - 0x007c], byte 0   ; 0x45b7
    je short @..api_idx_007c.l4      ; 0x45bb
    inc word [bp - 0x0004]           ; 0x45bd
@..api_idx_007c.l4:
    inc word [bp - 0x0002]           ; 0x45c0
    mov ax, word [bp - 0x0002]       ; 0x45c3
    cmp ax, strict word 0xd          ; 0x45c6
    jle short @..api_idx_007c.l1     ; 0x45c9
    mov word [bp - 0x0060], 0xffff   ; 0x45cb
    lea ax, word [bp - 0x007c]       ; 0x45d0
    push ax                          ; 0x45d3
    mov ax, 0                        ; 0x45d4
    push ax                          ; 0x45d7
    mov ax, 0xffff                   ; 0x45d8
    push ax                          ; 0x45db
    mov ax, 1                        ; 0x45dc
    push ax                          ; 0x45df
    mov ax, word [bp - 0x0004]       ; 0x45e0
    inc ax                           ; 0x45e3
    inc ax                           ; 0x45e4
    mov cx, 3                        ; 0x45e5
    cwd                              ; 0x45e8
    idiv cx                          ; 0x45e9
    imul cx                          ; 0x45eb
    push ax                          ; 0x45ed
    mov ax, word [bp - 0x0004]       ; 0x45ee
    inc ax                           ; 0x45f1
    inc ax                           ; 0x45f2
    cwd                              ; 0x45f3
    idiv cx                          ; 0x45f4
    push ax                          ; 0x45f6
    mov ax, 0xc                      ; 0x45f7
    push ax                          ; 0x45fa
    mov ax, 0x46                     ; 0x45fb
    push ax                          ; 0x45fe
    mov ax, 0xb                      ; 0x45ff
    push ax                          ; 0x4602
    mov ax, 0x86                     ; 0x4603
    push ax                          ; 0x4606
    mov ax, 0x39                     ; 0x4607
    push ax                          ; 0x460a
    mov ax, 0x452                    ; 0x460b
    push ax                          ; 0x460e
    mov ax, 0x78                     ; 0x460f
    push ax                          ; 0x4612
    call math_loc_0445               ; 0x4613
    add sp, byte 0x1a                ; 0x4616
    push ax                          ; 0x4619
    mov ax, 0x248                    ; 0x461a
    imul word [bp + 0x4]             ; 0x461d
    mov bx, ax                       ; 0x4620
    pop ax                           ; 0x4622
    mov byte [bx + 0x5e2d], al       ; 0x4623
    mov ax, 0                        ; 0x4627
    push ax                          ; 0x462a
    mov ax, 0x84                     ; 0x462b
    push ax                          ; 0x462e
    call ds_dispatch_e823            ; 0x462f
    add sp, byte 4                   ; 0x4632
    mov ax, 0xc                      ; 0x4635
    push ax                          ; 0x4638
    mov ax, 0x5a                     ; 0x4639
    push ax                          ; 0x463c
    call ds_dispatch_e809            ; 0x463d
    add sp, byte 4                   ; 0x4640
    lea ax, word [bp - 0x0054]       ; 0x4643
    push ax                          ; 0x4646
    mov ax, 0x248                    ; 0x4647
    imul word [bp + 0x4]             ; 0x464a
    mov bx, ax                       ; 0x464d
    mov al, byte [bx + 0x5e2d]       ; 0x464f
    sub ah, ah                       ; 0x4653
    add ax, strict word 0x78         ; 0x4655
    push ax                          ; 0x4658
    call ds_dispatch_b53b            ; 0x4659
    add sp, byte 4                   ; 0x465c
    mov ax, 0                        ; 0x465f
    push ax                          ; 0x4662
    lea ax, word [bp - 0x0054]       ; 0x4663
    push ax                          ; 0x4666
    call ds_dispatch_e84e            ; 0x4667
    add sp, byte 4                   ; 0x466a
    mov ax, 1                        ; 0x466d
    push ax                          ; 0x4670
    mov ax, 0x248                    ; 0x4671
    imul word [bp + 0x4]             ; 0x4674
    mov bx, ax                       ; 0x4677
    mov al, byte [bx + 0x5e2d]       ; 0x4679
    sub ah, ah                       ; 0x467d
    push ax                          ; 0x467f
    push word [bp + 0x4]             ; 0x4680
    call loc_4107                    ; 0x4683
    add sp, byte 6                   ; 0x4686
    mov ax, 1                        ; 0x4689
    push ax                          ; 0x468c
    push word [bp + 0x4]             ; 0x468d
    call api_idx_0002_5              ; 0x4690
    add sp, byte 4                   ; 0x4693
    ret                              ; 0x4696
api_idx_006c:
    mov ax, 0xff94                   ; 0x4697
    call ds_dispatch_f40b            ; 0x469a
    mov ax, 0                        ; 0x469d
    push ax                          ; 0x46a0
    mov ax, 0x10                     ; 0x46a1
    push ax                          ; 0x46a4
    lea ax, word [bp - 0x0018]       ; 0x46a5
    push ax                          ; 0x46a8
    call ds_dispatch_f306            ; 0x46a9
    add sp, byte 6                   ; 0x46ac
    mov word [bp - 0x0006], 0        ; 0x46af
    mov ax, 8                        ; 0x46b4
    push ax                          ; 0x46b7
    mov ax, 1                        ; 0x46b8
    push ax                          ; 0x46bb
    mov ax, 0x18                     ; 0x46bc
    push ax                          ; 0x46bf
    mov ax, 0x97                     ; 0x46c0
    push ax                          ; 0x46c3
    mov ax, 0x58                     ; 0x46c4
    push ax                          ; 0x46c7
    mov ax, 0x44e                    ; 0x46c8
    push ax                          ; 0x46cb
    call api_idx_0058                ; 0x46cc
    add sp, byte 0x0c                ; 0x46cf
    mov word [bp - 0x006a], dx       ; 0x46d2
    mov word [bp - 0x006c], ax       ; 0x46d5
    call ds_dispatch_ec17            ; 0x46d8
@..api_idx_006c.l1:
    mov ax, 0                        ; 0x46db
    push ax                          ; 0x46de
    push word [bp + 0x4]             ; 0x46df
    call api_idx_0002_5              ; 0x46e2
    add sp, byte 4                   ; 0x46e5
    mov ax, 0                        ; 0x46e8
    push ax                          ; 0x46eb
    mov ax, 1                        ; 0x46ec
    push ax                          ; 0x46ef
    call ds_dispatch_e823            ; 0x46f0
    add sp, byte 4                   ; 0x46f3
    mov ax, 6                        ; 0x46f6
    imul word [bp - 0x0006]          ; 0x46f9
    add ax, strict word 0x23         ; 0x46fc
    push ax                          ; 0x46ff
    mov ax, api_idx_0002_2           ; 0x4700
    push ax                          ; 0x4703
    call ds_dispatch_e809            ; 0x4704
    add sp, byte 4                   ; 0x4707
    mov ax, 0                        ; 0x470a
    push ax                          ; 0x470d
    mov ax, 5                        ; 0x470e
    push ax                          ; 0x4711
    call ds_dispatch_e830            ; 0x4712
    add sp, byte 4                   ; 0x4715
    mov ax, 6                        ; 0x4718
    imul word [bp - 0x0006]          ; 0x471b
    add ax, strict word 0x23         ; 0x471e
    push ax                          ; 0x4721
    mov ax, 0x97                     ; 0x4722
    push ax                          ; 0x4725
    call ds_dispatch_e809            ; 0x4726
    add sp, byte 4                   ; 0x4729
    mov ax, 0                        ; 0x472c
    push ax                          ; 0x472f
    mov ax, 6                        ; 0x4730
    push ax                          ; 0x4733
    call ds_dispatch_e830            ; 0x4734
    add sp, byte 4                   ; 0x4737
    mov word [bp - 0x0002], 0        ; 0x473a
@..api_idx_006c.l2:
    mov ax, word [bp - 0x0002]       ; 0x473f
    cmp ax, word [bp - 0x0006]       ; 0x4742
    jne short @..api_idx_006c.l3     ; 0x4745
    mov ax, 0                        ; 0x4747
    push ax                          ; 0x474a
    mov ax, 0x2d                     ; 0x474b
    push ax                          ; 0x474e
    mov ax, 6                        ; 0x474f
    imul word [bp - 0x0006]          ; 0x4752
    add ax, strict word 0x28         ; 0x4755
    push ax                          ; 0x4758
    mov ax, 0x8a                     ; 0x4759
    push ax                          ; 0x475c
    mov ax, 6                        ; 0x475d
    imul word [bp - 0x0006]          ; 0x4760
    add ax, strict word 0x23         ; 0x4763
    push ax                          ; 0x4766
    mov ax, api_idx_0002_2           ; 0x4767
    push ax                          ; 0x476a
    push word [bp - 0x0002]          ; 0x476b
    call ds_dispatch_baa6            ; 0x476e
    add sp, byte 0x0e                ; 0x4771
    mov ax, 0x3d                     ; 0x4774
    push ax                          ; 0x4777
    mov ax, 0x2b                     ; 0x4778
    push ax                          ; 0x477b
    mov ax, 6                        ; 0x477c
    imul word [bp - 0x0006]          ; 0x477f
    add ax, strict word 0x28         ; 0x4782
    push ax                          ; 0x4785
    mov ax, 0x9c                     ; 0x4786
    push ax                          ; 0x4789
    mov ax, 6                        ; 0x478a
    imul word [bp - 0x0006]          ; 0x478d
    add ax, strict word 0x23         ; 0x4790
    push ax                          ; 0x4793
    mov ax, 0x97                     ; 0x4794
    push ax                          ; 0x4797
    mov ax, 7                        ; 0x4798
    push ax                          ; 0x479b
    call ds_dispatch_baa6            ; 0x479c
    add sp, byte 0x0e                ; 0x479f
    jmp short @..api_idx_006c.l6     ; 0x47a2
@..api_idx_006c.l3:
    mov ax, 0                        ; 0x47a4
    push ax                          ; 0x47a7
    mov ax, word [bp - 0x0006]       ; 0x47a8
    inc ax                           ; 0x47ab
    mov cx, 7                        ; 0x47ac
    cwd                              ; 0x47af
    idiv cx                          ; 0x47b0
    mov ax, dx                       ; 0x47b2
    cmp ax, word [bp - 0x0002]       ; 0x47b4
    jne short @..api_idx_006c.l4     ; 0x47b7
    mov al, 0x20                     ; 0x47b9
    jmp short @..api_idx_006c.l5     ; 0x47bb
@..api_idx_006c.l4:
    mov al, 0                        ; 0x47bd
@..api_idx_006c.l5:
    cbw                              ; 0x47bf
    push ax                          ; 0x47c0
    mov ax, 6                        ; 0x47c1
    imul word [bp - 0x0002]          ; 0x47c4
    add ax, strict word 0x28         ; 0x47c7
    push ax                          ; 0x47ca
    mov ax, 0x9c                     ; 0x47cb
    push ax                          ; 0x47ce
    mov ax, 6                        ; 0x47cf
    imul word [bp - 0x0002]          ; 0x47d2
    add ax, strict word 0x23         ; 0x47d5
    push ax                          ; 0x47d8
    mov ax, 0x73                     ; 0x47d9
    push ax                          ; 0x47dc
    push word [bp - 0x0002]          ; 0x47dd
    call ds_dispatch_baa6            ; 0x47e0
    add sp, byte 0x0e                ; 0x47e3
@..api_idx_006c.l6:
    inc word [bp - 0x0002]           ; 0x47e6
    mov ax, word [bp - 0x0002]       ; 0x47e9
    cmp ax, strict word 7            ; 0x47ec
    jge short @..api_idx_006c.l7     ; 0x47ef
    jmp near @..api_idx_006c.l2      ; 0x47f1
@..api_idx_006c.l7:
    mov ax, 0                        ; 0x47f4
    push ax                          ; 0x47f7
    push ax                          ; 0x47f8
    push ax                          ; 0x47f9
    push ax                          ; 0x47fa
    push ax                          ; 0x47fb
    mov ax, 0xffff                   ; 0x47fc
    push ax                          ; 0x47ff
    mov ax, 9                        ; 0x4800
    push ax                          ; 0x4803
    call ds_dispatch_baa6            ; 0x4804
    add sp, byte 0x0e                ; 0x4807
    mov ax, 0x60                     ; 0x480a
    push ax                          ; 0x480d
    mov ax, 0xa8                     ; 0x480e
    push ax                          ; 0x4811
    mov ax, 0x23                     ; 0x4812
    push ax                          ; 0x4815
    mov ax, 0x66                     ; 0x4816
    push ax                          ; 0x4819
    call ds_dispatch_e8da            ; 0x481a
    add sp, byte 8                   ; 0x481d
@..api_idx_006c.l8:
    mov ax, 0x59fe                   ; 0x4820
    push ax                          ; 0x4823
    call ds_dispatch_b90d            ; 0x4824
    pop cx                           ; 0x4827
    dec ax                           ; 0x4828
    mov word [bp - 0x0004], ax       ; 0x4829
    cmp word [data_5b3e], byte 0     ; 0x482c
    je short @..api_idx_006c.l8      ; 0x4831
    cmp word [bp - 0x0004], byte 7   ; 0x4833
    jge short @..api_idx_006c.l9     ; 0x4837
    mov ax, word [bp - 0x0004]       ; 0x4839
    cmp ax, word [bp - 0x0006]       ; 0x483c
    je short @..api_idx_006c.l9      ; 0x483f
    mov word [bp - 0x0006], ax       ; 0x4841
    jmp near @..api_idx_006c.l14     ; 0x4844
@..api_idx_006c.l9:
    mov ax, word [bp - 0x0004]       ; 0x4847
    cmp ax, word [bp - 0x0006]       ; 0x484a
    jne short @..api_idx_006c.l12    ; 0x484d
    mov ax, word [bp - 0x0006]       ; 0x484f
    shl ax, 1                        ; 0x4852
    mov bx, ax                       ; 0x4854
    add bx, bp                       ; 0x4856
    cmp word [bx - 0x0018], byte 0   ; 0x4858
    jle short @..api_idx_006c.l10    ; 0x485c
    mov ax, 0x248                    ; 0x485e
    imul word [bp + 0x4]             ; 0x4861
    add ax, word [bp - 0x0006]       ; 0x4864
    mov bx, ax                       ; 0x4867
    dec byte [bx + 0x5d64]           ; 0x4869
    mov ax, word [bp - 0x0006]       ; 0x486d
    shl ax, 1                        ; 0x4870
    mov bx, ax                       ; 0x4872
    add bx, bp                       ; 0x4874
    dec word [bx - 0x0018]           ; 0x4876
    inc word [data_9594]             ; 0x4879
    jmp short @..api_idx_006c.l11    ; 0x487d
@..api_idx_006c.l10:
    mov ax, 0                        ; 0x487f
    push ax                          ; 0x4882
    call ds_dispatch_b7e0            ; 0x4883
    pop cx                           ; 0x4886
@..api_idx_006c.l11:
    jmp short @..api_idx_006c.l14    ; 0x4887
@..api_idx_006c.l12:
    cmp word [bp - 0x0004], byte 7   ; 0x4889
    jne short @..api_idx_006c.l14    ; 0x488d
    mov ax, 0x248                    ; 0x488f
    imul word [bp + 0x4]             ; 0x4892
    add ax, word [bp - 0x0006]       ; 0x4895
    mov bx, ax                       ; 0x4898
    cmp byte [bx + 0x5d64], 0x12     ; 0x489a
    jae short @..api_idx_006c.l13    ; 0x489f
    cmp word [data_9594], byte 0     ; 0x48a1
    jle short @..api_idx_006c.l13    ; 0x48a6
    inc byte [bx + 0x5d64]           ; 0x48a8
    mov ax, word [bp - 0x0006]       ; 0x48ac
    shl ax, 1                        ; 0x48af
    mov bx, ax                       ; 0x48b1
    add bx, bp                       ; 0x48b3
    inc word [bx - 0x0018]           ; 0x48b5
    dec word [data_9594]             ; 0x48b8
    jmp short @..api_idx_006c.l14    ; 0x48bc
@..api_idx_006c.l13:
    mov ax, 0                        ; 0x48be
    push ax                          ; 0x48c1
    call ds_dispatch_b7e0            ; 0x48c2
    pop cx                           ; 0x48c5
@..api_idx_006c.l14:
    cmp word [bp - 0x0004], byte 8   ; 0x48c6
    je short @..api_idx_006c.l15     ; 0x48ca
    jmp near @..api_idx_006c.l1      ; 0x48cc
@..api_idx_006c.l15:
    cmp word [data_9594], byte 0     ; 0x48cf
    je short @..api_idx_006c.l16     ; 0x48d4
    jmp near @..api_idx_006c.l1      ; 0x48d6
@..api_idx_006c.l16:
    mov word [data_9594], 0xffff     ; 0x48d9
    mov ax, 1                        ; 0x48df
    push ax                          ; 0x48e2
    push ax                          ; 0x48e3
    mov ax, 0x18                     ; 0x48e4
    push ax                          ; 0x48e7
    mov ax, 0x97                     ; 0x48e8
    push ax                          ; 0x48eb
    mov ax, 0x58                     ; 0x48ec
    push ax                          ; 0x48ef
    call ds_dispatch_be5f            ; 0x48f0
    add sp, byte 0x0a                ; 0x48f3
    mov ax, 0                        ; 0x48f6
    push ax                          ; 0x48f9
    mov ax, 1                        ; 0x48fa
    push ax                          ; 0x48fd
    mov ax, 0x18                     ; 0x48fe
    push ax                          ; 0x4901
    mov ax, 0x97                     ; 0x4902
    push ax                          ; 0x4905
    mov ax, 0x58                     ; 0x4906
    push ax                          ; 0x4909
    call ds_dispatch_be5f            ; 0x490a
    add sp, byte 0x0a                ; 0x490d
    mov ax, 1                        ; 0x4910
    push ax                          ; 0x4913
    push word [bp - 0x006a]          ; 0x4914
    push word [bp - 0x006c]          ; 0x4917
    call ds_dispatch_e94f            ; 0x491a
    add sp, byte 6                   ; 0x491d
    mov ax, 0xc7                     ; 0x4920
    push ax                          ; 0x4923
    mov ax, 0x13f                    ; 0x4924
    push ax                          ; 0x4927
    mov ax, 0                        ; 0x4928
    push ax                          ; 0x492b
    push ax                          ; 0x492c
    call ds_dispatch_e8da            ; 0x492d
    add sp, byte 8                   ; 0x4930
    ret                              ; 0x4933
api_idx_0008_3:
    mov ax, 0xfff8                   ; 0x4934
    call ds_dispatch_f40b            ; 0x4937
    mov ax, 0                        ; 0x493a
    push ax                          ; 0x493d
    push ax                          ; 0x493e
    push word [data_953e]            ; 0x493f
    push word [data_953c]            ; 0x4943
    call ds_dispatch_e942            ; 0x4947
    add sp, byte 8                   ; 0x494a
    mov ax, 0x53                     ; 0x494d
    push ax                          ; 0x4950
    mov ax, 0x97                     ; 0x4951
    push ax                          ; 0x4954
    mov ax, 0x4d                     ; 0x4955
    push ax                          ; 0x4958
    mov ax, 0x8b                     ; 0x4959
    push ax                          ; 0x495c
    call ds_dispatch_e928            ; 0x495d
    add sp, byte 8                   ; 0x4960
    mov word [bp - 0x0002], dx       ; 0x4963
    mov word [bp - 0x0004], ax       ; 0x4966
    mov ax, 0                        ; 0x4969
    push ax                          ; 0x496c
    push word [bp + 0x4]             ; 0x496d
    call api_idx_0002_5              ; 0x4970
    add sp, byte 4                   ; 0x4973
    mov ax, 0                        ; 0x4976
    push ax                          ; 0x4979
    mov ax, 1                        ; 0x497a
    push ax                          ; 0x497d
    mov ax, 0x10                     ; 0x497e
    push ax                          ; 0x4981
    mov ax, 0x97                     ; 0x4982
    push ax                          ; 0x4985
    mov ax, 0x70                     ; 0x4986
    push ax                          ; 0x4989
    mov ax, 0x44c                    ; 0x498a
    push ax                          ; 0x498d
    call api_idx_0058                ; 0x498e
    add sp, byte 0x0c                ; 0x4991
    mov word [bp - 0x0006], dx       ; 0x4994
    mov word [bp - 0x0008], ax       ; 0x4997
    call ds_dispatch_ec17            ; 0x499a
@..api_idx_0008_3.l1:
    mov ax, 0x13                     ; 0x499d
    push ax                          ; 0x49a0
    call ds_dispatch_b7a9            ; 0x49a1
    pop cx                           ; 0x49a4
    push ax                          ; 0x49a5
    mov ax, 0x248                    ; 0x49a6
    imul word [bp + 0x4]             ; 0x49a9
    mov bx, ax                       ; 0x49ac
    pop ax                           ; 0x49ae
    mov byte [bx + 0x5d6b], al       ; 0x49af
    cmp byte [bx + 0x5e2c], 1        ; 0x49b3
    jne short @..api_idx_0008_3.l2   ; 0x49b8
    inc byte [bx + 0x5d6b]           ; 0x49ba
@..api_idx_0008_3.l2:
    mov ax, 0                        ; 0x49be
    push ax                          ; 0x49c1
    push word [bp - 0x0002]          ; 0x49c2
    push word [bp - 0x0004]          ; 0x49c5
    call ds_dispatch_e94f            ; 0x49c8
    add sp, byte 6                   ; 0x49cb
    mov ax, 0x4d                     ; 0x49ce
    push ax                          ; 0x49d1
    mov ax, 0x8b                     ; 0x49d2
    push ax                          ; 0x49d5
    call ds_dispatch_e809            ; 0x49d6
    add sp, byte 4                   ; 0x49d9
    mov ax, 0                        ; 0x49dc
    push ax                          ; 0x49df
    mov ax, 1                        ; 0x49e0
    push ax                          ; 0x49e3
    call ds_dispatch_e823            ; 0x49e4
    add sp, byte 4                   ; 0x49e7
    mov ax, 0                        ; 0x49ea
    push ax                          ; 0x49ed
    mov ax, data_0002                ; 0x49ee
    push ax                          ; 0x49f1
    mov ax, 0x248                    ; 0x49f2
    imul word [bp + 0x4]             ; 0x49f5
    mov bx, ax                       ; 0x49f8
    mov al, byte [bx + 0x5d6b]       ; 0x49fa
    sub ah, ah                       ; 0x49fe
    push ax                          ; 0x4a00
    call ds_dispatch_b2e7            ; 0x4a01
    add sp, byte 6                   ; 0x4a04
    mov ax, 0x53                     ; 0x4a07
    push ax                          ; 0x4a0a
    mov ax, 0x97                     ; 0x4a0b
    push ax                          ; 0x4a0e
    mov ax, 0x4d                     ; 0x4a0f
    push ax                          ; 0x4a12
    mov ax, 0x8b                     ; 0x4a13
    push ax                          ; 0x4a16
    call ds_dispatch_e8da            ; 0x4a17
    add sp, byte 8                   ; 0x4a1a
    mov ax, 0x59fe                   ; 0x4a1d
    push ax                          ; 0x4a20
    call ds_dispatch_b90d            ; 0x4a21
    pop cx                           ; 0x4a24
    cmp word [data_5b3e], byte 0     ; 0x4a25
    jne short @..api_idx_0008_3.l3   ; 0x4a2a
    jmp near @..api_idx_0008_3.l1    ; 0x4a2c
@..api_idx_0008_3.l3:
    mov ax, 1                        ; 0x4a2f
    push ax                          ; 0x4a32
    push ax                          ; 0x4a33
    mov ax, 0x10                     ; 0x4a34
    push ax                          ; 0x4a37
    mov ax, 0x97                     ; 0x4a38
    push ax                          ; 0x4a3b
    mov ax, 0x70                     ; 0x4a3c
    push ax                          ; 0x4a3f
    call ds_dispatch_be5f            ; 0x4a40
    add sp, byte 0x0a                ; 0x4a43
    mov ax, 0                        ; 0x4a46
    push ax                          ; 0x4a49
    mov ax, 1                        ; 0x4a4a
    push ax                          ; 0x4a4d
    mov ax, 0x10                     ; 0x4a4e
    push ax                          ; 0x4a51
    mov ax, 0x97                     ; 0x4a52
    push ax                          ; 0x4a55
    mov ax, 0x70                     ; 0x4a56
    push ax                          ; 0x4a59
    call ds_dispatch_be5f            ; 0x4a5a
    add sp, byte 0x0a                ; 0x4a5d
    mov ax, 1                        ; 0x4a60
    push ax                          ; 0x4a63
    push word [bp - 0x0006]          ; 0x4a64
    push word [bp - 0x0008]          ; 0x4a67
    call ds_dispatch_e94f            ; 0x4a6a
    add sp, byte 6                   ; 0x4a6d
    mov ax, 1                        ; 0x4a70
    push ax                          ; 0x4a73
    push word [bp - 0x0002]          ; 0x4a74
    push word [bp - 0x0004]          ; 0x4a77
    call ds_dispatch_e94f            ; 0x4a7a
    add sp, byte 6                   ; 0x4a7d
    mov ax, 0                        ; 0x4a80
    push ax                          ; 0x4a83
    push word [bp + 0x4]             ; 0x4a84
    call api_idx_0002_5              ; 0x4a87
    add sp, byte 4                   ; 0x4a8a
    mov ax, 0xc7                     ; 0x4a8d
    push ax                          ; 0x4a90
    mov ax, 0x13f                    ; 0x4a91
    push ax                          ; 0x4a94
    mov ax, 0                        ; 0x4a95
    push ax                          ; 0x4a98
    push ax                          ; 0x4a99
    call ds_dispatch_e8da            ; 0x4a9a
    add sp, byte 8                   ; 0x4a9d
    ret                              ; 0x4aa0
math_loc_4aa1:
    mov ax, 0                        ; 0x4aa1
    call ds_dispatch_f40b            ; 0x4aa4
    mov ax, 0x248                    ; 0x4aa7
    imul word [bp + 0x4]             ; 0x4aaa
    mov bx, ax                       ; 0x4aad
    mov al, byte [bx + 0x5d6b]       ; 0x4aaf
    sub ah, ah                       ; 0x4ab3
    sub ax, word [bp + 0x8]          ; 0x4ab5
    jge short @..math_loc_4aa1.l1    ; 0x4ab8
    neg ax                           ; 0x4aba
    mov cx, ax                       ; 0x4abc
    jmp short @..math_loc_4aa1.l2    ; 0x4abe
@..math_loc_4aa1.l1:
    mov al, byte [bx + 0x5d6b]       ; 0x4ac0
    sub ah, ah                       ; 0x4ac4
    mov cx, ax                       ; 0x4ac6
    sub ax, word [bp + 0x8]          ; 0x4ac8
    mov cx, ax                       ; 0x4acb
@..math_loc_4aa1.l2:
    shl cx, 1                        ; 0x4acd
    shl cx, 1                        ; 0x4acf
    mov ax, 0x28                     ; 0x4ad1
    sub ax, cx                       ; 0x4ad4
    add bx, word [bp + 0x6]          ; 0x4ad6
    mov byte [bx + 0x5db2], al       ; 0x4ad9
    ret                              ; 0x4add
api_idx_0002_9:
    mov ax, 0xfffe                   ; 0x4ade
    call ds_dispatch_f40b            ; 0x4ae1
    mov word [bp - 0x0002], 0        ; 0x4ae4
@..api_idx_0002_9.l1:
    mov ax, 9                        ; 0x4ae9
    push ax                          ; 0x4aec
    push word [bp - 0x0002]          ; 0x4aed
    push word [bp + 0x4]             ; 0x4af0
    call math_loc_4aa1               ; 0x4af3
    add sp, byte 6                   ; 0x4af6
    inc word [bp - 0x0002]           ; 0x4af9
    mov ax, word [bp - 0x0002]       ; 0x4afc
    cmp ax, strict word 0x60         ; 0x4aff
    jl short @..api_idx_0002_9.l1    ; 0x4b02
    ret                              ; 0x4b04
api_idx_004e:
    mov ax, 0xffb2                   ; 0x4b05
    call ds_dispatch_f40b            ; 0x4b08
    mov ax, 0                        ; 0x4b0b
    push ax                          ; 0x4b0e
    push word [bp + 0x6]             ; 0x4b0f
    lea ax, word [bp - 0x004c]       ; 0x4b12
    push ax                          ; 0x4b15
    mov ax, 1                        ; 0x4b16
    push ax                          ; 0x4b19
    call ds_dispatch_b63c            ; 0x4b1a
    add sp, byte 8                   ; 0x4b1d
    mov word [bp - 0x0002], 0        ; 0x4b20
@..api_idx_004e.l1:
    mov ax, 0x248                    ; 0x4b25
    imul word [bp + 0x4]             ; 0x4b28
    push ax                          ; 0x4b2b
    mov ax, 0xc                      ; 0x4b2c
    imul word [bp - 0x0002]          ; 0x4b2f
    mov cx, ax                       ; 0x4b32
    pop ax                           ; 0x4b34
    add ax, cx                       ; 0x4b35
    mov bx, ax                       ; 0x4b37
    cmp word [bx + 0x5c34], byte 0   ; 0x4b39
    jle short @..api_idx_004e.l2     ; 0x4b3e
    inc word [bp - 0x0002]           ; 0x4b40
    jmp short @..api_idx_004e.l1     ; 0x4b43
@..api_idx_004e.l2:
    mov ax, 0x248                    ; 0x4b45
    imul word [bp + 0x4]             ; 0x4b48
    push ax                          ; 0x4b4b
    mov ax, 0xc                      ; 0x4b4c
    imul word [bp - 0x0002]          ; 0x4b4f
    mov cx, ax                       ; 0x4b52
    pop ax                           ; 0x4b54
    add ax, cx                       ; 0x4b55
    add ax, 0x5c34                   ; 0x4b57
    mov word [bp - 0x004e], ax       ; 0x4b5a
    mov al, byte [bp - 0x0030]       ; 0x4b5d
    sub ah, ah                       ; 0x4b60
    push ax                          ; 0x4b62
    mov al, byte [bp - 0x002f]       ; 0x4b63
    sub ah, ah                       ; 0x4b66
    mov cx, ax                       ; 0x4b68
    pop ax                           ; 0x4b6a
    imul cx                          ; 0x4b6b
    add ax, word [bp - 0x0032]       ; 0x4b6d
    mov bx, word [bp - 0x004e]       ; 0x4b70
    mov byte [bx + 0x6], al          ; 0x4b73
    mov ax, word [bp + 0x6]          ; 0x4b76
    mov bx, word [bp - 0x004e]       ; 0x4b79
    mov word [bx], ax                ; 0x4b7c
    mov al, byte [bp - 0x0014]       ; 0x4b7e
    mov bx, word [bp - 0x004e]       ; 0x4b81
    mov byte [bx + 0x4], al          ; 0x4b84
    mov al, byte [bp - 0x0013]       ; 0x4b87
    mov bx, word [bp - 0x004e]       ; 0x4b8a
    mov byte [bx + 0x5], al          ; 0x4b8d
    mov ax, word [bp - 0x0028]       ; 0x4b90
    mov bx, word [bp - 0x004e]       ; 0x4b93
    mov word [bx + 0x2], ax          ; 0x4b96
    mov al, byte [bp - 0x0024]       ; 0x4b99
    mov bx, word [bp - 0x004e]       ; 0x4b9c
    mov byte [bx + 0x8], al          ; 0x4b9f
    mov al, byte [bp - 0x0023]       ; 0x4ba2
    mov bx, word [bp - 0x004e]       ; 0x4ba5
    mov byte [bx + 0x9], al          ; 0x4ba8
    mov al, byte [bp - 0x0010]       ; 0x4bab
    mov bx, word [bp - 0x004e]       ; 0x4bae
    mov byte [bx + 0xa], al          ; 0x4bb1
    mov al, byte [bp - 0x000c]       ; 0x4bb4
    mov bx, word [bp - 0x004e]       ; 0x4bb7
    mov byte [bx + 0xb], al          ; 0x4bba
    mov bx, word [bp - 0x004e]       ; 0x4bbd
    mov byte [bx + 0x7], 0x80        ; 0x4bc0
    mov al, byte [bp - 0x0015]       ; 0x4bc4
    sub ah, ah                       ; 0x4bc7
    test ax, 8                       ; 0x4bc9
    je short @..api_idx_004e.l3      ; 0x4bcc
    mov bx, word [bp - 0x004e]       ; 0x4bce
    or byte [bx + 0x7], 4            ; 0x4bd1
@..api_idx_004e.l3:
    mov al, byte [bp - 0x0015]       ; 0x4bd5
    sub ah, ah                       ; 0x4bd8
    test ax, 4                       ; 0x4bda
    je short @..api_idx_004e.l4      ; 0x4bdd
    mov bx, word [bp - 0x004e]       ; 0x4bdf
    or byte [bx + 0x7], 8            ; 0x4be2
@..api_idx_004e.l4:
    mov al, byte [bp - 0x0015]       ; 0x4be6
    sub ah, ah                       ; 0x4be9
    test ax, 0x10                    ; 0x4beb
    je short @..api_idx_004e.l5      ; 0x4bee
    mov bx, word [bp - 0x004e]       ; 0x4bf0
    or byte [bx + 0x7], 0x10         ; 0x4bf3
@..api_idx_004e.l5:
    mov al, byte [bp - 0x0015]       ; 0x4bf7
    sub ah, ah                       ; 0x4bfa
    test ax, 0x20                    ; 0x4bfc
    je short @..api_idx_004e.l6      ; 0x4bff
    mov bx, word [bp - 0x004e]       ; 0x4c01
    or byte [bx + 0x7], 0x20         ; 0x4c04
@..api_idx_004e.l6:
    mov al, byte [bp - 0x0015]       ; 0x4c08
    sub ah, ah                       ; 0x4c0b
    test ax, data_0002               ; 0x4c0d
    je short @..api_idx_004e.l7      ; 0x4c10
    mov bx, word [bp - 0x004e]       ; 0x4c12
    or byte [bx + 0x7], data_0040    ; 0x4c15
@..api_idx_004e.l7:
    push word [bp + 0x4]             ; 0x4c19
    call ds_dispatch_c58f            ; 0x4c1c
    pop cx                           ; 0x4c1f
    ret                              ; 0x4c20
math_loc_4c21:
    mov ax, 0                        ; 0x4c21
    call ds_dispatch_f40b            ; 0x4c24
    cmp word [bp + 0x6], byte 0      ; 0x4c27
    je short @..math_loc_4c21.l1     ; 0x4c2b
    push word [bp + 0x6]             ; 0x4c2d
    push word [bp + 0x4]             ; 0x4c30
    call api_idx_004e                ; 0x4c33
    add sp, byte 4                   ; 0x4c36
@..math_loc_4c21.l1:
    cmp word [bp + 0x8], byte 0      ; 0x4c39
    je short @..math_loc_4c21.l2     ; 0x4c3d
    push word [bp + 0x8]             ; 0x4c3f
    push word [bp + 0x4]             ; 0x4c42
    call api_idx_004e                ; 0x4c45
    add sp, byte 4                   ; 0x4c48
@..math_loc_4c21.l2:
    cmp word [bp + 0xa], byte 0      ; 0x4c4b
    je short @..math_loc_4c21.l3     ; 0x4c4f
    push word [bp + 0xa]             ; 0x4c51
    push word [bp + 0x4]             ; 0x4c54
    call api_idx_004e                ; 0x4c57
    add sp, byte 4                   ; 0x4c5a
@..math_loc_4c21.l3:
    cmp word [bp + 0xc], byte 0      ; 0x4c5d
    je short @..math_loc_4c21.l4     ; 0x4c61
    push word [bp + 0xc]             ; 0x4c63
    push word [bp + 0x4]             ; 0x4c66
    call api_idx_004e                ; 0x4c69
    add sp, byte 4                   ; 0x4c6c
@..math_loc_4c21.l4:
    cmp word [bp + 0xe], byte 0      ; 0x4c6f
    je short @..math_loc_4c21.l5     ; 0x4c73
    push word [bp + 0xe]             ; 0x4c75
    push word [bp + 0x4]             ; 0x4c78
    call api_idx_004e                ; 0x4c7b
    add sp, byte 4                   ; 0x4c7e
@..math_loc_4c21.l5:
    ret                              ; 0x4c81
math_loc_4c82:
    mov ax, 0                        ; 0x4c82
    call ds_dispatch_f40b            ; 0x4c85
    mov ax, 0x248                    ; 0x4c88
    imul word [bp + 0x4]             ; 0x4c8b
    mov bx, ax                       ; 0x4c8e
    cmp byte [bx + 0x5e2b], 5        ; 0x4c90
    jne short @..math_loc_4c82.l1    ; 0x4c95
    mov ax, 0x180                    ; 0x4c97
    push ax                          ; 0x4c9a
    mov ax, 0x13c                    ; 0x4c9b
    push ax                          ; 0x4c9e
    mov ax, 0x18f                    ; 0x4c9f
    push ax                          ; 0x4ca2
    mov ax, 0x18e                    ; 0x4ca3
    push ax                          ; 0x4ca6
    mov ax, 0x18d                    ; 0x4ca7
    push ax                          ; 0x4caa
    push word [bp + 0x4]             ; 0x4cab
    call math_loc_4c21               ; 0x4cae
    add sp, byte 0x0c                ; 0x4cb1
    ret                              ; 0x4cb4
@..math_loc_4c82.l1:
    mov ax, 0x248                    ; 0x4cb5
    imul word [bp + 0x4]             ; 0x4cb8
    mov bx, ax                       ; 0x4cbb
    mov al, byte [bx + 0x5e2d]       ; 0x4cbd
    sub ah, ah                       ; 0x4cc1
    jmp near @..math_loc_4c82.l2     ; 0x4cc3

    db 0xb8, 0x8d, 0x00, 0x50, 0xb8, 0x82, 0x00, 0x50, 0xb8, 0x84, 0x00, 0x50, 0xb8, 0x87, 0x00, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x41, 0xff, 0x83, 0xc4, 0x0c, 0xe9, 0xc6, 0x01
    db 0xb8, 0x4f, 0x01, 0x50, 0xb8, 0x82, 0x00, 0x50, 0xb8, 0x7b, 0x00, 0x50, 0xb8, 0x7a, 0x00, 0x50
    db 0xb8, 0x12, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x21, 0xff, 0x83, 0xc4, 0x0c, 0xe9, 0xa6, 0x01
    db 0xb8, 0x3c, 0x01, 0x50, 0xb8, 0x82, 0x00, 0x50, 0xb8, 0x7b, 0x00, 0x50, 0xb8, 0x7a, 0x00, 0x50
    db 0xb8, 0x18, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x01, 0xff, 0x83, 0xc4, 0x0c, 0xe9, 0x86, 0x01
    db 0xb8, 0x1b, 0x00, 0x50, 0xb8, 0x83, 0x00, 0x50, 0xb8, 0x79, 0x00, 0x50, 0xb8, 0x78, 0x00, 0x50
    db 0xb8, 0x06, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0xe1, 0xfe, 0x83, 0xc4, 0x0c, 0xe9, 0x66, 0x01
    db 0xb8, 0x83, 0x00, 0x50, 0xb8, 0x7f, 0x00, 0x50, 0xb8, 0x7e, 0x00, 0x50, 0xb8, 0x21, 0x00, 0x50
    db 0xb8, 0x1f, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0xc1, 0xfe, 0x83, 0xc4, 0x0c, 0xe9, 0x46, 0x01
    db 0xb8, 0x47, 0x01, 0x50, 0xb8, 0x82, 0x00, 0x50, 0xb8, 0x7b, 0x00, 0x50, 0xb8, 0x7a, 0x00, 0x50
    db 0xb8, 0x12, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0xa1, 0xfe, 0x83, 0xc4, 0x0c, 0xe9, 0x26, 0x01
    db 0xb8, 0x37, 0x00, 0x50, 0xb8, 0x79, 0x00, 0x50, 0xb8, 0x78, 0x00, 0x50, 0xb8, 0x1e, 0x00, 0x50
    db 0xb8, 0x1d, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x81, 0xfe, 0x83, 0xc4, 0x0c, 0xe9, 0x06, 0x01
    db 0xb8, 0xf1, 0x00, 0x50, 0xb8, 0x82, 0x00, 0x50, 0xb8, 0x7b, 0x00, 0x50, 0xb8, 0x7a, 0x00, 0x50
    db 0xb8, 0x01, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x61, 0xfe, 0x83, 0xc4, 0x0c, 0xe9, 0xe6, 0x00
    db 0xb8, 0x8a, 0x00, 0x50, 0xb8, 0x82, 0x00, 0x50, 0xb8, 0x7d, 0x00, 0x50, 0xb8, 0x7c, 0x00, 0x50
    db 0xb8, 0x16, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x41, 0xfe, 0x83, 0xc4, 0x0c, 0xe9, 0xc6, 0x00
    db 0xb8, 0xa3, 0x00, 0x50, 0xb8, 0x82, 0x00, 0x50, 0xb8, 0x7b, 0x00, 0x50, 0xb8, 0x7a, 0x00, 0x50
    db 0xb8, 0x18, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x21, 0xfe, 0x83, 0xc4, 0x0c, 0xe9, 0xa6, 0x00
    db 0xb8, 0x8f, 0x00, 0x50, 0xb8, 0x83, 0x00, 0x50, 0xb8, 0x86, 0x00, 0x50, 0xb8, 0x85, 0x00, 0x50
    db 0xb8, 0x09, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x01, 0xfe, 0x83, 0xc4, 0x0c, 0xe9, 0x86, 0x00
    db 0xb8, 0x82, 0x00, 0x50, 0xb8, 0x7b, 0x00, 0x50, 0xb8, 0x7a, 0x00, 0x50, 0xb8, 0x04, 0x00, 0x50
    db 0xb8, 0x0a, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0xe1, 0xfd, 0x83, 0xc4, 0x0c, 0xeb, 0x67, 0xb8
    db 0x82, 0x00, 0x50, 0xb8, 0x7b, 0x00, 0x50, 0xb8, 0x7a, 0x00, 0x50, 0xb8, 0x2f, 0x00, 0x50, 0xb8
    db 0x19, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0xc2, 0xfd, 0x83, 0xc4, 0x0c, 0xeb, 0x48, 0xb8, 0xa1
    db 0x00, 0x50, 0xb8, 0x9f, 0x00, 0x50, 0xb8, 0x9e, 0x00, 0x50, 0xb8, 0xa0, 0x00, 0x50, 0xb8, 0x2f
    db 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0xa3, 0xfd, 0x83, 0xc4, 0x0c, 0xeb, 0x29, 0x0d, 0x9d, 0x2d
    db 0x9d, 0x4d, 0x9d, 0x6d, 0x9d, 0x8d, 0x9d, 0xad, 0x9d, 0xcd, 0x9d, 0xed, 0x9d, 0x0d, 0x9e, 0x2d
    db 0x9e, 0x4d, 0x9e, 0x6d, 0x9e, 0x8c, 0x9e, 0xab, 0x9e

@..math_loc_4c82.l2:
    cmp ax, strict word 0xe          ; 0x4e9f
    jae short @..math_loc_4c82.l3    ; 0x4ea2
    xchg bx, ax                      ; 0x4ea4
    shl bx, 1                        ; 0x4ea5
    jmp [cs:bx - 0x6136]             ; 0x4ea7
@..math_loc_4c82.l3:
    ret                              ; 0x4eac
math_loc_4ead:
    mov ax, 0                        ; 0x4ead
    call ds_dispatch_f40b            ; 0x4eb0
    mov ax, 0x7d                     ; 0x4eb3
    push ax                          ; 0x4eb6
    mov ax, 0                        ; 0x4eb7
    push ax                          ; 0x4eba
    mov ax, 0x248                    ; 0x4ebb
    imul word [bp + 0x4]             ; 0x4ebe
    push ax                          ; 0x4ec1
    mov ax, 0xe                      ; 0x4ec2
    imul word [bp + 0x6]             ; 0x4ec5
    mov cx, ax                       ; 0x4ec8
    pop ax                           ; 0x4eca
    add ax, cx                       ; 0x4ecb
    add ax, word [bp + 0x8]          ; 0x4ecd
    mov bx, ax                       ; 0x4ed0
    mov al, byte [bx + 0x5d8e]       ; 0x4ed2
    sub ah, ah                       ; 0x4ed6
    add ax, word [bp + 0xa]          ; 0x4ed8
    push ax                          ; 0x4edb
    call ds_dispatch_b7c2            ; 0x4edc
    add sp, byte 6                   ; 0x4edf
    push ax                          ; 0x4ee2
    mov ax, 0x248                    ; 0x4ee3
    imul word [bp + 0x4]             ; 0x4ee6
    mov cx, ax                       ; 0x4ee9
    mov ax, 0xe                      ; 0x4eeb
    imul word [bp + 0x6]             ; 0x4eee
    mov dx, ax                       ; 0x4ef1
    add cx, ax                       ; 0x4ef3
    add cx, word [bp + 0x8]          ; 0x4ef5
    mov bx, cx                       ; 0x4ef8
    pop ax                           ; 0x4efa
    mov byte [bx + 0x5d8e], al       ; 0x4efb
    ret                              ; 0x4eff
api_idx_0006_2:
    mov ax, 0xfffa                   ; 0x4f00
    call ds_dispatch_f40b            ; 0x4f03
    mov word [bp - 0x0002], 0        ; 0x4f06
@..api_idx_0006_2.l1:
    mov ax, 0x248                    ; 0x4f0b
    imul word [bp + 0x4]             ; 0x4f0e
    add ax, word [bp - 0x0002]       ; 0x4f11
    mov bx, ax                       ; 0x4f14
    mov byte [bx + 0x5d8e], 0        ; 0x4f16
    mov ax, 0x248                    ; 0x4f1b
    imul word [bp + 0x4]             ; 0x4f1e
    mov bx, ax                       ; 0x4f21
    mov ax, word [bx + 0x5c18]       ; 0x4f23
    push ax                          ; 0x4f27
    mov al, byte [bx + 0x5e3b]       ; 0x4f28
    sub ah, ah                       ; 0x4f2c
    mov cx, ax                       ; 0x4f2e
    pop ax                           ; 0x4f30
    cmp ax, cx                       ; 0x4f31
    jge short @..api_idx_0006_2.l2   ; 0x4f33
    mov ax, cx                       ; 0x4f35
    jmp short @..api_idx_0006_2.l3   ; 0x4f37
@..api_idx_0006_2.l2:
    mov ax, word [bx + 0x5c18]       ; 0x4f39
@..api_idx_0006_2.l3:
    mov word [bp - 0x0006], ax       ; 0x4f3d
    mov ax, 0x10                     ; 0x4f40
    cmp word [bp - 0x0006], byte 0x10 ; 0x4f43
    jg short @..api_idx_0006_2.l4    ; 0x4f47
    mov ax, word [bp - 0x0006]       ; 0x4f49
    dec ax                           ; 0x4f4c
@..api_idx_0006_2.l4:
    mov word [bp - 0x0006], ax       ; 0x4f4d
    mov bx, word [bp + 0x8]          ; 0x4f50
    mov si, word [bp - 0x0002]       ; 0x4f53
    mov al, byte [bx + si]           ; 0x4f56
    cbw                              ; 0x4f58
    add ax, strict word 0xffd0       ; 0x4f59
    imul word [bp - 0x0006]          ; 0x4f5c
    push ax                          ; 0x4f5f
    mov bx, word [bp + 0x6]          ; 0x4f60
    mov al, byte [bx + si]           ; 0x4f63
    cbw                              ; 0x4f65
    mov cx, ax                       ; 0x4f66
    shl ax, 1                        ; 0x4f68
    shl ax, 1                        ; 0x4f6a
    mov cx, ax                       ; 0x4f6c
    pop ax                           ; 0x4f6e
    add ax, cx                       ; 0x4f6f
    add ax, 0xfefc                   ; 0x4f71
    mov word [bp - 0x0004], ax       ; 0x4f74
    push ax                          ; 0x4f77
    push si                          ; 0x4f78
    mov ax, 0                        ; 0x4f79
    push ax                          ; 0x4f7c
    push word [bp + 0x4]             ; 0x4f7d
    call math_loc_4ead               ; 0x4f80
    add sp, byte 8                   ; 0x4f83
    inc word [bp - 0x0002]           ; 0x4f86
    mov ax, word [bp - 0x0002]       ; 0x4f89
    cmp ax, strict word 0xe          ; 0x4f8c
    jge short @..api_idx_0006_2.l5   ; 0x4f8f
    jmp near @..api_idx_0006_2.l1    ; 0x4f91
@..api_idx_0006_2.l5:
    ret                              ; 0x4f94
api_idx_0002_10:
    mov ax, 0xfffe                   ; 0x4f95
    call ds_dispatch_f40b            ; 0x4f98
    mov ax, 0x248                    ; 0x4f9b
    imul word [bp + 0x4]             ; 0x4f9e
    mov bx, ax                       ; 0x4fa1
    mov ax, word [bx + 0x5c18]       ; 0x4fa3
    push ax                          ; 0x4fa7
    mov al, byte [bx + 0x5e3b]       ; 0x4fa8
    sub ah, ah                       ; 0x4fac
    mov cx, ax                       ; 0x4fae
    pop ax                           ; 0x4fb0
    cmp ax, cx                       ; 0x4fb1
    jge short @..api_idx_0002_10.l1  ; 0x4fb3
    mov ax, cx                       ; 0x4fb5
    jmp short @..api_idx_0002_10.l2  ; 0x4fb7
@..api_idx_0002_10.l1:
    mov ax, word [bx + 0x5c18]       ; 0x4fb9
@..api_idx_0002_10.l2:
    mov word [bp - 0x0002], ax       ; 0x4fbd
    push ax                          ; 0x4fc0
    cmp ax, strict word 0x14         ; 0x4fc1
    pop ax                           ; 0x4fc4
    jle short @..api_idx_0002_10.l3  ; 0x4fc5
    mov ax, 0x14                     ; 0x4fc7
@..api_idx_0002_10.l3:
    mov word [bp - 0x0002], ax       ; 0x4fca
    mov cx, 3                        ; 0x4fcd
    cwd                              ; 0x4fd0
    idiv cx                          ; 0x4fd1
    inc ax                           ; 0x4fd3
    push ax                          ; 0x4fd4
    mov ax, 1                        ; 0x4fd5
    push ax                          ; 0x4fd8
    push word [bp + 0x6]             ; 0x4fd9
    call ds_dispatch_b7c2            ; 0x4fdc
    add sp, byte 6                   ; 0x4fdf
    mov word [bp + 0x6], ax          ; 0x4fe2
    mov ax, 0x248                    ; 0x4fe5
    imul word [bp + 0x4]             ; 0x4fe8
    mov bx, ax                       ; 0x4feb
    mov al, byte [bx + 0x5d68]       ; 0x4fed
    sub ah, ah                       ; 0x4ff1
    mov cx, 6                        ; 0x4ff3
    cwd                              ; 0x4ff6
    idiv cx                          ; 0x4ff7
    push ax                          ; 0x4ff9
    mov ax, word [bp - 0x0002]       ; 0x4ffa
    add ax, word [bp + 0x8]          ; 0x4ffd
    sub ax, word [bp + 0xa]          ; 0x5000
    cwd                              ; 0x5003
    idiv word [bp + 0x8]             ; 0x5004
    mov cx, ax                       ; 0x5007
    pop ax                           ; 0x5009
    add ax, cx                       ; 0x500a
    dec ax                           ; 0x500c
    mov byte [bx + 0x5e37], al       ; 0x500d
    push word [bp + 0x6]             ; 0x5011
    mov ax, 1                        ; 0x5014
    push ax                          ; 0x5017
    mov al, byte [bx + 0x5e37]       ; 0x5018
    sub ah, ah                       ; 0x501c
    push ax                          ; 0x501e
    call ds_dispatch_b7c2            ; 0x501f
    add sp, byte 6                   ; 0x5022
    push ax                          ; 0x5025
    mov ax, 0x248                    ; 0x5026
    imul word [bp + 0x4]             ; 0x5029
    mov bx, ax                       ; 0x502c
    pop ax                           ; 0x502e
    mov byte [bx + 0x5e37], al       ; 0x502f
    mov al, byte [bx + 0x5d69]       ; 0x5033
    sub ah, ah                       ; 0x5037
    mov cx, 6                        ; 0x5039
    cwd                              ; 0x503c
    idiv cx                          ; 0x503d
    push ax                          ; 0x503f
    mov ax, word [bp - 0x0002]       ; 0x5040
    add ax, word [bp + 0xc]          ; 0x5043
    sub ax, word [bp + 0xe]          ; 0x5046
    cwd                              ; 0x5049
    idiv word [bp + 0xc]             ; 0x504a
    mov cx, ax                       ; 0x504d
    pop ax                           ; 0x504f
    add ax, cx                       ; 0x5050
    dec ax                           ; 0x5052
    mov byte [bx + 0x5e38], al       ; 0x5053
    push word [bp + 0x6]             ; 0x5057
    mov ax, 1                        ; 0x505a
    push ax                          ; 0x505d
    mov al, byte [bx + 0x5e38]       ; 0x505e
    sub ah, ah                       ; 0x5062
    push ax                          ; 0x5064
    call ds_dispatch_b7c2            ; 0x5065
    add sp, byte 6                   ; 0x5068
    push ax                          ; 0x506b
    mov ax, 0x248                    ; 0x506c
    imul word [bp + 0x4]             ; 0x506f
    mov bx, ax                       ; 0x5072
    pop ax                           ; 0x5074
    mov byte [bx + 0x5e38], al       ; 0x5075
    mov al, byte [bx + 0x5d69]       ; 0x5079
    sub ah, ah                       ; 0x507d
    add ax, word [bp - 0x0002]       ; 0x507f
    mov byte [bx + 0x5e39], al       ; 0x5082
    ret                              ; 0x5086
api_idx_0004_6:
    mov ax, 0xfffc                   ; 0x5087
    call ds_dispatch_f40b            ; 0x508a
    mov ax, 0x248                    ; 0x508d
    imul word [bp + 0x4]             ; 0x5090
    mov bx, ax                       ; 0x5093
    mov al, byte [bx + 0x5e2d]       ; 0x5095
    sub ah, ah                       ; 0x5099
    jmp near @..api_idx_0004_6.l1    ; 0x509b
    mov ax, 0x93cc                   ; 0x509e
    push ax                          ; 0x50a1
    mov ax, 0x93bd                   ; 0x50a2
    push ax                          ; 0x50a5
    push word [bp + 0x4]             ; 0x50a6
    call api_idx_0006_2              ; 0x50a9
    add sp, byte 6                   ; 0x50ac
    jmp near @..api_idx_0004_6.l2    ; 0x50af
    mov ax, 0x93ea                   ; 0x50b2
    push ax                          ; 0x50b5
    mov ax, 0x93db                   ; 0x50b6
    push ax                          ; 0x50b9
    push word [bp + 0x4]             ; 0x50ba
    call api_idx_0006_2              ; 0x50bd
    add sp, byte 6                   ; 0x50c0
    jmp near @..api_idx_0004_6.l2    ; 0x50c3
    mov ax, 0x9408                   ; 0x50c6
    push ax                          ; 0x50c9
    mov ax, 0x93f9                   ; 0x50ca
    push ax                          ; 0x50cd
    push word [bp + 0x4]             ; 0x50ce
    call api_idx_0006_2              ; 0x50d1
    add sp, byte 6                   ; 0x50d4
    jmp near @..api_idx_0004_6.l2    ; 0x50d7
    mov ax, 0x9426                   ; 0x50da
    push ax                          ; 0x50dd
    mov ax, 0x9417                   ; 0x50de
    push ax                          ; 0x50e1
    push word [bp + 0x4]             ; 0x50e2
    call api_idx_0006_2              ; 0x50e5
    add sp, byte 6                   ; 0x50e8
    jmp near @..api_idx_0004_6.l2    ; 0x50eb
    mov ax, 0x9444                   ; 0x50ee
    push ax                          ; 0x50f1
    mov ax, 0x9435                   ; 0x50f2
    push ax                          ; 0x50f5
    push word [bp + 0x4]             ; 0x50f6
    call api_idx_0006_2              ; 0x50f9
    add sp, byte 6                   ; 0x50fc
    jmp near @..api_idx_0004_6.l2    ; 0x50ff
    mov ax, 0x9462                   ; 0x5102
    push ax                          ; 0x5105
    mov ax, 0x9453                   ; 0x5106
    push ax                          ; 0x5109
    push word [bp + 0x4]             ; 0x510a
    call api_idx_0006_2              ; 0x510d
    add sp, byte 6                   ; 0x5110
    jmp short @..api_idx_0004_6.l2   ; 0x5113
    mov ax, 0x9480                   ; 0x5115
    push ax                          ; 0x5118
    mov ax, 0x9471                   ; 0x5119
    push ax                          ; 0x511c
    push word [bp + 0x4]             ; 0x511d
    call api_idx_0006_2              ; 0x5120
    add sp, byte 6                   ; 0x5123
    jmp short @..api_idx_0004_6.l2   ; 0x5126
    mov ax, 0x949e                   ; 0x5128
    push ax                          ; 0x512b
    mov ax, 0x948f                   ; 0x512c
    push ax                          ; 0x512f
    push word [bp + 0x4]             ; 0x5130
    call api_idx_0006_2              ; 0x5133
    add sp, byte 6                   ; 0x5136
    jmp short @..api_idx_0004_6.l2   ; 0x5139
    mov ax, 0x94bc                   ; 0x513b
    push ax                          ; 0x513e
    mov ax, 0x94ad                   ; 0x513f
    push ax                          ; 0x5142
    push word [bp + 0x4]             ; 0x5143
    call api_idx_0006_2              ; 0x5146
    add sp, byte 6                   ; 0x5149
    jmp short @..api_idx_0004_6.l2   ; 0x514c
    mov ax, 0x94da                   ; 0x514e
    push ax                          ; 0x5151
    mov ax, 0x94cb                   ; 0x5152
    push ax                          ; 0x5155
    push word [bp + 0x4]             ; 0x5156
    call api_idx_0006_2              ; 0x5159
    add sp, byte 6                   ; 0x515c
    jmp short @..api_idx_0004_6.l2   ; 0x515f
    in ax, 0xa0                      ; 0x5161
    dec cx                           ; 0x5163
    mov ax, word [data_a16f]         ; 0x5164
    xchg bp, ax                      ; 0x5167
    mov ax, word [data_a0f9]         ; 0x5168
    dec cx                           ; 0x516b
    mov ax, word [data_a195]         ; 0x516c
    pop sp                           ; 0x516f
    mov ax, word [data_a0f9]         ; 0x5170
    outsw                            ; 0x5173
    mov ax, word [data_a10d]         ; 0x5174
    and word [bx + di - 0x5e7e], sp  ; 0x5177
    db 0x35, 0xa1
@..api_idx_0004_6.l1:
    cmp ax, strict word 0xe          ; 0x517d
    jae short @..api_idx_0004_6.l2   ; 0x5180
    xchg bx, ax                      ; 0x5182
    shl bx, 1                        ; 0x5183
    jmp [cs:bx - 0x5e58]             ; 0x5185
@..api_idx_0004_6.l2:
    mov ax, 0x248                    ; 0x518a
    imul word [bp + 0x4]             ; 0x518d
    mov bx, ax                       ; 0x5190
    mov al, byte [bx + 0x5e2b]       ; 0x5192
    sub ah, ah                       ; 0x5196
    jmp near @..api_idx_0004_6.l3    ; 0x5198
    mov ax, 0x14                     ; 0x519b
    push ax                          ; 0x519e
    mov ax, 0xb                      ; 0x519f
    push ax                          ; 0x51a2
    mov ax, 0                        ; 0x51a3
    push ax                          ; 0x51a6
    push word [bp + 0x4]             ; 0x51a7
    call math_loc_4ead               ; 0x51aa
    add sp, byte 8                   ; 0x51ad
    jmp near @..api_idx_0004_6.l4    ; 0x51b0
    mov ax, 0x248                    ; 0x51b3
    imul word [bp + 0x4]             ; 0x51b6
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx + 0x5d67]       ; 0x51bb
    db 0x2a, 0xe4 ; sub ah, ah
    mov cx, 5                        ; 0x51c1
    cwd                              ; 0x51c4
    idiv cx                          ; 0x51c5
    imul cx                          ; 0x51c7
    push ax                          ; 0x51c9
    mov ax, 6                        ; 0x51ca
    push ax                          ; 0x51cd
    mov ax, 0                        ; 0x51ce
    push ax                          ; 0x51d1
    push word [bp + 0x4]             ; 0x51d2
    call math_loc_4ead               ; 0x51d5
    add sp, byte 8                   ; 0x51d8
    mov ax, 0x248                    ; 0x51db
    imul word [bp + 0x4]             ; 0x51de
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx + 0x5d67]       ; 0x51e3
    db 0x2a, 0xe4 ; sub ah, ah
    mov cx, 5                        ; 0x51e9
    cwd                              ; 0x51ec
    idiv cx                          ; 0x51ed
    imul cx                          ; 0x51ef
    push ax                          ; 0x51f1
    mov ax, 0xc                      ; 0x51f2
    push ax                          ; 0x51f5
    mov ax, 0                        ; 0x51f6
    push ax                          ; 0x51f9
    push word [bp + 0x4]             ; 0x51fa
    call math_loc_4ead               ; 0x51fd
    add sp, byte 8                   ; 0x5200
    jmp near @..api_idx_0004_6.l4    ; 0x5203
    mov ax, 0x14                     ; 0x5206
    push ax                          ; 0x5209
    mov ax, 9                        ; 0x520a
    push ax                          ; 0x520d
    mov ax, 0                        ; 0x520e
    push ax                          ; 0x5211
    push word [bp + 0x4]             ; 0x5212
    call math_loc_4ead               ; 0x5215
    add sp, byte 8                   ; 0x5218
    jmp near @..api_idx_0004_6.l4    ; 0x521b
    mov ax, 0x19                     ; 0x521e
    push ax                          ; 0x5221
    mov ax, 0xc                      ; 0x5222
    push ax                          ; 0x5225
    mov ax, 0                        ; 0x5226
    push ax                          ; 0x5229
    push word [bp + 0x4]             ; 0x522a
    call math_loc_4ead               ; 0x522d
    add sp, byte 8                   ; 0x5230
    mov ax, 0x19                     ; 0x5233
    push ax                          ; 0x5236
    mov ax, 4                        ; 0x5237
    push ax                          ; 0x523a
    mov ax, 0                        ; 0x523b
    push ax                          ; 0x523e
    push word [bp + 0x4]             ; 0x523f
    call math_loc_4ead               ; 0x5242
    add sp, byte 8                   ; 0x5245
    mov ax, 0x19                     ; 0x5248
    push ax                          ; 0x524b
    mov ax, 7                        ; 0x524c
    push ax                          ; 0x524f
    mov ax, 0                        ; 0x5250
    push ax                          ; 0x5253
    push word [bp + 0x4]             ; 0x5254
    call math_loc_4ead               ; 0x5257
    add sp, byte 8                   ; 0x525a
    mov ax, 0x19                     ; 0x525d
    push ax                          ; 0x5260
    mov ax, 0xa                      ; 0x5261
    push ax                          ; 0x5264
    mov ax, 0                        ; 0x5265
    push ax                          ; 0x5268
    push word [bp + 0x4]             ; 0x5269
    call math_loc_4ead               ; 0x526c
    add sp, byte 8                   ; 0x526f
    mov ax, 0x19                     ; 0x5272
    push ax                          ; 0x5275
    mov ax, 0xb                      ; 0x5276
    push ax                          ; 0x5279
    mov ax, 0                        ; 0x527a
    push ax                          ; 0x527d
    push word [bp + 0x4]             ; 0x527e
    call math_loc_4ead               ; 0x5281
    add sp, byte 8                   ; 0x5284
    jmp near @..api_idx_0004_6.l4    ; 0x5287
    mov ax, 0x19                     ; 0x528a
    push ax                          ; 0x528d
    mov ax, 0xa                      ; 0x528e
    push ax                          ; 0x5291
    mov ax, 0                        ; 0x5292
    push ax                          ; 0x5295
    push word [bp + 0x4]             ; 0x5296
    call math_loc_4ead               ; 0x5299
    add sp, byte 8                   ; 0x529c
    mov ax, 0xa                      ; 0x529f
    push ax                          ; 0x52a2
    mov ax, 8                        ; 0x52a3
    push ax                          ; 0x52a6
    mov ax, 0                        ; 0x52a7
    push ax                          ; 0x52aa
    push word [bp + 0x4]             ; 0x52ab
    call math_loc_4ead               ; 0x52ae
    add sp, byte 8                   ; 0x52b1
    mov ax, 0xffec                   ; 0x52b4
    push ax                          ; 0x52b7
    mov ax, 3                        ; 0x52b8
    push ax                          ; 0x52bb
    mov ax, 0                        ; 0x52bc
    push ax                          ; 0x52bf
    push word [bp + 0x4]             ; 0x52c0
    call math_loc_4ead               ; 0x52c3
    add sp, byte 8                   ; 0x52c6
    jmp near @..api_idx_0004_6.l4    ; 0x52c9
    mov ax, 0xf                      ; 0x52cc
    push ax                          ; 0x52cf
    mov ax, 7                        ; 0x52d0
    push ax                          ; 0x52d3
    mov ax, 0                        ; 0x52d4
    push ax                          ; 0x52d7
    push word [bp + 0x4]             ; 0x52d8
    call math_loc_4ead               ; 0x52db
    add sp, byte 8                   ; 0x52de
    mov ax, 0x14                     ; 0x52e1
    push ax                          ; 0x52e4
    mov ax, 4                        ; 0x52e5
    push ax                          ; 0x52e8
    mov ax, 0                        ; 0x52e9
    push ax                          ; 0x52ec
    push word [bp + 0x4]             ; 0x52ed
    call math_loc_4ead               ; 0x52f0
    add sp, byte 8                   ; 0x52f3
    mov ax, 0x14                     ; 0x52f6
    push ax                          ; 0x52f9
    mov ax, 3                        ; 0x52fa
    push ax                          ; 0x52fd
    mov ax, 0                        ; 0x52fe
    push ax                          ; 0x5301
    push word [bp + 0x4]             ; 0x5302
    call math_loc_4ead               ; 0x5305
    add sp, byte 8                   ; 0x5308
    jmp short @..api_idx_0004_6.l4   ; 0x530b
    mov ax, 0x19                     ; 0x530d
    push ax                          ; 0x5310
    mov ax, 0xc                      ; 0x5311
    push ax                          ; 0x5314
    mov ax, 0                        ; 0x5315
    push ax                          ; 0x5318
    push word [bp + 0x4]             ; 0x5319
    call math_loc_4ead               ; 0x531c
    add sp, byte 8                   ; 0x531f
    mov ax, 0xf                      ; 0x5322
    push ax                          ; 0x5325
    mov ax, 3                        ; 0x5326
    push ax                          ; 0x5329
    mov ax, 0                        ; 0x532a
    push ax                          ; 0x532d
    push word [bp + 0x4]             ; 0x532e
    call math_loc_4ead               ; 0x5331
    add sp, byte 8                   ; 0x5334
    jmp short @..api_idx_0004_6.l4   ; 0x5337
    loop loc_52dc                    ; 0x5339
    dec bp                           ; 0x533b
    mov byte [data_a1fa], al         ; 0x533c
    and ah, byte [bp + si - 0x5e06]  ; 0x533f
    mov byte [gs:data_a2d1], al      ; 0x5343
    shl word [bp + si - 0x5ced], 1   ; 0x5347
    cmp ax, 0x54a3                   ; 0x534b
    db 0xa3
@..api_idx_0004_6.l3:
    cmp ax, strict word 0xb          ; 0x534f
    jae short @..api_idx_0004_6.l4   ; 0x5352
    xchg bx, ax                      ; 0x5354
    shl bx, 1                        ; 0x5355
    jmp [cs:bx - 0x5c80]             ; 0x5357
@..api_idx_0004_6.l4:
    mov ax, 0x248                    ; 0x535c
    imul word [bp + 0x4]             ; 0x535f
    mov bx, ax                       ; 0x5362
    cmp byte [bx + 0x5d67], 0xf      ; 0x5364
    jbe short @..api_idx_0004_6.l5   ; 0x5369
    mov ax, 5                        ; 0x536b
    push ax                          ; 0x536e
    mov ax, 6                        ; 0x536f
    push ax                          ; 0x5372
    mov ax, 0                        ; 0x5373
    push ax                          ; 0x5376
    push word [bp + 0x4]             ; 0x5377
    call math_loc_4ead               ; 0x537a
    add sp, byte 8                   ; 0x537d
    mov ax, 5                        ; 0x5380
    push ax                          ; 0x5383
    mov ax, 0xb                      ; 0x5384
    push ax                          ; 0x5387
    mov ax, 0                        ; 0x5388
    push ax                          ; 0x538b
    push word [bp + 0x4]             ; 0x538c
    call math_loc_4ead               ; 0x538f
    add sp, byte 8                   ; 0x5392
@..api_idx_0004_6.l5:
    mov ax, 0x248                    ; 0x5395
    imul word [bp + 0x4]             ; 0x5398
    mov bx, ax                       ; 0x539b
    cmp byte [bx + 0x5d65], 0xf      ; 0x539d
    jbe short @..api_idx_0004_6.l6   ; 0x53a2
    mov ax, 5                        ; 0x53a4
    push ax                          ; 0x53a7
    mov ax, 9                        ; 0x53a8
    push ax                          ; 0x53ab
    mov ax, 0                        ; 0x53ac
    push ax                          ; 0x53af
    push word [bp + 0x4]             ; 0x53b0
    call math_loc_4ead               ; 0x53b3
    add sp, byte 8                   ; 0x53b6
@..api_idx_0004_6.l6:
    mov ax, 0x248                    ; 0x53b9
    imul word [bp + 0x4]             ; 0x53bc
    mov bx, ax                       ; 0x53bf
    cmp byte [bx + 0x5d69], 0xf      ; 0x53c1
    jbe short @..api_idx_0004_6.l7   ; 0x53c6
    mov ax, 5                        ; 0x53c8
    push ax                          ; 0x53cb
    mov ax, 7                        ; 0x53cc
    push ax                          ; 0x53cf
    mov ax, 0                        ; 0x53d0
    push ax                          ; 0x53d3
    push word [bp + 0x4]             ; 0x53d4
    call math_loc_4ead               ; 0x53d7
    add sp, byte 8                   ; 0x53da
    mov ax, 5                        ; 0x53dd
    push ax                          ; 0x53e0
    mov ax, 4                        ; 0x53e1
    push ax                          ; 0x53e4
    mov ax, 0                        ; 0x53e5
    push ax                          ; 0x53e8
    push word [bp + 0x4]             ; 0x53e9
    call math_loc_4ead               ; 0x53ec
    add sp, byte 8                   ; 0x53ef
@..api_idx_0004_6.l7:
    mov word [bp - 0x0004], 0        ; 0x53f2
@..api_idx_0004_6.l8:
    mov ax, 0x248                    ; 0x53f7
    imul word [bp + 0x4]             ; 0x53fa
    add ax, word [bp - 0x0004]       ; 0x53fd
    mov bx, ax                       ; 0x5400
    mov al, byte [bx + 0x5d8e]       ; 0x5402
    mov byte [bx + 0x5d9c], al       ; 0x5406
    inc word [bp - 0x0004]           ; 0x540a
    mov ax, word [bp - 0x0004]       ; 0x540d
    cmp ax, strict word 0xe          ; 0x5410
    jl short @..api_idx_0004_6.l8    ; 0x5413
    mov ax, 0x248                    ; 0x5415
    imul word [bp + 0x4]             ; 0x5418
    mov bx, ax                       ; 0x541b
    mov al, byte [bx + 0x5e2d]       ; 0x541d
    sub ah, ah                       ; 0x5421
    jmp short @..api_idx_0004_6.l9   ; 0x5423

    db 0xb8, 0x03, 0x00, 0x50, 0xb8, 0x06, 0x00, 0x50, 0xb8, 0x05, 0x00, 0x50, 0xb8, 0x07, 0x00, 0x50
    db 0xb8, 0x04, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x56, 0xfb, 0x83, 0xc4, 0x0c, 0xeb, 0x61, 0xb8
    db 0x07, 0x00, 0x50, 0x50, 0xb8, 0x0c, 0x00, 0x50, 0x50, 0xb8, 0x02, 0x00, 0x50, 0xff, 0x76, 0x04
    db 0xe8, 0x3d, 0xfb, 0x83, 0xc4, 0x0c, 0xeb, 0x48, 0xb8, 0x05, 0x00, 0x50, 0xb8, 0x07, 0x00, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0xb8, 0x0a, 0x00, 0x50, 0xb8, 0x03, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8
    db 0x1e, 0xfb, 0x83, 0xc4, 0x0c, 0xeb, 0x29, 0x6c, 0xa4, 0x8b, 0xa4, 0xa4, 0xa4, 0xa4, 0xa4, 0x6c
    db 0xa4, 0x8b, 0xa4, 0xa4, 0xa4, 0x8b, 0xa4, 0x6c, 0xa4, 0x8b, 0xa4, 0x6c, 0xa4, 0x6c, 0xa4, 0x6c
    db 0xa4, 0x6c, 0xa4

@..api_idx_0004_6.l9:
    cmp ax, strict word 0xe          ; 0x5498
    jae short @..api_idx_0004_6.l10  ; 0x549b
    xchg bx, ax                      ; 0x549d
    shl bx, 1                        ; 0x549e
    jmp [cs:bx - 0x5b3d]             ; 0x54a0
@..api_idx_0004_6.l10:
    mov word [bp - 0x0002], 0        ; 0x54a5
@..api_idx_0004_6.l11:
    push word [bp - 0x0002]          ; 0x54aa
    push word [bp + 0x4]             ; 0x54ad
    call ds_dispatch_c608            ; 0x54b0
    add sp, byte 4                   ; 0x54b3
    inc word [bp - 0x0002]           ; 0x54b6
    mov ax, word [bp - 0x0002]       ; 0x54b9
    cmp ax, strict word 2            ; 0x54bc
    jl short @..api_idx_0004_6.l11   ; 0x54bf
    mov ax, 0x248                    ; 0x54c1
    imul word [bp + 0x4]             ; 0x54c4
    mov bx, ax                       ; 0x54c7
    mov byte [bx + 0x5daa], 0xa      ; 0x54c9
    mov al, byte [bx + 0x5daa]       ; 0x54ce
    cbw                              ; 0x54d2
    mov cx, 0                        ; 0x54d3
    cmp byte [bx + 0x5d69], 0xf      ; 0x54d6
    jbe short @..api_idx_0004_6.l12  ; 0x54db
    mov cx, 1                        ; 0x54dd
@..api_idx_0004_6.l12:
    sub ax, cx                       ; 0x54e0
    mov byte [bx + 0x5daa], al       ; 0x54e2
    cbw                              ; 0x54e6
    mov cx, 0                        ; 0x54e7
    cmp byte [bx + 0x5d69], 0x11     ; 0x54ea
    jbe short @..api_idx_0004_6.l13  ; 0x54ef
    mov cx, 1                        ; 0x54f1
@..api_idx_0004_6.l13:
    sub ax, cx                       ; 0x54f4
    mov byte [bx + 0x5daa], al       ; 0x54f6
    mov al, byte [bx + 0x5daa]       ; 0x54fa
    cbw                              ; 0x54fe
    mov cx, 0                        ; 0x54ff
    cmp byte [bx + 0x5e2b], 5        ; 0x5502
    jne short @..api_idx_0004_6.l14  ; 0x5507
    mov cx, data_0002                ; 0x5509
@..api_idx_0004_6.l14:
    sub ax, cx                       ; 0x550c
    mov byte [bx + 0x5daa], al       ; 0x550e
    cmp byte [bx + 0x5e2d], 0xd      ; 0x5512
    je short @..api_idx_0004_6.l15   ; 0x5517
    cmp byte [bx + 0x5e2d], 0xc      ; 0x5519
    jne short @..api_idx_0004_6.l17  ; 0x551e
@..api_idx_0004_6.l15:
    mov ax, 0xa                      ; 0x5520
    cmp word [bx + 0x5c18], byte 0x14 ; 0x5523
    jg short @..api_idx_0004_6.l16   ; 0x5528
    mov ax, word [bx + 0x5c18]       ; 0x552a
    mov cx, data_0002                ; 0x552e
    cwd                              ; 0x5531
    idiv cx                          ; 0x5532
@..api_idx_0004_6.l16:
    mov word [bp - 0x0002], ax       ; 0x5534
    mov al, byte [bx + 0x5d7d]       ; 0x5537
    sub ah, ah                       ; 0x553b
    mov cx, 0xa                      ; 0x553d
    cwd                              ; 0x5540
    idiv cx                          ; 0x5541
    add word [bp - 0x0002], ax       ; 0x5543
    mov al, byte [bx + 0x5daa]       ; 0x5546
    cbw                              ; 0x554a
    sub ax, word [bp - 0x0002]       ; 0x554b
    mov byte [bx + 0x5daa], al       ; 0x554e
@..api_idx_0004_6.l17:
    mov byte [bx + 0x5dab], 0        ; 0x5552
    mov byte [bx + 0x5dac], 0        ; 0x5557
    mov word [bp - 0x0002], 3        ; 0x555c
@..api_idx_0004_6.l18:
    mov ax, 0x248                    ; 0x5561
    imul word [bp + 0x4]             ; 0x5564
    mov bx, ax                       ; 0x5567
    mov al, byte [bx + 0x5daa]       ; 0x5569
    add bx, word [bp - 0x0002]       ; 0x556d
    mov byte [bx + 0x5daa], al       ; 0x5570
    inc word [bp - 0x0002]           ; 0x5574
    mov ax, word [bp - 0x0002]       ; 0x5577
    cmp ax, strict word 8            ; 0x557a
    jl short @..api_idx_0004_6.l18   ; 0x557d
    ret                              ; 0x557f
api_idx_001c:
    mov ax, 0xffe4                   ; 0x5580
    call ds_dispatch_f40b            ; 0x5583
    mov ax, word [bp + 0x6]          ; 0x5586
    mov word [bp - 0x000c], ax       ; 0x5589
    mov ax, word [bp + 0x8]          ; 0x558c
    mov word [bp - 0x000a], ax       ; 0x558f
    mov word [bp - 0x0008], 0        ; 0x5592
    mov ax, word [bp + 0xa]          ; 0x5597
    mov word [bp - 0x0006], ax       ; 0x559a
    mov word [bp - 0x001c], 0        ; 0x559d
    mov word [bp - 0x001a], 5        ; 0x55a2
    mov word [bp - 0x0018], 3        ; 0x55a7
    mov word [bp - 0x0016], 4        ; 0x55ac
    mov word [bp - 0x0014], 0        ; 0x55b1
    mov word [bp - 0x0012], 0        ; 0x55b6
    mov word [bp - 0x0010], 1        ; 0x55bb
    mov word [bp - 0x000e], data_0002 ; 0x55c0
    mov word [bp - 0x0002], 0        ; 0x55c5
@..api_idx_001c.l1:
    cmp word [bp - 0x0002], byte 2   ; 0x55ca
    jne short @..api_idx_001c.l2     ; 0x55ce
    jmp near @..api_idx_001c.l4      ; 0x55d0
@..api_idx_001c.l2:
    mov ax, 0x248                    ; 0x55d3
    imul word [bp + 0x4]             ; 0x55d6
    mov cx, word [bp - 0x0002]       ; 0x55d9
    shl cx, 1                        ; 0x55dc
    shl cx, 1                        ; 0x55de
    mov bx, cx                       ; 0x55e0
    add bx, bp                       ; 0x55e2
    mov cx, word [bx - 0x001c]       ; 0x55e4
    add ax, cx                       ; 0x55e7
    mov bx, ax                       ; 0x55e9
    mov al, byte [bx + 0x5d64]       ; 0x55eb
    sub ah, ah                       ; 0x55ef
    push ax                          ; 0x55f1
    mov ax, 0x248                    ; 0x55f2
    imul word [bp + 0x4]             ; 0x55f5
    mov cx, word [bp - 0x0002]       ; 0x55f8
    shl cx, 1                        ; 0x55fb
    shl cx, 1                        ; 0x55fd
    mov bx, cx                       ; 0x55ff
    add bx, bp                       ; 0x5601
    mov cx, word [bx - 0x001a]       ; 0x5603
    add ax, cx                       ; 0x5606
    mov bx, ax                       ; 0x5608
    mov al, byte [bx + 0x5d64]       ; 0x560a
    sub ah, ah                       ; 0x560e
    mov cx, ax                       ; 0x5610
    pop ax                           ; 0x5612
    add ax, cx                       ; 0x5613
    mov cx, 6                        ; 0x5615
    cwd                              ; 0x5618
    idiv cx                          ; 0x5619
    mov cx, word [bp - 0x0002]       ; 0x561b
    shl cx, 1                        ; 0x561e
    mov bx, cx                       ; 0x5620
    add bx, bp                       ; 0x5622
    mov cx, word [bx - 0x000c]       ; 0x5624
    add ax, cx                       ; 0x5627
    dec ax                           ; 0x5629
    dec ax                           ; 0x562a
    dec ax                           ; 0x562b
    mov word [bx - 0x000c], ax       ; 0x562c
    cmp word [bx - 0x000c], byte 1   ; 0x562f
    jge short @..api_idx_001c.l3     ; 0x5633
    mov word [bx - 0x000c], 1        ; 0x5635
@..api_idx_001c.l3:
    mov ax, word [bx - 0x000c]       ; 0x563a
    mov cx, data_0002                ; 0x563d
    cwd                              ; 0x5640
    idiv cx                          ; 0x5641
    mov word [bp - 0x0004], ax       ; 0x5643
    mov cx, word [bx - 0x000c]       ; 0x5646
    sub cx, ax                       ; 0x5649
    mov ax, cx                       ; 0x564b
    inc ax                           ; 0x564d
    push ax                          ; 0x564e
    call ds_dispatch_b7a9            ; 0x564f
    pop cx                           ; 0x5652
    mov cx, ax                       ; 0x5653
    mov ax, word [bp - 0x0004]       ; 0x5655
    add cx, ax                       ; 0x5658
    mov ax, word [bp - 0x0002]       ; 0x565a
    shl ax, 1                        ; 0x565d
    mov bx, ax                       ; 0x565f
    mov word [bx - 0x69f8], cx       ; 0x5661
@..api_idx_001c.l4:
    inc word [bp - 0x0002]           ; 0x5665
    mov ax, word [bp - 0x0002]       ; 0x5668
    cmp ax, strict word 4            ; 0x566b
    jge short @..api_idx_001c.l5     ; 0x566e
    jmp near @..api_idx_001c.l1      ; 0x5670
@..api_idx_001c.l5:
    mov word [data_960c], 0          ; 0x5673
    mov ax, word [data_0040]         ; 0x5679
    mov word [bp - 0x0002], ax       ; 0x567c
    jmp short @..api_idx_001c.l8     ; 0x567f
@..api_idx_001c.l6:
    mov ax, 0x248                    ; 0x5681
    imul word [bp + 0x4]             ; 0x5684
    add ax, word [bp - 0x0002]       ; 0x5687
    mov bx, ax                       ; 0x568a
    cmp byte [bx + 0x5d6c], 0        ; 0x568c
    jbe short @..api_idx_001c.l7     ; 0x5691
    mov ax, data_0002                ; 0x5693
    push ax                          ; 0x5696
    call ds_dispatch_b7a9            ; 0x5697
    pop cx                           ; 0x569a
    add ax, word [data_960c]         ; 0x569b
    inc ax                           ; 0x569f
    mov word [data_960c], ax         ; 0x56a0
@..api_idx_001c.l7:
    inc word [bp - 0x0002]           ; 0x56a3
@..api_idx_001c.l8:
    mov ax, word [bp - 0x0002]       ; 0x56a6
    cmp ax, word [data_0042]         ; 0x56a9
    jle short @..api_idx_001c.l6     ; 0x56ad
    ret                              ; 0x56af
api_idx_0002_11:
    mov ax, 0xfffe                   ; 0x56b0
    call ds_dispatch_f40b            ; 0x56b3
    mov ax, word [bp + 0x6]          ; 0x56b6
    shl ax, 1                        ; 0x56b9
    mov bx, ax                       ; 0x56bb
    mov ax, word [bx - 0x69f8]       ; 0x56bd
    cwd                              ; 0x56c1
    idiv word [bp + 0x8]             ; 0x56c2
    push ax                          ; 0x56c5
    mov ax, 0x248                    ; 0x56c6
    imul word [bp + 0x4]             ; 0x56c9
    mov bx, ax                       ; 0x56cc
    mov ax, word [bx + 0x5c18]       ; 0x56ce
    dec ax                           ; 0x56d2
    mov cx, data_0002                ; 0x56d3
    cwd                              ; 0x56d6
    idiv cx                          ; 0x56d7
    mov cx, ax                       ; 0x56d9
    pop ax                           ; 0x56db
    sub ax, cx                       ; 0x56dc
    mov word [bp - 0x0002], ax       ; 0x56de
    cmp ax, strict word 0            ; 0x56e1
    jge short @..api_idx_0002_11.l1  ; 0x56e4
    mov word [bp - 0x0002], 0        ; 0x56e6
@..api_idx_0002_11.l1:
    mov ax, word [bp + 0x6]          ; 0x56eb
    shl ax, 1                        ; 0x56ee
    mov bx, ax                       ; 0x56f0
    mov ax, word [bx - 0x69f8]       ; 0x56f2
    cmp ax, word [bp - 0x0002]       ; 0x56f6
    jge short @..api_idx_0002_11.l2  ; 0x56f9
    mov word [bp - 0x0002], ax       ; 0x56fb
@..api_idx_0002_11.l2:
    mov ax, word [bp - 0x0002]       ; 0x56fe
    sub word [bx - 0x69f8], ax       ; 0x5701
    ret                              ; 0x5705
math_loc_5706:
    mov ax, 0                        ; 0x5706
    call ds_dispatch_f40b            ; 0x5709
    mov ax, 0x248                    ; 0x570c
    imul word [bp + 0x4]             ; 0x570f
    mov bx, ax                       ; 0x5712
    mov al, byte [bx + 0x5e2d]       ; 0x5714
    sub ah, ah                       ; 0x5718
    jmp near @..math_loc_5706.l1     ; 0x571a

    db 0xb8, 0x03, 0x00, 0x50, 0xb8, 0x06, 0x00, 0x50, 0xb8, 0x0a, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8
    db 0x51, 0xfe, 0x83, 0xc4, 0x08, 0xe9, 0x54, 0x03, 0xb8, 0x0c, 0x00, 0x50, 0xb8, 0x04, 0x00, 0x50
    db 0xb8, 0x03, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x39, 0xfe, 0x83, 0xc4, 0x08, 0xb8, 0x02, 0x00
    db 0x50, 0xb8, 0x03, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x58, 0xff, 0x83, 0xc4, 0x06, 0x50, 0xb8
    db 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xd8, 0x58, 0x88, 0x87, 0x8c, 0x5d, 0xe9, 0x1d, 0x03, 0xb8
    db 0x0c, 0x00, 0x50, 0xb8, 0x04, 0x00, 0x50, 0xb8, 0x03, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x02
    db 0xfe, 0x83, 0xc4, 0x08, 0xb8, 0x02, 0x00, 0x50, 0xb8, 0x03, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8
    db 0x21, 0xff, 0x83, 0xc4, 0x06, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xd8, 0x58, 0x88
    db 0x87, 0x8a, 0x5d, 0xe9, 0xe6, 0x02, 0xb8, 0x04, 0x00, 0x50, 0xb8, 0x0a, 0x00, 0x50, 0xb8, 0x05
    db 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0xcb, 0xfd, 0x83, 0xc4, 0x08, 0xb8, 0x02, 0x00, 0x50, 0xb8
    db 0x01, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0xea, 0xfe, 0x83, 0xc4, 0x06, 0x50, 0xb8, 0x48, 0x02
    db 0xf7, 0x6e, 0x04, 0x8b, 0xd8, 0x58, 0x88, 0x87, 0x7c, 0x5d, 0xe9, 0xaf, 0x02, 0xb8, 0x05, 0x00
    db 0x50, 0xb8, 0x07, 0x00, 0x50, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x97, 0xfd, 0x83, 0xc4, 0x08, 0xb8
    db 0x03, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0xb6, 0xfe, 0x83, 0xc4, 0x06
    db 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xd8, 0x58, 0x88, 0x87, 0x73, 0x5d, 0xb8, 0x03
    db 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x97, 0xfe, 0x83, 0xc4, 0x06, 0x50
    db 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xd8, 0x58, 0x88, 0x87, 0x78, 0x5d, 0xe9, 0x5c, 0x02
    db 0xb8, 0x06, 0x00, 0x50, 0xb8, 0x07, 0x00, 0x50, 0xb8, 0x06, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8
    db 0x41, 0xfd, 0x83, 0xc4, 0x08, 0xb8, 0x02, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xff, 0x76, 0x04
    db 0xe8, 0x60, 0xfe, 0x83, 0xc4, 0x06, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xd8, 0x58
    db 0x88, 0x87, 0x79, 0x5d, 0xe9, 0x25, 0x02, 0xb8, 0x0c, 0x00, 0x50, 0xb8, 0x04, 0x00, 0x50, 0xb8
    db 0x03, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x0a, 0xfd, 0x83, 0xc4, 0x08, 0xb8, 0x02, 0x00, 0x50
    db 0xb8, 0x03, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x29, 0xfe, 0x83, 0xc4, 0x06, 0x50, 0xb8, 0x48
    db 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xd8, 0x58, 0x88, 0x87, 0x89, 0x5d, 0xe9, 0xee, 0x01, 0xb8, 0x0c
    db 0x00, 0x50, 0xb8, 0x04, 0x00, 0x50, 0xb8, 0x03, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0xd3, 0xfc
    db 0x83, 0xc4, 0x08, 0xb8, 0x02, 0x00, 0x50, 0xb8, 0x03, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0xf2
    db 0xfd, 0x83, 0xc4, 0x06, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xd8, 0x58, 0x88, 0x87
    db 0x8b, 0x5d, 0xe9, 0xb7, 0x01, 0xb8, 0x0d, 0x00, 0x50, 0xb8, 0x03, 0x00, 0x50, 0x50, 0xff, 0x76
    db 0x04, 0xe8, 0x9f, 0xfc, 0x83, 0xc4, 0x08, 0xb8, 0x03, 0x00, 0x50, 0x50, 0xff, 0x76, 0x04, 0xe8
    db 0xc1, 0xfd, 0x83, 0xc4, 0x06, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xd8, 0x58, 0x88
    db 0x87, 0x8c, 0x5d, 0xb8, 0x02, 0x00, 0x50, 0xb8, 0x03, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0xa2
    db 0xfd, 0x83, 0xc4, 0x06, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xd8, 0x58, 0x88, 0x87
    db 0x8a, 0x5d, 0xe9, 0x67, 0x01, 0xb8, 0x05, 0x00, 0x50, 0x50, 0xb8, 0x09, 0x00, 0x50, 0xff, 0x76
    db 0x04, 0xe8, 0x4f, 0xfc, 0x83, 0xc4, 0x08, 0xb8, 0x03, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xff
    db 0x76, 0x04, 0xe8, 0x6e, 0xfd, 0x83, 0xc4, 0x06, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b
    db 0xd8, 0x58, 0x88, 0x87, 0x70, 0x5d, 0xe9, 0x33, 0x01, 0xb8, 0x05, 0x00, 0x50, 0x50, 0xb8, 0x09
    db 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x1b, 0xfc, 0x83, 0xc4, 0x08, 0xb8, 0x03, 0x00, 0x50, 0x50
    db 0xff, 0x76, 0x04, 0xe8, 0x3d, 0xfd, 0x83, 0xc4, 0x06, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04
    db 0x8b, 0xd8, 0x58, 0x88, 0x87, 0x88, 0x5d, 0xe9, 0x02, 0x01, 0xb8, 0x05, 0x00, 0x50, 0x50, 0xb8
    db 0x09, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0xea, 0xfb, 0x83, 0xc4, 0x08, 0xb8, 0x02, 0x00, 0x50
    db 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x09, 0xfd, 0x83, 0xc4, 0x06, 0x50, 0xb8, 0x48
    db 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xd8, 0x58, 0x88, 0x87, 0x6d, 0x5d, 0xe9, 0xce, 0x00, 0xb8, 0x06
    db 0x00, 0x50, 0x50, 0xb8, 0x07, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0xb6, 0xfb, 0x83, 0xc4, 0x08
    db 0xb8, 0x03, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0xd5, 0xfc, 0x83, 0xc4
    db 0x06, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xd8, 0x58, 0x88, 0x87, 0x75, 0x5d, 0xb8
    db 0x03, 0x00, 0x50, 0x50, 0xff, 0x76, 0x04, 0xe8, 0xb9, 0xfc, 0x83, 0xc4, 0x06, 0x50, 0xb8, 0x48
    db 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xd8, 0x58, 0x88, 0x87, 0x8b, 0x5d, 0xe9, 0x7e, 0x00, 0xb8, 0x04
    db 0x00, 0x50, 0xb8, 0x07, 0x00, 0x50, 0xb8, 0x08, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x63, 0xfb
    db 0x83, 0xc4, 0x08, 0xb8, 0x02, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x82
    db 0xfc, 0x83, 0xc4, 0x06, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xd8, 0x58, 0x88, 0x87
    db 0x75, 0x5d, 0xb8, 0x02, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x63, 0xfc
    db 0x83, 0xc4, 0x06, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xd8, 0x58, 0x88, 0x87, 0x7d
    db 0x5d, 0xeb, 0x29, 0x64, 0xa7, 0x7c, 0xa7, 0xb3, 0xa7, 0xea, 0xa7, 0x21, 0xa8, 0xab, 0xa8, 0x74
    db 0xa8, 0xe2, 0xa8, 0x69, 0xa9, 0x19, 0xa9, 0x9d, 0xa9, 0xce, 0xa9, 0x02, 0xaa, 0x52, 0xaa

@..math_loc_5706.l1:
    cmp ax, strict word 0xe          ; 0x5a7c
    jae short @..math_loc_5706.l2    ; 0x5a7f
    xchg bx, ax                      ; 0x5a81
    shl bx, 1                        ; 0x5a82
    jmp [cs:bx - 0x5559]             ; 0x5a84
@..math_loc_5706.l2:
    ret                              ; 0x5a89
api_idx_000a_3:
    mov ax, 0xfff6                   ; 0x5a8a
    call ds_dispatch_f40b            ; 0x5a8d
    mov ax, 0x248                    ; 0x5a90
    imul word [bp + 0x4]             ; 0x5a93
    mov bx, ax                       ; 0x5a96
    mov byte [bx + 0x5e34], 1        ; 0x5a98
    mov byte [bx + 0x5e35], 0xa      ; 0x5a9d
    mov ax, 0x3e8                    ; 0x5aa2
    push ax                          ; 0x5aa5
    call ds_dispatch_b7a9            ; 0x5aa6
    pop cx                           ; 0x5aa9
    add ax, 0x19aa                   ; 0x5aaa
    cwd                              ; 0x5aad
    push ax                          ; 0x5aae
    push dx                          ; 0x5aaf
    mov ax, 0x248                    ; 0x5ab0
    imul word [bp + 0x4]             ; 0x5ab3
    mov bx, ax                       ; 0x5ab6
    pop dx                           ; 0x5ab8
    pop ax                           ; 0x5ab9
    mov word [bx + 0x5bfe], dx       ; 0x5aba
    mov word [bx + 0x5bfc], ax       ; 0x5abe
    mov al, byte [bx + 0x5d64]       ; 0x5ac2
    sub ah, ah                       ; 0x5ac6
    mov word [bp - 0x0008], ax       ; 0x5ac8
    mov al, byte [bx + 0x5d67]       ; 0x5acb
    sub ah, ah                       ; 0x5acf
    mov word [bp - 0x000a], ax       ; 0x5ad1
    mov al, byte [bx + 0x5e2d]       ; 0x5ad4
    sub ah, ah                       ; 0x5ad8
    jmp near @..api_idx_000a_3.l1    ; 0x5ada
    mov ax, 5                        ; 0x5add
    push ax                          ; 0x5ae0
    db 0xe8, 0xc5, 0x5c ; call ds_dispatch_b7a9
    pop cx                           ; 0x5ae4
    add ax, strict word 6            ; 0x5ae5
    mov word [bp - 0x0002], ax       ; 0x5ae8
    push word [bp + 0x4]             ; 0x5aeb
    call math_loc_5706               ; 0x5aee
    pop cx                           ; 0x5af1
    mov ax, 0x248                    ; 0x5af2
    imul word [bp + 0x4]             ; 0x5af5
    db 0x8b, 0xd8 ; mov bx, ax
    add byte [bx + 0x5e3a], 0xfd     ; 0x5afa
    jmp near @..api_idx_000a_3.l2    ; 0x5aff
    mov ax, 3                        ; 0x5b02
    push ax                          ; 0x5b05
    db 0xe8, 0xa0, 0x5c ; call ds_dispatch_b7a9
    pop cx                           ; 0x5b09
    inc ax                           ; 0x5b0a
    inc ax                           ; 0x5b0b
    mov word [bp - 0x0002], ax       ; 0x5b0c
    push word [bp + 0x4]             ; 0x5b0f
    call math_loc_5706               ; 0x5b12
    pop cx                           ; 0x5b15
    jmp near @..api_idx_000a_3.l2    ; 0x5b16
    mov ax, 4                        ; 0x5b19
    push ax                          ; 0x5b1c
    db 0xe8, 0x89, 0x5c ; call ds_dispatch_b7a9
    pop cx                           ; 0x5b20
    add ax, strict word 4            ; 0x5b21
    mov word [bp - 0x0002], ax       ; 0x5b24
    push word [bp + 0x4]             ; 0x5b27
    call math_loc_5706               ; 0x5b2a
    pop cx                           ; 0x5b2d
    jmp near @..api_idx_000a_3.l2    ; 0x5b2e
    mov ax, 4                        ; 0x5b31
    push ax                          ; 0x5b34
    db 0xe8, 0x71, 0x5c ; call ds_dispatch_b7a9
    pop cx                           ; 0x5b38
    inc ax                           ; 0x5b39
    inc ax                           ; 0x5b3a
    inc ax                           ; 0x5b3b
    mov word [bp - 0x0002], ax       ; 0x5b3c
    push word [bp + 0x4]             ; 0x5b3f
    call math_loc_5706               ; 0x5b42
    pop cx                           ; 0x5b45
    mov ax, 0x248                    ; 0x5b46
    imul word [bp + 0x4]             ; 0x5b49
    db 0x8b, 0xd8 ; mov bx, ax
    dec byte [bx + 0x5e3a]           ; 0x5b4e
    jmp near @..api_idx_000a_3.l2    ; 0x5b52
    mov ax, 4                        ; 0x5b55
    push ax                          ; 0x5b58
    db 0xe8, 0x4d, 0x5c ; call ds_dispatch_b7a9
    pop cx                           ; 0x5b5c
    push ax                          ; 0x5b5d
    mov ax, 4                        ; 0x5b5e
    push ax                          ; 0x5b61
    db 0xe8, 0x44, 0x5c ; call ds_dispatch_b7a9
    pop cx                           ; 0x5b65
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax                           ; 0x5b68
    db 0x03, 0xc1 ; add ax, cx
    add ax, strict word 6            ; 0x5b6b
    mov word [bp - 0x0002], ax       ; 0x5b6e
    push word [bp + 0x4]             ; 0x5b71
    call math_loc_5706               ; 0x5b74
    pop cx                           ; 0x5b77
    mov ax, 0x248                    ; 0x5b78
    imul word [bp + 0x4]             ; 0x5b7b
    db 0x8b, 0xd8 ; mov bx, ax
    dec byte [bx + 0x5e3a]           ; 0x5b80
    dec byte [bx + 0x5e3a]           ; 0x5b84
    jmp near @..api_idx_000a_3.l2    ; 0x5b88
    mov ax, 4                        ; 0x5b8b
    push ax                          ; 0x5b8e
    db 0xe8, 0x17, 0x5c ; call ds_dispatch_b7a9
    pop cx                           ; 0x5b92
    inc ax                           ; 0x5b93
    inc ax                           ; 0x5b94
    inc ax                           ; 0x5b95
    mov word [bp - 0x0002], ax       ; 0x5b96
    push word [bp + 0x4]             ; 0x5b99
    call math_loc_5706               ; 0x5b9c
    pop cx                           ; 0x5b9f
    jmp near @..api_idx_000a_3.l2    ; 0x5ba0
    mov ax, 4                        ; 0x5ba3
    push ax                          ; 0x5ba6
    db 0xe8, 0xff, 0x5b ; call ds_dispatch_b7a9
    pop cx                           ; 0x5baa
    inc ax                           ; 0x5bab
    inc ax                           ; 0x5bac
    mov word [bp - 0x0002], ax       ; 0x5bad
    push word [bp + 0x4]             ; 0x5bb0
    call math_loc_5706               ; 0x5bb3
    pop cx                           ; 0x5bb6
    jmp near @..api_idx_000a_3.l2    ; 0x5bb7
    mov ax, 3                        ; 0x5bba
    push ax                          ; 0x5bbd
    db 0xe8, 0xe8, 0x5b ; call ds_dispatch_b7a9
    pop cx                           ; 0x5bc1
    inc ax                           ; 0x5bc2
    inc ax                           ; 0x5bc3
    inc ax                           ; 0x5bc4
    mov word [bp - 0x0002], ax       ; 0x5bc5
    push word [bp + 0x4]             ; 0x5bc8
    call math_loc_5706               ; 0x5bcb
    pop cx                           ; 0x5bce
    jmp near @..api_idx_000a_3.l2    ; 0x5bcf
    mov ax, 5                        ; 0x5bd2
    push ax                          ; 0x5bd5
    db 0xe8, 0xd0, 0x5b ; call ds_dispatch_b7a9
    pop cx                           ; 0x5bd9
    add ax, strict word 5            ; 0x5bda
    mov word [bp - 0x0002], ax       ; 0x5bdd
    push word [bp + 0x4]             ; 0x5be0
    call math_loc_5706               ; 0x5be3
    pop cx                           ; 0x5be6
    mov ax, 0x248                    ; 0x5be7
    imul word [bp + 0x4]             ; 0x5bea
    db 0x8b, 0xd8 ; mov bx, ax
    add byte [bx + 0x5e3a], 0xfc     ; 0x5bef
    jmp near @..api_idx_000a_3.l2    ; 0x5bf4
    mov ax, 4                        ; 0x5bf7
    push ax                          ; 0x5bfa
    db 0xe8, 0xab, 0x5b ; call ds_dispatch_b7a9
    pop cx                           ; 0x5bfe
    inc ax                           ; 0x5bff
    inc ax                           ; 0x5c00
    inc ax                           ; 0x5c01
    mov word [bp - 0x0002], ax       ; 0x5c02
    push word [bp + 0x4]             ; 0x5c05
    call math_loc_5706               ; 0x5c08
    pop cx                           ; 0x5c0b
    jmp near @..api_idx_000a_3.l2    ; 0x5c0c
    mov ax, 7                        ; 0x5c0f
    push ax                          ; 0x5c12
    db 0xe8, 0x93, 0x5b ; call ds_dispatch_b7a9
    pop cx                           ; 0x5c16
    add ax, strict word 8            ; 0x5c17
    mov word [bp - 0x0002], ax       ; 0x5c1a
    push word [bp + 0x4]             ; 0x5c1d
    call math_loc_5706               ; 0x5c20
    pop cx                           ; 0x5c23
    mov ax, 0x248                    ; 0x5c24
    imul word [bp + 0x4]             ; 0x5c27
    db 0x8b, 0xd8 ; mov bx, ax
    add byte [bx + 0x5e3a], 0xfc     ; 0x5c2c
    jmp near @..api_idx_000a_3.l2    ; 0x5c31
    mov ax, 4                        ; 0x5c34
    push ax                          ; 0x5c37
    db 0xe8, 0x6e, 0x5b ; call ds_dispatch_b7a9
    pop cx                           ; 0x5c3b
    push ax                          ; 0x5c3c
    mov ax, 4                        ; 0x5c3d
    push ax                          ; 0x5c40
    db 0xe8, 0x65, 0x5b ; call ds_dispatch_b7a9
    pop cx                           ; 0x5c44
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax                           ; 0x5c47
    db 0x03, 0xc1 ; add ax, cx
    add ax, strict word 6            ; 0x5c4a
    mov word [bp - 0x0002], ax       ; 0x5c4d
    push word [bp + 0x4]             ; 0x5c50
    call math_loc_5706               ; 0x5c53
    pop cx                           ; 0x5c56
    mov ax, 0x248                    ; 0x5c57
    imul word [bp + 0x4]             ; 0x5c5a
    db 0x8b, 0xd8 ; mov bx, ax
    add byte [bx + 0x5e3a], 0xfb     ; 0x5c5f
    jmp short @..api_idx_000a_3.l2   ; 0x5c64
    mov ax, 4                        ; 0x5c66
    push ax                          ; 0x5c69
    db 0xe8, 0x3c, 0x5b ; call ds_dispatch_b7a9
    pop cx                           ; 0x5c6d
    add ax, strict word 4            ; 0x5c6e
    mov word [bp - 0x0002], ax       ; 0x5c71
    push word [bp + 0x4]             ; 0x5c74
    call math_loc_5706               ; 0x5c77
    pop cx                           ; 0x5c7a
    mov ax, 0x248                    ; 0x5c7b
    imul word [bp + 0x4]             ; 0x5c7e
    db 0x8b, 0xd8 ; mov bx, ax
    dec byte [bx + 0x5e3a]           ; 0x5c83
    dec byte [bx + 0x5e3a]           ; 0x5c87
    jmp short @..api_idx_000a_3.l2   ; 0x5c8b
    mov ax, 5                        ; 0x5c8d
    push ax                          ; 0x5c90
    db 0xe8, 0x15, 0x5b ; call ds_dispatch_b7a9
    pop cx                           ; 0x5c94
    add ax, strict word 4            ; 0x5c95
    mov word [bp - 0x0002], ax       ; 0x5c98
    push word [bp + 0x4]             ; 0x5c9b
    call math_loc_5706               ; 0x5c9e
    pop cx                           ; 0x5ca1
    mov ax, 0x248                    ; 0x5ca2
    imul word [bp + 0x4]             ; 0x5ca5
    db 0x8b, 0xd8 ; mov bx, ax
    dec byte [bx + 0x5e3a]           ; 0x5caa
    dec byte [bx + 0x5e3a]           ; 0x5cae
    jmp short @..api_idx_000a_3.l2   ; 0x5cb2
    and al, 0xab                     ; 0x5cb4
    dec cx                           ; 0x5cb6
    stosw                            ; 0x5cb7
    pushaw                           ; 0x5cb8
    stosw                            ; 0x5cb9
    js short loc_5c67                ; 0x5cba
    pushf                            ; 0x5cbc
    stosw                            ; 0x5cbd
    shr byte [bp + di - 0x5416], cl  ; 0x5cbe
    add word [si - 0x53e7], bp       ; 0x5cc2
    db 0x3e, 0xac ; lodsb
    push si                          ; 0x5cc8
    lodsb                            ; 0x5cc9
    jnp short loc_5c78               ; 0x5cca
    lodsw                            ; 0x5ccc
    lodsb                            ; 0x5ccd
    aam 0xac                         ; 0x5cce
@..api_idx_000a_3.l1:
    cmp ax, strict word 0xe          ; 0x5cd0
    jae short @..api_idx_000a_3.l2   ; 0x5cd3
    xchg bx, ax                      ; 0x5cd5
    shl bx, 1                        ; 0x5cd6
    jmp [cs:bx - 0x5305]             ; 0x5cd8
@..api_idx_000a_3.l2:
    mov ax, word [bp - 0x000a]       ; 0x5cdd
    shl ax, 1                        ; 0x5ce0
    add ax, word [bp - 0x0008]       ; 0x5ce2
    mov cx, 3                        ; 0x5ce5
    imul cx                          ; 0x5ce8
    mov word [bp - 0x0004], ax       ; 0x5cea
    mov ax, word [bp - 0x0008]       ; 0x5ced
    shl ax, 1                        ; 0x5cf0
    add ax, word [bp - 0x000a]       ; 0x5cf2
    imul cx                          ; 0x5cf5
    mov word [bp - 0x0006], ax       ; 0x5cf7
    add word [bp - 0x0002], byte 4   ; 0x5cfa
    cmp word [bp - 0x000a], byte 8   ; 0x5cfe
    jge short @..api_idx_000a_3.l3   ; 0x5d02
    dec word [bp - 0x0002]           ; 0x5d04
@..api_idx_000a_3.l3:
    cmp word [bp - 0x000a], byte 0x0f ; 0x5d07
    jle short @..api_idx_000a_3.l4   ; 0x5d0b
    inc word [bp - 0x0002]           ; 0x5d0d
    mov ax, word [bp - 0x000a]       ; 0x5d10
    add word [bp - 0x0004], ax       ; 0x5d13
@..api_idx_000a_3.l4:
    cmp word [bp - 0x000a], byte 0x11 ; 0x5d16
    jle short @..api_idx_000a_3.l5   ; 0x5d1a
    inc word [bp - 0x0002]           ; 0x5d1c
    mov ax, word [bp - 0x000a]       ; 0x5d1f
    add word [bp - 0x0004], ax       ; 0x5d22
@..api_idx_000a_3.l5:
    cmp word [bp - 0x0008], byte 0x0f ; 0x5d25
    jle short @..api_idx_000a_3.l6   ; 0x5d29
    mov ax, word [bp - 0x0008]       ; 0x5d2b
    add word [bp - 0x0006], ax       ; 0x5d2e
@..api_idx_000a_3.l6:
    cmp word [bp - 0x0008], byte 0x11 ; 0x5d31
    jle short @..api_idx_000a_3.l7   ; 0x5d35
    mov ax, word [bp - 0x0008]       ; 0x5d37
    add word [bp - 0x0006], ax       ; 0x5d3a
@..api_idx_000a_3.l7:
    mov ax, word [bp - 0x0002]       ; 0x5d3d
    push ax                          ; 0x5d40
    mov ax, 0x248                    ; 0x5d41
    imul word [bp + 0x4]             ; 0x5d44
    mov bx, ax                       ; 0x5d47
    pop ax                           ; 0x5d49
    mov word [bx + 0x5c0c], ax       ; 0x5d4a
    mov word [bx + 0x5c0e], ax       ; 0x5d4e
    mov ax, word [bp - 0x0004]       ; 0x5d52
    mov word [bx + 0x5c10], ax       ; 0x5d55
    mov word [bx + 0x5c12], ax       ; 0x5d59
    mov word [bx + 0x5c14], 0        ; 0x5d5d
    mov ax, 0xf                      ; 0x5d63
    imul word [bp - 0x0006]          ; 0x5d66
    mov word [bx + 0x5c16], ax       ; 0x5d69
    cmp byte [bx + 0x5e2b], 5        ; 0x5d6d
    jne short @..api_idx_000a_3.l8   ; 0x5d72
    shl ax, 1                        ; 0x5d74
    cwd                              ; 0x5d76
    idiv cx                          ; 0x5d77
    mov word [bx + 0x5c16], ax       ; 0x5d79
@..api_idx_000a_3.l8:
    ret                              ; 0x5d7d
math_loc_5d7e:
    mov ax, 0                        ; 0x5d7e
    call ds_dispatch_f40b            ; 0x5d81
    mov ax, word [bp + 0x6]          ; 0x5d84
    push ax                          ; 0x5d87
    cmp ax, strict word 1            ; 0x5d88
    pop ax                           ; 0x5d8b
    jge short @..math_loc_5d7e.l1    ; 0x5d8c
    mov ax, 1                        ; 0x5d8e
@..math_loc_5d7e.l1:
    push ax                          ; 0x5d91
    mov ax, 0x248                    ; 0x5d92
    imul word [bp + 0x4]             ; 0x5d95
    mov bx, ax                       ; 0x5d98
    pop ax                           ; 0x5d9a
    mov byte [bx + 0x5d54], al       ; 0x5d9b
    mov ax, word [bp + 0x8]          ; 0x5d9f
    push ax                          ; 0x5da2
    cmp ax, strict word 1            ; 0x5da3
    pop ax                           ; 0x5da6
    jge short @..math_loc_5d7e.l2    ; 0x5da7
    mov ax, 1                        ; 0x5da9
@..math_loc_5d7e.l2:
    mov byte [bx + 0x5d55], al       ; 0x5dac
    mov ax, word [bp + 0xa]          ; 0x5db0
    push ax                          ; 0x5db3
    cmp ax, strict word 1            ; 0x5db4
    pop ax                           ; 0x5db7
    jge short @..math_loc_5d7e.l3    ; 0x5db8
    mov ax, 1                        ; 0x5dba
@..math_loc_5d7e.l3:
    mov byte [bx + 0x5d56], al       ; 0x5dbd
    mov ax, word [bp + 0xc]          ; 0x5dc1
    push ax                          ; 0x5dc4
    cmp ax, strict word 1            ; 0x5dc5
    pop ax                           ; 0x5dc8
    jge short @..math_loc_5d7e.l4    ; 0x5dc9
    mov ax, 1                        ; 0x5dcb
@..math_loc_5d7e.l4:
    mov byte [bx + 0x5d57], al       ; 0x5dce
    mov ax, word [bp + 0xe]          ; 0x5dd2
    push ax                          ; 0x5dd5
    cmp ax, strict word 1            ; 0x5dd6
    pop ax                           ; 0x5dd9
    jge short @..math_loc_5d7e.l5    ; 0x5dda
    mov ax, 1                        ; 0x5ddc
@..math_loc_5d7e.l5:
    mov byte [bx + 0x5d58], al       ; 0x5ddf
    mov ax, word [bp + 0x10]         ; 0x5de3
    push ax                          ; 0x5de6
    cmp ax, strict word 1            ; 0x5de7
    pop ax                           ; 0x5dea
    jge short @..math_loc_5d7e.l6    ; 0x5deb
    mov ax, 1                        ; 0x5ded
@..math_loc_5d7e.l6:
    mov byte [bx + 0x5d59], al       ; 0x5df0
    ret                              ; 0x5df4
api_idx_0004_7:
    mov ax, 0xfffc                   ; 0x5df5
    call ds_dispatch_f40b            ; 0x5df8
    mov ax, 0x248                    ; 0x5dfb
    imul word [bp + 0x4]             ; 0x5dfe
    mov bx, ax                       ; 0x5e01
    mov al, byte [bx + 0x5d67]       ; 0x5e03
    sub ah, ah                       ; 0x5e07
    push ax                          ; 0x5e09
    mov al, byte [bx + 0x5d66]       ; 0x5e0a
    sub ah, ah                       ; 0x5e0e
    mov cx, ax                       ; 0x5e10
    shl ax, 1                        ; 0x5e12
    mov cx, ax                       ; 0x5e14
    pop ax                           ; 0x5e16
    add ax, cx                       ; 0x5e17
    mov cx, 3                        ; 0x5e19
    cwd                              ; 0x5e1c
    idiv cx                          ; 0x5e1d
    mov word [bp - 0x0002], ax       ; 0x5e1f
    mov word [bp - 0x0004], 0        ; 0x5e22
    cmp ax, strict word 0xd          ; 0x5e27
    jle short @..api_idx_0004_7.l1   ; 0x5e2a
    inc word [bp - 0x0004]           ; 0x5e2c
@..api_idx_0004_7.l1:
    cmp ax, strict word 0x10         ; 0x5e2f
    jle short @..api_idx_0004_7.l2   ; 0x5e32
    inc word [bp - 0x0004]           ; 0x5e34
@..api_idx_0004_7.l2:
    cmp byte [bx + 0x5e2b], 5        ; 0x5e37
    jne short @..api_idx_0004_7.l3   ; 0x5e3c
    inc word [bp - 0x0004]           ; 0x5e3e
@..api_idx_0004_7.l3:
    cmp byte [bx + 0x5e2b], 6        ; 0x5e41
    jne short @..api_idx_0004_7.l4   ; 0x5e46
    dec word [bp - 0x0004]           ; 0x5e48
@..api_idx_0004_7.l4:
    mov al, byte [bx + 0x5e2d]       ; 0x5e4b
    sub ah, ah                       ; 0x5e4f
    jmp near @..api_idx_0004_7.l5    ; 0x5e51
    mov ax, word [bp - 0x0004]       ; 0x5e54
    inc ax                           ; 0x5e57
    push ax                          ; 0x5e58
    push ax                          ; 0x5e59
    push ax                          ; 0x5e5a
    push ax                          ; 0x5e5b
    push ax                          ; 0x5e5c
    push ax                          ; 0x5e5d
    push word [bp + 0x4]             ; 0x5e5e
    call math_loc_5d7e               ; 0x5e61
    add sp, byte 0x0e                ; 0x5e64
    jmp near @..api_idx_0004_7.l6    ; 0x5e67
    mov ax, 0x248                    ; 0x5e6a
    imul word [bp + 0x4]             ; 0x5e6d
    db 0x8b, 0xd8 ; mov bx, ax
    mov byte [bx + 0x5d50], data_0002 ; 0x5e72
    mov ax, word [bp - 0x0004]       ; 0x5e77
    inc ax                           ; 0x5e7a
    inc ax                           ; 0x5e7b
    inc ax                           ; 0x5e7c
    push ax                          ; 0x5e7d
    mov ax, word [bp - 0x0004]       ; 0x5e7e
    inc ax                           ; 0x5e81
    inc ax                           ; 0x5e82
    push ax                          ; 0x5e83
    push ax                          ; 0x5e84
    push ax                          ; 0x5e85
    mov ax, word [bp - 0x0004]       ; 0x5e86
    inc ax                           ; 0x5e89
    inc ax                           ; 0x5e8a
    inc ax                           ; 0x5e8b
    push ax                          ; 0x5e8c
    push ax                          ; 0x5e8d
    push word [bp + 0x4]             ; 0x5e8e
    call math_loc_5d7e               ; 0x5e91
    add sp, byte 0x0e                ; 0x5e94
    jmp near @..api_idx_0004_7.l6    ; 0x5e97
    mov ax, 0x248                    ; 0x5e9a
    imul word [bp + 0x4]             ; 0x5e9d
    db 0x8b, 0xd8 ; mov bx, ax
    mov byte [bx + 0x5d51], data_0002 ; 0x5ea2
    mov ax, word [bp - 0x0004]       ; 0x5ea7
    inc ax                           ; 0x5eaa
    inc ax                           ; 0x5eab
    inc ax                           ; 0x5eac
    push ax                          ; 0x5ead
    push ax                          ; 0x5eae
    mov ax, word [bp - 0x0004]       ; 0x5eaf
    inc ax                           ; 0x5eb2
    inc ax                           ; 0x5eb3
    push ax                          ; 0x5eb4
    push ax                          ; 0x5eb5
    mov ax, word [bp - 0x0004]       ; 0x5eb6
    inc ax                           ; 0x5eb9
    inc ax                           ; 0x5eba
    inc ax                           ; 0x5ebb
    push ax                          ; 0x5ebc
    mov ax, word [bp - 0x0004]       ; 0x5ebd
    inc ax                           ; 0x5ec0
    inc ax                           ; 0x5ec1
    push ax                          ; 0x5ec2
    push word [bp + 0x4]             ; 0x5ec3
    call math_loc_5d7e               ; 0x5ec6
    add sp, byte 0x0e                ; 0x5ec9
    jmp near @..api_idx_0004_7.l6    ; 0x5ecc
    mov ax, word [bp - 0x0004]       ; 0x5ecf
    inc ax                           ; 0x5ed2
    push ax                          ; 0x5ed3
    mov ax, word [bp - 0x0004]       ; 0x5ed4
    inc ax                           ; 0x5ed7
    inc ax                           ; 0x5ed8
    push ax                          ; 0x5ed9
    push ax                          ; 0x5eda
    push ax                          ; 0x5edb
    mov ax, word [bp - 0x0004]       ; 0x5edc
    inc ax                           ; 0x5edf
    push ax                          ; 0x5ee0
    push ax                          ; 0x5ee1
    push word [bp + 0x4]             ; 0x5ee2
    call math_loc_5d7e               ; 0x5ee5
    add sp, byte 0x0e                ; 0x5ee8
    jmp near @..api_idx_0004_7.l6    ; 0x5eeb
    mov ax, 0x248                    ; 0x5eee
    imul word [bp + 0x4]             ; 0x5ef1
    db 0x8b, 0xd8 ; mov bx, ax
    mov byte [bx + 0x5d52], data_0002 ; 0x5ef6
    mov ax, word [bp - 0x0004]       ; 0x5efb
    inc ax                           ; 0x5efe
    inc ax                           ; 0x5eff
    push ax                          ; 0x5f00
    push ax                          ; 0x5f01
    mov ax, word [bp - 0x0004]       ; 0x5f02
    inc ax                           ; 0x5f05
    inc ax                           ; 0x5f06
    inc ax                           ; 0x5f07
    push ax                          ; 0x5f08
    push ax                          ; 0x5f09
    mov ax, word [bp - 0x0004]       ; 0x5f0a
    inc ax                           ; 0x5f0d
    inc ax                           ; 0x5f0e
    push ax                          ; 0x5f0f
    mov ax, word [bp - 0x0004]       ; 0x5f10
    inc ax                           ; 0x5f13
    inc ax                           ; 0x5f14
    inc ax                           ; 0x5f15
    push ax                          ; 0x5f16
    push word [bp + 0x4]             ; 0x5f17
    call math_loc_5d7e               ; 0x5f1a
    add sp, byte 0x0e                ; 0x5f1d
    jmp near @..api_idx_0004_7.l6    ; 0x5f20
    mov ax, word [bp - 0x0004]       ; 0x5f23
    inc ax                           ; 0x5f26
    push ax                          ; 0x5f27
    mov ax, word [bp - 0x0004]       ; 0x5f28
    inc ax                           ; 0x5f2b
    inc ax                           ; 0x5f2c
    push ax                          ; 0x5f2d
    mov ax, word [bp - 0x0004]       ; 0x5f2e
    inc ax                           ; 0x5f31
    push ax                          ; 0x5f32
    push ax                          ; 0x5f33
    mov ax, word [bp - 0x0004]       ; 0x5f34
    inc ax                           ; 0x5f37
    inc ax                           ; 0x5f38
    push ax                          ; 0x5f39
    push ax                          ; 0x5f3a
    push word [bp + 0x4]             ; 0x5f3b
    call math_loc_5d7e               ; 0x5f3e
    add sp, byte 0x0e                ; 0x5f41
    jmp near @..api_idx_0004_7.l6    ; 0x5f44
    mov ax, 0x248                    ; 0x5f47
    imul word [bp + 0x4]             ; 0x5f4a
    db 0x8b, 0xd8 ; mov bx, ax
    mov byte [bx + 0x5d53], data_0002 ; 0x5f4f
    mov ax, word [bp - 0x0004]       ; 0x5f54
    inc ax                           ; 0x5f57
    inc ax                           ; 0x5f58
    push ax                          ; 0x5f59
    mov ax, word [bp - 0x0004]       ; 0x5f5a
    add ax, strict word 4            ; 0x5f5d
    push ax                          ; 0x5f60
    mov ax, word [bp - 0x0004]       ; 0x5f61
    inc ax                           ; 0x5f64
    inc ax                           ; 0x5f65
    push ax                          ; 0x5f66
    push ax                          ; 0x5f67
    push ax                          ; 0x5f68
    mov ax, word [bp - 0x0004]       ; 0x5f69
    inc ax                           ; 0x5f6c
    inc ax                           ; 0x5f6d
    inc ax                           ; 0x5f6e
    push ax                          ; 0x5f6f
    push word [bp + 0x4]             ; 0x5f70
    call math_loc_5d7e               ; 0x5f73
    add sp, byte 0x0e                ; 0x5f76
    jmp near @..api_idx_0004_7.l6    ; 0x5f79
    mov ax, word [bp - 0x0004]       ; 0x5f7c
    inc ax                           ; 0x5f7f
    inc ax                           ; 0x5f80
    push ax                          ; 0x5f81
    mov ax, word [bp - 0x0004]       ; 0x5f82
    inc ax                           ; 0x5f85
    push ax                          ; 0x5f86
    push ax                          ; 0x5f87
    mov ax, word [bp - 0x0004]       ; 0x5f88
    inc ax                           ; 0x5f8b
    inc ax                           ; 0x5f8c
    push ax                          ; 0x5f8d
    push ax                          ; 0x5f8e
    mov ax, word [bp - 0x0004]       ; 0x5f8f
    inc ax                           ; 0x5f92
    push ax                          ; 0x5f93
    push word [bp + 0x4]             ; 0x5f94
    call math_loc_5d7e               ; 0x5f97
    add sp, byte 0x0e                ; 0x5f9a
    jmp near @..api_idx_0004_7.l6    ; 0x5f9d
    mov ax, 0x248                    ; 0x5fa0
    imul word [bp + 0x4]             ; 0x5fa3
    db 0x8b, 0xd8 ; mov bx, ax
    mov byte [bx + 0x5d50], 1        ; 0x5fa8
    mov byte [bx + 0x5d51], 1        ; 0x5fad
    mov ax, word [bp - 0x0004]       ; 0x5fb2
    inc ax                           ; 0x5fb5
    inc ax                           ; 0x5fb6
    inc ax                           ; 0x5fb7
    push ax                          ; 0x5fb8
    mov ax, word [bp - 0x0004]       ; 0x5fb9
    inc ax                           ; 0x5fbc
    inc ax                           ; 0x5fbd
    push ax                          ; 0x5fbe
    push ax                          ; 0x5fbf
    push ax                          ; 0x5fc0
    push ax                          ; 0x5fc1
    push ax                          ; 0x5fc2
    push word [bp + 0x4]             ; 0x5fc3
    call math_loc_5d7e               ; 0x5fc6
    add sp, byte 0x0e                ; 0x5fc9
    jmp near @..api_idx_0004_7.l6    ; 0x5fcc
    mov ax, word [bp - 0x0004]       ; 0x5fcf
    inc ax                           ; 0x5fd2
    inc ax                           ; 0x5fd3
    push ax                          ; 0x5fd4
    mov ax, word [bp - 0x0004]       ; 0x5fd5
    inc ax                           ; 0x5fd8
    push ax                          ; 0x5fd9
    push ax                          ; 0x5fda
    mov ax, word [bp - 0x0004]       ; 0x5fdb
    inc ax                           ; 0x5fde
    inc ax                           ; 0x5fdf
    push ax                          ; 0x5fe0
    push ax                          ; 0x5fe1
    mov ax, word [bp - 0x0004]       ; 0x5fe2
    inc ax                           ; 0x5fe5
    push ax                          ; 0x5fe6
    push word [bp + 0x4]             ; 0x5fe7
    call math_loc_5d7e               ; 0x5fea
    add sp, byte 0x0e                ; 0x5fed
    jmp near @..api_idx_0004_7.l6    ; 0x5ff0
    mov ax, word [bp - 0x0004]       ; 0x5ff3
    inc ax                           ; 0x5ff6
    inc ax                           ; 0x5ff7
    push ax                          ; 0x5ff8
    mov ax, word [bp - 0x0004]       ; 0x5ff9
    inc ax                           ; 0x5ffc
    push ax                          ; 0x5ffd
    push ax                          ; 0x5ffe
    push ax                          ; 0x5fff
    mov ax, word [bp - 0x0004]       ; 0x6000
    inc ax                           ; 0x6003
    inc ax                           ; 0x6004
    push ax                          ; 0x6005
    push ax                          ; 0x6006
    push word [bp + 0x4]             ; 0x6007
    call math_loc_5d7e               ; 0x600a
    add sp, byte 0x0e                ; 0x600d
    jmp short @..api_idx_0004_7.l6   ; 0x6010
    mov ax, word [bp - 0x0004]       ; 0x6012
    inc ax                           ; 0x6015
    push ax                          ; 0x6016
    mov ax, word [bp - 0x0004]       ; 0x6017
    inc ax                           ; 0x601a
    inc ax                           ; 0x601b
    inc ax                           ; 0x601c
    push ax                          ; 0x601d
    mov ax, word [bp - 0x0004]       ; 0x601e
    inc ax                           ; 0x6021
    push ax                          ; 0x6022
    push ax                          ; 0x6023
    push ax                          ; 0x6024
    mov ax, word [bp - 0x0004]       ; 0x6025
    inc ax                           ; 0x6028
    inc ax                           ; 0x6029
    push ax                          ; 0x602a
    push word [bp + 0x4]             ; 0x602b
    call math_loc_5d7e               ; 0x602e
    add sp, byte 0x0e                ; 0x6031
    jmp short @..api_idx_0004_7.l6   ; 0x6034
    mov ax, word [bp - 0x0004]       ; 0x6036
    inc ax                           ; 0x6039
    push ax                          ; 0x603a
    push ax                          ; 0x603b
    mov ax, word [bp - 0x0004]       ; 0x603c
    inc ax                           ; 0x603f
    inc ax                           ; 0x6040
    push ax                          ; 0x6041
    push ax                          ; 0x6042
    mov ax, word [bp - 0x0004]       ; 0x6043
    inc ax                           ; 0x6046
    push ax                          ; 0x6047
    mov ax, word [bp - 0x0004]       ; 0x6048
    inc ax                           ; 0x604b
    inc ax                           ; 0x604c
    push ax                          ; 0x604d
    push word [bp + 0x4]             ; 0x604e
    call math_loc_5d7e               ; 0x6051
    add sp, byte 0x0e                ; 0x6054
    jmp short @..api_idx_0004_7.l6   ; 0x6057
    wait                             ; 0x6059
    scasb                            ; 0x605a
    mov cl, 0xae                     ; 0x605b
    loope loc_600d                   ; 0x605d
    wait                             ; 0x605f
    scasb                            ; 0x6060
    push ss                          ; 0x6061
    scasw                            ; 0x6062
    xor ax, 0x6aaf                   ; 0x6063
    scasw                            ; 0x6066
    mov gs, word [bx - 0x503d]       ; 0x6067
    out 0xaf, ax                     ; 0x606b
    push ss                          ; 0x606d
    mov al, 0x3a                     ; 0x606e
    mov al, 0x59                     ; 0x6070
    mov al, 0x7d                     ; 0x6072
    db 0xb0
@..api_idx_0004_7.l5:
    cmp ax, strict word 0xe          ; 0x6075
    jae short @..api_idx_0004_7.l6   ; 0x6078
    xchg bx, ax                      ; 0x607a
    shl bx, 1                        ; 0x607b
    jmp [cs:bx - 0x4f60]             ; 0x607d
@..api_idx_0004_7.l6:
    ret                              ; 0x6082
api_idx_0016:
    mov ax, 0xffea                   ; 0x6083
    call ds_dispatch_f40b            ; 0x6086
    mov ax, 0x94e9                   ; 0x6089
    push ax                          ; 0x608c
    lea ax, word [bp - 0x0016]       ; 0x608d
    push ax                          ; 0x6090
    call ds_dispatch_f364            ; 0x6091
    add sp, byte 4                   ; 0x6094
    mov ax, 0                        ; 0x6097
    push ax                          ; 0x609a
    call ds_dispatch_ef14            ; 0x609b
    pop cx                           ; 0x609e
    mov ax, 0                        ; 0x609f
    push ax                          ; 0x60a2
    push ax                          ; 0x60a3
    lea ax, word [bp - 0x0016]       ; 0x60a4
    push ax                          ; 0x60a7
    call ds_dispatch_d161            ; 0x60a8
    add sp, byte 4                   ; 0x60ab
    push ax                          ; 0x60ae
    call ds_dispatch_f909            ; 0x60af
    add sp, byte 4                   ; 0x60b2
    mov word [bp - 0x0002], ax       ; 0x60b5
    cmp ax, strict word 0xffff       ; 0x60b8
    jne short @..api_idx_0016.l1     ; 0x60bb
    mov ax, 0x13                     ; 0x60bd
    push ax                          ; 0x60c0
    call ds_dispatch_b171            ; 0x60c1
    pop cx                           ; 0x60c4
@..api_idx_0016.l1:
    push word [bp + 0x6]             ; 0x60c5
    push word [bp + 0x4]             ; 0x60c8
    mov ax, 5                        ; 0x60cb
    push ax                          ; 0x60ce
    push word [bp - 0x0002]          ; 0x60cf
    call ds_dispatch_e743            ; 0x60d2
    add sp, byte 8                   ; 0x60d5
    push word [bp - 0x0002]          ; 0x60d8
    call ds_dispatch_fda5            ; 0x60db
    pop cx                           ; 0x60de
    ret                              ; 0x60df
api_idx_0006_3:
    mov ax, 0xfffa                   ; 0x60e0
    call ds_dispatch_f40b            ; 0x60e3
    mov ax, 8                        ; 0x60e6
    push ax                          ; 0x60e9
    mov ax, 0xb                      ; 0x60ea
    push ax                          ; 0x60ed
    mov ax, 0x4a                     ; 0x60ee
    push ax                          ; 0x60f1
    mov ax, 0x26                     ; 0x60f2
    push ax                          ; 0x60f5
    mov ax, 0x11                     ; 0x60f6
    push ax                          ; 0x60f9
    mov ax, 0xc                      ; 0x60fa
    push ax                          ; 0x60fd
    mov ax, 0                        ; 0x60fe
    push ax                          ; 0x6101
    call ds_dispatch_baa6            ; 0x6102
    add sp, byte 0x0e                ; 0x6105
    mov ax, 0xa                      ; 0x6108
    push ax                          ; 0x610b
    mov ax, 9                        ; 0x610c
    push ax                          ; 0x610f
    mov ax, 0x4a                     ; 0x6110
    push ax                          ; 0x6113
    mov ax, 0x43                     ; 0x6114
    push ax                          ; 0x6117
    mov ax, 0x11                     ; 0x6118
    push ax                          ; 0x611b
    mov ax, 0x27                     ; 0x611c
    push ax                          ; 0x611f
    mov ax, 1                        ; 0x6120
    push ax                          ; 0x6123
    call ds_dispatch_baa6            ; 0x6124
    add sp, byte 0x0e                ; 0x6127
    mov ax, data_0002                ; 0x612a
    push ax                          ; 0x612d
    mov ax, 1                        ; 0x612e
    push ax                          ; 0x6131
    mov ax, 0x18                     ; 0x6132
    push ax                          ; 0x6135
    mov ax, 0x97                     ; 0x6136
    push ax                          ; 0x6139
    mov ax, 0x58                     ; 0x613a
    push ax                          ; 0x613d
    mov ax, 0x454                    ; 0x613e
    push ax                          ; 0x6141
    call api_idx_0058                ; 0x6142
    add sp, byte 0x0c                ; 0x6145
    mov word [bp - 0x0004], dx       ; 0x6148
    mov word [bp - 0x0006], ax       ; 0x614b
    call ds_dispatch_ec17            ; 0x614e
@..api_idx_0006_3.l1:
    mov ax, 0                        ; 0x6151
    push ax                          ; 0x6154
    push word [bp + 0x8]             ; 0x6155
    push word [bp + 0x6]             ; 0x6158
    call ds_dispatch_e94f            ; 0x615b
    add sp, byte 6                   ; 0x615e
    mov ax, 0                        ; 0x6161
    push ax                          ; 0x6164
    mov ax, 0x248                    ; 0x6165
    imul word [bp + 0x4]             ; 0x6168
    mov bx, ax                       ; 0x616b
    mov al, byte [bx + 0x5e2a]       ; 0x616d
    sub ah, ah                       ; 0x6171
    push ax                          ; 0x6173
    call api_idx_0016                ; 0x6174
    add sp, byte 4                   ; 0x6177
    mov ax, 0x12                     ; 0x617a
    push ax                          ; 0x617d
    mov ax, 0xe                      ; 0x617e
    push ax                          ; 0x6181
    push word [bp + 0x4]             ; 0x6182
    call api_idx_0010                ; 0x6185
    add sp, byte 6                   ; 0x6188
    mov ax, 0x4a                     ; 0x618b
    push ax                          ; 0x618e
    mov ax, data_0042                ; 0x618f
    push ax                          ; 0x6192
    mov ax, 0x12                     ; 0x6193
    push ax                          ; 0x6196
    mov ax, 0xe                      ; 0x6197
    push ax                          ; 0x619a
    call ds_dispatch_e8da            ; 0x619b
    add sp, byte 8                   ; 0x619e
@..api_idx_0006_3.l2:
    mov ax, 0x59fe                   ; 0x61a1
    push ax                          ; 0x61a4
    call ds_dispatch_b90d            ; 0x61a5
    pop cx                           ; 0x61a8
    dec ax                           ; 0x61a9
    mov word [bp - 0x0002], ax       ; 0x61aa
    cmp word [data_5b3e], byte 0     ; 0x61ad
    je short @..api_idx_0006_3.l2    ; 0x61b2
    mov ax, word [bp - 0x0002]       ; 0x61b4
    jmp short @..api_idx_0006_3.l5   ; 0x61b7
@..api_idx_0006_3.l3:
    mov ax, 0x248                    ; 0x61b9
    imul word [bp + 0x4]             ; 0x61bc
    mov bx, ax                       ; 0x61bf
    mov al, byte [bx + 0x5e2a]       ; 0x61c1
    sub ah, ah                       ; 0x61c5
    add ax, strict word 0x20         ; 0x61c7
    mov cx, api_idx_0002             ; 0x61ca
    cwd                              ; 0x61cd
    idiv cx                          ; 0x61ce
    mov ax, dx                       ; 0x61d0
    mov byte [bx + 0x5e2a], al       ; 0x61d2
    jmp short @..api_idx_0006_3.l6   ; 0x61d6
@..api_idx_0006_3.l4:
    mov ax, 0x248                    ; 0x61d8
    imul word [bp + 0x4]             ; 0x61db
    mov bx, ax                       ; 0x61de
    mov al, byte [bx + 0x5e2a]       ; 0x61e0
    sub ah, ah                       ; 0x61e4
    inc ax                           ; 0x61e6
    mov cx, api_idx_0002             ; 0x61e7
    cwd                              ; 0x61ea
    idiv cx                          ; 0x61eb
    mov ax, dx                       ; 0x61ed
    mov byte [bx + 0x5e2a], al       ; 0x61ef
    jmp short @..api_idx_0006_3.l6   ; 0x61f3
@..api_idx_0006_3.l5:
    cmp ax, strict word 0            ; 0x61f5
    je short @..api_idx_0006_3.l3    ; 0x61f8
    cmp ax, strict word 1            ; 0x61fa
    je short @..api_idx_0006_3.l4    ; 0x61fd
@..api_idx_0006_3.l6:
    cmp word [bp - 0x0002], byte 2   ; 0x61ff
    je short @..api_idx_0006_3.l7    ; 0x6203
    jmp near @..api_idx_0006_3.l1    ; 0x6205
@..api_idx_0006_3.l7:
    mov ax, 1                        ; 0x6208
    push ax                          ; 0x620b
    push ax                          ; 0x620c
    mov ax, 0x18                     ; 0x620d
    push ax                          ; 0x6210
    mov ax, 0x97                     ; 0x6211
    push ax                          ; 0x6214
    mov ax, 0x58                     ; 0x6215
    push ax                          ; 0x6218
    call ds_dispatch_be5f            ; 0x6219
    add sp, byte 0x0a                ; 0x621c
    mov ax, 0                        ; 0x621f
    push ax                          ; 0x6222
    mov ax, 1                        ; 0x6223
    push ax                          ; 0x6226
    mov ax, 0x18                     ; 0x6227
    push ax                          ; 0x622a
    mov ax, 0x97                     ; 0x622b
    push ax                          ; 0x622e
    mov ax, 0x58                     ; 0x622f
    push ax                          ; 0x6232
    call ds_dispatch_be5f            ; 0x6233
    add sp, byte 0x0a                ; 0x6236
    mov ax, 1                        ; 0x6239
    push ax                          ; 0x623c
    push word [bp - 0x0004]          ; 0x623d
    push word [bp - 0x0006]          ; 0x6240
    call ds_dispatch_e94f            ; 0x6243
    add sp, byte 6                   ; 0x6246
    mov ax, 0x12                     ; 0x6249
    push ax                          ; 0x624c
    mov ax, 0xe                      ; 0x624d
    push ax                          ; 0x6250
    push word [bp + 0x4]             ; 0x6251
    call api_idx_0010                ; 0x6254
    add sp, byte 6                   ; 0x6257
    mov ax, 0xc7                     ; 0x625a
    push ax                          ; 0x625d
    mov ax, 0x13f                    ; 0x625e
    push ax                          ; 0x6261
    mov ax, 0                        ; 0x6262
    push ax                          ; 0x6265
    push ax                          ; 0x6266
    call ds_dispatch_e8da            ; 0x6267
    add sp, byte 8                   ; 0x626a
    ret                              ; 0x626d
api_idx_0002_12:
    mov ax, 0xfffe                   ; 0x626e
    call ds_dispatch_f40b            ; 0x6271
    mov ax, 0x248                    ; 0x6274
    imul word [bp + 0x4]             ; 0x6277
    mov bx, ax                       ; 0x627a
    mov byte [bx + 0x5e3a], 0x64     ; 0x627c
    push word [bp + 0x4]             ; 0x6281
    call api_idx_000a_3              ; 0x6284
    pop cx                           ; 0x6287
    push word [bp + 0x4]             ; 0x6288
    call api_idx_0004_7              ; 0x628b
    pop cx                           ; 0x628e
    mov ax, 0x248                    ; 0x628f
    imul word [bp + 0x4]             ; 0x6292
    mov bx, ax                       ; 0x6295
    mov byte [bx + 0x5e30], 0        ; 0x6297
    mov byte [bx + 0x5e31], 0        ; 0x629c
    mov byte [bx + 0x5e33], 0        ; 0x62a1
    mov byte [bx + 0x5e2e], 0        ; 0x62a6
    mov word [bx + 0x5c18], 1        ; 0x62ab
    mov word [bx + 0x5c1a], 1        ; 0x62b1
    mov word [bp - 0x0002], 0        ; 0x62b7
@..api_idx_0002_12.l1:
    mov ax, 0x248                    ; 0x62bc
    imul word [bp + 0x4]             ; 0x62bf
    add ax, word [bp - 0x0002]       ; 0x62c2
    mov bx, ax                       ; 0x62c5
    mov byte [bx + 0x5d48], 0xff     ; 0x62c7
    inc word [bp - 0x0002]           ; 0x62cc
    mov ax, word [bp - 0x0002]       ; 0x62cf
    cmp ax, strict word 8            ; 0x62d2
    jl short @..api_idx_0002_12.l1   ; 0x62d5
    push word [bp + 0x4]             ; 0x62d7
    call api_idx_0004_6              ; 0x62da
    pop cx                           ; 0x62dd
    mov ax, 0x248                    ; 0x62de
    imul word [bp + 0x4]             ; 0x62e1
    mov bx, ax                       ; 0x62e4
    mov byte [bx + 0x5e37], 1        ; 0x62e6
    mov byte [bx + 0x5e38], 1        ; 0x62eb
    mov al, byte [bx + 0x5d69]       ; 0x62f0
    inc al                           ; 0x62f4
    mov byte [bx + 0x5e39], al       ; 0x62f6
    ret                              ; 0x62fa
math_loc_62fb:
    mov ax, 0xfd84                   ; 0x62fb
    call ds_dispatch_f40b            ; 0x62fe
    mov word [bp - 0x0006], 0        ; 0x6301
    mov ax, 0                        ; 0x6306
    push ax                          ; 0x6309
    mov ax, 0x248                    ; 0x630a
    push ax                          ; 0x630d
    mov ax, 0x248                    ; 0x630e
    imul word [bp - 0x0006]          ; 0x6311
    add ax, 0x5bf4                   ; 0x6314
    push ax                          ; 0x6317
    call ds_dispatch_f306            ; 0x6318
    add sp, byte 6                   ; 0x631b
    push word [bp + 0x4]             ; 0x631e
    mov ax, 0x248                    ; 0x6321
    imul word [bp - 0x0006]          ; 0x6324
    add ax, 0x5bf4                   ; 0x6327
    push ax                          ; 0x632a
    call ds_dispatch_f364            ; 0x632b
    add sp, byte 4                   ; 0x632e
    mov ax, 0                        ; 0x6331
    push ax                          ; 0x6334
    push ax                          ; 0x6335
    call ds_dispatch_e823            ; 0x6336
    add sp, byte 4                   ; 0x6339
    mov ax, 0x4c                     ; 0x633c
    push ax                          ; 0x633f
    mov ax, 0x248                    ; 0x6340
    imul word [bp - 0x0006]          ; 0x6343
    add ax, 0x5bf4                   ; 0x6346
    push ax                          ; 0x6349
    call ds_dispatch_fa90            ; 0x634a
    pop cx                           ; 0x634d
    mov cx, 6                        ; 0x634e
    imul cx                          ; 0x6351
    mov cx, data_0002                ; 0x6353
    cwd                              ; 0x6356
    idiv cx                          ; 0x6357
    mov cx, ax                       ; 0x6359
    mov ax, 0x28                     ; 0x635b
    sub ax, cx                       ; 0x635e
    push ax                          ; 0x6360
    call ds_dispatch_e809            ; 0x6361
    add sp, byte 4                   ; 0x6364
    mov ax, 0                        ; 0x6367
    push ax                          ; 0x636a
    mov ax, 0x248                    ; 0x636b
    imul word [bp - 0x0006]          ; 0x636e
    add ax, 0x5bf4                   ; 0x6371
    push ax                          ; 0x6374
    call ds_dispatch_e84e            ; 0x6375
    add sp, byte 4                   ; 0x6378
    mov word [data_9594], 0xffff     ; 0x637b
    push word [bp - 0x0006]          ; 0x6381
    call api_idx_007a                ; 0x6384
    pop cx                           ; 0x6387
    push word [bp - 0x0006]          ; 0x6388
    call api_idx_007a_2              ; 0x638b
    pop cx                           ; 0x638e
    mov ax, 6                        ; 0x638f
    push ax                          ; 0x6392
    call ds_dispatch_b7a9            ; 0x6393
    pop cx                           ; 0x6396
    add ax, strict word 5            ; 0x6397
    mov word [data_9594], ax         ; 0x639a
    mov ax, 0x14                     ; 0x639d
    push ax                          ; 0x63a0
    call ds_dispatch_b7a9            ; 0x63a1
    pop cx                           ; 0x63a4
    test ax, ax                      ; 0x63a5
    jne short @..math_loc_62fb.l1    ; 0x63a7
    add word [data_9594], byte 8     ; 0x63a9
@..math_loc_62fb.l1:
    mov ax, 0x14                     ; 0x63ae
    push ax                          ; 0x63b1
    call ds_dispatch_b7a9            ; 0x63b2
    pop cx                           ; 0x63b5
    test ax, ax                      ; 0x63b6
    jne short @..math_loc_62fb.l2    ; 0x63b8
    add word [data_9594], byte 8     ; 0x63ba
@..math_loc_62fb.l2:
    cmp word [data_9594], byte 9     ; 0x63bf
    jge short @..math_loc_62fb.l3    ; 0x63c4
    mov ax, 4                        ; 0x63c6
    push ax                          ; 0x63c9
    call ds_dispatch_b7a9            ; 0x63ca
    pop cx                           ; 0x63cd
    add ax, strict word 8            ; 0x63ce
    mov word [data_9594], ax         ; 0x63d1
@..math_loc_62fb.l3:
    cmp word [data_978a], byte 1     ; 0x63d4
    jne short @..math_loc_62fb.l4    ; 0x63d9
    mov ax, 0xa                      ; 0x63db
    push ax                          ; 0x63de
    call ds_dispatch_b7a9            ; 0x63df
    pop cx                           ; 0x63e2
    add ax, strict word 0x15         ; 0x63e3
    mov word [data_9594], ax         ; 0x63e6
@..math_loc_62fb.l4:
    mov ax, 1                        ; 0x63e9
    push ax                          ; 0x63ec
    push word [bp - 0x0006]          ; 0x63ed
    call api_idx_0002_5              ; 0x63f0
    add sp, byte 4                   ; 0x63f3
    push word [bp - 0x0006]          ; 0x63f6
    call api_idx_007c                ; 0x63f9
    pop cx                           ; 0x63fc
    push word [bp - 0x0006]          ; 0x63fd
    call api_idx_006c                ; 0x6400
    pop cx                           ; 0x6403
    push word [bp - 0x0006]          ; 0x6404
    call api_idx_0002_12             ; 0x6407
    pop cx                           ; 0x640a
    push word [bp - 0x0006]          ; 0x640b
    call math_loc_4c82               ; 0x640e
    pop cx                           ; 0x6411
    push word [bp - 0x0006]          ; 0x6412
    call api_idx_0054                ; 0x6415
    pop cx                           ; 0x6418
    mov ax, 0                        ; 0x6419
    push ax                          ; 0x641c
    push word [bp - 0x0006]          ; 0x641d
    call api_idx_0002_5              ; 0x6420
    add sp, byte 4                   ; 0x6423
    mov ax, 0xc7                     ; 0x6426
    push ax                          ; 0x6429
    mov ax, 0x13f                    ; 0x642a
    push ax                          ; 0x642d
    mov ax, 0                        ; 0x642e
    push ax                          ; 0x6431
    push ax                          ; 0x6432
    call ds_dispatch_e8da            ; 0x6433
    add sp, byte 8                   ; 0x6436
    mov ax, 0x4a                     ; 0x6439
    push ax                          ; 0x643c
    mov ax, data_0042                ; 0x643d
    push ax                          ; 0x6440
    mov ax, 0x12                     ; 0x6441
    push ax                          ; 0x6444
    mov ax, 0xe                      ; 0x6445
    push ax                          ; 0x6448
    call ds_dispatch_e928            ; 0x6449
    add sp, byte 8                   ; 0x644c
    mov word [bp - 0x027a], dx       ; 0x644f
    mov word [bp - 0x027c], ax       ; 0x6453
    mov ax, 0x248                    ; 0x6457
    imul word [bp - 0x0006]          ; 0x645a
    mov bx, ax                       ; 0x645d
    mov byte [bx + 0x5e2a], 0        ; 0x645f
    push word [bp - 0x027a]          ; 0x6464
    push word [bp - 0x027c]          ; 0x6468
    push word [bp - 0x0006]          ; 0x646c
    call api_idx_0006_3              ; 0x646f
    add sp, byte 6                   ; 0x6472
    mov ax, 1                        ; 0x6475
    push ax                          ; 0x6478
    push word [bp - 0x027a]          ; 0x6479
    push word [bp - 0x027c]          ; 0x647d
    call ds_dispatch_e94f            ; 0x6481
    add sp, byte 6                   ; 0x6484
    mov ax, 0                        ; 0x6487
    push ax                          ; 0x648a
    mov ax, 0x248                    ; 0x648b
    imul word [bp - 0x0006]          ; 0x648e
    mov bx, ax                       ; 0x6491
    mov al, byte [bx + 0x5e2a]       ; 0x6493
    sub ah, ah                       ; 0x6497
    push ax                          ; 0x6499
    call api_idx_0016                ; 0x649a
    add sp, byte 4                   ; 0x649d
    mov ax, 0x12                     ; 0x64a0
    push ax                          ; 0x64a3
    mov ax, 0xe                      ; 0x64a4
    push ax                          ; 0x64a7
    push word [bp - 0x0006]          ; 0x64a8
    call api_idx_0010                ; 0x64ab
    add sp, byte 6                   ; 0x64ae
    mov word [bp - 0x0004], 0        ; 0x64b1
    mov word [bp - 0x0002], 0        ; 0x64b6
@..math_loc_62fb.l5:
    mov ax, word [bp - 0x0002]       ; 0x64bb
    shl ax, 1                        ; 0x64be
    mov bx, ax                       ; 0x64c0
    mov ax, word [bx - 0x69f8]       ; 0x64c2
    add word [bp - 0x0004], ax       ; 0x64c6
    inc word [bp - 0x0002]           ; 0x64c9
    mov ax, word [bp - 0x0002]       ; 0x64cc
    cmp ax, strict word 4            ; 0x64cf
    jl short @..math_loc_62fb.l5     ; 0x64d2
    cmp word [bp - 0x0004], byte 0   ; 0x64d4
    jle short @..math_loc_62fb.l6    ; 0x64d8
    mov ax, 0x25e                    ; 0x64da
    push ax                          ; 0x64dd
    push word [bp - 0x0006]          ; 0x64de
    call api_idx_0088                ; 0x64e1
    add sp, byte 4                   ; 0x64e4
    mov ax, 0                        ; 0x64e7
    push ax                          ; 0x64ea
    push ax                          ; 0x64eb
    push word [data_952e]            ; 0x64ec
    push word [data_952c]            ; 0x64f0
    call ds_dispatch_e942            ; 0x64f4
    add sp, byte 8                   ; 0x64f7
    mov ax, 0xc6                     ; 0x64fa
    push ax                          ; 0x64fd
    mov ax, 0x13c                    ; 0x64fe
    push ax                          ; 0x6501
    mov ax, 0x70                     ; 0x6502
    push ax                          ; 0x6505
    mov ax, 1                        ; 0x6506
    push ax                          ; 0x6509
    call ds_dispatch_e8da            ; 0x650a
    add sp, byte 8                   ; 0x650d
@..math_loc_62fb.l6:
    mov word [bp - 0x0002], 0        ; 0x6510
@..math_loc_62fb.l7:
    mov ax, 0x248                    ; 0x6515
    imul word [bp - 0x0006]          ; 0x6518
    add ax, word [bp - 0x0002]       ; 0x651b
    mov bx, ax                       ; 0x651e
    cmp byte [bx + 0x5d50], 0        ; 0x6520
    jbe short @..math_loc_62fb.l8    ; 0x6525
    push word [bp - 0x0002]          ; 0x6527
    push word [bp - 0x0006]          ; 0x652a
    call api_idx_006e                ; 0x652d
    add sp, byte 4                   ; 0x6530
    jmp short @..math_loc_62fb.l7    ; 0x6533
@..math_loc_62fb.l8:
    inc word [bp - 0x0002]           ; 0x6535
    mov ax, word [bp - 0x0002]       ; 0x6538
    cmp ax, strict word 4            ; 0x653b
    jl short @..math_loc_62fb.l7     ; 0x653e
    push word [bp - 0x0006]          ; 0x6540
    call api_idx_0008_3              ; 0x6543
    pop cx                           ; 0x6546
    push word [bp - 0x0006]          ; 0x6547
    call api_idx_0002_9              ; 0x654a
    pop cx                           ; 0x654d
    mov word [bp - 0x0030], 1        ; 0x654e
    mov word [bp - 0x002e], 1        ; 0x6553
    mov word [bp - 0x002c], 0xffff   ; 0x6558
    lea ax, word [bp - 0x0030]       ; 0x655d
    push ax                          ; 0x6560
    mov ax, 0                        ; 0x6561
    push ax                          ; 0x6564
    mov ax, 0xffff                   ; 0x6565
    push ax                          ; 0x6568
    mov ax, 1                        ; 0x6569
    push ax                          ; 0x656c
    mov ax, data_0002                ; 0x656d
    push ax                          ; 0x6570
    mov ax, 1                        ; 0x6571
    push ax                          ; 0x6574
    mov ax, 0xc                      ; 0x6575
    push ax                          ; 0x6578
    mov ax, 0x6a                     ; 0x6579
    push ax                          ; 0x657c
    mov ax, 0xb                      ; 0x657d
    push ax                          ; 0x6580
    mov ax, 0xb4                     ; 0x6581
    push ax                          ; 0x6584
    mov ax, 0x4a                     ; 0x6585
    push ax                          ; 0x6588
    mov ax, 0x467                    ; 0x6589
    push ax                          ; 0x658c
    mov ax, 0x468                    ; 0x658d
    push ax                          ; 0x6590
    call math_loc_0445               ; 0x6591
    add sp, byte 0x1a                ; 0x6594
    mov word [bp - 0x0004], ax       ; 0x6597
    cmp word [bp - 0x0004], byte 0   ; 0x659a
    jne short @..math_loc_62fb.l9    ; 0x659e
    mov ax, 1                        ; 0x65a0
    push ax                          ; 0x65a3
    push word [bp + 0x6]             ; 0x65a4
    mov ax, 0x248                    ; 0x65a7
    imul word [bp - 0x0006]          ; 0x65aa
    add ax, 0x5bf4                   ; 0x65ad
    push ax                          ; 0x65b0
    call api_idx_0002_2              ; 0x65b1
    add sp, byte 6                   ; 0x65b4
    mov bx, word [bp + 0x6]          ; 0x65b7
    mov byte [bx - 0x6f8a], 1        ; 0x65ba
    mov ax, 0                        ; 0x65bf
    push ax                          ; 0x65c2
    call ds_dispatch_ef14            ; 0x65c3
    pop cx                           ; 0x65c6
    mov ax, data_0002                ; 0x65c7
    push ax                          ; 0x65ca
    mov ax, 0                        ; 0x65cb
    push ax                          ; 0x65ce
    mov ax, 0x94f6                   ; 0x65cf
    push ax                          ; 0x65d2
    call ds_dispatch_d161            ; 0x65d3
    add sp, byte 4                   ; 0x65d6
    push ax                          ; 0x65d9
    call ds_dispatch_f909            ; 0x65da
    add sp, byte 4                   ; 0x65dd
    mov word [bp - 0x0008], ax       ; 0x65e0
    mov ax, 0x18                     ; 0x65e3
    push ax                          ; 0x65e6
    mov ax, data_906e                ; 0x65e7
    push ax                          ; 0x65ea
    push word [bp - 0x0008]          ; 0x65eb
    call ds_dispatch_fd76            ; 0x65ee
    add sp, byte 6                   ; 0x65f1
    push word [bp - 0x0008]          ; 0x65f4
    call ds_dispatch_fda5            ; 0x65f7
    pop cx                           ; 0x65fa
@..math_loc_62fb.l9:
    ret                              ; 0x65fb
api_idx_0002_13:
    mov ax, 0xfffe                   ; 0x65fc
    call ds_dispatch_f40b            ; 0x65ff
    mov word [bp - 0x0002], 0        ; 0x6602
    jmp short @..api_idx_0002_13.l3  ; 0x6607
@..api_idx_0002_13.l1:
    mov bx, word [bp - 0x0002]       ; 0x6609
    cmp byte [bx - 0x6f8a], 0        ; 0x660c
    jne short @..api_idx_0002_13.l2  ; 0x6611
    mov ax, bx                       ; 0x6613
    ret                              ; 0x6615
@..api_idx_0002_13.l2:
    inc word [bp - 0x0002]           ; 0x6616
@..api_idx_0002_13.l3:
    mov ax, word [bp - 0x0002]       ; 0x6619
    cmp ax, word [data_9070]         ; 0x661c
    jl short @..api_idx_0002_13.l1   ; 0x6620
    mov ax, 0xffff                   ; 0x6622
    ret                              ; 0x6625
loc_6626:
    mov ax, 0xfdb6                   ; 0x6626
    call ds_dispatch_f40b            ; 0x6629
    mov word [bp - 0x0002], 0        ; 0x662c
    jmp short @..local.l12           ; 0x6631
@..local.l10:
    mov bx, word [bp - 0x0002]       ; 0x6633
    cmp byte [bx - 0x6f8a], 0        ; 0x6636
    jbe short @..local.l11           ; 0x663b
    mov ax, 0                        ; 0x663d
    push ax                          ; 0x6640
    push bx                          ; 0x6641
    lea ax, word [bp - 0x024a]       ; 0x6642
    push ax                          ; 0x6646
    call api_idx_0002_2              ; 0x6647
    add sp, byte 6                   ; 0x664a
    lea ax, word [bp - 0x024a]       ; 0x664d
    push ax                          ; 0x6651
    push word [bp + 0x4]             ; 0x6652
    call string_loc_6fca             ; 0x6655
    add sp, byte 4                   ; 0x6658
    test ax, ax                      ; 0x665b
    jne short @..local.l11           ; 0x665d
    mov ax, 0xffff                   ; 0x665f
    ret                              ; 0x6662
@..local.l11:
    inc word [bp - 0x0002]           ; 0x6663
@..local.l12:
    mov ax, word [bp - 0x0002]       ; 0x6666
    cmp ax, word [data_9070]         ; 0x6669
    jl short @..local.l10            ; 0x666d
    mov ax, 0                        ; 0x666f
    ret                              ; 0x6672
api_idx_0014:
    mov ax, 0xffec                   ; 0x6673
    call ds_dispatch_f40b            ; 0x6676
    mov byte [bp - 0x0014], 0        ; 0x6679
    lea ax, word [bp - 0x0014]       ; 0x667d
    push ax                          ; 0x6680
    mov ax, 1                        ; 0x6681
    push ax                          ; 0x6684
    push ax                          ; 0x6685
    mov ax, 0                        ; 0x6686
    push ax                          ; 0x6689
    mov ax, 0x47e                    ; 0x668a
    push ax                          ; 0x668d
    call api_idx_0026                ; 0x668e
    add sp, byte 0x0a                ; 0x6691
    cmp ax, strict word 2            ; 0x6694
    jne short @..api_idx_0014.l1     ; 0x6697
    ret                              ; 0x6699
@..api_idx_0014.l1:
    mov word [data_978a], 0          ; 0x669a
    cmp byte [bp - 0x0014], 0        ; 0x66a0
    je short @..api_idx_0014.l3      ; 0x66a4
    lea ax, word [bp - 0x0014]       ; 0x66a6
    push ax                          ; 0x66a9
    call loc_6626                    ; 0x66aa
    pop cx                           ; 0x66ad
    cmp ax, strict word 0xffff       ; 0x66ae
    jne short @..api_idx_0014.l2     ; 0x66b1
    jmp short @..api_idx_0014.l3     ; 0x66b3
@..api_idx_0014.l2:
    push word [bp + 0x4]             ; 0x66b5
    lea ax, word [bp - 0x0014]       ; 0x66b8
    push ax                          ; 0x66bb
    call math_loc_62fb               ; 0x66bc
    add sp, byte 4                   ; 0x66bf
@..api_idx_0014.l3:
    ret                              ; 0x66c2
math_loc_66c3:
    mov ax, 0                        ; 0x66c3
    call ds_dispatch_f40b            ; 0x66c6
    mov ax, 0                        ; 0x66c9
    push ax                          ; 0x66cc
    push word [bp + 0x6]             ; 0x66cd
    mov ax, 0x248                    ; 0x66d0
    imul word [bp + 0x4]             ; 0x66d3
    add ax, 0x5bf4                   ; 0x66d6
    push ax                          ; 0x66d9
    call api_idx_0002_2              ; 0x66da
    add sp, byte 6                   ; 0x66dd
    mov word [data_9594], 0xffff     ; 0x66e0
    push word [bp + 0x4]             ; 0x66e6
    call api_idx_0054                ; 0x66e9
    pop cx                           ; 0x66ec
    mov ax, 0                        ; 0x66ed
    push ax                          ; 0x66f0
    mov ax, 0x248                    ; 0x66f1
    imul word [bp + 0x4]             ; 0x66f4
    mov bx, ax                       ; 0x66f7
    mov al, byte [bx + 0x5e2a]       ; 0x66f9
    sub ah, ah                       ; 0x66fd
    push ax                          ; 0x66ff
    call api_idx_0016                ; 0x6700
    add sp, byte 4                   ; 0x6703
    mov ax, 0x12                     ; 0x6706
    push ax                          ; 0x6709
    mov ax, 0xe                      ; 0x670a
    push ax                          ; 0x670d
    push word [bp + 0x4]             ; 0x670e
    call api_idx_0010                ; 0x6711
    add sp, byte 6                   ; 0x6714
    mov ax, 0                        ; 0x6717
    push ax                          ; 0x671a
    push word [bp + 0x4]             ; 0x671b
    call api_idx_0002_5              ; 0x671e
    add sp, byte 4                   ; 0x6721
    mov ax, 0xc7                     ; 0x6724
    push ax                          ; 0x6727
    mov ax, 0x13f                    ; 0x6728
    push ax                          ; 0x672b
    mov ax, 0                        ; 0x672c
    push ax                          ; 0x672f
    push ax                          ; 0x6730
    call ds_dispatch_e8da            ; 0x6731
    add sp, byte 8                   ; 0x6734
    ret                              ; 0x6737
api_idx_002c:
    mov ax, 0xffd4                   ; 0x6738
    call ds_dispatch_f40b            ; 0x673b
    push word [bp + 0x4]             ; 0x673e
    mov ax, 0                        ; 0x6741
    push ax                          ; 0x6744
    call math_loc_66c3               ; 0x6745
    add sp, byte 4                   ; 0x6748
    mov word [bp - 0x002c], 1        ; 0x674b
    mov word [bp - 0x002a], 1        ; 0x6750
    mov word [bp - 0x0028], 0xffff   ; 0x6755
    lea ax, word [bp - 0x002c]       ; 0x675a
    push ax                          ; 0x675d
    mov ax, 0                        ; 0x675e
    push ax                          ; 0x6761
    mov ax, 0xffff                   ; 0x6762
    push ax                          ; 0x6765
    mov ax, 1                        ; 0x6766
    push ax                          ; 0x6769
    mov ax, data_0002                ; 0x676a
    push ax                          ; 0x676d
    mov ax, 1                        ; 0x676e
    push ax                          ; 0x6771
    mov ax, 0xc                      ; 0x6772
    push ax                          ; 0x6775
    mov ax, 0x6a                     ; 0x6776
    push ax                          ; 0x6779
    mov ax, 0xb                      ; 0x677a
    push ax                          ; 0x677d
    mov ax, 0xb4                     ; 0x677e
    push ax                          ; 0x6781
    mov ax, 0x4a                     ; 0x6782
    push ax                          ; 0x6785
    mov ax, 0x464                    ; 0x6786
    push ax                          ; 0x6789
    mov ax, 0x465                    ; 0x678a
    push ax                          ; 0x678d
    call math_loc_0445               ; 0x678e
    add sp, byte 0x1a                ; 0x6791
    mov word [bp - 0x0002], ax       ; 0x6794
    cmp word [bp - 0x0002], byte 0   ; 0x6797
    jne short @..api_idx_002c.l1     ; 0x679b
    mov bx, word [bp + 0x4]          ; 0x679d
    mov byte [bx - 0x6f8a], 0        ; 0x67a0
    mov ax, 0                        ; 0x67a5
    push ax                          ; 0x67a8
    call ds_dispatch_ef14            ; 0x67a9
    pop cx                           ; 0x67ac
    mov ax, data_0002                ; 0x67ad
    push ax                          ; 0x67b0
    mov ax, 0                        ; 0x67b1
    push ax                          ; 0x67b4
    mov ax, 0x9501                   ; 0x67b5
    push ax                          ; 0x67b8
    call ds_dispatch_d161            ; 0x67b9
    add sp, byte 4                   ; 0x67bc
    push ax                          ; 0x67bf
    call ds_dispatch_f909            ; 0x67c0
    add sp, byte 4                   ; 0x67c3
    mov word [bp - 0x0004], ax       ; 0x67c6
    mov ax, 0x18                     ; 0x67c9
    push ax                          ; 0x67cc
    mov ax, data_906e                ; 0x67cd
    push ax                          ; 0x67d0
    push word [bp - 0x0004]          ; 0x67d1
    call ds_dispatch_fd76            ; 0x67d4
    add sp, byte 6                   ; 0x67d7
    push word [bp - 0x0004]          ; 0x67da
    call ds_dispatch_fda5            ; 0x67dd
    pop cx                           ; 0x67e0
@..api_idx_002c.l1:
    ret                              ; 0x67e1
loc_67e2:
    mov ax, 0                        ; 0x67e2
    call ds_dispatch_f40b            ; 0x67e5
    push word [bp + 0x4]             ; 0x67e8
    mov ax, 0                        ; 0x67eb
    push ax                          ; 0x67ee
    call math_loc_66c3               ; 0x67ef
    add sp, byte 4                   ; 0x67f2
@..local.l13:
    call ds_dispatch_baef            ; 0x67f5
    test ax, ax                      ; 0x67f8
    jne short @..local.l14           ; 0x67fa
    jmp short @..local.l13           ; 0x67fc
@..local.l14:
    ret                              ; 0x67fe
api_idx_0018:
    mov ax, 0xffe8                   ; 0x67ff
    call ds_dispatch_f40b            ; 0x6802
    push word [bp + 0x4]             ; 0x6805
    mov ax, 0                        ; 0x6808
    push ax                          ; 0x680b
    call math_loc_66c3               ; 0x680c
    add sp, byte 4                   ; 0x680f
    mov ax, 8                        ; 0x6812
    push ax                          ; 0x6815
    call ds_dispatch_b75e            ; 0x6816
    pop cx                           ; 0x6819
    mov ax, 0x5bf4                   ; 0x681a
    push ax                          ; 0x681d
    lea ax, word [bp - 0x0014]       ; 0x681e
    push ax                          ; 0x6821
    call ds_dispatch_f364            ; 0x6822
    add sp, byte 4                   ; 0x6825
    lea ax, word [bp - 0x0014]       ; 0x6828
    push ax                          ; 0x682b
    mov ax, 1                        ; 0x682c
    push ax                          ; 0x682f
    push ax                          ; 0x6830
    mov ax, 0                        ; 0x6831
    push ax                          ; 0x6834
    mov ax, 0x48e                    ; 0x6835
    push ax                          ; 0x6838
    call api_idx_0026                ; 0x6839
    add sp, byte 0x0a                ; 0x683c
    cmp ax, strict word 2            ; 0x683f
    jne short @..api_idx_0018.l1     ; 0x6842
    ret                              ; 0x6844
@..api_idx_0018.l1:
    lea ax, word [bp - 0x0014]       ; 0x6845
    push ax                          ; 0x6848
    call ds_dispatch_fa90            ; 0x6849
    pop cx                           ; 0x684c
    test ax, ax                      ; 0x684d
    je short @..api_idx_0018.l3      ; 0x684f
    lea ax, word [bp - 0x0014]       ; 0x6851
    push ax                          ; 0x6854
    call loc_6626                    ; 0x6855
    pop cx                           ; 0x6858
    cmp ax, strict word 0xffff       ; 0x6859
    jne short @..api_idx_0018.l2     ; 0x685c
    jmp short @..api_idx_0018.l3     ; 0x685e
@..api_idx_0018.l2:
    lea ax, word [bp - 0x0014]       ; 0x6860
    push ax                          ; 0x6863
    mov ax, 0x5bf4                   ; 0x6864
    push ax                          ; 0x6867
    call ds_dispatch_f364            ; 0x6868
    add sp, byte 4                   ; 0x686b
    mov ax, 1                        ; 0x686e
    push ax                          ; 0x6871
    push word [bp + 0x4]             ; 0x6872
    mov ax, 0x5bf4                   ; 0x6875
    push ax                          ; 0x6878
    call api_idx_0002_2              ; 0x6879
    add sp, byte 6                   ; 0x687c
    push word [bp + 0x4]             ; 0x687f
    call loc_67e2                    ; 0x6882
    pop cx                           ; 0x6885
@..api_idx_0018.l3:
    ret                              ; 0x6886
api_idx_0006_4:
    mov ax, 0xfffa                   ; 0x6887
    call ds_dispatch_f40b            ; 0x688a
    mov ax, 0x4a                     ; 0x688d
    push ax                          ; 0x6890
    mov ax, data_0042                ; 0x6891
    push ax                          ; 0x6894
    mov ax, 0x12                     ; 0x6895
    push ax                          ; 0x6898
    mov ax, 0xe                      ; 0x6899
    push ax                          ; 0x689c
    call ds_dispatch_e928            ; 0x689d
    add sp, byte 8                   ; 0x68a0
    mov word [bp - 0x0004], dx       ; 0x68a3
    mov word [bp - 0x0006], ax       ; 0x68a6
    push word [bp + 0x4]             ; 0x68a9
    mov ax, 0                        ; 0x68ac
    push ax                          ; 0x68af
    call math_loc_66c3               ; 0x68b0
    add sp, byte 4                   ; 0x68b3
    mov al, byte [data_5e2a]         ; 0x68b6
    sub ah, ah                       ; 0x68b9
    mov word [bp - 0x0002], ax       ; 0x68bb
    push word [bp - 0x0004]          ; 0x68be
    push word [bp - 0x0006]          ; 0x68c1
    mov ax, 0                        ; 0x68c4
    push ax                          ; 0x68c7
    call api_idx_0006_3              ; 0x68c8
    add sp, byte 6                   ; 0x68cb
    mov ax, 1                        ; 0x68ce
    push ax                          ; 0x68d1
    push word [bp - 0x0004]          ; 0x68d2
    push word [bp - 0x0006]          ; 0x68d5
    call ds_dispatch_e94f            ; 0x68d8
    add sp, byte 6                   ; 0x68db
    mov al, byte [data_5e2a]         ; 0x68de
    sub ah, ah                       ; 0x68e1
    cmp ax, word [bp - 0x0002]       ; 0x68e3
    je short @..api_idx_0006_4.l1    ; 0x68e6
    mov ax, 1                        ; 0x68e8
    push ax                          ; 0x68eb
    push word [bp + 0x4]             ; 0x68ec
    mov ax, 0x5bf4                   ; 0x68ef
    push ax                          ; 0x68f2
    call api_idx_0002_2              ; 0x68f3
    add sp, byte 6                   ; 0x68f6
@..api_idx_0006_4.l1:
    ret                              ; 0x68f9
math_loc_68fa:
    mov ax, 0xfd40                   ; 0x68fa
    call ds_dispatch_f40b            ; 0x68fd
    mov word [bp - 0x0008], 0        ; 0x6900
    mov word [bp - 0x0002], 0        ; 0x6905
    jmp near @..math_loc_68fa.l7     ; 0x690a
@..math_loc_68fa.l1:
    mov bx, word [bp - 0x0002]       ; 0x690d
    cmp byte [bx - 0x6f8a], 1        ; 0x6910
    je short @..math_loc_68fa.l2     ; 0x6915
    jmp near @..math_loc_68fa.l6     ; 0x6917
@..math_loc_68fa.l2:
    mov ax, 0                        ; 0x691a
    push ax                          ; 0x691d
    push bx                          ; 0x691e
    lea ax, word [bp - 0x0250]       ; 0x691f
    push ax                          ; 0x6923
    call api_idx_0002_2              ; 0x6924
    add sp, byte 6                   ; 0x6927
    lea ax, word [bp - 0x0250]       ; 0x692a
    push ax                          ; 0x692e
    mov ax, 0x14                     ; 0x692f
    imul word [bp - 0x0008]          ; 0x6932
    add ax, 0xe38                    ; 0x6935
    push ax                          ; 0x6938
    call ds_dispatch_f364            ; 0x6939
    add sp, byte 4                   ; 0x693c
    mov ax, 0x14                     ; 0x693f
    imul word [bp - 0x0008]          ; 0x6942
    add ax, 0xe38                    ; 0x6945
    push ax                          ; 0x6948
    call ds_dispatch_fa90            ; 0x6949
    pop cx                           ; 0x694c
    mov word [bp - 0x0004], ax       ; 0x694d
@..math_loc_68fa.l3:
    cmp word [bp - 0x0004], byte 0x0a ; 0x6950
    jge short @..math_loc_68fa.l4    ; 0x6954
    mov ax, 0x14                     ; 0x6956
    imul word [bp - 0x0008]          ; 0x6959
    add ax, word [bp - 0x0004]       ; 0x695c
    mov bx, ax                       ; 0x695f
    mov byte [bx + 0xe38], 0x20      ; 0x6961
    inc word [bp - 0x0004]           ; 0x6966
    jmp short @..math_loc_68fa.l3    ; 0x6969
@..math_loc_68fa.l4:
    lea ax, word [bp - 0x02a0]       ; 0x696b
    push ax                          ; 0x696f
    mov al, byte [bp - 0x0018]       ; 0x6970
    sub ah, ah                       ; 0x6973
    add ax, 0x8c                     ; 0x6975
    push ax                          ; 0x6978
    call ds_dispatch_b53b            ; 0x6979
    add sp, byte 4                   ; 0x697c
    mov al, byte [bp - 0x02a0]       ; 0x697f
    push ax                          ; 0x6983
    mov ax, 0x14                     ; 0x6984
    imul word [bp - 0x0008]          ; 0x6987
    mov bx, ax                       ; 0x698a
    pop ax                           ; 0x698c
    mov byte [bx + 0xe42], al        ; 0x698d
    mov byte [bx + 0xe43], 0x2d      ; 0x6991
    lea ax, word [bp - 0x02a0]       ; 0x6996
    push ax                          ; 0x699a
    mov al, byte [bp - 0x0017]       ; 0x699b
    sub ah, ah                       ; 0x699e
    add ax, strict word 0x78         ; 0x69a0
    push ax                          ; 0x69a3
    call ds_dispatch_b53b            ; 0x69a4
    add sp, byte 4                   ; 0x69a7
    mov word [bp - 0x0004], 0        ; 0x69aa
@..math_loc_68fa.l5:
    mov bx, word [bp - 0x0004]       ; 0x69af
    add bx, bp                       ; 0x69b2
    mov al, byte [bx - 0x02a0]       ; 0x69b4
    push ax                          ; 0x69b8
    mov ax, 0x14                     ; 0x69b9
    imul word [bp - 0x0008]          ; 0x69bc
    mov cx, ax                       ; 0x69bf
    add ax, word [bp - 0x0004]       ; 0x69c1
    mov bx, ax                       ; 0x69c4
    pop ax                           ; 0x69c6
    mov byte [bx + 0xe44], al        ; 0x69c7
    inc word [bp - 0x0004]           ; 0x69cb
    mov ax, word [bp - 0x0004]       ; 0x69ce
    cmp ax, strict word 3            ; 0x69d1
    jl short @..math_loc_68fa.l5     ; 0x69d4
    mov ax, 0x14                     ; 0x69d6
    imul word [bp - 0x0008]          ; 0x69d9
    mov bx, ax                       ; 0x69dc
    mov byte [bx + 0xe47], 0         ; 0x69de
    mov ax, word [bp - 0x0002]       ; 0x69e3
    mov cx, word [bp - 0x0008]       ; 0x69e6
    shl cx, 1                        ; 0x69e9
    mov bx, cx                       ; 0x69eb
    add bx, bp                       ; 0x69ed
    mov word [bx - 0x02c0], ax       ; 0x69ef
    inc word [bp - 0x0008]           ; 0x69f3
@..math_loc_68fa.l6:
    inc word [bp - 0x0002]           ; 0x69f6
@..math_loc_68fa.l7:
    mov ax, word [bp - 0x0002]       ; 0x69f9
    cmp ax, word [data_9070]         ; 0x69fc
    jge short @..math_loc_68fa.l8    ; 0x6a00
    jmp near @..math_loc_68fa.l1     ; 0x6a02
@..math_loc_68fa.l8:
    cmp word [bp - 0x0008], byte 0   ; 0x6a05
    jle short @..math_loc_68fa.l9    ; 0x6a09
    push word [bp - 0x0008]          ; 0x6a0b
    mov ax, 1                        ; 0x6a0e
    push ax                          ; 0x6a11
    push ax                          ; 0x6a12
    mov ax, 0                        ; 0x6a13
    push ax                          ; 0x6a16
    push word [bp + 0x4]             ; 0x6a17
    call api_idx_0038                ; 0x6a1a
    add sp, byte 0x0a                ; 0x6a1d
    cmp ax, strict word 1            ; 0x6a20
    jne short @..math_loc_68fa.l9    ; 0x6a23
    mov ax, word [data_904e]         ; 0x6a25
    mov word [bp - 0x0006], ax       ; 0x6a28
    cmp ax, strict word 0xffff       ; 0x6a2b
    je short @..math_loc_68fa.l9     ; 0x6a2e
    shl ax, 1                        ; 0x6a30
    mov bx, ax                       ; 0x6a32
    add bx, bp                       ; 0x6a34
    mov ax, word [bx - 0x02c0]       ; 0x6a36
    ret                              ; 0x6a3a
@..math_loc_68fa.l9:
    mov ax, 0xffff                   ; 0x6a3b
    ret                              ; 0x6a3e
api_idx_002c_2:
    mov ax, 0xffd4                   ; 0x6a3f
    call ds_dispatch_f40b            ; 0x6a42
    mov ax, 1                        ; 0x6a45
    push ax                          ; 0x6a48
    mov ax, data_0002                ; 0x6a49
    push ax                          ; 0x6a4c
    call ds_dispatch_d61c            ; 0x6a4d
    add sp, byte 4                   ; 0x6a50
    mov ax, data_0002                ; 0x6a53
    push ax                          ; 0x6a56
    mov ax, 3                        ; 0x6a57
    push ax                          ; 0x6a5a
    call ds_dispatch_d61c            ; 0x6a5b
    add sp, byte 4                   ; 0x6a5e
    mov ax, 0                        ; 0x6a61
    push ax                          ; 0x6a64
    mov ax, data_0002                ; 0x6a65
    push ax                          ; 0x6a68
    mov ax, 0xc7                     ; 0x6a69
    push ax                          ; 0x6a6c
    mov ax, 0x13f                    ; 0x6a6d
    push ax                          ; 0x6a70
    mov ax, 0                        ; 0x6a71
    push ax                          ; 0x6a74
    push ax                          ; 0x6a75
    call ds_dispatch_e935            ; 0x6a76
    add sp, byte 0x0c                ; 0x6a79
    mov word [bp - 0x000c], dx       ; 0x6a7c
    mov word [bp - 0x000e], ax       ; 0x6a7f
    mov ax, 0                        ; 0x6a82
    push ax                          ; 0x6a85
    mov ax, 0x950c                   ; 0x6a86
    push ax                          ; 0x6a89
    call api_idx_0002                ; 0x6a8a
    add sp, byte 4                   ; 0x6a8d
    mov word [data_95aa], 0x14       ; 0x6a90
    mov word [data_95ac], 0          ; 0x6a96
    mov word [data_95ae], 0          ; 0x6a9c
    mov ax, 0                        ; 0x6aa2
    push ax                          ; 0x6aa5
    mov ax, data_0002                ; 0x6aa6
    push ax                          ; 0x6aa9
    mov ax, 0x67                     ; 0x6aaa
    push ax                          ; 0x6aad
    mov ax, 0xa2                     ; 0x6aae
    push ax                          ; 0x6ab1
    mov ax, 6                        ; 0x6ab2
    push ax                          ; 0x6ab5
    push ax                          ; 0x6ab6
    call ds_dispatch_e935            ; 0x6ab7
    add sp, byte 0x0c                ; 0x6aba
    mov word [data_9526], dx         ; 0x6abd
    mov word [data_9524], ax         ; 0x6ac1
    mov ax, 0                        ; 0x6ac4
    push ax                          ; 0x6ac7
    mov ax, data_0002                ; 0x6ac8
    push ax                          ; 0x6acb
    mov ax, 0x16                     ; 0x6acc
    push ax                          ; 0x6acf
    mov ax, 0x136                    ; 0x6ad0
    push ax                          ; 0x6ad3
    mov ax, 6                        ; 0x6ad4
    push ax                          ; 0x6ad7
    mov ax, 0xe4                     ; 0x6ad8
    push ax                          ; 0x6adb
    call ds_dispatch_e935            ; 0x6adc
    add sp, byte 0x0c                ; 0x6adf
    mov word [data_952a], dx         ; 0x6ae2
    mov word [data_9528], ax         ; 0x6ae6
    mov ax, 0                        ; 0x6ae9
    push ax                          ; 0x6aec
    mov ax, data_0002                ; 0x6aed
    push ax                          ; 0x6af0
    mov ax, 0xb6                     ; 0x6af1
    push ax                          ; 0x6af4
    mov ax, 0x9f                     ; 0x6af5
    push ax                          ; 0x6af8
    mov ax, 0x70                     ; 0x6af9
    push ax                          ; 0x6afc
    mov ax, 1                        ; 0x6afd
    push ax                          ; 0x6b00
    call ds_dispatch_e935            ; 0x6b01
    add sp, byte 0x0c                ; 0x6b04
    mov word [data_952e], dx         ; 0x6b07
    mov word [data_952c], ax         ; 0x6b0b
    mov ax, 0                        ; 0x6b0e
    push ax                          ; 0x6b11
    mov ax, data_0002                ; 0x6b12
    push ax                          ; 0x6b15
    mov ax, 0x23                     ; 0x6b16
    push ax                          ; 0x6b19
    mov ax, 0x13f                    ; 0x6b1a
    push ax                          ; 0x6b1d
    mov ax, 0x1e                     ; 0x6b1e
    push ax                          ; 0x6b21
    mov ax, 0xdc                     ; 0x6b22
    push ax                          ; 0x6b25
    call ds_dispatch_e935            ; 0x6b26
    add sp, byte 0x0c                ; 0x6b29
    mov word [data_9532], dx         ; 0x6b2c
    mov word [data_9530], ax         ; 0x6b30
    mov ax, 0                        ; 0x6b33
    push ax                          ; 0x6b36
    mov ax, data_0002                ; 0x6b37
    push ax                          ; 0x6b3a
    mov ax, 0x74                     ; 0x6b3b
    push ax                          ; 0x6b3e
    mov ax, 0x136                    ; 0x6b3f
    push ax                          ; 0x6b42
    mov ax, 0x2e                     ; 0x6b43
    push ax                          ; 0x6b46
    mov ax, 0x114                    ; 0x6b47
    push ax                          ; 0x6b4a
    call ds_dispatch_e935            ; 0x6b4b
    add sp, byte 0x0c                ; 0x6b4e
    mov word [data_9536], dx         ; 0x6b51
    mov word [data_9534], ax         ; 0x6b55
    mov ax, 0                        ; 0x6b58
    push ax                          ; 0x6b5b
    mov ax, data_0002                ; 0x6b5c
    push ax                          ; 0x6b5f
    mov ax, 0xbf                     ; 0x6b60
    push ax                          ; 0x6b63
    mov ax, 0x13f                    ; 0x6b64
    push ax                          ; 0x6b67
    mov ax, 0x7e                     ; 0x6b68
    push ax                          ; 0x6b6b
    mov ax, 0xb8                     ; 0x6b6c
    push ax                          ; 0x6b6f
    call ds_dispatch_e935            ; 0x6b70
    add sp, byte 0x0c                ; 0x6b73
    mov word [data_953a], dx         ; 0x6b76
    mov word [data_9538], ax         ; 0x6b7a
    mov ax, 0                        ; 0x6b7d
    push ax                          ; 0x6b80
    mov ax, data_0002                ; 0x6b81
    push ax                          ; 0x6b84
    mov ax, 0x60                     ; 0x6b85
    push ax                          ; 0x6b88
    mov ax, 0xa8                     ; 0x6b89
    push ax                          ; 0x6b8c
    mov ax, 0x23                     ; 0x6b8d
    push ax                          ; 0x6b90
    mov ax, 0x66                     ; 0x6b91
    push ax                          ; 0x6b94
    call ds_dispatch_e935            ; 0x6b95
    add sp, byte 0x0c                ; 0x6b98
    mov word [data_953e], dx         ; 0x6b9b
    mov word [data_953c], ax         ; 0x6b9f
    mov ax, 0                        ; 0x6ba2
    push ax                          ; 0x6ba5
    mov ax, data_0002                ; 0x6ba6
    push ax                          ; 0x6ba9
    mov ax, 0x41                     ; 0x6baa
    push ax                          ; 0x6bad
    mov ax, 0x65                     ; 0x6bae
    push ax                          ; 0x6bb1
    mov ax, 0x19                     ; 0x6bb2
    push ax                          ; 0x6bb5
    mov ax, 0x5a                     ; 0x6bb6
    push ax                          ; 0x6bb9
    call ds_dispatch_e935            ; 0x6bba
    add sp, byte 0x0c                ; 0x6bbd
    mov word [data_9542], dx         ; 0x6bc0
    mov word [data_9540], ax         ; 0x6bc4
    mov ax, 0xf                      ; 0x6bc7
    push ax                          ; 0x6bca
    mov ax, 0xb                      ; 0x6bcb
    push ax                          ; 0x6bce
    call ds_dispatch_d61c            ; 0x6bcf
    add sp, byte 4                   ; 0x6bd2
    call ds_dispatch_d9a6            ; 0x6bd5
    mov word [data_8450], ax         ; 0x6bd8
    test ax, ax                      ; 0x6bdb
    je short @..api_idx_002c_2.l1    ; 0x6bdd
    mov ax, 0                        ; 0x6bdf
    push ax                          ; 0x6be2
    mov ax, 1                        ; 0x6be3
    push ax                          ; 0x6be6
    call ds_dispatch_d7e7            ; 0x6be7
    add sp, byte 4                   ; 0x6bea
    mov ax, word [data_010e]         ; 0x6bed
    mov word [data_844e], ax         ; 0x6bf0
    mov ax, 1                        ; 0x6bf3
    push ax                          ; 0x6bf6
    push word [data_844e]            ; 0x6bf7
    mov ax, 0                        ; 0x6bfb
    push ax                          ; 0x6bfe
    call ds_dispatch_d964            ; 0x6bff
    add sp, byte 6                   ; 0x6c02
    mov word [data_844c], ax         ; 0x6c05
@..api_idx_002c_2.l1:
    mov word [bp - 0x0002], 0        ; 0x6c08
@..api_idx_002c_2.l2:
    mov ax, 0xa                      ; 0x6c0d
    imul word [bp - 0x0002]          ; 0x6c10
    add ax, 0x9544                   ; 0x6c13
    push ax                          ; 0x6c16
    mov ax, word [bp - 0x0002]       ; 0x6c17
    add ax, 0xcc                     ; 0x6c1a
    push ax                          ; 0x6c1d
    call ds_dispatch_b53b            ; 0x6c1e
    add sp, byte 4                   ; 0x6c21
    inc word [bp - 0x0002]           ; 0x6c24
    mov ax, word [bp - 0x0002]       ; 0x6c27
    cmp ax, strict word 8            ; 0x6c2a
    jl short @..api_idx_002c_2.l2    ; 0x6c2d
    mov ax, 0x9596                   ; 0x6c2f
    push ax                          ; 0x6c32
    mov ax, 0x453                    ; 0x6c33
    push ax                          ; 0x6c36
    call ds_dispatch_b53b            ; 0x6c37
    add sp, byte 4                   ; 0x6c3a
    mov word [bp - 0x0002], 0        ; 0x6c3d
@..api_idx_002c_2.l3:
    mov ax, word [bp - 0x0002]       ; 0x6c42
    shl ax, 1                        ; 0x6c45
    mov bx, ax                       ; 0x6c47
    mov word [bx - 0x7cf2], 0        ; 0x6c49
    inc word [bp - 0x0002]           ; 0x6c4f
    mov ax, word [bp - 0x0002]       ; 0x6c52
    cmp ax, strict word 6            ; 0x6c55
    jl short @..api_idx_002c_2.l3    ; 0x6c58
    mov word [data_976c], 7          ; 0x6c5a
    les bx, word [data_0002]         ; 0x6c60
    mov ax, word [es:bx]             ; 0x6c64
    mov dx, word [es:bx + 0x2]       ; 0x6c67
    mov word [data_908c], dx         ; 0x6c6b
    mov word [data_908a], ax         ; 0x6c6f
@..api_idx_002c_2.l4:
    mov word [data_95aa], 0x14       ; 0x6c72
    mov word [data_95ac], 0          ; 0x6c78
    mov ax, 0                        ; 0x6c7e
    push ax                          ; 0x6c81
    push ax                          ; 0x6c82
    push word [data_9526]            ; 0x6c83
    push word [data_9524]            ; 0x6c87
    call ds_dispatch_e942            ; 0x6c8b
    add sp, byte 8                   ; 0x6c8e
    mov ax, 0                        ; 0x6c91
    push ax                          ; 0x6c94
    push ax                          ; 0x6c95
    push word [data_952a]            ; 0x6c96
    push word [data_9528]            ; 0x6c9a
    call ds_dispatch_e942            ; 0x6c9e
    add sp, byte 8                   ; 0x6ca1
    mov ax, 0                        ; 0x6ca4
    push ax                          ; 0x6ca7
    push ax                          ; 0x6ca8
    push word [data_952e]            ; 0x6ca9
    push word [data_952c]            ; 0x6cad
    call ds_dispatch_e942            ; 0x6cb1
    add sp, byte 8                   ; 0x6cb4
    mov ax, 0                        ; 0x6cb7
    push ax                          ; 0x6cba
    push ax                          ; 0x6cbb
    push word [data_9532]            ; 0x6cbc
    push word [data_9530]            ; 0x6cc0
    call ds_dispatch_e942            ; 0x6cc4
    add sp, byte 8                   ; 0x6cc7
    mov ax, 0                        ; 0x6cca
    push ax                          ; 0x6ccd
    push ax                          ; 0x6cce
    push word [data_9536]            ; 0x6ccf
    push word [data_9534]            ; 0x6cd3
    call ds_dispatch_e942            ; 0x6cd7
    add sp, byte 8                   ; 0x6cda
    mov ax, 0                        ; 0x6cdd
    push ax                          ; 0x6ce0
    push ax                          ; 0x6ce1
    push word [data_953a]            ; 0x6ce2
    push word [data_9538]            ; 0x6ce6
    call ds_dispatch_e942            ; 0x6cea
    add sp, byte 8                   ; 0x6ced
    mov word [bp - 0x0002], 0        ; 0x6cf0
@..api_idx_002c_2.l5:
    mov ax, word [bp - 0x0002]       ; 0x6cf5
    shl ax, 1                        ; 0x6cf8
    mov bx, ax                       ; 0x6cfa
    add bx, bp                       ; 0x6cfc
    mov word [bx - 0x002c], 0        ; 0x6cfe
    inc word [bp - 0x0002]           ; 0x6d03
    mov ax, word [bp - 0x0002]       ; 0x6d06
    cmp ax, strict word 5            ; 0x6d09
    jl short @..api_idx_002c_2.l5    ; 0x6d0c
    mov word [bp - 0x0022], 1        ; 0x6d0e
    mov word [bp - 0x0020], 0xffff   ; 0x6d13
    call api_idx_0002_13             ; 0x6d18
    mov word [bp - 0x000a], ax       ; 0x6d1b
    cmp ax, strict word 0xffff       ; 0x6d1e
    je short @..api_idx_002c_2.l6    ; 0x6d21
    mov word [bp - 0x002c], 1        ; 0x6d23
@..api_idx_002c_2.l6:
    mov word [bp - 0x0002], 0        ; 0x6d28
    jmp short @..api_idx_002c_2.l9   ; 0x6d2d
@..api_idx_002c_2.l7:
    mov bx, word [bp - 0x0002]       ; 0x6d2f
    cmp byte [bx - 0x6f8a], 1        ; 0x6d32
    jne short @..api_idx_002c_2.l8   ; 0x6d37
    mov word [bp - 0x002a], 1        ; 0x6d39
    mov word [bp - 0x0028], 1        ; 0x6d3e
    mov word [bp - 0x0026], 1        ; 0x6d43
    mov word [bp - 0x0024], 1        ; 0x6d48
@..api_idx_002c_2.l8:
    inc word [bp - 0x0002]           ; 0x6d4d
@..api_idx_002c_2.l9:
    mov ax, word [bp - 0x0002]       ; 0x6d50
    cmp ax, word [data_9070]         ; 0x6d53
    jl short @..api_idx_002c_2.l7    ; 0x6d57
    lea ax, word [bp - 0x002c]       ; 0x6d59
    push ax                          ; 0x6d5c
    mov ax, 0                        ; 0x6d5d
    push ax                          ; 0x6d60
    mov ax, 0xffff                   ; 0x6d61
    push ax                          ; 0x6d64
    mov ax, 1                        ; 0x6d65
    push ax                          ; 0x6d68
    mov ax, 6                        ; 0x6d69
    push ax                          ; 0x6d6c
    mov ax, 1                        ; 0x6d6d
    push ax                          ; 0x6d70
    mov ax, 0xc                      ; 0x6d71
    push ax                          ; 0x6d74
    mov ax, 0x34                     ; 0x6d75
    push ax                          ; 0x6d78
    mov ax, 8                        ; 0x6d79
    push ax                          ; 0x6d7c
    mov ax, 0xbc                     ; 0x6d7d
    push ax                          ; 0x6d80
    mov ax, 4                        ; 0x6d81
    push ax                          ; 0x6d84
    mov ax, 0                        ; 0x6d85
    push ax                          ; 0x6d88
    mov ax, 0x46a                    ; 0x6d89
    push ax                          ; 0x6d8c
    call math_loc_0445               ; 0x6d8d
    add sp, byte 0x1a                ; 0x6d90
    mov word [bp - 0x0006], ax       ; 0x6d93
    jmp near @..api_idx_002c_2.l10   ; 0x6d96

    db 0xb8, 0xc7, 0x00, 0x50, 0xb8, 0x3f, 0x01, 0x50, 0xb8, 0x00, 0x00, 0x50, 0x50, 0xe8, 0x31, 0x7b
    db 0x83, 0xc4, 0x08, 0xff, 0x76, 0xf6, 0xe8, 0xc1, 0xf8, 0x59, 0xe9, 0xc0, 0x00, 0xb8, 0xc7, 0x00
    db 0x50, 0xb8, 0x3f, 0x01, 0x50, 0xb8, 0x00, 0x00, 0x50, 0x50, 0xe8, 0x14, 0x7b, 0x83, 0xc4, 0x08
    db 0xb8, 0x82, 0x04, 0x50, 0xe8, 0x2a, 0xfb, 0x59, 0x89, 0x46, 0xf8, 0x3d, 0xff, 0xff, 0x74, 0x05
    db 0x50, 0xe8, 0x5b, 0xf9, 0x59, 0xe9, 0x95, 0x00, 0xb8, 0xc7, 0x00, 0x50, 0xb8, 0x3f, 0x01, 0x50
    db 0xb8, 0x00, 0x00, 0x50, 0x50, 0xe8, 0xe9, 0x7a, 0x83, 0xc4, 0x08, 0xb8, 0x85, 0x04, 0x50, 0xe8
    db 0xff, 0xfa, 0x59, 0x89, 0x46, 0xf8, 0x3d, 0xff, 0xff, 0x74, 0x05, 0x50, 0xe8, 0xda, 0xf9, 0x59
    db 0xeb, 0x6b, 0xb8, 0xc7, 0x00, 0x50, 0xb8, 0x3f, 0x01, 0x50, 0xb8, 0x00, 0x00, 0x50, 0x50, 0xe8
    db 0xbf, 0x7a, 0x83, 0xc4, 0x08, 0xb8, 0x88, 0x04, 0x50, 0xe8, 0xd5, 0xfa, 0x59, 0x89, 0x46, 0xf8
    db 0x3d, 0xff, 0xff, 0x74, 0x05, 0x50, 0xe8, 0xcd, 0xf9, 0x59, 0xeb, 0x41, 0xb8, 0xc7, 0x00, 0x50
    db 0xb8, 0x3f, 0x01, 0x50, 0xb8, 0x00, 0x00, 0x50, 0x50, 0xe8, 0x95, 0x7a, 0x83, 0xc4, 0x08, 0xb8
    db 0x8b, 0x04, 0x50, 0xe8, 0xab, 0xfa, 0x59, 0x89, 0x46, 0xf8, 0x3d, 0xff, 0xff, 0x74, 0x05, 0x50
    db 0xe8, 0x2b, 0xfa, 0x59, 0xeb, 0x17, 0xe0, 0xbd, 0x28, 0xbe, 0xfd, 0xbd, 0x52, 0xbe, 0x7c, 0xbe

@..api_idx_002c_2.l10:
    cmp ax, strict word 5            ; 0x6e69
    jae short @..api_idx_002c_2.l11  ; 0x6e6c
    xchg bx, ax                      ; 0x6e6e
    shl bx, 1                        ; 0x6e6f
    jmp [cs:bx - 0x415a]             ; 0x6e71
@..api_idx_002c_2.l11:
    cmp word [bp - 0x0006], byte 5   ; 0x6e76
    je short @..api_idx_002c_2.l12   ; 0x6e7a
    jmp near @..api_idx_002c_2.l4    ; 0x6e7c
@..api_idx_002c_2.l12:
    cmp word [data_8450], byte 0     ; 0x6e7f
    je short @..api_idx_002c_2.l13   ; 0x6e84
    push word [data_844c]            ; 0x6e86
    push word [data_844e]            ; 0x6e8a
    call ds_dispatch_d91b            ; 0x6e8e
    add sp, byte 4                   ; 0x6e91
    mov ax, 0                        ; 0x6e94
    push ax                          ; 0x6e97
    call ds_dispatch_d907            ; 0x6e98
    pop cx                           ; 0x6e9b
@..api_idx_002c_2.l13:
    mov ax, 0xf                      ; 0x6e9c
    push ax                          ; 0x6e9f
    call ds_dispatch_c12a            ; 0x6ea0
    pop cx                           ; 0x6ea3
    mov ax, 0                        ; 0x6ea4
    push ax                          ; 0x6ea7
    mov ax, 1                        ; 0x6ea8
    push ax                          ; 0x6eab
    push word [data_9542]            ; 0x6eac
    push word [data_9540]            ; 0x6eb0
    call ds_dispatch_e942            ; 0x6eb4
    add sp, byte 8                   ; 0x6eb7
    mov ax, 0                        ; 0x6eba
    push ax                          ; 0x6ebd
    mov ax, 1                        ; 0x6ebe
    push ax                          ; 0x6ec1
    push word [data_953e]            ; 0x6ec2
    push word [data_953c]            ; 0x6ec6
    call ds_dispatch_e942            ; 0x6eca
    add sp, byte 8                   ; 0x6ecd
    mov ax, 0                        ; 0x6ed0
    push ax                          ; 0x6ed3
    mov ax, 1                        ; 0x6ed4
    push ax                          ; 0x6ed7
    push word [data_953a]            ; 0x6ed8
    push word [data_9538]            ; 0x6edc
    call ds_dispatch_e942            ; 0x6ee0
    add sp, byte 8                   ; 0x6ee3
    mov ax, 0                        ; 0x6ee6
    push ax                          ; 0x6ee9
    mov ax, 1                        ; 0x6eea
    push ax                          ; 0x6eed
    push word [data_9536]            ; 0x6eee
    push word [data_9534]            ; 0x6ef2
    call ds_dispatch_e942            ; 0x6ef6
    add sp, byte 8                   ; 0x6ef9
    mov ax, 0                        ; 0x6efc
    push ax                          ; 0x6eff
    mov ax, 1                        ; 0x6f00
    push ax                          ; 0x6f03
    push word [data_9532]            ; 0x6f04
    push word [data_9530]            ; 0x6f08
    call ds_dispatch_e942            ; 0x6f0c
    add sp, byte 8                   ; 0x6f0f
    mov ax, 0                        ; 0x6f12
    push ax                          ; 0x6f15
    mov ax, 1                        ; 0x6f16
    push ax                          ; 0x6f19
    push word [data_952e]            ; 0x6f1a
    push word [data_952c]            ; 0x6f1e
    call ds_dispatch_e942            ; 0x6f22
    add sp, byte 8                   ; 0x6f25
    mov ax, 0                        ; 0x6f28
    push ax                          ; 0x6f2b
    mov ax, 1                        ; 0x6f2c
    push ax                          ; 0x6f2f
    push word [data_952a]            ; 0x6f30
    push word [data_9528]            ; 0x6f34
    call ds_dispatch_e942            ; 0x6f38
    add sp, byte 8                   ; 0x6f3b
    mov ax, 0                        ; 0x6f3e
    push ax                          ; 0x6f41
    mov ax, 1                        ; 0x6f42
    push ax                          ; 0x6f45
    push word [data_9526]            ; 0x6f46
    push word [data_9524]            ; 0x6f4a
    call ds_dispatch_e942            ; 0x6f4e
    add sp, byte 8                   ; 0x6f51
    mov ax, 0                        ; 0x6f54
    push ax                          ; 0x6f57
    mov ax, 1                        ; 0x6f58
    push ax                          ; 0x6f5b
    push word [bp - 0x000c]          ; 0x6f5c
    push word [bp - 0x000e]          ; 0x6f5f
    call ds_dispatch_e942            ; 0x6f62
    add sp, byte 8                   ; 0x6f65
    mov ax, 1                        ; 0x6f68
    push ax                          ; 0x6f6b
    call ds_dispatch_c12a            ; 0x6f6c
    pop cx                           ; 0x6f6f
    mov ax, data_0002                ; 0x6f70
    push ax                          ; 0x6f73
    call ds_dispatch_c12a            ; 0x6f74
    pop cx                           ; 0x6f77
    mov ax, 0xc7                     ; 0x6f78
    push ax                          ; 0x6f7b
    mov ax, 0x13f                    ; 0x6f7c
    push ax                          ; 0x6f7f
    mov ax, 0                        ; 0x6f80
    push ax                          ; 0x6f83
    push ax                          ; 0x6f84
    call ds_dispatch_e8da            ; 0x6f85
    add sp, byte 8                   ; 0x6f88
    ret                              ; 0x6f8b

    db 0x8f, 0x06, 0x22, 0x95, 0x59, 0x89, 0x26, 0x1e, 0x95, 0x89, 0x2e, 0x20, 0x95, 0x89, 0x36, 0x1a
    db 0x95, 0x89, 0x3e, 0x1c, 0x95, 0xfc, 0xbf, 0x24, 0x95, 0xb9, 0x8c, 0x97, 0x2b, 0xcf, 0xd1, 0xe9
    db 0x74, 0x04, 0x2b, 0xc0, 0xf3, 0xab, 0xe8, 0x59, 0x90, 0x8b, 0x2e, 0x20, 0x95, 0x8b, 0x26, 0x1e
    db 0x95, 0x8b, 0x36, 0x1a, 0x95, 0x8b, 0x3e, 0x1c, 0x95, 0x51, 0xff, 0x26, 0x22, 0x95

string_loc_6fca:
    push bp                          ; 0x6fca
    mov bp, sp                       ; 0x6fcb
    cld                              ; 0x6fcd
    push si                          ; 0x6fce
    push di                          ; 0x6fcf
    mov si, word [bp + 0x4]          ; 0x6fd0
    mov di, ds                       ; 0x6fd3
    mov es, di                       ; 0x6fd5
    mov di, word [bp + 0x6]          ; 0x6fd7
@..string_loc_6fca.l1:
    lodsw                            ; 0x6fda
    scasw                            ; 0x6fdb
    jne short @..string_loc_6fca.l4  ; 0x6fdc
    test al, al                      ; 0x6fde
    je short @..string_loc_6fca.l2   ; 0x6fe0
    test ah, ah                      ; 0x6fe2
    jne short @..string_loc_6fca.l1  ; 0x6fe4
    jmp short @..string_loc_6fca.l2  ; 0x6fe6

    db 0x55, 0x8b, 0xec, 0x8b, 0x4e, 0x08, 0x8b, 0xd1, 0xd1, 0xe9, 0xfc, 0x56, 0x57, 0x8b, 0x76, 0x04
    db 0x8c, 0xdf, 0x8e, 0xc7, 0x8b, 0x7e, 0x06, 0xe3, 0x0e, 0xad, 0xaf, 0x75, 0x18, 0x84, 0xc0, 0x74
    db 0x0e, 0x84, 0xe4, 0xe0, 0xf4, 0x74, 0x08, 0xf6, 0xc2, 0x01, 0x74, 0x03, 0xa6, 0x75, 0x13

@..string_loc_6fca.l2:
    sub ax, ax                       ; 0x7017
@..string_loc_6fca.l3:
    pop di                           ; 0x7019
    pop si                           ; 0x701a
    pop bp                           ; 0x701b
    ret                              ; 0x701c
@..string_loc_6fca.l4:
    sub di, byte 2                   ; 0x701d
    scasb                            ; 0x7020
    jne short @..string_loc_6fca.l5  ; 0x7021
    test al, al                      ; 0x7023
    je short @..string_loc_6fca.l2   ; 0x7025
    mov al, ah                       ; 0x7027
    scasb                            ; 0x7029
@..string_loc_6fca.l5:
    sbb ax, ax                       ; 0x702a
    js short @..string_loc_6fca.l3   ; 0x702c
    inc ax                           ; 0x702e
    jmp short @..string_loc_6fca.l3  ; 0x702f

    db 'PCFILE.DBS', 0
    db 'V.$$$', 0
    db 'V.$$$', 0
    db 'V.$$$', 0
    db 'V.$$$', 0
    db 0x25, 0x20, 0x00
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
    db 0x2a, 0x2a, 0x2a, 0x00
    db 'V.$$$', 0
    db 'MAAAAAAA', 0
    db 'AMAAAAAA', 0
    db 'AAMAAAIA', 0
    db 'AAAAMIAA', 0
    db 'KIILKIIA', 0
    db 'ANAANAAA', 0
    db 'AKAAMIMA', 0
    db 'KOAOAAKA', 0
    db 'KALLKLIA', 0
    db 'APPAAAIA', 0
    db 'MJMMJJOA', 0
    db 'MLAJMOIA', 0
    db 'NINAKNIA', 0
    db 'MKKMMMAA', 0
    db 'JIIJJIIA', 0
    db 'HKKHJJIA', 0
    db 'LGKMHHHA', 0
    db 'KHNKIGGA', 0
    db 'IHGJKHNA', 0
    db 'FLGGKOMA', 0
    db 'MFFOIKDA', 0
    db 'KHGMKIGA', 0
    db 'HKHHKMKA', 0
    db 'IGMKIIKA', 0
    db 'KKGKHHJA', 0
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
    db 'PORTDATA.VGA', 0
    db 'PCFILE.DBS', 0
    db 'PCFILE.DBS', 0
    db 'PCVWSCRN.VGA', 0
    times 11 db 0

