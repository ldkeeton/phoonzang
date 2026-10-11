api_idx_000c:
    mov ax, 0xfff4                   ; 0x0146
    call ds_dispatch_f40b            ; 0x0149
    mov ax, 0                        ; 0x014c
    push ax                          ; 0x014f
    push ax                          ; 0x0150
    push word [bp + 0x4]             ; 0x0151
    call ds_dispatch_d161            ; 0x0154
    add sp, byte 4                   ; 0x0157
    push ax                          ; 0x015a
    call ds_dispatch_f909            ; 0x015b
    add sp, byte 4                   ; 0x015e
    mov word [bp - 0x0002], ax       ; 0x0161
    cmp ax, strict word 0xffff       ; 0x0164
    jne short @..api_idx_000c.l1     ; 0x0167
    mov ax, 6                        ; 0x0169
    push ax                          ; 0x016c
    call ds_dispatch_b171            ; 0x016d
    pop cx                           ; 0x0170
@..api_idx_000c.l1:
    mov ax, 2                        ; 0x0171
    push ax                          ; 0x0174
    mov ax, 0                        ; 0x0175
    mov dx, 0                        ; 0x0178
    push dx                          ; 0x017b
    push ax                          ; 0x017c
    push word [bp - 0x0002]          ; 0x017d
    call ds_dispatch_fdbd            ; 0x0180
    add sp, byte 8                   ; 0x0183
    mov word [bp - 0x0004], dx       ; 0x0186
    mov word [bp - 0x0006], ax       ; 0x0189
    push word [bp - 0x0004]          ; 0x018c
    push word [bp - 0x0006]          ; 0x018f
    call ds_dispatch_afb9            ; 0x0192
    add sp, byte 4                   ; 0x0195
    mov word [bp - 0x0008], dx       ; 0x0198
    mov word [bp - 0x000a], ax       ; 0x019b
    push word [bp - 0x0006]          ; 0x019e
    call ds_dispatch_f4a3            ; 0x01a1
    pop cx                           ; 0x01a4
    mov word [bp - 0x000c], ax       ; 0x01a5
    cmp word [bp - 0x0008], byte 0   ; 0x01a8
    jne short @..api_idx_000c.l2     ; 0x01ac
    cmp word [bp - 0x000a], byte 0   ; 0x01ae
@..api_idx_000c.l2:
    je short @..api_idx_000c.l3      ; 0x01b2
    cmp word [bp - 0x000c], byte 0   ; 0x01b4
    jne short @..api_idx_000c.l4     ; 0x01b8
@..api_idx_000c.l3:
    mov ax, 6                        ; 0x01ba
    push ax                          ; 0x01bd
    call ds_dispatch_b171            ; 0x01be
    pop cx                           ; 0x01c1
@..api_idx_000c.l4:
    mov ax, 0                        ; 0x01c2
    push ax                          ; 0x01c5
    mov ax, 0                        ; 0x01c6
    mov dx, 0                        ; 0x01c9
    push dx                          ; 0x01cc
    push ax                          ; 0x01cd
    push word [bp - 0x0002]          ; 0x01ce
    call ds_dispatch_fdbd            ; 0x01d1
    add sp, byte 8                   ; 0x01d4
    push word [bp - 0x0006]          ; 0x01d7
    push word [bp - 0x000c]          ; 0x01da
    push word [bp - 0x0002]          ; 0x01dd
    call ds_dispatch_fd6f            ; 0x01e0
    add sp, byte 6                   ; 0x01e3
    push word [bp - 0x0002]          ; 0x01e6
    call ds_dispatch_fda5            ; 0x01e9
    pop cx                           ; 0x01ec
    push word [bp - 0x0006]          ; 0x01ed
    push word [bp - 0x0008]          ; 0x01f0
    push word [bp - 0x000a]          ; 0x01f3
    mov ax, word [bp - 0x000c]       ; 0x01f6
    mov dx, ds                       ; 0x01f9
    push dx                          ; 0x01fb
    push ax                          ; 0x01fc
    call ds_dispatch_afcc            ; 0x01fd
    add sp, byte 0x0a                ; 0x0200
    push word [bp - 0x000c]          ; 0x0203
    call ds_dispatch_f5a1            ; 0x0206
    pop cx                           ; 0x0209
    mov ax, word [bp - 0x000a]       ; 0x020a
    mov dx, word [bp - 0x0008]       ; 0x020d
    ret                              ; 0x0210
loc_0211:
    mov ax, 0xfaf4                   ; 0x0211
    call ds_dispatch_f40b            ; 0x0214
    mov word [bp - 0x0002], 0        ; 0x0217
@..local.l7:
    mov word [bp - 0x0004], 0        ; 0x021c
