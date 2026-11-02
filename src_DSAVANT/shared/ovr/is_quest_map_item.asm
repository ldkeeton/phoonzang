; auto-generated
is_quest_map_item:
    mov ax, 0
    call aztec_csav
    cmp word [bp + 4], strict word 0x190
    jl short .forward1
    cmp word [bp + 4], strict word 0x19b
    jge short .forward1
    mov ax, 1
    jmp short .return1
.forward1:
    mov ax, 0
.return1:
    ret
