; auto-generated
; asm only
ds_bios_mouse_loc_RUQG:
    mov ax, word [bp + 0x4]          ; 0x37a5
    cmp ax, strict word 4            ; 0x37a8
    je short @..ds_bios_mouse_loc_RUQG.l1 ; 0x37ab
    mov ax, 0x3533                   ; 0x37ad
    int 0x21 ; DOS function dispatcher
    mov ax, es                       ; 0x37b2
    or ax, bx                        ; 0x37b4
    je short @..ds_bios_mouse_loc_RUQG.l1 ; 0x37b6
    cmp byte [es:bx], 0xcf           ; 0x37b8
    je short @..ds_bios_mouse_loc_RUQG.l1 ; 0x37bc
    mov ax, 0                        ; 0x37be
    int 0x33 ; BIOS mouse
    mov byte [cs:cseg_2f66 - IMAGE_BASE], al ; 0x37c3
    or al, al                        ; 0x37c7
    je short @..ds_bios_mouse_loc_RUQG.l1 ; 0x37c9
    or word [bp - 0x0002], strict word 0x1000 ; 0x37cb
@..ds_bios_mouse_loc_RUQG.l1:
    ret                              ; 0x37d0
