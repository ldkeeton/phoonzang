; auto-generated
api_idx_00b8_LTRM:
    mov ax, 0xff48                   ; 0x14e7
    call aztec_csav                  ; 0x14ea
    mov ax, 1                        ; 0x14ed
    push ax                          ; 0x14f0
    call redraw_treasure_caption     ; 0x14f1
    pop cx                           ; 0x14f4
    cmp word [bp + 0x4], byte 0      ; 0x14f5
    jne short @..api_idx_00b8_LTRM.l1 ; 0x14f9
    lea ax, word [bp - 0x0068]       ; 0x14fb
    push ax                          ; 0x14fe
    mov ax, 0x146c                   ; 0x14ff
    push ax                          ; 0x1502
    call load_message_string         ; 0x1503
    add sp, byte 4                   ; 0x1506
    mov ax, 1                        ; 0x1509
    push ax                          ; 0x150c
    mov ax, 0                        ; 0x150d
    push ax                          ; 0x1510
    push word [bss_91d4]             ; 0x1511
    lea ax, word [bp - 0x0068]       ; 0x1515
    push ax                          ; 0x1518
    call loc_OOHI                    ; 0x1519
    add sp, byte 8                   ; 0x151c
    ret                              ; 0x151f
@..api_idx_00b8_LTRM.l1:
    mov ax, 0                        ; 0x1520
    push ax                          ; 0x1523
    mov ax, 0xc                      ; 0x1524
    push ax                          ; 0x1527
    lea ax, word [bp - 0x0018]       ; 0x1528
    push ax                          ; 0x152b
    call aztec_setmem                ; 0x152c
    add sp, byte 6                   ; 0x152f
    mov word [bp - 0x0002], 0        ; 0x1532
    jmp short @..api_idx_00b8_LTRM.l4 ; 0x1537
@..api_idx_00b8_LTRM.l2:
    mov ax, 0x248                    ; 0x1539
    imul word [bp - 0x0002]          ; 0x153c
    mov bx, ax                       ; 0x153f
    cmp byte [bx + member_state + 0x5], 3 ; 0x1541
    jb short @..api_idx_00b8_LTRM.l3 ; 0x1546
    mov ax, word [bp - 0x0002]       ; 0x1548
    shl ax, 1                        ; 0x154b
    mov bx, ax                       ; 0x154d
    add bx, bp                       ; 0x154f
    mov word [bx - 0x0018], 1        ; 0x1551
@..api_idx_00b8_LTRM.l3:
    inc word [bp - 0x0002]           ; 0x1556
@..api_idx_00b8_LTRM.l4:
    mov ax, word [bp - 0x0002]       ; 0x1559
    cmp ax, word [party_char_count]  ; 0x155c
    jl short @..api_idx_00b8_LTRM.l2 ; 0x1560
    mov ax, word [bp + 0x4]          ; 0x1562
    jmp near @..api_idx_00b8_LTRM.l60 ; 0x1565
jumptable_1fa3_case_1:
    mov ax, 0xc                      ; 0x1568
    push ax                          ; 0x156b
    mov ax, 0                        ; 0x156c
    push ax                          ; 0x156f
    call api_idx_0050_MPOT           ; 0x1570
    add sp, byte 4                   ; 0x1573
    mov ax, 3                        ; 0x1576
    push ax                          ; 0x1579
    push ax                          ; 0x157a
    lea ax, word [bp - 0x000c]       ; 0x157b
    push ax                          ; 0x157e
    lea ax, word [bp - 0x000a]       ; 0x157f
    push ax                          ; 0x1582
    lea ax, word [bp - 0x0008]       ; 0x1583
    push ax                          ; 0x1586
    call api_idx_0006_UHJH           ; 0x1587
    add sp, byte 0x0a                ; 0x158a
    mov ax, word [bp - 0x0008]       ; 0x158d
    mov word [bp - 0x0002], ax       ; 0x1590
    jmp short @..api_idx_00b8_LTRM.l8 ; 0x1593
@..api_idx_00b8_LTRM.l5:
    mov ax, word [bp - 0x0002]       ; 0x1595
    shl ax, 1                        ; 0x1598
    mov bx, ax                       ; 0x159a
    add bx, bp                       ; 0x159c
    cmp word [bx - 0x0018], byte 0   ; 0x159e
    jne short @..api_idx_00b8_LTRM.l7 ; 0x15a2
    mov ax, 0x64                     ; 0x15a4
    push ax                          ; 0x15a7
    call random_below                ; 0x15a8
    pop cx                           ; 0x15ab
    push ax                          ; 0x15ac
    mov ax, 0x248                    ; 0x15ad
    imul word [bp - 0x0002]          ; 0x15b0
    mov bx, ax                       ; 0x15b3
    mov al, byte [bx + cell_key_grid + 0x169] ; 0x15b5
    sub ah, ah                       ; 0x15b9
    mov cx, ax                       ; 0x15bb
    pop ax                           ; 0x15bd
    cmp ax, cx                       ; 0x15be
    jg short @..api_idx_00b8_LTRM.l6 ; 0x15c0
    mov ax, word [bp - 0x0002]       ; 0x15c2
    cmp ax, word [bp - 0x000c]       ; 0x15c5
    jne short @..api_idx_00b8_LTRM.l7 ; 0x15c8
@..api_idx_00b8_LTRM.l6:
    mov ax, 7                        ; 0x15ca
    push ax                          ; 0x15cd
    mov ax, word [bp + 0x8]          ; 0x15ce
    mov cx, 2                        ; 0x15d1
    cwd                              ; 0x15d4
    idiv cx                          ; 0x15d5
    inc ax                           ; 0x15d7
    push ax                          ; 0x15d8
    push word [bp - 0x0002]          ; 0x15d9
    call api_idx_003e_JGVR           ; 0x15dc
    add sp, byte 6                   ; 0x15df
@..api_idx_00b8_LTRM.l7:
    inc word [bp - 0x0002]           ; 0x15e2
@..api_idx_00b8_LTRM.l8:
    mov ax, word [bp - 0x0008]       ; 0x15e5
    add ax, word [bp - 0x000a]       ; 0x15e8
    cmp ax, word [bp - 0x0002]       ; 0x15eb
    jg short @..api_idx_00b8_LTRM.l5 ; 0x15ee
    jmp near @..api_idx_00b8_LTRM.l61 ; 0x15f0
jumptable_1fa3_case_2:
    mov ax, 6                        ; 0x15f3
    push ax                          ; 0x15f6
    mov ax, 0                        ; 0x15f7
    push ax                          ; 0x15fa
    call api_idx_0050_MPOT           ; 0x15fb
    add sp, byte 4                   ; 0x15fe
    mov ax, 2                        ; 0x1601
    push ax                          ; 0x1604
    push ax                          ; 0x1605
    lea ax, word [bp - 0x000c]       ; 0x1606
    push ax                          ; 0x1609
    lea ax, word [bp - 0x000a]       ; 0x160a
    push ax                          ; 0x160d
    lea ax, word [bp - 0x0008]       ; 0x160e
    push ax                          ; 0x1611
    call api_idx_0006_UHJH           ; 0x1612
    add sp, byte 0x0a                ; 0x1615
    mov ax, word [bp - 0x0008]       ; 0x1618
    mov word [bp - 0x0002], ax       ; 0x161b
    jmp near @..api_idx_00b8_LTRM.l12 ; 0x161e
@..api_idx_00b8_LTRM.l9:
    mov ax, word [bp - 0x0002]       ; 0x1621
    shl ax, 1                        ; 0x1624
    mov bx, ax                       ; 0x1626
    add bx, bp                       ; 0x1628
    cmp word [bx - 0x0018], byte 0   ; 0x162a
    jne short @..api_idx_00b8_LTRM.l11 ; 0x162e
    mov ax, 0x64                     ; 0x1630
    push ax                          ; 0x1633
    call random_below                ; 0x1634
    pop cx                           ; 0x1637
    push ax                          ; 0x1638
    mov ax, 0x248                    ; 0x1639
    imul word [bp - 0x0002]          ; 0x163c
    mov bx, ax                       ; 0x163f
    mov al, byte [bx + cell_key_grid + 0x16f] ; 0x1641
    sub ah, ah                       ; 0x1645
    mov cx, ax                       ; 0x1647
    pop ax                           ; 0x1649
    cmp ax, cx                       ; 0x164a
    jg short @..api_idx_00b8_LTRM.l10 ; 0x164c
    mov ax, word [bp - 0x0002]       ; 0x164e
    cmp ax, word [bp - 0x000c]       ; 0x1651
    jne short @..api_idx_00b8_LTRM.l11 ; 0x1654