@..local.l8:
    mov ax, 0x3f                     ; 0x0221
    push ax                          ; 0x0224
    mov ax, 0                        ; 0x0225
    push ax                          ; 0x0228
    mov ax, 3                        ; 0x0229
    imul word [bp - 0x0002]          ; 0x022c
    add ax, word [bp - 0x0004]       ; 0x022f
    mov si, ax                       ; 0x0232
    mov bx, word [bp + 0x8]          ; 0x0234
    mov al, byte [bx + si]           ; 0x0237
    sub ah, ah                       ; 0x0239
    add ax, word [bp + 0x4]          ; 0x023b
    push ax                          ; 0x023e
    call ds_dispatch_b7c2            ; 0x023f
    add sp, byte 6                   ; 0x0242
    push ax                          ; 0x0245
    mov ax, 3                        ; 0x0246
    imul word [bp - 0x0002]          ; 0x0249
    mov cx, ax                       ; 0x024c
    add ax, word [bp - 0x0004]       ; 0x024e
    mov bx, ax                       ; 0x0251
    add bx, bp                       ; 0x0253
    pop ax                           ; 0x0255
    mov byte [bx - 0x030c], al       ; 0x0256
    cmp al, 0x20                     ; 0x025a
    jbe short @..local.l9            ; 0x025c
    sub ah, ah                       ; 0x025e
    add ax, strict word 0xffe0       ; 0x0260
    imul word [bp + 0x6]             ; 0x0263
    mov cx, 0x20                     ; 0x0266
    cwd                              ; 0x0269
    idiv cx                          ; 0x026a
    mov word [bp - 0x0006], ax       ; 0x026c
    mov ax, 0x3f                     ; 0x026f
    push ax                          ; 0x0272
    mov ax, 0                        ; 0x0273
    push ax                          ; 0x0276
    mov al, byte [bx - 0x030c]       ; 0x0277
    sub ah, ah                       ; 0x027b
    add ax, word [bp - 0x0006]       ; 0x027d
    push ax                          ; 0x0280
    call ds_dispatch_b7c2            ; 0x0281
    add sp, byte 6                   ; 0x0284
    push ax                          ; 0x0287
    mov ax, 3                        ; 0x0288
    imul word [bp - 0x0002]          ; 0x028b
    mov cx, ax                       ; 0x028e
    add ax, word [bp - 0x0004]       ; 0x0290
    mov bx, ax                       ; 0x0293
    add bx, bp                       ; 0x0295
    pop ax                           ; 0x0297
    mov byte [bx - 0x030c], al       ; 0x0298
    jmp short @..local.l10           ; 0x029c
@..local.l9:
    mov ax, 3                        ; 0x029e
    imul word [bp - 0x0002]          ; 0x02a1
    add ax, word [bp - 0x0004]       ; 0x02a4
    mov bx, ax                       ; 0x02a7
    add bx, bp                       ; 0x02a9
    cmp byte [bx - 0x030c], 0x20     ; 0x02ab
    jae short @..local.l10           ; 0x02b0
    mov al, byte [bx - 0x030c]       ; 0x02b2
    sub ah, ah                       ; 0x02b6
    mov cx, ax                       ; 0x02b8
    mov ax, 0x20                     ; 0x02ba
    sub ax, cx                       ; 0x02bd
    imul word [bp + 0x6]             ; 0x02bf
    mov cx, 0x20                     ; 0x02c2
    cwd                              ; 0x02c5
    idiv cx                          ; 0x02c6
    mov word [bp - 0x0006], ax       ; 0x02c8
    mov ax, 0x3f                     ; 0x02cb
    push ax                          ; 0x02ce
    mov ax, 0                        ; 0x02cf
    push ax                          ; 0x02d2
    mov al, byte [bx - 0x030c]       ; 0x02d3
    sub ah, ah                       ; 0x02d7
    sub ax, word [bp - 0x0006]       ; 0x02d9
    push ax                          ; 0x02dc
    call ds_dispatch_b7c2            ; 0x02dd
    add sp, byte 6                   ; 0x02e0
    push ax                          ; 0x02e3
    mov ax, 3                        ; 0x02e4
    imul word [bp - 0x0002]          ; 0x02e7
    mov cx, ax                       ; 0x02ea
    add ax, word [bp - 0x0004]       ; 0x02ec
    mov bx, ax                       ; 0x02ef
    add bx, bp                       ; 0x02f1
    pop ax                           ; 0x02f3
    mov byte [bx - 0x030c], al       ; 0x02f4
@..local.l10:
    inc word [bp - 0x0004]           ; 0x02f8
    mov ax, word [bp - 0x0004]       ; 0x02fb
    cmp ax, strict word 3            ; 0x02fe
    jge short @..local.l11           ; 0x0301
    jmp near @..local.l8             ; 0x0303
