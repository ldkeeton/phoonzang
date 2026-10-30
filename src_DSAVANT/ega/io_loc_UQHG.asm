; auto-generated
io_loc_UQHG:
    push bp                          ; 0x2a6a
    mov bp, sp                       ; 0x2a6b
    sub sp, byte 0x10                ; 0x2a6d
    mov ax, word [cs:mouse_read_y - IMAGE_BASE] ; 0x2a70
    mov bx, 0xc8                     ; 0x2a74
    sub bx, ax                       ; 0x2a77
    cmp bx, word [cs:cseg_2491 - IMAGE_BASE] ; 0x2a79
    jb short .forward1               ; 0x2a7e
    mov bx, word [cs:cseg_2491 - IMAGE_BASE] ; 0x2a80
.forward1:
    mov word [cs:cseg_1af5 - IMAGE_BASE], bx ; 0x2a85
    mov bx, 0x50                     ; 0x2a8a
    mul bx                           ; 0x2a8d
    mov bx, word [cs:mouse_read_x - IMAGE_BASE] ; 0x2a8f
    mov cl, 2                        ; 0x2a94
    shr bx, cl                       ; 0x2a96
    add ax, bx                       ; 0x2a98
    mov word [cs:cseg_1af7 - IMAGE_BASE], ax ; 0x2a9a
    mov ax, word [cs:mouse_read_x - IMAGE_BASE] ; 0x2a9e
    and ax, strict word 3            ; 0x2aa2
    shl ax, 1                        ; 0x2aa5
    mov word [cs:cseg_1af9 - IMAGE_BASE], ax ; 0x2aa7
    mov ax, 0x140                    ; 0x2aab
    mov bx, word [cs:mouse_read_x - IMAGE_BASE] ; 0x2aae
    sub ax, bx                       ; 0x2ab3
    cmp ax, word [cs:cseg_248d - IMAGE_BASE] ; 0x2ab5
    jb short .forward2               ; 0x2aba
    mov ax, word [cs:cseg_248d - IMAGE_BASE] ; 0x2abc
    mov word [cs:cseg_1afb - IMAGE_BASE], 0 ; 0x2ac0
    jmp short .forward3              ; 0x2ac7
.forward2:
    mov word [cs:cseg_1afb - IMAGE_BASE], 0xff ; 0x2ac9
.forward3:
    mov word [cs:cseg_1aef - IMAGE_BASE], ax ; 0x2ad0
    add ax, strict word 3            ; 0x2ad4
    mov cl, 2                        ; 0x2ad7
    shr ax, cl                       ; 0x2ad9
    mov word [cs:cseg_1af1 - IMAGE_BASE], ax ; 0x2adb
    cmp word [cs:cseg_1afb - IMAGE_BASE], byte 0 ; 0x2adf
    jne short .forward4              ; 0x2ae5
    cmp word [cs:cseg_1af9 - IMAGE_BASE], byte 0 ; 0x2ae7
    je short .forward4               ; 0x2aed
    inc ax                           ; 0x2aef
.forward4:
    mov word [cs:cseg_1af3 - IMAGE_BASE], ax ; 0x2af0
    mov di, word [cs:cseg_1ad7 - IMAGE_BASE] ; 0x2af4
    mov ax, cs                       ; 0x2af9
    mov es, ax                       ; 0x2afb
    mov ax, 0xa000                   ; 0x2afd
    mov ds, ax                       ; 0x2b00
    mov dx, 0x3ce                    ; 0x2b02
    mov al, 5                        ; 0x2b05
    out dx, al                       ; 0x2b07
    inc dx                           ; 0x2b08
    mov al, 0                        ; 0x2b09
    out dx, al                       ; 0x2b0b
    mov ah, 0                        ; 0x2b0c
    xor di, di                       ; 0x2b0e
    call io_loc_TSTG                 ; 0x2b10
    mov ah, 1                        ; 0x2b13
    mov di, 0x120                    ; 0x2b15
    call io_loc_TSTG                 ; 0x2b18
    mov di, 0x240                    ; 0x2b1b
    mov ah, 2                        ; 0x2b1e
    call io_loc_TSTG                 ; 0x2b20
    mov di, 0x360                    ; 0x2b23
    mov ah, 3                        ; 0x2b26
    call io_loc_TSTG                 ; 0x2b28
    mov ax, word [cs:mouse_drawn_y - IMAGE_BASE] ; 0x2b2b
    cmp ax, strict word 0xffff       ; 0x2b2f
    jne short .forward5              ; 0x2b32
    jmp near .forward12              ; 0x2b34
