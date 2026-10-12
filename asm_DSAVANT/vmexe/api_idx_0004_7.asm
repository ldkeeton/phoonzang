api_idx_0004_7:
    mov ax, 0xfffc                   ; 0x1c5e
    call ds_aztec_csav               ; 0x1c61
    cmp word [bp + 0x4], byte 0      ; 0x1c64
    jne short @..api_idx_0004_7.l1   ; 0x1c68
    jmp near @..api_idx_0004_7.l5    ; 0x1c6a
@..api_idx_0004_7.l1:
    cmp word [bss_8464], byte 0      ; 0x1c6d
    jne short @..api_idx_0004_7.l2   ; 0x1c72
    cmp word [bss_8462], byte 0      ; 0x1c74
    jl short @..api_idx_0004_7.l2    ; 0x1c79
    mov ax, word [bss_8462]          ; 0x1c7b
    cmp ax, word [bss_69c8]          ; 0x1c7e
    jge short @..api_idx_0004_7.l2   ; 0x1c82
    mov cx, 0x248                    ; 0x1c84
    imul cx                          ; 0x1c87
    mov bx, ax                       ; 0x1c89
    add word [bx + 0x5c04], byte 1   ; 0x1c8b
    adc word [bx + 0x5c06], byte 0   ; 0x1c90
@..api_idx_0004_7.l2:
    mov ax, word [bp + 0x4]          ; 0x1c95
    shl ax, 1                        ; 0x1c98
    mov bx, ax                       ; 0x1c9a
    mov bx, word [bx - 0x7b70]       ; 0x1c9c
    mov al, byte [bx + 0xe2]         ; 0x1ca0
    sub ah, ah                       ; 0x1ca4
    test ax, 1                       ; 0x1ca6
    je short @..api_idx_0004_7.l3    ; 0x1ca9
    mov ax, 1                        ; 0x1cab
    push ax                          ; 0x1cae
    mov al, byte [bx + 0xe0]         ; 0x1caf
    sub ah, ah                       ; 0x1cb3
    push ax                          ; 0x1cb5
    mov ax, 0x5842                   ; 0x1cb6
    push ax                          ; 0x1cb9
    call ds_leaf_loc_3e88            ; 0x1cba
    add sp, byte 6                   ; 0x1cbd
@..api_idx_0004_7.l3:
    mov ax, word [bp + 0x4]          ; 0x1cc0
    shl ax, 1                        ; 0x1cc3
    mov bx, ax                       ; 0x1cc5
    mov bx, word [bx - 0x7b70]       ; 0x1cc7
    cmp byte [bx + 0xe4], 0xff       ; 0x1ccb
    je short @..api_idx_0004_7.l4    ; 0x1cd0
    mov al, byte [bx + 0xe4]         ; 0x1cd2
    cbw                              ; 0x1cd6
    mov cx, 0x26                     ; 0x1cd7
    imul cx                          ; 0x1cda
    mov bx, ax                       ; 0x1cdc
    mov byte [bx - 0x7b00], 0        ; 0x1cde
    mov ax, word [bp + 0x4]          ; 0x1ce3
    shl ax, 1                        ; 0x1ce6
    mov bx, ax                       ; 0x1ce8
    mov bx, word [bx - 0x7b70]       ; 0x1cea
    mov al, byte [bx + 0xe4]         ; 0x1cee
    cbw                              ; 0x1cf2
    mov word [bss_849e], ax          ; 0x1cf3
@..api_idx_0004_7.l4:
    mov ax, 0x2c                     ; 0x1cf6
    imul word [bp + 0x6]             ; 0x1cf9
    mov si, ax                       ; 0x1cfc
    mov ax, word [bp + 0x4]          ; 0x1cfe
    shl ax, 1                        ; 0x1d01
    mov bx, ax                       ; 0x1d03
    mov bx, word [bx - 0x7b7e]       ; 0x1d05
    cmp byte [bx + si + 0x2a], 0xff  ; 0x1d09
    je short @..api_idx_0004_7.l5    ; 0x1d0d
    mov al, byte [bx + si + 0x2a]    ; 0x1d0f
    cbw                              ; 0x1d12
    mov cx, 0xa                      ; 0x1d13
    cwd                              ; 0x1d16
    idiv cx                          ; 0x1d17
    mov word [bp - 0x0002], ax       ; 0x1d19
    mov al, byte [bx + si + 0x2a]    ; 0x1d1c
    cbw                              ; 0x1d1f
    cwd                              ; 0x1d20
    idiv cx                          ; 0x1d21
    mov word [bp - 0x0004], dx       ; 0x1d23
    mov ax, 6                        ; 0x1d26
    imul word [bp - 0x0002]          ; 0x1d29
    mov cx, word [bp - 0x0004]       ; 0x1d2c
    shl cx, 1                        ; 0x1d2f
    add ax, cx                       ; 0x1d31
    mov bx, ax                       ; 0x1d33
    mov word [bx - 0x6f36], 0        ; 0x1d35
    mov word [bss_8320], 0           ; 0x1d3b
    call loc_1a35                    ; 0x1d41
    mov ax, 6                        ; 0x1d44
    imul word [bp - 0x0002]          ; 0x1d47
    mov cx, word [bp - 0x0004]       ; 0x1d4a
    shl cx, 1                        ; 0x1d4d
    add ax, cx                       ; 0x1d4f
    mov bx, ax                       ; 0x1d51
    mov word [bx - 0x7bc6], 0        ; 0x1d53
