api_idx_009a:
    mov ax, 0xff66                   ; 0x6f62
    call ds_dispatch_f40b            ; 0x6f65
    mov ax, 0                        ; 0x6f68
    push ax                          ; 0x6f6b
    mov bx, word [bp + 0x6]          ; 0x6f6c
    push word [bx]                   ; 0x6f6f
    lea ax, word [bp - 0x004a]       ; 0x6f71
    push ax                          ; 0x6f74
    mov ax, 1                        ; 0x6f75
    push ax                          ; 0x6f78
    call ds_dispatch_b63c            ; 0x6f79
    add sp, byte 8                   ; 0x6f7c
    mov bx, word [bp + 0x6]          ; 0x6f7f
    cmp byte [bx + 0x6], 0           ; 0x6f82
    je short @..api_idx_009a.l1      ; 0x6f86
    mov al, byte [bx + 0x6]          ; 0x6f88
    cmp al, 0x63                     ; 0x6f8b
    ja short @..api_idx_009a.l1      ; 0x6f8d
    mov ax, word [bp + 0x8]          ; 0x6f8f
    shl ax, 1                        ; 0x6f92
    push ax                          ; 0x6f94
    mov al, byte [bp - 0x000f]       ; 0x6f95
    sub ah, ah                       ; 0x6f98
    mov cx, ax                       ; 0x6f9a
    pop ax                           ; 0x6f9c
    cmp ax, cx                       ; 0x6f9d
    jl short @..api_idx_009a.l1      ; 0x6f9f
    cmp word [bp - 0x0028], byte 0   ; 0x6fa1
    je short @..api_idx_009a.l1      ; 0x6fa5
    cmp byte [bp - 0x000c], 0        ; 0x6fa7
    jne short @..api_idx_009a.l1     ; 0x6fab
    cmp byte [bp - 0x000b], 0        ; 0x6fad
    jne short @..api_idx_009a.l1     ; 0x6fb1
    mov al, byte [bp - 0x0013]       ; 0x6fb3
    sub ah, ah                       ; 0x6fb6
    test ax, data_0002               ; 0x6fb8
    jne short @..api_idx_009a.l1     ; 0x6fbb
    mov al, byte [bp - 0x0012]       ; 0x6fbd
    sub ah, ah                       ; 0x6fc0
    mov bx, ax                       ; 0x6fc2
    cmp byte [bx + 0x60e], 1         ; 0x6fc4
    je short @..api_idx_009a.l1      ; 0x6fc9
    cmp byte [bp - 0x0012], 0xd      ; 0x6fcb
    jne short @..api_idx_009a.l2     ; 0x6fcf
@..api_idx_009a.l1:
    lea ax, word [bp - 0x009a]       ; 0x6fd1
    push ax                          ; 0x6fd5
    mov ax, 0x1d1                    ; 0x6fd6
    push ax                          ; 0x6fd9
    call ds_dispatch_b53b            ; 0x6fda
    add sp, byte 4                   ; 0x6fdd
    mov ax, 1                        ; 0x6fe0
    push ax                          ; 0x6fe3
    lea ax, word [bp - 0x009a]       ; 0x6fe4
    push ax                          ; 0x6fe8
    call api_idx_0004                ; 0x6fe9
    add sp, byte 4                   ; 0x6fec
    ret                              ; 0x6fef