.forward5:
    add ax, word [cs:cseg_1ae3 - IMAGE_BASE] ; 0x2b37
    dec ax                           ; 0x2b3c
    mov word [bp - 2], ax            ; 0x2b3d
    mov ax, word [cs:mouse_drawn_x - IMAGE_BASE] ; 0x2b40
    mov cl, 2                        ; 0x2b44
    shr ax, cl                       ; 0x2b46
    add ax, word [cs:cseg_1ae1 - IMAGE_BASE] ; 0x2b48
    dec ax                           ; 0x2b4d
    mov word [bp - 4], ax            ; 0x2b4e
    mov cx, word [cs:mouse_read_x - IMAGE_BASE] ; 0x2b51
    shr cx, 1                        ; 0x2b56
    shr cx, 1                        ; 0x2b58
    mov dx, word [cs:mouse_read_y - IMAGE_BASE] ; 0x2b5a
    cmp word [bp - 4], cx            ; 0x2b5f
    jb short .forward6               ; 0x2b62
    cmp word [bp - 2], dx            ; 0x2b64
    jb short .forward6               ; 0x2b67
    add cx, word [cs:cseg_1af3 - IMAGE_BASE] ; 0x2b69
    dec cx                           ; 0x2b6e
    add dx, word [cs:cseg_1af5 - IMAGE_BASE] ; 0x2b6f
    dec dx                           ; 0x2b74
    mov ax, word [cs:mouse_drawn_x - IMAGE_BASE] ; 0x2b75
    shr ax, 1                        ; 0x2b79
    shr ax, 1                        ; 0x2b7b
    cmp cx, ax                       ; 0x2b7d
    jb short .forward6               ; 0x2b7f
    cmp dx, word [cs:mouse_drawn_y - IMAGE_BASE] ; 0x2b81
    jae short .forward7              ; 0x2b86
.forward6:
    mov byte [cs:cseg_249d - IMAGE_BASE], 0 ; 0x2b88
    jmp near .forward12              ; 0x2b8e
.forward7:
    mov byte [cs:cseg_249d - IMAGE_BASE], 1 ; 0x2b91
    mov cx, word [cs:mouse_read_x - IMAGE_BASE] ; 0x2b97
    shr cx, 1                        ; 0x2b9c
    shr cx, 1                        ; 0x2b9e
    mov ax, cx                       ; 0x2ba0
    mov bx, word [cs:mouse_drawn_x - IMAGE_BASE] ; 0x2ba2
    shr bx, 1                        ; 0x2ba7
    shr bx, 1                        ; 0x2ba9
    cmp bx, cx                       ; 0x2bab
    jb short .forward8               ; 0x2bad
    mov ax, word [cs:mouse_drawn_x - IMAGE_BASE] ; 0x2baf
    shr ax, 1                        ; 0x2bb3
    shr ax, 1                        ; 0x2bb5
.forward8:
    mov word [bp - 6], ax            ; 0x2bb7
    mov dx, word [cs:mouse_read_y - IMAGE_BASE] ; 0x2bba
    mov bx, dx                       ; 0x2bbf
    cmp word [cs:mouse_drawn_y - IMAGE_BASE], dx ; 0x2bc1
    jb short .forward9               ; 0x2bc6
    mov bx, word [cs:mouse_drawn_y - IMAGE_BASE] ; 0x2bc8
.forward9:
    mov word [bp - 8], bx            ; 0x2bcd
    sub ax, cx                       ; 0x2bd0
    sub bx, dx                       ; 0x2bd2
    mov word [bp - 0xa], ax          ; 0x2bd4
    mov word [bp - 0xc], bx          ; 0x2bd7
    mov cx, word [cs:cseg_1af3 - IMAGE_BASE] ; 0x2bda
    mov dx, word [cs:cseg_1af5 - IMAGE_BASE] ; 0x2bdf
    sub cx, ax                       ; 0x2be4
    mov word [bp - 0xe], cx          ; 0x2be6
    sub dx, bx                       ; 0x2be9
    mov word [bp - 0x10], dx         ; 0x2beb
    mov ax, word [bp - 6]            ; 0x2bee
    add ax, word [bp - 0xe]          ; 0x2bf1
    dec ax                           ; 0x2bf4
    cmp ax, word [bp - 4]            ; 0x2bf5
    jb short .forward10              ; 0x2bf8
    mov ax, word [bp - 4]            ; 0x2bfa
    sub ax, word [bp - 6]            ; 0x2bfd
    inc ax                           ; 0x2c00
    mov word [bp - 0xe], ax          ; 0x2c01
