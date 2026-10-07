strlen:
    push bp
    mov bp, sp
    cld
    push es
    push di
    mov ax, ds
    mov es, ax
    cld
    mov di, word [bp + 0x4]
    mov bx, di
    mov al, 0
    mov cx, 0xffff
    repne scasb
    mov cx, di
    sub cx, bx
    dec cx
    mov di, bx
    mov al, byte [bp + 0x6]
    repne scasb
    dec di
    cmp al, byte [es:di]
    jne short @..strlen.l1
    mov ax, di
    sub ax, bx
    jmp near @..strlen.l2
@..strlen.l1:
    mov ax, 0xffff
@..strlen.l2:
    pop di
    pop es
    mov sp, bp
    pop bp
    ret
