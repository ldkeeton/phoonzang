math_loc_1c7f:
    mov ax, 0                        ; 0x1c7f
    call ds_dispatch_f40b            ; 0x1c82
    cmp word [bp + 0x8], byte 1      ; 0x1c85
    jne short @..math_loc_1c7f.l3    ; 0x1c89
    cmp word [bp + 0x6], byte 0      ; 0x1c8b
    jle short @..math_loc_1c7f.l1    ; 0x1c8f
    mov ax, word [bp + 0x4]          ; 0x1c91
    sub word [bp + 0x6], ax          ; 0x1c94
    jmp short @..math_loc_1c7f.l2    ; 0x1c97
@..math_loc_1c7f.l1:
    mov ax, 0                        ; 0x1c99
    sub ax, word [bp + 0x4]          ; 0x1c9c
    cmp ax, word [bp + 0x6]          ; 0x1c9f
    jge short @..math_loc_1c7f.l2    ; 0x1ca2
    mov word [bp + 0x6], ax          ; 0x1ca4
@..math_loc_1c7f.l2:
    jmp short @..math_loc_1c7f.l5    ; 0x1ca7
@..math_loc_1c7f.l3:
    cmp word [bp + 0x8], byte 0      ; 0x1ca9
    jne short @..math_loc_1c7f.l5    ; 0x1cad
    cmp word [bp + 0x6], byte 0      ; 0x1caf
    jge short @..math_loc_1c7f.l4    ; 0x1cb3
    mov ax, word [bp + 0x4]          ; 0x1cb5
    add word [bp + 0x6], ax          ; 0x1cb8
    jmp short @..math_loc_1c7f.l5    ; 0x1cbb
@..math_loc_1c7f.l4:
    mov ax, word [bp + 0x6]          ; 0x1cbd
    cmp ax, word [bp + 0x4]          ; 0x1cc0
    jge short @..math_loc_1c7f.l5    ; 0x1cc3
    mov ax, word [bp + 0x4]          ; 0x1cc5
    mov word [bp + 0x6], ax          ; 0x1cc8
@..math_loc_1c7f.l5:
    mov ax, word [bp + 0x6]          ; 0x1ccb
    ret                              ; 0x1cce
