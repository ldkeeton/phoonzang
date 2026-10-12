api_idx_0086:
    mov ax, 0xff7a                   ; 0x6e0f
    call ds_aztec_csav               ; 0x6e12
    mov word [bss_9cd2], 0           ; 0x6e15
    mov ax, 0                        ; 0x6e1b
    push ax                          ; 0x6e1e
    mov ax, 0x3c                     ; 0x6e1f
    push ax                          ; 0x6e22
    mov ax, 0x9cd4                   ; 0x6e23
    push ax                          ; 0x6e26
    call ds_aztec_setmem             ; 0x6e27
    add sp, byte 6                   ; 0x6e2a
    cmp byte [bss_91c6], 0xff        ; 0x6e2d
    je short @..api_idx_0086.l3      ; 0x6e32
    mov word [bp - 0x0002], 0        ; 0x6e34
@..api_idx_0086.l1:
    push word [bp - 0x0002]          ; 0x6e39
    mov al, byte [bss_91c6]          ; 0x6e3c
    cbw                              ; 0x6e3f
    mov cx, 0x26                     ; 0x6e40
    imul cx                          ; 0x6e43
    add ax, 0x8502                   ; 0x6e45
    push ax                          ; 0x6e48
    call ds_leaf_loc_3ebb            ; 0x6e49
    add sp, byte 4                   ; 0x6e4c
    test ax, ax                      ; 0x6e4f
    je short @..api_idx_0086.l2      ; 0x6e51
    mov ax, word [bp - 0x0002]       ; 0x6e53
    add ax, 0x190                    ; 0x6e56
    mov cx, word [bss_9cd2]          ; 0x6e59
    shl cx, 1                        ; 0x6e5d
    mov bx, cx                       ; 0x6e5f
    mov word [bx - 0x632c], ax       ; 0x6e61
    inc word [bss_9cd2]              ; 0x6e65
@..api_idx_0086.l2:
    inc word [bp - 0x0002]           ; 0x6e69
    mov ax, word [bp - 0x0002]       ; 0x6e6c
    cmp ax, strict word 0xb          ; 0x6e6f
    jl short @..api_idx_0086.l1      ; 0x6e72
@..api_idx_0086.l3:
    cmp byte [bss_91c9], 0           ; 0x6e74
    ja short @..api_idx_0086.l4      ; 0x6e79
    jmp near @..api_idx_0086.l13     ; 0x6e7b
@..api_idx_0086.l4:
    mov ax, 0                        ; 0x6e7e
    push ax                          ; 0x6e81
    mov al, byte [bss_91c9]          ; 0x6e82
    sub ah, ah                       ; 0x6e85
    push ax                          ; 0x6e87
    lea ax, word [bp - 0x003e]       ; 0x6e88
    push ax                          ; 0x6e8b
    mov ax, 7                        ; 0x6e8c
    push ax                          ; 0x6e8f
    call ds_app_file_0883            ; 0x6e90
    add sp, byte 8                   ; 0x6e93
    mov word [bp - 0x0006], 0        ; 0x6e96
    mov word [bp - 0x0002], 0        ; 0x6e9b
@..api_idx_0086.l5:
    mov ax, 6                        ; 0x6ea0
    imul word [bp - 0x0002]          ; 0x6ea3
    mov bx, ax                       ; 0x6ea6
    add bx, bp                       ; 0x6ea8
    cmp byte [bx - 0x003a], 2        ; 0x6eaa
    jne short @..api_idx_0086.l6     ; 0x6eae
    mov al, byte [bx - 0x0039]       ; 0x6eb0
    sub ah, ah                       ; 0x6eb3
    jmp short @..api_idx_0086.l7     ; 0x6eb5
@..api_idx_0086.l6:
    mov ax, 0                        ; 0x6eb7
@..api_idx_0086.l7:
    mov word [bp - 0x0008], ax       ; 0x6eba
    cmp byte [bx - 0x003a], 3        ; 0x6ebd
    jne short @..api_idx_0086.l8     ; 0x6ec1
    mov ax, word [bss_8f1c]          ; 0x6ec3
    mov dx, word [bss_8f1e]          ; 0x6ec6
    mov cx, 0x5a0                    ; 0x6eca
    mov bx, 0                        ; 0x6ecd
    call ds_loc_4be6                 ; 0x6ed0
    push ax                          ; 0x6ed3
    mov ax, 6                        ; 0x6ed4
    imul word [bp - 0x0002]          ; 0x6ed7
    mov bx, ax                       ; 0x6eda
    add bx, bp                       ; 0x6edc
    mov al, byte [bx - 0x0039]       ; 0x6ede
    sub ah, ah                       ; 0x6ee1
    mov cx, 5                        ; 0x6ee3
    imul cx                          ; 0x6ee6
    mov cx, ax                       ; 0x6ee8
    pop ax                           ; 0x6eea
    sub ax, cx                       ; 0x6eeb
    mov word [bp - 0x0008], ax       ; 0x6eed
    cmp ax, strict word 0x32         ; 0x6ef0
    jle short @..api_idx_0086.l8     ; 0x6ef3
    mov word [bp - 0x0008], 0x32     ; 0x6ef5
