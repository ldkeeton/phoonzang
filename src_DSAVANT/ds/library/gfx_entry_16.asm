; auto-generated
; asm only
gfx_entry_16:
    push bp                          ; 0x3b21
    mov bp, sp                       ; 0x3b22
    cld                              ; 0x3b24
    call far [cs:cseg_2fc7 - IMAGE_BASE] ; 0x3b25
    mov sp, bp                       ; 0x3b2a
    pop bp                           ; 0x3b2c
    ret                              ; 0x3b2d