@..api_idx_0004_7.l5:
    mov ax, 0x2c                     ; 0x1d59
    imul word [bp + 0x6]             ; 0x1d5c
    mov si, ax                       ; 0x1d5f
    mov ax, word [bp + 0x4]          ; 0x1d61
    shl ax, 1                        ; 0x1d64
    mov bx, ax                       ; 0x1d66
    mov bx, word [bx - 0x7b7e]       ; 0x1d68
    mov byte [bx + si + 0x2a], 0xff  ; 0x1d6c
    mov ax, 0x2c                     ; 0x1d70
    imul word [bp + 0x6]             ; 0x1d73
    mov si, ax                       ; 0x1d76
    mov ax, word [bp + 0x4]          ; 0x1d78
    shl ax, 1                        ; 0x1d7b
    mov bx, ax                       ; 0x1d7d
    mov bx, word [bx - 0x7b7e]       ; 0x1d7f
    mov byte [bx + si + 0x22], 3     ; 0x1d83
    mov ax, 0x2c                     ; 0x1d87
    imul word [bp + 0x6]             ; 0x1d8a
    mov si, ax                       ; 0x1d8d
    mov ax, word [bp + 0x4]          ; 0x1d8f
    shl ax, 1                        ; 0x1d92
    mov bx, ax                       ; 0x1d94
    mov bx, word [bx - 0x7b7e]       ; 0x1d96
    mov word [bx + si + 0x2], 0      ; 0x1d9a
    mov ax, 0x2c                     ; 0x1d9f
    imul word [bp + 0x6]             ; 0x1da2
    mov si, ax                       ; 0x1da5
    mov ax, word [bp + 0x4]          ; 0x1da7
    shl ax, 1                        ; 0x1daa
    mov bx, ax                       ; 0x1dac
    mov bx, word [bx - 0x7b7e]       ; 0x1dae
    mov word [bx + si + 0x6], 0      ; 0x1db2
    mov ax, 0x2c                     ; 0x1db7
    imul word [bp + 0x6]             ; 0x1dba
    mov si, ax                       ; 0x1dbd
    mov ax, word [bp + 0x4]          ; 0x1dbf
    shl ax, 1                        ; 0x1dc2
    mov bx, ax                       ; 0x1dc4
    mov bx, word [bx - 0x7b7e]       ; 0x1dc6
    mov byte [bx + si + 0x24], 0     ; 0x1dca
    mov ax, 0x2c                     ; 0x1dce
    imul word [bp + 0x6]             ; 0x1dd1
    mov si, ax                       ; 0x1dd4
    mov ax, word [bp + 0x4]          ; 0x1dd6
    shl ax, 1                        ; 0x1dd9
    mov bx, ax                       ; 0x1ddb
    mov bx, word [bx - 0x7b7e]       ; 0x1ddd
    mov byte [bx + si + 0x25], 0     ; 0x1de1
    mov word [bp - 0x0002], 0        ; 0x1de5
@..api_idx_0004_7.l6:
    mov ax, 0x2c                     ; 0x1dea
    imul word [bp + 0x6]             ; 0x1ded
    add ax, word [bp - 0x0002]       ; 0x1df0
    mov si, ax                       ; 0x1df3
    mov ax, word [bp + 0x4]          ; 0x1df5
    shl ax, 1                        ; 0x1df8
    mov bx, ax                       ; 0x1dfa
    mov bx, word [bx - 0x7b7e]       ; 0x1dfc
    mov byte [bx + si + 0x18], 0     ; 0x1e00
    inc word [bp - 0x0002]           ; 0x1e04
    mov ax, word [bp - 0x0002]       ; 0x1e07
    cmp ax, strict word 4            ; 0x1e0a
    jl short @..api_idx_0004_7.l6    ; 0x1e0d
    cmp word [bp + 0x4], byte 1      ; 0x1e0f
    jl short @..api_idx_0004_7.l7    ; 0x1e13
    cmp word [bp + 0x4], byte 5      ; 0x1e15
    jg short @..api_idx_0004_7.l7    ; 0x1e19
    mov ax, word [bp + 0x4]          ; 0x1e1b
    shl ax, 1                        ; 0x1e1e
    mov bx, ax                       ; 0x1e20
    mov bx, word [bx - 0x7b70]       ; 0x1e22
    mov ax, word [bx + 0x40]         ; 0x1e26
    mov dx, word [bx + 0x42]         ; 0x1e29
    add word [bss_84a2], ax          ; 0x1e2c
    adc word [bss_84a4], dx          ; 0x1e30
