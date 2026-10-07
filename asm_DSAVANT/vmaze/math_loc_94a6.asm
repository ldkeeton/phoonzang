math_loc_94a6:
    mov ax, 0                        ; 0x94a6
    call ds_dispatch_f40b            ; 0x94a9
    mov ax, 3                        ; 0x94ac
    push ax                          ; 0x94af
    call ds_dispatch_b7a9            ; 0x94b0
    pop cx                           ; 0x94b3
    test ax, ax                      ; 0x94b4
    je short @..math_loc_94a6.l1     ; 0x94b6
    mov ax, 0x26                     ; 0x94b8
    imul word [bp + 0x4]             ; 0x94bb
    mov bx, ax                       ; 0x94be
    mov al, byte [bx - 0x7b00]       ; 0x94c0
    cbw                              ; 0x94c4
    push ax                          ; 0x94c5
    mov al, byte [bx - 0x7aff]       ; 0x94c6
    cbw                              ; 0x94ca
    mov cx, 2                        ; 0x94cb
    cwd                              ; 0x94ce
    idiv cx                          ; 0x94cf
    mov cx, ax                       ; 0x94d1
    pop ax                           ; 0x94d3
    cmp ax, cx                       ; 0x94d4
    jge short @..math_loc_94a6.l1    ; 0x94d6
    mov al, byte [bx - 0x7b17]       ; 0x94d8
    mov byte [bx - 0x7b15], al       ; 0x94dc
    push word [bp + 0x4]             ; 0x94e0
    call math_loc_946a               ; 0x94e3
    pop cx                           ; 0x94e6
    mov ax, 1                        ; 0x94e7
    ret                              ; 0x94ea
