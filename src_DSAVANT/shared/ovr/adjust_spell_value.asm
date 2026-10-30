; auto-generated
adjust_spell_value:
    mov ax, 0
    call aztec_csav
    cmp word [bp + 8], byte 1
    jne short .forward3
    cmp word [bp + 6], byte 0
    jle short .forward1
    mov ax, word [bp + 4]
    sub word [bp + 6], ax
    jmp short .forward2
.forward1:
    mov ax, 0
    sub ax, word [bp + 4]
    cmp ax, word [bp + 6]
    jge short .forward2
    mov word [bp + 6], ax
.forward2:
    jmp short .forward5
.forward3:
    cmp word [bp + 8], byte 0
    jne short .forward5
    cmp word [bp + 6], byte 0
    jge short .forward4
    mov ax, word [bp + 4]
    add word [bp + 6], ax
    jmp short .forward5
.forward4:
    mov ax, word [bp + 6]
    cmp ax, word [bp + 4]
    jge short .forward5
    mov ax, word [bp + 4]
    mov word [bp + 6], ax
.forward5:
    mov ax, word [bp + 6]
    ret
