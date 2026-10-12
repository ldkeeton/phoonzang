api_idx_0010:
    mov ax, 0xfff0                   ; 0x0090
    call ds_aztec_csav               ; 0x0093
    cmp word [bp + 0x4], byte 0      ; 0x0096
    jl short @..api_idx_0010.l1      ; 0x009a
    cmp word [bp + 0x4], byte 6      ; 0x009c
    jle short @..api_idx_0010.l2     ; 0x00a0
@..api_idx_0010.l1:
    mov ax, 0xffff                   ; 0x00a2
    ret                              ; 0x00a5
@..api_idx_0010.l2:
    mov word [bp - 0x0002], 7        ; 0x00a6
    mov ax, word [bp + 0x4]          ; 0x00ab
    inc ax                           ; 0x00ae
    mov word [bp - 0x0004], ax       ; 0x00af
    mov al, byte [bp - 0x0004]       ; 0x00b2
    mov byte [bp - 0x0010], al       ; 0x00b5
    mov byte [bp - 0x000f], 0        ; 0x00b8
    mov ax, 0                        ; 0x00bc
    push ax                          ; 0x00bf
    push ax                          ; 0x00c0
    lea ax, word [bp - 0x0010]       ; 0x00c1
    push ax                          ; 0x00c4
    mov ax, 0                        ; 0x00c5
    push ax                          ; 0x00c8
    mov ax, 0x8f                     ; 0x00c9
    push ax                          ; 0x00cc
    mov ax, 0x21                     ; 0x00cd
    push ax                          ; 0x00d0
    mov ax, 0xf8                     ; 0x00d1
    push ax                          ; 0x00d4
    mov ax, 0x48                     ; 0x00d5
    push ax                          ; 0x00d8
    mov ax, 0x15e                    ; 0x00d9
    imul word [bp - 0x0002]          ; 0x00dc
    add ax, word [bp - 0x0004]       ; 0x00df
    mov bx, ax                       ; 0x00e2
    mov al, byte [bx + 0x6a9b]       ; 0x00e4
    sub ah, ah                       ; 0x00e8
    add ax, strict word 0x20         ; 0x00ea
    push ax                          ; 0x00ed
    mov ax, 0x15e                    ; 0x00ee
    imul word [bp - 0x0002]          ; 0x00f1
    mov cx, word [bp - 0x0004]       ; 0x00f4
    shl cx, 1                        ; 0x00f7
    add ax, cx                       ; 0x00f9
    mov bx, ax                       ; 0x00fb
    mov al, byte [bx + 0x6a52]       ; 0x00fd
    sub ah, ah                       ; 0x0101
    push ax                          ; 0x0103
    push word [bp - 0x0002]          ; 0x0104
    call ds_loc_4218                 ; 0x0107
    add sp, byte 0x16                ; 0x010a
    mov ax, word [bp + 0x4]          ; 0x010d
    ret                              ; 0x0110
loc_0111:
    mov ax, 0xfee8                   ; 0x0111
    call ds_aztec_csav               ; 0x0114
    mov word [bp - 0x00f6], 7        ; 0x0117
    mov ax, 6                        ; 0x011d
    imul word [bp + 0x6]             ; 0x0120
    mov bx, ax                       ; 0x0123
    mov al, byte [bx + 0x889]        ; 0x0125
    sub ah, ah                       ; 0x0129
    jmp short @..local.l10           ; 0x012b
@..local.l7:
    mov word [bp - 0x0010], 1        ; 0x012d
    mov word [bp - 0x00fa], 1        ; 0x0132
    jmp short @..local.l11           ; 0x0138
@..local.l8:
    mov word [bp - 0x0010], 1        ; 0x013a
    mov word [bp - 0x00fa], 1        ; 0x013f
    jmp short @..local.l11           ; 0x0145
@..local.l9:
    mov word [bp - 0x0010], 0        ; 0x0147
    mov word [bp - 0x00fa], 4        ; 0x014c
    jmp short @..local.l11           ; 0x0152
@..local.l10:
    cmp ax, strict word 0            ; 0x0154
    je short @..local.l7             ; 0x0157
    cmp ax, strict word 1            ; 0x0159
    je short @..local.l8             ; 0x015c
    cmp ax, strict word 2            ; 0x015e
    je short @..local.l9             ; 0x0161
