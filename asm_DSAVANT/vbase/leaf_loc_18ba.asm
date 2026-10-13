leaf_loc_18ba:
    mov ax, 0xf                      ; 0x18ba
    cmp word [bp + 0x6], byte 0      ; 0x18bd
    jne short @..leaf_loc_18ba.l1    ; 0x18c1
    mov ax, 0x1c                     ; 0x18c3
@..leaf_loc_18ba.l1:
    ret                              ; 0x18c6
jumptable_18c7:
    dw leaf_loc_188f - IMAGE_BASE + 0x5055     ; 0x18c7
    dw leaf_loc_189c - IMAGE_BASE + 0x5055     ; 0x18c9
    dw leaf_loc_189c - IMAGE_BASE + 0x5055     ; 0x18cb
    dw leaf_loc_18a9 - IMAGE_BASE + 0x5055     ; 0x18cd
    dw leaf_loc_18a9 - IMAGE_BASE + 0x5055     ; 0x18cf
    dw leaf_loc_189c - IMAGE_BASE + 0x5055     ; 0x18d1
    dw leaf_loc_18a9 - IMAGE_BASE + 0x5055     ; 0x18d3
    dw leaf_loc_189c - IMAGE_BASE + 0x5055     ; 0x18d5
    dw leaf_loc_188f - IMAGE_BASE + 0x5055     ; 0x18d7
    dw leaf_loc_18ba - IMAGE_BASE + 0x5055     ; 0x18d9
    dw leaf_loc_188f - IMAGE_BASE + 0x5055     ; 0x18db
    dw leaf_loc_18ad - IMAGE_BASE + 0x5055     ; 0x18dd
    dw leaf_loc_18ba - IMAGE_BASE + 0x5055     ; 0x18df
@..loc_1820.l4:
    cmp ax, strict word 0xd          ; 0x18e1
    jae short @..loc_1820.l5         ; 0x18e4
    xchg bx, ax                      ; 0x18e6
    shl bx, 1                        ; 0x18e7
    jmp [cs:bx + 0x690e]             ; 0x18e9
@..loc_1820.l5:
    mov ax, word [bp + 0x4]          ; 0x18ee
    cmp ax, strict word 2            ; 0x18f1
    je short @..loc_1820.l6          ; 0x18f4
    cmp ax, strict word 4            ; 0x18f6
    je short @..loc_1820.l6          ; 0x18f9
    cmp ax, strict word 3            ; 0x18fb
    je short @..loc_1820.l6          ; 0x18fe
    jmp near @..loc_1820.l8          ; 0x1900
@..loc_1820.l6:
    mov ax, word [bp + 0x8]          ; 0x1903
    jmp short @..loc_1820.l7         ; 0x1906
jumptable_1949_case_0:
    mov ax, 0x1d                     ; 0x1908
    cmp word [bp + 0x6], byte 0      ; 0x190b
    jne short @..loc_1908.l1         ; 0x190f
    mov ax, 4                        ; 0x1911
@..loc_1908.l1:
    ret                              ; 0x1914
jumptable_1949_case_1:
    mov ax, 0x11                     ; 0x1915
    cmp word [bp + 0x6], byte 0      ; 0x1918
    jne short @..loc_1915.l1         ; 0x191c
    mov ax, 0xb                      ; 0x191e
@..loc_1915.l1:
    ret                              ; 0x1921
jumptable_1949_case_6:
    mov ax, 0xe                      ; 0x1922
    cmp word [bp + 0x6], byte 0      ; 0x1925
    jne short @..loc_1922.l1         ; 0x1929
    mov ax, 0x10                     ; 0x192b
@..loc_1922.l1:
    ret                              ; 0x192e
jumptable_1949_case_3:
    mov ax, 0x1d                     ; 0x192f
    cmp word [bp + 0x6], byte 0      ; 0x1932
    jne short @..loc_192f.l1         ; 0x1936
    mov ax, 0x10                     ; 0x1938
@..loc_192f.l1:
    ret                              ; 0x193b
jumptable_1949_case_11:
    mov ax, 0x1b                     ; 0x193c
    cmp word [bp + 0x6], byte 0      ; 0x193f
    jne short @..loc_193c.l1         ; 0x1943
    mov ax, 6                        ; 0x1945
@..loc_193c.l1:
    ret                              ; 0x1948
jumptable_1949:
    dw jumptable_1949_case_0 - IMAGE_BASE + 0x5055 ; 0x1949
    dw jumptable_1949_case_1 - IMAGE_BASE + 0x5055 ; 0x194b
    dw jumptable_1949_case_1 - IMAGE_BASE + 0x5055 ; 0x194d
    dw jumptable_1949_case_3 - IMAGE_BASE + 0x5055 ; 0x194f
    dw jumptable_1949_case_3 - IMAGE_BASE + 0x5055 ; 0x1951
    dw jumptable_1949_case_1 - IMAGE_BASE + 0x5055 ; 0x1953
    dw jumptable_1949_case_6 - IMAGE_BASE + 0x5055 ; 0x1955
    dw jumptable_1949_case_1 - IMAGE_BASE + 0x5055 ; 0x1957
    dw jumptable_1949_case_0 - IMAGE_BASE + 0x5055 ; 0x1959
    dw jumptable_1949_case_1 - IMAGE_BASE + 0x5055 ; 0x195b
    dw jumptable_1949_case_0 - IMAGE_BASE + 0x5055 ; 0x195d
    dw jumptable_1949_case_11 - IMAGE_BASE + 0x5055 ; 0x195f
    dw jumptable_1949_case_3 - IMAGE_BASE + 0x5055 ; 0x1961
