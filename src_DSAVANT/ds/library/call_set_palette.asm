; auto-generated
call_set_palette:
    push bp                          ; 0x4352
    mov bp, sp                       ; 0x4353
    cld                              ; 0x4355
    call far [cs:cseg_301f - IMAGE_BASE] ; 0x4356
    mov sp, bp                       ; 0x435b
    pop bp                           ; 0x435d
    ret                              ; 0x435e
