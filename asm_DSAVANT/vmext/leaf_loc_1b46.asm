leaf_loc_1b46:
    mov ax, 5                        ; 0x1b46
    imul word [bss_91aa]             ; 0x1b49
    add ax, word [bp + 0xe]          ; 0x1b4d
    mov bx, ax                       ; 0x1b50
    mov byte [bx - 0x6e52], 2        ; 0x1b52
    jmp short loc_1bb9               ; 0x1b57
