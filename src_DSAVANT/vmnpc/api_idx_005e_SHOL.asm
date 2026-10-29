; auto-generated
api_idx_005e_SHOL:
    mov ax, 0xffa2                   ; 0x13ed
    call aztec_csav                  ; 0x13f0
    mov word [bp - 0xe], 0           ; 0x13f3
    mov word [bp - 4], 0             ; 0x13f8
.back1:
    mov word [bp - 6], 0             ; 0x13fd
.back2:
    mov ax, 6                        ; 0x1402
    imul word [bp - 4]               ; 0x1405
    mov cx, word [bp - 6]            ; 0x1408
    shl cx, 1                        ; 0x140b
    add ax, cx                       ; 0x140d
    mov bx, ax                       ; 0x140f
    cmp word [bx + cell_slot_ref], byte 0 ; 0x1411
    je short .forward1               ; 0x1416
    mov word [bp - 0xe], 1           ; 0x1418
.forward1:
    inc word [bp - 6]                ; 0x141d
    mov ax, word [bp - 6]            ; 0x1420
    cmp ax, strict word 3            ; 0x1423
    jl short .back2                  ; 0x1426
    inc word [bp - 4]                ; 0x1428
    mov ax, word [bp - 4]            ; 0x142b
    cmp ax, strict word 3            ; 0x142e
    jl short .back1                  ; 0x1431
    cmp word [bp - 0xe], byte 0      ; 0x1433
    jne short .forward3              ; 0x1437
    cmp word [bp + 6], byte 0        ; 0x1439
    je short .forward2               ; 0x143d
    mov ax, 0xc6                     ; 0x143f
    push ax                          ; 0x1442
    mov ax, 0x109                    ; 0x1443
    push ax                          ; 0x1446
    mov ax, 0x92                     ; 0x1447
    push ax                          ; 0x144a
    mov ax, 0x37                     ; 0x144b
    push ax                          ; 0x144e
    call call_show_area              ; 0x144f
    add sp, byte 8                   ; 0x1452
.forward2:
    call run_party_screen_animation  ; 0x1455
    ret                              ; 0x1458
.forward3:
    cmp word [bp + 6], byte 0        ; 0x1459
    je short .forward4               ; 0x145d
    lea ax, word [bp - 0x5e]         ; 0x145f
    push ax                          ; 0x1462
    mov ax, MSG_AN_ENCOUNTER         ; 0x1463
    push ax                          ; 0x1466
    call load_message_string         ; 0x1467
    add sp, byte 4                   ; 0x146a
    mov ax, 0                        ; 0x146d
    push ax                          ; 0x1470
    lea ax, word [bp - 0x5e]         ; 0x1471
    push ax                          ; 0x1474
    call api_idx_0004_THQU           ; 0x1475
    add sp, byte 4                   ; 0x1478
.forward4:
    mov ax, 1                        ; 0x147b
    cmp word [bss_9136], byte 0      ; 0x147e
    je short .forward5               ; 0x1483
    mov ax, 0                        ; 0x1485
    cmp byte [bss_91c3], 0x18        ; 0x1488
    je short .forward5               ; 0x148d
    mov ax, 2                        ; 0x148f
    push ax                          ; 0x1492
    call random_below                ; 0x1493
    pop cx                           ; 0x1496
.forward5:
    mov word [bp - 0xa], ax          ; 0x1497
    les bx, word [tick_counter_ptr]  ; 0x149a
    mov ax, word [es:bx]             ; 0x149e
    mov dx, word [es:bx + 2]         ; 0x14a1
    mov word [party_redraw_last_tick_hi], dx ; 0x14a5
    mov word [party_redraw_last_tick], ax ; 0x14a9
    mov word [bp - 0xc], 0           ; 0x14ac
    mov word [bp - 2], 0             ; 0x14b1
.back3:
    cmp word [bp + 6], byte 0        ; 0x14b6
    je short .back4                  ; 0x14ba
    cmp word [bp - 2], byte 1        ; 0x14bc
    jne short .back4                 ; 0x14c0
    cmp word [bss_93da], byte 0      ; 0x14c2
    jle short .back4                 ; 0x14c7
    push word [bss_93da]             ; 0x14c9
    call play_sound_effect           ; 0x14cd
    pop cx                           ; 0x14d0
