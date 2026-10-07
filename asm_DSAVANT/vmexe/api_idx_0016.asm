api_idx_0016:
    mov ax, 0xffea                   ; 0x0e1a
    call ds_dispatch_f40b            ; 0x0e1d
    mov ax, 6                        ; 0x0e20
    imul word [bp + 0x4]             ; 0x0e23
    mov cx, word [bp + 0x6]          ; 0x0e26
    shl cx, 1                        ; 0x0e29
    add ax, cx                       ; 0x0e2b
    mov bx, ax                       ; 0x0e2d
    cmp word [bx - 0x6f36], byte 0   ; 0x0e2f
    jl short @..api_idx_0016.l1      ; 0x0e34
    cmp word [bx - 0x6f36], byte 6   ; 0x0e36
    jle short @..api_idx_0016.l2     ; 0x0e3b
@..api_idx_0016.l1:
    mov word [bx - 0x6f36], 0xffff   ; 0x0e3d
    ret                              ; 0x0e43
