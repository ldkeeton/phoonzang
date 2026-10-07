leaf_loc_a508:
    pop bx                           ; 0xa508
    push di                          ; 0xa509
    push es                          ; 0xa50a
    mov di, cs                       ; 0xa50b
    mov es, di                       ; 0xa50d
    mov di, bx                       ; 0xa50f
    mov bx, cx                       ; 0xa511
    shl bx, 1                        ; 0xa513
    cld                              ; 0xa515
    repne scasw                      ; 0xa516
    mov cx, word [es:bx + di - 0x0004] ; 0xa518
    pop es                           ; 0xa51c
    pop di                           ; 0xa51d
    jmp cx                           ; 0xa51e
