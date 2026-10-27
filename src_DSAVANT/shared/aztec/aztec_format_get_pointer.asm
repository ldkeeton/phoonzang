; auto-generated
aztec_format_get_pointer:
    push ds
    pop es
    mov di, word [bp + 8]
    test byte [bp - 0xb], 4
    jne short .forward1
    mov di, word [di]
    add word [bp + 8], byte 2
    ret
.forward1:
    les di, word [es:di]
    add word [bp + 8], byte 4
    ret
