api_idx_00d2:
    mov ax, 0xff2e                   ; 0x631e
    call aztec_csav                  ; 0x6321
    mov ax, 0x248                    ; 0x6324
    imul word [bp + 0x4]             ; 0x6327
    add ax, 0x5bf4                   ; 0x632a
    push ax                          ; 0x632d
    lea ax, word [bp - 0x00c4]       ; 0x632e
    push ax                          ; 0x6332
    call aztec_strcpy                ; 0x6333
    add sp, byte 4                   ; 0x6336
    lea ax, word [bp - 0x00ce]       ; 0x6339
    push ax                          ; 0x633d
    mov ax, 0x5e8                    ; 0x633e
    push ax                          ; 0x6341
    call ds_app_mem_0782             ; 0x6342
    add sp, byte 4                   ; 0x6345
    push word [bp + 0x4]             ; 0x6348
    call api_idx_004c_2              ; 0x634b
    pop cx                           ; 0x634e
    mov word [bp - 0x0002], 0        ; 0x634f
    mov word [bp - 0x005c], 1        ; 0x6354
loc_6359:
    mov word [bp - 0x0060], 0        ; 0x6359
loc_635e:
    mov ax, word [bp - 0x0060]       ; 0x635e
    shl ax, 1                        ; 0x6361
    mov bx, ax                       ; 0x6363
    add bx, bp                       ; 0x6365
    mov word [bx - 0x0074], 1        ; 0x6367
    inc word [bp - 0x0060]           ; 0x636c
    mov ax, word [bp - 0x0060]       ; 0x636f
    cmp ax, strict word 5            ; 0x6372
    jle short loc_635e               ; 0x6375
    mov word [bp - 0x0068], 0xffff   ; 0x6377
    mov ax, 0x248                    ; 0x637c
    imul word [bp + 0x4]             ; 0x637f
    mov bx, ax                       ; 0x6382
    cmp word [bx + 0x5c0a], byte 0   ; 0x6384
    jne short loc_6390               ; 0x6389
    cmp word [bx + 0x5c08], byte 0   ; 0x638b
loc_6390:
    jne short loc_6397               ; 0x6390
    mov word [bp - 0x0072], 0        ; 0x6392
loc_6397:
    cmp word [bss_9ca8], byte 0      ; 0x6397
    jne short loc_63a3               ; 0x639c
    mov word [bp - 0x006e], 0        ; 0x639e
loc_63a3:
    lea ax, word [bp - 0x0074]       ; 0x63a3
    push ax                          ; 0x63a6
    mov ax, 5                        ; 0x63a7
    push ax                          ; 0x63aa
    lea ax, word [bp - 0x00ce]       ; 0x63ab
    push ax                          ; 0x63af
    lea ax, word [bp - 0x00c4]       ; 0x63b0
    push ax                          ; 0x63b4
    mov ax, 0x5d2                    ; 0x63b5
    push ax                          ; 0x63b8
    push word [bp + 0x4]             ; 0x63b9
    call api_idx_0054_4              ; 0x63bc
    add sp, byte 0x0c                ; 0x63bf
    mov word [bp - 0x0060], ax       ; 0x63c2
    jmp near loc_65a5                ; 0x63c5
loc_63c8:
    mov ax, 0x248                    ; 0x63c8
    imul word [bp + 0x4]             ; 0x63cb
    mov bx, ax                       ; 0x63ce
    mov al, byte [bx + 0x5d6a]       ; 0x63d0
    sub ah, ah                       ; 0x63d4
    push ax                          ; 0x63d6
    mov al, byte [bx + 0x5d88]       ; 0x63d7
    sub ah, ah                       ; 0x63db
    mov cx, 2                        ; 0x63dd
    cwd                              ; 0x63e0
    idiv cx                          ; 0x63e1
    mov cx, ax                       ; 0x63e3
    pop ax                           ; 0x63e5
    add ax, cx                       ; 0x63e6
    push ax                          ; 0x63e8
    mov ax, word [bx + 0x5c18]       ; 0x63e9
    mov cx, 2                        ; 0x63ed
    cwd                              ; 0x63f0
    idiv cx                          ; 0x63f1
    mov cx, ax                       ; 0x63f3
    pop ax                           ; 0x63f5
    add ax, cx                       ; 0x63f6
    add word [bp - 0x0002], ax       ; 0x63f8
    cmp byte [bx + 0x5e2d], 0xa      ; 0x63fb
    je short loc_6409                ; 0x6400
    cmp byte [bx + 0x5e2d], 9        ; 0x6402
    jne short loc_6412               ; 0x6407
