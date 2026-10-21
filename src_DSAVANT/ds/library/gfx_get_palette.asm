; auto-generated
gfx_get_palette:
    push bp                          ; 0x4345
    mov bp, sp                       ; 0x4346
    cld                              ; 0x4348
    call far [cs:cseg_301b - IMAGE_BASE] ; 0x4349
    mov sp, bp                       ; 0x434e
    pop bp                           ; 0x4350
    ret                              ; 0x4351
