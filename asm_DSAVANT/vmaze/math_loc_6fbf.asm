math_loc_6fbf:
    mov ax, 0                        ; 0x6fbf
    call ds_dispatch_f40b            ; 0x6fc2
    mov ax, 0x248                    ; 0x6fc5
    imul word [bp + 0x4]             ; 0x6fc8
    add ax, word [bp + 0x6]          ; 0x6fcb
    mov bx, ax                       ; 0x6fce
    cmp byte [bx + 0x5d6c], 0x64     ; 0x6fd0
    jae short @..math_loc_6fbf.l1    ; 0x6fd5
    mov al, byte [bx + 0x5d6c]       ; 0x6fd7
    sub ah, ah                       ; 0x6fdb
    push ax                          ; 0x6fdd
    call ds_dispatch_b7a9            ; 0x6fde
    pop cx                           ; 0x6fe1
    push ax                          ; 0x6fe2
    mov ax, 0x248                    ; 0x6fe3
    imul word [bp + 0x4]             ; 0x6fe6
    mov bx, ax                       ; 0x6fe9
    mov ax, word [bx + 0x5c18]       ; 0x6feb
    imul word [bp + 0x8]             ; 0x6fef
    mov cx, ax                       ; 0x6ff2
    pop ax                           ; 0x6ff4
    sub ax, cx                       ; 0x6ff5
    jg short @..math_loc_6fbf.l1     ; 0x6ff7
    add bx, word [bp + 0x6]          ; 0x6ff9
    inc byte [bx + 0x5d6c]           ; 0x6ffc
@..math_loc_6fbf.l1:
    ret                              ; 0x7000
