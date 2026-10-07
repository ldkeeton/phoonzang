api_idx_00e6:
    mov ax, 0xff1a                   ; 0x73ae
    call ds_dispatch_f40b            ; 0x73b1
    mov bx, word [data_0e12]         ; 0x73b4
    mov si, word [data_8d12]         ; 0x73b8
    cmp byte [bx + si + 0xa50], 0    ; 0x73bc
    jbe short @..api_idx_00e6.l1     ; 0x73c1
    mov ax, 0                        ; 0x73c3
    push ax                          ; 0x73c6
    shl si, 1                        ; 0x73c7
    mov ax, word [bx + si]           ; 0x73c9
    push ax                          ; 0x73cb
    mov si, word [data_8d12]         ; 0x73cc
    mov al, byte [bx + si + 0xa50]   ; 0x73d0
    sub ah, ah                       ; 0x73d4
    mov cx, ax                       ; 0x73d6
    pop ax                           ; 0x73d8
    add ax, cx                       ; 0x73d9
    push ax                          ; 0x73db
    call loc_0d87                    ; 0x73dc
    add sp, byte 4                   ; 0x73df
@..api_idx_00e6.l1:
    mov ax, word [data_8d12]         ; 0x73e2
    shl ax, 1                        ; 0x73e5
    mov si, ax                       ; 0x73e7
    mov bx, word [data_0e12]         ; 0x73e9
    mov ax, word [bx + si + 0x3c0]   ; 0x73ed
    mov word [bp - 0x0008], ax       ; 0x73f1
    mov ax, 4                        ; 0x73f4
    push ax                          ; 0x73f7
    mov ax, 0                        ; 0x73f8
    push ax                          ; 0x73fb
    push word [bp - 0x0008]          ; 0x73fc
    call ds_dispatch_ed3a            ; 0x73ff
    add sp, byte 6                   ; 0x7402
    mov word [bp - 0x000e], ax       ; 0x7405
    mov ax, 4                        ; 0x7408
    push ax                          ; 0x740b
    push ax                          ; 0x740c
    push word [bp - 0x0008]          ; 0x740d
    call ds_dispatch_ed3a            ; 0x7410
    add sp, byte 6                   ; 0x7413
    mov word [bp - 0x0010], ax       ; 0x7416
    mov ax, 1                        ; 0x7419
    push ax                          ; 0x741c
    mov ax, 8                        ; 0x741d
    push ax                          ; 0x7420
    push word [bp - 0x0008]          ; 0x7421
    call ds_dispatch_ed3a            ; 0x7424
    add sp, byte 6                   ; 0x7427
    mov word [bp - 0x0014], ax       ; 0x742a
    mov ax, 1                        ; 0x742d
    push ax                          ; 0x7430
    mov ax, 9                        ; 0x7431
    push ax                          ; 0x7434
    push word [bp - 0x0008]          ; 0x7435
    call ds_dispatch_ed3a            ; 0x7438
    add sp, byte 6                   ; 0x743b
    mov word [bp - 0x0016], ax       ; 0x743e
    mov ax, 1                        ; 0x7441
    push ax                          ; 0x7444
    mov ax, 0xc                      ; 0x7445
    push ax                          ; 0x7448
    push word [bp - 0x0008]          ; 0x7449
    call ds_dispatch_ed3a            ; 0x744c
    add sp, byte 6                   ; 0x744f
    mov word [bp - 0x0018], ax       ; 0x7452
    mov ax, 1                        ; 0x7455
    push ax                          ; 0x7458
    mov ax, 0xd                      ; 0x7459
    push ax                          ; 0x745c
    push word [bp - 0x0008]          ; 0x745d
    call ds_dispatch_ed3a            ; 0x7460
    add sp, byte 6                   ; 0x7463
    mov word [bp - 0x001a], ax       ; 0x7466
    mov ax, 1                        ; 0x7469
    push ax                          ; 0x746c
    mov ax, 0xe                      ; 0x746d
    push ax                          ; 0x7470
    push word [bp - 0x0008]          ; 0x7471
    call ds_dispatch_ed3a            ; 0x7474
    add sp, byte 6                   ; 0x7477
    mov word [bp - 0x001c], ax       ; 0x747a
    mov ax, 1                        ; 0x747d
    push ax                          ; 0x7480
    mov ax, 0xf                      ; 0x7481
    push ax                          ; 0x7484
    push word [bp - 0x0008]          ; 0x7485
    call ds_dispatch_ed3a            ; 0x7488
    add sp, byte 6                   ; 0x748b
    mov word [bp - 0x0022], ax       ; 0x748e
    mov ax, word [data_8d12]         ; 0x7491
    shl ax, 1                        ; 0x7494
    mov si, ax                       ; 0x7496
    mov bx, word [data_0e12]         ; 0x7498
    mov ax, word [bx + si]           ; 0x749c
    mov word [bp - 0x000a], ax       ; 0x749e
    cmp word [bp - 0x001a], byte 0   ; 0x74a1
    jne short @..api_idx_00e6.l2     ; 0x74a5
    mov ax, 0x9128                   ; 0x74a7
    push ax                          ; 0x74aa
    push word [bp - 0x000a]          ; 0x74ab
    call ds_dispatch_b53b            ; 0x74ae
    add sp, byte 4                   ; 0x74b1
    inc word [bp - 0x000a]           ; 0x74b4
