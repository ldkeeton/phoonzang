io_loc_2e7d:
    mov dx, 0x3c4                    ; 0x2e7d
    mov al, 2                        ; 0x2e80
    out dx, al                       ; 0x2e82
    inc dx                           ; 0x2e83
    mov al, ah                       ; 0x2e84
    out dx, al                       ; 0x2e86
    add si, word [cs:data_1bd7]      ; 0x2e87
    mov di, word [cs:data_1bf7]      ; 0x2e8c
    mov bx, 0x2a02                   ; 0x2e91
    mov cx, word [cs:data_1bf5]      ; 0x2e94
    mov dx, 0x3ce                    ; 0x2e99
    mov al, 8                        ; 0x2e9c
    out dx, al                       ; 0x2e9e
    inc dx                           ; 0x2e9f
    db 0x2e, 0x83, 0x3e, 0xf9, 0x1b, 0x00 ; cmp word [cs:data_1bf9], 0
    je short @..io_loc_2e7d.l1       ; 0x2ea6
    jmp short @..io_loc_2e7d.l3      ; 0x2ea8
@..io_loc_2e7d.l1:
    push cx                          ; 0x2eaa
    push di                          ; 0x2eab
    push si                          ; 0x2eac
    push bx                          ; 0x2ead
    mov cx, word [cs:data_1bf1]      ; 0x2eae
@..io_loc_2e7d.l2:
    mov al, byte [bx]                ; 0x2eb3
    not al                           ; 0x2eb5
    out dx, al                       ; 0x2eb7
    mov al, byte [cs:si]             ; 0x2eb8
    mov ah, byte [es:di]             ; 0x2ebb
    mov byte [es:di], al             ; 0x2ebe
    inc si                           ; 0x2ec1
    inc bx                           ; 0x2ec2
    inc di                           ; 0x2ec3
    loop @..io_loc_2e7d.l2           ; 0x2ec4
    pop bx                           ; 0x2ec6
    add bx, word [cs:data_258f]      ; 0x2ec7
    pop si                           ; 0x2ecc
    add si, word [cs:data_1bf3]      ; 0x2ecd
    pop di                           ; 0x2ed2
    add di, byte 0x50                ; 0x2ed3
    pop cx                           ; 0x2ed6
    loop @..io_loc_2e7d.l1           ; 0x2ed7
    ret                              ; 0x2ed9