.back4:
    mov word [bss_845e], 0xfffe      ; 0x14d1
    call step_party_animation        ; 0x14d7
    mov word [bp - 4], 0             ; 0x14da
.back5:
    mov word [bp - 6], 0             ; 0x14df
.back6:
    mov ax, word [bp - 6]            ; 0x14e4
    mov cx, 2                        ; 0x14e7
    cwd                              ; 0x14ea
    idiv cx                          ; 0x14eb
    mov ax, dx                       ; 0x14ed
    cmp ax, strict word 1            ; 0x14ef
    je short .forward6               ; 0x14f2
    cmp word [bp - 6], byte 0        ; 0x14f4
    jne short .forward7              ; 0x14f8
.forward6:
    mov ax, word [bp + 4]            ; 0x14fa
    shl ax, 1                        ; 0x14fd
    shl ax, 1                        ; 0x14ff
    shl ax, 1                        ; 0x1501
    mov cx, word [bp - 2]            ; 0x1503
    shl cx, 1                        ; 0x1506
    add ax, cx                       ; 0x1508
    mov bx, ax                       ; 0x150a
    mov cx, word [bx + cell_overlay_code + 0x48] ; 0x150c
    mov ax, 0                        ; 0x1510
    sub ax, cx                       ; 0x1513
    jmp short .forward8              ; 0x1515
.forward7:
    mov ax, word [bp + 4]            ; 0x1517
    shl ax, 1                        ; 0x151a
    shl ax, 1                        ; 0x151c
    shl ax, 1                        ; 0x151e
    mov cx, word [bp - 2]            ; 0x1520
    shl cx, 1                        ; 0x1523
    add ax, cx                       ; 0x1525
    mov bx, ax                       ; 0x1527
    mov ax, word [bx + cell_overlay_code + 0x48] ; 0x1529
.forward8:
    mov word [bp - 8], ax            ; 0x152d
    cmp word [bp - 4], byte 0        ; 0x1530
    jne short .forward11             ; 0x1534
    cmp word [bp - 6], byte 0        ; 0x1536
    jne short .forward11             ; 0x153a
    cmp word [bp - 0xa], byte 0      ; 0x153c
    jne short .forward9              ; 0x1540
    mov ax, word [bp + 4]            ; 0x1542
    shl ax, 1                        ; 0x1545
    shl ax, 1                        ; 0x1547
    shl ax, 1                        ; 0x1549
    mov cx, word [bp - 2]            ; 0x154b
    shl cx, 1                        ; 0x154e
    add ax, cx                       ; 0x1550
    mov bx, ax                       ; 0x1552
    mov cx, word [bx + cell_overlay_code + 0x48] ; 0x1554
    mov ax, 0                        ; 0x1558
    sub ax, cx                       ; 0x155b
    jmp short .forward10             ; 0x155d
.forward9:
    mov ax, word [bp + 4]            ; 0x155f
    shl ax, 1                        ; 0x1562
    shl ax, 1                        ; 0x1564
    shl ax, 1                        ; 0x1566
    mov cx, word [bp - 2]            ; 0x1568
    shl cx, 1                        ; 0x156b
    add ax, cx                       ; 0x156d
    mov bx, ax                       ; 0x156f
    mov ax, word [bx + cell_overlay_code + 0x48] ; 0x1571
.forward10:
    mov word [bp - 8], ax            ; 0x1575
.forward11:
    push word [bp - 0xc]             ; 0x1578
    mov ax, 0xf8                     ; 0x157b
    push ax                          ; 0x157e
    mov ax, 0x48                     ; 0x157f
    push ax                          ; 0x1582
    mov ax, 6                        ; 0x1583
    imul word [bp - 4]               ; 0x1586
    mov cx, word [bp - 6]            ; 0x1589
    shl cx, 1                        ; 0x158c
    add ax, cx                       ; 0x158e
    mov bx, ax                       ; 0x1590
    mov cx, word [bx + cell_overlay_code + 0x12] ; 0x1592
    mov ax, 0x64                     ; 0x1596
    sub ax, cx                       ; 0x1599
    push ax                          ; 0x159b
    mov ax, 0                        ; 0x159c
    cmp word [bx + bss_93dc], byte 1 ; 0x159f
    jne short .forward12             ; 0x15a4
    mov ax, word [bp - 8]            ; 0x15a6
