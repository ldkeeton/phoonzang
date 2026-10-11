leaf_loc_32e8:
    mov ax, 5                        ; 0x32e8
    imul word [bss_91d6]             ; 0x32eb
    add ax, word [bp + 0xe]          ; 0x32ef
    mov bx, ax                       ; 0x32f2
    mov byte [bx - 0x6d5e], 1        ; 0x32f4
    jmp near loc_3387                ; 0x32f9
