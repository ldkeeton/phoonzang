math_loc_023a:
    mov ax, 0xfeaa                   ; 0x023a
    call ds_dispatch_f40b            ; 0x023d
    mov ax, 6                        ; 0x0240
    imul word [bp + 0xa]             ; 0x0243
    add ax, word [bp + 0x6]          ; 0x0246
    add ax, strict word 0x10         ; 0x0249
    mov word [bp - 0x0006], ax       ; 0x024c
    mov ax, word [bp + 0xc]          ; 0x024f
    imul word [bp + 0xe]             ; 0x0252
    add ax, word [bp + 0x8]          ; 0x0255
    add ax, strict word 0x10         ; 0x0258
    mov word [bp - 0x0008], ax       ; 0x025b
    mov ax, 0x90a3                   ; 0x025e
    push ax                          ; 0x0261
    mov ax, word [bp - 0x0008]       ; 0x0262
    inc ax                           ; 0x0265
    push ax                          ; 0x0266
    mov ax, word [bp - 0x0006]       ; 0x0267
    inc ax                           ; 0x026a
    push ax                          ; 0x026b
    mov ax, word [bp + 0x8]          ; 0x026c
    dec ax                           ; 0x026f
    push ax                          ; 0x0270
    mov ax, word [bp + 0x6]          ; 0x0271
    dec ax                           ; 0x0274
    push ax                          ; 0x0275
    call ds_dispatch_c283            ; 0x0276
    add sp, byte 0x0a                ; 0x0279
    mov word [bp - 0x0154], ax       ; 0x027c
    mov word [bp - 0x0002], 0        ; 0x0280
    mov word [bp - 0x0004], 0        ; 0x0285
@..math_loc_023a.l1:
    mov ax, word [bp - 0x0004]       ; 0x028a
    shl ax, 1                        ; 0x028d
    mov si, ax                       ; 0x028f
    mov bx, word [bp + 0x12]         ; 0x0291
    cmp word [bx + si], byte 0xff    ; 0x0294
    jne short @..math_loc_023a.l2    ; 0x0297
    jmp near @..math_loc_023a.l5     ; 0x0299
@..math_loc_023a.l2:
    cmp word [bx + si], byte 1       ; 0x029c
    je short @..math_loc_023a.l3     ; 0x029f
    jmp near @..math_loc_023a.l4     ; 0x02a1
@..math_loc_023a.l3:
    mov ax, 0x14                     ; 0x02a4
    imul word [bp - 0x0002]          ; 0x02a7
    lea cx, word [bp - 0x0152]       ; 0x02aa
    add ax, cx                       ; 0x02ae
    push ax                          ; 0x02b0
    mov ax, word [bp + 0x4]          ; 0x02b1
    add ax, word [bp - 0x0004]       ; 0x02b4
    push ax                          ; 0x02b7
    call ds_dispatch_b53b            ; 0x02b8
    add sp, byte 4                   ; 0x02bb
    mov ax, 0                        ; 0x02be
    push ax                          ; 0x02c1
    mov ax, word [bp - 0x0002]       ; 0x02c2
    imul word [bp + 0xc]             ; 0x02c5
    add ax, word [bp + 0x8]          ; 0x02c8
    add ax, strict word 0xf          ; 0x02cb
    push ax                          ; 0x02ce
    mov ax, 6                        ; 0x02cf
    imul word [bp + 0xa]             ; 0x02d2
    add ax, word [bp + 0x6]          ; 0x02d5
    add ax, strict word 8            ; 0x02d8
    push ax                          ; 0x02db
    mov ax, word [bp - 0x0002]       ; 0x02dc
    imul word [bp + 0xc]             ; 0x02df
    add ax, word [bp + 0x8]          ; 0x02e2
    add ax, strict word 7            ; 0x02e5
    push ax                          ; 0x02e8
    mov ax, word [bp + 0x6]          ; 0x02e9
    add ax, strict word 8            ; 0x02ec
    push ax                          ; 0x02ef
    call ds_dispatch_bce3            ; 0x02f0
    add sp, byte 0x0a                ; 0x02f3
    mov ax, 0xc0                     ; 0x02f6
    push ax                          ; 0x02f9
    push word [bp + 0x10]            ; 0x02fa
    call ds_dispatch_e823            ; 0x02fd
    add sp, byte 4                   ; 0x0300
    mov ax, word [bp - 0x0002]       ; 0x0303
    imul word [bp + 0xc]             ; 0x0306
    add ax, word [bp + 0x8]          ; 0x0309
    add ax, strict word 9            ; 0x030c
    push ax                          ; 0x030f
    mov ax, 0x14                     ; 0x0310
    imul word [bp - 0x0002]          ; 0x0313
    lea cx, word [bp - 0x0152]       ; 0x0316
    add ax, cx                       ; 0x031a
    push ax                          ; 0x031c
    call ds_dispatch_fa90            ; 0x031d
    pop cx                           ; 0x0320
    mov cx, ax                       ; 0x0321
    mov ax, word [bp + 0xa]          ; 0x0323
    sub ax, cx                       ; 0x0326
    mov cx, 6                        ; 0x0328
    imul cx                          ; 0x032b
    mov cx, data_0002                ; 0x032d
    cwd                              ; 0x0330
    idiv cx                          ; 0x0331
    add ax, word [bp + 0x6]          ; 0x0333
    add ax, strict word 9            ; 0x0336
    push ax                          ; 0x0339
    call ds_dispatch_e809            ; 0x033a
    add sp, byte 4                   ; 0x033d
    mov ax, 0                        ; 0x0340
    push ax                          ; 0x0343
    mov ax, 0x14                     ; 0x0344
    imul word [bp - 0x0002]          ; 0x0347
    lea cx, word [bp - 0x0152]       ; 0x034a
    add ax, cx                       ; 0x034e
    push ax                          ; 0x0350
    call ds_dispatch_e84e            ; 0x0351
    add sp, byte 4                   ; 0x0354
    mov ax, 0                        ; 0x0357
    push ax                          ; 0x035a
    push ax                          ; 0x035b
    mov ax, word [bp - 0x0002]       ; 0x035c
    imul word [bp + 0xc]             ; 0x035f
    add ax, word [bp + 0x8]          ; 0x0362
    add ax, strict word 0xf          ; 0x0365
    push ax                          ; 0x0368
    mov ax, 6                        ; 0x0369
    imul word [bp + 0xa]             ; 0x036c
    add ax, word [bp + 0x6]          ; 0x036f
    add ax, strict word 8            ; 0x0372
    push ax                          ; 0x0375
    mov ax, word [bp - 0x0002]       ; 0x0376
    imul word [bp + 0xc]             ; 0x0379
    add ax, word [bp + 0x8]          ; 0x037c
    add ax, strict word 7            ; 0x037f
    push ax                          ; 0x0382
    mov ax, word [bp + 0x6]          ; 0x0383
    add ax, strict word 8            ; 0x0386
    push ax                          ; 0x0389
    push word [bp - 0x0002]          ; 0x038a
    call ds_dispatch_baa6            ; 0x038d
    add sp, byte 0x0e                ; 0x0390
    mov ax, word [bp - 0x0004]       ; 0x0393
    mov cx, word [bp - 0x0002]       ; 0x0396
    shl cx, 1                        ; 0x0399
    mov bx, cx                       ; 0x039b
    add bx, bp                       ; 0x039d
    mov word [bx - 0x0026], ax       ; 0x039f
    inc word [bp - 0x0002]           ; 0x03a2
