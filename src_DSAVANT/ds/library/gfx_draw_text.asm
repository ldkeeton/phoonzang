; auto-generated
gfx_draw_text:
    push bp                          ; 0x4218
    mov bp, sp                       ; 0x4219
    cld                              ; 0x421b
    call far [cs:gfx_drv_draw_text - IMAGE_BASE] ; 0x421c
    mov sp, bp                       ; 0x4221
    pop bp                           ; 0x4223
    ret                              ; 0x4224