@..api_idx_00e6.l2:
    lea ax, word [bp - 0x00c2]       ; 0x74b7
    push ax                          ; 0x74bb
    push word [bp - 0x000a]          ; 0x74bc
    call ds_dispatch_b53b            ; 0x74bf
    add sp, byte 4                   ; 0x74c2
    inc word [bp - 0x000a]           ; 0x74c5
    mov word [bp - 0x0002], 0        ; 0x74c8
    jmp short @..api_idx_00e6.l4     ; 0x74cd
@..api_idx_00e6.l3:
    mov ax, word [bp - 0x0002]       ; 0x74cf
    shl ax, 1                        ; 0x74d2
    mov bx, ax                       ; 0x74d4
    add bx, bp                       ; 0x74d6
    mov word [bx - 0x00e2], 1        ; 0x74d8
    inc word [bp - 0x0002]           ; 0x74de
@..api_idx_00e6.l4:
    mov ax, word [bp - 0x0002]       ; 0x74e1
    cmp ax, word [bp - 0x000e]       ; 0x74e4
    jl short @..api_idx_00e6.l3      ; 0x74e7
    mov ax, word [bp - 0x000e]       ; 0x74e9
    shl ax, 1                        ; 0x74ec
    mov bx, ax                       ; 0x74ee
    add bx, bp                       ; 0x74f0
    mov word [bx - 0x00e2], 0xffff   ; 0x74f2
    mov word [data_9126], 1          ; 0x74f8
    mov ax, 0                        ; 0x74fe
    push ax                          ; 0x7501
    call api_idx_000a_2              ; 0x7502
    pop cx                           ; 0x7505
    cmp word [bp - 0x001a], byte 1   ; 0x7506
    je short @..api_idx_00e6.l5      ; 0x750a
    jmp near @..api_idx_00e6.l7      ; 0x750c
@..api_idx_00e6.l5:
    lea ax, word [bp - 0x0072]       ; 0x750f
    push ax                          ; 0x7512
    push word [bp - 0x000a]          ; 0x7513
    call ds_dispatch_b53b            ; 0x7516
    add sp, byte 4                   ; 0x7519
    lea ax, word [bp - 0x0072]       ; 0x751c
    push ax                          ; 0x751f
    call ds_dispatch_fa90            ; 0x7520
    pop cx                           ; 0x7523
    mov word [bp - 0x000c], ax       ; 0x7524
    lea ax, word [bp - 0x00e2]       ; 0x7527
    push ax                          ; 0x752b
    mov ax, 0                        ; 0x752c
    push ax                          ; 0x752f
    mov ax, 0xffff                   ; 0x7530
    push ax                          ; 0x7533
    mov ax, 1                        ; 0x7534
    push ax                          ; 0x7537
    push word [bp - 0x000e]          ; 0x7538
    mov ax, 3                        ; 0x753b
    push ax                          ; 0x753e
    mov ax, 0xc                      ; 0x753f
    push ax                          ; 0x7542
    mov ax, 6                        ; 0x7543
    imul word [bp - 0x000c]          ; 0x7546
    add ax, strict word 4            ; 0x7549
    push ax                          ; 0x754c
    push word [bp - 0x000c]          ; 0x754d
    mov ax, 0x9c                     ; 0x7550
    push ax                          ; 0x7553
    mov ax, 6                        ; 0x7554
    imul word [bp - 0x000c]          ; 0x7557
    mov cx, data_0002                ; 0x755a
    cwd                              ; 0x755d
    idiv cx                          ; 0x755e
    mov cx, ax                       ; 0x7560
    mov ax, 0xa1                     ; 0x7562
    sub ax, cx                       ; 0x7565
    push ax                          ; 0x7567
    mov ax, 0                        ; 0x7568
    push ax                          ; 0x756b
    push word [bp - 0x000a]          ; 0x756c
    call math_loc_8441               ; 0x756f
    add sp, byte 0x1a                ; 0x7572
    mov word [bp - 0x0006], ax       ; 0x7575
    lea ax, word [bp - 0x0072]       ; 0x7578
    push ax                          ; 0x757b
    mov ax, word [bp - 0x000a]       ; 0x757c
    add ax, word [bp - 0x0006]       ; 0x757f
    push ax                          ; 0x7582
    call ds_dispatch_b53b            ; 0x7583
    add sp, byte 4                   ; 0x7586
    mov ax, 0x1a                     ; 0x7589
    push ax                          ; 0x758c
    mov ax, 3                        ; 0x758d
    push ax                          ; 0x7590
    mov ax, 0xc                      ; 0x7591
    push ax                          ; 0x7594
    mov ax, 6                        ; 0x7595
    imul word [bp - 0x000c]          ; 0x7598
    add ax, strict word 4            ; 0x759b
    push ax                          ; 0x759e
    push word [bp - 0x000c]          ; 0x759f
    mov ax, 0x9c                     ; 0x75a2
    push ax                          ; 0x75a5
    mov ax, 6                        ; 0x75a6
    imul word [bp - 0x000c]          ; 0x75a9
