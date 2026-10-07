stack_alloc_check:
    push bp
    mov bp, sp
    add sp, ax
    cmp sp, bp
    ja short @..local.l95
    cmp sp, word [data_0c7a]
    jb short @..local.l95
    cmp sp, word [data_0c7e]
    ja short @..stack_alloc_check.l1
    mov word [data_0c7e], sp
@..stack_alloc_check.l1:
    push di
    push si
    call bx
    pop si
    pop di
    mov sp, bp
    pop bp
    ret
