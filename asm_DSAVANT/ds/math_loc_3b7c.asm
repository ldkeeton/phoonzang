math_loc_3b6f:
    push bp                          ; 0x3b6f
    mov bp, sp                       ; 0x3b70
    cld                              ; 0x3b72
    call far [cs:data_2dd7]          ; 0x3b73
    mov sp, bp                       ; 0x3b78
    pop bp                           ; 0x3b7a
    ret                              ; 0x3b7b