@..local.l11:
    inc word [bp - 0x0002]           ; 0x0306
    mov ax, word [bp - 0x0002]       ; 0x0309
    cmp ax, 0x100                    ; 0x030c
    jge short @..local.l12           ; 0x030f
    jmp near @..local.l7             ; 0x0311
@..local.l12:
    mov ax, 0xff                     ; 0x0314
    push ax                          ; 0x0317
    mov ax, 0x200                    ; 0x0318
    push ax                          ; 0x031b
    lea ax, word [bp - 0x050c]       ; 0x031c
    push ax                          ; 0x0320
    call ds_dispatch_f306            ; 0x0321
    add sp, byte 6                   ; 0x0324
    mov word [bp - 0x0002], 0        ; 0x0327
@..local.l13:
    mov ax, 3                        ; 0x032c
    imul word [bp - 0x0002]          ; 0x032f
    mov bx, ax                       ; 0x0332
    add bx, bp                       ; 0x0334
    mov al, byte [bx - 0x030c]       ; 0x0336
    sub ah, ah                       ; 0x033a
    mov cx, 8                        ; 0x033c
    cwd                              ; 0x033f
    idiv cx                          ; 0x0340
    mov word [bp - 0x0008], ax       ; 0x0342
    mov al, byte [bx - 0x030b]       ; 0x0345
    sub ah, ah                       ; 0x0349
    cwd                              ; 0x034b
    idiv cx                          ; 0x034c
    mov word [bp - 0x000a], ax       ; 0x034e
    mov al, byte [bx - 0x030a]       ; 0x0351
    sub ah, ah                       ; 0x0355
    cwd                              ; 0x0357
    idiv cx                          ; 0x0358
    mov word [bp - 0x000c], ax       ; 0x035a
    mov al, byte [bp - 0x0002]       ; 0x035d
    mov dx, word [bp - 0x0008]       ; 0x0360
    mov cx, 6                        ; 0x0363
    shl dx, cl                       ; 0x0366
    mov cx, dx                       ; 0x0368
    mov dx, word [bp - 0x000a]       ; 0x036a
    shl dx, 1                        ; 0x036d
    shl dx, 1                        ; 0x036f
    shl dx, 1                        ; 0x0371
    add cx, dx                       ; 0x0373
    add cx, word [bp - 0x000c]       ; 0x0375
    mov bx, cx                       ; 0x0378
    add bx, bp                       ; 0x037a
    mov byte [bx - 0x050c], al       ; 0x037c
    inc word [bp - 0x0002]           ; 0x0380
    mov ax, word [bp - 0x0002]       ; 0x0383
    cmp ax, 0x100                    ; 0x0386
    jl short @..local.l13            ; 0x0389
    lea ax, word [bp - 0x050c]       ; 0x038b
    push ax                          ; 0x038f
    lea ax, word [bp - 0x030c]       ; 0x0390
    push ax                          ; 0x0394
    call ds_dispatch_f10b            ; 0x0395
    add sp, byte 4                   ; 0x0398
    mov ax, 0xffff                   ; 0x039b
    push ax                          ; 0x039e
    push ax                          ; 0x039f
    push ax                          ; 0x03a0
    call ds_dispatch_f0d7            ; 0x03a1
    add sp, byte 6                   ; 0x03a4
    ret                              ; 0x03a7
loc_03a8:
    mov ax, 0xfce6                   ; 0x03a8
    call ds_dispatch_f40b            ; 0x03ab
    mov word [dseg_905c], 0          ; 0x03ae
    mov word [dseg_0e30], 0          ; 0x03b4
    mov word [dseg_0e2e], 0          ; 0x03ba
    mov word [dseg_0e2c], 0          ; 0x03c0
    mov word [dseg_0e2a], 0          ; 0x03c6
    mov word [dseg_0e28], 0          ; 0x03cc
    mov word [dseg_0e26], 0          ; 0x03d2
    mov ax, 0                        ; 0x03d8
    push ax                          ; 0x03db
    mov ax, 0x9098                   ; 0x03dc
    push ax                          ; 0x03df
    call ds_dispatch_f909            ; 0x03e0
    add sp, byte 4                   ; 0x03e3
    mov word [dseg_9088], ax         ; 0x03e6
    cmp ax, strict word 0xffff       ; 0x03e9
    jne short @..local.l14           ; 0x03ec
    mov ax, 1                        ; 0x03ee
    push ax                          ; 0x03f1
    call ds_dispatch_b171            ; 0x03f2
    pop cx                           ; 0x03f5
