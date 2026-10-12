api_idx_004c:
    mov ax, 0xffb4                   ; 0x156e
    call ds_aztec_csav               ; 0x1571
    mov ax, 0                        ; 0x1574
    push ax                          ; 0x1577
    push word [bp + 0x6]             ; 0x1578
    lea ax, word [bp - 0x004c]       ; 0x157b
    push ax                          ; 0x157e
    mov ax, 1                        ; 0x157f
    push ax                          ; 0x1582
    call ds_app_file_0883            ; 0x1583
    add sp, byte 8                   ; 0x1586
    cmp word [bp + 0xa], byte 0xfe   ; 0x1589
    jne short @..api_idx_004c.l1     ; 0x158d
    mov al, byte [bp - 0x0030]       ; 0x158f
    sub ah, ah                       ; 0x1592
    push ax                          ; 0x1594
    mov al, byte [bp - 0x002f]       ; 0x1595
    sub ah, ah                       ; 0x1598
    mov cx, ax                       ; 0x159a
    pop ax                           ; 0x159c
    imul cx                          ; 0x159d
    add ax, word [bp - 0x0032]       ; 0x159f
    mov bx, word [bp + 0x8]          ; 0x15a2
    mov byte [bx + 0x6], al          ; 0x15a5
    jmp short @..api_idx_004c.l3     ; 0x15a8
@..api_idx_004c.l1:
    cmp word [bp + 0xa], byte 0xff   ; 0x15aa
    jne short @..api_idx_004c.l2     ; 0x15ae
    push word [bp - 0x0030]          ; 0x15b0
    push word [bp - 0x0032]          ; 0x15b3
    call ds_app_2305                 ; 0x15b6
    add sp, byte 4                   ; 0x15b9
    mov bx, word [bp + 0x8]          ; 0x15bc
    mov byte [bx + 0x6], al          ; 0x15bf
    jmp short @..api_idx_004c.l3     ; 0x15c2
@..api_idx_004c.l2:
    mov al, byte [bp + 0xa]          ; 0x15c4
    mov bx, word [bp + 0x8]          ; 0x15c7
    mov byte [bx + 0x6], al          ; 0x15ca
@..api_idx_004c.l3:
    mov ax, word [bp + 0x6]          ; 0x15cd
    mov bx, word [bp + 0x8]          ; 0x15d0
    mov word [bx], ax                ; 0x15d3
    mov al, byte [bp - 0x0014]       ; 0x15d5
    mov bx, word [bp + 0x8]          ; 0x15d8
    mov byte [bx + 0x4], al          ; 0x15db
    mov al, byte [bp - 0x0013]       ; 0x15de
    mov bx, word [bp + 0x8]          ; 0x15e1
    mov byte [bx + 0x5], al          ; 0x15e4
    mov ax, word [bp - 0x0028]       ; 0x15e7
    mov bx, word [bp + 0x8]          ; 0x15ea
    mov word [bx + 0x2], ax          ; 0x15ed
    mov al, byte [bp - 0x0024]       ; 0x15f0
    mov bx, word [bp + 0x8]          ; 0x15f3
    mov byte [bx + 0x8], al          ; 0x15f6
    mov al, byte [bp - 0x0023]       ; 0x15f9
    mov bx, word [bp + 0x8]          ; 0x15fc
    mov byte [bx + 0x9], al          ; 0x15ff
    mov al, byte [bp - 0x0010]       ; 0x1602
    mov bx, word [bp + 0x8]          ; 0x1605
    mov byte [bx + 0xa], al          ; 0x1608
    mov al, byte [bp - 0x000c]       ; 0x160b
    mov bx, word [bp + 0x8]          ; 0x160e
    mov byte [bx + 0xb], al          ; 0x1611
    mov ax, 0                        ; 0x1614
    cmp word [bp + 0xc], byte 0      ; 0x1617
    je short @..api_idx_004c.l4      ; 0x161b
    mov ax, 0x80                     ; 0x161d
@..api_idx_004c.l4:
    mov bx, word [bp + 0x8]          ; 0x1620
    mov byte [bx + 0x7], al          ; 0x1623
    mov al, byte [bp - 0x0015]       ; 0x1626
    sub ah, ah                       ; 0x1629
    test ax, 8                       ; 0x162b
    je short @..api_idx_004c.l5      ; 0x162e
    mov bx, word [bp + 0x8]          ; 0x1630
    or byte [bx + 0x7], 4            ; 0x1633
@..api_idx_004c.l5:
    mov al, byte [bp - 0x0015]       ; 0x1637
    sub ah, ah                       ; 0x163a
    test ax, 4                       ; 0x163c
    je short @..api_idx_004c.l6      ; 0x163f
    mov bx, word [bp + 0x8]          ; 0x1641
    or byte [bx + 0x7], 8            ; 0x1644
