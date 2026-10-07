bios_mouse_loc_1308:
    cmp byte [cs:data_0228], 1       ; 0x1308
    jne short @..bios_mouse_loc_1308.l1 ; 0x130e
    mov byte [cs:data_0227], 1       ; 0x1310
@..bios_mouse_loc_1308.l1:
    ret                              ; 0x1316
