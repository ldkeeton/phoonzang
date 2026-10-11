api_idx_005e:
    mov ax, 0xffa2                   ; 0x13ed
    call ds_dispatch_f40b            ; 0x13f0
    mov word [bp - 0x000e], 0        ; 0x13f3
    mov word [bp - 0x0004], 0        ; 0x13f8
@..api_idx_005e.l1:
    mov word [bp - 0x0006], 0        ; 0x13fd
@..api_idx_005e.l2:
    mov ax, 6                        ; 0x1402
    imul word [bp - 0x0004]          ; 0x1405
    mov cx, word [bp - 0x0006]       ; 0x1408
    shl cx, 1                        ; 0x140b
    add ax, cx                       ; 0x140d
    mov bx, ax                       ; 0x140f
    cmp word [bx - 0x7bc6], byte 0   ; 0x1411
    je short @..api_idx_005e.l3      ; 0x1416
    mov word [bp - 0x000e], 1        ; 0x1418
@..api_idx_005e.l3:
    inc word [bp - 0x0006]           ; 0x141d
    mov ax, word [bp - 0x0006]       ; 0x1420
    cmp ax, strict word 3            ; 0x1423
    jl short @..api_idx_005e.l2      ; 0x1426
    inc word [bp - 0x0004]           ; 0x1428
    mov ax, word [bp - 0x0004]       ; 0x142b
    cmp ax, strict word 3            ; 0x142e
    jl short @..api_idx_005e.l1      ; 0x1431
    cmp word [bp - 0x000e], byte 0   ; 0x1433
    jne short @..api_idx_005e.l5     ; 0x1437
    cmp word [bp + 0x6], byte 0      ; 0x1439
    je short @..api_idx_005e.l4      ; 0x143d
    mov ax, 0xc6                     ; 0x143f
    push ax                          ; 0x1442
    mov ax, 0x109                    ; 0x1443
    push ax                          ; 0x1446
    mov ax, 0x92                     ; 0x1447
    push ax                          ; 0x144a
    mov ax, 0x37                     ; 0x144b
    push ax                          ; 0x144e
    call ds_dispatch_e8da            ; 0x144f
    add sp, byte 8                   ; 0x1452
@..api_idx_005e.l4:
    call loc_109f                    ; 0x1455
    ret                              ; 0x1458
@..api_idx_005e.l5:
    cmp word [bp + 0x6], byte 0      ; 0x1459
    je short @..api_idx_005e.l6      ; 0x145d
    lea ax, word [bp - 0x005e]       ; 0x145f
    push ax                          ; 0x1462
    mov ax, 0x7e9                    ; 0x1463
    push ax                          ; 0x1466
    call ds_dispatch_b53b            ; 0x1467
    add sp, byte 4                   ; 0x146a
    mov ax, 0                        ; 0x146d
    push ax                          ; 0x1470
    lea ax, word [bp - 0x005e]       ; 0x1471
    push ax                          ; 0x1474
    call api_idx_0004_6              ; 0x1475
    add sp, byte 4                   ; 0x1478
@..api_idx_005e.l6:
    mov ax, 1                        ; 0x147b
    cmp word [bss_9136], byte 0      ; 0x147e
    je short @..api_idx_005e.l7      ; 0x1483
    mov ax, 0                        ; 0x1485
    cmp byte [bss_91c3], 0x18        ; 0x1488
    je short @..api_idx_005e.l7      ; 0x148d
    mov ax, 2                        ; 0x148f
    push ax                          ; 0x1492
    call ds_dispatch_b7a9            ; 0x1493
    pop cx                           ; 0x1496
@..api_idx_005e.l7:
    mov word [bp - 0x000a], ax       ; 0x1497
    les bx, word [dseg_0002]         ; 0x149a
    mov ax, word [es:bx]             ; 0x149e
    mov dx, word [es:bx + 0x2]       ; 0x14a1
    mov word [bss_908c], dx          ; 0x14a5
    mov word [bss_908a], ax          ; 0x14a9
    mov word [bp - 0x000c], 0        ; 0x14ac
    mov word [bp - 0x0002], 0        ; 0x14b1
@..api_idx_005e.l8:
    cmp word [bp + 0x6], byte 0      ; 0x14b6
    je short @..api_idx_005e.l9      ; 0x14ba
    cmp word [bp - 0x0002], byte 1   ; 0x14bc
    jne short @..api_idx_005e.l9     ; 0x14c0
    cmp word [bss_93da], byte 0      ; 0x14c2
    jle short @..api_idx_005e.l9     ; 0x14c7
    push word [bss_93da]             ; 0x14c9
    call ds_dispatch_b7e0            ; 0x14cd
    pop cx                           ; 0x14d0
