leaf_loc_2cba:
    mov ax, word [bss_82e8]          ; 0x2cba
    inc ax                           ; 0x2cbd
    mov word [bp - 0x0004], ax       ; 0x2cbe
    jmp near loc_2d69                ; 0x2cc1
