entry_point:
    mov bp, 0xff6                    ; 0x4d3a
    test bp, bp                      ; 0x4d3d
    jne short @..entry_point.l1      ; 0x4d3f
    mov bp, ds                       ; 0x4d41
@..entry_point.l1:
    mov word [cs:0x4b38], ds         ; 0x4d43
    mov bx, word [data_0002]         ; 0x4d48
    sub bx, bp                       ; 0x4d4c
    cmp bx, strict word 0x1000       ; 0x4d4e
    jbe short @..entry_point.l2      ; 0x4d52
    lea bx, word [bp + 0x1000]       ; 0x4d54
    mov ax, es                       ; 0x4d58
    sub bx, ax                       ; 0x4d5a
    mov ah, 0x4a                     ; 0x4d5c
    int 0x21 ; DOS resize memory block
    mov bx, 0x1000                   ; 0x4d60
@..entry_point.l2:
    mov es, bp                       ; 0x4d63
    mov word [es:data_0c80], ds      ; 0x4d65
    mov cl, 4                        ; 0x4d6a
    shl bx, cl                       ; 0x4d6c
    db 0x26, 0x83, 0x3e, 0xda, 0x0c, 0x00 ; cmp word [es:data_0cda], 0
    je short @..entry_point.l4       ; 0x4d74
    mov ax, word [es:data_0cd6]      ; 0x4d76
    shl ax, 1                        ; 0x4d7a
    mov bx, word [es:data_0cd4]      ; 0x4d7c
    shl bx, cl                       ; 0x4d81
    cmp bx, ax                       ; 0x4d83
    ja short @..entry_point.l3       ; 0x4d85
    mov bx, ax                       ; 0x4d87
@..entry_point.l3:
    add bx, strict word 0x9098       ; 0x4d89
@..entry_point.l4:
    cli                              ; 0x4d8d
    mov ss, bp                       ; 0x4d8e
    mov sp, bx                       ; 0x4d90
    sti                              ; 0x4d92
    test bx, bx                      ; 0x4d93
    jne short @..entry_point.l5      ; 0x4d95
    mov bx, 0xffff                   ; 0x4d97
@..entry_point.l5:
    mov word [es:data_0c7c], bx      ; 0x4d9a
    db 0x26, 0x83, 0x3e, 0xda, 0x0c, 0x00 ; cmp word [es:data_0cda], 0
    je short @..entry_point.l7       ; 0x4da5
    mov si, word [es:data_0cd8]      ; 0x4da7
    mov ax, bx                       ; 0x4dac
    inc ax                           ; 0x4dae
    mov word [es:data_0c70], ax      ; 0x4daf
    shl si, cl                       ; 0x4db3
    add bx, si                       ; 0x4db5
    jae short @..entry_point.l6      ; 0x4db7
    mov bx, 0xffff                   ; 0x4db9
@..entry_point.l6:
    mov word [es:data_0c7c], bx      ; 0x4dbc
    add bx, byte 0x0f                ; 0x4dc1
    shr bx, cl                       ; 0x4dc4
    mov ax, es                       ; 0x4dc6
    add bx, ax                       ; 0x4dc8
    mov ax, ds                       ; 0x4dca
    sub bx, ax                       ; 0x4dcc
    mov bp, es                       ; 0x4dce
    mov es, ax                       ; 0x4dd0
    mov ah, 0x4a                     ; 0x4dd2
    int 0x21 ; DOS resize memory block
    jae short @..entry_point.l7      ; 0x4dd6
    mov al, 0xfe                     ; 0x4dd8
    jmp near loc_4e80                ; 0x4dda
@..entry_point.l7:
    mov es, bp                       ; 0x4ddd
    cld                              ; 0x4ddf
    mov di, 0xcf6                    ; 0x4de0
    mov cx, 0x9098                   ; 0x4de3
    sub cx, di                       ; 0x4de6
    inc cx                           ; 0x4de8
    shr cx, 1                        ; 0x4de9
    jcxz @..entry_point.l8           ; 0x4deb
    sub ax, ax                       ; 0x4ded
    rep stosw                        ; 0x4def
@..entry_point.l8:
    mov es, word [data_002c]         ; 0x4df1
    sub di, di                       ; 0x4df5
    mov cx, 0x7fff                   ; 0x4df7
@..entry_point.l9:
    mov ah, byte [es:di]             ; 0x4dfa
    cmp ah, 0x3d                     ; 0x4dfd
    je short @..entry_point.l11      ; 0x4e00
    test ah, ah                      ; 0x4e02
    je short @..entry_point.l10      ; 0x4e04
    repne scasb                      ; 0x4e06
    je short @..entry_point.l9       ; 0x4e08
@..entry_point.l10:
    mov cl, byte [data_0080]         ; 0x4e0a
    sub ch, ch                       ; 0x4e0e
    mov si, 0x81                     ; 0x4e10
    mov ax, 1                        ; 0x4e13
    jmp short @..entry_point.l12     ; 0x4e16
@..entry_point.l11:
    sub ax, ax                       ; 0x4e18
    stosb                            ; 0x4e1a
    mov si, di                       ; 0x4e1b
    mov di, es                       ; 0x4e1d
    mov ds, di                       ; 0x4e1f
@..entry_point.l12:
    push ax                          ; 0x4e21
    mov es, bp                       ; 0x4e22
    mov di, word [es:data_0c70]      ; 0x4e24
    push di                          ; 0x4e29
    jcxz @..entry_point.l14          ; 0x4e2a
@..entry_point.l13:
    lodsb                            ; 0x4e2c
    test al, al                      ; 0x4e2d
    je short @..entry_point.l14      ; 0x4e2f
    stosb                            ; 0x4e31
    loop @..entry_point.l13          ; 0x4e32
@..entry_point.l14:
    sub al, al                       ; 0x4e34
    stosb                            ; 0x4e36
    mov ds, bp                       ; 0x4e37
    inc di                           ; 0x4e39
    and di, strict word 0xfffe       ; 0x4e3a
    mov word [data_0c70], di         ; 0x4e3e
    mov word [data_0c78], di         ; 0x4e42
    mov word [data_0c7a], 0x9098     ; 0x4e46
    cmp word [data_0cda], byte 0     ; 0x4e4c
    jne short @..entry_point.l15     ; 0x4e51
    mov word [data_0c7a], di         ; 0x4e53
@..entry_point.l15:
    mov ax, word [data_0c7a]         ; 0x4e57
    add ax, word [data_0cd6]         ; 0x4e5a
    mov word [data_0c7a], ax         ; 0x4e5e
    mov word [data_0c74], ds         ; 0x4e61
    mov word [data_0c76], cs         ; 0x4e65
    call dos_file_loc_4f85           ; 0x4e69
    jb short @..entry_point.l16      ; 0x4e6c
    call loc_4ea7                    ; 0x4e6e
    jmp short loc_4e80               ; 0x4e71
@..entry_point.l16:
    mov ah, 9                        ; 0x4e73
    mov dx, 0xc82                    ; 0x4e75
    int 0x21 ; DOS string output
    mov al, 0xfd                     ; 0x4e7a
    jmp short loc_4e80               ; 0x4e7c
