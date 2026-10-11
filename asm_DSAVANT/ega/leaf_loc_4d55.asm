leaf_loc_4d55:
    dec ax                           ; 0x4d55
    mov cl, 2                        ; 0x4d56
    shl ax, cl                       ; 0x4d58
    mov bx, 0x10fb                   ; 0x4d5a
    add bx, ax                       ; 0x4d5d
    mov word [bp - 0x0004], bx       ; 0x4d5f
    mov ax, word [cs:bx + 0x2]       ; 0x4d62
    sub word [cs:cseg_11cd - IMAGE_BASE], ax ; 0x4d66
    mov word [bp - 0x0006], ax       ; 0x4d6b
@..leaf_loc_4d55.l1:
    mov bx, word [bp - 0x0004]       ; 0x4d6e
    mov dx, word [cs:bx]             ; 0x4d71
    add dx, word [cs:cseg_01e1 - IMAGE_BASE] ; 0x4d74
    mov es, dx                       ; 0x4d79
    mov dx, word [cs:bx + 0x4]       ; 0x4d7b
    add dx, word [cs:cseg_01e1 - IMAGE_BASE] ; 0x4d7f
    mov ds, dx                       ; 0x4d84
    mov cx, word [cs:bx + 0x6]       ; 0x4d86
    or cx, cx                        ; 0x4d8a
    je short @..leaf_loc_4d55.l3     ; 0x4d8c
@..leaf_loc_4d55.l2:
    push cx                          ; 0x4d8e
    mov cx, 0x10                     ; 0x4d8f
    xor si, si                       ; 0x4d92
    xor di, di                       ; 0x4d94
    rep movsb                        ; 0x4d96
    mov cx, ds                       ; 0x4d98
    inc cx                           ; 0x4d9a
    mov ds, cx                       ; 0x4d9b
    mov cx, es                       ; 0x4d9d
    inc cx                           ; 0x4d9f
    mov es, cx                       ; 0x4da0
    pop cx                           ; 0x4da2
    loop @..leaf_loc_4d55.l2         ; 0x4da3
    mov bx, word [bp - 0x0004]       ; 0x4da5
    mov cx, word [bp - 0x0006]       ; 0x4da8
    mov ax, word [cs:bx + 0x4]       ; 0x4dab
    sub ax, cx                       ; 0x4daf
    mov word [cs:bx], ax             ; 0x4db1
    add ax, word [cs:bx + 0x6]       ; 0x4db4
    mov word [cs:bx + 0x4], ax       ; 0x4db8
    mov ax, word [cs:bx + 0x6]       ; 0x4dbc
    mov word [cs:bx + 0x2], ax       ; 0x4dc0
    add bx, byte 4                   ; 0x4dc4
    mov word [bp - 0x0004], bx       ; 0x4dc7
    jmp short @..leaf_loc_4d55.l1    ; 0x4dca
@..leaf_loc_4d55.l3:
    mov bx, word [bp - 0x0004]       ; 0x4dcc
    xor ax, ax                       ; 0x4dcf
    mov word [cs:bx], ax             ; 0x4dd1
    mov word [cs:bx + 0x2], ax       ; 0x4dd4
    ret                              ; 0x4dd8
loc_4dd9:
    push bp                          ; 0x4dd9
    mov bp, sp                       ; 0x4dda
    sub sp, byte 0x0a                ; 0x4ddc
    push ds                          ; 0x4ddf
    push es                          ; 0x4de0
    push si                          ; 0x4de1
    push di                          ; 0x4de2
    mov ax, ds                       ; 0x4de3
    mov es, ax                       ; 0x4de5
    mov ax, word [bp + 0xc]          ; 0x4de7
    cmp ax, strict word 0x14         ; 0x4dea
    jb short @..local.l135           ; 0x4ded
    jmp near @..local.l137           ; 0x4def
