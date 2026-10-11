app_file_14ca: ; Aztec csav frame=0x000c
    mov ax, 0xfff4                   ; 0x14ca
    call aztec_csav                  ; 0x14cd
    mov word [bp - 0x0004], 0xffff   ; 0x14d0
    mov word [bp - 0x0002], 0        ; 0x14d5
@..app_file_14ca.l1:
    mov ax, word [bp - 0x0002]       ; 0x14da
    shl ax, 1                        ; 0x14dd
    mov bx, ax                       ; 0x14df
    cmp word [bx + 0x5b72], byte 0xff ; 0x14e1
    jne short @..app_file_14ca.l2    ; 0x14e6
    mov ax, word [bp - 0x0002]       ; 0x14e8
    mov word [bp - 0x0004], ax       ; 0x14eb
@..app_file_14ca.l2:
    inc word [bp - 0x0002]           ; 0x14ee
    mov ax, word [bp - 0x0002]       ; 0x14f1
    cmp ax, strict word 5            ; 0x14f4
    jl short @..app_file_14ca.l1     ; 0x14f7
    cmp word [bp - 0x0004], byte 0xff ; 0x14f9
    jne short @..app_file_14ca.l3    ; 0x14fd
    mov ax, 0x16                     ; 0x14ff
    push ax                          ; 0x1502
    call app_03b8                    ; 0x1503
    pop cx                           ; 0x1506
@..app_file_14ca.l3:
    mov ax, word [bp - 0x0004]       ; 0x1507
    shl ax, 1                        ; 0x150a
    mov bx, ax                       ; 0x150c
    mov word [bx + 0x5b72], 3        ; 0x150e
    mov ax, 0x14                     ; 0x1514
    imul word [bp - 0x0004]          ; 0x1517
    mov bx, ax                       ; 0x151a
    mov byte [bx + 0x5b7c], 0        ; 0x151c
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
    cmp byte [bss_5962], 1           ; 0x153f
    jne short @..app_file_14ca.l6    ; 0x1544
    mov ax, 0                        ; 0x1546
    push ax                          ; 0x1549
    mov ax, 1                        ; 0x154a
    push ax                          ; 0x154d
    call loc_3b62                    ; 0x154e
    add sp, byte 4                   ; 0x1551
    mov cx, ax                       ; 0x1554
    mov bx, dx                       ; 0x1556
    mov ax, word [bp - 0x000a]       ; 0x1558
    mov dx, word [bp - 0x0008]       ; 0x155b
    cmp bx, dx                       ; 0x155e
    jl short @..app_file_14ca.l4     ; 0x1560
    jne short @..app_file_14ca.l5    ; 0x1562
    cmp cx, ax                       ; 0x1564
    ja short @..app_file_14ca.l5     ; 0x1566
@..app_file_14ca.l4:
    jmp short @..app_file_14ca.l6    ; 0x1568
@..app_file_14ca.l5:
    mov ax, word [bp - 0x0004]       ; 0x156a
    shl ax, 1                        ; 0x156d
    mov bx, ax                       ; 0x156f
    mov word [bx + 0x5b72], 1        ; 0x1571
    jmp near @..app_file_14ca.l12    ; 0x1577
@..app_file_14ca.l6:
    mov ax, 0                        ; 0x157a
    push ax                          ; 0x157d
    mov ax, 2                        ; 0x157e
    push ax                          ; 0x1581
    call loc_3b62                    ; 0x1582
    add sp, byte 4                   ; 0x1585
    cmp dx, word [bp - 0x0008]       ; 0x1588
    jl short @..app_file_14ca.l7     ; 0x158b
    jne short @..app_file_14ca.l8    ; 0x158d
    cmp ax, word [bp - 0x000a]       ; 0x158f
    ja short @..app_file_14ca.l8     ; 0x1592
@..app_file_14ca.l7:
    jmp short @..app_file_14ca.l9    ; 0x1594
@..app_file_14ca.l8:
    mov ax, word [bp - 0x0004]       ; 0x1596
    shl ax, 1                        ; 0x1599
    mov bx, ax                       ; 0x159b
    mov word [bx + 0x5b72], 2        ; 0x159d
    jmp short @..app_file_14ca.l12   ; 0x15a3
