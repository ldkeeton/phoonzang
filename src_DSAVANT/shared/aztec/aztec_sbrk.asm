; auto-generated
aztec_sbrk:
    push bp
    mov bp, sp
    push di
    mov ax, word [bp + 4]
    mov di, word [aztec_MEMRY]
    test ax, ax
    jge short .forward1
    sub di, ax
    jb short .forward3
    jmp short .forward2
.forward1:
    add ax, di
    jb short .forward3
.forward2:
    push ax
    call aztec_brk
    pop cx
    test ax, ax
    jne short .back1
    mov ax, di
.back1:
    pop di
    test ax, ax
    pop bp
    ret
.forward3:
    mov word [errno], 0xfff8
    mov ax, 0xffff
    jmp short .back1
