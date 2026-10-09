    test bx, bx                      ; 0x3471
    jne short loc_3493               ; 0x3473
    db 0x3b, 0xca ; cmp cx, dx
    ja short loc_348c                ; 0x3477
    push ax                          ; 0x3479
    db 0x8b, 0xc2 ; mov ax, dx
    db 0x2b, 0xd2 ; sub dx, dx
    div cx                           ; 0x347e
    db 0x8b, 0xd8 ; mov bx, ax
    pop ax                           ; 0x3482
    div cx                           ; 0x3483
    db 0x8b, 0xca ; mov cx, dx
    db 0x8b, 0xd3 ; mov dx, bx
    db 0x2b, 0xdb ; sub bx, bx
    ret                              ; 0x348b
