; auto-generated
loc_HTTH:
    mov ax, 0xfdae                   ; 0x15af
    call aztec_csav                  ; 0x15b2
    mov ax, word [bp + 4]            ; 0x15b5
    mov cx, 2                        ; 0x15b8
    cwd                              ; 0x15bb
    idiv cx                          ; 0x15bc
    mov ax, dx                       ; 0x15be
    mov cx, 0xfc                     ; 0x15c0
    imul cx                          ; 0x15c3
    add ax, strict word 5            ; 0x15c5
    mov word [bp - 0x250], ax        ; 0x15c8
    mov ax, word [bp + 4]            ; 0x15cc
    mov cx, 2                        ; 0x15cf
    cwd                              ; 0x15d2
    idiv cx                          ; 0x15d3
    mov cx, 0x2d                     ; 0x15d5
    imul cx                          ; 0x15d8
    add ax, strict word 0x12         ; 0x15da
    mov word [bp - 0x252], ax        ; 0x15dd
    mov ax, 0x17                     ; 0x15e1
    push ax                          ; 0x15e4
    mov ax, word [bp - 0x252]        ; 0x15e5
    add ax, strict word 0x24         ; 0x15e9
    push ax                          ; 0x15ec
    mov ax, 0x248                    ; 0x15ed
    imul word [bp + 4]               ; 0x15f0
    add ax, party_records            ; 0x15f3
    push ax                          ; 0x15f6
    call aztec_strlen                ; 0x15f7
    pop cx                           ; 0x15fa
    mov cx, 6                        ; 0x15fb
    imul cx                          ; 0x15fe
    add ax, word [bp - 0x250]        ; 0x1600
    inc ax                           ; 0x1604
    inc ax                           ; 0x1605
    inc ax                           ; 0x1606
    push ax                          ; 0x1607
    mov ax, word [bp - 0x252]        ; 0x1608
    add ax, strict word 0x20         ; 0x160c
    push ax                          ; 0x160f
    mov ax, word [bp - 0x250]        ; 0x1610
    inc ax                           ; 0x1614
    inc ax                           ; 0x1615
    inc ax                           ; 0x1616
    push ax                          ; 0x1617
    call call_fill_area              ; 0x1618
    add sp, byte 0xa                 ; 0x161b
    mov ax, 0x17                     ; 0x161e
    push ax                          ; 0x1621
    mov ax, 1                        ; 0x1622
    push ax                          ; 0x1625
    call call_set_text_color         ; 0x1626
    add sp, byte 4                   ; 0x1629
    mov ax, word [bp - 0x252]        ; 0x162c
    add ax, strict word 0x20         ; 0x1630
    push ax                          ; 0x1633
    mov ax, word [bp - 0x250]        ; 0x1634
    add ax, strict word 4            ; 0x1638
    push ax                          ; 0x163b
    call call_set_text_pos           ; 0x163c
    add sp, byte 4                   ; 0x163f
    mov ax, 0                        ; 0x1642
    push ax                          ; 0x1645
    mov ax, 0x248                    ; 0x1646
    imul word [bp + 4]               ; 0x1649
    add ax, party_records            ; 0x164c
    push ax                          ; 0x164f
    call draw_text_glyphs            ; 0x1650
    add sp, byte 4                   ; 0x1653
    mov ax, word [bp - 0x252]        ; 0x1656
    add ax, strict word 0x24         ; 0x165a
    push ax                          ; 0x165d
    mov ax, word [bp - 0x250]        ; 0x165e
    add ax, strict word 0x2d         ; 0x1662
    push ax                          ; 0x1665
    mov ax, word [bp - 0x252]        ; 0x1666
    add ax, strict word 0x20         ; 0x166a
    push ax                          ; 0x166d
    mov ax, word [bp - 0x250]        ; 0x166e
    inc ax                           ; 0x1672
    inc ax                           ; 0x1673
    inc ax                           ; 0x1674
    push ax                          ; 0x1675
    call call_show_area              ; 0x1676
    add sp, byte 8                   ; 0x1679
    call pick_party_member           ; 0x167c
    mov word [bp - 2], ax            ; 0x167f
    cmp ax, strict word 0xffff       ; 0x1682
    je short .forward1               ; 0x1685
    cmp ax, word [bp + 4]            ; 0x1687
    jne short .forward2              ; 0x168a
