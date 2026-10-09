bios_mouse_loc_4259:
    push bp                          ; 0x4259
    mov bp, sp                       ; 0x425a
    cld                              ; 0x425c
    call far [cs:data_2da7]          ; 0x425d
    mov sp, bp                       ; 0x4262
    pop bp                           ; 0x4264
    ret                              ; 0x4265
