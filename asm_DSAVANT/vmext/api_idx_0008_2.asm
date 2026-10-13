; auto-generated
api_idx_0008_2:
    mov ax, 0xfff8                   ; 0x151e
    call aztec_csav                  ; 0x1521
    push word [bp + 0x4]             ; 0x1524
    call api_idx_0004_4              ; 0x1527
    pop cx                           ; 0x152a
    mov word [bp - 0x0002], ax       ; 0x152b
    cmp ax, strict word 0xffff       ; 0x152e
    jne short @..api_idx_0008_2.l1   ; 0x1531
    mov ax, 0                        ; 0x1533
    push ax                          ; 0x1536
    call ds_app_0a27                 ; 0x1537
    pop cx                           ; 0x153a
    ret                              ; 0x153b
@..api_idx_0008_2.l1:
    mov ax, word [bp - 0x0002]       ; 0x153c
    mov cx, 0x100                    ; 0x153f
    cwd                              ; 0x1542
    idiv cx                          ; 0x1543
    mov word [bp - 0x0004], ax       ; 0x1545
    mov word [bp - 0x0006], dx       ; 0x1548
    call api_idx_0006                ; 0x154b
    mov word [bp - 0x0008], ax       ; 0x154e
    test ax, ax                      ; 0x1551
    je short @..api_idx_0008_2.l4    ; 0x1553
    mov bx, ax                       ; 0x1555
    mov al, byte [bx + 0x1]          ; 0x1557
    sub ah, ah                       ; 0x155a
    test ax, 0x80                    ; 0x155c
    je short @..api_idx_0008_2.l2    ; 0x155f
    mov ax, 1                        ; 0x1561
    jmp short @..api_idx_0008_2.l3   ; 0x1564
@..api_idx_0008_2.l2:
    mov ax, 0                        ; 0x1566
@..api_idx_0008_2.l3:
    push ax                          ; 0x1569
    mov al, byte [bx + 0x6]          ; 0x156a
    sub ah, ah                       ; 0x156d
    push ax                          ; 0x156f
    mov ax, 0x248                    ; 0x1570
    imul word [bp + 0x4]             ; 0x1573
    push ax                          ; 0x1576
    mov ax, 0x78                     ; 0x1577
    imul word [bp - 0x0004]          ; 0x157a
    mov cx, ax                       ; 0x157d
    pop ax                           ; 0x157f
    add ax, cx                       ; 0x1580
    push ax                          ; 0x1582
    mov ax, 0xc                      ; 0x1583
    imul word [bp - 0x0006]          ; 0x1586
    mov cx, ax                       ; 0x1589
    pop ax                           ; 0x158b
    add ax, cx                       ; 0x158c
    add ax, 0x5c34                   ; 0x158e
    push ax                          ; 0x1591
    push word [bx + 0x4]             ; 0x1592
    push word [bp + 0x4]             ; 0x1595
    call api_idx_004c                ; 0x1598
    add sp, byte 0x0a                ; 0x159b
    mov bx, word [bp - 0x0008]       ; 0x159e
    mov byte [bx], 0xff              ; 0x15a1
    jmp short @..api_idx_0008_2.l5   ; 0x15a4
@..api_idx_0008_2.l4:
    mov ax, 0                        ; 0x15a6
    push ax                          ; 0x15a9
    call ds_app_0a27                 ; 0x15aa
    pop cx                           ; 0x15ad
@..api_idx_0008_2.l5:
    ret                              ; 0x15ae
