; auto-generated
api_idx_0004_MHTS:
    mov ax, 0xfffc
    call aztec_csav
    mov word [bp - 0x0002], 0
@..api_idx_0004_MHTS.l1:
    mov word [bp - 0x0004], 0
@..api_idx_0004_MHTS.l2:
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x78
    imul word [bp - 0x0002]
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, 0xc
    imul word [bp - 0x0004]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    cmp word [bx + 0x5c34], byte 0
    jne short @..api_idx_0004_MHTS.l3
    mov ax, word [bp - 0x0002]
    xchg al, ah
    sub al, al
    add ax, word [bp - 0x0004]
    ret
@..api_idx_0004_MHTS.l3:
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 0xa
    jl short @..api_idx_0004_MHTS.l2
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 2
    jl short @..api_idx_0004_MHTS.l1
    mov ax, 0xffff
    ret
