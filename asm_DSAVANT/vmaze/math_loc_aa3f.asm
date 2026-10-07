math_loc_aa3f:
    mov ax, 0                        ; 0xaa3f
    call ds_dispatch_f40b            ; 0xaa42
    mov ax, 0x10                     ; 0xaa45
    push ax                          ; 0xaa48
    call ds_dispatch_b7a9            ; 0xaa49
    pop cx                           ; 0xaa4c
    push ax                          ; 0xaa4d
    mov ax, 0x26                     ; 0xaa4e
    imul word [bp + 0x4]             ; 0xaa51
    mov bx, ax                       ; 0xaa54
    pop ax                           ; 0xaa56
    mov byte [bx - 0x7b13], al       ; 0xaa57
    mov al, byte [bx - 0x7b14]       ; 0xaa5b
    cmp al, byte [bx - 0x7b17]       ; 0xaa5f
    jne short @..math_loc_aa3f.l2    ; 0xaa63
    mov ax, 0xa                      ; 0xaa65
    push ax                          ; 0xaa68
    call ds_dispatch_b7a9            ; 0xaa69
    pop cx                           ; 0xaa6c
    test ax, ax                      ; 0xaa6d
    jne short @..math_loc_aa3f.l2    ; 0xaa6f
    mov ax, 0x26                     ; 0xaa71
    imul word [bp + 0x4]             ; 0xaa74
    mov bx, ax                       ; 0xaa77
    mov al, byte [bx - 0x7aff]       ; 0xaa79
    mov byte [bx - 0x7b00], al       ; 0xaa7d
    mov ax, 0xa                      ; 0xaa81
    push ax                          ; 0xaa84
    call ds_dispatch_b7a9            ; 0xaa85
    pop cx                           ; 0xaa88
    test ax, ax                      ; 0xaa89
    jne short @..math_loc_aa3f.l1    ; 0xaa8b
    mov ax, 0x26                     ; 0xaa8d
    imul word [bp + 0x4]             ; 0xaa90
    mov bx, ax                       ; 0xaa93
    mov byte [bx - 0x7b16], 2        ; 0xaa95
    mov byte [bx - 0x7b13], 0        ; 0xaa9a
    ret                              ; 0xaa9f
