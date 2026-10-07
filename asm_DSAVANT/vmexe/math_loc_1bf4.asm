math_loc_1bf4:
    mov ax, 0                        ; 0x1bf4
    call ds_dispatch_f40b            ; 0x1bf7
    mov ax, 0x248                    ; 0x1bfa
    imul word [bp + 0x4]             ; 0x1bfd
    add ax, word [bp + 0x6]          ; 0x1c00
    mov bx, ax                       ; 0x1c03
    cmp byte [bx + 0x5d6c], 0x64     ; 0x1c05
    jae short @..math_loc_1bf4.l1    ; 0x1c0a
    mov al, byte [bx + 0x5d6c]       ; 0x1c0c
    sub ah, ah                       ; 0x1c10
    push ax                          ; 0x1c12
    call ds_dispatch_b7a9            ; 0x1c13
    pop cx                           ; 0x1c16
    push ax                          ; 0x1c17
    mov ax, 0x248                    ; 0x1c18
    imul word [bp + 0x4]             ; 0x1c1b
    mov bx, ax                       ; 0x1c1e
    mov ax, word [bx + 0x5c18]       ; 0x1c20
    imul word [bp + 0x8]             ; 0x1c24
    mov cx, ax                       ; 0x1c27
    pop ax                           ; 0x1c29
    sub ax, cx                       ; 0x1c2a
    jg short @..math_loc_1bf4.l1     ; 0x1c2c
    add bx, word [bp + 0x6]          ; 0x1c2e
    inc byte [bx + 0x5d6c]           ; 0x1c31
@..math_loc_1bf4.l1:
    ret                              ; 0x1c35
