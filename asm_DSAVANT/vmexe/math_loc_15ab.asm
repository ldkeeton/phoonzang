math_loc_15ab:
    mov ax, 0                        ; 0x15ab
    call ds_dispatch_f40b            ; 0x15ae
    cmp word [bp + 0x6], byte 0      ; 0x15b1
    jne short @..math_loc_15ab.l1    ; 0x15b5
    mov ax, 0x248                    ; 0x15b7
    imul word [bp + 0x8]             ; 0x15ba
    add ax, 0x5bf4                   ; 0x15bd
    push ax                          ; 0x15c0
    push word [bp + 0x4]             ; 0x15c1
    call ds_dispatch_f364            ; 0x15c4
    add sp, byte 4                   ; 0x15c7
    jmp short @..math_loc_15ab.l2    ; 0x15ca
@..math_loc_15ab.l1:
    mov ax, word [bp + 0x6]          ; 0x15cc
    shl ax, 1                        ; 0x15cf
    mov bx, ax                       ; 0x15d1
    mov ax, word [bx - 0x7b70]       ; 0x15d3
    push ax                          ; 0x15d7
    mov bx, word [bx - 0x7b7e]       ; 0x15d8
    mov al, byte [bx + 0x1a0]        ; 0x15dc
    sub ah, ah                       ; 0x15e0
    mov dx, ax                       ; 0x15e2
    mov cx, 5                        ; 0x15e4
    shl ax, cl                       ; 0x15e7
    mov cx, ax                       ; 0x15e9
    pop ax                           ; 0x15eb
    add ax, cx                       ; 0x15ec
    push ax                          ; 0x15ee
    push word [bp + 0x4]             ; 0x15ef
    call ds_dispatch_f364            ; 0x15f2
    add sp, byte 4                   ; 0x15f5
@..math_loc_15ab.l2:
    ret                              ; 0x15f8