@..api_idx_0004_7.l7:
    ret                              ; 0x1e34
loc_1e35:
    mov ax, 0                        ; 0x1e35
    call ds_aztec_csav               ; 0x1e38
    push word [bp + 0x6]             ; 0x1e3b
    push word [bp + 0x4]             ; 0x1e3e
    mov ax, 0x90e6                   ; 0x1e41
    push ax                          ; 0x1e44
    call loc_15ab                    ; 0x1e45
    add sp, byte 6                   ; 0x1e48
    mov ax, 0x9136                   ; 0x1e4b
    push ax                          ; 0x1e4e
    push word [bp + 0x8]             ; 0x1e4f
    call ds_app_mem_0782             ; 0x1e52
    add sp, byte 4                   ; 0x1e55
    mov byte [bss_9186], 0           ; 0x1e58
    cmp word [bss_91d6], byte 2      ; 0x1e5d
    jne short @..local.l49           ; 0x1e62
    mov ax, 4                        ; 0x1e64
    push ax                          ; 0x1e67
    mov ax, 2                        ; 0x1e68
    push ax                          ; 0x1e6b
    call api_idx_0004_6              ; 0x1e6c
    add sp, byte 4                   ; 0x1e6f
    mov ax, 2                        ; 0x1e72
    push ax                          ; 0x1e75
    mov ax, 0x43                     ; 0x1e76
    cmp word [bp + 0x4], byte 0      ; 0x1e79
    jne short @..local.l48           ; 0x1e7d
    mov ax, 1                        ; 0x1e7f
@..local.l48:
    push ax                          ; 0x1e82
    mov ax, 0x90e6                   ; 0x1e83
    push ax                          ; 0x1e86
    call api_idx_0002_2              ; 0x1e87
    add sp, byte 6                   ; 0x1e8a
    mov ax, 3                        ; 0x1e8d
    push ax                          ; 0x1e90
    mov ax, 0x41                     ; 0x1e91
    push ax                          ; 0x1e94
    mov ax, 0x9136                   ; 0x1e95
    push ax                          ; 0x1e98
    call api_idx_0002_2              ; 0x1e99
    add sp, byte 6                   ; 0x1e9c
    jmp short @..local.l51           ; 0x1e9f
@..local.l49:
    mov ax, 4                        ; 0x1ea1
    push ax                          ; 0x1ea4
    push ax                          ; 0x1ea5
    call api_idx_0004_6              ; 0x1ea6
    add sp, byte 4                   ; 0x1ea9
    mov ax, 0x41                     ; 0x1eac
    push ax                          ; 0x1eaf
    push ax                          ; 0x1eb0
    cmp word [bp + 0x4], byte 0      ; 0x1eb1
    jne short @..local.l50           ; 0x1eb5
    mov ax, 1                        ; 0x1eb7
@..local.l50:
    push ax                          ; 0x1eba
    mov ax, 0x9186                   ; 0x1ebb
    push ax                          ; 0x1ebe
    mov ax, 0x9136                   ; 0x1ebf
    push ax                          ; 0x1ec2
    mov ax, 0x90e6                   ; 0x1ec3
    push ax                          ; 0x1ec6
    mov ax, 4                        ; 0x1ec7
    push ax                          ; 0x1eca
    call api_idx_0004_4              ; 0x1ecb
    add sp, byte 0x0e                ; 0x1ece
@..local.l51:
    cmp word [bp + 0xa], byte 1      ; 0x1ed1
    jne short @..local.l53           ; 0x1ed5
    cmp word [bp + 0x4], byte 0      ; 0x1ed7
    jne short @..local.l53           ; 0x1edb
    cmp word [bp + 0xc], byte 0      ; 0x1edd
    jle short @..local.l52           ; 0x1ee1
    push word [bp + 0xc]             ; 0x1ee3
    call ds_app_0a27                 ; 0x1ee6
    pop cx                           ; 0x1ee9
@..local.l52:
    mov ax, 1                        ; 0x1eea
    push ax                          ; 0x1eed
    push word [bp + 0x6]             ; 0x1eee
    call api_idx_0004_2              ; 0x1ef1
    add sp, byte 4                   ; 0x1ef4
@..local.l53:
    push word [bss_9058]             ; 0x1ef7
    call api_idx_0004_5              ; 0x1efb
    pop cx                           ; 0x1efe
    ret                              ; 0x1eff