@..api_idx_00b8_LTRM.l10:
    mov ax, 6                        ; 0x1656
    push ax                          ; 0x1659
    mov ax, 1                        ; 0x165a
    push ax                          ; 0x165d
    push word [bp - 0x0002]          ; 0x165e
    call api_idx_003e_JGVR           ; 0x1661
    add sp, byte 6                   ; 0x1664
    test ax, ax                      ; 0x1667
    je short @..api_idx_00b8_LTRM.l11 ; 0x1669
    mov ax, 0x32                     ; 0x166b
    push ax                          ; 0x166e
    mov ax, 0xa                      ; 0x166f
    push ax                          ; 0x1672
    mov ax, word [bp + 0x8]          ; 0x1673
    mov cx, 2                        ; 0x1676
    cwd                              ; 0x1679
    idiv cx                          ; 0x167a
    inc ax                           ; 0x167c
    push ax                          ; 0x167d
    mov ax, 5                        ; 0x167e
    push ax                          ; 0x1681
    mov ax, 6                        ; 0x1682
    push ax                          ; 0x1685
    mov ax, 0x1487                   ; 0x1686
    push ax                          ; 0x1689
    push word [bp - 0x0002]          ; 0x168a
    call api_idx_0056_VTNO           ; 0x168d
    add sp, byte 0x0e                ; 0x1690
@..api_idx_00b8_LTRM.l11:
    inc word [bp - 0x0002]           ; 0x1693
@..api_idx_00b8_LTRM.l12:
    mov ax, word [bp - 0x0008]       ; 0x1696
    add ax, word [bp - 0x000a]       ; 0x1699
    cmp ax, word [bp - 0x0002]       ; 0x169c
    jg short @..api_idx_00b8_LTRM.l9 ; 0x169f
    jmp near @..api_idx_00b8_LTRM.l61 ; 0x16a1
jumptable_1fa3_case_3:
    mov ax, 0xffff                   ; 0x16a4
    push ax                          ; 0x16a7
    mov ax, 0                        ; 0x16a8
    push ax                          ; 0x16ab
    call api_idx_0050_MPOT           ; 0x16ac
    add sp, byte 4                   ; 0x16af
    jmp near @..api_idx_00b8_LTRM.l61 ; 0x16b2
jumptable_1fa3_case_4:
    lea ax, word [bp - 0x0018]       ; 0x16b5
    push ax                          ; 0x16b8
    call api_idx_0004_VSSI           ; 0x16b9
    pop cx                           ; 0x16bc
    mov word [bp - 0x0002], ax       ; 0x16bd
    cmp ax, strict word 0xffff       ; 0x16c0
    jne short @..api_idx_00b8_LTRM.l13 ; 0x16c3
    jmp near @..api_idx_00b8_LTRM.l17 ; 0x16c5
@..api_idx_00b8_LTRM.l13:
    mov ax, 0x16                     ; 0x16c8
    push ax                          ; 0x16cb
    push word [bp - 0x0002]          ; 0x16cc
    call api_idx_0050_MPOT           ; 0x16cf
    add sp, byte 4                   ; 0x16d2
    lea ax, word [bp - 0x0068]       ; 0x16d5
    push ax                          ; 0x16d8
    mov ax, 0x1496                   ; 0x16d9
    push ax                          ; 0x16dc
    call load_message_string         ; 0x16dd
    add sp, byte 4                   ; 0x16e0
    mov ax, 0xb8                     ; 0x16e3
    push ax                          ; 0x16e6
    mov ax, 1                        ; 0x16e7
    push ax                          ; 0x16ea
    push word [bss_91d4]             ; 0x16eb
    lea ax, word [bp - 0x0068]       ; 0x16ef
    push ax                          ; 0x16f2
    call loc_OOHI                    ; 0x16f3
    add sp, byte 8                   ; 0x16f6
    lea ax, word [bp - 0x0068]       ; 0x16f9
    push ax                          ; 0x16fc
    mov ax, 0x1497                   ; 0x16fd
    push ax                          ; 0x1700
    call load_message_string         ; 0x1701
    add sp, byte 4                   ; 0x1704
    mov ax, 0                        ; 0x1707
    push ax                          ; 0x170a
    push ax                          ; 0x170b
    mov ax, 0x41                     ; 0x170c
    push ax                          ; 0x170f
    mov ax, 1                        ; 0x1710
    push ax                          ; 0x1713
    mov ax, dseg_90b5                ; 0x1714
    push ax                          ; 0x1717
    mov ax, dseg_90b4                ; 0x1718
    push ax                          ; 0x171b
    lea ax, word [bp - 0x0068]       ; 0x171c
    push ax                          ; 0x171f
    push word [bp - 0x0002]          ; 0x1720
    call api_idx_0002_RJQH           ; 0x1723
    add sp, byte 0x10                ; 0x1726
    push word [message_delay]        ; 0x1729
    call api_idx_0004_UQUT           ; 0x172d
    pop cx                           ; 0x1730
    mov ax, 8                        ; 0x1731
    push ax                          ; 0x1734
    mov ax, word [bp + 0x8]          ; 0x1735
    inc ax                           ; 0x1738
    push ax                          ; 0x1739
    push word [bp - 0x0002]          ; 0x173a
    call api_idx_003e_JGVR           ; 0x173d
    add sp, byte 6                   ; 0x1740
    test ax, ax                      ; 0x1743
    jne short @..api_idx_00b8_LTRM.l14 ; 0x1745
    jmp near @..api_idx_00b8_LTRM.l16 ; 0x1747
@..api_idx_00b8_LTRM.l14:
    mov ax, 0x15                     ; 0x174a
    push ax                          ; 0x174d
    call random_below                ; 0x174e
    pop cx                           ; 0x1751
    push ax                          ; 0x1752
    mov ax, 0x248                    ; 0x1753
    imul word [bp - 0x0002]          ; 0x1756
    mov bx, ax                       ; 0x1759
    mov al, byte [bx + cell_key_grid + 0x137] ; 0x175b
    sub ah, ah                       ; 0x175f
    mov cx, ax                       ; 0x1761
    pop ax                           ; 0x1763
    cmp ax, cx                       ; 0x1764
    jg short @..api_idx_00b8_LTRM.l15 ; 0x1766
    jmp near @..api_idx_00b8_LTRM.l16 ; 0x1768
@..api_idx_00b8_LTRM.l15:
    lea ax, word [bp - 0x0068]       ; 0x176b
    push ax                          ; 0x176e
    mov ax, 0x1498                   ; 0x176f
    push ax                          ; 0x1772
    call load_message_string         ; 0x1773
    add sp, byte 4                   ; 0x1776
    mov ax, 0                        ; 0x1779
    push ax                          ; 0x177c
    push ax                          ; 0x177d
    mov ax, 0x41                     ; 0x177e
    push ax                          ; 0x1781
    mov ax, 1                        ; 0x1782
    push ax                          ; 0x1785
    mov ax, dseg_90b7                ; 0x1786
    push ax                          ; 0x1789
    mov ax, dseg_90b6                ; 0x178a
    push ax                          ; 0x178d
    lea ax, word [bp - 0x0068]       ; 0x178e
    push ax                          ; 0x1791
    push word [bp - 0x0002]          ; 0x1792
    call api_idx_0002_RJQH           ; 0x1795
    add sp, byte 0x10                ; 0x1798
    push word [message_delay]        ; 0x179b
    call api_idx_0004_UQUT           ; 0x179f
    pop cx                           ; 0x17a2
    mov ax, 8                        ; 0x17a3
    push ax                          ; 0x17a6
    mov ax, word [bp + 0x8]          ; 0x17a7
    shl ax, 1                        ; 0x17aa
    inc ax                           ; 0x17ac
    inc ax                           ; 0x17ad
    push ax                          ; 0x17ae
    push word [bp - 0x0002]          ; 0x17af
    call api_idx_003e_JGVR           ; 0x17b2
    add sp, byte 6                   ; 0x17b5
    test ax, ax                      ; 0x17b8
    je short @..api_idx_00b8_LTRM.l16 ; 0x17ba
    mov ax, 0x15                     ; 0x17bc
    push ax                          ; 0x17bf
    call random_below                ; 0x17c0
    pop cx                           ; 0x17c3
    push ax                          ; 0x17c4
    mov ax, 0x248                    ; 0x17c5
    imul word [bp - 0x0002]          ; 0x17c8
    mov bx, ax                       ; 0x17cb
    mov al, byte [bx + cell_key_grid + 0x137] ; 0x17cd
    sub ah, ah                       ; 0x17d1
    mov cx, ax                       ; 0x17d3
    pop ax                           ; 0x17d5
    cmp ax, cx                       ; 0x17d6
    jle short @..api_idx_00b8_LTRM.l16 ; 0x17d8
    mov ax, 3                        ; 0x17da
    push ax                          ; 0x17dd
    mov ax, 0xb                      ; 0x17de
    push ax                          ; 0x17e1
    mov ax, 0x1499                   ; 0x17e2
    push ax                          ; 0x17e5
    push word [bp - 0x0002]          ; 0x17e6
    call api_idx_005a_SIOK           ; 0x17e9
    add sp, byte 8                   ; 0x17ec
