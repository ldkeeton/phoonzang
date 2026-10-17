; auto-generated
loc_LSRQ:
    mov ax, 0xfeaa                   ; 0x023a
    call aztec_csav                  ; 0x023d
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
    call ds_app_file_LMRK            ; 0x0276
    add sp, byte 0x0a                ; 0x0279
    mov word [bp - 0x0154], ax       ; 0x027c
    mov word [bp - 0x0002], 0        ; 0x0280
    mov word [bp - 0x0004], 0        ; 0x0285
@..loc_LSRQ.l1:
    mov ax, word [bp - 0x0004]       ; 0x028a
    shl ax, 1                        ; 0x028d
    mov si, ax                       ; 0x028f
    mov bx, word [bp + 0x12]         ; 0x0291
    cmp word [bx + si], byte 0xff    ; 0x0294
    jne short @..loc_LSRQ.l2         ; 0x0297
    jmp near @..loc_LSRQ.l5          ; 0x0299
@..loc_LSRQ.l2:
    cmp word [bx + si], byte 1       ; 0x029c
    je short @..loc_LSRQ.l3          ; 0x029f
    jmp near @..loc_LSRQ.l4          ; 0x02a1
@..loc_LSRQ.l3:
    mov ax, 0x14                     ; 0x02a4
    imul word [bp - 0x0002]          ; 0x02a7
    lea cx, word [bp - 0x0152]       ; 0x02aa
    add ax, cx                       ; 0x02ae
    push ax                          ; 0x02b0
    mov ax, word [bp + 0x4]          ; 0x02b1
    add ax, word [bp - 0x0004]       ; 0x02b4
    push ax                          ; 0x02b7
    call ds_app_mem_TIMR             ; 0x02b8
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
    call ds_app_PQGJ                 ; 0x02f0
    add sp, byte 0x0a                ; 0x02f3
    mov ax, 0xc0                     ; 0x02f6
    push ax                          ; 0x02f9
    push word [bp + 0x10]            ; 0x02fa
    call thunk_3                     ; 0x02fd
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
    call aztec_strlen                ; 0x031d
    pop cx                           ; 0x0320
    mov cx, ax                       ; 0x0321
    mov ax, word [bp + 0xa]          ; 0x0323
    sub ax, cx                       ; 0x0326
    mov cx, 6                        ; 0x0328
    imul cx                          ; 0x032b
    mov cx, 2                        ; 0x032d
    cwd                              ; 0x0330
    idiv cx                          ; 0x0331
    add ax, word [bp + 0x6]          ; 0x0333
    add ax, strict word 9            ; 0x0336
    push ax                          ; 0x0339
    call thunk                       ; 0x033a
    add sp, byte 4                   ; 0x033d
    mov ax, 0                        ; 0x0340
    push ax                          ; 0x0343
    mov ax, 0x14                     ; 0x0344
    imul word [bp - 0x0002]          ; 0x0347
    lea cx, word [bp - 0x0152]       ; 0x034a
    add ax, cx                       ; 0x034e
    push ax                          ; 0x0350
    call ds_string_loc_QRJV          ; 0x0351
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
    call ds_app_NGUR                 ; 0x038d
    add sp, byte 0x0e                ; 0x0390
    mov ax, word [bp - 0x0004]       ; 0x0393
    mov cx, word [bp - 0x0002]       ; 0x0396
    shl cx, 1                        ; 0x0399
    mov bx, cx                       ; 0x039b
    add bx, bp                       ; 0x039d
    mov word [bx - 0x0026], ax       ; 0x039f
    inc word [bp - 0x0002]           ; 0x03a2
@..loc_LSRQ.l4:
    inc word [bp - 0x0004]           ; 0x03a5
    jmp near @..loc_LSRQ.l1          ; 0x03a8
