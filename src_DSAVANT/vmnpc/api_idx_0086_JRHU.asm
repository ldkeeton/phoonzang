; auto-generated
api_idx_0086_JRHU:
    mov ax, 0xff7a                   ; 0x6e0f
    call aztec_csav                  ; 0x6e12
    mov word [bss_9cd2], 0           ; 0x6e15
    mov ax, 0                        ; 0x6e1b
    push ax                          ; 0x6e1e
    mov ax, 0x3c                     ; 0x6e1f
    push ax                          ; 0x6e22
    mov ax, bss_9cd4                 ; 0x6e23
    push ax                          ; 0x6e26
    call aztec_setmem                ; 0x6e27
    add sp, byte 6                   ; 0x6e2a
    cmp byte [bss_91c6], 0xff        ; 0x6e2d
    je short .forward2               ; 0x6e32
    mov word [bp - 2], 0             ; 0x6e34
.back1:
    push word [bp - 2]               ; 0x6e39
    mov al, byte [bss_91c6]          ; 0x6e3c
    cbw                              ; 0x6e3f
    mov cx, 0x26                     ; 0x6e40
    imul cx                          ; 0x6e43
    add ax, slot_records + slot_record.held_maps ; 0x6e45
    push ax                          ; 0x6e48
    call test_bit                    ; 0x6e49
    add sp, byte 4                   ; 0x6e4c
    test ax, ax                      ; 0x6e4f
    je short .forward1               ; 0x6e51
    mov ax, word [bp - 2]            ; 0x6e53
    add ax, 0x190                    ; 0x6e56
    mov cx, word [bss_9cd2]          ; 0x6e59
    shl cx, 1                        ; 0x6e5d
    mov bx, cx                       ; 0x6e5f
    mov word [bx + bss_9cd4], ax     ; 0x6e61
    inc word [bss_9cd2]              ; 0x6e65
.forward1:
    inc word [bp - 2]                ; 0x6e69
    mov ax, word [bp - 2]            ; 0x6e6c
    cmp ax, strict word 0xb          ; 0x6e6f
    jl short .back1                  ; 0x6e72
.forward2:
    cmp byte [bss_91c9], 0           ; 0x6e74
    ja short .forward3               ; 0x6e79
    jmp near .forward10              ; 0x6e7b
.forward3:
    mov ax, 0                        ; 0x6e7e
    push ax                          ; 0x6e81
    mov al, byte [bss_91c9]          ; 0x6e82
    sub ah, ah                       ; 0x6e85
    push ax                          ; 0x6e87
    lea ax, word [bp - 0x3e]         ; 0x6e88
    push ax                          ; 0x6e8b
    mov ax, 7                        ; 0x6e8c
    push ax                          ; 0x6e8f
    call data_record_io              ; 0x6e90
    add sp, byte 8                   ; 0x6e93
    mov word [bp - 6], 0             ; 0x6e96
    mov word [bp - 2], 0             ; 0x6e9b
.back2:
    mov ax, 6                        ; 0x6ea0
    imul word [bp - 2]               ; 0x6ea3
    mov bx, ax                       ; 0x6ea6
    add bx, bp                       ; 0x6ea8
    cmp byte [bx - 0x3a], 2          ; 0x6eaa
    jne short .forward4              ; 0x6eae
    mov al, byte [bx - 0x39]         ; 0x6eb0
    sub ah, ah                       ; 0x6eb3
    jmp short .forward5              ; 0x6eb5
.forward4:
    mov ax, 0                        ; 0x6eb7
.forward5:
    mov word [bp - 8], ax            ; 0x6eba
    cmp byte [bx - 0x3a], 3          ; 0x6ebd
    jne short .forward6              ; 0x6ec1
    mov ax, word [game_time]         ; 0x6ec3
    mov dx, word [game_time_hi]      ; 0x6ec6
    mov cx, 0x5a0                    ; 0x6eca
    mov bx, 0                        ; 0x6ecd
    call aztec_ldv                   ; 0x6ed0
    push ax                          ; 0x6ed3
    mov ax, 6                        ; 0x6ed4
    imul word [bp - 2]               ; 0x6ed7
    mov bx, ax                       ; 0x6eda
    add bx, bp                       ; 0x6edc
    mov al, byte [bx - 0x39]         ; 0x6ede
    sub ah, ah                       ; 0x6ee1
    mov cx, 5                        ; 0x6ee3
    imul cx                          ; 0x6ee6
    mov cx, ax                       ; 0x6ee8
    pop ax                           ; 0x6eea
    sub ax, cx                       ; 0x6eeb
    mov word [bp - 8], ax            ; 0x6eed
    cmp ax, strict word 0x32         ; 0x6ef0
    jle short .forward6              ; 0x6ef3
    mov word [bp - 8], 0x32          ; 0x6ef5
