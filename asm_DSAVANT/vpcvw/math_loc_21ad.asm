math_loc_21ad:
    mov ax, 0                        ; 0x21ad
    call ds_dispatch_f40b            ; 0x21b0
    cmp word [bp + 0x8], byte 1      ; 0x21b3
    jne short @..math_loc_21ad.l3    ; 0x21b7
    cmp word [bp + 0x6], byte 0      ; 0x21b9
    jle short @..math_loc_21ad.l1    ; 0x21bd
    mov ax, word [bp + 0x4]          ; 0x21bf
    sub word [bp + 0x6], ax          ; 0x21c2
    jmp short @..math_loc_21ad.l2    ; 0x21c5
@..math_loc_21ad.l1:
    mov ax, 0                        ; 0x21c7
    sub ax, word [bp + 0x4]          ; 0x21ca
    cmp ax, word [bp + 0x6]          ; 0x21cd
    jge short @..math_loc_21ad.l2    ; 0x21d0
    mov word [bp + 0x6], ax          ; 0x21d2
@..math_loc_21ad.l2:
    jmp short @..math_loc_21ad.l5    ; 0x21d5
@..math_loc_21ad.l3:
    cmp word [bp + 0x8], byte 0      ; 0x21d7
    jne short @..math_loc_21ad.l5    ; 0x21db
    cmp word [bp + 0x6], byte 0      ; 0x21dd
    jge short @..math_loc_21ad.l4    ; 0x21e1
    mov ax, word [bp + 0x4]          ; 0x21e3
    add word [bp + 0x6], ax          ; 0x21e6
    jmp short @..math_loc_21ad.l5    ; 0x21e9
@..math_loc_21ad.l4:
    mov ax, word [bp + 0x6]          ; 0x21eb
    cmp ax, word [bp + 0x4]          ; 0x21ee
    jge short @..math_loc_21ad.l5    ; 0x21f1
    mov ax, word [bp + 0x4]          ; 0x21f3
    mov word [bp + 0x6], ax          ; 0x21f6
@..math_loc_21ad.l5:
    mov ax, word [bp + 0x6]          ; 0x21f9
    ret                              ; 0x21fc
