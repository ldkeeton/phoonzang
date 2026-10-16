; auto-generated
api_idx_000a_TITQ:
    mov ax, 0xfff6
    call aztec_csav
    mov ax, 0
    push ax
    push ax
    push word [api_idx_000a_TITQ.bss1]
    push word [api_idx_000a_TITQ.bss2]
    call thunk_12
    add sp, byte 8
    cmp word [api_idx_000a_TITQ.bss3], byte 0
    jle short @..api_idx_000a_TITQ.l1
    mov byte [bp - 0x000a], 1
    mov byte [bp - 0x0009], 0
    mov ax, 0
    push ax
    push ax
    lea ax, word [bp - 0x000a]
    push ax
    mov ax, 0
    push ax
    mov ax, 0xc7
    push ax
    mov ax, 0x41
    sub ax, word [api_idx_000a_TITQ.bss3]
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    mov ax, 0x2d
    push ax
    mov ax, 0x5a
    push ax
    mov ax, 0xf
    push ax
    call thunk_28
    add sp, byte 0x16
@..api_idx_000a_TITQ.l1:
    mov ax, 5
    cmp word [api_idx_000a_TITQ.bss4], byte 0
    jne short @..api_idx_000a_TITQ.l2
    mov ax, word [bp + 0x4]
    inc ax
    inc ax
@..api_idx_000a_TITQ.l2:
    mov byte [bp - 0x000a], al
    mov byte [bp - 0x0009], 0
    mov ax, 0
    push ax
    push ax
    lea ax, word [bp - 0x000a]
    push ax
    mov ax, 0
    push ax
    mov ax, 0xc7
    push ax
    mov ax, 0
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    mov ax, 0x14
    sub ax, word [api_idx_000a_TITQ.bss3]
    add ax, strict word 0x19
    push ax
    mov ax, 0x5a
    push ax
    mov ax, 0xf
    push ax
    call thunk_28
    add sp, byte 0x16
    ret
