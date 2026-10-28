; auto-generated
api_idx_0004_JGSH:
    mov ax, 0xfffc
    call aztec_csav
    cmp word [api_idx_0004_JGSH.bss1], byte 3
    jle short .forward1
    mov ax, 0
    push ax
    call api_idx_0004_JGSH.loc1
    pop cx
.forward1:
    mov bx, word [bp + 4]
    cmp byte [bx], 0
    jne short .forward2
    inc word [api_idx_0004_JGSH.bss1]
    ret
.forward2:
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
    mov word [bp - 2], ax
    push word [bp + 4]
    call aztec_strlen
    pop cx
    dec ax
    mov word [bp - 4], ax
    mov bx, word [bp + 4]
    mov si, ax
    mov al, byte [bx + si]
    sub ah, ah
    jmp short .forward3
.back1:
    mov bx, word [bp + 4]
    mov si, word [bp - 4]
    mov byte [bx + si], 0
    mov word [bp - 2], 0x44
    jmp short .forward4
.back2:
    mov bx, word [bp + 4]
    mov si, word [bp - 4]
    mov byte [bx + si], 0
    mov ax, word [api_idx_0004_JGSH.bss2]
    mov word [bp - 2], ax
    jmp short .forward4
.forward3:
    cmp ax, strict word 0x24
    je short .back1
    cmp ax, strict word 0x5e
    je short .back2
.forward4:
    mov ax, 0xc
    imul word [api_idx_0004_JGSH.bss1]
    add ax, 0x92
    push ax
    push word [bp - 2]
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
    push word [bp + 4]
    call draw_text_glyphs
    add sp, byte 4
    mov bx, word [bp + 4]
    mov byte [bx], 0
    mov ax, word [bp - 2]
    mov word [api_idx_0004_JGSH.bss2], ax
    inc word [api_idx_0004_JGSH.bss1]
    ret
