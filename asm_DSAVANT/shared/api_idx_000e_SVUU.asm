; auto-generated
api_idx_000e_SVUU:
    mov ax, 0xfff2
    call aztec_csav
    cmp word [bss_8f20], byte 0
    jg short @..api_idx_000e_SVUU.l1
    jmp near @..api_idx_000e_SVUU.l8
@..api_idx_000e_SVUU.l1:
    mov ax, word [bss_82ee]
    mov cx, word [bss_8f20]
    dec cx
    sub ax, cx
    add ax, strict word 6
    mov cx, 4
    cwd
    idiv cx
    mov word [bp - 0x0002], dx
    mov ax, dx
    jmp short @..api_idx_000e_SVUU.l6
@..api_idx_000e_SVUU.l2:
    mov byte [bp - 0x000e], 1
    mov byte [bp - 0x000d], 2
    mov ax, 5
    cmp word [bp - 0x0002], byte 0
    jne short @..api_idx_000e_SVUU.l3
    mov ax, 4
@..api_idx_000e_SVUU.l3:
    mov byte [bp - 0x000c], al
    mov byte [bp - 0x000b], 0
    mov word [bp - 0x0004], 0
    jmp short @..api_idx_000e_SVUU.l7
@..api_idx_000e_SVUU.l4:
    mov byte [bp - 0x000e], 3
    mov byte [bp - 0x000d], 0
    mov ax, 0
    cmp word [bp - 0x0002], byte 3
    jne short @..api_idx_000e_SVUU.l5
    mov ax, 1
@..api_idx_000e_SVUU.l5:
    mov word [bp - 0x0004], ax
    jmp short @..api_idx_000e_SVUU.l7
@..api_idx_000e_SVUU.l6:
    cmp ax, strict word 0
    je short @..api_idx_000e_SVUU.l2
    cmp ax, strict word 1
    je short @..api_idx_000e_SVUU.l4
    cmp ax, strict word 2
    je short @..api_idx_000e_SVUU.l2
    cmp ax, strict word 3
    je short @..api_idx_000e_SVUU.l4
@..api_idx_000e_SVUU.l7:
    lea ax, word [bp - 0x000e]
    push ax
    mov ax, 0
    push ax
    push word [bp - 0x0004]
    mov ax, 0xf8
    push ax
    mov ax, 0x48
    push ax
    mov al, byte [bp - 0x000e]
    sub ah, ah
    mov bx, ax
    mov al, byte [bx + 0x6eb5]
    sub ah, ah
    inc ax
    push ax
    shl bx, 1
    mov ax, bx
    add ax, word [bp - 0x0004]
    mov bx, ax
    mov al, byte [bx + 0x6e6c]
    sub ah, ah
    inc ax
    push ax
    mov ax, 3
    push ax
    mov ax, 0x1b
    push ax
    call api_idx_0004_HHQR
    add sp, byte 0x12
@..api_idx_000e_SVUU.l8:
    cmp word [bss_8f20], byte 0xff
    jne short @..api_idx_000e_SVUU.l9
    mov byte [bp - 0x000e], 1
    mov byte [bp - 0x000d], 0
    lea ax, word [bp - 0x000e]
    push ax
    mov ax, 0
    push ax
    push ax
    mov ax, 0xf8
    push ax
    mov ax, 0x48
    push ax
    mov al, byte [bss_7b04]
    sub ah, ah
    push ax
    mov al, byte [bss_7abc]
    sub ah, ah
    push ax
    mov ax, 0xc
    push ax
    mov ax, 0x1c
    push ax
    call api_idx_0004_HHQR
    add sp, byte 0x12
@..api_idx_000e_SVUU.l9:
    ret
