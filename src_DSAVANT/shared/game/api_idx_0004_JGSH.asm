; auto-generated
api_idx_0004_JGSH:
    mov ax, 0xfffc
    call aztec_csav
    cmp word [api_idx_0004_JGSH.bss1], byte 3
    jle short @..api_idx_0004_JGSH.l1
    mov ax, 0
    push ax
    call api_idx_0004_JGSH.loc1
    pop cx
@..api_idx_0004_JGSH.l1:
    mov bx, word [bp + 0x4]
    cmp byte [bx], 0
    jne short @..api_idx_0004_JGSH.l2
    inc word [api_idx_0004_JGSH.bss1]
    ret
@..api_idx_0004_JGSH.l2:
    mov ax, 2
    push ax
    push bx
    call measure_text_width
    add sp, byte 4
    inc ax
    mov cx, 2
    cwd
    idiv cx
    mov cx, ax
    mov ax, 0xa0
    sub ax, cx
    mov word [bp - 0x0002], ax
    push word [bp + 0x4]
    call aztec_strlen
    pop cx
    dec ax
    mov word [bp - 0x0004], ax
    mov bx, word [bp + 0x4]
    mov si, ax
    mov al, byte [bx + si]
    sub ah, ah
    jmp short @..api_idx_0004_JGSH.l5
@..api_idx_0004_JGSH.l3:
    mov bx, word [bp + 0x4]
    mov si, word [bp - 0x0004]
    mov byte [bx + si], 0
    mov word [bp - 0x0002], 0x44
    jmp short @..api_idx_0004_JGSH.l6
@..api_idx_0004_JGSH.l4:
    mov bx, word [bp + 0x4]
    mov si, word [bp - 0x0004]
    mov byte [bx + si], 0
    mov ax, word [api_idx_0004_JGSH.bss2]
    mov word [bp - 0x0002], ax
    jmp short @..api_idx_0004_JGSH.l6
@..api_idx_0004_JGSH.l5:
    cmp ax, strict word 0x24
    je short @..api_idx_0004_JGSH.l3
    cmp ax, strict word 0x5e
    je short @..api_idx_0004_JGSH.l4
@..api_idx_0004_JGSH.l6:
    mov ax, 0xc
    imul word [api_idx_0004_JGSH.bss1]
    add ax, 0x92
    push ax
    push word [bp - 0x0002]
    call gfx_set_text_pos
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x55
    push ax
    call gfx_set_text_color
    add sp, byte 4
    mov ax, 2
    push ax
    push word [bp + 0x4]
    call draw_text_glyphs
    add sp, byte 4
    mov bx, word [bp + 0x4]
    mov byte [bx], 0
    mov ax, word [bp - 0x0002]
    mov word [api_idx_0004_JGSH.bss2], ax
    inc word [api_idx_0004_JGSH.bss1]
    ret
