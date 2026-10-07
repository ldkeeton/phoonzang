math_loc_3cde:
    mov ax, 0                        ; 0x3cde
    call ds_dispatch_f40b            ; 0x3ce1
    mov bx, word [bp + 0x4]          ; 0x3ce4
    cmp byte [bx + 0x6], 0           ; 0x3ce7
    jbe short @..math_loc_3cde.l1    ; 0x3ceb
    dec byte [bx + 0x6]              ; 0x3ced
    mov bx, word [bp + 0x4]          ; 0x3cf0
    cmp byte [bx + 0x6], 0           ; 0x3cf3
    jne short @..math_loc_3cde.l1    ; 0x3cf7
    mov word [bx], 0                 ; 0x3cf9
@..math_loc_3cde.l1:
    ret                              ; 0x3cfd
