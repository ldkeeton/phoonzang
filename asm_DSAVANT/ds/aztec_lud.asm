aztec_lud:
    test bx, bx                      ; 0x4c40
    jne short @..aztec_lud.l2        ; 0x4c42
    cmp cx, dx                       ; 0x4c44
    ja short @..aztec_lud.l1         ; 0x4c46
    push ax                          ; 0x4c48
    mov ax, dx                       ; 0x4c49
    sub dx, dx                       ; 0x4c4b
    div cx                           ; 0x4c4d
    mov bx, ax                       ; 0x4c4f
    pop ax                           ; 0x4c51
    div cx                           ; 0x4c52
    mov cx, dx                       ; 0x4c54
    mov dx, bx                       ; 0x4c56
    sub bx, bx                       ; 0x4c58
    ret                              ; 0x4c5a
@..aztec_lud.l1:
    div cx                           ; 0x4c5b
    mov cx, dx                       ; 0x4c5d
    mov dx, bx                       ; 0x4c5f
    ret                              ; 0x4c61
@..aztec_lud.l2:
    push di                          ; 0x4c62
    push si                          ; 0x4c63
    mov si, cx                       ; 0x4c64
    mov di, bx                       ; 0x4c66
    push dx                          ; 0x4c68
    push ax                          ; 0x4c69
    test bh, bh                      ; 0x4c6a
    je short @..aztec_lud.l3         ; 0x4c6c
    mov cl, ch                       ; 0x4c6e
    mov ch, bl                       ; 0x4c70
    mov bl, bh                       ; 0x4c72
    mov al, ah                       ; 0x4c74
    mov ah, dl                       ; 0x4c76
    mov dl, dh                       ; 0x4c78
    sub dh, dh                       ; 0x4c7a
@..aztec_lud.l3:
    shr dx, 1                        ; 0x4c7c
    rcr ax, 1                        ; 0x4c7e
    shr bl, 1                        ; 0x4c80
    rcr cx, 1                        ; 0x4c82
    test bl, bl                      ; 0x4c84
    jne short @..aztec_lud.l3        ; 0x4c86
    div cx                           ; 0x4c88
    mov cx, ax                       ; 0x4c8a
    mul si                           ; 0x4c8c
    mov bx, dx                       ; 0x4c8e
    push ax                          ; 0x4c90
    mov ax, cx                       ; 0x4c91
    mul di                           ; 0x4c93
    add bx, ax                       ; 0x4c95
    jae short @..aztec_lud.l4        ; 0x4c97
    dec cx                           ; 0x4c99
    pop ax                           ; 0x4c9a
    mov ax, cx                       ; 0x4c9b
    mul di                           ; 0x4c9d
    mov bx, ax                       ; 0x4c9f
    mov ax, cx                       ; 0x4ca1
    mul si                           ; 0x4ca3
    add bx, dx                       ; 0x4ca5
    mov es, cx                       ; 0x4ca7
    mov cx, ax                       ; 0x4ca9
    pop ax                           ; 0x4cab
    pop dx                           ; 0x4cac
    sub cx, ax                       ; 0x4cad
    sbb bx, dx                       ; 0x4caf
    not cx                           ; 0x4cb1
    not bx                           ; 0x4cb3
    add cx, byte 1                   ; 0x4cb5
    adc bx, byte 0                   ; 0x4cb8
    mov ax, es                       ; 0x4cbb
    jmp near @..aztec_lud.l5         ; 0x4cbd
@..aztec_lud.l4:
    mov dx, bx                       ; 0x4cc0
    mov ax, cx                       ; 0x4cc2
    pop bx                           ; 0x4cc4
    pop cx                           ; 0x4cc5
    sub cx, bx                       ; 0x4cc6
    pop bx                           ; 0x4cc8
    sbb bx, dx                       ; 0x4cc9
    jae short @..aztec_lud.l5        ; 0x4ccb
    add cx, si                       ; 0x4ccd
    adc bx, di                       ; 0x4ccf
    dec ax                           ; 0x4cd1
@..aztec_lud.l5:
    sub dx, dx                       ; 0x4cd2
    pop si                           ; 0x4cd4
    pop di                           ; 0x4cd5
    ret                              ; 0x4cd6
