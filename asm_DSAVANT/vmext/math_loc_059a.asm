math_loc_059a:
    mov ax, 0                        ; 0x059a
    call ds_dispatch_f40b            ; 0x059d
    call math_loc_054f               ; 0x05a0
    test ax, ax                      ; 0x05a3
    je short @..math_loc_059a.l1     ; 0x05a5
    mov ax, word [data_82e8]         ; 0x05a7
    inc ax                           ; 0x05aa
    mov cx, 2                        ; 0x05ab
    cwd                              ; 0x05ae
    idiv cx                          ; 0x05af
    mov word [data_82e8], dx         ; 0x05b1
    call loc_51fb                    ; 0x05b5
    mov ax, 1                        ; 0x05b8
    ret                              ; 0x05bb
