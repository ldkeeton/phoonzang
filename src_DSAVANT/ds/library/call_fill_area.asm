; auto-generated
call_fill_area:
    push bp                          ; 0x3b48
    mov bp, sp                       ; 0x3b49
    cld                              ; 0x3b4b
    call far [cs:drv_slot_fill_area - IMAGE_BASE] ; 0x3b4c
    mov sp, bp                       ; 0x3b51
    pop bp                           ; 0x3b53
    ret                              ; 0x3b54
