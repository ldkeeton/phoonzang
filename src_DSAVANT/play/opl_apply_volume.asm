; auto-generated
opl_apply_volume:
    push cx                          ; 0x1302
    push dx                          ; 0x1303
    mov al, byte [cs:opl_channel_index - IMAGE_BASE] ; 0x1304
    inc al                           ; 0x1308
    call opl_channel_operators       ; 0x130a
    mov bx, opl_velocity_scale_table - IMAGE_BASE ; 0x130d
    mov al, byte [cs:opl_note_velocity - IMAGE_BASE] ; 0x1310
    shl al, 1                        ; 0x1314
    xor ah, ah                       ; 0x1316
    mov cl, byte [cs:playback_volume - IMAGE_BASE] ; 0x1318
    mul cl                           ; 0x131d
    mov al, ah                       ; 0x131f
    cs xlatb                         ; 0x1321
    mov dl, al                       ; 0x1323
    xor bh, bh                       ; 0x1325
    mov bl, byte [cs:opl_channel_index - IMAGE_BASE] ; 0x1327
    inc bl                           ; 0x132c
    mov al, 1                        ; 0x132e
    and al, byte [cs:bx + opl_register_shadow_c0_ff - IMAGE_BASE] ; 0x1330
    je short .forward1               ; 0x1335
    mov al, dl                       ; 0x1337
    call opl_write_note_pair         ; 0x1339
.forward1:
    mov al, dh                       ; 0x133c
    call opl_write_note_pair         ; 0x133e
    pop dx                           ; 0x1341
    pop cx                           ; 0x1342
    ret                              ; 0x1343
