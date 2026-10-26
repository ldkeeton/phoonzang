; auto-generated
loc_RSHV:
    mov ax, 0xfe30                   ; 0x1821
    call aztec_csav                  ; 0x1824
    mov word [bss_9052], 0xffff      ; 0x1827
    mov ax, word [bp + 0x14]         ; 0x182d
    shl ax, 1                        ; 0x1830
    mov word [bp - 0x10], ax         ; 0x1832
    mov word [bp - 2], 0             ; 0x1835
    mov word [bp - 4], 0             ; 0x183a
@..loc_RSHV.l1:
    mov ax, word [bp - 4]            ; 0x183f
    shl ax, 1                        ; 0x1842
    mov si, ax                       ; 0x1844
    mov bx, word [bp + 0x1a]         ; 0x1846
    cmp word [bx + si], byte 0xff    ; 0x1849
    jne short @..loc_RSHV.l2         ; 0x184c
    jmp near @..loc_RSHV.l7          ; 0x184e
@..loc_RSHV.l2:
    cmp word [bx + si], byte 1       ; 0x1851
    je short @..loc_RSHV.l3          ; 0x1854
    jmp near @..loc_RSHV.l6          ; 0x1856
@..loc_RSHV.l3:
    mov ax, word [bp - 2]            ; 0x1859
    cmp word [bp + 0x16], byte 0     ; 0x185c
    je short @..loc_RSHV.l4          ; 0x1860
    mov ax, word [bp - 4]            ; 0x1862
@..loc_RSHV.l4:
    mov word [bp - 8], ax            ; 0x1865
    mov ax, word [bp + 0xa]          ; 0x1868
    mov cx, word [bp - 8]            ; 0x186b
    cmp cx, word [bp - 0x10]         ; 0x186e
    jge short @..loc_RSHV.l5         ; 0x1871
    mov ax, word [bp + 8]            ; 0x1873
