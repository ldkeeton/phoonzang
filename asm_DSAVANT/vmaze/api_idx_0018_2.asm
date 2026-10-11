api_idx_0018_2:
    mov ax, 0xffe8                   ; 0x7b53
    call ds_dispatch_f40b            ; 0x7b56
    mov ax, word [bp + 0x6]          ; 0x7b59
    inc ax                           ; 0x7b5c
    mov word [bp - 0x000c], ax       ; 0x7b5d
    mov bx, ax                       ; 0x7b60
    mov al, byte [bx + 0x7171]       ; 0x7b62
    sub ah, ah                       ; 0x7b66
    dec ax                           ; 0x7b68
    mov word [bp - 0x0004], ax       ; 0x7b69
    mov ax, word [bp + 0x6]          ; 0x7b6c
    shl ax, 1                        ; 0x7b6f
    mov bx, ax                       ; 0x7b71
    mov ax, word [bx + 0x256]        ; 0x7b73
    mov cx, 0x64                     ; 0x7b77
    imul cx                          ; 0x7b7a
    mov cx, 0xa                      ; 0x7b7c
    cwd                              ; 0x7b7f
    idiv cx                          ; 0x7b80
    mov word [bp - 0x000e], ax       ; 0x7b82
    cmp word [bp + 0x4], byte 0      ; 0x7b85
    je short @..api_idx_0018_2.l1    ; 0x7b89
    mov cx, 0                        ; 0x7b8b
    sub cx, ax                       ; 0x7b8e
    mov word [bp - 0x0008], cx       ; 0x7b90
    mov word [bp - 0x0006], 0        ; 0x7b93
    jmp short @..api_idx_0018_2.l2   ; 0x7b98
@..api_idx_0018_2.l1:
    mov word [bp - 0x0008], ax       ; 0x7b9a
    mov ax, 0                        ; 0x7b9d
    sub ax, word [bx + 0x256]        ; 0x7ba0
    mov word [bp - 0x0006], ax       ; 0x7ba4
@..api_idx_0018_2.l2:
    mov ax, word [dseg_8f46]         ; 0x7ba7
    add ax, word [dseg_8f44]         ; 0x7baa
    add ax, word [dseg_82ee]         ; 0x7bae
    add ax, word [bp + 0x6]          ; 0x7bb2
    mov cx, 2                        ; 0x7bb5
    cwd                              ; 0x7bb8
    idiv cx                          ; 0x7bb9
    mov word [bp - 0x000a], dx       ; 0x7bbb
    mov word [bp - 0x0002], 1        ; 0x7bbe
@..api_idx_0018_2.l3:
    mov ax, word [dseg_82e8]         ; 0x7bc3
    inc ax                           ; 0x7bc6
    mov cx, 2                        ; 0x7bc7
    cwd                              ; 0x7bca
    idiv cx                          ; 0x7bcb
    mov word [dseg_82e8], dx         ; 0x7bcd
    call api_idx_0030                ; 0x7bd1
    mov al, byte [bp - 0x000c]       ; 0x7bd4
    mov byte [bp - 0x0018], al       ; 0x7bd7
    mov byte [bp - 0x0017], 0        ; 0x7bda
    mov ax, 0                        ; 0x7bde
    push ax                          ; 0x7be1
    push ax                          ; 0x7be2
    lea ax, word [bp - 0x0018]       ; 0x7be3
    push ax                          ; 0x7be6
    push word [bp - 0x000a]          ; 0x7be7
    mov ax, 0x90                     ; 0x7bea
    push ax                          ; 0x7bed
    push word [bp - 0x0004]          ; 0x7bee
    mov ax, 0xf8                     ; 0x7bf1
    push ax                          ; 0x7bf4
    mov ax, 0x48                     ; 0x7bf5
    push ax                          ; 0x7bf8
    mov ax, word [bp - 0x0002]       ; 0x7bf9
    imul word [bp - 0x0008]          ; 0x7bfc
    mov cx, 0x64                     ; 0x7bff
    cwd                              ; 0x7c02
    idiv cx                          ; 0x7c03
    push ax                          ; 0x7c05
    mov bx, word [bp - 0x000c]       ; 0x7c06
    mov al, byte [bx + 0x7171]       ; 0x7c09
    sub ah, ah                       ; 0x7c0d
    mov cx, ax                       ; 0x7c0f
    pop ax                           ; 0x7c11
    add ax, cx                       ; 0x7c12
    add ax, word [bp - 0x0006]       ; 0x7c14
    push ax                          ; 0x7c17
    mov ax, 0xa                      ; 0x7c18
    imul word [bp + 0x6]             ; 0x7c1b
    mov cx, word [bp + 0x8]          ; 0x7c1e
    shl cx, 1                        ; 0x7c21
    add ax, cx                       ; 0x7c23
    mov bx, ax                       ; 0x7c25
    mov ax, word [bx + 0x36e]        ; 0x7c27
    push ax                          ; 0x7c2b
    mov ax, word [bp - 0x000c]       ; 0x7c2c
    shl ax, 1                        ; 0x7c2f
    add ax, word [bp - 0x000a]       ; 0x7c31
    mov bx, ax                       ; 0x7c34
    mov al, byte [bx + 0x7128]       ; 0x7c36
    sub ah, ah                       ; 0x7c3a
    mov cx, ax                       ; 0x7c3c
    pop ax                           ; 0x7c3e
    add ax, cx                       ; 0x7c3f
    push ax                          ; 0x7c41
    mov ax, 5                        ; 0x7c42
    push ax                          ; 0x7c45
    call ds_dispatch_efd1            ; 0x7c46
    add sp, byte 0x16                ; 0x7c49
    mov ax, 0xffff                   ; 0x7c4c
    cmp word [bp - 0x000a], byte 0   ; 0x7c4f
    je short @..api_idx_0018_2.l4    ; 0x7c53
    mov ax, word [bp + 0x8]          ; 0x7c55
    shl ax, 1                        ; 0x7c58
    mov bx, ax                       ; 0x7c5a
    mov ax, word [bx + 0x24c]        ; 0x7c5c
    add ax, word [bp + 0x6]          ; 0x7c60
