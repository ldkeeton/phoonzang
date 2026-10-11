leaf_loc_1d48:
    mov ax, word [bp - 0x0008]       ; 0x1d48
    inc ax                           ; 0x1d4b
    push ax                          ; 0x1d4c
    mov ax, 0xa                      ; 0x1d4d
    imul word [bss_91aa]             ; 0x1d50
    mov cx, ax                       ; 0x1d54
    mov dx, word [bp + 0xe]          ; 0x1d56
    shl dx, 1                        ; 0x1d59
    add ax, dx                       ; 0x1d5b
    mov bx, ax                       ; 0x1d5d
    pop ax                           ; 0x1d5f
    mov word [bx - 0x6dba], ax       ; 0x1d60
    jmp near loc_1e16                ; 0x1d64
