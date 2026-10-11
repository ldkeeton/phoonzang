api_idx_001c:
    mov ax, 0xffe4                   ; 0x0a83
    call ds_dispatch_f40b            ; 0x0a86
    mov byte [bp - 0x001c], 0        ; 0x0a89
    mov ax, 6                        ; 0x0a8d
    imul word [bp + 0x4]             ; 0x0a90
    mov cx, word [bp + 0x6]          ; 0x0a93
    shl cx, 1                        ; 0x0a96
    add ax, cx                       ; 0x0a98
    mov bx, ax                       ; 0x0a9a
    mov ax, word [bx - 0x7bc6]       ; 0x0a9c
    mov cx, 0xa                      ; 0x0aa0
    cwd                              ; 0x0aa3
    idiv cx                          ; 0x0aa4
    mov word [bp - 0x0002], ax       ; 0x0aa6
    mov word [bp - 0x0004], dx       ; 0x0aa9
    cmp ax, strict word 1            ; 0x0aac
    jl short @..api_idx_001c.l1      ; 0x0aaf
    cmp ax, strict word 3            ; 0x0ab1
    jg short @..api_idx_001c.l1      ; 0x0ab4
    mov ax, word [bp + 0x4]          ; 0x0ab6
    cmp ax, word [dseg_8454]         ; 0x0ab9
    jle short @..api_idx_001c.l2     ; 0x0abd
@..api_idx_001c.l1:
    ret                              ; 0x0abf
@..api_idx_001c.l2:
    mov ax, word [bp - 0x0002]       ; 0x0ac0
    shl ax, 1                        ; 0x0ac3
    mov bx, ax                       ; 0x0ac5
    mov bx, word [bx - 0x7b7e]       ; 0x0ac7
    cmp byte [bx + 0x19f], 0xff      ; 0x0acb
    jne short @..api_idx_001c.l3     ; 0x0ad0
    ret                              ; 0x0ad2
@..api_idx_001c.l3:
    mov al, byte [bx + 0x19f]        ; 0x0ad3
    cbw                              ; 0x0ad7
    mov word [bp - 0x0006], ax       ; 0x0ad8
    lea ax, word [bp - 0x001c]       ; 0x0adb
    push ax                          ; 0x0ade
    push word [bp + 0x10]            ; 0x0adf
    push word [bp + 0x6]             ; 0x0ae2
    push word [bp + 0x4]             ; 0x0ae5
    push dx                          ; 0x0ae8
    push word [bp - 0x0002]          ; 0x0ae9
    call api_idx_000e                ; 0x0aec
    add sp, byte 0x0c                ; 0x0aef
    cmp byte [bp - 0x001c], 0        ; 0x0af2
    jne short @..api_idx_001c.l4     ; 0x0af6
    ret                              ; 0x0af8
@..api_idx_001c.l4:
    mov ax, word [bp + 0x6]          ; 0x0af9
    mov cx, 2                        ; 0x0afc
    cwd                              ; 0x0aff
    idiv cx                          ; 0x0b00
    mov word [bp - 0x0008], dx       ; 0x0b02
    mov al, byte [bp - 0x001c]       ; 0x0b05
    sub ah, ah                       ; 0x0b08
    mov word [bp - 0x000a], ax       ; 0x0b0a
    mov ax, 0x15e                    ; 0x0b0d
    imul word [bp - 0x0006]          ; 0x0b10
    mov bx, ax                       ; 0x0b13
    cmp byte [bx + 0x6b75], 0        ; 0x0b15
    je short @..api_idx_001c.l5      ; 0x0b1a
    mov word [bp + 0x8], 0           ; 0x0b1c
@..api_idx_001c.l5:
    mov cx, word [bp - 0x000a]       ; 0x0b21
    shl cx, 1                        ; 0x0b24
    shl cx, 1                        ; 0x0b26
    add ax, cx                       ; 0x0b28
    mov bx, ax                       ; 0x0b2a
    mov al, byte [bx + 0x6abf]       ; 0x0b2c
    sub ah, ah                       ; 0x0b30
    mov word [bp - 0x000c], ax       ; 0x0b32
    cmp word [bp - 0x000c], byte 0   ; 0x0b35
    jne short @..api_idx_001c.l6     ; 0x0b39
    mov ax, 6                        ; 0x0b3b
    imul word [bp + 0x4]             ; 0x0b3e
    mov cx, word [bp + 0x6]          ; 0x0b41
    shl cx, 1                        ; 0x0b44
    add ax, cx                       ; 0x0b46
    mov bx, ax                       ; 0x0b48
    mov ax, word [bx + 0x5b6]        ; 0x0b4a
    sub ax, word [bp - 0x0002]       ; 0x0b4e
    mov word [bp - 0x000c], ax       ; 0x0b51
    jmp short @..api_idx_001c.l8     ; 0x0b54