@..local.l11:
    mov word [bp - 0x00fc], 6        ; 0x0163
    mov ax, 0xc                      ; 0x0169
    cwd                              ; 0x016c
    idiv word [bp - 0x00fa]          ; 0x016d
    mov word [bp - 0x00fe], ax       ; 0x0171
    mov ax, 6                        ; 0x0175
    imul word [bp + 0x6]             ; 0x0178
    mov bx, ax                       ; 0x017b
    mov al, byte [bx + 0x888]        ; 0x017d
    sub ah, ah                       ; 0x0181
    mov word [bp - 0x00f8], ax       ; 0x0183
    mov word [bp - 0x000c], 1        ; 0x0187
    mov ax, word [bp - 0x00fc]       ; 0x018c
    dec ax                           ; 0x0190
    mov word [bp - 0x0006], ax       ; 0x0191
    mov word [bp - 0x0008], 0        ; 0x0194
    mov word [bp - 0x000a], 0xffff   ; 0x0199
    mov al, byte [bx + 0x889]        ; 0x019e
    sub ah, ah                       ; 0x01a2
    jmp short @..local.l14           ; 0x01a4
@..local.l12:
    inc word [bp + 0x6]              ; 0x01a6
    inc word [bp - 0x00f8]           ; 0x01a9
    jmp short @..local.l15           ; 0x01ad
@..local.l13:
    add word [bp - 0x00f8], byte 3   ; 0x01af
    jmp short @..local.l15           ; 0x01b4
@..local.l14:
    cmp ax, strict word 1            ; 0x01b6
    je short @..local.l12            ; 0x01b9
    cmp ax, strict word 2            ; 0x01bb
    je short @..local.l13            ; 0x01be
@..local.l15:
    cmp word [bp + 0x4], byte 0xff   ; 0x01c0
    je short @..local.l16            ; 0x01c4
    mov ax, word [bp + 0x4]          ; 0x01c6
    mov cx, 2                        ; 0x01c9
    cwd                              ; 0x01cc
    idiv cx                          ; 0x01cd
    mov ax, dx                       ; 0x01cf
    test ax, ax                      ; 0x01d1
    jne short @..local.l18           ; 0x01d3
@..local.l16:
    mov word [bp - 0x000e], 0        ; 0x01d5
    mov ax, 0                        ; 0x01da
    cmp word [bp - 0x0010], byte 0   ; 0x01dd
    je short @..local.l17            ; 0x01e1
    mov ax, 1                        ; 0x01e3
@..local.l17:
    mov word [bp - 0x0104], ax       ; 0x01e6
    jmp short @..local.l20           ; 0x01ea
@..local.l18:
    mov word [bp - 0x000e], 1        ; 0x01ec
    mov ax, 1                        ; 0x01f1
    cmp word [bp - 0x0010], byte 0   ; 0x01f4
    je short @..local.l19            ; 0x01f8
    mov ax, 0                        ; 0x01fa
@..local.l19:
    mov word [bp - 0x0104], ax       ; 0x01fd
