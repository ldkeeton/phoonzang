; auto-generated
loc_VVPP:
    push bx                          ; 0x114a
    mov bl, byte [cs:cseg_0a7c - IMAGE_BASE] ; 0x114b
    xor bh, bh                       ; 0x1150
    shl bx, 1                        ; 0x1152
    call [cs:bx + 0x125b]            ; 0x1154
    pop bx                           ; 0x1159
    ret                              ; 0x115a
    db 0x84, 0x12, 0x02, 0x14, 0x84, 0x12, 0x84, 0x12, 0x02, 0x14, 0x84, 0x12
loc_ORRG:
    push bx                          ; 0x1167
    mov bl, byte [cs:cseg_0a7c - IMAGE_BASE] ; 0x1168
    xor bh, bh                       ; 0x116d
    shl bx, 1                        ; 0x116f
    call [cs:bx + 0x1278]            ; 0x1171
    pop bx                           ; 0x1176
    ret                              ; 0x1177
