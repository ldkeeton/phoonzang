api_idx_0002_6:
    mov ax, 0xfffe                   ; 0x2d6b
    call ds_dispatch_f40b            ; 0x2d6e
    mov word [bss_91d6], 2           ; 0x2d71
    cmp word [bp + 0x4], byte 0      ; 0x2d77
    jle short @..api_idx_0002_6.l3   ; 0x2d7b
    cmp word [bp + 0x4], byte 6      ; 0x2d7d
    jge short @..api_idx_0002_6.l3   ; 0x2d81
    mov word [bp - 0x0002], 1        ; 0x2d83
    jmp short @..api_idx_0002_6.l2   ; 0x2d88
@..api_idx_0002_6.l1:
    push word [bp + 0x14]            ; 0x2d8a
    push word [bp + 0x12]            ; 0x2d8d
    push word [bp + 0x10]            ; 0x2d90
    push word [bp + 0xe]             ; 0x2d93
    push word [bp + 0xc]             ; 0x2d96
    push word [bp + 0xa]             ; 0x2d99
    push word [bp + 0x8]             ; 0x2d9c
    push word [bp + 0x6]             ; 0x2d9f
    push word [bp - 0x0002]          ; 0x2da2
    call api_idx_0006_4              ; 0x2da5
    add sp, byte 0x12                ; 0x2da8
    inc word [bp - 0x0002]           ; 0x2dab
@..api_idx_0002_6.l2:
    mov ax, word [bp - 0x0002]       ; 0x2dae
    cmp ax, word [bss_8466]          ; 0x2db1
    jle short @..api_idx_0002_6.l1   ; 0x2db5
    jmp short @..api_idx_0002_6.l4   ; 0x2db7
@..api_idx_0002_6.l3:
    push word [bp + 0x14]            ; 0x2db9
    push word [bp + 0x12]            ; 0x2dbc
    push word [bp + 0x10]            ; 0x2dbf
    push word [bp + 0xe]             ; 0x2dc2
    push word [bp + 0xc]             ; 0x2dc5
    push word [bp + 0xa]             ; 0x2dc8
    push word [bp + 0x8]             ; 0x2dcb
    push word [bp + 0x6]             ; 0x2dce
    mov ax, 0                        ; 0x2dd1
    push ax                          ; 0x2dd4
    call api_idx_0006_4              ; 0x2dd5
    add sp, byte 0x12                ; 0x2dd8
    mov bx, word [bss_848e]          ; 0x2ddb
    cmp byte [bx + 0x1a1], 0         ; 0x2ddf
    jbe short @..api_idx_0002_6.l4   ; 0x2de4
    push word [bp + 0x14]            ; 0x2de6
    push word [bp + 0x12]            ; 0x2de9
    push word [bp + 0x10]            ; 0x2dec
    push word [bp + 0xe]             ; 0x2def
    push word [bp + 0xc]             ; 0x2df2
    push word [bp + 0xa]             ; 0x2df5
    push word [bp + 0x8]             ; 0x2df8
    push word [bp + 0x6]             ; 0x2dfb
    mov ax, 6                        ; 0x2dfe
    push ax                          ; 0x2e01
    call api_idx_0006_4              ; 0x2e02
    add sp, byte 0x12                ; 0x2e05
@..api_idx_0002_6.l4:
    ret                              ; 0x2e08
loc_2e09:
    mov ax, 0                        ; 0x2e09
    call ds_dispatch_f40b            ; 0x2e0c
    cmp word [bp + 0x8], byte 1      ; 0x2e0f
    jne short @..local.l64           ; 0x2e13
    cmp word [bp + 0x6], byte 0      ; 0x2e15
    jle short @..local.l62           ; 0x2e19
    mov ax, word [bp + 0x4]          ; 0x2e1b
    sub word [bp + 0x6], ax          ; 0x2e1e
    jmp short @..local.l63           ; 0x2e21
@..local.l62:
    mov ax, 0                        ; 0x2e23
    sub ax, word [bp + 0x4]          ; 0x2e26
    cmp ax, word [bp + 0x6]          ; 0x2e29
    jge short @..local.l63           ; 0x2e2c
    mov word [bp + 0x6], ax          ; 0x2e2e
@..local.l63:
    jmp short @..local.l66           ; 0x2e31
@..local.l64:
    cmp word [bp + 0x8], byte 0      ; 0x2e33
    jne short @..local.l66           ; 0x2e37
    cmp word [bp + 0x6], byte 0      ; 0x2e39
    jge short @..local.l65           ; 0x2e3d
    mov ax, word [bp + 0x4]          ; 0x2e3f
    add word [bp + 0x6], ax          ; 0x2e42
    jmp short @..local.l66           ; 0x2e45
@..local.l65:
    mov ax, word [bp + 0x6]          ; 0x2e47
    cmp ax, word [bp + 0x4]          ; 0x2e4a
    jge short @..local.l66           ; 0x2e4d
    mov ax, word [bp + 0x4]          ; 0x2e4f
    mov word [bp + 0x6], ax          ; 0x2e52
@..local.l66:
    mov ax, word [bp + 0x6]          ; 0x2e55
    ret                              ; 0x2e58
