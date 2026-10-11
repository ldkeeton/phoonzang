api_idx_0004_7:
    mov ax, 0xfffc                   ; 0x5df5
    call ds_dispatch_f40b            ; 0x5df8
    mov ax, 0x248                    ; 0x5dfb
    imul word [bp + 0x4]             ; 0x5dfe
    mov bx, ax                       ; 0x5e01
    mov al, byte [bx + 0x5d67]       ; 0x5e03
    sub ah, ah                       ; 0x5e07
    push ax                          ; 0x5e09
    mov al, byte [bx + 0x5d66]       ; 0x5e0a
    sub ah, ah                       ; 0x5e0e
    mov cx, ax                       ; 0x5e10
    shl ax, 1                        ; 0x5e12
    mov cx, ax                       ; 0x5e14
    pop ax                           ; 0x5e16
    add ax, cx                       ; 0x5e17
    mov cx, 3                        ; 0x5e19
    cwd                              ; 0x5e1c
    idiv cx                          ; 0x5e1d
    mov word [bp - 0x0002], ax       ; 0x5e1f
    mov word [bp - 0x0004], 0        ; 0x5e22
    cmp ax, strict word 0xd          ; 0x5e27
    jle short @..api_idx_0004_7.l1   ; 0x5e2a
    inc word [bp - 0x0004]           ; 0x5e2c
@..api_idx_0004_7.l1:
    cmp ax, strict word 0x10         ; 0x5e2f
    jle short @..api_idx_0004_7.l2   ; 0x5e32
    inc word [bp - 0x0004]           ; 0x5e34
@..api_idx_0004_7.l2:
    cmp byte [bx + 0x5e2b], 5        ; 0x5e37
    jne short @..api_idx_0004_7.l3   ; 0x5e3c
    inc word [bp - 0x0004]           ; 0x5e3e
@..api_idx_0004_7.l3:
    cmp byte [bx + 0x5e2b], 6        ; 0x5e41
    jne short @..api_idx_0004_7.l4   ; 0x5e46
    dec word [bp - 0x0004]           ; 0x5e48
