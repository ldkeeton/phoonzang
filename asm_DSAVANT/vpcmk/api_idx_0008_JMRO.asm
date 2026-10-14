; auto-generated
api_idx_0008_JMRO:
    mov ax, 0xfff8                   ; 0x02bc
    call aztec_csav                  ; 0x02bf
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
    call thunk_10                    ; 0x0306
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
    call ds_app_QIHH                 ; 0x033b
    add sp, byte 0x0a                ; 0x033e
    mov ax, 0xc0                     ; 0x0341
    push ax                          ; 0x0344
    push word [bp + 0x14]            ; 0x0345
    call thunk_3                     ; 0x0348
    add sp, byte 4                   ; 0x034b
    mov ax, word [bp + 0xa]          ; 0x034e
    add ax, word [bp - 0x0004]       ; 0x0351
    inc ax                           ; 0x0354
    inc ax                           ; 0x0355
    push ax                          ; 0x0356
    push word [bp + 0x4]             ; 0x0357
    call aztec_strlen                ; 0x035a
    pop cx                           ; 0x035d
    mov cx, ax                       ; 0x035e
    mov ax, word [bp + 0xc]          ; 0x0360
    sub ax, cx                       ; 0x0363
    mov cx, 6                        ; 0x0365
    imul cx                          ; 0x0368
    mov cx, 2                        ; 0x036a
    cwd                              ; 0x036d
    idiv cx                          ; 0x036e
    add ax, word [bp + 0x8]          ; 0x0370
    add ax, word [bp - 0x0002]       ; 0x0373
    inc ax                           ; 0x0376
    push ax                          ; 0x0377
    call thunk                       ; 0x0378
    add sp, byte 4                   ; 0x037b
    mov ax, 0                        ; 0x037e
    push ax                          ; 0x0381
    push word [bp + 0x4]             ; 0x0382
    call ds_string_loc_PTIK          ; 0x0385
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
    call thunk_4                     ; 0x03b3
    add sp, byte 8                   ; 0x03b6
    mov ax, 1                        ; 0x03b9
    push ax                          ; 0x03bc
    push word [bp - 0x0006]          ; 0x03bd
    push word [bp - 0x0008]          ; 0x03c0
    call thunk_13                    ; 0x03c3
    add sp, byte 6                   ; 0x03c6
    ret                              ; 0x03c9
loc_03ca:
    mov ax, 0                        ; 0x03ca
    call aztec_csav                  ; 0x03cd
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
    call thunk_7                     ; 0x03e7
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
    call thunk_7                     ; 0x0404
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
    call thunk_7                     ; 0x0421
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
    call thunk_7                     ; 0x043e
    add sp, byte 0x0a                ; 0x0441
    ret                              ; 0x0444
loc_0445:
    mov ax, 0xfe56                   ; 0x0445
    call aztec_csav                  ; 0x0448
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
    jne short @..loc_0445.l1         ; 0x0486
    jmp near @..loc_0445.l2          ; 0x0488
@..loc_0445.l1:
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
    call ds_app_file_IOMU            ; 0x04ab
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
    call ds_app_VMUS                 ; 0x04d1
    add sp, byte 8                   ; 0x04d4
    lea ax, word [bp - 0x01a6]       ; 0x04d7
    push ax                          ; 0x04db
    push word [bp + 0x6]             ; 0x04dc
    call ds_app_mem_VKHV             ; 0x04df
    add sp, byte 4                   ; 0x04e2
    mov ax, 0xc2                     ; 0x04e5
    push ax                          ; 0x04e8
    mov ax, 1                        ; 0x04e9
    push ax                          ; 0x04ec
    call thunk_3                     ; 0x04ed
    add sp, byte 4                   ; 0x04f0
    mov ax, word [bp + 0xa]          ; 0x04f3
    add ax, strict word 0xfff3       ; 0x04f6
    push ax                          ; 0x04f9
    lea ax, word [bp - 0x01a6]       ; 0x04fa
    push ax                          ; 0x04fe
    call aztec_strlen                ; 0x04ff
    pop cx                           ; 0x0502
    mov cx, 6                        ; 0x0503
    imul cx                          ; 0x0506
    mov cx, 2                        ; 0x0508
    cwd                              ; 0x050b
    idiv cx                          ; 0x050c
    mov cx, ax                       ; 0x050e
    mov ax, 0xa0                     ; 0x0510
    sub ax, cx                       ; 0x0513
    push ax                          ; 0x0515
    call thunk                       ; 0x0516
    add sp, byte 4                   ; 0x0519
    mov ax, 0                        ; 0x051c
    push ax                          ; 0x051f
    lea ax, word [bp - 0x01a6]       ; 0x0520
    push ax                          ; 0x0524
    call ds_string_loc_PTIK          ; 0x0525
    add sp, byte 4                   ; 0x0528
    jmp short @..loc_0445.l3         ; 0x052b
