; auto-generated
map_bane_character_kind:
    mov ax, 0                        ; 0x1820
    call aztec_csav                  ; 0x1823
    mov ax, word [bp + 4]            ; 0x1826
    jmp short .forward1              ; 0x1829
jumptable_185e_case_0:
    mov ax, 0xc                      ; 0x182b
    cmp word [bp + 6], byte 0        ; 0x182e
    jne short map_bane_character_kind.return1 ; 0x1832
    mov ax, 0xd                      ; 0x1834
map_bane_character_kind.return1:
    ret                              ; 0x1837
jumptable_185e_case_1:
    mov ax, 0x1a                     ; 0x1838
    ret                              ; 0x183b
jumptable_185e_case_2:
    mov ax, 0x18                     ; 0x183c
    ret                              ; 0x183f
jumptable_185e_case_3:
    mov ax, 8                        ; 0x1840
    cmp word [bp + 6], byte 0        ; 0x1843
    jne short map_bane_character_kind.return2 ; 0x1847
    mov ax, 3                        ; 0x1849
map_bane_character_kind.return2:
    ret                              ; 0x184c
jumptable_185e_case_4:
    mov ax, 7                        ; 0x184d
    cmp word [bp + 6], byte 0        ; 0x1850
    jne short map_bane_character_kind.return3 ; 0x1854
    mov ax, 5                        ; 0x1856
map_bane_character_kind.return3:
    ret                              ; 0x1859
jumptable_185e_case_5:
    mov ax, 0x16                     ; 0x185a
    ret                              ; 0x185d
jumptable_185e:
    dw jumptable_185e_case_0 - IMAGE_BASE + __zres_end ; 0x185e
    dw jumptable_185e_case_1 - IMAGE_BASE + __zres_end ; 0x1860
    dw jumptable_185e_case_2 - IMAGE_BASE + __zres_end ; 0x1862
    dw jumptable_185e_case_3 - IMAGE_BASE + __zres_end ; 0x1864
    dw jumptable_185e_case_4 - IMAGE_BASE + __zres_end ; 0x1866
    dw jumptable_185e_case_5 - IMAGE_BASE + __zres_end ; 0x1868
map_bane_character_kind.forward1:
    sub ax, strict word 5            ; 0x186a
    cmp ax, strict word 6            ; 0x186d
    jae short map_bane_character_kind.forward2 ; 0x1870
    xchg bx, ax                      ; 0x1872
    shl bx, 1                        ; 0x1873
    jmp [cs:bx + jumptable_185e - IMAGE_BASE + __zres_end] ; 0x1875
map_bane_character_kind.forward2:
    cmp word [bp + 8], byte 0xd      ; 0x187a
    jne short map_bane_character_kind.forward3 ; 0x187e
    mov ax, 0x12                     ; 0x1880
    ret                              ; 0x1883
map_bane_character_kind.forward3:
    cmp word [bp + 4], byte 1        ; 0x1884
    jne short map_bane_character_kind.forward5 ; 0x1888
    mov ax, word [bp + 8]            ; 0x188a
    jmp short map_bane_character_kind.forward4 ; 0x188d
jumptable_18c7_case_0:
    mov ax, 0xa                      ; 0x188f
    cmp word [bp + 6], byte 0        ; 0x1892
    jne short map_bane_character_kind.return4 ; 0x1896
    mov ax, 0x20                     ; 0x1898
map_bane_character_kind.return4:
    ret                              ; 0x189b
jumptable_18c7_case_1:
    mov ax, 0x1f                     ; 0x189c
    cmp word [bp + 6], byte 0        ; 0x189f
    jne short map_bane_character_kind.return5 ; 0x18a3
    mov ax, 0x1c                     ; 0x18a5
map_bane_character_kind.return5:
    ret                              ; 0x18a8
jumptable_18c7_case_3:
    mov ax, 1                        ; 0x18a9
    ret                              ; 0x18ac
jumptable_18c7_case_11:
    mov ax, 0x1b                     ; 0x18ad
    cmp word [bp + 6], byte 0        ; 0x18b0
    jne short map_bane_character_kind.return6 ; 0x18b4
    mov ax, 6                        ; 0x18b6
map_bane_character_kind.return6:
    ret                              ; 0x18b9
jumptable_18c7_case_9:
    mov ax, 0xf                      ; 0x18ba
    cmp word [bp + 6], byte 0        ; 0x18bd
    jne short map_bane_character_kind.return7 ; 0x18c1
    mov ax, 0x1c                     ; 0x18c3
map_bane_character_kind.return7:
    ret                              ; 0x18c6