loc_15af:
    mov ax, 0xfdae                   ; 0x15af
    call aztec_csav                  ; 0x15b2
    mov ax, word [bp + 0x4]          ; 0x15b5
    mov cx, 2                        ; 0x15b8
    cwd                              ; 0x15bb
    idiv cx                          ; 0x15bc
    mov ax, dx                       ; 0x15be
    mov cx, 0xfc                     ; 0x15c0
    imul cx                          ; 0x15c3
    add ax, strict word 5            ; 0x15c5
    mov word [bp - 0x0250], ax       ; 0x15c8
    mov ax, word [bp + 0x4]          ; 0x15cc
    mov cx, 2                        ; 0x15cf
    cwd                              ; 0x15d2
    idiv cx                          ; 0x15d3
    mov cx, 0x2d                     ; 0x15d5
    imul cx                          ; 0x15d8
    add ax, strict word 0x12         ; 0x15da
    mov word [bp - 0x0252], ax       ; 0x15dd
    mov ax, 0x17                     ; 0x15e1
    push ax                          ; 0x15e4
    mov ax, word [bp - 0x0252]       ; 0x15e5
    add ax, strict word 0x24         ; 0x15e9
    push ax                          ; 0x15ec
    mov ax, 0x248                    ; 0x15ed
    imul word [bp + 0x4]             ; 0x15f0
    add ax, 0x5bf4                   ; 0x15f3
    push ax                          ; 0x15f6
    call aztec_strlen                ; 0x15f7
    pop cx                           ; 0x15fa
    mov cx, 6                        ; 0x15fb
    imul cx                          ; 0x15fe
    add ax, word [bp - 0x0250]       ; 0x1600
    inc ax                           ; 0x1604
    inc ax                           ; 0x1605
    inc ax                           ; 0x1606
    push ax                          ; 0x1607
    mov ax, word [bp - 0x0252]       ; 0x1608
    add ax, strict word 0x20         ; 0x160c
    push ax                          ; 0x160f
    mov ax, word [bp - 0x0250]       ; 0x1610
    inc ax                           ; 0x1614
    inc ax                           ; 0x1615
    inc ax                           ; 0x1616
    push ax                          ; 0x1617
    call ds_loc_3b48                 ; 0x1618
    add sp, byte 0x0a                ; 0x161b
    mov ax, 0x17                     ; 0x161e
    push ax                          ; 0x1621
    mov ax, 1                        ; 0x1622
    push ax                          ; 0x1625
    call ds_loc_3a6a                 ; 0x1626
    add sp, byte 4                   ; 0x1629
    mov ax, word [bp - 0x0252]       ; 0x162c
    add ax, strict word 0x20         ; 0x1630
    push ax                          ; 0x1633
    mov ax, word [bp - 0x0250]       ; 0x1634
    add ax, strict word 4            ; 0x1638
    push ax                          ; 0x163b
    call ds_loc_3a50                 ; 0x163c
    add sp, byte 4                   ; 0x163f
    mov ax, 0                        ; 0x1642
    push ax                          ; 0x1645
    mov ax, 0x248                    ; 0x1646
    imul word [bp + 0x4]             ; 0x1649
    add ax, 0x5bf4                   ; 0x164c
    push ax                          ; 0x164f
    call ds_string_loc_3a95          ; 0x1650
    add sp, byte 4                   ; 0x1653
    mov ax, word [bp - 0x0252]       ; 0x1656
    add ax, strict word 0x24         ; 0x165a
    push ax                          ; 0x165d
    mov ax, word [bp - 0x0250]       ; 0x165e
    add ax, strict word 0x2d         ; 0x1662
    push ax                          ; 0x1665
    mov ax, word [bp - 0x0252]       ; 0x1666
    add ax, strict word 0x20         ; 0x166a
    push ax                          ; 0x166d
    mov ax, word [bp - 0x0250]       ; 0x166e
    inc ax                           ; 0x1672
    inc ax                           ; 0x1673
    inc ax                           ; 0x1674
    push ax                          ; 0x1675
    call ds_loc_3b21                 ; 0x1676
    add sp, byte 8                   ; 0x1679
    call ds_app_io_20f8              ; 0x167c
    mov word [bp - 0x0002], ax       ; 0x167f
    cmp ax, strict word 0xffff       ; 0x1682
    je short @..loc_15af.l1          ; 0x1685
    cmp ax, word [bp + 0x4]          ; 0x1687
    jne short @..loc_15af.l2         ; 0x168a
