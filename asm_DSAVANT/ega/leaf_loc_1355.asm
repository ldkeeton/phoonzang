leaf_loc_1355:
    push ax                          ; 0x1355
    mov bx, 0x29b                    ; 0x1356
    mov cx, 0x14                     ; 0x1359
@..leaf_loc_1355.l1:
    cmp ax, word [cs:bx]             ; 0x135c
    jae short @..leaf_loc_1355.l2    ; 0x135f
    dec word [cs:bx]                 ; 0x1361
@..leaf_loc_1355.l2:
    inc bx                           ; 0x1364
    inc bx                           ; 0x1365
    loop @..leaf_loc_1355.l1         ; 0x1366
    mov bx, 0x2c3                    ; 0x1368
    mov cx, 0xa                      ; 0x136b
@..leaf_loc_1355.l3:
    cmp ax, word [cs:bx]             ; 0x136e
    jae short @..leaf_loc_1355.l4    ; 0x1371
    dec word [cs:bx]                 ; 0x1373
@..leaf_loc_1355.l4:
    inc bx                           ; 0x1376
    inc bx                           ; 0x1377
    loop @..leaf_loc_1355.l3         ; 0x1378
    mov bx, 0x2d7                    ; 0x137a
    mov cx, 0xa                      ; 0x137d
@..leaf_loc_1355.l5:
    cmp ax, word [cs:bx]             ; 0x1380
    jae short @..leaf_loc_1355.l6    ; 0x1383
    dec word [cs:bx]                 ; 0x1385
@..leaf_loc_1355.l6:
    inc bx                           ; 0x1388
    inc bx                           ; 0x1389
    loop @..leaf_loc_1355.l5         ; 0x138a
    pop ax                           ; 0x138c
    ret                              ; 0x138d
