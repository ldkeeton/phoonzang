; auto-generated
aztec_brk:
    push bp
    mov bp, sp
    mov ax, word [bp + 4]
    inc ax
    and al, 0xfe
    cmp ax, word [_mbot]
    jb short .forward3
    cmp word [_STKLOW], byte 0
    jne short .forward1
    mov bx, sp
    sub bx, word [_STKRED]
    cmp ax, bx
    jae short .forward3
    mov word [aztec_MEMRY], ax
    add ax, word [_STKRED]
    mov word [_sbot], ax
.back1:
    sub ax, ax
    pop bp
    ret
.forward1:
    cmp ax, word [_mtop]
    ja short .forward2
    cmp ax, word [aztec_MEMRY]
    jb short .forward2
    mov word [aztec_MEMRY], ax
    jmp short .back1
.forward2:
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
    jb short .forward3
    mov word [aztec_MEMRY], ax
    test bx, 0xe000
    jne short .forward3
    mov cx, 4
    shl bx, cl
    mov word [_mtop], bx
    sub ax, ax
    pop bp
    ret
.forward3:
    mov word [errno], 0xfff8
    mov ax, 0xffff
    test ax, ax
    pop bp
    ret
