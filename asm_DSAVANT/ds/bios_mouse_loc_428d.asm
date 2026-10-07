bios_mouse_loc_4280:
    push bp                          ; 0x4280
    mov bp, sp                       ; 0x4281
    cld                              ; 0x4283
    call far [cs:data_2d8b]          ; 0x4284
    mov sp, bp                       ; 0x4289
    pop bp                           ; 0x428b
    ret                              ; 0x428c
