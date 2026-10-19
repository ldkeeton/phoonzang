; auto-generated
api_idx_0002_OOKN:
    mov ax, 0xfffe
    call aztec_csav
    mov ax, 0
    push ax
    call gfx_entry_47
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
    jne short @..api_idx_0002_OOKN.l1
    mov ax, 0x1c
    push ax
    call ds_app_UKIP
    pop cx
@..api_idx_0002_OOKN.l1:
    mov ax, 0
    push ax
    push word [bp - 0x0002]
    call gfx_load_screen
    add sp, byte 4
    push word [bp - 0x0002]
    call aztec_close
    pop cx
    cmp word [bp + 0x6], byte 0
    je short @..api_idx_0002_OOKN.l2
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call gfx_entry_16
    add sp, byte 8
@..api_idx_0002_OOKN.l2:
    ret
