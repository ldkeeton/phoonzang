; auto-generated
api_idx_0002_LVPS:
    mov ax, 0xfffe
    call aztec_csav
    mov ax, 0
    push ax
    call thunk_17
    pop cx
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [bp + 0x4]
    call ds_app_UUHT
    add sp, byte 4
    push ax
    call aztec_open
    add sp, byte 4
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    jne short @..api_idx_0002_LVPS.l1
    mov ax, 0xe
    push ax
    call ds_app_UKIP
    pop cx
@..api_idx_0002_LVPS.l1:
    mov ax, 0
    push ax
    push word [bp - 0x0002]
    call thunk_29
    add sp, byte 4
    push word [bp - 0x0002]
    call aztec_close
    pop cx
    cmp word [bp + 0x6], byte 1
    jne short @..api_idx_0002_LVPS.l2
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call thunk_4
    add sp, byte 8
    jmp short @..api_idx_0002_LVPS.l3
@..api_idx_0002_LVPS.l2:
    cmp word [bp + 0x6], byte 2
    jne short @..api_idx_0002_LVPS.l3
    mov ax, 0
    push ax
    push ax
    push ax
    call thunk_45
    add sp, byte 6
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call thunk_4
    add sp, byte 8
    mov ax, 0
    push ax
    call thunk_43
    pop cx
@..api_idx_0002_LVPS.l3:
    ret
