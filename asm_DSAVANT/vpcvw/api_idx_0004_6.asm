api_idx_0004_6:
    mov ax, 0xfffc                   ; 0x3aac
    call ds_dispatch_f40b            ; 0x3aaf
    cmp word [data_9566], byte 5     ; 0x3ab2
    jle short @..api_idx_0004_6.l1   ; 0x3ab7
    call loc_3a6a                    ; 0x3ab9
@..api_idx_0004_6.l1:
    mov bx, word [bp + 0x4]          ; 0x3abc
    cmp byte [bx], 0                 ; 0x3abf
    jne short @..api_idx_0004_6.l2   ; 0x3ac2
    inc word [data_9566]             ; 0x3ac4
    ret                              ; 0x3ac8
@..api_idx_0004_6.l2:
    mov ax, data_0002                ; 0x3ac9
    push ax                          ; 0x3acc
    push bx                          ; 0x3acd
    call ds_dispatch_e883            ; 0x3ace
    add sp, byte 4                   ; 0x3ad1
    inc ax                           ; 0x3ad4
    mov cx, data_0002                ; 0x3ad5
    cwd                              ; 0x3ad8
    idiv cx                          ; 0x3ad9
    mov cx, ax                       ; 0x3adb
    mov ax, 0x54                     ; 0x3add
    sub ax, cx                       ; 0x3ae0
    mov word [bp - 0x0002], ax       ; 0x3ae2
    push word [bp + 0x4]             ; 0x3ae5
    call ds_dispatch_fa90            ; 0x3ae8
    pop cx                           ; 0x3aeb
    dec ax                           ; 0x3aec
    mov word [bp - 0x0004], ax       ; 0x3aed
    mov bx, word [bp + 0x4]          ; 0x3af0
    mov si, ax                       ; 0x3af3
    mov al, byte [bx + si]           ; 0x3af5
    sub ah, ah                       ; 0x3af7
    jmp short @..api_idx_0004_6.l5   ; 0x3af9
