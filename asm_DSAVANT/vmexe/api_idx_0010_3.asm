api_idx_0010_3:
    mov ax, 0xfff0                   ; 0x9a2f
    call ds_dispatch_f40b            ; 0x9a32
    push word [data_8462]            ; 0x9a35
    push word [data_8464]            ; 0x9a39
    mov ax, 0x90e6                   ; 0x9a3d
    push ax                          ; 0x9a40
    call loc_15ab                    ; 0x9a41
    add sp, byte 6                   ; 0x9a44
    mov ax, data_9136                ; 0x9a47
    push ax                          ; 0x9a4a
    mov ax, 0xdbd                    ; 0x9a4b
    push ax                          ; 0x9a4e
    call ds_dispatch_b53b            ; 0x9a4f
    add sp, byte 4                   ; 0x9a52
    mov byte [data_9186], 0          ; 0x9a55
    mov bx, word [bp + 0x4]          ; 0x9a5a
    mov ax, word [bx]                ; 0x9a5d
    add ax, strict word 0x5a         ; 0x9a5f
    mov word [bp - 0x000e], ax       ; 0x9a62
    cmp word [data_8464], byte 0     ; 0x9a65
    jne short @..api_idx_0010_3.l3   ; 0x9a6a
    mov word [bp - 0x0002], 1        ; 0x9a6c
    jmp short @..api_idx_0010_3.l2   ; 0x9a71
@..api_idx_0010_3.l1:
    mov ax, word [bp - 0x0002]       ; 0x9a73
    shl ax, 1                        ; 0x9a76
    mov bx, ax                       ; 0x9a78
    mov bx, word [bx - 0x7b70]       ; 0x9a7a
    mov al, byte [bx + 0x80]         ; 0x9a7e
    sub ah, ah                       ; 0x9a82
    push ax                          ; 0x9a84
    mov ax, word [bp - 0x0002]       ; 0x9a85
    shl ax, 1                        ; 0x9a88
    mov bx, ax                       ; 0x9a8a
    mov bx, word [bx - 0x7b7e]       ; 0x9a8c
    mov al, byte [bx + 0x1a1]        ; 0x9a90
    sub ah, ah                       ; 0x9a94
    mov cx, ax                       ; 0x9a96
    pop ax                           ; 0x9a98
    imul cx                          ; 0x9a99
    mov cx, ax                       ; 0x9a9b
    mov ax, word [bp - 0x000e]       ; 0x9a9d
    sub ax, cx                       ; 0x9aa0
    push ax                          ; 0x9aa2
    mov ax, word [bp - 0x0002]       ; 0x9aa3
    shl ax, 1                        ; 0x9aa6
    mov bx, ax                       ; 0x9aa8
    mov bx, word [bx - 0x7b70]       ; 0x9aaa
    mov al, byte [bx + 0x8f]         ; 0x9aae
    sub ah, ah                       ; 0x9ab2
    mov cx, ax                       ; 0x9ab4
    mov ax, word [data_8464]         ; 0x9ab6
    shl ax, 1                        ; 0x9ab9
    mov bx, ax                       ; 0x9abb
    mov bx, word [bx - 0x7b70]       ; 0x9abd
    mov al, byte [bx + 0x8f]         ; 0x9ac1
    sub ah, ah                       ; 0x9ac5
    mov dx, ax                       ; 0x9ac7
    sub cx, ax                       ; 0x9ac9
    shl cx, 1                        ; 0x9acb
    pop ax                           ; 0x9acd
    sub ax, cx                       ; 0x9ace
    mov word [bp - 0x000e], ax       ; 0x9ad0
    inc word [bp - 0x0002]           ; 0x9ad3
@..api_idx_0010_3.l2:
    mov ax, word [bp - 0x0002]       ; 0x9ad6
    cmp ax, word [data_8466]         ; 0x9ad9
    jle short @..api_idx_0010_3.l1   ; 0x9add
    jmp short @..api_idx_0010_3.l4   ; 0x9adf
@..api_idx_0010_3.l3:
    mov bx, word [bp + 0x4]          ; 0x9ae1
    mov al, byte [bx + 0x20]         ; 0x9ae4
    sub ah, ah                       ; 0x9ae7
    mov cx, 0x2c                     ; 0x9ae9
    imul cx                          ; 0x9aec
    mov si, ax                       ; 0x9aee
    mov al, byte [bx + 0x1f]         ; 0x9af0
    sub ah, ah                       ; 0x9af3
    shl ax, 1                        ; 0x9af5
    mov bx, ax                       ; 0x9af7
    mov bx, word [bx - 0x7b7e]       ; 0x9af9
    mov cx, word [bx + si]           ; 0x9afd
    mov ax, word [bp - 0x000e]       ; 0x9aff
    sub ax, cx                       ; 0x9b02
    push ax                          ; 0x9b04
    mov bx, word [bp + 0x4]          ; 0x9b05
    mov al, byte [bx + 0x1f]         ; 0x9b08
    sub ah, ah                       ; 0x9b0b
    shl ax, 1                        ; 0x9b0d
    mov bx, ax                       ; 0x9b0f
    mov bx, word [bx - 0x7b70]       ; 0x9b11
    mov al, byte [bx + 0x8f]         ; 0x9b15
    sub ah, ah                       ; 0x9b19
    mov cx, ax                       ; 0x9b1b
    mov ax, word [data_8464]         ; 0x9b1d
    shl ax, 1                        ; 0x9b20
    mov bx, ax                       ; 0x9b22
    mov bx, word [bx - 0x7b70]       ; 0x9b24
    mov al, byte [bx + 0x8f]         ; 0x9b28
    sub ah, ah                       ; 0x9b2c
    mov dx, ax                       ; 0x9b2e
    sub cx, ax                       ; 0x9b30
    shl cx, 1                        ; 0x9b32
    pop ax                           ; 0x9b34
    sub ax, cx                       ; 0x9b35
    mov word [bp - 0x000e], ax       ; 0x9b37
    mov al, byte [bx + 0xe2]         ; 0x9b3a
    sub ah, ah                       ; 0x9b3e
    test ax, 8                       ; 0x9b40
    je short @..api_idx_0010_3.l4    ; 0x9b43
    mov ax, data_9136                ; 0x9b45
    push ax                          ; 0x9b48
    mov ax, 0xdc5                    ; 0x9b49
    push ax                          ; 0x9b4c
    call ds_dispatch_b53b            ; 0x9b4d
    add sp, byte 4                   ; 0x9b50
