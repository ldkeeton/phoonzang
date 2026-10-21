; auto-generated
gfx_restore_screen:
    push bp                          ; 0x3b89
    mov bp, sp                       ; 0x3b8a
    cld                              ; 0x3b8c
    call far [cs:cseg_302b - IMAGE_BASE] ; 0x3b8d
    mov sp, bp                       ; 0x3b92
    pop bp                           ; 0x3b94
    ret                              ; 0x3b95
