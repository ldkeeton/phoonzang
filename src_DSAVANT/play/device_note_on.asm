; auto-generated
device_note_on:
    push bx                          ; 0x1185
    mov bl, byte [cs:music_device - IMAGE_BASE] ; 0x1186
    xor bh, bh                       ; 0x118b
    shl bx, 1                        ; 0x118d
    call [cs:bx + jumptable_1196 - IMAGE_BASE] ; 0x118f
    pop bx                           ; 0x1194
    ret                              ; 0x1195
jumptable_1196:
    dw device_nop - IMAGE_BASE                 ; 0x1196
    dw opl_note_on - IMAGE_BASE                ; 0x1198
    dw device_nop - IMAGE_BASE                 ; 0x119a
    dw device_nop - IMAGE_BASE                 ; 0x119c
    dw opl_note_on - IMAGE_BASE                ; 0x119e
    dw device_nop - IMAGE_BASE                 ; 0x11a0
