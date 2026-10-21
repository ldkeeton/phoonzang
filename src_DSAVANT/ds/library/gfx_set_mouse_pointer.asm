; auto-generated
; asm only
gfx_set_mouse_pointer:
    push bp                          ; 0x42a7
    mov bp, sp                       ; 0x42a8
    cld                              ; 0x42aa
    call far [cs:cseg_2fe7 - IMAGE_BASE] ; 0x42ab
    mov sp, bp                       ; 0x42b0
    pop bp                           ; 0x42b2
    ret                              ; 0x42b3