@..api_idx_0018_2.l4:
    push ax                          ; 0x7c63
    mov ax, 2                        ; 0x7c64
    push ax                          ; 0x7c67
    mov ax, word [bp + 0x8]          ; 0x7c68
    shl ax, 1                        ; 0x7c6b
    mov bx, ax                       ; 0x7c6d
    mov ax, word [bx + 0x24c]        ; 0x7c6f
    add ax, word [bp + 0x6]          ; 0x7c73
    push ax                          ; 0x7c76
    mov ax, 0                        ; 0x7c77
    push ax                          ; 0x7c7a
    db 0xe8, 0xa1, 0x73 ; call 0xf01f
    add sp, byte 8                   ; 0x7c7e
    mov ax, 0x8f                     ; 0x7c81
    push ax                          ; 0x7c84
    mov ax, 0xf7                     ; 0x7c85
    push ax                          ; 0x7c88
    mov ax, 0x20                     ; 0x7c89
    push ax                          ; 0x7c8c
    mov ax, 0x48                     ; 0x7c8d
    push ax                          ; 0x7c90
    call ds_dispatch_e8da            ; 0x7c91
    add sp, byte 8                   ; 0x7c94
    cmp word [bp + 0xa], byte 0      ; 0x7c97
    je short @..api_idx_0018_2.l5    ; 0x7c9b
    mov ax, 0x10                     ; 0x7c9d
    push ax                          ; 0x7ca0
    call ds_dispatch_b7e0            ; 0x7ca1
    pop cx                           ; 0x7ca4
@..api_idx_0018_2.l5:
    inc word [bp - 0x0002]           ; 0x7ca5
    mov ax, word [bp - 0x0002]       ; 0x7ca8
    cmp ax, strict word 0xa          ; 0x7cab
    jg short @..api_idx_0018_2.l6    ; 0x7cae
    jmp near @..api_idx_0018_2.l3    ; 0x7cb0
@..api_idx_0018_2.l6:
    ret                              ; 0x7cb3
loc_7cb4:
    mov ax, 0                        ; 0x7cb4
    call ds_dispatch_f40b            ; 0x7cb7
@..local.l72:
    cmp word [bp + 0x4], byte 0      ; 0x7cba
    jle short @..local.l74           ; 0x7cbe
    cmp word [bp + 0x6], byte 0      ; 0x7cc0
    je short @..local.l73            ; 0x7cc4
    mov ax, word [dseg_82e8]         ; 0x7cc6
    inc ax                           ; 0x7cc9
    mov cx, 2                        ; 0x7cca
    cwd                              ; 0x7ccd
    idiv cx                          ; 0x7cce
    mov word [dseg_82e8], dx         ; 0x7cd0
    call loc_676c                    ; 0x7cd4
    mov ax, 0x10                     ; 0x7cd7
    push ax                          ; 0x7cda
    call ds_dispatch_b7e0            ; 0x7cdb
    pop cx                           ; 0x7cde
@..local.l73:
    dec word [bp + 0x4]              ; 0x7cdf
    jmp short @..local.l72           ; 0x7ce2
@..local.l74:
    ret                              ; 0x7ce4
