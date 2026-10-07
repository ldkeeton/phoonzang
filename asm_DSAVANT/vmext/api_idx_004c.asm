api_idx_004c:
    mov ax, 0xffb4                   ; 0x1356
    call ds_dispatch_f40b            ; 0x1359
    mov ax, 0                        ; 0x135c
    push ax                          ; 0x135f
    push word [bp + 0x6]             ; 0x1360
    lea ax, word [bp - 0x004c]       ; 0x1363
    push ax                          ; 0x1366
    mov ax, 1                        ; 0x1367
    push ax                          ; 0x136a
    call ds_dispatch_b63c            ; 0x136b
    add sp, byte 8                   ; 0x136e
    cmp word [bp + 0xa], byte 0xfe   ; 0x1371
    jne short @..api_idx_004c.l1     ; 0x1375
    mov al, byte [bp - 0x0030]       ; 0x1377
    sub ah, ah                       ; 0x137a
    push ax                          ; 0x137c
    mov al, byte [bp - 0x002f]       ; 0x137d
    sub ah, ah                       ; 0x1380
    mov cx, ax                       ; 0x1382
    pop ax                           ; 0x1384
    imul cx                          ; 0x1385
    add ax, word [bp - 0x0032]       ; 0x1387
    mov bx, word [bp + 0x8]          ; 0x138a
    mov byte [bx + 0x6], al          ; 0x138d
    jmp short @..api_idx_004c.l3     ; 0x1390
@..api_idx_004c.l1:
    cmp word [bp + 0xa], byte 0xff   ; 0x1392
    jne short @..api_idx_004c.l2     ; 0x1396
    push word [bp - 0x0030]          ; 0x1398
    push word [bp - 0x0032]          ; 0x139b
    call ds_dispatch_d0be            ; 0x139e
    add sp, byte 4                   ; 0x13a1
    mov bx, word [bp + 0x8]          ; 0x13a4
    mov byte [bx + 0x6], al          ; 0x13a7
    jmp short @..api_idx_004c.l3     ; 0x13aa
@..api_idx_004c.l2:
    mov al, byte [bp + 0xa]          ; 0x13ac
    mov bx, word [bp + 0x8]          ; 0x13af
    mov byte [bx + 0x6], al          ; 0x13b2
@..api_idx_004c.l3:
    mov ax, word [bp + 0x6]          ; 0x13b5
    mov bx, word [bp + 0x8]          ; 0x13b8
    mov word [bx], ax                ; 0x13bb
    mov al, byte [bp - 0x0014]       ; 0x13bd
    mov bx, word [bp + 0x8]          ; 0x13c0
    mov byte [bx + 0x4], al          ; 0x13c3
    mov al, byte [bp - 0x0013]       ; 0x13c6
    mov bx, word [bp + 0x8]          ; 0x13c9
    mov byte [bx + 0x5], al          ; 0x13cc
    mov ax, word [bp - 0x0028]       ; 0x13cf
    mov bx, word [bp + 0x8]          ; 0x13d2
    mov word [bx + 0x2], ax          ; 0x13d5
    mov al, byte [bp - 0x0024]       ; 0x13d8
    mov bx, word [bp + 0x8]          ; 0x13db
    mov byte [bx + 0x8], al          ; 0x13de
    mov al, byte [bp - 0x0023]       ; 0x13e1
    mov bx, word [bp + 0x8]          ; 0x13e4
    mov byte [bx + 0x9], al          ; 0x13e7
    mov al, byte [bp - 0x0010]       ; 0x13ea
    mov bx, word [bp + 0x8]          ; 0x13ed
    mov byte [bx + 0xa], al          ; 0x13f0
    mov al, byte [bp - 0x000c]       ; 0x13f3
    mov bx, word [bp + 0x8]          ; 0x13f6
    mov byte [bx + 0xb], al          ; 0x13f9
    mov ax, 0                        ; 0x13fc
    cmp word [bp + 0xc], byte 0      ; 0x13ff
    je short @..api_idx_004c.l4      ; 0x1403
    mov ax, 0x80                     ; 0x1405
@..api_idx_004c.l4:
    mov bx, word [bp + 0x8]          ; 0x1408
    mov byte [bx + 0x7], al          ; 0x140b
    mov al, byte [bp - 0x0015]       ; 0x140e
    sub ah, ah                       ; 0x1411
    test ax, 8                       ; 0x1413
    je short @..api_idx_004c.l5      ; 0x1416
    mov bx, word [bp + 0x8]          ; 0x1418
    or byte [bx + 0x7], 4            ; 0x141b
@..api_idx_004c.l5:
    mov al, byte [bp - 0x0015]       ; 0x141f
    sub ah, ah                       ; 0x1422
    test ax, 4                       ; 0x1424
    je short @..api_idx_004c.l6      ; 0x1427
    mov bx, word [bp + 0x8]          ; 0x1429
    or byte [bx + 0x7], 8            ; 0x142c
@..api_idx_004c.l6:
    mov al, byte [bp - 0x0015]       ; 0x1430
    sub ah, ah                       ; 0x1433
    test ax, 0x10                    ; 0x1435
    je short @..api_idx_004c.l7      ; 0x1438
    mov bx, word [bp + 0x8]          ; 0x143a
    or byte [bx + 0x7], 0x10         ; 0x143d
@..api_idx_004c.l7:
    mov al, byte [bp - 0x0015]       ; 0x1441
    sub ah, ah                       ; 0x1444
    test ax, 0x20                    ; 0x1446
    je short @..api_idx_004c.l8      ; 0x1449
    mov bx, word [bp + 0x8]          ; 0x144b
    or byte [bx + 0x7], 0x20         ; 0x144e
@..api_idx_004c.l8:
    mov al, byte [bp - 0x0015]       ; 0x1452
    sub ah, ah                       ; 0x1455
    test ax, 2                       ; 0x1457
    je short @..api_idx_004c.l9      ; 0x145a
    mov bx, word [bp + 0x8]          ; 0x145c
    or byte [bx + 0x7], 0x40         ; 0x145f
@..api_idx_004c.l9:
    push word [bp + 0x4]             ; 0x1463
    call ds_dispatch_c58f            ; 0x1466
    pop cx                           ; 0x1469
    ret                              ; 0x146a
