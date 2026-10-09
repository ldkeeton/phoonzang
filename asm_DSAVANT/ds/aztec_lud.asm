    test bx, bx                      ; 0x4c40
    jne short loc_4c62               ; 0x4c42
    db 0x3b, 0xca ; cmp cx, dx
    ja short loc_4c5b                ; 0x4c46
    push ax                          ; 0x4c48
    db 0x8b, 0xc2 ; mov ax, dx
    db 0x2b, 0xd2 ; sub dx, dx
    div cx                           ; 0x4c4d
    db 0x8b, 0xd8 ; mov bx, ax
    pop ax                           ; 0x4c51
    div cx                           ; 0x4c52
    db 0x8b, 0xca ; mov cx, dx
    db 0x8b, 0xd3 ; mov dx, bx
    db 0x2b, 0xdb ; sub bx, bx
    ret                              ; 0x4c5a
