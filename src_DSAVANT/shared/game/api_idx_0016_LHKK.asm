; auto-generated
api_idx_0016_LHKK:
    mov ax, 0xffea
    call aztec_csav
    mov bx, word [bp + 0x4]
    mov al, byte [bx + 0xb]
    sub ah, ah
    mov word [bp - 0x000c], ax
    cmp byte [bx + 0xa], 0
    je short @..api_idx_0016_LHKK.l1
    jmp near @..api_idx_0016_LHKK.l10
@..api_idx_0016_LHKK.l1:
    mov al, byte [bx + 0x8]
    sub ah, ah
    mov word [bp - 0x0002], ax
    jmp near @..api_idx_0016_LHKK.l8
@..api_idx_0016_LHKK.l2:
    mov word [bp - 0x000a], 0
    mov al, byte [bp - 0x0002]
    mov byte [bp - 0x0016], al
    mov byte [bp - 0x0015], 0
    mov word [bp - 0x0006], 0
    mov bx, word [bp + 0x4]
    mov al, byte [bx + 0x8]
    sub ah, ah
    inc ax
    cmp ax, word [bp - 0x0002]
    jne short @..api_idx_0016_LHKK.l3
    mov ax, 3
    jmp short @..api_idx_0016_LHKK.l4
@..api_idx_0016_LHKK.l3:
    mov ax, 1
@..api_idx_0016_LHKK.l4:
    mov word [bp - 0x0008], ax
    mov ax, word [bp - 0x0006]
    mov word [bp - 0x0004], ax
    jmp near @..api_idx_0016_LHKK.l6
@..api_idx_0016_LHKK.l5:
    mov ax, 0
    push ax
    push ax
    lea ax, word [bp - 0x0016]
    push ax
    mov bx, word [bp + 0x4]
    mov al, byte [bx + 0xf]
    sub ah, ah
    push ax
    mov ax, 0x90
    push ax
    mov ax, 0x20
    push ax
    push word [bx + 0x6]
    push word [bx + 0x4]
    mov bx, word [bp - 0x0002]
    mov al, byte [bx + 0x7013]
    sub ah, ah
    add ax, word [bp - 0x000a]
    push ax
    mov bx, word [bp + 0x4]
    mov al, byte [bx + 0xd]
    sub ah, ah
    mov cx, 0xa
    imul cx
    mov cx, word [bp - 0x000c]
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov ax, word [bx + 0x260]
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    push ax
    mov bx, word [bp + 0x4]
    mov al, byte [bx + 0xf]
    sub ah, ah
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x6fca]
    sub ah, ah
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov bx, word [bp + 0x4]
    mov al, byte [bx + 0xc]
    sub ah, ah
    push ax
    call gfx_draw_text
    add sp, byte 0x16
    mov bx, word [bp + 0x4]
    mov al, byte [bx + 0xd]
    sub ah, ah
    shl ax, 1
    mov bx, ax
    mov ax, word [bx + 0x29c]
    add word [bp - 0x000a], ax
    inc word [bp - 0x0004]
@..api_idx_0016_LHKK.l6:
    mov ax, word [bp - 0x0004]
    cmp ax, word [bp - 0x0008]
    jge short @..api_idx_0016_LHKK.l7
    jmp near @..api_idx_0016_LHKK.l5
@..api_idx_0016_LHKK.l7:
    inc word [bp - 0x0002]
@..api_idx_0016_LHKK.l8:
    mov bx, word [bp + 0x4]
    mov al, byte [bx + 0x8]
    sub ah, ah
    inc ax
    inc ax
    inc ax
    cmp ax, word [bp - 0x0002]
    jle short @..api_idx_0016_LHKK.l9
    jmp near @..api_idx_0016_LHKK.l2
@..api_idx_0016_LHKK.l9:
    jmp near @..api_idx_0016_LHKK.l12
@..api_idx_0016_LHKK.l10:
    mov word [bp - 0x000a], 0
    mov bx, word [bp + 0x4]
    mov al, byte [bx + 0x8]
    mov byte [bp - 0x0016], al
    mov byte [bp - 0x0015], 0
    mov word [bp - 0x0004], 0
@..api_idx_0016_LHKK.l11:
    mov ax, 0
    push ax
    push ax
    lea ax, word [bp - 0x0016]
    push ax
    mov bx, word [bp + 0x4]
    mov al, byte [bx + 0xf]
    sub ah, ah
    push ax
    mov ax, 0x90
    push ax
    mov ax, 0x20
    push ax
    push word [bx + 0x6]
    push word [bx + 0x4]
    mov al, byte [bx + 0xd]
    sub ah, ah
    shl ax, 1
    mov bx, ax
    mov ax, word [bx + 0x292]
    add ax, word [bp - 0x000a]
    push ax
    mov bx, word [bp + 0x4]
    mov al, byte [bx + 0x8]
    sub ah, ah
    shl ax, 1
    push ax
    mov al, byte [bx + 0xf]
    sub ah, ah
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x6fca]
    sub ah, ah
    push ax
    mov bx, word [bp + 0x4]
    mov al, byte [bx + 0xc]
    sub ah, ah
    push ax
    call gfx_draw_text
    add sp, byte 0x16
    mov bx, word [bp + 0x4]
    mov al, byte [bx + 0xd]
    sub ah, ah
    shl ax, 1
    mov bx, ax
    mov ax, word [bx + 0x29c]
    add word [bp - 0x000a], ax
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 3
    jl short @..api_idx_0016_LHKK.l11
@..api_idx_0016_LHKK.l12:
    ret
