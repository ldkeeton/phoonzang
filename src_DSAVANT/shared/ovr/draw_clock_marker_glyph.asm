; auto-generated
draw_clock_marker_glyph:
    mov ax, 0xffe2
    call aztec_csav
    mov word [bp - 4], 0x14a
    mov ax, word [game_time]
    mov dx, word [game_time_hi]
    push ax
    push dx
    mov ax, word [bp - 4]
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
    mov word [bp - 6], ax
    cmp ax, strict word 0
    jl short .return1
    cmp ax, 0x36c
    jl short .forward1
.return1:
    ret
.forward1:
    mov cx, 3
    cwd
    idiv cx
    mov word [bp - 8], ax
    mov word [bp - 2], 0
.back1:
    mov ax, word [bp - 2]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov word [bx - 0x14], 0xff01
    inc word [bp - 2]
    mov ax, word [bp - 2]
    cmp ax, strict word 4
    jl short .back1
    cmp word [bp - 8], byte 0x68
    jg short .forward2
    mov ax, 0x58
    sub ax, word [bp - 8]
    mov word [bp - 0x12], ax
.forward2:
    cmp word [bp - 8], byte 0x3a
    jl short .forward3
    cmp word [bp - 8], strict word 0xfa
    jg short .forward3
    mov ax, 0xb0
    mov cx, word [bp - 8]
    add cx, byte -58
    sub ax, cx
    mov word [bp - 0x14], ax
.forward3:
    cmp word [bp - 8], strict word 0xcc
    jl short .forward4
    cmp word [bp - 8], strict word 0x124
    jg short .forward4
    mov ax, 0xb0
    mov cx, word [bp - 8]
    add cx, strict word 0xff34
    sub ax, cx
    mov word [bp - 0xe], ax
.forward4:
    mov ax, word [party_tag]
    shl ax, 1
    mov bx, ax
    add bx, bp
    cmp word [bx - 0x14], strict word 0xff01
    jne short .forward5
    ret
.forward5:
    cmp word [bp - 6], strict word 0x10e
    jge short .forward6
    mov ax, word [bp - 6]
    mov cx, 0xa
    cwd
    idiv cx
    add ax, strict word 5
    mov word [bp - 0xc], ax
    jmp short .forward10
.forward6:
    mov ax, word [bp - 6]
    cmp ax, 0x276
    jl short .forward7
    add ax, 0xfd8a
    mov cx, 9
    cwd
    idiv cx
    mov cx, ax
    mov ax, 0x20
    sub ax, cx
    mov word [bp - 0xc], ax
    jmp short .forward10
.forward7:
    mov ax, word [bp - 6]
    add ax, 0xfef2
    mov cx, 0xb4
    cwd
    idiv cx
    mov ax, dx
    mov cx, 0x24
    cwd
    idiv cx
    mov word [bp - 0xa], ax
    mov ax, word [bp - 6]
    add ax, 0xfef2
    mov cx, 0xb4
    cwd
    idiv cx
    test ax, ax
    je short .forward8
    mov ax, 0x24
    sub ax, word [bp - 0xa]
    jmp short .forward9
.forward8:
    mov ax, word [bp - 0xa]
    add ax, strict word 0x20
.forward9:
    mov word [bp - 0xc], ax
.forward10:
    mov byte [bp - 0x1e], 6
    mov byte [bp - 0x1d], 0
    mov ax, 0
    push ax
    push ax
    lea ax, word [bp - 0x1e]
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
    sub ax, word [bp - 0xc]
    push ax
    mov ax, word [bx - 0x14]
    add ax, strict word 0x48
    push ax
    mov ax, 6
    push ax
    call gfx_draw_text
    add sp, byte 0x16
    ret
