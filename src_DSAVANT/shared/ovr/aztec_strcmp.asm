; auto-generated
aztec_strcmp:
    push bp
    mov bp, sp
    cld
    push si
    push di
    mov si, word [bp + 4]
    mov di, ds
    mov es, di
    mov di, word [bp + 6]
.back1:
    lodsw
    scasw
    jne short .forward1
    test al, al
    je short .back2
    test ah, ah
    jne short .back1
    jmp short .back2
aztec_strncmp:
    push bp
    mov bp, sp
    mov cx, word [bp + 8]
    mov dx, cx
    shr cx, 1
    cld
    push si
    push di
    mov si, word [bp + 4]
    mov di, ds
    mov es, di
    mov di, word [bp + 6]
    jcxz .forward1
.back1:
    lodsw
    scasw
    jne short aztec_strcmp.forward1
    test al, al
    je short aztec_strcmp.back2
    test ah, ah
    loopne .back1
    je short aztec_strcmp.back2
.forward1:
    test dl, 1
    je short aztec_strcmp.back2
    cmpsb
    jne short aztec_strcmp.forward2
aztec_strcmp.back2:
    sub ax, ax
aztec_strcmp.back3:
    pop di
    pop si
    pop bp
    ret
aztec_strcmp.forward1:
    sub di, byte 2
    scasb
    jne short aztec_strcmp.forward2
    test al, al
    je short aztec_strcmp.back2
    mov al, ah
    scasb
aztec_strcmp.forward2:
    sbb ax, ax
    js short aztec_strcmp.back3
    inc ax
    jmp short aztec_strcmp.back3
