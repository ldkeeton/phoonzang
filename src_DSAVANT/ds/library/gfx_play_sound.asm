; auto-generated
gfx_play_sound:
    push bp                          ; 0x414e
    mov bp, sp                       ; 0x414f
    cld                              ; 0x4151
    call far [cs:cseg_303f - IMAGE_BASE] ; 0x4152
    mov sp, bp                       ; 0x4157
    pop bp                           ; 0x4159
    ret                              ; 0x415a
