api_idx_0054:
    mov ax, 0xffac                   ; 0x1b40
    call ds_dispatch_f40b            ; 0x1b43
    mov ax, 0                        ; 0x1b46
    push ax                          ; 0x1b49
    push ax                          ; 0x1b4a
    push word [data_9526]            ; 0x1b4b
    push word [data_9524]            ; 0x1b4f
    call ds_dispatch_e942            ; 0x1b53
    add sp, byte 8                   ; 0x1b56
    mov ax, 0                        ; 0x1b59
    push ax                          ; 0x1b5c
    push ax                          ; 0x1b5d
    push word [data_952a]            ; 0x1b5e
    push word [data_9528]            ; 0x1b62
    call ds_dispatch_e942            ; 0x1b66
    add sp, byte 8                   ; 0x1b69
    mov ax, 0                        ; 0x1b6c
    push ax                          ; 0x1b6f
    push ax                          ; 0x1b70
    call ds_dispatch_e823            ; 0x1b71
    add sp, byte 4                   ; 0x1b74
    mov ax, 0x4c                     ; 0x1b77
    push ax                          ; 0x1b7a
    mov ax, 0x248                    ; 0x1b7b
    imul word [bp + 0x4]             ; 0x1b7e
    add ax, 0x5bf4                   ; 0x1b81
    push ax                          ; 0x1b84
    call ds_dispatch_fa90            ; 0x1b85
    pop cx                           ; 0x1b88
    mov cx, 6                        ; 0x1b89
    imul cx                          ; 0x1b8c
    mov cx, data_0002                ; 0x1b8e
    cwd                              ; 0x1b91
    idiv cx                          ; 0x1b92
    mov cx, ax                       ; 0x1b94
    mov ax, 0x28                     ; 0x1b96
    sub ax, cx                       ; 0x1b99
    push ax                          ; 0x1b9b
    call ds_dispatch_e809            ; 0x1b9c
    add sp, byte 4                   ; 0x1b9f
    mov ax, 0                        ; 0x1ba2
    push ax                          ; 0x1ba5
    mov ax, 0x248                    ; 0x1ba6
    imul word [bp + 0x4]             ; 0x1ba9
    add ax, 0x5bf4                   ; 0x1bac
    push ax                          ; 0x1baf
    call ds_dispatch_e84e            ; 0x1bb0
    add sp, byte 4                   ; 0x1bb3
    mov ax, 0                        ; 0x1bb6
    push ax                          ; 0x1bb9
    mov ax, 1                        ; 0x1bba
    push ax                          ; 0x1bbd
    call ds_dispatch_e823            ; 0x1bbe
    add sp, byte 4                   ; 0x1bc1
    mov ax, 6                        ; 0x1bc4
    push ax                          ; 0x1bc7
    mov ax, 0x5a                     ; 0x1bc8
    push ax                          ; 0x1bcb
    call ds_dispatch_e809            ; 0x1bcc
    add sp, byte 4                   ; 0x1bcf
    lea ax, word [bp - 0x0054]       ; 0x1bd2
    push ax                          ; 0x1bd5
    mov ax, 0x248                    ; 0x1bd6
    imul word [bp + 0x4]             ; 0x1bd9
    mov bx, ax                       ; 0x1bdc
    mov al, byte [bx + 0x5e2c]       ; 0x1bde
    sub ah, ah                       ; 0x1be2
    add ax, 0x8c                     ; 0x1be4
    push ax                          ; 0x1be7
    call ds_dispatch_b53b            ; 0x1be8
    add sp, byte 4                   ; 0x1beb
    mov ax, 0                        ; 0x1bee
    push ax                          ; 0x1bf1
    mov al, byte [bp - 0x0054]       ; 0x1bf2
    sub ah, ah                       ; 0x1bf5
    push ax                          ; 0x1bf7
    call ds_dispatch_e830            ; 0x1bf8
    add sp, byte 4                   ; 0x1bfb
    mov ax, 0                        ; 0x1bfe
    push ax                          ; 0x1c01
    mov ax, 0x2d                     ; 0x1c02
    push ax                          ; 0x1c05
    call ds_dispatch_e830            ; 0x1c06
    add sp, byte 4                   ; 0x1c09
    lea ax, word [bp - 0x0054]       ; 0x1c0c
    push ax                          ; 0x1c0f
    mov ax, 0x248                    ; 0x1c10
    imul word [bp + 0x4]             ; 0x1c13
    mov bx, ax                       ; 0x1c16
    mov al, byte [bx + 0x5e2b]       ; 0x1c18
    sub ah, ah                       ; 0x1c1c
    add ax, strict word 0x64         ; 0x1c1e
    push ax                          ; 0x1c21
    call ds_dispatch_b53b            ; 0x1c22
    add sp, byte 4                   ; 0x1c25
    mov ax, 0                        ; 0x1c28
    push ax                          ; 0x1c2b
    lea ax, word [bp - 0x0054]       ; 0x1c2c
    push ax                          ; 0x1c2f
    call ds_dispatch_e84e            ; 0x1c30
    add sp, byte 4                   ; 0x1c33
    mov ax, 0                        ; 0x1c36
    push ax                          ; 0x1c39
    mov ax, 0x84                     ; 0x1c3a
    push ax                          ; 0x1c3d
    call ds_dispatch_e823            ; 0x1c3e
    add sp, byte 4                   ; 0x1c41
    mov ax, 0xc                      ; 0x1c44
    push ax                          ; 0x1c47
    mov ax, 0x5a                     ; 0x1c48
    push ax                          ; 0x1c4b
    call ds_dispatch_e809            ; 0x1c4c
    add sp, byte 4                   ; 0x1c4f
    lea ax, word [bp - 0x0054]       ; 0x1c52
    push ax                          ; 0x1c55
    mov ax, 0x248                    ; 0x1c56
    imul word [bp + 0x4]             ; 0x1c59
    mov bx, ax                       ; 0x1c5c
    mov al, byte [bx + 0x5e2d]       ; 0x1c5e
    sub ah, ah                       ; 0x1c62
    add ax, strict word 0x78         ; 0x1c64
    push ax                          ; 0x1c67
    call ds_dispatch_b53b            ; 0x1c68
    add sp, byte 4                   ; 0x1c6b
    mov ax, 0                        ; 0x1c6e
    push ax                          ; 0x1c71
    lea ax, word [bp - 0x0054]       ; 0x1c72
    push ax                          ; 0x1c75
    call ds_dispatch_e84e            ; 0x1c76
    add sp, byte 4                   ; 0x1c79
    mov ax, 0                        ; 0x1c7c
    push ax                          ; 0x1c7f
    mov ax, 0x84                     ; 0x1c80
    push ax                          ; 0x1c83
    call ds_dispatch_e823            ; 0x1c84
    add sp, byte 4                   ; 0x1c87
    mov ax, 0x12                     ; 0x1c8a
    push ax                          ; 0x1c8d
    mov ax, 0x5a                     ; 0x1c8e
    push ax                          ; 0x1c91
    call ds_dispatch_e809            ; 0x1c92
    add sp, byte 4                   ; 0x1c95
    lea ax, word [bp - 0x0054]       ; 0x1c98
    push ax                          ; 0x1c9b
    mov ax, 0xc8                     ; 0x1c9c
    push ax                          ; 0x1c9f
    call ds_dispatch_b53b            ; 0x1ca0
    add sp, byte 4                   ; 0x1ca3
    mov ax, 0                        ; 0x1ca6
    push ax                          ; 0x1ca9
    lea ax, word [bp - 0x0054]       ; 0x1caa
    push ax                          ; 0x1cad
    call ds_dispatch_e84e            ; 0x1cae
    add sp, byte 4                   ; 0x1cb1
    mov ax, 0                        ; 0x1cb4
    push ax                          ; 0x1cb7
    mov ax, 4                        ; 0x1cb8
    push ax                          ; 0x1cbb
    mov ax, 0x248                    ; 0x1cbc
    imul word [bp + 0x4]             ; 0x1cbf
    mov bx, ax                       ; 0x1cc2
    push word [bx + 0x5c18]          ; 0x1cc4
    call ds_dispatch_b2e7            ; 0x1cc8
    add sp, byte 6                   ; 0x1ccb
    mov ax, 0x248                    ; 0x1cce
    imul word [bp + 0x4]             ; 0x1cd1
    mov bx, ax                       ; 0x1cd4
    mov ax, word [bx + 0x5bfc]       ; 0x1cd6
    mov dx, word [bx + 0x5bfe]       ; 0x1cda
    mov cx, 0x16d                    ; 0x1cde
    mov bx, 0                        ; 0x1ce1
    call ds_dispatch_f99f            ; 0x1ce4
    add ax, strict word 0xffee       ; 0x1ce7
    adc dx, byte 0xff                ; 0x1cea
    mov cx, 4                        ; 0x1ced
    mov bx, 0                        ; 0x1cf0
    call ds_dispatch_f99f            ; 0x1cf3
    push ax                          ; 0x1cf6
    push dx                          ; 0x1cf7
    mov ax, 0x248                    ; 0x1cf8
    imul word [bp + 0x4]             ; 0x1cfb
    mov bx, ax                       ; 0x1cfe
    mov ax, word [bx + 0x5c1a]       ; 0x1d00
    cwd                              ; 0x1d04
    mov cx, ax                       ; 0x1d05
    mov bx, dx                       ; 0x1d07
    pop dx                           ; 0x1d09
    pop ax                           ; 0x1d0a
    add ax, cx                       ; 0x1d0b
    adc dx, bx                       ; 0x1d0d
    mov cx, ax                       ; 0x1d0f
    mov bx, dx                       ; 0x1d11
    add ax, strict word 0xffff       ; 0x1d13
    adc dx, byte 0xff                ; 0x1d16
    mov cx, ax                       ; 0x1d19
    mov bx, dx                       ; 0x1d1b
    mov ax, 0x14                     ; 0x1d1d
    mov dx, 0                        ; 0x1d20
    sub ax, cx                       ; 0x1d23
    sbb dx, bx                       ; 0x1d25
    push ax                          ; 0x1d27
    push dx                          ; 0x1d28
    mov ax, 0x248                    ; 0x1d29
    imul word [bp + 0x4]             ; 0x1d2c
    mov bx, ax                       ; 0x1d2f
    mov al, byte [bx + 0x5d67]       ; 0x1d31
    sub ah, ah                       ; 0x1d35
    cwd                              ; 0x1d37
    mov cx, ax                       ; 0x1d38
    mov bx, dx                       ; 0x1d3a
    pop dx                           ; 0x1d3c
    pop ax                           ; 0x1d3d
    push ax                          ; 0x1d3e
    push dx                          ; 0x1d3f
