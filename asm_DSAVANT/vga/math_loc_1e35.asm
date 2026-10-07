math_loc_1e35:
    push bp                          ; 0x1e35
    mov bp, sp                       ; 0x1e36
    sub sp, byte 0x10                ; 0x1e38
    mov ax, word [cs:data_15b2]      ; 0x1e3b
    mov bx, 0xc8                     ; 0x1e3f
    sub bx, ax                       ; 0x1e42
    cmp bx, word [cs:data_1e5e]      ; 0x1e44
    jb short @..math_loc_1e35.l1     ; 0x1e49
    mov bx, word [cs:data_1e5e]      ; 0x1e4b
@..math_loc_1e35.l1:
    mov word [cs:data_15c0], bx      ; 0x1e50
    mov bx, 0x140                    ; 0x1e55
    mul bx                           ; 0x1e58
    mov bx, word [cs:data_15b0]      ; 0x1e5a
    add ax, bx                       ; 0x1e5f
    mov si, ax                       ; 0x1e61
    mov word [cs:data_15c2], ax      ; 0x1e63
    mov cx, 0x140                    ; 0x1e67
    sub cx, bx                       ; 0x1e6a
    cmp cx, word [cs:data_1e5c]      ; 0x1e6c
    jb short @..math_loc_1e35.l2     ; 0x1e71
    mov cx, word [cs:data_1e5c]      ; 0x1e73
@..math_loc_1e35.l2:
    mov word [cs:data_15be], cx      ; 0x1e78
    mov di, word [cs:data_15b6]      ; 0x1e7d
    mov ax, cs                       ; 0x1e82
    mov es, ax                       ; 0x1e84
    mov ax, 0xa000                   ; 0x1e86
    mov ds, ax                       ; 0x1e89
    mov cx, word [cs:data_15c0]      ; 0x1e8b
@..math_loc_1e35.l3:
    push cx                          ; 0x1e90
    push si                          ; 0x1e91
    mov cx, word [cs:data_15be]      ; 0x1e92
    rep movsb                        ; 0x1e97
    pop si                           ; 0x1e99
    add si, strict word 0x140        ; 0x1e9a
    pop cx                           ; 0x1e9e
    loop @..math_loc_1e35.l3         ; 0x1e9f
    mov ax, word [cs:data_15ae]      ; 0x1ea1
    cmp ax, strict word 0xffff       ; 0x1ea5
    jne short @..math_loc_1e35.l4    ; 0x1ea8
    jmp near @..math_loc_1e35.l12    ; 0x1eaa
@..math_loc_1e35.l4:
    add ax, word [cs:data_15ba]      ; 0x1ead
    dec ax                           ; 0x1eb2
    mov word [bp - 0x0002], ax       ; 0x1eb3
    mov ax, word [cs:data_15ac]      ; 0x1eb6
    add ax, word [cs:data_15b8]      ; 0x1eba
    dec ax                           ; 0x1ebf
    mov word [bp - 0x0004], ax       ; 0x1ec0
    mov cx, word [cs:data_15b0]      ; 0x1ec3
    mov dx, word [cs:data_15b2]      ; 0x1ec8
    cmp word [bp - 0x0004], cx       ; 0x1ecd
    jb short @..math_loc_1e35.l5     ; 0x1ed0
    cmp word [bp - 0x0002], dx       ; 0x1ed2
    jb short @..math_loc_1e35.l5     ; 0x1ed5
    add cx, word [cs:data_15be]      ; 0x1ed7
    dec cx                           ; 0x1edc
    add dx, word [cs:data_15c0]      ; 0x1edd
    dec dx                           ; 0x1ee2
    cmp cx, word [cs:data_15ac]      ; 0x1ee3
    jb short @..math_loc_1e35.l5     ; 0x1ee8
    cmp dx, word [cs:data_15ae]      ; 0x1eea
    jae short @..math_loc_1e35.l6    ; 0x1eef
@..math_loc_1e35.l5:
    mov byte [cs:data_1e68], 0       ; 0x1ef1
    jmp near @..math_loc_1e35.l12    ; 0x1ef7
@..math_loc_1e35.l6:
    mov byte [cs:data_1e68], 1       ; 0x1efa
    mov cx, word [cs:data_15b0]      ; 0x1f00
    mov ax, cx                       ; 0x1f05
    cmp word [cs:data_15ac], cx      ; 0x1f07
    jb short @..math_loc_1e35.l7     ; 0x1f0c
    mov ax, word [cs:data_15ac]      ; 0x1f0e
@..math_loc_1e35.l7:
    mov word [bp - 0x0006], ax       ; 0x1f12
    mov dx, word [cs:data_15b2]      ; 0x1f15
    mov bx, dx                       ; 0x1f1a
    cmp word [cs:data_15ae], dx      ; 0x1f1c
    jb short @..math_loc_1e35.l8     ; 0x1f21
    mov bx, word [cs:data_15ae]      ; 0x1f23
