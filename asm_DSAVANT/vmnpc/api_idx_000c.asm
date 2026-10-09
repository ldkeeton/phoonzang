api_idx_000c:
    mov ax, 0xfff4                   ; 0x01d2
    db 0xe8, 0x33, 0xf2 ; call 0xf40b
    mov word [bp - 0x000c], 0        ; 0x01d8
    mov ax, 0x15e                    ; 0x01dd
    imul word [bp + 0x4]             ; 0x01e0
    push ax                          ; 0x01e3
    mov ax, 3                        ; 0x01e4
    imul word [bp + 0x6]             ; 0x01e7
    add ax, word [bp + 0x8]          ; 0x01ea
    mov bx, ax                       ; 0x01ed
    mov al, byte [bx - 0x7bd0]       ; 0x01ef
    sub ah, ah                       ; 0x01f3
    mov cx, ax                       ; 0x01f5
    pop ax                           ; 0x01f7
    add ax, cx                       ; 0x01f8
    mov bx, ax                       ; 0x01fa
    mov al, byte [bx + 0x6a1a]       ; 0x01fc
    sub ah, ah                       ; 0x0200
    mov word [bp - 0x0002], ax       ; 0x0202
    jmp near @..api_idx_000c.l13     ; 0x0205
@..api_idx_000c.l1:
    mov ax, 0x5a                     ; 0x0208
    imul word [bp + 0x6]             ; 0x020b
    push ax                          ; 0x020e
    mov ax, 0x1e                     ; 0x020f
    imul word [bp + 0x8]             ; 0x0212
    mov cx, ax                       ; 0x0215
    pop ax                           ; 0x0217
    add ax, cx                       ; 0x0218
    push ax                          ; 0x021a
    mov ax, 3                        ; 0x021b
    imul word [bp - 0x0002]          ; 0x021e
    mov cx, ax                       ; 0x0221
    pop ax                           ; 0x0223
    add ax, cx                       ; 0x0224
    mov bx, ax                       ; 0x0226
    mov al, byte [bx - 0x7cdd]       ; 0x0228
    sub ah, ah                       ; 0x022c
    mov word [bp - 0x0006], ax       ; 0x022e
    mov bx, word [bp + 0x4]          ; 0x0231
    cmp byte [bx + 0x5b48], 0x18     ; 0x0234
    jne short @..api_idx_000c.l2     ; 0x0239
    cmp word [data_9134], byte 1     ; 0x023b
    jne short @..api_idx_000c.l2     ; 0x0240
    mov ax, 0x15e                    ; 0x0242
    imul bx                          ; 0x0245
    mov cx, word [bp - 0x0006]       ; 0x0247
    shl cx, 1                        ; 0x024a
    shl cx, 1                        ; 0x024c
    add ax, cx                       ; 0x024e
    mov bx, ax                       ; 0x0250
    cmp byte [bx + 0x6ac0], 4        ; 0x0252
    jne short @..api_idx_000c.l2     ; 0x0257
    mov word [bp + 0xa], 0           ; 0x0259
@..api_idx_000c.l2:
    mov ax, 0x5a                     ; 0x025e
    imul word [bp + 0x6]             ; 0x0261
    push ax                          ; 0x0264
    mov ax, 0x1e                     ; 0x0265
    imul word [bp + 0x8]             ; 0x0268
    mov cx, ax                       ; 0x026b
    pop ax                           ; 0x026d
    add ax, cx                       ; 0x026e
    push ax                          ; 0x0270
    mov ax, 3                        ; 0x0271
    imul word [bp - 0x0002]          ; 0x0274
    mov cx, ax                       ; 0x0277
    pop ax                           ; 0x0279
    add ax, cx                       ; 0x027a
    mov bx, ax                       ; 0x027c
    mov al, byte [bx - 0x7cdc]       ; 0x027e
    sub ah, ah                       ; 0x0282
    mov word [bp - 0x0008], ax       ; 0x0284
    cmp word [bp + 0xa], byte 0      ; 0x0287
    je short @..api_idx_000c.l3      ; 0x028b
    dec word [bp - 0x0008]           ; 0x028d
