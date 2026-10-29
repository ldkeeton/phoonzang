; auto-generated
call_load_screen:
    push bp                          ; 0x4225
    mov bp, sp                       ; 0x4226
    cld                              ; 0x4228
    call far [cs:cseg_2fa3 - IMAGE_BASE] ; 0x4229
    mov sp, bp                       ; 0x422e
    pop bp                           ; 0x4230
    ret                              ; 0x4231
