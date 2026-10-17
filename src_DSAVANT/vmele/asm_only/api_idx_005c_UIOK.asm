; auto-generated
; asm only
api_idx_005c_UIOK:
    mov ax, 0xffa4                   ; 0x14e6
    call aztec_csav                  ; 0x14e9
    mov word [bp - 0x0002], 0        ; 0x14ec
    mov word [bp - 0x000a], 0        ; 0x14f1
    mov word [bp - 0x0004], 0        ; 0x14f6
    jmp near @..api_idx_005c_UIOK.l5 ; 0x14fb
@..api_idx_005c_UIOK.l1:
    mov ax, 0x2c                     ; 0x14fe
    imul word [bp - 0x0004]          ; 0x1501
    mov si, ax                       ; 0x1504
    mov ax, word [bp + 0x4]          ; 0x1506
    shl ax, 1                        ; 0x1509
    mov bx, ax                       ; 0x150b
    mov bx, word [bx - 0x7b7e]       ; 0x150d
    cmp byte [bx + si + 0x22], 3     ; 0x1511
    jae short @..api_idx_005c_UIOK.l2 ; 0x1515
    mov ax, 0                        ; 0x1517
    push ax                          ; 0x151a
    mov ax, word [bp + 0x4]          ; 0x151b
    shl ax, 1                        ; 0x151e
    mov bx, ax                       ; 0x1520
    mov bx, word [bx - 0x7b70]       ; 0x1522
    mov al, byte [bx + 0xdd]         ; 0x1526
    sub ah, ah                       ; 0x152a
    push ax                          ; 0x152c
    push word [bp - 0x0004]          ; 0x152d
    push word [bp + 0x4]             ; 0x1530
    call api_idx_000e_UGVQ           ; 0x1533
    add sp, byte 8                   ; 0x1536
    cmp ax, strict word 1            ; 0x1539
    jne short @..api_idx_005c_UIOK.l2 ; 0x153c
    inc word [bp - 0x000a]           ; 0x153e
@..api_idx_005c_UIOK.l2:
    mov ax, 0x2c                     ; 0x1541
    imul word [bp - 0x0004]          ; 0x1544
    mov si, ax                       ; 0x1547
    mov ax, word [bp + 0x4]          ; 0x1549
    shl ax, 1                        ; 0x154c
    mov bx, ax                       ; 0x154e
    mov bx, word [bx - 0x7b7e]       ; 0x1550
    cmp byte [bx + si + 0x22], 3     ; 0x1554
    jae short @..api_idx_005c_UIOK.l4 ; 0x1558
    add bx, si                       ; 0x155a
    mov si, bx                       ; 0x155c
    mov ax, 0x2c                     ; 0x155e
    imul word [bp - 0x0002]          ; 0x1561
    mov cx, ax                       ; 0x1564
    mov ax, word [bp + 0x4]          ; 0x1566
    shl ax, 1                        ; 0x1569
    mov bx, ax                       ; 0x156b
    mov ax, word [bx - 0x7b7e]       ; 0x156d
    add ax, cx                       ; 0x1571
    mov di, ax                       ; 0x1573
    mov cx, ds                       ; 0x1575
    mov es, cx                       ; 0x1577
    mov cx, 0x16                     ; 0x1579
    rep movsw                        ; 0x157c
    mov ax, 0x2c                     ; 0x157e
    imul word [bp - 0x0002]          ; 0x1581
    mov si, ax                       ; 0x1584
    mov ax, word [bp + 0x4]          ; 0x1586
    shl ax, 1                        ; 0x1589
    mov bx, ax                       ; 0x158b
    mov bx, word [bx - 0x7b7e]       ; 0x158d
    cmp byte [bx + si + 0x2a], 0xff  ; 0x1591
    je short @..api_idx_005c_UIOK.l3 ; 0x1595
    mov al, byte [bx + si + 0x2a]    ; 0x1597
    cbw                              ; 0x159a
    mov cx, 0xa                      ; 0x159b
    cwd                              ; 0x159e
    idiv cx                          ; 0x159f
    mov word [bp - 0x0006], ax       ; 0x15a1
    mov al, byte [bx + si + 0x2a]    ; 0x15a4
    cbw                              ; 0x15a7
    cwd                              ; 0x15a8
    idiv cx                          ; 0x15a9
    mov word [bp - 0x0008], dx       ; 0x15ab
    mov ax, word [bp + 0x4]          ; 0x15ae
    imul cx                          ; 0x15b1
    add ax, word [bp - 0x0002]       ; 0x15b3
    push ax                          ; 0x15b6
    mov ax, 6                        ; 0x15b7
    imul word [bp - 0x0006]          ; 0x15ba
    mov cx, ax                       ; 0x15bd
    mov dx, word [bp - 0x0008]       ; 0x15bf
    shl dx, 1                        ; 0x15c2
    add ax, dx                       ; 0x15c4
    mov bx, ax                       ; 0x15c6
    pop ax                           ; 0x15c8
    mov word [bx - 0x7bc6], ax       ; 0x15c9
@..api_idx_005c_UIOK.l3:
    inc word [bp - 0x0002]           ; 0x15cd
@..api_idx_005c_UIOK.l4:
    inc word [bp - 0x0004]           ; 0x15d0