@..api_idx_001c.l6:
    mov ax, 0x64                     ; 0x0b56
    push ax                          ; 0x0b59
    mov ax, 5                        ; 0x0b5a
    push ax                          ; 0x0b5d
    mov ax, 0xa                      ; 0x0b5e
    imul word [bp + 0x4]             ; 0x0b61
    mov cx, ax                       ; 0x0b64
    mov ax, 0                        ; 0x0b66
    cmp word [bp + 0x6], byte 0      ; 0x0b69
    jne short @..api_idx_001c.l7     ; 0x0b6d
    mov ax, 5                        ; 0x0b6f
@..api_idx_001c.l7:
    add cx, ax                       ; 0x0b72
    mov ax, word [bp - 0x000c]       ; 0x0b74
    sub ax, cx                       ; 0x0b77
    push ax                          ; 0x0b79
    call ds_dispatch_b7c2            ; 0x0b7a
    add sp, byte 6                   ; 0x0b7d
    mov word [bp - 0x000c], ax       ; 0x0b80
@..api_idx_001c.l8:
    mov ax, word [bp + 0xe]          ; 0x0b83
    dec ax                           ; 0x0b86
    push ax                          ; 0x0b87
    mov ax, 0                        ; 0x0b88
    push ax                          ; 0x0b8b
    mov ax, 0x15e                    ; 0x0b8c
    imul word [bp - 0x0006]          ; 0x0b8f
    push ax                          ; 0x0b92
    mov ax, word [bp - 0x0008]       ; 0x0b93
    mov cx, 2                        ; 0x0b96
    cwd                              ; 0x0b99
    idiv cx                          ; 0x0b9a
    mov cx, dx                       ; 0x0b9c
    pop ax                           ; 0x0b9e
    add ax, cx                       ; 0x0b9f
    mov cx, word [bp - 0x000a]       ; 0x0ba1
    shl cx, 1                        ; 0x0ba4
    add ax, cx                       ; 0x0ba6
    mov bx, ax                       ; 0x0ba8
    mov al, byte [bx + 0x6a52]       ; 0x0baa
    sub ah, ah                       ; 0x0bae
    push ax                          ; 0x0bb0
    mov ax, 0x15e                    ; 0x0bb1
    imul word [bp - 0x0006]          ; 0x0bb4
    mov cx, word [bp + 0x6]          ; 0x0bb7
    shl cx, 1                        ; 0x0bba
    add ax, cx                       ; 0x0bbc
    mov bx, ax                       ; 0x0bbe
    mov al, byte [bx + 0x6b60]       ; 0x0bc0
    cbw                              ; 0x0bc4
    mov cx, ax                       ; 0x0bc5
    pop ax                           ; 0x0bc7
    add ax, cx                       ; 0x0bc8
    push ax                          ; 0x0bca
    call ds_dispatch_b7c2            ; 0x0bcb
    add sp, byte 6                   ; 0x0bce
    mov word [bp - 0x000e], ax       ; 0x0bd1
    mov ax, 0x15e                    ; 0x0bd4
    imul word [bp - 0x0006]          ; 0x0bd7
    add ax, word [bp - 0x000a]       ; 0x0bda
    mov bx, ax                       ; 0x0bdd
    mov al, byte [bx + 0x6a9b]       ; 0x0bdf
    sub ah, ah                       ; 0x0be3
    push ax                          ; 0x0be5
    mov ax, 0x15e                    ; 0x0be6
    imul word [bp - 0x0006]          ; 0x0be9
    mov cx, word [bp + 0x6]          ; 0x0bec
    shl cx, 1                        ; 0x0bef
    add ax, cx                       ; 0x0bf1
    mov bx, ax                       ; 0x0bf3
    mov al, byte [bx + 0x6b61]       ; 0x0bf5
    cbw                              ; 0x0bf9
    mov cx, ax                       ; 0x0bfa
    pop ax                           ; 0x0bfc
    add ax, cx                       ; 0x0bfd
    mov word [bp - 0x0010], ax       ; 0x0bff
    cmp word [dseg_8466], byte 1     ; 0x0c02
    jne short @..api_idx_001c.l9     ; 0x0c07
    mov bx, word [dseg_8484]         ; 0x0c09
    cmp byte [bx + 0x1a1], 1         ; 0x0c0d
    jne short @..api_idx_001c.l9     ; 0x0c12
    cmp word [bp + 0x4], byte 0      ; 0x0c14
    jne short @..api_idx_001c.l9     ; 0x0c18
    mov word [bp + 0xa], 0           ; 0x0c1a