@..local.l135:
    shl ax, 1                        ; 0x4df2
    shl ax, 1                        ; 0x4df4
    mov bx, 0x4ab4                   ; 0x4df6
    add bx, ax                       ; 0x4df9
    mov ax, word [cs:bx + 0x2]       ; 0x4dfb
    mov word [bp - 0x0002], ax       ; 0x4dff
    mov ax, word [cs:bx]             ; 0x4e02
    or ax, ax                        ; 0x4e05
    jne short @..local.l136          ; 0x4e07
    jmp near @..local.l137           ; 0x4e09
@..local.l136:
    dec ax                           ; 0x4e0c
    mov word [bp - 0x0004], ax       ; 0x4e0d
    push word [bp + 0x12]            ; 0x4e10
    push word [bp + 0x10]            ; 0x4e13
    push word [bp + 0xe]             ; 0x4e16
    mov ax, word [bp - 0x0002]       ; 0x4e19
    push ax                          ; 0x4e1c
    xor ax, ax                       ; 0x4e1d
    push ax                          ; 0x4e1f
    mov bx, 0x10fb                   ; 0x4e20
    mov ax, word [bp - 0x0004]       ; 0x4e23
    shl ax, 1                        ; 0x4e26
    shl ax, 1                        ; 0x4e28
    add bx, ax                       ; 0x4e2a
    mov ax, word [cs:bx]             ; 0x4e2c
    add ax, word [cs:cseg_01e1 - IMAGE_BASE] ; 0x4e2f
    push ax                          ; 0x4e34
    xor ax, ax                       ; 0x4e35
    push ax                          ; 0x4e37
    call far [cs:cseg_021a - IMAGE_BASE] ; 0x4e38
    add sp, byte 0x0e                ; 0x4e3d
@..local.l137:
    pop di                           ; 0x4e40
    pop si                           ; 0x4e41
    pop es                           ; 0x4e42
    pop ds                           ; 0x4e43
    mov sp, bp                       ; 0x4e44
    pop bp                           ; 0x4e46
    ret                              ; 0x4e47
loc_4e48:
    push bp                          ; 0x4e48
    mov bp, sp                       ; 0x4e49
    push ds                          ; 0x4e4b
    push es                          ; 0x4e4c
    push si                          ; 0x4e4d
    push di                          ; 0x4e4e
    mov ax, ds                       ; 0x4e4f
    mov es, ax                       ; 0x4e51
    push word [bp + 0xc]             ; 0x4e53
    call far [cs:cseg_0222 - IMAGE_BASE] ; 0x4e56
    pop cx                           ; 0x4e5b
    pop di                           ; 0x4e5c
    pop si                           ; 0x4e5d
    pop es                           ; 0x4e5e
    pop ds                           ; 0x4e5f
    mov sp, bp                       ; 0x4e60
    pop bp                           ; 0x4e62
    ret                              ; 0x4e63
loc_4e64:
    push bp                          ; 0x4e64
    mov bp, sp                       ; 0x4e65
    sub sp, byte 0x0a                ; 0x4e67
    push ds                          ; 0x4e6a
    push es                          ; 0x4e6b
    push si                          ; 0x4e6c
    push di                          ; 0x4e6d
    mov ax, ds                       ; 0x4e6e
    mov es, ax                       ; 0x4e70
    xor ax, ax                       ; 0x4e72
    push ax                          ; 0x4e74
    push ax                          ; 0x4e75
    push ax                          ; 0x4e76
    push ax                          ; 0x4e77
    push ax                          ; 0x4e78
    push ax                          ; 0x4e79
    push ax                          ; 0x4e7a
    call far [cs:cseg_021a - IMAGE_BASE] ; 0x4e7b
    add sp, byte 0x0e                ; 0x4e80
    pop di                           ; 0x4e83
    pop si                           ; 0x4e84
    pop es                           ; 0x4e85
    pop ds                           ; 0x4e86
    mov sp, bp                       ; 0x4e87
    pop bp                           ; 0x4e89
    ret                              ; 0x4e8a

    times 34 db 0

