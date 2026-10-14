; auto-generated
; asm only
api_idx_004c_TIIJ:
    mov ax, 0xffb4                   ; 0x156e
    call aztec_csav                  ; 0x1571
    mov ax, 0                        ; 0x1574
    push ax                          ; 0x1577
    push word [bp + 0x6]             ; 0x1578
    lea ax, word [bp - 0x004c]       ; 0x157b
    push ax                          ; 0x157e
    mov ax, 1                        ; 0x157f
    push ax                          ; 0x1582
    call ds_app_file_GKHN            ; 0x1583
    add sp, byte 8                   ; 0x1586
    cmp word [bp + 0xa], byte 0xfe   ; 0x1589
    jne short @..api_idx_004c_TIIJ.l1 ; 0x158d
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
    jmp short @..api_idx_004c_TIIJ.l3 ; 0x15a8
@..api_idx_004c_TIIJ.l1:
    cmp word [bp + 0xa], byte 0xff   ; 0x15aa
    jne short @..api_idx_004c_TIIJ.l2 ; 0x15ae
    push word [bp - 0x0030]          ; 0x15b0
    push word [bp - 0x0032]          ; 0x15b3
    call ds_app_VHTL                 ; 0x15b6
    add sp, byte 4                   ; 0x15b9
    mov bx, word [bp + 0x8]          ; 0x15bc
    mov byte [bx + 0x6], al          ; 0x15bf
    jmp short @..api_idx_004c_TIIJ.l3 ; 0x15c2
@..api_idx_004c_TIIJ.l2:
    mov al, byte [bp + 0xa]          ; 0x15c4
    mov bx, word [bp + 0x8]          ; 0x15c7
    mov byte [bx + 0x6], al          ; 0x15ca
@..api_idx_004c_TIIJ.l3:
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
    je short @..api_idx_004c_TIIJ.l4 ; 0x161b
    mov ax, 0x80                     ; 0x161d
@..api_idx_004c_TIIJ.l4:
    mov bx, word [bp + 0x8]          ; 0x1620
    mov byte [bx + 0x7], al          ; 0x1623
    mov al, byte [bp - 0x0015]       ; 0x1626
    sub ah, ah                       ; 0x1629
    test ax, 8                       ; 0x162b
    je short @..api_idx_004c_TIIJ.l5 ; 0x162e
    mov bx, word [bp + 0x8]          ; 0x1630
    or byte [bx + 0x7], 4            ; 0x1633
@..api_idx_004c_TIIJ.l5:
    mov al, byte [bp - 0x0015]       ; 0x1637
    sub ah, ah                       ; 0x163a
    test ax, 4                       ; 0x163c
    je short @..api_idx_004c_TIIJ.l6 ; 0x163f
    mov bx, word [bp + 0x8]          ; 0x1641
    or byte [bx + 0x7], 8            ; 0x1644
@..api_idx_004c_TIIJ.l6:
    mov al, byte [bp - 0x0015]       ; 0x1648
    sub ah, ah                       ; 0x164b
    test ax, 0x10                    ; 0x164d
    je short @..api_idx_004c_TIIJ.l7 ; 0x1650
    mov bx, word [bp + 0x8]          ; 0x1652
    or byte [bx + 0x7], 0x10         ; 0x1655
@..api_idx_004c_TIIJ.l7:
    mov al, byte [bp - 0x0015]       ; 0x1659
    sub ah, ah                       ; 0x165c
    test ax, 0x20                    ; 0x165e
    je short @..api_idx_004c_TIIJ.l8 ; 0x1661
    mov bx, word [bp + 0x8]          ; 0x1663
    or byte [bx + 0x7], 0x20         ; 0x1666
@..api_idx_004c_TIIJ.l8:
    mov al, byte [bp - 0x0015]       ; 0x166a
    sub ah, ah                       ; 0x166d
    test ax, 2                       ; 0x166f
    je short @..api_idx_004c_TIIJ.l9 ; 0x1672
    mov bx, word [bp + 0x8]          ; 0x1674
    or byte [bx + 0x7], 0x40         ; 0x1677
@..api_idx_004c_TIIJ.l9:
    push word [bp + 0x4]             ; 0x167b
    call ds_app_UJIM                 ; 0x167e
    pop cx                           ; 0x1681
    ret                              ; 0x1682
