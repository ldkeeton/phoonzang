; auto-generated
gfx_fade_in:
    push bp                          ; 0x4304
    mov bp, sp                       ; 0x4305
    cld                              ; 0x4307
    call far [cs:gfx_drv_fade_in - IMAGE_BASE] ; 0x4308
    mov sp, bp                       ; 0x430d
    pop bp                           ; 0x430f
    ret                              ; 0x4310
