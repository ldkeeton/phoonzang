api_idx_0002_4:
    mov ax, 0xfffe                   ; 0x2b1a
    call ds_dispatch_f40b            ; 0x2b1d
    mov ax, 0x248                    ; 0x2b20
    imul word [bp + 0x4]             ; 0x2b23
    mov bx, ax                       ; 0x2b26
    mov ax, word [bx + 0x5c18]       ; 0x2b28
    push ax                          ; 0x2b2c
    mov al, byte [bx + 0x5e3b]       ; 0x2b2d
    sub ah, ah                       ; 0x2b31
    mov cx, ax                       ; 0x2b33
    pop ax                           ; 0x2b35
    cmp ax, cx                       ; 0x2b36
    jge short @..api_idx_0002_4.l1   ; 0x2b38
    mov ax, cx                       ; 0x2b3a
    jmp short @..api_idx_0002_4.l2   ; 0x2b3c
@..api_idx_0002_4.l1:
    mov ax, word [bx + 0x5c18]       ; 0x2b3e
@..api_idx_0002_4.l2:
    mov word [bp - 0x0002], ax       ; 0x2b42
    push ax                          ; 0x2b45
    cmp ax, strict word 0x14         ; 0x2b46
    pop ax                           ; 0x2b49
    jle short @..api_idx_0002_4.l3   ; 0x2b4a
    mov ax, 0x14                     ; 0x2b4c
@..api_idx_0002_4.l3:
    mov word [bp - 0x0002], ax       ; 0x2b4f
    mov cx, 3                        ; 0x2b52
    cwd                              ; 0x2b55
    idiv cx                          ; 0x2b56
    inc ax                           ; 0x2b58
    push ax                          ; 0x2b59
    mov ax, 1                        ; 0x2b5a
    push ax                          ; 0x2b5d
    push word [bp + 0x6]             ; 0x2b5e
    call ds_dispatch_b7c2            ; 0x2b61
    add sp, byte 6                   ; 0x2b64
    mov word [bp + 0x6], ax          ; 0x2b67
    mov ax, 0x248                    ; 0x2b6a
    imul word [bp + 0x4]             ; 0x2b6d
    mov bx, ax                       ; 0x2b70
    mov al, byte [bx + 0x5d68]       ; 0x2b72
    sub ah, ah                       ; 0x2b76
    mov cx, 6                        ; 0x2b78
    cwd                              ; 0x2b7b
    idiv cx                          ; 0x2b7c
    push ax                          ; 0x2b7e
    mov ax, word [bp - 0x0002]       ; 0x2b7f
    add ax, word [bp + 0x8]          ; 0x2b82
    sub ax, word [bp + 0xa]          ; 0x2b85
    cwd                              ; 0x2b88
    idiv word [bp + 0x8]             ; 0x2b89
    mov cx, ax                       ; 0x2b8c
    pop ax                           ; 0x2b8e
    add ax, cx                       ; 0x2b8f
    dec ax                           ; 0x2b91
    mov byte [bx + 0x5e37], al       ; 0x2b92
    push word [bp + 0x6]             ; 0x2b96
    mov ax, 1                        ; 0x2b99
    push ax                          ; 0x2b9c
    mov al, byte [bx + 0x5e37]       ; 0x2b9d
    sub ah, ah                       ; 0x2ba1
    push ax                          ; 0x2ba3
    call ds_dispatch_b7c2            ; 0x2ba4
    add sp, byte 6                   ; 0x2ba7
    push ax                          ; 0x2baa
    mov ax, 0x248                    ; 0x2bab
    imul word [bp + 0x4]             ; 0x2bae
    mov bx, ax                       ; 0x2bb1
    pop ax                           ; 0x2bb3
    mov byte [bx + 0x5e37], al       ; 0x2bb4
    mov al, byte [bx + 0x5d69]       ; 0x2bb8
    sub ah, ah                       ; 0x2bbc
    mov cx, 6                        ; 0x2bbe
    cwd                              ; 0x2bc1
    idiv cx                          ; 0x2bc2
    push ax                          ; 0x2bc4
    mov ax, word [bp - 0x0002]       ; 0x2bc5
    add ax, word [bp + 0xc]          ; 0x2bc8
    sub ax, word [bp + 0xe]          ; 0x2bcb
    cwd                              ; 0x2bce
    idiv word [bp + 0xc]             ; 0x2bcf
    mov cx, ax                       ; 0x2bd2
    pop ax                           ; 0x2bd4
    add ax, cx                       ; 0x2bd5
    dec ax                           ; 0x2bd7
    mov byte [bx + 0x5e38], al       ; 0x2bd8
    push word [bp + 0x6]             ; 0x2bdc
    mov ax, 1                        ; 0x2bdf
    push ax                          ; 0x2be2
    mov al, byte [bx + 0x5e38]       ; 0x2be3
    sub ah, ah                       ; 0x2be7
    push ax                          ; 0x2be9
    call ds_dispatch_b7c2            ; 0x2bea
    add sp, byte 6                   ; 0x2bed
    push ax                          ; 0x2bf0
    mov ax, 0x248                    ; 0x2bf1
    imul word [bp + 0x4]             ; 0x2bf4
    mov bx, ax                       ; 0x2bf7
    pop ax                           ; 0x2bf9
    mov byte [bx + 0x5e38], al       ; 0x2bfa
    mov al, byte [bx + 0x5d69]       ; 0x2bfe
    sub ah, ah                       ; 0x2c02
    add ax, word [bp - 0x0002]       ; 0x2c04
    mov byte [bx + 0x5e39], al       ; 0x2c07
    ret                              ; 0x2c0b