.forward10:
    mov ax, word [bp - 8]            ; 0x2c04
    add ax, word [bp - 0x10]         ; 0x2c07
    dec ax                           ; 0x2c0a
    cmp ax, word [bp - 2]            ; 0x2c0b
    jb short .forward11              ; 0x2c0e
    mov ax, word [bp - 2]            ; 0x2c10
    sub ax, word [bp - 8]            ; 0x2c13
    inc ax                           ; 0x2c16
    mov word [bp - 0x10], ax         ; 0x2c17
.forward11:
    mov ax, word [bp - 8]            ; 0x2c1a
    sub ax, word [cs:mouse_drawn_y - IMAGE_BASE] ; 0x2c1d
    mov bx, word [cs:cseg_1ae1 - IMAGE_BASE] ; 0x2c22
    mul bx                           ; 0x2c27
    add ax, word [bp - 6]            ; 0x2c29
    mov bx, word [cs:mouse_drawn_x - IMAGE_BASE] ; 0x2c2c
    shr bx, 1                        ; 0x2c31
    shr bx, 1                        ; 0x2c33
    sub ax, bx                       ; 0x2c35
    add ax, word [cs:cseg_1ad5 - IMAGE_BASE] ; 0x2c37
    mov si, ax                       ; 0x2c3c
    mov ax, word [bp - 0xc]          ; 0x2c3e
    mov bx, word [cs:cseg_1af3 - IMAGE_BASE] ; 0x2c41
    mul bx                           ; 0x2c46
    add ax, word [bp - 0xa]          ; 0x2c48
    add ax, word [cs:cseg_1ad7 - IMAGE_BASE] ; 0x2c4b
    mov di, ax                       ; 0x2c50
    mov ax, cs                       ; 0x2c52
    mov ds, ax                       ; 0x2c54
    mov es, ax                       ; 0x2c56
    mov cx, word [bp - 0x10]         ; 0x2c58
.back1:
    push cx                          ; 0x2c5b
    push si                          ; 0x2c5c
    push di                          ; 0x2c5d
    mov ax, si                       ; 0x2c5e
    mov bx, di                       ; 0x2c60
    mov cx, word [bp - 0xe]          ; 0x2c62
    rep movsb                        ; 0x2c65
    add ax, 0x120                    ; 0x2c67
    add bx, strict word 0x120        ; 0x2c6a
    mov si, ax                       ; 0x2c6e
    mov di, bx                       ; 0x2c70
    mov cx, word [bp - 0xe]          ; 0x2c72
    rep movsb                        ; 0x2c75
    add ax, 0x120                    ; 0x2c77
    add bx, strict word 0x120        ; 0x2c7a
    mov si, ax                       ; 0x2c7e
    mov di, bx                       ; 0x2c80
    mov cx, word [bp - 0xe]          ; 0x2c82
    rep movsb                        ; 0x2c85
    add ax, 0x120                    ; 0x2c87
    add bx, strict word 0x120        ; 0x2c8a
    mov si, ax                       ; 0x2c8e
    mov di, bx                       ; 0x2c90
    mov cx, word [bp - 0xe]          ; 0x2c92
    rep movsb                        ; 0x2c95
    pop di                           ; 0x2c97
    add di, word [cs:cseg_1af3 - IMAGE_BASE] ; 0x2c98
    pop si                           ; 0x2c9d
    add si, word [cs:cseg_1ae1 - IMAGE_BASE] ; 0x2c9e
    pop cx                           ; 0x2ca3
    loop .back1                      ; 0x2ca4