loc_1683:
    mov ax, 0                        ; 0x1683
    call aztec_csav                  ; 0x1686
    mov ax, word [bp + 0x4]          ; 0x1689
    jmp short @..loc_1683.l1         ; 0x168c
loc_168e:
    mov ax, 0                        ; 0x168e
    ret                              ; 0x1691
@..loc_1683.l1:
    mov cx, 0x26                     ; 0x1692
    call leaf_loc_VKIM               ; 0x1695
jumptable_1698:
    dw 0x001c                                  ; 0x1698 ; literal
    dw 0x0026                                  ; 0x169a ; literal
    dw 0x0036                                  ; 0x169c ; literal
    dw 0x0038                                  ; 0x169e ; literal
    dw 0x0039                                  ; 0x16a0 ; literal
    dw 0x003d                                  ; 0x16a2 ; literal
    dw 0x0042                                  ; 0x16a4 ; literal
    dw 0x0043                                  ; 0x16a6 ; literal
    dw 0x0046                                  ; 0x16a8 ; literal
    dw 0x0047                                  ; 0x16aa ; literal
    dw 0x0048                                  ; 0x16ac ; literal
    dw 0x0049                                  ; 0x16ae ; literal
    dw 0x004a                                  ; 0x16b0 ; literal
    dw 0x004e                                  ; 0x16b2 ; literal
    dw 0x004f                                  ; 0x16b4 ; literal
    dw 0x0052                                  ; 0x16b6 ; literal
    dw 0x0054                                  ; 0x16b8 ; literal
    dw 0x005a                                  ; 0x16ba ; literal
    dw 0x005c                                  ; 0x16bc ; literal
    dw 0x0062                                  ; 0x16be ; literal
    dw 0x0064                                  ; 0x16c0 ; literal
    dw 0x0065                                  ; 0x16c2 ; literal
    dw 0x0075                                  ; 0x16c4 ; literal
    dw 0x0076                                  ; 0x16c6 ; literal
    dw 0x0077                                  ; 0x16c8 ; literal
    dw 0x0097                                  ; 0x16ca ; literal
    dw 0x00ae                                  ; 0x16cc ; literal
    dw 0x00b2                                  ; 0x16ce ; literal
    dw 0x00b5                                  ; 0x16d0 ; literal
    dw 0x00bd                                  ; 0x16d2 ; literal
    dw 0x00c2                                  ; 0x16d4 ; literal
    dw 0x00c5                                  ; 0x16d6 ; literal
    dw 0x00ca                                  ; 0x16d8 ; literal
    dw 0x00cb                                  ; 0x16da ; literal
    dw 0x00d2                                  ; 0x16dc ; literal
    dw 0x00d3                                  ; 0x16de ; literal
    dw 0x014b                                  ; 0x16e0 ; literal
    dw 0x66d5                                  ; 0x16e2 ; literal
    dw 0x66d5                                  ; 0x16e4 ; literal
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
    jne short loc_1795               ; 0x172c
    cmp word [bp + 0x4], byte 0x3c   ; 0x172e
    jl short @..loc_16e6.l1          ; 0x1732
    cmp word [bp + 0x4], byte 0x78   ; 0x1734
    jge short @..loc_16e6.l1         ; 0x1738
    mov ax, 0                        ; 0x173a
    sub ax, word [bp + 0x4]          ; 0x173d
    ret                              ; 0x1740
@..loc_16e6.l1:
    cmp word [bp + 0x4], strict word 0xb8 ; 0x1741
    jl short @..loc_16e6.l2          ; 0x1746
    cmp word [bp + 0x4], strict word 0xe3 ; 0x1748
    jge short @..loc_16e6.l2         ; 0x174d
    mov ax, 0                        ; 0x174f
    sub ax, word [bp + 0x4]          ; 0x1752
    ret                              ; 0x1755
@..loc_16e6.l2:
    cmp word [bp + 0x4], strict word 0xe3 ; 0x1756
    jge short @..loc_16e6.l3         ; 0x175b
    mov ax, word [bp + 0x4]          ; 0x175d
    ret                              ; 0x1760
@..loc_16e6.l3:
    cmp word [bp + 0x4], strict word 0x145 ; 0x1761
    jne short @..loc_16e6.l4         ; 0x1766
    mov ax, 0x13a                    ; 0x1768
    ret                              ; 0x176b
