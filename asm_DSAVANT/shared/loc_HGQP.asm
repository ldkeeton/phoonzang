; auto-generated
loc_HGQP:
    mov ax, 0
    call aztec_csav
    mov ax, word [bp + 0x4]
    jmp near @..loc_HGQP.l5
@..loc_HGQP.l1:
    mov ax, 0x9f
    push ax
    mov ax, 0xcd
    push ax
    mov ax, 0x93
    push ax
    mov ax, 0x73
    push ax
    call thunk_4
    add sp, byte 8
    mov ax, 0xc2
    push ax
    mov ax, 0x60
    push ax
    mov ax, 0xa5
    push ax
    mov ax, 8
    push ax
    call thunk_4
    add sp, byte 8
    mov ax, 0xc2
    push ax
    mov ax, 0x13a
    push ax
    mov ax, 0xa5
    push ax
    mov ax, 0xe7
    push ax
    call thunk_4
    add sp, byte 8
    jmp short @..loc_HGQP.l7
@..loc_HGQP.l2:
    mov ax, 0xc2
    push ax
    mov ax, 0xe0
    push ax
    mov ax, 0xa4
    push ax
    mov ax, 0x62
    push ax
    call thunk_4
    add sp, byte 8
    jmp short @..loc_HGQP.l7
@..loc_HGQP.l3:
    mov ax, 0x9f
    push ax
    mov ax, 0xcd
    push ax
    mov ax, 0x93
    push ax
    mov ax, 0x73
    push ax
    call thunk_4
    add sp, byte 8
    jmp short @..loc_HGQP.l7
@..loc_HGQP.l4:
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
    jmp short @..loc_HGQP.l7
@..loc_HGQP.l5:
    cmp ax, strict word 0
    jne short @..loc_HGQP.l6
    jmp near @..loc_HGQP.l1
@..loc_HGQP.l6:
    cmp ax, strict word 1
    je short @..loc_HGQP.l2
    cmp ax, strict word 2
    je short @..loc_HGQP.l3
    cmp ax, strict word 3
    je short @..loc_HGQP.l4
@..loc_HGQP.l7:
    ret