@..local.l14:
    mov ax, 0x34c                    ; 0x03f6
    push ax                          ; 0x03f9
    mov ax, 0x5642                   ; 0x03fa
    push ax                          ; 0x03fd
    push word [dseg_9088]            ; 0x03fe
    call ds_dispatch_fd6f            ; 0x0402
    add sp, byte 6                   ; 0x0405
    push word [dseg_9088]            ; 0x0408
    call ds_dispatch_fda5            ; 0x040c
    pop cx                           ; 0x040f
    mov word [dseg_905a], 0x36       ; 0x0410
    mov al, byte [dseg_5986]         ; 0x0416
    sub ah, ah                       ; 0x0419
    mov word [dseg_9058], ax         ; 0x041b
    mov al, byte [dseg_598a]         ; 0x041e
    sub ah, ah                       ; 0x0421
    jmp short @..local.l19           ; 0x0423
@..local.l15:
    mov ax, 2                        ; 0x0425
    push ax                          ; 0x0428
    call ds_dispatch_b171            ; 0x0429
    pop cx                           ; 0x042c
    jmp short @..local.l20           ; 0x042d
@..local.l16:
    mov word [bp - 0x0002], 1        ; 0x042f
    jmp short @..local.l20           ; 0x0434
@..local.l17:
    mov word [bp - 0x0002], 2        ; 0x0436
    jmp short @..local.l20           ; 0x043b
@..local.l18:
    mov ax, 2                        ; 0x043d
    push ax                          ; 0x0440
    call ds_dispatch_b171            ; 0x0441
    pop cx                           ; 0x0444
    jmp short @..local.l20           ; 0x0445
@..local.l19:
    cmp ax, strict word 1            ; 0x0447
    je short @..local.l16            ; 0x044a
    cmp ax, strict word 2            ; 0x044c
    je short @..local.l17            ; 0x044f
    cmp ax, 0xff                     ; 0x0451
    je short @..local.l15            ; 0x0454
    jmp short @..local.l18           ; 0x0456
@..local.l20:
    push word [bp - 0x0002]          ; 0x0458
    call ds_dispatch_de20            ; 0x045b
    pop cx                           ; 0x045e
    mov word [dseg_9056], ax         ; 0x045f
    test ax, 1                       ; 0x0462
    jne short @..local.l21           ; 0x0465
    test ax, 2                       ; 0x0467
    je short @..local.l22            ; 0x046a
@..local.l21:
    jmp short @..local.l23           ; 0x046c
@..local.l22:
    mov ax, 3                        ; 0x046e
    push ax                          ; 0x0471
    call ds_dispatch_b171            ; 0x0472
    pop cx                           ; 0x0475
@..local.l23:
    mov word [dseg_0e34], 0x905c     ; 0x0476
    mov al, byte [dseg_5984]         ; 0x047c
    sub ah, ah                       ; 0x047f
    mov word [bp - 0x000a], ax       ; 0x0481
    cmp ax, strict word 6            ; 0x0484
    jne short @..local.l24           ; 0x0487
    mov word [bp - 0x000a], 4        ; 0x0489
@..local.l24:
    mov ax, word [dseg_5980]         ; 0x048e
    cmp word [bp - 0x000a], byte 0   ; 0x0491
    jne short @..local.l25           ; 0x0495
    mov ax, 0                        ; 0x0497
@..local.l25:
    mov word [bp - 0x000c], ax       ; 0x049a
    push word [bp - 0x000a]          ; 0x049d
    push ax                          ; 0x04a0
    call ds_dispatch_ef2e            ; 0x04a1
    add sp, byte 4                   ; 0x04a4
    mov word [dseg_59f8], 0x905c     ; 0x04a7
    mov word [dseg_0e32], 0          ; 0x04ad
    mov word [dseg_5b3e], 0          ; 0x04b3
    mov word [bp - 0x0006], 0        ; 0x04b9
@..local.l26:
    mov ax, 0x64                     ; 0x04be
    push ax                          ; 0x04c1
    call ds_dispatch_b7a9            ; 0x04c2
    pop cx                           ; 0x04c5
    mov bx, word [bp - 0x0006]       ; 0x04c6
    mov byte [bx + 0x5990], al       ; 0x04c9
    inc word [bp - 0x0006]           ; 0x04cd
    mov ax, word [bp - 0x0006]       ; 0x04d0
    cmp ax, strict word 0x64         ; 0x04d3
    jl short @..local.l26            ; 0x04d6
    call ds_dispatch_b186            ; 0x04d8
    mov ax, 0                        ; 0x04db
    push ax                          ; 0x04de
    push ax                          ; 0x04df
    call ds_dispatch_e91b            ; 0x04e0
    add sp, byte 4                   ; 0x04e3
    cmp dx, byte 1                   ; 0x04e6
    jg short @..local.l27            ; 0x04e9
    jne short @..local.l28           ; 0x04eb
    cmp ax, 0x6200                   ; 0x04ed
    jb short @..local.l28            ; 0x04f0
