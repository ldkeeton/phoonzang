api_idx_000e_2:
    mov ax, 0xfff2                   ; 0x0cc9
    call ds_dispatch_f40b            ; 0x0ccc
    cmp word [data_8f20], byte 0     ; 0x0ccf
    jg short @..api_idx_000e_2.l1    ; 0x0cd4
    jmp near @..api_idx_000e_2.l8    ; 0x0cd6
@..api_idx_000e_2.l1:
    mov ax, word [data_82ee]         ; 0x0cd9
    mov cx, word [data_8f20]         ; 0x0cdc
    dec cx                           ; 0x0ce0
    sub ax, cx                       ; 0x0ce1
    add ax, strict word 6            ; 0x0ce3
    mov cx, 4                        ; 0x0ce6
    cwd                              ; 0x0ce9
    idiv cx                          ; 0x0cea
    mov word [bp - 0x0002], dx       ; 0x0cec
    mov ax, dx                       ; 0x0cef
    jmp short @..api_idx_000e_2.l6   ; 0x0cf1
@..api_idx_000e_2.l2:
    mov byte [bp - 0x000e], 1        ; 0x0cf3
    mov byte [bp - 0x000d], 2        ; 0x0cf7
    mov ax, 5                        ; 0x0cfb
    cmp word [bp - 0x0002], byte 0   ; 0x0cfe
    jne short @..api_idx_000e_2.l3   ; 0x0d02
    mov ax, 4                        ; 0x0d04
@..api_idx_000e_2.l3:
    mov byte [bp - 0x000c], al       ; 0x0d07
    mov byte [bp - 0x000b], 0        ; 0x0d0a
    mov word [bp - 0x0004], 0        ; 0x0d0e
    jmp short @..api_idx_000e_2.l7   ; 0x0d13
@..api_idx_000e_2.l4:
    mov byte [bp - 0x000e], 3        ; 0x0d15
    mov byte [bp - 0x000d], 0        ; 0x0d19
    mov ax, 0                        ; 0x0d1d
    cmp word [bp - 0x0002], byte 3   ; 0x0d20
    jne short @..api_idx_000e_2.l5   ; 0x0d24
    mov ax, 1                        ; 0x0d26
@..api_idx_000e_2.l5:
    mov word [bp - 0x0004], ax       ; 0x0d29
    jmp short @..api_idx_000e_2.l7   ; 0x0d2c
@..api_idx_000e_2.l6:
    cmp ax, strict word 0            ; 0x0d2e
    je short @..api_idx_000e_2.l2    ; 0x0d31
    cmp ax, strict word 1            ; 0x0d33
    je short @..api_idx_000e_2.l4    ; 0x0d36
    cmp ax, strict word 2            ; 0x0d38
    je short @..api_idx_000e_2.l2    ; 0x0d3b
    cmp ax, strict word 3            ; 0x0d3d
    je short @..api_idx_000e_2.l4    ; 0x0d40
@..api_idx_000e_2.l7:
    lea ax, word [bp - 0x000e]       ; 0x0d42
    push ax                          ; 0x0d45
    mov ax, 0                        ; 0x0d46
    push ax                          ; 0x0d49
    push word [bp - 0x0004]          ; 0x0d4a
    mov ax, 0xf8                     ; 0x0d4d
    push ax                          ; 0x0d50
    mov ax, 0x48                     ; 0x0d51
    push ax                          ; 0x0d54
    mov al, byte [bp - 0x000e]       ; 0x0d55
    sub ah, ah                       ; 0x0d58
    mov bx, ax                       ; 0x0d5a
    mov al, byte [bx + 0x6eb5]       ; 0x0d5c
    sub ah, ah                       ; 0x0d60
    inc ax                           ; 0x0d62
    push ax                          ; 0x0d63
    shl bx, 1                        ; 0x0d64
    mov ax, bx                       ; 0x0d66
    add ax, word [bp - 0x0004]       ; 0x0d68
    mov bx, ax                       ; 0x0d6b
    mov al, byte [bx + 0x6e6c]       ; 0x0d6d
    sub ah, ah                       ; 0x0d71
    inc ax                           ; 0x0d73
    push ax                          ; 0x0d74
    mov ax, 3                        ; 0x0d75
    push ax                          ; 0x0d78
    mov ax, 0x1b                     ; 0x0d79
    push ax                          ; 0x0d7c
    call api_idx_0004_3              ; 0x0d7d
    add sp, byte 0x12                ; 0x0d80
@..api_idx_000e_2.l8:
    cmp word [data_8f20], byte 0xff  ; 0x0d83
    jne short @..api_idx_000e_2.l9   ; 0x0d88
    mov byte [bp - 0x000e], 1        ; 0x0d8a
    mov byte [bp - 0x000d], 0        ; 0x0d8e
    lea ax, word [bp - 0x000e]       ; 0x0d92
    push ax                          ; 0x0d95
    mov ax, 0                        ; 0x0d96
    push ax                          ; 0x0d99
    push ax                          ; 0x0d9a
    mov ax, 0xf8                     ; 0x0d9b
    push ax                          ; 0x0d9e
    mov ax, 0x48                     ; 0x0d9f
    push ax                          ; 0x0da2
    mov al, byte [data_7b04]         ; 0x0da3
    sub ah, ah                       ; 0x0da6
    push ax                          ; 0x0da8
    mov al, byte [data_7abc]         ; 0x0da9
    sub ah, ah                       ; 0x0dac
    push ax                          ; 0x0dae
    mov ax, 0xc                      ; 0x0daf
    push ax                          ; 0x0db2
    mov ax, 0x1c                     ; 0x0db3
    push ax                          ; 0x0db6
    call api_idx_0004_3              ; 0x0db7
    add sp, byte 0x12                ; 0x0dba
@..api_idx_000e_2.l9:
    ret                              ; 0x0dbd
