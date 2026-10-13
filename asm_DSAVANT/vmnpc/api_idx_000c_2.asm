api_idx_000c_2:
    mov ax, 0xfff4                   ; 0x1676
    call ds_aztec_csav               ; 0x1679
    mov ax, word [bp + 0x14]         ; 0x167c
    shl ax, 1                        ; 0x167f
    mov word [bp - 0x0008], ax       ; 0x1681
    mov ax, word [bp + 0xa]          ; 0x1684
    mov cx, word [bp + 0x6]          ; 0x1687
    cmp cx, word [bp - 0x0008]       ; 0x168a
    jge short @..api_idx_000c_2.l1   ; 0x168d
    mov ax, word [bp + 0x8]          ; 0x168f
@..api_idx_000c_2.l1:
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
    call ds_loc_3b6f                 ; 0x16e3
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
    call ds_app_0f2a                 ; 0x1718
    add sp, byte 0x0a                ; 0x171b
    mov ax, 0xc0                     ; 0x171e
    push ax                          ; 0x1721
    push word [bp + 0x16]            ; 0x1722
    call ds_loc_3a6a                 ; 0x1725
    add sp, byte 4                   ; 0x1728
    mov ax, word [bp + 0xc]          ; 0x172b
    add ax, word [bp - 0x0004]       ; 0x172e
    inc ax                           ; 0x1731
    push ax                          ; 0x1732
    push word [bp + 0x4]             ; 0x1733
    call ds_aztec_strlen             ; 0x1736
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
    call ds_loc_3a50                 ; 0x1754
    add sp, byte 4                   ; 0x1757
    mov ax, 0                        ; 0x175a
    push ax                          ; 0x175d
    push word [bp + 0x4]             ; 0x175e
    call ds_string_loc_3a95          ; 0x1761
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
    call ds_loc_3b21                 ; 0x178f
    add sp, byte 8                   ; 0x1792
    mov ax, 1                        ; 0x1795
    push ax                          ; 0x1798
    push word [bp - 0x000a]          ; 0x1799
    push word [bp - 0x000c]          ; 0x179c
    call ds_loc_3b96                 ; 0x179f
    add sp, byte 6                   ; 0x17a2
    ret                              ; 0x17a5
loc_17a6:
    mov ax, 0                        ; 0x17a6
    call ds_aztec_csav               ; 0x17a9
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
    call ds_loc_3b48                 ; 0x17c3
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
    call ds_loc_3b48                 ; 0x17e0
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
    call ds_loc_3b48                 ; 0x17fd
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
    call ds_loc_3b48                 ; 0x181a
    add sp, byte 0x0a                ; 0x181d
    ret                              ; 0x1820
loc_1821:
    mov ax, 0xfe30                   ; 0x1821
    call ds_aztec_csav               ; 0x1824
    mov word [bss_9052], 0xffff      ; 0x1827
    mov ax, word [bp + 0x14]         ; 0x182d
    shl ax, 1                        ; 0x1830
    mov word [bp - 0x0010], ax       ; 0x1832
    mov word [bp - 0x0002], 0        ; 0x1835
    mov word [bp - 0x0004], 0        ; 0x183a
@..loc_1821.l1:
    mov ax, word [bp - 0x0004]       ; 0x183f
    shl ax, 1                        ; 0x1842
    mov si, ax                       ; 0x1844
    mov bx, word [bp + 0x1a]         ; 0x1846
    cmp word [bx + si], byte 0xff    ; 0x1849
    jne short @..loc_1821.l2         ; 0x184c
    jmp near @..loc_1821.l7          ; 0x184e
@..loc_1821.l2:
    cmp word [bx + si], byte 1       ; 0x1851
    je short @..loc_1821.l3          ; 0x1854
    jmp near @..loc_1821.l6          ; 0x1856
@..loc_1821.l3:
    mov ax, word [bp - 0x0002]       ; 0x1859
    cmp word [bp + 0x16], byte 0     ; 0x185c
    je short @..loc_1821.l4          ; 0x1860
    mov ax, word [bp - 0x0004]       ; 0x1862
@..loc_1821.l4:
    mov word [bp - 0x0008], ax       ; 0x1865
    mov ax, word [bp + 0xa]          ; 0x1868
    mov cx, word [bp - 0x0008]       ; 0x186b
    cmp cx, word [bp - 0x0010]       ; 0x186e
    jge short @..loc_1821.l5         ; 0x1871
    mov ax, word [bp + 0x8]          ; 0x1873