@..local.l27:
    jmp short @..local.l29           ; 0x04f2
@..local.l28:
    mov ax, 4                        ; 0x04f4
    push ax                          ; 0x04f7
    call ds_dispatch_b171            ; 0x04f8
    pop cx                           ; 0x04fb
@..local.l29:
    mov ax, 0                        ; 0x04fc
    push ax                          ; 0x04ff
    mov ax, 0x90a5                   ; 0x0500
    push ax                          ; 0x0503
    call api_idx_0002                ; 0x0504
    add sp, byte 4                   ; 0x0507
    mov ax, 1                        ; 0x050a
    push ax                          ; 0x050d
    mov ax, 0x90b1                   ; 0x050e
    push ax                          ; 0x0511
    call api_idx_0002                ; 0x0512
    add sp, byte 4                   ; 0x0515
    mov ax, 2                        ; 0x0518
    push ax                          ; 0x051b
    mov ax, 0x90bd                   ; 0x051c
    push ax                          ; 0x051f
    call api_idx_0002                ; 0x0520
    add sp, byte 4                   ; 0x0523
    mov ax, 3                        ; 0x0526
    push ax                          ; 0x0529
    mov ax, 0x90c9                   ; 0x052a
    push ax                          ; 0x052d
    call api_idx_0002                ; 0x052e
    add sp, byte 4                   ; 0x0531
    mov ax, 4                        ; 0x0534
    push ax                          ; 0x0537
    mov ax, 0x90d5                   ; 0x0538
    push ax                          ; 0x053b
    call api_idx_0002                ; 0x053c
    add sp, byte 4                   ; 0x053f
    mov ax, 5                        ; 0x0542
    push ax                          ; 0x0545
    mov ax, 0x90e1                   ; 0x0546
    push ax                          ; 0x0549
    call api_idx_0002                ; 0x054a
    add sp, byte 4                   ; 0x054d
    mov ax, 6                        ; 0x0550
    push ax                          ; 0x0553
    mov ax, 0x90ed                   ; 0x0554
    push ax                          ; 0x0557
    call api_idx_0002                ; 0x0558
    add sp, byte 4                   ; 0x055b
    mov ax, 7                        ; 0x055e
    push ax                          ; 0x0561
    mov ax, 0x90f9                   ; 0x0562
    push ax                          ; 0x0565
    call api_idx_0002                ; 0x0566
    add sp, byte 4                   ; 0x0569
    call ds_dispatch_ca6a            ; 0x056c
    mov ax, 0x9105                   ; 0x056f
    push ax                          ; 0x0572
    call api_idx_000c                ; 0x0573
    pop cx                           ; 0x0576
    mov word [dseg_0e30], dx         ; 0x0577
    mov word [dseg_0e2e], ax         ; 0x057b
    mov ax, 0x9111                   ; 0x057e
    push ax                          ; 0x0581
    call api_idx_000c                ; 0x0582
    pop cx                           ; 0x0585
    mov word [dseg_0e2c], dx         ; 0x0586
    mov word [dseg_0e2a], ax         ; 0x058a
    mov ax, 0x911d                   ; 0x058d
    push ax                          ; 0x0590
    call api_idx_000c                ; 0x0591
    pop cx                           ; 0x0594
    mov word [dseg_0e28], dx         ; 0x0595
    mov word [dseg_0e26], ax         ; 0x0599
    mov ax, 3                        ; 0x059c
    push ax                          ; 0x059f
    mov ax, 0x9129                   ; 0x05a0
    push ax                          ; 0x05a3
    call api_idx_0002_2              ; 0x05a4
    add sp, byte 4                   ; 0x05a7
    mov word [dseg_1008], 0x905c     ; 0x05aa
    mov ax, 0x52                     ; 0x05b0
    push ax                          ; 0x05b3
    mov ax, 0x5524                   ; 0x05b4
    push ax                          ; 0x05b7
    mov ax, 0x9136                   ; 0x05b8
    push ax                          ; 0x05bb
    call api_idx_0002_3              ; 0x05bc
    add sp, byte 6                   ; 0x05bf
    mov ax, 0x30c                    ; 0x05c2
    push ax                          ; 0x05c5
    mov ax, 0x5218                   ; 0x05c6
    push ax                          ; 0x05c9
    mov ax, 0x9141                   ; 0x05ca
    push ax                          ; 0x05cd
    call api_idx_0002_3              ; 0x05ce
    add sp, byte 6                   ; 0x05d1
    mov ax, 0x2dfe                   ; 0x05d4
    push ax                          ; 0x05d7
    mov ax, 0x100c                   ; 0x05d8
    push ax                          ; 0x05db
    mov ax, 0x914a                   ; 0x05dc
    push ax                          ; 0x05df
    call api_idx_0002_3              ; 0x05e0
    add sp, byte 6                   ; 0x05e3
    mov ax, 0x18                     ; 0x05e6
    push ax                          ; 0x05e9
    mov ax, 0x906e                   ; 0x05ea
    push ax                          ; 0x05ed
    mov ax, 0x9152                   ; 0x05ee
    push ax                          ; 0x05f1
    call api_idx_0002_3              ; 0x05f2
    add sp, byte 6                   ; 0x05f5
    mov ax, 0x915d                   ; 0x05f8
    push ax                          ; 0x05fb
    call api_idx_0002_4              ; 0x05fc
    pop cx                           ; 0x05ff
    mov ax, 0                        ; 0x0600
    push ax                          ; 0x0603
    push ax                          ; 0x0604
    mov ax, 0x9166                   ; 0x0605
    push ax                          ; 0x0608
    call ds_dispatch_d161            ; 0x0609
    add sp, byte 4                   ; 0x060c
    push ax                          ; 0x060f
    call ds_dispatch_f909            ; 0x0610
    add sp, byte 4                   ; 0x0613
    mov word [dseg_0e24], ax         ; 0x0616
    cmp ax, strict word 0xffff       ; 0x0619
    jne short @..local.l30           ; 0x061c
    mov ax, 9                        ; 0x061e
    push ax                          ; 0x0621
    call ds_dispatch_b171            ; 0x0622
    pop cx                           ; 0x0625