@..api_idx_005e.l9:
    mov word [bss_845e], 0xfffe      ; 0x14d1
    call api_idx_0006_2              ; 0x14d7
    mov word [bp - 0x0004], 0        ; 0x14da
@..api_idx_005e.l10:
    mov word [bp - 0x0006], 0        ; 0x14df
@..api_idx_005e.l11:
    mov ax, word [bp - 0x0006]       ; 0x14e4
    mov cx, 2                        ; 0x14e7
    cwd                              ; 0x14ea
    idiv cx                          ; 0x14eb
    mov ax, dx                       ; 0x14ed
    cmp ax, strict word 1            ; 0x14ef
    je short @..api_idx_005e.l12     ; 0x14f2
    cmp word [bp - 0x0006], byte 0   ; 0x14f4
    jne short @..api_idx_005e.l13    ; 0x14f8
@..api_idx_005e.l12:
    mov ax, word [bp + 0x4]          ; 0x14fa
    shl ax, 1                        ; 0x14fd
    shl ax, 1                        ; 0x14ff
    shl ax, 1                        ; 0x1501
    mov cx, word [bp - 0x0002]       ; 0x1503
    shl cx, 1                        ; 0x1506
    add ax, cx                       ; 0x1508
    mov bx, ax                       ; 0x150a
    mov cx, word [bx + 0x5fe]        ; 0x150c
    mov ax, 0                        ; 0x1510
    sub ax, cx                       ; 0x1513
    jmp short @..api_idx_005e.l14    ; 0x1515
@..api_idx_005e.l13:
    mov ax, word [bp + 0x4]          ; 0x1517
    shl ax, 1                        ; 0x151a
    shl ax, 1                        ; 0x151c
    shl ax, 1                        ; 0x151e
    mov cx, word [bp - 0x0002]       ; 0x1520
    shl cx, 1                        ; 0x1523
    add ax, cx                       ; 0x1525
    mov bx, ax                       ; 0x1527
    mov ax, word [bx + 0x5fe]        ; 0x1529
@..api_idx_005e.l14:
    mov word [bp - 0x0008], ax       ; 0x152d
    cmp word [bp - 0x0004], byte 0   ; 0x1530
    jne short @..api_idx_005e.l17    ; 0x1534
    cmp word [bp - 0x0006], byte 0   ; 0x1536
    jne short @..api_idx_005e.l17    ; 0x153a
    cmp word [bp - 0x000a], byte 0   ; 0x153c
    jne short @..api_idx_005e.l15    ; 0x1540
    mov ax, word [bp + 0x4]          ; 0x1542
    shl ax, 1                        ; 0x1545
    shl ax, 1                        ; 0x1547
    shl ax, 1                        ; 0x1549
    mov cx, word [bp - 0x0002]       ; 0x154b
    shl cx, 1                        ; 0x154e
    add ax, cx                       ; 0x1550
    mov bx, ax                       ; 0x1552
    mov cx, word [bx + 0x5fe]        ; 0x1554
    mov ax, 0                        ; 0x1558
    sub ax, cx                       ; 0x155b
    jmp short @..api_idx_005e.l16    ; 0x155d
@..api_idx_005e.l15:
    mov ax, word [bp + 0x4]          ; 0x155f
    shl ax, 1                        ; 0x1562
    shl ax, 1                        ; 0x1564
    shl ax, 1                        ; 0x1566
    mov cx, word [bp - 0x0002]       ; 0x1568
    shl cx, 1                        ; 0x156b
    add ax, cx                       ; 0x156d
    mov bx, ax                       ; 0x156f
    mov ax, word [bx + 0x5fe]        ; 0x1571
@..api_idx_005e.l16:
    mov word [bp - 0x0008], ax       ; 0x1575
@..api_idx_005e.l17:
    push word [bp - 0x000c]          ; 0x1578
    mov ax, 0xf8                     ; 0x157b
    push ax                          ; 0x157e
    mov ax, 0x48                     ; 0x157f
    push ax                          ; 0x1582
    mov ax, 6                        ; 0x1583
    imul word [bp - 0x0004]          ; 0x1586
    mov cx, word [bp - 0x0006]       ; 0x1589
    shl cx, 1                        ; 0x158c
    add ax, cx                       ; 0x158e
    mov bx, ax                       ; 0x1590
    mov cx, word [bx + 0x5c8]        ; 0x1592
    mov ax, 0x64                     ; 0x1596
    sub ax, cx                       ; 0x1599
    push ax                          ; 0x159b
    mov ax, 0                        ; 0x159c
    cmp word [bx - 0x6c24], byte 1   ; 0x159f
    jne short @..api_idx_005e.l18    ; 0x15a4
    mov ax, word [bp - 0x0008]       ; 0x15a6
