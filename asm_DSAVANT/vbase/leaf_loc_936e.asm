; auto-generated
leaf_loc_936e:
    pop bx                           ; 0x936e
    push di                          ; 0x936f
    push es                          ; 0x9370
    mov di, cs                       ; 0x9371
    mov es, di                       ; 0x9373
    mov di, bx                       ; 0x9375
    mov bx, cx                       ; 0x9377
    shl bx, 1                        ; 0x9379
    cld                              ; 0x937b
    repne scasw                      ; 0x937c
    mov cx, word [es:bx + di - 0x0004] ; 0x937e
    pop es                           ; 0x9382
    pop di                           ; 0x9383
    jmp cx                           ; 0x9384