@..local.l30:
    mov word [dseg_5212], 0xffff     ; 0x0626
    mov word [dseg_5214], 0          ; 0x062c
@..local.l31:
    mov ax, word [dseg_5214]         ; 0x0632
    shl ax, 1                        ; 0x0635
    mov bx, ax                       ; 0x0637
    mov word [bx + 0x3e0a], 0xffff   ; 0x0639
    inc word [dseg_5214]             ; 0x063f
    mov ax, word [dseg_5214]         ; 0x0643
    cmp ax, strict word 4            ; 0x0646
    jl short @..local.l31            ; 0x0649
    mov word [dseg_5214], 0          ; 0x064b
    mov word [bp - 0x0006], 0        ; 0x0651
@..local.l32:
    mov ax, word [bp - 0x0006]       ; 0x0656
    shl ax, 1                        ; 0x0659
    mov bx, ax                       ; 0x065b
    mov word [bx + 0x5b72], 0xffff   ; 0x065d
    mov ax, 0x14                     ; 0x0663
    imul word [bp - 0x0006]          ; 0x0666
    mov bx, ax                       ; 0x0669
    mov byte [bx + 0x5b7c], 0        ; 0x066b
    mov ax, word [bp - 0x0006]       ; 0x0670
    shl ax, 1                        ; 0x0673
    shl ax, 1                        ; 0x0675
    mov bx, ax                       ; 0x0677
    mov word [bx + 0x5be2], 0        ; 0x0679
    mov word [bx + 0x5be0], 0        ; 0x067f
    inc word [bp - 0x0006]           ; 0x0685
    mov ax, word [bp - 0x0006]       ; 0x0688
    cmp ax, strict word 5            ; 0x068b
    jl short @..local.l32            ; 0x068e
    mov ax, 0                        ; 0x0690
    push ax                          ; 0x0693
    push ax                          ; 0x0694
    mov ax, 0x916e                   ; 0x0695
    push ax                          ; 0x0698
    call ds_dispatch_d161            ; 0x0699
    add sp, byte 4                   ; 0x069c
    push ax                          ; 0x069f
    call ds_dispatch_f909            ; 0x06a0
    add sp, byte 4                   ; 0x06a3
    mov word [dseg_0e22], ax         ; 0x06a6
    cmp ax, strict word 0xffff       ; 0x06a9
    jne short @..local.l33           ; 0x06ac
    mov ax, 0xa                      ; 0x06ae
    push ax                          ; 0x06b1
    call ds_dispatch_b171            ; 0x06b2
    pop cx                           ; 0x06b5
