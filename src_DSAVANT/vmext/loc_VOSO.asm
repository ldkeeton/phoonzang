; auto-generated
loc_VOSO:
    mov ax, 0                        ; 0x1963
    call aztec_csav                  ; 0x1966
    mov ax, word [bss_82ee]          ; 0x1969
    jmp short @..loc_VOSO.l5         ; 0x196c
@..loc_VOSO.l1:
    mov ax, word [bp + 0xe]          ; 0x196e
    mov bx, word [bp + 0x4]          ; 0x1971
    add word [bx], ax                ; 0x1974
    mov ax, word [bp + 0x10]         ; 0x1976
    mov bx, word [bp + 0x6]          ; 0x1979
    add word [bx], ax                ; 0x197c
    jmp short @..loc_VOSO.l6         ; 0x197e
@..loc_VOSO.l2:
    mov ax, word [bp + 0x10]         ; 0x1980
    mov bx, word [bp + 0x4]          ; 0x1983
    add word [bx], ax                ; 0x1986
    mov ax, word [bp + 0xe]          ; 0x1988
    mov bx, word [bp + 0x6]          ; 0x198b
    sub word [bx], ax                ; 0x198e
    jmp short @..loc_VOSO.l6         ; 0x1990
@..loc_VOSO.l3:
    mov ax, word [bp + 0xe]          ; 0x1992
    mov bx, word [bp + 0x4]          ; 0x1995
    sub word [bx], ax                ; 0x1998
    mov ax, word [bp + 0x10]         ; 0x199a
    mov bx, word [bp + 0x6]          ; 0x199d
    sub word [bx], ax                ; 0x19a0
    jmp short @..loc_VOSO.l6         ; 0x19a2
@..loc_VOSO.l4:
    mov ax, word [bp + 0x10]         ; 0x19a4
    mov bx, word [bp + 0x4]          ; 0x19a7
    sub word [bx], ax                ; 0x19aa
    mov ax, word [bp + 0xe]          ; 0x19ac
    mov bx, word [bp + 0x6]          ; 0x19af
    add word [bx], ax                ; 0x19b2
    jmp short @..loc_VOSO.l6         ; 0x19b4
@..loc_VOSO.l5:
    cmp ax, strict word 0            ; 0x19b6
    je short @..loc_VOSO.l1          ; 0x19b9
    cmp ax, strict word 1            ; 0x19bb
    je short @..loc_VOSO.l2          ; 0x19be
    cmp ax, strict word 2            ; 0x19c0
    je short @..loc_VOSO.l3          ; 0x19c3
    cmp ax, strict word 3            ; 0x19c5
    je short @..loc_VOSO.l4          ; 0x19c8
@..loc_VOSO.l6:
    mov bx, word [bp + 0x6]          ; 0x19ca
    push word [bx]                   ; 0x19cd
    mov bx, word [bp + 0x4]          ; 0x19cf
    push word [bx]                   ; 0x19d2
    push word [bp + 0xc]             ; 0x19d4
    push word [bp + 0xa]             ; 0x19d7
    push word [bp + 0x8]             ; 0x19da
    call find_map_piece              ; 0x19dd
    add sp, byte 0x0a                ; 0x19e0
    ret                              ; 0x19e3
