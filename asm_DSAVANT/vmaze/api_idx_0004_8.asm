api_idx_0004_8:
    mov ax, 0xfffc                   ; 0x6c0a
    call ds_dispatch_f40b            ; 0x6c0d
    cmp word [data_9b4c], byte 3     ; 0x6c10
    jle short @..api_idx_0004_8.l1   ; 0x6c15
    mov ax, 0                        ; 0x6c17
    push ax                          ; 0x6c1a
    call loc_6b5a                    ; 0x6c1b
    pop cx                           ; 0x6c1e
@..api_idx_0004_8.l1:
    mov bx, word [bp + 0x4]          ; 0x6c1f
    cmp byte [bx], 0                 ; 0x6c22
    jne short @..api_idx_0004_8.l2   ; 0x6c25
    inc word [data_9b4c]             ; 0x6c27
    ret                              ; 0x6c2b
@..api_idx_0004_8.l2:
    mov ax, 2                        ; 0x6c2c
    push ax                          ; 0x6c2f
    push bx                          ; 0x6c30
    call ds_dispatch_e883            ; 0x6c31
    add sp, byte 4                   ; 0x6c34
    inc ax                           ; 0x6c37
    mov cx, 2                        ; 0x6c38
    cwd                              ; 0x6c3b
    idiv cx                          ; 0x6c3c
    mov cx, ax                       ; 0x6c3e
    mov ax, 0xa0                     ; 0x6c40
    sub ax, cx                       ; 0x6c43
    mov word [bp - 0x0002], ax       ; 0x6c45
    push word [bp + 0x4]             ; 0x6c48
    call ds_dispatch_fa90            ; 0x6c4b
    pop cx                           ; 0x6c4e
    dec ax                           ; 0x6c4f
    mov word [bp - 0x0004], ax       ; 0x6c50
    mov bx, word [bp + 0x4]          ; 0x6c53
    mov si, ax                       ; 0x6c56
    mov al, byte [bx + si]           ; 0x6c58
    sub ah, ah                       ; 0x6c5a
    jmp short @..api_idx_0004_8.l5   ; 0x6c5c