@..api_idx_000c.l3:
    cmp word [bp - 0x0008], byte 0   ; 0x0290
    jle short @..api_idx_000c.l4     ; 0x0294
    jmp near @..api_idx_000c.l8      ; 0x0296
@..api_idx_000c.l4:
    mov al, byte [bx - 0x7cde]       ; 0x0299
    sub ah, ah                       ; 0x029d
    mov word [bp - 0x0004], ax       ; 0x029f
    inc word [bp - 0x0006]           ; 0x02a2
    mov ax, 0x15e                    ; 0x02a5
    imul word [bp + 0x4]             ; 0x02a8
    mov cx, ax                       ; 0x02ab
    mov ax, word [bp - 0x0004]       ; 0x02ad
    add cx, ax                       ; 0x02b0
    mov bx, cx                       ; 0x02b2
    mov al, byte [bx + 0x6a40]       ; 0x02b4
    sub ah, ah                       ; 0x02b8
    push ax                          ; 0x02ba
    mov al, byte [bx + 0x6a4a]       ; 0x02bb
    sub ah, ah                       ; 0x02bf
    mov cx, ax                       ; 0x02c1
    pop ax                           ; 0x02c3
    add ax, cx                       ; 0x02c4
    dec ax                           ; 0x02c6
    cmp ax, word [bp - 0x0006]       ; 0x02c7
    jl short @..api_idx_000c.l5      ; 0x02ca
    jmp near @..api_idx_000c.l7      ; 0x02cc
@..api_idx_000c.l5:
    mov ax, 3                        ; 0x02cf
    imul word [bp + 0x6]             ; 0x02d2
    add ax, word [bp + 0x8]          ; 0x02d5
    mov bx, ax                       ; 0x02d8
    cmp byte [bx - 0x7bd0], 0        ; 0x02da
    je short @..api_idx_000c.l6      ; 0x02df
    mov byte [bx - 0x7bd0], 0        ; 0x02e1
    mov ax, 0                        ; 0x02e6
    push ax                          ; 0x02e9
    push word [bp + 0x8]             ; 0x02ea
    push word [bp + 0x6]             ; 0x02ed
    push word [bp + 0x4]             ; 0x02f0
    call api_idx_0008                ; 0x02f3
    add sp, byte 8                   ; 0x02f6
    push word [bp + 0xc]             ; 0x02f9
    mov ax, 0                        ; 0x02fc
    push ax                          ; 0x02ff
    push word [bp + 0x8]             ; 0x0300
    push word [bp + 0x6]             ; 0x0303
    push word [bp + 0x4]             ; 0x0306
    call api_idx_000c                ; 0x0309
    add sp, byte 0x0a                ; 0x030c
    ret                              ; 0x030f
@..api_idx_000c.l6:
    mov ax, 0x15e                    ; 0x0310
    imul word [bp + 0x4]             ; 0x0313
    add ax, word [bp - 0x0002]       ; 0x0316
    mov bx, ax                       ; 0x0319
    mov al, byte [bx + 0x6a2c]       ; 0x031b
    sub ah, ah                       ; 0x031f
    push ax                          ; 0x0321
    db 0xe8, 0x84, 0xb4 ; call 0xb7a9
    pop cx                           ; 0x0325
    push ax                          ; 0x0326
    mov ax, 0x15e                    ; 0x0327
    imul word [bp + 0x4]             ; 0x032a
    add ax, word [bp - 0x0002]       ; 0x032d
    mov bx, ax                       ; 0x0330
    mov al, byte [bx + 0x6a22]       ; 0x0332
    sub ah, ah                       ; 0x0336
    mov cx, ax                       ; 0x0338
    pop ax                           ; 0x033a
    add ax, cx                       ; 0x033b
    mov word [bp - 0x0004], ax       ; 0x033d
    mov al, byte [bp - 0x0004]       ; 0x0340
    push ax                          ; 0x0343
    mov ax, 0x5a                     ; 0x0344
    imul word [bp + 0x6]             ; 0x0347
    mov cx, ax                       ; 0x034a
    mov ax, 0x1e                     ; 0x034c
    imul word [bp + 0x8]             ; 0x034f
    mov dx, ax                       ; 0x0352
    add cx, ax                       ; 0x0354
    mov ax, 3                        ; 0x0356
    imul word [bp - 0x0002]          ; 0x0359
    mov dx, ax                       ; 0x035c
    add cx, ax                       ; 0x035e
    mov bx, cx                       ; 0x0360
    pop ax                           ; 0x0362
    mov byte [bx - 0x7cde], al       ; 0x0363
    mov ax, 0x15e                    ; 0x0367
    imul word [bp + 0x4]             ; 0x036a
    add ax, word [bp - 0x0004]       ; 0x036d
    mov bx, ax                       ; 0x0370
    mov al, byte [bx + 0x6a40]       ; 0x0372
    sub ah, ah                       ; 0x0376
    mov word [bp - 0x0006], ax       ; 0x0378
