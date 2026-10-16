; auto-generated
leaf_loc_STTR:
    mov word [bss_9aea], 2           ; 0x1499
    mov word [bss_9b08], 8           ; 0x149f
    mov ax, 0xffff                   ; 0x14a5
    cmp word [bp + 0x4], byte 1      ; 0x14a8
    jle short @..leaf_loc_STTR.l47   ; 0x14ac
    mov ax, 0x16                     ; 0x14ae
@..leaf_loc_STTR.l47:
    mov word [bss_9afc], ax          ; 0x14b1
    mov ax, 0xffff                   ; 0x14b4
    cmp word [bp + 0x4], byte 1      ; 0x14b7
    jle short @..leaf_loc_STTR.l48   ; 0x14bb
    mov ax, 0x17                     ; 0x14bd
@..leaf_loc_STTR.l48:
    mov word [bss_9b04], ax          ; 0x14c0
    mov ax, word [bss_9af0]          ; 0x14c3
    cmp word [bp + 0x4], byte 3      ; 0x14c6
    jle short @..leaf_loc_STTR.l49   ; 0x14ca
    mov ax, 0x1a                     ; 0x14cc
@..leaf_loc_STTR.l49:
    mov word [bss_9ae2], ax          ; 0x14cf
    mov ax, word [bss_9af0]          ; 0x14d2
    cmp word [bp + 0x4], byte 3      ; 0x14d5
    jle short @..leaf_loc_STTR.l50   ; 0x14d9
    mov ax, 0x1b                     ; 0x14db
@..leaf_loc_STTR.l50:
    mov word [bss_9ae4], ax          ; 0x14de
    mov ax, word [bss_9af0]          ; 0x14e1
    cmp word [bp + 0x4], byte 3      ; 0x14e4
    jle short @..leaf_loc_STTR.l51   ; 0x14e8
    mov ax, 0x1c                     ; 0x14ea
@..leaf_loc_STTR.l51:
    mov word [bss_9aee], ax          ; 0x14ed
    mov ax, word [bss_9af0]          ; 0x14f0
    cmp word [bp + 0x4], byte 3      ; 0x14f3
    jle short @..leaf_loc_STTR.l52   ; 0x14f7
    mov ax, 0x1e                     ; 0x14f9
@..leaf_loc_STTR.l52:
    mov word [bss_9aec], ax          ; 0x14fc
    mov ax, word [bss_9af0]          ; 0x14ff
    cmp word [bp + 0x4], byte 3      ; 0x1502
    jle short @..leaf_loc_STTR.l53   ; 0x1506
    mov ax, 0x1d                     ; 0x1508
@..leaf_loc_STTR.l53:
    mov word [bss_9ae8], ax          ; 0x150b
    mov ax, word [bss_9af0]          ; 0x150e
    cmp word [bp + 0x4], byte 3      ; 0x1511
    jle short @..leaf_loc_STTR.l54   ; 0x1515
    mov ax, 0x1f                     ; 0x1517
@..leaf_loc_STTR.l54:
    mov word [bss_9ae6], ax          ; 0x151a
    mov word [bp - 0x0002], 0        ; 0x151d
    jmp short @..leaf_loc_STTR.l58   ; 0x1522
@..leaf_loc_STTR.l55:
    mov word [bp - 0x0004], 0        ; 0x1524
    jmp short @..leaf_loc_STTR.l57   ; 0x1529
@..leaf_loc_STTR.l56:
    mov ax, word [bss_9af0]          ; 0x152b
    push ax                          ; 0x152e
    mov ax, 0x24                     ; 0x152f
    imul word [bp - 0x0002]          ; 0x1532
    mov cx, ax                       ; 0x1535
    mov dx, word [bp - 0x0004]       ; 0x1537
    shl dx, 1                        ; 0x153a
    add ax, dx                       ; 0x153c
    mov bx, ax                       ; 0x153e
    pop ax                           ; 0x1540
    mov word [bx - 0x6f46], ax       ; 0x1541
    mov word [bx - 0x6cba], 0xffff   ; 0x1545
    mov word [bx - 0x6a30], 0xffff   ; 0x154b
    inc word [bp - 0x0004]           ; 0x1551
