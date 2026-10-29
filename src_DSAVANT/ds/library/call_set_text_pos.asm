; auto-generated
call_set_text_pos:
    push bp                          ; 0x3a50
    mov bp, sp                       ; 0x3a51
    cld                              ; 0x3a53
    call far [cs:drv_slot_set_text_pos - IMAGE_BASE] ; 0x3a54
    mov sp, bp                       ; 0x3a59
    pop bp                           ; 0x3a5b
    ret                              ; 0x3a5c
call_get_text_pos:
    push bp                          ; 0x3a5d
    mov bp, sp                       ; 0x3a5e
    cld                              ; 0x3a60
    call far [cs:cseg_2fbf - IMAGE_BASE] ; 0x3a61
    mov sp, bp                       ; 0x3a66
    pop bp                           ; 0x3a68
    ret                              ; 0x3a69
call_set_text_color:
    push bp                          ; 0x3a6a
    mov bp, sp                       ; 0x3a6b
    cld                              ; 0x3a6d
    call far [cs:cseg_2fb7 - IMAGE_BASE] ; 0x3a6e
    mov sp, bp                       ; 0x3a73
    pop bp                           ; 0x3a75
    ret                              ; 0x3a76
