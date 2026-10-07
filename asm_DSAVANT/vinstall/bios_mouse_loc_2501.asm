bios_mouse_loc_2501:
    mov ax, 0x3533                   ; 0x2501
    int 0x21 ; DOS function dispatcher
    mov ax, es                       ; 0x2506
    or ax, bx                        ; 0x2508
    je short @..bios_mouse_loc_2501.l1 ; 0x250a
    cmp byte [es:bx], 0xcf           ; 0x250c
    je short @..bios_mouse_loc_2501.l1 ; 0x2510
    mov ax, 0                        ; 0x2512
    int 0x33 ; BIOS mouse
    or al, al                        ; 0x2517
    je short @..bios_mouse_loc_2501.l1 ; 0x2519
    or word [bp - 0x0002], strict word 0x1000 ; 0x251b
@..bios_mouse_loc_2501.l1:
    ret                              ; 0x2520