@..loc_1821.l5:
    mov word [bp - 0x0006], ax       ; 0x1876
    mov ax, 0x14                     ; 0x1879
    imul word [bp - 0x0002]          ; 0x187c
    lea cx, word [bp - 0x015a]       ; 0x187f
    add ax, cx                       ; 0x1883
    push ax                          ; 0x1885
    mov ax, word [bp + 0x4]          ; 0x1886
    add ax, word [bp - 0x0004]       ; 0x1889
    push ax                          ; 0x188c
    call ds_app_mem_0782             ; 0x188d
    add sp, byte 4                   ; 0x1890
    mov ax, word [bp - 0x0008]       ; 0x1893
    cwd                              ; 0x1896
    idiv word [bp - 0x0010]          ; 0x1897
    mov ax, dx                       ; 0x189a
    cwd                              ; 0x189c
    idiv word [bp + 0x14]            ; 0x189d
    imul word [bp + 0x10]            ; 0x18a0
    mov word [bp - 0x000a], ax       ; 0x18a3
    mov ax, word [bp - 0x0008]       ; 0x18a6
    cwd                              ; 0x18a9
    idiv word [bp - 0x0010]          ; 0x18aa
    mov ax, dx                       ; 0x18ad
    cwd                              ; 0x18af
    idiv word [bp + 0x14]            ; 0x18b0
    mov ax, dx                       ; 0x18b3
    imul word [bp + 0x12]            ; 0x18b5
    mov word [bp - 0x000c], ax       ; 0x18b8
    mov ax, 0                        ; 0x18bb
    push ax                          ; 0x18be
    mov ax, word [bp + 0xc]          ; 0x18bf
    add ax, word [bp - 0x000c]       ; 0x18c2
    add ax, strict word 6            ; 0x18c5
    push ax                          ; 0x18c8
    mov ax, 6                        ; 0x18c9
    imul word [bp + 0xe]             ; 0x18cc
    add ax, word [bp - 0x0006]       ; 0x18cf
    add ax, word [bp - 0x000a]       ; 0x18d2
    push ax                          ; 0x18d5
    mov ax, word [bp + 0xc]          ; 0x18d6
    add ax, word [bp - 0x000c]       ; 0x18d9
    push ax                          ; 0x18dc
    mov ax, word [bp - 0x0006]       ; 0x18dd
    add ax, word [bp - 0x000a]       ; 0x18e0
    push ax                          ; 0x18e3
    call ds_app_0f2a                 ; 0x18e4
    add sp, byte 0x0a                ; 0x18e7
    mov ax, 0                        ; 0x18ea
    push ax                          ; 0x18ed
    push word [bp + 0x18]            ; 0x18ee
    call ds_loc_3a6a                 ; 0x18f1
    add sp, byte 4                   ; 0x18f4
    mov ax, word [bp + 0xc]          ; 0x18f7
    add ax, word [bp - 0x000c]       ; 0x18fa
    inc ax                           ; 0x18fd
    push ax                          ; 0x18fe
    mov ax, 0x14                     ; 0x18ff
    imul word [bp - 0x0002]          ; 0x1902
    lea cx, word [bp - 0x015a]       ; 0x1905
    add ax, cx                       ; 0x1909
    push ax                          ; 0x190b
    call ds_aztec_strlen             ; 0x190c
    pop cx                           ; 0x190f
    mov cx, ax                       ; 0x1910
    mov ax, word [bp + 0xe]          ; 0x1912
    sub ax, cx                       ; 0x1915
    mov cx, 6                        ; 0x1917
    imul cx                          ; 0x191a
    mov cx, 2                        ; 0x191c
    cwd                              ; 0x191f
    idiv cx                          ; 0x1920
    add ax, word [bp - 0x0006]       ; 0x1922
    add ax, word [bp - 0x000a]       ; 0x1925
    inc ax                           ; 0x1928
    push ax                          ; 0x1929
    call ds_loc_3a50                 ; 0x192a
    add sp, byte 4                   ; 0x192d
    mov ax, 0                        ; 0x1930
    push ax                          ; 0x1933
    mov ax, 0x14                     ; 0x1934
    imul word [bp - 0x0002]          ; 0x1937
    lea cx, word [bp - 0x015a]       ; 0x193a
    add ax, cx                       ; 0x193e
    push ax                          ; 0x1940
    call ds_string_loc_3a95          ; 0x1941
    add sp, byte 4                   ; 0x1944
    mov ax, 0                        ; 0x1947
    push ax                          ; 0x194a
    push ax                          ; 0x194b
    mov ax, word [bp + 0xc]          ; 0x194c
    add ax, word [bp - 0x000c]       ; 0x194f
    add ax, strict word 6            ; 0x1952
    push ax                          ; 0x1955
    mov ax, 6                        ; 0x1956
    imul word [bp + 0xe]             ; 0x1959
    add ax, word [bp - 0x0006]       ; 0x195c
    add ax, word [bp - 0x000a]       ; 0x195f
    push ax                          ; 0x1962
    mov ax, word [bp + 0xc]          ; 0x1963
    add ax, word [bp - 0x000c]       ; 0x1966
    push ax                          ; 0x1969
    mov ax, word [bp - 0x0006]       ; 0x196a
    add ax, word [bp - 0x000a]       ; 0x196d
    push ax                          ; 0x1970
    push word [bp - 0x0002]          ; 0x1971
    call ds_app_0ced                 ; 0x1974
    add sp, byte 0x0e                ; 0x1977
    mov ax, word [bp - 0x0004]       ; 0x197a
    mov cx, word [bp - 0x0002]       ; 0x197d
    shl cx, 1                        ; 0x1980
    mov bx, cx                       ; 0x1982
    add bx, bp                       ; 0x1984
    mov word [bx - 0x002e], ax       ; 0x1986
    mov ax, word [bp - 0x0002]       ; 0x1989
    mov cx, word [bp - 0x0008]       ; 0x198c
    shl cx, 1                        ; 0x198f
    mov bx, cx                       ; 0x1991
    add bx, bp                       ; 0x1993
    mov word [bx - 0x01ce], ax       ; 0x1995
    inc word [bp - 0x0002]           ; 0x1999
@..loc_1821.l6:
    inc word [bp - 0x0004]           ; 0x199c
    jmp near @..loc_1821.l1          ; 0x199f
@..loc_1821.l7:
    mov ax, word [bp - 0x0004]       ; 0x19a2
    mov word [bp - 0x01ac], ax       ; 0x19a5
    mov ax, 0                        ; 0x19a9
    push ax                          ; 0x19ac
    push ax                          ; 0x19ad
    push ax                          ; 0x19ae
    push ax                          ; 0x19af
    push ax                          ; 0x19b0
    mov ax, 0xffff                   ; 0x19b1
    push ax                          ; 0x19b4
    push word [bp - 0x0002]          ; 0x19b5
    call ds_app_0ced                 ; 0x19b8
    add sp, byte 0x0e                ; 0x19bb
    push word [bp + 0x6]             ; 0x19be
    call loc_0c96                    ; 0x19c1
    pop cx                           ; 0x19c4
    cmp word [bss_0e32], byte 0      ; 0x19c5
    je short @..loc_1821.l9          ; 0x19ca
@..loc_1821.l8:
    mov ax, 0x59fe                   ; 0x19cc
    push ax                          ; 0x19cf
    call ds_app_io_0b54              ; 0x19d0
    pop cx                           ; 0x19d3
    mov word [bp - 0x0004], ax       ; 0x19d4
    call api_idx_0006_2              ; 0x19d7
    cmp word [bss_5b3e], byte 0      ; 0x19da
    je short @..loc_1821.l8          ; 0x19df
    jmp near @..loc_1821.l35         ; 0x19e1
@..loc_1821.l9:
    mov word [bp - 0x0004], 0        ; 0x19e4
@..loc_1821.l10:
    cmp word [bp + 0x16], byte 0     ; 0x19e9
    je short @..loc_1821.l11         ; 0x19ed
    mov ax, word [bp - 0x0004]       ; 0x19ef
    shl ax, 1                        ; 0x19f2
    mov si, ax                       ; 0x19f4
    mov bx, word [bp + 0x1a]         ; 0x19f6
    cmp word [bx + si], byte 1       ; 0x19f9
    je short @..loc_1821.l11         ; 0x19fc
    inc word [bp - 0x0004]           ; 0x19fe
    jmp short @..loc_1821.l10        ; 0x1a01
@..loc_1821.l11:
    mov ax, word [bp + 0xa]          ; 0x1a03
    mov cx, word [bp - 0x0004]       ; 0x1a06
    cmp cx, word [bp - 0x0010]       ; 0x1a09
    jge short @..loc_1821.l12        ; 0x1a0c
    mov ax, word [bp + 0x8]          ; 0x1a0e
