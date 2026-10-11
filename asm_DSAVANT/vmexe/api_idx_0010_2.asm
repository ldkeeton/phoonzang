api_idx_0010_2:
    mov ax, 0xfff0                   ; 0x2e59
    call ds_dispatch_f40b            ; 0x2e5c
    lea ax, word [bp - 0x000c]       ; 0x2e5f
    push ax                          ; 0x2e62
    lea ax, word [bp - 0x000a]       ; 0x2e63
    push ax                          ; 0x2e66
    push word [bp + 0x6]             ; 0x2e67
    push word [bp + 0x4]             ; 0x2e6a
    call api_idx_0006_3              ; 0x2e6d
    add sp, byte 8                   ; 0x2e70
    mov ax, word [bp - 0x000a]       ; 0x2e73
    mov word [bp - 0x0002], ax       ; 0x2e76
    jmp near @..api_idx_0010_2.l19   ; 0x2e79
@..api_idx_0010_2.l1:
    mov ax, 0x2c                     ; 0x2e7c
    imul word [bp - 0x0002]          ; 0x2e7f
    mov si, ax                       ; 0x2e82
    mov ax, word [bp + 0x4]          ; 0x2e84
    shl ax, 1                        ; 0x2e87
    mov bx, ax                       ; 0x2e89
    mov bx, word [bx - 0x7b7e]       ; 0x2e8b
    cmp byte [bx + si + 0x22], 3     ; 0x2e8f
    jb short @..api_idx_0010_2.l2    ; 0x2e93
    jmp near @..api_idx_0010_2.l18   ; 0x2e95
@..api_idx_0010_2.l2:
    push word [bp - 0x0002]          ; 0x2e98
    push word [bp + 0x4]             ; 0x2e9b
    call loc_1f5d                    ; 0x2e9e
    add sp, byte 4                   ; 0x2ea1
    test ax, ax                      ; 0x2ea4
    je short @..api_idx_0010_2.l3    ; 0x2ea6
    jmp near @..api_idx_0010_2.l18   ; 0x2ea8
@..api_idx_0010_2.l3:
    mov ax, 4                        ; 0x2eab
    push ax                          ; 0x2eae
    mov ax, 2                        ; 0x2eaf
    push ax                          ; 0x2eb2
    call api_idx_0004_6              ; 0x2eb3
    add sp, byte 4                   ; 0x2eb6
    push word [bp - 0x0002]          ; 0x2eb9
    push word [bp + 0x4]             ; 0x2ebc
    mov ax, 0x90e6                   ; 0x2ebf
    push ax                          ; 0x2ec2
    call loc_15ab                    ; 0x2ec3
    add sp, byte 6                   ; 0x2ec6
    mov ax, 2                        ; 0x2ec9
    push ax                          ; 0x2ecc
    mov ax, 0x43                     ; 0x2ecd
    cmp word [bp + 0x4], byte 0      ; 0x2ed0
    jne short @..api_idx_0010_2.l4   ; 0x2ed4
    mov ax, 1                        ; 0x2ed6
@..api_idx_0010_2.l4:
    push ax                          ; 0x2ed9
    mov ax, 0x90e6                   ; 0x2eda
    push ax                          ; 0x2edd
    call api_idx_0002_2              ; 0x2ede
    add sp, byte 6                   ; 0x2ee1
    push word [bp + 0x8]             ; 0x2ee4
    mov ax, 3                        ; 0x2ee7
    push ax                          ; 0x2eea
    push word [bp + 0xa]             ; 0x2eeb
    push word [bp + 0x4]             ; 0x2eee
    call api_idx_0002_3              ; 0x2ef1
    add sp, byte 8                   ; 0x2ef4
    mov word [bp - 0x0006], ax       ; 0x2ef7
    cmp ax, strict word 0            ; 0x2efa
    jg short @..api_idx_0010_2.l5    ; 0x2efd
    jmp near @..api_idx_0010_2.l17   ; 0x2eff
