; auto-generated
aztec_ldv:
    push di
    sub di, di
    test dx, dx
    jns short aztec_lsubs.prim_ok
    neg dx
    neg ax
    sbb dx, byte 0
    inc di
aztec_lsubs.prim_ok:
    test bx, bx
    jns short aztec_lsubs.sec_ok
    neg bx
    neg cx
    sbb bx, byte 0
    xor di, 1
aztec_lsubs.sec_ok:
    call aztec_lud
aztec_lsubs.chksign:
    test di, di
    je short aztec_lsubs.posres
    neg dx
    neg ax
    sbb dx, byte 0
aztec_lsubs.posres:
    pop di
    ret
aztec_lrm:
    push di
    mov di, 0
    test dx, dx
    jns short aztec_lsubs.rprim_ok
    neg dx
    neg ax
    sbb dx, byte 0
    inc di
aztec_lsubs.rprim_ok:
    test bx, bx
    jns short aztec_lsubs.rsec_ok
    neg bx
    neg cx
    sbb bx, byte 0
aztec_lsubs.rsec_ok:
    call aztec_lud
    mov ax, cx
    mov dx, bx
    jmp short aztec_lsubs.chksign
aztec_lum:
    call aztec_lud
    mov ax, cx
    mov dx, bx
    ret
aztec_lud:
    test bx, bx
    jne short aztec_lsubs.hardldv
    cmp cx, dx
    ja short aztec_lsubs.veryeasy
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
aztec_lsubs.veryeasy:
    div cx
    mov cx, dx
    mov dx, bx
    ret
aztec_lsubs.hardldv:
    push di
    push si
    mov si, cx
    mov di, bx
    push dx
    push ax
    test bh, bh
    je short aztec_lsubs.shiftit
    mov cl, ch
    mov ch, bl
    mov bl, bh
    mov al, ah
    mov ah, dl
    mov dl, dh
    sub dh, dh
aztec_lsubs.shiftit:
    shr dx, 1
    rcr ax, 1
    shr bl, 1
    rcr cx, 1
    test bl, bl
    jne short aztec_lsubs.shiftit
    div cx
    mov cx, ax
    mul si
    mov bx, dx
    push ax
    mov ax, cx
    mul di
    add bx, ax
    jae short aztec_lsubs.normal_path
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
    jmp near aztec_lsubs.answer_ok
aztec_lsubs.normal_path:
    mov dx, bx
    mov ax, cx
    pop bx
    pop cx
    sub cx, bx
    pop bx
    sbb bx, dx
    jae short aztec_lsubs.answer_ok
    add cx, si
    adc bx, di
    dec ax
aztec_lsubs.answer_ok:
    sub dx, dx
    pop si
    pop di
    ret