@..local.l20:
    mov ax, 6                        ; 0x0201
    imul word [bp + 0x6]             ; 0x0204
    mov bx, ax                       ; 0x0207
    mov ax, word [bx + 0x884]        ; 0x0209
    mov word [bp - 0x00ea], ax       ; 0x020d
    mov ax, word [bx + 0x886]        ; 0x0211
    mov word [bp - 0x00ec], ax       ; 0x0215
    mov word [bp - 0x00e8], 0        ; 0x0219
    mov word [bp - 0x00e6], 0        ; 0x021f
    mov word [bp - 0x00e4], 0        ; 0x0225
    mov word [bp - 0x00e2], 0        ; 0x022b
    mov word [bp - 0x00e0], 0        ; 0x0231
    mov word [bp - 0x00de], 0        ; 0x0237
    mov word [bp - 0x00dc], 0        ; 0x023d
    mov word [bp - 0x00da], 3        ; 0x0243
    mov word [bp - 0x00d8], 3        ; 0x0249
    mov word [bp - 0x00d6], 3        ; 0x024f
    mov word [bp - 0x00d4], 3        ; 0x0255
    mov word [bp - 0x00d2], 3        ; 0x025b
    mov word [bp - 0x00d0], 3        ; 0x0261
    mov word [bp - 0x00ce], 2        ; 0x0267
    mov word [bp - 0x00cc], 2        ; 0x026d
    mov word [bp - 0x00ca], 2        ; 0x0273
    mov word [bp - 0x00c8], 2        ; 0x0279
    mov word [bp - 0x00c6], 1        ; 0x027f
    mov word [bp - 0x00c4], 1        ; 0x0285
    mov word [bp - 0x00c2], 3        ; 0x028b
    mov word [bp - 0x00c0], 2        ; 0x0291
    mov word [bp - 0x00be], 2        ; 0x0297
    mov word [bp - 0x00bc], 2        ; 0x029d
    mov word [bp - 0x00ba], 3        ; 0x02a3
    mov word [bp - 0x00b8], 2        ; 0x02a9
    mov word [bp - 0x00b6], 2        ; 0x02af
    mov word [bp - 0x00b4], 2        ; 0x02b5
    mov word [bp - 0x00b2], 4        ; 0x02bb
    mov word [bp - 0x00b0], 3        ; 0x02c1
    mov word [bp - 0x00ae], 3        ; 0x02c7
    mov word [bp - 0x00ac], 3        ; 0x02cd
    mov word [bp - 0x00aa], 1        ; 0x02d3
    mov word [bp - 0x00a8], 1        ; 0x02d9
    mov word [bp - 0x00a6], 1        ; 0x02df
    mov word [bp - 0x00a4], 1        ; 0x02e5
    mov word [bp - 0x00a2], 3        ; 0x02eb
    mov word [bp - 0x00a0], 3        ; 0x02f1
    mov word [bp - 0x009e], 3        ; 0x02f7
    mov word [bp - 0x009c], 3        ; 0x02fd
    mov word [bp - 0x009a], 3        ; 0x0303
    mov word [bp - 0x0098], 5        ; 0x0309
    mov word [bp - 0x0096], 3        ; 0x030f
    mov word [bp - 0x0094], 5        ; 0x0315
    mov word [bp - 0x0092], 4        ; 0x031b
    mov word [bp - 0x0090], 3        ; 0x0321
    mov word [bp - 0x008e], 3        ; 0x0327
    mov word [bp - 0x008c], 4        ; 0x032d
    mov word [bp - 0x008a], 4        ; 0x0333
    mov word [bp - 0x0088], 3        ; 0x0339
    mov word [bp - 0x0086], 2        ; 0x033f
    mov word [bp - 0x0084], 6        ; 0x0345
    mov word [bp - 0x0082], 5        ; 0x034b
    mov word [bp - 0x0080], 4        ; 0x0351
    mov word [bp - 0x007e], 3        ; 0x0356
    mov word [bp - 0x007c], 2        ; 0x035b
    mov word [bp - 0x007a], 6        ; 0x0360
    mov word [bp - 0x0078], 5        ; 0x0365
    mov word [bp - 0x0076], 3        ; 0x036a
    mov word [bp - 0x0074], 3        ; 0x036f
    mov word [bp - 0x0040], 0x57     ; 0x0374
    mov word [bp - 0x0028], 0xe8     ; 0x0379
    mov word [bp - 0x003e], 0x62     ; 0x037e
    mov word [bp - 0x0026], 0xdd     ; 0x0383
    mov word [bp - 0x003c], 0x6c     ; 0x0388
    mov word [bp - 0x0024], 0xd3     ; 0x038d
    mov word [bp - 0x003a], 0x75     ; 0x0392
    mov word [bp - 0x0022], 0xca     ; 0x0397
    mov word [bp - 0x0038], 0x7d     ; 0x039c
    mov word [bp - 0x0020], 0xc2     ; 0x03a1
    mov word [bp - 0x0036], 0x84     ; 0x03a6
    mov word [bp - 0x001e], 0xbb     ; 0x03ab
    mov word [bp - 0x0034], 0x8a     ; 0x03b0
    mov word [bp - 0x001c], 0xb5     ; 0x03b5
    mov word [bp - 0x0032], 0x8f     ; 0x03ba
    mov word [bp - 0x001a], 0xb0     ; 0x03bf
    mov word [bp - 0x0030], 0x93     ; 0x03c4
    mov word [bp - 0x0018], 0xac     ; 0x03c9
    mov word [bp - 0x002e], 0x96     ; 0x03ce
    mov word [bp - 0x0016], 0xa9     ; 0x03d3
    mov word [bp - 0x002c], 0x98     ; 0x03d8
    mov word [bp - 0x0014], 0xa7     ; 0x03dd
    mov word [bp - 0x002a], 0x99     ; 0x03e2
    mov word [bp - 0x0012], 0xa6     ; 0x03e7
    mov word [bp - 0x0058], 0x49     ; 0x03ec
    mov word [bp - 0x0056], 0x47     ; 0x03f1
    mov word [bp - 0x0054], 0x46     ; 0x03f6
    mov word [bp - 0x0052], 0x45     ; 0x03fb
    mov word [bp - 0x0050], 0x44     ; 0x0400
    mov word [bp - 0x004e], 0x43     ; 0x0405
    mov word [bp - 0x004c], 0x42     ; 0x040a
    mov word [bp - 0x004a], 0x42     ; 0x040f
    mov word [bp - 0x0048], 0x42     ; 0x0414
    mov word [bp - 0x0046], 0x41     ; 0x0419
    mov word [bp - 0x0044], 0x41     ; 0x041e
    mov word [bp - 0x0042], 0x41     ; 0x0423
    mov word [bp - 0x0070], 0x64     ; 0x0428
    mov word [bp - 0x006e], 0x5e     ; 0x042d
    mov word [bp - 0x006c], 0x58     ; 0x0432
    mov word [bp - 0x006a], 0x52     ; 0x0437
    mov word [bp - 0x0068], 0x4c     ; 0x043c
    mov word [bp - 0x0066], 0x46     ; 0x0441
    mov word [bp - 0x0064], 0x40     ; 0x0446
    mov word [bp - 0x0062], 0x3a     ; 0x044b
    mov word [bp - 0x0060], 0x34     ; 0x0450
    mov word [bp - 0x005e], 0x2e     ; 0x0455
    mov word [bp - 0x005c], 0x28     ; 0x045a
    mov word [bp - 0x005a], 0x22     ; 0x045f
    mov ax, 0                        ; 0x0464
    cmp word [bp - 0x000c], byte 0   ; 0x0467
    je short @..local.l21            ; 0x046b
    mov ax, 5                        ; 0x046d
    cmp byte [bx + 0x889], 2         ; 0x0470
    jne short @..local.l21           ; 0x0475
    mov ax, 3                        ; 0x0477