@..api_idx_0010_2.l5:
    mov ax, 0x64                     ; 0x2f02
    push ax                          ; 0x2f05
    call ds_dispatch_b7a9            ; 0x2f06
    pop cx                           ; 0x2f09
    push ax                          ; 0x2f0a
    mov ax, word [bp + 0x4]          ; 0x2f0b
    shl ax, 1                        ; 0x2f0e
    mov bx, ax                       ; 0x2f10
    mov bx, word [bx - 0x7b70]       ; 0x2f12
    mov al, byte [bx + 0x9d]         ; 0x2f16
    sub ah, ah                       ; 0x2f1a
    mov cx, ax                       ; 0x2f1c
    sub ax, word [bp + 0x8]          ; 0x2f1e
    mov cx, ax                       ; 0x2f21
    pop ax                           ; 0x2f23
    cmp ax, cx                       ; 0x2f24
    jg short @..api_idx_0010_2.l6    ; 0x2f26
    jmp near @..api_idx_0010_2.l17   ; 0x2f28
@..api_idx_0010_2.l6:
    cmp word [bp + 0xc], byte 1      ; 0x2f2b
    je short @..api_idx_0010_2.l7    ; 0x2f2f
    jmp near @..api_idx_0010_2.l9    ; 0x2f31
@..api_idx_0010_2.l7:
    mov ax, 1                        ; 0x2f34
    push ax                          ; 0x2f37
    mov ax, 0x2c                     ; 0x2f38
    imul word [bp - 0x0002]          ; 0x2f3b
    mov si, ax                       ; 0x2f3e
    mov ax, word [bp + 0x4]          ; 0x2f40
    shl ax, 1                        ; 0x2f43
    mov bx, ax                       ; 0x2f45
    mov bx, word [bx - 0x7b7e]       ; 0x2f47
    mov al, byte [bx + si + 0x28]    ; 0x2f4b
    cbw                              ; 0x2f4e
    push ax                          ; 0x2f4f
    mov ax, word [bp - 0x0006]       ; 0x2f50
    dec ax                           ; 0x2f53
    mov cx, 2                        ; 0x2f54
    cwd                              ; 0x2f57
    idiv cx                          ; 0x2f58
    inc ax                           ; 0x2f5a
    push ax                          ; 0x2f5b
    call loc_2e09                    ; 0x2f5c
    add sp, byte 6                   ; 0x2f5f
    push ax                          ; 0x2f62
    mov ax, 0x2c                     ; 0x2f63
    imul word [bp - 0x0002]          ; 0x2f66
    mov si, ax                       ; 0x2f69
    mov ax, word [bp + 0x4]          ; 0x2f6b
    shl ax, 1                        ; 0x2f6e
    mov bx, ax                       ; 0x2f70
    mov bx, word [bx - 0x7b7e]       ; 0x2f72
    pop ax                           ; 0x2f76
    mov byte [bx + si + 0x28], al    ; 0x2f77
    mov ax, 0                        ; 0x2f7a
    push ax                          ; 0x2f7d
    mov ax, 0x2c                     ; 0x2f7e
    imul word [bp - 0x0002]          ; 0x2f81
    mov si, ax                       ; 0x2f84
    mov ax, word [bp + 0x4]          ; 0x2f86
    shl ax, 1                        ; 0x2f89
    mov bx, ax                       ; 0x2f8b
    mov bx, word [bx - 0x7b7e]       ; 0x2f8d
    mov al, byte [bx + si + 0x27]    ; 0x2f91
    cbw                              ; 0x2f94
    push ax                          ; 0x2f95
    mov ax, word [bp - 0x0006]       ; 0x2f96
    dec ax                           ; 0x2f99
    mov cx, 2                        ; 0x2f9a
    cwd                              ; 0x2f9d
    idiv cx                          ; 0x2f9e
    inc ax                           ; 0x2fa0
    push ax                          ; 0x2fa1
    call loc_2e09                    ; 0x2fa2
    add sp, byte 6                   ; 0x2fa5
    push ax                          ; 0x2fa8
    mov ax, 0x2c                     ; 0x2fa9
    imul word [bp - 0x0002]          ; 0x2fac
    mov si, ax                       ; 0x2faf
    mov ax, word [bp + 0x4]          ; 0x2fb1
    shl ax, 1                        ; 0x2fb4
    mov bx, ax                       ; 0x2fb6
    mov bx, word [bx - 0x7b7e]       ; 0x2fb8
    pop ax                           ; 0x2fbc
    mov byte [bx + si + 0x27], al    ; 0x2fbd
    mov ax, 0x2c                     ; 0x2fc0
    imul word [bp - 0x0002]          ; 0x2fc3
    mov si, ax                       ; 0x2fc6
    mov ax, word [bp + 0x4]          ; 0x2fc8
    shl ax, 1                        ; 0x2fcb
    mov bx, ax                       ; 0x2fcd
    mov bx, word [bx - 0x7b7e]       ; 0x2fcf
    mov ax, word [bx + si]           ; 0x2fd3
    sub ax, word [bp - 0x0006]       ; 0x2fd5
    mov word [bp - 0x0004], ax       ; 0x2fd8
    cmp ax, strict word 1            ; 0x2fdb
    jge short @..api_idx_0010_2.l8   ; 0x2fde
    mov word [bp - 0x0004], 1        ; 0x2fe0
