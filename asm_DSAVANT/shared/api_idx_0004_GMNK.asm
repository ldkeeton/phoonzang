; auto-generated
api_idx_0004_GMNK:
    mov ax, 0xfffc
    call aztec_csav
    push word [bp + 0xc]
    push word [bp + 0xa]
    push word [bp + 0x8]
    push word [bp + 0x6]
    push word [bp + 0x4]
    call api_idx_0006_POPS
    add sp, byte 0x0a
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    jne short @..api_idx_0004_GMNK.l2
    mov ax, word [bss_590e]
    mov word [bp - 0x0002], ax
    inc word [bss_590e]
    mov ax, word [bss_590e]
    cmp ax, 0x200
    jl short @..api_idx_0004_GMNK.l2
@..api_idx_0004_GMNK.l1:
    mov ax, 0
    push ax
    call ds_app_HKIJ
    pop cx
    jmp short @..api_idx_0004_GMNK.l1
@..api_idx_0004_GMNK.l2:
    mov ax, 6
    imul word [bp - 0x0002]
    mov cx, ax
    mov ax, word [bss_0e10]
    add ax, cx
    mov word [bp - 0x0004], ax
    mov al, byte [bp + 0x4]
    mov bx, word [bp - 0x0004]
    mov byte [bx], al
    mov al, byte [bp + 0x6]
    mov bx, word [bp - 0x0004]
    mov byte [bx + 0x1], al
    mov ax, word [bp + 0x8]
    xchg al, ah
    sub al, al
    mov dx, word [bp + 0xa]
    mov cx, 4
    shl dx, cl
    mov cx, dx
    add ax, cx
    add ax, word [bp + 0xc]
    mov bx, word [bp - 0x0004]
    mov word [bx + 0x2], ax
    mov ax, word [bp + 0x6]
    jmp short @..api_idx_0004_GMNK.l3
