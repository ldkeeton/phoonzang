; auto-generated
leaf_loc_THMM:
    mov ax, 5                        ; 0x1d77
    imul word [bss_91aa]             ; 0x1d7a
    add ax, word [bp + 0xe]          ; 0x1d7e
    mov bx, ax                       ; 0x1d81
    mov byte [bx - 0x6d8a], 1        ; 0x1d83
    jmp near loc_SGRK                ; 0x1d88