@..loc_RSHV.l5:
    mov word [bp - 6], ax            ; 0x1876
    mov ax, 0x14                     ; 0x1879
    imul word [bp - 2]               ; 0x187c
    lea cx, word [bp - 0x15a]        ; 0x187f
    add ax, cx                       ; 0x1883
    push ax                          ; 0x1885
    mov ax, word [bp + 4]            ; 0x1886
    add ax, word [bp - 4]            ; 0x1889
    push ax                          ; 0x188c
    call load_message_string         ; 0x188d
    add sp, byte 4                   ; 0x1890
    mov ax, word [bp - 8]            ; 0x1893
    cwd                              ; 0x1896
    idiv word [bp - 0x10]            ; 0x1897
    mov ax, dx                       ; 0x189a
    cwd                              ; 0x189c
    idiv word [bp + 0x14]            ; 0x189d
    imul word [bp + 0x10]            ; 0x18a0
    mov word [bp - 0xa], ax          ; 0x18a3
    mov ax, word [bp - 8]            ; 0x18a6
    cwd                              ; 0x18a9
    idiv word [bp - 0x10]            ; 0x18aa
    mov ax, dx                       ; 0x18ad
    cwd                              ; 0x18af
    idiv word [bp + 0x14]            ; 0x18b0
    mov ax, dx                       ; 0x18b3
    imul word [bp + 0x12]            ; 0x18b5
    mov word [bp - 0xc], ax          ; 0x18b8
    mov ax, 0                        ; 0x18bb
    push ax                          ; 0x18be
    mov ax, word [bp + 0xc]          ; 0x18bf
    add ax, word [bp - 0xc]          ; 0x18c2
    add ax, strict word 6            ; 0x18c5
    push ax                          ; 0x18c8
    mov ax, 6                        ; 0x18c9
    imul word [bp + 0xe]             ; 0x18cc
    add ax, word [bp - 6]            ; 0x18cf
    add ax, word [bp - 0xa]          ; 0x18d2
    push ax                          ; 0x18d5
    mov ax, word [bp + 0xc]          ; 0x18d6
    add ax, word [bp - 0xc]          ; 0x18d9
    push ax                          ; 0x18dc
    mov ax, word [bp - 6]            ; 0x18dd
    add ax, word [bp - 0xa]          ; 0x18e0
    push ax                          ; 0x18e3
    call draw_bevel_frame            ; 0x18e4
    add sp, byte 0xa                 ; 0x18e7
    mov ax, 0                        ; 0x18ea
    push ax                          ; 0x18ed
    push word [bp + 0x18]            ; 0x18ee
    call gfx_set_text_color          ; 0x18f1
    add sp, byte 4                   ; 0x18f4
    mov ax, word [bp + 0xc]          ; 0x18f7
    add ax, word [bp - 0xc]          ; 0x18fa
    inc ax                           ; 0x18fd
    push ax                          ; 0x18fe
    mov ax, 0x14                     ; 0x18ff
    imul word [bp - 2]               ; 0x1902
    lea cx, word [bp - 0x15a]        ; 0x1905
    add ax, cx                       ; 0x1909
    push ax                          ; 0x190b
    call aztec_strlen                ; 0x190c
    pop cx                           ; 0x190f
    mov cx, ax                       ; 0x1910
    mov ax, word [bp + 0xe]          ; 0x1912
    sub ax, cx                       ; 0x1915
    mov cx, 6                        ; 0x1917
    imul cx                          ; 0x191a
    mov cx, 2                        ; 0x191c
    cwd                              ; 0x191f
    idiv cx                          ; 0x1920
    add ax, word [bp - 6]            ; 0x1922
    add ax, word [bp - 0xa]          ; 0x1925
    inc ax                           ; 0x1928
    push ax                          ; 0x1929
    call gfx_set_text_pos            ; 0x192a
    add sp, byte 4                   ; 0x192d
    mov ax, 0                        ; 0x1930
    push ax                          ; 0x1933
    mov ax, 0x14                     ; 0x1934
    imul word [bp - 2]               ; 0x1937
    lea cx, word [bp - 0x15a]        ; 0x193a
    add ax, cx                       ; 0x193e
    push ax                          ; 0x1940
    call draw_text_glyphs            ; 0x1941
    add sp, byte 4                   ; 0x1944
    mov ax, 0                        ; 0x1947
    push ax                          ; 0x194a
    push ax                          ; 0x194b
    mov ax, word [bp + 0xc]          ; 0x194c
    add ax, word [bp - 0xc]          ; 0x194f
    add ax, strict word 6            ; 0x1952
    push ax                          ; 0x1955
    mov ax, 6                        ; 0x1956
    imul word [bp + 0xe]             ; 0x1959
    add ax, word [bp - 6]            ; 0x195c
    add ax, word [bp - 0xa]          ; 0x195f
    push ax                          ; 0x1962
    mov ax, word [bp + 0xc]          ; 0x1963
    add ax, word [bp - 0xc]          ; 0x1966
    push ax                          ; 0x1969
    mov ax, word [bp - 6]            ; 0x196a
    add ax, word [bp - 0xa]          ; 0x196d
    push ax                          ; 0x1970
    push word [bp - 2]               ; 0x1971
    call set_hotspot                 ; 0x1974
    add sp, byte 0xe                 ; 0x1977
    mov ax, word [bp - 4]            ; 0x197a
    mov cx, word [bp - 2]            ; 0x197d
    shl cx, 1                        ; 0x1980
    mov bx, cx                       ; 0x1982
    add bx, bp                       ; 0x1984
    mov word [bx - 0x2e], ax         ; 0x1986
    mov ax, word [bp - 2]            ; 0x1989
    mov cx, word [bp - 8]            ; 0x198c
    shl cx, 1                        ; 0x198f
    mov bx, cx                       ; 0x1991
    add bx, bp                       ; 0x1993
    mov word [bx - 0x1ce], ax        ; 0x1995
    inc word [bp - 2]                ; 0x1999
@..loc_RSHV.l6:
    inc word [bp - 4]                ; 0x199c
    jmp near @..loc_RSHV.l1          ; 0x199f
