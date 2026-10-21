; auto-generated
gfx_mouse_glide_to:
    push bp                          ; 0x432b
    mov bp, sp                       ; 0x432c
    cld                              ; 0x432e
    call far [cs:cseg_300b - IMAGE_BASE] ; 0x432f
    mov sp, bp                       ; 0x4334
    pop bp                           ; 0x4336
    ret                              ; 0x4337
