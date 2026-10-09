leaf_loc_2cec:
    mov ax, word [data_82e8]         ; 0x2cec
    add ax, strict word 9            ; 0x2cef
    mov word [bp - 0x0004], ax       ; 0x2cf2
    jmp near loc_2d69                ; 0x2cf5