@..local.l33:
    call ds_dispatch_b9c4            ; 0x06b6
    mov ax, 1                        ; 0x06b9
    push ax                          ; 0x06bc
    mov ax, 0                        ; 0x06bd
    push ax                          ; 0x06c0
    push ax                          ; 0x06c1
    call ds_dispatch_d6dc            ; 0x06c2
    add sp, byte 6                   ; 0x06c5
    mov ax, 1                        ; 0x06c8
    push ax                          ; 0x06cb
    push ax                          ; 0x06cc
    push ax                          ; 0x06cd
    call ds_dispatch_d6dc            ; 0x06ce
    add sp, byte 6                   ; 0x06d1
    mov ax, 1                        ; 0x06d4
    push ax                          ; 0x06d7
    mov ax, 2                        ; 0x06d8
    push ax                          ; 0x06db
    push ax                          ; 0x06dc
    call ds_dispatch_d6dc            ; 0x06dd
    add sp, byte 6                   ; 0x06e0
    mov ax, 1                        ; 0x06e3
    push ax                          ; 0x06e6
    mov ax, 3                        ; 0x06e7
    push ax                          ; 0x06ea
    push ax                          ; 0x06eb
    call ds_dispatch_d6dc            ; 0x06ec
    add sp, byte 6                   ; 0x06ef
    mov ax, 1                        ; 0x06f2
    push ax                          ; 0x06f5
    mov ax, 4                        ; 0x06f6
    push ax                          ; 0x06f9
    push ax                          ; 0x06fa
    call ds_dispatch_d6dc            ; 0x06fb
    add sp, byte 6                   ; 0x06fe
    mov ax, 1                        ; 0x0701
    push ax                          ; 0x0704
    mov ax, 8                        ; 0x0705
    push ax                          ; 0x0708
    push ax                          ; 0x0709
    call ds_dispatch_d6dc            ; 0x070a
    add sp, byte 6                   ; 0x070d
    mov ax, 1                        ; 0x0710
    push ax                          ; 0x0713
    mov ax, 9                        ; 0x0714
    push ax                          ; 0x0717
    push ax                          ; 0x0718
    call ds_dispatch_d6dc            ; 0x0719
    add sp, byte 6                   ; 0x071c
    mov word [dseg_598e], 0xffff     ; 0x071f
    mov word [dseg_82b6], 0xffff     ; 0x0725
    mov word [dseg_100a], 0x905c     ; 0x072b
    mov word [dseg_0e20], 0          ; 0x0731
    mov word [dseg_0e1e], 0          ; 0x0737
    mov word [dseg_0e1c], 0          ; 0x073d
    mov word [dseg_0e1a], 0          ; 0x0743
    mov word [dseg_0e18], 0          ; 0x0749
    mov word [dseg_0e16], 0          ; 0x074f
    mov word [dseg_0e14], 0          ; 0x0755
    mov word [dseg_0e12], 0          ; 0x075b
    mov word [dseg_0e10], 0          ; 0x0761
    mov word [dseg_0e0e], 0          ; 0x0767
    mov ax, 0x400                    ; 0x076d
    mov dx, 0                        ; 0x0770
    push dx                          ; 0x0773
    push ax                          ; 0x0774
    call ds_dispatch_afb9            ; 0x0775
    add sp, byte 4                   ; 0x0778
    mov word [dseg_0e20], dx         ; 0x077b
    mov word [dseg_0e1e], ax         ; 0x077f
    cmp word [dseg_0e20], byte 0     ; 0x0782
    jne short @..local.l34           ; 0x0787
    cmp word [dseg_0e1e], byte 0     ; 0x0789
@..local.l34:
    jne short @..local.l35           ; 0x078e
    mov ax, 0xd                      ; 0x0790
    push ax                          ; 0x0793
    call ds_dispatch_b171            ; 0x0794
    pop cx                           ; 0x0797
@..local.l35:
    mov ax, 0x1000                   ; 0x0798
    mov dx, 0                        ; 0x079b
    push dx                          ; 0x079e
    push ax                          ; 0x079f
    call ds_dispatch_afb9            ; 0x07a0
    add sp, byte 4                   ; 0x07a3
    mov word [dseg_0e1c], dx         ; 0x07a6
    mov word [dseg_0e1a], ax         ; 0x07aa
    cmp word [dseg_0e1c], byte 0     ; 0x07ad
    jne short @..local.l36           ; 0x07b2
    cmp word [dseg_0e1a], byte 0     ; 0x07b4
@..local.l36:
    jne short @..local.l37           ; 0x07b9
    mov ax, 0xd                      ; 0x07bb
    push ax                          ; 0x07be
    call ds_dispatch_b171            ; 0x07bf
    pop cx                           ; 0x07c2
