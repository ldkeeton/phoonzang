api_idx_000c_2:
    mov ax, 0xfff4                   ; 0x8bf4
    call ds_dispatch_f40b            ; 0x8bf7
    mov word [bp - 0x0002], 0        ; 0x8bfa
@..api_idx_000c_2.l1:
    lea ax, word [bp - 0x000c]       ; 0x8bff
    push ax                          ; 0x8c02
    mov ax, 0x248                    ; 0x8c03
    imul word [bp + 0x4]             ; 0x8c06
    mov cx, word [bp - 0x0002]       ; 0x8c09
    shl cx, 1                        ; 0x8c0c
    shl cx, 1                        ; 0x8c0e
    add ax, cx                       ; 0x8c10
    mov bx, ax                       ; 0x8c12
    push word [bx + 0x5c1c]          ; 0x8c14
    call ds_dispatch_b27d            ; 0x8c18
    add sp, byte 4                   ; 0x8c1b
    mov ax, 0                        ; 0x8c1e
    push ax                          ; 0x8c21
    mov ax, word [bp - 0x0002]       ; 0x8c22
    shl ax, 1                        ; 0x8c25
    shl ax, 1                        ; 0x8c27
    mov bx, ax                       ; 0x8c29
    db 0xff, 0xb7, 0x06, 0x00 ; push word [bx + 0x6]
    call ds_dispatch_e823            ; 0x8c2f
    add sp, byte 4                   ; 0x8c32
    mov ax, word [bp - 0x0002]       ; 0x8c35
    shl ax, 1                        ; 0x8c38
    shl ax, 1                        ; 0x8c3a
    mov bx, ax                       ; 0x8c3c
    push word [bx + 0x18e]           ; 0x8c3e
    lea ax, word [bp - 0x000c]       ; 0x8c42
    push ax                          ; 0x8c45
    call ds_dispatch_fa90            ; 0x8c46
    pop cx                           ; 0x8c49
    mov cx, 6                        ; 0x8c4a
    imul cx                          ; 0x8c4d
    mov cx, data_0002                ; 0x8c4f
    cwd                              ; 0x8c52
    idiv cx                          ; 0x8c53
    mov cx, ax                       ; 0x8c55
    mov ax, word [bp - 0x0002]       ; 0x8c57
    shl ax, 1                        ; 0x8c5a
    shl ax, 1                        ; 0x8c5c
    mov bx, ax                       ; 0x8c5e
    mov ax, word [bx + 0x18c]        ; 0x8c60
    add ax, strict word 9            ; 0x8c64
    sub ax, cx                       ; 0x8c67
    push ax                          ; 0x8c69
    call ds_dispatch_e809            ; 0x8c6a
    add sp, byte 4                   ; 0x8c6d
    mov ax, 0                        ; 0x8c70
    push ax                          ; 0x8c73
    lea ax, word [bp - 0x000c]       ; 0x8c74
    push ax                          ; 0x8c77
    call ds_dispatch_e84e            ; 0x8c78
    add sp, byte 4                   ; 0x8c7b
    inc word [bp - 0x0002]           ; 0x8c7e
    mov ax, word [bp - 0x0002]       ; 0x8c81
    cmp ax, strict word 6            ; 0x8c84
    jge short @..api_idx_000c_2.l2   ; 0x8c87
    jmp near @..api_idx_000c_2.l1    ; 0x8c89
@..api_idx_000c_2.l2:
    ret                              ; 0x8c8c
