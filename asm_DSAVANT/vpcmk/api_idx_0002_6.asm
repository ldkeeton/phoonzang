api_idx_0002_6:
    mov ax, 0xfffe                   ; 0x24c8
    call ds_dispatch_f40b            ; 0x24cb
    mov ax, 0                        ; 0x24ce
    push ax                          ; 0x24d1
    push ax                          ; 0x24d2
    push word [data_952e]            ; 0x24d3
    push word [data_952c]            ; 0x24d7
    call ds_dispatch_e942            ; 0x24db
    add sp, byte 8                   ; 0x24de
    mov word [bp - 0x0002], 0        ; 0x24e1
    jmp near @..api_idx_0002_6.l2    ; 0x24e6
@..api_idx_0002_6.l1:
    mov ax, 0                        ; 0x24e9
    push ax                          ; 0x24ec
    mov ax, word [bp + 0x6]          ; 0x24ed
    shl ax, 1                        ; 0x24f0
    mov bx, ax                       ; 0x24f2
    db 0xff, 0xb7, 0x30, 0x00 ; push word [bx + 0x30]
    call ds_dispatch_e823            ; 0x24f8
    add sp, byte 4                   ; 0x24fb
    mov ax, 6                        ; 0x24fe
    imul word [bp - 0x0002]          ; 0x2501
    add ax, strict word 0x72         ; 0x2504
    push ax                          ; 0x2507
    mov ax, 6                        ; 0x2508
    push ax                          ; 0x250b
    call ds_dispatch_e809            ; 0x250c
    add sp, byte 4                   ; 0x250f
    mov ax, 0                        ; 0x2512
    push ax                          ; 0x2515
    mov ax, 0x14                     ; 0x2516
    imul word [bp - 0x0002]          ; 0x2519
    add ax, 0xe38                    ; 0x251c
    push ax                          ; 0x251f
    call ds_dispatch_e84e            ; 0x2520
    add sp, byte 4                   ; 0x2523
    mov ax, 6                        ; 0x2526
    imul word [bp - 0x0002]          ; 0x2529
    add ax, strict word 0x72         ; 0x252c
    push ax                          ; 0x252f
    mov ax, api_idx_0002_2           ; 0x2530
    push ax                          ; 0x2533
    call ds_dispatch_e809            ; 0x2534
    add sp, byte 4                   ; 0x2537
    mov ax, 0                        ; 0x253a
    push ax                          ; 0x253d
    mov ax, 1                        ; 0x253e
    push ax                          ; 0x2541
    call ds_dispatch_e823            ; 0x2542
    add sp, byte 4                   ; 0x2545
    mov ax, 0                        ; 0x2548
    push ax                          ; 0x254b
    mov ax, 3                        ; 0x254c
    push ax                          ; 0x254f
    mov ax, 0x248                    ; 0x2550
    imul word [bp + 0x4]             ; 0x2553
    mov cx, word [bp - 0x0002]       ; 0x2556
    shl cx, 1                        ; 0x2559
    mov si, cx                       ; 0x255b
    mov bx, word [bp + 0xa]          ; 0x255d
    mov cx, word [bx + si]           ; 0x2560
    add ax, cx                       ; 0x2562
    mov bx, ax                       ; 0x2564
    mov al, byte [bx + 0x5d6c]       ; 0x2566
    sub ah, ah                       ; 0x256a
    push ax                          ; 0x256c
    call ds_dispatch_b2e7            ; 0x256d
    add sp, byte 6                   ; 0x2570
    inc word [bp - 0x0002]           ; 0x2573
@..api_idx_0002_6.l2:
    mov ax, word [bp - 0x0002]       ; 0x2576
    cmp ax, word [bp + 0x8]          ; 0x2579
    jge short @..api_idx_0002_6.l3   ; 0x257c
    jmp near @..api_idx_0002_6.l1    ; 0x257e
@..api_idx_0002_6.l3:
    ret                              ; 0x2581
