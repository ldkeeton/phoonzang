; auto-generated
save_screen_area: ; Aztec csav frame=0x000c
    mov ax, 0xfff4                   ; 0x14ca
    call aztec_csav                  ; 0x14cd
    mov word [bp - 0x0004], 0xffff   ; 0x14d0
    mov word [bp - 0x0002], 0        ; 0x14d5
@..save_screen_area.l1:
    mov ax, word [bp - 0x0002]       ; 0x14da
    shl ax, 1                        ; 0x14dd
    mov bx, ax                       ; 0x14df
    cmp word [bx + saved_screen_kind], byte 0xff ; 0x14e1
    jne short @..save_screen_area.l2 ; 0x14e6
    mov ax, word [bp - 0x0002]       ; 0x14e8
    mov word [bp - 0x0004], ax       ; 0x14eb
@..save_screen_area.l2:
    inc word [bp - 0x0002]           ; 0x14ee
    mov ax, word [bp - 0x0002]       ; 0x14f1
    cmp ax, strict word 5            ; 0x14f4
    jl short @..save_screen_area.l1  ; 0x14f7
    cmp word [bp - 0x0004], byte 0xff ; 0x14f9
    jne short @..save_screen_area.l3 ; 0x14fd
    mov ax, 0x16                     ; 0x14ff
    push ax                          ; 0x1502
    call release_and_exit            ; 0x1503
    pop cx                           ; 0x1506
@..save_screen_area.l3:
    mov ax, word [bp - 0x0004]       ; 0x1507
    shl ax, 1                        ; 0x150a
    mov bx, ax                       ; 0x150c
    mov word [bx + saved_screen_kind], 3 ; 0x150e
    mov ax, 0x14                     ; 0x1514
    imul word [bp - 0x0004]          ; 0x1517
    mov bx, ax                       ; 0x151a
    mov byte [bx + saved_screen_file], 0 ; 0x151c
    mov ax, word [bp + 0x8]          ; 0x1521
    sub ax, word [bp + 0x4]          ; 0x1524
    inc ax                           ; 0x1527
    mov cx, word [bp + 0xa]          ; 0x1528
    sub cx, word [bp + 0x6]          ; 0x152b
    inc cx                           ; 0x152e
    mov bx, cx                       ; 0x152f
    imul bx                          ; 0x1531
    add ax, 0x80                     ; 0x1533
    adc dx, byte 0                   ; 0x1536
    mov word [bp - 0x0008], dx       ; 0x1539
    mov word [bp - 0x000a], ax       ; 0x153c
    cmp byte [screen_store_1_enabled], 1 ; 0x153f
    jne short @..save_screen_area.l6 ; 0x1544
    mov ax, 0                        ; 0x1546
    push ax                          ; 0x1549
    mov ax, 1                        ; 0x154a
    push ax                          ; 0x154d
    call gfx_get_free_space          ; 0x154e
    add sp, byte 4                   ; 0x1551
    mov cx, ax                       ; 0x1554
    mov bx, dx                       ; 0x1556
    mov ax, word [bp - 0x000a]       ; 0x1558
    mov dx, word [bp - 0x0008]       ; 0x155b
    cmp bx, dx                       ; 0x155e
    jl short @..save_screen_area.l4  ; 0x1560
    jne short @..save_screen_area.l5 ; 0x1562
    cmp cx, ax                       ; 0x1564
    ja short @..save_screen_area.l5  ; 0x1566
@..save_screen_area.l4:
    jmp short @..save_screen_area.l6 ; 0x1568
@..save_screen_area.l5:
    mov ax, word [bp - 0x0004]       ; 0x156a
    shl ax, 1                        ; 0x156d
    mov bx, ax                       ; 0x156f
    mov word [bx + saved_screen_kind], 1 ; 0x1571
    jmp near @..save_screen_area.l12 ; 0x1577
@..save_screen_area.l6:
    mov ax, 0                        ; 0x157a
    push ax                          ; 0x157d
    mov ax, 2                        ; 0x157e
    push ax                          ; 0x1581
    call gfx_get_free_space          ; 0x1582
    add sp, byte 4                   ; 0x1585
    cmp dx, word [bp - 0x0008]       ; 0x1588
    jl short @..save_screen_area.l7  ; 0x158b
    jne short @..save_screen_area.l8 ; 0x158d
    cmp ax, word [bp - 0x000a]       ; 0x158f
    ja short @..save_screen_area.l8  ; 0x1592
@..save_screen_area.l7:
    jmp short @..save_screen_area.l9 ; 0x1594
@..save_screen_area.l8:
    mov ax, word [bp - 0x0004]       ; 0x1596
    shl ax, 1                        ; 0x1599
    mov bx, ax                       ; 0x159b
    mov word [bx + saved_screen_kind], 2 ; 0x159d
    jmp short @..save_screen_area.l12 ; 0x15a3
