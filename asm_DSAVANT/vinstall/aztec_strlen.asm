aztec_strlen:
    push bp                          ; 0x356f
    mov bp, sp                       ; 0x3570
    cld                              ; 0x3572
    push di                          ; 0x3573
    mov di, ds                       ; 0x3574
    mov es, di                       ; 0x3576
    mov di, word [bp + 0x4]          ; 0x3578
    mov bx, di                       ; 0x357b
    sub ax, ax                       ; 0x357d
    mov cx, 0x7fff                   ; 0x357f
    repne scasb                      ; 0x3582
    mov ax, di                       ; 0x3584
    sub ax, bx                       ; 0x3586
    dec ax                           ; 0x3588
    pop di                           ; 0x3589
    pop bp                           ; 0x358a
    ret                              ; 0x358b
