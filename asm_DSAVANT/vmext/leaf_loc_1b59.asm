; auto-generated
leaf_loc_1b59:
    mov ax, 5                        ; 0x1b59
    imul word [bss_91aa]             ; 0x1b5c
    add ax, word [bp + 0xe]          ; 0x1b60
    mov bx, ax                       ; 0x1b63
    mov byte [bx - 0x6e39], 1        ; 0x1b65
    jmp short loc_1bb9               ; 0x1b6a
