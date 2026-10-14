; auto-generated
leaf_loc_NKLO:
    mov ax, word [bp - 0x0008]       ; 0x32b9
    inc ax                           ; 0x32bc
    push ax                          ; 0x32bd
    mov ax, 0xa                      ; 0x32be
    imul word [bss_91d6]             ; 0x32c1
    mov cx, ax                       ; 0x32c5
    mov dx, word [bp + 0xe]          ; 0x32c7
    shl dx, 1                        ; 0x32ca
    add ax, dx                       ; 0x32cc
    mov bx, ax                       ; 0x32ce
    pop ax                           ; 0x32d0
    mov word [bx - 0x6d8e], ax       ; 0x32d1
    jmp near loc_3387                ; 0x32d5
