; auto-generated
clamp_value_to_range:
    mov ax, 0xfffe
    call aztec_csav
    mov word [bp - 2], 0
@..clamp_value_to_range.l1:
    mov ax, word [bp - 2]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    mov ax, word [word bx + 0x4a]
    cmp ax, word [bp + 4]
    jge short @..clamp_value_to_range.l2
    inc word [bp - 2]
    jmp short @..clamp_value_to_range.l1
@..clamp_value_to_range.l2:
    mov ax, word [bp - 2]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    push word [word bx + 0x4a]
    push word [word bx + 0x48]
    mov ax, word [bp + 4]
    add ax, word [bp + 6]
    push ax
    call clamp_between
    add sp, byte 6
    ret