@..loc_LSRQ.l5:
    mov ax, 0                        ; 0x03ab
    push ax                          ; 0x03ae
    push ax                          ; 0x03af
    push ax                          ; 0x03b0
    push ax                          ; 0x03b1
    push ax                          ; 0x03b2
    mov ax, 0xffff                   ; 0x03b3
    push ax                          ; 0x03b6
    push word [bp - 0x0002]          ; 0x03b7
    call ds_app_NGUR                 ; 0x03ba
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
    call thunk_4                     ; 0x03d4
    add sp, byte 8                   ; 0x03d7
    cmp word [bss_0e32], byte 0      ; 0x03da
    je short @..loc_LSRQ.l7          ; 0x03df
@..loc_LSRQ.l6:
    mov ax, 0x59fe                   ; 0x03e1
    push ax                          ; 0x03e4
    call ds_app_io_UHMG              ; 0x03e5
    pop cx                           ; 0x03e8
    mov word [bp - 0x0004], ax       ; 0x03e9
    cmp word [bss_5b3e], byte 0      ; 0x03ec
    je short @..loc_LSRQ.l6          ; 0x03f1
    jmp near @..loc_LSRQ.l16         ; 0x03f3
@..loc_LSRQ.l7:
    mov word [bp - 0x0004], 0        ; 0x03f6
@..loc_LSRQ.l8:
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
    call loc_MNNG                    ; 0x042d
    add sp, byte 0x0a                ; 0x0430
    mov ax, word [bp - 0x0008]       ; 0x0433
    inc ax                           ; 0x0436
    push ax                          ; 0x0437
    mov ax, word [bp - 0x0006]       ; 0x0438
    inc ax                           ; 0x043b
    push ax                          ; 0x043c
    mov ax, word [bp + 0x8]          ; 0x043d
    dec ax                           ; 0x0440
    push ax                          ; 0x0441
    mov ax, word [bp + 0x6]          ; 0x0442
    dec ax                           ; 0x0445
    push ax                          ; 0x0446
    call thunk_4                     ; 0x0447
    add sp, byte 8                   ; 0x044a
    mov ax, 0                        ; 0x044d
    push ax                          ; 0x0450
    mov ax, word [bp - 0x0004]       ; 0x0451
    imul word [bp + 0xc]             ; 0x0454
    add ax, word [bp + 0x8]          ; 0x0457
    add ax, strict word 0xf          ; 0x045a
    push ax                          ; 0x045d
    mov ax, 6                        ; 0x045e
    imul word [bp + 0xa]             ; 0x0461
    add ax, word [bp + 0x6]          ; 0x0464
    add ax, strict word 8            ; 0x0467
    push ax                          ; 0x046a
    mov ax, word [bp - 0x0004]       ; 0x046b
    imul word [bp + 0xc]             ; 0x046e
    add ax, word [bp + 0x8]          ; 0x0471
    add ax, strict word 7            ; 0x0474
    push ax                          ; 0x0477
    mov ax, word [bp + 0x6]          ; 0x0478
    add ax, strict word 8            ; 0x047b
    push ax                          ; 0x047e
    call loc_MNNG                    ; 0x047f
    add sp, byte 0x0a                ; 0x0482
@..loc_LSRQ.l9:
    mov ax, 1                        ; 0x0485
    push ax                          ; 0x0488
    call dos_con_in_noecho           ; 0x0489
    pop cx                           ; 0x048c
    test ax, ax                      ; 0x048d
    jne short @..loc_LSRQ.l10        ; 0x048f
    jmp short @..loc_LSRQ.l9         ; 0x0491
@..loc_LSRQ.l10:
    mov ax, 1                        ; 0x0493
    push ax                          ; 0x0496
    call dos_con_in_noecho_2         ; 0x0497
    pop cx                           ; 0x049a
    sub ah, ah                       ; 0x049b
    mov word [bp - 0x0156], ax       ; 0x049d
    jmp short @..loc_LSRQ.l13        ; 0x04a1
@..loc_LSRQ.l11:
    mov ax, word [bp - 0x0004]       ; 0x04a3
    add ax, word [bp - 0x0002]       ; 0x04a6
    dec ax                           ; 0x04a9
    cwd                              ; 0x04aa
    idiv word [bp - 0x0002]          ; 0x04ab
    mov word [bp - 0x0004], dx       ; 0x04ae
    jmp short @..loc_LSRQ.l14        ; 0x04b1
