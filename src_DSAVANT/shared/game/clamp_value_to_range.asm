; auto-generated
clamp_value_to_range:
    mov ax, 0xfffe
    call aztec_csav
    mov word [bp - 2], 0
.back1:
    mov ax, word [bp - 2]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    mov ax, word [word bx + 0x4a]
    cmp ax, word [bp + 4]
    jge short .forward1
    inc word [bp - 2]
    jmp short .back1
.forward1:
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
