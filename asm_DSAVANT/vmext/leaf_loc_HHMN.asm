; auto-generated
leaf_loc_HHMN:
    mov ax, 0xa                      ; 0x1d9e
    imul word [bss_91aa]             ; 0x1da1
    mov cx, word [bp + 0xe]          ; 0x1da5
    shl cx, 1                        ; 0x1da8
    add ax, cx                       ; 0x1daa
    mov bx, ax                       ; 0x1dac
    mov word [bx - 0x6d6e], 1        ; 0x1dae
