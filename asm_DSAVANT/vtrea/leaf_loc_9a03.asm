leaf_loc_9a03:
    pop bx                           ; 0x9a03
    push di                          ; 0x9a04
    push es                          ; 0x9a05
    mov di, cs                       ; 0x9a06
    mov es, di                       ; 0x9a08
    mov di, bx                       ; 0x9a0a
    mov bx, cx                       ; 0x9a0c
    shl bx, 1                        ; 0x9a0e
    cld                              ; 0x9a10
    repne scasw                      ; 0x9a11
    mov cx, word [es:bx + di - 0x0004] ; 0x9a13
    pop es                           ; 0x9a17
    pop di                           ; 0x9a18
    jmp cx                           ; 0x9a19

    db '!%&]@#~', 0
    db 0x20, 0x00
    db 'V1.$$$', 0
    db 'V2.$$$', 0
    times 11 db 0
    db '--------', 0
    db '????????', 0
    db 'V.$$$', 0
    db 0x28, 0x00, 0x25, 0x29, 0x00, 0x28, 0x00, 0x29, 0x00
    db 'V.$$$', 0
    db 0x00
    db 'V.$$$', 0
    db 0x28, 0x00, 0x25, 0x29, 0x00
    db 'V.$$$', 0
    db 'V.$$$', 0
    db 'V.$$$', 0
    db 0x2a, 0x2a, 0x2a, 0x00
    db 'V.$$$', 0
    times 10 db 0

