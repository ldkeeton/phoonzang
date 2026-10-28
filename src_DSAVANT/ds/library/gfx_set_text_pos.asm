; auto-generated
gfx_set_text_pos:
    push bp                          ; 0x3a50
    mov bp, sp                       ; 0x3a51
    cld                              ; 0x3a53
    call far [cs:gfx_drv_set_text_pos - IMAGE_BASE] ; 0x3a54
    mov sp, bp                       ; 0x3a59
    pop bp                           ; 0x3a5b
    ret                              ; 0x3a5c
