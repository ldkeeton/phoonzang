; auto-generated
call_save_screen:
    push bp                          ; 0x423f
    mov bp, sp                       ; 0x4240
    cld                              ; 0x4242
    call far [cs:cseg_2fef - IMAGE_BASE] ; 0x4243
    mov sp, bp                       ; 0x4248
    pop bp                           ; 0x424a
    ret                              ; 0x424b
