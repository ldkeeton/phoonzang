; auto-generated
wait_10_ms:
    mov ax, 0
    call $csav
    mov ax, 0xa
    push ax
    call delay_ms
    pop cx
    ret
