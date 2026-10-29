; auto-generated
call_free_score:
    push bp                          ; 0x41bd
    mov bp, sp                       ; 0x41be
    cld                              ; 0x41c0
    call far [cs:cseg_3053 - IMAGE_BASE] ; 0x41c1
    mov sp, bp                       ; 0x41c6
    pop bp                           ; 0x41c8
    ret                              ; 0x41c9