.forward12:
    push ax                          ; 0x15a9
    push word [bp - 6]               ; 0x15aa
    push word [bp - 4]               ; 0x15ad
    call api_idx_0018_TROH           ; 0x15b0
    add sp, byte 0xe                 ; 0x15b3
    inc word [bp - 6]                ; 0x15b6
    mov ax, word [bp - 6]            ; 0x15b9
    cmp ax, strict word 3            ; 0x15bc
    jge short .forward13             ; 0x15bf
    jmp near .back6                  ; 0x15c1
.forward13:
    inc word [bp - 4]                ; 0x15c4
    mov ax, word [bp - 4]            ; 0x15c7
    cmp ax, strict word 3            ; 0x15ca
    jge short .forward14             ; 0x15cd
    jmp near .back5                  ; 0x15cf
.forward14:
    call queue_marker_overlay        ; 0x15d2
    call draw_party_status_glyphs    ; 0x15d5
    mov word [bss_845e], 0           ; 0x15d8
.back7:
    call step_party_animation        ; 0x15de
    cmp word [bss_845e], byte -2     ; 0x15e1
    jne short .back7                 ; 0x15e6
    call loc_KRMP                    ; 0x15e8
    mov word [bp - 0xc], ax          ; 0x15eb
    cmp word [bp - 0xc], byte 0      ; 0x15ee
    je short .forward15              ; 0x15f2
    mov ax, word [screen_cache_index] ; 0x15f4
    inc ax                           ; 0x15f7
    mov cx, 2                        ; 0x15f8
    cwd                              ; 0x15fb
    idiv cx                          ; 0x15fc
    mov word [screen_cache_index], dx ; 0x15fe
    mov ax, word [party_status_frame] ; 0x1602
    inc ax                           ; 0x1605
    cwd                              ; 0x1606
    idiv cx                          ; 0x1607
    mov word [party_status_frame], dx ; 0x1609
.forward15:
    cmp word [bp - 0xc], byte 0      ; 0x160d
    jne short .forward16             ; 0x1611
    jmp near .back4                  ; 0x1613
.forward16:
    inc word [bp - 2]                ; 0x1616
    mov ax, word [bp - 2]            ; 0x1619
    cmp ax, strict word 4            ; 0x161c
    jge short .forward17             ; 0x161f
    jmp near .back3                  ; 0x1621
.forward17:
    mov word [bp - 4], 0             ; 0x1624
.back8:
    mov word [bp - 6], 0             ; 0x1629
.back9:
    mov ax, 6                        ; 0x162e
    imul word [bp - 4]               ; 0x1631
    mov cx, word [bp - 6]            ; 0x1634
    shl cx, 1                        ; 0x1637
    add ax, cx                       ; 0x1639
    mov bx, ax                       ; 0x163b
    mov word [bx + bss_93dc], 0      ; 0x163d
    inc word [bp - 6]                ; 0x1643
    mov ax, word [bp - 6]            ; 0x1646
    cmp ax, strict word 3            ; 0x1649
    jl short .back9                  ; 0x164c
    inc word [bp - 4]                ; 0x164e
    mov ax, word [bp - 4]            ; 0x1651
    cmp ax, strict word 3            ; 0x1654
    jl short .back8                  ; 0x1657
    cmp word [bp + 6], byte 0        ; 0x1659
    je short .return1                ; 0x165d
    mov ax, 0xc6                     ; 0x165f
    push ax                          ; 0x1662
    mov ax, 0x109                    ; 0x1663
    push ax                          ; 0x1666
    mov ax, 0x92                     ; 0x1667
    push ax                          ; 0x166a
    mov ax, 0x37                     ; 0x166b
    push ax                          ; 0x166e
    call call_show_area              ; 0x166f
    add sp, byte 8                   ; 0x1672
.return1:
    ret                              ; 0x1675
