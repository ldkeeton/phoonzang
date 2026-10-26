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
    jl short @..draw_clock_marker_glyph.l1
    cmp ax, 0x36c
    jl short @..draw_clock_marker_glyph.l2
@..draw_clock_marker_glyph.l1:
    ret
@..draw_clock_marker_glyph.l2:
    mov cx, 3
    cwd
    idiv cx
    mov word [bp - 8], ax
    mov word [bp - 2], 0
@..draw_clock_marker_glyph.l3:
    mov ax, word [bp - 2]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov word [bx - 0x14], 0xff01
    inc word [bp - 2]
    mov ax, word [bp - 2]
    cmp ax, strict word 4
    jl short @..draw_clock_marker_glyph.l3
    cmp word [bp - 8], byte 0x68
    jg short @..draw_clock_marker_glyph.l4
    mov ax, 0x58
    sub ax, word [bp - 8]
    mov word [bp - 0x12], ax
@..draw_clock_marker_glyph.l4:
    cmp word [bp - 8], byte 0x3a
    jl short @..draw_clock_marker_glyph.l5
    cmp word [bp - 8], strict word 0xfa
    jg short @..draw_clock_marker_glyph.l5
    mov ax, 0xb0
    mov cx, word [bp - 8]
    add cx, byte 0xc6
    sub ax, cx
    mov word [bp - 0x14], ax
@..draw_clock_marker_glyph.l5:
    cmp word [bp - 8], strict word 0xcc
    jl short @..draw_clock_marker_glyph.l6
    cmp word [bp - 8], strict word 0x124
    jg short @..draw_clock_marker_glyph.l6
    mov ax, 0xb0
    mov cx, word [bp - 8]
    add cx, strict word 0xff34
    sub ax, cx
    mov word [bp - 0xe], ax
@..draw_clock_marker_glyph.l6:
    mov ax, word [party_tag]
    shl ax, 1
    mov bx, ax
    add bx, bp
    cmp word [bx - 0x14], strict word 0xff01
    jne short @..draw_clock_marker_glyph.l7
    ret
@..draw_clock_marker_glyph.l7:
    cmp word [bp - 6], strict word 0x10e
    jge short @..draw_clock_marker_glyph.l8
    mov ax, word [bp - 6]
    mov cx, 0xa
    cwd
    idiv cx
    add ax, strict word 5
    mov word [bp - 0xc], ax
    jmp short @..draw_clock_marker_glyph.l12
@..draw_clock_marker_glyph.l8:
    mov ax, word [bp - 6]
    cmp ax, 0x276
    jl short @..draw_clock_marker_glyph.l9
    add ax, 0xfd8a
    mov cx, 9
    cwd
    idiv cx
    mov cx, ax
    mov ax, 0x20
    sub ax, cx
    mov word [bp - 0xc], ax
    jmp short @..draw_clock_marker_glyph.l12
@..draw_clock_marker_glyph.l9:
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
    je short @..draw_clock_marker_glyph.l10
    mov ax, 0x24
    sub ax, word [bp - 0xa]
    jmp short @..draw_clock_marker_glyph.l11
@..draw_clock_marker_glyph.l10:
    mov ax, word [bp - 0xa]
    add ax, strict word 0x20
@..draw_clock_marker_glyph.l11:
    mov word [bp - 0xc], ax
@..draw_clock_marker_glyph.l12:
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
