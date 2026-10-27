; auto-generated
opl_write_note_pair:
    push dx                          ; 0x1344
    mov dx, ax                       ; 0x1345
    mov al, byte [cs:playback_volume - IMAGE_BASE] ; 0x1347
    mov cl, byte [cs:cseg_0d3f - IMAGE_BASE] ; 0x134b
    shl cl, 1                        ; 0x1350
    inc cl                           ; 0x1352
    xor ah, ah                       ; 0x1354
    mul cl                           ; 0x1356
    mov cl, ah                       ; 0x1358
    mov al, dh                       ; 0x135a
    not al                           ; 0x135c
    and al, 0x3f                     ; 0x135e
    xor ah, ah                       ; 0x1360
    mul cl                           ; 0x1362
    mov al, ah                       ; 0x1364
    not al                           ; 0x1366
    and al, 0x3f                     ; 0x1368
    mov bl, dh                       ; 0x136a
    and bl, 0xc0                     ; 0x136c
    mov ah, 0x40                     ; 0x136f
    add ah, dl                       ; 0x1371
    or al, bl                        ; 0x1373
    call opl_write                   ; 0x1375
    pop dx                           ; 0x1378
    ret                              ; 0x1379
