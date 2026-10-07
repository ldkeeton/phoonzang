math_loc_9448:
    mov ax, 0                        ; 0x9448
    call ds_dispatch_f40b            ; 0x944b
    mov ax, 0x26                     ; 0x944e
    imul word [bp + 0x4]             ; 0x9451
    mov bx, ax                       ; 0x9454
    mov al, byte [bx - 0x7b14]       ; 0x9456
    sub ah, ah                       ; 0x945a
    cmp ax, word [bp + 0x6]          ; 0x945c
    jne short @..math_loc_9448.l1    ; 0x945f
    mov ax, 1                        ; 0x9461
    jmp short @..math_loc_9448.l2    ; 0x9464
@..math_loc_9448.l1:
    mov ax, 0                        ; 0x9466
@..math_loc_9448.l2:
    ret                              ; 0x9469
