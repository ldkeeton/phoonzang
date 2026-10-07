math_loc_1eb4:
    mov ax, 0                        ; 0x1eb4
    call ds_dispatch_f40b            ; 0x1eb7
    mov ax, 0x2c                     ; 0x1eba
    imul word [bp + 0x4]             ; 0x1ebd
    mov si, ax                       ; 0x1ec0
    mov bx, word [data_8482]         ; 0x1ec2
    mov ax, word [bx + si + 0x2]     ; 0x1ec6
    push ax                          ; 0x1ec9
    mov ax, 0x248                    ; 0x1eca
    imul word [bp + 0x4]             ; 0x1ecd
    mov bx, ax                       ; 0x1ed0
    pop ax                           ; 0x1ed2
    mov word [bx + 0x5c0c], ax       ; 0x1ed3
    mov bx, word [data_8482]         ; 0x1ed7
    mov ax, word [bx + si + 0x6]     ; 0x1edb
    push ax                          ; 0x1ede
    mov ax, 0x248                    ; 0x1edf
    imul word [bp + 0x4]             ; 0x1ee2
    mov bx, ax                       ; 0x1ee5
    pop ax                           ; 0x1ee7
    mov word [bx + 0x5c10], ax       ; 0x1ee8
    mov bx, word [data_8482]         ; 0x1eec
    mov al, byte [bx + si + 0x22]    ; 0x1ef0
    push ax                          ; 0x1ef3
    mov ax, 0x248                    ; 0x1ef4
    imul word [bp + 0x4]             ; 0x1ef7
    mov bx, ax                       ; 0x1efa
    pop ax                           ; 0x1efc
    mov byte [bx + 0x5e2f], al       ; 0x1efd
    mov ax, 0xa                      ; 0x1f01
    push ax                          ; 0x1f04
    add bx, strict word 0x5d5a       ; 0x1f05
    mov ax, bx                       ; 0x1f09
    push ax                          ; 0x1f0b
    mov ax, word [data_8482]         ; 0x1f0c
    add ax, si                       ; 0x1f0f
    add ax, strict word 0xe          ; 0x1f11
    push ax                          ; 0x1f14
    call ds_dispatch_fedc            ; 0x1f15
    add sp, byte 6                   ; 0x1f18
    mov ax, 0x2c                     ; 0x1f1b
    imul word [bp + 0x4]             ; 0x1f1e
    mov si, ax                       ; 0x1f21
    mov bx, word [data_8482]         ; 0x1f23
    mov al, byte [bx + si + 0x23]    ; 0x1f27
    push ax                          ; 0x1f2a
    mov ax, 0x248                    ; 0x1f2b
    imul word [bp + 0x4]             ; 0x1f2e
    mov bx, ax                       ; 0x1f31
    pop ax                           ; 0x1f33
    mov byte [bx + 0x5e32], al       ; 0x1f34
    ret                              ; 0x1f38