@..loc_RSHV.l7:
    mov ax, word [bp - 4]            ; 0x19a2
    mov word [bp - 0x1ac], ax        ; 0x19a5
    mov ax, 0                        ; 0x19a9
    push ax                          ; 0x19ac
    push ax                          ; 0x19ad
    push ax                          ; 0x19ae
    push ax                          ; 0x19af
    push ax                          ; 0x19b0
    mov ax, 0xffff                   ; 0x19b1
    push ax                          ; 0x19b4
    push word [bp - 2]               ; 0x19b5
    call set_hotspot                 ; 0x19b8
    add sp, byte 0xe                 ; 0x19bb
    push word [bp + 6]               ; 0x19be
    call show_area_set               ; 0x19c1
    pop cx                           ; 0x19c4
    cmp word [mouse_active], byte 0  ; 0x19c5
    je short @..loc_RSHV.l9          ; 0x19ca
@..loc_RSHV.l8:
    mov ax, hotspot_rects            ; 0x19cc
    push ax                          ; 0x19cf
    call poll_hotspots               ; 0x19d0
    pop cx                           ; 0x19d3
    mov word [bp - 4], ax            ; 0x19d4
    call step_party_animation        ; 0x19d7
    cmp word [hotspot_hit], byte 0   ; 0x19da
    je short @..loc_RSHV.l8          ; 0x19df
    jmp near @..loc_RSHV.l35         ; 0x19e1
@..loc_RSHV.l9:
    mov word [bp - 4], 0             ; 0x19e4
@..loc_RSHV.l10:
    cmp word [bp + 0x16], byte 0     ; 0x19e9
    je short @..loc_RSHV.l11         ; 0x19ed
    mov ax, word [bp - 4]            ; 0x19ef
    shl ax, 1                        ; 0x19f2
    mov si, ax                       ; 0x19f4
    mov bx, word [bp + 0x1a]         ; 0x19f6
    cmp word [bx + si], byte 1       ; 0x19f9
    je short @..loc_RSHV.l11         ; 0x19fc
    inc word [bp - 4]                ; 0x19fe
    jmp short @..loc_RSHV.l10        ; 0x1a01
@..loc_RSHV.l11:
    mov ax, word [bp + 0xa]          ; 0x1a03
    mov cx, word [bp - 4]            ; 0x1a06
    cmp cx, word [bp - 0x10]         ; 0x1a09
    jge short @..loc_RSHV.l12        ; 0x1a0c
    mov ax, word [bp + 8]            ; 0x1a0e
@..loc_RSHV.l12:
    mov word [bp - 6], ax            ; 0x1a11
    mov ax, cx                       ; 0x1a14
    cwd                              ; 0x1a16
    idiv word [bp - 0x10]            ; 0x1a17
    mov ax, dx                       ; 0x1a1a
    cwd                              ; 0x1a1c
    idiv word [bp + 0x14]            ; 0x1a1d
    imul word [bp + 0x10]            ; 0x1a20
    mov word [bp - 0xa], ax          ; 0x1a23
    mov ax, cx                       ; 0x1a26
    cwd                              ; 0x1a28
    idiv word [bp - 0x10]            ; 0x1a29
    mov ax, dx                       ; 0x1a2c
    cwd                              ; 0x1a2e
    idiv word [bp + 0x14]            ; 0x1a2f
    mov ax, dx                       ; 0x1a32
    imul word [bp + 0x12]            ; 0x1a34
    mov word [bp - 0xc], ax          ; 0x1a37
    mov ax, 0x16                     ; 0x1a3a
    push ax                          ; 0x1a3d
    mov ax, word [bp + 0xc]          ; 0x1a3e
    add ax, word [bp - 0xc]          ; 0x1a41
    add ax, strict word 6            ; 0x1a44
    push ax                          ; 0x1a47
    mov ax, 6                        ; 0x1a48
    imul word [bp + 0xe]             ; 0x1a4b
    add ax, word [bp - 6]            ; 0x1a4e
    add ax, word [bp - 0xa]          ; 0x1a51
    push ax                          ; 0x1a54
    mov ax, word [bp + 0xc]          ; 0x1a55
    add ax, word [bp - 0xc]          ; 0x1a58
    push ax                          ; 0x1a5b
    mov ax, word [bp - 6]            ; 0x1a5c
    add ax, word [bp - 0xa]          ; 0x1a5f
    push ax                          ; 0x1a62
    call loc_MNNG                    ; 0x1a63
    add sp, byte 0xa                 ; 0x1a66
    push word [bp + 6]               ; 0x1a69
    call show_area_set               ; 0x1a6c
    pop cx                           ; 0x1a6f
    mov ax, 0                        ; 0x1a70
    push ax                          ; 0x1a73
    mov ax, word [bp + 0xc]          ; 0x1a74
    add ax, word [bp - 0xc]          ; 0x1a77
    add ax, strict word 6            ; 0x1a7a
    push ax                          ; 0x1a7d
    mov ax, 6                        ; 0x1a7e
    imul word [bp + 0xe]             ; 0x1a81
    add ax, word [bp - 6]            ; 0x1a84
    add ax, word [bp - 0xa]          ; 0x1a87
    push ax                          ; 0x1a8a
    mov ax, word [bp + 0xc]          ; 0x1a8b
    add ax, word [bp - 0xc]          ; 0x1a8e
    push ax                          ; 0x1a91
    mov ax, word [bp - 6]            ; 0x1a92
    add ax, word [bp - 0xa]          ; 0x1a95
    push ax                          ; 0x1a98
    call loc_MNNG                    ; 0x1a99
    add sp, byte 0xa                 ; 0x1a9c