@..loc_15af.l1:
    mov ax, 1                        ; 0x168c
    push ax                          ; 0x168f
    push word [bp + 0x4]             ; 0x1690
    call ds_app_1d81                 ; 0x1693
    add sp, byte 4                   ; 0x1696
    ret                              ; 0x1699
@..loc_15af.l2:
    mov ax, 0x248                    ; 0x169a
    imul word [bp + 0x4]             ; 0x169d
    mov si, ax                       ; 0x16a0
    add ax, 0x5bf4                   ; 0x16a2
    mov si, ax                       ; 0x16a5
    lea di, word [bp - 0x024a]       ; 0x16a7
    mov cx, ds                       ; 0x16ab
    mov es, cx                       ; 0x16ad
    mov cx, 0x124                    ; 0x16af
    rep movsw                        ; 0x16b2
    mov ax, word [bp + 0x4]          ; 0x16b4
    shl ax, 1                        ; 0x16b7
    mov bx, ax                       ; 0x16b9
    mov ax, word [bx - 0x750e]       ; 0x16bb
    mov word [bp - 0x024c], ax       ; 0x16bf
    mov ax, word [bx + 0x69bc]       ; 0x16c3
    mov word [bp - 0x024e], ax       ; 0x16c7
    mov ax, 0x248                    ; 0x16cb
    imul word [bp - 0x0002]          ; 0x16ce
    mov si, ax                       ; 0x16d1
    add ax, 0x5bf4                   ; 0x16d3
    mov si, ax                       ; 0x16d6
    mov ax, 0x248                    ; 0x16d8
    imul word [bp + 0x4]             ; 0x16db
    mov di, ax                       ; 0x16de
    add ax, 0x5bf4                   ; 0x16e0
    mov di, ax                       ; 0x16e3
    mov cx, ds                       ; 0x16e5
    mov es, cx                       ; 0x16e7
    mov cx, 0x124                    ; 0x16e9
    rep movsw                        ; 0x16ec
    mov ax, word [bp - 0x0002]       ; 0x16ee
    shl ax, 1                        ; 0x16f1
    mov bx, ax                       ; 0x16f3
    mov ax, word [bx - 0x750e]       ; 0x16f5
    mov cx, word [bp + 0x4]          ; 0x16f9
    shl cx, 1                        ; 0x16fc
    mov bx, cx                       ; 0x16fe
    mov word [bx - 0x750e], ax       ; 0x1700
    mov ax, word [bp - 0x0002]       ; 0x1704
    shl ax, 1                        ; 0x1707
    mov bx, ax                       ; 0x1709
    mov ax, word [bx + 0x69bc]       ; 0x170b
    mov bx, cx                       ; 0x170f
    mov word [bx + 0x69bc], ax       ; 0x1711
    lea si, word [bp - 0x024a]       ; 0x1715
    mov ax, 0x248                    ; 0x1719
    imul word [bp - 0x0002]          ; 0x171c
    mov di, ax                       ; 0x171f
    add ax, 0x5bf4                   ; 0x1721
    mov di, ax                       ; 0x1724
    mov cx, ds                       ; 0x1726
    mov es, cx                       ; 0x1728
    mov cx, 0x124                    ; 0x172a
    rep movsw                        ; 0x172d
    mov ax, word [bp - 0x024c]       ; 0x172f
    mov cx, word [bp - 0x0002]       ; 0x1733
    shl cx, 1                        ; 0x1736
    mov bx, cx                       ; 0x1738
    mov word [bx - 0x750e], ax       ; 0x173a
    mov ax, word [bp - 0x024e]       ; 0x173e
    mov word [bx + 0x69bc], ax       ; 0x1742
    mov ax, 0                        ; 0x1746
    push ax                          ; 0x1749
    mov ax, word [bp + 0x4]          ; 0x174a
    shl ax, 1                        ; 0x174d
    shl ax, 1                        ; 0x174f
    mov bx, ax                       ; 0x1751
    push word [bx + 0x69a6]          ; 0x1753
    push word [bx + 0x69a4]          ; 0x1757
    call ds_loc_3b96                 ; 0x175b
    add sp, byte 6                   ; 0x175e
    mov ax, word [bp + 0x4]          ; 0x1761
    mov cx, 2                        ; 0x1764
    cwd                              ; 0x1767
    idiv cx                          ; 0x1768
    mov ax, dx                       ; 0x176a
    mov cx, 0xfc                     ; 0x176c
    imul cx                          ; 0x176f
    add ax, strict word 5            ; 0x1771
    mov word [bp - 0x0250], ax       ; 0x1774
    mov ax, word [bp + 0x4]          ; 0x1778
    mov cx, 2                        ; 0x177b
    cwd                              ; 0x177e
    idiv cx                          ; 0x177f
    mov cx, 0x2d                     ; 0x1781
    imul cx                          ; 0x1784
    add ax, strict word 0x12         ; 0x1786
    mov word [bp - 0x0252], ax       ; 0x1789
    add ax, strict word 0x2b         ; 0x178d
    push ax                          ; 0x1790
    mov ax, word [bp - 0x0250]       ; 0x1791
    add ax, strict word 0x3b         ; 0x1795
    push ax                          ; 0x1798
    push word [bp - 0x0252]          ; 0x1799
    push word [bp - 0x0250]          ; 0x179d
    call ds_loc_3b21                 ; 0x17a1
    add sp, byte 8                   ; 0x17a4
    mov ax, 0                        ; 0x17a7
    push ax                          ; 0x17aa
    mov ax, word [bp - 0x0002]       ; 0x17ab
    shl ax, 1                        ; 0x17ae
    shl ax, 1                        ; 0x17b0
    mov bx, ax                       ; 0x17b2
    push word [bx + 0x69a6]          ; 0x17b4
    push word [bx + 0x69a4]          ; 0x17b8
    call ds_loc_3b96                 ; 0x17bc
    add sp, byte 6                   ; 0x17bf
    mov ax, word [bp - 0x0002]       ; 0x17c2
    mov cx, 2                        ; 0x17c5
    cwd                              ; 0x17c8
    idiv cx                          ; 0x17c9
    mov ax, dx                       ; 0x17cb
    mov cx, 0xfc                     ; 0x17cd
    imul cx                          ; 0x17d0
    add ax, strict word 5            ; 0x17d2
    mov word [bp - 0x0250], ax       ; 0x17d5
    mov ax, word [bp - 0x0002]       ; 0x17d9
    mov cx, 2                        ; 0x17dc
    cwd                              ; 0x17df
    idiv cx                          ; 0x17e0
    mov cx, 0x2d                     ; 0x17e2
    imul cx                          ; 0x17e5
    add ax, strict word 0x12         ; 0x17e7
    mov word [bp - 0x0252], ax       ; 0x17ea
    add ax, strict word 0x2b         ; 0x17ee
    push ax                          ; 0x17f1
    mov ax, word [bp - 0x0250]       ; 0x17f2
    add ax, strict word 0x3b         ; 0x17f6
    push ax                          ; 0x17f9
    push word [bp - 0x0252]          ; 0x17fa
    push word [bp - 0x0250]          ; 0x17fe
    call ds_loc_3b21                 ; 0x1802
    add sp, byte 8                   ; 0x1805
    mov ax, 1                        ; 0x1808
    push ax                          ; 0x180b
    push word [bp + 0x4]             ; 0x180c
    call ds_app_1d81                 ; 0x180f
    add sp, byte 4                   ; 0x1812
    mov ax, 1                        ; 0x1815
    push ax                          ; 0x1818
    push word [bp - 0x0002]          ; 0x1819
    call ds_app_1d81                 ; 0x181c
    add sp, byte 4                   ; 0x181f
    ret                              ; 0x1822
