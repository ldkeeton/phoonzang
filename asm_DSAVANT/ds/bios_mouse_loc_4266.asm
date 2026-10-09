bios_mouse_loc_4266:
    push bp                          ; 0x4266
    mov bp, sp                       ; 0x4267
    cld                              ; 0x4269
    call far [cs:data_2dab]          ; 0x426a
    mov sp, bp                       ; 0x426f
    pop bp                           ; 0x4271
    ret                              ; 0x4272