@..loc_1820.l7:
    cmp ax, strict word 0xd          ; 0x1963
    jae short @..loc_1820.l8         ; 0x1966
    xchg bx, ax                      ; 0x1968
    shl bx, 1                        ; 0x1969
    jmp [cs:bx + 0x6990]             ; 0x196b
@..loc_1820.l8:
    mov ax, word [bp + 0x8]          ; 0x1970
    jmp near @..loc_1820.l9          ; 0x1973
jumptable_19de_case_1:
    mov ax, 0                        ; 0x1976
    cmp word [bp + 0x6], byte 0      ; 0x1979
    jne short @..loc_1976.l1         ; 0x197d
    mov ax, 2                        ; 0x197f
@..loc_1976.l1:
    ret                              ; 0x1982
jumptable_19de_case_2:
    mov ax, 0                        ; 0x1983
    cmp word [bp + 0x6], byte 0      ; 0x1986
    jne short @..loc_1983.l1         ; 0x198a
    mov ax, 0x1e                     ; 0x198c
@..loc_1983.l1:
    ret                              ; 0x198f
jumptable_19de_case_3:
    mov ax, 0xe                      ; 0x1990
    cmp word [bp + 0x6], byte 0      ; 0x1993
    jne short @..loc_1990.l1         ; 0x1997
    mov ax, 0x15                     ; 0x1999
@..loc_1990.l1:
    ret                              ; 0x199c
jumptable_19de_case_4:
    mov ax, 0x13                     ; 0x199d
    cmp word [bp + 0x6], byte 0      ; 0x19a0
    jne short @..loc_199d.l1         ; 0x19a4
    mov ax, 9                        ; 0x19a6
@..loc_199d.l1:
    ret                              ; 0x19a9
jumptable_19de_case_8:
    mov ax, 0xa                      ; 0x19aa
    cmp word [bp + 0x6], byte 0      ; 0x19ad
    jne short @..loc_19aa.l1         ; 0x19b1
    mov ax, 0x14                     ; 0x19b3
@..loc_19aa.l1:
    ret                              ; 0x19b6
jumptable_19de_case_9:
    mov ax, 0xf                      ; 0x19b7
loc_19ba:
    cmp word [bp + 0x6], byte 0      ; 0x19ba
    jne short @..loc_19b7.l1         ; 0x19be
    mov ax, 0x19                     ; 0x19c0
@..loc_19b7.l1:
    ret                              ; 0x19c3
jumptable_19de_case_11:
    mov ax, 0x1b                     ; 0x19c4
    cmp word [bp + 0x6], byte 0      ; 0x19c7
    jne short @..loc_19c4.l1         ; 0x19cb
    mov ax, 6                        ; 0x19cd
@..loc_19c4.l1:
    ret                              ; 0x19d0
jumptable_19de_case_12:
    mov ax, 0xf                      ; 0x19d1
    cmp word [bp + 0x6], byte 0      ; 0x19d4
    jne short @..loc_19d1.l1         ; 0x19d8
    mov ax, 0x1e                     ; 0x19da
@..loc_19d1.l1:
    ret                              ; 0x19dd
jumptable_19de:
    dw jumptable_19de_case_0 - IMAGE_BASE + 0x5055 ; 0x19de
    dw jumptable_19de_case_1 - IMAGE_BASE + 0x5055 ; 0x19e0
    dw jumptable_19de_case_2 - IMAGE_BASE + 0x5055 ; 0x19e2
    dw jumptable_19de_case_3 - IMAGE_BASE + 0x5055 ; 0x19e4
    dw jumptable_19de_case_4 - IMAGE_BASE + 0x5055 ; 0x19e6
    dw jumptable_19de_case_1 - IMAGE_BASE + 0x5055 ; 0x19e8
    dw jumptable_19de_case_3 - IMAGE_BASE + 0x5055 ; 0x19ea
    dw jumptable_19de_case_2 - IMAGE_BASE + 0x5055 ; 0x19ec
    dw jumptable_19de_case_8 - IMAGE_BASE + 0x5055 ; 0x19ee
    dw jumptable_19de_case_9 - IMAGE_BASE + 0x5055 ; 0x19f0
    dw jumptable_19de_case_8 - IMAGE_BASE + 0x5055 ; 0x19f2
    dw jumptable_19de_case_11 - IMAGE_BASE + 0x5055 ; 0x19f4
    dw jumptable_19de_case_12 - IMAGE_BASE + 0x5055 ; 0x19f6
@..loc_1820.l9:
    cmp ax, strict word 0xd          ; 0x19f8
    jae short @..loc_1820.l10        ; 0x19fb
    xchg bx, ax                      ; 0x19fd
    shl bx, 1                        ; 0x19fe
    jmp [cs:bx + 0x6a25]             ; 0x1a00
jumptable_19de_case_0:
@..loc_1820.l10:
    mov ax, 0x13                     ; 0x1a05
    cmp word [bp + 0x6], byte 0      ; 0x1a08
    jne short @..loc_1820.l11        ; 0x1a0c
    mov ax, 0x17                     ; 0x1a0e
@..loc_1820.l11:
    ret                              ; 0x1a11
loc_1a12:
    mov ax, 0                        ; 0x1a12
    call aztec_csav                  ; 0x1a15
    mov ax, word [bp + 0x4]          ; 0x1a18
    jmp near @..loc_1a12.l1          ; 0x1a1b
