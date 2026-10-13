; auto-generated
leaf_loc_1d29:
    mov ax, word [bp - 0x0008]       ; 0x1d29
    inc ax                           ; 0x1d2c
    push ax                          ; 0x1d2d
    mov ax, 0xa                      ; 0x1d2e
    imul word [bss_91aa]             ; 0x1d31
    mov cx, ax                       ; 0x1d35
    mov dx, word [bp + 0xe]          ; 0x1d37
    shl dx, 1                        ; 0x1d3a
    add ax, dx                       ; 0x1d3c
    mov bx, ax                       ; 0x1d3e
    pop ax                           ; 0x1d40
    mov word [bx - 0x6dec], ax       ; 0x1d41
    jmp near loc_1e16                ; 0x1d45
