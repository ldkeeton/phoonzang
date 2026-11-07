; auto-generated
draw_selected_menu_entry:
    mov ax, 0xfff4                   ; 0x1676
    call $csav                  ; 0x1679
    mov ax, word [bp + 0x14]         ; 0x167c
    shl ax, 1                        ; 0x167f
    mov word [bp - 8], ax            ; 0x1681
    mov ax, word [bp + 0xa]          ; 0x1684
    mov cx, word [bp + 6]            ; 0x1687
    cmp cx, word [bp - 8]            ; 0x168a
    jge short .forward1              ; 0x168d
    mov ax, word [bp + 8]            ; 0x168f
.forward1:
    mov word [bp - 6], ax            ; 0x1692
    mov ax, cx                       ; 0x1695
    cwd                              ; 0x1697
    idiv word [bp - 8]               ; 0x1698
    mov ax, dx                       ; 0x169b
    cwd                              ; 0x169d
    idiv word [bp + 0x14]            ; 0x169e
    imul word [bp + 0x10]            ; 0x16a1
    mov word [bp - 2], ax            ; 0x16a4
    mov ax, cx                       ; 0x16a7
    cwd                              ; 0x16a9
    idiv word [bp - 8]               ; 0x16aa
    mov ax, dx                       ; 0x16ad
    cwd                              ; 0x16af
    idiv word [bp + 0x14]            ; 0x16b0
    mov ax, dx                       ; 0x16b3
    imul word [bp + 0x12]            ; 0x16b5
    mov word [bp - 4], ax            ; 0x16b8
    mov ax, word [bp + 0xc]          ; 0x16bb
    add ax, word [bp - 4]            ; 0x16be
    add ax, strict word 7            ; 0x16c1
    push ax                          ; 0x16c4
    mov ax, 6                        ; 0x16c5
    imul word [bp + 0xe]             ; 0x16c8
    add ax, word [bp - 6]            ; 0x16cb
    add ax, word [bp - 2]            ; 0x16ce
    inc ax                           ; 0x16d1
    push ax                          ; 0x16d2
    mov ax, word [bp + 0xc]          ; 0x16d3
    add ax, word [bp - 4]            ; 0x16d6
    dec ax                           ; 0x16d9
    push ax                          ; 0x16da
    mov ax, word [bp - 6]            ; 0x16db
    add ax, word [bp - 2]            ; 0x16de
    dec ax                           ; 0x16e1
    push ax                          ; 0x16e2
    call call_save_area              ; 0x16e3
    add sp, byte 8                   ; 0x16e6
    mov word [bp - 0xa], dx          ; 0x16e9
    mov word [bp - 0xc], ax          ; 0x16ec
    mov ax, 0                        ; 0x16ef
    push ax                          ; 0x16f2
    mov ax, word [bp + 0xc]          ; 0x16f3
    add ax, word [bp - 4]            ; 0x16f6
    add ax, strict word 6            ; 0x16f9
    push ax                          ; 0x16fc
    mov ax, 6                        ; 0x16fd
    imul word [bp + 0xe]             ; 0x1700
    add ax, word [bp - 6]            ; 0x1703
    add ax, word [bp - 2]            ; 0x1706
    push ax                          ; 0x1709
    mov ax, word [bp + 0xc]          ; 0x170a
    add ax, word [bp - 4]            ; 0x170d
    push ax                          ; 0x1710
    mov ax, word [bp - 6]            ; 0x1711
    add ax, word [bp - 2]            ; 0x1714
    push ax                          ; 0x1717
    call draw_bevel_frame            ; 0x1718
    add sp, byte 0xa                 ; 0x171b
    mov ax, 0xc0                     ; 0x171e
    push ax                          ; 0x1721
    push word [bp + 0x16]            ; 0x1722
    call call_set_text_color         ; 0x1725
    add sp, byte 4                   ; 0x1728
    mov ax, word [bp + 0xc]          ; 0x172b
    add ax, word [bp - 4]            ; 0x172e
    inc ax                           ; 0x1731
    push ax                          ; 0x1732
    push word [bp + 4]               ; 0x1733
    call strlen                ; 0x1736
    pop cx                           ; 0x1739
    mov cx, ax                       ; 0x173a
    mov ax, word [bp + 0xe]          ; 0x173c
    sub ax, cx                       ; 0x173f
    mov cx, 6                        ; 0x1741
    imul cx                          ; 0x1744
    mov cx, 2                        ; 0x1746
    cwd                              ; 0x1749
    idiv cx                          ; 0x174a
    add ax, word [bp - 6]            ; 0x174c
    add ax, word [bp - 2]            ; 0x174f
    inc ax                           ; 0x1752
    push ax                          ; 0x1753
    call call_set_text_pos           ; 0x1754
    add sp, byte 4                   ; 0x1757
    mov ax, 0                        ; 0x175a
    push ax                          ; 0x175d
    push word [bp + 4]               ; 0x175e
    call draw_text_glyphs            ; 0x1761
    add sp, byte 4                   ; 0x1764
    mov ax, word [bp + 0xc]          ; 0x1767
    add ax, word [bp - 4]            ; 0x176a
    add ax, strict word 7            ; 0x176d
    push ax                          ; 0x1770
    mov ax, 6                        ; 0x1771
    imul word [bp + 0xe]             ; 0x1774
    add ax, word [bp - 6]            ; 0x1777
    add ax, word [bp - 2]            ; 0x177a
    inc ax                           ; 0x177d
    push ax                          ; 0x177e
    mov ax, word [bp + 0xc]          ; 0x177f
    add ax, word [bp - 4]            ; 0x1782
    dec ax                           ; 0x1785
    push ax                          ; 0x1786
    mov ax, word [bp - 6]            ; 0x1787
    add ax, word [bp - 2]            ; 0x178a
    dec ax                           ; 0x178d
    push ax                          ; 0x178e
    call call_show_area              ; 0x178f
    add sp, byte 8                   ; 0x1792
    mov ax, 1                        ; 0x1795
    push ax                          ; 0x1798
    push word [bp - 0xa]             ; 0x1799
    push word [bp - 0xc]             ; 0x179c
    call call_restore_area           ; 0x179f
    add sp, byte 6                   ; 0x17a2
    ret                              ; 0x17a5
