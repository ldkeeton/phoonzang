math_loc_2e09:
    mov ax, 0                        ; 0x2e09
    call ds_dispatch_f40b            ; 0x2e0c
    cmp word [bp + 0x8], byte 1      ; 0x2e0f
    jne short @..math_loc_2e09.l3    ; 0x2e13
    cmp word [bp + 0x6], byte 0      ; 0x2e15
    jle short @..math_loc_2e09.l1    ; 0x2e19
    mov ax, word [bp + 0x4]          ; 0x2e1b
    sub word [bp + 0x6], ax          ; 0x2e1e
    jmp short @..math_loc_2e09.l2    ; 0x2e21
@..math_loc_2e09.l1:
    mov ax, 0                        ; 0x2e23
    sub ax, word [bp + 0x4]          ; 0x2e26
    cmp ax, word [bp + 0x6]          ; 0x2e29
    jge short @..math_loc_2e09.l2    ; 0x2e2c
    mov word [bp + 0x6], ax          ; 0x2e2e
@..math_loc_2e09.l2:
    jmp short @..math_loc_2e09.l5    ; 0x2e31
@..math_loc_2e09.l3:
    cmp word [bp + 0x8], byte 0      ; 0x2e33
    jne short @..math_loc_2e09.l5    ; 0x2e37
    cmp word [bp + 0x6], byte 0      ; 0x2e39
    jge short @..math_loc_2e09.l4    ; 0x2e3d
    mov ax, word [bp + 0x4]          ; 0x2e3f
    add word [bp + 0x6], ax          ; 0x2e42
    jmp short @..math_loc_2e09.l5    ; 0x2e45
@..math_loc_2e09.l4:
    mov ax, word [bp + 0x6]          ; 0x2e47
    cmp ax, word [bp + 0x4]          ; 0x2e4a
    jge short @..math_loc_2e09.l5    ; 0x2e4d
    mov ax, word [bp + 0x4]          ; 0x2e4f
    mov word [bp + 0x6], ax          ; 0x2e52
@..math_loc_2e09.l5:
    mov ax, word [bp + 0x6]          ; 0x2e55
    ret                              ; 0x2e58