@..loc_RSHV.l13:
    mov ax, 1                        ; 0x1a9f
    push ax                          ; 0x1aa2
    call poll_filtered_key           ; 0x1aa3
    pop cx                           ; 0x1aa6
    test ax, ax                      ; 0x1aa7
    jne short @..loc_RSHV.l14        ; 0x1aa9
    call step_party_animation        ; 0x1aab
    jmp short @..loc_RSHV.l13        ; 0x1aae
@..loc_RSHV.l14:
    mov ax, 1                        ; 0x1ab0
    push ax                          ; 0x1ab3
    call get_filtered_key            ; 0x1ab4
    pop cx                           ; 0x1ab7
    sub ah, ah                       ; 0x1ab8
    mov word [bp - 0x1ae], ax        ; 0x1aba
    mov ax, word [bp - 4]            ; 0x1abe
    cwd                              ; 0x1ac1
    idiv word [bp + 0x14]            ; 0x1ac2
    mov word [bp - 0xa], ax          ; 0x1ac5
    mov ax, word [bp - 0x1ac]        ; 0x1ac8
    dec ax                           ; 0x1acc
    cwd                              ; 0x1acd
    idiv word [bp + 0x14]            ; 0x1ace
    inc ax                           ; 0x1ad1
    imul word [bp + 0x14]            ; 0x1ad2
    mov word [bp - 0xc], ax          ; 0x1ad5
    mov ax, word [bp - 0x1ae]        ; 0x1ad8
    jmp near @..loc_RSHV.l29         ; 0x1adc
@..loc_RSHV.l15:
    mov ax, 1                        ; 0x1adf
    cmp word [bp - 0x1ae], byte 9    ; 0x1ae2
    jne short @..loc_RSHV.l16        ; 0x1ae7
    mov ax, 0xffff                   ; 0x1ae9
@..loc_RSHV.l16:
    mov word [bp - 0x1d0], ax        ; 0x1aec
@..loc_RSHV.l17:
    mov ax, word [bp - 4]            ; 0x1af0
    add ax, word [bp - 0x1d0]        ; 0x1af3
    add ax, word [bp + 0x14]         ; 0x1af7
    cwd                              ; 0x1afa
    idiv word [bp + 0x14]            ; 0x1afb
    mov ax, dx                       ; 0x1afe
    push ax                          ; 0x1b00
    mov ax, word [bp - 0xa]          ; 0x1b01
    imul word [bp + 0x14]            ; 0x1b04
    mov cx, ax                       ; 0x1b07
    pop ax                           ; 0x1b09
    add ax, cx                       ; 0x1b0a
    mov word [bp - 4], ax            ; 0x1b0c
    cmp word [bp + 0x16], byte 0     ; 0x1b0f
    je short @..loc_RSHV.l18         ; 0x1b13
    mov ax, word [bp - 4]            ; 0x1b15
    shl ax, 1                        ; 0x1b18
    mov si, ax                       ; 0x1b1a
    mov bx, word [bp + 0x1a]         ; 0x1b1c
    cmp word [bx + si], byte 1       ; 0x1b1f
    jne short @..loc_RSHV.l17        ; 0x1b22
