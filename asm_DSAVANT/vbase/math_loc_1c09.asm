math_loc_1c09:
    mov ax, 0                        ; 0x1c09
    call ds_dispatch_f40b            ; 0x1c0c
    mov ax, word [bp + 0x6]          ; 0x1c0f
    push ax                          ; 0x1c12
    cmp ax, strict word 1            ; 0x1c13
    pop ax                           ; 0x1c16
    jge short @..math_loc_1c09.l1    ; 0x1c17
    mov ax, 1                        ; 0x1c19
@..math_loc_1c09.l1:
    push ax                          ; 0x1c1c
    mov ax, 0x248                    ; 0x1c1d
    imul word [bp + 0x4]             ; 0x1c20
    mov bx, ax                       ; 0x1c23
    pop ax                           ; 0x1c25
    mov byte [bx + 0x5d54], al       ; 0x1c26
    mov ax, word [bp + 0x8]          ; 0x1c2a
    push ax                          ; 0x1c2d
    cmp ax, strict word 1            ; 0x1c2e
    pop ax                           ; 0x1c31
    jge short @..math_loc_1c09.l2    ; 0x1c32
    mov ax, 1                        ; 0x1c34
@..math_loc_1c09.l2:
    mov byte [bx + 0x5d55], al       ; 0x1c37
    mov ax, word [bp + 0xa]          ; 0x1c3b
    push ax                          ; 0x1c3e
    cmp ax, strict word 1            ; 0x1c3f
    pop ax                           ; 0x1c42
    jge short @..math_loc_1c09.l3    ; 0x1c43
    mov ax, 1                        ; 0x1c45
@..math_loc_1c09.l3:
    mov byte [bx + 0x5d56], al       ; 0x1c48
    mov ax, word [bp + 0xc]          ; 0x1c4c
    push ax                          ; 0x1c4f
    cmp ax, strict word 1            ; 0x1c50
    pop ax                           ; 0x1c53
    jge short @..math_loc_1c09.l4    ; 0x1c54
    mov ax, 1                        ; 0x1c56
@..math_loc_1c09.l4:
    mov byte [bx + 0x5d57], al       ; 0x1c59
    mov ax, word [bp + 0xe]          ; 0x1c5d
    push ax                          ; 0x1c60
    cmp ax, strict word 1            ; 0x1c61
    pop ax                           ; 0x1c64
    jge short @..math_loc_1c09.l5    ; 0x1c65
    mov ax, 1                        ; 0x1c67
@..math_loc_1c09.l5:
    mov byte [bx + 0x5d58], al       ; 0x1c6a
    mov ax, word [bp + 0x10]         ; 0x1c6e
    push ax                          ; 0x1c71
    cmp ax, strict word 1            ; 0x1c72
    pop ax                           ; 0x1c75
    jge short @..math_loc_1c09.l6    ; 0x1c76
    mov ax, 1                        ; 0x1c78
@..math_loc_1c09.l6:
    mov byte [bx + 0x5d59], al       ; 0x1c7b
    ret                              ; 0x1c7f