.forward6:
    cmp word [bp - 8], byte 0        ; 0x6efa
    jg short .forward7               ; 0x6efe
    jmp near .forward9               ; 0x6f00
.forward7:
    mov ax, 6                        ; 0x6f03
    imul word [bp - 2]               ; 0x6f06
    mov bx, ax                       ; 0x6f09
    add bx, bp                       ; 0x6f0b
    cmp word [bx - 0x3e], byte 0     ; 0x6f0d
    jle short .forward9              ; 0x6f11
.back3:
    cmp word [bss_9cd2], byte 0x1e   ; 0x6f13
    jge short .forward9              ; 0x6f18
    mov ax, 6                        ; 0x6f1a
    imul word [bp - 2]               ; 0x6f1d
    mov bx, ax                       ; 0x6f20
    add bx, bp                       ; 0x6f22
    cmp word [bx - 0x3c], byte 0     ; 0x6f24
    jle short .forward9              ; 0x6f28
    mov bx, word [bp - 6]            ; 0x6f2a
    mov al, byte [bx + code_characters] ; 0x6f2d
    sub ah, ah                       ; 0x6f31
    cmp ax, word [bp - 8]            ; 0x6f33
    jge short .forward8              ; 0x6f36
    mov ax, 6                        ; 0x6f38
    imul word [bp - 2]               ; 0x6f3b
    mov bx, ax                       ; 0x6f3e
    add bx, bp                       ; 0x6f40
    mov ax, word [bx - 0x3e]         ; 0x6f42
    mov cx, word [bss_9cd2]          ; 0x6f45
    shl cx, 1                        ; 0x6f49
    mov bx, cx                       ; 0x6f4b
    mov word [bx + bss_9cd4], ax     ; 0x6f4d
    inc word [bss_9cd2]              ; 0x6f51
.forward8:
    mov ax, word [bp - 6]            ; 0x6f55
    inc ax                           ; 0x6f58
    mov cx, 0x64                     ; 0x6f59
    cwd                              ; 0x6f5c
    idiv cx                          ; 0x6f5d
    mov word [bp - 6], dx            ; 0x6f5f
    mov ax, 6                        ; 0x6f62
    imul word [bp - 2]               ; 0x6f65
    mov bx, ax                       ; 0x6f68
    add bx, bp                       ; 0x6f6a
    inc word [bx - 0x3e]             ; 0x6f6c
    dec word [bx - 0x3c]             ; 0x6f6f
    jmp short .back3                 ; 0x6f72
.forward9:
    inc word [bp - 2]                ; 0x6f74
    mov ax, word [bp - 2]            ; 0x6f77
    cmp ax, strict word 8            ; 0x6f7a
    jge short .forward10             ; 0x6f7d
    jmp near .back2                  ; 0x6f7f
.forward10:
    mov word [bp - 2], 0             ; 0x6f82
    jmp near .forward14              ; 0x6f87
.back4:
    mov ax, 0                        ; 0x6f8a
    push ax                          ; 0x6f8d
    mov ax, word [bp - 2]            ; 0x6f8e
    shl ax, 1                        ; 0x6f91
    mov bx, ax                       ; 0x6f93
    push word [bx + bss_9cd4]        ; 0x6f95
    lea ax, word [bp - 0x86]         ; 0x6f99
    push ax                          ; 0x6f9d
    mov ax, 1                        ; 0x6f9e
    push ax                          ; 0x6fa1
    call data_record_io              ; 0x6fa2
    add sp, byte 8                   ; 0x6fa5
    lea ax, word [bp - 0x86]         ; 0x6fa8
    push ax                          ; 0x6fac
    mov ax, 0x16                     ; 0x6fad
    imul word [bp - 2]               ; 0x6fb0
    add ax, bss_99d6                 ; 0x6fb3
    push ax                          ; 0x6fb6
    call aztec_strcpy                ; 0x6fb7
    add sp, byte 4                   ; 0x6fba
    mov al, byte [bp - 0x4e]         ; 0x6fbd
    mov bx, word [bp - 2]            ; 0x6fc0
    mov byte [bx + bss_9918], al     ; 0x6fc3
    mov al, byte [bp - 0x6a]         ; 0x6fc7
    sub ah, ah                       ; 0x6fca
    push ax                          ; 0x6fcc
    mov al, byte [bp - 0x69]         ; 0x6fcd
    sub ah, ah                       ; 0x6fd0
    mov cx, ax                       ; 0x6fd2
    pop ax                           ; 0x6fd4
    imul cx                          ; 0x6fd5
    add ax, word [bp - 0x6c]         ; 0x6fd7
    shl bx, 1                        ; 0x6fda
    mov word [bx + bss_9c6a], ax     ; 0x6fdc
    mov al, byte [bp - 0x4e]         ; 0x6fe0
    sub ah, ah                       ; 0x6fe3
    mov bx, ax                       ; 0x6fe5
    cmp byte [bx + cell_overlay_code + 0x58], 1 ; 0x6fe7
    jne short .forward11             ; 0x6fec
    mov ax, word [bp - 2]            ; 0x6fee
    shl ax, 1                        ; 0x6ff1
    mov bx, ax                       ; 0x6ff3
    mov ax, word [bx + bss_9c6a]     ; 0x6ff5
    cwd                              ; 0x6ff9
    push ax                          ; 0x6ffa
    push dx                          ; 0x6ffb
    mul word [bp - 0x6e]             ; 0x6ffc
    mov cx, ax                       ; 0x6fff
    pop ax                           ; 0x7001
    mul word [bp - 0x70]             ; 0x7002
    add cx, ax                       ; 0x7005
    pop ax                           ; 0x7007
    mul word [bp - 0x70]             ; 0x7008
    add dx, cx                       ; 0x700b
    mov word [bp - 0x6e], dx         ; 0x700d
    mov word [bp - 0x70], ax         ; 0x7010