loc_1823:
    mov ax, 0                        ; 0x1823
    call aztec_csav                  ; 0x1826
    mov ax, word [bp + 0x6]          ; 0x1829
    dec ax                           ; 0x182c
    push ax                          ; 0x182d
    push word [bp + 0x4]             ; 0x182e
    lea ax, word [bp + 0xc]          ; 0x1831
    push ax                          ; 0x1834
    lea ax, word [bp + 0xa]          ; 0x1835
    push ax                          ; 0x1838
    lea ax, word [bp + 0x8]          ; 0x1839
    push ax                          ; 0x183c
    call api_idx_0004                ; 0x183d
    add sp, byte 0x0a                ; 0x1840
    test ax, ax                      ; 0x1843
    je short @..loc_1823.l5          ; 0x1845
    mov ax, word [bss_5b6e]          ; 0x1847
    mov cx, 2                        ; 0x184a
    cwd                              ; 0x184d
    idiv cx                          ; 0x184e
    mov ax, dx                       ; 0x1850
    test ax, ax                      ; 0x1852
    je short @..loc_1823.l1          ; 0x1854
    mov ax, cx                       ; 0x1856
    jmp short @..loc_1823.l4         ; 0x1858
@..loc_1823.l1:
    mov ax, word [bss_5b6e]          ; 0x185a
    cmp ax, strict word 6            ; 0x185d
    je short @..loc_1823.l2          ; 0x1860
    cmp word [bss_9188], byte 0      ; 0x1862
    je short @..loc_1823.l3          ; 0x1867