jumptable_18c7:
    dw jumptable_18c7_case_0 - IMAGE_BASE + __zres_end ; 0x18c7
    dw jumptable_18c7_case_1 - IMAGE_BASE + __zres_end ; 0x18c9
    dw jumptable_18c7_case_1 - IMAGE_BASE + __zres_end ; 0x18cb
    dw jumptable_18c7_case_3 - IMAGE_BASE + __zres_end ; 0x18cd
    dw jumptable_18c7_case_3 - IMAGE_BASE + __zres_end ; 0x18cf
    dw jumptable_18c7_case_1 - IMAGE_BASE + __zres_end ; 0x18d1
    dw jumptable_18c7_case_3 - IMAGE_BASE + __zres_end ; 0x18d3
    dw jumptable_18c7_case_1 - IMAGE_BASE + __zres_end ; 0x18d5
    dw jumptable_18c7_case_0 - IMAGE_BASE + __zres_end ; 0x18d7
    dw jumptable_18c7_case_9 - IMAGE_BASE + __zres_end ; 0x18d9
    dw jumptable_18c7_case_0 - IMAGE_BASE + __zres_end ; 0x18db
    dw jumptable_18c7_case_11 - IMAGE_BASE + __zres_end ; 0x18dd
    dw jumptable_18c7_case_9 - IMAGE_BASE + __zres_end ; 0x18df
map_bane_character_kind.forward4:
    cmp ax, strict word 0xd          ; 0x18e1
    jae short map_bane_character_kind.forward5 ; 0x18e4
    xchg bx, ax                      ; 0x18e6
    shl bx, 1                        ; 0x18e7
    jmp [cs:bx + jumptable_18c7 - IMAGE_BASE + __zres_end] ; 0x18e9
map_bane_character_kind.forward5:
    mov ax, word [bp + 4]            ; 0x18ee
    cmp ax, strict word 2            ; 0x18f1
    je short map_bane_character_kind.forward6 ; 0x18f4
    cmp ax, strict word 4            ; 0x18f6
    je short map_bane_character_kind.forward6 ; 0x18f9
    cmp ax, strict word 3            ; 0x18fb
    je short map_bane_character_kind.forward6 ; 0x18fe
    jmp near map_bane_character_kind.forward8 ; 0x1900
map_bane_character_kind.forward6:
    mov ax, word [bp + 8]            ; 0x1903
    jmp short map_bane_character_kind.forward7 ; 0x1906
jumptable_1949_case_0:
    mov ax, 0x1d                     ; 0x1908
    cmp word [bp + 6], byte 0        ; 0x190b
    jne short map_bane_character_kind.return8 ; 0x190f
    mov ax, 4                        ; 0x1911
map_bane_character_kind.return8:
    ret                              ; 0x1914
jumptable_1949_case_1:
    mov ax, 0x11                     ; 0x1915
    cmp word [bp + 6], byte 0        ; 0x1918
    jne short map_bane_character_kind.return9 ; 0x191c
    mov ax, 0xb                      ; 0x191e
map_bane_character_kind.return9:
    ret                              ; 0x1921
jumptable_1949_case_6:
    mov ax, 0xe                      ; 0x1922
    cmp word [bp + 6], byte 0        ; 0x1925
    jne short map_bane_character_kind.return10 ; 0x1929
    mov ax, 0x10                     ; 0x192b
map_bane_character_kind.return10:
    ret                              ; 0x192e
jumptable_1949_case_3:
    mov ax, 0x1d                     ; 0x192f
    cmp word [bp + 6], byte 0        ; 0x1932
    jne short map_bane_character_kind.return11 ; 0x1936
    mov ax, 0x10                     ; 0x1938
map_bane_character_kind.return11:
    ret                              ; 0x193b
jumptable_1949_case_11:
    mov ax, 0x1b                     ; 0x193c
    cmp word [bp + 6], byte 0        ; 0x193f
    jne short map_bane_character_kind.return12 ; 0x1943
    mov ax, 6                        ; 0x1945
map_bane_character_kind.return12:
    ret                              ; 0x1948
jumptable_1949:
    dw jumptable_1949_case_0 - IMAGE_BASE + __zres_end ; 0x1949
    dw jumptable_1949_case_1 - IMAGE_BASE + __zres_end ; 0x194b
    dw jumptable_1949_case_1 - IMAGE_BASE + __zres_end ; 0x194d
    dw jumptable_1949_case_3 - IMAGE_BASE + __zres_end ; 0x194f
    dw jumptable_1949_case_3 - IMAGE_BASE + __zres_end ; 0x1951
    dw jumptable_1949_case_1 - IMAGE_BASE + __zres_end ; 0x1953
    dw jumptable_1949_case_6 - IMAGE_BASE + __zres_end ; 0x1955
    dw jumptable_1949_case_1 - IMAGE_BASE + __zres_end ; 0x1957
    dw jumptable_1949_case_0 - IMAGE_BASE + __zres_end ; 0x1959
    dw jumptable_1949_case_1 - IMAGE_BASE + __zres_end ; 0x195b
    dw jumptable_1949_case_0 - IMAGE_BASE + __zres_end ; 0x195d
    dw jumptable_1949_case_11 - IMAGE_BASE + __zres_end ; 0x195f
    dw jumptable_1949_case_3 - IMAGE_BASE + __zres_end ; 0x1961
