strlen:
    push bp
    mov bp, sp
    mov dx, 0x7fff
    jmp short @..strlen.l1
    push bp
    mov bp, sp
    mov dx, word [bp + 0x8]
@..strlen.l1:
    cld
    push si
    push di
    mov di, ds
    mov es, di
    mov di, word [bp + 0x4]
    sub ax, ax
    mov cx, 0x7fff
    repne scasb
    dec di
    mov si, word [bp + 0x6]
    mov cx, dx
@..strlen.l2:
    lodsb
    stosb
    test al, al
    loopne @..strlen.l2
    je short @..strlen.l3
    sub al, al
    stosb
@..strlen.l3:
    pop di
    pop si
    mov ax, word [bp + 0x4]
    pop bp
    ret
