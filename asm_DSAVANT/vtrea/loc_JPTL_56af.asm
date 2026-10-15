; auto-generated
loc_JPTL_56af:
    mov ax, 0                        ; 0x56af
    call aztec_csav                  ; 0x56b2
    cmp word [bp + 0x4], strict word 0x190 ; 0x56b5
    jl short @..loc_JPTL_56af.l1     ; 0x56ba
    cmp word [bp + 0x4], strict word 0x19b ; 0x56bc
    jge short @..loc_JPTL_56af.l1    ; 0x56c1
    mov ax, 1                        ; 0x56c3
    jmp short @..loc_JPTL_56af.l2    ; 0x56c6
@..loc_JPTL_56af.l1:
    mov ax, 0                        ; 0x56c8
@..loc_JPTL_56af.l2:
    ret                              ; 0x56cb
