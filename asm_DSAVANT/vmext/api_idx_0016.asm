; auto-generated
api_idx_0016:
    mov ax, 0xffea                   ; 0x39e2
    call aztec_csav                  ; 0x39e5
    mov bx, word [bp + 0x4]          ; 0x39e8
    mov al, byte [bx + 0xb]          ; 0x39eb
    sub ah, ah                       ; 0x39ee
    mov word [bp - 0x000c], ax       ; 0x39f0
    cmp byte [bx + 0xa], 0           ; 0x39f3
    je short @..api_idx_0016.l1      ; 0x39f7
    jmp near @..api_idx_0016.l10     ; 0x39f9
@..api_idx_0016.l1:
    mov al, byte [bx + 0x8]          ; 0x39fc
    sub ah, ah                       ; 0x39ff
    mov word [bp - 0x0002], ax       ; 0x3a01
    jmp near @..api_idx_0016.l8      ; 0x3a04
@..api_idx_0016.l2:
    mov word [bp - 0x000a], 0        ; 0x3a07
    mov al, byte [bp - 0x0002]       ; 0x3a0c
    mov byte [bp - 0x0016], al       ; 0x3a0f
    mov byte [bp - 0x0015], 0        ; 0x3a12
    mov word [bp - 0x0006], 0        ; 0x3a16
    mov bx, word [bp + 0x4]          ; 0x3a1b
    mov al, byte [bx + 0x8]          ; 0x3a1e
    sub ah, ah                       ; 0x3a21
    inc ax                           ; 0x3a23
    cmp ax, word [bp - 0x0002]       ; 0x3a24
    jne short @..api_idx_0016.l3     ; 0x3a27
    mov ax, 3                        ; 0x3a29
    jmp short @..api_idx_0016.l4     ; 0x3a2c
@..api_idx_0016.l3:
    mov ax, 1                        ; 0x3a2e
@..api_idx_0016.l4:
    mov word [bp - 0x0008], ax       ; 0x3a31
    mov ax, word [bp - 0x0006]       ; 0x3a34
    mov word [bp - 0x0004], ax       ; 0x3a37
    jmp near @..api_idx_0016.l6      ; 0x3a3a
@..api_idx_0016.l5:
    mov ax, 0                        ; 0x3a3d
    push ax                          ; 0x3a40
    push ax                          ; 0x3a41
    lea ax, word [bp - 0x0016]       ; 0x3a42
    push ax                          ; 0x3a45
    mov bx, word [bp + 0x4]          ; 0x3a46
    mov al, byte [bx + 0xf]          ; 0x3a49
    sub ah, ah                       ; 0x3a4c
    push ax                          ; 0x3a4e
    mov ax, 0x90                     ; 0x3a4f
    push ax                          ; 0x3a52
    mov ax, 0x20                     ; 0x3a53
    push ax                          ; 0x3a56
    push word [bx + 0x6]             ; 0x3a57
    push word [bx + 0x4]             ; 0x3a5a
    mov bx, word [bp - 0x0002]       ; 0x3a5d
    mov al, byte [bx + 0x7013]       ; 0x3a60
    sub ah, ah                       ; 0x3a64
    add ax, word [bp - 0x000a]       ; 0x3a66
    push ax                          ; 0x3a69
    mov bx, word [bp + 0x4]          ; 0x3a6a
    mov al, byte [bx + 0xd]          ; 0x3a6d
    sub ah, ah                       ; 0x3a70
    mov cx, 0xa                      ; 0x3a72
    imul cx                          ; 0x3a75
    mov cx, word [bp - 0x000c]       ; 0x3a77
    shl cx, 1                        ; 0x3a7a
    add ax, cx                       ; 0x3a7c
    mov bx, ax                       ; 0x3a7e
    mov ax, word [bx + 0x260]        ; 0x3a80
    push ax                          ; 0x3a84
    mov ax, word [bp - 0x0002]       ; 0x3a85
    shl ax, 1                        ; 0x3a88
    push ax                          ; 0x3a8a
    mov bx, word [bp + 0x4]          ; 0x3a8b
    mov al, byte [bx + 0xf]          ; 0x3a8e
    sub ah, ah                       ; 0x3a91
    mov cx, ax                       ; 0x3a93
    pop ax                           ; 0x3a95
    add ax, cx                       ; 0x3a96
    mov bx, ax                       ; 0x3a98
    mov al, byte [bx + 0x6fca]       ; 0x3a9a
    sub ah, ah                       ; 0x3a9e
    mov cx, ax                       ; 0x3aa0
    pop ax                           ; 0x3aa2
    add ax, cx                       ; 0x3aa3
    push ax                          ; 0x3aa5
    mov bx, word [bp + 0x4]          ; 0x3aa6
    mov al, byte [bx + 0xc]          ; 0x3aa9
    sub ah, ah                       ; 0x3aac
    push ax                          ; 0x3aae
    call ds_loc_4218                 ; 0x3aaf
    add sp, byte 0x16                ; 0x3ab2
    mov bx, word [bp + 0x4]          ; 0x3ab5
    mov al, byte [bx + 0xd]          ; 0x3ab8
    sub ah, ah                       ; 0x3abb
    shl ax, 1                        ; 0x3abd
    mov bx, ax                       ; 0x3abf
    mov ax, word [bx + 0x29c]        ; 0x3ac1
    add word [bp - 0x000a], ax       ; 0x3ac5
    inc word [bp - 0x0004]           ; 0x3ac8