@..api_idx_0010_2.l8:
    mov ax, word [bp - 0x0004]       ; 0x2fe5
    mov word [bx + si], ax           ; 0x2fe8
    mov word [bp - 0x0010], 0xda3    ; 0x2fea
    jmp near @..api_idx_0010_2.l15   ; 0x2fef
@..api_idx_0010_2.l9:
    mov ax, 1                        ; 0x2ff2
    push ax                          ; 0x2ff5
    mov ax, 0x2c                     ; 0x2ff6
    imul word [bp - 0x0002]          ; 0x2ff9
    mov si, ax                       ; 0x2ffc
    mov ax, word [bp + 0x4]          ; 0x2ffe
    shl ax, 1                        ; 0x3001
    mov bx, ax                       ; 0x3003
    mov bx, word [bx - 0x7b7e]       ; 0x3005
    mov al, byte [bx + si + 0x29]    ; 0x3009
    cbw                              ; 0x300c
    push ax                          ; 0x300d
    mov ax, 3                        ; 0x300e
    imul word [bp - 0x0006]          ; 0x3011
    push ax                          ; 0x3014
    call loc_2e09                    ; 0x3015
    add sp, byte 6                   ; 0x3018
    push ax                          ; 0x301b
    mov ax, 0x2c                     ; 0x301c
    imul word [bp - 0x0002]          ; 0x301f
    mov si, ax                       ; 0x3022
    mov ax, word [bp + 0x4]          ; 0x3024
    shl ax, 1                        ; 0x3027
    mov bx, ax                       ; 0x3029
    mov bx, word [bx - 0x7b7e]       ; 0x302b
    pop ax                           ; 0x302f
    mov byte [bx + si + 0x29], al    ; 0x3030
    mov word [bp - 0x000e], 0        ; 0x3033
@..api_idx_0010_2.l10:
    mov ax, 0x2c                     ; 0x3038
    imul word [bp - 0x0002]          ; 0x303b
    add ax, word [bp - 0x000e]       ; 0x303e
    mov si, ax                       ; 0x3041
    mov ax, word [bp + 0x4]          ; 0x3043
    shl ax, 1                        ; 0x3046
    mov bx, ax                       ; 0x3048
    mov bx, word [bx - 0x7b7e]       ; 0x304a
    mov al, byte [bx + si + 0x18]    ; 0x304e
    sub ah, ah                       ; 0x3051
    mov cx, 2                        ; 0x3053
    cwd                              ; 0x3056
    idiv cx                          ; 0x3057
    mov byte [bx + si + 0x18], al    ; 0x3059
    inc word [bp - 0x000e]           ; 0x305c
    mov ax, word [bp - 0x000e]       ; 0x305f
    cmp ax, strict word 4            ; 0x3062
    jl short @..api_idx_0010_2.l10   ; 0x3065
    mov ax, 0x2c                     ; 0x3067
    imul word [bp - 0x0002]          ; 0x306a
    mov si, ax                       ; 0x306d
    mov ax, word [bp + 0x4]          ; 0x306f
    shl ax, 1                        ; 0x3072
    mov bx, ax                       ; 0x3074
    mov bx, word [bx - 0x7b7e]       ; 0x3076
    cmp byte [bx + si + 0x29], 0     ; 0x307a
    jge short @..api_idx_0010_2.l14  ; 0x307e
    cmp byte [bx + si + 0x29], 0     ; 0x3080
    jge short @..api_idx_0010_2.l11  ; 0x3084
    mov al, byte [bx + si + 0x29]    ; 0x3086
    cbw                              ; 0x3089
    neg ax                           ; 0x308a
    jmp short @..api_idx_0010_2.l12  ; 0x308c
