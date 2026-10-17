; auto-generated
api_idx_000e_LVUJ:
    mov ax, 0xfff2                   ; 0x0d77
    call aztec_csav                  ; 0x0d7a
    cmp word [bss_8f20], byte 0      ; 0x0d7d
    jg short @..api_idx_000e_LVUJ.l1 ; 0x0d82
    jmp near @..api_idx_000e_LVUJ.l8 ; 0x0d84
@..api_idx_000e_LVUJ.l1:
    mov ax, word [bss_82ee]          ; 0x0d87
    mov cx, word [bss_8f20]          ; 0x0d8a
    dec cx                           ; 0x0d8e
    sub ax, cx                       ; 0x0d8f
    add ax, strict word 6            ; 0x0d91
    mov cx, 4                        ; 0x0d94
    cwd                              ; 0x0d97
    idiv cx                          ; 0x0d98
    mov word [bp - 0x0002], dx       ; 0x0d9a
    mov ax, dx                       ; 0x0d9d
    jmp short @..api_idx_000e_LVUJ.l6 ; 0x0d9f
@..api_idx_000e_LVUJ.l2:
    mov byte [bp - 0x000e], 1        ; 0x0da1
    mov byte [bp - 0x000d], 2        ; 0x0da5
    mov ax, 5                        ; 0x0da9
    cmp word [bp - 0x0002], byte 0   ; 0x0dac
    jne short @..api_idx_000e_LVUJ.l3 ; 0x0db0
    mov ax, 4                        ; 0x0db2
@..api_idx_000e_LVUJ.l3:
    mov byte [bp - 0x000c], al       ; 0x0db5
    mov byte [bp - 0x000b], 0        ; 0x0db8
    mov word [bp - 0x0004], 0        ; 0x0dbc
    jmp short @..api_idx_000e_LVUJ.l7 ; 0x0dc1
@..api_idx_000e_LVUJ.l4:
    mov byte [bp - 0x000e], 3        ; 0x0dc3
    mov byte [bp - 0x000d], 0        ; 0x0dc7
    mov ax, 0                        ; 0x0dcb
    cmp word [bp - 0x0002], byte 3   ; 0x0dce
    jne short @..api_idx_000e_LVUJ.l5 ; 0x0dd2
    mov ax, 1                        ; 0x0dd4
@..api_idx_000e_LVUJ.l5:
    mov word [bp - 0x0004], ax       ; 0x0dd7
    jmp short @..api_idx_000e_LVUJ.l7 ; 0x0dda
@..api_idx_000e_LVUJ.l6:
    cmp ax, strict word 0            ; 0x0ddc
    je short @..api_idx_000e_LVUJ.l2 ; 0x0ddf
    cmp ax, strict word 1            ; 0x0de1
    je short @..api_idx_000e_LVUJ.l4 ; 0x0de4
    cmp ax, strict word 2            ; 0x0de6
    je short @..api_idx_000e_LVUJ.l2 ; 0x0de9
    cmp ax, strict word 3            ; 0x0deb
    je short @..api_idx_000e_LVUJ.l4 ; 0x0dee
@..api_idx_000e_LVUJ.l7:
    lea ax, word [bp - 0x000e]       ; 0x0df0
    push ax                          ; 0x0df3
    mov ax, 0                        ; 0x0df4
    push ax                          ; 0x0df7
    push word [bp - 0x0004]          ; 0x0df8
    mov ax, 0xf8                     ; 0x0dfb
    push ax                          ; 0x0dfe
    mov ax, 0x48                     ; 0x0dff
    push ax                          ; 0x0e02
    mov al, byte [bp - 0x000e]       ; 0x0e03
    sub ah, ah                       ; 0x0e06
    mov bx, ax                       ; 0x0e08
    mov al, byte [bx + 0x6eb5]       ; 0x0e0a
    sub ah, ah                       ; 0x0e0e
    inc ax                           ; 0x0e10
    push ax                          ; 0x0e11
    shl bx, 1                        ; 0x0e12
    mov ax, bx                       ; 0x0e14
    add ax, word [bp - 0x0004]       ; 0x0e16
    mov bx, ax                       ; 0x0e19
    mov al, byte [bx + 0x6e6c]       ; 0x0e1b
    sub ah, ah                       ; 0x0e1f
    inc ax                           ; 0x0e21
    push ax                          ; 0x0e22
    mov ax, 3                        ; 0x0e23
    push ax                          ; 0x0e26
    mov ax, 0x1b                     ; 0x0e27
    push ax                          ; 0x0e2a
    call api_idx_0004_ONRQ           ; 0x0e2b
    add sp, byte 0x12                ; 0x0e2e
@..api_idx_000e_LVUJ.l8:
    cmp word [bss_8f20], byte 0xff   ; 0x0e31
    jne short @..api_idx_000e_LVUJ.l9 ; 0x0e36
    mov byte [bp - 0x000e], 1        ; 0x0e38
    mov byte [bp - 0x000d], 0        ; 0x0e3c
    lea ax, word [bp - 0x000e]       ; 0x0e40
    push ax                          ; 0x0e43
    mov ax, 0                        ; 0x0e44
    push ax                          ; 0x0e47
    push ax                          ; 0x0e48
    mov ax, 0xf8                     ; 0x0e49
    push ax                          ; 0x0e4c
    mov ax, 0x48                     ; 0x0e4d
    push ax                          ; 0x0e50
    mov al, byte [bss_7b04]          ; 0x0e51
    sub ah, ah                       ; 0x0e54
    push ax                          ; 0x0e56
    mov al, byte [bss_7abc]          ; 0x0e57
    sub ah, ah                       ; 0x0e5a
    push ax                          ; 0x0e5c
    mov ax, 0xc                      ; 0x0e5d
    push ax                          ; 0x0e60
    mov ax, 0x1c                     ; 0x0e61
    push ax                          ; 0x0e64
    call api_idx_0004_ONRQ           ; 0x0e65
    add sp, byte 0x12                ; 0x0e68
@..api_idx_000e_LVUJ.l9:
    ret                              ; 0x0e6b
