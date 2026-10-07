api_idx_0008:
    mov ax, 0xfff8                   ; 0x0d3f
    call ds_dispatch_f40b            ; 0x0d42
    push word [bp + 0xe]             ; 0x0d45
    push word [bp + 0xc]             ; 0x0d48
    call ds_dispatch_e823            ; 0x0d4b
    add sp, byte 4                   ; 0x0d4e
    push word [bp + 0x4]             ; 0x0d51
    call ds_dispatch_fa90            ; 0x0d54
    pop cx                           ; 0x0d57
    mov word [bp - 0x0004], ax       ; 0x0d58
    mov cx, 6                        ; 0x0d5b
    imul cx                          ; 0x0d5e
    add word [bp + 0x6], ax          ; 0x0d60
@..api_idx_0008.l1:
    mov word [bp - 0x0006], 0        ; 0x0d63
    mov word [bp - 0x0008], 0        ; 0x0d68
@..api_idx_0008.l2:
    mov ax, 1                        ; 0x0d6d
    push ax                          ; 0x0d70
    call ds_dispatch_ea50            ; 0x0d71
    pop cx                           ; 0x0d74
    test ax, ax                      ; 0x0d75
    je short @..api_idx_0008.l3      ; 0x0d77
    jmp near @..api_idx_0008.l7      ; 0x0d79
@..api_idx_0008.l3:
    cmp word [bp - 0x0008], byte 0   ; 0x0d7c
    jne short @..api_idx_0008.l5     ; 0x0d80
    push word [bp + 0xe]             ; 0x0d82
    mov ax, word [bp + 0x8]          ; 0x0d85
    add ax, strict word 5            ; 0x0d88
    push ax                          ; 0x0d8b
    mov ax, word [bp + 0x6]          ; 0x0d8c
    add ax, strict word 5            ; 0x0d8f
    push ax                          ; 0x0d92
    push word [bp + 0x8]             ; 0x0d93
    push word [bp + 0x6]             ; 0x0d96
    call ds_dispatch_e901            ; 0x0d99
    add sp, byte 0x0a                ; 0x0d9c
    cmp word [bp - 0x0006], byte 0   ; 0x0d9f
    je short @..api_idx_0008.l4      ; 0x0da3
    push word [bp + 0x8]             ; 0x0da5
    push word [bp + 0x6]             ; 0x0da8
    call ds_dispatch_e809            ; 0x0dab
    add sp, byte 4                   ; 0x0dae
    mov ax, 0                        ; 0x0db1
    push ax                          ; 0x0db4
    mov ax, 3                        ; 0x0db5
    push ax                          ; 0x0db8
    call ds_dispatch_e830            ; 0x0db9
    add sp, byte 4                   ; 0x0dbc
@..api_idx_0008.l4:
    mov ax, word [bp + 0x8]          ; 0x0dbf
    add ax, strict word 5            ; 0x0dc2
    push ax                          ; 0x0dc5
    mov ax, word [bp + 0x6]          ; 0x0dc6
    add ax, strict word 5            ; 0x0dc9
    push ax                          ; 0x0dcc
    push word [bp + 0x8]             ; 0x0dcd
    push word [bp + 0x6]             ; 0x0dd0
    call ds_dispatch_e8da            ; 0x0dd3
    add sp, byte 8                   ; 0x0dd6
    mov ax, word [bp - 0x0006]       ; 0x0dd9
    inc ax                           ; 0x0ddc
    mov cx, data_0002                ; 0x0ddd
    cwd                              ; 0x0de0
    idiv cx                          ; 0x0de1
    mov word [bp - 0x0006], dx       ; 0x0de3
    mov word [bp - 0x0008], 0xa      ; 0x0de6
    jmp short @..api_idx_0008.l6     ; 0x0deb
@..api_idx_0008.l5:
    mov ax, 0xa                      ; 0x0ded
    push ax                          ; 0x0df0
    call ds_dispatch_e489            ; 0x0df1
    pop cx                           ; 0x0df4
    dec word [bp - 0x0008]           ; 0x0df5
@..api_idx_0008.l6:
    jmp near @..api_idx_0008.l2      ; 0x0df8
@..api_idx_0008.l7:
    mov ax, 1                        ; 0x0dfb
    push ax                          ; 0x0dfe
    call ds_dispatch_eb32            ; 0x0dff
    pop cx                           ; 0x0e02
    sub ah, ah                       ; 0x0e03
    mov word [bp - 0x0002], ax       ; 0x0e05
    push word [bp + 0xe]             ; 0x0e08
    mov ax, word [bp + 0x8]          ; 0x0e0b
    add ax, strict word 5            ; 0x0e0e
    push ax                          ; 0x0e11
    mov ax, word [bp + 0x6]          ; 0x0e12
    add ax, strict word 5            ; 0x0e15
    push ax                          ; 0x0e18
    push word [bp + 0x8]             ; 0x0e19
    push word [bp + 0x6]             ; 0x0e1c
    call ds_dispatch_e901            ; 0x0e1f
    add sp, byte 0x0a                ; 0x0e22
    mov ax, word [bp + 0x8]          ; 0x0e25
    add ax, strict word 5            ; 0x0e28
    push ax                          ; 0x0e2b
    mov ax, word [bp + 0x6]          ; 0x0e2c
    add ax, strict word 5            ; 0x0e2f
    push ax                          ; 0x0e32
    push word [bp + 0x8]             ; 0x0e33
    push word [bp + 0x6]             ; 0x0e36
    call ds_dispatch_e8da            ; 0x0e39
    add sp, byte 8                   ; 0x0e3c
    cmp word [bp - 0x0002], byte 0x0d ; 0x0e3f
    jne short @..api_idx_0008.l8     ; 0x0e43
    mov bx, word [bp + 0x4]          ; 0x0e45
    mov si, word [bp - 0x0004]       ; 0x0e48
    mov byte [bx + si], 0            ; 0x0e4b
    call ds_dispatch_ec17            ; 0x0e4e
    ret                              ; 0x0e51