@..local.l21:
    mov word [bp - 0x0102], ax       ; 0x047a
    mov word [bp - 0x0100], ax       ; 0x047e
    mov ax, 0                        ; 0x0482
    push ax                          ; 0x0485
    mov ax, 2                        ; 0x0486
    push ax                          ; 0x0489
    mov ax, 0x8f                     ; 0x048a
    push ax                          ; 0x048d
    mov ax, 0xf7                     ; 0x048e
    push ax                          ; 0x0491
    mov ax, 0x21                     ; 0x0492
    push ax                          ; 0x0495
    mov ax, 0x48                     ; 0x0496
    push ax                          ; 0x0499
    call ds_loc_3b7c                 ; 0x049a
    add sp, byte 0x0c                ; 0x049d
    mov word [bp - 0x0116], dx       ; 0x04a0
    mov word [bp - 0x0118], ax       ; 0x04a4
    mov ax, 0                        ; 0x04a8
    push ax                          ; 0x04ab
    call api_idx_0010                ; 0x04ac
    pop cx                           ; 0x04af
    mov word [bss_9116], ax          ; 0x04b0
    push word [bss_911c]             ; 0x04b3
    mov ax, 0xf8                     ; 0x04b7
    push ax                          ; 0x04ba
    mov ax, 0x21                     ; 0x04bb
    push ax                          ; 0x04be
    mov ax, 0x48                     ; 0x04bf
    push ax                          ; 0x04c2
    call ds_loc_3b21                 ; 0x04c3
    add sp, byte 8                   ; 0x04c6
    mov ax, 5                        ; 0x04c9
    push ax                          ; 0x04cc
    call ds_app_0a27                 ; 0x04cd
    pop cx                           ; 0x04d0
    mov word [bp - 0x0004], 0        ; 0x04d1
    mov ax, word [bp - 0x0006]       ; 0x04d6
    mov word [bp - 0x0002], ax       ; 0x04d9
    jmp near @..local.l29            ; 0x04dc
