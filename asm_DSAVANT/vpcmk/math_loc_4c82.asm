math_loc_4c82:
    mov ax, 0                        ; 0x4c82
    call ds_dispatch_f40b            ; 0x4c85
    mov ax, 0x248                    ; 0x4c88
    imul word [bp + 0x4]             ; 0x4c8b
    mov bx, ax                       ; 0x4c8e
    cmp byte [bx + 0x5e2b], 5        ; 0x4c90
    jne short @..math_loc_4c82.l1    ; 0x4c95
    mov ax, 0x180                    ; 0x4c97
    push ax                          ; 0x4c9a
    mov ax, 0x13c                    ; 0x4c9b
    push ax                          ; 0x4c9e
    mov ax, 0x18f                    ; 0x4c9f
    push ax                          ; 0x4ca2
    mov ax, 0x18e                    ; 0x4ca3
    push ax                          ; 0x4ca6
    mov ax, 0x18d                    ; 0x4ca7
    push ax                          ; 0x4caa
    push word [bp + 0x4]             ; 0x4cab
    call loc_4c21                    ; 0x4cae
    add sp, byte 0x0c                ; 0x4cb1
    ret                              ; 0x4cb4
@..math_loc_4c82.l1:
    mov ax, 0x248                    ; 0x4cb5
    imul word [bp + 0x4]             ; 0x4cb8
    mov bx, ax                       ; 0x4cbb
    mov al, byte [bx + 0x5e2d]       ; 0x4cbd
    sub ah, ah                       ; 0x4cc1
    jmp near @..math_loc_4c82.l2     ; 0x4cc3
