leaf_loc_8800:
    dec word [bp - 0x005a]           ; 0x8800
    dec word [bp - 0x005a]           ; 0x8803
    mov ax, word [bp - 0x007e]       ; 0x8806
    add ax, word [bp - 0x0080]       ; 0x8809
    inc ax                           ; 0x880c
    inc ax                           ; 0x880d
    mov word [bp - 0x007e], ax       ; 0x880e
    jmp short loc_8859               ; 0x8811
