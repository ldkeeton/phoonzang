api_idx_0004_6:
    mov ax, 0xfffc                   ; 0x6d1f
    call ds_dispatch_f40b            ; 0x6d22
    cmp word [data_a4a6], byte 3     ; 0x6d25
    jle short @..api_idx_0004_6.l1   ; 0x6d2a
    call api_idx_0004_5              ; 0x6d2c
@..api_idx_0004_6.l1:
    mov bx, word [bp + 0x4]          ; 0x6d2f
    cmp byte [bx], 0                 ; 0x6d32
    jne short @..api_idx_0004_6.l2   ; 0x6d35
    inc word [data_a4a6]             ; 0x6d37
    ret                              ; 0x6d3b
@..api_idx_0004_6.l2:
    mov ax, data_0002                ; 0x6d3c
    push ax                          ; 0x6d3f
    push bx                          ; 0x6d40
    call ds_dispatch_e883            ; 0x6d41
    add sp, byte 4                   ; 0x6d44
    inc ax                           ; 0x6d47
    mov cx, data_0002                ; 0x6d48
    cwd                              ; 0x6d4b
    idiv cx                          ; 0x6d4c
    mov cx, ax                       ; 0x6d4e
    mov ax, 0xa0                     ; 0x6d50
    sub ax, cx                       ; 0x6d53
    mov word [bp - 0x0002], ax       ; 0x6d55
    push word [bp + 0x4]             ; 0x6d58
    call ds_dispatch_fa90            ; 0x6d5b
    pop cx                           ; 0x6d5e
    dec ax                           ; 0x6d5f
    mov word [bp - 0x0004], ax       ; 0x6d60
    mov bx, word [bp + 0x4]          ; 0x6d63
    mov si, ax                       ; 0x6d66
    mov al, byte [bx + si]           ; 0x6d68
    sub ah, ah                       ; 0x6d6a
    jmp short @..api_idx_0004_6.l5   ; 0x6d6c