@..api_idx_00b8_LTRM.l16:
    lea ax, word [bp - 0x0068]       ; 0x17ef
    push ax                          ; 0x17f2
    mov ax, 0x149a                   ; 0x17f3
    push ax                          ; 0x17f6
    call load_message_string         ; 0x17f7
    add sp, byte 4                   ; 0x17fa
    mov ax, 0xb8                     ; 0x17fd
    push ax                          ; 0x1800
    mov ax, 1                        ; 0x1801
    push ax                          ; 0x1804
    push word [bss_91d4]             ; 0x1805
    lea ax, word [bp - 0x0068]       ; 0x1809
    push ax                          ; 0x180c
    call loc_OOHI                    ; 0x180d
    add sp, byte 8                   ; 0x1810
@..api_idx_00b8_LTRM.l17:
    jmp near @..api_idx_00b8_LTRM.l61 ; 0x1813
jumptable_1fa3_case_5:
    mov ax, 0                        ; 0x1816
    push ax                          ; 0x1819
    push ax                          ; 0x181a
    call api_idx_0050_MPOT           ; 0x181b
    add sp, byte 4                   ; 0x181e
    mov ax, 3                        ; 0x1821
    push ax                          ; 0x1824
    push ax                          ; 0x1825
    lea ax, word [bp - 0x000c]       ; 0x1826
    push ax                          ; 0x1829
    lea ax, word [bp - 0x000a]       ; 0x182a
    push ax                          ; 0x182d
    lea ax, word [bp - 0x0008]       ; 0x182e
    push ax                          ; 0x1831
    call api_idx_0006_UHJH           ; 0x1832
    add sp, byte 0x0a                ; 0x1835
    mov ax, word [bp - 0x0008]       ; 0x1838
    mov word [bp - 0x0002], ax       ; 0x183b
    jmp short @..api_idx_00b8_LTRM.l21 ; 0x183e
@..api_idx_00b8_LTRM.l18:
    mov ax, word [bp - 0x0002]       ; 0x1840
    shl ax, 1                        ; 0x1843
    mov bx, ax                       ; 0x1845
    add bx, bp                       ; 0x1847
    cmp word [bx - 0x0018], byte 0   ; 0x1849
    jne short @..api_idx_00b8_LTRM.l20 ; 0x184d
    mov ax, 0x64                     ; 0x184f
    push ax                          ; 0x1852
    call random_below                ; 0x1853
    pop cx                           ; 0x1856
    push ax                          ; 0x1857
    mov ax, 0x248                    ; 0x1858
    imul word [bp - 0x0002]          ; 0x185b
    mov bx, ax                       ; 0x185e
    mov al, byte [bx + cell_key_grid + 0x16f] ; 0x1860
    sub ah, ah                       ; 0x1864
    mov cx, ax                       ; 0x1866
    pop ax                           ; 0x1868
    cmp ax, cx                       ; 0x1869
    jg short @..api_idx_00b8_LTRM.l19 ; 0x186b
    mov ax, word [bp - 0x0002]       ; 0x186d
    cmp ax, word [bp - 0x000c]       ; 0x1870
    jne short @..api_idx_00b8_LTRM.l20 ; 0x1873
@..api_idx_00b8_LTRM.l19:
    mov ax, 6                        ; 0x1875
    push ax                          ; 0x1878
    mov ax, word [bp + 0x8]          ; 0x1879
    mov cx, 2                        ; 0x187c
    cwd                              ; 0x187f
    idiv cx                          ; 0x1880
    inc ax                           ; 0x1882
    push ax                          ; 0x1883
    push word [bp - 0x0002]          ; 0x1884
    call api_idx_003e_JGVR           ; 0x1887
    add sp, byte 6                   ; 0x188a
@..api_idx_00b8_LTRM.l20:
    inc word [bp - 0x0002]           ; 0x188d
@..api_idx_00b8_LTRM.l21:
    mov ax, word [bp - 0x0008]       ; 0x1890
    add ax, word [bp - 0x000a]       ; 0x1893
    cmp ax, word [bp - 0x0002]       ; 0x1896
    jg short @..api_idx_00b8_LTRM.l18 ; 0x1899
    jmp near @..api_idx_00b8_LTRM.l61 ; 0x189b
jumptable_1fa3_case_6:
    mov ax, 0x17                     ; 0x189e
    push ax                          ; 0x18a1
    mov ax, 0                        ; 0x18a2
    push ax                          ; 0x18a5
    call api_idx_0050_MPOT           ; 0x18a6
    add sp, byte 4                   ; 0x18a9
    mov ax, 0                        ; 0x18ac
    push ax                          ; 0x18af
    mov ax, 6                        ; 0x18b0
    push ax                          ; 0x18b3
    lea ax, word [bp - 0x000c]       ; 0x18b4
    push ax                          ; 0x18b7
    lea ax, word [bp - 0x000a]       ; 0x18b8
    push ax                          ; 0x18bb
    lea ax, word [bp - 0x0008]       ; 0x18bc
    push ax                          ; 0x18bf
    call api_idx_0006_UHJH           ; 0x18c0
    add sp, byte 0x0a                ; 0x18c3
    mov ax, word [bp - 0x0008]       ; 0x18c6
    mov word [bp - 0x0002], ax       ; 0x18c9
    jmp short @..api_idx_00b8_LTRM.l25 ; 0x18cc
@..api_idx_00b8_LTRM.l22:
    mov ax, word [bp - 0x0002]       ; 0x18ce
    shl ax, 1                        ; 0x18d1
    mov bx, ax                       ; 0x18d3
    add bx, bp                       ; 0x18d5
    cmp word [bx - 0x0018], byte 0   ; 0x18d7
    jne short @..api_idx_00b8_LTRM.l24 ; 0x18db
    mov ax, 0x64                     ; 0x18dd
    push ax                          ; 0x18e0
    call random_below                ; 0x18e1
    pop cx                           ; 0x18e4
    push ax                          ; 0x18e5
    mov ax, 0x248                    ; 0x18e6
    imul word [bp - 0x0002]          ; 0x18e9
    mov bx, ax                       ; 0x18ec
    mov al, byte [bx + cell_key_grid + 0x16d] ; 0x18ee
    sub ah, ah                       ; 0x18f2
    mov cx, ax                       ; 0x18f4
    pop ax                           ; 0x18f6
    cmp ax, cx                       ; 0x18f7
    jg short @..api_idx_00b8_LTRM.l23 ; 0x18f9
    mov ax, word [bp - 0x0002]       ; 0x18fb
    cmp ax, word [bp - 0x000c]       ; 0x18fe
    jne short @..api_idx_00b8_LTRM.l24 ; 0x1901
@..api_idx_00b8_LTRM.l23:
    mov ax, 4                        ; 0x1903
    push ax                          ; 0x1906
    mov ax, word [bp + 0x8]          ; 0x1907
    mov cx, 2                        ; 0x190a
    cwd                              ; 0x190d
    idiv cx                          ; 0x190e
    inc ax                           ; 0x1910
    push ax                          ; 0x1911
    push word [bp - 0x0002]          ; 0x1912
    call api_idx_003e_JGVR           ; 0x1915
    add sp, byte 6                   ; 0x1918
    test ax, ax                      ; 0x191b
    je short @..api_idx_00b8_LTRM.l24 ; 0x191d
    mov ax, 0x32                     ; 0x191f
    push ax                          ; 0x1922
    mov ax, 0xa                      ; 0x1923
    push ax                          ; 0x1926
    push ax                          ; 0x1927
    mov ax, 8                        ; 0x1928
    push ax                          ; 0x192b
    mov ax, 5                        ; 0x192c
    push ax                          ; 0x192f
    mov ax, 0x149b                   ; 0x1930
    push ax                          ; 0x1933
    push word [bp - 0x0002]          ; 0x1934
    call api_idx_0056_VTNO           ; 0x1937
    add sp, byte 0x0e                ; 0x193a
