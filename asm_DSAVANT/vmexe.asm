%include "structs/structs.inc"
%include "structs/data_b0cb.inc"
org 0
bits 16
%include "labels/vmexe_foreign_labels.inc"

    ; header (8 bytes)
    db 0xf2, 0x00, 0x55, 0x50, 0x37, 0xa5, 0x98, 0x90

data_0014 equ 0x0014
data_0087 equ 0x0087
data_00c1 equ 0x00c1
data_00ce equ 0x00ce
data_00da equ 0x00da
data_0158 equ 0x0158
data_030a equ 0x030a
data_0984 equ 0x0984
data_0e2a equ 0x0e2a
data_0e2c equ 0x0e2c
data_0e36 equ 0x0e36
data_0f00 equ 0x0f00
data_108a equ 0x108a
data_10d8 equ 0x10d8
data_3300 equ 0x3300
data_35e8 equ 0x35e8
data_3700 equ 0x3700
data_3ed1 equ 0x3ed1
data_46d1 equ 0x46d1
data_56d1 equ 0x56d1
data_5962 equ 0x5962
data_5963 equ 0x5963
data_5964 equ 0x5964
data_5988 equ 0x5988
data_598e equ 0x598e
data_69c8 equ 0x69c8
data_7abc equ 0x7abc
data_7b04 equ 0x7b04
data_82e8 equ 0x82e8
data_82ee equ 0x82ee
data_82f2 equ 0x82f2
data_82f4 equ 0x82f4
data_82f6 equ 0x82f6
data_82f8 equ 0x82f8
data_830a equ 0x830a
data_8320 equ 0x8320
data_838b equ 0x838b
data_83e9 equ 0x83e9
data_8454 equ 0x8454
data_8458 equ 0x8458
data_845a equ 0x845a
data_845e equ 0x845e
data_8460 equ 0x8460
data_8462 equ 0x8462
data_8464 equ 0x8464
data_8466 equ 0x8466
data_8468 equ 0x8468
data_8482 equ 0x8482
data_8484 equ 0x8484
data_848e equ 0x848e
data_8490 equ 0x8490
data_8492 equ 0x8492
data_849e equ 0x849e
data_84a0 equ 0x84a0
data_84a2 equ 0x84a2
data_84a4 equ 0x84a4
data_873e equ 0x873e
data_8759 equ 0x8759
data_8b04 equ 0x8b04
data_8b06 equ 0x8b06
data_8be3 equ 0x8be3
data_8d0a equ 0x8d0a
data_8d0c equ 0x8d0c
data_8d0e equ 0x8d0e
data_8d10 equ 0x8d10
data_8f20 equ 0x8f20
data_9058 equ 0x9058
data_905c equ 0x905c
data_906c equ 0x906c
data_908a equ 0x908a
data_908c equ 0x908c
data_908e equ 0x908e
data_9090 equ 0x9090
data_9092 equ 0x9092
data_9094 equ 0x9094
data_90dc equ 0x90dc
data_90de equ 0x90de
data_90e0 equ 0x90e0
data_90e2 equ 0x90e2
data_90e4 equ 0x90e4
data_9136 equ 0x9136
data_9186 equ 0x9186
data_91d6 equ 0x91d6
data_91d8 equ 0x91d8
data_91da equ 0x91da
data_b0cb equ 0xb0cb

    and al, 0                        ; 0x0008
    and byte [bx + di], al           ; 0x000a
    adc bp, si                       ; 0x000c
api_idx_0002:
    mov ax, 0xfffe                   ; 0x000e
    call ds_dispatch_f40b            ; 0x0011
@..api_idx_0002.l1:
    mov ax, 0x2f                     ; 0x0014
    push ax                          ; 0x0017
    push word [bp + 0x4]             ; 0x0018
    call ds_dispatch_ee4a            ; 0x001b
    add sp, byte 4                   ; 0x001e
    mov word [bp - 0x0002], ax       ; 0x0021
    cmp ax, strict word 0xffff       ; 0x0024
    je short @..api_idx_0002.l2      ; 0x0027
    mov bx, word [bp + 0x4]          ; 0x0029
    mov si, ax                       ; 0x002c
    mov byte [bx + si], 0x20         ; 0x002e
    jmp short @..api_idx_0002.l1     ; 0x0031
@..api_idx_0002.l2:
    ret                              ; 0x0033
api_idx_0004:
    mov ax, 0xfffc                   ; 0x0034
    call ds_dispatch_f40b            ; 0x0037
    mov ax, word [bp + 0x6]          ; 0x003a
    mov bx, 0x64                     ; 0x003d
    imul bx                          ; 0x0040
    push ax                          ; 0x0042
    push dx                          ; 0x0043
    mov ax, word [bp + 0x8]          ; 0x0044
    cwd                              ; 0x0047
    mov cx, ax                       ; 0x0048
    mov bx, dx                       ; 0x004a
    pop dx                           ; 0x004c
    pop ax                           ; 0x004d
    call ds_dispatch_f99f            ; 0x004e
    mov cx, ax                       ; 0x0051
    mov bx, dx                       ; 0x0053
    mov ax, 0x64                     ; 0x0055
    mov dx, 0                        ; 0x0058
    sub ax, cx                       ; 0x005b
    sbb dx, bx                       ; 0x005d
    mov word [bp - 0x0002], dx       ; 0x005f
    mov word [bp - 0x0004], ax       ; 0x0062
    cmp dx, byte 0                   ; 0x0065
    jg short @..api_idx_0004.l1      ; 0x0068
    jne short @..api_idx_0004.l2     ; 0x006a
    cmp ax, strict word 0x32         ; 0x006c
    jbe short @..api_idx_0004.l2     ; 0x006f
@..api_idx_0004.l1:
    jmp short @..local.l1            ; 0x0071
@..api_idx_0004.l2:
    mov ax, 0                        ; 0x0073
    ret                              ; 0x0076
@..local.l1:
    cmp word [bp - 0x0002], byte 0   ; 0x0077
    jg short @..local.l2             ; 0x007b
    jne short @..local.l3            ; 0x007d
    cmp word [bp - 0x0004], byte 0x42 ; 0x007f
    jbe short @..local.l3            ; 0x0083
@..local.l2:
    jmp short @..local.l5            ; 0x0085
@..local.l3:
    mov ax, 0                        ; 0x0087
    cmp word [bp + 0x4], byte 0      ; 0x008a
    jne short @..local.l4            ; 0x008e
    mov ax, 5                        ; 0x0090
@..local.l4:
    ret                              ; 0x0093
@..local.l5:
    cmp word [bp - 0x0002], byte 0   ; 0x0094
    jg short @..local.l6             ; 0x0098
    jne short @..local.l7            ; 0x009a
    cmp word [bp - 0x0004], byte 0x4b ; 0x009c
    jbe short @..local.l7            ; 0x00a0
@..local.l6:
    jmp short @..local.l9            ; 0x00a2
@..local.l7:
    mov ax, 1                        ; 0x00a4
    cmp word [bp + 0x4], byte 0      ; 0x00a7
    jne short @..local.l8            ; 0x00ab
    mov ax, 0xa                      ; 0x00ad
@..local.l8:
    ret                              ; 0x00b0
@..local.l9:
    cmp word [bp - 0x0002], byte 0   ; 0x00b1
    jg short @..local.l10            ; 0x00b5
    jne short @..local.l11           ; 0x00b7
    cmp word [bp - 0x0004], byte 0x5a ; 0x00b9
    jbe short @..local.l11           ; 0x00bd
@..local.l10:
    jmp short @..local.l13           ; 0x00bf
@..local.l11:
    mov ax, 2                        ; 0x00c1
    cmp word [bp + 0x4], byte 0      ; 0x00c4
    jne short @..local.l12           ; 0x00c8
    mov ax, data_0014                ; 0x00ca
@..local.l12:
    ret                              ; 0x00cd
@..local.l13:
    mov ax, 4                        ; 0x00ce
    cmp word [bp + 0x4], byte 0      ; 0x00d1
    jne short @..local.l14           ; 0x00d5
    mov ax, 0x28                     ; 0x00d7
@..local.l14:
    ret                              ; 0x00da
api_idx_0012:
    mov ax, 0xffee                   ; 0x00db
    call ds_dispatch_f40b            ; 0x00de
    mov word [bp - 0x000e], 0        ; 0x00e1
    mov word [bp - 0x000c], 0        ; 0x00e6
    mov word [bp - 0x000a], 0        ; 0x00eb
    mov ax, 0x248                    ; 0x00f0
    imul word [bp + 0x4]             ; 0x00f3
    mov bx, ax                       ; 0x00f6
    mov al, byte [bx + 0x5e37]       ; 0x00f8
    sub ah, ah                       ; 0x00fc
    mov word [bp - 0x0008], ax       ; 0x00fe
    mov al, byte [bx + 0x5e38]       ; 0x0101
    sub ah, ah                       ; 0x0105
    mov word [bp - 0x0006], ax       ; 0x0107
    mov word [bp - 0x0004], 0        ; 0x010a
    mov word [bp - 0x0002], 9        ; 0x010f
    mov ax, word [bx + 0x5c14]       ; 0x0114
    mov bx, 0x64                     ; 0x0118
    imul bx                          ; 0x011b
    push ax                          ; 0x011d
    push dx                          ; 0x011e
    mov ax, 0x248                    ; 0x011f
    imul word [bp + 0x4]             ; 0x0122
    mov bx, ax                       ; 0x0125
    mov ax, word [bx + 0x5c16]       ; 0x0127
    cwd                              ; 0x012b
    mov cx, ax                       ; 0x012c
    mov bx, dx                       ; 0x012e
    pop dx                           ; 0x0130
    pop ax                           ; 0x0131
    call ds_dispatch_f99f            ; 0x0132
    mov word [bp - 0x0010], dx       ; 0x0135
    mov word [bp - 0x0012], ax       ; 0x0138
    cmp dx, byte 0                   ; 0x013b
    jg short @..api_idx_0012.l1      ; 0x013e
    jne short @..api_idx_0012.l2     ; 0x0140
    cmp ax, strict word 0x32         ; 0x0142
    jbe short @..api_idx_0012.l2     ; 0x0145
@..api_idx_0012.l1:
    jmp short @..api_idx_0012.l3     ; 0x0147
@..api_idx_0012.l2:
    jmp near @..api_idx_0012.l17     ; 0x0149
@..api_idx_0012.l3:
    cmp dx, byte 0                   ; 0x014c
    jg short @..api_idx_0012.l4      ; 0x014f
    jne short @..api_idx_0012.l5     ; 0x0151
    cmp ax, strict word 0x42         ; 0x0153
    jbe short @..api_idx_0012.l5     ; 0x0156
@..api_idx_0012.l4:
    jmp short @..api_idx_0012.l8     ; 0x0158
@..api_idx_0012.l5:
    mov word [bp - 0x000c], 5        ; 0x015a
    mov word [bp - 0x000a], 0xa      ; 0x015f
    cmp word [bp - 0x0008], byte 3   ; 0x0164
    jle short @..api_idx_0012.l6     ; 0x0168
    mov word [bp - 0x0008], 3        ; 0x016a
@..api_idx_0012.l6:
    cmp word [bp - 0x0006], byte 3   ; 0x016f
    jle short @..api_idx_0012.l7     ; 0x0173
    mov word [bp - 0x0006], 3        ; 0x0175
@..api_idx_0012.l7:
    jmp near @..api_idx_0012.l17     ; 0x017a
@..api_idx_0012.l8:
    cmp dx, byte 0                   ; 0x017d
    jg short @..api_idx_0012.l9      ; 0x0180
    jne short @..api_idx_0012.l10    ; 0x0182
    cmp ax, strict word 0x4b         ; 0x0184
    jbe short @..api_idx_0012.l10    ; 0x0187
@..api_idx_0012.l9:
    jmp short @..api_idx_0012.l13    ; 0x0189
@..api_idx_0012.l10:
    mov word [bp - 0x000e], 1        ; 0x018b
    mov word [bp - 0x000c], 0xa      ; 0x0190
    mov word [bp - 0x000a], data_0014 ; 0x0195
    cmp word [bp - 0x0008], byte 2   ; 0x019a
    jle short @..api_idx_0012.l11    ; 0x019e
    mov word [bp - 0x0008], 2        ; 0x01a0
@..api_idx_0012.l11:
    cmp word [bp - 0x0006], byte 2   ; 0x01a5
    jle short @..api_idx_0012.l12    ; 0x01a9
    mov word [bp - 0x0006], 2        ; 0x01ab
@..api_idx_0012.l12:
    mov ax, 0x248                    ; 0x01b0
    imul word [bp + 0x4]             ; 0x01b3
    mov bx, ax                       ; 0x01b6
    mov ax, word [bx + 0x5c12]       ; 0x01b8
    mov cx, 0x64                     ; 0x01bc
    cwd                              ; 0x01bf
    idiv cx                          ; 0x01c0
    mov word [bp - 0x0004], ax       ; 0x01c2
    mov word [bp - 0x0002], 0x83     ; 0x01c5
    jmp short @..api_idx_0012.l17    ; 0x01ca
@..api_idx_0012.l13:
    cmp word [bp - 0x0010], byte 0   ; 0x01cc
    jg short @..api_idx_0012.l14     ; 0x01d0
    jne short @..api_idx_0012.l15    ; 0x01d2
    cmp word [bp - 0x0012], byte 0x5a ; 0x01d4
    jbe short @..api_idx_0012.l15    ; 0x01d8
@..api_idx_0012.l14:
    jmp short @..api_idx_0012.l16    ; 0x01da
@..api_idx_0012.l15:
    mov word [bp - 0x000e], 2        ; 0x01dc
    mov word [bp - 0x000c], data_0014 ; 0x01e1
    mov word [bp - 0x000a], 0x28     ; 0x01e6
    mov word [bp - 0x0008], 1        ; 0x01eb
    mov word [bp - 0x0006], 1        ; 0x01f0
    mov ax, 0x248                    ; 0x01f5
    imul word [bp + 0x4]             ; 0x01f8
    mov bx, ax                       ; 0x01fb
    mov ax, word [bx + 0x5c12]       ; 0x01fd
    mov cx, 0x32                     ; 0x0201
    cwd                              ; 0x0204
    idiv cx                          ; 0x0205
    mov word [bp - 0x0004], ax       ; 0x0207
    mov word [bp - 0x0002], 0x54     ; 0x020a
    jmp short @..api_idx_0012.l17    ; 0x020f
@..api_idx_0012.l16:
    mov word [bp - 0x000e], 4        ; 0x0211
    mov word [bp - 0x000c], 0x28     ; 0x0216
    mov word [bp - 0x000a], 0x50     ; 0x021b
    mov word [bp - 0x0008], 1        ; 0x0220
    mov word [bp - 0x0006], 1        ; 0x0225
    mov ax, 0x248                    ; 0x022a
    imul word [bp + 0x4]             ; 0x022d
    mov bx, ax                       ; 0x0230
    mov ax, word [bx + 0x5c12]       ; 0x0232
    mov cx, 0x19                     ; 0x0236
    cwd                              ; 0x0239
    idiv cx                          ; 0x023a
    mov word [bp - 0x0004], ax       ; 0x023c
    mov word [bp - 0x0002], 0x16     ; 0x023f
@..api_idx_0012.l17:
    lea si, word [bp - 0x000e]       ; 0x0244
    mov di, 0x90bc                   ; 0x0247
    mov cx, ds                       ; 0x024a
    mov es, cx                       ; 0x024c
    mov cx, 7                        ; 0x024e
    rep movsw                        ; 0x0251
    mov ax, 0x90bc                   ; 0x0253
    ret                              ; 0x0256
api_idx_0008:
    mov ax, 0xfff8                   ; 0x0257
    call ds_dispatch_f40b            ; 0x025a
    push word [bp + 0x4]             ; 0x025d
    call ds_dispatch_ca85            ; 0x0260
    pop cx                           ; 0x0263
    test ax, ax                      ; 0x0264
    jne short @..api_idx_0008.l1     ; 0x0266
    jmp near @..api_idx_0008.l4      ; 0x0268
@..api_idx_0008.l1:
    mov ax, 0x2c                     ; 0x026b
    imul word [bp + 0x4]             ; 0x026e
    mov si, ax                       ; 0x0271
    mov bx, word [data_8482]         ; 0x0273
    cmp byte [bx + si + 0x2b], 1     ; 0x0277
    je short @..api_idx_0008.l2      ; 0x027b
    cmp byte [bx + si + 0x2b], 3     ; 0x027d
    je short @..api_idx_0008.l2      ; 0x0281
    jmp near @..api_idx_0008.l4      ; 0x0283
@..api_idx_0008.l2:
    mov ax, 0                        ; 0x0286
    push ax                          ; 0x0289
    push word [bp + 0x4]             ; 0x028a
    call ds_dispatch_cb3a            ; 0x028d
    add sp, byte 4                   ; 0x0290
    mov ax, word [bp + 0x4]          ; 0x0293
    mov cx, 2                        ; 0x0296
    cwd                              ; 0x0299
    idiv cx                          ; 0x029a
    mov ax, dx                       ; 0x029c
    mov cx, 0xfc                     ; 0x029e
    imul cx                          ; 0x02a1
    add ax, strict word 5            ; 0x02a3
    mov word [bp - 0x0006], ax       ; 0x02a6
    mov ax, word [bp + 0x4]          ; 0x02a9
    mov cx, 2                        ; 0x02ac
    cwd                              ; 0x02af
    idiv cx                          ; 0x02b0
    mov cx, 0x2d                     ; 0x02b2
    imul cx                          ; 0x02b5
    add ax, strict word 0x12         ; 0x02b7
    mov word [bp - 0x0008], ax       ; 0x02ba
    add ax, strict word 0x15         ; 0x02bd
    push ax                          ; 0x02c0
    mov ax, word [bp - 0x0006]       ; 0x02c1
    add ax, strict word 0x1c         ; 0x02c4
    push ax                          ; 0x02c7
    call ds_dispatch_e809            ; 0x02c8
    add sp, byte 4                   ; 0x02cb
    mov ax, 6                        ; 0x02ce
    push ax                          ; 0x02d1
    mov ax, 0xb                      ; 0x02d2
    push ax                          ; 0x02d5
    call ds_dispatch_e830            ; 0x02d6
    add sp, byte 4                   ; 0x02d9
    cmp word [bp + 0x6], byte 0      ; 0x02dc
    je short @..api_idx_0008.l3      ; 0x02e0
    mov ax, word [bp - 0x0008]       ; 0x02e2
    add ax, strict word 0x2b         ; 0x02e5
    push ax                          ; 0x02e8
    mov ax, word [bp - 0x0006]       ; 0x02e9
    add ax, strict word 0x3b         ; 0x02ec
    push ax                          ; 0x02ef
    push word [bp - 0x0008]          ; 0x02f0
    push word [bp - 0x0006]          ; 0x02f3
    call ds_dispatch_e8da            ; 0x02f6
    add sp, byte 8                   ; 0x02f9
@..api_idx_0008.l3:
    jmp short @..api_idx_0008.l5     ; 0x02fc
@..api_idx_0008.l4:
    push word [bp + 0x6]             ; 0x02fe
    push word [bp + 0x4]             ; 0x0301
    call ds_dispatch_cb3a            ; 0x0304
    add sp, byte 4                   ; 0x0307
@..api_idx_0008.l5:
    ret                              ; 0x030a
api_idx_0004_2:
    mov ax, 0xfffc                   ; 0x030b
    call ds_dispatch_f40b            ; 0x030e
    mov ax, 0x2c                     ; 0x0311
    imul word [bp + 0x4]             ; 0x0314
    mov si, ax                       ; 0x0317
    mov bx, word [data_8482]         ; 0x0319
    mov ax, word [bx + si + 0x2]     ; 0x031d
    push ax                          ; 0x0320
    mov ax, 0x248                    ; 0x0321
    imul word [bp + 0x4]             ; 0x0324
    mov bx, ax                       ; 0x0327
    pop ax                           ; 0x0329
    mov word [bx + 0x5c0c], ax       ; 0x032a
    mov bx, word [data_8482]         ; 0x032e
    mov ax, word [bx + si + 0x6]     ; 0x0332
    push ax                          ; 0x0335
    mov ax, 0x248                    ; 0x0336
    imul word [bp + 0x4]             ; 0x0339
    mov bx, ax                       ; 0x033c
    pop ax                           ; 0x033e
    mov word [bx + 0x5c10], ax       ; 0x033f
    mov bx, word [data_8482]         ; 0x0343
    mov al, byte [bx + si + 0x22]    ; 0x0347
    push ax                          ; 0x034a
    mov ax, 0x248                    ; 0x034b
    imul word [bp + 0x4]             ; 0x034e
    mov bx, ax                       ; 0x0351
    pop ax                           ; 0x0353
    mov byte [bx + 0x5e2f], al       ; 0x0354
    mov ax, 0xa                      ; 0x0358
    push ax                          ; 0x035b
    add bx, strict word 0x5d5a       ; 0x035c
    mov ax, bx                       ; 0x0360
    push ax                          ; 0x0362
    mov ax, word [data_8482]         ; 0x0363
    add ax, si                       ; 0x0366
    add ax, strict word 0xe          ; 0x0368
    push ax                          ; 0x036b
    call ds_dispatch_fedc            ; 0x036c
    add sp, byte 6                   ; 0x036f
    mov ax, 0x2c                     ; 0x0372
    imul word [bp + 0x4]             ; 0x0375
    mov si, ax                       ; 0x0378
    mov bx, word [data_8482]         ; 0x037a
    mov al, byte [bx + si + 0x23]    ; 0x037e
    push ax                          ; 0x0381
    mov ax, 0x248                    ; 0x0382
    imul word [bp + 0x4]             ; 0x0385
    mov bx, ax                       ; 0x0388
    pop ax                           ; 0x038a
    mov byte [bx + 0x5e32], al       ; 0x038b
    mov ax, 0                        ; 0x038f
    push ax                          ; 0x0392
    push word [bp + 0x4]             ; 0x0393
    call api_idx_0008                ; 0x0396
    add sp, byte 4                   ; 0x0399
    mov ax, word [bp + 0x4]          ; 0x039c
    mov cx, 2                        ; 0x039f
    cwd                              ; 0x03a2
    idiv cx                          ; 0x03a3
    mov ax, dx                       ; 0x03a5
    mov cx, 0xfc                     ; 0x03a7
    imul cx                          ; 0x03aa
    add ax, strict word 5            ; 0x03ac
    mov word [bp - 0x0002], ax       ; 0x03af
    mov ax, word [bp + 0x4]          ; 0x03b2
    mov cx, 2                        ; 0x03b5
    cwd                              ; 0x03b8
    idiv cx                          ; 0x03b9
    mov cx, 0x2d                     ; 0x03bb
    imul cx                          ; 0x03be
    add ax, strict word 0x12         ; 0x03c0
    mov word [bp - 0x0004], ax       ; 0x03c3
    cmp word [bp + 0x6], byte 0      ; 0x03c6
    je short @..api_idx_0004_2.l1    ; 0x03ca
    mov ax, 0x17                     ; 0x03cc
    push ax                          ; 0x03cf
    mov ax, word [bp - 0x0004]       ; 0x03d0
    add ax, strict word 0x24         ; 0x03d3
    push ax                          ; 0x03d6
    mov ax, 0x248                    ; 0x03d7
    imul word [bp + 0x4]             ; 0x03da
    add ax, 0x5bf4                   ; 0x03dd
    push ax                          ; 0x03e0
    call ds_dispatch_fa90            ; 0x03e1
    pop cx                           ; 0x03e4
    mov cx, 6                        ; 0x03e5
    imul cx                          ; 0x03e8
    add ax, word [bp - 0x0002]       ; 0x03ea
    inc ax                           ; 0x03ed
    inc ax                           ; 0x03ee
    inc ax                           ; 0x03ef
    push ax                          ; 0x03f0
    mov ax, word [bp - 0x0004]       ; 0x03f1
    add ax, strict word 0x20         ; 0x03f4
    push ax                          ; 0x03f7
    mov ax, word [bp - 0x0002]       ; 0x03f8
    inc ax                           ; 0x03fb
    inc ax                           ; 0x03fc
    inc ax                           ; 0x03fd
    push ax                          ; 0x03fe
    call ds_dispatch_e901            ; 0x03ff
    add sp, byte 0x0a                ; 0x0402
    mov ax, 0x17                     ; 0x0405
    push ax                          ; 0x0408
    mov ax, 1                        ; 0x0409
    push ax                          ; 0x040c
    call ds_dispatch_e823            ; 0x040d
    add sp, byte 4                   ; 0x0410
    mov ax, word [bp - 0x0004]       ; 0x0413
    add ax, strict word 0x20         ; 0x0416
    push ax                          ; 0x0419
    mov ax, word [bp - 0x0002]       ; 0x041a
    add ax, strict word 4            ; 0x041d
    push ax                          ; 0x0420
    call ds_dispatch_e809            ; 0x0421
    add sp, byte 4                   ; 0x0424
    mov ax, 0                        ; 0x0427
    push ax                          ; 0x042a
    mov ax, 0x248                    ; 0x042b
    imul word [bp + 0x4]             ; 0x042e
    add ax, 0x5bf4                   ; 0x0431
    push ax                          ; 0x0434
    call ds_dispatch_e84e            ; 0x0435
    add sp, byte 4                   ; 0x0438
@..api_idx_0004_2.l1:
    mov ax, word [bp - 0x0004]       ; 0x043b
    add ax, strict word 0x2b         ; 0x043e
    push ax                          ; 0x0441
    mov ax, word [bp - 0x0002]       ; 0x0442
    add ax, strict word 0x3b         ; 0x0445
    push ax                          ; 0x0448
    push word [bp - 0x0004]          ; 0x0449
    push word [bp - 0x0002]          ; 0x044c
    call ds_dispatch_e8da            ; 0x044f
    add sp, byte 8                   ; 0x0452
    ret                              ; 0x0455
api_idx_000a:
    mov ax, 0xfff6                   ; 0x0456
    call ds_dispatch_f40b            ; 0x0459
    mov ax, word [bp + 0x4]          ; 0x045c
    shl ax, 1                        ; 0x045f
    mov bx, ax                       ; 0x0461
    mov bx, word [bx - 0x7b7e]       ; 0x0463
    cmp byte [bx + 0x19f], 0xff      ; 0x0467
    jne short @..local.l15           ; 0x046c
    ret                              ; 0x046e
@..local.l15:
    mov al, byte [bx + 0x19f]        ; 0x046f
    cbw                              ; 0x0473
    mov word [bp - 0x0002], ax       ; 0x0474
    mov word [bp - 0x000a], 0        ; 0x0477
    cmp word [bp + 0xa], byte 0xff   ; 0x047c
    jne short @..local.l16           ; 0x0480
    mov word [bp + 0xa], 0           ; 0x0482
    mov cx, 0x15e                    ; 0x0487
    imul cx                          ; 0x048a
    mov bx, ax                       ; 0x048c
    mov al, byte [bx + 0x6b75]       ; 0x048e
    sub ah, ah                       ; 0x0492
    cmp ax, 0xfe                     ; 0x0494
    je short @..local.l16            ; 0x0497
    mov word [bp - 0x000a], 1        ; 0x0499
@..local.l16:
    mov ax, 0x15e                    ; 0x049e
    imul word [bp - 0x0002]          ; 0x04a1
    add ax, word [bp + 0xa]          ; 0x04a4
    mov bx, ax                       ; 0x04a7
    mov al, byte [bx + 0x6a1a]       ; 0x04a9
    sub ah, ah                       ; 0x04ad
    mov word [bp - 0x0004], ax       ; 0x04af
    jmp near @..local.l22            ; 0x04b2
@..local.l17:
    mov ax, 0x15e                    ; 0x04b5
    imul word [bp - 0x0002]          ; 0x04b8
    add ax, word [bp - 0x0004]       ; 0x04bb
    mov bx, ax                       ; 0x04be
    mov al, byte [bx + 0x6a22]       ; 0x04c0
    sub ah, ah                       ; 0x04c4
    mov word [bp - 0x0006], ax       ; 0x04c6
    cmp word [bp + 0xa], byte 0      ; 0x04c9
    jne short @..local.l20           ; 0x04cd
    mov ax, 0x15e                    ; 0x04cf
    imul word [bp - 0x0002]          ; 0x04d2
    mov bx, ax                       ; 0x04d5
    cmp byte [bx + 0x6b75], 0        ; 0x04d7
    jbe short @..local.l20           ; 0x04dc
    mov al, byte [bx + 0x6b75]       ; 0x04de
    sub ah, ah                       ; 0x04e2
    cmp ax, 0xfe                     ; 0x04e4
    jge short @..local.l20           ; 0x04e7
    cmp ax, 0xfd                     ; 0x04e9
    jne short @..local.l18           ; 0x04ec
    mov word [bp - 0x0006], 0        ; 0x04ee
    mov word [bp - 0x0008], 0        ; 0x04f3
    jmp short @..local.l19           ; 0x04f8
@..local.l18:
    mov word [bp - 0x0008], ax       ; 0x04fa
    mov ax, word [bp + 0x4]          ; 0x04fd
    shl ax, 1                        ; 0x0500
    mov bx, ax                       ; 0x0502
    mov bx, word [bx - 0x7b70]       ; 0x0504
    cmp byte [bx + 0xd7], 0x47       ; 0x0508
    jne short @..local.l19           ; 0x050d
    cmp word [bp - 0x000a], byte 0   ; 0x050f
    jne short @..local.l19           ; 0x0513
    mov word [bp - 0x0006], 1        ; 0x0515
    mov word [bp - 0x0008], 0xb      ; 0x051a
@..local.l19:
    jmp short @..local.l21           ; 0x051f
@..local.l20:
    mov ax, 0x15e                    ; 0x0521
    imul word [bp - 0x0002]          ; 0x0524
    add ax, word [bp - 0x0004]       ; 0x0527
    mov bx, ax                       ; 0x052a
    mov al, byte [bx + 0x6a2c]       ; 0x052c
    sub ah, ah                       ; 0x0530
    push ax                          ; 0x0532
    call ds_dispatch_b7a9            ; 0x0533
    pop cx                           ; 0x0536
    add word [bp - 0x0006], ax       ; 0x0537
    mov ax, 0x15e                    ; 0x053a
    imul word [bp - 0x0002]          ; 0x053d
    add ax, word [bp - 0x0006]       ; 0x0540
    mov bx, ax                       ; 0x0543
    mov al, byte [bx + 0x6a40]       ; 0x0545
    sub ah, ah                       ; 0x0549
    mov word [bp - 0x0008], ax       ; 0x054b
    cmp word [bp - 0x000a], byte 0   ; 0x054e
    je short @..local.l21            ; 0x0552
    mov al, byte [bx + 0x6a4a]       ; 0x0554
    sub ah, ah                       ; 0x0558
    push ax                          ; 0x055a
    call ds_dispatch_b7a9            ; 0x055b
    pop cx                           ; 0x055e
    add word [bp - 0x0008], ax       ; 0x055f
@..local.l21:
    mov al, byte [bp + 0xa]          ; 0x0562
    push ax                          ; 0x0565
    mov ax, 3                        ; 0x0566
    imul word [bp + 0x6]             ; 0x0569
    mov cx, ax                       ; 0x056c
    add ax, word [bp + 0x8]          ; 0x056e
    mov bx, ax                       ; 0x0571
    pop ax                           ; 0x0573
    mov byte [bx - 0x7bd0], al       ; 0x0574
    mov al, byte [bp - 0x0006]       ; 0x0578
    push ax                          ; 0x057b
    mov ax, 0x5a                     ; 0x057c
    imul word [bp + 0x6]             ; 0x057f
    mov cx, ax                       ; 0x0582
    mov ax, 0x1e                     ; 0x0584
    imul word [bp + 0x8]             ; 0x0587
    mov dx, ax                       ; 0x058a
    add cx, ax                       ; 0x058c
    mov ax, 3                        ; 0x058e
    imul word [bp - 0x0004]          ; 0x0591
    mov dx, ax                       ; 0x0594
    add cx, ax                       ; 0x0596
    mov bx, cx                       ; 0x0598
    pop ax                           ; 0x059a
    mov byte [bx - 0x7cde], al       ; 0x059b
    mov al, byte [bp - 0x0008]       ; 0x059f
    mov byte [bx - 0x7cdd], al       ; 0x05a2
    mov ax, 0x15e                    ; 0x05a6
    imul word [bp - 0x0002]          ; 0x05a9
    mov cx, word [bp - 0x0008]       ; 0x05ac
    shl cx, 1                        ; 0x05af
    shl cx, 1                        ; 0x05b1
    add ax, cx                       ; 0x05b3
    mov bx, ax                       ; 0x05b5
    mov al, byte [bx + 0x6ac1]       ; 0x05b7
    inc al                           ; 0x05bb
    push ax                          ; 0x05bd
    mov ax, 0x5a                     ; 0x05be
    imul word [bp + 0x6]             ; 0x05c1
    mov cx, ax                       ; 0x05c4
    mov ax, 0x1e                     ; 0x05c6
    imul word [bp + 0x8]             ; 0x05c9
    mov dx, ax                       ; 0x05cc
    add cx, ax                       ; 0x05ce
    mov ax, 3                        ; 0x05d0
    imul word [bp - 0x0004]          ; 0x05d3
    mov dx, ax                       ; 0x05d6
    add cx, ax                       ; 0x05d8
    mov bx, cx                       ; 0x05da
    pop ax                           ; 0x05dc
    mov byte [bx - 0x7cdc], al       ; 0x05dd
    mov al, byte [bx - 0x7cdc]       ; 0x05e1
    sub ah, ah                       ; 0x05e5
    mov cx, ax                       ; 0x05e7
    push cx                          ; 0x05e9
    mov ax, 0x15e                    ; 0x05ea
    imul word [bp - 0x0002]          ; 0x05ed
    mov cx, word [bp - 0x0008]       ; 0x05f0
    shl cx, 1                        ; 0x05f3
    shl cx, 1                        ; 0x05f5
    add ax, cx                       ; 0x05f7
    mov bx, ax                       ; 0x05f9
    mov al, byte [bx + 0x6ac2]       ; 0x05fb
    sub ah, ah                       ; 0x05ff
    push ax                          ; 0x0601
    call ds_dispatch_b7a9            ; 0x0602
    pop cx                           ; 0x0605
    pop cx                           ; 0x0606
    add ax, cx                       ; 0x0607
    push ax                          ; 0x0609
    mov ax, 0x5a                     ; 0x060a
    imul word [bp + 0x6]             ; 0x060d
    mov cx, ax                       ; 0x0610
    mov ax, 0x1e                     ; 0x0612
    imul word [bp + 0x8]             ; 0x0615
    mov dx, ax                       ; 0x0618
    add cx, ax                       ; 0x061a
    mov ax, 3                        ; 0x061c
    imul word [bp - 0x0004]          ; 0x061f
    mov dx, ax                       ; 0x0622
    add cx, ax                       ; 0x0624
    mov bx, cx                       ; 0x0626
    pop ax                           ; 0x0628
    mov byte [bx - 0x7cdc], al       ; 0x0629
    inc word [bp - 0x0004]           ; 0x062d
@..local.l22:
    mov ax, 0x15e                    ; 0x0630
    imul word [bp - 0x0002]          ; 0x0633
    add ax, word [bp + 0xa]          ; 0x0636
    mov bx, ax                       ; 0x0639
    mov al, byte [bx + 0x6a1a]       ; 0x063b
    sub ah, ah                       ; 0x063f
    push ax                          ; 0x0641
    mov al, byte [bx + 0x6a1e]       ; 0x0642
    sub ah, ah                       ; 0x0646
    mov cx, ax                       ; 0x0648
    pop ax                           ; 0x064a
    add ax, cx                       ; 0x064b
    cmp ax, word [bp - 0x0004]       ; 0x064d
    jle short @..local.l23           ; 0x0650
    jmp near @..local.l17            ; 0x0652
@..local.l23:
    ret                              ; 0x0655
api_idx_000e:
    mov ax, 0xfff2                   ; 0x0656
    call ds_dispatch_f40b            ; 0x0659
    mov bx, word [bp + 0xe]          ; 0x065c
    mov byte [bx], 0                 ; 0x065f
    mov ax, word [bp + 0x4]          ; 0x0662
    shl ax, 1                        ; 0x0665
    mov bx, ax                       ; 0x0667
    mov bx, word [bx - 0x7b7e]       ; 0x0669
    cmp byte [bx + 0x19f], 0xff      ; 0x066d
    jne short @..local.l24           ; 0x0672
    ret                              ; 0x0674
@..local.l24:
    mov al, byte [bx + 0x19f]        ; 0x0675
    cbw                              ; 0x0679
    mov word [bp - 0x0002], ax       ; 0x067a
    mov word [bp - 0x000e], 0        ; 0x067d
    mov cx, 0x15e                    ; 0x0682
    imul cx                          ; 0x0685
    push ax                          ; 0x0687
    mov ax, 3                        ; 0x0688
    imul word [bp + 0x8]             ; 0x068b
    add ax, word [bp + 0xa]          ; 0x068e
    mov bx, ax                       ; 0x0691
    mov al, byte [bx - 0x7bd0]       ; 0x0693
    sub ah, ah                       ; 0x0697
    mov cx, ax                       ; 0x0699
    pop ax                           ; 0x069b
    add ax, cx                       ; 0x069c
    mov bx, ax                       ; 0x069e
    mov al, byte [bx + 0x6a1a]       ; 0x06a0
    sub ah, ah                       ; 0x06a4
    mov word [bp - 0x0004], ax       ; 0x06a6
    jmp near @..local.l38            ; 0x06a9
@..local.l25:
    mov ax, 0x2c                     ; 0x06ac
    imul word [bp + 0x6]             ; 0x06af
    mov si, ax                       ; 0x06b2
    mov ax, word [bp + 0x4]          ; 0x06b4
    shl ax, 1                        ; 0x06b7
    mov bx, ax                       ; 0x06b9
    mov bx, word [bx - 0x7b7e]       ; 0x06bb
    cmp byte [bx + si + 0x22], 2     ; 0x06bf
    je short @..local.l26            ; 0x06c3
    cmp byte [bx + si + 0x11], 0     ; 0x06c5
    ja short @..local.l26            ; 0x06c9
    cmp byte [bx + si + 0x10], 0     ; 0x06cb
    jbe short @..local.l27           ; 0x06cf
@..local.l26:
    mov ax, 0x5a                     ; 0x06d1
    imul word [bp + 0x8]             ; 0x06d4
    push ax                          ; 0x06d7
    mov ax, 0x1e                     ; 0x06d8
    imul word [bp + 0xa]             ; 0x06db
    mov cx, ax                       ; 0x06de
    pop ax                           ; 0x06e0
    add ax, cx                       ; 0x06e1
    push ax                          ; 0x06e3
    mov ax, 3                        ; 0x06e4
    imul word [bp - 0x0004]          ; 0x06e7
    mov cx, ax                       ; 0x06ea
    pop ax                           ; 0x06ec
    add ax, cx                       ; 0x06ed
    mov bx, ax                       ; 0x06ef
    mov al, byte [bx - 0x7cde]       ; 0x06f1
    sub ah, ah                       ; 0x06f5
    mov word [bp - 0x0006], ax       ; 0x06f7
    mov ax, 0x15e                    ; 0x06fa
    imul word [bp - 0x0002]          ; 0x06fd
    mov cx, ax                       ; 0x0700
    mov ax, word [bp - 0x0006]       ; 0x0702
    add cx, ax                       ; 0x0705
    mov bx, cx                       ; 0x0707
    mov al, byte [bx + 0x6a40]       ; 0x0709
    sub ah, ah                       ; 0x070d
    mov word [bp - 0x0008], ax       ; 0x070f
    jmp near @..local.l34            ; 0x0712
@..local.l27:
    mov ax, 0x5a                     ; 0x0715
    imul word [bp + 0x8]             ; 0x0718
    push ax                          ; 0x071b
    mov ax, 0x1e                     ; 0x071c
    imul word [bp + 0xa]             ; 0x071f
    mov cx, ax                       ; 0x0722
    pop ax                           ; 0x0724
    add ax, cx                       ; 0x0725
    push ax                          ; 0x0727
    mov ax, 3                        ; 0x0728
    imul word [bp - 0x0004]          ; 0x072b
    mov cx, ax                       ; 0x072e
    pop ax                           ; 0x0730
    add ax, cx                       ; 0x0731
    mov bx, ax                       ; 0x0733
    mov al, byte [bx - 0x7cdd]       ; 0x0735
    sub ah, ah                       ; 0x0739
    mov word [bp - 0x0008], ax       ; 0x073b
    mov al, byte [bx - 0x7cdc]       ; 0x073e
    sub ah, ah                       ; 0x0742
    mov word [bp - 0x000a], ax       ; 0x0744
    cmp word [bp + 0xc], byte 0      ; 0x0747
    je short @..local.l28            ; 0x074b
    dec word [bp - 0x000a]           ; 0x074d
@..local.l28:
    cmp word [bp - 0x000a], byte 0   ; 0x0750
    jle short @..local.l29           ; 0x0754
    jmp near @..local.l33            ; 0x0756
@..local.l29:
    mov al, byte [bx - 0x7cde]       ; 0x0759
    sub ah, ah                       ; 0x075d
    mov word [bp - 0x0006], ax       ; 0x075f
    inc word [bp - 0x0008]           ; 0x0762
    mov ax, 0x15e                    ; 0x0765
    imul word [bp - 0x0002]          ; 0x0768
    mov cx, ax                       ; 0x076b
    mov ax, word [bp - 0x0006]       ; 0x076d
    add cx, ax                       ; 0x0770
    mov bx, cx                       ; 0x0772
    mov al, byte [bx + 0x6a40]       ; 0x0774
    sub ah, ah                       ; 0x0778
    push ax                          ; 0x077a
    mov al, byte [bx + 0x6a4a]       ; 0x077b
    sub ah, ah                       ; 0x077f
    mov cx, ax                       ; 0x0781
    pop ax                           ; 0x0783
    add ax, cx                       ; 0x0784
    dec ax                           ; 0x0786
    cmp ax, word [bp - 0x0008]       ; 0x0787
    jl short @..local.l30            ; 0x078a
    jmp near @..local.l32            ; 0x078c
@..local.l30:
    mov ax, 3                        ; 0x078f
    imul word [bp + 0x8]             ; 0x0792
    add ax, word [bp + 0xa]          ; 0x0795
    mov bx, ax                       ; 0x0798
    cmp byte [bx - 0x7bd0], 0        ; 0x079a
    je short @..local.l31            ; 0x079f
    mov byte [bx - 0x7bd0], 0        ; 0x07a1
    mov ax, 0                        ; 0x07a6
    push ax                          ; 0x07a9
    push word [bp + 0xa]             ; 0x07aa
    push word [bp + 0x8]             ; 0x07ad
    push word [bp + 0x4]             ; 0x07b0
    call api_idx_000a                ; 0x07b3
    add sp, byte 8                   ; 0x07b6
    push word [bp + 0xe]             ; 0x07b9
    mov ax, 0                        ; 0x07bc
    push ax                          ; 0x07bf
    push word [bp + 0xa]             ; 0x07c0
    push word [bp + 0x8]             ; 0x07c3
    push word [bp + 0x6]             ; 0x07c6
    push word [bp + 0x4]             ; 0x07c9
    call api_idx_000e                ; 0x07cc
    add sp, byte 0x0c                ; 0x07cf
    ret                              ; 0x07d2
@..local.l31:
    mov ax, 0x15e                    ; 0x07d3
    imul word [bp - 0x0002]          ; 0x07d6
    add ax, word [bp - 0x0004]       ; 0x07d9
    mov bx, ax                       ; 0x07dc
    mov al, byte [bx + 0x6a2c]       ; 0x07de
    sub ah, ah                       ; 0x07e2
    push ax                          ; 0x07e4
    call ds_dispatch_b7a9            ; 0x07e5
    pop cx                           ; 0x07e8
    push ax                          ; 0x07e9
    mov ax, 0x15e                    ; 0x07ea
    imul word [bp - 0x0002]          ; 0x07ed
    add ax, word [bp - 0x0004]       ; 0x07f0
    mov bx, ax                       ; 0x07f3
    mov al, byte [bx + 0x6a22]       ; 0x07f5
    sub ah, ah                       ; 0x07f9
    mov cx, ax                       ; 0x07fb
    pop ax                           ; 0x07fd
    add ax, cx                       ; 0x07fe
    mov word [bp - 0x0006], ax       ; 0x0800
    mov al, byte [bp - 0x0006]       ; 0x0803
    push ax                          ; 0x0806
    mov ax, 0x5a                     ; 0x0807
    imul word [bp + 0x8]             ; 0x080a
    mov cx, ax                       ; 0x080d
    mov ax, 0x1e                     ; 0x080f
    imul word [bp + 0xa]             ; 0x0812
    mov dx, ax                       ; 0x0815
    add cx, ax                       ; 0x0817
    mov ax, 3                        ; 0x0819
    imul word [bp - 0x0004]          ; 0x081c
    mov dx, ax                       ; 0x081f
    add cx, ax                       ; 0x0821
    mov bx, cx                       ; 0x0823
    pop ax                           ; 0x0825
    mov byte [bx - 0x7cde], al       ; 0x0826
    mov ax, 0x15e                    ; 0x082a
    imul word [bp - 0x0002]          ; 0x082d
    add ax, word [bp - 0x0006]       ; 0x0830
    mov bx, ax                       ; 0x0833
    mov al, byte [bx + 0x6a40]       ; 0x0835
    sub ah, ah                       ; 0x0839
    mov word [bp - 0x0008], ax       ; 0x083b
@..local.l32:
    mov al, byte [bp - 0x0008]       ; 0x083e
    push ax                          ; 0x0841
    mov ax, 0x5a                     ; 0x0842
    imul word [bp + 0x8]             ; 0x0845
    mov cx, ax                       ; 0x0848
    mov ax, 0x1e                     ; 0x084a
    imul word [bp + 0xa]             ; 0x084d
    mov dx, ax                       ; 0x0850
    add cx, ax                       ; 0x0852
    mov ax, 3                        ; 0x0854
    imul word [bp - 0x0004]          ; 0x0857
    mov dx, ax                       ; 0x085a
    add cx, ax                       ; 0x085c
    mov bx, cx                       ; 0x085e
    pop ax                           ; 0x0860
    mov byte [bx - 0x7cdd], al       ; 0x0861
    mov ax, 0x15e                    ; 0x0865
    imul word [bp - 0x0002]          ; 0x0868
    mov cx, word [bp - 0x0008]       ; 0x086b
    shl cx, 1                        ; 0x086e
    shl cx, 1                        ; 0x0870
    add ax, cx                       ; 0x0872
    mov bx, ax                       ; 0x0874
    mov al, byte [bx + 0x6ac2]       ; 0x0876
    sub ah, ah                       ; 0x087a
    push ax                          ; 0x087c
    call ds_dispatch_b7a9            ; 0x087d
    pop cx                           ; 0x0880
    push ax                          ; 0x0881
    mov ax, 0x15e                    ; 0x0882
    imul word [bp - 0x0002]          ; 0x0885
    mov cx, word [bp - 0x0008]       ; 0x0888
    shl cx, 1                        ; 0x088b
    shl cx, 1                        ; 0x088d
    add ax, cx                       ; 0x088f
    mov bx, ax                       ; 0x0891
    mov al, byte [bx + 0x6ac1]       ; 0x0893
    sub ah, ah                       ; 0x0897
    mov cx, ax                       ; 0x0899
    pop ax                           ; 0x089b
    add ax, cx                       ; 0x089c
    mov word [bp - 0x000a], ax       ; 0x089e
@..local.l33:
    mov al, byte [bp - 0x000a]       ; 0x08a1
    push ax                          ; 0x08a4
    mov ax, 0x5a                     ; 0x08a5
    imul word [bp + 0x8]             ; 0x08a8
    mov cx, ax                       ; 0x08ab
    mov ax, 0x1e                     ; 0x08ad
    imul word [bp + 0xa]             ; 0x08b0
    mov dx, ax                       ; 0x08b3
    add cx, ax                       ; 0x08b5
    mov ax, 3                        ; 0x08b7
    imul word [bp - 0x0004]          ; 0x08ba
    mov dx, ax                       ; 0x08bd
    add cx, ax                       ; 0x08bf
    mov bx, cx                       ; 0x08c1
    pop ax                           ; 0x08c3
    mov byte [bx - 0x7cdc], al       ; 0x08c4
@..local.l34:
    mov ax, 0x15e                    ; 0x08c8
    imul word [bp - 0x0002]          ; 0x08cb
    mov cx, word [bp - 0x0008]       ; 0x08ce
    shl cx, 1                        ; 0x08d1
    shl cx, 1                        ; 0x08d3
    add ax, cx                       ; 0x08d5
    mov bx, ax                       ; 0x08d7
    mov al, byte [bx + 0x6ac0]       ; 0x08d9
    mov bx, word [bp + 0xe]          ; 0x08dd
    mov si, word [bp - 0x000e]       ; 0x08e0
    mov byte [bx + si], al           ; 0x08e3
    mov ax, word [bp + 0x4]          ; 0x08e5
    shl ax, 1                        ; 0x08e8
    mov bx, ax                       ; 0x08ea
    mov bx, word [bx - 0x7b7e]       ; 0x08ec
    cmp byte [bx + 0x19e], 0x79      ; 0x08f0
    je short @..local.l35            ; 0x08f5
    mov al, byte [bx + 0x19e]        ; 0x08f7
    sub ah, ah                       ; 0x08fb
    cmp ax, 0x8d                     ; 0x08fd
    jne short @..local.l36           ; 0x0900
@..local.l35:
    inc word [bp - 0x000e]           ; 0x0902
    mov bx, word [bp + 0xe]          ; 0x0905
    mov si, word [bp - 0x000e]       ; 0x0908
    mov al, byte [bx + si - 0x0001]  ; 0x090b
    mov byte [bx + si], al           ; 0x090e
    mov ax, 0x15e                    ; 0x0910
    imul word [bp - 0x0002]          ; 0x0913
    mov bx, ax                       ; 0x0916
    mov al, byte [bx + 0x6b76]       ; 0x0918
    mov bx, word [bp + 0xe]          ; 0x091c
    mov si, word [bp - 0x000e]       ; 0x091f
    mov byte [bx + si - 0x0001], al  ; 0x0922
@..local.l36:
    mov bx, word [bp + 0xe]          ; 0x0925
    mov si, word [bp - 0x000e]       ; 0x0928
    cmp byte [bx + si], 0            ; 0x092b
    je short @..local.l37            ; 0x092e
    inc word [bp - 0x000e]           ; 0x0930
@..local.l37:
    inc word [bp - 0x0004]           ; 0x0933
@..local.l38:
    mov ax, 0x15e                    ; 0x0936
    imul word [bp - 0x0002]          ; 0x0939
    push ax                          ; 0x093c
    mov ax, 3                        ; 0x093d
    imul word [bp + 0x8]             ; 0x0940
    add ax, word [bp + 0xa]          ; 0x0943
    mov bx, ax                       ; 0x0946
    mov al, byte [bx - 0x7bd0]       ; 0x0948
    sub ah, ah                       ; 0x094c
    mov cx, ax                       ; 0x094e
    pop ax                           ; 0x0950
    add ax, cx                       ; 0x0951
    mov bx, ax                       ; 0x0953
    mov al, byte [bx + 0x6a1a]       ; 0x0955
    sub ah, ah                       ; 0x0959
    push ax                          ; 0x095b
    mov al, byte [bx + 0x6a1e]       ; 0x095c
    sub ah, ah                       ; 0x0960
    mov cx, ax                       ; 0x0962
    pop ax                           ; 0x0964
    add ax, cx                       ; 0x0965
    cmp ax, word [bp - 0x0004]       ; 0x0967
    jle short @..local.l39           ; 0x096a
    jmp near @..local.l25            ; 0x096c
@..local.l39:
    mov bx, word [bp + 0xe]          ; 0x096f
    mov si, word [bp - 0x000e]       ; 0x0972
    mov byte [bx + si], 0            ; 0x0975
    ret                              ; 0x0978
api_idx_0004_3:
    mov ax, 0xfffc                   ; 0x0979
    call ds_dispatch_f40b            ; 0x097c
    mov word [bp - 0x0002], 0        ; 0x097f
@..api_idx_0004_3.l1:
    mov ax, word [bp - 0x0002]       ; 0x0984
    cmp ax, word [data_8468]         ; 0x0987
    jge short @..api_idx_0004_3.l2   ; 0x098b
    shl ax, 1                        ; 0x098d
    mov bx, ax                       ; 0x098f
    mov bx, word [bx - 0x7b96]       ; 0x0991
    mov al, byte [bx + 0x14]         ; 0x0995
    sub ah, ah                       ; 0x0998
    cmp ax, word [bp + 0x4]          ; 0x099a
    jg short @..api_idx_0004_3.l2    ; 0x099d
    inc word [bp - 0x0002]           ; 0x099f
    jmp short @..api_idx_0004_3.l1   ; 0x09a2
@..api_idx_0004_3.l2:
    mov ax, word [data_8468]         ; 0x09a4
    mov word [bp - 0x0004], ax       ; 0x09a7
    jmp short @..api_idx_0004_3.l4   ; 0x09aa
@..api_idx_0004_3.l3:
    mov ax, word [bp - 0x0004]       ; 0x09ac
    shl ax, 1                        ; 0x09af
    mov bx, ax                       ; 0x09b1
    mov si, word [bx - 0x7b98]       ; 0x09b3
    mov di, word [bx - 0x7b96]       ; 0x09b7
    mov cx, ds                       ; 0x09bb
    mov es, cx                       ; 0x09bd
    mov cx, 0xc                      ; 0x09bf
    rep movsw                        ; 0x09c2
    dec word [bp - 0x0004]           ; 0x09c4
@..api_idx_0004_3.l4:
    mov ax, word [bp - 0x0004]       ; 0x09c7
    cmp ax, word [bp - 0x0002]       ; 0x09ca
    jg short @..api_idx_0004_3.l3    ; 0x09cd
    cmp word [bp - 0x0002], byte 0x0c ; 0x09cf
    jl short @..api_idx_0004_3.l6    ; 0x09d3
@..api_idx_0004_3.l5:
    mov ax, 0                        ; 0x09d5
    push ax                          ; 0x09d8
    call ds_dispatch_b7e0            ; 0x09d9
    pop cx                           ; 0x09dc
    jmp short @..api_idx_0004_3.l5   ; 0x09dd
@..api_idx_0004_3.l6:
    mov al, byte [bp + 0x4]          ; 0x09df
    mov cx, word [bp - 0x0002]       ; 0x09e2
    shl cx, 1                        ; 0x09e5
    mov bx, cx                       ; 0x09e7
    mov bx, word [bx - 0x7b96]       ; 0x09e9
    mov byte [bx + 0x14], al         ; 0x09ed
    mov al, byte [bp + 0x6]          ; 0x09f0
    mov cx, word [bp - 0x0002]       ; 0x09f3
    shl cx, 1                        ; 0x09f6
    mov bx, cx                       ; 0x09f8
    mov bx, word [bx - 0x7b96]       ; 0x09fa
    mov byte [bx + 0x15], al         ; 0x09fe
    mov ax, word [bp + 0x8]          ; 0x0a01
    mov cx, word [bp - 0x0002]       ; 0x0a04
    shl cx, 1                        ; 0x0a07
    mov bx, cx                       ; 0x0a09
    mov bx, word [bx - 0x7b96]       ; 0x0a0b
    mov word [bx], ax                ; 0x0a0f
    mov ax, word [bp + 0xa]          ; 0x0a11
    mov cx, word [bp - 0x0002]       ; 0x0a14
    shl cx, 1                        ; 0x0a17
    mov bx, cx                       ; 0x0a19
    mov bx, word [bx - 0x7b96]       ; 0x0a1b
    mov word [bx + 0x2], ax          ; 0x0a1f
    mov ax, word [bp + 0xc]          ; 0x0a22
    mov cx, word [bp - 0x0002]       ; 0x0a25
    shl cx, 1                        ; 0x0a28
    mov bx, cx                       ; 0x0a2a
    mov bx, word [bx - 0x7b96]       ; 0x0a2c
    mov word [bx + 0x4], ax          ; 0x0a30
    mov ax, word [bp + 0xe]          ; 0x0a33
    mov cx, word [bp - 0x0002]       ; 0x0a36
    shl cx, 1                        ; 0x0a39
    mov bx, cx                       ; 0x0a3b
    mov bx, word [bx - 0x7b96]       ; 0x0a3d
    mov word [bx + 0x6], ax          ; 0x0a41
    mov al, byte [bp + 0x10]         ; 0x0a44
    mov cx, word [bp - 0x0002]       ; 0x0a47
    shl cx, 1                        ; 0x0a4a
    mov bx, cx                       ; 0x0a4c
    mov bx, word [bx - 0x7b96]       ; 0x0a4e
    mov byte [bx + 0x16], al         ; 0x0a52
    mov al, byte [bp + 0x12]         ; 0x0a55
    mov cx, word [bp - 0x0002]       ; 0x0a58
    shl cx, 1                        ; 0x0a5b
    mov bx, cx                       ; 0x0a5d
    mov bx, word [bx - 0x7b96]       ; 0x0a5f
    mov byte [bx + 0x17], al         ; 0x0a63
    push word [bp + 0x14]            ; 0x0a66
    mov ax, word [bp - 0x0002]       ; 0x0a69
    shl ax, 1                        ; 0x0a6c
    mov bx, ax                       ; 0x0a6e
    mov ax, word [bx - 0x7b96]       ; 0x0a70
    add ax, strict word 8            ; 0x0a74
    push ax                          ; 0x0a77
    call ds_dispatch_f364            ; 0x0a78
    add sp, byte 4                   ; 0x0a7b
    inc word [data_8468]             ; 0x0a7e
    ret                              ; 0x0a82
api_idx_001c:
    mov ax, 0xffe4                   ; 0x0a83
    call ds_dispatch_f40b            ; 0x0a86
    mov byte [bp - 0x001c], 0        ; 0x0a89
    mov ax, 6                        ; 0x0a8d
    imul word [bp + 0x4]             ; 0x0a90
    mov cx, word [bp + 0x6]          ; 0x0a93
    shl cx, 1                        ; 0x0a96
    add ax, cx                       ; 0x0a98
    mov bx, ax                       ; 0x0a9a
    mov ax, word [bx - 0x7bc6]       ; 0x0a9c
    mov cx, 0xa                      ; 0x0aa0
    cwd                              ; 0x0aa3
    idiv cx                          ; 0x0aa4
    mov word [bp - 0x0002], ax       ; 0x0aa6
    mov word [bp - 0x0004], dx       ; 0x0aa9
    cmp ax, strict word 1            ; 0x0aac
    jl short @..api_idx_001c.l1      ; 0x0aaf
    cmp ax, strict word 3            ; 0x0ab1
    jg short @..api_idx_001c.l1      ; 0x0ab4
    mov ax, word [bp + 0x4]          ; 0x0ab6
    cmp ax, word [data_8454]         ; 0x0ab9
    jle short @..local.l40           ; 0x0abd
@..api_idx_001c.l1:
    ret                              ; 0x0abf
@..local.l40:
    mov ax, word [bp - 0x0002]       ; 0x0ac0
    shl ax, 1                        ; 0x0ac3
    mov bx, ax                       ; 0x0ac5
    mov bx, word [bx - 0x7b7e]       ; 0x0ac7
    cmp byte [bx + 0x19f], 0xff      ; 0x0acb
    jne short @..local.l41           ; 0x0ad0
    ret                              ; 0x0ad2
@..local.l41:
    mov al, byte [bx + 0x19f]        ; 0x0ad3
    cbw                              ; 0x0ad7
    mov word [bp - 0x0006], ax       ; 0x0ad8
    lea ax, word [bp - 0x001c]       ; 0x0adb
    push ax                          ; 0x0ade
    push word [bp + 0x10]            ; 0x0adf
    push word [bp + 0x6]             ; 0x0ae2
    push word [bp + 0x4]             ; 0x0ae5
    push dx                          ; 0x0ae8
    push word [bp - 0x0002]          ; 0x0ae9
    call api_idx_000e                ; 0x0aec
    add sp, byte 0x0c                ; 0x0aef
    cmp byte [bp - 0x001c], 0        ; 0x0af2
    jne short @..local.l42           ; 0x0af6
    ret                              ; 0x0af8
@..local.l42:
    mov ax, word [bp + 0x6]          ; 0x0af9
    mov cx, 2                        ; 0x0afc
    cwd                              ; 0x0aff
    idiv cx                          ; 0x0b00
    mov word [bp - 0x0008], dx       ; 0x0b02
    mov al, byte [bp - 0x001c]       ; 0x0b05
    sub ah, ah                       ; 0x0b08
    mov word [bp - 0x000a], ax       ; 0x0b0a
    mov ax, 0x15e                    ; 0x0b0d
    imul word [bp - 0x0006]          ; 0x0b10
    mov bx, ax                       ; 0x0b13
    cmp byte [bx + 0x6b75], 0        ; 0x0b15
    je short @..local.l43            ; 0x0b1a
    mov word [bp + 0x8], 0           ; 0x0b1c
@..local.l43:
    mov cx, word [bp - 0x000a]       ; 0x0b21
    shl cx, 1                        ; 0x0b24
    shl cx, 1                        ; 0x0b26
    add ax, cx                       ; 0x0b28
    mov bx, ax                       ; 0x0b2a
    mov al, byte [bx + 0x6abf]       ; 0x0b2c
    sub ah, ah                       ; 0x0b30
    mov word [bp - 0x000c], ax       ; 0x0b32
    cmp word [bp - 0x000c], byte 0   ; 0x0b35
    jne short @..local.l44           ; 0x0b39
    mov ax, 6                        ; 0x0b3b
    imul word [bp + 0x4]             ; 0x0b3e
    mov cx, word [bp + 0x6]          ; 0x0b41
    shl cx, 1                        ; 0x0b44
    add ax, cx                       ; 0x0b46
    mov bx, ax                       ; 0x0b48
    mov ax, word [bx + 0x5b6]        ; 0x0b4a
    sub ax, word [bp - 0x0002]       ; 0x0b4e
    mov word [bp - 0x000c], ax       ; 0x0b51
    jmp short @..local.l46           ; 0x0b54
@..local.l44:
    mov ax, 0x64                     ; 0x0b56
    push ax                          ; 0x0b59
    mov ax, 5                        ; 0x0b5a
    push ax                          ; 0x0b5d
    mov ax, 0xa                      ; 0x0b5e
    imul word [bp + 0x4]             ; 0x0b61
    mov cx, ax                       ; 0x0b64
    mov ax, 0                        ; 0x0b66
    cmp word [bp + 0x6], byte 0      ; 0x0b69
    jne short @..local.l45           ; 0x0b6d
    mov ax, 5                        ; 0x0b6f
@..local.l45:
    add cx, ax                       ; 0x0b72
    mov ax, word [bp - 0x000c]       ; 0x0b74
    sub ax, cx                       ; 0x0b77
    push ax                          ; 0x0b79
    call ds_dispatch_b7c2            ; 0x0b7a
    add sp, byte 6                   ; 0x0b7d
    mov word [bp - 0x000c], ax       ; 0x0b80
@..local.l46:
    mov ax, word [bp + 0xe]          ; 0x0b83
    dec ax                           ; 0x0b86
    push ax                          ; 0x0b87
    mov ax, 0                        ; 0x0b88
    push ax                          ; 0x0b8b
    mov ax, 0x15e                    ; 0x0b8c
    imul word [bp - 0x0006]          ; 0x0b8f
    push ax                          ; 0x0b92
    mov ax, word [bp - 0x0008]       ; 0x0b93
    mov cx, 2                        ; 0x0b96
    cwd                              ; 0x0b99
    idiv cx                          ; 0x0b9a
    mov cx, dx                       ; 0x0b9c
    pop ax                           ; 0x0b9e
    add ax, cx                       ; 0x0b9f
    mov cx, word [bp - 0x000a]       ; 0x0ba1
    shl cx, 1                        ; 0x0ba4
    add ax, cx                       ; 0x0ba6
    mov bx, ax                       ; 0x0ba8
    mov al, byte [bx + 0x6a52]       ; 0x0baa
    sub ah, ah                       ; 0x0bae
    push ax                          ; 0x0bb0
    mov ax, 0x15e                    ; 0x0bb1
    imul word [bp - 0x0006]          ; 0x0bb4
    mov cx, word [bp + 0x6]          ; 0x0bb7
    shl cx, 1                        ; 0x0bba
    add ax, cx                       ; 0x0bbc
    mov bx, ax                       ; 0x0bbe
    mov al, byte [bx + 0x6b60]       ; 0x0bc0
    cbw                              ; 0x0bc4
    mov cx, ax                       ; 0x0bc5
    pop ax                           ; 0x0bc7
    add ax, cx                       ; 0x0bc8
    push ax                          ; 0x0bca
    call ds_dispatch_b7c2            ; 0x0bcb
    add sp, byte 6                   ; 0x0bce
    mov word [bp - 0x000e], ax       ; 0x0bd1
    mov ax, 0x15e                    ; 0x0bd4
    imul word [bp - 0x0006]          ; 0x0bd7
    add ax, word [bp - 0x000a]       ; 0x0bda
    mov bx, ax                       ; 0x0bdd
    mov al, byte [bx + 0x6a9b]       ; 0x0bdf
    sub ah, ah                       ; 0x0be3
    push ax                          ; 0x0be5
    mov ax, 0x15e                    ; 0x0be6
    imul word [bp - 0x0006]          ; 0x0be9
    mov cx, word [bp + 0x6]          ; 0x0bec
    shl cx, 1                        ; 0x0bef
    add ax, cx                       ; 0x0bf1
    mov bx, ax                       ; 0x0bf3
    mov al, byte [bx + 0x6b61]       ; 0x0bf5
    cbw                              ; 0x0bf9
    mov cx, ax                       ; 0x0bfa
    pop ax                           ; 0x0bfc
    add ax, cx                       ; 0x0bfd
    mov word [bp - 0x0010], ax       ; 0x0bff
    cmp word [data_8466], byte 1     ; 0x0c02
    jne short @..local.l47           ; 0x0c07
    mov bx, word [data_8484]         ; 0x0c09
    cmp byte [bx + 0x1a1], 1         ; 0x0c0d
    jne short @..local.l47           ; 0x0c12
    cmp word [bp + 0x4], byte 0      ; 0x0c14
    jne short @..local.l47           ; 0x0c18
    mov word [bp + 0xa], 0           ; 0x0c1a
@..local.l47:
    mov ax, 0xa0                     ; 0x0c1f
    sub ax, word [bp - 0x000e]       ; 0x0c22
    imul word [bp + 0xa]             ; 0x0c25
    mov cx, 0x64                     ; 0x0c28
    cwd                              ; 0x0c2b
    idiv cx                          ; 0x0c2c
    add word [bp - 0x000e], ax       ; 0x0c2e
    mov ax, word [bp - 0x0008]       ; 0x0c31
    mov cx, 2                        ; 0x0c34
    cwd                              ; 0x0c37
    idiv cx                          ; 0x0c38
    mov ax, dx                       ; 0x0c3a
    test ax, ax                      ; 0x0c3c
    je short @..local.l48            ; 0x0c3e
    mov ax, 0x15e                    ; 0x0c40
    imul word [bp - 0x0006]          ; 0x0c43
    mov cx, ax                       ; 0x0c46
    mov ax, word [bp - 0x0008]       ; 0x0c48
    mov bx, 2                        ; 0x0c4b
    cwd                              ; 0x0c4e
    idiv bx                          ; 0x0c4f
    mov ax, dx                       ; 0x0c51
    add cx, ax                       ; 0x0c53
    mov ax, cx                       ; 0x0c55
    mov cx, word [bp - 0x000a]       ; 0x0c57
    shl cx, 1                        ; 0x0c5a
    add ax, cx                       ; 0x0c5c
    mov bx, ax                       ; 0x0c5e
    mov al, byte [bx + 0x6a52]       ; 0x0c60
    sub ah, ah                       ; 0x0c64
    mov cx, ax                       ; 0x0c66
    mov ax, 0xa0                     ; 0x0c68
    sub ax, cx                       ; 0x0c6b
    shl ax, 1                        ; 0x0c6d
    imul word [bp + 0xa]             ; 0x0c6f
    mov cx, 0x64                     ; 0x0c72
    cwd                              ; 0x0c75
    idiv cx                          ; 0x0c76
    sub word [bp - 0x000e], ax       ; 0x0c78
@..local.l48:
    mov ax, word [bp + 0xe]          ; 0x0c7b
    dec ax                           ; 0x0c7e
    push ax                          ; 0x0c7f
    mov ax, 0                        ; 0x0c80
    push ax                          ; 0x0c83
    mov ax, word [bp - 0x000e]       ; 0x0c84
    add ax, word [bp + 0x8]          ; 0x0c87
    push ax                          ; 0x0c8a
    call ds_dispatch_b7c2            ; 0x0c8b
    add sp, byte 6                   ; 0x0c8e
    mov word [bp - 0x000e], ax       ; 0x0c91
    mov ax, 0x3d                     ; 0x0c94
    sub ax, word [bp - 0x0010]       ; 0x0c97
    imul word [bp + 0xa]             ; 0x0c9a
    mov cx, 0x64                     ; 0x0c9d
    cwd                              ; 0x0ca0
    idiv cx                          ; 0x0ca1
    add word [bp - 0x0010], ax       ; 0x0ca3
    lea ax, word [bp - 0x001c]       ; 0x0ca6
    push ax                          ; 0x0ca9
    push word [bp + 0xa]             ; 0x0caa
    push word [bp - 0x0008]          ; 0x0cad
    push word [bp + 0xe]             ; 0x0cb0
    push word [bp + 0xc]             ; 0x0cb3
    push word [bp - 0x0010]          ; 0x0cb6
    push word [bp - 0x000e]          ; 0x0cb9
    push word [bp - 0x0006]          ; 0x0cbc
    push word [bp - 0x000c]          ; 0x0cbf
    call api_idx_0004_3              ; 0x0cc2
    add sp, byte 0x12                ; 0x0cc5
    ret                              ; 0x0cc8
api_idx_000e_2:
    mov ax, 0xfff2                   ; 0x0cc9
    call ds_dispatch_f40b            ; 0x0ccc
    cmp word [data_8f20], byte 0     ; 0x0ccf
    jg short @..api_idx_000e_2.l1    ; 0x0cd4
    jmp near @..api_idx_000e_2.l8    ; 0x0cd6
@..api_idx_000e_2.l1:
    mov ax, word [data_82ee]         ; 0x0cd9
    mov cx, word [data_8f20]         ; 0x0cdc
    dec cx                           ; 0x0ce0
    sub ax, cx                       ; 0x0ce1
    add ax, strict word 6            ; 0x0ce3
    mov cx, 4                        ; 0x0ce6
    cwd                              ; 0x0ce9
    idiv cx                          ; 0x0cea
    mov word [bp - 0x0002], dx       ; 0x0cec
    mov ax, dx                       ; 0x0cef
    jmp short @..api_idx_000e_2.l6   ; 0x0cf1
@..api_idx_000e_2.l2:
    mov byte [bp - 0x000e], 1        ; 0x0cf3
    mov byte [bp - 0x000d], 2        ; 0x0cf7
    mov ax, 5                        ; 0x0cfb
    cmp word [bp - 0x0002], byte 0   ; 0x0cfe
    jne short @..api_idx_000e_2.l3   ; 0x0d02
    mov ax, 4                        ; 0x0d04
@..api_idx_000e_2.l3:
    mov byte [bp - 0x000c], al       ; 0x0d07
    mov byte [bp - 0x000b], 0        ; 0x0d0a
    mov word [bp - 0x0004], 0        ; 0x0d0e
    jmp short @..api_idx_000e_2.l7   ; 0x0d13
@..api_idx_000e_2.l4:
    mov byte [bp - 0x000e], 3        ; 0x0d15
    mov byte [bp - 0x000d], 0        ; 0x0d19
    mov ax, 0                        ; 0x0d1d
    cmp word [bp - 0x0002], byte 3   ; 0x0d20
    jne short @..api_idx_000e_2.l5   ; 0x0d24
    mov ax, 1                        ; 0x0d26
@..api_idx_000e_2.l5:
    mov word [bp - 0x0004], ax       ; 0x0d29
    jmp short @..api_idx_000e_2.l7   ; 0x0d2c
@..api_idx_000e_2.l6:
    cmp ax, strict word 0            ; 0x0d2e
    je short @..api_idx_000e_2.l2    ; 0x0d31
    cmp ax, strict word 1            ; 0x0d33
    je short @..api_idx_000e_2.l4    ; 0x0d36
    cmp ax, strict word 2            ; 0x0d38
    je short @..api_idx_000e_2.l2    ; 0x0d3b
    cmp ax, strict word 3            ; 0x0d3d
    je short @..api_idx_000e_2.l4    ; 0x0d40
@..api_idx_000e_2.l7:
    lea ax, word [bp - 0x000e]       ; 0x0d42
    push ax                          ; 0x0d45
    mov ax, 0                        ; 0x0d46
    push ax                          ; 0x0d49
    push word [bp - 0x0004]          ; 0x0d4a
    mov ax, 0xf8                     ; 0x0d4d
    push ax                          ; 0x0d50
    mov ax, 0x48                     ; 0x0d51
    push ax                          ; 0x0d54
    mov al, byte [bp - 0x000e]       ; 0x0d55
    sub ah, ah                       ; 0x0d58
    mov bx, ax                       ; 0x0d5a
    mov al, byte [bx + 0x6eb5]       ; 0x0d5c
    sub ah, ah                       ; 0x0d60
    inc ax                           ; 0x0d62
    push ax                          ; 0x0d63
    shl bx, 1                        ; 0x0d64
    mov ax, bx                       ; 0x0d66
    add ax, word [bp - 0x0004]       ; 0x0d68
    mov bx, ax                       ; 0x0d6b
    mov al, byte [bx + 0x6e6c]       ; 0x0d6d
    sub ah, ah                       ; 0x0d71
    inc ax                           ; 0x0d73
    push ax                          ; 0x0d74
    mov ax, 3                        ; 0x0d75
    push ax                          ; 0x0d78
    mov ax, 0x1b                     ; 0x0d79
    push ax                          ; 0x0d7c
    call api_idx_0004_3              ; 0x0d7d
    add sp, byte 0x12                ; 0x0d80
@..api_idx_000e_2.l8:
    cmp word [data_8f20], byte 0xff  ; 0x0d83
    jne short @..api_idx_000e_2.l9   ; 0x0d88
    mov byte [bp - 0x000e], 1        ; 0x0d8a
    mov byte [bp - 0x000d], 0        ; 0x0d8e
    lea ax, word [bp - 0x000e]       ; 0x0d92
    push ax                          ; 0x0d95
    mov ax, 0                        ; 0x0d96
    push ax                          ; 0x0d99
    push ax                          ; 0x0d9a
    mov ax, 0xf8                     ; 0x0d9b
    push ax                          ; 0x0d9e
    mov ax, 0x48                     ; 0x0d9f
    push ax                          ; 0x0da2
    mov al, byte [data_7b04]         ; 0x0da3
    sub ah, ah                       ; 0x0da6
    push ax                          ; 0x0da8
    mov al, byte [data_7abc]         ; 0x0da9
    sub ah, ah                       ; 0x0dac
    push ax                          ; 0x0dae
    mov ax, 0xc                      ; 0x0daf
    push ax                          ; 0x0db2
    mov ax, 0x1c                     ; 0x0db3
    push ax                          ; 0x0db6
    call api_idx_0004_3              ; 0x0db7
    add sp, byte 0x12                ; 0x0dba
@..api_idx_000e_2.l9:
    ret                              ; 0x0dbd
math_loc_0dbe:
    mov ax, 0                        ; 0x0dbe
    call ds_dispatch_f40b            ; 0x0dc1
    mov ax, word [bp + 0x4]          ; 0x0dc4
    shl ax, 1                        ; 0x0dc7
    mov bx, ax                       ; 0x0dc9
    mov bx, word [bx - 0x7b96]       ; 0x0dcb
    mov al, byte [bx + 0x14]         ; 0x0dcf
    sub ah, ah                       ; 0x0dd2
    cmp ax, 0xff                     ; 0x0dd4
    je short @..math_loc_0dbe.l1     ; 0x0dd7
    mov al, byte [bx + 0x17]         ; 0x0dd9
    sub ah, ah                       ; 0x0ddc
    push ax                          ; 0x0dde
    mov ax, 0                        ; 0x0ddf
    push ax                          ; 0x0de2
    add bx, byte 8                   ; 0x0de3
    mov ax, bx                       ; 0x0de6
    push ax                          ; 0x0de8
    mov ax, word [bp + 0x4]          ; 0x0de9
    shl ax, 1                        ; 0x0dec
    mov bx, ax                       ; 0x0dee
    mov bx, word [bx - 0x7b96]       ; 0x0df0
    mov al, byte [bx + 0x16]         ; 0x0df4
    sub ah, ah                       ; 0x0df7
    push ax                          ; 0x0df9
    mov ax, 0x8e                     ; 0x0dfa
    push ax                          ; 0x0dfd
    mov ax, 0x21                     ; 0x0dfe
    push ax                          ; 0x0e01
    push word [bx + 0x6]             ; 0x0e02
    push word [bx + 0x4]             ; 0x0e05
    push word [bx + 0x2]             ; 0x0e08
    push word [bx]                   ; 0x0e0b
    mov al, byte [bx + 0x15]         ; 0x0e0d
    sub ah, ah                       ; 0x0e10
    push ax                          ; 0x0e12
    call ds_dispatch_efd1            ; 0x0e13
    add sp, byte 0x16                ; 0x0e16
@..math_loc_0dbe.l1:
    ret                              ; 0x0e19
api_idx_0016:
    mov ax, 0xffea                   ; 0x0e1a
    call ds_dispatch_f40b            ; 0x0e1d
    mov ax, 6                        ; 0x0e20
    imul word [bp + 0x4]             ; 0x0e23
    mov cx, word [bp + 0x6]          ; 0x0e26
    shl cx, 1                        ; 0x0e29
    add ax, cx                       ; 0x0e2b
    mov bx, ax                       ; 0x0e2d
    cmp word [bx - 0x6f36], byte 0   ; 0x0e2f
    jl short @..api_idx_0016.l1      ; 0x0e34
    cmp word [bx - 0x6f36], byte 6   ; 0x0e36
    jle short @..local.l49           ; 0x0e3b
@..api_idx_0016.l1:
    mov word [bx - 0x6f36], 0xffff   ; 0x0e3d
    ret                              ; 0x0e43
@..local.l49:
    cmp word [data_8320], byte 1     ; 0x0e44
    jne short @..local.l50           ; 0x0e49
    cmp word [bx - 0x6f36], byte 1   ; 0x0e4b
    jne short @..local.l50           ; 0x0e50
    mov word [data_90dc], 1          ; 0x0e52
@..local.l50:
    mov word [bp - 0x0002], 7        ; 0x0e58
    mov word [bp - 0x0004], 0        ; 0x0e5d
    mov ax, 0x64                     ; 0x0e62
    mov cx, word [bp + 0x4]          ; 0x0e65
    shl cx, 1                        ; 0x0e68
    mov bx, cx                       ; 0x0e6a
    mov cx, word [bx + 0x576]        ; 0x0e6c
    sub ax, cx                       ; 0x0e70
    mov word [bp - 0x0006], ax       ; 0x0e72
    mov ax, 6                        ; 0x0e75
    imul word [bp + 0x4]             ; 0x0e78
    mov cx, word [bp + 0x6]          ; 0x0e7b
    shl cx, 1                        ; 0x0e7e
    add ax, cx                       ; 0x0e80
    mov bx, ax                       ; 0x0e82
    mov ax, word [bx - 0x6f36]       ; 0x0e84
    inc ax                           ; 0x0e88
    mov word [bp - 0x0008], ax       ; 0x0e89
    mov al, byte [bp - 0x0008]       ; 0x0e8c
    mov byte [bp - 0x0014], al       ; 0x0e8f
    mov byte [bp - 0x0013], 0        ; 0x0e92
    mov ax, 0x20                     ; 0x0e96
    cmp word [bp + 0x4], byte 0      ; 0x0e99
    je short @..local.l51            ; 0x0e9d
    mov ax, 0xc                      ; 0x0e9f
    mov cx, word [bp + 0x4]          ; 0x0ea2
    cmp cx, byte 1                   ; 0x0ea5
    jne short @..local.l51           ; 0x0ea8
    mov ax, 0x16                     ; 0x0eaa
@..local.l51:
    mov word [bp - 0x0016], ax       ; 0x0ead
    cmp word [bp + 0x6], byte 0      ; 0x0eb0
    jne short @..local.l52           ; 0x0eb4
    add word [bp - 0x0016], byte 0xfb ; 0x0eb6
@..local.l52:
    lea ax, word [bp - 0x0014]       ; 0x0eba
    push ax                          ; 0x0ebd
    push word [bp - 0x0006]          ; 0x0ebe
    push word [bp - 0x0004]          ; 0x0ec1
    mov ax, 0xf8                     ; 0x0ec4
    push ax                          ; 0x0ec7
    mov ax, 0x48                     ; 0x0ec8
    push ax                          ; 0x0ecb
    mov ax, 0x15e                    ; 0x0ecc
    imul word [bp - 0x0002]          ; 0x0ecf
    push ax                          ; 0x0ed2
    mov ax, 6                        ; 0x0ed3
    imul word [bp + 0x4]             ; 0x0ed6
    mov cx, ax                       ; 0x0ed9
    pop ax                           ; 0x0edb
    add ax, cx                       ; 0x0edc
    mov cx, word [bp + 0x6]          ; 0x0ede
    shl cx, 1                        ; 0x0ee1
    add ax, cx                       ; 0x0ee3
    mov bx, ax                       ; 0x0ee5
    mov al, byte [bx + 0x6b61]       ; 0x0ee7
    cbw                              ; 0x0eeb
    push ax                          ; 0x0eec
    mov ax, 0x15e                    ; 0x0eed
    imul word [bp - 0x0002]          ; 0x0ef0
    add ax, word [bp - 0x0008]       ; 0x0ef3
    mov bx, ax                       ; 0x0ef6
    mov al, byte [bx + 0x6a9b]       ; 0x0ef8
    sub ah, ah                       ; 0x0efc
    mov cx, ax                       ; 0x0efe
    pop ax                           ; 0x0f00
    add ax, cx                       ; 0x0f01
    push ax                          ; 0x0f03
    mov ax, 0x15e                    ; 0x0f04
    imul word [bp - 0x0002]          ; 0x0f07
    push ax                          ; 0x0f0a
    mov ax, 6                        ; 0x0f0b
    imul word [bp + 0x4]             ; 0x0f0e
    mov cx, ax                       ; 0x0f11
    pop ax                           ; 0x0f13
    add ax, cx                       ; 0x0f14
    mov cx, word [bp + 0x6]          ; 0x0f16
    shl cx, 1                        ; 0x0f19
    add ax, cx                       ; 0x0f1b
    mov bx, ax                       ; 0x0f1d
    mov al, byte [bx + 0x6b60]       ; 0x0f1f
    cbw                              ; 0x0f23
    push ax                          ; 0x0f24
    mov ax, 0x15e                    ; 0x0f25
    imul word [bp - 0x0002]          ; 0x0f28
    mov cx, word [bp - 0x0008]       ; 0x0f2b
    shl cx, 1                        ; 0x0f2e
    add ax, cx                       ; 0x0f30
    mov bx, ax                       ; 0x0f32
    mov al, byte [bx + 0x6a52]       ; 0x0f34
    sub ah, ah                       ; 0x0f38
    mov cx, ax                       ; 0x0f3a
    pop ax                           ; 0x0f3c
    add ax, cx                       ; 0x0f3d
    push ax                          ; 0x0f3f
    push word [bp - 0x0002]          ; 0x0f40
    push word [bp - 0x0016]          ; 0x0f43
    call api_idx_0004_3              ; 0x0f46
    add sp, byte 0x12                ; 0x0f49
    cmp word [data_8320], byte 0     ; 0x0f4c
    jne short @..local.l53           ; 0x0f51
    mov ax, 6                        ; 0x0f53
    imul word [bp + 0x4]             ; 0x0f56
    mov cx, word [bp + 0x6]          ; 0x0f59
    shl cx, 1                        ; 0x0f5c
    add ax, cx                       ; 0x0f5e
    mov bx, ax                       ; 0x0f60
    inc word [bx - 0x6f36]           ; 0x0f62
@..local.l53:
    ret                              ; 0x0f66
math_loc_0f67:
    mov ax, 0xfee2                   ; 0x0f67
    call ds_dispatch_f40b            ; 0x0f6a
    cmp word [bp + 0x4], byte 0      ; 0x0f6d
    jne short @..local.l54           ; 0x0f71
    mov ax, 0x2c                     ; 0x0f73
    imul word [bp + 0x6]             ; 0x0f76
    mov si, ax                       ; 0x0f79
    mov ax, word [bp + 0x4]          ; 0x0f7b
    shl ax, 1                        ; 0x0f7e
    mov bx, ax                       ; 0x0f80
    mov bx, word [bx - 0x7b7e]       ; 0x0f82
    cmp byte [bx + si + 0x1f], 0     ; 0x0f86
    jne short @..local.l54           ; 0x0f8a
    ret                              ; 0x0f8c
@..local.l54:
    call loc_1a35                    ; 0x0f8d
    mov word [bp - 0x00f8], 7        ; 0x0f90
    mov ax, 6                        ; 0x0f96
    imul word [bp + 0x8]             ; 0x0f99
    mov bx, ax                       ; 0x0f9c
    mov al, byte [bx + 0x889]        ; 0x0f9e
    sub ah, ah                       ; 0x0fa2
    jmp short @..local.l58           ; 0x0fa4
@..local.l55:
    mov word [bp - 0x0012], 1        ; 0x0fa6
    mov word [bp - 0x00fc], 1        ; 0x0fab
    jmp short @..local.l59           ; 0x0fb1
@..local.l56:
    mov word [bp - 0x0012], 1        ; 0x0fb3
    mov word [bp - 0x00fc], 1        ; 0x0fb8
    jmp short @..local.l59           ; 0x0fbe
@..local.l57:
    mov word [bp - 0x0012], 0        ; 0x0fc0
    mov word [bp - 0x00fc], 4        ; 0x0fc5
    jmp short @..local.l59           ; 0x0fcb
@..local.l58:
    cmp ax, strict word 0            ; 0x0fcd
    je short @..local.l55            ; 0x0fd0
    cmp ax, strict word 1            ; 0x0fd2
    je short @..local.l56            ; 0x0fd5
    cmp ax, strict word 2            ; 0x0fd7
    je short @..local.l57            ; 0x0fda
@..local.l59:
    mov ax, 6                        ; 0x0fdc
    cmp word [bp + 0xa], byte 0      ; 0x0fdf
    jle short @..local.l60           ; 0x0fe3
    mov ax, 0xc                      ; 0x0fe5
@..local.l60:
    mov word [bp - 0x00fe], ax       ; 0x0fe8
    mov ax, 0xc                      ; 0x0fec
    cwd                              ; 0x0fef
    idiv word [bp - 0x00fc]          ; 0x0ff0
    mov word [bp - 0x0100], ax       ; 0x0ff4
    mov ax, 6                        ; 0x0ff8
    imul word [bp + 0x8]             ; 0x0ffb
    mov bx, ax                       ; 0x0ffe
    mov al, byte [bx + 0x888]        ; 0x1000
    sub ah, ah                       ; 0x1004
    mov word [bp - 0x00fa], ax       ; 0x1006
    cmp word [bp + 0x4], byte 0      ; 0x100a
    je short @..local.l61            ; 0x100e
    mov ax, word [bp + 0x4]          ; 0x1010
    cmp ax, strict word 6            ; 0x1013
    jne short @..local.l64           ; 0x1016
@..local.l61:
    mov word [bp - 0x000c], 0        ; 0x1018
    mov word [bp - 0x0006], 0        ; 0x101d
    mov ax, word [bp - 0x00fe]       ; 0x1022
    mov word [bp - 0x0008], ax       ; 0x1026
    mov word [bp - 0x000a], 1        ; 0x1029
    mov word [bp - 0x000e], 0        ; 0x102e
    mov ax, word [bp + 0x6]          ; 0x1033
    mov cx, 2                        ; 0x1036
    cwd                              ; 0x1039
    idiv cx                          ; 0x103a
    mov ax, dx                       ; 0x103c
    test ax, ax                      ; 0x103e
    jne short @..local.l62           ; 0x1040
    mov word [bp - 0x0010], 0        ; 0x1042
    mov word [bp - 0x0106], 0        ; 0x1047
    jmp short @..local.l63           ; 0x104d
@..local.l62:
    mov word [bp - 0x0010], 1        ; 0x104f
    mov word [bp - 0x0106], 1        ; 0x1054
@..local.l63:
    jmp near @..local.l73            ; 0x105a
@..local.l64:
    mov word [bp - 0x000c], 1        ; 0x105d
    mov ax, word [bp - 0x00fe]       ; 0x1062
    dec ax                           ; 0x1066
    mov word [bp - 0x0006], ax       ; 0x1067
    mov word [bp - 0x0008], 0        ; 0x106a
    mov word [bp - 0x000a], 0xffff   ; 0x106f
    mov word [bp - 0x000e], 0xffff   ; 0x1074
    mov al, byte [bx + 0x889]        ; 0x1079
    sub ah, ah                       ; 0x107d
    jmp short @..local.l67           ; 0x107f
@..local.l65:
    inc word [bp + 0x8]              ; 0x1081
    inc word [bp - 0x00fa]           ; 0x1084
    jmp short @..local.l68           ; 0x1088
@..local.l66:
    add word [bp - 0x00fa], byte 3   ; 0x108a
    jmp short @..local.l68           ; 0x108f
@..local.l67:
    cmp ax, strict word 1            ; 0x1091
    je short @..local.l65            ; 0x1094
    cmp ax, strict word 2            ; 0x1096
    je short @..local.l66            ; 0x1099
@..local.l68:
    cmp word [bp + 0xe], byte 0xff   ; 0x109b
    je short @..local.l69            ; 0x109f
    mov ax, word [bp + 0xe]          ; 0x10a1
    mov cx, 2                        ; 0x10a4
    cwd                              ; 0x10a7
    idiv cx                          ; 0x10a8
    mov ax, dx                       ; 0x10aa
    test ax, ax                      ; 0x10ac
    jne short @..local.l71           ; 0x10ae
@..local.l69:
    mov word [bp - 0x0010], 0        ; 0x10b0
    mov ax, 0                        ; 0x10b5
    cmp word [bp - 0x0012], byte 0   ; 0x10b8
    je short @..local.l70            ; 0x10bc
    mov ax, 1                        ; 0x10be
@..local.l70:
    mov word [bp - 0x0106], ax       ; 0x10c1
    jmp short @..local.l73           ; 0x10c5
@..local.l71:
    mov word [bp - 0x0010], 1        ; 0x10c7
    mov ax, 1                        ; 0x10cc
    cmp word [bp - 0x0012], byte 0   ; 0x10cf
    je short @..local.l72            ; 0x10d3
    mov ax, 0                        ; 0x10d5
@..local.l72:
    mov word [bp - 0x0106], ax       ; 0x10d8
@..local.l73:
    push word [data_90de]            ; 0x10dc
    call ds_dispatch_b7e0            ; 0x10e0
    pop cx                           ; 0x10e3
    mov ax, 6                        ; 0x10e4
    imul word [bp + 0x8]             ; 0x10e7
    mov bx, ax                       ; 0x10ea
    mov ax, word [bx + 0x884]        ; 0x10ec
    mov word [bp - 0x00ec], ax       ; 0x10f0
    mov ax, word [bx + 0x886]        ; 0x10f4
    mov word [bp - 0x00ee], ax       ; 0x10f8
    mov word [bp - 0x00ea], 0        ; 0x10fc
    mov word [bp - 0x00e8], 0        ; 0x1102
    mov word [bp - 0x00e6], 0        ; 0x1108
    mov word [bp - 0x00e4], 0        ; 0x110e
    mov word [bp - 0x00e2], 0        ; 0x1114
    mov word [bp - 0x00e0], 0        ; 0x111a
    mov word [bp - 0x00de], 0        ; 0x1120
    mov word [bp - 0x00dc], 3        ; 0x1126
    mov word [bp - 0x00da], 3        ; 0x112c
    mov word [bp - 0x00d8], 3        ; 0x1132
    mov word [bp - 0x00d6], 3        ; 0x1138
    mov word [bp - 0x00d4], 3        ; 0x113e
    mov word [bp - 0x00d2], 3        ; 0x1144
    mov word [bp - 0x00d0], 2        ; 0x114a
    mov word [bp - 0x00ce], 2        ; 0x1150
    mov word [bp - 0x00cc], 2        ; 0x1156
    mov word [bp - 0x00ca], 2        ; 0x115c
    mov word [bp - 0x00c8], 1        ; 0x1162
    mov word [bp - 0x00c6], 1        ; 0x1168
    mov word [bp - 0x00c4], 3        ; 0x116e
    mov word [bp - 0x00c2], 2        ; 0x1174
    mov word [bp - 0x00c0], 2        ; 0x117a
    mov word [bp - 0x00be], 2        ; 0x1180
    mov word [bp - 0x00bc], 3        ; 0x1186
    mov word [bp - 0x00ba], 2        ; 0x118c
    mov word [bp - 0x00b8], 2        ; 0x1192
    mov word [bp - 0x00b6], 2        ; 0x1198
    mov word [bp - 0x00b4], 4        ; 0x119e
    mov word [bp - 0x00b2], 3        ; 0x11a4
    mov word [bp - 0x00b0], 3        ; 0x11aa
    mov word [bp - 0x00ae], 3        ; 0x11b0
    mov word [bp - 0x00ac], 1        ; 0x11b6
    mov word [bp - 0x00aa], 1        ; 0x11bc
    mov word [bp - 0x00a8], 1        ; 0x11c2
    mov word [bp - 0x00a6], 1        ; 0x11c8
    mov word [bp - 0x00a4], 3        ; 0x11ce
    mov word [bp - 0x00a2], 3        ; 0x11d4
    mov word [bp - 0x00a0], 3        ; 0x11da
    mov word [bp - 0x009e], 3        ; 0x11e0
    mov word [bp - 0x009c], 3        ; 0x11e6
    mov word [bp - 0x009a], 5        ; 0x11ec
    mov word [bp - 0x0098], 3        ; 0x11f2
    mov word [bp - 0x0096], 5        ; 0x11f8
    mov word [bp - 0x0094], 4        ; 0x11fe
    mov word [bp - 0x0092], 3        ; 0x1204
    mov word [bp - 0x0090], 3        ; 0x120a
    mov word [bp - 0x008e], 4        ; 0x1210
    mov word [bp - 0x008c], 4        ; 0x1216
    mov word [bp - 0x008a], 3        ; 0x121c
    mov word [bp - 0x0088], 2        ; 0x1222
    mov word [bp - 0x0086], 6        ; 0x1228
    mov word [bp - 0x0084], 5        ; 0x122e
    mov word [bp - 0x0082], 4        ; 0x1234
    mov word [bp - 0x0080], 3        ; 0x123a
    mov word [bp - 0x007e], 2        ; 0x123f
    mov word [bp - 0x007c], 6        ; 0x1244
    mov word [bp - 0x007a], 5        ; 0x1249
    mov word [bp - 0x0078], 3        ; 0x124e
    mov word [bp - 0x0076], 3        ; 0x1253
    mov word [bp - 0x0042], 0x57     ; 0x1258
    mov word [bp - 0x002a], 0xe8     ; 0x125d
    mov word [bp - 0x0040], 0x62     ; 0x1262
    mov word [bp - 0x0028], 0xdd     ; 0x1267
    mov word [bp - 0x003e], 0x6c     ; 0x126c
    mov word [bp - 0x0026], 0xd3     ; 0x1271
    mov word [bp - 0x003c], 0x75     ; 0x1276
    mov word [bp - 0x0024], 0xca     ; 0x127b
    mov word [bp - 0x003a], 0x7d     ; 0x1280
    mov word [bp - 0x0022], 0xc2     ; 0x1285
    mov word [bp - 0x0038], 0x84     ; 0x128a
    mov word [bp - 0x0020], 0xbb     ; 0x128f
    mov word [bp - 0x0036], 0x8a     ; 0x1294
    mov word [bp - 0x001e], 0xb5     ; 0x1299
    mov word [bp - 0x0034], 0x8f     ; 0x129e
    mov word [bp - 0x001c], 0xb0     ; 0x12a3
    mov word [bp - 0x0032], 0x93     ; 0x12a8
    mov word [bp - 0x001a], 0xac     ; 0x12ad
    mov word [bp - 0x0030], 0x96     ; 0x12b2
    mov word [bp - 0x0018], 0xa9     ; 0x12b7
    mov word [bp - 0x002e], 0x98     ; 0x12bc
    mov word [bp - 0x0016], 0xa7     ; 0x12c1
    mov word [bp - 0x002c], 0x99     ; 0x12c6
    mov word [bp - 0x0014], 0xa6     ; 0x12cb
    mov word [bp - 0x005a], 0x49     ; 0x12d0
    mov word [bp - 0x0058], 0x47     ; 0x12d5
    mov word [bp - 0x0056], 0x46     ; 0x12da
    mov word [bp - 0x0054], 0x45     ; 0x12df
    mov word [bp - 0x0052], 0x44     ; 0x12e4
    mov word [bp - 0x0050], 0x43     ; 0x12e9
    mov word [bp - 0x004e], 0x42     ; 0x12ee
    mov word [bp - 0x004c], 0x42     ; 0x12f3
    mov word [bp - 0x004a], 0x42     ; 0x12f8
    mov word [bp - 0x0048], 0x41     ; 0x12fd
    mov word [bp - 0x0046], 0x41     ; 0x1302
    mov word [bp - 0x0044], 0x41     ; 0x1307
    mov word [bp - 0x0072], 0x64     ; 0x130c
    mov word [bp - 0x0070], 0x5e     ; 0x1311
    mov word [bp - 0x006e], 0x58     ; 0x1316
    mov word [bp - 0x006c], 0x52     ; 0x131b
    mov word [bp - 0x006a], 0x4c     ; 0x1320
    mov word [bp - 0x0068], 0x46     ; 0x1325
    mov word [bp - 0x0066], 0x40     ; 0x132a
    mov word [bp - 0x0064], 0x3a     ; 0x132f
    mov word [bp - 0x0062], api_idx_0004 ; 0x1334
    mov word [bp - 0x0060], 0x2e     ; 0x1339
    mov word [bp - 0x005e], 0x28     ; 0x133e
    mov word [bp - 0x005c], 0x22     ; 0x1343
    mov ax, 0                        ; 0x1348
    cmp word [bp - 0x000c], byte 0   ; 0x134b
    je short @..local.l74            ; 0x134f
    mov ax, 3                        ; 0x1351
    cmp byte [bx + 0x889], 2         ; 0x1354
    je short @..local.l74            ; 0x1359
    mov ax, 5                        ; 0x135b
    cmp word [bp + 0xa], byte 0      ; 0x135e
    jle short @..local.l74           ; 0x1362
    mov ax, 0xb                      ; 0x1364
@..local.l74:
    mov word [bp - 0x0104], ax       ; 0x1367
    mov word [bp - 0x0102], ax       ; 0x136b
    mov ax, 0                        ; 0x136f
    push ax                          ; 0x1372
    mov ax, 2                        ; 0x1373
    push ax                          ; 0x1376
    call ds_dispatch_e91b            ; 0x1377
    add sp, byte 4                   ; 0x137a
    cmp dx, byte 0                   ; 0x137d
    jl short @..local.l75            ; 0x1380
    jne short @..local.l76           ; 0x1382
    cmp ax, 0x4e20                   ; 0x1384
    ja short @..local.l76            ; 0x1387
@..local.l75:
    jmp near @..local.l84            ; 0x1389
@..local.l76:
    mov ax, 0                        ; 0x138c
    push ax                          ; 0x138f
    mov ax, 2                        ; 0x1390
    push ax                          ; 0x1393
    mov ax, 0x8f                     ; 0x1394
    push ax                          ; 0x1397
    mov ax, 0xf7                     ; 0x1398
    push ax                          ; 0x139b
    mov ax, 0x21                     ; 0x139c
    push ax                          ; 0x139f
    mov ax, 0x48                     ; 0x13a0
    push ax                          ; 0x13a3
    call ds_dispatch_e935            ; 0x13a4
    add sp, byte 0x0c                ; 0x13a7
    mov word [bp - 0x011a], dx       ; 0x13aa
    mov word [bp - 0x011c], ax       ; 0x13ae
    mov word [bp - 0x0004], 0        ; 0x13b2
    mov ax, word [bp - 0x0006]       ; 0x13b7
    mov word [bp - 0x0002], ax       ; 0x13ba
    jmp near @..local.l82            ; 0x13bd
@..local.l77:
    les bx, word [ds_data_0002]      ; 0x13c0
    mov ax, word [es:bx]             ; 0x13c4
    mov dx, word [es:bx + 0x2]       ; 0x13c7
    mov word [bp - 0x0116], dx       ; 0x13cb
    mov word [bp - 0x0118], ax       ; 0x13cf
    mov ax, word [bp - 0x0002]       ; 0x13d3
    shl ax, 1                        ; 0x13d6
    mov bx, ax                       ; 0x13d8
    add bx, bp                       ; 0x13da
    mov ax, word [bx - 0x0072]       ; 0x13dc
    mov cx, 0x2d                     ; 0x13df
    imul cx                          ; 0x13e2
    mov cx, 0x64                     ; 0x13e4
    cwd                              ; 0x13e7
    idiv cx                          ; 0x13e8
    mov word [bp - 0x0108], ax       ; 0x13ea
    mov ax, word [bx - 0x0072]       ; 0x13ee
    imul word [bp - 0x00ec]          ; 0x13f1
    cwd                              ; 0x13f5
    idiv cx                          ; 0x13f6
    mov word [bp - 0x00f0], ax       ; 0x13f8
    cmp word [bp - 0x0106], byte 0   ; 0x13fc
    je short @..local.l78            ; 0x1401
    mov cx, 0                        ; 0x1403
    sub cx, ax                       ; 0x1406
    mov ax, cx                       ; 0x1408
    mov cx, word [bp - 0x00fa]       ; 0x140a
    shl cx, 1                        ; 0x140e
    mov bx, cx                       ; 0x1410
    add bx, bp                       ; 0x1412
    mov cx, word [bx - 0x00ec]       ; 0x1414
    shl cx, 1                        ; 0x1418
    shl cx, 1                        ; 0x141a
    shl cx, 1                        ; 0x141c
    sub ax, cx                       ; 0x141e
    mov word [bp - 0x00f0], ax       ; 0x1420
@..local.l78:
    mov ax, word [bp - 0x00ee]       ; 0x1424
    imul word [bp - 0x0066]          ; 0x1428
    mov cx, 0x64                     ; 0x142b
    cwd                              ; 0x142e
    idiv cx                          ; 0x142f
    mov word [bp - 0x00f2], ax       ; 0x1431
    mov al, byte [bp - 0x00fa]       ; 0x1435
    mov byte [bp - 0x0114], al       ; 0x1439
    mov byte [bp - 0x0113], 0        ; 0x143d
    mov ax, 0                        ; 0x1442
    push ax                          ; 0x1445
    push ax                          ; 0x1446
    push word [bp - 0x011a]          ; 0x1447
    push word [bp - 0x011c]          ; 0x144b
    call ds_dispatch_e942            ; 0x144f
    add sp, byte 8                   ; 0x1452
    mov ax, 0x18                     ; 0x1455
    imul word [bp - 0x0010]          ; 0x1458
    mov cx, word [bp - 0x0002]       ; 0x145b
    shl cx, 1                        ; 0x145e
    add ax, cx                       ; 0x1460
    mov bx, ax                       ; 0x1462
    add bx, bp                       ; 0x1464
    mov ax, word [bx - 0x0042]       ; 0x1466
    add ax, word [bp - 0x00f0]       ; 0x1469
    mov word [bp - 0x00f4], ax       ; 0x146d
    mov bx, cx                       ; 0x1471
    add bx, bp                       ; 0x1473
    mov ax, word [bx - 0x005a]       ; 0x1475
    add ax, word [bp - 0x00f2]       ; 0x1478
    mov word [bp - 0x00f6], ax       ; 0x147c
    mov ax, word [bp - 0x0102]       ; 0x1480
    shl ax, 1                        ; 0x1484
    mov bx, ax                       ; 0x1486
    add bx, bp                       ; 0x1488
    mov cx, word [bx - 0x0072]       ; 0x148a
    mov ax, 0x64                     ; 0x148d
    sub ax, cx                       ; 0x1490
    push ax                          ; 0x1492
    mov ax, 0                        ; 0x1493
    push ax                          ; 0x1496
    lea ax, word [bp - 0x0114]       ; 0x1497
    push ax                          ; 0x149b
    push word [bp - 0x0106]          ; 0x149c
    mov ax, 0x8e                     ; 0x14a0
    push ax                          ; 0x14a3
    mov ax, 0x21                     ; 0x14a4
    push ax                          ; 0x14a7
    mov ax, 0xf8                     ; 0x14a8
    push ax                          ; 0x14ab
    mov ax, 0x48                     ; 0x14ac
    push ax                          ; 0x14af
    push word [bp - 0x00f6]          ; 0x14b0
    push word [bp - 0x00f4]          ; 0x14b4
    push word [bp - 0x00f8]          ; 0x14b8
    call ds_dispatch_efd1            ; 0x14bc
    add sp, byte 0x16                ; 0x14bf
    mov ax, 0x90                     ; 0x14c2
    push ax                          ; 0x14c5
    mov ax, 0xf8                     ; 0x14c6
    push ax                          ; 0x14c9
    mov ax, 0x21                     ; 0x14ca
    push ax                          ; 0x14cd
    mov ax, 0x48                     ; 0x14ce
    push ax                          ; 0x14d1
    call ds_dispatch_e8da            ; 0x14d2
    add sp, byte 8                   ; 0x14d5
    mov ax, word [bp - 0x000a]       ; 0x14d8
    add word [bp - 0x0102], ax       ; 0x14db
    mov ax, word [bp - 0x0004]       ; 0x14df
    inc ax                           ; 0x14e2
    cwd                              ; 0x14e3
    idiv word [bp - 0x0100]          ; 0x14e4
    mov ax, dx                       ; 0x14e8
    test ax, ax                      ; 0x14ea
    jne short @..local.l79           ; 0x14ec
    mov ax, word [bp - 0x000a]       ; 0x14ee
    add word [bp - 0x00fa], ax       ; 0x14f1
    mov ax, word [bp - 0x0104]       ; 0x14f5
    mov word [bp - 0x0102], ax       ; 0x14f9
@..local.l79:
    les bx, word [ds_data_0002]      ; 0x14fd
    mov ax, word [es:bx]             ; 0x1501
    mov dx, word [es:bx + 0x2]       ; 0x1504
    cmp dx, word [bp - 0x0116]       ; 0x1508
    jne short @..local.l80           ; 0x150c
    cmp ax, word [bp - 0x0118]       ; 0x150e
@..local.l80:
    jne short @..local.l81           ; 0x1512
    jmp short @..local.l79           ; 0x1514
@..local.l81:
    mov ax, word [bp - 0x000a]       ; 0x1516
    add word [bp - 0x0002], ax       ; 0x1519
    inc word [bp - 0x0004]           ; 0x151c
@..local.l82:
    mov ax, word [bp - 0x0004]       ; 0x151f
    cmp ax, word [bp - 0x00fe]       ; 0x1522
    jge short @..local.l83           ; 0x1526
    jmp near @..local.l77            ; 0x1528
@..local.l83:
    mov ax, 0                        ; 0x152b
    push ax                          ; 0x152e
    mov ax, 1                        ; 0x152f
    push ax                          ; 0x1532
    push word [bp - 0x011a]          ; 0x1533
    push word [bp - 0x011c]          ; 0x1537
    call ds_dispatch_e942            ; 0x153b
    add sp, byte 8                   ; 0x153e
@..local.l84:
    mov ax, 1                        ; 0x1541
    push ax                          ; 0x1544
    call ds_dispatch_ef14            ; 0x1545
    pop cx                           ; 0x1548
    cmp word [bp + 0x10], byte 0     ; 0x1549
    je short @..local.l87            ; 0x154d
    cmp word [bp - 0x000e], byte 0xff ; 0x154f
    jne short @..local.l85           ; 0x1553
    mov word [data_90dc], 2          ; 0x1555
    mov ax, 0x8f                     ; 0x155b
    push ax                          ; 0x155e
    mov ax, 0xf7                     ; 0x155f
    push ax                          ; 0x1562
    mov ax, 0x20                     ; 0x1563
    push ax                          ; 0x1566
    mov ax, 0x48                     ; 0x1567
    push ax                          ; 0x156a
    call ds_dispatch_e8da            ; 0x156b
    add sp, byte 8                   ; 0x156e
    jmp short @..local.l86           ; 0x1571
@..local.l85:
    mov ax, word [bp - 0x000e]       ; 0x1573
    push ax                          ; 0x1576
    mov ax, 6                        ; 0x1577
    imul word [bp + 0xa]             ; 0x157a
    mov bx, ax                       ; 0x157d
    pop ax                           ; 0x157f
    mov word [bx - 0x6f36], ax       ; 0x1580
    mov word [data_8320], 0          ; 0x1584
    mov ax, 4                        ; 0x158a
    push ax                          ; 0x158d
    call api_idx_0004_5              ; 0x158e
    pop cx                           ; 0x1591
@..local.l86:
    jmp short @..local.l88           ; 0x1592
@..local.l87:
    mov ax, 0x8f                     ; 0x1594
    push ax                          ; 0x1597
    mov ax, 0xf7                     ; 0x1598
    push ax                          ; 0x159b
    mov ax, 0x20                     ; 0x159c
    push ax                          ; 0x159f
    mov ax, 0x48                     ; 0x15a0
    push ax                          ; 0x15a3
    call ds_dispatch_e8da            ; 0x15a4
    add sp, byte 8                   ; 0x15a7
@..local.l88:
    ret                              ; 0x15aa
math_loc_15ab:
    mov ax, 0                        ; 0x15ab
    call ds_dispatch_f40b            ; 0x15ae
    cmp word [bp + 0x6], byte 0      ; 0x15b1
    jne short @..math_loc_15ab.l1    ; 0x15b5
    mov ax, 0x248                    ; 0x15b7
    imul word [bp + 0x8]             ; 0x15ba
    add ax, 0x5bf4                   ; 0x15bd
    push ax                          ; 0x15c0
    push word [bp + 0x4]             ; 0x15c1
    call ds_dispatch_f364            ; 0x15c4
    add sp, byte 4                   ; 0x15c7
    jmp short @..math_loc_15ab.l2    ; 0x15ca
@..math_loc_15ab.l1:
    mov ax, word [bp + 0x6]          ; 0x15cc
    shl ax, 1                        ; 0x15cf
    mov bx, ax                       ; 0x15d1
    mov ax, word [bx - 0x7b70]       ; 0x15d3
    push ax                          ; 0x15d7
    mov bx, word [bx - 0x7b7e]       ; 0x15d8
    mov al, byte [bx + 0x1a0]        ; 0x15dc
    sub ah, ah                       ; 0x15e0
    mov dx, ax                       ; 0x15e2
    mov cx, 5                        ; 0x15e4
    shl ax, cl                       ; 0x15e7
    mov cx, ax                       ; 0x15e9
    pop ax                           ; 0x15eb
    add ax, cx                       ; 0x15ec
    push ax                          ; 0x15ee
    push word [bp + 0x4]             ; 0x15ef
    call ds_dispatch_f364            ; 0x15f2
    add sp, byte 4                   ; 0x15f5
@..math_loc_15ab.l2:
    ret                              ; 0x15f8
math_loc_15f9:
    mov ax, 0                        ; 0x15f9
    call ds_dispatch_f40b            ; 0x15fc
    mov ax, 7                        ; 0x15ff
    imul word [bp + 0x6]             ; 0x1602
    add ax, 0x9c                     ; 0x1605
    push ax                          ; 0x1608
    push word [bp + 0x4]             ; 0x1609
    call ds_dispatch_e809            ; 0x160c
    add sp, byte 4                   ; 0x160f
    ret                              ; 0x1612
math_loc_1613:
    mov ax, 0                        ; 0x1613
    call ds_dispatch_f40b            ; 0x1616
    mov ax, 0                        ; 0x1619
    push ax                          ; 0x161c
    push word [bp + 0x6]             ; 0x161d
    call ds_dispatch_e823            ; 0x1620
    add sp, byte 4                   ; 0x1623
    mov ax, 0                        ; 0x1626
    push ax                          ; 0x1629
    push word [bp + 0x4]             ; 0x162a
    call ds_dispatch_e84e            ; 0x162d
    add sp, byte 4                   ; 0x1630
    mov ax, 0                        ; 0x1633
    push ax                          ; 0x1636
    mov ax, 0x20                     ; 0x1637
    push ax                          ; 0x163a
    call ds_dispatch_e830            ; 0x163b
    add sp, byte 4                   ; 0x163e
    ret                              ; 0x1641
api_idx_0002_2:
    mov ax, 0xfffe                   ; 0x1642
    call ds_dispatch_f40b            ; 0x1645
    push word [bp + 0x4]             ; 0x1648
    call ds_dispatch_fa90            ; 0x164b
    pop cx                           ; 0x164e
    mov cx, 6                        ; 0x164f
    imul cx                          ; 0x1652
    mov cx, 2                        ; 0x1654
    cwd                              ; 0x1657
    idiv cx                          ; 0x1658
    mov cx, ax                       ; 0x165a
    mov ax, 0xa0                     ; 0x165c
    sub ax, cx                       ; 0x165f
    mov word [bp - 0x0002], ax       ; 0x1661
    push word [bp + 0x8]             ; 0x1664
    push ax                          ; 0x1667
    call math_loc_15f9               ; 0x1668
    add sp, byte 4                   ; 0x166b
    push word [bp + 0x6]             ; 0x166e
    push word [bp + 0x4]             ; 0x1671
    call math_loc_1613               ; 0x1674
    add sp, byte 4                   ; 0x1677
    mov ax, 7                        ; 0x167a
    imul word [bp + 0x8]             ; 0x167d
    add ax, 0xa2                     ; 0x1680
    push ax                          ; 0x1683
    mov ax, 0x13a                    ; 0x1684
    push ax                          ; 0x1687
    mov ax, 7                        ; 0x1688
    imul word [bp + 0x8]             ; 0x168b
    add ax, 0x9c                     ; 0x168e
    push ax                          ; 0x1691
    mov ax, 8                        ; 0x1692
    push ax                          ; 0x1695
    call ds_dispatch_e8da            ; 0x1696
    add sp, byte 8                   ; 0x1699
    ret                              ; 0x169c
api_idx_0050:
    mov ax, 0xffb0                   ; 0x169d
    call ds_dispatch_f40b            ; 0x16a0
    lea ax, word [bp - 0x0050]       ; 0x16a3
    push ax                          ; 0x16a6
    push word [bp + 0x4]             ; 0x16a7
    call ds_dispatch_b53b            ; 0x16aa
    add sp, byte 4                   ; 0x16ad
    push word [bp + 0x8]             ; 0x16b0
    push word [bp + 0x6]             ; 0x16b3
    lea ax, word [bp - 0x0050]       ; 0x16b6
    push ax                          ; 0x16b9
    call api_idx_0002_2              ; 0x16ba
    add sp, byte 6                   ; 0x16bd
    ret                              ; 0x16c0
api_idx_0004_4:
    mov ax, 0xfffc                   ; 0x16c1
    call ds_dispatch_f40b            ; 0x16c4
    mov bx, word [bp + 0x8]          ; 0x16c7
    cmp byte [bx], 0                 ; 0x16ca
    je short @..api_idx_0004_4.l1    ; 0x16cd
    mov ax, 1                        ; 0x16cf
    jmp short @..api_idx_0004_4.l2   ; 0x16d2
@..api_idx_0004_4.l1:
    mov ax, 0                        ; 0x16d4
@..api_idx_0004_4.l2:
    mov bx, word [bp + 0xa]          ; 0x16d7
    cmp byte [bx], 0                 ; 0x16da
    je short @..api_idx_0004_4.l3    ; 0x16dd
    mov cx, 1                        ; 0x16df
    jmp short @..api_idx_0004_4.l4   ; 0x16e2
@..api_idx_0004_4.l3:
    mov cx, 0                        ; 0x16e4
@..api_idx_0004_4.l4:
    add ax, cx                       ; 0x16e7
    mov word [bp - 0x0004], ax       ; 0x16e9
    push word [bp + 0x6]             ; 0x16ec
    call ds_dispatch_fa90            ; 0x16ef
    pop cx                           ; 0x16f2
    push ax                          ; 0x16f3
    push word [bp + 0x8]             ; 0x16f4
    call ds_dispatch_fa90            ; 0x16f7
    pop cx                           ; 0x16fa
    mov cx, ax                       ; 0x16fb
    pop ax                           ; 0x16fd
    add ax, cx                       ; 0x16fe
    push ax                          ; 0x1700
    push word [bp + 0xa]             ; 0x1701
    call ds_dispatch_fa90            ; 0x1704
    pop cx                           ; 0x1707
    mov cx, ax                       ; 0x1708
    pop ax                           ; 0x170a
    add ax, cx                       ; 0x170b
    mov cx, ax                       ; 0x170d
    mov ax, word [bp - 0x0004]       ; 0x170f
    add cx, ax                       ; 0x1712
    mov ax, cx                       ; 0x1714
    mov cx, 6                        ; 0x1716
    imul cx                          ; 0x1719
    mov cx, 2                        ; 0x171b
    cwd                              ; 0x171e
    idiv cx                          ; 0x171f
    mov cx, ax                       ; 0x1721
    mov ax, 0xa0                     ; 0x1723
    sub ax, cx                       ; 0x1726
    mov word [bp - 0x0002], ax       ; 0x1728
    push word [bp + 0x4]             ; 0x172b
    push ax                          ; 0x172e
    call math_loc_15f9               ; 0x172f
    add sp, byte 4                   ; 0x1732
    mov bx, word [bp + 0x6]          ; 0x1735
    cmp byte [bx], 0                 ; 0x1738
    je short @..api_idx_0004_4.l5    ; 0x173b
    push word [bp + 0xc]             ; 0x173d
    push bx                          ; 0x1740
    call math_loc_1613               ; 0x1741
    add sp, byte 4                   ; 0x1744
@..api_idx_0004_4.l5:
    mov bx, word [bp + 0x8]          ; 0x1747
    cmp byte [bx], 0                 ; 0x174a
    je short @..api_idx_0004_4.l6    ; 0x174d
    push word [bp + 0xe]             ; 0x174f
    push bx                          ; 0x1752
    call math_loc_1613               ; 0x1753
    add sp, byte 4                   ; 0x1756
@..api_idx_0004_4.l6:
    mov bx, word [bp + 0xa]          ; 0x1759
    cmp byte [bx], 0                 ; 0x175c
    je short @..api_idx_0004_4.l7    ; 0x175f
    push word [bp + 0x10]            ; 0x1761
    push bx                          ; 0x1764
    call math_loc_1613               ; 0x1765
    add sp, byte 4                   ; 0x1768
@..api_idx_0004_4.l7:
    mov ax, 7                        ; 0x176b
    imul word [bp + 0x4]             ; 0x176e
    add ax, 0xa2                     ; 0x1771
    push ax                          ; 0x1774
    mov ax, 0x13a                    ; 0x1775
    push ax                          ; 0x1778
    mov ax, 7                        ; 0x1779
    imul word [bp + 0x4]             ; 0x177c
    add ax, 0x9c                     ; 0x177f
    push ax                          ; 0x1782
    mov ax, 8                        ; 0x1783
    push ax                          ; 0x1786
    call ds_dispatch_e8da            ; 0x1787
    add sp, byte 8                   ; 0x178a
    ret                              ; 0x178d
api_idx_000e_3:
    mov ax, 0xfff2                   ; 0x178e
    call ds_dispatch_f40b            ; 0x1791
    push word [bp + 0x8]             ; 0x1794
    push word [bp + 0x6]             ; 0x1797
    push word [bp + 0x4]             ; 0x179a
    call ds_dispatch_ca27            ; 0x179d
    add sp, byte 6                   ; 0x17a0
    push word [bp + 0x4]             ; 0x17a3
    call ds_dispatch_c58f            ; 0x17a6
    pop cx                           ; 0x17a9
    push word [bp + 0x4]             ; 0x17aa
    call api_idx_0012                ; 0x17ad
    pop cx                           ; 0x17b0
    mov si, ax                       ; 0x17b1
    lea di, word [bp - 0x000e]       ; 0x17b3
    mov cx, ds                       ; 0x17b6
    mov es, cx                       ; 0x17b8
    mov cx, 7                        ; 0x17ba
    rep movsw                        ; 0x17bd
    mov al, byte [bp - 0x0004]       ; 0x17bf
    push ax                          ; 0x17c2
    mov ax, 0x248                    ; 0x17c3
    imul word [bp + 0x4]             ; 0x17c6
    mov bx, ax                       ; 0x17c9
    pop ax                           ; 0x17cb
    mov byte [bx + 0x5e33], al       ; 0x17cc
    ret                              ; 0x17d0
loc_17d1:
    mov ax, 0                        ; 0x17d1
    call ds_dispatch_f40b            ; 0x17d4
    mov word [data_90e0], 0          ; 0x17d7
    cmp word [data_830a], byte 0x0d  ; 0x17dd
    jne short @..local.l89           ; 0x17e2
    push word [data_0e2c]            ; 0x17e4
    push word [data_0e2a]            ; 0x17e8
    call ds_dispatch_b8af            ; 0x17ec
    add sp, byte 4                   ; 0x17ef
    mov ax, 0                        ; 0x17f2
    push ax                          ; 0x17f5
    mov ax, 0xa4                     ; 0x17f6
    push ax                          ; 0x17f9
    mov ax, 0x12e                    ; 0x17fa
    push ax                          ; 0x17fd
    call ds_dispatch_f0e4            ; 0x17fe
    add sp, byte 6                   ; 0x1801
    call api_idx_000c                ; 0x1804
    mov ax, 0                        ; 0x1807
    push ax                          ; 0x180a
    mov ax, 0xa4                     ; 0x180b
    push ax                          ; 0x180e
    mov ax, 0x12e                    ; 0x180f
    push ax                          ; 0x1812
    call ds_dispatch_f0f1            ; 0x1813
    add sp, byte 6                   ; 0x1816
    mov ax, 0                        ; 0x1819
    mov dx, 0                        ; 0x181c
    push dx                          ; 0x181f
    push ax                          ; 0x1820
    call ds_dispatch_b8af            ; 0x1821
    add sp, byte 4                   ; 0x1824
@..local.l89:
    mov ax, 0                        ; 0x1827
    ret                              ; 0x182a
loc_182b:
    mov ax, 0                        ; 0x182b
    call ds_dispatch_f40b            ; 0x182e
    mov ax, word [bp + 0x6]          ; 0x1831
    mov bx, word [bp + 0x4]          ; 0x1834
    sub word [bx + 0x6], ax          ; 0x1837
    mov bx, word [bp + 0x4]          ; 0x183a
    cmp word [bx + 0x6], byte 0      ; 0x183d
    jge short @..local.l90           ; 0x1841
    mov word [bx + 0x6], 0           ; 0x1843
@..local.l90:
    ret                              ; 0x1848
loc_1849:
    mov ax, 0                        ; 0x1849
    call ds_dispatch_f40b            ; 0x184c
    les bx, word [ds_data_0002]      ; 0x184f
    mov ax, word [es:bx]             ; 0x1853
    mov dx, word [es:bx + 0x2]       ; 0x1856
    mov word [data_9090], dx         ; 0x185a
    mov word [data_908e], ax         ; 0x185e
    mov ax, word [data_908e]         ; 0x1861
    mov dx, word [data_9090]         ; 0x1864
    sub ax, word [data_908a]         ; 0x1868
    sbb dx, word [data_908c]         ; 0x186c
    mov word [data_9094], dx         ; 0x1870
    mov word [data_9092], ax         ; 0x1874
    mov ax, word [data_90e2]         ; 0x1877
    cwd                              ; 0x187a
    mov cx, ax                       ; 0x187b
    mov bx, dx                       ; 0x187d
    mov ax, word [data_9092]         ; 0x187f
    mov dx, word [data_9094]         ; 0x1882
    cmp bx, dx                       ; 0x1886
    jg short @..local.l91            ; 0x1888
    jne short @..local.l92           ; 0x188a
    cmp cx, ax                       ; 0x188c
    jbe short @..local.l92           ; 0x188e
@..local.l91:
    jmp short @..local.l93           ; 0x1890
@..local.l92:
    mov ax, word [data_908e]         ; 0x1892
    mov dx, word [data_9090]         ; 0x1895
    mov word [data_908c], dx         ; 0x1899
    mov word [data_908a], ax         ; 0x189d
    mov ax, 1                        ; 0x18a0
    ret                              ; 0x18a3
@..local.l93:
    mov ax, 0                        ; 0x18a4
    ret                              ; 0x18a7
api_idx_0006:
    mov ax, 0xfffa                   ; 0x18a8
    call ds_dispatch_f40b            ; 0x18ab
    mov ax, word [data_845e]         ; 0x18ae
    jmp near @..api_idx_0006.l13     ; 0x18b1
@..api_idx_0006.l1:
    mov ax, 0x8f                     ; 0x18b4
    push ax                          ; 0x18b7
    mov ax, 0xf7                     ; 0x18b8
    push ax                          ; 0x18bb
    mov ax, 0x20                     ; 0x18bc
    push ax                          ; 0x18bf
    mov ax, 0x48                     ; 0x18c0
    push ax                          ; 0x18c3
    call ds_dispatch_e8da            ; 0x18c4
    add sp, byte 8                   ; 0x18c7
    cmp word [data_90dc], byte 0     ; 0x18ca
    je short @..api_idx_0006.l2      ; 0x18cf
    mov ax, 5                        ; 0x18d1
    push ax                          ; 0x18d4
    call ds_dispatch_b7e0            ; 0x18d5
    pop cx                           ; 0x18d8
    cmp word [data_90dc], byte 2     ; 0x18d9
    jne short @..api_idx_0006.l2     ; 0x18de
    mov ax, 1                        ; 0x18e0
    push ax                          ; 0x18e3
    call ds_dispatch_ef14            ; 0x18e4
    pop cx                           ; 0x18e7
@..api_idx_0006.l2:
    mov word [data_90dc], 0          ; 0x18e8
    mov ax, word [data_8320]         ; 0x18ee
    inc ax                           ; 0x18f1
    mov cx, 2                        ; 0x18f2
    cwd                              ; 0x18f5
    idiv cx                          ; 0x18f6
    mov word [data_8320], dx         ; 0x18f8
    jmp near @..api_idx_0006.l17     ; 0x18fc
@..api_idx_0006.l3:
    les bx, word [ds_data_0002]      ; 0x18ff
    mov ax, word [es:bx]             ; 0x1903
    mov dx, word [es:bx + 0x2]       ; 0x1906
    sub ax, word [data_908a]         ; 0x190a
    sbb dx, word [data_908c]         ; 0x190e
    push ax                          ; 0x1912
    push dx                          ; 0x1913
    mov ax, word [data_90e2]         ; 0x1914
    cwd                              ; 0x1917
    mov cx, ax                       ; 0x1918
    mov bx, dx                       ; 0x191a
    pop dx                           ; 0x191c
    pop ax                           ; 0x191d
    cmp dx, bx                       ; 0x191e
    jl short @..api_idx_0006.l4      ; 0x1920
    jne short @..api_idx_0006.l5     ; 0x1922
    cmp ax, cx                       ; 0x1924
    jae short @..api_idx_0006.l5     ; 0x1926
@..api_idx_0006.l4:
    jmp short @..api_idx_0006.l6     ; 0x1928
@..api_idx_0006.l5:
    mov ax, word [data_906c]         ; 0x192a
    inc ax                           ; 0x192d
    mov cx, 2                        ; 0x192e
    cwd                              ; 0x1931
    idiv cx                          ; 0x1932
    mov word [data_906c], dx         ; 0x1934
@..api_idx_0006.l6:
    mov ax, 0                        ; 0x1938
    push ax                          ; 0x193b
    push ax                          ; 0x193c
    mov ax, word [data_906c]         ; 0x193d
    shl ax, 1                        ; 0x1940
    shl ax, 1                        ; 0x1942
    mov bx, ax                       ; 0x1944
    push word [bx - 0x6f9e]          ; 0x1946
    push word [bx - 0x6fa0]          ; 0x194a
    call ds_dispatch_e942            ; 0x194e
    add sp, byte 8                   ; 0x1951
    mov word [bp - 0x0002], 0        ; 0x1954
@..api_idx_0006.l7:
    mov ax, word [bp - 0x0002]       ; 0x1959
    shl ax, 1                        ; 0x195c
    mov bx, ax                       ; 0x195e
    mov bx, word [bx - 0x7b96]       ; 0x1960
    mov byte [bx + 0x14], 0xff       ; 0x1964
    inc word [bp - 0x0002]           ; 0x1968
    mov ax, word [bp - 0x0002]       ; 0x196b
    cmp ax, strict word 0xc          ; 0x196e
    jl short @..api_idx_0006.l7      ; 0x1971
    mov word [data_8468], 0          ; 0x1973
    jmp near @..api_idx_0006.l17     ; 0x1979
@..api_idx_0006.l8:
    call loc_1849                    ; 0x197c
    mov word [bp - 0x0006], ax       ; 0x197f
    mov word [bp - 0x0002], 0        ; 0x1982
@..api_idx_0006.l9:
    mov word [bp - 0x0004], 0        ; 0x1987
@..api_idx_0006.l10:
    push word [bp - 0x0006]          ; 0x198c
    mov ax, 0xf8                     ; 0x198f
    push ax                          ; 0x1992
    mov ax, 0x48                     ; 0x1993
    push ax                          ; 0x1996
    mov ax, 6                        ; 0x1997
    imul word [bp - 0x0002]          ; 0x199a
    mov cx, word [bp - 0x0004]       ; 0x199d
    shl cx, 1                        ; 0x19a0
    add ax, cx                       ; 0x19a2
    mov bx, ax                       ; 0x19a4
    mov cx, word [bx + 0x580]        ; 0x19a6
    mov ax, 0x64                     ; 0x19aa
    sub ax, cx                       ; 0x19ad
    push ax                          ; 0x19af
    mov ax, 0                        ; 0x19b0
    push ax                          ; 0x19b3
    push word [bp - 0x0004]          ; 0x19b4
    push word [bp - 0x0002]          ; 0x19b7
    call api_idx_001c                ; 0x19ba
    add sp, byte 0x0e                ; 0x19bd
    push word [bp - 0x0004]          ; 0x19c0
    push word [bp - 0x0002]          ; 0x19c3
    call api_idx_0016                ; 0x19c6
    add sp, byte 4                   ; 0x19c9
    inc word [bp - 0x0004]           ; 0x19cc
    mov ax, word [bp - 0x0004]       ; 0x19cf
    cmp ax, strict word 3            ; 0x19d2
    jl short @..api_idx_0006.l10     ; 0x19d5
    inc word [bp - 0x0002]           ; 0x19d7
    mov ax, word [bp - 0x0002]       ; 0x19da
    cmp ax, strict word 3            ; 0x19dd
    jl short @..api_idx_0006.l9      ; 0x19e0
    call api_idx_000e_2              ; 0x19e2
    cmp word [bp - 0x0006], byte 0   ; 0x19e5
    je short @..api_idx_0006.l11     ; 0x19e9
    mov ax, word [data_82e8]         ; 0x19eb
    inc ax                           ; 0x19ee
    mov cx, 2                        ; 0x19ef
    cwd                              ; 0x19f2
    idiv cx                          ; 0x19f3
    mov word [data_82e8], dx         ; 0x19f5
@..api_idx_0006.l11:
    call ds_dispatch_da22            ; 0x19f9
    jmp short @..api_idx_0006.l17    ; 0x19fc
@..api_idx_0006.l12:
    push word [data_845e]            ; 0x19fe
    call math_loc_0dbe               ; 0x1a02
    pop cx                           ; 0x1a05
    jmp short @..api_idx_0006.l17    ; 0x1a06
@..api_idx_0006.l13:
    cmp ax, strict word 0xfffd       ; 0x1a08
    jne short @..api_idx_0006.l14    ; 0x1a0b
    jmp near @..api_idx_0006.l1      ; 0x1a0d
@..api_idx_0006.l14:
    cmp ax, strict word 0xfffe       ; 0x1a10
    jne short @..api_idx_0006.l15    ; 0x1a13
    jmp near @..api_idx_0006.l3      ; 0x1a15
@..api_idx_0006.l15:
    cmp ax, strict word 0xffff       ; 0x1a18
    jne short @..api_idx_0006.l16    ; 0x1a1b
    jmp near @..api_idx_0006.l8      ; 0x1a1d
@..api_idx_0006.l16:
    jmp short @..api_idx_0006.l12    ; 0x1a20
@..api_idx_0006.l17:
    inc word [data_845e]             ; 0x1a22
    mov ax, word [data_845e]         ; 0x1a26
    cmp ax, strict word 0xc          ; 0x1a29
    jne short @..api_idx_0006.l18    ; 0x1a2c
    mov word [data_845e], 0xfffd     ; 0x1a2e
@..api_idx_0006.l18:
    ret                              ; 0x1a34
loc_1a35:
    mov ax, 0                        ; 0x1a35
    call ds_dispatch_f40b            ; 0x1a38
    mov word [data_845e], 0xfffe     ; 0x1a3b
@..local.l94:
    call api_idx_0006                ; 0x1a41
    cmp word [data_845e], byte 0xfe  ; 0x1a44
    jne short @..local.l94           ; 0x1a49
    ret                              ; 0x1a4b
loc_1a4c:
    mov ax, 0                        ; 0x1a4c
    call ds_dispatch_f40b            ; 0x1a4f
@..local.l95:
    cmp word [data_845e], byte 0xfe  ; 0x1a52
    je short @..local.l96            ; 0x1a57
    call api_idx_0006                ; 0x1a59
    jmp short @..local.l95           ; 0x1a5c
@..local.l96:
    ret                              ; 0x1a5e
api_idx_0004_5:
    mov ax, 0xfffc                   ; 0x1a5f
    call ds_dispatch_f40b            ; 0x1a62
    mov word [data_90e4], 1          ; 0x1a65
    call ds_dispatch_ec17            ; 0x1a6b
    mov ax, word [bp + 0x4]          ; 0x1a6e
    cwd                              ; 0x1a71
    les bx, word [ds_data_0002]      ; 0x1a72
    mov cx, word [es:bx]             ; 0x1a76
    mov bx, word [es:bx + 0x2]       ; 0x1a79
    add ax, cx                       ; 0x1a7d
    adc dx, bx                       ; 0x1a7f
    mov word [bp - 0x0002], dx       ; 0x1a81
    mov word [bp - 0x0004], ax       ; 0x1a84
@..api_idx_0004_5.l1:
    les bx, word [ds_data_0002]      ; 0x1a87
    mov ax, word [es:bx]             ; 0x1a8b
    mov dx, word [es:bx + 0x2]       ; 0x1a8e
    cmp dx, word [bp - 0x0002]       ; 0x1a92
    jg short @..api_idx_0004_5.l2    ; 0x1a95
    jne short @..api_idx_0004_5.l3   ; 0x1a97
    cmp ax, word [bp - 0x0004]       ; 0x1a99
    jb short @..api_idx_0004_5.l3    ; 0x1a9c
@..api_idx_0004_5.l2:
    jmp short @..local.l99           ; 0x1a9e
@..api_idx_0004_5.l3:
    call ds_dispatch_baef            ; 0x1aa0
    test ax, ax                      ; 0x1aa3
    je short @..local.l97            ; 0x1aa5
    ret                              ; 0x1aa7
@..local.l97:
    mov ax, 1                        ; 0x1aa8
    push ax                          ; 0x1aab
    call ds_dispatch_ea50            ; 0x1aac
    pop cx                           ; 0x1aaf
    test ax, ax                      ; 0x1ab0
    je short @..local.l98            ; 0x1ab2
    mov ax, 1                        ; 0x1ab4
    push ax                          ; 0x1ab7
    call ds_dispatch_eb32            ; 0x1ab8
    pop cx                           ; 0x1abb
    cmp al, 0xd                      ; 0x1abc
    jne short @..local.l98           ; 0x1abe
    ret                              ; 0x1ac0
@..local.l98:
    call api_idx_0006                ; 0x1ac1
    jmp short @..api_idx_0004_5.l1   ; 0x1ac4
@..local.l99:
    ret                              ; 0x1ac6
api_idx_000a_2:
    mov ax, 0xfff6                   ; 0x1ac7
    call ds_dispatch_f40b            ; 0x1aca
    mov ax, 0                        ; 0x1acd
    push ax                          ; 0x1ad0
    push word [data_8d10]            ; 0x1ad1
    push word [data_8d0e]            ; 0x1ad5
    call ds_dispatch_e94f            ; 0x1ad9
    add sp, byte 6                   ; 0x1adc
    mov ax, 0                        ; 0x1adf
    push ax                          ; 0x1ae2
    push word [data_8d0c]            ; 0x1ae3
    push word [data_8d0a]            ; 0x1ae7
    call ds_dispatch_e94f            ; 0x1aeb
    add sp, byte 6                   ; 0x1aee
    mov byte [bp - 0x000a], 1        ; 0x1af1
    mov byte [bp - 0x0009], 0        ; 0x1af5
    mov ax, 0                        ; 0x1af9
    push ax                          ; 0x1afc
    push ax                          ; 0x1afd
    lea ax, word [bp - 0x000a]       ; 0x1afe
    push ax                          ; 0x1b01
    mov ax, 0                        ; 0x1b02
    push ax                          ; 0x1b05
    mov ax, 0xc7                     ; 0x1b06
    push ax                          ; 0x1b09
    mov ax, 0                        ; 0x1b0a
    push ax                          ; 0x1b0d
    mov ax, 0x13f                    ; 0x1b0e
    push ax                          ; 0x1b11
    mov ax, 0                        ; 0x1b12
    push ax                          ; 0x1b15
    mov ax, 0x9a                     ; 0x1b16
    push ax                          ; 0x1b19
    mov ax, 0x37                     ; 0x1b1a
    push ax                          ; 0x1b1d
    mov ax, api_idx_0002             ; 0x1b1e
    push ax                          ; 0x1b21
    call ds_dispatch_efd1            ; 0x1b22
    add sp, byte 0x16                ; 0x1b25
    cmp word [bp + 0x4], byte 0      ; 0x1b28
    je short @..api_idx_000a_2.l1    ; 0x1b2c
    mov ax, 0xc2                     ; 0x1b2e
    push ax                          ; 0x1b31
    mov ax, 0x13a                    ; 0x1b32
    push ax                          ; 0x1b35
    mov ax, 0x93                     ; 0x1b36
    push ax                          ; 0x1b39
    mov ax, 8                        ; 0x1b3a
    push ax                          ; 0x1b3d
    call ds_dispatch_e8da            ; 0x1b3e
    add sp, byte 8                   ; 0x1b41
@..api_idx_000a_2.l1:
    ret                              ; 0x1b44
api_idx_0004_6:
    mov ax, 0xfffc                   ; 0x1b45
    call ds_dispatch_f40b            ; 0x1b48
    mov word [bp - 0x0002], 0        ; 0x1b4b
    mov word [bp - 0x0004], 0        ; 0x1b50
    cmp word [bp + 0x4], byte 0      ; 0x1b55
    jle short @..api_idx_0004_6.l1   ; 0x1b59
    mov ax, 0x9098                   ; 0x1b5b
    push ax                          ; 0x1b5e
    mov ax, 7                        ; 0x1b5f
    imul word [bp + 0x4]             ; 0x1b62
    add ax, 0x9b                     ; 0x1b65
    push ax                          ; 0x1b68
    mov ax, 0x13a                    ; 0x1b69
    push ax                          ; 0x1b6c
    mov ax, 0x9c                     ; 0x1b6d
    push ax                          ; 0x1b70
    mov ax, 8                        ; 0x1b71
    push ax                          ; 0x1b74
    call ds_dispatch_c283            ; 0x1b75
    add sp, byte 0x0a                ; 0x1b78
    mov word [bp - 0x0002], ax       ; 0x1b7b
@..api_idx_0004_6.l1:
    cmp word [bp + 0x6], byte 4      ; 0x1b7e
    jge short @..api_idx_0004_6.l2   ; 0x1b82
    mov ax, 0x909f                   ; 0x1b84
    push ax                          ; 0x1b87
    mov ax, 0xc4                     ; 0x1b88
    push ax                          ; 0x1b8b
    mov ax, 0x13a                    ; 0x1b8c
    push ax                          ; 0x1b8f
    mov ax, 7                        ; 0x1b90
    imul word [bp + 0x6]             ; 0x1b93
    add ax, 0xa2                     ; 0x1b96
    push ax                          ; 0x1b99
    mov ax, 8                        ; 0x1b9a
    push ax                          ; 0x1b9d
    call ds_dispatch_c283            ; 0x1b9e
    add sp, byte 0x0a                ; 0x1ba1
    mov word [bp - 0x0004], ax       ; 0x1ba4
@..api_idx_0004_6.l2:
    mov ax, 0                        ; 0x1ba7
    push ax                          ; 0x1baa
    call api_idx_000a_2              ; 0x1bab
    pop cx                           ; 0x1bae
    cmp word [bp - 0x0004], byte 0   ; 0x1baf
    je short @..api_idx_0004_6.l3    ; 0x1bb3
    mov ax, 1                        ; 0x1bb5
    push ax                          ; 0x1bb8
    push word [bp - 0x0004]          ; 0x1bb9
    call ds_dispatch_c459            ; 0x1bbc
    add sp, byte 4                   ; 0x1bbf
@..api_idx_0004_6.l3:
    cmp word [bp - 0x0002], byte 0   ; 0x1bc2
    je short @..api_idx_0004_6.l4    ; 0x1bc6
    mov ax, 1                        ; 0x1bc8
    push ax                          ; 0x1bcb
    push word [bp - 0x0002]          ; 0x1bcc
    call ds_dispatch_c459            ; 0x1bcf
    add sp, byte 4                   ; 0x1bd2
@..api_idx_0004_6.l4:
    mov ax, 0xc2                     ; 0x1bd5
    push ax                          ; 0x1bd8
    mov ax, 0x13a                    ; 0x1bd9
    push ax                          ; 0x1bdc
    mov ax, 0x93                     ; 0x1bdd
    push ax                          ; 0x1be0
    mov ax, 8                        ; 0x1be1
    push ax                          ; 0x1be4
    call ds_dispatch_e8da            ; 0x1be5
    add sp, byte 8                   ; 0x1be8
    mov ax, 2                        ; 0x1beb
    push ax                          ; 0x1bee
    call api_idx_0004_5              ; 0x1bef
    pop cx                           ; 0x1bf2
    ret                              ; 0x1bf3
math_loc_1bf4:
    mov ax, 0                        ; 0x1bf4
    call ds_dispatch_f40b            ; 0x1bf7
    mov ax, 0x248                    ; 0x1bfa
    imul word [bp + 0x4]             ; 0x1bfd
    add ax, word [bp + 0x6]          ; 0x1c00
    mov bx, ax                       ; 0x1c03
    cmp byte [bx + 0x5d6c], 0x64     ; 0x1c05
    jae short @..math_loc_1bf4.l1    ; 0x1c0a
    mov al, byte [bx + 0x5d6c]       ; 0x1c0c
    sub ah, ah                       ; 0x1c10
    push ax                          ; 0x1c12
    call ds_dispatch_b7a9            ; 0x1c13
    pop cx                           ; 0x1c16
    push ax                          ; 0x1c17
    mov ax, 0x248                    ; 0x1c18
    imul word [bp + 0x4]             ; 0x1c1b
    mov bx, ax                       ; 0x1c1e
    mov ax, word [bx + 0x5c18]       ; 0x1c20
    imul word [bp + 0x8]             ; 0x1c24
    mov cx, ax                       ; 0x1c27
    pop ax                           ; 0x1c29
    sub ax, cx                       ; 0x1c2a
    jg short @..math_loc_1bf4.l1     ; 0x1c2c
    add bx, word [bp + 0x6]          ; 0x1c2e
    inc byte [bx + 0x5d6c]           ; 0x1c31
@..math_loc_1bf4.l1:
    ret                              ; 0x1c35
math_loc_1c36:
    mov ax, 0                        ; 0x1c36
    call ds_dispatch_f40b            ; 0x1c39
    mov ax, 6                        ; 0x1c3c
    imul word [bp + 0x4]             ; 0x1c3f
    mov bx, ax                       ; 0x1c42
    mov al, byte [bx + 0x621]        ; 0x1c44
    sub ah, ah                       ; 0x1c48
    mov cx, 3                        ; 0x1c4a
    imul cx                          ; 0x1c4d
    push ax                          ; 0x1c4f
    mov ax, word [bp + 0x6]          ; 0x1c50
    imul cx                          ; 0x1c53
    mov cx, ax                       ; 0x1c55
    pop ax                           ; 0x1c57
    add ax, cx                       ; 0x1c58
    add ax, strict word 0xfffa       ; 0x1c5a
    ret                              ; 0x1c5d
api_idx_0004_7:
    mov ax, 0xfffc                   ; 0x1c5e
    call ds_dispatch_f40b            ; 0x1c61
    cmp word [bp + 0x4], byte 0      ; 0x1c64
    jne short @..api_idx_0004_7.l1   ; 0x1c68
    jmp near @..api_idx_0004_7.l5    ; 0x1c6a
@..api_idx_0004_7.l1:
    cmp word [data_8464], byte 0     ; 0x1c6d
    jne short @..api_idx_0004_7.l2   ; 0x1c72
    cmp word [data_8462], byte 0     ; 0x1c74
    jl short @..api_idx_0004_7.l2    ; 0x1c79
    mov ax, word [data_8462]         ; 0x1c7b
    cmp ax, word [data_69c8]         ; 0x1c7e
    jge short @..api_idx_0004_7.l2   ; 0x1c82
    mov cx, 0x248                    ; 0x1c84
    imul cx                          ; 0x1c87
    mov bx, ax                       ; 0x1c89
    add word [bx + 0x5c04], byte 1   ; 0x1c8b
    adc word [bx + 0x5c06], byte 0   ; 0x1c90
@..api_idx_0004_7.l2:
    mov ax, word [bp + 0x4]          ; 0x1c95
    shl ax, 1                        ; 0x1c98
    mov bx, ax                       ; 0x1c9a
    mov bx, word [bx - 0x7b70]       ; 0x1c9c
    mov al, byte [bx + 0xe2]         ; 0x1ca0
    sub ah, ah                       ; 0x1ca4
    test ax, 1                       ; 0x1ca6
    je short @..api_idx_0004_7.l3    ; 0x1ca9
    mov ax, 1                        ; 0x1cab
    push ax                          ; 0x1cae
    mov al, byte [bx + 0xe0]         ; 0x1caf
    sub ah, ah                       ; 0x1cb3
    push ax                          ; 0x1cb5
    mov ax, 0x5842                   ; 0x1cb6
    push ax                          ; 0x1cb9
    call ds_dispatch_ec41            ; 0x1cba
    add sp, byte 6                   ; 0x1cbd
@..api_idx_0004_7.l3:
    mov ax, word [bp + 0x4]          ; 0x1cc0
    shl ax, 1                        ; 0x1cc3
    mov bx, ax                       ; 0x1cc5
    mov bx, word [bx - 0x7b70]       ; 0x1cc7
    cmp byte [bx + 0xe4], 0xff       ; 0x1ccb
    je short @..api_idx_0004_7.l4    ; 0x1cd0
    mov al, byte [bx + 0xe4]         ; 0x1cd2
    cbw                              ; 0x1cd6
    mov cx, 0x26                     ; 0x1cd7
    imul cx                          ; 0x1cda
    mov bx, ax                       ; 0x1cdc
    mov byte [bx - 0x7b00], 0        ; 0x1cde
    mov ax, word [bp + 0x4]          ; 0x1ce3
    shl ax, 1                        ; 0x1ce6
    mov bx, ax                       ; 0x1ce8
    mov bx, word [bx - 0x7b70]       ; 0x1cea
    mov al, byte [bx + 0xe4]         ; 0x1cee
    cbw                              ; 0x1cf2
    mov word [data_849e], ax         ; 0x1cf3
@..api_idx_0004_7.l4:
    mov ax, 0x2c                     ; 0x1cf6
    imul word [bp + 0x6]             ; 0x1cf9
    mov si, ax                       ; 0x1cfc
    mov ax, word [bp + 0x4]          ; 0x1cfe
    shl ax, 1                        ; 0x1d01
    mov bx, ax                       ; 0x1d03
    mov bx, word [bx - 0x7b7e]       ; 0x1d05
    cmp byte [bx + si + 0x2a], 0xff  ; 0x1d09
    je short @..api_idx_0004_7.l5    ; 0x1d0d
    mov al, byte [bx + si + 0x2a]    ; 0x1d0f
    cbw                              ; 0x1d12
    mov cx, 0xa                      ; 0x1d13
    cwd                              ; 0x1d16
    idiv cx                          ; 0x1d17
    mov word [bp - 0x0002], ax       ; 0x1d19
    mov al, byte [bx + si + 0x2a]    ; 0x1d1c
    cbw                              ; 0x1d1f
    cwd                              ; 0x1d20
    idiv cx                          ; 0x1d21
    mov word [bp - 0x0004], dx       ; 0x1d23
    mov ax, 6                        ; 0x1d26
    imul word [bp - 0x0002]          ; 0x1d29
    mov cx, word [bp - 0x0004]       ; 0x1d2c
    shl cx, 1                        ; 0x1d2f
    add ax, cx                       ; 0x1d31
    mov bx, ax                       ; 0x1d33
    mov word [bx - 0x6f36], 0        ; 0x1d35
    mov word [data_8320], 0          ; 0x1d3b
    call loc_1a35                    ; 0x1d41
    mov ax, 6                        ; 0x1d44
    imul word [bp - 0x0002]          ; 0x1d47
    mov cx, word [bp - 0x0004]       ; 0x1d4a
    shl cx, 1                        ; 0x1d4d
    add ax, cx                       ; 0x1d4f
    mov bx, ax                       ; 0x1d51
    mov word [bx - 0x7bc6], 0        ; 0x1d53
@..api_idx_0004_7.l5:
    mov ax, 0x2c                     ; 0x1d59
    imul word [bp + 0x6]             ; 0x1d5c
    mov si, ax                       ; 0x1d5f
    mov ax, word [bp + 0x4]          ; 0x1d61
    shl ax, 1                        ; 0x1d64
    mov bx, ax                       ; 0x1d66
    mov bx, word [bx - 0x7b7e]       ; 0x1d68
    mov byte [bx + si + 0x2a], 0xff  ; 0x1d6c
    mov ax, 0x2c                     ; 0x1d70
    imul word [bp + 0x6]             ; 0x1d73
    mov si, ax                       ; 0x1d76
    mov ax, word [bp + 0x4]          ; 0x1d78
    shl ax, 1                        ; 0x1d7b
    mov bx, ax                       ; 0x1d7d
    mov bx, word [bx - 0x7b7e]       ; 0x1d7f
    mov byte [bx + si + 0x22], 3     ; 0x1d83
    mov ax, 0x2c                     ; 0x1d87
    imul word [bp + 0x6]             ; 0x1d8a
    mov si, ax                       ; 0x1d8d
    mov ax, word [bp + 0x4]          ; 0x1d8f
    shl ax, 1                        ; 0x1d92
    mov bx, ax                       ; 0x1d94
    mov bx, word [bx - 0x7b7e]       ; 0x1d96
    mov word [bx + si + 0x2], 0      ; 0x1d9a
    mov ax, 0x2c                     ; 0x1d9f
    imul word [bp + 0x6]             ; 0x1da2
    mov si, ax                       ; 0x1da5
    mov ax, word [bp + 0x4]          ; 0x1da7
    shl ax, 1                        ; 0x1daa
    mov bx, ax                       ; 0x1dac
    mov bx, word [bx - 0x7b7e]       ; 0x1dae
    mov word [bx + si + 0x6], 0      ; 0x1db2
    mov ax, 0x2c                     ; 0x1db7
    imul word [bp + 0x6]             ; 0x1dba
    mov si, ax                       ; 0x1dbd
    mov ax, word [bp + 0x4]          ; 0x1dbf
    shl ax, 1                        ; 0x1dc2
    mov bx, ax                       ; 0x1dc4
    mov bx, word [bx - 0x7b7e]       ; 0x1dc6
    mov byte [bx + si + 0x24], 0     ; 0x1dca
    mov ax, 0x2c                     ; 0x1dce
    imul word [bp + 0x6]             ; 0x1dd1
    mov si, ax                       ; 0x1dd4
    mov ax, word [bp + 0x4]          ; 0x1dd6
    shl ax, 1                        ; 0x1dd9
    mov bx, ax                       ; 0x1ddb
    mov bx, word [bx - 0x7b7e]       ; 0x1ddd
    mov byte [bx + si + 0x25], 0     ; 0x1de1
    mov word [bp - 0x0002], 0        ; 0x1de5
@..api_idx_0004_7.l6:
    mov ax, 0x2c                     ; 0x1dea
    imul word [bp + 0x6]             ; 0x1ded
    add ax, word [bp - 0x0002]       ; 0x1df0
    mov si, ax                       ; 0x1df3
    mov ax, word [bp + 0x4]          ; 0x1df5
    shl ax, 1                        ; 0x1df8
    mov bx, ax                       ; 0x1dfa
    mov bx, word [bx - 0x7b7e]       ; 0x1dfc
    mov byte [bx + si + 0x18], 0     ; 0x1e00
    inc word [bp - 0x0002]           ; 0x1e04
    mov ax, word [bp - 0x0002]       ; 0x1e07
    cmp ax, strict word 4            ; 0x1e0a
    jl short @..api_idx_0004_7.l6    ; 0x1e0d
    cmp word [bp + 0x4], byte 1      ; 0x1e0f
    jl short @..api_idx_0004_7.l7    ; 0x1e13
    cmp word [bp + 0x4], byte 5      ; 0x1e15
    jg short @..api_idx_0004_7.l7    ; 0x1e19
    mov ax, word [bp + 0x4]          ; 0x1e1b
    shl ax, 1                        ; 0x1e1e
    mov bx, ax                       ; 0x1e20
    mov bx, word [bx - 0x7b70]       ; 0x1e22
    mov ax, word [bx + 0x40]         ; 0x1e26
    mov dx, word [bx + 0x42]         ; 0x1e29
    add word [data_84a2], ax         ; 0x1e2c
    adc word [data_84a4], dx         ; 0x1e30
@..api_idx_0004_7.l7:
    ret                              ; 0x1e34
loc_1e35:
    mov ax, 0                        ; 0x1e35
    call ds_dispatch_f40b            ; 0x1e38
    push word [bp + 0x6]             ; 0x1e3b
    push word [bp + 0x4]             ; 0x1e3e
    mov ax, 0x90e6                   ; 0x1e41
    push ax                          ; 0x1e44
    call math_loc_15ab               ; 0x1e45
    add sp, byte 6                   ; 0x1e48
    mov ax, data_9136                ; 0x1e4b
    push ax                          ; 0x1e4e
    push word [bp + 0x8]             ; 0x1e4f
    call ds_dispatch_b53b            ; 0x1e52
    add sp, byte 4                   ; 0x1e55
    mov byte [data_9186], 0          ; 0x1e58
    cmp word [data_91d6], byte 2     ; 0x1e5d
    jne short @..local.l101          ; 0x1e62
    mov ax, 4                        ; 0x1e64
    push ax                          ; 0x1e67
    mov ax, 2                        ; 0x1e68
    push ax                          ; 0x1e6b
    call api_idx_0004_6              ; 0x1e6c
    add sp, byte 4                   ; 0x1e6f
    mov ax, 2                        ; 0x1e72
    push ax                          ; 0x1e75
    mov ax, 0x43                     ; 0x1e76
    cmp word [bp + 0x4], byte 0      ; 0x1e79
    jne short @..local.l100          ; 0x1e7d
    mov ax, 1                        ; 0x1e7f
@..local.l100:
    push ax                          ; 0x1e82
    mov ax, 0x90e6                   ; 0x1e83
    push ax                          ; 0x1e86
    call api_idx_0002_2              ; 0x1e87
    add sp, byte 6                   ; 0x1e8a
    mov ax, 3                        ; 0x1e8d
    push ax                          ; 0x1e90
    mov ax, 0x41                     ; 0x1e91
    push ax                          ; 0x1e94
    mov ax, data_9136                ; 0x1e95
    push ax                          ; 0x1e98
    call api_idx_0002_2              ; 0x1e99
    add sp, byte 6                   ; 0x1e9c
    jmp short @..local.l103          ; 0x1e9f
@..local.l101:
    mov ax, 4                        ; 0x1ea1
    push ax                          ; 0x1ea4
    push ax                          ; 0x1ea5
    call api_idx_0004_6              ; 0x1ea6
    add sp, byte 4                   ; 0x1ea9
    mov ax, 0x41                     ; 0x1eac
    push ax                          ; 0x1eaf
    push ax                          ; 0x1eb0
    cmp word [bp + 0x4], byte 0      ; 0x1eb1
    jne short @..local.l102          ; 0x1eb5
    mov ax, 1                        ; 0x1eb7
@..local.l102:
    push ax                          ; 0x1eba
    mov ax, data_9186                ; 0x1ebb
    push ax                          ; 0x1ebe
    mov ax, data_9136                ; 0x1ebf
    push ax                          ; 0x1ec2
    mov ax, 0x90e6                   ; 0x1ec3
    push ax                          ; 0x1ec6
    mov ax, 4                        ; 0x1ec7
    push ax                          ; 0x1eca
    call api_idx_0004_4              ; 0x1ecb
    add sp, byte 0x0e                ; 0x1ece
@..local.l103:
    cmp word [bp + 0xa], byte 1      ; 0x1ed1
    jne short @..local.l105          ; 0x1ed5
    cmp word [bp + 0x4], byte 0      ; 0x1ed7
    jne short @..local.l105          ; 0x1edb
    cmp word [bp + 0xc], byte 0      ; 0x1edd
    jle short @..local.l104          ; 0x1ee1
    push word [bp + 0xc]             ; 0x1ee3
    call ds_dispatch_b7e0            ; 0x1ee6
    pop cx                           ; 0x1ee9
@..local.l104:
    mov ax, 1                        ; 0x1eea
    push ax                          ; 0x1eed
    push word [bp + 0x6]             ; 0x1eee
    call api_idx_0004_2              ; 0x1ef1
    add sp, byte 4                   ; 0x1ef4
@..local.l105:
    push word [data_9058]            ; 0x1ef7
    call api_idx_0004_5              ; 0x1efb
    pop cx                           ; 0x1efe
    ret                              ; 0x1eff
api_idx_0002_3:
    mov ax, 0xfffe                   ; 0x1f00
    call ds_dispatch_f40b            ; 0x1f03
    mov ax, word [bp + 0x4]          ; 0x1f06
    shl ax, 1                        ; 0x1f09
    mov bx, ax                       ; 0x1f0b
    mov bx, word [bx - 0x7b70]       ; 0x1f0d
    mov si, word [bp + 0x8]          ; 0x1f11
    mov al, byte [bx + si + 0x9a]    ; 0x1f14
    sub ah, ah                       ; 0x1f18
    mov cx, ax                       ; 0x1f1a
    sub ax, word [bp + 0xa]          ; 0x1f1c
    mov cx, ax                       ; 0x1f1f
    mov ax, word [bp + 0x6]          ; 0x1f21
    mov bx, cx                       ; 0x1f24
    imul bx                          ; 0x1f26
    mov cx, 0x64                     ; 0x1f28
    mov bx, 0                        ; 0x1f2b
    call ds_dispatch_f99f            ; 0x1f2e
    mov word [bp - 0x0002], ax       ; 0x1f31
    cmp ax, strict word 0            ; 0x1f34
    jge short @..api_idx_0002_3.l1   ; 0x1f37
    mov word [bp - 0x0002], 0        ; 0x1f39
@..api_idx_0002_3.l1:
    mov ax, word [bp - 0x0002]       ; 0x1f3e
    cmp ax, word [bp + 0x6]          ; 0x1f41
    jle short @..api_idx_0002_3.l2   ; 0x1f44
    mov ax, word [bp + 0x6]          ; 0x1f46
    mov word [bp - 0x0002], ax       ; 0x1f49
@..api_idx_0002_3.l2:
    mov ax, word [bp - 0x0002]       ; 0x1f4c
    inc ax                           ; 0x1f4f
    push ax                          ; 0x1f50
    call ds_dispatch_b7a9            ; 0x1f51
    pop cx                           ; 0x1f54
    mov cx, ax                       ; 0x1f55
    mov ax, word [bp + 0x6]          ; 0x1f57
    sub ax, cx                       ; 0x1f5a
    ret                              ; 0x1f5c
math_loc_1f5d:
    mov ax, 0                        ; 0x1f5d
    call ds_dispatch_f40b            ; 0x1f60
    mov ax, 0x2c                     ; 0x1f63
    imul word [bp + 0x6]             ; 0x1f66
    mov si, ax                       ; 0x1f69
    mov ax, word [bp + 0x4]          ; 0x1f6b
    shl ax, 1                        ; 0x1f6e
    mov bx, ax                       ; 0x1f70
    mov bx, word [bx - 0x7b7e]       ; 0x1f72
    cmp byte [bx + si + 0x2b], 0     ; 0x1f76
    je short @..local.l106           ; 0x1f7a
    mov al, byte [bx + si + 0x2b]    ; 0x1f7c
    cmp al, 1                        ; 0x1f7f
    jne short @..local.l107          ; 0x1f81
    mov ax, 3                        ; 0x1f83
    push ax                          ; 0x1f86
    call ds_dispatch_b7a9            ; 0x1f87
    pop cx                           ; 0x1f8a
    test ax, ax                      ; 0x1f8b
    jne short @..local.l107          ; 0x1f8d
@..local.l106:
    mov ax, 0                        ; 0x1f8f
    jmp short @..local.l108          ; 0x1f92
@..local.l107:
    mov ax, 1                        ; 0x1f94
@..local.l108:
    ret                              ; 0x1f97
api_idx_0002_4:
    mov ax, 0xfffe                   ; 0x1f98
    call ds_dispatch_f40b            ; 0x1f9b
    mov ax, 0x2c                     ; 0x1f9e
    imul word [bp + 0x6]             ; 0x1fa1
    mov si, ax                       ; 0x1fa4
    mov ax, word [bp + 0x4]          ; 0x1fa6
    shl ax, 1                        ; 0x1fa9
    mov bx, ax                       ; 0x1fab
    mov bx, word [bx - 0x7b7e]       ; 0x1fad
    mov al, byte [bx + si + 0x22]    ; 0x1fb1
    sub ah, ah                       ; 0x1fb4
    cmp ax, word [bp + 0xc]          ; 0x1fb6
    jge short @..api_idx_0002_4.l1   ; 0x1fb9
    push word [bp + 0x6]             ; 0x1fbb
    push word [bp + 0x4]             ; 0x1fbe
    call math_loc_1f5d               ; 0x1fc1
    add sp, byte 4                   ; 0x1fc4
    test ax, ax                      ; 0x1fc7
    je short @..local.l109           ; 0x1fc9
@..api_idx_0002_4.l1:
    ret                              ; 0x1fcb
@..local.l109:
    cmp word [bp + 0x4], byte 0      ; 0x1fcc
    jne short @..local.l110          ; 0x1fd0
    mov ax, api_idx_0002             ; 0x1fd2
    push ax                          ; 0x1fd5
    mov ax, word [data_8490]         ; 0x1fd6
    add ax, 0x9a                     ; 0x1fd9
    push ax                          ; 0x1fdc
    mov ax, 0x248                    ; 0x1fdd
    imul word [bp + 0x6]             ; 0x1fe0
    add ax, 0x5d9c                   ; 0x1fe3
    push ax                          ; 0x1fe6
    call ds_dispatch_fedc            ; 0x1fe7
    add sp, byte 6                   ; 0x1fea
@..local.l110:
    mov word [bp - 0x0002], 0        ; 0x1fed
    cmp word [bp + 0xa], byte 0      ; 0x1ff2
    je short @..local.l111           ; 0x1ff6
    mov ax, 0x64                     ; 0x1ff8
    push ax                          ; 0x1ffb
    call ds_dispatch_b7a9            ; 0x1ffc
    pop cx                           ; 0x1fff
    push ax                          ; 0x2000
    mov ax, word [bp + 0x4]          ; 0x2001
    shl ax, 1                        ; 0x2004
    mov bx, ax                       ; 0x2006
    mov bx, word [bx - 0x7b70]       ; 0x2008
    mov si, word [bp + 0xa]          ; 0x200c
    mov al, byte [bx + si + 0x9a]    ; 0x200f
    sub ah, ah                       ; 0x2013
    mov cx, ax                       ; 0x2015
    sub ax, word [bp + 0xe]          ; 0x2017
    mov cx, ax                       ; 0x201a
    pop ax                           ; 0x201c
    cmp ax, cx                       ; 0x201d
    jle short @..local.l113          ; 0x201f
@..local.l111:
    mov al, byte [bp + 0xc]          ; 0x2021
    push ax                          ; 0x2024
    mov ax, 0x2c                     ; 0x2025
    imul word [bp + 0x6]             ; 0x2028
    mov si, ax                       ; 0x202b
    mov ax, word [bp + 0x4]          ; 0x202d
    shl ax, 1                        ; 0x2030
    mov bx, ax                       ; 0x2032
    mov bx, word [bx - 0x7b7e]       ; 0x2034
    pop ax                           ; 0x2038
    mov byte [bx + si + 0x22], al    ; 0x2039
    cmp word [bp + 0xc], byte 3      ; 0x203c
    jl short @..local.l112           ; 0x2040
    push word [bp + 0x6]             ; 0x2042
    push word [bp + 0x4]             ; 0x2045
    call api_idx_0004_7              ; 0x2048
    add sp, byte 4                   ; 0x204b
    cmp word [bp + 0x4], byte 0      ; 0x204e
    jne short @..local.l112          ; 0x2052
    mov ax, 0x248                    ; 0x2054
    imul word [bp + 0x6]             ; 0x2057
    mov bx, ax                       ; 0x205a
    mov al, byte [bx + 0x5e2c]       ; 0x205c
    sub ah, ah                       ; 0x2060
    add ax, strict word 8            ; 0x2062
    mov word [bp - 0x0002], ax       ; 0x2065
@..local.l112:
    push word [bp - 0x0002]          ; 0x2068
    mov ax, 1                        ; 0x206b
    push ax                          ; 0x206e
    push word [bp + 0x8]             ; 0x206f
    push word [bp + 0x6]             ; 0x2072
    push word [bp + 0x4]             ; 0x2075
    call loc_1e35                    ; 0x2078
    add sp, byte 0x0a                ; 0x207b
    jmp short @..local.l114          ; 0x207e
@..local.l113:
    cmp word [bp + 0x12], byte 1     ; 0x2080
    jne short @..local.l114          ; 0x2084
    mov ax, 0                        ; 0x2086
    push ax                          ; 0x2089
    push ax                          ; 0x208a
    mov ax, 0xd8f                    ; 0x208b
    push ax                          ; 0x208e
    push word [bp + 0x6]             ; 0x208f
    push word [bp + 0x4]             ; 0x2092
    call loc_1e35                    ; 0x2095
    add sp, byte 0x0a                ; 0x2098
@..local.l114:
    ret                              ; 0x209b
api_idx_0006_2:
    mov ax, 0xfffa                   ; 0x209c
    call ds_dispatch_f40b            ; 0x209f
    mov ax, 0x2c                     ; 0x20a2
    imul word [bp + 0x6]             ; 0x20a5
    mov si, ax                       ; 0x20a8
    mov ax, word [bp + 0x4]          ; 0x20aa
    shl ax, 1                        ; 0x20ad
    mov bx, ax                       ; 0x20af
    mov bx, word [bx - 0x7b7e]       ; 0x20b1
    cmp byte [bx + si + 0x22], 2     ; 0x20b5
    jae short @..api_idx_0006_2.l1   ; 0x20b9
    push word [bp + 0x6]             ; 0x20bb
    push word [bp + 0x4]             ; 0x20be
    call math_loc_1f5d               ; 0x20c1
    add sp, byte 4                   ; 0x20c4
    test ax, ax                      ; 0x20c7
    je short @..local.l115           ; 0x20c9
@..api_idx_0006_2.l1:
    ret                              ; 0x20cb
@..local.l115:
    cmp word [bp + 0x4], byte 0      ; 0x20cc
    jne short @..local.l117          ; 0x20d0
    mov ax, api_idx_0002             ; 0x20d2
    push ax                          ; 0x20d5
    mov ax, word [data_8490]         ; 0x20d6
    add ax, 0x9a                     ; 0x20d9
    push ax                          ; 0x20dc
    mov ax, 0x248                    ; 0x20dd
    imul word [bp + 0x6]             ; 0x20e0
    add ax, 0x5d9c                   ; 0x20e3
    push ax                          ; 0x20e6
    call ds_dispatch_fedc            ; 0x20e7
    add sp, byte 6                   ; 0x20ea
    cmp word [bp + 0xa], byte 1      ; 0x20ed
    je short @..local.l116           ; 0x20f1
    cmp word [bp + 0xa], byte 7      ; 0x20f3
    jne short @..local.l117          ; 0x20f7
@..local.l116:
    mov ax, 0x248                    ; 0x20f9
    imul word [bp + 0x6]             ; 0x20fc
    mov bx, ax                       ; 0x20ff
    mov al, byte [bx + 0x5d83]       ; 0x2101
    sub ah, ah                       ; 0x2105
    mov cx, 2                        ; 0x2107
    cwd                              ; 0x210a
    idiv cx                          ; 0x210b
    sub word [bp + 0xe], ax          ; 0x210d
@..local.l117:
    push word [bp + 0x14]            ; 0x2110
    push word [bp + 0x12]            ; 0x2113
    push word [bp + 0x10]            ; 0x2116
    call ds_dispatch_d0ea            ; 0x2119
    add sp, byte 6                   ; 0x211c
    mov cx, ax                       ; 0x211f
    sub sp, byte 4                   ; 0x2121
    mov ax, sp                       ; 0x2124
    mov dx, ss                       ; 0x2126
    mov es, dx                       ; 0x2128
    mov si, cx                       ; 0x212a
    mov di, ax                       ; 0x212c
    movsw                            ; 0x212e
    movsw                            ; 0x212f
    call ds_dispatch_d0be            ; 0x2130
    add sp, byte 4                   ; 0x2133
    mov word [bp - 0x0006], ax       ; 0x2136
    push word [bp + 0xe]             ; 0x2139
    push word [bp + 0xa]             ; 0x213c
    push ax                          ; 0x213f
    push word [bp + 0x4]             ; 0x2140
    call api_idx_0002_3              ; 0x2143
    add sp, byte 8                   ; 0x2146
    mov word [bp - 0x0006], ax       ; 0x2149
    cmp ax, strict word 0            ; 0x214c
    jg short @..local.l118           ; 0x214f
    jmp near @..local.l124           ; 0x2151
@..local.l118:
    mov ax, 0x64                     ; 0x2154
    push ax                          ; 0x2157
    call ds_dispatch_b7a9            ; 0x2158
    pop cx                           ; 0x215b
    push ax                          ; 0x215c
    mov ax, word [bp + 0x4]          ; 0x215d
    shl ax, 1                        ; 0x2160
    mov bx, ax                       ; 0x2162
    mov bx, word [bx - 0x7b70]       ; 0x2164
    mov si, word [bp + 0xa]          ; 0x2168
    mov al, byte [bx + si + 0x9a]    ; 0x216b
    sub ah, ah                       ; 0x216f
    mov cx, ax                       ; 0x2171
    sub ax, word [bp + 0xe]          ; 0x2173
    mov cx, ax                       ; 0x2176
    pop ax                           ; 0x2178
    cmp ax, cx                       ; 0x2179
    jg short @..local.l119           ; 0x217b
    jmp near @..local.l124           ; 0x217d
@..local.l119:
    cmp word [bp + 0x14], strict word 0xff ; 0x2180
    jne short @..local.l120          ; 0x2185
    mov ax, 0x2c                     ; 0x2187
    imul word [bp + 0x6]             ; 0x218a
    add ax, word [bp + 0xc]          ; 0x218d
    mov si, ax                       ; 0x2190
    mov ax, word [bp + 0x4]          ; 0x2192
    shl ax, 1                        ; 0x2195
    mov bx, ax                       ; 0x2197
    mov bx, word [bx - 0x7b7e]       ; 0x2199
    mov byte [bx + si + 0xe], 0xff   ; 0x219d
    jmp short @..local.l122          ; 0x21a1
@..local.l120:
    mov ax, 0x2c                     ; 0x21a3
    imul word [bp + 0x6]             ; 0x21a6
    add ax, word [bp + 0xc]          ; 0x21a9
    mov si, ax                       ; 0x21ac
    mov ax, word [bp + 0x4]          ; 0x21ae
    shl ax, 1                        ; 0x21b1
    mov bx, ax                       ; 0x21b3
    mov bx, word [bx - 0x7b7e]       ; 0x21b5
    mov al, byte [bx + si + 0xe]     ; 0x21b9
    sub ah, ah                       ; 0x21bc
    add ax, word [bp - 0x0006]       ; 0x21be
    cmp ax, 0xfa                     ; 0x21c1
    jle short @..local.l121          ; 0x21c4
    mov byte [bx + si + 0xe], 0xfa   ; 0x21c6
    jmp short @..local.l122          ; 0x21ca
@..local.l121:
    mov al, byte [bp - 0x0006]       ; 0x21cc
    push ax                          ; 0x21cf
    mov ax, 0x2c                     ; 0x21d0
    imul word [bp + 0x6]             ; 0x21d3
    mov cx, ax                       ; 0x21d6
    add ax, word [bp + 0xc]          ; 0x21d8
    mov si, ax                       ; 0x21db
    mov ax, word [bp + 0x4]          ; 0x21dd
    shl ax, 1                        ; 0x21e0
    mov bx, ax                       ; 0x21e2
    mov bx, word [bx - 0x7b7e]       ; 0x21e4
    pop ax                           ; 0x21e8
    add byte [bx + si + 0xe], al     ; 0x21e9
@..local.l122:
    cmp word [bp + 0xc], byte 5      ; 0x21ec
    jne short @..local.l123          ; 0x21f0
    mov al, byte [bp + 0x14]         ; 0x21f2
    push ax                          ; 0x21f5
    mov ax, 0x2c                     ; 0x21f6
    imul word [bp + 0x6]             ; 0x21f9
    mov si, ax                       ; 0x21fc
    mov ax, word [bp + 0x4]          ; 0x21fe
    shl ax, 1                        ; 0x2201
    mov bx, ax                       ; 0x2203
    mov bx, word [bx - 0x7b7e]       ; 0x2205
    pop ax                           ; 0x2209
    mov byte [bx + si + 0x23], al    ; 0x220a
@..local.l123:
    mov ax, 0                        ; 0x220d
    push ax                          ; 0x2210
    mov ax, 1                        ; 0x2211
    push ax                          ; 0x2214
    push word [bp + 0x8]             ; 0x2215
    push word [bp + 0x6]             ; 0x2218
    push word [bp + 0x4]             ; 0x221b
    call loc_1e35                    ; 0x221e
    add sp, byte 0x0a                ; 0x2221
    jmp short @..local.l125          ; 0x2224
@..local.l124:
    cmp word [bp + 0x18], byte 1     ; 0x2226
    jne short @..local.l125          ; 0x222a
    mov ax, 0                        ; 0x222c
    push ax                          ; 0x222f
    push ax                          ; 0x2230
    mov ax, 0xd8f                    ; 0x2231
    push ax                          ; 0x2234
    push word [bp + 0x6]             ; 0x2235
    push word [bp + 0x4]             ; 0x2238
    call loc_1e35                    ; 0x223b
    add sp, byte 0x0a                ; 0x223e
@..local.l125:
    ret                              ; 0x2241
api_idx_0022:
    mov ax, 0xffde                   ; 0x2242
    call ds_dispatch_f40b            ; 0x2245
    mov word [data_91d6], 4          ; 0x2248
    mov ax, 0x2c                     ; 0x224e
    imul word [bp + 0x6]             ; 0x2251
    mov si, ax                       ; 0x2254
    mov ax, word [bp + 0x4]          ; 0x2256
    shl ax, 1                        ; 0x2259
    mov bx, ax                       ; 0x225b
    mov bx, word [bx - 0x7b7e]       ; 0x225d
    cmp byte [bx + si + 0x22], 3     ; 0x2261
    jae short @..api_idx_0022.l1     ; 0x2265
    push word [bp + 0x6]             ; 0x2267
    push word [bp + 0x4]             ; 0x226a
    call math_loc_1f5d               ; 0x226d
    add sp, byte 4                   ; 0x2270
    test ax, ax                      ; 0x2273
    je short @..local.l126           ; 0x2275
@..api_idx_0022.l1:
    mov ax, 0                        ; 0x2277
    ret                              ; 0x227a
@..local.l126:
    mov word [bp - 0x0002], 0        ; 0x227b
    mov ax, word [bp + 0xc]          ; 0x2280
    mov word [bp - 0x0006], ax       ; 0x2283
@..local.l127:
    cmp word [bp - 0x0006], byte 0   ; 0x2286
    jle short @..local.l130          ; 0x228a
    mov ax, word [bp + 0x8]          ; 0x228c
    mov word [bp - 0x0008], ax       ; 0x228f
@..local.l128:
    cmp word [bp - 0x0008], byte 0   ; 0x2292
    jle short @..local.l129          ; 0x2296
    push word [bp + 0xa]             ; 0x2298
    call ds_dispatch_b7a9            ; 0x229b
    pop cx                           ; 0x229e
    add ax, word [bp - 0x0002]       ; 0x229f
    inc ax                           ; 0x22a2
    mov word [bp - 0x0002], ax       ; 0x22a3
    dec word [bp - 0x0008]           ; 0x22a6
    jmp short @..local.l128          ; 0x22a9
@..local.l129:
    dec word [bp - 0x0006]           ; 0x22ab
    jmp short @..local.l127          ; 0x22ae
@..local.l130:
    cmp word [bp + 0x4], byte 0      ; 0x22b0
    jne short @..local.l131          ; 0x22b4
    mov ax, api_idx_0002             ; 0x22b6
    push ax                          ; 0x22b9
    mov ax, word [data_8490]         ; 0x22ba
    add ax, 0x9a                     ; 0x22bd
    push ax                          ; 0x22c0
    mov ax, 0x248                    ; 0x22c1
    imul word [bp + 0x6]             ; 0x22c4
    add ax, 0x5d9c                   ; 0x22c7
    push ax                          ; 0x22ca
    call ds_dispatch_fedc            ; 0x22cb
    add sp, byte 6                   ; 0x22ce
@..local.l131:
    mov ax, 0x64                     ; 0x22d1
    push ax                          ; 0x22d4
    call ds_dispatch_b7a9            ; 0x22d5
    pop cx                           ; 0x22d8
    push ax                          ; 0x22d9
    mov ax, word [bp + 0x4]          ; 0x22da
    shl ax, 1                        ; 0x22dd
    mov bx, ax                       ; 0x22df
    mov bx, word [bx - 0x7b70]       ; 0x22e1
    mov si, word [bp + 0xe]          ; 0x22e5
    mov al, byte [bx + si + 0x9a]    ; 0x22e8
    sub ah, ah                       ; 0x22ec
    mov cx, ax                       ; 0x22ee
    sub ax, word [bp + 0x10]         ; 0x22f0
    mov cx, ax                       ; 0x22f3
    pop ax                           ; 0x22f5
    cmp ax, cx                       ; 0x22f6
    jle short @..local.l132          ; 0x22f8
    push word [bp + 0x10]            ; 0x22fa
    push si                          ; 0x22fd
    push word [bp - 0x0002]          ; 0x22fe
    push word [bp + 0x4]             ; 0x2301
    call api_idx_0002_3              ; 0x2304
    add sp, byte 8                   ; 0x2307
    mov word [bp - 0x0002], ax       ; 0x230a
    jmp short @..local.l133          ; 0x230d
@..local.l132:
    mov word [bp - 0x0002], 0        ; 0x230f
@..local.l133:
    mov ax, 4                        ; 0x2314
    push ax                          ; 0x2317
    mov ax, 2                        ; 0x2318
    push ax                          ; 0x231b
    call api_idx_0004_6              ; 0x231c
    add sp, byte 4                   ; 0x231f
    push word [bp + 0x6]             ; 0x2322
    push word [bp + 0x4]             ; 0x2325
    mov ax, 0x90e6                   ; 0x2328
    push ax                          ; 0x232b
    call math_loc_15ab               ; 0x232c
    add sp, byte 6                   ; 0x232f
    mov ax, 2                        ; 0x2332
    push ax                          ; 0x2335
    mov ax, 0x43                     ; 0x2336
    cmp word [bp + 0x4], byte 0      ; 0x2339
    jne short @..local.l134          ; 0x233d
    mov ax, 1                        ; 0x233f
@..local.l134:
    push ax                          ; 0x2342
    mov ax, 0x90e6                   ; 0x2343
    push ax                          ; 0x2346
    call api_idx_0002_2              ; 0x2347
    add sp, byte 6                   ; 0x234a
    cmp word [bp - 0x0002], byte 0   ; 0x234d
    jg short @..local.l135           ; 0x2351
    jmp near @..local.l140           ; 0x2353
@..local.l135:
    mov ax, 3                        ; 0x2356
    push ax                          ; 0x2359
    mov ax, 0x16                     ; 0x235a
    push ax                          ; 0x235d
    mov ax, 0xce6                    ; 0x235e
    push ax                          ; 0x2361
    call api_idx_0050                ; 0x2362
    add sp, byte 6                   ; 0x2365
    mov ax, 4                        ; 0x2368
    push ax                          ; 0x236b
    call api_idx_0004_5              ; 0x236c
    pop cx                           ; 0x236f
    mov ax, 0x90e6                   ; 0x2370
    push ax                          ; 0x2373
    push word [bp - 0x0002]          ; 0x2374
    call ds_dispatch_b27d            ; 0x2377
    add sp, byte 4                   ; 0x237a
    mov ax, data_9136                ; 0x237d
    push ax                          ; 0x2380
    mov ax, 0xced                    ; 0x2381
    push ax                          ; 0x2384
    call ds_dispatch_b53b            ; 0x2385
    add sp, byte 4                   ; 0x2388
    mov byte [data_9186], 0          ; 0x238b
    mov ax, 0x41                     ; 0x2390
    push ax                          ; 0x2393
    push ax                          ; 0x2394
    push ax                          ; 0x2395
    mov ax, data_9186                ; 0x2396
    push ax                          ; 0x2399
    mov ax, data_9136                ; 0x239a
    push ax                          ; 0x239d
    mov ax, 0x90e6                   ; 0x239e
    push ax                          ; 0x23a1
    mov ax, 4                        ; 0x23a2
    push ax                          ; 0x23a5
    call api_idx_0004_4              ; 0x23a6
    add sp, byte 0x0e                ; 0x23a9
    mov ax, word [bp - 0x0002]       ; 0x23ac
    push ax                          ; 0x23af
    mov ax, 0x2c                     ; 0x23b0
    imul word [bp + 0x6]             ; 0x23b3
    mov si, ax                       ; 0x23b6
    mov ax, word [bp + 0x4]          ; 0x23b8
    shl ax, 1                        ; 0x23bb
    mov bx, ax                       ; 0x23bd
    mov bx, word [bx - 0x7b7e]       ; 0x23bf
    pop ax                           ; 0x23c3
    sub word [bx + si + 0x2], ax     ; 0x23c4
    mov ax, 0x2c                     ; 0x23c7
    imul word [bp + 0x6]             ; 0x23ca
    mov si, ax                       ; 0x23cd
    mov ax, word [bp + 0x4]          ; 0x23cf
    shl ax, 1                        ; 0x23d2
    mov bx, ax                       ; 0x23d4
    mov bx, word [bx - 0x7b7e]       ; 0x23d6
    mov byte [bx + si + 0x10], 0     ; 0x23da
    mov ax, 3                        ; 0x23de
    push ax                          ; 0x23e1
    call ds_dispatch_b7a9            ; 0x23e2
    pop cx                           ; 0x23e5
    mov cx, ax                       ; 0x23e6
    inc ax                           ; 0x23e8
    inc ax                           ; 0x23e9
    mov cx, ax                       ; 0x23ea
    mov ax, 0x2c                     ; 0x23ec
    imul word [bp + 0x6]             ; 0x23ef
    mov si, ax                       ; 0x23f2
    mov ax, word [bp + 0x4]          ; 0x23f4
    shl ax, 1                        ; 0x23f7
    mov bx, ax                       ; 0x23f9
    mov bx, word [bx - 0x7b7e]       ; 0x23fb
    mov al, byte [bx + si + 0x11]    ; 0x23ff
    sub ah, ah                       ; 0x2402
    sub ax, cx                       ; 0x2404
    mov word [bp - 0x000e], ax       ; 0x2406
    cmp ax, strict word 0            ; 0x2409
    jge short @..local.l136          ; 0x240c
    mov word [bp - 0x000e], 0        ; 0x240e
@..local.l136:
    mov al, byte [bp - 0x000e]       ; 0x2413
    mov byte [bx + si + 0x11], al    ; 0x2416
    mov ax, 0x2c                     ; 0x2419
    imul word [bp + 0x6]             ; 0x241c
    mov si, ax                       ; 0x241f
    mov ax, word [bp + 0x4]          ; 0x2421
    shl ax, 1                        ; 0x2424
    mov bx, ax                       ; 0x2426
    mov bx, word [bx - 0x7b7e]       ; 0x2428
    cmp word [bx + si + 0x2], byte 0 ; 0x242c
    jg short @..local.l137           ; 0x2430
    mov ax, word [data_9058]         ; 0x2432
    mov cx, 2                        ; 0x2435
    cwd                              ; 0x2438
    idiv cx                          ; 0x2439
    push ax                          ; 0x243b
    call api_idx_0004_5              ; 0x243c
    pop cx                           ; 0x243f
    mov ax, 0                        ; 0x2440
    push ax                          ; 0x2443
    mov ax, 0xd50                    ; 0x2444
    push ax                          ; 0x2447
    mov ax, 0                        ; 0x2448
    push ax                          ; 0x244b
    mov ax, 3                        ; 0x244c
    push ax                          ; 0x244f
    mov ax, 0                        ; 0x2450
    push ax                          ; 0x2453
    mov ax, 0xd9e                    ; 0x2454
    push ax                          ; 0x2457
    push word [bp + 0x6]             ; 0x2458
    push word [bp + 0x4]             ; 0x245b
    call api_idx_0002_4              ; 0x245e
    add sp, byte 0x10                ; 0x2461
    jmp short @..local.l139          ; 0x2464
@..local.l137:
    cmp word [bp + 0x4], byte 0      ; 0x2466
    jne short @..local.l138          ; 0x246a
    mov ax, 0x248                    ; 0x246c
    imul word [bp + 0x6]             ; 0x246f
    mov bx, ax                       ; 0x2472
    mov al, byte [bx + 0x5e2c]       ; 0x2474
    sub ah, ah                       ; 0x2478
    inc ax                           ; 0x247a
    inc ax                           ; 0x247b
    push ax                          ; 0x247c
    call ds_dispatch_b7e0            ; 0x247d
    pop cx                           ; 0x2480
    mov ax, 1                        ; 0x2481
    push ax                          ; 0x2484
    push word [bp + 0x6]             ; 0x2485
    call api_idx_0004_2              ; 0x2488
    add sp, byte 4                   ; 0x248b
@..local.l138:
    mov ax, word [data_9058]         ; 0x248e
    mov cx, 2                        ; 0x2491
    cwd                              ; 0x2494
    idiv cx                          ; 0x2495
    push ax                          ; 0x2497
    call api_idx_0004_5              ; 0x2498
    pop cx                           ; 0x249b
@..local.l139:
    jmp short @..local.l141          ; 0x249c
@..local.l140:
    mov ax, 3                        ; 0x249e
    push ax                          ; 0x24a1
    mov ax, 0x41                     ; 0x24a2
    push ax                          ; 0x24a5
    mov ax, 0xcee                    ; 0x24a6
    push ax                          ; 0x24a9
    call api_idx_0050                ; 0x24aa
    add sp, byte 6                   ; 0x24ad
@..local.l141:
    mov ax, word [data_9058]         ; 0x24b0
    mov cx, 2                        ; 0x24b3
    cwd                              ; 0x24b6
    idiv cx                          ; 0x24b7
    push ax                          ; 0x24b9
    call api_idx_0004_5              ; 0x24ba
    pop cx                           ; 0x24bd
    mov ax, word [bp - 0x0002]       ; 0x24be
    ret                              ; 0x24c1
math_loc_24c2:
    mov ax, 0                        ; 0x24c2
    call ds_dispatch_f40b            ; 0x24c5
    mov ax, 4                        ; 0x24c8
    push ax                          ; 0x24cb
    mov ax, 2                        ; 0x24cc
    push ax                          ; 0x24cf
    call api_idx_0004_6              ; 0x24d0
    add sp, byte 4                   ; 0x24d3
    mov ax, 2                        ; 0x24d6
    push ax                          ; 0x24d9
    mov ax, 0x41                     ; 0x24da
    push ax                          ; 0x24dd
    push word [bp + 0x4]             ; 0x24de
    call api_idx_0050                ; 0x24e1
    add sp, byte 6                   ; 0x24e4
    push word [data_9058]            ; 0x24e7
    call api_idx_0004_5              ; 0x24eb
    pop cx                           ; 0x24ee
    ret                              ; 0x24ef
api_idx_0004_8:
    mov ax, 0xfffc                   ; 0x24f0
    call ds_dispatch_f40b            ; 0x24f3
    mov ax, word [bp + 0x4]          ; 0x24f6
    shl ax, 1                        ; 0x24f9
    mov bx, ax                       ; 0x24fb
    mov bx, word [bx - 0x7b7e]       ; 0x24fd
    mov si, word [bp + 0x6]          ; 0x2501
    mov al, byte [bx + si + 0x18c]   ; 0x2504
    sub ah, ah                       ; 0x2508
    mov word [bp - 0x0002], ax       ; 0x250a
    push word [bp + 0xa]             ; 0x250d
    call ds_dispatch_b7a9            ; 0x2510
    pop cx                           ; 0x2513
    mov cx, ax                       ; 0x2514
    mov ax, word [bp - 0x0002]       ; 0x2516
    cmp cx, ax                       ; 0x2519
    jge short @..api_idx_0004_8.l2   ; 0x251b
    mov bx, word [bp + 0x8]          ; 0x251d
    imul bx                          ; 0x2520
    mov cx, 0x64                     ; 0x2522
    mov bx, 0                        ; 0x2525
    call ds_dispatch_f99f            ; 0x2528
    mov word [bp - 0x0004], ax       ; 0x252b
@..api_idx_0004_8.l1:
    cmp word [bp - 0x0004], byte 0   ; 0x252e
    jle short @..api_idx_0004_8.l2   ; 0x2532
    mov ax, 2                        ; 0x2534
    push ax                          ; 0x2537
    call ds_dispatch_b7a9            ; 0x2538
    pop cx                           ; 0x253b
    sub word [bp + 0x8], ax          ; 0x253c
    dec word [bp - 0x0004]           ; 0x253f
    jmp short @..api_idx_0004_8.l1   ; 0x2542
@..api_idx_0004_8.l2:
    cmp word [bp + 0x8], byte 1      ; 0x2544
    jge short @..api_idx_0004_8.l3   ; 0x2548
    mov word [bp + 0x8], 1           ; 0x254a
@..api_idx_0004_8.l3:
    mov ax, word [bp + 0x8]          ; 0x254f
    ret                              ; 0x2552
loc_2553:
    mov ax, 0                        ; 0x2553
    call ds_dispatch_f40b            ; 0x2556
    mov ax, word [bp + 0x6]          ; 0x2559
    jmp short @..local.l145          ; 0x255c
@..local.l142:
    mov ax, 0xa                      ; 0x255e
    push ax                          ; 0x2561
    push word [bp + 0x8]             ; 0x2562
    mov ax, 0                        ; 0x2565
    push ax                          ; 0x2568
    push word [bp + 0x4]             ; 0x2569
    call api_idx_0004_8              ; 0x256c
    add sp, byte 8                   ; 0x256f
    mov word [bp + 0x8], ax          ; 0x2572
    jmp short @..local.l146          ; 0x2575
@..local.l143:
    mov ax, 0xa                      ; 0x2577
    push ax                          ; 0x257a
    push word [bp + 0x8]             ; 0x257b
    mov ax, 1                        ; 0x257e
    push ax                          ; 0x2581
    push word [bp + 0x4]             ; 0x2582
    call api_idx_0004_8              ; 0x2585
    add sp, byte 8                   ; 0x2588
    mov word [bp + 0x8], ax          ; 0x258b
    jmp short @..local.l146          ; 0x258e
@..local.l144:
    mov ax, 0xa                      ; 0x2590
    push ax                          ; 0x2593
    push word [bp + 0x8]             ; 0x2594
    mov ax, 3                        ; 0x2597
    push ax                          ; 0x259a
    push word [bp + 0x4]             ; 0x259b
    call api_idx_0004_8              ; 0x259e
    add sp, byte 8                   ; 0x25a1
    mov word [bp + 0x8], ax          ; 0x25a4
    jmp short @..local.l146          ; 0x25a7
@..local.l145:
    cmp ax, strict word 1            ; 0x25a9
    je short @..local.l142           ; 0x25ac
    cmp ax, strict word 3            ; 0x25ae
    je short @..local.l143           ; 0x25b1
    cmp ax, strict word 5            ; 0x25b3
    je short @..local.l144           ; 0x25b6
@..local.l146:
    mov ax, 0xa                      ; 0x25b8
    push ax                          ; 0x25bb
    push word [bp + 0x8]             ; 0x25bc
    mov ax, 4                        ; 0x25bf
    push ax                          ; 0x25c2
    push word [bp + 0x4]             ; 0x25c3
    call api_idx_0004_8              ; 0x25c6
    add sp, byte 8                   ; 0x25c9
    mov word [bp + 0x8], ax          ; 0x25cc
    ret                              ; 0x25cf
api_idx_0006_3:
    mov ax, 0xfffa                   ; 0x25d0
    call ds_dispatch_f40b            ; 0x25d3
    cmp word [bp + 0x6], byte 0      ; 0x25d6
    jl short @..api_idx_0006_3.l1    ; 0x25da
    mov ax, word [bp + 0x6]          ; 0x25dc
    mov bx, word [bp + 0x8]          ; 0x25df
    mov word [bx], ax                ; 0x25e2
    mov bx, word [bp + 0xa]          ; 0x25e4
    mov word [bx], 1                 ; 0x25e7
    jmp near @..api_idx_0006_3.l6    ; 0x25eb
@..api_idx_0006_3.l1:
    mov ax, word [bp + 0x4]          ; 0x25ee
    shl ax, 1                        ; 0x25f1
    mov bx, ax                       ; 0x25f3
    mov bx, word [bx - 0x7b7e]       ; 0x25f5
    mov al, byte [bx + 0x1a1]        ; 0x25f9
    sub ah, ah                       ; 0x25fd
    mov word [bp - 0x0002], ax       ; 0x25ff
    mov ax, word [bp + 0x6]          ; 0x2602
    push ax                          ; 0x2605
    cmp ax, strict word 0            ; 0x2606
    pop ax                           ; 0x2609
    jge short @..api_idx_0006_3.l2   ; 0x260a
    neg ax                           ; 0x260c
@..api_idx_0006_3.l2:
    mov word [bp - 0x0004], ax       ; 0x260e
    cmp ax, word [bp - 0x0002]       ; 0x2611
    jle short @..api_idx_0006_3.l3   ; 0x2614
    mov ax, word [bp - 0x0002]       ; 0x2616
    mov word [bp - 0x0004], ax       ; 0x2619
@..api_idx_0006_3.l3:
    mov ax, word [bp - 0x0002]       ; 0x261c
    sub ax, word [bp - 0x0004]       ; 0x261f
    push ax                          ; 0x2622
    call ds_dispatch_b7a9            ; 0x2623
    pop cx                           ; 0x2626
    mov word [bp - 0x0006], ax       ; 0x2627
@..api_idx_0006_3.l4:
    cmp word [bp - 0x0006], byte 0   ; 0x262a
    jle short @..api_idx_0006_3.l5   ; 0x262e
    mov ax, 0x2c                     ; 0x2630
    imul word [bp - 0x0006]          ; 0x2633
    mov si, ax                       ; 0x2636
    mov ax, word [bp + 0x4]          ; 0x2638
    shl ax, 1                        ; 0x263b
    mov bx, ax                       ; 0x263d
    mov bx, word [bx - 0x7b7e]       ; 0x263f
    cmp byte [bx + si + 0x22], 3     ; 0x2643
    jne short @..api_idx_0006_3.l5   ; 0x2647
    dec word [bp - 0x0006]           ; 0x2649
    jmp short @..api_idx_0006_3.l4   ; 0x264c
@..api_idx_0006_3.l5:
    mov ax, word [bp - 0x0006]       ; 0x264e
    mov bx, word [bp + 0x8]          ; 0x2651
    mov word [bx], ax                ; 0x2654
    mov ax, word [bp - 0x0004]       ; 0x2656
    mov bx, word [bp + 0xa]          ; 0x2659
    mov word [bx], ax                ; 0x265c
@..api_idx_0006_3.l6:
    ret                              ; 0x265e
api_idx_0010:
    mov ax, 0xfff0                   ; 0x265f
    call ds_dispatch_f40b            ; 0x2662
    cmp word [bp + 0x8], byte 0      ; 0x2665
    jle short @..api_idx_0010.l1     ; 0x2669
    push word [bp + 0x8]             ; 0x266b
    push word [bp + 0xe]             ; 0x266e
    push word [bp + 0x4]             ; 0x2671
    call loc_2553                    ; 0x2674
    add sp, byte 6                   ; 0x2677
    mov word [bp - 0x0008], ax       ; 0x267a
    jmp short @..api_idx_0010.l2     ; 0x267d
@..api_idx_0010.l1:
    mov ax, word [bp + 0x8]          ; 0x267f
    mov word [bp - 0x0008], ax       ; 0x2682
@..api_idx_0010.l2:
    cmp word [bp + 0xa], byte 0      ; 0x2685
    jle short @..api_idx_0010.l3     ; 0x2689
    push word [bp + 0xa]             ; 0x268b
    push word [bp + 0xe]             ; 0x268e
    push word [bp + 0x4]             ; 0x2691
    call loc_2553                    ; 0x2694
    add sp, byte 6                   ; 0x2697
    mov word [bp - 0x000a], ax       ; 0x269a
    jmp short @..api_idx_0010.l4     ; 0x269d
@..api_idx_0010.l3:
    mov ax, word [bp + 0xa]          ; 0x269f
    mov word [bp - 0x000a], ax       ; 0x26a2
@..api_idx_0010.l4:
    mov ax, word [bp - 0x0008]       ; 0x26a5
    cmp ax, word [bp + 0x8]          ; 0x26a8
    jne short @..api_idx_0010.l5     ; 0x26ab
    mov ax, word [bp - 0x000a]       ; 0x26ad
    cmp ax, word [bp + 0xa]          ; 0x26b0
    je short @..api_idx_0010.l6      ; 0x26b3
@..api_idx_0010.l5:
    mov ax, 0xc8d                    ; 0x26b5
    push ax                          ; 0x26b8
    call math_loc_24c2               ; 0x26b9
    pop cx                           ; 0x26bc
@..api_idx_0010.l6:
    lea ax, word [bp - 0x0004]       ; 0x26bd
    push ax                          ; 0x26c0
    lea ax, word [bp - 0x0006]       ; 0x26c1
    push ax                          ; 0x26c4
    push word [bp + 0x6]             ; 0x26c5
    push word [bp + 0x4]             ; 0x26c8
    call api_idx_0006_3              ; 0x26cb
    add sp, byte 8                   ; 0x26ce
    mov word [data_91d6], 4          ; 0x26d1
    mov ax, word [bp - 0x0006]       ; 0x26d7
    mov word [bp - 0x0002], ax       ; 0x26da
    jmp near @..local.l151           ; 0x26dd
@..api_idx_0010.l7:
    cmp word [bp + 0x4], byte 0      ; 0x26e0
    jne short @..api_idx_0010.l8     ; 0x26e4
    mov ax, api_idx_0002             ; 0x26e6
    push ax                          ; 0x26e9
    mov ax, word [data_8490]         ; 0x26ea
    add ax, 0x9a                     ; 0x26ed
    push ax                          ; 0x26f0
    mov ax, 0x248                    ; 0x26f1
    imul word [bp - 0x0002]          ; 0x26f4
    add ax, 0x5d9c                   ; 0x26f7
    push ax                          ; 0x26fa
    call ds_dispatch_fedc            ; 0x26fb
    add sp, byte 6                   ; 0x26fe
@..api_idx_0010.l8:
    mov ax, 0x2c                     ; 0x2701
    imul word [bp - 0x0002]          ; 0x2704
    mov si, ax                       ; 0x2707
    mov ax, word [bp + 0x4]          ; 0x2709
    shl ax, 1                        ; 0x270c
    mov bx, ax                       ; 0x270e
    mov bx, word [bx - 0x7b7e]       ; 0x2710
    cmp byte [bx + si + 0x22], 3     ; 0x2714
    jb short @..api_idx_0010.l9      ; 0x2718
    jmp near @..local.l150           ; 0x271a
@..api_idx_0010.l9:
    push word [bp - 0x0002]          ; 0x271d
    push word [bp + 0x4]             ; 0x2720
    call math_loc_1f5d               ; 0x2723
    add sp, byte 4                   ; 0x2726
    test ax, ax                      ; 0x2729
    je short @..api_idx_0010.l10     ; 0x272b
    jmp near @..local.l150           ; 0x272d
@..api_idx_0010.l10:
    mov word [bp - 0x000c], 0        ; 0x2730
    mov ax, word [bp + 0xc]          ; 0x2735
    mov word [bp - 0x0010], ax       ; 0x2738
@..api_idx_0010.l11:
    cmp word [bp - 0x0010], byte 0   ; 0x273b
    jle short @..api_idx_0010.l14    ; 0x273f
    mov ax, word [bp - 0x0008]       ; 0x2741
    mov word [bp - 0x000e], ax       ; 0x2744
@..api_idx_0010.l12:
    cmp word [bp - 0x000e], byte 0   ; 0x2747
    jle short @..api_idx_0010.l13    ; 0x274b
    push word [bp - 0x000a]          ; 0x274d
    call ds_dispatch_b7a9            ; 0x2750
    pop cx                           ; 0x2753
    add ax, word [bp - 0x000c]       ; 0x2754
    inc ax                           ; 0x2757
    mov word [bp - 0x000c], ax       ; 0x2758
    dec word [bp - 0x000e]           ; 0x275b
    jmp short @..api_idx_0010.l12    ; 0x275e
@..api_idx_0010.l13:
    dec word [bp - 0x0010]           ; 0x2760
    jmp short @..api_idx_0010.l11    ; 0x2763
@..api_idx_0010.l14:
    mov ax, 0x64                     ; 0x2765
    push ax                          ; 0x2768
    call ds_dispatch_b7a9            ; 0x2769
    pop cx                           ; 0x276c
    push ax                          ; 0x276d
    mov ax, word [bp + 0x4]          ; 0x276e
    shl ax, 1                        ; 0x2771
    mov bx, ax                       ; 0x2773
    mov bx, word [bx - 0x7b70]       ; 0x2775
    mov si, word [bp + 0xe]          ; 0x2779
    mov al, byte [bx + si + 0x9a]    ; 0x277c
    sub ah, ah                       ; 0x2780
    mov cx, ax                       ; 0x2782
    sub ax, word [bp + 0x10]         ; 0x2784
    mov cx, ax                       ; 0x2787
    pop ax                           ; 0x2789
    cmp ax, cx                       ; 0x278a
    jle short @..api_idx_0010.l15    ; 0x278c
    push word [bp + 0x10]            ; 0x278e
    push si                          ; 0x2791
    push word [bp - 0x000c]          ; 0x2792
    push word [bp + 0x4]             ; 0x2795
    call api_idx_0002_3              ; 0x2798
    add sp, byte 8                   ; 0x279b
    mov word [bp - 0x000c], ax       ; 0x279e
    jmp short @..api_idx_0010.l16    ; 0x27a1
@..api_idx_0010.l15:
    mov word [bp - 0x000c], 0        ; 0x27a3
@..api_idx_0010.l16:
    mov ax, 4                        ; 0x27a8
    push ax                          ; 0x27ab
    mov ax, 2                        ; 0x27ac
    push ax                          ; 0x27af
    call api_idx_0004_6              ; 0x27b0
    add sp, byte 4                   ; 0x27b3
    push word [bp - 0x0002]          ; 0x27b6
    push word [bp + 0x4]             ; 0x27b9
    mov ax, 0x90e6                   ; 0x27bc
    push ax                          ; 0x27bf
    call math_loc_15ab               ; 0x27c0
    add sp, byte 6                   ; 0x27c3
    mov ax, 2                        ; 0x27c6
    push ax                          ; 0x27c9
    mov ax, 0x43                     ; 0x27ca
    cmp word [bp + 0x4], byte 0      ; 0x27cd
    jne short @..api_idx_0010.l17    ; 0x27d1
    mov ax, 1                        ; 0x27d3
@..api_idx_0010.l17:
    push ax                          ; 0x27d6
    mov ax, 0x90e6                   ; 0x27d7
    push ax                          ; 0x27da
    call api_idx_0002_2              ; 0x27db
    add sp, byte 6                   ; 0x27de
    cmp word [bp - 0x000c], byte 0   ; 0x27e1
    jg short @..api_idx_0010.l18     ; 0x27e5
    jmp near @..local.l148           ; 0x27e7
@..api_idx_0010.l18:
    mov ax, 3                        ; 0x27ea
    push ax                          ; 0x27ed
    mov ax, 0x41                     ; 0x27ee
    push ax                          ; 0x27f1
    mov ax, 0xea6                    ; 0x27f2
    push ax                          ; 0x27f5
    call api_idx_0050                ; 0x27f6
    add sp, byte 6                   ; 0x27f9
    mov ax, 4                        ; 0x27fc
    push ax                          ; 0x27ff
    call api_idx_0004_5              ; 0x2800
    pop cx                           ; 0x2803
    mov ax, data_9136                ; 0x2804
    push ax                          ; 0x2807
    push word [bp - 0x000c]          ; 0x2808
    call ds_dispatch_b27d            ; 0x280b
    add sp, byte 4                   ; 0x280e
    mov ax, 0x90e6                   ; 0x2811
    push ax                          ; 0x2814
    mov ax, 0xea7                    ; 0x2815
    push ax                          ; 0x2818
    call ds_dispatch_b53b            ; 0x2819
    add sp, byte 4                   ; 0x281c
    mov ax, 0x24                     ; 0x281f
    push ax                          ; 0x2822
    mov ax, data_9136                ; 0x2823
    push ax                          ; 0x2826
    mov ax, 0x90e6                   ; 0x2827
    push ax                          ; 0x282a
    call ds_dispatch_b300            ; 0x282b
    add sp, byte 6                   ; 0x282e
    mov byte [data_9136], 0          ; 0x2831
    mov byte [data_9186], 0          ; 0x2836
    mov ax, 0x41                     ; 0x283b
    push ax                          ; 0x283e
    push ax                          ; 0x283f
    push ax                          ; 0x2840
    mov ax, data_9186                ; 0x2841
    push ax                          ; 0x2844
    mov ax, data_9136                ; 0x2845
    push ax                          ; 0x2848
    mov ax, 0x90e6                   ; 0x2849
    push ax                          ; 0x284c
    mov ax, 4                        ; 0x284d
    push ax                          ; 0x2850
    call api_idx_0004_4              ; 0x2851
    add sp, byte 0x0e                ; 0x2854
    push word [bp - 0x000c]          ; 0x2857
    mov ax, 0x2c                     ; 0x285a
    imul word [bp - 0x0002]          ; 0x285d
    mov cx, ax                       ; 0x2860
    mov ax, word [bp + 0x4]          ; 0x2862
    shl ax, 1                        ; 0x2865
    mov bx, ax                       ; 0x2867
    mov ax, word [bx - 0x7b7e]       ; 0x2869
    add ax, cx                       ; 0x286d
    push ax                          ; 0x286f
    call loc_182b                    ; 0x2870
    add sp, byte 4                   ; 0x2873
    cmp word [bp + 0x4], byte 0      ; 0x2876
    jne short @..local.l147          ; 0x287a
    mov ax, 0x248                    ; 0x287c
    imul word [bp - 0x0002]          ; 0x287f
    mov bx, ax                       ; 0x2882
    mov al, byte [bx + 0x5e2c]       ; 0x2884
    sub ah, ah                       ; 0x2888
    add ax, strict word 8            ; 0x288a
    push ax                          ; 0x288d
    call ds_dispatch_b7e0            ; 0x288e
    pop cx                           ; 0x2891
    mov ax, 1                        ; 0x2892
    push ax                          ; 0x2895
    push word [bp - 0x0002]          ; 0x2896
    call api_idx_0004_2              ; 0x2899
    add sp, byte 4                   ; 0x289c
@..local.l147:
    mov ax, word [data_9058]         ; 0x289f
    mov cx, 2                        ; 0x28a2
    cwd                              ; 0x28a5
    idiv cx                          ; 0x28a6
    push ax                          ; 0x28a8
    call api_idx_0004_5              ; 0x28a9
    pop cx                           ; 0x28ac
    jmp short @..local.l149          ; 0x28ad
@..local.l148:
    mov ax, 3                        ; 0x28af
    push ax                          ; 0x28b2
    mov ax, 0x41                     ; 0x28b3
    push ax                          ; 0x28b6
    mov ax, 0xcee                    ; 0x28b7
    push ax                          ; 0x28ba
    call api_idx_0050                ; 0x28bb
    add sp, byte 6                   ; 0x28be
@..local.l149:
    mov ax, word [data_9058]         ; 0x28c1
    mov cx, 2                        ; 0x28c4
    cwd                              ; 0x28c7
    idiv cx                          ; 0x28c8
    push ax                          ; 0x28ca
    call api_idx_0004_5              ; 0x28cb
    pop cx                           ; 0x28ce
@..local.l150:
    inc word [bp - 0x0002]           ; 0x28cf
@..local.l151:
    mov ax, word [bp - 0x0006]       ; 0x28d2
    add ax, word [bp - 0x0004]       ; 0x28d5
    cmp ax, word [bp - 0x0002]       ; 0x28d8
    jle short @..local.l152          ; 0x28db
    jmp near @..api_idx_0010.l7      ; 0x28dd
@..local.l152:
    ret                              ; 0x28e0
api_idx_000a_3:
    mov ax, 0xfff6                   ; 0x28e1
    call ds_dispatch_f40b            ; 0x28e4
    cmp word [bp + 0x8], byte 0      ; 0x28e7
    jle short @..api_idx_000a_3.l1   ; 0x28eb
    push word [bp + 0x8]             ; 0x28ed
    push word [bp + 0xe]             ; 0x28f0
    push word [bp + 0x4]             ; 0x28f3
    call loc_2553                    ; 0x28f6
    add sp, byte 6                   ; 0x28f9
    mov word [bp - 0x0008], ax       ; 0x28fc
    jmp short @..api_idx_000a_3.l2   ; 0x28ff
@..api_idx_000a_3.l1:
    mov ax, word [bp + 0x8]          ; 0x2901
    mov word [bp - 0x0008], ax       ; 0x2904
@..api_idx_000a_3.l2:
    cmp word [bp + 0xa], byte 0      ; 0x2907
    jle short @..api_idx_000a_3.l3   ; 0x290b
    push word [bp + 0xa]             ; 0x290d
    push word [bp + 0xe]             ; 0x2910
    push word [bp + 0x4]             ; 0x2913
    call loc_2553                    ; 0x2916
    add sp, byte 6                   ; 0x2919
    mov word [bp - 0x000a], ax       ; 0x291c
    jmp short @..api_idx_000a_3.l4   ; 0x291f
@..api_idx_000a_3.l3:
    mov ax, word [bp + 0xa]          ; 0x2921
    mov word [bp - 0x000a], ax       ; 0x2924
@..api_idx_000a_3.l4:
    mov ax, word [bp - 0x0008]       ; 0x2927
    cmp ax, word [bp + 0x8]          ; 0x292a
    jne short @..api_idx_000a_3.l5   ; 0x292d
    mov ax, word [bp - 0x000a]       ; 0x292f
    cmp ax, word [bp + 0xa]          ; 0x2932
    je short @..api_idx_000a_3.l6    ; 0x2935
@..api_idx_000a_3.l5:
    mov ax, 0xc8d                    ; 0x2937
    push ax                          ; 0x293a
    call math_loc_24c2               ; 0x293b
    pop cx                           ; 0x293e
@..api_idx_000a_3.l6:
    lea ax, word [bp - 0x0004]       ; 0x293f
    push ax                          ; 0x2942
    lea ax, word [bp - 0x0006]       ; 0x2943
    push ax                          ; 0x2946
    push word [bp + 0x6]             ; 0x2947
    push word [bp + 0x4]             ; 0x294a
    call api_idx_0006_3              ; 0x294d
    add sp, byte 8                   ; 0x2950
    mov ax, word [bp - 0x0006]       ; 0x2953
    mov word [bp - 0x0002], ax       ; 0x2956
    jmp short @..api_idx_000a_3.l9   ; 0x2959
@..api_idx_000a_3.l7:
    push word [bp + 0x10]            ; 0x295b
    push word [bp + 0xe]             ; 0x295e
    push word [bp + 0xc]             ; 0x2961
    push word [bp - 0x000a]          ; 0x2964
    push word [bp - 0x0008]          ; 0x2967
    push word [bp - 0x0002]          ; 0x296a
    push word [bp + 0x4]             ; 0x296d
    call api_idx_0022                ; 0x2970
    add sp, byte 0x0e                ; 0x2973
    cmp word [bp + 0x4], byte 0      ; 0x2976
    jne short @..api_idx_000a_3.l8   ; 0x297a
    mov ax, 0                        ; 0x297c
    push ax                          ; 0x297f
    push word [bp - 0x0002]          ; 0x2980
    call api_idx_0004_2              ; 0x2983
    add sp, byte 4                   ; 0x2986
@..api_idx_000a_3.l8:
    inc word [bp - 0x0002]           ; 0x2989
@..api_idx_000a_3.l9:
    mov ax, word [bp - 0x0006]       ; 0x298c
    add ax, word [bp - 0x0004]       ; 0x298f
    cmp ax, word [bp - 0x0002]       ; 0x2992
    jg short @..api_idx_000a_3.l7    ; 0x2995
    ret                              ; 0x2997
api_idx_000a_4:
    mov ax, 0xfff6                   ; 0x2998
    call ds_dispatch_f40b            ; 0x299b
    mov word [data_91d6], 2          ; 0x299e
    cmp word [bp + 0x12], byte 0     ; 0x29a4
    jle short @..api_idx_000a_4.l1   ; 0x29a8
    push word [bp + 0x12]            ; 0x29aa
    push word [bp + 0xa]             ; 0x29ad
    push word [bp + 0x4]             ; 0x29b0
    call loc_2553                    ; 0x29b3
    add sp, byte 6                   ; 0x29b6
    mov word [bp - 0x0008], ax       ; 0x29b9
    jmp short @..api_idx_000a_4.l2   ; 0x29bc
@..api_idx_000a_4.l1:
    mov ax, word [bp + 0x12]         ; 0x29be
    mov word [bp - 0x0008], ax       ; 0x29c1
@..api_idx_000a_4.l2:
    cmp word [bp + 0x14], byte 0     ; 0x29c4
    jle short @..api_idx_000a_4.l3   ; 0x29c8
    push word [bp + 0x14]            ; 0x29ca
    push word [bp + 0xa]             ; 0x29cd
    push word [bp + 0x4]             ; 0x29d0
    call loc_2553                    ; 0x29d3
    add sp, byte 6                   ; 0x29d6
    mov word [bp - 0x000a], ax       ; 0x29d9
    jmp short @..api_idx_000a_4.l4   ; 0x29dc
@..api_idx_000a_4.l3:
    mov ax, word [bp + 0x14]         ; 0x29de
    mov word [bp - 0x000a], ax       ; 0x29e1
@..api_idx_000a_4.l4:
    mov ax, word [bp - 0x0008]       ; 0x29e4
    cmp ax, word [bp + 0x12]         ; 0x29e7
    jne short @..api_idx_000a_4.l5   ; 0x29ea
    mov ax, word [bp - 0x000a]       ; 0x29ec
    cmp ax, word [bp + 0x14]         ; 0x29ef
    je short @..api_idx_000a_4.l6    ; 0x29f2
@..api_idx_000a_4.l5:
    mov ax, 0xc8d                    ; 0x29f4
    push ax                          ; 0x29f7
    call math_loc_24c2               ; 0x29f8
    pop cx                           ; 0x29fb
@..api_idx_000a_4.l6:
    lea ax, word [bp - 0x0006]       ; 0x29fc
    push ax                          ; 0x29ff
    lea ax, word [bp - 0x0004]       ; 0x2a00
    push ax                          ; 0x2a03
    push word [bp + 0x6]             ; 0x2a04
    push word [bp + 0x4]             ; 0x2a07
    call api_idx_0006_3              ; 0x2a0a
    add sp, byte 8                   ; 0x2a0d
    mov ax, word [bp - 0x0004]       ; 0x2a10
    mov word [bp - 0x0002], ax       ; 0x2a13
    jmp short @..api_idx_000a_4.l11  ; 0x2a16
@..api_idx_000a_4.l7:
    cmp word [bp + 0x10], byte 1     ; 0x2a18
    jne short @..api_idx_000a_4.l8   ; 0x2a1c
    mov ax, 1                        ; 0x2a1e
    push ax                          ; 0x2a21
    mov ax, 0xd4a                    ; 0x2a22
    push ax                          ; 0x2a25
    push word [bp + 0xe]             ; 0x2a26
    push word [bp + 0xc]             ; 0x2a29
    push word [bp + 0xa]             ; 0x2a2c
    push word [bp + 0x8]             ; 0x2a2f
    push word [bp - 0x0002]          ; 0x2a32
    push word [bp + 0x4]             ; 0x2a35
    call api_idx_0002_4              ; 0x2a38
    add sp, byte 0x10                ; 0x2a3b
    jmp short @..api_idx_000a_4.l9   ; 0x2a3e
@..api_idx_000a_4.l8:
    mov ax, 1                        ; 0x2a40
    push ax                          ; 0x2a43
    mov ax, 0xd4a                    ; 0x2a44
    push ax                          ; 0x2a47
    push word [bp + 0x16]            ; 0x2a48
    push word [bp - 0x000a]          ; 0x2a4b
    push word [bp - 0x0008]          ; 0x2a4e
    push word [bp + 0xe]             ; 0x2a51
    push word [bp + 0xc]             ; 0x2a54
    push word [bp + 0xa]             ; 0x2a57
    push word [bp + 0x8]             ; 0x2a5a
    push word [bp - 0x0002]          ; 0x2a5d
    push word [bp + 0x4]             ; 0x2a60
    call api_idx_0006_2              ; 0x2a63
    add sp, byte 0x16                ; 0x2a66
@..api_idx_000a_4.l9:
    cmp word [bp + 0x4], byte 0      ; 0x2a69
    jne short @..api_idx_000a_4.l10  ; 0x2a6d
    mov ax, 0                        ; 0x2a6f
    push ax                          ; 0x2a72
    push word [bp - 0x0002]          ; 0x2a73
    call api_idx_0004_2              ; 0x2a76
    add sp, byte 4                   ; 0x2a79
@..api_idx_000a_4.l10:
    inc word [bp - 0x0002]           ; 0x2a7c
@..api_idx_000a_4.l11:
    mov ax, word [bp - 0x0004]       ; 0x2a7f
    add ax, word [bp - 0x0006]       ; 0x2a82
    cmp ax, word [bp - 0x0002]       ; 0x2a85
    jg short @..api_idx_000a_4.l7    ; 0x2a88
    ret                              ; 0x2a8a
api_idx_000e_4:
    mov ax, 0xfff2                   ; 0x2a8b
    call ds_dispatch_f40b            ; 0x2a8e
    mov word [data_91d6], 4          ; 0x2a91
    cmp word [bp + 0x10], byte 0     ; 0x2a97
    jle short @..api_idx_000e_4.l1   ; 0x2a9b
    push word [bp + 0x10]            ; 0x2a9d
    push word [bp + 0xa]             ; 0x2aa0
    push word [bp + 0x4]             ; 0x2aa3
    call loc_2553                    ; 0x2aa6
    add sp, byte 6                   ; 0x2aa9
    mov word [bp - 0x0008], ax       ; 0x2aac
    jmp short @..api_idx_000e_4.l2   ; 0x2aaf
@..api_idx_000e_4.l1:
    mov ax, word [bp + 0x10]         ; 0x2ab1
    mov word [bp - 0x0008], ax       ; 0x2ab4
@..api_idx_000e_4.l2:
    cmp word [bp + 0x12], byte 0     ; 0x2ab7
    jle short @..api_idx_000e_4.l3   ; 0x2abb
    push word [bp + 0x12]            ; 0x2abd
    push word [bp + 0xa]             ; 0x2ac0
    push word [bp + 0x4]             ; 0x2ac3
    call loc_2553                    ; 0x2ac6
    add sp, byte 6                   ; 0x2ac9
    mov word [bp - 0x000a], ax       ; 0x2acc
    jmp short @..api_idx_000e_4.l4   ; 0x2acf
@..api_idx_000e_4.l3:
    mov ax, word [bp + 0x12]         ; 0x2ad1
    mov word [bp - 0x000a], ax       ; 0x2ad4
@..api_idx_000e_4.l4:
    cmp word [bp + 0x18], byte 0     ; 0x2ad7
    jle short @..api_idx_000e_4.l5   ; 0x2adb
    push word [bp + 0x18]            ; 0x2add
    push word [bp + 0xa]             ; 0x2ae0
    push word [bp + 0x4]             ; 0x2ae3
    call loc_2553                    ; 0x2ae6
    add sp, byte 6                   ; 0x2ae9
    mov word [bp - 0x000c], ax       ; 0x2aec
    jmp short @..api_idx_000e_4.l6   ; 0x2aef
@..api_idx_000e_4.l5:
    mov ax, word [bp + 0x18]         ; 0x2af1
    mov word [bp - 0x000c], ax       ; 0x2af4
@..api_idx_000e_4.l6:
    cmp word [bp + 0x1a], byte 0     ; 0x2af7
    jle short @..api_idx_000e_4.l7   ; 0x2afb
    push word [bp + 0x1a]            ; 0x2afd
    push word [bp + 0xa]             ; 0x2b00
    push word [bp + 0x4]             ; 0x2b03
    call loc_2553                    ; 0x2b06
    add sp, byte 6                   ; 0x2b09
    mov word [bp - 0x000e], ax       ; 0x2b0c
    jmp short @..api_idx_000e_4.l8   ; 0x2b0f
@..api_idx_000e_4.l7:
    mov ax, word [bp + 0x1a]         ; 0x2b11
    mov word [bp - 0x000e], ax       ; 0x2b14
@..api_idx_000e_4.l8:
    mov ax, word [bp - 0x0008]       ; 0x2b17
    cmp ax, word [bp + 0x10]         ; 0x2b1a
    jne short @..api_idx_000e_4.l9   ; 0x2b1d
    mov ax, word [bp - 0x000a]       ; 0x2b1f
    cmp ax, word [bp + 0x12]         ; 0x2b22
    jne short @..api_idx_000e_4.l9   ; 0x2b25
    mov ax, word [bp - 0x000c]       ; 0x2b27
    cmp ax, word [bp + 0x18]         ; 0x2b2a
    jne short @..api_idx_000e_4.l9   ; 0x2b2d
    mov ax, word [bp - 0x000e]       ; 0x2b2f
    cmp ax, word [bp + 0x1a]         ; 0x2b32
    je short @..api_idx_000e_4.l10   ; 0x2b35
@..api_idx_000e_4.l9:
    mov ax, 0xc8d                    ; 0x2b37
    push ax                          ; 0x2b3a
    call math_loc_24c2               ; 0x2b3b
    pop cx                           ; 0x2b3e
@..api_idx_000e_4.l10:
    lea ax, word [bp - 0x0006]       ; 0x2b3f
    push ax                          ; 0x2b42
    lea ax, word [bp - 0x0004]       ; 0x2b43
    push ax                          ; 0x2b46
    push word [bp + 0x6]             ; 0x2b47
    push word [bp + 0x4]             ; 0x2b4a
    call api_idx_0006_3              ; 0x2b4d
    add sp, byte 8                   ; 0x2b50
    mov ax, word [bp - 0x0004]       ; 0x2b53
    mov word [bp - 0x0002], ax       ; 0x2b56
    jmp near @..api_idx_000e_4.l15   ; 0x2b59
@..api_idx_000e_4.l11:
    push word [bp + 0xe]             ; 0x2b5c
    push word [bp + 0xa]             ; 0x2b5f
    push word [bp + 0xc]             ; 0x2b62
    push word [bp - 0x000a]          ; 0x2b65
    push word [bp - 0x0008]          ; 0x2b68
    push word [bp - 0x0002]          ; 0x2b6b
    push word [bp + 0x4]             ; 0x2b6e
    call api_idx_0022                ; 0x2b71
    add sp, byte 0x0e                ; 0x2b74
    cmp ax, strict word 0            ; 0x2b77
    jle short @..api_idx_000e_4.l13  ; 0x2b7a
    cmp word [bp + 0x16], byte 1     ; 0x2b7c
    jne short @..api_idx_000e_4.l12  ; 0x2b80
    mov ax, 0                        ; 0x2b82
    push ax                          ; 0x2b85
    mov ax, 0xd50                    ; 0x2b86
    push ax                          ; 0x2b89
    push word [bp + 0xe]             ; 0x2b8a
    push word [bp + 0x14]            ; 0x2b8d
    push word [bp + 0xa]             ; 0x2b90
    push word [bp + 0x8]             ; 0x2b93
    push word [bp - 0x0002]          ; 0x2b96
    push word [bp + 0x4]             ; 0x2b99
    call api_idx_0002_4              ; 0x2b9c
    add sp, byte 0x10                ; 0x2b9f
    jmp short @..api_idx_000e_4.l13  ; 0x2ba2
@..api_idx_000e_4.l12:
    mov ax, 0                        ; 0x2ba4
    push ax                          ; 0x2ba7
    mov ax, 0xd50                    ; 0x2ba8
    push ax                          ; 0x2bab
    push word [bp + 0x1c]            ; 0x2bac
    push word [bp - 0x000e]          ; 0x2baf
    push word [bp - 0x000c]          ; 0x2bb2
    push word [bp + 0xe]             ; 0x2bb5
    push word [bp + 0x14]            ; 0x2bb8
    push word [bp + 0xa]             ; 0x2bbb
    push word [bp + 0x8]             ; 0x2bbe
    push word [bp - 0x0002]          ; 0x2bc1
    push word [bp + 0x4]             ; 0x2bc4
    call api_idx_0006_2              ; 0x2bc7
    add sp, byte 0x16                ; 0x2bca
@..api_idx_000e_4.l13:
    cmp word [bp + 0x4], byte 0      ; 0x2bcd
    jne short @..api_idx_000e_4.l14  ; 0x2bd1
    mov ax, 0                        ; 0x2bd3
    push ax                          ; 0x2bd6
    push word [bp - 0x0002]          ; 0x2bd7
    call api_idx_0004_2              ; 0x2bda
    add sp, byte 4                   ; 0x2bdd
@..api_idx_000e_4.l14:
    inc word [bp - 0x0002]           ; 0x2be0
@..api_idx_000e_4.l15:
    mov ax, word [bp - 0x0004]       ; 0x2be3
    add ax, word [bp - 0x0006]       ; 0x2be6
    cmp ax, word [bp - 0x0002]       ; 0x2be9
    jle short @..api_idx_000e_4.l16  ; 0x2bec
    jmp near @..api_idx_000e_4.l11   ; 0x2bee
@..api_idx_000e_4.l16:
    ret                              ; 0x2bf1
api_idx_0002_5:
    mov ax, 0xfffe                   ; 0x2bf2
    call ds_dispatch_f40b            ; 0x2bf5
    cmp word [bp + 0x4], byte 0      ; 0x2bf8
    jle short @..api_idx_0002_5.l3   ; 0x2bfc
    cmp word [bp + 0x4], byte 6      ; 0x2bfe
    jge short @..api_idx_0002_5.l3   ; 0x2c02
    mov word [bp - 0x0002], 1        ; 0x2c04
    jmp short @..api_idx_0002_5.l2   ; 0x2c09
@..api_idx_0002_5.l1:
    push word [bp + 0xe]             ; 0x2c0b
    push word [bp + 0xc]             ; 0x2c0e
    push word [bp + 0xa]             ; 0x2c11
    push word [bp + 0x8]             ; 0x2c14
    push word [bp + 0x6]             ; 0x2c17
    mov ax, 0xfff6                   ; 0x2c1a
    push ax                          ; 0x2c1d
    push word [bp - 0x0002]          ; 0x2c1e
    call api_idx_000a_3              ; 0x2c21
    add sp, byte 0x0e                ; 0x2c24
    inc word [bp - 0x0002]           ; 0x2c27
@..api_idx_0002_5.l2:
    mov ax, word [bp - 0x0002]       ; 0x2c2a
    cmp ax, word [data_8466]         ; 0x2c2d
    jle short @..api_idx_0002_5.l1   ; 0x2c31
    jmp short @..api_idx_0002_5.l4   ; 0x2c33
@..api_idx_0002_5.l3:
    push word [bp + 0xe]             ; 0x2c35
    push word [bp + 0xc]             ; 0x2c38
    push word [bp + 0xa]             ; 0x2c3b
    push word [bp + 0x8]             ; 0x2c3e
    push word [bp + 0x6]             ; 0x2c41
    mov ax, 0xfff6                   ; 0x2c44
    push ax                          ; 0x2c47
    mov ax, 0                        ; 0x2c48
    push ax                          ; 0x2c4b
    call api_idx_000a_3              ; 0x2c4c
    add sp, byte 0x0e                ; 0x2c4f
    mov bx, word [data_848e]         ; 0x2c52
    cmp byte [bx + 0x1a1], 0         ; 0x2c56
    jbe short @..api_idx_0002_5.l4   ; 0x2c5b
    push word [bp + 0xe]             ; 0x2c5d
    push word [bp + 0xc]             ; 0x2c60
    push word [bp + 0xa]             ; 0x2c63
    push word [bp + 0x8]             ; 0x2c66
    push word [bp + 0x6]             ; 0x2c69
    mov ax, 0xfff6                   ; 0x2c6c
    push ax                          ; 0x2c6f
    mov ax, 6                        ; 0x2c70
    push ax                          ; 0x2c73
    call api_idx_000a_3              ; 0x2c74
    add sp, byte 0x0e                ; 0x2c77
@..api_idx_0002_5.l4:
    ret                              ; 0x2c7a
api_idx_0006_4:
    mov ax, 0xfffa                   ; 0x2c7b
    call ds_dispatch_f40b            ; 0x2c7e
    mov word [data_91d6], 2          ; 0x2c81
    mov word [bp - 0x0004], 0        ; 0x2c87
    cmp word [bp + 0xa], byte 3      ; 0x2c8c
    jne short @..local.l155          ; 0x2c90
    cmp word [bp + 0xe], byte 1      ; 0x2c92
    jne short @..local.l155          ; 0x2c96
    cmp word [bp + 0x8], byte 5      ; 0x2c98
    jne short @..local.l153          ; 0x2c9c
    mov ax, word [bp + 0x4]          ; 0x2c9e
    shl ax, 1                        ; 0x2ca1
    mov bx, ax                       ; 0x2ca3
    mov bx, word [bx - 0x7b7e]       ; 0x2ca5
    mov al, byte [bx + 0x18f]        ; 0x2ca9
    sub ah, ah                       ; 0x2cad
    mov cx, 5                        ; 0x2caf
    cwd                              ; 0x2cb2
    idiv cx                          ; 0x2cb3
    cmp ax, word [bp + 0x10]         ; 0x2cb5
    jle short @..local.l153          ; 0x2cb8
    mov ax, 2                        ; 0x2cba
    push ax                          ; 0x2cbd
    push ax                          ; 0x2cbe
    call api_idx_0004_6              ; 0x2cbf
    add sp, byte 4                   ; 0x2cc2
    mov ax, 2                        ; 0x2cc5
    push ax                          ; 0x2cc8
    mov ax, 0x41                     ; 0x2cc9
    push ax                          ; 0x2ccc
    mov ax, 0xc8c                    ; 0x2ccd
    push ax                          ; 0x2cd0
    call api_idx_0050                ; 0x2cd1
    add sp, byte 6                   ; 0x2cd4
    push word [data_9058]            ; 0x2cd7
    call api_idx_0004_5              ; 0x2cdb
    pop cx                           ; 0x2cde
    ret                              ; 0x2cdf
@..local.l153:
    cmp word [bp + 0x8], byte 5      ; 0x2ce0
    jne short @..local.l154          ; 0x2ce4
    mov word [bp - 0x0004], 3        ; 0x2ce6
@..local.l154:
    cmp word [bp + 0x8], byte 0x0b   ; 0x2ceb
    jne short @..local.l155          ; 0x2cef
    mov word [bp - 0x0004], 4        ; 0x2cf1
@..local.l155:
    mov word [bp - 0x0002], 0        ; 0x2cf6
    jmp short @..local.l158          ; 0x2cfb
@..local.l156:
    mov ax, word [bp + 0xc]          ; 0x2cfd
    mov word [bp - 0x0006], ax       ; 0x2d00
    cmp word [bp - 0x0004], byte 0   ; 0x2d03
    jle short @..local.l157          ; 0x2d07
    mov ax, 0x2c                     ; 0x2d09
    imul word [bp - 0x0002]          ; 0x2d0c
    mov si, ax                       ; 0x2d0f
    mov ax, word [bp + 0x4]          ; 0x2d11
    shl ax, 1                        ; 0x2d14
    mov bx, ax                       ; 0x2d16
    mov bx, word [bx - 0x7b7e]       ; 0x2d18
    mov ax, word [bx + si]           ; 0x2d1c
    mov cx, word [bp + 0x10]         ; 0x2d1e
    add cx, word [bp - 0x0004]       ; 0x2d21
    cmp ax, cx                       ; 0x2d24
    jle short @..local.l157          ; 0x2d26
    mov word [bp - 0x0006], 0xff9c   ; 0x2d28
@..local.l157:
    push word [bp + 0x14]            ; 0x2d2d
    push word [bp + 0x12]            ; 0x2d30
    push word [bp + 0x10]            ; 0x2d33
    push word [bp + 0xe]             ; 0x2d36
    push word [bp - 0x0006]          ; 0x2d39
    push word [bp + 0xa]             ; 0x2d3c
    push word [bp + 0x8]             ; 0x2d3f
    push word [bp + 0x6]             ; 0x2d42
    push word [bp - 0x0002]          ; 0x2d45
    push word [bp + 0x4]             ; 0x2d48
    call api_idx_000a_4              ; 0x2d4b
    add sp, byte 0x14                ; 0x2d4e
    inc word [bp - 0x0002]           ; 0x2d51
@..local.l158:
    mov ax, word [bp + 0x4]          ; 0x2d54
    shl ax, 1                        ; 0x2d57
    mov bx, ax                       ; 0x2d59
    mov bx, word [bx - 0x7b7e]       ; 0x2d5b
    mov al, byte [bx + 0x1a1]        ; 0x2d5f
    sub ah, ah                       ; 0x2d63
    cmp ax, word [bp - 0x0002]       ; 0x2d65
    jg short @..local.l156           ; 0x2d68
    ret                              ; 0x2d6a
api_idx_0002_6:
    mov ax, 0xfffe                   ; 0x2d6b
    call ds_dispatch_f40b            ; 0x2d6e
    mov word [data_91d6], 2          ; 0x2d71
    cmp word [bp + 0x4], byte 0      ; 0x2d77
    jle short @..api_idx_0002_6.l3   ; 0x2d7b
    cmp word [bp + 0x4], byte 6      ; 0x2d7d
    jge short @..api_idx_0002_6.l3   ; 0x2d81
    mov word [bp - 0x0002], 1        ; 0x2d83
    jmp short @..api_idx_0002_6.l2   ; 0x2d88
@..api_idx_0002_6.l1:
    push word [bp + 0x14]            ; 0x2d8a
    push word [bp + 0x12]            ; 0x2d8d
    push word [bp + 0x10]            ; 0x2d90
    push word [bp + 0xe]             ; 0x2d93
    push word [bp + 0xc]             ; 0x2d96
    push word [bp + 0xa]             ; 0x2d99
    push word [bp + 0x8]             ; 0x2d9c
    push word [bp + 0x6]             ; 0x2d9f
    push word [bp - 0x0002]          ; 0x2da2
    call api_idx_0006_4              ; 0x2da5
    add sp, byte 0x12                ; 0x2da8
    inc word [bp - 0x0002]           ; 0x2dab
@..api_idx_0002_6.l2:
    mov ax, word [bp - 0x0002]       ; 0x2dae
    cmp ax, word [data_8466]         ; 0x2db1
    jle short @..api_idx_0002_6.l1   ; 0x2db5
    jmp short @..api_idx_0002_6.l4   ; 0x2db7
@..api_idx_0002_6.l3:
    push word [bp + 0x14]            ; 0x2db9
    push word [bp + 0x12]            ; 0x2dbc
    push word [bp + 0x10]            ; 0x2dbf
    push word [bp + 0xe]             ; 0x2dc2
    push word [bp + 0xc]             ; 0x2dc5
    push word [bp + 0xa]             ; 0x2dc8
    push word [bp + 0x8]             ; 0x2dcb
    push word [bp + 0x6]             ; 0x2dce
    mov ax, 0                        ; 0x2dd1
    push ax                          ; 0x2dd4
    call api_idx_0006_4              ; 0x2dd5
    add sp, byte 0x12                ; 0x2dd8
    mov bx, word [data_848e]         ; 0x2ddb
    cmp byte [bx + 0x1a1], 0         ; 0x2ddf
    jbe short @..api_idx_0002_6.l4   ; 0x2de4
    push word [bp + 0x14]            ; 0x2de6
    push word [bp + 0x12]            ; 0x2de9
    push word [bp + 0x10]            ; 0x2dec
    push word [bp + 0xe]             ; 0x2def
    push word [bp + 0xc]             ; 0x2df2
    push word [bp + 0xa]             ; 0x2df5
    push word [bp + 0x8]             ; 0x2df8
    push word [bp + 0x6]             ; 0x2dfb
    mov ax, 6                        ; 0x2dfe
    push ax                          ; 0x2e01
    call api_idx_0006_4              ; 0x2e02
    add sp, byte 0x12                ; 0x2e05
@..api_idx_0002_6.l4:
    ret                              ; 0x2e08
math_loc_2e09:
    mov ax, 0                        ; 0x2e09
    call ds_dispatch_f40b            ; 0x2e0c
    cmp word [bp + 0x8], byte 1      ; 0x2e0f
    jne short @..math_loc_2e09.l3    ; 0x2e13
    cmp word [bp + 0x6], byte 0      ; 0x2e15
    jle short @..math_loc_2e09.l1    ; 0x2e19
    mov ax, word [bp + 0x4]          ; 0x2e1b
    sub word [bp + 0x6], ax          ; 0x2e1e
    jmp short @..math_loc_2e09.l2    ; 0x2e21
@..math_loc_2e09.l1:
    mov ax, 0                        ; 0x2e23
    sub ax, word [bp + 0x4]          ; 0x2e26
    cmp ax, word [bp + 0x6]          ; 0x2e29
    jge short @..math_loc_2e09.l2    ; 0x2e2c
    mov word [bp + 0x6], ax          ; 0x2e2e
@..math_loc_2e09.l2:
    jmp short @..math_loc_2e09.l5    ; 0x2e31
@..math_loc_2e09.l3:
    cmp word [bp + 0x8], byte 0      ; 0x2e33
    jne short @..math_loc_2e09.l5    ; 0x2e37
    cmp word [bp + 0x6], byte 0      ; 0x2e39
    jge short @..math_loc_2e09.l4    ; 0x2e3d
    mov ax, word [bp + 0x4]          ; 0x2e3f
    add word [bp + 0x6], ax          ; 0x2e42
    jmp short @..math_loc_2e09.l5    ; 0x2e45
@..math_loc_2e09.l4:
    mov ax, word [bp + 0x6]          ; 0x2e47
    cmp ax, word [bp + 0x4]          ; 0x2e4a
    jge short @..math_loc_2e09.l5    ; 0x2e4d
    mov ax, word [bp + 0x4]          ; 0x2e4f
    mov word [bp + 0x6], ax          ; 0x2e52
@..math_loc_2e09.l5:
    mov ax, word [bp + 0x6]          ; 0x2e55
    ret                              ; 0x2e58
api_idx_0010_2:
    mov ax, 0xfff0                   ; 0x2e59
    call ds_dispatch_f40b            ; 0x2e5c
    lea ax, word [bp - 0x000c]       ; 0x2e5f
    push ax                          ; 0x2e62
    lea ax, word [bp - 0x000a]       ; 0x2e63
    push ax                          ; 0x2e66
    push word [bp + 0x6]             ; 0x2e67
    push word [bp + 0x4]             ; 0x2e6a
    call api_idx_0006_3              ; 0x2e6d
    add sp, byte 8                   ; 0x2e70
    mov ax, word [bp - 0x000a]       ; 0x2e73
    mov word [bp - 0x0002], ax       ; 0x2e76
    jmp near @..local.l167           ; 0x2e79
@..api_idx_0010_2.l1:
    mov ax, 0x2c                     ; 0x2e7c
    imul word [bp - 0x0002]          ; 0x2e7f
    mov si, ax                       ; 0x2e82
    mov ax, word [bp + 0x4]          ; 0x2e84
    shl ax, 1                        ; 0x2e87
    mov bx, ax                       ; 0x2e89
    mov bx, word [bx - 0x7b7e]       ; 0x2e8b
    cmp byte [bx + si + 0x22], 3     ; 0x2e8f
    jb short @..api_idx_0010_2.l2    ; 0x2e93
    jmp near @..local.l166           ; 0x2e95
@..api_idx_0010_2.l2:
    push word [bp - 0x0002]          ; 0x2e98
    push word [bp + 0x4]             ; 0x2e9b
    call math_loc_1f5d               ; 0x2e9e
    add sp, byte 4                   ; 0x2ea1
    test ax, ax                      ; 0x2ea4
    je short @..api_idx_0010_2.l3    ; 0x2ea6
    jmp near @..local.l166           ; 0x2ea8
@..api_idx_0010_2.l3:
    mov ax, 4                        ; 0x2eab
    push ax                          ; 0x2eae
    mov ax, 2                        ; 0x2eaf
    push ax                          ; 0x2eb2
    call api_idx_0004_6              ; 0x2eb3
    add sp, byte 4                   ; 0x2eb6
    push word [bp - 0x0002]          ; 0x2eb9
    push word [bp + 0x4]             ; 0x2ebc
    mov ax, 0x90e6                   ; 0x2ebf
    push ax                          ; 0x2ec2
    call math_loc_15ab               ; 0x2ec3
    add sp, byte 6                   ; 0x2ec6
    mov ax, 2                        ; 0x2ec9
    push ax                          ; 0x2ecc
    mov ax, 0x43                     ; 0x2ecd
    cmp word [bp + 0x4], byte 0      ; 0x2ed0
    jne short @..api_idx_0010_2.l4   ; 0x2ed4
    mov ax, 1                        ; 0x2ed6
@..api_idx_0010_2.l4:
    push ax                          ; 0x2ed9
    mov ax, 0x90e6                   ; 0x2eda
    push ax                          ; 0x2edd
    call api_idx_0002_2              ; 0x2ede
    add sp, byte 6                   ; 0x2ee1
    push word [bp + 0x8]             ; 0x2ee4
    mov ax, 3                        ; 0x2ee7
    push ax                          ; 0x2eea
    push word [bp + 0xa]             ; 0x2eeb
    push word [bp + 0x4]             ; 0x2eee
    call api_idx_0002_3              ; 0x2ef1
    add sp, byte 8                   ; 0x2ef4
    mov word [bp - 0x0006], ax       ; 0x2ef7
    cmp ax, strict word 0            ; 0x2efa
    jg short @..api_idx_0010_2.l5    ; 0x2efd
    jmp near @..local.l165           ; 0x2eff
@..api_idx_0010_2.l5:
    mov ax, 0x64                     ; 0x2f02
    push ax                          ; 0x2f05
    call ds_dispatch_b7a9            ; 0x2f06
    pop cx                           ; 0x2f09
    push ax                          ; 0x2f0a
    mov ax, word [bp + 0x4]          ; 0x2f0b
    shl ax, 1                        ; 0x2f0e
    mov bx, ax                       ; 0x2f10
    mov bx, word [bx - 0x7b70]       ; 0x2f12
    mov al, byte [bx + 0x9d]         ; 0x2f16
    sub ah, ah                       ; 0x2f1a
    mov cx, ax                       ; 0x2f1c
    sub ax, word [bp + 0x8]          ; 0x2f1e
    mov cx, ax                       ; 0x2f21
    pop ax                           ; 0x2f23
    cmp ax, cx                       ; 0x2f24
    jg short @..api_idx_0010_2.l6    ; 0x2f26
    jmp near @..local.l165           ; 0x2f28
@..api_idx_0010_2.l6:
    cmp word [bp + 0xc], byte 1      ; 0x2f2b
    je short @..api_idx_0010_2.l7    ; 0x2f2f
    jmp near @..api_idx_0010_2.l9    ; 0x2f31
@..api_idx_0010_2.l7:
    mov ax, 1                        ; 0x2f34
    push ax                          ; 0x2f37
    mov ax, 0x2c                     ; 0x2f38
    imul word [bp - 0x0002]          ; 0x2f3b
    mov si, ax                       ; 0x2f3e
    mov ax, word [bp + 0x4]          ; 0x2f40
    shl ax, 1                        ; 0x2f43
    mov bx, ax                       ; 0x2f45
    mov bx, word [bx - 0x7b7e]       ; 0x2f47
    mov al, byte [bx + si + 0x28]    ; 0x2f4b
    cbw                              ; 0x2f4e
    push ax                          ; 0x2f4f
    mov ax, word [bp - 0x0006]       ; 0x2f50
    dec ax                           ; 0x2f53
    mov cx, 2                        ; 0x2f54
    cwd                              ; 0x2f57
    idiv cx                          ; 0x2f58
    inc ax                           ; 0x2f5a
    push ax                          ; 0x2f5b
    call math_loc_2e09               ; 0x2f5c
    add sp, byte 6                   ; 0x2f5f
    push ax                          ; 0x2f62
    mov ax, 0x2c                     ; 0x2f63
    imul word [bp - 0x0002]          ; 0x2f66
    mov si, ax                       ; 0x2f69
    mov ax, word [bp + 0x4]          ; 0x2f6b
    shl ax, 1                        ; 0x2f6e
    mov bx, ax                       ; 0x2f70
    mov bx, word [bx - 0x7b7e]       ; 0x2f72
    pop ax                           ; 0x2f76
    mov byte [bx + si + 0x28], al    ; 0x2f77
    mov ax, 0                        ; 0x2f7a
    push ax                          ; 0x2f7d
    mov ax, 0x2c                     ; 0x2f7e
    imul word [bp - 0x0002]          ; 0x2f81
    mov si, ax                       ; 0x2f84
    mov ax, word [bp + 0x4]          ; 0x2f86
    shl ax, 1                        ; 0x2f89
    mov bx, ax                       ; 0x2f8b
    mov bx, word [bx - 0x7b7e]       ; 0x2f8d
    mov al, byte [bx + si + 0x27]    ; 0x2f91
    cbw                              ; 0x2f94
    push ax                          ; 0x2f95
    mov ax, word [bp - 0x0006]       ; 0x2f96
    dec ax                           ; 0x2f99
    mov cx, 2                        ; 0x2f9a
    cwd                              ; 0x2f9d
    idiv cx                          ; 0x2f9e
    inc ax                           ; 0x2fa0
    push ax                          ; 0x2fa1
    call math_loc_2e09               ; 0x2fa2
    add sp, byte 6                   ; 0x2fa5
    push ax                          ; 0x2fa8
    mov ax, 0x2c                     ; 0x2fa9
    imul word [bp - 0x0002]          ; 0x2fac
    mov si, ax                       ; 0x2faf
    mov ax, word [bp + 0x4]          ; 0x2fb1
    shl ax, 1                        ; 0x2fb4
    mov bx, ax                       ; 0x2fb6
    mov bx, word [bx - 0x7b7e]       ; 0x2fb8
    pop ax                           ; 0x2fbc
    mov byte [bx + si + 0x27], al    ; 0x2fbd
    mov ax, 0x2c                     ; 0x2fc0
    imul word [bp - 0x0002]          ; 0x2fc3
    mov si, ax                       ; 0x2fc6
    mov ax, word [bp + 0x4]          ; 0x2fc8
    shl ax, 1                        ; 0x2fcb
    mov bx, ax                       ; 0x2fcd
    mov bx, word [bx - 0x7b7e]       ; 0x2fcf
    mov ax, word [bx + si]           ; 0x2fd3
    sub ax, word [bp - 0x0006]       ; 0x2fd5
    mov word [bp - 0x0004], ax       ; 0x2fd8
    cmp ax, strict word 1            ; 0x2fdb
    jge short @..api_idx_0010_2.l8   ; 0x2fde
    mov word [bp - 0x0004], 1        ; 0x2fe0
@..api_idx_0010_2.l8:
    mov ax, word [bp - 0x0004]       ; 0x2fe5
    mov word [bx + si], ax           ; 0x2fe8
    mov word [bp - 0x0010], 0xda3    ; 0x2fea
    jmp near @..local.l163           ; 0x2fef
@..api_idx_0010_2.l9:
    mov ax, 1                        ; 0x2ff2
    push ax                          ; 0x2ff5
    mov ax, 0x2c                     ; 0x2ff6
    imul word [bp - 0x0002]          ; 0x2ff9
    mov si, ax                       ; 0x2ffc
    mov ax, word [bp + 0x4]          ; 0x2ffe
    shl ax, 1                        ; 0x3001
    mov bx, ax                       ; 0x3003
    mov bx, word [bx - 0x7b7e]       ; 0x3005
    mov al, byte [bx + si + 0x29]    ; 0x3009
    cbw                              ; 0x300c
    push ax                          ; 0x300d
    mov ax, 3                        ; 0x300e
    imul word [bp - 0x0006]          ; 0x3011
    push ax                          ; 0x3014
    call math_loc_2e09               ; 0x3015
    add sp, byte 6                   ; 0x3018
    push ax                          ; 0x301b
    mov ax, 0x2c                     ; 0x301c
    imul word [bp - 0x0002]          ; 0x301f
    mov si, ax                       ; 0x3022
    mov ax, word [bp + 0x4]          ; 0x3024
    shl ax, 1                        ; 0x3027
    mov bx, ax                       ; 0x3029
    mov bx, word [bx - 0x7b7e]       ; 0x302b
    pop ax                           ; 0x302f
    mov byte [bx + si + 0x29], al    ; 0x3030
    mov word [bp - 0x000e], 0        ; 0x3033
@..api_idx_0010_2.l10:
    mov ax, 0x2c                     ; 0x3038
    imul word [bp - 0x0002]          ; 0x303b
    add ax, word [bp - 0x000e]       ; 0x303e
    mov si, ax                       ; 0x3041
    mov ax, word [bp + 0x4]          ; 0x3043
    shl ax, 1                        ; 0x3046
    mov bx, ax                       ; 0x3048
    mov bx, word [bx - 0x7b7e]       ; 0x304a
    mov al, byte [bx + si + 0x18]    ; 0x304e
    sub ah, ah                       ; 0x3051
    mov cx, 2                        ; 0x3053
    cwd                              ; 0x3056
    idiv cx                          ; 0x3057
    mov byte [bx + si + 0x18], al    ; 0x3059
    inc word [bp - 0x000e]           ; 0x305c
    mov ax, word [bp - 0x000e]       ; 0x305f
    cmp ax, strict word 4            ; 0x3062
    jl short @..api_idx_0010_2.l10   ; 0x3065
    mov ax, 0x2c                     ; 0x3067
    imul word [bp - 0x0002]          ; 0x306a
    mov si, ax                       ; 0x306d
    mov ax, word [bp + 0x4]          ; 0x306f
    shl ax, 1                        ; 0x3072
    mov bx, ax                       ; 0x3074
    mov bx, word [bx - 0x7b7e]       ; 0x3076
    cmp byte [bx + si + 0x29], 0     ; 0x307a
    jge short @..local.l162          ; 0x307e
    cmp byte [bx + si + 0x29], 0     ; 0x3080
    jge short @..local.l159          ; 0x3084
    mov al, byte [bx + si + 0x29]    ; 0x3086
    cbw                              ; 0x3089
    neg ax                           ; 0x308a
    jmp short @..local.l160          ; 0x308c
@..local.l159:
    mov al, byte [bx + si + 0x29]    ; 0x308e
    cbw                              ; 0x3091
@..local.l160:
    mov cx, 0xa                      ; 0x3092
    cwd                              ; 0x3095
    idiv cx                          ; 0x3096
    mov word [bp - 0x000e], ax       ; 0x3098
    cmp ax, strict word 3            ; 0x309b
    jle short @..local.l161          ; 0x309e
    mov word [bp - 0x000e], 3        ; 0x30a0
@..local.l161:
    cmp word [bp - 0x000e], byte 0   ; 0x30a5
    jle short @..local.l162          ; 0x30a9
    mov ax, 0x2c                     ; 0x30ab
    imul word [bp - 0x0002]          ; 0x30ae
    mov cx, 4                        ; 0x30b1
    sub cx, word [bp - 0x000e]       ; 0x30b4
    add ax, cx                       ; 0x30b7
    mov si, ax                       ; 0x30b9
    mov ax, word [bp + 0x4]          ; 0x30bb
    shl ax, 1                        ; 0x30be
    mov bx, ax                       ; 0x30c0
    mov bx, word [bx - 0x7b7e]       ; 0x30c2
    mov byte [bx + si + 0x18], 0     ; 0x30c6
    dec word [bp - 0x000e]           ; 0x30ca
    jmp short @..local.l161          ; 0x30cd
@..local.l162:
    mov word [bp - 0x0010], 0xda6    ; 0x30cf
@..local.l163:
    mov ax, 3                        ; 0x30d4
    push ax                          ; 0x30d7
    mov ax, 0x41                     ; 0x30d8
    push ax                          ; 0x30db
    push word [bp - 0x0010]          ; 0x30dc
    call api_idx_0050                ; 0x30df
    add sp, byte 6                   ; 0x30e2
    cmp word [bp + 0x4], byte 0      ; 0x30e5
    jne short @..local.l164          ; 0x30e9
    mov ax, 0                        ; 0x30eb
    push ax                          ; 0x30ee
    push word [bp - 0x0002]          ; 0x30ef
    call api_idx_0004_2              ; 0x30f2
    add sp, byte 4                   ; 0x30f5
@..local.l164:
    push word [data_9058]            ; 0x30f8
    call api_idx_0004_5              ; 0x30fc
    pop cx                           ; 0x30ff
    jmp short @..local.l166          ; 0x3100
@..local.l165:
    mov ax, 3                        ; 0x3102
    push ax                          ; 0x3105
    mov ax, 0x41                     ; 0x3106
    push ax                          ; 0x3109
    mov ax, 0xd8f                    ; 0x310a
    push ax                          ; 0x310d
    call api_idx_0050                ; 0x310e
    add sp, byte 6                   ; 0x3111
    push word [data_9058]            ; 0x3114
    call api_idx_0004_5              ; 0x3118
    pop cx                           ; 0x311b
@..local.l166:
    inc word [bp - 0x0002]           ; 0x311c
@..local.l167:
    mov ax, word [bp - 0x000a]       ; 0x311f
    add ax, word [bp - 0x000c]       ; 0x3122
    cmp ax, word [bp - 0x0002]       ; 0x3125
    jle short @..local.l168          ; 0x3128
    jmp near @..api_idx_0010_2.l1    ; 0x312a
@..local.l168:
    ret                              ; 0x312d
api_idx_0006_5:
    mov ax, 0xfffa                   ; 0x312e
    call ds_dispatch_f40b            ; 0x3131
    lea ax, word [bp - 0x0006]       ; 0x3134
    push ax                          ; 0x3137
    lea ax, word [bp - 0x0004]       ; 0x3138
    push ax                          ; 0x313b
    push word [bp + 0x6]             ; 0x313c
    push word [bp + 0x4]             ; 0x313f
    call api_idx_0006_3              ; 0x3142
    add sp, byte 8                   ; 0x3145
    mov ax, word [bp - 0x0004]       ; 0x3148
    mov word [bp - 0x0002], ax       ; 0x314b
    jmp near @..local.l174           ; 0x314e
@..api_idx_0006_5.l1:
    mov ax, 0x2c                     ; 0x3151
    imul word [bp - 0x0002]          ; 0x3154
    mov si, ax                       ; 0x3157
    mov ax, word [bp + 0x4]          ; 0x3159
    shl ax, 1                        ; 0x315c
    mov bx, ax                       ; 0x315e
    mov bx, word [bx - 0x7b7e]       ; 0x3160
    cmp byte [bx + si + 0x22], 3     ; 0x3164
    jb short @..api_idx_0006_5.l2    ; 0x3168
    jmp near @..local.l173           ; 0x316a
@..api_idx_0006_5.l2:
    mov ax, 0x64                     ; 0x316d
    push ax                          ; 0x3170
    call ds_dispatch_b7a9            ; 0x3171
    pop cx                           ; 0x3174
    push ax                          ; 0x3175
    mov ax, word [bp + 0x4]          ; 0x3176
    shl ax, 1                        ; 0x3179
    mov bx, ax                       ; 0x317b
    mov bx, word [bx - 0x7b70]       ; 0x317d
    mov al, byte [bx + 0x9c]         ; 0x3181
    sub ah, ah                       ; 0x3185
    mov cx, ax                       ; 0x3187
    sub ax, word [bp + 0xa]          ; 0x3189
    mov cx, ax                       ; 0x318c
    pop ax                           ; 0x318e
    cmp ax, cx                       ; 0x318f
    jg short @..api_idx_0006_5.l3    ; 0x3191
    jmp near @..local.l171           ; 0x3193
@..api_idx_0006_5.l3:
    mov ax, 0xa                      ; 0x3196
    push ax                          ; 0x3199
    call ds_dispatch_b7a9            ; 0x319a
    pop cx                           ; 0x319d
    jmp near @..local.l169           ; 0x319e
    push word [bp + 0xa]             ; 0x31a1
    mov ax, 0xc                      ; 0x31a4
    push ax                          ; 0x31a7
    push word [bp + 0x8]             ; 0x31a8
    mov ax, 7                        ; 0x31ab
    push ax                          ; 0x31ae
    mov ax, 4                        ; 0x31af
    push ax                          ; 0x31b2
    push word [bp - 0x0002]          ; 0x31b3
    push word [bp + 0x4]             ; 0x31b6
    call api_idx_0022                ; 0x31b9
    add sp, byte 0x0e                ; 0x31bc
    jmp near @..local.l170           ; 0x31bf
    push word [bp + 0x8]             ; 0x31c2
    mov ax, 4                        ; 0x31c5
    push ax                          ; 0x31c8
    mov ax, word [bp + 0x8]          ; 0x31c9
    shl ax, 1                        ; 0x31cc
    push ax                          ; 0x31ce
    mov ax, 0                        ; 0x31cf
    push ax                          ; 0x31d2
    push word [bp + 0xa]             ; 0x31d3
    mov ax, 4                        ; 0x31d6
    push ax                          ; 0x31d9
    mov ax, 2                        ; 0x31da
    push ax                          ; 0x31dd
    mov ax, 0xd94                    ; 0x31de
    push ax                          ; 0x31e1
    push word [bp - 0x0002]          ; 0x31e2
    push word [bp + 0x4]             ; 0x31e5
    call api_idx_000a_4              ; 0x31e8
    add sp, byte 0x14                ; 0x31eb
    jmp near @..local.l170           ; 0x31ee
    mov ax, 0                        ; 0x31f1
    push ax                          ; 0x31f4
    mov ax, 2                        ; 0x31f5
    push ax                          ; 0x31f8
    push word [bp + 0x8]             ; 0x31f9
    mov ax, 0                        ; 0x31fc
    push ax                          ; 0x31ff
    push word [bp + 0xa]             ; 0x3200
    mov ax, 2                        ; 0x3203
    push ax                          ; 0x3206
    mov ax, 9                        ; 0x3207
    push ax                          ; 0x320a
    mov ax, 0xd92                    ; 0x320b
    push ax                          ; 0x320e
    push word [bp - 0x0002]          ; 0x320f
    push word [bp + 0x4]             ; 0x3212
    call api_idx_000a_4              ; 0x3215
    add sp, byte 0x14                ; 0x3218
    jmp near @..local.l170           ; 0x321b
    push word [bp + 0x8]             ; 0x321e
    mov ax, 1                        ; 0x3221
    push ax                          ; 0x3224
    mov ax, word [bp + 0x8]          ; 0x3225
    shl ax, 1                        ; 0x3228
    push ax                          ; 0x322a
    mov ax, 0                        ; 0x322b
    push ax                          ; 0x322e
    push word [bp + 0xa]             ; 0x322f
    mov ax, 3                        ; 0x3232
    push ax                          ; 0x3235
    mov ax, 4                        ; 0x3236
    push ax                          ; 0x3239
    mov ax, 0xd93                    ; 0x323a
    push ax                          ; 0x323d
    push word [bp - 0x0002]          ; 0x323e
    push word [bp + 0x4]             ; 0x3241
    call api_idx_000a_4              ; 0x3244
    add sp, byte 0x14                ; 0x3247
    jmp near @..local.l170           ; 0x324a
    push word [bp + 0x8]             ; 0x324d
    mov ax, 4                        ; 0x3250
    push ax                          ; 0x3253
    push word [bp + 0x8]             ; 0x3254
    mov ax, 0                        ; 0x3257
    push ax                          ; 0x325a
    push word [bp + 0xa]             ; 0x325b
    mov ax, 8                        ; 0x325e
    push ax                          ; 0x3261
    mov ax, 5                        ; 0x3262
    push ax                          ; 0x3265
    mov ax, 0xd98                    ; 0x3266
    push ax                          ; 0x3269
    push word [bp - 0x0002]          ; 0x326a
    push word [bp + 0x4]             ; 0x326d
    call api_idx_000a_4              ; 0x3270
    add sp, byte 0x14                ; 0x3273
    jmp near @..local.l170           ; 0x3276
    mov ax, 0                        ; 0x3279
    push ax                          ; 0x327c
    push ax                          ; 0x327d
    push ax                          ; 0x327e
    mov ax, 1                        ; 0x327f
    push ax                          ; 0x3282
    mov ax, word [bp + 0xa]          ; 0x3283
    add ax, strict word 0xffe7       ; 0x3286
    push ax                          ; 0x3289
    mov ax, 3                        ; 0x328a
    push ax                          ; 0x328d
    mov ax, 0xb                      ; 0x328e
    push ax                          ; 0x3291
    mov ax, 0xda1                    ; 0x3292
    push ax                          ; 0x3295
    push word [bp - 0x0002]          ; 0x3296
    push word [bp + 0x4]             ; 0x3299
    call api_idx_000a_4              ; 0x329c
    add sp, byte 0x14                ; 0x329f
    jmp near @..local.l170           ; 0x32a2
    push word [bp + 0xa]             ; 0x32a5
    mov ax, 0                        ; 0x32a8
    push ax                          ; 0x32ab
    mov ax, word [bp + 0x8]          ; 0x32ac
    shl ax, 1                        ; 0x32af
    push ax                          ; 0x32b1
    mov ax, 4                        ; 0x32b2
    push ax                          ; 0x32b5
    mov ax, word [bp + 0x8]          ; 0x32b6
    shl ax, 1                        ; 0x32b9
    push ax                          ; 0x32bb
    push word [bp - 0x0002]          ; 0x32bc
    push word [bp + 0x4]             ; 0x32bf
    call api_idx_0022                ; 0x32c2
    add sp, byte 0x0e                ; 0x32c5
    jmp near @..local.l170           ; 0x32c8
    push word [bp + 0x8]             ; 0x32cb
    mov ax, 2                        ; 0x32ce
    push ax                          ; 0x32d1
    push word [bp + 0x8]             ; 0x32d2
    mov ax, 0                        ; 0x32d5
    push ax                          ; 0x32d8
    push word [bp + 0xa]             ; 0x32d9
    mov ax, 7                        ; 0x32dc
    push ax                          ; 0x32df
    mov ax, 0xa                      ; 0x32e0
    push ax                          ; 0x32e3
    mov ax, 0xd97                    ; 0x32e4
    push ax                          ; 0x32e7
    push word [bp - 0x0002]          ; 0x32e8
    push word [bp + 0x4]             ; 0x32eb
    call api_idx_000a_4              ; 0x32ee
    add sp, byte 0x14                ; 0x32f1
    jmp short @..local.l170          ; 0x32f4
    mov ax, 0                        ; 0x32f6
    push ax                          ; 0x32f9
    push ax                          ; 0x32fa
    push ax                          ; 0x32fb
    mov ax, 1                        ; 0x32fc
    push ax                          ; 0x32ff
    mov ax, word [bp + 0xa]          ; 0x3300
    add ax, strict word 0xffe7       ; 0x3303
    push ax                          ; 0x3306
    mov ax, 2                        ; 0x3307
    push ax                          ; 0x330a
    mov ax, 0xb                      ; 0x330b
    push ax                          ; 0x330e
    mov ax, 0xd9d                    ; 0x330f
    push ax                          ; 0x3312
    push word [bp - 0x0002]          ; 0x3313
    push word [bp + 0x4]             ; 0x3316
    call api_idx_000a_4              ; 0x3319
    add sp, byte 0x14                ; 0x331c
    jmp short @..local.l170          ; 0x331f
    push word [bp + 0xa]             ; 0x3321
    mov ax, 1                        ; 0x3324
    push ax                          ; 0x3327
    push word [bp + 0x8]             ; 0x3328
    mov ax, 7                        ; 0x332b

    db 0x50, 0xb8, 0x04, 0x00, 0x50, 0xff, 0x76, 0xfe, 0xff, 0x76, 0x04, 0xe8, 0x06, 0xef, 0x83, 0xc4
    db 0x0e, 0xeb, 0x21, 0xe8, 0x81, 0x09, 0x82, 0x38, 0x82, 0x65, 0x82, 0x94, 0x82, 0xc0, 0x82, 0xec
    db 0x82, 0x12, 0x83, 0x3d, 0x83, 0x68, 0x83

@..local.l169:
    cmp ax, strict word 0xa          ; 0x3355
    jae short @..local.l170          ; 0x3358
    xchg bx, ax                      ; 0x335a
    shl bx, 1                        ; 0x335b
    jmp [cs:bx - 0x7c78]             ; 0x335d
@..local.l170:
    jmp short @..local.l173          ; 0x3362
@..local.l171:
    mov ax, 0x2c                     ; 0x3364
    imul word [bp - 0x0002]          ; 0x3367
    mov si, ax                       ; 0x336a
    mov ax, word [bp + 0x4]          ; 0x336c
    shl ax, 1                        ; 0x336f
    mov bx, ax                       ; 0x3371
    mov bx, word [bx - 0x7b7e]       ; 0x3373
    cmp byte [bx + si + 0x2b], 0     ; 0x3377
    jne short @..local.l173          ; 0x337b
    mov ax, 4                        ; 0x337d
    push ax                          ; 0x3380
    mov ax, 2                        ; 0x3381
    push ax                          ; 0x3384
    call api_idx_0004_6              ; 0x3385
    add sp, byte 4                   ; 0x3388
    push word [bp - 0x0002]          ; 0x338b
    push word [bp + 0x4]             ; 0x338e
    mov ax, 0x90e6                   ; 0x3391
    push ax                          ; 0x3394
    call math_loc_15ab               ; 0x3395
    add sp, byte 6                   ; 0x3398
    mov ax, 2                        ; 0x339b
    push ax                          ; 0x339e
    mov ax, 0x43                     ; 0x339f
    cmp word [bp + 0x4], byte 0      ; 0x33a2
    jne short @..local.l172          ; 0x33a6
    mov ax, 1                        ; 0x33a8
@..local.l172:
    push ax                          ; 0x33ab
    mov ax, 0x90e6                   ; 0x33ac
    push ax                          ; 0x33af
    call api_idx_0002_2              ; 0x33b0
    add sp, byte 6                   ; 0x33b3
    mov ax, 3                        ; 0x33b6
    push ax                          ; 0x33b9
    mov ax, 0x41                     ; 0x33ba
    push ax                          ; 0x33bd
    mov ax, 0xd8f                    ; 0x33be
    push ax                          ; 0x33c1
    call api_idx_0050                ; 0x33c2
    add sp, byte 6                   ; 0x33c5
    push word [data_9058]            ; 0x33c8
    call api_idx_0004_5              ; 0x33cc
    pop cx                           ; 0x33cf
@..local.l173:
    inc word [bp - 0x0002]           ; 0x33d0
@..local.l174:
    mov ax, word [bp - 0x0004]       ; 0x33d3
    add ax, word [bp - 0x0006]       ; 0x33d6
    cmp ax, word [bp - 0x0002]       ; 0x33d9
    jle short @..local.l175          ; 0x33dc
    jmp near @..api_idx_0006_5.l1    ; 0x33de
@..local.l175:
    ret                              ; 0x33e1
api_idx_0004_9:
    mov ax, 0xfffc                   ; 0x33e2
    call ds_dispatch_f40b            ; 0x33e5
    cmp word [data_91d8], byte 1     ; 0x33e8
    jne short @..local.l176          ; 0x33ed
    ret                              ; 0x33ef
@..local.l176:
    cmp word [bp + 0x4], byte 0      ; 0x33f0
    je short @..local.l177           ; 0x33f4
    mov ax, word [bp + 0x4]          ; 0x33f6
    cmp ax, strict word 6            ; 0x33f9
    jne short @..local.l181          ; 0x33fc
@..local.l177:
    mov ax, 0x2c                     ; 0x33fe
    imul word [data_8462]            ; 0x3401
    mov si, ax                       ; 0x3405
    mov ax, word [data_8464]         ; 0x3407
    shl ax, 1                        ; 0x340a
    mov bx, ax                       ; 0x340c
    mov bx, word [bx - 0x7b7e]       ; 0x340e
    cmp byte [bx + si + 0x2a], 0xff  ; 0x3412
    jne short @..local.l179          ; 0x3416
    mov ax, 0                        ; 0x3418
    mov cx, word [data_8464]         ; 0x341b
    cmp cx, byte 1                   ; 0x341f
    je short @..local.l178           ; 0x3422
    mov ax, 2                        ; 0x3424
    cmp cx, byte 2                   ; 0x3427
    jne short @..local.l178          ; 0x342a
    mov ax, 1                        ; 0x342c
@..local.l178:
    mov word [bp - 0x0004], ax       ; 0x342f
    jmp short @..local.l180          ; 0x3432
@..local.l179:
    mov al, byte [bx + si + 0x2a]    ; 0x3434
    cbw                              ; 0x3437
    mov cx, 0xa                      ; 0x3438
    cwd                              ; 0x343b
    idiv cx                          ; 0x343c
    mov word [bp - 0x0004], ax       ; 0x343e
@..local.l180:
    jmp short @..local.l184          ; 0x3441
@..local.l181:
    mov ax, 0x2c                     ; 0x3443
    imul word [bp + 0x6]             ; 0x3446
    mov si, ax                       ; 0x3449
    mov ax, word [bp + 0x4]          ; 0x344b
    shl ax, 1                        ; 0x344e
    mov bx, ax                       ; 0x3450
    mov bx, word [bx - 0x7b7e]       ; 0x3452
    cmp byte [bx + si + 0x2a], 0xff  ; 0x3456
    jne short @..local.l183          ; 0x345a
    mov ax, 0                        ; 0x345c
    mov cx, word [bp + 0x4]          ; 0x345f
    cmp cx, byte 1                   ; 0x3462
    je short @..local.l182           ; 0x3465
    mov ax, 2                        ; 0x3467
    cmp cx, byte 2                   ; 0x346a
    jne short @..local.l182          ; 0x346d
    mov ax, 1                        ; 0x346f
@..local.l182:
    mov word [bp - 0x0004], ax       ; 0x3472
    jmp short @..local.l184          ; 0x3475
@..local.l183:
    mov al, byte [bx + si + 0x2a]    ; 0x3477
    cbw                              ; 0x347a
    mov cx, 0xa                      ; 0x347b
    cwd                              ; 0x347e
    idiv cx                          ; 0x347f
    mov word [bp - 0x0004], ax       ; 0x3481
@..local.l184:
    push word [data_8454]            ; 0x3484
    mov ax, 0                        ; 0x3488
    push ax                          ; 0x348b
    push word [bp - 0x0004]          ; 0x348c
    call ds_dispatch_b7c2            ; 0x348f
    add sp, byte 6                   ; 0x3492
    mov word [bp - 0x0004], ax       ; 0x3495
    mov ax, word [bp + 0xc]          ; 0x3498
    mov word [data_90de], ax         ; 0x349b
    push word [bp + 0xa]             ; 0x349e
    push word [bp + 0x6]             ; 0x34a1
    push word [bp + 0x4]             ; 0x34a4
    push word [bp - 0x0004]          ; 0x34a7
    push word [bp + 0x8]             ; 0x34aa
    push word [data_8462]            ; 0x34ad
    push word [data_8464]            ; 0x34b1
    call math_loc_0f67               ; 0x34b5
    add sp, byte 0x0e                ; 0x34b8
    ret                              ; 0x34bb
api_idx_005e:
    mov ax, 0xffa2                   ; 0x34bc
    call ds_dispatch_f40b            ; 0x34bf
    mov word [bp - 0x0002], 0xf      ; 0x34c2
@..api_idx_005e.l1:
    mov bx, word [bp - 0x0002]       ; 0x34c7
    mov al, byte [bx + 0x5b48]       ; 0x34ca
    sub ah, ah                       ; 0x34ce
    cmp ax, word [bp + 0x4]          ; 0x34d0
    jne short @..local.l185          ; 0x34d3
    mov ax, 0                        ; 0x34d5
    ret                              ; 0x34d8
@..local.l185:
    inc word [bp - 0x0002]           ; 0x34d9
    mov ax, word [bp - 0x0002]       ; 0x34dc
    cmp ax, strict word 0x12         ; 0x34df
    jl short @..api_idx_005e.l1      ; 0x34e2
    mov ax, 0x90a6                   ; 0x34e4
    push ax                          ; 0x34e7
    lea ax, word [bp - 0x005e]       ; 0x34e8
    push ax                          ; 0x34eb
    call ds_dispatch_f364            ; 0x34ec
    add sp, byte 4                   ; 0x34ef
    mov ax, word [bp + 0x4]          ; 0x34f2
    mov cx, 0xa                      ; 0x34f5
    cwd                              ; 0x34f8
    idiv cx                          ; 0x34f9
    add ax, strict word 0x30         ; 0x34fb
    mov byte [bp - 0x005b], al       ; 0x34fe
    add dx, byte 0x30                ; 0x3501
    mov ax, dx                       ; 0x3504
    mov byte [bp - 0x005a], al       ; 0x3506
    mov ax, 0                        ; 0x3509
    push ax                          ; 0x350c
    mov ax, 1                        ; 0x350d
    push ax                          ; 0x3510
    lea ax, word [bp - 0x005e]       ; 0x3511
    push ax                          ; 0x3514
    call ds_dispatch_d161            ; 0x3515
    add sp, byte 4                   ; 0x3518
    push ax                          ; 0x351b
    call ds_dispatch_f909            ; 0x351c
    add sp, byte 4                   ; 0x351f
    mov word [bp - 0x0004], ax       ; 0x3522
    cmp ax, strict word 0xffff       ; 0x3525
    jne short @..local.l186          ; 0x3528
    mov ax, 0xffff                   ; 0x352a
    ret                              ; 0x352d
@..local.l186:
    mov ax, 2                        ; 0x352e
    push ax                          ; 0x3531
    mov ax, 0                        ; 0x3532
    mov dx, 0                        ; 0x3535
    push dx                          ; 0x3538
    push ax                          ; 0x3539
    push word [bp - 0x0004]          ; 0x353a
    call ds_dispatch_fdbd            ; 0x353d
    add sp, byte 8                   ; 0x3540
    mov word [bp - 0x0006], dx       ; 0x3543
    mov word [bp - 0x0008], ax       ; 0x3546
    push word [bp - 0x0004]          ; 0x3549
    call ds_dispatch_fda5            ; 0x354c
    pop cx                           ; 0x354f
    mov word [bp - 0x000a], 0        ; 0x3550
    mov word [bp - 0x000c], 0x2800   ; 0x3555
    mov ax, 0                        ; 0x355a
    push ax                          ; 0x355d
    mov ax, 2                        ; 0x355e
    push ax                          ; 0x3561
    call ds_dispatch_e91b            ; 0x3562
    add sp, byte 4                   ; 0x3565
    mov cx, word [bp - 0x0008]       ; 0x3568
    mov bx, word [bp - 0x0006]       ; 0x356b
    add cx, word [bp - 0x000c]       ; 0x356e
    adc bx, word [bp - 0x000a]       ; 0x3571
    cmp dx, bx                       ; 0x3574
    jl short @..local.l187           ; 0x3576
    jne short @..local.l188          ; 0x3578
    cmp ax, cx                       ; 0x357a
    ja short @..local.l188           ; 0x357c
@..local.l187:
    jmp short @..local.l189          ; 0x357e
@..local.l188:
    mov ax, 0                        ; 0x3580
    ret                              ; 0x3583
@..local.l189:
    cmp byte [data_5962], 1          ; 0x3584
    jne short @..local.l192          ; 0x3589
    mov ax, 0                        ; 0x358b
    push ax                          ; 0x358e
    mov ax, 1                        ; 0x358f
    push ax                          ; 0x3592
    call ds_dispatch_e91b            ; 0x3593
    add sp, byte 4                   ; 0x3596
    cmp dx, word [bp - 0x000a]       ; 0x3599
    jl short @..local.l190           ; 0x359c
    jne short @..local.l191          ; 0x359e
    cmp ax, word [bp - 0x000c]       ; 0x35a0
    ja short @..local.l191           ; 0x35a3
@..local.l190:
    jmp short @..local.l192          ; 0x35a5
@..local.l191:
    mov word [bp - 0x000a], 0        ; 0x35a7
    mov word [bp - 0x000c], 0        ; 0x35ac
    jmp short @..local.l195          ; 0x35b1
@..local.l192:
    cmp byte [data_5963], 1          ; 0x35b3
    jne short @..local.l195          ; 0x35b8
    mov al, byte [data_5964]         ; 0x35ba
    sub ah, ah                       ; 0x35bd
    add ax, strict word 0xffc0       ; 0x35bf
    mov word [bp - 0x000e], ax       ; 0x35c2
    cmp ax, strict word 1            ; 0x35c5
    jl short @..local.l195           ; 0x35c8
    cmp ax, strict word 0x1a         ; 0x35ca
    jg short @..local.l195           ; 0x35cd
    push ax                          ; 0x35cf
    mov ax, 3                        ; 0x35d0
    push ax                          ; 0x35d3
    call ds_dispatch_e91b            ; 0x35d4
    add sp, byte 4                   ; 0x35d7
    cmp dx, word [bp - 0x000a]       ; 0x35da
    jl short @..local.l193           ; 0x35dd
    jne short @..local.l194          ; 0x35df
    cmp ax, word [bp - 0x000c]       ; 0x35e1
    ja short @..local.l194           ; 0x35e4
@..local.l193:
    jmp short @..local.l195          ; 0x35e6
@..local.l194:
    mov word [bp - 0x000a], 0        ; 0x35e8
    mov word [bp - 0x000c], 0        ; 0x35ed
@..local.l195:
    mov ax, 0                        ; 0x35f2
    push ax                          ; 0x35f5
    mov ax, 2                        ; 0x35f6
    push ax                          ; 0x35f9
    call ds_dispatch_e91b            ; 0x35fa
    add sp, byte 4                   ; 0x35fd
    mov cx, word [bp - 0x0008]       ; 0x3600
    mov bx, word [bp - 0x0006]       ; 0x3603
    add cx, word [bp - 0x000c]       ; 0x3606
    adc bx, word [bp - 0x000a]       ; 0x3609
    cmp dx, bx                       ; 0x360c
    jl short @..local.l196           ; 0x360e
    jne short @..local.l197          ; 0x3610
    cmp ax, cx                       ; 0x3612
    ja short @..local.l197           ; 0x3614
@..local.l196:
    jmp short @..local.l198          ; 0x3616
@..local.l197:
    mov ax, 0                        ; 0x3618
    ret                              ; 0x361b
@..local.l198:
    mov ax, 0xffff                   ; 0x361c
    ret                              ; 0x361f
math_loc_3620:
    mov ax, 0xfe52                   ; 0x3620
    call ds_dispatch_f40b            ; 0x3623
    mov ax, word [data_9058]         ; 0x3626
    mov cx, 2                        ; 0x3629
    cwd                              ; 0x362c
    idiv cx                          ; 0x362d
    push ax                          ; 0x362f
    call api_idx_0004_5              ; 0x3630
    pop cx                           ; 0x3633
    mov word [data_90e4], 0          ; 0x3634
    cmp word [data_8464], byte 0     ; 0x363a
    je short @..math_loc_3620.l1     ; 0x363f
    mov ax, word [data_8464]         ; 0x3641
    cmp ax, strict word 6            ; 0x3644
    jne short @..local.l200          ; 0x3647
@..math_loc_3620.l1:
    mov word [bp - 0x0004], 6        ; 0x3649
    mov ax, word [bp - 0x0004]       ; 0x364e
    shl ax, 1                        ; 0x3651
    mov bx, ax                       ; 0x3653
    mov bx, word [bx - 0x7b7e]       ; 0x3655
    cmp byte [bx + 0x1a1], 0         ; 0x3659
    jbe short @..local.l199          ; 0x365e
    mov ax, 2                        ; 0x3660
    push ax                          ; 0x3663
    mov ax, 0x41                     ; 0x3664
    push ax                          ; 0x3667
    mov ax, 0xc91                    ; 0x3668
    push ax                          ; 0x366b
    call api_idx_0050                ; 0x366c
    add sp, byte 6                   ; 0x366f
    ret                              ; 0x3672
@..local.l199:
    jmp short @..local.l202          ; 0x3673
@..local.l200:
    cmp word [bp + 0x10], byte 0     ; 0x3675
    jle short @..local.l201          ; 0x3679
    cmp word [data_8466], byte 5     ; 0x367b
    jge short @..local.l201          ; 0x3680
    inc word [data_8466]             ; 0x3682
    mov ax, word [data_8466]         ; 0x3686
    mov word [bp - 0x0004], ax       ; 0x3689
    jmp short @..local.l202          ; 0x368c
@..local.l201:
    mov ax, 2                        ; 0x368e
    push ax                          ; 0x3691
    mov ax, 0x41                     ; 0x3692
    push ax                          ; 0x3695
    mov ax, 0xc91                    ; 0x3696
    push ax                          ; 0x3699
    call api_idx_0050                ; 0x369a
    add sp, byte 6                   ; 0x369d
    ret                              ; 0x36a0
@..local.l202:
    mov ax, 0                        ; 0x36a1
    push ax                          ; 0x36a4
    mov ax, 0x1a4                    ; 0x36a5
    push ax                          ; 0x36a8
    mov ax, word [bp - 0x0004]       ; 0x36a9
    shl ax, 1                        ; 0x36ac
    mov bx, ax                       ; 0x36ae
    push word [bx - 0x7b7e]          ; 0x36b0
    call ds_dispatch_f306            ; 0x36b4
    add sp, byte 6                   ; 0x36b7
    mov word [bp - 0x01ac], 0        ; 0x36ba
@..local.l203:
    inc word [bp - 0x01ac]           ; 0x36c0
    dec word [bp + 0x10]             ; 0x36c4
    cmp word [bp + 0x10], byte 0     ; 0x36c7
    jle short @..local.l204          ; 0x36cb
    mov ax, 3                        ; 0x36cd
    push ax                          ; 0x36d0
    call ds_dispatch_b7a9            ; 0x36d1
    pop cx                           ; 0x36d4
    test ax, ax                      ; 0x36d5
    jne short @..local.l204          ; 0x36d7
    cmp word [bp - 0x01ac], byte 3   ; 0x36d9
    jl short @..local.l203           ; 0x36de
@..local.l204:
    mov ax, word [bp + 0x10]         ; 0x36e0
    jmp short @..local.l206          ; 0x36e3

    db 0x8b, 0x46, 0x04, 0x89, 0x86, 0x56, 0xfe, 0xeb, 0x5c, 0x8b, 0x46, 0x06, 0x89, 0x86, 0x56, 0xfe
    db 0xeb, 0x53, 0x8b, 0x46, 0x08, 0x89, 0x86, 0x56, 0xfe, 0xeb, 0x4a, 0x8b, 0x46, 0x0a, 0x89, 0x86
    db 0x56, 0xfe, 0xeb, 0x41, 0x8b, 0x46, 0x0c, 0x89, 0x86, 0x56, 0xfe, 0xeb, 0x38, 0x8b, 0x46, 0x0e
    db 0x89, 0x86, 0x56, 0xfe, 0xeb, 0x2f, 0x8b, 0x46, 0x0e, 0x89, 0x86, 0x56, 0xfe, 0xeb, 0x26

@..local.l205:
    mov ax, word [bp + 0x4]          ; 0x3724
    mov word [bp - 0x01aa], ax       ; 0x3727
    jmp short @..local.l208          ; 0x372b
    db 0x2c, 0x87, 0x35, 0x87, 0x3e, 0x87, 0x47, 0x87, 0x50, 0x87, 0x59, 0x87, 0x62, 0x87
@..local.l206:
    cmp ax, strict word 7            ; 0x373b
    jae short @..local.l207          ; 0x373e
    xchg bx, ax                      ; 0x3740
    shl bx, 1                        ; 0x3741
    jmp [cs:bx - 0x788c]             ; 0x3743
@..local.l207:
    jmp short @..local.l205          ; 0x3748
@..local.l208:
    mov ax, 0                        ; 0x374a
    push ax                          ; 0x374d
    push word [bp - 0x01aa]          ; 0x374e
    mov ax, word [bp - 0x0004]       ; 0x3752
    shl ax, 1                        ; 0x3755
    mov bx, ax                       ; 0x3757
    push word [bx - 0x7b70]          ; 0x3759
    mov ax, 4                        ; 0x375d
    push ax                          ; 0x3760
    call ds_dispatch_b63c            ; 0x3761
    add sp, byte 8                   ; 0x3764
    cmp word [data_8464], byte 0     ; 0x3767
    je short @..local.l209           ; 0x376c
    mov ax, word [data_8464]         ; 0x376e
    cmp ax, strict word 6            ; 0x3771
    je short @..local.l209           ; 0x3774
    mov ax, word [bp - 0x0004]       ; 0x3776
    shl ax, 1                        ; 0x3779
    mov bx, ax                       ; 0x377b
    mov bx, word [bx - 0x7b70]       ; 0x377d
    mov al, byte [bx + 0xd7]         ; 0x3781
    sub ah, ah                       ; 0x3785
    push ax                          ; 0x3787
    call api_idx_005e                ; 0x3788
    pop cx                           ; 0x378b
    cmp ax, strict word 0xffff       ; 0x378c
    jne short @..local.l209          ; 0x378f
    dec word [data_8466]             ; 0x3791
    mov ax, 2                        ; 0x3795
    push ax                          ; 0x3798
    mov ax, 0x41                     ; 0x3799
    push ax                          ; 0x379c
    mov ax, 0xc91                    ; 0x379d
    push ax                          ; 0x37a0
    call api_idx_0050                ; 0x37a1
    add sp, byte 6                   ; 0x37a4
    ret                              ; 0x37a7
@..local.l209:
    mov al, byte [bp - 0x01aa]       ; 0x37a8
    mov cx, word [bp - 0x0004]       ; 0x37ac
    shl cx, 1                        ; 0x37af
    mov bx, cx                       ; 0x37b1
    mov bx, word [bx - 0x7b7e]       ; 0x37b3
    mov byte [bx + 0x19e], al        ; 0x37b7
    mov ax, word [bp - 0x0004]       ; 0x37bb
    shl ax, 1                        ; 0x37be
    mov bx, ax                       ; 0x37c0
    mov bx, word [bx - 0x7b70]       ; 0x37c2
    mov al, byte [bx + 0x7d]         ; 0x37c6
    sub ah, ah                       ; 0x37c9
    add ax, word [bp - 0x01ac]       ; 0x37cb
    dec ax                           ; 0x37cf
    mov byte [bx + 0x7d], al         ; 0x37d0
    add bx, byte 0x7a                ; 0x37d3
    mov cx, bx                       ; 0x37d6
    sub sp, byte 4                   ; 0x37d8
    mov ax, sp                       ; 0x37db
    mov dx, ss                       ; 0x37dd
    mov cx, bx                       ; 0x37df
    mov es, dx                       ; 0x37e1
    mov si, cx                       ; 0x37e3
    mov di, ax                       ; 0x37e5
    movsw                            ; 0x37e7
    movsw                            ; 0x37e8
    call ds_dispatch_d0be            ; 0x37e9
    add sp, byte 4                   ; 0x37ec
    mov cx, word [bp - 0x0004]       ; 0x37ef
    shl cx, 1                        ; 0x37f2
    mov bx, cx                       ; 0x37f4
    mov bx, word [bx - 0x7b7e]       ; 0x37f6
    mov byte [bx + 0x1a1], al        ; 0x37fa
    mov ax, word [bp - 0x0004]       ; 0x37fe
    shl ax, 1                        ; 0x3801
    mov bx, ax                       ; 0x3803
    mov bx, word [bx - 0x7b7e]       ; 0x3805
    cmp byte [bx + 0x1a1], 1         ; 0x3809
    jae short @..local.l210          ; 0x380e
    mov byte [bx + 0x1a1], 1         ; 0x3810
@..local.l210:
    mov ax, word [bp - 0x0004]       ; 0x3815
    shl ax, 1                        ; 0x3818
    mov bx, ax                       ; 0x381a
    mov bx, word [bx - 0x7b7e]       ; 0x381c
    cmp byte [bx + 0x1a1], 9         ; 0x3820
    jbe short @..local.l211          ; 0x3825
    mov byte [bx + 0x1a1], 9         ; 0x3827
@..local.l211:
    mov word [bp - 0x0002], 0        ; 0x382c
@..local.l212:
    mov ax, word [bp - 0x0004]       ; 0x3831
    shl ax, 1                        ; 0x3834
    mov bx, ax                       ; 0x3836
    mov bx, word [bx - 0x7b7e]       ; 0x3838
    mov si, word [bp - 0x0002]       ; 0x383c
    mov byte [bx + si + 0x18c], 0    ; 0x383f
    inc word [bp - 0x0002]           ; 0x3844
    mov ax, word [bp - 0x0002]       ; 0x3847
    cmp ax, strict word 6            ; 0x384a
    jl short @..local.l212           ; 0x384d
    mov word [bp - 0x0002], 0        ; 0x384f
@..local.l213:
    mov ax, word [bp - 0x0004]       ; 0x3854
    shl ax, 1                        ; 0x3857
    mov bx, ax                       ; 0x3859
    mov bx, word [bx - 0x7b7e]       ; 0x385b
    mov si, word [bp - 0x0002]       ; 0x385f
    mov byte [bx + si + 0x192], 0    ; 0x3862
    inc word [bp - 0x0002]           ; 0x3867
    mov ax, word [bp - 0x0002]       ; 0x386a
    cmp ax, strict word 6            ; 0x386d
    jl short @..local.l213           ; 0x3870
    mov ax, word [bp - 0x0004]       ; 0x3872
    shl ax, 1                        ; 0x3875
    mov bx, ax                       ; 0x3877
    mov bx, word [bx - 0x7b7e]       ; 0x3879
    mov byte [bx + 0x1a0], 0         ; 0x387d
    mov word [bp - 0x0002], 0        ; 0x3882
    jmp near @..local.l215           ; 0x3887
@..local.l214:
    mov ax, word [bp - 0x0004]       ; 0x388a
    shl ax, 1                        ; 0x388d
    mov bx, ax                       ; 0x388f
    mov bx, word [bx - 0x7b70]       ; 0x3891
    mov al, byte [bx + 0x80]         ; 0x3895
    sub ah, ah                       ; 0x3899
    push ax                          ; 0x389b
    mov ax, 0x2c                     ; 0x389c
    imul word [bp - 0x0002]          ; 0x389f
    mov si, ax                       ; 0x38a2
    mov ax, word [bp - 0x0004]       ; 0x38a4
    shl ax, 1                        ; 0x38a7
    mov bx, ax                       ; 0x38a9
    mov bx, word [bx - 0x7b7e]       ; 0x38ab
    pop ax                           ; 0x38af
    mov word [bx + si], ax           ; 0x38b0
    mov ax, word [bp - 0x0004]       ; 0x38b2
    shl ax, 1                        ; 0x38b5
    mov bx, ax                       ; 0x38b7
    mov cx, word [bx - 0x7b70]       ; 0x38b9
    add cx, byte 0x7e                ; 0x38bd
    sub sp, byte 4                   ; 0x38c0
    mov ax, sp                       ; 0x38c3
    mov dx, ss                       ; 0x38c5
    mov es, dx                       ; 0x38c7
    mov si, cx                       ; 0x38c9
    mov di, ax                       ; 0x38cb
    movsw                            ; 0x38cd
    movsw                            ; 0x38ce
    call ds_dispatch_d0be            ; 0x38cf
    add sp, byte 4                   ; 0x38d2
    push ax                          ; 0x38d5
    mov ax, 0x2c                     ; 0x38d6
    imul word [bp - 0x0002]          ; 0x38d9
    mov si, ax                       ; 0x38dc
    mov ax, word [bp - 0x0004]       ; 0x38de
    shl ax, 1                        ; 0x38e1
    mov bx, ax                       ; 0x38e3
    mov bx, word [bx - 0x7b7e]       ; 0x38e5
    pop ax                           ; 0x38e9
    mov word [bx + si + 0x4], ax     ; 0x38ea
    mov ax, 0x2c                     ; 0x38ed
    imul word [bp - 0x0002]          ; 0x38f0
    mov si, ax                       ; 0x38f3
    mov ax, word [bp - 0x0004]       ; 0x38f5
    shl ax, 1                        ; 0x38f8
    mov bx, ax                       ; 0x38fa
    mov bx, word [bx - 0x7b7e]       ; 0x38fc
    mov ax, word [bx + si + 0x4]     ; 0x3900
    mov word [bx + si + 0x2], ax     ; 0x3903
    mov ax, word [bp - 0x0004]       ; 0x3906
    shl ax, 1                        ; 0x3909
    mov bx, ax                       ; 0x390b
    mov cx, word [bx - 0x7b70]       ; 0x390d
    add cx, strict word 0x82         ; 0x3911
    sub sp, byte 4                   ; 0x3915
    mov ax, sp                       ; 0x3918
    mov dx, ss                       ; 0x391a
    mov es, dx                       ; 0x391c
    mov si, cx                       ; 0x391e
    mov di, ax                       ; 0x3920
    movsw                            ; 0x3922
    movsw                            ; 0x3923
    call ds_dispatch_d0be            ; 0x3924
    add sp, byte 4                   ; 0x3927
    push ax                          ; 0x392a
    mov ax, 0x2c                     ; 0x392b
    imul word [bp - 0x0002]          ; 0x392e
    mov si, ax                       ; 0x3931
    mov ax, word [bp - 0x0004]       ; 0x3933
    shl ax, 1                        ; 0x3936
    mov bx, ax                       ; 0x3938
    mov bx, word [bx - 0x7b7e]       ; 0x393a
    pop ax                           ; 0x393e
    mov word [bx + si + 0x8], ax     ; 0x393f
    mov ax, 0x2c                     ; 0x3942
    imul word [bp - 0x0002]          ; 0x3945
    mov si, ax                       ; 0x3948
    mov ax, word [bp - 0x0004]       ; 0x394a
    shl ax, 1                        ; 0x394d
    mov bx, ax                       ; 0x394f
    mov bx, word [bx - 0x7b7e]       ; 0x3951
    mov ax, word [bx + si + 0x8]     ; 0x3955
    mov word [bx + si + 0x6], ax     ; 0x3958
    mov ax, 0x2c                     ; 0x395b
    imul word [bp - 0x0002]          ; 0x395e
    mov si, ax                       ; 0x3961
    mov ax, word [bp - 0x0004]       ; 0x3963
    shl ax, 1                        ; 0x3966
    mov bx, ax                       ; 0x3968
    mov bx, word [bx - 0x7b7e]       ; 0x396a
    mov byte [bx + si + 0x2a], 0xff  ; 0x396e
    mov ax, 0x2c                     ; 0x3972
    imul word [bp - 0x0002]          ; 0x3975
    mov si, ax                       ; 0x3978
    mov ax, word [bp - 0x0004]       ; 0x397a
    shl ax, 1                        ; 0x397d
    mov bx, ax                       ; 0x397f
    mov bx, word [bx - 0x7b7e]       ; 0x3981
    mov byte [bx + si + 0x1e], 0xa   ; 0x3985
    mov ax, 0x2c                     ; 0x3989
    imul word [bp - 0x0002]          ; 0x398c
    mov si, ax                       ; 0x398f
    mov ax, word [bp - 0x0004]       ; 0x3991
    shl ax, 1                        ; 0x3994
    mov bx, ax                       ; 0x3996
    mov bx, word [bx - 0x7b7e]       ; 0x3998
    mov byte [bx + si + 0x21], 0     ; 0x399c
    mov ax, 0x2c                     ; 0x39a0
    imul word [bp - 0x0002]          ; 0x39a3
    mov si, ax                       ; 0x39a6
    mov ax, word [bp - 0x0004]       ; 0x39a8
    shl ax, 1                        ; 0x39ab
    mov bx, ax                       ; 0x39ad
    mov bx, word [bx - 0x7b7e]       ; 0x39af
    mov byte [bx + si + 0x18], 0     ; 0x39b3
    inc word [bp - 0x0002]           ; 0x39b7
@..local.l215:
    mov ax, word [bp - 0x0004]       ; 0x39ba
    shl ax, 1                        ; 0x39bd
    mov bx, ax                       ; 0x39bf
    mov bx, word [bx - 0x7b7e]       ; 0x39c1
    mov al, byte [bx + 0x1a1]        ; 0x39c5
    sub ah, ah                       ; 0x39c9
    cmp ax, word [bp - 0x0002]       ; 0x39cb
    jle short @..local.l216          ; 0x39ce
    jmp near @..local.l214           ; 0x39d0
@..local.l216:
    mov ax, word [data_598e]         ; 0x39d3
    mov word [bp - 0x01ae], ax       ; 0x39d6
    mov ax, 0x11                     ; 0x39da
    push ax                          ; 0x39dd
    call ds_dispatch_d7aa            ; 0x39de
    pop cx                           ; 0x39e1
    mov ax, 0x90e6                   ; 0x39e2
    push ax                          ; 0x39e5
    mov ax, word [bp - 0x0004]       ; 0x39e6
    shl ax, 1                        ; 0x39e9
    mov bx, ax                       ; 0x39eb
    mov bx, word [bx - 0x7b7e]       ; 0x39ed
    mov al, byte [bx + 0x1a1]        ; 0x39f1
    sub ah, ah                       ; 0x39f5
    push ax                          ; 0x39f7
    call ds_dispatch_b27d            ; 0x39f8
    add sp, byte 4                   ; 0x39fb
    mov ax, word [bp - 0x0004]       ; 0x39fe
    shl ax, 1                        ; 0x3a01
    mov bx, ax                       ; 0x3a03
    mov bx, word [bx - 0x7b7e]       ; 0x3a05
    cmp byte [bx + 0x1a1], 1         ; 0x3a09
    jne short @..local.l217          ; 0x3a0e
    mov ax, 0                        ; 0x3a10
    jmp short @..local.l218          ; 0x3a13
@..local.l217:
    mov ax, 1                        ; 0x3a15
@..local.l218:
    mov cx, 4                        ; 0x3a18
    shl ax, cl                       ; 0x3a1b
    mov cx, ax                       ; 0x3a1d
    mov ax, word [bp - 0x0004]       ; 0x3a1f
    shl ax, 1                        ; 0x3a22
    mov bx, ax                       ; 0x3a24
    mov ax, word [bx - 0x7b70]       ; 0x3a26
    add ax, cx                       ; 0x3a2a
    push ax                          ; 0x3a2c
    mov ax, data_9136                ; 0x3a2d
    push ax                          ; 0x3a30
    call ds_dispatch_f364            ; 0x3a31
    add sp, byte 4                   ; 0x3a34
    mov ax, data_9186                ; 0x3a37
    push ax                          ; 0x3a3a
    mov ax, word [bp - 0x0004]       ; 0x3a3b
    shl ax, 1                        ; 0x3a3e
    mov bx, ax                       ; 0x3a40
    mov bx, word [bx - 0x7b7e]       ; 0x3a42
    cmp byte [bx + 0x1a1], 1         ; 0x3a46
    jne short @..local.l219          ; 0x3a4b
    mov ax, 0xc8f                    ; 0x3a4d
    jmp short @..local.l220          ; 0x3a50
@..local.l219:
    mov ax, 0xc90                    ; 0x3a52
@..local.l220:
    push ax                          ; 0x3a55
    call ds_dispatch_b53b            ; 0x3a56
    add sp, byte 4                   ; 0x3a59
    mov ax, 0x41                     ; 0x3a5c
    push ax                          ; 0x3a5f
    push ax                          ; 0x3a60
    mov ax, 1                        ; 0x3a61
    push ax                          ; 0x3a64
    mov ax, data_9186                ; 0x3a65
    push ax                          ; 0x3a68
    mov ax, data_9136                ; 0x3a69
    push ax                          ; 0x3a6c
    mov ax, 0x90e6                   ; 0x3a6d
    push ax                          ; 0x3a70
    mov ax, 2                        ; 0x3a71
    push ax                          ; 0x3a74
    call api_idx_0004_4              ; 0x3a75
    add sp, byte 0x0e                ; 0x3a78
    mov ax, 0x10                     ; 0x3a7b
    push ax                          ; 0x3a7e
    call ds_dispatch_b7e0            ; 0x3a7f
    pop cx                           ; 0x3a82
    cmp word [bp - 0x01ae], byte 0xff ; 0x3a83
    je short @..local.l221           ; 0x3a88
    push word [bp - 0x01ae]          ; 0x3a8a
    call ds_dispatch_d7aa            ; 0x3a8e
    pop cx                           ; 0x3a91
    jmp short @..local.l222          ; 0x3a92
@..local.l221:
    mov ax, 0x10                     ; 0x3a94
    push ax                          ; 0x3a97
    call ds_dispatch_d6c6            ; 0x3a98
    pop cx                           ; 0x3a9b
    mov word [data_598e], 0xffff     ; 0x3a9c
@..local.l222:
    ret                              ; 0x3aa2
math_loc_3aa3:
    mov ax, 0                        ; 0x3aa3
    call ds_dispatch_f40b            ; 0x3aa6
    mov ax, word [data_9058]         ; 0x3aa9
    mov cx, 4                        ; 0x3aac
    cwd                              ; 0x3aaf
    idiv cx                          ; 0x3ab0
    push ax                          ; 0x3ab2
    call api_idx_0004_5              ; 0x3ab3
    pop cx                           ; 0x3ab6
    push word [bp + 0x6]             ; 0x3ab7
    push word [bp + 0x4]             ; 0x3aba
    mov ax, 0x90e6                   ; 0x3abd
    push ax                          ; 0x3ac0
    call math_loc_15ab               ; 0x3ac1
    add sp, byte 6                   ; 0x3ac4
    mov ax, data_9136                ; 0x3ac7
    push ax                          ; 0x3aca
    push word [bp + 0x8]             ; 0x3acb
    call ds_dispatch_b53b            ; 0x3ace
    add sp, byte 4                   ; 0x3ad1
    mov ax, 0                        ; 0x3ad4
    push ax                          ; 0x3ad7
    push word [bp + 0xa]             ; 0x3ad8
    mov ax, 0x43                     ; 0x3adb
    cmp word [bp + 0x4], byte 0      ; 0x3ade
    jne short @..math_loc_3aa3.l1    ; 0x3ae2
    mov ax, 1                        ; 0x3ae4
@..math_loc_3aa3.l1:
    push ax                          ; 0x3ae7
    mov ax, 0x90b0                   ; 0x3ae8
    push ax                          ; 0x3aeb
    mov ax, data_9136                ; 0x3aec
    push ax                          ; 0x3aef
    mov ax, 0x90e6                   ; 0x3af0
    push ax                          ; 0x3af3
    mov ax, 2                        ; 0x3af4
    push ax                          ; 0x3af7
    call api_idx_0004_4              ; 0x3af8
    add sp, byte 0x0e                ; 0x3afb
    push word [data_9058]            ; 0x3afe
    call api_idx_0004_5              ; 0x3b02
    pop cx                           ; 0x3b05
    ret                              ; 0x3b06
api_idx_000e_5:
    mov ax, 0xfff2                   ; 0x3b07
    call ds_dispatch_f40b            ; 0x3b0a
    mov bx, word [bp + 0x4]          ; 0x3b0d
    mov al, byte [bx + 0x1f]         ; 0x3b10
    sub ah, ah                       ; 0x3b13
    mov word [bp - 0x000a], ax       ; 0x3b15
    mov al, byte [bx + 0x20]         ; 0x3b18
    sub ah, ah                       ; 0x3b1b
    mov word [bp - 0x000c], ax       ; 0x3b1d
    mov word [data_90e4], 0          ; 0x3b20
    push word [bp + 0x8]             ; 0x3b26
    push word [bp + 0x6]             ; 0x3b29
    call math_loc_1c36               ; 0x3b2c
    add sp, byte 4                   ; 0x3b2f
    push ax                          ; 0x3b32
    mov ax, 0x2c                     ; 0x3b33
    imul word [bp - 0x000c]          ; 0x3b36
    mov si, ax                       ; 0x3b39
    mov ax, word [bp - 0x000a]       ; 0x3b3b
    shl ax, 1                        ; 0x3b3e
    mov bx, ax                       ; 0x3b40
    mov bx, word [bx - 0x7b7e]       ; 0x3b42
    mov dx, word [bx + si]           ; 0x3b46
    mov bx, word [bp + 0x4]          ; 0x3b48
    mov cx, word [bx]                ; 0x3b4b
    sub cx, dx                       ; 0x3b4d
    pop ax                           ; 0x3b4f
    add ax, cx                       ; 0x3b50
    mov word [bp - 0x000e], ax       ; 0x3b52
    mov ax, word [bp + 0x6]          ; 0x3b55
    jmp near @..local.l223           ; 0x3b58
    mov ax, 0xc                      ; 0x3b5b
    push ax                          ; 0x3b5e
    mov ax, 1                        ; 0x3b5f
    push ax                          ; 0x3b62
    mov ax, 0xf                      ; 0x3b63
    push ax                          ; 0x3b66
    push word [bp - 0x000c]          ; 0x3b67
    push word [bp - 0x000a]          ; 0x3b6a
    call api_idx_0004_9              ; 0x3b6d
    add sp, byte 0x0a                ; 0x3b70
    push word [bp - 0x000e]          ; 0x3b73
    mov ax, 1                        ; 0x3b76
    push ax                          ; 0x3b79
    push word [bp + 0x8]             ; 0x3b7a
    mov ax, 7                        ; 0x3b7d
    push ax                          ; 0x3b80
    mov ax, 1                        ; 0x3b81
    push ax                          ; 0x3b84
    push word [bp - 0x000c]          ; 0x3b85
    push word [bp - 0x000a]          ; 0x3b88
    call api_idx_000a_3              ; 0x3b8b
    add sp, byte 0x0e                ; 0x3b8e
    jmp near @..local.l224           ; 0x3b91
    mov ax, 0xa                      ; 0x3b94
    push ax                          ; 0x3b97
    mov ax, 0                        ; 0x3b98
    push ax                          ; 0x3b9b
    mov ax, 0x16                     ; 0x3b9c
    push ax                          ; 0x3b9f
    push word [bp - 0x000c]          ; 0x3ba0
    push word [bp - 0x000a]          ; 0x3ba3
    call api_idx_0004_9              ; 0x3ba6
    add sp, byte 0x0a                ; 0x3ba9
    mov ax, 0                        ; 0x3bac
    push ax                          ; 0x3baf
    mov ax, 2                        ; 0x3bb0
    push ax                          ; 0x3bb3
    push word [bp + 0x8]             ; 0x3bb4
    mov ax, 0                        ; 0x3bb7
    push ax                          ; 0x3bba
    push word [bp - 0x000e]          ; 0x3bbb
    mov ax, 4                        ; 0x3bbe
    push ax                          ; 0x3bc1
    mov ax, 2                        ; 0x3bc2
    push ax                          ; 0x3bc5
    mov ax, 0xd94                    ; 0x3bc6
    push ax                          ; 0x3bc9
    mov ax, 0                        ; 0x3bca
    mov cx, word [bp + 0x8]          ; 0x3bcd
    inc cx                           ; 0x3bd0
    sub ax, cx                       ; 0x3bd1
    push ax                          ; 0x3bd3
    push word [bp - 0x000a]          ; 0x3bd4
    call api_idx_000a_4              ; 0x3bd7
    add sp, byte 0x14                ; 0x3bda
    jmp near @..local.l224           ; 0x3bdd
    mov ax, 0xb                      ; 0x3be0
    push ax                          ; 0x3be3
    mov ax, 1                        ; 0x3be4
    push ax                          ; 0x3be7
    mov ax, 8                        ; 0x3be8
    push ax                          ; 0x3beb
    mov ax, 0                        ; 0x3bec
    push ax                          ; 0x3bef
    push word [bp - 0x000a]          ; 0x3bf0
    call api_idx_0004_9              ; 0x3bf3
    add sp, byte 0x0a                ; 0x3bf6
    push word [bp - 0x000e]          ; 0x3bf9
    mov ax, 1                        ; 0x3bfc
    push ax                          ; 0x3bff
    push word [bp + 0x8]             ; 0x3c00
    mov ax, 8                        ; 0x3c03
    push ax                          ; 0x3c06
    mov ax, 1                        ; 0x3c07
    push ax                          ; 0x3c0a
    mov ax, 0                        ; 0x3c0b
    mov cx, word [bp + 0x8]          ; 0x3c0e
    inc cx                           ; 0x3c11
    inc cx                           ; 0x3c12
    sub ax, cx                       ; 0x3c13
    push ax                          ; 0x3c15
    push word [bp - 0x000a]          ; 0x3c16
    call api_idx_000a_3              ; 0x3c19
    add sp, byte 0x0e                ; 0x3c1c
    jmp near @..local.l224           ; 0x3c1f
    mov ax, 0xb                      ; 0x3c22
    push ax                          ; 0x3c25
    mov ax, 1                        ; 0x3c26
    push ax                          ; 0x3c29
    mov ax, 8                        ; 0x3c2a
    push ax                          ; 0x3c2d
    mov ax, 0                        ; 0x3c2e
    push ax                          ; 0x3c31
    push word [bp - 0x000a]          ; 0x3c32
    call api_idx_0004_9              ; 0x3c35
    add sp, byte 0x0a                ; 0x3c38
    push word [bp - 0x000e]          ; 0x3c3b
    mov ax, 1                        ; 0x3c3e
    push ax                          ; 0x3c41
    push word [bp + 0x8]             ; 0x3c42
    mov ax, 5                        ; 0x3c45
    push ax                          ; 0x3c48
    mov ax, 2                        ; 0x3c49
    push ax                          ; 0x3c4c
    mov ax, 0                        ; 0x3c4d
    mov cx, word [bp + 0x8]          ; 0x3c50
    inc cx                           ; 0x3c53
    inc cx                           ; 0x3c54
    inc cx                           ; 0x3c55
    sub ax, cx                       ; 0x3c56
    push ax                          ; 0x3c58
    push word [bp - 0x000a]          ; 0x3c59
    call api_idx_000a_3              ; 0x3c5c
    add sp, byte 0x0e                ; 0x3c5f
    jmp near @..local.l224           ; 0x3c62
    mov ax, 0                        ; 0x3c65
    push ax                          ; 0x3c68
    mov ax, word [data_8464]         ; 0x3c69
    shl ax, 1                        ; 0x3c6c
    mov bx, ax                       ; 0x3c6e
    mov bx, word [bx - 0x7b7e]       ; 0x3c70
    mov al, byte [bx + 0x18c]        ; 0x3c74
    sub ah, ah                       ; 0x3c78
    push ax                          ; 0x3c7a
    mov ax, 0xf                      ; 0x3c7b
    imul word [bp + 0x8]             ; 0x3c7e
    push ax                          ; 0x3c81
    call math_loc_2e09               ; 0x3c82
    add sp, byte 6                   ; 0x3c85
    mov cx, word [data_8464]         ; 0x3c88
    shl cx, 1                        ; 0x3c8c
    mov bx, cx                       ; 0x3c8e
    mov bx, word [bx - 0x7b7e]       ; 0x3c90
    mov byte [bx + 0x18c], al        ; 0x3c94
    jmp near @..local.l224           ; 0x3c98
    mov ax, 0xc                      ; 0x3c9b
    push ax                          ; 0x3c9e
    mov ax, 1                        ; 0x3c9f
    push ax                          ; 0x3ca2
    mov ax, 0xc                      ; 0x3ca3
    push ax                          ; 0x3ca6
    mov ax, 0                        ; 0x3ca7
    push ax                          ; 0x3caa
    push word [bp - 0x000a]          ; 0x3cab
    call api_idx_0004_9              ; 0x3cae
    add sp, byte 0x0a                ; 0x3cb1
    push word [bp - 0x000e]          ; 0x3cb4
    push word [bp + 0x8]             ; 0x3cb7
    mov ax, 0                        ; 0x3cba
    mov cx, word [bp + 0x8]          ; 0x3cbd
    inc cx                           ; 0x3cc0
    sub ax, cx                       ; 0x3cc1
    push ax                          ; 0x3cc3
    push word [bp - 0x000a]          ; 0x3cc4
    call api_idx_0006_5              ; 0x3cc7
    add sp, byte 8                   ; 0x3cca
    jmp near @..local.l224           ; 0x3ccd
    mov ax, 0xb                      ; 0x3cd0
    push ax                          ; 0x3cd3
    mov ax, 1                        ; 0x3cd4
    push ax                          ; 0x3cd7
    mov ax, 8                        ; 0x3cd8
    push ax                          ; 0x3cdb
    mov ax, 0                        ; 0x3cdc
    push ax                          ; 0x3cdf
    push word [bp - 0x000a]          ; 0x3ce0
    call api_idx_0004_9              ; 0x3ce3
    add sp, byte 0x0a                ; 0x3ce6
    push word [bp - 0x000e]          ; 0x3ce9
    mov ax, 1                        ; 0x3cec
    push ax                          ; 0x3cef
    push word [bp + 0x8]             ; 0x3cf0
    mov ax, 3                        ; 0x3cf3
    push ax                          ; 0x3cf6
    push ax                          ; 0x3cf7
    mov ax, 0                        ; 0x3cf8
    mov cx, word [bp + 0x8]          ; 0x3cfb
    add cx, byte 4                   ; 0x3cfe
    sub ax, cx                       ; 0x3d01
    push ax                          ; 0x3d03
    push word [bp - 0x000a]          ; 0x3d04

    db 0xe8, 0xd7, 0xeb, 0x83, 0xc4, 0x0e, 0xe9, 0x81, 0x22, 0xb8, 0x0c, 0x00, 0x50, 0xb8, 0x01, 0x00
    db 0x50, 0xb8, 0x0c, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76, 0xf6, 0xe8, 0xbc, 0xf6, 0x83
    db 0xc4, 0x0a, 0xff, 0x76, 0xf2, 0xb8, 0x01, 0x00, 0x50, 0xff, 0x76, 0x08, 0xb8, 0x0a, 0x00, 0x50
    db 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x8b, 0x4e, 0x08, 0x41, 0x41, 0x41, 0x2b, 0xc1, 0x50
    db 0xff, 0x76, 0xf6, 0xe8, 0x94, 0xeb, 0x83, 0xc4, 0x0e, 0xe9, 0x3e, 0x22, 0xb8, 0x0c, 0x00, 0x50
    db 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x0c, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76, 0xf6, 0xe8
    db 0x79, 0xf6, 0x83, 0xc4, 0x0a, 0xff, 0x76, 0xf2, 0xff, 0x76, 0x08, 0xb8, 0x00, 0x00, 0x8b, 0x4e
    db 0x08, 0x41, 0x41, 0x41, 0x2b, 0xc1, 0x50, 0xff, 0x76, 0xf6, 0xe8, 0xaa, 0xf3, 0x83, 0xc4, 0x08
    db 0xe9, 0x07, 0x22, 0xb8, 0x0b, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x08, 0x00, 0x50, 0xb8
    db 0x00, 0x00, 0x50, 0xff, 0x76, 0xf6, 0xe8, 0x42, 0xf6, 0x83, 0xc4, 0x0a, 0xff, 0x76, 0xf2, 0xb8
    db 0x01, 0x00, 0x50, 0xff, 0x76, 0x08, 0xb8, 0x04, 0x00, 0x50, 0xb8, 0x02, 0x00, 0x50, 0xb8, 0xf6
    db 0xff, 0x50, 0xff, 0x76, 0xf6, 0xe8, 0x22, 0xeb, 0x83, 0xc4, 0x0e, 0x8b, 0x46, 0xf6, 0xd1, 0xe0
    db 0x8b, 0xd8, 0x8b, 0x9f, 0x82, 0x84, 0x8a, 0x87, 0x92, 0x01, 0x2a, 0xe4, 0x89, 0x46, 0xfe, 0x3b
    db 0x46, 0x08, 0x7d, 0x06, 0x8b, 0x46, 0x08, 0x89, 0x46, 0xfe, 0x8b, 0x46, 0xfe, 0x40, 0x88, 0x87
    db 0x92, 0x01, 0xa1, 0x60, 0x84, 0x40, 0x8b, 0x4e, 0xf6, 0xd1, 0xe1, 0x8b, 0xd9, 0x8b, 0x9f, 0x82
    db 0x84, 0x88, 0x87, 0x98, 0x01, 0xe9, 0x92, 0x21, 0xb8, 0x0b, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0x83, 0x3e, 0x64, 0x84, 0x00, 0x75, 0x03, 0xb8
    db 0x01, 0x00, 0x50, 0xe8, 0xc5, 0xf5, 0x83, 0xc4, 0x0a, 0xff, 0x76, 0xf2, 0xb8, 0x01, 0x00, 0x50
    db 0xff, 0x76, 0x08, 0xb8, 0x04, 0x00, 0x50, 0xb8, 0x05, 0x00, 0x50, 0x83, 0x3e, 0x64, 0x84, 0x00
    db 0x74, 0x08, 0xa1, 0x64, 0x84, 0x3d, 0x06, 0x00, 0x75, 0x05, 0xb8, 0x01, 0x00, 0xeb, 0x03, 0xb8
    db 0x00, 0x00, 0x50, 0xe8, 0xa5, 0xed, 0x83, 0xc4, 0x0c, 0xe9, 0x3e, 0x21, 0xb8, 0x0c, 0x00, 0x50
    db 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x0c, 0x00, 0x50, 0xff, 0x76, 0xf4, 0xff, 0x76, 0xf6, 0xe8, 0x7a
    db 0xf5, 0x83, 0xc4, 0x0a, 0xff, 0x76, 0xf2, 0xb8, 0x03, 0x00, 0x50, 0xff, 0x76, 0x08, 0xb8, 0x06
    db 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xff, 0x76, 0xf4, 0xff, 0x76, 0xf6, 0xe8, 0x5b, 0xea, 0x83
    db 0xc4, 0x0e, 0xe9, 0x05, 0x21, 0xb8, 0x0a, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x16, 0x00
    db 0x50, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76, 0xf6, 0xe8, 0x40, 0xf5, 0x83, 0xc4, 0x0a, 0xff, 0x76
    db 0x08, 0xb8, 0x03, 0x00, 0x50, 0xff, 0x76, 0x08, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76, 0xf2, 0xb8
    db 0x01, 0x00, 0x50, 0xb8, 0x0a, 0x00, 0x50, 0xb8, 0x91, 0x0d, 0x50, 0xb8, 0xf6, 0xff, 0x50, 0xff
    db 0x76, 0xf6, 0xe8, 0xcc, 0xea, 0x83, 0xc4, 0x14, 0xe9, 0xbf, 0x20, 0xb8, 0x0a, 0x00, 0x50, 0xb8
    db 0x00, 0x00, 0x50, 0xb8, 0x16, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76, 0xf6, 0xe8, 0xfa
    db 0xf4, 0x83, 0xc4, 0x0a, 0xb8, 0x01, 0x00, 0x50, 0xff, 0x76, 0x08, 0xff, 0x76, 0xf2, 0xb8, 0x00
    db 0x00, 0x8b, 0x4e, 0x08, 0x41, 0x41, 0x41, 0x2b, 0xc1, 0x50, 0xff, 0x76, 0xf6, 0xe8, 0x52, 0xef
    db 0x83, 0xc4, 0x0a, 0xe9, 0x84, 0x20, 0xb8, 0x0a, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x16
    db 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76, 0xf6, 0xe8, 0xbf, 0xf4, 0x83, 0xc4, 0x0a, 0xb8
    db 0x00, 0x00, 0x50, 0xff, 0x76, 0x08, 0xff, 0x76, 0xf2, 0x8b, 0x4e, 0x08, 0x41, 0x41, 0x41, 0x2b
    db 0xc1, 0x50, 0xff, 0x76, 0xf6, 0xe8, 0x1a, 0xef, 0x83, 0xc4, 0x0a, 0xe9, 0x4c, 0x20, 0xc7, 0x46
    db 0xfe, 0x00, 0x00, 0xeb, 0x49, 0xb8, 0x2c, 0x00, 0xf7, 0x6e, 0xfe, 0x8b, 0xf0, 0xa1, 0x64, 0x84
    db 0xd1, 0xe0, 0x8b, 0xd8, 0x8b, 0x9f, 0x82, 0x84, 0x80, 0x78, 0x22, 0x03, 0x73, 0x2d, 0xb8, 0x00
    db 0x00, 0x50, 0x8a, 0x40, 0x29, 0x98, 0x50, 0x8b, 0x46, 0x08, 0xd1, 0xe0, 0x50, 0xe8, 0x92, 0xee
    db 0x83, 0xc4, 0x06, 0x50, 0xb8, 0x2c, 0x00, 0xf7, 0x6e, 0xfe, 0x8b, 0xf0, 0xa1, 0x64, 0x84, 0xd1
    db 0xe0, 0x8b, 0xd8, 0x8b, 0x9f, 0x82, 0x84, 0x58, 0x88, 0x40, 0x29, 0xff, 0x46, 0xfe, 0xa1, 0x64
    db 0x84, 0xd1, 0xe0, 0x8b, 0xd8, 0x8b, 0x9f, 0x82, 0x84, 0x8a, 0x87, 0xa1, 0x01, 0x2a, 0xe4, 0x3b
    db 0x46, 0xfe, 0x7f, 0xa1, 0xe9, 0xe3, 0x1f, 0xb8, 0x00, 0x00, 0x50, 0xa1, 0x64, 0x84, 0xd1, 0xe0
    db 0x8b, 0xd8, 0x8b, 0x9f, 0x82, 0x84, 0x8a, 0x87, 0x8d, 0x01, 0x2a, 0xe4, 0x50, 0xb8, 0x0f, 0x00
    db 0xf7, 0x6e, 0x08, 0x50, 0xe8, 0x3b, 0xee, 0x83, 0xc4, 0x06, 0x8b, 0x0e, 0x64, 0x84, 0xd1, 0xe1
    db 0x8b, 0xd9, 0x8b, 0x9f, 0x82, 0x84, 0x88, 0x87, 0x8d, 0x01, 0xe9, 0xad, 0x1f, 0xb8, 0x0b, 0x00
    db 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x0a, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76, 0xf6
    db 0xe8, 0xe8, 0xf3, 0x83, 0xc4, 0x0a, 0xff, 0x76, 0xf2, 0xb8, 0x03, 0x00, 0x50, 0xff, 0x76, 0x08
    db 0xb8, 0x04, 0x00, 0x50, 0xb8, 0x03, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x8b, 0x4e, 0x08, 0x83, 0xc1
    db 0x04, 0x2b, 0xc1, 0x50, 0xff, 0x76, 0xf6, 0xe8, 0xc0, 0xe8, 0x83, 0xc4, 0x0e, 0xe9, 0x6a, 0x1f
    db 0xb8, 0x0a, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x16, 0x00, 0x50, 0xff, 0x76, 0xf4, 0xff
    db 0x76, 0xf6, 0xe8, 0xa6, 0xf3, 0x83, 0xc4, 0x0a, 0xff, 0x76, 0x08, 0xb8, 0x01, 0x00, 0x50, 0x8b
    db 0x46, 0x08, 0xd1, 0xe0, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76, 0xf2, 0xb8, 0x03, 0x00, 0x50
    db 0xb8, 0x04, 0x00, 0x50, 0xb8, 0x93, 0x0d, 0x50, 0xff, 0x76, 0xf4, 0xff, 0x76, 0xf6, 0xe8, 0x30
    db 0xe9, 0x83, 0xc4, 0x14, 0xe9, 0x23, 0x1f, 0x8b, 0x46, 0x08, 0x48, 0xb9, 0x02, 0x00, 0x99, 0xf7
    db 0xf9, 0x40, 0x89, 0x46, 0xfc, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x2c, 0x00, 0xf7, 0x6e, 0xf4, 0x8b
    db 0xf0, 0xa1, 0x64, 0x84, 0xd1, 0xe0, 0x8b, 0xd8, 0x8b, 0x9f, 0x82, 0x84, 0x8a, 0x40, 0x28, 0x98
    db 0x50, 0xff, 0x76, 0x08, 0xe8, 0x6b, 0xed, 0x83, 0xc4, 0x06, 0x50, 0xb8, 0x2c, 0x00, 0xf7, 0x6e
    db 0xf4, 0x8b, 0xf0, 0xa1, 0x64, 0x84, 0xd1, 0xe0, 0x8b, 0xd8, 0x8b, 0x9f, 0x82, 0x84, 0x58, 0x88
    db 0x40, 0x28, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x2c, 0x00, 0xf7, 0x6e, 0xf4, 0x8b, 0xf0, 0xa1, 0x64
    db 0x84, 0xd1, 0xe0, 0x8b, 0xd8, 0x8b, 0x9f, 0x82, 0x84, 0x8a, 0x40, 0x26, 0x98, 0x50, 0xff, 0x76
    db 0xfc, 0xe8, 0x2e, 0xed, 0x83, 0xc4, 0x06, 0x50, 0xb8, 0x2c, 0x00, 0xf7, 0x6e, 0xf4, 0x8b, 0xf0
    db 0xa1, 0x64, 0x84, 0xd1, 0xe0, 0x8b, 0xd8, 0x8b, 0x9f, 0x82, 0x84, 0x58, 0x88, 0x40, 0x26, 0xb8
    db 0x01, 0x00, 0x50, 0xb8, 0x2c, 0x00, 0xf7, 0x6e, 0xf4, 0x8b, 0xf0, 0xa1, 0x64, 0x84, 0xd1, 0xe0
    db 0x8b, 0xd8, 0x8b, 0x9f, 0x82, 0x84, 0x8a, 0x40, 0x27, 0x98, 0x50, 0xff, 0x76, 0xfc, 0xe8, 0xf1
    db 0xec, 0x83, 0xc4, 0x06, 0x50, 0xb8, 0x2c, 0x00, 0xf7, 0x6e, 0xf4, 0x8b, 0xf0, 0xa1, 0x64, 0x84
    db 0xd1, 0xe0, 0x8b, 0xd8, 0x8b, 0x9f, 0x82, 0x84, 0x58, 0x88, 0x40, 0x27, 0xb8, 0x00, 0x00, 0x50
    db 0xb8, 0x2c, 0x00, 0xf7, 0x6e, 0xf4, 0x8b, 0xf0, 0xa1, 0x64, 0x84, 0xd1, 0xe0, 0x8b, 0xd8, 0x8b
    db 0x9f, 0x82, 0x84, 0x8a, 0x40, 0x29, 0x98, 0x50, 0x8b, 0x46, 0x08, 0xd1, 0xe0, 0x50, 0xe8, 0xb1
    db 0xec, 0x83, 0xc4, 0x06, 0x50, 0xb8, 0x2c, 0x00, 0xf7, 0x6e, 0xf4, 0x8b, 0xf0, 0xa1, 0x64, 0x84
    db 0xd1, 0xe0, 0x8b, 0xd8, 0x8b, 0x9f, 0x82, 0x84, 0x58, 0x88, 0x40, 0x29, 0xe9, 0x1b, 0x1e, 0xb8
    db 0x0b, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x0a, 0x00, 0x50, 0xff, 0x76, 0xf4, 0xff, 0x76
    db 0xf6, 0xe8, 0x57, 0xf2, 0x83, 0xc4, 0x0a, 0xff, 0x76, 0xf2, 0xb8, 0x03, 0x00, 0x50, 0xff, 0x76
    db 0x08, 0xb8, 0x0a, 0x00, 0x50, 0xb8, 0x03, 0x00, 0x50, 0xff, 0x76, 0xf4, 0xff, 0x76, 0xf6, 0xe8
    db 0x38, 0xe7, 0x83, 0xc4, 0x0e, 0xe9, 0xe2, 0x1d, 0xb8, 0x0a, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50
    db 0xb8, 0x16, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76, 0xf6, 0xe8, 0x1d, 0xf2, 0x83, 0xc4
    db 0x0a, 0xff, 0x76, 0xf2, 0xb8, 0x0b, 0x00, 0x50, 0xff, 0x76, 0x08, 0xb8, 0x05, 0x00, 0x50, 0xb8
    db 0x02, 0x00, 0x50, 0xb8, 0xf6, 0xff, 0x50, 0xff, 0x76, 0xf6, 0xe8, 0x7b, 0xe4, 0x83, 0xc4, 0x0e
    db 0x8b, 0x46, 0xf6, 0xd1, 0xe0, 0x8b, 0xd8, 0x8b, 0x9f, 0x82, 0x84, 0x8a, 0x87, 0x96, 0x01, 0x2a
    db 0xe4, 0x89, 0x46, 0xfe, 0x3b, 0x46, 0x08, 0x7d, 0x06, 0x8b, 0x46, 0x08, 0x89, 0x46, 0xfe, 0x8b
    db 0x46, 0xfe, 0x40, 0x88, 0x87, 0x96, 0x01, 0xa1, 0x60, 0x84, 0x40, 0x8b, 0x4e, 0xf6, 0xd1, 0xe1
    db 0x8b, 0xd9, 0x8b, 0x9f, 0x82, 0x84, 0x88, 0x87, 0x9c, 0x01, 0xe9, 0x6d, 0x1d, 0xb8, 0x06, 0x00
    db 0x50, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x17, 0x00, 0x50, 0xff, 0x76, 0xf4, 0xff, 0x76, 0xf6, 0xe8
    db 0xa9, 0xf1, 0x83, 0xc4, 0x0a, 0xff, 0x76, 0x08, 0xb8, 0x02, 0x00, 0x50, 0xb8, 0x0a, 0x00, 0xf7
    db 0x6e, 0x08, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x05, 0x00, 0x50, 0x50, 0xb8, 0x01, 0x00, 0x50
    db 0xff, 0x76, 0xf2, 0xff, 0x76, 0x08, 0xb8, 0x06, 0x00, 0x50, 0xb8, 0x95, 0x0d, 0x50, 0xff, 0x76
    db 0xf4, 0xff, 0x76, 0xf6, 0xe8, 0x1d, 0xe8, 0x83, 0xc4, 0x1a, 0xe9, 0x1d, 0x1d, 0xb8, 0x00, 0x00
    db 0x50, 0xa1, 0x64, 0x84, 0xd1, 0xe0, 0x8b, 0xd8, 0x8b, 0x9f, 0x82, 0x84, 0x8a, 0x87, 0x8e, 0x01
    db 0x2a, 0xe4, 0x50, 0xb8, 0x0f, 0x00, 0xf7, 0x6e, 0x08, 0x50, 0xe8, 0x75, 0xeb, 0x83, 0xc4, 0x06
    db 0x8b, 0x0e, 0x64, 0x84, 0xd1, 0xe1, 0x8b, 0xd9, 0x8b, 0x9f, 0x82, 0x84, 0x88, 0x87, 0x8e, 0x01
    db 0xe9, 0xe7, 0x1c, 0xb8, 0x0c, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x0e, 0x00, 0x50, 0xb8
    db 0x00, 0x00, 0x50, 0xff, 0x76, 0xf6, 0xe8, 0x22, 0xf1, 0x83, 0xc4, 0x0a, 0xff, 0x76, 0xf2, 0xb8
    db 0x05, 0x00, 0x50, 0xff, 0x76, 0x08, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0xf6, 0xff, 0x50, 0xff
    db 0x76, 0xf6, 0xe8, 0x05, 0xe6, 0x83, 0xc4, 0x0e, 0xe9, 0xaf, 0x1c, 0xb8, 0x06, 0x00, 0x50, 0xb8
    db 0x01, 0x00, 0x50, 0xb8, 0x17, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76, 0xf6, 0xe8, 0xea
    db 0xf0, 0x83, 0xc4, 0x0a, 0xff, 0x76, 0x08, 0xb8, 0x04, 0x00, 0x50, 0xff, 0x76, 0x08, 0xb8, 0x00
    db 0x00, 0x50, 0xb8, 0x08, 0x00, 0x50, 0xb8, 0x06, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xff, 0x76
    db 0xf2, 0xff, 0x76, 0x08, 0xb8, 0x05, 0x00, 0x50, 0xb8, 0x98, 0x0d, 0x50, 0xb8, 0xfd, 0xff, 0x50
    db 0xff, 0x76, 0xf6, 0xe8, 0x5e, 0xe7, 0x83, 0xc4, 0x1a, 0xe9, 0x5e, 0x1c, 0xb8, 0x00, 0x00, 0x50
    db 0xa1, 0x64, 0x84, 0xd1, 0xe0, 0x8b, 0xd8, 0x8b, 0x9f, 0x82, 0x84, 0x8a, 0x87, 0x8f, 0x01, 0x2a
    db 0xe4, 0x50, 0xb8, 0x0f, 0x00, 0xf7, 0x6e, 0x08, 0x50, 0xe8, 0xb6, 0xea, 0x83, 0xc4, 0x06, 0x8b
    db 0x0e, 0x64, 0x84, 0xd1, 0xe1, 0x8b, 0xd9, 0x8b, 0x9f, 0x82, 0x84, 0x88, 0x87, 0x8f, 0x01, 0xe9
    db 0x28, 0x1c, 0xb8, 0x0a, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x16, 0x00, 0x50, 0xb8, 0x00
    db 0x00, 0x50, 0xff, 0x76, 0xf6, 0xe8, 0x63, 0xf0, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0xb8
    db 0x02, 0x00, 0x50, 0xff, 0x76, 0x08, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76, 0xf2, 0x50, 0xb8, 0x0c
    db 0x00, 0x50, 0xb8, 0x90, 0x0d, 0x50, 0xb8, 0x00, 0x00, 0x8b, 0x4e, 0x08, 0x41, 0x41, 0x41, 0x2b
    db 0xc1, 0x50, 0xff, 0x76, 0xf6, 0xe8, 0xe9, 0xe5, 0x83, 0xc4, 0x14, 0xe9, 0xdc, 0x1b, 0xb8, 0x06
    db 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x17, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76
    db 0xf6, 0xe8, 0x17, 0xf0, 0x83, 0xc4, 0x0a, 0xff, 0x76, 0x08, 0xb8, 0x02, 0x00, 0x50, 0xb8, 0x0a
    db 0x00, 0xf7, 0x6e, 0x08, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x05, 0x00, 0x50, 0xb8, 0x04, 0x00
    db 0x50, 0xb8, 0x01, 0x00, 0x50, 0xff, 0x76, 0xf2, 0xff, 0x76, 0x08, 0xb8, 0x06, 0x00, 0x50, 0xb8
    db 0x95, 0x0d, 0x50, 0xb8, 0xf6, 0xff, 0x50, 0xff, 0x76, 0xf6, 0xe8, 0x87, 0xe6, 0x83, 0xc4, 0x1a
    db 0x8b, 0x46, 0xf6, 0xd1, 0xe0, 0x8b, 0xd8, 0x8b, 0x9f, 0x82, 0x84, 0x8a, 0x87, 0x93, 0x01, 0x2a
    db 0xe4, 0x89, 0x46, 0xfe, 0x3b, 0x46, 0x08, 0x7d, 0x06, 0x8b, 0x46, 0x08, 0x89, 0x46, 0xfe, 0x8b
    db 0x46, 0xfe, 0x40, 0x88, 0x87, 0x93, 0x01, 0xa1, 0x60, 0x84, 0x40, 0x8b, 0x4e, 0xf6, 0xd1, 0xe1
    db 0x8b, 0xd9, 0x8b, 0x9f, 0x82, 0x84, 0x88, 0x87, 0x99, 0x01, 0xe9, 0x4d, 0x1b, 0xb8, 0x06, 0x00
    db 0x50, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x18, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76, 0xf6
    db 0xe8, 0x88, 0xef, 0x83, 0xc4, 0x0a, 0xff, 0x76, 0xf2, 0xb8, 0x05, 0x00, 0x50, 0xff, 0x76, 0x08
    db 0xb8, 0x07, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x8b, 0x4e, 0x08, 0x41, 0x41
    db 0x41, 0x2b, 0xc1, 0x50, 0xff, 0x76, 0xf6, 0xe8, 0x60, 0xe4, 0x83, 0xc4, 0x0e, 0xe9, 0x0a, 0x1b
    db 0xb8, 0x03, 0x00, 0x50, 0x50, 0xe8, 0xb6, 0xd6, 0x83, 0xc4, 0x04, 0xb8, 0x03, 0x00, 0x50, 0xb8
    db 0x41, 0x00, 0x50, 0xb8, 0x98, 0x0c, 0x50, 0xe8, 0xfc, 0xd1, 0x83, 0xc4, 0x06, 0xff, 0x36, 0x58
    db 0x90, 0xe8, 0xb4, 0xd5, 0x59, 0xc7, 0x46, 0xfe, 0x00, 0x00, 0xa1, 0x64, 0x84, 0xd1, 0xe0, 0x8b
    db 0xd8, 0x8b, 0x9f, 0x82, 0x84, 0x8b, 0x76, 0xfe, 0x8a, 0x80, 0x92, 0x01, 0x2a, 0xe4, 0x2b, 0x46
    db 0x08, 0x89, 0x46, 0xfc, 0x3d, 0x00, 0x00, 0x7d, 0x05, 0xc7, 0x46, 0xfc, 0x00, 0x00, 0x8a, 0x46
    db 0xfc, 0x88, 0x80, 0x92, 0x01, 0xff, 0x46, 0xfe, 0x8b, 0x46, 0xfe, 0x3d, 0x06, 0x00, 0x7c, 0xca
    db 0xa1, 0x64, 0x84, 0xd1, 0xe0, 0x8b, 0xd8, 0x8b, 0x9f, 0x82, 0x84, 0x80, 0xbf, 0x8f, 0x01, 0x00
    db 0x76, 0x4a, 0xb8, 0x0a, 0x00, 0xf7, 0x6e, 0x08, 0x8b, 0xc8, 0x8a, 0x87, 0x8f, 0x01, 0x2a, 0xe4
    db 0x2b, 0xc1, 0x89, 0x46, 0xfc, 0x3d, 0x00, 0x00, 0x7d, 0x05, 0xc7, 0x46, 0xfc, 0x00, 0x00, 0x8a
    db 0x46, 0xfc, 0x88, 0x87, 0x8f, 0x01, 0xb8, 0x03, 0x00, 0x50, 0x50, 0xe8, 0x20, 0xd6, 0x83, 0xc4
    db 0x04, 0xb8, 0x03, 0x00, 0x50, 0xb8, 0x41, 0x00, 0x50, 0xb8, 0x9a, 0x0c, 0x83, 0x7e, 0xfc, 0x00
    db 0x75, 0x03, 0xb8, 0x99, 0x0c, 0x50, 0xe8, 0x5d, 0xd1, 0x83, 0xc4, 0x06, 0xe9, 0x4b, 0x1a, 0xb8
    db 0x06, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x17, 0x00, 0x50, 0xff, 0x76, 0xf4, 0xff, 0x76
    db 0xf6, 0xe8, 0x87, 0xee, 0x83, 0xc4, 0x0a, 0xb8, 0x64, 0x00, 0x50, 0xe8, 0x44, 0x72, 0x59, 0x50
    db 0xb8, 0x05, 0x00, 0xf7, 0x6e, 0x08, 0x8b, 0xc8, 0x58, 0x3b, 0xc1, 0x7d, 0x27, 0xb8, 0x00, 0x00
    db 0x50, 0x50, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xff, 0x76, 0xf2, 0xb8, 0x03, 0x00, 0x50, 0xb8, 0x06
    db 0x00, 0x50, 0xb8, 0xa1, 0x0d, 0x50, 0xff, 0x76, 0xf4, 0xff, 0x76, 0xf6, 0xe8, 0x02, 0xe4, 0x83
    db 0xc4, 0x14, 0xeb, 0x39, 0xb8, 0x0a, 0x00, 0xf7, 0x6e, 0x08, 0x50, 0xb8, 0x04, 0x00, 0x50, 0xb8
    db 0x0a, 0x00, 0xf7, 0x6e, 0x08, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x05, 0x00, 0x50, 0x50, 0xb8
    db 0x03, 0x00, 0x50, 0xff, 0x76, 0xf2, 0xff, 0x76, 0x08, 0xb8, 0x06, 0x00, 0x50, 0xb8, 0x95, 0x0d
    db 0x50, 0xff, 0x76, 0xf4, 0xff, 0x76, 0xf6, 0xe8, 0xba, 0xe4, 0x83, 0xc4, 0x1a, 0xe9, 0xba, 0x19
    db 0xb8, 0x06, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x17, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50
    db 0xff, 0x76, 0xf6, 0xe8, 0xf5, 0xed, 0x83, 0xc4, 0x0a, 0xff, 0x76, 0x08, 0xb8, 0x04, 0x00, 0x50
    db 0xff, 0x76, 0x08, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x08, 0x00, 0x50, 0xb8, 0x03, 0x00, 0x50, 0xb8
    db 0x02, 0x00, 0x50, 0xff, 0x76, 0xf2, 0xff, 0x76, 0x08, 0xb8, 0x05, 0x00, 0x50, 0xb8, 0x98, 0x0d
    db 0x50, 0xb8, 0xf6, 0xff, 0x50, 0xff, 0x76, 0xf6, 0xe8, 0x69, 0xe4, 0x83, 0xc4, 0x1a, 0x8b, 0x46
    db 0xf6, 0xd1, 0xe0, 0x8b, 0xd8, 0x8b, 0x9f, 0x82, 0x84, 0x8a, 0x87, 0x94, 0x01, 0x2a, 0xe4, 0x89
    db 0x46, 0xfe, 0x3b, 0x46, 0x08, 0x7d, 0x06, 0x8b, 0x46, 0x08, 0x89, 0x46, 0xfe, 0x8b, 0x46, 0xfe
    db 0x40, 0x88, 0x87, 0x94, 0x01, 0xa1, 0x60, 0x84, 0x40, 0x8b, 0x4e, 0xf6, 0xd1, 0xe1, 0x8b, 0xd9
    db 0x8b, 0x9f, 0x82, 0x84, 0x88, 0x87, 0x9a, 0x01, 0xe9, 0x2f, 0x19, 0xb8, 0x06, 0x00, 0x50, 0xb8
    db 0x01, 0x00, 0x50, 0xb8, 0x17, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76, 0xf6, 0xe8, 0x6a
    db 0xed, 0x83, 0xc4, 0x0a, 0xff, 0x76, 0x08, 0xb8, 0x04, 0x00, 0x50, 0xff, 0x76, 0x08, 0xb8, 0x00
    db 0x00, 0x50, 0xb8, 0x08, 0x00, 0x50, 0xb8, 0x06, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xff, 0x76
    db 0xf2, 0xff, 0x76, 0x08, 0xb8, 0x05, 0x00, 0x50, 0xb8, 0x98, 0x0d, 0x50, 0xb8, 0x00, 0x00, 0x8b
    db 0x4e, 0x08, 0x41, 0x41, 0x41, 0x2b, 0xc1, 0x50, 0xff, 0x76, 0xf6, 0xe8, 0xd6, 0xe3, 0x83, 0xc4
    db 0x1a, 0xe9, 0xd6, 0x18, 0xb8, 0x06, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x17, 0x00, 0x50
    db 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76, 0xf6, 0xe8, 0x11, 0xed, 0x83, 0xc4, 0x0a, 0xff, 0x76, 0x08
    db 0xff, 0x76, 0x08, 0xff, 0x76, 0x08, 0xb8, 0x01, 0x00, 0x50, 0xff, 0x76, 0xf2, 0xb8, 0x03, 0x00
    db 0x50, 0xb8, 0x05, 0x00, 0x50, 0xb8, 0xa2, 0x0d, 0x50, 0x83, 0x3e, 0x64, 0x84, 0x00, 0x74, 0x08
    db 0xa1, 0x64, 0x84, 0x3d, 0x06, 0x00, 0x75, 0x05, 0xb8, 0x01, 0x00, 0xeb, 0x03, 0xb8, 0x00, 0x00
    db 0x50, 0xe8, 0x60, 0xe6, 0x83, 0xc4, 0x12, 0xe9, 0x80, 0x18, 0xb8, 0x06, 0x00, 0x50, 0xb8, 0x00
    db 0x00, 0x50, 0xb8, 0x17, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0x83, 0x3e, 0x64, 0x84, 0x00, 0x75
    db 0x03, 0xb8, 0x01, 0x00, 0x50, 0xe8, 0xb3, 0xec, 0x83, 0xc4, 0x0a, 0xff, 0x76, 0xf2, 0xb8, 0x05
    db 0x00, 0x50, 0xff, 0x76, 0x08, 0xb8, 0x04, 0x00, 0x50, 0x50, 0x83, 0x3e, 0x64, 0x84, 0x00, 0x74
    db 0x08, 0xa1, 0x64, 0x84, 0x3d, 0x06, 0x00, 0x75, 0x05, 0xb8, 0x01, 0x00, 0xeb, 0x03, 0xb8, 0x00
    db 0x00, 0x50, 0xe8, 0x96, 0xe4, 0x83, 0xc4, 0x0c, 0xe9, 0x2f, 0x18, 0xb8, 0x06, 0x00, 0x50, 0xb8
    db 0x00, 0x00, 0x50, 0xb8, 0x17, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76, 0xf6, 0xe8, 0x6a
    db 0xec, 0x83, 0xc4, 0x0a, 0xff, 0x76, 0x08, 0xff, 0x76, 0x08, 0xff, 0x76, 0x08, 0xb8, 0x01, 0x00
    db 0x50, 0xff, 0x76, 0xf2, 0xb8, 0x03, 0x00, 0x50, 0xb8, 0x0b, 0x00, 0x50, 0xb8, 0xa9, 0x0d, 0x50
    db 0xff, 0x76, 0xf6, 0xe8, 0xde, 0xe4, 0x83, 0xc4, 0x12, 0x8b, 0x46, 0xf6, 0xd1, 0xe0, 0x8b, 0xd8
    db 0x8b, 0x9f, 0x82, 0x84, 0x8a, 0x87, 0x97, 0x01, 0x2a, 0xe4, 0x89, 0x46, 0xfe, 0x3b, 0x46, 0x08
    db 0x7d, 0x06, 0x8b, 0x46, 0x08, 0x89, 0x46, 0xfe, 0x8b, 0x46, 0xfe, 0x40, 0x88, 0x87, 0x97, 0x01
    db 0xa1, 0x60, 0x84, 0x40, 0x8b, 0x4e, 0xf6, 0xd1, 0xe1, 0x8b, 0xd9, 0x8b, 0x9f, 0x82, 0x84, 0x88
    db 0x87, 0x9d, 0x01, 0xe9, 0xb4, 0x17, 0xb8, 0x06, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x17
    db 0x00, 0x50, 0xff, 0x76, 0xf4, 0xff, 0x76, 0xf6, 0xe8, 0xf0, 0xeb, 0x83, 0xc4, 0x0a, 0xff, 0x76
    db 0xf2, 0xb8, 0x08, 0x00, 0x50, 0xff, 0x76, 0x08, 0xb8, 0x07, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50
    db 0xff, 0x76, 0xf4, 0xff, 0x76, 0xf6, 0xe8, 0xd1, 0xe0, 0x83, 0xc4, 0x0e, 0xe9, 0x7b, 0x17, 0xb8
    db 0x0a, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x16, 0x00, 0x50, 0xff, 0x76, 0xf4, 0xff, 0x76
    db 0xf6, 0xe8, 0xb7, 0xeb, 0x83, 0xc4, 0x0a, 0xff, 0x76, 0x08, 0xb8, 0x02, 0x00, 0x50, 0xff, 0x76
    db 0x08, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76, 0xf2, 0xb8, 0x09, 0x00, 0x50, 0xb8, 0x08, 0x00, 0x50
    db 0xb8, 0x9f, 0x0d, 0x50, 0xb8, 0x00, 0x00, 0x8b, 0x4e, 0x08, 0x41, 0x41, 0x2b, 0xc1, 0x50, 0xff
    db 0x76, 0xf6, 0xe8, 0x3c, 0xe1, 0x83, 0xc4, 0x14, 0xe9, 0x2f, 0x17, 0x83, 0x7e, 0xf6, 0x00, 0x75
    db 0x14, 0xb8, 0x55, 0x00, 0x50, 0xb8, 0x53, 0x0c, 0x50, 0xff, 0x76, 0xf4, 0xff, 0x76, 0xf6, 0xe8
    db 0x2a, 0xf2, 0x83, 0xc4, 0x08, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x2c, 0x00, 0xf7, 0x6e, 0xf4, 0x8b
    db 0xf0, 0x8b, 0x46, 0xf6, 0xd1, 0xe0, 0x8b, 0xd8, 0x8b, 0x9f, 0x82, 0x84, 0x8a, 0x40, 0x26, 0x98
    db 0x50, 0xff, 0x76, 0x08, 0xe8, 0x6b, 0xe5, 0x83, 0xc4, 0x06, 0x50, 0xb8, 0x2c, 0x00, 0xf7, 0x6e
    db 0xf4, 0x8b, 0xf0, 0x8b, 0x46, 0xf6, 0xd1, 0xe0, 0x8b, 0xd8, 0x8b, 0x9f, 0x82, 0x84, 0x58, 0x88
    db 0x40, 0x26, 0xe9, 0xd5, 0x16, 0xb8, 0x06, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x15, 0x00
    db 0x50, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76, 0xf6, 0xe8, 0x10, 0xeb, 0x83, 0xc4, 0x0a, 0xff, 0x76
    db 0xf2, 0xb8, 0x07, 0x00, 0x50, 0xff, 0x76, 0x08, 0xb8, 0x04, 0x00, 0x50, 0xb8, 0x02, 0x00, 0x50
    db 0xb8, 0x00, 0x00, 0x8b, 0x4e, 0x08, 0x41, 0x41, 0x41, 0x2b, 0xc1, 0x50, 0xff, 0x76, 0xf6, 0xe8
    db 0xe8, 0xdf, 0x83, 0xc4, 0x0e, 0xe9, 0x92, 0x16, 0xb8, 0x0c, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50
    db 0xb8, 0x0c, 0x00, 0x50, 0xff, 0x76, 0xf4, 0xff, 0x76, 0xf6, 0xe8, 0xce, 0xea, 0x83, 0xc4, 0x0a
    db 0xff, 0x76, 0x08, 0xb8, 0x01, 0x00, 0x50, 0x8b, 0x46, 0x08, 0xd1, 0xe0, 0x50, 0xb8, 0x00, 0x00
    db 0x50, 0xff, 0x76, 0xf2, 0xb8, 0x03, 0x00, 0x50, 0xb8, 0x04, 0x00, 0x50, 0xb8, 0xa0, 0x0d, 0x50
    db 0xff, 0x76, 0xf4, 0xff, 0x76, 0xf6, 0xe8, 0x58, 0xe0, 0x83, 0xc4, 0x14, 0xe9, 0x4b, 0x16, 0xb8
    db 0x06, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x10, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xff
    db 0x76, 0xf6, 0xe8, 0x86, 0xea, 0x83, 0xc4, 0x0a, 0xff, 0x76, 0xf2, 0xb8, 0x07, 0x00, 0x50, 0xff
    db 0x76, 0x08, 0xb8, 0x06, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0xf6, 0xff, 0x50, 0xff, 0x76
    db 0xf6, 0xe8, 0x66, 0xdf, 0x83, 0xc4, 0x0e, 0xe9, 0x10, 0x16, 0xb8, 0x06, 0x00, 0x50, 0xb8, 0x01
    db 0x00, 0x50, 0xb8, 0x17, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76, 0xf6, 0xe8, 0x4b, 0xea
    db 0x83, 0xc4, 0x0a, 0xff, 0x76, 0xf2, 0xb8, 0x08, 0x00, 0x50, 0xff, 0x76, 0x08, 0xb8, 0x06, 0x00
    db 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0xf6, 0xff, 0x50, 0xff, 0x76, 0xf6, 0xe8, 0x2b, 0xdf, 0x83
    db 0xc4, 0x0e, 0x8b, 0x46, 0xf6, 0xd1, 0xe0, 0x8b, 0xd8, 0x8b, 0x9f, 0x82, 0x84, 0x8a, 0x87, 0x95
    db 0x01, 0x2a, 0xe4, 0x89, 0x46, 0xfe, 0x3b, 0x46, 0x08, 0x7d, 0x06, 0x8b, 0x46, 0x08, 0x89, 0x46
    db 0xfe, 0x8b, 0x46, 0xfe, 0x40, 0x88, 0x87, 0x95, 0x01, 0xa1, 0x60, 0x84, 0x40, 0x8b, 0x4e, 0xf6
    db 0xd1, 0xe1, 0x8b, 0xd9, 0x8b, 0x9f, 0x82, 0x84, 0x88, 0x87, 0x9b, 0x01, 0xe9, 0x9b, 0x15, 0xb8
    db 0x0a, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x16, 0x00, 0x50, 0xff, 0x76, 0xf4, 0xff, 0x76
    db 0xf6, 0xe8, 0xd7, 0xe9, 0x83, 0xc4, 0x0a, 0xff, 0x76, 0xf2, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76
    db 0x08, 0xff, 0x76, 0xf6, 0xe8, 0xe2, 0xd4, 0x83, 0xc4, 0x08, 0x89, 0x46, 0xfc, 0xc7, 0x46, 0xfe
    db 0x00, 0x00, 0xeb, 0x40, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x2c, 0x00, 0xf7, 0x6e, 0xfe, 0x8b, 0xf0
    db 0x8b, 0x46, 0xf6, 0xd1, 0xe0, 0x8b, 0xd8, 0x8b, 0x9f, 0x82, 0x84, 0x8a, 0x40, 0x26, 0x98, 0x50
    db 0xff, 0x76, 0xfc, 0xe8, 0xbc, 0xe3, 0x83, 0xc4, 0x06, 0x50, 0xb8, 0x2c, 0x00, 0xf7, 0x6e, 0xfe
    db 0x8b, 0xf0, 0x8b, 0x46, 0xf6, 0xd1, 0xe0, 0x8b, 0xd8, 0x8b, 0x9f, 0x82, 0x84, 0x58, 0x88, 0x40
    db 0x26, 0xff, 0x46, 0xfe, 0x8b, 0x46, 0xf6, 0xd1, 0xe0, 0x8b, 0xd8, 0x8b, 0x9f, 0x82, 0x84, 0x8a
    db 0x87, 0xa1, 0x01, 0x2a, 0xe4, 0x3b, 0x46, 0xfe, 0x7f, 0xaa, 0xe9, 0x0d, 0x15, 0xb8, 0x0a, 0x00
    db 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x16, 0x00, 0x50, 0xff, 0x76, 0xf4, 0xff, 0x76, 0xf6, 0xe8
    db 0x49, 0xe9, 0x83, 0xc4, 0x0a, 0xff, 0x76, 0xf2, 0xb8, 0x07, 0x00, 0x50, 0xff, 0x76, 0x08, 0xb8
    db 0x05, 0x00, 0x50, 0xb8, 0x06, 0x00, 0x50, 0xff, 0x76, 0xf4, 0xff, 0x76, 0xf6, 0xe8, 0x2a, 0xde
    db 0x83, 0xc4, 0x0e, 0xe9, 0xd4, 0x14, 0x83, 0x3e, 0x64, 0x84, 0x00, 0x74, 0x08, 0xa1, 0x64, 0x84
    db 0x3d, 0x06, 0x00, 0x75, 0x23, 0xff, 0x76, 0x08, 0xb8, 0xd9, 0x00, 0x50, 0xb8, 0xd8, 0x00, 0x50
    db 0xb8, 0xd7, 0x00, 0x50, 0xb8, 0xd6, 0x00, 0x50, 0xb8, 0xd5, 0x00, 0x50, 0xb8, 0xd4, 0x00, 0x50
    db 0xe8, 0x36, 0xeb, 0x83, 0xc4, 0x0e, 0xeb, 0x21, 0xff, 0x76, 0x08, 0xb8, 0xd9, 0x00, 0x50, 0xb8
    db 0xd8, 0x00, 0x50, 0xb8, 0xd7, 0x00, 0x50, 0xb8, 0xd6, 0x00, 0x50, 0xb8, 0xd5, 0x00, 0x50, 0xb8
    db 0xd4, 0x00, 0x50, 0xe8, 0x13, 0xeb, 0x83, 0xc4, 0x0e, 0xe9, 0x7e, 0x14, 0xb8, 0x0c, 0x00, 0x50
    db 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x0e, 0x00, 0x50, 0xff, 0x76, 0xf4, 0xff, 0x76, 0xf6, 0xe8, 0xba
    db 0xe8, 0x83, 0xc4, 0x0a, 0xff, 0x76, 0x08, 0xb8, 0x01, 0x00, 0x50, 0xff, 0x76, 0x08, 0xb8, 0x00
    db 0x00, 0x50, 0xb8, 0x07, 0x00, 0x50, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xff, 0x76, 0xf2, 0xff, 0x76
    db 0x08, 0xb8, 0x0a, 0x00, 0x50, 0xb8, 0x97, 0x0d, 0x50, 0xff, 0x76, 0xf4, 0xff, 0x76, 0xf6, 0xe8
    db 0x32, 0xdf, 0x83, 0xc4, 0x1a, 0xe9, 0x32, 0x14, 0xb8, 0x0a, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50
    db 0xb8, 0x16, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76, 0xf6, 0xe8, 0x6d, 0xe8, 0x83, 0xc4
    db 0x0a, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x02, 0x00, 0x50, 0xff, 0x76, 0x08, 0xb8, 0x00, 0x00, 0x50
    db 0xff, 0x76, 0xf2, 0xb8, 0x02, 0x00, 0x50, 0xb8, 0x09, 0x00, 0x50, 0xb8, 0x92, 0x0d, 0x50, 0xb8
    db 0x00, 0x00, 0x8b, 0x4e, 0x08, 0x41, 0x41, 0x41, 0x2b, 0xc1, 0x50, 0xff, 0x76, 0xf6, 0xe8, 0xf0
    db 0xdd, 0x83, 0xc4, 0x14, 0xe9, 0xe3, 0x13, 0x8b, 0x46, 0x08, 0x48, 0xb9, 0x02, 0x00, 0x99, 0xf7
    db 0xf9, 0x40, 0x89, 0x46, 0xfc, 0xc7, 0x46, 0xfe, 0x00, 0x00, 0xeb, 0x7d, 0xb8, 0x01, 0x00, 0x50
    db 0xb8, 0x2c, 0x00, 0xf7, 0x6e, 0xfe, 0x8b, 0xf0, 0xa1, 0x64, 0x84, 0xd1, 0xe0, 0x8b, 0xd8, 0x8b
    db 0x9f, 0x82, 0x84, 0x8a, 0x40, 0x26, 0x98, 0x50, 0xff, 0x76, 0xfc, 0xe8, 0x24, 0xe2, 0x83, 0xc4
    db 0x06, 0x50, 0xb8, 0x2c, 0x00, 0xf7, 0x6e, 0xfe, 0x8b, 0xf0, 0xa1, 0x64, 0x84, 0xd1, 0xe0, 0x8b
    db 0xd8, 0x8b, 0x9f, 0x82, 0x84, 0x58, 0x88, 0x40, 0x26, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x2c, 0x00
    db 0xf7, 0x6e, 0xfe, 0x8b, 0xf0, 0xa1, 0x64, 0x84, 0xd1, 0xe0, 0x8b, 0xd8, 0x8b, 0x9f, 0x82, 0x84
    db 0x8a, 0x40, 0x27, 0x98, 0x50, 0xff, 0x76, 0xfc, 0xe8, 0xe7, 0xe1, 0x83, 0xc4, 0x06, 0x50, 0xb8
    db 0x2c, 0x00, 0xf7, 0x6e, 0xfe, 0x8b, 0xf0, 0xa1, 0x64, 0x84, 0xd1, 0xe0, 0x8b, 0xd8, 0x8b, 0x9f
    db 0x82, 0x84, 0x58, 0x88, 0x40, 0x27, 0xff, 0x46, 0xfe, 0xa1, 0x64, 0x84, 0xd1, 0xe0, 0x8b, 0xd8
    db 0x8b, 0x9f, 0x82, 0x84, 0x8a, 0x87, 0xa1, 0x01, 0x2a, 0xe4, 0x3b, 0x46, 0xfe, 0x7e, 0x03, 0xe9
    db 0x6a, 0xff, 0xe9, 0x35, 0x13, 0xb8, 0x0a, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x16, 0x00
    db 0x50, 0xff, 0x76, 0xf4, 0xff, 0x76, 0xf6, 0xe8, 0x71, 0xe7, 0x83, 0xc4, 0x0a, 0xff, 0x76, 0x08
    db 0xb8, 0x01, 0x00, 0x50, 0x8b, 0x46, 0x08, 0xd1, 0xe0, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76
    db 0xf2, 0xb8, 0x03, 0x00, 0x50, 0xb8, 0x09, 0x00, 0x50, 0xb8, 0xa8, 0x0d, 0x50, 0xff, 0x76, 0xf4
    db 0xff, 0x76, 0xf6, 0xe8, 0xfb, 0xdc, 0x83, 0xc4, 0x14, 0xe9, 0xee, 0x12, 0xc7, 0x46, 0xfe, 0x01
    db 0x00, 0xeb, 0x39, 0xb8, 0x64, 0x00, 0x50, 0xe8, 0xf8, 0x6a, 0x59, 0x50, 0xb8, 0x0a, 0x00, 0xf7
    db 0x6e, 0x08, 0x8b, 0xc8, 0x05, 0x50, 0x00, 0x8b, 0xc8, 0xb8, 0x05, 0x00, 0xf7, 0x2e, 0x0c, 0x83
    db 0x8b, 0xd0, 0x2b, 0xc8, 0x58, 0x3b, 0xc1, 0x7d, 0x10, 0x8b, 0x46, 0xfe, 0xd1, 0xe0, 0x8b, 0xd8
    db 0x8b, 0x9f, 0x82, 0x84, 0xc6, 0x87, 0xa0, 0x01, 0x00, 0xff, 0x46, 0xfe, 0x8b, 0x46, 0xfe, 0x3b
    db 0x06, 0x66, 0x84, 0x7e, 0xbe, 0xe9, 0xa2, 0x12, 0xb8, 0x0a, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50
    db 0xb8, 0x16, 0x00, 0x50, 0xff, 0x76, 0xf4, 0xff, 0x76, 0xf6, 0xe8, 0xde, 0xe6, 0x83, 0xc4, 0x0a
    db 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x02, 0x00, 0x50, 0xff, 0x76, 0x08, 0xb8, 0x00, 0x00, 0x50, 0xff
    db 0x76, 0xf2, 0xb8, 0x03, 0x00, 0x50, 0xb8, 0x09, 0x00, 0x50, 0xb8, 0xa4, 0x0d, 0x50, 0xb8, 0x00
    db 0x00, 0x8b, 0x4e, 0x08, 0x41, 0x41, 0x41, 0x2b, 0xc1, 0x50, 0xff, 0x76, 0xf6, 0xe8, 0x61, 0xdc
    db 0x83, 0xc4, 0x14, 0xe9, 0x54, 0x12, 0xb8, 0x0a, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x16
    db 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76, 0xf6, 0xe8, 0x8f, 0xe6, 0x83, 0xc4, 0x0a, 0xb8
    db 0x00, 0x00, 0x50, 0xb8, 0x02, 0x00, 0x50, 0xff, 0x76, 0x08, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76
    db 0xf2, 0xb8, 0x07, 0x00, 0x50, 0xb8, 0x0a, 0x00, 0x50, 0xb8, 0x8d, 0x0d, 0x50, 0xb8, 0x00, 0x00
    db 0x8b, 0x4e, 0x08, 0x41, 0x2b, 0xc1, 0x50, 0xff, 0x76, 0xf6, 0xe8, 0x14, 0xdc, 0x83, 0xc4, 0x14
    db 0xe9, 0x07, 0x12, 0xb8, 0x0c, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x0e, 0x00, 0x50, 0xb8
    db 0x00, 0x00, 0x50, 0xff, 0x76, 0xf6, 0xe8, 0x42, 0xe6, 0x83, 0xc4, 0x0a, 0xff, 0x76, 0x08, 0xb8
    db 0x02, 0x00, 0x50, 0x8b, 0x46, 0x08, 0xd1, 0xe0, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x07, 0x00
    db 0x50, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xff, 0x76, 0xf2, 0xff, 0x76, 0x08, 0xb8, 0x0a, 0x00, 0x50
    db 0xb8, 0x97, 0x0d, 0x50, 0xb8, 0x00, 0x00, 0x8b, 0x4e, 0x08, 0x41, 0x41, 0x41, 0x2b, 0xc1, 0x50
    db 0xff, 0x76, 0xf6, 0xe8, 0xae, 0xdc, 0x83, 0xc4, 0x1a, 0xe9, 0xae, 0x11, 0x83, 0x3e, 0x64, 0x84
    db 0x00, 0x74, 0x08, 0xa1, 0x64, 0x84, 0x3d, 0x06, 0x00, 0x75, 0x23, 0xff, 0x76, 0x08, 0xb8, 0xdf
    db 0x00, 0x50, 0xb8, 0xde, 0x00, 0x50, 0xb8, 0xdd, 0x00, 0x50, 0xb8, 0xdc, 0x00, 0x50, 0xb8, 0xdb
    db 0x00, 0x50, 0xb8, 0xda, 0x00, 0x50, 0xe8, 0x10, 0xe8, 0x83, 0xc4, 0x0e, 0xeb, 0x21, 0xff, 0x76
    db 0x08, 0xb8, 0xdf, 0x00, 0x50, 0xb8, 0xde, 0x00, 0x50, 0xb8, 0xdd, 0x00, 0x50, 0xb8, 0xdc, 0x00
    db 0x50, 0xb8, 0xdb, 0x00, 0x50, 0xb8, 0xda, 0x00, 0x50, 0xe8, 0xed, 0xe7, 0x83, 0xc4, 0x0e, 0xe9
    db 0x58, 0x11, 0xb8, 0x0a, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x16, 0x00, 0x50, 0xb8, 0x00
    db 0x00, 0x50, 0xff, 0x76, 0xf6, 0xe8, 0x93, 0xe5, 0x83, 0xc4, 0x0a, 0xff, 0x76, 0x08, 0xb8, 0x03
    db 0x00, 0x50, 0xff, 0x76, 0x08, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76, 0xf2, 0xb8, 0x01, 0x00, 0x50
    db 0xb8, 0x0a, 0x00, 0x50, 0xb8, 0x91, 0x0d, 0x50, 0x83, 0x3e, 0x64, 0x84, 0x00, 0x74, 0x08, 0xa1
    db 0x64, 0x84, 0x3d, 0x06, 0x00, 0x75, 0x05, 0xb8, 0x01, 0x00, 0xeb, 0x03, 0xb8, 0x00, 0x00, 0x50
    db 0xe8, 0xe1, 0xde, 0x83, 0xc4, 0x12, 0xe9, 0x01, 0x11, 0xb8, 0x0c, 0x00, 0x50, 0xb8, 0x00, 0x00
    db 0x50, 0xb8, 0x0e, 0x00, 0x50, 0xff, 0x76, 0xf4, 0xff, 0x76, 0xf6, 0xe8, 0x3d, 0xe5, 0x83, 0xc4
    db 0x0a, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x50, 0xb8, 0x01, 0x00, 0x50, 0x8b, 0x46, 0xf2, 0x05, 0xdd
    db 0xff, 0x50, 0xb8, 0x03, 0x00, 0x50, 0xb8, 0x0b, 0x00, 0x50, 0xb8, 0x9a, 0x0d, 0x50, 0xff, 0x76
    db 0xf4, 0xff, 0x76, 0xf6, 0xe8, 0xca, 0xda, 0x83, 0xc4, 0x14, 0xe9, 0xbd, 0x10, 0xb8, 0x0c, 0x00
    db 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x0e, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76, 0xf6
    db 0xe8, 0xf8, 0xe4, 0x83, 0xc4, 0x0a, 0xff, 0x76, 0xf2, 0xb8, 0x0a, 0x00, 0x50, 0xff, 0x76, 0x08
    db 0xb8, 0x04, 0x00, 0x50, 0x50, 0x83, 0x3e, 0x64, 0x84, 0x00, 0x74, 0x08, 0xa1, 0x64, 0x84, 0x3d
    db 0x06, 0x00, 0x75, 0x05, 0xb8, 0x01, 0x00, 0xeb, 0x03, 0xb8, 0x00, 0x00, 0x50, 0xe8, 0xdb, 0xdc
    db 0x83, 0xc4, 0x0c, 0xe9, 0x74, 0x10, 0xb8, 0x0c, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x0c
    db 0x00, 0x50, 0xff, 0x76, 0xf4, 0xff, 0x76, 0xf6, 0xe8, 0xb0, 0xe4, 0x83, 0xc4, 0x0a, 0xff, 0x76
    db 0xf2, 0xb8, 0x0c, 0x00, 0x50, 0xff, 0x76, 0x08, 0xb8, 0x08, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50
    db 0xff, 0x76, 0xf4, 0xff, 0x76, 0xf6, 0xe8, 0x91, 0xd9, 0x83, 0xc4, 0x0e, 0xe9, 0x3b, 0x10, 0xb8
    db 0x0c, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x0c, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xff
    db 0x76, 0xf6, 0xe8, 0x76, 0xe4, 0x83, 0xc4, 0x0a, 0xff, 0x76, 0xf2, 0xb8, 0x0c, 0x00, 0x50, 0xff
    db 0x76, 0x08, 0xb8, 0x07, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x8b, 0x4e, 0x08
    db 0x41, 0x41, 0x2b, 0xc1, 0x50, 0xff, 0x76, 0xf6, 0xe8, 0x4f, 0xd9, 0x83, 0xc4, 0x0e, 0xe9, 0xf9
    db 0x0f, 0xb8, 0x0a, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x16, 0x00, 0x50, 0xb8, 0x00, 0x00
    db 0x50, 0xff, 0x76, 0xf6, 0xe8, 0x34, 0xe4, 0x83, 0xc4, 0x0a, 0x8b, 0x46, 0xf6, 0xd1, 0xe0, 0x8b
    db 0xd8, 0x8b, 0x9f, 0x90, 0x84, 0x80, 0xbf, 0xd6, 0x00, 0x14, 0x74, 0x07, 0xc7, 0x46, 0xf2, 0x9c
    db 0xff, 0xeb, 0x24, 0xb8, 0x2c, 0x00, 0xf7, 0x6e, 0xf4, 0x8b, 0xf0, 0x8b, 0x46, 0xf6, 0xd1, 0xe0
    db 0x8b, 0xd8, 0x8b, 0x9f, 0x82, 0x84, 0x8b, 0x08, 0x8b, 0x5e, 0x04, 0x8b, 0x07, 0x2b, 0xc1, 0xb9
    db 0x03, 0x00, 0xf7, 0xe9, 0x01, 0x46, 0xf2, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x50, 0xb8, 0x01, 0x00
    db 0x50, 0xff, 0x76, 0xf2, 0xb8, 0x03, 0x00, 0x50, 0xb8, 0x0b, 0x00, 0x50, 0xb8, 0xa5, 0x0d, 0x50
    db 0xb8, 0x00, 0x00, 0x2b, 0x46, 0x08, 0x50, 0xff, 0x76, 0xf6, 0xe8, 0x84, 0xd9, 0x83, 0xc4, 0x14
    db 0xe9, 0x77, 0x0f, 0xb8, 0x2c, 0x00, 0xf7, 0x2e, 0x62, 0x84, 0x8b, 0xf0, 0xa1, 0x64, 0x84, 0xd1
    db 0xe0, 0x8b, 0xd8, 0x8b, 0x9f, 0x82, 0x84, 0x80, 0x78, 0x24, 0x00, 0x75, 0x36, 0xa1, 0x60, 0x84
    db 0xb9, 0x02, 0x00, 0x99, 0xf7, 0xf9, 0x50, 0xe8, 0x68, 0x67, 0x59, 0x50, 0xa1, 0x60, 0x84, 0xb9
    db 0x02, 0x00, 0x99, 0xf7, 0xf9, 0x8b, 0xc8, 0x58, 0x03, 0xc1, 0x50, 0xb8, 0x2c, 0x00, 0xf7, 0x2e
    db 0x62, 0x84, 0x8b, 0xf0, 0xa1, 0x64, 0x84, 0xd1, 0xe0, 0x8b, 0xd8, 0x8b, 0x9f, 0x82, 0x84, 0x58
    db 0x88, 0x40, 0x25, 0xb8, 0x2c, 0x00, 0xf7, 0x2e, 0x62, 0x84, 0x8b, 0xf0, 0xa1, 0x64, 0x84, 0xd1
    db 0xe0, 0x8b, 0xd8, 0x8b, 0x9f, 0x82, 0x84, 0x8a, 0x40, 0x24, 0x2a, 0xe4, 0x50, 0xb8, 0x03, 0x00
    db 0xf7, 0x6e, 0x08, 0x8b, 0xc8, 0x58, 0x03, 0xc1, 0x88, 0x40, 0x24, 0xe9, 0xfc, 0x0e, 0x83, 0x3e
    db 0x64, 0x84, 0x00, 0x74, 0x08, 0xa1, 0x64, 0x84, 0x3d, 0x06, 0x00, 0x75, 0x52, 0xb8, 0x02, 0x00
    db 0x50, 0xe8, 0xfe, 0x66, 0x59, 0x85, 0xc0, 0x75, 0x23, 0xff, 0x76, 0x08, 0xb8, 0xcd, 0x00, 0x50
    db 0xb8, 0xcc, 0x00, 0x50, 0xb8, 0xcb, 0x00, 0x50, 0xb8, 0xca, 0x00, 0x50, 0xb8, 0xc9, 0x00, 0x50
    db 0xb8, 0xc8, 0x00, 0x50, 0xe8, 0x52, 0xe5, 0x83, 0xc4, 0x0e, 0xeb, 0x21, 0xff, 0x76, 0x08, 0xb8
    db 0xd3, 0x00, 0x50, 0xb8, 0xd2, 0x00, 0x50, 0xb8, 0xd1, 0x00, 0x50, 0xb8, 0xd0, 0x00, 0x50, 0xb8
    db 0xcf, 0x00, 0x50, 0xb8, 0xce, 0x00, 0x50, 0xe8, 0x2f, 0xe5, 0x83, 0xc4, 0x0e, 0xeb, 0x50, 0xb8
    db 0x02, 0x00, 0x50, 0xe8, 0xac, 0x66, 0x59, 0x85, 0xc0, 0x75, 0x23, 0xff, 0x76, 0x08, 0xb8, 0xcd
    db 0x00, 0x50, 0xb8, 0xcc, 0x00, 0x50, 0xb8, 0xcb, 0x00, 0x50, 0xb8, 0xca, 0x00, 0x50, 0xb8, 0xc9
    db 0x00, 0x50, 0xb8, 0xc8, 0x00, 0x50, 0xe8, 0x00, 0xe5, 0x83, 0xc4, 0x0e, 0xeb, 0x21, 0xff, 0x76
    db 0x08, 0xb8, 0xd3, 0x00, 0x50, 0xb8, 0xd2, 0x00, 0x50, 0xb8, 0xd1, 0x00, 0x50, 0xb8, 0xd0, 0x00
    db 0x50, 0xb8, 0xcf, 0x00, 0x50, 0xb8, 0xce, 0x00, 0x50, 0xe8, 0xdd, 0xe4, 0x83, 0xc4, 0x0e, 0xe9
    db 0x48, 0x0e, 0xb8, 0x0a, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x16, 0x00, 0x50, 0xb8, 0x00
    db 0x00, 0x50, 0xff, 0x76, 0xf6, 0xe8, 0x83, 0xe2, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0x8b
    db 0x46, 0xf6, 0xd1, 0xe0, 0x8b, 0xd8, 0x8b, 0x9f, 0x82, 0x84, 0x8a, 0x87, 0x91, 0x01, 0x2a, 0xe4
    db 0x50, 0x8b, 0x46, 0x08, 0xd1, 0xe0, 0x50, 0xe8, 0x88, 0xdc, 0x83, 0xc4, 0x06, 0x8b, 0x4e, 0xf6
    db 0xd1, 0xe1, 0x8b, 0xd9, 0x8b, 0x9f, 0x82, 0x84, 0x88, 0x87, 0x91, 0x01, 0xe9, 0xfb, 0x0d, 0xb8
    db 0x0a, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x16, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xff
    db 0x76, 0xf6, 0xe8, 0x36, 0xe2, 0x83, 0xc4, 0x0a, 0x8b, 0x46, 0xf6, 0xd1, 0xe0, 0x8b, 0xd8, 0x8b
    db 0x9f, 0x90, 0x84, 0x80, 0xbf, 0xd6, 0x00, 0x15, 0x74, 0x07, 0xc7, 0x46, 0xf2, 0x9c, 0xff, 0xeb
    db 0x24, 0xb8, 0x2c, 0x00, 0xf7, 0x6e, 0xf4, 0x8b, 0xf0, 0x8b, 0x46, 0xf6, 0xd1, 0xe0, 0x8b, 0xd8
    db 0x8b, 0x9f, 0x82, 0x84, 0x8b, 0x08, 0x8b, 0x5e, 0x04, 0x8b, 0x07, 0x2b, 0xc1, 0xb9, 0x03, 0x00
    db 0xf7, 0xe9, 0x01, 0x46, 0xf2, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xff
    db 0x76, 0xf2, 0xb8, 0x03, 0x00, 0x50, 0xb8, 0x0b, 0x00, 0x50, 0xb8, 0xa9, 0x0d, 0x50, 0xb8, 0x00
    db 0x00, 0x2b, 0x46, 0x08, 0x50, 0xff, 0x76, 0xf6, 0xe8, 0x86, 0xd7, 0x83, 0xc4, 0x14, 0xe9, 0x79
    db 0x0d, 0xb8, 0x0c, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x0c, 0x00, 0x50, 0xff, 0x76, 0xf4
    db 0xff, 0x76, 0xf6, 0xe8, 0xb5, 0xe1, 0x83, 0xc4, 0x0a, 0x8b, 0x46, 0xf6, 0xd1, 0xe0, 0x8b, 0xd8
    db 0x8b, 0x9f, 0x90, 0x84, 0x80, 0xbf, 0xd6, 0x00, 0x14, 0x74, 0x07, 0xc7, 0x46, 0xf2, 0x9c, 0xff
    db 0xeb, 0x24, 0xb8, 0x2c, 0x00, 0xf7, 0x6e, 0xf4, 0x8b, 0xf0, 0x8b, 0x46, 0xf6, 0xd1, 0xe0, 0x8b
    db 0xd8, 0x8b, 0x9f, 0x82, 0x84, 0x8b, 0x08, 0x8b, 0x5e, 0x04, 0x8b, 0x07, 0x2b, 0xc1, 0xb9, 0x03
    db 0x00, 0xf7, 0xe9, 0x01, 0x46, 0xf2, 0xff, 0x76, 0xf2, 0xb8, 0x0c, 0x00, 0x50, 0xff, 0x76, 0x08
    db 0xb8, 0x07, 0x00, 0x50, 0x50, 0xff, 0x76, 0xf4, 0xff, 0x76, 0xf6, 0xe8, 0x5c, 0xd6, 0x83, 0xc4
    db 0x0e, 0xe9, 0x06, 0x0d, 0xb8, 0x0c, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x0c, 0x00, 0x50
    db 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76, 0xf6, 0xe8, 0x41, 0xe1, 0x83, 0xc4, 0x0a, 0xff, 0x76, 0xf2
    db 0xb8, 0x0b, 0x00, 0x50, 0xff, 0x76, 0x08, 0xb8, 0x04, 0x00, 0x50, 0x50, 0x83, 0x3e, 0x64, 0x84
    db 0x00, 0x74, 0x08, 0xa1, 0x64, 0x84, 0x3d, 0x06, 0x00, 0x75, 0x05, 0xb8, 0x01, 0x00, 0xeb, 0x03
    db 0xb8, 0x00, 0x00, 0x50, 0xe8, 0x24, 0xd9, 0x83, 0xc4, 0x0c, 0xe9, 0xbd, 0x0c, 0xb8, 0x0c, 0x00
    db 0x50, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x0e, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76, 0xf6
    db 0xe8, 0xf8, 0xe0, 0x83, 0xc4, 0x0a, 0xff, 0x76, 0x08, 0xff, 0x76, 0x08, 0xff, 0x76, 0x08, 0xb8
    db 0x01, 0x00, 0x50, 0xff, 0x76, 0xf2, 0xb8, 0x03, 0x00, 0x50, 0xb8, 0x0b, 0x00, 0x50, 0xb8, 0x9e
    db 0x0d, 0x50, 0x83, 0x3e, 0x64, 0x84, 0x00, 0x74, 0x08, 0xa1, 0x64, 0x84, 0x3d, 0x06, 0x00, 0x75
    db 0x05, 0xb8, 0x01, 0x00, 0xeb, 0x03, 0xb8, 0x00, 0x00, 0x50, 0xe8, 0x47, 0xda, 0x83, 0xc4, 0x12
    db 0xe9, 0x67, 0x0c, 0xb8, 0x0a, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x16, 0x00, 0x50, 0xff
    db 0x76, 0xf4, 0xff, 0x76, 0xf6, 0xe8, 0xa3, 0xe0, 0x83, 0xc4, 0x0a, 0x8b, 0x46, 0xf6, 0xd1, 0xe0
    db 0x8b, 0xd8, 0x8b, 0x9f, 0x90, 0x84, 0x80, 0xbf, 0xd6, 0x00, 0x14, 0x74, 0x0c, 0x80, 0xbf, 0xd6
    db 0x00, 0x15, 0x74, 0x05, 0xc7, 0x46, 0xf2, 0x9c, 0xff, 0xb8, 0x2c, 0x00, 0xf7, 0x6e, 0xf4, 0x8b
    db 0xf0, 0x8b, 0x46, 0xf6, 0xd1, 0xe0, 0x8b, 0xd8, 0x8b, 0x9f, 0x82, 0x84, 0x8b, 0x40, 0x02, 0x99
    db 0xd1, 0xe0, 0xd1, 0xd2, 0xd1, 0xe0, 0xd1, 0xd2, 0xd1, 0xe0, 0xd1, 0xd2, 0x50, 0x52, 0x8b, 0x40
    db 0x04, 0x99, 0x8b, 0xc8, 0x8b, 0xda, 0x5a, 0x58, 0xe8, 0x0d, 0xa6, 0x89, 0x46, 0xfc, 0x3d, 0x02
    db 0x00, 0x7d, 0x05, 0xc7, 0x46, 0xfc, 0x02, 0x00, 0xff, 0x76, 0xf2, 0xb8, 0x00, 0x00, 0x50, 0xff
    db 0x76, 0x08, 0xff, 0x76, 0xfc, 0xb8, 0x01, 0x00, 0x50, 0xff, 0x76, 0xf4, 0xff, 0x76, 0xf6, 0xe8
    db 0x28, 0xd5, 0x83, 0xc4, 0x0e, 0xe9, 0xd2, 0x0b, 0x83, 0x7e, 0xf6, 0x00, 0x74, 0x03, 0xe9, 0x03
    db 0x01, 0xb8, 0x2c, 0x00, 0xf7, 0x6e, 0xf4, 0x8b, 0xf0, 0x8b, 0x46, 0xf6, 0xd1, 0xe0, 0x8b, 0xd8
    db 0x8b, 0x9f, 0x82, 0x84, 0x80, 0x78, 0x22, 0x02, 0x74, 0x03, 0xe9, 0xe7, 0x00, 0xb8, 0x03, 0x00
    db 0xf7, 0x6e, 0x08, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0xf4, 0x8b, 0xd8, 0x8a, 0x87, 0x67, 0x5d
    db 0x2a, 0xe4, 0x8b, 0xd0, 0xb9, 0x15, 0x00, 0x2b, 0xc8, 0x58, 0x3b, 0xc1, 0x7f, 0x03, 0xe9, 0xc3
    db 0x00, 0xfe, 0x8f, 0x67, 0x5d, 0xb8, 0xb7, 0x00, 0x50, 0xe8, 0x96, 0x63, 0x59, 0x05, 0xb7, 0x00
    db 0x99, 0x50, 0x52, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0xf4, 0x8b, 0xd8, 0x5a, 0x58, 0x01, 0x87, 0xfc
    db 0x5b, 0x11, 0x97, 0xfe, 0x5b, 0xb8, 0x12, 0x00, 0x50, 0xe8, 0x76, 0x63, 0x59, 0x50, 0xb8, 0x48
    db 0x02, 0xf7, 0x6e, 0xf4, 0x8b, 0xd8, 0x8a, 0x87, 0x67, 0x5d, 0x2a, 0xe4, 0x8b, 0xc8, 0x58, 0x3b
    db 0xc1, 0x7e, 0x49, 0xb8, 0x2c, 0x00, 0xf7, 0x6e, 0xf4, 0x8b, 0xf0, 0x8b, 0x46, 0xf6, 0xd1, 0xe0
    db 0x8b, 0xd8, 0x8b, 0x9f, 0x82, 0x84, 0xc6, 0x40, 0x22, 0x03, 0xb8, 0x2c, 0x00, 0xf7, 0x6e, 0xf4
    db 0x8b, 0xf0, 0x8b, 0x46, 0xf6, 0xd1, 0xe0, 0x8b, 0xd8, 0x8b, 0x9f, 0x82, 0x84, 0xc7, 0x40, 0x02
    db 0x00, 0x00, 0xb8, 0x2c, 0x00, 0xf7, 0x6e, 0xf4, 0x8b, 0xf0, 0x8b, 0x46, 0xf6, 0xd1, 0xe0, 0x8b
    db 0xd8, 0x8b, 0x9f, 0x82, 0x84, 0xc7, 0x40, 0x06, 0x00, 0x00, 0xeb, 0x2b, 0xb8, 0x2c, 0x00, 0xf7
    db 0x6e, 0xf4, 0x8b, 0xf0, 0x8b, 0x46, 0xf6, 0xd1, 0xe0, 0x8b, 0xd8, 0x8b, 0x9f, 0x82, 0x84, 0xc6
    db 0x40, 0x22, 0x00, 0xb8, 0x55, 0x00, 0x50, 0xb8, 0x4e, 0x0c, 0x50, 0xff, 0x76, 0xf4, 0xff, 0x76
    db 0xf6, 0xe8, 0xe8, 0xe5, 0x83, 0xc4, 0x08, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76, 0xf4, 0xe8, 0x43
    db 0xae, 0x83, 0xc4, 0x04, 0xe9, 0xc3, 0x0a, 0x83, 0x7e, 0xf6, 0x00, 0x74, 0x03, 0xe9, 0x01, 0x01
    db 0xb8, 0x2c, 0x00, 0xf7, 0x6e, 0xf4, 0x8b, 0xf0, 0x8b, 0x46, 0xf6, 0xd1, 0xe0, 0x8b, 0xd8, 0x8b
    db 0x9f, 0x82, 0x84, 0x80, 0x78, 0x22, 0x03, 0x74, 0x03, 0xe9, 0xe5, 0x00, 0xb8, 0x03, 0x00, 0xf7
    db 0x6e, 0x08, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0xf4, 0x8b, 0xd8, 0x8a, 0x87, 0x67, 0x5d, 0x2a
    db 0xe4, 0x8b, 0xd0, 0xb9, 0x15, 0x00, 0x2b, 0xc8, 0x58, 0x3b, 0xc1, 0x7f, 0x03, 0xe9, 0xc1, 0x00
    db 0xfe, 0x8f, 0x67, 0x5d, 0x8b, 0x46, 0xf6, 0xd1, 0xe0, 0x8b, 0xd8, 0x8b, 0x9f, 0x82, 0x84, 0xc6
    db 0x40, 0x22, 0x00, 0xb8, 0x2c, 0x00, 0xf7, 0x6e, 0xf4, 0x8b, 0xf0, 0x8b, 0x46, 0xf6, 0xd1, 0xe0
    db 0x8b, 0xd8, 0x8b, 0x9f, 0x82, 0x84, 0xff, 0x70, 0x04, 0xb8, 0x01, 0x00, 0x50, 0x8b, 0x40, 0x04
    db 0xb9, 0x03, 0x00, 0x99, 0xf7, 0xf9, 0x50, 0xe8, 0x71, 0x62, 0x83, 0xc4, 0x06, 0x50, 0xb8, 0x2c
    db 0x00, 0xf7, 0x6e, 0xf4, 0x8b, 0xf0, 0x8b, 0x46, 0xf6, 0xd1, 0xe0, 0x8b, 0xd8, 0x8b, 0x9f, 0x82
    db 0x84, 0x58, 0x89, 0x40, 0x02, 0xb8, 0x2c, 0x00, 0xf7, 0x6e, 0xf4, 0x8b, 0xf0, 0x8b, 0x46, 0xf6
    db 0xd1, 0xe0, 0x8b, 0xd8, 0x8b, 0x9f, 0x82, 0x84, 0x8b, 0x40, 0x08, 0xb9, 0x0a, 0x00, 0x99, 0xf7
    db 0xf9, 0x89, 0x40, 0x06, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0xf4, 0x8b, 0xd8, 0xff, 0x87, 0x1a, 0x5c
    db 0xb8, 0xb7, 0x00, 0x50, 0xe8, 0x0b, 0x62, 0x59, 0x05, 0x6d, 0x01, 0x99, 0x50, 0x52, 0xb8, 0x48
    db 0x02, 0xf7, 0x6e, 0xf4, 0x8b, 0xd8, 0x5a, 0x58, 0x01, 0x87, 0xfc, 0x5b, 0x11, 0x97, 0xfe, 0x5b
    db 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76, 0xf4, 0xe8, 0x4a, 0xad, 0x83, 0xc4, 0x04, 0xb8, 0x55, 0x00
    db 0x50, 0xb8, 0x4f, 0x0c, 0x50, 0xff, 0x76, 0xf4, 0xff, 0x76, 0xf6, 0xe8, 0xce, 0xe4, 0x83, 0xc4
    db 0x08, 0xe9, 0xb6, 0x09, 0xb8, 0x00, 0x00, 0x83, 0x7e, 0x06, 0x13, 0x74, 0x03, 0x8b, 0x46, 0xf4
    db 0x89, 0x46, 0xfe, 0x83, 0x7e, 0x06, 0x13, 0x74, 0x06, 0x8b, 0x46, 0xf4, 0x40, 0xeb, 0x11, 0x8b
    db 0x46, 0xf6, 0xd1, 0xe0, 0x8b, 0xd8, 0x8b, 0x9f, 0x82, 0x84, 0x8a, 0x87, 0xa1, 0x01, 0x2a, 0xe4
    db 0x89, 0x46, 0xfc, 0x8b, 0x46, 0x08, 0x83, 0x7e, 0x06, 0x13, 0x74, 0x02, 0xd1, 0xe0, 0x89, 0x46
    db 0xfa, 0xb8, 0x00, 0x00, 0x83, 0x7e, 0x06, 0x13, 0x74, 0x03, 0x8b, 0x46, 0x08, 0x89, 0x46, 0xf8
    db 0xe9, 0xa8, 0x00, 0xb8, 0x2c, 0x00, 0xf7, 0x6e, 0xfe, 0x8b, 0xf0, 0x8b, 0x46, 0xf6, 0xd1, 0xe0
    db 0x8b, 0xd8, 0x8b, 0x9f, 0x82, 0x84, 0xff, 0x70, 0x08, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76, 0xf8
    db 0xb8, 0x08, 0x00, 0x50, 0xff, 0x76, 0xfa, 0xe8, 0x99, 0x7a, 0x83, 0xc4, 0x06, 0x8b, 0xc8, 0x83
    db 0xec, 0x04, 0x8b, 0xc4, 0x8c, 0xd2, 0x8e, 0xc2, 0x8b, 0xf1, 0x8b, 0xf8, 0xa5, 0xa5, 0xe8, 0x56
    db 0x7a, 0x83, 0xc4, 0x04, 0x50, 0xb8, 0x2c, 0x00, 0xf7, 0x6e, 0xfe, 0x8b, 0xf0, 0x8b, 0x46, 0xf6
    db 0xd1, 0xe0, 0x8b, 0xd8, 0x8b, 0x9f, 0x82, 0x84, 0x58, 0x03, 0x40, 0x06, 0x50, 0xe8, 0x3b, 0x61
    db 0x83, 0xc4, 0x06, 0x50, 0xb8, 0x2c, 0x00, 0xf7, 0x6e, 0xfe, 0x8b, 0xf0, 0x8b, 0x46, 0xf6, 0xd1
    db 0xe0, 0x8b, 0xd8, 0x8b, 0x9f, 0x82, 0x84, 0x58, 0x89, 0x40, 0x06, 0x83, 0x7e, 0xf6, 0x00, 0x75
    db 0x27, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76, 0xfe, 0xe8, 0x59, 0xac, 0x83, 0xc4, 0x04, 0x83, 0x7e
    db 0x06, 0x13, 0x74, 0x14, 0xb8, 0x55, 0x00, 0x50, 0xb8, 0x52, 0x0c, 0x50, 0xff, 0x76, 0xf4, 0xff
    db 0x76, 0xf6, 0xe8, 0xd7, 0xe3, 0x83, 0xc4, 0x08, 0xff, 0x46, 0xfe, 0x8b, 0x46, 0xfe, 0x3b, 0x46
    db 0xfc, 0x7d, 0x03, 0xe9, 0x4d, 0xff, 0xe9, 0xb1, 0x08, 0xb8, 0x2c, 0x00, 0xf7, 0x6e, 0xf4, 0x8b
    db 0xf0, 0x8b, 0x46, 0xf6, 0xd1, 0xe0, 0x8b, 0xd8, 0x8b, 0x9f, 0x82, 0x84, 0x8a, 0x40, 0x11, 0x2a
    db 0xe4, 0x50, 0xb8, 0x19, 0x00, 0xf7, 0x6e, 0x08, 0x8b, 0xc8, 0x58, 0x2b, 0xc1, 0x89, 0x46, 0xfe
    db 0x3d, 0x00, 0x00, 0x7d, 0x05, 0xc7, 0x46, 0xfe, 0x00, 0x00, 0x8a, 0x46, 0xfe, 0x88, 0x40, 0x11
    db 0x83, 0x7e, 0xf6, 0x00, 0x75, 0x0d, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76, 0xf4, 0xe8, 0xe4, 0xab
    db 0x83, 0xc4, 0x04, 0xe9, 0x64, 0x08, 0xb8, 0x2c, 0x00, 0xf7, 0x6e, 0xf4, 0x8b, 0xf0, 0x8b, 0x46
    db 0xf6, 0xd1, 0xe0, 0x8b, 0xd8, 0x8b, 0x9f, 0x82, 0x84, 0x8a, 0x40, 0x23, 0x2a, 0xe4, 0x2b, 0x46
    db 0x08, 0x89, 0x46, 0xfe, 0x3d, 0x00, 0x00, 0x7f, 0x09, 0xc7, 0x46, 0xfe, 0x00, 0x00, 0xc6, 0x40
    db 0x13, 0x00, 0x8a, 0x46, 0xfe, 0x50, 0xb8, 0x2c, 0x00, 0xf7, 0x6e, 0xf4, 0x8b, 0xf0, 0x8b, 0x46
    db 0xf6, 0xd1, 0xe0, 0x8b, 0xd8, 0x8b, 0x9f, 0x82, 0x84, 0x58, 0x88, 0x40, 0x23, 0xb8, 0x2c, 0x00
    db 0xf7, 0x6e, 0xf4, 0x8b, 0xf0, 0x8b, 0x46, 0xf6, 0xd1, 0xe0, 0x8b, 0xd8, 0x8b, 0x9f, 0x82, 0x84
    db 0x8a, 0x40, 0x13, 0x2a, 0xe4, 0x50, 0xb8, 0x05, 0x00, 0xf7, 0x6e, 0x08, 0x8b, 0xc8, 0x58, 0x2b
    db 0xc1, 0x89, 0x46, 0xfe, 0x3d, 0x00, 0x00, 0x7f, 0x09, 0xc7, 0x46, 0xfe, 0x00, 0x00, 0xc6, 0x40
    db 0x23, 0x00, 0x8a, 0x46, 0xfe, 0x50, 0xb8, 0x2c, 0x00, 0xf7, 0x6e, 0xf4, 0x8b, 0xf0, 0x8b, 0x46
    db 0xf6, 0xd1, 0xe0, 0x8b, 0xd8, 0x8b, 0x9f, 0x82, 0x84, 0x58, 0x88, 0x40, 0x13, 0x83, 0x7e, 0xf6
    db 0x00, 0x75, 0x0d, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76, 0xf4, 0xe8, 0x37, 0xab, 0x83, 0xc4, 0x04
    db 0xe9, 0xb7, 0x07, 0xb8, 0x2c, 0x00, 0xf7, 0x6e, 0xf4, 0x8b, 0xf0, 0x8b, 0x46, 0xf6, 0xd1, 0xe0
    db 0x8b, 0xd8, 0x8b, 0x9f, 0x82, 0x84, 0x8a, 0x40, 0x15, 0x2a, 0xe4, 0x50, 0xb8, 0x19, 0x00, 0xf7
    db 0x6e, 0x08, 0x8b, 0xc8, 0x58, 0x2b, 0xc1, 0x89, 0x46, 0xfe, 0x3d, 0x00, 0x00, 0x7d, 0x05, 0xc7
    db 0x46, 0xfe, 0x00, 0x00, 0x8a, 0x46, 0xfe, 0x88, 0x40, 0x15, 0x83, 0x7e, 0xf6, 0x00, 0x75, 0x0d
    db 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76, 0xf4, 0xe8, 0xea, 0xaa, 0x83, 0xc4, 0x04, 0xe9, 0x6a, 0x07
    db 0x83, 0x7e, 0xf6, 0x00, 0x75, 0x45, 0xb8, 0x03, 0x00, 0xf7, 0x6e, 0x08, 0x50, 0xb8, 0x48, 0x02
    db 0xf7, 0x6e, 0xf4, 0x8b, 0xd8, 0x8a, 0x87, 0x67, 0x5d, 0x2a, 0xe4, 0x8b, 0xd0, 0xb9, 0x12, 0x00
    db 0x2b, 0xc8, 0x58, 0x3b, 0xc1, 0x7e, 0x17, 0xb8, 0x2c, 0x00, 0xf7, 0x6e, 0xf4, 0x8b, 0xf0, 0x8b
    db 0x46, 0xf6, 0xd1, 0xe0, 0x8b, 0xd8, 0x8b, 0x9f, 0x82, 0x84, 0xc6, 0x40, 0x14, 0x00, 0xb8, 0x00
    db 0x00, 0x50, 0xff, 0x76, 0xf4, 0xe8, 0x9c, 0xaa, 0x83, 0xc4, 0x04, 0xe9, 0x1c, 0x07, 0xc7, 0x46
    db 0xfe, 0x00, 0x00, 0xeb, 0x3e, 0xb8, 0x2c, 0x00, 0xf7, 0x6e, 0xfe, 0x8b, 0xf0, 0x8b, 0x46, 0xf6
    db 0xd1, 0xe0, 0x8b, 0xd8, 0x8b, 0x9f, 0x82, 0x84, 0x8a, 0x40, 0x10, 0x2a, 0xe4, 0x50, 0x8b, 0x46
    db 0x08, 0xf7, 0xe8, 0x8b, 0xc8, 0x05, 0x04, 0x00, 0x8b, 0xc8, 0x58, 0x2b, 0xc1, 0x89, 0x46, 0xfc
    db 0x3d, 0x00, 0x00, 0x7d, 0x05, 0xc7, 0x46, 0xfc, 0x00, 0x00, 0x8a, 0x46, 0xfc, 0x88, 0x40, 0x10
    db 0xff, 0x46, 0xfe, 0x8b, 0x46, 0xf6, 0xd1, 0xe0, 0x8b, 0xd8, 0x8b, 0x9f, 0x82, 0x84, 0x8a, 0x87
    db 0xa1, 0x01, 0x2a, 0xe4, 0x3b, 0x46, 0xfe, 0x7f, 0xac, 0xe9, 0xbe, 0x06, 0xc7, 0x46, 0xfc, 0x01
    db 0x00, 0x8b, 0x46, 0xfc, 0x3d, 0x01, 0x00, 0x74, 0x14, 0x3d, 0x02, 0x00, 0x74, 0x0f, 0x3d, 0x04
    db 0x00, 0x74, 0x0a, 0x3d, 0x08, 0x00, 0x74, 0x05, 0x3d, 0x09, 0x00, 0x75, 0x42, 0xb8, 0x2c, 0x00
    db 0xf7, 0x6e, 0xf4, 0x8b, 0xc8, 0x8b, 0x46, 0xfc, 0x03, 0xc8, 0x8b, 0xf1, 0x8b, 0x46, 0xf6, 0xd1
    db 0xe0, 0x8b, 0xd8, 0x8b, 0x9f, 0x82, 0x84, 0x8a, 0x40, 0x0e, 0x2a, 0xe4, 0x50, 0x8b, 0x46, 0x08
    db 0xf7, 0xe8, 0x8b, 0xc8, 0x05, 0x04, 0x00, 0x8b, 0xc8, 0x58, 0x2b, 0xc1, 0x89, 0x46, 0xfe, 0x3d
    db 0x00, 0x00, 0x7d, 0x05, 0xc7, 0x46, 0xfe, 0x00, 0x00, 0x8a, 0x46, 0xfe, 0x88, 0x40, 0x0e, 0xff
    db 0x46, 0xfc, 0x8b, 0x46, 0xfc, 0x3d, 0x09, 0x00, 0x7e, 0x97, 0x83, 0x7e, 0xf6, 0x00, 0x75, 0x0d
    db 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76, 0xf4, 0xe8, 0xba, 0xa9, 0x83, 0xc4, 0x04, 0xe9, 0x3a, 0x06
    db 0xb8, 0x0a, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x16, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50
    db 0xff, 0x76, 0xf6, 0xe8, 0x75, 0xda, 0x83, 0xc4, 0x0a, 0xff, 0x76, 0xf2, 0xb8, 0x0b, 0x00, 0x50
    db 0x8b, 0x46, 0x08, 0xd1, 0xe0, 0xd1, 0xe0, 0x50, 0xb8, 0x04, 0x00, 0x50, 0x8b, 0x46, 0x08, 0xd1
    db 0xe0, 0xd1, 0xe0, 0x50, 0xff, 0x76, 0xf4, 0xff, 0x76, 0xf6, 0xe8, 0xae, 0xc8, 0x83, 0xc4, 0x0e
    db 0x89, 0x46, 0xfe, 0x83, 0x7e, 0xf6, 0x00, 0x75, 0x0d, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76, 0xf4
    db 0xe8, 0x61, 0xa9, 0x83, 0xc4, 0x04, 0xa1, 0x64, 0x84, 0x89, 0x46, 0xf6, 0xa1, 0x62, 0x84, 0x89
    db 0x46, 0xf4, 0x8b, 0x46, 0xfe, 0xb9, 0x07, 0x00, 0x99, 0xf7, 0xf9, 0x89, 0x46, 0x08, 0x3d, 0x01
    db 0x00, 0x7d, 0x03, 0xe9, 0xc4, 0x05, 0xb8, 0x04, 0x00, 0x50, 0xb8, 0x02, 0x00, 0x50, 0xe8, 0x6d
    db 0xc1, 0x83, 0xc4, 0x04, 0xb8, 0x00, 0x00, 0x83, 0x7e, 0x06, 0x58, 0x74, 0x03, 0x8b, 0x46, 0xf4
    db 0x89, 0x46, 0xfe, 0x83, 0x7e, 0x06, 0x58, 0x74, 0x06, 0x8b, 0x46, 0xf4, 0x40, 0xeb, 0x11, 0x8b
    db 0x46, 0xf6, 0xd1, 0xe0, 0x8b, 0xd8, 0x8b, 0x9f, 0x82, 0x84, 0x8a, 0x87, 0xa1, 0x01, 0x2a, 0xe4
    db 0x89, 0x46, 0xfc, 0xb8, 0x04, 0x00, 0x83, 0x7e, 0x06, 0x58, 0x74, 0x03, 0xb8, 0x07, 0x00, 0x89
    db 0x46, 0xfa, 0xb8, 0x00, 0x00, 0x83, 0x7e, 0x06, 0x58, 0x74, 0x03, 0x8b, 0x46, 0x08, 0x89, 0x46
    db 0xf8, 0xe9, 0xb9, 0x00, 0xb8, 0x2c, 0x00, 0xf7, 0x6e, 0xfe, 0x8b, 0xf0, 0x8b, 0x46, 0xf6, 0xd1
    db 0xe0, 0x8b, 0xd8, 0x8b, 0x9f, 0x82, 0x84, 0xff, 0x70, 0x04, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76
    db 0xf8, 0xff, 0x76, 0xfa, 0xff, 0x76, 0x08, 0xe8, 0x99, 0x76, 0x83, 0xc4, 0x06, 0x8b, 0xc8, 0x83
    db 0xec, 0x04, 0x8b, 0xc4, 0x8c, 0xd2, 0x8e, 0xc2, 0x8b, 0xf1, 0x8b, 0xf8, 0xa5, 0xa5, 0xe8, 0x56
    db 0x76, 0x83, 0xc4, 0x04, 0x50, 0xb8, 0x2c, 0x00, 0xf7, 0x6e, 0xfe, 0x8b, 0xf0, 0x8b, 0x46, 0xf6
    db 0xd1, 0xe0, 0x8b, 0xd8, 0x8b, 0x9f, 0x82, 0x84, 0x58, 0x03, 0x40, 0x02, 0x50, 0xe8, 0x3b, 0x5d
    db 0x83, 0xc4, 0x06, 0x50, 0xb8, 0x2c, 0x00, 0xf7, 0x6e, 0xfe, 0x8b, 0xf0, 0x8b, 0x46, 0xf6, 0xd1
    db 0xe0, 0x8b, 0xd8, 0x8b, 0x9f, 0x82, 0x84, 0x58, 0x89, 0x40, 0x02, 0x83, 0x7e, 0xf6, 0x00, 0x75
    db 0x1f, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0xfe, 0x8b, 0xd8, 0x83, 0x87, 0xfc, 0x5b, 0x01, 0x83, 0x97
    db 0xfe, 0x5b, 0x00, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76, 0xfe, 0xe8, 0x47, 0xa8, 0x83, 0xc4, 0x04
    db 0x83, 0x7e, 0x06, 0x58, 0x74, 0x14, 0xb8, 0x55, 0x00, 0x50, 0xb8, 0x50, 0x0c, 0x50, 0xff, 0x76
    db 0xf4, 0xff, 0x76, 0xf6, 0xe8, 0xc5, 0xdf, 0x83, 0xc4, 0x08, 0xff, 0x46, 0xfe, 0x8b, 0x46, 0xfe
    db 0x3b, 0x46, 0xfc, 0x7d, 0x03, 0xe9, 0x3c, 0xff, 0xe9, 0x9f, 0x04, 0xb8, 0x2c, 0x00, 0xf7, 0x2e
    db 0x62, 0x84, 0x8b, 0xf0, 0xa1, 0x64, 0x84, 0xd1, 0xe0, 0x8b, 0xd8, 0x8b, 0x9f, 0x82, 0x84, 0xff
    db 0x70, 0x08, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76, 0x08, 0xb8, 0x08, 0x00, 0x50, 0xff, 0x76, 0x08
    db 0xe8, 0xd0, 0x75, 0x83, 0xc4, 0x06, 0x8b, 0xc8, 0x83, 0xec, 0x04, 0x8b, 0xc4, 0x8c, 0xd2, 0x8e
    db 0xc2, 0x8b, 0xf1, 0x8b, 0xf8, 0xa5, 0xa5, 0xe8, 0x8d, 0x75, 0x83, 0xc4, 0x04, 0x50, 0xb8, 0x2c
    db 0x00, 0xf7, 0x2e, 0x62, 0x84, 0x8b, 0xf0, 0xa1, 0x64, 0x84, 0xd1, 0xe0, 0x8b, 0xd8, 0x8b, 0x9f
    db 0x82, 0x84, 0x58, 0x03, 0x40, 0x06, 0x50, 0xe8, 0x71, 0x5c, 0x83, 0xc4, 0x06, 0x50, 0xb8, 0x2c
    db 0x00, 0xf7, 0x2e, 0x62, 0x84, 0x8b, 0xf0, 0xa1, 0x64, 0x84, 0xd1, 0xe0, 0x8b, 0xd8, 0x8b, 0x9f
    db 0x82, 0x84, 0x58, 0x89, 0x40, 0x06, 0xb8, 0x2c, 0x00, 0xf7, 0x2e, 0x62, 0x84, 0x8b, 0xf0, 0xa1
    db 0x64, 0x84, 0xd1, 0xe0, 0x8b, 0xd8, 0x8b, 0x9f, 0x82, 0x84, 0xff, 0x70, 0x04, 0xb8, 0x00, 0x00
    db 0x50, 0x50, 0xb8, 0x02, 0x00, 0x50, 0xff, 0x76, 0x08, 0xe8, 0x57, 0x75, 0x83, 0xc4, 0x06, 0x8b
    db 0xc8, 0x83, 0xec, 0x04, 0x8b, 0xc4, 0x8c, 0xd2, 0x8e, 0xc2, 0x8b, 0xf1, 0x8b, 0xf8, 0xa5, 0xa5
    db 0xe8, 0x14, 0x75, 0x83, 0xc4, 0x04, 0x50, 0xb8, 0x2c, 0x00, 0xf7, 0x2e, 0x62, 0x84, 0x8b, 0xf0
    db 0xa1, 0x64, 0x84, 0xd1, 0xe0, 0x8b, 0xd8, 0x8b, 0x9f, 0x82, 0x84, 0x58, 0x03, 0x40, 0x02, 0x50
    db 0xe8, 0xf8, 0x5b, 0x83, 0xc4, 0x06, 0x50, 0xb8, 0x2c, 0x00, 0xf7, 0x2e, 0x62, 0x84, 0x8b, 0xf0
    db 0xa1, 0x64, 0x84, 0xd1, 0xe0, 0x8b, 0xd8, 0x8b, 0x9f, 0x82, 0x84, 0x58, 0x89, 0x40, 0x02, 0x83
    db 0x3e, 0x64, 0x84, 0x00, 0x75, 0x0e, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x36, 0x62, 0x84, 0xe8, 0x13
    db 0xa7, 0x83, 0xc4, 0x04, 0xe9, 0x93, 0x03, 0x83, 0x3e, 0x64, 0x84, 0x00, 0x75, 0x67, 0xc7, 0x46
    db 0xfe, 0x00, 0x00, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x0a, 0x00, 0x50, 0xff, 0x76, 0x08, 0xe8, 0xd2
    db 0x74, 0x83, 0xc4, 0x06, 0x8b, 0xc8, 0x83, 0xec, 0x04, 0x8b, 0xc4, 0x8c, 0xd2, 0x8e, 0xc2, 0x8b
    db 0xf1, 0x8b, 0xf8, 0xa5, 0xa5, 0xe8, 0x8f, 0x74, 0x83, 0xc4, 0x04, 0x89, 0x46, 0xfc, 0x50, 0xb8
    db 0x48, 0x02, 0xf7, 0x2e, 0x62, 0x84, 0x8b, 0xc8, 0x8b, 0x56, 0xfe, 0xd1, 0xe2, 0xd1, 0xe2, 0x03
    db 0xc2, 0x8b, 0xd8, 0x58, 0x01, 0x87, 0x1c, 0x5c, 0x8b, 0x87, 0x1c, 0x5c, 0x3b, 0x87, 0x1e, 0x5c
    db 0x7e, 0x08, 0x8b, 0x87, 0x1e, 0x5c, 0x89, 0x87, 0x1c, 0x5c, 0xff, 0x46, 0xfe, 0x8b, 0x46, 0xfe
    db 0x3d, 0x06, 0x00, 0x7c, 0x9e, 0xe9, 0x22, 0x03, 0xc7, 0x46, 0xfa, 0x00, 0x00, 0xe9, 0xea, 0x00
    db 0xb8, 0x2c, 0x00, 0xf7, 0x6e, 0xfa, 0x8b, 0xf0, 0xa1, 0x64, 0x84, 0xd1, 0xe0, 0x8b, 0xd8, 0x8b
    db 0x9f, 0x82, 0x84, 0xc6, 0x40, 0x22, 0x00, 0xb8, 0x2c, 0x00, 0xf7, 0x6e, 0xfa, 0x8b, 0xf0, 0xa1
    db 0x64, 0x84, 0xd1, 0xe0, 0x8b, 0xd8, 0x8b, 0x9f, 0x82, 0x84, 0x8b, 0x40, 0x08, 0x89, 0x40, 0x06
    db 0xb8, 0x2c, 0x00, 0xf7, 0x6e, 0xfa, 0x8b, 0xf0, 0xa1, 0x64, 0x84, 0xd1, 0xe0, 0x8b, 0xd8, 0x8b
    db 0x9f, 0x82, 0x84, 0x8b, 0x40, 0x04, 0x89, 0x40, 0x02, 0xc7, 0x46, 0xfc, 0x00, 0x00, 0xb8, 0x2c
    db 0x00, 0xf7, 0x6e, 0xfa, 0x03, 0x46, 0xfc, 0x8b, 0xf0, 0xa1, 0x64, 0x84, 0xd1, 0xe0, 0x8b, 0xd8
    db 0x8b, 0x9f, 0x82, 0x84, 0xc6, 0x40, 0x0e, 0x00, 0xff, 0x46, 0xfc, 0x8b, 0x46, 0xfc, 0x3d, 0x0a
    db 0x00, 0x7c, 0xdb, 0x83, 0x3e, 0x64, 0x84, 0x00, 0x75, 0x6d, 0xc7, 0x46, 0xfe, 0x00, 0x00, 0xb8
    db 0x48, 0x02, 0xf7, 0x6e, 0xfa, 0x8b, 0x4e, 0xfe, 0xd1, 0xe1, 0xd1, 0xe1, 0x03, 0xc1, 0x8b, 0xd8
    db 0x8b, 0x87, 0x1e, 0x5c, 0x89, 0x87, 0x1c, 0x5c, 0xff, 0x46, 0xfe, 0x8b, 0x46, 0xfe, 0x3d, 0x06
    db 0x00, 0x7c, 0xdc, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0xfa, 0x8b, 0xd8, 0x80, 0xbf, 0x67, 0x5d, 0x01
    db 0x73, 0x05, 0xc6, 0x87, 0x67, 0x5d, 0x01, 0xb8, 0x04, 0x00, 0x50, 0xb8, 0x02, 0x00, 0x50, 0xe8
    db 0x0c, 0xbe, 0x83, 0xc4, 0x04, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76, 0xfa, 0xe8, 0xc5, 0xa5, 0x83
    db 0xc4, 0x04, 0xb8, 0x55, 0x00, 0x50, 0xb8, 0x54, 0x0c, 0x50, 0xff, 0x76, 0xfa, 0xff, 0x36, 0x64
    db 0x84, 0xe8, 0x48, 0xdd, 0x83, 0xc4, 0x08, 0xff, 0x46, 0xfa, 0xa1, 0x64, 0x84, 0xd1, 0xe0, 0x8b
    db 0xd8, 0x8b, 0x9f, 0x82, 0x84, 0x8a, 0x87, 0xa1, 0x01, 0x2a, 0xe4, 0x3b, 0x46, 0xfa, 0x7e, 0x03
    db 0xe9, 0xfd, 0xfe, 0xe9, 0x14, 0x02, 0xb8, 0x2c, 0x00, 0xf7, 0x2e, 0x62, 0x84, 0x8b, 0xf0, 0xa1
    db 0x64, 0x84, 0xd1, 0xe0, 0x8b, 0xd8, 0x8b, 0x9f, 0x82, 0x84, 0xc6, 0x40, 0x2b, 0x01, 0x83, 0x3e
    db 0x64, 0x84, 0x00, 0x75, 0x24, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x36, 0x62, 0x84, 0xe8, 0x64, 0xa5
    db 0x83, 0xc4, 0x04, 0xb8, 0x55, 0x00, 0x50, 0xb8, 0x51, 0x0c, 0x50, 0xff, 0x36, 0x62, 0x84, 0xff
    db 0x36, 0x64, 0x84, 0xe8, 0xe6, 0xdc, 0x83, 0xc4, 0x08, 0xe9, 0xce, 0x01, 0xb8, 0x32, 0x00, 0xf7
    db 0x6e, 0x08, 0x01, 0x06, 0xfe, 0x82, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x36, 0x00, 0x83, 0xb8, 0x05
    db 0x00, 0xf7, 0x6e, 0x08, 0x05, 0x46, 0x00, 0x50, 0xe8, 0x27, 0xd0, 0x83, 0xc4, 0x06, 0xa3, 0x00
    db 0x83, 0xe9, 0xa6, 0x01, 0xb8, 0x23, 0x00, 0xf7, 0x6e, 0x08, 0x01, 0x06, 0xf2, 0x82, 0xb8, 0x00
    db 0x00, 0x50, 0xff, 0x36, 0xf4, 0x82, 0x8b, 0x46, 0x08, 0x48, 0xb9, 0x02, 0x00, 0x99, 0xf7, 0xf9
    db 0x40, 0x50, 0xe8, 0xfd, 0xcf, 0x83, 0xc4, 0x06, 0xa3, 0xf4, 0x82, 0xe9, 0x7c, 0x01, 0xb8, 0x32
    db 0x00, 0xf7, 0x6e, 0x08, 0x01, 0x06, 0xf6, 0x82, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x36, 0xf8, 0x82
    db 0x8b, 0x46, 0x08, 0x48, 0xb9, 0x02, 0x00, 0x99, 0xf7, 0xf9, 0x40, 0x50, 0xe8, 0xd3, 0xcf, 0x83
    db 0xc4, 0x06, 0xa3, 0xf8, 0x82, 0xe9, 0x52, 0x01, 0xb8, 0x05, 0x00, 0xf7, 0x6e, 0x08, 0x01, 0x06
    db 0x06, 0x83, 0xe9, 0x45, 0x01, 0xb8, 0x64, 0x00, 0xf7, 0x6e, 0x08, 0x01, 0x06, 0x02, 0x83, 0xe9
    db 0x38, 0x01, 0xb8, 0x00, 0x00, 0x50, 0xa1, 0x64, 0x84, 0xd1, 0xe0, 0x8b, 0xd8, 0x8b, 0x9f, 0x82
    db 0x84, 0x8a, 0x87, 0x90, 0x01, 0x2a, 0xe4, 0x50, 0xb8, 0x0a, 0x00, 0xf7, 0x6e, 0x08, 0x50, 0xe8
    db 0x90, 0xcf, 0x83, 0xc4, 0x06, 0x8b, 0x0e, 0x64, 0x84, 0xd1, 0xe1, 0x8b, 0xd9, 0x8b, 0x9f, 0x82
    db 0x84, 0x88, 0x87, 0x90, 0x01, 0x83, 0x3e, 0x64, 0x84, 0x00, 0x75, 0x22, 0xb8, 0x32, 0x00, 0xf7
    db 0x6e, 0x08, 0x01, 0x06, 0xfa, 0x82, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x36, 0xfc, 0x82, 0xb8, 0x0a
    db 0x00, 0xf7, 0x6e, 0x08, 0x50, 0xe8, 0x5a, 0xcf, 0x83, 0xc4, 0x06, 0xa3, 0xfc, 0x82, 0xe9, 0xd9
    db 0x00, 0xa2, 0x8b, 0xdb, 0x8b, 0x27, 0x8c, 0x69, 0x8c, 0xac, 0x8c, 0xe2, 0x8c, 0x17, 0x8d, 0x57
    db 0x8d, 0x9a, 0x8d, 0xd1, 0x8d, 0x46, 0x8e, 0x9a, 0x8e, 0x22, 0xa6, 0xd3, 0x8e, 0x19, 0x8f, 0x54
    db 0x8f, 0x8c, 0x8f, 0x27, 0xa7, 0xf5, 0x8f, 0x22, 0xa6, 0x2b, 0x90, 0x6e, 0x90, 0xb5, 0x90, 0xbd
    db 0x91, 0xf6, 0x91, 0x6e, 0xa8, 0x6b, 0x92, 0xbb, 0x92, 0xf1, 0x92, 0x29, 0x93, 0x7a, 0x93, 0xb0
    db 0x93, 0xfc, 0x93, 0x74, 0xa7, 0x8b, 0x94, 0xce, 0x94, 0x8d, 0x95, 0x86, 0xae, 0x1e, 0x96, 0xa9
    db 0x96, 0x02, 0x97, 0x58, 0x97, 0xa9, 0x97, 0x24, 0x98, 0x5d, 0x98, 0xa9, 0x98, 0x93, 0xae, 0xd8
    db 0xaf, 0x03, 0x99, 0x5c, 0xae, 0x46, 0x99, 0x8d, 0x99, 0xc8, 0x99, 0x3d, 0x9a, 0xcb, 0x9a, 0x04
    db 0x9b, 0x06, 0xa4, 0x5a, 0x9b, 0xa6, 0x9b, 0xf5, 0x9b, 0xa3, 0x9c, 0x1a, 0xa9, 0xd8, 0xaf, 0x0a
    db 0xae, 0xea, 0x9c, 0x84, 0x9d, 0xbc, 0xa8, 0x36, 0x9d, 0xd8, 0xaf, 0x21, 0xa8, 0xd1, 0x9d, 0x2a
    db 0x9e, 0xd8, 0xaf, 0x80, 0x9e, 0xd7, 0x9e, 0xd8, 0xaf, 0x1b, 0x9f, 0xd8, 0xaf, 0x22, 0xaa, 0x64
    db 0x9f, 0x9d, 0x9f, 0xdf, 0x9f, 0x32, 0xae, 0x61, 0xa0, 0xa0, 0xae, 0xdc, 0xa0, 0x90, 0xa1, 0xd8
    db 0xaf, 0x22, 0xaa, 0x9e, 0xa9, 0xdd, 0xa1, 0x5f, 0xa2, 0xd8, 0xaf, 0xd2, 0xa2, 0x15, 0xa5, 0x1b
    db 0xa3, 0x71, 0xa3, 0x39, 0xab, 0x45, 0xac, 0xd8, 0xaf, 0xb6, 0xac, 0xc4, 0xad

@..local.l223:
    cmp ax, strict word 0x66         ; 0x5f84
    jae short @..local.l224          ; 0x5f87
    xchg bx, ax                      ; 0x5f89
    shl bx, 1                        ; 0x5f8a
    jmp [cs:bx - 0x5101]             ; 0x5f8c
@..local.l224:
    cmp word [data_90e4], byte 0     ; 0x5f91
    jne short @..local.l225          ; 0x5f96
    push word [data_9058]            ; 0x5f98
    call api_idx_0004_5              ; 0x5f9c
    pop cx                           ; 0x5f9f
@..local.l225:
    ret                              ; 0x5fa0
api_idx_000e_6:
    mov ax, 0xfff2                   ; 0x5fa1
    call ds_dispatch_f40b            ; 0x5fa4
    mov al, byte [data_69c8]         ; 0x5fa7
    mov bx, word [data_8482]         ; 0x5faa
    mov byte [bx + 0x1a1], al        ; 0x5fae
    mov bx, word [bp + 0x4]          ; 0x5fb2
    mov al, byte [bx + 0x1f]         ; 0x5fb5
    sub ah, ah                       ; 0x5fb8
    mov word [bp - 0x0008], ax       ; 0x5fba
    mov al, byte [bx + 0x20]         ; 0x5fbd
    sub ah, ah                       ; 0x5fc0
    mov word [bp - 0x000a], ax       ; 0x5fc2
    mov ax, word [bx + 0xa]          ; 0x5fc5
    mov cx, 0x100                    ; 0x5fc8
    cwd                              ; 0x5fcb
    idiv cx                          ; 0x5fcc
    mov word [bp - 0x0004], ax       ; 0x5fce
    mov ax, word [bx + 0xa]          ; 0x5fd1
    cwd                              ; 0x5fd4
    idiv cx                          ; 0x5fd5
    mov word [bp - 0x0006], dx       ; 0x5fd7
    push word [data_8462]            ; 0x5fda
    push word [data_8464]            ; 0x5fde
    mov ax, 0x90e6                   ; 0x5fe2
    push ax                          ; 0x5fe5
    call math_loc_15ab               ; 0x5fe6
    add sp, byte 6                   ; 0x5fe9
    mov ax, data_9136                ; 0x5fec
    push ax                          ; 0x5fef
    mov ax, 0xcec                    ; 0x5ff0
    push ax                          ; 0x5ff3
    call ds_dispatch_b53b            ; 0x5ff4
    add sp, byte 4                   ; 0x5ff7
    mov ax, data_9186                ; 0x5ffa
    push ax                          ; 0x5ffd
    mov ax, word [bp - 0x0006]       ; 0x5ffe
    add ax, 0xfa0                    ; 0x6001
    push ax                          ; 0x6004
    call ds_dispatch_b53b            ; 0x6005
    add sp, byte 4                   ; 0x6008
    mov ax, 6                        ; 0x600b
    imul word [bp - 0x0006]          ; 0x600e
    mov bx, ax                       ; 0x6011
    mov al, byte [bx + 0x620]        ; 0x6013
    sub ah, ah                       ; 0x6017
    shl ax, 1                        ; 0x6019
    shl ax, 1                        ; 0x601b
    mov bx, ax                       ; 0x601d
    db 0xff, 0xb7, 0x06, 0x00 ; push word [bx + 0x6]
    mov ax, 0x43                     ; 0x6023
    push ax                          ; 0x6026
    cmp word [data_8464], byte 0     ; 0x6027
    jne short @..api_idx_000e_6.l1   ; 0x602c
    mov ax, 1                        ; 0x602e
@..api_idx_000e_6.l1:
    push ax                          ; 0x6031
    mov ax, data_9186                ; 0x6032
    push ax                          ; 0x6035
    mov ax, data_9136                ; 0x6036
    push ax                          ; 0x6039
    mov ax, 0x90e6                   ; 0x603a
    push ax                          ; 0x603d
    mov ax, 0                        ; 0x603e
    push ax                          ; 0x6041
    call api_idx_0004_4              ; 0x6042
    add sp, byte 0x0e                ; 0x6045
    mov word [data_91d8], 0          ; 0x6048
    mov word [data_91da], 0          ; 0x604e
    mov ax, word [data_8464]         ; 0x6054
    shl ax, 1                        ; 0x6057
    mov bx, ax                       ; 0x6059
    mov bx, word [bx - 0x7b7e]       ; 0x605b
    mov al, byte [bx + 0x191]        ; 0x605f
    sub ah, ah                       ; 0x6063
    mov bx, word [bp + 0x4]          ; 0x6065
    mov cx, word [bx]                ; 0x6068
    add ax, cx                       ; 0x606a
    inc ax                           ; 0x606c
    push ax                          ; 0x606d
    call ds_dispatch_b7a9            ; 0x606e
    pop cx                           ; 0x6071
    push ax                          ; 0x6072
    mov ax, word [data_8464]         ; 0x6073
    shl ax, 1                        ; 0x6076
    mov bx, ax                       ; 0x6078
    mov bx, word [bx - 0x7b7e]       ; 0x607a
    mov al, byte [bx + 0x191]        ; 0x607e
    sub ah, ah                       ; 0x6082
    mov cx, ax                       ; 0x6084
    pop ax                           ; 0x6086
    cmp ax, cx                       ; 0x6087
    jge short @..api_idx_000e_6.l2   ; 0x6089
    mov word [data_91da], 1          ; 0x608b
@..api_idx_000e_6.l2:
    cmp word [data_8464], byte 0     ; 0x6091
    je short @..api_idx_000e_6.l3    ; 0x6096
    jmp near @..api_idx_000e_6.l9    ; 0x6098
@..api_idx_000e_6.l3:
    mov ax, 0x248                    ; 0x609b
    imul word [data_8462]            ; 0x609e
    mov bx, ax                       ; 0x60a2
    mov al, byte [bx + 0x5e2d]       ; 0x60a4
    cmp al, 5                        ; 0x60a8
    je short @..api_idx_000e_6.l4    ; 0x60aa
    cmp al, 4                        ; 0x60ac
    je short @..api_idx_000e_6.l4    ; 0x60ae
    cmp al, 0xd                      ; 0x60b0
    jne short @..api_idx_000e_6.l5   ; 0x60b2
@..api_idx_000e_6.l4:
    mov al, byte [bx + 0x5d89]       ; 0x60b4
    sub ah, ah                       ; 0x60b8
    mov cx, 3                        ; 0x60ba
    cwd                              ; 0x60bd
    idiv cx                          ; 0x60be
    add ax, strict word 0x5a         ; 0x60c0
    push ax                          ; 0x60c3
    mov ax, 6                        ; 0x60c4
    imul word [bp - 0x0006]          ; 0x60c7
    mov bx, ax                       ; 0x60ca
    mov al, byte [bx + 0x621]        ; 0x60cc
    sub ah, ah                       ; 0x60d0
    imul word [bp - 0x0004]          ; 0x60d2
    mov cx, ax                       ; 0x60d5
    pop ax                           ; 0x60d7
    sub ax, cx                       ; 0x60d8
    mov word [bp - 0x000e], ax       ; 0x60da
    jmp short @..api_idx_000e_6.l6   ; 0x60dd
@..api_idx_000e_6.l5:
    mov ax, 0x248                    ; 0x60df
    imul word [data_8462]            ; 0x60e2
    mov bx, ax                       ; 0x60e6
    mov al, byte [bx + 0x5d7a]       ; 0x60e8
    sub ah, ah                       ; 0x60ec
    mov cx, 3                        ; 0x60ee
    cwd                              ; 0x60f1
    idiv cx                          ; 0x60f2
    add ax, strict word 0x5a         ; 0x60f4
    push ax                          ; 0x60f7
    mov ax, 6                        ; 0x60f8
    imul word [bp - 0x0006]          ; 0x60fb
    mov bx, ax                       ; 0x60fe
    mov al, byte [bx + 0x621]        ; 0x6100
    sub ah, ah                       ; 0x6104
    imul word [bp - 0x0004]          ; 0x6106
    mov cx, ax                       ; 0x6109
    pop ax                           ; 0x610b
    sub ax, cx                       ; 0x610c
    mov word [bp - 0x000e], ax       ; 0x610e
    mov ax, 2                        ; 0x6111
    push ax                          ; 0x6114
    mov ax, api_idx_0002             ; 0x6115
    push ax                          ; 0x6118
    push word [data_8462]            ; 0x6119
    call math_loc_1bf4               ; 0x611d
    add sp, byte 6                   ; 0x6120
@..api_idx_000e_6.l6:
    mov ax, 0x64                     ; 0x6123
    push ax                          ; 0x6126
    call ds_dispatch_b7a9            ; 0x6127
    pop cx                           ; 0x612a
    cmp ax, word [bp - 0x000e]       ; 0x612b
    jle short @..api_idx_000e_6.l8   ; 0x612e
    cmp byte [data_5988], 1          ; 0x6130
    je short @..api_idx_000e_6.l7    ; 0x6135
    mov ax, 0x24                     ; 0x6137
    push ax                          ; 0x613a
    call ds_dispatch_b7a9            ; 0x613b
    pop cx                           ; 0x613e
    push ax                          ; 0x613f
    mov ax, 0x248                    ; 0x6140
    imul word [data_8462]            ; 0x6143
    mov bx, ax                       ; 0x6147
    mov al, byte [bx + 0x5d6b]       ; 0x6149
    sub ah, ah                       ; 0x614d
    mov cx, ax                       ; 0x614f
    add ax, strict word 0x12         ; 0x6151
    mov cx, ax                       ; 0x6154
    pop ax                           ; 0x6156
    cmp ax, cx                       ; 0x6157
    jle short @..api_idx_000e_6.l7   ; 0x6159
    mov word [data_91da], 0          ; 0x615b
    mov word [data_91d8], 1          ; 0x6161
    jmp short @..api_idx_000e_6.l8   ; 0x6167
@..api_idx_000e_6.l7:
    mov word [data_91da], 1          ; 0x6169
@..api_idx_000e_6.l8:
    jmp short @..local.l227          ; 0x616f
@..api_idx_000e_6.l9:
    mov ax, 0x2c                     ; 0x6171
    imul word [data_8462]            ; 0x6174
    mov si, ax                       ; 0x6178
    mov ax, word [data_8464]         ; 0x617a
    shl ax, 1                        ; 0x617d
    mov bx, ax                       ; 0x617f
    mov bx, word [bx - 0x7b7e]       ; 0x6181
    mov ax, word [bx + si]           ; 0x6185
    mov cx, 3                        ; 0x6187
    imul cx                          ; 0x618a
    add ax, strict word 0x58         ; 0x618c
    push ax                          ; 0x618f
    mov ax, 6                        ; 0x6190
    imul word [bp - 0x0006]          ; 0x6193
    mov bx, ax                       ; 0x6196
    mov al, byte [bx + 0x621]        ; 0x6198
    sub ah, ah                       ; 0x619c
    imul word [bp - 0x0004]          ; 0x619e
    mov cx, ax                       ; 0x61a1
    pop ax                           ; 0x61a3
    sub ax, cx                       ; 0x61a4
    mov word [bp - 0x000e], ax       ; 0x61a6
    mov ax, 0x64                     ; 0x61a9
    push ax                          ; 0x61ac
    call ds_dispatch_b7a9            ; 0x61ad
    pop cx                           ; 0x61b0
    mov cx, ax                       ; 0x61b1
    mov ax, word [bp - 0x000e]       ; 0x61b3
    cmp cx, ax                       ; 0x61b6
    jle short @..local.l227          ; 0x61b8
    cmp byte [data_5988], 2          ; 0x61ba
    je short @..local.l226           ; 0x61bf
    mov ax, 7                        ; 0x61c1
    push ax                          ; 0x61c4
    call ds_dispatch_b7a9            ; 0x61c5
    pop cx                           ; 0x61c8
    test ax, ax                      ; 0x61c9
    jne short @..local.l226          ; 0x61cb
    mov word [data_91da], 0          ; 0x61cd
    mov word [data_91d8], 1          ; 0x61d3
    jmp short @..local.l227          ; 0x61d9
@..local.l226:
    mov word [data_91da], 1          ; 0x61db
@..local.l227:
    mov word [bp - 0x000c], 1        ; 0x61e1
    cmp word [data_8464], byte 0     ; 0x61e6
    jne short @..local.l230          ; 0x61eb
    mov ax, 0x248                    ; 0x61ed
    imul word [data_8462]            ; 0x61f0
    mov bx, ax                       ; 0x61f4
    mov al, byte [bx + 0x5e2d]       ; 0x61f6
    cmp al, 5                        ; 0x61fa
    je short @..local.l228           ; 0x61fc
    cmp al, 4                        ; 0x61fe
    je short @..local.l228           ; 0x6200
    cmp al, 0xd                      ; 0x6202
    jne short @..local.l229          ; 0x6204
@..local.l228:
    mov word [bp - 0x000c], 0        ; 0x6206
@..local.l229:
    jmp short @..local.l232          ; 0x620b
@..local.l230:
    mov ax, word [data_8464]         ; 0x620d
    shl ax, 1                        ; 0x6210
    mov bx, ax                       ; 0x6212
    mov bx, word [bx - 0x7b70]       ; 0x6214
    mov al, byte [bx + 0xd6]         ; 0x6218
    cmp al, 5                        ; 0x621c
    je short @..local.l231           ; 0x621e
    cmp al, 4                        ; 0x6220
    je short @..local.l231           ; 0x6222
    cmp al, 0xd                      ; 0x6224
    jne short @..local.l232          ; 0x6226
@..local.l231:
    mov word [bp - 0x000c], 0        ; 0x6228
@..local.l232:
    cmp word [data_91d8], byte 1     ; 0x622d
    jne short @..local.l233          ; 0x6232
    mov ax, 6                        ; 0x6234
    imul word [bp - 0x0006]          ; 0x6237
    mov bx, ax                       ; 0x623a
    mov al, byte [bx + 0x623]        ; 0x623c
    sub ah, ah                       ; 0x6240
    test ax, 2                       ; 0x6242
    jne short @..local.l233          ; 0x6245
    mov word [data_91d8], 0          ; 0x6247
    mov word [data_91da], 1          ; 0x624d
@..local.l233:
    cmp word [data_91da], byte 1     ; 0x6253
    jne short @..local.l234          ; 0x6258
    mov ax, 6                        ; 0x625a
    imul word [bp - 0x0006]          ; 0x625d
    mov bx, ax                       ; 0x6260
    mov al, byte [bx + 0x623]        ; 0x6262
    sub ah, ah                       ; 0x6266
    test ax, 1                       ; 0x6268
    jne short @..local.l234          ; 0x626b
    mov word [data_91da], 0          ; 0x626d
@..local.l234:
    cmp word [bp - 0x000c], byte 1   ; 0x6273
    jne short @..local.l235          ; 0x6277
    mov bx, word [bp + 0x4]          ; 0x6279
    cmp byte [bx + 0xe], 0           ; 0x627c
    jbe short @..local.l235          ; 0x6280
    mov ax, 4                        ; 0x6282
    push ax                          ; 0x6285
    call api_idx_0004_5              ; 0x6286
    pop cx                           ; 0x6289
    mov ax, 2                        ; 0x628a
    push ax                          ; 0x628d
    mov ax, 0x41                     ; 0x628e
    push ax                          ; 0x6291
    mov ax, 0xc80                    ; 0x6292
    push ax                          ; 0x6295
    call api_idx_0050                ; 0x6296
    add sp, byte 6                   ; 0x6299
    push word [data_9058]            ; 0x629c
    call api_idx_0004_5              ; 0x62a0
    pop cx                           ; 0x62a3
    jmp near @..local.l238           ; 0x62a4
@..local.l235:
    cmp word [data_91da], byte 1     ; 0x62a7
    jne short @..local.l236          ; 0x62ac
    mov ax, 4                        ; 0x62ae
    push ax                          ; 0x62b1
    call api_idx_0004_5              ; 0x62b2
    pop cx                           ; 0x62b5
    mov ax, 2                        ; 0x62b6
    push ax                          ; 0x62b9
    mov ax, 0x41                     ; 0x62ba
    push ax                          ; 0x62bd
    mov ax, 0xc81                    ; 0x62be
    push ax                          ; 0x62c1
    call api_idx_0050                ; 0x62c2
    add sp, byte 6                   ; 0x62c5
    push word [data_9058]            ; 0x62c8
    call api_idx_0004_5              ; 0x62cc
    pop cx                           ; 0x62cf
    jmp short @..local.l238          ; 0x62d0
@..local.l236:
    cmp word [data_91d8], byte 1     ; 0x62d2
    jne short @..local.l237          ; 0x62d7
    mov ax, 4                        ; 0x62d9
    push ax                          ; 0x62dc
    call api_idx_0004_5              ; 0x62dd
    pop cx                           ; 0x62e0
    mov ax, 2                        ; 0x62e1
    push ax                          ; 0x62e4
    mov ax, 0x16                     ; 0x62e5
    push ax                          ; 0x62e8
    mov ax, 0xc82                    ; 0x62e9
    push ax                          ; 0x62ec
    call api_idx_0050                ; 0x62ed
    add sp, byte 6                   ; 0x62f0
    push word [data_9058]            ; 0x62f3
    call api_idx_0004_5              ; 0x62f7
    pop cx                           ; 0x62fa
    mov al, byte [data_8464]         ; 0x62fb
    mov bx, word [bp + 0x4]          ; 0x62fe
    mov byte [bx + 0x1f], al         ; 0x6301
    mov al, byte [data_8462]         ; 0x6304
    mov bx, word [bp + 0x4]          ; 0x6307
    mov byte [bx + 0x20], al         ; 0x630a
@..local.l237:
    push word [bp - 0x0004]          ; 0x630d
    push word [bp - 0x0006]          ; 0x6310
    push word [bp + 0x4]             ; 0x6313
    call api_idx_000e_5              ; 0x6316
    add sp, byte 6                   ; 0x6319
@..local.l238:
    cmp word [data_8464], byte 0     ; 0x631c
    jne short @..local.l239          ; 0x6321
    mov ax, 6                        ; 0x6323
    imul word [bp - 0x0006]          ; 0x6326
    mov bx, ax                       ; 0x6329
    mov al, byte [bx + 0x622]        ; 0x632b
    sub ah, ah                       ; 0x632f
    imul word [bp - 0x0004]          ; 0x6331
    push ax                          ; 0x6334
    mov ax, 0x248                    ; 0x6335
    imul word [data_8462]            ; 0x6338
    mov cx, ax                       ; 0x633c
    mov al, byte [bx + 0x620]        ; 0x633e
    sub ah, ah                       ; 0x6342
    mov dx, ax                       ; 0x6344
    shl ax, 1                        ; 0x6346
    shl ax, 1                        ; 0x6348
    mov dx, ax                       ; 0x634a
    add cx, ax                       ; 0x634c
    mov bx, cx                       ; 0x634e
    pop ax                           ; 0x6350
    sub word [bx + 0x5c1c], ax       ; 0x6351
@..local.l239:
    push word [bp - 0x0004]          ; 0x6355
    call ds_dispatch_b7a9            ; 0x6358
    pop cx                           ; 0x635b
    push ax                          ; 0x635c
    mov ax, 6                        ; 0x635d
    imul word [bp - 0x0006]          ; 0x6360
    mov bx, ax                       ; 0x6363
    mov al, byte [bx + 0x621]        ; 0x6365
    sub ah, ah                       ; 0x6369
    mov cx, ax                       ; 0x636b
    pop ax                           ; 0x636d
    add ax, cx                       ; 0x636e
    add ax, word [bp - 0x0004]       ; 0x6370
    ret                              ; 0x6373
api_idx_0004_10:
    mov ax, 0xfffc                   ; 0x6374
    call ds_dispatch_f40b            ; 0x6377
    mov ax, word [bp + 0x4]          ; 0x637a
    push ax                          ; 0x637d
    cmp ax, strict word 0            ; 0x637e
    pop ax                           ; 0x6381
    jle short @..api_idx_0004_10.l1  ; 0x6382
    dec ax                           ; 0x6384
@..api_idx_0004_10.l1:
    mov word [bp - 0x0004], ax       ; 0x6385
    mov word [bp - 0x0002], 0        ; 0x6388
@..api_idx_0004_10.l2:
    mov ax, 0x2c                     ; 0x638d
    imul word [bp - 0x0004]          ; 0x6390
    mov si, ax                       ; 0x6393
    mov bx, word [data_8482]         ; 0x6395
    cmp byte [bx + si + 0x22], 3     ; 0x6399
    jae short @..local.l240          ; 0x639d
    cmp byte [bx + si + 0x2b], 0     ; 0x639f
    jne short @..local.l240          ; 0x63a3
    mov ax, word [bp - 0x0004]       ; 0x63a5
    ret                              ; 0x63a8
@..local.l240:
    mov ax, word [data_69c8]         ; 0x63a9
    dec ax                           ; 0x63ac
    cmp ax, word [bp + 0x4]          ; 0x63ad
    jle short @..local.l241          ; 0x63b0
    mov ax, word [bp + 0x4]          ; 0x63b2
    inc ax                           ; 0x63b5
    jmp short @..local.l242          ; 0x63b6
@..local.l241:
    mov ax, word [bp + 0x4]          ; 0x63b8
@..local.l242:
    mov word [bp - 0x0004], ax       ; 0x63bb
    inc word [bp - 0x0002]           ; 0x63be
    mov ax, word [bp - 0x0002]       ; 0x63c1
    cmp ax, strict word 2            ; 0x63c4
    jl short @..api_idx_0004_10.l2   ; 0x63c7
    mov ax, word [bp + 0x4]          ; 0x63c9
    ret                              ; 0x63cc
api_idx_0008_2:
    mov ax, 0xfff8                   ; 0x63cd
    call ds_dispatch_f40b            ; 0x63d0
    mov word [bp - 0x0002], 0        ; 0x63d3
@..api_idx_0008_2.l1:
    mov word [bp - 0x0004], 0        ; 0x63d8
@..api_idx_0008_2.l2:
    mov ax, 6                        ; 0x63dd
    imul word [bp - 0x0002]          ; 0x63e0
    push ax                          ; 0x63e3
    mov ax, word [data_8462]         ; 0x63e4
    mov cx, 6                        ; 0x63e7
    cwd                              ; 0x63ea
    idiv cx                          ; 0x63eb
    mov ax, dx                       ; 0x63ed
    imul cx                          ; 0x63ef
    mov cx, ax                       ; 0x63f1
    mov dx, word [bp - 0x0004]       ; 0x63f3
    shl dx, 1                        ; 0x63f6
    add ax, dx                       ; 0x63f8
    mov bx, ax                       ; 0x63fa
    mov cx, word [bx + 0x592]        ; 0x63fc
    shl cx, 1                        ; 0x6400
    pop ax                           ; 0x6402
    add ax, cx                       ; 0x6403
    mov bx, ax                       ; 0x6405
    mov ax, word [bx - 0x7bc6]       ; 0x6407
    mov cx, 0xa                      ; 0x640b
    cwd                              ; 0x640e
    idiv cx                          ; 0x640f
    mov word [bp - 0x0008], ax       ; 0x6411
    mov word [bp - 0x0006], dx       ; 0x6414
    cmp ax, word [bp + 0x4]          ; 0x6417
    jne short @..local.l243          ; 0x641a
    mov ax, dx                       ; 0x641c
    ret                              ; 0x641e
@..local.l243:
    inc word [bp - 0x0004]           ; 0x641f
    mov ax, word [bp - 0x0004]       ; 0x6422
    cmp ax, strict word 3            ; 0x6425
    jl short @..api_idx_0008_2.l2    ; 0x6428
    inc word [bp - 0x0002]           ; 0x642a
    mov ax, word [bp - 0x0002]       ; 0x642d
    cmp ax, strict word 3            ; 0x6430
    jl short @..api_idx_0008_2.l1    ; 0x6433
    mov word [bp - 0x0006], 0        ; 0x6435
    jmp short @..local.l246          ; 0x643a
@..local.l244:
    mov ax, 0x2c                     ; 0x643c
    imul word [bp - 0x0006]          ; 0x643f
    mov si, ax                       ; 0x6442
    mov ax, word [bp + 0x4]          ; 0x6444
    shl ax, 1                        ; 0x6447
    mov bx, ax                       ; 0x6449
    mov bx, word [bx - 0x7b7e]       ; 0x644b
    cmp byte [bx + si + 0x22], 3     ; 0x644f
    jae short @..local.l245          ; 0x6453
    mov ax, word [bp - 0x0006]       ; 0x6455
    ret                              ; 0x6458
@..local.l245:
    inc word [bp - 0x0006]           ; 0x6459
@..local.l246:
    mov ax, word [bp + 0x4]          ; 0x645c
    shl ax, 1                        ; 0x645f
    mov bx, ax                       ; 0x6461
    mov bx, word [bx - 0x7b7e]       ; 0x6463
    mov al, byte [bx + 0x1a1]        ; 0x6467
    sub ah, ah                       ; 0x646b
    cmp ax, word [bp - 0x0006]       ; 0x646d
    jg short @..local.l244           ; 0x6470
    mov ax, word [bp + 0x6]          ; 0x6472
    ret                              ; 0x6475
api_idx_0014:
    mov ax, 0xffec                   ; 0x6476
    call ds_dispatch_f40b            ; 0x6479
    mov bx, word [data_8490]         ; 0x647c
    mov byte [bx + 0xe2], 0          ; 0x6480
    mov word [data_90de], 6          ; 0x6485
    mov word [data_91d8], 0          ; 0x648b
    mov word [data_91da], 0          ; 0x6491
    mov ax, 0x2c                     ; 0x6497
    imul word [data_8462]            ; 0x649a
    mov cx, ax                       ; 0x649e
    mov ax, word [data_8464]         ; 0x64a0
    shl ax, 1                        ; 0x64a3
    mov bx, ax                       ; 0x64a5
    mov ax, word [bx - 0x7b7e]       ; 0x64a7
    add ax, cx                       ; 0x64ab
    mov word [bp - 0x0002], ax       ; 0x64ad
    mov bx, ax                       ; 0x64b0
    cmp byte [bx + 0x22], 2          ; 0x64b2
    jae short @..api_idx_0014.l1     ; 0x64b6
    cmp byte [bx + 0x11], 0          ; 0x64b8
    ja short @..api_idx_0014.l1      ; 0x64bc
    cmp byte [bx + 0x10], 0          ; 0x64be
    jbe short @..local.l247          ; 0x64c2
@..api_idx_0014.l1:
    ret                              ; 0x64c4
@..local.l247:
    mov ax, 1                        ; 0x64c5
    push ax                          ; 0x64c8
    call api_idx_000a_2              ; 0x64c9
    pop cx                           ; 0x64cc
    mov word [bp - 0x0004], 0        ; 0x64cd
    mov word [bp - 0x0006], 0        ; 0x64d2
    mov word [bp - 0x0008], 0        ; 0x64d7
    cmp word [bp - 0x0004], byte 0   ; 0x64dc
    jne short @..local.l248          ; 0x64e0
    mov bx, word [bp - 0x0002]       ; 0x64e2
    cmp byte [bx + 0xf], 0           ; 0x64e5
    jbe short @..local.l248          ; 0x64e9
    mov ax, 0x64                     ; 0x64eb
    push ax                          ; 0x64ee
    call ds_dispatch_b7a9            ; 0x64ef
    pop cx                           ; 0x64f2
    cmp ax, strict word 0x50         ; 0x64f3
    jle short @..local.l248          ; 0x64f6
    mov bx, word [bp - 0x0002]       ; 0x64f8
    cmp byte [bx + 0x1e], 6          ; 0x64fb
    je short @..local.l248           ; 0x64ff
    mov word [bp - 0x0004], 0xc89    ; 0x6501
@..local.l248:
    cmp word [bp - 0x0004], byte 0   ; 0x6506
    jne short @..local.l249          ; 0x650a
    mov bx, word [bp - 0x0002]       ; 0x650c
    cmp byte [bx + 0x15], 0          ; 0x650f
    jbe short @..local.l249          ; 0x6513
    mov ax, 0x64                     ; 0x6515
    push ax                          ; 0x6518
    call ds_dispatch_b7a9            ; 0x6519
    pop cx                           ; 0x651c
    cmp ax, strict word 0x28         ; 0x651d
    jle short @..local.l249          ; 0x6520
    mov ax, 3                        ; 0x6522
    push ax                          ; 0x6525
    call ds_dispatch_b7a9            ; 0x6526
    pop cx                           ; 0x6529
    add ax, 0xc85                    ; 0x652a
    mov word [bp - 0x0004], ax       ; 0x652d
    mov ax, 0x64                     ; 0x6530
    push ax                          ; 0x6533
    call ds_dispatch_b7a9            ; 0x6534
    pop cx                           ; 0x6537
    cmp ax, strict word 0x50         ; 0x6538
    jle short @..local.l249          ; 0x653b
    mov word [bp - 0x0004], 0xc88    ; 0x653d
    mov word [bp - 0x0006], 1        ; 0x6542
@..local.l249:
    cmp word [bp - 0x0004], byte 0   ; 0x6547
    jne short @..local.l250          ; 0x654b
    mov bx, word [bp - 0x0002]       ; 0x654d
    cmp byte [bx + 0x12], 0          ; 0x6550
    jbe short @..local.l250          ; 0x6554
    mov ax, 0x64                     ; 0x6556
    push ax                          ; 0x6559
    call ds_dispatch_b7a9            ; 0x655a
    pop cx                           ; 0x655d
    cmp ax, strict word 0x50         ; 0x655e
    jle short @..local.l250          ; 0x6561
    mov word [bp - 0x0004], 0xc84    ; 0x6563
    mov word [bp - 0x0006], 0        ; 0x6568
@..local.l250:
    cmp word [bp - 0x0004], byte 0   ; 0x656d
    jne short @..local.l251          ; 0x6571
    mov bx, word [bp - 0x0002]       ; 0x6573
    cmp byte [bx + 0x16], 0          ; 0x6576
    jbe short @..local.l251          ; 0x657a
    mov ax, 0x64                     ; 0x657c
    push ax                          ; 0x657f
    call ds_dispatch_b7a9            ; 0x6580
    pop cx                           ; 0x6583
    cmp ax, strict word 0x4b         ; 0x6584
    jle short @..local.l251          ; 0x6587
    mov word [bp - 0x0004], 0xc83    ; 0x6589
    mov word [bp - 0x0006], 0        ; 0x658e
@..local.l251:
    mov ax, word [data_8464]         ; 0x6593
    shl ax, 1                        ; 0x6596
    mov bx, ax                       ; 0x6598
    mov bx, word [bx - 0x7b70]       ; 0x659a
    mov al, byte [bx + 0xe2]         ; 0x659e
    sub ah, ah                       ; 0x65a2
    test ax, 4                       ; 0x65a4
    je short @..local.l252           ; 0x65a7
    mov ax, 0x2c                     ; 0x65a9
    imul word [data_8462]            ; 0x65ac
    mov si, ax                       ; 0x65b0
    mov ax, word [data_8464]         ; 0x65b2
    shl ax, 1                        ; 0x65b5
    mov bx, ax                       ; 0x65b7
    mov bx, word [bx - 0x7b7e]       ; 0x65b9
    mov ax, word [bx + si + 0x2]     ; 0x65bd
    push ax                          ; 0x65c0
    mov ax, word [bx + si + 0x4]     ; 0x65c1
    mov cx, 4                        ; 0x65c4
    cwd                              ; 0x65c7
    idiv cx                          ; 0x65c8
    mov cx, ax                       ; 0x65ca
    pop ax                           ; 0x65cc
    cmp ax, cx                       ; 0x65cd
    jge short @..local.l252          ; 0x65cf
    mov word [bp - 0x0004], 0xc92    ; 0x65d1
    mov word [bp - 0x0008], 1        ; 0x65d6
@..local.l252:
    cmp word [bp - 0x0004], byte 0   ; 0x65db
    jg short @..local.l253           ; 0x65df
    jmp near @..local.l272           ; 0x65e1
@..local.l253:
    mov ax, 4                        ; 0x65e4
    push ax                          ; 0x65e7
    call api_idx_0004_5              ; 0x65e8
    pop cx                           ; 0x65eb
    push word [data_8462]            ; 0x65ec
    push word [data_8464]            ; 0x65f0
    mov ax, 0x90e6                   ; 0x65f4
    push ax                          ; 0x65f7
    call math_loc_15ab               ; 0x65f8
    add sp, byte 6                   ; 0x65fb
    mov ax, data_9136                ; 0x65fe
    push ax                          ; 0x6601
    push word [bp - 0x0004]          ; 0x6602
    call ds_dispatch_b53b            ; 0x6605
    add sp, byte 4                   ; 0x6608
    mov byte [data_9186], 0          ; 0x660b
    mov ax, 0                        ; 0x6610
    push ax                          ; 0x6613
    mov ax, 0x43                     ; 0x6614
    push ax                          ; 0x6617
    cmp word [data_8464], byte 0     ; 0x6618
    jne short @..local.l254          ; 0x661d
    mov ax, 1                        ; 0x661f
@..local.l254:
    push ax                          ; 0x6622
    mov ax, data_9186                ; 0x6623
    push ax                          ; 0x6626
    mov ax, data_9136                ; 0x6627
    push ax                          ; 0x662a
    mov ax, 0x90e6                   ; 0x662b
    push ax                          ; 0x662e
    mov ax, 0                        ; 0x662f
    push ax                          ; 0x6632
    call api_idx_0004_4              ; 0x6633
    add sp, byte 0x0e                ; 0x6636
    cmp word [bp - 0x0008], byte 0   ; 0x6639
    jg short @..local.l255           ; 0x663d
    jmp near @..local.l259           ; 0x663f
@..local.l255:
    mov ax, 0x2c                     ; 0x6642
    imul word [data_8462]            ; 0x6645
    mov si, ax                       ; 0x6649
    mov ax, word [data_8464]         ; 0x664b
    shl ax, 1                        ; 0x664e
    mov bx, ax                       ; 0x6650
    mov bx, word [bx - 0x7b7e]       ; 0x6652
    cmp byte [bx + si + 0x2a], 0xff  ; 0x6656
    je short @..local.l256           ; 0x665a
    mov al, byte [bx + si + 0x2a]    ; 0x665c
    cbw                              ; 0x665f
    mov cx, 0xa                      ; 0x6660
    cwd                              ; 0x6663
    idiv cx                          ; 0x6664
    mov word [bp - 0x000e], ax       ; 0x6666
    mov al, byte [bx + si + 0x2a]    ; 0x6669
    cbw                              ; 0x666c
    cwd                              ; 0x666d
    idiv cx                          ; 0x666e
    mov word [bp - 0x0010], dx       ; 0x6670
    mov ax, 6                        ; 0x6673
    imul word [bp - 0x000e]          ; 0x6676
    mov cx, word [bp - 0x0010]       ; 0x6679
    shl cx, 1                        ; 0x667c
    add ax, cx                       ; 0x667e
    mov bx, ax                       ; 0x6680
    mov word [bx - 0x6f36], 0        ; 0x6682
    mov word [data_8320], 0          ; 0x6688
    call loc_1a35                    ; 0x668e
    mov ax, 6                        ; 0x6691
    imul word [bp - 0x000e]          ; 0x6694
    mov cx, word [bp - 0x0010]       ; 0x6697
    shl cx, 1                        ; 0x669a
    add ax, cx                       ; 0x669c
    mov bx, ax                       ; 0x669e
    mov word [bx - 0x7bc6], 0        ; 0x66a0
@..local.l256:
    mov ax, 0x2c                     ; 0x66a6
    imul word [data_8462]            ; 0x66a9
    mov si, ax                       ; 0x66ad
    mov ax, word [data_8464]         ; 0x66af
    shl ax, 1                        ; 0x66b2
    mov bx, ax                       ; 0x66b4
    mov bx, word [bx - 0x7b7e]       ; 0x66b6
    mov byte [bx + si + 0x2a], 0xff  ; 0x66ba
    cmp word [bp - 0x0008], byte 1   ; 0x66be
    jne short @..local.l257          ; 0x66c2
    mov ax, 0x2c                     ; 0x66c4
    imul word [data_8462]            ; 0x66c7
    mov si, ax                       ; 0x66cb
    mov ax, word [data_8464]         ; 0x66cd
    shl ax, 1                        ; 0x66d0
    mov bx, ax                       ; 0x66d2
    mov bx, word [bx - 0x7b7e]       ; 0x66d4
    mov byte [bx + si + 0x22], 3     ; 0x66d8
    mov ax, 0x2c                     ; 0x66dc
    imul word [data_8462]            ; 0x66df
    mov si, ax                       ; 0x66e3
    mov ax, word [data_8464]         ; 0x66e5
    shl ax, 1                        ; 0x66e8
    mov bx, ax                       ; 0x66ea
    mov bx, word [bx - 0x7b7e]       ; 0x66ec
    mov word [bx + si + 0x2], 0      ; 0x66f0
@..local.l257:
    mov word [bp - 0x000e], 0        ; 0x66f5
@..local.l258:
    mov ax, 0x2c                     ; 0x66fa
    imul word [data_8462]            ; 0x66fd
    add ax, word [bp - 0x000e]       ; 0x6701
    mov si, ax                       ; 0x6704
    mov ax, word [data_8464]         ; 0x6706
    shl ax, 1                        ; 0x6709
    mov bx, ax                       ; 0x670b
    mov bx, word [bx - 0x7b7e]       ; 0x670d
    mov byte [bx + si + 0x18], 0     ; 0x6711
    inc word [bp - 0x000e]           ; 0x6715
    mov ax, word [bp - 0x000e]       ; 0x6718
    cmp ax, strict word 4            ; 0x671b
    jl short @..local.l258           ; 0x671e
    push word [data_9058]            ; 0x6720
    call api_idx_0004_5              ; 0x6724
    pop cx                           ; 0x6727
    ret                              ; 0x6728
@..local.l259:
    push word [data_9058]            ; 0x6729
    call api_idx_0004_5              ; 0x672d
    pop cx                           ; 0x6730
    cmp word [bp - 0x0006], byte 0   ; 0x6731
    jne short @..local.l260          ; 0x6735
    mov bx, word [bp - 0x0002]       ; 0x6737
    mov byte [bx + 0x1e], 1          ; 0x673a
    mov bx, word [bp - 0x0002]       ; 0x673e
    mov word [bx + 0xa], 3           ; 0x6741
    mov bx, word [bp - 0x0002]       ; 0x6746
    mov byte [bx + 0x18], 0          ; 0x6749
    mov bx, word [bp - 0x0002]       ; 0x674d
    mov byte [bx + 0x19], 0          ; 0x6750
    mov bx, word [bp - 0x0002]       ; 0x6754
    mov byte [bx + 0x21], 0          ; 0x6757
    ret                              ; 0x675b
@..local.l260:
    mov bx, word [bp - 0x0002]       ; 0x675c
    mov byte [bx + 0x1e], 0          ; 0x675f
    mov bx, word [bp - 0x0002]       ; 0x6763
    mov byte [bx + 0x21], 0          ; 0x6766
    mov bx, word [bp - 0x0002]       ; 0x676a
    mov word [bx + 0xc], 0xffff      ; 0x676d
    mov bx, word [bp - 0x0002]       ; 0x6772
    mov word [bx + 0xa], 0xff        ; 0x6775
    cmp word [data_8464], byte 0     ; 0x677a
    jne short @..local.l264          ; 0x677f
    mov word [bp - 0x0004], 7        ; 0x6781
@..local.l261:
    push word [bp - 0x0004]          ; 0x6786
    mov ax, 0x248                    ; 0x6789
    imul word [data_8462]            ; 0x678c
    add ax, 0x5d33                   ; 0x6790
    push ax                          ; 0x6793
    call ds_dispatch_ec74            ; 0x6794
    add sp, byte 4                   ; 0x6797
    cmp ax, strict word 1            ; 0x679a
    jne short @..local.l262          ; 0x679d
    mov ax, word [bp - 0x0004]       ; 0x679f
    mov bx, word [bp - 0x0002]       ; 0x67a2
    mov word [bx + 0xa], ax          ; 0x67a5
@..local.l262:
    dec word [bp - 0x0004]           ; 0x67a8
    jge short @..local.l261          ; 0x67ab
    mov ax, 0x248                    ; 0x67ad
    imul word [data_8462]            ; 0x67b0
    mov bx, ax                       ; 0x67b4
    mov al, byte [bx + 0x5d48]       ; 0x67b6
    sub ah, ah                       ; 0x67ba
    mov word [bp - 0x0014], ax       ; 0x67bc
    cmp ax, 0xff                     ; 0x67bf
    je short @..local.l263           ; 0x67c2
    mov cx, 0xc                      ; 0x67c4
    imul cx                          ; 0x67c7
    add bx, ax                       ; 0x67c9
    cmp byte [bx + 0x5c38], 3        ; 0x67cb
    jne short @..local.l263          ; 0x67d0
    mov bx, word [bp - 0x0002]       ; 0x67d2
    mov word [bx + 0xa], 8           ; 0x67d5
@..local.l263:
    jmp short @..local.l267          ; 0x67da
@..local.l264:
    mov word [bp - 0x0004], 7        ; 0x67dc
@..local.l265:
    push word [bp - 0x0004]          ; 0x67e1
    mov ax, word [data_8464]         ; 0x67e4
    shl ax, 1                        ; 0x67e7
    mov bx, ax                       ; 0x67e9
    mov ax, word [bx - 0x7b70]       ; 0x67eb
    add ax, strict word 0x53         ; 0x67ef
    push ax                          ; 0x67f2
    call ds_dispatch_ec74            ; 0x67f3
    add sp, byte 4                   ; 0x67f6
    cmp ax, strict word 1            ; 0x67f9
    jne short @..local.l266          ; 0x67fc
    mov ax, word [bp - 0x0004]       ; 0x67fe
    mov bx, word [bp - 0x0002]       ; 0x6801
    mov word [bx + 0xa], ax          ; 0x6804
@..local.l266:
    dec word [bp - 0x0004]           ; 0x6807
    jge short @..local.l265          ; 0x680a
    mov bx, word [bp - 0x0002]       ; 0x680c
    mov al, byte [bx + 0x1c]         ; 0x680f
    sub ah, ah                       ; 0x6812
    mov word [bp - 0x0014], ax       ; 0x6814
    mov ax, word [data_8464]         ; 0x6817
    shl ax, 1                        ; 0x681a
    mov bx, ax                       ; 0x681c
    mov bx, word [bx - 0x7b70]       ; 0x681e
    mov si, word [bp - 0x0014]       ; 0x6822
    cmp byte [bx + si + 0x86], 3     ; 0x6825
    jne short @..local.l267          ; 0x682a
    mov bx, word [bp - 0x0002]       ; 0x682c
    mov word [bx + 0xa], 8           ; 0x682f
@..local.l267:
    mov bx, word [bp - 0x0002]       ; 0x6834
    cmp word [bx + 0xa], strict word 0xff ; 0x6837
    jne short @..local.l268          ; 0x683c
    mov word [bx + 0xa], 8           ; 0x683e
@..local.l268:
    mov bx, word [bp - 0x0002]       ; 0x6843
    mov byte [bx + 0x1c], 0          ; 0x6846
    mov al, byte [data_8464]         ; 0x684a
    mov bx, word [bp - 0x0002]       ; 0x684d
    mov byte [bx + 0x1f], al         ; 0x6850
    mov word [bp - 0x0012], 0        ; 0x6853
@..local.l269:
    mov ax, word [data_8464]         ; 0x6858
    shl ax, 1                        ; 0x685b
    mov bx, ax                       ; 0x685d
    mov bx, word [bx - 0x7b7e]       ; 0x685f
    mov al, byte [bx + 0x1a1]        ; 0x6863
    sub ah, ah                       ; 0x6867
    push ax                          ; 0x6869
    call ds_dispatch_b7a9            ; 0x686a
    pop cx                           ; 0x686d
    mov bx, word [bp - 0x0002]       ; 0x686e
    mov byte [bx + 0x20], al         ; 0x6871
    inc word [bp - 0x0012]           ; 0x6874
    cmp word [bp - 0x0012], byte 0x0a ; 0x6877
    jge short @..local.l270          ; 0x687b
    mov bx, word [bp - 0x0002]       ; 0x687d
    mov al, byte [bx + 0x20]         ; 0x6880
    sub ah, ah                       ; 0x6883
    cmp ax, word [data_8462]         ; 0x6885
    je short @..local.l269           ; 0x6889
    mov cx, 0x2c                     ; 0x688b
    imul cx                          ; 0x688e
    mov si, ax                       ; 0x6890
    mov ax, word [data_8464]         ; 0x6892
    shl ax, 1                        ; 0x6895
    mov bx, ax                       ; 0x6897
    mov bx, word [bx - 0x7b7e]       ; 0x6899
    cmp byte [bx + si + 0x22], 3     ; 0x689d
    jae short @..local.l269          ; 0x68a1
    cmp byte [bx + si + 0x2b], 0     ; 0x68a3
    jne short @..local.l269          ; 0x68a7
@..local.l270:
    mov ax, 1                        ; 0x68a9
    push ax                          ; 0x68ac
    call api_idx_000a_2              ; 0x68ad
    pop cx                           ; 0x68b0
    mov ax, 4                        ; 0x68b1
    push ax                          ; 0x68b4
    call api_idx_0004_5              ; 0x68b5
    pop cx                           ; 0x68b8
    push word [data_8462]            ; 0x68b9
    push word [data_8464]            ; 0x68bd
    mov ax, 0x90e6                   ; 0x68c1
    push ax                          ; 0x68c4
    call math_loc_15ab               ; 0x68c5
    add sp, byte 6                   ; 0x68c8
    mov ax, data_9136                ; 0x68cb
    push ax                          ; 0x68ce
    mov ax, 0xc8b                    ; 0x68cf
    push ax                          ; 0x68d2
    call ds_dispatch_b53b            ; 0x68d3
    add sp, byte 4                   ; 0x68d6
    mov byte [data_9186], 0          ; 0x68d9
    mov ax, 0                        ; 0x68de
    push ax                          ; 0x68e1
    mov ax, 0x43                     ; 0x68e2
    push ax                          ; 0x68e5
    cmp word [data_8464], byte 0     ; 0x68e6
    jne short @..local.l271          ; 0x68eb
    mov ax, 1                        ; 0x68ed
@..local.l271:
    push ax                          ; 0x68f0
    mov ax, data_9186                ; 0x68f1
    push ax                          ; 0x68f4
    mov ax, data_9136                ; 0x68f5
    push ax                          ; 0x68f8
    mov ax, 0x90e6                   ; 0x68f9
    push ax                          ; 0x68fc
    mov ax, 0                        ; 0x68fd
    push ax                          ; 0x6900
    call api_idx_0004_4              ; 0x6901
    add sp, byte 0x0e                ; 0x6904
    mov ax, 0                        ; 0x6907
    push ax                          ; 0x690a
    call ds_dispatch_b7e0            ; 0x690b
    pop cx                           ; 0x690e
    push word [data_9058]            ; 0x690f
    call api_idx_0004_5              ; 0x6913
    pop cx                           ; 0x6916
    mov ax, 1                        ; 0x6917
    push ax                          ; 0x691a
    call api_idx_000a_2              ; 0x691b
    pop cx                           ; 0x691e
@..local.l272:
    cmp word [bp - 0x0006], byte 0   ; 0x691f
    jne short @..local.l273          ; 0x6923
    cmp word [data_8464], byte 0     ; 0x6925
    jne short @..local.l273          ; 0x692a
    mov bx, word [bp - 0x0002]       ; 0x692c
    cmp byte [bx + 0x1f], 0          ; 0x692f
    jne short @..local.l273          ; 0x6933
    jmp short @..local.l276          ; 0x6935
@..local.l273:
    mov bx, word [bp - 0x0002]       ; 0x6937
    mov al, byte [bx + 0x20]         ; 0x693a
    sub ah, ah                       ; 0x693d
    mov cx, 0x2c                     ; 0x693f
    imul cx                          ; 0x6942
    mov si, ax                       ; 0x6944
    mov al, byte [bx + 0x1f]         ; 0x6946
    sub ah, ah                       ; 0x6949
    shl ax, 1                        ; 0x694b
    mov bx, ax                       ; 0x694d
    mov bx, word [bx - 0x7b7e]       ; 0x694f
    cmp byte [bx + si + 0x22], 3     ; 0x6953
    jae short @..local.l274          ; 0x6957
    cmp byte [bx + si + 0x2b], 0     ; 0x6959
    je short @..local.l276           ; 0x695d
@..local.l274:
    mov bx, word [bp - 0x0002]       ; 0x695f
    cmp byte [bx + 0x1f], 0          ; 0x6962
    jne short @..local.l275          ; 0x6966
    mov al, byte [bx + 0x20]         ; 0x6968
    sub ah, ah                       ; 0x696b
    push ax                          ; 0x696d
    call api_idx_0004_10             ; 0x696e
    pop cx                           ; 0x6971
    mov bx, word [bp - 0x0002]       ; 0x6972
    mov byte [bx + 0x20], al         ; 0x6975
    jmp short @..local.l276          ; 0x6978
@..local.l275:
    mov bx, word [bp - 0x0002]       ; 0x697a
    mov al, byte [bx + 0x20]         ; 0x697d
    sub ah, ah                       ; 0x6980
    push ax                          ; 0x6982
    mov al, byte [bx + 0x1f]         ; 0x6983
    sub ah, ah                       ; 0x6986
    push ax                          ; 0x6988
    call api_idx_0008_2              ; 0x6989
    add sp, byte 4                   ; 0x698c
    mov bx, word [bp - 0x0002]       ; 0x698f
    mov byte [bx + 0x20], al         ; 0x6992
@..local.l276:
    cmp word [bp - 0x0006], byte 1   ; 0x6995
    jne short @..local.l277          ; 0x6999
    mov bx, word [bp - 0x0002]       ; 0x699b
    mov al, byte [bx + 0x20]         ; 0x699e
    sub ah, ah                       ; 0x69a1
    cmp ax, word [data_8462]         ; 0x69a3
    jne short @..local.l277          ; 0x69a7
    mov byte [bx + 0x1e], 1          ; 0x69a9
    mov bx, word [bp - 0x0002]       ; 0x69ad
    mov word [bx + 0xa], 1           ; 0x69b0
    mov bx, word [bp - 0x0002]       ; 0x69b5
    mov byte [bx + 0x18], 0          ; 0x69b8
    mov bx, word [bp - 0x0002]       ; 0x69bc
    mov byte [bx + 0x19], 0          ; 0x69bf
    mov bx, word [bp - 0x0002]       ; 0x69c3
    mov byte [bx + 0x21], 0          ; 0x69c6
    ret                              ; 0x69ca
@..local.l277:
    cmp word [data_8464], byte 0     ; 0x69cb
    je short @..local.l278           ; 0x69d0
    jmp near @..local.l279           ; 0x69d2
@..local.l278:
    mov ax, 0x248                    ; 0x69d5
    imul word [data_8462]            ; 0x69d8
    mov bx, ax                       ; 0x69dc
    mov al, byte [bx + 0x5d64]       ; 0x69de
    mov bx, word [data_8490]         ; 0x69e2
    mov byte [bx + 0x8c], al         ; 0x69e6
    mov ax, 0x248                    ; 0x69ea
    imul word [data_8462]            ; 0x69ed
    mov bx, ax                       ; 0x69f1
    mov al, byte [bx + 0x5d65]       ; 0x69f3
    mov bx, word [data_8490]         ; 0x69f7
    mov byte [bx + 0x8d], al         ; 0x69fb
    mov ax, 0x248                    ; 0x69ff
    imul word [data_8462]            ; 0x6a02
    mov bx, ax                       ; 0x6a06
    mov al, byte [bx + 0x5d68]       ; 0x6a08
    mov bx, word [data_8490]         ; 0x6a0c
    mov byte [bx + 0x8e], al         ; 0x6a10
    mov ax, 0x248                    ; 0x6a14
    imul word [data_8462]            ; 0x6a17
    mov bx, ax                       ; 0x6a1b
    mov al, byte [bx + 0x5d69]       ; 0x6a1d
    mov bx, word [data_8490]         ; 0x6a21
    mov byte [bx + 0x8f], al         ; 0x6a25
    mov ax, api_idx_0002             ; 0x6a29
    push ax                          ; 0x6a2c
    mov ax, word [data_8490]         ; 0x6a2d
    add ax, 0x9a                     ; 0x6a30
    push ax                          ; 0x6a33
    mov ax, 0x248                    ; 0x6a34
    imul word [data_8462]            ; 0x6a37
    add ax, 0x5d9c                   ; 0x6a3b
    push ax                          ; 0x6a3e
    call ds_dispatch_fedc            ; 0x6a3f
    add sp, byte 6                   ; 0x6a42
    mov ax, 8                        ; 0x6a45
    push ax                          ; 0x6a48
    mov ax, word [data_8490]         ; 0x6a49
    add ax, 0xc4                     ; 0x6a4c
    push ax                          ; 0x6a4f
    mov ax, 0x248                    ; 0x6a50
    imul word [data_8462]            ; 0x6a53
    add ax, 0x5daa                   ; 0x6a57
    push ax                          ; 0x6a5a
    call ds_dispatch_fedc            ; 0x6a5b
    add sp, byte 6                   ; 0x6a5e
    mov bx, word [data_8490]         ; 0x6a61
    mov al, byte [bx + 0xc4]         ; 0x6a65
    cbw                              ; 0x6a69
    push ax                          ; 0x6a6a
    mov al, byte [bx + 0xc5]         ; 0x6a6b
    cbw                              ; 0x6a6f
    mov cx, ax                       ; 0x6a70
    pop ax                           ; 0x6a72
    add ax, cx                       ; 0x6a73
    push ax                          ; 0x6a75
    mov al, byte [bx + 0xc6]         ; 0x6a76
    cbw                              ; 0x6a7a
    mov cx, ax                       ; 0x6a7b
    pop ax                           ; 0x6a7d
    add ax, cx                       ; 0x6a7e
    mov byte [bx + 0xc4], al         ; 0x6a80
    mov ax, 0x248                    ; 0x6a84
    imul word [data_8462]            ; 0x6a87
    mov bx, ax                       ; 0x6a8b
    mov al, byte [bx + 0x5e39]       ; 0x6a8d
    mov bx, word [data_8490]         ; 0x6a91
    mov byte [bx + 0xd9], al         ; 0x6a95
    mov ax, 0x248                    ; 0x6a99
    imul word [data_8462]            ; 0x6a9c
    mov bx, ax                       ; 0x6aa0
    mov al, byte [bx + 0x5e38]       ; 0x6aa2
    mov bx, word [data_8490]         ; 0x6aa6
    mov byte [bx + 0xdb], al         ; 0x6aaa
    mov ax, 0x248                    ; 0x6aae
    imul word [data_8462]            ; 0x6ab1
    mov bx, ax                       ; 0x6ab5
    mov al, byte [bx + 0x5e37]       ; 0x6ab7
    mov bx, word [data_8490]         ; 0x6abb
    mov byte [bx + 0xda], al         ; 0x6abf
    mov ax, 0x248                    ; 0x6ac3
    imul word [data_8462]            ; 0x6ac6
    mov bx, ax                       ; 0x6aca
    mov al, byte [bx + 0x5e2c]       ; 0x6acc
    mov bx, word [data_8490]         ; 0x6ad0
    mov byte [bx + 0xdc], al         ; 0x6ad4
    mov ax, 0x248                    ; 0x6ad8
    imul word [data_8462]            ; 0x6adb
    mov bx, ax                       ; 0x6adf
    mov al, byte [bx + 0x5e2d]       ; 0x6ae1
    mov bx, word [data_8490]         ; 0x6ae5
    mov byte [bx + 0xd6], al         ; 0x6ae9
    jmp near @..local.l283           ; 0x6aed
@..local.l279:
    mov bx, word [bp - 0x0002]       ; 0x6af0
    cmp byte [bx + 0x1f], 0          ; 0x6af3
    je short @..local.l280           ; 0x6af7
    jmp near @..local.l283           ; 0x6af9
@..local.l280:
    mov al, byte [bx + 0x20]         ; 0x6afc
    sub ah, ah                       ; 0x6aff
    mov cx, 0x248                    ; 0x6b01
    imul cx                          ; 0x6b04
    mov bx, ax                       ; 0x6b06
    mov al, byte [bx + 0x5d64]       ; 0x6b08
    mov bx, word [data_8490]         ; 0x6b0c
    mov byte [bx + 0x8c], al         ; 0x6b10
    mov bx, word [bp - 0x0002]       ; 0x6b14
    mov al, byte [bx + 0x20]         ; 0x6b17
    sub ah, ah                       ; 0x6b1a
    imul cx                          ; 0x6b1c
    mov bx, ax                       ; 0x6b1e
    mov al, byte [bx + 0x5d65]       ; 0x6b20
    mov bx, word [data_8490]         ; 0x6b24
    mov byte [bx + 0x8d], al         ; 0x6b28
    mov bx, word [bp - 0x0002]       ; 0x6b2c
    mov al, byte [bx + 0x20]         ; 0x6b2f
    sub ah, ah                       ; 0x6b32
    imul cx                          ; 0x6b34
    mov bx, ax                       ; 0x6b36
    mov al, byte [bx + 0x5d68]       ; 0x6b38
    mov bx, word [data_8490]         ; 0x6b3c
    mov byte [bx + 0x8e], al         ; 0x6b40
    mov bx, word [bp - 0x0002]       ; 0x6b44
    mov al, byte [bx + 0x20]         ; 0x6b47
    sub ah, ah                       ; 0x6b4a
    imul cx                          ; 0x6b4c
    mov bx, ax                       ; 0x6b4e
    mov al, byte [bx + 0x5d69]       ; 0x6b50
    mov bx, word [data_8490]         ; 0x6b54
    mov byte [bx + 0x8f], al         ; 0x6b58
    mov ax, api_idx_0002             ; 0x6b5c
    push ax                          ; 0x6b5f
    mov ax, word [data_8490]         ; 0x6b60
    add ax, 0x9a                     ; 0x6b63
    push ax                          ; 0x6b66
    mov bx, word [bp - 0x0002]       ; 0x6b67
    mov al, byte [bx + 0x20]         ; 0x6b6a
    sub ah, ah                       ; 0x6b6d
    imul cx                          ; 0x6b6f
    add ax, 0x5d9c                   ; 0x6b71
    push ax                          ; 0x6b74
    call ds_dispatch_fedc            ; 0x6b75
    add sp, byte 6                   ; 0x6b78
    mov ax, 8                        ; 0x6b7b
    push ax                          ; 0x6b7e
    mov ax, word [data_8490]         ; 0x6b7f
    add ax, 0xc4                     ; 0x6b82
    push ax                          ; 0x6b85
    mov bx, word [bp - 0x0002]       ; 0x6b86
    mov al, byte [bx + 0x20]         ; 0x6b89
    sub ah, ah                       ; 0x6b8c
    mov cx, 0x248                    ; 0x6b8e
    imul cx                          ; 0x6b91
    add ax, 0x5daa                   ; 0x6b93
    push ax                          ; 0x6b96
    call ds_dispatch_fedc            ; 0x6b97
    add sp, byte 6                   ; 0x6b9a
    mov word [bp - 0x0004], 0        ; 0x6b9d
@..local.l281:
    cmp word [bp - 0x0004], byte 1   ; 0x6ba2
    je short @..local.l282           ; 0x6ba6
    cmp word [bp - 0x0004], byte 2   ; 0x6ba8
    je short @..local.l282           ; 0x6bac
    mov si, word [bp - 0x0004]       ; 0x6bae
    mov bx, word [data_8490]         ; 0x6bb1
    mov al, byte [bx + si + 0xc4]    ; 0x6bb5
    cbw                              ; 0x6bb9
    push ax                          ; 0x6bba
    mov al, byte [bx + 0xc5]         ; 0x6bbb
    cbw                              ; 0x6bbf
    mov cx, ax                       ; 0x6bc0
    pop ax                           ; 0x6bc2
    add ax, cx                       ; 0x6bc3
    push ax                          ; 0x6bc5
    mov al, byte [bx + 0xc6]         ; 0x6bc6
    cbw                              ; 0x6bca
    mov cx, ax                       ; 0x6bcb
    pop ax                           ; 0x6bcd
    add ax, cx                       ; 0x6bce
    mov byte [bx + si + 0xc4], al    ; 0x6bd0
@..local.l282:
    inc word [bp - 0x0004]           ; 0x6bd4
    mov ax, word [bp - 0x0004]       ; 0x6bd7
    cmp ax, strict word 8            ; 0x6bda
    jl short @..local.l281           ; 0x6bdd
    mov bx, word [bp - 0x0002]       ; 0x6bdf
    mov al, byte [bx + 0x20]         ; 0x6be2
    sub ah, ah                       ; 0x6be5
    mov cx, 0x248                    ; 0x6be7
    imul cx                          ; 0x6bea
    mov bx, ax                       ; 0x6bec
    mov al, byte [bx + 0x5e39]       ; 0x6bee
    mov bx, word [data_8490]         ; 0x6bf2
    mov byte [bx + 0xd9], al         ; 0x6bf6
    mov bx, word [bp - 0x0002]       ; 0x6bfa
    mov al, byte [bx + 0x20]         ; 0x6bfd
    sub ah, ah                       ; 0x6c00
    imul cx                          ; 0x6c02
    mov bx, ax                       ; 0x6c04
    mov al, byte [bx + 0x5e38]       ; 0x6c06
    mov bx, word [data_8490]         ; 0x6c0a
    mov byte [bx + 0xdb], al         ; 0x6c0e
    mov bx, word [bp - 0x0002]       ; 0x6c12
    mov al, byte [bx + 0x20]         ; 0x6c15
    sub ah, ah                       ; 0x6c18
    imul cx                          ; 0x6c1a
    mov bx, ax                       ; 0x6c1c
    mov al, byte [bx + 0x5e37]       ; 0x6c1e
    mov bx, word [data_8490]         ; 0x6c22
    mov byte [bx + 0xda], al         ; 0x6c26
    mov bx, word [bp - 0x0002]       ; 0x6c2a
    mov al, byte [bx + 0x20]         ; 0x6c2d
    sub ah, ah                       ; 0x6c30
    imul cx                          ; 0x6c32
    mov bx, ax                       ; 0x6c34
    mov al, byte [bx + 0x5e2c]       ; 0x6c36
    mov bx, word [data_8490]         ; 0x6c3a
    mov byte [bx + 0xdc], al         ; 0x6c3e
    mov bx, word [bp - 0x0002]       ; 0x6c42
    mov al, byte [bx + 0x20]         ; 0x6c45
    sub ah, ah                       ; 0x6c48
    imul cx                          ; 0x6c4a
    mov bx, ax                       ; 0x6c4c
    mov al, byte [bx + 0x5e2d]       ; 0x6c4e
    mov bx, word [data_8490]         ; 0x6c52
    mov byte [bx + 0xd6], al         ; 0x6c56
@..local.l283:
    mov bx, word [bp - 0x0002]       ; 0x6c5a
    mov al, byte [bx + 0x1e]         ; 0x6c5d
    sub ah, ah                       ; 0x6c60
    jmp near @..local.l284           ; 0x6c62

    db 0x8b, 0x5e, 0xfe, 0x8a, 0x47, 0x20, 0x2a, 0xe4, 0xb9, 0x2c, 0x00, 0xf7, 0xe9, 0x8b, 0xf0, 0x8a
    db 0x47, 0x1f, 0x2a, 0xe4, 0xd1, 0xe0, 0x8b, 0xd8, 0x8b, 0x9f, 0x82, 0x84, 0x80, 0x78, 0x22, 0x03
    db 0x72, 0x03, 0xe9, 0xc7, 0x00, 0x80, 0x78, 0x2b, 0x00, 0x74, 0x03, 0xe9, 0xbe, 0x00, 0x8b, 0x5e
    db 0xfe, 0x8a, 0x47, 0x21, 0x2a, 0xe4, 0xb9, 0x02, 0x00, 0x99, 0xf7, 0xf9, 0x8b, 0xf2, 0x8a, 0x40
    db 0x1c, 0x2a, 0xe4, 0x89, 0x46, 0xf6, 0x83, 0x3e, 0x64, 0x84, 0x00, 0x75, 0x20, 0xb8, 0x48, 0x02
    db 0xf7, 0x2e, 0x62, 0x84, 0x8b, 0xc8, 0x8b, 0x46, 0xf6, 0x03, 0xc8, 0x8b, 0xd9, 0x8a, 0x87, 0x48
    db 0x5d, 0x2a, 0xe4, 0x3d, 0xff, 0x00, 0x75, 0x05, 0xc7, 0x46, 0xf6, 0x00, 0x00, 0x8b, 0x5e, 0xfe
    db 0x8a, 0x47, 0x21, 0x2a, 0xe4, 0xb9, 0x02, 0x00, 0x99, 0xf7, 0xf9, 0x8b, 0xc2, 0xd1, 0xe0, 0x8b
    db 0xf0, 0x8b, 0x40, 0x0a, 0x89, 0x46, 0xf4, 0xb8, 0x04, 0x00, 0x50, 0xe8, 0x6c, 0xad, 0x59, 0xff
    db 0x76, 0xf4, 0xff, 0x76, 0xf6, 0xff, 0x76, 0xfe, 0xe8, 0x62, 0x0c, 0x83, 0xc4, 0x06, 0x83, 0x7e
    db 0xf4, 0x03, 0x75, 0x17, 0xb8, 0x08, 0x00, 0x50, 0xe8, 0x99, 0x4a, 0x59, 0x05, 0x05, 0x00, 0x50
    db 0xff, 0x76, 0xfe, 0xe8, 0x10, 0xab, 0x83, 0xc4, 0x04, 0xeb, 0x31, 0x83, 0x7e, 0xf4, 0x06, 0x75
    db 0x17, 0xb8, 0x04, 0x00, 0x50, 0xe8
    db '|JY@@@P'
    db 0xff, 0x76, 0xfe, 0xe8, 0xf3, 0xaa, 0x83, 0xc4, 0x04, 0xeb, 0x14, 0xb8, 0x03, 0x00, 0x50, 0xe8
    db 'eJY@@P'
    db 0xff, 0x76, 0xfe, 0xe8, 0xdd, 0xaa, 0x83, 0xc4, 0x04, 0xe9, 0x72, 0x01, 0xb8, 0x04, 0x00, 0x50
    db 0xe8, 0x04, 0xad, 0x59, 0xff, 0x76, 0xfe, 0xe8, 0x3f, 0xf2, 0x59, 0x50, 0xff, 0x76, 0xfe, 0xe8
    db 0xc1, 0xaa, 0x83, 0xc4, 0x04, 0xe9, 0x56, 0x01, 0xb8, 0x04, 0x00, 0x50, 0xe8, 0xe8, 0xac, 0x59
    db 0xff, 0x76, 0xfe, 0xe8, 0x37, 0x24, 0x59, 0x50, 0xff, 0x76, 0xfe, 0xe8, 0xa5, 0xaa, 0x83, 0xc4
    db 0x04, 0xe9, 0x3a, 0x01, 0x8b, 0x5e, 0xfe, 0x83, 0x7f, 0x0a, 0x03, 0x75, 0x33, 0x8b, 0x47, 0x08
    db 0xbb, 0x05, 0x00, 0xf7, 0xeb, 0xb9, 0x64, 0x00, 0xbb, 0x00, 0x00, 0xe8, 0xf9, 0x8b, 0x89, 0x46
    db 0xfc, 0x50, 0xe8, 0xfc, 0x49, 0x59, 0x8b, 0x5e, 0xfe, 0x8b, 0x4f, 0x06, 0x03, 0xc1, 0x40, 0x89
    db 0x47, 0x06, 0x8b, 0x47, 0x06, 0x3b, 0x47, 0x08, 0x7e, 0x06, 0x8b, 0x47, 0x08, 0x89, 0x47, 0x06
    db 0xe9, 0xfb, 0x00, 0xb8, 0x04, 0x00, 0x50, 0xe8, 0x8d, 0xac, 0x59, 0xe8, 0x6c, 0x2a, 0xb8, 0x04
    db 0x00, 0x50, 0xe8, 0xcc
    db 'IY@@@P'
    db 0xff, 0x76, 0xfe, 0xe8, 0x43, 0xaa, 0x83, 0xc4, 0x04, 0xe8, 0x47, 0xac, 0xb8, 0x00, 0x00, 0x50
    db 0xe8, 0xd2, 0xac, 0x59, 0xc7, 0x06, 0x0a, 0x83, 0x11, 0x00, 0xc7, 0x06, 0x5e, 0x90, 0x0d, 0x00
    db 0xa1, 0x62, 0x84, 0xa3, 0xf0, 0x8a, 0xc3, 0xb8, 0x04, 0x00, 0x50, 0xe8, 0x4f, 0xac, 0x59, 0xff
    db 0x76, 0xfe, 0xe8, 0x38, 0x31, 0x59, 0xb8, 0x03, 0x00, 0x50, 0xe8, 0x8a, 0x49, 0x59, 0x40, 0x50
    db 0xff, 0x76, 0xfe, 0xe8, 0x03, 0xaa, 0x83, 0xc4, 0x04, 0xe9, 0x98, 0x00, 0xb8, 0x04, 0x00, 0x50
    db 0xe8, 0x2a, 0xac, 0x59, 0x8b, 0x5e, 0xfe, 0xff, 0x77, 0x0a, 0xff, 0x36, 0x62, 0x84, 0xe8, 0x1a
    db 0x30, 0x83, 0xc4, 0x04, 0xb8, 0x04, 0x00, 0x50, 0xe8
    db '\IY@@@P'
    db 0xff, 0x76, 0xfe, 0xe8, 0xd3, 0xa9, 0x83, 0xc4, 0x04, 0xeb, 0x69, 0xb8, 0x04, 0x00, 0x50, 0xe8
    db 0xfb, 0xab, 0x59, 0xff, 0x76, 0xfe, 0xe8, 0x30, 0x2a, 0x59, 0xb8, 0x03, 0x00, 0x50, 0xe8
    db '6IY@P'
    db 0xff, 0x76, 0xfe, 0xe8, 0xaf, 0xa9, 0x83, 0xc4, 0x04, 0xeb, 0x45, 0xb8, 0x04, 0x00, 0x50, 0xe8
    db 0xd7, 0xab, 0x59, 0xff, 0x76, 0xfe, 0xe8, 0xa0, 0x2b, 0x59, 0xb8, 0x05, 0x00, 0x50, 0xe8, 0x12
    db 0x49, 0x59, 0x05, 0x05, 0x00, 0x50, 0xff, 0x76, 0xfe, 0xe8, 0x89, 0xa9, 0x83, 0xc4, 0x04, 0xeb
    db 0x1f, 0xac, 0xbc, 0xd3, 0xbd, 0xa4, 0xbe, 0x9b, 0xbd, 0x50, 0xbe, 0xb7, 0xbd, 0xc8, 0xbe, 0x75
    db 0xbe, 0x12, 0xbe

@..local.l284:
    cmp ax, strict word 9            ; 0x6eb9
    jae short @..local.l285          ; 0x6ebc
    xchg bx, ax                      ; 0x6ebe
    shl bx, 1                        ; 0x6ebf
    jmp [cs:bx - 0x4112]             ; 0x6ec1
@..local.l285:
    cmp word [data_8464], byte 0     ; 0x6ec6
    jne short @..local.l286          ; 0x6ecb
    mov ax, 0                        ; 0x6ecd
    push ax                          ; 0x6ed0
    push word [data_8462]            ; 0x6ed1
    call api_idx_0004_2              ; 0x6ed5
    add sp, byte 4                   ; 0x6ed8
@..local.l286:
    ret                              ; 0x6edb
math_loc_6edc:
    mov ax, 0                        ; 0x6edc
    call ds_dispatch_f40b            ; 0x6edf
    mov ax, 0                        ; 0x6ee2
    push ax                          ; 0x6ee5
    push word [bp + 0x6]             ; 0x6ee6
    push word [bp + 0x4]             ; 0x6ee9
    call api_idx_0050                ; 0x6eec
    add sp, byte 6                   ; 0x6eef
    cmp word [data_8464], byte 0     ; 0x6ef2
    je short @..math_loc_6edc.l2     ; 0x6ef7
    mov ax, word [data_8464]         ; 0x6ef9
    cmp ax, strict word 6            ; 0x6efc
    je short @..math_loc_6edc.l2     ; 0x6eff
    mov ax, 1                        ; 0x6f01
    cmp word [data_8464], byte 3     ; 0x6f04
    jge short @..math_loc_6edc.l1    ; 0x6f09
    mov ax, 0                        ; 0x6f0b
@..math_loc_6edc.l1:
    mov cx, 6                        ; 0x6f0e
    imul cx                          ; 0x6f11
    mov bx, ax                       ; 0x6f13
    mov word [bx - 0x6f36], 0        ; 0x6f15
    mov word [data_8320], 0          ; 0x6f1b
    call loc_1a35                    ; 0x6f21
@..math_loc_6edc.l2:
    mov ax, word [data_9058]         ; 0x6f24
    mov cx, 2                        ; 0x6f27
    cwd                              ; 0x6f2a
    idiv cx                          ; 0x6f2b
    push ax                          ; 0x6f2d
    call api_idx_0004_5              ; 0x6f2e
    pop cx                           ; 0x6f31
    ret                              ; 0x6f32
api_idx_000c:
    mov ax, 0xfff4                   ; 0x6f33
    call ds_dispatch_f40b            ; 0x6f36
    mov word [data_90e2], 5          ; 0x6f39
    mov word [bp - 0x0002], 0        ; 0x6f3f
@..api_idx_000c.l1:
    mov word [bp - 0x0004], 0        ; 0x6f44
@..api_idx_000c.l2:
    mov ax, 6                        ; 0x6f49
    imul word [bp - 0x0002]          ; 0x6f4c
    mov cx, word [bp - 0x0004]       ; 0x6f4f
    shl cx, 1                        ; 0x6f52
    add ax, cx                       ; 0x6f54
    mov bx, ax                       ; 0x6f56
    mov word [bx - 0x6f36], 0xffff   ; 0x6f58
    inc word [bp - 0x0004]           ; 0x6f5e
    mov ax, word [bp - 0x0004]       ; 0x6f61
    cmp ax, strict word 3            ; 0x6f64
    jl short @..api_idx_000c.l2      ; 0x6f67
    inc word [bp - 0x0002]           ; 0x6f69
    mov ax, word [bp - 0x0002]       ; 0x6f6c
    cmp ax, strict word 3            ; 0x6f6f
    jl short @..api_idx_000c.l1      ; 0x6f72
    mov bx, word [data_8492]         ; 0x6f74
    cmp byte [bx + 0xd8], 0          ; 0x6f78
    jbe short @..api_idx_000c.l3     ; 0x6f7d
    mov ax, 0x10                     ; 0x6f7f
    push ax                          ; 0x6f82
    call ds_dispatch_b7e0            ; 0x6f83
    pop cx                           ; 0x6f86
@..api_idx_000c.l3:
    mov word [data_8460], 0x64       ; 0x6f87
@..api_idx_000c.l4:
    mov word [data_8464], 0          ; 0x6f8d
@..api_idx_000c.l5:
    mov word [data_8462], 0          ; 0x6f93
    jmp near @..local.l291           ; 0x6f99
@..api_idx_000c.l6:
    mov ax, 0x2c                     ; 0x6f9c
    imul word [data_8462]            ; 0x6f9f
    mov cx, ax                       ; 0x6fa3
    mov ax, word [data_8464]         ; 0x6fa5
    shl ax, 1                        ; 0x6fa8
    mov bx, ax                       ; 0x6faa
    mov ax, word [bx - 0x7b7e]       ; 0x6fac
    add ax, cx                       ; 0x6fb0
    mov word [bp - 0x0006], ax       ; 0x6fb2
    mov bx, ax                       ; 0x6fb5
    cmp byte [bx + 0x24], 0          ; 0x6fb7
    ja short @..api_idx_000c.l7      ; 0x6fbb
    jmp near @..api_idx_000c.l16     ; 0x6fbd
@..api_idx_000c.l7:
    cmp byte [bx + 0x22], 3          ; 0x6fc0
    jne short @..api_idx_000c.l8     ; 0x6fc4
    jmp near @..api_idx_000c.l16     ; 0x6fc6
@..api_idx_000c.l8:
    mov al, byte [bx + 0x25]         ; 0x6fc9
    sub ah, ah                       ; 0x6fcc
    cmp ax, word [data_8460]         ; 0x6fce
    je short @..api_idx_000c.l9      ; 0x6fd2
    jmp near @..api_idx_000c.l16     ; 0x6fd4
@..api_idx_000c.l9:
    cmp byte [bx + 0x2b], 0          ; 0x6fd7
    je short @..api_idx_000c.l10     ; 0x6fdb
    jmp near @..api_idx_000c.l14     ; 0x6fdd
@..api_idx_000c.l10:
    mov al, byte [bx + 0x21]         ; 0x6fe0
    sub ah, ah                       ; 0x6fe3
    mov si, ax                       ; 0x6fe5
    mov al, byte [bx + si + 0x18]    ; 0x6fe7
    sub ah, ah                       ; 0x6fea
    cmp ax, word [data_8460]         ; 0x6fec
    je short @..api_idx_000c.l12     ; 0x6ff0
    mov byte [bx + 0x2b], 3          ; 0x6ff2
    mov ax, 1                        ; 0x6ff6
    push ax                          ; 0x6ff9
    call api_idx_000a_2              ; 0x6ffa
    pop cx                           ; 0x6ffd
    mov ax, 4                        ; 0x6ffe
    push ax                          ; 0x7001
    call api_idx_0004_5              ; 0x7002
    pop cx                           ; 0x7005
    mov ax, 0                        ; 0x7006
    push ax                          ; 0x7009
    mov ax, 0x43                     ; 0x700a
    push ax                          ; 0x700d
    mov ax, 0xffff                   ; 0x700e
    push ax                          ; 0x7011
    mov ax, math_loc_0dbe            ; 0x7012
    push ax                          ; 0x7015
    call api_idx_0006_6              ; 0x7016
    add sp, byte 8                   ; 0x7019
    cmp word [data_8464], byte 0     ; 0x701c
    jne short @..api_idx_000c.l11    ; 0x7021
    mov ax, 0                        ; 0x7023
    push ax                          ; 0x7026
    push word [data_8462]            ; 0x7027
    call api_idx_0004_2              ; 0x702b
    add sp, byte 4                   ; 0x702e
@..api_idx_000c.l11:
    push word [data_9058]            ; 0x7031
    call api_idx_0004_5              ; 0x7035
    pop cx                           ; 0x7038
@..api_idx_000c.l12:
    mov ax, 0xa                      ; 0x7039
    push ax                          ; 0x703c
    call ds_dispatch_b7a9            ; 0x703d
    pop cx                           ; 0x7040
    mov cx, ax                       ; 0x7041
    mov ax, word [data_8460]         ; 0x7043
    sub ax, cx                       ; 0x7046
    add ax, strict word 0xfffb       ; 0x7048
    mov word [bp - 0x000a], ax       ; 0x704b
    cmp ax, strict word 1            ; 0x704e
    jge short @..api_idx_000c.l13    ; 0x7051
    mov word [bp - 0x000a], 1        ; 0x7053
@..api_idx_000c.l13:
    mov al, byte [bp - 0x000a]       ; 0x7058
    mov bx, word [bp - 0x0006]       ; 0x705b
    mov byte [bx + 0x25], al         ; 0x705e
    jmp short @..api_idx_000c.l16    ; 0x7061
@..api_idx_000c.l14:
    mov bx, word [bp - 0x0006]       ; 0x7063
    cmp byte [bx + 0x2b], 3          ; 0x7066
    jne short @..api_idx_000c.l16    ; 0x706a
    mov byte [bx + 0x2b], 0          ; 0x706c
    mov bx, word [bp - 0x0006]       ; 0x7070
    mov byte [bx + 0x25], 0          ; 0x7073
    mov ax, 1                        ; 0x7077
    push ax                          ; 0x707a
    call api_idx_000a_2              ; 0x707b
    pop cx                           ; 0x707e
    mov ax, 4                        ; 0x707f
    push ax                          ; 0x7082
    call api_idx_0004_5              ; 0x7083
    pop cx                           ; 0x7086
    mov ax, 0x43                     ; 0x7087
    push ax                          ; 0x708a
    mov ax, 0xffff                   ; 0x708b
    push ax                          ; 0x708e
    mov ax, 0xdbf                    ; 0x708f
    push ax                          ; 0x7092
    call api_idx_0006_6              ; 0x7093
    add sp, byte 6                   ; 0x7096
    cmp word [data_8464], byte 0     ; 0x7099
    jne short @..api_idx_000c.l15    ; 0x709e
    mov ax, 0                        ; 0x70a0
    push ax                          ; 0x70a3
    push word [data_8462]            ; 0x70a4
    call api_idx_0004_2              ; 0x70a8
    add sp, byte 4                   ; 0x70ab
@..api_idx_000c.l15:
    push word [data_9058]            ; 0x70ae
    call api_idx_0004_5              ; 0x70b2
    pop cx                           ; 0x70b5
@..api_idx_000c.l16:
    mov bx, word [bp - 0x0006]       ; 0x70b6
    mov al, byte [bx + 0x21]         ; 0x70b9
    sub ah, ah                       ; 0x70bc
    mov si, ax                       ; 0x70be
    mov al, byte [bx + si + 0x18]    ; 0x70c0
    sub ah, ah                       ; 0x70c3
    cmp ax, word [data_8460]         ; 0x70c5
    je short @..api_idx_000c.l17     ; 0x70c9
    jmp near @..local.l288           ; 0x70cb
@..api_idx_000c.l17:
    cmp byte [bx + 0x24], 0          ; 0x70ce
    jbe short @..api_idx_000c.l19    ; 0x70d2
    cmp byte [bx + 0x2b], 3          ; 0x70d4
    jne short @..api_idx_000c.l19    ; 0x70d8
    cmp byte [bx + 0x22], 3          ; 0x70da
    je short @..api_idx_000c.l19     ; 0x70de
    mov byte [bx + 0x2b], 0          ; 0x70e0
    mov bx, word [bp - 0x0006]       ; 0x70e4
    mov byte [bx + 0x25], 0          ; 0x70e7
    mov ax, 1                        ; 0x70eb
    push ax                          ; 0x70ee
    call api_idx_000a_2              ; 0x70ef
    pop cx                           ; 0x70f2
    mov ax, 4                        ; 0x70f3
    push ax                          ; 0x70f6
    call api_idx_0004_5              ; 0x70f7
    pop cx                           ; 0x70fa
    mov ax, 0x43                     ; 0x70fb
    push ax                          ; 0x70fe
    mov ax, 0xffff                   ; 0x70ff
    push ax                          ; 0x7102
    mov ax, 0xdbf                    ; 0x7103
    push ax                          ; 0x7106
    call api_idx_0006_6              ; 0x7107
    add sp, byte 6                   ; 0x710a
    cmp word [data_8464], byte 0     ; 0x710d
    jne short @..api_idx_000c.l18    ; 0x7112
    mov ax, 0                        ; 0x7114
    push ax                          ; 0x7117
    push word [data_8462]            ; 0x7118
    call api_idx_0004_2              ; 0x711c
    add sp, byte 4                   ; 0x711f
@..api_idx_000c.l18:
    push word [data_9058]            ; 0x7122
    call api_idx_0004_5              ; 0x7126
    pop cx                           ; 0x7129
@..api_idx_000c.l19:
    call api_idx_0014                ; 0x712a
    mov bx, word [bp - 0x0006]       ; 0x712d
    inc byte [bx + 0x21]             ; 0x7130
    cmp word [data_830a], byte 0x0d  ; 0x7133
    je short @..local.l287           ; 0x7138
    ret                              ; 0x713a
@..local.l287:
    jmp short @..local.l289          ; 0x713b
@..local.l288:
    mov bx, word [bp - 0x0006]       ; 0x713d
    mov al, byte [bx + 0x21]         ; 0x7140
    sub ah, ah                       ; 0x7143
    mov si, ax                       ; 0x7145
    cmp byte [bx + si + 0x18], 0     ; 0x7147
    jne short @..local.l289          ; 0x714b
    inc byte [bx + 0x21]             ; 0x714d
@..local.l289:
    mov bx, word [bp - 0x0006]       ; 0x7150
    cmp byte [bx + 0x21], 3          ; 0x7153
    jbe short @..local.l290          ; 0x7157
    mov byte [bx + 0x21], 3          ; 0x7159
@..local.l290:
    inc word [data_8462]             ; 0x715d
@..local.l291:
    mov ax, word [data_8464]         ; 0x7161
    shl ax, 1                        ; 0x7164
    mov bx, ax                       ; 0x7166
    mov bx, word [bx - 0x7b7e]       ; 0x7168
    mov al, byte [bx + 0x1a1]        ; 0x716c
    sub ah, ah                       ; 0x7170
    cmp ax, word [data_8462]         ; 0x7172
    jle short @..local.l292          ; 0x7176
    jmp near @..api_idx_000c.l6      ; 0x7178
@..local.l292:
    mov ax, word [data_8464]         ; 0x717b
    shl ax, 1                        ; 0x717e
    mov bx, ax                       ; 0x7180
    mov bx, word [bx - 0x7b7e]       ; 0x7182
    cmp byte [bx + 0x1a1], 0         ; 0x7186
    ja short @..local.l293           ; 0x718b
    jmp near @..local.l299           ; 0x718d
@..local.l293:
    mov word [bp - 0x0008], 0        ; 0x7190
@..local.l294:
    mov ax, word [data_8464]         ; 0x7195
    shl ax, 1                        ; 0x7198
    mov bx, ax                       ; 0x719a
    mov bx, word [bx - 0x7b7e]       ; 0x719c
    mov si, word [bp - 0x0008]       ; 0x71a0
    mov al, byte [bx + si + 0x192]   ; 0x71a3
    sub ah, ah                       ; 0x71a7
    mov word [bp - 0x000a], ax       ; 0x71a9
    mov al, byte [bx + si + 0x198]   ; 0x71ac
    sub ah, ah                       ; 0x71b0
    cmp ax, word [data_8460]         ; 0x71b2
    je short @..local.l295           ; 0x71b6
    jmp near @..local.l298           ; 0x71b8
@..local.l295:
    cmp word [bp - 0x000a], byte 0   ; 0x71bb
    jg short @..local.l296           ; 0x71bf
    jmp near @..local.l298           ; 0x71c1
@..local.l296:
    mov ax, 1                        ; 0x71c4
    push ax                          ; 0x71c7
    call api_idx_000a_2              ; 0x71c8
    pop cx                           ; 0x71cb
    mov ax, 4                        ; 0x71cc
    push ax                          ; 0x71cf
    call api_idx_0004_5              ; 0x71d0
    pop cx                           ; 0x71d3
    mov ax, word [bp - 0x0008]       ; 0x71d4
    jmp near @..local.l297           ; 0x71d7

    db 0xb8, 0x43, 0x00, 0x50, 0xb8, 0x94, 0x0c, 0x50, 0xe8, 0xf7, 0xfc, 0x83, 0xc4, 0x04, 0xb8, 0x05
    db 0x00, 0xf7, 0x6e, 0xf6, 0x05, 0x19, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xff, 0x76, 0xf6, 0xb8
    db 0x04, 0x00, 0x50, 0xb8, 0x02, 0x00, 0x50, 0xb8, 0xf6, 0xff, 0x50, 0xff, 0x36, 0x64, 0x84, 0xe8
    db 0xd5, 0xb6, 0x83, 0xc4, 0x0e, 0xe9, 0x65, 0x01, 0xb8, 0x43, 0x00, 0x50, 0xb8, 0x9b, 0x0c, 0x50
    db 0xe8, 0xbf, 0xfc, 0x83, 0xc4, 0x04, 0xb8, 0x05, 0x00, 0xf7, 0x6e, 0xf6, 0x05, 0x19, 0x00, 0x50
    db 0xb8, 0x0b, 0x00, 0x50, 0xff, 0x76, 0xf6, 0xb8, 0x05, 0x00, 0x50, 0xb8, 0x02, 0x00, 0x50, 0xb8
    db 0xf6, 0xff, 0x50, 0xff, 0x36, 0x64, 0x84, 0xe8, 0x1b, 0xb4, 0x83, 0xc4, 0x0e, 0xe9, 0x2d, 0x01
    db 0xb8, 0x43, 0x00, 0x50, 0xb8, 0x95, 0x0c, 0x50, 0xe8, 0x87, 0xfc, 0x83, 0xc4, 0x04, 0xff, 0x76
    db 0xf6, 0xb8, 0x02, 0x00, 0x50, 0xb8, 0x0a, 0x00, 0xf7, 0x6e, 0xf6, 0x50, 0xb8, 0x00, 0x00, 0x50
    db 0xb8, 0x05, 0x00, 0x50, 0xb8, 0x04, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x05, 0x00, 0xf7
    db 0x6e, 0xf6, 0x05, 0x19, 0x00, 0x50, 0xff, 0x76, 0xf6, 0xb8, 0x06, 0x00, 0x50, 0xb8, 0x95, 0x0d
    db 0x50, 0xb8, 0xf6, 0xff, 0x50, 0xff, 0x36, 0x64, 0x84, 0xe8, 0xf5, 0xb7, 0x83, 0xc4, 0x1a, 0xe9
    db 0xdb, 0x00, 0xb8, 0x43, 0x00, 0x50, 0xb8, 0x96, 0x0c, 0x50, 0xe8, 0x35, 0xfc, 0x83, 0xc4, 0x04
    db 0xff, 0x76, 0xf6, 0xb8, 0x04, 0x00, 0x50, 0xff, 0x76, 0xf6, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x08
    db 0x00, 0x50, 0xb8, 0x03, 0x00, 0x50, 0xb8, 0x02, 0x00, 0x50, 0xb8, 0x05, 0x00, 0xf7, 0x6e, 0xf6
    db 0x05, 0x19, 0x00, 0x50, 0xff, 0x76, 0xf6, 0xb8, 0x05, 0x00, 0x50, 0xb8, 0x98, 0x0d, 0x50, 0xb8
    db 0xf6, 0xff, 0x50, 0xff, 0x36, 0x64, 0x84, 0xe8, 0xa7, 0xb7, 0x83, 0xc4, 0x1a, 0xe9, 0x8d, 0x00
    db 0xb8, 0x43, 0x00, 0x50, 0xb8, 0x97, 0x0c, 0x50, 0xe8, 0xe7, 0xfb, 0x83, 0xc4, 0x04, 0xb8, 0x05
    db 0x00, 0xf7, 0x6e, 0xf6, 0x05, 0x19, 0x00, 0x50, 0xb8, 0x08, 0x00, 0x50, 0xff, 0x76, 0xf6, 0xb8
    db 0x06, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0xf6, 0xff, 0x50, 0xff, 0x36, 0x64, 0x84, 0xe8
    db 0xc5, 0xb5, 0x83, 0xc4, 0x0e, 0xeb, 0x56, 0xb8, 0x43, 0x00, 0x50, 0xb8, 0x9c, 0x0c, 0x50, 0xe8
    db 0xb0, 0xfb, 0x83, 0xc4, 0x04, 0xff, 0x76, 0xf6, 0xff, 0x76, 0xf6, 0xff, 0x76, 0xf6, 0xb8, 0x01
    db 0x00, 0x50, 0xb8, 0x05, 0x00, 0xf7, 0x6e, 0xf6, 0x05, 0x19, 0x00, 0x50, 0xb8, 0x03, 0x00, 0x50
    db 0xb8, 0x0b, 0x00, 0x50, 0xb8, 0xa9, 0x0d, 0x50, 0xff, 0x36, 0x64, 0x84, 0xe8, 0x22, 0xb9, 0x83
    db 0xc4, 0x12, 0xeb, 0x19, 0x21, 0xc2, 0x91, 0xc2, 0xe3, 0xc2, 0x31, 0xc3, 0x59, 0xc2, 0x68, 0xc3

@..local.l297:
    cmp ax, strict word 6            ; 0x736a
    jae short @..local.l298          ; 0x736d
    xchg bx, ax                      ; 0x736f
    shl bx, 1                        ; 0x7370
    jmp [cs:bx - 0x3c5b]             ; 0x7372
@..local.l298:
    inc word [bp - 0x0008]           ; 0x7377
    mov ax, word [bp - 0x0008]       ; 0x737a
    cmp ax, strict word 6            ; 0x737d
    jge short @..local.l299          ; 0x7380
    jmp near @..local.l294           ; 0x7382
@..local.l299:
    inc word [data_8464]             ; 0x7385
    mov ax, word [data_8464]         ; 0x7389
    cmp ax, strict word 7            ; 0x738c
    jge short @..local.l300          ; 0x738f
    jmp near @..api_idx_000c.l5      ; 0x7391
@..local.l300:
    call api_idx_0006                ; 0x7394
    dec word [data_8460]             ; 0x7397
    jle short @..local.l301          ; 0x739b
    jmp near @..api_idx_000c.l4      ; 0x739d
@..local.l301:
    mov word [bp - 0x000c], 0        ; 0x73a0
    mov word [bp - 0x0002], 0        ; 0x73a5
@..local.l302:
    mov word [bp - 0x0004], 0        ; 0x73aa
@..local.l303:
    mov ax, 6                        ; 0x73af
    imul word [bp - 0x0002]          ; 0x73b2
    mov cx, word [bp - 0x0004]       ; 0x73b5
    shl cx, 1                        ; 0x73b8
    add ax, cx                       ; 0x73ba
    mov bx, ax                       ; 0x73bc
    cmp word [bx - 0x6f36], byte 0xff ; 0x73be
    je short @..local.l304           ; 0x73c3
    mov ax, 1                        ; 0x73c5
    jmp short @..local.l305          ; 0x73c8
@..local.l304:
    mov ax, 0                        ; 0x73ca
@..local.l305:
    or word [bp - 0x000c], ax        ; 0x73cd
    inc word [bp - 0x0004]           ; 0x73d0
    mov ax, word [bp - 0x0004]       ; 0x73d3
    cmp ax, strict word 3            ; 0x73d6
    jl short @..local.l303           ; 0x73d9
    inc word [bp - 0x0002]           ; 0x73db
    mov ax, word [bp - 0x0002]       ; 0x73de
    cmp ax, strict word 3            ; 0x73e1
    jl short @..local.l302           ; 0x73e4
    call loc_1a35                    ; 0x73e6
    cmp word [bp - 0x000c], byte 0   ; 0x73e9
    jne short @..local.l301          ; 0x73ed
    mov word [data_830a], api_idx_0002 ; 0x73ef
    ret                              ; 0x73f5
api_idx_0004_11:
    mov ax, 0xfffc                   ; 0x73f6
    call ds_dispatch_f40b            ; 0x73f9
    mov ax, 0x64                     ; 0x73fc
    push ax                          ; 0x73ff
    call ds_dispatch_b7a9            ; 0x7400
    pop cx                           ; 0x7403
    mov word [bp - 0x0004], ax       ; 0x7404
    mov word [bp - 0x0002], 0        ; 0x7407
@..api_idx_0004_11.l1:
    mov bx, word [bp + 0x4]          ; 0x740c
    mov si, word [bp - 0x0002]       ; 0x740f
    mov al, byte [bx + si]           ; 0x7412
    sub ah, ah                       ; 0x7414
    cmp ax, word [bp - 0x0004]       ; 0x7416
    jle short @..local.l306          ; 0x7419
    mov ax, si                       ; 0x741b
    ret                              ; 0x741d
@..local.l306:
    mov al, byte [bx + si]           ; 0x741e
    sub ah, ah                       ; 0x7420
    sub word [bp - 0x0004], ax       ; 0x7422
    inc word [bp - 0x0002]           ; 0x7425
    mov ax, word [bp - 0x0002]       ; 0x7428
    cmp ax, strict word 8            ; 0x742b
    jl short @..api_idx_0004_11.l1   ; 0x742e
    mov ax, 4                        ; 0x7430
    ret                              ; 0x7433
api_idx_000a_5:
    mov ax, 0xfff6                   ; 0x7434
    call ds_dispatch_f40b            ; 0x7437
    mov word [data_91d6], 4          ; 0x743a
    mov ax, 0x2c                     ; 0x7440
    imul word [bp + 0xa]             ; 0x7443
    mov si, ax                       ; 0x7446
    mov ax, word [bp + 0x8]          ; 0x7448
    shl ax, 1                        ; 0x744b
    mov bx, ax                       ; 0x744d
    mov bx, word [bx - 0x7b7e]       ; 0x744f
    mov cx, word [bx + si]           ; 0x7453
    mov bx, word [bp + 0x4]          ; 0x7455
    mov ax, word [bx]                ; 0x7458
    sub ax, cx                       ; 0x745a
    mov cx, 3                        ; 0x745c
    imul cx                          ; 0x745f
    mov word [bp - 0x0004], ax       ; 0x7461
    mov word [bp - 0x0002], 0        ; 0x7464
@..api_idx_000a_5.l1:
    mov ax, 0x64                     ; 0x7469
    push ax                          ; 0x746c
    call ds_dispatch_b7a9            ; 0x746d
    pop cx                           ; 0x7470
    push ax                          ; 0x7471
    mov bx, word [bp + 0x6]          ; 0x7472
    mov si, word [bp - 0x0002]       ; 0x7475
    mov al, byte [bx + si + 0x4]     ; 0x7478
    sub ah, ah                       ; 0x747b
    mov cx, ax                       ; 0x747d
    pop ax                           ; 0x747f
    cmp ax, cx                       ; 0x7480
    jl short @..api_idx_000a_5.l2    ; 0x7482
    jmp near @..local.l310           ; 0x7484
@..api_idx_000a_5.l2:
    mov bx, word [bp + 0x4]          ; 0x7487
    mov ax, word [bx]                ; 0x748a
    mov cx, 3                        ; 0x748c
    cwd                              ; 0x748f
    idiv cx                          ; 0x7490
    inc ax                           ; 0x7492
    mov word [bp - 0x0006], ax       ; 0x7493
    mov ax, si                       ; 0x7496
    jmp near @..local.l309           ; 0x7498
    mov ax, 0                        ; 0x749b
    push ax                          ; 0x749e
    mov ax, 0xd50                    ; 0x749f
    push ax                          ; 0x74a2
    push word [bp - 0x0006]          ; 0x74a3
    mov ax, 2                        ; 0x74a6
    push ax                          ; 0x74a9
    push word [bp - 0x0006]          ; 0x74aa
    push word [bp - 0x0004]          ; 0x74ad
    push ax                          ; 0x74b0
    mov ax, 9                        ; 0x74b1
    push ax                          ; 0x74b4
    mov ax, 0xd92                    ; 0x74b5
    push ax                          ; 0x74b8
    push word [bp + 0xa]             ; 0x74b9
    push word [bp + 0x8]             ; 0x74bc
    call api_idx_0006_2              ; 0x74bf
    add sp, byte 0x16                ; 0x74c2
    jmp near @..local.l310           ; 0x74c5
    mov ax, 0                        ; 0x74c8
    push ax                          ; 0x74cb
    mov ax, 0xd50                    ; 0x74cc
    push ax                          ; 0x74cf
    push word [bp - 0x0006]          ; 0x74d0
    mov ax, 3                        ; 0x74d3
    push ax                          ; 0x74d6
    mov ax, word [bp - 0x0006]       ; 0x74d7
    imul ax                          ; 0x74da
    push ax                          ; 0x74dc
    push word [bp - 0x0004]          ; 0x74dd
    mov ax, 3                        ; 0x74e0
    push ax                          ; 0x74e3
    mov ax, 4                        ; 0x74e4
    push ax                          ; 0x74e7
    mov ax, 0xd93                    ; 0x74e8
    push ax                          ; 0x74eb
    push word [bp + 0xa]             ; 0x74ec
    push word [bp + 0x8]             ; 0x74ef
    call api_idx_0006_2              ; 0x74f2
    add sp, byte 0x16                ; 0x74f5
    jmp near @..local.l310           ; 0x74f8
    mov ax, 0                        ; 0x74fb
    push ax                          ; 0x74fe
    mov ax, 0xd50                    ; 0x74ff
    push ax                          ; 0x7502
    mov bx, word [bp + 0x6]          ; 0x7503
    mov al, byte [bx + 0xc]          ; 0x7506
    sub ah, ah                       ; 0x7509
    push ax                          ; 0x750b
    mov ax, 2                        ; 0x750c
    push ax                          ; 0x750f
    mov ax, 0xa                      ; 0x7510
    imul word [bp - 0x0006]          ; 0x7513
    push ax                          ; 0x7516
    push word [bp - 0x0004]          ; 0x7517
    mov ax, 5                        ; 0x751a
    push ax                          ; 0x751d
    mov ax, 6                        ; 0x751e
    push ax                          ; 0x7521
    mov ax, 0xd95                    ; 0x7522
    push ax                          ; 0x7525
    push word [bp + 0xa]             ; 0x7526
    push word [bp + 0x8]             ; 0x7529
    call api_idx_0006_2              ; 0x752c
    add sp, byte 0x16                ; 0x752f
    jmp near @..local.l310           ; 0x7532
    mov ax, 0                        ; 0x7535
    push ax                          ; 0x7538
    mov ax, 0xd50                    ; 0x7539
    push ax                          ; 0x753c
    push word [bp - 0x0004]          ; 0x753d
    mov ax, 2                        ; 0x7540
    push ax                          ; 0x7543
    mov ax, 0xb                      ; 0x7544
    push ax                          ; 0x7547
    mov ax, 0xd9d                    ; 0x7548
    push ax                          ; 0x754b
    push word [bp + 0xa]             ; 0x754c
    push word [bp + 0x8]             ; 0x754f
    call api_idx_0002_4              ; 0x7552
    add sp, byte 0x10                ; 0x7555
    jmp near @..local.l310           ; 0x7558
    mov ax, 0                        ; 0x755b
    push ax                          ; 0x755e
    mov ax, 0xd50                    ; 0x755f
    push ax                          ; 0x7562
    mov ax, 0xff                     ; 0x7563
    push ax                          ; 0x7566
    mov ax, 1                        ; 0x7567
    push ax                          ; 0x756a
    push ax                          ; 0x756b
    push word [bp - 0x0004]          ; 0x756c
    mov ax, 6                        ; 0x756f
    push ax                          ; 0x7572
    mov ax, 7                        ; 0x7573
    push ax                          ; 0x7576
    mov ax, 0xdaa                    ; 0x7577
    push ax                          ; 0x757a
    push word [bp + 0xa]             ; 0x757b
    push word [bp + 0x8]             ; 0x757e
    call api_idx_0006_2              ; 0x7581
    add sp, byte 0x16                ; 0x7584
    jmp near @..local.l310           ; 0x7587
    cmp word [data_8464], byte 0     ; 0x758a
    jne short @..api_idx_000a_5.l3   ; 0x758f
    mov ax, word [data_8464]         ; 0x7591
    shl ax, 1                        ; 0x7594
    mov bx, ax                       ; 0x7596
    mov bx, word [bx - 0x7b70]       ; 0x7598
    mov byte [bx + 0xdf], 3          ; 0x759c
@..api_idx_000a_5.l3:
    mov word [bp - 0x0008], 0        ; 0x75a1
    mov ax, word [data_8464]         ; 0x75a6
    shl ax, 1                        ; 0x75a9
    mov bx, ax                       ; 0x75ab
    mov bx, word [bx - 0x7b70]       ; 0x75ad
    mov al, byte [bx + 0xdf]         ; 0x75b1
    sub ah, ah                       ; 0x75b5
    jmp near @..local.l307           ; 0x75b7
    mov ax, 0x64                     ; 0x75ba
    push ax                          ; 0x75bd
    call ds_dispatch_b7a9            ; 0x75be
    pop cx                           ; 0x75c1
    push ax                          ; 0x75c2
    mov ax, word [bp + 0x8]          ; 0x75c3
    shl ax, 1                        ; 0x75c6
    mov bx, ax                       ; 0x75c8
    mov bx, word [bx - 0x7b70]       ; 0x75ca
    mov al, byte [bx + 0xa5]         ; 0x75ce
    sub ah, ah                       ; 0x75d2
    mov cx, ax                       ; 0x75d4
    pop ax                           ; 0x75d6
    cmp ax, cx                       ; 0x75d7
    jle short @..api_idx_000a_5.l4   ; 0x75d9
    mov ax, 3                        ; 0x75db
    imul word [bp - 0x0006]          ; 0x75de
    push ax                          ; 0x75e1
    mov ax, 5                        ; 0x75e2
    push ax                          ; 0x75e5
    mov ax, word [bp - 0x0006]       ; 0x75e6
    shl ax, 1                        ; 0x75e9
    push ax                          ; 0x75eb
    call ds_dispatch_d0ea            ; 0x75ec
    add sp, byte 6                   ; 0x75ef
    mov cx, ax                       ; 0x75f2
    sub sp, byte 4                   ; 0x75f4
    mov ax, sp                       ; 0x75f7
    mov dx, ss                       ; 0x75f9
    mov es, dx                       ; 0x75fb
    mov si, cx                       ; 0x75fd
    mov di, ax                       ; 0x75ff
    movsw                            ; 0x7601
    movsw                            ; 0x7602
    call ds_dispatch_d0be            ; 0x7603
    add sp, byte 4                   ; 0x7606
    mov word [bp - 0x0008], ax       ; 0x7609
    push ax                          ; 0x760c
    mov ax, 0x2c                     ; 0x760d
    imul word [bp + 0xa]             ; 0x7610
    mov cx, ax                       ; 0x7613
    mov ax, word [bp + 0x8]          ; 0x7615
    shl ax, 1                        ; 0x7618
    mov bx, ax                       ; 0x761a
    mov ax, word [bx - 0x7b7e]       ; 0x761c
    add ax, cx                       ; 0x7620
    push ax                          ; 0x7622
    call loc_182b                    ; 0x7623
    add sp, byte 4                   ; 0x7626
    mov word [bp - 0x000a], 0xea7    ; 0x7629
@..api_idx_000a_5.l4:
    jmp near @..local.l308           ; 0x762e
    mov ax, 0x64                     ; 0x7631

    db 0x50, 0xe8, 0x71, 0x41, 0x59, 0x50, 0x8b, 0x46, 0x08, 0xd1, 0xe0, 0x8b, 0xd8, 0x8b, 0x9f, 0x90
    db 0x84, 0x8a, 0x87, 0xa5, 0x00, 0x2a, 0xe4, 0x8b, 0xc8, 0x58, 0x3b, 0xc1, 0x7f, 0x03, 0xe9, 0xcb
    db 0x00, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x04, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xe8, 0x86, 0x5a
    db 0x83, 0xc4, 0x06, 0x8b, 0xc8, 0x83, 0xec, 0x04, 0x8b, 0xc4, 0x8c, 0xd2, 0x8e, 0xc2, 0x8b, 0xf1
    db 0x8b, 0xf8, 0xa5, 0xa5, 0xe8, 0x43, 0x5a, 0x83, 0xc4, 0x04, 0x89, 0x46, 0xf8, 0x8b, 0x46, 0xf8
    db 0x50, 0xb8, 0x2c, 0x00, 0xf7, 0x6e, 0x0a, 0x8b, 0xf0, 0x8b, 0x46, 0x08, 0xd1, 0xe0, 0x8b, 0xd8
    db 0x8b, 0x9f, 0x82, 0x84, 0x58, 0x29, 0x40, 0x04, 0x8b, 0x46, 0xf8, 0x50, 0xb8, 0x2c, 0x00, 0xf7
    db 0x6e, 0x0a, 0x8b, 0xf0, 0x8b, 0x46, 0x08, 0xd1, 0xe0, 0x8b, 0xd8, 0x8b, 0x9f, 0x82, 0x84, 0x58
    db 0x29, 0x40, 0x02, 0xb8, 0x2c, 0x00, 0xf7, 0x6e, 0x0a, 0x8b, 0xf0, 0x8b, 0x46, 0x08, 0xd1, 0xe0
    db 0x8b, 0xd8, 0x8b, 0x9f, 0x82, 0x84, 0x83, 0x78, 0x04, 0x01, 0x7d, 0x05, 0xc7, 0x40, 0x04, 0x01
    db 0x00, 0x83, 0x7e, 0x08, 0x00, 0x75, 0x40, 0xb8, 0x2c, 0x00, 0xf7, 0x6e, 0x0a, 0x8b, 0xf0, 0x8b
    db 0x46, 0x08, 0xd1, 0xe0, 0x8b, 0xd8, 0x8b, 0x9f, 0x82, 0x84, 0x8b, 0x40, 0x02, 0x50, 0xb8, 0x48
    db 0x02, 0xf7, 0x6e, 0x0a, 0x8b, 0xd8, 0x58, 0x89, 0x87, 0x0c, 0x5c, 0x8b, 0x46, 0x08, 0xd1, 0xe0
    db 0x8b, 0xd8, 0x8b, 0x9f, 0x82, 0x84, 0x8b, 0x40, 0x04, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x0a
    db 0x8b, 0xd8, 0x58, 0x89, 0x87, 0x0e, 0x5c, 0xc7, 0x46, 0xf6, 0xa8, 0x0e, 0xeb, 0x10

@..local.l307:

    db 0x3d, 0x03, 0x00, 0x75, 0x03, 0xe9, 0x90, 0xfe, 0x3d, 0x0b, 0x00, 0x75, 0x03, 0xe9, 0xff, 0xfe

@..local.l308:

    db 0x83, 0x7e, 0xf8, 0x00, 0x7f, 0x03, 0xe9, 0xed, 0x00, 0xff, 0x76, 0x0a, 0xff, 0x76, 0x08, 0xb8
    db 0xe6, 0x90, 0x50, 0xe8, 0x63, 0x9e, 0x83, 0xc4, 0x06, 0xb8, 0x86, 0x91, 0x50, 0xff, 0x76, 0xf6
    db 0xe8, 0xe6, 0x3d, 0x83, 0xc4, 0x04, 0x83, 0x7e, 0xf8, 0x00, 0x7e, 0x1f, 0xb8, 0x36, 0x91, 0x50
    db 0xff, 0x76, 0xf8, 0xe8, 0x15, 0x3b, 0x83, 0xc4, 0x04, 0xb8, 0x24, 0x00, 0x50, 0xb8, 0x36, 0x91
    db 0x50, 0xb8, 0x86, 0x91, 0x50, 0xe8, 0x86, 0x3b, 0x83, 0xc4, 0x06, 0xb8, 0x36, 0x91, 0x50, 0xb8
    db 0xa6, 0x0e, 0x50, 0xe8, 0xb3, 0x3d, 0x83, 0xc4, 0x04, 0xb8, 0x04, 0x00, 0x50, 0x50, 0xe8, 0xb2
    db 0xa3, 0x83, 0xc4, 0x04, 0xb8, 0x41, 0x00, 0x50, 0x50, 0x83, 0x7e, 0x08, 0x00, 0x75, 0x03, 0xb8
    db 0x01, 0x00, 0x50, 0xb8, 0x86, 0x91, 0x50, 0xb8, 0x36, 0x91, 0x50, 0xb8, 0xe6, 0x90, 0x50, 0xb8
    db 0x04, 0x00, 0x50, 0xe8, 0x09, 0x9f, 0x83, 0xc4, 0x0e, 0x83, 0x7e, 0x08, 0x00, 0x75, 0x23, 0xb8
    db 0x48, 0x02, 0xf7, 0x6e, 0x0a, 0x8b, 0xd8, 0x8a, 0x87, 0x2c, 0x5e, 0x2a, 0xe4, 0x05, 0x08, 0x00
    db 0x50, 0xe8, 0x0a, 0x40, 0x59, 0xb8, 0x01, 0x00, 0x50, 0xff, 0x76, 0x0a, 0xe8, 0x2a, 0x8b, 0x83
    db 0xc4, 0x04, 0xff, 0x36, 0x58, 0x90, 0xe8, 0x74, 0xa2, 0x59, 0xb8, 0x2c, 0x00, 0xf7, 0x6e, 0x0a
    db 0x8b, 0xf0, 0x8b, 0x46, 0x08, 0xd1, 0xe0, 0x8b, 0xd8, 0x8b, 0x9f, 0x82, 0x84, 0x83, 0x78, 0x02
    db 0x00, 0x7f, 0x23, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x50, 0x0d, 0x50, 0xff, 0x76, 0xfc, 0xb8, 0x03
    db 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x9e, 0x0d, 0x50, 0xff, 0x76, 0x0a, 0xff, 0x76, 0x08
    db 0xe8, 0x73, 0xa7, 0x83, 0xc4, 0x10, 0xe9, 0xd7, 0x00, 0xb8, 0x0d, 0x00, 0x83, 0x7e, 0x08, 0x00
    db 0x75, 0x03, 0xb8, 0x0b, 0x00, 0x89, 0x46, 0xf6, 0xb8, 0x64, 0x00, 0x50, 0xe8, 0x68, 0x3f, 0x59
    db 0x50, 0x8b, 0x46, 0x08, 0xd1, 0xe0, 0x8b, 0xd8, 0x8b, 0x9f, 0x90, 0x84, 0x8b, 0x76, 0xf6, 0x8a
    db 0x80, 0x9a, 0x00, 0x2a, 0xe4, 0x8b, 0xc8, 0x2b, 0x46, 0xfc, 0x8b, 0xc8, 0x58, 0x3b, 0xc1, 0x7e
    db 0x4e, 0xb8, 0x04, 0x00, 0x50, 0x50, 0xe8, 0xda, 0xa2, 0x83, 0xc4, 0x04, 0xb8, 0x04, 0x00, 0x50
    db 0xb8, 0x55, 0x00, 0x50, 0xb8, 0xa7, 0x0d, 0x50, 0xe8, 0x20, 0x9e, 0x83, 0xc4, 0x06, 0xa1, 0x58
    db 0x90, 0xb9, 0x02, 0x00, 0x99, 0xf7, 0xf9, 0x50, 0xe8, 0xd2, 0xa1, 0x59, 0xb8, 0x00, 0x00, 0x50
    db 0xb8, 0x50, 0x0d, 0x50, 0xff, 0x76, 0xfc, 0xb8, 0x03, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xb8
    db 0x9e, 0x0d, 0x50, 0xff, 0x76, 0x0a, 0xff, 0x76, 0x08, 0xe8, 0xea, 0xa6, 0x83, 0xc4, 0x10, 0xeb
    db 0x4f, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x50, 0x0d, 0x50, 0xff, 0x76, 0xfa, 0xb8, 0x03, 0x00, 0x50
    db 0x8b, 0x46, 0xfa, 0xd1, 0xe0, 0x50, 0xff, 0x76, 0xfc, 0xb8, 0x02, 0x00, 0x50, 0xb8, 0x09, 0x00
    db 0x50, 0xb8, 0x9c, 0x0d, 0x50, 0xff, 0x76, 0x0a, 0xff, 0x76, 0x08, 0xe8, 0xbc, 0xa7, 0x83, 0xc4
    db 0x16, 0xeb, 0x1d, 0xe2, 0xc4, 0x0f, 0xc5, 0x42, 0xc5, 0x7c, 0xc5, 0xa2, 0xc5, 0xd1, 0xc5, 0x72
    db 0xc8, 0xfa, 0xc8

@..local.l309:
    cmp ax, strict word 8            ; 0x78f5
    jae short @..local.l310          ; 0x78f8
    xchg bx, ax                      ; 0x78fa
    shl bx, 1                        ; 0x78fb
    jmp [cs:bx - 0x36d4]             ; 0x78fd
@..local.l310:
    inc word [bp - 0x0002]           ; 0x7902
    mov ax, word [bp - 0x0002]       ; 0x7905
    cmp ax, strict word 8            ; 0x7908
    jge short @..local.l311          ; 0x790b
    jmp near @..api_idx_000a_5.l1    ; 0x790d
@..local.l311:
    ret                              ; 0x7910
api_idx_000c_2:
    mov ax, 0xfff4                   ; 0x7911
    call ds_dispatch_f40b            ; 0x7914
    mov ax, 0xc                      ; 0x7917
    imul word [bp + 0x4]             ; 0x791a
    mov si, ax                       ; 0x791d
    add ax, 0x5576                   ; 0x791f
    mov si, ax                       ; 0x7922
    lea di, word [bp - 0x000c]       ; 0x7924
    mov cx, ds                       ; 0x7927
    mov es, cx                       ; 0x7929
    mov cx, 6                        ; 0x792b
    rep movsw                        ; 0x792e
    mov ax, word [bp + 0x6]          ; 0x7930
    push ax                          ; 0x7933
    mov ax, 0xc                      ; 0x7934
    imul word [bp + 0x4]             ; 0x7937
    mov bx, ax                       ; 0x793a
    pop ax                           ; 0x793c
    add word [bx + 0x557e], ax       ; 0x793d
    push word [bp + 0x4]             ; 0x7941
    call ds_dispatch_b7e0            ; 0x7944
    pop cx                           ; 0x7947
    lea si, word [bp - 0x000c]       ; 0x7948
    mov ax, 0xc                      ; 0x794b
    imul word [bp + 0x4]             ; 0x794e
    mov di, ax                       ; 0x7951
    db 0x05, 0x76
@..api_idx_000c_2.l1:
    db 0x55
    mov di, ax                       ; 0x7956
    mov cx, ds                       ; 0x7958
    mov es, cx                       ; 0x795a
    mov cx, 6                        ; 0x795c
    rep movsw                        ; 0x795f
    ret                              ; 0x7961
api_idx_00ac:
    mov ax, 0xff54                   ; 0x7962
    call ds_dispatch_f40b            ; 0x7965
    mov word [bp - 0x00aa], 0x43     ; 0x7968
    mov word [bp - 0x00ac], 0        ; 0x796e
    mov word [bp - 0x00a8], 0        ; 0x7974
    mov word [bp - 0x00a2], 0        ; 0x797a
    mov bx, word [bp + 0x4]          ; 0x7980
    mov al, byte [bx + 0x1f]         ; 0x7983
    sub ah, ah                       ; 0x7986
    mov word [bp - 0x004e], ax       ; 0x7988
    mov al, byte [bx + 0x20]         ; 0x798b
    sub ah, ah                       ; 0x798e
    mov word [bp - 0x0050], ax       ; 0x7990
    mov word [bp - 0x0076], 0xffff   ; 0x7993
    mov word [bp - 0x0094], 0xffff   ; 0x7998
    mov word [bp - 0x009e], 0        ; 0x799e
    mov word [bp - 0x00a4], 0        ; 0x79a4
    mov word [data_91d6], 4          ; 0x79aa
    push word [data_8462]            ; 0x79b0
    push word [data_8464]            ; 0x79b4
    mov ax, 0x90e6                   ; 0x79b8
    push ax                          ; 0x79bb
    call math_loc_15ab               ; 0x79bc
    add sp, byte 6                   ; 0x79bf
    mov byte [data_9136], 0          ; 0x79c2
    mov byte [data_9186], 0          ; 0x79c7
    mov word [bp - 0x00a6], 1        ; 0x79cc
    cmp word [data_8464], byte 0     ; 0x79d2
    je short @..local.l312           ; 0x79d7
    jmp near @..local.l323           ; 0x79d9
@..local.l312:
    mov ax, data_9136                ; 0x79dc
    push ax                          ; 0x79df
    mov ax, word [bp + 0x8]          ; 0x79e0
    add ax, 0xd16                    ; 0x79e3
    push ax                          ; 0x79e6
    call ds_dispatch_b53b            ; 0x79e7
    add sp, byte 4                   ; 0x79ea
    mov word [bp - 0x00a6], 0        ; 0x79ed
    mov ax, 0x248                    ; 0x79f3
    imul word [data_8462]            ; 0x79f6
    add ax, word [bp + 0x6]          ; 0x79fa
    mov bx, ax                       ; 0x79fd
    mov al, byte [bx + 0x5d48]       ; 0x79ff
    sub ah, ah                       ; 0x7a03
    mov word [bp - 0x004c], ax       ; 0x7a05
    cmp word [bp + 0x8], byte 8      ; 0x7a08
    jne short @..local.l313          ; 0x7a0c
    mov ax, 0x248                    ; 0x7a0e
    imul word [data_8462]            ; 0x7a11
    push ax                          ; 0x7a15
    mov ax, 0xc                      ; 0x7a16
    imul word [bp - 0x004c]          ; 0x7a19
    mov cx, ax                       ; 0x7a1c
    pop ax                           ; 0x7a1e
    add ax, cx                       ; 0x7a1f
    mov bx, ax                       ; 0x7a21
    mov al, byte [bx + 0x5c3b]       ; 0x7a23
    sub ah, ah                       ; 0x7a27
    test ax, 0x20                    ; 0x7a29
    jne short @..local.l313          ; 0x7a2c
    mov ax, 0x248                    ; 0x7a2e
    imul word [data_8462]            ; 0x7a31
    mov bx, ax                       ; 0x7a35
    mov al, byte [bx + 0x5d49]       ; 0x7a37
    sub ah, ah                       ; 0x7a3b
    mov word [bp - 0x004c], ax       ; 0x7a3d
@..local.l313:
    mov bx, word [bp + 0x4]          ; 0x7a40
    cmp byte [bx + 0x2b], 0          ; 0x7a43
    je short @..local.l314           ; 0x7a47
    cmp word [bp + 0x8], byte 4      ; 0x7a49
    je short @..local.l314           ; 0x7a4d
    cmp word [bp + 0x8], byte 8      ; 0x7a4f
    je short @..local.l314           ; 0x7a53
    mov ax, data_9136                ; 0x7a55
    push ax                          ; 0x7a58
    mov ax, 2                        ; 0x7a59
    push ax                          ; 0x7a5c
    call ds_dispatch_b7a9            ; 0x7a5d
    pop cx                           ; 0x7a60
    add ax, 0xd39                    ; 0x7a61
    push ax                          ; 0x7a64
    call ds_dispatch_b53b            ; 0x7a65
    add sp, byte 4                   ; 0x7a68
@..local.l314:
    cmp word [bp - 0x004c], strict word 0xff ; 0x7a6b
    jne short @..local.l315          ; 0x7a70
    jmp near @..local.l322           ; 0x7a72
@..local.l315:
    mov ax, 0                        ; 0x7a75
    push ax                          ; 0x7a78
    mov ax, 0x248                    ; 0x7a79
    imul word [data_8462]            ; 0x7a7c
    push ax                          ; 0x7a80
    mov ax, 0xc                      ; 0x7a81
    imul word [bp - 0x004c]          ; 0x7a84
    mov cx, ax                       ; 0x7a87
    pop ax                           ; 0x7a89
    add ax, cx                       ; 0x7a8a
    mov bx, ax                       ; 0x7a8c
    push word [bx + 0x5c34]          ; 0x7a8e
    lea ax, word [bp - 0x004a]       ; 0x7a92
    push ax                          ; 0x7a95
    mov ax, 1                        ; 0x7a96
    push ax                          ; 0x7a99
    call ds_dispatch_b63c            ; 0x7a9a
    add sp, byte 8                   ; 0x7a9d
    mov ax, 0x248                    ; 0x7aa0
    imul word [data_8462]            ; 0x7aa3
    push ax                          ; 0x7aa7
    mov ax, 0xc                      ; 0x7aa8
    imul word [bp - 0x004c]          ; 0x7aab
    mov cx, ax                       ; 0x7aae
    pop ax                           ; 0x7ab0
    add ax, cx                       ; 0x7ab1
    mov bx, ax                       ; 0x7ab3
    mov al, byte [bx + 0x5c3b]       ; 0x7ab5
    sub ah, ah                       ; 0x7ab9
    test ax, 0x80                    ; 0x7abb
    je short @..local.l316           ; 0x7abe
    lea ax, word [bp - 0x004a]       ; 0x7ac0
    push ax                          ; 0x7ac3
    mov ax, data_9186                ; 0x7ac4
    push ax                          ; 0x7ac7
    call ds_dispatch_f364            ; 0x7ac8
    add sp, byte 4                   ; 0x7acb
    jmp short @..local.l317          ; 0x7ace
@..local.l316:
    mov ax, data_9186                ; 0x7ad0
    push ax                          ; 0x7ad3
    mov al, byte [bp - 0x0011]       ; 0x7ad4
    sub ah, ah                       ; 0x7ad7
    add ax, 0x1770                   ; 0x7ad9
    push ax                          ; 0x7adc
    call ds_dispatch_b53b            ; 0x7add
    add sp, byte 4                   ; 0x7ae0
@..local.l317:
    mov ax, data_9186                ; 0x7ae3
    push ax                          ; 0x7ae6
    call api_idx_0002                ; 0x7ae7
    pop cx                           ; 0x7aea
    cmp word [bp + 0x8], byte 4      ; 0x7aeb
    je short @..local.l318           ; 0x7aef
    cmp word [bp + 0x8], byte 8      ; 0x7af1
    je short @..local.l318           ; 0x7af5
    jmp near @..local.l322           ; 0x7af7
@..local.l318:
    cmp word [bp + 0x8], byte 4      ; 0x7afa
    jne short @..local.l319          ; 0x7afe
    cmp word [bp - 0x0028], byte 0   ; 0x7b00
    je short @..local.l319           ; 0x7b04
    mov ax, word [bp - 0x0028]       ; 0x7b06
    mov word [bp - 0x0094], ax       ; 0x7b09
    mov ax, data_9136                ; 0x7b0d
    push ax                          ; 0x7b10
    mov ax, 0xd38                    ; 0x7b11
    push ax                          ; 0x7b14
    call ds_dispatch_b53b            ; 0x7b15
    add sp, byte 4                   ; 0x7b18
@..local.l319:
    mov ax, 0x248                    ; 0x7b1b
    imul word [data_8462]            ; 0x7b1e
    push ax                          ; 0x7b22
    mov ax, 0xc                      ; 0x7b23
    imul word [bp - 0x004c]          ; 0x7b26
    mov cx, ax                       ; 0x7b29
    pop ax                           ; 0x7b2b
    add ax, cx                       ; 0x7b2c
    mov bx, ax                       ; 0x7b2e
    mov al, byte [bx + 0x5c39]       ; 0x7b30
    sub ah, ah                       ; 0x7b34
    jmp near @..local.l320           ; 0x7b36

    db 0xc7, 0x46, 0x8a, 0x00, 0x00, 0xe9, 0x0f, 0x01, 0xc7, 0x46, 0x8a, 0x14, 0x00, 0xe9, 0x07, 0x01
    db 0xc7, 0x46, 0x8a, 0x11, 0x00, 0xe9, 0xff, 0x00, 0xc7, 0x46, 0x8a, 0x02, 0x00, 0xe9, 0xf7, 0x00
    db 0xc7, 0x46, 0x8a, 0x04, 0x00, 0xe9, 0xef, 0x00, 0xc7, 0x46, 0x8a, 0x10, 0x00, 0xe9, 0xe7, 0x00
    db 0xc7, 0x46, 0x8a, 0x12, 0x00, 0xe9, 0xdf, 0x00, 0xc7, 0x46, 0x8a, 0x13, 0x00, 0xe9, 0xd7, 0x00
    db 0xc7, 0x46, 0x8a, 0x16, 0x00, 0xe9, 0xcf, 0x00, 0xc7, 0x46, 0x8a, 0x06, 0x00, 0xe9, 0xc7, 0x00
    db 0xb8, 0x48, 0x02, 0xf7, 0x2e, 0x62, 0x84, 0x50, 0xb8, 0x0c, 0x00, 0xf7, 0x6e, 0xb4, 0x8b, 0xc8
    db 0x58, 0x03, 0xc1, 0x8b, 0xd8, 0x80, 0xbf, 0x3a, 0x5c, 0x00, 0x76, 0x0d, 0xc7, 0x46, 0x8a, 0x0f
    db 0x00, 0xc7, 0x06, 0xde, 0x90, 0x0c, 0x00, 0xeb, 0x06, 0xc7, 0x86, 0x5c, 0xff, 0x01, 0x00, 0xb8
    db 0x36, 0x91, 0x50, 0xb8, 0x1f, 0x0d, 0x50, 0xe8, 0x78, 0x39, 0x83, 0xc4, 0x04, 0xe9, 0x87, 0x00
    db 0xb8, 0x48, 0x02, 0xf7, 0x2e, 0x62, 0x84, 0x50, 0xb8, 0x0c, 0x00, 0xf7, 0x6e, 0xb4, 0x8b, 0xc8
    db 0x58, 0x03, 0xc1, 0x8b, 0xd8, 0x80, 0xbf, 0x3a, 0x5c, 0x00, 0x76, 0x0d, 0xc7, 0x46, 0x8a, 0x08
    db 0x00, 0xc7, 0x06, 0xde, 0x90, 0x05, 0x00, 0xeb, 0x06, 0xc7, 0x86, 0x5c, 0xff, 0x01, 0x00, 0xb8
    db 0x36, 0x91, 0x50, 0xb8, 0x1f, 0x0d, 0x50, 0xe8, 0x38, 0x39, 0x83, 0xc4, 0x04, 0xeb, 0x48

@..local.l320:
    mov cx, 0x11                     ; 0x7c08
    call string_loc_a508             ; 0x7c0b
    add byte [bx + si], al           ; 0x7c0e
    adc al, byte [bx + si]           ; 0x7c10
    adc ax, 0x1600                   ; 0x7c12
    add byte [bx], dl                ; 0x7c15
    add byte [bx + si], ah           ; 0x7c17
    add byte [bp + si], ah           ; 0x7c19
    db 0x00, 0x53, 0x00 ; add byte [bp + di], dl
    db 0x64, 0x00, 0x65, 0x00 ; add byte [fs:di], ah
    db 0x66, 0x00, 0x67, 0x00 ; add byte [bx], ah
    push 0x6e00                      ; 0x7c26
    db 0x00, 0x70, 0x00 ; add byte [bx + si], dh
    jb short @..local.l321           ; 0x7c2c
@..local.l321:
    or bl, 0x88                      ; 0x7c2e
    retf                             ; 0x7c31
    nop                              ; 0x7c32
    retf                             ; 0x7c33
    cbw                              ; 0x7c34
    retf                             ; 0x7c35
    test al, 0xcb                    ; 0x7c36
    mov ax, 0xc0cb                   ; 0x7c38
    retf                             ; 0x7c3b
    mov al, byte [data_b0cb]         ; 0x7c3c
    retf                             ; 0x7c3f
    mov ax, data_b0cb                ; 0x7c40
    retf                             ; 0x7c43
    mov ax, 0xd0cb                   ; 0x7c44
    retf                             ; 0x7c47
    ror bl, 1                        ; 0x7c48
    enter 0x10cb, 0xffcc             ; 0x7c4a
    xchg di, ax                      ; 0x7c4e
    int3                             ; 0x7c4f
@..local.l322:
    jmp near @..local.l331           ; 0x7c50
@..local.l323:
    mov ax, word [data_8464]         ; 0x7c53
    shl ax, 1                        ; 0x7c56
    mov bx, ax                       ; 0x7c58
    mov bx, word [bx - 0x7b70]       ; 0x7c5a
    mov si, word [bp + 0x6]          ; 0x7c5e
    cmp byte [bx + si + 0x86], 3     ; 0x7c61
    jbe short @..local.l324          ; 0x7c66
    jmp near @..local.l330           ; 0x7c68
@..local.l324:
    mov ax, data_9136                ; 0x7c6b
    push ax                          ; 0x7c6e
    mov ax, word [bp + 0x8]          ; 0x7c6f
    add ax, 0xd16                    ; 0x7c72
    push ax                          ; 0x7c75
    call ds_dispatch_b53b            ; 0x7c76
    add sp, byte 4                   ; 0x7c79
    mov bx, word [bp + 0x4]          ; 0x7c7c
    cmp byte [bx + 0x2b], 0          ; 0x7c7f
    je short @..local.l325           ; 0x7c83
    mov ax, word [bp + 0x8]          ; 0x7c85
    cmp ax, strict word 4            ; 0x7c88
    je short @..local.l325           ; 0x7c8b
    cmp ax, strict word 8            ; 0x7c8d
    je short @..local.l325           ; 0x7c90
    mov ax, data_9136                ; 0x7c92
    push ax                          ; 0x7c95
    mov ax, 2                        ; 0x7c96
    push ax                          ; 0x7c99
    call ds_dispatch_b7a9            ; 0x7c9a
    pop cx                           ; 0x7c9d
    add ax, 0xd39                    ; 0x7c9e
    push ax                          ; 0x7ca1
    call ds_dispatch_b53b            ; 0x7ca2
    add sp, byte 4                   ; 0x7ca5
@..local.l325:
    cmp word [bp + 0x8], byte 4      ; 0x7ca8
    je short @..local.l326           ; 0x7cac
    cmp word [bp + 0x8], byte 8      ; 0x7cae
    je short @..local.l326           ; 0x7cb2
    jmp near @..local.l328           ; 0x7cb4
@..local.l326:
    mov ax, 0x12                     ; 0x7cb7
    imul word [bp + 0x6]             ; 0x7cba
    mov si, ax                       ; 0x7cbd
    mov ax, word [data_8464]         ; 0x7cbf
    shl ax, 1                        ; 0x7cc2
    mov bx, ax                       ; 0x7cc4
    mov bx, word [bx - 0x7b70]       ; 0x7cc6
    mov ax, word [bx + si + 0x44]    ; 0x7cca
    mov word [bp - 0x0070], ax       ; 0x7ccd
    mov ax, word [bx + si + 0x46]    ; 0x7cd0
    mov word [bp - 0x006e], ax       ; 0x7cd3
    mov si, word [bp + 0x6]          ; 0x7cd6
    mov al, byte [bx + si + 0x89]    ; 0x7cd9
    sub ah, ah                       ; 0x7cdd
    jmp near @..local.l327           ; 0x7cdf

    db 0xc7, 0x46, 0x8a, 0x15, 0x00, 0xe9, 0xfe, 0x01, 0xc7, 0x86, 0x6c, 0xff, 0x14, 0x07, 0xc7, 0x46
    db 0x8a, 0x0a, 0x00, 0xc7, 0x06, 0xde, 0x90, 0x0b, 0x00, 0xb8, 0x36, 0x91, 0x50, 0xb8, 0x1f, 0x0d
    db 0x50, 0xe8, 0x35, 0x38, 0x83, 0xc4, 0x04, 0xc7, 0x86, 0x54, 0xff, 0x01, 0x00, 0xe9, 0xd6, 0x01
    db 0xc7, 0x86, 0x6c, 0xff, 0x06, 0x05, 0xc7, 0x46, 0x8a, 0x08, 0x00, 0xc7, 0x06, 0xde, 0x90, 0x0b
    db 0x00, 0xb8, 0x36, 0x91, 0x50, 0xb8, 0x1f, 0x0d, 0x50, 0xe8, 0x0d, 0x38, 0x83, 0xc4, 0x04, 0xc7
    db 0x86, 0x54, 0xff, 0x01, 0x00, 0xe9, 0xae, 0x01, 0xc7, 0x46, 0x8a, 0x08, 0x00, 0xc7, 0x06, 0xde
    db 0x90, 0x05, 0x00, 0xb8, 0x36, 0x91, 0x50, 0xb8, 0x1f, 0x0d, 0x50, 0xe8, 0xeb, 0x37, 0x83, 0xc4
    db 0x04, 0xc7, 0x86, 0x5a, 0xff, 0x00, 0x00, 0xe9, 0x8c, 0x01, 0xc7, 0x46, 0x8a, 0x02, 0x00, 0xc7
    db 0x86, 0x5a, 0xff, 0x00, 0x00, 0xe9, 0x7e, 0x01, 0xc7, 0x86, 0x5a, 0xff, 0x02, 0x00, 0x83, 0xbe
    db 0x5a, 0xff, 0x01, 0x75, 0x06, 0xc7, 0x86, 0x5a, 0xff, 0x03, 0x00, 0xc7, 0x46, 0x8a, 0x0f, 0x00
    db 0xc7, 0x06, 0xde, 0x90, 0x0c, 0x00, 0xb8, 0x36, 0x91, 0x50, 0xb8, 0x1f, 0x0d, 0x50, 0xe8, 0xa8
    db 0x37, 0x83, 0xc4, 0x04, 0xc7, 0x86, 0x54, 0xff, 0x01, 0x00, 0xe9, 0x49, 0x01, 0xc7, 0x46, 0x8a
    db 0x00, 0x00, 0xe9, 0x41, 0x01, 0xc7, 0x46, 0x8a, 0x0c, 0x00, 0xe9, 0x39, 0x01, 0xc7, 0x46, 0x8a
    db 0x10, 0x00, 0xe9, 0x31, 0x01, 0xc7, 0x46, 0x8a, 0x06, 0x00, 0xe9, 0x29, 0x01, 0xc7, 0x46, 0x8a
    db 0x11, 0x00, 0xe9, 0x21, 0x01, 0xc7, 0x46, 0x8a, 0x04, 0x00, 0xc7, 0x86, 0x5a, 0xff, 0x00, 0x00
    db 0xe9, 0x13, 0x01, 0xc7, 0x86, 0x6c, 0xff, 0x43, 0x06, 0xc7, 0x46, 0x8a, 0x16, 0x00, 0xc7, 0x06
    db 0xde, 0x90, 0x0a, 0x00, 0xb8, 0x36, 0x91, 0x50, 0xb8, 0x1f, 0x0d, 0x50, 0xe8, 0x4a, 0x37, 0x83
    db 0xc4, 0x04, 0xc7, 0x86, 0x54, 0xff, 0x01, 0x00, 0xe9, 0xeb, 0x00, 0xc7, 0x86, 0x6c, 0xff, 0x02
    db 0x07, 0xc7, 0x46, 0x8a, 0x0c, 0x00, 0xc7, 0x06, 0xde, 0x90, 0x0c, 0x00, 0xb8, 0x36, 0x91, 0x50
    db 0xb8, 0x1f, 0x0d, 0x50, 0xe8, 0x22, 0x37, 0x83, 0xc4, 0x04, 0xc7, 0x86, 0x54, 0xff, 0x01, 0x00
    db 0xe9, 0xc3, 0x00, 0xc7, 0x86, 0x56, 0xff, 0xa4, 0x00, 0xc7, 0x86, 0x6c, 0xff, 0x41, 0x06, 0xc7
    db 0x46, 0x8a, 0x0e, 0x00, 0xb8, 0x39, 0x00, 0x50, 0xe8, 0x6d, 0x59, 0x59, 0xc7, 0x86, 0x58, 0xff
    db 0x2c, 0x00, 0xc7, 0x06, 0xde, 0x90, 0x10, 0x00, 0xb8, 0x36, 0x91, 0x50, 0xb8, 0x3c, 0x0d, 0x50
    db 0xe8, 0xe6, 0x36, 0x83, 0xc4, 0x04, 0xc7, 0x86, 0x54, 0xff, 0x01, 0x00, 0xe9, 0x87, 0x00, 0x2f
    db 0xcf, 0x29, 0xcd, 0x29, 0xcd, 0x2f, 0xcf, 0x2f, 0xcf, 0x2f, 0xcf, 0x2f, 0xcf, 0x81, 0xcd, 0x2f
    db 0xcf, 0xa3, 0xcd, 0x2f, 0xcf, 0x2f, 0xcf, 0x2f, 0xcf, 0xc4, 0xcd, 0xc4, 0xcd, 0xc4, 0xcd, 0xe6
    db 0xcd, 0x2f, 0xcf, 0x2f, 0xcf, 0x2f, 0xcf, 0x2f, 0xcf, 0x2f, 0xcf, 0x2f, 0xcf, 0xee, 0xcd, 0x2f
    db 0xcf, 0x81, 0xcd, 0x2f, 0xcf, 0xe6, 0xcd, 0x2f, 0xcf, 0x2f, 0xcf, 0xf6, 0xcd, 0xfe, 0xcd, 0xa3
    db 0xcd, 0xc4, 0xcd, 0xe6, 0xcd, 0x2f, 0xcf, 0x06, 0xce, 0x0e, 0xce, 0x2f, 0xcf, 0x2f, 0xcf, 0x2f
    db 0xcf, 0x2f, 0xcf, 0x2f, 0xcf, 0xc4, 0xcd, 0x2f, 0xcf, 0x2f, 0xcf, 0x2f, 0xcf, 0xf6, 0xcd, 0x2f
    db 0xcf, 0x31, 0xcd, 0x59, 0xcd, 0x2f, 0xcf, 0x1c, 0xce, 0xb1, 0xcd, 0xb7, 0xcd, 0x2f, 0xcf, 0x44
    db 0xce, 0x2f, 0xcf, 0x2f, 0xcf, 0xc4, 0xcd, 0x6c, 0xce

@..local.l327:
    cmp ax, strict word 0x3d         ; 0x7edb
    jae short @..local.l328          ; 0x7ede
    xchg bx, ax                      ; 0x7ee0
    shl bx, 1                        ; 0x7ee1
    jmp [cs:bx - 0x3158]             ; 0x7ee3
@..local.l328:
    mov ax, word [data_8464]         ; 0x7ee8
    shl ax, 1                        ; 0x7eeb
    mov bx, ax                       ; 0x7eed
    mov bx, word [bx - 0x7b70]       ; 0x7eef
    mov si, word [bp + 0x6]          ; 0x7ef3
    cmp byte [bx + si + 0x89], 0     ; 0x7ef6
    jbe short @..local.l329          ; 0x7efb
    mov ax, data_9186                ; 0x7efd
    push ax                          ; 0x7f00
    mov al, byte [bx + si + 0x89]    ; 0x7f01
    sub ah, ah                       ; 0x7f05
    add ax, 0xed7                    ; 0x7f07
    push ax                          ; 0x7f0a
    call ds_dispatch_b53b            ; 0x7f0b
    add sp, byte 4                   ; 0x7f0e
@..local.l329:
    jmp short @..local.l331          ; 0x7f11
@..local.l330:
    mov ax, data_9136                ; 0x7f13
    push ax                          ; 0x7f16
    mov ax, word [data_8464]         ; 0x7f17
    shl ax, 1                        ; 0x7f1a
    mov bx, ax                       ; 0x7f1c
    mov bx, word [bx - 0x7b70]       ; 0x7f1e
    mov si, word [bp + 0x6]          ; 0x7f22
    mov al, byte [bx + si + 0x86]    ; 0x7f25
    sub ah, ah                       ; 0x7f29
    add ax, 0xd2b                    ; 0x7f2b
    push ax                          ; 0x7f2e
    call ds_dispatch_b53b            ; 0x7f2f
    add sp, byte 4                   ; 0x7f32
@..local.l331:
    cmp word [bp - 0x00a6], byte 0   ; 0x7f35
    jle short @..local.l332          ; 0x7f3a
    mov ax, 0x2c                     ; 0x7f3c
    imul word [data_8462]            ; 0x7f3f
    mov si, ax                       ; 0x7f43
    mov ax, word [data_8464]         ; 0x7f45
    shl ax, 1                        ; 0x7f48
    mov bx, ax                       ; 0x7f4a
    mov bx, word [bx - 0x7b7e]       ; 0x7f4c
    cmp byte [bx + si + 0x2a], 0xff  ; 0x7f50
    je short @..local.l332           ; 0x7f54
    mov al, byte [bx + si + 0x2a]    ; 0x7f56
    cbw                              ; 0x7f59
    mov cx, 0xa                      ; 0x7f5a
    cwd                              ; 0x7f5d
    idiv cx                          ; 0x7f5e
    mov word [bp - 0x0078], ax       ; 0x7f60
    mov al, byte [bx + si + 0x2a]    ; 0x7f63
    cbw                              ; 0x7f66
    cwd                              ; 0x7f67
    idiv cx                          ; 0x7f68
    mov word [bp - 0x007a], dx       ; 0x7f6a
    push word [bp - 0x00a6]          ; 0x7f6d
    push dx                          ; 0x7f71
    push word [bp - 0x0078]          ; 0x7f72
    push word [data_8464]            ; 0x7f75
    call api_idx_000a                ; 0x7f79
    add sp, byte 8                   ; 0x7f7c
    mov ax, 5                        ; 0x7f7f
    push ax                          ; 0x7f82
    call api_idx_0004_5              ; 0x7f83
    pop cx                           ; 0x7f86
@..local.l332:
    push word [bp - 0x00aa]          ; 0x7f87
    push word [bp - 0x00aa]          ; 0x7f8b
    mov ax, 0x43                     ; 0x7f8f
    cmp word [data_8464], byte 0     ; 0x7f92
    jne short @..local.l333          ; 0x7f97
    mov ax, 1                        ; 0x7f99
@..local.l333:
    push ax                          ; 0x7f9c
    mov ax, data_9186                ; 0x7f9d
    push ax                          ; 0x7fa0
    mov ax, data_9136                ; 0x7fa1
    push ax                          ; 0x7fa4
    mov ax, 0x90e6                   ; 0x7fa5
    push ax                          ; 0x7fa8
    mov ax, 0                        ; 0x7fa9
    push ax                          ; 0x7fac
    call api_idx_0004_4              ; 0x7fad
    add sp, byte 0x0e                ; 0x7fb0
    cmp word [bp - 0x0094], byte 0xff ; 0x7fb3
    jne short @..local.l335          ; 0x7fb8
    cmp word [bp - 0x00a4], byte 0   ; 0x7fba
    jne short @..local.l335          ; 0x7fbf
    push word [bp - 0x0050]          ; 0x7fc1
    push word [bp - 0x004e]          ; 0x7fc4
    mov ax, 0x90e6                   ; 0x7fc7
    push ax                          ; 0x7fca
    call math_loc_15ab               ; 0x7fcb
    add sp, byte 6                   ; 0x7fce
    mov ax, 2                        ; 0x7fd1
    push ax                          ; 0x7fd4
    mov ax, 0x43                     ; 0x7fd5
    cmp word [bp - 0x004e], byte 0   ; 0x7fd8
    jne short @..local.l334          ; 0x7fdc
    mov ax, 1                        ; 0x7fde
@..local.l334:
    push ax                          ; 0x7fe1
    mov ax, 0x90e6                   ; 0x7fe2
    push ax                          ; 0x7fe5
    call api_idx_0002_2              ; 0x7fe6
    add sp, byte 6                   ; 0x7fe9
@..local.l335:
    cmp word [bp - 0x0076], byte 0xff ; 0x7fec
    je short @..local.l339           ; 0x7ff0
    mov word [data_91d8], 0          ; 0x7ff2
    push word [data_90de]            ; 0x7ff8
    mov ax, word [bp - 0x0094]       ; 0x7ffc
    mov cx, 0x100                    ; 0x8000
    cwd                              ; 0x8003
    idiv cx                          ; 0x8004
    mov ax, dx                       ; 0x8006
    cmp ax, strict word 0x41         ; 0x8008
    je short @..local.l336           ; 0x800b
    mov ax, word [bp - 0x0094]       ; 0x800d
    cmp ax, strict word 0xffff       ; 0x8011
    jne short @..local.l337          ; 0x8014
@..local.l336:
    mov ax, 0                        ; 0x8016
    jmp short @..local.l338          ; 0x8019
@..local.l337:
    mov ax, 1                        ; 0x801b
@..local.l338:
    push ax                          ; 0x801e
    push word [bp - 0x0076]          ; 0x801f
    push word [bp - 0x0050]          ; 0x8022
    push word [bp - 0x004e]          ; 0x8025
    call api_idx_0004_9              ; 0x8028
    add sp, byte 0x0a                ; 0x802b
    mov word [bp - 0x009e], 0xffff   ; 0x802e
@..local.l339:
    mov ax, word [bp - 0x004e]       ; 0x8034
    shl ax, 1                        ; 0x8037
    mov bx, ax                       ; 0x8039
    mov bx, word [bx - 0x7b70]       ; 0x803b
    mov al, byte [bx + 0x8f]         ; 0x803f
    sub ah, ah                       ; 0x8043
    push ax                          ; 0x8045
    mov al, byte [bx + 0x8e]         ; 0x8046
    sub ah, ah                       ; 0x804a
    mov cx, ax                       ; 0x804c
    pop ax                           ; 0x804e
    add ax, cx                       ; 0x804f
    push ax                          ; 0x8051
    mov al, byte [bx + 0x8d]         ; 0x8052
    sub ah, ah                       ; 0x8056
    mov cx, ax                       ; 0x8058
    pop ax                           ; 0x805a
    add ax, cx                       ; 0x805b
    push ax                          ; 0x805d
    mov ax, word [data_8464]         ; 0x805e
    shl ax, 1                        ; 0x8061
    mov bx, ax                       ; 0x8063
    mov bx, word [bx - 0x7b70]       ; 0x8065
    mov al, byte [bx + 0x8f]         ; 0x8069
    sub ah, ah                       ; 0x806d
    mov cx, ax                       ; 0x806f
    mov al, byte [bx + 0x8e]         ; 0x8071
    sub ah, ah                       ; 0x8075
    mov dx, ax                       ; 0x8077
    add cx, ax                       ; 0x8079
    mov al, byte [bx + 0x8d]         ; 0x807b
    sub ah, ah                       ; 0x807f
    mov dx, ax                       ; 0x8081
    add cx, ax                       ; 0x8083
    pop ax                           ; 0x8085
    sub ax, cx                       ; 0x8086
    mov cx, 2                        ; 0x8088
    cwd                              ; 0x808b
    idiv cx                          ; 0x808c
    mov word [bp - 0x0054], ax       ; 0x808e
    mov bx, word [bp + 0x4]          ; 0x8091
    mov al, byte [bx + 0x28]         ; 0x8094
    cbw                              ; 0x8097
    mov word [bp - 0x007e], ax       ; 0x8098
    cmp word [data_8464], byte 0     ; 0x809b
    je short @..local.l340           ; 0x80a0
    jmp near @..local.l366           ; 0x80a2
@..local.l340:
    cmp word [bp + 0x8], byte 4      ; 0x80a5
    jne short @..local.l341          ; 0x80a9
    mov word [bp - 0x007c], 5        ; 0x80ab
    jmp near @..local.l348           ; 0x80b0
@..local.l341:
    mov ax, 0x248                    ; 0x80b3
    imul word [data_8462]            ; 0x80b6
    add ax, word [bp + 0x6]          ; 0x80ba
    mov bx, ax                       ; 0x80bd
    mov al, byte [bx + 0x5d48]       ; 0x80bf
    sub ah, ah                       ; 0x80c3
    cmp ax, 0xff                     ; 0x80c5
    jne short @..local.l342          ; 0x80c8
    jmp near @..local.l347           ; 0x80ca
@..local.l342:
    mov ax, 0x248                    ; 0x80cd
    imul word [data_8462]            ; 0x80d0
    push ax                          ; 0x80d4
    mov al, byte [bx + 0x5d48]       ; 0x80d5
    sub ah, ah                       ; 0x80d9
    mov cx, 0xc                      ; 0x80db
    imul cx                          ; 0x80de
    mov cx, ax                       ; 0x80e0
    pop ax                           ; 0x80e2
    add ax, cx                       ; 0x80e3
    mov bx, ax                       ; 0x80e5
    mov al, byte [bx + 0x5c39]       ; 0x80e7
    sub ah, ah                       ; 0x80eb
    jmp short @..local.l343          ; 0x80ed

    db 0xc7, 0x46, 0x84, 0x00, 0x00, 0xe9, 0xf4, 0x00, 0xc7, 0x46, 0x84, 0x01, 0x00, 0xe9, 0xec, 0x00
    db 0xc7, 0x46, 0x84, 0x02, 0x00, 0xe9, 0xe4, 0x00, 0xc7, 0x46, 0x84, 0x03, 0x00, 0xe9, 0xdc, 0x00
    db 0xc7, 0x46, 0x84, 0x04, 0x00, 0xe9, 0xd4, 0x00, 0xc7, 0x46, 0x84, 0x07, 0x00, 0xe9, 0xcc, 0x00
    db 0xc7, 0x46, 0x84, 0x06, 0x00, 0xe9, 0xc4, 0x00, 0xc7, 0x46, 0x84, 0x08, 0x00, 0xe9, 0xbc, 0x00
    db 0xc7, 0x46, 0x84, 0x12, 0x00, 0xe9, 0xb4, 0x00, 0xc7, 0x46, 0x84, 0x09, 0x00, 0xe9, 0xac, 0x00

@..local.l343:
    mov cx, 0x2a                     ; 0x813f
    call string_loc_a508             ; 0x8142
    add byte [bx + si], al           ; 0x8145
    add word [bx + si], ax           ; 0x8147
    add al, byte [bx + si]           ; 0x8149
    add ax, word [bx + si]           ; 0x814b
    add al, 0                        ; 0x814d
    add ax, 0x600                    ; 0x814f
    add byte [bx], al                ; 0x8152
    add byte [bx + si], cl           ; 0x8154
    add byte [bx + di], cl           ; 0x8156
    add byte [bp + si], cl           ; 0x8158
    add byte [bp + di], cl           ; 0x815a
    add byte [si], cl                ; 0x815c
    add byte [di], cl                ; 0x815e
    add byte [data_0f00], cl         ; 0x8160
    add byte [bx + si], dl           ; 0x8164
    add byte [bx + di], dl           ; 0x8166
    add byte [bp + si], dl           ; 0x8168
    add byte [bp + di], dl           ; 0x816a
    add byte [si], dl                ; 0x816c
    add byte [bx + si], bl           ; 0x816e
    add byte [di], ah                ; 0x8170
    add byte [data_3300], ah         ; 0x8172
    add byte [si], dh                ; 0x8176
    add byte [di], dh                ; 0x8178
    add byte [data_3700], dh         ; 0x817a
    add byte [bx + si], bh           ; 0x817e
    add byte [bx + di], bh           ; 0x8180
    add byte [bp + si], bh           ; 0x8182
    add byte [bp + di], bh           ; 0x8184
    db 0x00, 0x58, 0x00 ; add byte [bx + si], bl
    pop dx                           ; 0x8189
    db 0x00, 0x68, 0x00 ; add byte [bx + si], ch
    imul ax, word [bx + si], 0x6a    ; 0x818d
    insb                             ; 0x8191
    add byte [bp], ch                ; 0x8192
    jb short @..local.l344           ; 0x8195
@..local.l344:
    sar word [ss:data_46d1], 1       ; 0x8197
    rol word [bp - 0x002f], 1        ; 0x819c
    dec si                           ; 0x819f
    ror word [bp - 0x002f], 1        ; 0x81a0
    dec si                           ; 0x81a3
    rcl word [bp - 0x002f], 1        ; 0x81a4
    push si                          ; 0x81a7
    rcl word [bp - 0x002f], 1        ; 0x81a8
    push si                          ; 0x81ab
    rcr word [bp - 0x002f], 1        ; 0x81ac
    pop si                           ; 0x81af
    shl word [bp - 0x002f], 1        ; 0x81b0
    sar word [ds:data_3ed1], 1       ; 0x81b3
    db 0xd1, 0x56
@..local.l345:
    db 0xd1, 0x36
@..local.l346:
    db 0xd1, 0x56, 0xd1
    inc si                           ; 0x81bf
    shr word [bp - 0x002f], 1        ; 0x81c0
    pop si                           ; 0x81c3
    shr word [bp - 0x002f], 1        ; 0x81c4
    ror word [ds:bp - 0x002f], 1     ; 0x81c7
    ror word [ds:bp - 0x002f], 1     ; 0x81cb
    ror word [ds:bp - 0x002f], 1     ; 0x81cf
    push si                          ; 0x81d3
    sar word [data_3ed1], 1          ; 0x81d4
    db 0xd1, 0x36, 0xd1, 0x56 ; sal word [data_56d1], 1
    db 0xd1, 0x76, 0xd1 ; sal word [bp - 0x002f], 1
    push si                          ; 0x81df
    rcl word [bp - 0x002f], 1        ; 0x81e0
    db 0x3e, 0xd1, 0x76, 0xd1 ; sal word [ds:bp - 0x002f], 1
    jbe short @..local.l345          ; 0x81e7
    jle short @..local.l346          ; 0x81e9
    jmp short @..local.l348          ; 0x81eb
@..local.l347:
    mov word [bp - 0x007c], 9        ; 0x81ed
@..local.l348:
    cmp word [bp - 0x007c], byte 9   ; 0x81f2
    jne short @..local.l349          ; 0x81f6
    mov ax, 0x248                    ; 0x81f8
    imul word [data_8462]            ; 0x81fb
    mov bx, ax                       ; 0x81ff
    cmp byte [bx + 0x5d75], 0        ; 0x8201
    ja short @..local.l349           ; 0x8206
    cmp byte [bx + 0x5e2d], 0xc      ; 0x8208
    je short @..local.l349           ; 0x820d
    cmp byte [bx + 0x5e2d], 0xd      ; 0x820f
    jne short @..local.l351          ; 0x8214
@..local.l349:
    cmp word [bp - 0x007c], byte 0x12 ; 0x8216
    jne short @..local.l350          ; 0x821a
    mov ax, 0x248                    ; 0x821c
    imul word [data_8462]            ; 0x821f
    mov bx, ax                       ; 0x8223
    cmp byte [bx + 0x5d7e], 0        ; 0x8225
    jbe short @..local.l351          ; 0x822a
@..local.l350:
    mov ax, 2                        ; 0x822c
    push ax                          ; 0x822f
    push word [bp - 0x007c]          ; 0x8230
    push word [data_8462]            ; 0x8233
    call math_loc_1bf4               ; 0x8237
    add sp, byte 6                   ; 0x823a
@..local.l351:
    push word [data_8462]            ; 0x823d
    call api_idx_0012                ; 0x8241
    pop cx                           ; 0x8244
    mov si, ax                       ; 0x8245
    lea di, word [bp - 0x008e]       ; 0x8247
    mov cx, ds                       ; 0x824b
    mov es, cx                       ; 0x824d
    mov cx, 7                        ; 0x824f
    rep movsw                        ; 0x8252
    mov ax, word [bp - 0x008a]       ; 0x8254
    cmp word [bp + 0x6], byte 0      ; 0x8258
    jne short @..local.l352          ; 0x825c
    mov ax, word [bp - 0x008c]       ; 0x825e
@..local.l352:
    mov word [bp - 0x0090], ax       ; 0x8262
    mov bx, word [bp + 0x4]          ; 0x8266
    push word [bx + 0x8]             ; 0x8269
    push word [bx + 0x6]             ; 0x826c
    mov ax, 0                        ; 0x826f
    push ax                          ; 0x8272
    call api_idx_0004                ; 0x8273
    add sp, byte 6                   ; 0x8276
    push ax                          ; 0x8279
    mov ax, 0x248                    ; 0x827a
    imul word [data_8462]            ; 0x827d
    push ax                          ; 0x8281
    mov ax, 0x12                     ; 0x8282
    imul word [bp + 0x6]             ; 0x8285
    mov cx, ax                       ; 0x8288
    pop ax                           ; 0x828a
    add ax, cx                       ; 0x828b
    mov bx, ax                       ; 0x828d
    mov al, byte [bx + 0x5d32]       ; 0x828f
    cbw                              ; 0x8293
    mov cx, ax                       ; 0x8294
    pop ax                           ; 0x8296
    add ax, cx                       ; 0x8297
    push ax                          ; 0x8299
    mov ax, 0x248                    ; 0x829a
    imul word [data_8462]            ; 0x829d
    mov bx, ax                       ; 0x82a1
    mov al, byte [bx + 0x5e3a]       ; 0x82a3
    cbw                              ; 0x82a7
    mov cx, ax                       ; 0x82a8
    pop ax                           ; 0x82aa
    add ax, cx                       ; 0x82ab
    push ax                          ; 0x82ad
    mov bx, word [bp + 0x4]          ; 0x82ae
    mov al, byte [bx + 0x27]         ; 0x82b1
    cbw                              ; 0x82b4
    mov cx, 5                        ; 0x82b5
    imul cx                          ; 0x82b8
    mov cx, ax                       ; 0x82ba
    pop ax                           ; 0x82bc
    add ax, cx                       ; 0x82bd
    add ax, word [bp - 0x0054]       ; 0x82bf
    mov cx, ax                       ; 0x82c2
    mov ax, word [bp - 0x0090]       ; 0x82c4
    add cx, ax                       ; 0x82c8
    mov ax, cx                       ; 0x82ca
    push ax                          ; 0x82cc
    mov ax, 0x248                    ; 0x82cd
    imul word [data_8462]            ; 0x82d0
    add ax, word [bp - 0x007c]       ; 0x82d4
    mov bx, ax                       ; 0x82d7
    mov al, byte [bx + 0x5d6c]       ; 0x82d9
    sub ah, ah                       ; 0x82dd
    mov cx, 3                        ; 0x82df
    cwd                              ; 0x82e2
    idiv cx                          ; 0x82e3
    mov cx, ax                       ; 0x82e5
    pop ax                           ; 0x82e7
    sub ax, cx                       ; 0x82e8
    mov word [bp - 0x0056], ax       ; 0x82ea
    cmp word [bp - 0x007c], byte 0x12 ; 0x82ed
    jne short @..local.l353          ; 0x82f1
    mov ax, 0x248                    ; 0x82f3
    imul word [data_8462]            ; 0x82f6
    push ax                          ; 0x82fa
    mov ax, 0x12                     ; 0x82fb
    imul word [bp + 0x6]             ; 0x82fe
    mov cx, ax                       ; 0x8301
    pop ax                           ; 0x8303
    add ax, cx                       ; 0x8304
    mov bx, ax                       ; 0x8306
    mov al, byte [bx + 0x5d32]       ; 0x8308
    cbw                              ; 0x830c
    push ax                          ; 0x830d
    mov bx, word [bp + 0x4]          ; 0x830e
    mov al, byte [bx + 0x27]         ; 0x8311
    cbw                              ; 0x8314
    mov cx, 5                        ; 0x8315
    imul cx                          ; 0x8318
    mov cx, ax                       ; 0x831a
    pop ax                           ; 0x831c
    add ax, cx                       ; 0x831d
    add ax, word [bp - 0x0054]       ; 0x831f
    add ax, strict word 0x55         ; 0x8322
    push ax                          ; 0x8325
    mov ax, 0x248                    ; 0x8326
    imul word [data_8462]            ; 0x8329
    mov bx, ax                       ; 0x832d
    mov al, byte [bx + 0x5d7e]       ; 0x832f
    sub ah, ah                       ; 0x8333
    mov cx, 2                        ; 0x8335
    cwd                              ; 0x8338
    idiv cx                          ; 0x8339
    mov cx, ax                       ; 0x833b
    pop ax                           ; 0x833d
    sub ax, cx                       ; 0x833e
    mov word [bp - 0x0056], ax       ; 0x8340
@..local.l353:
    mov ax, 0x248                    ; 0x8343
    imul word [data_8462]            ; 0x8346
    push ax                          ; 0x834a
    mov ax, 0x12                     ; 0x834b
    imul word [bp + 0x6]             ; 0x834e
    mov cx, ax                       ; 0x8351
    pop ax                           ; 0x8353
    add ax, cx                       ; 0x8354
    mov bx, ax                       ; 0x8356
    mov ax, word [bx + 0x5d24]       ; 0x8358
    mov word [bp - 0x0070], ax       ; 0x835c
    mov ax, word [bx + 0x5d26]       ; 0x835f
    mov word [bp - 0x006e], ax       ; 0x8363
    add bx, strict word 0x5d24       ; 0x8366
    mov word [bp - 0x0052], bx       ; 0x836a
    mov ax, 0x248                    ; 0x836d
    imul word [data_8462]            ; 0x8370
    add ax, word [bp + 0x6]          ; 0x8374
    mov bx, ax                       ; 0x8377
    mov al, byte [bx + 0x5d48]       ; 0x8379
    sub ah, ah                       ; 0x837d
    mov word [bp - 0x0072], ax       ; 0x837f
    cmp word [bp + 0x8], byte 8      ; 0x8382
    je short @..local.l354           ; 0x8386
    jmp near @..local.l361           ; 0x8388
@..local.l354:
    mov word [bp - 0x007e], 0        ; 0x838b
    mov ax, 0x248                    ; 0x8390
    imul word [data_8462]            ; 0x8393
    push ax                          ; 0x8397
    mov ax, 0xc                      ; 0x8398
    imul word [bp - 0x0072]          ; 0x839b
    mov cx, ax                       ; 0x839e
    pop ax                           ; 0x83a0
    add ax, cx                       ; 0x83a1
    mov bx, ax                       ; 0x83a3
    mov al, byte [bx + 0x5c3b]       ; 0x83a5
    sub ah, ah                       ; 0x83a9
    test ax, 0x20                    ; 0x83ab
    jne short @..local.l355          ; 0x83ae
    jmp near @..local.l359           ; 0x83b0
@..local.l355:
    cmp byte [bx + 0x5c3a], 0        ; 0x83b3
    jne short @..local.l356          ; 0x83b8
    mov ax, word [data_9058]         ; 0x83ba
    mov cx, 2                        ; 0x83bd
    cwd                              ; 0x83c0
    idiv cx                          ; 0x83c1
    push ax                          ; 0x83c3
    call api_idx_0004_5              ; 0x83c4
    pop cx                           ; 0x83c7
    mov ax, 2                        ; 0x83c8
    push ax                          ; 0x83cb
    mov ax, 0x55                     ; 0x83cc
    push ax                          ; 0x83cf
    mov ax, 0xc93                    ; 0x83d0
    push ax                          ; 0x83d3
    call api_idx_0050                ; 0x83d4
    add sp, byte 6                   ; 0x83d7
    mov ax, word [data_9058]         ; 0x83da
    mov cx, 2                        ; 0x83dd
    cwd                              ; 0x83e0
    idiv cx                          ; 0x83e1
    push ax                          ; 0x83e3
    call api_idx_0004_5              ; 0x83e4
    pop cx                           ; 0x83e7
    ret                              ; 0x83e8
@..local.l356:
    mov ax, 0x248                    ; 0x83e9
    imul word [data_8462]            ; 0x83ec
    push ax                          ; 0x83f0
    mov ax, 0xc                      ; 0x83f1
    imul word [bp - 0x0072]          ; 0x83f4
    mov cx, ax                       ; 0x83f7
    pop ax                           ; 0x83f9
    add ax, cx                       ; 0x83fa
    mov bx, ax                       ; 0x83fc
    mov al, byte [bx + 0x5c3a]       ; 0x83fe
    sub ah, ah                       ; 0x8402
    cmp ax, 0xff                     ; 0x8404
    je short @..local.l357           ; 0x8407
    dec byte [bx + 0x5c3a]           ; 0x8409
@..local.l357:
    mov bx, word [bp - 0x0052]       ; 0x840d
    cmp byte [bx + 0x11], 0x16       ; 0x8410
    jne short @..local.l358          ; 0x8414
    mov ax, word [bp - 0x004e]       ; 0x8416
    shl ax, 1                        ; 0x8419
    mov bx, ax                       ; 0x841b
    mov bx, word [bx - 0x7b70]       ; 0x841d
    cmp byte [bx + 0xd6], 0x16       ; 0x8421
    jne short @..local.l358          ; 0x8426
    mov word [bp - 0x00a2], 1        ; 0x8428
    mov ax, 4                        ; 0x842e
    push ax                          ; 0x8431
    push ax                          ; 0x8432
    push ax                          ; 0x8433
    call ds_dispatch_d0ea            ; 0x8434
    add sp, byte 6                   ; 0x8437
    mov bx, ax                       ; 0x843a
    mov ax, word [bx]                ; 0x843c
    mov word [bp - 0x0070], ax       ; 0x843e
    mov ax, word [bx + 0x2]          ; 0x8441
    mov word [bp - 0x006e], ax       ; 0x8444
@..local.l358:
    jmp short @..local.l360          ; 0x8447
@..local.l359:
    mov ax, 0x248                    ; 0x8449
    imul word [data_8462]            ; 0x844c
    mov bx, ax                       ; 0x8450
    mov al, byte [bx + 0x5d49]       ; 0x8452
    sub ah, ah                       ; 0x8456
    mov word [bp - 0x0074], ax       ; 0x8458
    cmp ax, 0xff                     ; 0x845b
    je short @..local.l360           ; 0x845e
    mov cx, 0xc                      ; 0x8460
    imul cx                          ; 0x8463
    add bx, ax                       ; 0x8465
    cmp byte [bx + 0x5c38], 4        ; 0x8467
    jne short @..local.l360          ; 0x846c
    mov ax, 0x248                    ; 0x846e
    imul word [data_8462]            ; 0x8471
    mov bx, ax                       ; 0x8475
    mov ax, word [bx + 0x5d36]       ; 0x8477
    mov word [bp - 0x0070], ax       ; 0x847b
    mov ax, word [bx + 0x5d38]       ; 0x847e
    mov word [bp - 0x006e], ax       ; 0x8482
    add bx, strict word 0x5d36       ; 0x8485
    mov word [bp - 0x0052], bx       ; 0x8489
    mov ax, 0x248                    ; 0x848c
    imul word [data_8462]            ; 0x848f
    mov bx, ax                       ; 0x8493
    mov al, byte [bx + 0x5d44]       ; 0x8495
    cbw                              ; 0x8499
    add word [bp - 0x0056], ax       ; 0x849a
    push word [bp - 0x0074]          ; 0x849d
    mov ax, 0                        ; 0x84a0
    push ax                          ; 0x84a3
    push word [data_8462]            ; 0x84a4
    call api_idx_000e_3              ; 0x84a8
    add sp, byte 6                   ; 0x84ab
@..local.l360:
    jmp short @..local.l364          ; 0x84ae
@..local.l361:
    cmp word [bp + 0x8], byte 4      ; 0x84b0
    jne short @..local.l364          ; 0x84b4
    mov ax, 0x248                    ; 0x84b6
    imul word [data_8462]            ; 0x84b9
    push ax                          ; 0x84bd
    mov ax, 0xc                      ; 0x84be
    imul word [bp - 0x0072]          ; 0x84c1
    mov cx, ax                       ; 0x84c4
    pop ax                           ; 0x84c6
    add ax, cx                       ; 0x84c7
    mov bx, ax                       ; 0x84c9
    mov al, byte [bx + 0x5c38]       ; 0x84cb
    cmp al, api_idx_0002             ; 0x84cf
    je short @..local.l362           ; 0x84d1
    cmp al, 0xc                      ; 0x84d3
    jae short @..local.l363          ; 0x84d5
    cmp al, 2                        ; 0x84d7
    je short @..local.l363           ; 0x84d9
@..local.l362:
    mov byte [bx + 0x5c3a], 1        ; 0x84db
@..local.l363:
    mov word [bp - 0x007e], 0        ; 0x84e0
    push word [bp - 0x0072]          ; 0x84e5
    mov ax, 0                        ; 0x84e8
    push ax                          ; 0x84eb
    push word [data_8462]            ; 0x84ec
    call api_idx_000e_3              ; 0x84f0
    add sp, byte 6                   ; 0x84f3
@..local.l364:
    mov ax, 0x2c                     ; 0x84f6
    imul word [bp - 0x0050]          ; 0x84f9
    mov si, ax                       ; 0x84fc
    mov ax, word [bp - 0x004e]       ; 0x84fe
    shl ax, 1                        ; 0x8501
    mov bx, ax                       ; 0x8503
    mov bx, word [bx - 0x7b7e]       ; 0x8505
    push word [bx + si + 0x8]        ; 0x8509
    push word [bx + si + 0x6]        ; 0x850c
    mov ax, 1                        ; 0x850f
    push ax                          ; 0x8512
    call api_idx_0004                ; 0x8513
    add sp, byte 6                   ; 0x8516
    push ax                          ; 0x8519
    mov ax, 0x2c                     ; 0x851a
    imul word [bp - 0x0050]          ; 0x851d
    mov si, ax                       ; 0x8520
    mov ax, word [bp - 0x004e]       ; 0x8522
    shl ax, 1                        ; 0x8525
    mov bx, ax                       ; 0x8527
    mov bx, word [bx - 0x7b7e]       ; 0x8529
    mov al, byte [bx + si + 0x26]    ; 0x852d
    cbw                              ; 0x8530
    mov cx, ax                       ; 0x8531
    pop ax                           ; 0x8533
    add ax, cx                       ; 0x8534
    mov word [bp - 0x0058], ax       ; 0x8536
    cmp word [data_82f2], byte 0     ; 0x8539
    jle short @..local.l365          ; 0x853e
    mov ax, word [data_82f4]         ; 0x8540
    add word [bp - 0x0058], ax       ; 0x8543
@..local.l365:
    mov ax, word [bp - 0x004e]       ; 0x8546
    shl ax, 1                        ; 0x8549
    mov bx, ax                       ; 0x854b
    mov bx, word [bx - 0x7b70]       ; 0x854d
    mov al, byte [bx + 0xc4]         ; 0x8551
    cbw                              ; 0x8555
    add ax, word [bp - 0x0058]       ; 0x8556
    mov word [bp - 0x005a], ax       ; 0x8559
    mov si, word [bp + 0x8]          ; 0x855c
    mov al, byte [bx + si + 0xcc]    ; 0x855f
    cbw                              ; 0x8563
    add ax, word [bp - 0x0058]       ; 0x8564
    mov word [bp - 0x005c], ax       ; 0x8567
    jmp near @..local.l372           ; 0x856a
@..local.l366:
    mov bx, word [bp + 0x4]          ; 0x856d
    push word [bx + 0x8]             ; 0x8570
    push word [bx + 0x6]             ; 0x8573
    mov ax, 0                        ; 0x8576
    push ax                          ; 0x8579
    call api_idx_0004                ; 0x857a
    add sp, byte 6                   ; 0x857d
    push ax                          ; 0x8580
    mov ax, 0x12                     ; 0x8581
    imul word [bp + 0x6]             ; 0x8584
    mov si, ax                       ; 0x8587
    mov ax, word [data_8464]         ; 0x8589
    shl ax, 1                        ; 0x858c
    mov bx, ax                       ; 0x858e
    mov bx, word [bx - 0x7b70]       ; 0x8590
    mov al, byte [bx + si + 0x52]    ; 0x8594
    cbw                              ; 0x8597
    mov cx, ax                       ; 0x8598
    pop ax                           ; 0x859a
    add ax, cx                       ; 0x859b
    push ax                          ; 0x859d
    mov bx, word [bp + 0x4]          ; 0x859e
    mov al, byte [bx + 0x27]         ; 0x85a1
    cbw                              ; 0x85a4
    mov cx, 5                        ; 0x85a5
    imul cx                          ; 0x85a8
    mov cx, ax                       ; 0x85aa
    pop ax                           ; 0x85ac
    add ax, cx                       ; 0x85ad
    add ax, word [bp - 0x0054]       ; 0x85af
    mov word [bp - 0x0056], ax       ; 0x85b2
    mov ax, word [data_8464]         ; 0x85b5
    shl ax, 1                        ; 0x85b8
    mov bx, ax                       ; 0x85ba
    mov bx, word [bx - 0x7b70]       ; 0x85bc
    mov ax, word [bx + si + 0x44]    ; 0x85c0
    mov word [bp - 0x0070], ax       ; 0x85c3
    mov ax, word [bx + si + 0x46]    ; 0x85c6
    mov word [bp - 0x006e], ax       ; 0x85c9
    add bx, si                       ; 0x85cc
    add bx, byte 0x44                ; 0x85ce
    mov word [bp - 0x0052], bx       ; 0x85d1
    cmp word [bp + 0x8], byte 4      ; 0x85d4
    je short @..local.l367           ; 0x85d8
    cmp word [bp + 0x8], byte 8      ; 0x85da
    jne short @..local.l368          ; 0x85de
@..local.l367:
    mov word [bp - 0x007e], 0        ; 0x85e0
@..local.l368:
    cmp word [bp - 0x004e], byte 0   ; 0x85e5
    jne short @..local.l369          ; 0x85e9
    push word [bp - 0x0050]          ; 0x85eb
    call api_idx_0012                ; 0x85ee
    pop cx                           ; 0x85f1
    mov si, ax                       ; 0x85f2
    lea di, word [bp - 0x008e]       ; 0x85f4
    mov cx, ds                       ; 0x85f8
    mov es, cx                       ; 0x85fa
    mov cx, 7                        ; 0x85fc
    rep movsw                        ; 0x85ff
    mov ax, word [bp - 0x008e]       ; 0x8601
    mov word [bp - 0x0092], ax       ; 0x8605
    jmp short @..local.l370          ; 0x8609
@..local.l369:
    mov word [bp - 0x0092], 0        ; 0x860b
@..local.l370:
    mov ax, 0x2c                     ; 0x8611
    imul word [bp - 0x0050]          ; 0x8614
    mov si, ax                       ; 0x8617
    mov ax, word [bp - 0x004e]       ; 0x8619
    shl ax, 1                        ; 0x861c
    mov bx, ax                       ; 0x861e
    mov bx, word [bx - 0x7b7e]       ; 0x8620
    push word [bx + si + 0x8]        ; 0x8624
    push word [bx + si + 0x6]        ; 0x8627
    mov ax, 1                        ; 0x862a
    push ax                          ; 0x862d
    call api_idx_0004                ; 0x862e
    add sp, byte 6                   ; 0x8631
    push ax                          ; 0x8634
    mov ax, 0x2c                     ; 0x8635
    imul word [bp - 0x0050]          ; 0x8638
    mov si, ax                       ; 0x863b
    mov ax, word [bp - 0x004e]       ; 0x863d
    shl ax, 1                        ; 0x8640
    mov bx, ax                       ; 0x8642
    mov bx, word [bx - 0x7b7e]       ; 0x8644
    mov al, byte [bx + si + 0x26]    ; 0x8648
    cbw                              ; 0x864b
    mov cx, ax                       ; 0x864c
    pop ax                           ; 0x864e
    add ax, cx                       ; 0x864f
    mov word [bp - 0x0058], ax       ; 0x8651
    cmp word [bp - 0x004e], byte 0   ; 0x8654
    jne short @..local.l371          ; 0x8658
    cmp word [data_82f6], byte 0     ; 0x865a
    jle short @..local.l371          ; 0x865f
    mov ax, word [data_82f8]         ; 0x8661
    sub word [bp - 0x0058], ax       ; 0x8664
@..local.l371:
    mov ax, word [bp - 0x004e]       ; 0x8667
    shl ax, 1                        ; 0x866a
    mov bx, ax                       ; 0x866c
    mov bx, word [bx - 0x7b70]       ; 0x866e
    mov al, byte [bx + 0xc4]         ; 0x8672
    cbw                              ; 0x8676
    add ax, word [bp - 0x0058]       ; 0x8677
    add ax, word [bp - 0x0092]       ; 0x867a
    mov word [bp - 0x005a], ax       ; 0x867e
    mov ax, word [bp - 0x0058]       ; 0x8681
    add ax, word [bp - 0x0092]       ; 0x8684
    mov word [bp - 0x005c], ax       ; 0x8688
    cmp word [bp - 0x004e], byte 0   ; 0x868b
    je short @..local.l372           ; 0x868f
    mov si, word [bp + 0x8]          ; 0x8691
    mov al, byte [bx + si + 0xcc]    ; 0x8694
    cbw                              ; 0x8698
    add word [bp - 0x005c], ax       ; 0x8699
@..local.l372:
    mov word [bp - 0x009a], 1        ; 0x869c
    mov bx, word [bp + 0x4]          ; 0x86a2
    cmp byte [bx + 0x2b], 0          ; 0x86a5
    je short @..local.l374           ; 0x86a9
    mov ax, 0xa                      ; 0x86ab
    cmp word [bp - 0x005a], byte 0x0a ; 0x86ae
    jle short @..local.l373          ; 0x86b2
    mov ax, word [bp - 0x005a]       ; 0x86b4
@..local.l373:
    mov word [bp - 0x005a], ax       ; 0x86b7
    mov word [bp - 0x009a], 2        ; 0x86ba
@..local.l374:
    cmp byte [bx + 0x12], 0          ; 0x86c0
    jbe short @..local.l377          ; 0x86c4
    mov ax, word [bp - 0x0056]       ; 0x86c6
    push ax                          ; 0x86c9
    cmp ax, strict word 0x5a         ; 0x86ca
    pop ax                           ; 0x86cd
    jge short @..local.l375          ; 0x86ce
    mov ax, 0x5a                     ; 0x86d0
@..local.l375:
    mov word [bp - 0x0056], ax       ; 0x86d3
    mov ax, word [bp - 0x005a]       ; 0x86d6
    push ax                          ; 0x86d9
    cmp ax, strict word 0            ; 0x86da
    pop ax                           ; 0x86dd
    jle short @..local.l376          ; 0x86de
    mov ax, 0                        ; 0x86e0
@..local.l376:
    mov word [bp - 0x005a], ax       ; 0x86e3
@..local.l377:
    cmp byte [bx + 0x16], 0          ; 0x86e6
    ja short @..local.l378           ; 0x86ea
    cmp byte [bx + 0xf], 0           ; 0x86ec
    ja short @..local.l378           ; 0x86f0
    cmp byte [bx + 0x17], 0          ; 0x86f2
    jbe short @..local.l379          ; 0x86f6
@..local.l378:
    add word [bp - 0x0056], byte 0x19 ; 0x86f8
@..local.l379:
    mov ax, 0x2c                     ; 0x86fc
    imul word [bp - 0x0050]          ; 0x86ff
    mov si, ax                       ; 0x8702
    mov ax, word [bp - 0x004e]       ; 0x8704
    shl ax, 1                        ; 0x8707
    mov bx, ax                       ; 0x8709
    mov bx, word [bx - 0x7b7e]       ; 0x870b
    cmp byte [bx + si + 0x12], 0     ; 0x870f
    ja short @..local.l380           ; 0x8713
    cmp byte [bx + si + 0x10], 0     ; 0x8715
    ja short @..local.l380           ; 0x8719
    cmp byte [bx + si + 0x11], 0     ; 0x871b
    ja short @..local.l380           ; 0x871f
    cmp byte [bx + si + 0x22], 2     ; 0x8721
    jne short @..local.l381          ; 0x8725
@..local.l380:
    mov word [bp - 0x005a], 0xf      ; 0x8727
    mov word [bp - 0x009a], 2        ; 0x872c
@..local.l381:
    cmp byte [bx + si + 0x16], 0     ; 0x8732
    ja short @..local.l382           ; 0x8736
    cmp byte [bx + si + 0xf], 0      ; 0x8738
    jbe short @..local.l383          ; 0x873c
@..local.l382:
    add word [bp - 0x005a], byte 4   ; 0x873e
@..local.l383:
    mov ax, word [data_8464]         ; 0x8742
    shl ax, 1                        ; 0x8745
    mov bx, ax                       ; 0x8747
    mov bx, word [bx - 0x7b70]       ; 0x8749
    cmp byte [bx + 0x8c], 0x11       ; 0x874d
    jbe short @..local.l384          ; 0x8752
    mov ax, 2                        ; 0x8754
    jmp short @..local.l385          ; 0x8757
@..local.l384:
    mov ax, 0                        ; 0x8759
    cmp byte [bx + 0x8c], 0xf        ; 0x875c
    jbe short @..local.l385          ; 0x8761
    mov ax, 1                        ; 0x8763
@..local.l385:
    mov word [bp - 0x0080], ax       ; 0x8766
    mov ax, word [bp - 0x004e]       ; 0x8769
    shl ax, 1                        ; 0x876c
    mov bx, ax                       ; 0x876e
    mov bx, word [bx - 0x7b7e]       ; 0x8770
    mov al, byte [bx + si + 0x29]    ; 0x8774
    cbw                              ; 0x8777
    mov cx, 0xa                      ; 0x8778
    cwd                              ; 0x877b
    idiv cx                          ; 0x877c
    mov cx, ax                       ; 0x877e
    mov ax, word [data_8464]         ; 0x8780
    shl ax, 1                        ; 0x8783
    mov bx, ax                       ; 0x8785
    mov bx, word [bx - 0x7b70]       ; 0x8787
    mov al, byte [bx + 0xda]         ; 0x878b
    sub ah, ah                       ; 0x878f
    sub ax, cx                       ; 0x8791
    push ax                          ; 0x8793
    call ds_dispatch_b7a9            ; 0x8794
    pop cx                           ; 0x8797
    inc ax                           ; 0x8798
    mov word [bp - 0x0064], ax       ; 0x8799
    cmp ax, strict word 1            ; 0x879c
    jge short @..local.l386          ; 0x879f
    mov word [bp - 0x0064], 1        ; 0x87a1
@..local.l386:
    cmp word [bp - 0x0064], byte 4   ; 0x87a6
    jle short @..local.l387          ; 0x87aa
    mov word [bp - 0x0064], 4        ; 0x87ac
@..local.l387:
    mov ax, word [bp + 0x8]          ; 0x87b1
    jmp near @..local.l388           ; 0x87b4

    db 0xe9, 0x9f, 0x00, 0xff, 0x4e, 0xa6, 0xff, 0x4e, 0xa6, 0xff, 0x46, 0xa4, 0xff, 0x46, 0xa4, 0xe9
    db 0x90, 0x00, 0xff, 0x4e, 0xa4, 0x8b, 0x46, 0x80, 0x01, 0x46, 0x82, 0xe9, 0x84, 0x00, 0x83, 0x46
    db 0xa6, 0xfc, 0x83, 0x46, 0xa4, 0xfc, 0xc7, 0x86, 0x66, 0xff, 0x02, 0x00, 0xeb, 0x74, 0xc7, 0x46
    db 0x9c, 0x01, 0x00, 0xc7, 0x86, 0x66, 0xff, 0x01, 0x00, 0xff, 0x4e, 0xa6, 0xff, 0x46, 0xa4, 0xeb
    db 0x61, 0xff, 0x46, 0xa6, 0xff, 0x4e, 0xa4, 0xeb, 0x59, 0xff, 0x4e, 0xa6, 0xff, 0x4e, 0xa6, 0x8b
    db 0x46, 0x82, 0x03, 0x46, 0x80, 0x40, 0x40, 0x89, 0x46, 0x82, 0xeb, 0x46, 0xff, 0x46, 0xa6, 0xff
    db 0x46, 0xa6, 0xff, 0x4e, 0xa4, 0xff, 0x4e, 0xa4, 0xc7, 0x86, 0x66, 0xff, 0x01, 0x00, 0xeb, 0x32
    db 0xc7, 0x46, 0x9c, 0x01, 0x00, 0xc7, 0x86, 0x66, 0xff, 0x01, 0x00, 0xff, 0x46, 0xa4, 0xff, 0x46
    db 0xa4, 0xeb, 0x1f, 0xfe, 0xd7, 0x01, 0xd8, 0x10, 0xd8, 0x1c, 0xd8, 0x2c, 0xd8, 0x3f, 0xd8, 0x47
    db 0xd8, 0x5a, 0xd8, 0x6e, 0xd8

@..local.l388:
    cmp ax, strict word 9            ; 0x884c
    jae short @..local.l389          ; 0x884f
    xchg bx, ax                      ; 0x8851
    shl bx, 1                        ; 0x8852
    jmp [cs:bx - 0x277f]             ; 0x8854
@..local.l389:
    mov ax, 0x2c                     ; 0x8859
    imul word [bp - 0x0050]          ; 0x885c
    mov si, ax                       ; 0x885f
    mov ax, word [bp - 0x004e]       ; 0x8861
    shl ax, 1                        ; 0x8864
    mov bx, ax                       ; 0x8866
    mov bx, word [bx - 0x7b7e]       ; 0x8868
    cmp byte [bx + si + 0x1e], 6     ; 0x886c
    jne short @..local.l391          ; 0x8870
    mov ax, 0xa                      ; 0x8872
    cmp word [bp - 0x005a], byte 0x0a ; 0x8875
    jle short @..local.l390          ; 0x8879
    mov ax, word [bp - 0x005a]       ; 0x887b
@..local.l390:
    mov word [bp - 0x005a], ax       ; 0x887e
    mov word [bp - 0x009a], 2        ; 0x8881
@..local.l391:
    cmp byte [bx + si + 0x12], 0     ; 0x8887
    je short @..local.l392           ; 0x888b
    jmp near @..local.l419           ; 0x888d
@..local.l392:
    cmp byte [bx + si + 0x10], 0     ; 0x8890
    je short @..local.l393           ; 0x8894
    jmp near @..local.l419           ; 0x8896
@..local.l393:
    cmp byte [bx + si + 0x11], 0     ; 0x8899
    je short @..local.l394           ; 0x889d
    jmp near @..local.l419           ; 0x889f
@..local.l394:
    cmp byte [bx + si + 0x22], 0     ; 0x88a2
    je short @..local.l395           ; 0x88a6
    jmp near @..local.l419           ; 0x88a8
@..local.l395:
    cmp byte [bx + si + 0x1e], 1     ; 0x88ab
    je short @..local.l396           ; 0x88af
    jmp near @..local.l418           ; 0x88b1
@..local.l396:
    mov ax, word [bx + si + 0xa]     ; 0x88b4
    jmp near @..local.l413           ; 0x88b7
@..local.l397:
    cmp word [bp - 0x004e], byte 0   ; 0x88ba
    jne short @..local.l398          ; 0x88be
    mov ax, 0x248                    ; 0x88c0
    imul word [bp - 0x0050]          ; 0x88c3
    mov bx, ax                       ; 0x88c6
    mov al, byte [bx + 0x5d74]       ; 0x88c8
    sub ah, ah                       ; 0x88cc
    mov cx, 0xa                      ; 0x88ce
    cwd                              ; 0x88d1
    idiv cx                          ; 0x88d2
    inc ax                           ; 0x88d4
    sub word [bp - 0x005a], ax       ; 0x88d5
    mov ax, 2                        ; 0x88d8
    push ax                          ; 0x88db
    mov ax, 8                        ; 0x88dc
    push ax                          ; 0x88df
    push word [bp - 0x0050]          ; 0x88e0
    call math_loc_1bf4               ; 0x88e3
    add sp, byte 6                   ; 0x88e6
    jmp short @..local.l399          ; 0x88e9
@..local.l398:
    mov ax, 0x2c                     ; 0x88eb
    imul word [bp - 0x0050]          ; 0x88ee
    mov si, ax                       ; 0x88f1
    mov ax, word [bp - 0x004e]       ; 0x88f3
    shl ax, 1                        ; 0x88f6
    mov bx, ax                       ; 0x88f8
    mov bx, word [bx - 0x7b7e]       ; 0x88fa
    mov ax, word [bx + si]           ; 0x88fe
    mov cx, 4                        ; 0x8900
    cwd                              ; 0x8903
    idiv cx                          ; 0x8904
    inc ax                           ; 0x8906
    sub word [bp - 0x005a], ax       ; 0x8907
@..local.l399:
    mov word [bp - 0x009a], 1        ; 0x890a
    jmp near @..local.l417           ; 0x8910
@..local.l400:
    dec word [bp - 0x005a]           ; 0x8913
    dec word [bp - 0x005a]           ; 0x8916
    mov word [bp - 0x009a], 1        ; 0x8919
    jmp near @..local.l417           ; 0x891f
@..local.l401:
    cmp word [bp + 0x8], byte 4      ; 0x8922
    jne short @..local.l402          ; 0x8926
    jmp near @..local.l411           ; 0x8928
@..local.l402:
    cmp word [bp + 0x8], byte 8      ; 0x892b
    jne short @..local.l403          ; 0x892f
    jmp near @..local.l411           ; 0x8931
@..local.l403:
    mov ax, 0x2c                     ; 0x8934
    imul word [bp - 0x0050]          ; 0x8937
    mov si, ax                       ; 0x893a
    mov ax, word [bp - 0x004e]       ; 0x893c
    shl ax, 1                        ; 0x893f
    mov bx, ax                       ; 0x8941
    mov bx, word [bx - 0x7b7e]       ; 0x8943
    mov byte [bx + si + 0x1e], 0     ; 0x8947
    mov ax, 0x2c                     ; 0x894b
    imul word [bp - 0x0050]          ; 0x894e
    mov si, ax                       ; 0x8951
    mov ax, word [bp - 0x004e]       ; 0x8953
    shl ax, 1                        ; 0x8956
    mov bx, ax                       ; 0x8958
    mov bx, word [bx - 0x7b7e]       ; 0x895a
    mov byte [bx + si + 0x21], 0     ; 0x895e
    mov ax, word [data_8460]         ; 0x8962
    dec ax                           ; 0x8965
    push ax                          ; 0x8966
    mov ax, 0x2c                     ; 0x8967
    imul word [bp - 0x0050]          ; 0x896a
    mov si, ax                       ; 0x896d
    mov ax, word [bp - 0x004e]       ; 0x896f
    shl ax, 1                        ; 0x8972
    mov bx, ax                       ; 0x8974
    mov bx, word [bx - 0x7b7e]       ; 0x8976
    pop ax                           ; 0x897a
    mov byte [bx + si + 0x18], al    ; 0x897b
    mov al, byte [data_8464]         ; 0x897e
    push ax                          ; 0x8981
    mov ax, 0x2c                     ; 0x8982
    imul word [bp - 0x0050]          ; 0x8985
    mov si, ax                       ; 0x8988
    mov ax, word [bp - 0x004e]       ; 0x898a
    shl ax, 1                        ; 0x898d
    mov bx, ax                       ; 0x898f
    mov bx, word [bx - 0x7b7e]       ; 0x8991
    pop ax                           ; 0x8995
    mov byte [bx + si + 0x1f], al    ; 0x8996
    mov al, byte [data_8462]         ; 0x8999
    push ax                          ; 0x899c
    mov ax, 0x2c                     ; 0x899d
    imul word [bp - 0x0050]          ; 0x89a0
    mov si, ax                       ; 0x89a3
    mov ax, word [bp - 0x004e]       ; 0x89a5
    shl ax, 1                        ; 0x89a8
    mov bx, ax                       ; 0x89aa
    mov bx, word [bx - 0x7b7e]       ; 0x89ac
    pop ax                           ; 0x89b0
    mov byte [bx + si + 0x20], al    ; 0x89b1
    mov ax, 0x2c                     ; 0x89b4
    imul word [bp - 0x0050]          ; 0x89b7
    mov si, ax                       ; 0x89ba
    mov ax, word [bp - 0x004e]       ; 0x89bc
    shl ax, 1                        ; 0x89bf
    mov bx, ax                       ; 0x89c1
    mov bx, word [bx - 0x7b7e]       ; 0x89c3
    mov word [bx + si + 0xc], 0xffff ; 0x89c7
    mov ax, 0x2c                     ; 0x89cc
    imul word [bp - 0x0050]          ; 0x89cf
    mov si, ax                       ; 0x89d2
    mov ax, word [bp - 0x004e]       ; 0x89d4
    shl ax, 1                        ; 0x89d7
    mov bx, ax                       ; 0x89d9
    mov bx, word [bx - 0x7b7e]       ; 0x89db
    mov word [bx + si + 0xa], 0xff   ; 0x89df
    cmp word [bp - 0x004e], byte 0   ; 0x89e4
    jne short @..local.l406          ; 0x89e8
    mov word [bp - 0x0002], 7        ; 0x89ea
@..local.l404:
    push word [bp - 0x0002]          ; 0x89ef
    mov ax, 0x248                    ; 0x89f2
    imul word [bp - 0x0050]          ; 0x89f5
    add ax, 0x5d33                   ; 0x89f8
    push ax                          ; 0x89fb
    call ds_dispatch_ec74            ; 0x89fc
    add sp, byte 4                   ; 0x89ff
    cmp ax, strict word 1            ; 0x8a02
    jne short @..local.l405          ; 0x8a05
    mov ax, word [bp - 0x0002]       ; 0x8a07
    push ax                          ; 0x8a0a
    mov ax, 0x2c                     ; 0x8a0b
    imul word [bp - 0x0050]          ; 0x8a0e
    mov si, ax                       ; 0x8a11
    mov ax, word [bp - 0x004e]       ; 0x8a13
    shl ax, 1                        ; 0x8a16
    mov bx, ax                       ; 0x8a18
    mov bx, word [bx - 0x7b7e]       ; 0x8a1a
    pop ax                           ; 0x8a1e
    mov word [bx + si + 0xa], ax     ; 0x8a1f
@..local.l405:
    dec word [bp - 0x0002]           ; 0x8a22
    jge short @..local.l404          ; 0x8a25
    jmp short @..local.l409          ; 0x8a27
@..local.l406:
    mov word [bp - 0x0002], 7        ; 0x8a29
@..local.l407:
    push word [bp - 0x0002]          ; 0x8a2e
    mov ax, word [bp - 0x004e]       ; 0x8a31
    shl ax, 1                        ; 0x8a34
    mov bx, ax                       ; 0x8a36
    mov ax, word [bx - 0x7b70]       ; 0x8a38
    add ax, strict word 0x53         ; 0x8a3c
    push ax                          ; 0x8a3f
    call ds_dispatch_ec74            ; 0x8a40
    add sp, byte 4                   ; 0x8a43
    cmp ax, strict word 1            ; 0x8a46
    jne short @..local.l408          ; 0x8a49
    mov ax, word [bp - 0x0002]       ; 0x8a4b
    push ax                          ; 0x8a4e
    mov ax, 0x2c                     ; 0x8a4f
    imul word [bp - 0x0050]          ; 0x8a52
    mov si, ax                       ; 0x8a55
    mov ax, word [bp - 0x004e]       ; 0x8a57
    shl ax, 1                        ; 0x8a5a
    mov bx, ax                       ; 0x8a5c
    mov bx, word [bx - 0x7b7e]       ; 0x8a5e
    pop ax                           ; 0x8a62
    mov word [bx + si + 0xa], ax     ; 0x8a63
@..local.l408:
    dec word [bp - 0x0002]           ; 0x8a66
    jge short @..local.l407          ; 0x8a69
@..local.l409:
    mov ax, 0x2c                     ; 0x8a6b
    imul word [bp - 0x0050]          ; 0x8a6e
    mov si, ax                       ; 0x8a71
    mov ax, word [bp - 0x004e]       ; 0x8a73
    shl ax, 1                        ; 0x8a76
    mov bx, ax                       ; 0x8a78
    mov bx, word [bx - 0x7b7e]       ; 0x8a7a
    cmp word [bx + si + 0xa], strict word 0xff ; 0x8a7e
    jne short @..local.l410          ; 0x8a83
    mov word [bx + si + 0xa], 8      ; 0x8a85
    cmp word [bp - 0x004e], byte 0   ; 0x8a8a
    jne short @..local.l410          ; 0x8a8e
    mov ax, 0x2c                     ; 0x8a90
    imul word [bp - 0x0050]          ; 0x8a93
    mov si, ax                       ; 0x8a96
    mov ax, word [bp - 0x004e]       ; 0x8a98
    shl ax, 1                        ; 0x8a9b
    mov bx, ax                       ; 0x8a9d
    mov bx, word [bx - 0x7b7e]       ; 0x8a9f
    mov byte [bx + si + 0x1e], 1     ; 0x8aa3
    mov ax, 0x2c                     ; 0x8aa7
    imul word [bp - 0x0050]          ; 0x8aaa
    mov si, ax                       ; 0x8aad
    mov ax, word [bp - 0x004e]       ; 0x8aaf
    shl ax, 1                        ; 0x8ab2
    mov bx, ax                       ; 0x8ab4
    mov bx, word [bx - 0x7b7e]       ; 0x8ab6
    mov byte [bx + si + 0x21], 0     ; 0x8aba
    mov ax, 0x2c                     ; 0x8abe
    imul word [bp - 0x0050]          ; 0x8ac1
    mov si, ax                       ; 0x8ac4
    mov ax, word [bp - 0x004e]       ; 0x8ac6
    shl ax, 1                        ; 0x8ac9
    mov bx, ax                       ; 0x8acb
    mov bx, word [bx - 0x7b7e]       ; 0x8acd
    mov byte [bx + si + 0x18], 0     ; 0x8ad1
    mov ax, 0x2c                     ; 0x8ad5
    imul word [bp - 0x0050]          ; 0x8ad8
    mov si, ax                       ; 0x8adb
    mov ax, word [bp - 0x004e]       ; 0x8add
    shl ax, 1                        ; 0x8ae0
    mov bx, ax                       ; 0x8ae2
    mov bx, word [bx - 0x7b7e]       ; 0x8ae4
    mov word [bx + si + 0xa], 1      ; 0x8ae8
@..local.l410:
    mov ax, 0x2c                     ; 0x8aed
    imul word [bp - 0x0050]          ; 0x8af0
    mov si, ax                       ; 0x8af3
    mov ax, word [bp - 0x004e]       ; 0x8af5
    shl ax, 1                        ; 0x8af8
    mov bx, ax                       ; 0x8afa
    mov bx, word [bx - 0x7b7e]       ; 0x8afc
    mov byte [bx + si + 0x1c], 0     ; 0x8b00
@..local.l411:
    jmp short @..local.l417          ; 0x8b04
@..local.l412:
    mov word [bp - 0x005a], 0xf      ; 0x8b06
    jmp short @..local.l417          ; 0x8b0b
@..local.l413:
    cmp ax, strict word 0            ; 0x8b0d
    jne short @..local.l414          ; 0x8b10
    jmp near @..local.l397           ; 0x8b12
@..local.l414:
    cmp ax, strict word 1            ; 0x8b15
    jne short @..local.l415          ; 0x8b18
    jmp near @..local.l400           ; 0x8b1a
@..local.l415:
    cmp ax, strict word 2            ; 0x8b1d
    jne short @..local.l416          ; 0x8b20
    jmp near @..local.l401           ; 0x8b22
@..local.l416:
    cmp ax, strict word 3            ; 0x8b25
    je short @..local.l412           ; 0x8b28
@..local.l417:
    jmp short @..local.l419          ; 0x8b2a
@..local.l418:
    cmp word [bp - 0x004e], byte 0   ; 0x8b2c
    jne short @..local.l419          ; 0x8b30
    mov ax, 0x248                    ; 0x8b32
    imul word [bp - 0x0050]          ; 0x8b35
    mov bx, ax                       ; 0x8b38
    mov al, byte [bx + 0x5d49]       ; 0x8b3a
    sub ah, ah                       ; 0x8b3e
    cmp ax, 0xff                     ; 0x8b40
    je short @..local.l419           ; 0x8b43
    mov cx, 0xc                      ; 0x8b45
    imul cx                          ; 0x8b48
    add bx, ax                       ; 0x8b4a
    cmp byte [bx + 0x5c38], 0xb      ; 0x8b4c
    jne short @..local.l419          ; 0x8b51
    mov ax, 0                        ; 0x8b53
    push ax                          ; 0x8b56
    mov ax, 8                        ; 0x8b57
    push ax                          ; 0x8b5a
    push word [bp - 0x0050]          ; 0x8b5b
    call math_loc_1bf4               ; 0x8b5e
    add sp, byte 6                   ; 0x8b61
@..local.l419:
    cmp word [data_8464], byte 0     ; 0x8b64
    je short @..local.l420           ; 0x8b69
    cmp word [bp - 0x009e], byte 0   ; 0x8b6b
    jne short @..local.l420          ; 0x8b70
    mov bx, word [data_8492]         ; 0x8b72
    cmp byte [bx + 0xd8], 0          ; 0x8b76
    jbe short @..local.l420          ; 0x8b7b
    mov ax, word [data_8464]         ; 0x8b7d
    shl ax, 1                        ; 0x8b80
    mov bx, ax                       ; 0x8b82
    mov bx, word [bx - 0x7b70]       ; 0x8b84
    mov al, byte [bx + 0xd8]         ; 0x8b88
    mov bx, word [data_8492]         ; 0x8b8c
    cmp al, byte [bx + 0xd8]         ; 0x8b90
    jne short @..local.l420          ; 0x8b94
    mov ax, 0x10                     ; 0x8b96
    push ax                          ; 0x8b99
    call ds_dispatch_b7e0            ; 0x8b9a
    pop cx                           ; 0x8b9d
@..local.l420:
    mov ax, word [data_9058]         ; 0x8b9e
    mov cx, 2                        ; 0x8ba1
    cwd                              ; 0x8ba4
    idiv cx                          ; 0x8ba5
    push ax                          ; 0x8ba7
    call api_idx_0004_5              ; 0x8ba8
    pop cx                           ; 0x8bab
    mov ax, word [bp - 0x004e]       ; 0x8bac
    shl ax, 1                        ; 0x8baf
    mov bx, ax                       ; 0x8bb1
    mov bx, word [bx - 0x7b70]       ; 0x8bb3
    mov cl, byte [bx + 0xd6]         ; 0x8bb7
    mov bx, word [bp - 0x0052]       ; 0x8bbb
    mov al, byte [bx + 0x11]         ; 0x8bbe
    cmp al, cl                       ; 0x8bc1
    jne short @..local.l421          ; 0x8bc3
    inc word [bp - 0x009a]           ; 0x8bc5
@..local.l421:
    mov word [bp - 0x0062], 0        ; 0x8bc9
    jmp near @..local.l452           ; 0x8bce
@..local.l422:
    mov ax, 0                        ; 0x8bd1
    cmp word [data_905c], byte 0     ; 0x8bd4
    jne short @..local.l423          ; 0x8bd9
    mov ax, 0x64                     ; 0x8bdb
    push ax                          ; 0x8bde
    call ds_dispatch_b7a9            ; 0x8bdf
    pop cx                           ; 0x8be2
@..local.l423:
    mov word [bp - 0x0060], ax       ; 0x8be3
    cmp word [bp - 0x004e], byte 0   ; 0x8be6
    jne short @..local.l424          ; 0x8bea
    mov ax, word [data_8464]         ; 0x8bec
    shl ax, 1                        ; 0x8bef
    mov bx, ax                       ; 0x8bf1
    mov ax, word [bx - 0x7b70]       ; 0x8bf3
    add ax, 0xbc                     ; 0x8bf7
    push ax                          ; 0x8bfa
    call api_idx_0004_11             ; 0x8bfb
    pop cx                           ; 0x8bfe
    mov word [bp - 0x006c], ax       ; 0x8bff
    mov ax, word [bp - 0x004e]       ; 0x8c02
    shl ax, 1                        ; 0x8c05
    mov bx, ax                       ; 0x8c07
    mov bx, word [bx - 0x7b70]       ; 0x8c09
    mov si, word [bp - 0x006c]       ; 0x8c0d
    mov al, byte [bx + si + 0xc4]    ; 0x8c10
    cbw                              ; 0x8c14
    add ax, word [bp - 0x005c]       ; 0x8c15
    mov word [bp - 0x005e], ax       ; 0x8c18
    jmp short @..local.l425          ; 0x8c1b
@..local.l424:
    mov ax, word [bp - 0x004e]       ; 0x8c1d
    shl ax, 1                        ; 0x8c20
    mov bx, ax                       ; 0x8c22
    mov ax, word [bx - 0x7b70]       ; 0x8c24
    add ax, 0xb4                     ; 0x8c28
    push ax                          ; 0x8c2b
    call api_idx_0004_11             ; 0x8c2c
    pop cx                           ; 0x8c2f
    mov word [bp - 0x006c], ax       ; 0x8c30
    mov ax, word [bp - 0x004e]       ; 0x8c33
    shl ax, 1                        ; 0x8c36
    mov bx, ax                       ; 0x8c38
    mov bx, word [bx - 0x7b70]       ; 0x8c3a
    mov si, word [bp - 0x006c]       ; 0x8c3e
    mov al, byte [bx + si + 0xc4]    ; 0x8c41
    cbw                              ; 0x8c45
    add ax, word [bp - 0x005c]       ; 0x8c46
    mov word [bp - 0x005e], ax       ; 0x8c49
@..local.l425:
    mov ax, 0x2c                     ; 0x8c4c
    imul word [bp - 0x0050]          ; 0x8c4f
    mov si, ax                       ; 0x8c52
    mov ax, word [bp - 0x004e]       ; 0x8c54
    shl ax, 1                        ; 0x8c57
    mov bx, ax                       ; 0x8c59
    mov bx, word [bx - 0x7b7e]       ; 0x8c5b
    cmp byte [bx + si + 0x22], 2     ; 0x8c5f
    jne short @..local.l427          ; 0x8c63
    mov ax, word [bp - 0x005e]       ; 0x8c65
    push ax                          ; 0x8c68
    cmp ax, strict word 0            ; 0x8c69
    pop ax                           ; 0x8c6c
    jle short @..local.l426          ; 0x8c6d
    mov ax, 0                        ; 0x8c6f
@..local.l426:
    mov word [bp - 0x005e], ax       ; 0x8c72
@..local.l427:
    mov ax, 4                        ; 0x8c75
    push ax                          ; 0x8c78
    mov ax, 3                        ; 0x8c79
    push ax                          ; 0x8c7c
    call api_idx_0004_6              ; 0x8c7d
    add sp, byte 4                   ; 0x8c80
    cmp word [bp - 0x009e], byte 0xff ; 0x8c83
    je short @..local.l428           ; 0x8c88
    mov ax, 8                        ; 0x8c8a
    push ax                          ; 0x8c8d
    call ds_dispatch_b7a9            ; 0x8c8e
    pop cx                           ; 0x8c91
    mov cx, ax                       ; 0x8c92
    mov ax, 3                        ; 0x8c94
    sub ax, cx                       ; 0x8c97
    shl ax, 1                        ; 0x8c99
    push ax                          ; 0x8c9b
    mov ax, 6                        ; 0x8c9c
    push ax                          ; 0x8c9f
    call api_idx_000c_2              ; 0x8ca0
    add sp, byte 4                   ; 0x8ca3
@..local.l428:
    cmp word [bp + 0x8], byte 4      ; 0x8ca6
    je short @..local.l429           ; 0x8caa
    cmp word [bp + 0x8], byte 8      ; 0x8cac
    jne short @..local.l430          ; 0x8cb0
@..local.l429:
    cmp word [bp - 0x00ac], byte 0   ; 0x8cb2
    jne short @..local.l430          ; 0x8cb7
    mov ax, 0x64                     ; 0x8cb9
    push ax                          ; 0x8cbc
    call ds_dispatch_b7a9            ; 0x8cbd
    pop cx                           ; 0x8cc0
    push ax                          ; 0x8cc1
    mov ax, word [bp - 0x004e]       ; 0x8cc2
    shl ax, 1                        ; 0x8cc5
    mov bx, ax                       ; 0x8cc7
    mov bx, word [bx - 0x7b7e]       ; 0x8cc9
    mov al, byte [bx + 0x18e]        ; 0x8ccd
    sub ah, ah                       ; 0x8cd1
    mov cx, ax                       ; 0x8cd3
    pop ax                           ; 0x8cd5
    cmp ax, cx                       ; 0x8cd6
    jge short @..local.l430          ; 0x8cd8
    mov ax, 3                        ; 0x8cda
    push ax                          ; 0x8cdd
    mov ax, 0x43                     ; 0x8cde
    push ax                          ; 0x8ce1
    mov ax, 0xc8e                    ; 0x8ce2
    push ax                          ; 0x8ce5
    call api_idx_0050                ; 0x8ce6
    add sp, byte 6                   ; 0x8ce9
    mov ax, 7                        ; 0x8cec
    push ax                          ; 0x8cef
    call ds_dispatch_b7e0            ; 0x8cf0
    pop cx                           ; 0x8cf3
    jmp near @..local.l451           ; 0x8cf4
@..local.l430:
    cmp word [bp - 0x0094], byte 0xff ; 0x8cf7
    jne short @..local.l432          ; 0x8cfc
    mov ax, word [bp - 0x0060]       ; 0x8cfe
    cmp ax, strict word 5            ; 0x8d01
    jge short @..local.l431          ; 0x8d04
    jmp near @..local.l450           ; 0x8d06
@..local.l431:
    cmp ax, strict word 0x5f         ; 0x8d09
    jge short @..local.l432          ; 0x8d0c
    mov ax, 5                        ; 0x8d0e
    imul word [bp - 0x005a]          ; 0x8d11
    mov cx, word [bp - 0x0056]       ; 0x8d14
    sub cx, ax                       ; 0x8d17
    mov ax, word [bp - 0x0060]       ; 0x8d19
    cmp cx, ax                       ; 0x8d1c
    jl short @..local.l432           ; 0x8d1e
    jmp near @..local.l450           ; 0x8d20
@..local.l432:
    cmp word [bp - 0x0094], byte 0xff ; 0x8d23
    je short @..local.l433           ; 0x8d28
    mov ax, word [bp - 0x0094]       ; 0x8d2a
    mov cx, 0x100                    ; 0x8d2e
    cwd                              ; 0x8d31
    idiv cx                          ; 0x8d32
    mov word [bp - 0x0098], ax       ; 0x8d34
    mov word [bp - 0x0096], dx       ; 0x8d38
    mov word [data_91d8], 1          ; 0x8d3c
    push ax                          ; 0x8d42
    push dx                          ; 0x8d43
    push word [bp + 0x4]             ; 0x8d44
    call api_idx_000e_5              ; 0x8d47
    add sp, byte 6                   ; 0x8d4a
    jmp near @..local.l449           ; 0x8d4d
@..local.l433:
    mov ax, 3                        ; 0x8d50
    push ax                          ; 0x8d53
    mov ax, 0x16                     ; 0x8d54
    push ax                          ; 0x8d57
    mov ax, 0xce6                    ; 0x8d58
    push ax                          ; 0x8d5b
    call api_idx_0050                ; 0x8d5c
    add sp, byte 6                   ; 0x8d5f
    mov ax, 7                        ; 0x8d62
    push ax                          ; 0x8d65
    call ds_dispatch_b7e0            ; 0x8d66
    pop cx                           ; 0x8d69
    mov ax, word [bp - 0x004e]       ; 0x8d6a
    shl ax, 1                        ; 0x8d6d
    mov bx, ax                       ; 0x8d6f
    mov bx, word [bx - 0x7b70]       ; 0x8d71
    cmp byte [bx + 0xd6], 0x11       ; 0x8d75
    je short @..local.l434           ; 0x8d7a
    cmp byte [bx + 0xd6], 0x17       ; 0x8d7c
    jne short @..local.l435          ; 0x8d81
    cmp word [bp - 0x006c], byte 6   ; 0x8d83
    jne short @..local.l435          ; 0x8d87
@..local.l434:
    mov ax, 0x90e6                   ; 0x8d89
    push ax                          ; 0x8d8c
    mov ax, word [bp - 0x006c]       ; 0x8d8d
    add ax, 0xd02                    ; 0x8d90
    push ax                          ; 0x8d93
    call ds_dispatch_b53b            ; 0x8d94
    add sp, byte 4                   ; 0x8d97
    jmp short @..local.l437          ; 0x8d9a
@..local.l435:
    mov ax, word [bp - 0x004e]       ; 0x8d9c
    shl ax, 1                        ; 0x8d9f
    mov bx, ax                       ; 0x8da1
    mov bx, word [bx - 0x7b70]       ; 0x8da3
    cmp byte [bx + 0xd6], 0x1a       ; 0x8da7
    jne short @..local.l436          ; 0x8dac
    mov ax, 0x90e6                   ; 0x8dae
    push ax                          ; 0x8db1
    mov ax, word [bp - 0x006c]       ; 0x8db2
    add ax, 0xd3e                    ; 0x8db5
    push ax                          ; 0x8db8
    call ds_dispatch_b53b            ; 0x8db9
    add sp, byte 4                   ; 0x8dbc
    jmp short @..local.l437          ; 0x8dbf
@..local.l436:
    mov ax, 0x90e6                   ; 0x8dc1
    push ax                          ; 0x8dc4
    mov ax, word [bp - 0x006c]       ; 0x8dc5
    add ax, 0xcf8                    ; 0x8dc8
    push ax                          ; 0x8dcb
    call ds_dispatch_b53b            ; 0x8dcc
    add sp, byte 4                   ; 0x8dcf
@..local.l437:
    inc word [bp - 0x0066]           ; 0x8dd2
    mov bx, word [bp + 0x4]          ; 0x8dd5
    cmp byte [bx + 0x2b], 1          ; 0x8dd8
    jne short @..local.l438          ; 0x8ddc
    mov byte [bx + 0x2b], 0xff       ; 0x8dde
@..local.l438:
    mov word [bp - 0x006a], 0        ; 0x8de2
    mov ax, word [bp - 0x009a]       ; 0x8de7
    mov word [bp - 0x009c], ax       ; 0x8deb
@..local.l439:
    cmp word [bp - 0x009c], byte 0   ; 0x8def
    jle short @..local.l440          ; 0x8df4
    push word [bp - 0x006e]          ; 0x8df6
    push word [bp - 0x0070]          ; 0x8df9
    call ds_dispatch_d0be            ; 0x8dfc
    add sp, byte 4                   ; 0x8dff
    add word [bp - 0x006a], ax       ; 0x8e02
    dec word [bp - 0x009c]           ; 0x8e05
    jmp short @..local.l439          ; 0x8e09
@..local.l440:
    mov ax, word [bp - 0x007e]       ; 0x8e0b
    add word [bp - 0x006a], ax       ; 0x8e0e
    cmp word [bp - 0x006a], byte 0   ; 0x8e11
    jg short @..local.l441           ; 0x8e15
    jmp near @..local.l448           ; 0x8e17
@..local.l441:
    cmp word [bp - 0x0060], byte 0x5f ; 0x8e1a
    jge short @..local.l442          ; 0x8e1e
    mov ax, 5                        ; 0x8e20
    imul word [bp - 0x005e]          ; 0x8e23
    mov cx, ax                       ; 0x8e26
    mov ax, word [bp - 0x0056]       ; 0x8e28
    sub ax, cx                       ; 0x8e2b
    cmp ax, word [bp - 0x0060]       ; 0x8e2d
    jl short @..local.l442           ; 0x8e30
    jmp near @..local.l448           ; 0x8e32
@..local.l442:
    mov ax, data_9136                ; 0x8e35
    push ax                          ; 0x8e38
    push word [bp - 0x006a]          ; 0x8e39
    call ds_dispatch_b27d            ; 0x8e3c
    add sp, byte 4                   ; 0x8e3f
    mov ax, data_9186                ; 0x8e42
    push ax                          ; 0x8e45
    mov ax, 0xcea                    ; 0x8e46
    push ax                          ; 0x8e49
    call ds_dispatch_b53b            ; 0x8e4a
    add sp, byte 4                   ; 0x8e4d
    mov ax, 0x43                     ; 0x8e50
    push ax                          ; 0x8e53
    mov ax, 0x41                     ; 0x8e54
    push ax                          ; 0x8e57
    mov ax, 0x43                     ; 0x8e58
    push ax                          ; 0x8e5b
    mov ax, data_9186                ; 0x8e5c
    push ax                          ; 0x8e5f
    mov ax, data_9136                ; 0x8e60
    push ax                          ; 0x8e63
    mov ax, 0x90e6                   ; 0x8e64
    push ax                          ; 0x8e67
    mov ax, 4                        ; 0x8e68
    push ax                          ; 0x8e6b
    call api_idx_0004_4              ; 0x8e6c
    add sp, byte 0x0e                ; 0x8e6f
    mov ax, word [bp - 0x006a]       ; 0x8e72
    push ax                          ; 0x8e75
    mov ax, 0x2c                     ; 0x8e76
    imul word [bp - 0x0050]          ; 0x8e79
    mov si, ax                       ; 0x8e7c
    mov ax, word [bp - 0x004e]       ; 0x8e7e
    shl ax, 1                        ; 0x8e81
    mov bx, ax                       ; 0x8e83
    mov bx, word [bx - 0x7b7e]       ; 0x8e85
    pop ax                           ; 0x8e89
    sub word [bx + si + 0x2], ax     ; 0x8e8a
    mov ax, 0x2c                     ; 0x8e8d
    imul word [bp - 0x0050]          ; 0x8e90
    mov si, ax                       ; 0x8e93
    mov ax, word [bp - 0x004e]       ; 0x8e95
    shl ax, 1                        ; 0x8e98
    mov bx, ax                       ; 0x8e9a
    mov bx, word [bx - 0x7b7e]       ; 0x8e9c
    mov byte [bx + si + 0x10], 0     ; 0x8ea0
    mov ax, 3                        ; 0x8ea4
    push ax                          ; 0x8ea7
    call ds_dispatch_b7a9            ; 0x8ea8
    pop cx                           ; 0x8eab
    mov cx, ax                       ; 0x8eac
    inc ax                           ; 0x8eae
    inc ax                           ; 0x8eaf
    mov cx, ax                       ; 0x8eb0
    mov ax, 0x2c                     ; 0x8eb2
    imul word [bp - 0x0050]          ; 0x8eb5
    mov si, ax                       ; 0x8eb8
    mov ax, word [bp - 0x004e]       ; 0x8eba
    shl ax, 1                        ; 0x8ebd
    mov bx, ax                       ; 0x8ebf
    mov bx, word [bx - 0x7b7e]       ; 0x8ec1
    mov al, byte [bx + si + 0x11]    ; 0x8ec5
    sub ah, ah                       ; 0x8ec8
    sub ax, cx                       ; 0x8eca
    mov word [bp - 0x00a0], ax       ; 0x8ecc
    cmp ax, strict word 0            ; 0x8ed0
    jge short @..local.l443          ; 0x8ed3
    mov word [bp - 0x00a0], 0        ; 0x8ed5
@..local.l443:
    mov al, byte [bp - 0x00a0]       ; 0x8edb
    mov byte [bx + si + 0x11], al    ; 0x8edf
    mov ax, 0x2c                     ; 0x8ee2
    imul word [bp - 0x0050]          ; 0x8ee5
    mov si, ax                       ; 0x8ee8
    mov ax, word [bp - 0x004e]       ; 0x8eea
    shl ax, 1                        ; 0x8eed
    mov bx, ax                       ; 0x8eef
    mov bx, word [bx - 0x7b7e]       ; 0x8ef1
    cmp word [bx + si + 0x2], byte 0 ; 0x8ef5
    jg short @..local.l445           ; 0x8ef9
    mov ax, word [data_9058]         ; 0x8efb
    mov cx, 2                        ; 0x8efe
    cwd                              ; 0x8f01
    idiv cx                          ; 0x8f02
    push ax                          ; 0x8f04
    call api_idx_0004_5              ; 0x8f05
    pop cx                           ; 0x8f08
    mov ax, 0                        ; 0x8f09
    push ax                          ; 0x8f0c
    mov ax, 0xd50                    ; 0x8f0d
    push ax                          ; 0x8f10
    mov ax, 0                        ; 0x8f11
    push ax                          ; 0x8f14
    mov ax, 3                        ; 0x8f15
    push ax                          ; 0x8f18
    mov ax, 0                        ; 0x8f19
    push ax                          ; 0x8f1c
    mov ax, 0xd9e                    ; 0x8f1d
    push ax                          ; 0x8f20
    push word [bp - 0x0050]          ; 0x8f21
    push word [bp - 0x004e]          ; 0x8f24
    call api_idx_0002_4              ; 0x8f27
    add sp, byte 0x10                ; 0x8f2a
    mov bx, word [bp + 0x4]          ; 0x8f2d
    cmp byte [bx + 0x2b], 0xff       ; 0x8f30
    jne short @..local.l444          ; 0x8f34
    mov ax, 3                        ; 0x8f36
    push ax                          ; 0x8f39
    call ds_dispatch_b7a9            ; 0x8f3a
    pop cx                           ; 0x8f3d
    cmp ax, strict word 0            ; 0x8f3e
    jle short @..local.l444          ; 0x8f41
    mov bx, word [bp + 0x4]          ; 0x8f43
    mov byte [bx + 0x2b], 1          ; 0x8f46
@..local.l444:
    jmp near @..local.l447           ; 0x8f4a
@..local.l445:
    cmp word [bp - 0x004e], byte 0   ; 0x8f4d
    jne short @..local.l446          ; 0x8f51
    mov ax, 0x248                    ; 0x8f53
    imul word [bp - 0x0050]          ; 0x8f56
    mov bx, ax                       ; 0x8f59
    mov al, byte [bx + 0x5e2c]       ; 0x8f5b
    sub ah, ah                       ; 0x8f5f
    inc ax                           ; 0x8f61
    inc ax                           ; 0x8f62
    push ax                          ; 0x8f63
    call ds_dispatch_b7e0            ; 0x8f64
    pop cx                           ; 0x8f67
    mov ax, 1                        ; 0x8f68
    push ax                          ; 0x8f6b
    push word [bp - 0x0050]          ; 0x8f6c
    call api_idx_0004_2              ; 0x8f6f
    add sp, byte 4                   ; 0x8f72
@..local.l446:
    mov ax, word [data_9058]         ; 0x8f75
    mov cx, 2                        ; 0x8f78
    cwd                              ; 0x8f7b
    idiv cx                          ; 0x8f7c
    push ax                          ; 0x8f7e
    call api_idx_0004_5              ; 0x8f7f
    pop cx                           ; 0x8f82
    push word [bp - 0x0050]          ; 0x8f83
    push word [bp - 0x004e]          ; 0x8f86
    push word [bp - 0x0052]          ; 0x8f89
    push word [bp + 0x4]             ; 0x8f8c
    call api_idx_000a_5              ; 0x8f8f
    add sp, byte 8                   ; 0x8f92
    cmp word [bp - 0x00a2], byte 0   ; 0x8f95
    je short @..local.l447           ; 0x8f9a
    mov ax, 0x2c                     ; 0x8f9c
    imul word [bp - 0x0050]          ; 0x8f9f
    mov si, ax                       ; 0x8fa2
    mov ax, word [bp - 0x004e]       ; 0x8fa4
    shl ax, 1                        ; 0x8fa7
    mov bx, ax                       ; 0x8fa9
    mov bx, word [bx - 0x7b7e]       ; 0x8fab
    push word [bx + si]              ; 0x8faf
    call ds_dispatch_b7a9            ; 0x8fb1
    pop cx                           ; 0x8fb4
    test ax, ax                      ; 0x8fb5
    jne short @..local.l447          ; 0x8fb7
    mov ax, 0                        ; 0x8fb9
    push ax                          ; 0x8fbc
    mov ax, 0xd50                    ; 0x8fbd
    push ax                          ; 0x8fc0
    mov ax, 2                        ; 0x8fc1
    push ax                          ; 0x8fc4
    push ax                          ; 0x8fc5
    push ax                          ; 0x8fc6
    mov ax, 0                        ; 0x8fc7
    push ax                          ; 0x8fca
    mov ax, 3                        ; 0x8fcb
    push ax                          ; 0x8fce
    mov ax, 4                        ; 0x8fcf
    push ax                          ; 0x8fd2
    mov ax, 0xd93                    ; 0x8fd3
    push ax                          ; 0x8fd6
    push word [bp - 0x0050]          ; 0x8fd7
    push word [bp - 0x004e]          ; 0x8fda
    call api_idx_0006_2              ; 0x8fdd
    add sp, byte 0x16                ; 0x8fe0
@..local.l447:
    jmp short @..local.l449          ; 0x8fe3
@..local.l448:
    mov ax, data_9136                ; 0x8fe5
    push ax                          ; 0x8fe8
    mov ax, 0xce7                    ; 0x8fe9
    push ax                          ; 0x8fec
    call ds_dispatch_b53b            ; 0x8fed
    add sp, byte 4                   ; 0x8ff0
    mov byte [data_9186], 0          ; 0x8ff3
    mov ax, 0x43                     ; 0x8ff8
    push ax                          ; 0x8ffb
    push ax                          ; 0x8ffc
    push ax                          ; 0x8ffd
    mov ax, data_9186                ; 0x8ffe
    push ax                          ; 0x9001
    mov ax, data_9136                ; 0x9002
    push ax                          ; 0x9005
    mov ax, 0x90e6                   ; 0x9006
    push ax                          ; 0x9009
    mov ax, 4                        ; 0x900a
    push ax                          ; 0x900d
    call api_idx_0004_4              ; 0x900e
    add sp, byte 0x0e                ; 0x9011
@..local.l449:
    jmp short @..local.l451          ; 0x9014
@..local.l450:
    mov ax, 3                        ; 0x9016
    push ax                          ; 0x9019
    mov ax, 0x43                     ; 0x901a
    push ax                          ; 0x901d
    mov ax, 0xce5                    ; 0x901e
    push ax                          ; 0x9021
    call api_idx_0050                ; 0x9022
    add sp, byte 6                   ; 0x9025
@..local.l451:
    mov ax, word [data_9058]         ; 0x9028
    mov cx, 2                        ; 0x902b
    cwd                              ; 0x902e
    idiv cx                          ; 0x902f
    push ax                          ; 0x9031
    call api_idx_0004_5              ; 0x9032
    pop cx                           ; 0x9035
    inc word [bp - 0x0062]           ; 0x9036
@..local.l452:
    mov ax, word [bp - 0x0062]       ; 0x9039
    cmp ax, word [bp - 0x0064]       ; 0x903c
    jge short @..local.l453          ; 0x903f
    mov ax, 0x2c                     ; 0x9041
    imul word [bp - 0x0050]          ; 0x9044
    mov si, ax                       ; 0x9047
    mov ax, word [bp - 0x004e]       ; 0x9049
    shl ax, 1                        ; 0x904c
    mov bx, ax                       ; 0x904e
    mov bx, word [bx - 0x7b7e]       ; 0x9050
    cmp byte [bx + si + 0x22], 3     ; 0x9054
    jae short @..local.l453          ; 0x9058
    jmp near @..local.l422           ; 0x905a
@..local.l453:
    mov bx, word [bp + 0x4]          ; 0x905d
    cmp byte [bx + 0x2b], 0xff       ; 0x9060
    jne short @..local.l454          ; 0x9064
    mov byte [bx + 0x2b], 0          ; 0x9066
@..local.l454:
    cmp word [bp - 0x004e], byte 0   ; 0x906a
    jne short @..local.l455          ; 0x906e
    mov ax, 0                        ; 0x9070
    push ax                          ; 0x9073
    push word [bp - 0x0050]          ; 0x9074
    call api_idx_0004_2              ; 0x9077
    add sp, byte 4                   ; 0x907a
@..local.l455:
    cmp word [bp - 0x00a8], byte 0   ; 0x907d
    jle short @..local.l456          ; 0x9082
    push word [bp - 0x00a8]          ; 0x9084
    call ds_dispatch_d7aa            ; 0x9088
    pop cx                           ; 0x908b
@..local.l456:
    ret                              ; 0x908c
api_idx_0006_6:
    mov ax, 0xfffa                   ; 0x908d
    call ds_dispatch_f40b            ; 0x9090
    cmp word [bp + 0xc], byte 0      ; 0x9093
    je short @..api_idx_0006_6.l1    ; 0x9097
    cmp word [data_8464], byte 0     ; 0x9099
    je short @..api_idx_0006_6.l1    ; 0x909e
    mov ax, word [data_8464]         ; 0x90a0
    cmp ax, strict word 6            ; 0x90a3
    je short @..api_idx_0006_6.l1    ; 0x90a6
    mov ax, 0x2c                     ; 0x90a8
    imul word [data_8462]            ; 0x90ab
    mov si, ax                       ; 0x90af
    mov ax, word [data_8464]         ; 0x90b1
    shl ax, 1                        ; 0x90b4
    mov bx, ax                       ; 0x90b6
    mov bx, word [bx - 0x7b7e]       ; 0x90b8
    cmp byte [bx + si + 0x2a], 0xff  ; 0x90bc
    je short @..api_idx_0006_6.l1    ; 0x90c0
    mov al, byte [bx + si + 0x2a]    ; 0x90c2
    cbw                              ; 0x90c5
    mov cx, 0xa                      ; 0x90c6
    cwd                              ; 0x90c9
    idiv cx                          ; 0x90ca
    mov word [bp - 0x0004], ax       ; 0x90cc
    mov al, byte [bx + si + 0x2a]    ; 0x90cf
    cbw                              ; 0x90d2
    cwd                              ; 0x90d3
    idiv cx                          ; 0x90d4
    mov word [bp - 0x0006], dx       ; 0x90d6
    mov ax, 1                        ; 0x90d9
    push ax                          ; 0x90dc
    push dx                          ; 0x90dd
    push word [bp - 0x0004]          ; 0x90de
    push word [data_8464]            ; 0x90e1
    call api_idx_000a                ; 0x90e5
    add sp, byte 8                   ; 0x90e8
    mov ax, 5                        ; 0x90eb
    push ax                          ; 0x90ee
    call api_idx_0004_5              ; 0x90ef
    pop cx                           ; 0x90f2
@..api_idx_0006_6.l1:
    push word [data_8462]            ; 0x90f3
    push word [data_8464]            ; 0x90f7
    mov ax, 0x90e6                   ; 0x90fb
    push ax                          ; 0x90fe
    call math_loc_15ab               ; 0x90ff
    add sp, byte 6                   ; 0x9102
    mov ax, data_9136                ; 0x9105
    push ax                          ; 0x9108
    push word [bp + 0x4]             ; 0x9109
    call ds_dispatch_b53b            ; 0x910c
    add sp, byte 4                   ; 0x910f
    mov byte [data_9186], 0          ; 0x9112
    cmp word [bp + 0x6], byte 0      ; 0x9117
    jl short @..api_idx_0006_6.l2    ; 0x911b
    mov ax, data_9186                ; 0x911d
    push ax                          ; 0x9120
    push word [bp + 0x6]             ; 0x9121
    call ds_dispatch_b53b            ; 0x9124
    add sp, byte 4                   ; 0x9127
@..api_idx_0006_6.l2:
    push word [bp + 0x8]             ; 0x912a
    push word [bp + 0x8]             ; 0x912d
    mov ax, 0x43                     ; 0x9130
    cmp word [data_8464], byte 0     ; 0x9133
    jne short @..api_idx_0006_6.l3   ; 0x9138
    mov ax, 1                        ; 0x913a
@..api_idx_0006_6.l3:
    push ax                          ; 0x913d
    mov ax, data_9186                ; 0x913e
    push ax                          ; 0x9141
    mov ax, data_9136                ; 0x9142
    push ax                          ; 0x9145
    mov ax, 0x90e6                   ; 0x9146
    push ax                          ; 0x9149
    mov ax, 0                        ; 0x914a
    push ax                          ; 0x914d
    call api_idx_0004_4              ; 0x914e
    add sp, byte 0x0e                ; 0x9151
    cmp word [bp + 0xa], byte 1      ; 0x9154
    jne short @..local.l457          ; 0x9158
    mov ax, 4                        ; 0x915a
    push ax                          ; 0x915d
    call api_idx_0004_5              ; 0x915e
    pop cx                           ; 0x9161
    mov ax, 2                        ; 0x9162
    push ax                          ; 0x9165
    mov ax, 0x41                     ; 0x9166
    push ax                          ; 0x9169
    mov ax, 0xc80                    ; 0x916a
    push ax                          ; 0x916d
    call api_idx_0050                ; 0x916e
    add sp, byte 6                   ; 0x9171
    push word [data_9058]            ; 0x9174
    call api_idx_0004_5              ; 0x9178
    pop cx                           ; 0x917b
    mov ax, 1                        ; 0x917c
    ret                              ; 0x917f
@..local.l457:
    cmp word [data_8464], byte 0     ; 0x9180
    je short @..local.l458           ; 0x9185
    mov bx, word [data_8492]         ; 0x9187
    cmp byte [bx + 0xd8], 0          ; 0x918b
    jbe short @..local.l458          ; 0x9190
    mov ax, word [data_8464]         ; 0x9192
    shl ax, 1                        ; 0x9195
    mov bx, ax                       ; 0x9197
    mov bx, word [bx - 0x7b70]       ; 0x9199
    mov al, byte [bx + 0xd8]         ; 0x919d
    mov bx, word [data_8492]         ; 0x91a1
    cmp al, byte [bx + 0xd8]         ; 0x91a5
    jne short @..local.l458          ; 0x91a9
    mov word [data_90de], 0x10       ; 0x91ab
@..local.l458:
    mov ax, 0                        ; 0x91b1
    ret                              ; 0x91b4
api_idx_000e_7:
    mov ax, 0xfff2                   ; 0x91b5
    call ds_dispatch_f40b            ; 0x91b8
    mov word [data_90e4], 0          ; 0x91bb
    mov bx, word [bp + 0x4]          ; 0x91c1
    mov al, byte [bx + 0x1f]         ; 0x91c4
    sub ah, ah                       ; 0x91c7
    mov word [bp - 0x0002], ax       ; 0x91c9
    mov al, byte [bx + 0x20]         ; 0x91cc
    sub ah, ah                       ; 0x91cf
    mov word [bp - 0x0004], ax       ; 0x91d1
    mov word [bp - 0x0006], 1        ; 0x91d4
    mov word [bp - 0x000a], 0        ; 0x91d9
@..api_idx_000e_7.l1:
    mov ax, 0x19                     ; 0x91de
    imul word [bp - 0x000a]          ; 0x91e1
    add ax, strict word 0x19         ; 0x91e4
    mov bx, word [bp + 0x4]          ; 0x91e7
    mov cx, word [bx + 0x2]          ; 0x91ea
    cmp ax, cx                       ; 0x91ed
    jge short @..api_idx_000e_7.l2   ; 0x91ef
    inc word [bp - 0x0006]           ; 0x91f1
@..api_idx_000e_7.l2:
    inc word [bp - 0x000a]           ; 0x91f4
    mov ax, word [bp - 0x000a]       ; 0x91f7
    cmp ax, strict word 6            ; 0x91fa
    jl short @..api_idx_000e_7.l1    ; 0x91fd
    mov ax, word [bp - 0x0006]       ; 0x91ff
    mov bx, word [bp + 0x4]          ; 0x9202
    mov cx, word [bx + 0x6]          ; 0x9205
    mov bx, cx                       ; 0x9208
    imul bx                          ; 0x920a
    push ax                          ; 0x920c
    push dx                          ; 0x920d
    mov bx, word [bp + 0x4]          ; 0x920e
    mov ax, word [bx + 0x8]          ; 0x9211
    cwd                              ; 0x9214
    mov cx, ax                       ; 0x9215
    mov bx, dx                       ; 0x9217
    pop dx                           ; 0x9219
    pop ax                           ; 0x921a
    call ds_dispatch_f99f            ; 0x921b
    inc ax                           ; 0x921e
    mov word [bp - 0x0006], ax       ; 0x921f
    cmp ax, strict word 1            ; 0x9222
    jge short @..api_idx_000e_7.l3   ; 0x9225
    mov word [bp - 0x0006], 1        ; 0x9227
@..api_idx_000e_7.l3:
    cmp word [bp - 0x0006], byte 6   ; 0x922c
    jle short @..api_idx_000e_7.l4   ; 0x9230
    mov word [bp - 0x0006], 6        ; 0x9232
@..api_idx_000e_7.l4:
    mov ax, word [bp - 0x0006]       ; 0x9237
    shl ax, 1                        ; 0x923a
    shl ax, 1                        ; 0x923c
    mov word [bp - 0x0008], ax       ; 0x923e
    mov word [bp - 0x000e], 0        ; 0x9241
    mov bx, word [bp + 0x4]          ; 0x9246
    mov ax, word [bx + 0xa]          ; 0x9249
    jmp near @..local.l459           ; 0x924c
    mov ax, 1                        ; 0x924f
    push ax                          ; 0x9252
    mov ax, 0                        ; 0x9253
    push ax                          ; 0x9256
    mov ax, 0x43                     ; 0x9257
    push ax                          ; 0x925a
    mov ax, 0xe74                    ; 0x925b
    push ax                          ; 0x925e
    mov ax, 0xd0c                    ; 0x925f
    push ax                          ; 0x9262
    call api_idx_0006_6              ; 0x9263
    add sp, byte 0x0a                ; 0x9266
    mov ax, 0xb                      ; 0x9269
    push ax                          ; 0x926c
    mov ax, 1                        ; 0x926d
    push ax                          ; 0x9270
    mov ax, 8                        ; 0x9271
    push ax                          ; 0x9274
    mov ax, 0                        ; 0x9275
    push ax                          ; 0x9278
    push word [bp - 0x0002]          ; 0x9279
    call api_idx_0004_9              ; 0x927c
    add sp, byte 0x0a                ; 0x927f
    push word [bp - 0x0008]          ; 0x9282
    mov ax, 1                        ; 0x9285
    push ax                          ; 0x9288
    push word [bp - 0x0006]          ; 0x9289
    mov ax, 5                        ; 0x928c
    push ax                          ; 0x928f
    mov ax, 2                        ; 0x9290
    push ax                          ; 0x9293
    mov ax, 0                        ; 0x9294
    sub ax, word [bp - 0x0006]       ; 0x9297
    push ax                          ; 0x929a
    push word [bp - 0x0002]          ; 0x929b
    call api_idx_000a_3              ; 0x929e
    add sp, byte 0x0e                ; 0x92a1
    mov ax, 4                        ; 0x92a4
    push ax                          ; 0x92a7
    call ds_dispatch_b7a9            ; 0x92a8
    pop cx                           ; 0x92ab
    push ax                          ; 0x92ac
    mov bx, word [bp + 0x4]          ; 0x92ad
    mov ax, word [bx + 0x8]          ; 0x92b0
    mov cx, 6                        ; 0x92b3
    cwd                              ; 0x92b6
    idiv cx                          ; 0x92b7
    mov cx, ax                       ; 0x92b9
    pop ax                           ; 0x92bb
    add ax, cx                       ; 0x92bc
    mov word [bp - 0x000e], ax       ; 0x92be
    jmp near @..local.l460           ; 0x92c1
    mov ax, 1                        ; 0x92c4
    push ax                          ; 0x92c7
    mov ax, 0                        ; 0x92c8
    push ax                          ; 0x92cb
    mov ax, 0x43                     ; 0x92cc
    push ax                          ; 0x92cf
    mov ax, 0xe75                    ; 0x92d0
    push ax                          ; 0x92d3
    mov ax, 0xd14                    ; 0x92d4
    push ax                          ; 0x92d7
    call api_idx_0006_6              ; 0x92d8
    add sp, byte 0x0a                ; 0x92db
    push word [data_90de]            ; 0x92de
    mov ax, 0                        ; 0x92e2
    push ax                          ; 0x92e5
    mov ax, 0x16                     ; 0x92e6
    push ax                          ; 0x92e9
    mov ax, 0                        ; 0x92ea
    push ax                          ; 0x92ed
    push word [bp - 0x0002]          ; 0x92ee
    call api_idx_0004_9              ; 0x92f1
    add sp, byte 0x0a                ; 0x92f4
    push word [bp - 0x0006]          ; 0x92f7
    mov ax, 2                        ; 0x92fa
    push ax                          ; 0x92fd
    push word [bp - 0x0006]          ; 0x92fe
    mov ax, 0                        ; 0x9301
    push ax                          ; 0x9304
    push word [bp - 0x0008]          ; 0x9305
    mov ax, 9                        ; 0x9308
    push ax                          ; 0x930b
    mov ax, 8                        ; 0x930c
    push ax                          ; 0x930f
    mov ax, 0xd9f                    ; 0x9310
    push ax                          ; 0x9313
    mov ax, 0                        ; 0x9314
    sub ax, word [bp - 0x0006]       ; 0x9317
    push ax                          ; 0x931a
    push word [bp - 0x0002]          ; 0x931b
    call api_idx_000a_4              ; 0x931e
    add sp, byte 0x14                ; 0x9321
    mov ax, 4                        ; 0x9324
    push ax                          ; 0x9327
    call ds_dispatch_b7a9            ; 0x9328
    pop cx                           ; 0x932b
    push ax                          ; 0x932c
    mov cx, 8                        ; 0x932d
    mov bx, word [bp + 0x4]          ; 0x9330
    mov ax, word [bx + 0x8]          ; 0x9333
    cwd                              ; 0x9336
    idiv cx                          ; 0x9337
    mov cx, ax                       ; 0x9339
    pop ax                           ; 0x933b
    add ax, cx                       ; 0x933c
    mov word [bp - 0x000e], ax       ; 0x933e
    jmp near @..local.l460           ; 0x9341
    mov ax, 1                        ; 0x9344
    push ax                          ; 0x9347
    mov ax, 0                        ; 0x9348
    push ax                          ; 0x934b
    mov ax, 0x43                     ; 0x934c
    push ax                          ; 0x934f
    mov ax, 0xe76                    ; 0x9350
    push ax                          ; 0x9353
    mov ax, 0xd0c                    ; 0x9354
    push ax                          ; 0x9357
    call api_idx_0006_6              ; 0x9358
    add sp, byte 0x0a                ; 0x935b
    mov ax, 0xb                      ; 0x935e
    push ax                          ; 0x9361
    mov ax, 1                        ; 0x9362
    push ax                          ; 0x9365
    mov ax, 0xa                      ; 0x9366
    push ax                          ; 0x9369
    mov ax, 0                        ; 0x936a
    push ax                          ; 0x936d
    push word [bp - 0x0002]          ; 0x936e
    call api_idx_0004_9              ; 0x9371
    add sp, byte 0x0a                ; 0x9374
    push word [bp - 0x0008]          ; 0x9377
    mov ax, 3                        ; 0x937a
    push ax                          ; 0x937d
    push word [bp - 0x0006]          ; 0x937e
    mov ax, 4                        ; 0x9381
    push ax                          ; 0x9384
    mov ax, 3                        ; 0x9385
    push ax                          ; 0x9388
    mov ax, 0                        ; 0x9389
    sub ax, word [bp - 0x0006]       ; 0x938c
    push ax                          ; 0x938f
    push word [bp - 0x0002]          ; 0x9390
    call api_idx_000a_3              ; 0x9393
    add sp, byte 0x0e                ; 0x9396
    mov ax, 4                        ; 0x9399
    push ax                          ; 0x939c
    call ds_dispatch_b7a9            ; 0x939d
    pop cx                           ; 0x93a0
    push ax                          ; 0x93a1
    mov bx, word [bp + 0x4]          ; 0x93a2
    mov ax, word [bx + 0x8]          ; 0x93a5
    mov cx, 6                        ; 0x93a8
    cwd                              ; 0x93ab
    idiv cx                          ; 0x93ac
    mov cx, ax                       ; 0x93ae
    pop ax                           ; 0x93b0
    add ax, cx                       ; 0x93b1

    db 0x89, 0x46, 0xf2, 0xe9, 0x76, 0x04, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x43
    db 0x00, 0x50, 0xb8, 0x77, 0x0e, 0x50, 0xb8, 0x0c, 0x0d, 0x50, 0xe8, 0xbd, 0xfc, 0x83, 0xc4, 0x0a
    db 0xff, 0x36, 0xde, 0x90, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x17, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50
    db 0xff, 0x76, 0xfe, 0xe8, 0xf9, 0x9f, 0x83, 0xc4, 0x0a, 0xff, 0x76, 0xf8, 0xb8, 0x08, 0x00, 0x50
    db 0xff, 0x76, 0xfa, 0xb8, 0x07, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x2b, 0x46
    db 0xfa, 0x50, 0xff, 0x76, 0xfe, 0xe8, 0xd6, 0x94, 0x83, 0xc4, 0x0e, 0xb8, 0x06, 0x00, 0x50, 0xe8
    db 0x94, 0x23, 0x59, 0x50, 0x8b, 0x5e, 0x04, 0x8b, 0x47, 0x08, 0xb9, 0x04, 0x00, 0x99, 0xf7, 0xf9
    db 0x8b, 0xc8, 0x58, 0x03, 0xc1, 0x89, 0x46, 0xf2, 0xe9, 0x01, 0x04, 0xb8, 0x01, 0x00, 0x50, 0x8b
    db 0x5e, 0x04, 0x80, 0x7f, 0x0e, 0x00, 0x76, 0x02, 0xeb, 0x03, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x43
    db 0x00, 0x50, 0xb8, 0xff, 0xff, 0x50, 0xb8, 0x0e, 0x0d, 0x50, 0xe8, 0x3d, 0xfc, 0x83, 0xc4, 0x0a
    db 0x85, 0xc0, 0x75, 0x5c, 0xff, 0x36, 0xde, 0x90, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x0e, 0x00, 0x50
    db 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76, 0xfe, 0xe8, 0x75, 0x9f, 0x83, 0xc4, 0x0a, 0xb8, 0x0a, 0x00
    db 0xf7, 0x6e, 0xfa, 0x50, 0xb8, 0x02, 0x00, 0x50, 0xb8, 0x0a, 0x00, 0xf7, 0x6e, 0xfa, 0x50, 0xb8
    db 0x00, 0x00, 0x50, 0xb8, 0x07, 0x00, 0x50, 0xb8, 0x04, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xff
    db 0x76, 0xf8, 0xff, 0x76, 0xfa, 0xb8, 0x0a, 0x00, 0x50, 0xb8, 0x97, 0x0d, 0x50, 0xb8, 0x00, 0x00
    db 0x8b, 0x4e, 0xfa, 0x41, 0x2b, 0xc1, 0x50, 0xff, 0x76, 0xfe, 0xe8, 0xdb, 0x95, 0x83, 0xc4, 0x1a
    db 0xb8, 0x04, 0x00, 0x50, 0xe8, 0xef, 0x22, 0x59, 0x50, 0x8b, 0x5e, 0x04, 0x8b, 0x47, 0x08, 0xb9
    db 0x0a, 0x00, 0x99, 0xf7, 0xf9, 0x8b, 0xc8, 0x58, 0x03, 0xc1, 0x89, 0x46, 0xf2, 0xe9, 0x5c, 0x03
    db 0xe9, 0x59, 0x03, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x43, 0x00, 0x50, 0xb8
    db 0x78, 0x0e, 0x50, 0xb8, 0x0f, 0x0d, 0x50, 0xe8, 0xa0, 0xfb, 0x83, 0xc4, 0x0a, 0xff, 0x36, 0xde
    db 0x90, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x0e, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76, 0xfe
    db 0xe8, 0xdc, 0x9e, 0x83, 0xc4, 0x0a, 0xff, 0x76, 0xfa, 0xb8, 0x01, 0x00, 0x50, 0x8b, 0x46, 0xfa
    db 0xd1, 0xe0, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76, 0xf8, 0xb8, 0x03, 0x00, 0x50, 0xb8, 0x04
    db 0x00, 0x50, 0xb8, 0x93, 0x0d, 0x50, 0xb8, 0x00, 0x00, 0x2b, 0x46, 0xfa, 0x50, 0xff, 0x76, 0xfe
    db 0xe8, 0x62, 0x94, 0x83, 0xc4, 0x14, 0xb8, 0x04, 0x00, 0x50, 0xe8, 0x69, 0x22, 0x59, 0x50, 0x8b
    db 0x5e, 0x04, 0x8b, 0x47, 0x08, 0xb9, 0x0a, 0x00, 0x99, 0xf7, 0xf9, 0x8b, 0xc8, 0x58, 0x03, 0xc1
    db 0x89, 0x46, 0xf2, 0xe9, 0xd6, 0x02, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x43
    db 0x00, 0x50, 0xb8, 0x79, 0x0e, 0x50, 0xb8, 0x10, 0x0d, 0x50, 0xe8, 0x1d, 0xfb, 0x83, 0xc4, 0x0a
    db 0xff, 0x36, 0xde, 0x90, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x17, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50
    db 0xff, 0x76, 0xfe, 0xe8, 0x59, 0x9e, 0x83, 0xc4, 0x0a, 0xff, 0x76, 0xfa, 0xb8, 0x04, 0x00, 0x50
    db 0xff, 0x76, 0xfa, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x08, 0x00, 0x50, 0xb8, 0x06, 0x00, 0x50, 0xb8
    db 0x01, 0x00, 0x50, 0xff, 0x76, 0xf8, 0xff, 0x76, 0xfa, 0xb8, 0x05, 0x00, 0x50, 0xb8, 0x98, 0x0d
    db 0x50, 0xb8, 0x00, 0x00, 0x8b, 0x4e, 0xfa, 0x41, 0x2b, 0xc1, 0x50, 0xff, 0x76, 0xfe, 0xe8, 0xc7
    db 0x94, 0x83, 0xc4, 0x1a, 0xb8, 0x04, 0x00, 0x50, 0xe8, 0xdb, 0x21, 0x59, 0x50, 0x8b, 0x5e, 0x04
    db 0x8b, 0x47, 0x08, 0xb9, 0x06, 0x00, 0x99, 0xf7, 0xf9, 0x8b, 0xc8, 0x58, 0x03, 0xc1, 0x89, 0x46
    db 0xf2, 0xe9, 0x48, 0x02, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x43, 0x00, 0x50
    db 0xb8, 0x7a, 0x0e, 0x50, 0xb8, 0x0c, 0x0d, 0x50, 0xe8, 0x8f, 0xfa, 0x83, 0xc4, 0x0a, 0xff, 0x36
    db 0xde, 0x90, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x17, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76
    db 0xfe, 0xe8, 0xcb, 0x9d, 0x83, 0xc4, 0x0a, 0xff, 0x76, 0xfa, 0xb8, 0x02, 0x00, 0x50, 0xb8, 0x0a
    db 0x00, 0xf7, 0x6e, 0xfa, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x05, 0x00, 0x50, 0x50, 0xb8, 0x01
    db 0x00, 0x50, 0xff, 0x76, 0xf8, 0xff, 0x76, 0xfa, 0xb8, 0x06, 0x00, 0x50, 0xb8, 0x95, 0x0d, 0x50
    db 0xb8, 0x00, 0x00, 0x2b, 0x46, 0xfa, 0x50, 0xff, 0x76, 0xfe, 0xe8, 0x3b, 0x94, 0x83, 0xc4, 0x1a
    db 0xb8, 0x03, 0x00, 0x50, 0xe8, 0x4f, 0x21, 0x59, 0x50, 0xb9, 0x08, 0x00, 0x8b, 0x5e, 0x04, 0x8b
    db 0x47, 0x08, 0x99, 0xf7, 0xf9, 0x8b, 0xc8, 0x58, 0x03, 0xc1, 0x89, 0x46, 0xf2, 0xe9, 0xbc, 0x01
    db 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x43, 0x00, 0x50, 0xb8, 0x7b, 0x0e, 0x50
    db 0xb8, 0x11, 0x0d, 0x50, 0xe8, 0x03, 0xfa, 0x83, 0xc4, 0x0a, 0xff, 0x36, 0xde, 0x90, 0xb8, 0x00
    db 0x00, 0x50, 0xb8, 0x17, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76, 0xfe, 0xe8, 0x3f, 0x9d
    db 0x83, 0xc4, 0x0a, 0xb8, 0xff, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0x50, 0xb8, 0x00, 0x00, 0x50
    db 0xb8, 0x06, 0x00, 0x50, 0xb8, 0x07, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xff, 0x76, 0xf8, 0xff
    db 0x76, 0xfa, 0xb8, 0x07, 0x00, 0x50, 0xb8, 0xaa, 0x0d, 0x50, 0xb8, 0x00, 0x00, 0x2b, 0x46, 0xfa
    db 0x50, 0xff, 0x76, 0xfe, 0xe8, 0xb1, 0x93, 0x83, 0xc4, 0x1a, 0xb8, 0x05, 0x00, 0x50, 0xe8, 0xc5
    db 0x20, 0x59, 0x50, 0x8b, 0x5e, 0x04, 0x8b, 0x47, 0x08, 0xb9, 0x06, 0x00, 0x99, 0xf7, 0xf9, 0x8b
    db 0xc8, 0x58, 0x03, 0xc1, 0x89, 0x46, 0xf2, 0xe9, 0x32, 0x01, 0xb8, 0x00, 0x00, 0x50, 0x50, 0xb8
    db 0x43, 0x00, 0x50, 0xb8, 0x7c, 0x0e, 0x50, 0xb8, 0x12, 0x0d, 0x50, 0xe8, 0x7c, 0xf9, 0x83, 0xc4
    db 0x0a, 0xb8, 0x0a, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x16, 0x00, 0x50, 0xb8, 0x00, 0x00
    db 0x50, 0xff, 0x76, 0xfe, 0xe8, 0xb8, 0x9c, 0x83, 0xc4, 0x0a, 0xff, 0x76, 0xfa, 0xb8, 0x02, 0x00
    db 0x50, 0xff, 0x76, 0xfa, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76, 0xf8, 0xb8, 0x02, 0x00, 0x50, 0xb8
    db 0x09, 0x00, 0x50, 0xb8, 0x92, 0x0d, 0x50, 0xb8, 0x00, 0x00, 0x8b, 0x4e, 0xfa, 0x41, 0x2b, 0xc1
    db 0x50, 0xff, 0x76, 0xfe, 0xe8, 0x3e, 0x92, 0x83, 0xc4, 0x14, 0xb8, 0x03, 0x00, 0x50, 0xe8, 0x45
    db 0x20, 0x59, 0x50, 0x8b, 0x5e, 0x04, 0x8b, 0x47, 0x08, 0xb9, 0x0a, 0x00, 0x99, 0xf7, 0xf9, 0x8b
    db 0xc8, 0x58, 0x03, 0xc1, 0x89, 0x46, 0xf2, 0xe9, 0xb2, 0x00, 0xb8, 0x01, 0x00, 0x50, 0x8b, 0x5e
    db 0x04, 0x80, 0x7f, 0x0e, 0x00, 0x76, 0x02, 0xeb, 0x03, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x43, 0x00
    db 0x50, 0xb8, 0xff, 0xff, 0x50, 0xb8, 0x13, 0x0d, 0x50, 0xe8, 0xee, 0xf8, 0x83, 0xc4, 0x0a, 0x85
    db 0xc0, 0x75, 0x43, 0xff, 0x36, 0xde, 0x90, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x0e, 0x00, 0x50, 0xb8
    db 0x00, 0x00, 0x50, 0xff, 0x76, 0xfe, 0xe8, 0x26, 0x9c, 0x83, 0xc4, 0x0a, 0xff, 0x76, 0xfa, 0xb8
    db 0x01, 0x00, 0x50, 0xff, 0x76, 0xfa, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76, 0xf8, 0xb8, 0x01, 0x00
    db 0x50, 0xb8, 0x0a, 0x00, 0x50, 0xb8, 0x91, 0x0d, 0x50, 0xb8, 0xf6, 0xff, 0x50, 0xff, 0x76, 0xfe
    db 0xe8, 0xb2, 0x91, 0x83, 0xc4, 0x14, 0xb8, 0x03, 0x00, 0x50, 0xe8, 0xb9, 0x1f, 0x59, 0x50, 0xb9
    db 0x08, 0x00, 0x8b, 0x5e, 0x04, 0x8b, 0x47, 0x08, 0x99, 0xf7, 0xf9, 0x8b, 0xc8, 0x58, 0x03, 0xc1
    db 0x89, 0x46, 0xf2, 0xeb, 0x27, 0x76, 0xe8, 0x96, 0xe2, 0x0b, 0xe3, 0x8b, 0xe3, 0x1d, 0xe5, 0xa0
    db 0xe5, 0x2e, 0xe6, 0xba, 0xe6, 0x00, 0xe4, 0x44, 0xe7, 0x75, 0xe4, 0xc4, 0xe7, 0x1a, 0xe5

@..local.l459:
    cmp ax, strict word 0xd          ; 0x9822
    jae short @..local.l460          ; 0x9825
    xchg bx, ax                      ; 0x9827
    shl bx, 1                        ; 0x9828
    jmp [cs:bx - 0x17b1]             ; 0x982a
@..local.l460:
    cmp word [data_90e4], byte 0     ; 0x982f
    jne short @..local.l461          ; 0x9834
    push word [data_9058]            ; 0x9836
    call api_idx_0004_5              ; 0x983a
    pop cx                           ; 0x983d
@..local.l461:
    mov ax, word [bp - 0x000e]       ; 0x983e
    ret                              ; 0x9841
math_loc_9842:
    mov ax, 0                        ; 0x9842
    call ds_dispatch_f40b            ; 0x9845
    push word [data_8462]            ; 0x9848
    push word [data_8464]            ; 0x984c
    mov ax, 0x90e6                   ; 0x9850
    push ax                          ; 0x9853
    call math_loc_15ab               ; 0x9854
    add sp, byte 6                   ; 0x9857
    mov ax, data_9136                ; 0x985a
    push ax                          ; 0x985d
    mov ax, 0xcef                    ; 0x985e
    push ax                          ; 0x9861
    call ds_dispatch_b53b            ; 0x9862
    add sp, byte 4                   ; 0x9865
    mov byte [data_9186], 0          ; 0x9868
    mov ax, 0x43                     ; 0x986d
    push ax                          ; 0x9870
    push ax                          ; 0x9871
    mov ax, 1                        ; 0x9872
    push ax                          ; 0x9875
    mov ax, data_9186                ; 0x9876
    push ax                          ; 0x9879
    mov ax, data_9136                ; 0x987a
    push ax                          ; 0x987d
    mov ax, 0x90e6                   ; 0x987e
    push ax                          ; 0x9881
    mov ax, 0                        ; 0x9882
    push ax                          ; 0x9885
    call api_idx_0004_4              ; 0x9886
    add sp, byte 0x0e                ; 0x9889
    mov ax, word [data_9058]         ; 0x988c
    mov cx, 2                        ; 0x988f
    cwd                              ; 0x9892
    idiv cx                          ; 0x9893
    push ax                          ; 0x9895
    call api_idx_0004_5              ; 0x9896
    pop cx                           ; 0x9899
    ret                              ; 0x989a
api_idx_0006_7:
    mov ax, 0xfffa                   ; 0x989b
    call ds_dispatch_f40b            ; 0x989e
    cmp word [data_8464], byte 0     ; 0x98a1
    jne short @..api_idx_0006_7.l3   ; 0x98a6
    mov ax, 0x248                    ; 0x98a8
    imul word [data_8462]            ; 0x98ab
    mov bx, ax                       ; 0x98af
    mov ax, word [bx + 0x5c18]       ; 0x98b1
    push ax                          ; 0x98b5
    mov al, byte [bx + 0x5d7d]       ; 0x98b6
    sub ah, ah                       ; 0x98ba
    mov cx, ax                       ; 0x98bc
    pop ax                           ; 0x98be
    add ax, cx                       ; 0x98bf
    add ax, strict word 0x32         ; 0x98c1
    mov word [bp - 0x0006], ax       ; 0x98c4
    mov word [bp - 0x0002], 1        ; 0x98c7
    jmp short @..api_idx_0006_7.l2   ; 0x98cc
@..api_idx_0006_7.l1:
    mov ax, word [bp - 0x0002]       ; 0x98ce
    shl ax, 1                        ; 0x98d1
    mov bx, ax                       ; 0x98d3
    mov bx, word [bx - 0x7b7e]       ; 0x98d5
    mov al, byte [bx + 0x1a1]        ; 0x98d9
    sub ah, ah                       ; 0x98dd
    push ax                          ; 0x98df
    mov ax, word [bp - 0x0002]       ; 0x98e0
    shl ax, 1                        ; 0x98e3
    mov bx, ax                       ; 0x98e5
    mov bx, word [bx - 0x7b70]       ; 0x98e7
    mov al, byte [bx + 0x80]         ; 0x98eb
    sub ah, ah                       ; 0x98ef
    mov cx, ax                       ; 0x98f1
    pop ax                           ; 0x98f3
    add ax, cx                       ; 0x98f4
    push ax                          ; 0x98f6
    mov al, byte [bx + 0x8d]         ; 0x98f7
    sub ah, ah                       ; 0x98fb
    mov cx, ax                       ; 0x98fd
    pop ax                           ; 0x98ff
    add ax, cx                       ; 0x9900
    add ax, strict word 0xfff7       ; 0x9902
    sub word [bp - 0x0006], ax       ; 0x9905
    inc word [bp - 0x0002]           ; 0x9908
@..api_idx_0006_7.l2:
    mov ax, word [bp - 0x0002]       ; 0x990b
    cmp ax, word [data_8466]         ; 0x990e
    jle short @..api_idx_0006_7.l1   ; 0x9912
    jmp short @..api_idx_0006_7.l7   ; 0x9914
@..api_idx_0006_7.l3:
    mov bx, word [bp + 0x4]          ; 0x9916
    mov ax, word [bx]                ; 0x9919
    mov cx, 5                        ; 0x991b
    imul cx                          ; 0x991e
    add ax, strict word 0x32         ; 0x9920
    mov word [bp - 0x0006], ax       ; 0x9923
    mov ax, word [data_69c8]         ; 0x9926
    push ax                          ; 0x9929
    cmp ax, strict word 3            ; 0x992a
    pop ax                           ; 0x992d
    jle short @..api_idx_0006_7.l4   ; 0x992e
    mov ax, 3                        ; 0x9930
@..api_idx_0006_7.l4:
    mov word [bp - 0x0004], ax       ; 0x9933
    mov word [bp - 0x0002], 0        ; 0x9936
    jmp short @..api_idx_0006_7.l6   ; 0x993b
@..api_idx_0006_7.l5:
    mov ax, 0x248                    ; 0x993d
    imul word [bp - 0x0002]          ; 0x9940
    mov bx, ax                       ; 0x9943
    mov ax, word [bx + 0x5c18]       ; 0x9945
    push ax                          ; 0x9949
    mov al, byte [bx + 0x5d65]       ; 0x994a
    sub ah, ah                       ; 0x994e
    mov cx, ax                       ; 0x9950
    pop ax                           ; 0x9952
    add ax, cx                       ; 0x9953
    add ax, strict word 0xfff7       ; 0x9955
    sub word [bp - 0x0006], ax       ; 0x9958
    inc word [bp - 0x0002]           ; 0x995b
@..api_idx_0006_7.l6:
    mov ax, word [bp - 0x0002]       ; 0x995e
    cmp ax, word [bp - 0x0004]       ; 0x9961
    jl short @..api_idx_0006_7.l5    ; 0x9964
@..api_idx_0006_7.l7:
    push word [data_8462]            ; 0x9966
    push word [data_8464]            ; 0x996a
    mov ax, 0x90e6                   ; 0x996e
    push ax                          ; 0x9971
    call math_loc_15ab               ; 0x9972
    add sp, byte 6                   ; 0x9975
    mov ax, data_9136                ; 0x9978
    push ax                          ; 0x997b
    mov ax, 0xdbb                    ; 0x997c
    push ax                          ; 0x997f
    call ds_dispatch_b53b            ; 0x9980
    add sp, byte 4                   ; 0x9983
    mov byte [data_9186], 0          ; 0x9986
    mov ax, 0x43                     ; 0x998b
    push ax                          ; 0x998e
    push ax                          ; 0x998f
    cmp word [data_8464], byte 0     ; 0x9990
    jne short @..api_idx_0006_7.l8   ; 0x9995
    mov ax, 1                        ; 0x9997
@..api_idx_0006_7.l8:
    push ax                          ; 0x999a
    mov ax, data_9186                ; 0x999b
    push ax                          ; 0x999e
    mov ax, data_9136                ; 0x999f
    push ax                          ; 0x99a2
    mov ax, 0x90e6                   ; 0x99a3
    push ax                          ; 0x99a6
    mov ax, 0                        ; 0x99a7
    push ax                          ; 0x99aa
    call api_idx_0004_4              ; 0x99ab
    add sp, byte 0x0e                ; 0x99ae
    mov ax, word [data_9058]         ; 0x99b1
    mov cx, 2                        ; 0x99b4
    cwd                              ; 0x99b7
    idiv cx                          ; 0x99b8
    push ax                          ; 0x99ba
    call api_idx_0004_5              ; 0x99bb
    pop cx                           ; 0x99be
    mov ax, 0x64                     ; 0x99bf
    push ax                          ; 0x99c2
    call ds_dispatch_b7a9            ; 0x99c3
    pop cx                           ; 0x99c6
    cmp ax, word [bp - 0x0006]       ; 0x99c7
    jge short @..api_idx_0006_7.l10  ; 0x99ca
    mov bx, word [bp + 0x4]          ; 0x99cc
    mov byte [bx + 0x2b], 1          ; 0x99cf
    mov ax, 1                        ; 0x99d3
    push ax                          ; 0x99d6
    mov ax, 0x11                     ; 0x99d7
    push ax                          ; 0x99da
    push word [data_8462]            ; 0x99db
    call math_loc_1bf4               ; 0x99df
    add sp, byte 6                   ; 0x99e2
    mov ax, 2                        ; 0x99e5
    push ax                          ; 0x99e8
    mov ax, 0x43                     ; 0x99e9
    push ax                          ; 0x99ec
    mov ax, 0xdc0                    ; 0x99ed
    push ax                          ; 0x99f0
    call api_idx_0050                ; 0x99f1
    add sp, byte 6                   ; 0x99f4
    cmp word [data_8464], byte 0     ; 0x99f7
    jne short @..api_idx_0006_7.l9   ; 0x99fc
    mov ax, 0                        ; 0x99fe
    push ax                          ; 0x9a01
    push word [data_8462]            ; 0x9a02
    call api_idx_0004_2              ; 0x9a06
    add sp, byte 4                   ; 0x9a09
@..api_idx_0006_7.l9:
    jmp short @..api_idx_0006_7.l11  ; 0x9a0c
@..api_idx_0006_7.l10:
    mov ax, 2                        ; 0x9a0e
    push ax                          ; 0x9a11
    mov ax, 0x43                     ; 0x9a12
    push ax                          ; 0x9a15
    mov ax, 0xdc1                    ; 0x9a16
    push ax                          ; 0x9a19
    call api_idx_0050                ; 0x9a1a
    add sp, byte 6                   ; 0x9a1d
@..api_idx_0006_7.l11:
    mov ax, word [data_9058]         ; 0x9a20
    mov cx, 2                        ; 0x9a23
    cwd                              ; 0x9a26
    idiv cx                          ; 0x9a27
    push ax                          ; 0x9a29
    call api_idx_0004_5              ; 0x9a2a
    pop cx                           ; 0x9a2d
    ret                              ; 0x9a2e
api_idx_0010_3:
    mov ax, 0xfff0                   ; 0x9a2f
    call ds_dispatch_f40b            ; 0x9a32
    push word [data_8462]            ; 0x9a35
    push word [data_8464]            ; 0x9a39
    mov ax, 0x90e6                   ; 0x9a3d
    push ax                          ; 0x9a40
    call math_loc_15ab               ; 0x9a41
    add sp, byte 6                   ; 0x9a44
    mov ax, data_9136                ; 0x9a47
    push ax                          ; 0x9a4a
    mov ax, 0xdbd                    ; 0x9a4b
    push ax                          ; 0x9a4e
    call ds_dispatch_b53b            ; 0x9a4f
    add sp, byte 4                   ; 0x9a52
    mov byte [data_9186], 0          ; 0x9a55
    mov bx, word [bp + 0x4]          ; 0x9a5a
    mov ax, word [bx]                ; 0x9a5d
    add ax, strict word 0x5a         ; 0x9a5f
    mov word [bp - 0x000e], ax       ; 0x9a62
    cmp word [data_8464], byte 0     ; 0x9a65
    jne short @..api_idx_0010_3.l3   ; 0x9a6a
    mov word [bp - 0x0002], 1        ; 0x9a6c
    jmp short @..api_idx_0010_3.l2   ; 0x9a71
@..api_idx_0010_3.l1:
    mov ax, word [bp - 0x0002]       ; 0x9a73
    shl ax, 1                        ; 0x9a76
    mov bx, ax                       ; 0x9a78
    mov bx, word [bx - 0x7b70]       ; 0x9a7a
    mov al, byte [bx + 0x80]         ; 0x9a7e
    sub ah, ah                       ; 0x9a82
    push ax                          ; 0x9a84
    mov ax, word [bp - 0x0002]       ; 0x9a85
    shl ax, 1                        ; 0x9a88
    mov bx, ax                       ; 0x9a8a
    mov bx, word [bx - 0x7b7e]       ; 0x9a8c
    mov al, byte [bx + 0x1a1]        ; 0x9a90
    sub ah, ah                       ; 0x9a94
    mov cx, ax                       ; 0x9a96
    pop ax                           ; 0x9a98
    imul cx                          ; 0x9a99
    mov cx, ax                       ; 0x9a9b
    mov ax, word [bp - 0x000e]       ; 0x9a9d
    sub ax, cx                       ; 0x9aa0
    push ax                          ; 0x9aa2
    mov ax, word [bp - 0x0002]       ; 0x9aa3
    shl ax, 1                        ; 0x9aa6
    mov bx, ax                       ; 0x9aa8
    mov bx, word [bx - 0x7b70]       ; 0x9aaa
    mov al, byte [bx + 0x8f]         ; 0x9aae
    sub ah, ah                       ; 0x9ab2
    mov cx, ax                       ; 0x9ab4
    mov ax, word [data_8464]         ; 0x9ab6
    shl ax, 1                        ; 0x9ab9
    mov bx, ax                       ; 0x9abb
    mov bx, word [bx - 0x7b70]       ; 0x9abd
    mov al, byte [bx + 0x8f]         ; 0x9ac1
    sub ah, ah                       ; 0x9ac5
    mov dx, ax                       ; 0x9ac7
    sub cx, ax                       ; 0x9ac9
    shl cx, 1                        ; 0x9acb
    pop ax                           ; 0x9acd
    sub ax, cx                       ; 0x9ace
    mov word [bp - 0x000e], ax       ; 0x9ad0
    inc word [bp - 0x0002]           ; 0x9ad3
@..api_idx_0010_3.l2:
    mov ax, word [bp - 0x0002]       ; 0x9ad6
    cmp ax, word [data_8466]         ; 0x9ad9
    jle short @..api_idx_0010_3.l1   ; 0x9add
    jmp short @..api_idx_0010_3.l4   ; 0x9adf
@..api_idx_0010_3.l3:
    mov bx, word [bp + 0x4]          ; 0x9ae1
    mov al, byte [bx + 0x20]         ; 0x9ae4
    sub ah, ah                       ; 0x9ae7
    mov cx, 0x2c                     ; 0x9ae9
    imul cx                          ; 0x9aec
    mov si, ax                       ; 0x9aee
    mov al, byte [bx + 0x1f]         ; 0x9af0
    sub ah, ah                       ; 0x9af3
    shl ax, 1                        ; 0x9af5
    mov bx, ax                       ; 0x9af7
    mov bx, word [bx - 0x7b7e]       ; 0x9af9
    mov cx, word [bx + si]           ; 0x9afd
    mov ax, word [bp - 0x000e]       ; 0x9aff
    sub ax, cx                       ; 0x9b02
    push ax                          ; 0x9b04
    mov bx, word [bp + 0x4]          ; 0x9b05
    mov al, byte [bx + 0x1f]         ; 0x9b08
    sub ah, ah                       ; 0x9b0b
    shl ax, 1                        ; 0x9b0d
    mov bx, ax                       ; 0x9b0f
    mov bx, word [bx - 0x7b70]       ; 0x9b11
    mov al, byte [bx + 0x8f]         ; 0x9b15
    sub ah, ah                       ; 0x9b19
    mov cx, ax                       ; 0x9b1b
    mov ax, word [data_8464]         ; 0x9b1d
    shl ax, 1                        ; 0x9b20
    mov bx, ax                       ; 0x9b22
    mov bx, word [bx - 0x7b70]       ; 0x9b24
    mov al, byte [bx + 0x8f]         ; 0x9b28
    sub ah, ah                       ; 0x9b2c
    mov dx, ax                       ; 0x9b2e
    sub cx, ax                       ; 0x9b30
    shl cx, 1                        ; 0x9b32
    pop ax                           ; 0x9b34
    sub ax, cx                       ; 0x9b35
    mov word [bp - 0x000e], ax       ; 0x9b37
    mov al, byte [bx + 0xe2]         ; 0x9b3a
    sub ah, ah                       ; 0x9b3e
    test ax, 8                       ; 0x9b40
    je short @..api_idx_0010_3.l4    ; 0x9b43
    mov ax, data_9136                ; 0x9b45
    push ax                          ; 0x9b48
    mov ax, 0xdc5                    ; 0x9b49
    push ax                          ; 0x9b4c
    call ds_dispatch_b53b            ; 0x9b4d
    add sp, byte 4                   ; 0x9b50
@..api_idx_0010_3.l4:
    cmp word [data_845a], byte 1     ; 0x9b53
    jne short @..api_idx_0010_3.l5   ; 0x9b58
    mov word [bp - 0x000e], 0        ; 0x9b5a
@..api_idx_0010_3.l5:
    mov ax, 0                        ; 0x9b5f
    push ax                          ; 0x9b62
    mov ax, 0x43                     ; 0x9b63
    push ax                          ; 0x9b66
    cmp word [data_8464], byte 0     ; 0x9b67
    jne short @..api_idx_0010_3.l6   ; 0x9b6c
    mov ax, 1                        ; 0x9b6e
@..api_idx_0010_3.l6:
    push ax                          ; 0x9b71
    mov ax, data_9186                ; 0x9b72
    push ax                          ; 0x9b75
    mov ax, data_9136                ; 0x9b76
    push ax                          ; 0x9b79
    mov ax, 0x90e6                   ; 0x9b7a
    push ax                          ; 0x9b7d
    mov ax, 0                        ; 0x9b7e
    push ax                          ; 0x9b81
    call api_idx_0004_4              ; 0x9b82
    add sp, byte 0x0e                ; 0x9b85
    mov ax, word [data_9058]         ; 0x9b88
    mov cx, 2                        ; 0x9b8b
    cwd                              ; 0x9b8e
    idiv cx                          ; 0x9b8f
    push ax                          ; 0x9b91
    call api_idx_0004_5              ; 0x9b92
    pop cx                           ; 0x9b95
    mov ax, 0x64                     ; 0x9b96
    push ax                          ; 0x9b99
    call ds_dispatch_b7a9            ; 0x9b9a
    pop cx                           ; 0x9b9d
    cmp ax, word [bp - 0x000e]       ; 0x9b9e
    jl short @..api_idx_0010_3.l7    ; 0x9ba1
    jmp near @..local.l475           ; 0x9ba3
@..api_idx_0010_3.l7:
    cmp word [data_8464], byte 0     ; 0x9ba6
    je short @..api_idx_0010_3.l8    ; 0x9bab
    mov ax, word [data_8464]         ; 0x9bad
    cmp ax, strict word 6            ; 0x9bb0
    je short @..api_idx_0010_3.l8    ; 0x9bb3
    shl ax, 1                        ; 0x9bb5
    mov bx, ax                       ; 0x9bb7
    mov bx, word [bx - 0x7b70]       ; 0x9bb9
    mov al, byte [bx + 0xe2]         ; 0x9bbd
    sub ah, ah                       ; 0x9bc1
    test ax, 1                       ; 0x9bc3
    je short @..api_idx_0010_3.l8    ; 0x9bc6
    mov word [data_84a0], 0          ; 0x9bc8
@..api_idx_0010_3.l8:
    mov bx, word [bp + 0x4]          ; 0x9bce
    mov byte [bx + 0x2b], 2          ; 0x9bd1
    mov ax, 2                        ; 0x9bd5
    push ax                          ; 0x9bd8
    mov ax, 0x43                     ; 0x9bd9
    push ax                          ; 0x9bdc
    mov ax, 0xdc2                    ; 0x9bdd
    push ax                          ; 0x9be0
    call api_idx_0050                ; 0x9be1
    add sp, byte 6                   ; 0x9be4
    mov bx, word [bp + 0x4]          ; 0x9be7
    cmp byte [bx + 0x2a], 0xff       ; 0x9bea
    jne short @..api_idx_0010_3.l9   ; 0x9bee
    jmp near @..local.l473           ; 0x9bf0
@..api_idx_0010_3.l9:
    mov al, byte [bx + 0x2a]         ; 0x9bf3
    cbw                              ; 0x9bf6
    mov cx, 0xa                      ; 0x9bf7
    cwd                              ; 0x9bfa
    idiv cx                          ; 0x9bfb
    mov word [bp - 0x0008], ax       ; 0x9bfd
    mov al, byte [bx + 0x2a]         ; 0x9c00
    cbw                              ; 0x9c03
    cwd                              ; 0x9c04
    idiv cx                          ; 0x9c05
    mov word [bp - 0x000a], dx       ; 0x9c07
    call loc_1849                    ; 0x9c0a
    mov word [bp - 0x0010], ax       ; 0x9c0d
    mov word [bp - 0x0002], 0        ; 0x9c10
@..api_idx_0010_3.l10:
    mov word [data_845e], 0xfffe     ; 0x9c15
    call api_idx_0006                ; 0x9c1b
    mov word [bp - 0x0004], 0        ; 0x9c1e
@..api_idx_0010_3.l11:
    mov word [bp - 0x0006], 0        ; 0x9c23
@..api_idx_0010_3.l12:
    mov ax, word [bp - 0x0006]       ; 0x9c28
    mov cx, 2                        ; 0x9c2b
    cwd                              ; 0x9c2e
    idiv cx                          ; 0x9c2f
    mov ax, dx                       ; 0x9c31
    cmp ax, strict word 1            ; 0x9c33
    je short @..local.l462           ; 0x9c36
    cmp word [bp - 0x0006], byte 0   ; 0x9c38
    jne short @..local.l463          ; 0x9c3c
@..local.l462:
    mov ax, word [bp - 0x0002]       ; 0x9c3e
    shl ax, 1                        ; 0x9c41
    mov bx, ax                       ; 0x9c43
    mov cx, word [bx + 0x606]        ; 0x9c45
    mov ax, 0                        ; 0x9c49
    sub ax, cx                       ; 0x9c4c
    jmp short @..local.l464          ; 0x9c4e
@..local.l463:
    mov ax, word [bp - 0x0002]       ; 0x9c50
    shl ax, 1                        ; 0x9c53
    mov bx, ax                       ; 0x9c55
    mov ax, word [bx + 0x606]        ; 0x9c57
@..local.l464:
    mov word [bp - 0x000c], ax       ; 0x9c5b
    push word [bp - 0x0010]          ; 0x9c5e
    mov ax, 0xf8                     ; 0x9c61
    push ax                          ; 0x9c64
    mov ax, 0x48                     ; 0x9c65
    push ax                          ; 0x9c68
    mov ax, 6                        ; 0x9c69
    imul word [bp - 0x0004]          ; 0x9c6c
    mov cx, word [bp - 0x0006]       ; 0x9c6f
    shl cx, 1                        ; 0x9c72
    add ax, cx                       ; 0x9c74
    mov bx, ax                       ; 0x9c76
    mov cx, word [bx + 0x580]        ; 0x9c78
    mov ax, 0x64                     ; 0x9c7c
    sub ax, cx                       ; 0x9c7f
    push ax                          ; 0x9c81
    mov ax, word [bp - 0x0008]       ; 0x9c82
    cmp ax, word [bp - 0x0004]       ; 0x9c85
    jne short @..local.l465          ; 0x9c88
    mov ax, word [bp - 0x000a]       ; 0x9c8a
    cmp ax, word [bp - 0x0006]       ; 0x9c8d
    jne short @..local.l465          ; 0x9c90
    mov ax, word [bp - 0x000c]       ; 0x9c92
    jmp short @..local.l466          ; 0x9c95
@..local.l465:
    mov ax, 0                        ; 0x9c97
@..local.l466:
    push ax                          ; 0x9c9a
    push word [bp - 0x0006]          ; 0x9c9b
    push word [bp - 0x0004]          ; 0x9c9e
    call api_idx_001c                ; 0x9ca1
    add sp, byte 0x0e                ; 0x9ca4
    push word [bp - 0x0006]          ; 0x9ca7
    push word [bp - 0x0004]          ; 0x9caa
    call api_idx_0016                ; 0x9cad
    add sp, byte 4                   ; 0x9cb0
    inc word [bp - 0x0006]           ; 0x9cb3
    mov ax, word [bp - 0x0006]       ; 0x9cb6
    cmp ax, strict word 3            ; 0x9cb9
    jge short @..local.l467          ; 0x9cbc
    jmp near @..api_idx_0010_3.l12   ; 0x9cbe
@..local.l467:
    inc word [bp - 0x0004]           ; 0x9cc1
    mov ax, word [bp - 0x0004]       ; 0x9cc4
    cmp ax, strict word 3            ; 0x9cc7
    jge short @..local.l468          ; 0x9cca
    jmp near @..api_idx_0010_3.l11   ; 0x9ccc
@..local.l468:
    call api_idx_000e_2              ; 0x9ccf
    call ds_dispatch_da22            ; 0x9cd2
    mov word [data_845e], 0          ; 0x9cd5
@..local.l469:
    call api_idx_0006                ; 0x9cdb
    cmp word [data_845e], byte 0xfe  ; 0x9cde
    jne short @..local.l469          ; 0x9ce3
    call loc_1849                    ; 0x9ce5
    mov word [bp - 0x0010], ax       ; 0x9ce8
    cmp word [bp - 0x0010], byte 0   ; 0x9ceb
    je short @..local.l470           ; 0x9cef
    mov ax, word [data_906c]         ; 0x9cf1
    inc ax                           ; 0x9cf4
    mov cx, 2                        ; 0x9cf5
    cwd                              ; 0x9cf8
    idiv cx                          ; 0x9cf9
    mov word [data_906c], dx         ; 0x9cfb
    mov ax, word [data_82e8]         ; 0x9cff
    inc ax                           ; 0x9d02
    cwd                              ; 0x9d03
    idiv cx                          ; 0x9d04
    mov word [data_82e8], dx         ; 0x9d06
@..local.l470:
    cmp word [bp - 0x0010], byte 0   ; 0x9d0a
    jne short @..local.l471          ; 0x9d0e
    jmp near @..api_idx_0010_3.l10   ; 0x9d10
@..local.l471:
    inc word [bp - 0x0002]           ; 0x9d13
    mov ax, word [bp - 0x0002]       ; 0x9d16
    cmp ax, strict word 4            ; 0x9d19
    jge short @..local.l472          ; 0x9d1c
    jmp near @..api_idx_0010_3.l10   ; 0x9d1e
@..local.l472:
    mov bx, word [bp + 0x4]          ; 0x9d21
    mov al, byte [bx + 0x2a]         ; 0x9d24
    cbw                              ; 0x9d27
    mov cx, 0xa                      ; 0x9d28
    cwd                              ; 0x9d2b
    idiv cx                          ; 0x9d2c
    mov word [bp - 0x0004], ax       ; 0x9d2e
    mov al, byte [bx + 0x2a]         ; 0x9d31
    cbw                              ; 0x9d34
    cwd                              ; 0x9d35
    idiv cx                          ; 0x9d36
    mov word [bp - 0x0006], dx       ; 0x9d38
    mov ax, 6                        ; 0x9d3b
    imul word [bp - 0x0004]          ; 0x9d3e
    mov cx, word [bp - 0x0006]       ; 0x9d41
    shl cx, 1                        ; 0x9d44
    add ax, cx                       ; 0x9d46
    mov bx, ax                       ; 0x9d48
    mov word [bx - 0x7bc6], 0        ; 0x9d4a
    mov bx, word [bp + 0x4]          ; 0x9d50
    mov byte [bx + 0x2a], 0xff       ; 0x9d53
    call loc_1a35                    ; 0x9d57
    jmp short @..local.l474          ; 0x9d5a
@..local.l473:
    mov ax, word [data_9058]         ; 0x9d5c
    mov cx, 2                        ; 0x9d5f
    cwd                              ; 0x9d62
    idiv cx                          ; 0x9d63
    push ax                          ; 0x9d65
    call api_idx_0004_5              ; 0x9d66
    pop cx                           ; 0x9d69
@..local.l474:
    jmp short @..local.l476          ; 0x9d6a
@..local.l475:
    mov ax, 2                        ; 0x9d6c
    push ax                          ; 0x9d6f
    mov ax, 0x43                     ; 0x9d70
    push ax                          ; 0x9d73
    mov ax, 0xdc3                    ; 0x9d74
    push ax                          ; 0x9d77
    call api_idx_0050                ; 0x9d78
    add sp, byte 6                   ; 0x9d7b
    mov ax, word [data_9058]         ; 0x9d7e
    mov cx, 2                        ; 0x9d81
    cwd                              ; 0x9d84
    idiv cx                          ; 0x9d85
    push ax                          ; 0x9d87
    call api_idx_0004_5              ; 0x9d88
    pop cx                           ; 0x9d8b
@..local.l476:
    ret                              ; 0x9d8c
math_loc_9d8d:
    mov ax, 0xfd8a                   ; 0x9d8d
    call ds_dispatch_f40b            ; 0x9d90
    mov ax, 0x248                    ; 0x9d93
    push ax                          ; 0x9d96
    mov ax, 0x248                    ; 0x9d97
    imul word [bp + 0x4]             ; 0x9d9a
    add ax, 0x5bf4                   ; 0x9d9d
    push ax                          ; 0x9da0
    mov ax, 0x248                    ; 0x9da1
    imul word [bp + 0x6]             ; 0x9da4
    add ax, 0x5bf4                   ; 0x9da7
    push ax                          ; 0x9daa
    call string_loc_a520             ; 0x9dab
    add sp, byte 6                   ; 0x9dae
    mov ax, 0x2c                     ; 0x9db1
    push ax                          ; 0x9db4
    mov ax, 0x2c                     ; 0x9db5
    imul word [bp + 0x4]             ; 0x9db8
    mov cx, ax                       ; 0x9dbb
    mov ax, word [data_8482]         ; 0x9dbd
    add ax, cx                       ; 0x9dc0
    push ax                          ; 0x9dc2
    mov ax, 0x2c                     ; 0x9dc3
    imul word [bp + 0x6]             ; 0x9dc6
    mov cx, ax                       ; 0x9dc9
    mov ax, word [data_8482]         ; 0x9dcb
    add ax, cx                       ; 0x9dce
    push ax                          ; 0x9dd0
    call string_loc_a520             ; 0x9dd1
    add sp, byte 6                   ; 0x9dd4
    mov ax, word [bp + 0x6]          ; 0x9dd7
    shl ax, 1                        ; 0x9dda
    mov bx, ax                       ; 0x9ddc
    mov ax, word [bx - 0x750e]       ; 0x9dde
    mov word [bp - 0x0276], ax       ; 0x9de2
    mov ax, word [bp + 0x4]          ; 0x9de6
    shl ax, 1                        ; 0x9de9
    mov bx, ax                       ; 0x9deb
    mov ax, word [bx - 0x750e]       ; 0x9ded
    mov cx, word [bp + 0x6]          ; 0x9df1
    shl cx, 1                        ; 0x9df4
    mov bx, cx                       ; 0x9df6
    mov word [bx - 0x750e], ax       ; 0x9df8
    mov ax, word [bp - 0x0276]       ; 0x9dfc
    mov cx, word [bp + 0x4]          ; 0x9e00
    shl cx, 1                        ; 0x9e03
    mov bx, cx                       ; 0x9e05
    mov word [bx - 0x750e], ax       ; 0x9e07
    mov ax, word [bp + 0x6]          ; 0x9e0b
    shl ax, 1                        ; 0x9e0e
    mov bx, ax                       ; 0x9e10
    mov ax, word [bx + 0x69bc]       ; 0x9e12
    mov word [bp - 0x0276], ax       ; 0x9e16
    mov bx, cx                       ; 0x9e1a
    mov ax, word [bx + 0x69bc]       ; 0x9e1c
    mov cx, word [bp + 0x6]          ; 0x9e20
    shl cx, 1                        ; 0x9e23
    mov bx, cx                       ; 0x9e25
    mov word [bx + 0x69bc], ax       ; 0x9e27
    mov ax, word [bp - 0x0276]       ; 0x9e2b
    mov cx, word [bp + 0x4]          ; 0x9e2f
    shl cx, 1                        ; 0x9e32
    mov bx, cx                       ; 0x9e34
    mov word [bx + 0x69bc], ax       ; 0x9e36
    mov ax, 0                        ; 0x9e3a
    push ax                          ; 0x9e3d
    push word [bp + 0x4]             ; 0x9e3e
    call api_idx_0004_2              ; 0x9e41
    add sp, byte 4                   ; 0x9e44
    mov ax, 0                        ; 0x9e47
    push ax                          ; 0x9e4a
    push word [bp + 0x6]             ; 0x9e4b
    call api_idx_0004_2              ; 0x9e4e
    add sp, byte 4                   ; 0x9e51
    mov ax, 6                        ; 0x9e54
    push ax                          ; 0x9e57
    call api_idx_0004_5              ; 0x9e58
    pop cx                           ; 0x9e5b
    ret                              ; 0x9e5c
api_idx_0006_8:
    mov ax, 0xfffa                   ; 0x9e5d
    call ds_dispatch_f40b            ; 0x9e60
    mov ax, word [bp + 0x4]          ; 0x9e63
    cmp ax, word [bp + 0x6]          ; 0x9e66
    jne short @..local.l477          ; 0x9e69
    ret                              ; 0x9e6b
@..local.l477:
    mov cx, 2                        ; 0x9e6c
    cwd                              ; 0x9e6f
    idiv cx                          ; 0x9e70
    mov ax, dx                       ; 0x9e72
    push ax                          ; 0x9e74
    mov ax, word [bp + 0x6]          ; 0x9e75
    cwd                              ; 0x9e78
    idiv cx                          ; 0x9e79
    mov cx, dx                       ; 0x9e7b
    pop ax                           ; 0x9e7d
    cmp ax, cx                       ; 0x9e7e
    jne short @..local.l478          ; 0x9e80
    mov word [bp - 0x0004], 0        ; 0x9e82
    jmp short @..local.l480          ; 0x9e87
@..local.l478:
    test cx, cx                      ; 0x9e89
    jne short @..local.l479          ; 0x9e8b
    mov word [bp - 0x0004], 1        ; 0x9e8d
    jmp short @..local.l480          ; 0x9e92
@..local.l479:
    mov word [bp - 0x0004], 0xffff   ; 0x9e94
@..local.l480:
    push word [data_8462]            ; 0x9e99
    push word [data_8464]            ; 0x9e9d
    mov ax, 0x90e6                   ; 0x9ea1
    push ax                          ; 0x9ea4
    call math_loc_15ab               ; 0x9ea5
    add sp, byte 6                   ; 0x9ea8
    mov ax, word [bp + 0x4]          ; 0x9eab
    cmp ax, word [bp + 0x6]          ; 0x9eae
    jle short @..local.l481          ; 0x9eb1
    mov ax, data_9136                ; 0x9eb3
    push ax                          ; 0x9eb6
    mov ax, 0xdb9                    ; 0x9eb7
    push ax                          ; 0x9eba
    call ds_dispatch_b53b            ; 0x9ebb
    add sp, byte 4                   ; 0x9ebe
    mov word [bp - 0x0002], 0xfffe   ; 0x9ec1
    jmp short @..local.l482          ; 0x9ec6
@..local.l481:
    mov ax, data_9136                ; 0x9ec8
    push ax                          ; 0x9ecb
    mov ax, 0xdba                    ; 0x9ecc
    push ax                          ; 0x9ecf
    call ds_dispatch_b53b            ; 0x9ed0
    add sp, byte 4                   ; 0x9ed3
    mov word [bp - 0x0002], 2        ; 0x9ed6
@..local.l482:
    mov byte [data_9186], 0          ; 0x9edb
    mov ax, 0                        ; 0x9ee0
    push ax                          ; 0x9ee3
    mov ax, 0x43                     ; 0x9ee4
    push ax                          ; 0x9ee7
    mov ax, 1                        ; 0x9ee8
    push ax                          ; 0x9eeb
    mov ax, data_9186                ; 0x9eec
    push ax                          ; 0x9eef
    mov ax, data_9136                ; 0x9ef0
    push ax                          ; 0x9ef3
    mov ax, 0x90e6                   ; 0x9ef4
    push ax                          ; 0x9ef7
    mov ax, 0                        ; 0x9ef8
    push ax                          ; 0x9efb
    call api_idx_0004_4              ; 0x9efc
    add sp, byte 0x0e                ; 0x9eff
    mov ax, 6                        ; 0x9f02
    push ax                          ; 0x9f05
    call api_idx_0004_5              ; 0x9f06
    pop cx                           ; 0x9f09
@..local.l483:
    mov ax, word [bp + 0x6]          ; 0x9f0a
    add ax, word [bp - 0x0004]       ; 0x9f0d
    cmp ax, word [bp + 0x4]          ; 0x9f10
    je short @..local.l484           ; 0x9f13
    mov ax, word [bp + 0x4]          ; 0x9f15
    add ax, word [bp - 0x0002]       ; 0x9f18
    mov word [bp - 0x0006], ax       ; 0x9f1b
    push ax                          ; 0x9f1e
    push word [bp + 0x4]             ; 0x9f1f
    call math_loc_9d8d               ; 0x9f22
    add sp, byte 4                   ; 0x9f25
    mov ax, word [bp - 0x0002]       ; 0x9f28
    add word [bp + 0x4], ax          ; 0x9f2b
    jmp short @..local.l483          ; 0x9f2e
@..local.l484:
    cmp word [bp - 0x0004], byte 0   ; 0x9f30
    je short @..local.l485           ; 0x9f34
    push word [bp + 0x6]             ; 0x9f36
    mov ax, word [bp + 0x6]          ; 0x9f39
    add ax, word [bp - 0x0004]       ; 0x9f3c
    push ax                          ; 0x9f3f
    call math_loc_9d8d               ; 0x9f40
    add sp, byte 4                   ; 0x9f43
@..local.l485:
    push word [data_9058]            ; 0x9f46
    call api_idx_0004_5              ; 0x9f4a
    pop cx                           ; 0x9f4d
    ret                              ; 0x9f4e
api_idx_005a:
    mov ax, 0xffa6                   ; 0x9f4f
    call ds_dispatch_f40b            ; 0x9f52
    mov bx, word [bp + 0x4]          ; 0x9f55
    mov al, byte [bx + 0x1f]         ; 0x9f58
    sub ah, ah                       ; 0x9f5b
    mov word [bp - 0x000c], ax       ; 0x9f5d
    mov al, byte [bx + 0x20]         ; 0x9f60
    sub ah, ah                       ; 0x9f63
    mov word [bp - 0x000e], ax       ; 0x9f65
    push word [data_8462]            ; 0x9f68
    push word [data_8464]            ; 0x9f6c
    mov ax, 0x90e6                   ; 0x9f70
    push ax                          ; 0x9f73
    call math_loc_15ab               ; 0x9f74
    add sp, byte 6                   ; 0x9f77
    mov word [bp - 0x0004], 0        ; 0x9f7a
    mov word [bp - 0x0006], 0        ; 0x9f7f
    mov word [bp - 0x0012], 0xffff   ; 0x9f84
    cmp word [data_8464], byte 0     ; 0x9f89
    je short @..api_idx_005a.l1      ; 0x9f8e
    jmp near @..local.l503           ; 0x9f90
@..api_idx_005a.l1:
    mov bx, word [bp + 0x4]          ; 0x9f93
    mov ax, word [bx + 0xa]          ; 0x9f96
    mov cx, 0x100                    ; 0x9f99
    cwd                              ; 0x9f9c
    idiv cx                          ; 0x9f9d
    mov word [bp - 0x0008], ax       ; 0x9f9f
    mov ax, word [bx + 0xa]          ; 0x9fa2
    cwd                              ; 0x9fa5
    idiv cx                          ; 0x9fa6
    mov word [bp - 0x000a], dx       ; 0x9fa8
    mov ax, 0                        ; 0x9fab
    push ax                          ; 0x9fae
    mov ax, 0x248                    ; 0x9faf
    imul word [data_8462]            ; 0x9fb2
    push ax                          ; 0x9fb6
    mov ax, 0x78                     ; 0x9fb7
    imul word [bp - 0x0008]          ; 0x9fba
    mov cx, ax                       ; 0x9fbd
    pop ax                           ; 0x9fbf
    add ax, cx                       ; 0x9fc0
    push ax                          ; 0x9fc2
    mov ax, 0xc                      ; 0x9fc3
    imul word [bp - 0x000a]          ; 0x9fc6
    mov cx, ax                       ; 0x9fc9
    pop ax                           ; 0x9fcb
    add ax, cx                       ; 0x9fcc
    mov bx, ax                       ; 0x9fce
    push word [bx + 0x5c34]          ; 0x9fd0
    lea ax, word [bp - 0x005a]       ; 0x9fd4
    push ax                          ; 0x9fd7
    mov ax, 1                        ; 0x9fd8
    push ax                          ; 0x9fdb
    call ds_dispatch_b63c            ; 0x9fdc
    add sp, byte 8                   ; 0x9fdf
    mov ax, 0x248                    ; 0x9fe2
    imul word [data_8462]            ; 0x9fe5
    push ax                          ; 0x9fe9
    mov ax, 0x78                     ; 0x9fea
    imul word [bp - 0x0008]          ; 0x9fed
    mov cx, ax                       ; 0x9ff0
    pop ax                           ; 0x9ff2
    add ax, cx                       ; 0x9ff3
    push ax                          ; 0x9ff5
    mov ax, 0xc                      ; 0x9ff6
    imul word [bp - 0x000a]          ; 0x9ff9
    mov cx, ax                       ; 0x9ffc
    pop ax                           ; 0x9ffe
    add ax, cx                       ; 0x9fff
    mov bx, ax                       ; 0xa001
    mov al, byte [bx + 0x5c3b]       ; 0xa003
    sub ah, ah                       ; 0xa007
    test ax, 0x80                    ; 0xa009
    je short @..api_idx_005a.l2      ; 0xa00c
    lea ax, word [bp - 0x005a]       ; 0xa00e
    push ax                          ; 0xa011
    mov ax, data_9186                ; 0xa012
    push ax                          ; 0xa015
    call ds_dispatch_f364            ; 0xa016
    add sp, byte 4                   ; 0xa019
    jmp short @..api_idx_005a.l3     ; 0xa01c
@..api_idx_005a.l2:
    mov ax, data_9186                ; 0xa01e
    push ax                          ; 0xa021
    mov al, byte [bp - 0x0021]       ; 0xa022
    sub ah, ah                       ; 0xa025
    add ax, 0x1770                   ; 0xa027
    push ax                          ; 0xa02a
    call ds_dispatch_b53b            ; 0xa02b
    add sp, byte 4                   ; 0xa02e
@..api_idx_005a.l3:
    mov ax, data_9186                ; 0xa031
    push ax                          ; 0xa034
    call api_idx_0002                ; 0xa035
    pop cx                           ; 0xa038
    cmp word [bp - 0x0038], byte 0   ; 0xa039
    jne short @..api_idx_005a.l4     ; 0xa03d
    jmp near @..local.l495           ; 0xa03f
@..api_idx_005a.l4:
    mov ax, word [bp - 0x0038]       ; 0xa042
    mov cx, 0x100                    ; 0xa045
    cwd                              ; 0xa048
    idiv cx                          ; 0xa049
    mov word [bp - 0x0004], ax       ; 0xa04b
    mov word [bp - 0x0006], dx       ; 0xa04e
    mov al, byte [bp - 0x0022]       ; 0xa051
    sub ah, ah                       ; 0xa054
    jmp near @..local.l490           ; 0xa056
@..api_idx_005a.l5:
    mov ax, data_9136                ; 0xa059
    push ax                          ; 0xa05c
    mov ax, 0xcf1                    ; 0xa05d
    push ax                          ; 0xa060
    call ds_dispatch_b53b            ; 0xa061
    add sp, byte 4                   ; 0xa064
    jmp near @..local.l494           ; 0xa067
@..api_idx_005a.l6:
    mov ax, data_9136                ; 0xa06a
    push ax                          ; 0xa06d
    mov ax, 0xcf2                    ; 0xa06e
    push ax                          ; 0xa071
    call ds_dispatch_b53b            ; 0xa072
    add sp, byte 4                   ; 0xa075
    mov word [bp - 0x0012], 0x1b     ; 0xa078
    jmp near @..local.l494           ; 0xa07d
@..api_idx_005a.l7:
    mov ax, data_9136                ; 0xa080
    push ax                          ; 0xa083
    mov ax, 0xcf3                    ; 0xa084
    push ax                          ; 0xa087
    call ds_dispatch_b53b            ; 0xa088
    add sp, byte 4                   ; 0xa08b
    jmp near @..local.l494           ; 0xa08e
@..api_idx_005a.l8:
    cmp word [bp - 0x0006], byte 0x61 ; 0xa091
    je short @..api_idx_005a.l9      ; 0xa095
    cmp word [bp - 0x0006], byte 0x62 ; 0xa097
    jne short @..api_idx_005a.l10    ; 0xa09b
@..api_idx_005a.l9:
    mov ax, data_9136                ; 0xa09d
    push ax                          ; 0xa0a0
    mov ax, 0xcf6                    ; 0xa0a1
    push ax                          ; 0xa0a4
    call ds_dispatch_b53b            ; 0xa0a5
    add sp, byte 4                   ; 0xa0a8
    jmp near @..local.l489           ; 0xa0ab
@..api_idx_005a.l10:
    cmp word [bp - 0x0004], byte 0   ; 0xa0ae
    je short @..api_idx_005a.l11     ; 0xa0b2
    jmp near @..local.l487           ; 0xa0b4
@..api_idx_005a.l11:
    mov ax, 0x248                    ; 0xa0b7
    imul word [data_8462]            ; 0xa0ba
    mov bx, ax                       ; 0xa0be
    cmp byte [bx + 0x5d79], 0        ; 0xa0c0
    jbe short @..api_idx_005a.l14    ; 0xa0c5
    mov al, byte [bx + 0x5d79]       ; 0xa0c7
    sub ah, ah                       ; 0xa0cb
    mov cx, 0xf                      ; 0xa0cd
    cwd                              ; 0xa0d0
    idiv cx                          ; 0xa0d1
    inc ax                           ; 0xa0d3
    inc ax                           ; 0xa0d4
    push ax                          ; 0xa0d5
    mov ax, 6                        ; 0xa0d6
    imul word [bp - 0x0006]          ; 0xa0d9
    mov bx, ax                       ; 0xa0dc
    mov al, byte [bx + 0x621]        ; 0xa0de
    sub ah, ah                       ; 0xa0e2
    mov cx, ax                       ; 0xa0e4
    pop ax                           ; 0xa0e6
    sub ax, cx                       ; 0xa0e7
    mov word [bp - 0x0004], ax       ; 0xa0e9
    mov ax, 1                        ; 0xa0ec
    push ax                          ; 0xa0ef
    mov ax, 0xd                      ; 0xa0f0
    push ax                          ; 0xa0f3
    push word [data_8462]            ; 0xa0f4
    call math_loc_1bf4               ; 0xa0f8
    add sp, byte 6                   ; 0xa0fb
    cmp word [bp - 0x0004], byte 0   ; 0xa0fe
    jge short @..api_idx_005a.l12    ; 0xa102
    mov word [bp - 0x0004], 0        ; 0xa104
@..api_idx_005a.l12:
    cmp word [bp - 0x0004], byte 6   ; 0xa109
    jle short @..api_idx_005a.l13    ; 0xa10d
    mov word [bp - 0x0004], 6        ; 0xa10f
@..api_idx_005a.l13:
    cmp word [bp - 0x0004], byte 0   ; 0xa114
    jle short @..api_idx_005a.l14    ; 0xa118
    mov ax, 0x64                     ; 0xa11a
    push ax                          ; 0xa11d
    call ds_dispatch_b7a9            ; 0xa11e
    pop cx                           ; 0xa121
    push ax                          ; 0xa122
    mov ax, 0xa                      ; 0xa123
    imul word [bp - 0x0004]          ; 0xa126
    mov cx, ax                       ; 0xa129
    pop ax                           ; 0xa12b
    cmp ax, cx                       ; 0xa12c
    jge short @..api_idx_005a.l14    ; 0xa12e
    dec word [bp - 0x0004]           ; 0xa130
    jmp short @..api_idx_005a.l13    ; 0xa133
@..api_idx_005a.l14:
    cmp word [bp - 0x0004], byte 0   ; 0xa135
    jne short @..api_idx_005a.l15    ; 0xa139
    mov ax, data_9136                ; 0xa13b
    push ax                          ; 0xa13e
    mov ax, 0xce9                    ; 0xa13f
    push ax                          ; 0xa142
    call ds_dispatch_b53b            ; 0xa143
    add sp, byte 4                   ; 0xa146
    jmp short @..local.l486          ; 0xa149
@..api_idx_005a.l15:
    mov ax, data_9136                ; 0xa14b
    push ax                          ; 0xa14e
    mov ax, 0xce8                    ; 0xa14f
    push ax                          ; 0xa152
    call ds_dispatch_b53b            ; 0xa153
    add sp, byte 4                   ; 0xa156
    push word [bp - 0x0004]          ; 0xa159
    call ds_dispatch_b7a9            ; 0xa15c
    pop cx                           ; 0xa15f
    add ax, word [bp - 0x0004]       ; 0xa160
    inc ax                           ; 0xa163
    push ax                          ; 0xa164
    push word [bp + 0x4]             ; 0xa165
    call loc_182b                    ; 0xa168
    add sp, byte 4                   ; 0xa16b
@..local.l486:
    jmp short @..local.l489          ; 0xa16e
@..local.l487:
    mov ax, 0x248                    ; 0xa170
    imul word [data_8462]            ; 0xa173
    push ax                          ; 0xa177
    mov ax, 0x78                     ; 0xa178
    imul word [bp - 0x0008]          ; 0xa17b
    mov cx, ax                       ; 0xa17e
    pop ax                           ; 0xa180
    add ax, cx                       ; 0xa181
    push ax                          ; 0xa183
    mov ax, 0xc                      ; 0xa184
    imul word [bp - 0x000a]          ; 0xa187
    mov cx, ax                       ; 0xa18a
    pop ax                           ; 0xa18c
    add ax, cx                       ; 0xa18d
    mov bx, ax                       ; 0xa18f
    cmp word [bx + 0x5c34], strict word 0x1d4 ; 0xa191
    jne short @..local.l488          ; 0xa197
    mov ax, data_9136                ; 0xa199
    push ax                          ; 0xa19c
    mov ax, 0xcf3                    ; 0xa19d
    push ax                          ; 0xa1a0
    call ds_dispatch_b53b            ; 0xa1a1
    add sp, byte 4                   ; 0xa1a4
    jmp short @..local.l489          ; 0xa1a7
@..local.l488:
    mov ax, data_9136                ; 0xa1a9
    push ax                          ; 0xa1ac
    mov ax, 0xcf0                    ; 0xa1ad
    push ax                          ; 0xa1b0
    call ds_dispatch_b53b            ; 0xa1b1
    add sp, byte 4                   ; 0xa1b4
    mov word [bp - 0x0012], 0x18     ; 0xa1b7
@..local.l489:
    jmp short @..local.l494          ; 0xa1bc
@..local.l490:
    cmp ax, strict word 0xc          ; 0xa1be
    jne short @..local.l491          ; 0xa1c1
    jmp near @..api_idx_005a.l5      ; 0xa1c3
@..local.l491:
    cmp ax, strict word 0xd          ; 0xa1c6
    jne short @..local.l492          ; 0xa1c9
    jmp near @..api_idx_005a.l6      ; 0xa1cb
@..local.l492:
    cmp ax, strict word 0x10         ; 0xa1ce
    jne short @..local.l493          ; 0xa1d1
    jmp near @..api_idx_005a.l7      ; 0xa1d3
@..local.l493:
    jmp near @..api_idx_005a.l8      ; 0xa1d6
@..local.l494:
    push word [bp - 0x000a]          ; 0xa1d9
    push word [bp - 0x0008]          ; 0xa1dc
    push word [data_8462]            ; 0xa1df
    call api_idx_000e_3              ; 0xa1e3
    add sp, byte 6                   ; 0xa1e6
    jmp short @..local.l498          ; 0xa1e9
@..local.l495:
    cmp byte [bp - 0x0022], 2        ; 0xa1eb
    je short @..local.l496           ; 0xa1ef
    cmp byte [bp - 0x0022], 4        ; 0xa1f1
    jne short @..local.l497          ; 0xa1f5
@..local.l496:
    mov ax, data_9136                ; 0xa1f7
    push ax                          ; 0xa1fa
    mov ax, 0xcf5                    ; 0xa1fb
    push ax                          ; 0xa1fe
    call ds_dispatch_b53b            ; 0xa1ff
    add sp, byte 4                   ; 0xa202
    jmp short @..local.l498          ; 0xa205
@..local.l497:
    mov ax, data_9136                ; 0xa207
    push ax                          ; 0xa20a
    mov ax, 0xcf4                    ; 0xa20b
    push ax                          ; 0xa20e
    call ds_dispatch_b53b            ; 0xa20f
    add sp, byte 4                   ; 0xa212
@..local.l498:
    cmp word [data_0e36], strict word 0xe1 ; 0xa215
    jne short @..local.l499          ; 0xa21b
    cmp byte [bp - 0x001b], 0x58     ; 0xa21d
    jne short @..local.l499          ; 0xa221
    mov word [data_8458], 1          ; 0xa223
    mov ax, data_9136                ; 0xa229
    push ax                          ; 0xa22c
    mov ax, 0xcf0                    ; 0xa22d
    push ax                          ; 0xa230
    call ds_dispatch_b53b            ; 0xa231
    add sp, byte 4                   ; 0xa234
    mov word [bp - 0x0006], 0x64     ; 0xa237
    mov word [bp - 0x0004], 6        ; 0xa23c
    mov ax, 0x248                    ; 0xa241
    imul word [data_8462]            ; 0xa244
    push ax                          ; 0xa248
    mov ax, 0x78                     ; 0xa249
    imul word [bp - 0x0008]          ; 0xa24c
    mov cx, ax                       ; 0xa24f
    pop ax                           ; 0xa251
    add ax, cx                       ; 0xa252
    push ax                          ; 0xa254
    mov ax, 0xc                      ; 0xa255
    imul word [bp - 0x000a]          ; 0xa258
    mov cx, ax                       ; 0xa25b
    pop ax                           ; 0xa25d
    add ax, cx                       ; 0xa25e
    mov bx, ax                       ; 0xa260
    mov byte [bx + 0x5c3a], 1        ; 0xa262
    push word [bp - 0x000a]          ; 0xa267
    push word [bp - 0x0008]          ; 0xa26a
    push word [data_8462]            ; 0xa26d
    call api_idx_000e_3              ; 0xa271
    add sp, byte 6                   ; 0xa274
@..local.l499:
    mov ax, 0x248                    ; 0xa277
    imul word [data_8462]            ; 0xa27a
    push ax                          ; 0xa27e
    mov ax, 0x78                     ; 0xa27f
    imul word [bp - 0x0008]          ; 0xa282
    mov cx, ax                       ; 0xa285
    pop ax                           ; 0xa287
    add ax, cx                       ; 0xa288
    push ax                          ; 0xa28a
    mov ax, 0xc                      ; 0xa28b
    imul word [bp - 0x000a]          ; 0xa28e
    mov cx, ax                       ; 0xa291
    pop ax                           ; 0xa293
    add ax, cx                       ; 0xa294
    mov bx, ax                       ; 0xa296
    cmp word [bx + 0x5c34], strict word 0x218 ; 0xa298
    jne short @..local.l502          ; 0xa29e
    mov ax, word [bp - 0x000c]       ; 0xa2a0
    shl ax, 1                        ; 0xa2a3
    mov bx, ax                       ; 0xa2a5
    mov bx, word [bx - 0x7b7e]       ; 0xa2a7
    mov al, byte [bx + 0x19e]        ; 0xa2ab
    sub ah, ah                       ; 0xa2af
    cmp ax, 0xe9                     ; 0xa2b1
    jne short @..local.l501          ; 0xa2b4
    mov ax, word [bp - 0x000c]       ; 0xa2b6
    shl ax, 1                        ; 0xa2b9
    mov bx, ax                       ; 0xa2bb
    mov bx, word [bx - 0x7b70]       ; 0xa2bd
    mov al, byte [bx + 0xa5]         ; 0xa2c1
    sub ah, ah                       ; 0xa2c5
    add ax, strict word 0xfff1       ; 0xa2c7
    mov word [bp - 0x0010], ax       ; 0xa2ca
    cmp ax, strict word 0            ; 0xa2cd
    jge short @..local.l500          ; 0xa2d0
    mov word [bp - 0x0010], 0        ; 0xa2d2
@..local.l500:
    mov al, byte [bp - 0x0010]       ; 0xa2d7
    mov byte [bx + 0xa5], al         ; 0xa2da
@..local.l501:
    mov word [bp - 0x0012], 0x1b     ; 0xa2de
    mov ax, data_9136                ; 0xa2e3
    push ax                          ; 0xa2e6
    mov ax, 0xcf2                    ; 0xa2e7
    push ax                          ; 0xa2ea
    call ds_dispatch_b53b            ; 0xa2eb
    add sp, byte 4                   ; 0xa2ee
@..local.l502:
    mov ax, 0x43                     ; 0xa2f1
    push ax                          ; 0xa2f4
    push ax                          ; 0xa2f5
    mov ax, 1                        ; 0xa2f6
    push ax                          ; 0xa2f9
    mov ax, data_9186                ; 0xa2fa
    push ax                          ; 0xa2fd
    mov ax, data_9136                ; 0xa2fe
    push ax                          ; 0xa301
    mov ax, 0x90e6                   ; 0xa302
    push ax                          ; 0xa305
    mov ax, 0                        ; 0xa306
    push ax                          ; 0xa309
    call api_idx_0004_4              ; 0xa30a
    add sp, byte 0x0e                ; 0xa30d
    jmp short @..local.l503          ; 0xa310
@..local.l503:
    cmp word [bp - 0x0004], byte 0   ; 0xa312
    jne short @..local.l504          ; 0xa316
    jmp near @..local.l515           ; 0xa318
@..local.l504:
    mov word [data_91d8], 0          ; 0xa31b
    mov word [data_91da], 0          ; 0xa321
    mov ax, 6                        ; 0xa327
    imul word [bp - 0x0006]          ; 0xa32a
    mov bx, ax                       ; 0xa32d
    mov al, byte [bx + 0x621]        ; 0xa32f
    sub ah, ah                       ; 0xa333
    mov cx, 0xa                      ; 0xa335
    imul cx                          ; 0xa338
    push ax                          ; 0xa33a
    mov ax, 5                        ; 0xa33b
    imul word [bp - 0x0004]          ; 0xa33e
    mov cx, ax                       ; 0xa341
    pop ax                           ; 0xa343
    add ax, cx                       ; 0xa344
    push ax                          ; 0xa346
    call ds_dispatch_b7a9            ; 0xa347
    pop cx                           ; 0xa34a
    add ax, strict word 0xfff6       ; 0xa34b
    mov word [bp - 0x0010], ax       ; 0xa34e
    cmp word [data_8464], byte 0     ; 0xa351
    jne short @..local.l507          ; 0xa356
    cmp word [bp - 0x0012], byte 0xff ; 0xa358
    je short @..local.l506           ; 0xa35c
    mov ax, 3                        ; 0xa35e
    push ax                          ; 0xa361
    push word [bp - 0x0012]          ; 0xa362
    push word [data_8462]            ; 0xa365
    call math_loc_1bf4               ; 0xa369
    add sp, byte 6                   ; 0xa36c
    mov ax, 0x248                    ; 0xa36f
    imul word [data_8462]            ; 0xa372
    add ax, word [bp - 0x0012]       ; 0xa376
    mov bx, ax                       ; 0xa379
    mov al, byte [bx + 0x5d6c]       ; 0xa37b
    sub ah, ah                       ; 0xa37f
    cmp ax, word [bp - 0x0010]       ; 0xa381
    jge short @..local.l506          ; 0xa384
    cmp byte [data_5988], 1          ; 0xa386
    je short @..local.l505           ; 0xa38b
    mov ax, 0x24                     ; 0xa38d
    push ax                          ; 0xa390
    call ds_dispatch_b7a9            ; 0xa391
    pop cx                           ; 0xa394
    push ax                          ; 0xa395
    mov ax, 0x248                    ; 0xa396
    imul word [data_8462]            ; 0xa399
    mov bx, ax                       ; 0xa39d
    mov al, byte [bx + 0x5d6b]       ; 0xa39f
    sub ah, ah                       ; 0xa3a3
    mov cx, ax                       ; 0xa3a5
    add ax, strict word 0x12         ; 0xa3a7
    mov cx, ax                       ; 0xa3aa
    pop ax                           ; 0xa3ac
    cmp ax, cx                       ; 0xa3ad
    jle short @..local.l505          ; 0xa3af
    mov word [data_91d8], 1          ; 0xa3b1
    jmp short @..local.l506          ; 0xa3b7
@..local.l505:
    mov word [data_91da], 1          ; 0xa3b9
@..local.l506:
    jmp short @..local.l509          ; 0xa3bf
@..local.l507:
    mov ax, 0x2c                     ; 0xa3c1
    imul word [data_8462]            ; 0xa3c4
    mov si, ax                       ; 0xa3c8
    mov ax, word [data_8464]         ; 0xa3ca
    shl ax, 1                        ; 0xa3cd
    mov bx, ax                       ; 0xa3cf
    mov bx, word [bx - 0x7b7e]       ; 0xa3d1
    mov ax, word [bx + si]           ; 0xa3d5
    mov cx, 5                        ; 0xa3d7
    imul cx                          ; 0xa3da
    dec ax                           ; 0xa3dc
    dec ax                           ; 0xa3dd
    cmp ax, word [bp - 0x0010]       ; 0xa3de
    jge short @..local.l509          ; 0xa3e1
    cmp byte [data_5988], 2          ; 0xa3e3
    je short @..local.l508           ; 0xa3e8
    mov ax, 7                        ; 0xa3ea
    push ax                          ; 0xa3ed
    call ds_dispatch_b7a9            ; 0xa3ee
    pop cx                           ; 0xa3f1
    test ax, ax                      ; 0xa3f2
    jne short @..local.l508          ; 0xa3f4
    mov word [data_91d8], 1          ; 0xa3f6
    jmp short @..local.l509          ; 0xa3fc
@..local.l508:
    mov word [data_91da], 1          ; 0xa3fe
@..local.l509:
    cmp word [data_91d8], byte 1     ; 0xa404
    jne short @..local.l510          ; 0xa409
    mov ax, 6                        ; 0xa40b
    imul word [bp - 0x0006]          ; 0xa40e
    mov bx, ax                       ; 0xa411
    mov al, byte [bx + 0x623]        ; 0xa413
    sub ah, ah                       ; 0xa417
    test ax, 2                       ; 0xa419
    jne short @..local.l510          ; 0xa41c
    mov word [data_91d8], 0          ; 0xa41e
    mov word [data_91da], 1          ; 0xa424
@..local.l510:
    cmp word [data_91da], byte 1     ; 0xa42a
    jne short @..local.l511          ; 0xa42f
    mov ax, 6                        ; 0xa431
    imul word [bp - 0x0006]          ; 0xa434
    mov bx, ax                       ; 0xa437
    mov al, byte [bx + 0x623]        ; 0xa439
    sub ah, ah                       ; 0xa43d
    test ax, 1                       ; 0xa43f
    jne short @..local.l511          ; 0xa442
    mov word [data_91da], 0          ; 0xa444
@..local.l511:
    cmp word [data_91da], byte 1     ; 0xa44a
    jne short @..local.l512          ; 0xa44f
    mov ax, 4                        ; 0xa451
    push ax                          ; 0xa454
    call api_idx_0004_5              ; 0xa455
    pop cx                           ; 0xa458
    mov ax, 2                        ; 0xa459
    push ax                          ; 0xa45c
    mov ax, 0x41                     ; 0xa45d
    push ax                          ; 0xa460
    mov ax, 0xc81                    ; 0xa461
    push ax                          ; 0xa464
    call api_idx_0050                ; 0xa465
    add sp, byte 6                   ; 0xa468
    push word [data_9058]            ; 0xa46b
    call api_idx_0004_5              ; 0xa46f
    pop cx                           ; 0xa472
    jmp short @..local.l514          ; 0xa473
@..local.l512:
    cmp word [data_91d8], byte 1     ; 0xa475
    jne short @..local.l513          ; 0xa47a
    mov ax, 4                        ; 0xa47c
    push ax                          ; 0xa47f
    call api_idx_0004_5              ; 0xa480
    pop cx                           ; 0xa483
    mov ax, 2                        ; 0xa484
    push ax                          ; 0xa487
    mov ax, 0x16                     ; 0xa488
    push ax                          ; 0xa48b
    mov ax, 0xc82                    ; 0xa48c
    push ax                          ; 0xa48f
    call api_idx_0050                ; 0xa490
    add sp, byte 6                   ; 0xa493
    push word [data_9058]            ; 0xa496
    call api_idx_0004_5              ; 0xa49a
    pop cx                           ; 0xa49d
    mov al, byte [data_8464]         ; 0xa49e
    mov bx, word [bp + 0x4]          ; 0xa4a1
    mov byte [bx + 0x1f], al         ; 0xa4a4
    mov al, byte [data_8462]         ; 0xa4a7
    mov bx, word [bp + 0x4]          ; 0xa4aa
    mov byte [bx + 0x20], al         ; 0xa4ad
@..local.l513:
    push word [bp - 0x0004]          ; 0xa4b0
    push word [bp - 0x0006]          ; 0xa4b3
    push word [bp + 0x4]             ; 0xa4b6
    call api_idx_000e_5              ; 0xa4b9
    add sp, byte 6                   ; 0xa4bc
@..local.l514:
    jmp short @..local.l516          ; 0xa4bf
@..local.l515:
    push word [data_9058]            ; 0xa4c1
    call api_idx_0004_5              ; 0xa4c5
    pop cx                           ; 0xa4c8
@..local.l516:
    ret                              ; 0xa4c9

    db 0x8f, 0x06, 0xba, 0x90, 0x59, 0x89, 0x26, 0xb6, 0x90, 0x89, 0x2e, 0xb8, 0x90, 0x89, 0x36, 0xb2
    db 0x90, 0x89, 0x3e, 0xb4, 0x90, 0xfc, 0xbf, 0xbc, 0x90, 0xb9, 0xdc, 0x91, 0x2b, 0xcf, 0xd1, 0xe9
    db 0x74, 0x04, 0x2b, 0xc0, 0xf3, 0xab, 0xe8, 0xde, 0x72, 0x8b, 0x2e, 0xb8, 0x90, 0x8b, 0x26, 0xb6
    db 0x90, 0x8b, 0x36, 0xb2, 0x90, 0x8b, 0x3e, 0xb4, 0x90, 0x51, 0xff, 0x26, 0xba, 0x90

string_loc_a508:
    pop bx                           ; 0xa508
    push di                          ; 0xa509
    push es                          ; 0xa50a
    mov di, cs                       ; 0xa50b
    mov es, di                       ; 0xa50d
    mov di, bx                       ; 0xa50f
    mov bx, cx                       ; 0xa511
    shl bx, 1                        ; 0xa513
    cld                              ; 0xa515
    repne scasw                      ; 0xa516
    mov cx, word [es:bx + di - 0x0004] ; 0xa518
    pop es                           ; 0xa51c
    pop di                           ; 0xa51d
    jmp cx                           ; 0xa51e
string_loc_a520:
    push bp                          ; 0xa520
    mov bp, sp                       ; 0xa521
    push si                          ; 0xa523
    push di                          ; 0xa524
    mov di, ds                       ; 0xa525
    mov es, di                       ; 0xa527
    mov si, word [bp + 0x4]          ; 0xa529
    mov di, word [bp + 0x6]          ; 0xa52c
    mov cx, word [bp + 0x8]          ; 0xa52f
    jcxz @..string_loc_a508.l2       ; 0xa532
    cmp di, si                       ; 0xa534
    je short @..string_loc_a508.l2   ; 0xa536
@..string_loc_a508.l1:
    mov al, byte [es:di]             ; 0xa538
    xchg byte [si], al               ; 0xa53b
    stosb                            ; 0xa53d
    inc si                           ; 0xa53e
    loop @..string_loc_a508.l1       ; 0xa53f
@..string_loc_a508.l2:
    pop di                           ; 0xa541
    pop si                           ; 0xa542
    pop bp                           ; 0xa543
    ret                              ; 0xa544

    db 'V1.$$$', 0
    db 'V2.$$$', 0
    db 'MON00.PIC', 0
    times 12 db 0