@..api_idx_000c.l7:
    mov al, byte [bp - 0x0006]       ; 0x037b
    push ax                          ; 0x037e
    mov ax, 0x5a                     ; 0x037f
    imul word [bp + 0x6]             ; 0x0382
    mov cx, ax                       ; 0x0385
    mov ax, 0x1e                     ; 0x0387
    imul word [bp + 0x8]             ; 0x038a
    mov dx, ax                       ; 0x038d
    add cx, ax                       ; 0x038f
    mov ax, 3                        ; 0x0391
    imul word [bp - 0x0002]          ; 0x0394
    mov dx, ax                       ; 0x0397
    add cx, ax                       ; 0x0399
    mov bx, cx                       ; 0x039b
    pop ax                           ; 0x039d
    mov byte [bx - 0x7cdd], al       ; 0x039e
    mov ax, 0x15e                    ; 0x03a2
    imul word [bp + 0x4]             ; 0x03a5
    mov cx, word [bp - 0x0006]       ; 0x03a8
    shl cx, 1                        ; 0x03ab
    shl cx, 1                        ; 0x03ad
    add ax, cx                       ; 0x03af
    mov bx, ax                       ; 0x03b1
    mov al, byte [bx + 0x6ac2]       ; 0x03b3
    sub ah, ah                       ; 0x03b7
    push ax                          ; 0x03b9
    db 0xe8, 0xec, 0xb3 ; call 0xb7a9
    pop cx                           ; 0x03bd
    push ax                          ; 0x03be
    mov ax, 0x15e                    ; 0x03bf
    imul word [bp + 0x4]             ; 0x03c2
    mov cx, word [bp - 0x0006]       ; 0x03c5
    shl cx, 1                        ; 0x03c8
    shl cx, 1                        ; 0x03ca
    add ax, cx                       ; 0x03cc
    mov bx, ax                       ; 0x03ce
    mov al, byte [bx + 0x6ac1]       ; 0x03d0
    sub ah, ah                       ; 0x03d4
    mov cx, ax                       ; 0x03d6
    pop ax                           ; 0x03d8
    add ax, cx                       ; 0x03d9
    mov word [bp - 0x0008], ax       ; 0x03db
