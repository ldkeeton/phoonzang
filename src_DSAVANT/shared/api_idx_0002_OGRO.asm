; auto-generated
api_idx_0002_OGRO:
    mov ax, 0xfffe
    call aztec_csav
    mov ax, 0
    push ax
    push ax
    push word [api_idx_0002_OGRO.bss1]
    push word [api_idx_0002_OGRO.bss2]
    call gfx_restore_screen
    add sp, byte 8
    mov word [bp - 0x0002], 0
    jmp near @..api_idx_0002_OGRO.l2
@..api_idx_0002_OGRO.l1:
    mov ax, 0
    push ax
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    push word [word bx + 0x30]
    call gfx_entry_12
    add sp, byte 4
    mov ax, 6
    imul word [bp - 0x0002]
    add ax, strict word 0x72
    push ax
    mov ax, 6
    push ax
    call gfx_entry_13
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x14
    imul word [bp - 0x0002]
    add ax, bss_0e38
    push ax
    call ds_string_loc_QRJV
    add sp, byte 4
    mov ax, 6
    imul word [bp - 0x0002]
    add ax, strict word 0x72
    push ax
    mov ax, 0x85
    push ax
    call gfx_entry_13
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    call gfx_entry_12
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 3
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    mov si, cx
    mov bx, word [bp + 0xa]
    mov cx, word [bx + si]
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x5d6c]
    sub ah, ah
    push ax
    call ds_app_GUML
    add sp, byte 6
    inc word [bp - 0x0002]
@..api_idx_0002_OGRO.l2:
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp + 0x8]
    jge short @..api_idx_0002_OGRO.l3
    jmp near @..api_idx_0002_OGRO.l1
@..api_idx_0002_OGRO.l3:
    ret
