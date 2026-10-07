math_loc_56af:
    mov ax, 0                        ; 0x56af
    call ds_dispatch_f40b            ; 0x56b2
    cmp word [bp + 0x4], strict word 0x190 ; 0x56b5
    jl short @..math_loc_56af.l1     ; 0x56ba
    cmp word [bp + 0x4], strict word 0x19b ; 0x56bc
    jge short @..math_loc_56af.l1    ; 0x56c1
    mov ax, 1                        ; 0x56c3
    jmp short @..math_loc_56af.l2    ; 0x56c6
@..math_loc_56af.l1:
    mov ax, 0                        ; 0x56c8
@..math_loc_56af.l2:
    ret                              ; 0x56cb