@..api_idx_0010_3.l4:
    cmp word [data_845a], byte 1     ; 0x9b53
    jne short @..api_idx_0010_3.l5   ; 0x9b58
    mov word [bp - 0x000e], 0        ; 0x9b5a
@..api_idx_0010_3.l5:
    mov ax, 0                        ; 0x9b5f
    push ax                          ; 0x9b62
    mov ax, 0x43                     ; 0x9b63
    push ax                          ; 0x9b66
    cmp word [data_8464], byte 0     ; 0x9b67
    jne short @..api_idx_0010_3.l6   ; 0x9b6c
    mov ax, 1                        ; 0x9b6e
@..api_idx_0010_3.l6:
    push ax                          ; 0x9b71
    mov ax, data_9186                ; 0x9b72
    push ax                          ; 0x9b75
    mov ax, data_9136                ; 0x9b76
    push ax                          ; 0x9b79
    mov ax, 0x90e6                   ; 0x9b7a
    push ax                          ; 0x9b7d
    mov ax, 0                        ; 0x9b7e
    push ax                          ; 0x9b81
    call api_idx_0004_4              ; 0x9b82
    add sp, byte 0x0e                ; 0x9b85
    mov ax, word [data_9058]         ; 0x9b88
    mov cx, 2                        ; 0x9b8b
    cwd                              ; 0x9b8e
    idiv cx                          ; 0x9b8f
    push ax                          ; 0x9b91
    call api_idx_0004_5              ; 0x9b92
    pop cx                           ; 0x9b95
    mov ax, 0x64                     ; 0x9b96
    push ax                          ; 0x9b99
    call ds_dispatch_b7a9            ; 0x9b9a
    pop cx                           ; 0x9b9d
    cmp ax, word [bp - 0x000e]       ; 0x9b9e
    jl short @..api_idx_0010_3.l7    ; 0x9ba1
    jmp near @..api_idx_0010_3.l26   ; 0x9ba3
@..api_idx_0010_3.l7:
    cmp word [data_8464], byte 0     ; 0x9ba6
    je short @..api_idx_0010_3.l8    ; 0x9bab
    mov ax, word [data_8464]         ; 0x9bad
    cmp ax, strict word 6            ; 0x9bb0
    je short @..api_idx_0010_3.l8    ; 0x9bb3
    shl ax, 1                        ; 0x9bb5
    mov bx, ax                       ; 0x9bb7
    mov bx, word [bx - 0x7b70]       ; 0x9bb9
    mov al, byte [bx + 0xe2]         ; 0x9bbd
    sub ah, ah                       ; 0x9bc1
    test ax, 1                       ; 0x9bc3
    je short @..api_idx_0010_3.l8    ; 0x9bc6
    mov word [data_84a0], 0          ; 0x9bc8
@..api_idx_0010_3.l8:
    mov bx, word [bp + 0x4]          ; 0x9bce
    mov byte [bx + 0x2b], 2          ; 0x9bd1
    mov ax, 2                        ; 0x9bd5
    push ax                          ; 0x9bd8
    mov ax, 0x43                     ; 0x9bd9
    push ax                          ; 0x9bdc
    mov ax, 0xdc2                    ; 0x9bdd
    push ax                          ; 0x9be0
    call api_idx_0050                ; 0x9be1
    add sp, byte 6                   ; 0x9be4
    mov bx, word [bp + 0x4]          ; 0x9be7
    cmp byte [bx + 0x2a], 0xff       ; 0x9bea
    jne short @..api_idx_0010_3.l9   ; 0x9bee
    jmp near @..api_idx_0010_3.l24   ; 0x9bf0
@..api_idx_0010_3.l9:
    mov al, byte [bx + 0x2a]         ; 0x9bf3
    cbw                              ; 0x9bf6
    mov cx, 0xa                      ; 0x9bf7
    cwd                              ; 0x9bfa
    idiv cx                          ; 0x9bfb
    mov word [bp - 0x0008], ax       ; 0x9bfd
    mov al, byte [bx + 0x2a]         ; 0x9c00
    cbw                              ; 0x9c03
    cwd                              ; 0x9c04
    idiv cx                          ; 0x9c05
    mov word [bp - 0x000a], dx       ; 0x9c07
    call loc_1849                    ; 0x9c0a
    mov word [bp - 0x0010], ax       ; 0x9c0d
    mov word [bp - 0x0002], 0        ; 0x9c10
@..api_idx_0010_3.l10:
    mov word [data_845e], 0xfffe     ; 0x9c15
    call api_idx_0006                ; 0x9c1b
    mov word [bp - 0x0004], 0        ; 0x9c1e
@..api_idx_0010_3.l11:
    mov word [bp - 0x0006], 0        ; 0x9c23
@..api_idx_0010_3.l12:
    mov ax, word [bp - 0x0006]       ; 0x9c28
    mov cx, 2                        ; 0x9c2b
    cwd                              ; 0x9c2e
