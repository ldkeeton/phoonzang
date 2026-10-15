; auto-generated
loc_JPTL:
    mov ax, 0                        ; 0x5497
    call aztec_csav                  ; 0x549a
    cmp word [bp + 0x4], strict word 0x190 ; 0x549d
    jl short @..loc_JPTL.l1          ; 0x54a2
    cmp word [bp + 0x4], strict word 0x19b ; 0x54a4
    jge short @..loc_JPTL.l1         ; 0x54a9
    mov ax, 1                        ; 0x54ab
    jmp short @..loc_JPTL.l2         ; 0x54ae
@..loc_JPTL.l1:
    mov ax, 0                        ; 0x54b0
@..loc_JPTL.l2:
    ret                              ; 0x54b3