@..loc_1823.l2:
    mov ax, 0                        ; 0x1869
    jmp short @..loc_1823.l4         ; 0x186c
@..loc_1823.l3:
    mov ax, 4                        ; 0x186e
@..loc_1823.l4:
    ret                              ; 0x1871
@..loc_1823.l5:
    mov ax, 4                        ; 0x1872
    push ax                          ; 0x1875
    mov ax, word [bp + 0xc]          ; 0x1876
    mov cx, 6                        ; 0x1879
    shl ax, cl                       ; 0x187c
    mov cx, word [bp + 0xa]          ; 0x187e
    shl cx, 1                        ; 0x1881
    shl cx, 1                        ; 0x1883
    shl cx, 1                        ; 0x1885
    add ax, cx                       ; 0x1887
    add ax, word [bp + 0x8]          ; 0x1889
    push ax                          ; 0x188c
    mov ax, word [bss_0e14]          ; 0x188d
    add ax, 0x90                     ; 0x1890
    push ax                          ; 0x1893
    call ds_leaf_loc_3f3d            ; 0x1894
    add sp, byte 6                   ; 0x1897
    ret                              ; 0x189a
loc_189b:
    mov ax, 0                        ; 0x189b
    call aztec_csav                  ; 0x189e
    push word [bp + 0x6]             ; 0x18a1
    mov ax, word [bp + 0x4]          ; 0x18a4
    dec ax                           ; 0x18a7
    push ax                          ; 0x18a8
    lea ax, word [bp + 0xc]          ; 0x18a9
    push ax                          ; 0x18ac
    lea ax, word [bp + 0xa]          ; 0x18ad
    push ax                          ; 0x18b0
    lea ax, word [bp + 0x8]          ; 0x18b1
    push ax                          ; 0x18b4
    call api_idx_0004                ; 0x18b5
    add sp, byte 0x0a                ; 0x18b8
    test ax, ax                      ; 0x18bb
    je short @..loc_189b.l5          ; 0x18bd
    mov ax, word [bss_5b6e]          ; 0x18bf
    mov cx, 2                        ; 0x18c2
    cwd                              ; 0x18c5
    idiv cx                          ; 0x18c6
    mov ax, dx                       ; 0x18c8
    test ax, ax                      ; 0x18ca
    je short @..loc_189b.l1          ; 0x18cc
    mov ax, cx                       ; 0x18ce
    jmp short @..loc_189b.l4         ; 0x18d0
