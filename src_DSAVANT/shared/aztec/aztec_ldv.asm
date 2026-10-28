; auto-generated
aztec_ldv:
    push di
    sub di, di
    test dx, dx
    jns short .forward1
    neg dx
    neg ax
    sbb dx, byte 0
    inc di
.forward1:
    test bx, bx
    jns short .forward2
    neg bx
    neg cx
    sbb bx, byte 0
    xor di, 1
.forward2:
    call aztec_lud
aztec_ldv.loc1:
    test di, di
    je short aztec_ldv.loc2
    neg dx
    neg ax
    sbb dx, byte 0
aztec_ldv.loc2:
    pop di
    ret
aztec_lrm:
    push di
    mov di, 0
    test dx, dx
    jns short .forward1
    neg dx
    neg ax
    sbb dx, byte 0
    inc di
.forward1:
    test bx, bx
    jns short .forward2
    neg bx
    neg cx
    sbb bx, byte 0
.forward2:
    call aztec_lud
    mov ax, cx
    mov dx, bx
    jmp short aztec_ldv.loc1
aztec_lum:
    call aztec_lud
    mov ax, cx
    mov dx, bx
    ret
aztec_lud:
    test bx, bx
    jne short .forward2
    cmp cx, dx
    ja short .forward1
    push ax
    mov ax, dx
    sub dx, dx
    div cx
    mov bx, ax
    pop ax
    div cx
    mov cx, dx
    mov dx, bx
    sub bx, bx
    ret
.forward1:
    div cx
    mov cx, dx
    mov dx, bx
    ret
.forward2:
    push di
    push si
    mov si, cx
    mov di, bx
    push dx
    push ax
    test bh, bh
    je short .back1
    mov cl, ch
    mov ch, bl
    mov bl, bh
    mov al, ah
    mov ah, dl
    mov dl, dh
    sub dh, dh
.back1:
    shr dx, 1
    rcr ax, 1
    shr bl, 1
    rcr cx, 1
    test bl, bl
    jne short .back1
    div cx
    mov cx, ax
    mul si
    mov bx, dx
    push ax
    mov ax, cx
    mul di
    add bx, ax
    jae short .forward3
    dec cx
    pop ax
    mov ax, cx
    mul di
    mov bx, ax
    mov ax, cx
    mul si
    add bx, dx
    mov es, cx
    mov cx, ax
    pop ax
    pop dx
    sub cx, ax
    sbb bx, dx
    not cx
    not bx
    add cx, byte 1
    adc bx, byte 0
    mov ax, es
    jmp near .forward4
.forward3:
    mov dx, bx
    mov ax, cx
    pop bx
    pop cx
    sub cx, bx
    pop bx
    sbb bx, dx
    jae short .forward4
    add cx, si
    adc bx, di
    dec ax
.forward4:
    sub dx, dx
    pop si
    pop di
    ret
