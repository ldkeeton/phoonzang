; auto-generated
api_idx_001c_VLRT:
    mov ax, 0xffe4
    call aztec_csav
    mov byte [bp - 0x001c], 0
    mov ax, 6
    imul word [bp + 0x4]
    mov cx, word [bp + 0x6]
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov ax, word [bx + bss_843a]
    mov cx, 0xa
    cwd
    idiv cx
    mov word [bp - 0x0002], ax
    mov word [bp - 0x0004], dx
    cmp ax, strict word 1
    jl short @..api_idx_001c_VLRT.l1
    cmp ax, strict word 3
    jg short @..api_idx_001c_VLRT.l1
    mov ax, word [bp + 0x4]
    cmp ax, word [bss_8454]
    jle short @..api_idx_001c_VLRT.l2
@..api_idx_001c_VLRT.l1:
    ret
@..api_idx_001c_VLRT.l2:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx + bss_8482]
    cmp byte [bx + 0x19f], 0xff
    jne short @..api_idx_001c_VLRT.l3
    ret
@..api_idx_001c_VLRT.l3:
    mov al, byte [bx + 0x19f]
    cbw
    mov word [bp - 0x0006], ax
    lea ax, word [bp - 0x001c]
    push ax
    push word [bp + 0x10]
    push word [bp + 0x6]
    push word [bp + 0x4]
    push dx
    push word [bp - 0x0002]
    call api_idx_000e_VRIR
    add sp, byte 0x0c
    cmp byte [bp - 0x001c], 0
    jne short @..api_idx_001c_VLRT.l4
    ret
@..api_idx_001c_VLRT.l4:
    mov ax, word [bp + 0x6]
    mov cx, 2
    cwd
    idiv cx
    mov word [bp - 0x0008], dx
    mov al, byte [bp - 0x001c]
    sub ah, ah
    mov word [bp - 0x000a], ax
    mov ax, 0x15e
    imul word [bp - 0x0006]
    mov bx, ax
    cmp byte [bx + 0x6b75], 0
    je short @..api_idx_001c_VLRT.l5
    mov word [bp + 0x8], 0
@..api_idx_001c_VLRT.l5:
    mov cx, word [bp - 0x000a]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x6abf]
    sub ah, ah
    mov word [bp - 0x000c], ax
    cmp word [bp - 0x000c], byte 0
    jne short @..api_idx_001c_VLRT.l6
    mov ax, 6
    imul word [bp + 0x4]
    mov cx, word [bp + 0x6]
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov ax, word [bx + 0x5b6]
    sub ax, word [bp - 0x0002]
    mov word [bp - 0x000c], ax
    jmp short @..api_idx_001c_VLRT.l8
@..api_idx_001c_VLRT.l6:
    mov ax, 0x64
    push ax
    mov ax, 5
    push ax
    mov ax, 0xa
    imul word [bp + 0x4]
    mov cx, ax
    mov ax, 0
    cmp word [bp + 0x6], byte 0
    jne short @..api_idx_001c_VLRT.l7
    mov ax, 5
@..api_idx_001c_VLRT.l7:
    add cx, ax
    mov ax, word [bp - 0x000c]
    sub ax, cx
    push ax
    call clamp
    add sp, byte 6
    mov word [bp - 0x000c], ax
@..api_idx_001c_VLRT.l8:
    mov ax, word [bp + 0xe]
    dec ax
    push ax
    mov ax, 0
    push ax
    mov ax, 0x15e
    imul word [bp - 0x0006]
    push ax
    mov ax, word [bp - 0x0008]
    mov cx, 2
    cwd
    idiv cx
    mov cx, dx
    pop ax
    add ax, cx
    mov cx, word [bp - 0x000a]
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x6a52]
    sub ah, ah
    push ax
    mov ax, 0x15e
    imul word [bp - 0x0006]
    mov cx, word [bp + 0x6]
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x6b60]
    cbw
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    call clamp
    add sp, byte 6
    mov word [bp - 0x000e], ax
    mov ax, 0x15e
    imul word [bp - 0x0006]
    add ax, word [bp - 0x000a]
    mov bx, ax
    mov al, byte [bx + 0x6a9b]
    sub ah, ah
    push ax
    mov ax, 0x15e
    imul word [bp - 0x0006]
    mov cx, word [bp + 0x6]
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x6b61]
    cbw
    mov cx, ax
    pop ax
    add ax, cx
    mov word [bp - 0x0010], ax
    cmp word [bss_8466], byte 1
    jne short @..api_idx_001c_VLRT.l9
    mov bx, word [bss_8484]
    cmp byte [bx + 0x1a1], 1
    jne short @..api_idx_001c_VLRT.l9
    cmp word [bp + 0x4], byte 0
    jne short @..api_idx_001c_VLRT.l9
    mov word [bp + 0xa], 0
@..api_idx_001c_VLRT.l9:
    mov ax, 0xa0
    sub ax, word [bp - 0x000e]
    imul word [bp + 0xa]
    mov cx, 0x64
    cwd
    idiv cx
    add word [bp - 0x000e], ax
    mov ax, word [bp - 0x0008]
    mov cx, 2
    cwd
    idiv cx
    mov ax, dx
    test ax, ax
    je short @..api_idx_001c_VLRT.l10
    mov ax, 0x15e
    imul word [bp - 0x0006]
    mov cx, ax
    mov ax, word [bp - 0x0008]
    mov bx, 2
    cwd
    idiv bx
    mov ax, dx
    add cx, ax
    mov ax, cx
    mov cx, word [bp - 0x000a]
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x6a52]
    sub ah, ah
    mov cx, ax
    mov ax, 0xa0
    sub ax, cx
    shl ax, 1
    imul word [bp + 0xa]
    mov cx, 0x64
    cwd
    idiv cx
    sub word [bp - 0x000e], ax
@..api_idx_001c_VLRT.l10:
    mov ax, word [bp + 0xe]
    dec ax
    push ax
    mov ax, 0
    push ax
    mov ax, word [bp - 0x000e]
    add ax, word [bp + 0x8]
    push ax
    call clamp
    add sp, byte 6
    mov word [bp - 0x000e], ax
    mov ax, 0x3d
    sub ax, word [bp - 0x0010]
    imul word [bp + 0xa]
    mov cx, 0x64
    cwd
    idiv cx
    add word [bp - 0x0010], ax
    lea ax, word [bp - 0x001c]
    push ax
    push word [bp + 0xa]
    push word [bp - 0x0008]
    push word [bp + 0xe]
    push word [bp + 0xc]
    push word [bp - 0x0010]
    push word [bp - 0x000e]
    push word [bp - 0x0006]
    push word [bp - 0x000c]
    call api_idx_0004_ONRQ
    add sp, byte 0x12
    ret