@..api_idx_0086.l8:
    cmp word [bp - 0x0008], byte 0   ; 0x6efa
    jg short @..api_idx_0086.l9      ; 0x6efe
    jmp near @..api_idx_0086.l12     ; 0x6f00
@..api_idx_0086.l9:
    mov ax, 6                        ; 0x6f03
    imul word [bp - 0x0002]          ; 0x6f06
    mov bx, ax                       ; 0x6f09
    add bx, bp                       ; 0x6f0b
    cmp word [bx - 0x003e], byte 0   ; 0x6f0d
    jle short @..api_idx_0086.l12    ; 0x6f11
@..api_idx_0086.l10:
    cmp word [bss_9cd2], byte 0x1e   ; 0x6f13
    jge short @..api_idx_0086.l12    ; 0x6f18
    mov ax, 6                        ; 0x6f1a
    imul word [bp - 0x0002]          ; 0x6f1d
    mov bx, ax                       ; 0x6f20
    add bx, bp                       ; 0x6f22
    cmp word [bx - 0x003c], byte 0   ; 0x6f24
    jle short @..api_idx_0086.l12    ; 0x6f28
    mov bx, word [bp - 0x0006]       ; 0x6f2a
    mov al, byte [bx + 0x5990]       ; 0x6f2d
    sub ah, ah                       ; 0x6f31
    cmp ax, word [bp - 0x0008]       ; 0x6f33
    jge short @..api_idx_0086.l11    ; 0x6f36
    mov ax, 6                        ; 0x6f38
    imul word [bp - 0x0002]          ; 0x6f3b
    mov bx, ax                       ; 0x6f3e
    add bx, bp                       ; 0x6f40
    mov ax, word [bx - 0x003e]       ; 0x6f42
    mov cx, word [bss_9cd2]          ; 0x6f45
    shl cx, 1                        ; 0x6f49
    mov bx, cx                       ; 0x6f4b
    mov word [bx - 0x632c], ax       ; 0x6f4d
    inc word [bss_9cd2]              ; 0x6f51
@..api_idx_0086.l11:
    mov ax, word [bp - 0x0006]       ; 0x6f55
    inc ax                           ; 0x6f58
    mov cx, 0x64                     ; 0x6f59
    cwd                              ; 0x6f5c
    idiv cx                          ; 0x6f5d
    mov word [bp - 0x0006], dx       ; 0x6f5f
    mov ax, 6                        ; 0x6f62
    imul word [bp - 0x0002]          ; 0x6f65
    mov bx, ax                       ; 0x6f68
    add bx, bp                       ; 0x6f6a
    inc word [bx - 0x003e]           ; 0x6f6c
    dec word [bx - 0x003c]           ; 0x6f6f
    jmp short @..api_idx_0086.l10    ; 0x6f72
@..api_idx_0086.l12:
    inc word [bp - 0x0002]           ; 0x6f74
    mov ax, word [bp - 0x0002]       ; 0x6f77
    cmp ax, strict word 8            ; 0x6f7a
    jge short @..api_idx_0086.l13    ; 0x6f7d
    jmp near @..api_idx_0086.l5      ; 0x6f7f
@..api_idx_0086.l13:
    mov word [bp - 0x0002], 0        ; 0x6f82
    jmp near @..api_idx_0086.l19     ; 0x6f87
@..api_idx_0086.l14:
    mov ax, 0                        ; 0x6f8a
    push ax                          ; 0x6f8d
    mov ax, word [bp - 0x0002]       ; 0x6f8e
    shl ax, 1                        ; 0x6f91
    mov bx, ax                       ; 0x6f93
    push word [bx - 0x632c]          ; 0x6f95
    lea ax, word [bp - 0x0086]       ; 0x6f99
    push ax                          ; 0x6f9d
    mov ax, 1                        ; 0x6f9e
    push ax                          ; 0x6fa1
    call ds_app_file_0883            ; 0x6fa2
    add sp, byte 8                   ; 0x6fa5
    lea ax, word [bp - 0x0086]       ; 0x6fa8
    push ax                          ; 0x6fac
    mov ax, 0x16                     ; 0x6fad
    imul word [bp - 0x0002]          ; 0x6fb0
    add ax, 0x99d6                   ; 0x6fb3
    push ax                          ; 0x6fb6
    call ds_aztec_strcpy             ; 0x6fb7
    add sp, byte 4                   ; 0x6fba
    mov al, byte [bp - 0x004e]       ; 0x6fbd
    mov bx, word [bp - 0x0002]       ; 0x6fc0
    mov byte [bx - 0x66e8], al       ; 0x6fc3
    mov al, byte [bp - 0x006a]       ; 0x6fc7
    sub ah, ah                       ; 0x6fca
    push ax                          ; 0x6fcc
    mov al, byte [bp - 0x0069]       ; 0x6fcd
    sub ah, ah                       ; 0x6fd0
    mov cx, ax                       ; 0x6fd2
    pop ax                           ; 0x6fd4
    imul cx                          ; 0x6fd5
    add ax, word [bp - 0x006c]       ; 0x6fd7
    shl bx, 1                        ; 0x6fda
    mov word [bx - 0x6396], ax       ; 0x6fdc
    mov al, byte [bp - 0x004e]       ; 0x6fe0
    sub ah, ah                       ; 0x6fe3
    mov bx, ax                       ; 0x6fe5
    cmp byte [bx + 0x60e], 1         ; 0x6fe7
    jne short @..api_idx_0086.l15    ; 0x6fec
    mov ax, word [bp - 0x0002]       ; 0x6fee
    shl ax, 1                        ; 0x6ff1
    mov bx, ax                       ; 0x6ff3
    mov ax, word [bx - 0x6396]       ; 0x6ff5
    cwd                              ; 0x6ff9
    push ax                          ; 0x6ffa
    push dx                          ; 0x6ffb
    mul word [bp - 0x006e]           ; 0x6ffc
    mov cx, ax                       ; 0x6fff
    pop ax                           ; 0x7001
    mul word [bp - 0x0070]           ; 0x7002
    add cx, ax                       ; 0x7005
    pop ax                           ; 0x7007
    mul word [bp - 0x0070]           ; 0x7008
    add dx, cx                       ; 0x700b
    mov word [bp - 0x006e], dx       ; 0x700d
    mov word [bp - 0x0070], ax       ; 0x7010
