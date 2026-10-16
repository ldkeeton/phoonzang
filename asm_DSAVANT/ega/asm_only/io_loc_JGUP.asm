; auto-generated
; asm only
io_loc_JGUP:
    mov dx, 0x3c4                    ; 0x2e7d
    mov al, 2                        ; 0x2e80
    out dx, al                       ; 0x2e82
    inc dx                           ; 0x2e83
    mov al, ah                       ; 0x2e84
    out dx, al                       ; 0x2e86
    add si, word [cs:cseg_1ad7 - IMAGE_BASE] ; 0x2e87
    mov di, word [cs:cseg_1af7 - IMAGE_BASE] ; 0x2e8c
    mov bx, 0x2a02                   ; 0x2e91
    mov cx, word [cs:cseg_1af5 - IMAGE_BASE] ; 0x2e94
    mov dx, 0x3ce                    ; 0x2e99
    mov al, 8                        ; 0x2e9c
    out dx, al                       ; 0x2e9e
    inc dx                           ; 0x2e9f
    cmp word [cs:cseg_1af9 - IMAGE_BASE], byte 0 ; 0x2ea0
    je short @..io_loc_JGUP.l1       ; 0x2ea6
    jmp short @..io_loc_JGUP.l3      ; 0x2ea8
@..io_loc_JGUP.l1:
    push cx                          ; 0x2eaa
    push di                          ; 0x2eab
    push si                          ; 0x2eac
    push bx                          ; 0x2ead
    mov cx, word [cs:cseg_1af1 - IMAGE_BASE] ; 0x2eae
@..io_loc_JGUP.l2:
    mov al, byte [bx]                ; 0x2eb3
    not al                           ; 0x2eb5
    out dx, al                       ; 0x2eb7
    mov al, byte [cs:si]             ; 0x2eb8
    mov ah, byte [es:di]             ; 0x2ebb
    mov byte [es:di], al             ; 0x2ebe
    inc si                           ; 0x2ec1
    inc bx                           ; 0x2ec2
    inc di                           ; 0x2ec3
    loop @..io_loc_JGUP.l2           ; 0x2ec4
    pop bx                           ; 0x2ec6
    add bx, word [cs:cseg_248f - IMAGE_BASE] ; 0x2ec7
    pop si                           ; 0x2ecc
    add si, word [cs:cseg_1af3 - IMAGE_BASE] ; 0x2ecd
    pop di                           ; 0x2ed2
    add di, byte 0x50                ; 0x2ed3
    pop cx                           ; 0x2ed6
    loop @..io_loc_JGUP.l1           ; 0x2ed7
    ret                              ; 0x2ed9
@..io_loc_JGUP.l3:
    push cx                          ; 0x2eda
    push di                          ; 0x2edb
    push si                          ; 0x2edc
    push bx                          ; 0x2edd
    mov cx, word [cs:cseg_1af9 - IMAGE_BASE] ; 0x2ede
    mov al, byte [bx]                ; 0x2ee3
    not al                           ; 0x2ee5
    mov ah, 0xff                     ; 0x2ee7
    shr ax, cl                       ; 0x2ee9
    out dx, al                       ; 0x2eeb
    mov al, byte [si]                ; 0x2eec
    mov ah, byte [es:di]             ; 0x2eee
    mov byte [es:di], al             ; 0x2ef1
    inc di                           ; 0x2ef4
    inc si                           ; 0x2ef5
    mov ax, word [cs:cseg_1af1 - IMAGE_BASE] ; 0x2ef6
    dec ax                           ; 0x2efa
    je short @..io_loc_JGUP.l5       ; 0x2efb
@..io_loc_JGUP.l4:
    push ax                          ; 0x2efd
    mov ah, byte [bx]                ; 0x2efe
    mov al, byte [bx + 0x1]          ; 0x2f00
    not ax                           ; 0x2f03
    shr ax, cl                       ; 0x2f05
    out dx, al                       ; 0x2f07
    mov al, byte [cs:si]             ; 0x2f08
    mov ah, byte [es:di]             ; 0x2f0b
    mov byte [es:di], al             ; 0x2f0e
    inc si                           ; 0x2f11
    inc bx                           ; 0x2f12
    inc di                           ; 0x2f13
    pop ax                           ; 0x2f14
    dec ax                           ; 0x2f15
    jne short @..io_loc_JGUP.l4      ; 0x2f16
@..io_loc_JGUP.l5:
    cmp word [cs:cseg_1afb - IMAGE_BASE], byte 0 ; 0x2f18
    jne short @..io_loc_JGUP.l6      ; 0x2f1e
    mov ah, byte [bx]                ; 0x2f20
    xor al, al                       ; 0x2f22
    not ax                           ; 0x2f24
    shr ax, cl                       ; 0x2f26
    out dx, al                       ; 0x2f28
    mov al, byte [cs:si]             ; 0x2f29
    mov ah, byte [es:di]             ; 0x2f2c
    mov byte [es:di], al             ; 0x2f2f
@..io_loc_JGUP.l6:
    pop bx                           ; 0x2f32
    add bx, word [cs:cseg_248f - IMAGE_BASE] ; 0x2f33
    pop si                           ; 0x2f38
    add si, word [cs:cseg_1af3 - IMAGE_BASE] ; 0x2f39
    pop di                           ; 0x2f3e
    add di, byte 0x50                ; 0x2f3f
    pop cx                           ; 0x2f42
    loop @..io_loc_JGUP.l3           ; 0x2f43
    ret                              ; 0x2f45
