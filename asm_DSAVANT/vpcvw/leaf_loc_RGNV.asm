; auto-generated
leaf_loc_RGNV:
    mov word [bp - 0x0002], 0        ; 0x4589
    mov bx, word [bp + 0x6]          ; 0x458e
    mov al, byte [bx + 0x37]         ; 0x4591
    sub ah, ah                       ; 0x4594
    test ax, 8                       ; 0x4596
    je short @..leaf_loc_RGNV.l1     ; 0x4599
    mov word [bp - 0x0002], 0xfffe   ; 0x459b
@..leaf_loc_RGNV.l1:
    jmp near loc_IQMH                ; 0x45a0