@..app_file_14ca.l9:
    cmp byte [bss_5963], 1           ; 0x15a5
    jne short @..app_file_14ca.l12   ; 0x15aa
    mov al, byte [bss_5964]          ; 0x15ac
    sub ah, ah                       ; 0x15af
    add ax, strict word 0xffc0       ; 0x15b1
    mov word [bp - 0x0006], ax       ; 0x15b4
    cmp ax, strict word 1            ; 0x15b7
    jl short @..app_file_14ca.l12    ; 0x15ba
    cmp ax, strict word 0x1a         ; 0x15bc
    jg short @..app_file_14ca.l12    ; 0x15bf
    push ax                          ; 0x15c1
    mov ax, 3                        ; 0x15c2
    push ax                          ; 0x15c5
    call loc_3b62                    ; 0x15c6
    add sp, byte 4                   ; 0x15c9
    cmp dx, word [bp - 0x0008]       ; 0x15cc
    jl short @..app_file_14ca.l10    ; 0x15cf
    jne short @..app_file_14ca.l11   ; 0x15d1
    cmp ax, word [bp - 0x000a]       ; 0x15d3
    ja short @..app_file_14ca.l11    ; 0x15d6
@..app_file_14ca.l10:
    jmp short @..app_file_14ca.l12   ; 0x15d8
@..app_file_14ca.l11:
    mov ax, word [bp - 0x0004]       ; 0x15da
    shl ax, 1                        ; 0x15dd
    mov bx, ax                       ; 0x15df
    mov word [bx + 0x5b72], 3        ; 0x15e1
    mov ax, word [bp - 0x0006]       ; 0x15e7
    add ax, strict word 0x40         ; 0x15ea
    push ax                          ; 0x15ed
    mov ax, 0x14                     ; 0x15ee
    imul word [bp - 0x0004]          ; 0x15f1
    mov bx, ax                       ; 0x15f4
    pop ax                           ; 0x15f6
    mov byte [bx + 0x5b7c], al       ; 0x15f7
    mov byte [bx + 0x5b7d], 0x3a     ; 0x15fb
    mov byte [bx + 0x5b7e], 0x5c     ; 0x1600
    mov byte [bx + 0x5b7f], 0        ; 0x1605
@..app_file_14ca.l12:
    push word [bp + 0xc]             ; 0x160a
    mov ax, 0x14                     ; 0x160d
    imul word [bp - 0x0004]          ; 0x1610
    add ax, 0x5b7c                   ; 0x1613
    push ax                          ; 0x1616
    call string_loc_4574             ; 0x1617
    add sp, byte 4                   ; 0x161a
    mov ax, word [bp - 0x0004]       ; 0x161d
    shl ax, 1                        ; 0x1620
    mov bx, ax                       ; 0x1622
    cmp word [bx + 0x5b72], byte 3   ; 0x1624
    jne short @..app_file_14ca.l14   ; 0x1629
    mov ax, 0x301                    ; 0x162b
    push ax                          ; 0x162e
    mov ax, 0x14                     ; 0x162f
    imul word [bp - 0x0004]          ; 0x1632
    add ax, 0x5b7c                   ; 0x1635
    push ax                          ; 0x1638
    call aztec_open                  ; 0x1639
    add sp, byte 4                   ; 0x163c
    mov word [bp - 0x000c], ax       ; 0x163f
    cmp ax, strict word 0xffff       ; 0x1642
    jne short @..app_file_14ca.l13   ; 0x1645
    mov ax, 0x17                     ; 0x1647
    push ax                          ; 0x164a
    call app_03b8                    ; 0x164b
    pop cx                           ; 0x164e
@..app_file_14ca.l13:
    jmp short @..app_file_14ca.l15   ; 0x164f
@..app_file_14ca.l14:
    mov word [bp - 0x000c], 0        ; 0x1651
@..app_file_14ca.l15:
    push word [bp - 0x000c]          ; 0x1656
    mov ax, word [bp - 0x0004]       ; 0x1659
    shl ax, 1                        ; 0x165c
    mov bx, ax                       ; 0x165e
    push word [bx + 0x5b72]          ; 0x1660
    push word [bp + 0xa]             ; 0x1664
    push word [bp + 0x8]             ; 0x1667
    push word [bp + 0x6]             ; 0x166a
    push word [bp + 0x4]             ; 0x166d
    call loc_3b7c                    ; 0x1670
    add sp, byte 0x0c                ; 0x1673
    mov cx, word [bp - 0x0004]       ; 0x1676
    shl cx, 1                        ; 0x1679
    shl cx, 1                        ; 0x167b
    mov bx, cx                       ; 0x167d
    mov word [bx + 0x5be2], dx       ; 0x167f
    mov word [bx + 0x5be0], ax       ; 0x1683
    mov ax, word [bp - 0x0004]       ; 0x1687
    shl ax, 1                        ; 0x168a
    mov bx, ax                       ; 0x168c
    cmp word [bx + 0x5b72], byte 3   ; 0x168e
    jne short @..app_file_14ca.l16   ; 0x1693
    push word [bp - 0x000c]          ; 0x1695
    call aztec_close                 ; 0x1698
    pop cx                           ; 0x169b
@..app_file_14ca.l16:
    mov ax, word [bp - 0x0004]       ; 0x169c
    ret                              ; 0x169f