@..math_loc_023a.l4:
    inc word [bp - 0x0004]           ; 0x03a5
    jmp near @..math_loc_023a.l1     ; 0x03a8
@..math_loc_023a.l5:
    mov ax, 0                        ; 0x03ab
    push ax                          ; 0x03ae
    push ax                          ; 0x03af
    push ax                          ; 0x03b0
    push ax                          ; 0x03b1
    push ax                          ; 0x03b2
    mov ax, 0xffff                   ; 0x03b3
    push ax                          ; 0x03b6
    push word [bp - 0x0002]          ; 0x03b7
    call ds_dispatch_baa6            ; 0x03ba
    add sp, byte 0x0e                ; 0x03bd
    mov ax, word [bp - 0x0008]       ; 0x03c0
    inc ax                           ; 0x03c3
    push ax                          ; 0x03c4
    mov ax, word [bp - 0x0006]       ; 0x03c5
    inc ax                           ; 0x03c8
    push ax                          ; 0x03c9
    mov ax, word [bp + 0x8]          ; 0x03ca
    dec ax                           ; 0x03cd
    push ax                          ; 0x03ce
    mov ax, word [bp + 0x6]          ; 0x03cf
    dec ax                           ; 0x03d2
    push ax                          ; 0x03d3
    call ds_dispatch_e8da            ; 0x03d4
    add sp, byte 8                   ; 0x03d7
    cmp word [data_0e32], byte 0     ; 0x03da
    je short @..math_loc_023a.l7     ; 0x03df
@..math_loc_023a.l6:
    mov ax, 0x59fe                   ; 0x03e1
    push ax                          ; 0x03e4
    call ds_dispatch_b90d            ; 0x03e5
    pop cx                           ; 0x03e8
    mov word [bp - 0x0004], ax       ; 0x03e9
    cmp word [data_5b3e], byte 0     ; 0x03ec
    je short @..math_loc_023a.l6     ; 0x03f1
    jmp near @..math_loc_023a.l16    ; 0x03f3
@..math_loc_023a.l7:
    mov word [bp - 0x0004], 0        ; 0x03f6
@..math_loc_023a.l8:
    mov ax, 0x16                     ; 0x03fb
    push ax                          ; 0x03fe
    mov ax, word [bp - 0x0004]       ; 0x03ff
    imul word [bp + 0xc]             ; 0x0402
    add ax, word [bp + 0x8]          ; 0x0405
    add ax, strict word 0xf          ; 0x0408
    push ax                          ; 0x040b
    mov ax, 6                        ; 0x040c
    imul word [bp + 0xa]             ; 0x040f
    add ax, word [bp + 0x6]          ; 0x0412
    add ax, strict word 8            ; 0x0415
    push ax                          ; 0x0418
    mov ax, word [bp - 0x0004]       ; 0x0419
    imul word [bp + 0xc]             ; 0x041c
    add ax, word [bp + 0x8]          ; 0x041f
    add ax, strict word 7            ; 0x0422
    push ax                          ; 0x0425
    mov ax, word [bp + 0x6]          ; 0x0426
    add ax, strict word 8            ; 0x0429
    push ax                          ; 0x042c
    call loc_01bf                    ; 0x042d
    add sp, byte 0x0a                ; 0x0430
    mov ax, word [bp - 0x0008]       ; 0x0433
    inc ax                           ; 0x0436
    push ax                          ; 0x0437
