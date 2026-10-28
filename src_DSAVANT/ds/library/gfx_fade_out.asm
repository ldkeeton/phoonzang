; auto-generated
gfx_fade_out:
    push bp                          ; 0x4311
    mov bp, sp                       ; 0x4312
    cld                              ; 0x4314
    call far [cs:gfx_drv_fade_out - IMAGE_BASE] ; 0x4315
    mov sp, bp                       ; 0x431a
    pop bp                           ; 0x431c
    ret                              ; 0x431d
