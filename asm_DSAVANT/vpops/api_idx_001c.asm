api_idx_001c:
    mov ax, 0xffe4                   ; 0x0b31
    call ds_dispatch_f40b            ; 0x0b34
    mov byte [bp - 0x001c], 0        ; 0x0b37
    mov ax, 6                        ; 0x0b3b
    imul word [bp + 0x4]             ; 0x0b3e
    mov cx, word [bp + 0x6]          ; 0x0b41
    shl cx, 1                        ; 0x0b44
    add ax, cx                       ; 0x0b46
    mov bx, ax                       ; 0x0b48
    mov ax, word [bx - 0x7bc6]       ; 0x0b4a
    mov cx, 0xa                      ; 0x0b4e
    cwd                              ; 0x0b51
    idiv cx                          ; 0x0b52
    mov word [bp - 0x0002], ax       ; 0x0b54
    mov word [bp - 0x0004], dx       ; 0x0b57
    cmp ax, strict word 1            ; 0x0b5a
    jl short @..api_idx_001c.l1      ; 0x0b5d
    cmp ax, strict word 3            ; 0x0b5f
    jg short @..api_idx_001c.l1      ; 0x0b62
    mov ax, word [bp + 0x4]          ; 0x0b64
    cmp ax, word [dseg_8454]         ; 0x0b67
    jle short @..api_idx_001c.l2     ; 0x0b6b
@..api_idx_001c.l1:
    ret                              ; 0x0b6d
@..api_idx_001c.l2:
    mov ax, word [bp - 0x0002]       ; 0x0b6e
    shl ax, 1                        ; 0x0b71
    mov bx, ax                       ; 0x0b73
    mov bx, word [bx - 0x7b7e]       ; 0x0b75
    cmp byte [bx + 0x19f], 0xff      ; 0x0b79
    jne short @..api_idx_001c.l3     ; 0x0b7e
    ret                              ; 0x0b80
@..api_idx_001c.l3:
    mov al, byte [bx + 0x19f]        ; 0x0b81
    cbw                              ; 0x0b85
    mov word [bp - 0x0006], ax       ; 0x0b86
    lea ax, word [bp - 0x001c]       ; 0x0b89
    push ax                          ; 0x0b8c
    push word [bp + 0x10]            ; 0x0b8d
    push word [bp + 0x6]             ; 0x0b90
    push word [bp + 0x4]             ; 0x0b93
    push dx                          ; 0x0b96
    push word [bp - 0x0002]          ; 0x0b97
    call api_idx_000e                ; 0x0b9a
    add sp, byte 0x0c                ; 0x0b9d
    cmp byte [bp - 0x001c], 0        ; 0x0ba0
    jne short @..api_idx_001c.l4     ; 0x0ba4
    ret                              ; 0x0ba6
@..api_idx_001c.l4:
    mov ax, word [bp + 0x6]          ; 0x0ba7
    mov cx, 2                        ; 0x0baa
    cwd                              ; 0x0bad
    idiv cx                          ; 0x0bae
    mov word [bp - 0x0008], dx       ; 0x0bb0
    mov al, byte [bp - 0x001c]       ; 0x0bb3
    sub ah, ah                       ; 0x0bb6
    mov word [bp - 0x000a], ax       ; 0x0bb8
    mov ax, 0x15e                    ; 0x0bbb
    imul word [bp - 0x0006]          ; 0x0bbe
    mov bx, ax                       ; 0x0bc1
    cmp byte [bx + 0x6b75], 0        ; 0x0bc3
    je short @..api_idx_001c.l5      ; 0x0bc8
    mov word [bp + 0x8], 0           ; 0x0bca
@..api_idx_001c.l5:
    mov cx, word [bp - 0x000a]       ; 0x0bcf
    shl cx, 1                        ; 0x0bd2
    shl cx, 1                        ; 0x0bd4
    add ax, cx                       ; 0x0bd6
    mov bx, ax                       ; 0x0bd8
    mov al, byte [bx + 0x6abf]       ; 0x0bda
    sub ah, ah                       ; 0x0bde
    mov word [bp - 0x000c], ax       ; 0x0be0
    cmp word [bp - 0x000c], byte 0   ; 0x0be3
    jne short @..api_idx_001c.l6     ; 0x0be7
    mov ax, 6                        ; 0x0be9
    imul word [bp + 0x4]             ; 0x0bec
    mov cx, word [bp + 0x6]          ; 0x0bef
    shl cx, 1                        ; 0x0bf2
    add ax, cx                       ; 0x0bf4
    mov bx, ax                       ; 0x0bf6
    mov ax, word [bx + 0x5b6]        ; 0x0bf8
    sub ax, word [bp - 0x0002]       ; 0x0bfc
    mov word [bp - 0x000c], ax       ; 0x0bff
    jmp short @..api_idx_001c.l8     ; 0x0c02