@..api_idx_00b8_LTRM.l24:
    inc word [bp - 0x0002]           ; 0x193d
@..api_idx_00b8_LTRM.l25:
    mov ax, word [bp - 0x0008]       ; 0x1940
    add ax, word [bp - 0x000a]       ; 0x1943
    cmp ax, word [bp - 0x0002]       ; 0x1946
    jg short @..api_idx_00b8_LTRM.l22 ; 0x1949
    jmp near @..api_idx_00b8_LTRM.l61 ; 0x194b
jumptable_1fa3_case_7:
    mov ax, 0xe                      ; 0x194e
    push ax                          ; 0x1951
    mov ax, 0                        ; 0x1952
    push ax                          ; 0x1955
    call api_idx_0050_MPOT           ; 0x1956
    add sp, byte 4                   ; 0x1959
    mov ax, 2                        ; 0x195c
    push ax                          ; 0x195f
    mov ax, 4                        ; 0x1960
    push ax                          ; 0x1963
    lea ax, word [bp - 0x000c]       ; 0x1964
    push ax                          ; 0x1967
    lea ax, word [bp - 0x000a]       ; 0x1968
    push ax                          ; 0x196b
    lea ax, word [bp - 0x0008]       ; 0x196c
    push ax                          ; 0x196f
    call api_idx_0006_UHJH           ; 0x1970
    add sp, byte 0x0a                ; 0x1973
    mov ax, word [bp - 0x0008]       ; 0x1976
    mov word [bp - 0x0002], ax       ; 0x1979
    jmp short @..api_idx_00b8_LTRM.l29 ; 0x197c
@..api_idx_00b8_LTRM.l26:
    mov ax, word [bp - 0x0002]       ; 0x197e
    shl ax, 1                        ; 0x1981
    mov bx, ax                       ; 0x1983
    add bx, bp                       ; 0x1985
    cmp word [bx - 0x0018], byte 0   ; 0x1987
    jne short @..api_idx_00b8_LTRM.l28 ; 0x198b
    mov ax, 0x64                     ; 0x198d
    push ax                          ; 0x1990
    call random_below                ; 0x1991
    pop cx                           ; 0x1994
    push ax                          ; 0x1995
    mov ax, 0x248                    ; 0x1996
    imul word [bp - 0x0002]          ; 0x1999
    mov bx, ax                       ; 0x199c
    mov al, byte [bx + cell_key_grid + 0x172] ; 0x199e
    sub ah, ah                       ; 0x19a2
    mov cx, ax                       ; 0x19a4
    pop ax                           ; 0x19a6
    cmp ax, cx                       ; 0x19a7
    jg short @..api_idx_00b8_LTRM.l27 ; 0x19a9
    mov ax, word [bp - 0x0002]       ; 0x19ab
    cmp ax, word [bp - 0x000c]       ; 0x19ae
    jne short @..api_idx_00b8_LTRM.l28 ; 0x19b1
@..api_idx_00b8_LTRM.l27:
    mov ax, 7                        ; 0x19b3
    push ax                          ; 0x19b6
    mov ax, word [bp + 0x8]          ; 0x19b7
    mov cx, 2                        ; 0x19ba
    cwd                              ; 0x19bd
    idiv cx                          ; 0x19be
    inc ax                           ; 0x19c0
    push ax                          ; 0x19c1
    push word [bp - 0x0002]          ; 0x19c2
    call api_idx_003e_JGVR           ; 0x19c5
    add sp, byte 6                   ; 0x19c8
    test ax, ax                      ; 0x19cb
    je short @..api_idx_00b8_LTRM.l28 ; 0x19cd
    mov ax, 0x32                     ; 0x19cf
    push ax                          ; 0x19d2
    mov ax, 0xa                      ; 0x19d3
    push ax                          ; 0x19d6
    push ax                          ; 0x19d7
    mov ax, 7                        ; 0x19d8
    push ax                          ; 0x19db
    mov ax, 0                        ; 0x19dc
    push ax                          ; 0x19df
    mov ax, 0x1489                   ; 0x19e0
    push ax                          ; 0x19e3
    push word [bp - 0x0002]          ; 0x19e4
    call api_idx_0056_VTNO           ; 0x19e7
    add sp, byte 0x0e                ; 0x19ea
@..api_idx_00b8_LTRM.l28:
    inc word [bp - 0x0002]           ; 0x19ed
@..api_idx_00b8_LTRM.l29:
    mov ax, word [bp - 0x0008]       ; 0x19f0
    add ax, word [bp - 0x000a]       ; 0x19f3
    cmp ax, word [bp - 0x0002]       ; 0x19f6
    jg short @..api_idx_00b8_LTRM.l26 ; 0x19f9
    jmp near @..api_idx_00b8_LTRM.l61 ; 0x19fb
jumptable_1fa3_case_8:
    mov ax, 0xc                      ; 0x19fe
    push ax                          ; 0x1a01
    mov ax, 0                        ; 0x1a02
    push ax                          ; 0x1a05
    call api_idx_0050_MPOT           ; 0x1a06
    add sp, byte 4                   ; 0x1a09
    mov ax, 2                        ; 0x1a0c
    push ax                          ; 0x1a0f
    mov ax, 4                        ; 0x1a10
    push ax                          ; 0x1a13
    lea ax, word [bp - 0x000c]       ; 0x1a14
    push ax                          ; 0x1a17
    lea ax, word [bp - 0x000a]       ; 0x1a18
    push ax                          ; 0x1a1b
    lea ax, word [bp - 0x0008]       ; 0x1a1c
    push ax                          ; 0x1a1f
    call api_idx_0006_UHJH           ; 0x1a20
    add sp, byte 0x0a                ; 0x1a23
    mov ax, word [bp - 0x0008]       ; 0x1a26
    mov word [bp - 0x0002], ax       ; 0x1a29
    jmp near @..api_idx_00b8_LTRM.l35 ; 0x1a2c
@..api_idx_00b8_LTRM.l30:
    mov ax, word [bp - 0x0002]       ; 0x1a2f
    shl ax, 1                        ; 0x1a32
    mov bx, ax                       ; 0x1a34
    add bx, bp                       ; 0x1a36
    cmp word [bx - 0x0018], byte 0   ; 0x1a38
    je short @..api_idx_00b8_LTRM.l31 ; 0x1a3c
    jmp near @..api_idx_00b8_LTRM.l34 ; 0x1a3e
@..api_idx_00b8_LTRM.l31:
    mov ax, 0x64                     ; 0x1a41
    push ax                          ; 0x1a44
    call random_below                ; 0x1a45
    pop cx                           ; 0x1a48
    push ax                          ; 0x1a49
    mov ax, 0x248                    ; 0x1a4a
    imul word [bp - 0x0002]          ; 0x1a4d
    mov bx, ax                       ; 0x1a50
    mov al, byte [bx + cell_key_grid + 0x16a] ; 0x1a52
    sub ah, ah                       ; 0x1a56
    mov cx, ax                       ; 0x1a58
    pop ax                           ; 0x1a5a
    cmp ax, cx                       ; 0x1a5b
    jg short @..api_idx_00b8_LTRM.l32 ; 0x1a5d
    mov ax, word [bp - 0x0002]       ; 0x1a5f
    cmp ax, word [bp - 0x000c]       ; 0x1a62
    je short @..api_idx_00b8_LTRM.l32 ; 0x1a65
    jmp near @..api_idx_00b8_LTRM.l34 ; 0x1a67
@..api_idx_00b8_LTRM.l32:
    mov ax, 6                        ; 0x1a6a
    push ax                          ; 0x1a6d
    call random_below                ; 0x1a6e
    pop cx                           ; 0x1a71
    jmp near @..api_idx_00b8_LTRM.l33 ; 0x1a72
jumptable_1b19_case_0:
    mov ax, 0x18                     ; 0x1a75
    push ax                          ; 0x1a78
    mov ax, word [bp + 0x8]          ; 0x1a79
    inc ax                           ; 0x1a7c
    push ax                          ; 0x1a7d
    push word [bp - 0x0002]          ; 0x1a7e
    call api_idx_003e_JGVR           ; 0x1a81
    add sp, byte 6                   ; 0x1a84
    jmp near @..api_idx_00b8_LTRM.l34 ; 0x1a87