@..api_idx_000c.l8:
    mov al, byte [bp - 0x0008]       ; 0x03de
    push ax                          ; 0x03e1
    mov ax, 0x5a                     ; 0x03e2
    imul word [bp + 0x6]             ; 0x03e5
    mov cx, ax                       ; 0x03e8
    mov ax, 0x1e                     ; 0x03ea
    imul word [bp + 0x8]             ; 0x03ed
    mov dx, ax                       ; 0x03f0
    add cx, ax                       ; 0x03f2
    mov ax, 3                        ; 0x03f4
    imul word [bp - 0x0002]          ; 0x03f7
    mov dx, ax                       ; 0x03fa
    add cx, ax                       ; 0x03fc
    mov bx, cx                       ; 0x03fe
    pop ax                           ; 0x0400
    mov byte [bx - 0x7cdc], al       ; 0x0401
    mov ax, 0x15e                    ; 0x0405
    imul word [bp + 0x4]             ; 0x0408
    mov cx, word [bp - 0x0006]       ; 0x040b
    shl cx, 1                        ; 0x040e
    shl cx, 1                        ; 0x0410
    add ax, cx                       ; 0x0412
    mov bx, ax                       ; 0x0414
    mov al, byte [bx + 0x6ac0]       ; 0x0416
    mov bx, word [bp + 0xc]          ; 0x041a
    mov si, word [bp - 0x000c]       ; 0x041d
    mov byte [bx + si], al           ; 0x0420
    mov bx, word [bp + 0x4]          ; 0x0422
    cmp byte [bx + 0x5b48], 0x47     ; 0x0425
    jne short @..api_idx_000c.l9     ; 0x042a
    mov ax, 0x5a                     ; 0x042c
    imul word [bp + 0x6]             ; 0x042f
    push ax                          ; 0x0432
    mov ax, 0x1e                     ; 0x0433
    imul word [bp + 0x8]             ; 0x0436
    mov cx, ax                       ; 0x0439
    pop ax                           ; 0x043b
    add ax, cx                       ; 0x043c
    push ax                          ; 0x043e
    mov ax, 3                        ; 0x043f
    imul word [bp - 0x0002]          ; 0x0442
    mov cx, ax                       ; 0x0445
    pop ax                           ; 0x0447
    add ax, cx                       ; 0x0448
    mov bx, ax                       ; 0x044a
    mov al, byte [bx - 0x7cde]       ; 0x044c
    sub ah, ah                       ; 0x0450
    xchg al, ah                      ; 0x0452
    sub al, al                       ; 0x0454
    push ax                          ; 0x0456
    mov al, byte [bx - 0x7cdd]       ; 0x0457
    sub ah, ah                       ; 0x045b
    mov cx, ax                       ; 0x045d
    pop ax                           ; 0x045f
    add ax, cx                       ; 0x0460
    mov word [data_8460], ax         ; 0x0462
@..api_idx_000c.l9:
    cmp word [data_9136], byte 0x23  ; 0x0465
    je short @..api_idx_000c.l10     ; 0x046a
    cmp word [data_9136], byte 0x0b  ; 0x046c
    jne short @..api_idx_000c.l11    ; 0x0471
@..api_idx_000c.l10:
    inc word [bp - 0x000c]           ; 0x0473
    mov bx, word [bp + 0xc]          ; 0x0476
    mov si, word [bp - 0x000c]       ; 0x0479
    mov al, byte [bx + si - 0x0001]  ; 0x047c
    mov byte [bx + si], al           ; 0x047f
    mov ax, 0x15e                    ; 0x0481
    imul word [bp + 0x4]             ; 0x0484
    mov bx, ax                       ; 0x0487
    mov al, byte [bx + 0x6b76]       ; 0x0489
    mov bx, word [bp + 0xc]          ; 0x048d
    mov si, word [bp - 0x000c]       ; 0x0490
    mov byte [bx + si - 0x0001], al  ; 0x0493
@..api_idx_000c.l11:
    mov bx, word [bp + 0xc]          ; 0x0496
    mov si, word [bp - 0x000c]       ; 0x0499
    cmp byte [bx + si], 0            ; 0x049c
    je short @..api_idx_000c.l12     ; 0x049f
    inc word [bp - 0x000c]           ; 0x04a1
@..api_idx_000c.l12:
    inc word [bp - 0x0002]           ; 0x04a4
@..api_idx_000c.l13:
    mov ax, 0x15e                    ; 0x04a7
    imul word [bp + 0x4]             ; 0x04aa
    push ax                          ; 0x04ad
    mov ax, 3                        ; 0x04ae
    imul word [bp + 0x6]             ; 0x04b1
    add ax, word [bp + 0x8]          ; 0x04b4
    mov bx, ax                       ; 0x04b7
    mov al, byte [bx - 0x7bd0]       ; 0x04b9
    sub ah, ah                       ; 0x04bd
    mov cx, ax                       ; 0x04bf
    pop ax                           ; 0x04c1
    add ax, cx                       ; 0x04c2
    mov bx, ax                       ; 0x04c4
    mov al, byte [bx + 0x6a1a]       ; 0x04c6
    sub ah, ah                       ; 0x04ca
    push ax                          ; 0x04cc
    mov al, byte [bx + 0x6a1e]       ; 0x04cd
    sub ah, ah                       ; 0x04d1
    mov cx, ax                       ; 0x04d3
    pop ax                           ; 0x04d5
    add ax, cx                       ; 0x04d6
    cmp ax, word [bp - 0x0002]       ; 0x04d8
    jle short @..api_idx_000c.l14    ; 0x04db
    jmp near @..api_idx_000c.l1      ; 0x04dd
