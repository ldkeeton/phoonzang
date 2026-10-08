api_idx_0004_2:
    mov ax, 0xfffc                   ; 0x0a6a
    call ds_dispatch_f40b            ; 0x0a6d
    cmp word [data_9150], byte 3     ; 0x0a70
    jle short @..api_idx_0004_2.l1   ; 0x0a75
    mov ax, 0                        ; 0x0a77
    push ax                          ; 0x0a7a
    call loc_0a1a                    ; 0x0a7b
    pop cx                           ; 0x0a7e
@..api_idx_0004_2.l1:
    mov bx, word [bp + 0x4]          ; 0x0a7f
    cmp byte [bx], 0                 ; 0x0a82
    jne short @..api_idx_0004_2.l2   ; 0x0a85
    inc word [data_9150]             ; 0x0a87
    ret                              ; 0x0a8b
@..api_idx_0004_2.l2:
    mov ax, data_0002                ; 0x0a8c
    push ax                          ; 0x0a8f
    push bx                          ; 0x0a90
    call ds_dispatch_e883            ; 0x0a91
    add sp, byte 4                   ; 0x0a94
    inc ax                           ; 0x0a97
    mov cx, data_0002                ; 0x0a98
    cwd                              ; 0x0a9b
    idiv cx                          ; 0x0a9c
    mov cx, ax                       ; 0x0a9e
    mov ax, 0xa0                     ; 0x0aa0
    sub ax, cx                       ; 0x0aa3
    mov word [bp - 0x0002], ax       ; 0x0aa5
    push word [bp + 0x4]             ; 0x0aa8
    call ds_dispatch_fa90            ; 0x0aab
    pop cx                           ; 0x0aae
    dec ax                           ; 0x0aaf
    mov word [bp - 0x0004], ax       ; 0x0ab0
    mov bx, word [bp + 0x4]          ; 0x0ab3
    mov si, ax                       ; 0x0ab6
    mov al, byte [bx + si]           ; 0x0ab8
    sub ah, ah                       ; 0x0aba
    jmp short @..api_idx_0004_2.l5   ; 0x0abc
