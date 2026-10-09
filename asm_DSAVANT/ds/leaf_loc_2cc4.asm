leaf_loc_2cc4:
    mov ax, word [data_82e8]         ; 0x2cc4
    inc ax                           ; 0x2cc7
    inc ax                           ; 0x2cc8
    inc ax                           ; 0x2cc9
    mov word [bp - 0x0004], ax       ; 0x2cca
    jmp near loc_2d69                ; 0x2ccd
