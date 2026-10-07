api_idx_0004_4:
    mov ax, 0xfffc                   ; 0x0c67
    call ds_dispatch_f40b            ; 0x0c6a
    mov word [bp - 0x0004], 0        ; 0x0c6d
    mov al, byte [data_69c8]         ; 0x0c72
    mov cx, word [bp - 0x0004]       ; 0x0c75
    shl cx, 1                        ; 0x0c78
    mov bx, cx                       ; 0x0c7a
    mov bx, word [bx - 0x7b7e]       ; 0x0c7c
    mov byte [bx + 0x1a1], al        ; 0x0c80
    mov word [bp - 0x0002], 0        ; 0x0c84
@..api_idx_0004_4.l1:
    mov ax, word [bp - 0x0004]       ; 0x0c89
    shl ax, 1                        ; 0x0c8c
    mov bx, ax                       ; 0x0c8e
    mov bx, word [bx - 0x7b7e]       ; 0x0c90
    mov si, word [bp - 0x0002]       ; 0x0c94
    mov byte [bx + si + 0x18c], 0    ; 0x0c97
    inc word [bp - 0x0002]           ; 0x0c9c
    mov ax, word [bp - 0x0002]       ; 0x0c9f
    cmp ax, strict word 6            ; 0x0ca2
    jl short @..api_idx_0004_4.l1    ; 0x0ca5
    cmp word [data_82fa], byte 0     ; 0x0ca7
    jle short @..api_idx_0004_4.l2   ; 0x0cac
    mov al, byte [data_82fc]         ; 0x0cae
    mov cx, word [bp - 0x0004]       ; 0x0cb1
    shl cx, 1                        ; 0x0cb4
    mov bx, cx                       ; 0x0cb6
    mov bx, word [bx - 0x7b7e]       ; 0x0cb8
    mov byte [bx + 0x190], al        ; 0x0cbc
@..api_idx_0004_4.l2:
    mov word [bp - 0x0002], 0        ; 0x0cc0
@..api_idx_0004_4.l3:
    mov ax, word [bp - 0x0004]       ; 0x0cc5
    shl ax, 1                        ; 0x0cc8
    mov bx, ax                       ; 0x0cca
    mov bx, word [bx - 0x7b7e]       ; 0x0ccc
    mov si, word [bp - 0x0002]       ; 0x0cd0
    mov byte [bx + si + 0x192], 0    ; 0x0cd3
    inc word [bp - 0x0002]           ; 0x0cd8
    mov ax, word [bp - 0x0002]       ; 0x0cdb
    cmp ax, strict word 6            ; 0x0cde
    jl short @..api_idx_0004_4.l3    ; 0x0ce1
    mov word [bp - 0x0002], 0        ; 0x0ce3
    jmp near @..api_idx_0004_4.l9    ; 0x0ce8