@..loc_1821.l12:
    mov word [bp - 0x0006], ax       ; 0x1a11
    mov ax, cx                       ; 0x1a14
    cwd                              ; 0x1a16
    idiv word [bp - 0x0010]          ; 0x1a17
    mov ax, dx                       ; 0x1a1a
    cwd                              ; 0x1a1c
    idiv word [bp + 0x14]            ; 0x1a1d
    imul word [bp + 0x10]            ; 0x1a20
    mov word [bp - 0x000a], ax       ; 0x1a23
    mov ax, cx                       ; 0x1a26
    cwd                              ; 0x1a28
    idiv word [bp - 0x0010]          ; 0x1a29
    mov ax, dx                       ; 0x1a2c
    cwd                              ; 0x1a2e
    idiv word [bp + 0x14]            ; 0x1a2f
    mov ax, dx                       ; 0x1a32
    imul word [bp + 0x12]            ; 0x1a34
    mov word [bp - 0x000c], ax       ; 0x1a37
    mov ax, 0x16                     ; 0x1a3a
    push ax                          ; 0x1a3d
    mov ax, word [bp + 0xc]          ; 0x1a3e
    add ax, word [bp - 0x000c]       ; 0x1a41
    add ax, strict word 6            ; 0x1a44
    push ax                          ; 0x1a47
    mov ax, 6                        ; 0x1a48
    imul word [bp + 0xe]             ; 0x1a4b
    add ax, word [bp - 0x0006]       ; 0x1a4e
    add ax, word [bp - 0x000a]       ; 0x1a51
    push ax                          ; 0x1a54
    mov ax, word [bp + 0xc]          ; 0x1a55
    add ax, word [bp - 0x000c]       ; 0x1a58
    push ax                          ; 0x1a5b
    mov ax, word [bp - 0x0006]       ; 0x1a5c
    add ax, word [bp - 0x000a]       ; 0x1a5f
    push ax                          ; 0x1a62
    call loc_17a6                    ; 0x1a63
    add sp, byte 0x0a                ; 0x1a66
    push word [bp + 0x6]             ; 0x1a69
    call loc_0c96                    ; 0x1a6c
    pop cx                           ; 0x1a6f
    mov ax, 0                        ; 0x1a70
    push ax                          ; 0x1a73
    mov ax, word [bp + 0xc]          ; 0x1a74
    add ax, word [bp - 0x000c]       ; 0x1a77
    add ax, strict word 6            ; 0x1a7a
    push ax                          ; 0x1a7d
    mov ax, 6                        ; 0x1a7e
    imul word [bp + 0xe]             ; 0x1a81
    add ax, word [bp - 0x0006]       ; 0x1a84
    add ax, word [bp - 0x000a]       ; 0x1a87
    push ax                          ; 0x1a8a
    mov ax, word [bp + 0xc]          ; 0x1a8b
    add ax, word [bp - 0x000c]       ; 0x1a8e
    push ax                          ; 0x1a91
    mov ax, word [bp - 0x0006]       ; 0x1a92
    add ax, word [bp - 0x000a]       ; 0x1a95
    push ax                          ; 0x1a98
    call loc_17a6                    ; 0x1a99
    add sp, byte 0x0a                ; 0x1a9c
@..loc_1821.l13:
    mov ax, 1                        ; 0x1a9f
    push ax                          ; 0x1aa2
    call ds_dos_con_in_noecho        ; 0x1aa3
    pop cx                           ; 0x1aa6
    test ax, ax                      ; 0x1aa7
    jne short @..loc_1821.l14        ; 0x1aa9
    call api_idx_0006_2              ; 0x1aab
    jmp short @..loc_1821.l13        ; 0x1aae
@..loc_1821.l14:
    mov ax, 1                        ; 0x1ab0
    push ax                          ; 0x1ab3
    call ds_dos_con_in_noecho_2      ; 0x1ab4
    pop cx                           ; 0x1ab7
    sub ah, ah                       ; 0x1ab8
    mov word [bp - 0x01ae], ax       ; 0x1aba
    mov ax, word [bp - 0x0004]       ; 0x1abe
    cwd                              ; 0x1ac1
    idiv word [bp + 0x14]            ; 0x1ac2
    mov word [bp - 0x000a], ax       ; 0x1ac5
    mov ax, word [bp - 0x01ac]       ; 0x1ac8
    dec ax                           ; 0x1acc
    cwd                              ; 0x1acd
    idiv word [bp + 0x14]            ; 0x1ace
    inc ax                           ; 0x1ad1
    imul word [bp + 0x14]            ; 0x1ad2
    mov word [bp - 0x000c], ax       ; 0x1ad5
    mov ax, word [bp - 0x01ae]       ; 0x1ad8
    jmp near @..loc_1821.l29         ; 0x1adc
@..loc_1821.l15:
    mov ax, 1                        ; 0x1adf
    cmp word [bp - 0x01ae], byte 9   ; 0x1ae2
    jne short @..loc_1821.l16        ; 0x1ae7
    mov ax, 0xffff                   ; 0x1ae9
@..loc_1821.l16:
    mov word [bp - 0x01d0], ax       ; 0x1aec
@..loc_1821.l17:
    mov ax, word [bp - 0x0004]       ; 0x1af0
    add ax, word [bp - 0x01d0]       ; 0x1af3
    add ax, word [bp + 0x14]         ; 0x1af7
    cwd                              ; 0x1afa
    idiv word [bp + 0x14]            ; 0x1afb
    mov ax, dx                       ; 0x1afe
    push ax                          ; 0x1b00
    mov ax, word [bp - 0x000a]       ; 0x1b01
    imul word [bp + 0x14]            ; 0x1b04
    mov cx, ax                       ; 0x1b07
    pop ax                           ; 0x1b09
    add ax, cx                       ; 0x1b0a
    mov word [bp - 0x0004], ax       ; 0x1b0c
    cmp word [bp + 0x16], byte 0     ; 0x1b0f
    je short @..loc_1821.l18         ; 0x1b13
    mov ax, word [bp - 0x0004]       ; 0x1b15
    shl ax, 1                        ; 0x1b18
    mov si, ax                       ; 0x1b1a
    mov bx, word [bp + 0x1a]         ; 0x1b1c
    cmp word [bx + si], byte 1       ; 0x1b1f
    jne short @..loc_1821.l17        ; 0x1b22
@..loc_1821.l18:
    cmp word [bp + 0x16], byte 0     ; 0x1b24
    jne short @..loc_1821.l19        ; 0x1b28
    mov ax, word [bp - 0x0004]       ; 0x1b2a
    cmp ax, word [bp - 0x0002]       ; 0x1b2d
    jge short @..loc_1821.l17        ; 0x1b30
@..loc_1821.l19:
    jmp near @..loc_1821.l33         ; 0x1b32
@..loc_1821.l20:
    mov ax, 1                        ; 0x1b35
    cmp word [bp - 0x01ae], byte 8   ; 0x1b38
    jne short @..loc_1821.l21        ; 0x1b3d
    mov ax, 0xffff                   ; 0x1b3f
@..loc_1821.l21:
    mov word [bp - 0x01d0], ax       ; 0x1b42
@..loc_1821.l22:
    mov ax, word [bp + 0x14]         ; 0x1b46
    imul word [bp - 0x01d0]          ; 0x1b49
    add ax, word [bp - 0x0004]       ; 0x1b4d
    add ax, word [bp - 0x000c]       ; 0x1b50
    cwd                              ; 0x1b53
    idiv word [bp - 0x000c]          ; 0x1b54
    mov word [bp - 0x0004], dx       ; 0x1b57
    mov ax, dx                       ; 0x1b5a
    cwd                              ; 0x1b5c
    idiv word [bp + 0x14]            ; 0x1b5d
    mov word [bp - 0x000a], ax       ; 0x1b60
    mov word [bp - 0x01b0], 0        ; 0x1b63
@..loc_1821.l23:
    mov ax, word [bp - 0x01b0]       ; 0x1b69
    cmp ax, word [bp + 0x14]         ; 0x1b6d
    jge short @..loc_1821.l26        ; 0x1b70
    cmp word [bp + 0x16], byte 0     ; 0x1b72
    je short @..loc_1821.l24         ; 0x1b76
    mov ax, word [bp - 0x0004]       ; 0x1b78
    shl ax, 1                        ; 0x1b7b
    mov si, ax                       ; 0x1b7d
    mov bx, word [bp + 0x1a]         ; 0x1b7f
    cmp word [bx + si], byte 1       ; 0x1b82
    jne short @..loc_1821.l25        ; 0x1b85