.forward12:
    mov ax, 0xa000                   ; 0x2ca6
    mov es, ax                       ; 0x2ca9
    mov si, cseg_2502 - IMAGE_BASE   ; 0x2cab
    mov ax, cs                       ; 0x2cae
    mov ds, ax                       ; 0x2cb0
    xor si, si                       ; 0x2cb2
    mov ah, 1                        ; 0x2cb4
    call io_loc_QMLN                 ; 0x2cb6
    mov si, 0x100                    ; 0x2cb9
    mov ah, 2                        ; 0x2cbc
    call io_loc_QMLN                 ; 0x2cbe
    mov si, 0x200                    ; 0x2cc1
    mov ah, 4                        ; 0x2cc4
    call io_loc_QMLN                 ; 0x2cc6
    mov si, 0x300                    ; 0x2cc9
    mov ah, 8                        ; 0x2ccc
    call io_loc_QMLN                 ; 0x2cce
    mov dx, 0x3ce                    ; 0x2cd1
    mov al, 8                        ; 0x2cd4
    out dx, al                       ; 0x2cd6
    inc dx                           ; 0x2cd7
    mov al, 0xff                     ; 0x2cd8
    out dx, al                       ; 0x2cda
    mov dx, 0x3c4                    ; 0x2cdb
    mov al, 2                        ; 0x2cde
    out dx, al                       ; 0x2ce0
    inc dx                           ; 0x2ce1
    mov al, 0xf                      ; 0x2ce2
    out dx, al                       ; 0x2ce4
    mov ax, word [cs:mouse_drawn_y - IMAGE_BASE] ; 0x2ce5
    cmp ax, strict word 0xffff       ; 0x2ce9
    jne short .forward13             ; 0x2cec
    jmp near .forward19              ; 0x2cee
.forward13:
    mov ah, 1                        ; 0x2cf1
    xor si, si                       ; 0x2cf3
    call io_loc_JGUP                 ; 0x2cf5
    mov ah, 2                        ; 0x2cf8
    mov si, 0x120                    ; 0x2cfa
    call io_loc_JGUP                 ; 0x2cfd
    mov ah, 4                        ; 0x2d00
    mov si, 0x240                    ; 0x2d02
    call io_loc_JGUP                 ; 0x2d05
    mov ah, 8                        ; 0x2d08
    mov si, 0x360                    ; 0x2d0a
    call io_loc_JGUP                 ; 0x2d0d
    mov dx, 0x3ce                    ; 0x2d10
    mov al, 8                        ; 0x2d13
    out dx, al                       ; 0x2d15
    inc dx                           ; 0x2d16
    mov al, 0xff                     ; 0x2d17
    out dx, al                       ; 0x2d19
    mov dx, 0x3c4                    ; 0x2d1a
    mov al, 2                        ; 0x2d1d
    out dx, al                       ; 0x2d1f
    inc dx                           ; 0x2d20
    mov al, 0xf                      ; 0x2d21
    out dx, al                       ; 0x2d23
    mov ax, cs                       ; 0x2d24
    mov es, ax                       ; 0x2d26
    mov ds, ax                       ; 0x2d28
    mov di, cseg_23fd - IMAGE_BASE   ; 0x2d2a
    mov cx, 0x80                     ; 0x2d2d
    mov al, 0xff                     ; 0x2d30
    rep stosb                        ; 0x2d32
    mov ax, word [cs:cseg_1ae1 - IMAGE_BASE] ; 0x2d34
    add ax, strict word 7            ; 0x2d38
    mov cl, 3                        ; 0x2d3b
    shr ax, cl                       ; 0x2d3d
    mov word [bp - 2], ax            ; 0x2d3f
    cmp byte [cs:cseg_249d - IMAGE_BASE], 0 ; 0x2d42
    jne short .forward14             ; 0x2d48
    jmp near .forward18              ; 0x2d4a
.forward14:
    mov ax, word [bp - 8]            ; 0x2d4d
    sub ax, word [cs:mouse_drawn_y - IMAGE_BASE] ; 0x2d50
    mov bx, word [bp - 2]            ; 0x2d55
    mul bx                           ; 0x2d58
    mov di, ax                       ; 0x2d5a
    add di, cseg_23fd - IMAGE_BASE   ; 0x2d5c
    mov ax, word [bp - 6]            ; 0x2d60
    mov bx, word [cs:mouse_drawn_x - IMAGE_BASE] ; 0x2d63
    shr bx, 1                        ; 0x2d68
    shr bx, 1                        ; 0x2d6a
    sub ax, bx                       ; 0x2d6c
    mov bx, cseg_247d - IMAGE_BASE   ; 0x2d6e
.back2:
    cmp ax, strict word 8            ; 0x2d71
    jb short .forward15              ; 0x2d74
    sub ax, strict word 8            ; 0x2d76
    inc di                           ; 0x2d79
    jmp short .back2                 ; 0x2d7a