@..api_idx_0004_4.l4:
    mov ax, 0x248                    ; 0x0ceb
    imul word [bp - 0x0002]          ; 0x0cee
    mov bx, ax                       ; 0x0cf1
    mov ax, word [bx + 0x5c18]       ; 0x0cf3
    push ax                          ; 0x0cf7
    mov ax, 0x2c                     ; 0x0cf8
    imul word [bp - 0x0002]          ; 0x0cfb
    mov si, ax                       ; 0x0cfe
    mov ax, word [bp - 0x0004]       ; 0x0d00
    shl ax, 1                        ; 0x0d03
    mov bx, ax                       ; 0x0d05
    mov bx, word [bx - 0x7b7e]       ; 0x0d07
    pop ax                           ; 0x0d0b
    mov word [bx + si], ax           ; 0x0d0c
    mov ax, 0x248                    ; 0x0d0e
    imul word [bp - 0x0002]          ; 0x0d11
    mov bx, ax                       ; 0x0d14
    mov ax, word [bx + 0x5c0e]       ; 0x0d16
    push ax                          ; 0x0d1a
    mov ax, 0x2c                     ; 0x0d1b
    imul word [bp - 0x0002]          ; 0x0d1e
    mov si, ax                       ; 0x0d21
    mov ax, word [bp - 0x0004]       ; 0x0d23
    shl ax, 1                        ; 0x0d26
    mov bx, ax                       ; 0x0d28
    mov bx, word [bx - 0x7b7e]       ; 0x0d2a
    pop ax                           ; 0x0d2e
    mov word [bx + si + 0x4], ax     ; 0x0d2f
    mov ax, 0x248                    ; 0x0d32
    imul word [bp - 0x0002]          ; 0x0d35
    mov bx, ax                       ; 0x0d38
    mov ax, word [bx + 0x5c0c]       ; 0x0d3a
    push ax                          ; 0x0d3e
    mov ax, 0x2c                     ; 0x0d3f
    imul word [bp - 0x0002]          ; 0x0d42
    mov si, ax                       ; 0x0d45
    mov ax, word [bp - 0x0004]       ; 0x0d47
    shl ax, 1                        ; 0x0d4a
    mov bx, ax                       ; 0x0d4c
    mov bx, word [bx - 0x7b7e]       ; 0x0d4e
    pop ax                           ; 0x0d52
    mov word [bx + si + 0x2], ax     ; 0x0d53
    mov ax, 0x248                    ; 0x0d56
    imul word [bp - 0x0002]          ; 0x0d59
    mov bx, ax                       ; 0x0d5c
    mov ax, word [bx + 0x5c12]       ; 0x0d5e
    push ax                          ; 0x0d62
    mov ax, 0x2c                     ; 0x0d63
    imul word [bp - 0x0002]          ; 0x0d66
    mov si, ax                       ; 0x0d69
    mov ax, word [bp - 0x0004]       ; 0x0d6b
    shl ax, 1                        ; 0x0d6e
    mov bx, ax                       ; 0x0d70
    mov bx, word [bx - 0x7b7e]       ; 0x0d72
    pop ax                           ; 0x0d76
    mov word [bx + si + 0x8], ax     ; 0x0d77
    mov ax, 0x248                    ; 0x0d7a
    imul word [bp - 0x0002]          ; 0x0d7d
    mov bx, ax                       ; 0x0d80
    mov ax, word [bx + 0x5c10]       ; 0x0d82
    push ax                          ; 0x0d86
    mov ax, 0x2c                     ; 0x0d87
    imul word [bp - 0x0002]          ; 0x0d8a
    mov si, ax                       ; 0x0d8d
    mov ax, word [bp - 0x0004]       ; 0x0d8f
    shl ax, 1                        ; 0x0d92
    mov bx, ax                       ; 0x0d94
    mov bx, word [bx - 0x7b7e]       ; 0x0d96
    pop ax                           ; 0x0d9a
    mov word [bx + si + 0x6], ax     ; 0x0d9b
    mov ax, 0x248                    ; 0x0d9e
    imul word [bp - 0x0002]          ; 0x0da1
    mov bx, ax                       ; 0x0da4
    mov al, byte [bx + 0x5e2f]       ; 0x0da6
    push ax                          ; 0x0daa
    mov ax, 0x2c                     ; 0x0dab
    imul word [bp - 0x0002]          ; 0x0dae
    mov si, ax                       ; 0x0db1
    mov ax, word [bp - 0x0004]       ; 0x0db3
    shl ax, 1                        ; 0x0db6
    mov bx, ax                       ; 0x0db8
    mov bx, word [bx - 0x7b7e]       ; 0x0dba
    pop ax                           ; 0x0dbe
    mov byte [bx + si + 0x22], al    ; 0x0dbf
    mov ax, 0xa                      ; 0x0dc2
    push ax                          ; 0x0dc5
    mov ax, 0x2c                     ; 0x0dc6
    imul word [bp - 0x0002]          ; 0x0dc9
    mov cx, ax                       ; 0x0dcc
    mov ax, word [bp - 0x0004]       ; 0x0dce
    shl ax, 1                        ; 0x0dd1
    mov bx, ax                       ; 0x0dd3
    mov ax, word [bx - 0x7b7e]       ; 0x0dd5
    add ax, cx                       ; 0x0dd9
    add ax, strict word 0xe          ; 0x0ddb
    push ax                          ; 0x0dde
    mov ax, 0x248                    ; 0x0ddf
    imul word [bp - 0x0002]          ; 0x0de2
    add ax, 0x5d5a                   ; 0x0de5
    push ax                          ; 0x0de8
    call ds_dispatch_fedc            ; 0x0de9
    add sp, byte 6                   ; 0x0dec
    mov ax, 0x248                    ; 0x0def
    imul word [bp - 0x0002]          ; 0x0df2
    mov bx, ax                       ; 0x0df5
    mov al, byte [bx + 0x5e32]       ; 0x0df7
    push ax                          ; 0x0dfb
    mov ax, 0x2c                     ; 0x0dfc
    imul word [bp - 0x0002]          ; 0x0dff
    mov si, ax                       ; 0x0e02
    mov ax, word [bp - 0x0004]       ; 0x0e04
    shl ax, 1                        ; 0x0e07
    mov bx, ax                       ; 0x0e09
    mov bx, word [bx - 0x7b7e]       ; 0x0e0b
    pop ax                           ; 0x0e0f
    mov byte [bx + si + 0x23], al    ; 0x0e10
    mov ax, 0x2c                     ; 0x0e13
    imul word [bp - 0x0002]          ; 0x0e16
    mov si, ax                       ; 0x0e19
    mov ax, word [bp - 0x0004]       ; 0x0e1b
    shl ax, 1                        ; 0x0e1e
    mov bx, ax                       ; 0x0e20
    mov bx, word [bx - 0x7b7e]       ; 0x0e22
    mov byte [bx + si + 0x2a], 0xff  ; 0x0e26
    mov ax, 0x2c                     ; 0x0e2a
    imul word [bp - 0x0002]          ; 0x0e2d
    mov si, ax                       ; 0x0e30
    mov ax, word [bp - 0x0004]       ; 0x0e32
    shl ax, 1                        ; 0x0e35
    mov bx, ax                       ; 0x0e37
    mov bx, word [bx - 0x7b7e]       ; 0x0e39
    mov byte [bx + si + 0x1f], 1     ; 0x0e3d
    mov ax, 0x248                    ; 0x0e41
    imul word [bp - 0x0002]          ; 0x0e44
    mov bx, ax                       ; 0x0e47
    cmp byte [bx + 0x5d82], 0        ; 0x0e49
    jbe short @..api_idx_0004_4.l5   ; 0x0e4e
    mov ax, 0x2c                     ; 0x0e50
    imul word [bp - 0x0002]          ; 0x0e53
    mov si, ax                       ; 0x0e56
    mov ax, word [bp - 0x0004]       ; 0x0e58
    shl ax, 1                        ; 0x0e5b
    mov bx, ax                       ; 0x0e5d
    mov bx, word [bx - 0x7b7e]       ; 0x0e5f
    mov al, byte [bx + si + 0x28]    ; 0x0e63
    cbw                              ; 0x0e66