@..save_screen_area.l9:
    cmp byte [screen_store_disk_enabled], 1 ; 0x15a5
    jne short @..save_screen_area.l12 ; 0x15aa
    mov al, byte [screen_store_drive] ; 0x15ac
    sub ah, ah                       ; 0x15af
    add ax, strict word 0xffc0       ; 0x15b1
    mov word [bp - 0x0006], ax       ; 0x15b4
    cmp ax, strict word 1            ; 0x15b7
    jl short @..save_screen_area.l12 ; 0x15ba
    cmp ax, strict word 0x1a         ; 0x15bc
    jg short @..save_screen_area.l12 ; 0x15bf
    push ax                          ; 0x15c1
    mov ax, 3                        ; 0x15c2
    push ax                          ; 0x15c5
    call gfx_get_free_space          ; 0x15c6
    add sp, byte 4                   ; 0x15c9
    cmp dx, word [bp - 0x0008]       ; 0x15cc
    jl short @..save_screen_area.l10 ; 0x15cf
    jne short @..save_screen_area.l11 ; 0x15d1
    cmp ax, word [bp - 0x000a]       ; 0x15d3
    ja short @..save_screen_area.l11 ; 0x15d6
@..save_screen_area.l10:
    jmp short @..save_screen_area.l12 ; 0x15d8
@..save_screen_area.l11:
    mov ax, word [bp - 0x0004]       ; 0x15da
    shl ax, 1                        ; 0x15dd
    mov bx, ax                       ; 0x15df
    mov word [bx + saved_screen_kind], 3 ; 0x15e1
    mov ax, word [bp - 0x0006]       ; 0x15e7
    add ax, strict word 0x40         ; 0x15ea
    push ax                          ; 0x15ed
    mov ax, 0x14                     ; 0x15ee
    imul word [bp - 0x0004]          ; 0x15f1
    mov bx, ax                       ; 0x15f4
    pop ax                           ; 0x15f6
    mov byte [bx + saved_screen_file], al ; 0x15f7
    mov byte [bx + saved_screen_file + saved_screen_file_rec.f_0001], 0x3a ; 0x15fb
    mov byte [bx + saved_screen_file + saved_screen_file_rec.f_0002], 0x5c ; 0x1600
    mov byte [bx + saved_screen_file + saved_screen_file_rec.f_0003], 0 ; 0x1605
@..save_screen_area.l12:
    push word [bp + 0xc]             ; 0x160a
    mov ax, 0x14                     ; 0x160d
    imul word [bp - 0x0004]          ; 0x1610
    add ax, strict word saved_screen_file ; 0x1613
    push ax                          ; 0x1616
    call aztec_strcat                ; 0x1617
    add sp, byte 4                   ; 0x161a
    mov ax, word [bp - 0x0004]       ; 0x161d
    shl ax, 1                        ; 0x1620
    mov bx, ax                       ; 0x1622
    cmp word [bx + saved_screen_kind], byte 3 ; 0x1624
    jne short @..save_screen_area.l14 ; 0x1629
    mov ax, 0x301                    ; 0x162b
    push ax                          ; 0x162e
    mov ax, 0x14                     ; 0x162f
    imul word [bp - 0x0004]          ; 0x1632
    add ax, strict word saved_screen_file ; 0x1635
    push ax                          ; 0x1638
    call aztec_open                  ; 0x1639
    add sp, byte 4                   ; 0x163c
    mov word [bp - 0x000c], ax       ; 0x163f
    cmp ax, strict word 0xffff       ; 0x1642
    jne short @..save_screen_area.l13 ; 0x1645
    mov ax, 0x17                     ; 0x1647
    push ax                          ; 0x164a
    call release_and_exit            ; 0x164b
    pop cx                           ; 0x164e
@..save_screen_area.l13:
    jmp short @..save_screen_area.l15 ; 0x164f
@..save_screen_area.l14:
    mov word [bp - 0x000c], 0        ; 0x1651
@..save_screen_area.l15:
    push word [bp - 0x000c]          ; 0x1656
    mov ax, word [bp - 0x0004]       ; 0x1659
    shl ax, 1                        ; 0x165c
    mov bx, ax                       ; 0x165e
    push word [bx + saved_screen_kind] ; 0x1660
    push word [bp + 0xa]             ; 0x1664
    push word [bp + 0x8]             ; 0x1667
    push word [bp + 0x6]             ; 0x166a
    push word [bp + 0x4]             ; 0x166d
    call gfx_cache_area              ; 0x1670
    add sp, byte 0x0c                ; 0x1673
    mov cx, word [bp - 0x0004]       ; 0x1676
    shl cx, 1                        ; 0x1679
    shl cx, 1                        ; 0x167b
    mov bx, cx                       ; 0x167d
    mov word [bx + saved_screen_ref + 0x2], dx ; 0x167f
    mov word [bx + saved_screen_ref], ax ; 0x1683
    mov ax, word [bp - 0x0004]       ; 0x1687
    shl ax, 1                        ; 0x168a
    mov bx, ax                       ; 0x168c
    cmp word [bx + saved_screen_kind], byte 3 ; 0x168e
    jne short @..save_screen_area.l16 ; 0x1693
    push word [bp - 0x000c]          ; 0x1695
    call aztec_close                 ; 0x1698
    pop cx                           ; 0x169b
@..save_screen_area.l16:
    mov ax, word [bp - 0x0004]       ; 0x169c
    ret                              ; 0x169f
