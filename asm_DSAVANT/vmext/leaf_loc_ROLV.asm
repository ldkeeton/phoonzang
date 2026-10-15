; auto-generated
leaf_loc_ROLV:
    mov ax, 5                        ; 0x1d8b
    imul word [bss_91aa]             ; 0x1d8e
    add ax, word [bp + 0xe]          ; 0x1d92
    mov bx, ax                       ; 0x1d95
    mov byte [bx - 0x6e52], 3        ; 0x1d97
    jmp short loc_SGRK               ; 0x1d9c
