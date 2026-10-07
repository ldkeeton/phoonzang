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