@..api_idx_001c.l9:
    mov ax, 0xa0                     ; 0x0c1f
    sub ax, word [bp - 0x000e]       ; 0x0c22
    imul word [bp + 0xa]             ; 0x0c25
    mov cx, 0x64                     ; 0x0c28
    cwd                              ; 0x0c2b
    idiv cx                          ; 0x0c2c
    add word [bp - 0x000e], ax       ; 0x0c2e
    mov ax, word [bp - 0x0008]       ; 0x0c31
    mov cx, 2                        ; 0x0c34
    cwd                              ; 0x0c37
    idiv cx                          ; 0x0c38
    mov ax, dx                       ; 0x0c3a
    test ax, ax                      ; 0x0c3c
    je short @..api_idx_001c.l10     ; 0x0c3e
    mov ax, 0x15e                    ; 0x0c40
    imul word [bp - 0x0006]          ; 0x0c43
    mov cx, ax                       ; 0x0c46
    mov ax, word [bp - 0x0008]       ; 0x0c48
    mov bx, 2                        ; 0x0c4b
    cwd                              ; 0x0c4e
    idiv bx                          ; 0x0c4f
    mov ax, dx                       ; 0x0c51
    add cx, ax                       ; 0x0c53
    mov ax, cx                       ; 0x0c55
    mov cx, word [bp - 0x000a]       ; 0x0c57
    shl cx, 1                        ; 0x0c5a
    add ax, cx                       ; 0x0c5c
    mov bx, ax                       ; 0x0c5e
    mov al, byte [bx + 0x6a52]       ; 0x0c60
    sub ah, ah                       ; 0x0c64
    mov cx, ax                       ; 0x0c66
    mov ax, 0xa0                     ; 0x0c68
    sub ax, cx                       ; 0x0c6b
    shl ax, 1                        ; 0x0c6d
    imul word [bp + 0xa]             ; 0x0c6f
    mov cx, 0x64                     ; 0x0c72
    cwd                              ; 0x0c75
    idiv cx                          ; 0x0c76
    sub word [bp - 0x000e], ax       ; 0x0c78
@..api_idx_001c.l10:
    mov ax, word [bp + 0xe]          ; 0x0c7b
    dec ax                           ; 0x0c7e
    push ax                          ; 0x0c7f
    mov ax, 0                        ; 0x0c80
    push ax                          ; 0x0c83
    mov ax, word [bp - 0x000e]       ; 0x0c84
    add ax, word [bp + 0x8]          ; 0x0c87
    push ax                          ; 0x0c8a
    call ds_dispatch_b7c2            ; 0x0c8b
    add sp, byte 6                   ; 0x0c8e
    mov word [bp - 0x000e], ax       ; 0x0c91
    mov ax, 0x3d                     ; 0x0c94
    sub ax, word [bp - 0x0010]       ; 0x0c97
    imul word [bp + 0xa]             ; 0x0c9a
    mov cx, 0x64                     ; 0x0c9d
    cwd                              ; 0x0ca0
    idiv cx                          ; 0x0ca1
    add word [bp - 0x0010], ax       ; 0x0ca3
    lea ax, word [bp - 0x001c]       ; 0x0ca6
    push ax                          ; 0x0ca9
    push word [bp + 0xa]             ; 0x0caa
    push word [bp - 0x0008]          ; 0x0cad
    push word [bp + 0xe]             ; 0x0cb0
    push word [bp + 0xc]             ; 0x0cb3
    push word [bp - 0x0010]          ; 0x0cb6
    push word [bp - 0x000e]          ; 0x0cb9
    push word [bp - 0x0006]          ; 0x0cbc
    push word [bp - 0x000c]          ; 0x0cbf
    call api_idx_0004_3              ; 0x0cc2
    add sp, byte 0x12                ; 0x0cc5
    ret                              ; 0x0cc8