jumptable_1b19_case_1:
    mov ax, 0x32                     ; 0x1a8a
    push ax                          ; 0x1a8d
    mov ax, 0xa                      ; 0x1a8e
    push ax                          ; 0x1a91
    push ax                          ; 0x1a92
    mov ax, 4                        ; 0x1a93
    push ax                          ; 0x1a96
    mov ax, 0                        ; 0x1a97
    push ax                          ; 0x1a9a
    mov ax, 0x1486                   ; 0x1a9b
    push ax                          ; 0x1a9e
    push word [bp - 0x0002]          ; 0x1a9f
    call api_idx_0056_VTNO           ; 0x1aa2
    add sp, byte 0x0e                ; 0x1aa5
    jmp near @..api_idx_00b8_LTRM.l34 ; 0x1aa8
jumptable_1b19_case_2:
    mov ax, 0x32                     ; 0x1aab
    push ax                          ; 0x1aae
    mov ax, 0xa                      ; 0x1aaf
    push ax                          ; 0x1ab2
    push ax                          ; 0x1ab3
    mov ax, 2                        ; 0x1ab4
    push ax                          ; 0x1ab7
    mov ax, 0                        ; 0x1ab8
    push ax                          ; 0x1abb
    mov ax, 0x1484                   ; 0x1abc
    push ax                          ; 0x1abf
    push word [bp - 0x0002]          ; 0x1ac0
    call api_idx_0056_VTNO           ; 0x1ac3
    add sp, byte 0x0e                ; 0x1ac6
    jmp short @..api_idx_00b8_LTRM.l34 ; 0x1ac9
jumptable_1b19_case_3:
    mov ax, 0x32                     ; 0x1acb
    push ax                          ; 0x1ace
    mov ax, 0xa                      ; 0x1acf
    push ax                          ; 0x1ad2
    push ax                          ; 0x1ad3
    mov ax, 3                        ; 0x1ad4
    push ax                          ; 0x1ad7
    mov ax, 0                        ; 0x1ad8
    push ax                          ; 0x1adb
    mov ax, 0x1485                   ; 0x1adc
    push ax                          ; 0x1adf
    push word [bp - 0x0002]          ; 0x1ae0
    call api_idx_0056_VTNO           ; 0x1ae3
    add sp, byte 0x0e                ; 0x1ae6
    jmp short @..api_idx_00b8_LTRM.l34 ; 0x1ae9
jumptable_1b19_case_4:
    mov ax, 3                        ; 0x1aeb
    push ax                          ; 0x1aee
    mov ax, 0                        ; 0x1aef
    push ax                          ; 0x1af2
    mov ax, 0x148c                   ; 0x1af3
    push ax                          ; 0x1af6
    push word [bp - 0x0002]          ; 0x1af7
    call api_idx_005a_SIOK           ; 0x1afa
    add sp, byte 8                   ; 0x1afd
    jmp short @..api_idx_00b8_LTRM.l34 ; 0x1b00
jumptable_1b19_case_5:
    mov ax, 2                        ; 0x1b02
    push ax                          ; 0x1b05
    mov ax, 0                        ; 0x1b06
    push ax                          ; 0x1b09
    mov ax, 0x148f                   ; 0x1b0a
    push ax                          ; 0x1b0d
    push word [bp - 0x0002]          ; 0x1b0e
    call api_idx_005a_SIOK           ; 0x1b11
    add sp, byte 8                   ; 0x1b14
    jmp short @..api_idx_00b8_LTRM.l34 ; 0x1b17
jumptable_1b19:
    dw jumptable_1b19_case_0 - IMAGE_BASE + __zres_end ; 0x1b19
    dw jumptable_1b19_case_1 - IMAGE_BASE + __zres_end ; 0x1b1b
    dw jumptable_1b19_case_2 - IMAGE_BASE + __zres_end ; 0x1b1d
    dw jumptable_1b19_case_3 - IMAGE_BASE + __zres_end ; 0x1b1f
    dw jumptable_1b19_case_4 - IMAGE_BASE + __zres_end ; 0x1b21
    dw jumptable_1b19_case_5 - IMAGE_BASE + __zres_end ; 0x1b23
@..api_idx_00b8_LTRM.l33:
    cmp ax, strict word 6            ; 0x1b25
    jae short @..api_idx_00b8_LTRM.l34 ; 0x1b28
    xchg bx, ax                      ; 0x1b2a
    shl bx, 1                        ; 0x1b2b
    jmp [cs:bx + jumptable_1b19 - IMAGE_BASE + __zres_end] ; 0x1b2d
@..api_idx_00b8_LTRM.l34:
    inc word [bp - 0x0002]           ; 0x1b32
@..api_idx_00b8_LTRM.l35:
    mov ax, word [bp - 0x0008]       ; 0x1b35
    add ax, word [bp - 0x000a]       ; 0x1b38
    cmp ax, word [bp - 0x0002]       ; 0x1b3b
    jle short @..api_idx_00b8_LTRM.l36 ; 0x1b3e
    jmp near @..api_idx_00b8_LTRM.l30 ; 0x1b40
@..api_idx_00b8_LTRM.l36:
    jmp near @..api_idx_00b8_LTRM.l61 ; 0x1b43
jumptable_1fa3_case_9:
    mov ax, 8                        ; 0x1b46
    push ax                          ; 0x1b49
    mov ax, 0                        ; 0x1b4a
    push ax                          ; 0x1b4d
    call api_idx_0050_MPOT           ; 0x1b4e
    add sp, byte 4                   ; 0x1b51
    mov ax, 2                        ; 0x1b54
    push ax                          ; 0x1b57
    mov ax, 4                        ; 0x1b58
    push ax                          ; 0x1b5b
    lea ax, word [bp - 0x000c]       ; 0x1b5c
    push ax                          ; 0x1b5f
    lea ax, word [bp - 0x000a]       ; 0x1b60
    push ax                          ; 0x1b63
    lea ax, word [bp - 0x0008]       ; 0x1b64
    push ax                          ; 0x1b67
    call api_idx_0006_UHJH           ; 0x1b68
    add sp, byte 0x0a                ; 0x1b6b
    mov ax, word [bp - 0x0008]       ; 0x1b6e
    mov word [bp - 0x0002], ax       ; 0x1b71
    jmp short @..api_idx_00b8_LTRM.l40 ; 0x1b74
@..api_idx_00b8_LTRM.l37:
    mov ax, word [bp - 0x0002]       ; 0x1b76
    shl ax, 1                        ; 0x1b79
    mov bx, ax                       ; 0x1b7b
    add bx, bp                       ; 0x1b7d
    cmp word [bx - 0x0018], byte 0   ; 0x1b7f
    jne short @..api_idx_00b8_LTRM.l39 ; 0x1b83
    mov ax, 0x64                     ; 0x1b85
    push ax                          ; 0x1b88
    call random_below                ; 0x1b89
    pop cx                           ; 0x1b8c
    push ax                          ; 0x1b8d
    mov ax, 0x248                    ; 0x1b8e
    imul word [bp - 0x0002]          ; 0x1b91
    mov bx, ax                       ; 0x1b94
    mov al, byte [bx + cell_key_grid + 0x169] ; 0x1b96
    sub ah, ah                       ; 0x1b9a
    mov cx, ax                       ; 0x1b9c
    pop ax                           ; 0x1b9e
    cmp ax, cx                       ; 0x1b9f
    jg short @..api_idx_00b8_LTRM.l38 ; 0x1ba1
    mov ax, word [bp - 0x0002]       ; 0x1ba3
    cmp ax, word [bp - 0x000c]       ; 0x1ba6
    jne short @..api_idx_00b8_LTRM.l39 ; 0x1ba9
@..api_idx_00b8_LTRM.l38:
    mov ax, 0xa                      ; 0x1bab
    push ax                          ; 0x1bae
    mov ax, word [bp + 0x8]          ; 0x1baf
    mov cx, 2                        ; 0x1bb2
    cwd                              ; 0x1bb5
    idiv cx                          ; 0x1bb6
    inc ax                           ; 0x1bb8
    push ax                          ; 0x1bb9
    push word [bp - 0x0002]          ; 0x1bba
    call api_idx_003e_JGVR           ; 0x1bbd
    add sp, byte 6                   ; 0x1bc0
@..api_idx_00b8_LTRM.l39:
    inc word [bp - 0x0002]           ; 0x1bc3
@..api_idx_00b8_LTRM.l40:
    mov ax, word [bp - 0x0008]       ; 0x1bc6
    add ax, word [bp - 0x000a]       ; 0x1bc9
    cmp ax, word [bp - 0x0002]       ; 0x1bcc
    jg short @..api_idx_00b8_LTRM.l37 ; 0x1bcf
    jmp near @..api_idx_00b8_LTRM.l61 ; 0x1bd1
