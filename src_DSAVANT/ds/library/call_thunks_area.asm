; auto-generated
call_show_area:
    push bp                          ; 0x3b21
    mov bp, sp                       ; 0x3b22
    cld                              ; 0x3b24
    call far [cs:drv_slot_show_area - IMAGE_BASE] ; 0x3b25
    mov sp, bp                       ; 0x3b2a
    pop bp                           ; 0x3b2c
    ret                              ; 0x3b2d
call_fill_screen_buffer:
    push bp                          ; 0x3b2e
    mov bp, sp                       ; 0x3b2f
    cld                              ; 0x3b31
    call far [cs:drv_slot_fill_screen_buffer - IMAGE_BASE] ; 0x3b32
    mov sp, bp                       ; 0x3b37
    pop bp                           ; 0x3b39
    ret                              ; 0x3b3a
call_put_pixel:
    push bp                          ; 0x3b3b
    mov bp, sp                       ; 0x3b3c
    cld                              ; 0x3b3e
    call far [cs:drv_slot_put_pixel - IMAGE_BASE] ; 0x3b3f
    mov sp, bp                       ; 0x3b44
    pop bp                           ; 0x3b46
    ret                              ; 0x3b47
call_fill_area:
    push bp                          ; 0x3b48
    mov bp, sp                       ; 0x3b49
    cld                              ; 0x3b4b
    call far [cs:drv_slot_fill_area - IMAGE_BASE] ; 0x3b4c
    mov sp, bp                       ; 0x3b51
    pop bp                           ; 0x3b53
    ret                              ; 0x3b54
call_invert_area:
    push bp                          ; 0x3b55
    mov bp, sp                       ; 0x3b56
    cld                              ; 0x3b58
    call far [cs:drv_slot_invert_area - IMAGE_BASE] ; 0x3b59
    mov sp, bp                       ; 0x3b5e
    pop bp                           ; 0x3b60
    ret                              ; 0x3b61
call_get_free_space:
    push bp                          ; 0x3b62
    mov bp, sp                       ; 0x3b63
    cld                              ; 0x3b65
    call far [cs:drv_slot_get_free_space - IMAGE_BASE] ; 0x3b66
    mov sp, bp                       ; 0x3b6b
    pop bp                           ; 0x3b6d
    ret                              ; 0x3b6e
call_save_area:
    push bp                          ; 0x3b6f
    mov bp, sp                       ; 0x3b70
    cld                              ; 0x3b72
    call far [cs:drv_slot_save_area - IMAGE_BASE] ; 0x3b73
    mov sp, bp                       ; 0x3b78
    pop bp                           ; 0x3b7a
    ret                              ; 0x3b7b
call_cache_area:
    push bp                          ; 0x3b7c
    mov bp, sp                       ; 0x3b7d
    cld                              ; 0x3b7f
    call far [cs:drv_slot_cache_area - IMAGE_BASE] ; 0x3b80
    mov sp, bp                       ; 0x3b85
    pop bp                           ; 0x3b87
    ret                              ; 0x3b88
call_restore_screen:
    push bp                          ; 0x3b89
    mov bp, sp                       ; 0x3b8a
    cld                              ; 0x3b8c
    call far [cs:drv_slot_restore_screen - IMAGE_BASE] ; 0x3b8d
    mov sp, bp                       ; 0x3b92
    pop bp                           ; 0x3b94
    ret                              ; 0x3b95
call_restore_area:
    push bp                          ; 0x3b96
    mov bp, sp                       ; 0x3b97
    cld                              ; 0x3b99
    call far [cs:drv_slot_restore_area - IMAGE_BASE] ; 0x3b9a
    mov sp, bp                       ; 0x3b9f
    pop bp                           ; 0x3ba1
    ret                              ; 0x3ba2
