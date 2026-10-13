; auto-generated
api_idx_0002_8:
    mov ax, 0xfffe                   ; 0x0e5d
    call aztec_csav                  ; 0x0e60
    mov ax, word [bss_8f1c]          ; 0x0e63
    mov dx, word [bss_8f1e]          ; 0x0e66
    mov cx, 0x5a0                    ; 0x0e6a
    mov bx, 0                        ; 0x0e6d
    call aztec_lrm                   ; 0x0e70
    mov cx, 0x3c                     ; 0x0e73
    mov bx, 0                        ; 0x0e76
    call aztec_ldv                   ; 0x0e79
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
    call ds_loc_42ea                 ; 0x0e9f
    add sp, byte 8                   ; 0x0ea2
    ret                              ; 0x0ea5
loc_0ea6:
    mov ax, 0                        ; 0x0ea6
    call aztec_csav                  ; 0x0ea9
    les bx, word [dseg_0002]         ; 0x0eac
    mov ax, word [es:bx]             ; 0x0eb0
    mov dx, word [es:bx + 0x2]       ; 0x0eb3
    cmp dx, word [bss_919c]          ; 0x0eb7
    jl short @..loc_0ea6.l1          ; 0x0ebb
    jne short @..loc_0ea6.l2         ; 0x0ebd
    cmp ax, word [bss_919a]          ; 0x0ebf
    ja short @..loc_0ea6.l2          ; 0x0ec3
@..loc_0ea6.l1:
    jmp short @..loc_0ea6.l6         ; 0x0ec5
@..loc_0ea6.l2:
    call api_idx_0002_2              ; 0x0ec7
    mov ax, 0x3c                     ; 0x0eca
    push ax                          ; 0x0ecd
    call ds_app_09f0                 ; 0x0ece
    pop cx                           ; 0x0ed1
    cwd                              ; 0x0ed2
    push ax                          ; 0x0ed3
    push dx                          ; 0x0ed4
    cmp word [bss_5b6e], byte 3      ; 0x0ed5
    je short @..loc_0ea6.l3          ; 0x0eda
    cmp word [bss_5b6e], byte 5      ; 0x0edc
    jne short @..loc_0ea6.l4         ; 0x0ee1
@..loc_0ea6.l3:
    mov ax, 0x3c                     ; 0x0ee3
    jmp short @..loc_0ea6.l5         ; 0x0ee6
@..loc_0ea6.l4:
    mov ax, 0                        ; 0x0ee8
@..loc_0ea6.l5:
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
    mov word [bss_919c], dx          ; 0x0f05
    mov word [bss_919a], ax          ; 0x0f09
    jmp short @..loc_0ea6.l7         ; 0x0f0c
@..loc_0ea6.l6:
    cmp word [bp + 0x4], byte 0      ; 0x0f0e
    je short @..loc_0ea6.l7          ; 0x0f12
    mov ax, 0xa                      ; 0x0f14
    push ax                          ; 0x0f17
    call ds_leaf_loc_36d0            ; 0x0f18
    pop cx                           ; 0x0f1b
@..loc_0ea6.l7:
    ret                              ; 0x0f1c
loc_0f1d:
    mov ax, 0                        ; 0x0f1d
    call aztec_csav                  ; 0x0f20
    les bx, word [dseg_0002]         ; 0x0f23
    mov ax, word [es:bx]             ; 0x0f27
    mov dx, word [es:bx + 0x2]       ; 0x0f2a
    sub ax, word [bss_908a]          ; 0x0f2e
    sbb dx, word [bss_908c]          ; 0x0f32
    push ax                          ; 0x0f36
    push dx                          ; 0x0f37
    mov ax, word [bss_9192]          ; 0x0f38
    cwd                              ; 0x0f3b
    mov cx, ax                       ; 0x0f3c
    mov bx, dx                       ; 0x0f3e
    pop dx                           ; 0x0f40
    pop ax                           ; 0x0f41
    cmp dx, bx                       ; 0x0f42
    jl short @..loc_0f1d.l1          ; 0x0f44
    jne short @..loc_0f1d.l2         ; 0x0f46
    cmp ax, cx                       ; 0x0f48
    jae short @..loc_0f1d.l2         ; 0x0f4a
@..loc_0f1d.l1:
    jmp short @..loc_0f1d.l3         ; 0x0f4c
@..loc_0f1d.l2:
    les bx, word [dseg_0002]         ; 0x0f4e
    mov ax, word [es:bx]             ; 0x0f52
    mov dx, word [es:bx + 0x2]       ; 0x0f55
    mov word [bss_908c], dx          ; 0x0f59
    mov word [bss_908a], ax          ; 0x0f5d
    mov ax, 1                        ; 0x0f60
    ret                              ; 0x0f63
@..loc_0f1d.l3:
    mov ax, 0                        ; 0x0f64
    ret                              ; 0x0f67
loc_0f68:
    mov ax, 0                        ; 0x0f68
    call aztec_csav                  ; 0x0f6b
    call loc_0f1d                    ; 0x0f6e
    test ax, ax                      ; 0x0f71
    je short @..loc_0f68.l1          ; 0x0f73
    mov ax, word [bss_82e8]          ; 0x0f75
    inc ax                           ; 0x0f78
    mov cx, 2                        ; 0x0f79
    cwd                              ; 0x0f7c
    idiv cx                          ; 0x0f7d
    mov word [bss_82e8], dx          ; 0x0f7f
    call loc_676c                    ; 0x0f83
    mov ax, 1                        ; 0x0f86
    ret                              ; 0x0f89
@..loc_0f68.l1:
    mov ax, 0                        ; 0x0f8a
    ret                              ; 0x0f8d
