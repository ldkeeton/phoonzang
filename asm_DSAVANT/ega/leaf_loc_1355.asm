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
    times 4 db 0
loc_1392:
    dec ax                           ; 0x1392
    mov cl, 2                        ; 0x1393
    shl ax, cl                       ; 0x1395
    mov bx, 0x2eb                    ; 0x1397
    add bx, ax                       ; 0x139a
    mov word [bp - 0x0004], bx       ; 0x139c
    mov ax, word [cs:bx + 0x2]       ; 0x139f
    sub word [cs:data_0391], ax      ; 0x13a3
    mov word [bp - 0x0006], ax       ; 0x13a8
@..local.l35:
    mov bx, word [bp - 0x0004]       ; 0x13ab
    mov di, word [cs:bx]             ; 0x13ae
    mov dx, word [cs:data_0203]      ; 0x13b1
    mov es, dx                       ; 0x13b6
    mov ds, dx                       ; 0x13b8
    mov si, word [cs:bx + 0x4]       ; 0x13ba
    add dx, word [cs:data_01e1]      ; 0x13be
    mov cx, word [cs:bx + 0x6]       ; 0x13c3
    or cx, cx                        ; 0x13c7
    jne short @..local.l36           ; 0x13c9
    jmp near @..local.l42            ; 0x13cb
@..local.l36:
    push cx                          ; 0x13ce
    mov ax, si                       ; 0x13cf
    mov cl, 0xa                      ; 0x13d1
    shr ax, cl                       ; 0x13d3
    mov word [cs:data_148e], ax      ; 0x13d5
    and si, strict word 0x3ff        ; 0x13d9
    mov cl, 4                        ; 0x13dd
    shl si, cl                       ; 0x13df
    mov ax, di                       ; 0x13e1
    mov cl, 0xa                      ; 0x13e3
    shr ax, cl                       ; 0x13e5
    mov word [cs:dos_con_loc_1490], ax ; 0x13e7
    and di, strict word 0x3ff        ; 0x13eb
    mov cl, 4                        ; 0x13ef
    shl di, cl                       ; 0x13f1
    call leaf_loc_145c               ; 0x13f3
    pop cx                           ; 0x13f6
@..local.l37:
    push cx                          ; 0x13f7
    mov cx, 0x10                     ; 0x13f8
    rep movsb                        ; 0x13fb
    xor dx, dx                       ; 0x13fd
    cmp di, strict word 0x4000       ; 0x13ff
    jne short @..local.l38           ; 0x1403
    inc word [cs:dos_con_loc_1490]   ; 0x1405
    inc dx                           ; 0x140a
@..local.l38:
    cmp si, strict word 0x4000       ; 0x140b
    je short @..local.l39            ; 0x140f
    cmp si, strict word 0x8000       ; 0x1411
    jne short @..local.l40           ; 0x1415
@..local.l39:
    inc word [cs:data_148e]          ; 0x1417
    inc dx                           ; 0x141c
@..local.l40:
    or dx, dx                        ; 0x141d
    je short @..local.l41            ; 0x141f
    call leaf_loc_145c               ; 0x1421
@..local.l41:
    pop cx                           ; 0x1424
    loop @..local.l37                ; 0x1425
    mov bx, word [bp - 0x0004]       ; 0x1427
    mov cx, word [bp - 0x0006]       ; 0x142a
    mov ax, word [cs:bx + 0x4]       ; 0x142d
    sub ax, cx                       ; 0x1431
    mov word [cs:bx], ax             ; 0x1433
    add ax, word [cs:bx + 0x6]       ; 0x1436
    mov word [cs:bx + 0x4], ax       ; 0x143a
    mov ax, word [cs:bx + 0x6]       ; 0x143e
    mov word [cs:bx + 0x2], ax       ; 0x1442
    add bx, byte 4                   ; 0x1446
    mov word [bp - 0x0004], bx       ; 0x1449
    jmp near @..local.l35            ; 0x144c
@..local.l42:
    mov bx, word [bp - 0x0004]       ; 0x144f
    xor ax, ax                       ; 0x1452
    mov word [cs:bx], ax             ; 0x1454
    mov word [cs:bx + 0x2], ax       ; 0x1457
    ret                              ; 0x145b