@..loc_RSHV.l18:
    cmp word [bp + 0x16], byte 0     ; 0x1b24
    jne short @..loc_RSHV.l19        ; 0x1b28
    mov ax, word [bp - 4]            ; 0x1b2a
    cmp ax, word [bp - 2]            ; 0x1b2d
    jge short @..loc_RSHV.l17        ; 0x1b30
@..loc_RSHV.l19:
    jmp near @..loc_RSHV.l33         ; 0x1b32
@..loc_RSHV.l20:
    mov ax, 1                        ; 0x1b35
    cmp word [bp - 0x1ae], byte 8    ; 0x1b38
    jne short @..loc_RSHV.l21        ; 0x1b3d
    mov ax, 0xffff                   ; 0x1b3f
@..loc_RSHV.l21:
    mov word [bp - 0x1d0], ax        ; 0x1b42
@..loc_RSHV.l22:
    mov ax, word [bp + 0x14]         ; 0x1b46
    imul word [bp - 0x1d0]           ; 0x1b49
    add ax, word [bp - 4]            ; 0x1b4d
    add ax, word [bp - 0xc]          ; 0x1b50
    cwd                              ; 0x1b53
    idiv word [bp - 0xc]             ; 0x1b54
    mov word [bp - 4], dx            ; 0x1b57
    mov ax, dx                       ; 0x1b5a
    cwd                              ; 0x1b5c
    idiv word [bp + 0x14]            ; 0x1b5d
    mov word [bp - 0xa], ax          ; 0x1b60
    mov word [bp - 0x1b0], 0         ; 0x1b63
@..loc_RSHV.l23:
    mov ax, word [bp - 0x1b0]        ; 0x1b69
    cmp ax, word [bp + 0x14]         ; 0x1b6d
    jge short @..loc_RSHV.l26        ; 0x1b70
    cmp word [bp + 0x16], byte 0     ; 0x1b72
    je short @..loc_RSHV.l24         ; 0x1b76
    mov ax, word [bp - 4]            ; 0x1b78
    shl ax, 1                        ; 0x1b7b
    mov si, ax                       ; 0x1b7d
    mov bx, word [bp + 0x1a]         ; 0x1b7f
    cmp word [bx + si], byte 1       ; 0x1b82
    jne short @..loc_RSHV.l25        ; 0x1b85
@..loc_RSHV.l24:
    cmp word [bp + 0x16], byte 0     ; 0x1b87
    jne short @..loc_RSHV.l26        ; 0x1b8b
    mov ax, word [bp - 4]            ; 0x1b8d
    cmp ax, word [bp - 2]            ; 0x1b90
    jl short @..loc_RSHV.l26         ; 0x1b93
@..loc_RSHV.l25:
    mov ax, word [bp - 4]            ; 0x1b95
    add ax, word [bp - 0x1d0]        ; 0x1b98
    add ax, word [bp + 0x14]         ; 0x1b9c
    cwd                              ; 0x1b9f
    idiv word [bp + 0x14]            ; 0x1ba0
    mov ax, dx                       ; 0x1ba3
    push ax                          ; 0x1ba5
    mov ax, word [bp - 0xa]          ; 0x1ba6
    imul word [bp + 0x14]            ; 0x1ba9
    mov cx, ax                       ; 0x1bac
    pop ax                           ; 0x1bae
    add ax, cx                       ; 0x1baf
    mov word [bp - 4], ax            ; 0x1bb1
    inc word [bp - 0x1b0]            ; 0x1bb4
    jmp short @..loc_RSHV.l23        ; 0x1bb8
@..loc_RSHV.l26:
    cmp word [bp + 0x16], byte 0     ; 0x1bba
    je short @..loc_RSHV.l27         ; 0x1bbe
    mov ax, word [bp - 4]            ; 0x1bc0
    shl ax, 1                        ; 0x1bc3
    mov si, ax                       ; 0x1bc5
    mov bx, word [bp + 0x1a]         ; 0x1bc7
    cmp word [bx + si], byte 1       ; 0x1bca
    je short @..loc_RSHV.l27         ; 0x1bcd
    jmp near @..loc_RSHV.l22         ; 0x1bcf
