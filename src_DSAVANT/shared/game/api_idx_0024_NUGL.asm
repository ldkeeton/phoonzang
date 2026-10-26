; auto-generated
api_idx_0024_NUGL:
    mov ax, 0xffdc
    call aztec_csav
    mov ax, word [game_time]
    mov dx, word [game_time_hi]
    mov cx, 0x5a0
    mov bx, 0
    call aztec_ldv
    add ax, strict word 1
    adc dx, byte 0
    mov word [bp - 4], ax
    add ax, strict word 0x12
    mov cx, 0x18
    cwd
    idiv cx
    mov word [bp - 6], dx
    mov ax, word [game_time]
    mov dx, word [game_time_hi]
    mov cx, 0x5a0
    mov bx, 0
    call aztec_lrm
    mov cx, 0x3c
    mov bx, 0
    call aztec_ldv
    cmp dx, byte 0
    jg short @..api_idx_0024_NUGL.l1
    jne short @..api_idx_0024_NUGL.l2
    cmp ax, strict word 0xc
    jb short @..api_idx_0024_NUGL.l2
@..api_idx_0024_NUGL.l1:
    jmp short @..api_idx_0024_NUGL.l3
@..api_idx_0024_NUGL.l2:
    cmp word [bp - 6], byte 0xc
    jle short @..api_idx_0024_NUGL.l3
    dec word [bp - 4]
    mov ax, word [bp - 4]
    add ax, strict word 0x12
    mov cx, 0x18
    cwd
    idiv cx
    mov word [bp - 6], dx
@..api_idx_0024_NUGL.l3:
    mov ax, 0x3c
    imul word [bp - 6]
    cwd
    mov cx, ax
    mov bx, dx
    mov ax, word [game_time]
    mov dx, word [game_time_hi]
    sub ax, cx
    sbb dx, bx
    mov cx, 0x5a0
    mov bx, 0
    call aztec_lrm
    mov word [bp - 8], ax
    cmp ax, strict word 0
    jl short @..api_idx_0024_NUGL.l4
    cmp ax, 0x1e0
    jl short @..api_idx_0024_NUGL.l5
@..api_idx_0024_NUGL.l4:
    ret
@..api_idx_0024_NUGL.l5:
    mov cx, 2
    cwd
    idiv cx
    mov word [bp - 0xa], ax
    mov word [bp - 2], 0
@..api_idx_0024_NUGL.l6:
    mov ax, word [bp - 2]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov word [bx - 0x16], 0xff01
    inc word [bp - 2]
    mov ax, word [bp - 2]
    cmp ax, strict word 4
    jl short @..api_idx_0024_NUGL.l6
    cmp word [bp - 0xa], byte 0x3e
    jge short @..api_idx_0024_NUGL.l7
    mov ax, word [bp - 0xa]
    add ax, strict word 0x72
    mov word [bp - 0x14], ax
@..api_idx_0024_NUGL.l7:
    cmp word [bp - 0xa], byte 0x10
    jl short @..api_idx_0024_NUGL.l8
    cmp word [bp - 0xa], strict word 0xd0
    jg short @..api_idx_0024_NUGL.l8
    mov ax, word [bp - 0xa]
    add ax, strict word 0xffe0
    mov word [bp - 0x12], ax
@..api_idx_0024_NUGL.l8:
    cmp word [bp - 0xa], strict word 0xa2
    jl short @..api_idx_0024_NUGL.l9
    cmp word [bp - 0xa], strict word 0xf0
    jg short @..api_idx_0024_NUGL.l9
    mov ax, word [bp - 0xa]
    add ax, 0xff4e
    mov word [bp - 0x10], ax
@..api_idx_0024_NUGL.l9:
    mov ax, word [party_tag]
    shl ax, 1
    mov bx, ax
    add bx, bp
    cmp word [bx - 0x16], strict word 0xff01
    jne short @..api_idx_0024_NUGL.l10
    ret
@..api_idx_0024_NUGL.l10:
    mov ax, word [bp - 8]
    mov cx, 0xf0
    cwd
    idiv cx
    mov ax, dx
    mov cx, 7
    cwd
    idiv cx
    mov word [bp - 0xc], ax
    mov ax, word [bp - 8]
    mov cx, 0xf0
    cwd
    idiv cx
    test ax, ax
    je short @..api_idx_0024_NUGL.l11
    mov ax, 0x22
    sub ax, word [bp - 0xc]
    jmp short @..api_idx_0024_NUGL.l12
@..api_idx_0024_NUGL.l11:
    mov ax, word [bp - 0xc]
@..api_idx_0024_NUGL.l12:
    mov word [bp - 0xe], ax
    mov ax, word [bp - 4]
    mov cx, 3
    cwd
    idiv cx
    mov cx, 8
    cwd
    idiv cx
    mov word [bp - 0x18], dx
    mov ax, 1
    cmp dx, byte 5
    jge short @..api_idx_0024_NUGL.l13
    mov ax, 0
@..api_idx_0024_NUGL.l13:
    mov word [bp - 0x1a], ax
    cmp dx, byte 5
    jge short @..api_idx_0024_NUGL.l14
    inc dx
    mov ax, dx
    jmp short @..api_idx_0024_NUGL.l15
@..api_idx_0024_NUGL.l14:
    sub cx, word [bp - 0x18]
    mov ax, cx
    inc ax
@..api_idx_0024_NUGL.l15:
    mov byte [bp - 0x24], al
    mov byte [bp - 0x23], 0
    mov ax, 0
    push ax
    push ax
    lea ax, word [bp - 0x24]
    push ax
    push word [bp - 0x1a]
    mov ax, 0x90
    push ax
    mov ax, 0x20
    push ax
    mov ax, 0xf8
    push ax
    mov ax, 0x48
    push ax
    mov ax, 0x44
    sub ax, word [bp - 0xe]
    push ax
    mov ax, word [bx - 0x16]
    add ax, strict word 0x48
    push ax
    mov ax, 6
    push ax
    call gfx_draw_text
    add sp, byte 0x16
    ret
