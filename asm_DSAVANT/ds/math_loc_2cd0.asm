math_loc_2cd0:
    mov ax, word [data_82e8]         ; 0x2cd0
    add ax, strict word 5            ; 0x2cd3
    mov word [bp - 0x0004], ax       ; 0x2cd6
    jmp near loc_2d69                ; 0x2cd9
