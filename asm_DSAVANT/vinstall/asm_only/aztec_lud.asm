; auto-generated
; asm only
aztec_lud:
    test bx, bx ; unsigned long divide	(primary = primary/secondary) / fall thru into common divide routine if not ... ; 0x3471
    jne short @..aztec_lud.hardldv   ; 0x3473
    cmp cx, dx                       ; 0x3475
    ja short @..aztec_lud.veryeasy   ; 0x3477
    push ax                          ; 0x3479
    mov ax, dx                       ; 0x347a
    sub dx, dx                       ; 0x347c
    div cx                           ; 0x347e
    mov bx, ax ; save high word of quotient ; 0x3480
    pop ax                           ; 0x3482
    div cx                           ; 0x3483
    mov cx, dx ; save remainder ; 0x3485
    mov dx, bx                       ; 0x3487
    sub bx, bx                       ; 0x3489
    ret                              ; 0x348b
@..aztec_lud.veryeasy:
    div cx                           ; 0x348c
    mov cx, dx ; save remainder ; 0x348e
    mov dx, bx ; bx is already zero if we are here ; 0x3490
    ret                              ; 0x3492
@..aztec_lud.hardldv:
    push di                          ; 0x3493
    push si                          ; 0x3494
    mov si, cx ; copy divisor (bx,cx) into (di,si) ; 0x3495
    mov di, bx                       ; 0x3497
    push dx ; save dividend for remainder calculation ; 0x3499
    push ax                          ; 0x349a
    test bh, bh                      ; 0x349b
    je short @..aztec_lud.shiftit    ; 0x349d
    mov cl, ch ; shift bx,cx right 8 bits ; 0x349f
    mov ch, bl                       ; 0x34a1
    mov bl, bh                       ; 0x34a3
    mov al, ah ; shift dx,ax right 8 bits ; 0x34a5
    mov ah, dl                       ; 0x34a7
    mov dl, dh                       ; 0x34a9
    sub dh, dh                       ; 0x34ab
@..aztec_lud.shiftit:
    shr dx, 1                        ; 0x34ad
    rcr ax, 1                        ; 0x34af
    shr bl, 1                        ; 0x34b1
    rcr cx, 1                        ; 0x34b3
    test bl, bl                      ; 0x34b5
    jne short @..aztec_lud.shiftit   ; 0x34b7
    div cx ; guess at quotient (may off by 1) ; 0x34b9
    mov cx, ax                       ; 0x34bb
    mul si ; compute remainder = dividend - divisor*quotient ; 0x34bd
    mov bx, dx                       ; 0x34bf
    push ax ; save low half ; 0x34c1
    mov ax, cx                       ; 0x34c2
    mul di                           ; 0x34c4
    add bx, ax                       ; 0x34c6
    jae short @..aztec_lud.normal_path ; 0x34c8
    dec cx                           ; 0x34ca
    pop ax ; delete top element off the stack ; 0x34cb
    mov ax, cx                       ; 0x34cc
    mul di                           ; 0x34ce
    mov bx, ax ; save the answer into bx ; 0x34d0
    mov ax, cx                       ; 0x34d2
    mul si                           ; 0x34d4
    add bx, dx                       ; 0x34d6
    mov es, cx ; es now contains the answer of the divide ; 0x34d8
    mov cx, ax                       ; 0x34da
    pop ax ; bx:cx now contains  result * quotient ; 0x34dc
    pop dx                           ; 0x34dd
    sub cx, ax                       ; 0x34de
    sbb bx, dx                       ; 0x34e0
    not cx                           ; 0x34e2
    not bx                           ; 0x34e4
    add cx, byte 1                   ; 0x34e6
    adc bx, byte 0                   ; 0x34e9
    mov ax, es                       ; 0x34ec
    jmp near @..aztec_lud.answer_ok  ; 0x34ee
@..aztec_lud.normal_path:
    mov dx, bx ; high half ; 0x34f1
    mov ax, cx ; restore quotient to ax for return ; 0x34f3
    pop bx ; low half of divisor*quotient ; 0x34f5
    pop cx ; low half of dividend ; 0x34f6
    sub cx, bx                       ; 0x34f7
    pop bx ; high half of dividend ; 0x34f9
    sbb bx, dx                       ; 0x34fa
    jae short @..aztec_lud.answer_ok ; if we get a borrow, answer was too big ; 0x34fc
    add cx, si ; so adjust the remainder ; 0x34fe
    adc bx, di                       ; 0x3500
    dec ax ; and the quotient ; 0x3502
@..aztec_lud.answer_ok:
    sub dx, dx                       ; 0x3503
    pop si                           ; 0x3505
    pop di                           ; 0x3506
    ret                              ; 0x3507
