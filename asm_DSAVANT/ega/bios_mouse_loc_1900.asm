bios_mouse_loc_1900:
    cmp byte [cs:data_0228], 1       ; 0x1900
    jne short @..bios_mouse_loc_1900.l1 ; 0x1906
    mov byte [cs:data_0227], 1       ; 0x1908
@..bios_mouse_loc_1900.l1:
    ret                              ; 0x190e
