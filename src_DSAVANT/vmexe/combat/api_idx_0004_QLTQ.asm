; auto-generated
api_idx_0004_QLTQ:
    mov ax, 0xfffc                   ; 0x24f0
    call aztec_csav                  ; 0x24f3
    mov ax, word [bp + 0x4]          ; 0x24f6
    shl ax, 1                        ; 0x24f9
    mov bx, ax                       ; 0x24fb
    mov bx, word [bx + party_char]   ; 0x24fd
    mov si, word [bp + 0x6]          ; 0x2501
    mov al, byte [bx + si + 0x18c]   ; 0x2504
    sub ah, ah                       ; 0x2508
    mov word [bp - 0x0002], ax       ; 0x250a
    push word [bp + 0xa]             ; 0x250d
    call random_below                ; 0x2510
    pop cx                           ; 0x2513
    mov cx, ax                       ; 0x2514
    mov ax, word [bp - 0x0002]       ; 0x2516
    cmp cx, ax                       ; 0x2519
    jge short @..api_idx_0004_QLTQ.l2 ; 0x251b
    mov bx, word [bp + 0x8]          ; 0x251d
    imul bx                          ; 0x2520
    mov cx, 0x64                     ; 0x2522
    mov bx, 0                        ; 0x2525
    call aztec_ldv                   ; 0x2528
    mov word [bp - 0x0004], ax       ; 0x252b
@..api_idx_0004_QLTQ.l1:
    cmp word [bp - 0x0004], byte 0   ; 0x252e
    jle short @..api_idx_0004_QLTQ.l2 ; 0x2532
    mov ax, 2                        ; 0x2534
    push ax                          ; 0x2537
    call random_below                ; 0x2538
    pop cx                           ; 0x253b
    sub word [bp + 0x8], ax          ; 0x253c
    dec word [bp - 0x0004]           ; 0x253f
    jmp short @..api_idx_0004_QLTQ.l1 ; 0x2542
@..api_idx_0004_QLTQ.l2:
    cmp word [bp + 0x8], byte 1      ; 0x2544
    jge short @..api_idx_0004_QLTQ.l3 ; 0x2548
    mov word [bp + 0x8], 1           ; 0x254a
@..api_idx_0004_QLTQ.l3:
    mov ax, word [bp + 0x8]          ; 0x254f
    ret                              ; 0x2552