jumptable_1fa3_case_10:
    mov ax, 0xe                      ; 0x1bd4
    push ax                          ; 0x1bd7
    push word [bp - 0x0002]          ; 0x1bd8
    call api_idx_0050_MPOT           ; 0x1bdb
    add sp, byte 4                   ; 0x1bde
    lea ax, word [bp - 0x0018]       ; 0x1be1
    push ax                          ; 0x1be4
    call api_idx_0004_VSSI           ; 0x1be5
    pop cx                           ; 0x1be8
    mov word [bp - 0x0002], ax       ; 0x1be9
    cmp ax, strict word 0xffff       ; 0x1bec
    je short @..api_idx_00b8_LTRM.l41 ; 0x1bef
    mov ax, 2                        ; 0x1bf1
    push ax                          ; 0x1bf4
    mov ax, 0                        ; 0x1bf5
    push ax                          ; 0x1bf8
    mov ax, 0x148f                   ; 0x1bf9
    push ax                          ; 0x1bfc
    push word [bp - 0x0002]          ; 0x1bfd
    call api_idx_005a_SIOK           ; 0x1c00
    add sp, byte 8                   ; 0x1c03
@..api_idx_00b8_LTRM.l41:
    jmp near @..api_idx_00b8_LTRM.l61 ; 0x1c06
jumptable_1fa3_case_11:
    mov ax, 0xc                      ; 0x1c09
    push ax                          ; 0x1c0c
    mov ax, 0                        ; 0x1c0d
    push ax                          ; 0x1c10
    call api_idx_0050_MPOT           ; 0x1c11
    add sp, byte 4                   ; 0x1c14
    mov ax, 2                        ; 0x1c17
    push ax                          ; 0x1c1a
    mov ax, 4                        ; 0x1c1b
    push ax                          ; 0x1c1e
    lea ax, word [bp - 0x000c]       ; 0x1c1f
    push ax                          ; 0x1c22
    lea ax, word [bp - 0x000a]       ; 0x1c23
    push ax                          ; 0x1c26
    lea ax, word [bp - 0x0008]       ; 0x1c27
    push ax                          ; 0x1c2a
    call api_idx_0006_UHJH           ; 0x1c2b
    add sp, byte 0x0a                ; 0x1c2e
    mov ax, word [bp - 0x0008]       ; 0x1c31
    mov word [bp - 0x0002], ax       ; 0x1c34
    jmp short @..api_idx_00b8_LTRM.l45 ; 0x1c37
@..api_idx_00b8_LTRM.l42:
    mov ax, word [bp - 0x0002]       ; 0x1c39
    shl ax, 1                        ; 0x1c3c
    mov bx, ax                       ; 0x1c3e
    add bx, bp                       ; 0x1c40
    cmp word [bx - 0x0018], byte 0   ; 0x1c42
    jne short @..api_idx_00b8_LTRM.l44 ; 0x1c46
    mov ax, 0x32                     ; 0x1c48
    push ax                          ; 0x1c4b
    mov ax, 0xa                      ; 0x1c4c
    push ax                          ; 0x1c4f
    push ax                          ; 0x1c50
    mov ax, 3                        ; 0x1c51
    push ax                          ; 0x1c54
    mov ax, 4                        ; 0x1c55
    mov cx, word [bp - 0x0002]       ; 0x1c58
    cmp cx, word [bp - 0x000c]       ; 0x1c5b
    jne short @..api_idx_00b8_LTRM.l43 ; 0x1c5e
    mov ax, 0                        ; 0x1c60
@..api_idx_00b8_LTRM.l43:
    push ax                          ; 0x1c63
    mov ax, 0x1485                   ; 0x1c64
    push ax                          ; 0x1c67
    push cx                          ; 0x1c68
    call api_idx_0056_VTNO           ; 0x1c69
    add sp, byte 0x0e                ; 0x1c6c
@..api_idx_00b8_LTRM.l44:
    inc word [bp - 0x0002]           ; 0x1c6f
@..api_idx_00b8_LTRM.l45:
    mov ax, word [bp - 0x0008]       ; 0x1c72
    add ax, word [bp - 0x000a]       ; 0x1c75
    cmp ax, word [bp - 0x0002]       ; 0x1c78
    jg short @..api_idx_00b8_LTRM.l42 ; 0x1c7b
    jmp near @..api_idx_00b8_LTRM.l61 ; 0x1c7d
jumptable_1fa3_case_12:
    mov ax, 0x16                     ; 0x1c80
    push ax                          ; 0x1c83
    mov ax, 0                        ; 0x1c84
    push ax                          ; 0x1c87
    call api_idx_0050_MPOT           ; 0x1c88
    add sp, byte 4                   ; 0x1c8b
    mov ax, 0                        ; 0x1c8e
    push ax                          ; 0x1c91
    mov ax, 6                        ; 0x1c92
    push ax                          ; 0x1c95
    lea ax, word [bp - 0x000c]       ; 0x1c96
    push ax                          ; 0x1c99
    lea ax, word [bp - 0x000a]       ; 0x1c9a
    push ax                          ; 0x1c9d
    lea ax, word [bp - 0x0008]       ; 0x1c9e
    push ax                          ; 0x1ca1
    call api_idx_0006_UHJH           ; 0x1ca2
    add sp, byte 0x0a                ; 0x1ca5
    mov ax, word [bp - 0x0008]       ; 0x1ca8
    mov word [bp - 0x0002], ax       ; 0x1cab
    jmp near @..api_idx_00b8_LTRM.l52 ; 0x1cae
@..api_idx_00b8_LTRM.l46:
    mov ax, word [bp - 0x0002]       ; 0x1cb1
    shl ax, 1                        ; 0x1cb4
    mov bx, ax                       ; 0x1cb6
    add bx, bp                       ; 0x1cb8
    cmp word [bx - 0x0018], byte 0   ; 0x1cba
    je short @..api_idx_00b8_LTRM.l47 ; 0x1cbe
    jmp near @..api_idx_00b8_LTRM.l51 ; 0x1cc0
@..api_idx_00b8_LTRM.l47:
    mov ax, 0x64                     ; 0x1cc3
    push ax                          ; 0x1cc6
    call random_below                ; 0x1cc7
    pop cx                           ; 0x1cca
    push ax                          ; 0x1ccb
    mov ax, 0x248                    ; 0x1ccc
    imul word [bp - 0x0002]          ; 0x1ccf
    mov bx, ax                       ; 0x1cd2
    mov al, byte [bx + cell_key_grid + 0x174] ; 0x1cd4
    sub ah, ah                       ; 0x1cd8
    mov cx, ax                       ; 0x1cda
    pop ax                           ; 0x1cdc
    cmp ax, cx                       ; 0x1cdd
    jg short @..api_idx_00b8_LTRM.l48 ; 0x1cdf
    mov ax, word [bp - 0x0002]       ; 0x1ce1
    cmp ax, word [bp - 0x000c]       ; 0x1ce4
    je short @..api_idx_00b8_LTRM.l48 ; 0x1ce7
    jmp near @..api_idx_00b8_LTRM.l51 ; 0x1ce9
@..api_idx_00b8_LTRM.l48:
    mov word [bp - 0x0004], 0        ; 0x1cec