@..api_idx_000c.l14:
    cmp word [data_9136], byte 0x3c  ; 0x04e0
    jge short @..api_idx_000c.l15    ; 0x04e5
    jmp near @..api_idx_000c.l20     ; 0x04e7
@..api_idx_000c.l15:
    cmp word [data_9136], byte 0x3e  ; 0x04ea
    jle short @..api_idx_000c.l16    ; 0x04ef
    jmp near @..api_idx_000c.l20     ; 0x04f1
@..api_idx_000c.l16:
    mov ax, 0x15e                    ; 0x04f4
    imul word [bp + 0x4]             ; 0x04f7
    mov cx, word [data_9134]         ; 0x04fa
    shl cx, 1                        ; 0x04fe
    shl cx, 1                        ; 0x0500
    add ax, cx                       ; 0x0502
    mov bx, ax                       ; 0x0504
    mov al, byte [bx + 0x6ac0]       ; 0x0506
    mov bx, word [bp + 0xc]          ; 0x050a
    mov byte [bx], al                ; 0x050d
    mov ax, 0x15e                    ; 0x050f
    imul word [bp + 0x4]             ; 0x0512
    mov cx, word [data_9134]         ; 0x0515
    shl cx, 1                        ; 0x0519
    shl cx, 1                        ; 0x051b
    add ax, cx                       ; 0x051d
    mov bx, ax                       ; 0x051f
    mov al, byte [bx + 0x6ac1]       ; 0x0521
    mov bx, word [bp + 0xc]          ; 0x0525
    mov byte [bx + 0x1], al          ; 0x0528
    mov ax, 0x15e                    ; 0x052b
    imul word [bp + 0x4]             ; 0x052e
    mov cx, word [data_9134]         ; 0x0531
    shl cx, 1                        ; 0x0535
    shl cx, 1                        ; 0x0537
    add ax, cx                       ; 0x0539
    mov bx, ax                       ; 0x053b
    mov al, byte [bx + 0x6ac2]       ; 0x053d
    mov bx, word [bp + 0xc]          ; 0x0541
    mov byte [bx + 0x2], al          ; 0x0544
    mov bx, word [bp + 0xc]          ; 0x0547
    mov byte [bx + 0x3], 0           ; 0x054a
    mov word [bp - 0x000c], 3        ; 0x054e
    mov ax, word [data_9134]         ; 0x0553
    jmp short @..api_idx_000c.l19    ; 0x0556
@..api_idx_000c.l17:
    mov bx, word [bp + 0xc]          ; 0x0558
    mov al, byte [bx]                ; 0x055b
    sub ah, ah                       ; 0x055d
    add ax, word [data_82e8]         ; 0x055f
    mov byte [bx], al                ; 0x0563
    jmp short @..api_idx_000c.l20    ; 0x0565
@..api_idx_000c.l18:
    mov bx, word [bp + 0xc]          ; 0x0567
    mov al, byte [bx + 0x1]          ; 0x056a
    sub ah, ah                       ; 0x056d
    add ax, word [data_82e8]         ; 0x056f
    mov byte [bx + 0x1], al          ; 0x0573
    jmp short @..api_idx_000c.l20    ; 0x0576
@..api_idx_000c.l19:
    cmp ax, strict word 1            ; 0x0578
    je short @..api_idx_000c.l17     ; 0x057b
    cmp ax, strict word 2            ; 0x057d
    je short @..api_idx_000c.l17     ; 0x0580
    cmp ax, strict word 0x14         ; 0x0582
    je short @..api_idx_000c.l18     ; 0x0585
