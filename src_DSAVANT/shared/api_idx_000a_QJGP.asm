; auto-generated
api_idx_000a_QJGP:
    mov ax, 0xfff6
    call aztec_csav
    mov ax, 0
    push ax
    push word [bss_8d10]
    push word [bss_8d0e]
    call thunk_13
    add sp, byte 6
    mov ax, 0
    push ax
    push word [bss_8d0c]
    push word [bss_8d0a]
    call thunk_13
    add sp, byte 6
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
    mov ax, 0
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    mov ax, 0x9a
    push ax
    mov ax, 0x37
    push ax
    mov ax, 0xe
    push ax
    call thunk_28
    add sp, byte 0x16
    cmp word [bp + 0x4], byte 0
    je short @..api_idx_000a_QJGP.l1
    mov ax, 0xc2
    push ax
    mov ax, 0x13a
    push ax
    mov ax, 0x93
    push ax
    mov ax, 8
    push ax
    call thunk_4
    add sp, byte 8
@..api_idx_000a_QJGP.l1:
    ret