loc_6409:
    mov al, byte [bx + 0x5d6a]       ; 0x6409
    sub ah, ah                       ; 0x640d
    add word [bp - 0x0002], ax       ; 0x640f
loc_6412:
    mov word [bp - 0x005c], 0        ; 0x6412
    jmp near loc_65b2                ; 0x6417
loc_641a:
    mov word [bss_9d62], 1           ; 0x641a
    mov word [bp - 0x005e], 0        ; 0x6420
    jmp short loc_6444               ; 0x6425
loc_6427:
    push word [bp - 0x005e]          ; 0x6427
    call ds_app_1ccc                 ; 0x642a
    pop cx                           ; 0x642d
    test ax, ax                      ; 0x642e
    je short loc_6441                ; 0x6430
    mov ax, 0x248                    ; 0x6432
    imul word [bp - 0x005e]          ; 0x6435
    mov bx, ax                       ; 0x6438
    mov ax, word [bx + 0x5c18]       ; 0x643a
    add word [bp - 0x0002], ax       ; 0x643e
loc_6441:
    inc word [bp - 0x005e]           ; 0x6441
loc_6444:
    mov ax, word [bp - 0x005e]       ; 0x6444
    cmp ax, word [bss_69c8]          ; 0x6447
    jl short loc_6427                ; 0x644b
    mov al, byte [bss_91c5]          ; 0x644d
    sub ah, ah                       ; 0x6450
    mov cx, 5                        ; 0x6452
    imul cx                          ; 0x6455
    sub word [bp - 0x0002], ax       ; 0x6457
    mov word [bp - 0x005c], 0        ; 0x645a
    jmp near loc_65b2                ; 0x645f
loc_6462:
    mov ax, 1                        ; 0x6462
    push ax                          ; 0x6465
    push ax                          ; 0x6466
    mov ax, 0x62f                    ; 0x6467
    push ax                          ; 0x646a
    push word [bp + 0x4]             ; 0x646b
    call api_idx_0006_5              ; 0x646e
    add sp, byte 8                   ; 0x6471
    test ax, ax                      ; 0x6474
    je short loc_6482                ; 0x6476
    mov word [bp - 0x0060], 5        ; 0x6478
    mov word [bp - 0x005c], 0        ; 0x647d
loc_6482:
    jmp near loc_65b2                ; 0x6482
loc_6485:
    cmp word [bp - 0x0060], byte 4   ; 0x6485
    jne short loc_6495               ; 0x6489
    push word [bp + 0x4]             ; 0x648b
    call api_idx_0006_7              ; 0x648e
    pop cx                           ; 0x6491
    jmp near loc_6569                ; 0x6492
loc_6495:
    mov word [bss_9d62], 2           ; 0x6495
    mov ax, 4                        ; 0x649b
    push ax                          ; 0x649e
    call ds_app_09f0                 ; 0x649f
    pop cx                           ; 0x64a2
    mov cx, 0xa                      ; 0x64a3
    imul cx                          ; 0x64a6
    add ax, strict word 0x14         ; 0x64a8
    push ax                          ; 0x64ab
    mov al, byte [bss_91c5]          ; 0x64ac
    sub ah, ah                       ; 0x64af
    mov cx, ax                       ; 0x64b1
    pop ax                           ; 0x64b3
    imul cx                          ; 0x64b4
    cwd                              ; 0x64b6
    mov word [bp - 0x00d0], dx       ; 0x64b7
    mov word [bp - 0x00d2], ax       ; 0x64bb
    mov ax, 0x248                    ; 0x64bf
    imul word [bp + 0x4]             ; 0x64c2
    mov bx, ax                       ; 0x64c5
    mov cx, word [bx + 0x5c08]       ; 0x64c7
    mov bx, word [bx + 0x5c0a]       ; 0x64cb
    mov ax, word [bp - 0x00d2]       ; 0x64cf
    mov dx, word [bp - 0x00d0]       ; 0x64d3
    cmp bx, dx                       ; 0x64d7
    jg short loc_64e1                ; 0x64d9
    jne short loc_64e3               ; 0x64db
    cmp cx, ax                       ; 0x64dd
    jb short loc_64e3                ; 0x64df
