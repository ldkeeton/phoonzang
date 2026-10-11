leaf_loc_57fd:
    cmp word [bp - 0x0014], byte 0xff ; 0x57fd
    je short @..leaf_loc_57fd.l1     ; 0x5801
    mov word [bss_5b3e], 1           ; 0x5803
@..leaf_loc_57fd.l1:
    jmp near loc_58d6                ; 0x5809
loc_580c:
    mov word [bp - 0x0014], 0xffff   ; 0x580c
    mov ax, word [bp - 0x0016]       ; 0x5811
    jmp short loc_5869               ; 0x5814