@..loc_16e6.l4:
    cmp word [bp + 0x4], strict word 0x146 ; 0x176c
    jne short @..loc_16e6.l5         ; 0x1771
    mov ax, 0x14b                    ; 0x1773
    ret                              ; 0x1776
@..loc_16e6.l5:
    cmp word [bp + 0x4], strict word 0x13c ; 0x1777
    jl short @..loc_16e6.l6          ; 0x177c
    cmp word [bp + 0x4], strict word 0x14c ; 0x177e
    jg short @..loc_16e6.l6          ; 0x1783
    mov ax, word [bp + 0x4]          ; 0x1785
    ret                              ; 0x1788
@..loc_16e6.l6:
    cmp word [bp + 0x4], strict word 0x1ab ; 0x1789
    jne short @..loc_16e6.l7         ; 0x178e
    mov ax, 0xffae                   ; 0x1790
    ret                              ; 0x1793
@..loc_16e6.l7:
    cmp word [bp + 0x4], strict word 0x1d8 ; 0x1794
    jne short @..loc_16e6.l8         ; 0x1799
loc_179b:
    mov ax, 0xf5                     ; 0x179b
    ret                              ; 0x179e
@..loc_16e6.l8:
    cmp word [bp + 0x4], strict word 0x1d9 ; 0x179f
    jne short @..loc_16e6.l9         ; 0x17a4
    mov ax, 0xf4                     ; 0x17a6
    ret                              ; 0x17a9
@..loc_16e6.l9:
    mov ax, word [bp + 0x4]          ; 0x17aa
    jmp short @..loc_16e6.l10        ; 0x17ad
loc_17af:
    cmp word [bp + 0x4], strict word 0xe3 ; 0x17af
    jl short @..loc_17af.l1          ; 0x17b4
    cmp word [bp + 0x4], strict word 0xfe ; 0x17b6
    jge short @..loc_17af.l1         ; 0x17bb
    mov ax, 0                        ; 0x17bd
    sub ax, word [bp + 0x4]          ; 0x17c0
    ret                              ; 0x17c3
@..loc_17af.l1:
    mov ax, word [bp + 0x4]          ; 0x17c4
    ret                              ; 0x17c7
@..loc_16e6.l10:
    mov cx, 0x14                     ; 0x17c8
    call leaf_loc_VKIM               ; 0x17cb
jumptable_17ce:
    dw 0x00ea                                  ; 0x17ce ; literal
    dw 0x00ec                                  ; 0x17d0 ; literal
    dw 0x00f1                                  ; 0x17d2 ; literal
    dw 0x00f5                                  ; 0x17d4 ; literal
    dw 0x00fc                                  ; 0x17d6 ; literal
    dw 0x00fd                                  ; 0x17d8 ; literal
    dw 0x0104                                  ; 0x17da ; literal
    dw 0x0105                                  ; 0x17dc ; literal
    dw 0x0106                                  ; 0x17de ; literal
    dw 0x0107                                  ; 0x17e0 ; literal
    dw 0x0116                                  ; 0x17e2 ; literal
    dw 0x011c                                  ; 0x17e4 ; literal
    dw 0x012d                                  ; 0x17e6 ; literal
    dw 0x0131                                  ; 0x17e8 ; literal
    dw 0x0132                                  ; 0x17ea ; literal
    dw 0x0133                                  ; 0x17ec ; literal
    dw 0x0134                                  ; 0x17ee ; literal
    dw 0x0135                                  ; 0x17f0 ; literal
    dw 0x0139                                  ; 0x17f2 ; literal
    dw 0x67f6                                  ; 0x17f4 ; literal
    dw 0x67f6                                  ; 0x17f6 ; literal

    db 0xf6, 0x67, 0xf6, 0x67, 0xf6, 0x67, 0xf6, 0x67, 0xf6, 0x67, 0xf6, 0x67, 0xf6, 0x67, 0xf6, 0x67
    db 0xf6, 0x67, 0xf6, 0x67, 0xf6, 0x67, 0xf6, 0x67, 0xf6, 0x67, 0xf6, 0x67, 0xf6, 0x67, 0xf6, 0x67
    db 0xf6, 0x67, 0x63, 0x68, 0xb8, 0x00, 0x00, 0xc3

loc_1820:
    mov ax, 0                        ; 0x1820
    call aztec_csav                  ; 0x1823
    mov ax, word [bp + 0x4]          ; 0x1826
    jmp short @..loc_1820.l1         ; 0x1829
