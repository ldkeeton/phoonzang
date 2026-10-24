; auto-generated
loc_TJIS:
    push bx                          ; 0x01b0
    cmp byte [cs:music_enabled - IMAGE_BASE], 0 ; 0x01b1
    je short @..loc_TJIS.l2          ; 0x01b7
    mov byte [cs:music_enabled - IMAGE_BASE], 0 ; 0x01b9
    cmp byte [cs:timer_handler_installed - IMAGE_BASE], 0 ; 0x01bf
    je short @..loc_TJIS.l1          ; 0x01c5
    call restore_timer_handler       ; 0x01c7
@..loc_TJIS.l1:
    mov bl, byte [cs:music_device - IMAGE_BASE] ; 0x01ca
    xor bh, bh                       ; 0x01cf
    shl bx, 1                        ; 0x01d1
    call [cs:bx + jumptable_01da - IMAGE_BASE] ; 0x01d3
@..loc_TJIS.l2:
    pop bx                           ; 0x01d8
    ret                              ; 0x01d9
jumptable_01da:
    dw loc_PLIR - IMAGE_BASE                   ; 0x01da
    dw opl_keys_off - IMAGE_BASE               ; 0x01dc
    dw loc_PLIR - IMAGE_BASE                   ; 0x01de
    dw loc_PLIR - IMAGE_BASE                   ; 0x01e0
    dw opl_keys_off - IMAGE_BASE               ; 0x01e2
    dw io_loc_LPON - IMAGE_BASE                ; 0x01e4
