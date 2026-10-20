; auto-generated
load_screen:
    push bp                          ; 0x0df3
    mov bp, sp                       ; 0x0df4
    push ds                          ; 0x0df6
    push es                          ; 0x0df7
    push si                          ; 0x0df8
    push di                          ; 0x0df9
    mov ax, ds                       ; 0x0dfa
    mov es, ax                       ; 0x0dfc
    mov ax, word [bp + 0xe]          ; 0x0dfe
    cmp ax, strict word 2            ; 0x0e01
    je short @..load_screen.l2       ; 0x0e04
    cmp ax, strict word 1            ; 0x0e06
    je short @..load_screen.l1       ; 0x0e09
    jmp near @..load_screen.l4       ; 0x0e0b
@..load_screen.l1:
    mov ax, word [bp + 0xc]          ; 0x0e0e
    shl ax, 1                        ; 0x0e11
    mov bx, cseg_0151 - IMAGE_BASE   ; 0x0e13
    add bx, ax                       ; 0x0e16
    mov ax, word [cs:bx]             ; 0x0e18
    dec ax                           ; 0x0e1b
    mov cl, 2                        ; 0x0e1c
    shl ax, cl                       ; 0x0e1e
    mov bx, cseg_0ffb - IMAGE_BASE   ; 0x0e20
    add bx, ax                       ; 0x0e23
    mov ax, word [cs:bx]             ; 0x0e25
    mov bx, word [cs:cseg_00e1 - IMAGE_BASE] ; 0x0e28
    add bx, ax                       ; 0x0e2d
    mov ds, bx                       ; 0x0e2f
    mov ax, word [cs:cseg_00e5 - IMAGE_BASE] ; 0x0e31
    mov es, ax                       ; 0x0e35
    xor di, di                       ; 0x0e37
    xor si, si                       ; 0x0e39
    mov cx, 0xfa00                   ; 0x0e3b
    rep movsb                        ; 0x0e3e
    jmp short @..load_screen.l5      ; 0x0e40
@..load_screen.l2:
    mov ax, word [bp + 0xc]          ; 0x0e42
    shl ax, 1                        ; 0x0e45
    mov bx, cseg_01d7 - IMAGE_BASE   ; 0x0e47
    add bx, ax                       ; 0x0e4a
    mov ax, word [cs:bx]             ; 0x0e4c
    dec ax                           ; 0x0e4f
    mov cl, 2                        ; 0x0e50
    shl ax, cl                       ; 0x0e52
    mov bx, cseg_01eb - IMAGE_BASE   ; 0x0e54
    add bx, ax                       ; 0x0e57
    mov si, word [cs:bx]             ; 0x0e59
    mov ax, si                       ; 0x0e5c
    mov cl, 0xa                      ; 0x0e5e
    shr ax, cl                       ; 0x0e60
    mov word [cs:cseg_4440 - IMAGE_BASE], ax ; 0x0e62
    call leaf_loc_HLGJ               ; 0x0e66
    and si, strict word 0x3ff        ; 0x0e69
    mov cl, 4                        ; 0x0e6d
    shl si, cl                       ; 0x0e6f
    mov bx, word [cs:cseg_0103 - IMAGE_BASE] ; 0x0e71
    mov ds, bx                       ; 0x0e76
    mov ax, word [cs:cseg_00e5 - IMAGE_BASE] ; 0x0e78
    mov es, ax                       ; 0x0e7c
    xor di, di                       ; 0x0e7e
    mov cx, 3                        ; 0x0e80
@..load_screen.l3:
    push cx                          ; 0x0e83
    mov cx, 0x4000                   ; 0x0e84
    rep movsb                        ; 0x0e87
    and si, strict word 0x3fff       ; 0x0e89
    inc word [cs:cseg_4440 - IMAGE_BASE] ; 0x0e8d
    mov ax, word [cs:cseg_4440 - IMAGE_BASE] ; 0x0e92
    call leaf_loc_HLGJ               ; 0x0e96
    pop cx                           ; 0x0e99
    loop @..load_screen.l3           ; 0x0e9a
    mov cx, 0x3a00                   ; 0x0e9c
    rep movsb                        ; 0x0e9f
    jmp short @..load_screen.l5      ; 0x0ea1
@..load_screen.l4:
    mov ax, word [cs:cseg_00e5 - IMAGE_BASE] ; 0x0ea3
    mov ds, ax                       ; 0x0ea7
    xor dx, dx                       ; 0x0ea9
    mov bx, word [bp + 0xc]          ; 0x0eab
    mov cx, 0xfa00                   ; 0x0eae
    mov ah, 0x3f                     ; 0x0eb1
    int 0x21 ; DOS read file (handle)
@..load_screen.l5:
    pop di                           ; 0x0eb5
    pop si                           ; 0x0eb6
    pop es                           ; 0x0eb7
    pop ds                           ; 0x0eb8
    mov sp, bp                       ; 0x0eb9
    pop bp                           ; 0x0ebb
    ret                              ; 0x0ebc
