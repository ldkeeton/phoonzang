; auto-generated
api_idx_000c_2:
    mov ax, 0xfff4
    call aztec_csav
    mov word [bp - 0x0002], 0
@..api_idx_000c_2.l1:
    mov ax, 0x14
    imul word [bp - 0x0002]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    mov bx, cx
    mov cx, word [bx - 0x7cf2]
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x1d4]
    mov byte [bp - 0x000c], al
    mov byte [bp - 0x000b], 0
    mov ax, 0
    push ax
    push ax
    lea ax, word [bp - 0x000c]
    push ax
    mov ax, 0
    push ax
    mov ax, 0xc7
    push ax
    mov ax, 0
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    mov ax, 0xc
    imul word [bp + 0x8]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov ax, word [bx + 0x1bc]
    add ax, word [bp + 0x6]
    push ax
    mov ax, word [bx + 0x1a4]
    add ax, word [bp + 0x4]
    push ax
    mov ax, 2
    push ax
    call thunk_28
    add sp, byte 0x16
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jl short @..api_idx_000c_2.l1
    ret
