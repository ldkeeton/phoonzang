; auto-generated
; asm only
aztec_lud:
    test bx, bx ; unsigned long divide	(primary = primary/secondary) / fall thru into common divide routine if not ...
    jne short @..aztec_lud.hardldv
    cmp cx, dx
    ja short @..aztec_lud.veryeasy
    push ax
    mov ax, dx
    sub dx, dx
    div cx
    mov bx, ax ; save high word of quotient
    pop ax
    div cx
    mov cx, dx ; save remainder
    mov dx, bx
    sub bx, bx
    ret
@..aztec_lud.veryeasy:
    div cx
    mov cx, dx ; save remainder
    mov dx, bx ; bx is already zero if we are here
    ret
@..aztec_lud.hardldv:
    push di
    push si
    mov si, cx ; copy divisor (bx,cx) into (di,si)
    mov di, bx
    push dx ; save dividend for remainder calculation
    push ax
    test bh, bh
    je short @..aztec_lud.shiftit
    mov cl, ch ; shift bx,cx right 8 bits
    mov ch, bl
    mov bl, bh
    mov al, ah ; shift dx,ax right 8 bits
    mov ah, dl
    mov dl, dh
    sub dh, dh
@..aztec_lud.shiftit:
    shr dx, 1
    rcr ax, 1
    shr bl, 1
    rcr cx, 1
    test bl, bl
    jne short @..aztec_lud.shiftit
    div cx ; guess at quotient (may off by 1)
    mov cx, ax
    mul si ; compute remainder = dividend - divisor*quotient
    mov bx, dx
    push ax ; save low half
    mov ax, cx
    mul di
    add bx, ax
    jae short @..aztec_lud.normal_path
    dec cx
    pop ax ; delete top element off the stack
    mov ax, cx
    mul di
    mov bx, ax ; save the answer into bx
    mov ax, cx
    mul si
    add bx, dx
    mov es, cx ; es now contains the answer of the divide
    mov cx, ax
    pop ax ; bx:cx now contains  result * quotient
    pop dx
    sub cx, ax
    sbb bx, dx
    not cx
    not bx
    add cx, byte 1
    adc bx, byte 0
    mov ax, es
    jmp near @..aztec_lud.answer_ok
@..aztec_lud.normal_path:
    mov dx, bx ; high half
    mov ax, cx ; restore quotient to ax for return
    pop bx ; low half of divisor*quotient
    pop cx ; low half of dividend
    sub cx, bx
    pop bx ; high half of dividend
    sbb bx, dx
    jae short @..aztec_lud.answer_ok ; if we get a borrow, answer was too big
    add cx, si ; so adjust the remainder
    adc bx, di
    dec ax ; and the quotient
@..aztec_lud.answer_ok:
    sub dx, dx
    pop si
    pop di
    ret
