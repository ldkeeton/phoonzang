; auto-generated
api_idx_001e_IGLM:
    mov ax, 0xffe2
    call aztec_csav
    mov word [bp - 0x0004], 0x14a
    mov ax, word [bss_8f1c]
    mov dx, word [bss_8f1e]
    push ax
    push dx
    mov ax, word [bp - 0x0004]
    cwd
    mov cx, ax
    mov bx, dx
    pop dx
    pop ax
    sub ax, cx
    sbb dx, bx
    mov cx, 0x5a0
    mov bx, 0
    call aztec_lrm
    mov word [bp - 0x0006], ax
    cmp ax, strict word 0
    jl short @..api_idx_001e_IGLM.l1
    cmp ax, 0x36c
    jl short @..api_idx_001e_IGLM.l2
@..api_idx_001e_IGLM.l1:
    ret
@..api_idx_001e_IGLM.l2:
    mov cx, 3
    cwd
    idiv cx
    mov word [bp - 0x0008], ax
    mov word [bp - 0x0002], 0
@..api_idx_001e_IGLM.l3:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov word [bx - 0x0014], 0xff01
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 4
    jl short @..api_idx_001e_IGLM.l3
    cmp word [bp - 0x0008], byte 0x68
    jg short @..api_idx_001e_IGLM.l4
    mov ax, 0x58
    sub ax, word [bp - 0x0008]
    mov word [bp - 0x0012], ax
@..api_idx_001e_IGLM.l4:
    cmp word [bp - 0x0008], byte 0x3a
    jl short @..api_idx_001e_IGLM.l5
    cmp word [bp - 0x0008], strict word 0xfa
    jg short @..api_idx_001e_IGLM.l5
    mov ax, 0xb0
    mov cx, word [bp - 0x0008]
    add cx, byte 0xc6
    sub ax, cx
    mov word [bp - 0x0014], ax
@..api_idx_001e_IGLM.l5:
    cmp word [bp - 0x0008], strict word 0xcc
    jl short @..api_idx_001e_IGLM.l6
    cmp word [bp - 0x0008], strict word 0x124
    jg short @..api_idx_001e_IGLM.l6
    mov ax, 0xb0
    mov cx, word [bp - 0x0008]
    add cx, strict word 0xff34
    sub ax, cx
    mov word [bp - 0x000e], ax
@..api_idx_001e_IGLM.l6:
    mov ax, word [bss_82ee]
    shl ax, 1
    mov bx, ax
    add bx, bp
    cmp word [bx - 0x0014], strict word 0xff01
    jne short @..api_idx_001e_IGLM.l7
    ret
@..api_idx_001e_IGLM.l7:
    cmp word [bp - 0x0006], strict word 0x10e
    jge short @..api_idx_001e_IGLM.l8
    mov ax, word [bp - 0x0006]
    mov cx, 0xa
    cwd
    idiv cx
    add ax, strict word 5
    mov word [bp - 0x000c], ax
    jmp short @..api_idx_001e_IGLM.l12
@..api_idx_001e_IGLM.l8:
    mov ax, word [bp - 0x0006]
    cmp ax, 0x276
    jl short @..api_idx_001e_IGLM.l9
    add ax, 0xfd8a
    mov cx, 9
    cwd
    idiv cx
    mov cx, ax
    mov ax, 0x20
    sub ax, cx
    mov word [bp - 0x000c], ax
    jmp short @..api_idx_001e_IGLM.l12
@..api_idx_001e_IGLM.l9:
    mov ax, word [bp - 0x0006]
    add ax, 0xfef2
    mov cx, 0xb4
    cwd
    idiv cx
    mov ax, dx
    mov cx, 0x24
    cwd
    idiv cx
    mov word [bp - 0x000a], ax
    mov ax, word [bp - 0x0006]
    add ax, 0xfef2
    mov cx, 0xb4
    cwd
    idiv cx
    test ax, ax
    je short @..api_idx_001e_IGLM.l10
    mov ax, 0x24
    sub ax, word [bp - 0x000a]
    jmp short @..api_idx_001e_IGLM.l11
@..api_idx_001e_IGLM.l10:
    mov ax, word [bp - 0x000a]
    add ax, strict word 0x20
@..api_idx_001e_IGLM.l11:
    mov word [bp - 0x000c], ax
@..api_idx_001e_IGLM.l12:
    mov byte [bp - 0x001e], 6
    mov byte [bp - 0x001d], 0
    mov ax, 0
    push ax
    push ax
    lea ax, word [bp - 0x001e]
    push ax
    mov ax, 0
    push ax
    mov ax, 0x90
    push ax
    mov ax, 0x20
    push ax
    mov ax, 0xf8
    push ax
    mov ax, 0x48
    push ax
    mov ax, 0x46
    sub ax, word [bp - 0x000c]
    push ax
    mov ax, word [bx - 0x0014]
    add ax, strict word 0x48
    push ax
    mov ax, 6
    push ax
    call gfx_draw_text
    add sp, byte 0x16
    ret
