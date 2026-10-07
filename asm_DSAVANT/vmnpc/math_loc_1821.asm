math_loc_1821:
    mov ax, 0xfe30                   ; 0x1821
    db 0xe8, 0xe4, 0xdb ; call 0xf40b
    mov word [data_9052], 0xffff     ; 0x1827
    mov ax, word [bp + 0x14]         ; 0x182d
    shl ax, 1                        ; 0x1830
    mov word [bp - 0x0010], ax       ; 0x1832
    mov word [bp - 0x0002], 0        ; 0x1835
    mov word [bp - 0x0004], 0        ; 0x183a
@..math_loc_1821.l1:
    mov ax, word [bp - 0x0004]       ; 0x183f
    shl ax, 1                        ; 0x1842
    mov si, ax                       ; 0x1844
    mov bx, word [bp + 0x1a]         ; 0x1846
    cmp word [bx + si], byte 0xff    ; 0x1849
    jne short @..math_loc_1821.l2    ; 0x184c
    jmp near @..math_loc_1821.l7     ; 0x184e
@..math_loc_1821.l2:
    cmp word [bx + si], byte 1       ; 0x1851
    je short @..math_loc_1821.l3     ; 0x1854
    jmp near @..math_loc_1821.l6     ; 0x1856
@..math_loc_1821.l3:
    mov ax, word [bp - 0x0002]       ; 0x1859
    cmp word [bp + 0x16], byte 0     ; 0x185c
    je short @..math_loc_1821.l4     ; 0x1860
    mov ax, word [bp - 0x0004]       ; 0x1862
@..math_loc_1821.l4:
    mov word [bp - 0x0008], ax       ; 0x1865
    mov ax, word [bp + 0xa]          ; 0x1868
    mov cx, word [bp - 0x0008]       ; 0x186b
    cmp cx, word [bp - 0x0010]       ; 0x186e
    jge short @..math_loc_1821.l5    ; 0x1871
    mov ax, word [bp + 0x8]          ; 0x1873
@..math_loc_1821.l5:
    mov word [bp - 0x0006], ax       ; 0x1876
    mov ax, 0x14                     ; 0x1879
    imul word [bp - 0x0002]          ; 0x187c
    lea cx, word [bp - 0x015a]       ; 0x187f
    add ax, cx                       ; 0x1883
    push ax                          ; 0x1885
    mov ax, word [bp + 0x4]          ; 0x1886
    add ax, word [bp - 0x0004]       ; 0x1889
    push ax                          ; 0x188c
    db 0xe8, 0xab, 0x9c ; call 0xb53b
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
    db 0xe8, 0xfc, 0xa3 ; call 0xbce3
    add sp, byte 0x0a                ; 0x18e7
    mov ax, 0                        ; 0x18ea
    push ax                          ; 0x18ed
    push word [bp + 0x18]            ; 0x18ee
    db 0xe8, 0x2f, 0xcf ; call 0xe823
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
    db 0xe8, 0x81, 0xe1 ; call 0xfa90
    pop cx                           ; 0x190f
    mov cx, ax                       ; 0x1910
    mov ax, word [bp + 0xe]          ; 0x1912
    sub ax, cx                       ; 0x1915
    mov cx, 6                        ; 0x1917
    imul cx                          ; 0x191a
    mov cx, data_0002                ; 0x191c
    cwd                              ; 0x191f
    idiv cx                          ; 0x1920
    add ax, word [bp - 0x0006]       ; 0x1922
    add ax, word [bp - 0x000a]       ; 0x1925
    inc ax                           ; 0x1928
    push ax                          ; 0x1929
    db 0xe8, 0xdc, 0xce ; call 0xe809
    add sp, byte 4                   ; 0x192d
    mov ax, 0                        ; 0x1930
    push ax                          ; 0x1933
    mov ax, 0x14                     ; 0x1934
    imul word [bp - 0x0002]          ; 0x1937
    lea cx, word [bp - 0x015a]       ; 0x193a
    add ax, cx                       ; 0x193e
    push ax                          ; 0x1940
    db 0xe8, 0x0a, 0xcf ; call 0xe84e
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
    call 0xbaa6                      ; 0x1974
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
@..math_loc_1821.l6:
    inc word [bp - 0x0004]           ; 0x199c
    jmp near @..math_loc_1821.l1     ; 0x199f
@..math_loc_1821.l7:
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
    db 0xe8, 0xeb, 0xa0 ; call 0xbaa6
    add sp, byte 0x0e                ; 0x19bb
    push word [bp + 0x6]             ; 0x19be
    call loc_0c96                    ; 0x19c1
    pop cx                           ; 0x19c4
    cmp word [data_0e32], byte 0     ; 0x19c5
    je short @..math_loc_1821.l9     ; 0x19ca
@..math_loc_1821.l8:
    mov ax, 0x59fe                   ; 0x19cc
    push ax                          ; 0x19cf
    call 0xb90d                      ; 0x19d0
    pop cx                           ; 0x19d3
    mov word [bp - 0x0004], ax       ; 0x19d4
    call api_idx_0006_2              ; 0x19d7
    cmp word [data_5b3e], byte 0     ; 0x19da
    je short @..math_loc_1821.l8     ; 0x19df
    jmp near @..math_loc_1821.l35    ; 0x19e1
@..math_loc_1821.l9:
    mov word [bp - 0x0004], 0        ; 0x19e4
@..math_loc_1821.l10:
    cmp word [bp + 0x16], byte 0     ; 0x19e9
    je short @..math_loc_1821.l11    ; 0x19ed
    mov ax, word [bp - 0x0004]       ; 0x19ef
    shl ax, 1                        ; 0x19f2
    mov si, ax                       ; 0x19f4
    mov bx, word [bp + 0x1a]         ; 0x19f6
    cmp word [bx + si], byte 1       ; 0x19f9
    je short @..math_loc_1821.l11    ; 0x19fc
    inc word [bp - 0x0004]           ; 0x19fe
    jmp short @..math_loc_1821.l10   ; 0x1a01
@..math_loc_1821.l11:
    mov ax, word [bp + 0xa]          ; 0x1a03
    mov cx, word [bp - 0x0004]       ; 0x1a06
    cmp cx, word [bp - 0x0010]       ; 0x1a09
    jge short @..math_loc_1821.l12   ; 0x1a0c
    mov ax, word [bp + 0x8]          ; 0x1a0e
@..math_loc_1821.l12:
    mov word [bp - 0x0006], ax       ; 0x1a11
    mov ax, cx                       ; 0x1a14
    cwd                              ; 0x1a16
    idiv word [bp - 0x0010]          ; 0x1a17
    mov ax, dx                       ; 0x1a1a
    cwd                              ; 0x1a1c
    idiv word [bp + 0x14]            ; 0x1a1d
