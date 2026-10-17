; auto-generated
api_idx_000c_KGOL:
    mov ax, 0xfff4                   ; 0x1676
    call aztec_csav                  ; 0x1679
    mov ax, word [bp + 0x14]         ; 0x167c
    shl ax, 1                        ; 0x167f
    mov word [bp - 0x0008], ax       ; 0x1681
    mov ax, word [bp + 0xa]          ; 0x1684
    mov cx, word [bp + 0x6]          ; 0x1687
    cmp cx, word [bp - 0x0008]       ; 0x168a
    jge short @..api_idx_000c_KGOL.l1 ; 0x168d
    mov ax, word [bp + 0x8]          ; 0x168f
@..api_idx_000c_KGOL.l1:
    mov word [bp - 0x0006], ax       ; 0x1692
    mov ax, cx                       ; 0x1695
    cwd                              ; 0x1697
    idiv word [bp - 0x0008]          ; 0x1698
    mov ax, dx                       ; 0x169b
    cwd                              ; 0x169d
    idiv word [bp + 0x14]            ; 0x169e
    imul word [bp + 0x10]            ; 0x16a1
    mov word [bp - 0x0002], ax       ; 0x16a4
    mov ax, cx                       ; 0x16a7
    cwd                              ; 0x16a9
    idiv word [bp - 0x0008]          ; 0x16aa
    mov ax, dx                       ; 0x16ad
    cwd                              ; 0x16af
    idiv word [bp + 0x14]            ; 0x16b0
    mov ax, dx                       ; 0x16b3
    imul word [bp + 0x12]            ; 0x16b5
    mov word [bp - 0x0004], ax       ; 0x16b8
    mov ax, word [bp + 0xc]          ; 0x16bb
    add ax, word [bp - 0x0004]       ; 0x16be
    add ax, strict word 7            ; 0x16c1
    push ax                          ; 0x16c4
    mov ax, 6                        ; 0x16c5
    imul word [bp + 0xe]             ; 0x16c8
    add ax, word [bp - 0x0006]       ; 0x16cb
    add ax, word [bp - 0x0002]       ; 0x16ce
    inc ax                           ; 0x16d1
    push ax                          ; 0x16d2
    mov ax, word [bp + 0xc]          ; 0x16d3
    add ax, word [bp - 0x0004]       ; 0x16d6
    dec ax                           ; 0x16d9
    push ax                          ; 0x16da
    mov ax, word [bp - 0x0006]       ; 0x16db
    add ax, word [bp - 0x0002]       ; 0x16de
    dec ax                           ; 0x16e1
    push ax                          ; 0x16e2
    call thunk_10                    ; 0x16e3
    add sp, byte 8                   ; 0x16e6
    mov word [bp - 0x000a], dx       ; 0x16e9
    mov word [bp - 0x000c], ax       ; 0x16ec
    mov ax, 0                        ; 0x16ef
    push ax                          ; 0x16f2
    mov ax, word [bp + 0xc]          ; 0x16f3
    add ax, word [bp - 0x0004]       ; 0x16f6
    add ax, strict word 6            ; 0x16f9
    push ax                          ; 0x16fc
    mov ax, 6                        ; 0x16fd
    imul word [bp + 0xe]             ; 0x1700
    add ax, word [bp - 0x0006]       ; 0x1703
    add ax, word [bp - 0x0002]       ; 0x1706
    push ax                          ; 0x1709
    mov ax, word [bp + 0xc]          ; 0x170a
    add ax, word [bp - 0x0004]       ; 0x170d
    push ax                          ; 0x1710
    mov ax, word [bp - 0x0006]       ; 0x1711
    add ax, word [bp - 0x0002]       ; 0x1714
    push ax                          ; 0x1717
    call ds_app_PQGJ                 ; 0x1718
    add sp, byte 0x0a                ; 0x171b
    mov ax, 0xc0                     ; 0x171e
    push ax                          ; 0x1721
    push word [bp + 0x16]            ; 0x1722
    call thunk_3                     ; 0x1725
    add sp, byte 4                   ; 0x1728
    mov ax, word [bp + 0xc]          ; 0x172b
    add ax, word [bp - 0x0004]       ; 0x172e
    inc ax                           ; 0x1731
    push ax                          ; 0x1732
    push word [bp + 0x4]             ; 0x1733
    call aztec_strlen                ; 0x1736
    pop cx                           ; 0x1739
    mov cx, ax                       ; 0x173a
    mov ax, word [bp + 0xe]          ; 0x173c
    sub ax, cx                       ; 0x173f
    mov cx, 6                        ; 0x1741
    imul cx                          ; 0x1744
    mov cx, 2                        ; 0x1746
    cwd                              ; 0x1749
    idiv cx                          ; 0x174a
    add ax, word [bp - 0x0006]       ; 0x174c
    add ax, word [bp - 0x0002]       ; 0x174f
    inc ax                           ; 0x1752
    push ax                          ; 0x1753
    call thunk                       ; 0x1754
    add sp, byte 4                   ; 0x1757
    mov ax, 0                        ; 0x175a
    push ax                          ; 0x175d
    push word [bp + 0x4]             ; 0x175e
    call ds_string_loc_QRJV          ; 0x1761
    add sp, byte 4                   ; 0x1764
    mov ax, word [bp + 0xc]          ; 0x1767
    add ax, word [bp - 0x0004]       ; 0x176a
    add ax, strict word 7            ; 0x176d
    push ax                          ; 0x1770
    mov ax, 6                        ; 0x1771
    imul word [bp + 0xe]             ; 0x1774
    add ax, word [bp - 0x0006]       ; 0x1777
    add ax, word [bp - 0x0002]       ; 0x177a
    inc ax                           ; 0x177d
    push ax                          ; 0x177e
    mov ax, word [bp + 0xc]          ; 0x177f
    add ax, word [bp - 0x0004]       ; 0x1782
    dec ax                           ; 0x1785
    push ax                          ; 0x1786
    mov ax, word [bp - 0x0006]       ; 0x1787
    add ax, word [bp - 0x0002]       ; 0x178a
    dec ax                           ; 0x178d
    push ax                          ; 0x178e
    call thunk_4                     ; 0x178f
    add sp, byte 8                   ; 0x1792
    mov ax, 1                        ; 0x1795
    push ax                          ; 0x1798
    push word [bp - 0x000a]          ; 0x1799
    push word [bp - 0x000c]          ; 0x179c
    call thunk_13                    ; 0x179f
    add sp, byte 6                   ; 0x17a2
    ret                              ; 0x17a5