@..api_idx_000c.l20:
    mov bx, word [bp + 0x4]          ; 0x0587
    mov al, byte [bx + 0x5b48]       ; 0x058a
    sub ah, ah                       ; 0x058e
    jmp short @..api_idx_000c.l30    ; 0x0590
@..api_idx_000c.l21:
    cmp word [data_9134], byte 1     ; 0x0592
    jne short @..api_idx_000c.l22    ; 0x0597
    mov word [bp - 0x000c], 1        ; 0x0599
@..api_idx_000c.l22:
    jmp short @..api_idx_000c.l31    ; 0x059e
@..api_idx_000c.l23:
    cmp word [data_9134], byte 1     ; 0x05a0
    jne short @..api_idx_000c.l24    ; 0x05a5
    mov word [bp - 0x000c], 1        ; 0x05a7
@..api_idx_000c.l24:
    cmp word [data_9134], byte 2     ; 0x05ac
    jne short @..api_idx_000c.l25    ; 0x05b1
    mov ax, word [data_82e8]         ; 0x05b3
    inc ax                           ; 0x05b6
    inc ax                           ; 0x05b7
    inc ax                           ; 0x05b8
    mov bx, word [bp + 0xc]          ; 0x05b9
    mov byte [bx + 0x1], al          ; 0x05bc
@..api_idx_000c.l25:
    jmp short @..api_idx_000c.l31    ; 0x05bf
@..api_idx_000c.l26:
    cmp word [data_9134], byte 1     ; 0x05c1
    jne short @..api_idx_000c.l27    ; 0x05c6
    mov bx, word [bp + 0xc]          ; 0x05c8
    mov byte [bx + 0x1], data_0002   ; 0x05cb
@..api_idx_000c.l27:
    mov word [bp - 0x000c], data_0002 ; 0x05cf
    jmp short @..api_idx_000c.l31    ; 0x05d4
@..api_idx_000c.l28:
    cmp word [data_9134], byte 1     ; 0x05d6
    jne short @..api_idx_000c.l29    ; 0x05db
    mov ax, word [data_82e8]         ; 0x05dd
    inc ax                           ; 0x05e0
    mov bx, word [bp + 0xc]          ; 0x05e1
    mov byte [bx], al                ; 0x05e4
@..api_idx_000c.l29:
    db 0xc7, 0x46
@..io_loc_4fa9.l1:
    db 0xf4, 0x01
    db 0x00
    jmp short @..api_idx_000c.l31    ; 0x05eb
@..api_idx_000c.l30:
    cmp ax, strict word 0x34         ; 0x05ed
    je short @..api_idx_000c.l21     ; 0x05f0
    cmp ax, strict word 0x37         ; 0x05f2
    je short @..api_idx_000c.l23     ; 0x05f5
    cmp ax, strict word 0x46         ; 0x05f7
    je short @..api_idx_000c.l26     ; 0x05fa
    cmp ax, strict word 0x49         ; 0x05fc
    je short @..api_idx_000c.l28     ; 0x05ff
@..api_idx_000c.l31:
    cmp word [data_9136], byte 0x2d  ; 0x0601
    je short @..api_idx_000c.l32     ; 0x0606
    cmp word [data_9136], byte 0x32  ; 0x0608
    jne short @..api_idx_000c.l33    ; 0x060d
@..api_idx_000c.l32:
    cmp word [data_9134], byte 0     ; 0x060f
    jle short @..api_idx_000c.l33    ; 0x0614
    mov al, byte [data_9134]         ; 0x0616
    mov bx, word [bp + 0xc]          ; 0x0619
    mov byte [bx], al                ; 0x061c
    mov word [bp - 0x000c], 1        ; 0x061e
@..api_idx_000c.l33:
    mov bx, word [bp + 0xc]          ; 0x0623
    mov si, word [bp - 0x000c]       ; 0x0626
    mov byte [bx + si], 0            ; 0x0629
    ret                              ; 0x062c
