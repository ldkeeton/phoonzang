math_loc_8441:
    mov ax, 0xfe56                   ; 0x8441
    call ds_dispatch_f40b            ; 0x8444
    mov ax, word [bp + 0x14]         ; 0x8447
    dec ax                           ; 0x844a
    cwd                              ; 0x844b
    idiv word [bp + 0x12]            ; 0x844c
    inc ax                           ; 0x844f
    imul word [bp + 0xe]             ; 0x8450
    add ax, word [bp + 0x8]          ; 0x8453
    push ax                          ; 0x8456
    mov ax, 6                        ; 0x8457
    imul word [bp + 0xc]             ; 0x845a
    mov dx, ax                       ; 0x845d
    mov cx, word [bp + 0xe]          ; 0x845f
    sub cx, ax                       ; 0x8462
    pop ax                           ; 0x8464
    sub ax, cx                       ; 0x8465
    mov word [bp - 0x0006], ax       ; 0x8467
    mov ax, word [bp + 0x10]         ; 0x846a
    imul word [bp + 0x12]            ; 0x846d
    add ax, word [bp + 0xa]          ; 0x8470
    mov cx, word [bp + 0x10]         ; 0x8473
    add cx, byte 0xf7                ; 0x8476
    sub ax, cx                       ; 0x8479
    mov word [bp - 0x0008], ax       ; 0x847b
    cmp word [bp + 0x6], byte 0      ; 0x847e
    jne short @..math_loc_8441.l1    ; 0x8482
    jmp near @..math_loc_8441.l2     ; 0x8484
@..math_loc_8441.l1:
    mov ax, 0x90f4                   ; 0x8487
    push ax                          ; 0x848a
    mov ax, word [bp - 0x0008]       ; 0x848b
    add ax, strict word 6            ; 0x848e
    push ax                          ; 0x8491
    mov ax, word [bp - 0x0006]       ; 0x8492
    add ax, strict word 6            ; 0x8495
    push ax                          ; 0x8498
    mov ax, word [bp + 0xa]          ; 0x8499
    add ax, strict word 0xffeb       ; 0x849c
    push ax                          ; 0x849f
    mov ax, word [bp + 0x8]          ; 0x84a0
    add ax, strict word 0xfffa       ; 0x84a3
    push ax                          ; 0x84a6
    call ds_dispatch_c283            ; 0x84a7
    add sp, byte 0x0a                ; 0x84aa
    mov word [bp - 0x01a8], ax       ; 0x84ad
    mov ax, word [bp - 0x0008]       ; 0x84b1
    add ax, strict word 5            ; 0x84b4
    push ax                          ; 0x84b7
    mov ax, word [bp - 0x0006]       ; 0x84b8
    add ax, strict word 5            ; 0x84bb
    push ax                          ; 0x84be
    mov ax, word [bp + 0xa]          ; 0x84bf
    add ax, strict word 0xffec       ; 0x84c2
    push ax                          ; 0x84c5
    mov ax, word [bp + 0x8]          ; 0x84c6
    add ax, strict word 0xfffb       ; 0x84c9
    push ax                          ; 0x84cc
    call ds_dispatch_bc9a            ; 0x84cd
    add sp, byte 8                   ; 0x84d0
    lea ax, word [bp - 0x01a6]       ; 0x84d3
    push ax                          ; 0x84d7
    push word [bp + 0x6]             ; 0x84d8
    call ds_dispatch_b53b            ; 0x84db
    add sp, byte 4                   ; 0x84de
    mov ax, 0xc2                     ; 0x84e1
    push ax                          ; 0x84e4
    mov ax, 1                        ; 0x84e5
    push ax                          ; 0x84e8
    call ds_dispatch_e823            ; 0x84e9
    add sp, byte 4                   ; 0x84ec
    mov ax, word [bp + 0xa]          ; 0x84ef
    add ax, strict word 0xfff3       ; 0x84f2
    push ax                          ; 0x84f5
    lea ax, word [bp - 0x01a6]       ; 0x84f6
    push ax                          ; 0x84fa
    call ds_dispatch_fa90            ; 0x84fb
    pop cx                           ; 0x84fe
    mov cx, 6                        ; 0x84ff
    imul cx                          ; 0x8502
    mov cx, data_0002                ; 0x8504
    cwd                              ; 0x8507
    idiv cx                          ; 0x8508
    mov cx, ax                       ; 0x850a
    mov ax, 0xa0                     ; 0x850c
    sub ax, cx                       ; 0x850f
    push ax                          ; 0x8511
    call ds_dispatch_e809            ; 0x8512
    add sp, byte 4                   ; 0x8515
    mov ax, 0                        ; 0x8518
    push ax                          ; 0x851b
    lea ax, word [bp - 0x01a6]       ; 0x851c
    push ax                          ; 0x8520
    call ds_dispatch_e84e            ; 0x8521
    add sp, byte 4                   ; 0x8524
    jmp short @..math_loc_8441.l3    ; 0x8527
@..math_loc_8441.l2:
    mov ax, 0x90fa                   ; 0x8529
    push ax                          ; 0x852c
    mov ax, word [bp - 0x0008]       ; 0x852d
    inc ax                           ; 0x8530
    push ax                          ; 0x8531
    mov ax, word [bp - 0x0006]       ; 0x8532
    inc ax                           ; 0x8535
    push ax                          ; 0x8536
    mov ax, word [bp + 0xa]          ; 0x8537
    dec ax                           ; 0x853a
    push ax                          ; 0x853b
    mov ax, word [bp + 0x8]          ; 0x853c
    dec ax                           ; 0x853f
    push ax                          ; 0x8540
    call ds_dispatch_c283            ; 0x8541
    add sp, byte 0x0a                ; 0x8544
    mov word [bp - 0x01a8], ax       ; 0x8547