@..loc_0445.l2:
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
    call ds_app_file_IOMU            ; 0x0545
    add sp, byte 0x0a                ; 0x0548
    mov word [bp - 0x01a8], ax       ; 0x054b
@..loc_0445.l3:
    mov word [bp - 0x0002], 0        ; 0x054f
    mov word [bp - 0x0004], 0        ; 0x0554
@..loc_0445.l4:
    mov ax, word [bp - 0x0004]       ; 0x0559
    shl ax, 1                        ; 0x055c
    mov si, ax                       ; 0x055e
    mov bx, word [bp + 0x1c]         ; 0x0560
    cmp word [bx + si], byte 0xff    ; 0x0563
    jne short @..loc_0445.l5         ; 0x0566
    jmp near @..loc_0445.l9          ; 0x0568
@..loc_0445.l5:
    cmp word [bx + si], byte 1       ; 0x056b
    je short @..loc_0445.l6          ; 0x056e
    jmp near @..loc_0445.l8          ; 0x0570
@..loc_0445.l6:
    mov ax, 0x14                     ; 0x0573
    imul word [bp - 0x0002]          ; 0x0576
    lea cx, word [bp - 0x0156]       ; 0x0579
    add ax, cx                       ; 0x057d
    push ax                          ; 0x057f
    mov ax, word [bp + 0x4]          ; 0x0580
    add ax, word [bp - 0x0004]       ; 0x0583
    push ax                          ; 0x0586
    call ds_app_mem_VKHV             ; 0x0587
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
    call ds_app_QIHH                 ; 0x05d2
    add sp, byte 0x0a                ; 0x05d5
    mov ax, 0xc0                     ; 0x05d8
    push ax                          ; 0x05db
    mov ax, word [bp + 0x16]         ; 0x05dc
    mov cx, word [bp - 0x0004]       ; 0x05df
    cmp cx, word [bp + 0x18]         ; 0x05e2
    jne short @..loc_0445.l7         ; 0x05e5
    mov ax, 0x1a                     ; 0x05e7
@..loc_0445.l7:
    push ax                          ; 0x05ea
    call thunk_3                     ; 0x05eb
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
    call aztec_strlen                ; 0x0607
    pop cx                           ; 0x060a
    mov cx, ax                       ; 0x060b
    mov ax, word [bp + 0xc]          ; 0x060d
    sub ax, cx                       ; 0x0610
    mov cx, 6                        ; 0x0612
    imul cx                          ; 0x0615
    mov cx, 2                        ; 0x0617
    cwd                              ; 0x061a
    idiv cx                          ; 0x061b
    add ax, word [bp + 0x8]          ; 0x061d
    add ax, word [bp - 0x000a]       ; 0x0620
    inc ax                           ; 0x0623
    push ax                          ; 0x0624
    call thunk                       ; 0x0625
    add sp, byte 4                   ; 0x0628
    mov ax, 0                        ; 0x062b
    push ax                          ; 0x062e
    mov ax, 0x14                     ; 0x062f
    imul word [bp - 0x0002]          ; 0x0632
    lea cx, word [bp - 0x0156]       ; 0x0635
    add ax, cx                       ; 0x0639
    push ax                          ; 0x063b
    call ds_string_loc_PTIK          ; 0x063c
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
    call ds_app_JRNS                 ; 0x066f
    add sp, byte 0x0e                ; 0x0672
    mov ax, word [bp - 0x0004]       ; 0x0675
    mov cx, word [bp - 0x0002]       ; 0x0678
    shl cx, 1                        ; 0x067b
    mov bx, cx                       ; 0x067d
    add bx, bp                       ; 0x067f
    mov word [bx - 0x002a], ax       ; 0x0681
    inc word [bp - 0x0002]           ; 0x0684
@..loc_0445.l8:
    inc word [bp - 0x0004]           ; 0x0687
    jmp near @..loc_0445.l4          ; 0x068a
@..loc_0445.l9:
    mov ax, 0                        ; 0x068d
    push ax                          ; 0x0690
    push ax                          ; 0x0691
    push ax                          ; 0x0692
    push ax                          ; 0x0693
    push ax                          ; 0x0694
    mov ax, 0xffff                   ; 0x0695
    push ax                          ; 0x0698
    push word [bp - 0x0002]          ; 0x0699
    call ds_app_JRNS                 ; 0x069c
    add sp, byte 0x0e                ; 0x069f
    mov ax, 0xc7                     ; 0x06a2
    push ax                          ; 0x06a5
    mov ax, 0x13f                    ; 0x06a6
    push ax                          ; 0x06a9
    mov ax, 0                        ; 0x06aa
    push ax                          ; 0x06ad
    push ax                          ; 0x06ae
    call thunk_4                     ; 0x06af
    add sp, byte 8                   ; 0x06b2
    cmp word [bss_0e32], byte 0      ; 0x06b5
    je short @..loc_0445.l11         ; 0x06ba