@..loc_1821.l24:
    cmp word [bp + 0x16], byte 0     ; 0x1b87
    jne short @..loc_1821.l26        ; 0x1b8b
    mov ax, word [bp - 0x0004]       ; 0x1b8d
    cmp ax, word [bp - 0x0002]       ; 0x1b90
    jl short @..loc_1821.l26         ; 0x1b93
@..loc_1821.l25:
    mov ax, word [bp - 0x0004]       ; 0x1b95
    add ax, word [bp - 0x01d0]       ; 0x1b98
    add ax, word [bp + 0x14]         ; 0x1b9c
    cwd                              ; 0x1b9f
    idiv word [bp + 0x14]            ; 0x1ba0
    mov ax, dx                       ; 0x1ba3
    push ax                          ; 0x1ba5
    mov ax, word [bp - 0x000a]       ; 0x1ba6
    imul word [bp + 0x14]            ; 0x1ba9
    mov cx, ax                       ; 0x1bac
    pop ax                           ; 0x1bae
    add ax, cx                       ; 0x1baf
    mov word [bp - 0x0004], ax       ; 0x1bb1
    inc word [bp - 0x01b0]           ; 0x1bb4
    jmp short @..loc_1821.l23        ; 0x1bb8
@..loc_1821.l26:
    cmp word [bp + 0x16], byte 0     ; 0x1bba
    je short @..loc_1821.l27         ; 0x1bbe
    mov ax, word [bp - 0x0004]       ; 0x1bc0
    shl ax, 1                        ; 0x1bc3
    mov si, ax                       ; 0x1bc5
    mov bx, word [bp + 0x1a]         ; 0x1bc7
    cmp word [bx + si], byte 1       ; 0x1bca
    je short @..loc_1821.l27         ; 0x1bcd
    jmp near @..loc_1821.l22         ; 0x1bcf
@..loc_1821.l27:
    cmp word [bp + 0x16], byte 0     ; 0x1bd2
    jne short @..loc_1821.l28        ; 0x1bd6
    mov ax, word [bp - 0x0004]       ; 0x1bd8
    cmp ax, word [bp - 0x0002]       ; 0x1bdb
    jl short @..loc_1821.l28         ; 0x1bde
    jmp near @..loc_1821.l22         ; 0x1be0
@..loc_1821.l28:
    jmp short @..loc_1821.l33        ; 0x1be3
@..loc_1821.l29:
    cmp ax, strict word 8            ; 0x1be5
    jne short @..loc_1821.l30        ; 0x1be8
    jmp near @..loc_1821.l20         ; 0x1bea
@..loc_1821.l30:
    cmp ax, strict word 9            ; 0x1bed
    jne short @..loc_1821.l31        ; 0x1bf0
    jmp near @..loc_1821.l15         ; 0x1bf2
@..loc_1821.l31:
    cmp ax, strict word 0xa          ; 0x1bf5
    jne short @..loc_1821.l32        ; 0x1bf8
    jmp near @..loc_1821.l20         ; 0x1bfa
@..loc_1821.l32:
    cmp ax, strict word 0xb          ; 0x1bfd
    jne short @..loc_1821.l33        ; 0x1c00
    jmp near @..loc_1821.l15         ; 0x1c02
@..loc_1821.l33:
    cmp word [bp - 0x01ae], byte 0x0d ; 0x1c05
    je short @..loc_1821.l34         ; 0x1c0a
    jmp near @..loc_1821.l11         ; 0x1c0c
@..loc_1821.l34:
    mov ax, word [bp - 0x0004]       ; 0x1c0f
    shl ax, 1                        ; 0x1c12
    mov bx, ax                       ; 0x1c14
    add bx, bp                       ; 0x1c16
    mov ax, word [bx - 0x01ce]       ; 0x1c18
    mov word [bp - 0x0004], ax       ; 0x1c1c
    inc word [bp - 0x0004]           ; 0x1c1f
    push word [bp + 0x6]             ; 0x1c22
    call loc_0c96                    ; 0x1c25
    pop cx                           ; 0x1c28
@..loc_1821.l35:
    dec word [bp - 0x0004]           ; 0x1c29
    mov ax, word [bp - 0x0004]       ; 0x1c2c
    cmp word [bp + 0x16], byte 0     ; 0x1c2f
    je short @..loc_1821.l36         ; 0x1c33
    shl ax, 1                        ; 0x1c35
    mov bx, ax                       ; 0x1c37
    add bx, bp                       ; 0x1c39
    mov ax, word [bx - 0x002e]       ; 0x1c3b
@..loc_1821.l36:
    mov word [bp - 0x0008], ax       ; 0x1c3e
    mov ax, word [bp + 0xa]          ; 0x1c41
    mov cx, word [bp - 0x0008]       ; 0x1c44
    cmp cx, word [bp - 0x0010]       ; 0x1c47
    jge short @..loc_1821.l37        ; 0x1c4a
    mov ax, word [bp + 0x8]          ; 0x1c4c
