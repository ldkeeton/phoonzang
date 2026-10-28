; auto-generated
gfx_stop_sound:
    push bp                          ; 0x4168
    mov bp, sp                       ; 0x4169
    cld                              ; 0x416b
    call far [cs:gfx_drv_stop_sound - IMAGE_BASE] ; 0x416c
    mov sp, bp                       ; 0x4171
    pop bp                           ; 0x4173
    ret                              ; 0x4174
