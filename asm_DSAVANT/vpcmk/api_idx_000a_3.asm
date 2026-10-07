api_idx_000a_3:
    mov ax, 0xfff6                   ; 0x5a8a
    call ds_dispatch_f40b            ; 0x5a8d
    mov ax, 0x248                    ; 0x5a90
    imul word [bp + 0x4]             ; 0x5a93
    mov bx, ax                       ; 0x5a96
    mov byte [bx + 0x5e34], 1        ; 0x5a98
    mov byte [bx + 0x5e35], 0xa      ; 0x5a9d
    mov ax, 0x3e8                    ; 0x5aa2
    push ax                          ; 0x5aa5
    call ds_dispatch_b7a9            ; 0x5aa6
    pop cx                           ; 0x5aa9
    add ax, 0x19aa                   ; 0x5aaa
    cwd                              ; 0x5aad
    push ax                          ; 0x5aae
    push dx                          ; 0x5aaf
    mov ax, 0x248                    ; 0x5ab0
    imul word [bp + 0x4]             ; 0x5ab3
    mov bx, ax                       ; 0x5ab6
    pop dx                           ; 0x5ab8
    pop ax                           ; 0x5ab9
    mov word [bx + 0x5bfe], dx       ; 0x5aba
    mov word [bx + 0x5bfc], ax       ; 0x5abe
    mov al, byte [bx + 0x5d64]       ; 0x5ac2
    sub ah, ah                       ; 0x5ac6
    mov word [bp - 0x0008], ax       ; 0x5ac8
    mov al, byte [bx + 0x5d67]       ; 0x5acb
    sub ah, ah                       ; 0x5acf
    mov word [bp - 0x000a], ax       ; 0x5ad1
    mov al, byte [bx + 0x5e2d]       ; 0x5ad4
    sub ah, ah                       ; 0x5ad8
    jmp near @..api_idx_000a_3.l1    ; 0x5ada
    mov ax, 5                        ; 0x5add
    push ax                          ; 0x5ae0
    db 0xe8, 0xc5, 0x5c ; call ds_dispatch_b7a9
    pop cx                           ; 0x5ae4
    add ax, strict word 6            ; 0x5ae5
    mov word [bp - 0x0002], ax       ; 0x5ae8
    push word [bp + 0x4]             ; 0x5aeb
    call math_loc_5706               ; 0x5aee
    pop cx                           ; 0x5af1
    mov ax, 0x248                    ; 0x5af2
    imul word [bp + 0x4]             ; 0x5af5
    db 0x8b, 0xd8 ; mov bx, ax
    add byte [bx + 0x5e3a], 0xfd     ; 0x5afa
    jmp near @..api_idx_000a_3.l2    ; 0x5aff
    mov ax, 3                        ; 0x5b02
    push ax                          ; 0x5b05
    db 0xe8, 0xa0, 0x5c ; call ds_dispatch_b7a9
    pop cx                           ; 0x5b09
    inc ax                           ; 0x5b0a
    inc ax                           ; 0x5b0b
    mov word [bp - 0x0002], ax       ; 0x5b0c
    push word [bp + 0x4]             ; 0x5b0f
    call math_loc_5706               ; 0x5b12
    pop cx                           ; 0x5b15
    jmp near @..api_idx_000a_3.l2    ; 0x5b16
    mov ax, 4                        ; 0x5b19
    push ax                          ; 0x5b1c
    db 0xe8, 0x89, 0x5c ; call ds_dispatch_b7a9
    pop cx                           ; 0x5b20
    add ax, strict word 4            ; 0x5b21
    mov word [bp - 0x0002], ax       ; 0x5b24
    push word [bp + 0x4]             ; 0x5b27
    call math_loc_5706               ; 0x5b2a
    pop cx                           ; 0x5b2d
    jmp near @..api_idx_000a_3.l2    ; 0x5b2e
    mov ax, 4                        ; 0x5b31
    push ax                          ; 0x5b34
    db 0xe8, 0x71, 0x5c ; call ds_dispatch_b7a9
    pop cx                           ; 0x5b38
    inc ax                           ; 0x5b39
    inc ax                           ; 0x5b3a
    inc ax                           ; 0x5b3b
    mov word [bp - 0x0002], ax       ; 0x5b3c
    push word [bp + 0x4]             ; 0x5b3f
    call math_loc_5706               ; 0x5b42
    pop cx                           ; 0x5b45
    mov ax, 0x248                    ; 0x5b46
    imul word [bp + 0x4]             ; 0x5b49
    db 0x8b, 0xd8 ; mov bx, ax
    dec byte [bx + 0x5e3a]           ; 0x5b4e
    jmp near @..api_idx_000a_3.l2    ; 0x5b52
    mov ax, 4                        ; 0x5b55
    push ax                          ; 0x5b58
    db 0xe8, 0x4d, 0x5c ; call ds_dispatch_b7a9
    pop cx                           ; 0x5b5c
    push ax                          ; 0x5b5d
    mov ax, 4                        ; 0x5b5e
    push ax                          ; 0x5b61
    db 0xe8, 0x44, 0x5c ; call ds_dispatch_b7a9
    pop cx                           ; 0x5b65
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax                           ; 0x5b68
    db 0x03, 0xc1 ; add ax, cx
    add ax, strict word 6            ; 0x5b6b
    mov word [bp - 0x0002], ax       ; 0x5b6e
    push word [bp + 0x4]             ; 0x5b71
    call math_loc_5706               ; 0x5b74
    pop cx                           ; 0x5b77
    mov ax, 0x248                    ; 0x5b78
    imul word [bp + 0x4]             ; 0x5b7b
    db 0x8b, 0xd8 ; mov bx, ax
    dec byte [bx + 0x5e3a]           ; 0x5b80
    dec byte [bx + 0x5e3a]           ; 0x5b84
    jmp near @..api_idx_000a_3.l2    ; 0x5b88
    mov ax, 4                        ; 0x5b8b
    push ax                          ; 0x5b8e
    db 0xe8, 0x17, 0x5c ; call ds_dispatch_b7a9
    pop cx                           ; 0x5b92
    inc ax                           ; 0x5b93
    inc ax                           ; 0x5b94
    inc ax                           ; 0x5b95
    mov word [bp - 0x0002], ax       ; 0x5b96
    push word [bp + 0x4]             ; 0x5b99
    call math_loc_5706               ; 0x5b9c
    pop cx                           ; 0x5b9f
    jmp near @..api_idx_000a_3.l2    ; 0x5ba0
    mov ax, 4                        ; 0x5ba3
    push ax                          ; 0x5ba6
    db 0xe8, 0xff, 0x5b ; call ds_dispatch_b7a9
    pop cx                           ; 0x5baa
    inc ax                           ; 0x5bab
    inc ax                           ; 0x5bac
    mov word [bp - 0x0002], ax       ; 0x5bad
    push word [bp + 0x4]             ; 0x5bb0
    call math_loc_5706               ; 0x5bb3
    pop cx                           ; 0x5bb6
    jmp near @..api_idx_000a_3.l2    ; 0x5bb7
    mov ax, 3                        ; 0x5bba
    push ax                          ; 0x5bbd
    db 0xe8, 0xe8, 0x5b ; call ds_dispatch_b7a9
    pop cx                           ; 0x5bc1
    inc ax                           ; 0x5bc2
    inc ax                           ; 0x5bc3
    inc ax                           ; 0x5bc4
    mov word [bp - 0x0002], ax       ; 0x5bc5
    push word [bp + 0x4]             ; 0x5bc8
    call math_loc_5706               ; 0x5bcb
    pop cx                           ; 0x5bce
    jmp near @..api_idx_000a_3.l2    ; 0x5bcf
    mov ax, 5                        ; 0x5bd2
    push ax                          ; 0x5bd5
    db 0xe8, 0xd0, 0x5b ; call ds_dispatch_b7a9
    pop cx                           ; 0x5bd9
    add ax, strict word 5            ; 0x5bda
    mov word [bp - 0x0002], ax       ; 0x5bdd
    push word [bp + 0x4]             ; 0x5be0
    call math_loc_5706               ; 0x5be3
    pop cx                           ; 0x5be6
    mov ax, 0x248                    ; 0x5be7
    imul word [bp + 0x4]             ; 0x5bea
    db 0x8b, 0xd8 ; mov bx, ax
    add byte [bx + 0x5e3a], 0xfc     ; 0x5bef
    jmp near @..api_idx_000a_3.l2    ; 0x5bf4
    mov ax, 4                        ; 0x5bf7
    push ax                          ; 0x5bfa
    db 0xe8, 0xab, 0x5b ; call ds_dispatch_b7a9
    pop cx                           ; 0x5bfe
    inc ax                           ; 0x5bff
    inc ax                           ; 0x5c00
    inc ax                           ; 0x5c01
    mov word [bp - 0x0002], ax       ; 0x5c02
    push word [bp + 0x4]             ; 0x5c05
    call math_loc_5706               ; 0x5c08
    pop cx                           ; 0x5c0b
    jmp near @..api_idx_000a_3.l2    ; 0x5c0c
    mov ax, 7                        ; 0x5c0f
    push ax                          ; 0x5c12
    db 0xe8, 0x93, 0x5b ; call ds_dispatch_b7a9
    pop cx                           ; 0x5c16
    add ax, strict word 8            ; 0x5c17
    mov word [bp - 0x0002], ax       ; 0x5c1a
    push word [bp + 0x4]             ; 0x5c1d
    call math_loc_5706               ; 0x5c20
    pop cx                           ; 0x5c23
    mov ax, 0x248                    ; 0x5c24
    imul word [bp + 0x4]             ; 0x5c27
    db 0x8b, 0xd8 ; mov bx, ax
    add byte [bx + 0x5e3a], 0xfc     ; 0x5c2c
    jmp near @..api_idx_000a_3.l2    ; 0x5c31
    mov ax, 4                        ; 0x5c34
    push ax                          ; 0x5c37
    db 0xe8, 0x6e, 0x5b ; call ds_dispatch_b7a9
    pop cx                           ; 0x5c3b
    push ax                          ; 0x5c3c
    mov ax, 4                        ; 0x5c3d
    push ax                          ; 0x5c40
    db 0xe8, 0x65, 0x5b ; call ds_dispatch_b7a9
    pop cx                           ; 0x5c44
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax                           ; 0x5c47
    db 0x03, 0xc1 ; add ax, cx
    add ax, strict word 6            ; 0x5c4a
    mov word [bp - 0x0002], ax       ; 0x5c4d
    push word [bp + 0x4]             ; 0x5c50
    call math_loc_5706               ; 0x5c53
    pop cx                           ; 0x5c56
    mov ax, 0x248                    ; 0x5c57
    imul word [bp + 0x4]             ; 0x5c5a
    db 0x8b, 0xd8 ; mov bx, ax
    add byte [bx + 0x5e3a], 0xfb     ; 0x5c5f
    jmp short @..api_idx_000a_3.l2   ; 0x5c64
    mov ax, 4                        ; 0x5c66
    push ax                          ; 0x5c69
    db 0xe8, 0x3c, 0x5b ; call ds_dispatch_b7a9
    pop cx                           ; 0x5c6d
    add ax, strict word 4            ; 0x5c6e
    mov word [bp - 0x0002], ax       ; 0x5c71
    push word [bp + 0x4]             ; 0x5c74
    call math_loc_5706               ; 0x5c77
    pop cx                           ; 0x5c7a
    mov ax, 0x248                    ; 0x5c7b
    imul word [bp + 0x4]             ; 0x5c7e
    db 0x8b, 0xd8 ; mov bx, ax
    dec byte [bx + 0x5e3a]           ; 0x5c83
