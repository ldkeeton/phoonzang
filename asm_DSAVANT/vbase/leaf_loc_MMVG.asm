; auto-generated
leaf_loc_MMVG:
    cmp word [bp - 0x0014], byte 0xff ; 0x57fd
    je short @..leaf_loc_MMVG.l1     ; 0x5801
    mov word [bss_5b3e], 1           ; 0x5803
@..leaf_loc_MMVG.l1:
    jmp near loc_OGLL                ; 0x5809
loc_HKKI:
    mov word [bp - 0x0014], 0xffff   ; 0x580c
    mov ax, word [bp - 0x0016]       ; 0x5811
    jmp short loc_KRGU               ; 0x5814
