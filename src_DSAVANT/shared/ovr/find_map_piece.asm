; auto-generated
find_map_piece:
    mov ax, 0xfffc
    call aztec_csav
    push word [bp + 0xc]
    push word [bp + 0xa]
    mov bx, word [bp + 8]
    push word [bx]
    call loc_MPHO
    add sp, byte 6
    mov word [bp - 4], ax
    cmp ax, strict word 0xffff
    jne short .forward2
    push word [bp + 0xc]
    push word [bp + 0xa]
    push word [bss_8f48]
    call loc_MPHO
    add sp, byte 6
    mov word [bp - 4], ax
    cmp ax, strict word 0xffff
    jne short .forward2
    mov bx, word [bp + 8]
    mov ax, word [bx]
    inc ax
    mov cx, 0x10
    cwd
    idiv cx
    mov word [bp - 2], dx
.back1:
    push word [bp + 0xc]
    push word [bp + 0xa]
    push word [bp - 2]
    call loc_MPHO
    add sp, byte 6
    mov word [bp - 4], ax
    cmp ax, strict word 0xffff
    jne short .forward2
    mov ax, word [bp - 2]
    inc ax
    mov cx, 0x10
    cwd
    idiv cx
    mov word [bp - 2], dx
    mov bx, word [bp + 8]
    cmp dx, word [bx]
    jne short .forward1
    mov ax, 1
    ret
.forward1:
    jmp short .back1
.forward2:
    mov ax, word [bp + 0xa]
    push ax
    mov bx, word [maze_data]
    mov si, word [bp - 4]
    mov al, byte [bx + si + 0x490]
    sub ah, ah
    mov cx, ax
    pop ax
    sub ax, cx
    mov bx, word [bp + 4]
    mov word [bx], ax
    mov ax, word [bp + 0xc]
    push ax
    mov bx, word [maze_data]
    mov si, word [bp - 4]
    mov al, byte [bx + si + 0x4a0]
    sub ah, ah
    mov cx, ax
    pop ax
    sub ax, cx
    mov bx, word [bp + 6]
    mov word [bx], ax
    mov ax, word [bp - 4]
    mov bx, word [bp + 8]
    mov word [bx], ax
    mov word [bss_8f48], ax
    mov ax, 0
    ret
