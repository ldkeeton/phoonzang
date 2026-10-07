string_loc_3a5d:
    push bp                          ; 0x3a5d
    mov bp, sp                       ; 0x3a5e
    cld                              ; 0x3a60
    call far [cs:data_2dbf]          ; 0x3a61
    mov sp, bp                       ; 0x3a66
    pop bp                           ; 0x3a68
    ret                              ; 0x3a69