@..api_idx_00b8_LTRM.l49:
    mov ax, 0x248                    ; 0x1cf1
    imul word [bp - 0x0002]          ; 0x1cf4
    mov cx, word [bp - 0x0004]       ; 0x1cf7
    shl cx, 1                        ; 0x1cfa
    shl cx, 1                        ; 0x1cfc
    add ax, cx                       ; 0x1cfe
    mov bx, ax                       ; 0x1d00
    push word [bx + pc_spell_power_cap + 0x6] ; 0x1d02
    mov ax, 0                        ; 0x1d06
    push ax                          ; 0x1d09
    push word [bp + 0x8]             ; 0x1d0a
    mov ax, 8                        ; 0x1d0d
    push ax                          ; 0x1d10
    mov ax, word [bp + 0x8]          ; 0x1d11
    inc ax                           ; 0x1d14
    push ax                          ; 0x1d15
    call store_word_and_pair         ; 0x1d16
    add sp, byte 6                   ; 0x1d19
    mov cx, ax                       ; 0x1d1c
    sub sp, byte 4                   ; 0x1d1e
    mov ax, sp                       ; 0x1d21
    mov dx, ss                       ; 0x1d23
    mov es, dx                       ; 0x1d25
    mov si, cx                       ; 0x1d27
    mov di, ax                       ; 0x1d29
    movsw                            ; 0x1d2b
    movsw                            ; 0x1d2c
    call add_random_steps            ; 0x1d2d
    add sp, byte 4                   ; 0x1d30
    mov cx, ax                       ; 0x1d33
    mov ax, 0x248                    ; 0x1d35
    imul word [bp - 0x0002]          ; 0x1d38
    mov dx, word [bp - 0x0004]       ; 0x1d3b
    shl dx, 1                        ; 0x1d3e
    shl dx, 1                        ; 0x1d40
    add ax, dx                       ; 0x1d42
    mov bx, ax                       ; 0x1d44
    mov ax, word [bx + pc_spell_power_cap + 0x4] ; 0x1d46
    sub ax, cx                       ; 0x1d4a
    push ax                          ; 0x1d4c
    call clamp_between               ; 0x1d4d
    add sp, byte 6                   ; 0x1d50
    push ax                          ; 0x1d53
    mov ax, 0x248                    ; 0x1d54
    imul word [bp - 0x0002]          ; 0x1d57
    mov cx, ax                       ; 0x1d5a
    mov dx, word [bp - 0x0004]       ; 0x1d5c
    shl dx, 1                        ; 0x1d5f
    shl dx, 1                        ; 0x1d61
    add ax, dx                       ; 0x1d63
    mov bx, ax                       ; 0x1d65
    pop ax                           ; 0x1d67
    mov word [bx + pc_spell_power_cap + 0x4], ax ; 0x1d68
    inc word [bp - 0x0004]           ; 0x1d6c
    mov ax, word [bp - 0x0004]       ; 0x1d6f
    cmp ax, strict word 6            ; 0x1d72
    jge short @..api_idx_00b8_LTRM.l50 ; 0x1d75
    jmp near @..api_idx_00b8_LTRM.l49 ; 0x1d77
@..api_idx_00b8_LTRM.l50:
    lea ax, word [bp - 0x0068]       ; 0x1d7a
    push ax                          ; 0x1d7d
    mov ax, 0x1492                   ; 0x1d7e
    push ax                          ; 0x1d81
    call load_message_string         ; 0x1d82
    add sp, byte 4                   ; 0x1d85
    lea ax, word [bp - 0x00b8]       ; 0x1d88
    push ax                          ; 0x1d8c
    mov ax, 0x149c                   ; 0x1d8d
    push ax                          ; 0x1d90
    call load_message_string         ; 0x1d91
    add sp, byte 4                   ; 0x1d94
    mov ax, 0                        ; 0x1d97
    push ax                          ; 0x1d9a
    mov ax, 0xb8                     ; 0x1d9b
    push ax                          ; 0x1d9e
    push ax                          ; 0x1d9f
    mov ax, 1                        ; 0x1da0
    push ax                          ; 0x1da3
    mov ax, dseg_90b8                ; 0x1da4
    push ax                          ; 0x1da7
    lea ax, word [bp - 0x00b8]       ; 0x1da8
    push ax                          ; 0x1dac
    lea ax, word [bp - 0x0068]       ; 0x1dad
    push ax                          ; 0x1db0
    push word [bp - 0x0002]          ; 0x1db1
    call api_idx_0002_RJQH           ; 0x1db4
    add sp, byte 0x10                ; 0x1db7
    mov ax, 1                        ; 0x1dba
    push ax                          ; 0x1dbd
    push word [bp - 0x0002]          ; 0x1dbe
    call draw_party_member_panel     ; 0x1dc1
    add sp, byte 4                   ; 0x1dc4
    push word [message_delay]        ; 0x1dc7
    call api_idx_0004_UQUT           ; 0x1dcb
    pop cx                           ; 0x1dce
@..api_idx_00b8_LTRM.l51:
    inc word [bp - 0x0002]           ; 0x1dcf
@..api_idx_00b8_LTRM.l52:
    mov ax, word [bp - 0x0008]       ; 0x1dd2
    add ax, word [bp - 0x000a]       ; 0x1dd5
    cmp ax, word [bp - 0x0002]       ; 0x1dd8
    jle short @..api_idx_00b8_LTRM.l53 ; 0x1ddb
    jmp near @..api_idx_00b8_LTRM.l46 ; 0x1ddd
@..api_idx_00b8_LTRM.l53:
    jmp near @..api_idx_00b8_LTRM.l61 ; 0x1de0
jumptable_1fa3_case_13:
    mov ax, 0xffff                   ; 0x1de3
    push ax                          ; 0x1de6
    mov ax, 0                        ; 0x1de7
    push ax                          ; 0x1dea
    call api_idx_0050_MPOT           ; 0x1deb
    add sp, byte 4                   ; 0x1dee
    jmp near @..api_idx_00b8_LTRM.l61 ; 0x1df1
jumptable_1fa3_case_14:
    mov ax, 0x16                     ; 0x1df4
    push ax                          ; 0x1df7
    mov ax, 0                        ; 0x1df8
    push ax                          ; 0x1dfb
    call api_idx_0050_MPOT           ; 0x1dfc
    add sp, byte 4                   ; 0x1dff
    jmp near @..api_idx_00b8_LTRM.l61 ; 0x1e02
jumptable_1fa3_case_15:
    lea ax, word [bp - 0x0018]       ; 0x1e05
    push ax                          ; 0x1e08
    call api_idx_0004_VSSI           ; 0x1e09
    pop cx                           ; 0x1e0c
    mov word [bp - 0x0002], ax       ; 0x1e0d
    cmp ax, strict word 0xffff       ; 0x1e10
    jne short @..api_idx_00b8_LTRM.l54 ; 0x1e13
    jmp near @..api_idx_00b8_LTRM.l56 ; 0x1e15
@..api_idx_00b8_LTRM.l54:
    mov ax, 0xc                      ; 0x1e18
    push ax                          ; 0x1e1b
    push word [bp - 0x0002]          ; 0x1e1c
    call api_idx_0050_MPOT           ; 0x1e1f
    add sp, byte 4                   ; 0x1e22
    mov ax, 0x248                    ; 0x1e25
    imul word [bp - 0x0002]          ; 0x1e28
    mov bx, ax                       ; 0x1e2b
    push word [bx + member_pair_points + 0x4] ; 0x1e2d
    mov ax, 1                        ; 0x1e31
    push ax                          ; 0x1e34
    mov ax, 4                        ; 0x1e35
    push ax                          ; 0x1e38
    call random_below                ; 0x1e39
    pop cx                           ; 0x1e3c
    mov cx, ax                       ; 0x1e3d
    mov ax, 0x248                    ; 0x1e3f
    imul word [bp - 0x0002]          ; 0x1e42
    mov bx, ax                       ; 0x1e45
    mov ax, word [bx + member_pair_points + 0x4] ; 0x1e47
    sub ax, cx                       ; 0x1e4b
    inc ax                           ; 0x1e4d
    push ax                          ; 0x1e4e
    call clamp_between               ; 0x1e4f
    add sp, byte 6                   ; 0x1e52
    push ax                          ; 0x1e55
    mov ax, 0x248                    ; 0x1e56
    imul word [bp - 0x0002]          ; 0x1e59
    mov bx, ax                       ; 0x1e5c
    pop ax                           ; 0x1e5e
    mov word [bx + member_pair_points + 0x4], ax ; 0x1e5f
    cmp ax, word [bx + member_pair_points + 0x2] ; 0x1e63
    jge short @..api_idx_00b8_LTRM.l55 ; 0x1e67
    mov word [bx + member_pair_points + 0x2], ax ; 0x1e69