@..api_idx_004c.l6:
    mov al, byte [bp - 0x0015]       ; 0x1648
    sub ah, ah                       ; 0x164b
    test ax, 0x10                    ; 0x164d
    je short @..api_idx_004c.l7      ; 0x1650
    mov bx, word [bp + 0x8]          ; 0x1652
    or byte [bx + 0x7], 0x10         ; 0x1655
@..api_idx_004c.l7:
    mov al, byte [bp - 0x0015]       ; 0x1659
    sub ah, ah                       ; 0x165c
    test ax, 0x20                    ; 0x165e
    je short @..api_idx_004c.l8      ; 0x1661
    mov bx, word [bp + 0x8]          ; 0x1663
    or byte [bx + 0x7], 0x20         ; 0x1666
@..api_idx_004c.l8:
    mov al, byte [bp - 0x0015]       ; 0x166a
    sub ah, ah                       ; 0x166d
    test ax, 2                       ; 0x166f
    je short @..api_idx_004c.l9      ; 0x1672
    mov bx, word [bp + 0x8]          ; 0x1674
    or byte [bx + 0x7], 0x40         ; 0x1677
@..api_idx_004c.l9:
    push word [bp + 0x4]             ; 0x167b
    call ds_app_17d6                 ; 0x167e
    pop cx                           ; 0x1681
    ret                              ; 0x1682
loc_1683:
    mov ax, 0                        ; 0x1683
    call ds_aztec_csav               ; 0x1686
    mov ax, word [bp + 0x4]          ; 0x1689
    jmp short @..local.l20           ; 0x168c
loc_168e:
    mov ax, 0                        ; 0x168e
    ret                              ; 0x1691
@..local.l20:
    mov cx, 0x26                     ; 0x1692
    call leaf_loc_936e               ; 0x1695
    sbb al, 0                        ; 0x1698
    add byte [es:0x3800], dh         ; 0x169a
    add byte [bx + di], bh           ; 0x169f
    add byte [di], bh                ; 0x16a1
    db 0x00, 0x42, 0x00 ; add byte [bp + si], al
    inc bx                           ; 0x16a6
    add byte [bp], al                ; 0x16a7
    inc di                           ; 0x16aa
    db 0x00, 0x48, 0x00 ; add byte [bx + si], cl
    dec cx                           ; 0x16ae
    db 0x00, 0x4a, 0x00 ; add byte [bp + si], cl
    dec si                           ; 0x16b2
    db 0x00, 0x4f, 0x00 ; add byte [bx], cl
    push dx                          ; 0x16b6
    db 0x00, 0x54, 0x00 ; add byte [si], dl
    pop dx                           ; 0x16ba
    db 0x00, 0x5c, 0x00 ; add byte [si], bl
    bound ax, dword [bx + si]        ; 0x16be
    db 0x64, 0x00, 0x65, 0x00 ; add byte [fs:di], ah
    jne short @..local.l21           ; 0x16c4
@..local.l21:
    jbe short @..local.l22           ; 0x16c6
@..local.l22:
    ja short @..local.l23            ; 0x16c8
@..local.l23:
    xchg di, ax                      ; 0x16ca
    add byte [bp - 0x4e00], ch       ; 0x16cb
    add byte [di - 0x4300], dh       ; 0x16cf
    add dl, al                       ; 0x16d3
    add ch, al                       ; 0x16d5
    add dl, cl                       ; 0x16d7
    add bl, cl                       ; 0x16d9
    add dl, dl                       ; 0x16db
    add bl, dl                       ; 0x16dd
    add byte [bp + di + 0x1], cl     ; 0x16df
    aad 0x66                         ; 0x16e2
    aad 0x66                         ; 0x16e4
    aad 0x66                         ; 0x16e6
    aad 0x66                         ; 0x16e8
    aad 0x66                         ; 0x16ea
    aad 0x66                         ; 0x16ec
    aad 0x66                         ; 0x16ee
    aad 0x66                         ; 0x16f0
    aad 0x66                         ; 0x16f2
    aad 0x66                         ; 0x16f4
    aad 0x66                         ; 0x16f6
    aad 0x66                         ; 0x16f8
    aad 0x66                         ; 0x16fa
    aad 0x66                         ; 0x16fc
    aad 0x66                         ; 0x16fe
    aad 0x66                         ; 0x1700
    aad 0x66                         ; 0x1702
    aad 0x66                         ; 0x1704
    aad 0x66                         ; 0x1706
    aad 0x66                         ; 0x1708
    aad 0x66                         ; 0x170a
    aad 0x66                         ; 0x170c
    aad 0x66                         ; 0x170e
    aad 0x66                         ; 0x1710
    aad 0x66                         ; 0x1712
    aad 0x66                         ; 0x1714
    aad 0x66                         ; 0x1716
    aad 0x66                         ; 0x1718
    aad 0x66                         ; 0x171a
    aad 0x66                         ; 0x171c
    aad 0x66                         ; 0x171e
    aad 0x66                         ; 0x1720
    aad 0x66                         ; 0x1722
    aad 0x66                         ; 0x1724
    aad 0x66                         ; 0x1726
    aad 0x66                         ; 0x1728
    aad 0x66                         ; 0x172a
    jne short @..local.l31           ; 0x172c
    cmp word [bp + 0x4], byte 0x3c   ; 0x172e
    jl short @..local.l24            ; 0x1732
    cmp word [bp + 0x4], byte 0x78   ; 0x1734
    jge short @..local.l24           ; 0x1738
    mov ax, 0                        ; 0x173a
    sub ax, word [bp + 0x4]          ; 0x173d
    ret                              ; 0x1740
