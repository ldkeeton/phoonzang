string_loc_3a6a:
    push bp                          ; 0x3a6a
    mov bp, sp                       ; 0x3a6b
    cld                              ; 0x3a6d
    call far [cs:data_2db7]          ; 0x3a6e
    mov sp, bp                       ; 0x3a73
    pop bp                           ; 0x3a75
    ret                              ; 0x3a76
