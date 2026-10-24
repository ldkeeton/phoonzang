; auto-generated
loc_IMHI:
    push bx                          ; 0x1167
    mov bl, byte [cs:music_device - IMAGE_BASE] ; 0x1168
    xor bh, bh                       ; 0x116d
    shl bx, 1                        ; 0x116f
    call [cs:bx + jumptable_1178 - IMAGE_BASE] ; 0x1171
    pop bx                           ; 0x1176
    ret                              ; 0x1177
jumptable_1178:
    dw loc_PLIR - IMAGE_BASE                   ; 0x1178
    dw string_loc_NOSM - IMAGE_BASE            ; 0x117a
    dw loc_PLIR - IMAGE_BASE                   ; 0x117c
    dw loc_PLIR - IMAGE_BASE                   ; 0x117e
    dw string_loc_NOSM - IMAGE_BASE            ; 0x1180
    dw loc_PLIR - IMAGE_BASE                   ; 0x1182