map_bane_character_kind.forward7:
    cmp ax, strict word 0xd          ; 0x1963
    jae short map_bane_character_kind.forward8 ; 0x1966
    xchg bx, ax                      ; 0x1968
    shl bx, 1                        ; 0x1969
    jmp [cs:bx + jumptable_1949 - IMAGE_BASE + __zres_end] ; 0x196b
map_bane_character_kind.forward8:
    mov ax, word [bp + 8]            ; 0x1970
    jmp near map_bane_character_kind.forward9 ; 0x1973
jumptable_19de_case_1:
    mov ax, 0                        ; 0x1976
    cmp word [bp + 6], byte 0        ; 0x1979
    jne short map_bane_character_kind.return13 ; 0x197d
    mov ax, 2                        ; 0x197f
map_bane_character_kind.return13:
    ret                              ; 0x1982
jumptable_19de_case_2:
    mov ax, 0                        ; 0x1983
    cmp word [bp + 6], byte 0        ; 0x1986
    jne short map_bane_character_kind.return14 ; 0x198a
    mov ax, 0x1e                     ; 0x198c
map_bane_character_kind.return14:
    ret                              ; 0x198f
jumptable_19de_case_3:
    mov ax, 0xe                      ; 0x1990
    cmp word [bp + 6], byte 0        ; 0x1993
    jne short map_bane_character_kind.return15 ; 0x1997
    mov ax, 0x15                     ; 0x1999
map_bane_character_kind.return15:
    ret                              ; 0x199c
jumptable_19de_case_4:
    mov ax, 0x13                     ; 0x199d
    cmp word [bp + 6], byte 0        ; 0x19a0
    jne short map_bane_character_kind.return16 ; 0x19a4
    mov ax, 9                        ; 0x19a6
map_bane_character_kind.return16:
    ret                              ; 0x19a9
jumptable_19de_case_8:
    mov ax, 0xa                      ; 0x19aa
    cmp word [bp + 6], byte 0        ; 0x19ad
    jne short map_bane_character_kind.return17 ; 0x19b1
    mov ax, 0x14                     ; 0x19b3
map_bane_character_kind.return17:
    ret                              ; 0x19b6
jumptable_19de_case_9:
    mov ax, 0xf                      ; 0x19b7
    cmp word [bp + 6], byte 0        ; 0x19ba
    jne short map_bane_character_kind.return18 ; 0x19be
    mov ax, 0x19                     ; 0x19c0
map_bane_character_kind.return18:
    ret                              ; 0x19c3
jumptable_19de_case_11:
    mov ax, 0x1b                     ; 0x19c4
    cmp word [bp + 6], byte 0        ; 0x19c7
    jne short map_bane_character_kind.return19 ; 0x19cb
    mov ax, 6                        ; 0x19cd
map_bane_character_kind.return19:
    ret                              ; 0x19d0
jumptable_19de_case_12:
    mov ax, 0xf                      ; 0x19d1
    cmp word [bp + 6], byte 0        ; 0x19d4
    jne short map_bane_character_kind.return20 ; 0x19d8
    mov ax, 0x1e                     ; 0x19da
map_bane_character_kind.return20:
    ret                              ; 0x19dd
jumptable_19de:
    dw jumptable_19de_case_0 - IMAGE_BASE + __zres_end ; 0x19de
    dw jumptable_19de_case_1 - IMAGE_BASE + __zres_end ; 0x19e0
    dw jumptable_19de_case_2 - IMAGE_BASE + __zres_end ; 0x19e2
    dw jumptable_19de_case_3 - IMAGE_BASE + __zres_end ; 0x19e4
    dw jumptable_19de_case_4 - IMAGE_BASE + __zres_end ; 0x19e6
    dw jumptable_19de_case_1 - IMAGE_BASE + __zres_end ; 0x19e8
    dw jumptable_19de_case_3 - IMAGE_BASE + __zres_end ; 0x19ea
    dw jumptable_19de_case_2 - IMAGE_BASE + __zres_end ; 0x19ec
    dw jumptable_19de_case_8 - IMAGE_BASE + __zres_end ; 0x19ee
    dw jumptable_19de_case_9 - IMAGE_BASE + __zres_end ; 0x19f0
    dw jumptable_19de_case_8 - IMAGE_BASE + __zres_end ; 0x19f2
    dw jumptable_19de_case_11 - IMAGE_BASE + __zres_end ; 0x19f4
    dw jumptable_19de_case_12 - IMAGE_BASE + __zres_end ; 0x19f6
map_bane_character_kind.forward9:
    cmp ax, strict word 0xd          ; 0x19f8
    jae short jumptable_19de_case_0  ; 0x19fb
    xchg bx, ax                      ; 0x19fd
    shl bx, 1                        ; 0x19fe
    jmp [cs:bx + jumptable_19de - IMAGE_BASE + __zres_end] ; 0x1a00
jumptable_19de_case_0:
    mov ax, 0x13                     ; 0x1a05
    cmp word [bp + 6], byte 0        ; 0x1a08
    jne short map_bane_character_kind.return21 ; 0x1a0c
    mov ax, 0x17                     ; 0x1a0e
map_bane_character_kind.return21:
    ret                              ; 0x1a11
