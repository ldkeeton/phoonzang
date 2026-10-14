; auto-generated
leaf_loc_OHPG:
    mov ax, 5                        ; 0x32fc
    imul word [bss_91d6]             ; 0x32ff
    add ax, word [bp + 0xe]          ; 0x3303
    mov bx, ax                       ; 0x3306
    mov byte [bx - 0x6e26], 3        ; 0x3308
    jmp short loc_3387               ; 0x330d