@..loc_1821.l37:
    mov word [bp - 0x0006], ax       ; 0x1c4f
    mov ax, cx                       ; 0x1c52
    cwd                              ; 0x1c54
    idiv word [bp - 0x0010]          ; 0x1c55
    mov ax, dx                       ; 0x1c58
    cwd                              ; 0x1c5a
    idiv word [bp + 0x14]            ; 0x1c5b
    imul word [bp + 0x10]            ; 0x1c5e
    mov word [bp - 0x000a], ax       ; 0x1c61
    mov ax, cx                       ; 0x1c64
    cwd                              ; 0x1c66
    idiv word [bp - 0x0010]          ; 0x1c67
    mov ax, dx                       ; 0x1c6a
    cwd                              ; 0x1c6c
    idiv word [bp + 0x14]            ; 0x1c6d
    mov ax, dx                       ; 0x1c70
    imul word [bp + 0x12]            ; 0x1c72
    mov word [bp - 0x000c], ax       ; 0x1c75
    add ax, word [bp + 0xc]          ; 0x1c78
    add ax, strict word 6            ; 0x1c7b
    push ax                          ; 0x1c7e
    mov ax, 6                        ; 0x1c7f
    imul word [bp + 0xe]             ; 0x1c82
    add ax, word [bp - 0x0006]       ; 0x1c85
    add ax, word [bp - 0x000a]       ; 0x1c88
    push ax                          ; 0x1c8b
    mov ax, word [bp - 0x000c]       ; 0x1c8c
    add ax, word [bp + 0xc]          ; 0x1c8f
    push ax                          ; 0x1c92
    mov ax, word [bp - 0x0006]       ; 0x1c93
    add ax, word [bp - 0x000a]       ; 0x1c96
    push ax                          ; 0x1c99
    call ds_loc_3b55                 ; 0x1c9a
    add sp, byte 8                   ; 0x1c9d
    mov ax, word [bp - 0x000c]       ; 0x1ca0
    add ax, word [bp + 0xc]          ; 0x1ca3
    add ax, strict word 6            ; 0x1ca6
    push ax                          ; 0x1ca9
    mov ax, 6                        ; 0x1caa
    imul word [bp + 0xe]             ; 0x1cad
    add ax, word [bp - 0x0006]       ; 0x1cb0
    add ax, word [bp - 0x000a]       ; 0x1cb3
    push ax                          ; 0x1cb6
    mov ax, word [bp - 0x000c]       ; 0x1cb7
    add ax, word [bp + 0xc]          ; 0x1cba
    push ax                          ; 0x1cbd
    mov ax, word [bp - 0x0006]       ; 0x1cbe
    add ax, word [bp - 0x000a]       ; 0x1cc1
    push ax                          ; 0x1cc4
    call ds_loc_3b21                 ; 0x1cc5
    add sp, byte 8                   ; 0x1cc8
    mov ax, 0x19                     ; 0x1ccb
    push ax                          ; 0x1cce
    call ds_leaf_loc_36d0            ; 0x1ccf
    pop cx                           ; 0x1cd2
    mov ax, word [bp + 0xc]          ; 0x1cd3
    add ax, word [bp - 0x000c]       ; 0x1cd6
    add ax, strict word 6            ; 0x1cd9
    push ax                          ; 0x1cdc
    mov ax, 6                        ; 0x1cdd
    imul word [bp + 0xe]             ; 0x1ce0
    add ax, word [bp - 0x0006]       ; 0x1ce3
    add ax, word [bp - 0x000a]       ; 0x1ce6
    push ax                          ; 0x1ce9
    mov ax, word [bp + 0xc]          ; 0x1cea
    add ax, word [bp - 0x000c]       ; 0x1ced
    push ax                          ; 0x1cf0
    mov ax, word [bp - 0x0006]       ; 0x1cf1
    add ax, word [bp - 0x000a]       ; 0x1cf4
    push ax                          ; 0x1cf7
    call ds_loc_3b55                 ; 0x1cf8
    add sp, byte 8                   ; 0x1cfb
    mov ax, word [bp + 0xc]          ; 0x1cfe
    add ax, word [bp - 0x000c]       ; 0x1d01
    add ax, strict word 6            ; 0x1d04
    push ax                          ; 0x1d07
    mov ax, 6                        ; 0x1d08
    imul word [bp + 0xe]             ; 0x1d0b
    add ax, word [bp - 0x0006]       ; 0x1d0e
    add ax, word [bp - 0x000a]       ; 0x1d11
    push ax                          ; 0x1d14
    mov ax, word [bp + 0xc]          ; 0x1d15
    add ax, word [bp - 0x000c]       ; 0x1d18
    push ax                          ; 0x1d1b
    mov ax, word [bp - 0x0006]       ; 0x1d1c
    add ax, word [bp - 0x000a]       ; 0x1d1f
    push ax                          ; 0x1d22
    call ds_loc_3b21                 ; 0x1d23
    add sp, byte 8                   ; 0x1d26
    mov ax, word [bp - 0x0004]       ; 0x1d29
    mov word [bss_9052], ax          ; 0x1d2c
    shl ax, 1                        ; 0x1d2f
    mov bx, ax                       ; 0x1d31
    add bx, bp                       ; 0x1d33
    mov ax, word [bx - 0x002e]       ; 0x1d35
    ret                              ; 0x1d38
loc_1d39:
    mov ax, 0xfea6                   ; 0x1d39
    call ds_aztec_csav               ; 0x1d3c
    mov ax, word [bp + 0x16]         ; 0x1d3f
    dec ax                           ; 0x1d42
    cwd                              ; 0x1d43
    idiv word [bp + 0x14]            ; 0x1d44
    inc ax                           ; 0x1d47
    imul word [bp + 0x10]            ; 0x1d48
    add ax, word [bp + 0xa]          ; 0x1d4b
    push ax                          ; 0x1d4e
    mov ax, 6                        ; 0x1d4f
    imul word [bp + 0xe]             ; 0x1d52
    mov dx, ax                       ; 0x1d55
    mov cx, word [bp + 0x10]         ; 0x1d57
    sub cx, ax                       ; 0x1d5a
    pop ax                           ; 0x1d5c
    sub ax, cx                       ; 0x1d5d
    mov word [bp - 0x0006], ax       ; 0x1d5f
    mov ax, word [bp + 0x12]         ; 0x1d62
    imul word [bp + 0x14]            ; 0x1d65
    add ax, word [bp + 0xc]          ; 0x1d68
    mov cx, word [bp + 0x12]         ; 0x1d6b
    add cx, byte 0xf7                ; 0x1d6e
    sub ax, cx                       ; 0x1d71
    mov word [bp - 0x0008], ax       ; 0x1d73
    mov bx, word [bp + 0x4]          ; 0x1d76
    cmp byte [bx], 0                 ; 0x1d79
    jne short @..loc_1d39.l1         ; 0x1d7c
    jmp near @..loc_1d39.l2          ; 0x1d7e
@..loc_1d39.l1:
    mov ax, 0x90c4                   ; 0x1d81
    push ax                          ; 0x1d84
    mov ax, word [bp - 0x0008]       ; 0x1d85
    add ax, strict word 6            ; 0x1d88
    push ax                          ; 0x1d8b
    mov ax, word [bp - 0x0006]       ; 0x1d8c
    add ax, strict word 6            ; 0x1d8f
    push ax                          ; 0x1d92
    mov ax, word [bp + 0xc]          ; 0x1d93
    add ax, strict word 0xffeb       ; 0x1d96
    push ax                          ; 0x1d99
    mov ax, word [bp + 0xa]          ; 0x1d9a
    add ax, strict word 0xfffa       ; 0x1d9d
    push ax                          ; 0x1da0
    call ds_app_file_14ca            ; 0x1da1
    add sp, byte 0x0a                ; 0x1da4
    mov word [bp - 0x0158], ax       ; 0x1da7
    mov ax, word [bp - 0x0008]       ; 0x1dab
    add ax, strict word 5            ; 0x1dae
    push ax                          ; 0x1db1
    mov ax, word [bp - 0x0006]       ; 0x1db2
    add ax, strict word 5            ; 0x1db5
    push ax                          ; 0x1db8
    mov ax, word [bp + 0xc]          ; 0x1db9
    add ax, strict word 0xffec       ; 0x1dbc
    push ax                          ; 0x1dbf
    mov ax, word [bp + 0xa]          ; 0x1dc0
    add ax, strict word 0xfffb       ; 0x1dc3
    push ax                          ; 0x1dc6
    call ds_app_0ee1                 ; 0x1dc7
    add sp, byte 8                   ; 0x1dca
    mov ax, 0xc2                     ; 0x1dcd
    push ax                          ; 0x1dd0
    mov ax, 1                        ; 0x1dd1
    push ax                          ; 0x1dd4
    call ds_loc_3a6a                 ; 0x1dd5
    add sp, byte 4                   ; 0x1dd8
    mov ax, word [bp + 0xc]          ; 0x1ddb
    add ax, strict word 0xfff0       ; 0x1dde
    push ax                          ; 0x1de1
    push word [bp + 0x4]             ; 0x1de2
    call ds_aztec_strlen             ; 0x1de5
    pop cx                           ; 0x1de8
    mov cx, 6                        ; 0x1de9
    imul cx                          ; 0x1dec
    mov cx, 2                        ; 0x1dee
    cwd                              ; 0x1df1
    idiv cx                          ; 0x1df2
    mov cx, ax                       ; 0x1df4
    mov ax, 0xa0                     ; 0x1df6
    sub ax, cx                       ; 0x1df9
    push ax                          ; 0x1dfb
    call ds_loc_3a50                 ; 0x1dfc
    add sp, byte 4                   ; 0x1dff
    mov ax, 0                        ; 0x1e02
    push ax                          ; 0x1e05
    push word [bp + 0x4]             ; 0x1e06
    call ds_string_loc_3a95          ; 0x1e09
    add sp, byte 4                   ; 0x1e0c
    mov ax, word [bp + 0xc]          ; 0x1e0f
    add ax, strict word 0xfff6       ; 0x1e12
    push ax                          ; 0x1e15
    push word [bp + 0x6]             ; 0x1e16
    call ds_aztec_strlen             ; 0x1e19
    pop cx                           ; 0x1e1c
    mov cx, 6                        ; 0x1e1d
    imul cx                          ; 0x1e20
    mov cx, 2                        ; 0x1e22
    cwd                              ; 0x1e25
    idiv cx                          ; 0x1e26
    mov cx, ax                       ; 0x1e28
    mov ax, 0xa0                     ; 0x1e2a
    sub ax, cx                       ; 0x1e2d
    push ax                          ; 0x1e2f
    call ds_loc_3a50                 ; 0x1e30
    add sp, byte 4                   ; 0x1e33
    mov ax, 0                        ; 0x1e36
    push ax                          ; 0x1e39
    push word [bp + 0x6]             ; 0x1e3a
    call ds_string_loc_3a95          ; 0x1e3d
    add sp, byte 4                   ; 0x1e40
    jmp short @..loc_1d39.l3         ; 0x1e43