@..math_loc_1e35.l8:
    mov word [bp - 0x0008], bx       ; 0x1f28
    sub ax, cx                       ; 0x1f2b
    sub bx, dx                       ; 0x1f2d
    mov word [bp - 0x000a], ax       ; 0x1f2f
    mov word [bp - 0x000c], bx       ; 0x1f32
    mov cx, word [cs:data_15be]      ; 0x1f35
    mov dx, word [cs:data_15c0]      ; 0x1f3a
    sub cx, ax                       ; 0x1f3f
    mov word [bp - 0x000e], cx       ; 0x1f41
    sub dx, bx                       ; 0x1f44
    mov word [bp - 0x0010], dx       ; 0x1f46
    mov ax, word [bp - 0x0006]       ; 0x1f49
    add ax, word [bp - 0x000e]       ; 0x1f4c
    dec ax                           ; 0x1f4f
    cmp ax, word [bp - 0x0004]       ; 0x1f50
    jb short @..math_loc_1e35.l9     ; 0x1f53
    mov ax, word [bp - 0x0004]       ; 0x1f55
    sub ax, word [bp - 0x0006]       ; 0x1f58
    inc ax                           ; 0x1f5b
    mov word [bp - 0x000e], ax       ; 0x1f5c
@..math_loc_1e35.l9:
    mov ax, word [bp - 0x0008]       ; 0x1f5f
    add ax, word [bp - 0x0010]       ; 0x1f62
    dec ax                           ; 0x1f65
    cmp ax, word [bp - 0x0002]       ; 0x1f66
    jb short @..math_loc_1e35.l10    ; 0x1f69
    mov ax, word [bp - 0x0002]       ; 0x1f6b
    sub ax, word [bp - 0x0008]       ; 0x1f6e
    inc ax                           ; 0x1f71
    mov word [bp - 0x0010], ax       ; 0x1f72
@..math_loc_1e35.l10:
    mov ax, word [bp - 0x0008]       ; 0x1f75
    sub ax, word [cs:data_15ae]      ; 0x1f78
    mov bx, word [cs:data_15b8]      ; 0x1f7d
    mul bx                           ; 0x1f82
    add ax, word [bp - 0x0006]       ; 0x1f84
    sub ax, word [cs:data_15ac]      ; 0x1f87
    add ax, word [cs:data_15b4]      ; 0x1f8c
    mov si, ax                       ; 0x1f91
    mov ax, word [bp - 0x000c]       ; 0x1f93
    mov bx, word [cs:data_15be]      ; 0x1f96
    mul bx                           ; 0x1f9b
    add ax, word [bp - 0x000a]       ; 0x1f9d
    add ax, word [cs:data_15b6]      ; 0x1fa0
    mov di, ax                       ; 0x1fa5
    mov ax, cs                       ; 0x1fa7
    mov ds, ax                       ; 0x1fa9
    mov es, ax                       ; 0x1fab
    mov cx, word [bp - 0x0010]       ; 0x1fad
@..math_loc_1e35.l11:
    push cx                          ; 0x1fb0
    push si                          ; 0x1fb1
    push di                          ; 0x1fb2
    mov cx, word [bp - 0x000e]       ; 0x1fb3
    rep movsb                        ; 0x1fb6
    pop di                           ; 0x1fb8
    add di, word [cs:data_15be]      ; 0x1fb9
    pop si                           ; 0x1fbe
    add si, word [cs:data_15b8]      ; 0x1fbf
    pop cx                           ; 0x1fc4
    loop @..math_loc_1e35.l11        ; 0x1fc5
@..math_loc_1e35.l12:
    mov ax, 0xa000                   ; 0x1fc7
    mov es, ax                       ; 0x1fca
    mov di, word [cs:data_15c2]      ; 0x1fcc
    mov ax, word [cs:data_1e66]      ; 0x1fd1
    mov ds, ax                       ; 0x1fd5
    mov si, word [cs:data_1e64]      ; 0x1fd7
    mov cx, word [cs:data_15c0]      ; 0x1fdc
    mov ax, ds                       ; 0x1fe1
    or ax, si                        ; 0x1fe3
    jne short @..math_loc_1e35.l13   ; 0x1fe5
    mov si, 0x1e69                   ; 0x1fe7
    mov ax, cs                       ; 0x1fea
    mov ds, ax                       ; 0x1fec
@..math_loc_1e35.l13:
    push di                          ; 0x1fee
    push si                          ; 0x1fef
@..math_loc_1e35.l14:
    push cx                          ; 0x1ff0
    push di                          ; 0x1ff1
    push si                          ; 0x1ff2
    mov cx, word [cs:data_15be]      ; 0x1ff3
@..math_loc_1e35.l15:
    mov al, byte [si]                ; 0x1ff8
    cmp al, 0xff                     ; 0x1ffa
    je short @..math_loc_1e35.l16    ; 0x1ffc
    mov byte [es:di], al             ; 0x1ffe
@..math_loc_1e35.l16:
    inc si                           ; 0x2001
    inc di                           ; 0x2002
    loop @..math_loc_1e35.l15        ; 0x2003
    pop si                           ; 0x2005
    add si, word [cs:data_1e5c]      ; 0x2006
    pop di                           ; 0x200b
    add di, strict word 0x140        ; 0x200c
    pop cx                           ; 0x2010
    loop @..math_loc_1e35.l14        ; 0x2011
    pop bx                           ; 0x2013
    pop di                           ; 0x2014
    mov ax, word [cs:data_15ae]      ; 0x2015
    cmp ax, strict word 0xffff       ; 0x2019
    jne short @..math_loc_1e35.l17   ; 0x201c
    jmp near @..math_loc_1e35.l32    ; 0x201e
@..math_loc_1e35.l17:
    mov si, word [cs:data_15b6]      ; 0x2021
    mov cx, word [cs:data_15c0]      ; 0x2026
@..math_loc_1e35.l18:
    push cx                          ; 0x202b
    push di                          ; 0x202c
    push si                          ; 0x202d
    push bx                          ; 0x202e
    mov cx, word [cs:data_15be]      ; 0x202f