@..api_idx_0010_2.l11:
    mov al, byte [bx + si + 0x29]    ; 0x308e
    cbw                              ; 0x3091
@..api_idx_0010_2.l12:
    mov cx, 0xa                      ; 0x3092
    cwd                              ; 0x3095
    idiv cx                          ; 0x3096
    mov word [bp - 0x000e], ax       ; 0x3098
    cmp ax, strict word 3            ; 0x309b
    jle short @..api_idx_0010_2.l13  ; 0x309e
    mov word [bp - 0x000e], 3        ; 0x30a0
@..api_idx_0010_2.l13:
    cmp word [bp - 0x000e], byte 0   ; 0x30a5
    jle short @..api_idx_0010_2.l14  ; 0x30a9
    mov ax, 0x2c                     ; 0x30ab
    imul word [bp - 0x0002]          ; 0x30ae
    mov cx, 4                        ; 0x30b1
    sub cx, word [bp - 0x000e]       ; 0x30b4
    add ax, cx                       ; 0x30b7
    mov si, ax                       ; 0x30b9
    mov ax, word [bp + 0x4]          ; 0x30bb
    shl ax, 1                        ; 0x30be
    mov bx, ax                       ; 0x30c0
    mov bx, word [bx - 0x7b7e]       ; 0x30c2
    mov byte [bx + si + 0x18], 0     ; 0x30c6
    dec word [bp - 0x000e]           ; 0x30ca
    jmp short @..api_idx_0010_2.l13  ; 0x30cd
@..api_idx_0010_2.l14:
    mov word [bp - 0x0010], 0xda6    ; 0x30cf
@..api_idx_0010_2.l15:
    mov ax, 3                        ; 0x30d4
    push ax                          ; 0x30d7
    mov ax, 0x41                     ; 0x30d8
    push ax                          ; 0x30db
    push word [bp - 0x0010]          ; 0x30dc
    call api_idx_0050                ; 0x30df
    add sp, byte 6                   ; 0x30e2
    cmp word [bp + 0x4], byte 0      ; 0x30e5
    jne short @..api_idx_0010_2.l16  ; 0x30e9
    mov ax, 0                        ; 0x30eb
    push ax                          ; 0x30ee
    push word [bp - 0x0002]          ; 0x30ef
    call api_idx_0004_2              ; 0x30f2
    add sp, byte 4                   ; 0x30f5
@..api_idx_0010_2.l16:
    push word [bss_9058]             ; 0x30f8
    call api_idx_0004_5              ; 0x30fc
    pop cx                           ; 0x30ff
    jmp short @..api_idx_0010_2.l18  ; 0x3100
@..api_idx_0010_2.l17:
    mov ax, 3                        ; 0x3102
    push ax                          ; 0x3105
    mov ax, 0x41                     ; 0x3106
    push ax                          ; 0x3109
    mov ax, 0xd8f                    ; 0x310a
    push ax                          ; 0x310d
    call api_idx_0050                ; 0x310e
    add sp, byte 6                   ; 0x3111
    push word [bss_9058]             ; 0x3114
    call api_idx_0004_5              ; 0x3118
    pop cx                           ; 0x311b
@..api_idx_0010_2.l18:
    inc word [bp - 0x0002]           ; 0x311c
@..api_idx_0010_2.l19:
    mov ax, word [bp - 0x000a]       ; 0x311f
    add ax, word [bp - 0x000c]       ; 0x3122
    cmp ax, word [bp - 0x0002]       ; 0x3125
    jle short @..api_idx_0010_2.l20  ; 0x3128
    jmp near @..api_idx_0010_2.l1    ; 0x312a
@..api_idx_0010_2.l20:
    ret                              ; 0x312d
