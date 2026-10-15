; auto-generated
loc_LJIN:
    push bp                          ; 0x2c62
    mov bp, sp                       ; 0x2c63
    lea ax, word [bp + 0x6]          ; 0x2c65
    push ax                          ; 0x2c68
    push word [bp + 0x4]             ; 0x2c69
    mov ax, 0x2a7a                   ; 0x2c6c
    push ax                          ; 0x2c6f
    call sprintf                     ; 0x2c70
    add sp, byte 6                   ; 0x2c73
    mov sp, bp                       ; 0x2c76
    pop bp                           ; 0x2c78
    ret                              ; 0x2c79
