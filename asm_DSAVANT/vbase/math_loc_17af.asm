math_loc_17af:
    cmp word [bp + 0x4], strict word 0xe3 ; 0x17af
    jl short @..math_loc_17af.l1     ; 0x17b4
    cmp word [bp + 0x4], strict word 0xfe ; 0x17b6
    jge short @..math_loc_17af.l1    ; 0x17bb
    mov ax, 0                        ; 0x17bd
    sub ax, word [bp + 0x4]          ; 0x17c0
    ret                              ; 0x17c3
