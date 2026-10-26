; auto-generated
draw_party_slot_letters:
    mov ax, 0xfff4
    call aztec_csav
    mov word [bp - 2], 0
.back1:
    mov ax, 0x14
    imul word [bp - 2]
    mov cx, word [bp - 2]
    shl cx, 1
    mov bx, cx
    mov cx, word [bx + party_slot_frame]
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov al, byte [bx + party_slot_glyphs]
    mov byte [bp - 0xc], al
    mov byte [bp - 0xb], 0
    mov ax, 0
    push ax
    push ax
    lea ax, word [bp - 0xc]
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
    imul word [bp + 8]
    mov cx, word [bp - 2]
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov ax, word [bx + party_slot_y]
    add ax, word [bp + 6]
    push ax
    mov ax, word [bx + party_slot_x]
    add ax, word [bp + 4]
    push ax
    mov ax, 2
    push ax
    call gfx_draw_text
    add sp, byte 0x16
    inc word [bp - 2]
    mov ax, word [bp - 2]
    cmp ax, strict word 6
    jl short .back1
    ret
