math_loc_16d1:
    mov ax, 0                        ; 0x16d1
    call ds_dispatch_f40b            ; 0x16d4
    mov ax, 0x248                    ; 0x16d7
    imul word [bp + 0x4]             ; 0x16da
    add ax, word [bp + 0x6]          ; 0x16dd
    mov bx, ax                       ; 0x16e0
    cmp byte [bx + 0x5d6c], 0x64     ; 0x16e2
    jae short @..math_loc_16d1.l1    ; 0x16e7
    mov al, byte [bx + 0x5d6c]       ; 0x16e9
    sub ah, ah                       ; 0x16ed
    push ax                          ; 0x16ef
    call ds_dispatch_b7a9            ; 0x16f0
    pop cx                           ; 0x16f3
    push ax                          ; 0x16f4
    mov ax, 0x248                    ; 0x16f5
    imul word [bp + 0x4]             ; 0x16f8
    mov bx, ax                       ; 0x16fb
    mov ax, word [bx + 0x5c18]       ; 0x16fd
    imul word [bp + 0x8]             ; 0x1701
    mov cx, ax                       ; 0x1704
    pop ax                           ; 0x1706
    sub ax, cx                       ; 0x1707
    jg short @..math_loc_16d1.l1     ; 0x1709
    add bx, word [bp + 0x6]          ; 0x170b
    inc byte [bx + 0x5d6c]           ; 0x170e
@..math_loc_16d1.l1:
    ret                              ; 0x1712
