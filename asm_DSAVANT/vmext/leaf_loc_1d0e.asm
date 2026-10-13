; auto-generated
leaf_loc_1d0e:
    mov ax, word [bp - 0x0008]       ; 0x1d0e
    inc ax                           ; 0x1d11
    push ax                          ; 0x1d12
    mov ax, 5                        ; 0x1d13
    imul word [bss_91aa]             ; 0x1d16
    mov cx, ax                       ; 0x1d1a
    add ax, word [bp + 0xe]          ; 0x1d1c
    mov bx, ax                       ; 0x1d1f
    pop ax                           ; 0x1d21
    mov byte [bx - 0x6e07], al       ; 0x1d22
    jmp near loc_1e16                ; 0x1d26