@..leaf_loc_STTR.l57:
    mov ax, word [bp - 0x0008]       ; 0x1554
    inc ax                           ; 0x1557
    cmp ax, word [bp - 0x0004]       ; 0x1558
    jge short @..leaf_loc_STTR.l56   ; 0x155b
    inc word [bp - 0x0002]           ; 0x155d
@..leaf_loc_STTR.l58:
    mov ax, word [bp - 0x0006]       ; 0x1560
    inc ax                           ; 0x1563
    cmp ax, word [bp - 0x0002]       ; 0x1564
    jge short @..leaf_loc_STTR.l55   ; 0x1567
    mov ax, 0                        ; 0x1569
    push ax                          ; 0x156c
    mov ax, 7                        ; 0x156d
    imul word [bp - 0x0008]          ; 0x1570
    add ax, word [bss_9b0a]          ; 0x1573
    dec ax                           ; 0x1577
    push ax                          ; 0x1578
    mov ax, 7                        ; 0x1579
    imul word [bp - 0x0006]          ; 0x157c
    add ax, word [bss_9b0c]          ; 0x157f
    dec ax                           ; 0x1583
    push ax                          ; 0x1584
    push word [bss_9b0a]             ; 0x1585
    push word [bss_9b0c]             ; 0x1589
    call thunk_7                     ; 0x158d
    add sp, byte 0x0a                ; 0x1590
    mov word [bp - 0x0004], 1        ; 0x1593
    jmp short @..leaf_loc_STTR.l65   ; 0x1598
@..leaf_loc_STTR.l59:
    mov word [bp - 0x0002], 1        ; 0x159a
    jmp short @..leaf_loc_STTR.l64   ; 0x159f
@..leaf_loc_STTR.l60:
    cmp word [bss_9858], byte 0      ; 0x15a1
    jne short @..leaf_loc_STTR.l61   ; 0x15a6
    cmp word [bp + 0x6], byte 0      ; 0x15a8
    jne short @..leaf_loc_STTR.l62   ; 0x15ac
    cmp word [bp + 0x4], byte 4      ; 0x15ae
    jle short @..leaf_loc_STTR.l62   ; 0x15b2
@..leaf_loc_STTR.l61:
    mov ax, 1                        ; 0x15b4
    jmp short @..leaf_loc_STTR.l63   ; 0x15b7
@..leaf_loc_STTR.l62:
    mov ax, 0                        ; 0x15b9
@..leaf_loc_STTR.l63:
    push ax                          ; 0x15bc
    push word [bp - 0x0004]          ; 0x15bd
    push word [bp - 0x0002]          ; 0x15c0
    mov ax, word [bss_8f44]          ; 0x15c3
    mov cx, word [bp - 0x0004]       ; 0x15c6
    dec cx                           ; 0x15c9
    sub ax, cx                       ; 0x15ca
    add ax, word [bp - 0x000c]       ; 0x15cc
    push ax                          ; 0x15cf
    mov ax, word [bss_8f46]          ; 0x15d0
    add ax, word [bp - 0x0002]       ; 0x15d3
    dec ax                           ; 0x15d6
    sub ax, word [bp - 0x000a]       ; 0x15d7
    push ax                          ; 0x15da
    call api_idx_0014_KHON           ; 0x15db
    add sp, byte 0x0a                ; 0x15de
    inc word [bp - 0x0002]           ; 0x15e1
@..leaf_loc_STTR.l64:
    mov ax, word [bp - 0x0002]       ; 0x15e4
    cmp ax, word [bp - 0x0006]       ; 0x15e7
    jle short @..leaf_loc_STTR.l60   ; 0x15ea
    inc word [bp - 0x0004]           ; 0x15ec
@..leaf_loc_STTR.l65:
    mov ax, word [bp - 0x0004]       ; 0x15ef
    cmp ax, word [bp - 0x0008]       ; 0x15f2
    jle short @..leaf_loc_STTR.l59   ; 0x15f5
    cmp word [bp + 0x4], byte 1      ; 0x15f7
    jle short @..leaf_loc_STTR.l70   ; 0x15fb
    mov word [bp - 0x0004], 1        ; 0x15fd
    jmp short @..leaf_loc_STTR.l69   ; 0x1602
@..leaf_loc_STTR.l66:
    mov word [bp - 0x0002], 1        ; 0x1604
    jmp short @..leaf_loc_STTR.l68   ; 0x1609
