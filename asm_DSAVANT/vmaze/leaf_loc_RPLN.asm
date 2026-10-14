; auto-generated
leaf_loc_RPLN:
    mov ax, word [bp - 0x0008]       ; 0x327f
    inc ax                           ; 0x3282
    push ax                          ; 0x3283
    mov ax, 5                        ; 0x3284
    imul word [bss_91d6]             ; 0x3287
    mov cx, ax                       ; 0x328b
    add ax, word [bp + 0xe]          ; 0x328d
    mov bx, ax                       ; 0x3290
    pop ax                           ; 0x3292
    mov byte [bx - 0x6ddb], al       ; 0x3293
    jmp near loc_3387                ; 0x3297
