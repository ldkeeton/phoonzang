api_idx_0004_11:
    mov ax, 0xfffc                   ; 0x6ead
    call ds_aztec_csav               ; 0x6eb0
    mov cx, word [bp + 0x4]          ; 0x6eb3
    shl cx, 1                        ; 0x6eb6
    mov ax, word [bss_0e12]          ; 0x6eb8
    add ax, cx                       ; 0x6ebb
    add ax, 0x3c0                    ; 0x6ebd
    mov word [bp - 0x0004], ax       ; 0x6ec0
    mov ax, word [bss_82ee]          ; 0x6ec3
    shl ax, 1                        ; 0x6ec6
    mov word [bp - 0x0002], ax       ; 0x6ec8
    mov cx, 8                        ; 0x6ecb
    cwd                              ; 0x6ece
    idiv cx                          ; 0x6ecf
    mov si, ax                       ; 0x6ed1
    mov bx, word [bp - 0x0004]       ; 0x6ed3
    mov al, byte [bx + si]           ; 0x6ed6
    cbw                              ; 0x6ed8
    push ax                          ; 0x6ed9
    mov ax, word [bp - 0x0002]       ; 0x6eda
    cwd                              ; 0x6edd
    idiv cx                          ; 0x6ede
    mov cx, dx                       ; 0x6ee0
    mov dx, 1                        ; 0x6ee2
    shl dx, cl                       ; 0x6ee5
    mov cx, dx                       ; 0x6ee7
    not cx                           ; 0x6ee9
    pop ax                           ; 0x6eeb
    and ax, cx                       ; 0x6eec
    mov byte [bx + si], al           ; 0x6eee
    mov ax, word [bp - 0x0002]       ; 0x6ef0
    inc ax                           ; 0x6ef3
    mov cx, 8                        ; 0x6ef4
    cwd                              ; 0x6ef7
    idiv cx                          ; 0x6ef8
    mov si, ax                       ; 0x6efa
    mov al, byte [bx + si]           ; 0x6efc
    cbw                              ; 0x6efe
    push ax                          ; 0x6eff
    mov ax, word [bp - 0x0002]       ; 0x6f00
    inc ax                           ; 0x6f03
    cwd                              ; 0x6f04
    idiv cx                          ; 0x6f05
    mov cx, dx                       ; 0x6f07
    mov dx, 1                        ; 0x6f09
    shl dx, cl                       ; 0x6f0c
    mov cx, dx                       ; 0x6f0e
    pop ax                           ; 0x6f10
    or ax, cx                        ; 0x6f11
    mov byte [bx + si], al           ; 0x6f13
    mov ax, 0                        ; 0x6f15
    push ax                          ; 0x6f18
    push ax                          ; 0x6f19
    push ax                          ; 0x6f1a
    mov ax, word [bp + 0x4]          ; 0x6f1b
    shl ax, 1                        ; 0x6f1e
    mov si, ax                       ; 0x6f20
    mov bx, word [bss_0e12]          ; 0x6f22
    push word [bx + si + 0x3c0]      ; 0x6f26
    mov ax, 0                        ; 0x6f2a
    push ax                          ; 0x6f2d
    push ax                          ; 0x6f2e
    push word [bp + 0x4]             ; 0x6f2f
    mov ax, 6                        ; 0x6f32
    push ax                          ; 0x6f35
    push word [bss_830c]             ; 0x6f36
    call api_idx_0004_10             ; 0x6f3a
    add sp, byte 0x12                ; 0x6f3d
    ret                              ; 0x6f40
loc_6f41:
    mov ax, 0                        ; 0x6f41
    call ds_aztec_csav               ; 0x6f44
    mov ax, word [bss_82ee]          ; 0x6f47
    shl ax, 1                        ; 0x6f4a
    mov bx, ax                       ; 0x6f4c
    mov word [bx - 0x7302], 0        ; 0x6f4e
    push ax                          ; 0x6f54
    mov cx, word [bp + 0x4]          ; 0x6f55
    shl cx, 1                        ; 0x6f58
    mov ax, word [bss_0e12]          ; 0x6f5a
    add ax, cx                       ; 0x6f5d
    add ax, 0x3c0                    ; 0x6f5f
    push ax                          ; 0x6f62
    call api_idx_0002_5              ; 0x6f63
    add sp, byte 4                   ; 0x6f66
    mov ax, 0                        ; 0x6f69
    push ax                          ; 0x6f6c
    push ax                          ; 0x6f6d
    push ax                          ; 0x6f6e
    mov ax, word [bp + 0x4]          ; 0x6f6f
    shl ax, 1                        ; 0x6f72
    mov si, ax                       ; 0x6f74
    mov bx, word [bss_0e12]          ; 0x6f76
    push word [bx + si + 0x3c0]      ; 0x6f7a
    mov ax, 0                        ; 0x6f7e
    push ax                          ; 0x6f81
    push ax                          ; 0x6f82
    push word [bp + 0x4]             ; 0x6f83
    mov ax, 6                        ; 0x6f86
    push ax                          ; 0x6f89
    push word [bss_830c]             ; 0x6f8a
    call api_idx_0004_10             ; 0x6f8e
    add sp, byte 0x12                ; 0x6f91
    mov ax, word [bp + 0x4]          ; 0x6f94
    shl ax, 1                        ; 0x6f97
    mov si, ax                       ; 0x6f99
    mov bx, word [bss_0e12]          ; 0x6f9b
    cmp word [bx + si], byte 0       ; 0x6f9f
    jle short @..loc_6f41.l1         ; 0x6fa2
    mov ax, 0                        ; 0x6fa4
    push ax                          ; 0x6fa7
    push word [bx + si]              ; 0x6fa8
    mov ax, word [bss_830c]          ; 0x6faa
    mov cx, 4                        ; 0x6fad
    shl ax, cl                       ; 0x6fb0
    add ax, 0x8d14                   ; 0x6fb2
    push ax                          ; 0x6fb5
    call ds_leaf_loc_3e88            ; 0x6fb6
    add sp, byte 6                   ; 0x6fb9
    mov ax, 0                        ; 0x6fbc
    push ax                          ; 0x6fbf
    mov ax, word [bp + 0x4]          ; 0x6fc0
    shl ax, 1                        ; 0x6fc3
    mov si, ax                       ; 0x6fc5
    mov bx, word [bss_0e12]          ; 0x6fc7
    push word [bx + si]              ; 0x6fcb
    mov ax, word [bss_830c]          ; 0x6fcd
    mov cx, 4                        ; 0x6fd0
    shl ax, cl                       ; 0x6fd3
    add ax, 0x5642                   ; 0x6fd5
    push ax                          ; 0x6fd8
    call ds_leaf_loc_3e88            ; 0x6fd9
    add sp, byte 6                   ; 0x6fdc
    mov ax, word [bp + 0x4]          ; 0x6fdf
    inc ax                           ; 0x6fe2
    mov word [bss_8d12], ax          ; 0x6fe3
@..loc_6f41.l1:
    cmp word [bp + 0x6], byte 0      ; 0x6fe6
    je short @..loc_6f41.l2          ; 0x6fea
    mov ax, 1                        ; 0x6fec
    push ax                          ; 0x6fef
    call ds_app_0a27                 ; 0x6ff0
    pop cx                           ; 0x6ff3
@..loc_6f41.l2:
    ret                              ; 0x6ff4
