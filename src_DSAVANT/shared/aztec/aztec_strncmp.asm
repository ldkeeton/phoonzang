; auto-generated
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
    jne short loc_OSRT
    test al, al
    je short loc_PGTO
    test ah, ah
    loopne .back1
    je short loc_PGTO
.forward1:
    test dl, 1
    je short loc_PGTO
    cmpsb
    jne short aztec_strncmp.loc1
loc_PGTO:
    sub ax, ax
loc_QKLS:
    pop di
    pop si
    pop bp
    ret
loc_OSRT:
    sub di, byte 2
    scasb
    jne short aztec_strncmp.loc1
    test al, al
    je short loc_PGTO
    mov al, ah
    scasb
aztec_strncmp.loc1:
    sbb ax, ax
    js short loc_QKLS
    inc ax
    jmp short loc_QKLS