@..local.l22:
    les bx, word [dseg_0002]         ; 0x04df
    mov ax, word [es:bx]             ; 0x04e3
    mov dx, word [es:bx + 0x2]       ; 0x04e6
    mov word [bp - 0x0112], dx       ; 0x04ea
    mov word [bp - 0x0114], ax       ; 0x04ee
    mov ax, word [bp - 0x0002]       ; 0x04f2
    shl ax, 1                        ; 0x04f5
    mov bx, ax                       ; 0x04f7
    add bx, bp                       ; 0x04f9
    mov ax, word [bx - 0x0070]       ; 0x04fb
    imul word [bp - 0x00ea]          ; 0x04fe
    mov cx, 0x64                     ; 0x0502
    cwd                              ; 0x0505
    idiv cx                          ; 0x0506
    mov word [bp - 0x00ee], ax       ; 0x0508
    cmp word [bp - 0x0104], byte 0   ; 0x050c
    je short @..local.l23            ; 0x0511
    mov cx, 0                        ; 0x0513
    sub cx, ax                       ; 0x0516
    mov ax, cx                       ; 0x0518
    mov cx, word [bp - 0x00f8]       ; 0x051a
    shl cx, 1                        ; 0x051e
    mov bx, cx                       ; 0x0520
    add bx, bp                       ; 0x0522
    mov cx, word [bx - 0x00ea]       ; 0x0524
    shl cx, 1                        ; 0x0528
    shl cx, 1                        ; 0x052a
    shl cx, 1                        ; 0x052c
    sub ax, cx                       ; 0x052e
    mov word [bp - 0x00ee], ax       ; 0x0530
@..local.l23:
    mov ax, word [bp - 0x00ec]       ; 0x0534
    imul word [bp - 0x0064]          ; 0x0538
    mov cx, 0x64                     ; 0x053b
    cwd                              ; 0x053e
    idiv cx                          ; 0x053f
    mov word [bp - 0x00f0], ax       ; 0x0541
    mov al, byte [bp - 0x00f8]       ; 0x0545
    mov byte [bp - 0x0110], al       ; 0x0549
    mov byte [bp - 0x010f], 0        ; 0x054d
    mov ax, 0                        ; 0x0552
    push ax                          ; 0x0555
    push ax                          ; 0x0556
    push word [bp - 0x0116]          ; 0x0557
    push word [bp - 0x0118]          ; 0x055b
    call ds_loc_3b89                 ; 0x055f
    add sp, byte 8                   ; 0x0562
    cmp word [bss_9116], byte 0      ; 0x0565
    jl short @..local.l25            ; 0x056a
    mov ax, word [bp - 0x0004]       ; 0x056c
    mov cx, 3                        ; 0x056f
    cwd                              ; 0x0572
    idiv cx                          ; 0x0573
    mov ax, dx                       ; 0x0575
    test ax, ax                      ; 0x0577
    jne short @..local.l24           ; 0x0579
    inc word [bss_9116]              ; 0x057b
@..local.l24:
    push word [bss_9116]             ; 0x057f
    call api_idx_0010                ; 0x0583
    pop cx                           ; 0x0586
    mov word [bss_9116], ax          ; 0x0587