@..loc_189b.l1:
    mov ax, word [bss_5b6e]          ; 0x18d2
    cmp ax, strict word 6            ; 0x18d5
    je short @..loc_189b.l2          ; 0x18d8
    cmp word [bss_9188], byte 0      ; 0x18da
    je short @..loc_189b.l3          ; 0x18df
@..loc_189b.l2:
    mov ax, 0                        ; 0x18e1
    jmp short @..loc_189b.l4         ; 0x18e4
@..loc_189b.l3:
    mov ax, 4                        ; 0x18e6
@..loc_189b.l4:
    ret                              ; 0x18e9
@..loc_189b.l5:
    mov ax, 4                        ; 0x18ea
    push ax                          ; 0x18ed
    mov ax, word [bp + 0xc]          ; 0x18ee
    mov cx, 6                        ; 0x18f1
    shl ax, cl                       ; 0x18f4
    mov cx, word [bp + 0xa]          ; 0x18f6
    shl cx, 1                        ; 0x18f9
    shl cx, 1                        ; 0x18fb
    shl cx, 1                        ; 0x18fd
    add ax, cx                       ; 0x18ff
    add ax, word [bp + 0x8]          ; 0x1901
    push ax                          ; 0x1904
    mov ax, word [bss_0e14]          ; 0x1905
    add ax, 0x290                    ; 0x1908
    push ax                          ; 0x190b
    call ds_leaf_loc_3f3d            ; 0x190c
    add sp, byte 6                   ; 0x190f
    ret                              ; 0x1912
loc_1913:
    mov ax, 0                        ; 0x1913
    call aztec_csav                  ; 0x1916
    mov ax, 0xffff                   ; 0x1919
    cmp word [bss_91a4], byte 0      ; 0x191c
    je short @..loc_1913.l1          ; 0x1921
    mov ax, word [bp + 0x4]          ; 0x1923
@..loc_1913.l1:
    ret                              ; 0x1926
loc_1927:
    mov ax, 0                        ; 0x1927
    call aztec_csav                  ; 0x192a
    mov ax, word [bp + 0x4]          ; 0x192d
    cmp word [bss_91a4], byte 0      ; 0x1930
    je short @..loc_1927.l1          ; 0x1935
    mov ax, word [bp + 0x6]          ; 0x1937
@..loc_1927.l1:
    ret                              ; 0x193a
loc_193b:
    mov ax, 0                        ; 0x193b
    call aztec_csav                  ; 0x193e
    mov ax, 0xffff                   ; 0x1941
    cmp word [bss_91a6], byte 0      ; 0x1944
    je short @..loc_193b.l1          ; 0x1949
    mov ax, word [bp + 0x4]          ; 0x194b
@..loc_193b.l1:
    ret                              ; 0x194e
loc_194f:
    mov ax, 0                        ; 0x194f
    call aztec_csav                  ; 0x1952
    mov ax, word [bp + 0x4]          ; 0x1955
    cmp word [bss_91a6], byte 0      ; 0x1958
    je short @..loc_194f.l1          ; 0x195d
    mov ax, word [bp + 0x6]          ; 0x195f
@..loc_194f.l1:
    ret                              ; 0x1962
loc_1963:
    mov ax, 0                        ; 0x1963
    call aztec_csav                  ; 0x1966
    mov ax, word [bss_82ee]          ; 0x1969
    jmp short @..loc_1963.l5         ; 0x196c
