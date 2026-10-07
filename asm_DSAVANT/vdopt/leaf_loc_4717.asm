leaf_loc_4717:
    pop bx                           ; 0x4717
    push di                          ; 0x4718
    push es                          ; 0x4719
    mov di, cs                       ; 0x471a
    mov es, di                       ; 0x471c
    mov di, bx                       ; 0x471e
    mov bx, cx                       ; 0x4720
    shl bx, 1                        ; 0x4722
    cld                              ; 0x4724
    repne scasw                      ; 0x4725
    mov cx, word [es:bx + di - 0x0004] ; 0x4727
    pop es                           ; 0x472b
    pop di                           ; 0x472c
    jmp cx                           ; 0x472d

    db 0x00, 0x00, 0x2a, 0x2a, 0x2a, 0x00
    db 'V.$$$', 0
    db 'V.$$$', 0
    times 12 db 0

