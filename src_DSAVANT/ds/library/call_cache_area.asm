; auto-generated
call_cache_area:
    push bp                          ; 0x3b7c
    mov bp, sp                       ; 0x3b7d
    cld                              ; 0x3b7f
    call far [cs:drv_slot_cache_area - IMAGE_BASE] ; 0x3b80
    mov sp, bp                       ; 0x3b85
    pop bp                           ; 0x3b87
    ret                              ; 0x3b88