@..api_idx_005c_UIOK.l5:
    mov ax, word [bp + 0x4]          ; 0x15d3
    shl ax, 1                        ; 0x15d6
    mov bx, ax                       ; 0x15d8
    mov bx, word [bx - 0x7b7e]       ; 0x15da
    mov al, byte [bx + 0x1a1]        ; 0x15de
    sub ah, ah                       ; 0x15e2
    cmp ax, word [bp - 0x0004]       ; 0x15e4
    jle short @..api_idx_005c_UIOK.l6 ; 0x15e7
    jmp near @..api_idx_005c_UIOK.l1 ; 0x15e9
@..api_idx_005c_UIOK.l6:
    cmp word [bp - 0x000a], byte 0   ; 0x15ec
    jg short @..api_idx_005c_UIOK.l7 ; 0x15f0
    jmp near @..api_idx_005c_UIOK.l11 ; 0x15f2
@..api_idx_005c_UIOK.l7:
    mov ax, 1                        ; 0x15f5
    push ax                          ; 0x15f8
    call api_idx_000a_UUIH           ; 0x15f9
    pop cx                           ; 0x15fc
    mov ax, 1                        ; 0x15fd
    push ax                          ; 0x1600
    call api_idx_0004_RGUG           ; 0x1601
    pop cx                           ; 0x1604
    mov ax, word [bp + 0x4]          ; 0x1605
    shl ax, 1                        ; 0x1608
    mov bx, ax                       ; 0x160a
    mov bx, word [bx - 0x7b7e]       ; 0x160c
    cmp byte [bx + 0x1a1], 1         ; 0x1610
    jne short @..api_idx_005c_UIOK.l8 ; 0x1615
    mov byte [bp - 0x005c], 0        ; 0x1617
    jmp short @..api_idx_005c_UIOK.l9 ; 0x161b
@..api_idx_005c_UIOK.l8:
    lea ax, word [bp - 0x005c]       ; 0x161d
    push ax                          ; 0x1620
    push word [bp - 0x000a]          ; 0x1621
    call ds_app_OLKR                 ; 0x1624
    add sp, byte 4                   ; 0x1627
    mov ax, 0x90a2                   ; 0x162a
    push ax                          ; 0x162d
    lea ax, word [bp - 0x005c]       ; 0x162e
    push ax                          ; 0x1631
    call aztec_strcat                ; 0x1632
    add sp, byte 4                   ; 0x1635
@..api_idx_005c_UIOK.l9:
    mov ax, 1                        ; 0x1638
    cmp word [bp - 0x000a], byte 1   ; 0x163b
    jne short @..api_idx_005c_UIOK.l10 ; 0x163f
    mov ax, 0                        ; 0x1641
@..api_idx_005c_UIOK.l10:
    mov cx, 4                        ; 0x1644
    shl ax, cl                       ; 0x1647
    mov cx, ax                       ; 0x1649
    push cx                          ; 0x164b
    mov ax, word [bp + 0x4]          ; 0x164c
    shl ax, 1                        ; 0x164f
    mov bx, ax                       ; 0x1651
    mov bx, word [bx - 0x7b7e]       ; 0x1653
    mov al, byte [bx + 0x1a0]        ; 0x1657
    sub ah, ah                       ; 0x165b
    mov cx, 5                        ; 0x165d
    shl ax, cl                       ; 0x1660
    pop cx                           ; 0x1662
    add cx, ax                       ; 0x1663
    mov ax, word [bp + 0x4]          ; 0x1665
    shl ax, 1                        ; 0x1668
    mov bx, ax                       ; 0x166a
    mov ax, word [bx - 0x7b70]       ; 0x166c
    add ax, cx                       ; 0x1670
    push ax                          ; 0x1672
    lea ax, word [bp - 0x005c]       ; 0x1673
    push ax                          ; 0x1676
    call aztec_strcat                ; 0x1677
    add sp, byte 4                   ; 0x167a
    lea ax, word [bp - 0x005c]       ; 0x167d
    push ax                          ; 0x1680
    call api_idx_0004_ULSR           ; 0x1681
    pop cx                           ; 0x1684
    lea ax, word [bp - 0x005c]       ; 0x1685
    push ax                          ; 0x1688
    call aztec_strlen                ; 0x1689
    pop cx                           ; 0x168c
    mov word [bp - 0x000c], ax       ; 0x168d
    mov bx, ax                       ; 0x1690
    add bx, bp                       ; 0x1692
    mov byte [bx - 0x005c], 0x20     ; 0x1694
    lea cx, word [bp - 0x005b]       ; 0x1698
    add ax, cx                       ; 0x169b
    push ax                          ; 0x169d
    mov ax, 0xdc4                    ; 0x169e
    push ax                          ; 0x16a1
    call ds_app_mem_TIMR             ; 0x16a2
    add sp, byte 4                   ; 0x16a5
    mov ax, 0x11                     ; 0x16a8
    push ax                          ; 0x16ab
    lea ax, word [bp - 0x005c]       ; 0x16ac
    push ax                          ; 0x16af
    call api_idx_000c_LVHV           ; 0x16b0
    add sp, byte 4                   ; 0x16b3
    push word [bss_905a]             ; 0x16b6
    call api_idx_0004_RGUG           ; 0x16ba
    pop cx                           ; 0x16bd
@..api_idx_005c_UIOK.l11:
    mov al, byte [bp - 0x0002]       ; 0x16be
    mov cx, word [bp + 0x4]          ; 0x16c1
    shl cx, 1                        ; 0x16c4
    mov bx, cx                       ; 0x16c6
    mov bx, word [bx - 0x7b7e]       ; 0x16c8
    mov byte [bx + 0x1a1], al        ; 0x16cc
    ret                              ; 0x16d0