@..loc_1d39.l2:
    mov ax, 0x90ca                   ; 0x1e45
    push ax                          ; 0x1e48
    mov ax, word [bp - 0x0008]       ; 0x1e49
    inc ax                           ; 0x1e4c
    push ax                          ; 0x1e4d
    mov ax, word [bp - 0x0006]       ; 0x1e4e
    inc ax                           ; 0x1e51
    push ax                          ; 0x1e52
    mov ax, word [bp + 0xc]          ; 0x1e53
    dec ax                           ; 0x1e56
    push ax                          ; 0x1e57
    mov ax, word [bp + 0xa]          ; 0x1e58
    dec ax                           ; 0x1e5b
    push ax                          ; 0x1e5c
    call ds_app_file_14ca            ; 0x1e5d
    add sp, byte 0x0a                ; 0x1e60
    mov word [bp - 0x0158], ax       ; 0x1e63
@..loc_1d39.l3:
    mov word [bp - 0x0002], 0        ; 0x1e67
    mov word [bp - 0x0004], 0        ; 0x1e6c
@..loc_1d39.l4:
    mov ax, word [bp - 0x0004]       ; 0x1e71
    shl ax, 1                        ; 0x1e74
    mov si, ax                       ; 0x1e76
    mov bx, word [bp + 0x1e]         ; 0x1e78
    cmp word [bx + si], byte 0xff    ; 0x1e7b
    jne short @..loc_1d39.l5         ; 0x1e7e
    jmp near @..loc_1d39.l9          ; 0x1e80
@..loc_1d39.l5:
    cmp word [bx + si], byte 1       ; 0x1e83
    je short @..loc_1d39.l6          ; 0x1e86
    jmp near @..loc_1d39.l8          ; 0x1e88
@..loc_1d39.l6:
    mov ax, 0x14                     ; 0x1e8b
    imul word [bp - 0x0002]          ; 0x1e8e
    lea cx, word [bp - 0x0156]       ; 0x1e91
    add ax, cx                       ; 0x1e95
    push ax                          ; 0x1e97
    mov ax, word [bp + 0x8]          ; 0x1e98
    add ax, word [bp - 0x0004]       ; 0x1e9b
    push ax                          ; 0x1e9e
    call ds_app_mem_0782             ; 0x1e9f
    add sp, byte 4                   ; 0x1ea2
    mov ax, word [bp - 0x0002]       ; 0x1ea5
    cwd                              ; 0x1ea8
    idiv word [bp + 0x14]            ; 0x1ea9
    imul word [bp + 0x10]            ; 0x1eac
    mov word [bp - 0x000a], ax       ; 0x1eaf
    mov ax, word [bp - 0x0002]       ; 0x1eb2
    cwd                              ; 0x1eb5
    idiv word [bp + 0x14]            ; 0x1eb6
    mov ax, dx                       ; 0x1eb9
    imul word [bp + 0x12]            ; 0x1ebb
    mov word [bp - 0x000c], ax       ; 0x1ebe
    mov ax, 0                        ; 0x1ec1
    push ax                          ; 0x1ec4
    mov ax, word [bp + 0xc]          ; 0x1ec5
    add ax, word [bp - 0x000c]       ; 0x1ec8
    add ax, strict word 8            ; 0x1ecb
    push ax                          ; 0x1ece
    mov ax, 6                        ; 0x1ecf
    imul word [bp + 0xe]             ; 0x1ed2
    add ax, word [bp + 0xa]          ; 0x1ed5
    add ax, word [bp - 0x000a]       ; 0x1ed8
    push ax                          ; 0x1edb
    mov ax, word [bp + 0xc]          ; 0x1edc
    add ax, word [bp - 0x000c]       ; 0x1edf
    push ax                          ; 0x1ee2
    mov ax, word [bp + 0xa]          ; 0x1ee3
    add ax, word [bp - 0x000a]       ; 0x1ee6
    push ax                          ; 0x1ee9
    call ds_app_0f2a                 ; 0x1eea
    add sp, byte 0x0a                ; 0x1eed
    mov ax, 0xc0                     ; 0x1ef0
    push ax                          ; 0x1ef3
    mov ax, word [bp + 0x18]         ; 0x1ef4
    mov cx, word [bp - 0x0004]       ; 0x1ef7
    cmp cx, word [bp + 0x1a]         ; 0x1efa
    jne short @..loc_1d39.l7         ; 0x1efd
    mov ax, 0x1a                     ; 0x1eff
