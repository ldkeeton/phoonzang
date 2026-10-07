math_loc_5497:
    mov ax, 0                        ; 0x5497
    db 0xe8, 0x6e, 0x9f ; call 0xf40b
    cmp word [bp + 0x4], strict word 0x190 ; 0x549d
    jl short @..math_loc_5497.l1     ; 0x54a2
    cmp word [bp + 0x4], strict word 0x19b ; 0x54a4
    jge short @..math_loc_5497.l1    ; 0x54a9
    mov ax, 1                        ; 0x54ab
    jmp short @..math_loc_5497.l2    ; 0x54ae
@..math_loc_5497.l1:
    mov ax, 0                        ; 0x54b0
@..math_loc_5497.l2:
    ret                              ; 0x54b3
