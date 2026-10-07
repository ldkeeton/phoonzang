math_loc_189b:
    mov ax, 0                        ; 0x189b
    call ds_dispatch_f40b            ; 0x189e
    push word [bp + 0x6]             ; 0x18a1
    mov ax, word [bp + 0x4]          ; 0x18a4
    dec ax                           ; 0x18a7
    push ax                          ; 0x18a8
    lea ax, word [bp + 0xc]          ; 0x18a9
    push ax                          ; 0x18ac
    lea ax, word [bp + 0xa]          ; 0x18ad
    push ax                          ; 0x18b0
    lea ax, word [bp + 0x8]          ; 0x18b1
    push ax                          ; 0x18b4
    call api_idx_0004                ; 0x18b5
    add sp, byte 0x0a                ; 0x18b8
    test ax, ax                      ; 0x18bb
    je short @..math_loc_189b.l5     ; 0x18bd
    mov ax, word [data_5b6e]         ; 0x18bf
    mov cx, 2                        ; 0x18c2
    cwd                              ; 0x18c5
    idiv cx                          ; 0x18c6
    mov ax, dx                       ; 0x18c8
    test ax, ax                      ; 0x18ca
    je short @..math_loc_189b.l1     ; 0x18cc
    mov ax, cx                       ; 0x18ce
    jmp short @..math_loc_189b.l4    ; 0x18d0
@..math_loc_189b.l1:
    mov ax, word [data_5b6e]         ; 0x18d2
    cmp ax, strict word 6            ; 0x18d5
    je short @..math_loc_189b.l2     ; 0x18d8
    cmp word [data_9188], byte 0     ; 0x18da
    je short @..math_loc_189b.l3     ; 0x18df
@..math_loc_189b.l2:
    mov ax, 0                        ; 0x18e1
    jmp short @..math_loc_189b.l4    ; 0x18e4
@..math_loc_189b.l3:
    mov ax, 4                        ; 0x18e6
@..math_loc_189b.l4:
    ret                              ; 0x18e9