@..api_idx_0004_7.l4:
    mov al, byte [bx + 0x5e2d]       ; 0x5e4b
    sub ah, ah                       ; 0x5e4f
    jmp near @..api_idx_0004_7.l5    ; 0x5e51
    mov ax, word [bp - 0x0004]       ; 0x5e54
    inc ax                           ; 0x5e57
    push ax                          ; 0x5e58
    push ax                          ; 0x5e59
    push ax                          ; 0x5e5a
    push ax                          ; 0x5e5b
    push ax                          ; 0x5e5c
    push ax                          ; 0x5e5d
    push word [bp + 0x4]             ; 0x5e5e
    call loc_5d7e                    ; 0x5e61
    add sp, byte 0x0e                ; 0x5e64
    jmp near @..api_idx_0004_7.l6    ; 0x5e67
    mov ax, 0x248                    ; 0x5e6a
    imul word [bp + 0x4]             ; 0x5e6d
    mov bx, ax                       ; 0x5e70
    mov byte [bx + 0x5d50], 2        ; 0x5e72
    mov ax, word [bp - 0x0004]       ; 0x5e77
    inc ax                           ; 0x5e7a
    inc ax                           ; 0x5e7b
    inc ax                           ; 0x5e7c
    push ax                          ; 0x5e7d
    mov ax, word [bp - 0x0004]       ; 0x5e7e
    inc ax                           ; 0x5e81
    inc ax                           ; 0x5e82
    push ax                          ; 0x5e83
    push ax                          ; 0x5e84
    push ax                          ; 0x5e85
    mov ax, word [bp - 0x0004]       ; 0x5e86
    inc ax                           ; 0x5e89
    inc ax                           ; 0x5e8a
    inc ax                           ; 0x5e8b
    push ax                          ; 0x5e8c
    push ax                          ; 0x5e8d
    push word [bp + 0x4]             ; 0x5e8e
    call loc_5d7e                    ; 0x5e91
    add sp, byte 0x0e                ; 0x5e94
    jmp near @..api_idx_0004_7.l6    ; 0x5e97
    mov ax, 0x248                    ; 0x5e9a
    imul word [bp + 0x4]             ; 0x5e9d
    mov bx, ax                       ; 0x5ea0
    mov byte [bx + 0x5d51], 2        ; 0x5ea2
    mov ax, word [bp - 0x0004]       ; 0x5ea7
    inc ax                           ; 0x5eaa
    inc ax                           ; 0x5eab
    inc ax                           ; 0x5eac
    push ax                          ; 0x5ead
    push ax                          ; 0x5eae
    mov ax, word [bp - 0x0004]       ; 0x5eaf
    inc ax                           ; 0x5eb2
    inc ax                           ; 0x5eb3
    push ax                          ; 0x5eb4
    push ax                          ; 0x5eb5
    mov ax, word [bp - 0x0004]       ; 0x5eb6
    inc ax                           ; 0x5eb9
    inc ax                           ; 0x5eba
    inc ax                           ; 0x5ebb
    push ax                          ; 0x5ebc
    mov ax, word [bp - 0x0004]       ; 0x5ebd
    inc ax                           ; 0x5ec0
    inc ax                           ; 0x5ec1
    push ax                          ; 0x5ec2
    push word [bp + 0x4]             ; 0x5ec3
    call loc_5d7e                    ; 0x5ec6
    add sp, byte 0x0e                ; 0x5ec9
    jmp near @..api_idx_0004_7.l6    ; 0x5ecc
    mov ax, word [bp - 0x0004]       ; 0x5ecf
    inc ax                           ; 0x5ed2
    push ax                          ; 0x5ed3
    mov ax, word [bp - 0x0004]       ; 0x5ed4
    inc ax                           ; 0x5ed7
    inc ax                           ; 0x5ed8
    push ax                          ; 0x5ed9
    push ax                          ; 0x5eda
    push ax                          ; 0x5edb
    mov ax, word [bp - 0x0004]       ; 0x5edc
    inc ax                           ; 0x5edf
    push ax                          ; 0x5ee0
    push ax                          ; 0x5ee1
    push word [bp + 0x4]             ; 0x5ee2
    call loc_5d7e                    ; 0x5ee5
    add sp, byte 0x0e                ; 0x5ee8
    jmp near @..api_idx_0004_7.l6    ; 0x5eeb
    mov ax, 0x248                    ; 0x5eee
    imul word [bp + 0x4]             ; 0x5ef1
    mov bx, ax                       ; 0x5ef4
    mov byte [bx + 0x5d52], 2        ; 0x5ef6
    mov ax, word [bp - 0x0004]       ; 0x5efb
    inc ax                           ; 0x5efe
    inc ax                           ; 0x5eff
    push ax                          ; 0x5f00
    push ax                          ; 0x5f01
    mov ax, word [bp - 0x0004]       ; 0x5f02
    inc ax                           ; 0x5f05
    inc ax                           ; 0x5f06
    inc ax                           ; 0x5f07
    push ax                          ; 0x5f08
    push ax                          ; 0x5f09
    mov ax, word [bp - 0x0004]       ; 0x5f0a
    inc ax                           ; 0x5f0d
    inc ax                           ; 0x5f0e
    push ax                          ; 0x5f0f
    mov ax, word [bp - 0x0004]       ; 0x5f10
    inc ax                           ; 0x5f13
    inc ax                           ; 0x5f14
    inc ax                           ; 0x5f15
    push ax                          ; 0x5f16
    push word [bp + 0x4]             ; 0x5f17
    call loc_5d7e                    ; 0x5f1a
    add sp, byte 0x0e                ; 0x5f1d
    jmp near @..api_idx_0004_7.l6    ; 0x5f20
    mov ax, word [bp - 0x0004]       ; 0x5f23
    inc ax                           ; 0x5f26
    push ax                          ; 0x5f27
    mov ax, word [bp - 0x0004]       ; 0x5f28
    inc ax                           ; 0x5f2b
    inc ax                           ; 0x5f2c
    push ax                          ; 0x5f2d
    mov ax, word [bp - 0x0004]       ; 0x5f2e
    inc ax                           ; 0x5f31
    push ax                          ; 0x5f32
    push ax                          ; 0x5f33
    mov ax, word [bp - 0x0004]       ; 0x5f34
    inc ax                           ; 0x5f37
    inc ax                           ; 0x5f38
    push ax                          ; 0x5f39
    push ax                          ; 0x5f3a
    push word [bp + 0x4]             ; 0x5f3b
    call loc_5d7e                    ; 0x5f3e
    add sp, byte 0x0e                ; 0x5f41
    jmp near @..api_idx_0004_7.l6    ; 0x5f44
    mov ax, 0x248                    ; 0x5f47
    imul word [bp + 0x4]             ; 0x5f4a
    mov bx, ax                       ; 0x5f4d
    mov byte [bx + 0x5d53], 2        ; 0x5f4f
    mov ax, word [bp - 0x0004]       ; 0x5f54
    inc ax                           ; 0x5f57
    inc ax                           ; 0x5f58
    push ax                          ; 0x5f59
    mov ax, word [bp - 0x0004]       ; 0x5f5a
    add ax, strict word 4            ; 0x5f5d
    push ax                          ; 0x5f60
    mov ax, word [bp - 0x0004]       ; 0x5f61
    inc ax                           ; 0x5f64
    inc ax                           ; 0x5f65
    push ax                          ; 0x5f66
    push ax                          ; 0x5f67
    push ax                          ; 0x5f68
    mov ax, word [bp - 0x0004]       ; 0x5f69
    inc ax                           ; 0x5f6c
    inc ax                           ; 0x5f6d
    inc ax                           ; 0x5f6e
    push ax                          ; 0x5f6f
    push word [bp + 0x4]             ; 0x5f70
    call loc_5d7e                    ; 0x5f73
    add sp, byte 0x0e                ; 0x5f76
    jmp near @..api_idx_0004_7.l6    ; 0x5f79
    mov ax, word [bp - 0x0004]       ; 0x5f7c
    inc ax                           ; 0x5f7f
    inc ax                           ; 0x5f80
    push ax                          ; 0x5f81
    mov ax, word [bp - 0x0004]       ; 0x5f82
    inc ax                           ; 0x5f85
    push ax                          ; 0x5f86
    push ax                          ; 0x5f87
    mov ax, word [bp - 0x0004]       ; 0x5f88
    inc ax                           ; 0x5f8b
    inc ax                           ; 0x5f8c
    push ax                          ; 0x5f8d
    push ax                          ; 0x5f8e
    mov ax, word [bp - 0x0004]       ; 0x5f8f
