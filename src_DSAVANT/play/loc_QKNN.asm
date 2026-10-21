; auto-generated
loc_QKNN:
    push cx                          ; 0x1302
    push dx                          ; 0x1303
    mov al, byte [cs:cseg_0d40 - IMAGE_BASE] ; 0x1304
    inc al                           ; 0x1308
    call leaf_loc_VSLO               ; 0x130a
    mov bx, cseg_1a3a - IMAGE_BASE   ; 0x130d
    mov al, byte [cs:cseg_0d3f - IMAGE_BASE] ; 0x1310
    shl al, 1                        ; 0x1314
    xor ah, ah                       ; 0x1316
    mov cl, byte [cs:cseg_0aa8 - IMAGE_BASE] ; 0x1318
    mul cl                           ; 0x131d
    mov al, ah                       ; 0x131f
    cs xlatb                         ; 0x1321
    mov dl, al                       ; 0x1323
    xor bh, bh                       ; 0x1325
    mov bl, byte [cs:cseg_0d40 - IMAGE_BASE] ; 0x1327
    inc bl                           ; 0x132c
    mov al, 1                        ; 0x132e
    and al, byte [cs:bx + cseg_14e9 - IMAGE_BASE] ; 0x1330
    je short @..loc_QKNN.l1          ; 0x1335
    mov al, dl                       ; 0x1337
    call loc_QVOP                    ; 0x1339
@..loc_QKNN.l1:
    mov al, dh                       ; 0x133c
    call loc_QVOP                    ; 0x133e
    pop dx                           ; 0x1341
    pop cx                           ; 0x1342
    ret                              ; 0x1343
loc_QVOP:
    push dx                          ; 0x1344
    mov dx, ax                       ; 0x1345
    mov al, byte [cs:cseg_0aa8 - IMAGE_BASE] ; 0x1347
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
