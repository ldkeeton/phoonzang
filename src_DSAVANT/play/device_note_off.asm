; auto-generated
device_note_off:
    push bx                          ; 0x11a2
    mov bl, byte [cs:music_device - IMAGE_BASE] ; 0x11a3
    xor bh, bh                       ; 0x11a8
    shl bx, 1                        ; 0x11aa
    call [cs:bx + jumptable_11b3 - IMAGE_BASE] ; 0x11ac
    pop bx                           ; 0x11b1
    ret                              ; 0x11b2
jumptable_11b3:
    dw device_nop - IMAGE_BASE                 ; 0x11b3
    dw opl_note_off - IMAGE_BASE               ; 0x11b5
    dw device_note_off_noop - IMAGE_BASE       ; 0x11b7
    dw device_note_off_noop - IMAGE_BASE       ; 0x11b9
    dw opl_note_off - IMAGE_BASE               ; 0x11bb
    dw device_nop - IMAGE_BASE                 ; 0x11bd