jumptable_11b9_case_1:
    inc ax                           ; 0x5f92
    push ax                          ; 0x5f93
    push word [bp + 0x4]             ; 0x5f94
    call loc_5d7e                    ; 0x5f97
    add sp, byte 0x0e                ; 0x5f9a
    jmp near @..api_idx_0004_7.l6    ; 0x5f9d
    mov ax, 0x248                    ; 0x5fa0
    imul word [bp + 0x4]             ; 0x5fa3
    mov bx, ax                       ; 0x5fa6
    mov byte [bx + 0x5d50], 1        ; 0x5fa8
    mov byte [bx + 0x5d51], 1        ; 0x5fad
    mov ax, word [bp - 0x0004]       ; 0x5fb2
    inc ax                           ; 0x5fb5
    inc ax                           ; 0x5fb6
    inc ax                           ; 0x5fb7
    push ax                          ; 0x5fb8
    mov ax, word [bp - 0x0004]       ; 0x5fb9
    inc ax                           ; 0x5fbc
    inc ax                           ; 0x5fbd
    push ax                          ; 0x5fbe
    push ax                          ; 0x5fbf
    push ax                          ; 0x5fc0
    push ax                          ; 0x5fc1
    push ax                          ; 0x5fc2
    push word [bp + 0x4]             ; 0x5fc3
    call loc_5d7e                    ; 0x5fc6
    add sp, byte 0x0e                ; 0x5fc9
    jmp near @..api_idx_0004_7.l6    ; 0x5fcc
    mov ax, word [bp - 0x0004]       ; 0x5fcf
    inc ax                           ; 0x5fd2
    inc ax                           ; 0x5fd3
    push ax                          ; 0x5fd4
    mov ax, word [bp - 0x0004]       ; 0x5fd5
    inc ax                           ; 0x5fd8
    push ax                          ; 0x5fd9
    push ax                          ; 0x5fda
    mov ax, word [bp - 0x0004]       ; 0x5fdb
    inc ax                           ; 0x5fde
    inc ax                           ; 0x5fdf
    push ax                          ; 0x5fe0
    push ax                          ; 0x5fe1
    mov ax, word [bp - 0x0004]       ; 0x5fe2
    inc ax                           ; 0x5fe5
    push ax                          ; 0x5fe6
    push word [bp + 0x4]             ; 0x5fe7
    call loc_5d7e                    ; 0x5fea
    add sp, byte 0x0e                ; 0x5fed
    jmp near @..api_idx_0004_7.l6    ; 0x5ff0

    db 0x8b, 0x46, 0xfc, 0x40, 0x40, 0x50, 0x8b, 0x46, 0xfc, 0x40, 0x50, 0x50, 0x50, 0x8b, 0x46, 0xfc
    db 0x40, 0x40, 0x50, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x71, 0xfd, 0x83, 0xc4, 0x0e, 0xeb, 0x70, 0x8b
    db 0x46, 0xfc, 0x40, 0x50, 0x8b, 0x46, 0xfc, 0x40, 0x40, 0x40, 0x50, 0x8b, 0x46, 0xfc, 0x40, 0x50
    db 0x50, 0x50, 0x8b, 0x46, 0xfc, 0x40, 0x40, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x4d, 0xfd, 0x83, 0xc4
    db 0x0e, 0xeb, 0x4c, 0x8b, 0x46, 0xfc, 0x40, 0x50, 0x50, 0x8b, 0x46, 0xfc, 0x40, 0x40, 0x50, 0x50
    db 0x8b, 0x46, 0xfc, 0x40, 0x50, 0x8b, 0x46, 0xfc, 0x40, 0x40, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x2a
    db 0xfd, 0x83, 0xc4, 0x0e, 0xeb, 0x29, 0x9b, 0xae, 0xb1, 0xae, 0xe1, 0xae, 0x9b, 0xae, 0x16, 0xaf
    db 0x35, 0xaf, 0x6a, 0xaf, 0x8e, 0xaf, 0xc3, 0xaf, 0xe7, 0xaf, 0x16, 0xb0, 0x3a, 0xb0, 0x59, 0xb0
    db 0x7d, 0xb0

@..api_idx_0004_7.l5:
    cmp ax, strict word 0xe          ; 0x6075
    jae short @..api_idx_0004_7.l6   ; 0x6078
    xchg bx, ax                      ; 0x607a
    shl bx, 1                        ; 0x607b
    jmp [cs:bx - 0x4f60]             ; 0x607d
@..api_idx_0004_7.l6:
    ret                              ; 0x6082