loc_MNNG:
    mov ax, 0                        ; 0x17a6
    call aztec_csav                  ; 0x17a9
    push word [bp + 0xc]             ; 0x17ac
    mov ax, word [bp + 0x6]          ; 0x17af
    dec ax                           ; 0x17b2
    push ax                          ; 0x17b3
    mov ax, word [bp + 0x8]          ; 0x17b4
    inc ax                           ; 0x17b7
    push ax                          ; 0x17b8
    mov ax, word [bp + 0x6]          ; 0x17b9
    dec ax                           ; 0x17bc
    push ax                          ; 0x17bd
    mov ax, word [bp + 0x4]          ; 0x17be
    dec ax                           ; 0x17c1
    push ax                          ; 0x17c2
    call thunk_7                     ; 0x17c3
    add sp, byte 0x0a                ; 0x17c6
    push word [bp + 0xc]             ; 0x17c9
    mov ax, word [bp + 0xa]          ; 0x17cc
    inc ax                           ; 0x17cf
    push ax                          ; 0x17d0
    mov ax, word [bp + 0x8]          ; 0x17d1
    inc ax                           ; 0x17d4
    push ax                          ; 0x17d5
    mov ax, word [bp + 0x6]          ; 0x17d6
    dec ax                           ; 0x17d9
    push ax                          ; 0x17da
    mov ax, word [bp + 0x8]          ; 0x17db
    inc ax                           ; 0x17de
    push ax                          ; 0x17df
    call thunk_7                     ; 0x17e0
    add sp, byte 0x0a                ; 0x17e3
    push word [bp + 0xc]             ; 0x17e6
    mov ax, word [bp + 0xa]          ; 0x17e9
    inc ax                           ; 0x17ec
    push ax                          ; 0x17ed
    mov ax, word [bp + 0x8]          ; 0x17ee
    inc ax                           ; 0x17f1
    push ax                          ; 0x17f2
    mov ax, word [bp + 0xa]          ; 0x17f3
    inc ax                           ; 0x17f6
    push ax                          ; 0x17f7
    mov ax, word [bp + 0x4]          ; 0x17f8
    dec ax                           ; 0x17fb
    push ax                          ; 0x17fc
    call thunk_7                     ; 0x17fd
    add sp, byte 0x0a                ; 0x1800
    push word [bp + 0xc]             ; 0x1803
    mov ax, word [bp + 0xa]          ; 0x1806
    inc ax                           ; 0x1809
    push ax                          ; 0x180a
    mov ax, word [bp + 0x4]          ; 0x180b
    dec ax                           ; 0x180e
    push ax                          ; 0x180f
    mov ax, word [bp + 0x6]          ; 0x1810
    dec ax                           ; 0x1813
    push ax                          ; 0x1814
    mov ax, word [bp + 0x4]          ; 0x1815
    dec ax                           ; 0x1818
    push ax                          ; 0x1819
    call thunk_7                     ; 0x181a
    add sp, byte 0x0a                ; 0x181d
    ret                              ; 0x1820
