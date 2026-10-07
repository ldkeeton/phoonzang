math_loc_aad3:
    mov ax, 0                        ; 0xaad3
    call ds_dispatch_f40b            ; 0xaad6
    mov ax, 0x26                     ; 0xaad9
    imul word [bp + 0x4]             ; 0xaadc
    mov bx, ax                       ; 0xaadf
    cmp byte [bx - 0x7b00], 0        ; 0xaae1
    jg short @..math_loc_aad3.l1     ; 0xaae6
    ret                              ; 0xaae8
