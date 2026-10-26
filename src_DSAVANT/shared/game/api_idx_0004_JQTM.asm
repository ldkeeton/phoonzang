; auto-generated
api_idx_0004_JQTM:
    mov ax, 0xfffc
    call aztec_csav
@..api_idx_0004_JQTM.l1:
    mov ax, 0x20
    push ax
    push word [bp + 4]
    call strpos
    add sp, byte 4
    mov word [bp - 2], ax
    cmp ax, strict word 0xffff
    je short @..api_idx_0004_JQTM.l4
    mov bx, word [bp + 4]
    mov si, ax
    mov byte [bx + si], 0
@..api_idx_0004_JQTM.l2:
    mov ax, 0x5f
    push ax
    push word [bp + 4]
    call strpos
    add sp, byte 4
    mov word [bp - 4], ax
    cmp ax, strict word 0xffff
    je short @..api_idx_0004_JQTM.l3
    mov bx, word [bp + 4]
    mov si, ax
    mov byte [bx + si], 0x20
    jmp short @..api_idx_0004_JQTM.l2
@..api_idx_0004_JQTM.l3:
    push word [bp + 4]
    call api_idx_0004_JQTM.api_idx1
    pop cx
    mov ax, word [bp - 2]
    add word [bp + 4], ax
    add word [bp + 4], byte 1
    jmp short @..api_idx_0004_JQTM.l1
@..api_idx_0004_JQTM.l4:
    mov bx, word [bp + 4]
    cmp byte [bx], 0
    je short @..api_idx_0004_JQTM.l5
    push bx
    call api_idx_0004_JQTM.api_idx1
    pop cx
@..api_idx_0004_JQTM.l5:
    ret
