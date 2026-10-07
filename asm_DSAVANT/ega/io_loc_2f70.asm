io_loc_2f70:
    mov dx, 0x3c4                    ; 0x2f70
    mov al, 2                        ; 0x2f73
    out dx, al                       ; 0x2f75
    inc dx                           ; 0x2f76
    mov al, ah                       ; 0x2f77
    out dx, al                       ; 0x2f79
    add si, strict word 0x2602       ; 0x2f7a
    mov cx, word [cs:data_1bf5]      ; 0x2f7e
    mov di, word [cs:data_1bf7]      ; 0x2f83
    mov bx, 0x2a02                   ; 0x2f88
    mov dx, 0x3ce                    ; 0x2f8b
    mov al, 8                        ; 0x2f8e
    out dx, al                       ; 0x2f90
    inc dx                           ; 0x2f91
    db 0x2e, 0x83, 0x3e, 0xf9, 0x1b, 0x00 ; cmp word [cs:data_1bf9], 0
    je short @..io_loc_2f70.l1       ; 0x2f98
    jmp short @..io_loc_2f70.l3      ; 0x2f9a
@..io_loc_2f70.l1:
    push cx                          ; 0x2f9c
    push di                          ; 0x2f9d
    push si                          ; 0x2f9e
    push bx                          ; 0x2f9f
    mov cx, word [cs:data_1bf1]      ; 0x2fa0
@..io_loc_2f70.l2:
    mov al, byte [bx]                ; 0x2fa5
    out dx, al                       ; 0x2fa7
    mov al, byte [si]                ; 0x2fa8
    mov ah, byte [es:di]             ; 0x2faa
    mov byte [es:di], al             ; 0x2fad
    inc si                           ; 0x2fb0
    inc bx                           ; 0x2fb1
    inc di                           ; 0x2fb2
    loop @..io_loc_2f70.l2           ; 0x2fb3
    pop bx                           ; 0x2fb5
    add bx, word [cs:data_258f]      ; 0x2fb6
    pop si                           ; 0x2fbb
    add si, word [cs:data_258f]      ; 0x2fbc
    pop di                           ; 0x2fc1
    add di, byte 0x50                ; 0x2fc2
    pop cx                           ; 0x2fc5
    loop @..io_loc_2f70.l1           ; 0x2fc6
    ret                              ; 0x2fc8
