api_idx_0008_2:
    mov ax, 0xfff8                   ; 0x4368
    call ds_dispatch_f40b            ; 0x436b
    mov ax, word [bp + 0x6]          ; 0x436e
    jmp near @..api_idx_0008_2.l3    ; 0x4371
    mov ax, 0x32                     ; 0x4374
    imul word [bp + 0x8]             ; 0x4377
    add word [data_82fe], ax         ; 0x437a
    mov ax, 0                        ; 0x437e
    push ax                          ; 0x4381
    push word [data_8300]            ; 0x4382
    mov ax, 5                        ; 0x4386
    imul word [bp + 0x8]             ; 0x4389
    add ax, strict word 0x46         ; 0x438c
    push ax                          ; 0x438f
    call math_loc_4318               ; 0x4390
    add sp, byte 6                   ; 0x4393
    mov word [data_8300], ax         ; 0x4396
    jmp near loc_4ad7                ; 0x4399
    mov ax, 0x23                     ; 0x439c
    imul word [bp + 0x8]             ; 0x439f
    add word [data_82f2], ax         ; 0x43a2
    mov ax, 0                        ; 0x43a6
    push ax                          ; 0x43a9
    push word [data_82f4]            ; 0x43aa
    mov ax, word [bp + 0x8]          ; 0x43ae
    dec ax                           ; 0x43b1
    mov cx, data_0002                ; 0x43b2
    cwd                              ; 0x43b5
    idiv cx                          ; 0x43b6
    inc ax                           ; 0x43b8
    push ax                          ; 0x43b9
    call math_loc_4318               ; 0x43ba
    add sp, byte 6                   ; 0x43bd
    mov word [data_82f4], ax         ; 0x43c0
    jmp near loc_4ad7                ; 0x43c3
    mov ax, 0x32                     ; 0x43c6
    imul word [bp + 0x8]             ; 0x43c9
    add word [data_82f6], ax         ; 0x43cc
    mov ax, 0                        ; 0x43d0
    push ax                          ; 0x43d3
    push word [data_82f8]            ; 0x43d4
    mov ax, word [bp + 0x8]          ; 0x43d8
    dec ax                           ; 0x43db
    mov cx, data_0002                ; 0x43dc
    cwd                              ; 0x43df
    idiv cx                          ; 0x43e0
    inc ax                           ; 0x43e2
    push ax                          ; 0x43e3
    call math_loc_4318               ; 0x43e4
    add sp, byte 6                   ; 0x43e7
    mov word [data_82f8], ax         ; 0x43ea
    jmp near loc_4ad7                ; 0x43ed
    mov ax, 5                        ; 0x43f0
    imul word [bp + 0x8]             ; 0x43f3
    add word [data_8306], ax         ; 0x43f6
    db 0xe9, 0xda, 0x06 ; jmp near loc_4ad7
    mov ax, 0x64                     ; 0x43fd
    imul word [bp + 0x8]             ; 0x4400
    add word [data_8302], ax         ; 0x4403
    jmp near loc_4ad7                ; 0x4407
    mov ax, 0x32                     ; 0x440a
    imul word [bp + 0x8]             ; 0x440d
    add word [data_82fa], ax         ; 0x4410
    mov ax, 0                        ; 0x4414
    push ax                          ; 0x4417
    push word [data_82fc]            ; 0x4418
    mov ax, 5                        ; 0x441c
    imul word [bp + 0x8]             ; 0x441f
    push ax                          ; 0x4422
    call math_loc_4318               ; 0x4423
    add sp, byte 6                   ; 0x4426
    mov word [data_82fc], ax         ; 0x4429
    jmp near loc_4ad7                ; 0x442c
    push word [bp + 0x8]             ; 0x442f
    push word [bp + 0x4]             ; 0x4432
    call api_idx_0054                ; 0x4435
    add sp, byte 4                   ; 0x4438
    db 0xe9, 0x99, 0x06 ; jmp near loc_4ad7
    mov word [bp - 0x0006], 0        ; 0x443e
    mov ax, 0x64                     ; 0x4443
    push ax                          ; 0x4446
    db 0xe8, 0x5f, 0x73 ; call ds_dispatch_b7a9
    pop cx                           ; 0x444a
    push ax                          ; 0x444b
    mov ax, 0xa                      ; 0x444c
    imul word [bp + 0x8]             ; 0x444f
    db 0x8b, 0xc8 ; mov cx, ax
    add ax, strict word 0x23         ; 0x4454
    db 0x8b, 0xc8 ; mov cx, ax
    mov dx, word [data_95de]         ; 0x4459
    shl dx, 1                        ; 0x445d
    db 0x2b, 0xc2 ; sub ax, dx
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax                           ; 0x4463
    db 0x3b, 0xc1 ; cmp ax, cx
    jge short loc_44c9               ; 0x4466
    mov word [bp - 0x0002], 0        ; 0x4468
    jmp short loc_44c0               ; 0x446d
    cmp word [data_91fe], byte 0     ; 0x446f
    jle short loc_44ad               ; 0x4474
    cmp word [data_9250], byte 0xff  ; 0x4476
    je short loc_44ad                ; 0x447b
    mov ax, 0xa                      ; 0x447d
    imul word [data_9250]            ; 0x4480
    add ax, word [bp - 0x0006]       ; 0x4484
    db 0x8b, 0xd8 ; mov bx, ax
    cmp byte [bx - 0x6dae], 0x2d     ; 0x4489
    jne short loc_4495               ; 0x448e
    mov ax, 0x2d                     ; 0x4490
    jmp short loc_4498               ; 0x4493
    mov ax, 0x2a                     ; 0x4495
    push ax                          ; 0x4498
    mov ax, 0xa                      ; 0x4499
    imul word [bp - 0x0002]          ; 0x449c
    db 0x8b, 0xc8 ; mov cx, ax
    add ax, word [bp - 0x0006]       ; 0x44a1
    db 0x8b, 0xd8 ; mov bx, ax
    pop ax                           ; 0x44a6
    mov byte [bx - 0x6c8e], al       ; 0x44a7
    jmp short loc_44bd               ; 0x44ab
    mov ax, 0xa                      ; 0x44ad
    imul word [bp - 0x0002]          ; 0x44b0
    add ax, word [bp - 0x0006]       ; 0x44b3
    db 0x8b, 0xd8 ; mov bx, ax
    mov byte [bx - 0x6c8e], 0x2d     ; 0x44b8
    inc word [bp - 0x0002]           ; 0x44bd
    mov ax, word [bp - 0x0002]       ; 0x44c0
    cmp ax, word [data_69c8]         ; 0x44c3
    jl short loc_446f                ; 0x44c7
    inc word [bp - 0x0006]           ; 0x44c9
    mov ax, word [bp - 0x0006]       ; 0x44cc
    cmp ax, strict word 8            ; 0x44cf
    jge short loc_44d7               ; 0x44d2
    jmp near loc_4443                ; 0x44d4
    db 0xe9, 0xfd, 0x05 ; jmp near loc_4ad7
    mov ax, 0                        ; 0x44da
    cmp word [bp + 0x6], byte 0x13   ; 0x44dd
    je short loc_44e6                ; 0x44e1
    mov ax, word [bp + 0xa]          ; 0x44e3
    mov word [bp - 0x0002], ax       ; 0x44e6
    mov ax, word [data_69c8]         ; 0x44e9
    cmp word [bp + 0x6], byte 0x13   ; 0x44ec
    je short loc_44f6                ; 0x44f0
    mov ax, word [bp + 0xa]          ; 0x44f2
    inc ax                           ; 0x44f5
    mov word [bp - 0x0004], ax       ; 0x44f6
    mov ax, word [bp + 0x8]          ; 0x44f9
    cmp word [bp + 0x6], byte 0x13   ; 0x44fc
    je short loc_4504                ; 0x4500
    shl ax, 1                        ; 0x4502
    mov word [bp - 0x0006], ax       ; 0x4504
    mov ax, 0                        ; 0x4507
    cmp word [bp + 0x6], byte 0x13   ; 0x450a
    je short loc_4513                ; 0x450e
    mov ax, word [bp + 0x8]          ; 0x4510
    mov word [bp - 0x0008], ax       ; 0x4513
    db 0xeb, 0x6a ; jmp short loc_4582
    mov ax, 0x248                    ; 0x4518
    imul word [bp - 0x0002]          ; 0x451b
    db 0x8b, 0xd8 ; mov bx, ax
    push word [bx + 0x5c12]          ; 0x4520
    mov ax, 0                        ; 0x4524
    push ax                          ; 0x4527
    push word [bp - 0x0008]          ; 0x4528
    mov ax, 8                        ; 0x452b
    push ax                          ; 0x452e
    push word [bp - 0x0006]          ; 0x452f
    db 0xe8, 0xb5, 0x8b ; call ds_dispatch_d0ea
    add sp, byte 6                   ; 0x4535
    db 0x8b, 0xc8 ; mov cx, ax
    sub sp, byte 4                   ; 0x453a
    db 0x8b, 0xc4 ; mov ax, sp
    mov dx, ss                       ; 0x453f
    mov es, dx                       ; 0x4541
    db 0x8b, 0xf1 ; mov si, cx
    db 0x8b, 0xf8 ; mov di, ax
    movsw                            ; 0x4547
    movsw                            ; 0x4548
    db 0xe8, 0x72, 0x8b ; call ds_dispatch_d0be
    add sp, byte 4                   ; 0x454c
    push ax                          ; 0x454f
    mov ax, 0x248                    ; 0x4550
    imul word [bp - 0x0002]          ; 0x4553
    db 0x8b, 0xd8 ; mov bx, ax
    pop ax                           ; 0x4558
    add ax, word [bx + 0x5c10]       ; 0x4559
    push ax                          ; 0x455d
    db 0xe8, 0x61, 0x72 ; call ds_dispatch_b7c2
    add sp, byte 6                   ; 0x4561
    push ax                          ; 0x4564
    mov ax, 0x248                    ; 0x4565
