math_loc_0f54:
    mov ax, 0                        ; 0x0f54
    call ds_dispatch_f40b            ; 0x0f57
    mov ax, 0x248                    ; 0x0f5a
    imul word [bp + 0x4]             ; 0x0f5d
    add ax, word [bp + 0x6]          ; 0x0f60
    mov bx, ax                       ; 0x0f63
    cmp byte [bx + 0x5d6c], 0x64     ; 0x0f65
    jae short @..math_loc_0f54.l1    ; 0x0f6a
    mov al, byte [bx + 0x5d6c]       ; 0x0f6c
    sub ah, ah                       ; 0x0f70
    push ax                          ; 0x0f72
    call ds_dispatch_b7a9            ; 0x0f73
    pop cx                           ; 0x0f76
    push ax                          ; 0x0f77
    mov ax, 0x248                    ; 0x0f78
    imul word [bp + 0x4]             ; 0x0f7b
    mov bx, ax                       ; 0x0f7e
    mov ax, word [bx + 0x5c18]       ; 0x0f80
    imul word [bp + 0x8]             ; 0x0f84
    mov cx, ax                       ; 0x0f87
    pop ax                           ; 0x0f89
    sub ax, cx                       ; 0x0f8a
    jg short @..math_loc_0f54.l1     ; 0x0f8c
    add bx, word [bp + 0x6]          ; 0x0f8e
    inc byte [bx + 0x5d6c]           ; 0x0f91
@..math_loc_0f54.l1:
    ret                              ; 0x0f95
