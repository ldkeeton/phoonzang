; auto-generated
api_idx_0002_KOUO:
    mov ax, 0xfffe
    call aztec_csav
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov ax, word [bx + 0x5c18]
    push ax
    mov al, byte [bx + 0x5e3b]
    sub ah, ah
    mov cx, ax
    pop ax
    cmp ax, cx
    jge short @..api_idx_0002_KOUO.l1
    mov ax, cx
    jmp short @..api_idx_0002_KOUO.l2
@..api_idx_0002_KOUO.l1:
    mov ax, word [bx + 0x5c18]
@..api_idx_0002_KOUO.l2:
    mov word [bp - 0x0002], ax
    push ax
    cmp ax, strict word 0x14
    pop ax
    jle short @..api_idx_0002_KOUO.l3
    mov ax, 0x14
@..api_idx_0002_KOUO.l3:
    mov word [bp - 0x0002], ax
    mov cx, 3
    cwd
    idiv cx
    inc ax
    push ax
    mov ax, 1
    push ax
    push word [bp + 0x6]
    call clamp
    add sp, byte 6
    mov word [bp + 0x6], ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5d68]
    sub ah, ah
    mov cx, 6
    cwd
    idiv cx
    push ax
    mov ax, word [bp - 0x0002]
    add ax, word [bp + 0x8]
    sub ax, word [bp + 0xa]
    cwd
    idiv word [bp + 0x8]
    mov cx, ax
    pop ax
    add ax, cx
    dec ax
    mov byte [bx + 0x5e37], al
    push word [bp + 0x6]
    mov ax, 1
    push ax
    mov al, byte [bx + 0x5e37]
    sub ah, ah
    push ax
    call clamp
    add sp, byte 6
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    pop ax
    mov byte [bx + 0x5e37], al
    mov al, byte [bx + 0x5d69]
    sub ah, ah
    mov cx, 6
    cwd
    idiv cx
    push ax
    mov ax, word [bp - 0x0002]
    add ax, word [bp + 0xc]
    sub ax, word [bp + 0xe]
    cwd
    idiv word [bp + 0xc]
    mov cx, ax
    pop ax
    add ax, cx
    dec ax
    mov byte [bx + 0x5e38], al
    push word [bp + 0x6]
    mov ax, 1
    push ax
    mov al, byte [bx + 0x5e38]
    sub ah, ah
    push ax
    call clamp
    add sp, byte 6
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    pop ax
    mov byte [bx + 0x5e38], al
    mov al, byte [bx + 0x5d69]
    sub ah, ah
    add ax, word [bp - 0x0002]
    mov byte [bx + 0x5e39], al
    ret