@..api_idx_0016.l6:
    mov ax, word [bp - 0x0004]       ; 0x3acb
    cmp ax, word [bp - 0x0008]       ; 0x3ace
    jge short @..api_idx_0016.l7     ; 0x3ad1
    jmp near @..api_idx_0016.l5      ; 0x3ad3
@..api_idx_0016.l7:
    inc word [bp - 0x0002]           ; 0x3ad6
@..api_idx_0016.l8:
    mov bx, word [bp + 0x4]          ; 0x3ad9
    mov al, byte [bx + 0x8]          ; 0x3adc
    sub ah, ah                       ; 0x3adf
    inc ax                           ; 0x3ae1
    inc ax                           ; 0x3ae2
    inc ax                           ; 0x3ae3
    cmp ax, word [bp - 0x0002]       ; 0x3ae4
    jle short @..api_idx_0016.l9     ; 0x3ae7
    jmp near @..api_idx_0016.l2      ; 0x3ae9
@..api_idx_0016.l9:
    jmp near @..api_idx_0016.l12     ; 0x3aec
@..api_idx_0016.l10:
    mov word [bp - 0x000a], 0        ; 0x3aef
    mov bx, word [bp + 0x4]          ; 0x3af4
    mov al, byte [bx + 0x8]          ; 0x3af7
    mov byte [bp - 0x0016], al       ; 0x3afa
    mov byte [bp - 0x0015], 0        ; 0x3afd
    mov word [bp - 0x0004], 0        ; 0x3b01
@..api_idx_0016.l11:
    mov ax, 0                        ; 0x3b06
    push ax                          ; 0x3b09
    push ax                          ; 0x3b0a
    lea ax, word [bp - 0x0016]       ; 0x3b0b
    push ax                          ; 0x3b0e
    mov bx, word [bp + 0x4]          ; 0x3b0f
    mov al, byte [bx + 0xf]          ; 0x3b12
    sub ah, ah                       ; 0x3b15
    push ax                          ; 0x3b17
    mov ax, 0x90                     ; 0x3b18
    push ax                          ; 0x3b1b
    mov ax, 0x20                     ; 0x3b1c
    push ax                          ; 0x3b1f
    push word [bx + 0x6]             ; 0x3b20
    push word [bx + 0x4]             ; 0x3b23
    mov al, byte [bx + 0xd]          ; 0x3b26
    sub ah, ah                       ; 0x3b29
    shl ax, 1                        ; 0x3b2b
    mov bx, ax                       ; 0x3b2d
    mov ax, word [bx + 0x292]        ; 0x3b2f
    add ax, word [bp - 0x000a]       ; 0x3b33
    push ax                          ; 0x3b36
    mov bx, word [bp + 0x4]          ; 0x3b37
    mov al, byte [bx + 0x8]          ; 0x3b3a
    sub ah, ah                       ; 0x3b3d
    shl ax, 1                        ; 0x3b3f
    push ax                          ; 0x3b41
    mov al, byte [bx + 0xf]          ; 0x3b42
    sub ah, ah                       ; 0x3b45
    mov cx, ax                       ; 0x3b47
    pop ax                           ; 0x3b49
    add ax, cx                       ; 0x3b4a
    mov bx, ax                       ; 0x3b4c
    mov al, byte [bx + 0x6fca]       ; 0x3b4e
    sub ah, ah                       ; 0x3b52
    push ax                          ; 0x3b54
    mov bx, word [bp + 0x4]          ; 0x3b55
    mov al, byte [bx + 0xc]          ; 0x3b58
    sub ah, ah                       ; 0x3b5b
    push ax                          ; 0x3b5d
    call ds_loc_4218                 ; 0x3b5e
    add sp, byte 0x16                ; 0x3b61
    mov bx, word [bp + 0x4]          ; 0x3b64
    mov al, byte [bx + 0xd]          ; 0x3b67
    sub ah, ah                       ; 0x3b6a
    shl ax, 1                        ; 0x3b6c
    mov bx, ax                       ; 0x3b6e
    mov ax, word [bx + 0x29c]        ; 0x3b70
    add word [bp - 0x000a], ax       ; 0x3b74
    inc word [bp - 0x0004]           ; 0x3b77
    mov ax, word [bp - 0x0004]       ; 0x3b7a
    cmp ax, strict word 3            ; 0x3b7d
    jl short @..api_idx_0016.l11     ; 0x3b80
@..api_idx_0016.l12:
    ret                              ; 0x3b82
