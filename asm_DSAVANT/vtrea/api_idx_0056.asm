api_idx_0056:
    mov ax, 0xffaa                   ; 0x12cc
    call ds_dispatch_f40b            ; 0x12cf
    mov ax, 0x248                    ; 0x12d2
    imul word [bp + 0x4]             ; 0x12d5
    mov bx, ax                       ; 0x12d8
    cmp byte [bx + 0x5e2f], data_0002 ; 0x12da
    jb short @..api_idx_0056.l1      ; 0x12df
    ret                              ; 0x12e1
