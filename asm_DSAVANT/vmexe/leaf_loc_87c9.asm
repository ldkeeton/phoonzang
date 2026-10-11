leaf_loc_87c9:
    dec word [bp - 0x005c]           ; 0x87c9
    mov ax, word [bp - 0x0080]       ; 0x87cc
    add word [bp - 0x007e], ax       ; 0x87cf
    jmp near loc_8859                ; 0x87d2
