; auto-generated
api_idx_0004_HROJ:
    mov ax, 0xfffc
    call aztec_csav
    push word [bp + 0xc]
    push word [bp + 0xa]
    mov bx, word [bp + 0x8]
    push word [bx]
    call loc_LNMK
    add sp, byte 6
    mov word [bp - 0x0004], ax
    cmp ax, strict word 0xffff
    jne short @..api_idx_0004_HROJ.l3
    push word [bp + 0xc]
    push word [bp + 0xa]
    push word [bss_8f48]
    call loc_LNMK
    add sp, byte 6
    mov word [bp - 0x0004], ax
    cmp ax, strict word 0xffff
    jne short @..api_idx_0004_HROJ.l3
    mov bx, word [bp + 0x8]
    mov ax, word [bx]
    inc ax
    mov cx, 0x10
    cwd
    idiv cx
    mov word [bp - 0x0002], dx
@..api_idx_0004_HROJ.l1:
    push word [bp + 0xc]
    push word [bp + 0xa]
    push word [bp - 0x0002]
    call loc_LNMK
    add sp, byte 6
    mov word [bp - 0x0004], ax
    cmp ax, strict word 0xffff
    jne short @..api_idx_0004_HROJ.l3
    mov ax, word [bp - 0x0002]
    inc ax
    mov cx, 0x10
    cwd
    idiv cx
    mov word [bp - 0x0002], dx
    mov bx, word [bp + 0x8]
    cmp dx, word [bx]
    jne short @..api_idx_0004_HROJ.l2
    mov ax, 1
    ret
@..api_idx_0004_HROJ.l2:
    jmp short @..api_idx_0004_HROJ.l1
@..api_idx_0004_HROJ.l3:
    mov ax, word [bp + 0xa]
    push ax
    mov bx, word [bss_0e14]
    mov si, word [bp - 0x0004]
    mov al, byte [bx + si + 0x490]
    sub ah, ah
    mov cx, ax
    pop ax
    sub ax, cx
    mov bx, word [bp + 0x4]
    mov word [bx], ax
    mov ax, word [bp + 0xc]
    push ax
    mov bx, word [bss_0e14]
    mov si, word [bp - 0x0004]
    mov al, byte [bx + si + 0x4a0]
    sub ah, ah
    mov cx, ax
    pop ax
    sub ax, cx
    mov bx, word [bp + 0x6]
    mov word [bx], ax
    mov ax, word [bp - 0x0004]
    mov bx, word [bp + 0x8]
    mov word [bx], ax
    mov word [bss_8f48], ax
    mov ax, 0
    ret