@..api_idx_001c.l6:
    mov ax, 0x64                     ; 0x0c04
    push ax                          ; 0x0c07
    mov ax, 5                        ; 0x0c08
    push ax                          ; 0x0c0b
    mov ax, 0xa                      ; 0x0c0c
    imul word [bp + 0x4]             ; 0x0c0f
    mov cx, ax                       ; 0x0c12
    mov ax, 0                        ; 0x0c14
    cmp word [bp + 0x6], byte 0      ; 0x0c17
    jne short @..api_idx_001c.l7     ; 0x0c1b
    mov ax, 5                        ; 0x0c1d
@..api_idx_001c.l7:
    add cx, ax                       ; 0x0c20
    mov ax, word [bp - 0x000c]       ; 0x0c22
    sub ax, cx                       ; 0x0c25
    push ax                          ; 0x0c27
    call ds_dispatch_b7c2            ; 0x0c28
    add sp, byte 6                   ; 0x0c2b
    mov word [bp - 0x000c], ax       ; 0x0c2e
@..api_idx_001c.l8:
    mov ax, word [bp + 0xe]          ; 0x0c31
    dec ax                           ; 0x0c34
    push ax                          ; 0x0c35
    mov ax, 0                        ; 0x0c36
    push ax                          ; 0x0c39
    mov ax, 0x15e                    ; 0x0c3a
    imul word [bp - 0x0006]          ; 0x0c3d
    push ax                          ; 0x0c40
    mov ax, word [bp - 0x0008]       ; 0x0c41
    mov cx, 2                        ; 0x0c44
    cwd                              ; 0x0c47
    idiv cx                          ; 0x0c48
    mov cx, dx                       ; 0x0c4a
    pop ax                           ; 0x0c4c
    add ax, cx                       ; 0x0c4d
    mov cx, word [bp - 0x000a]       ; 0x0c4f
    shl cx, 1                        ; 0x0c52
    add ax, cx                       ; 0x0c54
    mov bx, ax                       ; 0x0c56
    mov al, byte [bx + 0x6a52]       ; 0x0c58
    sub ah, ah                       ; 0x0c5c
    push ax                          ; 0x0c5e
    mov ax, 0x15e                    ; 0x0c5f
    imul word [bp - 0x0006]          ; 0x0c62
    mov cx, word [bp + 0x6]          ; 0x0c65
    shl cx, 1                        ; 0x0c68
    add ax, cx                       ; 0x0c6a
    mov bx, ax                       ; 0x0c6c
    mov al, byte [bx + 0x6b60]       ; 0x0c6e
    cbw                              ; 0x0c72
    mov cx, ax                       ; 0x0c73
    pop ax                           ; 0x0c75
    add ax, cx                       ; 0x0c76
    push ax                          ; 0x0c78
    call ds_dispatch_b7c2            ; 0x0c79
    add sp, byte 6                   ; 0x0c7c
    mov word [bp - 0x000e], ax       ; 0x0c7f
    mov ax, 0x15e                    ; 0x0c82
    imul word [bp - 0x0006]          ; 0x0c85
    add ax, word [bp - 0x000a]       ; 0x0c88
    mov bx, ax                       ; 0x0c8b
    mov al, byte [bx + 0x6a9b]       ; 0x0c8d
    sub ah, ah                       ; 0x0c91
    push ax                          ; 0x0c93
    mov ax, 0x15e                    ; 0x0c94
    imul word [bp - 0x0006]          ; 0x0c97
    mov cx, word [bp + 0x6]          ; 0x0c9a
    shl cx, 1                        ; 0x0c9d
    add ax, cx                       ; 0x0c9f
    mov bx, ax                       ; 0x0ca1
    mov al, byte [bx + 0x6b61]       ; 0x0ca3
    cbw                              ; 0x0ca7
    mov cx, ax                       ; 0x0ca8
    pop ax                           ; 0x0caa
    add ax, cx                       ; 0x0cab
    mov word [bp - 0x0010], ax       ; 0x0cad
    cmp word [dseg_8466], byte 1     ; 0x0cb0
    jne short @..api_idx_001c.l9     ; 0x0cb5
    mov bx, word [dseg_8484]         ; 0x0cb7
    cmp byte [bx + 0x1a1], 1         ; 0x0cbb
    jne short @..api_idx_001c.l9     ; 0x0cc0
    cmp word [bp + 0x4], byte 0      ; 0x0cc2
    jne short @..api_idx_001c.l9     ; 0x0cc6
    mov word [bp + 0xa], 0           ; 0x0cc8