@..local.l25:
    mov ax, 0x18                     ; 0x058a
    imul word [bp - 0x000e]          ; 0x058d
    mov cx, word [bp - 0x0002]       ; 0x0590
    shl cx, 1                        ; 0x0593
    add ax, cx                       ; 0x0595
    mov bx, ax                       ; 0x0597
    add bx, bp                       ; 0x0599
    mov ax, word [bx - 0x0040]       ; 0x059b
    add ax, word [bp - 0x00ee]       ; 0x059e
    mov word [bp - 0x00f2], ax       ; 0x05a2
    mov bx, cx                       ; 0x05a6
    add bx, bp                       ; 0x05a8
    mov ax, word [bx - 0x0058]       ; 0x05aa
    add ax, word [bp - 0x00f0]       ; 0x05ad
    mov word [bp - 0x00f4], ax       ; 0x05b1
    mov ax, word [bp - 0x0100]       ; 0x05b5
    shl ax, 1                        ; 0x05b9
    mov bx, ax                       ; 0x05bb
    add bx, bp                       ; 0x05bd
    mov cx, word [bx - 0x0070]       ; 0x05bf
    mov ax, 0x64                     ; 0x05c2
    sub ax, cx                       ; 0x05c5
    push ax                          ; 0x05c7
    mov ax, 0                        ; 0x05c8
    push ax                          ; 0x05cb
    lea ax, word [bp - 0x0110]       ; 0x05cc
    push ax                          ; 0x05d0
    push word [bp - 0x0104]          ; 0x05d1
    mov ax, 0x8f                     ; 0x05d5
    push ax                          ; 0x05d8
    mov ax, 0x21                     ; 0x05d9
    push ax                          ; 0x05dc
    mov ax, 0xf8                     ; 0x05dd
    push ax                          ; 0x05e0
    mov ax, 0x48                     ; 0x05e1
    push ax                          ; 0x05e4
    mov ax, word [bp - 0x00f4]       ; 0x05e5
    add ax, strict word 0x20         ; 0x05e9
    push ax                          ; 0x05ec
    push word [bp - 0x00f2]          ; 0x05ed
    push word [bp - 0x00f6]          ; 0x05f1
    call ds_loc_4218                 ; 0x05f5
    add sp, byte 0x16                ; 0x05f8
    push word [bss_911c]             ; 0x05fb
    mov ax, 0xf8                     ; 0x05ff
    push ax                          ; 0x0602
    mov ax, 0x21                     ; 0x0603
    push ax                          ; 0x0606
    mov ax, 0x48                     ; 0x0607
    push ax                          ; 0x060a
    call ds_loc_3b21                 ; 0x060b
    add sp, byte 8                   ; 0x060e
    mov ax, word [bp - 0x000a]       ; 0x0611
    add word [bp - 0x0100], ax       ; 0x0614
    mov ax, word [bp - 0x0004]       ; 0x0618
    inc ax                           ; 0x061b
    cwd                              ; 0x061c
    idiv word [bp - 0x00fe]          ; 0x061d
    mov ax, dx                       ; 0x0621
    test ax, ax                      ; 0x0623
    jne short @..local.l26           ; 0x0625
    mov ax, word [bp - 0x000a]       ; 0x0627
    add word [bp - 0x00f8], ax       ; 0x062a
    mov ax, word [bp - 0x0102]       ; 0x062e
    mov word [bp - 0x0100], ax       ; 0x0632
@..local.l26:
    les bx, word [dseg_0002]         ; 0x0636
    mov ax, word [es:bx]             ; 0x063a
    mov dx, word [es:bx + 0x2]       ; 0x063d
    cmp dx, word [bp - 0x0112]       ; 0x0641
    jne short @..local.l27           ; 0x0645
    cmp ax, word [bp - 0x0114]       ; 0x0647
@..local.l27:
    jne short @..local.l28           ; 0x064b
    jmp short @..local.l26           ; 0x064d
@..local.l28:
    mov ax, word [bp - 0x000a]       ; 0x064f
    add word [bp - 0x0002], ax       ; 0x0652
    inc word [bp - 0x0004]           ; 0x0655
@..local.l29:
    mov ax, word [bp - 0x0004]       ; 0x0658
    cmp ax, word [bp - 0x00fc]       ; 0x065b
    jge short @..local.l30           ; 0x065f
    jmp near @..local.l22            ; 0x0661
@..local.l30:
    mov ax, 0                        ; 0x0664
    push ax                          ; 0x0667
    mov ax, 1                        ; 0x0668
    push ax                          ; 0x066b
    push word [bp - 0x0116]          ; 0x066c
    push word [bp - 0x0118]          ; 0x0670
    call ds_loc_3b89                 ; 0x0674
    add sp, byte 8                   ; 0x0677
    ret                              ; 0x067a