.forward1:
    mov ax, 1                        ; 0x168c
    push ax                          ; 0x168f
    push word [bp + 4]               ; 0x1690
    call draw_party_member_panel     ; 0x1693
    add sp, byte 4                   ; 0x1696
    ret                              ; 0x1699
.forward2:
    mov ax, 0x248                    ; 0x169a
    imul word [bp + 4]               ; 0x169d
    mov si, ax                       ; 0x16a0
    add ax, party_records            ; 0x16a2
    mov si, ax                       ; 0x16a5
    lea di, word [bp - 0x24a]        ; 0x16a7
    mov cx, ds                       ; 0x16ab
    mov es, cx                       ; 0x16ad
    mov cx, 0x124                    ; 0x16af
    rep movsw                        ; 0x16b2
    mov ax, word [bp + 4]            ; 0x16b4
    shl ax, 1                        ; 0x16b7
    mov bx, ax                       ; 0x16b9
    mov ax, word [bx + member_roster_index + 0x2] ; 0x16bb
    mov word [bp - 0x24c], ax        ; 0x16bf
    mov ax, word [bx + member_icon]  ; 0x16c3
    mov word [bp - 0x24e], ax        ; 0x16c7
    mov ax, 0x248                    ; 0x16cb
    imul word [bp - 2]               ; 0x16ce
    mov si, ax                       ; 0x16d1
    add ax, party_records            ; 0x16d3
    mov si, ax                       ; 0x16d6
    mov ax, 0x248                    ; 0x16d8
    imul word [bp + 4]               ; 0x16db
    mov di, ax                       ; 0x16de
    add ax, party_records            ; 0x16e0
    mov di, ax                       ; 0x16e3
    mov cx, ds                       ; 0x16e5
    mov es, cx                       ; 0x16e7
    mov cx, 0x124                    ; 0x16e9
    rep movsw                        ; 0x16ec
    mov ax, word [bp - 2]            ; 0x16ee
    shl ax, 1                        ; 0x16f1
    mov bx, ax                       ; 0x16f3
    mov ax, word [bx + member_roster_index + 0x2] ; 0x16f5
    mov cx, word [bp + 4]            ; 0x16f9
    shl cx, 1                        ; 0x16fc
    mov bx, cx                       ; 0x16fe
    mov word [bx + member_roster_index + 0x2], ax ; 0x1700
    mov ax, word [bp - 2]            ; 0x1704
    shl ax, 1                        ; 0x1707
    mov bx, ax                       ; 0x1709
    mov ax, word [bx + member_icon]  ; 0x170b
    mov bx, cx                       ; 0x170f
    mov word [bx + member_icon], ax  ; 0x1711
    lea si, word [bp - 0x24a]        ; 0x1715
    mov ax, 0x248                    ; 0x1719
    imul word [bp - 2]               ; 0x171c
    mov di, ax                       ; 0x171f
    add ax, party_records            ; 0x1721
    mov di, ax                       ; 0x1724
    mov cx, ds                       ; 0x1726
    mov es, cx                       ; 0x1728
    mov cx, 0x124                    ; 0x172a
    rep movsw                        ; 0x172d
    mov ax, word [bp - 0x24c]        ; 0x172f
    mov cx, word [bp - 2]            ; 0x1733
    shl cx, 1                        ; 0x1736
    mov bx, cx                       ; 0x1738
    mov word [bx + member_roster_index + 0x2], ax ; 0x173a
    mov ax, word [bp - 0x24e]        ; 0x173e
    mov word [bx + member_icon], ax  ; 0x1742
    mov ax, 0                        ; 0x1746
    push ax                          ; 0x1749
    mov ax, word [bp + 4]            ; 0x174a
    shl ax, 1                        ; 0x174d
    shl ax, 1                        ; 0x174f
    mov bx, ax                       ; 0x1751
    push word [bx + panel_area + 0x2] ; 0x1753
    push word [bx + panel_area]      ; 0x1757
    call call_restore_area           ; 0x175b
    add sp, byte 6                   ; 0x175e
    mov ax, word [bp + 4]            ; 0x1761
    mov cx, 2                        ; 0x1764
    cwd                              ; 0x1767
    idiv cx                          ; 0x1768
    mov ax, dx                       ; 0x176a
    mov cx, 0xfc                     ; 0x176c
    imul cx                          ; 0x176f
    add ax, strict word 5            ; 0x1771
    mov word [bp - 0x250], ax        ; 0x1774
    mov ax, word [bp + 4]            ; 0x1778
    mov cx, 2                        ; 0x177b
    cwd                              ; 0x177e
    idiv cx                          ; 0x177f
    mov cx, 0x2d                     ; 0x1781
    imul cx                          ; 0x1784
    add ax, strict word 0x12         ; 0x1786
    mov word [bp - 0x252], ax        ; 0x1789
    add ax, strict word 0x2b         ; 0x178d
    push ax                          ; 0x1790
    mov ax, word [bp - 0x250]        ; 0x1791
    add ax, strict word 0x3b         ; 0x1795
    push ax                          ; 0x1798
    push word [bp - 0x252]           ; 0x1799
    push word [bp - 0x250]           ; 0x179d
    call call_show_area              ; 0x17a1
    add sp, byte 8                   ; 0x17a4
    mov ax, 0                        ; 0x17a7
    push ax                          ; 0x17aa
    mov ax, word [bp - 2]            ; 0x17ab
    shl ax, 1                        ; 0x17ae
    shl ax, 1                        ; 0x17b0
    mov bx, ax                       ; 0x17b2
    push word [bx + panel_area + 0x2] ; 0x17b4
    push word [bx + panel_area]      ; 0x17b8
    call call_restore_area           ; 0x17bc
    add sp, byte 6                   ; 0x17bf
    mov ax, word [bp - 2]            ; 0x17c2
    mov cx, 2                        ; 0x17c5
    cwd                              ; 0x17c8
    idiv cx                          ; 0x17c9
    mov ax, dx                       ; 0x17cb
    mov cx, 0xfc                     ; 0x17cd
    imul cx                          ; 0x17d0
    add ax, strict word 5            ; 0x17d2
    mov word [bp - 0x250], ax        ; 0x17d5
    mov ax, word [bp - 2]            ; 0x17d9
    mov cx, 2                        ; 0x17dc
    cwd                              ; 0x17df
    idiv cx                          ; 0x17e0
    mov cx, 0x2d                     ; 0x17e2
    imul cx                          ; 0x17e5
    add ax, strict word 0x12         ; 0x17e7
    mov word [bp - 0x252], ax        ; 0x17ea
    add ax, strict word 0x2b         ; 0x17ee
    push ax                          ; 0x17f1
    mov ax, word [bp - 0x250]        ; 0x17f2
    add ax, strict word 0x3b         ; 0x17f6
    push ax                          ; 0x17f9
    push word [bp - 0x252]           ; 0x17fa
    push word [bp - 0x250]           ; 0x17fe
    call call_show_area              ; 0x1802
    add sp, byte 8                   ; 0x1805
    mov ax, 1                        ; 0x1808
    push ax                          ; 0x180b
    push word [bp + 4]               ; 0x180c
    call draw_party_member_panel     ; 0x180f
    add sp, byte 4                   ; 0x1812
    mov ax, 1                        ; 0x1815
    push ax                          ; 0x1818
    push word [bp - 2]               ; 0x1819
    call draw_party_member_panel     ; 0x181c
    add sp, byte 4                   ; 0x181f
    ret                              ; 0x1822