@..leaf_loc_STTR.l67:
    push word [bp - 0x0004]          ; 0x160b
    push word [bp - 0x0002]          ; 0x160e
    call loc_GTJK                    ; 0x1611
    add sp, byte 4                   ; 0x1614
    inc word [bp - 0x0002]           ; 0x1617
@..leaf_loc_STTR.l68:
    mov ax, word [bp - 0x0002]       ; 0x161a
    cmp ax, word [bp - 0x0006]       ; 0x161d
    jle short @..leaf_loc_STTR.l67   ; 0x1620
    inc word [bp - 0x0004]           ; 0x1622
@..leaf_loc_STTR.l69:
    mov ax, word [bp - 0x0004]       ; 0x1625
    cmp ax, word [bp - 0x0008]       ; 0x1628
    jle short @..leaf_loc_STTR.l66   ; 0x162b
@..leaf_loc_STTR.l70:
    mov word [bp - 0x0004], 1        ; 0x162d
    jmp short @..leaf_loc_STTR.l75   ; 0x1632
@..leaf_loc_STTR.l71:
    mov word [bp - 0x0002], 1        ; 0x1634
    jmp short @..leaf_loc_STTR.l74   ; 0x1639
@..leaf_loc_STTR.l72:
    mov ax, 0x24                     ; 0x163b
    imul word [bp - 0x0002]          ; 0x163e
    mov cx, word [bp - 0x0004]       ; 0x1641
    shl cx, 1                        ; 0x1644
    add ax, cx                       ; 0x1646
    mov bx, ax                       ; 0x1648
    cmp word [bx - 0x6f46], byte 0xff ; 0x164a
    je short @..leaf_loc_STTR.l73    ; 0x164f
    mov ax, 0                        ; 0x1651
    push ax                          ; 0x1654
    push ax                          ; 0x1655
    push word [bx - 0x6f46]          ; 0x1656
    mov ax, word [bp - 0x0004]       ; 0x165a
    dec ax                           ; 0x165d
    push ax                          ; 0x165e
    mov ax, word [bp - 0x0002]       ; 0x165f
    dec ax                           ; 0x1662
    push ax                          ; 0x1663
    call api_idx_000a_GMJG           ; 0x1664
    add sp, byte 0x0a                ; 0x1667
@..leaf_loc_STTR.l73:
    inc word [bp - 0x0002]           ; 0x166a
@..leaf_loc_STTR.l74:
    mov ax, word [bp - 0x0002]       ; 0x166d
    cmp ax, word [bp - 0x0006]       ; 0x1670
    jle short @..leaf_loc_STTR.l72   ; 0x1673
    inc word [bp - 0x0004]           ; 0x1675
@..leaf_loc_STTR.l75:
    mov ax, word [bp - 0x0004]       ; 0x1678
    cmp ax, word [bp - 0x0008]       ; 0x167b
    jle short @..leaf_loc_STTR.l71   ; 0x167e
    mov word [bp - 0x0004], 0        ; 0x1680
    jmp short @..leaf_loc_STTR.l81   ; 0x1685
@..leaf_loc_STTR.l76:
    mov word [bp - 0x0002], 0        ; 0x1687
    jmp short @..leaf_loc_STTR.l80   ; 0x168c
@..leaf_loc_STTR.l77:
    mov ax, 0x24                     ; 0x168e
    imul word [bp - 0x0002]          ; 0x1691
    mov cx, word [bp - 0x0004]       ; 0x1694
    shl cx, 1                        ; 0x1697
    add ax, cx                       ; 0x1699
    mov bx, ax                       ; 0x169b
    cmp word [bx - 0x6cba], byte 0xff ; 0x169d
    je short @..leaf_loc_STTR.l78    ; 0x16a2
    mov ax, 0xffff                   ; 0x16a4
    push ax                          ; 0x16a7
    push ax                          ; 0x16a8
    push word [bx - 0x6cba]          ; 0x16a9
    mov ax, word [bp - 0x0004]       ; 0x16ad
    dec ax                           ; 0x16b0
    push ax                          ; 0x16b1
    mov ax, word [bp - 0x0002]       ; 0x16b2
    dec ax                           ; 0x16b5
    push ax                          ; 0x16b6
    call api_idx_000a_GMJG           ; 0x16b7
    add sp, byte 0x0a                ; 0x16ba
