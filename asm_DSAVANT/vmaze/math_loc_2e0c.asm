math_loc_2e0c:
    mov ax, 0                        ; 0x2e0c
    call ds_dispatch_f40b            ; 0x2e0f
    push word [bp + 0x6]             ; 0x2e12
    mov ax, word [bp + 0x4]          ; 0x2e15
    dec ax                           ; 0x2e18
    push ax                          ; 0x2e19
    lea ax, word [bp + 0xc]          ; 0x2e1a
    push ax                          ; 0x2e1d
    lea ax, word [bp + 0xa]          ; 0x2e1e
    push ax                          ; 0x2e21
    lea ax, word [bp + 0x8]          ; 0x2e22
    push ax                          ; 0x2e25
    call api_idx_0004_6              ; 0x2e26
    add sp, byte 0x0a                ; 0x2e29
    test ax, ax                      ; 0x2e2c
    je short @..math_loc_2e0c.l5     ; 0x2e2e
    mov ax, word [data_5b6e]         ; 0x2e30
    mov cx, 2                        ; 0x2e33
    cwd                              ; 0x2e36
    idiv cx                          ; 0x2e37
    mov ax, dx                       ; 0x2e39
    test ax, ax                      ; 0x2e3b
    je short @..math_loc_2e0c.l1     ; 0x2e3d
    mov ax, cx                       ; 0x2e3f
    jmp short @..math_loc_2e0c.l4    ; 0x2e41
@..math_loc_2e0c.l1:
    mov ax, word [data_5b6e]         ; 0x2e43
    cmp ax, strict word 6            ; 0x2e46
    je short @..math_loc_2e0c.l2     ; 0x2e49
    cmp word [data_91a6], byte 0     ; 0x2e4b
    je short @..math_loc_2e0c.l3     ; 0x2e50
@..math_loc_2e0c.l2:
    mov ax, 0                        ; 0x2e52
    jmp short @..math_loc_2e0c.l4    ; 0x2e55
@..math_loc_2e0c.l3:
    mov ax, 4                        ; 0x2e57
@..math_loc_2e0c.l4:
    ret                              ; 0x2e5a