@..local.l37:
    mov ax, 0x1000                   ; 0x07c3
    mov dx, 0                        ; 0x07c6
    push dx                          ; 0x07c9
    push ax                          ; 0x07ca
    call ds_dispatch_afb9            ; 0x07cb
    add sp, byte 4                   ; 0x07ce
    mov word [dseg_0e18], dx         ; 0x07d1
    mov word [dseg_0e16], ax         ; 0x07d5
    cmp word [dseg_0e18], byte 0     ; 0x07d8
    jne short @..local.l38           ; 0x07dd
    cmp word [dseg_0e16], byte 0     ; 0x07df
@..local.l38:
    jne short @..local.l39           ; 0x07e4
    mov ax, 0xd                      ; 0x07e6
    push ax                          ; 0x07e9
    call ds_dispatch_b171            ; 0x07ea
    pop cx                           ; 0x07ed
@..local.l39:
    push word [dseg_5528]            ; 0x07ee
    call ds_dispatch_f4a3            ; 0x07f2
    pop cx                           ; 0x07f5
    mov word [dseg_0e14], ax         ; 0x07f6
    cmp word [dseg_0e14], byte 0     ; 0x07f9
    jne short @..local.l40           ; 0x07fe
    mov ax, 0xd                      ; 0x0800
    push ax                          ; 0x0803
    call ds_dispatch_b171            ; 0x0804
    pop cx                           ; 0x0807
@..local.l40:
    push word [dseg_552a]            ; 0x0808
    call ds_dispatch_f4a3            ; 0x080c
    pop cx                           ; 0x080f
    mov word [dseg_0e12], ax         ; 0x0810
    cmp word [dseg_0e12], byte 0     ; 0x0813
    jne short @..local.l41           ; 0x0818
    mov ax, 0xd                      ; 0x081a
    push ax                          ; 0x081d
    call ds_dispatch_b171            ; 0x081e
    pop cx                           ; 0x0821
@..local.l41:
    mov ax, 0xc00                    ; 0x0822
    push ax                          ; 0x0825
    call ds_dispatch_f4a3            ; 0x0826
    pop cx                           ; 0x0829
    mov word [dseg_0e10], ax         ; 0x082a
    cmp word [dseg_0e10], byte 0     ; 0x082d
    jne short @..local.l42           ; 0x0832
    mov ax, 0xd                      ; 0x0834
    push ax                          ; 0x0837
    call ds_dispatch_b171            ; 0x0838
    pop cx                           ; 0x083b
@..local.l42:
    mov ax, 0x400                    ; 0x083c
    push ax                          ; 0x083f
    call ds_dispatch_f4a3            ; 0x0840
    pop cx                           ; 0x0843
    mov word [dseg_0e0e], ax         ; 0x0844
    cmp word [dseg_0e0e], byte 0     ; 0x0847
    jne short @..local.l43           ; 0x084c
    mov ax, 0xd                      ; 0x084e
    push ax                          ; 0x0851
    call ds_dispatch_b171            ; 0x0852
    pop cx                           ; 0x0855
@..local.l43:
    mov word [dseg_904c], 0          ; 0x0856
    mov ax, 0                        ; 0x085c
    push ax                          ; 0x085f
    push ax                          ; 0x0860
    mov ax, 0x917b                   ; 0x0861
    push ax                          ; 0x0864
    call ds_dispatch_d161            ; 0x0865
    add sp, byte 4                   ; 0x0868
    push ax                          ; 0x086b
    call ds_dispatch_f909            ; 0x086c
    add sp, byte 4                   ; 0x086f
    mov word [bp - 0x0004], ax       ; 0x0872
    cmp ax, strict word 0xffff       ; 0x0875
    jne short @..local.l44           ; 0x0878
    mov ax, 0xe                      ; 0x087a
    push ax                          ; 0x087d
    call ds_dispatch_b171            ; 0x087e
    pop cx                           ; 0x0881
@..local.l44:
    mov ax, 0x300                    ; 0x0882
    push ax                          ; 0x0885
    lea ax, word [bp - 0x031a]       ; 0x0886
    push ax                          ; 0x088a
    push word [bp - 0x0004]          ; 0x088b
    call ds_dispatch_fd6f            ; 0x088e
    add sp, byte 6                   ; 0x0891
    push word [bp - 0x0004]          ; 0x0894
    call ds_dispatch_fda5            ; 0x0897
    pop cx                           ; 0x089a
    lea ax, word [bp - 0x031a]       ; 0x089b
    push ax                          ; 0x089f
    mov al, byte [dseg_5979]         ; 0x08a0
    cbw                              ; 0x08a3
    push ax                          ; 0x08a4
    mov al, byte [dseg_5978]         ; 0x08a5
    cbw                              ; 0x08a8
    push ax                          ; 0x08a9
    call loc_0211                    ; 0x08aa
    add sp, byte 6                   ; 0x08ad
    mov word [dseg_830a], 1          ; 0x08b0
    ret                              ; 0x08b6
