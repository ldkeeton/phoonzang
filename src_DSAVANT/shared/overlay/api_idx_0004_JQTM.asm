; auto-generated
api_idx_0004_JQTM:
    mov ax, 0xfffc
    call aztec_csav
.back1:
    mov ax, 0x20
    push ax
    push word [bp + 4]
    call strpos
    add sp, byte 4
    mov word [bp - 2], ax
    cmp ax, strict word 0xffff
    je short .forward2
    mov bx, word [bp + 4]
    mov si, ax
    mov byte [bx + si], 0
.back2:
    mov ax, 0x5f
    push ax
    push word [bp + 4]
    call strpos
    add sp, byte 4
    mov word [bp - 4], ax
    cmp ax, strict word 0xffff
    je short .forward1
    mov bx, word [bp + 4]
    mov si, ax
    mov byte [bx + si], 0x20
    jmp short .back2
.forward1:
    push word [bp + 4]
    call api_idx_0004_JQTM.api_idx1
    pop cx
    mov ax, word [bp - 2]
    add word [bp + 4], ax
    add word [bp + 4], byte 1
    jmp short .back1
.forward2:
    mov bx, word [bp + 4]
    cmp byte [bx], 0
    je short .return1
    push bx
    call api_idx_0004_JQTM.api_idx1
    pop cx
.return1:
    ret