@..loc_1963.l1:
    mov ax, word [bp + 0xe]          ; 0x196e
    mov bx, word [bp + 0x4]          ; 0x1971
    add word [bx], ax                ; 0x1974
    mov ax, word [bp + 0x10]         ; 0x1976
    mov bx, word [bp + 0x6]          ; 0x1979
    add word [bx], ax                ; 0x197c
    jmp short @..loc_1963.l6         ; 0x197e
@..loc_1963.l2:
    mov ax, word [bp + 0x10]         ; 0x1980
    mov bx, word [bp + 0x4]          ; 0x1983
    add word [bx], ax                ; 0x1986
    mov ax, word [bp + 0xe]          ; 0x1988
    mov bx, word [bp + 0x6]          ; 0x198b
    sub word [bx], ax                ; 0x198e
    jmp short @..loc_1963.l6         ; 0x1990
@..loc_1963.l3:
    mov ax, word [bp + 0xe]          ; 0x1992
    mov bx, word [bp + 0x4]          ; 0x1995
    sub word [bx], ax                ; 0x1998
    mov ax, word [bp + 0x10]         ; 0x199a
    mov bx, word [bp + 0x6]          ; 0x199d
    sub word [bx], ax                ; 0x19a0
    jmp short @..loc_1963.l6         ; 0x19a2
@..loc_1963.l4:
    mov ax, word [bp + 0x10]         ; 0x19a4
    mov bx, word [bp + 0x4]          ; 0x19a7
    sub word [bx], ax                ; 0x19aa
    mov ax, word [bp + 0xe]          ; 0x19ac
    mov bx, word [bp + 0x6]          ; 0x19af
    add word [bx], ax                ; 0x19b2
    jmp short @..loc_1963.l6         ; 0x19b4
@..loc_1963.l5:
    cmp ax, strict word 0            ; 0x19b6
    je short @..loc_1963.l1          ; 0x19b9
    cmp ax, strict word 1            ; 0x19bb
    je short @..loc_1963.l2          ; 0x19be
    cmp ax, strict word 2            ; 0x19c0
    je short @..loc_1963.l3          ; 0x19c3
    cmp ax, strict word 3            ; 0x19c5
    je short @..loc_1963.l4          ; 0x19c8
@..loc_1963.l6:
    mov bx, word [bp + 0x6]          ; 0x19ca
    push word [bx]                   ; 0x19cd
    mov bx, word [bp + 0x4]          ; 0x19cf
    push word [bx]                   ; 0x19d2
    push word [bp + 0xc]             ; 0x19d4
    push word [bp + 0xa]             ; 0x19d7
    push word [bp + 0x8]             ; 0x19da
    call api_idx_0004                ; 0x19dd
    add sp, byte 0x0a                ; 0x19e0
    ret                              ; 0x19e3
loc_19e4:
    mov ax, 0                        ; 0x19e4
    call aztec_csav                  ; 0x19e7
    mov ax, 6                        ; 0x19ea
    push ax                          ; 0x19ed
    push word [bp + 0x4]             ; 0x19ee
    mov ax, word [bss_0e14]          ; 0x19f1
    add ax, 0x4b0                    ; 0x19f4
    push ax                          ; 0x19f7
    call ds_leaf_loc_3f3d            ; 0x19f8
    add sp, byte 6                   ; 0x19fb
    mov bx, word [bp + 0x6]          ; 0x19fe
    mov word [bx], ax                ; 0x1a01
    mov ax, 2                        ; 0x1a03
    push ax                          ; 0x1a06
    push word [bp + 0x4]             ; 0x1a07
    mov ax, word [bss_0e14]          ; 0x1a0a
    add ax, 0x7b0                    ; 0x1a0d
    push ax                          ; 0x1a10
    call ds_leaf_loc_3f3d            ; 0x1a11
    add sp, byte 6                   ; 0x1a14
    mov bx, word [bp + 0x8]          ; 0x1a17
    mov word [bx], ax                ; 0x1a1a
    ret                              ; 0x1a1c