@..leaf_loc_STTR.l78:
    mov ax, 0x24                     ; 0x16bd
    imul word [bp - 0x0002]          ; 0x16c0
    mov cx, word [bp - 0x0004]       ; 0x16c3
    shl cx, 1                        ; 0x16c6
    add ax, cx                       ; 0x16c8
    mov bx, ax                       ; 0x16ca
    cmp word [bx - 0x6a30], byte 0xff ; 0x16cc
    je short @..leaf_loc_STTR.l79    ; 0x16d1
    mov ax, 0xffff                   ; 0x16d3
    push ax                          ; 0x16d6
    push ax                          ; 0x16d7
    push word [bx - 0x6a30]          ; 0x16d8
    mov ax, word [bp - 0x0004]       ; 0x16dc
    dec ax                           ; 0x16df
    push ax                          ; 0x16e0
    mov ax, word [bp - 0x0002]       ; 0x16e1
    dec ax                           ; 0x16e4
    push ax                          ; 0x16e5
    call api_idx_000a_GMJG           ; 0x16e6
    add sp, byte 0x0a                ; 0x16e9
@..leaf_loc_STTR.l79:
    inc word [bp - 0x0002]           ; 0x16ec
@..leaf_loc_STTR.l80:
    mov ax, word [bp - 0x0006]       ; 0x16ef
    inc ax                           ; 0x16f2
    cmp ax, word [bp - 0x0002]       ; 0x16f3
    jge short @..leaf_loc_STTR.l77   ; 0x16f6
    inc word [bp - 0x0004]           ; 0x16f8
@..leaf_loc_STTR.l81:
    mov ax, word [bp - 0x0008]       ; 0x16fb
    inc ax                           ; 0x16fe
    cmp ax, word [bp - 0x0004]       ; 0x16ff
    jge short @..leaf_loc_STTR.l76   ; 0x1702
    cmp word [bss_9858], byte 0      ; 0x1704
    je short @..leaf_loc_STTR.l87    ; 0x1709
    mov word [bp - 0x0004], 0        ; 0x170b
    jmp short @..leaf_loc_STTR.l86   ; 0x1710
@..leaf_loc_STTR.l82:
    mov word [bp - 0x0002], 0        ; 0x1712
    jmp short @..leaf_loc_STTR.l85   ; 0x1717
@..leaf_loc_STTR.l83:
    mov ax, 0x24                     ; 0x1719
    imul word [bp - 0x0002]          ; 0x171c
    mov cx, word [bp - 0x0004]       ; 0x171f
    shl cx, 1                        ; 0x1722
    add ax, cx                       ; 0x1724
    mov bx, ax                       ; 0x1726
    cmp word [bx - 0x67a6], byte 1   ; 0x1728
    jne short @..leaf_loc_STTR.l84   ; 0x172d
    mov ax, word [bp - 0x0004]       ; 0x172f
    dec ax                           ; 0x1732
    push ax                          ; 0x1733
    mov ax, word [bp - 0x0002]       ; 0x1734
    dec ax                           ; 0x1737
    push ax                          ; 0x1738
    call loc_TIPV                    ; 0x1739
    add sp, byte 4                   ; 0x173c
@..leaf_loc_STTR.l84:
    inc word [bp - 0x0002]           ; 0x173f
@..leaf_loc_STTR.l85:
    mov ax, word [bp - 0x0002]       ; 0x1742
    cmp ax, word [bp - 0x0006]       ; 0x1745
    jle short @..leaf_loc_STTR.l83   ; 0x1748
    inc word [bp - 0x0004]           ; 0x174a
@..leaf_loc_STTR.l86:
    mov ax, word [bp - 0x0004]       ; 0x174d
    cmp ax, word [bp - 0x0008]       ; 0x1750
    jle short @..leaf_loc_STTR.l82   ; 0x1753