@..api_idx_001c.l9:
    mov ax, 0xa0                     ; 0x0ccd
    sub ax, word [bp - 0x000e]       ; 0x0cd0
    imul word [bp + 0xa]             ; 0x0cd3
    mov cx, 0x64                     ; 0x0cd6
    cwd                              ; 0x0cd9
    idiv cx                          ; 0x0cda
    add word [bp - 0x000e], ax       ; 0x0cdc
    mov ax, word [bp - 0x0008]       ; 0x0cdf
    mov cx, 2                        ; 0x0ce2
    cwd                              ; 0x0ce5
    idiv cx                          ; 0x0ce6
    mov ax, dx                       ; 0x0ce8
    test ax, ax                      ; 0x0cea
    je short @..api_idx_001c.l10     ; 0x0cec
    mov ax, 0x15e                    ; 0x0cee
    imul word [bp - 0x0006]          ; 0x0cf1
    mov cx, ax                       ; 0x0cf4
    mov ax, word [bp - 0x0008]       ; 0x0cf6
    mov bx, 2                        ; 0x0cf9
    cwd                              ; 0x0cfc
    idiv bx                          ; 0x0cfd
    mov ax, dx                       ; 0x0cff
    add cx, ax                       ; 0x0d01
    mov ax, cx                       ; 0x0d03
    mov cx, word [bp - 0x000a]       ; 0x0d05
    shl cx, 1                        ; 0x0d08
    add ax, cx                       ; 0x0d0a
    mov bx, ax                       ; 0x0d0c
    mov al, byte [bx + 0x6a52]       ; 0x0d0e
    sub ah, ah                       ; 0x0d12
    mov cx, ax                       ; 0x0d14
    mov ax, 0xa0                     ; 0x0d16
    sub ax, cx                       ; 0x0d19
    shl ax, 1                        ; 0x0d1b
    imul word [bp + 0xa]             ; 0x0d1d
    mov cx, 0x64                     ; 0x0d20
    cwd                              ; 0x0d23
    idiv cx                          ; 0x0d24
    sub word [bp - 0x000e], ax       ; 0x0d26
@..api_idx_001c.l10:
    mov ax, word [bp + 0xe]          ; 0x0d29
    dec ax                           ; 0x0d2c
    push ax                          ; 0x0d2d
    mov ax, 0                        ; 0x0d2e
    push ax                          ; 0x0d31
    mov ax, word [bp - 0x000e]       ; 0x0d32
    add ax, word [bp + 0x8]          ; 0x0d35
    push ax                          ; 0x0d38
    call ds_dispatch_b7c2            ; 0x0d39
    add sp, byte 6                   ; 0x0d3c
    mov word [bp - 0x000e], ax       ; 0x0d3f
    mov ax, 0x3d                     ; 0x0d42
    sub ax, word [bp - 0x0010]       ; 0x0d45
    imul word [bp + 0xa]             ; 0x0d48
    mov cx, 0x64                     ; 0x0d4b
    cwd                              ; 0x0d4e
    idiv cx                          ; 0x0d4f
    add word [bp - 0x0010], ax       ; 0x0d51
    lea ax, word [bp - 0x001c]       ; 0x0d54
    push ax                          ; 0x0d57
    push word [bp + 0xa]             ; 0x0d58
    push word [bp - 0x0008]          ; 0x0d5b
    push word [bp + 0xe]             ; 0x0d5e
    push word [bp + 0xc]             ; 0x0d61
    push word [bp - 0x0010]          ; 0x0d64
    push word [bp - 0x000e]          ; 0x0d67
    push word [bp - 0x0006]          ; 0x0d6a
    push word [bp - 0x000c]          ; 0x0d6d
    call api_idx_0004                ; 0x0d70
    add sp, byte 0x12                ; 0x0d73
    ret                              ; 0x0d76
