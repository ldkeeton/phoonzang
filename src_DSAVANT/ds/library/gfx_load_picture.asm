; auto-generated
; asm only
gfx_load_picture:
    push bp                          ; 0x41f1
    mov bp, sp                       ; 0x41f2
    cld                              ; 0x41f4
    call far [cs:cseg_2f9b - IMAGE_BASE] ; 0x41f5
    mov sp, bp                       ; 0x41fa
    pop bp                           ; 0x41fc
    ret                              ; 0x41fd