@..leaf_loc_STTR.l87:
    mov ax, 7                        ; 0x1755
    imul word [bp - 0x0008]          ; 0x1758
    add ax, word [bss_9b0a]          ; 0x175b
    dec ax                           ; 0x175f
    push ax                          ; 0x1760
    mov ax, 7                        ; 0x1761
    imul word [bp - 0x0006]          ; 0x1764
    add ax, word [bss_9b0c]          ; 0x1767
    dec ax                           ; 0x176b
    push ax                          ; 0x176c
    push word [bss_9b0a]             ; 0x176d
    push word [bss_9b0c]             ; 0x1771
    call ds_app_GIKM                 ; 0x1775
    add sp, byte 8                   ; 0x1778
    mov ax, 0x8d                     ; 0x177b
    push ax                          ; 0x177e
    mov ax, 0xf8                     ; 0x177f
    push ax                          ; 0x1782
    mov ax, 0x21                     ; 0x1783
    push ax                          ; 0x1786
    mov ax, 0x48                     ; 0x1787
    push ax                          ; 0x178a
    call thunk_4                     ; 0x178b
    add sp, byte 8                   ; 0x178e
    call bios_kbd_check              ; 0x1791
    mov ax, word [bp - 0x0008]       ; 0x1794
    mov cx, 2                        ; 0x1797
    cwd                              ; 0x179a
    idiv cx                          ; 0x179b
    mov cx, 7                        ; 0x179d
    imul cx                          ; 0x17a0
    add ax, word [bss_9b0a]          ; 0x17a2
    add ax, strict word 7            ; 0x17a6
    push ax                          ; 0x17a9
    mov ax, word [bp - 0x0006]       ; 0x17aa
    mov cx, 2                        ; 0x17ad
    cwd                              ; 0x17b0
    idiv cx                          ; 0x17b1
    mov cx, 7                        ; 0x17b3
    imul cx                          ; 0x17b6
    add ax, word [bss_9b0c]          ; 0x17b8
    add ax, strict word 7            ; 0x17bc
    push ax                          ; 0x17bf
    mov ax, word [bp - 0x0008]       ; 0x17c0
    mov cx, 2                        ; 0x17c3
    cwd                              ; 0x17c6
    idiv cx                          ; 0x17c7
    mov cx, 7                        ; 0x17c9
    imul cx                          ; 0x17cc
    add ax, word [bss_9b0a]          ; 0x17ce
    push ax                          ; 0x17d2
    mov ax, word [bp - 0x0006]       ; 0x17d3
    mov cx, 2                        ; 0x17d6
    cwd                              ; 0x17d9
    idiv cx                          ; 0x17da
    mov cx, 7                        ; 0x17dc
    imul cx                          ; 0x17df
    add ax, word [bss_9b0c]          ; 0x17e1
    push ax                          ; 0x17e5
    call thunk_10                    ; 0x17e6
    add sp, byte 8                   ; 0x17e9
    mov word [bp - 0x0010], dx       ; 0x17ec
    mov word [bp - 0x0012], ax       ; 0x17ef
@..leaf_loc_STTR.l88:
    call ds_app_TMKJ                 ; 0x17f2
    test ax, ax                      ; 0x17f5
    je short @..leaf_loc_STTR.l89    ; 0x17f7
    jmp near @..leaf_loc_STTR.l90    ; 0x17f9