@..local.l24:
    cmp word [bp + 0x4], strict word 0xb8 ; 0x1741
    jl short @..local.l25            ; 0x1746
    cmp word [bp + 0x4], strict word 0xe3 ; 0x1748
    jge short @..local.l25           ; 0x174d
    mov ax, 0                        ; 0x174f
    sub ax, word [bp + 0x4]          ; 0x1752
    ret                              ; 0x1755
@..local.l25:
    cmp word [bp + 0x4], strict word 0xe3 ; 0x1756
    jge short @..local.l26           ; 0x175b
    mov ax, word [bp + 0x4]          ; 0x175d
    ret                              ; 0x1760
@..local.l26:
    cmp word [bp + 0x4], strict word 0x145 ; 0x1761
    jne short @..local.l27           ; 0x1766
    mov ax, 0x13a                    ; 0x1768
    ret                              ; 0x176b
@..local.l27:
    cmp word [bp + 0x4], strict word 0x146 ; 0x176c
    jne short @..local.l28           ; 0x1771
    mov ax, 0x14b                    ; 0x1773
    ret                              ; 0x1776
@..local.l28:
    cmp word [bp + 0x4], strict word 0x13c ; 0x1777
    jl short @..local.l29            ; 0x177c
    cmp word [bp + 0x4], strict word 0x14c ; 0x177e
    jg short @..local.l29            ; 0x1783
    mov ax, word [bp + 0x4]          ; 0x1785
    ret                              ; 0x1788
@..local.l29:
    cmp word [bp + 0x4], strict word 0x1ab ; 0x1789
    jne short @..local.l30           ; 0x178e
    mov ax, 0xffae                   ; 0x1790
    ret                              ; 0x1793
@..local.l30:
    db 0x81
@..local.l31:
    db 0x7e, 0x04, 0xd8, 0x01
    jne short @..local.l32           ; 0x1799
loc_179b:
    mov ax, 0xf5                     ; 0x179b
    ret                              ; 0x179e
@..local.l32:
    cmp word [bp + 0x4], strict word 0x1d9 ; 0x179f
    jne short @..local.l33           ; 0x17a4
    mov ax, 0xf4                     ; 0x17a6
    ret                              ; 0x17a9
@..local.l33:
    mov ax, word [bp + 0x4]          ; 0x17aa
    jmp short @..local.l35           ; 0x17ad
loc_17af:
    cmp word [bp + 0x4], strict word 0xe3 ; 0x17af
    jl short @..local.l34            ; 0x17b4
    cmp word [bp + 0x4], strict word 0xfe ; 0x17b6
    jge short @..local.l34           ; 0x17bb
    mov ax, 0                        ; 0x17bd
    sub ax, word [bp + 0x4]          ; 0x17c0
    ret                              ; 0x17c3
@..local.l34:
    mov ax, word [bp + 0x4]          ; 0x17c4
    ret                              ; 0x17c7
@..local.l35:
    mov cx, 0x14                     ; 0x17c8
    call leaf_loc_936e               ; 0x17cb
    jmp far 0xf100:0xec00            ; 0x17ce

    db 0x00, 0xf5, 0x00, 0xfc, 0x00, 0xfd, 0x00, 0x04, 0x01, 0x05, 0x01, 0x06, 0x01, 0x07, 0x01, 0x16
    db 0x01, 0x1c, 0x01, 0x2d, 0x01, 0x31, 0x01, 0x32, 0x01, 0x33, 0x01, 0x34, 0x01, 0x35, 0x01, 0x39
    db 0x01, 0xf6, 0x67, 0xf6, 0x67, 0xf6, 0x67, 0xf6, 0x67, 0xf6, 0x67, 0xf6, 0x67, 0xf6, 0x67, 0xf6
    db 0x67, 0xf6, 0x67, 0xf6, 0x67, 0xf6, 0x67, 0xf6, 0x67, 0xf6, 0x67, 0xf6, 0x67, 0xf6, 0x67, 0xf6
    db 0x67, 0xf6, 0x67, 0xf6, 0x67, 0xf6, 0x67, 0x63, 0x68, 0xb8, 0x00, 0x00, 0xc3

loc_1820:
    mov ax, 0                        ; 0x1820
    call ds_aztec_csav               ; 0x1823
    mov ax, word [bp + 0x4]          ; 0x1826
    jmp short @..local.l36           ; 0x1829
