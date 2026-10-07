math_loc_3b48:
    push bp                          ; 0x3b48
    mov bp, sp                       ; 0x3b49
    cld                              ; 0x3b4b
    call far [cs:data_2dcf]          ; 0x3b4c
    mov sp, bp                       ; 0x3b51
    pop bp                           ; 0x3b53
    ret                              ; 0x3b54
