; auto-generated
loc_18e1:
    cmp ax, strict word 0xd          ; 0x18e1
    jae short loc_18ee               ; 0x18e4
    xchg bx, ax                      ; 0x18e6
    shl bx, 1                        ; 0x18e7
    jmp [cs:bx + 0x690e]             ; 0x18e9
loc_18ee:
    mov ax, word [bp + 0x4]          ; 0x18ee
    cmp ax, strict word 2            ; 0x18f1
    je short loc_1903                ; 0x18f4
    cmp ax, strict word 4            ; 0x18f6
    je short loc_1903                ; 0x18f9
    cmp ax, strict word 3            ; 0x18fb
    je short loc_1903                ; 0x18fe
    jmp near loc_1970                ; 0x1900
loc_1903:
    mov ax, word [bp + 0x8]          ; 0x1903
    jmp short loc_1963               ; 0x1906
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
loc_1963:
    cmp ax, strict word 0xd          ; 0x1963
    jae short loc_1970               ; 0x1966
    xchg bx, ax                      ; 0x1968
    shl bx, 1                        ; 0x1969
    jmp [cs:bx + 0x6990]             ; 0x196b
loc_1970:
    mov ax, word [bp + 0x8]          ; 0x1970
    jmp near loc_19f8                ; 0x1973
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
