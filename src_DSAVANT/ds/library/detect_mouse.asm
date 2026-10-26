; auto-generated
detect_mouse:
    mov ax, word [bp + 4]            ; 0x37a5
    cmp ax, strict word 4            ; 0x37a8
    je short @..detect_mouse.l1      ; 0x37ab
    mov ax, 0x3533                   ; 0x37ad
    int 0x21 ; DOS function dispatcher
    mov ax, es                       ; 0x37b2
    or ax, bx                        ; 0x37b4
    je short @..detect_mouse.l1      ; 0x37b6
    cmp byte [es:bx], 0xcf           ; 0x37b8
    je short @..detect_mouse.l1      ; 0x37bc
    mov ax, 0                        ; 0x37be
    int 0x33 ; BIOS mouse
    mov byte [cs:mouse_button_count - IMAGE_BASE], al ; 0x37c3
    or al, al                        ; 0x37c7
    je short @..detect_mouse.l1      ; 0x37c9
    or word [bp - 2], strict word 0x1000 ; 0x37cb
@..detect_mouse.l1:
    ret                              ; 0x37d0
