leaf_loc_329a:
    mov ax, word [bp - 0x0008]       ; 0x329a
    inc ax                           ; 0x329d
    push ax                          ; 0x329e
    mov ax, 0xa                      ; 0x329f
    imul word [bss_91d6]             ; 0x32a2
    mov cx, ax                       ; 0x32a6
    mov dx, word [bp + 0xe]          ; 0x32a8
    shl dx, 1                        ; 0x32ab
    add ax, dx                       ; 0x32ad
    mov bx, ax                       ; 0x32af
    pop ax                           ; 0x32b1
    mov word [bx - 0x6dc0], ax       ; 0x32b2
    jmp near loc_3387                ; 0x32b6