@..api_idx_0086.l15:
    mov ax, word [bp - 0x0002]       ; 0x7013
    shl ax, 1                        ; 0x7016
    mov bx, ax                       ; 0x7018
    push word [bx - 0x632c]          ; 0x701a
    call loc_5497                    ; 0x701e
    pop cx                           ; 0x7021
    test ax, ax                      ; 0x7022
    je short @..api_idx_0086.l16     ; 0x7024
    mov ax, word [bp - 0x0070]       ; 0x7026
    mov dx, word [bp - 0x006e]       ; 0x7029
    jmp short @..api_idx_0086.l17    ; 0x702c
@..api_idx_0086.l16:
    mov ax, word [bss_91aa]          ; 0x702e
    cwd                              ; 0x7031
    push ax                          ; 0x7032
    push dx                          ; 0x7033
    mul word [bp - 0x006e]           ; 0x7034
    mov cx, ax                       ; 0x7037
    pop ax                           ; 0x7039
    mul word [bp - 0x0070]           ; 0x703a
    add cx, ax                       ; 0x703d
    pop ax                           ; 0x703f
    mul word [bp - 0x0070]           ; 0x7040
    add dx, cx                       ; 0x7043
    mov cx, 0x64                     ; 0x7045
    mov bx, 0                        ; 0x7048
    call ds_loc_4be6                 ; 0x704b
@..api_idx_0086.l17:
    mov cx, word [bp - 0x0002]       ; 0x704e
    shl cx, 1                        ; 0x7051
    shl cx, 1                        ; 0x7053
    mov bx, cx                       ; 0x7055
    mov word [bx - 0x66c8], dx       ; 0x7057
    mov word [bx - 0x66ca], ax       ; 0x705b
    mov al, byte [bp - 0x004d]       ; 0x705f
    mov bx, word [bp - 0x0002]       ; 0x7062
    mov byte [bx - 0x6648], al       ; 0x7065
    mov word [bp - 0x0004], 0        ; 0x7069
@..api_idx_0086.l18:
    mov bx, word [bp - 0x0004]       ; 0x706e
    add bx, bp                       ; 0x7071
    mov al, byte [bx - 0x0054]       ; 0x7073
    mov cx, word [bp - 0x0002]       ; 0x7076
    shl cx, 1                        ; 0x7079
    add cx, word [bp - 0x0004]       ; 0x707b
    mov bx, cx                       ; 0x707e
    mov byte [bx - 0x677e], al       ; 0x7080
    mov bx, word [bp - 0x0004]       ; 0x7084
    add bx, bp                       ; 0x7087
    mov al, byte [bx - 0x0052]       ; 0x7089
    mov bx, cx                       ; 0x708c
    mov byte [bx - 0x6742], al       ; 0x708e
    inc word [bp - 0x0004]           ; 0x7092
    mov ax, word [bp - 0x0004]       ; 0x7095
    cmp ax, strict word 2            ; 0x7098
    jl short @..api_idx_0086.l18     ; 0x709b
    mov al, byte [bp - 0x0050]       ; 0x709d
    mov bx, word [bp - 0x0002]       ; 0x70a0
    mov byte [bx - 0x6706], al       ; 0x70a3
    inc word [bp - 0x0002]           ; 0x70a7
@..api_idx_0086.l19:
    mov ax, word [bp - 0x0002]       ; 0x70aa
    cmp ax, word [bss_9cd2]          ; 0x70ad
    jge short @..api_idx_0086.l20    ; 0x70b1
    jmp near @..api_idx_0086.l14     ; 0x70b3
@..api_idx_0086.l20:
    ret                              ; 0x70b6