@..loc_RSHV.l27:
    cmp word [bp + 0x16], byte 0     ; 0x1bd2
    jne short @..loc_RSHV.l28        ; 0x1bd6
    mov ax, word [bp - 4]            ; 0x1bd8
    cmp ax, word [bp - 2]            ; 0x1bdb
    jl short @..loc_RSHV.l28         ; 0x1bde
    jmp near @..loc_RSHV.l22         ; 0x1be0
@..loc_RSHV.l28:
    jmp short @..loc_RSHV.l33        ; 0x1be3
@..loc_RSHV.l29:
    cmp ax, strict word 8            ; 0x1be5
    jne short @..loc_RSHV.l30        ; 0x1be8
    jmp near @..loc_RSHV.l20         ; 0x1bea
@..loc_RSHV.l30:
    cmp ax, strict word 9            ; 0x1bed
    jne short @..loc_RSHV.l31        ; 0x1bf0
    jmp near @..loc_RSHV.l15         ; 0x1bf2
@..loc_RSHV.l31:
    cmp ax, strict word 0xa          ; 0x1bf5
    jne short @..loc_RSHV.l32        ; 0x1bf8
    jmp near @..loc_RSHV.l20         ; 0x1bfa
@..loc_RSHV.l32:
    cmp ax, strict word 0xb          ; 0x1bfd
    jne short @..loc_RSHV.l33        ; 0x1c00
    jmp near @..loc_RSHV.l15         ; 0x1c02
@..loc_RSHV.l33:
    cmp word [bp - 0x1ae], byte 0xd  ; 0x1c05
    je short @..loc_RSHV.l34         ; 0x1c0a
    jmp near @..loc_RSHV.l11         ; 0x1c0c
@..loc_RSHV.l34:
    mov ax, word [bp - 4]            ; 0x1c0f
    shl ax, 1                        ; 0x1c12
    mov bx, ax                       ; 0x1c14
    add bx, bp                       ; 0x1c16
    mov ax, word [bx - 0x1ce]        ; 0x1c18
    mov word [bp - 4], ax            ; 0x1c1c
    inc word [bp - 4]                ; 0x1c1f
    push word [bp + 6]               ; 0x1c22
    call show_area_set               ; 0x1c25
    pop cx                           ; 0x1c28
@..loc_RSHV.l35:
    dec word [bp - 4]                ; 0x1c29
    mov ax, word [bp - 4]            ; 0x1c2c
    cmp word [bp + 0x16], byte 0     ; 0x1c2f
    je short @..loc_RSHV.l36         ; 0x1c33
    shl ax, 1                        ; 0x1c35
    mov bx, ax                       ; 0x1c37
    add bx, bp                       ; 0x1c39
    mov ax, word [bx - 0x2e]         ; 0x1c3b
@..loc_RSHV.l36:
    mov word [bp - 8], ax            ; 0x1c3e
    mov ax, word [bp + 0xa]          ; 0x1c41
    mov cx, word [bp - 8]            ; 0x1c44
    cmp cx, word [bp - 0x10]         ; 0x1c47
    jge short @..loc_RSHV.l37        ; 0x1c4a
    mov ax, word [bp + 8]            ; 0x1c4c
