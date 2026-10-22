; auto-generated
aztec_sbrk:
    push bp
    mov bp, sp
    push di
    mov ax, word [bp + 0x4]
    mov di, word [aztec_MEMRY]
    test ax, ax
    jge short @..aztec_ssbrk.addok
    sub di, ax
    jb short @..aztec_ssbrk.invalid
    jmp short @..aztec_ssbrk.dobrk
@..aztec_ssbrk.addok:
    add ax, di
    jb short @..aztec_ssbrk.invalid
@..aztec_ssbrk.dobrk:
    push ax
    call aztec_brk
    pop cx
    test ax, ax
    jne short @..aztec_ssbrk.brk_error
    mov ax, di
@..aztec_ssbrk.brk_error:
    pop di
    test ax, ax
    pop bp
    ret
@..aztec_ssbrk.invalid:
    mov word [errno], 0xfff8
    mov ax, 0xffff
    jmp short @..aztec_ssbrk.brk_error
aztec_brk:
    push bp
    mov bp, sp
    mov ax, word [bp + 0x4]
    inc ax
    and al, 0xfe
    cmp ax, word [_mbot]
    jb short @..aztec_ssbrk.brk_ov
    cmp word [_STKLOW], byte 0
    jne short @..aztec_ssbrk.abovestk
    mov bx, sp
    sub bx, word [_STKRED]
    cmp ax, bx
    jae short @..aztec_ssbrk.brk_ov
    mov word [aztec_MEMRY], ax
    add ax, word [_STKRED]
    mov word [_sbot], ax
@..aztec_ssbrk.brk_ok2:
    sub ax, ax
    pop bp
    ret
@..aztec_ssbrk.abovestk:
    cmp ax, word [_mtop]
    ja short @..aztec_ssbrk.getstore
    cmp ax, word [aztec_MEMRY]
    jb short @..aztec_ssbrk.getstore
    mov word [aztec_MEMRY], ax
    jmp short @..aztec_ssbrk.brk_ok2
@..aztec_ssbrk.getstore:
    push ax
    mov bx, ax
    mov cx, 4
    shr bx, cl
    and bx, strict word 0xfff
    add bx, byte 0x41
    and bx, strict word 0xffc0
    push bx
    push es
    mov cx, ds
    add bx, cx
    mov es, word [_PSP]
    sub bx, word [_PSP]
    mov ah, 0x4a
    int 0x21 ; DOS resize memory block
    pop es
    pop bx
    pop ax
    jb short @..aztec_ssbrk.brk_ov
    mov word [aztec_MEMRY], ax
    test bx, 0xe000
    jne short @..aztec_ssbrk.brk_ov
    mov cx, 4
    shl bx, cl
    mov word [_mtop], bx
    sub ax, ax
    pop bp
    ret
@..aztec_ssbrk.brk_ov:
    mov word [errno], 0xfff8
    mov ax, 0xffff
    test ax, ax
    pop bp
    ret
aztec_rsvstk:
    push bp
    mov bp, sp
    mov ax, sp
    sub ax, word [bp + 0x4]
    mov word [_STKRED], ax
    pop bp
    ret
