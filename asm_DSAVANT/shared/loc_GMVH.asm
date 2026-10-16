; auto-generated
loc_GMVH:
    mov ax, 0
    call aztec_csav
    cmp word [bp + 0x4], strict word 0x190
    jl short @..loc_GMVH.l1
    cmp word [bp + 0x4], strict word 0x19b
    jge short @..loc_GMVH.l1
    mov ax, 1
    jmp short @..loc_GMVH.l2
@..loc_GMVH.l1:
    mov ax, 0
@..loc_GMVH.l2:
    ret