@..loc_RSHV.l37:
    mov word [bp - 6], ax            ; 0x1c4f
    mov ax, cx                       ; 0x1c52
    cwd                              ; 0x1c54
    idiv word [bp - 0x10]            ; 0x1c55
    mov ax, dx                       ; 0x1c58
    cwd                              ; 0x1c5a
    idiv word [bp + 0x14]            ; 0x1c5b
    imul word [bp + 0x10]            ; 0x1c5e
    mov word [bp - 0xa], ax          ; 0x1c61
    mov ax, cx                       ; 0x1c64
    cwd                              ; 0x1c66
    idiv word [bp - 0x10]            ; 0x1c67
    mov ax, dx                       ; 0x1c6a
    cwd                              ; 0x1c6c
    idiv word [bp + 0x14]            ; 0x1c6d
    mov ax, dx                       ; 0x1c70
    imul word [bp + 0x12]            ; 0x1c72
    mov word [bp - 0xc], ax          ; 0x1c75
    add ax, word [bp + 0xc]          ; 0x1c78
    add ax, strict word 6            ; 0x1c7b
    push ax                          ; 0x1c7e
    mov ax, 6                        ; 0x1c7f
    imul word [bp + 0xe]             ; 0x1c82
    add ax, word [bp - 6]            ; 0x1c85
    add ax, word [bp - 0xa]          ; 0x1c88
    push ax                          ; 0x1c8b
    mov ax, word [bp - 0xc]          ; 0x1c8c
    add ax, word [bp + 0xc]          ; 0x1c8f
    push ax                          ; 0x1c92
    mov ax, word [bp - 6]            ; 0x1c93
    add ax, word [bp - 0xa]          ; 0x1c96
    push ax                          ; 0x1c99
    call gfx_invert_area             ; 0x1c9a
    add sp, byte 8                   ; 0x1c9d
    mov ax, word [bp - 0xc]          ; 0x1ca0
    add ax, word [bp + 0xc]          ; 0x1ca3
    add ax, strict word 6            ; 0x1ca6
    push ax                          ; 0x1ca9
    mov ax, 6                        ; 0x1caa
    imul word [bp + 0xe]             ; 0x1cad
    add ax, word [bp - 6]            ; 0x1cb0
    add ax, word [bp - 0xa]          ; 0x1cb3
    push ax                          ; 0x1cb6
    mov ax, word [bp - 0xc]          ; 0x1cb7
    add ax, word [bp + 0xc]          ; 0x1cba
    push ax                          ; 0x1cbd
    mov ax, word [bp - 6]            ; 0x1cbe
    add ax, word [bp - 0xa]          ; 0x1cc1
    push ax                          ; 0x1cc4
    call gfx_show_area               ; 0x1cc5
    add sp, byte 8                   ; 0x1cc8
    mov ax, 0x19                     ; 0x1ccb
    push ax                          ; 0x1cce
    call delay_ms                    ; 0x1ccf
    pop cx                           ; 0x1cd2
    mov ax, word [bp + 0xc]          ; 0x1cd3
    add ax, word [bp - 0xc]          ; 0x1cd6
    add ax, strict word 6            ; 0x1cd9
    push ax                          ; 0x1cdc
    mov ax, 6                        ; 0x1cdd
    imul word [bp + 0xe]             ; 0x1ce0
    add ax, word [bp - 6]            ; 0x1ce3
    add ax, word [bp - 0xa]          ; 0x1ce6
    push ax                          ; 0x1ce9
    mov ax, word [bp + 0xc]          ; 0x1cea
    add ax, word [bp - 0xc]          ; 0x1ced
    push ax                          ; 0x1cf0
    mov ax, word [bp - 6]            ; 0x1cf1
    add ax, word [bp - 0xa]          ; 0x1cf4
    push ax                          ; 0x1cf7
    call gfx_invert_area             ; 0x1cf8
    add sp, byte 8                   ; 0x1cfb
    mov ax, word [bp + 0xc]          ; 0x1cfe
    add ax, word [bp - 0xc]          ; 0x1d01
    add ax, strict word 6            ; 0x1d04
    push ax                          ; 0x1d07
    mov ax, 6                        ; 0x1d08
    imul word [bp + 0xe]             ; 0x1d0b
    add ax, word [bp - 6]            ; 0x1d0e
    add ax, word [bp - 0xa]          ; 0x1d11
    push ax                          ; 0x1d14
    mov ax, word [bp + 0xc]          ; 0x1d15
    add ax, word [bp - 0xc]          ; 0x1d18
    push ax                          ; 0x1d1b
    mov ax, word [bp - 6]            ; 0x1d1c
    add ax, word [bp - 0xa]          ; 0x1d1f
    push ax                          ; 0x1d22
    call gfx_show_area               ; 0x1d23
    add sp, byte 8                   ; 0x1d26
    mov ax, word [bp - 4]            ; 0x1d29
    mov word [bss_9052], ax          ; 0x1d2c
    shl ax, 1                        ; 0x1d2f
    mov bx, ax                       ; 0x1d31
    add bx, bp                       ; 0x1d33
    mov ax, word [bx - 0x2e]         ; 0x1d35
    ret                              ; 0x1d38
