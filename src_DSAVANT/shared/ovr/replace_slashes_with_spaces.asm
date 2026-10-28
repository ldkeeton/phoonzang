; auto-generated
replace_slashes_with_spaces:
    mov ax, 0xfffe
    call aztec_csav
.back1:
    mov ax, 0x2f
    push ax
    push word [bp + 4]
    call strpos
    add sp, byte 4
    mov word [bp - 2], ax
    cmp ax, strict word 0xffff
    je short .return1
    mov bx, word [bp + 4]
    mov si, ax
    mov byte [bx + si], 0x20
    jmp short .back1
.return1:
    ret
