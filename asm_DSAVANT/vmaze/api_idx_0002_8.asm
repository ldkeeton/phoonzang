api_idx_0002_8:
    mov ax, 0xfffe                   ; 0x0e5d
    call ds_dispatch_f40b            ; 0x0e60
    mov ax, word [dseg_8f1c]         ; 0x0e63
    mov dx, word [dseg_8f1e]         ; 0x0e66
    mov cx, 0x5a0                    ; 0x0e6a
    mov bx, 0                        ; 0x0e6d
    call ds_dispatch_f9cd            ; 0x0e70
    mov cx, 0x3c                     ; 0x0e73
    mov bx, 0                        ; 0x0e76
    call ds_dispatch_f99f            ; 0x0e79
    mov word [bp - 0x0002], ax       ; 0x0e7c
    mov cx, 3                        ; 0x0e7f
    imul cx                          ; 0x0e82
    mov bx, ax                       ; 0x0e84
    mov al, byte [bx + 0xc6]         ; 0x0e86
    sub ah, ah                       ; 0x0e8a
    push ax                          ; 0x0e8c
    mov al, byte [bx + 0xc5]         ; 0x0e8d
    sub ah, ah                       ; 0x0e91
    push ax                          ; 0x0e93
    mov al, byte [bx + 0xc4]         ; 0x0e94
    sub ah, ah                       ; 0x0e98
    push ax                          ; 0x0e9a
    mov ax, 0xff                     ; 0x0e9b
    push ax                          ; 0x0e9e
    call ds_dispatch_f0a3            ; 0x0e9f
    add sp, byte 8                   ; 0x0ea2
    ret                              ; 0x0ea5
loc_0ea6:
    mov ax, 0                        ; 0x0ea6
    call ds_dispatch_f40b            ; 0x0ea9
    les bx, word [dseg_0002]         ; 0x0eac
    mov ax, word [es:bx]             ; 0x0eb0
    mov dx, word [es:bx + 0x2]       ; 0x0eb3
    cmp dx, word [dseg_919c]         ; 0x0eb7
    jl short @..local.l8             ; 0x0ebb
    jne short @..local.l9            ; 0x0ebd
    cmp ax, word [dseg_919a]         ; 0x0ebf
    ja short @..local.l9             ; 0x0ec3
@..local.l8:
    jmp short @..local.l13           ; 0x0ec5
@..local.l9:
    call api_idx_0002_2              ; 0x0ec7
    mov ax, 0x3c                     ; 0x0eca
    push ax                          ; 0x0ecd
    call ds_dispatch_b7a9            ; 0x0ece
    pop cx                           ; 0x0ed1
    cwd                              ; 0x0ed2
    push ax                          ; 0x0ed3
    push dx                          ; 0x0ed4
    cmp word [dseg_5b6e], byte 3     ; 0x0ed5
    je short @..local.l10            ; 0x0eda
    cmp word [dseg_5b6e], byte 5     ; 0x0edc
    jne short @..local.l11           ; 0x0ee1
@..local.l10:
    mov ax, 0x3c                     ; 0x0ee3
    jmp short @..local.l12           ; 0x0ee6
@..local.l11:
    mov ax, 0                        ; 0x0ee8
@..local.l12:
    cwd                              ; 0x0eeb
    mov cx, ax                       ; 0x0eec
    mov bx, dx                       ; 0x0eee
    pop dx                           ; 0x0ef0
    pop ax                           ; 0x0ef1
    add ax, cx                       ; 0x0ef2
    adc dx, bx                       ; 0x0ef4
    les bx, word [dseg_0002]         ; 0x0ef6
    mov cx, word [es:bx]             ; 0x0efa
    mov bx, word [es:bx + 0x2]       ; 0x0efd
    add ax, cx                       ; 0x0f01
    adc dx, bx                       ; 0x0f03
    mov word [dseg_919c], dx         ; 0x0f05
    mov word [dseg_919a], ax         ; 0x0f09
    jmp short @..local.l14           ; 0x0f0c
@..local.l13:
    cmp word [bp + 0x4], byte 0      ; 0x0f0e
    je short @..local.l14            ; 0x0f12
    mov ax, 0xa                      ; 0x0f14
    push ax                          ; 0x0f17
    call ds_dispatch_e489            ; 0x0f18
    pop cx                           ; 0x0f1b
@..local.l14:
    ret                              ; 0x0f1c
loc_0f1d:
    mov ax, 0                        ; 0x0f1d
    call ds_dispatch_f40b            ; 0x0f20
    les bx, word [dseg_0002]         ; 0x0f23
    mov ax, word [es:bx]             ; 0x0f27
    mov dx, word [es:bx + 0x2]       ; 0x0f2a
    sub ax, word [dseg_908a]         ; 0x0f2e
    sbb dx, word [dseg_908c]         ; 0x0f32
    push ax                          ; 0x0f36
    push dx                          ; 0x0f37
    mov ax, word [dseg_9192]         ; 0x0f38
    cwd                              ; 0x0f3b
    mov cx, ax                       ; 0x0f3c
    mov bx, dx                       ; 0x0f3e
    pop dx                           ; 0x0f40
    pop ax                           ; 0x0f41
    cmp dx, bx                       ; 0x0f42
    jl short @..local.l15            ; 0x0f44
    jne short @..local.l16           ; 0x0f46
    cmp ax, cx                       ; 0x0f48
    jae short @..local.l16           ; 0x0f4a
@..local.l15:
    jmp short @..local.l17           ; 0x0f4c
@..local.l16:
    les bx, word [dseg_0002]         ; 0x0f4e
    mov ax, word [es:bx]             ; 0x0f52
    mov dx, word [es:bx + 0x2]       ; 0x0f55
    mov word [dseg_908c], dx         ; 0x0f59
    mov word [dseg_908a], ax         ; 0x0f5d
    mov ax, 1                        ; 0x0f60
    ret                              ; 0x0f63
@..local.l17:
    mov ax, 0                        ; 0x0f64
    ret                              ; 0x0f67
loc_0f68:
    mov ax, 0                        ; 0x0f68
    call ds_dispatch_f40b            ; 0x0f6b
    call loc_0f1d                    ; 0x0f6e
    test ax, ax                      ; 0x0f71
    je short @..local.l18            ; 0x0f73
    mov ax, word [dseg_82e8]         ; 0x0f75
    inc ax                           ; 0x0f78
    mov cx, 2                        ; 0x0f79
    cwd                              ; 0x0f7c
    idiv cx                          ; 0x0f7d
    mov word [dseg_82e8], dx         ; 0x0f7f
    call loc_676c                    ; 0x0f83
    mov ax, 1                        ; 0x0f86
    ret                              ; 0x0f89
@..local.l18:
    mov ax, 0                        ; 0x0f8a
    ret                              ; 0x0f8d
