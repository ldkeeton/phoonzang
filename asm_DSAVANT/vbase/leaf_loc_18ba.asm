leaf_loc_18ba:
    mov ax, 0xf                      ; 0x18ba
    cmp word [bp + 0x6], byte 0      ; 0x18bd
    jne short @..leaf_loc_18ba.l1    ; 0x18c1
    mov ax, 0x1c                     ; 0x18c3
@..leaf_loc_18ba.l1:
    ret                              ; 0x18c6
jumptable_18c7:
    dw 0x68d6
    dw 0x68e3
    dw 0x68e3
    dw jumptable_18c7_case_3 - IMAGE_BASE
    dw jumptable_18c7_case_3 - IMAGE_BASE
    dw 0x68e3
    dw jumptable_18c7_case_3 - IMAGE_BASE
    dw 0x68e3
    dw 0x68d6
    dw jumptable_18c7_case_9 - IMAGE_BASE
    dw 0x68d6
    dw 0x68f4
    dw jumptable_18c7_case_9 - IMAGE_BASE
@..local.l39:
    cmp ax, strict word 0xd          ; 0x18e1
    jae short @..local.l40           ; 0x18e4
    xchg bx, ax                      ; 0x18e6
    shl bx, 1                        ; 0x18e7
    jmp [cs:bx + 0x690e]             ; 0x18e9
@..local.l40:
    mov ax, word [bp + 0x4]          ; 0x18ee
    cmp ax, strict word 2            ; 0x18f1
    je short @..local.l41            ; 0x18f4
    cmp ax, strict word 4            ; 0x18f6
    je short @..local.l41            ; 0x18f9
    cmp ax, strict word 3            ; 0x18fb
    je short @..local.l41            ; 0x18fe
    jmp near @..local.l48            ; 0x1900
@..local.l41:
    mov ax, word [bp + 0x8]          ; 0x1903
    jmp short @..local.l47           ; 0x1906
    mov ax, 0x1d                     ; 0x1908
    cmp word [bp + 0x6], byte 0      ; 0x190b
    jne short @..local.l42           ; 0x190f
    mov ax, 4                        ; 0x1911
@..local.l42:
    ret                              ; 0x1914
    mov ax, 0x11                     ; 0x1915
    cmp word [bp + 0x6], byte 0      ; 0x1918
    jne short @..local.l43           ; 0x191c
    mov ax, 0xb                      ; 0x191e
@..local.l43:
    ret                              ; 0x1921
    mov ax, 0xe                      ; 0x1922
    cmp word [bp + 0x6], byte 0      ; 0x1925
    jne short @..local.l44           ; 0x1929
    mov ax, 0x10                     ; 0x192b
@..local.l44:
    ret                              ; 0x192e
    mov ax, 0x1d                     ; 0x192f
    cmp word [bp + 0x6], byte 0      ; 0x1932
    jne short @..local.l45           ; 0x1936
    mov ax, 0x10                     ; 0x1938
@..local.l45:
    ret                              ; 0x193b
    mov ax, 0x1b                     ; 0x193c
    cmp word [bp + 0x6], byte 0      ; 0x193f
    jne short @..local.l46           ; 0x1943
    mov ax, 6                        ; 0x1945
@..local.l46:
    ret                              ; 0x1948
jumptable_1949:
    dw jumptable_1949_case_0 - IMAGE_BASE
    dw 0x695c
    dw 0x695c
    dw 0x6976
    dw 0x6976
    dw 0x695c
    dw 0x6969
    dw 0x695c
    dw jumptable_1949_case_0 - IMAGE_BASE
    dw 0x695c
    dw jumptable_1949_case_0 - IMAGE_BASE
    dw 0x6983
    dw 0x6976
@..local.l47:
    cmp ax, strict word 0xd          ; 0x1963
    jae short @..local.l48           ; 0x1966
    xchg bx, ax                      ; 0x1968
    shl bx, 1                        ; 0x1969
    jmp [cs:bx + 0x6990]             ; 0x196b
@..local.l48:
    mov ax, word [bp + 0x8]          ; 0x1970
    jmp near @..local.l57            ; 0x1973
    mov ax, 0                        ; 0x1976
    cmp word [bp + 0x6], byte 0      ; 0x1979
    jne short @..local.l49           ; 0x197d
    mov ax, 2                        ; 0x197f
@..local.l49:
    ret                              ; 0x1982
    mov ax, 0                        ; 0x1983
    cmp word [bp + 0x6], byte 0      ; 0x1986
    jne short @..local.l50           ; 0x198a
    mov ax, 0x1e                     ; 0x198c
@..local.l50:
    ret                              ; 0x198f
    mov ax, 0xe                      ; 0x1990
    cmp word [bp + 0x6], byte 0      ; 0x1993
    jne short @..local.l51           ; 0x1997
    mov ax, 0x15                     ; 0x1999
@..local.l51:
    ret                              ; 0x199c
    mov ax, 0x13                     ; 0x199d
    cmp word [bp + 0x6], byte 0      ; 0x19a0
    jne short @..local.l52           ; 0x19a4
    mov ax, 9                        ; 0x19a6
@..local.l52:
    ret                              ; 0x19a9
    mov ax, 0xa                      ; 0x19aa
    cmp word [bp + 0x6], byte 0      ; 0x19ad
    jne short @..local.l53           ; 0x19b1
    mov ax, 0x14                     ; 0x19b3
@..local.l53:
    ret                              ; 0x19b6
    mov ax, 0xf                      ; 0x19b7
loc_19ba:
    cmp word [bp + 0x6], byte 0      ; 0x19ba
    jne short @..local.l54           ; 0x19be
    mov ax, 0x19                     ; 0x19c0
@..local.l54:
    ret                              ; 0x19c3
    mov ax, 0x1b                     ; 0x19c4
    cmp word [bp + 0x6], byte 0      ; 0x19c7
    jne short @..local.l55           ; 0x19cb
    mov ax, 6                        ; 0x19cd
@..local.l55:
    ret                              ; 0x19d0
    mov ax, 0xf                      ; 0x19d1
    cmp word [bp + 0x6], byte 0      ; 0x19d4
    jne short @..local.l56           ; 0x19d8
    mov ax, 0x1e                     ; 0x19da
@..local.l56:
    ret                              ; 0x19dd
jumptable_19de:
    dw 0x6a4c
    dw 0x69bd
    dw 0x69ca
    dw jumptable_19de_case_3 - IMAGE_BASE
    dw jumptable_19de_case_4 - IMAGE_BASE
    dw 0x69bd
    dw jumptable_19de_case_3 - IMAGE_BASE
    dw 0x69ca
    dw 0x69f1
    dw 0x69fe
    dw 0x69f1
    dw 0x6a0b
    dw jumptable_19de_case_12 - IMAGE_BASE
@..local.l57:
    cmp ax, strict word 0xd          ; 0x19f8
    jae short @..local.l58           ; 0x19fb
    xchg bx, ax                      ; 0x19fd
    shl bx, 1                        ; 0x19fe
    jmp [cs:bx + 0x6a25]             ; 0x1a00
@..local.l58:
    mov ax, 0x13                     ; 0x1a05
    cmp word [bp + 0x6], byte 0      ; 0x1a08
    jne short @..local.l59           ; 0x1a0c
    mov ax, 0x17                     ; 0x1a0e
@..local.l59:
    ret                              ; 0x1a11
loc_1a12:
    mov ax, 0                        ; 0x1a12
    call ds_dispatch_f40b            ; 0x1a15
    mov ax, word [bp + 0x4]          ; 0x1a18
    jmp near @..local.l60            ; 0x1a1b
