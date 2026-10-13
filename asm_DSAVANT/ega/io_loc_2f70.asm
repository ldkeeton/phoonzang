io_loc_2f70:
    mov dx, 0x3c4                    ; 0x2f70
    mov al, 2                        ; 0x2f73
    out dx, al                       ; 0x2f75
    inc dx                           ; 0x2f76
    mov al, ah                       ; 0x2f77
    out dx, al                       ; 0x2f79
    add si, strict word 0x2602       ; 0x2f7a
    mov cx, word [cs:cseg_1bf5 - IMAGE_BASE] ; 0x2f7e
    mov di, word [cs:cseg_1bf7 - IMAGE_BASE] ; 0x2f83
    mov bx, 0x2a02                   ; 0x2f88
    mov dx, 0x3ce                    ; 0x2f8b
    mov al, 8                        ; 0x2f8e
    out dx, al                       ; 0x2f90
    inc dx                           ; 0x2f91
    cmp word [cs:cseg_1bf9 - IMAGE_BASE], byte 0 ; 0x2f92
    je short @..io_loc_2f70.l1       ; 0x2f98
    jmp short @..io_loc_2f70.l3      ; 0x2f9a
@..io_loc_2f70.l1:
    push cx                          ; 0x2f9c
    push di                          ; 0x2f9d
    push si                          ; 0x2f9e
    push bx                          ; 0x2f9f
    mov cx, word [cs:cseg_1bf1 - IMAGE_BASE] ; 0x2fa0
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
    add bx, word [cs:cseg_258f - IMAGE_BASE] ; 0x2fb6
    pop si                           ; 0x2fbb
    add si, word [cs:cseg_258f - IMAGE_BASE] ; 0x2fbc
    pop di                           ; 0x2fc1
    add di, byte 0x50                ; 0x2fc2
    pop cx                           ; 0x2fc5
    loop @..io_loc_2f70.l1           ; 0x2fc6
    ret                              ; 0x2fc8
@..io_loc_2f70.l3:
    push cx                          ; 0x2fc9
    push di                          ; 0x2fca
    push si                          ; 0x2fcb
    push bx                          ; 0x2fcc
    mov cx, word [cs:cseg_1bf9 - IMAGE_BASE] ; 0x2fcd
    mov al, byte [bx]                ; 0x2fd2
    shr al, cl                       ; 0x2fd4
    out dx, al                       ; 0x2fd6
    mov al, byte [si]                ; 0x2fd7
    shr al, cl                       ; 0x2fd9
    mov ah, byte [es:di]             ; 0x2fdb
    mov byte [es:di], al             ; 0x2fde
    inc di                           ; 0x2fe1
    mov ax, word [cs:cseg_1bf1 - IMAGE_BASE] ; 0x2fe2
    dec ax                           ; 0x2fe6
    je short @..io_loc_2f70.l5       ; 0x2fe7
@..io_loc_2f70.l4:
    push ax                          ; 0x2fe9
    mov ah, byte [bx]                ; 0x2fea
    mov al, byte [bx + 0x1]          ; 0x2fec
    shr ax, cl                       ; 0x2fef
    out dx, al                       ; 0x2ff1
    mov ah, byte [si]                ; 0x2ff2
    mov al, byte [si + 0x1]          ; 0x2ff4
    shr ax, cl                       ; 0x2ff7
    mov ah, byte [es:di]             ; 0x2ff9
    mov byte [es:di], al             ; 0x2ffc
    inc si                           ; 0x2fff
    inc bx                           ; 0x3000
    inc di                           ; 0x3001
    pop ax                           ; 0x3002
    dec ax                           ; 0x3003
    jne short @..io_loc_2f70.l4      ; 0x3004
@..io_loc_2f70.l5:
    cmp word [cs:cseg_1bfb - IMAGE_BASE], byte 0 ; 0x3006
    jne short @..io_loc_2f70.l6      ; 0x300c
    mov ah, byte [bx]                ; 0x300e
    xor al, al                       ; 0x3010
    shr ax, cl                       ; 0x3012
    out dx, al                       ; 0x3014
    mov ah, byte [si]                ; 0x3015
    xor al, al                       ; 0x3017
    shr ax, cl                       ; 0x3019
    mov ah, byte [es:di]             ; 0x301b
    mov byte [es:di], al             ; 0x301e
@..io_loc_2f70.l6:
    pop bx                           ; 0x3021
    add bx, word [cs:cseg_258f - IMAGE_BASE] ; 0x3022
    pop si                           ; 0x3027
    add si, word [cs:cseg_258f - IMAGE_BASE] ; 0x3028
    pop di                           ; 0x302d
    add di, byte 0x50                ; 0x302e
    pop cx                           ; 0x3031
    loop @..io_loc_2f70.l3           ; 0x3032
    ret                              ; 0x3034
loc_3035:
    mov word [cs:cseg_2b02 - IMAGE_BASE], 0 ; 0x3035
    ret                              ; 0x303c
loc_303d:
    push bp                          ; 0x303d
    mov bp, sp                       ; 0x303e
    sub sp, byte 8                   ; 0x3040
    push ds                          ; 0x3043
    push es                          ; 0x3044
    push di                          ; 0x3045
    push si                          ; 0x3046
    mov ax, ds                       ; 0x3047
    mov es, ax                       ; 0x3049
    mov ax, word [bp + 0xc]          ; 0x304b
    cmp ax, strict word 0x14         ; 0x304e
    jb short @..loc_303d.l1          ; 0x3051
    jmp near @..loc_303d.l3          ; 0x3053
@..loc_303d.l1:
    shl ax, 1                        ; 0x3056
    mov word [bp - 0x0008], ax       ; 0x3058
    mov bx, 0x229                    ; 0x305b
    add bx, ax                       ; 0x305e
    mov ax, word [cs:bx]             ; 0x3060
    or ax, ax                        ; 0x3063
    jne short @..loc_303d.l2         ; 0x3065
    jmp near @..loc_303d.l3          ; 0x3067
@..loc_303d.l2:
    mov word [cs:bx], 0              ; 0x306a
    mov cx, word [cs:cseg_11cb - IMAGE_BASE] ; 0x306f
    dec cx                           ; 0x3074
    mov word [cs:cseg_11cb - IMAGE_BASE], cx ; 0x3075
    call loc_4c93                    ; 0x307a
@..loc_303d.l3:
    pop si                           ; 0x307d
    pop di                           ; 0x307e
    pop es                           ; 0x307f
    pop ds                           ; 0x3080
    mov sp, bp                       ; 0x3081
    pop bp                           ; 0x3083
    ret                              ; 0x3084