@..api_idx_00b8_LTRM.l55:
    lea ax, word [bp - 0x0068]       ; 0x1e6d
    push ax                          ; 0x1e70
    mov ax, 0x1492                   ; 0x1e71
    push ax                          ; 0x1e74
    call load_message_string         ; 0x1e75
    add sp, byte 4                   ; 0x1e78
    lea ax, word [bp - 0x00b8]       ; 0x1e7b
    push ax                          ; 0x1e7f
    mov ax, 0x1495                   ; 0x1e80
    push ax                          ; 0x1e83
    call load_message_string         ; 0x1e84
    add sp, byte 4                   ; 0x1e87
    mov ax, 0                        ; 0x1e8a
    push ax                          ; 0x1e8d
    mov ax, 0xb8                     ; 0x1e8e
    push ax                          ; 0x1e91
    push ax                          ; 0x1e92
    mov ax, 1                        ; 0x1e93
    push ax                          ; 0x1e96
    mov ax, dseg_90b9                ; 0x1e97
    push ax                          ; 0x1e9a
    lea ax, word [bp - 0x00b8]       ; 0x1e9b
    push ax                          ; 0x1e9f
    lea ax, word [bp - 0x0068]       ; 0x1ea0
    push ax                          ; 0x1ea3
    push word [bp - 0x0002]          ; 0x1ea4
    call api_idx_0002_RJQH           ; 0x1ea7
    add sp, byte 0x10                ; 0x1eaa
    push word [message_delay]        ; 0x1ead
    call api_idx_0004_UQUT           ; 0x1eb1
    pop cx                           ; 0x1eb4
    mov ax, 0x64                     ; 0x1eb5
    push ax                          ; 0x1eb8
    call random_below                ; 0x1eb9
    pop cx                           ; 0x1ebc
    push ax                          ; 0x1ebd
    mov ax, 0x248                    ; 0x1ebe
    imul word [bp - 0x0002]          ; 0x1ec1
    mov bx, ax                       ; 0x1ec4
    mov al, byte [bx + cell_key_grid + 0x173] ; 0x1ec6
    sub ah, ah                       ; 0x1eca
    mov cx, ax                       ; 0x1ecc
    add ax, strict word 0x19         ; 0x1ece
    mov cx, ax                       ; 0x1ed1
    pop ax                           ; 0x1ed3
    cmp ax, cx                       ; 0x1ed4
    jle short @..api_idx_00b8_LTRM.l56 ; 0x1ed6
    cmp byte [bx + cell_key_grid + 0x133], 3 ; 0x1ed8
    jbe short @..api_idx_00b8_LTRM.l56 ; 0x1edd
    dec byte [bx + cell_key_grid + 0x133] ; 0x1edf
    lea ax, word [bp - 0x0068]       ; 0x1ee3
    push ax                          ; 0x1ee6
    mov ax, 0x1492                   ; 0x1ee7
    push ax                          ; 0x1eea
    call load_message_string         ; 0x1eeb
    add sp, byte 4                   ; 0x1eee
    lea ax, word [bp - 0x00b8]       ; 0x1ef1
    push ax                          ; 0x1ef5
    mov ax, 0x1494                   ; 0x1ef6
    push ax                          ; 0x1ef9
    call load_message_string         ; 0x1efa
    add sp, byte 4                   ; 0x1efd
    mov ax, 0                        ; 0x1f00
    push ax                          ; 0x1f03
    mov ax, 0xb8                     ; 0x1f04
    push ax                          ; 0x1f07
    push ax                          ; 0x1f08
    mov ax, 1                        ; 0x1f09
    push ax                          ; 0x1f0c
    mov ax, dseg_90ba                ; 0x1f0d
    push ax                          ; 0x1f10
    lea ax, word [bp - 0x00b8]       ; 0x1f11
    push ax                          ; 0x1f15
    lea ax, word [bp - 0x0068]       ; 0x1f16
    push ax                          ; 0x1f19
    push word [bp - 0x0002]          ; 0x1f1a
    call api_idx_0002_RJQH           ; 0x1f1d
    add sp, byte 0x10                ; 0x1f20
    push word [message_delay]        ; 0x1f23
    call api_idx_0004_UQUT           ; 0x1f27
    pop cx                           ; 0x1f2a
@..api_idx_00b8_LTRM.l56:
    jmp near @..api_idx_00b8_LTRM.l61 ; 0x1f2b
jumptable_1fa3_case_16:
    mov ax, 0xf                      ; 0x1f2e
    push ax                          ; 0x1f31
    mov ax, 0                        ; 0x1f32
    push ax                          ; 0x1f35
    call api_idx_0050_MPOT           ; 0x1f36
    add sp, byte 4                   ; 0x1f39
    jmp near @..api_idx_00b8_LTRM.l61 ; 0x1f3c
jumptable_1fa3_case_17:
    mov ax, 0x17                     ; 0x1f3f
    push ax                          ; 0x1f42
    mov ax, 0                        ; 0x1f43
    push ax                          ; 0x1f46
    call api_idx_0050_MPOT           ; 0x1f47
    add sp, byte 4                   ; 0x1f4a
    mov ax, 0                        ; 0x1f4d
    push ax                          ; 0x1f50
    mov ax, 6                        ; 0x1f51
    push ax                          ; 0x1f54
    lea ax, word [bp - 0x000c]       ; 0x1f55
    push ax                          ; 0x1f58
    lea ax, word [bp - 0x000a]       ; 0x1f59
    push ax                          ; 0x1f5c
    lea ax, word [bp - 0x0008]       ; 0x1f5d
    push ax                          ; 0x1f60
    call api_idx_0006_UHJH           ; 0x1f61
    add sp, byte 0x0a                ; 0x1f64
    mov ax, word [bp - 0x0008]       ; 0x1f67
    mov word [bp - 0x0002], ax       ; 0x1f6a
    jmp short @..api_idx_00b8_LTRM.l59 ; 0x1f6d
@..api_idx_00b8_LTRM.l57:
    mov ax, word [bp - 0x0002]       ; 0x1f6f
    shl ax, 1                        ; 0x1f72
    mov bx, ax                       ; 0x1f74
    add bx, bp                       ; 0x1f76
    cmp word [bx - 0x0018], byte 0   ; 0x1f78
    jne short @..api_idx_00b8_LTRM.l58 ; 0x1f7c
    mov ax, 3                        ; 0x1f7e
    push ax                          ; 0x1f81
    mov ax, 0xb                      ; 0x1f82
    push ax                          ; 0x1f85
    mov ax, 0x148c                   ; 0x1f86
    push ax                          ; 0x1f89
    push word [bp - 0x0002]          ; 0x1f8a
    call api_idx_005a_SIOK           ; 0x1f8d
    add sp, byte 8                   ; 0x1f90
@..api_idx_00b8_LTRM.l58:
    inc word [bp - 0x0002]           ; 0x1f93
@..api_idx_00b8_LTRM.l59:
    mov ax, word [bp - 0x0008]       ; 0x1f96
    add ax, word [bp - 0x000a]       ; 0x1f99
    cmp ax, word [bp - 0x0002]       ; 0x1f9c
    jg short @..api_idx_00b8_LTRM.l57 ; 0x1f9f
    jmp short @..api_idx_00b8_LTRM.l61 ; 0x1fa1
jumptable_1fa3:
    dw jumptable_1fa3_case_0 - IMAGE_BASE + __zres_end ; 0x1fa3
    dw jumptable_1fa3_case_1 - IMAGE_BASE + __zres_end ; 0x1fa5
    dw jumptable_1fa3_case_2 - IMAGE_BASE + __zres_end ; 0x1fa7
    dw jumptable_1fa3_case_3 - IMAGE_BASE + __zres_end ; 0x1fa9
    dw jumptable_1fa3_case_4 - IMAGE_BASE + __zres_end ; 0x1fab
    dw jumptable_1fa3_case_5 - IMAGE_BASE + __zres_end ; 0x1fad
    dw jumptable_1fa3_case_6 - IMAGE_BASE + __zres_end ; 0x1faf
    dw jumptable_1fa3_case_7 - IMAGE_BASE + __zres_end ; 0x1fb1
    dw jumptable_1fa3_case_8 - IMAGE_BASE + __zres_end ; 0x1fb3
    dw jumptable_1fa3_case_9 - IMAGE_BASE + __zres_end ; 0x1fb5
    dw jumptable_1fa3_case_10 - IMAGE_BASE + __zres_end ; 0x1fb7
    dw jumptable_1fa3_case_11 - IMAGE_BASE + __zres_end ; 0x1fb9
    dw jumptable_1fa3_case_12 - IMAGE_BASE + __zres_end ; 0x1fbb
    dw jumptable_1fa3_case_13 - IMAGE_BASE + __zres_end ; 0x1fbd
    dw jumptable_1fa3_case_14 - IMAGE_BASE + __zres_end ; 0x1fbf
    dw jumptable_1fa3_case_15 - IMAGE_BASE + __zres_end ; 0x1fc1
    dw jumptable_1fa3_case_16 - IMAGE_BASE + __zres_end ; 0x1fc3
    dw jumptable_1fa3_case_17 - IMAGE_BASE + __zres_end ; 0x1fc5
@..api_idx_00b8_LTRM.l60:
    cmp ax, strict word 0x12         ; 0x1fc7
    jae short @..api_idx_00b8_LTRM.l61 ; 0x1fca
    xchg bx, ax                      ; 0x1fcc
    shl bx, 1                        ; 0x1fcd
    jmp [cs:bx + jumptable_1fa3 - IMAGE_BASE + __zres_end] ; 0x1fcf
jumptable_1fa3_case_0:
@..api_idx_00b8_LTRM.l61:
    ret                              ; 0x1fd4
