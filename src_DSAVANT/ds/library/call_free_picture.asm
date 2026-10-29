; auto-generated
call_free_picture:
    push bp                          ; 0x41fe
    mov bp, sp                       ; 0x41ff
    cld                              ; 0x4201
    call far [cs:cseg_2fdf - IMAGE_BASE] ; 0x4202
    mov sp, bp                       ; 0x4207
    pop bp                           ; 0x4209
    ret                              ; 0x420a
