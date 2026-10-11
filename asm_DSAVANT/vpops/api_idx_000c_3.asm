api_idx_000c_3:
    mov ax, 0xfff4                   ; 0x1b78
    call ds_dispatch_f40b            ; 0x1b7b
    mov word [bp - 0x0002], 0        ; 0x1b7e
@..api_idx_000c_3.l1:
    lea ax, word [bp - 0x000c]       ; 0x1b83
    push ax                          ; 0x1b86
    mov ax, 0x248                    ; 0x1b87
    imul word [bp + 0x4]             ; 0x1b8a
    mov cx, word [bp - 0x0002]       ; 0x1b8d
    shl cx, 1                        ; 0x1b90
    shl cx, 1                        ; 0x1b92
    add ax, cx                       ; 0x1b94
    mov bx, ax                       ; 0x1b96
    push word [bx + 0x5c1c]          ; 0x1b98
    call ds_dispatch_b27d            ; 0x1b9c
    add sp, byte 4                   ; 0x1b9f
    mov ax, 0                        ; 0x1ba2
    push ax                          ; 0x1ba5
    mov ax, word [bp - 0x0002]       ; 0x1ba6
    shl ax, 1                        ; 0x1ba9
    shl ax, 1                        ; 0x1bab
    mov bx, ax                       ; 0x1bad
    db 0xff, 0xb7, 0x06, 0x00 ; push word [bx + 0x6]
    call ds_dispatch_e823            ; 0x1bb3
    add sp, byte 4                   ; 0x1bb6
    mov ax, word [bp - 0x0002]       ; 0x1bb9
    shl ax, 1                        ; 0x1bbc
    shl ax, 1                        ; 0x1bbe
    mov bx, ax                       ; 0x1bc0
    push word [bx + 0x18e]           ; 0x1bc2
    lea ax, word [bp - 0x000c]       ; 0x1bc6
    push ax                          ; 0x1bc9
    call ds_dispatch_fa90            ; 0x1bca
    pop cx                           ; 0x1bcd
    mov cx, 6                        ; 0x1bce
    imul cx                          ; 0x1bd1
    mov cx, 2                        ; 0x1bd3
    cwd                              ; 0x1bd6
    idiv cx                          ; 0x1bd7
    mov cx, ax                       ; 0x1bd9
    mov ax, word [bp - 0x0002]       ; 0x1bdb
    shl ax, 1                        ; 0x1bde
    shl ax, 1                        ; 0x1be0
    mov bx, ax                       ; 0x1be2
    mov ax, word [bx + 0x18c]        ; 0x1be4
    add ax, strict word 9            ; 0x1be8
    sub ax, cx                       ; 0x1beb
    push ax                          ; 0x1bed
    call ds_dispatch_e809            ; 0x1bee
    add sp, byte 4                   ; 0x1bf1
    mov ax, 0                        ; 0x1bf4
    push ax                          ; 0x1bf7
    lea ax, word [bp - 0x000c]       ; 0x1bf8
    push ax                          ; 0x1bfb
    call ds_dispatch_e84e            ; 0x1bfc
    add sp, byte 4                   ; 0x1bff
    inc word [bp - 0x0002]           ; 0x1c02
    mov ax, word [bp - 0x0002]       ; 0x1c05
    cmp ax, strict word 6            ; 0x1c08
    jge short @..api_idx_000c_3.l2   ; 0x1c0b
    jmp near @..api_idx_000c_3.l1    ; 0x1c0d
@..api_idx_000c_3.l2:
    ret                              ; 0x1c10
loc_1c11:
    mov ax, 0                        ; 0x1c11
    call ds_dispatch_f40b            ; 0x1c14
    les bx, word [dseg_0002]         ; 0x1c17
    mov ax, word [es:bx]             ; 0x1c1b
    mov dx, word [es:bx + 0x2]       ; 0x1c1e
    mov word [dseg_9090], dx         ; 0x1c22
    mov word [dseg_908e], ax         ; 0x1c26
    mov ax, word [dseg_908e]         ; 0x1c29
    mov dx, word [dseg_9090]         ; 0x1c2c
    sub ax, word [dseg_908a]         ; 0x1c30
    sbb dx, word [dseg_908c]         ; 0x1c34
    mov word [dseg_9094], dx         ; 0x1c38
    mov word [dseg_9092], ax         ; 0x1c3c
    mov ax, word [dseg_90d6]         ; 0x1c3f
    cwd                              ; 0x1c42
    mov cx, ax                       ; 0x1c43
    mov bx, dx                       ; 0x1c45
    mov ax, word [dseg_9092]         ; 0x1c47
    mov dx, word [dseg_9094]         ; 0x1c4a
    cmp bx, dx                       ; 0x1c4e
    jg short @..local.l69            ; 0x1c50
    jne short @..local.l70           ; 0x1c52
    cmp cx, ax                       ; 0x1c54
    jbe short @..local.l70           ; 0x1c56
@..local.l69:
    jmp short @..local.l71           ; 0x1c58
@..local.l70:
    mov ax, word [dseg_908e]         ; 0x1c5a
    mov dx, word [dseg_9090]         ; 0x1c5d
    mov word [dseg_908c], dx         ; 0x1c61
    mov word [dseg_908a], ax         ; 0x1c65
    call api_idx_000a_3              ; 0x1c68
    push word [bp + 0x4]             ; 0x1c6b
    call api_idx_000c_3              ; 0x1c6e
    pop cx                           ; 0x1c71
    push word [bp + 0x6]             ; 0x1c72
    call api_idx_0002                ; 0x1c75
    pop cx                           ; 0x1c78
    mov ax, 1                        ; 0x1c79
    push ax                          ; 0x1c7c
    mov ax, 0x73                     ; 0x1c7d
    push ax                          ; 0x1c80
    mov ax, 0x32                     ; 0x1c81
    push ax                          ; 0x1c84
    call api_idx_000c_2              ; 0x1c85
    add sp, byte 6                   ; 0x1c88
    mov ax, 0xc5                     ; 0x1c8b
    push ax                          ; 0x1c8e
    mov ax, 0x93                     ; 0x1c8f
    push ax                          ; 0x1c92
    mov ax, 0x73                     ; 0x1c93
    push ax                          ; 0x1c96
    mov ax, 0x32                     ; 0x1c97
    push ax                          ; 0x1c9a
    call ds_dispatch_e8da            ; 0x1c9b
    add sp, byte 8                   ; 0x1c9e
@..local.l71:
    ret                              ; 0x1ca1
