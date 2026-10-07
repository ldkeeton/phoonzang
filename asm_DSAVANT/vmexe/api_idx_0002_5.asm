api_idx_0002_5:
    mov ax, 0xfffe                   ; 0x2bf2
    call ds_dispatch_f40b            ; 0x2bf5
    cmp word [bp + 0x4], byte 0      ; 0x2bf8
    jle short @..api_idx_0002_5.l3   ; 0x2bfc
    cmp word [bp + 0x4], byte 6      ; 0x2bfe
    jge short @..api_idx_0002_5.l3   ; 0x2c02
    mov word [bp - 0x0002], 1        ; 0x2c04
    jmp short @..api_idx_0002_5.l2   ; 0x2c09
@..api_idx_0002_5.l1:
    push word [bp + 0xe]             ; 0x2c0b
    push word [bp + 0xc]             ; 0x2c0e
    push word [bp + 0xa]             ; 0x2c11
    push word [bp + 0x8]             ; 0x2c14
    push word [bp + 0x6]             ; 0x2c17
    mov ax, 0xfff6                   ; 0x2c1a
    push ax                          ; 0x2c1d
    push word [bp - 0x0002]          ; 0x2c1e
    call api_idx_000a_3              ; 0x2c21
    add sp, byte 0x0e                ; 0x2c24
    inc word [bp - 0x0002]           ; 0x2c27
@..api_idx_0002_5.l2:
    mov ax, word [bp - 0x0002]       ; 0x2c2a
    cmp ax, word [data_8466]         ; 0x2c2d
    jle short @..api_idx_0002_5.l1   ; 0x2c31
    jmp short @..api_idx_0002_5.l4   ; 0x2c33
@..api_idx_0002_5.l3:
    push word [bp + 0xe]             ; 0x2c35
    push word [bp + 0xc]             ; 0x2c38
    push word [bp + 0xa]             ; 0x2c3b
    push word [bp + 0x8]             ; 0x2c3e
    push word [bp + 0x6]             ; 0x2c41
    mov ax, 0xfff6                   ; 0x2c44
    push ax                          ; 0x2c47
    mov ax, 0                        ; 0x2c48
    push ax                          ; 0x2c4b
    call api_idx_000a_3              ; 0x2c4c
    add sp, byte 0x0e                ; 0x2c4f
    mov bx, word [data_848e]         ; 0x2c52
    cmp byte [bx + 0x1a1], 0         ; 0x2c56
    jbe short @..api_idx_0002_5.l4   ; 0x2c5b
    push word [bp + 0xe]             ; 0x2c5d
    push word [bp + 0xc]             ; 0x2c60
    push word [bp + 0xa]             ; 0x2c63
    push word [bp + 0x8]             ; 0x2c66
    push word [bp + 0x6]             ; 0x2c69
    mov ax, 0xfff6                   ; 0x2c6c
    push ax                          ; 0x2c6f
    mov ax, 6                        ; 0x2c70
    push ax                          ; 0x2c73
    call api_idx_000a_3              ; 0x2c74
    add sp, byte 0x0e                ; 0x2c77
@..api_idx_0002_5.l4:
    ret                              ; 0x2c7a