@..loc_1d39.l7:
    push ax                          ; 0x1f02
    call ds_loc_3a6a                 ; 0x1f03
    add sp, byte 4                   ; 0x1f06
    mov ax, word [bp + 0xc]          ; 0x1f09
    add ax, word [bp - 0x000c]       ; 0x1f0c
    inc ax                           ; 0x1f0f
    inc ax                           ; 0x1f10
    push ax                          ; 0x1f11
    mov ax, 0x14                     ; 0x1f12
    imul word [bp - 0x0002]          ; 0x1f15
    lea cx, word [bp - 0x0156]       ; 0x1f18
    add ax, cx                       ; 0x1f1c
    push ax                          ; 0x1f1e
    call ds_aztec_strlen             ; 0x1f1f
    pop cx                           ; 0x1f22
    mov cx, ax                       ; 0x1f23
    mov ax, word [bp + 0xe]          ; 0x1f25
    sub ax, cx                       ; 0x1f28
    mov cx, 6                        ; 0x1f2a
    imul cx                          ; 0x1f2d
    mov cx, 2                        ; 0x1f2f
    cwd                              ; 0x1f32
    idiv cx                          ; 0x1f33
    add ax, word [bp + 0xa]          ; 0x1f35
    add ax, word [bp - 0x000a]       ; 0x1f38
    inc ax                           ; 0x1f3b
    push ax                          ; 0x1f3c
    call ds_loc_3a50                 ; 0x1f3d
    add sp, byte 4                   ; 0x1f40
    mov ax, 0                        ; 0x1f43
    push ax                          ; 0x1f46
    mov ax, 0x14                     ; 0x1f47
    imul word [bp - 0x0002]          ; 0x1f4a
    lea cx, word [bp - 0x0156]       ; 0x1f4d
    add ax, cx                       ; 0x1f51
    push ax                          ; 0x1f53
    call ds_string_loc_3a95          ; 0x1f54
    add sp, byte 4                   ; 0x1f57
    mov ax, 0                        ; 0x1f5a
    push ax                          ; 0x1f5d
    push ax                          ; 0x1f5e
    mov ax, word [bp + 0xc]          ; 0x1f5f
    add ax, word [bp - 0x000c]       ; 0x1f62
    add ax, strict word 8            ; 0x1f65
    push ax                          ; 0x1f68
    mov ax, 6                        ; 0x1f69
    imul word [bp + 0xe]             ; 0x1f6c
    add ax, word [bp + 0xa]          ; 0x1f6f
    add ax, word [bp - 0x000a]       ; 0x1f72
    push ax                          ; 0x1f75
    mov ax, word [bp + 0xc]          ; 0x1f76
    add ax, word [bp - 0x000c]       ; 0x1f79
    push ax                          ; 0x1f7c
    mov ax, word [bp + 0xa]          ; 0x1f7d
    add ax, word [bp - 0x000a]       ; 0x1f80
    push ax                          ; 0x1f83
    push word [bp - 0x0002]          ; 0x1f84
    call ds_app_0ced                 ; 0x1f87
    add sp, byte 0x0e                ; 0x1f8a
    mov ax, word [bp - 0x0004]       ; 0x1f8d
    mov cx, word [bp - 0x0002]       ; 0x1f90
    shl cx, 1                        ; 0x1f93
    mov bx, cx                       ; 0x1f95
    add bx, bp                       ; 0x1f97
    mov word [bx - 0x002a], ax       ; 0x1f99
    inc word [bp - 0x0002]           ; 0x1f9c
@..loc_1d39.l8:
    inc word [bp - 0x0004]           ; 0x1f9f
    jmp near @..loc_1d39.l4          ; 0x1fa2
@..loc_1d39.l9:
    mov ax, 0                        ; 0x1fa5
    push ax                          ; 0x1fa8
    push ax                          ; 0x1fa9
    push ax                          ; 0x1faa
    push ax                          ; 0x1fab
    push ax                          ; 0x1fac
    mov ax, 0xffff                   ; 0x1fad
    push ax                          ; 0x1fb0
    push word [bp - 0x0002]          ; 0x1fb1
    call ds_app_0ced                 ; 0x1fb4
    add sp, byte 0x0e                ; 0x1fb7
    mov ax, 0xc6                     ; 0x1fba
    push ax                          ; 0x1fbd
    mov ax, 0x109                    ; 0x1fbe
    push ax                          ; 0x1fc1
    mov ax, 0x8e                     ; 0x1fc2
    push ax                          ; 0x1fc5
    mov ax, 0x36                     ; 0x1fc6
    push ax                          ; 0x1fc9
    call ds_loc_3b21                 ; 0x1fca
    add sp, byte 8                   ; 0x1fcd
    cmp word [bss_0e32], byte 0      ; 0x1fd0
    je short @..loc_1d39.l11         ; 0x1fd5
@..loc_1d39.l10:
    mov ax, 0x59fe                   ; 0x1fd7
    push ax                          ; 0x1fda
    call ds_app_io_0b54              ; 0x1fdb
    pop cx                           ; 0x1fde
    mov word [bp - 0x0004], ax       ; 0x1fdf
    cmp word [bss_5b3e], byte 0      ; 0x1fe2
    je short @..loc_1d39.l10         ; 0x1fe7
    jmp near @..loc_1d39.l20         ; 0x1fe9
@..loc_1d39.l11:
    mov word [bp - 0x0004], 0        ; 0x1fec
@..loc_1d39.l12:
    mov ax, word [bp - 0x0004]       ; 0x1ff1
    cwd                              ; 0x1ff4
    idiv word [bp + 0x14]            ; 0x1ff5
    imul word [bp + 0x10]            ; 0x1ff8
    mov word [bp - 0x000a], ax       ; 0x1ffb
    mov ax, word [bp - 0x0004]       ; 0x1ffe
    cwd                              ; 0x2001
    idiv word [bp + 0x14]            ; 0x2002
    mov ax, dx                       ; 0x2005
    imul word [bp + 0x12]            ; 0x2007
    mov word [bp - 0x000c], ax       ; 0x200a
    mov ax, 0x16                     ; 0x200d
    push ax                          ; 0x2010
    mov ax, word [bp + 0xc]          ; 0x2011
    add ax, word [bp - 0x000c]       ; 0x2014
    add ax, strict word 8            ; 0x2017
    push ax                          ; 0x201a
    mov ax, 6                        ; 0x201b
    imul word [bp + 0xe]             ; 0x201e
    add ax, word [bp + 0xa]          ; 0x2021
    add ax, word [bp - 0x000a]       ; 0x2024
    push ax                          ; 0x2027
    mov ax, word [bp + 0xc]          ; 0x2028
    add ax, word [bp - 0x000c]       ; 0x202b
    push ax                          ; 0x202e
    mov ax, word [bp + 0xa]          ; 0x202f
    add ax, word [bp - 0x000a]       ; 0x2032
    push ax                          ; 0x2035
    call loc_17a6                    ; 0x2036
    add sp, byte 0x0a                ; 0x2039
    mov ax, word [bp - 0x0008]       ; 0x203c
    inc ax                           ; 0x203f
    push ax                          ; 0x2040
    mov ax, word [bp - 0x0006]       ; 0x2041
    inc ax                           ; 0x2044
    push ax                          ; 0x2045
    mov ax, word [bp + 0xc]          ; 0x2046
    dec ax                           ; 0x2049
    push ax                          ; 0x204a
    mov ax, word [bp + 0xa]          ; 0x204b
    dec ax                           ; 0x204e
    push ax                          ; 0x204f
    call ds_loc_3b21                 ; 0x2050
    add sp, byte 8                   ; 0x2053
    mov ax, 0                        ; 0x2056
    push ax                          ; 0x2059
    mov ax, word [bp + 0xc]          ; 0x205a
    add ax, word [bp - 0x000c]       ; 0x205d
    add ax, strict word 8            ; 0x2060
    push ax                          ; 0x2063
    mov ax, 6                        ; 0x2064
    imul word [bp + 0xe]             ; 0x2067
    add ax, word [bp + 0xa]          ; 0x206a
    add ax, word [bp - 0x000a]       ; 0x206d
    push ax                          ; 0x2070
    mov ax, word [bp + 0xc]          ; 0x2071
    add ax, word [bp - 0x000c]       ; 0x2074
    push ax                          ; 0x2077
    mov ax, word [bp + 0xa]          ; 0x2078
    add ax, word [bp - 0x000a]       ; 0x207b
    push ax                          ; 0x207e
    call loc_17a6                    ; 0x207f
    add sp, byte 0x0a                ; 0x2082
@..loc_1d39.l13:
    mov ax, 1                        ; 0x2085
    push ax                          ; 0x2088
    call ds_dos_con_in_noecho        ; 0x2089
    pop cx                           ; 0x208c
    test ax, ax                      ; 0x208d
    jne short @..loc_1d39.l14        ; 0x208f
    jmp short @..loc_1d39.l13        ; 0x2091