@..loc_LSRQ.l12:
    mov ax, word [bp - 0x0004]       ; 0x04b3
    inc ax                           ; 0x04b6
    cwd                              ; 0x04b7
    idiv word [bp - 0x0002]          ; 0x04b8
    mov word [bp - 0x0004], dx       ; 0x04bb
    jmp short @..loc_LSRQ.l14        ; 0x04be
@..loc_LSRQ.l13:
    cmp ax, strict word 9            ; 0x04c0
    je short @..loc_LSRQ.l11         ; 0x04c3
    cmp ax, strict word 0xb          ; 0x04c5
    je short @..loc_LSRQ.l12         ; 0x04c8
@..loc_LSRQ.l14:
    cmp word [bp - 0x0156], byte 0x0d ; 0x04ca
    je short @..loc_LSRQ.l15         ; 0x04cf
    jmp near @..loc_LSRQ.l8          ; 0x04d1
@..loc_LSRQ.l15:
    inc word [bp - 0x0004]           ; 0x04d4
    mov ax, word [bp - 0x0008]       ; 0x04d7
    inc ax                           ; 0x04da
    push ax                          ; 0x04db
    mov ax, word [bp - 0x0006]       ; 0x04dc
    inc ax                           ; 0x04df
    push ax                          ; 0x04e0
    mov ax, word [bp + 0x8]          ; 0x04e1
    dec ax                           ; 0x04e4
    push ax                          ; 0x04e5
    mov ax, word [bp + 0x6]          ; 0x04e6
    dec ax                           ; 0x04e9
    push ax                          ; 0x04ea
    call thunk_4                     ; 0x04eb
    add sp, byte 8                   ; 0x04ee
@..loc_LSRQ.l16:
    dec word [bp - 0x0004]           ; 0x04f1
    mov ax, 1                        ; 0x04f4
    push ax                          ; 0x04f7
    push ax                          ; 0x04f8
    push word [bp + 0xa]             ; 0x04f9
    mov ax, word [bp - 0x0004]       ; 0x04fc
    imul word [bp + 0xc]             ; 0x04ff
    add ax, word [bp + 0x8]          ; 0x0502
    add ax, strict word 7            ; 0x0505
    push ax                          ; 0x0508
    mov ax, word [bp + 0x6]          ; 0x0509
    add ax, strict word 8            ; 0x050c
    push ax                          ; 0x050f
    call ds_app_VIGG                 ; 0x0510
    add sp, byte 0x0a                ; 0x0513
    mov ax, 0                        ; 0x0516
    push ax                          ; 0x0519
    mov ax, 1                        ; 0x051a
    push ax                          ; 0x051d
    push word [bp + 0xa]             ; 0x051e
    mov ax, word [bp - 0x0004]       ; 0x0521
    imul word [bp + 0xc]             ; 0x0524
    add ax, word [bp + 0x8]          ; 0x0527
    add ax, strict word 7            ; 0x052a
    push ax                          ; 0x052d
    mov ax, word [bp + 0x6]          ; 0x052e
    add ax, strict word 8            ; 0x0531
    push ax                          ; 0x0534
    call ds_app_VIGG                 ; 0x0535
    add sp, byte 0x0a                ; 0x0538
    mov ax, 1                        ; 0x053b
    push ax                          ; 0x053e
    push word [bp - 0x0154]          ; 0x053f
    call ds_app_file_HMNO            ; 0x0543
    add sp, byte 4                   ; 0x0546
    mov ax, word [bp - 0x0004]       ; 0x0549
    mov word [bss_9052], ax          ; 0x054c
    shl ax, 1                        ; 0x054f
    mov bx, ax                       ; 0x0551
    add bx, bp                       ; 0x0553
    mov ax, word [bx - 0x0026]       ; 0x0555
    ret                              ; 0x0558
