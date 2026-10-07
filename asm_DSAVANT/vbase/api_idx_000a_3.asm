api_idx_000a_3:
    mov ax, 0xfff6                   ; 0x7415
    call ds_dispatch_f40b            ; 0x7418
    mov ax, word [data_a4a4]         ; 0x741b
    jmp near @..api_idx_000a_3.l1    ; 0x741e
    mov ax, 0                        ; 0x7421
    push ax                          ; 0x7424
    push ax                          ; 0x7425
    push word [data_a5b4]            ; 0x7426
    push word [data_a5b2]            ; 0x742a
    db 0xe8, 0x11, 0x75 ; call ds_dispatch_e942
    add sp, byte 8                   ; 0x7431
    mov ax, word [data_a5bc]         ; 0x7434
    cmp ax, word [data_a5aa]         ; 0x7437
    jge short loc_7453               ; 0x743b
    mov ax, 0x4f                     ; 0x743d
    push ax                          ; 0x7440
    mov ax, 0xbd                     ; 0x7441
    push ax                          ; 0x7444
    mov ax, 6                        ; 0x7445
    push ax                          ; 0x7448
    mov ax, 0x11                     ; 0x7449
    push ax                          ; 0x744c
    call api_idx_000a                ; 0x744d
    add sp, byte 8                   ; 0x7450
    mov ax, 0x2b                     ; 0x7453
    push ax                          ; 0x7456
    mov ax, 0x74                     ; 0x7457
    push ax                          ; 0x745a
    mov ax, word [data_a5b0]         ; 0x745b
    mov cx, 3                        ; 0x745e
    cwd                              ; 0x7461
    idiv cx                          ; 0x7462
    db 0x8b, 0xc2 ; mov ax, dx
    inc ax                           ; 0x7466
    push ax                          ; 0x7467
    mov ax, 0x11                     ; 0x7468
    push ax                          ; 0x746b
    call api_idx_000a                ; 0x746c
    add sp, byte 8                   ; 0x746f
    mov ax, 0x3f                     ; 0x7472
    push ax                          ; 0x7475
    mov ax, 0xa4                     ; 0x7476
    push ax                          ; 0x7479
    mov ax, word [data_a5b0]         ; 0x747a
    mov cx, data_0002                ; 0x747d
    cwd                              ; 0x7480
    idiv cx                          ; 0x7481
    db 0x8b, 0xc2 ; mov ax, dx
    add ax, strict word 4            ; 0x7485
    push ax                          ; 0x7488
    mov ax, 0x11                     ; 0x7489
    push ax                          ; 0x748c
    call api_idx_000a                ; 0x748d
    add sp, byte 8                   ; 0x7490
    mov ax, word [data_a5b0]         ; 0x7493
    mov cx, 6                        ; 0x7496
    cwd                              ; 0x7499
    idiv cx                          ; 0x749a
    db 0x8b, 0xda ; mov bx, dx
    mov al, byte [bx - 0x5a3a]       ; 0x749e
    db 0x2a, 0xe4 ; sub ah, ah
    add ax, strict word 0xffcf       ; 0x74a4
    mov word [bp - 0x0006], ax       ; 0x74a7
    push cx                          ; 0x74aa
    mov ax, 0xa1                     ; 0x74ab
    push ax                          ; 0x74ae
    mov ax, word [bp - 0x0006]       ; 0x74af
    add ax, strict word 7            ; 0x74b2
    push ax                          ; 0x74b5
    mov ax, 0x11                     ; 0x74b6
    push ax                          ; 0x74b9
    call api_idx_000a                ; 0x74ba
    add sp, byte 8                   ; 0x74bd
    mov ax, word [data_a5b0]         ; 0x74c0
    inc ax                           ; 0x74c3
    mov cx, 6                        ; 0x74c4
    cwd                              ; 0x74c7
    idiv cx                          ; 0x74c8
    db 0x8b, 0xda ; mov bx, dx
    mov al, byte [bx - 0x5a3a]       ; 0x74cc
    db 0x2a, 0xe4 ; sub ah, ah
    add ax, strict word 0xffcf       ; 0x74d2
    mov word [bp - 0x0006], ax       ; 0x74d5
    mov ax, 0x1e                     ; 0x74d8
    push ax                          ; 0x74db
    mov ax, 0xbf                     ; 0x74dc
    push ax                          ; 0x74df
    mov ax, word [bp - 0x0006]       ; 0x74e0
    add ax, strict word 0xb          ; 0x74e3
    push ax                          ; 0x74e6
    mov ax, 0x11                     ; 0x74e7
    push ax                          ; 0x74ea
    call api_idx_000a                ; 0x74eb
    add sp, byte 8                   ; 0x74ee
    mov ax, word [data_a5b0]         ; 0x74f1
    inc ax                           ; 0x74f4
    inc ax                           ; 0x74f5
    mov cx, 6                        ; 0x74f6
    cwd                              ; 0x74f9
    idiv cx                          ; 0x74fa
    db 0x8b, 0xda ; mov bx, dx
    mov al, byte [bx - 0x5a3a]       ; 0x74fe
    db 0x2a, 0xe4 ; sub ah, ah
    add ax, strict word 0xffcf       ; 0x7504
    mov word [bp - 0x0006], ax       ; 0x7507
    mov ax, 0x35                     ; 0x750a
    push ax                          ; 0x750d
    mov ax, 0xd0                     ; 0x750e
    push ax                          ; 0x7511
    mov ax, word [bp - 0x0006]       ; 0x7512
    add ax, strict word 0xf          ; 0x7515
    push ax                          ; 0x7518
    mov ax, 0x11                     ; 0x7519
    push ax                          ; 0x751c
    call api_idx_000a                ; 0x751d
    add sp, byte 8                   ; 0x7520
    mov ax, word [data_a5b6]         ; 0x7523
    cmp ax, word [data_a5aa]         ; 0x7526
    jl short loc_752f                ; 0x752a
    jmp near loc_75aa                ; 0x752c
    mov ax, 0x67                     ; 0x752f
    push ax                          ; 0x7532
    mov ax, 0x85                     ; 0x7533
    push ax                          ; 0x7536
    mov ax, 1                        ; 0x7537
    push ax                          ; 0x753a
    mov ax, 0x10                     ; 0x753b
    push ax                          ; 0x753e
    call api_idx_000a                ; 0x753f
    add sp, byte 8                   ; 0x7542
    mov ax, word [data_a5b0]         ; 0x7545
    push ax                          ; 0x7548
    cmp ax, strict word 6            ; 0x7549
    pop ax                           ; 0x754c
    jl short loc_755c                ; 0x754d
    mov cx, 6                        ; 0x754f
    cwd                              ; 0x7552
    idiv cx                          ; 0x7553
    db 0x8b, 0xca ; mov cx, dx
    mov ax, 6                        ; 0x7557
    db 0x2b, 0xc1 ; sub ax, cx
    mov word [bp - 0x0008], ax       ; 0x755c
    mov ax, word [data_a5b0]         ; 0x755f
    inc ax                           ; 0x7562
    inc ax                           ; 0x7563
    inc ax                           ; 0x7564
    mov cx, 0xc                      ; 0x7565
    cwd                              ; 0x7568
    idiv cx                          ; 0x7569
    mov word [bp - 0x0006], dx       ; 0x756b
    cmp dx, byte 6                   ; 0x756e
    jge short loc_757a               ; 0x7571
    mov ax, 6                        ; 0x7573
    db 0x2b, 0xc2 ; sub ax, dx
    jmp short loc_7584               ; 0x7578
    db 0x8b, 0xc2 ; mov ax, dx
    mov cx, 6                        ; 0x757c
    cwd                              ; 0x757f
    idiv cx                          ; 0x7580
    db 0x8b, 0xc2 ; mov ax, dx
    mov word [bp - 0x000a], ax       ; 0x7584
    add ax, strict word 0x4c         ; 0x7587
    push ax                          ; 0x758a
    mov ax, word [bp - 0x0008]       ; 0x758b
    add ax, 0x9f                     ; 0x758e
    push ax                          ; 0x7591
    mov ax, word [data_a5b0]         ; 0x7592
    mov cx, data_0002                ; 0x7595
    cwd                              ; 0x7598
    idiv cx                          ; 0x7599
    db 0x8b, 0xc2 ; mov ax, dx
    inc ax                           ; 0x759d
    inc ax                           ; 0x759e
    push ax                          ; 0x759f
    mov ax, 0x10                     ; 0x75a0
    push ax                          ; 0x75a3
    call api_idx_000a                ; 0x75a4
    add sp, byte 8                   ; 0x75a7
    mov ax, word [data_a5b8]         ; 0x75aa
    cmp ax, word [data_a5aa]         ; 0x75ad
    jl short loc_75b6                ; 0x75b1
    jmp near loc_76db                ; 0x75b3
    cmp word [data_a5ce], byte 0x10  ; 0x75b6
    jge short loc_75dd               ; 0x75bb
    mov ax, 0x2f                     ; 0x75bd
    push ax                          ; 0x75c0
    mov ax, 0xbe                     ; 0x75c1
    push ax                          ; 0x75c4
    mov ax, word [data_a5ce]         ; 0x75c5
    add ax, strict word 4            ; 0x75c8
    push ax                          ; 0x75cb
    mov ax, 0x10                     ; 0x75cc
    push ax                          ; 0x75cf
    call api_idx_000a                ; 0x75d0
    add sp, byte 8                   ; 0x75d3
    inc word [data_a5ce]             ; 0x75d6
    db 0xe9, 0xfe, 0x00 ; jmp near loc_76db
    cmp word [data_a5ce], byte 0x14  ; 0x75dd
    jge short loc_761a               ; 0x75e2
    mov ax, 0x2f                     ; 0x75e4
    push ax                          ; 0x75e7
    mov ax, 0xbe                     ; 0x75e8
    push ax                          ; 0x75eb
    mov ax, 0x14                     ; 0x75ec
    push ax                          ; 0x75ef
    mov ax, 0x10                     ; 0x75f0
    push ax                          ; 0x75f3
    call api_idx_000a                ; 0x75f4
    add sp, byte 8                   ; 0x75f7
    mov ax, 0x2f                     ; 0x75fa
    push ax                          ; 0x75fd
    mov ax, 0xbe                     ; 0x75fe
    push ax                          ; 0x7601
    mov ax, word [data_a5ce]         ; 0x7602
    add ax, strict word 5            ; 0x7605
    push ax                          ; 0x7608
    mov ax, 0x10                     ; 0x7609
    push ax                          ; 0x760c
    call api_idx_000a                ; 0x760d
    add sp, byte 8                   ; 0x7610