@..loc_1d39.l14:
    mov ax, 1                        ; 0x2093
    push ax                          ; 0x2096
    call ds_dos_con_in_noecho_2      ; 0x2097
    pop cx                           ; 0x209a
    sub ah, ah                       ; 0x209b
    mov word [bp - 0x015a], ax       ; 0x209d
    jmp short @..loc_1d39.l17        ; 0x20a1
@..loc_1d39.l15:
    mov ax, word [bp - 0x0004]       ; 0x20a3
    add ax, word [bp - 0x0002]       ; 0x20a6
    dec ax                           ; 0x20a9
    cwd                              ; 0x20aa
    idiv word [bp - 0x0002]          ; 0x20ab
    mov word [bp - 0x0004], dx       ; 0x20ae
    jmp short @..loc_1d39.l18        ; 0x20b1
@..loc_1d39.l16:
    mov ax, word [bp - 0x0004]       ; 0x20b3
    inc ax                           ; 0x20b6
    cwd                              ; 0x20b7
    idiv word [bp - 0x0002]          ; 0x20b8
    mov word [bp - 0x0004], dx       ; 0x20bb
    jmp short @..loc_1d39.l18        ; 0x20be
@..loc_1d39.l17:
    cmp ax, strict word 8            ; 0x20c0
    je short @..loc_1d39.l15         ; 0x20c3
    cmp ax, strict word 9            ; 0x20c5
    je short @..loc_1d39.l16         ; 0x20c8
    cmp ax, strict word 0xa          ; 0x20ca
    je short @..loc_1d39.l16         ; 0x20cd
    cmp ax, strict word 0xb          ; 0x20cf
    je short @..loc_1d39.l15         ; 0x20d2
@..loc_1d39.l18:
    cmp word [bp - 0x015a], byte 0x0d ; 0x20d4
    je short @..loc_1d39.l19         ; 0x20d9
    jmp near @..loc_1d39.l12         ; 0x20db
@..loc_1d39.l19:
    inc word [bp - 0x0004]           ; 0x20de
    mov ax, word [bp - 0x0008]       ; 0x20e1
    inc ax                           ; 0x20e4
    push ax                          ; 0x20e5
    mov ax, word [bp - 0x0006]       ; 0x20e6
    inc ax                           ; 0x20e9
    push ax                          ; 0x20ea
    mov ax, word [bp + 0xc]          ; 0x20eb
    dec ax                           ; 0x20ee
    push ax                          ; 0x20ef
    mov ax, word [bp + 0xa]          ; 0x20f0
    dec ax                           ; 0x20f3
    push ax                          ; 0x20f4
    call ds_loc_3b21                 ; 0x20f5
    add sp, byte 8                   ; 0x20f8
@..loc_1d39.l20:
    dec word [bp - 0x0004]           ; 0x20fb
    mov ax, word [bp - 0x0004]       ; 0x20fe
    cwd                              ; 0x2101
    idiv word [bp + 0x14]            ; 0x2102
    imul word [bp + 0x10]            ; 0x2105
    mov word [bp - 0x000a], ax       ; 0x2108
    mov ax, word [bp - 0x0004]       ; 0x210b
    cwd                              ; 0x210e
    idiv word [bp + 0x14]            ; 0x210f
    mov ax, dx                       ; 0x2112
    imul word [bp + 0x12]            ; 0x2114
    mov word [bp - 0x000c], ax       ; 0x2117
    mov ax, 1                        ; 0x211a
    push ax                          ; 0x211d
    push ax                          ; 0x211e
    push word [bp + 0xe]             ; 0x211f
    mov ax, word [bp + 0xc]          ; 0x2122
    add ax, word [bp - 0x000c]       ; 0x2125
    push ax                          ; 0x2128
    mov ax, word [bp + 0xa]          ; 0x2129
    add ax, word [bp - 0x000a]       ; 0x212c
    push ax                          ; 0x212f
    call ds_app_10a6                 ; 0x2130
    add sp, byte 0x0a                ; 0x2133
    mov ax, 0                        ; 0x2136
    push ax                          ; 0x2139
    mov ax, 1                        ; 0x213a
    push ax                          ; 0x213d
    push word [bp + 0xe]             ; 0x213e
    mov ax, word [bp + 0xc]          ; 0x2141
    add ax, word [bp - 0x000c]       ; 0x2144
    push ax                          ; 0x2147
    mov ax, word [bp + 0xa]          ; 0x2148
    add ax, word [bp - 0x000a]       ; 0x214b
    push ax                          ; 0x214e
    call ds_app_10a6                 ; 0x214f
    add sp, byte 0x0a                ; 0x2152
    mov ax, 1                        ; 0x2155
    push ax                          ; 0x2158
    push word [bp - 0x0158]          ; 0x2159
    call ds_app_file_16a0            ; 0x215d
    add sp, byte 4                   ; 0x2160
    cmp word [bp + 0x1c], byte 0     ; 0x2163
    je short @..loc_1d39.l22         ; 0x2167
    mov bx, word [bp + 0x4]          ; 0x2169
    cmp byte [bx], 0                 ; 0x216c
    je short @..loc_1d39.l21         ; 0x216f
    mov ax, word [bp - 0x0008]       ; 0x2171
    add ax, strict word 6            ; 0x2174
    push ax                          ; 0x2177
    mov ax, word [bp - 0x0006]       ; 0x2178
    add ax, strict word 6            ; 0x217b
    push ax                          ; 0x217e
    mov ax, word [bp + 0xc]          ; 0x217f
    add ax, strict word 0xffeb       ; 0x2182
    push ax                          ; 0x2185
    mov ax, word [bp + 0xa]          ; 0x2186
    add ax, strict word 0xfffa       ; 0x2189
    push ax                          ; 0x218c
    call ds_loc_3b21                 ; 0x218d
    add sp, byte 8                   ; 0x2190
    jmp short @..loc_1d39.l22        ; 0x2193
@..loc_1d39.l21:
    mov ax, word [bp - 0x0008]       ; 0x2195
    inc ax                           ; 0x2198
    push ax                          ; 0x2199
    mov ax, word [bp - 0x0006]       ; 0x219a
    inc ax                           ; 0x219d
    push ax                          ; 0x219e
    mov ax, word [bp + 0xc]          ; 0x219f
    dec ax                           ; 0x21a2
    push ax                          ; 0x21a3
    mov ax, word [bp + 0xa]          ; 0x21a4
    dec ax                           ; 0x21a7
    push ax                          ; 0x21a8
    call ds_loc_3b21                 ; 0x21a9
    add sp, byte 8                   ; 0x21ac
@..loc_1d39.l22:
    mov ax, word [bp - 0x0004]       ; 0x21af
    mov word [bss_9052], ax          ; 0x21b2
    shl ax, 1                        ; 0x21b5
    mov bx, ax                       ; 0x21b7
    add bx, bp                       ; 0x21b9
    mov ax, word [bx - 0x002a]       ; 0x21bb
    ret                              ; 0x21be
loc_21bf:
    mov ax, 0                        ; 0x21bf
    call ds_aztec_csav               ; 0x21c2
    mov ax, word [bss_0e36]          ; 0x21c5
    mov word [bss_9136], ax          ; 0x21c8
    call loc_7400                    ; 0x21cb
    mov ax, 0                        ; 0x21ce
    ret                              ; 0x21d1
