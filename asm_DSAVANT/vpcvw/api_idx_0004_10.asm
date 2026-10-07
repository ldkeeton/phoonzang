api_idx_0004_10:
    mov ax, 0xfffc                   ; 0x6c47
    call ds_dispatch_f40b            ; 0x6c4a
    mov ax, word [bp + 0x6]          ; 0x6c4d
    mov cx, 5                        ; 0x6c50
    cwd                              ; 0x6c53
    idiv cx                          ; 0x6c54
    mov cx, 0xd                      ; 0x6c56
    imul cx                          ; 0x6c59
    mov cx, 6                        ; 0x6c5b
    imul cx                          ; 0x6c5e
    push ax                          ; 0x6c60
    mov ax, word [bp + 0x6]          ; 0x6c61
    mov cx, 5                        ; 0x6c64
    cwd                              ; 0x6c67
    idiv cx                          ; 0x6c68
    mov cx, ax                       ; 0x6c6a
    pop ax                           ; 0x6c6c
    add ax, cx                       ; 0x6c6d
    add ax, strict word 4            ; 0x6c6f
    mov word [bp - 0x0002], ax       ; 0x6c72
    shl dx, 1                        ; 0x6c75
    mov ax, dx                       ; 0x6c77
    mov cx, 6                        ; 0x6c79
    imul cx                          ; 0x6c7c
    push ax                          ; 0x6c7e
    mov ax, word [bp + 0x6]          ; 0x6c7f
    mov cx, 5                        ; 0x6c82
    cwd                              ; 0x6c85
    idiv cx                          ; 0x6c86
    mov cx, dx                       ; 0x6c88
    shl cx, 1                        ; 0x6c8a
    pop ax                           ; 0x6c8c
    add ax, cx                       ; 0x6c8d
    add ax, strict word 0x72         ; 0x6c8f
    mov word [bp - 0x0004], ax       ; 0x6c92
    push ax                          ; 0x6c95
    push word [bp - 0x0002]          ; 0x6c96
    call ds_dispatch_e809            ; 0x6c99
    add sp, byte 4                   ; 0x6c9c
    mov ax, 4                        ; 0x6c9f
    push ax                          ; 0x6ca2
    mov bx, word [bp + 0x8]          ; 0x6ca3
    mov al, byte [bx + 0x5]          ; 0x6ca6
    sub ah, ah                       ; 0x6ca9
    push ax                          ; 0x6cab
    call ds_dispatch_e830            ; 0x6cac
    add sp, byte 4                   ; 0x6caf
    push word [bp + 0xc]             ; 0x6cb2
    push word [bp - 0x0004]          ; 0x6cb5
    mov ax, word [bp - 0x0002]       ; 0x6cb8
    add ax, strict word 0xe          ; 0x6cbb
    push ax                          ; 0x6cbe
    push word [bp + 0xa]             ; 0x6cbf
    call api_idx_002a                ; 0x6cc2
    add sp, byte 8                   ; 0x6cc5
    mov bx, word [bp + 0x8]          ; 0x6cc8
    mov al, byte [bx + 0x4]          ; 0x6ccb
    sub ah, ah                       ; 0x6cce
    mov bx, ax                       ; 0x6cd0
    cmp byte [bx + 0x60e], 1         ; 0x6cd2
    jne short @..api_idx_0004_10.l1  ; 0x6cd7
    mov ax, word [bp - 0x0004]       ; 0x6cd9
    add ax, strict word 6            ; 0x6cdc
    push ax                          ; 0x6cdf
    mov ax, word [bp - 0x0002]       ; 0x6ce0
    add ax, strict word 0x38         ; 0x6ce3
    push ax                          ; 0x6ce6
    call ds_dispatch_e809            ; 0x6ce7
    add sp, byte 4                   ; 0x6cea
    mov ax, 0                        ; 0x6ced
    push ax                          ; 0x6cf0
    mov ax, data_0002                ; 0x6cf1
    push ax                          ; 0x6cf4
    call ds_dispatch_e823            ; 0x6cf5
    add sp, byte 4                   ; 0x6cf8
    mov ax, 0                        ; 0x6cfb
    push ax                          ; 0x6cfe
    mov ax, 3                        ; 0x6cff
    push ax                          ; 0x6d02
    mov bx, word [bp + 0x8]          ; 0x6d03
    mov al, byte [bx + 0x6]          ; 0x6d06
    sub ah, ah                       ; 0x6d09
    push ax                          ; 0x6d0b
    call ds_dispatch_b2e7            ; 0x6d0c
    add sp, byte 6                   ; 0x6d0f
@..api_idx_0004_10.l1:
    ret                              ; 0x6d12
