leaf_loc_1b6c:
    mov ax, 5                        ; 0x1b6c
    imul word [bss_91aa]             ; 0x1b6f
    add ax, word [bp + 0xe]          ; 0x1b73
    mov bx, ax                       ; 0x1b76
    mov byte [bx - 0x6e52], 3        ; 0x1b78
    jmp short loc_1bb9               ; 0x1b7d
