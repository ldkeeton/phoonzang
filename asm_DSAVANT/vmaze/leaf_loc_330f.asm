leaf_loc_330f:
    mov ax, 0xa                      ; 0x330f
    imul word [bss_91d6]             ; 0x3312
    mov cx, word [bp + 0xe]          ; 0x3316
    shl cx, 1                        ; 0x3319
    add ax, cx                       ; 0x331b
    mov bx, ax                       ; 0x331d
    mov word [bx - 0x6d42], 1        ; 0x331f
