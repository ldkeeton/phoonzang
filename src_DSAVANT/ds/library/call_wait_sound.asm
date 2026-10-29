; auto-generated
call_wait_sound:
    push bp                          ; 0x415b
    mov bp, sp                       ; 0x415c
    cld                              ; 0x415e
    call far [cs:drv_slot_wait_sound - IMAGE_BASE] ; 0x415f
    mov sp, bp                       ; 0x4164
    pop bp                           ; 0x4166
    ret                              ; 0x4167