.forward11:
    mov ax, word [bp - 2]            ; 0x7013
    shl ax, 1                        ; 0x7016
    mov bx, ax                       ; 0x7018
    push word [bx + bss_9cd4]        ; 0x701a
    call loc_GMVH                    ; 0x701e
    pop cx                           ; 0x7021
    test ax, ax                      ; 0x7022
    je short .forward12              ; 0x7024
    mov ax, word [bp - 0x70]         ; 0x7026
    mov dx, word [bp - 0x6e]         ; 0x7029
    jmp short .forward13             ; 0x702c
.forward12:
    mov ax, word [bss_91aa]          ; 0x702e
    cwd                              ; 0x7031
    push ax                          ; 0x7032
    push dx                          ; 0x7033
    mul word [bp - 0x6e]             ; 0x7034
    mov cx, ax                       ; 0x7037
    pop ax                           ; 0x7039
    mul word [bp - 0x70]             ; 0x703a
    add cx, ax                       ; 0x703d
    pop ax                           ; 0x703f
    mul word [bp - 0x70]             ; 0x7040
    add dx, cx                       ; 0x7043
    mov cx, 0x64                     ; 0x7045
    mov bx, 0                        ; 0x7048
    call aztec_ldv                   ; 0x704b
.forward13:
    mov cx, word [bp - 2]            ; 0x704e
    shl cx, 1                        ; 0x7051
    shl cx, 1                        ; 0x7053
    mov bx, cx                       ; 0x7055
    mov word [bx + bss_9938], dx     ; 0x7057
    mov word [bx + bss_9936], ax     ; 0x705b
    mov al, byte [bp - 0x4d]         ; 0x705f
    mov bx, word [bp - 2]            ; 0x7062
    mov byte [bx + bss_99b8], al     ; 0x7065
    mov word [bp - 4], 0             ; 0x7069
.back5:
    mov bx, word [bp - 4]            ; 0x706e
    add bx, bp                       ; 0x7071
    mov al, byte [bx - 0x54]         ; 0x7073
    mov cx, word [bp - 2]            ; 0x7076
    shl cx, 1                        ; 0x7079
    add cx, word [bp - 4]            ; 0x707b
    mov bx, cx                       ; 0x707e
    mov byte [bx + bss_9882], al     ; 0x7080
    mov bx, word [bp - 4]            ; 0x7084
    add bx, bp                       ; 0x7087
    mov al, byte [bx - 0x52]         ; 0x7089
    mov bx, cx                       ; 0x708c
    mov byte [bx + bss_98be], al     ; 0x708e
    inc word [bp - 4]                ; 0x7092
    mov ax, word [bp - 4]            ; 0x7095
    cmp ax, strict word 2            ; 0x7098
    jl short .back5                  ; 0x709b
    mov al, byte [bp - 0x50]         ; 0x709d
    mov bx, word [bp - 2]            ; 0x70a0
    mov byte [bx + bss_98fa], al     ; 0x70a3
    inc word [bp - 2]                ; 0x70a7
.forward14:
    mov ax, word [bp - 2]            ; 0x70aa
    cmp ax, word [bss_9cd2]          ; 0x70ad
    jge short .return1               ; 0x70b1
    jmp near .back4                  ; 0x70b3
.return1:
    ret                              ; 0x70b6
