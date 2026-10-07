api_idx_0054_6:
    mov ax, 0xffac                   ; 0x9d30
    db 0xe8, 0xd5, 0x56 ; call 0xf40b
    mov ax, word [data_9e42]         ; 0x9d36
    mov word [bp - 0x0002], ax       ; 0x9d39
    mov cx, 0x14                     ; 0x9d3c
    imul cx                          ; 0x9d3f
    mov bx, ax                       ; 0x9d41
    cmp word [bx - 0x617a], byte 0   ; 0x9d43
    jge short @..api_idx_0054_6.l1   ; 0x9d48
    mov ax, word [bx - 0x617a]       ; 0x9d4a
    add word [bp - 0x0002], ax       ; 0x9d4e
@..api_idx_0054_6.l1:
    push word [bp - 0x0002]          ; 0x9d51
    call math_loc_9d06               ; 0x9d54
    pop cx                           ; 0x9d57
    mov word [bp - 0x0004], ax       ; 0x9d58
    mov ax, 0x14                     ; 0x9d5b
    imul word [bp - 0x0002]          ; 0x9d5e
    mov bx, ax                       ; 0x9d61
    cmp word [bx - 0x617a], byte 3   ; 0x9d63
    jne short @..api_idx_0054_6.l2   ; 0x9d68
    mov ax, 0x659                    ; 0x9d6a
    push ax                          ; 0x9d6d
    mov ax, word [bp - 0x0004]       ; 0x9d6e
    inc ax                           ; 0x9d71
    inc ax                           ; 0x9d72
    inc ax                           ; 0x9d73
    push ax                          ; 0x9d74
    call loc_9c7a                    ; 0x9d75
    add sp, byte 4                   ; 0x9d78
    ret                              ; 0x9d7b