@..api_idx_005e.l18:
    push ax                          ; 0x15a9
    push word [bp - 0x0006]          ; 0x15aa
    push word [bp - 0x0004]          ; 0x15ad
    call api_idx_0018                ; 0x15b0
    add sp, byte 0x0e                ; 0x15b3
    inc word [bp - 0x0006]           ; 0x15b6
    mov ax, word [bp - 0x0006]       ; 0x15b9
    cmp ax, strict word 3            ; 0x15bc
    jge short @..api_idx_005e.l19    ; 0x15bf
    jmp near @..api_idx_005e.l11     ; 0x15c1
@..api_idx_005e.l19:
    inc word [bp - 0x0004]           ; 0x15c4
    mov ax, word [bp - 0x0004]       ; 0x15c7
    cmp ax, strict word 3            ; 0x15ca
    jge short @..api_idx_005e.l20    ; 0x15cd
    jmp near @..api_idx_005e.l10     ; 0x15cf
@..api_idx_005e.l20:
    call api_idx_000e                ; 0x15d2
    call ds_dispatch_da22            ; 0x15d5
    mov word [bss_845e], 0           ; 0x15d8
@..api_idx_005e.l21:
    call api_idx_0006_2              ; 0x15de
    cmp word [bss_845e], byte 0xfe   ; 0x15e1
    jne short @..api_idx_005e.l21    ; 0x15e6
    call loc_0ef1                    ; 0x15e8
    mov word [bp - 0x000c], ax       ; 0x15eb
    cmp word [bp - 0x000c], byte 0   ; 0x15ee
    je short @..api_idx_005e.l22     ; 0x15f2
    mov ax, word [bss_906c]          ; 0x15f4
    inc ax                           ; 0x15f7
    mov cx, 2                        ; 0x15f8
    cwd                              ; 0x15fb
    idiv cx                          ; 0x15fc
    mov word [bss_906c], dx          ; 0x15fe
    mov ax, word [bss_82e8]          ; 0x1602
    inc ax                           ; 0x1605
    cwd                              ; 0x1606
    idiv cx                          ; 0x1607
    mov word [bss_82e8], dx          ; 0x1609
@..api_idx_005e.l22:
    cmp word [bp - 0x000c], byte 0   ; 0x160d
    jne short @..api_idx_005e.l23    ; 0x1611
    jmp near @..api_idx_005e.l9      ; 0x1613
@..api_idx_005e.l23:
    inc word [bp - 0x0002]           ; 0x1616
    mov ax, word [bp - 0x0002]       ; 0x1619
    cmp ax, strict word 4            ; 0x161c
    jge short @..api_idx_005e.l24    ; 0x161f
    jmp near @..api_idx_005e.l8      ; 0x1621
@..api_idx_005e.l24:
    mov word [bp - 0x0004], 0        ; 0x1624
@..api_idx_005e.l25:
    mov word [bp - 0x0006], 0        ; 0x1629
@..api_idx_005e.l26:
    mov ax, 6                        ; 0x162e
    imul word [bp - 0x0004]          ; 0x1631
    mov cx, word [bp - 0x0006]       ; 0x1634
    shl cx, 1                        ; 0x1637
    add ax, cx                       ; 0x1639
    mov bx, ax                       ; 0x163b
    mov word [bx - 0x6c24], 0        ; 0x163d
    inc word [bp - 0x0006]           ; 0x1643
    mov ax, word [bp - 0x0006]       ; 0x1646
    cmp ax, strict word 3            ; 0x1649
    jl short @..api_idx_005e.l26     ; 0x164c
    inc word [bp - 0x0004]           ; 0x164e
    mov ax, word [bp - 0x0004]       ; 0x1651
    cmp ax, strict word 3            ; 0x1654
    jl short @..api_idx_005e.l25     ; 0x1657
    cmp word [bp + 0x6], byte 0      ; 0x1659
    je short @..api_idx_005e.l27     ; 0x165d
    mov ax, 0xc6                     ; 0x165f
    push ax                          ; 0x1662
    mov ax, 0x109                    ; 0x1663
    push ax                          ; 0x1666
    mov ax, 0x92                     ; 0x1667
    push ax                          ; 0x166a
    mov ax, 0x37                     ; 0x166b
    push ax                          ; 0x166e
    call ds_dispatch_e8da            ; 0x166f
    add sp, byte 8                   ; 0x1672
@..api_idx_005e.l27:
    ret                              ; 0x1675
