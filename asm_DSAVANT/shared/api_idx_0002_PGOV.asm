; auto-generated
api_idx_0002_PGOV:
    mov ax, 0xfffe
    call aztec_csav
    mov word [bp - 0x0002], 0
@..api_idx_0002_PGOV.l1:
    cmp word [bp + 0x4], byte 0
    jl short @..api_idx_0002_PGOV.l2
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp + 0x4]
    jne short @..api_idx_0002_PGOV.l3
@..api_idx_0002_PGOV.l2:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    inc word [bx - 0x7cf2]
@..api_idx_0002_PGOV.l3:
    mov ax, 0x14
    imul word [bp - 0x0002]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    mov bx, cx
    mov cx, word [bx - 0x7cf2]
    shl cx, 1
    add ax, cx
    mov bx, ax
    cmp word [bx + 0x1d4], byte 0xff
    jne short @..api_idx_0002_PGOV.l4
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov word [bx - 0x7cf2], 0
@..api_idx_0002_PGOV.l4:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jl short @..api_idx_0002_PGOV.l1
    ret
