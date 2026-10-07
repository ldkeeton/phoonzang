loc_3b3b:
    push bp                          ; 0x3b3b
    mov bp, sp                       ; 0x3b3c
    cld                              ; 0x3b3e
    call far [cs:data_2dcb]          ; 0x3b3f
    mov sp, bp                       ; 0x3b44
    pop bp                           ; 0x3b46
    ret                              ; 0x3b47