@..math_loc_8441.l3:
    mov word [bp - 0x0002], 0        ; 0x854b
    mov word [bp - 0x0004], 0        ; 0x8550
@..math_loc_8441.l4:
    mov ax, word [bp - 0x0004]       ; 0x8555
    shl ax, 1                        ; 0x8558
    mov si, ax                       ; 0x855a
    mov bx, word [bp + 0x1c]         ; 0x855c
    cmp word [bx + si], byte 0xff    ; 0x855f
    jne short @..math_loc_8441.l5    ; 0x8562
    jmp near @..math_loc_8441.l9     ; 0x8564
@..math_loc_8441.l5:
    cmp word [bx + si], byte 1       ; 0x8567
    je short @..math_loc_8441.l6     ; 0x856a
    jmp near @..math_loc_8441.l8     ; 0x856c
@..math_loc_8441.l6:
    mov ax, 0x14                     ; 0x856f
    imul word [bp - 0x0002]          ; 0x8572
    lea cx, word [bp - 0x0156]       ; 0x8575
    add ax, cx                       ; 0x8579
    push ax                          ; 0x857b
    mov ax, word [bp + 0x4]          ; 0x857c
    add ax, word [bp - 0x0004]       ; 0x857f
    push ax                          ; 0x8582
    call ds_dispatch_b53b            ; 0x8583
    add sp, byte 4                   ; 0x8586
    mov ax, word [bp - 0x0002]       ; 0x8589
    cwd                              ; 0x858c
    idiv word [bp + 0x12]            ; 0x858d
    imul word [bp + 0xe]             ; 0x8590
    mov word [bp - 0x000a], ax       ; 0x8593
    mov ax, word [bp - 0x0002]       ; 0x8596
    cwd                              ; 0x8599
    idiv word [bp + 0x12]            ; 0x859a
    mov ax, dx                       ; 0x859d
    imul word [bp + 0x10]            ; 0x859f
    mov word [bp - 0x000c], ax       ; 0x85a2
    mov ax, 0                        ; 0x85a5
    push ax                          ; 0x85a8
    mov ax, word [bp + 0xa]          ; 0x85a9
    add ax, word [bp - 0x000c]       ; 0x85ac
    add ax, strict word 8            ; 0x85af
    push ax                          ; 0x85b2
    mov ax, 6                        ; 0x85b3
    imul word [bp + 0xc]             ; 0x85b6
    add ax, word [bp + 0x8]          ; 0x85b9
    add ax, word [bp - 0x000a]       ; 0x85bc
    push ax                          ; 0x85bf
    mov ax, word [bp + 0xa]          ; 0x85c0
    add ax, word [bp - 0x000c]       ; 0x85c3
    push ax                          ; 0x85c6
    mov ax, word [bp + 0x8]          ; 0x85c7
    add ax, word [bp - 0x000a]       ; 0x85ca
    push ax                          ; 0x85cd
    call ds_dispatch_bce3            ; 0x85ce
    add sp, byte 0x0a                ; 0x85d1
    mov ax, 0xc0                     ; 0x85d4
    push ax                          ; 0x85d7
    mov ax, word [bp + 0x16]         ; 0x85d8
    mov cx, word [bp - 0x0004]       ; 0x85db
    cmp cx, word [bp + 0x18]         ; 0x85de
    jne short @..math_loc_8441.l7    ; 0x85e1
    mov ax, 0x1a                     ; 0x85e3
@..math_loc_8441.l7:
    push ax                          ; 0x85e6
    call ds_dispatch_e823            ; 0x85e7
    add sp, byte 4                   ; 0x85ea
    mov ax, word [bp + 0xa]          ; 0x85ed
    add ax, word [bp - 0x000c]       ; 0x85f0
    inc ax                           ; 0x85f3
    inc ax                           ; 0x85f4
    push ax                          ; 0x85f5
    mov ax, 0x14                     ; 0x85f6
    imul word [bp - 0x0002]          ; 0x85f9
    lea cx, word [bp - 0x0156]       ; 0x85fc
    add ax, cx                       ; 0x8600
    push ax                          ; 0x8602
    call ds_dispatch_fa90            ; 0x8603
    pop cx                           ; 0x8606
    mov cx, ax                       ; 0x8607
    mov ax, word [bp + 0xc]          ; 0x8609
    sub ax, cx                       ; 0x860c
    mov cx, 6                        ; 0x860e
    imul cx                          ; 0x8611
    mov cx, data_0002                ; 0x8613
    cwd                              ; 0x8616
    idiv cx                          ; 0x8617
    add ax, word [bp + 0x8]          ; 0x8619
    add ax, word [bp - 0x000a]       ; 0x861c
    inc ax                           ; 0x861f
    push ax                          ; 0x8620
    call ds_dispatch_e809            ; 0x8621
    add sp, byte 4                   ; 0x8624
    mov ax, 0                        ; 0x8627
    push ax                          ; 0x862a
    mov ax, 0x14                     ; 0x862b
    imul word [bp - 0x0002]          ; 0x862e
    lea cx, word [bp - 0x0156]       ; 0x8631
    add ax, cx                       ; 0x8635
    push ax                          ; 0x8637
    call ds_dispatch_e84e            ; 0x8638
    add sp, byte 4                   ; 0x863b
    mov ax, 0                        ; 0x863e