@..leaf_loc_STTR.l89:
    mov ax, 0                        ; 0x17fc
    push ax                          ; 0x17ff
    push ax                          ; 0x1800
    mov ax, word [bss_82ee]          ; 0x1801
    add ax, strict word 0x20         ; 0x1804
    push ax                          ; 0x1807
    mov ax, word [bp - 0x0008]       ; 0x1808
    mov cx, 2                        ; 0x180b
    cwd                              ; 0x180e
    idiv cx                          ; 0x180f
    push ax                          ; 0x1811
    mov ax, word [bp - 0x0006]       ; 0x1812
    cwd                              ; 0x1815
    idiv cx                          ; 0x1816
    push ax                          ; 0x1818
    call api_idx_000a_GMJG           ; 0x1819
    add sp, byte 0x0a                ; 0x181c
    mov ax, word [bp - 0x0008]       ; 0x181f
    mov cx, 2                        ; 0x1822
    cwd                              ; 0x1825
    idiv cx                          ; 0x1826
    mov cx, 7                        ; 0x1828
    imul cx                          ; 0x182b
    add ax, word [bss_9b0a]          ; 0x182d
    add ax, strict word 7            ; 0x1831
    push ax                          ; 0x1834
    mov ax, word [bp - 0x0006]       ; 0x1835
    mov cx, 2                        ; 0x1838
    cwd                              ; 0x183b
    idiv cx                          ; 0x183c
    mov cx, 7                        ; 0x183e
    imul cx                          ; 0x1841
    add ax, word [bss_9b0c]          ; 0x1843
    add ax, strict word 7            ; 0x1847
    push ax                          ; 0x184a
    mov ax, word [bp - 0x0008]       ; 0x184b
    mov cx, 2                        ; 0x184e
    cwd                              ; 0x1851
    idiv cx                          ; 0x1852
    mov cx, 7                        ; 0x1854
    imul cx                          ; 0x1857
    add ax, word [bss_9b0a]          ; 0x1859
    push ax                          ; 0x185d
    mov ax, word [bp - 0x0006]       ; 0x185e
    mov cx, 2                        ; 0x1861
    cwd                              ; 0x1864
    idiv cx                          ; 0x1865
    mov cx, 7                        ; 0x1867
    imul cx                          ; 0x186a
    add ax, word [bss_9b0c]          ; 0x186c
    push ax                          ; 0x1870
    call thunk_4                     ; 0x1871
    add sp, byte 8                   ; 0x1874
    mov ax, 0x12c                    ; 0x1877
    push ax                          ; 0x187a
    call ds_leaf_loc_UJPS            ; 0x187b
    pop cx                           ; 0x187e
    mov ax, 0                        ; 0x187f
    push ax                          ; 0x1882
    push word [bp - 0x0010]          ; 0x1883
    push word [bp - 0x0012]          ; 0x1886
    call thunk_13                    ; 0x1889
    add sp, byte 6                   ; 0x188c
    mov ax, word [bp - 0x0008]       ; 0x188f
    mov cx, 2                        ; 0x1892
    cwd                              ; 0x1895
    idiv cx                          ; 0x1896
    mov cx, 7                        ; 0x1898
    imul cx                          ; 0x189b
    add ax, word [bss_9b0a]          ; 0x189d
    add ax, strict word 7            ; 0x18a1
    push ax                          ; 0x18a4
    mov ax, word [bp - 0x0006]       ; 0x18a5
    mov cx, 2                        ; 0x18a8
    cwd                              ; 0x18ab
    idiv cx                          ; 0x18ac
    mov cx, 7                        ; 0x18ae
    imul cx                          ; 0x18b1
    add ax, word [bss_9b0c]          ; 0x18b3
    add ax, strict word 7            ; 0x18b7
    push ax                          ; 0x18ba
    mov ax, word [bp - 0x0008]       ; 0x18bb
    mov cx, 2                        ; 0x18be
    cwd                              ; 0x18c1
    idiv cx                          ; 0x18c2
    mov cx, 7                        ; 0x18c4
    imul cx                          ; 0x18c7
    add ax, word [bss_9b0a]          ; 0x18c9
    push ax                          ; 0x18cd
    mov ax, word [bp - 0x0006]       ; 0x18ce
    mov cx, 2                        ; 0x18d1
    cwd                              ; 0x18d4
    idiv cx                          ; 0x18d5
    mov cx, 7                        ; 0x18d7
    imul cx                          ; 0x18da
    add ax, word [bss_9b0c]          ; 0x18dc
    push ax                          ; 0x18e0
    call thunk_4                     ; 0x18e1
    add sp, byte 8                   ; 0x18e4
    mov ax, 0x12c                    ; 0x18e7
    push ax                          ; 0x18ea
    call ds_leaf_loc_UJPS            ; 0x18eb
    pop cx                           ; 0x18ee
    jmp near @..leaf_loc_STTR.l88    ; 0x18ef
@..leaf_loc_STTR.l90:
    mov ax, 1                        ; 0x18f2
    push ax                          ; 0x18f5
    push word [bp - 0x0010]          ; 0x18f6
    push word [bp - 0x0012]          ; 0x18f9
    call thunk_13                    ; 0x18fc
    add sp, byte 6                   ; 0x18ff
    mov ax, 0xf                      ; 0x1902
    push ax                          ; 0x1905
    call ds_app_thunk_26_VNHP        ; 0x1906
    pop cx                           ; 0x1909
    ret                              ; 0x190a
