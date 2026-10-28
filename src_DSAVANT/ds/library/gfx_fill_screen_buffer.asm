; auto-generated
gfx_fill_screen_buffer:
    push bp                          ; 0x3b2e
    mov bp, sp                       ; 0x3b2f
    cld                              ; 0x3b31
    call far [cs:gfx_drv_fill_screen_buffer - IMAGE_BASE] ; 0x3b32
    mov sp, bp                       ; 0x3b37
    pop bp                           ; 0x3b39
    ret                              ; 0x3b3a
