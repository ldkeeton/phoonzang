; auto-generated
api_idx_0024:
    mov ax, 0xffdc
    call aztec_csav
    mov ax, word [bss_8f1c]
    mov dx, word [bss_8f1e]
    mov cx, 0x5a0
    mov bx, 0
    call aztec_ldv
    add ax, strict word 1
    adc dx, byte 0
    mov word [bp - 0x0004], ax
    add ax, strict word 0x12
    mov cx, 0x18
    cwd
    idiv cx
    mov word [bp - 0x0006], dx
    mov ax, word [bss_8f1c]
    mov dx, word [bss_8f1e]
    mov cx, 0x5a0
    mov bx, 0
    call aztec_lrm
    mov cx, 0x3c
    mov bx, 0
    call aztec_ldv
    cmp dx, byte 0
    jg short @..api_idx_0024.l1
    jne short @..api_idx_0024.l2
    cmp ax, strict word 0xc
    jb short @..api_idx_0024.l2
@..api_idx_0024.l1:
    jmp short @..api_idx_0024.l3
@..api_idx_0024.l2:
    cmp word [bp - 0x0006], byte 0x0c
    jle short @..api_idx_0024.l3
    dec word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x12
    mov cx, 0x18
    cwd
    idiv cx
    mov word [bp - 0x0006], dx
@..api_idx_0024.l3:
    mov ax, 0x3c
    imul word [bp - 0x0006]
    cwd
    mov cx, ax
    mov bx, dx
    mov ax, word [bss_8f1c]
    mov dx, word [bss_8f1e]
    sub ax, cx
    sbb dx, bx
    mov cx, 0x5a0
    mov bx, 0
    call aztec_lrm
    mov word [bp - 0x0008], ax
    cmp ax, strict word 0
    jl short @..api_idx_0024.l4
    cmp ax, 0x1e0
    jl short @..api_idx_0024.l5
@..api_idx_0024.l4:
    ret
@..api_idx_0024.l5:
    mov cx, 2
    cwd
    idiv cx
    mov word [bp - 0x000a], ax
    mov word [bp - 0x0002], 0
@..api_idx_0024.l6:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov word [bx - 0x0016], 0xff01
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 4
    jl short @..api_idx_0024.l6
    cmp word [bp - 0x000a], byte 0x3e
    jge short @..api_idx_0024.l7
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x72
    mov word [bp - 0x0014], ax
@..api_idx_0024.l7:
    cmp word [bp - 0x000a], byte 0x10
    jl short @..api_idx_0024.l8
    cmp word [bp - 0x000a], strict word 0xd0
    jg short @..api_idx_0024.l8
    mov ax, word [bp - 0x000a]
    add ax, strict word 0xffe0
    mov word [bp - 0x0012], ax
@..api_idx_0024.l8:
    cmp word [bp - 0x000a], strict word 0xa2
    jl short @..api_idx_0024.l9
    cmp word [bp - 0x000a], strict word 0xf0
    jg short @..api_idx_0024.l9
    mov ax, word [bp - 0x000a]
    add ax, 0xff4e
    mov word [bp - 0x0010], ax
@..api_idx_0024.l9:
    mov ax, word [bss_82ee]
    shl ax, 1
    mov bx, ax
    add bx, bp
    cmp word [bx - 0x0016], strict word 0xff01
    jne short @..api_idx_0024.l10
    ret
@..api_idx_0024.l10:
    mov ax, word [bp - 0x0008]
    mov cx, 0xf0
    cwd
    idiv cx
    mov ax, dx
    mov cx, 7
    cwd
    idiv cx
    mov word [bp - 0x000c], ax
    mov ax, word [bp - 0x0008]
    mov cx, 0xf0
    cwd
    idiv cx
    test ax, ax
    je short @..api_idx_0024.l11
    mov ax, 0x22
    sub ax, word [bp - 0x000c]
    jmp short @..api_idx_0024.l12
@..api_idx_0024.l11:
    mov ax, word [bp - 0x000c]
@..api_idx_0024.l12:
    mov word [bp - 0x000e], ax
    mov ax, word [bp - 0x0004]
    mov cx, 3
    cwd
    idiv cx
    mov cx, 8
    cwd
    idiv cx
    mov word [bp - 0x0018], dx
    mov ax, 1
    cmp dx, byte 5
    jge short @..api_idx_0024.l13
    mov ax, 0
@..api_idx_0024.l13:
    mov word [bp - 0x001a], ax
    cmp dx, byte 5
    jge short @..api_idx_0024.l14
    inc dx
    mov ax, dx
    jmp short @..api_idx_0024.l15
@..api_idx_0024.l14:
    sub cx, word [bp - 0x0018]
    mov ax, cx
    inc ax
@..api_idx_0024.l15:
    mov byte [bp - 0x0024], al
    mov byte [bp - 0x0023], 0
    mov ax, 0
    push ax
    push ax
    lea ax, word [bp - 0x0024]
    push ax
    push word [bp - 0x001a]
    mov ax, 0x90
    push ax
    mov ax, 0x20
    push ax
    mov ax, 0xf8
    push ax
    mov ax, 0x48
    push ax
    mov ax, 0x44
    sub ax, word [bp - 0x000e]
    push ax
    mov ax, word [bx - 0x0016]
    add ax, strict word 0x48
    push ax
    mov ax, 6
    push ax
    call thunk_28
    add sp, byte 0x16
    ret