@..loc_0445.l10:
    mov ax, 0x59fe                   ; 0x06bc
    push ax                          ; 0x06bf
    call ds_app_io_MHHL              ; 0x06c0
    pop cx                           ; 0x06c3
    mov word [bp - 0x0004], ax       ; 0x06c4
    cmp word [bss_5b3e], byte 0      ; 0x06c7
    je short @..loc_0445.l10         ; 0x06cc
    jmp near @..loc_0445.l25         ; 0x06ce
@..loc_0445.l11:
    mov word [bp - 0x0004], 0        ; 0x06d1
@..loc_0445.l12:
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
    call thunk_4                     ; 0x0735
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
@..loc_0445.l13:
    mov ax, 1                        ; 0x076a
    push ax                          ; 0x076d
    call dos_con_in_noecho           ; 0x076e
    pop cx                           ; 0x0771
    test ax, ax                      ; 0x0772
    jne short @..loc_0445.l14        ; 0x0774
    jmp short @..loc_0445.l13        ; 0x0776
@..loc_0445.l14:
    mov ax, 1                        ; 0x0778
    push ax                          ; 0x077b
    call dos_con_in_noecho_2         ; 0x077c
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
@..loc_0445.l15:
    mov ax, word [bp - 0x01aa]       ; 0x079c
    jmp near @..loc_0445.l20         ; 0x07a0
@..loc_0445.l16:
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
    jmp near @..loc_0445.l22         ; 0x07bf
@..loc_0445.l17:
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
    jmp short @..loc_0445.l22        ; 0x07db
@..loc_0445.l18:
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
    jmp short @..loc_0445.l22        ; 0x0803
@..loc_0445.l19:
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
    jmp short @..loc_0445.l22        ; 0x0828
@..loc_0445.l20:
    cmp ax, strict word 8            ; 0x082a
    je short @..loc_0445.l18         ; 0x082d
    cmp ax, strict word 9            ; 0x082f
    jne short @..loc_0445.l21        ; 0x0832
    jmp near @..loc_0445.l16         ; 0x0834
@..loc_0445.l21:
    cmp ax, strict word 0xa          ; 0x0837
    je short @..loc_0445.l19         ; 0x083a
    cmp ax, strict word 0xb          ; 0x083c
    je short @..loc_0445.l17         ; 0x083f
@..loc_0445.l22:
    mov ax, word [bp - 0x0004]       ; 0x0841
    cmp ax, word [bp - 0x0002]       ; 0x0844
    jl short @..loc_0445.l23         ; 0x0847
    jmp near @..loc_0445.l15         ; 0x0849
@..loc_0445.l23:
    cmp word [bp - 0x01aa], byte 0x0d ; 0x084c
    je short @..loc_0445.l24         ; 0x0851
    jmp near @..loc_0445.l12         ; 0x0853
@..loc_0445.l24:
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
    call thunk_4                     ; 0x086d
    add sp, byte 8                   ; 0x0870
@..loc_0445.l25:
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
    call ds_app_JSSU                 ; 0x08a8
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
    call ds_app_JSSU                 ; 0x08c7
    add sp, byte 0x0a                ; 0x08ca
    mov ax, 1                        ; 0x08cd
    push ax                          ; 0x08d0
    push word [bp - 0x01a8]          ; 0x08d1
    call ds_app_file_OVOQ            ; 0x08d5
    add sp, byte 4                   ; 0x08d8
    cmp word [bp + 0x1a], byte 0     ; 0x08db
    je short @..loc_0445.l27         ; 0x08df
    cmp word [bp + 0x6], byte 0      ; 0x08e1
    je short @..loc_0445.l26         ; 0x08e5
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
    call thunk_4                     ; 0x0903
    add sp, byte 8                   ; 0x0906
    jmp short @..loc_0445.l27        ; 0x0909
@..loc_0445.l26:
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
    call thunk_4                     ; 0x091f
    add sp, byte 8                   ; 0x0922
@..loc_0445.l27:
    mov ax, word [bp - 0x0004]       ; 0x0925
    mov word [bss_9052], ax          ; 0x0928
    shl ax, 1                        ; 0x092b
    mov bx, ax                       ; 0x092d
    add bx, bp                       ; 0x092f
    mov ax, word [bx - 0x002a]       ; 0x0931
    ret                              ; 0x0934