loc_64e1:
    jmp short loc_64eb               ; 0x64e1
loc_64e3:
    mov word [bp - 0x00d0], bx       ; 0x64e3
    mov word [bp - 0x00d2], cx       ; 0x64e7
loc_64eb:
    mov ax, word [bp - 0x00d2]       ; 0x64eb
    mov dx, word [bp - 0x00d0]       ; 0x64ef
    push ax                          ; 0x64f3
    push dx                          ; 0x64f4
    mov ax, 0x248                    ; 0x64f5
    imul word [bp + 0x4]             ; 0x64f8
    mov bx, ax                       ; 0x64fb
    pop dx                           ; 0x64fd
    pop ax                           ; 0x64fe
    sub word [bx + 0x5c08], ax       ; 0x64ff
    sbb word [bx + 0x5c0a], dx       ; 0x6503
    mov cx, 0xa                      ; 0x6507
    mov bx, 0                        ; 0x650a
    call aztec_ldv                   ; 0x650d
    push ax                          ; 0x6510
    push dx                          ; 0x6511
    mov al, byte [bss_91c5]          ; 0x6512
    sub ah, ah                       ; 0x6515
    cwd                              ; 0x6517
    mov cx, ax                       ; 0x6518
    mov bx, dx                       ; 0x651a
    pop dx                           ; 0x651c
    pop ax                           ; 0x651d
    call aztec_ldv                   ; 0x651e
    add word [bp - 0x0002], ax       ; 0x6521
    mov ax, 0                        ; 0x6524
    push ax                          ; 0x6527
    mov ax, word [bp - 0x00d2]       ; 0x6528
    mov dx, word [bp - 0x00d0]       ; 0x652c
    mov cx, 0x100                    ; 0x6530
    mov bx, 0                        ; 0x6533
    call aztec_lrm                   ; 0x6536
    sub ah, ah                       ; 0x6539
    push ax                          ; 0x653b
    mov ax, word [bp - 0x00d2]       ; 0x653c
    mov dx, word [bp - 0x00d0]       ; 0x6540
    mov cx, 0x100                    ; 0x6544
    mov bx, 0                        ; 0x6547
    call aztec_ldv                   ; 0x654a
    push ax                          ; 0x654d
    mov ax, 2                        ; 0x654e
    push ax                          ; 0x6551
    push word [bp + 0x4]             ; 0x6552
    call api_idx_0006_3              ; 0x6555
    add sp, byte 0x0a                ; 0x6558
    test ax, ax                      ; 0x655b
    je short loc_6569                ; 0x655d
    mov word [bp - 0x0060], 5        ; 0x655f
    mov word [bp - 0x005c], 0        ; 0x6564
loc_6569:
    mov ax, 2                        ; 0x6569
    push ax                          ; 0x656c
    call api_idx_0006                ; 0x656d
    pop cx                           ; 0x6570
    mov ax, 1                        ; 0x6571
    push ax                          ; 0x6574
    mov ax, 0x93                     ; 0x6575
    push ax                          ; 0x6578
    mov ax, 0xa0                     ; 0x6579
    push ax                          ; 0x657c
    lea ax, word [bp - 0x00c4]       ; 0x657d
    push ax                          ; 0x6581
    call loc_0b30                    ; 0x6582
    add sp, byte 8                   ; 0x6585
    mov ax, 2                        ; 0x6588
    push ax                          ; 0x658b
    call loc_0c96                    ; 0x658c
    pop cx                           ; 0x658f
    jmp short loc_65b2               ; 0x6590