.forward15:
    mov cx, ax                       ; 0x2d7c
    mov ah, 0xff                     ; 0x2d7e
    shr ah, cl                       ; 0x2d80
    mov dx, word [bp - 0xe]          ; 0x2d82
    add dx, cx                       ; 0x2d85
.back3:
    cmp dx, byte 8                   ; 0x2d87
    jb short .forward16              ; 0x2d8a
    not ah                           ; 0x2d8c
    mov byte [bx], ah                ; 0x2d8e
    inc bx                           ; 0x2d90
    mov ah, 0xff                     ; 0x2d91
    sub dx, byte 8                   ; 0x2d93
    je short .forward17              ; 0x2d96
    jmp short .back3                 ; 0x2d98
.forward16:
    mov al, 0xff                     ; 0x2d9a
    mov cx, 8                        ; 0x2d9c
    sub cx, dx                       ; 0x2d9f
    shl al, cl                       ; 0x2da1
    and ah, al                       ; 0x2da3
    not ah                           ; 0x2da5
    mov byte [bx], ah                ; 0x2da7
    inc bx                           ; 0x2da9
.forward17:
    sub bx, cseg_247d - IMAGE_BASE   ; 0x2daa
    mov word [bp - 4], bx            ; 0x2dae
    mov cx, word [bp - 0x10]         ; 0x2db1
.back4:
    push cx                          ; 0x2db4
    push di                          ; 0x2db5
    mov si, cseg_247d - IMAGE_BASE   ; 0x2db6
    mov cx, word [bp - 4]            ; 0x2db9
    rep movsb                        ; 0x2dbc
    pop di                           ; 0x2dbe
    add di, word [bp - 2]            ; 0x2dbf
    pop cx                           ; 0x2dc2
    loop .back4                      ; 0x2dc3
.forward18:
    mov ax, 0xa000                   ; 0x2dc5
    mov es, ax                       ; 0x2dc8
    mov si, word [cs:cseg_1ad5 - IMAGE_BASE] ; 0x2dca
    mov ah, 1                        ; 0x2dcf
    call io_loc_SRLG                 ; 0x2dd1
    mov si, word [cs:cseg_1ad5 - IMAGE_BASE] ; 0x2dd4
    add si, strict word 0x120        ; 0x2dd9
    mov ah, 2                        ; 0x2ddd
    call io_loc_SRLG                 ; 0x2ddf
    mov si, word [cs:cseg_1ad5 - IMAGE_BASE] ; 0x2de2
    add si, strict word 0x240        ; 0x2de7
    mov ah, 4                        ; 0x2deb
    call io_loc_SRLG                 ; 0x2ded
    mov si, word [cs:cseg_1ad5 - IMAGE_BASE] ; 0x2df0
    add si, strict word 0x360        ; 0x2df5
    mov ah, 8                        ; 0x2df9
    call io_loc_SRLG                 ; 0x2dfb
    mov dx, 0x3c4                    ; 0x2dfe
    mov al, 2                        ; 0x2e01
    out dx, al                       ; 0x2e03
    inc dx                           ; 0x2e04
    mov al, 0xf                      ; 0x2e05
    out dx, al                       ; 0x2e07
.forward19:
    mov ax, word [cs:cseg_1ad5 - IMAGE_BASE] ; 0x2e08
    mov bx, word [cs:cseg_1ad7 - IMAGE_BASE] ; 0x2e0c
    mov word [cs:cseg_1ad7 - IMAGE_BASE], ax ; 0x2e11
    mov word [cs:cseg_1ad5 - IMAGE_BASE], bx ; 0x2e15
    mov ax, cs                       ; 0x2e1a
    mov ds, ax                       ; 0x2e1c
    mov es, ax                       ; 0x2e1e
    mov si, mouse_read_x - IMAGE_BASE ; 0x2e20
    mov di, mouse_drawn_x - IMAGE_BASE ; 0x2e23
    mov cx, 9                        ; 0x2e26
    rep movsw                        ; 0x2e29
    mov sp, bp                       ; 0x2e2b
    pop bp                           ; 0x2e2d
    xor al, al                       ; 0x2e2e
    mov byte [cs:cseg_2a08 - IMAGE_BASE], al ; 0x2e30
    retf                             ; 0x2e34
