string_loc_3a50:
    push bp                          ; 0x3a50
    mov bp, sp                       ; 0x3a51
    cld                              ; 0x3a53
    call far [cs:data_2dbb]          ; 0x3a54
    mov sp, bp                       ; 0x3a59
    pop bp                           ; 0x3a5b
    ret                              ; 0x3a5c
